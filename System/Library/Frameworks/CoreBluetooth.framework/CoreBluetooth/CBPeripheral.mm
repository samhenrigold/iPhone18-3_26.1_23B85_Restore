@interface CBPeripheral
- (BOOL)sendMsg:(int)msg args:(id)args withReply:(id)reply;
- (CBPeripheral)initWithCentralManager:(id)manager info:(id)info;
- (NSUInteger)maximumWriteValueLengthForType:(CBCharacteristicWriteType)type;
- (id)delegate;
- (id)description;
- (id)extendedDescription;
- (id)l2capChannelForPeer:(id)peer withCID:(unsigned __int16)d;
- (id)l2capChannelForPeer:(id)peer withPsm:(unsigned __int16)psm;
- (id)sendSyncMsg:(int)msg args:(id)args;
- (void)dealloc;
- (void)discoverCharacteristics:(NSArray *)characteristicUUIDs forService:(CBService *)service;
- (void)discoverDescriptorsForCharacteristic:(CBCharacteristic *)characteristic;
- (void)discoverIncludedServices:(NSArray *)includedServiceUUIDs forService:(CBService *)service;
- (void)discoverServices:(NSArray *)serviceUUIDs;
- (void)enableFastLeConnection:(BOOL)connection withInfo:(id)info completion:(id)completion;
- (void)getRangingTones:(id)tones;
- (void)handleAttributeEvent:(id)event args:(id)args attributeSelector:(SEL)selector delegateSelector:(SEL)delegateSelector delegateFlag:(BOOL)flag;
- (void)handleCSProcedureEventForDeviceMsg:(id)msg;
- (void)handleCharacteristicEvent:(id)event characteristicSelector:(SEL)selector delegateSelector:(SEL)delegateSelector delegateFlag:(BOOL)flag;
- (void)handleDescriptorEvent:(id)event descriptorSelector:(SEL)selector delegateSelector:(SEL)delegateSelector delegateFlag:(BOOL)flag;
- (void)handleDisconnection;
- (void)handleL2CAPChannelClosed:(id)closed;
- (void)handleL2CAPChannelDidReceiveData:(id)data;
- (void)handleL2CAPChannelOpened:(id)opened;
- (void)handleLEAudioActivePresetUpdated:(id)updated;
- (void)handleLEAudioConnected:(id)connected;
- (void)handleLEAudioEvents:(id)events;
- (void)handleLEAudioHearingAidFeaturesUpdated:(id)updated;
- (void)handleLEAudioMicrophoneGainUpdated:(id)updated;
- (void)handleLEAudioMicrophoneMuteUpdated:(id)updated;
- (void)handleLEAudioMsg:(int)msg args:(id)args;
- (void)handleLEAudioPresetNameUpdated:(id)updated;
- (void)handleLEAudioPresetUpdated:(id)updated;
- (void)handleLEAudioVolumeGainUpdated:(id)updated;
- (void)handleLEAudioVolumeMuteUpdated:(id)updated;
- (void)handleLEAudioVolumeOffsetUpdated:(id)updated;
- (void)handleLEAudioVolumeUpdated:(id)updated;
- (void)handleMsg:(int)msg args:(id)args;
- (void)handleNameUpdated:(id)updated;
- (void)handleRSSIUpdated:(id)updated;
- (void)handleServiceEvent:(id)event serviceSelector:(SEL)selector delegateSelector:(SEL)delegateSelector delegateFlag:(BOOL)flag;
- (void)handleServicesChanged:(id)changed;
- (void)handleServicesDiscovered:(id)discovered;
- (void)handleSuccessfulConnection:(id)connection;
- (void)handleTimeSyncResponse:(id)response;
- (void)handleVisibilityChanged:(id)changed;
- (void)invalidateAllAttributes;
- (void)isReadyForUpdates;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)openL2CAPChannel:(unsigned __int16)channel options:(id)options;
- (void)openL2CAPChannel:(unsigned __int16)channel priority:(int64_t)priority;
- (void)openPacketL2CAPChannel:(unsigned __int16)channel withIncomingMTU:(unsigned __int16)u options:(id)options;
- (void)readPresets:(id)presets;
- (void)readRSSI;
- (void)readValueForCharacteristic:(CBCharacteristic *)characteristic;
- (void)readValueForDescriptor:(CBDescriptor *)descriptor;
- (void)sendLEAudioMsg:(id)msg args:(id)args completion:(id)completion;
- (void)sendMsg:(int)msg requiresConnected:(BOOL)connected args:(id)args;
- (void)setActivePreset:(int64_t)preset OptionalPresetIndex:(unsigned __int8)index withResponse:(id)response;
- (void)setBroadcastValue:(BOOL)value forCharacteristic:(id)characteristic;
- (void)setHighPriorityStream:(BOOL)stream duration:(id)duration;
- (void)setMicrophoneMute:(int64_t)mute withResponse:(id)response;
- (void)setNotifyValue:(BOOL)enabled forCharacteristic:(CBCharacteristic *)characteristic;
- (void)setPeripheralName:(id)name;
- (void)setVolume:(unsigned __int8)volume withResponse:(id)response;
- (void)setVolumeMute:(int64_t)mute withResponse:(id)response;
- (void)setVolumeOffSet:(unsigned int)set withOffSetValue:(signed __int16)value withResponse:(id)response;
- (void)updateFindMyInfo:(id)info;
- (void)writeMicrophoneAudioInput:(int64_t)input forAudioInputType:(unsigned __int8)type withOptionalGain:(char)gain withResponse:(id)response;
- (void)writePresetName:(unsigned __int8)name withName:(id)withName withResponse:(id)response;
- (void)writeValue:(NSData *)data forCharacteristic:(CBCharacteristic *)characteristic type:(CBCharacteristicWriteType)type;
- (void)writeValue:(NSData *)data forDescriptor:(CBDescriptor *)descriptor;
- (void)writeVolumeAudioInput:(int64_t)input forAudioInputType:(unsigned __int8)type withOptionalGain:(char)gain withResponse:(id)response;
@end

@implementation CBPeripheral

- (void)dealloc
{
  [(CBPeripheral *)self removeObserver:self forKeyPath:@"delegate"];
  l2capChannels = self->_l2capChannels;
  if (l2capChannels)
  {
    [(NSHashTable *)l2capChannels removeAllObjects];
  }

  manager = [(CBPeer *)self manager];

  if (manager)
  {
    state = self->_state;
    if (state)
    {
      if (state != 2)
      {
        goto LABEL_9;
      }

      if (CBLogInitOnce == -1)
      {
        if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
        {
LABEL_8:
          state = self->_state;
LABEL_9:
          if (state == 1)
          {
            if (CBLogInitOnce == -1)
            {
              if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_12;
              }
            }

            else
            {
              [CBClassicPeer handlePeerUpdated:];
              if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_12;
              }
            }

            [CBPeripheral dealloc];
          }

LABEL_12:
          manager2 = [(CBPeer *)self manager];
          [manager2 cancelPeripheralConnection:self];

          goto LABEL_13;
        }
      }

      else
      {
        [CBClassicPeer dealloc];
        if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_8;
        }
      }

      [CBPeripheral dealloc];
      goto LABEL_8;
    }
  }

LABEL_13:
  v7.receiver = self;
  v7.super_class = CBPeripheral;
  [(CBPeripheral *)&v7 dealloc];
}

- (CBPeripheral)initWithCentralManager:(id)manager info:(id)info
{
  infoCopy = info;
  v27.receiver = self;
  v27.super_class = CBPeripheral;
  v7 = [(CBPeer *)&v27 initWithInfo:infoCopy manager:manager];
  if (v7)
  {
    v8 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgName"];
    name = v7->_name;
    v7->_name = v8;

    v10 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgAdvertisementData"];
    v11 = [v10 objectForKeyedSubscript:@"kCBAdvDataAppearance"];
    v7->_appearance = [v11 unsignedShortValue];

    RSSI = v7->_RSSI;
    v7->_RSSI = 0;

    v7->_state = 0;
    services = v7->_services;
    v7->_services = 0;

    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    attributes = v7->_attributes;
    v7->_attributes = v14;

    v16 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgConnectionState"];
    v7->_isConnectedToSystem = [v16 BOOLValue];

    v17 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:5 capacity:0];
    l2capChannels = v7->_l2capChannels;
    v7->_l2capChannels = v17;

    v19 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgAncsAuthorization"];
    v7->_ancsAuthorized = [v19 BOOLValue];

    v20 = [infoCopy objectForKey:@"kCBMsgArgVisibleInSettings"];

    if (v20)
    {
      v21 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgVisibleInSettings"];
      v7->_visibleInSettings = [v21 BOOLValue];
    }

    else
    {
      v7->_visibleInSettings = 1;
    }

    v22 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgWhbStableIdentifier"];
    stableIdentifier = v7->_stableIdentifier;
    v7->_stableIdentifier = v22;

    v24 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgWhbRemoteControllerId"];
    remoteControllerId = v7->_remoteControllerId;
    v7->_remoteControllerId = v24;

    [(CBPeripheral *)v7 addObserver:v7 forKeyPath:@"delegate" options:0 context:0];
    [(CBPeripheral *)v7 updateFindMyInfo:infoCopy];
  }

  return v7;
}

