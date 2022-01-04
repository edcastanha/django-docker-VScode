from django.http import HttpResponse


def index(request):
    return HttpResponse('Viwes Padrão')