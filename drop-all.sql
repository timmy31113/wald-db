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
