/*
1.
Show the total number of prizes awarded.
*/
SELECT COUNT(winner) 
FROM nobel

/*
2.
List each subject - just once
*/
SELECT DISTINCT subject
FROM nobel

/*
3.
Show the total number of prizes awarded for Physics.
nobel(yr, subject, winner)  
*/
SELECT COUNT(subject)
FROM nobel
WHERE subject = 'Physics'

/*
4.
For each subject show the subject and the number of prizes.
nobel(yr,subject, winner)
*/
SELECT subject, COUNT(subject)
FROM nobel
GROUP BY subject

/*
5.
For each subject show the first year that the prize was awarded.
nobel(yr, subject, winner)  
*/
SELECT subject, MIN(yr)
FROM nobel
GROUP BY subject

/*
6.
For each subject show the number of prizes awarded in the year 2000.
nobel(yr, subject, winner)
*/
SELECT subject, COUNT(subject) AS 'Number of Prizes'
FROM nobel
WHERE yr = 2000
GROUP BY subject

/*
7.
Show the number of different winners for each subject.
*/
SELECT subject, COUNT(subject)
FROM nobel
GROUP BY subject















