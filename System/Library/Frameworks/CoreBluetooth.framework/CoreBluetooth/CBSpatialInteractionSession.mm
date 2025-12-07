@interface CBSpatialInteractionSession
+ (id)dictionaryWithTokenData:(id)data error:(id *)error;
- (BOOL)matchesWithDevice:(id)device;
- (BOOL)updateWithSession:(id)session;
- (CBSpatialInteractionSession)init;
- (CBSpatialInteractionSession)initWithXPCObject:(id)object error:(id *)error;
- (NSArray)discoveredDevices;
- (id)_ensureXPCStarted;
- (id)descriptionWithLevel:(int)level;
- (void)_activate;
- (void)_activateDirectStart;
- (void)_activateXPCCompleted:(id)completed reactivate:(BOOL)reactivate;
- (void)_activateXPCStart:(BOOL)start;
- (void)_addPeerToken:(id)token userInfo:(id)info completion:(id)completion;
- (void)_interrupted;
- (void)_invalidated;
- (void)_lostAllDevices;
- (void)_reAddTokens;
- (void)_update;
- (void)_updateIfNeededWithBlock:(id)block;
- (void)_xpcReceivedAOPData:(id)data;
- (void)_xpcReceivedAdvertisingAddressChanged:(id)changed;
- (void)_xpcReceivedDeviceFound:(id)found;
- (void)_xpcReceivedDeviceLost:(id)lost;
- (void)_xpcReceivedEvent:(id)event;
- (void)_xpcReceivedMessage:(id)message;
- (void)_xpcReceivedPowerStateChanged:(id)changed;
- (void)_xpcReceivedSystemOverrideChanged:(id)changed;
- (void)activateWithCompletion:(id)completion;
- (void)addPeerToken:(id)token completion:(id)completion;
- (void)addPeerToken:(id)token userInfo:(id)info completion:(id)completion;
- (void)dealloc;
- (void)encodeWithXPCObject:(id)object;
- (void)invalidate;
- (void)removePeerToken:(id)token completion:(id)completion;
- (void)setAdvertiseRate:(int)rate;
- (void)setAdvertiseRate:(int)rate timeout:(double)timeout;
- (void)setBleRSSIThresholdOrder:(unsigned __int8)order;
- (void)setControlFlags:(unsigned int)flags;
- (void)setFilter:(id)filter;
- (void)setLabel:(id)label;
- (void)setScanRate:(int)rate;
- (void)setScanRateScreenOff:(int)off;
@end

@implementation CBSpatialInteractionSession

+ (id)dictionaryWithTokenData:(id)data error:(id *)error
{
  HIDWORD(v14) = 0;
  v5 = OPACKDecodeData();
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v5;
    }

    else if (error)
    {
      CBErrorF(312900, "Non-dict token", v6, v7, v8, v9, v10, v11, v14);
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    [(CBSpatialInteractionSession *)error dictionaryWithTokenData:&v15 error:?];
    v12 = v15;
  }

  return v12;
}

- (CBSpatialInteractionSession)init
{
  v5.receiver = self;
  v5.super_class = CBSpatialInteractionSession;
  v2 = [(CBSpatialInteractionSession *)&v5 init];
  if (v2)
  {
    v2->_clientID = CBXPCGetNextClientID();
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v2->_ucat = &gLogCategory_CBSpatial;
    v3 = v2;
  }

  return v2;
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    selfCopy = self;
    LogCategory_Remove();
    self = selfCopy;
    selfCopy->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = CBSpatialInteractionSession;
  [(CBSpatialInteractionSession *)&v4 dealloc];
}

- (void)encodeWithXPCObject:(id)object
{
  xdict = object;
  advertiseRate = self->_advertiseRate;
  if (advertiseRate)
  {
    xpc_dictionary_set_int64(xdict, "advR", advertiseRate);
  }

  clientID = self->_clientID;
  if (clientID)
  {
    xpc_dictionary_set_uint64(xdict, "cid", clientID);
  }

  if (self->_enableEPAForLEAdvertisement)
  {
    xpc_dictionary_set_BOOL(xdict, "naEE", 1);
  }

  internalFlags = self->_internalFlags;
  if (internalFlags)
  {
    xpc_dictionary_set_uint64(xdict, "intF", internalFlags);
  }

  scanRate = self->_scanRate;
  if (scanRate)
  {
    xpc_dictionary_set_int64(xdict, "scnR", scanRate);
  }

  scanRateOverride = self->_scanRateOverride;
  if (scanRateOverride)
  {
    xpc_dictionary_set_int64(xdict, "scRO", scanRateOverride);
  }

  scanRateScreenOff = self->_scanRateScreenOff;
  if (scanRateScreenOff)
  {
    xpc_dictionary_set_int64(xdict, "scRS", scanRateScreenOff);
  }

  if (self->_bleRSSIThresholdHint)
  {
    xpc_dictionary_set_int64(xdict, "blRT", self->_bleRSSIThresholdHint);
  }

  if (self->_bleRSSIThresholdOrder)
  {
    xpc_dictionary_set_uint64(xdict, "blRO", self->_bleRSSIThresholdOrder);
  }

  controlFlags = self->_controlFlags;
  if (controlFlags)
  {
    xpc_dictionary_set_uint64(xdict, "siCF", controlFlags);
  }

  presenceConfigData = [(CBSpatialInteractionSession *)self presenceConfigData];
  v12 = presenceConfigData;
  if (presenceConfigData)
  {
    v13 = presenceConfigData;
    v14 = xdict;
    bytes = [v12 bytes];
    if (bytes)
    {
      v16 = bytes;
    }

    else
    {
      v16 = "";
    }

    xpc_dictionary_set_data(v14, "siPC", v16, [v12 length]);
  }

  uwbConfigData = [(CBSpatialInteractionSession *)self uwbConfigData];
  v18 = uwbConfigData;
  if (uwbConfigData)
  {
    v19 = uwbConfigData;
    v20 = xdict;
    bytes2 = [v18 bytes];
    if (bytes2)
    {
      v22 = bytes2;
    }

    else
    {
      v22 = "";
    }

    xpc_dictionary_set_data(v20, "siUC", v22, [v18 length]);
  }

  uwbTokenFlags = self->_uwbTokenFlags;
  if (uwbTokenFlags)
  {
    xpc_dictionary_set_uint64(xdict, "siUF", uwbTokenFlags);
  }

  clientIrkData = self->_clientIrkData;
  if (clientIrkData)
  {
    if ([(NSData *)clientIrkData length]== 16)
    {
      v25 = self->_clientIrkData;
      if (v25)
      {
        v26 = v25;
        v27 = xdict;
        v28 = v25;
        bytes3 = [(NSData *)v28 bytes];
        if (bytes3)
        {
          v30 = bytes3;
        }

        else
        {
          v30 = "";
        }

        v31 = [(NSData *)v28 length];

        xpc_dictionary_set_data(v27, "irkD", v30, v31);
      }
    }

    else
    {
      var0 = self->_ucat->var0;
      if (var0 <= 90 && (var0 != -1 || _LogCategory_Initialize()))
      {
        v42 = [(NSData *)self->_clientIrkData length];
        v43 = 16;
        LogPrintF_safe();
      }
    }
  }

  clientIdentifierData = self->_clientIdentifierData;
  if (clientIdentifierData)
  {
    if ([(NSData *)clientIdentifierData length]== 3)
    {
      v34 = self->_clientIdentifierData;
      if (v34)
      {
        v35 = v34;
        v36 = xdict;
        v37 = v34;
        bytes4 = [(NSData *)v37 bytes];
        if (bytes4)
        {
          v39 = bytes4;
        }

        else
        {
          v39 = "";
        }

        v40 = [(NSData *)v37 length:v42];

        xpc_dictionary_set_data(v36, "id", v39, v40);
      }
    }

    else
    {
      v41 = self->_ucat->var0;
      if (v41 <= 90 && (v41 != -1 || _LogCategory_Initialize()))
      {
        [(NSData *)self->_clientIdentifierData length:v42];
        LogPrintF_safe();
      }
    }
  }

  CUXPCEncodeObject();
}

