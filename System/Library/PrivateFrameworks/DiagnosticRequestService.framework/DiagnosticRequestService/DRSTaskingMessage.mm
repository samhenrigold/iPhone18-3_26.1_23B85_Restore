@interface DRSTaskingMessage
- (BOOL)_isEqualToMessage:(id)message;
- (DRSTaskingMessage)initWithJSONDict:(id)dict;
- (DRSTaskingMessage)initWithVersion:(id)version messageUUID:(id)d dateBroadcast:(id)broadcast dateReceived:(id)received teamTaskings:(id)taskings;
- (id)jsonDictRepresentation;
@end

@implementation DRSTaskingMessage

- (DRSTaskingMessage)initWithVersion:(id)version messageUUID:(id)d dateBroadcast:(id)broadcast dateReceived:(id)received teamTaskings:(id)taskings
{
  versionCopy = version;
  dCopy = d;
  broadcastCopy = broadcast;
  receivedCopy = received;
  taskingsCopy = taskings;
  v17 = taskingsCopy;
  if (!dCopy)
  {
    v19 = DPLogHandle_TaskingMessageError(taskingsCopy);
    if (!os_signpost_enabled(v19))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v20 = "nil taskingMessageUUID";
LABEL_12:
    _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSTaskingMessageFailedInit", v20, buf, 2u);
    goto LABEL_13;
  }

  if (!taskingsCopy)
  {
    v19 = DPLogHandle_TaskingMessageError(0);
    if (!os_signpost_enabled(v19))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v20 = "nil teamTaskings";
    goto LABEL_12;
  }

  if (![taskingsCopy count])
  {
    v19 = DPLogHandle_TaskingMessageError(0);
    if (os_signpost_enabled(v19))
    {
      *buf = 0;
      v20 = "Empty teamTaskings";
      goto LABEL_12;
    }

LABEL_13:

    selfCopy = 0;
    goto LABEL_18;
  }

  *buf = 0;
  v27 = buf;
  v28 = 0x2020000000;
  v29 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __89__DRSTaskingMessage_initWithVersion_messageUUID_dateBroadcast_dateReceived_teamTaskings___block_invoke;
  v25[3] = &unk_27899FC10;
  v25[4] = buf;
  [v17 enumerateKeysAndObjectsUsingBlock:v25];
  if (v27[24])
  {
    selfCopy = 0;
  }

  else
  {
    v24.receiver = self;
    v24.super_class = DRSTaskingMessage;
    v21 = [(DRSTaskingSystemMessage *)&v24 initWithVersion:versionCopy messageUUID:dCopy dateBroadcast:broadcastCopy dateReceived:receivedCopy];
    v22 = v21;
    if (v21)
    {
      objc_storeStrong(&v21->_teamTaskings, taskings);
    }

    self = v22;
    selfCopy = self;
  }

  _Block_object_dispose(buf, 8);
LABEL_18:

  return selfCopy;
}

