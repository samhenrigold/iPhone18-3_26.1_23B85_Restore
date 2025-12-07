@interface CBClassicPeer
- (BOOL)isAACPCapabilityBit:(unsigned int)bit;
- (BOOL)isAppleDevice;
- (BOOL)isGameController;
- (BOOL)isMac;
- (BOOL)isMultiBatteryDevice;
- (BOOL)isNintendoGameController;
- (BOOL)isRFCOMMServiceSupported:(id)supported;
- (BOOL)isReportingBatteryPercent;
- (BOOL)isServiceSupported:(id)supported;
- (BOOL)isSonyGameController;
- (BOOL)isXboxGameController;
- (BOOL)isiPad;
- (BOOL)isiPhone;
- (CBClassicPeer)initWithInfo:(id)info manager:(id)manager;
- (id)channelWithID:(unsigned __int8)d;
- (id)channelWithPSM:(unsigned __int16)m;
- (id)description;
- (id)importServices:(id)services;
- (id)service:(id)service;
- (id)serviceForPSM:(unsigned __int16)m;
- (id)serviceForRFCOMMChannelID:(unsigned __int8)d;
- (unint64_t)hash;
- (unsigned)getConnectedServices;
- (unsigned)psmForService:(id)service;
- (unsigned)rfcommChannelIDForService:(id)service;
- (void)closeL2CAPChannel:(unsigned __int16)channel;
- (void)closeRFCOMMChannel:(unsigned __int8)channel;
- (void)dealloc;
- (void)getConnectedServices;
- (void)handleDisconnection;
- (void)handleGetPeerState:(id)state;
- (void)handleL2CAPChannelClosed:(id)closed;
- (void)handleL2CAPChannelOpened:(id)opened;
- (void)handleMsg:(int)msg args:(id)args;
- (void)handlePeerUpdated:(id)updated;
- (void)handleRFCOMMChannelClosed:(id)closed;
- (void)handleRFCOMMChannelOpened:(id)opened;
- (void)handleSuccessfulConnection:(id)connection;
- (void)openL2CAPChannel:(unsigned __int16)channel;
- (void)openRFCOMMChannel:(unsigned __int8)channel options:(id)options;
- (void)sendMsg:(int)msg requiresConnected:(BOOL)connected args:(id)args;
- (void)setAutoAnswerCalls:(BOOL)calls;
- (void)setClickHoldInterval:(unsigned int)interval;
- (void)setClickHoldModeLeft:(unsigned __int8)left;
- (void)setClickHoldModeRight:(unsigned __int8)right;
- (void)setCrownRotationDirection:(unsigned __int8)direction;
- (void)setDoubleClickInterval:(unsigned int)interval;
- (void)setDoubleClickMode:(unsigned __int8)mode;
- (void)setDoubleTapAction:(unsigned __int16)action;
- (void)setDoubleTapActionLeft:(unsigned __int16)left;
- (void)setDoubleTapActionRight:(unsigned __int16)right;
- (void)setEQConfigBass:(unsigned __int8)bass;
- (void)setEQConfigEnabled:(BOOL)enabled;
- (void)setEQConfigMid:(unsigned __int8)mid;
- (void)setEQConfigTreble:(unsigned __int8)treble;
- (void)setInEarDetectionEnabled:(BOOL)enabled;
- (void)setLRDetectionEnabled:(BOOL)enabled;
- (void)setListeningMode:(unsigned __int8)mode;
- (void)setListeningModeConfigs:(unsigned int)configs;
- (void)setMicMode:(unsigned __int8)mode;
- (void)setName:(id)name;
- (void)setOneBudANCMode:(unsigned __int8)mode;
- (void)setRemoteTimeSyncEnabled:(BOOL)enabled;
- (void)setSingleClickMode:(unsigned __int8)mode;
- (void)setSmartRoutingEnabled:(unsigned __int8)enabled;
- (void)setSmartRoutingSupported:(BOOL)supported;
- (void)setSwitchControlMode:(unsigned __int8)mode;
@end

@implementation CBClassicPeer

- (CBClassicPeer)initWithInfo:(id)info manager:(id)manager
{
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = CBClassicPeer;
  v7 = [(CBPeer *)&v14 initWithInfo:infoCopy manager:manager];
  v8 = v7;
  if (v7)
  {
    v7->_state = 0;
    v9 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
    L2CAPChannels = v8->_L2CAPChannels;
    v8->_L2CAPChannels = v9;

    v11 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
    RFCOMMChannels = v8->_RFCOMMChannels;
    v8->_RFCOMMChannels = v11;

    [(CBPeer *)v8 setMtuLength:672];
    [(CBClassicPeer *)v8 handlePeerUpdated:infoCopy];
  }

  return v8;
}

- (unint64_t)hash
{
  addressString = [(CBClassicPeer *)self addressString];
  v3 = [addressString hash];

  return v3;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v3 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[CBClassicPeer dealloc]";
    v9 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1C0AC1000, v3, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  L2CAPChannels = self->_L2CAPChannels;
  if (L2CAPChannels)
  {
    [(NSHashTable *)L2CAPChannels removeAllObjects];
  }

  RFCOMMChannels = self->_RFCOMMChannels;
  if (RFCOMMChannels)
  {
    [(NSHashTable *)RFCOMMChannels removeAllObjects];
  }

  v6.receiver = self;
  v6.super_class = CBClassicPeer;
  [(CBClassicPeer *)&v6 dealloc];
}

- (id)description
{
  v17 = MEMORY[0x1E696AEC0];
  v16 = objc_opt_class();
  identifier = [(CBPeer *)self identifier];
  uUIDString = [identifier UUIDString];
  name = [(CBClassicPeer *)self name];
  v6 = [(CBPeer *)self peerStateToString:[(CBClassicPeer *)self internalState]];
  if ([(CBPeer *)self pairingState])
  {
    v7 = @"Paired";
  }

  else
  {
    v7 = @"Unpaired";
  }

  addressString = [(CBClassicPeer *)self addressString];
  deviceType = [(CBClassicPeer *)self deviceType];
  productID = [(CBClassicPeer *)self productID];
  vendorID = [(CBClassicPeer *)self vendorID];
  isAppleDevice = [(CBClassicPeer *)self isAppleDevice];
  v13 = &stru_1F40009C8;
  if (isAppleDevice)
  {
    v13 = @", Apple";
  }

  v14 = [v17 stringWithFormat:@"<%@: %p %@, %@, %@, %@, %@, devType: %d, PID: 0x%04X, VID: 0x%04X%@>", v16, self, uUIDString, name, v6, v7, addressString, deviceType, productID, vendorID, v13];

  return v14;
}

- (id)importServices:(id)services
{
  v31 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(servicesCopy, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = servicesCopy;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"kCBMsgArgPSM"];
        v10 = [v8 objectForKeyedSubscript:@"kCBMsgArgRFCOMMChannelID"];
        v11 = v10;
        if (v9)
        {
          v28[0] = @"kCBMsgArgServiceUUID";
          v12 = [v8 objectForKeyedSubscript:?];
          v13 = [CBUUID UUIDWithData:v12];
          v28[1] = @"kCBMsgArgPSM";
          v29[0] = v13;
          v14 = [v8 objectForKeyedSubscript:@"kCBMsgArgPSM"];
          v29[1] = v14;
          v15 = MEMORY[0x1E695DF20];
          v16 = v29;
          v17 = v28;
LABEL_7:
          v18 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:2];
          [v21 addObject:v18];

          goto LABEL_8;
        }

        if (v10)
        {
          v26[0] = @"kCBMsgArgServiceUUID";
          v12 = [v8 objectForKeyedSubscript:?];
          v13 = [CBUUID UUIDWithData:v12];
          v26[1] = @"kCBMsgArgRFCOMMChannelID";
          v27[0] = v13;
          v14 = [v8 objectForKeyedSubscript:?];
          v27[1] = v14;
          v15 = MEMORY[0x1E695DF20];
          v16 = v27;
          v17 = v26;
          goto LABEL_7;
        }

LABEL_8:
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v5);
  }

  return v21;
}

- (void)sendMsg:(int)msg requiresConnected:(BOOL)connected args:(id)args
{
  connectedCopy = connected;
  msgCopy = msg;
  argsCopy = args;
  manager = [(CBPeer *)self manager];

  if (manager)
  {
    if ([(CBClassicPeer *)self state]!= 2 && connectedCopy)
    {
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer dealloc];
      }

      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        [CBClassicPeer sendMsg:requiresConnected:args:];
      }
    }

    if (!argsCopy)
    {
      argsCopy = MEMORY[0x1E695E0F8];
    }

    v10 = [argsCopy mutableCopy];
    identifier = [(CBPeer *)self identifier];
    [v10 setObject:identifier forKeyedSubscript:@"kCBMsgArgDeviceUUID"];

    manager2 = [(CBPeer *)self manager];
    [manager2 sendMsg:msgCopy args:v10];

LABEL_11:
    return;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_11;
  }

  [CBClassicPeer sendMsg:requiresConnected:args:];
}

