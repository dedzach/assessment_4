log_file = open("um-server-01.txt")  #opening a text file


def sales_reports(log_file): #creating a funtion called sales_reports with parameter log_file 
    for line in log_file: #saying what to do for each line in the parameter set
        line = line.rstrip() #removing white spaces at the end of text file string 
        day = line[0:3] #I this is saying a starting at the beginning, a complete day day is = day, date : number of items sold, what the item was, and user#
        if day == "True": #If data meets the requirements
            print(line) #print the line in the txt file. 


sales_reports(log_file)
