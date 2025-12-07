@interface CBDiscovery
+ (id)devicesWithDiscoveryFlags:(unint64_t)flags endpoint:(id)endpoint error:(id *)error;
- (BOOL)needsAdvertisingAddress;
- (BOOL)needsBLEScan;
- (BOOL)needsIdentify;
- (BOOL)updateWithCBDiscovery:(id)discovery;
- (CBDiscovery)init;
- (CBDiscovery)initWithXPCObject:(id)object error:(id *)error;
- (NSArray)discoveredDevices;
- (OS_xpc_object)xpcSubscriberRepresentation;
- (id)_ensureXPCStarted;
- (id)descriptionWithLevel:(int)level;
- (id)xpcAuthFlagsCreateWithDeviceFlags:(unint64_t)flags;
- (unint64_t)updateWithXPCSubscriberInfo:(id)info;
- (void)_activate;
- (void)_activateDirectStart;
- (void)_activateXPCCompleted:(id)completed;
- (void)_activateXPCStart:(BOOL)start;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)_lostAllDevices;
- (void)_update;
- (void)_updateIfNeededWithBlock:(id)block;
- (void)_xpcReceivedDeviceFound:(id)found;
- (void)_xpcReceivedDeviceLost:(id)lost;
- (void)_xpcReceivedDevicesBuffered:(id)buffered;
- (void)_xpcReceivedMessage:(id)message;
- (void)_xpcReceivedPowerStateChanged:(id)changed;
- (void)_xpcReceivedSystemOverrideChanged:(id)changed;
- (void)activateWithCompletion:(id)completion;
- (void)addDiscoveryType:(int)type;
- (void)clearDuplicateFilterCache;
- (void)dealloc;
- (void)devicesMatchingPropertiesOn:(id)on exactMatch:(BOOL)match completionHandler:(id)handler;
- (void)encodeWithXPCObject:(id)object;
- (void)finish;
- (void)injectAOPBufAdv:(id)adv;
- (void)invalidate;
- (void)removeAllDiscoveryTypes;
- (void)removeDiscoveryType:(int)type;
- (void)reportMockDeviceFound:(id)found;
- (void)reportMockDeviceLost:(id)lost;
- (void)setAuthFlags:(unint64_t)flags;
- (void)setAuthFlagsExcluded:(unint64_t)excluded;
- (void)setBleScanRate:(int)rate;
- (void)setBleScanRateScreenOff:(int)off;
- (void)setBufferedConfigsForAOP:(id)p;
- (void)setDeviceFilter:(id)filter;
- (void)setDiscoveryFlags:(unint64_t)flags;
- (void)setLabel:(id)label;
- (void)setOobKeys:(id)keys;
- (void)setServiceUUIDs:(id)ds;
- (void)setSoftwareUpdatePayloads:(id)payloads;
- (void)setSpatialInteractionFilter:(id)filter;
- (void)setUseCase:(unsigned int)case;
- (void)setUseCaseClientIDs:(id)ds;
- (void)xpcReceivedMessage:(id)message;
@end

@implementation CBDiscovery

- (BOOL)needsIdentify
{
  if (self->_authFlags || self->_authFlagsExcluded || (self->_discoveryFlags & 0x2000201400020108) != 0)
  {
    return 1;
  }

  v5 = CBDiscoveryTypesNeedsIdentify(self, a2);

  return CBDiscoveryTypesContainTypes(self->_discoveryTypesInternal.bitArray, v5);
}

void *__32__CBDiscovery__ensureXPCStarted__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[8] == *(a1 + 40))
  {
    return [result xpcReceivedMessage:a2];
  }

  return result;
}

- (CBDiscovery)init
{
  v5.receiver = self;
  v5.super_class = CBDiscovery;
  v2 = [(CBDiscovery *)&v5 init];
  if (v2)
  {
    v2->_clientID = CBXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v2->_ucat = &gLogCategory_CBDiscovery;
    v3 = v2;
  }

  return v2;
}

- (void)_activate
{
  v21 = self->_mockID;
  if (v21)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    CBMockAddOrUpdateDiscovery(v21, self);
    v12 = MEMORY[0x1C68DF720](self->_activateCompletion);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v12)
    {
      v12[2](v12, 0);
    }

LABEL_30:

    goto LABEL_31;
  }

  if (self->_bluetoothStateChangedHandler)
  {
    self->_internalFlags |= 1u;
  }

  if (self->_testListenerEndpoint)
  {
    v10 = 1;
  }

  else
  {
    v10 = gCBDaemonServer == 0;
  }

  v11 = !v10;
  self->_direct = v11;
  if (self->_invalidateCalled)
  {
    v12 = CBErrorF(-71148, "Activate after invalidate", v3, v4, v5, v6, v7, v8, v19);
    v13 = self->_ucat->var0;
    if (v13 <= 90 && (v13 != -1 || _LogCategory_Initialize()))
    {
      v20 = CUPrintNSError();
      LogPrintF_safe();
    }

    v15 = MEMORY[0x1C68DF720](self->_activateCompletion);
    v16 = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v15)
    {
      v15[2](v15, v12);
    }

    else
    {
      v17 = MEMORY[0x1C68DF720](self->_errorHandler);
      v18 = v17;
      if (v17)
      {
        (*(v17 + 16))(v17, v12);
      }
    }

    goto LABEL_30;
  }

  if (v11)
  {
    [(CBDiscovery *)self _activateDirectStart];
  }

  else
  {
    [(CBDiscovery *)self _activateXPCStart:0];
  }

LABEL_31:
}

- (id)_ensureXPCStarted
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_xpcCnx;
  if (!v3)
  {
    v4 = selfCopy->_testListenerEndpoint;
    v5 = v4;
    if (v4)
    {
      mach_service = xpc_connection_create_from_endpoint(v4);
      xpc_connection_set_target_queue(mach_service, selfCopy->_dispatchQueue);
    }

    else
    {
      mach_service = xpc_connection_create_mach_service("com.apple.bluetooth.xpc", selfCopy->_dispatchQueue, 0);
    }

    objc_storeStrong(&selfCopy->_xpcCnx, mach_service);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __32__CBDiscovery__ensureXPCStarted__block_invoke;
    v8[3] = &unk_1E811D620;
    v8[4] = selfCopy;
    v3 = mach_service;
    v9 = v3;
    xpc_connection_set_event_handler(v3, v8);
    xpc_connection_activate(v3);
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (BOOL)needsAdvertisingAddress
{
  if ((self->_discoveryFlags & 0x2000000400020108) != 0)
  {
    return 1;
  }

  v5 = CBDiscoveryTypesNeedsAdvertisingAddress(self, a2);

  return CBDiscoveryTypesContainTypes(self->_discoveryTypesInternal.bitArray, v5);
}

- (BOOL)needsBLEScan
{
  if ((self->_discoveryFlags & 0x7CFAA6C5B14FFFFFLL) != 0)
  {
    return 1;
  }

  v4 = CBDiscoveryTypesBLEScan(self, a2);
  if (CBDiscoveryTypesContainTypes(self->_discoveryTypesInternal.bitArray, v4))
  {
    return 1;
  }

  serviceUUIDs = self->_serviceUUIDs;
  return serviceUUIDs && [(NSArray *)serviceUUIDs count];
}

- (void)removeAllDiscoveryTypes
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __38__CBDiscovery_removeAllDiscoveryTypes__block_invoke;
  v2[3] = &unk_1E8120828;
  v2[4] = self;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v2];
}

BOOL __38__CBDiscovery_removeAllDiscoveryTypes__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(v1 + 41);
  v2 = v1 + 41;
  v4 = v3 | *(v2 + 4);
  if (v4)
  {
    *(v2 + 4) = 0;
    *v2 = 0;
  }

  return v4 != 0;
}

- (NSArray)discoveredDevices
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_deviceMap;
  v4 = v3;
  if (v3)
  {
    allValues = [(NSMutableDictionary *)v3 allValues];
  }

  else
  {
    allValues = MEMORY[0x1E695E0F0];
  }

  objc_sync_exit(selfCopy);

  return allValues;
}

- (void)dealloc
{
  v3 = self->_mockID;
  v4 = v3;
  if (v3)
  {
    CBMockRemoveDiscovery(v3, self);
  }

  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v6.receiver = self;
  v6.super_class = CBDiscovery;
  [(CBDiscovery *)&v6 dealloc];
}

- (void)encodeWithXPCObject:(id)object
{
  objectCopy = object;
  authFlags = self->_authFlags;
  xdict = objectCopy;
  if (authFlags)
  {
    xpc_dictionary_set_uint64(objectCopy, "auFl", authFlags);
  }

  authFlagsExcluded = self->_authFlagsExcluded;
  if (authFlagsExcluded)
  {
    xpc_dictionary_set_uint64(xdict, "auFE", authFlagsExcluded);
  }

  if (self->_bleRSSIThresholdOrder)
  {
    xpc_dictionary_set_uint64(xdict, "blRO", self->_bleRSSIThresholdOrder);
  }

  if (self->_bleRSSIThresholdHint)
  {
    xpc_dictionary_set_int64(xdict, "blRT", self->_bleRSSIThresholdHint);
  }

  bleScanRate = self->_bleScanRate;
  if (bleScanRate)
  {
    xpc_dictionary_set_int64(xdict, "blSR", bleScanRate);
  }

  bleScanRateScreenOff = self->_bleScanRateScreenOff;
  if (bleScanRateScreenOff)
  {
    xpc_dictionary_set_int64(xdict, "blSO", bleScanRateScreenOff);
  }

  clientID = self->_clientID;
  if (clientID)
  {
    xpc_dictionary_set_uint64(xdict, "cid", clientID);
  }

  CUXPCEncodeNSArrayOfNSString();
  discoveryFlags = self->_discoveryFlags;
  if (discoveryFlags)
  {
    xpc_dictionary_set_uint64(xdict, "dsFl", discoveryFlags);
  }

  if (*self->_discoveryTypesInternal.bitArray | *&self->_discoveryTypesInternal.bitArray[4])
  {
    v11 = 6;
  }

  else
  {
    v11 = 1;
  }

  xpc_dictionary_set_data(xdict, "dsTy", &self->_discoveryTypesInternal, v11);
  internalFlags = self->_internalFlags;
  if (internalFlags)
  {
    xpc_dictionary_set_uint64(xdict, "intF", internalFlags);
  }

  CUXPCEncodeNSArrayOfObjects();
  CUXPCEncodeNSArrayOfObjects();
  CUXPCEncodeNSArrayOfObjects();
  CUXPCEncodeObject();
  useCase = self->_useCase;
  if (useCase)
  {
    xpc_dictionary_set_uint64(xdict, "ucas", useCase);
  }

  CUXPCEncodeNSArrayOfNSString();
  if (self->_bleSensorRssiIncreaseScanThreshold)
  {
    xpc_dictionary_set_int64(xdict, "bsIT", self->_bleSensorRssiIncreaseScanThreshold);
  }

  if (self->_bleSensorEnableRssiIncreaseScan)
  {
    xpc_dictionary_set_BOOL(xdict, "bsEI", 1);
  }

  bleSensorIncreaseScanRate = self->_bleSensorIncreaseScanRate;
  if (bleSensorIncreaseScanRate)
  {
    xpc_dictionary_set_uint64(xdict, "bsIS", bleSensorIncreaseScanRate);
  }

  bleSensorIncreaseScanTimeout = self->_bleSensorIncreaseScanTimeout;
  if (bleSensorIncreaseScanTimeout)
  {
    xpc_dictionary_set_uint64(xdict, "bsTO", bleSensorIncreaseScanTimeout);
  }

  bleSensorTimeoutBetweenIncreaseScan = self->_bleSensorTimeoutBetweenIncreaseScan;
  if (bleSensorTimeoutBetweenIncreaseScan)
  {
    xpc_dictionary_set_uint64(xdict, "bsBT", bleSensorTimeoutBetweenIncreaseScan);
  }

  CUXPCEncodeObject();
  CUXPCEncodeNSArrayOfObjects();
}

- (id)descriptionWithLevel:(int)level
{
  v86 = 0;
  NSAppendPrintF_safe(&v86, "CBDiscovery", *&level);
  v4 = v86;
  v5 = v4;
  label = self->_label;
  if (label)
  {
    v85 = v4;
    v7 = label;
    NSAppendPrintF_safe(&v85, "-%@", v7);
    v8 = v85;

    v5 = v8;
  }

  v84 = v5;
  NSAppendPrintF_safe(&v84, ", CID 0x%X", self->_clientID);
  v9 = v84;

  if (self->_authFlags)
  {
    v83 = v9;
    v10 = CUPrintFlags64();
    NSAppendPrintF_safe(&v83, ", %s %@", "auFl", v10);
    v11 = v83;

    v9 = v11;
  }

  if (self->_authFlagsExcluded)
  {
    v82 = v9;
    v12 = CUPrintFlags64();
    NSAppendPrintF_safe(&v82, ", %s %@", "auFE", v12);
    v13 = v82;

    v9 = v13;
  }

  if (self->_discoveryFlags)
  {
    v81 = v9;
    v14 = CUPrintFlags64();
    NSAppendPrintF_safe(&v81, ", DsFl %@", v14);
    v15 = v81;

    v9 = v15;
  }

  v80 = v9;
  CBDiscoveryTypesAppendString(&v80, ", DsTy", &self->_discoveryTypesInternal);
  v16 = v80;

  bleScanRate = self->_bleScanRate;
  if (bleScanRate)
  {
    v79 = v16;
    if (bleScanRate <= 34)
    {
      switch(bleScanRate)
      {
        case 10:
          v18 = "Periodic";
          goto LABEL_27;
        case 20:
          v18 = "Background";
          goto LABEL_27;
        case 30:
          v18 = "Low";
          goto LABEL_27;
      }
    }

    else if (bleScanRate > 49)
    {
      if (bleScanRate == 50)
      {
        v18 = "High";
        goto LABEL_27;
      }

      if (bleScanRate == 60)
      {
        v18 = "Max";
        goto LABEL_27;
      }
    }

    else
    {
      if (bleScanRate == 35)
      {
        v18 = "MediumLow";
        goto LABEL_27;
      }

      if (bleScanRate == 40)
      {
        v18 = "Medium";
LABEL_27:
        NSAppendPrintF_safe(&v79, ", SR %s", v18);
        v19 = v79;

        v16 = v19;
        goto LABEL_28;
      }
    }

    v18 = "?";
    goto LABEL_27;
  }

LABEL_28:
  bleScanRateScreenOff = self->_bleScanRateScreenOff;
  if (!bleScanRateScreenOff)
  {
    goto LABEL_47;
  }

  v78 = v16;
  if (bleScanRateScreenOff <= 34)
  {
    switch(bleScanRateScreenOff)
    {
      case 10:
        v21 = "Periodic";
        goto LABEL_46;
      case 20:
        v21 = "Background";
        goto LABEL_46;
      case 30:
        v21 = "Low";
        goto LABEL_46;
    }

LABEL_42:
    v21 = "?";
    goto LABEL_46;
  }

  if (bleScanRateScreenOff > 49)
  {
    if (bleScanRateScreenOff == 50)
    {
      v21 = "High";
      goto LABEL_46;
    }

    if (bleScanRateScreenOff == 60)
    {
      v21 = "Max";
      goto LABEL_46;
    }

    goto LABEL_42;
  }

  if (bleScanRateScreenOff == 35)
  {
    v21 = "MediumLow";
    goto LABEL_46;
  }

  if (bleScanRateScreenOff != 40)
  {
    goto LABEL_42;
  }

  v21 = "Medium";
LABEL_46:
  NSAppendPrintF_safe(&v78, ", SRSO %s", v21);
  v22 = v78;

  v16 = v22;
LABEL_47:
  bleScanRateOverride = self->_bleScanRateOverride;
  if (!bleScanRateOverride)
  {
    goto LABEL_66;
  }

  v77 = v16;
  if (bleScanRateOverride <= 34)
  {
    switch(bleScanRateOverride)
    {
      case 10:
        v24 = "Periodic";
        goto LABEL_65;
      case 20:
        v24 = "Background";
        goto LABEL_65;
      case 30:
        v24 = "Low";
        goto LABEL_65;
    }

LABEL_61:
    v24 = "?";
    goto LABEL_65;
  }

  if (bleScanRateOverride > 49)
  {
    if (bleScanRateOverride == 50)
    {
      v24 = "High";
      goto LABEL_65;
    }

    if (bleScanRateOverride == 60)
    {
      v24 = "Max";
      goto LABEL_65;
    }

    goto LABEL_61;
  }

  if (bleScanRateOverride == 35)
  {
    v24 = "MediumLow";
    goto LABEL_65;
  }

  if (bleScanRateOverride != 40)
  {
    goto LABEL_61;
  }

  v24 = "Medium";
LABEL_65:
  NSAppendPrintF_safe(&v77, ", SRO %s", v24);
  v25 = v77;

  v16 = v25;
LABEL_66:
  bleRSSIThresholdHint = self->_bleRSSIThresholdHint;
  if (self->_bleRSSIThresholdHint)
  {
    v76 = v16;
    NSAppendPrintF_safe(&v76, ", RSSI %d", bleRSSIThresholdHint);
    v27 = v76;

    v16 = v27;
  }

  bleRSSIThresholdOrder = self->_bleRSSIThresholdOrder;
  if (self->_bleRSSIThresholdOrder)
  {
    v75 = v16;
    NSAppendPrintF_safe(&v75, ", RSSI Order %d", bleRSSIThresholdOrder);
    v29 = v75;

    v16 = v29;
  }

  deviceFilter = self->_deviceFilter;
  if (deviceFilter)
  {
    v74 = v16;
    v31 = deviceFilter;
    v32 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe(&v74, ", DvFi %@", v32);
    v33 = v74;

    v16 = v33;
  }

  deviceSetupState = self->_deviceSetupState;
  if (self->_deviceSetupState)
  {
    v73 = v16;
    switch(deviceSetupState)
    {
      case 1:
        v35 = "FrameworkUnavailable";
        break;
      case 20:
        v35 = "Complete";
        break;
      case 10:
        v35 = "NotStarted";
        break;
      default:
        v35 = "?";
        break;
    }

    NSAppendPrintF_safe(&v73, ", DvSS %s", v35);
    v36 = v73;

    v16 = v36;
  }

  oobKeys = self->_oobKeys;
  if (oobKeys)
  {
    v72 = v16;
    v38 = oobKeys;
    v39 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe(&v72, ", OOBKeys %@", v39);
    v40 = v72;

    v16 = v40;
  }

  serviceUUIDs = self->_serviceUUIDs;
  if (serviceUUIDs)
  {
    v71 = v16;
    v42 = serviceUUIDs;
    v43 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe(&v71, ", ServiceUUIDs %@", v43);
    v44 = v71;

    v16 = v44;
  }

  softwareUpdatePayloads = self->_softwareUpdatePayloads;
  if (softwareUpdatePayloads)
  {
    v70 = v16;
    v46 = softwareUpdatePayloads;
    v47 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe(&v70, ", SoftwareUpdatePayloads %@", v47);
    v48 = v70;

    v16 = v48;
  }

  remoteDevice = self->_remoteDevice;
  if (remoteDevice)
  {
    v69 = v16;
    v50 = remoteDevice;
    NSAppendPrintF_safe(&v69, ", Remote %@", v50);
    v51 = v69;

    v16 = v51;
  }

  useCase = self->_useCase;
  if (useCase)
  {
    v53 = CBUseCaseToString_0(useCase);
    v68 = v16;
    NSAppendPrintF_safe(&v68, ", ucas %s", v53);
    v54 = v68;

    v16 = v54;
  }

  useCaseClientIDs = self->_useCaseClientIDs;
  if (useCaseClientIDs)
  {
    v67 = v16;
    v56 = useCaseClientIDs;
    v57 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe(&v67, ", ucid %@", v57);
    v58 = v67;

    v16 = v58;
  }

  bufferedAdvConfigsForAOP = self->_bufferedAdvConfigsForAOP;
  if (bufferedAdvConfigsForAOP)
  {
    v66 = v16;
    v60 = bufferedAdvConfigsForAOP;
    v61 = CUPrintNSObjectOneLine();
    NSAppendPrintF_safe(&v66, ", bfTC %@", v61);
    v62 = v66;

    v16 = v62;
  }

  if (self->_xpcReportCompleteDevice)
  {
    v65 = v16;
    NSAppendPrintF_safe(&v65, ", xpcReportCompleteDevice %s", "yes");
    v63 = v65;

    v16 = v63;
  }

  return v16;
}

