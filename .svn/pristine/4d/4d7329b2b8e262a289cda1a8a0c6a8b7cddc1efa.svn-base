/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2014-9-27 10:43:24                           */
/*==============================================================*/


drop table if exists about;

drop table if exists blog_log_info;

drop table if exists blogclass_info;

drop table if exists friends_info;

drop table if exists lable;

drop table if exists msg_info;

drop table if exists photo_info;

drop table if exists photo_list;

drop table if exists school_info;

drop table if exists sex_info;

drop table if exists user_info;

/*==============================================================*/
/* Table: about                                                 */
/*==============================================================*/
create table about
(
   aboutId              int not null,
   content              varchar(2000),
   primary key (aboutId)
);

/*==============================================================*/
/* Table: blog_log_info                                         */
/*==============================================================*/
create table blog_log_info
(
   blogId               int not null,
   blogClassId          int,
   userID               int,
   lableId              int,
   blogMsg              varchar(2000),
   blogTime             date,
   blogTitle            varchar(200),
   blogLable            varchar(50),
   primary key (blogId)
);

/*==============================================================*/
/* Table: blogclass_info                                        */
/*==============================================================*/
create table blogclass_info
(
   blogClassId          int not null,
   blogClassName        varchar(20),
   primary key (blogClassId)
);

/*==============================================================*/
/* Table: friends_info                                          */
/*==============================================================*/
create table friends_info
(
   friendId             int not null,
   userID               int,
   lastTime             date,
   primary key (friendId)
);

/*==============================================================*/
/* Table: lable                                                 */
/*==============================================================*/
create table lable
(
   lableId              int not null,
   lableName            varchar(50) not null,
   primary key (lableId)
);

/*==============================================================*/
/* Table: msg_info                                              */
/*==============================================================*/
create table msg_info
(
   msgId                int not null,
   friendId             int,
   msgContent           varchar(500),
   msgTime              date,
   primary key (msgId)
);

/*==============================================================*/
/* Table: photo_info                                            */
/*==============================================================*/
create table photo_info
(
   photoId              int not null,
   listId               int,
   photoUrl             varchar(500),
   description          varchar(200),
   uploadTime           datetime,
   primary key (photoId)
);

/*==============================================================*/
/* Table: photo_list                                            */
/*==============================================================*/
create table photo_list
(
   listId               int not null,
   userID               int,
   listName             varchar(50),
   primary key (listId)
);

/*==============================================================*/
/* Table: school_info                                           */
/*==============================================================*/
create table school_info
(
   schoolId             int not null,
   schoolName           varchar(20),
   primary key (schoolId)
);

/*==============================================================*/
/* Table: sex_info                                              */
/*==============================================================*/
create table sex_info
(
   sexId                int not null,
   sexName              varchar(4),
   primary key (sexId)
);

/*==============================================================*/
/* Table: user_info                                             */
/*==============================================================*/
create table user_info
(
   userId               int not null auto_increment,
   schoolId             int,
   sexId                int,
   userName             varchar(20),
   userPass             varchar(20),
   userBir              date,
   problem              varchar(20),
   answer               varchar(20),
   nickName             varchar(20),
   pic                  varchar(100),
   userAdd              varchar(30),
   primary key (userId)
);

alter table blog_log_info add constraint FK_Reference_10 foreign key (blogClassId)
      references blogclass_info (blogClassId) on delete restrict on update restrict;

alter table blog_log_info add constraint FK_Reference_15 foreign key (userID)
      references user_info (userId) on delete restrict on update restrict;

alter table blog_log_info add constraint FK_Reference_16 foreign key (lableId)
      references lable (lableId) on delete restrict on update restrict;

alter table friends_info add constraint FK_Reference_11 foreign key (userID)
      references user_info (userId) on delete restrict on update restrict;

alter table msg_info add constraint FK_Reference_8 foreign key (friendId)
      references friends_info (friendId) on delete restrict on update restrict;

alter table photo_info add constraint FK_Reference_14 foreign key (listId)
      references photo_list (listId) on delete restrict on update restrict;

alter table photo_list add constraint FK_Reference_9 foreign key (userID)
      references user_info (userId) on delete restrict on update restrict;

alter table user_info add constraint FK_Reference_12 foreign key (schoolId)
      references school_info (schoolId) on delete restrict on update restrict;

alter table user_info add constraint FK_Reference_13 foreign key (sexId)
      references sex_info (sexId) on delete restrict on update restrict;

