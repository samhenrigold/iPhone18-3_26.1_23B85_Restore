@interface IMSPISimulatedMessage
+ (id)_dateFormatter;
- (IMSPISimulatedMessage)init;
- (IMSPISimulatedMessage)initWithDictionaryRepresentation:(id)representation;
- (NSDictionary)dictionaryRepresentation;
- (id)_calculateGUID;
- (id)_calculateSender;
- (id)_calculateServiceName;
- (id)_calculateTimestamp;
- (id)_createItem;
- (id)_createSimulatedMessage;
- (id)debugDescription;
@end

@implementation IMSPISimulatedMessage

- (id)_calculateSender
{
  if ([(IMSPISimulatedMessage *)self fromMe])
  {
    sender2 = 0;
  }

  else
  {
    sender = [(IMSPISimulatedMessage *)self sender];

    if (sender)
    {
      sender2 = [(IMSPISimulatedMessage *)self sender];
    }

    else
    {
      handles = [(IMSPISimulatedMessage *)self handles];
      sender2 = [handles firstObject];
    }
  }

  return sender2;
}

- (id)_calculateServiceName
{
  serviceName = [(IMSPISimulatedMessage *)self serviceName];
  v3 = serviceName;
  if (serviceName)
  {
    v4 = serviceName;
  }

  else
  {
    v4 = *MEMORY[0x1E69A7AE0];
  }

  v5 = v4;

  return v4;
}

- (id)_calculateTimestamp
{
  date = [(IMSPISimulatedMessage *)self date];
  v3 = date;
  if (date)
  {
    v4 = date;
  }

  else
  {
    v4 = [MEMORY[0x1E695DF00] now];
  }

  v5 = v4;

  return v5;
}

- (id)_calculateGUID
{
  guid = [(IMSPISimulatedMessage *)self guid];
  v3 = guid;
  if (guid)
  {
    stringGUID = guid;
  }

  else
  {
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  }

  v5 = stringGUID;

  return v5;
}

- (id)_createItem
{
  _calculateSender = [(IMSPISimulatedMessage *)self _calculateSender];
  _calculateTimestamp = [(IMSPISimulatedMessage *)self _calculateTimestamp];
  v5 = objc_alloc(MEMORY[0x1E69A8138]);
  _calculateGUID = [(IMSPISimulatedMessage *)self _calculateGUID];
  v7 = [v5 initWithSender:_calculateSender time:_calculateTimestamp guid:_calculateGUID type:0];

  _calculateServiceName = [(IMSPISimulatedMessage *)self _calculateServiceName];
  [v7 setService:_calculateServiceName];

  [v7 setFlags:{-[IMSPISimulatedMessage flags](self, "flags")}];
  if ([(IMSPISimulatedMessage *)self fromMe])
  {
    [v7 setFlags:{objc_msgSend(v7, "flags") | 4}];
    [v7 setFlags:{objc_msgSend(v7, "flags") | 0x8000}];
  }

  accountID = [(IMSPISimulatedMessage *)self accountID];
  [v7 setAccountID:accountID];

  if (![(IMSPISimulatedMessage *)self flags])
  {
    [v7 setFlags:{objc_msgSend(v7, "flags") | 1}];
    [v7 setFlags:{objc_msgSend(v7, "flags") & 0xFFFFFFFFFFFFFFF7}];
  }

  v10 = [objc_alloc(MEMORY[0x1E69A82F8]) initWithContent:&stru_1F1B76F98];
  text = [(IMSPISimulatedMessage *)self text];
  [v10 appendString:text];

  body = [v10 body];
  [v7 setBody:body];

  body2 = [v10 body];
  string = [body2 string];
  [v7 setPlainBody:string];

  lastAddressedHandle = [(IMSPISimulatedMessage *)self lastAddressedHandle];
  [v7 setDestinationCallerID:lastAddressedHandle];

  effectID = [(IMSPISimulatedMessage *)self effectID];
  [v7 setExpressiveSendStyleID:effectID];

  bundleID = [(IMSPISimulatedMessage *)self bundleID];
  [v7 setBalloonBundleID:bundleID];

  payloadData = [(IMSPISimulatedMessage *)self payloadData];
  [v7 setPayloadData:payloadData];

  threadIdentifier = [(IMSPISimulatedMessage *)self threadIdentifier];
  [v7 setThreadIdentifier:threadIdentifier];

  return v7;
}

- (id)_createSimulatedMessage
{
  v3 = objc_alloc_init(MEMORY[0x1E69A8290]);
  _createItem = [(IMSPISimulatedMessage *)self _createItem];
  [v3 setItem:_createItem];

  groupID = [(IMSPISimulatedMessage *)self groupID];
  [v3 setGroupID:groupID];

  chatGUID = [(IMSPISimulatedMessage *)self chatGUID];
  [v3 setChatGUID:chatGUID];

  handles = [(IMSPISimulatedMessage *)self handles];
  v8 = [handles arrayByApplyingSelector:sel_lowercaseString];
  [v3 setHandles:v8];

  lastAddressedHandle = [(IMSPISimulatedMessage *)self lastAddressedHandle];
  [v3 setLastAddressedHandle:lastAddressedHandle];

  return v3;
}

