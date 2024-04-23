--Group 9: MID TERM Test - CSDL_ITS302D01
/* Members:
Huỳnh Văn Chí An - 030239230001
Phù Chi Bằng - 030239230019
Phan Hoàng Phúc - 030239230190

Github: github.com/anphongdoa5
*/

-- create datebase BAODIENTU
go
USE master
CREATE DATABASE BAODIENTU
go
USE BAODIENTU


-- Create tables
CREATE TABLE users(
    userID INT PRIMARY KEY,
    regdate DATETIME, 
    username VARCHAR(255) UNIQUE,
    userpassword VARCHAR(255),
    fullname NVARCHAR(255),
    DoB DATETIME,
    email VARCHAR(255)
)

CREATE TABLE readers( 
    readerID INT PRIMARY KEY,
    regdate DATETIME, 
    username VARCHAR(255) UNIQUE,
    userpassword VARCHAR(255) NOT NULL,
    fullname NVARCHAR(255) NOT NULL,
    DoB DATETIME,
    email VARCHAR(255)
)


CREATE TABLE authors(
    authorID INT PRIMARY KEY,
    regdate DATETIME, 
    username VARCHAR(255) UNIQUE,
    userpassword VARCHAR(255) NOT NULL,
    fullname NVARCHAR(255) NOT NULL,
    DoB DATETIME,
    email VARCHAR(255),
    N_article int NOT NULL
)

CREATE TABLE moderators(
    modID INT PRIMARY KEY,
    regdate DATETIME, 
    username VARCHAR(255) UNIQUE,
    userpassword VARCHAR(255) NOT NULL,
    fullname NVARCHAR(255) NOT NULL,
    DoB DATETIME,
    email VARCHAR(255)
)

CREATE TABLE post(
    postID INT PRIMARY KEY,
    publishdate DATETIME, 
    categories NVARCHAR(255),
    title NVARCHAR(MAX),
    content NVARCHAR(MAX),
    summarized NVARCHAR(MAX),
    assets IMAGE
)


-- Adding datas to users table & preview table
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10001, '2024-03-04', 'huynhan1506', 'anphongdoa5', N'Huỳnh Văn Chí An', '2005-06-15', 'test123@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10002, '2024-02-12', 'binhduong2111', 'duongdeptrai', N'Nguyễn Đức Bình Dương', '2005-11-21', 'test345@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10003, '2023-06-15', 'phubang1123', 'bangbangbang123', N'Phù Chi Bằng', '2005-05-13', 'test567@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10004, '2024-01-22', 'hoangphuc6868', 'phucdu', N'Hoàng Phúc', '2005-03-11', 'test678@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10005, '2024-02-14', 'tibudangkhoapro', 'sansixtee', N'Thân Hoàng Đăng Khoa', '2007-09-23', 'test789@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10006, '2024-03-03', 'bancech123', 'sheriffreaverissaks', N'Nguyễn Ngọc Trâm', '2005-07-24', 'test890@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10007, '2024-01-02', 'tubuonmethuot47', 'ngokstu', N'Nguyễn Ngọc Tú', '2005-01-31', 'test012@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10008, '2023-11-04', 'khangbeo05', 'kevintran', N'Trần Trọng Khang', '2005-03-15', 'test234@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10009, '2024-09-04', 'mautaiviboo', 'taisaurieng', N'Nguyễn Mậu Tấn Tài', '2005-10-19', 'test456@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10010, '2024-03-04', 'maohie02', 'phubaquan7', N'Văn Thanh Xuân', '2000-11-21', 'test567@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10011, '2024-01-25', 'uyn24', 'duongnyny', N'Tú Uyên', '2000-05-25', 'test678@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10012, '2023-07-28', 'nhokvjp97', 'taixaitech', N'Hình Hoàng Thiên Tài', '1997-06-20', 'test1234@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10013, '2023-11-28', 'bsngoc73', 'ngochuynh123', N'Huỳnh Văn Ngọc', '1973-06-18', 'test2345@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10014, '2024-02-08', 'clrdthanh', 'clrdstudio', N'Nguyễn Hữu Thành', '1993-01-30', 'test2334@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10015, '2023-01-19', 'thanhphu03', 'zijistudio03', N'Nguyễn Thanh Phú', '2003-06-10', 'test2234@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10016, '2023-12-05', 'besua03', 'ttth03', N'Lưu Minh Hoàng', '2003-07-21', 'test1234@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10017, '2024-04-29', 'ryliea97', 'technoht97', N'Trần Trọng Hiếu', '1997-02-23', 'test1254@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10018, '2023-11-01', 'larry01', 'itslarry', N'Lê Văn Lâm', '2001-06-20', 'test7234@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10019, '2023-03-02', 'quandoan03', 'akibinz03', N'Nguyễn Đoàn Minh Quân', '2003-08-20', 'test7934@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10020, '2022-01-04', 'camnguyen95', 'camlord1995', N'Nguyễn Viết Thành', '1995-05-06', 'test12334@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10021, '2022-10-21', 'devnguyen99', 'devzxje1999', N'Nguyễn Minh Hoàng', '1999-03-27', 'test23145@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10022, '2022-08-08', 'hoainhutruongthi75', 'hoainhu3004', N'Trương Thị Hoài Như', '1975-04-30', 'test24334@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10023, '2023-04-22', 'ngoclanlove97', 'page1997', N'Huỳnh Thị Thiên Trang', '1997-01-07', 'test22314@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10024, '2023-06-15', 'ayanepro', 'hoangthien99', N'Nguyễn Hoàng Thiên', '1999-02-09', 'test12634@gmail.com')
INSERT INTO users(userID, regdate, username, userpassword, fullname, DoB, email) VALUES (10025, '2022-12-14', 'thanhpetro', 'thangthanh71', N'Nguyễn Thắng Thành', '1971-04-20', 'test12549@gmail.com')



