реализация sentiment analysis с помощью torchserve n\
Инструкция по запуску:
python3 dump_model.py
bash scripts/create-archive.sh 
bash scripts/start-torchserve.sh 
curl --location 'http://127.0.0.1:8080/predictions/my_model' --header 'Content-Type: application/json' --data '{
    "input": ["yes, hilarious","may bbe? idk", "No no no "]
}'
Результат запроса к серверу:
[
  "Positive",
  "Neutral",
  "Negative"
]
