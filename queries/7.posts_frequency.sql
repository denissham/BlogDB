SELECT t.tag, COUNT(pt.posts_post_id) posts_frequency
FROM BlogDBNew.tags t
JOIN BlogDBNew.post_tags pt
ON pt.tags_tag_id = t.tag_id
GROUP BY t.tag
ORDER BY posts_frequency DESC;