@interface AccessoryTransportPluginNFC
- (BOOL)_checkLRC:(id)c;
- (BOOL)_checkProductTypeCompatibility:(unsigned __int8)compatibility;
- (BOOL)_connectToTagId:(id)id;
- (BOOL)_getpowerPauseStatus;
- (BOOL)_handleSessionOpen:(BOOL)open forEndpointWithUUID:(id)d connectionUUID:(id)iD;
- (BOOL)_hasWalletOnClearCase2020:(id)case2020;
- (BOOL)_initXPC;
- (BOOL)_requiresLegacyAuth:(id)auth;
- (BOOL)_requiresMfi40Auth:(id)auth;
- (BOOL)_tagsHavePowerBits:(unsigned __int8)bits uuid:(id *)uuid;
- (BOOL)sendOutgoingData:(id)data forEndpointWithUUID:(id)d connectionUUID:(id)iD;
- (id)_decodeTagIdentifier:(id)identifier;
- (int)_animationDelayMs:(unsigned __int8)ms;
- (unint64_t)_getTimeSinceLastRequestPowerPauseMs;
- (unsigned)_getAccessoryFamily:(id)family;
- (unsigned)_getAccessoryType:(id)type;
- (unsigned)_getNfcStateMachineState;
- (void)_closeReaderSession;
- (void)_connectPeer:(id)peer;
- (void)_createEndpointsForTags:(id)tags skipWalletAuth:(BOOL)auth;
- (void)_didNfcTagsListChange:(id)change;
- (void)_didScreenStateChange:(BOOL)change;
- (void)_getNfcStateMachineState;
- (void)_handleIOHIDEvent:(__IOHIDEvent *)event;
- (void)_handleNearFieldAccessoryEventNotification:(id)notification;
- (void)_notifyAuthReadyAfterPowerPauseComplete;
- (void)_pollTags:(unsigned int)tags;
- (void)_requestPowerPause;
- (void)_setProximityMonitoringEnabled:(BOOL)enabled;
- (void)_setScreenStateMonitoringEnabled:(BOOL)enabled;
- (void)_updateAccessoryPower:(BOOL)power;
- (void)initPlugin;
- (void)propertiesDidChange:(id)change forEndpointWithUUID:(id)d previousProperties:(id)properties connectionUUID:(id)iD;
- (void)readerSession:(id)session didDetectTags:(id)tags;
- (void)readerSessionDidEndUnexpectedly:(id)unexpectedly;
- (void)startPlugin;
- (void)stopPlugin;
@end

@implementation AccessoryTransportPluginNFC

- (void)initPlugin
{
  init_logging();
  v15.receiver = self;
  v15.super_class = AccessoryTransportPluginNFC;
  [(ACCTransportPlugin *)&v15 initPlugin];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_2336E3000, v5, OS_LOG_TYPE_DEFAULT, "Initializing NFC transport plugin", v14, 2u);
  }

  readerSession = self->_readerSession;
  self->_readerSession = 0;

  polledTags = self->_polledTags;
  self->_polledTags = 0;

  polledSem = self->_polledSem;
  self->_polledSem = 0;

  self->_proximityOcclusionState = -1;
  self->_screenState = -1;
  self->_hidEventClient = 0;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  tagForConnectionUuid = self->_tagForConnectionUuid;
  self->_tagForConnectionUuid = v9;

  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  connectionUuidForEndpointUuid = self->_connectionUuidForEndpointUuid;
  self->_connectionUuidForEndpointUuid = v11;

  lastRequestPowerPauseTime = self->_lastRequestPowerPauseTime;
  self->_lastRequestPowerPauseTime = 0;
}

- (void)startPlugin
{
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2336E3000, v5, OS_LOG_TYPE_DEFAULT, "Starting NFC transport plugin", buf, 2u);
  }

  if ((NearFieldFrameworkAvailable_available & 1) != 0 || (NFAccessoryHardwareManagerClass = getNFAccessoryHardwareManagerClass(), NearFieldFrameworkAvailable_available = NFAccessoryHardwareManagerClass != 0, NFAccessoryHardwareManagerClass))
  {
    readerSession = self->_readerSession;
    self->_readerSession = 0;

    connectedTag = self->_connectedTag;
    self->_connectedTag = 0;

    self->_screenStateToken = -1;
    v14.receiver = self;
    v14.super_class = AccessoryTransportPluginNFC;
    [(ACCTransportPlugin *)&v14 startPlugin];
    [(AccessoryTransportPluginNFC *)self _initXPC];
    v9 = 1;
    [(AccessoryTransportPluginNFC *)self _setScreenStateMonitoringEnabled:1];
    [(AccessoryTransportPluginNFC *)self _setProximityMonitoringEnabled:1];
    sharedHardwareManager = [getNFAccessoryHardwareManagerClass() sharedHardwareManager];
    v11 = [sharedHardwareManager enableMultiTag:0];

    sharedHardwareManager2 = [getNFAccessoryHardwareManagerClass() sharedHardwareManager];
    v13 = [sharedHardwareManager2 enableMultiTag:1];
  }

  else
  {
    v9 = 0;
  }

  [(AccessoryTransportPluginNFC *)self setIsRunning:v9];
}

- (void)stopPlugin
{
  v34 = *MEMORY[0x277D85DE8];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2336E3000, v5, OS_LOG_TYPE_DEFAULT, "Stopping NFC transport plugin", buf, 2u);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  allKeys = [(NSMutableDictionary *)self->_connectionUuidForEndpointUuid allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        [(ACCTransportPlugin *)self destroyEndpointWithUUID:v11];
        [(NSMutableDictionary *)self->_connectionUuidForEndpointUuid removeObjectForKey:v11];
      }

      v8 = [allKeys countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v8);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  allKeys2 = [(NSMutableDictionary *)self->_tagForConnectionUuid allKeys];
  v13 = [allKeys2 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(allKeys2);
        }

        v17 = *(*(&v23 + 1) + 8 * j);
        [(ACCTransportPlugin *)self destroyConnectionWithUUID:v17];
        [(NSMutableDictionary *)self->_tagForConnectionUuid removeObjectForKey:v17];
      }

      v14 = [allKeys2 countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v14);
  }

  [(AccessoryTransportPluginNFC *)self _setProximityMonitoringEnabled:0];
  [(AccessoryTransportPluginNFC *)self _setScreenStateMonitoringEnabled:0];
  connectionUuidForEndpointUuid = self->_connectionUuidForEndpointUuid;
  self->_connectionUuidForEndpointUuid = 0;

  tagForConnectionUuid = self->_tagForConnectionUuid;
  self->_tagForConnectionUuid = 0;

  polledTags = self->_polledTags;
  self->_polledTags = 0;

  readerSession = self->_readerSession;
  self->_readerSession = 0;

  v22.receiver = self;
  v22.super_class = AccessoryTransportPluginNFC;
  [(ACCTransportPlugin *)&v22 stopPlugin];
  [(AccessoryTransportPluginNFC *)self setIsRunning:0];
}

- (BOOL)sendOutgoingData:(id)data forEndpointWithUUID:(id)d connectionUUID:(id)iD
{
  v66 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  iDCopy = iD;
  if (acc_userDefaultsLogging_BOOLForKey(@"TransportSignpost"))
  {
    v10 = gLogSignpostObjects;
    v11 = gNumLogSignpostObjects;
    if (gLogSignpostObjects)
    {
      v12 = gNumLogSignpostObjects < 4;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC sendOutgoingData:v10 forEndpointWithUUID:v11 connectionUUID:?];
      }

      v14 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    else
    {
      v14 = *(gLogSignpostObjects + 24);
    }

    v15 = [(NSData *)dCopy hash];
    if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = v15;
      if (os_signpost_enabled(v14))
      {
        *buf = 138412546;
        v63 = dCopy;
        v64 = 2048;
        v65 = [dataCopy length];
        _os_signpost_emit_with_name_impl(&dword_2336E3000, v14, OS_SIGNPOST_EVENT, v16, "Endpoint SEND", "Send outgoing data! %@, %lu bytes", buf, 0x16u);
      }
    }
  }

  v53 = dCopy;
  if (!self->_readerSession || !self->_connectedTag)
  {
    v35 = logObjectForModule();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2336E3000, v35, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: sendOutgoingData: !_readerSession || !_connectedTag", buf, 2u);
    }

    v20 = 0;
    v18 = 0;
    goto LABEL_103;
  }

  v17 = [(NSMutableDictionary *)self->_connectionUuidForEndpointUuid valueForKey:dCopy];
  v18 = v17;
  if (!v17 || ([v17 isEqualToString:iDCopy] & 1) == 0)
  {
    v35 = logObjectForModule();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v52 = "NFC transport plugin: sendOutgoingData: !uuid || !equal";
LABEL_101:
      _os_log_impl(&dword_2336E3000, v35, OS_LOG_TYPE_DEFAULT, v52, buf, 2u);
    }

LABEL_102:
    v20 = 0;
LABEL_103:
    v36 = 0;
LABEL_76:
    v45 = 0;
LABEL_92:

    goto LABEL_93;
  }

  v19 = [(NSMutableDictionary *)self->_tagForConnectionUuid valueForKey:iDCopy];
  if (!v19)
  {
    v35 = logObjectForModule();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v52 = "NFC transport plugin: sendOutgoingData: !requestedTag";
      goto LABEL_101;
    }

    goto LABEL_102;
  }

  v20 = v19;
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v21 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v21 = MEMORY[0x277D86220];
    v22 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    connectedTagId = self->_connectedTagId;
    tagID = [v20 tagID];
    *buf = 138412546;
    v63 = connectedTagId;
    v64 = 2112;
    v65 = tagID;
    _os_log_impl(&dword_2336E3000, v21, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: sendOutgoingData: sameTagId? %@ ?= %@", buf, 0x16u);
  }

  if ([(AccessoryTransportPluginNFC *)self _tagsHavePowerBits:48 uuid:0]&& [(AccessoryTransportPluginNFC *)self _getTimeSinceLastRequestPowerPauseMs]>= 0x5DD && ![(AccessoryTransportPluginNFC *)self _getpowerPauseStatus])
  {
    [(AccessoryTransportPluginNFC *)self _requestPowerPause];
    usleep(0x30D40u);
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v25 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v25 = MEMORY[0x277D86220];
      v26 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      _getpowerPauseStatus = [(AccessoryTransportPluginNFC *)self _getpowerPauseStatus];
      *buf = 67109120;
      LODWORD(v63) = _getpowerPauseStatus;
      _os_log_impl(&dword_2336E3000, v25, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: sendOutgoingData: powerPause:0->%d", buf, 8u);
    }
  }

  tagID2 = [v20 tagID];
  v29 = [(AccessoryTransportPluginNFC *)self _requiresMfi40Auth:tagID2];

  if (v29)
  {
    v61 = 43520;
    v60[0] = 0;
    v57 = -256;
    v30 = [MEMORY[0x277CBEB28] dataWithBytes:&v61 length:4];
    v58 = [dataCopy length];
    v59 = [dataCopy length] >> 8;
    [(NSData *)v30 appendBytes:v60 length:1];
    [(NSData *)v30 appendBytes:&v59 length:1];
    [(NSData *)v30 appendBytes:&v58 length:1];
    [(NSData *)v30 appendData:dataCopy];
    [(NSData *)v30 appendBytes:&v57 + 1 length:1];
    [(NSData *)v30 appendBytes:&v57 length:1];
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v31 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v31 = MEMORY[0x277D86220];
      v37 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v63 = v30;
      _os_log_impl(&dword_2336E3000, v31, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: sendOutgoingData: %@", buf, 0xCu);
    }

    readerSession = self->_readerSession;
    v56 = 0;
    v35 = [(NFAccessoryReaderSession *)readerSession transceive:v30 error:&v56];
    v36 = v56;
  }

  else
  {
    tagID3 = [v20 tagID];
    v33 = [(AccessoryTransportPluginNFC *)self _requiresLegacyAuth:tagID3];

    if (!v33)
    {
      v35 = 0;
      goto LABEL_56;
    }

    v34 = self->_readerSession;
    v55 = 0;
    v35 = [(NFAccessoryReaderSession *)v34 sendAccessoryProtocolCommand:dataCopy outError:&v55];
    v36 = v55;
  }

  if (v36)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v39 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v39 = MEMORY[0x277D86220];
      v43 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v63 = v36;
      _os_log_impl(&dword_2336E3000, v39, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: cmdError: %@", buf, 0xCu);
    }

    v44 = logObjectForModule();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v63 = v36;
      _os_log_impl(&dword_2336E3000, v44, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: sendOutgoingData failed: Error: %@", buf, 0xCu);
    }

    goto LABEL_76;
  }

