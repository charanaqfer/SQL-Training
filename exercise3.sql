-- Question1 For each user, find the num followers and followees
-- Expected columns: user_id, username, num_followers, num_followees

select u.user_id as user_id,u.username as username,
(select count(*) from follows where followee_id=u.user_id) as num_followers,
(select count(*) from follows where follower_id=u.user_id) as num_followees 
from users u;

-- For each user, find the photo with most number of likes
-- Expected columns: user_id, username, photo_id, num_likes
-- Output data expectations: Only 1 row per username

select tab.user_id,tab.username,tab.photo_id,max(tab.num_likes) from (select p.user_id as user_id,u.username as username,
l.photo_id as photo_id,(count(l.user_id)) as num_likes
from photos p 
left join likes l on p.photo_id=l.photo_id
left join users u on u.user_id=p.user_id
group by p.photo_id) tab
group by tab.user_id

