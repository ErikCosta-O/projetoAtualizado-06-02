
drop database dbPI;

create database dbPI;	

show databases;

use dbPI;

create table tbFuncionario(
codFunc int auto_increment,
Nome varchar(45) not null,
CPF varchar (45) unique not null,
Telefone varchar(50) not null,
Email varchar(45) not null,
Logradouro varchar(255) not null,
Cargo varchar(45) not null,
Password varchar(45) not null,
primary key (codFunc)
);

create table tbUsuario(
codUsuario int auto_increment,
Nome varchar(45) not null,
Email varchar (100) not null,
Password varchar(45) not null,
CPF varchar(45) unique not null,
Telefone varchar(45) not null,
Experiencia varchar(45),
RedeSocial varchar (150),
codFunc int not null,
primary key (codUsuario),
foreign key (codFunc) references tbFuncionario (codFunc)
);

create table tbONG(
codONG int auto_increment,
Nome varchar(45) not null,
Email varchar(100) not null,
Tel char(18) not null,
CNPJ char(45),
Endereco varchar(255) not null,
Categoria varchar(255) not null,
Descricao varchar(255) not null,
WebSite varchar (255) unique not null,
RedeSocial varchar (255),
codFunc int not null,
codUsuario int not null,
primary key (codONG),
foreign key (codFunc) references tbFuncionario (codFunc),
foreign key (codUsuario) references tbUsuario (codUsuario)
);

create table tbLoja(
codLoja int auto_increment,
Produtos varchar(50),
Valor varchar (10) not null,
Quantidade varchar(10) not null,
Descricao varchar(50) ,
codFunc int not null,
primary key (codLoja),
foreign key (codFunc) references tbFuncionario (codFunc)
);
	
desc tbFuncionario;

insert into tbFuncionario (Nome,CPF,Telefone,Email,Logradouro,Cargo,Password) values ('Thaina','123.456.788-10','(011)1234-5578','thaina@tg.com','Av Paulista,12','Administrador','Sen@c01');
insert into tbFuncionario (Nome,CPF,Telefone,Email,Logradouro,Cargo,Password) values ('Victoria','123.456.689-10','(011)1233-5678','victoria@tg.com','Av Morumbi,22','Supervisora','En@ble');
insert into tbFuncionario (Nome,CPF,Telefone,Email,Logradouro,Cargo,Password) values ('Amanda','123.456.589-10','(011)1233-5771','amanda@tg.com','Av Jabaquara,552','SAC','G@@gl3');
insert into tbFuncionario (Nome,CPF,Telefone,Email,Logradouro,Cargo,Password) values ('Consiglio','123.451.589-12','(011)1233-5777','caio@tg.com','Av Moema,912','SAC','T@k0eR');
insert into tbFuncionario (Nome,CPF,Telefone,Email,Logradouro,Cargo,Password) values ('Erik','123.156.589-10','(011)1244-5771','erik@tg.com','Av Pacaembu,145','Programador','R@b0nS1X');
insert into tbFuncionario (Nome,CPF,Telefone,Email,Logradouro,Cargo,Password) values ('Jose Hugo','000.000.000-1','(011)1233-5771','jose.hssilva@tg.com','Av Heliopolis,788','Suporte','@ble55');

select * from tbFuncionario;

desc tbUsuario;

insert into tbUsuario (Nome,Email,Password,CPF,Telefone,Experiencia,RedeSocial,codFunc) values('Roberto Carlos','rb_pro@hotmail.com','P@ssword','012.456.789-11','(011)4002-8922','Avancado','Linkedln / Github / Twiter',4);
insert into tbUsuario (Nome,Email,Password,CPF,Telefone,Experiencia,RedeSocial,codFunc) values('Sasuke Uchiha','sasuke.uchiha@hotmail.com','L4$$word','012.456.784-11','(011)4002-8422','Basico','Github / Twiter',5);
insert into tbUsuario (Nome,Email,Password,CPF,Telefone,Experiencia,RedeSocial,codFunc) values('Hinata Uzumaki','hinata.uzumaki@hotmail.com','M8$$Vord','012.456.784-17','(011)4444-8556','Nao tenho','Twiter',5);
insert into tbUsuario (Nome,Email,Password,CPF,Telefone,Experiencia,RedeSocial,codFunc) values('Marcos','Marcos_YT@hotmail.com','S4yp$','012.456.784-00','(011)4772-8422','Intermediario','Github',4);

