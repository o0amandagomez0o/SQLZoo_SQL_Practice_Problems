#Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
select *
from city
where POPULATION > 100000
and COUNTRYCODE = "USA";

#Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
select NAME
from city
where POPULATION > 120000
and COUNTRYCODE = "USA";

#Query all columns (attributes) for every row in the CITY table.
select *
from city;

#Query all columns for a city in CITY with the ID 1661
select *
from city
where ID = 1661;

#Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
select * 
from city
where COUNTRYCODE = "JPN";

#Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN
select NAME
from city
where COUNTRYCODE = "JPN";

#Query a list of CITY and STATE from the STATION table.
select CITY, STATE
from STATION;

#Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
select distinct CITY
from STATION
where ID%2=0;

#Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
select (count(city) - count(distinct city))
from STATION;

#Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
select city, length(city) as len
from STATION
order by len, city
limit 1;

select city, length(city) as len
from STATION
order by len DESC, city
limit 1;

#