- (void)updateFindMyInfo:(id)info
{
  infoCopy = info;
  v5 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgFindMyGroupMembers"];
  findMyGroupMembers = self->_findMyGroupMembers;
  self->_findMyGroupMembers = v5;

  v7 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgFindMySerialNumberString"];
  findMySerialNumberString = self->_findMySerialNumberString;
  self->_findMySerialNumberString = v7;

  v9 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgFindMyPartNumber"];
  self->_findMyPartIdentifier = [v9 intValue];

  v10 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgFindMyManaged"];
  self->_managedByFindMy = [v10 BOOLValue];

  v11 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgFindMyBeaconID"];
  findMyBeaconIdentifier = self->_findMyBeaconIdentifier;
  self->_findMyBeaconIdentifier = v11;

  v13 = [infoCopy objectForKeyedSubscript:@"kCBMsgArgFindMyUserID"];

  findMyUserIdentifier = self->_findMyUserIdentifier;
  self->_findMyUserIdentifier = v13;
}

- (id)description
{
  state = self->_state;
  if (state > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E811E780[state];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  identifier = [(CBPeer *)self identifier];
  uUIDString = [identifier UUIDString];
  v9 = [v5 stringWithFormat:@"<%@: %p, identifier = %@, name = %@, mtu = %lu, state = %@>", v6, self, uUIDString, self->_name, -[CBPeer mtuLength](self, "mtuLength"), v4];

  return v9;
}

- (id)extendedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CBPeripheral *)self description];
  v5 = v4;
  v6 = "NO";
  if (self->_visibleInSettings)
  {
    v7 = "YES";
  }

  else
  {
    v7 = "NO";
  }

  if (self->_managedByFindMy)
  {
    v6 = "YES";
  }

  v8 = [v3 stringWithFormat:@"%@ visibleInSettings %s findMyPartId:%d findMySerialNum:%@ findMyGroupMembers:%@ _findMyBeaconIdentifier:%@ _findMyUserIdentifier:%@ managedByFindMy:%s ", v4, v7, self->_findMyPartIdentifier, self->_findMySerialNumberString, self->_findMyGroupMembers, self->_findMyBeaconIdentifier, self->_findMyUserIdentifier, v6];

  return v8;
}

- (void)sendMsg:(int)msg requiresConnected:(BOOL)connected args:(id)args
{
  connectedCopy = connected;
  msgCopy = msg;
  argsCopy = args;
  manager = [(CBPeer *)self manager];

  if (manager)
  {
    if (self->_state == 2 || !connectedCopy)
    {
      goto LABEL_9;
    }

    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBClassicPeer sendMsg:requiresConnected:args:];
      if (argsCopy)
      {
        goto LABEL_11;
      }
    }

    else
    {
LABEL_9:
      if (argsCopy)
      {
LABEL_11:
        identifier = [(CBPeer *)self identifier];
        [argsCopy setObject:identifier forKeyedSubscript:@"kCBMsgArgDeviceUUID"];

        manager2 = [(CBPeer *)self manager];
        [manager2 sendMsg:msgCopy args:argsCopy];

LABEL_12:
        return;
      }
    }

    argsCopy = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
    goto LABEL_11;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_12;
  }

  [CBPeripheral sendMsg:requiresConnected:args:];
}

- (id)sendSyncMsg:(int)msg args:(id)args
{
  msgCopy = msg;
  argsCopy = args;
  if (!argsCopy)
  {
    argsCopy = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  }

  identifier = [(CBPeer *)self identifier];
  [argsCopy setObject:identifier forKeyedSubscript:@"kCBMsgArgDeviceUUID"];

  manager = [(CBPeer *)self manager];
  v9 = [manager sendSyncMsg:msgCopy args:argsCopy];

  return v9;
}

- (BOOL)sendMsg:(int)msg args:(id)args withReply:(id)reply
{
  msgCopy = msg;
  argsCopy = args;
  replyCopy = reply;
  if (!argsCopy)
  {
    argsCopy = [MEMORY[0x1E695DF90] dictionaryWithCapacity:1];
  }

  identifier = [(CBPeer *)self identifier];
  [argsCopy setObject:identifier forKeyedSubscript:@"kCBMsgArgDeviceUUID"];

  manager = [(CBPeer *)self manager];
  v12 = [manager sendMsg:msgCopy args:argsCopy withReply:replyCopy];

  return v12;
}

- (void)handleMsg:(int)msg args:(id)args
{
  v4 = *&msg;
  argsCopy = args;
  v7 = &selRef_handleVisibilityChanged_;
  v8 = &selRef_handleNameUpdated_;
  switch(v4)
  {
    case 27:
      v7 = &selRef_handleL2CAPChannelOpened_;
      if (self->_state == 2)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    case 28:
      v7 = &selRef_handleL2CAPChannelClosed_;
      if (self->_state != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 32:
      v7 = &selRef_handleL2CAPChannelDidReceiveData_;
      if (self->_state != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 189:
      goto LABEL_33;
    case 190:
      v7 = &selRef_handleServicesChanged_;
      if (self->_state != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 191:
      v7 = &selRef_handleRSSIUpdated_;
      if (self->_state != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 192:
      v7 = &selRef_handleServicesDiscovered_;
      if (self->_state != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 193:
      v7 = &selRef_handleTimeSyncResponse_;
      goto LABEL_34;
    case 196:
      goto LABEL_34;
    case 201:
      v7 = &selRef_handleServiceIncludedServicesDiscovered_;
      if (self->_state != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 202:
      v7 = &selRef_handleServiceCharacteristicsDiscovered_;
      if (self->_state != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 208:
      v7 = &selRef_handleCharacteristicValueUpdated_;
      if (self->_state != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 209:
      v7 = &selRef_handleCharacteristicValueWritten_;
      if (self->_state != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 211:
      v7 = &selRef_handleCharacteristicValueNotifying_;
      if (self->_state != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 212:
      v7 = &selRef_handleCharacteristicDescriptorsDiscovered_;
      if (self->_state != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 215:
      v7 = &selRef_handleDescriptorValueUpdated_;
      if (self->_state != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 216:
      v7 = &selRef_handleDescriptorValueWritten_;
      if (self->_state != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 234:
      v8 = &selRef_handleCSProcedureEventForDeviceMsg_;
LABEL_33:
      v7 = v8;
      if (self->_state == 2)
      {
LABEL_34:
        [self *v7];
      }

      else
      {
LABEL_36:
        if (CBLogInitOnce != -1)
        {
          [CBClassicPeer dealloc];
        }

        if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
        {
          [CBPeripheral handleMsg:args:];
        }

        else
        {
LABEL_3:
        }
      }

      return;
    case 236:
    case 246:
    case 247:
    case 248:
    case 249:
    case 250:
    case 251:
    case 252:
    case 253:
    case 254:
    case 255:
      [(CBPeripheral *)self handleLEAudioMsg:v4 args:argsCopy];
      goto LABEL_3;
    default:
      v9.receiver = self;
      v9.super_class = CBPeripheral;
      [(CBPeer *)&v9 handleMsg:v4 args:argsCopy];

      return;
  }
}

- (void)invalidateAllAttributes
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_services;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(CBPeripheral *)self setServices:0];
}

- (void)handleSuccessfulConnection:(id)connection
{
  connectionCopy = connection;
  v8 = [connectionCopy objectForKeyedSubscript:@"kCBMsgArgATTMTU"];
  v5 = [connectionCopy objectForKeyedSubscript:@"kCBMsgArgIsLinkEncrypted"];
  v6 = [connectionCopy objectForKeyedSubscript:@"kCBMsgArgConnectionTransport"];
  v7 = [connectionCopy objectForKeyedSubscript:@"kCBMsgArgConnectionRole"];

  [(CBPeer *)self setHostState:0];
  -[CBPeer setMtuLength:](self, "setMtuLength:", [v8 unsignedIntegerValue]);
  -[CBPeer setIsLinkEncrypted:](self, "setIsLinkEncrypted:", [v5 BOOLValue]);
  [(CBPeripheral *)self setCanSendWriteWithoutResponse:1];
  -[CBPeer setConnectedTransport:](self, "setConnectedTransport:", [v6 unsignedIntegerValue]);
  if (v7)
  {
    -[CBPeer setRole:](self, "setRole:", [v7 unsignedIntegerValue]);
  }

  [(CBPeripheral *)self setState:2];
}

- (void)handleDisconnection
{
  [(CBPeripheral *)self setRSSI:0];
  [(CBPeripheral *)self setState:0];
  [(CBPeer *)self setHostState:0];
  [(CBPeer *)self setMtuLength:23];
  [(CBPeer *)self setIsLinkEncrypted:0];
  [(CBPeripheral *)self setCanSendWriteWithoutResponse:0];
  [(CBPeer *)self setRole:-1];
  [(CBPeripheral *)self invalidateAllAttributes];

  [(CBPeripheral *)self setRemoteControllerId:0];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"delegate", object, change, context}])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFFE | objc_opt_respondsToSelector() & 1);

    v8 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFFD | v9);

    v10 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v11 = 4;
    }

    else
    {
      v11 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFFB | v11);

    v12 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v13 = 8;
    }

    else
    {
      v13 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFF7 | v13);

    v14 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v15 = 16;
    }

    else
    {
      v15 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFEF | v15);

    v16 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v17 = 32;
    }

    else
    {
      v17 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFDF | v17);

    v18 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v19 = 64;
    }

    else
    {
      v19 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFFBF | v19);

    v20 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v21 = 128;
    }

    else
    {
      v21 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFF7F | v21);

    v22 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v23 = 256;
    }

    else
    {
      v23 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFEFF | v23);

    v24 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v25 = 512;
    }

    else
    {
      v25 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFDFF | v25);

    v26 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v27 = 1024;
    }

    else
    {
      v27 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFFBFF | v27);

    v28 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v29 = 2048;
    }

    else
    {
      v29 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFF7FF | v29);

    v30 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v31 = 4096;
    }

    else
    {
      v31 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFEFFF | v31);

    v32 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v33 = 0x2000;
    }

    else
    {
      v33 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFDFFF | v33);

    v34 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v35 = 0x4000;
    }

    else
    {
      v35 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFFBFFF | v35);

    v36 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v37 = 0x8000;
    }

    else
    {
      v37 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFF7FFF | v37);

    v39 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v38 = 0x10000;
    }

    else
    {
      v38 = 0;
    }

    self->_delegateFlags = (*&self->_delegateFlags & 0xFFFEFFFF | v38);
  }
}

