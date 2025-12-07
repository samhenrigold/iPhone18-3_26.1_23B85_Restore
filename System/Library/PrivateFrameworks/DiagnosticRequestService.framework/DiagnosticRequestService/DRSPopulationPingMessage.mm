@interface DRSPopulationPingMessage
- (DRSPopulationPingMessage)init;
- (DRSPopulationPingMessage)initWithJSONDict:(id)dict;
@end

@implementation DRSPopulationPingMessage

- (DRSPopulationPingMessage)initWithJSONDict:(id)dict
{
  dictCopy = dict;
  v5 = [objc_opt_class() isJSONDictForClass:dictCopy];
  if (v5)
  {
    isKindOfClass = [dictCopy objectForKeyedSubscript:kDRSTaskingSystemMessage_messageUUIDKey];
    v7 = isKindOfClass;
    if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
    {
      v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];

      v9 = _dateFromJSONDict(dictCopy, kDRSTaskingSystemMessage_DateReceivedKey);
      v10 = _dateFromJSONDict(dictCopy, kDRSTaskingSystemMessage_DateBroadcastKey);
      v11 = [(DRSTaskingSystemMessage *)self _versionFromJSONDict:dictCopy];
      v14.receiver = self;
      v14.super_class = DRSPopulationPingMessage;
      self = [(DRSTaskingSystemMessage *)&v14 initWithVersion:v11 messageUUID:v8 dateBroadcast:v10 dateReceived:v9];

      v7 = v8;
      selfCopy = self;
    }

    else
    {
      v9 = DPLogHandle_TaskingMessageError(isKindOfClass);
      if (os_signpost_enabled(v9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TaskingMessageJSONInitError", "Invalid pingUUID", buf, 2u);
      }

      selfCopy = 0;
    }
  }

  else
  {
    v7 = DPLogHandle_TaskingMessageError(v5);
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PopulationPingJSONInitError", "JSON dictionary of wrong type", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (DRSPopulationPingMessage)init
{
  date = [MEMORY[0x277CBEAA8] date];
  v4 = kDRSPopulationPingMessageCurrentVersion;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v6 = [(DRSTaskingSystemMessage *)self initWithVersion:v4 messageUUID:uUID dateBroadcast:date dateReceived:date];

  return v6;
}

@end