-- Função para obter a resposta do chat bot
function obterResposta(pergunta)
  -- Lista de perguntas e respostas
  local perguntas = {
    ["Olá"] = "Olá! faça  uma pergunta?",
    ["Como você está?"] = "Eu sou um programa, então não sinto emoções, mas estou funcionando corretamente!",
    ["Qual é o seu nome?"] = "número 18",
    ["O que você pode fazer?"] = "consigo responde as seguintes preguntas.\nComo você está?,\nQual é o seu nome?\nO que você pode fazer?,\nQuem é o seu criador?,\nQual é a capital do Brasil?,\nMe conte uma piada.n\nQuanto é 2 + 2?\nQual é a cor do céu?Que horas você nasceu?\nOnde você mora?\nQual é a sua comida favorita?\nComo posso aprender programação?\nQual é o maior animal do mundo?\nVocê acredita em extraterrestres?\nComo é o clima hoje?\nMe recomende um filme.\nO que é a Lua?\nQual é o significado da vida?\nQuais são as notícias de hoje?\nVocê gosta de música?",
    ["Quem é o seu criador?"] = "tinha um cara sem fazer nada em casa, então ele teve uma ideia brilhante. e aqui estou",
    ["Qual é a capital do Brasil?"] = "Brasília",
    ["Me conte uma piada"] = " O que o ketchup disse para a batata?É nós na frita!",
    ["Quanto é 2 + 2?"] = "4",
    ["Qual é a cor do céu?"] = "azul",
    ["Que horas você nasceu?"] = "O meu nascimento foi em agosto de 2023.E como se diz na bahia: eu não nasci, eu estreei. 😸",
    ["Onde você mora?"] = "Eu moro na nuvem.Injevosos vão falar que é aonde o vento faz a chuva ",
    ["Qual é a sua comida favorita?"] = "gosto de emojis de droces.Queria muito um de paçoca",
    ["Como posso aprender programação?"] = "Divirta-se: Aprender programação pode ser um desafio, mas também pode ser divertido. Encontre projetos e problemas que o interessem e desfrute do processo de aprender e criar.",
    ["Qual é o maior animal do mundo?"] = "baleia-azul.",
    ["Me recomende um filme."] = "Um filme e muito pouco, recomendo Universo marvel todo.",
    ["O que é a Lua?"] = "A Lua é o único satélite natural da Terra.",
    ["Qual é o significado da vida?"] = "pessoas mais inteligentes do que eu estão trabalhando para encontrar essa resposta",
    ["Quais são as notícias de hoje?"] = "Cachorrinho dá susto em donos e viraliza na web.https://g1.globo.com/planeta-bizarro/noticia/2020/03/24/cachorrinho-da-susto-em-donos-e-viraliza-na-web.ghtml",
    ["Você gosta de música?"] = "Eu amo música, tem estilos para todos os gostos"

    -- Adicione mais perguntas e respostas aqui
  }

  -- Verificar se há uma resposta para a pergunta
  local resposta = perguntas[pergunta]

  -- Retorna a resposta ou uma mensagem padrão se não houver uma resposta definida
  return resposta or "Desculpe, não entendi a pergunta."
end

-- Função principal do chat bot
function chatBot()
  print("Olá! Eu sou a numero 18. Digite 'sair' para encerrar o chat.q")

  while true do
    --io.write("> ")
    local pergunta = io.read()

    if pergunta:lower() == "sair" then
      print("Até mais!")
      break
    end

    local resposta = obterResposta(pergunta)
    print(resposta)
  end
end

-- Iniciar o chat bot
chatBot()
