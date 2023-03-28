import PySimpleGUI as sg
from PIL import Image, ImageTk


save_layout = [
    [sg.Image(key="PAGE_IMG"), sg.Image(key="OBJ_IMG")],
    [sg.Text("Choose a page image:"),
     sg.Input(size=(40, 1), enable_events=True, key="PAGE_PATH"),
     sg.FileBrowse(initial_folder="../images/pages/"),
     sg.Button("Load", key="PAGE_LOAD")],
     [sg.Text("Choose an object image:"),
      sg.Input(size=(40,1), enable_events=True, key="OBJ_PATH"),
      sg.FileBrowse(initial_folder="../images/objects/"),
      sg.Button("Load", key="OBJ_LOAD")],
    [sg.Button("Save", key="SAVE")]
]

def load_page(path, window):
    try:
        image = Image.open(path)
        image.thumbnail((400, 400))
        photo_img = ImageTk.PhotoImage(image)
        window["PAGE_IMG"].update(data=photo_img)
    except:
        print(f"Unable to open {path}!")

def load_obj(path, window):
    try:
        image = Image.open(path)
        image.thumbnail((400, 400))
        photo_img = ImageTk.PhotoImage(image)
        window["OBJ_IMG"].update(data=photo_img)
    except:
        print(f"Unable to open {path}")