-- Question 1 
select u.user_id, u.username,count(p.user_id) as num_of_photos 
from intern_rcharankumar.users u
left join  intern_rcharankumar.photos p on u.user_id=p.user_id 
group by u.user_id
order by num_of_photos desc;
-- Question 2 
select t.tag_name as tag_name, count(p.photo_id) as photo_count from tags t 
right join photo_tags p on p.tag_id = t.id
group by t.tag_name
order by photo_count desc;

-- question 3

select u.username as username,u.created_at as joining_date 
from users u 
where u.user_id not in (select distinct p.user_id from photos p)
order by joining_date;

-- Question 4
select u.username,u.created_at as joining_date,p.created_at as photo_date, datediff(p.created_at,u.created_at) as num_days_to_first_upload
from users u
right join photos p on u.user_id=p.user_id
group by u.user_id
order by num_days_to_first_upload ;
