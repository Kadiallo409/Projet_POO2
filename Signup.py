from tkinter import *
from PIL import Image, ImageTk
from tkinter import ttk, messagebox
import pymysql, os


class SignUp:
    def __init__(self, root):
        self.window = root
        self.window.title("Sign Up")
        self.window.geometry("1280x800+0+0")
        self.window.config(bg="white")

        self.bg_img = ImageTk.PhotoImage(file="Images/photo1.jpeg")
        background = Label(self.window, image=self.bg_img).place(x=0, y=0, relwidth=1, relheight=1)

        frame = Frame(self.window, bg="white")
        frame.place(x=350, y=20, width=500, height=600)

        title1 = Label(frame, text="Sign Up", font=("times new roman", 25, "bold"), bg="white").place(x=20, y=10)
        title2 = Label(frame, text="Signup please!", font=("times new roman", 13), bg="white", fg="gray").place(x=20,
                                                                                                              y=50)

        f_name = Label(frame, text="Id", font=("helvetica", 15, "bold"), bg="white").place(x=20, y=100)
        l_name = Label(frame, text="Region", font=("helvetica", 15, "bold"), bg="white").place(x=240, y=100)

        self.fname_txt = Entry(frame, font=("arial"))
        self.fname_txt.place(x=20, y=130, width=200)

        self.lname_txt = Entry(frame, font=("arial"))
        self.lname_txt.place(x=240, y=130, width=200)

        dep = Label(frame, text="Departement", font=("helvetica", 15, "bold"), bg="white").place(x=20, y=180)
        loc = Label(frame, text="Localité", font=("helvetica", 15, "bold"), bg="white").place(x=240, y=180)

        self.dep_txt = Entry(frame, font=("arial"))
        self.dep_txt.place(x=20, y=210, width=200)

        self.loc_txt = Entry(frame, font=("arial"))
        self.loc_txt.place(x=240, y=210, width=200)

        centre = Label(frame, text="Centre", font=("helvetica", 15, "bold"), bg="white").place(x=20, y=260)
        presi = Label(frame, text="President", font=("helvetica", 15, "bold"), bg="white").place(x=240, y=260)

        self.centre_txt = Entry(frame, font=("arial"))
        self.centre_txt.place(x=20, y=290, width=200)

        self.presi_txt = Entry(frame, font=("arial"))
        self.presi_txt.place(x=240, y=290, width=200)

        phone = Label(frame, text="Telephone", font=("helvetica", 15, "bold"), bg="white").place(x=20, y=320)

        self.phone_txt = Entry(frame, font=("arial"))
        self.phone_txt.place(x=20, y=370, width=200)

        email = Label(frame, text="Email", font=("helvetica", 15, "bold"), bg="white").place(x=240, y=320)

        self.email_txt = Entry(frame, font=("arial"))
        self.email_txt.place(x=240, y=370, width=200)

        password = Label(frame, text="New password", font=("helvetica", 15, "bold"), bg="white").place(x=20, y=400)

        self.password_txt = Entry(frame, font=("arial"))
        self.password_txt.place(x=20, y=450, width=200)

        confirm = Label(frame, text="Confirm password", font=("helvetica", 15, "bold"), bg="white").place(x=240, y=400)

        self.confirm_txt = Entry(frame, font=("arial"))
        self.confirm_txt.place(x=240, y=450, width=200)

        self.terms = IntVar()
        terms_and_con = Checkbutton(frame, text="I Agree The Terms & Conditions", variable=self.terms, onvalue=1,
                                    offvalue=0, bg="white", font=("times new roman", 12)).place(x=20, y=470)

        self.signup = Button(frame, text="Sign Up", command=self.signup_func, font=("times new roman", 18, "bold"),
                             bd=0, cursor="hand2", bg="green2", fg="white").place(x=120, y=500, width=250)

    def signup_func(self):
        if self.fname_txt.get() =="" or self.lname_txt.get() =="" or self.email_txt.get() =="" or self.dep_txt.get() =="" or self.loc_txt.get() =="" or self.centre_txt.get() =="" or self.presi_txt.get() =="" or self.phone_txt.get() =="" or self.password_txt.get() =="" or self.confirm_txt.get()=="":
            messagebox.showerror("Error!", "Sorry!, All fields are required", parent=self.window)

        elif self.terms.get() == 0:
            messagebox.showerror("Error!", "Please Agree with our Terms & Conditions", parent=self.window)

        else:
            try:
                connection = pymysql.connect(host="localhost", user="root", password="", database="jury")
                cur = connection.cursor()
                cur.execute("select * from Registation where email=%s", self.email_txt.get())
                row = cur.fetchone()

                # Check if entered email id is already exists or not.
                if row != None:
                    messagebox.showerror("Error!",
                                         "The email id is already exists, please try again with another email id",
                                         parent=self.window)
                else:
                    cur.execute(
                        "insert into Registation (id,region,departement,localité,centre,president,telephone,email, Password,Confirm) values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)",
                        (
                            self.fname_txt.get(),
                            self.lname_txt.get(),
                            self.dep_txt.get(),
                            self.loc_txt.get(),
                            self.centre_txt.get(),
                            self.presi_txt.get(),
                            self.phone_txt.get(),
                            self.email_txt.get(),
                            self.password_txt.get(),
                            self.confirm_txt.get()
                        ))
                    connection.commit()
                    connection.close()
                    messagebox.showinfo("Congratulations!", "Register Successful", parent=self.window)
                    self.reset_fields()



            except Exception as e:
                messagebox.showerror("Error!", f"Error due to {str(e)}", parent=self.window)

    def reset_fields(self):
        self.fname_txt.delete(0, END)
        self.lname_txt.delete(0, END)
        self.email_txt.delete(0, END)
        self.password_txt.delete(0, END)
        self.centre_txt.delete(0, END)
        self.phone_txt.delete(0, END)
        self.dep_txt.delete(0, END)
        self.loc_txt.delete(0, END)
        self.confirm_txt.delete(0, END)
        self.centre_txt.delete(0, END)




if __name__ == "__main__":
    root = Tk()
    obj = SignUp(root)
    root.mainloop()
