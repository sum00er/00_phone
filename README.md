## 00_phone
A job message system for npwd | npwd 的發單系統

### Desciprtion 描述:
When a player sends a message to the job through phone, the message along with the gps of the sender will be sent to all players with that job
You can set the jobs as default contact in the config file of npwd (the `number` must be the same as the job name)

當一名玩家透過手機傳送訊息到某個職業，系統會向所有帶有該職業的玩家傳送該訊息，並附上傳送者的GPS
你可以在npwd的config中把各個職業設置成預設聯繫人 (`number` 必須與職業名字相同)
```json
"defaultContacts": [
    { "display": "police", "number": "police" },
    { "display": "EMS", "number": "ambulance" },
    { "display": "mechanics", "number": "mechanic" },
  ],
```

### Prview 預覽:
![image](https://github.com/user-attachments/assets/e4471340-a695-4bb9-857f-a8387f6c9a0d)

### Dependency 依賴:
[npwd](https://github.com/project-error/npwd)

### support 支援:
[discord](https://discord.gg/pjuPHPrHnx)
