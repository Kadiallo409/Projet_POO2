"""
FONCTION DE DELIBERATION 
"""
from tkinter import *
from tkinter import ttk, messagebox
import mysql.connector
from fpdf import FPDF 
import pandas as pd

root = Tk()
root.title("Liste des Candidats")
root.geometry('1920x1080+0+0')


def list1erTour(l):    
    
    table = ttk.Treeview(root, columns=(1, 2, 3, 4, 5, 6, 7, 8, 9), height=10, show="headings")
    table.place(x=200, y=60, width=1070, height=200)
    title = Label(root, text='Liste des Candidats admis à l\'issue du premier tour: 6', font=('time new rom',15), fg='black').place(x=150, y=10)
    
    # Entete
    table.heading(1,text='N° Table') 
    table.heading(2,text='PRENOM') 
    table.heading(3,text='NOM')
    table.heading(4,text='Date_Naissance') 
    table.heading(5,text='Lieu_Naissance') 
    table.heading(6,text='SEXE') 
    table.heading(7,text='Etablissement') 
    table.heading(8,text='nbPoints')
    #table.heading(9,text='N° Table') 
    #table.heading(10,text='Epreuve_Facultative') 
    #table.heading(11,text='Aptitude_Sportive')

    # Dimension
    table.column(1,width=50)
    table.column(2,width=80)
    table.column(3,width=80)
    table.column(4,width=150)
    table.column(5,width=120)
    table.column(6,width=20)
    table.column(7,width=120)
    table.column(8,width=20)    
    #table.column(10,width=150)
    #table.column(11,width=150)

    for val in l:           
        table.insert('',END, value=val)
            

def list2emTour(l):    
    
    table = ttk.Treeview(root, columns=(1, 2, 3, 4, 5, 6, 7, 8), height=10, show="headings")
    table.place(x=200, y=350, width=1070, height=400)
    title = Label(root, text='Liste des Candidats admis au deuxième tour: 35', font=('time new rom',15), fg='black').place(x=150, y=300)
    btn = Button(root, text='Imprimé', font=('time new rom',10,'bold'), command=export, bg='cyan', fg='black').place(x=1070,y=270)
    btn1 = Button(root, text='Liste des candidats Ajournées: 58', font=('time new rom',10,'bold'), command="listAjourner", bg='cyan', fg='black').place(x=1099,y=10)
    btn2 = Button(root, text='Imprimé', font=('time new rom',10,'bold'), command=export1, bg='cyan', fg='black').place(x=70,y=570)
    
    # Entete
    table.heading(1,text='N° Table') 
    table.heading(2,text='PRENOM') 
    table.heading(3,text='NOM')
    table.heading(4,text='Date_Naissance') 
    table.heading(5,text='Lieu_Naissance') 
    table.heading(6,text='SEXE') 
    table.heading(7,text='Etablissement') 
    table.heading(8,text='nbPoints')
    #table.heading(9,text='N° Table') 
    #table.heading(10,text='Epreuve_Facultative') 
    #table.heading(11,text='Aptitude_Sportive')

    # Dimension
    table.column(1,width=50)
    table.column(2,width=80)
    table.column(3,width=80)
    table.column(4,width=150)
    table.column(5,width=120)
    table.column(6,width=20)
    table.column(7,width=120)
    table.column(8,width=20)    
    #table.column(10,width=150)
    #table.column(11,width=150)
    
    for val in l:           
        table.insert('',END, value=val)
            
        
def listAjourner(l):    
    
    table = ttk.Treeview(root, columns=(1, 2, 3, 4, 5, 6, 7, 8), height=10, show="headings")
    table.place(x=200, y=600, width=1070, height=300)
    title = Label(root, text='Liste des Candidats Ajournés', font=('time new rom',15), fg='black').place(x=150, y=300)

    # Entete
    table.heading(1,text='N° Table') 
    table.heading(2,text='PRENOM') 
    table.heading(3,text='NOM')
    table.heading(4,text='Date_Naissance') 
    table.heading(5,text='Lieu_Naissance') 
    table.heading(6,text='SEXE') 
    table.heading(7,text='Etablissement') 
    #table.heading(9,text='N° Table') 
    #table.heading(10,text='Epreuve_Facultative') 
    #table.heading(11,text='Aptitude_Sportive')

    # Dimension
    table.column(1,width=50)
    table.column(2,width=80)
    table.column(3,width=80)
    table.column(4,width=150)
    table.column(5,width=120)
    table.column(6,width=20)
    table.column(7,width=120)    
    #table.column(10,width=150)
    #table.column(11,width=150)

    for val in l:           
        table.insert('',END, value=val)  
       
    root.mainloop()
    