-- Adding datas to readers table 
INSERT INTO readers(readerID, regdate, username, userpassword, fullname, DoB, email) VALUES (10001, '2024-03-04', 'huynhan1506', 'anphongdoa5', N'Huỳnh Văn Chí An', '2005-06-15', 'test123@gmail.com')
INSERT INTO readers(readerID, regdate, username, userpassword, fullname, DoB, email) VALUES (10002, '2024-02-12', 'binhduong2111', 'duongdeptrai', N'Nguyễn Đức Bình Dương', '2005-11-21', 'test345@gmail.com')
INSERT INTO readers(readerID, regdate, username, userpassword, fullname, DoB, email) VALUES (10003, '2023-06-15', 'phubang1123', 'bangbangbang123', N'Phù Chi Bằng', '2005-05-13', 'test567@gmail.com')
INSERT INTO readers(readerID, regdate, username, userpassword, fullname, DoB, email) VALUES (10004, '2024-01-22', 'hoangphuc6868', 'phucdu', N'Hoàng Phúc', '2005-03-11', 'test678@gmail.com')
INSERT INTO readers(readerID, regdate, username, userpassword, fullname, DoB, email) VALUES (10005, '2024-02-14', 'tibudangkhoapro', 'sansixtee', N'Thân Hoàng Đăng Khoa', '2007-09-23', 'test789@gmail.com')
INSERT INTO readers(readerID, regdate, username, userpassword, fullname, DoB, email) VALUES (10006, '2024-03-03', 'bancech123', 'sheriffreaverissaks', N'Nguyễn Ngọc Trâm', '2005-07-24', 'test890@gmail.com')
INSERT INTO readers(readerID, regdate, username, userpassword, fullname, DoB, email) VALUES (10007, '2024-01-02', 'tubuonmethuot47', 'ngokstu', N'Nguyễn Ngọc Tú', '2005-01-31', 'test012@gmail.com')
INSERT INTO readers(readerID, regdate, username, userpassword, fullname, DoB, email) VALUES (10008, '2023-11-04', 'khangbeo05', 'kevintran', N'Trần Trọng Khang', '2005-03-15', 'test234@gmail.com')
INSERT INTO readers(readerID, regdate, username, userpassword, fullname, DoB, email) VALUES (10009, '2024-09-04', 'mautaiviboo', 'taisaurieng', N'Nguyễn Mậu Tấn Tài', '2005-10-19', 'test456@gmail.com')
INSERT INTO readers(readerID, regdate, username, userpassword, fullname, DoB, email) VALUES (10010, '2024-03-04', 'maohie02', 'phubaquan7', N'Văn Thanh Xuân', '2000-11-21', 'test567@gmail.com')
INSERT INTO readers(readerID, regdate, username, userpassword, fullname, DoB, email) VALUES (10011, '2024-01-25', 'uyn24', 'duongnyny', N'Tú Uyên', '2000-05-25', 'test678@gmail.com')