- (void)handleMsg:(int)msg args:(id)args
{
  v4 = *&msg;
  argsCopy = args;
  if (v4 > 50)
  {
    switch(v4)
    {
      case '?':
        v7 = sel_handleRFCOMMChannelClosed_;
        internalState = [(CBClassicPeer *)self internalState];
        break;
      case '>':
        v7 = sel_handleRFCOMMChannelOpened_;
        internalState = [(CBClassicPeer *)self internalState];
        break;
      case '3':
        [(CBClassicPeer *)self internalState];
        [(CBClassicPeer *)self handlePeerUpdated:argsCopy];
        goto LABEL_21;
      default:
        goto LABEL_12;
    }
  }

  else
  {
    switch(v4)
    {
      case 0x1B:
        v7 = sel_handleL2CAPChannelOpened_;
        internalState = [(CBClassicPeer *)self internalState];
        break;
      case 0x1C:
        v7 = sel_handleL2CAPChannelClosed_;
        internalState = [(CBClassicPeer *)self internalState];
        break;
      case 0x2F:
        [(CBClassicPeer *)self internalState];
        [(CBClassicPeer *)self handleGetPeerState:argsCopy];
        goto LABEL_21;
      default:
LABEL_12:
        v9.receiver = self;
        v9.super_class = CBClassicPeer;
        [(CBPeer *)&v9 handleMsg:v4 args:argsCopy];
        goto LABEL_21;
    }
  }

  if (internalState == 2)
  {
    [self v7];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
    {
      [CBClassicPeer handleMsg:args:];
    }
  }

LABEL_21:
}

- (void)handleGetPeerState:(id)state
{
  v4 = [state objectForKeyedSubscript:@"kCBMsgArgState"];
  [(CBClassicPeer *)self handlePeerUpdated:v4];
}

