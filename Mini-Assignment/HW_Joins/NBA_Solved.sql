
SELECT 
	players.id, 
	players.player, 
	players.height, 
	players.weight, 
	players.college, 
	players.born, 
	seasons_stats.position,
	seasons_stats.tm
FROM seasons_stats
INNER JOIN players ON
players.id =seasons_stats.player_id;



SELECT 
	players.college,
	seasons_stats.player_id, 
	seasons_stats.year,
	seasons_stats.position,
	seasons_stats.two_point_percentage,
	seasons_stats.fg_percentage,
	seasons_stats.ft_percentage,
	seasons_stats.ts_percentage
FROM players
INNER JOIN seasons_stats ON
seasons_stats.player_id = players.id;