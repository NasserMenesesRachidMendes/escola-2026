create table user (
    id bigint not null auto_increment,
    created_at timestamp default current_timestamp,
    updated_at timestamp default current_timestamp on update current_timestamp,
    email varchar(255),
    name varchar(255),
    password varchar(255),
    phone varchar(255),
    primary key (id)
);

insert into user (name, phone, email, password, created_at)
values (
    'Luis',
    '3455-2748',
    'luisfernandoanunes@gmail.com',
    '$2a$10$0q/uNhk55L0P4SQ.GiMvWugVzi/XzR/Ub4DjpTE4/HhStKo67xUfW',
    now()
);

insert into user (name, phone, email, password, created_at)
values (
    'Claudio',
    '3425-1734',
    'claudio@gmail.com',
    '$2a$10$0q/uNhk55L0P4SQ.GiMvWugVzi/XzR/Ub4DjpTE4/HhStKo67xUfW',
    now()
);

create table perfil (
    id bigint not null auto_increment,
    name varchar(255),
    primary key (id)
);

insert into perfil (name)
values ('ROLE_TEACHER');

insert into perfil (name)
values ('ROLE_STUDENT');

insert into perfil (name)
values ('ROLE_ADIMINISTRATOR');


create table user_perfil (
    id_perfil bigint not null,
    id_user bigint not null,
    primary key (id_perfil, id_user)
);

insert into user_perfil(id_user, id_perfil)
values (1, 1);

insert into user_perfil(id_user, id_perfil)
values (2, 2);

insert into user_perfil(id_user, id_perfil)
values (2, 3);