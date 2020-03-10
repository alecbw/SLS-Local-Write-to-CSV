
# Note: not used at present; simpler to just a bash script.

from subprocess import call

function = "lookup-website"
data = '{"Search_Query":"gainsight"}'
rc = call(["./invoke_sls_local.sh", function, data])
print(rc)