-- Adding datas to authors table 
INSERT INTO authors(authorID, regdate, username, userpassword, fullname, DoB, email, N_article) VALUES (20001, '2022-07-28', 'nhokvjp97', 'taixaitech', N'Hình Hoàng Thiên Tài', '1997-06-20', 'test1234@gmail.com', 112)
INSERT INTO authors(authorID, regdate, username, userpassword, fullname, DoB, email, N_article) VALUES (20002, '2023-11-28', 'bsngoc73', 'ngochuynh123', N'Huỳnh Văn Ngọc', '1973-06-18', 'test2345@gmail.com', 43)
INSERT INTO authors(authorID, regdate, username, userpassword, fullname, DoB, email, N_article) VALUES (20003, '2024-02-08', 'clrdthanh', 'clrdstudio', N'Nguyễn Hữu Thành', '1993-01-30', 'test2334@gmail.com', 81)
INSERT INTO authors(authorID, regdate, username, userpassword, fullname, DoB, email, N_article) VALUES (20004, '2023-01-19', 'thanhphu03', 'zijistudio03', N'Nguyễn Thanh Phú', '2003-06-10', 'test2234@gmail.com', 59)
INSERT INTO authors(authorID, regdate, username, userpassword, fullname, DoB, email, N_article) VALUES (20005, '2022-12-05', 'besua03', 'ttth03', N'Lưu Minh Hoàng', '2003-07-21', 'test1234@gmail.com', 70)
INSERT INTO authors(authorID, regdate, username, userpassword, fullname, DoB, email, N_article) VALUES (20006, '2024-04-29', 'ryliea97', 'technoht97', N'Trần Trọng Hiếu', '1997-02-23', 'test1254@gmail.com', 99)
INSERT INTO authors(authorID, regdate, username, userpassword, fullname, DoB, email, N_article) VALUES (20007, '2023-11-01', 'larry01', 'itslarry', N'Lê Văn Lâm', '2001-06-20', 'test7234@gmail.com', 6)
INSERT INTO authors(authorID, regdate, username, userpassword, fullname, DoB, email, N_article) VALUES (20008, '2022-03-02', 'quandoan03', 'akibinz03', N'Nguyễn Đoàn Minh Quân', '2003-08-20', 'test7934@gmail.com', 14)



-- Adding datas to moderators table
INSERT INTO moderators(modID, regdate, username, userpassword, fullname, DoB, email) VALUES (30001, '2022-01-04', 'camnguyen95', 'camlord1995', N'Nguyễn Viết Thành', '1995-05-06', 'test12334@gmail.com')
INSERT INTO moderators(modID, regdate, username, userpassword, fullname, DoB, email) VALUES (30002, '2022-10-21', 'devnguyen99', 'devzxje1999', N'Nguyễn Minh Hoàng', '1999-03-27', 'test23145@gmail.com')
INSERT INTO moderators(modID, regdate, username, userpassword, fullname, DoB, email) VALUES (30003, '2022-08-08', 'hoainhutruongthi75', 'hoainhu3004', N'Trương Thị Hoài Như', '1975-04-30', 'test24334@gmail.com')
INSERT INTO moderators(modID, regdate, username, userpassword, fullname, DoB, email) VALUES (30004, '2023-04-22', 'ngoclanlove97', 'page1997', N'Huỳnh Thị Thiên Trang', '1997-01-07', 'test22314@gmail.com')
INSERT INTO moderators(modID, regdate, username, userpassword, fullname, DoB, email) VALUES (30005, '2023-06-15', 'ayanepro', 'hoangthien99', N'Nguyễn Hoàng Thiên', '1999-02-09', 'test12634@gmail.com')
INSERT INTO moderators(modID, regdate, username, userpassword, fullname, DoB, email) VALUES (30006, '2022-12-14', 'thanhpetro', 'thangthanh71', N'Nguyễn Thắng Thành', '1971-04-20', 'test12549@gmail.com')



