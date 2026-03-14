import requests
import mysql.connector


def buscar_projetos_github(termo):
    print(f"Buscando projetos sobre '{termo}' no GitHub...")
    # URL da API de busca de repositórios do GitHub
    url = f"https://api.github.com/search/repositories?q={termo}&sort=stars&order=desc"

    response = requests.get(url)

    if response.status_code == 200:
        # A API retorna um JSON, transformamos em dicionário Python
        dados = response.json()
        return dados['items'][:10]  # Vamos pegar apenas os 10 melhores resultados
    else:
        print(f"Erro ao acessar API do GitHub: {response.status_code}")
        return []


def salvar_no_banco(lista_repos):
    config = {
        'host': 'localhost',
        'user': 'root',
        'password': '',
        'database': 'poc_teste_romulo'
    }

    try:
        conn = mysql.connector.connect(**config)
        cursor = conn.cursor()

        # Em vez de apenas INSERT, usamos INSERT IGNORE
        query = "INSERT IGNORE INTO repositorios (nome, url, estrelas) VALUES (%s, %s, %s)"

        for repo in lista_repos:
            # Extraindo apenas o que nos interessa do JSON do GitHub
            valores = (repo['name'], repo['html_url'], repo['stargazers_count'])
            cursor.execute(query, valores)

        conn.commit()
        print(f"ÓTIMO! {len(lista_repos)} novos projetos salvos no seu MySQL.")

    except mysql.connector.Error as err:
        print(f"Erro no MySQL: {err}")
    finally:
        if 'conn' in locals() and conn.is_connected():
            cursor.close()
            conn.close()


if __name__ == "__main__":
    # Escolha o termo que quiser (ex: 'python', 'arduino', 'machine learning')
    termo_de_busca = input("O que você quer buscar no GitHub? ")

    resultados = buscar_projetos_github(termo_de_busca)

    if resultados:
        salvar_no_banco(resultados)
    else:
        print("Nenhum resultado encontrado ou erro na busca.")