@interface SFBLEAdvertiser
- (NSString)description;
- (SFBLEAdvertiser)initWithType:(int64_t)type;
- (id)_preparePayloadNearbyAction:(int *)action;
- (id)_preparePayloadNearbyInfo:(int *)info;
- (int)_preparePayload:(BOOL)payload;
- (void)_activateWithCompletion:(id)completion;
- (void)_invalidate;
- (void)_restartIfNeeded:(BOOL)needed;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)nearby:(id)nearby didConnectToPeer:(id)peer transport:(int64_t)transport error:(id)error;
- (void)nearby:(id)nearby didDeferAdvertisingType:(int64_t)type;
- (void)nearby:(id)nearby didFailToStartAdvertisingOfType:(int64_t)type withError:(id)error;
- (void)nearby:(id)nearby didStartAdvertisingType:(int64_t)type;
- (void)nearby:(id)nearby didStopAdvertisingType:(int64_t)type withError:(id)error;
- (void)nearbyDidUpdateState:(id)state;
- (void)setAdvertiseRate:(int64_t)rate;
- (void)setDispatchQueue:(id)queue;
- (void)setLePipeDevices:(id)devices;
- (void)setPayloadData:(id)data;
- (void)setPayloadFields:(id)fields;
@end

@implementation SFBLEAdvertiser

- (void)dealloc
{
  if (self->_startRetrier)
  {
    [SFBLEAdvertiser dealloc];
    goto LABEL_10;
  }

  if (self->_wpNearby)
  {
LABEL_10:
    [SFBLEAdvertiser dealloc];
    [(SFBLEAdvertiser *)v13 description];
    return;
  }

  advertiseStateChangedHandler = self->_advertiseStateChangedHandler;
  self->_advertiseStateChangedHandler = 0;

  bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
  self->_bluetoothStateChangedHandler = 0;

  connectionHandler = self->_connectionHandler;
  self->_connectionHandler = 0;

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    self->_dispatchQueue = 0;
  }

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  payloadDataCurrent = self->_payloadDataCurrent;
  self->_payloadDataCurrent = 0;

  payloadDataPrevious = self->_payloadDataPrevious;
  self->_payloadDataPrevious = 0;

  payloadFields = self->_payloadFields;
  self->_payloadFields = 0;

  payloadIdentifier = self->_payloadIdentifier;
  self->_payloadIdentifier = 0;

  ucat = self->_ucat;
  if (ucat)
  {
    if ((ucat->var3 & 0x40000) != 0)
    {
      LogCategory_Remove();
      self->_ucat = 0;
    }
  }

  v15.receiver = self;
  v15.super_class = SFBLEAdvertiser;
  [(SFBLEAdvertiser *)&v15 dealloc];
}

- (NSString)description
{
  v21 = 0;
  v3 = self->_payloadType + 1;
  if (v3 > 0x12)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1E788DB38[v3];
  }

  NSAppendPrintF(&v21, "SFBLEAdvertiser %{ptr}, Type %s", self, v4);
  v5 = v21;
  v6 = v5;
  if (self->_invalidateCalled)
  {
    v20 = v5;
    NSAppendPrintF(&v20, ", Invalidated");
    v7 = v20;

    v6 = v7;
  }

  v19 = v6;
  advertiseState = self->_advertiseState;
  if (advertiseState > 3)
  {
    v9 = "?";
  }

  else
  {
    v9 = off_1E788DB18[advertiseState];
  }

  NSAppendPrintF(&v19, ", State %s", v9);
  v10 = v19;

  v18 = v10;
  advertiseRate = self->_advertiseRate;
  if (advertiseRate > 39)
  {
    if (advertiseRate > 59)
    {
      if (advertiseRate == 60)
      {
        v12 = "Aggressive";
        goto LABEL_29;
      }

      if (advertiseRate == 70)
      {
        v12 = "Max";
        goto LABEL_29;
      }
    }

    else
    {
      if (advertiseRate == 40)
      {
        v12 = "Normal";
        goto LABEL_29;
      }

      if (advertiseRate == 50)
      {
        v12 = "High";
        goto LABEL_29;
      }
    }

LABEL_28:
    v12 = "?";
    goto LABEL_29;
  }

  if (advertiseRate > 19)
  {
    if (advertiseRate == 20)
    {
      v12 = "LowBackground";
      goto LABEL_29;
    }

    if (advertiseRate == 30)
    {
      v12 = "Background";
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (!advertiseRate)
  {
    v12 = "Invalid";
    goto LABEL_29;
  }

  if (advertiseRate != 10)
  {
    goto LABEL_28;
  }

  v12 = "Infrequent";
LABEL_29:
  NSAppendPrintF(&v18, ", Rate %s", v12);
  v13 = v18;

  v17 = v13;
  NSAppendPrintF(&v17, ", Data '%.3H'", [(NSData *)self->_payloadDataCurrent bytes], [(NSData *)self->_payloadDataCurrent length], [(NSData *)self->_payloadDataCurrent length]);
  v14 = v17;
  v15 = v17;

  return v14;
}

- (void)setAdvertiseRate:(int64_t)rate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activateCalled)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __36__SFBLEAdvertiser_setAdvertiseRate___block_invoke;
    v6[3] = &unk_1E788B260;
    v6[4] = selfCopy;
    v6[5] = rate;
    dispatch_async(dispatchQueue, v6);
  }

  else
  {
    selfCopy->_advertiseRate = rate;
  }

  objc_sync_exit(selfCopy);
}