- (void)setAuthFlags:(unint64_t)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__CBDiscovery_setAuthFlags___block_invoke;
  v3[3] = &unk_1E811D5A8;
  v3[4] = self;
  v3[5] = flags;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v3];
}

BOOL __28__CBDiscovery_setAuthFlags___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 232);
  if (v1 != v3)
  {
    *(v2 + 232) = v1;
  }

  return v1 != v3;
}

- (void)setAuthFlagsExcluded:(unint64_t)excluded
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __36__CBDiscovery_setAuthFlagsExcluded___block_invoke;
  v3[3] = &unk_1E811D5A8;
  v3[4] = self;
  v3[5] = excluded;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v3];
}

BOOL __36__CBDiscovery_setAuthFlagsExcluded___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 240);
  if (v1 != v3)
  {
    *(v2 + 240) = v1;
  }

  return v1 != v3;
}

- (void)setBleScanRate:(int)rate
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__CBDiscovery_setBleScanRate___block_invoke;
  v3[3] = &unk_1E811D508;
  rateCopy = rate;
  v3[4] = self;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v3];
}

BOOL __30__CBDiscovery_setBleScanRate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 92);
  if (v1 != v3)
  {
    *(v2 + 92) = v1;
  }

  return v1 != v3;
}

- (void)setBleScanRateScreenOff:(int)off
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__CBDiscovery_setBleScanRateScreenOff___block_invoke;
  v3[3] = &unk_1E811D508;
  offCopy = off;
  v3[4] = self;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v3];
}

BOOL __39__CBDiscovery_setBleScanRateScreenOff___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 100);
  if (v1 != v3)
  {
    *(v2 + 100) = v1;
  }

  return v1 != v3;
}

- (void)setDeviceFilter:(id)filter
{
  v4 = [filter copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__CBDiscovery_setDeviceFilter___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v6];
}

BOOL __31__CBDiscovery_setDeviceFilter___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 264);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 264);
    *(v10 + 264) = v11;
  }

  return v5;
}

- (void)setDiscoveryFlags:(unint64_t)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__CBDiscovery_setDiscoveryFlags___block_invoke;
  v3[3] = &unk_1E811D5A8;
  v3[4] = self;
  v3[5] = flags;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v3];
}

BOOL __33__CBDiscovery_setDiscoveryFlags___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 272);
  if (v1 != v3)
  {
    *(v2 + 272) = v1;
  }

  return v1 != v3;
}

- (void)addDiscoveryType:(int)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__CBDiscovery_addDiscoveryType___block_invoke;
  v3[3] = &unk_1E811D508;
  v3[4] = self;
  typeCopy = type;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v3];
}

uint64_t __32__CBDiscovery_addDiscoveryType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = 1;
  if ((v2 - 45) >= 0xFFFFFFD4)
  {
    v4 = *(a1 + 32) + 41;
    v5 = (v2 - 1);
    v6 = 1 << (-v2 & 7);
    v7 = v5 >> 3;
    v8 = *(v4 + (v5 >> 3));
    result = 0;
    if ((v6 & v8) == 0)
    {
      *(v4 + v7) = v8 | v6;
      return 1;
    }
  }

  return result;
}

- (void)clearDuplicateFilterCache
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CBDiscovery_clearDuplicateFilterCache__block_invoke;
  block[3] = &unk_1E811D130;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __40__CBDiscovery_clearDuplicateFilterCache__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 47) & 1) == 0 && (*(v2 + 43) & 0x20) != 0 && *(v2 + 88) == 524290)
  {
    if (gCBDaemonServer)
    {
      v3 = gCBDaemonServer;

      [v3 clearDuplicateFilterCache:?];
    }

    else
    {
      xdict = xpc_dictionary_create(0, 0, 0);
      [*(a1 + 32) encodeWithXPCObject:xdict];
      xpc_dictionary_set_string(xdict, "mTyp", "DsCD");
      v5 = [*(a1 + 32) _ensureXPCStarted];
      xpc_connection_send_message(v5, xdict);
    }
  }
}

- (void)removeDiscoveryType:(int)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__CBDiscovery_removeDiscoveryType___block_invoke;
  v3[3] = &unk_1E811D508;
  v3[4] = self;
  typeCopy = type;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v3];
}

uint64_t __35__CBDiscovery_removeDiscoveryType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if ((v1 - 45) < 0xFFFFFFD4)
  {
    return 0;
  }

  v2 = *(a1 + 32) + 41;
  v3 = (v1 - 1);
  v4 = 1 << (-v1 & 7);
  v5 = v3 >> 3;
  v6 = *(v2 + (v3 >> 3));
  if ((v4 & v6) == 0)
  {
    return 0;
  }

  *(v2 + v5) = v6 & ~v4;
  return 1;
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1ED7C1DD0;
  v6 = labelCopy;
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v5, [labelCopy UTF8String]);
}

- (void)setOobKeys:(id)keys
{
  v4 = [keys copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __26__CBDiscovery_setOobKeys___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v6];
}

BOOL __26__CBDiscovery_setOobKeys___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 296);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 296);
    *(v10 + 296) = v11;
  }

  return v5;
}

- (void)setServiceUUIDs:(id)ds
{
  v4 = [ds copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__CBDiscovery_setServiceUUIDs___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v6];
}

BOOL __31__CBDiscovery_setServiceUUIDs___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 304);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 304);
    *(v10 + 304) = v11;
  }

  return v5;
}

- (void)setSoftwareUpdatePayloads:(id)payloads
{
  v4 = [payloads copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CBDiscovery_setSoftwareUpdatePayloads___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v6];
}

BOOL __41__CBDiscovery_setSoftwareUpdatePayloads___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 312);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 312);
    *(v10 + 312) = v11;
  }

  return v5;
}

- (void)setSpatialInteractionFilter:(id)filter
{
  v4 = [filter copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__CBDiscovery_setSpatialInteractionFilter___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v6];
}

BOOL __43__CBDiscovery_setSpatialInteractionFilter___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 336);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 336);
    *(v10 + 336) = v11;
  }

  return v5;
}

- (void)setBufferedConfigsForAOP:(id)p
{
  v4 = [p copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__CBDiscovery_setBufferedConfigsForAOP___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v6];
}

BOOL __40__CBDiscovery_setBufferedConfigsForAOP___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 248);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 248);
    *(v10 + 248) = v11;
  }

  return v5;
}

- (void)setUseCase:(unsigned int)case
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __26__CBDiscovery_setUseCase___block_invoke;
  v3[3] = &unk_1E811D508;
  caseCopy = case;
  v3[4] = self;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v3];
}

BOOL __26__CBDiscovery_setUseCase___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  if (v1 != v3)
  {
    *(v2 + 88) = v1;
  }

  return v1 != v3;
}

- (void)setUseCaseClientIDs:(id)ds
{
  v4 = [ds copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __35__CBDiscovery_setUseCaseClientIDs___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBDiscovery *)self _updateIfNeededWithBlock:v6];
}

BOOL __35__CBDiscovery_setUseCaseClientIDs___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 224);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v3 != v4;
  if (v3 == v4)
  {
  }

  else
  {
    if ((v3 != 0) != (v4 == 0))
    {
      v6 = v4;
      v7 = [v3 isEqual:v4];

      if (v7)
      {
        return 0;
      }
    }

    else
    {
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v9;
    v3 = *(v10 + 224);
    *(v10 + 224) = v11;
  }

  return v5;
}

