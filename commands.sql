#joins user and family_members tables and retrieves info about user first, last name and thename of respective relatives
select user.first_name, user.last_name, family_members.name 
FROM user
INNER JOIN family_members on fk_family_members_ID = family_members_ID;

#joins user and work_experience table and retrieves info about current workplace 
select user.first_name, user.last_name, work_experience.current_workplace 
FROM user
INNER JOIN work_experience on fk_work_experience_ID = work_experience_ID;

#joins three tables, user, work_experience and current_workplace_from_to and retrieves info about user name, last name, workplace and beginning date
select user.first_name, user.last_name, work_experience.current_workplace, current_workplace_from_to.beginning_date
FROM user
JOIN work_experience on fk_work_experience_ID = work_experience_ID
JOIN current_workplace_from_to on fk_work_experience = work_experience_ID

#joins three tables, user, post and image and retrieves info about username, publication date and image decsription
select user.first_name, user.last_name, post.publication_date, image.description
FROM user
JOIN post on fk_user_ID = user_ID
JOIN image on fk_post_ID = post_ID 

#joins 4 tables, user, work_Experience, post (only for connection) and image and retrieves information about username, work experience and image description
SELECT user.first_name, user.last_name, work_experience.current_workplace, image.description
FROM user
RIGHT JOIN work_experience on fk_work_experience_ID = work_experience_ID 
RIGHT JOIN post on fk_user_ID = user_ID
RIGHT JOIN image on fk_post_ID = post_ID 