void *__36__SFBLEAdvertiser_setAdvertiseRate___block_invoke(void *result)
{
  v2 = *(result + 4);
  v1 = *(result + 5);
  if (v1 != *(v2 + 104))
  {
    *(v2 + 104) = v1;
    return [*(result + 4) _restartIfNeeded:1];
  }

  return result;
}

- (void)setDispatchQueue:(id)queue
{
  queueCopy = queue;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_activateCalled)
  {
    FatalErrorF("Attempt to set dispatch queue after activate has been called");
    __break(1u);
  }

  else
  {
    dispatchQueue = obj->_dispatchQueue;
    obj->_dispatchQueue = queueCopy;

    objc_sync_exit(obj);
  }
}

- (void)setLePipeDevices:(id)devices
{
  v4 = [devices copy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activateCalled)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __36__SFBLEAdvertiser_setLePipeDevices___block_invoke;
    v7[3] = &unk_1E788A658;
    v7[4] = selfCopy;
    v8 = v4;
    dispatch_async(dispatchQueue, v7);
  }

  else
  {
    objc_storeStrong(&selfCopy->_lePipeDevices, v4);
  }

  objc_sync_exit(selfCopy);
}

uint64_t __36__SFBLEAdvertiser_setLePipeDevices___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 152), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _restartIfNeeded:1];
}

- (void)setPayloadData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy copy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __34__SFBLEAdvertiser_setPayloadData___block_invoke;
  aBlock[3] = &unk_1E788A658;
  aBlock[4] = selfCopy;
  v7 = v5;
  v14 = v7;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (selfCopy->_activateCalled)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __34__SFBLEAdvertiser_setPayloadData___block_invoke_2;
    v11[3] = &unk_1E788B318;
    v11[4] = selfCopy;
    v12 = v8;
    dispatch_async(dispatchQueue, v11);
  }

  else
  {
    v8[2](v8);
  }

  objc_sync_exit(selfCopy);
}

void __34__SFBLEAdvertiser_setPayloadData___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = 0;
}

uint64_t __34__SFBLEAdvertiser_setPayloadData___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _restartIfNeeded:0];
}

- (void)setPayloadFields:(id)fields
{
  fieldsCopy = fields;
  v5 = [fieldsCopy copy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__SFBLEAdvertiser_setPayloadFields___block_invoke;
  aBlock[3] = &unk_1E788A658;
  aBlock[4] = selfCopy;
  v7 = v5;
  v14 = v7;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (selfCopy->_activateCalled)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __36__SFBLEAdvertiser_setPayloadFields___block_invoke_2;
    v11[3] = &unk_1E788B318;
    v11[4] = selfCopy;
    v12 = v8;
    dispatch_async(dispatchQueue, v11);
  }

  else
  {
    v8[2](v8);
  }

  objc_sync_exit(selfCopy);
}

void __36__SFBLEAdvertiser_setPayloadFields___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = 0;
}

uint64_t __36__SFBLEAdvertiser_setPayloadFields___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 _restartIfNeeded:0];
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_activateCalled = 1;
  dispatchQueue = selfCopy->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__SFBLEAdvertiser_activateWithCompletion___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = selfCopy;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(selfCopy);
}