- (void)handlePeerUpdated:(id)updated
{
  v283 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  v5 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgDeviceType"];
  unsignedIntValue = [v5 unsignedIntValue];

  v7 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgDeviceType"];
  if (v7)
  {
    v8 = v7;
    deviceType = [(CBClassicPeer *)self deviceType];

    if (deviceType != unsignedIntValue)
    {
      [(CBClassicPeer *)self setDeviceType:unsignedIntValue];
    }
  }

  v10 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgPID"];
  unsignedIntValue2 = [v10 unsignedIntValue];

  v12 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgPID"];
  if (v12)
  {
    v13 = v12;
    productID = [(CBClassicPeer *)self productID];

    if (productID != unsignedIntValue2)
    {
      [(CBClassicPeer *)self setProductID:unsignedIntValue2];
    }
  }

  v15 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgVID"];
  unsignedIntValue3 = [v15 unsignedIntValue];

  v17 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgVID"];
  if (v17)
  {
    v18 = v17;
    vendorID = [(CBClassicPeer *)self vendorID];

    if (vendorID != unsignedIntValue3)
    {
      [(CBClassicPeer *)self setVendorID:unsignedIntValue3];
    }
  }

  v20 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgVIDSource"];
  unsignedIntValue4 = [v20 unsignedIntValue];

  v22 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgVIDSource"];
  if (v22)
  {
    v23 = v22;
    vendorIDSource = [(CBClassicPeer *)self vendorIDSource];

    if (vendorIDSource != unsignedIntValue4)
    {
      [(CBClassicPeer *)self setVendorIDSource:unsignedIntValue4];
    }
  }

  v25 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgVersion"];
  unsignedIntValue5 = [v25 unsignedIntValue];

  v27 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgVersion"];
  if (v27)
  {
    v28 = v27;
    version = [(CBClassicPeer *)self version];

    if (version != unsignedIntValue5)
    {
      [(CBClassicPeer *)self setVersion:unsignedIntValue5];
    }
  }

  v30 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgIsDevFused"];
  bOOLValue = [v30 BOOLValue];

  v32 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgIsDevFused"];
  if (v32)
  {
    v33 = v32;
    isDevFused = [(CBClassicPeer *)self isDevFused];

    if (bOOLValue != isDevFused)
    {
      [(CBClassicPeer *)self setIsDevFused:bOOLValue];
    }
  }

  v35 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgColorID"];
  unsignedCharValue = [v35 unsignedCharValue];

  v37 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgColorID"];
  if (v37)
  {
    v38 = v37;
    colorID = [(CBClassicPeer *)self colorID];

    if (colorID != unsignedCharValue)
    {
      [(CBClassicPeer *)self setColorID:unsignedCharValue];
    }
  }

  v40 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgBatteryPercent"];
  unsignedCharValue2 = [v40 unsignedCharValue];

  v42 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgBatteryPercent"];
  if (v42)
  {
    v43 = v42;
    batteryPercentSingle = [(CBClassicPeer *)self batteryPercentSingle];

    if (batteryPercentSingle != unsignedCharValue2)
    {
      v45 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgBatteryPercent"];
      -[CBClassicPeer setBatteryPercentSingle:](self, "setBatteryPercentSingle:", [v45 unsignedCharValue]);
    }
  }

  v46 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgBatteryPercentLeft"];
  unsignedCharValue3 = [v46 unsignedCharValue];

  v48 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgBatteryPercentLeft"];
  if (v48)
  {
    v49 = v48;
    batteryPercentLeft = [(CBClassicPeer *)self batteryPercentLeft];

    if (batteryPercentLeft != unsignedCharValue3)
    {
      [(CBClassicPeer *)self setBatteryPercentLeft:unsignedCharValue3];
    }
  }

  v51 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgBatteryPercentRight"];
  unsignedCharValue4 = [v51 unsignedCharValue];

  v53 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgBatteryPercentRight"];
  if (v53)
  {
    v54 = v53;
    batteryPercentRight = [(CBClassicPeer *)self batteryPercentRight];

    if (batteryPercentRight != unsignedCharValue4)
    {
      [(CBClassicPeer *)self setBatteryPercentRight:unsignedCharValue4];
    }
  }

  v56 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgBatteryPercentCase"];
  unsignedCharValue5 = [v56 unsignedCharValue];

  v58 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgBatteryPercentCase"];
  if (v58)
  {
    v59 = v58;
    batteryPercentCase = [(CBClassicPeer *)self batteryPercentCase];

    if (batteryPercentCase != unsignedCharValue5)
    {
      [(CBClassicPeer *)self setBatteryPercentCase:unsignedCharValue5];
    }
  }

  v61 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgBatteryPercentCombined"];
  unsignedCharValue6 = [v61 unsignedCharValue];

  v63 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgBatteryPercentCombined"];
  if (v63)
  {
    v64 = v63;
    batteryPercentCombined = [(CBClassicPeer *)self batteryPercentCombined];

    if (batteryPercentCombined != unsignedCharValue6)
    {
      [(CBClassicPeer *)self setBatteryPercentCombined:unsignedCharValue6];
    }
  }

  v66 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgListeningMode"];
  unsignedCharValue7 = [v66 unsignedCharValue];

  v68 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgListeningMode"];
  if (v68)
  {
    v69 = v68;
    listeningMode = [(CBClassicPeer *)self listeningMode];

    if (listeningMode != unsignedCharValue7)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"listeningMode"];
      self->_listeningMode = unsignedCharValue7;
      [(CBClassicPeer *)self didChangeValueForKey:@"listeningMode"];
    }
  }

  v71 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgListeningConfigs"];
  unsignedIntValue6 = [v71 unsignedIntValue];

  v73 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgListeningConfigs"];
  if (v73)
  {
    v74 = v73;
    listeningModeConfigs = [(CBClassicPeer *)self listeningModeConfigs];

    if (listeningModeConfigs != unsignedIntValue6)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"listeningModeConfigs"];
      self->_listeningModeConfigs = unsignedIntValue6;
      [(CBClassicPeer *)self didChangeValueForKey:@"listeningModeConfigs"];
    }
  }

  v76 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgLRDetectionModeEnabled"];
  bOOLValue2 = [v76 BOOLValue];

  v78 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgLRDetectionModeEnabled"];
  if (v78)
  {
    v79 = v78;
    lRDetectionEnabled = [(CBClassicPeer *)self LRDetectionEnabled];

    if (bOOLValue2 != lRDetectionEnabled)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"LRDetectionEnabled"];
      self->_LRDetectionEnabled = bOOLValue2;
      [(CBClassicPeer *)self didChangeValueForKey:@"LRDetectionEnabled"];
    }
  }

  v81 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgEQModeEnabled"];
  bOOLValue3 = [v81 BOOLValue];

  v83 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgEQModeEnabled"];
  if (v83)
  {
    v84 = v83;
    eQConfigEnabled = [(CBClassicPeer *)self EQConfigEnabled];

    if (bOOLValue3 != eQConfigEnabled)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"EQConfigEnabled"];
      self->_EQConfigEnabled = bOOLValue3;
      [(CBClassicPeer *)self didChangeValueForKey:@"EQConfigEnabled"];
    }
  }

  v86 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgEQTreble"];
  unsignedCharValue8 = [v86 unsignedCharValue];

  v88 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgEQTreble"];
  if (v88)
  {
    v89 = v88;
    eQConfigTreble = [(CBClassicPeer *)self EQConfigTreble];

    if (eQConfigTreble != unsignedCharValue8)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"EQConfigTreble"];
      self->_EQConfigTreble = unsignedCharValue8;
      [(CBClassicPeer *)self didChangeValueForKey:@"EQConfigTreble"];
    }
  }

  v91 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgEQMid"];
  unsignedCharValue9 = [v91 unsignedCharValue];

  v93 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgEQMid"];
  if (v93)
  {
    v94 = v93;
    eQConfigMid = [(CBClassicPeer *)self EQConfigMid];

    if (eQConfigMid != unsignedCharValue9)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"EQConfigMid"];
      self->_EQConfigMid = unsignedCharValue9;
      [(CBClassicPeer *)self didChangeValueForKey:@"EQConfigMid"];
    }
  }

  v96 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgEQBass"];
  unsignedCharValue10 = [v96 unsignedCharValue];

  v98 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgEQBass"];
  if (v98)
  {
    v99 = v98;
    eQConfigBass = [(CBClassicPeer *)self EQConfigBass];

    if (eQConfigBass != unsignedCharValue10)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"EQConfigBass"];
      self->_EQConfigBass = unsignedCharValue10;
      [(CBClassicPeer *)self didChangeValueForKey:@"EQConfigBass"];
    }
  }

  v101 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgAutoAnswerCalls"];
  bOOLValue4 = [v101 BOOLValue];

  v103 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgAutoAnswerCalls"];
  if (v103)
  {
    v104 = v103;
    autoAnswerCalls = [(CBClassicPeer *)self autoAnswerCalls];

    if (bOOLValue4 != autoAnswerCalls)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"autoAnswerCalls"];
      self->_autoAnswerCalls = bOOLValue4;
      [(CBClassicPeer *)self didChangeValueForKey:@"autoAnswerCalls"];
    }
  }

  v106 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgCrownRotationDirection"];
  unsignedCharValue11 = [v106 unsignedCharValue];

  v108 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgCrownRotationDirection"];
  if (v108)
  {
    v109 = v108;
    crownRotationDirection = [(CBClassicPeer *)self crownRotationDirection];

    if (crownRotationDirection != unsignedCharValue11)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"crownRotationDirection"];
      self->_crownRotationDirection = unsignedCharValue11;
      [(CBClassicPeer *)self didChangeValueForKey:@"crownRotationDirection"];
    }
  }

  v111 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgSingleClickMode"];
  unsignedCharValue12 = [v111 unsignedCharValue];

  v113 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgSingleClickMode"];
  if (v113)
  {
    v114 = v113;
    singleClickMode = [(CBClassicPeer *)self singleClickMode];

    if (singleClickMode != unsignedCharValue12)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"singleClickMode"];
      self->_singleClickMode = unsignedCharValue12;
      [(CBClassicPeer *)self didChangeValueForKey:@"singleClickMode"];
    }
  }

  v116 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgDoubleClickMode"];
  unsignedCharValue13 = [v116 unsignedCharValue];

  v118 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgDoubleClickMode"];
  if (v118)
  {
    v119 = v118;
    doubleClickMode = [(CBClassicPeer *)self doubleClickMode];

    if (doubleClickMode != unsignedCharValue13)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"doubleClickMode"];
      self->_doubleClickMode = unsignedCharValue13;
      [(CBClassicPeer *)self didChangeValueForKey:@"doubleClickMode"];
    }
  }

  v121 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgClickHoldMode"];

  if (v121)
  {
    v122 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgClickHoldMode"];
    unsignedIntValue7 = [v122 unsignedIntValue];

    if ([(CBClassicPeer *)self clickHoldModeLeft]!= HIBYTE(unsignedIntValue7))
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"clickHoldModeLeft"];
      self->_clickHoldModeLeft = HIBYTE(unsignedIntValue7);
      [(CBClassicPeer *)self didChangeValueForKey:@"clickHoldModeLeft"];
    }

    if ([(CBClassicPeer *)self clickHoldModeRight]!= unsignedIntValue7)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"clickHoldModeRight"];
      self->_clickHoldModeRight = unsignedIntValue7;
      [(CBClassicPeer *)self didChangeValueForKey:@"clickHoldModeRight"];
    }
  }

  v124 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgDoubleClickInterval"];
  unsignedIntValue8 = [v124 unsignedIntValue];

  v126 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgDoubleClickInterval"];
  if (v126)
  {
    v127 = v126;
    doubleClickInterval = [(CBClassicPeer *)self doubleClickInterval];

    if (doubleClickInterval != unsignedIntValue8)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"doubleClickInterval"];
      self->_doubleClickInterval = unsignedIntValue8;
      [(CBClassicPeer *)self didChangeValueForKey:@"doubleClickInterval"];
    }
  }

  v129 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgClickHoldInterval"];
  unsignedIntValue9 = [v129 unsignedIntValue];

  v131 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgClickHoldInterval"];
  if (v131)
  {
    v132 = v131;
    clickHoldInterval = [(CBClassicPeer *)self clickHoldInterval];

    if (clickHoldInterval != unsignedIntValue9)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"clickHoldInterval"];
      self->_clickHoldInterval = unsignedIntValue9;
      [(CBClassicPeer *)self didChangeValueForKey:@"clickHoldInterval"];
    }
  }

  v134 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgOneBudANCMode"];
  unsignedCharValue14 = [v134 unsignedCharValue];

  v136 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgOneBudANCMode"];
  if (v136)
  {
    v137 = v136;
    oneBudANCMode = [(CBClassicPeer *)self oneBudANCMode];

    if (oneBudANCMode != unsignedCharValue14)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"oneBudANCMode"];
      self->_oneBudANCMode = unsignedCharValue14;
      [(CBClassicPeer *)self didChangeValueForKey:@"oneBudANCMode"];
    }
  }

  v139 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgSwitchControlMode"];
  unsignedCharValue15 = [v139 unsignedCharValue];

  v141 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgSwitchControlMode"];
  if (v141)
  {
    v142 = v141;
    switchControlMode = [(CBClassicPeer *)self switchControlMode];

    if (switchControlMode != unsignedCharValue15)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"switchControlMode"];
      self->_switchControlMode = unsignedCharValue15;
      [(CBClassicPeer *)self didChangeValueForKey:@"switchControlMode"];
    }
  }

  v144 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgDoubleTapAction"];

  if (v144)
  {
    v145 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgDoubleTapAction"];
    unsignedIntValue10 = [v145 unsignedIntValue];

    if (unsignedIntValue10 != [(CBClassicPeer *)self doubleTapAction])
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"doubleTapAction"];
      self->_doubleTapAction = unsignedIntValue10;
      [(CBClassicPeer *)self didChangeValueForKey:@"doubleTapAction"];
    }
  }

  v147 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgDoubleTapActionEx"];

  if (v147)
  {
    v148 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgDoubleTapActionEx"];
    unsignedIntValue11 = [v148 unsignedIntValue];

    if ([(CBClassicPeer *)self doubleTapActionLeft]!= (unsignedIntValue11 >> 8))
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"doubleTapActionLeft"];
      self->_doubleTapActionLeft = unsignedIntValue11 >> 8;
      [(CBClassicPeer *)self didChangeValueForKey:@"doubleTapActionLeft"];
    }

    if ([(CBClassicPeer *)self doubleTapActionRight]!= unsignedIntValue11)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"doubleTapActionRight"];
      self->_doubleTapActionRight = unsignedIntValue11;
      [(CBClassicPeer *)self didChangeValueForKey:@"doubleTapActionRight"];
    }
  }

  v150 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgDoubleTapCapability"];
  unsignedCharValue16 = [v150 unsignedCharValue];

  v152 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgDoubleTapCapability"];
  if (v152)
  {
    v153 = v152;
    doubleTapCapability = [(CBClassicPeer *)self doubleTapCapability];

    if (doubleTapCapability != unsignedCharValue16)
    {
      [(CBClassicPeer *)self setDoubleTapCapability:unsignedCharValue16];
    }
  }

  v155 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgMicMode"];
  unsignedCharValue17 = [v155 unsignedCharValue];

  v157 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgMicMode"];
  if (v157)
  {
    v158 = v157;
    micMode = [(CBClassicPeer *)self micMode];

    if (micMode != unsignedCharValue17)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"micMode"];
      self->_micMode = unsignedCharValue17;
      [(CBClassicPeer *)self didChangeValueForKey:@"micMode"];
    }
  }

  v160 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgInEarDetectionEnabled"];
  bOOLValue5 = [v160 BOOLValue];

  v162 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgInEarDetectionEnabled"];
  if (v162)
  {
    v163 = v162;
    inEarDetectionEnabled = [(CBClassicPeer *)self inEarDetectionEnabled];

    if (bOOLValue5 != inEarDetectionEnabled)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"inEarDetectionEnabled"];
      self->_inEarDetectionEnabled = bOOLValue5;
      [(CBClassicPeer *)self didChangeValueForKey:@"inEarDetectionEnabled"];
    }
  }

  v165 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgSmartRoutingSupported"];
  bOOLValue6 = [v165 BOOLValue];

  v167 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgSmartRoutingSupported"];
  if (v167)
  {
    v168 = v167;
    smartRoutingSupported = [(CBClassicPeer *)self smartRoutingSupported];

    if (bOOLValue6 != smartRoutingSupported)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"smartRoutingSupported"];
      self->_smartRoutingSupported = bOOLValue6;
      [(CBClassicPeer *)self didChangeValueForKey:@"smartRoutingSupported"];
    }
  }

  v170 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgSmartRoutingEnabled"];
  unsignedCharValue18 = [v170 unsignedCharValue];

  v172 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgSmartRoutingEnabled"];
  if (v172)
  {
    v173 = v172;
    smartRoutingEnabled = [(CBClassicPeer *)self smartRoutingEnabled];

    if (smartRoutingEnabled != unsignedCharValue18)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"smartRoutingEnabled"];
      self->_smartRoutingEnabled = unsignedCharValue18;
      [(CBClassicPeer *)self didChangeValueForKey:@"smartRoutingEnabled"];
    }
  }

  v175 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgRemoteTimeSyncEnabled"];
  bOOLValue7 = [v175 BOOLValue];

  v177 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgRemoteTimeSyncEnabled"];
  if (v177)
  {
    v178 = v177;
    remoteTimeSyncEnabled = [(CBClassicPeer *)self remoteTimeSyncEnabled];

    if (bOOLValue7 != remoteTimeSyncEnabled)
    {
      [(CBClassicPeer *)self willChangeValueForKey:@"remoteTimeSyncEnabled"];
      self->_remoteTimeSyncEnabled = bOOLValue7;
      [(CBClassicPeer *)self didChangeValueForKey:@"remoteTimeSyncEnabled"];
    }
  }

  v180 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgPrimaryInEarStatus"];
  unsignedCharValue19 = [v180 unsignedCharValue];

  v182 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgPrimaryInEarStatus"];
  if (v182)
  {
    v183 = v182;
    primaryInEarStatus = [(CBClassicPeer *)self primaryInEarStatus];

    if (primaryInEarStatus != unsignedCharValue19)
    {
      [(CBClassicPeer *)self setPrimaryInEarStatus:unsignedCharValue19];
    }
  }

  v185 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgSecondaryInEarStatus"];
  unsignedCharValue20 = [v185 unsignedCharValue];

  v187 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgSecondaryInEarStatus"];
  if (v187)
  {
    v188 = v187;
    secondaryInEarStatus = [(CBClassicPeer *)self secondaryInEarStatus];

    if (secondaryInEarStatus != unsignedCharValue20)
    {
      [(CBClassicPeer *)self setSecondaryInEarStatus:unsignedCharValue20];
    }
  }

  v190 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgServices"];
  if (v190)
  {
    v191 = [(CBClassicPeer *)self importServices:v190];
    [(CBClassicPeer *)self setServices:v191];
  }

  v192 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgSDPRecordData"];
  if (v192)
  {
    [(CBClassicPeer *)self setSdpRecordData:v192];
  }

  v276 = v192;
  v193 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgAACPCapabilityBits"];
  if (v193)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v194 = CBLogComponent;
    if (os_log_type_enabled(v194, OS_LOG_TYPE_DEBUG))
    {
      [(CBClassicPeer *)self handlePeerUpdated:v193, v194];
    }

    [(CBClassicPeer *)self setAacpCapabilityBits:v193];
  }

  v275 = v193;
  v195 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgAppleFeatureBitMask"];
  unsignedLongValue = [v195 unsignedLongValue];

  v197 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgAppleFeatureBitMask"];
  if (v197)
  {
    v198 = v197;
    appleFeatureBitMask = [(CBClassicPeer *)self appleFeatureBitMask];

    if (appleFeatureBitMask != unsignedLongValue)
    {
      [(CBClassicPeer *)self setAppleFeatureBitMask:unsignedLongValue];
    }
  }

  v200 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgExtendedAppleFeatureBitMask"];
  unsignedLongLongValue = [v200 unsignedLongLongValue];

  v202 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgExtendedAppleFeatureBitMask"];
  if (v202)
  {
    v203 = v202;
    appleExtendedFeatureBitMask = [(CBClassicPeer *)self appleExtendedFeatureBitMask];

    if (appleExtendedFeatureBitMask != unsignedLongLongValue)
    {
      [(CBClassicPeer *)self setAppleExtendedFeatureBitMask:unsignedLongLongValue];
    }
  }

  v205 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgRssi"];
  if (v205)
  {
    rSSI = [(CBClassicPeer *)self RSSI];
    v207 = [rSSI isEqualToNumber:v205];

    if ((v207 & 1) == 0)
    {
      [(CBClassicPeer *)self setRSSI:v205];
    }
  }

  v274 = v205;
  v208 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgSerialNumber"];
  if (v208)
  {
    serialNumber = [(CBClassicPeer *)self serialNumber];
    v210 = [v208 isEqualToString:serialNumber];

    if ((v210 & 1) == 0)
    {
      [(CBClassicPeer *)self setSerialNumber:v208];
    }
  }

  v273 = v208;
  v211 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgTrustedUID"];
  v212 = v211;
  if (v211)
  {
    uUIDString = [v211 UUIDString];
    trustedUID = [(CBClassicPeer *)self trustedUID];
    uUIDString2 = [trustedUID UUIDString];
    v216 = [uUIDString isEqualToString:uUIDString2];

    if ((v216 & 1) == 0)
    {
      [(CBClassicPeer *)self setTrustedUID:v212];
    }
  }

  v217 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgIsIncoming"];
  bOOLValue8 = [v217 BOOLValue];

  v219 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgIsIncoming"];
  if (v219)
  {
    v220 = v219;
    isIncoming = [(CBClassicPeer *)self isIncoming];

    if (bOOLValue8 != isIncoming)
    {
      [(CBClassicPeer *)self setIsIncoming:bOOLValue8];
    }
  }

  v222 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgInternalState"];
  integerValue = [v222 integerValue];

  v224 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgInternalState"];
  if (v224)
  {
    v225 = v224;
    internalState = [(CBClassicPeer *)self internalState];

    if (internalState != integerValue)
    {
      [(CBClassicPeer *)self setInternalState:integerValue];
    }
  }

  v227 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgConnectionHandle"];
  unsignedShortValue = [v227 unsignedShortValue];

  v229 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgConnectionHandle"];
  if (v229)
  {
    v230 = v229;
    connectionHandle = [(CBClassicPeer *)self connectionHandle];

    if (connectionHandle != unsignedShortValue)
    {
      [(CBClassicPeer *)self setConnectionHandle:unsignedShortValue];
    }
  }

  v232 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgAddressString"];
  if (v232)
  {
    addressString = [(CBClassicPeer *)self addressString];
    v234 = [addressString isEqualToString:v232];

    if ((v234 & 1) == 0)
    {
      [(CBClassicPeer *)self setAddressString:v232];
    }
  }

  v271 = v232;
  v235 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgModesSupported"];
  unsignedCharValue21 = [v235 unsignedCharValue];

  v237 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgModesSupported"];
  if (v237)
  {
    v238 = v237;
    modeSupported = [(CBClassicPeer *)self modeSupported];

    if (modeSupported != unsignedCharValue21)
    {
      [(CBClassicPeer *)self setModeSupported:unsignedCharValue21];
    }
  }

  v240 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgName"];
  addressString3 = v240;
  v277 = v190;
  if (v240 && ![v240 length])
  {

    addressString3 = 0;
    name = [(CBClassicPeer *)self name];

    if (name)
    {
LABEL_165:
      if (!addressString3)
      {
        goto LABEL_174;
      }

      goto LABEL_172;
    }
  }

  else
  {
    name2 = [(CBClassicPeer *)self name];
    v243 = addressString3 | name2;

    if (v243)
    {
      goto LABEL_165;
    }
  }

  addressString2 = [(CBClassicPeer *)self addressString];

  if (addressString2)
  {
    addressString3 = [(CBClassicPeer *)self addressString];
    goto LABEL_165;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
  }

  v246 = CBLogComponent;
  if (os_log_type_enabled(v246, OS_LOG_TYPE_ERROR))
  {
    [CBClassicPeer handlePeerUpdated:v246];
  }

  addressString3 = &stru_1F40009C8;
