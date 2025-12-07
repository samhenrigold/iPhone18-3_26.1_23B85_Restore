@interface NMRSendCommandResultMessage
+ (id)messageWithErrorCode:(unsigned int)code handlerReturnStatuses:(id)statuses originIdentifier:(id)identifier;
- (NMRSendCommandResultMessage)initWithProtobufData:(id)data;
- (NSArray)handlerReturnStatuses;
- (NSDate)serializationDate;
- (NSNumber)originIdentifier;
- (id)_initWithErrorCode:(unsigned int)code handlerReturnStatuses:(id)statuses originIdentifier:(id)identifier;
- (id)protobufData;
@end

@implementation NMRSendCommandResultMessage

+ (id)messageWithErrorCode:(unsigned int)code handlerReturnStatuses:(id)statuses originIdentifier:(id)identifier
{
  v6 = *&code;
  identifierCopy = identifier;
  statusesCopy = statuses;
  v10 = [[self alloc] _initWithErrorCode:v6 handlerReturnStatuses:statusesCopy originIdentifier:identifierCopy];

  return v10;
}

- (id)_initWithErrorCode:(unsigned int)code handlerReturnStatuses:(id)statuses originIdentifier:(id)identifier
{
  v6 = *&code;
  statusesCopy = statuses;
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = NMRSendCommandResultMessage;
  v10 = [(NMRSendCommandResultMessage *)&v24 init];
  if (v10)
  {
    v11 = objc_opt_new();
    protobuf = v10->_protobuf;
    v10->_protobuf = v11;

    [(_NMRSendCommandResultMessageProtobuf *)v10->_protobuf setErrorCode:v6];
    -[_NMRSendCommandResultMessageProtobuf setOriginIdentifier:](v10->_protobuf, "setOriginIdentifier:", [identifierCopy intValue]);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = statusesCopy;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          -[_NMRSendCommandResultMessageProtobuf addHandlerReturnStatus:](v10->_protobuf, "addHandlerReturnStatus:", [*(*(&v20 + 1) + 8 * v17) unsignedIntValue]);
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v15);
    }

    v18 = v10;
  }

  return v10;
}

- (NMRSendCommandResultMessage)initWithProtobufData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = NMRSendCommandResultMessage;
  v5 = [(NMRSendCommandResultMessage *)&v10 init];
  if (v5)
  {
    v6 = [[_NMRSendCommandResultMessageProtobuf alloc] initWithData:dataCopy];
    protobuf = v5->_protobuf;
    v5->_protobuf = v6;

    v8 = v5;
  }

  return v5;
}

- (NSArray)handlerReturnStatuses
{
  v3 = +[NSMutableArray array];
  if ([(_NMRSendCommandResultMessageProtobuf *)self->_protobuf handlerReturnStatusCount])
  {
    v4 = 0;
    do
    {
      v5 = [NSNumber numberWithUnsignedInt:[(_NMRSendCommandResultMessageProtobuf *)self->_protobuf handlerReturnStatusAtIndex:v4]];
      [v3 addObject:v5];

      ++v4;
    }

    while (v4 < [(_NMRSendCommandResultMessageProtobuf *)self->_protobuf handlerReturnStatusCount]);
  }

  return v3;
}

- (NSNumber)originIdentifier
{
  if ([(_NMRSendCommandResultMessageProtobuf *)self->_protobuf hasOriginIdentifier])
  {
    v3 = [NSNumber numberWithInt:[(_NMRSendCommandResultMessageProtobuf *)self->_protobuf originIdentifier]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)protobufData
{
  protobuf = self->_protobuf;
  v4 = +[NSDate date];
  [v4 timeIntervalSinceReferenceDate];
  [(_NMRSendCommandResultMessageProtobuf *)protobuf setTimestamp:?];

  v5 = self->_protobuf;

  return [(_NMRSendCommandResultMessageProtobuf *)v5 data];
}

- (NSDate)serializationDate
{
  if ([(_NMRSendCommandResultMessageProtobuf *)self->_protobuf hasTimestamp])
  {
    [(_NMRSendCommandResultMessageProtobuf *)self->_protobuf timestamp];
    v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end