- (void)_activateWithCompletion:(id)completion
{
  v17[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    v14 = 4294960572;
    goto LABEL_19;
  }

  if (self->_startRetrier)
  {
    v14 = 4294960575;
    goto LABEL_19;
  }

  payloadType = self->_payloadType;
  if ((payloadType - 15) > 1)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 != -1)
      {
LABEL_14:
        if ((payloadType + 1) > 0x12)
        {
          v13 = "?";
        }

        else
        {
          v13 = off_1E788DB38[payloadType + 1];
        }

        LogPrintF(ucat, "[SFBLEAdvertiser _activateWithCompletion:]", 90, "### Activate with unsupported type: %ld (%s)\n", payloadType, v13);
        goto LABEL_18;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        payloadType = self->_payloadType;
        goto LABEL_14;
      }
    }

LABEL_18:
    v14 = 4294960561;
LABEL_19:
    [(SFBLEAdvertiser *)completionCopy _activateWithCompletion:v14, &v16, v17, self];
    goto LABEL_9;
  }

  self->_wpNearbyType = payloadType != 15;
  if (!self->_wpNearby && (+[SFBLEClient sharedClient](SFBLEClient, "sharedClient"), v6 = objc_claimAutoreleasedReturnValue(), [v6 addNearbyDelegate:self], v7 = objc_claimAutoreleasedReturnValue(), wpNearby = self->_wpNearby, self->_wpNearby = v7, wpNearby, v6, !self->_wpNearby) || (v9 = objc_alloc_init(MEMORY[0x1E6999520]), startRetrier = self->_startRetrier, self->_startRetrier = v9, startRetrier, (v11 = self->_startRetrier) == 0))
  {
    v14 = 4294960567;
    goto LABEL_19;
  }

  [(CURetrier *)v11 setDispatchQueue:self->_dispatchQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __43__SFBLEAdvertiser__activateWithCompletion___block_invoke;
  v15[3] = &unk_1E788B198;
  v15[4] = self;
  [(CURetrier *)self->_startRetrier setActionHandler:v15];
  [(CURetrier *)self->_startRetrier startDirect];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_9:
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__SFBLEAdvertiser_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled)
  {
    return;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 30)
  {
    if (ucat->var0 != -1)
    {
LABEL_4:
      LogPrintF(ucat, "[SFBLEAdvertiser _invalidate]", 30, "Invalidating\n");
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_6:
  self->_invalidateCalled = 1;
  [(CURetrier *)self->_startRetrier invalidateDirect];
  startRetrier = self->_startRetrier;
  self->_startRetrier = 0;

  payloadType = self->_payloadType;
  if (payloadType == 16)
  {
    wpNearby = self->_wpNearby;
    v7 = 1;
    goto LABEL_10;
  }

  if (payloadType == 15)
  {
    wpNearby = self->_wpNearby;
    v7 = 0;
LABEL_10:
    [(WPNearby *)wpNearby stopAdvertisingOfType:v7];
    v8 = self->_wpNearby;
    if (v8)
    {
      v9 = +[SFBLEClient sharedClient];
      [v9 removeNearbyDelegate:self];

      v8 = self->_wpNearby;
    }

    self->_wpNearby = 0;

    goto LABEL_13;
  }

  v11 = self->_ucat;
  if (v11->var0 > 90)
  {
    goto LABEL_13;
  }

  if (v11->var0 == -1)
  {
    if (!_LogCategory_Initialize())
    {
      goto LABEL_13;
    }

    v11 = self->_ucat;
    payloadType = self->_payloadType;
  }

  if ((payloadType + 1) > 0x12)
  {
    v12 = "?";
  }

  else
  {
    v12 = off_1E788DB38[payloadType + 1];
  }

  LogPrintF(v11, "[SFBLEAdvertiser _invalidate]", 90, "### Invalidate unsupported type: %ld (%s)\n", payloadType, v12);
LABEL_13:
  v10 = self->_ucat;
  if (v10->var0 <= 30)
  {
    if (v10->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_21;
      }

      v10 = self->_ucat;
    }

    LogPrintF(v10, "[SFBLEAdvertiser _invalidate]", 30, "Invalidated\n");
  }

LABEL_21:
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
  }

  advertiseStateChangedHandler = self->_advertiseStateChangedHandler;
  self->_advertiseStateChangedHandler = 0;

  bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
  self->_bluetoothStateChangedHandler = 0;

  connectionHandler = self->_connectionHandler;
  self->_connectionHandler = 0;

  v17 = self->_invalidationHandler;
  self->_invalidationHandler = 0;
}

