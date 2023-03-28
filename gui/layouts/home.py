import PySimpleGUI as sg


left_column = [
    [sg.Button("Create Page", key="SAVE_PAGE")]
]

right_column = [
    [sg.Button("Default camera", key="DEFAULT_CAMERA")],
    [sg.Button("IP camera", key="IP_CAMERA")]
]

home_layout = [[sg.Column(left_column), sg.Column(right_column)]]