LABEL_172:
  name3 = [(CBClassicPeer *)self name];
  v248 = [addressString3 isEqual:name3];

  if ((v248 & 1) == 0)
  {
    [(CBClassicPeer *)self willChangeValueForKey:@"name"];
    objc_storeStrong(&self->_name, addressString3);
    [(CBClassicPeer *)self didChangeValueForKey:@"name"];
  }

LABEL_174:
  v270 = addressString3;
  v249 = [updatedCopy objectForKey:@"kCBMsgArgModelIdentifier"];
  if (v249)
  {
    [(CBClassicPeer *)self willChangeValueForKey:@"appleModelIdentifier"];
    objc_storeStrong(&self->_appleModelIdentifier, v249);
    [(CBClassicPeer *)self didChangeValueForKey:@"appleModelIdentifier"];
  }

  v250 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgIsConnectedOverUSB"];
  bOOLValue9 = [v250 BOOLValue];

  v252 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgIsConnectedOverUSB"];
  if (v252)
  {
    v253 = v252;
    isConnectedOverUSB = [(CBClassicPeer *)self isConnectedOverUSB];

    if (bOOLValue9 != isConnectedOverUSB)
    {
      [(CBClassicPeer *)self setIsConnectedOverUSB:bOOLValue9];
    }
  }

  v272 = v212;
  v280 = 0u;
  v281 = 0u;
  v278 = 0u;
  v279 = 0u;
  services = [(CBClassicPeer *)self services];
  v256 = [services countByEnumeratingWithState:&v278 objects:v282 count:16];
  if (v256)
  {
    v257 = v256;
    v258 = 0;
    v259 = *v279;
    do
    {
      for (i = 0; i != v257; ++i)
      {
        if (*v279 != v259)
        {
          objc_enumerationMutation(services);
        }

        v261 = [*(*(&v278 + 1) + 8 * i) objectForKeyedSubscript:@"kCBMsgArgServiceUUID"];
        uUIDString3 = [v261 UUIDString];

        v258 |= [@"7221EC74-0BAD-4D01-8F77-997B2BE0722A" isEqualToString:uUIDString3];
      }

      v257 = [services countByEnumeratingWithState:&v278 objects:v282 count:16];
    }

    while (v257);
  }

  else
  {
    LOBYTE(v258) = 0;
  }

  [(CBClassicPeer *)self setIsAppleAccessoryServer:v258 & 1];
  v263 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgRemotePANStatus"];

  if (v263)
  {
    v264 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgRemotePANStatus"];
    -[CBClassicPeer setPanEnabled:](self, "setPanEnabled:", [v264 BOOLValue]);
  }

  v265 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgFileBrowsingStatus"];

  if (v265)
  {
    v266 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgFileBrowsingStatus"];
    -[CBClassicPeer setBrowsingEnabled:](self, "setBrowsingEnabled:", [v266 BOOLValue]);
  }

  v267 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgObjectPushStatus"];

  if (v267)
  {
    v268 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgObjectPushStatus"];
    -[CBClassicPeer setObjectPushEnabled:](self, "setObjectPushEnabled:", [v268 BOOLValue]);
  }
}

