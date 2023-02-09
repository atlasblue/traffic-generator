#client.sh
declare -a ip=("10.44.55.169" "10.44.55.168")
declare -a port=("5432")
## now loop through the above array
while :
do
    for i in "${ip[@]}"
    do
        for j in "${port[@]}"
        do
            echo "$i:$j"
            curl $i:$j
            sleep 1
        done
    done
done
