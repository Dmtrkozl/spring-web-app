insert into usr(id, username, password, active)
values (2, 'user', '123', true);

insert into user_role (user_id, roles)
values (2, 'ADMIN');