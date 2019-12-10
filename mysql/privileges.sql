use mysql;
-- 因为mysql版本是5.7，因此新建用户为如下命令：
create user 'chronos'@'%' identified by 'chronos';

update mysql.user set password=password('chronos') where user='chronos';
-- 将docker_mysql数据库的权限授权给创建的docker用户，密码为chronos：
grant all privileges on *.*  to 'chronos'@'%';
-- 这一条命令一定要有：
flush privileges;
