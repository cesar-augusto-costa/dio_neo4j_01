// ==========================================
// PARTE 1: CRIAÇÃO DE CONSTRAINTS
// ==========================================

// Constraints para garantir unicidade e integridade dos dados
CREATE CONSTRAINT user_id IF NOT EXISTS FOR (u:User) REQUIRE u.id IS UNIQUE;
CREATE CONSTRAINT actor_id IF NOT EXISTS FOR (a:Actor) REQUIRE a.id IS UNIQUE;
CREATE CONSTRAINT director_id IF NOT EXISTS FOR (d:Director) REQUIRE d.id IS UNIQUE;
CREATE CONSTRAINT movie_id IF NOT EXISTS FOR (m:Movie) REQUIRE m.id IS UNIQUE;
CREATE CONSTRAINT serie_id IF NOT EXISTS FOR (s:Serie) REQUIRE s.id IS UNIQUE;
CREATE CONSTRAINT genre_name IF NOT EXISTS FOR (g:Genre) REQUIRE g.name IS UNIQUE;

// ==========================================
// PARTE 2: CRIAÇÃO DE GÊNEROS
// ==========================================

CREATE (g1:Genre {name: "Action", description: "High-energy films with physical stunts and chases"})
CREATE (g2:Genre {name: "Drama", description: "Serious, plot-driven stories with emotional themes"})
CREATE (g3:Genre {name: "Comedy", description: "Light-hearted stories designed to amuse"})
CREATE (g4:Genre {name: "Sci-Fi", description: "Futuristic and scientific imagination"})
CREATE (g5:Genre {name: "Thriller", description: "Suspenseful and tension-filled narratives"})
CREATE (g6:Genre {name: "Romance", description: "Love stories and romantic relationships"})
CREATE (g7:Genre {name: "Horror", description: "Scary and frightening content"})
CREATE (g8:Genre {name: "Crime", description: "Stories about criminal activities"})
CREATE (g9:Genre {name: "Fantasy", description: "Magical and mythical worlds"});

// ==========================================
// PARTE 3: CRIAÇÃO DE USUÁRIOS
// ==========================================

CREATE (u1:User {id: "user001", name: "Ana Silva", sex: "F", born: "1995-03-15", birthPlace: "São Paulo", region: "BR"})
CREATE (u2:User {id: "user002", name: "Bruno Costa", sex: "M", born: "1988-07-22", birthPlace: "Rio de Janeiro", region: "BR"})
CREATE (u3:User {id: "user003", name: "Carla Mendes", sex: "F", born: "1992-11-08", birthPlace: "Belo Horizonte", region: "BR"})
CREATE (u4:User {id: "user004", name: "Diego Oliveira", sex: "M", born: "1990-05-30", birthPlace: "Porto Alegre", region: "BR"})
CREATE (u5:User {id: "user005", name: "Elisa Santos", sex: "F", born: "1997-09-14", birthPlace: "Curitiba", region: "BR"})
CREATE (u6:User {id: "user006", name: "Fernando Lima", sex: "M", born: "1985-12-03", birthPlace: "Salvador", region: "BR"})
CREATE (u7:User {id: "user007", name: "Gabriela Rocha", sex: "F", born: "1993-04-25", birthPlace: "Recife", region: "BR"})
CREATE (u8:User {id: "user008", name: "Henrique Alves", sex: "M", born: "1991-08-17", birthPlace: "Fortaleza", region: "BR"})
CREATE (u9:User {id: "user009", name: "Isabela Ferreira", sex: "F", born: "1996-02-28", birthPlace: "Brasília", region: "BR"})
CREATE (u10:User {id: "user010", name: "João Pereira", sex: "M", born: "1989-10-11", birthPlace: "Manaus", region: "BR"});

// ==========================================
// PARTE 4: CRIAÇÃO DE ATORES
// ==========================================

