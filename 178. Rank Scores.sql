SELECT s.Score as Score,
(@i:=@i+ (@pre <> (@pre := Score))) as Rank
FROM Scores s, (select @i:=0, @pre:=-1) AS init
ORDER BY s.Score DESC;