LABEL_56:
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v40 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v40 = MEMORY[0x277D86220];
    v41 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2336E3000, v40, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: sendOutgoingData completed", buf, 2u);
  }

  if (v35)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v42 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v42 = MEMORY[0x277D86220];
      v46 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v63 = v35;
      _os_log_impl(&dword_2336E3000, v42, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: dataIn: %@", buf, 0xCu);
    }

    v47 = [v35 subdataWithRange:0, [v35 length]- 2];
    v48 = [v35 subdataWithRange:[v35 length]- 2, 2];
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v49 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v49 = MEMORY[0x277D86220];
      v50 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v63 = v48;
      _os_log_impl(&dword_2336E3000, v49, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: dataIn status: %@", buf, 0xCu);
    }

    v45 = [(ACCTransportPlugin *)self processIncomingData:v47 forEndpointWithUUID:v53];
    v36 = 0;
    goto LABEL_92;
  }

  v36 = 0;
  v45 = 1;
LABEL_93:

  return v45;
}

- (void)propertiesDidChange:(id)change forEndpointWithUUID:(id)d previousProperties:(id)properties connectionUUID:(id)iD
{
  changeCopy = change;
  dCopy = d;
  iDCopy = iD;
  v12 = [changeCopy valueForKey:*MEMORY[0x277CFD310]];

  if (v12)
  {
    queue = self->_queue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __105__AccessoryTransportPluginNFC_propertiesDidChange_forEndpointWithUUID_previousProperties_connectionUUID___block_invoke;
    v14[3] = &unk_2789EBE10;
    v15 = changeCopy;
    selfCopy = self;
    v17 = dCopy;
    v18 = iDCopy;
    dispatch_async(queue, v14);
  }
}

void __105__AccessoryTransportPluginNFC_propertiesDidChange_forEndpointWithUUID_previousProperties_connectionUUID___block_invoke(uint64_t a1)
{
  *&v41[5] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) valueForKey:*MEMORY[0x277CFD310]];
  v3 = [v2 BOOLValue];

  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v41[0] = v3;
    _os_log_impl(&dword_2336E3000, v6, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: propertiesDidChange, open = %d", buf, 8u);
  }

  if (v3)
  {
    v7 = *(a1 + 40);
    if (v7[15])
    {
      if (([*(a1 + 48) isEqualToString:?] & 1) == 0)
      {
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v8 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [AccessoryTransportPluginNFC initPlugin];
          }

          v8 = MEMORY[0x277D86220];
          v21 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(a1 + 48);
          *buf = 138412290;
          *v41 = v22;
          _os_log_impl(&dword_2336E3000, v8, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: propertiesDidChange, queued, uuid = %@", buf, 0xCu);
        }

        v23 = *(*(a1 + 40) + 128);
        if (v23 || ([MEMORY[0x277CBEB18] arrayWithCapacity:1], v24 = objc_claimAutoreleasedReturnValue(), v25 = *(a1 + 40), v26 = *(v25 + 128), *(v25 + 128) = v24, v26, (v23 = *(*(a1 + 40) + 128)) != 0))
        {
          if (([v23 containsObject:*(a1 + 48)] & 1) == 0)
          {
            [*(*(a1 + 40) + 128) addObject:*(a1 + 48)];
          }
        }
      }
    }

    else
    {
      v11 = [v7 _handleSessionOpen:1 forEndpointWithUUID:*(a1 + 48) connectionUUID:*(a1 + 56)];
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v12 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v12 = MEMORY[0x277D86220];
        v18 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v41[0] = 1;
        LOWORD(v41[1]) = 1024;
        *(&v41[1] + 2) = v11;
        _os_log_impl(&dword_2336E3000, v12, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: propertiesDidChange, open:%d, success:%d", buf, 0xEu);
      }

      if (v11)
      {
        v19 = *(a1 + 40);
        v38 = *MEMORY[0x277CFD318];
        v39 = MEMORY[0x277CBEC38];
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        [v19 setProperties:v20 forEndpointWithUUID:*(a1 + 48)];
      }
    }
  }

  else if ([*(a1 + 48) isEqualToString:*(*(a1 + 40) + 120)])
  {
    v9 = [*(a1 + 40) _handleSessionOpen:0 forEndpointWithUUID:*(a1 + 48) connectionUUID:*(a1 + 56)];
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v10 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v10 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v41[0] = 0;
      LOWORD(v41[1]) = 1024;
      *(&v41[1] + 2) = v9;
      _os_log_impl(&dword_2336E3000, v10, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: propertiesDidChange, open:%d, success:%d", buf, 0xEu);
    }

    if (v9)
    {
      v14 = *(a1 + 40);
      v15 = *MEMORY[0x277CFD318];
      v36 = *MEMORY[0x277CFD318];
      v37 = MEMORY[0x277CBEC28];
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      [v14 setProperties:v16 forEndpointWithUUID:*(a1 + 48)];

      if (gLogObjects && gNumLogObjects >= 1)
      {
        v17 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v17 = MEMORY[0x277D86220];
        v27 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(*(a1 + 40) + 128);
        *buf = 138412290;
        *v41 = v28;
        _os_log_impl(&dword_2336E3000, v17, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: propertiesDidChange, queue:%@", buf, 0xCu);
      }

      v29 = *(*(a1 + 40) + 128);
      if (v29 && [v29 count])
      {
        v30 = [*(*(a1 + 40) + 128) firstObject];
        if (v30)
        {
          v31 = [*(*(a1 + 40) + 56) valueForKey:v30];
          if (v31 && [*(a1 + 40) _handleSessionOpen:1 forEndpointWithUUID:v30 connectionUUID:v31])
          {
            v32 = *(a1 + 40);
            v34 = v15;
            v35 = MEMORY[0x277CBEC38];
            v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
            [v32 setProperties:v33 forEndpointWithUUID:v30];
          }

          [*(*(a1 + 40) + 128) removeObject:v30];
        }
      }
    }
  }
}

- (void)readerSessionDidEndUnexpectedly:(id)unexpectedly
{
  queue = self->_queue;
  if (queue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__AccessoryTransportPluginNFC_readerSessionDidEndUnexpectedly___block_invoke;
    block[3] = &unk_2789EBE38;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

void __63__AccessoryTransportPluginNFC_readerSessionDidEndUnexpectedly___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _getpowerPauseStatus];
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v9 = v2;
    _os_log_impl(&dword_2336E3000, v5, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: Session ended unexpectedly: powerPause:%d", buf, 8u);
  }

  [*(a1 + 32) _closeReaderSession];
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__AccessoryTransportPluginNFC_readerSessionDidEndUnexpectedly___block_invoke_27;
  block[3] = &unk_2789EBE38;
  block[4] = *(a1 + 32);
  dispatch_async(v6, block);
}

uint64_t __63__AccessoryTransportPluginNFC_readerSessionDidEndUnexpectedly___block_invoke_27(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2336E3000, v4, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: restart auth", v6, 2u);
  }

  return [*(a1 + 32) _notifyAuthReadyAfterPowerPauseComplete];
}

- (void)readerSession:(id)session didDetectTags:(id)tags
{
  v15 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  tagsCopy = tags;
  if (gLogObjects)
  {
    v8 = gNumLogObjects < 1;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v10 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  else
  {
    v10 = *gLogObjects;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = tagsCopy;
    _os_log_impl(&dword_2336E3000, v10, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: didDetectTags: %@", &v13, 0xCu);
  }

  polledTags = self->_polledTags;
  self->_polledTags = tagsCopy;
  v12 = tagsCopy;

  dispatch_semaphore_signal(self->_polledSem);
}

- (BOOL)_initXPC
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.accessoryd.nf-events", v3);
  queue = self->_queue;
  self->_queue = v4;

  mach_service = xpc_connection_create_mach_service("com.apple.accessoryd.nf-events", self->_queue, 1uLL);
  listenerConnection = self->_listenerConnection;
  self->_listenerConnection = mach_service;

  if (!self->_listenerConnection)
  {
    [AccessoryTransportPluginNFC _initXPC];
  }

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v8 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v8 = MEMORY[0x277D86220];
    v9 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2336E3000, v8, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _initXPC", buf, 2u);
  }

  xpc_set_event_stream_handler("com.apple.accessoryd.nf-events", self->_queue, &__block_literal_global_1);
  v10 = self->_listenerConnection;
  if (gLogObjects)
  {
    v11 = gNumLogObjects <= 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v10)
  {
    if (v12)
    {
      v13 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v13 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2336E3000, v13, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _listenerConnection", buf, 2u);
    }

    v16 = self->_listenerConnection;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __39__AccessoryTransportPluginNFC__initXPC__block_invoke_32;
    handler[3] = &unk_2789EBE80;
    handler[4] = self;
    xpc_connection_set_event_handler(v16, handler);
    xpc_connection_activate(self->_listenerConnection);
  }

  else
  {
    if (v12)
    {
      v14 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v14 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2336E3000, v14, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: could not create listener connection.", buf, 2u);
    }
  }

  return v10 != 0;
}

void __39__AccessoryTransportPluginNFC__initXPC__block_invoke(int a1, xpc_object_t xdict)
{
  v9 = *MEMORY[0x277D85DE8];
  string = xpc_dictionary_get_string(xdict, *MEMORY[0x277D86430]);
  if (string)
  {
    v3 = string;
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 1;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v6 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *gLogObjects;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = v3;
      _os_log_impl(&dword_2336E3000, v6, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: Received %s", &v7, 0xCu);
    }
  }
}

void __39__AccessoryTransportPluginNFC__initXPC__block_invoke_32(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x2383AA970]();
  if (v4 == MEMORY[0x277D86450])
  {
    [*(a1 + 32) _connectPeer:v3];
    goto LABEL_42;
  }

  if (v4 == MEMORY[0x277D86480])
  {
    if (xpc_equal(v3, MEMORY[0x277D863F0]))
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v7 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v7 = MEMORY[0x277D86220];
        v9 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }

      LOWORD(v14) = 0;
      v10 = "NFC transport plugin: Service interrupted: com.apple.accessoryd.nf-events";
    }

    else
    {
      if (!xpc_equal(v3, MEMORY[0x277D863F8]))
      {
        v7 = xpc_dictionary_get_value(v3, *MEMORY[0x277D86400]);
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v11 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [AccessoryTransportPluginNFC initPlugin];
          }

          v11 = MEMORY[0x277D86220];
          v13 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 136315138;
          string_ptr = xpc_string_get_string_ptr(v7);
          _os_log_impl(&dword_2336E3000, v11, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: listener connection error %s", &v14, 0xCu);
        }

        goto LABEL_41;
      }

      if (gLogObjects && gNumLogObjects >= 1)
      {
        v7 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v7 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
LABEL_41:

        goto LABEL_42;
      }

      LOWORD(v14) = 0;
      v10 = "NFC transport plugin: Service not available: com.apple.accessoryd.nf-events";
    }

    _os_log_impl(&dword_2336E3000, v7, OS_LOG_TYPE_DEFAULT, v10, &v14, 2u);
    goto LABEL_41;
  }

  v5 = MEMORY[0x2383AA930](v3);
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v6 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v6 = MEMORY[0x277D86220];
    v8 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136446210;
    string_ptr = v5;
    _os_log_impl(&dword_2336E3000, v6, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: received error or other non-connection type in handler for listener: %{public}s.", &v14, 0xCu);
  }

  free(v5);
LABEL_42:
}

