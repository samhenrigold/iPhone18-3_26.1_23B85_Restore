@interface _OutgoingWideLoadQueue
- (_OutgoingWideLoadQueue)initWithWideLoadMessage:(id)message maxPartSize:(unint64_t)size;
- (id)dequeueNextPart;
- (void)dealloc;
@end

@implementation _OutgoingWideLoadQueue

- (_OutgoingWideLoadQueue)initWithWideLoadMessage:(id)message maxPartSize:(unint64_t)size
{
  messageCopy = message;
  v22.receiver = self;
  v22.super_class = _OutgoingWideLoadQueue;
  v7 = [(_OutgoingWideLoadQueue *)&v22 init];
  if (v7)
  {
    if (([messageCopy isPartial] & 1) != 0 || !objc_msgSend(messageCopy, "payloadSize"))
    {
      v20 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10003F824();
      }
    }

    else
    {
      v8 = +[NSUUID UUID];
      wideLoadId = v7->_wideLoadId;
      v7->_wideLoadId = v8;

      uUIDString = [(NSUUID *)v7->_wideLoadId UUIDString];
      v11 = [NSString stringWithFormat:@"Outgoing-%@.data", uUIDString];

      v13 = sub_10002F050(v12);
      v14 = [v13 stringByAppendingPathComponent:v11];
      tempFilePath = v7->_tempFilePath;
      v7->_tempFilePath = v14;

      if ([messageCopy getPayloadDataIntoFile:v7->_tempFilePath])
      {
        v7->_maxPartSize = size;
        if (!size)
        {
          size = 4608000;
        }

        v16 = ([messageCopy payloadSize] + size - 1) / size;
        v7->_partsAdded = v16;
        v7->_partsRemaining = v16;
        copyWithoutPayload = [messageCopy copyWithoutPayload];
        partialMessageTemplate = v7->_partialMessageTemplate;
        v7->_partialMessageTemplate = copyWithoutPayload;

        [(NTKDSyncMessage *)v7->_partialMessageTemplate setWideLoadId:v7->_wideLoadId];
        [(NTKDSyncMessage *)v7->_partialMessageTemplate setNumberOfParts:v7->_partsAdded];
        [(NTKDSyncMessage *)v7->_partialMessageTemplate setMaxPartSize:v7->_maxPartSize];
        [(NTKDSyncMessage *)v7->_partialMessageTemplate setPartNumber:0];

        goto LABEL_8;
      }
    }

    v19 = 0;
    goto LABEL_13;
  }

LABEL_8:
  v19 = v7;
LABEL_13:

  return v19;
}

- (void)dealloc
{
  v3 = +[NSFileManager defaultManager];
  [v3 removeItemAtPath:self->_tempFilePath error:0];

  v4.receiver = self;
  v4.super_class = _OutgoingWideLoadQueue;
  [(_OutgoingWideLoadQueue *)&v4 dealloc];
}

- (id)dequeueNextPart
{
  partsRemaining = self->_partsRemaining;
  if (partsRemaining)
  {
    v4 = self->_partsAdded - partsRemaining;
    if (self->_maxPartSize)
    {
      maxPartSize = self->_maxPartSize;
    }

    else
    {
      maxPartSize = 4608000;
    }

    self->_partsRemaining = partsRemaining - 1;
    copyWithoutPayload = [(NTKDSyncMessage *)self->_partialMessageTemplate copyWithoutPayload];
    if ([copyWithoutPayload setPayloadDataFromFile:self->_tempFilePath fromOffset:maxPartSize * v4 length:maxPartSize])
    {
      [copyWithoutPayload setPartNumber:v4];
      v7 = copyWithoutPayload;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10003F8B4();
    }

    v7 = 0;
  }

  return v7;
}

@end