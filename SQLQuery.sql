--create table Posts(
--	Id int primary key identity,
--	Content nvarchar(MAX),
--	UserId int references Users(Id),
--	CreatedAt datetime,
--	UpdatedAt datetime
--)

--create table PostLikes(
--	Id int primary key identity,
--	UserId int references Users(Id),
--	PostId int references Posts(Id)
--)

--select * from Users
--select * from Posts
--select * from PostLikes

alter proc usp_GetPostLikesCount @postId int = NULL, @countLikes int OUT
as
	select @countLikes = COUNT(UserId)
	from PostLikes
	where PostId = isnull(@postId, PostId)

DECLARE @countOfLikes_PostNo1 int

exec usp_GetPostLikesCount @postId = 5, @countLikes = @countOfLikes_PostNo1 OUT

select @countOfLikes_PostNo1

--create function Qedim(@postId int)
--returns int
--as
--begin
--	Declare @result int;
	
--	select @result = COUNT(UserId)
--	from PostLikes
--	where PostId = isnull(@postId, PostId)

--	return @result
--end

select dbo.Qedim(1)








