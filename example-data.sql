insert into lagen (nummer, höhe, hangneigung, einstrahlung)
	values (1, 30, 0, 'flachlage');
insert into lagen (nummer, höhe, hangneigung, einstrahlung)
	values (2, 150, 20, 'sonnenhang');
insert into lagen (nummer, höhe, hangneigung, einstrahlung)
	values (3, 80, 30, 'schattenhang');
insert into lagen (nummer, höhe, hangneigung, einstrahlung)
	values (4, 500, 5, 'flachlage');

insert into klimas (nummer, temperatur, niederschlag)
	values (1, 'kalt', 700);
insert into klimas (nummer, temperatur, niederschlag)
	values (2, 'warm', 850);
insert into klimas (nummer, temperatur, niederschlag)
	values (3, 'mittel', 600);
insert into klimas (nummer, temperatur, niederschlag)
	values (4, 'warm', 1800);
insert into klimas (nummer, temperatur, niederschlag)
	values (5, 'kalt', 1000);

insert into böden (nummer, art, feuchte)
	values (1, 'sand', 'trocken');
insert into böden (nummer, art, feuchte)
	values (2, 'schluff', 'frisch');
insert into böden (nummer, art, feuchte)
	values (3, 'lehm', 'feucht');
insert into böden (nummer, art, feuchte)
	values (4, 'ton', 'feucht');

insert into baumarten (nummer, name, nadel, licht, invasiv)
	values (1, 'Waldkiefer', true, true, false);
insert into baumarten (nummer, name, nadel, licht, invasiv)
	values (2, 'Traubeneiche', false, true, false);
insert into baumarten (nummer, name, nadel, licht, invasiv)
	values (3, 'Hainbuche', false, false, false);
insert into baumarten (nummer, name, nadel, licht, invasiv)
	values (4, 'Moorbirke', false, true, false);
insert into baumarten (nummer, name, nadel, licht, invasiv)
	values (5, 'Douglasie', true, true, false);
insert into baumarten (nummer, name, nadel, licht, invasiv)
	values (6, 'Spätblühende Traubenkirsche', false, true, true);

insert into standorte (nummer, lage, klima, boden)
	values (1, 1, 1, 1);
insert into standorte (nummer, lage, klima, boden)
	values (2, 2, 5, 3);
insert into standorte (nummer, lage, klima, boden)
	values (3, 4, 2, 2);
insert into standorte (nummer, lage, klima, boden)
	values (4, 3, 4, 2);

insert into pflanzmaßnahmen (nummer, datum)
	values (1, date '20.09.2019');
insert into pflanzmaßnahmen (nummer, datum)
	values (2, date '20.09.2019');
insert into pflanzmaßnahmen (nummer, datum)
	values (3, date '15.11.2019');
insert into pflanzmaßnahmen (nummer, datum)
	values (4, date '30.08.2019');

insert into fällarbeit (nummer, datum)
	values (1, date '01.02.2020');
insert into fällarbeit (nummer, datum)
	values (2, date '04.02.2020');
insert into fällarbeit (nummer, datum)
	values (3, date '23.04.2020');
insert into fällarbeit (nummer, datum)
	values (4, date '24.04.2020');

insert into wachsen (baumart, standort, wie_gut)
	values (1, 1, 10);
insert into wachsen (baumart, standort, wie_gut)
	values (6, 1, 10);
insert into wachsen (baumart, standort, wie_gut)
	values (2, 1, 8);
insert into wachsen (baumart, standort, wie_gut)
	values (4, 1, 0);
insert into wachsen (baumart, standort, wie_gut)
	values (4, 2, 9);
insert into wachsen (baumart, standort, wie_gut)
	values (3, 4, 10);

