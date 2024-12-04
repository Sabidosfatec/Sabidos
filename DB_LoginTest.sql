Create database DB_Teste_Sabidos
use DB_Teste_Sabidos;

Create table tb_Usuario(
 id_usuario int not null identity(1,1),
 nome_usuario varchar(40) not null ,
 senha varchar(30) not null ,
 email varchar(70) not null ,
 ativo bit  default  1,
 constraint PK_Usuario primary key (id_usuario)
);

Create table tb_resumo(
 id_resumo int not null identity(1,1),
 id_usuario int not null ,
 titulo_resumo varchar(50) not null,
 conteudo_resumo varchar(300) not null,
  ativo bit  default  1,
  constraint PK_Resumo primary key (id_resumo),
   constraint FK_Resumo_Usuario foreign key (id_usuario)
	 references tb_usuario (id_usuario)
);


select * from tb_Usuario