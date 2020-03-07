SELECT p.post_id, p.title, p.body, GROUP_CONCAT(t.tag)  AS  tags
FROM BlogDBNew.posts p JOIN BlogDBNew.post_tags pt 
 ON p.post_id = pt.posts_post_id 
JOIN BlogDBNew.tags t 
 ON pt.tags_tag_id = t.tag_id 
GROUP BY p.post_id;