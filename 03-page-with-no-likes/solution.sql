SELECT p.page_id, p.page_name
FROM pages AS p
LEFT JOIN page_likes AS pl
    ON pl.page_id = p.page_id
WHERE pl.page_id IS NULL
ORDER BY p.page_id;