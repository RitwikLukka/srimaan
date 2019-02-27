from django import template
from ..models import Archives

register = template.Library()

@register.filter
def title(value):
    obj = Archives.objects.filter(active=1).order_by('-updated_on')[:5]
    return obj[value].title
@register.filter
def updated_on(value):
    obj = Archives.objects.filter(active=1).order_by('-updated_on')[:5]
    return obj[value].updated_on
@register.filter
def updated_on1(obj,value):
    return obj[value].updated_on

@register.filter
def title1(obj,value):
    return obj[value].title

@register.filter
def title3(value,key):
    obj = Archives.objects.filter(title=key).order_by('-updated_on')[:5]
    return obj[value].title
@register.simple_tag(takes_context=True)
def img(context,value,obj):
    return obj[value] 
@register.simple_tag(takes_context=True)
def img1(context,value,obj):
    return obj[value]     