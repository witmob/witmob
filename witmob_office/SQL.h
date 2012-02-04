//
//  SQL.h
//  QatAudio
//
//  Created by wangjun on 11-9-6.
//  Copyright 2011年 www.witmob.com. All rights reserved.
//

NSString * const kQatDatabases=@"qat.db";

char * const kDropQatDatabases = "drop database if exists qat.db";

char * const kCreateQatAlbumTable="create table if not exists qat_album(albumid integer,albumName text,company text,artist text,composer text,playTimes integer,coverId integer,createdate integer,tag1 integer,tag2 integer,tag3 integer,tag4 integer,tag5 integer,tag6 integer,tag7 integer,tag8 integer,year integer,month integer, day integer,songcount integer)";
char * const kSqlInertAlbum="insert into qat_album(albumid,albumName,company,artist,composer,playTimes,coverId,createdate,tag1,tag2,tag3,tag4,tag5,tag6,tag7,tag8,year,month,day,songcount) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
char * const kDeleteQatAlbumTable="delete from qat_album";
char * const kSqlSelectQatAlbumCount="select count(albumid) from qat_album";
char * const kSqlGetQatAlbum="select albumid,albumName,company,artist,composer,playTimes,coverId,createdate,tag1,tag2,tag3,tag4,tag5,tag6,tag7,tag8,songcount from qat_album order by albumName";
char * const kSqlGetQatAlbumTagsForAlbumid="select t.tagid,t.tagname from qat_album a ,qat_album_tag t where a.albumid=? and t.tagid in (a.tag1,a.tag2,a.tag3,a.tag4,a.tag5,a.tag6,a.tag7,a.tag8)";
char * const kSqlGetQatAlbumForTags="select albumid,albumName,artist,company,composer,createdate from qat_album order by albumName";
//按播放次数排序
char * const kSqlGetQatAlbumOrderByPlayTime = "select albumid,albumName,company,artist,composer,playTimes,coverId,createdate,tag1,tag2,tag3,tag4,tag5,tag6,tag7,tag8,songcount from qat_album order by playTimes desc";
//按艺术家排序
char * const kSqlGetQatAlbumOrderByArtist = "select albumid,albumName,company,artist,composer,playTimes,coverId,createdate,tag1,tag2,tag3,tag4,tag5,tag6,tag7,tag8,songcount from qat_album order by artist desc";
//删除指定album--根据id
char * const kSqlDeleteQatAlbumByAlbumId = "delete from qat_album where albumid=?";
//获取 tags 的分类
char * const kSqlQatAlbumByTags = "select t.tagname,a.albumid,a.albumName,a.artist,a.company,a.composer,a.createdate,a.songcount from qat_album a ,qat_album_tag t where  t.tagid in (a.tag1,a.tag2,a.tag3,a.tag4,a.tag5,a.tag6,a.tag7,a.tag8)"; 
//获取指定艺术家的专辑
char * const kSqlQatAlbumByArtist = "select albumid,albumName,artist,company,composer,createdate,songcount from qat_album where albumid!=? and artist=?";
char * const kSqlQatAlbumByAlbumId = "select albumid,albumName,artist,company,composer,createdate,songcount from qat_album where albumid=?";

char * const kSqlQatAlbumUpdateTags = "update qat_album set tag1=?,tag2=?,tag3=?,tag4=?,tag5=?,tag6=?,tag7=?,tag8=? where albumid=?";

char * const kSqlQatAlbumUpdateWithCdInfo = "update qat_album set albumName=?,company=?,createdate=?,composer=?,artist=? where albumid=?";

char * const kSqlQatAlbumSearchByPublisher = "select count (*) from qat_album where company=?";

char * const kSqlSelectQatAlbumHasInQatAlbumSongInSql = "select count(*)  from qat_album qa where qa.company=? and qa.albumId not in (select albumid from qat_album_songs)";

char * const kSqlSelectQatAlbumInfoByPublisher = "select albumid,albumName,company,artist,composer,createdate,songcount from qat_album where company=?";

char * const kSqlSelectQatAlbumInfoByPublishTime = "select albumid,albumName,company,artist,composer,createdate,songcount from qat_album where year=? and month=?";

char * const kSqlSelectQatAlbumInfoByComposer = "select albumid,albumName,company,artist,composer,createdate,songcount from qat_album where composer=?";

char * const kSqlSelectQatAlbumInfomHasInQatAlbumSongByPublishTime = "select count(*)  from qat_album qa where qa.year=? and qa.month=? and qa.albumId not in (select albumid from qat_album_songs)";

char * const kSqlUpdateAlbumInfoSongCount="update qat_album set songcount=? where albumid=?";
char * const kSqlGetAlbumInfoSongCount="select songcount from qat_album where albumid=?";