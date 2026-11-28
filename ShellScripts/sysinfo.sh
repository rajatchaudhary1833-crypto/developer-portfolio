
#!/bin/bash

echo "================================"
echo "       SYSTEM INFORMATION"
echo "================================"

echo "Student Name: Rajat Chaudhary"
echo "Roll Number: 2601730333"
echo "Date: $(date)"

echo ""
echo "CPU Information:"
lscpu | grep "Model name" | head -1

echo ""
echo "Memory Information:"
free -h | awk 'NR==2 {print "Total Memory: " $2; print "Used Memory: " $3}'

echo ""
echo "Top 3 CPU Processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -4

echo ""
echo "System Information Report Generated Successfully!"
