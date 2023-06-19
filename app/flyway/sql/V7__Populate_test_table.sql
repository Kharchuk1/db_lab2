INSERT INTO test (subject_id, student_id, test_status, zno_grade, dpa_grade, test_grade, year,
 institution_id)
SELECT subject_id, outid, UkrTestStatus, UkrBall100, UkrBall12, UkrBall, ZNOYear,
(SELECT DISTINCT institution_id
    FROM institution
    INNER JOIN location
    USING (location_id)
    WHERE institution.institution_name=zno.ukrPTName AND location.territory_name=zno.ukrPTTerName 
    AND location.area_name=zno.UkrPTAreaName AND location.region_name=zno.UkrPTRegName
    AND institution.institution_parent IS NULL LIMIT 1) as institution_id
FROM zno
INNER JOIN subject ON zno.ukrtest=subject.subject_name;


INSERT INTO test (subject_id, student_id, test_status, zno_grade, dpa_grade, test_grade, year,
 institution_id)
SELECT subject_id, outid, histTestStatus, histBall100, histBall12, histBall, ZNOYear,
(SELECT DISTINCT institution_id
    FROM institution
    JOIN location
    USING (location_id)
    WHERE institution.institution_name=zno.histPTName AND location.territory_name=zno.histPTName 
    AND location.area_name=zno.histPTAreaName AND location.region_name=zno.histPTRegName
    AND institution.institution_parent IS NULL LIMIT 1) as institution_id
FROM zno
INNER JOIN subject ON zno.histtest=subject.subject_name;


INSERT INTO test (subject_id, student_id, test_status, zno_grade, dpa_grade, test_grade, year, 
 institution_id)
SELECT subject_id, outid, mathTestStatus, mathBall100, mathBall12, mathBall, ZNOYear,
(SELECT DISTINCT institution_id
    FROM institution
    JOIN location
    USING (location_id)
    WHERE institution.institution_name=zno.mathPTName AND location.territory_name=zno.mathPTTerName 
    AND location.area_name=zno.mathPTAreaName AND location.region_name=zno.mathPTRegName
    AND institution.institution_parent IS NULL LIMIT 1) as institution_id
FROM zno
INNER JOIN subject ON zno.mathtest=subject.subject_name;

INSERT INTO test (subject_id, student_id, test_status, zno_grade, dpa_grade, test_grade, year,
 institution_id)
SELECT subject_id, outid, physTestStatus, physBall100, physBall12, physball, ZNOYear,
(SELECT DISTINCT institution_id
    FROM institution
    JOIN location
    USING (location_id)
    WHERE institution.institution_name=zno.physPTName AND location.territory_name=zno.physPTTerName 
    AND location.area_name=zno.physPTAreaName AND location.region_name=zno.physPTRegName
    AND institution.institution_parent IS NULL LIMIT 1) as institution_id
FROM zno
INNER JOIN subject ON zno.phystest=subject.subject_name;

INSERT INTO test (subject_id, student_id, test_status, zno_grade, dpa_grade, test_grade, year,
 institution_id)
SELECT subject_id, outid, chemTestStatus, chemBall100, chemBall12, chemball, ZNOYear,
(SELECT DISTINCT institution_id
    FROM institution
    JOIN location
    USING (location_id)
    WHERE institution.institution_name=zno.chemPTName AND location.territory_name=zno.chemPTTerName 
    AND location.area_name=zno.chemPTAreaName AND location.region_name=zno.chemPTRegName
    AND institution.institution_parent IS NULL LIMIT 1) as institution_id
FROM zno
INNER JOIN subject ON zno.chemtest=subject.subject_name;

INSERT INTO test (subject_id, student_id, test_status, zno_grade, dpa_grade, test_grade, year,
 institution_id)