CREATE (a1:Actor {id: "actor001", name: "Leonardo DiCaprio", sex: "M", born: "1974-11-11", birthPlace: "Los Angeles", region: "US", bio: "Oscar-winning actor known for diverse roles", popularity: "95"})
CREATE (a2:Actor {id: "actor002", name: "Scarlett Johansson", sex: "F", born: "1984-11-22", birthPlace: "New York", region: "US", bio: "Versatile actress and singer", popularity: "92"})
CREATE (a3:Actor {id: "actor003", name: "Tom Hanks", sex: "M", born: "1956-07-09", birthPlace: "Concord", region: "US", bio: "Beloved actor with iconic roles", popularity: "94"})
CREATE (a4:Actor {id: "actor004", name: "Meryl Streep", sex: "F", born: "1949-06-22", birthPlace: "Summit", region: "US", bio: "Most nominated actress in Oscar history", popularity: "93"})
CREATE (a5:Actor {id: "actor005", name: "Denzel Washington", sex: "M", born: "1954-12-28", birthPlace: "Mount Vernon", region: "US", bio: "Powerful dramatic actor", popularity: "91"})
CREATE (a6:Actor {id: "actor006", name: "Cate Blanchett", sex: "F", born: "1969-05-14", birthPlace: "Melbourne", region: "AU", bio: "Award-winning Australian actress", popularity: "89"})
CREATE (a7:Actor {id: "actor007", name: "Morgan Freeman", sex: "M", born: "1937-06-01", birthPlace: "Memphis", region: "US", bio: "Distinctive voice and commanding presence", popularity: "90"})
CREATE (a8:Actor {id: "actor008", name: "Natalie Portman", sex: "F", born: "1981-06-09", birthPlace: "Jerusalem", region: "IL", bio: "Harvard graduate and Oscar winner", popularity: "88"})
CREATE (a9:Actor {id: "actor009", name: "Bryan Cranston", sex: "M", born: "1956-03-07", birthPlace: "Hollywood", region: "US", bio: "Emmy-winning dramatic actor", popularity: "90"})
CREATE (a10:Actor {id: "actor010", name: "Millie Bobby Brown", sex: "F", born: "2004-02-19", birthPlace: "Marbella", region: "ES", bio: "Young star of sci-fi series", popularity: "88"})
CREATE (a11:Actor {id: "actor011", name: "Emilia Clarke", sex: "F", born: "1986-10-23", birthPlace: "London", region: "UK", bio: "Known for fantasy epic roles", popularity: "89"})
CREATE (a12:Actor {id: "actor012", name: "Pedro Pascal", sex: "M", born: "1975-04-02", birthPlace: "Santiago", region: "CL", bio: "Chilean-American star of sci-fi series", popularity: "91"})
CREATE (a13:Actor {id: "actor013", name: "Henry Cavill", sex: "M", born: "1983-05-05", birthPlace: "Jersey", region: "UK", bio: "British actor in fantasy series", popularity: "87"})
CREATE (a14:Actor {id: "actor014", name: "Steve Carell", sex: "M", born: "1962-08-16", birthPlace: "Concord", region: "US", bio: "Comedian and dramatic actor", popularity: "86"});

// ==========================================
// PARTE 5: CRIAÇÃO DE DIRETORES
// ==========================================

