SELECT p.post_id, p.title, p.body, pt.tags_tag_id
FROM BlogDBNew.posts p LEFT JOIN BlogDBNew.post_tags pt 
 ON p.post_id = pt.posts_post_id
WHERE tags_tag_id IS NULL;