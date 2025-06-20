#!/bin/bash
TIEMPO=$(date "+%Y-%m-%d %H:%M:%S")
echo -e "Hora\t\t\tMemoria\t\tDisco (root)\tCPU"
segundos="3600"
fin=$((SECONDS+segundos))
formatted_date=$(date +"%Y-%m-%d-%H-%M-%S")
logFile="monitor_log_${formatted_date}.log"

while [ $SECONDS -lt $fin ]; do
	MEMORIA=$(free -m | awk 'NR==2{printf "%.f%%\t\t", $3*100/$2 }')
	DISCO=$(df -h | awk '$NF=="/"{printf "%s\t\t", $5}')
	CPU=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{printf("%.f\n", 100 - $1)}')
	echo -e "$TIEMPO\t$MEMORIA$DISCO$CPU"
	echo "Timepo: ${TIEMPO} - Memoria: ${MEMORIA} - Disco: ${DISCO} - Cpu: ${CPU} \n" >> $logFile
	sleep 3
done
