@interface ASMDataPipe
- (ASMDataPipe)init;
- (ASMPeripheral)peripheral;
- (unsigned)getOneSduFrom:(id)from AtPosition:(unint64_t *)position TotalLen:(unint64_t)len;
- (void)_activateWithPeripheral:(id)peripheral completion:(id)completion;
- (void)_invalidate;
- (void)_notifySubscribersWithData:(id)data;
- (void)_unsubscribeFromImagePackets;
- (void)activateWithPeripheral:(id)peripheral completion:(id)completion;
- (void)flush:(id)flush;
- (void)handleDataRx:(id)rx dataSize:(unint64_t)size;
- (void)invalidate;
- (void)resetAll;
- (void)subscribeToDataType:(unsigned __int8)type forResourceCategory:(unsigned int)category delegate:(id)delegate;
- (void)subscribeToImagePackets;
- (void)unsubscribeFromDataType:(unsigned __int8)type forResourceCategory:(unsigned int)category delegate:(id)delegate;
- (void)updateReassemblyWith:(id *)with;
@end

@implementation ASMDataPipe

- (ASMDataPipe)init
{
  v8.receiver = self;
  v8.super_class = ASMDataPipe;
  v2 = [(ASMDataPipe *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.ASMDataPipe.queue", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    if (dword_10001A198 <= 30 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
    {
      sub_100008508(&v2->_dispatchQueue);
    }

    v6 = v2;
  }

  return v2;
}

- (void)activateWithPeripheral:(id)peripheral completion:(id)completion
{
  peripheralCopy = peripheral;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001620;
  block[3] = &unk_100014378;
  block[4] = self;
  v12 = peripheralCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = peripheralCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_activateWithPeripheral:(id)peripheral completion:(id)completion
{
  obj = peripheral;
  completionCopy = completion;
  v7 = completionCopy;
  if (!self->_activateCalled)
  {
    self->_activateCalled = 1;
    v8 = objc_retainBlock(completionCopy);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = v8;

    objc_storeWeak(&self->_peripheral, obj);
    v10 = objc_alloc_init(NSMutableDictionary);
    reassemblyInstances = self->_reassemblyInstances;
    self->_reassemblyInstances = v10;

    subscribeToImagePackets = [(ASMDataPipe *)self subscribeToImagePackets];
    if (dword_10001A198 <= 30)
    {
      if (dword_10001A198 != -1 || (subscribeToImagePackets = _LogCategory_Initialize(), subscribeToImagePackets))
      {
        sub_10000854C(subscribeToImagePackets, v13, v14);
      }
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000177C;
  block[3] = &unk_1000143A0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  resetAll = [(ASMDataPipe *)self resetAll];
  if (dword_10001A198 <= 30)
  {
    if (dword_10001A198 != -1 || (resetAll = _LogCategory_Initialize(), resetAll))
    {
      sub_100008568(resetAll, v4, v5);
    }
  }

  self->_activateCalled = 0;
  objc_storeWeak(&self->_peripheral, 0);
  [(NSMutableDictionary *)self->_activeDelegatesMap removeAllObjects];
  activeDelegatesMap = self->_activeDelegatesMap;
  self->_activeDelegatesMap = 0;

  [(ASMDataPipe *)self _unsubscribeFromImagePackets];
}

- (void)subscribeToDataType:(unsigned __int8)type forResourceCategory:(unsigned int)category delegate:(id)delegate
{
  delegateCopy = delegate;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000018C4;
  block[3] = &unk_1000143C8;
  categoryCopy = category;
  typeCopy = type;
  block[4] = self;
  v12 = delegateCopy;
  v10 = delegateCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)unsubscribeFromDataType:(unsigned __int8)type forResourceCategory:(unsigned int)category delegate:(id)delegate
{
  delegateCopy = delegate;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001B68;
  block[3] = &unk_1000143C8;
  categoryCopy = category;
  typeCopy = type;
  block[4] = self;
  v12 = delegateCopy;
  v10 = delegateCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)updateReassemblyWith:(id *)with
{
  v9 = [(ASMDataPipe *)self getKeyFrom:?];
  v5 = [(NSMutableDictionary *)self->_reassemblyInstances objectForKeyedSubscript:?];
  if (!v5)
  {
    v6 = [ASMSduReassemblyInstance alloc];
    var0 = with->var0.var0;
    v8 = +[NSMutableData data];
    v5 = [(ASMSduReassemblyInstance *)v6 initWithType:var0 flags:*(&with->var0.var0 + 1) buffer:v8 nextExpectedSegIdx:0];

    [(NSMutableDictionary *)self->_reassemblyInstances setObject:v5 forKey:v9];
  }

  if ([(ASMSduReassemblyInstance *)v5 processSegment:*(&with->var0.var1.var0 + 1) & 0x7FFF])
  {
    [(ASMSduReassemblyInstance *)v5 appendToBuffer:*(&with->var0 + 9)];
    if ((*(&with->var0.var1.var0 + 1) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    if (dword_10001A198 <= 10 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
    {
      sub_100008700(v5);
    }

    [(ASMDataPipe *)self _notifySubscribersWithData:v5];
    [(ASMDataPipe *)self flush:v5];
  }

  else if (dword_10001A198 <= 90 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
  {
    sub_1000086BC(v5);
  }

  [(ASMSduReassemblyInstance *)v5 reset];
LABEL_13:
}

- (void)resetAll
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_reassemblyInstances;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMutableDictionary *)self->_reassemblyInstances objectForKeyedSubscript:*(*(&v9 + 1) + 8 * v7), v9];
        [v8 reset];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)self->_reassemblyInstances removeAllObjects];
}

- (void)subscribeToImagePackets
{
  selfCopy = self;
  if (self->_btSession || self->_btSessionAttaching)
  {
    if (dword_10001A198 <= 30)
    {
      if (dword_10001A198 != -1 || (self = _LogCategory_Initialize(), self))
      {
        sub_100008780(self, a2, v2);
      }
    }

    v4 = selfCopy;
    Default = BTAccessoryManagerGetDefault();
    if (Default)
    {
      if (dword_10001A198 <= 90)
      {
        v6 = Default;
        if (dword_10001A198 != -1 || _LogCategory_Initialize())
        {
          sub_10000879C(v6);
        }
      }

      return;
    }

    v7 = objc_retainBlock(v4->_activateCompletion);
    activateCompletion = v4->_activateCompletion;
    v4->_activateCompletion = 0;

    v9 = BTAccessoryManagerRegisterCustomMessageClient();
    if (v9)
    {
      v10 = v9;
      if (dword_10001A198 <= 90 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
      {
        sub_1000087DC(v10);
      }

      v11 = ASMErrorF(4294960534, "Unable to subscribe to AACP image packets %d", v10);
      if (v7)
      {
        v7[2](v7, v11);
      }

      goto LABEL_29;
    }

    if (dword_10001A198 <= 30 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
    {
      sub_10000881C();
      if (!v7)
      {
        goto LABEL_29;
      }
    }

    else if (!v7)
    {
LABEL_29:

      return;
    }

    v7[2](v7, 0);
    goto LABEL_29;
  }

  if (dword_10001A198 <= 30)
  {
    if (dword_10001A198 != -1 || (self = _LogCategory_Initialize(), self))
    {
      sub_100008764(self, a2, v2);
    }
  }

  v12 = selfCopy;
  if (BTSessionAttachWithQueue())
  {
    CFRelease(v12);
  }

  selfCopy->_btSessionAttaching = 1;
}

- (unsigned)getOneSduFrom:(id)from AtPosition:(unint64_t *)position TotalLen:(unint64_t)len
{
  fromCopy = from;
  v9 = fromCopy;
  if (*position + 9 > len)
  {
    if (dword_10001A198 <= 90 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_10001A198, "[ASMDataPipe getOneSduFrom:AtPosition:TotalLen:]", 90, "Not enough data received; must have at least SDU header. position -- %d OTA size -- %lu");
    }

    goto LABEL_25;
  }

  v23 = 0;
  bytes = [fromCopy bytes];
  v11 = *position;
  v12 = &bytes[*position];
  v13 = *v12;
  v22[8] = v12[8];
  *v22 = v13;
  v14 = v11 + 9;
  *position = v11 + 9;
  v15 = *&v22[7];
  if (*&v22[7] >= 0xA0EuLL)
  {
    if (dword_10001A198 > 90 || dword_10001A198 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_25;
    }

    v16 = "Max SDU length exceeded. SDU header length -- %d max -- %d OTA size -- %lu";
    v14 = 2573;
    goto LABEL_13;
  }

  if (v14 + *&v22[7] > len)
  {
    if (dword_10001A198 > 90)
    {
LABEL_25:
      v20 = 0;
      goto LABEL_26;
    }

    if (dword_10001A198 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_25;
      }

      v14 = *position;
    }

    v16 = "Not enough data received. SDU header length -- %d position -- %d OTA size -- %lu";
LABEL_13:
    LogPrintF(&dword_10001A198, "[ASMDataPipe getOneSduFrom:AtPosition:TotalLen:]", 90, v16, *&v22[7], v14, len);
    goto LABEL_25;
  }

  v17 = [v9 subdataWithRange:{v14, *&v22[7]}];
  v23 = v17;
  *position += *&v22[7];
  if (dword_10001A198 <= 10 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
  {
    v18 = "Left";
    if ((v22[1] & 1) == 0)
    {
      v18 = "Right";
    }

    if ((v22[0] - 1) > 3u)
    {
      v19 = "Unknown";
    }

    else
    {
      v19 = off_100014400[(v22[0] - 1)];
    }

    LogPrintF(&dword_10001A198, "[ASMDataPipe getOneSduFrom:AtPosition:TotalLen:]", 10, "SDU received. OTA size: %lu start pos: %lu length: %lu type: %s-%s seg idx: %d last: %d", len, v14, v15, v18, v19, *&v22[5] & 0x7FFF, *&v22[5] >> 15);
  }

  [(ASMDataPipe *)self updateReassemblyWith:v22];
  v20 = *position < len;

LABEL_26:
  return v20;
}

- (void)handleDataRx:(id)rx dataSize:(unint64_t)size
{
  v7 = 0;
    ;
  }
}

- (ASMPeripheral)peripheral
{
  WeakRetained = objc_loadWeakRetained(&self->_peripheral);

  return WeakRetained;
}

- (void)_notifySubscribersWithData:(id)data
{
  dataCopy = data;
  type = [dataCopy type];
  WeakRetained = objc_loadWeakRetained(&self->_peripheral);
  currentResourceCategory = [WeakRetained currentResourceCategory];

  if (currentResourceCategory == 1)
  {
    v8 = self->_activeDelegatesMap;
    if (v8)
    {
      v9 = v8;
      v10 = [NSNumber numberWithUnsignedChar:type];
      v11 = [(NSMutableDictionary *)v9 objectForKeyedSubscript:v10];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v20;
        do
        {
          v16 = 0;
          do
          {
            if (*v20 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v19 + 1) + 8 * v16);
            if (objc_opt_respondsToSelector())
            {
              v18 = [dataCopy copy];
              [v17 reassembledDataReceived:v18];
            }

            v16 = v16 + 1;
          }

          while (v14 != v16);
          v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v14);
      }
    }
  }
}

- (void)flush:(id)flush
{
  if (self->_debugOutputPath)
  {
    buffer = [flush buffer];
    debugOutputPath = self->_debugOutputPath;
    v8 = 0;
    v6 = [buffer writeToFile:debugOutputPath options:1 error:&v8];
    v7 = v8;
    if (v6)
    {
      if (dword_10001A198 <= 30 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_10001A198, "[ASMDataPipe flush:]", 30, "SDU buffer written successfully to path %@", self->_debugOutputPath);
      }
    }

    else if (dword_10001A198 <= 90 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_10001A198, "[ASMDataPipe flush:]", 90, "SDU buffer write to disk failed %@", v7);
    }
  }
}

- (void)_unsubscribeFromImagePackets
{
  if (self->_btSession)
  {
    dispatch_assert_queue_V2(self->_dispatchQueue);
    BTSessionDetachWithQueue();
    self->_btSession = 0;
    self->_btSessionAttaching = 0;
    if (dword_10001A198 <= 30 && (dword_10001A198 != -1 || _LogCategory_Initialize()))
    {

      LogPrintF(&dword_10001A198, "[ASMDataPipe _unsubscribeFromImagePackets]", 30, "Unsubscribed from Image Packets");
    }
  }
}

@end