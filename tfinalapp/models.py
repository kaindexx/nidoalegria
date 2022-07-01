# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Alumno(models.Model):
    cod_alum = models.IntegerField(primary_key=True)
    cod_p = models.ForeignKey('Persona', models.DO_NOTHING, db_column='cod_p')
    cod_salon = models.ForeignKey('Salon', models.DO_NOTHING, db_column='cod_salon')
    horario = models.CharField(max_length=11)

    class Meta:
        managed = False
        db_table = 'alumno'


class Apoderado(models.Model):
    cod_apo = models.AutoField(primary_key=True)
    cod_po = models.ForeignKey('Persona', models.DO_NOTHING, db_column='cod_po')
    telef_apo = models.IntegerField()
    coreo_apo = models.CharField(max_length=50)
    cod_rec = models.IntegerField(unique=True)

    class Meta:
        managed = False
        db_table = 'apoderado'


class Ficha(models.Model):
    cod_ficha = models.IntegerField(primary_key=True)
    num_ficha = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'ficha'


class Materia(models.Model):
    cod_mat = models.IntegerField(primary_key=True)
    nom_mat = models.TextField()
    hrs_mat = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'materia'


class Materiaalumno(models.Model):
    cod_alum = models.OneToOneField(Alumno, models.DO_NOTHING, db_column='cod_alum', primary_key=True)
    cod_mat = models.OneToOneField(Materia, models.DO_NOTHING, db_column='cod_mat')
    cod_pro = models.OneToOneField('Profesor', models.DO_NOTHING, db_column='cod_pro')

    class Meta:
        managed = False
        db_table = 'materiaalumno'


class Matricula(models.Model):
    cod_ma = models.IntegerField(primary_key=True)
    cod_alum = models.ForeignKey(Alumno, models.DO_NOTHING, db_column='cod_alum')
    cod_ficha = models.ForeignKey(Ficha, models.DO_NOTHING, db_column='cod_ficha')

    class Meta:
        managed = False
        db_table = 'matricula'


class Persona(models.Model):
    cod_p = models.IntegerField(primary_key=True)
    nom_p = models.CharField(max_length=30)
    apell_p = models.CharField(max_length=30)
    fnacim_p = models.DateField()
    direcci_p = models.CharField(max_length=30)
    cvacun_p = models.CharField(max_length=30)

    def __str__(self):
        return self.nom_p, self.apell_p,

    class Meta:
        managed = False
        db_table = 'persona'


class Profesor(models.Model):
    cod_pro = models.IntegerField(primary_key=True)
    cod_p = models.ForeignKey(Persona, models.DO_NOTHING, db_column='cod_p')
    telef_pro = models.IntegerField()
    correo_pro = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'profesor'


class Recibos(models.Model):
    cod_rec = models.IntegerField(primary_key=True)
    monto_rec = models.IntegerField()
    fecha_rec = models.DateField()
    cod_ma = models.ForeignKey(Matricula, models.DO_NOTHING, db_column='cod_ma')

    class Meta:
        managed = False
        db_table = 'recibos'


class Salon(models.Model):
    cod_salon = models.IntegerField(primary_key=True)
    nom_salon = models.CharField(max_length=30)
    ubicacion = models.CharField(max_length=30)
    aforo = models.CharField(max_length=30)

    class Meta:
        managed = False
        db_table = 'salon'


class TblContact(models.Model):
    fldname = models.CharField(db_column='fldName', max_length=50)  # Field name made lowercase.
    fldemail = models.CharField(db_column='fldEmail', max_length=150)  # Field name made lowercase.
    fldcel = models.CharField(db_column='fldCel', max_length=150)  # Field name made lowercase.
    fldmessage = models.TextField(db_column='fldMessage')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'tbl_contact'
