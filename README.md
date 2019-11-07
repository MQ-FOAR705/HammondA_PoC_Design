# Background
This project and collection of software and scripts was designed as part of the Digital Humanities software deployment. It is a text analytical tool that converts various types of files into a single workable format and then submits them together for analysis.

# Outline
This software solution will need to be run on a Windows computer with the Ubuntu distribution available through the Windows store. This solution will utilise three different tools seamlessly. Please ensure you have an account for Joplin and a notebook named FIELDNOTES.

- Mozilla Deepspeech - https://github.com/mozilla/DeepSpeech
- Xpdftotext - https://www.xpdfreader.com/pdftotext-man.html
- Joplin - https://joplinapp.org/

This demonstration of this solution will utilise two files of academic literature in a PDF format. Three very short audio files for transcription and two files of fieldnotes stored within Joplin.

By placing the files in their necessary locations, this solution will convert and arrange all files within a directory ready for analysis and perform an export of the FIELDNOTES notebook in Joplin. Afterwich the user can simply open Voyant Server and select the converted and exported files for analysis.

# Setup
- In your C: create the folder FOAR705

- Download Voyant Server
http://docs.voyant-tools.org/resources/run-your-own/voyant-server/#download
(ensure you have java already installed on your system)

- Extract the zip file to C:\FOAR705

- Download and install the Ubuntu distribution for Windows.
Follow this link if you need assistance https://tutorials.ubuntu.com/tutorial/tutorial-ubuntu-on-windows#3

- Once running Ubuntu install the following packages
sudo apt-get install git

- Joplin
  - Install as per the instructions here https://joplinapp.org/
  - Once installed, run joplin and login to your account
  - Create a Notebook called FIELDNOTES
  - Run the `:sync` command to ensure that it works and can connect without issue

- Mozilla Deepspeech
  - Run command `pip3 install deepspeech`

- PDF to Text
  - Download and install the XPDF tool for converting PDF to text files
  - https://www.xpdfreader.com/download.html
  
Utilise the readme to ensure that you can run the pdftotext command, if not there is a small change you can make to the convertpdf.sh script



# Copy Respository
In Windows,
Download and extract this file to the C:/FOAR705 folder.

<https://cloudstor.aarnet.edu.au/plus/s/UPb7f1kUdGZMa7w>



These steps have acquired each piece of software that Ubuntu will use through scripts. If you have used a different path for the project folder (e.g. one that is not /mnt/c/foar705/project) you will need to edit script pathing. 



### If you prefer to copy the repository directly from Github - follow the following instructions instead.
This will copy the project repository, placing the relevant folder structure, scripts and necessary files onto your computer. 

Navigate the Ubuntu terminal to your base C: folder (cd /mnt/c/) and run the following commands:

1 `git clone https://github.com/MQ-FOAR705/HammondA_PoC_Design`
2 `cd HammondA_PoC_Design`
3 `mv project /mnt/c/foar705`
4 `cd ..`
5 `rm -r HammondA_PoC_Design`
6 `cd /mnt/c/foar705/project/ubuntu/deepspeech`
7 `curl -LO https://github.com/mozilla/DeepSpeech/releases/download/v0.5.1/deepspeech-0.5.1-models.tar.gz`
8 `tar xvf deepspeech-0.5.1-models.tar.gz`
9 `rm deepspeech-0.5.1-models.tar.gz`
10 `mv deepspeech-0.5.1-models models`

# Placing the relevant files
Within the project directory there is a set folder structure, interviews (for audio files), fieldnotes (for notes stored in Joplin) and articles (for PDF files). Currently there are test files already placed within these directories, if you would like to add your own please do so in the correct directory according to the file type.

# Scripts
While in the ubuntu folder of the project, run the convertall script as follows

`bash convertall.sh`

# Analysis
Open the Voyant Tools by running the VoyantServer.jar file within the previously extracted folder.

1 Click Start Server
2 Wait for web page to load
3 Click the Upload button and navigate to the C:/FOAR705/Project/ready folder
4 Select all files and click upload.

# Issues
Current issues with this solution include:
- Deepspeech does not work with all CPU types and may produce errors
- Analysis is somewhat skewed due to the larger quantity of information typically in PDF files
- Is limited to strict folder structure (without making changes to scripts)
- Is limited to previously identified Joplin Notebooks for analysis
- Seemingly no means to automate the upload process into Voyant Tools

# Future Implementations
- Introduce a limitation on the number of words taken from PDF doucments for a more balanced analysis
- Utilise a webserver to potentially perform analysis on more than one file at a time