- (void)_connectPeer:(id)peer
{
  v20 = *MEMORY[0x277D85DE8];
  peerCopy = peer;
  dispatch_assert_queue_V2(self->_queue);
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2336E3000, v7, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: connecting peer", buf, 2u);
  }

  peers = self->_peers;
  if (!peers)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = self->_peers;
    self->_peers = v9;

    peers = self->_peers;
  }

  [(NSMutableArray *)peers addObject:peerCopy];
  v11 = [(NSMutableArray *)self->_peers count];
  if (v11 >= 2)
  {
    v12 = v11;
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v13 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = v12;
      _os_log_impl(&dword_2336E3000, v13, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: unexpected number of peer connections %lu.", buf, 0xCu);
    }
  }

  xpc_connection_set_target_queue(peerCopy, self->_queue);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __44__AccessoryTransportPluginNFC__connectPeer___block_invoke;
  v16[3] = &unk_2789EBEA8;
  v16[4] = self;
  v17 = peerCopy;
  v15 = peerCopy;
  xpc_connection_set_event_handler(v15, v16);
  xpc_connection_activate(v15);
}

void __44__AccessoryTransportPluginNFC__connectPeer___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x2383AA970]();
  if (v4 == MEMORY[0x277D86468])
  {
    v7 = xpc_dictionary_get_value(v3, "xpcEventName");
    string_ptr = xpc_string_get_string_ptr(v7);

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v9 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v9 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 136315138;
      *&v19[4] = string_ptr;
      _os_log_impl(&dword_2336E3000, v9, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: event name:%s", v19, 0xCu);
    }

    [*(a1 + 32) _handleNearFieldAccessoryEventNotification:0];
  }

  else
  {
    if (v4 != MEMORY[0x277D86480])
    {
      if (gLogObjects)
      {
        v5 = gNumLogObjects < 1;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v13 = MEMORY[0x277D86220];
        v6 = MEMORY[0x277D86220];
      }

      else
      {
        v13 = *gLogObjects;
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      *v19 = 0;
      v14 = "NFC transport plugin: Unexpected data, invalidating the connection.";
      goto LABEL_29;
    }

    if (v3 != MEMORY[0x277D863F0] && v3 != MEMORY[0x277D86420])
    {
      if (gLogObjects)
      {
        v11 = gNumLogObjects <= 0;
      }

      else
      {
        v11 = 1;
      }

      v12 = !v11;
      if (v3 == MEMORY[0x277D863F8])
      {
        if (v12)
        {
          v16 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [AccessoryTransportPluginNFC initPlugin];
          }

          v16 = MEMORY[0x277D86220];
          v18 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&dword_2336E3000, v16, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: disconnecting peer", v19, 2u);
        }

        goto LABEL_31;
      }

      if (v12)
      {
        v13 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v13 = MEMORY[0x277D86220];
        v17 = MEMORY[0x277D86220];
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_30:

        xpc_connection_cancel(*(a1 + 40));
LABEL_31:
        [*(*(a1 + 32) + 208) removeObjectIdenticalTo:{*(a1 + 40), *v19}];
        goto LABEL_38;
      }

      *v19 = 0;
      v14 = "NFC transport plugin: Unexpected error dictionary, invalidating the connection.";
LABEL_29:
      _os_log_impl(&dword_2336E3000, v13, OS_LOG_TYPE_DEFAULT, v14, v19, 2u);
      goto LABEL_30;
    }
  }

LABEL_38:
}

- (void)_notifyAuthReadyAfterPowerPauseComplete
{
  v19 = *MEMORY[0x277D85DE8];
  __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  v15 = 0;
  v3 = [(AccessoryTransportPluginNFC *)self _tagsHavePowerBits:48 uuid:&v15];
  v4 = v15;
  if (v3)
  {
    _getNfcStateMachineState = [(AccessoryTransportPluginNFC *)self _getNfcStateMachineState];
    if ((_getNfcStateMachineState & 0x100) != 0 || __tp.tv_sec > self->_tagsArrivalTime.tv_sec + 3)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v6 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v6 = MEMORY[0x277D86220];
        v7 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v4;
        _os_log_impl(&dword_2336E3000, v6, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _notifyAuthReadyAfterPowerPauseComplete: notify: %@", buf, 0xCu);
      }

      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v4 forKey:@"endpointUUID"];
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"NfcAuthReady" object:0 userInfo:v8];
    }

    else
    {
      v10 = _getNfcStateMachineState;
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v11 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v11 = MEMORY[0x277D86220];
        v12 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v18) = v10;
        _os_log_impl(&dword_2336E3000, v11, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _notifyAuthReadyAfterPowerPauseComplete: delay due to nfcState:0x%x", buf, 8u);
      }

      v13 = dispatch_time(0, 200000000);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __70__AccessoryTransportPluginNFC__notifyAuthReadyAfterPowerPauseComplete__block_invoke;
      v14[3] = &unk_2789EBE38;
      v14[4] = self;
      dispatch_after(v13, MEMORY[0x277D85CD0], v14);
    }
  }
}

- (void)_handleNearFieldAccessoryEventNotification:(id)notification
{
  v64 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_2336E3000, v6, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _handleNearFieldAccessoryEventNotification", &buf, 2u);
  }

  v7 = MEMORY[0x277CBEB18];
  sharedHardwareManager = [getNFAccessoryHardwareManagerClass() sharedHardwareManager];
  v54 = 0;
  v9 = [sharedHardwareManager getMultiTagState:&v54];
  v40 = v54;
  v10 = [v7 arrayWithArray:v9];

  if (gLogObjects && gNumLogObjects >= 1)
  {
    v11 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_2336E3000, v11, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: newTags=%@", &buf, 0xCu);
  }

  v41 = [(AccessoryTransportPluginNFC *)self _tagsHavePowerBits:32 uuid:0];
  polledTags = self->_polledTags;
  self->_polledTags = 0;

  [(AccessoryTransportPluginNFC *)self _didNfcTagsListChange:v10];
  v14 = [(AccessoryTransportPluginNFC *)self _hasWalletOnClearCase2020:v10];
  tagForConnectionUuid = self->_tagForConnectionUuid;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __74__AccessoryTransportPluginNFC__handleNearFieldAccessoryEventNotification___block_invoke;
  v51[3] = &unk_2789EBEF8;
  v16 = v10;
  v52 = v16;
  selfCopy = self;
  [(NSMutableDictionary *)tagForConnectionUuid enumerateKeysAndObjectsUsingBlock:v51];
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v18)
  {
    v19 = *v48;
LABEL_21:
    v20 = 0;
    while (1)
    {
      if (*v48 != v19)
      {
        objc_enumerationMutation(v17);
      }

      tagID = [*(*(&v47 + 1) + 8 * v20) tagID];
      v22 = [(AccessoryTransportPluginNFC *)self _getAccessoryType:tagID];

      if (v22 == 86)
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = [v17 countByEnumeratingWithState:&v47 objects:v59 count:16];
        if (v18)
        {
          goto LABEL_21;
        }

        goto LABEL_27;
      }
    }

    if (gLogObjects && gNumLogObjects >= 1)
    {
      v23 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v23 = MEMORY[0x277D86220];
      v24 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      screenState = self->_screenState;
      LODWORD(buf) = 67109120;
      DWORD1(buf) = screenState;
      _os_log_impl(&dword_2336E3000, v23, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: hasSleeve: _screenState=%d", &buf, 8u);
    }

    v26 = self->_screenState;
    if (v26 == 1)
    {
      if (self->_proximityOcclusionState)
      {
        goto LABEL_45;
      }

      if (gLogObjects && gNumLogObjects >= 1)
      {
        v34 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v34 = MEMORY[0x277D86220];
        v35 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2336E3000, v34, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: wait for delayed prox events", &buf, 2u);
      }

      clock_gettime(_CLOCK_REALTIME, &self->_proxRequestTime);
    }

    else
    {
      if (!v26)
      {
        v55 = 0;
        v56 = &v55;
        v57 = 0x2020000000;
        v27 = getBKSHIDServicesRequestProximityStatusEventSymbolLoc_ptr;
        v58 = getBKSHIDServicesRequestProximityStatusEventSymbolLoc_ptr;
        if (!getBKSHIDServicesRequestProximityStatusEventSymbolLoc_ptr)
        {
          *&buf = MEMORY[0x277D85DD0];
          *(&buf + 1) = 3221225472;
          v61 = __getBKSHIDServicesRequestProximityStatusEventSymbolLoc_block_invoke;
          v62 = &unk_2789EC038;
          v63 = &v55;
          __getBKSHIDServicesRequestProximityStatusEventSymbolLoc_block_invoke(&buf);
          v27 = v56[3];
        }

        _Block_object_dispose(&v55, 8);
        if (!v27)
        {
          [AccessoryTransportPluginNFC _handleNearFieldAccessoryEventNotification:];
          __break(1u);
        }

        v27(@"proxSleeveCheck");
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v28 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [AccessoryTransportPluginNFC initPlugin];
          }

          v28 = MEMORY[0x277D86220];
          v33 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_2336E3000, v28, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: request prox state", &buf, 2u);
        }

        clock_gettime(_CLOCK_REALTIME, &self->_proxRequestTime);
        v29 = 1;
        v30 = 100000000;
        goto LABEL_71;
      }

      if (gLogObjects && gNumLogObjects >= 1)
      {
        v31 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v31 = MEMORY[0x277D86220];
        v32 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2336E3000, v31, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: invalid _screenState value", &buf, 2u);
      }
    }

    v30 = 360000000;
    v29 = 1;
    goto LABEL_71;
  }

LABEL_27:

LABEL_45:
  v29 = 0;
  v30 = -1431655756000000;
LABEL_71:
  self->_waitProxState = v29;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __74__AccessoryTransportPluginNFC__handleNearFieldAccessoryEventNotification___block_invoke_48;
  v43[3] = &unk_2789EBF20;
  v43[4] = self;
  v36 = v17;
  v44 = v36;
  v45 = v14;
  v46 = v41;
  v37 = MEMORY[0x2383AA7A0](v43);
  v38 = v37;
  if (self->_waitProxState)
  {
    v39 = dispatch_time(0, v30);
    dispatch_after(v39, self->_queue, v38);
  }

  else
  {
    (*(v37 + 16))(v37);
  }
}

void __74__AccessoryTransportPluginNFC__handleNearFieldAccessoryEventNotification___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v5 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [v11 tagID];
        v13 = [v5 tagID];
        v14 = [v12 isEqualToData:v13];

        if (v14)
        {
          [*(a1 + 32) removeObject:v11];
          v15 = v19;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v15 = v19;
  v16 = v19;
  v17 = *(a1 + 40);
  v18 = *(v17 + 56);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__AccessoryTransportPluginNFC__handleNearFieldAccessoryEventNotification___block_invoke_2;
  v20[3] = &unk_2789EBED0;
  v21 = v16;
  v22 = v17;
  [v18 enumerateKeysAndObjectsUsingBlock:v20];
  [*(a1 + 40) destroyConnectionWithUUID:v16];
  [*(*(a1 + 40) + 48) removeObjectForKey:v16];
  v6 = v21;
LABEL_11:
}

void __74__AccessoryTransportPluginNFC__handleNearFieldAccessoryEventNotification___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 isEqualToString:*(a1 + 32)])
  {
    [*(*(a1 + 40) + 56) removeObjectForKey:v5];
  }
}

void *__74__AccessoryTransportPluginNFC__handleNearFieldAccessoryEventNotification___block_invoke_48(uint64_t a1)
{
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_2336E3000, v4, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _createEndpointsForTags", v7, 2u);
  }

  [*(a1 + 32) _createEndpointsForTags:*(a1 + 40) skipWalletAuth:*(a1 + 48)];
  v5 = [*(a1 + 32) _tagsHavePowerBits:32 uuid:0];
  if (*(a1 + 49) != v5)
  {
    [*(a1 + 32) _updateAccessoryPower:v5];
  }

  result = [*(a1 + 32) _tagsHavePowerBits:48 uuid:0];
  if (result)
  {
    clock_gettime(_CLOCK_REALTIME, (*(a1 + 32) + 64));
    return [*(a1 + 32) _notifyAuthReadyAfterPowerPauseComplete];
  }

  return result;
}

