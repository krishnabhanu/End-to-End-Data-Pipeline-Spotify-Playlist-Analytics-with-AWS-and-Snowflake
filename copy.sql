copy into SPOTIFY_DATA.SPOTIFY.TABLEALBUM
from @spotify_data/album_data/
file_format= (type = csv field_delimiter = ",")


copy into SPOTIFY_DATA.SPOTIFY.TBLSONG
from @spotify_data/songs_data/
file_format= (type = csv field_delimiter = ",")


copy into SPOTIFY_DATA.SPOTIFY.TBLARTIST
from @spotify_data/artist_data/
file_format= (type = csv field_delimiter = ",")


select * from TBLSONG;
select * from TABLEALBUM;
select * from TBLARTIST;