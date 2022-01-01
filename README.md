






##INICIALIZAÇÃO

Primeiramente vamos executar o docker run para inicializar o Django diretamente no cointaner

##COMMAND

```
docker run -v ${PWD}/web:/app -w /app python:3.7-alpine sh -c "pip install Django==3.2 && django-admin startproject app ."
```


