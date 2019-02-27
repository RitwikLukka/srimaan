from django import forms
from django.forms import ModelForm
from home.models import Question
from home.models import Feedback,Adminupload,Test,Tt,Demo,Subs
from django.http import HttpResponse
from home.models import Admin,Images
from home.models import Courses
from home.models import Job


class question(forms.Form):
    Name=forms.CharField(max_length=200)
    EmailId=forms.CharField(max_length=200)
    phone=forms.IntegerField()
    question=forms.CharField(max_length=200)


class LoginForm(forms.Form):
   Name = forms.CharField(max_length = 100)
   EmailId = forms.CharField(max_length=100)
   phone=forms.IntegerField()
   question=forms.CharField(max_length=200)
   def clean_message(self):
       Name= self.cleaned_data.get("Name")
       EmailId= self.cleaned_data.get("EmailId")
       question=self.cleaned_data.get("question")

class feedback(forms.Form):
    name=forms.CharField(max_length=200)
    city=forms.CharField(max_length=200)
    feedback=forms.CharField(max_length=255)

class validation(forms.Form):
    username = forms.CharField(max_length = 100)
    password = forms.CharField(max_length=100)
    def clean_message(self):
        username = self.cleaned_data.get("username")
        password = self.cleaned_data.get("password")
        dbuser = Admin.objects.filter(username = username)
        dbpass = Admin.objects.filter(password = password)
        if not(dbuser & dbpass):
            return "login"
        else:
            return username

class upload(forms.Form):

    content=forms.CharField(max_length=255)
    link = forms.FileField(widget=forms.FileInput(
                                                attrs={
                                                    'accept':'.docx , .doc'
                                                }
                                                ))


class uploads(forms.Form):
    content=forms.CharField(max_length=255)
    image = forms.ImageField()
    link = forms.CharField(max_length=50)

class upld(forms.Form):
    content=forms.CharField(max_length=255)
    link = forms.FileField()

class ImageForm(forms.ModelForm):
    image = forms.ImageField(label='Image')
    class Meta:
        model = Images
        fields = ('image', )


class r(forms.Form):
    year=forms.CharField(max_length=100)
    image = forms.ImageField()
    content = forms.CharField(max_length=11)

class r3(forms.Form):
    content=forms.CharField(max_length=255)
    links = forms.CharField(max_length=100)

class jb(forms.Form):
    firstname=forms.CharField(max_length=200)
    lastname=forms.CharField(max_length=200)
    gender=forms.CharField(max_length=200)
    emailid=forms.CharField(max_length=200)
    education_qualification=forms.CharField(max_length=200)
    contactnumber=forms.IntegerField()
    postapplied=forms.CharField(max_length=200)
    upload=forms.CharField(max_length=100)


class cour(forms.Form):
    firstname=forms.CharField(max_length=200)
    lastname=forms.CharField(max_length=200)
    gender=forms.CharField(max_length=200)
    email_address=forms.CharField(max_length=200)
    education_qualification=forms.CharField(max_length=200)
    course=forms.CharField(max_length=200)
    contact_number=forms.IntegerField()
    residential_address=forms.CharField(max_length=200)

class subs(forms.Form):
    name=forms.CharField(max_length=255)
    phone=forms.IntegerField()
    email=forms.CharField(max_length=255)
    address=forms.CharField(max_length=255)
    send_via=forms.CharField(max_length=255)
