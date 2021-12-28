# Server to ping (google DNS)
serverAdr="8.8.8.8"

ping -c 1 $serverAdr > /dev/null 2>&1
while [ $? -ne 0 ]; do
  echo -e "\e[1A\e[K $(date): Connecting - ${serverAdr}"
  sleep 1
  ping -c 1 $serverAdr > /dev/null 2>&1
done

echo "$(date): Connected - ${serverAdr}";

