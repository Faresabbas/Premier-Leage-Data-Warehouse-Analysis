/*insert into Teams (team_name)
select distinct team as team_name from team_stats_fake
where team not in (select team_name from Teams)*/


/*INSERT INTO Team_Stats (team_name, players, age, possession, goals, assists, expected_goals, expected_assists)
SELECT 
    team AS team_name,
    Players,
    Age,
    possession,
    goals,
    assists,
    expected_goals,
    expected_assists
FROM team_stats_fake;*/


/*INSERT INTO Team_Possession_Stats(team_name, possession, touches, deffensive_touches, middle_touches, attacking_touches, carries, total_distance_carried)
SELECT 
    team AS team_name,
    possession,
    touches,
    deffensive_touches,
    middle_touches,
    attacking_touches,
    carries,
    total_distance_carried
FROM team_possession_stats_fake;*/



/*INSERT INTO Team_Salaries (team_name, players, weekly, annual)
SELECT
    team AS team_name,
    Players,
    Weekly,
    Annual
FROM team_salary_fake;*/



/*INSERT INTO Standings (team_name, rank, win, loss, draw, goals, conceded, points)
SELECT
    team AS team_name,
    rank,
    win,
    loss,
    draw,
    goals,
    conceded,
    points
FROM standings_fake;*/



/*WITH RankedPlayers AS (
    SELECT 
        name AS player_name,
        nation,
        position,
        team AS team_name,
        age,
        ROW_NUMBER() OVER (PARTITION BY name ORDER BY (SELECT NULL)) AS rn
    FROM player_stats_fake
)
INSERT INTO Players (player_name, nation, position, team_name, age)
SELECT 
    player_name,
    nation,
    position,
    team_name,
    age
FROM RankedPlayers
WHERE rn = 1 -- ???? ??? ????? ???
AND player_name NOT IN (SELECT player_name FROM Players);*/


/*WITH RankedPlayers AS (
    SELECT 
        name AS player_name,
        played,
        starts,
        minutes,
        goals,
        assists,
        yellow,
        red,
        expected_goals,
        ROW_NUMBER() OVER (PARTITION BY name ORDER BY (SELECT NULL)) AS rn
    FROM player_stats_fake
)

INSERT INTO Player_Stats (player_name, played, starts, minutes, goals, assists, yellow, red, expected_goals)
SELECT
    player_name,
    played,
    starts,
    minutes,
    goals,
    assists,
    yellow,
    red,
    expected_goals
FROM RankedPlayers
WHERE rn = 1 -- Take only the first occurrence
AND player_name NOT IN (SELECT player_name FROM Player_Stats);*/


/*WITH RankedPlayers AS (
    SELECT 
        name AS player_name,  -- ??? ???? ?????? ??? ???? ??????
        touches,
        deffensive_touches,
        middle_touches,
        attacking_touches,
        carries,
        total_distance_carried,
        ROW_NUMBER() OVER (PARTITION BY name ORDER BY (SELECT NULL)) AS rn
    FROM player_possession_stats_fake
)
INSERT INTO Player_Possession_Stats (player_name, touches, deffensive_touches, middle_touches, attacking_touches, carries, total_distance_carried)
SELECT
    player_name,  
    touches,
    deffensive_touches,
    middle_touches,
    attacking_touches,
    carries,
    total_distance_carried
FROM RankedPlayers 
WHERE rn = 1;  */


/*INSERT INTO Player_Salaries (player_name, weekly, annual)
SELECT
    ps.Player AS player_name,
    ps.Weekly,
    ps.Annual
FROM player_salaries_fake ps
WHERE EXISTS (
    SELECT 1 
    FROM dbo.Players p 
    WHERE p.player_name = ps.Player
);*/

INSERT INTO Fixtures (week, day, match_date, match_time, home_team, away_team, home_score, away_score, attendance, venue, referee)
SELECT
    week,
    Day,
    CAST(Date AS DATE) AS match_date,
    CAST(Time AS TIME) AS match_time,
    Home AS home_team,
    Away AS away_team,
    HomeScore,
    AwayScore,
    Attendance,
    Venue,
    Referee
FROM fixtures_fake;