CREATE (d1:Director {id: "dir001", name: "Christopher Nolan", sex: "M", born: "1970-07-30", birthPlace: "London", region: "UK", style: "Complex narratives, non-linear storytelling", bio: "Master of mind-bending cinema", popularity: "96"})
CREATE (d2:Director {id: "dir002", name: "Greta Gerwig", sex: "F", born: "1983-08-04", birthPlace: "Sacramento", region: "US", style: "Character-driven, feminist perspectives", bio: "Acclaimed writer-director", popularity: "87"})
CREATE (d3:Director {id: "dir003", name: "Steven Spielberg", sex: "M", born: "1946-12-18", birthPlace: "Cincinnati", region: "US", style: "Epic storytelling, visual mastery", bio: "Legendary filmmaker", popularity: "98"})
CREATE (d4:Director {id: "dir004", name: "Quentin Tarantino", sex: "M", born: "1963-03-27", birthPlace: "Knoxville", region: "US", style: "Stylized violence, sharp dialogue", bio: "Iconic auteur director", popularity: "94"})
CREATE (d5:Director {id: "dir005", name: "Denis Villeneuve", sex: "M", born: "1967-10-03", birthPlace: "Trois-Rivières", region: "CA", style: "Atmospheric, contemplative sci-fi", bio: "Visionary Canadian director", popularity: "91"})
CREATE (d6:Director {id: "dir006", name: "Frank Darabont", sex: "M", born: "1959-01-28", birthPlace: "Montbéliard", region: "FR", style: "Emotional storytelling, adaptations", bio: "Master of drama and redemption", popularity: "88"})
CREATE (d7:Director {id: "dir007", name: "Lana Wachowski", sex: "F", born: "1965-06-21", birthPlace: "Chicago", region: "US", style: "Philosophical sci-fi", bio: "Visionary sci-fi director", popularity: "89"})
CREATE (d8:Director {id: "dir008", name: "Vince Gilligan", sex: "M", born: "1967-02-10", birthPlace: "Richmond", region: "US", style: "Character transformation, tension", bio: "Creator of acclaimed TV series", popularity: "92"})
CREATE (d9:Director {id: "dir009", name: "Duffer Brothers", sex: "M", born: "1984-02-15", birthPlace: "Durham", region: "US", style: "80s nostalgia, supernatural", bio: "Twin creators of hit series", popularity: "88"})
CREATE (d10:Director {id: "dir010", name: "Jon Favreau", sex: "M", born: "1966-10-19", birthPlace: "Queens", region: "US", style: "Blockbuster entertainment", bio: "Director and producer", popularity: "85"});

// ==========================================
// PARTE 6: CRIAÇÃO DE FILMES COM RELACIONAMENTOS
// ==========================================

// Movie 1: Inception
MATCH (d:Director {id: "dir001"}), (a1:Actor {id: "actor001"}), (a2:Actor {id: "actor002"}), (g1:Genre {name: "Sci-Fi"}), (g2:Genre {name: "Action"}), (g3:Genre {name: "Thriller"})
CREATE (m1:Movie {id: "movie001", title: "Inception", released: "2010-07-16", runtime: "148", plot: "A thief who steals corporate secrets through dream-sharing technology"})
CREATE (m1)-[:DIRECTED]->(d)
CREATE (a1)-[:ACTED_IN {role: "Dom Cobb", style: "Lead"}]->(m1)
CREATE (a2)-[:ACTED_IN {role: "Mal", style: "Supporting"}]->(m1)
CREATE (m1)-[:IN_GENRE]->(g1)
CREATE (m1)-[:IN_GENRE]->(g2)
CREATE (m1)-[:IN_GENRE]->(g3);

// Movie 2: The Shawshank Redemption
MATCH (d:Director {id: "dir006"}), (a1:Actor {id: "actor007"}), (a3:Actor {id: "actor003"}), (g1:Genre {name: "Drama"}), (g2:Genre {name: "Crime"})
CREATE (m2:Movie {id: "movie002", title: "The Shawshank Redemption", released: "1994-09-23", runtime: "142", plot: "Two imprisoned men bond over years, finding redemption"})
CREATE (m2)-[:DIRECTED]->(d)
CREATE (a1)-[:ACTED_IN {role: "Red", style: "Lead"}]->(m2)
CREATE (a3)-[:ACTED_IN {role: "Andy Dufresne", style: "Lead"}]->(m2)
CREATE (m2)-[:IN_GENRE]->(g1)
CREATE (m2)-[:IN_GENRE]->(g2);

