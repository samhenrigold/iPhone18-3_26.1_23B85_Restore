@interface _IncomingWideLoadQueue
- (BOOL)addIncomingPart:(id)part;
- (_IncomingWideLoadQueue)initWithPartialMessageTemplate:(id)template;
- (id)getWideLoad;
- (void)dealloc;
@end

@implementation _IncomingWideLoadQueue

- (_IncomingWideLoadQueue)initWithPartialMessageTemplate:(id)template
{
  templateCopy = template;
  v19.receiver = self;
  v19.super_class = _IncomingWideLoadQueue;
  v5 = [(_IncomingWideLoadQueue *)&v19 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  if ([templateCopy isPartial] && objc_msgSend(templateCopy, "numberOfParts"))
  {
    wideLoadId = [templateCopy wideLoadId];
    wideLoadId = v5->_wideLoadId;
    v5->_wideLoadId = wideLoadId;

    uUIDString = [(NSUUID *)v5->_wideLoadId UUIDString];
    v9 = [NSString stringWithFormat:@"Incoming-%@.data", uUIDString];

    v11 = sub_10002F050(v10);
    v12 = [v11 stringByAppendingPathComponent:v9];
    tempFilePath = v5->_tempFilePath;
    v5->_tempFilePath = v12;

    v5->_maxPartSize = [templateCopy maxPartSize];
    v5->_partsExpected = [templateCopy numberOfParts];
    v5->_partsAdded = 0;
    copyWithoutPayload = [templateCopy copyWithoutPayload];
    wideLoadMessageTemplate = v5->_wideLoadMessageTemplate;
    v5->_wideLoadMessageTemplate = copyWithoutPayload;

    [(NTKDSyncMessage *)v5->_wideLoadMessageTemplate setWideLoadId:0];
    [(NTKDSyncMessage *)v5->_wideLoadMessageTemplate setNumberOfParts:0];
    [(NTKDSyncMessage *)v5->_wideLoadMessageTemplate setPartNumber:0];
    [(NTKDSyncMessage *)v5->_wideLoadMessageTemplate setMaxPartSize:0];

LABEL_5:
    v16 = v5;
    goto LABEL_9;
  }

  v17 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_10003F930();
  }

  v16 = 0;
LABEL_9:

  return v16;
}

- (void)dealloc
{
  v3 = +[NSFileManager defaultManager];
  [v3 removeItemAtPath:self->_tempFilePath error:0];

  v4.receiver = self;
  v4.super_class = _IncomingWideLoadQueue;
  [(_IncomingWideLoadQueue *)&v4 dealloc];
}

- (BOOL)addIncomingPart:(id)part
{
  partCopy = part;
  if (![partCopy isPartial] || !objc_msgSend(partCopy, "numberOfParts"))
  {
    v7 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10003FA28();
    }

    goto LABEL_12;
  }

  if (self->_partsAdded >= self->_partsExpected)
  {
    v9 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10003F9AC();
    }

    goto LABEL_12;
  }

  if (self->_maxPartSize)
  {
    maxPartSize = self->_maxPartSize;
  }

  else
  {
    maxPartSize = 4608000;
  }

  if (![partCopy getPayloadDataIntoFile:self->_tempFilePath toOffset:{objc_msgSend(partCopy, "partNumber") * maxPartSize}])
  {
LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  ++self->_partsAdded;
  v6 = 1;
LABEL_13:

  return v6;
}

- (id)getWideLoad
{
  if ([(_IncomingWideLoadQueue *)self isFull])
  {
    copyWithoutPayload = [(NTKDSyncMessage *)self->_wideLoadMessageTemplate copyWithoutPayload];
    if ([copyWithoutPayload setPayloadDataFromFile:self->_tempFilePath])
    {
      v4 = copyWithoutPayload;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v5 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10003FAA4();
    }

    v4 = 0;
  }

  return v4;
}

@end