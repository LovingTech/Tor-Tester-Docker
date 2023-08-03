while :
do
    now=$(date +"%T")
    echo "Current time : $now"
    curl -s https://check.torproject.org | grep -A 2 "<title>"
    echo "________________________________NEXT_________________________________"
    sleep $1 
done