# Page With No Likes – SQL Practice

## Problem
Given two tables (`pages` and `page_likes`) containing Facebook Pages and their likes,  
write a query to return the IDs and names of the pages that have **zero likes**.  
Sort the output in ascending order by `page_id`.

## Tables

**pages**
| Column     | Type     |
|------------|----------|
| page_id    | integer  |
| page_name  | varchar  |

**page_likes**
| Column     | Type      |
|------------|-----------|
| user_id    | integer   |
| page_id    | integer   |
| liked_date | timestamp |

## Key SQL Clauses Used

- `LEFT JOIN` – Keep all pages even if there are no matches in `page_likes`.
- `WHERE ... IS NULL` – Filter only rows where no likes exist.
- `ORDER BY` – Sort results by page_id.

## Solution ([see solution.sql](./solution.sql))
```sql
SELECT p.page_id, p.page_name
FROM pages AS p
LEFT JOIN page_likes AS pl
    ON pl.page_id = p.page_id
WHERE pl.page_id IS NULL
ORDER BY p.page_id;