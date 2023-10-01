# Spotify_ETL
 I utilized Python and Amazon Lambda to extract and transform Spotify playlist data from the Spotify API. The transformed data was then stored in S3. I set up a connection btw S3 and Snowflake using storage integration in Snowflake. I used STAGE and COPY to import the data to Snowflake and automated the process with Snowpipe. performed analytics

* Using the Spotify API, I extracted data from daily mix playlists, transformed the JSON data into a list, and converted data types.
* Now in AWS I have created a Cloud Watch billing alert to notify my email if we have any billing amount that exceeds a certain amount.
* Create S3 bucket and folders for raw data and processed data
* Created environment variables to secure Spotify API credentials in Python code to use them in lambda 
* Created a Lambda layer to install libraries into Lambda function
* Created Lambda trigger to create events over Python code
* Created one more lambda function to write Python code for transforming the raw data to processed data
* Store the transformed data in one more s3 folder so that we can keep track of both raw data and processed data
* In the same Lambda bucket we transformed the raw data into 3 insightful formats such as album data, artist data, and song data. In this way, we segregated information accordingly.
* Now I am deleting the data of raw files because they are being processed and transformed into the processed file
* Now I am automating the whole transformation process. To do this I am adding triggers to my lambda function.
* Created the tables schema in Snowflake to import data from s3
* Created stage and to make a connection with s3 bucket
* Created copy command to copy data from s3 to snowflake db
* Created 3 snow pipes for each to automate the import from s3
* With the notification channels of 3 snow pipes created events on the s3 bucket to trigger the import 
* Tested the whole pipeline.
* Connected powerBI from Snowflake and made visualizations

<img width="958" alt="AWS Cloud" src="https://github.com/krishnabhanu/Spotify_ETL/assets/37805781/440a6f33-e93b-487b-a03e-e93e3923cb86">