// Movie 3: Pulp Fiction
MATCH (d:Director {id: "dir004"}), (a:Actor {id: "actor005"}), (g1:Genre {name: "Crime"}), (g2:Genre {name: "Thriller"}), (g3:Genre {name: "Drama"})
CREATE (m3:Movie {id: "movie003", title: "Pulp Fiction", released: "1994-10-14", runtime: "154", plot: "Various Los Angeles criminals intertwine in four tales"})
CREATE (m3)-[:DIRECTED]->(d)
CREATE (a)-[:ACTED_IN {role: "Jules Winnfield", style: "Lead"}]->(m3)
CREATE (m3)-[:IN_GENRE]->(g1)
CREATE (m3)-[:IN_GENRE]->(g2)
CREATE (m3)-[:IN_GENRE]->(g3);

// Movie 4: The Dark Knight
MATCH (d:Director {id: "dir001"}), (a:Actor {id: "actor007"}), (g1:Genre {name: "Action"}), (g2:Genre {name: "Crime"}), (g3:Genre {name: "Drama"})
CREATE (m4:Movie {id: "movie004", title: "The Dark Knight", released: "2008-07-18", runtime: "152", plot: "Batman faces the Joker in a battle for Gotham's soul"})
CREATE (m4)-[:DIRECTED]->(d)
CREATE (a)-[:ACTED_IN {role: "Lucius Fox", style: "Supporting"}]->(m4)
CREATE (m4)-[:IN_GENRE]->(g1)
CREATE (m4)-[:IN_GENRE]->(g2)
CREATE (m4)-[:IN_GENRE]->(g3);

// Movie 5: Forrest Gump
MATCH (d:Director {id: "dir003"}), (a:Actor {id: "actor003"}), (g1:Genre {name: "Drama"}), (g2:Genre {name: "Romance"})
CREATE (m5:Movie {id: "movie005", title: "Forrest Gump", released: "1994-07-06", runtime: "142", plot: "A simple man witnesses and influences historical events"})
CREATE (m5)-[:DIRECTED]->(d)
CREATE (a)-[:ACTED_IN {role: "Forrest Gump", style: "Lead"}]->(m5)
CREATE (m5)-[:IN_GENRE]->(g1)
CREATE (m5)-[:IN_GENRE]->(g2);

// Movie 6: Interstellar
MATCH (d:Director {id: "dir001"}), (a:Actor {id: "actor004"}), (g1:Genre {name: "Sci-Fi"}), (g2:Genre {name: "Drama"}), (g3:Genre {name: "Action"})
CREATE (m6:Movie {id: "movie006", title: "Interstellar", released: "2014-11-07", runtime: "169", plot: "Explorers travel through a wormhole to save humanity"})
CREATE (m6)-[:DIRECTED]->(d)
CREATE (a)-[:ACTED_IN {role: "Brand", style: "Supporting"}]->(m6)
CREATE (m6)-[:IN_GENRE]->(g1)
CREATE (m6)-[:IN_GENRE]->(g2)
CREATE (m6)-[:IN_GENRE]->(g3);

// Movie 7: The Matrix
MATCH (d:Director {id: "dir007"}), (a:Actor {id: "actor005"}), (g1:Genre {name: "Sci-Fi"}), (g2:Genre {name: "Action"}), (g3:Genre {name: "Thriller"})
CREATE (m7:Movie {id: "movie007", title: "The Matrix", released: "1999-03-31", runtime: "136", plot: "A hacker discovers reality is a computer simulation"})
CREATE (m7)-[:DIRECTED]->(d)
CREATE (a)-[:ACTED_IN {role: "Morpheus", style: "Lead"}]->(m7)
CREATE (m7)-[:IN_GENRE]->(g1)
CREATE (m7)-[:IN_GENRE]->(g2)
CREATE (m7)-[:IN_GENRE]->(g3);