- (BOOL)updateWithCBDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  v156 = 8;
  bleRSSIThresholdOrder = [discoveryCopy bleRSSIThresholdOrder];
  bleRSSIThresholdOrder = self->_bleRSSIThresholdOrder;
  v7 = bleRSSIThresholdOrder != bleRSSIThresholdOrder;
  if (bleRSSIThresholdOrder == bleRSSIThresholdOrder)
  {
    v10 = 0;
    bleRSSIThresholdHint = [discoveryCopy bleRSSIThresholdHint];
    bleRSSIThresholdHint = self->_bleRSSIThresholdHint;
    if (bleRSSIThresholdHint == self->_bleRSSIThresholdHint)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v155 = 0;
  v8 = CUPrintFlags32();
  [discoveryCopy bleRSSIThresholdOrder];
  v9 = CUPrintFlags32();
  CUAppendF(&v155, &v156, "bleRSSIOrder: %@ -> %@", v8, v9);
  v10 = v155;

  self->_bleRSSIThresholdOrder = [discoveryCopy bleRSSIThresholdOrder];
  bleRSSIThresholdHint2 = [discoveryCopy bleRSSIThresholdHint];
  bleRSSIThresholdHint = self->_bleRSSIThresholdHint;
  if (bleRSSIThresholdHint2 != self->_bleRSSIThresholdHint)
  {
LABEL_5:
    v154 = v10;
    CUAppendF(&v154, &v156, "bleRSSIThresholdHint: %d -> %d", bleRSSIThresholdHint, [discoveryCopy bleRSSIThresholdHint]);
    v14 = v154;

    self->_bleRSSIThresholdHint = [discoveryCopy bleRSSIThresholdHint];
    v7 = 1;
    v10 = v14;
  }

LABEL_6:
  bleScanRate = [discoveryCopy bleScanRate];
  bleScanRate = self->_bleScanRate;
  if (bleScanRate != bleScanRate)
  {
    v153 = v10;
    if (bleScanRate > 34)
    {
      if (bleScanRate > 49)
      {
        if (bleScanRate == 50)
        {
          v19 = "High";
          bleScanRate2 = [discoveryCopy bleScanRate];
          if (bleScanRate2 > 34)
          {
            goto LABEL_45;
          }

          goto LABEL_35;
        }

        if (bleScanRate != 60)
        {
          goto LABEL_44;
        }

        v19 = "Max";
        bleScanRate2 = [discoveryCopy bleScanRate];
        if (bleScanRate2 <= 34)
        {
          goto LABEL_35;
        }
      }

      else if (bleScanRate == 35)
      {
        v19 = "MediumLow";
        bleScanRate2 = [discoveryCopy bleScanRate];
        if (bleScanRate2 <= 34)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (bleScanRate != 40)
        {
          goto LABEL_44;
        }

        v19 = "Medium";
        bleScanRate2 = [discoveryCopy bleScanRate];
        if (bleScanRate2 <= 34)
        {
          goto LABEL_35;
        }
      }
    }

    else if (bleScanRate > 19)
    {
      if (bleScanRate == 20)
      {
        v19 = "Background";
        bleScanRate2 = [discoveryCopy bleScanRate];
        if (bleScanRate2 <= 34)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (bleScanRate != 30)
        {
          goto LABEL_44;
        }

        v19 = "Low";
        bleScanRate2 = [discoveryCopy bleScanRate];
        if (bleScanRate2 <= 34)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      if (bleScanRate)
      {
        if (bleScanRate == 10)
        {
          v19 = "Periodic";
          bleScanRate2 = [discoveryCopy bleScanRate];
          if (bleScanRate2 > 34)
          {
            goto LABEL_45;
          }

LABEL_35:
          if (bleScanRate2 > 19)
          {
            if (bleScanRate2 == 20)
            {
              v21 = "Background";
              goto LABEL_55;
            }

            if (bleScanRate2 == 30)
            {
              v21 = "Low";
              goto LABEL_55;
            }
          }

          else
          {
            if (!bleScanRate2)
            {
              v21 = "Default";
              goto LABEL_55;
            }

            if (bleScanRate2 == 10)
            {
              v21 = "Periodic";
              goto LABEL_55;
            }
          }

          goto LABEL_54;
        }

LABEL_44:
        v19 = "?";
        bleScanRate2 = [discoveryCopy bleScanRate];
        if (bleScanRate2 > 34)
        {
          goto LABEL_45;
        }

        goto LABEL_35;
      }

      v19 = "Default";
      bleScanRate2 = [discoveryCopy bleScanRate];
      if (bleScanRate2 <= 34)
      {
        goto LABEL_35;
      }
    }

LABEL_45:
    if (bleScanRate2 > 49)
    {
      if (bleScanRate2 == 50)
      {
        v21 = "High";
        goto LABEL_55;
      }

      if (bleScanRate2 == 60)
      {
        v21 = "Max";
        goto LABEL_55;
      }
    }

    else
    {
      if (bleScanRate2 == 35)
      {
        v21 = "MediumLow";
        goto LABEL_55;
      }

      if (bleScanRate2 == 40)
      {
        v21 = "Medium";
        goto LABEL_55;
      }
    }

LABEL_54:
    v21 = "?";
LABEL_55:
    CUAppendF(&v153, &v156, "bleScanRate: %s -> %s", v19, v21);
    v22 = v153;

    self->_bleScanRate = [discoveryCopy bleScanRate];
    v7 = 1;
    v10 = v22;
    bleScanRateScreenOff = [discoveryCopy bleScanRateScreenOff];
    bleScanRateScreenOff = self->_bleScanRateScreenOff;
    if (bleScanRateScreenOff == bleScanRateScreenOff)
    {
      goto LABEL_103;
    }

LABEL_56:
    v152 = v10;
    if (bleScanRateScreenOff > 34)
    {
      if (bleScanRateScreenOff > 49)
      {
        if (bleScanRateScreenOff == 50)
        {
          v24 = "High";
          bleScanRateScreenOff2 = [discoveryCopy bleScanRateScreenOff];
          if (bleScanRateScreenOff2 > 34)
          {
            goto LABEL_92;
          }

          goto LABEL_82;
        }

        if (bleScanRateScreenOff != 60)
        {
          goto LABEL_91;
        }

        v24 = "Max";
        bleScanRateScreenOff2 = [discoveryCopy bleScanRateScreenOff];
        if (bleScanRateScreenOff2 <= 34)
        {
          goto LABEL_82;
        }
      }

      else if (bleScanRateScreenOff == 35)
      {
        v24 = "MediumLow";
        bleScanRateScreenOff2 = [discoveryCopy bleScanRateScreenOff];
        if (bleScanRateScreenOff2 <= 34)
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (bleScanRateScreenOff != 40)
        {
          goto LABEL_91;
        }

        v24 = "Medium";
        bleScanRateScreenOff2 = [discoveryCopy bleScanRateScreenOff];
        if (bleScanRateScreenOff2 <= 34)
        {
          goto LABEL_82;
        }
      }
    }

    else if (bleScanRateScreenOff > 19)
    {
      if (bleScanRateScreenOff == 20)
      {
        v24 = "Background";
        bleScanRateScreenOff2 = [discoveryCopy bleScanRateScreenOff];
        if (bleScanRateScreenOff2 <= 34)
        {
          goto LABEL_82;
        }
      }

      else
      {
        if (bleScanRateScreenOff != 30)
        {
          goto LABEL_91;
        }

        v24 = "Low";
        bleScanRateScreenOff2 = [discoveryCopy bleScanRateScreenOff];
        if (bleScanRateScreenOff2 <= 34)
        {
          goto LABEL_82;
        }
      }
    }

    else
    {
      if (bleScanRateScreenOff)
      {
        if (bleScanRateScreenOff == 10)
        {
          v24 = "Periodic";
          bleScanRateScreenOff2 = [discoveryCopy bleScanRateScreenOff];
          if (bleScanRateScreenOff2 > 34)
          {
            goto LABEL_92;
          }

LABEL_82:
          if (bleScanRateScreenOff2 > 19)
          {
            if (bleScanRateScreenOff2 == 20)
            {
              v26 = "Background";
            }

            else
            {
              if (bleScanRateScreenOff2 != 30)
              {
                goto LABEL_101;
              }

              v26 = "Low";
            }
          }

          else if (bleScanRateScreenOff2)
          {
            if (bleScanRateScreenOff2 != 10)
            {
              goto LABEL_101;
            }

            v26 = "Periodic";
          }

          else
          {
            v26 = "Default";
          }

LABEL_102:
          CUAppendF(&v152, &v156, "bleScanRateScreenOff: %s -> %s", v24, v26);
          v27 = v152;

          self->_bleScanRateScreenOff = [discoveryCopy bleScanRateScreenOff];
          v7 = 1;
          v10 = v27;
          goto LABEL_103;
        }

LABEL_91:
        v24 = "?";
        bleScanRateScreenOff2 = [discoveryCopy bleScanRateScreenOff];
        if (bleScanRateScreenOff2 > 34)
        {
          goto LABEL_92;
        }

        goto LABEL_82;
      }

      v24 = "Default";
      bleScanRateScreenOff2 = [discoveryCopy bleScanRateScreenOff];
      if (bleScanRateScreenOff2 <= 34)
      {
        goto LABEL_82;
      }
    }

LABEL_92:
    if (bleScanRateScreenOff2 > 49)
    {
      if (bleScanRateScreenOff2 == 50)
      {
        v26 = "High";
        goto LABEL_102;
      }

      if (bleScanRateScreenOff2 == 60)
      {
        v26 = "Max";
        goto LABEL_102;
      }
    }

    else
    {
      if (bleScanRateScreenOff2 == 35)
      {
        v26 = "MediumLow";
        goto LABEL_102;
      }

      if (bleScanRateScreenOff2 == 40)
      {
        v26 = "Medium";
        goto LABEL_102;
      }
    }

LABEL_101:
    v26 = "?";
    goto LABEL_102;
  }

  bleScanRateScreenOff3 = [discoveryCopy bleScanRateScreenOff];
  bleScanRateScreenOff = self->_bleScanRateScreenOff;
  if (bleScanRateScreenOff3 != bleScanRateScreenOff)
  {
    goto LABEL_56;
  }

LABEL_103:
  deviceFilter = [discoveryCopy deviceFilter];
  deviceFilter = self->_deviceFilter;
  v30 = deviceFilter;
  v31 = deviceFilter;
  if (v30 == v31)
  {
  }

  else
  {
    if ((v30 != 0) != (v31 == 0))
    {
      v32 = v31;
      v33 = [(NSArray *)v30 isEqual:v31];

      if (v33)
      {
        if ([discoveryCopy discoveryFlags] == self->_discoveryFlags)
        {
          goto LABEL_108;
        }

        goto LABEL_107;
      }
    }

    else
    {
    }

    v151 = v10;
    v48 = CUPrintNSObjectOneLine();
    deviceFilter2 = [discoveryCopy deviceFilter];
    v50 = CUPrintNSObjectOneLine();
    CUAppendF(&v151, &v156, "deviceFilter: %@ -> %@", v48, v50);
    v51 = v151;

    deviceFilter3 = [discoveryCopy deviceFilter];
    v30 = self->_deviceFilter;
    self->_deviceFilter = deviceFilter3;
    v7 = 1;
    v10 = v51;
  }

  if ([discoveryCopy discoveryFlags] != self->_discoveryFlags)
  {
LABEL_107:
    v150 = v10;
    v34 = CUPrintFlags64();
    [discoveryCopy discoveryFlags];
    v35 = CUPrintFlags64();
    CUAppendF(&v150, &v156, "discoveryFlags: %@ -> %@", v34, v35);
    v36 = v150;

    self->_discoveryFlags = [discoveryCopy discoveryFlags];
    v7 = 1;
    v10 = v36;
  }

LABEL_108:
  if (*(discoveryCopy + 41) != *self->_discoveryTypesInternal.bitArray || *(discoveryCopy + 45) != *&self->_discoveryTypesInternal.bitArray[4])
  {
    v149 = v10;
    v38 = CBDiscoveryTypesToString(&self->_discoveryTypesInternal);
    v39 = CBDiscoveryTypesToString((discoveryCopy + 41));
    CUAppendF(&v149, &v156, "discoveryTypes: %@ -> %@", v38, v39);
    v40 = v149;

    v41 = *(discoveryCopy + 41);
    *&self->_discoveryTypesInternal.bitArray[4] = *(discoveryCopy + 45);
    *self->_discoveryTypesInternal.bitArray = v41;
    v7 = 1;
    v10 = v40;
  }

  oobKeys = [discoveryCopy oobKeys];
  oobKeys = self->_oobKeys;
  v44 = oobKeys;
  v45 = oobKeys;
  if (v44 == v45)
  {

LABEL_125:
    goto LABEL_126;
  }

  if ((v44 != 0) == (v45 == 0))
  {

    goto LABEL_124;
  }

  v46 = v45;
  v47 = [(NSArray *)v44 isEqual:v45];

  if ((v47 & 1) == 0)
  {
LABEL_124:
    v148 = v10;
    v53 = CUPrintNSObjectOneLine();
    oobKeys2 = [discoveryCopy oobKeys];
    v55 = CUPrintNSObjectOneLine();
    CUAppendF(&v148, &v156, "oobKeys: %@ -> %@", v53, v55);
    v56 = v148;

    oobKeys3 = [discoveryCopy oobKeys];
    v44 = self->_oobKeys;
    self->_oobKeys = oobKeys3;
    v7 = 1;
    v10 = v56;
    goto LABEL_125;
  }

LABEL_126:
  serviceUUIDs = [discoveryCopy serviceUUIDs];
  serviceUUIDs = self->_serviceUUIDs;
  v60 = serviceUUIDs;
  v61 = serviceUUIDs;
  if (v60 == v61)
  {

LABEL_133:
    goto LABEL_134;
  }

  if ((v60 != 0) == (v61 == 0))
  {

    goto LABEL_132;
  }

  v62 = v61;
  v63 = [(NSArray *)v60 isEqual:v61];

  if ((v63 & 1) == 0)
  {
LABEL_132:
    v147 = v10;
    v64 = CUPrintNSObjectOneLine();
    serviceUUIDs2 = [discoveryCopy serviceUUIDs];
    v66 = CUPrintNSObjectOneLine();
    CUAppendF(&v147, &v156, "serviceUUIDs: %@ -> %@", v64, v66);
    v67 = v147;

    serviceUUIDs3 = [discoveryCopy serviceUUIDs];
    v60 = self->_serviceUUIDs;
    self->_serviceUUIDs = serviceUUIDs3;
    v7 = 1;
    v10 = v67;
    goto LABEL_133;
  }

LABEL_134:
  softwareUpdatePayloads = [discoveryCopy softwareUpdatePayloads];
  softwareUpdatePayloads = self->_softwareUpdatePayloads;
  v71 = softwareUpdatePayloads;
  v72 = softwareUpdatePayloads;
  if (v71 == v72)
  {
  }

  else
  {
    if ((v71 != 0) != (v72 == 0))
    {
      v73 = v72;
      v74 = [(NSArray *)v71 isEqual:v72];

      if (v74)
      {
        useCase = [discoveryCopy useCase];
        useCase = self->_useCase;
        if (useCase == useCase)
        {
          goto LABEL_139;
        }

        goto LABEL_138;
      }
    }

    else
    {
    }

    v146 = v10;
    v112 = CUPrintNSObjectOneLine();
    softwareUpdatePayloads2 = [discoveryCopy softwareUpdatePayloads];
    v114 = CUPrintNSObjectOneLine();
    CUAppendF(&v146, &v156, "SoftwareUpdatePayloads: %@ -> %@", v112, v114);
    v115 = v146;

    softwareUpdatePayloads3 = [discoveryCopy softwareUpdatePayloads];
    v71 = self->_softwareUpdatePayloads;
    self->_softwareUpdatePayloads = softwareUpdatePayloads3;
    v7 = 1;
    v10 = v115;
  }

  useCase = [discoveryCopy useCase];
  useCase = self->_useCase;
  if (useCase != useCase)
  {
LABEL_138:
    v145 = v10;
    v77 = CBUseCaseToString_0(useCase);
    v78 = CBUseCaseToString_0(useCase);
    CUAppendF(&v145, &v156, "useCase: %s -> %s", v77, v78);
    v79 = v145;

    self->_useCase = useCase;
    v7 = 1;
    v10 = v79;
  }

LABEL_139:
  useCaseClientIDs = [discoveryCopy useCaseClientIDs];
  useCaseClientIDs = self->_useCaseClientIDs;
  v82 = useCaseClientIDs;
  v83 = useCaseClientIDs;
  if (v82 == v83)
  {

    v111 = v82;
  }

  else
  {
    if ((v82 != 0) != (v83 == 0))
    {
      v84 = v83;
      v85 = [(NSArray *)v82 isEqual:v83];

      if (v85)
      {
        bleSensorRssiIncreaseScanThreshold = [discoveryCopy bleSensorRssiIncreaseScanThreshold];
        bleSensorRssiIncreaseScanThreshold = self->_bleSensorRssiIncreaseScanThreshold;
        if (bleSensorRssiIncreaseScanThreshold == self->_bleSensorRssiIncreaseScanThreshold)
        {
          goto LABEL_143;
        }

        goto LABEL_168;
      }
    }

    else
    {
    }

    v144 = v10;
    v117 = CUPrintNSObjectOneLine();
    v118 = CUPrintNSObjectOneLine();
    CUAppendF(&v144, &v156, "useCaseClientIDs: %@ -> %@", v117, v118);
    v119 = v144;

    v120 = v82;
    v111 = self->_useCaseClientIDs;
    self->_useCaseClientIDs = v120;
    v7 = 1;
    v10 = v119;
  }

  bleSensorRssiIncreaseScanThreshold2 = [discoveryCopy bleSensorRssiIncreaseScanThreshold];
  bleSensorRssiIncreaseScanThreshold = self->_bleSensorRssiIncreaseScanThreshold;
  if (bleSensorRssiIncreaseScanThreshold2 == self->_bleSensorRssiIncreaseScanThreshold)
  {
LABEL_143:
    bleSensorEnableRssiIncreaseScan = [discoveryCopy bleSensorEnableRssiIncreaseScan];
    bleSensorEnableRssiIncreaseScan = self->_bleSensorEnableRssiIncreaseScan;
    if (bleSensorEnableRssiIncreaseScan == bleSensorEnableRssiIncreaseScan)
    {
      goto LABEL_144;
    }

    goto LABEL_169;
  }

LABEL_168:
  v143 = v10;
  CUAppendF(&v143, &v156, "bleSensorRssiIncreaseScanThreshold: %d -> %d", bleSensorRssiIncreaseScanThreshold, [discoveryCopy bleSensorRssiIncreaseScanThreshold]);
  v122 = v143;

  self->_bleSensorRssiIncreaseScanThreshold = [discoveryCopy bleSensorRssiIncreaseScanThreshold];
  v7 = 1;
  v10 = v122;
  bleSensorEnableRssiIncreaseScan2 = [discoveryCopy bleSensorEnableRssiIncreaseScan];
  bleSensorEnableRssiIncreaseScan = self->_bleSensorEnableRssiIncreaseScan;
  if (bleSensorEnableRssiIncreaseScan == bleSensorEnableRssiIncreaseScan2)
  {
LABEL_144:
    bleSensorIncreaseScanRate = [discoveryCopy bleSensorIncreaseScanRate];
    bleSensorIncreaseScanRate = self->_bleSensorIncreaseScanRate;
    if (bleSensorIncreaseScanRate == bleSensorIncreaseScanRate)
    {
      goto LABEL_145;
    }

    goto LABEL_170;
  }

LABEL_169:
  v142 = v10;
  CUAppendF(&v142, &v156, "bleSensorEnableRssiIncreaseScan: %d -> %d", bleSensorEnableRssiIncreaseScan, [discoveryCopy bleSensorEnableRssiIncreaseScan]);
  v124 = v142;

  self->_bleSensorEnableRssiIncreaseScan = [discoveryCopy bleSensorEnableRssiIncreaseScan];
  v7 = 1;
  v10 = v124;
  bleSensorIncreaseScanRate2 = [discoveryCopy bleSensorIncreaseScanRate];
  bleSensorIncreaseScanRate = self->_bleSensorIncreaseScanRate;
  if (bleSensorIncreaseScanRate2 == bleSensorIncreaseScanRate)
  {
LABEL_145:
    bleSensorIncreaseScanTimeout = [discoveryCopy bleSensorIncreaseScanTimeout];
    bleSensorIncreaseScanTimeout = self->_bleSensorIncreaseScanTimeout;
    if (bleSensorIncreaseScanTimeout == bleSensorIncreaseScanTimeout)
    {
      goto LABEL_146;
    }

    goto LABEL_171;
  }

LABEL_170:
  v141 = v10;
  CUAppendF(&v141, &v156, "bleSensorRssiIncreaseScanThreshold: %u -> %u", bleSensorIncreaseScanRate, [discoveryCopy bleSensorIncreaseScanRate]);
  v126 = v141;

  self->_bleSensorIncreaseScanRate = [discoveryCopy bleSensorIncreaseScanRate];
  v7 = 1;
  v10 = v126;
  bleSensorIncreaseScanTimeout2 = [discoveryCopy bleSensorIncreaseScanTimeout];
  bleSensorIncreaseScanTimeout = self->_bleSensorIncreaseScanTimeout;
  if (bleSensorIncreaseScanTimeout2 == bleSensorIncreaseScanTimeout)
  {
LABEL_146:
    bleSensorTimeoutBetweenIncreaseScan = [discoveryCopy bleSensorTimeoutBetweenIncreaseScan];
    bleSensorTimeoutBetweenIncreaseScan = self->_bleSensorTimeoutBetweenIncreaseScan;
    if (bleSensorTimeoutBetweenIncreaseScan == bleSensorTimeoutBetweenIncreaseScan)
    {
      goto LABEL_148;
    }

    goto LABEL_147;
  }

LABEL_171:
  v140 = v10;
  CUAppendF(&v140, &v156, "bleSensorRssiIncreaseScanThreshold: %u -> %u", bleSensorIncreaseScanTimeout, [discoveryCopy bleSensorIncreaseScanTimeout]);
  v128 = v140;

  self->_bleSensorIncreaseScanTimeout = [discoveryCopy bleSensorIncreaseScanTimeout];
  v7 = 1;
  v10 = v128;
  bleSensorTimeoutBetweenIncreaseScan2 = [discoveryCopy bleSensorTimeoutBetweenIncreaseScan];
  bleSensorTimeoutBetweenIncreaseScan = self->_bleSensorTimeoutBetweenIncreaseScan;
  if (bleSensorTimeoutBetweenIncreaseScan2 != bleSensorTimeoutBetweenIncreaseScan)
  {
LABEL_147:
    v139 = v10;
    CUAppendF(&v139, &v156, "bleSensorRssiIncreaseScanThreshold: %u -> %u", bleSensorTimeoutBetweenIncreaseScan, [discoveryCopy bleSensorTimeoutBetweenIncreaseScan]);
    v96 = v139;

    self->_bleSensorTimeoutBetweenIncreaseScan = [discoveryCopy bleSensorTimeoutBetweenIncreaseScan];
    v7 = 1;
    v10 = v96;
  }

LABEL_148:
  bufferedAdvConfigsForAOP = [discoveryCopy bufferedAdvConfigsForAOP];
  bufferedAdvConfigsForAOP = self->_bufferedAdvConfigsForAOP;

  if (bufferedAdvConfigsForAOP != bufferedAdvConfigsForAOP)
  {
    v138 = v10;
    v99 = self->_bufferedAdvConfigsForAOP;
    bufferedAdvConfigsForAOP2 = [discoveryCopy bufferedAdvConfigsForAOP];
    CUAppendF(&v138, &v156, "bufferedTypeConfigs: %@ -> %@", v99, bufferedAdvConfigsForAOP2);
    v101 = v138;

    bufferedAdvConfigsForAOP3 = [discoveryCopy bufferedAdvConfigsForAOP];
    v103 = self->_bufferedAdvConfigsForAOP;
    self->_bufferedAdvConfigsForAOP = bufferedAdvConfigsForAOP3;

    v7 = 1;
    v10 = v101;
  }

  spatialInteractionfilter = [discoveryCopy spatialInteractionfilter];
  spatialInteractionfilter = self->_spatialInteractionfilter;
  v106 = spatialInteractionfilter;
  v107 = spatialInteractionfilter;
  if (v106 == v107)
  {

    var0 = self->_ucat->var0;
    if (v10)
    {
      goto LABEL_154;
    }

LABEL_175:
    if (var0 <= 10 && (var0 != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_177;
    }

    goto LABEL_181;
  }

  if ((v106 != 0) == (v107 == 0))
  {

LABEL_174:
    v137 = v10;
    v130 = CUPrintNSObjectOneLine();
    spatialInteractionfilter2 = [discoveryCopy spatialInteractionfilter];
    v132 = CUPrintNSObjectOneLine();
    CUAppendF(&v137, &v156, "spatialInteractionfilter: %@ -> %@", v130, v132);
    v133 = v137;

    spatialInteractionfilter3 = [discoveryCopy spatialInteractionfilter];
    v135 = self->_spatialInteractionfilter;
    self->_spatialInteractionfilter = spatialInteractionfilter3;
    v7 = 1;
    v10 = v133;

    var0 = self->_ucat->var0;
    if (v133)
    {
      goto LABEL_154;
    }

    goto LABEL_175;
  }

  v108 = v107;
  v109 = [(CBSpatialInteractionFilter *)v106 isEqual:v107];

  if (!v109)
  {
    goto LABEL_174;
  }

  var0 = self->_ucat->var0;
  if (!v10)
  {
    goto LABEL_175;
  }

LABEL_154:
  if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
LABEL_177:
    LogPrintF_safe();
  }

LABEL_181:

  return v7;
}

- (unint64_t)updateWithXPCSubscriberInfo:(id)info
{
  v106 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (!infoCopy)
  {
    v79 = 0;
    goto LABEL_170;
  }

  v5 = infoCopy;
  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    v79 = 0;
    infoCopy = v5;
    goto LABEL_170;
  }

  selfCopy = self;
  v103 = 0;
  xdict = v5;
  CUXPCDecodeNSArrayOfNSString();
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v6 = 0;
  v7 = 0;
  v8 = [v6 countByEnumeratingWithState:&v99 objects:v105 count:16];
  if (v8)
  {
    v9 = *v100;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v100 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v99 + 1) + 8 * i);
        if ([v11 isEqual:@"Family"])
        {
          v12 = 256;
        }

        else if ([v11 isEqual:@"Friend"])
        {
          v12 = 1024;
        }

        else if ([v11 isEqual:@"SameAccount"])
        {
          v12 = 128;
        }

        else if ([v11 isEqual:@"SharedHome"])
        {
          v12 = 512;
        }

        else if ([v11 isEqual:@"SystemPaired"])
        {
          v12 = 2048;
        }

        else
        {
          v12 = 0;
        }

        v7 |= v12;
      }

      v8 = [v6 countByEnumeratingWithState:&v99 objects:v105 count:16];
    }

    while (v8);
  }

  if (v7 == selfCopy->_authFlags)
  {
    v79 = 0;
  }

  else
  {
    selfCopy->_authFlags = v7;
    v79 = 0x80000000000;
  }

  v98 = 0;
  CUXPCDecodeNSArrayOfNSString();
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v13 = 0;
  v14 = 0;
  v15 = [v13 countByEnumeratingWithState:&v94 objects:v104 count:16];
  if (v15)
  {
    v16 = *v95;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v95 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v94 + 1) + 8 * j);
        if ([v18 isEqual:@"Family"])
        {
          v19 = 256;
        }

        else if ([v18 isEqual:@"Friend"])
        {
          v19 = 1024;
        }

        else if ([v18 isEqual:@"SameAccount"])
        {
          v19 = 128;
        }

        else if ([v18 isEqual:@"SharedHome"])
        {
          v19 = 512;
        }

        else if ([v18 isEqual:@"SystemPaired"])
        {
          v19 = 2048;
        }

        else
        {
          v19 = 0;
        }

        v14 |= v19;
      }

      v15 = [v13 countByEnumeratingWithState:&v94 objects:v104 count:16];
    }

    while (v15);
  }

  if (v14 != selfCopy->_authFlagsExcluded)
  {
    selfCopy->_authFlagsExcluded = v14;
    v79 = 0x80000000000;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, "bleRSSIThresholdOrder");
  if (uint64 != selfCopy->_bleRSSIThresholdOrder)
  {
    selfCopy->_bleRSSIThresholdOrder = uint64;
    v79 = 0x80000000000;
  }

  int64 = xpc_dictionary_get_int64(xdict, "bleRSSIThresholdHint");
  v22 = 127;
  if (int64 < 127)
  {
    v22 = int64;
  }

  if (v22 <= -128)
  {
    v22 = -128;
  }

  if (v22 != selfCopy->_bleRSSIThresholdHint)
  {
    selfCopy->_bleRSSIThresholdHint = v22;
    v79 = 0x80000000000;
  }

  v93 = 0;
  CUXPCDecodeNSArrayOfNSString();
  deviceFilter = selfCopy->_deviceFilter;
  v24 = 0;
  v25 = deviceFilter;
  v26 = v25;
  if (v24 == v25)
  {

    goto LABEL_59;
  }

  if ((v24 != 0) == (v25 == 0))
  {

    goto LABEL_58;
  }

  v27 = [(NSArray *)v24 isEqual:v25];

  if ((v27 & 1) == 0)
  {
LABEL_58:
    v28 = [v93 copy];
    v29 = selfCopy->_deviceFilter;
    selfCopy->_deviceFilter = v28;

    v79 |= 0x80000000000uLL;
  }

