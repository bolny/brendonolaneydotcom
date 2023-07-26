---
title: Brendon O'Laney
subtitle: Resume
---
<brendon@brendonolaney.com>\
<https://www.brendonolaney.com/>\
<https://www.github.com/bolny/>\
<https://www.linkedin.com/in/bolny/>\

## Professional Summary

Offering over ten years of experience in the full software development cycle;
from conception to delivery.  I am skilled in modern development methodologies,
requirement gathering, agile development, and delivery.

## Technical Summary

- **Software**: AWS, Terrform, Docker, Ruby on Rails, Dotnet Core, ASP.NET MVC
  Core, jQuery, Angular 1, Underscore, Backbone JS, D3, Foundation, Django, Vim,
  Visual Studio Code, JetBrains IDEA, Git, SVN
- **Languages**: Go, Ruby, Typescript, C#, Python, JavaScript, SQL, C, Bash,
  HTML5, CSS3
- **Project Management Tools**: Github, Jira, BitBucket, Mantis, Crucible,
  Jenkins
- **Databases**: MySQL, PostgreSQL, MariaDB
- **Applications**: Clio Payments, Billing, and Dashboard.  SocialNature.com,
  SocialNature ETL, SocialNature Automation Engine.  Coho Data Management
  interface.  FortiAuthenticator Management Interface
- **Industries**: Renewable Energy, Legal Fintech, Influencer Marketing, Network
  Storage and Security
- **Operating Systems**: Linux, BSD, MacOS
- **Methodologies**: Agile, Waterfall

## Professional Experience

### Clir

Senior Software Developer\
April 2022 - December 2022\

Clir empowers investors and asset managers to maximize performance
incentivizing the shift away from fossil fuels by improving the economics of
renewable energy projects.  They do this by combining the industry's largest
dataset with powerful software, data and analytics built, designed and supported
by decades of renewable energy intelligence.

#### Project: Clipping Detector

The clipping detector is an automation of a previously manual process that
detects when solar power inverters have maximized the power that they can
generate.  It is important to our customers to be aware of when this happens
because they are losing out on potential revenue and could invest in a battery
system to store excess energy for off-peak hours.  On my team I was the most
senior software developer and we were taking over a system that was largely
unknown to the team in order to implement the new feature.

I began my process by creating, and later refining, C4 diagrams for the relevant
parts of the system that we were going to be modifying to bring clarity and
context to the work that we would be doing.  I produced several sequence
diagrams showing existing software paths and used them to produce an
architecture document for the team to read and approve for the new feature.
Finally I broke down the work into bite size pieces of work so that any junior
or intermediate developer would be able to quickly gain context and execute on
the development plan.

**Technologies Used**: UML, Go, Terraform, PostgreSQL, Docker, AWS.

### Clio

Senior Software Developer\
January 2019 - March 2022\

Clio is the undisputed leader in legal practice management and client intake
software with more than 800 five-star reviews on Capterra.  Over 150,000 legal
professionals in 100+ countries trust Clio's legal software to help manage and
grow their law firm.  70+ bar associations approve Clio to their members, and
Clio has been adopted by more than 150 law schools.

#### Project: Payments Platform

The payments platform is a system designed to provide a single touch point for
applications to interact with one or more payments processors (Stripe, Square,
etc.).  It provides a single interface for creating, and managing things like
charges, refunds, scheduled individual and recurring payments, managing fees,
scheduling and handling payouts, customer onboarding, and more.  If some of
these features aren't provided by the processor, the payments platform provides
them directly .

As a senior developer, I played a leadership role in driving the project to
completion, through many phases, over its time in development.  In particular, I
brought a strong understanding of backend technologies and infrastructure
architecture to help keep the system performant, processing asynchronously where
possible, and identifying early potential scaling issues.

One particularly interesting area of learning, for me, during the development of
the payments platform was dealing with request idempotency and race conditions
that can emerge when processing delays can result in a synchronous and
asynchronous process occurring at the same time.

**Technologies Used**: Ruby on Rails, Typescript.

#### Project: Invoice Payments Report

The invoice payments report rewrite was one of the first team projects that I
led as a developer at Clio.

The report is one of the most important for business operations.  I had
previously led a project to instrument the reporting system with monitoring,
logging, and telemetry, which led us to identify this report as an
under-performer.  We profiled and bench-marked the existing report then built a
prototype report that removed layers of abstraction to give us direct access to
the data that we needed to build the report.  We profiled and bench-marked the
prototype to establish that building the full report would be a wise investment
of resources.  To establish correctness we created a complete set of inputs and
outputs and built automated tests to enforce them.  Once build was complete we
did a final round of performance measurements and the result was a 1000%
decrease in run time for the report.

**Technologies Used**: Ruby on Rails, Typescript.

#### Project: Firm Dashboard

The firm dashboard is a system that I implemented for Clio.  It is an on-demand
system that gathers data, transforms it, and reduces it into a set of metrics
for rendering in a graph.  I built it with modularity in mind so that new
infrastructure may be added and used as a new data source or data store in the
future.

