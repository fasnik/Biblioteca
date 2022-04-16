import sqlite3

def create_table_leitor(cursor):
    cursor.execute(
    '''
        CREATE TABLE IF NOT EXISTS Leitor (   
            id_leitor int PRIMARY KEY,
            matricula text UNIQUE,
            nome text,
            turma text,
            endereco text,
            foto text,
            email text
    )
    ''')
    print("Tabela Leitor criada")
def create_table_livro(cursor):
    # nacional e em_pt_br int, mas são bool
    cursor.execute(
    '''
        CREATE TABLE IF NOT EXISTS  Livro(   
            id_livro int PRIMARY KEY,
            registro text,
            titulo text,
            volume text,
            nacional int,
            em_pt_br int
            imagem text
    )
    ''')
    print("Tabela Livro criada")
def create_table_telefone(cursor):
    cursor.execute(
    '''
        CREATE TABLE IF NOT EXISTS Telefone(   
            id_telefone int PRIMARY KEY,
            id_leitor int, 
            numero text,
            tipo text,
            contato text,
            FOREIGN KEY(id_leitor) REFERENCES Leitor(id_leitor)
            )
    ''')
    print("Tabela Telefone criada")
def create_table_emprestimo(cursor):
    # tipo e status int, mas são enum
    cursor.execute(
    '''
        CREATE TABLE IF NOT EXISTS Emprestimo(  
            id_emprestimo int PRIMARY KEY,
            id_leitor int,
            id_livro int,
            data_retirada text,
            data_prev_devolucao text,
            data_devolucao text,
            tipo int,
            status int,
            FOREIGN KEY (id_leitor) REFERENCES Leitor(id_leitor),
            FOREIGN KEY (id_livro)  REFERENCES Leitor(id_livro)
        )
    ''')
    print("Tabela Emprestimo criada")
def create_table_autor(cursor):
    # tipo e status int, mas são enum
    cursor.execute(
    '''
        CREATE TABLE IF NOT EXISTS Autor(  
            id_autor int PRIMARY KEY,
            nome_autor text,
            bio_autor text
    )
    ''')
    print("Tabela Autor criada")
def create_table_genero(cursor):
    # tipo e status int, mas são enum
    cursor.execute(
    '''
        CREATE TABLE IF NOT EXISTS Genero(  
            id_genero int PRIMARY KEY,
            nome_genero text,
            descricao_genero text
    )
    ''')
    print("Tabela Genero criada")
def create_table_colecao(cursor):
    # tipo e status int, mas são enum
    cursor.execute(
    '''
        CREATE TABLE IF NOT EXISTS Colecao(  
            id_colecao int PRIMARY KEY,
            nome_colecao text,
            descricao_colecao text
    )
    ''')
    print("Tabela Colecao criada")
def create_table_editora(cursor):
    # tipo e status int, mas são enum
    cursor.execute(
    '''
        CREATE TABLE IF NOT EXISTS Editora(  
            id_editora int PRIMARY KEY,
            nome_editora text    
        )
    ''')
    print("Tabela Editora criada")
def create_table_livro_autor(cursor):
    cursor.execute(
    '''
        CREATE TABLE IF NOT EXISTS LivroAutor(   
            id_livro int,
            id_autor int, 
                FOREIGN KEY(id_livro) REFERENCES Livro(id_livro),
                FOREIGN KEY(id_autor) REFERENCES Autor(id_autor) 
    )
    ''')
    print("Tabela LivroAutor criada")
def create_table_livro_genero(cursor):
    cursor.execute(
    '''
        CREATE TABLE IF NOT EXISTS LivroGenero
        (   id_livro int ,
            id_genero int, 
                FOREIGN KEY(id_livro) 
                REFERENCES Livro(id_livro),
                FOREIGN KEY(id_genero) 
                REFERENCES Genero(id_genero)
    )
    ''')
    print("Tabela LivroGenero criada")
def create_table_livro_colecao(cursor):
    cursor.execute(
    '''
        CREATE TABLE IF NOT EXISTS LivroColecao
        (   id_livro int,
            id_colecao int, 
                FOREIGN KEY(id_livro) 
                REFERENCES Livro(id_livro),
                FOREIGN KEY(id_colecao) 
                REFERENCES Colecao(id_colecao)
    )
    ''')
    print("Tabela LivroColecao criada")
def create_table_livro_editora(cursor):
    cursor.execute(
    '''
        CREATE TABLE IF NOT EXISTS LivroEditora
        (   id_livro int ,
            id_editora int, 
                FOREIGN KEY(id_livro) 
                REFERENCES Livro(id_livro),
                FOREIGN KEY(id_editora) 
                REFERENCES Editora(id_editora)
    )
    ''')
    print("Tabela LivroEditora criada")

def show_tables(cursor):
    tables = cursor.execute("""
    SELECT name 
    FROM sqlite_master
    WHERE type ='table' 
    AND name NOT LIKE 'sqlite_%';
    """)
    for table in tables:
        print(table)

try:
    con = sqlite3.connect('biblioteca.db')
    cur = con.cursor()

    show_tables(cur)
    create_table_leitor(cur)
    create_table_livro(cur)
    create_table_telefone(cur)
    create_table_emprestimo(cur)
    create_table_autor(cur)
    create_table_genero(cur)
    create_table_colecao(cur)
    create_table_editora(cur)
    create_table_livro_autor(cur)
    create_table_livro_genero(cur)
    create_table_livro_colecao(cur)
    create_table_editora(cur)
    print("----------\n Fim da criação das tabelas \n -----------")
   
    con.close()

except Exception as e:
    print(e)
    print('Não foi possível de conectar ao banco de dados')