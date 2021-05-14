drop database if exists zupanijepp23;
create database zupanijepp23;
use zupanijepp23;

create table zupanija (
sifra int not null primary key auto_increment,
naziv varchar (50),
zupan varchar (50)
);
