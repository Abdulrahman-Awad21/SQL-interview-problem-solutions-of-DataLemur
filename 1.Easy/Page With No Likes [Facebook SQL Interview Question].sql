SELECT p.page_id 
FROM pages p
WHERE p.page_id not in (SELECT page_likes.page_id FROM page_likes)
