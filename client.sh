#client.sh
declare -a ip=("10.44.55.22" "10.44.55.76")
declare -a port=("80" "22" "53")
## now loop through the above array
while :
do
    for i in "${ip[@]}"
    do
        for j in "${port[@]}"
        do
            echo "$i:$j"
            curl --connect-timeout 5 $i:$j
            sleep 1
        done
    done
done