- (void)readRSSI
{
  if ((*&self->_delegateFlags & 4) != 0)
  {
    goto LABEL_5;
  }

  selfCopy = self;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v3 = os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR);
  self = selfCopy;
  if (v3)
  {
    [CBPeripheral readRSSI];
    [(CBPeripheral *)selfCopy sendMsg:186 args:0];
  }

  else
  {
LABEL_5:
    [(CBPeripheral *)self sendMsg:186 args:0];
  }
}

- (void)discoverServices:(NSArray *)serviceUUIDs
{
  v4 = serviceUUIDs;
  if ((*&self->_delegateFlags & 0x10) == 0)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBPeripheral discoverServices:];
    }
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v5, @"kCBMsgArgUUIDs", 0}];
  [(CBPeripheral *)self sendMsg:187 args:v6];
}

- (void)discoverIncludedServices:(NSArray *)includedServiceUUIDs forService:(CBService *)service
{
  v6 = includedServiceUUIDs;
  v7 = service;
  if (!v7)
  {
    [CBPeripheral discoverIncludedServices:forService:];
  }

  if ((*&self->_delegateFlags & 0x20) == 0)
  {
    if (CBLogInitOnce == -1)
    {
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    else
    {
      [CBClassicPeer dealloc];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    [CBPeripheral discoverIncludedServices:forService:];
  }

LABEL_6:
  peripheral = [(CBService *)v7 peripheral];

  if (peripheral == self)
  {
    v9 = MEMORY[0x1E695DF90];
    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = MEMORY[0x1E695E0F0];
    }

    startHandle = [(CBService *)v7 startHandle];
    endHandle = [(CBService *)v7 endHandle];
    v13 = [v9 dictionaryWithObjectsAndKeys:{v10, @"kCBMsgArgUUIDs", startHandle, @"kCBMsgArgServiceStartHandle", endHandle, @"kCBMsgArgServiceEndHandle", 0}];
    [(CBPeripheral *)self sendMsg:199 args:v13];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer handlePeerUpdated:];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      [CBPeripheral discoverIncludedServices:forService:];
    }
  }

LABEL_14:
}

- (void)discoverCharacteristics:(NSArray *)characteristicUUIDs forService:(CBService *)service
{
  v6 = characteristicUUIDs;
  v7 = service;
  if (!v7)
  {
    [CBPeripheral discoverCharacteristics:forService:];
  }

  if ((*&self->_delegateFlags & 0x40) == 0)
  {
    if (CBLogInitOnce == -1)
    {
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    else
    {
      [CBClassicPeer dealloc];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    [CBPeripheral discoverCharacteristics:forService:];
  }

LABEL_6:
  peripheral = [(CBService *)v7 peripheral];

  if (peripheral == self)
  {
    v9 = MEMORY[0x1E695DF90];
    if (v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = MEMORY[0x1E695E0F0];
    }

    startHandle = [(CBService *)v7 startHandle];
    endHandle = [(CBService *)v7 endHandle];
    v13 = [v9 dictionaryWithObjectsAndKeys:{v10, @"kCBMsgArgUUIDs", startHandle, @"kCBMsgArgServiceStartHandle", endHandle, @"kCBMsgArgServiceEndHandle", 0}];
    [(CBPeripheral *)self sendMsg:200 args:v13];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer handlePeerUpdated:];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
LABEL_9:
      [CBPeripheral discoverIncludedServices:forService:];
    }
  }

LABEL_14:
}

- (void)readValueForCharacteristic:(CBCharacteristic *)characteristic
{
  v4 = characteristic;
  if (!v4)
  {
    [CBPeripheral readValueForCharacteristic:];
  }

  if ((*&self->_delegateFlags & 0x80) == 0)
  {
    if (CBLogInitOnce == -1)
    {
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    else
    {
      [CBClassicPeer dealloc];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    [CBPeripheral readValueForCharacteristic:];
  }

LABEL_6:
  peripheral = [(CBCharacteristic *)v4 peripheral];

  if (peripheral == self)
  {
    v6 = MEMORY[0x1E695DF90];
    handle = [(CBCharacteristic *)v4 handle];
    valueHandle = [(CBCharacteristic *)v4 valueHandle];
    v9 = [v6 dictionaryWithObjectsAndKeys:{handle, @"kCBMsgArgCharacteristicHandle", valueHandle, @"kCBMsgArgCharacteristicValueHandle", 0}];
    [(CBPeripheral *)self sendMsg:203 args:v9];

    goto LABEL_11;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
    if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
LABEL_9:
    [CBPeripheral readValueForCharacteristic:];
  }

LABEL_11:
}

- (NSUInteger)maximumWriteValueLengthForType:(CBCharacteristicWriteType)type
{
  if (type == CBCharacteristicWriteWithResponse)
  {
    return 512;
  }

  if (type != CBCharacteristicWriteWithoutResponse)
  {
    return 0;
  }

  v5 = [(CBPeer *)self mtuLength:v3];
  if (v5 - 3 >= 0x200)
  {
    return 512;
  }

  else
  {
    return v5 - 3;
  }
}

- (void)isReadyForUpdates
{
  writesPending = [(CBPeripheral *)self writesPending];
  [(CBPeripheral *)self setWritesPending:0];
  [(CBPeripheral *)self setCanSendWriteWithoutResponse:1];
  if (writesPending)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v5 = WeakRetained;
      v6 = objc_loadWeakRetained(&self->_delegate);
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        [v8 peripheralIsReadyToSendWriteWithoutResponse:self];
      }
    }
  }
}