- (int)_preparePayload:(BOOL)payload
{
  v11 = 0;
  if (self->_payloadDataCurrent)
  {
    goto LABEL_2;
  }

  payloadType = self->_payloadType;
  if (payloadType == 16)
  {
    v8 = [(SFBLEAdvertiser *)self _preparePayloadNearbyInfo:&v11];
LABEL_14:
    payloadDataCurrent = self->_payloadDataCurrent;
    self->_payloadDataCurrent = v8;

    result = v11;
    if (v11)
    {
      return result;
    }

    goto LABEL_2;
  }

  if (payloadType == 15)
  {
    v8 = [(SFBLEAdvertiser *)self _preparePayloadNearbyAction:&v11];
    goto LABEL_14;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 60)
  {
    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_22;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SFBLEAdvertiser _preparePayload:]", 60, "### Skipping unsupported payload type\n");
  }

LABEL_22:
  v11 = -6757;
LABEL_2:
  if (!payload && self->_payloadDataPrevious && ([(NSData *)self->_payloadDataCurrent isEqual:?]& 1) != 0)
  {
    v5 = self->_ucat;
    if (v5->var0 <= 9)
    {
      if (v5->var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return -6757;
        }

        v5 = self->_ucat;
      }

      LogPrintF(v5, "[SFBLEAdvertiser _preparePayload:]", 9, "Skipping redundant advertiser update\n");
    }

    return -6757;
  }

  objc_storeStrong(&self->_payloadDataPrevious, self->_payloadDataCurrent);
  return 0;
}

- (id)_preparePayloadNearbyAction:(int *)action
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF88]);
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v25 = Int64Ranged;
  if (CFDictionaryGetInt64())
  {
    Int64Ranged |= 0x20u;
    v25 = Int64Ranged;
  }

  if (CFDictionaryGetInt64())
  {
    Int64Ranged |= 0x40u;
    v25 = Int64Ranged;
  }

  CFDataGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  if ([v7 length] == 3)
  {
    v25 = Int64Ranged | 0x80;
  }

  v26 = 0;
  [v5 appendBytes:&v25 length:1];
  v24 = CFDictionaryGetInt64Ranged();
  [v5 appendBytes:&v24 length:1];
  if (v25 < 0)
  {
    [v5 appendData:v7];
  }

  v8 = v24;
  if (v24 <= 0x24u && ((1 << v24) & 0x1200480A00) != 0 || v24 == 90 || v24 == 84)
  {
    v9 = CFDictionaryGetInt64Ranged();
    v26 = CFDictionaryGetInt64Ranged() & 0x1F | (32 * v9);
    [v5 appendBytes:&v26 length:1];
    v8 = v24;
  }

  if (v8 - 33 <= 0x39 && ((1 << (v8 - 33)) & 0x208000000000009) != 0 || v8 - 9 < 3)
  {
    LOBYTE(v27) = CFDictionaryGetInt64Ranged();
    [v5 appendBytes:&v27 length:1];
    v8 = v24;
  }

  if (v8 <= 0x2B && (((1 << v8) & 0x81100000242) != 0 || ((1 << v8) & 0x200000800) != 0) || v8 == 84 || v8 == 90)
  {
    LOBYTE(v27) = 13;
    [v5 appendBytes:&v27 length:1];
    v8 = v24;
  }

  if (v8 == 8)
  {
    CFDataGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    v11 = [v10 length];
    if (v11)
    {
      v12 = v11;
      v28 = 0;
      v27 = 0;
      [v10 bytes];
      __memcpy_chk();
      if (v12 <= 8)
      {
        bzero(&v27 + v12, 9 - v12);
      }

      [v5 appendBytes:&v27 length:9];
    }

    v8 = v24;
    if (v24 == 8)
    {
      CFDataGetTypeID();
      v13 = CFDictionaryGetTypedValue();
      if ([v13 length] == 3)
      {
        [v5 appendData:v13];
      }

      v8 = v24;
    }
  }

  if (v8 == 10)
  {
    Int64 = CFDictionaryGetInt64();
    v26 = (Int64 >> 11) & 0x40 | ((Int64 & 0xFE) >> 1) & 7 | (Int64 >> 14) & 0x10 | (Int64 >> 11) & 0x20 | (Int64 >> 1) & 8 | (Int64 >> 14) & 0x80;
    [v5 appendBytes:&v26 length:1];
    v8 = v24;
    if (v24 == 10)
    {
      LOBYTE(v27) = 13;
      [v5 appendBytes:&v27 length:1];
      v8 = v24;
    }
  }

  LOBYTE(v27) = 0;
  if (v8 - 36 <= 0x36 && ((1 << (v8 - 36)) & 0x40000000008001) != 0 || v8 == 9)
  {
    LOBYTE(v27) = CFDictionaryGetInt64Ranged();
    [v5 appendBytes:&v27 length:1];
    if ((v27 & 4) != 0)
    {
      CFDataGetTypeID();
      v15 = CFDictionaryGetTypedValue();
      if (v15)
      {
        [v5 appendData:v15];
      }
    }
  }

  v16 = v24;
  if (v24 == 1)
  {
    v23 = CFDictionaryGetInt64Ranged();
    [v5 appendBytes:&v23 length:1];
    v16 = v24;
  }

  if (v16 == 90)
  {
    v17 = [(NSDictionary *)self->_payloadFields objectForKeyedSubscript:@"dpp"];
    v18 = v17;
    if (v17)
    {
      unsignedCharValue = [v17 unsignedCharValue];
    }

    else
    {
      unsignedCharValue = 0;
    }

    v23 = unsignedCharValue;
    ucat = self->_ucat;
    if (ucat->var0 > 40)
    {
      goto LABEL_54;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_54;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SFBLEAdvertiser _preparePayloadNearbyAction:]", 40, "Advertising DovePeacePayload 0x%x\n", unsignedCharValue);
LABEL_54:
    [v5 appendBytes:&v23 length:1];
  }

  if (action)
  {
    *action = 0;
  }

  v21 = v5;

  return v21;
}