// Movie 8: Blade Runner 2049
MATCH (d:Director {id: "dir005"}), (a:Actor {id: "actor006"}), (g1:Genre {name: "Sci-Fi"}), (g2:Genre {name: "Thriller"}), (g3:Genre {name: "Drama"})
CREATE (m8:Movie {id: "movie008", title: "Blade Runner 2049", released: "2017-10-06", runtime: "164", plot: "A blade runner uncovers a secret that could plunge society into chaos"})
CREATE (m8)-[:DIRECTED]->(d)
CREATE (a)-[:ACTED_IN {role: "Dr. Ana Stelline", style: "Supporting"}]->(m8)
CREATE (m8)-[:IN_GENRE]->(g1)
CREATE (m8)-[:IN_GENRE]->(g2)
CREATE (m8)-[:IN_GENRE]->(g3);

// Movie 9: Lady Bird
MATCH (d:Director {id: "dir002"}), (a:Actor {id: "actor004"}), (g1:Genre {name: "Drama"}), (g2:Genre {name: "Comedy"})
CREATE (m9:Movie {id: "movie009", title: "Lady Bird", released: "2017-11-03", runtime: "94", plot: "A coming-of-age story about a high school senior in Sacramento"})
CREATE (m9)-[:DIRECTED]->(d)
CREATE (a)-[:ACTED_IN {role: "Marion McPherson", style: "Lead"}]->(m9)
CREATE (m9)-[:IN_GENRE]->(g1)
CREATE (m9)-[:IN_GENRE]->(g2);

// Movie 10: Dune
MATCH (d:Director {id: "dir005"}), (a:Actor {id: "actor008"}), (g1:Genre {name: "Sci-Fi"}), (g2:Genre {name: "Action"}), (g3:Genre {name: "Drama"})
CREATE (m10:Movie {id: "movie010", title: "Dune", released: "2021-10-22", runtime: "155", plot: "A noble family becomes embroiled in a war for a desert planet"})
CREATE (m10)-[:DIRECTED]->(d)
CREATE (a)-[:ACTED_IN {role: "Paul Atreides", style: "Lead"}]->(m10)
CREATE (m10)-[:IN_GENRE]->(g1)
CREATE (m10)-[:IN_GENRE]->(g2)
CREATE (m10)-[:IN_GENRE]->(g3);

// ==========================================
// PARTE 7: CRIAÇÃO DE SÉRIES COM RELACIONAMENTOS
// ==========================================

// Serie 1: Breaking Bad
MATCH (d:Director {id: "dir008"}), (a:Actor {id: "actor009"}), (g1:Genre {name: "Drama"}), (g2:Genre {name: "Crime"}), (g3:Genre {name: "Thriller"})
CREATE (s1:Serie {id: "serie001", title: "Breaking Bad", firstAirDate: "2008-01-20", lastAirDate: "2013-09-29", totalSeasons: "5", plot: "A chemistry teacher turns to cooking meth after cancer diagnosis"})
CREATE (s1)-[:DIRECTED]->(d)
CREATE (a)-[:ACTED_IN {role: "Walter White", style: "Lead"}]->(s1)
CREATE (s1)-[:IN_GENRE]->(g1)
CREATE (s1)-[:IN_GENRE]->(g2)
CREATE (s1)-[:IN_GENRE]->(g3);

// Serie 2: Stranger Things
MATCH (d:Director {id: "dir009"}), (a:Actor {id: "actor010"}), (g1:Genre {name: "Horror"}), (g2:Genre {name: "Sci-Fi"}), (g3:Genre {name: "Drama"})
CREATE (s2:Serie {id: "serie002", title: "Stranger Things", firstAirDate: "2016-07-15", lastAirDate: "2024-07-04", totalSeasons: "4", plot: "Kids in 1980s Indiana battle supernatural forces"})
CREATE (s2)-[:DIRECTED]->(d)
CREATE (a)-[:ACTED_IN {role: "Eleven", style: "Lead"}]->(s2)
CREATE (s2)-[:IN_GENRE]->(g1)
CREATE (s2)-[:IN_GENRE]->(g2)
CREATE (s2)-[:IN_GENRE]->(g3);

