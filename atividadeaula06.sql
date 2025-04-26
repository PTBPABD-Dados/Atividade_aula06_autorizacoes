
-- Listando permissões dos usuários
select  princ.name
,       princ.type_desc
,       perm.permission_name
,       perm.state_desc
,       perm.class_desc
,       object_name(perm.major_id)
from    sys.database_principals princ
left join
        sys.database_permissions perm
on      perm.grantee_principal_id = princ.principal_id
where princ.type_desc = 'SQL_USER' 
order by princ.name;


--1. Crie as contas de usuário User_A, User_B, User_C, User_D e User_E.

-- Criando users 
CREATE USER User_A WITH PASSWORD = 'PT23820x';
CREATE USER User_b WITH PASSWORD = 'PT25056x';
CREATE USER User_c WITH PASSWORD = 'PT23821x';
CREATE USER User_d WITH PASSWORD = 'PT23826x';
CREATE USER User_e WITH PASSWORD = 'PT23828x';

--2. Considere o esquema de banco de dados relacional university.
--O User_A poderá selecionar ou modificar qualquer relação, exceto CLASSROOM, e pode conceder qualquer um desses privilégios a outros usuários.

-- Concedendo permissao para que user_a selecione ou modifique os dados das tabelas do database university, exceto classroom.
--Além disso, permito que user_a conceda permissões para outros users usando with grant option.
-- Selecionar: Visualizar dados da tabela
--Modificar: Atualizar dados existentes, inserir novos dados e deletar dados

grant select,insert, update, delete on dbo.advisor to User_a with grant option;

grant select,insert, update, delete on dbo.course to User_a with grant option;

grant select,insert, update, delete on dbo.department to User_a with grant option;

grant select,insert, update, delete on dbo.instructor to User_a with grant option;

grant select,insert, update, delete on dbo.section to User_a with grant option;

grant select,insert, update, delete on dbo.prereq to User_a with grant option;

grant select,insert, update, delete on dbo.student to User_a with grant option;

grant select,insert, update, delete on dbo.takes to User_a with grant option;

grant select,insert, update, delete on dbo.teaches to User_a with grant option;

grant select,insert, update, delete on dbo.time_slot to User_a with grant option;








