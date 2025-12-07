@interface IMPlayedReceiptPipelineParameter
- (IMPlayedReceiptPipelineParameter)initWithDefusedMessage:(id)message idsTrustedData:(id)data isFromDefaultPairedDevice:(BOOL)device;
- (IMPlayedReceiptPipelineParameter)initWithIdsTrustedData:(id)data GUID:(id)d timestamp:(id)timestamp isFromStorage:(BOOL)storage isLastFromStorage:(BOOL)fromStorage isFromDefaultPairedDevice:(BOOL)device;
- (id)description;
@end

@implementation IMPlayedReceiptPipelineParameter

- (IMPlayedReceiptPipelineParameter)initWithDefusedMessage:(id)message idsTrustedData:(id)data isFromDefaultPairedDevice:(BOOL)device
{
  deviceCopy = device;
  dataCopy = data;
  metadata = [message metadata];
  messageGUID = [metadata messageGUID];
  uUIDString = [messageGUID UUIDString];
  v12 = [uUIDString copy];

  has_timestamp = [metadata has_timestamp];
  v14 = MEMORY[0x277CCABB0];
  if (has_timestamp)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(metadata, "timestamp")}];
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v15 = [v14 numberWithDouble:?];
  }

  storageContext = [metadata storageContext];
  isFromStorage = [storageContext isFromStorage];

  storageContext2 = [metadata storageContext];
  isLastFromStorage = [storageContext2 isLastFromStorage];

  v21 = [(IMPlayedReceiptPipelineParameter *)self initWithIdsTrustedData:dataCopy GUID:v12 timestamp:v15 isFromStorage:isFromStorage isLastFromStorage:isLastFromStorage isFromDefaultPairedDevice:deviceCopy];
  return v21;
}

- (IMPlayedReceiptPipelineParameter)initWithIdsTrustedData:(id)data GUID:(id)d timestamp:(id)timestamp isFromStorage:(BOOL)storage isLastFromStorage:(BOOL)fromStorage isFromDefaultPairedDevice:(BOOL)device
{
  dataCopy = data;
  dCopy = d;
  timestampCopy = timestamp;
  v31.receiver = self;
  v31.super_class = IMPlayedReceiptPipelineParameter;
  v17 = [(IMPlayedReceiptPipelineParameter *)&v31 init];
  if (v17)
  {
    v18 = [dataCopy copy];
    idsTrustedData = v17->_idsTrustedData;
    v17->_idsTrustedData = v18;

    v20 = [dCopy copy];
    GUID = v17->_GUID;
    v17->_GUID = v20;

    v22 = [timestampCopy copy];
    timestamp = v17->_timestamp;
    v17->_timestamp = v22;

    v17->_isFromStorage = storage;
    v17->_isLastFromStorage = fromStorage;
    v17->_isFromDefaultPairedDevice = device;
    batchContext = [dataCopy batchContext];
    batchContext = v17->_batchContext;
    v17->_batchContext = batchContext;

    toIdentifier = [dataCopy toIdentifier];
    toIdentifier = v17->_toIdentifier;
    v17->_toIdentifier = toIdentifier;

    fromIdentifier = [dataCopy fromIdentifier];
    fromIdentifier = v17->_fromIdentifier;
    v17->_fromIdentifier = fromIdentifier;
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  gUID = [(IMPlayedReceiptPipelineParameter *)self GUID];
  timestamp = [(IMPlayedReceiptPipelineParameter *)self timestamp];
  if ([(IMPlayedReceiptPipelineParameter *)self isFromStorage])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(IMPlayedReceiptPipelineParameter *)self isLastFromStorage])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  idsTrustedData = [(IMPlayedReceiptPipelineParameter *)self idsTrustedData];
  chat = [(IMPlayedReceiptPipelineParameter *)self chat];
  messageItems = [(IMPlayedReceiptPipelineParameter *)self messageItems];
  v11 = [v3 stringWithFormat:@"<IMPlayedReceiptPipelineParameter %p GUID = %@; timestamp = %@; isFromStorage = %@; isLastFromStorage = %@; idsTrustedData = %@; OUTPUT chat = %@; numMessageItems = %lu}", self, gUID, timestamp, v6, v7, idsTrustedData, chat, objc_msgSend(messageItems, "count")];;

  return v11;
}

@end