create type einstrahlung_enum as enum ('flachlage', 'sonnenhang', 'schattenhang');

create table lagen (
	nummer			integer primary key,
	höhe			integer,
	hangneigung		integer,
	einstrahlung	einstrahlung_enum
);

create type temperatur_enum as enum ('kalt', 'mittel', 'warm');

create table klimas (
	nummer			integer primary key,
	temperatur		temperatur_enum,
	niederschlag	integer
);
