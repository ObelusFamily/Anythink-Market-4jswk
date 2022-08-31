# Configure port 3000 to public upon start

echo "Current ports status:"
output0=$(gh codespace ports -c $CODESPACE_NAME)
echo "$output0"

echo "Publicizing ports..."
sleep 1

gh codespace ports visibility 3000:public -c $CODESPACE_NAME
echo "$output1"
echo "Done..."

echo "Status check:"

output2=$(gh codespace ports -c $CODESPACE_NAME)
echo "$output2"