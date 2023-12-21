                              #c2c Business model 

#Q1
USE ECOMMERCE;
#Q2 IMPOTED THE DATA
#Q3
DESC USERS_DATA;
#Q4
SELECT * FROM users_data limit 100; 
#Q5
SELECT COUNT(DISTINCT COUNTRY) AS DIST_COUNTRY, COUNT(DISTINCT LANGUAGE) AS DIST_LANGUAGE FROM USERS_DATA;

select socialNbfollowers from users_data;
#6
SELECT SUM(socialNbFollowers),GENDER FROM USERS_DATA group by GENDER;
select count(socialNbFollowers),gender from users_data group by gender;
#7 (#A)
SELECT COUNT(*) FROM users_data WHERE hasProfilePicture ="True";
#B)
SELECT COUNT(*) FROM USERS_DATA WHERE hasAnyApp = "TRUE";
#C
SELECT COUNT(*) FROM USERS_DATA WHERE hasAndroidApp = "TRUE";
#D
SELECT COUNT(*) FROM users_data WHERE hasIosApp = "TRUE";
#8.
SELECT country,count(productsBought)BUYERS FROM users_data where productsBought > 0 GROUP BY country ORDER BY BUYERS DESC ;
#9 Calculate the total number of sellers for each country and sort the result in ascending order of total number of sellers. 
SELECT COUNTRY,count(productsSold)SELLERS FROM users_data WHERE productsSold > 0 GROUP BY country ORDER BY SELLERS ;
#10 NAME TOP 10 COUNTRIES HAVEING MAXIMUM PRODUCTPASSRATE
SELECT COUNTRY,MAX(productsPassRate) FROM users_data GROUP BY COUNTRY ORDER BY MAX(productsPassRate)DESC LIMIT 10;  
#11 Calculate the number of users on an ecommerce platform for different language choices.
SELECT LANGUAGE,count(*) FROM users_data group by LANGUAGE;
#12 Check the choice of female users about putting the product in a wishlist or to like socially on an ecommerce platform. (Hint: use UNION to answer this question.)

select 'Product Wished' as 'Female',COUNT(productsWished) FROM USERS_DATA WHERE GENDER = 'F' AND productsWished > 0 UNION
SELECT 'Social Product Liked',COUNT(socialProductsLiked) FROM users_data WHERE GENDER = 'F' AND socialProductsLiked > 0;
#13 Check the choice of male users about being seller or buyer.
select 'SELLER' AS 'MALE',count(productsSold) FROM users_data WHERE gender = 'M' and productsSold > 0 union
select 'BUYER',COUNT(productsBought) from users_data where gender = 'M' AND productsBought > 0; 
#14 Which country is having maximum number of buyers?
SELECT country,count(productsBought) FROM users_data GROUP BY country ORDER BY count(productsBought) DESC;

SELECT * FROM users_data;
#Q15 List the name of 10 countries having zero number of sellers.
SELECT COUNTRY FROM users_data WHERE COUNTRY = ALL(SELECT productsSold = 0) GROUP BY country LIMIT 10;
#16 Display record of top 110 users who have used ecommerce platform recently
SELECT daysSinceLastLogin FROM users_data ORDER BY daysSinceLastLogin ASC LIMIT 110;
#17 Calculate the number of female users those who have not logged in since last 100 days.
SELECT GENDER,count(daysSinceLastLogin) FROM users_data where GENDER = 'F' AND daysSinceLastLogin > 100 ;
#18 Display the number of female users of each country at ecommerce platform.
SELECT COUNTRY,COUNT(*) FROM users_data WHERE GENDER = 'F'AND hasAnyApp = "TRUE" group  BY country;
#19 Display the number of male users of each country at ecommerce platform
SELECT COUNTRY,COUNT(*) FROM users_data WHERE GENDER = 'M' AND hasAnyApp = "TRUE" group BY country;
#20 Calculate the average number of products sold and bought on ecommerce platform by male users for each country
SELECT country,avg(productsSold),avg(productsBought) FROM users_data WHERE GENDER = 'M' GROUP BY country;


select count(distinct country) country_dist , count(distinct language) lang_dist from users_data;
