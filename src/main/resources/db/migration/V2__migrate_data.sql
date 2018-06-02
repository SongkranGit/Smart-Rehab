-- *********** Migrate User
INSERT INTO User VALUES (1 , 'bsongkran','liver167', 'bsongkran@hotmai.com', 'sdfasdfasdfasdfasdf' , 1, '2012-01-01' , '2012-09-01' );


-- *********** Migrate Role
INSERT INTO Role VALUES (1, 'Admin' , 'Administrator' , NOW(),NOW());
INSERT INTO Role VALUES (2, 'User' , 'User', NOW(),NOW());
INSERT INTO Role VALUES (3, 'Head' , 'Head of Department', NOW(),NOW());

-- Migrate Permission
INSERT INTO Permission VALUES(1, 'Add' , 'Can add data' , NOW());
INSERT INTO Permission VALUES(2, 'Update' , 'Can update data' , NOW());
INSERT INTO Permission VALUES(3, 'Delete' , 'Can delete data' , NOW());

-- Migrate Role Permission
INSERT INTO Role_Permission VALUES (1 , 1);
INSERT INTO Role_Permission VALUES (1 , 2);
INSERT INTO Role_Permission VALUES (1 , 3);
INSERT INTO Role_Permission VALUES (2 , 1);
INSERT INTO Role_Permission VALUES (2 , 2);