- (void)writeValue:(NSData *)data forCharacteristic:(CBCharacteristic *)characteristic type:(CBCharacteristicWriteType)type
{
  v8 = data;
  v9 = characteristic;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CBPeripheral writeValue:forCharacteristic:type:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [CBPeripheral writeValue:forCharacteristic:type:];
LABEL_3:
  peripheral = [(CBCharacteristic *)v10 peripheral];

  if (peripheral == self)
  {
    if (type == CBCharacteristicWriteWithoutResponse && ([(CBCharacteristic *)v10 properties]& 4) == 0)
    {
      if (CBLogInitOnce != -1)
      {
        [CBClassicPeer dealloc];
      }

      if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        [CBPeripheral writeValue:forCharacteristic:type:];
      }
    }

    v12 = MEMORY[0x1E695DF90];
    handle = [(CBCharacteristic *)v10 handle];
    valueHandle = [(CBCharacteristic *)v10 valueHandle];
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v16 = [v12 dictionaryWithObjectsAndKeys:{handle, @"kCBMsgArgCharacteristicHandle", valueHandle, @"kCBMsgArgCharacteristicValueHandle", v8, @"kCBMsgArgData", v15, @"kCBMsgArgType", 0}];
    [(CBPeripheral *)self sendMsg:204 args:v16];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBPeripheral readValueForCharacteristic:];
    }
  }

  if (type == CBCharacteristicWriteWithoutResponse)
  {
    [(CBPeripheral *)self setWritesPending:[(CBPeripheral *)self writesPending]+ 1];
    [(CBPeripheral *)self setCanSendWriteWithoutResponse:[(CBPeripheral *)self writesPending]== 0];
  }
}

- (void)setBroadcastValue:(BOOL)value forCharacteristic:(id)characteristic
{
  valueCopy = value;
  characteristicCopy = characteristic;
  if (!characteristicCopy)
  {
    [CBPeripheral setBroadcastValue:forCharacteristic:];
  }

  peripheral = [characteristicCopy peripheral];

  if (peripheral == self)
  {
    v8 = MEMORY[0x1E695DF90];
    handle = [characteristicCopy handle];
    valueHandle = [characteristicCopy valueHandle];
    v11 = [MEMORY[0x1E696AD98] numberWithBool:valueCopy];
    v12 = [v8 dictionaryWithObjectsAndKeys:{handle, @"kCBMsgArgCharacteristicHandle", valueHandle, @"kCBMsgArgCharacteristicValueHandle", v11, @"kCBMsgArgState", 0}];
    [(CBPeripheral *)self sendMsg:205 args:v12];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBPeripheral readValueForCharacteristic:];
    }
  }
}

- (void)setNotifyValue:(BOOL)enabled forCharacteristic:(CBCharacteristic *)characteristic
{
  v4 = enabled;
  v6 = characteristic;
  if (!v6)
  {
    [CBPeripheral setNotifyValue:forCharacteristic:];
  }

  peripheral = [(CBCharacteristic *)v6 peripheral];

  if (peripheral == self)
  {
    v8 = MEMORY[0x1E695DF90];
    handle = [(CBCharacteristic *)v6 handle];
    valueHandle = [(CBCharacteristic *)v6 valueHandle];
    v11 = [MEMORY[0x1E696AD98] numberWithBool:v4];
    v12 = [v8 dictionaryWithObjectsAndKeys:{handle, @"kCBMsgArgCharacteristicHandle", valueHandle, @"kCBMsgArgCharacteristicValueHandle", v11, @"kCBMsgArgState", 0}];
    [(CBPeripheral *)self sendMsg:206 args:v12];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBPeripheral readValueForCharacteristic:];
    }
  }
}

- (void)discoverDescriptorsForCharacteristic:(CBCharacteristic *)characteristic
{
  v4 = characteristic;
  if (!v4)
  {
    [CBPeripheral discoverDescriptorsForCharacteristic:];
  }

  if ((*(&self->_delegateFlags + 1) & 4) == 0)
  {
    if (CBLogInitOnce == -1)
    {
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    else
    {
      [CBClassicPeer dealloc];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    [CBPeripheral discoverDescriptorsForCharacteristic:];
  }

LABEL_6:
  peripheral = [(CBCharacteristic *)v4 peripheral];

  if (peripheral == self)
  {
    v6 = MEMORY[0x1E695DF90];
    handle = [(CBCharacteristic *)v4 handle];
    valueHandle = [(CBCharacteristic *)v4 valueHandle];
    v9 = [v6 dictionaryWithObjectsAndKeys:{handle, @"kCBMsgArgCharacteristicHandle", valueHandle, @"kCBMsgArgCharacteristicValueHandle", 0}];
    [(CBPeripheral *)self sendMsg:207 args:v9];

    goto LABEL_11;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
    if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
LABEL_9:
    [CBPeripheral readValueForCharacteristic:];
  }

LABEL_11:
}

- (void)readValueForDescriptor:(CBDescriptor *)descriptor
{
  v4 = descriptor;
  if (!v4)
  {
    [CBPeripheral readValueForDescriptor:];
  }

  if ((*(&self->_delegateFlags + 1) & 8) == 0)
  {
    if (CBLogInitOnce == -1)
    {
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    else
    {
      [CBClassicPeer dealloc];
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_6;
      }
    }

    [CBPeripheral readValueForDescriptor:];
  }

LABEL_6:
  peripheral = [(CBDescriptor *)v4 peripheral];

  if (peripheral == self)
  {
    v6 = MEMORY[0x1E695DF90];
    handle = [(CBDescriptor *)v4 handle];
    v8 = [v6 dictionaryWithObjectsAndKeys:{handle, @"kCBMsgArgDescriptorHandle", 0}];
    [(CBPeripheral *)self sendMsg:213 args:v8];

    goto LABEL_11;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
    if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
LABEL_9:
    [CBPeripheral readValueForDescriptor:];
  }

LABEL_11:
}

- (void)writeValue:(NSData *)data forDescriptor:(CBDescriptor *)descriptor
{
  v6 = data;
  v7 = descriptor;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CBPeripheral writeValue:forDescriptor:];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  [CBPeripheral writeValue:forDescriptor:];
LABEL_3:
  uUID = [(CBAttribute *)v8 UUID];
  v10 = [CBUUID UUIDWithString:@"2902"];
  v11 = [uUID isEqual:v10];

  if (v11)
  {
    [CBPeripheral writeValue:forDescriptor:];
  }

  peripheral = [(CBDescriptor *)v8 peripheral];

  if (peripheral == self)
  {
    v13 = MEMORY[0x1E695DF90];
    handle = [(CBDescriptor *)v8 handle];
    v15 = [v13 dictionaryWithObjectsAndKeys:{handle, @"kCBMsgArgDescriptorHandle", v6, @"kCBMsgArgData", 0}];
    [(CBPeripheral *)self sendMsg:214 args:v15];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBPeripheral readValueForDescriptor:];
    }
  }
}

- (void)getRangingTones:(id)tones
{
  tonesCopy = tones;
  v8 = tonesCopy;
  if (!tonesCopy)
  {
    [CBPeripheral getRangingTones:];
    tonesCopy = MEMORY[0x1E695E0F8];
  }

  v5 = MEMORY[0x1E695DF90];
  identifier = [(CBPeer *)self identifier];
  v7 = [v5 dictionaryWithObjectsAndKeys:{identifier, @"kCBMsgArgDeviceUUID", tonesCopy, @"kCBMsgArgOptions", 0}];
  [(CBPeripheral *)self sendMsg:198 args:v7];
}

- (void)setPeripheralName:(id)name
{
  nameCopy = name;
  v8 = nameCopy;
  if (!nameCopy)
  {
    [CBPeripheral setPeripheralName:];
    nameCopy = 0;
  }

  [(CBPeripheral *)self setName:nameCopy];
  v5 = MEMORY[0x1E695DF90];
  identifier = [(CBPeer *)self identifier];
  v7 = [v5 dictionaryWithObjectsAndKeys:{identifier, @"kCBMsgArgDeviceUUID", v8, @"kCBMsgArgName", 0}];
  [(CBPeripheral *)self sendMsg:194 args:v7];
}

- (void)setHighPriorityStream:(BOOL)stream duration:(id)duration
{
  streamCopy = stream;
  v6 = MEMORY[0x1E695DF90];
  durationCopy = duration;
  identifier = [(CBPeer *)self identifier];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:streamCopy];
  v9 = [v6 dictionaryWithObjectsAndKeys:{identifier, @"kCBMsgArgDeviceUUID", v8, @"kCBMsgArgSetHighPriorityStream", durationCopy, @"kCBMsgArgHighPriorityStreamDuration", 0}];

  [(CBPeripheral *)self sendMsg:195 args:v9];
}

