from sqlalchemy import create_engine

# Substitua com a URL de conexão do seu banco de dados
DATABASE_URL = "postgresql+psycopg2://root:senai123@localhost:3306/projetodiario1"

# Cria uma engine para conectar ao banco de dados
engine = create_engine(DATABASE_URL)

# Testa a conexão
try:
    with engine.connect() as connection:
        print("Conexão bem-sucedida!")
except Exception as e:
    print(f"Erro ao conectar: {e}")
