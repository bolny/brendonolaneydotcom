---
title: Brendon O’Laney
subtitle: SNETL
---

SNETL is modular ETL framework designed primarily to operate over large data
sets and use a minimal amount of memory in order to keep costs low. It uses
PostgreSQL streaming, and Amazon S3 multipart uploads to process data on a
line-by-line basis.

A SNETL module has four main components:

1. A database query. It can be as simple or complex as needed.
2. An ordered list of input columns from the query to enforce data integrity.
3. A transformer class.
4. An ordered list of output column.

The extractor performs a database query which is streamed in one row at a time
and transformed into a dictionary using the ordered list. Then the dictionary is
fed into a custom transformer class which is inspired by Django Model Forms. The
base class for the transformer handles common operations such as data
sanitization. Finally the loader creates, or adds to an Amazon S3 multipart
upload.

An example SNETL module:

```python
INPUT_COLUMNS = ['id', 'email', 'address', 'created_at', 'first_name',
  'last_name', 'last_seen']

OUTPUT_COLUMNS = ['id', 'email', 'street1', 'street2', 'region', 'city',
  'state', 'phone', 'country', 'postcode', 'created_at',
  'first_name', 'last_name', 'last_seen']

QUERY = """
  SELECT users."id", users."email", users."address", users."createdAt",
  users."first_name", users."last_name", users."last_seen"
  FROM users;
"""

class UsersTransformer(Transformer):
  """Transformer for the users table with additional data."""
  def transform_address(self):
    """Flatten user address json data into discrete columns"""
    address_data = self.input.get('address')

    output = {
      'street1': address_data.get('street1', ""),
      'street2': address_data.get('street2', ""),
      'region': address_data.get('region', ""),
      'city': address_data.get('city', ""),
      'state': address_data.get('state', ""),
      'phone': address_data.get('phone', ""),
      'country': address_data.get('country', ""),
      'postcode': address_data.get('postcode', ""),
    }
    return output

def etl():
  with Extractor(QUERY, INPUT_COLUMNS) as extractor:
    with Loader(S3_BUCKET, S3_KEY, OUTPUT_COLUMNS) as loader:
      for row in extractor:
        transformer = UsersTransformer(row, OUTPUT_COLUMNS)
        transformed_row = transformer.transform()
        loader.load(transformed_row)
```

The SNETL framework has allowed us to quickly and efficiently make intelligence
data available to operations using data visualization solutions such as Amazon
Quicksight. Since its introduction we have seen a dramatic decrease in amount of
developer time devoted to running database queries in order to surface
intelligence data.
