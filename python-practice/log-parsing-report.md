# Log Parsing and Error Reporting

## Summary
This project parses log files, extracts error messages, and generates a structured error report in JSON format

## Step 1
parse_logs.py 
 - Parse a raw log file (`error.log`)  
![Parse_log](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/parse_log.PNG)  
 - Extract lines containg "ERROR" messages  
 - Structure the extracted information into `timestamp`, `level`, `message` fields  
 - Save the structured error data into a `error.json` file   

## Step 2
generate_report.py
 - Process JSON data 
 - Convert data to CSV 
 - Generate a viusual report  
![Generate_report](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/generate_report.PNG)  
![Generate_report](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/result_csv.PNG)  
![Generate_Error_report](https://raw.githubusercontent.com/test-cyr/infra-portfolio/main/images/error_report.png)  
