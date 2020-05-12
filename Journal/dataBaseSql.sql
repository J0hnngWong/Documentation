#建表
CREATE TABLE IF NOT EXISTS 'userData' ('id' text NOT NULL PRIMARY KEY, 'title' text, 'detail' text, 'image_name' text, 'create_date' real, 'last_update_date' real);

#插入数据
INSERT INTO 'userData' ('id', 'title', 'detail', 'image_name', 'create_date', 'last_update_date') VALUES ('1', 'title1', 'detail1', 'image1', 1589283024.441, 1589284061.441);