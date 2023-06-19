INSERT INTO institution (institution_name, institution_parent, location_id)
SELECT DISTINCT EONAME, EOParent,
(SELECT DISTINCT a.location_id
FROM (SELECT DISTINCT location_id, region_name, area_name, territory_name
	FROM location
	WHERE region_name IS NOT NULL AND area_name IS NOT NULL AND territory_name IS NOT NULL) as a
WHERE a.region_name=zno.REGNAME AND a.area_name=zno.AREANAME AND
a.territory_name=zno.TERNAME) as location_id
FROM zno
ON CONFLICT DO NOTHING;

INSERT INTO institution (institution_name, institution_parent, location_id)
SELECT DISTINCT ukrPTName, null,
(SELECT DISTINCT location_id
FROM (SELECT DISTINCT location_id, region_name, area_name, territory_name
	FROM location
	WHERE region_name IS NOT NULL AND area_name IS NOT NULL AND territory_name IS NOT NULL) as a
WHERE region_name=UkrPTRegName AND area_name=UkrPTAreaName AND
territory_name=UkrPTTerName) as location_id
FROM zno
ON CONFLICT DO NOTHING;

INSERT INTO institution (institution_name, institution_parent, location_id)
SELECT DISTINCT histPTName, null,
(SELECT DISTINCT location_id
FROM (SELECT DISTINCT location_id, region_name, area_name, territory_name
	FROM location 
	WHERE region_name IS NOT NULL AND area_name IS NOT NULL AND territory_name IS NOT NULL) as a
WHERE region_name=histPTRegName AND area_name=histPTAreaName AND
territory_name=histPTTerName) as location_id
FROM zno
ON CONFLICT DO NOTHING;

INSERT INTO institution (institution_name, institution_parent, location_id)
SELECT DISTINCT mathPTName, null,
(SELECT DISTINCT location_id
FROM (SELECT DISTINCT location_id, region_name, area_name, territory_name
	FROM location
	WHERE region_name IS NOT NULL AND area_name IS NOT NULL AND territory_name IS NOT NULL) as a
WHERE region_name=mathPTRegName AND area_name=mathPTAreaName AND
territory_name=mathPTTerName) as location_id
FROM zno
ON CONFLICT  DO NOTHING;

INSERT INTO institution (institution_name, institution_parent, location_id)
SELECT DISTINCT physPTName, null,
(SELECT DISTINCT location_id
FROM (SELECT DISTINCT location_id, region_name, area_name, territory_name
	FROM location
	WHERE region_name IS NOT NULL AND area_name IS NOT NULL AND territory_name IS NOT NULL) as a
WHERE region_name=physPTRegName AND area_name=physPTAreaName AND
territory_name=physPTTerName) as location_id
FROM zno
ON CONFLICT DO NOTHING;

INSERT INTO institution (institution_name, institution_parent, location_id)
SELECT DISTINCT chemPTName, null,
(SELECT DISTINCT location_id
FROM (SELECT DISTINCT location_id, region_name, area_name, territory_name
	FROM location
	WHERE region_name IS NOT NULL AND area_name IS NOT NULL AND territory_name IS NOT NULL) as a
WHERE region_name=chemPTRegName AND area_name=chemPTAreaName AND
territory_name=chemPTTerName) as location_id
FROM zno
ON CONFLICT DO NOTHING;

INSERT INTO institution (institution_name, institution_parent, location_id)
SELECT DISTINCT bioPTName, null,
(SELECT location_id
FROM (SELECT DISTINCT location_id, region_name, area_name, territory_name
	FROM location
	WHERE region_name IS NOT NULL AND area_name IS NOT NULL AND territory_name IS NOT NULL) as a
WHERE region_name=bioPTRegName AND area_name=bioPTAreaName AND
territory_name=bioPTTerName) as location_id
FROM zno
ON CONFLICT DO NOTHING;

INSERT INTO institution (institution_name, institution_parent, location_id)
SELECT DISTINCT geoPTName, null,
(SELECT DISTINCT location_id
FROM (SELECT DISTINCT location_id, region_name, area_name, territory_name
	FROM location
	WHERE region_name IS NOT NULL AND area_name IS NOT NULL AND territory_name IS NOT NULL) as a
WHERE region_name=geoPTRegName AND area_name=geoPTAreaName AND
territory_name=geoPTTerName) as location_id
FROM zno
ON CONFLICT DO NOTHING;

INSERT INTO institution (institution_name, institution_parent, location_id)
SELECT DISTINCT engPTName, null,
(SELECT DISTINCT location_id
FROM (SELECT DISTINCT location_id, region_name, area_name, territory_name
	FROM location
	WHERE region_name IS NOT NULL AND area_name IS NOT NULL AND territory_name IS NOT NULL)  as a
WHERE region_name=engPTRegName AND area_name=engPTAreaName AND
territory_name=engPTTerName) as location_id
FROM zno
ON CONFLICT DO NOTHING;

INSERT INTO institution (institution_name, institution_parent, location_id)
SELECT DISTINCT fraPTName, null,
(SELECT DISTINCT location_id
FROM (SELECT DISTINCT location_id, region_name, area_name, territory_name
	FROM location
	WHERE region_name IS NOT NULL AND area_name IS NOT NULL AND territory_name IS NOT NULL) as a
WHERE region_name=fraPTRegName AND area_name=fraPTAreaName AND
territory_name=fraPTTerName) as location_id
FROM zno
ON CONFLICT DO NOTHING;

INSERT INTO institution (institution_name, institution_parent, location_id)
SELECT DISTINCT deuPTName, null,
(SELECT DISTINCT location_id
FROM (SELECT DISTINCT location_id, region_name, area_name, territory_name
	FROM location
	WHERE region_name IS NOT NULL AND area_name IS NOT NULL AND territory_name IS NOT NULL) as a
WHERE region_name=deuPTRegName AND area_name=deuPTAreaName AND
territory_name=deuPTTerName) as location_id
FROM zno
ON CONFLICT DO NOTHING;

INSERT INTO institution (institution_name, institution_parent, location_id)
SELECT DISTINCT spaPTName, null,
(SELECT DISTINCT location_id
FROM (SELECT DISTINCT location_id, region_name, area_name, territory_name
	FROM location
	WHERE region_name IS NOT NULL AND area_name IS NOT NULL AND territory_name IS NOT NULL) as a
WHERE region_name=spaPTRegName AND area_name=spaPTAreaName AND
territory_name=spaPTTerName) as location_id
FROM zno
ON CONFLICT DO NOTHING;