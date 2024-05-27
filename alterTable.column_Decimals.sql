-- transform percentages from Excel to readable decimals in ssms

-- Editing team stats table and columns with percentages/decimals
select *
from teamStats

alter table teamStats
alter column "3pointPercentage" decimal(3,2)

alter table teamStats
alter column freeThrowPercentage decimal(3,2)

alter table teamStats
alter column fieldGoalPercentage decimal(3,2)

-- Editing player stats table and columns with percentages/decimals
select *
from playerStats

alter table playerStats
alter column fieldGoalPercentage decimal(3,2)

alter table playerStats
alter column "3pointPercentage" decimal(3,2)

-- Editing build stats table and columns with percentages/decimals
select *
from buildStats

alter table buildStats
alter column "3pointPercentage" decimal(3,2)

alter table buildStats
alter column fieldGoalPercentage decimal(3,2)