select * from tbUsuario;


desc tbONG;

insert into tbONG (Nome,Email,Tel,CNPJ,Endereco,Categoria,Descricao,WebSite,RedeSocial,codFunc,codUsuario) values ('Fome Zero','fomezero@gmail.com','(011)9999-8888','44/0001-15','Rua HenriqueMartins,567 JardimSao Goncalo,SP','Alimentacao','A AlimentaçãodoBR','www.fomezero.com.br','@Fome_zero','5','2');
insert into tbONG (Nome,Email,Tel,CNPJ,Endereco,Categoria,Descricao,WebSite,RedeSocial,codFunc,codUsuario) values ('Internet 100%','internet100%@uol.com','(011)0000-8888','47/0501-15','Rua MartinsJuan,47 EmbudasArtes,SP','Conexao','Internet para todos ','www.internet100.org.br','@internet_100%','4','1');
insert into tbONG (Nome,Email,Tel,CNPJ,Endereco,Categoria,Descricao,WebSite,RedeSocial,codFunc,codUsuario) values ('ProjArrastao','projarrastao@gmail.com','(011)9999-6666','44/0441-15','Rua Chaves Chapolin,77 CapaoRedondo,SP','Humanidade','Futuro melhor para todos ','www.projarrastao.org.br','@ProjArrastão','5','3');
insert into tbONG (Nome,Email,Tel,CNPJ,Endereco,Categoria,Descricao,WebSite,RedeSocial,codFunc,codUsuario) values ('Raio de Sol','raio.sol@gmail.com','(011)9944-8558','96/0001-15','Av Folha leve,13,São Paulo SP','Agricultura','Alimentacao sem veneno ','www.raiosol.org.br','@Raio_sol','5','2');
insert into tbONG (Nome,Email,Tel,CNPJ,Endereco,Categoria,Descricao,WebSite,RedeSocial,codFunc,codUsuario) values ('Luz+','luz+@gmail.com','(011)9944-8548','','Av FolhadeSP,17,São Paulo SP','Bem-estar','Conversa saudavel','www.luz+.br','@luz','4','2');

select * from tbONG;

desc tbLoja;

insert into tbLoja (Produtos,Valor,Quantidade,Descricao,codFunc) values('Bolsa','R$ 30,50',' 10','Feita de materiais reciclaveis','1');
insert into tbLoja (Produtos,Valor,Quantidade,Descricao,codFunc) values('Camiseta tamanho diversos','R$ 20,50',' 30','Feita de materiais reciclaveis','1');
insert into tbLoja (Produtos,Valor,Quantidade,Descricao,codFunc) values('Pagina Exclusiva','R$ 15,50',' 30','Material de apoio e conteudo exclusivo','1');
insert into tbLoja (Produtos,Valor,Quantidade,Descricao,codFunc) values('Tablet','R$ 100,00',' 30','Ideal para estudos','1');
insert into tbLoja (Produtos,Valor,Quantidade,Descricao,codFunc) values('Lapis','R$ 2,00',' 10','Ideal para escrita e desenho','1');
insert into tbLoja (Produtos,Valor,Quantidade,Descricao,codFunc) values('Oculos','R$ 20,00',' 30','Armacao de Oculos','1');
insert into tbLoja (Produtos,Valor,Quantidade,Descricao,codFunc) values('Chaveiro','R$ 10,00',' 30','Chaveiro Personalizado','1');
insert into tbLoja (Produtos,Valor,Quantidade,Descricao,codFunc) values('Case de Celular','R$ 20,00',' 30','Diversos modelos','1');
insert into tbLoja (Produtos,Valor,Quantidade,Descricao,codFunc) values('Caderno Universitario','R$ 20,00',' 30','20 Materias e 160 Folhas','1');

select * from tbLoja;
