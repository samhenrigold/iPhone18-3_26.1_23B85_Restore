@interface MILockdownConnection
- (MILockdownConnection)initWithLockdownInfo:(void *)info;
- (void)handleCancel;
- (void)readFromService;
- (void)sendData:(id)data;
@end

@implementation MILockdownConnection

- (MILockdownConnection)initWithLockdownInfo:(void *)info
{
  v10.receiver = self;
  v10.super_class = MILockdownConnection;
  v4 = [(MIConnection *)&v10 initWithType:1];
  if (v4)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(Mutable, kLockdownCheckinConnectionInfoKey, info);
    v6 = secure_lockdown_checkin();
    CFRelease(Mutable);
    if (!v6)
    {
      if (v4->_lockdown)
      {
        v7 = [[NSThread alloc] initWithTarget:v4 selector:"readFromService" object:0];
        readThread = v4->_readThread;
        v4->_readThread = v7;

        [(NSThread *)v4->_readThread start];
      }
    }
  }

  return v4;
}

- (void)readFromService
{
  while (1)
  {
    v3 = objc_autoreleasePoolPush();
    cf = 0;
    v4 = lockdown_receive_message();
    v5 = cf;
    v6 = +[NSThread currentThread];
    isCancelled = [v6 isCancelled];

    if (isCancelled)
    {
      break;
    }

    if (v4)
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100000EF0;
      v21[3] = &unk_100004290;
      v21[4] = self;
      dispatch_async(&_dispatch_main_q, v21);
      break;
    }

    Value = CFDictionaryGetValue(v5, @"MIPartialMessageKey");
    if (Value)
    {
      v9 = Value;
      incomingData = self->_incomingData;
      if (incomingData)
      {
        [(NSMutableData *)incomingData appendData:v9];
      }

      else
      {
        v14 = [[NSMutableData alloc] initWithData:v9];
        v15 = self->_incomingData;
        self->_incomingData = v14;
      }

      CFRelease(cf);
    }

    else
    {
      v11 = CFDictionaryGetValue(v5, @"MIFinalMessageKey");
      v12 = self->_incomingData;
      if (v11)
      {
        if (v12)
        {
          [(NSMutableData *)v12 appendData:v11];
          v13 = self->_incomingData;
        }

        else
        {
          v13 = 0;
        }

        if (!v13)
        {
          v13 = v11;
        }

        v16 = v13;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100000EF8;
        block[3] = &unk_1000042B8;
        block[4] = self;
        v20 = v16;
        v17 = v16;
        dispatch_async(&_dispatch_main_q, block);

        CFRelease(cf);
        v18 = self->_incomingData;
        self->_incomingData = 0;
      }

      else
      {
        self->_incomingData = 0;
      }
    }

    objc_autoreleasePoolPop(v3);
  }

  objc_autoreleasePoolPop(v3);
}

- (void)handleCancel
{
  readThread = self->_readThread;
  if (readThread)
  {
    [(NSThread *)readThread cancel];
    v4 = self->_readThread;
    self->_readThread = 0;
  }

  if (self->_lockdown)
  {
    lockdown_disconnect();
    self->_lockdown = 0;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001004;
  block[3] = &unk_100004290;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)sendData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy length];
  v5 = dataCopy;
  bytes = [dataCopy bytes];
  if (v4 >= 1)
  {
    v7 = bytes;
    v8 = 0;
    while (1)
    {
      if (v4 - v8 >= 8096)
      {
        v9 = 8096;
      }

      else
      {
        v9 = v4 - v8;
      }

      v10 = [NSData dataWithBytesNoCopy:&v7[v8] length:v9 freeWhenDone:0];
      v8 += v9;
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v12 = Mutable;
      if (v8 >= v4)
      {
        v13 = @"MIFinalMessageKey";
      }

      else
      {
        v13 = @"MIPartialMessageKey";
      }

      CFDictionarySetValue(Mutable, v13, v10);
      v14 = lockdown_send_message();
      if (v12)
      {
        CFRelease(v12);
      }

      if (v14)
      {
        break;
      }

      if (v8 >= v4)
      {
        goto LABEL_15;
      }
    }

    [(MILockdownConnection *)self handleCancel];
  }

LABEL_15:
}

@end