A simple bash CLI helper to invoke a serverless function locally and pipe its output into CSV. This works best with functions that generate data and return data in the form of list-of-dictionaries (but at present will write any data returned to CSV).

To set up, make sure you add the necessary permissions to the bash script

`chmod u+rx invoke_sls_local.sh`

Example usage:

`bash invoke_sls_local.sh "function-1" '{"Search_Query":"Potatoes"}'`

TODOs:

[X] Working write to CSV

[] Removes 'data' leading value

[] Option to pass in an alternative output file name

[] Detects output data type?
