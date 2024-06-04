select *
from gameLeaders

-- Need to know if we won or lost in the game to see what helps the team win. Need to add another column with result win/loss.

ALTER TABLE gameLeaders
ADD Result varchar(255);

-- Add result data for each row

INSERT INTO gameLeaders (Result)
VALUES
('Win: 49'),
('Win: 26'),
('Loss: 46'),
('Win: 27'),
('Loss: 6'),
('Win: 51'),
('Win: 3'),
('Loss: 15'),
('Loss: 48'),
('Loss: 37'),
('Win: 19'),
('Loss: 17');

-- Input NULL into new "result" column first so need to delete first values

DELETE FROM gameLeaders WHERE Result is null;

--This deleted all data I had in other columns for the first 12 instead of just all first 12 from the result column where they were null. Everything is null
--except the result column that is displaying correctly now. Pulling data from previous saves. and deleting this table

DROP TABLE gameLeaders;

-- Table is gone, need to recreate the table.

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
	"3pointersAttempted" varchar(255),
	Result varchar(255)
);

INSERT INTO gameLeaders (Game_ID, Points, Rebounds, Assists, Steals, Blocks, Fouls, Turnovers, fieldGoalsMade, fieldGoalsAttempted, "3pointersMade", "3pointersAttempted", Result)
VALUES
('1', 'Bryce: 24', 'Braylen: 19', 'Braylen: 11', 'Kamil: 3', 'Braylen: 3', 'Kamil: 3', 'Dario, Jakobe: 1', 'Bryce: 10', 'Jakobe: 17', 'Jakobe: 6', 'Jakobe: 14', 'Win: 49'),
('2', 'Jakobe: 21', 'Bryce: 12', 'Dario, Kamil and Jakobe: 5', 'Dario, Jakobe, Braylen, Bryce: 1', 'Bryce: 3', 'Kamil: 2', 'Dario & Braylen: 2', 'Jakobe: 8', 'Bryce: 12', 'Jakobe: 5', 'Jakobe & Bryce: 7', 'Win: 26'),
('3', 'Jakobe: 18', 'Braylen: 7', 'Dario: 5', 'Bryce: 2', 'All: 0', 'Dario: 1', 'Jakobe: 3', 'Bryce: 7', 'Bryce: 16', 'Jakobe, Kamil, Bryce: 3', 'Bryce: 9', 'Loss: 46'),
('4', 'Jakobe: 19', 'Bryce: 14', 'Bryce: 8', 'Dario: 1', 'Braylen: 1', 'Dario, Kamil, Bryce: 1', 'Dario: 2', 'Jakobe, Kamil: 7', 'Jakobe: 13', 'Jakobe: 3', 'Jakobe: 5', 'Win: 27'),
('5', 'Braylen: 12', 'Braylen: 15', 'Braylen: 5', 'Dario, Jakobe, Braylen: 1', 'All: 0', 'Braylen: 2', 'Jakobe: 4', 'Braylen: 5', 'Jakobe: 13', 'Dario, Kamil, Bryce: 1', 'Jakobe: 8', 'Loss: 6'),
('6', 'Jakobe: 34', 'Braylen: 13', 'Bryant: 12', 'Bryce: 7', 'Bryce: 3', 'Jakobe: 2', 'Jakobe: 3', 'Jakobe: 11', 'Braylen: 16', 'Jakobe: 10', 'Jakobe: 12', 'Win: 51'),
('7', 'Kamil: 17', 'Braylen: 17', 'Bryant: 6', 'Bryce: 2', 'All: 0', 'Jakobe, Kamil: 1', 'Jakobe: 2', 'Kamil: 7', 'Jakobe: 15', 'Bryce: 4', 'Jakobe: 11', 'Win: 3'),
('8', 'Bryce: 25', 'Braylen: 17', 'Bryant: 7', 'Bryce, Braylen: 2', 'Braylen: 2', 'Bryant: 2', 'Bryce: 4', 'Bryce: 9', 'Bryce: 12', 'Bryce: 7', 'Bryce: 9', 'Loss: 15'),
('9', 'Jakobe: 25', 'Braylen: 7', 'Bryant: 6', 'Jakobe: 1', 'All: 0', 'Bryant, Kamil, Braylen: 1', 'Bryant: 2', 'Jakobe: 11', 'Jakobe: 20', 'Jakobe: 3', 'Jakobe: 4', 'Loss: 48'),
('10', 'Bryce: 15', 'Braylen: 16', 'Bryant: 4', 'Jakobe, Kamil: 3', 'Bryce: 2', 'Bryce: 3', 'Jakobe: 5', 'Bryant: 5', 'Bryant: 16', 'Bryant, Bryce: 3', 'Bryant: 10', 'Loss: 37'),
('11', 'Bryant: 17', 'Braylen: 21', 'Jakobe: 7', 'Bryant: 3', 'Braylen: 2', 'Kamil, Bryce, Braylen: 1', 'Bryce: 2', 'Bryant: 7', 'Bryant: 14', 'Bryant: 7', 'Bryant: 14', 'Win: 19'),
('12', 'Jakobe: 21', 'Braylen: 7', 'Jakobe, Braylen: 4', 'Bryce: 3', 'Bryce: 1', 'Bryce: 2', 'Jakobe: 2', 'Jakobe: 7', 'Bryant, Braylen: 11', 'Jakobe: 7', 'Jakobe: 8', 'Loss: 17');

-- Fixed and accurate