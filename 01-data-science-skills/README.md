# Data Science Skills – SQL Practice

## Problem
Given a table of candidates and their skills, return the candidate IDs who have **all three** of these skills: `Python`, `Tableau`, and `PostgreSQL`.

## Table Example

| candidate_id | skill      |
|--------------|------------|
| 123          | Python     |
| 123          | Tableau    |
| 123          | PostgreSQL |
| 234          | R          |
| 234          | PowerBI    |
| 234          | SQL Server |
| 345          | Python     |
| 345          | Tableau    |

## Solution (see solution.sql)

The query:
- Filters only the required skills.
- Groups by candidate_id.
- Returns only those with all three required skills.

```sql
SELECT candidate_id
FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(candidate_id) = 3
ORDER BY candidate_id;