- (void)openL2CAPChannel:(unsigned __int16)channel priority:(int64_t)priority
{
  channelCopy = channel;
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"kCBL2CAPChannelPriority";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:priority];
  v9[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [(CBPeripheral *)self openL2CAPChannel:channelCopy options:v7];
}

- (void)openPacketL2CAPChannel:(unsigned __int16)channel withIncomingMTU:(unsigned __int16)u options:(id)options
{
  uCopy = u;
  channelCopy = channel;
  if (options)
  {
    v8 = [options mutableCopy];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v10 = v8;
  [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"kCBManagerRequiresPacketBasedLEL2CAPInterface"];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:uCopy];
  [v10 setObject:v9 forKeyedSubscript:@"kCBL2CAPChannelMaxIncomingPayloadSize"];

  [(CBPeripheral *)self openL2CAPChannel:channelCopy options:v10];
}

- (void)openL2CAPChannel:(unsigned __int16)channel options:(id)options
{
  channelCopy = channel;
  optionsCopy = options;
  if (!channelCopy)
  {
    [CBPeripheral openL2CAPChannel:options:];
  }

  v6 = MEMORY[0x1E695DF90];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:channelCopy];
  v8 = MEMORY[0x1E695E0F8];
  if (optionsCopy)
  {
    v8 = optionsCopy;
  }

  v9 = [v6 dictionaryWithObjectsAndKeys:{v7, @"kCBMsgArgPSM", v8, @"kCBMsgArgOptions", 0}];
  [(CBPeripheral *)self sendMsg:29 args:v9];
}

- (id)l2capChannelForPeer:(id)peer withPsm:(unsigned __int16)psm
{
  psmCopy = psm;
  v22 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_l2capChannels;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      peer = [v12 peer];
      if ([peer isEqual:peerCopy])
      {
        v14 = [v12 PSM];

        if (v14 == psmCopy)
        {
          v15 = v12;

          goto LABEL_17;
        }
      }

      else
      {
      }

      if (v9 == ++v11)
      {
        v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (!v9)
        {
          break;
        }

        goto LABEL_4;
      }
    }
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    [CBPeripheral l2capChannelForPeer:withPsm:];
  }

  v15 = 0;
LABEL_17:

  return v15;
}

- (id)l2capChannelForPeer:(id)peer withCID:(unsigned __int16)d
{
  dCopy = d;
  v22 = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_l2capChannels;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      peer = [v12 peer];
      if ([peer isEqual:peerCopy])
      {
        v14 = [v12 cid];

        if (v14 == dCopy)
        {
          v15 = v12;

          goto LABEL_17;
        }
      }

      else
      {
      }

      if (v9 == ++v11)
      {
        v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (!v9)
        {
          break;
        }

        goto LABEL_4;
      }
    }
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer handlePeerUpdated:];
  }

  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    [CBPeripheral l2capChannelForPeer:withCID:];
  }

  v15 = 0;
LABEL_17:

  return v15;
}

- (void)enableFastLeConnection:(BOOL)connection withInfo:(id)info completion:(id)completion
{
  connectionCopy = connection;
  infoCopy = info;
  completionCopy = completion;
  v10 = objc_opt_new();
  identifier = [(CBPeer *)self identifier];
  [v10 setObject:identifier forKeyedSubscript:@"kCBMsgArgDeviceUUID"];

  v12 = [MEMORY[0x1E696AD98] numberWithBool:connectionCopy];
  [v10 setObject:v12 forKeyedSubscript:@"kCBMsgArgEnable"];

  if (infoCopy && [infoCopy length])
  {
    [v10 setObject:infoCopy forKeyedSubscript:@"kCBFastLeConnectionInfoData"];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__CBPeripheral_enableFastLeConnection_withInfo_completion___block_invoke;
  v14[3] = &unk_1E811CFC8;
  v15 = completionCopy;
  v13 = completionCopy;
  [(CBPeripheral *)self sendMsg:197 args:v10 withReply:v14];
}

void __59__CBPeripheral_enableFastLeConnection_withInfo_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, a3);
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithInfo:a2];
    (*(v3 + 16))(v3, v6);
  }
}

- (void)handleNameUpdated:(id)updated
{
  v5 = [updated objectForKeyedSubscript:@"kCBMsgArgName"];
  [(CBPeripheral *)self setName:?];
  if (*&self->_delegateFlags)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained peripheralDidUpdateName:self];
  }
}

- (void)handleServicesChanged:(id)changed
{
  v29 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = [changedCopy objectForKeyedSubscript:@"kCBMsgArgServiceStartHandle"];
  v21 = changedCopy;
  v23 = [changedCopy objectForKeyedSubscript:@"kCBMsgArgServiceEndHandle"];
  array = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  selfCopy = self;
  v6 = self->_services;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        endHandle = [v11 endHandle];
        unsignedShortValue = [endHandle unsignedShortValue];
        if (unsignedShortValue < [v5 unsignedShortValue])
        {
        }

        else
        {
          startHandle = [v11 startHandle];
          unsignedShortValue2 = [startHandle unsignedShortValue];
          unsignedShortValue3 = [v23 unsignedShortValue];

          if (unsignedShortValue2 <= unsignedShortValue3)
          {
            [v11 invalidate];
            [array addObject:v11];
          }
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  if ([array count])
  {
    v17 = [(NSArray *)selfCopy->_services mutableCopy];
    [v17 removeObjectsInArray:array];
    [(CBPeripheral *)selfCopy setServices:v17];
  }

  if ((*&selfCopy->_delegateFlags & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    [WeakRetained peripheral:selfCopy didModifyServices:array];

    v18 = v21;
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer handlePeerUpdated:];
    }

    v18 = v21;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      [CBPeripheral handleServicesChanged:];
    }
  }
}

- (void)handleRSSIUpdated:(id)updated
{
  updatedCopy = updated;
  v8 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgData"];
  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:updatedCopy];

  delegateFlags = self->_delegateFlags;
  if ((*&delegateFlags & 4) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained peripheral:self didReadRSSI:v8 error:v5];
