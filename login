import tkinter as tk
from tkinter import messagebox

class ExpenseTrackerLogin:
    def __init__(self, master):
        self.master = master
        master.title("Login - Expense Tracker")

        self.label = tk.Label(master, text="Welcome to Expense Tracker")
        self.label.pack(pady=10)

        self.username_label = tk.Label(master, text="Username:")
        self.username_label.pack(pady=5)
        self.username_entry = tk.Entry(master)
        self.username_entry.pack(pady=5)

        self.password_label = tk.Label(master, text="Password:")
        self.password_label.pack(pady=5)
        self.password_entry = tk.Entry(master, show='*')
        self.password_entry.pack(pady=5)

        self.login_button = tk.Button(master, text="Login", command=self.login)
        self.login_button.pack(pady=20)

        self.register_button = tk.Button(master, text="Register", command=self.register)
        self.register_button.pack(pady=5)

    def login(self):
        username = self.username_entry.get()
        password = self.password_entry.get()
        # Here you would add your authentication logic
        if username == "user" and password == "pass":  # Example credentials
            messagebox.showinfo("Login Successful", "Welcome to your Expense Tracker!")
        else:
            messagebox.showerror("Login Failed", "Invalid username or password.")

    def register(self):
        messagebox.showinfo("Register", "Registration functionality not implemented.")

if __name__ == "__main__":
    root = tk.Tk()
    app = ExpenseTrackerLogin(root)
    root.geometry("300x300")
    root.mainloop()
