-- Alterações na coluna Funcionarios

alter table funcionarios drop column cargo;

alter table funcionarios add column cargo_Func varchar (50) not null;

alter table funcionarios drop column Rua;

alter table funcionarios add column bairro varchar (50) not null;

alter table funcionarios
change column bairro bairro varchar(50) after nome;

-- Alterações na coluna Exemplares
alter table Exemplares
modify column `status` enum ("Pessimo", "Ruim", "Indiferente", "Bom", "Excelente") not null;

-- Alterações na coluna Clientes
alter table clientes drop column Rua;

alter table clientes add column bairro varchar (50) not null;

-- Alterações na tabela Departamentos

alter table departamentos change column Descricao_Ativ `status` enum ("Ativado", "Desativado") not null;

alter table departamentos add column relatorio_mes varchar(100);
