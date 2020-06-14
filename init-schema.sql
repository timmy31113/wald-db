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
