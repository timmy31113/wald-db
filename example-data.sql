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

insert into fällarbeiten (nummer, datum)
	values (1, date '01.02.2020');
insert into fällarbeiten (nummer, datum)
	values (2, date '04.02.2020');
insert into fällarbeiten (nummer, datum)
	values (3, date '23.04.2020');
insert into fällarbeiten (nummer, datum)
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

insert into bäume_mit_alter (nummer, alter, größe, position, lebt, art, standort, gepflanzt, gefällt)
	values (1, 35, 21, point(5, -8), true, 1, 1, null, null);
insert into bäume_mit_alter (nummer, alter, größe, position, lebt, art, standort, gepflanzt, gefällt)
	values (2, 32, 23, point(5, -7), true, 1, 1, null, null);
insert into bäume_mit_alter (nummer, alter, größe, position, lebt, art, standort, gepflanzt, gefällt)
	values (3, 36, 21, point(5, -6), true, 1, 1, null, null);
insert into bäume_mit_alter (nummer, alter, größe, position, lebt, art, standort, gepflanzt, gefällt)
	values (4, 30, 22, point(5, -5), true, 1, 1, null, 2);
insert into bäume_mit_alter (nummer, alter, größe, position, lebt, art, standort, gepflanzt, gefällt)
	values (5, 30, 22, point(5, -4), false, 1, 1, null, 1);
insert into bäume_mit_alter (nummer, alter, größe, position, lebt, art, standort, gepflanzt, gefällt)
	values (6, 35, 17, point(5, -3), false, 1, 1, null, null);
insert into bäume_mit_alter (nummer, alter, größe, position, lebt, art, standort, gepflanzt, gefällt)
	values (7, 33, 20, point(5, -2), true, 1, 1, null, null);
insert into bäume_mit_alter (nummer, alter, größe, position, lebt, art, standort, gepflanzt, gefällt)
	values (8, 32, 24, point(5, -1), true, 1, 1, null, null);
insert into bäume_mit_alter (nummer, alter, größe, position, lebt, art, standort, gepflanzt, gefällt)
	values (9, 32, 22, point(5, 0), true, 1, 1, null, null);
insert into bäume_mit_alter (nummer, alter, größe, position, lebt, art, standort, gepflanzt, gefällt)
	values (10, 32, 22, point(5, 1), true, 1, 1, null, null);
insert into bäume_mit_alter (nummer, alter, größe, position, lebt, art, standort, gepflanzt, gefällt)
	values (11, 34, 19, point(5, 2), true, 1, 1, null, null);
insert into bäume_mit_alter (nummer, alter, größe, position, lebt, art, standort, gepflanzt, gefällt)
	values (12, 36, 22, point(5, 3), true, 1, 1, null, null);
insert into bäume_mit_alter (nummer, alter, größe, position, lebt, art, standort, gepflanzt, gefällt)
	values (13, 5, 2, point(3, 0), true, 2, 1, null, null);
insert into bäume_mit_alter (nummer, alter, größe, position, lebt, art, standort, gepflanzt, gefällt)
	values (14, 9, 4, point(2, -2), true, 6, 1, null, null);
insert into bäume_mit_alter (nummer, alter, größe, position, lebt, art, standort, gepflanzt, gefällt)
	values (15, 10, 4, point(2, 2), true, 6, 1, null, null);
insert into bäume_mit_alter (nummer, alter, größe, position, lebt, art, standort, gepflanzt, gefällt)
	values (16, 3, 1, point(10, -5), true, 2, 1, 2, null);
insert into bäume_mit_alter (nummer, alter, größe, position, lebt, art, standort, gepflanzt, gefällt)
	values (17, 3, 1, point(10, 0), true, 2, 1, 4, null);
insert into bäume_mit_alter (nummer, alter, größe, position, lebt, art, standort, gepflanzt, gefällt)
	values (18, 3, 2, point(0, -5), true, 2, 1, 1, null);
insert into bäume_mit_alter (nummer, alter, größe, position, lebt, art, standort, gepflanzt, gefällt)
	values (19, 3, 1, point(-2, 4), true, 2, 1, 3, null);
insert into bäume_mit_alter (nummer, alter, größe, position, lebt, art, standort, gepflanzt, gefällt)
	values (20, 8, 3, point(3, 6), false, 6, 1, null, 3);
insert into bäume_mit_alter (nummer, alter, größe, position, lebt, art, standort, gepflanzt, gefällt)
	values (21, 7, 2, point(3, 8), false, 6, 1, null, 4);

insert into verschatten (täter, opfer)
	values (7, 13);
insert into verschatten (täter, opfer)
	values (8, 13);
insert into verschatten (täter, opfer)
	values (9, 13);
insert into verschatten (täter, opfer)
	values (14, 13);
insert into verschatten (täter, opfer)
	values (15, 13);
insert into verschatten (täter, opfer)
	values (11, 15);
insert into verschatten (täter, opfer)
	values (7, 14);

insert into schädigungen (nummer, art, datum, baum)
	values (1, 'insekt', date '01.01.2020', 4);
insert into schädigungen (nummer, art, datum, baum)
	values (2, 'insekt', date '01.01.2020', 7);
insert into schädigungen (nummer, art, datum, baum)
	values (3, 'wild', date '05.06.2020', 13);
insert into schädigungen (nummer, art, datum, baum)
	values (4, 'sturm', date '20.03.2020', 5);