The major technical hurdle for this project was calculating the values with
minimal impact on the availability of the database and the performance of job
runners in order to play nice with the other processes being managed by the job
runner.  To facilitate this I developed a job runner that allows us to control
how jobs are processed in both parallel and in serial to allow us to strike the
correct balance between the number of jobs running simultaneously and the length
of each job on the system.

**Technologies Used**: Ruby on Rails, Typescript.

### SocialNature

Software Developer\
April 2017 - October 2018\

SocialNature is an influencer marketing platform specializing in the
natural/organic product space.  Brands who want to raise awareness, or gauge
market response to their product are matched with their ideal consumer from the
SocialNature community based on a complex set of data points and very accurate
geo-targeting.

#### Project: Automation Engine

The Automation Engine is a publisher/subscriber framework that scans for certain
conditions (eg.  a user just signed up) and takes an action based on that
condition (eg.  send a welcome email).  It is modular and can be extended.  It
forms the backbone of operations because it allowed us to automate all campaign
communications rather than having to have a person manually manage email
campaigns.

**Technologies Used**: C#, Dotnet Core, ASP.NET MVC Core, Javascript, Angular,
Amazon Linux, Amazon SQS, Bash/Cron, Amazon EC2, Amazon RDS, Amazon CodeDeploy,
Jenkins.

#### Project: ETL Framework

The ETL framework is a Python module inspired by Django forms that streams data
from a database, transforms it to a consumable format, and loads it into a data
lake to be visualized with the use of non-developer tools.  The problem that it
solved was that it was costly to have engineers run queries for statistical data
directly on the production database for business intelligence.  I designed the
framework to be memory efficient, using PostgreSQL streaming and S3 Multipart
Uploads, so allow it to be run in a constrained environment to save on hosting
costs.

Developed the SNETL python module from conception to deployment and maintenance
in Python

Set up the build and deployment system, as well as configuration management
using Jenkins, AWS, and Bash.

**Technologies Used**: Python, PsycoPG2, SQL, Amazon Linux, Amazon SQS, Bash/Cron,
Amazon EC2, Amazon RDS, Amazon CodeDeploy, Jenkins.

#### Project: socialnature.com

The SocialNature website is the main interface used by the SocialNature
community.  It allows a community member to see which product campaigns are
running in their area, join a campaign, review a product, and share that review
on social media websites.

- Developed a store locator to help members find the closest location for their
  product in C#, JavaScript and Foundation.  The locator can be plugged into 
  any mapping api such as Google Maps, Apple Maps, or Nokia HERE.

- Developed an all new redesigned user on-boarding flow using assets from a
  designer using C#, jQuery, and Foundation.

- Developed a user even tracking system that tracked user actions on the web
  site for internal use, and transmits a version stripped of PII to Google
  Analytics in C# and JavaScript.

- Created and deployed interface A/B testing using Google Optimize, and later
  using a custom framework based on the event tracking system in C#.

**Technologies Used**: C#, Dotnet Core, ASP.NET MVC Core, Javascript, jQuery,
Google Optimize, Google Analytics, Amazon Linux, Amazon SQS, Bash/Cron, Amazon
EC2, Amazon RDS, Amazon CodeDeploy, Jenkins

### Coho Data

Software Developer\
August 2016 - March 2017\

Coho Data created hyper-convergent cloud data storage applications.  Imagine
your own dropbox in your server closet.  Its main competitive advantage was that
the storage was dynamically expandable making it affordable to scale when
needed.

#### Project: Management Interface

The management interface allowed a system administrator to see, at a glance, the
state of the system along with performance graphs and statistics.

- Developed API endpoints for the management interface in Python and Flask.
- Designed and implemented the front end using Backbone JS, jQuery, Underscore,
and D3.
- **Technologies used**: Python, Flask, Javascript, jQuery, BackboneJS, Underscore
  , D3

### Fortinet

Web Developer\
August 2012 - August 2016\

Fortinet makes internet security appliances and counts the majority of Fortune
500.  Their most popular product is the FortiGate which, along with many
complementary products provides comprehensive threat intelligence to your
corporate network.

#### Project: FortiAuthenticator Mangement Interface

The FortiAuthenticator is a complementary product to the FortiGate that provides
a single sign on for your disconnected services, and adds a layer of second
factor authentication with FortiToken key fob and authenticator application.

- Developed the FortiAuthenticator configuration and management interface in
  Python, Django, and jQuery.

- Redesigned the database schema to separate statistical data and operational
  data to optimize the amount of sync traffic between highly available
  databases in SQL and Django.

- Optimized database queries for large (1M+) data sets in SQL

- Developed a system library based on openLDAP and RSyslog in C to provide
  operating level services that can be configured from the web interface
  alongside the interface to configure them in Django.

- Supported and mentored more junior team members in order to improve quality
  and readability of code.

**Technologies Used**: Python, Django, JavaScript, SQL, C.

## Education

**Simon Fraser University**, Bachelor of Computing Science, 2012
