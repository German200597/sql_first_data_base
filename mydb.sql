create table if not exists Tracks(
	Title varchar(40) primary key, 
	Duration timestamp not null
);

create table if not exists Albums(
	AlbumTitle varchar(40) primary key unique, 
	Release_Year integer not null check(Release_Year>0),
	TracksTitles varchar(40) unique references Tracks(Title)
);

create table if not exists Musicians(
	Name varchar(40) primary key, 
	AlbumsTracks varchar(40) references Albums(TracksTitles)
);