
import mysql.connector

#conectar banco no python
#172.17.0.3 <--- IP do container ; host: pode ser nome oi ip
db = mysql.connector.connect(host='mydb', user='root', \
    password='root', port=3306)

#objeto do python que permite executar sql nele
my_cursor=db.cursor()
#usar if exists pq senao tiver o banco, ele dara erro. usando assim, a gnt se livra do erro
my_cursor.execute('DROP database IF EXISTS brq')
my_cursor.execute('CREATE DATABASE IF NOT EXISTS brq_python')

my_cursor.execute('use brq_python')
my_cursor.execute('CREATE TABLE IF NOT EXISTS feras_brq( nome varchar(255), email varchar(255) )')
my_cursor.execute('INSERT INTO feras_brq (nome,email) VALUES ("Joao", "j@j.com" )')

#atualiza para o banco no container
db.commit()

#fechar a conexao
my_cursor.close()


#fazer o build (em caso de alteração/atualizaçao das informações do script):
# ----->>>>     docker build -t python-mysql .