- (IMSPISimulatedMessage)init
{
  v3.receiver = self;
  v3.super_class = IMSPISimulatedMessage;
  return [(IMSPISimulatedMessage *)&v3 init];
}

+ (id)_dateFormatter
{
  if (qword_1EB2EA258 != -1)
  {
    sub_1A84E0108();
  }

  v3 = qword_1EB2EA250;

  return v3;
}

- (IMSPISimulatedMessage)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [(IMSPISimulatedMessage *)self init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"guid"];
    [(IMSPISimulatedMessage *)v5 setGuid:v6];

    v7 = [representationCopy objectForKeyedSubscript:@"text"];
    [(IMSPISimulatedMessage *)v5 setText:v7];

    v8 = [representationCopy objectForKeyedSubscript:@"sender"];
    [(IMSPISimulatedMessage *)v5 setSender:v8];

    v9 = [representationCopy objectForKeyedSubscript:@"serviceName"];
    [(IMSPISimulatedMessage *)v5 setServiceName:v9];

    v10 = [representationCopy objectForKeyedSubscript:@"accountID"];
    [(IMSPISimulatedMessage *)v5 setAccountID:v10];

    v11 = [representationCopy objectForKeyedSubscript:@"fromMe"];
    -[IMSPISimulatedMessage setFromMe:](v5, "setFromMe:", [v11 BOOLValue]);

    v12 = [representationCopy objectForKeyedSubscript:@"chatGUID"];
    [(IMSPISimulatedMessage *)v5 setChatGUID:v12];

    v13 = [representationCopy objectForKeyedSubscript:@"groupID"];
    [(IMSPISimulatedMessage *)v5 setGroupID:v13];

    v14 = [representationCopy objectForKeyedSubscript:@"handles"];
    [(IMSPISimulatedMessage *)v5 setHandles:v14];

    v15 = [representationCopy objectForKeyedSubscript:@"lastAddressedHandle"];
    [(IMSPISimulatedMessage *)v5 setLastAddressedHandle:v15];

    v16 = [representationCopy objectForKeyedSubscript:@"flags"];
    -[IMSPISimulatedMessage setFlags:](v5, "setFlags:", [v16 unsignedIntValue]);

    v17 = [representationCopy objectForKeyedSubscript:@"date"];
    if (v17)
    {
      v18 = +[IMSPISimulatedMessage _dateFormatter];
      v19 = [v18 dateFromString:v17];
      [(IMSPISimulatedMessage *)v5 setDate:v19];
    }

    v20 = [representationCopy objectForKeyedSubscript:@"effectID"];
    [(IMSPISimulatedMessage *)v5 setEffectID:v20];

    v21 = [representationCopy objectForKeyedSubscript:@"bundleID"];
    [(IMSPISimulatedMessage *)v5 setBundleID:v21];

    v22 = [representationCopy objectForKeyedSubscript:@"payloadData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v22 options:1];
      [(IMSPISimulatedMessage *)v5 setPayloadData:v23];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(IMSPISimulatedMessage *)v5 setPayloadData:v22];
      }
    }

    v24 = [representationCopy objectForKeyedSubscript:@"threadIdentifier"];
    [(IMSPISimulatedMessage *)v5 setThreadIdentifier:v24];
  }

  return v5;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  guid = [(IMSPISimulatedMessage *)self guid];

  if (guid)
  {
    guid2 = [(IMSPISimulatedMessage *)self guid];
    [v3 setObject:guid2 forKeyedSubscript:@"guid"];
  }

  text = [(IMSPISimulatedMessage *)self text];

  if (text)
  {
    text2 = [(IMSPISimulatedMessage *)self text];
    [v3 setObject:text2 forKeyedSubscript:@"text"];
  }

  sender = [(IMSPISimulatedMessage *)self sender];

  if (sender)
  {
    sender2 = [(IMSPISimulatedMessage *)self sender];
    [v3 setObject:sender2 forKeyedSubscript:@"sender"];
  }

  serviceName = [(IMSPISimulatedMessage *)self serviceName];

  if (serviceName)
  {
    serviceName2 = [(IMSPISimulatedMessage *)self serviceName];
    [v3 setObject:serviceName2 forKeyedSubscript:@"serviceName"];
  }

  accountID = [(IMSPISimulatedMessage *)self accountID];

  if (accountID)
  {
    accountID2 = [(IMSPISimulatedMessage *)self accountID];
    [v3 setObject:accountID2 forKeyedSubscript:@"accountID"];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMSPISimulatedMessage fromMe](self, "fromMe")}];
  [v3 setObject:v14 forKeyedSubscript:@"fromMe"];

  chatGUID = [(IMSPISimulatedMessage *)self chatGUID];

  if (chatGUID)
  {
    chatGUID2 = [(IMSPISimulatedMessage *)self chatGUID];
    [v3 setObject:chatGUID2 forKeyedSubscript:@"chatGUID"];
  }

  groupID = [(IMSPISimulatedMessage *)self groupID];

  if (groupID)
  {
    groupID2 = [(IMSPISimulatedMessage *)self groupID];
    [v3 setObject:groupID2 forKeyedSubscript:@"groupID"];
  }

  handles = [(IMSPISimulatedMessage *)self handles];

  if (handles)
  {
    handles2 = [(IMSPISimulatedMessage *)self handles];
    [v3 setObject:handles2 forKeyedSubscript:@"handles"];
  }

  lastAddressedHandle = [(IMSPISimulatedMessage *)self lastAddressedHandle];

  if (lastAddressedHandle)
  {
    lastAddressedHandle2 = [(IMSPISimulatedMessage *)self lastAddressedHandle];
    [v3 setObject:lastAddressedHandle2 forKeyedSubscript:@"lastAddressedHandle"];
  }

  date = [(IMSPISimulatedMessage *)self date];

  if (date)
  {
    v24 = +[IMSPISimulatedMessage _dateFormatter];
    date2 = [(IMSPISimulatedMessage *)self date];
    v26 = [v24 stringFromDate:date2];
    [v3 setObject:v26 forKeyedSubscript:@"date"];
  }

  effectID = [(IMSPISimulatedMessage *)self effectID];

  if (effectID)
  {
    effectID2 = [(IMSPISimulatedMessage *)self effectID];
    [v3 setObject:effectID2 forKeyedSubscript:@"effectID"];
  }

  if ([(IMSPISimulatedMessage *)self flags])
  {
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[IMSPISimulatedMessage flags](self, "flags")}];
    [v3 setObject:v29 forKeyedSubscript:@"flags"];
  }

  bundleID = [(IMSPISimulatedMessage *)self bundleID];

  if (bundleID)
  {
    bundleID2 = [(IMSPISimulatedMessage *)self bundleID];
    [v3 setObject:bundleID2 forKeyedSubscript:@"bundleID"];
  }

  payloadData = [(IMSPISimulatedMessage *)self payloadData];

  if (payloadData)
  {
    payloadData2 = [(IMSPISimulatedMessage *)self payloadData];
    v34 = [payloadData2 base64EncodedStringWithOptions:0];
    [v3 setObject:v34 forKeyedSubscript:@"payloadData"];
  }

  threadIdentifier = [(IMSPISimulatedMessage *)self threadIdentifier];

  if (threadIdentifier)
  {
    threadIdentifier2 = [(IMSPISimulatedMessage *)self threadIdentifier];
    [v3 setObject:threadIdentifier2 forKeyedSubscript:@"threadIdentifier"];
  }

  v37 = [v3 copy];

  return v37;
}

