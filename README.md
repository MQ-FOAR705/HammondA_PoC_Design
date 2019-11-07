# Background
This project and collection of software and scripts was designed as part of the Digital Humanities software deployment. It is a text analytical tool that converts various types of files into a single workable format and then submits them together for analysis.

# Outline
This software solution will need to be run on a Windows computer with the Ubuntu distribution available through the Windows store. This solution will utilise three different tools seamlessly. Please ensure you have an account setup in Joplin before continuing.

- Mozilla Deepspeech - https://github.com/mozilla/DeepSpeech
- Xpdftotext - https://www.xpdfreader.com/pdftotext-man.html
- Joplin - https://joplinapp.org/

This demonstration of this solution will utilise two files of academic literature in a PDF format. Three very short audio files for transcription and two files of fieldnotes stored within Joplin.

By placing the files in their necessary locations, this solution will convert and arrange all files within a directory ready for analysis. Afterwich the user can simply open Voyant Server and select the directory for analysis.

# Setup
- Download and extract the Voyant Server from
http://docs.voyant-tools.org/resources/run-your-own/voyant-server/#download
(ensure you have java already installed on your system)

- Download and install the Ubuntu distribution for Windows.
Follow this link if you need assistance https://tutorials.ubuntu.com/tutorial/tutorial-ubuntu-on-windows#3

- Once running Ubuntu install the following packages

- Joplin
- - Install as per the instructions here https://joplinapp.org/
- - Once installed, run joplin and login to your account
- - Create a Notebook called FIELDNOTES
- - Run the sync command to ensure that it works and can connect without issue

- Mozilla Deepspeech
- - Run command pip3 install deepspeech

- PDF to Text
- - Already included in the respository



# Copy Respository

- This will copy the project repository, placing the relevant folder structure, scripts and necessary files onto your computer. 


Navigate the Ubuntu terminal to where you would like the files, folders and scripts to be stored (suggested C:/FOAR705) and run the following command:
curl -LO https://github.com/MQ-FOAR705/HammondA_PoC_Design/project

These steps have acquired each piece of software that Ubuntu will use through scripts. If you have used a different path for the project folder (e.g. one that is not /mnt/c/foar705/project) you will need to edit script pathing. 

# Scripts


# Issues

# Future Implementations