- (void)_pollTags:(unsigned int)tags
{
  v3 = *&tags;
  v64 = *MEMORY[0x277D85DE8];
  if (!self->_polledSem)
  {
    v5 = dispatch_semaphore_create(0);
    polledSem = self->_polledSem;
    self->_polledSem = v5;
  }

  if (self->_readerSession)
  {
    objc_initWeak(location, self);
    readerSession = self->_readerSession;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __41__AccessoryTransportPluginNFC__pollTags___block_invoke;
    v54[3] = &unk_2789EBF48;
    objc_copyWeak(&v55, location);
    [(NFAccessoryReaderSession *)readerSession endSessionWithCompletion:v54];
    v8 = self->_readerSession;
    self->_readerSession = 0;

    objc_destroyWeak(&v55);
    objc_destroyWeak(location);
  }

  v9 = 3;
  v10 = MEMORY[0x277D86220];
  while (1)
  {
    if (!self->_readerSession)
    {
      *location = 0;
      *&location[8] = location;
      *&location[16] = 0x3032000000;
      v57 = __Block_byref_object_copy_;
      v58 = __Block_byref_object_dispose_;
      v59 = dispatch_semaphore_create(0);
      sharedHardwareManager = [getNFAccessoryHardwareManagerClass() sharedHardwareManager];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __41__AccessoryTransportPluginNFC__pollTags___block_invoke_49;
      v53[3] = &unk_2789EBF70;
      v53[4] = self;
      v53[5] = location;
      v12 = [sharedHardwareManager startReaderSession:v53];

      if (v12)
      {
        v13 = *(*&location[8] + 40);
        v14 = dispatch_time(0, 2000000000);
        if (dispatch_semaphore_wait(v13, v14))
        {
          v15 = gLogObjects;
          v16 = gNumLogObjects;
          if (gLogObjects && gNumLogObjects >= 1)
          {
            v17 = *gLogObjects;
          }

          else
          {
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v61 = v15;
              v62 = 1024;
              v63 = v16;
              _os_log_error_impl(&dword_2336E3000, v10, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v18 = v10;
            v17 = v10;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2336E3000, v17, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: timed out waiting for session creation", buf, 2u);
          }

          [v12 endSessionWithCompletion:0];
        }
      }

      _Block_object_dispose(location, 8);
      if (!self->_readerSession)
      {
        v37 = gLogObjects;
        v38 = gNumLogObjects;
        if (gLogObjects && gNumLogObjects >= 1)
        {
          v25 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *location = 134218240;
            *&location[4] = v37;
            *&location[12] = 1024;
            *&location[14] = v38;
            _os_log_error_impl(&dword_2336E3000, v10, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", location, 0x12u);
          }

          v46 = v10;
          v25 = v10;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *location = 0;
          _os_log_impl(&dword_2336E3000, v25, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: !_readerSession", location, 2u);
        }

        goto LABEL_67;
      }
    }

    v19 = gLogObjects;
    v20 = gNumLogObjects;
    if (gLogObjects)
    {
      v21 = gNumLogObjects < 1;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *location = 134218240;
        *&location[4] = v19;
        *&location[12] = 1024;
        *&location[14] = v20;
        _os_log_error_impl(&dword_2336E3000, v10, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", location, 0x12u);
      }

      v22 = v10;
      v23 = v10;
    }

    else
    {
      v23 = *gLogObjects;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *location = 0;
      _os_log_impl(&dword_2336E3000, v23, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: startPollingForTechnology", location, 2u);
    }

    v24 = self->_readerSession;
    v52 = 0;
    [(NFAccessoryReaderSession *)v24 startPollingForTechnology:v3 error:&v52];
    v25 = v52;
    if (v25)
    {
      v26 = gLogObjects;
      v27 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v28 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *location = 134218240;
          *&location[4] = v26;
          *&location[12] = 1024;
          *&location[14] = v27;
          _os_log_error_impl(&dword_2336E3000, v10, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", location, 0x12u);
        }

        v33 = v10;
        v28 = v10;
      }

      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      *location = 138412290;
      *&location[4] = v25;
      v34 = v28;
      v35 = "NFC transport plugin: startPollingForTechnology failed: %@";
      v36 = 12;
      goto LABEL_50;
    }

    v29 = self->_polledSem;
    v30 = dispatch_time(0, 4000000000);
    if (!dispatch_semaphore_wait(v29, v30))
    {
      goto LABEL_52;
    }

    v31 = gLogObjects;
    v32 = gNumLogObjects;
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v28 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *location = 134218240;
        *&location[4] = v31;
        *&location[12] = 1024;
        *&location[14] = v32;
        _os_log_error_impl(&dword_2336E3000, v10, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", location, 0x12u);
      }

      v39 = v10;
      v28 = v10;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *location = 0;
      v34 = v28;
      v35 = "NFC transport plugin: timed out waiting for polling";
      v36 = 2;
LABEL_50:
      _os_log_impl(&dword_2336E3000, v34, OS_LOG_TYPE_DEFAULT, v35, location, v36);
    }

LABEL_51:

LABEL_52:
    v40 = gLogObjects;
    v41 = gNumLogObjects;
    v42 = !gLogObjects || gNumLogObjects <= 0;
    v43 = !v42;
    if (self->_polledTags)
    {
      break;
    }

    if (v43)
    {
      v44 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *location = 134218240;
        *&location[4] = v40;
        *&location[12] = 1024;
        *&location[14] = v41;
        _os_log_error_impl(&dword_2336E3000, v10, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", location, 0x12u);
      }

      v45 = v10;
      v44 = v10;
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *location = 0;
      _os_log_impl(&dword_2336E3000, v44, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _pollTags: !_polledTags", location, 2u);
    }

    usleep(0x186A0u);
LABEL_67:

    if (!--v9)
    {
      goto LABEL_82;
    }
  }

  if (v43)
  {
    v47 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v47 = MEMORY[0x277D86220];
    v48 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *location = 0;
    _os_log_impl(&dword_2336E3000, v47, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _pollTags: found tags", location, 2u);
  }

LABEL_82:
  if (!self->_polledTags && self->_readerSession)
  {
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v49 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v49 = MEMORY[0x277D86220];
      v50 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *location = 0;
      _os_log_impl(&dword_2336E3000, v49, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _pollTags: giving up", location, 2u);
    }

    [(NFAccessoryReaderSession *)self->_readerSession endSessionWithCompletion:0];
    v51 = self->_readerSession;
    self->_readerSession = 0;
  }
}

void __41__AccessoryTransportPluginNFC__pollTags___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 1;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v4 = MEMORY[0x277D86220];
    v3 = MEMORY[0x277D86220];
  }

  else
  {
    v4 = *gLogObjects;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_2336E3000, v4, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _connectedTag = nil", v8, 2u);
  }

  v5 = WeakRetained[13];
  WeakRetained[13] = 0;

  v6 = WeakRetained[14];
  WeakRetained[14] = 0;

  v7 = WeakRetained[15];
  WeakRetained[15] = 0;
}

void __41__AccessoryTransportPluginNFC__pollTags___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (gLogObjects)
  {
    v8 = gNumLogObjects <= 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v6)
  {
    if (v9)
    {
      v10 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v10 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2336E3000, v10, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: Could not create session", buf, 2u);
    }
  }

  else
  {
    if (v9)
    {
      v11 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v11 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_2336E3000, v11, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: created _readerSession", v16, 2u);
    }

    [v5 setDelegate:*(a1 + 32)];
    v14 = *(a1 + 32);
    v15 = v5;
    v10 = *(v14 + 80);
    *(v14 + 80) = v15;
  }

  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

- (void)_requestPowerPause
{
  v26 = *MEMORY[0x277D85DE8];
  connect = -1431655766;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v3;
  v21 = v3;
  *&v18[16] = v3;
  v19 = v3;
  *v18 = v3;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2336E3000, v6, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _requestPowerPause", buf, 2u);
  }

  v7 = *MEMORY[0x277CD28A0];
  v8 = IOServiceMatching("AppleSMCSensorDispatcher");
  MatchingService = IOServiceGetMatchingService(v7, v8);
  if (!MatchingService)
  {
    p_super = logObjectForModule();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v15 = "NFC transport plugin: _requestPowerPause: !service";
    v16 = p_super;
    v17 = 2;
LABEL_23:
    _os_log_impl(&dword_2336E3000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    goto LABEL_15;
  }

  v10 = MatchingService;
  v11 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect);
  IOObjectRelease(v10);
  if (v11)
  {
    p_super = logObjectForModule();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 67109120;
    v25 = v11;
    v15 = "NFC transport plugin: _requestPowerPause: IOServiceOpen: 0x%x";
    goto LABEL_22;
  }

  *&v18[8] = xmmword_2336EFD20;
  v18[0] = 1;
  v12 = IOConnectCallStructMethod(connect, 3u, v18, 0x58uLL, 0, 0);
  IOServiceClose(connect);
  if (v12)
  {
    p_super = logObjectForModule();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 67109120;
    v25 = v12;
    v15 = "NFC transport plugin: _requestPowerPause: 0x%x";
LABEL_22:
    v16 = p_super;
    v17 = 8;
    goto LABEL_23;
  }

  date = [MEMORY[0x277CBEAA8] date];
  p_super = &self->_lastRequestPowerPauseTime->super;
  self->_lastRequestPowerPauseTime = date;
LABEL_15:
}

- (unint64_t)_getTimeSinceLastRequestPowerPauseMs
{
  if (!self->_lastRequestPowerPauseTime)
  {
    return -1;
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_lastRequestPowerPauseTime];
  v5 = (v4 * 1000.0);

  return v5;
}

- (BOOL)_getpowerPauseStatus
{
  v18 = *MEMORY[0x277D85DE8];
  connect = -1431655766;
  output = 0;
  outputCnt = 1;
  v2 = *MEMORY[0x277CD28A0];
  v3 = IOServiceMatching("AppleSMCSensorDispatcher");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (!MatchingService)
  {
    v9 = logObjectForModule();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "NFC transport plugin: _getpowerPauseStatus: !service";
      v11 = v9;
      v12 = 2;
LABEL_12:
      _os_log_impl(&dword_2336E3000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v5 = MatchingService;
  v6 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect);
  IOObjectRelease(v5);
  if (v6)
  {
    v9 = logObjectForModule();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v17 = v6;
      v10 = "NFC transport plugin: _getpowerPauseStatus: IOServiceOpen: 0x%x";
LABEL_11:
      v11 = v9;
      v12 = 8;
      goto LABEL_12;
    }

LABEL_13:

    return output != 0;
  }

  v7 = IOConnectCallScalarMethod(connect, 5u, 0, 0, &output, &outputCnt);
  IOServiceClose(connect);
  if (v7)
  {
    v9 = logObjectForModule();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v17 = v7;
      v10 = "NFC transport plugin: _getpowerPauseStatus: 0x%x";
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  return output != 0;
}

- (unsigned)_getNfcStateMachineState
{
  connect = -1431655766;
  output = 0;
  outputCnt = 1;
  v2 = *MEMORY[0x277CD28A0];
  v3 = IOServiceMatching("AppleSMCSensorDispatcher");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (!MatchingService)
  {
    [AccessoryTransportPluginNFC _getNfcStateMachineState];
    return 0;
  }

  v5 = MatchingService;
  v6 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect);
  IOObjectRelease(v5);
  if (v6)
  {
    [AccessoryTransportPluginNFC _getNfcStateMachineState];
    return 0;
  }

  v7 = IOConnectCallScalarMethod(connect, 6u, 0, 0, &output, &outputCnt);
  IOServiceClose(connect);
  if (v7)
  {
    [AccessoryTransportPluginNFC _getNfcStateMachineState];
    return 0;
  }

  return output;
}

- (BOOL)_tagsHavePowerBits:(unsigned __int8)bits uuid:(id *)uuid
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  connectionUuidForEndpointUuid = self->_connectionUuidForEndpointUuid;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__AccessoryTransportPluginNFC__tagsHavePowerBits_uuid___block_invoke;
  v8[3] = &unk_2789EBF98;
  v9 = bits & 0x30;
  v8[4] = self;
  v8[5] = &v16;
  v8[6] = &v10;
  [(NSMutableDictionary *)connectionUuidForEndpointUuid enumerateKeysAndObjectsUsingBlock:v8];
  v6 = *(v17 + 24);
  if (uuid && (v17[3] & 1) != 0)
  {
    *uuid = v11[5];
    v6 = *(v17 + 24);
  }

  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);
  return v6 & 1;
}

