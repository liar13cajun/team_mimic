#icu input
#cajun 22/06/2024

library(readxl)

# Set the working directory to your folder containing the CSV files
setwd("C:/Project_R/MIMIC_IV_Proj/data/icu")



# List all CSV files in the directory
csv_files <- list.files(pattern = "\\.csv$")

# Loop through each CSV file, read it, and assign it to a variable with the same name as the file
for (file in csv_files) {
  # Create a variable name by removing the .csv extension
  var_name <- paste0("icu_",sub("\\.csv$", "", file))
  
  # Read the CSV file
  data <- read.csv(file)
  
  # Assign the data to a variable with the name `var_name`
  assign(var_name, data)
}

#missing
#caregiver
#d_items

#check

