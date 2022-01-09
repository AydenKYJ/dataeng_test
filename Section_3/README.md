
# Section 3 Readme
I am not the most familiar with systems design architecture, but I will do my best to tackle.

Below are my answers after engaging with various sources, either google, youtube or from people I know that have some knowledge in this area.

The design architecture can be broken down into 6 sections:

    a. User Upload
    b. Authentication
    c. VPC Infra w Public and private subnet for access
    d. Data Silo
    e. Tranformation
    f. BI/Analytics

a. **User Upload**
User  interact with the web app to  upload. Second stream of images from kafka streaming, assumption is that it private, goes straight to private gateway.

b. **Authentication**
Requests will be pushed through AWS Cognito for authentication

c. **Virtual Private Cloud**
After clearing authentication, data will be channeled by load balancers to either availability zones and synchronized (for redundancy), 
settings depending on what the preference of the stakeholders want. Data archiving depends on the tier and requirements of stakeholders
based on AWS data recycling policies of each storage tier.

d. **Data Silo**
Houses all the S3 buckets in respective availibility zones, this is where data is stored and also houses AWS dynamoDB to store processed
images from lambda kafka which will run the codes from the company, image and metadata stored in the AWS dynamoDB will accessible even
if it is deleted from bucket.

e. **Transformation**
AWS Lambda runs the image processing code and stores the processed data in dynamoDB

f. **BI/Analytics**
BI analysis layer with Amazon Quicksight to store/record/display business stats.