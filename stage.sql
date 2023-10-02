create or replace table tblArtist (
    artist_id STRING,
    artist_name STRING,
    external_url STRING
  )
    comment = 'this table contains all the artist data';

create or replace table tblsong (
    sond_id STRING,
    song_name STRING,
    duration_ms string,
    url STRING,
    popularity string,
    song_added string,
    album_id STRING,
    artist_id STRING
    )
    comment = 'this table data contains all the song information';

create or replace table TABLEALBUM (
    album_id STRING,
    name STRING,
    release_date string,
    total_tracks string,
    url STRING
    )
    comment = 'this table contains all the album data';

CREATE OR REPLACE FILE FORMAT csv_file_format
TYPE = 'CSV'
FIELD_DELIMITER = ','
FIELD_OPTIONALLY_ENCLOSED_BY='"';

Create or replace stage spotify_data.spotify.spotify_data
url = 's3://spotify-etl-project-bhanukrishna/transformed_data/'
STORAGE_INTEGRATION = spotify_storage_integration
FILE_FORMAT = csv_file_format

LIST @spotify_data;