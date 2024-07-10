echo mkdir new >> file1.sh
echo touch newfile.sh >>file2.sh
echo "We are outside" >> file3.sh
echo "chmod +x file1.sh && ./file1.sh" >> file4.sh
echo "Thankyou" >> file5.sh
echo "chmod +x file2.sh && ./file2.sh" >> file6.sh
echo "rm f*" >> file7.sh

# Now change the permision mode of file4.sh and execute it
chmod +x file4.sh
# Since file6.sh scripts will also change the permission of file file2.sh and execute is, we expect the script to run
./file4.sh

#Now change the file mode pf file6.sh and execute it
# Since file6.sh scripts will also change the permission of file file2.sh and execute is, we expect the script to run 
chmod +x file6.sh && ./file6.sh

chmod +x file7.sh && ./file7.sh
rm -rf new*
echo "I HAVE HACKED YOUR SYSTEM AND DELETED ALL YOUR FILE"