- (id)_preparePayloadNearbyInfo:(int *)info
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF88]);
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v15 = Int64Ranged;
  if (CFDictionaryGetInt64())
  {
    Int64Ranged |= 0x10u;
    v15 = Int64Ranged;
  }

  if (CFDictionaryGetInt64())
  {
    Int64Ranged |= 0x20u;
    v15 = Int64Ranged;
  }

  if (CFDictionaryGetInt64())
  {
    v15 = Int64Ranged | 0x40;
  }

  [v4 appendBytes:&v15 length:1];
  v14 = 0;
  if (CFDictionaryGetInt64())
  {
    v6 = 0x80;
    v14 = 0x80;
  }

  else
  {
    v6 = 0;
  }

  if (CFDictionaryGetInt64())
  {
    v6 |= 0x40u;
    v14 = v6;
  }

  if (CFDictionaryGetInt64())
  {
    v6 |= 8u;
    v14 = v6;
  }

  if (CFDictionaryGetInt64())
  {
    v6 |= 0x20u;
    v14 = v6;
  }

  if (CFDictionaryGetInt64())
  {
    v6 |= 4u;
    v14 = v6;
  }

  CFDataGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  if ([v7 length] == 3)
  {
    v6 |= 0x10u;
    v14 = v6;
  }

  CFDataGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if ([v8 length])
  {
    v6 |= 2u;
    v14 = v6;
  }

  v13 = 0;
  if (CFDictionaryGetInt64())
  {
    v9 = 2;
    v13 = 2;
  }

  else
  {
    v9 = 0;
  }

  if (CFDictionaryGetInt64())
  {
    v9 |= 4u;
    v13 = v9;
  }

  if ((CFDictionaryGetInt64Ranged() & 0x800) != 0)
  {
    v9 |= 0xFFFFFF80;
    v13 = v9;
  }

  if (CFDictionaryGetInt64Ranged() == 1)
  {
    v9 |= 1u;
    v13 = v9;
  }

  CFDataGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  if ([v10 length])
  {
    v13 = v9 | (16 * (*[v10 bytes] & 7)) | 8;
  }

  else if (!v9)
  {
    goto LABEL_35;
  }

  v14 = v6 | 1;
LABEL_35:
  [v4 appendBytes:&v14 length:1];
  v11 = v14;
  if ((v14 & 0x10) != 0)
  {
    [v4 appendData:v7];
    v11 = v14;
    if ((v14 & 2) == 0)
    {
LABEL_37:
      if ((v11 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_37;
  }

  [v4 appendBytes:objc_msgSend(v8 length:{"bytes"), 1}];
  if ((v14 & 1) == 0)
  {
LABEL_38:
    if (!info)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_45:
  [v4 appendBytes:&v13 length:1];
  if (info)
  {
LABEL_39:
    *info = 0;
  }

LABEL_40:

  return v4;
}

_BYTE *__59__SFBLEAdvertiser_nearby_didStopAdvertisingType_withError___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[24] & 1) == 0)
  {
    return [result _restartIfNeeded:1];
  }

  return result;
}

