# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from __future__ import unicode_literals
from django.db import models
from django.utils.deconstruct import deconstructible
import os,time
import datetime


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=80)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.SmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class HomeR1C1(models.Model):
    name = models.CharField(max_length=100)
    content = models.TextField()
    image = models.ImageField(upload_to='images')
    path = models.CharField(max_length=256)
    updated_by = models.CharField(max_length=100)
    updated_on = models.DateTimeField()
    active = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'home_r1c1'


class HomeR1C2(models.Model):
    name = models.CharField(max_length=255)
    content = models.TextField()
    event_date = models.DateField()
    links = models.CharField(max_length=100)
    image = models.ImageField(upload_to='images')
    updated_by = models.CharField(max_length=100)
    updated_on = models.DateTimeField()
    active = models.IntegerField()
    details = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'home_r1c2'

class HomeR1C3A(models.Model):
    name = models.CharField(max_length=255)
    content = models.TextField()
    links = models.CharField(max_length=100)
    image = models.ImageField(upload_to='images')
    updated_by = models.CharField(max_length=100)
    updated_on = models.DateTimeField()
    active = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'home_r1c3a'


class HomeR1C3B(models.Model):
    name = models.CharField(max_length=255)
    content = models.TextField()
    links = models.CharField(max_length=100)
    updated_by = models.CharField(max_length=100)
    updated_on = models.DateTimeField()
    active = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'home_r1c3b'

class HomeR2(models.Model):
    name = models.CharField(max_length=255)
    content = models.TextField()
    image = models.ImageField(upload_to='images')
    links = models.CharField(max_length=100)
    updated_by = models.CharField(max_length=100)
    updated_on = models.DateTimeField()
    active = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'home_r2'

class HomeR3(models.Model):
    content = models.CharField(max_length=255)
    links = models.CharField(max_length=100)
    updated_by = models.CharField(max_length=100)
    updated_on = models.DateTimeField()
    active = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'home_r3'

class HomeR4(models.Model):
    year = models.CharField(max_length=100)
    image = models.ImageField(upload_to='images')
    content = models.CharField(max_length=11)
    updated_by = models.CharField(max_length=100)
    updated_on = models.DateTimeField()
    active = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'home_r4'

class HomeR6(models.Model):
    name = models.CharField(max_length=255)
    content = models.TextField()
    updated_by = models.CharField(max_length=100)
    updated_on = models.DateTimeField()
    active = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'home_r6'

@deconstructible
class PathAndRename(object):
    def __init__(self,sub_path):
        self.path = sub_path

    def __call__(self,instance,filename):
        ext = filename.split('.')[1]
        now = (datetime.datetime.now()).strftime("%Y_%m_%d_%H_%M")
        new_name = filename.split('.')[0]
        renamed_filename = '%(name)s_%(now)s.%(ext)s' % { 'name':new_name, 'now':now, 'ext':ext}
        return os.path.join(self.path, renamed_filename)

class Gurukulam(models.Model):
    name = models.CharField(max_length=255)
    class PathAndRename(object):
        def __init__(self,sub_path):
            self.path = sub_path
        def __call__(self,instance,filename):
            ext = filename.split('.')[1]
            now = (datetime.datetime.now()).strftime("%Y_%m_%d_%H_%M")
            new_name = filename.split('.')[0]
            renamed_filename = '%(name)s_%(now)s.%(ext)s' % { 'name':new_name, 'now':now, 'ext':ext}
            return os.path.join(self.path, renamed_filename)
    file_path = 'documents/gurukulam'
    content = models.FileField(upload_to=PathAndRename(file_path))

    image = models.ImageField(upload_to='images')
    link = models.CharField(max_length=50)
    updated_by = models.CharField(max_length=100)
    updated_on = models.DateTimeField()
    active = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'gurukulam'

class Kainkariyam(models.Model):
    name = models.CharField(max_length=255)

    class file_rename(PathAndRename):
        pass
    file_path = 'documents/kainkariyam'
    content = models.FileField(upload_to=file_rename(file_path))

    image = models.ImageField(upload_to='images')
    link = models.CharField(max_length=50)
    updated_by = models.CharField(max_length=100)
    updated_on = models.DateTimeField()
    active = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'kainkariyam'