LABEL_8:

    goto LABEL_9;
  }

  if (!v5)
  {
    [(CBPeripheral *)self setRSSI:v8];
    if ((*&self->_delegateFlags & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ((*&delegateFlags & 8) != 0)
  {
LABEL_7:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained peripheralDidUpdateRSSI:self error:v5];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)handleVisibilityChanged:(id)changed
{
  v4 = [changed objectForKeyedSubscript:@"kCBMsgArgVisibleInSettings"];
  self->_visibleInSettings = [v4 BOOLValue];
}

- (void)handleTimeSyncResponse:(id)response
{
  responseCopy = response;
  v4 = [MEMORY[0x1E696ABC0] errorWithInfo:?];
  if ((*(&self->_delegateFlags + 1) & 0x20) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [responseCopy objectForKeyedSubscript:@"kCBMsgArgTimeOfDay"];
    v7 = [responseCopy objectForKeyedSubscript:@"kCBMsgArgLocalRefTime"];
    v8 = [responseCopy objectForKeyedSubscript:@"kCBMsgArgRemoteRefTime"];
    v9 = [responseCopy objectForKeyedSubscript:@"kCBMsgArgTimeToSend"];
    v10 = [responseCopy objectForKeyedSubscript:@"kCBMsgArgGMTDelta"];
    [WeakRetained peripheral:self didReceiveTimeSyncWithReferenceTime:v6 localAbsolute:v7 remoteAbsolute:v8 receiveTime:v9 GMTDelta:v10 error:v4];
  }
}

- (void)handleCSProcedureEventForDeviceMsg:(id)msg
{
  msgCopy = msg;
  v4 = [MEMORY[0x1E696ABC0] errorWithInfo:?];
  if ((*(&self->_delegateFlags + 1) & 0x40) != 0)
  {
    delegate = [(CBPeripheral *)self delegate];
    [delegate peripheral:self didCompleteChannelSoundingProcedure:msgCopy error:v4];
  }
}

- (void)handleServicesDiscovered:(id)discovered
{
  v32 = *MEMORY[0x1E69E9840];
  discoveredCopy = discovered;
  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:discoveredCopy];
  if (!v5)
  {
    v22 = discoveredCopy;
    v7 = [discoveredCopy objectForKeyedSubscript:@"kCBMsgArgServices"];
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:self->_services];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (!v10)
    {
LABEL_29:

      v21 = [v8 copy];
      [(CBPeripheral *)self setServices:v21];

      v5 = 0;
      discoveredCopy = v22;
      if ((*&self->_delegateFlags & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_3;
    }

    v11 = v10;
    v12 = *v24;
LABEL_8:
    v13 = 0;
    while (1)
    {
      if (*v24 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v23 + 1) + 8 * v13);
      v16 = [v15 objectForKeyedSubscript:@"kCBMsgArgServiceStartHandle"];
      v14 = [(CBPeripheral *)self attributeForHandle:v16];
      if (v14)
      {
        if (([v8 containsObject:v14] & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v18 = [v15 objectForKeyedSubscript:@"kCBMsgArgUUID"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [v18 length] != 2 && objc_msgSend(v18, "length") != 4 && objc_msgSend(v18, "length") != 16)
        {
          if (CBLogInitOnce != -1)
          {
            [CBClassicPeer handlePeerUpdated:];
          }

          v20 = CBLogComponent;
          if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            selfCopy = self;
            v29 = 2112;
            selfCopy2 = v16;
            _os_log_debug_impl(&dword_1C0AC1000, v20, OS_LOG_TYPE_DEBUG, "Data in %@ does not contain a valid UUID for service handle = %@", buf, 0x16u);
          }

          v14 = 0;
          goto LABEL_10;
        }

        v14 = [[CBService alloc] initWithPeripheral:self dictionary:v15];
        startHandle = [(CBService *)v14 startHandle];
        [(CBPeripheral *)self setAttribute:v14 forHandle:startHandle];

        if (([v8 containsObject:v14] & 1) == 0)
        {
LABEL_15:
          [v8 addObject:v14];
          if (CBLogInitOnce != -1)
          {
            [CBClassicPeer handlePeerUpdated:];
          }

          v17 = CBLogComponent;
          if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            selfCopy = v14;
            v29 = 2112;
            selfCopy2 = self;
            _os_log_debug_impl(&dword_1C0AC1000, v17, OS_LOG_TYPE_DEBUG, "Added %@ to %@", buf, 0x16u);
          }
        }
      }

LABEL_10:

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (!v11)
        {
          goto LABEL_29;
        }

        goto LABEL_8;
      }
    }
  }

  if ((*&self->_delegateFlags & 0x10) != 0)
  {
LABEL_3:
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained peripheral:self didDiscoverServices:v5];
  }

LABEL_4:
}

- (void)handleL2CAPChannelOpened:(id)opened
{
  openedCopy = opened;
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEBUG))
  {
    [CBPeripheral handleL2CAPChannelOpened:v5];
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithInfo:openedCopy];
  if (v6)
  {
    if (CBLogInitOnce == -1)
    {
      v7 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }
    }

    else
    {
      [CBClassicPeer handlePeerUpdated:];
      v7 = CBLogComponent;
      if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
      {
LABEL_8:
        v8 = 0;
        if ((*(&self->_delegateFlags + 1) & 0x80) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

    [CBPeripheral handleL2CAPChannelOpened:v7];
    v8 = 0;
    if ((*(&self->_delegateFlags + 1) & 0x80) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    delegate = [(CBPeripheral *)self delegate];
    [delegate peripheral:self didOpenL2CAPChannel:v8 error:v6];

    goto LABEL_12;
  }

  v9 = [CBL2CAPChannel alloc];
  manager = [(CBPeer *)self manager];
  v8 = [(CBL2CAPChannel *)v9 initWithPeer:self manager:manager info:openedCopy];

  [(NSHashTable *)self->_l2capChannels addObject:v8];
  if ((*(&self->_delegateFlags + 1) & 0x80) != 0)
  {
    goto LABEL_11;
  }

LABEL_12:
}

- (void)handleL2CAPChannelClosed:(id)closed
{
  v19 = *MEMORY[0x1E69E9840];
  closedCopy = closed;
  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:closedCopy];
  v6 = [closedCopy objectForKey:@"kCBMsgArgPSM"];
  intValue = [v6 intValue];

  v8 = [closedCopy objectForKey:@"kCBMsgArgCID"];
  intValue2 = [v8 intValue];

  v10 = [(CBPeripheral *)self l2capChannelForPeer:self withCID:intValue2];
  if (v10 || ([(CBPeripheral *)self l2capChannelForPeer:self withPsm:intValue], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    [v10 handleChannelClosed:closedCopy];
    if (*(&self->_delegateFlags + 2))
    {
      delegate = [(CBPeripheral *)self delegate];
      [delegate peripheral:self didCloseL2CAPChannel:v11];
    }

    [(NSHashTable *)self->_l2capChannels removeObject:v11];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v13 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      v14[0] = 67109634;
      v14[1] = intValue;
      v15 = 1024;
      v16 = intValue2;
      v17 = 2112;
      v18 = v5;
      _os_log_error_impl(&dword_1C0AC1000, v13, OS_LOG_TYPE_ERROR, "Cannot find l2CAP channel closed with psm:%u cid:%u and result:%@", v14, 0x18u);
    }
  }
}

- (void)handleL2CAPChannelDidReceiveData:(id)data
{
  v18 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = [MEMORY[0x1E696ABC0] errorWithInfo:dataCopy];
  v6 = [dataCopy objectForKey:@"kCBMsgArgPSM"];
  intValue = [v6 intValue];

  v8 = [dataCopy objectForKey:@"kCBMsgArgCID"];
  intValue2 = [v8 intValue];

  v10 = [(CBPeripheral *)self l2capChannelForPeer:self withCID:intValue2];
  if (v10 || ([(CBPeripheral *)self l2capChannelForPeer:self withPsm:intValue], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    [v10 handleDataReceived:dataCopy];
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v12 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
    {
      v13[0] = 67109634;
      v13[1] = intValue;
      v14 = 1024;
      v15 = intValue2;
      v16 = 2112;
      v17 = v5;
      _os_log_error_impl(&dword_1C0AC1000, v12, OS_LOG_TYPE_ERROR, "Cannot find l2CAP channel received Data with psm:%u cid:%u and result:%@", v13, 0x18u);
    }
  }
}

- (void)sendLEAudioMsg:(id)msg args:(id)args completion:(id)completion
{
  completionCopy = completion;
  argsCopy = args;
  msgCopy = msg;
  manager = [(CBPeer *)self manager];
  [manager sendLEAudioMsg:msgCopy args:argsCopy completion:completionCopy];
}

- (void)setVolume:(unsigned __int8)volume withResponse:(id)response
{
  volumeCopy = volume;
  v14 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  *uuid = 0;
  v13 = 0;
  identifier = [(CBPeer *)self identifier];
  [identifier getUUIDBytes:uuid];
  *keys = xmmword_1E811E6C8;
  v9 = xpc_uuid_create(uuid);
  v10 = xpc_int64_create(volumeCopy);
  v8 = xpc_dictionary_create(keys, &v9, 2uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgSetVolume" args:v8 completion:responseCopy];
}

- (void)setVolumeOffSet:(unsigned int)set withOffSetValue:(signed __int16)value withResponse:(id)response
{
  valueCopy = value;
  v18 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  *uuid = 0;
  v17 = 0;
  identifier = [(CBPeer *)self identifier];
  [identifier getUUIDBytes:uuid];
  *keys = xmmword_1E811E6D8;
  v15 = "kCBMsgArgLEAudioVolumeOffset";
  values = xpc_uuid_create(uuid);
  v12 = xpc_uint64_create(set);
  v13 = xpc_int64_create(valueCopy);
  v10 = xpc_dictionary_create(keys, &values, 3uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgSetVolumeOffSet" args:v10 completion:responseCopy];
}

- (void)setVolumeMute:(int64_t)mute withResponse:(id)response
{
  v14 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  *uuid = 0;
  v13 = 0;
  identifier = [(CBPeer *)self identifier];
  [identifier getUUIDBytes:uuid];
  *keys = xmmword_1E811E6F0;
  v9 = xpc_uuid_create(uuid);
  v10 = xpc_uint64_create(mute);
  v8 = xpc_dictionary_create(keys, &v9, 2uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgSetVolumeMute" args:v8 completion:responseCopy];
}

- (void)writeVolumeAudioInput:(int64_t)input forAudioInputType:(unsigned __int8)type withOptionalGain:(char)gain withResponse:(id)response
{
  gainCopy = gain;
  typeCopy = type;
  v21 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  *uuid = 0;
  v20 = 0;
  identifier = [(CBPeer *)self identifier];
  [identifier getUUIDBytes:uuid];
  *keys = xmmword_1E811E700;
  v18 = *&off_1E811E710;
  v13 = xpc_uuid_create(uuid);
  v14 = xpc_uint64_create(input);
  v15 = xpc_uint64_create(typeCopy);
  v16 = xpc_int64_create(gainCopy);
  v12 = xpc_dictionary_create(keys, &v13, 4uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgWriteVolumeAudioInput" args:v12 completion:responseCopy];
}

- (void)setMicrophoneMute:(int64_t)mute withResponse:(id)response
{
  v14 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  *uuid = 0;
  v13 = 0;
  identifier = [(CBPeer *)self identifier];
  [identifier getUUIDBytes:uuid];
  *keys = xmmword_1E811E720;
  v9 = xpc_uuid_create(uuid);
  v10 = xpc_uint64_create(mute);
  v8 = xpc_dictionary_create(keys, &v9, 2uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgSetMicrophoneMute" args:v8 completion:responseCopy];
}

- (void)writeMicrophoneAudioInput:(int64_t)input forAudioInputType:(unsigned __int8)type withOptionalGain:(char)gain withResponse:(id)response
{
  gainCopy = gain;
  typeCopy = type;
  v21 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  *uuid = 0;
  v20 = 0;
  identifier = [(CBPeer *)self identifier];
  [identifier getUUIDBytes:uuid];
  *keys = xmmword_1E811E730;
  v18 = *&off_1E811E740;
  v13 = xpc_uuid_create(uuid);
  v14 = xpc_uint64_create(input);
  v15 = xpc_uint64_create(typeCopy);
  v16 = xpc_int64_create(gainCopy);
  v12 = xpc_dictionary_create(keys, &v13, 4uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgWriteMicrophoneAudioInput" args:v12 completion:responseCopy];
}

- (void)readPresets:(id)presets
{
  v11 = *MEMORY[0x1E69E9840];
  *uuid = 0;
  v10 = 0;
  presetsCopy = presets;
  identifier = [(CBPeer *)self identifier];
  [identifier getUUIDBytes:uuid];

  keys = "kCBMsgArgLEAudioDeviceUUID";
  values = xpc_uuid_create(uuid);
  v6 = xpc_dictionary_create(&keys, &values, 1uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgReadPresets" args:v6 completion:presetsCopy];
}

- (void)setActivePreset:(int64_t)preset OptionalPresetIndex:(unsigned __int8)index withResponse:(id)response
{
  indexCopy = index;
  v18 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  *uuid = 0;
  v17 = 0;
  identifier = [(CBPeer *)self identifier];
  [identifier getUUIDBytes:uuid];
  *keys = xmmword_1E811E750;
  v15 = "kCBMsgArgLEAudioPresetIndex";
  values = xpc_uuid_create(uuid);
  v12 = xpc_uint64_create(preset);
  v13 = xpc_uint64_create(indexCopy);
  v10 = xpc_dictionary_create(keys, &values, 3uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgSetActivePreset" args:v10 completion:responseCopy];
}

- (void)writePresetName:(unsigned __int8)name withName:(id)withName withResponse:(id)response
{
  nameCopy = name;
  v20 = *MEMORY[0x1E69E9840];
  withNameCopy = withName;
  responseCopy = response;
  *uuid = 0;
  v19 = 0;
  identifier = [(CBPeer *)self identifier];
  [identifier getUUIDBytes:uuid];
  *keys = xmmword_1E811E768;
  v17 = "kCBMsgArgLEAudioPresetName";
  v15 = 0;
  values = xpc_uuid_create(uuid);
  v14 = xpc_uint64_create(nameCopy);
  v11 = withNameCopy;
  v15 = xpc_string_create([withNameCopy UTF8String]);
  v12 = xpc_dictionary_create(keys, &values, 3uLL);
  [(CBPeripheral *)self sendLEAudioMsg:@"kCBMsgWritePresetName" args:v12 completion:responseCopy];
}

- (void)handleLEAudioMsg:(int)msg args:(id)args
{
  v16 = *MEMORY[0x1E69E9840];
  argsCopy = args;
  if (msg - 236) < 0x14 && ((0xFFC01u >> (msg + 20)))
  {
    if (self->_state == 2)
    {
      [self *off_1E811E7A0[msg - 236]];
      goto LABEL_10;
    }

    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v11 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      selfCopy = self;
      v14 = 1024;
      msgCopy = msg;
      v8 = "%@ is not connected, ignoring message: %u";
      v9 = v11;
      v10 = 18;
      goto LABEL_9;
    }
  }

  else
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v7 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 67109120;
      LODWORD(selfCopy) = msg;
      v8 = "Unhandled message: %d";
      v9 = v7;
      v10 = 8;
LABEL_9:
      _os_log_impl(&dword_1C0AC1000, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, v10);
    }
  }

LABEL_10:
}

- (void)handleLEAudioConnected:(id)connected
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [connected objectForKeyedSubscript:@"kCBMsgArgLEAudioServiceID"];
  if ([v4 unsignedIntValue] == 4)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v5 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "Set LE Audio device type: %@", &v6, 0xCu);
    }

    [(CBPeripheral *)self setLEAudioDeviceType:1];
  }
}

- (void)handleLEAudioVolumeUpdated:(id)updated
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [updated objectForKeyedSubscript:@"kCBMsgArgLEAudioVolume"];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "handleLEAudioVolumeUpdated, %@", &v7, 0xCu);
  }

  v6 = [[CBLEAudioPeripheralUpdateEvent alloc] initWithValue:1 withValue:v4];
  [(CBPeripheral *)self handleLEAudioEvents:v6];
}

