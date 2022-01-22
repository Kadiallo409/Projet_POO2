from tkinter import *
from PIL import ImageTk

from Tools.demo.spreadsheet import center
class Menu_page:
    def __init__(self, root):
        self.window = root
        self.window.title("MENU ")
        # Set the window size as per the window size of your PC
        # Here 0,0 represents the starting point of the window
        self.window.geometry("1280x800+0+0")
        self.window.config(bg="white")
        self.bg_img = ImageTk.PhotoImage(file="Images/photo1.jpeg")
        background = Label(self.window, image=self.bg_img).place(x=0, y=0, relwidth=1, relheight=1)
        """Definition des laontacts",fg="blue",font=("Times New Roman",14),bg="#11E187",height=2,width=25)

        btn4 = Button(label,text="BACKbelframes"""
        #frame2 = LabelFrame(root)
        label = LabelFrame(root, text="MENU PRINCIPAL", font=("Times New Roman",17), bg="#46B8E1")

        #AJOUT DE BOUTON DANS LA FRAME GERER ENSEIGNANT
        btn = Button(label,text="AJOUTER CANDIADAT",fg="blue",font=("Times New Roman",14),bg="#11E187",height=2,width=25,command=self.redirect_window)
       # btn1 = Button(label,text="LA LISTE DES CANDIDATS",fg="blue",font=("Times New Roman",14),bg="#11E187",height=2,width=25)
        btn2 = Button(label,text="DELIBERER",fg="blue",font=("Times New Roman",14),bg="#11E187",height=2,width=25,command=self.redirect_delibere)
        #btn3 = Button(label,text="C",fg="white",font=("Times New Roman",14),bg="blue",height=2,width=25)
        #btn5 = Button(label,text="NEXT ",fg="blue",font=("Times New Roman",14),bg="#11E187",height=2,width=30)


        #organisation des labels
        label.place(x=200, y=150,width=700, height=500)
        #Organisationdes boutons

        btn.place(x=100,y=10)
       # btn1.place(x=400,y=10)
        btn2.place(x=100,y=100)
       # btn3.place(x=400,y=100)
       # btn4.place(x=250,y=400)
        #btn5.grid(row=8,column=1)
        #appel des labels frames et fenetre
        label.mainloop()
        root.mainloop()

    def redirect_window(self):
       self.window.destroy()
       # Importing signup window.
       # The page must be in the same directory
       import main
       root = Tk()
       root.mainloop()

    def redirect_delibere(self):
       self.window.destroy()
       # Importing signup window.
       # The page must be in the same directory
       import delibere
       root = Tk()
       root.mainloop()

if __name__ == "__main__":
    root = Tk()
    obj = Menu_page(root)
    root.mainloop()