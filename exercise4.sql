-- Retrieve the usernames and comment texts for all comments along with the associated user information for users who have made comments on photos.
-- Expected columns: username, comment_text
select u.username as username,c.comment_text as comment_text
from comments c
left join users u on c.user_id=u.user_id
order by c.comment_text;

-- List all users and their corresponding photos, including those who haven't uploaded any photos yet.
-- Expected columns: username, image_url

select u.username as username,i.image_url as image_url
from users u
left join photos i on u.user_id=i.user_id;

-- Show all users who have followers, along with their follower information. Include users who may not have any followers.
-- Expected columns: follower_id, username

select f.follower_id as follower_id,u.username as username
from users u
left join follows f on u.user_id=f.followee_id;

-- Display all users and their liked photos, including users who have not liked any photos and photos that have not been liked.
-- Expected columns: username, image_url
select u.username as username,f.image_url as image_url
from users u
left join likes i on u.user_id=i.user_id
left join photos f on f.photo_id=i.photo_id