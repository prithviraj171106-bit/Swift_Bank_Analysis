-- Create batabase.
create database CricketDB;

-- use database
use CricketDB;

-- create team table.
create table Teams (TeamID int primary key, TeamName varchar(50) not null, Captain varchar(50), HomeGround varchar(50) );

alter table Teams add column Coach varchar(50);

-- insert teams.
INSERT INTO Teams VALUES
(1,'Mumbai Indians','Hardik Pandya','Mark Boucher','Wankhede Stadium'),
(2,'Chennai Super Kings','Ruturaj Gaikwad','Stephen Fleming','Chepauk Stadium'),
(3,'Royal Challengers Bengaluru','Rajat Patidar','Andy Flower','M Chinnaswamy Stadium'),
(4,'Kolkata Knight Riders','Ajinkya Rahane','Chandrakant Pandit','Eden Gardens'),
(5,'Rajasthan Royals','Sanju Samson','Kumar Sangakkara','Sawai Mansingh Stadium'),
(6,'Sunrisers Hyderabad','Pat Cummins','Daniel Vettori','Rajiv Gandhi Stadium'),
(7,'Delhi Capitals','Axar Patel','Ricky Ponting','Arun Jaitley Stadium'),
(8,'Punjab Kings','Shreyas Iyer','Trevor Bayliss','PCA Stadium');

-- display team table.
select*from Teams;

-- Create Players Table.
create table Players ( PlayerId int primary key, PlayerName varchar(50), Age INT, Country varchar(30), TeamID int, foreign key (TeamId) references Teams(TeamID));

select*from Players;

alter table Players add column Role varchar(30);

-- Insert Players.
INSERT INTO Players(PlayerID,PlayerName,Age,Country,Role,TeamID) VALUES
(101,'Rohit Sharma',38,'India','Batsman',1),
(102,'Suryakumar Yadav',35,'India','Batsman',1),
(103,'Jasprit Bumrah',32,'India','Bowler',1),
(104,'Hardik Pandya',32,'India','All-Rounder',1),
(105,'Tilak Varma',24,'India','Batsman',1),

(201,'MS Dhoni',45,'India','Wicket Keeper',2),
(202,'Ruturaj Gaikwad',29,'India','Batsman',2),
(203,'Ravindra Jadeja',37,'India','All-Rounder',2),
(204,'Ravichandran Ashwin',40,'India','Bowler',2),
(205,'Matheesha Pathirana',24,'Sri Lanka','Bowler',2);

-- View Players
select*from Players;

-- Create Matches Tables
CREATE TABLE Matches ( MatchID int primary key, Team1ID int, Team2ID int, MatchDate date , Venue varchar(50), WinnerTeamID int, foreign key (Team1ID) references Teams(TeamID), foreign key (Team2ID) references Teams(TeamID), foreign key (WinnerTeamID) references Teams(TeamID));

-- Insert Matches
INSERT INTO Matches VALUES
(1,1,2,'2026-03-20','Mumbai',1),
(2,3,4,'2026-03-21','Bengaluru',3),
(3,5,6,'2026-03-22','Jaipur',6),
(4,7,8,'2026-03-23','Delhi',7),
(5,1,3,'2026-03-24','Mumbai',3);

-- view matches
select*from Matches;

-- Create BattingStats Table 

CREATE TABLE BattingStats (
    BattingID INT PRIMARY KEY,
    PlayerID INT,
    MatchID INT,
    Runs INT,
    Balls INT,
    Fours INT,
    Sixes INT,
    StrikeRate DECIMAL(5,2),
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID),
    FOREIGN KEY (MatchID) REFERENCES Matches(MatchID)
);

-- insert records into batting stats
INSERT INTO BattingStats VALUES
(1,101,1,78,52,9,3,150.00),
(2,102,1,45,30,5,2,150.00),
(3,103,1,10,8,1,0,125.00),
(4,104,1,35,20,4,2,175.00),
(5,105,1,60,42,7,2,142.86),

(6,201,1,25,18,2,1,138.89),
(7,202,1,80,55,10,3,145.45),
(8,203,1,40,28,3,2,142.86),
(9,204,1,15,14,1,0,107.14),
(10,205,1,5,6,0,0,83.33);