class Library(models.Model):
    name = models.CharField(max_length=255)
    class PathAndRename(object):
        def __init__(self,sub_path):
            self.path = sub_path

        def __call__(self,instance,filename):
            ext = filename.split('.')[1]
            now = (datetime.datetime.now()).strftime("%Y_%m_%d_%H_%M")
            new_name = filename.split('.')[0]
            renamed_filename = '%(name)s_%(now)s.%(ext)s' % { 'name':new_name, 'now':now, 'ext':ext}
            return os.path.join(self.path, renamed_filename)


    file_path = 'documents/library'
    content = models.FileField(upload_to=PathAndRename(file_path))

    image = models.ImageField(upload_to='images')
    link = models.CharField(max_length=50)
    updated_by = models.CharField(max_length=100)
    updated_on = models.DateTimeField()
    active = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'library'
class MappingTable(models.Model):
    donation_items = models.CharField(max_length=500)

    class Meta:
        managed = False
        db_table = 'mapping_table'


class PaypalIpn(models.Model):
    business = models.CharField(max_length=127)
    charset = models.CharField(max_length=255)
    custom = models.CharField(max_length=256)
    notify_version = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    parent_txn_id = models.CharField(max_length=19)
    receiver_email = models.CharField(max_length=254)
    receiver_id = models.CharField(max_length=255)
    residence_country = models.CharField(max_length=2)
    test_ipn = models.IntegerField()
    txn_id = models.CharField(max_length=255)
    txn_type = models.CharField(max_length=255)
    verify_sign = models.CharField(max_length=255)
    address_country = models.CharField(max_length=64)
    address_city = models.CharField(max_length=40)
    address_country_code = models.CharField(max_length=64)
    address_name = models.CharField(max_length=128)
    address_state = models.CharField(max_length=40)
    address_status = models.CharField(max_length=255)
    address_street = models.CharField(max_length=200)
    address_zip = models.CharField(max_length=20)
    contact_phone = models.CharField(max_length=20)
    first_name = models.CharField(max_length=64)
    last_name = models.CharField(max_length=64)
    payer_business_name = models.CharField(max_length=127)
    payer_email = models.CharField(max_length=127)
    payer_id = models.CharField(max_length=13)
    auth_amount = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    auth_exp = models.CharField(max_length=28)
    auth_id = models.CharField(max_length=19)
    auth_status = models.CharField(max_length=255)
    exchange_rate = models.DecimalField(max_digits=64, decimal_places=16, blank=True, null=True)
    invoice = models.CharField(max_length=127)
    item_name = models.CharField(max_length=127)
    item_number = models.CharField(max_length=127)
    mc_currency = models.CharField(max_length=32)
    mc_fee = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    mc_gross = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    mc_handling = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    mc_shipping = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    memo = models.CharField(max_length=255)
    num_cart_items = models.IntegerField(blank=True, null=True)
    option_name1 = models.CharField(max_length=64)
    option_name2 = models.CharField(max_length=64)
    payer_status = models.CharField(max_length=255)
    payment_date = models.DateTimeField(blank=True, null=True)
    payment_gross = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    payment_status = models.CharField(max_length=255)
    payment_type = models.CharField(max_length=255)
    pending_reason = models.CharField(max_length=255)
    protection_eligibility = models.CharField(max_length=255)
    quantity = models.IntegerField(blank=True, null=True)
    reason_code = models.CharField(max_length=255)
    remaining_settle = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    settle_amount = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    settle_currency = models.CharField(max_length=32)
    shipping = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    shipping_method = models.CharField(max_length=255)
    tax = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    transaction_entity = models.CharField(max_length=255)
    auction_buyer_id = models.CharField(max_length=64)
    auction_closing_date = models.DateTimeField(blank=True, null=True)
    auction_multi_item = models.IntegerField(blank=True, null=True)
    for_auction = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    amount = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    amount_per_cycle = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    initial_payment_amount = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    next_payment_date = models.DateTimeField(blank=True, null=True)
    outstanding_balance = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    payment_cycle = models.CharField(max_length=255)
    period_type = models.CharField(max_length=255)
    product_name = models.CharField(max_length=255)
    product_type = models.CharField(max_length=255)
    profile_status = models.CharField(max_length=255)
    recurring_payment_id = models.CharField(max_length=255)
    rp_invoice_id = models.CharField(max_length=127)
    time_created = models.DateTimeField(blank=True, null=True)
    amount1 = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    amount2 = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    amount3 = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    mc_amount1 = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    mc_amount2 = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    mc_amount3 = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    password = models.CharField(max_length=24)
    period1 = models.CharField(max_length=255)
    period2 = models.CharField(max_length=255)
    period3 = models.CharField(max_length=255)
    reattempt = models.CharField(max_length=1)
    recur_times = models.IntegerField(blank=True, null=True)
    recurring = models.CharField(max_length=1)
    retry_at = models.DateTimeField(blank=True, null=True)
    subscr_date = models.DateTimeField(blank=True, null=True)
    subscr_effective = models.DateTimeField(blank=True, null=True)
    subscr_id = models.CharField(max_length=19)
    username = models.CharField(max_length=64)
    case_creation_date = models.DateTimeField(blank=True, null=True)
    case_id = models.CharField(max_length=255)
    case_type = models.CharField(max_length=255)
    receipt_id = models.CharField(max_length=255)
    currency_code = models.CharField(max_length=32)
    handling_amount = models.DecimalField(max_digits=64, decimal_places=2, blank=True, null=True)
    transaction_subject = models.CharField(max_length=256)
    ipaddress = models.CharField(max_length=39, blank=True, null=True)
    flag = models.IntegerField()
    flag_code = models.CharField(max_length=16)
    flag_info = models.TextField()
    query = models.TextField()
    response = models.TextField()
    created_at = models.DateTimeField()
    updated_at = models.DateTimeField()
    from_view = models.CharField(max_length=6, blank=True, null=True)
    mp_id = models.CharField(max_length=128, blank=True, null=True)
    option_selection1 = models.CharField(max_length=200)
    option_selection2 = models.CharField(max_length=200)

    class Meta:
        managed = False
        db_table = 'paypal_ipn'