- (id)descriptionWithLevel:(int)level
{
  v84 = 0;
  NSAppendPrintF_safe(&v84, "CBSpatialInteractionSession, CID 0x%X", self->_clientID);
  v4 = v84;
  if (self->_controlFlags)
  {
    v83 = v4;
    v5 = CUPrintFlags32();
    NSAppendPrintF_safe(&v83, ", CF %@", v5);
    v6 = v83;

    v4 = v6;
  }

  advertisingAddressData = self->_advertisingAddressData;
  if (advertisingAddressData)
  {
    v82 = v4;
    v8 = advertisingAddressData;
    v9 = CUPrintNSDataAddress();
    NSAppendPrintF_safe(&v82, ", AAdr %@", v9);
    v10 = v82;

    v4 = v10;
  }

  advertiseRate = self->_advertiseRate;
  if (advertiseRate)
  {
    v81 = v4;
    if (advertiseRate <= 39)
    {
      if (advertiseRate > 19)
      {
        if (advertiseRate == 20)
        {
          v12 = "Background";
          goto LABEL_28;
        }

        if (advertiseRate == 30)
        {
          v12 = "Low";
          goto LABEL_28;
        }
      }

      else
      {
        if (advertiseRate == 10)
        {
          v12 = "Periodic";
          goto LABEL_28;
        }

        if (advertiseRate == 15)
        {
          v12 = "PeriodicHigh";
          goto LABEL_28;
        }
      }
    }

    else if (advertiseRate <= 44)
    {
      if (advertiseRate == 40)
      {
        v12 = "Medium";
        goto LABEL_28;
      }

      if (advertiseRate == 42)
      {
        v12 = "MediumMid";
        goto LABEL_28;
      }
    }

    else
    {
      switch(advertiseRate)
      {
        case '-':
          v12 = "MediumHigh";
          goto LABEL_28;
        case '2':
          v12 = "High";
          goto LABEL_28;
        case '<':
          v12 = "Max";
LABEL_28:
          NSAppendPrintF_safe(&v81, ", AR %s", v12);
          v13 = v81;

          v4 = v13;
          goto LABEL_29;
      }
    }

    v12 = "?";
    goto LABEL_28;
  }

LABEL_29:
  if (self->_enableEPAForLEAdvertisement)
  {
    v80 = v4;
    NSAppendPrintF_safe(&v80, ", naEE %d", 1);
    v14 = v80;

    v4 = v14;
  }

  scanRate = self->_scanRate;
  if (scanRate)
  {
    v79 = v4;
    if (scanRate <= 34)
    {
      switch(scanRate)
      {
        case 10:
          v16 = "Periodic";
          goto LABEL_49;
        case 20:
          v16 = "Background";
          goto LABEL_49;
        case 30:
          v16 = "Low";
          goto LABEL_49;
      }
    }

    else if (scanRate > 49)
    {
      if (scanRate == 50)
      {
        v16 = "High";
        goto LABEL_49;
      }

      if (scanRate == 60)
      {
        v16 = "Max";
        goto LABEL_49;
      }
    }

    else
    {
      if (scanRate == 35)
      {
        v16 = "MediumLow";
        goto LABEL_49;
      }

      if (scanRate == 40)
      {
        v16 = "Medium";
LABEL_49:
        NSAppendPrintF_safe(&v79, ", SR %s", v16);
        v17 = v79;

        v4 = v17;
        goto LABEL_50;
      }
    }

    v16 = "?";
    goto LABEL_49;
  }

LABEL_50:
  scanRateScreenOff = self->_scanRateScreenOff;
  if (!scanRateScreenOff)
  {
    goto LABEL_69;
  }

  v78 = v4;
  if (scanRateScreenOff <= 34)
  {
    switch(scanRateScreenOff)
    {
      case 10:
        v19 = "Periodic";
        goto LABEL_68;
      case 20:
        v19 = "Background";
        goto LABEL_68;
      case 30:
        v19 = "Low";
        goto LABEL_68;
    }

LABEL_64:
    v19 = "?";
    goto LABEL_68;
  }

  if (scanRateScreenOff > 49)
  {
    if (scanRateScreenOff == 50)
    {
      v19 = "High";
      goto LABEL_68;
    }

    if (scanRateScreenOff == 60)
    {
      v19 = "Max";
      goto LABEL_68;
    }

    goto LABEL_64;
  }

  if (scanRateScreenOff == 35)
  {
    v19 = "MediumLow";
    goto LABEL_68;
  }

  if (scanRateScreenOff != 40)
  {
    goto LABEL_64;
  }

  v19 = "Medium";
LABEL_68:
  NSAppendPrintF_safe(&v78, ", SRSO %s", v19);
  v20 = v78;

  v4 = v20;
LABEL_69:
  scanRateOverride = self->_scanRateOverride;
  if (!scanRateOverride)
  {
    goto LABEL_88;
  }

  v77 = v4;
  if (scanRateOverride <= 34)
  {
    switch(scanRateOverride)
    {
      case 10:
        v22 = "Periodic";
        goto LABEL_87;
      case 20:
        v22 = "Background";
        goto LABEL_87;
      case 30:
        v22 = "Low";
        goto LABEL_87;
    }

LABEL_83:
    v22 = "?";
    goto LABEL_87;
  }

  if (scanRateOverride > 49)
  {
    if (scanRateOverride == 50)
    {
      v22 = "High";
      goto LABEL_87;
    }

    if (scanRateOverride == 60)
    {
      v22 = "Max";
      goto LABEL_87;
    }

    goto LABEL_83;
  }

  if (scanRateOverride == 35)
  {
    v22 = "MediumLow";
    goto LABEL_87;
  }

  if (scanRateOverride != 40)
  {
    goto LABEL_83;
  }

  v22 = "Medium";
LABEL_87:
  NSAppendPrintF_safe(&v77, ", SRO %s", v22);
  v23 = v77;

  v4 = v23;
LABEL_88:
  bleRSSIThresholdHint = self->_bleRSSIThresholdHint;
  if (self->_bleRSSIThresholdHint)
  {
    v76 = v4;
    NSAppendPrintF_safe(&v76, ", RSSI %d", bleRSSIThresholdHint);
    v25 = v76;

    v4 = v25;
  }

  if (self->_bleRSSIThresholdOrder)
  {
    v75 = v4;
    v26 = CUPrintFlags32();
    NSAppendPrintF_safe(&v75, ", RSSI Order %@", v26);
    v27 = v75;

    v4 = v27;
  }

  identifierData = self->_identifierData;
  if (identifierData)
  {
    v74 = v4;
    v29 = identifierData;
    NSAppendPrintF_safe(&v74, ", ID <%@>", v29);
    v30 = v74;

    v4 = v30;
  }

  irkData = self->_irkData;
  if (irkData)
  {
    v73 = v4;
    v32 = irkData;
    v33 = CUPrintNSObjectMasked();
    NSAppendPrintF_safe(&v73, ", IRK %@", v33);
    v34 = v73;

    v4 = v34;
  }

  tokenData = self->_tokenData;
  if (tokenData)
  {
    v72 = v4;
    v36 = tokenData;
    v37 = CUPrintNSObjectMasked();
    NSAppendPrintF_safe(&v72, ", TD %@", v37);
    v38 = v72;

    v4 = v38;
  }

  uwbConfigData = [(CBSpatialInteractionSession *)self uwbConfigData];
  if (uwbConfigData)
  {
    v71 = v4;
    v40 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v71, ", UC <%@>", v40);
    v41 = v71;

    v4 = v41;
  }

  presenceConfigData = [(CBSpatialInteractionSession *)self presenceConfigData];
  if (presenceConfigData)
  {
    v70 = v4;
    v43 = CUPrintNSDataHex();
    NSAppendPrintF_safe(&v70, ", PC <%@>", v43);
    v44 = v70;

    v4 = v44;
  }

  uwbTokenFlags = self->_uwbTokenFlags;
  if (uwbTokenFlags)
  {
    v69 = v4;
    NSAppendPrintF_safe(&v69, ", UTF 0x%X", uwbTokenFlags);
    v46 = v69;

    v4 = v46;
  }

  if (self->_systemOverrideFlags)
  {
    v68 = v4;
    v47 = CUPrintFlags32();
    NSAppendPrintF_safe(&v68, ", SyO %@", v47);
    v48 = v68;

    v4 = v48;
  }

  deviceMap = self->_deviceMap;
  if (deviceMap)
  {
    v67 = v4;
    v50 = deviceMap;
    NSAppendPrintF_safe(&v67, ", Devices %d", [(NSMutableDictionary *)v50 count]);
    v51 = v67;

    v4 = v51;
  }

  clientIrkData = self->_clientIrkData;
  if (clientIrkData)
  {
    v66 = v4;
    v53 = clientIrkData;
    v54 = CUPrintNSObjectMasked();
    NSAppendPrintF_safe(&v66, ", CIRK %@", v54);
    v55 = v66;

    v4 = v55;
  }

  clientIdentifierData = self->_clientIdentifierData;
  if (clientIdentifierData)
  {
    v65 = v4;
    v57 = clientIdentifierData;
    v58 = CUPrintNSObjectMasked();
    NSAppendPrintF_safe(&v65, ", CID %@", v58);
    v59 = v65;

    v4 = v59;
  }

  filter = self->_filter;
  if (filter)
  {
    v64 = v4;
    v61 = filter;
    NSAppendPrintF_safe(&v64, ", %@", v61);
    v62 = v64;

    v4 = v62;
  }

  return v4;
}

- (BOOL)matchesWithDevice:(id)device
{
  deviceFlags = [device deviceFlags];
  controlFlags = self->_controlFlags;
  if ((deviceFlags & 0x100) != 0 && (controlFlags & 0x40) != 0)
  {
    LOBYTE(v6) = 1;
  }

  else if ((deviceFlags & 0x400) != 0 && (controlFlags & 0x100) != 0)
  {
    LOBYTE(v6) = 1;
  }

  else if ((deviceFlags & 0x80) != 0 && (controlFlags & 0x20) != 0)
  {
    LOBYTE(v6) = 1;
  }

  else if ((deviceFlags & 0x200) != 0 && (controlFlags & 0x80) != 0)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    return (deviceFlags >> 11) & ((self->_controlFlags & 0x200) >> 9);
  }

  return v6;
}

