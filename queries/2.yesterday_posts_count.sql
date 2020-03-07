SELECT count(post_id) yesterday_posts_count
FROM BlogDBNew.posts
WHERE date = CURRENT_DATE() - INTERVAL 1 DAY;