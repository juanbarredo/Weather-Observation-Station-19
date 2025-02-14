-------------------------------02 10 2025------------------------------------
--just starting this problem

--i am excited but I feel like I am not being challenged.

--i may see about the next one and if i see no challenge
--i will look for a problem that is a challenge.

-----------------------------------02 13 2025-------------------------

--I have been reading on SQL and Machine Learning
--seems that I have to switch to some variant to get 
--machine learning done.
--I think I can challenge that.

--I just have to understand machine learning better 
--and SQL better of course.

--I might try to do that flowers example on SQL sometime?

--Either way,
--Let me move on to the problem at hand.

--"Consider p1(a,c) 
--and p2(b,d)
--to be two points on a 2D plane
--where 
--(a,b) are the respective minimum and maximum 
--values of Northern Latitude (LAT_N) 
--and
--(c,d) are the respective minimum and maximum 
--values of Western Longtitude (LONG_W)
--in STATION.

--Query the Eucledian Distance between points p1 and p2
--and format your answer to display
--4 decimal digits."

--weird the way they are wording the last part of the problem.
--"format your answer to display 4 decimal digits."

--ok,
--like previous Weather Observation Station 18.
--I want to slowly build the query part by part.

--The first part I want to break into is a simple SELECT *

USE Weather_Observation_Station_2
SELECT *
	FROM STATION;

	--ok, felt great to get that going.

--next step.

--all of the sudden I have forgotten how to math

--ok,

--I believe I need to solve for p1(a,c) first.

--a = minimum LAT_N
--c = maximum LAT_N

--so,
--let me now get "a" 

USE Weather_Observation_Station_2;
SELECT LAT_N
	FROM STATION;

USE Weather_Observation_Station_2
SELECT MIN(LAT_N) AS 'a = MIN(LAT_N)'
	FROM STATION; 

	--amazing seeing that result!

--let me now get 'c'.

USE Weather_Observation_Station_2;
SELECT MAX(LAT_N) AS 'c = MAX(LAT_N)'
	FROM STATION;

	--so compelling seing the resulting sets.

--the next action is to move on to p2(b,d)

--let me get 'b' next

USE Weather_Observation_Station_2;
SELECT LONG_W
	FROM STATION;

	--Ok, time to finish.

--I like this new found rhythm.
--it builds securely and nicely.

--I am excited to carry this forth.





