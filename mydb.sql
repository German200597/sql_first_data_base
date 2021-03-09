create table if not exists Musicians(
	id_musician serial primary key,
	Name varchar(40) not null
);


create table if not exists Albums(
	id_album serial primary key,
	AlbumTitle varchar(40) not null, 
	Release_Year integer not null check(Release_Year>0),
	Singer varchar(40) unique references Musicians(id_musician)
);

create table if not exists Tracks( 
	id_track serial primary key,
	TrackTitle varchar(40) not null,
	Duration timestamp not null,
	Album varchar(40) primary key references Albums(id_album)	
);