class Question(models.Model):
    name = models.TextField(db_column='Name')  # Field name made lowercase.
    emailid = models.CharField(db_column='EmailId', max_length=200)  # Field name made lowercase.
    phone = models.IntegerField()
    question = models.CharField(max_length=200)
    answer = models.CharField(max_length=300)

    class Meta:
        managed = False
        db_table = 'question'

class Feedback(models.Model):
    name = models.CharField(max_length=255)
    city = models.CharField(max_length=255)
    feedback = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'feedback'

class Admin(models.Model):
    username = models.CharField(max_length=200)
    password = models.CharField(max_length=200)

    class Meta:
        managed = False
        db_table = 'admin'

class Reference(models.Model):
    name = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'reference'

class Adminupload(models.Model):
    reference_id = models.IntegerField()
    content = models.CharField(max_length=255)

    class PathAndRename(object):
        def __init__(self,sub_path):
            self.path = sub_path
        def __call__(self,instance,filename):
            ext = filename.split('.')[1]
            now = (datetime.datetime.now()).strftime("%Y_%m_%d_%H_%M")
            new_name = filename.split('.')[0]
            renamed_filename = '%(name)s_%(now)s.%(ext)s' % { 'name':new_name, 'now':now, 'ext':ext}
            return os.path.join(self.path, renamed_filename)
    file_path = 'documents/admin'
    link = models.FileField(upload_to=PathAndRename(file_path))
    updated_by = models.CharField(max_length=255)
    updated_on = models.DateTimeField()

    active = models.IntegerField()
    class Meta:
        managed = False
        db_table = 'adminupload'

class Images(models.Model):
    reference_id = models.IntegerField()
    image = models.ImageField(upload_to='images/')
    updated_on = models.DateTimeField()


class Test(models.Model):
    content = models.TextField()
    image = models.ImageField(upload_to='images/')
    link = models.ImageField(upload_to='images/')

    class Meta:
        managed = False
        db_table = 'test'

