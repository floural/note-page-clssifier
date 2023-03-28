import PySimpleGUI as sg
from gui.layouts import home
from gui.layouts import saver
import subprocess
import copy
import os


def save_window():
   save_layout = copy.deepcopy(saver.save_layout)
   window = sg.Window("Save Page", save_layout)
   while True:
      event, values = window.read()
      print(event)
      if event == "PAGE_LOAD":
         saver.load_page(values["PAGE_PATH"], window)
      if event == "OBJ_LOAD":
         saver.load_obj(values["OBJ_PATH"], window)
      if event == "SAVE":
         subprocess.run(["./NoteAR", "--save", values["PAGE_PATH"], values["OBJ_PATH"]])
         break
      if event in (None, 'Exit'):
         break
   del save_layout
   window.close()


window = sg.Window('NoteAR', home.home_layout)
subprocess.run(['cmake', '--build', 'build'])
os.chdir("build")
while True:
   event, values = window.read()
   if event == "DEFAULT_CAMERA":
      subprocess.run(["./NoteAR", "--live", "-d"])
   elif event == "IP_CAMERA":
      subprocess.run(["./NoteAR", "--live", "-i", "*ip*"])
   elif event == "SAVE_PAGE":
      save_window()
   print(event, values)
   if event in (None, 'Exit'):
      break
window.close()
