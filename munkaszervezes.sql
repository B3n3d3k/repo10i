#kulcsok
Megoldás: 
dolgozo.id = leosztas.d_id
feladat.id = leosztas.f_id
muhely.id = leosztas.m_id
nap.id = leosztas.n_id

SELECT DISTINCT f.nev
FROM leosztas l JOIN feladat f ON l.f_id=f.id
	JOIN nap n ON n.id=l.n_id
	JOIN muhely m ON m.id=l.m_id
WHERE n.nev='hétfő' AND m.nev LIKE 'Faz%';

SELECT l.ora, f.nev 
FROM leosztas l JOIN feladat f ON l.f_id=f.id
	JOIN nap n ON n.id=l.n_id
	JOIN muhely m ON m.id=l.m_id
WHERE n.nev='hétfő' AND m.nev LIKE 'Faz%'

UNION

SELECT l.ora, f.nev
FROM leosztas l JOIN feladat f ON l.f_id=f.id
	JOIN nap n ON n.id=l.n_id
	JOIN muhely m ON m.id=l.m_id
WHERE n.nev='kedd' AND m.nev LIKE 'Faz%';

SELECT m1.nev, l1.ora, f1.nev, m2.nev, l2.ora, f2.nev
FROM leosztas l1, leosztas l2 JOIN feladat f1 ON l1.f_id=f1.id

SELECT n1.nev AS nap_1, l1.ora as ora_1 , f1.nev as feladat_1, n2.nev as nev_2, l2.ora as ora_2, f2.nev as feladat_2
FROM (leosztas l1 JOIN feladat f1 ON l1.f_id=f1.id
    JOIN nap n1 ON n1.id=l1.n_id
    JOIN muhely m1 ON m1.id=l1.m_id),
    (leosztas l2 JOIN feladat f2 ON l2.f_id=f2.id
    JOIN nap n2 ON n2.id=l2.n_id
    JOIN muhely m2 ON m2.id=l2.m_id)
WHERE n1.nev='hétfő' AND m1.nev LIKE 'Faz%',
    n2.nev='kedd' AND m2.nev LIKE 'Faz%';