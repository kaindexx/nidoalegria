from django.http import HttpRequest, HttpResponse
from django.shortcuts import render
from django.template import Template, Context
from django.template.loader import get_template
import datetime

from tfinalapp.models import Persona
# Create your views here.


def saludo(request):
    return HttpResponse("PROBAMDO sexo sexo")


def principal(request):
    fecha_actual = datetime.datetime.now()
    plantillaExterna = get_template('index.html')
    documento = plantillaExterna.render({"fecha":fecha_actual})
    return HttpResponse (documento)


def nosotros(request):
    fecha_actual = datetime.datetime.now()
    plantillaExterna = get_template('nosotros.html')
    documento = plantillaExterna.render({"fecha":fecha_actual})
    return HttpResponse (documento)


def servicios(request):
    fecha_actual = datetime.datetime.now()
    plantillaExterna = get_template('servicios.html')
    documento = plantillaExterna.render({"fecha":fecha_actual})
    return HttpResponse (documento)


def portalacademico(request):
    fecha_actual = datetime.datetime.now()
    plantillaExterna = get_template('portalacademico.html')
    documento = plantillaExterna.render({"fecha":fecha_actual})
    return HttpResponse (documento)


def metodologia(request):
    fecha_actual = datetime.datetime.now()
    plantillaExterna = get_template('metodologia.html')
    documento = plantillaExterna.render({"fecha":fecha_actual})
    return HttpResponse (documento)


def galeria(request):
    fecha_actual = datetime.datetime.now()
    plantillaExterna = get_template('galeria.html')
    documento = plantillaExterna.render({"fecha":fecha_actual})
    return HttpResponse (documento)


def contacto(request):
    fecha_actual = datetime.datetime.now()
    plantillaExterna = get_template('contacto.html')
    documento = plantillaExterna.render({"fecha":fecha_actual})
    return HttpResponse (documento)


def matricula(request):
    persona = Persona.objects.all()

    if request.POST:
        nom = request.POST['TextNombre']
        busqueda = Persona.objects.filter(nom_p__contains=nom)
    else:
        busqueda = []
    return render(request, "matricula.html",{"personas":persona, "buscar": busqueda})