- (BOOL)updateWithSession:(id)session
{
  sessionCopy = session;
  v72 = 8;
  advertiseRate = [sessionCopy advertiseRate];
  advertiseRate = self->_advertiseRate;
  v7 = advertiseRate != advertiseRate;
  if (advertiseRate != advertiseRate)
  {
    v71 = 0;
    if (advertiseRate > 39)
    {
      if (advertiseRate <= 44)
      {
        if (advertiseRate == 40)
        {
          v8 = "Medium";
          advertiseRate2 = [sessionCopy advertiseRate];
          if (advertiseRate2 <= 39)
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (advertiseRate != 42)
          {
            goto LABEL_47;
          }

          v8 = "MediumMid";
          advertiseRate2 = [sessionCopy advertiseRate];
          if (advertiseRate2 <= 39)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        switch(advertiseRate)
        {
          case '-':
            v8 = "MediumHigh";
            advertiseRate2 = [sessionCopy advertiseRate];
            if (advertiseRate2 <= 39)
            {
              goto LABEL_36;
            }

            break;
          case '2':
            v8 = "High";
            advertiseRate2 = [sessionCopy advertiseRate];
            if (advertiseRate2 > 39)
            {
              break;
            }

            goto LABEL_36;
          case '<':
            v8 = "Max";
            advertiseRate2 = [sessionCopy advertiseRate];
            if (advertiseRate2 <= 39)
            {
              goto LABEL_36;
            }

            break;
          default:
            goto LABEL_47;
        }
      }
    }

    else if (advertiseRate <= 14)
    {
      if (advertiseRate)
      {
        if (advertiseRate != 10)
        {
          goto LABEL_47;
        }

        v8 = "Periodic";
        advertiseRate2 = [sessionCopy advertiseRate];
        if (advertiseRate2 <= 39)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v8 = "Default";
        advertiseRate2 = [sessionCopy advertiseRate];
        if (advertiseRate2 <= 39)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      switch(advertiseRate)
      {
        case 15:
          v8 = "PeriodicHigh";
          advertiseRate2 = [sessionCopy advertiseRate];
          if (advertiseRate2 <= 39)
          {
            goto LABEL_36;
          }

          break;
        case 20:
          v8 = "Background";
          advertiseRate2 = [sessionCopy advertiseRate];
          if (advertiseRate2 <= 39)
          {
            goto LABEL_36;
          }

          break;
        case 30:
          v8 = "Low";
          advertiseRate2 = [sessionCopy advertiseRate];
          if (advertiseRate2 > 39)
          {
            break;
          }

LABEL_36:
          if (advertiseRate2 <= 14)
          {
            if (!advertiseRate2)
            {
              v11 = "Default";
              goto LABEL_60;
            }

            if (advertiseRate2 == 10)
            {
              v11 = "Periodic";
              goto LABEL_60;
            }
          }

          else
          {
            switch(advertiseRate2)
            {
              case 15:
                v11 = "PeriodicHigh";
                goto LABEL_60;
              case 20:
                v11 = "Background";
                goto LABEL_60;
              case 30:
                v11 = "Low";
                goto LABEL_60;
            }
          }

          goto LABEL_59;
        default:
LABEL_47:
          v8 = "?";
          advertiseRate2 = [sessionCopy advertiseRate];
          if (advertiseRate2 > 39)
          {
            break;
          }

          goto LABEL_36;
      }
    }

    if (advertiseRate2 <= 44)
    {
      if (advertiseRate2 == 40)
      {
        v11 = "Medium";
        goto LABEL_60;
      }

      if (advertiseRate2 == 42)
      {
        v11 = "MediumMid";
        goto LABEL_60;
      }
    }

    else
    {
      switch(advertiseRate2)
      {
        case '-':
          v11 = "MediumHigh";
          goto LABEL_60;
        case '2':
          v11 = "High";
          goto LABEL_60;
        case '<':
          v11 = "Max";
          goto LABEL_60;
      }
    }

LABEL_59:
    v11 = "?";
LABEL_60:
    CUAppendF(&v71, &v72, "advertiseRate: %s -> %s", v8, v11);
    v10 = v71;
    self->_advertiseRate = [sessionCopy advertiseRate];
    if ([sessionCopy controlFlags] == self->_controlFlags)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v10 = 0;
  if ([sessionCopy controlFlags] != self->_controlFlags)
  {
LABEL_61:
    v70 = v10;
    v12 = CUPrintFlags32();
    [sessionCopy controlFlags];
    v13 = CUPrintFlags32();
    CUAppendF(&v70, &v72, "controlFlags: %@ -> %@", v12, v13);
    v14 = v70;

    self->_controlFlags = [sessionCopy controlFlags];
    v7 = 1;
    v10 = v14;
  }

LABEL_62:
  bleRSSIThresholdHint = [sessionCopy bleRSSIThresholdHint];
  bleRSSIThresholdHint = self->_bleRSSIThresholdHint;
  if (bleRSSIThresholdHint == self->_bleRSSIThresholdHint)
  {
    if ([sessionCopy bleRSSIThresholdOrder] == self->_bleRSSIThresholdOrder)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  v69 = v10;
  CUAppendF(&v69, &v72, "bleRSSIThresholdHint: %d -> %d", bleRSSIThresholdHint, [sessionCopy bleRSSIThresholdHint]);
  v26 = v69;

  self->_bleRSSIThresholdHint = [sessionCopy bleRSSIThresholdHint];
  v7 = 1;
  v10 = v26;
  if ([sessionCopy bleRSSIThresholdOrder] != self->_bleRSSIThresholdOrder)
  {
LABEL_64:
    v68 = v10;
    v17 = CUPrintFlags32();
    [sessionCopy bleRSSIThresholdOrder];
    v18 = CUPrintFlags32();
    CUAppendF(&v68, &v72, "bleRSSIOrder: %@ -> %@", v17, v18);
    v19 = v68;

    self->_bleRSSIThresholdOrder = [sessionCopy bleRSSIThresholdOrder];
    v7 = 1;
    v10 = v19;
  }

LABEL_65:
  filter = [sessionCopy filter];
  filter = self->_filter;
  v22 = filter;
  v23 = filter;
  if (v22 == v23)
  {

LABEL_74:
    goto LABEL_75;
  }

  if ((v22 != 0) == (v23 == 0))
  {

    goto LABEL_73;
  }

  v24 = v23;
  v25 = [(CBSpatialInteractionFilter *)v22 isEqual:v23];

  if (!v25)
  {
LABEL_73:
    v67 = v10;
    v27 = CUPrintNSObjectOneLine();
    filter2 = [sessionCopy filter];
    v29 = CUPrintNSObjectOneLine();
    CUAppendF(&v67, &v72, "filter: %@ -> %@", v27, v29);
    v30 = v67;

    filter3 = [sessionCopy filter];
    v22 = self->_filter;
    self->_filter = filter3;
    v7 = 1;
    v10 = v30;
    goto LABEL_74;
  }

LABEL_75:
  presenceConfigData = [(CBSpatialInteractionSession *)self presenceConfigData];
  presenceConfigData2 = [sessionCopy presenceConfigData];
  v34 = presenceConfigData;
  v35 = v34;
  if (presenceConfigData2 == v34)
  {
  }

  else
  {
    if ((v34 == 0) != (presenceConfigData2 != 0))
    {
      v36 = [presenceConfigData2 isEqual:v34];

      if (v36)
      {
        scanRate = [sessionCopy scanRate];
        scanRate = self->_scanRate;
        if (scanRate == scanRate)
        {
          goto LABEL_79;
        }

LABEL_85:
        v65 = v10;
        if (scanRate > 34)
        {
          if (scanRate > 49)
          {
            if (scanRate == 50)
            {
              v44 = "High";
              scanRate2 = [sessionCopy scanRate];
              if (scanRate2 > 34)
              {
                goto LABEL_121;
              }

              goto LABEL_111;
            }

            if (scanRate != 60)
            {
              goto LABEL_120;
            }

            v44 = "Max";
            scanRate2 = [sessionCopy scanRate];
            if (scanRate2 <= 34)
            {
              goto LABEL_111;
            }
          }

          else if (scanRate == 35)
          {
            v44 = "MediumLow";
            scanRate2 = [sessionCopy scanRate];
            if (scanRate2 <= 34)
            {
              goto LABEL_111;
            }
          }

          else
          {
            if (scanRate != 40)
            {
              goto LABEL_120;
            }

            v44 = "Medium";
            scanRate2 = [sessionCopy scanRate];
            if (scanRate2 <= 34)
            {
              goto LABEL_111;
            }
          }
        }

        else if (scanRate > 19)
        {
          if (scanRate == 20)
          {
            v44 = "Background";
            scanRate2 = [sessionCopy scanRate];
            if (scanRate2 <= 34)
            {
              goto LABEL_111;
            }
          }

          else
          {
            if (scanRate != 30)
            {
              goto LABEL_120;
            }

            v44 = "Low";
            scanRate2 = [sessionCopy scanRate];
            if (scanRate2 <= 34)
            {
              goto LABEL_111;
            }
          }
        }

        else
        {
          if (scanRate)
          {
            if (scanRate == 10)
            {
              v44 = "Periodic";
              scanRate2 = [sessionCopy scanRate];
              if (scanRate2 > 34)
              {
                goto LABEL_121;
              }

LABEL_111:
              if (scanRate2 > 19)
              {
                if (scanRate2 == 20)
                {
                  v46 = "Background";
                  goto LABEL_131;
                }

                if (scanRate2 == 30)
                {
                  v46 = "Low";
                  goto LABEL_131;
                }
              }

              else
              {
                if (!scanRate2)
                {
                  v46 = "Default";
                  goto LABEL_131;
                }

                if (scanRate2 == 10)
                {
                  v46 = "Periodic";
                  goto LABEL_131;
                }
              }

              goto LABEL_130;
            }

LABEL_120:
            v44 = "?";
            scanRate2 = [sessionCopy scanRate];
            if (scanRate2 > 34)
            {
              goto LABEL_121;
            }

            goto LABEL_111;
          }

          v44 = "Default";
          scanRate2 = [sessionCopy scanRate];
          if (scanRate2 <= 34)
          {
            goto LABEL_111;
          }
        }

LABEL_121:
        if (scanRate2 > 49)
        {
          if (scanRate2 == 50)
          {
            v46 = "High";
            goto LABEL_131;
          }

          if (scanRate2 == 60)
          {
            v46 = "Max";
            goto LABEL_131;
          }
        }

        else
        {
          if (scanRate2 == 35)
          {
            v46 = "MediumLow";
            goto LABEL_131;
          }

          if (scanRate2 == 40)
          {
            v46 = "Medium";
            goto LABEL_131;
          }
        }

LABEL_130:
        v46 = "?";
LABEL_131:
        CUAppendF(&v65, &v72, "scanRate: %s -> %s", v44, v46);
        v47 = v65;

        self->_scanRate = [sessionCopy scanRate];
        v7 = 1;
        v10 = v47;
        scanRateScreenOff = [sessionCopy scanRateScreenOff];
        scanRateScreenOff = self->_scanRateScreenOff;
        if (scanRateScreenOff == scanRateScreenOff)
        {
          goto LABEL_179;
        }

LABEL_132:
        v64 = v10;
        if (scanRateScreenOff > 34)
        {
          if (scanRateScreenOff > 49)
          {
            if (scanRateScreenOff == 50)
            {
              v49 = "High";
              scanRateScreenOff2 = [sessionCopy scanRateScreenOff];
              if (scanRateScreenOff2 > 34)
              {
                goto LABEL_168;
              }

              goto LABEL_158;
            }

            if (scanRateScreenOff != 60)
            {
              goto LABEL_167;
            }

            v49 = "Max";
            scanRateScreenOff2 = [sessionCopy scanRateScreenOff];
            if (scanRateScreenOff2 <= 34)
            {
              goto LABEL_158;
            }
          }

          else if (scanRateScreenOff == 35)
          {
            v49 = "MediumLow";
            scanRateScreenOff2 = [sessionCopy scanRateScreenOff];
            if (scanRateScreenOff2 <= 34)
            {
              goto LABEL_158;
            }
          }

          else
          {
            if (scanRateScreenOff != 40)
            {
              goto LABEL_167;
            }

            v49 = "Medium";
            scanRateScreenOff2 = [sessionCopy scanRateScreenOff];
            if (scanRateScreenOff2 <= 34)
            {
              goto LABEL_158;
            }
          }
        }

        else if (scanRateScreenOff > 19)
        {
          if (scanRateScreenOff == 20)
          {
            v49 = "Background";
            scanRateScreenOff2 = [sessionCopy scanRateScreenOff];
            if (scanRateScreenOff2 <= 34)
            {
              goto LABEL_158;
            }
          }

          else
          {
            if (scanRateScreenOff != 30)
            {
              goto LABEL_167;
            }

            v49 = "Low";
            scanRateScreenOff2 = [sessionCopy scanRateScreenOff];
            if (scanRateScreenOff2 <= 34)
            {
              goto LABEL_158;
            }
          }
        }

        else
        {
          if (scanRateScreenOff)
          {
            if (scanRateScreenOff == 10)
            {
              v49 = "Periodic";
              scanRateScreenOff2 = [sessionCopy scanRateScreenOff];
              if (scanRateScreenOff2 > 34)
              {
                goto LABEL_168;
              }

LABEL_158:
              if (scanRateScreenOff2 > 19)
              {
                if (scanRateScreenOff2 == 20)
                {
                  v51 = "Background";
                }

                else
                {
                  if (scanRateScreenOff2 != 30)
                  {
                    goto LABEL_177;
                  }

                  v51 = "Low";
                }
              }

              else if (scanRateScreenOff2)
              {
                if (scanRateScreenOff2 != 10)
                {
                  goto LABEL_177;
                }

                v51 = "Periodic";
              }

              else
              {
                v51 = "Default";
              }

LABEL_178:
              CUAppendF(&v64, &v72, "scanRateScreenOff: %s -> %s", v49, v51);
              v52 = v64;

              self->_scanRateScreenOff = [sessionCopy scanRateScreenOff];
              v7 = 1;
              v10 = v52;
              goto LABEL_179;
            }

LABEL_167:
            v49 = "?";
            scanRateScreenOff2 = [sessionCopy scanRateScreenOff];
            if (scanRateScreenOff2 > 34)
            {
              goto LABEL_168;
            }

            goto LABEL_158;
          }

          v49 = "Default";
          scanRateScreenOff2 = [sessionCopy scanRateScreenOff];
          if (scanRateScreenOff2 <= 34)
          {
            goto LABEL_158;
          }
        }

LABEL_168:
        if (scanRateScreenOff2 > 49)
        {
          if (scanRateScreenOff2 == 50)
          {
            v51 = "High";
            goto LABEL_178;
          }

          if (scanRateScreenOff2 == 60)
          {
            v51 = "Max";
            goto LABEL_178;
          }
        }

        else
        {
          if (scanRateScreenOff2 == 35)
          {
            v51 = "MediumLow";
            goto LABEL_178;
          }

          if (scanRateScreenOff2 == 40)
          {
            v51 = "Medium";
            goto LABEL_178;
          }
        }

LABEL_177:
        v51 = "?";
        goto LABEL_178;
      }
    }

    else
    {
    }

    v66 = v10;
    presenceConfigData3 = [sessionCopy presenceConfigData];
    CUAppendF(&v66, &v72, "presenceConfigData: %@ -> %@", v35, presenceConfigData3);
    v42 = v66;

    presenceConfigData2 = [sessionCopy presenceConfigData];
    [(CBSpatialInteractionSession *)self setPresenceConfigData:presenceConfigData2];
    v7 = 1;
    v10 = v42;
  }

  scanRate3 = [sessionCopy scanRate];
  scanRate = self->_scanRate;
  if (scanRate3 != scanRate)
  {
    goto LABEL_85;
  }

LABEL_79:
  scanRateScreenOff3 = [sessionCopy scanRateScreenOff];
  scanRateScreenOff = self->_scanRateScreenOff;
  if (scanRateScreenOff3 != scanRateScreenOff)
  {
    goto LABEL_132;
  }

LABEL_179:
  uwbConfigData = [(CBSpatialInteractionSession *)self uwbConfigData];
  uwbConfigData2 = [sessionCopy uwbConfigData];
  v55 = uwbConfigData;
  v56 = v55;
  if (uwbConfigData2 == v55)
  {

    var0 = self->_ucat->var0;
    if (v10)
    {
      goto LABEL_183;
    }

LABEL_190:
    if (var0 <= 10 && (var0 != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_192;
    }

    goto LABEL_196;
  }

  if ((v55 == 0) == (uwbConfigData2 != 0))
  {

LABEL_189:
    v63 = v10;
    uwbConfigData3 = [sessionCopy uwbConfigData];
    CUAppendF(&v63, &v72, "uwbConfigData: %@ -> %@", v56, uwbConfigData3);
    v60 = v63;

    uwbConfigData4 = [sessionCopy uwbConfigData];
    [(CBSpatialInteractionSession *)self setUwbConfigData:uwbConfigData4];
    v7 = 1;
    v10 = v60;

    var0 = self->_ucat->var0;
    if (v60)
    {
      goto LABEL_183;
    }

    goto LABEL_190;
  }

  v57 = [uwbConfigData2 isEqual:v55];

  if ((v57 & 1) == 0)
  {
    goto LABEL_189;
  }

  var0 = self->_ucat->var0;
  if (!v10)
  {
    goto LABEL_190;
  }

LABEL_183:
  if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
LABEL_192:
    LogPrintF_safe();
  }

LABEL_196:

  return v7;
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

- (void)setAdvertiseRate:(int)rate
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__CBSpatialInteractionSession_setAdvertiseRate___block_invoke;
  v3[3] = &unk_1E811D508;
  rateCopy = rate;
  v3[4] = self;
  [(CBSpatialInteractionSession *)self _updateIfNeededWithBlock:v3];
}

BOOL __48__CBSpatialInteractionSession_setAdvertiseRate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  if (v1 != v3)
  {
    *(v2 + 88) = v1;
    v5 = *(a1 + 32);
    if (*(v5 + 24))
    {
      v6 = **(v5 + 64);
      if (v6 <= 30)
      {
        if (v6 != -1 || (v7 = _LogCategory_Initialize(), v5 = *(a1 + 32), v7))
        {
          LogPrintF_safe();
          v5 = *(a1 + 32);
        }
      }
    }

    v8 = *(v5 + 24);
    if (v8)
    {
      v9 = v8;
      dispatch_source_cancel(v9);
      v10 = *(a1 + 32);
      v11 = *(v10 + 24);
      *(v10 + 24) = 0;
    }
  }

  return v1 != v3;
}

- (void)setAdvertiseRate:(int)rate timeout:(double)timeout
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__CBSpatialInteractionSession_setAdvertiseRate_timeout___block_invoke;
  v4[3] = &unk_1E81225A0;
  rateCopy = rate;
  v4[4] = self;
  *&v4[5] = timeout;
  [(CBSpatialInteractionSession *)self _updateIfNeededWithBlock:v4];
}

BOOL __56__CBSpatialInteractionSession_setAdvertiseRate_timeout___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(v2 + 88);
  if (v1 != v3)
  {
    *(v2 + 88) = v1;
    v5 = *(a1 + 32);
    v6 = **(v5 + 64);
    if (v6 <= 30)
    {
      if (v6 != -1 || (v7 = _LogCategory_Initialize(), v5 = *(a1 + 32), v7))
      {
        LogPrintF_safe();
        v5 = *(a1 + 32);
      }
    }

    v8 = *(v5 + 24);
    if (v8)
    {
      v9 = v8;
      dispatch_source_cancel(v9);
      v10 = *(a1 + 32);
      v11 = *(v10 + 24);
      *(v10 + 24) = 0;
    }

    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(*(a1 + 32) + 136));
    v13 = *(a1 + 32);
    v14 = *(v13 + 24);
    *(v13 + 24) = v12;
    v15 = v12;

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __56__CBSpatialInteractionSession_setAdvertiseRate_timeout___block_invoke_2;
    handler[3] = &unk_1E811D130;
    handler[4] = *(a1 + 32);
    dispatch_source_set_event_handler(v15, handler);
    CUDispatchTimerSet();
    dispatch_activate(v15);
  }

  return v1 != v3;
}

