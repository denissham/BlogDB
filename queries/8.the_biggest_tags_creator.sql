SELECT u.user_id, u.name, u.surname, COUNT(pt.tags_tag_id) tags_number
FROM BlogDBNew.users u
JOIN BlogDBNew.posts p
 ON u.user_id = p.user_id
JOIN BlogDBNew.post_tags pt
 ON p.post_id = pt.posts_post_id
GROUP BY u.user_id
ORDER BY tags_number DESC
LIMIT 5;