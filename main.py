from tkinter import ttk, messagebox
import mysql.connector
from tkinter import *
import tkinter as tk

def GetValue(event):
    e1.delete(0, END)
    e2.delete(0, END)
    e3.delete(0, END)
    e4.delete(0, END)
    e5.delete(0, END)
    e6.delete(0, END)
    e7.delete(0, END)
    e8.delete(0, END)
    e9.delete(0, END)
    e10.delete(0, END)
    row_id = listBox.selection()[0]
    select = listBox.set(row_id)
    e1.insert(0,select['numero_table'])
    e2.insert(0,select['prenom'])
    e3.insert(0,select['nom'])
    e4.insert(0,select['dateNaissance'])
    e5.insert(0, select['lieuNaissance'])
    e6.insert(0, select['sexe'])
    e7.insert(0, select['nationalite'])
    e8.insert(0, select['choixEprFacultative'])
    e9.insert(0, select['epreuveFacultative'])
    e10.insert(0, select['aptitudeSport'])

def Add():
    numero_table = e1.get()
    prenom = e2.get()
    nom = e3.get()
    dateNaissance = e4.get()
    lieuNaissance = e5.get()
    sexe = e6.get()
    nationalite = e7.get()
    choixEprFacultative = e8.get()
    epreuveFacultative = e9.get()
    aptitudeSport = e10.get()
    mysqldb=mysql.connector.connect(host="localhost",user="root",password="",database="jury")
    mycursor=mysqldb.cursor()

    try:
       sql = "INSERT INTO  candidats (numero_table,prenom,nom,dateNaissance,lieuNaissance,sexe,nationalite,choixEprFacultative, epreuveFacultative,aptitudeSport) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s,%s)"
       val = (numero_table,prenom,nom,dateNaissance,lieuNaissance,sexe,nationalite,choixEprFacultative, epreuveFacultative,aptitudeSport)
       mycursor.execute(sql, val)
       mysqldb.commit()
       lastid = mycursor.lastrowid
       messagebox.showinfo("information", "Candidat inséré avec succés...")
       e1.delete(0, END)
       e2.delete(0, END)
       e3.delete(0, END)
       e4.delete(0, END)
       e5.delete(0, END)
       e6.delete(0, END)
       e7.delete(0, END)
       e8.delete(0, END)
       e9.delete(0, END)
       e10.delete(0, END)
       e1.focus_set()
    except Exception as e:
       print(e)
       mysqldb.rollback()
       mysqldb.close()

def update():
    numero_table = e1.get()
    prenom = e2.get()
    nom = e3.get()
    dateNaissance = e4.get()
    lieuNaissance = e5.get()
    sexe = e6.get()
    nationalite = e7.get()
    choixEprFacultative = e8.get()
    epreuveFacultative = e9.get()
    aptitudeSport = e10.get()
    mysqldb=mysql.connector.connect(host="localhost",user="root",password="",database="jury")
    mycursor=mysqldb.cursor()

    try:
       sql = "Update  candidats set prenom = %s,nom = %s, dateNaissance = %s ,lieuNaissance = %s, sexe = %s, nationalite = %s, choixEprFacultative= %s,epreuveFacultative = %s, aptitudeSport = %s where numero_table= %s"
       val = (prenom,nom,dateNaissance,lieuNaissance,sexe,nationalite,choixEprFacultative, epreuveFacultative,aptitudeSport,numero_table)
       mycursor.execute(sql, val)
       mysqldb.commit()
       lastid = mycursor.lastrowid
       messagebox.showinfo("information", "Status du candidat bien mise a jour...")

       e1.delete(0, END)
       e2.delete(0, END)
       e3.delete(0, END)
       e4.delete(0, END)
       e5.delete(0, END)
       e6.delete(0, END)
       e7.delete(0, END)
       e8.delete(0, END)
       e9.delete(0, END)
       e10.delete(0, END)
       e1.focus_set()

    except Exception as e:

       print(e)
       mysqldb.rollback()
       mysqldb.close()