uint64_t __56__CBSpatialInteractionSession_setAdvertiseRate_timeout___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2[8];
  if (v3 <= 30)
  {
    if (v3 != -1 || (v4 = _LogCategory_Initialize(), v2 = *(a1 + 32), v4))
    {
      LogPrintF_safe();
      v2 = *(a1 + 32);
    }
  }

  v5 = v2;
  objc_sync_enter(v5);
  v6 = *(*(a1 + 32) + 24);
  if (v6)
  {
    v7 = v6;
    dispatch_source_cancel(v7);
    v8 = *(a1 + 32);
    v9 = *(v8 + 24);
    *(v8 + 24) = 0;
  }

  objc_sync_exit(v5);

  v10 = *(a1 + 32);

  return [v10 setAdvertiseRate:0];
}

- (void)setControlFlags:(unsigned int)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __47__CBSpatialInteractionSession_setControlFlags___block_invoke;
  v3[3] = &unk_1E811D508;
  flagsCopy = flags;
  v3[4] = self;
  [(CBSpatialInteractionSession *)self _updateIfNeededWithBlock:v3];
}

BOOL __47__CBSpatialInteractionSession_setControlFlags___block_invoke(uint64_t a1)
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

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v5 = qword_1EBE51B18;
  v6 = labelCopy;
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v5, [labelCopy UTF8String]);
}

- (void)setScanRate:(int)rate
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__CBSpatialInteractionSession_setScanRate___block_invoke;
  v3[3] = &unk_1E811D508;
  rateCopy = rate;
  v3[4] = self;
  [(CBSpatialInteractionSession *)self _updateIfNeededWithBlock:v3];
}

BOOL __43__CBSpatialInteractionSession_setScanRate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 96);
  if (v1 != v3)
  {
    *(v2 + 96) = v1;
  }

  return v1 != v3;
}

- (void)setScanRateScreenOff:(int)off
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__CBSpatialInteractionSession_setScanRateScreenOff___block_invoke;
  v3[3] = &unk_1E811D508;
  offCopy = off;
  v3[4] = self;
  [(CBSpatialInteractionSession *)self _updateIfNeededWithBlock:v3];
}

BOOL __52__CBSpatialInteractionSession_setScanRateScreenOff___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (v1 != v3)
  {
    *(v2 + 104) = v1;
  }

  return v1 != v3;
}

- (void)setBleRSSIThresholdOrder:(unsigned __int8)order
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__CBSpatialInteractionSession_setBleRSSIThresholdOrder___block_invoke;
  v3[3] = &unk_1E811D530;
  orderCopy = order;
  v3[4] = self;
  [(CBSpatialInteractionSession *)self _updateIfNeededWithBlock:v3];
}

BOOL __56__CBSpatialInteractionSession_setBleRSSIThresholdOrder___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 82);
  if (v1 != v3)
  {
    *(v2 + 82) = v1;
  }

  return v1 != v3;
}

