# Modelagem de Dados em Grafos - Streaming Service 🎬

Este projeto consiste na modelagem de um banco de dados orientado a grafos utilizando **Neo4j**. O cenário simula uma plataforma de streaming (como Netflix ou Amazon Prime), mapeando as interações entre usuários, o catálogo de filmes/séries e os profissionais envolvidos (atores e diretores).

## 📷 Visualização do Modelo

Abaixo está a representação visual do esquema do grafo gerado no ARROWS.APP:

![Modelagem do Grafo](https://github.com/cesar-augusto-costa/dio_neo4j_01/blob/main/grafo.png?raw=true)

> **Dica:** Para visualizar o diagrama em alta resolução (vetorizado), acesse o arquivo SVG:
> [🔗 Visualizar grafo.svg](https://github.com/cesar-augusto-costa/dio_neo4j_01/blob/main/grafo.svg)

---

## 🛠️ Estrutura dos Dados (Labels & Propriedades)

O modelo foi construído utilizando os seguintes nós (Labels) e suas respectivas propriedades principais:

### 👤 User (Usuário)
Representa o cliente da plataforma.
*   `name`: Nome de exibição.

### 🎬 Movie (Filme)
*   `title`: Título da obra.
*   `released`: Data de lançamento.
*   `runtime`: Duração em minutos.
*   `imdbRating`: Nota média.

### 📺 Series (Série)
*   `title`: Título da série.
*   `totalSeasons`: Total de temporadas.

### 🏷️ Genre (Gênero)
Nó de categorização.
*   `name`: Nome do gênero (Ação, Drama, Sci-Fi).

### 🎭 Actor (Ator)
*   `name`: Nome do ator/atriz.
*   `born`: Data de nascimento.

### 🎬 Director (Diretor)
*   `name`: Nome do diretor(a).

---

## 🎨 Paleta de Cores (Estilo)

Para facilitar a visualização no **Neo4j Bloom** ou **Browser**, definiu-se a seguinte paleta de cores para os nós:

| Label | Cor Hex | Representação |
| :--- | :--- | :--- |
| **User** | `#00FFFF` (Azul) | Observador/Cliente |
| **Movie** | `#E50914` (Vermelho) | Conteúdo Fílmico |
| **Series** | `#DC3912` (Laranja) | Conteúdo Episódico |
| **Genre** | `#FFD700` (Amarelo) | Categoria/Estrutura |
| **Actor** | `#8DCC93` (Verde Claro) | Talento/Elenco |
| **Director**| `#109618` (Verde Escuro) | Direção Criativa |

---

## 🚀 Como Executar

O código **Cypher** completo para criar os nós, definir as propriedades e estabelecer os relacionamentos está disponível no repositório.

1. Acesse o script no link abaixo.
2. Copie o conteúdo.
3. Cole no editor do **Neo4j Desktop** ou **Neo4j Aura** e execute.

[📄 **Acessar Script Cypher (grafo.cypher)**](https://github.com/cesar-augusto-costa/dio_neo4j_01/blob/main/grafo.cypher)

---

## 🔗 Relacionamentos Principais

Além dos nós, o modelo contempla relações semânticas como:
*   `(:User)-[:WATCHED]->(:Movie)`
*   `(:User)-[:RATED {rating: 5.0}]->(:Series)`
*   `(:Actor)-[:ACTED_IN {role: "Nome Personagem"}]->(:Movie)`
*   `(:Director)-[:DIRECTED]->(:Movie)`
*   `(:Movie)-[:IN_GENRE]->(:Genre)`

---

*Projeto desenvolvido como parte do portfólio de estudos em Bancos de Dados NoSQL com Grafos utilizando o Neo4j*