// Serie 3: The Crown
MATCH (d:Director {id: "dir003"}), (a:Actor {id: "actor006"}), (g1:Genre {name: "Drama"}), (g2:Genre {name: "Romance"})
CREATE (s3:Serie {id: "serie003", title: "The Crown", firstAirDate: "2016-11-04", lastAirDate: "2023-12-14", totalSeasons: "6", plot: "Chronicles the reign of Queen Elizabeth II"})
CREATE (s3)-[:DIRECTED]->(d)
CREATE (a)-[:ACTED_IN {role: "Queen Elizabeth II", style: "Lead"}]->(s3)
CREATE (s3)-[:IN_GENRE]->(g1)
CREATE (s3)-[:IN_GENRE]->(g2);

// Serie 4: Black Mirror
MATCH (d:Director {id: "dir007"}), (a:Actor {id: "actor002"}), (g1:Genre {name: "Sci-Fi"}), (g2:Genre {name: "Thriller"}), (g3:Genre {name: "Drama"})
CREATE (s4:Serie {id: "serie004", title: "Black Mirror", firstAirDate: "2011-12-04", lastAirDate: "2023-06-15", totalSeasons: "6", plot: "Anthology series exploring dark aspects of technology"})
CREATE (s4)-[:DIRECTED]->(d)
CREATE (a)-[:ACTED_IN {role: "Various", style: "Guest"}]->(s4)
CREATE (s4)-[:IN_GENRE]->(g1)
CREATE (s4)-[:IN_GENRE]->(g2)
CREATE (s4)-[:IN_GENRE]->(g3);

// Serie 5: The Mandalorian
MATCH (d:Director {id: "dir010"}), (a:Actor {id: "actor012"}), (g1:Genre {name: "Sci-Fi"}), (g2:Genre {name: "Action"}), (g3:Genre {name: "Fantasy"})
CREATE (s5:Serie {id: "serie005", title: "The Mandalorian", firstAirDate: "2019-11-12", lastAirDate: "2023-04-19", totalSeasons: "3", plot: "A bounty hunter protects a mysterious child in Star Wars universe"})
CREATE (s5)-[:DIRECTED]->(d)
CREATE (a)-[:ACTED_IN {role: "The Mandalorian", style: "Lead"}]->(s5)
CREATE (s5)-[:IN_GENRE]->(g1)
CREATE (s5)-[:IN_GENRE]->(g2)
CREATE (s5)-[:IN_GENRE]->(g3);

// Serie 6: Game of Thrones
MATCH (d:Director {id: "dir003"}), (a:Actor {id: "actor011"}), (g1:Genre {name: "Drama"}), (g2:Genre {name: "Action"}), (g3:Genre {name: "Fantasy"})
CREATE (s6:Serie {id: "serie006", title: "Game of Thrones", firstAirDate: "2011-04-17", lastAirDate: "2019-05-19", totalSeasons: "8", plot: "Noble families vie for control of the Iron Throne"})
CREATE (s6)-[:DIRECTED]->(d)
CREATE (a)-[:ACTED_IN {role: "Daenerys Targaryen", style: "Lead"}]->(s6)
CREATE (s6)-[:IN_GENRE]->(g1)
CREATE (s6)-[:IN_GENRE]->(g2)
CREATE (s6)-[:IN_GENRE]->(g3);

// Serie 7: The Office
MATCH (d:Director {id: "dir002"}), (a:Actor {id: "actor014"}), (g1:Genre {name: "Comedy"}), (g2:Genre {name: "Drama"})
CREATE (s7:Serie {id: "serie007", title: "The Office", firstAirDate: "2005-03-24", lastAirDate: "2013-05-16", totalSeasons: "9", plot: "Mockumentary about office employees at a paper company"})
CREATE (s7)-[:DIRECTED]->(d)
CREATE (a)-[:ACTED_IN {role: "Michael Scott", style: "Lead"}]->(s7)
CREATE (s7)-[:IN_GENRE]->(g1)
CREATE (s7)-[:IN_GENRE]->(g2);