- (void)setFilter:(id)filter
{
  v4 = [filter copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__CBSpatialInteractionSession_setFilter___block_invoke;
  v6[3] = &unk_1E811D558;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(CBSpatialInteractionSession *)self _updateIfNeededWithBlock:v6];
}

BOOL __41__CBSpatialInteractionSession_setFilter___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 280);
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
    v3 = *(v10 + 280);
    *(v10 + 280) = v11;
  }

  return v5;
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
    block[2] = __54__CBSpatialInteractionSession_activateWithCompletion___block_invoke;
    block[3] = &unk_1E811D130;
    block[4] = selfCopy;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(selfCopy);
}

- (void)_activate
{
  if (self->_bluetoothStateChangedHandler)
  {
    self->_internalFlags |= 1u;
  }

  v9 = gCBDaemonServer;
  self->_direct = gCBDaemonServer != 0;
  if (self->_invalidateCalled)
  {
    v17 = CBErrorF(-71148, "Activate after invalidate", v2, v3, v4, v5, v6, v7, v15);
    var0 = self->_ucat->var0;
    if (var0 <= 90 && (var0 != -1 || _LogCategory_Initialize()))
    {
      v16 = CUPrintNSError();
      LogPrintF_safe();
    }

    v11 = MEMORY[0x1C68DF720](self->_activateCompletion);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

    if (v11)
    {
      (v11)[2](v11, v17);
    }

    else
    {
      v13 = MEMORY[0x1C68DF720](self->_errorHandler);
      v14 = v13;
      if (v13)
      {
        (*(v13 + 16))(v13, v17);
      }
    }
  }

  else if (v9)
  {

    [(CBSpatialInteractionSession *)self _activateDirectStart];
  }

  else
  {

    [(CBSpatialInteractionSession *)self _activateXPCStart:0];
  }
}

- (void)_activateDirectStart
{
  var0 = self->_ucat->var0;
  if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
    selfCopy = self;
    LogPrintF_safe();
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__CBSpatialInteractionSession__activateDirectStart__block_invoke;
  v5[3] = &unk_1E811D5F8;
  v5[4] = self;
  [gCBDaemonServer activateCBSpatialInteractionSession:self completion:{v5, selfCopy}];
}

void __51__CBSpatialInteractionSession__activateDirectStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 136);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__CBSpatialInteractionSession__activateDirectStart__block_invoke_2;
  v7[3] = &unk_1E811CF50;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __51__CBSpatialInteractionSession__activateDirectStart__block_invoke_2(uint64_t a1)
{
  v9 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 16));
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = **(*(a1 + 32) + 64);
  if (*(a1 + 40))
  {
    if (v4 <= 90 && (v4 != -1 || _LogCategory_Initialize()))
    {
      v8 = CUPrintNSError();
      LogPrintF_safe();
    }

    if (v9)
    {
      (*(v9 + 16))(v9, *(a1 + 40));
    }

    else
    {
      v5 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 160));
      v6 = v5;
      if (v5)
      {
        (*(v5 + 16))(v5, *(a1 + 40));
      }
    }

    goto LABEL_17;
  }

  if (v4 <= 30 && (v4 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  v7 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, 0);
LABEL_17:
    v7 = v9;
  }
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

  v6 = xpc_dictionary_create(0, 0, 0);
  [(CBSpatialInteractionSession *)self encodeWithXPCObject:v6];
  xpc_dictionary_set_string(v6, "mTyp", "SpIn");
  _ensureXPCStarted = [(CBSpatialInteractionSession *)self _ensureXPCStarted];
  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __49__CBSpatialInteractionSession__activateXPCStart___block_invoke;
  handler[3] = &unk_1E81225C8;
  handler[4] = self;
  startCopy = start;
  xpc_connection_send_message_with_reply(_ensureXPCStarted, v6, dispatchQueue, handler);
}

- (void)_activateXPCCompleted:(id)completed reactivate:(BOOL)reactivate
{
  reactivateCopy = reactivate;
  completedCopy = completed;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__8;
  v44 = __Block_byref_object_dispose__8;
  v45 = 0;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __64__CBSpatialInteractionSession__activateXPCCompleted_reactivate___block_invoke;
  v39[3] = &unk_1E811D378;
  v39[4] = self;
  v39[5] = &v40;
  v7 = MEMORY[0x1C68DF720](v39);
  v8 = CUXPCDecodeNSErrorIfNeeded();
  v9 = v41[5];
  v41[5] = v8;

  if (!v41[5])
  {
    obj = 0;
    CUXPCDecodeNSData();
    CUXPCDecodeNSData();
    objc_storeStrong(&self->_advertisingAddressData, 0);
    self->_bluetoothState = xpc_dictionary_get_int64(completedCopy, "pwrS");
    v10 = v41;
    v37 = v41[5];
    v11 = CUXPCDecodeNSData();
    objc_storeStrong(v10 + 5, v37);
    if (v11)
    {
      v12 = xpc_dictionary_get_array(completedCopy, "devA");
      v13 = v12;
      if (!v12)
      {
        goto LABEL_9;
      }

      v31 = 0;
      v32 = &v31;
      v33 = 0x3032000000;
      v34 = __Block_byref_object_copy__8;
      v35 = __Block_byref_object_dispose__8;
      v36 = 0;
      v25 = 0;
      v26 = &v25;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__8;
      v29 = __Block_byref_object_dispose__8;
      v30 = 0;
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __64__CBSpatialInteractionSession__activateXPCCompleted_reactivate___block_invoke_2;
      applier[3] = &unk_1E81208C8;
      applier[4] = &v25;
      applier[5] = &v31;
      xpc_array_apply(v12, applier);
      v14 = v26[5];
      if (v14)
      {
        v21 = v41;
        v22 = v14;
        selfCopy = v21[5];
        v21[5] = v22;
      }

      else
      {
        selfCopy = self;
        objc_sync_enter(selfCopy);
        objc_storeStrong(&selfCopy->_deviceMap, v32[5]);
        objc_sync_exit(selfCopy);
      }

      _Block_object_dispose(&v25, 8);
      _Block_object_dispose(&v31, 8);

      if (!v14)
      {
LABEL_9:
        var0 = self->_ucat->var0;
        if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
        {
          selfCopy2 = self;
          LogPrintF_safe();
        }

        v17 = MEMORY[0x1C68DF720](self->_activateCompletion);
        activateCompletion = self->_activateCompletion;
        self->_activateCompletion = 0;

        if (v17)
        {
          v17[2](v17, 0);
        }

        if (reactivateCopy)
        {
          v19 = MEMORY[0x1C68DF720](self->_tokenChangedHandler);
          v20 = v19;
          if (v19)
          {
            (*(v19 + 16))(v19);
          }

          [(CBSpatialInteractionSession *)self _reAddTokens];
        }
      }
    }
  }

  v7[2](v7);

  _Block_object_dispose(&v40, 8);
}

void __64__CBSpatialInteractionSession__activateXPCCompleted_reactivate___block_invoke(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = *(a1 + 32);
    v3 = **(v2 + 64);
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
      v7 = MEMORY[0x1C68DF720](*(*(a1 + 32) + 160));
      v8 = v7;
      if (v7)
      {
        (*(v7 + 16))(v7, *(*(*(a1 + 40) + 8) + 40));
      }
    }
  }
}

- (id)_ensureXPCStarted
{
  p_xpcCnx = &self->_xpcCnx;
  v4 = self->_xpcCnx;
  if (v4)
  {
  }

  else
  {
    v6 = self->_testListenerEndpoint;
    v7 = v6;
    if (v6)
    {
      mach_service = xpc_connection_create_from_endpoint(v6);
      xpc_connection_set_target_queue(mach_service, self->_dispatchQueue);
    }

    else
    {
      mach_service = xpc_connection_create_mach_service("com.apple.bluetooth.xpc", self->_dispatchQueue, 0);
    }

    objc_storeStrong(p_xpcCnx, mach_service);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__CBSpatialInteractionSession__ensureXPCStarted__block_invoke;
    v10[3] = &unk_1E811D620;
    v10[4] = self;
    v9 = mach_service;
    v11 = v9;
    xpc_connection_set_event_handler(v9, v10);
    xpc_connection_activate(v9);

    v4 = v9;
  }

  return v4;
}

void *__48__CBSpatialInteractionSession__ensureXPCStarted__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[9] == *(a1 + 40))
  {
    return [result _xpcReceivedEvent:a2];
  }

  return result;
}

- (void)_interrupted
{
  if (!self->_invalidateCalled)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 90 && (var0 != -1 || _LogCategory_Initialize()))
    {
      selfCopy = self;
      LogPrintF_safe();
    }

    [(CBSpatialInteractionSession *)self _lostAllDevices];
    v5 = MEMORY[0x1C68DF720](self->_interruptionHandler);
    v6 = v5;
    if (v5)
    {
      (*(v5 + 16))(v5);
    }

    self->_bluetoothState = 1;
    v7 = MEMORY[0x1C68DF720](self->_bluetoothStateChangedHandler);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 16))(v7);
    }

    [(CBSpatialInteractionSession *)self _activateXPCStart:1];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CBSpatialInteractionSession_invalidate__block_invoke;
  block[3] = &unk_1E811D130;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__41__CBSpatialInteractionSession_invalidate__block_invoke(void *result)
{
  v2 = result[4];
  if ((*(v2 + 49) & 1) == 0)
  {
    v3 = result;
    *(v2 + 49) = 1;
    v4 = result[4];
    v5 = *v4[8];
    if (v5 <= 30)
    {
      if (v5 != -1 || (v6 = _LogCategory_Initialize(), v4 = v3[4], v6))
      {
        LogPrintF_safe();
        v4 = v3[4];
      }
    }

    v7 = v4;
    objc_sync_enter(v7);
    v8 = *(v3[4] + 24);
    if (v8)
    {
      v9 = v8;
      dispatch_source_cancel(v9);
      v10 = v3[4];
      v11 = *(v10 + 24);
      *(v10 + 24) = 0;
    }

    objc_sync_exit(v7);

    v12 = v3[4];
    if (*(v12 + 48) == 1)
    {
      [v12 _invalidateDirect];
      v12 = v3[4];
    }

    v13 = *(v12 + 72);
    if (v13)
    {
      xpc_connection_cancel(v13);
    }

    v14 = v3[4];

    return [v14 _invalidated];
  }

  return result;
}