- (void)handleSuccessfulConnection:(id)connection
{
  connectionCopy = connection;
  v10 = [connectionCopy objectForKeyedSubscript:@"kCBMsgArgIsLinkEncrypted"];
  v5 = [connectionCopy objectForKeyedSubscript:@"kCBMsgArgConnectionTransport"];
  v6 = [connectionCopy objectForKeyedSubscript:@"kCBMsgArgIsIncoming"];
  v7 = [connectionCopy objectForKeyedSubscript:@"kCBMsgArgServices"];
  v8 = [connectionCopy objectForKeyedSubscript:@"kCBMsgArgSDPRecordData"];

  if (v8)
  {
    [(CBClassicPeer *)self setSdpRecordData:v8];
  }

  if (v7)
  {
    v9 = [(CBClassicPeer *)self importServices:v7];
    [(CBClassicPeer *)self setServices:v9];
  }

  -[CBPeer setIsLinkEncrypted:](self, "setIsLinkEncrypted:", [v10 BOOLValue]);
  -[CBPeer setConnectedTransport:](self, "setConnectedTransport:", [v5 unsignedIntegerValue]);
  -[CBClassicPeer setIsIncoming:](self, "setIsIncoming:", [v6 BOOLValue]);
  [(CBClassicPeer *)self setState:2];
}

- (void)handleDisconnection
{
  [(CBClassicPeer *)self setRSSI:0];
  [(CBClassicPeer *)self setState:0];

  [(CBPeer *)self setIsLinkEncrypted:0];
}

- (void)handleL2CAPChannelOpened:(id)opened
{
  v23 = *MEMORY[0x1E69E9840];
  openedCopy = opened;
  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:openedCopy];
  if (v5)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBClassicPeer handleL2CAPChannelOpened:];
      v6 = 0;
      connectL2CAPCallback = [(CBClassicPeer *)self connectL2CAPCallback];

      if (!connectL2CAPCallback)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v6 = 0;
      connectL2CAPCallback2 = [(CBClassicPeer *)self connectL2CAPCallback];

      if (!connectL2CAPCallback2)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  v8 = [CBL2CAPChannel alloc];
  manager = [(CBPeer *)self manager];
  v6 = [(CBL2CAPChannel *)v8 initWithPeer:self manager:manager info:openedCopy];

  v10 = [openedCopy objectForKey:@"kCBMsgArgPSM"];
  unsignedCharValue = [v10 unsignedCharValue];

  v12 = [(CBClassicPeer *)self serviceForPSM:unsignedCharValue];
  v13 = [v12 objectForKeyedSubscript:@"kCBMsgArgServiceUUID"];
  [(CBL2CAPChannel *)v6 setServiceUUID:v13];

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v14 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315394;
    v20 = "[CBClassicPeer handleL2CAPChannelOpened:]";
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_1C0AC1000, v14, OS_LOG_TYPE_DEFAULT, "%s %@", &v19, 0x16u);
  }

  l2CAPChannels = [(CBClassicPeer *)self L2CAPChannels];
  [l2CAPChannels addObject:v6];

  connectL2CAPCallback3 = [(CBClassicPeer *)self connectL2CAPCallback];

  if (connectL2CAPCallback3)
  {
LABEL_12:
    connectL2CAPCallback4 = [(CBClassicPeer *)self connectL2CAPCallback];
    (connectL2CAPCallback4)[2](connectL2CAPCallback4, v6, [v5 code]);
  }

LABEL_13:
}

- (void)handleL2CAPChannelClosed:(id)closed
{
  v4 = MEMORY[0x1E696ABC0];
  closedCopy = closed;
  v6 = [v4 errorWithInfo:closedCopy];
  v7 = [closedCopy objectForKey:@"kCBMsgArgPSM"];

  unsignedShortValue = [v7 unsignedShortValue];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBClassicPeer handleL2CAPChannelClosed:];
  }

  v9 = [(CBClassicPeer *)self channelWithPSM:unsignedShortValue];
  disconnectL2CAPCallback = [(CBClassicPeer *)self disconnectL2CAPCallback];

  if (disconnectL2CAPCallback)
  {
    disconnectL2CAPCallback2 = [(CBClassicPeer *)self disconnectL2CAPCallback];
    (disconnectL2CAPCallback2)[2](disconnectL2CAPCallback2, v9, [v6 code]);
  }

  l2CAPChannels = [(CBClassicPeer *)self L2CAPChannels];
  [l2CAPChannels removeObject:v9];
}

- (id)channelWithPSM:(unsigned __int16)m
{
  mCopy = m;
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  l2CAPChannels = [(CBClassicPeer *)self L2CAPChannels];
  v5 = [l2CAPChannels countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(l2CAPChannels);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 PSM] == mCopy)
        {
          v10 = v9;

          goto LABEL_15;
        }
      }

      v6 = [l2CAPChannels countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    [CBClassicPeer channelWithPSM:];
  }

  v10 = 0;
LABEL_15:

  return v10;
}

- (void)handleRFCOMMChannelOpened:(id)opened
{
  v18 = *MEMORY[0x1E69E9840];
  openedCopy = opened;
  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:openedCopy];
  if (v5)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v6 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBClassicPeer handleRFCOMMChannelOpened:v6];
      v7 = 0;
      connectRFCOMMCallback = [(CBClassicPeer *)self connectRFCOMMCallback];

      if (!connectRFCOMMCallback)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v7 = 0;
      connectRFCOMMCallback2 = [(CBClassicPeer *)self connectRFCOMMCallback];

      if (!connectRFCOMMCallback2)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

  v7 = [[CBRFCOMMChannel alloc] initWithPeer:self info:openedCopy];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v9 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[CBClassicPeer handleRFCOMMChannelOpened:]";
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_1C0AC1000, v9, OS_LOG_TYPE_DEFAULT, "%s %@", &v14, 0x16u);
  }

  rFCOMMChannels = [(CBClassicPeer *)self RFCOMMChannels];
  [rFCOMMChannels addObject:v7];

  connectRFCOMMCallback3 = [(CBClassicPeer *)self connectRFCOMMCallback];

  if (connectRFCOMMCallback3)
  {
LABEL_12:
    connectRFCOMMCallback4 = [(CBClassicPeer *)self connectRFCOMMCallback];
    (connectRFCOMMCallback4)[2](connectRFCOMMCallback4, v7, [v5 code]);
  }

LABEL_13:
}

- (void)handleRFCOMMChannelClosed:(id)closed
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  closedCopy = closed;
  v6 = [v4 errorWithInfo:closedCopy];
  v7 = [closedCopy objectForKey:@"kCBMsgArgRFCOMMChannelID"];

  unsignedCharValue = [v7 unsignedCharValue];
  v9 = [(CBClassicPeer *)self channelWithID:unsignedCharValue];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v10 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[CBClassicPeer handleRFCOMMChannelClosed:]";
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_1C0AC1000, v10, OS_LOG_TYPE_DEFAULT, "%s %@ and result: %@", &v14, 0x20u);
  }

  disconnectRFCOMMCallback = [(CBClassicPeer *)self disconnectRFCOMMCallback];

  if (disconnectRFCOMMCallback)
  {
    disconnectRFCOMMCallback2 = [(CBClassicPeer *)self disconnectRFCOMMCallback];
    (disconnectRFCOMMCallback2)[2](disconnectRFCOMMCallback2, v9, [v6 code]);
  }

  rFCOMMChannels = [(CBClassicPeer *)self RFCOMMChannels];
  [rFCOMMChannels removeObject:v9];
}

- (id)channelWithID:(unsigned __int8)d
{
  dCopy = d;
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  rFCOMMChannels = [(CBClassicPeer *)self RFCOMMChannels];
  v5 = [rFCOMMChannels countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(rFCOMMChannels);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 channelID] == dCopy)
        {
          v10 = v9;

          goto LABEL_15;
        }
      }

      v6 = [rFCOMMChannels countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    [CBClassicPeer channelWithID:];
  }

  v10 = 0;
LABEL_15:

  return v10;
}