// Serie 8: Sherlock
MATCH (d:Director {id: "dir003"}), (a:Actor {id: "actor007"}), (g1:Genre {name: "Crime"}), (g2:Genre {name: "Drama"}), (g3:Genre {name: "Thriller"})
CREATE (s8:Serie {id: "serie008", title: "Sherlock", firstAirDate: "2010-07-25", lastAirDate: "2017-01-15", totalSeasons: "4", plot: "Modern adaptation of Sherlock Holmes stories"})
CREATE (s8)-[:DIRECTED]->(d)
CREATE (a)-[:ACTED_IN {role: "Narrator", style: "Supporting"}]->(s8)
CREATE (s8)-[:IN_GENRE]->(g1)
CREATE (s8)-[:IN_GENRE]->(g2)
CREATE (s8)-[:IN_GENRE]->(g3);

// Serie 9: Westworld
MATCH (d:Director {id: "dir007"}), (a:Actor {id: "actor008"}), (g1:Genre {name: "Sci-Fi"}), (g2:Genre {name: "Thriller"}), (g3:Genre {name: "Drama"})
CREATE (s9:Serie {id: "serie009", title: "Westworld", firstAirDate: "2016-10-02", lastAirDate: "2022-08-14", totalSeasons: "4", plot: "Androids gain consciousness in a futuristic theme park"})
CREATE (s9)-[:DIRECTED]->(d)
CREATE (a)-[:ACTED_IN {role: "Various Hosts", style: "Guest"}]->(s9)
CREATE (s9)-[:IN_GENRE]->(g1)
CREATE (s9)-[:IN_GENRE]->(g2)
CREATE (s9)-[:IN_GENRE]->(g3);

// Serie 10: The Witcher
MATCH (d:Director {id: "dir005"}), (a:Actor {id: "actor013"}), (g1:Genre {name: "Action"}), (g2:Genre {name: "Drama"}), (g3:Genre {name: "Fantasy"})
CREATE (s10:Serie {id: "serie010", title: "The Witcher", firstAirDate: "2019-12-20", lastAirDate: "2023-07-27", totalSeasons: "3", plot: "A mutated monster hunter struggles to find his place"})
CREATE (s10)-[:DIRECTED]->(d)
CREATE (a)-[:ACTED_IN {role: "Geralt of Rivia", style: "Lead"}]->(s10)
CREATE (s10)-[:IN_GENRE]->(g1)
CREATE (s10)-[:IN_GENRE]->(g2)
CREATE (s10)-[:IN_GENRE]->(g3);

// ==========================================
// PARTE 8: RELACIONAMENTOS - USUÁRIOS ASSISTEM
// ==========================================

// User 1 - Ana Silva
MATCH (u:User {id: "user001"}), (m1:Movie {id: "movie001"}), (m2:Movie {id: "movie009"}), (s1:Serie {id: "serie002"}), (s2:Serie {id: "serie003"})
CREATE (u)-[:WATCHED {rating: 5}]->(m1)
CREATE (u)-[:WATCHED {rating: 4}]->(m2)
CREATE (u)-[:WATCHED {rating: 5}]->(s1)
CREATE (u)-[:WATCHED {rating: 4}]->(s2);

// User 2 - Bruno Costa
MATCH (u:User {id: "user002"}), (m1:Movie {id: "movie003"}), (m2:Movie {id: "movie004"}), (s1:Serie {id: "serie001"}), (s2:Serie {id: "serie006"})
CREATE (u)-[:WATCHED {rating: 5}]->(m1)
CREATE (u)-[:WATCHED {rating: 5}]->(m2)
CREATE (u)-[:WATCHED {rating: 5}]->(s1)
CREATE (u)-[:WATCHED {rating: 4}]->(s2);

// User 3 - Carla Mendes
MATCH (u:User {id: "user003"}), (m1:Movie {id: "movie005"}), (m2:Movie {id: "movie009"}), (s1:Serie {id: "serie003"}), (s2:Serie {id: "serie007"})
CREATE (u)-[:WATCHED {rating: 5}]->(m1)
CREATE (u)-[:WATCHED {rating: 5}]->(m2)
CREATE (u)-[:WATCHED {rating: 4}]->(s1)
CREATE (u)-[:WATCHED {rating: 5}]->(s2);

