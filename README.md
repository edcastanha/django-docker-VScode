# PREPARAÇÂO 

```
git init
```

Na sequencia criamos este REAME e comitamos e criaremos a Branch MAin para padronizar:

```
git commit -m "REAME criado e Branch Main"
```

```
git branch -M main
```

Substitua o "link" pelo url padrão do seu repositório.
```
git remote add origin <link>
```
Vamos add a branch Main como padrão
```
git push -u origin main
```



# INICIALIZAÇÃO

Primeiramente vamos executar o docker run para inicializar o Django diretamente no cointaner

#DOCKER
Boilerplate Django via Docker
```
docker run -v ${PWD}/web:/app -w /app python:3.7-alpine sh -c "pip install Django==3.2 && django-admin startproject app ."
```
Estando na pasta do seu Dockerfile
Criando a image:
```
docker build -t NOME_USER/NOME_IMAGE:TAG .
```
Teste sua image local, estando tudo OK publique no DockerHub
Exemplo:
```
docker push edcastanha/idandes:python3.7-debug
```

Resultado: https://hub.docker.com/r/edcastanha/idandes
