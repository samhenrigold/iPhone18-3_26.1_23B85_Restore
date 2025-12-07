@interface DRSCancelTaskingMessage
- (BOOL)_isEqualToMessage:(id)message;
- (DRSCancelTaskingMessage)initWithJSONDict:(id)dict;
- (DRSCancelTaskingMessage)initWithVersion:(id)version messageUUID:(id)d dateBroadcast:(id)broadcast dateReceived:(id)received perTeamCancelledConfigUUIDs:(id)ds;
- (id)jsonDictRepresentation;
@end

@implementation DRSCancelTaskingMessage

- (DRSCancelTaskingMessage)initWithVersion:(id)version messageUUID:(id)d dateBroadcast:(id)broadcast dateReceived:(id)received perTeamCancelledConfigUUIDs:(id)ds
{
  versionCopy = version;
  dCopy = d;
  broadcastCopy = broadcast;
  receivedCopy = received;
  dsCopy = ds;
  if (_checkCancelNonNil(versionCopy, "version") && _checkCancelNonNil(dCopy, "cancelTaskingUUID") && _checkCancelNonNil(dsCopy, "perTeamCancelledConfigUUIDs"))
  {
    v21.receiver = self;
    v21.super_class = DRSCancelTaskingMessage;
    v17 = [(DRSTaskingSystemMessage *)&v21 initWithVersion:versionCopy messageUUID:dCopy dateBroadcast:broadcastCopy dateReceived:receivedCopy];
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(&v17->_perTeamCancelledConfigUUIDs, ds);
    }

    self = v18;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)_isEqualToMessage:(id)message
{
  messageCopy = message;
  v10.receiver = self;
  v10.super_class = DRSCancelTaskingMessage;
  if ([(DRSTaskingSystemMessage *)&v10 _isEqualToMessage:messageCopy])
  {
    v5 = messageCopy;
    perTeamCancelledConfigUUIDs = [(DRSCancelTaskingMessage *)self perTeamCancelledConfigUUIDs];
    perTeamCancelledConfigUUIDs2 = [v5 perTeamCancelledConfigUUIDs];

    v8 = [perTeamCancelledConfigUUIDs isEqualToDictionary:perTeamCancelledConfigUUIDs2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)jsonDictRepresentation
{
  v13[1] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  perTeamCancelledConfigUUIDs = [(DRSCancelTaskingMessage *)self perTeamCancelledConfigUUIDs];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__DRSCancelTaskingMessage_jsonDictRepresentation__block_invoke;
  v10[3] = &unk_27899FC88;
  v11 = dictionary;
  v5 = dictionary;
  [perTeamCancelledConfigUUIDs enumerateKeysAndObjectsUsingBlock:v10];

  v12 = kDRSCancelTaskingMessage_perTeamCancelledConfigUUIDsKey;
  v13[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9.receiver = self;
  v9.super_class = DRSCancelTaskingMessage;
  _mutableJSONDictRepresentation = [(DRSTaskingSystemMessage *)&v9 _mutableJSONDictRepresentation];
  [_mutableJSONDictRepresentation addEntriesFromDictionary:v6];

  return _mutableJSONDictRepresentation;
}

void __49__DRSCancelTaskingMessage_jsonDictRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) UUIDString];
        [v7 addObject:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
}

- (DRSCancelTaskingMessage)initWithJSONDict:(id)dict
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
        _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CancelTaskingMessageJSONInitError", "Invalid cancelTaskingUUID", buf, 2u);
      }

      selfCopy = 0;
      v8 = v7;
      goto LABEL_21;
    }

    v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];

    v9 = _dateFromJSONDict(dictCopy, kDRSTaskingSystemMessage_DateReceivedKey);
    v10 = _dateFromJSONDict(dictCopy, kDRSTaskingSystemMessage_DateBroadcastKey);
    v11 = [dictCopy objectForKeyedSubscript:kDRSCancelTaskingMessage_perTeamCancelledConfigUUIDsKey];
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
          _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CancelTaskingMessageJSONInitError", "Invalid perTeamCancelledUUIDStringsDict", buf, 2u);
        }

        v14 = 0;
        goto LABEL_19;
      }

      *buf = 0;
      v23 = buf;
      v24 = 0x2020000000;
      v25 = 0;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __44__DRSCancelTaskingMessage_initWithJSONDict___block_invoke;
      v19[3] = &unk_27899FCB0;
      v21 = buf;
      v14 = dictionary;
      v20 = v14;
      [v11 enumerateKeysAndObjectsUsingBlock:v19];
      v15 = v23[24];

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
    self = [(DRSCancelTaskingMessage *)self initWithVersion:v11 messageUUID:v8 dateBroadcast:v10 dateReceived:v9 perTeamCancelledConfigUUIDs:v14];
    selfCopy = self;
LABEL_20:

LABEL_21:
    goto LABEL_22;
  }

  v8 = DPLogHandle_TaskingMessageError(v5);
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CancelTaskingMessageJSONInitError", "JSON dictionary of wrong type", buf, 2u);
  }

  selfCopy = 0;
LABEL_22:

  return selfCopy;
}

void __44__DRSCancelTaskingMessage_initWithJSONDict___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v10 = [MEMORY[0x277CBEB18] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      v25 = a1;
      v26 = v7;
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v27 + 1) + 8 * v15);
        objc_opt_class();
        v17 = objc_opt_isKindOfClass();
        if ((v17 & 1) == 0)
        {
          break;
        }

        v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v16];
        if (!v18)
        {
          v21 = DPLogHandle_TaskingMessageError(0);
          if (os_signpost_enabled(v21))
          {
            *buf = 138543362;
            v32 = v16;
            v22 = "Invalid UUID string (%{public}@)";
            v23 = v21;
            v24 = 12;
LABEL_19:
            _os_signpost_emit_with_name_impl(&dword_232906000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CancelTaskingMessageJSONInitError", v22, buf, v24);
          }

          goto LABEL_20;
        }

        v19 = v18;
        [v10 addObject:v18];

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v27 objects:v33 count:16];
          a1 = v25;
          v7 = v26;
          if (v13)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }

      v21 = DPLogHandle_TaskingMessageError(v17);
      if (os_signpost_enabled(v21))
      {
        *buf = 0;
        v22 = "Invalid UUID string class";
        v23 = v21;
        v24 = 2;
        goto LABEL_19;
      }

LABEL_20:
      v7 = v26;

      *(*(*(v25 + 40) + 8) + 24) = 1;
      *a4 = 1;

      goto LABEL_21;
    }

LABEL_11:

    [*(a1 + 32) setObject:v10 forKeyedSubscript:v7];
LABEL_21:
  }

  else
  {
    v20 = DPLogHandle_TaskingMessageError(isKindOfClass);
    if (os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CancelTaskingMessageJSONInitError", "Invalid perTeamCancelledUUIDStringsDict class", buf, 2u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

@end