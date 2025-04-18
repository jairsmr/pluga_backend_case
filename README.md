# Desafio da Pluga - Dev back-end

Nós da Pluga nos orgulhamos do nosso time e queremos sempre boas pessoas que acrescentem, por isso gostamos de testar quem se candidata.

Esse é um desafio que queremos que você supere:

1. Desenvolver uma API que receba uma mensagem e uma lista de emails via POST, seguindo o padrão REST;

schema:
```
{ message: String, emails: String[] }
```

exemplo:
```
{
  "message": "Olá! você tá sendo convidado pro meu aniversário",
  "emails": ["alice@example.com", "joao@example.com"]
}
```

2. Essa API deve inserir numa fila a tarefa de enviar a mensagem para ser processada por um processo worker;

3. Deve evistir uma tarefa para cada mensagem/email, então se a API receber uma mensagem com dois emails deve gerar duas tarefas;

4. O worker deve consumir as tarefas da fila e enviar a mensagem através do [SendGrid](https://sendgrid.com).

Iremos julgar pelos critérios: legibilidade do código, separação de responsabilidades e expressividade dos nomes.

## Requisitos técnicos:

1. O desafio deve ser feito com as seguintes tecnologias:
  - [Ruby on Rails](https://github.com/rails/rails) como framework web
  - [Sidekiq](https://github.com/sidekiq/sidekiq) como framework de background processing

2. Seu projeto deve ser containerizado e deve ser possível subir seu app e as dependências através do [Docker Compose](https://docs.docker.com/compose);

3. Escreva testes.

Mantenha as coisas simples, boa sorte! ;)
