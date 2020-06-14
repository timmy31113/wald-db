create type einstrahlung-enum as enum ('flachlage', 'sonnenhang', 'schattenhang');

create table lagen (
	nummer			integer primary key,
	höhe			integer,
	hangneigung		integer,
	einstrahlung	einstrahlung-enum
);

create type temperatur-enum as enum ('kalt', 'mittel', 'warm');

create table klimas (
	nummer			integer primary key,
	temperatur		temperatur-enum,
	niederschlag	integer
);
