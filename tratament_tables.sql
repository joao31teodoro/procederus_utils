CREATE PROCEDURE solution()
BEGIN
    -- Crie uma nova tabela apenas com as colunas desejadas e ordene por internal_id.
    CREATE TABLE IF NOT EXISTS NewProjetos AS
    SELECT project_name, team_lead, income
    FROM Projects
    ORDER BY internal_id ASC;

    -- Descarte a tabela original Projetos.
    DROP TABLE Projects;

    -- Renomeie a nova tabela para Projetos.
    RENAME TABLE NewProjetos TO Projects;
	
    -- Selecione a Tabela que renomeio e realizou o tratamento
	  SELECT project_name, team_lead, income FROM Projects;
END; 