void __48__CBSpatialInteractionSession__invalidateDirect__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CBSpatialInteractionSession__invalidateDirect__block_invoke_2;
  block[3] = &unk_1E811D130;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_direct && !self->_xpcCnx)
  {
    self->_invalidateCalled = 1;
    advertisingAddressChangedHandler = self->_advertisingAddressChangedHandler;
    self->_advertisingAddressChangedHandler = 0;

    aopDataHandler = self->_aopDataHandler;
    self->_aopDataHandler = 0;

    bluetoothStateChangedHandler = self->_bluetoothStateChangedHandler;
    self->_bluetoothStateChangedHandler = 0;

    deviceFoundHandler = self->_deviceFoundHandler;
    self->_deviceFoundHandler = 0;

    deviceLostHandler = self->_deviceLostHandler;
    self->_deviceLostHandler = 0;

    errorHandler = self->_errorHandler;
    self->_errorHandler = 0;

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v17 = MEMORY[0x1C68DF720](self->_invalidationHandler);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    measurementHandler = self->_measurementHandler;
    self->_measurementHandler = 0;

    systemOverrideHandler = self->_systemOverrideHandler;
    self->_systemOverrideHandler = 0;

    tokenChangedHandler = self->_tokenChangedHandler;
    self->_tokenChangedHandler = 0;

    v15 = v17;
    if (v17)
    {
      (*(v17 + 16))(v17);
      v15 = v17;
    }

    self->_invalidateDone = 1;
    p_var0 = &self->_ucat->var0;
    if (*p_var0 <= 30 && (*p_var0 != -1 || (p_var0 = _LogCategory_Initialize(), v15 = v17, p_var0)))
    {
      p_var0 = LogPrintF_safe();
      v15 = v17;
    }

    MEMORY[0x1EEE66BB8](p_var0, v15);
  }
}

- (void)addPeerToken:(id)token userInfo:(id)info completion:(id)completion
{
  tokenCopy = token;
  infoCopy = info;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __64__CBSpatialInteractionSession_addPeerToken_userInfo_completion___block_invoke;
  v15[3] = &unk_1E811E468;
  v15[4] = self;
  v16 = tokenCopy;
  v17 = infoCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = infoCopy;
  v14 = tokenCopy;
  dispatch_async(dispatchQueue, v15);
}

- (void)addPeerToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CBSpatialInteractionSession_addPeerToken_completion___block_invoke;
  block[3] = &unk_1E811D490;
  block[4] = self;
  v12 = tokenCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = tokenCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_addPeerToken:(id)token userInfo:(id)info completion:(id)completion
{
  tokenCopy = token;
  infoCopy = info;
  completionCopy = completion;
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__8;
  v68 = __Block_byref_object_dispose__8;
  v69 = 0;
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __65__CBSpatialInteractionSession__addPeerToken_userInfo_completion___block_invoke;
  v61[3] = &unk_1E811D350;
  v63 = &v64;
  v61[4] = self;
  v55 = completionCopy;
  v62 = v55;
  v17 = MEMORY[0x1C68DF720](v61);
  v54 = v17;
  if (self->_activateCalled)
  {
    v60 = 0;
    v18 = OPACKDecodeData();
    if (v18)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = objc_alloc_init(CBSpatialInteractionPeerInfoClient);
        [(CBSpatialInteractionPeerInfoClient *)v25 setTokenData:tokenCopy];
        [(CBSpatialInteractionPeerInfoClient *)v25 setUserInfo:infoCopy];
        [(CBSpatialInteractionPeerInfoClient *)v25 setUwbTokenFlags:CFDictionaryGetInt64Ranged()];
        v53 = infoCopy;
        ClientID = CBXPCGetNextClientID();
        v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:ClientID];
        peerMap = self->_peerMap;
        if (!peerMap)
        {
          v29 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v30 = self->_peerMap;
          self->_peerMap = v29;

          peerMap = self->_peerMap;
        }

        [(NSMutableDictionary *)peerMap setObject:v25 forKeyedSubscript:v27];
        var0 = self->_ucat->var0;
        if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
        {
          v51 = CUPrintNSObjectMasked();
          v52 = ClientID;
          LogPrintF_safe();
        }

        v32 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v32, "mTyp", "SpAT");
        if (ClientID)
        {
          xpc_dictionary_set_uint64(v32, "siPI", ClientID);
        }

        if (tokenCopy)
        {
          v33 = tokenCopy;
          v34 = tokenCopy;
          v35 = v32;
          bytes = [v34 bytes];
          v37 = [v34 length];
          if (!bytes)
          {
            bytes = "";
          }

          xpc_dictionary_set_data(v35, "siTD", bytes, v37);
        }

        v38 = [(CBSpatialInteractionSession *)self _ensureXPCStarted:v51];
        dispatchQueue = self->_dispatchQueue;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __65__CBSpatialInteractionSession__addPeerToken_userInfo_completion___block_invoke_131;
        handler[3] = &unk_1E81225F0;
        handler[4] = self;
        v57 = tokenCopy;
        v58 = v27;
        v59 = v55;
        xpc_connection_send_message_with_reply(v38, v32, dispatchQueue, handler);

        infoCopy = v53;
        v17 = v54;
      }

      else
      {
        v50 = CBErrorF(312900, "Non-dict token", v19, v20, v21, v22, v23, v24, v51);
        v25 = v65[5];
        v65[5] = v50;
      }
    }

    else
    {
      v25 = CUPrintErrorCode();
      v48 = CBErrorF(312900, "Decode token failed: %@", v42, v43, v44, v45, v46, v47, v25);
      v49 = v65[5];
      v65[5] = v48;
    }
  }

  else
  {
    v40 = CBErrorF(-6745, "Not activated", v11, v12, v13, v14, v15, v16, v51);
    v41 = v65[5];
    v65[5] = v40;
  }

  v17[2](v17);

  _Block_object_dispose(&v64, 8);
}

void *__65__CBSpatialInteractionSession__addPeerToken_userInfo_completion___block_invoke(void *result)
{
  if (*(*(result[6] + 8) + 40))
  {
    v1 = **(result[4] + 64);
    if (v1 <= 90)
    {
      v2 = result;
      if (v1 != -1 || (v3 = _LogCategory_Initialize(), result = v2, v3))
      {
        v5 = CUPrintNSError();
        LogPrintF_safe();

        result = v2;
      }
    }

    v4 = *(result[5] + 16);

    return v4();
  }

  return result;
}

void __65__CBSpatialInteractionSession__addPeerToken_userInfo_completion___block_invoke_131(void *a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  v4 = a1[4];
  v5 = **(v4 + 64);
  v11 = v3;
  if (v3)
  {
    if (v5 <= 90)
    {
      if (v5 != -1 || (v7 = _LogCategory_Initialize(), v4 = a1[4], v7))
      {
        v6 = CUPrintNSObjectMasked();
        CUPrintNSError();
        v10 = v8 = v6;
        LogPrintF_safe();

        v4 = a1[4];
      }
    }

    [*(v4 + 56) setObject:0 forKeyedSubscript:{a1[6], v8, v10}];
    (*(a1[7] + 16))(a1[7]);
  }

  else
  {
    if (v5 <= 30 && (v5 != -1 || _LogCategory_Initialize()))
    {
      v9 = CUPrintNSObjectMasked();
      LogPrintF_safe();
    }

    (*(a1[7] + 16))(a1[7]);
  }
}

- (void)_reAddTokens
{
  peerMap = self->_peerMap;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__CBSpatialInteractionSession__reAddTokens__block_invoke;
  v3[3] = &unk_1E8122618;
  v3[4] = self;
  [(NSMutableDictionary *)peerMap enumerateKeysAndObjectsUsingBlock:v3];
}

void __43__CBSpatialInteractionSession__reAddTokens__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 unsignedIntValue];
  v7 = [v5 tokenData];

  v8 = **(*(a1 + 32) + 64);
  if (v8 <= 30 && (v8 != -1 || _LogCategory_Initialize()))
  {
    v19 = CUPrintNSObjectMasked();
    v20 = v6;
    LogPrintF_safe();
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v9, "mTyp", "SpAT");
  if (v6)
  {
    xpc_dictionary_set_uint64(v9, "siPI", v6);
  }

  if (v7)
  {
    v10 = v7;
    v11 = v9;
    v12 = v7;
    v13 = [v12 bytes];
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = "";
    }

    v15 = [v12 length];

    xpc_dictionary_set_data(v11, "siTD", v14, v15);
  }

  v16 = [*(a1 + 32) _ensureXPCStarted];
  v17 = *(a1 + 32);
  v18 = *(v17 + 136);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __43__CBSpatialInteractionSession__reAddTokens__block_invoke_2;
  handler[3] = &unk_1E811D620;
  handler[4] = v17;
  handler[5] = v7;
  xpc_connection_send_message_with_reply(v16, v9, v18, handler);
}

uint64_t __43__CBSpatialInteractionSession__reAddTokens__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  v4 = v3;
  if (v3)
  {
    v5 = 90;
  }

  else
  {
    v5 = 30;
  }

  v6 = **(*(a1 + 32) + 64);
  if (v5 >= v6 && ((v10 = v3, v6 != -1) || (v3 = _LogCategory_Initialize(), v4 = v10, v3)))
  {
    v7 = CUPrintNSObjectMasked();
    v9 = CUPrintNSError();
    LogPrintF_safe();

    v4 = v10;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)removePeerToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__CBSpatialInteractionSession_removePeerToken_completion___block_invoke;
  block[3] = &unk_1E811D490;
  block[4] = self;
  v12 = tokenCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = tokenCopy;
  dispatch_async(dispatchQueue, block);
}

void __58__CBSpatialInteractionSession_removePeerToken_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v62 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  if (*(v9 + 8))
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v10 = [*(v9 + 56) allKeys];
    v11 = [v10 countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v58;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v58 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v57 + 1) + 8 * v14);
        v16 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:v15];
        v17 = [v16 tokenData];
        v18 = *(a1 + 40);
        v19 = v17;
        v20 = v18;
        v21 = v20;
        if (v19 == v20)
        {
          break;
        }

        if ((v19 != 0) != (v20 == 0))
        {
          v22 = [v19 isEqual:v20];

          if (v22)
          {
            goto LABEL_19;
          }
        }

        else
        {
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v57 objects:v61 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          goto LABEL_14;
        }
      }

