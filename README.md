# Teste_Analytics_VinicyusSantos

Este repositório contém a solução para o **Teste de Estagiário em Analytics**, incluindo simulação de dados, limpeza, exploração e consultas SQL.

---

## Estrutura do Repositório
Teste_Analytics_VinicyusSantos/
- **data/**
  - `data_clean.csv` → Dataset limpo e pronto para análise
- **notebooks/**
  - `Analise_Exploratoria_de_Dados_de_Vendas.ipynb` → Notebook com EDA (exploração e gráficos)
  - `Limpeza_e_Analise_de_Dados_de_Vendas.ipynb` → Notebook com simulação e limpeza
- **consultas_sql.sql** Consultas SQL solicitadas no teste
- **relatorio_insights.md** Relatório em texto (≤300 palavras)
- **README.md** Este arquivo
---

## Como Executar

Todos os códigos foram desenvolvidos em **Google Colab** (Jupyter Notebooks em Python).

### 1. Abrindo os Notebooks
- Abra o Colab ([https://colab.research.google.com](https://colab.research.google.com))
- Faça upload dos notebooks da pasta `notebooks/`
- Execute célula por célula.

### 2. Dependências

Os pacotes necessários já vêm pré-instalados no Google Colab:
- `pandas`
- `numpy`
- `matplotlib`
- `seaborn`

Se quiser rodar localmente, instale as dependências:
```bash
pip install pandas numpy matplotlib jupyter
```
---

## Descrição dos Arquivos

### `data/data_clean.csv`
Dataset tratado, sem duplicatas, com tipos corrigidos..

### `notebooks/Limpeza_e_Analise_de_Dados_de_Vendas.ipynb`
Notebook responsável pela simulação dos dados e pela limpeza que gera `data_clean.csv`.

### `notebooks/Analise_Exploratoria_de_Dados_de_Vendas.ipynb`
Notebook com análises exploratórias (EDA), geração de gráficos.

### `consultas_sql.sql`
Arquivo com as consultas SQL pedidas no teste, devidamente comentadas e com observação sobre a inconsistência das datas (junho/2024 vs. junho/2023).

### `relatorio_insights.md`
Relatório em Markdown (≤300 palavras) com resumo dos principais insights e recomendações práticas.

### `README.md`
Documento de instruções e explicações sobre a estrutura do projeto e as suposições feitas.

---

## Suposições Importantes

### Reprodutibilidade da Simulação
Foi utilizado `np.random.seed(42)` para garantir que os dados simulados sejam sempre os mesmos a cada execução.

### Quantidade de Registros
Foram gerados mais de 50 registros para atender ao requisito do teste e enriquecer as análises.

### Categorias dos Produtos
Cada produto foi associado manualmente a uma categoria fixa (ex.: Caneta → Papelaria, Mochila → Acessórios).

### Sazonalidade de vendas
Adicionei pesos em meses especificos para que os dados ficassem o mais proximo da realidade de vendas reais

### Tratamento de Dados Faltantes e Duplicados
- Duplicatas foram removidas.  
- Valores nulos foram substituídos.  

### Inconsistência da Questão de Junho/2024
O enunciado pede análise de vendas em junho/2024, mas os dados simulados foram gerados apenas para 2023.  

No arquivo `consultas_sql.sql`, documentei essa observação.  

Para efeito de análise, considerei junho/2023 e adicionei também uma consulta para verificação de registro em 06/2024.