void __89__DRSTaskingMessage_initWithVersion_messageUUID_dateBroadcast_dateReceived_teamTaskings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 teamID];
  v8 = [v5 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    v10 = DPLogHandle_TaskingMessageError(v9);
    if (os_signpost_enabled(v10))
    {
      v11 = [v6 teamID];
      v12 = 138543618;
      v13 = v5;
      v14 = 2114;
      v15 = v11;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSTaskingMessageFailedInit", "Malformed team tasking dict (key: %{public}@, value: %{public}@)", &v12, 0x16u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (BOOL)_isEqualToMessage:(id)message
{
  messageCopy = message;
  v22.receiver = self;
  v22.super_class = DRSTaskingMessage;
  if ([(DRSTaskingSystemMessage *)&v22 _isEqualToMessage:messageCopy])
  {
    v5 = messageCopy;
    dateBroadcast = [(DRSTaskingSystemMessage *)self dateBroadcast];
    [dateBroadcast timeIntervalSince1970];
    v8 = v7;
    dateBroadcast2 = [v5 dateBroadcast];
    [dateBroadcast2 timeIntervalSince1970];
    v11 = v10;

    if (v8 == v11 && (-[DRSTaskingSystemMessage dateReceived](self, "dateReceived"), v12 = objc_claimAutoreleasedReturnValue(), [v12 timeIntervalSince1970], v14 = v13, objc_msgSend(v5, "dateReceived"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "timeIntervalSince1970"), v17 = v16, v15, v12, v14 == v17))
    {
      teamTaskings = [(DRSTaskingMessage *)self teamTaskings];
      teamTaskings2 = [v5 teamTaskings];
      v18 = [teamTaskings isEqualToDictionary:teamTaskings2];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)jsonDictRepresentation
{
  v21[4] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  teamTaskings = [(DRSTaskingMessage *)self teamTaskings];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __43__DRSTaskingMessage_jsonDictRepresentation__block_invoke;
  v18[3] = &unk_27899FC38;
  v19 = dictionary;
  v5 = dictionary;
  [teamTaskings enumerateKeysAndObjectsUsingBlock:v18];

  v20[0] = kDRSTaskingSystemMessage_messageUUIDKey;
  messageUUID = [(DRSTaskingSystemMessage *)self messageUUID];
  uUIDString = [messageUUID UUIDString];
  v21[0] = uUIDString;
  v20[1] = kDRSTaskingSystemMessage_DateReceivedKey;
  v8 = MEMORY[0x277CCABB0];
  dateReceived = [(DRSTaskingSystemMessage *)self dateReceived];
  [dateReceived timeIntervalSince1970];
  v10 = [v8 numberWithDouble:?];
  v21[1] = v10;
  v20[2] = kDRSTaskingSystemMessage_DateBroadcastKey;
  v11 = MEMORY[0x277CCABB0];
  dateBroadcast = [(DRSTaskingSystemMessage *)self dateBroadcast];
  [dateBroadcast timeIntervalSince1970];
  v13 = [v11 numberWithDouble:?];
  v20[3] = kDRSTaskingMessage_TeamTaskingsKey;
  v21[2] = v13;
  v21[3] = v5;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:4];

  v17.receiver = self;
  v17.super_class = DRSTaskingMessage;
  _mutableJSONDictRepresentation = [(DRSTaskingSystemMessage *)&v17 _mutableJSONDictRepresentation];
  [_mutableJSONDictRepresentation addEntriesFromDictionary:v14];

  return _mutableJSONDictRepresentation;
}

void __43__DRSTaskingMessage_jsonDictRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 jsonDictRepresentation];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (DRSTaskingMessage)initWithJSONDict:(id)dict
{
  dictCopy = dict;
  v5 = [objc_opt_class() isJSONDictForClass:dictCopy];
  if (v5)
  {
    isKindOfClass = [dictCopy objectForKeyedSubscript:kDRSTaskingSystemMessage_messageUUIDKey];
    v7 = isKindOfClass;
    if (!isKindOfClass || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
    {
      v9 = DPLogHandle_TaskingMessageError(isKindOfClass);
      if (os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingMessageJSONInitError", "Invalid taskingMessageUUID", buf, 2u);
      }

      selfCopy = 0;
      v8 = v7;
      goto LABEL_21;
    }

    v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];

    v9 = _dateFromJSONDict(dictCopy, kDRSTaskingSystemMessage_DateReceivedKey);
    v10 = _dateFromJSONDict(dictCopy, kDRSTaskingSystemMessage_DateBroadcastKey);
    v11 = [dictCopy objectForKeyedSubscript:kDRSTaskingMessage_TeamTaskingsKey];
    if (v11)
    {
      objc_opt_class();
      v12 = objc_opt_isKindOfClass();
      if ((v12 & 1) == 0)
      {
        v17 = DPLogHandle_TaskingMessageError(v12);
        if (os_signpost_enabled(v17))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingMessageJSONInitError", "Invalid teamTaskingsDict", buf, 2u);
        }

        v14 = 0;
        goto LABEL_19;
      }

      *buf = 0;
      v24 = buf;
      v25 = 0x2020000000;
      v26 = 0;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __38__DRSTaskingMessage_initWithJSONDict___block_invoke;
      v19[3] = &unk_27899FC60;
      v22 = buf;
      v20 = v9;
      v14 = dictionary;
      v21 = v14;
      [v11 enumerateKeysAndObjectsUsingBlock:v19];
      v15 = v24[24];

      _Block_object_dispose(buf, 8);
      if (v15)
      {
LABEL_19:
        selfCopy = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v14 = 0;
    }

    v11 = [(DRSTaskingSystemMessage *)self _versionFromJSONDict:dictCopy];
    self = [(DRSTaskingMessage *)self initWithVersion:v11 messageUUID:v8 dateBroadcast:v10 dateReceived:v9 teamTaskings:v14];
    selfCopy = self;
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  v8 = DPLogHandle_TaskingMessageError(v5);
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingMessageJSONInitError", "JSON dictionary of wrong type", buf, 2u);
  }

  selfCopy = 0;
LABEL_22:

  return selfCopy;
}

void __38__DRSTaskingMessage_initWithJSONDict___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v10 = [[DRSTeamTasking alloc] initWithJSONDict:v8 receivedDate:*(a1 + 32)];
    if (v10)
    {
      [*(a1 + 40) setObject:v10 forKeyedSubscript:v7];
    }

    else
    {
      v12 = DPLogHandle_TaskingMessageError(0);
      if (os_signpost_enabled(v12))
      {
        *v13 = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingMessageJSONInitError", "Invalid teamTasking value", v13, 2u);
      }

      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  else
  {
    v11 = DPLogHandle_TaskingMessageError(isKindOfClass);
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingMessageJSONInitError", "Invalid teamTaskingsDict class", buf, 2u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }
}

@end