- (id)service:(id)service
{
  v20 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  services = [(CBClassicPeer *)self services];
  v6 = [services countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(services);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"kCBMsgArgServiceUUID"];
        v12 = [v11 isEqual:serviceCopy];

        if (v12)
        {
          v13 = v10;
          goto LABEL_11;
        }
      }

      v7 = [services countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (id)serviceForPSM:(unsigned __int16)m
{
  mCopy = m;
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  services = [(CBClassicPeer *)self services];
  v5 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(services);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"kCBMsgArgPSM"];
        unsignedShortValue = [v10 unsignedShortValue];

        if (unsignedShortValue == mCopy)
        {
          v12 = v9;
          goto LABEL_11;
        }
      }

      v6 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (unsigned)psmForService:(id)service
{
  v3 = [(CBClassicPeer *)self service:service];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"kCBMsgArgPSM"];
    unsignedShortValue = [v5 unsignedShortValue];

    return unsignedShortValue;
  }

  else
  {

    return 0;
  }
}

- (id)serviceForRFCOMMChannelID:(unsigned __int8)d
{
  dCopy = d;
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  services = [(CBClassicPeer *)self services];
  v5 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(services);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"kCBMsgArgRFCOMMChannelID"];
        unsignedCharValue = [v10 unsignedCharValue];

        if (unsignedCharValue == dCopy)
        {
          v12 = v9;
          goto LABEL_11;
        }
      }

      v6 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (unsigned)rfcommChannelIDForService:(id)service
{
  serviceCopy = service;
  if (serviceCopy && ([(CBClassicPeer *)self service:serviceCopy], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 objectForKeyedSubscript:@"kCBMsgArgRFCOMMChannelID"];
    unsignedShortValue = [v7 unsignedShortValue];

    return unsignedShortValue;
  }

  else
  {

    return 0;
  }
}

- (void)setListeningMode:(unsigned __int8)mode
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self listeningMode]!= mode)
  {
    v7 = @"kCBMsgArgListeningMode";
    v5 = [MEMORY[0x1E696AD98] numberWithChar:mode];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v6];

    [(CBClassicPeer *)self willChangeValueForKey:@"listeningMode"];
    self->_listeningMode = mode;
    [(CBClassicPeer *)self didChangeValueForKey:@"listeningMode"];
  }
}

- (void)setListeningModeConfigs:(unsigned int)configs
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self listeningModeConfigs]!= configs)
  {
    v7 = @"kCBMsgArgListeningConfigs";
    v5 = [MEMORY[0x1E696AD98] numberWithChar:configs];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v6];

    [(CBClassicPeer *)self willChangeValueForKey:@"listeningModeConfigs"];
    self->_listeningModeConfigs = configs;
    [(CBClassicPeer *)self didChangeValueForKey:@"listeningModeConfigs"];
  }
}

- (void)setLRDetectionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self LRDetectionEnabled]!= enabled)
  {
    v7 = @"kCBMsgArgLRDetectionModeEnabled";
    v5 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v6];

    [(CBClassicPeer *)self willChangeValueForKey:@"LRDetectionEnabled"];
    self->_LRDetectionEnabled = enabledCopy;
    [(CBClassicPeer *)self didChangeValueForKey:@"LRDetectionEnabled"];
  }
}

- (void)setEQConfigEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v11[4] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self EQConfigEnabled]!= enabled)
  {
    v10[0] = @"kCBMsgArgEQModeEnabled";
    v5 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
    v11[0] = v5;
    v10[1] = @"kCBMsgArgEQTreble";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[CBClassicPeer EQConfigTreble](self, "EQConfigTreble")}];
    v11[1] = v6;
    v10[2] = @"kCBMsgArgEQMid";
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[CBClassicPeer EQConfigMid](self, "EQConfigMid")}];
    v11[2] = v7;
    v10[3] = @"kCBMsgArgEQBass";
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[CBClassicPeer EQConfigBass](self, "EQConfigBass")}];
    v11[3] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
    [(CBClassicPeer *)self sendMsg:48 args:v9];

    [(CBClassicPeer *)self willChangeValueForKey:@"EQConfigEnabled"];
    self->_EQConfigEnabled = enabledCopy;
    [(CBClassicPeer *)self didChangeValueForKey:@"EQConfigEnabled"];
  }
}

- (void)setEQConfigTreble:(unsigned __int8)treble
{
  trebleCopy = treble;
  v11[4] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self EQConfigTreble]!= treble)
  {
    v10[0] = @"kCBMsgArgEQModeEnabled";
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CBClassicPeer EQConfigEnabled](self, "EQConfigEnabled")}];
    v11[0] = v5;
    v10[1] = @"kCBMsgArgEQTreble";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:trebleCopy];
    v11[1] = v6;
    v10[2] = @"kCBMsgArgEQMid";
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[CBClassicPeer EQConfigMid](self, "EQConfigMid")}];
    v11[2] = v7;
    v10[3] = @"kCBMsgArgEQBass";
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[CBClassicPeer EQConfigBass](self, "EQConfigBass")}];
    v11[3] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
    [(CBClassicPeer *)self sendMsg:48 args:v9];

    [(CBClassicPeer *)self willChangeValueForKey:@"EQConfigTreble"];
    self->_EQConfigTreble = trebleCopy;
    [(CBClassicPeer *)self didChangeValueForKey:@"EQConfigTreble"];
  }
}

- (void)setEQConfigMid:(unsigned __int8)mid
{
  midCopy = mid;
  v11[4] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self EQConfigMid]!= mid)
  {
    v10[0] = @"kCBMsgArgEQModeEnabled";
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CBClassicPeer EQConfigEnabled](self, "EQConfigEnabled")}];
    v11[0] = v5;
    v10[1] = @"kCBMsgArgEQTreble";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[CBClassicPeer EQConfigTreble](self, "EQConfigTreble")}];
    v11[1] = v6;
    v10[2] = @"kCBMsgArgEQMid";
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:midCopy];
    v11[2] = v7;
    v10[3] = @"kCBMsgArgEQBass";
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[CBClassicPeer EQConfigBass](self, "EQConfigBass")}];
    v11[3] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
    [(CBClassicPeer *)self sendMsg:48 args:v9];

    [(CBClassicPeer *)self willChangeValueForKey:@"EQConfigMid"];
    self->_EQConfigMid = midCopy;
    [(CBClassicPeer *)self didChangeValueForKey:@"EQConfigMid"];
  }
}

- (void)setEQConfigBass:(unsigned __int8)bass
{
  bassCopy = bass;
  v11[4] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self EQConfigBass]!= bass)
  {
    v10[0] = @"kCBMsgArgEQModeEnabled";
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CBClassicPeer EQConfigEnabled](self, "EQConfigEnabled")}];
    v11[0] = v5;
    v10[1] = @"kCBMsgArgEQTreble";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[CBClassicPeer EQConfigTreble](self, "EQConfigTreble")}];
    v11[1] = v6;
    v10[2] = @"kCBMsgArgEQMid";
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{-[CBClassicPeer EQConfigMid](self, "EQConfigMid")}];
    v11[2] = v7;
    v10[3] = @"kCBMsgArgEQBass";
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:bassCopy];
    v11[3] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
    [(CBClassicPeer *)self sendMsg:48 args:v9];

    [(CBClassicPeer *)self willChangeValueForKey:@"EQConfigBass"];
    self->_EQConfigBass = bassCopy;
    [(CBClassicPeer *)self didChangeValueForKey:@"EQConfigBass"];
  }
}

- (void)setAutoAnswerCalls:(BOOL)calls
{
  callsCopy = calls;
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self autoAnswerCalls]!= calls)
  {
    v7 = @"kCBMsgArgAutoAnswerCalls";
    v5 = [MEMORY[0x1E696AD98] numberWithBool:callsCopy];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v6];

    [(CBClassicPeer *)self willChangeValueForKey:@"autoAnswerCalls"];
    self->_autoAnswerCalls = callsCopy;
    [(CBClassicPeer *)self didChangeValueForKey:@"autoAnswerCalls"];
  }
}

- (void)setCrownRotationDirection:(unsigned __int8)direction
{
  directionCopy = direction;
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self crownRotationDirection]!= direction)
  {
    v7 = @"kCBMsgArgCrownRotationDirection";
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:directionCopy];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v6];

    [(CBClassicPeer *)self willChangeValueForKey:@"crownRotationDirection"];
    self->_crownRotationDirection = directionCopy;
    [(CBClassicPeer *)self didChangeValueForKey:@"crownRotationDirection"];
  }
}

- (void)setSingleClickMode:(unsigned __int8)mode
{
  modeCopy = mode;
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self singleClickMode]!= mode)
  {
    v7 = @"kCBMsgArgSingleClickMode";
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:modeCopy];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v6];

    [(CBClassicPeer *)self willChangeValueForKey:@"singleClickMode"];
    self->_singleClickMode = modeCopy;
    [(CBClassicPeer *)self didChangeValueForKey:@"singleClickMode"];
  }
}

- (void)setDoubleClickMode:(unsigned __int8)mode
{
  modeCopy = mode;
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self doubleClickMode]!= mode)
  {
    v7 = @"kCBMsgArgDoubleClickMode";
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:modeCopy];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v6];

    [(CBClassicPeer *)self willChangeValueForKey:@"doubleClickMode"];
    self->_doubleClickMode = modeCopy;
    [(CBClassicPeer *)self didChangeValueForKey:@"doubleClickMode"];
  }
}