- (SFBLEAdvertiser)initWithType:(int64_t)type
{
  v13 = 0;
  v12 = 0;
  v11.receiver = self;
  v11.super_class = SFBLEAdvertiser;
  v4 = [(SFBLEAdvertiser *)&v11 init];
  v5 = v4;
  if (v4 && ((v4->_advertiseRate = 40, SFMainQueue(), v6 = objc_claimAutoreleasedReturnValue(), dispatchQueue = v5->_dispatchQueue, v5->_dispatchQueue = v6, dispatchQueue, v5->_payloadType = type, (type + 1) > 0x12) ? (v8 = "?") : (v8 = off_1E788DB38[type + 1]), (ASPrintF(&v13, "SFBLEAdvertiser-%s", v8), v13) && (v5->_ucat = LogCategoryCreateEx(), free(v13), !v12)))
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_restartIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  ucat = OUTLINED_FUNCTION_0_11();
  if (v6 <= 9)
  {
    if (v6 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      ucat = self->_ucat;
    }

    v7 = "";
    if (neededCopy)
    {
      v7 = "(force)";
    }

    LogPrintF(ucat, "[SFBLEAdvertiser _restartIfNeeded:]", 9, "RestartIfNeeded %s\n", v7);
  }

LABEL_7:
  payloadType = self->_payloadType;
  if ((payloadType - 15) > 1)
  {
    v15 = self->_ucat;
    if (v15->var0 <= 90)
    {
      if (v15->var0 != -1)
      {
LABEL_17:
        if ((payloadType + 1) > 0x12)
        {
          v16 = "?";
        }

        else
        {
          v16 = off_1E788DB38[payloadType + 1];
        }

        LogPrintF(v15, "[SFBLEAdvertiser _restartIfNeeded:]", 90, "### Restart unsupported type: %ld (%s)\n", payloadType, v16);
        goto LABEL_25;
      }

      if (_LogCategory_Initialize())
      {
        v15 = self->_ucat;
        payloadType = self->_payloadType;
        goto LABEL_17;
      }
    }

LABEL_25:
    v11 = 4294960561;
    goto LABEL_26;
  }

  wpNearby = self->_wpNearby;
  if (!wpNearby || [(WPNearby *)wpNearby state]!= 3)
  {
    return;
  }

  v10 = [(SFBLEAdvertiser *)self _preparePayload:neededCopy];
  if (v10 != -6757)
  {
    v11 = v10;
    if (!v10)
    {
      payloadDataCurrent = self->_payloadDataCurrent;
      if (payloadDataCurrent)
      {
        advertiseRate = self->_advertiseRate;
        if (advertiseRate <= 69)
        {
          if (advertiseRate <= 49)
          {
            if (advertiseRate <= 39)
            {
              if (advertiseRate <= 29)
              {
                if (advertiseRate <= 19)
                {
                  if (advertiseRate <= 14)
                  {
                    v14 = 0x4000;
                  }

                  else
                  {
                    v14 = 1636;
                  }
                }

                else
                {
                  v14 = 560;
                }
              }

              else
              {
                v14 = 432;
              }
            }

            else
            {
              v14 = 290;
            }
          }

          else
          {
            v14 = 48;
          }
        }

        else
        {
          v14 = 32;
        }

        v19 = advertiseRate > 40;
        v20 = self->_ucat;
        if (v20->var0 <= 20)
        {
          if (v20->var0 != -1)
          {
LABEL_42:
            v21 = "no";
            if (neededCopy)
            {
              v21 = "yes";
            }

            LogPrintF(v20, "[SFBLEAdvertiser _restartIfNeeded:]", 20, "Advertise update: data '%@', rate %.2f ms, force %s\n", payloadDataCurrent, (625 * v14) / 1000.0, v21);
            goto LABEL_46;
          }

          if (_LogCategory_Initialize())
          {
            v20 = self->_ucat;
            payloadDataCurrent = self->_payloadDataCurrent;
            goto LABEL_42;
          }
        }

LABEL_46:
        [(WPNearby *)self->_wpNearby stopAdvertisingOfType:self->_wpNearbyType];
        [(WPNearby *)self->_wpNearby startAdvertisingOfType:self->_wpNearbyType data:self->_payloadDataCurrent priority:v19 mode:v14];
        goto LABEL_47;
      }

      v11 = 4294960551;
    }

LABEL_26:
    v17 = OUTLINED_FUNCTION_0_11();
    if (v18 > 60)
    {
      return;
    }

    if (v18 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v17 = self->_ucat;
    }

    LogPrintF(v17, "[SFBLEAdvertiser _restartIfNeeded:]", 60, "### RestartIfNeeded failed: %#m\n", v11);
    return;
  }

LABEL_47:
  startRetrier = self->_startRetrier;

  [(CURetrier *)startRetrier succeededDirect];
}

