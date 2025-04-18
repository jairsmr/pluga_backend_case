# syntax=docker/dockerfile:1
FROM ruby:3.2.2

# Instalar dependências
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Criar diretório da aplicação
WORKDIR /app

# Copiar arquivos
COPY Gemfile* ./
RUN bundle install

# Copiar o restante do app
COPY . .

# Expor porta
EXPOSE 3000

# Comando padrão
CMD ["bash", "-c", "rm -f tmp/pids/server.pid && bundle exec rails s -b 0.0.0.0"]