- (void)setClickHoldModeLeft:(unsigned __int8)left
{
  leftCopy = left;
  v9[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self clickHoldModeLeft]!= left)
  {
    clickHoldModeRight = [(CBClassicPeer *)self clickHoldModeRight];
    v8 = @"kCBMsgArgClickHoldMode";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:clickHoldModeRight | (leftCopy << 8)];
    v9[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v7];

    [(CBClassicPeer *)self willChangeValueForKey:@"clickHoldModeLeft"];
    self->_clickHoldModeLeft = leftCopy;
    [(CBClassicPeer *)self didChangeValueForKey:@"clickHoldModeLeft"];
  }
}

- (void)setClickHoldModeRight:(unsigned __int8)right
{
  rightCopy = right;
  v9[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self clickHoldModeRight]!= right)
  {
    clickHoldModeLeft = [(CBClassicPeer *)self clickHoldModeLeft];
    v8 = @"kCBMsgArgClickHoldMode";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:rightCopy | (clickHoldModeLeft << 8)];
    v9[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v7];

    [(CBClassicPeer *)self willChangeValueForKey:@"clickHoldModeRight"];
    self->_clickHoldModeRight = rightCopy;
    [(CBClassicPeer *)self didChangeValueForKey:@"clickHoldModeRight"];
  }
}

- (void)setDoubleClickInterval:(unsigned int)interval
{
  v3 = *&interval;
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self doubleClickInterval]!= interval)
  {
    v7 = @"kCBMsgArgDoubleClickInterval";
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v6];

    [(CBClassicPeer *)self willChangeValueForKey:@"doubleClickInterval"];
    self->_doubleClickInterval = v3;
    [(CBClassicPeer *)self didChangeValueForKey:@"doubleClickInterval"];
  }
}

- (void)setClickHoldInterval:(unsigned int)interval
{
  v3 = *&interval;
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self clickHoldInterval]!= interval)
  {
    v7 = @"kCBMsgArgClickHoldInterval";
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v6];

    [(CBClassicPeer *)self willChangeValueForKey:@"clickHoldInterval"];
    self->_clickHoldInterval = v3;
    [(CBClassicPeer *)self didChangeValueForKey:@"clickHoldInterval"];
  }
}

- (void)setOneBudANCMode:(unsigned __int8)mode
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self oneBudANCMode]!= mode)
  {
    v7 = @"kCBMsgArgOneBudANCMode";
    v5 = [MEMORY[0x1E696AD98] numberWithChar:mode];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v6];

    [(CBClassicPeer *)self willChangeValueForKey:@"oneBudANCMode"];
    self->_oneBudANCMode = mode;
    [(CBClassicPeer *)self didChangeValueForKey:@"oneBudANCMode"];
  }
}

- (void)setSwitchControlMode:(unsigned __int8)mode
{
  modeCopy = mode;
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self switchControlMode]!= mode)
  {
    v7 = @"kCBMsgArgSwitchControlMode";
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:modeCopy];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v6];

    [(CBClassicPeer *)self willChangeValueForKey:@"switchControlMode"];
    self->_switchControlMode = modeCopy;
    [(CBClassicPeer *)self didChangeValueForKey:@"switchControlMode"];
  }
}

- (void)setDoubleTapAction:(unsigned __int16)action
{
  actionCopy = action;
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self doubleTapAction]!= action)
  {
    v7 = @"kCBMsgArgDoubleTapAction";
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:actionCopy];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v6];

    [(CBClassicPeer *)self willChangeValueForKey:@"doubleTapAction"];
    self->_doubleTapAction = actionCopy;
    [(CBClassicPeer *)self didChangeValueForKey:@"doubleTapAction"];
  }
}

- (void)setDoubleTapActionLeft:(unsigned __int16)left
{
  leftCopy = left;
  v9[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self doubleTapActionLeft]!= left)
  {
    doubleTapActionRight = [(CBClassicPeer *)self doubleTapActionRight];
    v8 = @"kCBMsgArgDoubleTapActionEx";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:doubleTapActionRight | (leftCopy << 8)];
    v9[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v7];

    [(CBClassicPeer *)self willChangeValueForKey:@"doubleTapActionLeft"];
    self->_doubleTapActionLeft = leftCopy;
    [(CBClassicPeer *)self didChangeValueForKey:@"doubleTapActionLeft"];
  }
}

- (void)setDoubleTapActionRight:(unsigned __int16)right
{
  rightCopy = right;
  v9[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self doubleTapActionRight]!= right)
  {
    doubleTapActionLeft = [(CBClassicPeer *)self doubleTapActionLeft];
    v8 = @"kCBMsgArgDoubleTapActionEx";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:rightCopy | (doubleTapActionLeft << 8)];
    v9[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v7];

    [(CBClassicPeer *)self willChangeValueForKey:@"doubleTapActionRight"];
    self->_doubleTapActionRight = rightCopy;
    [(CBClassicPeer *)self didChangeValueForKey:@"doubleTapActionRight"];
  }
}

- (void)setMicMode:(unsigned __int8)mode
{
  modeCopy = mode;
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self micMode]!= mode)
  {
    v7 = @"kCBMsgArgMicMode";
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:modeCopy];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v6];

    [(CBClassicPeer *)self willChangeValueForKey:@"micMode"];
    self->_micMode = modeCopy;
    [(CBClassicPeer *)self didChangeValueForKey:@"micMode"];
  }
}

- (void)setInEarDetectionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self inEarDetectionEnabled]!= enabled)
  {
    v7 = @"kCBMsgArgInEarDetectionEnabled";
    v5 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v6];

    [(CBClassicPeer *)self willChangeValueForKey:@"inEarDetectionEnabled"];
    self->_inEarDetectionEnabled = enabledCopy;
    [(CBClassicPeer *)self didChangeValueForKey:@"inEarDetectionEnabled"];
  }
}

- (void)setSmartRoutingEnabled:(unsigned __int8)enabled
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self smartRoutingEnabled]!= enabled)
  {
    v7 = @"kCBMsgArgSmartRoutingEnabled";
    v5 = [MEMORY[0x1E696AD98] numberWithChar:enabled];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v6];

    [(CBClassicPeer *)self willChangeValueForKey:@"smartRoutingEnabled"];
    self->_smartRoutingEnabled = enabled;
    [(CBClassicPeer *)self didChangeValueForKey:@"smartRoutingEnabled"];
  }
}

- (void)setSmartRoutingSupported:(BOOL)supported
{
  supportedCopy = supported;
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self smartRoutingSupported]!= supported)
  {
    v7 = @"kCBMsgArgSmartRoutingSupported";
    v5 = [MEMORY[0x1E696AD98] numberWithBool:supportedCopy];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v6];

    [(CBClassicPeer *)self willChangeValueForKey:@"smartRoutingSupported"];
    self->_smartRoutingSupported = supportedCopy;
    [(CBClassicPeer *)self didChangeValueForKey:@"smartRoutingSupported"];
  }
}

- (void)setRemoteTimeSyncEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self remoteTimeSyncEnabled]!= enabled)
  {
    v7 = @"kCBMsgArgRemoteTimeSyncEnabled";
    v5 = [MEMORY[0x1E696AD98] numberWithBool:enabledCopy];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(CBClassicPeer *)self sendMsg:48 args:v6];

    [(CBClassicPeer *)self willChangeValueForKey:@"remoteTimeSyncEnabled"];
    self->_remoteTimeSyncEnabled = enabledCopy;
    [(CBClassicPeer *)self didChangeValueForKey:@"remoteTimeSyncEnabled"];
  }
}

- (unsigned)getConnectedServices
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ([(CBClassicPeer *)self internalState]== 2)
  {
    manager = [(CBPeer *)self manager];
    v10 = @"kCBMsgArgDeviceUUID";
    identifier = [(CBPeer *)self identifier];
    v11[0] = identifier;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v6 = [manager sendSyncMsg:64 args:v5];

    v7 = [v6 objectForKeyedSubscript:@"kCBMsgArgConnectedServices"];
    LODWORD(manager) = [v7 unsignedIntValue];

    return manager;
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v9 = CBLogComponent;
    result = os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR);
    if (result)
    {
      [(CBClassicPeer *)v9 getConnectedServices];
      return 0;
    }
  }

  return result;
}

- (BOOL)isAppleDevice
{
  if ([(CBClassicPeer *)self vendorIDSource]== 2 && [(CBClassicPeer *)self vendorID]== 1452)
  {
    return 1;
  }

  if ([(CBClassicPeer *)self vendorID]== 76)
  {
    return 1;
  }

  if ([(CBPeer *)self pairingState]== 2)
  {
    return 1;
  }

  return [(CBPeer *)self pairingState]== 3;
}

- (BOOL)isiPhone
{
  deviceType = [(CBClassicPeer *)self deviceType];
  if (deviceType != 12 && deviceType != 2)
  {
    return 0;
  }

  return [(CBClassicPeer *)self isAppleDevice];
}

- (BOOL)isiPad
{
  isAppleDevice = [(CBClassicPeer *)self isAppleDevice];
  if (isAppleDevice)
  {
    LOBYTE(isAppleDevice) = [(CBClassicPeer *)self deviceType]== 29;
  }

  return isAppleDevice;
}

- (BOOL)isMac
{
  deviceType = [(CBClassicPeer *)self deviceType];
  if ((deviceType - 7) >= 4 && deviceType != 1)
  {
    return 0;
  }

  return [(CBClassicPeer *)self isAppleDevice];
}

