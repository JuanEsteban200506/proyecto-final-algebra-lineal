import tkinter as tk
import random
import time

simbolos = ["🍒", "🍋", "⭐", "🔔", "7"]
puntaje_simbolos = {"🍒": 5, "🍋": 3, "⭐": 10, "🔔": 7, "7": 20}

class Tragaperras:
    def __init__(self, root):
        self.root = root
        self.root.title("Tragaperras 3x5")
        self.matriz = []
        self.labels = []
        self.crear_interfaz()

    def crear_interfaz(self):
        for i in range(3):
            fila_labels = []
            for j in range(5):
                lbl = tk.Label(self.root, text="?", font=("Arial", 32), width=3)
                lbl.grid(row=i, column=j, padx=5, pady=5)
                fila_labels.append(lbl)
            self.labels.append(fila_labels)

        self.boton = tk.Button(self.root, text="Girar", font=("Arial", 18), command=self.girar)
        self.boton.grid(row=3, column=2, pady=10)

        self.puntaje_lbl = tk.Label(self.root, text="Puntaje: 0", font=("Arial", 18))
        self.puntaje_lbl.grid(row=4, column=2, pady=10)

    def animacion(self):
        for _ in range(10):
            for i in range(3):
                for j in range(5):
                    simbolo = random.choice(simbolos)
                    self.labels[i][j].config(text=simbolo)
            self.root.update()
            time.sleep(0.1)

    def girar(self):
        self.animacion()
        self.matriz = [[random.choice(simbolos) for _ in range(5)] for _ in range(3)]
        puntaje_total = 0

        for i in range(3):
            for j in range(5):
                simbolo = self.matriz[i][j]
                self.labels[i][j].config(text=simbolo)
                puntaje_total += puntaje_simbolos[simbolo]

        self.puntaje_lbl.config(text=f"Puntaje: {puntaje_total}")

root = tk.Tk()
app = Tragaperras(root)
root.mainloop()

