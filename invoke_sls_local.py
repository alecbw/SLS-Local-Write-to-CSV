from subprocess import call

function = "lookup-website"
data = '{"Search_Query":"gainsight"}'
rc = call(["./invoke_sls_local.sh", function, data])
print(rc)
print('something else')
#chmod u+rx invoke_sls_local.sh
