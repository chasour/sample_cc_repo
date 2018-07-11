
array=()
while IFS=  read -r -d $'\0'; do
    array+=("files[]=@$REPLY")
done < <(find . -name "*.go" -print0)

for i in "${array[@]}"
do
   echo "$i"
done
