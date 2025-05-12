import sqlite3
import sys

DB_PATH = 'db/example.db'

if len(sys.argv) < 2:
    print('사용법: python run_query.py <query.sql>')
    sys.exit(1)

query_file = sys.argv[1]

with open(query_file, 'r', encoding='utf-8') as f:
    query = f.read()

conn = sqlite3.connect(DB_PATH)
cursor = conn.cursor()

try:
    cursor.execute(query)
    if cursor.description:
        # SELECT 쿼리 결과 출력
        columns = [desc[0] for desc in cursor.description]
        print('\t'.join(columns))
        for row in cursor.fetchall():
            print('\t'.join(map(str, row)))
    else:
        conn.commit()
        print('Query executed successfully.')
finally:
    cursor.close()
    conn.close() 