void __55__AccessoryTransportPluginNFC__tagsHavePowerBits_uuid___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v9 = [*(*(a1 + 32) + 48) valueForKey:a3];
  v10 = [v9 tagID];
  v11 = 0;
  [v10 getBytes:&v11 length:4];
  if ((*(a1 + 56) & BYTE1(v11)) != 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (unsigned)_getAccessoryType:(id)type
{
  typeCopy = type;
  v5 = typeCopy;
  v9 = 0;
  if (!typeCopy || [typeCopy length] != 4 || !-[AccessoryTransportPluginNFC _checkLRC:](self, "_checkLRC:", v5) || ((objc_msgSend(v5, "getBytes:length:", &v9, 4), v6 = v9, v7 = v9 - 57, v7 > 0x3A) || ((1 << v7) & 0x6001181FC381F01) == 0) && (v9 - 128 > 0x15 || ((1 << (v9 + 0x80)) & 0x2B0123) == 0) && v9 != 22)
  {
    v6 = 0;
  }

  return v6;
}

- (unsigned)_getAccessoryFamily:(id)family
{
  familyCopy = family;
  v5 = familyCopy;
  v8 = 0;
  if (!familyCopy || [familyCopy length] != 4 || !-[AccessoryTransportPluginNFC _checkLRC:](self, "_checkLRC:", v5))
  {
    goto LABEL_48;
  }

  [v5 getBytes:&v8 length:4];
  v6 = 5;
  if (v8 <= 0x56u)
  {
    if (v8 > 0x4Bu)
    {
      if (v8 - 76 < 3)
      {
        v6 = 3;
        goto LABEL_49;
      }

      if (v8 - 83 < 3)
      {
        goto LABEL_49;
      }

      if (v8 == 86)
      {
        v6 = 6;
        goto LABEL_49;
      }
    }

    else
    {
      if (v8 <= 0x41u)
      {
        if (v8 == 22)
        {
          v6 = 11;
          goto LABEL_49;
        }

        if (v8 != 57)
        {
          if (v8 != 65)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }

        goto LABEL_51;
      }

      if (v8 - 67 < 3)
      {
        goto LABEL_47;
      }

      if (v8 == 66)
      {
LABEL_44:
        v6 = 1;
        goto LABEL_49;
      }
    }

LABEL_48:
    v6 = 0;
    goto LABEL_49;
  }

  if (v8 > 0x7Fu)
  {
    if (v8 <= 0x8Fu)
    {
      if (v8 > 0x84u)
      {
        if (v8 == 133)
        {
          goto LABEL_47;
        }

        if (v8 == 136)
        {
          v6 = 9;
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      if (v8 != 128)
      {
        if (v8 == 129)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

LABEL_37:
      v6 = 7;
      goto LABEL_49;
    }

    if (v8 <= 0x92u)
    {
      if (v8 != 144)
      {
        if (v8 != 145)
        {
          goto LABEL_48;
        }

        goto LABEL_49;
      }

      goto LABEL_37;
    }

    if (v8 != 147)
    {
      if (v8 == 149)
      {
        goto LABEL_47;
      }

      goto LABEL_48;
    }

LABEL_51:
    v6 = 10;
    goto LABEL_49;
  }

  if (v8 <= 0x60u)
  {
    if (v8 - 87 < 2)
    {
      v6 = 8;
      goto LABEL_49;
    }

    if (v8 == 89)
    {
      v6 = 12;
      goto LABEL_49;
    }

    if (v8 != 96)
    {
      goto LABEL_48;
    }

    goto LABEL_37;
  }

  if (v8 > 0x71u)
  {
    if (v8 == 114)
    {
      v6 = 4;
      goto LABEL_49;
    }

    if (v8 != 115)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  if (v8 != 97)
  {
    if (v8 != 101)
    {
      goto LABEL_48;
    }

LABEL_47:
    v6 = 2;
  }

LABEL_49:

  return v6;
}

- (void)_createEndpointsForTags:(id)tags skipWalletAuth:(BOOL)auth
{
  authCopy = auth;
  v56 = *MEMORY[0x277D85DE8];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = tags;
  v5 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0x2812FF000uLL;
    v8 = *v46;
    v42 = *MEMORY[0x277CFD298];
    v43 = *v46;
    do
    {
      v9 = 0;
      v41 = v6;
      do
      {
        if (*v46 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v45 + 1) + 8 * v9);
        tagID = [v10 tagID];
        if ([(AccessoryTransportPluginNFC *)self _checkLRC:tagID])
        {
          tagID2 = [v10 tagID];
          v13 = [(AccessoryTransportPluginNFC *)self _getAccessoryType:tagID2];

          if (v13 != 86 || self->_proximityOcclusionState)
          {
            clearMultiTagState = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", tagID];
            v15 = [(ACCTransportPlugin *)self createConnectionWithType:9 andIdentifier:clearMultiTagState];
            v49 = v42;
            null = [MEMORY[0x277CBEB68] null];
            v50 = null;
            v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
            [(ACCTransportPlugin *)self setProperties:v17 forConnectionWithUUID:v15];

            v18 = *(v7 + 1192);
            v19 = gNumLogObjects;
            if (v18 && gNumLogObjects >= 1)
            {
              v20 = *v18;
            }

            else
            {
              v21 = MEMORY[0x277D86220];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v53 = v18;
                v54 = 1024;
                v55 = v19;
                _os_log_error_impl(&dword_2336E3000, v21, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v22 = v21;
              v20 = v21;
              v6 = v41;
            }

            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v53 = clearMultiTagState;
              _os_log_impl(&dword_2336E3000, v20, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: tagID=%@", buf, 0xCu);
            }

            if (v15)
            {
              if (![(AccessoryTransportPluginNFC *)self _requiresMfi40Auth:tagID]|| authCopy)
              {
                if ([(AccessoryTransportPluginNFC *)self _requiresLegacyAuth:tagID])
                {
                  v23 = 10;
                }

                else
                {
                  v23 = 1;
                }
              }

              else
              {
                v23 = 14;
              }

              v24 = *(v7 + 1192);
              v25 = gNumLogObjects;
              if (v24 && gNumLogObjects >= 1)
              {
                v26 = *v24;
              }

              else
              {
                v27 = MEMORY[0x277D86220];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  v53 = v24;
                  v54 = 1024;
                  v55 = v25;
                  _os_log_error_impl(&dword_2336E3000, v27, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v28 = v27;
                v26 = v27;
                v6 = v41;
              }

              v7 = 0x2812FF000;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109120;
                LODWORD(v53) = v23;
                _os_log_impl(&dword_2336E3000, v26, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: protocol=%d", buf, 8u);
              }

              v29 = [(ACCTransportPlugin *)self createEndpointWithTransportType:13 andProtocol:v23 andIdentifier:clearMultiTagState forConnectionWithUUID:v15 publishConnection:0];
              v30 = [(AccessoryTransportPluginNFC *)self _decodeTagIdentifier:tagID];
              if (v30)
              {
                [(ACCTransportPlugin *)self setProperties:v30 forEndpointWithUUID:v29];
              }

              [(NSMutableDictionary *)self->_connectionUuidForEndpointUuid setObject:v15 forKey:v29];
              [(NSMutableDictionary *)self->_tagForConnectionUuid setObject:v10 forKey:v15];
            }

            [(ACCTransportPlugin *)self publishConnectionWithUUID:v15];
            goto LABEL_36;
          }

          v31 = *(v7 + 1192);
          v32 = gNumLogObjects;
          if (v31 && gNumLogObjects >= 1)
          {
            v33 = *v31;
          }

          else
          {
            v33 = MEMORY[0x277D86220];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              v53 = v31;
              v54 = 1024;
              v55 = v32;
              _os_log_error_impl(&dword_2336E3000, v33, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
            }

            v34 = v33;
          }

          v7 = 0x2812FF000uLL;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_2336E3000, v33, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: ignore sleeve", buf, 2u);
          }

          if ([obj count] == 1)
          {
            sharedHardwareManager = [getNFAccessoryHardwareManagerClass() sharedHardwareManager];
            clearMultiTagState = [sharedHardwareManager clearMultiTagState];

            if (clearMultiTagState)
            {
              v36 = gLogObjects;
              v37 = gNumLogObjects;
              if (gLogObjects && gNumLogObjects >= 1)
              {
                v15 = *gLogObjects;
              }

              else
              {
                v15 = MEMORY[0x277D86220];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  v53 = v36;
                  v54 = 1024;
                  v55 = v37;
                  _os_log_error_impl(&dword_2336E3000, v15, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
                }

                v38 = v15;
                v6 = v41;
              }

              v7 = 0x2812FF000;
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v53 = clearMultiTagState;
                _os_log_impl(&dword_2336E3000, v15, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: clearMultiTagState error: %@", buf, 0xCu);
              }

LABEL_36:

              v8 = v43;
            }
          }
        }

        ++v9;
      }

      while (v6 != v9);
      v39 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      v6 = v39;
    }

    while (v39);
  }

  self->_waitProxState = 0;
}

- (void)_setScreenStateMonitoringEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__AccessoryTransportPluginNFC__setScreenStateMonitoringEnabled___block_invoke;
    v10[3] = &unk_2789EBFC0;
    v10[4] = self;
    v4 = MEMORY[0x2383AA7A0](v10, a2);
    v5 = dispatch_get_global_queue(0, 0);
    v6 = notify_register_dispatch("com.apple.springboard.hasBlankedScreen", &self->_screenStateToken, v5, v4);

    if (v6)
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v7 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v7 = MEMORY[0x277D86220];
        v8 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_2336E3000, v7, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: Fail to register for screen state change", v9, 2u);
      }
    }
  }

  else
  {
    if (notify_is_valid_token(self->_screenStateToken))
    {
      notify_cancel(self->_screenStateToken);
    }

    self->_screenStateToken = -1;
  }
}

void __64__AccessoryTransportPluginNFC__setScreenStateMonitoringEnabled___block_invoke(uint64_t a1, int token)
{
  v10 = *MEMORY[0x277D85DE8];
  state64 = 0xAAAAAAAAAAAAAAAALL;
  if (!notify_get_state(token, &state64))
  {
    *(*(a1 + 32) + 148) = state64 == 0;
    [*(a1 + 32) _didScreenStateChange:*(*(a1 + 32) + 148) != 0];
    if (gLogObjects)
    {
      v3 = gNumLogObjects < 1;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v5 = MEMORY[0x277D86220];
      v4 = MEMORY[0x277D86220];
    }

    else
    {
      v5 = *gLogObjects;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 148);
      *buf = 67109120;
      v9 = v6;
      _os_log_impl(&dword_2336E3000, v5, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: screen handler: _screenState=%d", buf, 8u);
    }
  }
}

- (void)_setProximityMonitoringEnabled:(BOOL)enabled
{
  if (enabled)
  {
    if (gLogObjects)
    {
      v4 = gNumLogObjects < 1;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v6 = MEMORY[0x277D86220];
      v5 = MEMORY[0x277D86220];
    }

    else
    {
      v6 = *gLogObjects;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_2336E3000, v6, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _setProximityMonitoringEnabled", v7, 2u);
    }

    if (!self->_hidEventClient)
    {
      self->_hidEventClient = IOHIDEventSystemClientCreateWithType();
      IOHIDEventSystemClientSetMatching();
      CFRunLoopGetMain();
      IOHIDEventSystemClientScheduleWithRunLoop();
      IOHIDEventSystemClientRegisterEventCallback();
    }
  }

  else
  {
    CFRunLoopGetMain();
    IOHIDEventSystemClientUnscheduleWithRunLoop();
    IOHIDEventSystemClientUnregisterEventCallback();
    self->_hidEventClient = 0;
  }
}

- (void)_handleIOHIDEvent:(__IOHIDEvent *)event
{
  queue = self->_queue;
  if (queue)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__AccessoryTransportPluginNFC__handleIOHIDEvent___block_invoke;
    v5[3] = &unk_2789EBFE8;
    v5[4] = self;
    v5[5] = event;
    dispatch_sync(queue, v5);
  }
}

