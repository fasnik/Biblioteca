import sqlite3
from traceback import print_tb
class DB:
    def __init__(self) -> None:
        self.con = sqlite3.connect('biblioteca.db')
        self. cur = self.con.cursor()


    # CREATE METHODS
    def create_table_leitor(self):
        self.cur.execute(
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
    def create_table_livro(self):
        # nacional e em_pt_br int, mas são bool
        self.cur.execute(
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
    def create_table_telefone(self):
        self.cur.execute(
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
    def create_table_emprestimo(self):
        # tipo e status int, mas são enum
        self.cur.execute(
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
    def create_table_autor(self):
        # tipo e status int, mas são enum
        self.cur.execute(
        '''
            CREATE TABLE IF NOT EXISTS Autor(  
                id_autor int PRIMARY KEY,
                nome_autor text,
                bio_autor text
        )
        ''')
        print("Tabela Autor criada")
    def create_table_genero(self):
        # tipo e status int, mas são enum
        self.cur.execute(
        '''
            CREATE TABLE IF NOT EXISTS Genero(  
                id_genero int PRIMARY KEY,
                nome_genero text,
                descricao_genero text
        )
        ''')
        print("Tabela Genero criada")
    def create_table_colecao(self):
        # tipo e status int, mas são enum
        self.cur.execute(
        '''
            CREATE TABLE IF NOT EXISTS Colecao(  
                id_colecao int PRIMARY KEY,
                nome_colecao text,
                descricao_colecao text
        )
        ''')
        print("Tabela Colecao criada")
    def create_table_editora(self):
        # tipo e status int, mas são enum
        self.cur.execute(
        '''
            CREATE TABLE IF NOT EXISTS Editora(  
                id_editora int PRIMARY KEY,
                nome_editora text    
            )
        ''')
        print("Tabela Editora criada")
    def create_table_livro_autor(self):
        self.cur.execute(
        '''
            CREATE TABLE IF NOT EXISTS LivroAutor(   
                id_livro int,
                id_autor int, 
                    FOREIGN KEY(id_livro) REFERENCES Livro(id_livro),
                    FOREIGN KEY(id_autor) REFERENCES Autor(id_autor) 
        )
        ''')
        print("Tabela LivroAutor criada")
    def create_table_livro_genero(self):
        self.cur.execute(
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
    def create_table_livro_colecao(self):
        self.cur.execute(
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
    def create_table_livro_editora(self):
        self.cur.execute(
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
    def create_all_tables(self,cur):
        self.create_table_leitor(cur)
        self.create_table_livro(cur)
        self.create_table_telefone(cur)
        self.create_table_emprestimo(cur)
        self.create_table_autor(cur)
        self.create_table_genero(cur)
        self.create_table_colecao(cur)
        self.create_table_editora(cur)
        self.create_table_livro_autor(cur)
        self.create_table_livro_genero(cur)
        self.create_table_livro_colecao(cur)
        self.create_table_editora(cur)
        print("----------\n Fim da criação das tabelas \n -----------")

    # SHOW METHODS
    def show_tables(self):
        tables = cursor.execute("""
        SELECT name 
        FROM sqlite_master
        WHERE type ='table' 
        AND name NOT LIKE 'sqlite_%';
        """)
        for table in tables:
            print(table)
    def show_leitores(self):
        pass
    def show_selected_leitores(self, search_leitor):
        nome = "%"+search_leitor[0]+"%"
        matricula = "%"+search_leitor[1]+"%"
        turma = "%"+search_leitor[2]+"%"
        self.cur.execute(
        '''
            SELECT * FROM Leitor WHERE nome LIKE ? AND matricula LIKE ? AND turma LIKE ?  ''', (nome, matricula, turma))
        rows = self.cur.fetchall()
        print("resultado da busca")
        for row in rows:
            print(row)

        return rows

   # INSERT METHODS
    def insert_leitor(self, leitor):
        self.cur.execute(
        '''tur
            INSERT INTO Leitor (matricula, nome, turma, endereco, foto, email) VALUES (?,?,?,?,?,?)
        ''', leitor)
        self.con.commit()
        return self.cur.lastrowid