- (void)nearbyDidUpdateState:(id)state
{
  stateCopy = state;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  wpNearby = self->_wpNearby;
  if (wpNearby)
  {
    v5 = wpNearby == stateCopy;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    goto LABEL_18;
  }

  state = [(WPNearby *)stateCopy state];
  ucat = OUTLINED_FUNCTION_0_11();
  if (v8 <= 40)
  {
    if (v8 != -1)
    {
LABEL_8:
      if (state > 5)
      {
        v9 = "?";
      }

      else
      {
        v9 = off_1E788DBD0[state];
      }

      LogPrintF(ucat, "[SFBLEAdvertiser nearbyDidUpdateState:]", 40, "Bluetooth state updated: %s\n", v9);
      goto LABEL_14;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_8;
    }
  }

LABEL_14:
  if (state == 3)
  {
    [(SFBLEAdvertiser *)self _restartIfNeeded:1];
  }

  if (self->_bluetoothStateChangedHandler)
  {
    OUTLINED_FUNCTION_2_2();
    v10();
  }

LABEL_18:
}

- (void)nearby:(id)nearby didStartAdvertisingType:(int64_t)type
{
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  wpNearby = self->_wpNearby;

  if (wpNearby)
  {
    v9 = wpNearby == nearbyCopy;
  }

  else
  {
    v9 = 0;
  }

  if (!v9 || self->_wpNearbyType != type)
  {
    return;
  }

  ucat = OUTLINED_FUNCTION_0_11();
  if (v12 == 2)
  {
    if (v11 <= 50)
    {
      if (v11 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_17;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[SFBLEAdvertiser nearby:didStartAdvertisingType:]", 50, "Bluetooth advertising started after being deferred\n");
    }
  }

  else if (v11 <= 20)
  {
    if (v11 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SFBLEAdvertiser nearby:didStartAdvertisingType:]", 20, "Bluetooth advertising started\n");
  }

LABEL_17:
  if (self->_advertiseState != 1)
  {
    self->_advertiseState = 1;
    advertiseStateChangedHandler = self->_advertiseStateChangedHandler;
    if (advertiseStateChangedHandler)
    {
      v14 = *(advertiseStateChangedHandler + 2);

      v14();
    }
  }
}

- (void)nearby:(id)nearby didStopAdvertisingType:(int64_t)type withError:(id)error
{
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  wpNearby = self->_wpNearby;

  if (wpNearby)
  {
    v12 = wpNearby == nearbyCopy;
  }

  else
  {
    v12 = 0;
  }

  if (!v12 || self->_wpNearbyType != type)
  {
    goto LABEL_22;
  }

  ucat = OUTLINED_FUNCTION_1_8();
  if (v15 ^ v16 | v12)
  {
    if (v14 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SFBLEAdvertiser nearby:didStopAdvertisingType:withError:]", 50, "Bluetooth advertising stopped: %{error}\n", errorCopy);
  }

LABEL_12:
  if (self->_advertiseState)
  {
    self->_advertiseState = 0;
    if (self->_advertiseStateChangedHandler)
    {
      OUTLINED_FUNCTION_2_2();
      v17();
    }
  }

  if ([errorCopy code] == 28)
  {
    v18 = arc4random() % 0x123 + 10;
    v19 = OUTLINED_FUNCTION_1_8();
    if (!(v15 ^ v16 | v12))
    {
      goto LABEL_21;
    }

    if (v20 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_21;
      }

      v19 = self->_ucat;
    }

    LogPrintF(v19, "[SFBLEAdvertiser nearby:didStopAdvertisingType:withError:]", 50, "Bluetooth advertising restart after address change: %u ms\n", v18);
LABEL_21:
    v21 = dispatch_time(0, 1000000 * v18);
    v22 = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__SFBLEAdvertiser_nearby_didStopAdvertisingType_withError___block_invoke;
    block[3] = &unk_1E788B198;
    block[4] = self;
    dispatch_after(v21, v22, block);
  }

LABEL_22:
}

