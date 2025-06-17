# Análise com Dashboard dinâmico - AdventureWorks

Este projeto demonstra a **integração e análise de dados de Vendas Online** do banco de dados AdventureWorks2014, utilizando **SQL Server** para o tratamento e preparação dos dados 
e **Excel** para a criação de um dashboard dinâmico. <br/> <br/> 🎯 O objetivo é aplicar conceitos de SQL, modelagem de dados e visualização para gerar insights sobre as vendas online, apoiando a tomada de decisões estratégicas.
<br/> <br/>
**Link para o Banco de Dados AdventureWorks:** https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver15&tabs=ssms <br/> <br/>

O projeto foi desenvolvido com base no curso de SQL da HashTag Treinamentos, incluindo as seguintes modificações e análises adicionais:
- Implementação de análise de tendências de vendas com comparação ano-a-ano (2012 vs. 2013)
- Coluna com cálculo do lucro para comparação
- Criação de uma view para modularização do código e otimização de consultas (VW_ProdutoCategoria) <br/> <br/>

‼️<br/>
**O motivo da View extra (VW_ProdutoCategoria) é que, a maioria das tabelas que contêm informações de produto possuem apenas a ProductKey, e para acessar dados de Subcategoria ou Categoria, seria sempre necessário realizar múltiplos JOINs complexos.
<br/> Portanto, decidi criar esta view para unir as informações das três tabelas em um único objeto reutilizável, com o objetivo de simplificar futuras consultas e aumentar a modularidade do código. 
<br/> Inicialmente incluí apenas as KEYs de cada tabela e as informações para o projeto, porém a view pode ser facilmente adaptada (ALTER) para incluir informações adicionais caso as necessidades de análise evoluam.** <br/> <br/>

## **KPIs Analisados:**
1) Vendas de Internet por Categoria de Produto
2) Receita Total Mensal (com comparação anual 2012 vs 2013)
3) Receita, Custo e Lucro Total por País
4) Total de Vendas por Gênero <br/>

## **Tecnologias Utilizadas:**
- SQL Server (SGBD)
- Microsoft Excel (Tabelas Dinâmicas e Visualização de Dados) <br/>

---
## **Visão Geral do Dashboard:** <br/>
![Dashboard_image](https://github.com/user-attachments/assets/8eddade2-950f-4cac-a35f-3eb9e255244c)


---

<br/> <br/> **Pré-requisitos para Reproduzir o Projeto:** <br/>
* Ter uma instância do SQL Server instalada.
* Ter o banco de dados 	AdventureWorksDW2014.bak ((ou versão compatível com dados de 2012 e 2013)) instalado e acessível no seu SQL Server.
*  Microsoft Excel. <br/>





  


