CREATE PROCEDURE solution()
BEGIN
	-- Criando uma tabela temporário para armazenar as informações
	CREATE TABLE IF NOT EXISTS AfricaCountries AS
	SELECT * FROM Countries
	WHERE continent = 'Africa';
	
	-- DROP na tabela 'Countries' Original
	DROP TABLE Countries;
	
	-- Renomeando a tabela temporária para 'Countries'
	RENAME TABLE AfricaCountries TO Countries;
	
	-- Selecionando os valores encontrados na tabela temporária
	SELECT * FROM Countries;
END