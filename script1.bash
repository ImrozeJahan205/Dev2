# A variable storing list of value

endpoints=(
	"https://httpbin.org/status/200"
	"https://httpbin.org/status/404"
	"https://httpbin.org/status/500"
)

for endpoints in "${endpoints[@]}"; do
	status=$(curl -o /dev/null -s -w "%{https_code}" $endpoints)

	if ["$status" = "200"]; then
		echo "The url returned success status as $status"
	elif ["$status" = "404"]; then
                echo "The url returned success status as $status"
		echo "failed"
	else 
		echo "The url returned failure status as $status"
	fi
done