- (void)_didScreenStateChange:(BOOL)change
{
  changeCopy = change;
  v27 = *MEMORY[0x277D85DE8];
  connect = -1431655766;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21 = v4;
  v22 = v4;
  v19 = v4;
  v20 = v4;
  v18 = v4;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *gLogObjects;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v26 = changeCopy;
    _os_log_impl(&dword_2336E3000, v7, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _didScreenStateChange: %d", buf, 8u);
  }

  v8 = *MEMORY[0x277CD28A0];
  v9 = IOServiceMatching("AppleSMCSensorDispatcher");
  MatchingService = IOServiceGetMatchingService(v8, v9);
  if (!MatchingService)
  {
    v14 = logObjectForModule();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v15 = "NFC transport plugin: _didScreenStateChange: !service";
      v16 = v14;
      v17 = 2;
LABEL_22:
      _os_log_impl(&dword_2336E3000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v11 = MatchingService;
  v12 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect);
  IOObjectRelease(v11);
  if (v12)
  {
    v14 = logObjectForModule();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v26 = v12;
      v15 = "NFC transport plugin: _didScreenStateChange: IOServiceOpen: 0x%x";
LABEL_21:
      v16 = v14;
      v17 = 8;
      goto LABEL_22;
    }

LABEL_23:

    return;
  }

  *(&v18 + 1) = 1313227588;
  *&v19 = changeCopy;
  LOBYTE(v18) = 1;
  v13 = IOConnectCallStructMethod(connect, 3u, &v18, 0x58uLL, 0, 0);
  IOServiceClose(connect);
  if (v13)
  {
    v14 = logObjectForModule();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v26 = v13;
      v15 = "NFC transport plugin: _didScreenStateChange: 0x%x";
      goto LABEL_21;
    }

    goto LABEL_23;
  }
}

- (void)_didNfcTagsListChange:(id)change
{
  v44 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  connect = -1431655766;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37 = v5;
  v38 = v5;
  v35 = v5;
  v36 = v5;
  inputStruct = v5;
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 1;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v8 = MEMORY[0x277D86220];
    v7 = MEMORY[0x277D86220];
  }

  else
  {
    v8 = *gLogObjects;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2336E3000, v8, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _didNfcTagsListChange", buf, 2u);
  }

  v9 = [changeCopy count] << 24;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v10 = changeCopy;
  v11 = [v10 countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v31;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        tagID = [v16 tagID];
        if ([(AccessoryTransportPluginNFC *)self _checkLRC:tagID])
        {
          tagID2 = [v16 tagID];
          v19 = [(AccessoryTransportPluginNFC *)self _getAccessoryType:tagID2];

          *buf = 0;
          [tagID getBytes:buf length:4];
          v9 |= (v19 << (8 * v13++)) | ((buf[1] & 0x30) << 16);
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v30 objects:v43 count:16];
    }

    while (v12);
  }

  v20 = *MEMORY[0x277CD28A0];
  v21 = IOServiceMatching("AppleSMCSensorDispatcher");
  MatchingService = IOServiceGetMatchingService(v20, v21);
  if (!MatchingService)
  {
    v26 = logObjectForModule();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v27 = "NFC transport plugin: _didNfcTagsListChange: !service";
      v28 = v26;
      v29 = 2;
LABEL_31:
      _os_log_impl(&dword_2336E3000, v28, OS_LOG_TYPE_DEFAULT, v27, buf, v29);
      goto LABEL_32;
    }

    goto LABEL_32;
  }

  v23 = MatchingService;
  v24 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect);
  IOObjectRelease(v23);
  if (v24)
  {
    v26 = logObjectForModule();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v42 = v24;
      v27 = "NFC transport plugin: _didNfcTagsListChange: IOServiceOpen: 0x%x";
LABEL_30:
      v28 = v26;
      v29 = 8;
      goto LABEL_31;
    }

LABEL_32:

    goto LABEL_23;
  }

  *(&inputStruct + 1) = 1313227604;
  *&v35 = v9;
  LOBYTE(inputStruct) = 1;
  v25 = IOConnectCallStructMethod(connect, 3u, &inputStruct, 0x58uLL, 0, 0);
  IOServiceClose(connect);
  if (v25)
  {
    v26 = logObjectForModule();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v42 = v25;
      v27 = "NFC transport plugin: _didNfcTagsListChange: 0x%x";
      goto LABEL_30;
    }

    goto LABEL_32;
  }

LABEL_23:
}

- (void)_closeReaderSession
{
  readerSession = self->_readerSession;
  if (readerSession)
  {
    v26 = 0;
    [(NFAccessoryReaderSession *)readerSession disconnectTag:&v26];
    v4 = v26;
    [(NFAccessoryReaderSession *)self->_readerSession stopPolling:0];
    *buf = 0;
    v21 = buf;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy_;
    v24 = __Block_byref_object_dispose_;
    v25 = dispatch_semaphore_create(0);
    objc_initWeak(&location, self);
    v5 = self->_readerSession;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __50__AccessoryTransportPluginNFC__closeReaderSession__block_invoke;
    v17[3] = &unk_2789EC010;
    objc_copyWeak(&v18, &location);
    v17[4] = buf;
    [(NFAccessoryReaderSession *)v5 endSessionWithCompletion:v17];
    v6 = *(v21 + 5);
    v7 = dispatch_time(0, 2000000000);
    dispatch_semaphore_wait(v6, v7);
    if (gLogObjects && gNumLogObjects >= 1)
    {
      v8 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v8 = MEMORY[0x277D86220];
      v9 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_2336E3000, v8, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _closeReaderSession: set _readerSession = nil", v16, 2u);
    }

    v10 = self->_readerSession;
    self->_readerSession = 0;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v4 = 0;
  }

  if (self->_connectedTag)
  {
    if (gLogObjects)
    {
      v11 = gNumLogObjects < 1;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v13 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    else
    {
      v13 = *gLogObjects;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2336E3000, v13, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _closeReaderSession: forcing _connectedTag = nil", buf, 2u);
    }

    connectedTag = self->_connectedTag;
    self->_connectedTag = 0;
  }

  polledTags = self->_polledTags;
  self->_polledTags = 0;
}

void __50__AccessoryTransportPluginNFC__closeReaderSession__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (gLogObjects)
  {
    v3 = gNumLogObjects < 1;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v5 = MEMORY[0x277D86220];
    v4 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = *gLogObjects;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_2336E3000, v5, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _closeReaderSession: set _connectedTag = nil", v9, 2u);
  }

  v6 = WeakRetained[13];
  WeakRetained[13] = 0;

  v7 = WeakRetained[14];
  WeakRetained[14] = 0;

  v8 = WeakRetained[15];
  WeakRetained[15] = 0;

  dispatch_semaphore_signal(*(*(*(a1 + 32) + 8) + 40));
}

- (BOOL)_handleSessionOpen:(BOOL)open forEndpointWithUUID:(id)d connectionUUID:(id)iD
{
  v52 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  if (!open)
  {
    [(AccessoryTransportPluginNFC *)self _closeReaderSession];
LABEL_84:
    v38 = 1;
    goto LABEL_85;
  }

  if (self->_connectedTag)
  {
    v40 = logObjectForModule();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2336E3000, v40, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _handleSessionOpen: _connectedTag", buf, 2u);
    }

    v14 = 0;
    v12 = 0;
    goto LABEL_97;
  }

  v11 = [(NSMutableDictionary *)self->_connectionUuidForEndpointUuid valueForKey:dCopy];
  v12 = v11;
  if (!v11 || ([v11 isEqualToString:iDCopy] & 1) == 0)
  {
    v40 = logObjectForModule();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v41 = "NFC transport plugin: _handleSessionOpen: !uuid || !equal";
LABEL_93:
      _os_log_impl(&dword_2336E3000, v40, OS_LOG_TYPE_DEFAULT, v41, buf, 2u);
    }

LABEL_94:
    v14 = 0;
    goto LABEL_97;
  }

  v13 = [(NSMutableDictionary *)self->_tagForConnectionUuid valueForKey:iDCopy];
  if (!v13)
  {
    v40 = logObjectForModule();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v41 = "NFC transport plugin: _handleSessionOpen: !knownTag";
      goto LABEL_93;
    }

    goto LABEL_94;
  }

  v14 = v13;
  if (!self->_polledTags)
  {
    if ([(AccessoryTransportPluginNFC *)self _tagsHavePowerBits:48 uuid:0]&& ![(AccessoryTransportPluginNFC *)self _getpowerPauseStatus])
    {
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v15 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v15 = MEMORY[0x277D86220];
        v16 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2336E3000, v15, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _handleSessionOpen: powerPause:0", buf, 2u);
      }

      [(AccessoryTransportPluginNFC *)self _requestPowerPause];
      usleep(0x30D40u);
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v17 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [AccessoryTransportPluginNFC initPlugin];
        }

        v17 = MEMORY[0x277D86220];
        v18 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        _getpowerPauseStatus = [(AccessoryTransportPluginNFC *)self _getpowerPauseStatus];
        *buf = 67109120;
        v47 = _getpowerPauseStatus;
        _os_log_impl(&dword_2336E3000, v17, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _handleSessionOpen: powerPause:0->%d", buf, 8u);
      }
    }

    v20 = [(NSMutableDictionary *)self->_tagForConnectionUuid valueForKey:iDCopy];
    silentType = [v20 silentType];
    if (gLogObjects)
    {
      v22 = gNumLogObjects <= 0;
    }

    else
    {
      v22 = 1;
    }

    v23 = !v22;
    if (silentType > 1)
    {
      if (silentType == 2)
      {
        if (v23)
        {
          v28 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [AccessoryTransportPluginNFC initPlugin];
          }

          v28 = MEMORY[0x277D86220];
          v35 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2336E3000, v28, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _pollTags:NFACTagTechnologyS2", buf, 2u);
        }

        selfCopy4 = self;
        technology = 64;
        goto LABEL_78;
      }

      if (silentType == 3)
      {
        if (v23)
        {
          v25 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [AccessoryTransportPluginNFC initPlugin];
          }

          v25 = MEMORY[0x277D86220];
          v33 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2336E3000, v25, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _pollTags:NFACTagTechnologyS3", buf, 2u);
        }

        selfCopy4 = self;
        technology = 128;
        goto LABEL_78;
      }
    }

    else
    {
      if (!silentType)
      {
        if (v23)
        {
          v27 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [AccessoryTransportPluginNFC initPlugin];
          }

          v27 = MEMORY[0x277D86220];
          v34 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2336E3000, v27, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _pollTags", buf, 2u);
        }

        technology = [v20 technology];
        selfCopy4 = self;
        goto LABEL_78;
      }

      if (silentType == 1)
      {
        if (v23)
        {
          v24 = *gLogObjects;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [AccessoryTransportPluginNFC initPlugin];
          }

          v24 = MEMORY[0x277D86220];
          v30 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2336E3000, v24, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _pollTags:NFACTagTechnologyS1", buf, 2u);
        }

        selfCopy4 = self;
        technology = 32;
LABEL_78:
        [(AccessoryTransportPluginNFC *)selfCopy4 _pollTags:technology];
LABEL_79:

        if (self->_polledTags)
        {
          goto LABEL_80;
        }

        v40 = logObjectForModule();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_2336E3000, v40, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _handleSessionOpen: !_polledTags", buf, 2u);
        }

LABEL_97:

        goto LABEL_98;
      }
    }

    if (v23)
    {
      v26 = *gLogObjects;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [AccessoryTransportPluginNFC initPlugin];
      }

      v26 = MEMORY[0x277D86220];
      v29 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2336E3000, v26, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: skip _pollTags", buf, 2u);
    }

    goto LABEL_79;
  }

LABEL_80:
  tagID = [v14 tagID];
  v37 = [(AccessoryTransportPluginNFC *)self _connectToTagId:tagID];

  if (v37 && self->_connectedTag && self->_connectedTagId)
  {
    objc_storeStrong(&self->_connectedTagEndpointUuid, d);

    goto LABEL_84;
  }

