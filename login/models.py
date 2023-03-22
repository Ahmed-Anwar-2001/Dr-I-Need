from django.db import connections
from django.db import models



# Create your models here.
class Users(models.Model):
    name = models.CharField(db_column='Name', max_length=50)  # Field name made lowercase.
    email = models.CharField(db_column='Email', max_length=50)  # Field name made lowercase.
    gender = models.CharField(db_column='Gender', max_length=10)  # Field name made lowercase.
    phone = models.CharField(db_column='Phone', max_length=15)  # Field name made lowercase.
    date_of_birth = models.DateField(db_column='Date_of_birth')  # Field name made lowercase.
    password = models.CharField(db_column='Password', max_length=50)  # Field name made lowercase.
    id = models.AutoField(db_column='ID', primary_key=True)  
    # Field name made lowercase.

class review(models.Model):
    d_ID = models.CharField(db_column='d_ID',max_length=10)
    p_ID = models.IntegerField(db_column='p_ID')
    comment = models.CharField(db_column='comment',max_length=10000)
    ratings = models.CharField(db_column='ratings',max_length=10)
    class Meta:
        db_table = "review"   