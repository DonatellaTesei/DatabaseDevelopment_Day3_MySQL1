#joins user and family_members tables and retrieves info about user first, last name and thename of respective relatives
select user.first_name, user.last_name, family_members.name 
FROM user
INNER JOIN family_members on fk_family_members_ID = family_members_ID;

#joins three tables, user, work_experience and current_workplace_from_to and retrieves info about user name, last name, workplace and beginning date
select user.first_name, user.last_name, work_experience.current_workplace, current_workplace_from_to.beginning_date
FROM user
JOIN work_experience on fk_work_experience_ID = work_experience_ID
JOIN current_workplace_from_to on fk_user_ID = user_ID

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

select user.first_name, user.last_name, post.publication_date, comment.comment_text
FROM user
JOIN post on fk_user_ID = user_ID
JOIN comment on fk_post_ID = post_ID

#joins user, post and image table and shows fist, last name, publication date, file name and description
select user.first_name, user.last_name, post.publication_date, image.file_name, image.description
FROM user
JOIN post on fk_user_ID = user_ID
JOIN image on fk_post_ID = post_ID

#joins user, post and image table and shows fist, last name, file name and description
select user.first_name, user.last_name, image.file_name, image.description
FROM user
JOIN post on fk_user_ID = user_ID
JOIN image on fk_post_ID = post_ID

#joins user, post, image and work experience table and shows first, last name, oubication date, file name, description and current workplace
select user.first_name, user.last_name, post.publication_date, image.file_name, image.description, work_experience.current_workplace
FROM user
JOIN post on fk_user_ID = user_ID
JOIN image on fk_post_ID = post_ID
JOIN work_experience on work_experience_ID = fk_work_experience_ID

#EXAMPLES WITH INNER JOIN, LEFT and RIGHT JOIN #user_ID=4 h fk_work_Experience_ID was set to NULL!!!
#joins user and work_experience table and retrieves info about current workplace and shows ONLY users with a current workplace 
select user.first_name, user.last_name, work_experience.current_workplace 
FROM user
INNER JOIN work_experience on fk_work_experience_ID = work_experience_ID;

first_name  last_name  current_workplace
Donatella   Tesei      empty field
Azzurra     Tesei      Tuscia University
John        Harris     JPL


#joins user and work_experience table and retrieves info about current workplace and shows all users, with and w/o current workplace
select user.first_name, user.last_name, work_experience.current_workplace 
FROM user
LEFT JOIN work_experience on fk_work_experience_ID = work_experience_ID;

first_name  last_name  current_workplace
Donatella   Tesei       empty field
Azzurra     Tesei       Tuscia University
John        Harris      JPL
Mark        Reeves      NULL


#joins user and work_experience table and retrieves info about current workplace and shows all current workplaces
select user.first_name, user.last_name, work_experience.current_workplace 
FROM user
RIGHT JOIN work_experience on fk_work_experience_ID = work_experience_ID;

#first_name last_name current_workplace
Donatella   Tesei      empty field
Azzurra     Tesei      Tuscia University
John        Harris     JPL
NULL        NULL       Blu Origin