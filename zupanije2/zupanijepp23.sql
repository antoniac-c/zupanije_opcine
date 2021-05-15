drop database if exists zupanijepp23;
create database zupanijepp23;
use zupanijepp23;

create table zupanija (
sifra int (11) not null primary key auto_increment,
naziv varchar (50),
zupan int not null
);

create table zupan (
sifra int (11) not null primary key auto_increment,
ime varchar (50),
prezime varchar(50)
);

create table opcina(
sifra int (11) not null primary key auto_increment,
zupanija int (11),
naziv varchar (50)
);

create table mjesto(
sifra int (11) not null primary key auto_increment,
opcina int,
naziv varchar (50)
);

alter table zupanija add foreign key (zupan) references zupan (sifra);

alter table opcina add foreign key (zupanija) references zupanija(sifra);

alter table mjesto add foreign key (opcina) references opcina(sifra);


insert into zupan (ime,prezime) values 
('pero','peric'),
('marko','markovic'),
('janko','jankovic');

select * from zupan;

insert into zupanija (zupan,naziv) values
(1,'osijecko-baranjska'),
(2,'zagrebacka'),
(3,'zadarska');

select * from zupanija;

insert into opcina (naziv) values
('bilje'),
('ernestinovo'),
('dugo selo'),
('samobor'),
('vir'),
('nin');

select * from opcina;

insert into mjesto (naziv) values
('osijek'),
('nasice'),
('valpovo'),
('zagreb'),
('velika gorica'),
('jastrebarsko'),
('sukosan'),
('zadar'),
('bibinje'),
('donji miholjac'),
('obrovac'),
('posedarje');

select * from mjesto;

update mjesto set naziv='beli manastir' where sifra=1;
update mjesto set naziv='pirovac' where sifra=7;
update mjesto set naziv='pakostane' where sifra=8;
update mjesto set naziv='nin' where sifra=9;
update mjesto set naziv='pag' where sifra=12;

select * from mjesto ;

delete from opcina where sifra>2;
delete from opcina where sifra>1;

select * from opcina;





 











 