SELECT subject_id, outid, bioTestStatus, bioBall100, bioBall12, bioBall, ZNOYear,
(SELECT DISTINCT institution_id
    FROM institution
    JOIN location
    USING (location_id)
    WHERE institution.institution_name=zno.bioPTName AND location.territory_name=zno.bioPTTerName 
    AND location.area_name=zno.bioPTAreaName AND location.region_name=zno.bioPTRegName
    AND institution.institution_parent IS NULL LIMIT 1) as institution_id
FROM zno
INNER JOIN subject ON zno.biotest=subject.subject_name;

INSERT INTO test (subject_id, student_id, test_status, zno_grade, dpa_grade, test_grade, year,
 institution_id)
SELECT subject_id, outid, geoTestStatus, geoBall100, geoBall12, geoball, ZNOYear,
(SELECT DISTINCT institution_id
    FROM institution
    JOIN location
    USING (location_id)
    WHERE institution.institution_name=zno.geoPTName AND location.territory_name=zno.geoPTTerName 
    AND location.area_name=zno.geoPTAreaName AND location.region_name=zno.geoPTRegName
    AND institution.institution_parent IS NULL LIMIT 1) as institution_id
FROM zno
INNER JOIN subject ON zno.geotest=subject.subject_name;

INSERT INTO test (subject_id, student_id, test_status, zno_grade, dpa_grade, test_grade, year,
 institution_id)
SELECT subject_id, outid, engTestStatus, engBall100, engBall12, engball, ZNOYear,
(SELECT DISTINCT institution_id
    FROM institution
    JOIN location
    USING (location_id)
    WHERE institution.institution_name=zno.engPTName AND location.territory_name=zno.engPTTerName 
    AND location.area_name=zno.engPTAreaName AND location.region_name=zno.engPTRegName
    AND institution.institution_parent IS NULL LIMIT 1) as institution_id
FROM zno
INNER JOIN subject ON zno.engtest=subject.subject_name;

INSERT INTO test (subject_id, student_id, test_status, zno_grade, dpa_grade, test_grade, year,
 institution_id)
SELECT subject_id, outid, fraTestStatus, fraBall100, fraBall12, fraball, ZNOYear,
(SELECT DISTINCT institution_id
    FROM institution
    LEFT JOIN location
    USING (location_id)
    WHERE institution.institution_name=zno.fraPTName AND location.territory_name=zno.fraPTTerName 
    AND location.area_name=zno.fraPTAreaName AND location.region_name=zno.fraPTRegName
    AND institution.institution_parent IS NULL LIMIT 1) as institution_id
FROM zno
INNER JOIN subject ON zno.fratest=subject.subject_name;


INSERT INTO test (subject_id, student_id, test_status, zno_grade, dpa_grade, test_grade, year,
 institution_id)
SELECT subject_id, outid, deuTestStatus, deuBall100, deuBall12, deuball, ZNOYear,
(SELECT DISTINCT institution_id
    FROM institution
    JOIN location
    USING (location_id)
    WHERE institution.institution_name=zno.deuPTName AND location.territory_name=zno.deuPTTerName 
    AND location.area_name=zno.deuPTAreaName AND location.region_name=zno.deuPTRegName
    AND institution.institution_parent IS NULL LIMIT 1) as institution_id
FROM zno
INNER JOIN subject ON zno.deutest=subject.subject_name;

INSERT INTO test (subject_id, student_id, test_status, zno_grade, dpa_grade, test_grade, year,
 institution_id)
SELECT subject_id, outid, spaTestStatus, spaBall100, spaBall12, spaball, ZNOYear,
(SELECT DISTINCT institution_id
    FROM institution
    JOIN location
    USING (location_id)
    WHERE institution.institution_name=zno.spaPTName AND location.territory_name=zno.spaPTTerName 
    AND location.area_name=zno.spaPTAreaName AND location.region_name=zno.spaPTRegName
    AND institution.institution_parent IS NULL LIMIT 1) as institution_id
FROM zno
INNER JOIN subject ON zno.spatest=subject.subject_name;