LABEL_98:
  if (gLogObjects && gNumLogObjects >= 1)
  {
    v42 = *gLogObjects;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [AccessoryTransportPluginNFC initPlugin];
    }

    v42 = MEMORY[0x277D86220];
    v43 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v44 = self->_connectedTag != 0;
    v45 = self->_connectedTagId != 0;
    *buf = 67109632;
    v47 = 0;
    v48 = 1024;
    v49 = v44;
    v50 = 1024;
    v51 = v45;
    _os_log_impl(&dword_2336E3000, v42, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _connectToTagId failed: success:%d, _connectedTag:%d, _connectedTagId:%d", buf, 0x14u);
  }

  v38 = 0;
LABEL_85:

  return v38;
}

- (BOOL)_hasWalletOnClearCase2020:(id)case2020
{
  v20 = *MEMORY[0x277D85DE8];
  case2020Copy = case2020;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [case2020Copy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(case2020Copy);
        }

        tagID = [*(*(&v15 + 1) + 8 * i) tagID];
        v12 = [(AccessoryTransportPluginNFC *)self _getAccessoryType:tagID];

        v7 |= v12 == 67;
        v8 |= (v12 - 87) < 2;
      }

      v6 = [case2020Copy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
    v13 = v8 & v7;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

- (BOOL)_checkProductTypeCompatibility:(unsigned __int8)compatibility
{
  compatibilityCopy = compatibility;
  v4 = systemInfo_copyProductType();
  if (!v4)
  {
    [AccessoryTransportPluginNFC _checkProductTypeCompatibility:];
    return 1;
  }

  v5 = v4;
  result = 0;
  if ((compatibilityCopy - 86) <= 0x3F)
  {
    if (((1 << (compatibilityCopy - 86)) & 0x8C008C0010008C08) != 0)
    {
      return result;
    }

    if (compatibilityCopy == 86)
    {
      goto LABEL_9;
    }
  }

  v7 = compatibilityCopy - 22;
  if ((compatibilityCopy - 22) > 0x3F)
  {
    return 1;
  }

  if (((1 << v7) & 0x4080480000000000) == 0)
  {
    if (((1 << v7) & 0x8100800000000001) != 0)
    {
      return result;
    }

    if (((1 << v7) & 0x2040200000000000) == 0)
    {
      return 1;
    }

LABEL_9:
    if (CFStringCompare(v5, @"iPhone13,1", 0) == kCFCompareEqualTo || CFStringCompare(v5, @"iPhone13,2", 0) == kCFCompareEqualTo || CFStringCompare(v5, @"iPhone13,3", 0) == kCFCompareEqualTo)
    {
      return 1;
    }

    v8 = @"iPhone13,4";
    return CFStringCompare(v5, v8, 0) == kCFCompareEqualTo;
  }

  if (CFStringCompare(v5, @"iPhone14,2", 0) == kCFCompareEqualTo || CFStringCompare(v5, @"iPhone14,3", 0) == kCFCompareEqualTo || CFStringCompare(v5, @"iPhone14,4", 0) == kCFCompareEqualTo)
  {
    return 1;
  }

  v8 = @"iPhone14,5";
  return CFStringCompare(v5, v8, 0) == kCFCompareEqualTo;
}

- (int)_animationDelayMs:(unsigned __int8)ms
{
  v3 = ms - 22;
  if ((ms - 22) > 0x3F)
  {
    goto LABEL_2;
  }

  if (((1 << v3) & 0x60C0680000000000) != 0)
  {
    return 600;
  }

  if (((1 << v3) & 0x8100800000000000) == 0 && ms != 22)
  {
LABEL_2:
    v4 = ms - 89;
    if ((ms - 89) > 0x3C || ((1 << v4) & 0x1181) == 0 && ((1 << v4) & 0x118002000000) == 0 && ((1 << v4) & 0x1180000000000000) == 0)
    {
      if ((ms - 87) >= 2)
      {
        return 0;
      }

      return 600;
    }
  }

  return 170;
}

- (BOOL)_checkLRC:(id)c
{
  cCopy = c;
  v4 = cCopy;
  v18 = 0;
  if (cCopy && [cCopy length] == 4)
  {
    OUTLINED_FUNCTION_6(4, v5, v6, v7, v8, v9, v10, v11, v16, v17, v18);
    v12 = 0;
    v13 = 19;
    do
    {
      v13 += *(&v18 + v12++);
    }

    while (v12 != 3);
    v14 = HIBYTE(v18) == -v13;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_requiresLegacyAuth:(id)auth
{
  authCopy = auth;
  v4 = authCopy;
  if (authCopy && [authCopy length] == 4)
  {
    OUTLINED_FUNCTION_6(4, v5, v6, v7, v8, v9, v10, v11, v14, v15, 0);
    v12 = (v16 != 66) & (v17 >> 4);
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (BOOL)_requiresMfi40Auth:(id)auth
{
  v31 = *MEMORY[0x277D85DE8];
  authCopy = auth;
  v4 = authCopy;
  if (authCopy && [authCopy length] == 4)
  {
    OUTLINED_FUNCTION_6(4, v5, v6, v7, v8, v9, v10, v11, v20, v21, 0);
    v12 = v22 < 0;
  }

  else
  {
    v12 = 0;
  }

  if (acc_userDefaults_BOOLForKey(@"ForceMFi4AuthOverNFC"))
  {
    v13 = gLogObjects;
    v14 = gNumLogObjects;
    if (gLogObjects)
    {
      v15 = gNumLogObjects < 1;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v24 = v13;
        v25 = 1024;
        LODWORD(v26) = v14;
        OUTLINED_FUNCTION_4(&dword_2336E3000, MEMORY[0x277D86220], v16, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
      }

      v18 = MEMORY[0x277D86220];
      v17 = MEMORY[0x277D86220];
    }

    else
    {
      v18 = *gLogObjects;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v24 = "[AccessoryTransportPluginNFC _requiresMfi40Auth:]";
      v25 = 2112;
      v26 = @"ForceMFi4AuthOverNFC";
      v27 = 1024;
      v28 = v12;
      v29 = 1024;
      v30 = 1;
      _os_log_impl(&dword_2336E3000, v18, OS_LOG_TYPE_DEFAULT, "%s: %@ requiresAuth %d -> %d", buf, 0x22u);
    }

    LOBYTE(v12) = 1;
  }

  return v12;
}

- (id)_decodeTagIdentifier:(id)identifier
{
  v75 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = identifierCopy;
  v67 = 0;
  if (identifierCopy && [identifierCopy length] == 4)
  {
    v6 = objc_opt_new();
    v7 = v6;
    if (v6)
    {
      [v6 setObject:v5 forKey:*MEMORY[0x277CFD320]];
      [v5 getBytes:&v67 length:4];
      v8 = [(AccessoryTransportPluginNFC *)self _getAccessoryType:v5];
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[AccessoryTransportPluginNFC _checkProductTypeCompatibility:](self, "_checkProductTypeCompatibility:", v8)}];
        [v7 setValue:v10 forKey:*MEMORY[0x277CFD2F8]];

        v11 = [MEMORY[0x277CCABB0] numberWithInt:{-[AccessoryTransportPluginNFC _animationDelayMs:](self, "_animationDelayMs:", v9)}];
        [v7 setValue:v11 forKey:*MEMORY[0x277CFD338]];

        v12 = [MEMORY[0x277CCABB0] numberWithChar:v9];
        [v7 setValue:v12 forKey:*MEMORY[0x277CFD330]];

        v13 = [MEMORY[0x277CCABB0] numberWithInt:{-[AccessoryTransportPluginNFC _getAccessoryFamily:](self, "_getAccessoryFamily:", v5)}];
        OUTLINED_FUNCTION_5();

        v14 = BYTE1(v67);
        LODWORD(v15) = BYTE1(v67) & 1;
        v16 = 0;
        v17 = 0;
        v18 = 16;
        v19 = &colorWashTable0x53;
        switch(v67)
        {
          case 'A':
            OUTLINED_FUNCTION_2();
            v18 = 2;
            v19 = &colorWashTable0x41;
            goto LABEL_31;
          case 'B':
          case 'D':
          case 'E':
          case 'F':
          case 'G':
          case 'H':
          case 'I':
          case 'J':
          case 'K':
          case 'O':
          case 'P':
          case 'Q':
          case 'R':
            goto LABEL_79;
          case 'C':
            OUTLINED_FUNCTION_2();
            if (v15)
            {
              v19 = &colorWashTable0x43;
            }

            else
            {
              v19 = 0;
            }

            v18 = 2 * v15;
            goto LABEL_31;
          case 'L':
            OUTLINED_FUNCTION_2();
            v18 = 7;
            v19 = &colorWashTable0x4c;
            goto LABEL_31;
          case 'M':
            OUTLINED_FUNCTION_2();
            v18 = 11;
            v19 = &colorWashTable0x4d;
            goto LABEL_31;
          case 'N':
            OUTLINED_FUNCTION_2();
            v18 = 6;
            v19 = &colorWashTable0x4e;
            goto LABEL_31;
          case 'S':
            goto LABEL_31;
          case 'T':
            OUTLINED_FUNCTION_2();
            v18 = 32;
            v19 = &colorWashTable0x54;
            goto LABEL_31;
          case 'U':
            OUTLINED_FUNCTION_2();
            v18 = 13;
            v19 = &colorWashTable0x55;
            goto LABEL_31;
          case 'V':
            v17 = 1;
            v16 = &colorWashTableSecondary0x56;
            v18 = 6;
            v19 = &colorWashTable0x56;
            goto LABEL_31;
          case 'W':
            OUTLINED_FUNCTION_2();
            v18 = 19;
            v19 = &colorWashTable0x57;
            goto LABEL_31;
          case 'X':
            OUTLINED_FUNCTION_2();
            v18 = 6;
            v19 = &colorWashTable0x58;
            goto LABEL_31;
          default:
            switch(v67)
            {
              case 0x60u:
                OUTLINED_FUNCTION_2();
                v18 = 7;
                v19 = &colorWashTable0x60;
                break;
              case 0x61u:
                OUTLINED_FUNCTION_2();
                v18 = 10;
                v19 = &colorWashTable0x61;
                break;
              case 0x72u:
                OUTLINED_FUNCTION_2();
                v18 = 2;
                v19 = &colorWashTable0x72;
                break;
              case 0x80u:
                OUTLINED_FUNCTION_2();
                v18 = 6;
                v19 = &colorWashTable0x80;
                break;
              case 0x81u:
                OUTLINED_FUNCTION_2();
                v18 = 13;
                v19 = &colorWashTable0x81;
                break;
              case 0x91u:
                OUTLINED_FUNCTION_2();
                v18 = 13;
                v19 = &colorWashTable0x91;
                break;
              default:
                goto LABEL_79;
            }

LABEL_31:
            if (v15)
            {
              v20 = BYTE2(v67) & 0x3F;
              v21 = [MEMORY[0x277CCABB0] numberWithChar:v20];
              [v7 setValue:v21 forKey:*MEMORY[0x277CFD340]];

              if (v20)
              {
                if (v18 > v20)
                {
                  v64 = v16;
                  *&v22 = -1;
                  *(&v22 + 1) = -1;
                  v65 = v22;
                  v66 = v22;
                  v23 = +[ACCUserDefaults sharedDefaults];
                  v24 = [v23 BOOLForKey:?];

                  v25 = gLogObjects;
                  v26 = gNumLogObjects;
                  if (gLogObjects && gNumLogObjects >= 1)
                  {
                    v27 = *gLogObjects;
                  }

                  else
                  {
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 134218240;
                      *&buf[4] = v25;
                      *&buf[12] = 1024;
                      *&buf[14] = v26;
                      OUTLINED_FUNCTION_4(&dword_2336E3000, MEMORY[0x277D86220], v28, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                    }

                    v27 = MEMORY[0x277D86220];
                    v29 = MEMORY[0x277D86220];
                  }

                  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109120;
                    *&buf[4] = v24;
                    _os_log_impl(&dword_2336E3000, v27, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: allow override: %d", buf, 8u);
                  }

                  if (v24 && (+[ACCUserDefaults sharedDefaults](ACCUserDefaults, "sharedDefaults"), v30 = objc_claimAutoreleasedReturnValue(), [v30 stringForKey:@"NFCColorOverride"], v31 = objc_claimAutoreleasedReturnValue(), v30, v31) && (v32 = parseColorString(v31, &v65), v31, v32))
                  {
                    v33 = gLogObjects;
                    v34 = gNumLogObjects;
                    if (gLogObjects && gNumLogObjects >= 1)
                    {
                      v35 = *gLogObjects;
                    }

                    else
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        *buf = 134218240;
                        *&buf[4] = v33;
                        *&buf[12] = 1024;
                        *&buf[14] = v34;
                        OUTLINED_FUNCTION_4(&dword_2336E3000, MEMORY[0x277D86220], v37, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
                      }

                      v35 = MEMORY[0x277D86220];
                      v38 = MEMORY[0x277D86220];
                    }

                    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 134218496;
                      *&buf[4] = v65;
                      *&buf[12] = 2048;
                      *&buf[14] = *(&v65 + 1);
                      *&buf[22] = 2048;
                      *&buf[24] = v66;
                      _os_log_impl(&dword_2336E3000, v35, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: override %f %f %f", buf, 0x20u);
                    }

                    v36 = &v65;
                  }

                  else
                  {
                    v36 = &v19[32 * v20];
                  }

                  v39 = [MEMORY[0x277CBEA90] dataWithBytes:v36 length:32];
                  [v7 setValue:v39 forKey:*MEMORY[0x277CFD2E8]];
                  if (v17)
                  {
                    *&v40 = -1;
                    *(&v40 + 1) = -1;
                    *buf = v40;
                    *&buf[16] = v40;
                    v41 = +[ACCUserDefaults sharedDefaults];
                    v42 = [v41 BOOLForKey:@"AllowNFCColorOverride"];

                    v43 = gLogObjects;
                    v44 = gNumLogObjects;
                    if (gLogObjects && gNumLogObjects >= 1)
                    {
                      v45 = *gLogObjects;
                    }

                    else
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                      {
                        *v68 = 134218240;
                        v69 = v43;
                        v70 = 1024;
                        LODWORD(v71) = v44;
                        OUTLINED_FUNCTION_4(&dword_2336E3000, MEMORY[0x277D86220], v46, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v68);
                      }

                      v45 = MEMORY[0x277D86220];
                      v47 = MEMORY[0x277D86220];
                    }

                    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                    {
                      *v68 = 67109120;
                      LODWORD(v69) = v42;
                      _os_log_impl(&dword_2336E3000, v45, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: allow override: %d", v68, 8u);
                    }

                    if (v42 && (+[ACCUserDefaults sharedDefaults](ACCUserDefaults, "sharedDefaults"), v48 = objc_claimAutoreleasedReturnValue(), [v48 stringForKey:@"NFCSecondaryColorOverride"], v49 = objc_claimAutoreleasedReturnValue(), v48, v49) && (v50 = parseColorString(v49, buf), v49, v50))
                    {
                      v51 = gLogObjects;
                      v52 = gNumLogObjects;
                      if (gLogObjects && gNumLogObjects >= 1)
                      {
                        v53 = *gLogObjects;
                      }

                      else
                      {
                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                        {
                          *v68 = 134218240;
                          v69 = v51;
                          v70 = 1024;
                          LODWORD(v71) = v52;
                          OUTLINED_FUNCTION_4(&dword_2336E3000, MEMORY[0x277D86220], v56, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v68);
                        }

                        v53 = MEMORY[0x277D86220];
                        v57 = MEMORY[0x277D86220];
                      }

                      v55 = 0x277CBE000uLL;
                      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                      {
                        *v68 = 134218496;
                        v69 = *buf;
                        v70 = 2048;
                        v71 = *&buf[8];
                        v72 = 2048;
                        v73 = *&buf[16];
                        _os_log_impl(&dword_2336E3000, v53, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: secondary override %f %f %f", v68, 0x20u);
                      }

                      v54 = buf;
                    }

                    else
                    {
                      v54 = &v64[32 * v20];
                      v55 = 0x277CBE000;
                    }

                    v58 = [*(v55 + 2704) dataWithBytes:v54 length:32];
                    OUTLINED_FUNCTION_5();
                  }
                }
              }
            }

LABEL_79:
            if ((v14 & 2) != 0)
            {
              v59 = [OUTLINED_FUNCTION_7() numberWithBool:?];
              OUTLINED_FUNCTION_5();

              if ((v14 & 4) == 0)
              {
LABEL_81:
                if ((v14 & 0x10) == 0)
                {
                  goto LABEL_82;
                }

                goto LABEL_86;
              }
            }

            else if ((v14 & 4) == 0)
            {
              goto LABEL_81;
            }

            v60 = [OUTLINED_FUNCTION_7() numberWithBool:?];
            OUTLINED_FUNCTION_5();

            if ((v14 & 0x10) == 0)
            {
LABEL_82:
              if ((v14 & 0x20) == 0)
              {
                break;
              }

              goto LABEL_87;
            }

LABEL_86:
            v61 = [OUTLINED_FUNCTION_7() numberWithBool:?];
            OUTLINED_FUNCTION_5();

            if ((v14 & 0x20) == 0)
            {
              break;
            }

LABEL_87:
            v62 = [OUTLINED_FUNCTION_7() numberWithBool:?];
            OUTLINED_FUNCTION_5();

            break;
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_connectToTagId:(id)id
{
  v44 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  connectedTagId = self->_polledTags;
  v5 = [(NSArray *)connectedTagId countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v5)
  {
    v11 = 0;
    v8 = 0;
LABEL_26:
    v24 = 0;
LABEL_30:

    v14 = v8;
    goto LABEL_31;
  }

  v7 = v5;
  v8 = 0;
  v9 = *v36;
  *&v6 = 134218240;
  v28 = v6;
  obj = connectedTagId;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v36 != v9)
    {
      objc_enumerationMutation(obj);
    }

    v11 = *(*(&v35 + 1) + 8 * v10);
    readerSession = self->_readerSession;
    v34 = v8;
    v13 = [(NFAccessoryReaderSession *)readerSession connectTag:v11 error:&v34, v28];
    v14 = v34;

    if ((v13 & 1) == 0)
    {
      v19 = gLogObjects;
      v20 = gNumLogObjects;
      v17 = MEMORY[0x277D86220];
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v17 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = v28;
          v41 = v19;
          v42 = 1024;
          v43 = v20;
          _os_log_error_impl(&dword_2336E3000, v17, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
        }

        v21 = v17;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = v14;
        _os_log_impl(&dword_2336E3000, v17, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: connectTag failed: %@", buf, 0xCu);
      }

      v8 = v14;
      goto LABEL_21;
    }

    if (!idCopy)
    {
      v23 = v11;
      goto LABEL_28;
    }

    v15 = self->_readerSession;
    v33 = v14;
    v16 = [(NFAccessoryReaderSession *)v15 readTypeIdentifier:&v33];
    v17 = v33;

    if (!v16)
    {
      v22 = self->_readerSession;
      v32 = v17;
      [(NFAccessoryReaderSession *)v22 disconnectTag:&v32];
      v8 = v32;
      goto LABEL_21;
    }

    if (([v16 isEqualToData:idCopy]& 1) != 0)
    {
      break;
    }

    v18 = self->_readerSession;
    v31 = v17;
    [(NFAccessoryReaderSession *)v18 disconnectTag:&v31];
    v8 = v31;

    v17 = v16;
LABEL_21:

    if (v7 == ++v10)
    {
      connectedTagId = obj;
      v7 = [(NSArray *)obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      v11 = 0;
      goto LABEL_26;
    }
  }

  v25 = v11;

  v14 = v17;
LABEL_28:

  if (v11)
  {
    objc_storeStrong(&self->_connectedTag, v11);
    v26 = idCopy;
    connectedTagId = self->_connectedTagId;
    self->_connectedTagId = v26;
    v24 = 1;
    v8 = v14;
    goto LABEL_30;
  }

  v24 = 0;
LABEL_31:

  return v24;
}

void __49__AccessoryTransportPluginNFC__handleIOHIDEvent___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  IntegerValue = IOHIDEventGetIntegerValue();
  v3 = (IntegerValue >> 10) & 1;
  if (*(*(a1 + 32) + 152) == v3)
  {
    return;
  }

  if (v3)
  {
    goto LABEL_5;
  }

  memset(v18, 170, 16);
  clock_gettime(_CLOCK_REALTIME, v18);
  v4 = *(a1 + 32);
  if (*(v4 + 184) != 1)
  {
    goto LABEL_5;
  }

  v5 = (v4 + 160);
  if (*v18 < *v5)
  {
    goto LABEL_5;
  }

  if (*v18 == *v5)
  {
    v17 = *&v18[8];
LABEL_23:
    v6 = v17 - v5[1] < 350000000;
    goto LABEL_6;
  }

  if (*v18 == *v5 + 1)
  {
    v17 = *&v18[8] + 1000000000;
    goto LABEL_23;
  }

LABEL_5:
  v6 = 0;
LABEL_6:
  v7 = gLogObjects;
  v8 = gNumLogObjects;
  if (gLogObjects)
  {
    v9 = gNumLogObjects < 1;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *v18 = 134218240;
      *&v18[4] = v7;
      *&v18[12] = 1024;
      *&v18[14] = v8;
      OUTLINED_FUNCTION_1(&dword_2336E3000, MEMORY[0x277D86220], v10, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v11, v12, v13, v14, *v18, *&v18[8], *&v18[16], v19);
    }

    v16 = MEMORY[0x277D86220];
    v15 = MEMORY[0x277D86220];
  }

  else
  {
    v16 = *gLogObjects;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 67109632;
    *&v18[4] = (IntegerValue >> 10) & 1;
    *&v18[8] = 1024;
    *&v18[10] = IntegerValue;
    *&v18[14] = 1024;
    *&v18[16] = v6;
    _os_log_impl(&dword_2336E3000, v16, OS_LOG_TYPE_DEFAULT, "NFC transport plugin: _handleIOHIDEvent: %d, %x, ignore=%d", v18, 0x14u);
  }

  if (!v6)
  {
    *(*(a1 + 32) + 152) = v3;
  }
}

- (void)_updateAccessoryPower:(BOOL)power
{
  powerCopy = power;
  v16 = *MEMORY[0x277D85DE8];
  connect = 0;
  ServiceWithPrimaryPort = IOAccessoryManagerGetServiceWithPrimaryPort();
  if (!IOServiceOpen(ServiceWithPrimaryPort, *MEMORY[0x277D85F48], 0, &connect) && connect)
  {
    if (powerCopy)
    {
      v5 = IOAccessoryManagerAllowFeatures();
    }

    else
    {
      v5 = IOAccessoryManagerRevokeFeatures();
    }

    v6 = v5;
    if (v5)
    {
      v7 = gLogObjects;
      v8 = gNumLogObjects;
      if (gLogObjects && gNumLogObjects >= 1)
      {
        v9 = *gLogObjects;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          *v14 = v7;
          *&v14[8] = 1024;
          v15 = v8;
          OUTLINED_FUNCTION_4(&dword_2336E3000, MEMORY[0x277D86220], v10, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf);
        }

        v9 = MEMORY[0x277D86220];
        v11 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *v14 = powerCopy;
        *&v14[4] = 1024;
        *&v14[6] = v6;
        _os_log_error_impl(&dword_2336E3000, v9, OS_LOG_TYPE_ERROR, "NFC transport plugin: Set Feature Mask %d fail kernStatus:%02X", buf, 0xEu);
      }
    }

    IOServiceClose(connect);
  }
}

- (void)sendOutgoingData:(uint64_t)a1 forEndpointWithUUID:(int)a2 connectionUUID:.cold.1(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2[0] = 67109632;
  v2[1] = 3;
  v3 = 2048;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_2336E3000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Make sure you have called init_logging_signposts() / init_logging()!\n module %d, gLogSignpostObjects: %p, gNumLogSignpostObjects: %d", v2, 0x18u);
}

- (void)_handleNearFieldAccessoryEventNotification:.cold.6()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  [AccessoryTransportPluginNFC _getNfcStateMachineState];
}

- (void)_getNfcStateMachineState
{
  v1 = logObjectForModule();
  if (OUTLINED_FUNCTION_8(v1))
  {
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)_checkProductTypeCompatibility:.cold.1()
{
  v1 = logObjectForModule();
  if (OUTLINED_FUNCTION_8(v1))
  {
    OUTLINED_FUNCTION_3();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

@end