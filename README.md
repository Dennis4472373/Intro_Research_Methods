# Intro_Research_Methods
Repository for the final project of Introduction to Research Methods

# Collect Data

To collect the data like we did, you need to do the following:

1. You can edit the files data_2013.sh and data_2019.sh like you want them to.
      - data_2013.sh is to find the data from one year and data_2019.sh is to find data from the second year.
      - Within these files there is an explanation how to change the files. 

2. Once the files are ready, you'll need to upload them to Karora using the following lines of code:
        
        scp file_name1.sh s1234567@karora.let.rug.nl:
        scp file_name2.sh s1234567@karora.let.rug.nl:
      
      - s1234567 needs to be replaced with your own login code.
      - file_name.sh should be replaced with the correct file name.
      - After entering your password, the file should be uploaded to your Karora environment.

3. Login to Karora using the following code:

        ssh s1234567@karora.let.rug.nl
        
      - Again, replace s1234567 with your own login code.
      - Enter your password and you should be logged in.

4. When you are logged in, execute the following lines of code to ensure that you can run your files:

        chmod +x file_name1.sh
        chmod +x file_name2.sh
        
      - Change file_name.sh with your corresponding file names.

5. Now, to collect the data, perform the following lines of code:

        ./file_name1.sh > output1.txt
        ./file_name2.sh > output2.txt
        
      - Beware, this could take a long time (multiple hours), depending on how much tweets there are to loop through.
      - Change file_name.sh and output.txt to the corresponding names

6. Put your output files in a new directory (This will help when you are transferring these files back to your computer):
      
        mkdir new_directory
        mv output1.txt new_directory
        mv output2.txt new_directory
      
    - You need to change the names of the directory and the output files to your own choice.

7. When all of this is done, you can transfer the output files back to your own computer (you have to close Karora before executing this code):

        scp s1234567@karora.let.rug.nl:new_directory/*.txt path/to/directory
      
      - Now, the data is on your computer

# Process Data

To process the data, we have created a python script that converts the data into an ordered json file (make_dictionary.py). Use the following code to execute this file:

1. Grant access to run the file by the following code:

        chmod +x make_dictionary.py

2. Execute the file by running the following line of code:

        ./make_dictionary.py output1.txt output2.txt
        
      - The output files are the files you perceived after the data collection, you need to change the names to the names that you used.
      - The script will find the data within the output files and put them in a dictionary in a json file called "edited_data.json"
      - The json file will be added to your current directory.
      - This python file only works with the output template that is automatically created by using data_2013.sh and data_2019.sh and it is not made to be working with one or            more than two files.

# Create Tables & Graphs

The tables and graphs are created using Jupyter Notebook. You will need to install this by using the following code:

        pip3 install -r requirements.txt
        
   - requirements.txt is already created and ready for use.

After installing, run this line of code:

        jupyter notebook
        
Now, you can see the code we used by opening data.ipynb.
You can edit this code to create your own or you can create a whole new file. 
        
