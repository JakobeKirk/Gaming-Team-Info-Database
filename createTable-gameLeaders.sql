
-- Query to see when we win games, who scores the most points on the team. And how many times the person has scored the most points in a win.
select ps.Game_ID, ts.Points as teamPoints, ps.Points, ps.playerName
from playerStats  as ps
	join teamStats as ts 
	on ps.Game_ID = ts.Game_ID
order by ps.points desc

select Game_ID, points
from playerStats
group by Game_ID, Points

select *
from teamStats

select *
from playerStats
-- Creating a table to make it easier to see outcome of games and led the game in a statistical category
CREATE TABLE gameLeaders (
	Game_ID int,
	Points varchar(255),
	Rebounds varchar(255),
	Assists varchar(255),
	Steals varchar(255),
	Blocks varchar(255),
	Fouls varchar(255),
	Turnovers varchar(255),
	fieldGoalsMade varchar(255),
	fieldGoalsAttempted varchar(255),
	"3pointersMade" varchar(255),
	"3pointersAttempted" varchar(255)
);


select *
from gameLeaders

-- Add data with stat leader per game
INSERT INTO gameLeaders (Game_ID, Points, Rebounds, Assists, Steals, Blocks, Fouls, Turnovers, fieldGoalsMade, fieldGoalsAttempted, "3pointersMade", "3pointersAttempted")
VALUES
('2', 'Jakobe: 21', 'Bryce: 12', 'Dario, Kamil and Jakobe: 5', 'Dario, Jakobe, Braylen, Bryce: 1', 'Bryce: 3', 'Kamil: 2', 'Dario & Braylen: 2', 'Jakobe: 8', 'Bryce: 12', 'Jakobe: 5', 'Jakobe & Bryce: 7'),
('3', 'Jakobe: 18', 'Braylen: 7', 'Dario: 5', 'Bryce: 2', 'All: 0', 'Dario: 1', 'Jakobe: 3', 'Bryce: 7', 'Bryce: 16', 'Jakobe, Kamil, Bryce: 3', 'Bryce: 9'),
('4', 'Jakobe: 19', 'Bryce: 14', 'Bryce: 8', 'Dario: 1', 'Braylen: 1', 'Dario, Kamil, Bryce: 1', 'Dario: 2', 'Jakobe, Kamil: 7', 'Jakobe: 13', 'Jakobe: 3', 'Jakobe: 5'),
('5', 'Braylen: 12', 'Braylen: 15', 'Braylen: 5', 'Dario, Jakobe, Braylen: 1', 'All: 0', 'Braylen: 2', 'Jakobe: 4', 'Braylen: 5', 'Jakobe: 13', 'Dario, Kamil, Bryce: 1', 'Jakobe: 8'),
('6', 'Jakobe: 34', 'Braylen: 13', 'Bryant: 12', 'Bryce: 7', 'Bryce: 3', 'Jakobe: 2', 'Jakobe: 3', 'Jakobe: 11', 'Braylen: 16', 'Jakobe: 10', 'Jakobe: 12'),
('7', 'Kamil: 17', 'Braylen: 17', 'Bryant: 6', 'Bryce: 2', 'All: 0', 'Jakobe, Kamil: 1', 'Jakobe: 2', 'Kamil: 7', 'Jakobe: 15', 'Bryce: 4', 'Jakobe: 11'),
('8', 'Bryce: 25', 'Braylen: 17', 'Bryant: 7', 'Bryce, Braylen: 2', 'Braylen: 2', 'Bryant: 2', 'Bryce: 4', 'Bryce: 9', 'Bryce: 12', 'Bryce: 7', 'Bryce: 9'),
('9', 'Jakobe: 25', 'Braylen: 7', 'Bryant: 6', 'Jakobe: 1', 'All: 0', 'Bryant, Kamil, Braylen: 1', 'Bryant: 2', 'Jakobe: 11', 'Jakobe: 20', 'Jakobe: 3', 'Jakobe: 4'),
('10', 'Bryce: 15', 'Braylen: 16', 'Bryant: 4', 'Jakobe, Kamil: 3', 'Bryce: 2', 'Bryce: 3', 'Jakobe: 5', 'Bryant: 5', 'Bryant: 16', 'Bryant, Bryce: 3', 'Bryant: 10'),
('11', 'Bryant: 17', 'Braylen: 21', 'Jakobe: 7', 'Bryant: 3', 'Braylen: 2', 'Kamil, Bryce, Braylen: 1', 'Bryce: 2', 'Bryant: 7', 'Bryant: 14', 'Bryant: 7', 'Bryant: 14'),
('12', 'Jakobe: 21', 'Braylen: 7', 'Jakobe, Braylen: 4', 'Bryce: 3', 'Bryce: 1', 'Bryce: 2', 'Jakobe: 2', 'Jakobe: 7', 'Bryant, Braylen: 11', 'Jakobe: 7', 'Jakobe: 8');

-- Example use case
select gl.Game_ID, ts.Points as teamPoints, gl.Points, gl.Assists, gl.Rebounds, gl.Steals
from gameLeaders as gl
	join teamStats as ts 
	on gl.Game_ID = ts.Game_ID