- (void)nearby:(id)nearby didDeferAdvertisingType:(int64_t)type
{
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  wpNearby = self->_wpNearby;

  if (wpNearby)
  {
    v9 = wpNearby == nearbyCopy;
  }

  else
  {
    v9 = 0;
  }

  if (!v9 || self->_wpNearbyType != type || self->_advertiseState == 2)
  {
    return;
  }

  ucat = OUTLINED_FUNCTION_0_11();
  if (v11 <= 50)
  {
    if (v11 != -1)
    {
LABEL_10:
      LogPrintF(ucat, "[SFBLEAdvertiser nearby:didDeferAdvertisingType:]", 50, "Bluetooth advertising deferred\n");
      goto LABEL_12;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_10;
    }
  }

LABEL_12:
  self->_advertiseState = 2;
  advertiseStateChangedHandler = self->_advertiseStateChangedHandler;
  if (advertiseStateChangedHandler)
  {
    v13 = *(advertiseStateChangedHandler + 2);

    v13();
  }
}

- (void)nearby:(id)nearby didFailToStartAdvertisingOfType:(int64_t)type withError:(id)error
{
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  wpNearby = self->_wpNearby;

  if (wpNearby)
  {
    v11 = wpNearby == nearbyCopy;
  }

  else
  {
    v11 = 0;
  }

  if (!v11 || self->_wpNearbyType != type)
  {
    goto LABEL_14;
  }

  ucat = OUTLINED_FUNCTION_0_11();
  if (v13 <= 50)
  {
    if (v13 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      ucat = self->_ucat;
    }

    LogPrintF(ucat, "[SFBLEAdvertiser nearby:didFailToStartAdvertisingOfType:withError:]", 50, "### Bluetooth advertise failed: %@\n", errorCopy);
  }

LABEL_11:
  [(CURetrier *)self->_startRetrier failedDirect];
  if (self->_advertiseState != 3)
  {
    self->_advertiseState = 3;
    if (self->_advertiseStateChangedHandler)
    {
      OUTLINED_FUNCTION_2_2();
      v14();
    }
  }

LABEL_14:
}

- (void)nearby:(id)nearby didConnectToPeer:(id)peer transport:(int64_t)transport error:(id)error
{
  peerCopy = peer;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(dispatchQueue);
  wpNearby = self->_wpNearby;

  if (!wpNearby || wpNearby != nearbyCopy || !self->_connectionHandler)
  {
    goto LABEL_10;
  }

  ucat = self->_ucat;
  if (ucat->var0 <= 20)
  {
    if (ucat->var0 != -1)
    {
LABEL_6:
      LogPrintF(ucat, "[SFBLEAdvertiser nearby:didConnectToPeer:transport:error:]", 20, "DidConnectToPeer: %@, %{error}\n", peerCopy, errorCopy);
      goto LABEL_8;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_6;
    }
  }

LABEL_8:
  if (!errorCopy)
  {
    v14 = objc_alloc_init(SFBLEDevice);
    [(SFBLEDevice *)v14 setIdentifier:peerCopy];
    OUTLINED_FUNCTION_2_2();
    v15();

    goto LABEL_10;
  }

  v16 = OUTLINED_FUNCTION_1_8();
  if (v19 ^ v20 | v18)
  {
    if (v17 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      v16 = self->_ucat;
    }

    LogPrintF(v16, "[SFBLEAdvertiser nearby:didConnectToPeer:transport:error:]", 50, "### Accept connection from peer %@ failed: %@\n", peerCopy, errorCopy);
  }

LABEL_10:
}

- (void)_activateWithCompletion:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3, __CFString **a4, uint64_t a5)
{
  v9 = *(a5 + 96);
  if (*v9 <= 60)
  {
    if (*v9 != -1)
    {
LABEL_3:
      LogPrintF(v9, "[SFBLEAdvertiser _activateWithCompletion:]", 60, "### Activate failed: %#m\n", a2);
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      v9 = *(a5 + 96);
      goto LABEL_3;
    }
  }

LABEL_5:
  if (a1)
  {
    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E696A768];
    v13 = a2;
    *a3 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v15 = v14;
    v16 = @"?";
    if (v14)
    {
      v16 = v14;
    }

    *a4 = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a4 forKeys:a3 count:1];
    v18 = [v11 errorWithDomain:v12 code:v13 userInfo:v17];
    (*(a1 + 16))(a1, v18);
  }
}

@end