def delete():
    numero_table = e1.get()

    mysqldb=mysql.connector.connect(host="localhost",user="root",password="",database="jury")
    mycursor=mysqldb.cursor()

    try:
       sql = "delete from candidats where numero_table = %s"
       val = (numero_table,)
       mycursor.execute(sql, val)
       mysqldb.commit()
       lastid = mycursor.lastrowid
       messagebox.showinfo("information", "Candidat bien supprimé...")

       e1.delete(0, END)
       e2.delete(0, END)
       e3.delete(0, END)
       e4.delete(0, END)
       e5.delete(0, END)
       e6.delete(0, END)
       e7.delete(0, END)
       e8.delete(0, END)
       e9.delete(0, END)
       e10.delete(0, END)
       e1.focus_set()

    except Exception as e:

       print(e)
       mysqldb.rollback()
       mysqldb.close()

def show():
        mysqldb = mysql.connector.connect(host="localhost", user="root", password="", database="jury")
        mycursor = mysqldb.cursor()
        mycursor.execute("SELECT numero_table,prenom,nom,dateNaissance,lieuNaissance,sexe,nationalite,choixEprFacultative, epreuveFacultative,aptitudeSport FROM candidats")
        records = mycursor.fetchall()
        print(records)

        for i, (numero_table,prenom,nom,dateNaissance,lieuNaissance,sexe,nationalite,choixEprFacultative, epreuveFacultative,aptitudeSport) in enumerate(records, start=1):
            listBox.insert("", "end", values=( numero_table,prenom,nom,dateNaissance,lieuNaissance,sexe,nationalite,choixEprFacultative, epreuveFacultative,aptitudeSport))
            mysqldb.close()


root = Tk()
root.title("Ajout de candidats")
frame1 = Frame(root, bg='white')
frame1.place(x=10, y=10, width=500, height=600)
root.geometry("800x500")
global e1
global e2
global e3
global e4
global e5
global e6
global e7
global e8
global e9
global e10


tk.Label(frame1, text="AJOUTER UN CANDIDAT", fg="red", font=(None, 15)).place(x=150, y=5)
#tk.Label(frame1, text="Jury ID").place(x=100, y=60)
#Label(frame1, text="Region").place(x=100, y=90)
#Label(frame1, text="Departement").place(x=100, y=120)
#Label(frame1, text="Localité").place(x=100, y=150)
#Label(frame1, text="Centre").place(x=100, y=180)
#Label(frame1, text="President").place(x=100, y=210)
#Label(frame1, text="Telephone").place(x=100, y=240)
#Label(frame1, text="Email").place(x=100, y=270)
#Label(frame1, text="Password").place(x=100, y=300)
#Label(frame1, text="Confirm").place(x=100, y=330)

f_name = Label(frame1, text="Numéro_table", font=("helvetica", 15, "bold"), bg="white").place(x=20, y=100)
l_name = Label(frame1, text="Prénom", font=("helvetica", 15, "bold"), bg="white").place(x=240, y=100)

e1 = Entry(frame1, font=("arial"))
e1.place(x=20, y=130, width=200)

e2= Entry(frame1, font=("arial"))
e2.place(x=240, y=130, width=200)

dep = Label(frame1, text="Nom", font=("helvetica", 15, "bold"), bg="white").place(x=20, y=180)
loc = Label(frame1, text="Date de Naissance", font=("helvetica", 15, "bold"), bg="white").place(x=240, y=180)

e3 = Entry(frame1, font=("arial"))
e3.place(x=20, y=210, width=200)

e4 = Entry(frame1, font=("arial"))
e4.place(x=240, y=210, width=200)

centre = Label(frame1, text="Lieu de Naissance", font=("helvetica", 15, "bold"), bg="white").place(x=20, y=260)
presi = Label(frame1, text="Sexe", font=("helvetica", 15, "bold"), bg="white").place(x=240, y=260)

