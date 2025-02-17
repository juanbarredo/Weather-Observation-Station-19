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

--USE Weather_Observation_Station_2
--SELECT *
--	FROM STATION;

	--ok, felt great to get that going.

--next step.

--all of the sudden I have forgotten how to math

--ok,

--I believe I need to solve for p1(a,c) first.

--a = minimum LAT_N
--c = maximum LAT_N

--so,
--let me now get "a" 

--USE Weather_Observation_Station_2;
--SELECT LAT_N
--	FROM STATION;

--USE Weather_Observation_Station_2
--SELECT MIN(LAT_N) AS 'a = MIN(LAT_N)'
--	FROM STATION; 

	--amazing seeing that result!

--let me now get 'c'.

--USE Weather_Observation_Station_2;
--SELECT MAX(LAT_N) AS 'b = MAX(LAT_N)'
--	FROM STATION;

	--so compelling seing the resulting sets.

--the next action is to move on to p2(b,d)

--let me get 'b' next

--USE Weather_Observation_Station_2;
--SELECT LONG_W
--	FROM STATION;

	--Ok, time to finish.

--I like this new found rhythm.
--it builds securely and nicely.

--I am excited to carry this forth.

-------------------------------02 16 2025------------------------------------------

--I have started looking a little bit more at machine learnign using just tsql.
--I think that the most that I can find is that tsql can set up a really nice stream of data packaged up for python, r, or somthing else.
--but that's it.

--the next thing is that sql is added a layer.  a userdefined function layer, or a procedural languange layer.

--at some point a llayer must be added to the one that I am just using right now.

--I want to work on this layer as much as possible.

--I think the next step might be to get a dataset installed.
--the iris data set could be next.

--could I install a big data set?

--ok,

--moving on to this problem although I am very excited to set up the new data sets.

--I am now needing to get MIN(LONG_W) as 

--"(c,d) are the respective minimum and maximum 
--values of Western Longtitude (LONG_W)
--in STATION."

--c = MING(LONG_W)

--USE Weather_Observation_Station_2;
--SELECT MIN(LONG_W) AS 'c = MIN(LONG_W)'
--	FROM STATION;

--Ok!
--I have solved for 'c'
--next is 'd'.
--i need to work on relabeling a few things.

--ok!
--I may need a way to visualize the coordinates better.

--i was thinking I could use that mindmapping software next time I need to set things up graphically.

--I could upload the file to github as well.

--so, 'd'.

--'d' is MAX(LONG_W)

--USE	Weather_Observation_Station_2;
--SELECT MAX(LONG_W) AS 'd = MAX(LONG_W)'
--	FROM STATION;

--I believe that I now need to format for two things at once.
--I need to know what the formula of the Eucledian distance is
--so that I can organize p1 and p2 in a query?

--d( p, q ) = square root ((p1-q1)squared + (p2 - q2)squared)
--d(p1,p2) = square root((a-b)squared + (c-d)squared)
--does the above line up?
--I think it does.

--ok,
--p1 = (a,c)

--ok,
--I am excited to keep working on this.
--I may need to see about starting the other data set projects sometime?

--I know that there are a lot of resources for the ones I have in mind.
--since I saw them one the mssql website.
--p2

----------------------------------02 17 2025------------------------------------------



--so,
--I have solved for all the things.
--i need to puth them together in the Eucledian formula which I had a hard time grasping so i was breaking it into small chunks.

--where did I leave off.

--p1 = (a,c)
--p2 = (b,d)

--d( p, q ) = square root ((p1-q1)squared + (p2 - q2)squared)
--d(p1,p2) = square root((a-b)squared + (c-d)squared)

--ok,
--let's move on to the next step

--putting aquery together.

--USE Weather_Observation_Station_2;
--SELECT SQRT(SQUARE(MIN(LAT_N) - MAX(LAT_N)) + SQUARE(MIN(LONG_W) - MAX(LONG_W))) AS 'EUCLEDIAN DISTANCE'
--	FROM STATION;

	--really enjoyed how my fingers flew through the cerakey typewritter.
	--really nice.

--ok,
--now I want to work on the "format your answer to display 4 decimal digits."

--is this going to be my usual display as decimat (7,4) or (10,4) lol
--sorry CAST AS DECIMAL (7,4)
--I am still not clear on the (7,4) but it might just work.

USE Weather_Observation_Station_2;
SELECT CAST(SQRT(SQUARE(MIN(LAT_N) - MAX(LAT_N)) + SQUARE(MIN(LONG_W) - MAX(LONG_W))) AS DECIMAL (7,4)) 
	FROM STATION;

	--I will not attempt to type up the query in lines 223 to 225 on the Hacker Rank input window spot.

	--I got the right answer of course!

	--ok, let me clean this up to turn in.