json.success @success
json.errors @errors

json.merge! nil_to_string(JSON.parse(yield))