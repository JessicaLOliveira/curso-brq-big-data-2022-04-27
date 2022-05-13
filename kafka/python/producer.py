from kafka import KafkaProducer
from time import sleep
import json
import random
import math

producer= KafkaProducer(
    bootstrap_servers= ['singlenode_kafka_1: 29092'],
    value_serializer= lambda x : str(x).encode('utf-8')
)

while True:
    rand=random.randint(1,999)
    print(rand)
    producer.send('meu-topico-legal', rand)
    sleep(5)

#media = 0
#resultado = 0
#count = 0

#while True:
    #rand=random.randint(1,999)
    #print(rand)
    #count +=1
   # resultado = rand + rand
    #media = resultado/count
   # print(media)
   # producer.send('meu-topico-legal', rand)
    #sleep(3)
   # producer.send('meu-topico-legal', media)
   # sleep(5)
        
       
        



   


