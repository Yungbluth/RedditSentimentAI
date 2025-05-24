# Reddit Sentiment of AI Analysis Pipeline 
## Project Overview
This pipeline is designed to use raw collected data from the Reddit API, upload that to AWS S3, transform and translate it to AWS Redshift, process it and then visualize it using AWS Quicksight.

# Architecture
1. **Injestion :** Data taken from the Reddit API is sent and stored in an AWS S3 Bucket.
2. **Transformation :** Data in the AWS S3 Bucket is then transformed into JSON and sent to AWS Redshift which is setup using sql `Redshift/redshiftCommands.sql`.
3. **Analysis :** A Python script `Python/aiSentiment.py` queries Redshift using redshift_connector API for all references to anything AI or AI related. This data is then run through [VADER Sentiment Analysis](https://github.com/cjhutto/vaderSentiment) with the results being exported to a .csv file.
4. **Visualization :** The exported .csv is sent to AWS Quicksight

    -`Number of AI Mentions`: Showcase the increase in AI mentions after GPT-3.5 released (Nov 2022)
    ![NumberOfMentions](https://github.com/Yungbluth/RedditSentimentAI/blob/main/Images/NumberOfMentions.png)
    -`Average Sentiment`: Showcase the average AI sentiment in three different communities
    ![AvgLineChart](https://github.com/Yungbluth/RedditSentimentAI/blob/main/Images/AvgLineChart.png)