BEGIN{
count=0;
time=0;
total_bytes_sent=0;
total_bytes_received=0;
}{
if($1=="r" && $4==1 && $5=="tcp")
total_bytes_received+=$6;
if($1=="+" && $3==0 && $5=="tcp")
total_bytes_sent+=$6;
}END{
system("clear");
printf("\nTransmission time to transfer file is %f",$2);
printf("\nActual data sent from server is %f Mbps\n",(total_bytes_sent/1000000));
printf("Data received by the client is %f Mbps\n",(total_bytes_received/1000000));
}