-- Create bowlingstats table
CREATE TABLE BowlingStats (
    BowlingID INT PRIMARY KEY,
    PlayerID INT,
    MatchID INT,
    Overs DECIMAL(3,1),
    RunsGiven INT,
    Wickets INT,
    Economy DECIMAL(4,2),
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID),
    FOREIGN KEY (MatchID) REFERENCES Matches(MatchID)
);

-- insert records into bowlingstats
INSERT INTO BowlingStats VALUES
(1,103,1,4.0,24,3,6.00),
(2,104,1,4.0,30,2,7.50),
(3,203,1,4.0,28,2,7.00),
(4,204,1,4.0,35,1,8.75),
(5,205,1,4.0,40,1,10.00),

(6,103,2,4.0,22,4,5.50),
(7,104,2,3.0,26,1,8.67),
(8,203,2,4.0,31,3,7.75),
(9,204,2,4.0,29,2,7.25),
(10,205,2,4.0,37,0,9.25);

-- 1 display all teams
select*from Teams;

-- 2 display all players
select*from Players;

-- 3 display players whose age is greater than 30
SELECT PlayerName
FROM Players
WHERE Age > 30;

-- 4 display all bowlers
SELECT PlayerName
FROM Players
WHERE Role='Bowler';

-- 5 display players in decending order of age
SELECT *
FROM Players
ORDER BY Age DESC;

-- 6 count total number of players
SELECT COUNT(*)
FROM Players;

-- 7 find the avg age of players
SELECT AVG(Age)
FROM Players;

-- 8 find the oldest player
SELECT MAX(Age)
FROM Players;

-- 9 find the youngest player
SELECT MIN(Age)
FROM Players;

-- 10 count number of players in each team
SELECT TeamID, COUNT(*)
FROM Players
GROUP BY TeamID;

-- 11 find avg age of players team wise
SELECT TeamID, AVG(Age)
FROM Players
GROUP BY TeamID;

-- 12 display teams having more than four players 
SELECT TeamID, COUNT(*)
FROM Players
GROUP BY TeamID
HAVING COUNT(*) > 4;

-- 13 display player name along with team name (inner join)
SELECT p.PlayerName, t.TeamName
FROM Players p
JOIN Teams t
ON p.TeamID = t.TeamID;

-- 14 display the oldest player using subquery 
SELECT *
FROM Players
WHERE Age = (
    SELECT MAX(Age)
    FROM Players
);

-- 15 update the age of rohit sharma
UPDATE Players
SET Age = 39
WHERE PlayerID = 101;

select*from Players;

-- 16 create a view for team and players
CREATE VIEW TeamPlayers AS
SELECT p.PlayerName, t.TeamName
FROM Players p
JOIN Teams t
ON p.TeamID = t.TeamID;

-- 17 display data from view
select*from TeamPlayers;

-- 18 display total runs score by each player
 SELECT p.PlayerName, b.Runs
FROM Players p
JOIN BattingStats b
ON p.PlayerID = b.PlayerID;

--  19 display total wickets taken by each bowler
SELECT p.PlayerName, bw.Wickets
FROM Players p
JOIN BowlingStats bw
ON p.PlayerID = bw.PlayerID;

-- 20 find the highest run scorer 
SELECT p.PlayerName, b.Runs
FROM Players p
JOIN BattingStats b
ON p.PlayerID = b.PlayerID
ORDER BY b.Runs DESC
LIMIT 1;

-- 21 find the highest wicket taker 
SELECT p.PlayerName, bw.Wickets
FROM Players p
JOIN BowlingStats bw
ON p.PlayerID = bw.PlayerID
ORDER BY bw.Wickets DESC
LIMIT 1;

-- 22 display match details with along winning team
SELECT m.MatchID,
       m.MatchDate,
       t.TeamName AS Winner
FROM Matches m
JOIN Teams t
ON m.WinnerTeamID = t.TeamID;

-- 23 find top 5 run scorers
SELECT p.PlayerName, b.Runs
FROM Players p
JOIN BattingStats b
ON p.PlayerID = b.PlayerID
ORDER BY b.Runs DESC
LIMIT 5;

-- 24 find top 5 wicket takers 
SELECT p.PlayerName, bw.Wickets
FROM Players p
JOIN BowlingStats bw
ON p.PlayerID = bw.PlayerID
ORDER BY bw.Wickets DESC
LIMIT 5;

-- 25 display all batsmen
select PlayerName, role from Players where role = 'batsman';

-- project completed .
