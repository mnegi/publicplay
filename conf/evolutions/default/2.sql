# --- create default data

# --- !Ups
insert into category (name) values ('category1');
insert into category (name) values ('category2');
insert into category (name) values ('category3');
insert into category (name) values ('category4');
insert into category (name) values ('category5');

insert into security_role (key, name) values (-1, 'admin');

insert into user (key, original_key, created_on, updated_on, login_count, last_login, first_name, last_name, email, profile_image_url, provider, revision, status) values ('new_user',           'newKey',    '2012-01-01', '2012-01-01', 1, '2012-01-01', 'New',   'User',  'newbar@test.com',      'http://static.ak.fbcdn.net/rsrc.php/v2/yL/r/HsTZSDw4avx.gif', 'somewhere', 1, 'N');
insert into user (key, original_key, created_on, updated_on, login_count, last_login, first_name, last_name, email, profile_image_url, provider, revision, status) values ('testuser',           'testKey',   '2012-01-01', '2012-01-01', 1, '2012-01-01', 'Foo',   'Bar',   'foobar@test.com',      'http://static.ak.fbcdn.net/rsrc.php/v2/yL/r/HsTZSDw4avx.gif', 'somewhere', 1, 'S');
insert into user (key, original_key, created_on, updated_on, login_count, last_login, first_name, last_name, email, profile_image_url, provider, revision, status) values ('facebook::807220003','807220003', '2012-10-11', '2012-10-11', 1, '2012-10-11', 'Hakan', 'Dilek', 'hakan@mailinator.com', 'http://graph.facebook.com/807220003/picture',                 'facebook',  1, 'A');

insert into user_security_role (user_key, security_role_key) values ('facebook::807220003', -1);

insert into post (key, category, rating, created_on, updated_on, created_by, updated_by, title, content) values (-11, 'category1', 345, '2012-01-05 00:01:00', '2012-05-01 00:01:00', 'testuser', 'testuser', 'some post', 'and  content of it');
insert into post (key, category, rating, created_on, updated_on, created_by, updated_by, title, content) values (-12, 'category1', 123, '2012-01-04 00:02:00', '2012-04-01 00:02:00', 'testuser', 'testuser', 'another post', 'and another content');
insert into post (key, category, rating, created_on, updated_on, created_by, title, content)             values (-13, 'category1',  23, '2012-01-03 00:03:00', '2012-03-01 00:03:00', 'testuser', 'yet another post', 'and yet another comment');
insert into post (key, category, rating, created_on, updated_on, created_by, title, content)             values (-14, 'category2',   0, '2012-01-02 00:04:00', '2012-02-01 00:04:00', 'testuser', 'dummy post', 'some comment on dummy stuff');
insert into post (key, category, rating, created_on, updated_on, created_by, title, content)             values (-15, 'category2', -42, '2012-01-01 00:05:00', '2012-01-01 00:05:00', 'testuser', 'wow it''s happening', 'yeah, sure!');
insert into post (key, category, rating, created_on, updated_on, created_by, title, content)             values (-16, 'category2', 142, '2012-12-10 00:05:00', '2012-12-10 00:05:00', 'testuser', 'this is supposed to be a really long post in order to test the line sizes in posts', 'and that should be a really long content of the same post to see how it fits on the screen!');
insert into post (key, category, rating, created_on, updated_on, created_by, title, content)             values (-17, 'category3', 420, '2012-12-10 00:05:00', '2012-12-10 00:05:00', 'testuser', 'this is supposed to be an another long post in order to test the line sizes in posts', 'and that should be another really long content of the same post to see how it fits on the screen!');
insert into post (key, category, rating, created_on, updated_on, created_by, title, content)             values (-18, 'category2',   0, '2012-01-02 00:04:00', '2012-02-01 00:04:00', 'testuser', 'another dummy post', 'some comment on dummy stuff');
insert into post (key, category, rating, created_on, updated_on, created_by, title, content)             values (-19, 'category4',   0, '2012-01-02 00:04:00', '2012-02-01 00:04:00', 'testuser', 'yet dummy post', 'some comment on dummy stuff');
insert into post (key, category, rating, created_on, updated_on, created_by, title, content)             values (-20, 'category2',   0, '2012-01-02 00:04:00', '2012-02-01 00:04:00', 'testuser', 'this is a dummy post', 'some comment on dummy stuff');
insert into post (key, category, rating, created_on, updated_on, created_by, title, content)             values (-21, 'category1',   0, '2012-01-02 00:04:00', '2012-02-01 00:04:00', 'testuser', 'this is another dummy post', 'some comment on dummy stuff');

insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-111, -11, '2012-01-01 00:01:00', '2012-01-01 00:01:00', 'testuser', 'some comment');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-112, -11, '2012-01-02 00:01:00', '2012-01-02 00:01:00', 'testuser', 'another comment');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-113, -11, '2012-01-03 00:01:00', '2012-01-03 00:01:00', 'testuser', 'yet another comment');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-114, -11, '2012-01-04 00:01:00', '2012-01-04 00:01:00', 'testuser', '...and a comment');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-121, -12, '2012-01-05 00:01:00', '2012-01-05 00:01:00', 'testuser', 'comment 1');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-122, -12, '2012-01-01 00:01:00', '2012-01-01 00:01:00', 'testuser', 'comment 2');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-123, -12, '2012-01-02 00:01:00', '2012-01-02 00:01:00', 'testuser', 'comment 3');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-124, -12, '2012-01-03 00:01:00', '2012-01-03 00:01:00', 'testuser', 'comment 4');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-125, -12, '2012-01-04 00:01:00', '2012-01-04 00:01:00', 'testuser', 'comment 5');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-126, -12, '2012-01-05 00:01:00', '2012-01-05 00:01:00', 'testuser', 'comment 6');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-127, -12, '2012-01-01 00:01:00', '2012-01-01 00:01:00', 'testuser', 'comment 7');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-128, -12, '2012-01-02 00:01:00', '2012-01-02 00:01:00', 'testuser', 'comment 8');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-131, -13, '2012-01-03 00:01:00', '2012-01-03 00:01:00', 'testuser', 'comment 1');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-132, -13, '2012-01-04 00:01:00', '2012-01-04 00:01:00', 'testuser', 'comment 2');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-133, -13, '2012-01-05 00:01:00', '2012-01-05 00:01:00', 'testuser', 'comment 3');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-141, -14, '2012-01-01 00:01:00', '2012-01-01 00:01:00', 'testuser', 'comment 1');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-142, -14, '2012-01-02 00:01:00', '2012-01-02 00:01:00', 'testuser', 'comment 2');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-143, -14, '2012-01-03 00:01:00', '2012-01-03 00:01:00', 'testuser', 'comment 3');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-151, -15, '2012-01-04 00:01:00', '2012-01-04 00:01:00', 'testuser', 'comment 1');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-152, -15, '2012-01-05 00:01:00', '2012-01-05 00:01:00', 'testuser', 'comment 2');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-153, -15, '2012-01-01 00:01:00', '2012-01-01 00:01:00', 'testuser', 'comment 3');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-161, -16, '2012-11-01 00:01:00', '2012-11-01 00:01:00', 'testuser', 'comment 1');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-162, -16, '2012-11-02 00:01:00', '2012-11-02 00:01:00', 'testuser', 'comment 2');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-163, -16, '2012-11-03 00:01:00', '2012-11-03 00:01:00', 'testuser', 'comment 3');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-171, -17, '2012-11-04 00:01:00', '2012-11-04 00:01:00', 'testuser', 'comment 1');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-172, -17, '2012-11-05 00:01:00', '2012-11-05 00:01:00', 'testuser', 'comment 2');
insert into comment (key, postKey, created_on, updated_on, created_by, content) values (-173, -17, '2012-11-01 00:01:00', '2012-11-01 00:01:00', 'testuser', 'comment 3');

# --- !Downs

delete from post where key = -11;
delete from post where key = -12;
delete from post where key = -13;
delete from post where key = -14;
delete from post where key = -15;
delete from comment where key = -111;
delete from comment where key = -112;
delete from comment where key = -113;
delete from comment where key = -114;
delete from comment where key = -121;
delete from comment where key = -122;
delete from comment where key = -123;
delete from comment where key = -124;
delete from comment where key = -125;
delete from comment where key = -126;
delete from comment where key = -127;
delete from comment where key = -128;
delete from comment where key = -131;
delete from comment where key = -132;
delete from comment where key = -133;
delete from comment where key = -141;
delete from comment where key = -142;
delete from comment where key = -143;
delete from comment where key = -151;
delete from comment where key = -152;
delete from comment where key = -153;
delete from user_security_role where user_key = 'testuser';
delete from user_security_role where user_key = 'facebook::807220003';
delete from user where key = 'testuser';
delete from user where key = 'facebook::807220003';
delete from security_role where name = 'admin';
delete from category where name = 'category1';
delete from category where name = 'category2';
delete from category where name = 'category3';
delete from category where name = 'category4';
delete from category where name = 'category5';
