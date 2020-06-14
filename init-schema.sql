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
	lage	integer references lagen (nummer),
	klima	integer references klimas (nummer),
	boden	integer references böden (nummer)
);