- (id)debugDescription
{
  v20 = MEMORY[0x1E696AEC0];
  text = [(IMSPISimulatedMessage *)self text];
  sender = [(IMSPISimulatedMessage *)self sender];
  serviceName = [(IMSPISimulatedMessage *)self serviceName];
  accountID = [(IMSPISimulatedMessage *)self accountID];
  fromMe = [(IMSPISimulatedMessage *)self fromMe];
  v4 = @"YES";
  if (!fromMe)
  {
    v4 = @"NO";
  }

  v18 = v4;
  chatGUID = [(IMSPISimulatedMessage *)self chatGUID];
  groupID = [(IMSPISimulatedMessage *)self groupID];
  handles = [(IMSPISimulatedMessage *)self handles];
  lastAddressedHandle = [(IMSPISimulatedMessage *)self lastAddressedHandle];
  lastAddressedHandle2 = [(IMSPISimulatedMessage *)self lastAddressedHandle];
  date = [(IMSPISimulatedMessage *)self date];
  effectID = [(IMSPISimulatedMessage *)self effectID];
  flags = [(IMSPISimulatedMessage *)self flags];
  bundleID = [(IMSPISimulatedMessage *)self bundleID];
  payloadData = [(IMSPISimulatedMessage *)self payloadData];
  v14 = [payloadData length];
  v15 = @"YES";
  if (!v14)
  {
    v15 = @"NO";
  }

  v21 = [v20 stringWithFormat:@"<IMSPISimulatedMessage %p text: %@ sender: %@ service: %@ account: %@ fromMe: %@ chatGUID: %@ groupID: %@ handles: %@ lastAddressedHandle: %@ date: %@ effectID: %@ flags: %llu bundleID: %@ hasPayloadData: %@>", text, sender, serviceName, accountID, v18, chatGUID, groupID, handles, lastAddressedHandle, lastAddressedHandle2, date, effectID, flags, bundleID, v15];

  return v21;
}

@end