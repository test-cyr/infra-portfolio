# Log Parsing and Error Reporting

## Summary
This project parses log files, extracts error messages, and generates a structured error report in JSON format

## Step 1
parse_logs.py & generate_report.py
 - Parse a raw log file (`error.log`) 

 - Extract lines containg "ERROR" messages
 - Structure the extracted information into `timestamp`, `level`, `message` fields
 - Save the structured error data into a `error.json` file