def calculPoint1erTour():
    # Fetch data   
    # Nombre de point de chaque
    con = mysql.connector.connect(host="localhost", user="root", password="", database="examen_bfem")
    cur = con.cursor()
    cur.execute('SELECT ((`Note EPS`-10) + `Note CF`*2 + `Note Ort`*1 + `Note TSQ`*1 + `Note SVT`*2 + `Note ANG1`*2 + `Note MATH`*4 + `Note HG`*2 + `Note IC`*1 + `Note PC/LV2`*2 + `Note ANG2`*1+(CASE WHEN `Note Ep Fac` > 10 THEN `Note Ep Fac` - 10 ELSE 0 END)) AS nbPoints FROM `feuille_1`')   #(nbPoint, nbPoint2, nbPoint3, nbPoint4)
    l = cur.fetchall()  
    
    #Moyen des cycles
    cur.execute('SELECT (`Moy_6e`+`Moy_5e`+`Moy_4e`+`Moy_3e`)/4 FROM `feuille_1`') # Pour calculer la moyenne des cycles
    M = cur.fetchall()
    
    # Nombre que chaque élève à faire le bfem
    cur.execute('SELECT  `Nb fois` FROM `feuille_1`')
    l1 = cur.fetchall()
    
    # Fetch all data
    cur.execute('SELECT `N° de table`, `Prenom (s)`, `NOM`, `Date de nais.`, `Lieu de nais.`, `Sexe`, `Etablissement` FROM `feuille_1`')
    N = cur.fetchall()

    numero = []; prenom = []; nom = []; date = []; lieu = []; sexe = []; etat = []; point = []; liste1 = []; liste2 = []
    numero1 = []; prenom1 = []; nom1 = []; date1 = []; lieu1 = []; sexe1 = []; etat1 = []; point1 = [];
    numero2 = []; prenom2 = []; nom2 = []; date2 = []; lieu2 = []; sexe2 = []; etat2 = []; point2 = [];
    cpt = 0; cpt1 = 0; cpt2 = 0; cpt3 = 0; i = 0
    while i < len(l):
        
        if(l[i][0] != None and l[i][0] >= 180):
            cpt = cpt + 1          
            numero.append(N[i][0])
            prenom.append(N[i][1])
            nom.append(N[i][2])
            date.append(N[i][3])
            lieu.append(N[i][4])
            sexe.append(N[i][5])
            etat.append(N[i][6])
            point.append(l[i][0])

        elif (l[i][0] != None and l[i][0] >= 171 and l[i][0] <= 179.9 and M[i][0]!=None and M[i][0] >= 12 and l1[i][0] < 2):    
            cpt = cpt + 1
            numero.append(N[i][0])
            prenom.append(N[i][1])
            nom.append(N[i][2])
            date.append(N[i][3])
            lieu.append(N[i][4])
            sexe.append(N[i][5])
            etat.append(N[i][6])
            point.append(l[i][0])
            
        elif (l[i][0] != None and l[i][0] >= 144 and l[i][0] <= 152.9 and M[i][0]!=None and M[i][0] >= 12 and l1[i][0] < 2):
            cpt1 = cpt1 + 1
            numero1.append(N[i][0])
            prenom1.append(N[i][1])
            nom1.append(N[i][2])
            date1.append(N[i][3])
            lieu1.append(N[i][4])
            sexe1.append(N[i][5])
            etat1.append(N[i][6])
            point1.append(l[i][0])
            

        elif  (l[i][0]!=None and l[i][0] >= 153):
            cpt1 = cpt1 + 1
            numero1.append(N[i][0])
            prenom1.append(N[i][1])
            nom1.append(N[i][2])
            date1.append(N[i][3])
            lieu1.append(N[i][4])
            sexe1.append(N[i][5])
            etat1.append(N[i][6])
            point1.append(l[i][0])   

        else:                    
            cpt2 = cpt2 + 1
            numero2.append(N[i][0])
            prenom2.append(N[i][1])
            nom2.append(N[i][2])
            date2.append(N[i][3])
            lieu2.append(N[i][4])
            sexe2.append(N[i][5])
            etat2.append(N[i][6])
            point2.append(l[i][0])
            
        i = i + 1

    for i in range(0, cpt1):        
        ti = [numero1[i], prenom1[i], nom1[i], date1[i], lieu1[i], sexe1[i], etat1[i], point1[i]]
        liste1.append(ti)
    for i in range(0, cpt2):        
        ti = [numero2[i], prenom2[i], nom2[i], date2[i], lieu2[i], sexe2[i], etat2[i], point2[i]]
        liste2.append(ti)    
    
    
    #tt1 = [numero1[0], prenom1[0], nom1[0], date1[0], lieu1[0], sexe1[0], etat1[0], point1[0]]
    #liste1.append(t1)
       
    t1 = [numero[0], prenom[0], nom[0], date[0], lieu[0], sexe[0], etat[0], point[0]]
    t2 = [numero[1], prenom[1], nom[1], date[1], lieu[1], sexe[1], etat[1], point[1]]
    t3 = [numero[2], prenom[2], nom[2], date[2], lieu[2], sexe[2], etat[2], point[2]]
    t4 = [numero[3], prenom[3], nom[3], date[3], lieu[3], sexe[3], etat[3], point[3]]
    t5 = [numero[4], prenom[4], nom[4], date[4], lieu[4], sexe[4], etat[4], point[4]]
    t6 = [numero[5], prenom[5], nom[5], date[5], lieu[5], sexe[5], etat[5], point[5]]
   
    liste = (t3, t5, t4, t6, t2, t1)
    list1erTour(liste)
    list2emTour(liste1)
    df = pd.DataFrame(liste, columns=['Numero', 'Prenom', 'Nom', 'date', 'Lieu', 'Sexe', 'Etat', 'Points'])
    df1 = pd.DataFrame(liste1, columns=['Numero', 'Prenom', 'Nom', 'date', 'Lieu', 'Sexe', 'Etat', 'Points'])
    
    # Imprimer admis 1er Tour
    pdf = FPDF()
    pdf.add_page()
    pdf.set_font('arial', 'B', 2.0) 
     
    files = open("Admission1erTour.txt","w")
    files.write(str(df))
    files.close()
     
    # Imprimer 2nd Tour
    pdf = FPDF()
    pdf.add_page()
    pdf.set_font('arial', 'B', 2.0)
    
    files = open("Python/Passage2ndTour.txt","w")
    files.write(str(df1))
    files.close()

    root.mainloop()

def export():
 
    messagebox.showinfo('succes', 'Succes! un fichier Admission1erTour.txt a été  générer')
    
def export1():
 
    messagebox.showinfo('succes', 'Succes! un fichier Passage2ndTour.txt a été  générer')    
