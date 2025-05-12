# SQL Practice Project

SQLite와 Python을 이용한 SQL 연습 프로젝트입니다.

## 구조
- `db/` : SQLite DB 파일 및 초기화 SQL(`init.sql`)
- `problems/` : SQL 문제 파일
- `solutions/` : 문제별 정답 SQL
- `run_query.py` : 쿼리 실행 스크립트

## 시작하기
1. DB 초기화
   ```bash
   sqlite3 db/example.db < db/init.sql
   ```
2. 쿼리 실행
   ```bash
   python run_query.py problems/problem1.sql
   ```

## 문제 추가
- `problems/`에 SQL 파일을 추가하고, 정답은 `solutions/`에 작성하세요. 