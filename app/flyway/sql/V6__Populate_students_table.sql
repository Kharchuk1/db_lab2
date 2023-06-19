INSERT INTO student (student_id, birth, sex, status, profile, language, year, location_id, institution_id)
SELECT zno.OUTID, zno.Birth, zno.SEXTYPENAME,
    zno.REGTYPENAME, zno.ClassProfileNAME,
    zno.ClassLangName, zno.ZNOYear, 
    (SELECT location.location_id
    FROM location
    WHERE location.region_name = zno.REGNAME
        AND location.area_name = zno.AREANAME
        AND location.territory_name = zno.TERNAME
    LIMIT 1) AS location_id,
    (SELECT institution.institution_id
    FROM institution
    WHERE institution.institution_name = zno.EONAME
        AND institution.institution_parent = zno.EOParent
    LIMIT 1) AS institution_id
FROM zno
ON CONFLICT DO NOTHING;