- (void)handleLEAudioPresetUpdated:(id)updated
{
  v29 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  v4 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgLEAudioDevicePresetIndexes"];
  v5 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgLEAudioDevicePresetProperties"];
  v20 = updatedCopy;
  v6 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgLEAudioDevicePresetNames"];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v7 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *buf = 67109890;
    LOBYTE(v22) = [v4 count];
    v22 = v22;
    v23 = 2112;
    v24 = v4;
    v25 = 2112;
    v26 = v5;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_1C0AC1000, v8, OS_LOG_TYPE_DEFAULT, "handleLEAudioPresetUpdated, size:%d, %@, %@, %@", buf, 0x26u);
  }

  v18 = [[CBLEAudioHearingAidUpdateEvent alloc] initWithEventType:8];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v4 count])
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = [v4 objectAtIndexedSubscript:v10];
      unsignedCharValue = [v12 unsignedCharValue];

      v14 = [v5 objectAtIndexedSubscript:v10];
      unsignedCharValue2 = [v14 unsignedCharValue];

      v16 = [v6 objectAtIndexedSubscript:v10];
      v17 = [[CBLEAudioHearingAidPreset alloc] initWithValues:unsignedCharValue withProperty:unsignedCharValue2 withName:v16];
      [v9 addObject:v17];

      v10 = ++v11;
    }

    while ([v4 count] > v11);
  }

  [(CBLEAudioHearingAidUpdateEvent *)v18 setPresetResults:v9];
  [(CBPeripheral *)self handleLEAudioEvents:v18];
}

- (void)handleLEAudioVolumeOffsetUpdated:(id)updated
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [updated objectForKeyedSubscript:@"kCBMsgArgLEAudioVolumeOffset"];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "handleLEAudioVolumeOffsetUpdated, %@", &v7, 0xCu);
  }

  v6 = [[CBLEAudioPeripheralUpdateEvent alloc] initWithValue:2 withValue:v4];
  [(CBPeripheral *)self handleLEAudioEvents:v6];
}

- (void)handleLEAudioVolumeMuteUpdated:(id)updated
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [updated objectForKeyedSubscript:@"kCBMsgArgLEAudioVolumeMuteState"];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "handleLEAudioVolumeMuteUpdated, %@", &v7, 0xCu);
  }

  v6 = [[CBLEAudioPeripheralUpdateEvent alloc] initWithValue:4 withValue:v4];
  [(CBPeripheral *)self handleLEAudioEvents:v6];
}

