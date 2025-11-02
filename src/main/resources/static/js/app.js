const BASE_URL = "http://localhost:8080"

function buscarJogo() {
    // A lógica de busca continua a mesma, mas agora está em um arquivo separado.
    const id = document.getElementById('gameId').value;
    const url = `${BASE_URL}/games/${id}`;
    const output = document.getElementById('output');
    
    output.textContent = 'Buscando...';

    fetch(url)
        .then(response => {
            if (response.ok) {
                return response.json();
            }
            // Lançamos um erro para cair no .catch()
            return response.json().then(errorData => {
                throw new Error(`Erro ${response.status}: ${errorData.message || errorData.error}`);
            });
        })
        .then(data => {
            output.textContent = '--- Jogo Encontrado ---\n' + JSON.stringify(data, null, 2);
        })
        .catch(error => {
            output.textContent = `Falha na requisição:\n${error.message}`;
            console.error('Erro na requisição:', error);
        });
}

function listarTodosOsJogos() {
    // Presumindo que o endpoint para listar todos é apenas /games
    const url = `${BASE_URL}/games`; 
    const output = document.getElementById('output');
    
    output.textContent = 'Buscando lista de jogos...';

    fetch(url)
        .then(response => {
            if (!response.ok) {
                 throw new Error(`Erro ao listar jogos: Status ${response.status}`);
            }
            return response.json();
        })
        .then(data => {
            // Verifica se a lista está vazia
            if (data.length === 0) {
                 output.textContent = 'Nenhum jogo cadastrado.';
                 return;
            }
            
            // Exibe a lista completa
            output.textContent = '--- Lista Completa de Jogos ---\n' + JSON.stringify(data, null, 2);
        })
        .catch(error => {
            output.textContent = `Falha ao listar:\n${error.message}`;
            console.error('Erro na requisição:', error);
        });
}

// Chama a função de listagem assim que a página é carregada.
document.addEventListener('DOMContentLoaded', listarTodosOsJogos);