class Tt(models.Model):
    content = models.TextField()
    image = models.ImageField(upload_to='images/')
    link = models.CharField(max_length=50)

class Demo(models.Model):
    reference_id = models.IntegerField()
    content = models.TextField()
    image = models.ImageField(upload_to='images/')
    link = models.FileField(upload_to= 'documents/')

class Donar(models.Model):
    link = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'donar'

class Archives(models.Model):
    title = models.CharField(db_column='Title', max_length=200)  # Field name made lowercase.
    class PathAndRename(object):
        def __init__(self,sub_path):
            self.path = sub_path
        def __call__(self,instance,filename):
            ext = filename.split('.')[1]
            now = (datetime.datetime.now()).strftime("%Y_%m_%d_%H_%M")
            new_name = filename.split('.')[0]
            renamed_filename = '%(name)s_%(now)s.%(ext)s' % { 'name':new_name, 'now':now, 'ext':ext}
            return os.path.join(self.path, renamed_filename)
    file_path = 'documents/gurukulam/'
    content = models.FileField(upload_to=PathAndRename(file_path))
    link = models.TextField()
    updated_by = models.CharField(max_length=200)
    updated_on = models.DateField()
    active = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'archives'

class ArchiveImg(models.Model):
    name = models.CharField(max_length=255)
    img = models.ImageField(upload_to='images/archive/')
    updated_by = models.CharField(max_length=255)
    updated_on = models.DateField()
    active = models.IntegerField(db_column='Active')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'archive_img'

class Courses(models.Model):
    firstname = models.CharField(max_length=200)
    lastname = models.CharField(max_length=200)
    gender = models.CharField(max_length=200)
    email_address = models.CharField(max_length=200)
    education_qualification = models.CharField(max_length=200)
    course = models.CharField(max_length=200)
    contact_number = models.IntegerField()
    residential_address = models.CharField(max_length=200)

    class Meta:
        managed = False
        db_table = 'courses'
class Job(models.Model):
    firstname = models.CharField(max_length=200)
    lastname = models.CharField(max_length=200)
    gender = models.CharField(max_length=200)
    emailid = models.CharField(max_length=200)
    education_qualification = models.CharField(max_length=200)
    contactnumber = models.IntegerField()
    postapplied = models.CharField(max_length=100)
    upload = models.TextField()

    class Meta:
        managed = False
        db_table = 'job'


class Job1(models.Model):
    title = models.CharField(max_length=200)
    name = models.CharField(max_length=200)
    content = models.CharField(max_length=200)
    image = models.CharField(max_length=200)
    link = models.CharField(max_length=200)
    updated_by = models.CharField(max_length=200)
    updated_on = models.DateField()
    active = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'job1'

class Subs(models.Model):
    name = models.CharField(max_length=255)
    phone = models.IntegerField()
    email = models.CharField(max_length=255)
    address = models.CharField(max_length=255)
    send_via = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'subs'

class Eventdetails(models.Model):
    firstname = models.CharField(max_length=255)
    lastname = models.CharField(max_length=255)
    gender = models.CharField(max_length=255)
    emailid = models.CharField(max_length=255)
    contactno = models.CharField(max_length=255)
    event = models.CharField(max_length=255)

    class Meta:
        managed = False
        db_table = 'eventdetails'

class Jobs(models.Model):
    class PathAndRename(object):
        def __init__(self,sub_path):
            self.path = sub_path
        def __call__(self,instance,filename):
            ext = filename.split('.')[1]
            now = (datetime.datetime.now()).strftime("%Y_%m_%d_%H_%M")
            new_name = filename.split('.')[0]
            renamed_filename = '%(name)s_%(now)s.%(ext)s' % { 'name':new_name, 'now':now, 'ext':ext}
            return os.path.join(self.path, renamed_filename)
    file_path = 'documents/jobs'
    document = models.FileField(upload_to=PathAndRename(file_path))
    updated_by = models.CharField(max_length=255)
    updated_on = models.DateTimeField()
    active = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'jobs'
