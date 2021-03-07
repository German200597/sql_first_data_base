create table if not exists Albums(
	AlbumTitle varchar(40) primary key unique, 
	Release_Year integer not null check(Release_Year>0),
	Tracks varchar(40) unique
);

create table if not exists Tracks( 
	Duration timestamp not null,
	TrackTitle varchar(40) primary key references Albums(Tracks)	
);

create table if not exists Musicians(
	Name varchar(40) primary key, 
	AlbumsTitles varchar(40) references Albums(AlbumTitle)
);