e5 = Entry(frame1, font=("arial"))
e5.place(x=20, y=290, width=200)

e6 = ttk.Combobox(frame1, font=('time new rom', 15), state='readonly')
e6['values'] = ('Homme','Femme')
e6.place(x=240, y=290, width=200)
e6.current(0)
#e6 = Entry(frame1, font=("arial"))
#e6.place(x=240, y=290, width=200)

phone = Label(frame1, text="Nationalité", font=("helvetica", 15, "bold"), bg="white").place(x=20, y=320)

# self.phone_txt = Entry(frame, font=("arial"))
# self.phone_txt.place(x=20, y=370, width=200)

e7 = ttk.Combobox(frame1, font=('time new rom', 15), state='readonly')
e7['values'] = ('Sénégalaise', 'Gambienne', 'Malienne', 'Gabonaise', 'Ivoirienne', 'Marocaine')
e7.place(x=20, y=370, width=200)
e7.current(0)

email = Label(frame1, text="Choix epreuve Facultative", font=("helvetica", 15, "bold"), bg="white").place(x=240, y=320)

# self.email_txt = Entry(frame, font=("arial"))
# self.email_txt.place(x=240, y=370, width=200)

e8 = ttk.Combobox(frame1, font=('time new rom', 15), state='readonly')
e8['values'] = ('OUI', 'NON')
e8.place(x=240, y=370, width=200)
e8.current(0)

password = Label(frame1, text="Epreuve Facultative", font=("helvetica", 15, "bold"), bg="white").place(x=20, y=400)

# self.password_txt = Entry(frame, font=("arial"))
# self.password_txt.place(x=20, y=450, width=200)

e9 = ttk.Combobox(frame1, font=('time new rom', 15), state='readonly')
e9['values'] = ('Couture', 'Dessin', 'Musique')
e9.place(x=20, y=450, width=200)
e9.current(0)

confirm = Label(frame1, text="Aptitude Sport", font=("helvetica", 15, "bold"), bg="white").place(x=240, y=400)

# self.confirm_txt = Entry(frame, font=("arial"))
# self.confirm_txt.place(x=240, y=450, width=200)

e10 = ttk.Combobox(frame1, font=('time new rom', 15), state='readonly')
e10['values'] = ('OUI', 'NON')
e10.place(x=240, y=450, width=200)
e10.current(0)

#e1 = Entry(frame1)
#e1.place(x=250, y=60)

#e2 = Entry(frame1)
#e2.place(x=250, y=90)

#e3 = Entry(frame1)
#e3.place(x=250, y=120)

#e4 = Entry(frame1)
#e4.place(x=250, y=150)

#e5 = Entry(frame1)
#e5.place(x=250, y=180)

#e6 = Entry(frame1)
#e6.place(x=250, y=210)

#e7 = Entry(frame1)
#e7.place(x=250, y=240)

#e8 = Entry(frame1)
#e8.place(x=250, y=270)

#e9 = Entry(frame1)
#e9.place(x=250, y=300)

#e10 = Entry(frame1)
#e10.place(x=250, y=330)


Button(frame1, text="Add",command = Add,height=3, width= 13).place(x=80, y=500)
Button(frame1, text="update",command = update,height=3, width= 13).place(x=190, y=500)
Button(frame1, text="Delete",command = delete,height=3, width= 13).place(x=300, y=500)

cols = ('numero_table', 'prenom', 'nom', 'dateNaissance', 'lieuNaissance', 'sexe', 'nationalite','choixEprFacultative','EpreuveFacultative','AptitudeSport')
listBox = ttk.Treeview(root, columns=cols, show='headings' )

for col in cols:
    listBox.heading(col, text=col)
    listBox.grid(row=3, column=0, columnspan=2)
    listBox.place(x=550, y=10,height=500)

show()
listBox.bind('<Double-Button-1>',GetValue)

root.mainloop()

