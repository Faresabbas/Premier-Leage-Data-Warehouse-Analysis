--CREATE Database PLDataWareHouse;

--USE PLDataWareHouse;

/*CREATE TABLE Teams (
    team_name NVARCHAR(100) PRIMARY KEY
);*/

/*CREATE TABLE Players (
	player_name nvarchar(100) PRIMARY KEY,
	nation nvarchar(50),
	position nvarchar(50),
	team_name nvarchar(100),
	age INT
);*/

/*CREATE TABLE Fixtures (
    week INT,
    day NVARCHAR(20),
    match_date DATE,
    match_time TIME,
    home_team NVARCHAR(100),
    away_team NVARCHAR(100),
    home_score INT,
    away_score INT,
    attendance INT,
    venue NVARCHAR(100),
    referee NVARCHAR(100),
    PRIMARY KEY (week, home_team, away_team),
    FOREIGN KEY (home_team) REFERENCES Teams(team_name),
    FOREIGN KEY (away_team) REFERENCES Teams(team_name)
);*/

/*CREATE TABLE Player_Stats (
    player_name NVARCHAR(100) PRIMARY KEY,
    played INT,
    starts INT,
    minutes INT,
    goals INT,
    assists INT,
    yellow INT,
    red INT,
    expected_goals FLOAT,
    expected_assists FLOAT,
    FOREIGN KEY (player_name) REFERENCES Players(player_name)
);


CREATE TABLE Player_Possession_Stats (
    player_name NVARCHAR(100) PRIMARY KEY,
    touches INT,
    deffensive_touches INT,
    middle_touches INT,
    attacking_touches INT,
    carries INT,
    total_distance_carried INT,
    FOREIGN KEY (player_name) REFERENCES Players(player_name)
);

CREATE TABLE Player_Salaries (
    player_name NVARCHAR(100) PRIMARY KEY,
    weekly INT,
    annual INT,
    FOREIGN KEY (player_name) REFERENCES Players(player_name)
);*/


/*CREATE TABLE Team_Stats (
    team_name NVARCHAR(100) PRIMARY KEY,
    players INT,
    age FLOAT,
    possession FLOAT,
    goals INT,
    assists INT,
    expected_goals FLOAT,
    expected_assists FLOAT,
    FOREIGN KEY (team_name) REFERENCES Teams(team_name)
);

CREATE TABLE Team_Possession_Stats (
    team_name NVARCHAR(100) PRIMARY KEY,
    possession FLOAT,
    touches INT,
    deffensive_touches INT,
    middle_touches INT,
    attacking_touches INT,
    carries INT,
    total_distance_carried INT,
    FOREIGN KEY (team_name) REFERENCES Teams(team_name)
);

CREATE TABLE Team_Salaries (
    team_name NVARCHAR(100) PRIMARY KEY,
    players INT,
    weekly INT,
    annual INT,
    FOREIGN KEY (team_name) REFERENCES Teams(team_name)
);

CREATE TABLE Standings (
    team_name NVARCHAR(100) PRIMARY KEY,
    rank INT,
    win INT,
    loss INT,
    draw INT,
    goals INT,
    conceded INT,
    points INT,
    FOREIGN KEY (team_name) REFERENCES Teams(team_name)
);
*/