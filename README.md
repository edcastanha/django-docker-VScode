# PREPARAÇÂO 

```git init```

Na sequencia criamos este REAME e comitamos e criaremos a Branch MAin para padronizar:
```git commit -m "REAME criado e Branch Main"```
```git branch -M main```


Substitua o " <link> (seu repositório) pelo url padrão.
```git remote add origin <link>```
```git push -u origin main```



# INICIALIZAÇÃO

Primeiramente vamos executar o docker run para inicializar o Django diretamente no cointaner

#DOCKER
Boilerplate Django via Docker
```
docker run -v ${PWD}/web:/app -w /app python:3.7-alpine sh -c "pip install Django==3.2 && django-admin startproject app ."
```
