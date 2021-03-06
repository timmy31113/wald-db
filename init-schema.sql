drop table if exists lagen cascade;
drop table if exists klimas cascade;
drop table if exists böden cascade;
drop table if exists standorte cascade;
drop table if exists baumarten cascade;
drop table if exists wachsen cascade;
drop table if exists bäume cascade;
drop table if exists verschatten cascade;
drop table if exists schädigungen cascade;
drop table if exists pflanzmaßnahmen cascade;
drop table if exists fällarbeiten cascade;

drop type if exists einstrahlung_enum cascade;
drop type if exists temperatur_enum cascade;
drop type if exists bodenart cascade;
drop type if exists bodenfeuchte cascade;
drop type if exists schädigungsart cascade;

drop view if exists baumalter;

create type einstrahlung_enum as enum ('flachlage', 'sonnenhang', 'schattenhang');

create table lagen (
	nummer			serial primary key,
	höhe			integer,
	hangneigung		integer,
	einstrahlung	einstrahlung_enum
);

create type temperatur_enum as enum ('kalt', 'mittel', 'warm');

create table klimas (
	nummer			serial primary key,
	temperatur		temperatur_enum,
	niederschlag	integer
);

create type bodenart as enum ('sand', 'schluff', 'lehm', 'ton');

create type bodenfeuchte as enum ('trocken', 'frisch', 'feucht', 'nass', 'sehr nass');

create table böden (
	nummer	serial primary key,
	art		bodenart,
	feuchte	bodenfeuchte
);

create table standorte (
	nummer	serial primary key,
	lage	integer references lagen (nummer) not null,
	klima	integer references klimas (nummer) not null,
	boden	integer references böden (nummer) not null
);

create table baumarten (
	nummer	serial primary key,
	name	varchar not null,
	nadel	boolean,
	licht	boolean,
	invasiv	boolean
);

create table wachsen (
	baumart 	integer references baumarten (nummer),
	standort	integer references standorte (nummer),
	wie_gut		integer check (wie_gut >= 0 and wie_gut <= 10),
	primary key (baumart, standort)
);

create table pflanzmaßnahmen (
	nummer	serial primary key,
	datum	date not null
);

create table fällarbeiten (
	nummer	serial primary key,
	datum	date not null
);

create table bäume (
	nummer		serial primary key,
	sähjahr		date,
	größe		real,
	position	point not null,
	lebt		boolean not null,
	art			integer references baumarten (nummer) not null,
	standort	integer references standorte (nummer),
	gepflanzt	integer references pflanzmaßnahmen (nummer),
	gefällt		integer references fällarbeiten (nummer)
);

create view bäume_mit_alter (nummer, alter, größe, position, lebt, art, standort, gepflanzt, gefällt) 
	as select b.nummer, extract(year from age(b.sähjahr)), b.größe, b.position, b.lebt, b.art, b.standort, b.gepflanzt, b.gefällt 
	from bäume b;

create rule baum_insert_alter as on insert to bäume_mit_alter do instead
	insert into bäume (nummer, sähjahr, größe, position, lebt, art, standort, gepflanzt, gefällt)
	values (new.nummer, current_date - interval '1 year' * new.alter, new.größe, new.position, new.lebt, new.art, new.standort, new.gepflanzt, new.gefällt);

create rule baum_update_alter as on update to bäume_mit_alter do instead
	update bäume
	set	nummer		 = new.nummer, 
		sähjahr		 = current_date - interval '1 year' * new.alter, 
		größe		 = new.größe, 
		position	 = new.position, 
		lebt		 = new.lebt, 
		art			 = new.art, 
		standort	 = new.standort, 
		gepflanzt	 = new.gepflanzt, 
		gefällt		 = new.gefällt
	where nummer = old.nummer;

create table verschatten (
	täter	integer references bäume (nummer),
	opfer	integer references bäume (nummer),
	primary key (täter, opfer)
);

create type schädigungsart as enum ('wild', 'insekt', 'pilz', 'sturm', 'dürre', 'brand');

create table schädigungen (
	nummer	serial primary key,
	art		schädigungsart not null,
	datum	date,
	baum	integer references bäume (nummer)
);