LABEL_19:
      [*(*(a1 + 32) + 56) setObject:0 forKeyedSubscript:v15];
      v32 = v15;

      if (!v32)
      {
        goto LABEL_23;
      }

      v33 = **(*(a1 + 32) + 64);
      if (v33 <= 30 && (v33 != -1 || _LogCategory_Initialize()))
      {
        v49 = CUPrintNSObjectMasked();
        v50 = [v32 unsignedIntValue];
        LogPrintF_safe();
      }

      v37 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v37, "mTyp", "SpRT");
      v38 = *(a1 + 40);
      if (v38)
      {
        v39 = v38;
        v40 = v37;
        v41 = v38;
        v42 = [v41 bytes];
        if (v42)
        {
          v43 = v42;
        }

        else
        {
          v43 = "";
        }

        v44 = [v41 length];

        xpc_dictionary_set_data(v40, "siTD", v43, v44);
      }

      v45 = [*(a1 + 32) _ensureXPCStarted];
      v47 = *(a1 + 32);
      v46 = *(a1 + 40);
      v48 = *(v47 + 136);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __58__CBSpatialInteractionSession_removePeerToken_completion___block_invoke_2;
      handler[3] = &unk_1E8122640;
      handler[4] = v47;
      v55 = v46;
      v56 = *(a1 + 48);
      xpc_connection_send_message_with_reply(v45, v37, v48, handler);
    }

    else
    {
LABEL_14:

LABEL_23:
      v32 = CBErrorF(-6727, "Token not found", v23, v24, v25, v26, v27, v28, v49);
      v34 = **(*(a1 + 32) + 64);
      if (v34 <= 90 && (v34 != -1 || _LogCategory_Initialize()))
      {
        v35 = CUPrintNSObjectMasked();
        v52 = CUPrintNSError();
        LogPrintF_safe();
      }

      (*(*(a1 + 48) + 16))(*(a1 + 48), v32);
    }
  }

  else
  {
    v29 = CBErrorF(-6745, "Not activated", a3, a4, a5, a6, a7, a8, v49);
    v30 = **(*(a1 + 32) + 64);
    v53 = v29;
    if (v30 <= 90)
    {
      if (v30 != -1 || (v36 = _LogCategory_Initialize(), v29 = v53, v36))
      {
        v31 = CUPrintNSObjectMasked();
        v51 = CUPrintNSError();
        LogPrintF_safe();

        v29 = v53;
      }
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v29);
  }
}

void __58__CBSpatialInteractionSession_removePeerToken_completion___block_invoke_2(void *a1, uint64_t a2)
{
  v3 = CUXPCDecodeNSErrorIfNeeded();
  v4 = **(a1[4] + 64);
  v10 = v3;
  if (v3)
  {
    v5 = v3;
    if (v4 <= 90)
    {
      if (v4 != -1 || (v7 = _LogCategory_Initialize(), v5 = v10, v7))
      {
        v6 = CUPrintNSObjectMasked();
        v9 = CUPrintNSError();
        LogPrintF_safe();

        v5 = v10;
      }
    }

    (*(a1[6] + 16))(a1[6], v5);
  }

  else
  {
    if (v4 <= 30 && (v4 != -1 || _LogCategory_Initialize()))
    {
      v8 = CUPrintNSObjectMasked();
      LogPrintF_safe();
    }

    (*(a1[6] + 16))(a1[6], 0);
  }
}

- (void)_lostAllDevices
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1C68DF720](self->_deviceLostHandler, a2);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deviceMap = selfCopy->_deviceMap;
  if (v3)
  {
    allValues = [(NSMutableDictionary *)deviceMap allValues];
    [(NSMutableDictionary *)selfCopy->_deviceMap removeAllObjects];
    objc_sync_exit(selfCopy);

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = allValues;
    v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v8)
    {
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v3[2](v3, *(*(&v11 + 1) + 8 * v10++));
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }

  else
  {
    [(NSMutableDictionary *)deviceMap removeAllObjects];
    objc_sync_exit(selfCopy);
  }
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
    block[2] = __56__CBSpatialInteractionSession__updateIfNeededWithBlock___block_invoke;
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

      xdict = xpc_dictionary_create(0, 0, 0);
      [(CBSpatialInteractionSession *)selfCopy encodeWithXPCObject:xdict];
      xpc_dictionary_set_string(xdict, "mTyp", "SpIU");
      _ensureXPCStarted = [(CBSpatialInteractionSession *)selfCopy _ensureXPCStarted];
      xpc_connection_send_message(_ensureXPCStarted, xdict);
    }

    else if (var0 <= 10 && (var0 != -1 || _LogCategory_Initialize()))
    {

      LogPrintF_safe();
    }
  }
}

- (void)_xpcReceivedEvent:(id)event
{
  eventCopy = event;
  var0 = self->_ucat->var0;
  v24 = eventCopy;
  if (var0 <= 9)
  {
    if (var0 != -1 || (v6 = _LogCategory_Initialize(), eventCopy = v24, v6))
    {
      v22 = CUPrintXPC();
      LogPrintF_safe();

      eventCopy = v24;
    }
  }

  if (MEMORY[0x1C68DFDD0](eventCopy) == MEMORY[0x1E69E9E80])
  {
    [(CBSpatialInteractionSession *)self _xpcReceivedMessage:v24];
    goto LABEL_26;
  }

  if (v24 == MEMORY[0x1E69E9E18])
  {
    [(CBSpatialInteractionSession *)self _interrupted];
    goto LABEL_26;
  }

  if (v24 != MEMORY[0x1E69E9E20])
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
      v15 = CBErrorF(-6700, "XPC event error", v8, v9, v10, v11, v12, v13, v22);

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
      v23 = CUPrintXPC();
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

  xpcCnx = self->_xpcCnx;
  self->_xpcCnx = 0;

  [(CBSpatialInteractionSession *)self _invalidated];
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
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v5 = string;
  if (!strcmp(string, "DvFo"))
  {
    [(CBSpatialInteractionSession *)self _xpcReceivedDeviceFound:messageCopy];
    v8 = messageCopy;
  }

  else if (!strcmp(v5, "DvLo"))
  {
    [(CBSpatialInteractionSession *)self _xpcReceivedDeviceLost:messageCopy];
    v8 = messageCopy;
  }

  else if (!strcmp(v5, "AdAC"))
  {
    [(CBSpatialInteractionSession *)self _xpcReceivedAdvertisingAddressChanged:messageCopy];
    v8 = messageCopy;
  }

  else if (!strcmp(v5, "PwrC"))
  {
    [(CBSpatialInteractionSession *)self _xpcReceivedPowerStateChanged:messageCopy];
    v8 = messageCopy;
  }

  else if (!strcmp(v5, "SpAD"))
  {
    [(CBSpatialInteractionSession *)self _xpcReceivedAOPData:messageCopy];
    v8 = messageCopy;
  }

  else
  {
    if (strcmp(v5, "SyOC"))
    {
      v6 = self->_ucat->var0;
      if (v6 <= 90 && (v6 != -1 || _LogCategory_Initialize()))
      {
LABEL_13:
        LogPrintF_safe();
      }

LABEL_14:
      v8 = messageCopy;

      goto LABEL_16;
    }

    [(CBSpatialInteractionSession *)self _xpcReceivedSystemOverrideChanged:messageCopy];
    v8 = messageCopy;
  }

LABEL_16:
}

- (void)_xpcReceivedAdvertisingAddressChanged:(id)changed
{
  changedCopy = changed;
  CUXPCDecodeBool();
  CUXPCDecodeNSData();

  var0 = self->_ucat->var0;
  if (var0 <= 30 && (var0 != -1 || _LogCategory_Initialize()))
  {
    v8 = CUPrintNSDataAddress();
    LogPrintF_safe();
  }

  objc_storeStrong(&self->_advertisingAddressData, 0);
  v6 = MEMORY[0x1C68DF720](self->_advertisingAddressChangedHandler);
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6);
  }
}

- (void)_xpcReceivedAOPData:(id)data
{
  dataCopy = data;
  if (MEMORY[0x1C68DFDD0]() == MEMORY[0x1E69E9E80])
  {
    CUXPCDecodeNSData();
    v5 = 0;
    if (([CBSpatialInteractionSession _xpcReceivedAOPData:]& 1) == 0)
    {
    }
  }

  else
  {
    [CBSpatialInteractionSession _xpcReceivedAOPData:?];
  }
}

- (void)_xpcReceivedDeviceFound:(id)found
{
  foundCopy = found;
  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    [CBSpatialInteractionSession _xpcReceivedDeviceFound:?];
    goto LABEL_19;
  }

  v20[0] = 0;
  v5 = [[CBDevice alloc] initWithXPCObject:foundCopy error:v20];
  v6 = v20[0];
  if (v5)
  {
    peerMap = self->_peerMap;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CBDevice spatialInteractionPeerID](v5, "spatialInteractionPeerID")}];
    v9 = [(NSMutableDictionary *)peerMap objectForKeyedSubscript:v8];

    tokenData = [v9 tokenData];
    if (tokenData || [(CBSpatialInteractionSession *)self matchesWithDevice:v5])
    {
      [(CBDevice *)v5 setSpatialInteractionTokenData:tokenData];
      userInfo = [v9 userInfo];
      [(CBDevice *)v5 setSpatialInteractionUserInfo:userInfo];

      -[CBDevice setSpatialInteractionUWBTokenFlags:](v5, "setSpatialInteractionUWBTokenFlags:", [v9 uwbTokenFlags]);
      identifier = [(CBDevice *)v5 identifier];
      if (identifier)
      {
        selfCopy = self;
        objc_sync_enter(selfCopy);
        deviceMap = selfCopy->_deviceMap;
        if (!deviceMap)
        {
          v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v16 = selfCopy->_deviceMap;
          selfCopy->_deviceMap = v15;

          deviceMap = selfCopy->_deviceMap;
        }

        [(NSMutableDictionary *)deviceMap setObject:v5 forKeyedSubscript:identifier];
        objc_sync_exit(selfCopy);

        var0 = selfCopy->_ucat->var0;
        if (var0 <= 9 && (var0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        v18 = MEMORY[0x1C68DF720](selfCopy->_deviceFoundHandler);
        v19 = v18;
        if (v18)
        {
          (*(v18 + 16))(v18, v5);
        }
      }

      else
      {
        [CBSpatialInteractionSession _xpcReceivedDeviceFound:?];
      }
    }

    else
    {
      [CBSpatialInteractionSession _xpcReceivedDeviceFound:?];
    }
  }

  else
  {
    if (([CBSpatialInteractionSession _xpcReceivedDeviceFound:]& 1) != 0)
    {
      goto LABEL_18;
    }

    v9 = v20[1];
  }

LABEL_18:
LABEL_19:
}