LABEL_59:
  string = xpc_dictionary_get_string(xdict, "bleScanRate");
  v31 = xpc_dictionary_get_string(xdict, "bleScanRateScreenOff");
  v32 = v31;
  if (!string)
  {
    v33 = selfCopy;
    if (!v31)
    {
      goto LABEL_102;
    }

    if (!strcmp(v31, "Default"))
    {
      selfCopy->_bleScanRateScreenOff = 0;
      v79 |= 0x80000000000uLL;
      if (strcmp(v32, "Periodic"))
      {
LABEL_95:
        if (strcmp(v32, "Background"))
        {
          goto LABEL_96;
        }

        goto LABEL_187;
      }
    }

    else if (strcmp(v32, "Periodic"))
    {
      goto LABEL_95;
    }

    selfCopy->_bleScanRateScreenOff = 10;
    v79 |= 0x80000000000uLL;
    if (strcmp(v32, "Background"))
    {
LABEL_96:
      if (strcmp(v32, "Low"))
      {
        goto LABEL_97;
      }

      goto LABEL_188;
    }

LABEL_187:
    selfCopy->_bleScanRateScreenOff = 20;
    v79 |= 0x80000000000uLL;
    if (strcmp(v32, "Low"))
    {
LABEL_97:
      if (strcmp(v32, "MediumLow"))
      {
        goto LABEL_98;
      }

      goto LABEL_189;
    }

LABEL_188:
    selfCopy->_bleScanRateScreenOff = 30;
    v79 |= 0x80000000000uLL;
    if (strcmp(v32, "MediumLow"))
    {
LABEL_98:
      if (strcmp(v32, "Medium"))
      {
        goto LABEL_99;
      }

      goto LABEL_190;
    }

LABEL_189:
    selfCopy->_bleScanRateScreenOff = 35;
    v79 |= 0x80000000000uLL;
    if (strcmp(v32, "Medium"))
    {
LABEL_99:
      if (strcmp(v32, "High"))
      {
        goto LABEL_100;
      }

      goto LABEL_191;
    }

LABEL_190:
    selfCopy->_bleScanRateScreenOff = 40;
    v79 |= 0x80000000000uLL;
    if (strcmp(v32, "High"))
    {
LABEL_100:
      if (strcmp(v32, "Max"))
      {
        goto LABEL_102;
      }

      goto LABEL_101;
    }

LABEL_191:
    selfCopy->_bleScanRateScreenOff = 50;
    v79 |= 0x80000000000uLL;
    if (strcmp(v32, "Max"))
    {
      goto LABEL_102;
    }

LABEL_101:
    v33->_bleScanRateScreenOff = 60;
    v79 |= 0x80000000000uLL;
    goto LABEL_102;
  }

  v33 = selfCopy;
  if (!strcmp(string, "Default"))
  {
    selfCopy->_bleScanRate = 0;
    v79 |= 0x80000000000uLL;
  }

  if (v32 && !strcmp(v32, "Default"))
  {
    selfCopy->_bleScanRateScreenOff = 0;
    v79 |= 0x80000000000uLL;
    if (strcmp(string, "Periodic"))
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  if (!strcmp(string, "Periodic"))
  {
LABEL_65:
    selfCopy->_bleScanRate = 10;
    v79 |= 0x80000000000uLL;
  }

LABEL_66:
  if (v32 && !strcmp(v32, "Periodic"))
  {
    selfCopy->_bleScanRateScreenOff = 10;
    v79 |= 0x80000000000uLL;
    if (strcmp(string, "Background"))
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

  if (!strcmp(string, "Background"))
  {
LABEL_69:
    selfCopy->_bleScanRate = 20;
    v79 |= 0x80000000000uLL;
  }

LABEL_70:
  if (v32 && !strcmp(v32, "Background"))
  {
    selfCopy->_bleScanRateScreenOff = 20;
    v79 |= 0x80000000000uLL;
    if (strcmp(string, "Low"))
    {
      goto LABEL_74;
    }

    goto LABEL_73;
  }

  if (!strcmp(string, "Low"))
  {
LABEL_73:
    selfCopy->_bleScanRate = 30;
    v79 |= 0x80000000000uLL;
  }

LABEL_74:
  if (v32 && !strcmp(v32, "Low"))
  {
    selfCopy->_bleScanRateScreenOff = 30;
    v79 |= 0x80000000000uLL;
    if (strcmp(string, "MediumLow"))
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (!strcmp(string, "MediumLow"))
  {
LABEL_77:
    selfCopy->_bleScanRate = 35;
    v79 |= 0x80000000000uLL;
  }

LABEL_78:
  if (v32 && !strcmp(v32, "MediumLow"))
  {
    selfCopy->_bleScanRateScreenOff = 35;
    v79 |= 0x80000000000uLL;
    if (strcmp(string, "Medium"))
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  if (!strcmp(string, "Medium"))
  {
LABEL_81:
    selfCopy->_bleScanRate = 40;
    v79 |= 0x80000000000uLL;
  }

LABEL_82:
  if (v32 && !strcmp(v32, "Medium"))
  {
    selfCopy->_bleScanRateScreenOff = 40;
    v79 |= 0x80000000000uLL;
    if (strcmp(string, "High"))
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

  if (!strcmp(string, "High"))
  {
LABEL_85:
    selfCopy->_bleScanRate = 50;
    v79 |= 0x80000000000uLL;
  }

LABEL_86:
  if (!v32 || strcmp(v32, "High"))
  {
    if (strcmp(string, "Max"))
    {
      goto LABEL_90;
    }

    goto LABEL_89;
  }

  selfCopy->_bleScanRateScreenOff = 50;
  v79 |= 0x80000000000uLL;
  if (!strcmp(string, "Max"))
  {
LABEL_89:
    selfCopy->_bleScanRate = 60;
    v79 |= 0x80000000000uLL;
  }

LABEL_90:
  if (v32)
  {
    goto LABEL_100;
  }

LABEL_102:
  discoveryFlags = v33->_discoveryFlags;
  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0;
  v35 = xpc_dictionary_get_array(xdict, "discoveryFlags");
  if (v35)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __43__CBDiscovery_updateWithXPCSubscriberInfo___block_invoke;
    applier[3] = &unk_1E8120850;
    applier[5] = &v89;
    applier[4] = selfCopy;
    v36 = v35;
    xpc_array_apply(v35, applier);
    v35 = v36;
  }

  v37 = v90[3];
  v77 = v35;
  if (v37 != discoveryFlags)
  {
    selfCopy->_discoveryFlags = v37;
    v79 |= 0x800000000uLL;
  }

  v82 = 0;
  v83 = &v82;
  v84 = 0x2810000000;
  v85 = &unk_1C0BA24F2;
  v86 = 0;
  v87 = 0;
  v38 = xpc_dictionary_get_array(xdict, "discoveryTypes");
  v39 = v38;
  if (v38)
  {
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __43__CBDiscovery_updateWithXPCSubscriberInfo___block_invoke_2;
    v81[3] = &unk_1E81204B8;
    v81[4] = &v82;
    xpc_array_apply(v38, v81);
  }

  if (*(v83 + 8) != *selfCopy->_discoveryTypesInternal.bitArray || *(v83 + 18) != *&selfCopy->_discoveryTypesInternal.bitArray[4])
  {
    v41 = *(v83 + 8);
    *&selfCopy->_discoveryTypesInternal.bitArray[4] = *(v83 + 18);
    *selfCopy->_discoveryTypesInternal.bitArray = v41;
    v79 |= 0x800000000uLL;
  }

  v42 = xpc_dictionary_get_BOOL(xdict, "keepAlive");
  if (selfCopy->_keepAlive != v42)
  {
    selfCopy->_keepAlive = v42;
    v79 |= 0x80000000000uLL;
  }

  v43 = xpc_dictionary_get_string(xdict, "memoryPressure");
  if (v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = "";
  }

  if (!strcmp(v44, "warn"))
  {
    v45 = 2;
    if (selfCopy->_memoryPressureFlags != 2)
    {
LABEL_123:
      selfCopy->_memoryPressureFlags = v45;
      v79 |= 0x80000000000uLL;
    }
  }

  else
  {
    if (!strcmp(v44, "critical"))
    {
      v45 = 6;
    }

    else
    {
      v45 = 0;
    }

    if (v45 != selfCopy->_memoryPressureFlags)
    {
      goto LABEL_123;
    }
  }

  objc_opt_class();
  CUXPCDecodeNSArrayOfClass();
  oobKeys = selfCopy->_oobKeys;
  v47 = 0;
  v48 = oobKeys;
  v49 = v48;
  if (v47 == v48)
  {

    goto LABEL_133;
  }

  if ((v47 != 0) == (v48 == 0))
  {

    goto LABEL_132;
  }

  v50 = [(NSArray *)v47 isEqual:v48];

  if ((v50 & 1) == 0)
  {
LABEL_132:
    v51 = [0 copy];
    v52 = selfCopy->_oobKeys;
    selfCopy->_oobKeys = v51;

    v79 |= 0x80000000000uLL;
  }

LABEL_133:
  CUXPCDecodeNSArrayOfNSString();
  objc_opt_class();
  CUXPCDecodeNSArrayOfClass();
  serviceUUIDs = selfCopy->_serviceUUIDs;
  v54 = 0;
  v55 = serviceUUIDs;
  v56 = v55;
  if (v54 == v55)
  {

    goto LABEL_140;
  }

  if ((v54 != 0) == (v55 == 0))
  {

    goto LABEL_139;
  }

  v57 = [(NSArray *)v54 isEqual:v55];

  if ((v57 & 1) == 0)
  {
LABEL_139:
    objc_storeStrong(&selfCopy->_serviceUUIDs, 0);
    v79 |= 0x80000000000uLL;
  }

LABEL_140:
  v58 = xpc_dictionary_get_int64(xdict, "bleSensorRssiIncreaseScanThreshold");
  v59 = 127;
  if (v58 < 127)
  {
    v59 = v58;
  }

  if (v59 <= -128)
  {
    v59 = -128;
  }

  if (v59 != selfCopy->_bleSensorRssiIncreaseScanThreshold)
  {
    selfCopy->_bleSensorRssiIncreaseScanThreshold = v59;
    v79 |= 0x80000000000uLL;
  }

  v60 = xpc_dictionary_get_int64(xdict, "bleSensorEnableRssiIncreaseScan");
  if (v60 != selfCopy->_bleSensorEnableRssiIncreaseScan)
  {
    selfCopy->_bleSensorEnableRssiIncreaseScan = v60 != 0;
    v79 |= 0x80000000000uLL;
  }

  v61 = xpc_dictionary_get_int64(xdict, "bleSensorIncreaseScanRate");
  if (v61 != selfCopy->_bleSensorIncreaseScanRate)
  {
    selfCopy->_bleSensorIncreaseScanRate = v61;
    v79 |= 0x80000000000uLL;
  }

  v62 = xpc_dictionary_get_int64(xdict, "bleSensorIncreaseScanTimeout");
  if (v62 != selfCopy->_bleSensorIncreaseScanTimeout)
  {
    selfCopy->_bleSensorIncreaseScanTimeout = v62;
    v79 |= 0x80000000000uLL;
  }

  v63 = xpc_dictionary_get_int64(xdict, "bleSensorTimeoutBetweenIncreaseScan");
  if (v63 != selfCopy->_bleSensorTimeoutBetweenIncreaseScan)
  {
    selfCopy->_bleSensorTimeoutBetweenIncreaseScan = v63;
    v79 |= 0x80000000000uLL;
  }

  v64 = xpc_dictionary_get_BOOL(xdict, "denyLowPowerModeScans");
  if (selfCopy->_denyLowPowerModeScans != v64)
  {
    selfCopy->_denyLowPowerModeScans = v64;
    v79 |= 0x80000000000uLL;
  }

  v65 = xpc_dictionary_get_BOOL(xdict, "denyScreenLockedScans");
  if (selfCopy->_denyScreenLockedScans != v65)
  {
    selfCopy->_denyScreenLockedScans = v65;
    v79 |= 0x80000000000uLL;
  }

  v66 = xpc_dictionary_get_uint64(xdict, "deviceSetupState");
  if (v66 != selfCopy->_deviceSetupState)
  {
    selfCopy->_deviceSetupState = v66;
    v79 |= 0x80000000000uLL;
  }

  objc_opt_class();
  CUXPCDecodeNSArrayOfClass();
  bufferedAdvConfigsForAOP = selfCopy->_bufferedAdvConfigsForAOP;
  v68 = 0;
  v69 = bufferedAdvConfigsForAOP;
  v70 = v69;
  if (v68 == v69)
  {
  }

  else
  {
    if ((v68 != 0) != (v69 == 0))
    {
      v71 = [(NSArray *)v68 isEqual:v69];

      if (v71)
      {
        goto LABEL_167;
      }
    }

    else
    {
    }

    v72 = [0 copy];
    v73 = selfCopy->_bufferedAdvConfigsForAOP;
    selfCopy->_bufferedAdvConfigsForAOP = v72;

    v79 |= 0x80000000000uLL;
  }

LABEL_167:
  v74 = xpc_dictionary_get_BOOL(xdict, "xpcReportCompleteDevice");
  if (selfCopy->_xpcReportCompleteDevice != v74)
  {
    selfCopy->_xpcReportCompleteDevice = v74;
    v79 |= 0x80000000000uLL;
  }

  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(&v89, 8);

  infoCopy = xdict;
LABEL_170:

  return v79;
}

uint64_t __43__CBDiscovery_updateWithXPCSubscriberInfo___block_invoke(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if (!string_ptr)
  {
    return 1;
  }

  v5 = string_ptr;
  if (!strcmp(string_ptr, "ApplePay"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 1uLL;
    return 1;
  }

  if (!strcmp(v5, "AppleTVSetup"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 2uLL;
    return 1;
  }

  else if (!strcmp(v5, "AppSignIn"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 4uLL;
    return 1;
  }

  else if (!strcmp(v5, "BLEAdvertisementData"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x40000000uLL;
    return 1;
  }

  else if (!strcmp(v5, "BLEPresent"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x20000000uLL;
    return 1;
  }

  else if (!strcmp(v5, "CNJ"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x10000000000000uLL;
    return 1;
  }

  else if (!strcmp(v5, "CompanionAuthentication"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x10000000uLL;
    return 1;
  }

  else if (!strcmp(v5, "CompanionLink"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 8uLL;
    return 1;
  }

  else if (!strcmp(v5, "HomePodSetup"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x10uLL;
    return 1;
  }

  else if (!strcmp(v5, "iOSSetup"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x20uLL;
    return 1;
  }

  else if (!strcmp(v5, "NearbyAction"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x80000uLL;
    return 1;
  }

  else if (!strcmp(v5, "NearbyInfo"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x40uLL;
    return 1;
  }

  else if (!strcmp(v5, "OSR"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x800000000000uLL;
    return 1;
  }

  else if (!strcmp(v5, "PassiveRSSI"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x100000uLL;
    return 1;
  }

  else if (!strcmp(v5, "ProxControl"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x200000000000uLL;
    return 1;
  }

  else if (!strcmp(v5, "ProxRepair"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x200uLL;
    return 1;
  }

  else if (!strcmp(v5, "RemoteDisplay"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x100uLL;
    return 1;
  }

  else if (!strcmp(v5, "RemotePairing"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x20000uLL;
    return 1;
  }

  else if (!strcmp(v5, "ShareAudio"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x400uLL;
    return 1;
  }

  else if (!strcmp(v5, "SIMTransfer"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x4000000000000000uLL;
    return 1;
  }

  else if (!strcmp(v5, "TVLatencySetup"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x800uLL;
    return 1;
  }

  else if (!strcmp(v5, "WatchSetup"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x20000000000000uLL;
    return 1;
  }

  else if (!strcmp(v5, "WHASetup"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x1000uLL;
    return 1;
  }

  else if (!strcmp(v5, "WiFiPassword"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x2000uLL;
    return 1;
  }

  else if (!strcmp(v5, "WxSetup"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x4000uLL;
    return 1;
  }

  else if (!strcmp(v5, "WxStatus"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x8000uLL;
    return 1;
  }

  else if (!strcmp(v5, "ObjectSetup"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x10000uLL;
    return 1;
  }

  else if (!strcmp(v5, "Connections"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x200000uLL;
    return 1;
  }

  else if (!strcmp(v5, "Pairing"))
  {
    *(*(*(a1 + 40) + 8) + 24) |= 0x800000uLL;
    return 1;
  }

  else
  {
    if (strcmp(v5, "ScreenOff"))
    {
      v6 = **(*(a1 + 32) + 56);
      if (v6 <= 90 && (v6 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
        return 1;
      }

      return 1;
    }

    *(*(*(a1 + 40) + 8) + 24) |= 0x2000000uLL;
    return 1;
  }
}

uint64_t __43__CBDiscovery_updateWithXPCSubscriberInfo___block_invoke_2(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  if (string_ptr)
  {
    v5 = CBDiscoveryTypeFromCString(string_ptr);
    if ((v5 - 45) >= 0xFFFFFFD4)
    {
      v6 = *(*(a1 + 32) + 8) + ((v5 - 1) >> 3);
      *(v6 + 32) |= 1 << (-v5 & 7);
    }
  }

  return 1;
}

- (id)xpcAuthFlagsCreateWithDeviceFlags:(unint64_t)flags
{
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if ((flags & 0x100) != 0)
  {
    xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, "Family");
    if ((flags & 0x400) == 0)
    {
LABEL_3:
      if ((flags & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((flags & 0x400) == 0)
  {
    goto LABEL_3;
  }

  xpc_array_set_string(v5, 0xFFFFFFFFFFFFFFFFLL, "Friend");
  if ((flags & 0x80) == 0)
  {
LABEL_4:
    if ((flags & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  xpc_array_set_string(v5, 0xFFFFFFFFFFFFFFFFLL, "SameAccount");
  if ((flags & 0x200) == 0)
  {
LABEL_5:
    if ((flags & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  xpc_array_set_string(v5, 0xFFFFFFFFFFFFFFFFLL, "SharedHome");
  if ((flags & 0x800) == 0)
  {
LABEL_6:
    if ((flags & 0x100000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  xpc_array_set_string(v5, 0xFFFFFFFFFFFFFFFFLL, "SystemPaired");
  if ((flags & 0x100000000000) == 0)
  {
LABEL_7:
    v6 = v5;

    return v6;
  }

LABEL_15:
  xpc_array_set_string(v5, 0xFFFFFFFFFFFFFFFFLL, "AdHocPairedDevice");
  v6 = v5;

  return v6;
}

- (OS_xpc_object)xpcSubscriberRepresentation
{
  v3 = xpc_dictionary_create(0, 0, 0);
  if (self->_authFlags)
  {
    v4 = [(CBDiscovery *)self xpcAuthFlagsCreateWithDeviceFlags:?];
    xpc_dictionary_set_value(v3, "authFlags", v4);
  }

  if (self->_authFlagsExcluded)
  {
    v5 = [(CBDiscovery *)self xpcAuthFlagsCreateWithDeviceFlags:?];
    xpc_dictionary_set_value(v3, "authFlagsExcluded", v5);
  }

  if (self->_bleRSSIThresholdOrder)
  {
    xpc_dictionary_set_uint64(v3, "bleRSSIThresholdOrder", self->_bleRSSIThresholdOrder);
  }

  if (self->_bleRSSIThresholdHint)
  {
    xpc_dictionary_set_int64(v3, "bleRSSIThresholdHint", self->_bleRSSIThresholdHint);
  }

  v6 = self->_deviceFilter;
  if (v6)
  {
    CUXPCEncodeNSArrayOfNSString();
  }

  bleScanRate = self->_bleScanRate;
  if (bleScanRate > 34)
  {
    if (bleScanRate > 49)
    {
      if (bleScanRate == 50)
      {
        v8 = "High";
        goto LABEL_30;
      }

      if (bleScanRate == 60)
      {
        v8 = "Max";
        goto LABEL_30;
      }
    }

    else
    {
      if (bleScanRate == 35)
      {
        v8 = "MediumLow";
        goto LABEL_30;
      }

      if (bleScanRate == 40)
      {
        v8 = "Medium";
        goto LABEL_30;
      }
    }

LABEL_29:
    v8 = "?";
    goto LABEL_30;
  }

  if (bleScanRate > 19)
  {
    if (bleScanRate == 20)
    {
      v8 = "Background";
      goto LABEL_30;
    }

    if (bleScanRate == 30)
    {
      v8 = "Low";
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (!bleScanRate)
  {
    goto LABEL_31;
  }

  if (bleScanRate != 10)
  {
    goto LABEL_29;
  }

  v8 = "Periodic";
LABEL_30:
  xpc_dictionary_set_string(v3, "bleScanRate", v8);
LABEL_31:
  bleScanRateScreenOff = self->_bleScanRateScreenOff;
  if (bleScanRateScreenOff > 34)
  {
    if (bleScanRateScreenOff > 49)
    {
      if (bleScanRateScreenOff == 50)
      {
        v10 = "High";
        goto LABEL_50;
      }

      if (bleScanRateScreenOff == 60)
      {
        v10 = "Max";
        goto LABEL_50;
      }
    }

    else
    {
      if (bleScanRateScreenOff == 35)
      {
        v10 = "MediumLow";
        goto LABEL_50;
      }

      if (bleScanRateScreenOff == 40)
      {
        v10 = "Medium";
        goto LABEL_50;
      }
    }

LABEL_49:
    v10 = "?";
    goto LABEL_50;
  }

  if (bleScanRateScreenOff > 19)
  {
    if (bleScanRateScreenOff == 20)
    {
      v10 = "Background";
      goto LABEL_50;
    }

    if (bleScanRateScreenOff == 30)
    {
      v10 = "Low";
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (!bleScanRateScreenOff)
  {
    goto LABEL_51;
  }

  if (bleScanRateScreenOff != 10)
  {
    goto LABEL_49;
  }

  v10 = "Periodic";
LABEL_50:
  xpc_dictionary_set_string(v3, "bleScanRateScreenOff", v10);
LABEL_51:
  discoveryFlags = self->_discoveryFlags;
  if (!discoveryFlags)
  {
    goto LABEL_81;
  }

  v12 = xpc_array_create(0, 0);
  v13 = v12;
  if (discoveryFlags)
  {
    xpc_array_set_string(v12, 0xFFFFFFFFFFFFFFFFLL, "ApplePay");
    if ((discoveryFlags & 2) == 0)
    {
LABEL_54:
      if ((discoveryFlags & 4) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_128;
    }
  }

  else if ((discoveryFlags & 2) == 0)
  {
    goto LABEL_54;
  }

  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "AppleTVSetup");
  if ((discoveryFlags & 4) == 0)
  {
LABEL_55:
    if ((discoveryFlags & 0x20000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_129;
  }

LABEL_128:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "AppSignIn");
  if ((discoveryFlags & 0x20000000) == 0)
  {
LABEL_56:
    if ((discoveryFlags & 0x10000000000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_130;
  }

LABEL_129:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "BLEPresent");
  if ((discoveryFlags & 0x10000000000000) == 0)
  {
LABEL_57:
    if ((discoveryFlags & 0x10000000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_131;
  }

LABEL_130:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "CNJ");
  if ((discoveryFlags & 0x10000000) == 0)
  {
LABEL_58:
    if ((discoveryFlags & 8) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_132;
  }

LABEL_131:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "CompanionAuthentication");
  if ((discoveryFlags & 8) == 0)
  {
LABEL_59:
    if ((discoveryFlags & 0x10) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_133;
  }

LABEL_132:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "CompanionLink");
  if ((discoveryFlags & 0x10) == 0)
  {
LABEL_60:
    if ((discoveryFlags & 0x20) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_134;
  }

LABEL_133:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "HomePodSetup");
  if ((discoveryFlags & 0x20) == 0)
  {
LABEL_61:
    if ((discoveryFlags & 0x80000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_135;
  }

LABEL_134:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "iOSSetup");
  if ((discoveryFlags & 0x80000) == 0)
  {
LABEL_62:
    if ((discoveryFlags & 0x40) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_136;
  }

LABEL_135:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "NearbyAction");
  if ((discoveryFlags & 0x40) == 0)
  {
LABEL_63:
    if ((discoveryFlags & 0x800000000000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_137;
  }

LABEL_136:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "NearbyInfo");
  if ((discoveryFlags & 0x800000000000) == 0)
  {
LABEL_64:
    if ((discoveryFlags & 0x100) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_138;
  }

LABEL_137:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "OSR");
  if ((discoveryFlags & 0x100) == 0)
  {
LABEL_65:
    if ((discoveryFlags & 0x200000000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_139;
  }

LABEL_138:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "RemoteDisplay");
  if ((discoveryFlags & 0x200000000000) == 0)
  {
LABEL_66:
    if ((discoveryFlags & 0x200) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_140;
  }

LABEL_139:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "ProxControl");
  if ((discoveryFlags & 0x200) == 0)
  {
LABEL_67:
    if ((discoveryFlags & 0x400) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_141;
  }

LABEL_140:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "ProxRepair");
  if ((discoveryFlags & 0x400) == 0)
  {
LABEL_68:
    if ((discoveryFlags & 0x4000000000000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_142;
  }

LABEL_141:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "ShareAudio");
  if ((discoveryFlags & 0x4000000000000000) == 0)
  {
LABEL_69:
    if ((discoveryFlags & 0x800) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_143;
  }

LABEL_142:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "SIMTransfer");
  if ((discoveryFlags & 0x800) == 0)
  {
LABEL_70:
    if ((discoveryFlags & 0x20000000000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_144;
  }

LABEL_143:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "TVLatencySetup");
  if ((discoveryFlags & 0x20000000000000) == 0)
  {
LABEL_71:
    if ((discoveryFlags & 0x1000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_145;
  }

LABEL_144:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "WatchSetup");
  if ((discoveryFlags & 0x1000) == 0)
  {
LABEL_72:
    if ((discoveryFlags & 0x2000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_146;
  }

LABEL_145:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "WHASetup");
  if ((discoveryFlags & 0x2000) == 0)
  {
LABEL_73:
    if ((discoveryFlags & 0x4000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_147;
  }

LABEL_146:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "WiFiPassword");
  if ((discoveryFlags & 0x4000) == 0)
  {
LABEL_74:
    if ((discoveryFlags & 0x8000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_148;
  }

LABEL_147:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "WxSetup");
  if ((discoveryFlags & 0x8000) == 0)
  {
LABEL_75:
    if ((discoveryFlags & 0x10000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_149;
  }

LABEL_148:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "WxStatus");
  if ((discoveryFlags & 0x10000) == 0)
  {
LABEL_76:
    if ((discoveryFlags & 0x200000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_150;
  }

LABEL_149:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "ObjectSetup");
  if ((discoveryFlags & 0x200000) == 0)
  {
LABEL_77:
    if ((discoveryFlags & 0x800000) == 0)
    {
      goto LABEL_78;
    }

LABEL_151:
    xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "Pairing");
    if ((discoveryFlags & 0x2000000) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

LABEL_150:
  xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "Connections");
  if ((discoveryFlags & 0x800000) != 0)
  {
    goto LABEL_151;
  }

LABEL_78:
  if ((discoveryFlags & 0x2000000) != 0)
  {
LABEL_79:
    xpc_array_set_string(v13, 0xFFFFFFFFFFFFFFFFLL, "ScreenOff");
  }

LABEL_80:
  xpc_dictionary_set_value(v3, "discoveryFlags", v13);

LABEL_81:
  v14 = "AirDrop";
  if ("AirDrop")
  {
    v15 = 0;
    v16 = &off_1E811F518;
    do
    {
      v18 = *(v16 - 4);
      if (v18 - 45) >= 0xFFFFFFD4 && ((self->_discoveryTypesInternal.bitArray[(v18 - 1) >> 3] >> (-v18 & 7)))
      {
        if (!v15)
        {
          v19 = v14;
          v20 = xpc_array_create(0, 0);
          v14 = v19;
          v15 = v20;
        }

        xpc_array_set_string(v15, 0xFFFFFFFFFFFFFFFFLL, v14);
      }

      v17 = *v16;
      v16 += 3;
      v14 = v17;
    }

    while (v17);
    if (v15)
    {
      xpc_dictionary_set_value(v3, "discoveryTypes", v15);
    }

    if (self->_keepAlive)
    {
      goto LABEL_92;
    }
  }

  else
  {
    v15 = 0;
    if (self->_keepAlive)
    {
LABEL_92:
      xpc_dictionary_set_BOOL(v3, "keepAlive", 1);
    }
  }

  memoryPressureFlags = self->_memoryPressureFlags;
  if ((memoryPressureFlags & 6) != 0)
  {
    if ((memoryPressureFlags & 4) != 0)
    {
      v22 = "critical";
    }

    else
    {
      v22 = "warn";
    }

    xpc_dictionary_set_string(v3, "memoryPressure", v22);
  }

  v23 = self->_oobKeys;
  if (v23)
  {
    CUXPCEncodeNSArrayOfObjects();
  }

  v24 = self->_serviceUUIDs;
  if (v24)
  {
    CUXPCEncodeNSArrayOfObjects();
  }

  if (self->_bleSensorRssiIncreaseScanThreshold)
  {
    xpc_dictionary_set_int64(v3, "bleSensorRssiIncreaseScanThreshold", self->_bleSensorRssiIncreaseScanThreshold);
  }

  if (self->_bleSensorEnableRssiIncreaseScan)
  {
    xpc_dictionary_set_int64(v3, "bleSensorEnableRssiIncreaseScan", 1);
  }

  bleSensorIncreaseScanRate = self->_bleSensorIncreaseScanRate;
  if (bleSensorIncreaseScanRate)
  {
    xpc_dictionary_set_int64(v3, "bleSensorIncreaseScanRate", bleSensorIncreaseScanRate);
  }

  bleSensorIncreaseScanTimeout = self->_bleSensorIncreaseScanTimeout;
  if (bleSensorIncreaseScanTimeout)
  {
    xpc_dictionary_set_int64(v3, "bleSensorIncreaseScanTimeout", bleSensorIncreaseScanTimeout);
  }

  bleSensorTimeoutBetweenIncreaseScan = self->_bleSensorTimeoutBetweenIncreaseScan;
  if (bleSensorTimeoutBetweenIncreaseScan)
  {
    xpc_dictionary_set_int64(v3, "bleSensorTimeoutBetweenIncreaseScan", bleSensorTimeoutBetweenIncreaseScan);
  }

  if (self->_denyLowPowerModeScans)
  {
    xpc_dictionary_set_BOOL(v3, "denyLowPowerModeScans", 1);
    if (!self->_denyScreenLockedScans)
    {
LABEL_114:
      deviceSetupState = self->_deviceSetupState;
      if (!self->_deviceSetupState)
      {
        goto LABEL_116;
      }

      goto LABEL_115;
    }
  }

  else if (!self->_denyScreenLockedScans)
  {
    goto LABEL_114;
  }

  xpc_dictionary_set_BOOL(v3, "denyScreenLockedScans", 1);
  deviceSetupState = self->_deviceSetupState;
  if (self->_deviceSetupState)
  {
LABEL_115:
    xpc_dictionary_set_uint64(v3, "deviceSetupState", deviceSetupState);
  }

LABEL_116:
  v29 = self->_bufferedAdvConfigsForAOP;
  if (v29)
  {
    CUXPCEncodeNSArrayOfObjects();
  }

  if (self->_xpcReportCompleteDevice)
  {
    xpc_dictionary_set_BOOL(v3, "xpcReportCompleteDevice", 1);
  }

  v30 = v3;

  return v3;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_activateCalled)
  {
    selfCopy->_activateCalled = 1;
    v6 = MEMORY[0x1C68DF720](completionCopy);
    activateCompletion = selfCopy->_activateCompletion;
    selfCopy->_activateCompletion = v6;

    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__CBDiscovery_activateWithCompletion___block_invoke;
    block[3] = &unk_1E811D130;
    block[4] = selfCopy;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(selfCopy);
}

- (void)_activateDirectStart
{
  var0 = self->_ucat->var0;
  if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
    clientID = self->_clientID;
    LogPrintF_safe();
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__CBDiscovery__activateDirectStart__block_invoke;
  v5[3] = &unk_1E811D5F8;
  v5[4] = self;
  [gCBDaemonServer activateCBDiscovery:self completion:{v5, clientID}];
}

void __35__CBDiscovery__activateDirectStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 168);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__CBDiscovery__activateDirectStart__block_invoke_2;
  v7[3] = &unk_1E811CF50;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __35__CBDiscovery__activateDirectStart__block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 16));
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = 0;

  v5 = *(a1 + 32);
  v6 = **(v5 + 56);
  if (*(a1 + 40))
  {
    if (v6 <= 90 && (v6 != -1 || _LogCategory_Initialize()))
    {
      v15 = CUPrintNSError();
      LogPrintF_safe();
    }

    if (v2)
    {
      v2[2](v2, *(a1 + 40));
    }

    else
    {
      v7 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 176));
      v8 = v7;
      if (v7)
      {
        (*(v7 + 16))(v7, *(a1 + 40));
      }
    }

    goto LABEL_20;
  }

  if (v6 <= 30)
  {
    if (v6 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

      v5 = *(a1 + 32);
    }

    v14 = *(v5 + 116);
    LogPrintF_safe();
  }

LABEL_15:
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  v9 = [gCBDaemonServer deviceMap];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __35__CBDiscovery__activateDirectStart__block_invoke_174;
  v17[3] = &unk_1E8120878;
  v17[4] = *(a1 + 32);
  v17[5] = &v18;
  [v9 enumerateKeysAndObjectsUsingBlock:v17];

  v10 = *(a1 + 32);
  objc_sync_enter(v10);
  objc_storeStrong((*(a1 + 32) + 32), v19[5]);
  objc_sync_exit(v10);

  if (v2)
  {
    v2[2](v2, 0);
  }

  v11 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 144));
  if (v11)
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 32);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __35__CBDiscovery__activateDirectStart__block_invoke_2_177;
    v16[3] = &unk_1E81208A0;
    v16[4] = v12;
    v16[5] = v11;
    [v13 enumerateKeysAndObjectsUsingBlock:v16];
  }

  _Block_object_dispose(&v18, 8);
LABEL_20:
}

void __35__CBDiscovery__activateDirectStart__block_invoke_174(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v5 discoveryTypesContainCBDiscovery:*(a1 + 32)])
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    if (!v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 40) + 8) + 40);
    }

    [v6 setObject:v5 forKeyedSubscript:v10];
  }
}

void __35__CBDiscovery__activateDirectStart__block_invoke_2_177(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = **(*(a1 + 32) + 56);
  if (v6 <= 15 && (v6 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

- (void)_activateXPCStart:(BOOL)start
{
  var0 = self->_ucat->var0;
  if (start)
  {
    if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
    {
LABEL_7:
      LogPrintF_safe();
    }
  }

  else if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_7;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  [(CBDiscovery *)self encodeWithXPCObject:v5];
  xpc_dictionary_set_string(v5, "mTyp", "DscA");
  _ensureXPCStarted = [(CBDiscovery *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __33__CBDiscovery__activateXPCStart___block_invoke;
  handler[3] = &unk_1E811D158;
  handler[4] = self;
  xpc_connection_send_message_with_reply(_ensureXPCStarted, v5, dispatchQueue, handler);
}

- (void)_activateXPCCompleted:(id)completed
{
  completedCopy = completed;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__4;
  v38 = __Block_byref_object_dispose__4;
  v39 = 0;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __37__CBDiscovery__activateXPCCompleted___block_invoke;
  v33[3] = &unk_1E811D378;
  v33[4] = self;
  v33[5] = &v34;
  v5 = MEMORY[0x1C68DF720](v33);
  v6 = CUXPCDecodeNSErrorIfNeeded();
  v7 = v35[5];
  v35[5] = v6;

  if (!v35[5])
  {
    self->_bluetoothState = xpc_dictionary_get_int64(completedCopy, "pwrS");
    v8 = xpc_dictionary_get_array(completedCopy, "devA");
    v9 = v8;
    if (!v8)
    {
      goto LABEL_6;
    }

    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__4;
    v31 = __Block_byref_object_dispose__4;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__4;
    v25 = __Block_byref_object_dispose__4;
    v26 = 0;
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __37__CBDiscovery__activateXPCCompleted___block_invoke_2;
    applier[3] = &unk_1E81208C8;
    applier[4] = &v21;
    applier[5] = &v27;
    xpc_array_apply(v8, applier);
    v10 = v22[5];
    if (v10)
    {
      v17 = v35;
      v18 = v10;
      selfCopy = v17[5];
      v17[5] = v18;
    }

    else
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      objc_storeStrong(&selfCopy->_deviceMap, v28[5]);
      objc_sync_exit(selfCopy);
    }

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v27, 8);

    if (!v10)
    {
LABEL_6:
      var0 = self->_ucat->var0;
      if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
      {
        [(NSMutableDictionary *)self->_deviceMap count];
        LogPrintF_safe();
      }

      v13 = MEMORY[0x1C68DF720](self->_activateCompletion);
      activateCompletion = self->_activateCompletion;
      self->_activateCompletion = 0;

      if (v13)
      {
        v13[2](v13, 0);
      }

      v15 = MEMORY[0x1C68DF720](self->_deviceFoundHandler);
      if (v15)
      {
        deviceMap = self->_deviceMap;
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __37__CBDiscovery__activateXPCCompleted___block_invoke_3;
        v19[3] = &unk_1E81208A0;
        v19[4] = self;
        v19[5] = v15;
        [(NSMutableDictionary *)deviceMap enumerateKeysAndObjectsUsingBlock:v19];
      }
    }
  }

  v5[2](v5);

  _Block_object_dispose(&v34, 8);
}

void __37__CBDiscovery__activateXPCCompleted___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = *(a1 + 32);
    v3 = **(v2 + 56);
    if (v3 <= 90)
    {
      if (v3 != -1 || (v4 = _LogCategory_Initialize(), v2 = *(a1 + 32), v4))
      {
        v9 = CUPrintNSError();
        LogPrintF_safe();

        v2 = *(a1 + 32);
      }
    }

    v10 = MEMORY[0x1C68DF720](*(v2 + 16));
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = 0;

    if (v10)
    {
      v10[2](v10, *(*(*(a1 + 40) + 8) + 40));
    }

    else
    {
      v7 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 176));
      v8 = v7;
      if (v7)
      {
        (*(v7 + 16))(v7, *(*(*(a1 + 40) + 8) + 40));
      }
    }
  }
}

void __37__CBDiscovery__activateXPCCompleted___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = **(*(a1 + 32) + 56);
  if (v6 <= 15 && (v6 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40));
}

- (void)finish
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __21__CBDiscovery_finish__block_invoke;
  block[3] = &unk_1E811D130;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __21__CBDiscovery_finish__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = **(v2 + 56);
  if (*(v2 + 47) == 1)
  {
    __21__CBDiscovery_finish__block_invoke_cold_1(v3, *(v2 + 56), a1 + 32);
  }

  else
  {
    if (v3 <= 30 && (v3 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v4, "mTyp", "DscF");
    v5 = [*(a1 + 32) _ensureXPCStarted];
    v6 = *(a1 + 32);
    v7 = *(v6 + 168);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __21__CBDiscovery_finish__block_invoke_2;
    handler[3] = &unk_1E811D158;
    handler[4] = v6;
    xpc_connection_send_message_with_reply(v5, v4, v7, handler);
  }
}

void __21__CBDiscovery_finish__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (!v4)
  {
    objc_opt_class();
    CUXPCDecodeObject();
    v4 = 0;
  }

  if (v4)
  {
    v5 = 90;
  }

  else
  {
    v5 = 30;
  }

  v6 = *(a1 + 32);
  v7 = **(v6 + 56);
  if (v5 >= v7)
  {
    if (v7 != -1 || (v8 = _LogCategory_Initialize(), v6 = *(a1 + 32), v8))
    {
      v11 = CUPrintNSError();
      LogPrintF_safe();

      v6 = *(a1 + 32);
    }
  }

  v9 = MEMORY[0x1C68DF720](*(v6 + 280));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, 0, v4);
  }

  [*(a1 + 32) _invalidate];
}

- (void)_interrupted
{
  if (!self->_invalidateCalled)
  {
    v12 = v2;
    var0 = self->_ucat->var0;
    if (var0 <= 90 && (var0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    [(CBDiscovery *)self _lostAllDevices:v3];
    v8 = MEMORY[0x1C68DF720](self->_interruptionHandler);
    v9 = v8;
    if (v8)
    {
      (*(v8 + 16))(v8);
    }

    self->_bluetoothState = 1;
    v10 = MEMORY[0x1C68DF720](self->_bluetoothStateChangedHandler);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 16))(v10);
    }

    [(CBDiscovery *)self _activateXPCStart:1];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__CBDiscovery_invalidate__block_invoke;
  block[3] = &unk_1E811D130;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    var0 = self->_ucat->var0;
    if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v7 = self->_mockID;
    if (v7)
    {
      CBMockRemoveDiscovery(v7, self);
    }

    if (self->_direct)
    {
      [(CBDiscovery *)self _invalidateDirect];
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v5 = selfCopy->_xpcCnx;
    v6 = v5;
    if (v5)
    {
      xpc_connection_cancel(v5);
    }

    objc_sync_exit(selfCopy);
    [(CBDiscovery *)selfCopy _invalidated];
  }
}

void __32__CBDiscovery__invalidateDirect__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 168);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__CBDiscovery__invalidateDirect__block_invoke_2;
  block[3] = &unk_1E811D130;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_direct)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    xpcCnx = selfCopy->_xpcCnx;
    objc_sync_exit(selfCopy);

    if (!xpcCnx)
    {
      self->_invalidateCalled = 1;
      v16 = MEMORY[0x1C68DF720](selfCopy->_invalidationHandler);
      bluetoothStateChangedHandler = selfCopy->_bluetoothStateChangedHandler;
      selfCopy->_bluetoothStateChangedHandler = 0;

      deviceFoundHandler = selfCopy->_deviceFoundHandler;
      selfCopy->_deviceFoundHandler = 0;

      deviceLostHandler = selfCopy->_deviceLostHandler;
      selfCopy->_deviceLostHandler = 0;

      devicesBufferedHandler = selfCopy->_devicesBufferedHandler;
      selfCopy->_devicesBufferedHandler = 0;

      errorHandler = selfCopy->_errorHandler;
      selfCopy->_errorHandler = 0;

      finishHandler = selfCopy->_finishHandler;
      selfCopy->_finishHandler = 0;

      interruptionHandler = selfCopy->_interruptionHandler;
      selfCopy->_interruptionHandler = 0;

      invalidationHandler = selfCopy->_invalidationHandler;
      selfCopy->_invalidationHandler = 0;

      systemOverrideHandler = selfCopy->_systemOverrideHandler;
      selfCopy->_systemOverrideHandler = 0;

      v14 = v16;
      if (v16)
      {
        (*(v16 + 16))(v16);
        v14 = v16;
      }

      self->_invalidateDone = 1;
      p_var0 = &selfCopy->_ucat->var0;
      if (*p_var0 <= 30 && (*p_var0 != -1 || (p_var0 = _LogCategory_Initialize(), v14 = v16, p_var0)))
      {
        p_var0 = LogPrintF_safe();
        v14 = v16;
      }

      MEMORY[0x1EEE66BB8](p_var0, v14);
    }
  }
}

- (void)_lostAllDevices
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1C68DF720](self->_deviceLostHandler, a2);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deviceMap = selfCopy->_deviceMap;
  if (v3)
  {
    allValues = [(NSMutableDictionary *)deviceMap allValues];
    [(NSMutableDictionary *)selfCopy->_deviceMap removeAllObjects];
    objc_sync_exit(selfCopy);

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = allValues;
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          var0 = selfCopy->_ucat->var0;
          if (var0 <= 15 && (var0 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF_safe();
          }

          v3[2](v3, v11);
          ++v10;
        }

        while (v8 != v10);
        v13 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v8 = v13;
      }

      while (v13);
    }
  }

  else
  {
    [(NSMutableDictionary *)deviceMap removeAllObjects];
    objc_sync_exit(selfCopy);
  }
}

- (void)reportMockDeviceFound:(id)found
{
  foundCopy = found;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__CBDiscovery_reportMockDeviceFound___block_invoke;
  v7[3] = &unk_1E811CF50;
  v7[4] = self;
  v8 = foundCopy;
  v6 = foundCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __37__CBDiscovery_reportMockDeviceFound___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 47))
  {
    return result;
  }

  v2 = *(v1 + 56);
  if (*v2 <= 30)
  {
    if (*v2 != -1)
    {
LABEL_4:
      v3 = result;
      LogPrintF(v2, "[CBDiscovery reportMockDeviceFound:]_block_invoke", 30, "Mock Device found: %@", *(result + 40));
      result = v3;
      v1 = *(v3 + 32);
      goto LABEL_6;
    }

    v4 = result;
    v5 = _LogCategory_Initialize();
    result = v4;
    v1 = *(v4 + 32);
    if (v5)
    {
      v2 = *(v1 + 56);
      goto LABEL_4;
    }
  }

LABEL_6:
  v6 = *(v1 + 144);
  if (v6)
  {
    v7 = *(result + 40);
    v8 = *(v6 + 16);
    v9 = *(v1 + 144);

    return v8(v9, v7);
  }

  return result;
}

- (void)reportMockDeviceLost:(id)lost
{
  lostCopy = lost;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__CBDiscovery_reportMockDeviceLost___block_invoke;
  v7[3] = &unk_1E811CF50;
  v7[4] = self;
  v8 = lostCopy;
  v6 = lostCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __36__CBDiscovery_reportMockDeviceLost___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 47))
  {
    return result;
  }

  v2 = *(v1 + 56);
  if (*v2 <= 30)
  {
    if (*v2 != -1)
    {
LABEL_4:
      v3 = result;
      LogPrintF(v2, "[CBDiscovery reportMockDeviceLost:]_block_invoke", 30, "Mock Device Lost: %@", *(result + 40));
      result = v3;
      v1 = *(v3 + 32);
      goto LABEL_6;
    }

    v4 = result;
    v5 = _LogCategory_Initialize();
    result = v4;
    v1 = *(v4 + 32);
    if (v5)
    {
      v2 = *(v1 + 56);
      goto LABEL_4;
    }
  }

LABEL_6:
  v6 = *(v1 + 152);
  if (v6)
  {
    v7 = *(result + 40);
    v8 = *(v6 + 16);
    v9 = *(v1 + 152);

    return v8(v9, v7);
  }

  return result;
}

- (void)_updateIfNeededWithBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((blockCopy[2](blockCopy) & 1) != 0 && selfCopy->_activateCalled && !selfCopy->_changesPending)
  {
    selfCopy->_changesPending = 1;
    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40__CBDiscovery__updateIfNeededWithBlock___block_invoke;
    block[3] = &unk_1E811D130;
    block[4] = selfCopy;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(selfCopy);
}

- (void)_update
{
  if (!self->_invalidateCalled)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    changesPending = selfCopy->_changesPending;
    selfCopy->_changesPending = 0;
    objc_sync_exit(selfCopy);

    var0 = selfCopy->_ucat->var0;
    if (changesPending)
    {
      if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      if (!selfCopy->_direct)
      {
        xdict = xpc_dictionary_create(0, 0, 0);
        [(CBDiscovery *)selfCopy encodeWithXPCObject:xdict];
        xpc_dictionary_set_string(xdict, "mTyp", "DscU");
        _ensureXPCStarted = [(CBDiscovery *)selfCopy _ensureXPCStarted];
        xpc_connection_send_message(_ensureXPCStarted, xdict);
      }
    }

    else if (var0 <= 10 && (var0 != -1 || _LogCategory_Initialize()))
    {

      LogPrintF_safe();
    }
  }
}

- (void)xpcReceivedMessage:(id)message
{
  messageCopy = message;
  var0 = self->_ucat->var0;
  v25 = messageCopy;
  if (var0 <= 9)
  {
    if (var0 != -1 || (v6 = _LogCategory_Initialize(), messageCopy = v25, v6))
    {
      v23 = CUPrintXPC();
      LogPrintF_safe();

      messageCopy = v25;
    }
  }

  if (MEMORY[0x1C68DFDD0](messageCopy) == MEMORY[0x1E69E9E80])
  {
    [(CBDiscovery *)self _xpcReceivedMessage:v25];
    goto LABEL_26;
  }

  if (v25 == MEMORY[0x1E69E9E18])
  {
    [(CBDiscovery *)self _interrupted];
    goto LABEL_26;
  }

  if (v25 != MEMORY[0x1E69E9E20])
  {
    v7 = CUXPCDecodeNSErrorIfNeeded();
    v14 = v7;
    if (v7)
    {
      v15 = v7;

      v16 = self->_ucat->var0;
      if (v16 > 90)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v15 = CBErrorF(-6700, "XPC event error", v8, v9, v10, v11, v12, v13, v23);

      v16 = self->_ucat->var0;
      if (v16 > 90)
      {
LABEL_21:
        v19 = MEMORY[0x1C68DF720](self->_errorHandler);
        v20 = v19;
        if (v19)
        {
          (*(v19 + 16))(v19, v15);
        }

        goto LABEL_26;
      }
    }

    if (v16 != -1 || _LogCategory_Initialize())
    {
      v18 = CUPrintNSError();
      v24 = CUPrintXPC();
      LogPrintF_safe();
    }

    goto LABEL_21;
  }

  if (!self->_invalidateCalled)
  {
    v17 = self->_ucat->var0;
    if (v17 <= 90 && (v17 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  xpcCnx = selfCopy->_xpcCnx;
  selfCopy->_xpcCnx = 0;

  objc_sync_exit(selfCopy);
  [(CBDiscovery *)selfCopy _invalidated];
LABEL_26:
}

- (void)_xpcReceivedMessage:(id)message
{
  messageCopy = message;
  string = xpc_dictionary_get_string(messageCopy, "mTyp");
  if (!string)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 90 && (var0 != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v5 = string;
  if (!strcmp(string, "DvFo"))
  {
    [(CBDiscovery *)self _xpcReceivedDeviceFound:messageCopy];
    v8 = messageCopy;
  }

  else if (!strcmp(v5, "DvLo"))
  {
    [(CBDiscovery *)self _xpcReceivedDeviceLost:messageCopy];
    v8 = messageCopy;
  }

  else if (!strcmp(v5, "DsBf"))
  {
    [(CBDiscovery *)self _xpcReceivedDevicesBuffered:messageCopy];
    v8 = messageCopy;
  }

  else if (!strcmp(v5, "PwrC"))
  {
    [(CBDiscovery *)self _xpcReceivedPowerStateChanged:messageCopy];
    v8 = messageCopy;
  }

  else
  {
    if (strcmp(v5, "SyOC"))
    {
      v6 = self->_ucat->var0;
      if (v6 <= 90 && (v6 != -1 || _LogCategory_Initialize()))
      {
LABEL_12:
        LogPrintF_safe();
      }

LABEL_13:
      v8 = messageCopy;

      goto LABEL_15;
    }

    [(CBDiscovery *)self _xpcReceivedSystemOverrideChanged:messageCopy];
    v8 = messageCopy;
  }

LABEL_15:
}

- (void)_xpcReceivedDeviceFound:(id)found
{
  foundCopy = found;
  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    [CBDiscovery _xpcReceivedDeviceFound:?];
    goto LABEL_15;
  }

  v15 = 0;
  v5 = [[CBDevice alloc] initWithXPCObject:foundCopy error:&v15];
  v6 = v15;
  if (v5)
  {
    identifier = [(CBDevice *)v5 identifier];
    if (identifier)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      deviceMap = selfCopy->_deviceMap;
      if (!deviceMap)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v11 = selfCopy->_deviceMap;
        selfCopy->_deviceMap = v10;

        deviceMap = selfCopy->_deviceMap;
      }

      [(NSMutableDictionary *)deviceMap setObject:v5 forKeyedSubscript:identifier];
      objc_sync_exit(selfCopy);

      var0 = selfCopy->_ucat->var0;
      if (var0 <= 15 && (var0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      v13 = MEMORY[0x1C68DF720](selfCopy->_deviceFoundHandler);
      v14 = v13;
      if (v13)
      {
        (*(v13 + 16))(v13, v5);
      }
    }

    else
    {
      [CBDiscovery _xpcReceivedDeviceFound:?];
      identifier = v16;
    }
  }

  else
  {
    if (([CBDiscovery _xpcReceivedDeviceFound:]& 1) != 0)
    {
      goto LABEL_14;
    }

    identifier = v16;
  }

LABEL_14:
LABEL_15:
}

- (void)_xpcReceivedDeviceLost:(id)lost
{
  lostCopy = lost;
  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    [CBDiscovery _xpcReceivedDeviceLost:?];
    goto LABEL_13;
  }

  v12 = 0;
  v5 = [[CBDevice alloc] initWithXPCObject:lostCopy error:&v12];
  v6 = v12;
  if (v5)
  {
    identifier = [(CBDevice *)v5 identifier];
    if (identifier)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      [(NSMutableDictionary *)selfCopy->_deviceMap setObject:0 forKeyedSubscript:identifier];
      objc_sync_exit(selfCopy);

      var0 = selfCopy->_ucat->var0;
      if (var0 <= 15 && (var0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF_safe();
      }

      v10 = MEMORY[0x1C68DF720](selfCopy->_deviceLostHandler);
      v11 = v10;
      if (v10)
      {
        (*(v10 + 16))(v10, v5);
      }
    }

    else
    {
      [CBDiscovery _xpcReceivedDeviceLost:?];
      identifier = v13;
    }
  }

  else
  {
    if (([CBDiscovery _xpcReceivedDeviceLost:]& 1) != 0)
    {
      goto LABEL_12;
    }

    identifier = v13;
  }

LABEL_12:
LABEL_13:
}

- (void)_xpcReceivedDevicesBuffered:(id)buffered
{
  bufferedCopy = buffered;
  if (MEMORY[0x1C68DFDD0]() == MEMORY[0x1E69E9E80])
  {
    objc_opt_class();
    CUXPCDecodeNSArrayOfClass();
    v5 = 0;
    [CBDiscovery _xpcReceivedDevicesBuffered:];
  }

  else
  {
    [CBDiscovery _xpcReceivedDevicesBuffered:?];
  }
}

- (void)_xpcReceivedPowerStateChanged:(id)changed
{
  xdict = changed;
  if (MEMORY[0x1C68DFDD0]() == MEMORY[0x1E69E9E80])
  {
    self->_bluetoothState = xpc_dictionary_get_int64(xdict, "pwrS");
    v4 = MEMORY[0x1C68DF720](self->_bluetoothStateChangedHandler);
    v5 = v4;
    if (v4)
    {
      (*(v4 + 16))(v4);
    }

    v6 = xdict;
  }

  else
  {
    [CBDiscovery _xpcReceivedPowerStateChanged:?];
    v6 = xdict;
  }
}

- (void)_xpcReceivedSystemOverrideChanged:(id)changed
{
  xdict = changed;
  if (MEMORY[0x1C68DFDD0]() == MEMORY[0x1E69E9E80])
  {
    self->_bleScanRateOverride = xpc_dictionary_get_int64(xdict, "scRO");
    self->_systemOverrideFlags = xpc_dictionary_get_uint64(xdict, "syOF");
    v4 = MEMORY[0x1C68DF720](self->_systemOverrideHandler);
    v5 = v4;
    if (v4)
    {
      (*(v4 + 16))(v4);
    }

    v6 = xdict;
  }

  else
  {
    [CBDiscovery _xpcReceivedSystemOverrideChanged:?];
    v6 = xdict;
  }
}

- (void)injectAOPBufAdv:(id)adv
{
  v21 = *MEMORY[0x1E69E9840];
  advCopy = adv;
  v5 = advCopy;
  if (advCopy && [advCopy count])
  {
    var0 = self->_ucat->var0;
    if (var0 <= 40 && (var0 != -1 || _LogCategory_Initialize()))
    {
      [v5 count];
      LogPrintF_safe();
    }

    empty = xpc_array_create_empty();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          xpc_array_set_data(empty, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v16 + 1) + 8 * i) bytes], objc_msgSend(*(*(&v16 + 1) + 8 * i), "length"));
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    v14 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v14, "mTyp", "DsIA");
    xpc_dictionary_set_value(v14, "rAdv", empty);
    _ensureXPCStarted = [(CBDiscovery *)self _ensureXPCStarted];
    xpc_connection_send_message(_ensureXPCStarted, v14);
  }

  else
  {
    v7 = self->_ucat->var0;
    if (v7 <= 40 && (v7 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }
}

+ (id)devicesWithDiscoveryFlags:(unint64_t)flags endpoint:(id)endpoint error:(id *)error
{
  endpointCopy = endpoint;
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v8, "mTyp", "DsGD");
  xpc_dictionary_set_uint64(v8, "dsFl", flags);
  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("CBDiscovery-GetDevices", v9);

  v11 = endpointCopy;
  v12 = v11;
  if (v11)
  {
    mach_service = xpc_connection_create_from_endpoint(v11);
    xpc_connection_set_target_queue(mach_service, v10);
  }

  else
  {
    mach_service = xpc_connection_create_mach_service("com.apple.bluetooth.xpc", v10, 0);
  }

  xpc_connection_set_event_handler(mach_service, &__block_literal_global_5);
  xpc_connection_activate(mach_service);
  v14 = xpc_connection_send_message_with_reply_sync(mach_service, v8);
  xpc_connection_cancel(mach_service);
  if (v14)
  {
    v21 = CUXPCDecodeNSErrorIfNeeded();
    v22 = v21;
    if (v21)
    {
      if (error)
      {
        v33 = v21;
        v31 = 0;
        *error = v22;
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v29 = xpc_dictionary_get_array(v14, "devA");
      if (v29)
      {
        v41 = 0;
        v42 = &v41;
        v43 = 0x3032000000;
        v44 = __Block_byref_object_copy__4;
        v45 = __Block_byref_object_dispose__4;
        v46 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v35 = 0;
        v36 = &v35;
        v37 = 0x3032000000;
        v38 = __Block_byref_object_copy__4;
        v39 = __Block_byref_object_dispose__4;
        v40 = 0;
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __56__CBDiscovery_devicesWithDiscoveryFlags_endpoint_error___block_invoke_2;
        v34[3] = &unk_1E81208C8;
        v34[4] = &v35;
        v34[5] = &v41;
        xpc_array_apply(v29, v34);
        v30 = v36[5];
        if (v30)
        {
          v31 = 0;
          if (error)
          {
            *error = v30;
          }
        }

        else
        {
          v31 = v42[5];
        }

        _Block_object_dispose(&v35, 8);

        _Block_object_dispose(&v41, 8);
      }

      else if (error)
      {
        CBErrorF(-6700, "No devices", v23, v24, v25, v26, v27, v28, v34[0]);
        *error = v31 = 0;
      }

      else
      {
        v31 = 0;
      }
    }
  }

  else if (error)
  {
    CBErrorF(-6700, "No reply", v15, v16, v17, v18, v19, v20, v34[0]);
    *error = v31 = 0;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (void)devicesMatchingPropertiesOn:(id)on exactMatch:(BOOL)match completionHandler:(id)handler
{
  onCopy = on;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__CBDiscovery_devicesMatchingPropertiesOn_exactMatch_completionHandler___block_invoke;
  v13[3] = &unk_1E81208F0;
  v13[4] = self;
  v14 = onCopy;
  matchCopy = match;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = onCopy;
  dispatch_async(dispatchQueue, v13);
}

void __72__CBDiscovery_devicesMatchingPropertiesOn_exactMatch_completionHandler___block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  [*(a1 + 32) encodeWithXPCObject:v2];
  xpc_dictionary_set_string(v2, "mTyp", "DGDv");
  CUXPCEncodeObject();
  if (*(a1 + 56) == 1)
  {
    xpc_dictionary_set_BOOL(v2, "gDvE", 1);
  }

  v3 = [*(a1 + 32) _ensureXPCStarted];
  v4 = *(*(a1 + 32) + 168);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__CBDiscovery_devicesMatchingPropertiesOn_exactMatch_completionHandler___block_invoke_2;
  v5[3] = &unk_1E811E3F8;
  v7 = *(a1 + 48);
  v6 = *(a1 + 40);
  xpc_connection_send_message_with_reply(v3, v2, v4, v5);
}

void __72__CBDiscovery_devicesMatchingPropertiesOn_exactMatch_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CUXPCDecodeNSErrorIfNeeded();
  if (v4)
  {
    v5 = v4;
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    objc_opt_class();
    CUXPCDecodeNSArrayOfClass();
    v5 = 0;
    __72__CBDiscovery_devicesMatchingPropertiesOn_exactMatch_completionHandler___block_invoke_2_cold_1(v5, a1, (*(a1 + 40) + 16), *(a1 + 40), v6, v7, v8, v9);
  }
}

- (CBDiscovery)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v13 = [(CBDiscovery *)self init];
  if (!v13)
  {
    if (!error)
    {
      goto LABEL_86;
    }

    v72 = "CBDiscovery init failed";
LABEL_85:
    CBErrorF(-6756, v72, v7, v8, v9, v10, v11, v12, v73);
    *error = v70 = 0;
    goto LABEL_80;
  }

  if (MEMORY[0x1C68DFDD0](objectCopy) != MEMORY[0x1E69E9E80])
  {
    if (!error)
    {
      goto LABEL_86;
    }

    v72 = "XPC non-dict";
    goto LABEL_85;
  }

  OUTLINED_FUNCTION_0();
  v14 = CUXPCDecodeUInt64RangedEx();
  if (v14 == 6)
  {
    v13->_authFlags = 0;
  }

  else if (v14 == 5)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_0();
  v15 = CUXPCDecodeUInt64RangedEx();
  if (v15 == 6)
  {
    v13->_authFlagsExcluded = 0;
  }

  else if (v15 == 5)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_0();
  v16 = CUXPCDecodeUInt64RangedEx();
  if (v16 == 6)
  {
    v13->_bleRSSIThresholdOrder = 0;
  }

  else if (v16 == 5)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_4();
  v17 = CUXPCDecodeSInt64RangedEx();
  if (v17 == 6)
  {
    v13->_bleRSSIThresholdHint = 0;
  }

  else if (v17 == 5)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_4();
  v18 = CUXPCDecodeSInt64RangedEx();
  if (v18 == 6)
  {
    v13->_bleScanRate = 0;
  }

  else if (v18 == 5)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_4();
  v19 = CUXPCDecodeSInt64RangedEx();
  if (v19 == 6)
  {
    v13->_bleScanRateScreenOff = 0;
  }

  else if (v19 == 5)
  {
    goto LABEL_86;
  }

  v20 = OUTLINED_FUNCTION_0();
  v25 = OUTLINED_FUNCTION_5(v20, v21, v22, v23, v24);
  if (v25 == 6)
  {
    v13->_clientID = 0;
  }

  else if (v25 == 5)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSArrayOfNSString())
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_0();
  v26 = CUXPCDecodeUInt64RangedEx();
  if (v26 == 6)
  {
    v13->_discoveryFlags = 0;
  }

  else if (v26 == 5)
  {
    goto LABEL_86;
  }

  v27 = OUTLINED_FUNCTION_1_0();
  if (!CBXPCDecodeDiscoveryTypes(v27, v28, v29))
  {
    goto LABEL_86;
  }

  v30 = OUTLINED_FUNCTION_0();
  v35 = OUTLINED_FUNCTION_5(v30, v31, v32, v33, v34);
  if (v35 == 6)
  {
    v13->_internalFlags = 0;
  }

  else if (v35 == 5)
  {
    goto LABEL_86;
  }

  objc_opt_class();
  OUTLINED_FUNCTION_4_5();
  if (!CUXPCDecodeNSArrayOfClass())
  {
    goto LABEL_86;
  }

  oobKeys = v13->_oobKeys;
  if (oobKeys)
  {
    if ([(NSArray *)oobKeys count])
    {
      if (!v13->_discoveryFlags)
      {
        OUTLINED_FUNCTION_6_1();
        if (v39 ^ v40 | v38)
        {
          if (v37 != -1 || _LogCategory_Initialize())
          {
            LogPrintF_safe();
          }
        }
      }
    }
  }

  objc_opt_class();
  OUTLINED_FUNCTION_4_5();
  if (!CUXPCDecodeNSArrayOfClass())
  {
    goto LABEL_86;
  }

  serviceUUIDs = v13->_serviceUUIDs;
  if (serviceUUIDs)
  {
    if ([(NSArray *)serviceUUIDs count])
    {
      if (!v13->_discoveryFlags)
      {
        OUTLINED_FUNCTION_6_1();
        if (v39 ^ v40 | v38)
        {
          if (v42 != -1 || _LogCategory_Initialize())
          {
            LogPrintF_safe();
          }
        }
      }
    }
  }

  objc_opt_class();
  OUTLINED_FUNCTION_4_5();
  if (!CUXPCDecodeNSArrayOfClass())
  {
    goto LABEL_86;
  }

  objc_opt_class();
  OUTLINED_FUNCTION_4_5();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_86;
  }

  v43 = OUTLINED_FUNCTION_0();
  v48 = OUTLINED_FUNCTION_5(v43, v44, v45, v46, v47);
  if (v48 == 6)
  {
    v13->_useCase = 0;
  }

  else if (v48 == 5)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSArrayOfNSString())
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_4();
  v49 = CUXPCDecodeSInt64RangedEx();
  if (v49 == 6)
  {
    v13->_bleSensorRssiIncreaseScanThreshold = 0;
  }

  else if (v49 == 5)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeBool())
  {
    goto LABEL_86;
  }

  v13->_bleSensorEnableRssiIncreaseScan = 1;
  v50 = OUTLINED_FUNCTION_0();
  v55 = OUTLINED_FUNCTION_5(v50, v51, v52, v53, v54);
  if (v55 == 6)
  {
    v13->_bleSensorIncreaseScanRate = 0;
  }

  else if (v55 == 5)
  {
    goto LABEL_86;
  }

  v56 = OUTLINED_FUNCTION_0();
  v61 = OUTLINED_FUNCTION_5(v56, v57, v58, v59, v60);
  if (v61 == 6)
  {
    v13->_bleSensorIncreaseScanTimeout = 0;
  }

  else if (v61 == 5)
  {
    goto LABEL_86;
  }

  v62 = OUTLINED_FUNCTION_0();
  v67 = OUTLINED_FUNCTION_5(v62, v63, v64, v65, v66);
  if (v67 != 6)
  {
    if (v67 != 5)
    {
      goto LABEL_69;
    }

LABEL_86:
    v70 = 0;
    goto LABEL_80;
  }

  v13->_bleSensorTimeoutBetweenIncreaseScan = 0;
LABEL_69:
  objc_opt_class();
  OUTLINED_FUNCTION_4_5();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_86;
  }

  objc_opt_class();
  OUTLINED_FUNCTION_4_5();
  if (!CUXPCDecodeNSArrayOfClass())
  {
    goto LABEL_86;
  }

  bufferedAdvConfigsForAOP = v13->_bufferedAdvConfigsForAOP;
  if (bufferedAdvConfigsForAOP)
  {
    if ([(NSArray *)bufferedAdvConfigsForAOP count])
    {
      if ((v13->_discoveryTypesInternal.bitArray[3] & 8) == 0)
      {
        OUTLINED_FUNCTION_6_1();
        if (v39 ^ v40 | v38)
        {
          if (v69 != -1 || _LogCategory_Initialize())
          {
            LogPrintF_safe();
          }
        }
      }
    }
  }

  v70 = v13;
LABEL_80:

  return v70;
}

BOOL __37__CBDiscovery__activateXPCCompleted___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = OUTLINED_FUNCTION_8_2([CBDevice alloc], *(a1 + 32), v23, obj);

  objc_storeStrong(v3, obja);
  if (v6)
  {
    v13 = [v6 identifier];
    v14 = v13 != 0;
    if (v13)
    {
      v15 = *(*(*(a1 + 40) + 8) + 40);
      if (!v15)
      {
        v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v17 = *(*(a1 + 40) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;

        v15 = *(*(*(a1 + 40) + 8) + 40);
      }

      [v15 setObject:v6 forKeyedSubscript:v13];
    }

    else
    {
      v20 = CBErrorF(-6708, "No device ID", v7, v8, v9, v10, v11, v12, v24);
      v21 = *(*(a1 + 32) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

BOOL __56__CBDiscovery_devicesWithDiscoveryFlags_endpoint_error___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = OUTLINED_FUNCTION_8_2([CBDevice alloc], *(a1 + 32), v8, obj);

  objc_storeStrong(v3, obja);
  if (v6)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
  }

  return v6 != 0;
}

uint64_t __21__CBDiscovery_finish__block_invoke_cold_1(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 90)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF_safe();
    }
  }

  return result;
}

- (uint64_t)_xpcReceivedDeviceFound:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_8(a1);
  if (v4 ^ v5 | v3)
  {
    if (v2 != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF_safe();
    }
  }

  return result;
}

- (uint64_t)_xpcReceivedDeviceFound:(uint64_t)a1 .cold.2(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_7(a1);
  if (v6 ^ v7 | v5)
  {
    if (v4 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = v2;
  return result;
}

- (uint64_t)_xpcReceivedDeviceFound:.cold.3()
{
  OUTLINED_FUNCTION_5_5();
  if (!(v3 ^ v4 | v2))
  {
    return 1;
  }

  v5 = v0;
  if (v1 == -1 && !_LogCategory_Initialize())
  {
    return 1;
  }

  *v5 = CUPrintNSError();
  LogPrintF_safe();
  return 0;
}

- (uint64_t)_xpcReceivedDeviceLost:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_8(a1);
  if (v4 ^ v5 | v3)
  {
    if (v2 != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF_safe();
    }
  }

  return result;
}

- (uint64_t)_xpcReceivedDeviceLost:(uint64_t)a1 .cold.2(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_7(a1);
  if (v6 ^ v7 | v5)
  {
    if (v4 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *v1 = v2;
  return result;
}

- (uint64_t)_xpcReceivedDeviceLost:.cold.3()
{
  OUTLINED_FUNCTION_5_5();
  if (!(v3 ^ v4 | v2))
  {
    return 1;
  }

  v5 = v0;
  if (v1 == -1 && !_LogCategory_Initialize())
  {
    return 1;
  }

  *v5 = CUPrintNSError();
  LogPrintF_safe();
  return 0;
}

- (uint64_t)_xpcReceivedDevicesBuffered:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_8(a1);
  if (v4 ^ v5 | v3)
  {
    if (v2 != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF_safe();
    }
  }

  return result;
}

- (uint64_t)_xpcReceivedDevicesBuffered:(uint64_t *)a3 .cold.2(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return LogPrintF_safe();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF_safe();
    }
  }

  return result;
}

- (void)_xpcReceivedDevicesBuffered:.cold.3()
{
  OUTLINED_FUNCTION_5_5();
  if (v2 ^ v3 | v1 && (v0 != -1 || _LogCategory_Initialize()))
  {
    v4 = CUPrintNSError();
    LogPrintF_safe();
  }
}

- (uint64_t)_xpcReceivedPowerStateChanged:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_8(a1);
  if (v4 ^ v5 | v3)
  {
    if (v2 != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF_safe();
    }
  }

  return result;
}

- (uint64_t)_xpcReceivedSystemOverrideChanged:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1_8(a1);
  if (v4 ^ v5 | v3)
  {
    if (v2 != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF_safe();
    }
  }

  return result;
}

void __72__CBDiscovery_devicesMatchingPropertiesOn_exactMatch_completionHandler___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, void (**a3)(uint64_t, void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    (*a3)(a4, 0, a1, a4, a5, a6, a7, a8);
  }

  else
  {
    v10 = CBErrorF(-6727, "No devices found matching device %@", a3, a4, a5, a6, a7, a8, *(a2 + 32));
    (*a3)(a4, 0, v10);
  }
}

@end