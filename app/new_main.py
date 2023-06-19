import psycopg2
import csv
import config 

conn = psycopg2.connect(**config.connection)
cur = conn.cursor()

query = '''
SELECT region_name, test.year, AVG(zno_grade)  
FROM test
LEFT JOIN student
USING (student_id)
LEFT JOIN location
USING (location_id)
WHERE subject_id = 3 AND test_status='Зараховано'
GROUP BY region_name, test.year
ORDER BY region_name, test.year; 
'''
cur.execute(query)

with open('result_2.csv', 'w', encoding='UTF-8') as f:
    writer = csv.writer(f, lineterminator='\n')
    writer.writerow(['Регіон', 'Рік', 'Середній бал з математики'])
    for row in cur:
        writer.writerow(row)


cur.close()
conn.close()