- (void)_xpcReceivedDeviceLost:(id)lost
{
  lostCopy = lost;
  if (MEMORY[0x1C68DFDD0]() != MEMORY[0x1E69E9E80])
  {
    [CBSpatialInteractionSession _xpcReceivedDeviceLost:?];
    goto LABEL_15;
  }

  v13 = 0;
  v5 = [[CBDevice alloc] initWithXPCObject:lostCopy error:&v13];
  v6 = v13;
  if (v5)
  {
    identifier = [(CBDevice *)v5 identifier];
    if (identifier)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v9 = [(NSMutableDictionary *)selfCopy->_deviceMap objectForKeyedSubscript:identifier];
      [(NSMutableDictionary *)selfCopy->_deviceMap setObject:0 forKeyedSubscript:identifier];
      objc_sync_exit(selfCopy);

      var0 = selfCopy->_ucat->var0;
      if (v9)
      {
        if (var0 <= 9 && (var0 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF_safe();
        }

        v11 = MEMORY[0x1C68DF720](selfCopy->_deviceLostHandler);
        v12 = v11;
        if (v11)
        {
          (*(v11 + 16))(v11, v9);
        }
      }

      else
      {
        [(CBSpatialInteractionSession *)var0 _xpcReceivedDeviceLost:&selfCopy->_ucat];
      }
    }

    else
    {
      [(CBSpatialInteractionSession *)self _xpcReceivedDeviceLost:v5, 0, &v14];
      identifier = v14;
    }
  }

  else
  {
    if (([CBSpatialInteractionSession _xpcReceivedDeviceLost:]& 1) != 0)
    {
      goto LABEL_14;
    }

    identifier = v14;
  }

LABEL_14:
LABEL_15:
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
    [CBSpatialInteractionSession _xpcReceivedPowerStateChanged:?];
    v6 = xdict;
  }
}

- (void)_xpcReceivedSystemOverrideChanged:(id)changed
{
  xdict = changed;
  if (MEMORY[0x1C68DFDD0]() == MEMORY[0x1E69E9E80])
  {
    self->_scanRateOverride = xpc_dictionary_get_int64(xdict, "scRO");
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
    [CBSpatialInteractionSession _xpcReceivedSystemOverrideChanged:?];
    v6 = xdict;
  }
}

- (CBSpatialInteractionSession)initWithXPCObject:(id)object error:(id *)error
{
  objectCopy = object;
  v13 = [(CBSpatialInteractionSession *)self init];
  if (!v13)
  {
    if (!error)
    {
      goto LABEL_44;
    }

    v50 = "init failed";
LABEL_43:
    CBErrorF(-6756, v50, v7, v8, v9, v10, v11, v12, v51);
    *error = v48 = 0;
    goto LABEL_38;
  }

  v14 = MEMORY[0x1C68DFDD0](objectCopy);
  if (v14 != MEMORY[0x1E69E9E80])
  {
    if (!error)
    {
      goto LABEL_44;
    }

    v50 = "XPC non-dict";
    goto LABEL_43;
  }

  v15 = OUTLINED_FUNCTION_3_10(v14, "advR", v7);
  if (v15 == 6)
  {
    v13->_advertiseRate = 0;
  }

  else if (v15 == 5)
  {
    goto LABEL_44;
  }

  v16 = OUTLINED_FUNCTION_0();
  v21 = OUTLINED_FUNCTION_5(v16, v17, v18, v19, v20);
  if (v21 == 6)
  {
    v13->_clientID = 0;
  }

  else if (v21 == 5)
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeBool())
  {
    goto LABEL_44;
  }

  v22 = OUTLINED_FUNCTION_0();
  v27 = OUTLINED_FUNCTION_5(v22, v23, v24, v25, v26);
  if (v27 == 6)
  {
    v13->_internalFlags = 0;
  }

  else if (v27 == 5)
  {
    goto LABEL_44;
  }

  v29 = OUTLINED_FUNCTION_3_10(v27, "scnR", v28);
  if (v29 == 6)
  {
    v13->_scanRate = 0;
  }

  else if (v29 == 5)
  {
    goto LABEL_44;
  }

  v31 = OUTLINED_FUNCTION_3_10(v29, "scRO", v30);
  if (v31 == 6)
  {
    v13->_scanRateOverride = 0;
  }

  else if (v31 == 5)
  {
    goto LABEL_44;
  }

  v33 = OUTLINED_FUNCTION_3_10(v31, "scRS", v32);
  if (v33 == 6)
  {
    v13->_scanRateScreenOff = 0;
  }

  else if (v33 == 5)
  {
    goto LABEL_44;
  }

  v34 = CUXPCDecodeSInt64RangedEx();
  if (v34 == 6)
  {
    v13->_bleRSSIThresholdHint = 0;
  }

  else if (v34 == 5)
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_0();
  v35 = CUXPCDecodeUInt64RangedEx();
  if (v35 == 6)
  {
    v13->_bleRSSIThresholdOrder = 0;
  }

  else if (v35 == 5)
  {
    goto LABEL_44;
  }

  v36 = OUTLINED_FUNCTION_0();
  v41 = OUTLINED_FUNCTION_5(v36, v37, v38, v39, v40);
  if (v41 == 6)
  {
    v13->_controlFlags = 0;
  }

  else if (v41 == 5)
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_1_0();
  if (!CUXPCDecodeNSData())
  {
    goto LABEL_44;
  }

  v42 = OUTLINED_FUNCTION_0();
  v47 = OUTLINED_FUNCTION_5(v42, v43, v44, v45, v46);
  if (v47 == 6)
  {
    v13->_uwbTokenFlags = 0;
    goto LABEL_36;
  }

  if (v47 == 5)
  {
LABEL_44:
    v48 = 0;
    goto LABEL_38;
  }

LABEL_36:
  CUXPCDecodeNSDataOfLength();
  CUXPCDecodeNSDataOfLength();
  objc_opt_class();
  if (!CUXPCDecodeObject())
  {
    goto LABEL_44;
  }

  v48 = v13;
LABEL_38:

  return v48;
}

BOOL __64__CBSpatialInteractionSession__activateXPCCompleted_reactivate___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [CBDevice alloc];
  v6 = *(*(a1 + 32) + 8);
  obj = *(v6 + 40);
  v7 = [(CBDevice *)v5 initWithXPCObject:v4 error:&obj];

  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    v14 = [(CBDevice *)v7 identifier];
    v15 = v14 != 0;
    if (v14)
    {
      v16 = *(*(*(a1 + 40) + 8) + 40);
      if (!v16)
      {
        v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v18 = *(*(a1 + 40) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v17;

        v16 = *(*(*(a1 + 40) + 8) + 40);
      }

      [v16 setObject:v7 forKeyedSubscript:v14];
    }

    else
    {
      v21 = CBErrorF(-6708, "No device ID", v8, v9, v10, v11, v12, v13, v24);
      v22 = *(*(a1 + 32) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (void)dictionaryWithTokenData:(void *)a3 error:.cold.1(void *a1, unsigned int *a2, void *a3)
{
  if (a1)
  {
    v5 = CUPrintErrorCode();
    *a1 = CBErrorF(312900, "Decode token failed: %@", v6, v7, v8, v9, v10, v11, v5);
  }

  *a3 = 0;
}

- (uint64_t)_xpcReceivedAOPData:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_8(a1);
  if (v4 ^ v5 | v3)
  {
    if (v2 != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF_safe();
    }
  }

  return result;
}

- (uint64_t)_xpcReceivedAOPData:.cold.2()
{
  OUTLINED_FUNCTION_5_7();
  if (!(v2 ^ v3 | v1))
  {
    return 1;
  }

  OUTLINED_FUNCTION_4_8();
  if (v1)
  {
    if (!OUTLINED_FUNCTION_6_3())
    {
      return 1;
    }
  }

  *v0 = CUPrintNSError();
  LogPrintF_safe();
  return 0;
}

- (uint64_t)_xpcReceivedDeviceFound:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_8(a1);
  if (v4 ^ v5 | v3)
  {
    if (v2 != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF_safe();
    }
  }

  return result;
}

- (int)_xpcReceivedDeviceFound:(uint64_t)a1 .cold.2(uint64_t a1)
{
  result = *(a1 + 64);
  if (*result <= 30)
  {
    if (*result != -1)
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

- (uint64_t)_xpcReceivedDeviceFound:(uint64_t)a1 .cold.3(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_8(a1);
  if (v4 ^ v5 | v3)
  {
    if (v2 != -1)
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

- (uint64_t)_xpcReceivedDeviceFound:.cold.4()
{
  OUTLINED_FUNCTION_5_7();
  if (!(v2 ^ v3 | v1))
  {
    return 1;
  }

  OUTLINED_FUNCTION_4_8();
  if (v1)
  {
    if (!OUTLINED_FUNCTION_6_3())
    {
      return 1;
    }
  }

  *v0 = CUPrintNSError();
  LogPrintF_safe();
  return 0;
}

- (uint64_t)_xpcReceivedDeviceLost:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_8(a1);
  if (v4 ^ v5 | v3)
  {
    if (v2 != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF_safe();
    }
  }

  return result;
}

- (uint64_t)_xpcReceivedDeviceLost:(uint64_t *)a3 .cold.2(uint64_t result, uint64_t a2, uint64_t *a3)
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

- (int)_xpcReceivedDeviceLost:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = *(a1 + 64);
  if (*result <= 90)
  {
    if (*result != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF_safe();
    }
  }

  *a4 = a3;
  return result;
}

- (uint64_t)_xpcReceivedDeviceLost:.cold.4()
{
  OUTLINED_FUNCTION_5_7();
  if (!(v2 ^ v3 | v1))
  {
    return 1;
  }

  OUTLINED_FUNCTION_4_8();
  if (v1)
  {
    if (!OUTLINED_FUNCTION_6_3())
    {
      return 1;
    }
  }

  *v0 = CUPrintNSError();
  LogPrintF_safe();
  return 0;
}

- (uint64_t)_xpcReceivedPowerStateChanged:(uint64_t)a1 .cold.1(uint64_t a1)
{
  result = OUTLINED_FUNCTION_0_8(a1);
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
  result = OUTLINED_FUNCTION_0_8(a1);
  if (v4 ^ v5 | v3)
  {
    if (v2 != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF_safe();
    }
  }

  return result;
}

@end