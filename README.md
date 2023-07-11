# seat_finder

Seat Finding Single Page Application

# Application Screenshots
<img src="https://github.com/saptarshiweb/seat_finder/assets/79189686/d9d253c2-884e-4e85-8de5-e94a39af1dcb" width="200" height="400">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="https://github.com/saptarshiweb/seat_finder/assets/79189686/12b5276c-9d05-4743-a009-e019599ad05a" width="200" height="400">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="https://github.com/saptarshiweb/seat_finder/assets/79189686/478257be-89f9-4bae-9943-13756a9f7325" width="200" height="400">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="https://github.com/saptarshiweb/seat_finder/assets/79189686/2d90c3f5-d058-4789-843d-ef59872ce0bc" width="200" height="400">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


## Project structure

```
├── .github/            github related files like PR templates, contribution guidelines
├── android             flutter generated android specific code
├──ios                  flutter generated ios specific code (for future use)
├── lib                 contains all source codes and modules of projects
  ├──widgets            contains reusable widgets
    ├──modal_widgets
    ├──seatBuilder
    ├──seatWidget
  ├──pages              contains the app screens
   ├──seat_finder_main  Contains the Main App Screen
  ├──constants          contains the colors used in the project
├──test                 individual widgets can be tested here
├── .gitignore          stores files and directories to be ignored in commits
├── LICENSE             the open source license
├── pubspec.yaml        metadata of the project
├── pubspec.lock        stores version of every package used in the project
└── readme.md           details and instructions about the project go here

```

## Application Logic Used
It is a Simple Material App with a Single Page. Multiple small widgets are used.

# Seat Arrangement
Total Seats is set to 60. Each row having 4 seats are arranged.
Seatbuilder widget is a Row widget placing four seats at a row ( 3 Seats equidistant and the 4th seat pushed to the end).
Seat Widget is a Dynamic Widget, changes its colour according to selection.

# Logic
We first check if the seat is within range or not (1-60). Then, we check if the Seat is already booked or not. We use a Linear Data Structure List for this.
List<int> seatBooked=[]; --> This List keeps track of all the seats booked already. When a new seat is booked it is pushed into it.

# Modal Bottom Sheets
Modal Sheets are used as Confirmation or Error Dialogues