-- Adding datas to post table
INSERT INTO post(postID, publishdate, categories, title, content, summarized, assets) VALUES (00001, '2024-01-12', N'Công Nghệ', N'iPhone 15 Pro Max vừa được ra mắt', N'Test Content 1', 'Test Sum-content 1', NULL)
INSERT INTO post(postID, publishdate, categories, title, content, summarized, assets) VALUES (00002, '2024-02-16', N'Công Nghệ', N'Samsung S24 Ultra với nhiều tính năng AI', N'Test Content 2', 'Test Sum-content 2', '~/asset/img/samsung.png')
INSERT INTO post(postID, publishdate, categories, title, content, summarized, assets) VALUES (00003, '2024-04-23', N'Ẩm Thực', N'5 nhà hàng Việt vừa được đánh giá sao Michelin', N'Test Content 3', 'Test Sum-content 3', NULL)
INSERT INTO post(postID, publishdate, categories, title, content, summarized, assets) VALUES (00004, '2024-01-12', N'Tin Tức', N'Giám đốc Nvidia kí kết hợp tác sản xuất tại Việt Nam', N'Test Content 4', 'Test Sum-content 4', '~/asset/img/anh4.png')
INSERT INTO post(postID, publishdate, categories, title, content, summarized, assets) VALUES (00005, '2024-02-24', N'Tin Tức', N'Tim Cook vừa đặt chân đến Hà Nội', N'Test Content 111', NULL, '~/asset/img/anh1.png')
INSERT INTO post(postID, publishdate, categories, title, content, summarized, assets) VALUES (00006, '2024-03-21', N'Sức Khỏe', N'Tỉ lệ người trẻ ở Việt Nam bị bệnh tâm lí gia tăng', N'Test Content 1114', 'Test Sum-content 11323', NULL)
INSERT INTO post(postID, publishdate, categories, title, content, summarized, assets) VALUES (00007, '2024-02-15', N'Công Nghệ', N'Huawei Watch GT4 vừa được ra mắt, nhiều nâng cấp đáng kể', N'Test Content 1332', NULL, NULL)
INSERT INTO post(postID, publishdate, categories, title, content, summarized, assets) VALUES (00008, '2024-01-27', N'Chính Trị', N'Tình hình chiến sự giữa Nga và Ukraina ngày càng trở nên căng thẳng', N'Test Content 1', 'Test Sum-content 1', NULL)
INSERT INTO post(postID, publishdate, categories, title, content, summarized, assets) VALUES (00009, '2024-04-14', N'Chính Trị', N'Căng thẳng bùng nổ giữa EU và Nga giữa chiến sự', N'Test Content 1', NULL, NULL)
INSERT INTO post(postID, publishdate, categories, title, content, summarized, assets) VALUES (00010, '2024-01-22', N'Ẩm Thực', N'Những món ăn quen thuộc trong dịp tết sắp tới', N'Test content 2', 'Test Sum-content 1', '~/asset/img/anh2.png')
INSERT INTO post(postID, publishdate, categories, title, content, summarized, assets) VALUES (00011, '2024-02-01', N'Công Nghệ', N'Xe điện đầu tiên của Xiaomi - Xiaomi SU7 gặp nhiều vấn đề trong ngày đầu mở bán', N'Test Content 3', 'Test Sum-content 1', NULL)
INSERT INTO post(postID, publishdate, categories, title, content, summarized, assets) VALUES (00012, '2024-01-22', N'Sức Khỏe', N'Những dấu hiệu nhận biết sớm ung thư', N'Test Content 9', 'Test Sum-content 9', NULL)
INSERT INTO post(postID, publishdate, categories, title, content, summarized, assets) VALUES (00013, '2024-02-01', N'Công Nghệ', N'Siri sẽ hổ trợ giọng nói tiếng Việt trong bản cập nhật IOS18 sắp tới?', N'Test Content 7', 'Test Sum-content 7', '~/asset/img/anh3.png')


-- TABLES PREVIEWING
SELECT * FROM users
SELECT * FROM readers
SELECT * FROM authors
SELECT * FROM moderators
SELECT * FROM post



-- Querying user's information in users table who was born in 2005
SELECT * FROM users
WHERE YEAR(DoB) = 2005


-- Querying user who are over 25 years old
SELECT * FROM users
WHERE YEAR(GETDATE()) - YEAR(DoB) > 25 -- GetDate is the function that getting realtime of system


-- Querying moderator who registering over 1 year
SELECT * FROM moderators
WHERE YEAR(GETDATE()) - YEAR(regdate) > 1


-- Finding the highest/lowest/total/avg number of articles 
SELECT 
    MAX(N_article) as 'Highest quantity',
    MIN(N_article) as 'Lowest quantity',
    SUM(N_article) as 'Total articles',
    AVG(N_article) as 'Average (Article/Author)' 
FROM authors


-- Selecting all articles have "Công Nghệ" category and pushlished on 2024-02-01 
SELECT * FROM post 
WHERE categories = N'Công Nghệ' and publishdate = '2024-02-01'


-- Arranging datas from dbo.post by 'publishdate' attribute to get the latest articles
SELECT * FROM post
ORDER BY publishdate DESC


-- Updating images of the article which has id '00008' in dbo.post
UPDATE post SET assets = '~/image/anh11.png' WHERE postID = 00008
 

-- Deleting article which has id '00002' in dbo.post
DELETE FROM post WHERE postID = 00002


-- Finding the articles have blank summary section
SELECT * FROM post
WHERE summarized is NULL