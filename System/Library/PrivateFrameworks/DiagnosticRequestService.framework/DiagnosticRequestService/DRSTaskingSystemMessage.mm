@interface DRSTaskingSystemMessage
+ (BOOL)isJSONDictForClass:(id)class;
- (BOOL)_isEqualToMessage:(id)message;
- (BOOL)isEqual:(id)equal;
- (DRSTaskingSystemMessage)initWithVersion:(id)version messageUUID:(id)d dateBroadcast:(id)broadcast dateReceived:(id)received;
- (NSString)messageType;
- (id)_mutableJSONDictRepresentation;
- (id)debugDescription;
@end

@implementation DRSTaskingSystemMessage

+ (BOOL)isJSONDictForClass:(id)class
{
  if (!class)
  {
    return 0;
  }

  v4 = [class objectForKeyedSubscript:@"type"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    messageType = [self messageType];
    v6 = [v4 isEqualToString:messageType];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)messageType
{
  v2 = objc_opt_class();

  return [v2 messageType];
}

- (id)_mutableJSONDictRepresentation
{
  v17[5] = *MEMORY[0x277D85DE8];
  v16[0] = @"version";
  version = [(DRSTaskingSystemMessage *)self version];
  v17[0] = version;
  v16[1] = @"type";
  messageType = [objc_opt_class() messageType];
  v17[1] = messageType;
  v16[2] = kDRSTaskingSystemMessage_messageUUIDKey;
  messageUUID = [(DRSTaskingSystemMessage *)self messageUUID];
  uUIDString = [messageUUID UUIDString];
  v17[2] = uUIDString;
  v16[3] = kDRSTaskingSystemMessage_DateReceivedKey;
  v7 = MEMORY[0x277CCABB0];
  dateReceived = [(DRSTaskingSystemMessage *)self dateReceived];
  [dateReceived timeIntervalSince1970];
  v9 = [v7 numberWithDouble:?];
  v17[3] = v9;
  v16[4] = kDRSTaskingSystemMessage_DateBroadcastKey;
  v10 = MEMORY[0x277CCABB0];
  dateBroadcast = [(DRSTaskingSystemMessage *)self dateBroadcast];
  [dateBroadcast timeIntervalSince1970];
  v12 = [v10 numberWithDouble:?];
  v17[4] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
  v14 = [v13 mutableCopy];

  return v14;
}

- (id)debugDescription
{
  jsonDictRepresentation = [(DRSTaskingSystemMessage *)self jsonDictRepresentation];
  v3 = [jsonDictRepresentation description];

  return v3;
}

- (DRSTaskingSystemMessage)initWithVersion:(id)version messageUUID:(id)d dateBroadcast:(id)broadcast dateReceived:(id)received
{
  v28 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  dCopy = d;
  broadcastCopy = broadcast;
  receivedCopy = received;
  date = receivedCopy;
  if (!dCopy)
  {
    v20 = DPLogHandle_TaskingMessageError(receivedCopy);
    if (!os_signpost_enabled(v20))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v21 = "nil UUID";
LABEL_18:
    v22 = v20;
    v23 = 2;
    goto LABEL_19;
  }

  if (!versionCopy)
  {
    v20 = DPLogHandle_TaskingMessageError(receivedCopy);
    if (!os_signpost_enabled(v20))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v21 = "nil version";
    goto LABEL_18;
  }

  v16 = [(DRSTaskingSystemMessage *)self _versionIsSupported:versionCopy];
  if ((v16 & 1) == 0)
  {
    v20 = DPLogHandle_TaskingMessageError(v16);
    if (os_signpost_enabled(v20))
    {
      *buf = 138543362;
      v27 = versionCopy;
      v21 = "Unsupported version %{public}@";
      v22 = v20;
      v23 = 12;
LABEL_19:
      _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSTaskingSystemMessageFailedInit", v21, buf, v23);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (!broadcastCopy)
  {
    v20 = DPLogHandle_TaskingMessageError(v16);
    if (os_signpost_enabled(v20))
    {
      *buf = 0;
      v21 = "nil dateBroadcast";
      goto LABEL_18;
    }

LABEL_20:

    selfCopy = 0;
    goto LABEL_21;
  }

  if (!date)
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  v25.receiver = self;
  v25.super_class = DRSTaskingSystemMessage;
  v17 = [(DRSTaskingSystemMessage *)&v25 init];
  p_isa = &v17->super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_version, version);
    objc_storeStrong(p_isa + 2, d);
    objc_storeStrong(p_isa + 4, broadcast);
    objc_storeStrong(p_isa + 3, date);
  }

  self = p_isa;
  selfCopy = self;
LABEL_21:

  return selfCopy;
}

- (BOOL)_isEqualToMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  if (!messageCopy)
  {
    goto LABEL_5;
  }

  if (messageCopy == self)
  {
    v18 = 1;
    goto LABEL_7;
  }

  dateBroadcast = [(DRSTaskingSystemMessage *)self dateBroadcast];
  [dateBroadcast timeIntervalSince1970];
  v8 = v7;
  dateBroadcast2 = [(DRSTaskingSystemMessage *)v5 dateBroadcast];
  [dateBroadcast2 timeIntervalSince1970];
  v11 = v10;

  if (v8 == v11 && (-[DRSTaskingSystemMessage dateReceived](self, "dateReceived"), v12 = objc_claimAutoreleasedReturnValue(), [v12 timeIntervalSince1970], v14 = v13, -[DRSTaskingSystemMessage dateReceived](v5, "dateReceived"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "timeIntervalSince1970"), v17 = v16, v15, v12, v14 == v17))
  {
    version = [(DRSTaskingSystemMessage *)self version];
    version2 = [(DRSTaskingSystemMessage *)v5 version];
    if ([version isEqualToString:version2])
    {
      messageUUID = [(DRSTaskingSystemMessage *)self messageUUID];
      messageUUID2 = [(DRSTaskingSystemMessage *)v5 messageUUID];
      v18 = [messageUUID isEqual:messageUUID2];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
LABEL_5:
    v18 = 0;
  }

LABEL_7:

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(DRSTaskingSystemMessage *)self _isEqualToMessage:equalCopy];

  return v5;
}

@end