// User 4 - Diego Oliveira
MATCH (u:User {id: "user004"}), (m1:Movie {id: "movie006"}), (m2:Movie {id: "movie007"}), (s1:Serie {id: "serie004"}), (s2:Serie {id: "serie009"})
CREATE (u)-[:WATCHED {rating: 5}]->(m1)
CREATE (u)-[:WATCHED {rating: 4}]->(m2)
CREATE (u)-[:WATCHED {rating: 5}]->(s1)
CREATE (u)-[:WATCHED {rating: 4}]->(s2);

// User 5 - Elisa Santos
MATCH (u:User {id: "user005"}), (m1:Movie {id: "movie002"}), (m2:Movie {id: "movie008"}), (s1:Serie {id: "serie005"}), (s2:Serie {id: "serie010"})
CREATE (u)-[:WATCHED {rating: 5}]->(m1)
CREATE (u)-[:WATCHED {rating: 4}]->(m2)
CREATE (u)-[:WATCHED {rating: 5}]->(s1)
CREATE (u)-[:WATCHED {rating: 4}]->(s2);

// User 6 - Fernando Lima
MATCH (u:User {id: "user006"}), (m1:Movie {id: "movie003"}), (m2:Movie {id: "movie010"}), (s1:Serie {id: "serie006"}), (s2:Serie {id: "serie008"})
CREATE (u)-[:WATCHED {rating: 4}]->(m1)
CREATE (u)-[:WATCHED {rating: 5}]->(m2)
CREATE (u)-[:WATCHED {rating: 5}]->(s1)
CREATE (u)-[:WATCHED {rating: 4}]->(s2);

// User 7 - Gabriela Rocha
MATCH (u:User {id: "user007"}), (m1:Movie {id: "movie001"}), (m2:Movie {id: "movie004"}), (s1:Serie {id: "serie002"}), (s2:Serie {id: "serie004"})
CREATE (u)-[:WATCHED {rating: 5}]->(m1)
CREATE (u)-[:WATCHED {rating: 5}]->(m2)
CREATE (u)-[:WATCHED {rating: 4}]->(s1)
CREATE (u)-[:WATCHED {rating: 5}]->(s2);

// User 8 - Henrique Alves
MATCH (u:User {id: "user008"}), (m1:Movie {id: "movie007"}), (m2:Movie {id: "movie006"}), (s1:Serie {id: "serie009"}), (s2:Serie {id: "serie005"})
CREATE (u)-[:WATCHED {rating: 5}]->(m1)
CREATE (u)-[:WATCHED {rating: 5}]->(m2)
CREATE (u)-[:WATCHED {rating: 4}]->(s1)
CREATE (u)-[:WATCHED {rating: 5}]->(s2);

// User 9 - Isabela Ferreira
MATCH (u:User {id: "user009"}), (m1:Movie {id: "movie005"}), (m2:Movie {id: "movie009"}), (s1:Serie {id: "serie007"}), (s2:Serie {id: "serie003"})
CREATE (u)-[:WATCHED {rating: 4}]->(m1)
CREATE (u)-[:WATCHED {rating: 5}]->(m2)
CREATE (u)-[:WATCHED {rating: 5}]->(s1)
CREATE (u)-[:WATCHED {rating: 4}]->(s2);

// User 10 - João Pereira
MATCH (u:User {id: "user010"}), (m1:Movie {id: "movie002"}), (m2:Movie {id: "movie010"}), (s1:Serie {id: "serie001"}), (s2:Serie {id: "serie010"})
CREATE (u)-[:WATCHED {rating: 5}]->(m1)
CREATE (u)-[:WATCHED {rating: 5}]->(m2)
CREATE (u)-[:WATCHED {rating: 5}]->(s1)
CREATE (u)-[:WATCHED {rating: 4}]->(s2);