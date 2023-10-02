CREATE or replace STORAGE INTEGRATION spotify_storage_integration
    TYPE = EXTERNAL_STAGE
    STORAGE_PROVIDER = S3
    ENABLED = TRUE
    STORAGE_AWS_ROLE_ARN = ''
    STORAGE_ALLOWED_LOCATIONS = ('s3://spotify-etl-project-bhanukrishna/')
    

desc INTEGRATION spotify_storage_integration;