- (BOOL)isMultiBatteryDevice
{
  result = 0;
  if ([(CBClassicPeer *)self isAppleDevice])
  {
    v3 = [(CBClassicPeer *)self productID]- 8194;
    if (v3 < 0x15 && ((0x11B201u >> v3) & 1) != 0)
    {
      return 1;
    }

    if (![(CBClassicPeer *)self batteryPercentSingle]&& ([(CBClassicPeer *)self batteryPercentCase]|| [(CBClassicPeer *)self batteryPercentLeft]|| [(CBClassicPeer *)self batteryPercentRight]))
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)isReportingBatteryPercent
{
  if (![(CBClassicPeer *)self isMultiBatteryDevice])
  {
    return [(CBClassicPeer *)self batteryPercentSingle]!= 0;
  }

  if ([(CBClassicPeer *)self batteryPercentLeft])
  {
    return 1;
  }

  if ([(CBClassicPeer *)self batteryPercentRight])
  {
    return 1;
  }

  return [(CBClassicPeer *)self batteryPercentCase]!= 0;
}

- (BOOL)isGameController
{
  if ([(CBClassicPeer *)self deviceType]== 26 || [(CBClassicPeer *)self isSonyGameController])
  {
    return 1;
  }

  return [(CBClassicPeer *)self isXboxGameController];
}

- (BOOL)isSonyGameController
{
  if ([(CBClassicPeer *)self vendorIDSource]!= 2 || [(CBClassicPeer *)self vendorID]!= 1356)
  {
    return 0;
  }

  if ([(CBClassicPeer *)self productID]== 1476 || [(CBClassicPeer *)self productID]== 2508 || [(CBClassicPeer *)self productID]== 3302 || [(CBClassicPeer *)self productID]== 3570 || [(CBClassicPeer *)self productID]== 3653)
  {
    return 1;
  }

  return [(CBClassicPeer *)self productID]== 3654;
}

- (BOOL)isXboxGameController
{
  if ([(CBClassicPeer *)self vendorIDSource]!= 2 || [(CBClassicPeer *)self vendorID]!= 1118)
  {
    return 0;
  }

  if ([(CBClassicPeer *)self productID]== 765 || [(CBClassicPeer *)self productID]== 2828 || [(CBClassicPeer *)self productID]== 2818)
  {
    return 1;
  }

  return [(CBClassicPeer *)self productID]== 2821;
}

- (BOOL)isNintendoGameController
{
  if ([(CBClassicPeer *)self vendorIDSource]!= 2 || [(CBClassicPeer *)self vendorID]!= 1406)
  {
    return 0;
  }

  if ([(CBClassicPeer *)self productID]== 8198)
  {
    return 1;
  }

  if ([(CBClassicPeer *)self productID]== 8199)
  {
    return 1;
  }

  return [(CBClassicPeer *)self productID]== 8201;
}

- (BOOL)isAACPCapabilityBit:(unsigned int)bit
{
  v35 = *MEMORY[0x1E69E9840];
  aacpCapabilityBits = [(CBClassicPeer *)self aacpCapabilityBits];
  if (aacpCapabilityBits)
  {
    v6 = aacpCapabilityBits;
    aacpCapabilityBits2 = [(CBClassicPeer *)self aacpCapabilityBits];
    v8 = [aacpCapabilityBits2 length];

    if (v8 <= bit >> 3)
    {
      LOBYTE(aacpCapabilityBits) = 0;
    }

    else
    {
      v18 = 0;
      aacpCapabilityBits3 = [(CBClassicPeer *)self aacpCapabilityBits];
      [aacpCapabilityBits3 getBytes:&v18 range:{bit >> 3, 1}];

      v10 = (1 << (bit & 7)) & v18;
      v11 = v10 != 0;
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer handlePeerUpdated:];
      }

      v12 = CBLogComponent;
      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
      {
        v13 = v10 != 0;
        v14 = v12;
        name = [(CBClassicPeer *)self name];
        aacpCapabilityBits4 = [(CBClassicPeer *)self aacpCapabilityBits];
        *buf = 136316930;
        v20 = "[CBClassicPeer isAACPCapabilityBit:]";
        v21 = 2112;
        v22 = name;
        v23 = 2112;
        v24 = aacpCapabilityBits4;
        v25 = 1024;
        bitCopy = bit;
        v27 = 1024;
        v28 = bit & 7;
        v29 = 1024;
        v30 = bit >> 3;
        v31 = 1024;
        v32 = v18;
        v33 = 1024;
        v34 = v13;
        _os_log_debug_impl(&dword_1C0AC1000, v14, OS_LOG_TYPE_DEBUG, "%s - “%@” - aacpCapabilityBits=%@ bit #%d is bit %d of byte %d (%2X) bitIsOn:%d", buf, 0x3Eu);
      }

      LOBYTE(aacpCapabilityBits) = v11;
    }
  }

  return aacpCapabilityBits;
}

- (void)openRFCOMMChannel:(unsigned __int8)channel options:(id)options
{
  channelCopy = channel;
  optionsCopy = options;
  v7 = channelCopy;
  v8 = optionsCopy;
  if (v7)
  {
    v9 = MEMORY[0x1E695DF90];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
    v11 = MEMORY[0x1E695E0F8];
    if (v8)
    {
      v11 = v8;
    }

    v12 = [v9 dictionaryWithObjectsAndKeys:{v10, @"kCBMsgArgRFCOMMChannelID", v11, @"kCBMsgArgOptions", 0}];
    [(CBClassicPeer *)self sendMsg:59 args:v12];

LABEL_5:
    return;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_5;
  }

  [CBClassicPeer openRFCOMMChannel:options:];
}

- (BOOL)isServiceSupported:(id)supported
{
  v3 = [(CBClassicPeer *)self service:supported];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"kCBMsgArgPSM"];
    v6 = v5 != 0;

    return v6;
  }

  else
  {

    return 0;
  }
}

- (void)openL2CAPChannel:(unsigned __int16)channel
{
  v4 = MEMORY[0x1E695DF90];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:channel];
  v5 = [v4 dictionaryWithObjectsAndKeys:{v6, @"kCBMsgArgPSM", MEMORY[0x1E695E0F8], @"kCBMsgArgOptions", 0}];
  [(CBClassicPeer *)self sendMsg:29 args:v5];
}

- (void)closeL2CAPChannel:(unsigned __int16)channel
{
  if (channel)
  {
    v4 = MEMORY[0x1E695DF90];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:?];
    v5 = [v4 dictionaryWithObjectsAndKeys:{v6, @"kCBMsgArgPSM", 0}];
    [(CBClassicPeer *)self sendMsg:30 args:v5];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBClassicPeer closeL2CAPChannel:];
    }
  }
}

- (void)closeRFCOMMChannel:(unsigned __int8)channel
{
  if (channel)
  {
    v4 = MEMORY[0x1E695DF90];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
    v5 = [v4 dictionaryWithObjectsAndKeys:{v6, @"kCBMsgArgRFCOMMChannelID", 0}];
    [(CBClassicPeer *)self sendMsg:60 args:v5];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBClassicPeer openRFCOMMChannel:options:];
    }
  }
}

- (void)setName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    [(CBClassicPeer *)a2 setName:?];
  }

  newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
  v7 = [nameCopy stringByTrimmingCharactersInSet:newlineCharacterSet];

  controlCharacterSet = [MEMORY[0x1E696AB08] controlCharacterSet];
  v12 = [v7 stringByTrimmingCharactersInSet:controlCharacterSet];

  v9 = MEMORY[0x1E695DF90];
  identifier = [(CBPeer *)self identifier];
  v11 = [v9 dictionaryWithObjectsAndKeys:{identifier, @"kCBMsgArgDeviceUUID", v12, @"kCBMsgArgName", 0}];
  [(CBClassicPeer *)self sendMsg:48 args:v11];
}

- (BOOL)isRFCOMMServiceSupported:(id)supported
{
  v3 = [(CBClassicPeer *)self service:supported];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"kCBMsgArgRFCOMMChannelID"];
    v6 = v5 != 0;

    return v6;
  }

  else
  {

    return 0;
  }
}

- (void)handleMsg:args:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x12u);
}

- (void)handlePeerUpdated:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = [a1 name];
  v6 = 136315650;
  v7 = "[CBClassicPeer handlePeerUpdated:]";
  v8 = 2112;
  v9 = v5;
  v10 = 2112;
  v11 = a2;
  _os_log_debug_impl(&dword_1C0AC1000, a3, OS_LOG_TYPE_DEBUG, "%s - Received capability bits for “%@”: %@", &v6, 0x20u);
}

- (void)handleL2CAPChannelClosed:.cold.2()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_1();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x1Cu);
}

- (void)channelWithPSM:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_1();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x12u);
}

- (void)channelWithID:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_5_1();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x12u);
}

- (void)getConnectedServices
{
  v9 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  identifier = [a2 identifier];
  v5 = 138412546;
  v6 = identifier;
  v7 = 2048;
  internalState = [a2 internalState];
  _os_log_error_impl(&dword_1C0AC1000, selfCopy, OS_LOG_TYPE_ERROR, "Peer: %@ is not connected %ld", &v5, 0x16u);
}

- (void)setName:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CBClassicPeer.m" lineNumber:1210 description:{@"Invalid parameter not satisfying: %@", @"name"}];
}

@end