- (void)handleLEAudioVolumeGainUpdated:(id)updated
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [updated objectForKeyedSubscript:@"kCBMsgArgLEAudioVolumeGain"];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "handleLEAudioVolumeGainUpdated, %@", &v7, 0xCu);
  }

  v6 = [[CBLEAudioPeripheralUpdateEvent alloc] initWithValue:3 withValue:v4];
  [(CBPeripheral *)self handleLEAudioEvents:v6];
}

- (void)handleLEAudioMicrophoneMuteUpdated:(id)updated
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [updated objectForKeyedSubscript:@"kCBMsgArgLEAudioMicrophoneMuteState"];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "handleLEAudioMicrophoneMuteUpdated, %@", &v7, 0xCu);
  }

  v6 = [[CBLEAudioPeripheralUpdateEvent alloc] initWithValue:5 withValue:v4];
  [(CBPeripheral *)self handleLEAudioEvents:v6];
}

- (void)handleLEAudioMicrophoneGainUpdated:(id)updated
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [updated objectForKeyedSubscript:@"kCBMsgArgLEAudioMicrophoneGain"];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "handleLEAudioMicrophoneGainUpdated, %@", &v7, 0xCu);
  }

  v6 = [[CBLEAudioPeripheralUpdateEvent alloc] initWithValue:6 withValue:v4];
  [(CBPeripheral *)self handleLEAudioEvents:v6];
}

- (void)handleLEAudioActivePresetUpdated:(id)updated
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [updated objectForKeyedSubscript:@"kCBMsgArgLEAudioPresetIndex"];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "handleLEAudioActivePresetUpdated, %@", &v7, 0xCu);
  }

  v6 = [[CBLEAudioHearingAidUpdateEvent alloc] initWithValue:9 withValue:v4];
  [(CBPeripheral *)self handleLEAudioEvents:v6];
}

- (void)handleLEAudioPresetNameUpdated:(id)updated
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [updated objectForKeyedSubscript:@"kCBMsgArgLEAudioPresetIndex"];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v5 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1C0AC1000, v5, OS_LOG_TYPE_DEFAULT, "handleLEAudioActivePresetUpdated, %@", &v7, 0xCu);
  }

  v6 = [[CBLEAudioHearingAidUpdateEvent alloc] initWithValue:10 withValue:v4];
  [(CBPeripheral *)self handleLEAudioEvents:v6];
}

- (void)handleLEAudioHearingAidFeaturesUpdated:(id)updated
{
  v14 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  v5 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgLEAudioHearingAidType"];
  v6 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgLEAudioHearingAidSyncSupported"];
  v7 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgLEAudioHearingAidIndependent"];
  v8 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgLEAudioHearingAidDynamic"];
  v9 = [updatedCopy objectForKeyedSubscript:@"kCBMsgArgLEAudioHearingAidWritable"];
  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  v10 = CBLogComponent;
  if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = updatedCopy;
    _os_log_impl(&dword_1C0AC1000, v10, OS_LOG_TYPE_DEFAULT, "handleLEAudioHearingAidFeaturesUpdated, %@", &v12, 0xCu);
  }

  self->_hearingAidType = [v5 unsignedCharValue];
  self->_presetSyncSupported = [v6 BOOLValue];
  self->_independentPresets = [v7 BOOLValue];
  self->_dynamicPresets = [v8 BOOLValue];
  self->_writablePresets = [v9 BOOLValue];
  v11 = [[CBLEAudioHearingAidUpdateEvent alloc] initWithEventType:7];
  [(CBPeripheral *)self handleLEAudioEvents:v11];
}

- (void)handleLEAudioEvents:(id)events
{
  eventsCopy = events;
  updateHandler = [(CBPeripheral *)self updateHandler];

  if (updateHandler)
  {
    if (CBLogInitOnce != -1)
    {
      [CBClassicPeer dealloc];
    }

    v6 = CBLogComponent;
    if (os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C0AC1000, v6, OS_LOG_TYPE_DEFAULT, "Calling LE audio event handler", v8, 2u);
    }

    updateHandler2 = [(CBPeripheral *)self updateHandler];
    (updateHandler2)[2](updateHandler2, self, eventsCopy);

LABEL_7:
    return;
  }

  if (CBLogInitOnce != -1)
  {
    [CBClassicPeer dealloc];
  }

  if (!os_log_type_enabled(CBLogComponent, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  [CBPeripheral handleLEAudioEvents:];
}

- (void)handleAttributeEvent:(id)event args:(id)args attributeSelector:(SEL)selector delegateSelector:(SEL)delegateSelector delegateFlag:(BOOL)flag
{
  flagCopy = flag;
  argsCopy = args;
  v12 = [(CBPeripheral *)self attributeForHandle:event];
  if (v12)
  {
    v13 = v12;
    v14 = [MEMORY[0x1E696ABC0] errorWithInfo:argsCopy];
    if (!v14)
    {
      selector = [v13 selector];

      v13 = selector;
    }

    if (v13 && flagCopy)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained delegateSelector];
    }
  }

  MEMORY[0x1EEE66BE0](v12);
}

- (void)handleServiceEvent:(id)event serviceSelector:(SEL)selector delegateSelector:(SEL)delegateSelector delegateFlag:(BOOL)flag
{
  flagCopy = flag;
  eventCopy = event;
  v11 = [eventCopy objectForKeyedSubscript:@"kCBMsgArgServiceStartHandle"];
  [(CBPeripheral *)self handleAttributeEvent:v11 args:eventCopy attributeSelector:selector delegateSelector:delegateSelector delegateFlag:flagCopy];
}

- (void)handleCharacteristicEvent:(id)event characteristicSelector:(SEL)selector delegateSelector:(SEL)delegateSelector delegateFlag:(BOOL)flag
{
  flagCopy = flag;
  eventCopy = event;
  v11 = [eventCopy objectForKeyedSubscript:@"kCBMsgArgCharacteristicHandle"];
  [(CBPeripheral *)self handleAttributeEvent:v11 args:eventCopy attributeSelector:selector delegateSelector:delegateSelector delegateFlag:flagCopy];
}

- (void)handleDescriptorEvent:(id)event descriptorSelector:(SEL)selector delegateSelector:(SEL)delegateSelector delegateFlag:(BOOL)flag
{
  flagCopy = flag;
  eventCopy = event;
  v11 = [eventCopy objectForKeyedSubscript:@"kCBMsgArgDescriptorHandle"];
  [(CBPeripheral *)self handleAttributeEvent:v11 args:eventCopy attributeSelector:selector delegateSelector:delegateSelector delegateFlag:flagCopy];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleMsg:args:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&dword_1C0AC1000, v1, OS_LOG_TYPE_DEBUG, "%@ is not connected, ignoring message: %u", v2, 0x12u);
}

- (void)discoverIncludedServices:forService:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"service != nil" object:? file:? lineNumber:? description:?];
}

- (void)discoverIncludedServices:forService:.cold.5()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)discoverCharacteristics:forService:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"service != nil" object:? file:? lineNumber:? description:?];
}

- (void)readValueForCharacteristic:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"characteristic != nil" object:? file:? lineNumber:? description:?];
}

- (void)readValueForCharacteristic:.cold.5()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)writeValue:forCharacteristic:type:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"data != nil" object:? file:? lineNumber:? description:?];
}

- (void)writeValue:forCharacteristic:type:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"characteristic != nil" object:? file:? lineNumber:? description:?];
}

- (void)setBroadcastValue:forCharacteristic:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"characteristic != nil" object:? file:? lineNumber:? description:?];
}

- (void)setNotifyValue:forCharacteristic:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"characteristic != nil" object:? file:? lineNumber:? description:?];
}

- (void)discoverDescriptorsForCharacteristic:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"characteristic != nil" object:? file:? lineNumber:? description:?];
}

- (void)readValueForDescriptor:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"descriptor != nil" object:? file:? lineNumber:? description:?];
}

- (void)readValueForDescriptor:.cold.5()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)writeValue:forDescriptor:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"data != nil" object:? file:? lineNumber:? description:?];
}

- (void)writeValue:forDescriptor:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"descriptor != nil" object:? file:? lineNumber:? description:?];
}

- (void)writeValue:forDescriptor:.cold.3()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)getRangingTones:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"options != nil" object:? file:? lineNumber:? description:?];
}

- (void)setPeripheralName:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"name" object:? file:? lineNumber:? description:?];
}

- (void)openL2CAPChannel:options:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_2();
  [v0 handleFailureInMethod:@"psm > 0" object:? file:? lineNumber:? description:?];
}

- (void)l2capChannelForPeer:withPsm:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)l2capChannelForPeer:withCID:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

@end