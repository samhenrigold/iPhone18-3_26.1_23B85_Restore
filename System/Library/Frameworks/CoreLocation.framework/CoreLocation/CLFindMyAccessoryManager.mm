@interface CLFindMyAccessoryManager
+ (id)checkAvailabilityForPairedOwnerInformationControlPointMessages:(id)messages messageName:()basic_string<char;
+ (id)errorFromFragmentationStatus:(unint64_t)status;
- (CLFindMyAccessoryManager)initWithDelegate:(id)delegate delegateQueue:(id)queue;
- (void)configureNBRangingOnDevice:(id)device withParams:(id)params;
- (void)configureRangingOnDevice:(id)device macAddress:(id)address countryCode:(unsigned __int8)code uwbChannel:(unsigned __int8)channel acqPreamble:(unsigned __int8)preamble trackingPreamble:(unsigned __int8)trackingPreamble interval:(unsigned __int16)interval;
- (void)connectDevice:(id)device;
- (void)dealloc;
- (void)deinitRangingOnDevice:(id)device;
- (void)disconnectDevice:(id)device;
- (void)dumpLogDataOfType:(unint64_t)type fromDevice:(id)device;
- (void)fetchAISAccessoryCapabilities:(id)capabilities;
- (void)fetchAISAccessoryCategory:(id)category;
- (void)fetchAISBatteryLevel:(id)level;
- (void)fetchAISBatteryType:(id)type;
- (void)fetchAISFirmwareVersion:(id)version;
- (void)fetchAISForTAUnknownBeacon:(id)beacon macAddress:(id)address deviceType:(id)type;
- (void)fetchAISManufacturerName:(id)name;
- (void)fetchAISModelName:(id)name;
- (void)fetchAISNetworkID:(id)d;
- (void)fetchAISProductData:(id)data;
- (void)fetchAISProtocolImplementation:(id)implementation;
- (void)fetchAISSerialNumber:(id)number;
- (void)fetchAccelerometerOrientationModeConfigurationForDevice:(id)device;
- (void)fetchAccelerometerSlopeModeConfigurationForDevice:(id)device;
- (void)fetchAccessoryInformationForDevice:(id)device;
- (void)fetchBatteryStatusForDevice:(id)device;
- (void)fetchConnectionStateForDevice:(id)device;
- (void)fetchFindingCapabilities:(id)capabilities;
- (void)fetchFirmwareVersionFromDevice:(id)device;
- (void)fetchHawkeyeAISAccessoryCapabilities:(id)capabilities;
- (void)fetchHawkeyeAISAccessoryCategory:(id)category;
- (void)fetchHawkeyeAISBatteryType:(id)type;
- (void)fetchHawkeyeAISFindMyVersion:(id)version;
- (void)fetchHawkeyeAISManufacturerName:(id)name;
- (void)fetchHawkeyeAISModelColorCode:(id)code;
- (void)fetchHawkeyeAISModelName:(id)name;
- (void)fetchHawkeyeAISProductData:(id)data;
- (void)fetchHawkeyeCurrentPrimaryKey:(id)key;
- (void)fetchHawkeyeSerialNumber:(id)number;
- (void)fetchHawkeyeiCloudIdentifier:(id)identifier;
- (void)fetchTxPower:(id)power;
- (void)fetchTxPowerFromDevice:(id)device asOwner:(BOOL)owner;
- (void)fetchUserStatsWithPersistence:(BOOL)persistence fromDevice:(id)device;
- (void)forceSurfaceStagedDetections:(id)detections deviceType:(id)type detailsBitmask:(id)bitmask;
- (void)getMultiPartStatusFromDevice:(id)device;
- (void)getMultiStatusFromDevice:(id)device;
- (void)handleInterruption;
- (void)handleMessage:(shared_ptr<CLConnectionMessage>)message;
- (void)induceCrashOnDevice:(id)device;
- (void)initAccumulator;
- (void)initRangingOnDevice:(id)device macAddress:(id)address;
- (void)prepareRangingOnDevice:(id)device;
- (void)rollWildKeyOnDevice:(id)device;
- (void)scanForHELE;
- (void)scanForNearbyDevicesLong;
- (void)scanForNearbyOwner;
- (void)sendMessage:(const char *)message;
- (void)sendMessage:(const char *)message withPayload:(id)payload;
- (void)setAccelerometerOrientationModeConfiguration:(id)configuration forDevice:(id)device;
- (void)setAccelerometerSlopeModeConfiguration:(id)configuration forDevice:(id)device;
- (void)setBatteryStatus:(unint64_t)status forDevice:(id)device;
- (void)setDeviceType:(unsigned __int8)type onDevice:(id)device;
- (void)setHawkeyeTestMode:(int)mode forDevice:(id)device;
- (void)setHawkeyeUTMotionConfigWithSeparatedUTTimeoutSeconds:(unsigned int)seconds separatedUTBackoffTimeoutSeconds:(unsigned int)timeoutSeconds forDevice:(id)device;
- (void)setKeyRollInterval:(unsigned int)interval onDevice:(id)device;
- (void)setNearOwnerTimeout:(unsigned __int16)timeout onDevice:(id)device;
- (void)setObfuscatedIdentifier:(id)identifier onDevice:(id)device;
- (void)setUnauthorizedPlaySoundRateLimit:(BOOL)limit forDevice:(id)device;
- (void)setWildConfiguration:(id)configuration onDevice:(id)device;
- (void)stageTADetection:(id)detection deviceType:(id)type detailsBitmask:(id)bitmask shouldRemoveDevice:(id)device;
- (void)startAggressiveAdvertisingOnDevice:(id)device withTimeout:(unsigned int)timeout;
- (void)startEventCounterForDevice:(id)device;
- (void)startNBRangingOnDevice:(id)device withIRK:(id)k;
- (void)startPlayingSoundSequence:(id)sequence onDevice:(id)device;
- (void)startPlayingUnauthorizedSoundOnDevice:(id)device;
- (void)startPlayingUnauthorizedSoundSequence:(id)sequence onDevice:(id)device;
- (void)startRangingOnDevice:(id)device targetEventCounter:(unsigned __int16)counter;
- (void)startUnauthorizedAggressiveAdvertisingOnDevice:(id)device;
- (void)stopAggressiveAdvertisingOnDevice:(id)device;
- (void)stopEventCounterForDevice:(id)device;
- (void)stopPlayingSoundOnDevice:(id)device;
- (void)stopPlayingUnauthorizedSoundOnDevice:(id)device;
- (void)stopRangingOnDevice:(id)device;
- (void)stopScanForNearbyDevicesLong;
- (void)unpairFromDevice:(id)device;
- (void)unpairFromDeviceWithAddress:(id)address;
@end

@implementation CLFindMyAccessoryManager

- (void)dealloc
{
  delegateQueue = self->_delegateQueue;
  if (delegateQueue)
  {
    dispatch_release(delegateQueue);
    self->_delegateQueue = 0;
  }

  v4.receiver = self;
  v4.super_class = CLFindMyAccessoryManager;
  [(CLFindMyAccessoryManager *)&v4 dealloc];
}

- (void)initAccumulator
{
  if (!self->_accumulator)
  {
    v3 = [CLFindMyAccessoryFragmentAccumulator alloc];
    self->_accumulator = objc_msgSend_initWithMaxBytesPerUUID_(v3, v4, 100000, v5);
  }
}

- (CLFindMyAccessoryManager)initWithDelegate:(id)delegate delegateQueue:(id)queue
{
  v12.receiver = self;
  v12.super_class = CLFindMyAccessoryManager;
  v6 = [(CLFindMyAccessoryManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_delegate, delegate);
    if (queue)
    {
      v7->_delegateQueue = queue;
      dispatch_retain(queue);
    }

    else
    {
      v7->_delegateQueue = dispatch_queue_create("com.apple.DurianManagement.privateQueue", 0);
    }

    objc_msgSend_initAccumulator(v7, v8, v9, v10);
    operator new();
  }

  return 0;
}

+ (id)errorFromFragmentationStatus:(unint64_t)status
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (status == 1)
  {
    return 0;
  }

  v5 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A578];
  v10[0] = objc_msgSend_convertDataStatusToString_(CLFindMyAccessoryFragmentAccumulator, a2, status, v3);
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v6, v10, &v9, 1);
  return objc_msgSend_errorWithDomain_code_userInfo_(v5, v8, @"kCLErrorDomainPrivate", 26, v7);
}

+ (id)checkAvailabilityForPairedOwnerInformationControlPointMessages:(id)messages messageName:()basic_string<char
{
  v39[1] = *MEMORY[0x1E69E9840];
  if (!messages)
  {
    return 0;
  }

  if (!std::string::compare(a4, "DurianManagement/DidFetchHawkeyeSerialNumber"))
  {
    if (objc_msgSend_length(messages, v6, v7, v8) == 141 || objc_msgSend_length(messages, v15, v16, v17) == 145)
    {
      goto LABEL_11;
    }

LABEL_9:
    v18 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A578];
    v39[0] = @"Invalid response length";
    v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v15, v39, &v38, 1);
    return objc_msgSend_errorWithDomain_code_userInfo_(v18, v20, @"kCLErrorDomainPrivate", 21, v19);
  }

  if (!std::string::compare(a4, "DurianManagement/DidFetchHawkeyeCurrentPrimaryKey"))
  {
    if (objc_msgSend_length(messages, v9, v10, v11) == 28)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (std::string::compare(a4, "DurianManagement/DidFetchHawkeyeiCloudIdentifier"))
  {
    return 0;
  }

  if (objc_msgSend_length(messages, v12, v13, v14) != 60)
  {
    goto LABEL_9;
  }

LABEL_11:
  result = objc_msgSend_length(messages, v15, v16, v17);
  if (!result)
  {
    return result;
  }

  v25 = MEMORY[0x1E695DF88];
  v26 = objc_msgSend_length(messages, v22, v23, v24);
  v29 = objc_msgSend_dataWithLength_(v25, v27, v26, v28);
  if (objc_msgSend_isEqual_(messages, v30, v29, v31))
  {
    v33 = MEMORY[0x1E696ABC0];
    v36 = *MEMORY[0x1E696A578];
    v37 = @"Response unavailable";
    v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v32, &v37, &v36, 1);
    return objc_msgSend_errorWithDomain_code_userInfo_(v33, v35, @"kCLErrorDomainPrivate", 22, v34);
  }

  return 0;
}

- (void)handleMessage:(shared_ptr<CLConnectionMessage>)message
{
  var0 = message.var0;
  v653 = *MEMORY[0x1E69E9840];
  v627 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v624 = v12;
  v14 = var0;
  v17 = objc_msgSend_setWithObjects_(v627, v15, v4, v16, v5, v6, v7, v8, v9, v10, v11, v624, v13, 0);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*var0, v17);
  v21 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v19, 0x1F0E747E0, v20);
  v24 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v22, 0x1F0E74840, v23);
  if (qword_1EAFE46C8 != -1)
  {
    dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
  }

  v25 = qword_1EAFE4700;
  if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
  {
    v26 = CLConnectionMessage::name(*v14);
    if (*(v26 + 23) >= 0)
    {
      v27 = v26;
    }

    else
    {
      v27 = *v26;
    }

    *buf = 68289795;
    v638 = 0;
    v639 = 2082;
    v640 = "";
    v641 = 2082;
    *v642 = v27;
    *&v642[8] = 2113;
    *&v642[10] = v21;
    v643 = 2113;
    v644 = v24;
    _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian handling message to client, message:%{public, location:escape_only}s, beaconUUID:%{private, location:escape_only}@, error:%{private, location:escape_only}@}", buf, 0x30u);
  }

  v28 = CLConnectionMessage::name(*v14);
  if (std::string::compare(v28, "DurianManagement/DidReceiveDataFragment"))
  {
    v31 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v31, "DurianManagement/DidConnect"))
    {
      objc_loadWeak(&self->_delegate);
      v190 = objc_opt_respondsToSelector();
      Weak = objc_loadWeak(&self->_delegate);
      if (v190)
      {
        objc_msgSend_findMyAccessoryManager_didConnectDevice_error_(Weak, v192, self, v21, v24);
      }

      else if (objc_opt_respondsToSelector())
      {
        v195 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didConnectDevice_(v195, v196, self, v21);
      }

      goto LABEL_251;
    }

    v32 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v32, "DurianManagement/DidDisconnect"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v193 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didDisconnectDevice_(v193, v194, self, v21);
      }

      goto LABEL_251;
    }

    v33 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v33, "DurianManagement/DidFetchConnectionState"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v199 = objc_msgSend_objectForKey_(DictionaryOfClasses, v197, 0x1F0E74820, v198);
        v203 = objc_msgSend_unsignedIntegerValue(v199, v200, v201, v202);
        v204 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didFetchConnectionState_forDevice_(v204, v205, self, v203, v21);
      }

      goto LABEL_251;
    }

    v34 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v34, "DurianManagement/DidStartPlayingSound"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v206 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didStartPlayingSoundOnDevice_withError_(v206, v207, self, v21, v24);
      }

      goto LABEL_251;
    }

    v35 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v35, "DurianManagement/DidCompletePlayingSound"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v208 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didCompletePlayingSoundOnDevice_withError_(v208, v209, self, v21, v24);
      }

      goto LABEL_251;
    }

    v36 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v36, "DurianManagement/DidStopPlayingSound"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v210 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didStopPlayingSoundOnDevice_withError_(v210, v211, self, v21, v24);
      }

      goto LABEL_251;
    }

    v37 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v37, "DurianManagement/DidFetchFindingCapabilities"))
    {
      if (qword_1EAFE46C8 != -1)
      {
        dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
      }

      v212 = qword_1EAFE4700;
      if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v638 = 0;
        v639 = 2082;
        v640 = "";
        v641 = 2114;
        *v642 = v21;
        _os_log_impl(&dword_19B873000, v212, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLFindMyAccessoryFindingCapabilities didFetchFindingCapabilitiesOnDevice, device:%{public, location:escape_only}@}", buf, 0x1Cu);
      }

      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v215 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v213, 0x1F0E74B20, v214);
        v216 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didFetchFindingCapabilitiesOnDevice_withFindingCapabilities_error_(v216, v217, self, v21, v215, v24);
      }

      goto LABEL_251;
    }

    v38 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v38, "DurianManagement/DidInitRanging"))
    {
      v218 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v39, 0x1F0E74C40, v40);
      v222 = objc_msgSend_unsignedIntValue(v218, v219, v220, v221);
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v223 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didInitRangingOnDevice_withStatus_error_(v223, v224, self, v21, v222, v24);
      }

      goto LABEL_251;
    }

    v41 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v41, "DurianManagement/DidDeinitRanging"))
    {
      v225 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v42, 0x1F0E74C40, v43);
      v229 = objc_msgSend_unsignedIntValue(v225, v226, v227, v228);
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v230 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didDeinitRangingOnDevice_withStatus_error_(v230, v231, self, v21, v229, v24);
      }

      goto LABEL_251;
    }

    v44 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v44, "DurianManagement/DidConfigureRanging"))
    {
      v232 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v45, 0x1F0E74C40, v46);
      v236 = objc_msgSend_unsignedIntValue(v232, v233, v234, v235);
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v237 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didConfigureRangingOnDevice_withStatus_error_(v237, v238, self, v21, v236, v24);
      }

      goto LABEL_251;
    }

    v47 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v47, "DurianManagement/DidPrepareRanging"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v239 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didPrepareRangingOnDevice_error_(v239, v240, self, v21, v24);
      }

      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v243 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v241, 0x1F0E74C00, v242);
        v244 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didPrepareRangingOnDevice_withConnInterval_error_(v244, v245, self, v21, v243, v24);
      }

      goto LABEL_251;
    }

    v48 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v48, "DurianManagement/DidStartRanging"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v246 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didStartRangingOnDevice_error_(v246, v247, self, v21, v24);
      }

      goto LABEL_251;
    }

    v49 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v49, "DurianManagement/DidCompleteRanging"))
    {
      v248 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v50, 0x1F0E74C40, v51);
      v252 = objc_msgSend_unsignedIntValue(v248, v249, v250, v251);
      v255 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v253, 0x1F0E74C60, v254);
      v259 = objc_msgSend_unsignedShortValue(v255, v256, v257, v258);
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v260 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didCompleteRangingOnDevice_withStatus_endReason_error_(v260, v261, self, v21, v252, v259, v24);
      }

      goto LABEL_251;
    }

    v52 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v52, "DurianManagement/DidReceiveRangingError"))
    {
      v262 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v53, 0x1F0E74C40, v54);
      v266 = objc_msgSend_unsignedIntValue(v262, v263, v264, v265);
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v267 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didReceiveRangingErrorFromDevice_withStatus_(v267, v268, self, v21, v266);
      }

      goto LABEL_251;
    }

    v55 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v55, "DurianManagement/DidReceiveRangingTimestamps"))
    {
      v269 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v56, 0x1F0E74C80, v57);
      v273 = objc_msgSend_unsignedShortValue(v269, v270, v271, v272);
      v276 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v274, 0x1F0E74CA0, v275);
      v280 = objc_msgSend_unsignedLongLongValue(v276, v277, v278, v279);
      v283 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v281, 0x1F0E74CC0, v282);
      v287 = objc_msgSend_unsignedLongLongValue(v283, v284, v285, v286);
      v290 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v288, 0x1F0E74CE0, v289);
      v294 = objc_msgSend_unsignedShortValue(v290, v291, v292, v293);
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v295 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didReceiveRangingTimestampFromDevice_status_rtt_tat_cycleIndex_(v295, v296, self, v21, v273, v280, v287, v294);
      }

      goto LABEL_251;
    }

    v58 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v58, "DurianManagement/DidHaveRangingMovement"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v297 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didHaveRangingMovementOnDevice_(v297, v298, self, v21);
      }

      goto LABEL_251;
    }

    v59 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v59, "DurianManagement/DidFailRangingEventCounterAction"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v299 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didFailWithError_forDevice_(v299, v300, self, v24, v21);
      }

      goto LABEL_251;
    }

    v60 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v60, "DurianManagement/DidStartPlayingUnauthorizedSound"))
    {
      objc_loadWeak(&self->_delegate);
      v301 = objc_opt_respondsToSelector();
      v302 = objc_loadWeak(&self->_delegate);
      if (v301)
      {
        objc_msgSend_findMyAccessoryManager_didStartPlayingUnauthorizedSoundOnDevice_withError_(v302, v303, self, v21, v24);
      }

      else if (objc_opt_respondsToSelector())
      {
        v306 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didPlayUnauthorizedSoundOnDevice_withError_(v306, v307, self, v21, v24);
      }

      goto LABEL_251;
    }

    v61 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v61, "DurianManagement/DidCompletePlayingUnauthorizedSound"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v304 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didCompletePlayingUnauthorizedSoundOnDevice_withError_(v304, v305, self, v21, v24);
      }

      goto LABEL_251;
    }

    v62 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v62, "DurianManagement/DidStopPlayingUnauthorizedSound"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v308 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didStopPlayingUnauthorizedSoundOnDevice_withError_(v308, v309, self, v21, v24);
      }

      goto LABEL_251;
    }

    v63 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v63, "DurianManagement/DidReceiveKeyRollIndex"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v312 = objc_msgSend_objectForKey_(DictionaryOfClasses, v310, 0x1F0E74AE0, v311);
        v316 = objc_msgSend_unsignedIntegerValue(v312, v313, v314, v315);
        v317 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didReceiveKeyRollIndex_fromDevice_withError_(v317, v318, self, v316, v21, 0);
      }

      goto LABEL_251;
    }

    v64 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v64, "DurianManagement/DidGetMultiStatus"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v321 = objc_msgSend_objectForKey_(DictionaryOfClasses, v319, 0x1F0E749C0, v320);
        v325 = objc_msgSend_unsignedIntegerValue(v321, v322, v323, v324);
        v326 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didGetMultiStatus_fromDevice_withError_(v326, v327, self, v325, v21, v24);
      }

      goto LABEL_251;
    }

    v65 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v65, "DurianManagement/DidReceiveGroupStatus"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v330 = objc_msgSend_objectForKey_(DictionaryOfClasses, v328, 0x1F0E749E0, v329);
        v334 = objc_msgSend_unsignedIntegerValue(v330, v331, v332, v333);
        v337 = objc_msgSend_objectForKey_(DictionaryOfClasses, v335, 0x1F0E74A00, v336);
        v341 = objc_msgSend_unsignedIntegerValue(v337, v338, v339, v340);
        v342 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didReceiveGroupRelationStatus_maintenanceStatus_fromDevice_withError_(v342, v343, self, v334, v341, v21, 0);
      }

      goto LABEL_251;
    }

    v66 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v66, "DurianManagement/DidFetchBatteryStatus"))
    {
      v344 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v67, 0x1F0E748C0, v68);
      v348 = objc_msgSend_unsignedLongValue(v344, v345, v346, v347);
      objc_loadWeak(&self->_delegate);
      v349 = objc_opt_respondsToSelector();
      v350 = objc_loadWeak(&self->_delegate);
      if (v349)
      {
        objc_msgSend_findMyAccessoryManager_didFetchBatteryStatus_forDevice_withError_(v350, v351, self, v348, v21, v24);
      }

      else if (objc_opt_respondsToSelector())
      {
        v354 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didFetchBatteryStatus_forDevice_(v354, v355, self, v348, v21);
      }

      goto LABEL_251;
    }

    v69 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v69, "DurianManagement/DidDetectCrash"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v352 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didDetectCrashOnDevice_(v352, v353, self, v21);
      }

      goto LABEL_251;
    }

    v70 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v70, "DurianManagement/DidDumpLogs"))
    {
      v356 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v71, 0x1F0E74880, v72);
      v360 = objc_msgSend_unsignedLongValue(v356, v357, v358, v359);
      v363 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v361, 0x1F0E74860, v362);
      if (v360 == 4)
      {
        v366 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v364, 0x1F0E74860, v365);
        objc_msgSend_appendData_forUUID_(self->_accumulator, v367, v366, v21);
        DataStatusForUUID = objc_msgSend_getDataStatusForUUID_(self->_accumulator, v368, v21, v369);
        if (!v24)
        {
          v24 = objc_msgSend_errorFromFragmentationStatus_(CLFindMyAccessoryManager, v371, DataStatusForUUID, v372);
        }

        v363 = objc_msgSend_dataForUUID_(self->_accumulator, v371, v21, v372);
      }

      v373 = v363;
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v374 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didDumpLogData_ofType_fromDevice_withError_(v374, v375, self, v373, v360, v21, v24);
      }

      goto LABEL_251;
    }

    v73 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v73, "DurianManagement/DidUnpair"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v376 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didUnpairFromDevice_withError_(v376, v377, self, v21, v24);
      }

      goto LABEL_251;
    }

    v74 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v74, "DurianManagement/DidSetTagType"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v378 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didSetDeviceTypeOnDevice_withError_(v378, v379, self, v21, v24);
      }

      goto LABEL_251;
    }

    v75 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v75, "DurianManagement/DidSetObfuscatedIdentifier"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v380 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didSetObfuscatedIdentifierOnDevice_withError_(v380, v381, self, v21, v24);
      }

      goto LABEL_251;
    }

    v76 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v76, "DurianManagement/DidSetNearOwnerTimeout"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v382 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didSetNearOwnerTimeoutOnDevice_withError_(v382, v383, self, v21, v24);
      }

      goto LABEL_251;
    }

    v77 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v77, "DurianManagement/DidSetWildConfiguration"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v384 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didSetWildConfigurationOnDevice_withError_(v384, v385, self, v21, v24);
      }

      goto LABEL_251;
    }

    v78 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v78, "DurianManagement/DidFetchUserStats_Deprecated"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v388 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v386, 0x1F0E74A20, v387);
        v389 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didFetchUserStats_fromDevice_withError_(v389, v390, self, v388, v21, v24);
      }

      goto LABEL_251;
    }

    v79 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v79, "DurianManagement/DidFetchUserStats"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v393 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v391, 0x1F0E74A20, v392);
        v394 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didFetchUserStats_forDevice_withError_(v394, v395, self, v393, v21, v24);
      }

      goto LABEL_251;
    }

    v80 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v80, "DurianManagement/DidRollWildKey"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v396 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didRollWildKeyOnDevice_withError_(v396, v397, self, v21, v24);
      }

      goto LABEL_251;
    }

    v81 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v81, "DurianManagement/DidSetAccelerometerSlopeMode"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v398 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didSetAccelerometerSlopeModeConfigurationForDevice_withError_(v398, v399, self, v21, v24);
      }

      goto LABEL_251;
    }

    v82 = CLConnectionMessage::name(*v14);
    if (!std::string::compare(v82, "DurianManagement/DidSetAccelerometerOrientationMode"))
    {
      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
LABEL_190:
        v400 = objc_loadWeak(&self->_delegate);
        objc_msgSend_findMyAccessoryManager_didSetAccelerometerOrientationModeConfigurationForDevice_withError_(v400, v401, self, v21, v24);
      }
    }

    else
    {
      v83 = CLConnectionMessage::name(*v14);
      if (std::string::compare(v83, "DurianManagement/DidGetAccelerometerSlopeModeConfiguration"))
      {
        v84 = CLConnectionMessage::name(*v14);
        if (!std::string::compare(v84, "DurianManagement/DidGetAccelerometerMode"))
        {
          v402 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v85, 0x1F0E74AA0, v86);
          v406 = objc_msgSend_unsignedIntValue(v402, v403, v404, v405);
          objc_loadWeak(&self->_delegate);
          if (objc_opt_respondsToSelector())
          {
            v407 = objc_loadWeak(&self->_delegate);
            objc_msgSend_findMyAccessoryManager_didFetchAccelerometerMode_forDevice_withError_(v407, v408, self, v406, v21, v24);
          }
        }

        else
        {
          v87 = CLConnectionMessage::name(*v14);
          if (!std::string::compare(v87, "DurianManagement/DidSetUnauthorizedPlaySoundRateLimit"))
          {
            objc_loadWeak(&self->_delegate);
            if (objc_opt_respondsToSelector())
            {
              v409 = objc_loadWeak(&self->_delegate);
              objc_msgSend_findMyAccessoryManager_didSetUnauthorizedPlaySoundRateLimitFromDevice_withError_(v409, v410, self, v21, v24);
            }
          }

          else
          {
            v88 = CLConnectionMessage::name(*v14);
            if (!std::string::compare(v88, "DurianManagement/DidFetchFirmwareVersion"))
            {
              v411 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v89, 0x1F0E748A0, v90);
              objc_loadWeak(&self->_delegate);
              if (objc_opt_respondsToSelector())
              {
                v412 = objc_loadWeak(&self->_delegate);
                objc_msgSend_findMyAccessoryManager_didFetchFirmwareVersion_fromDevice_withError_(v412, v413, self, v411, v21, v24);
              }
            }

            else
            {
              v91 = CLConnectionMessage::name(*v14);
              if (!std::string::compare(v91, "DurianManagement/DidCompleteHawkeyeTask"))
              {
                v414 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v92, 0x1F0E74D20, v93);
                v418 = objc_msgSend_intValue(v414, v415, v416, v417);
                objc_loadWeak(&self->_delegate);
                if (objc_opt_respondsToSelector())
                {
                  v419 = objc_loadWeak(&self->_delegate);
                  objc_msgSend_findMyAccessoryManager_didCompleteHawkeyeTaskWithOpcode_fromDevice_withError_(v419, v420, self, v418, v21, v24);
                }
              }

              else
              {
                v94 = CLConnectionMessage::name(*v14);
                if (!std::string::compare(v94, "DurianManagement/DidSetHawkeyeUTMotionConfig"))
                {
                  objc_loadWeak(&self->_delegate);
                  if (objc_opt_respondsToSelector())
                  {
                    v421 = objc_loadWeak(&self->_delegate);
                    objc_msgSend_findMyAccessoryManager_didSetHawkeyeUTMotionConfigForDevice_withError_(v421, v422, self, v21, v24);
                  }
                }

                else
                {
                  v95 = CLConnectionMessage::name(*v14);
                  if (!std::string::compare(v95, "DurianManagement/DidFetchTxPower"))
                  {
                    objc_loadWeak(&self->_delegate);
                    if (objc_opt_respondsToSelector())
                    {
                      v423 = objc_loadWeak(&self->_delegate);
                      v426 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v424, 0x1F0E74DA0, v425);
                      objc_msgSend_findMyAccessoryManager_didFetchTxPower_fromDevice_withError_(v423, v427, self, v426, v21, v24);
                    }
                  }

                  else
                  {
                    v96 = CLConnectionMessage::name(*v14);
                    if (!std::string::compare(v96, "DurianManagement/DidStartAggressiveAdvertising"))
                    {
                      objc_loadWeak(&self->_delegate);
                      if (objc_opt_respondsToSelector())
                      {
                        v428 = objc_loadWeak(&self->_delegate);
                        objc_msgSend_findMyAccessoryManager_didStartAggressiveAdvertisingOnDevice_withError_(v428, v429, self, v21, v24);
                      }
                    }

                    else
                    {
                      v97 = CLConnectionMessage::name(*v14);
                      if (!std::string::compare(v97, "DurianManagement/DidStopAggressiveAdvertising"))
                      {
                        objc_loadWeak(&self->_delegate);
                        if (objc_opt_respondsToSelector())
                        {
                          v430 = objc_loadWeak(&self->_delegate);
                          objc_msgSend_findMyAccessoryManager_didStopAggressiveAdvertisingOnDevice_withError_(v430, v431, self, v21, v24);
                        }
                      }

                      else
                      {
                        v98 = CLConnectionMessage::name(*v14);
                        if (!std::string::compare(v98, "DurianManagement/DidCompleteAggressiveAdvertising"))
                        {
                          objc_loadWeak(&self->_delegate);
                          if (objc_opt_respondsToSelector())
                          {
                            v432 = objc_loadWeak(&self->_delegate);
                            objc_msgSend_findMyAccessoryManager_didCompleteAggressiveAdvertisingOnDevice_withError_(v432, v433, self, v21, v24);
                          }
                        }

                        else
                        {
                          v99 = CLConnectionMessage::name(*v14);
                          if (!std::string::compare(v99, "DurianManagement/DidStartUnauthorizedAggressiveAdvertising"))
                          {
                            objc_loadWeak(&self->_delegate);
                            if (objc_opt_respondsToSelector())
                            {
                              v434 = objc_loadWeak(&self->_delegate);
                              objc_msgSend_findMyAccessoryManager_didStartUnauthorizedAggressiveAdvertisingOnDevice_withError_(v434, v435, self, v21, v24);
                            }
                          }

                          else
                          {
                            v100 = CLConnectionMessage::name(*v14);
                            if (!std::string::compare(v100, "DurianManagement/DidFetchHawkeyeAISProductData"))
                            {
                              v436 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v101, 0x1F0E74DC0, v102);
                              objc_loadWeak(&self->_delegate);
                              if (objc_opt_respondsToSelector())
                              {
                                v437 = objc_loadWeak(&self->_delegate);
                                objc_msgSend_findMyAccessoryManager_didFetchHawkeyeAISProductData_fromDevice_withError_(v437, v438, self, v436, v21, v24);
                              }
                            }

                            else
                            {
                              v103 = CLConnectionMessage::name(*v14);
                              if (!std::string::compare(v103, "DurianManagement/DidFetchHawkeyeAISManufacturerName"))
                              {
                                v439 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v104, 0x1F0E74DE0, v105);
                                objc_loadWeak(&self->_delegate);
                                if (objc_opt_respondsToSelector())
                                {
                                  v440 = objc_loadWeak(&self->_delegate);
                                  objc_msgSend_findMyAccessoryManager_didFetchHawkeyeAISManufacturerName_fromDevice_withError_(v440, v441, self, v439, v21, v24);
                                }
                              }

                              else
                              {
                                v106 = CLConnectionMessage::name(*v14);
                                if (!std::string::compare(v106, "DurianManagement/DidFetchHawkeyeAISModelName"))
                                {
                                  v442 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v107, 0x1F0E74E00, v108);
                                  objc_loadWeak(&self->_delegate);
                                  if (objc_opt_respondsToSelector())
                                  {
                                    v443 = objc_loadWeak(&self->_delegate);
                                    objc_msgSend_findMyAccessoryManager_didFetchHawkeyeAISModelName_fromDevice_withError_(v443, v444, self, v442, v21, v24);
                                  }
                                }

                                else
                                {
                                  v109 = CLConnectionMessage::name(*v14);
                                  if (!std::string::compare(v109, "DurianManagement/DidFetchHawkeyeAISModelColorCode"))
                                  {
                                    v445 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v110, 0x1F0E74E20, v111);
                                    objc_loadWeak(&self->_delegate);
                                    if (objc_opt_respondsToSelector())
                                    {
                                      v446 = objc_loadWeak(&self->_delegate);
                                      objc_msgSend_findMyAccessoryManager_didFetchHawkeyeAISModelColorCode_fromDevice_withError_(v446, v447, self, v445, v21, v24);
                                    }
                                  }

                                  else
                                  {
                                    v112 = CLConnectionMessage::name(*v14);
                                    if (!std::string::compare(v112, "DurianManagement/DidFetchHawkeyeAISAccessoryCategory"))
                                    {
                                      v448 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v113, 0x1F0E74E40, v114);
                                      objc_loadWeak(&self->_delegate);
                                      if (objc_opt_respondsToSelector())
                                      {
                                        v449 = objc_loadWeak(&self->_delegate);
                                        objc_msgSend_findMyAccessoryManager_didFetchHawkeyeAISAccessoryCategory_fromDevice_withError_(v449, v450, self, v448, v21, v24);
                                      }
                                    }

                                    else
                                    {
                                      v115 = CLConnectionMessage::name(*v14);
                                      if (!std::string::compare(v115, "DurianManagement/DidFetchHawkeyeAISAccessoryCapabilities"))
                                      {
                                        v451 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v116, 0x1F0E74E60, v117);
                                        objc_loadWeak(&self->_delegate);
                                        if (objc_opt_respondsToSelector())
                                        {
                                          v452 = objc_loadWeak(&self->_delegate);
                                          objc_msgSend_findMyAccessoryManager_didFetchHawkeyeAISAccessoryCapabilities_fromDevice_withError_(v452, v453, self, v451, v21, v24);
                                        }
                                      }

                                      else
                                      {
                                        v118 = CLConnectionMessage::name(*v14);
                                        if (!std::string::compare(v118, "DurianManagement/DidFetchHawkeyeAISFindMyVersion"))
                                        {
                                          v454 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v119, 0x1F0E74E80, v120);
                                          v458 = objc_msgSend_unsignedIntegerValue(v454, v455, v456, v457);
                                          objc_loadWeak(&self->_delegate);
                                          if (objc_opt_respondsToSelector())
                                          {
                                            v459 = objc_loadWeak(&self->_delegate);
                                            objc_msgSend_findMyAccessoryManager_didFetchHawkeyeAISFindMyVersion_fromDevice_withError_(v459, v460, self, v458, v21, v24);
                                          }
                                        }

                                        else
                                        {
                                          v121 = CLConnectionMessage::name(*v14);
                                          if (!std::string::compare(v121, "DurianManagement/DidFetchHawkeyeAISBatteryType"))
                                          {
                                            v461 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v122, 0x1F0E74EA0, v123);
                                            objc_loadWeak(&self->_delegate);
                                            if (objc_opt_respondsToSelector())
                                            {
                                              v462 = objc_loadWeak(&self->_delegate);
                                              objc_msgSend_findMyAccessoryManager_didFetchHawkeyeAISBatteryType_fromDevice_withError_(v462, v463, self, v461, v21, v24);
                                            }
                                          }

                                          else
                                          {
                                            v124 = CLConnectionMessage::name(*v14);
                                            if (!std::string::compare(v124, "DurianManagement/DidFetchHawkeyeSerialNumber"))
                                            {
                                              v464 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v125, 0x1F0E74EC0, v126);
                                              objc_msgSend_appendData_forUUID_(self->_accumulator, v465, v464, v21);
                                              v468 = objc_msgSend_getDataStatusForUUID_(self->_accumulator, v466, v21, v467);
                                              if (v24)
                                              {
                                                v471 = objc_msgSend_dataForUUID_(self->_accumulator, v469, v21, v470);
                                              }

                                              else
                                              {
                                                v24 = objc_msgSend_errorFromFragmentationStatus_(CLFindMyAccessoryManager, v469, v468, v470);
                                                v471 = objc_msgSend_dataForUUID_(self->_accumulator, v478, v21, v479);
                                                if (!v24)
                                                {
                                                  v480 = CLConnectionMessage::name(*v14);
                                                  if (*(v480 + 23) < 0)
                                                  {
                                                    sub_19B874C9C(__p, *v480, *(v480 + 8));
                                                  }

                                                  else
                                                  {
                                                    v482 = *v480;
                                                    v636 = *(v480 + 16);
                                                    *__p = v482;
                                                  }

                                                  v24 = objc_msgSend_checkAvailabilityForPairedOwnerInformationControlPointMessages_messageName_(CLFindMyAccessoryManager, v481, v471, __p);
                                                  if (SHIBYTE(v636) < 0)
                                                  {
                                                    operator delete(__p[0]);
                                                  }
                                                }
                                              }

                                              objc_loadWeak(&self->_delegate);
                                              if (objc_opt_respondsToSelector())
                                              {
                                                v503 = objc_loadWeak(&self->_delegate);
                                                objc_msgSend_findMyAccessoryManager_didFetchHawkeyeSerialNumber_fromDevice_withError_(v503, v504, self, v471, v21, v24);
                                              }
                                            }

                                            else
                                            {
                                              v127 = CLConnectionMessage::name(*v14);
                                              if (!std::string::compare(v127, "DurianManagement/DidFetchAISProductData"))
                                              {
                                                v472 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v128, 0x1F0E75160, v129);
                                                objc_loadWeak(&self->_delegate);
                                                if (objc_opt_respondsToSelector())
                                                {
                                                  v473 = objc_loadWeak(&self->_delegate);
                                                  objc_msgSend_findMyAccessoryManager_didFetchAISProductData_fromDevice_error_(v473, v474, self, v472, v21, v24);
                                                }
                                              }

                                              else
                                              {
                                                v130 = CLConnectionMessage::name(*v14);
                                                if (!std::string::compare(v130, "DurianManagement/DidFetchAISManufacturerName"))
                                                {
                                                  v475 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v131, 0x1F0E75180, v132);
                                                  objc_loadWeak(&self->_delegate);
                                                  if (objc_opt_respondsToSelector())
                                                  {
                                                    v476 = objc_loadWeak(&self->_delegate);
                                                    objc_msgSend_findMyAccessoryManager_didFetchAISManufacturerName_fromDevice_error_(v476, v477, self, v475, v21, v24);
                                                  }
                                                }

                                                else
                                                {
                                                  v133 = CLConnectionMessage::name(*v14);
                                                  if (!std::string::compare(v133, "DurianManagement/DidFetchAISModelName"))
                                                  {
                                                    v483 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v134, 0x1F0E751A0, v135);
                                                    objc_loadWeak(&self->_delegate);
                                                    if (objc_opt_respondsToSelector())
                                                    {
                                                      v484 = objc_loadWeak(&self->_delegate);
                                                      objc_msgSend_findMyAccessoryManager_didFetchAISModelName_fromDevice_error_(v484, v485, self, v483, v21, v24);
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v136 = CLConnectionMessage::name(*v14);
                                                    if (!std::string::compare(v136, "DurianManagement/DidFetchAISProtocolImplementation"))
                                                    {
                                                      v486 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v137, 0x1F0E751E0, v138);
                                                      v490 = objc_msgSend_unsignedIntValue(v486, v487, v488, v489);
                                                      objc_loadWeak(&self->_delegate);
                                                      if (objc_opt_respondsToSelector())
                                                      {
                                                        v491 = objc_loadWeak(&self->_delegate);
                                                        objc_msgSend_findMyAccessoryManager_didFetchAISProtocolImplementation_fromDevice_error_(v491, v492, self, v490, v21, v24);
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v139 = CLConnectionMessage::name(*v14);
                                                      if (!std::string::compare(v139, "DurianManagement/DidFetchAISAccessoryCategory"))
                                                      {
                                                        v493 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v140, 0x1F0E751C0, v141);
                                                        v497 = objc_msgSend_unsignedShortValue(v493, v494, v495, v496);
                                                        objc_loadWeak(&self->_delegate);
                                                        if (objc_opt_respondsToSelector())
                                                        {
                                                          v498 = objc_loadWeak(&self->_delegate);
                                                          objc_msgSend_findMyAccessoryManager_didFetchAISAccessoryCategory_fromDevice_error_(v498, v499, self, v497, v21, v24);
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v142 = CLConnectionMessage::name(*v14);
                                                        if (!std::string::compare(v142, "DurianManagement/DidFetchAISAccessoryCapabilities"))
                                                        {
                                                          v500 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v143, 0x1F0E75200, v144);
                                                          objc_loadWeak(&self->_delegate);
                                                          if (objc_opt_respondsToSelector())
                                                          {
                                                            v501 = objc_loadWeak(&self->_delegate);
                                                            objc_msgSend_findMyAccessoryManager_didFetchAISAccessoryCapabilities_fromDevice_error_(v501, v502, self, v500, v21, v24);
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v145 = CLConnectionMessage::name(*v14);
                                                          if (!std::string::compare(v145, "DurianManagement/DidFetchAISNetworkID"))
                                                          {
                                                            v508 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v146, 0x1F0E75220, v147);
                                                            v512 = objc_msgSend_unsignedShortValue(v508, v509, v510, v511);
                                                            objc_loadWeak(&self->_delegate);
                                                            if (objc_opt_respondsToSelector())
                                                            {
                                                              v513 = objc_loadWeak(&self->_delegate);
                                                              objc_msgSend_findMyAccessoryManager_didFetchAISNetworkID_fromDevice_error_(v513, v514, self, v512, v21, v24);
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v148 = CLConnectionMessage::name(*v14);
                                                            if (!std::string::compare(v148, "DurianManagement/DidFetchAISFirmwareVersion"))
                                                            {
                                                              v515 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v149, 0x1F0E75240, v150);
                                                              objc_loadWeak(&self->_delegate);
                                                              if (objc_opt_respondsToSelector())
                                                              {
                                                                v516 = objc_loadWeak(&self->_delegate);
                                                                objc_msgSend_findMyAccessoryManager_didFetchAISFirmwareVersion_fromDevice_error_(v516, v517, self, v515, v21, v24);
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v151 = CLConnectionMessage::name(*v14);
                                                              if (!std::string::compare(v151, "DurianManagement/DidFetchAISBatteryType"))
                                                              {
                                                                v518 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v152, 0x1F0E75260, v153);
                                                                v522 = objc_msgSend_unsignedShortValue(v518, v519, v520, v521);
                                                                objc_loadWeak(&self->_delegate);
                                                                if (objc_opt_respondsToSelector())
                                                                {
                                                                  v523 = objc_loadWeak(&self->_delegate);
                                                                  objc_msgSend_findMyAccessoryManager_didFetchAISBatteryType_fromDevice_error_(v523, v524, self, v522, v21, v24);
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v154 = CLConnectionMessage::name(*v14);
                                                                if (!std::string::compare(v154, "DurianManagement/DidFetchAISBatteryLevel"))
                                                                {
                                                                  v525 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v155, 0x1F0E75280, v156);
                                                                  v529 = objc_msgSend_unsignedShortValue(v525, v526, v527, v528);
                                                                  objc_loadWeak(&self->_delegate);
                                                                  if (objc_opt_respondsToSelector())
                                                                  {
                                                                    v530 = objc_loadWeak(&self->_delegate);
                                                                    objc_msgSend_findMyAccessoryManager_didFetchAISBatteryLevel_fromDevice_error_(v530, v531, self, v529, v21, v24);
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v157 = CLConnectionMessage::name(*v14);
                                                                  if (!std::string::compare(v157, "DurianManagement/DidFetchAISSerialNumber"))
                                                                  {
                                                                    v532 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v158, 0x1F0E752A0, v159);
                                                                    objc_loadWeak(&self->_delegate);
                                                                    if (objc_opt_respondsToSelector())
                                                                    {
                                                                      v533 = objc_loadWeak(&self->_delegate);
                                                                      objc_msgSend_findMyAccessoryManager_didFetchAISSerialNumber_fromDevice_error_(v533, v534, self, v532, v21, v24);
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v160 = CLConnectionMessage::name(*v14);
                                                                    if (!std::string::compare(v160, "DurianManagement/DidFetchHawkeyeCurrentPrimaryKey"))
                                                                    {
                                                                      v535 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v161, 0x1F0E74EE0, v162);
                                                                      objc_msgSend_appendData_forUUID_(self->_accumulator, v536, v535, v21);
                                                                      v539 = objc_msgSend_getDataStatusForUUID_(self->_accumulator, v537, v21, v538);
                                                                      if (v24)
                                                                      {
                                                                        v542 = objc_msgSend_dataForUUID_(self->_accumulator, v540, v21, v541);
                                                                      }

                                                                      else
                                                                      {
                                                                        v24 = objc_msgSend_errorFromFragmentationStatus_(CLFindMyAccessoryManager, v540, v539, v541);
                                                                        v542 = objc_msgSend_dataForUUID_(self->_accumulator, v589, v21, v590);
                                                                        if (!v24)
                                                                        {
                                                                          v591 = CLConnectionMessage::name(*v14);
                                                                          if (*(v591 + 23) < 0)
                                                                          {
                                                                            sub_19B874C9C(__dst, *v591, *(v591 + 8));
                                                                          }

                                                                          else
                                                                          {
                                                                            v593 = *v591;
                                                                            v634 = *(v591 + 16);
                                                                            *__dst = v593;
                                                                          }

                                                                          v24 = objc_msgSend_checkAvailabilityForPairedOwnerInformationControlPointMessages_messageName_(CLFindMyAccessoryManager, v592, v542, __dst);
                                                                          if (SHIBYTE(v634) < 0)
                                                                          {
                                                                            operator delete(__dst[0]);
                                                                          }
                                                                        }
                                                                      }

                                                                      objc_loadWeak(&self->_delegate);
                                                                      if (objc_opt_respondsToSelector())
                                                                      {
                                                                        v620 = objc_loadWeak(&self->_delegate);
                                                                        objc_msgSend_findMyAccessoryManager_didFetchHawkeyeCurrentPrimaryKey_fromDevice_withError_(v620, v621, self, v542, v21, v24);
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v163 = CLConnectionMessage::name(*v14);
                                                                      if (!std::string::compare(v163, "DurianManagement/DidFetchHawkeyeiCloudIdentifier"))
                                                                      {
                                                                        v543 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v164, 0x1F0E74F00, v165);
                                                                        objc_msgSend_appendData_forUUID_(self->_accumulator, v544, v543, v21);
                                                                        v547 = objc_msgSend_getDataStatusForUUID_(self->_accumulator, v545, v21, v546);
                                                                        if (v24)
                                                                        {
                                                                          v550 = objc_msgSend_dataForUUID_(self->_accumulator, v548, v21, v549);
                                                                        }

                                                                        else
                                                                        {
                                                                          v24 = objc_msgSend_errorFromFragmentationStatus_(CLFindMyAccessoryManager, v548, v547, v549);
                                                                          v550 = objc_msgSend_dataForUUID_(self->_accumulator, v598, v21, v599);
                                                                          if (!v24)
                                                                          {
                                                                            v600 = CLConnectionMessage::name(*v14);
                                                                            if (*(v600 + 23) < 0)
                                                                            {
                                                                              sub_19B874C9C(v631, *v600, *(v600 + 8));
                                                                            }

                                                                            else
                                                                            {
                                                                              v602 = *v600;
                                                                              v632 = *(v600 + 16);
                                                                              *v631 = v602;
                                                                            }

                                                                            v24 = objc_msgSend_checkAvailabilityForPairedOwnerInformationControlPointMessages_messageName_(CLFindMyAccessoryManager, v601, v550, v631);
                                                                            if (SHIBYTE(v632) < 0)
                                                                            {
                                                                              operator delete(v631[0]);
                                                                            }
                                                                          }
                                                                        }

                                                                        objc_loadWeak(&self->_delegate);
                                                                        if (objc_opt_respondsToSelector())
                                                                        {
                                                                          v622 = objc_loadWeak(&self->_delegate);
                                                                          objc_msgSend_findMyAccessoryManager_didFetchHawkeyeiCloudIdentifier_fromDevice_withError_(v622, v623, self, v550, v21, v24);
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v166 = CLConnectionMessage::name(*v14);
                                                                        if (!std::string::compare(v166, "DurianManagement/DidObserveAdvertisement"))
                                                                        {
                                                                          v628 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v167, 0x1F0E75020, v168);
                                                                          v626 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v551, 0x1F0E75040, v552);
                                                                          v625 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v553, 0x1F0E75060, v554);
                                                                          v557 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v555, 0x1F0E750C0, v556);
                                                                          v560 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v558, 0x1F0E75080, v559);
                                                                          v564 = objc_msgSend_unsignedIntegerValue(v560, v561, v562, v563);
                                                                          v567 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v565, 0x1F0E750A0, v566);
                                                                          v571 = objc_msgSend_integerValue(v567, v568, v569, v570);
                                                                          v574 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v572, 0x1F0E75100, v573);
                                                                          v578 = objc_msgSend_unsignedIntegerValue(v574, v575, v576, v577);
                                                                          v581 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v579, 0x1F0E750E0, v580);
                                                                          v585 = objc_msgSend_unsignedIntegerValue(v581, v582, v583, v584);
                                                                          if (qword_1EAFE46C8 != -1)
                                                                          {
                                                                            dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
                                                                          }

                                                                          v586 = qword_1EAFE4700;
                                                                          if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
                                                                          {
                                                                            *buf = 68290819;
                                                                            v638 = 0;
                                                                            v639 = 2082;
                                                                            v640 = "";
                                                                            v641 = 2113;
                                                                            *v642 = v21;
                                                                            *&v642[8] = 2113;
                                                                            *&v642[10] = v626;
                                                                            v643 = 2113;
                                                                            v644 = v625;
                                                                            v645 = 2113;
                                                                            v646 = v628;
                                                                            v647 = 1025;
                                                                            v648 = v564;
                                                                            v649 = 2049;
                                                                            v650 = v571;
                                                                            v651 = 2113;
                                                                            v652 = v557;
                                                                            _os_log_impl(&dword_19B873000, v586, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#durian #client client received advertisement, uuid:%{private, location:escape_only}@, address:%{private, location:escape_only}@, advertisementData:%{private, location:escape_only}@, scanDate:%{private, location:escape_only}@, status:%{private}u, rssi:%{private}ld, reserved:%{private, location:escape_only}@}", buf, 0x54u);
                                                                          }

                                                                          objc_loadWeak(&self->_delegate);
                                                                          if (objc_opt_respondsToSelector())
                                                                          {
                                                                            v587 = objc_loadWeak(&self->_delegate);
                                                                            objc_msgSend_findMyAccessoryManager_didObserveAdvertisementWithDate_address_advertisementData_status_rssi_reserved_uuid_ownershipType_channel_(v587, v588, self, v628, v626, v625, v564, v571, v557, v21, v585, v578);
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v169 = CLConnectionMessage::name(*v14);
                                                                          if (!std::string::compare(v169, "DurianManagement/DidFetchStatusOfUTEnablementRequirements"))
                                                                          {
                                                                            v594 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v170, 0x1F0E75140, v171);
                                                                            if (qword_1EAFE46C8 != -1)
                                                                            {
                                                                              dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
                                                                            }

                                                                            v595 = qword_1EAFE4700;
                                                                            if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
                                                                            {
                                                                              *buf = 68289026;
                                                                              v638 = 0;
                                                                              v639 = 2082;
                                                                              v640 = "";
                                                                              _os_log_impl(&dword_19B873000, v595, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:didFetchStatusOfUTEnablementRequirements}", buf, 0x12u);
                                                                            }

                                                                            objc_loadWeak(&self->_delegate);
                                                                            if (objc_opt_respondsToSelector())
                                                                            {
                                                                              v596 = objc_loadWeak(&self->_delegate);
                                                                              objc_msgSend_findMyAccessoryManager_didFetchStatusOfUTEnablementRequirementsWithStatus_withError_(v596, v597, self, v594, v24);
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v172 = CLConnectionMessage::name(*v14);
                                                                            if (!std::string::compare(v172, "DurianManagement/DidFetchAccessoryInformation"))
                                                                            {
                                                                              v603 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v173, 0x1F0E750E0, v174);
                                                                              v607 = objc_msgSend_unsignedIntegerValue(v603, v604, v605, v606);
                                                                              v610 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v608, 0x1F0E752C0, v609);
                                                                              v614 = objc_msgSend_unsignedIntegerValue(v610, v611, v612, v613);
                                                                              v617 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v615, 0x1F0E752E0, v616);
                                                                              objc_loadWeak(&self->_delegate);
                                                                              if (objc_opt_respondsToSelector())
                                                                              {
                                                                                v618 = objc_loadWeak(&self->_delegate);
                                                                                objc_msgSend_findMyAccessoryManager_didFetchAccessoryInformationForDevice_ownershipType_communicationProtocol_accessoryTypeName_error_(v618, v619, self, v21, v607, v614, v617, v24);
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              if (qword_1EAFE46C8 != -1)
                                                                              {
                                                                                dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
                                                                              }

                                                                              v175 = qword_1EAFE4700;
                                                                              if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
                                                                              {
                                                                                *buf = 0;
                                                                                _os_log_impl(&dword_19B873000, v175, OS_LOG_TYPE_ERROR, "#durian Got a message we do not understand... dropping!", buf, 2u);
                                                                              }

                                                                              v176 = sub_19B87DD40();
                                                                              if ((*(v176 + 160) & 0x80000000) == 0 || (*(v176 + 164) & 0x80000000) == 0 || (*(v176 + 168) & 0x80000000) == 0 || *(v176 + 152))
                                                                              {
                                                                                bzero(buf, 0x65CuLL);
                                                                                if (qword_1EAFE46C8 != -1)
                                                                                {
                                                                                  dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
                                                                                }

                                                                                v630[0] = 0;
                                                                                v177 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4700, 16, "#durian Got a message we do not understand... dropping!", v630, 2);
                                                                                sub_19B885924("Generic", 1, 0, 0, "[CLFindMyAccessoryManager handleMessage:]", "CoreLocation: %s\n", v177);
                                                                                if (v177 != buf)
                                                                                {
                                                                                  free(v177);
                                                                                }
                                                                              }
                                                                            }
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_251;
      }

      objc_loadWeak(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        goto LABEL_190;
      }
    }

LABEL_251:
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
    }

    v505 = qword_1EAFE4700;
    if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289283;
      v638 = 0;
      v639 = 2082;
      v640 = "";
      v641 = 2113;
      *v642 = v21;
      _os_log_impl(&dword_19B873000, v505, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#durian #hawkeye clearing fragments from accumulator, uuid:%{private, location:escape_only}@}", buf, 0x1Cu);
    }

    objc_msgSend_clearForUUID_(self->_accumulator, v506, v21, v507);
    return;
  }

  v178 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v29, 0x1F0E74F20, v30);
  v181 = objc_msgSend_objectForKeyedSubscript_(DictionaryOfClasses, v179, 0x1F0E74D20, v180);
  v185 = objc_msgSend_unsignedIntValue(v181, v182, v183, v184);
  if (qword_1EAFE46C8 != -1)
  {
    dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
  }

  v186 = qword_1EAFE4700;
  if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289539;
    v638 = 0;
    v639 = 2082;
    v640 = "";
    v641 = 1025;
    *v642 = v185;
    *&v642[4] = 2113;
    *&v642[6] = v178;
    _os_log_impl(&dword_19B873000, v186, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian #hawkeye got fragment, opcode:%{private}u, dataFragment:%{private, location:escape_only}@}", buf, 0x22u);
  }

  if ((objc_msgSend_appendData_forUUID_(self->_accumulator, v187, v178, v21) & 1) == 0)
  {
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
    }

    v188 = qword_1EAFE4700;
    if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289539;
      v638 = 0;
      v639 = 2082;
      v640 = "";
      v641 = 1025;
      *v642 = v185;
      *&v642[4] = 2113;
      *&v642[6] = v178;
      _os_log_impl(&dword_19B873000, v188, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#durian #hawkeye error appending fragment, opcode:%{private}u, dataFragment:%{private, location:escape_only}@}", buf, 0x22u);
      if (qword_1EAFE46C8 != -1)
      {
        dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
      }
    }

    v189 = qword_1EAFE4700;
    if (os_signpost_enabled(qword_1EAFE4700))
    {
      *buf = 68289539;
      v638 = 0;
      v639 = 2082;
      v640 = "";
      v641 = 1025;
      *v642 = v185;
      *&v642[4] = 2113;
      *&v642[6] = v178;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v189, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#durian #hawkeye error appending fragment", "{msg%{public}.0s:#durian #hawkeye error appending fragment, opcode:%{private}u, dataFragment:%{private, location:escape_only}@}", buf, 0x22u);
    }
  }
}

- (void)handleInterruption
{
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46C8 != -1)
  {
    dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
  }

  v3 = qword_1EAFE4700;
  if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_ERROR, "Connection to locationd interrupted!!", buf, 2u);
  }

  v4 = sub_19B87DD40();
  if ((*(v4 + 160) & 0x80000000) == 0 || (*(v4 + 164) & 0x80000000) == 0 || (*(v4 + 168) & 0x80000000) == 0 || *(v4 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46C8 != -1)
    {
      dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
    }

    v16[0] = 0;
    v5 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4700, 16, "Connection to locationd interrupted!!", v16, 2);
    sub_19B885924("Generic", 1, 0, 0, "[CLFindMyAccessoryManager handleInterruption]", "CoreLocation: %s\n", v5);
    if (v5 != buf)
    {
      free(v5);
    }
  }

  v6 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E696A578];
  v18 = @"Connection to locationd interrupted!";
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, &v18, &v17, 1);
  v10 = objc_msgSend_initWithDomain_code_userInfo_(v6, v9, @"kCLErrorDomainPrivate", 8, v8);
  Weak = objc_loadWeak(&self->_delegate);
  objc_msgSend_findMyAccessoryManager_didFailWithError_forDevice_(Weak, v12, self, v10, 0);

  v13 = [CLFindMyAccessoryFragmentAccumulator alloc];
  self->_accumulator = objc_msgSend_initWithMaxBytesPerUUID_(v13, v14, 100000, v15);
}

- (void)sendMessage:(const char *)message withPayload:(id)payload
{
  v24 = *MEMORY[0x1E69E9840];
  if (!message)
  {
    v17 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, payload);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v17, v18, a2, self, @"CLFindMyAccessoryManager.mm", 824, @"Invalid parameter not satisfying: %@", @"messageName");
  }

  v7 = objc_msgSend_objectForKey_(payload, a2, 0x1F0E747E0, payload);
  if (qword_1EAFE46C8 != -1)
  {
    dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
  }

  v8 = qword_1EAFE4700;
  if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_msgSend_UUIDString(v7, v9, v10, v11);
    *buf = 68289538;
    *&buf[4] = 0;
    v20[0] = 2082;
    *&v20[1] = "";
    v20[5] = 2082;
    messageCopy = message;
    v22 = 2082;
    v23 = objc_msgSend_UTF8String(v12, v13, v14, v15);
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian client sending message, messageName:%{public, location:escape_only}s, beaconUUID:%{public, location:escape_only}s}", buf, 0x26u);
  }

  sub_19B87C844();
}

- (void)sendMessage:(const char *)message
{
  v15 = *MEMORY[0x1E69E9840];
  if (!message)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CLFindMyAccessoryManager.mm", 837, @"Invalid parameter not satisfying: %@", @"messageName");
  }

  if (qword_1EAFE46C8 != -1)
  {
    dispatch_once(&qword_1EAFE46C8, &unk_1F0E6BAF0);
  }

  v6 = qword_1EAFE4700;
  if (os_log_type_enabled(qword_1EAFE4700, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    messageCopy = message;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#durian client sending message, messageName:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  operator new();
}

- (void)connectDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 850, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = device;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/Connect", v6);
}

- (void)disconnectDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 858, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = device;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/Disconnect", v6);
}

- (void)fetchConnectionStateForDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 866, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = device;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/FetchConnectionState", v6);
}

- (void)startPlayingSoundSequence:(id)sequence onDevice:(id)device
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (!sequence)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, device);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CLFindMyAccessoryManager.mm", 875, @"Invalid parameter not satisfying: %@", @"sequence");
    if (device)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, sequence, device);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CLFindMyAccessoryManager.mm", 876, @"Invalid parameter not satisfying: %@", @"device");
    goto LABEL_3;
  }

  if (!device)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14[0] = 0x1F0E747E0;
  v14[1] = 0x1F0E74940;
  v15[0] = device;
  v15[1] = sequence;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v15, v14, 2);
  objc_msgSend_sendMessage_withPayload_(self, v9, "DurianManagement/StartSoundSequence", v8);
}

- (void)startPlayingUnauthorizedSoundOnDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 885, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = device;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/StartUnauthorizedSound", v6);
}

- (void)startPlayingUnauthorizedSoundSequence:(id)sequence onDevice:(id)device
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, sequence, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CLFindMyAccessoryManager.mm", 893, @"Invalid parameter not satisfying: %@", @"device");
  }

  v12[0] = 0x1F0E747E0;
  v12[1] = 0x1F0E74940;
  v13[0] = device;
  v13[1] = sequence;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v13, v12, 2);
  objc_msgSend_sendMessage_withPayload_(self, v8, "DurianManagement/StartUnauthorizedSound", v7);
}

- (void)stopPlayingSoundOnDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 902, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = device;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/StopSound", v6);
}

- (void)stopPlayingUnauthorizedSoundOnDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 910, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = device;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/StopUnauthorizedSound", v6);
}

- (void)getMultiStatusFromDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 918, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = device;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/GetMultiStatus", v6);
}

- (void)getMultiPartStatusFromDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 926, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = device;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/GetMultiPartStatus", v6);
}

- (void)dumpLogDataOfType:(unint64_t)type fromDevice:(id)device
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, type, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CLFindMyAccessoryManager.mm", 934, @"Invalid parameter not satisfying: %@", @"device");
  }

  v13[0] = 0x1F0E747E0;
  v13[1] = 0x1F0E74880;
  v14[0] = device;
  v14[1] = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], a2, type, device);
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v14, v13, 2);
  objc_msgSend_sendMessage_withPayload_(self, v9, "DurianManagement/DumpLogs", v8);
}

- (void)induceCrashOnDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 943, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = device;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/InduceCrash", v6);
}

- (void)unpairFromDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 951, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = device;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/Unpair", v6);
}

- (void)unpairFromDeviceWithAddress:(id)address
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!address)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 959, @"Invalid parameter not satisfying: %@", @"address");
  }

  v11 = 0x1F0E74800;
  v12[0] = address;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/Unpair", v6);
}

- (void)setNearOwnerTimeout:(unsigned __int16)timeout onDevice:(id)device
{
  timeoutCopy = timeout;
  v14[2] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, timeout, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CLFindMyAccessoryManager.mm", 967, @"Invalid parameter not satisfying: %@", @"device");
  }

  v13[0] = 0x1F0E747E0;
  v13[1] = 0x1F0E74920;
  v14[0] = device;
  v14[1] = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], a2, timeoutCopy, device);
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v14, v13, 2);
  objc_msgSend_sendMessage_withPayload_(self, v9, "DurianManagement/SetNearOwnerTimeout", v8);
}

- (void)setDeviceType:(unsigned __int8)type onDevice:(id)device
{
  typeCopy = type;
  v14[2] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, type, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CLFindMyAccessoryManager.mm", 976, @"Invalid parameter not satisfying: %@", @"device");
  }

  v13[0] = 0x1F0E747E0;
  v13[1] = 0x1F0E748E0;
  v14[0] = device;
  v14[1] = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], a2, typeCopy, device);
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v14, v13, 2);
  objc_msgSend_sendMessage_withPayload_(self, v9, "DurianManagement/SetTagType", v8);
}

- (void)setObfuscatedIdentifier:(id)identifier onDevice:(id)device
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, identifier, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CLFindMyAccessoryManager.mm", 985, @"Invalid parameter not satisfying: %@", @"device");
  }

  v12[0] = 0x1F0E747E0;
  v12[1] = 0x1F0E74900;
  v13[0] = device;
  v13[1] = identifier;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v13, v12, 2);
  objc_msgSend_sendMessage_withPayload_(self, v8, "DurianManagement/SetObfuscatedIdentifier", v7);
}

- (void)setWildConfiguration:(id)configuration onDevice:(id)device
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (!configuration)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, device);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CLFindMyAccessoryManager.mm", 994, @"Invalid parameter not satisfying: %@", @"configuration");
    if (device)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, configuration, device);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CLFindMyAccessoryManager.mm", 995, @"Invalid parameter not satisfying: %@", @"device");
    goto LABEL_3;
  }

  if (!device)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14[0] = 0x1F0E747E0;
  v14[1] = 0x1F0E749A0;
  v15[0] = device;
  v15[1] = configuration;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v15, v14, 2);
  objc_msgSend_sendMessage_withPayload_(self, v9, "DurianManagement/SetWildConfiguration", v8);
}

- (void)rollWildKeyOnDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 1004, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = device;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/RollWildKey", v6);
}

- (void)setKeyRollInterval:(unsigned int)interval onDevice:(id)device
{
  v5 = *&interval;
  v14[2] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, *&interval, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CLFindMyAccessoryManager.mm", 1012, @"Invalid parameter not satisfying: %@", @"device");
  }

  v13[0] = 0x1F0E74B00;
  v13[1] = 0x1F0E747E0;
  v14[0] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], a2, v5, device);
  v14[1] = device;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v14, v13, 2);
  objc_msgSend_sendMessage_withPayload_(self, v9, "DurianManagement/SetKeyRollInterval", v8);
}

- (void)setBatteryStatus:(unint64_t)status forDevice:(id)device
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, status, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CLFindMyAccessoryManager.mm", 1021, @"Invalid parameter not satisfying: %@", @"device");
  }

  v13[0] = 0x1F0E747E0;
  v13[1] = 0x1F0E748C0;
  v14[0] = device;
  v14[1] = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], a2, status, device);
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v14, v13, 2);
  objc_msgSend_sendMessage_withPayload_(self, v9, "DurianManagement/SetBatteryStatus", v8);
}

- (void)fetchBatteryStatusForDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 1030, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = device;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/FetchBatteryStatus", v6);
}

- (void)fetchUserStatsWithPersistence:(BOOL)persistence fromDevice:(id)device
{
  persistenceCopy = persistence;
  v14[2] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, persistence, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CLFindMyAccessoryManager.mm", 1038, @"Invalid parameter not satisfying: %@", @"device");
  }

  v13[0] = 0x1F0E747E0;
  v13[1] = 0x1F0E74A40;
  v14[0] = device;
  v14[1] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, persistenceCopy, device);
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v14, v13, 2);
  objc_msgSend_sendMessage_withPayload_(self, v9, "DurianManagement/FetchUserStats", v8);
}

- (void)scanForNearbyOwner
{
  v3 = *MEMORY[0x1E69E9840];
  *buf = MEMORY[0x1E695E0F8];
  sub_19B87B83C();
}

- (void)scanForHELE
{
  v3 = *MEMORY[0x1E69E9840];
  *buf = MEMORY[0x1E695E0F8];
  sub_19B87B83C();
}

- (void)scanForNearbyDevicesLong
{
  v3 = *MEMORY[0x1E69E9840];
  *buf = MEMORY[0x1E695E0F8];
  sub_19B87B83C();
}

- (void)stopScanForNearbyDevicesLong
{
  v3 = *MEMORY[0x1E69E9840];
  *buf = MEMORY[0x1E695E0F8];
  sub_19B87B83C();
}

- (void)setAccelerometerSlopeModeConfiguration:(id)configuration forDevice:(id)device
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (!configuration)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, device);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CLFindMyAccessoryManager.mm", 1086, @"Invalid parameter not satisfying: %@", @"configuration");
    if (device)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, configuration, device);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CLFindMyAccessoryManager.mm", 1087, @"Invalid parameter not satisfying: %@", @"device");
    goto LABEL_3;
  }

  if (!device)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14[0] = 0x1F0E747E0;
  v14[1] = 0x1F0E74A60;
  v15[0] = device;
  v15[1] = configuration;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v15, v14, 2);
  objc_msgSend_sendMessage_withPayload_(self, v9, "DurianManagement/SetAccelerometerSlopeMode", v8);
}

- (void)fetchAccelerometerSlopeModeConfigurationForDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 1096, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = device;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/GetAccelerometerSlopeModeConfiguration", v6);
}

- (void)setAccelerometerOrientationModeConfiguration:(id)configuration forDevice:(id)device
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (!configuration)
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, device);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v10, v11, a2, self, @"CLFindMyAccessoryManager.mm", 1104, @"Invalid parameter not satisfying: %@", @"configuration");
    if (device)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, configuration, device);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CLFindMyAccessoryManager.mm", 1105, @"Invalid parameter not satisfying: %@", @"device");
    goto LABEL_3;
  }

  if (!device)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14[0] = 0x1F0E747E0;
  v14[1] = 0x1F0E74A80;
  v15[0] = device;
  v15[1] = configuration;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v15, v14, 2);
  objc_msgSend_sendMessage_withPayload_(self, v9, "DurianManagement/SetAccelerometerOrientationMode", v8);
}

- (void)fetchAccelerometerOrientationModeConfigurationForDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 1114, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = device;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/GetAccelerometerOrientationModeConfiguration", v6);
}

- (void)setUnauthorizedPlaySoundRateLimit:(BOOL)limit forDevice:(id)device
{
  limitCopy = limit;
  v14[2] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, limit, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CLFindMyAccessoryManager.mm", 1122, @"Invalid parameter not satisfying: %@", @"device");
  }

  v13[0] = 0x1F0E747E0;
  v13[1] = 0x1F0E74AC0;
  v14[0] = device;
  v14[1] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, limitCopy, device);
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v14, v13, 2);
  objc_msgSend_sendMessage_withPayload_(self, v9, "DurianManagement/SetUnauthorizedPlaySoundRateLimit", v8);
}

- (void)fetchFirmwareVersionFromDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 1131, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = device;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/FetchFirmwareVersion", v6);
}

- (void)fetchTxPower:(id)power
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!power)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 1140, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = power;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/FetchTxPower", v6);
}

- (void)fetchTxPowerFromDevice:(id)device asOwner:(BOOL)owner
{
  ownerCopy = owner;
  v14[2] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, owner);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CLFindMyAccessoryManager.mm", 1147, @"Invalid parameter not satisfying: %@", @"device");
  }

  v13[0] = 0x1F0E747E0;
  v13[1] = 0x1F0E75000;
  v14[0] = device;
  v14[1] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, ownerCopy, owner);
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v14, v13, 2);
  objc_msgSend_sendMessage_withPayload_(self, v9, "DurianManagement/FetchTxPower", v8);
}

- (void)startAggressiveAdvertisingOnDevice:(id)device withTimeout:(unsigned int)timeout
{
  v4 = *&timeout;
  v14[2] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, *&timeout);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CLFindMyAccessoryManager.mm", 1156, @"Invalid parameter not satisfying: %@", @"device");
  }

  v13[0] = 0x1F0E747E0;
  v13[1] = 0x1F0E74FE0;
  v14[0] = device;
  v14[1] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], a2, v4, *&timeout);
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v14, v13, 2);
  objc_msgSend_sendMessage_withPayload_(self, v9, "DurianManagement/StartAggressiveAdvertising", v8);
}

- (void)stopAggressiveAdvertisingOnDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 1165, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = device;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/StopAggressiveAdvertising", v6);
}

- (void)startUnauthorizedAggressiveAdvertisingOnDevice:(id)device
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 1173, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = device;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/StartUnauthorizedAggressiveAdvertising", v6);
}

- (void)setHawkeyeTestMode:(int)mode forDevice:(id)device
{
  v5 = *&mode;
  v14[2] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, *&mode, 0);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CLFindMyAccessoryManager.mm", 1181, @"Invalid parameter not satisfying: %@", @"device");
  }

  v13[0] = 0x1F0E747E0;
  v13[1] = 0x1F0E74D40;
  v14[0] = device;
  v14[1] = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], a2, v5, device);
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v14, v13, 2);
  objc_msgSend_sendMessage_withPayload_(self, v9, "DurianManagement/SetHawkeyeTestMode", v8);
}

- (void)setHawkeyeUTMotionConfigWithSeparatedUTTimeoutSeconds:(unsigned int)seconds separatedUTBackoffTimeoutSeconds:(unsigned int)timeoutSeconds forDevice:(id)device
{
  v6 = *&timeoutSeconds;
  v7 = *&seconds;
  v18[3] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, *&seconds, *&timeoutSeconds);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a2, self, @"CLFindMyAccessoryManager.mm", 1192, @"Invalid parameter not satisfying: %@", @"device");
  }

  v18[0] = device;
  v17[0] = 0x1F0E747E0;
  v17[1] = 0x1F0E74D60;
  v18[1] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], a2, v7, *&timeoutSeconds);
  v17[2] = 0x1F0E74D80;
  v18[2] = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v9, v6, v10);
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v11, v18, v17, 3);
  objc_msgSend_sendMessage_withPayload_(self, v13, "DurianManagement/SetHawkeyeUTMotionConfig", v12);
}

- (void)fetchHawkeyeAISProductData:(id)data
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!data)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 1202, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = data;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/FetchHawkeyeAISProductData", v6);
}

- (void)fetchHawkeyeAISManufacturerName:(id)name
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!name)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 1210, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = name;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/FetchHawkeyeAISManufacturerName", v6);
}

- (void)fetchHawkeyeAISModelName:(id)name
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!name)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 1218, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = name;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/FetchHawkeyeAISModelName", v6);
}

- (void)fetchHawkeyeAISModelColorCode:(id)code
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!code)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 1226, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = code;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/FetchHawkeyeAISModelColorCode", v6);
}

- (void)fetchHawkeyeAISAccessoryCategory:(id)category
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!category)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 1235, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = category;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/FetchHawkeyeAISAccessoryCategory", v6);
}

- (void)fetchHawkeyeAISAccessoryCapabilities:(id)capabilities
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!capabilities)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 1243, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = capabilities;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/FetchHawkeyeAISAccessoryCapabilities", v6);
}

- (void)fetchHawkeyeAISFindMyVersion:(id)version
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!version)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 1251, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = version;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/FetchHawkeyeAISFindMyVersion", v6);
}

- (void)fetchHawkeyeAISBatteryType:(id)type
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!type)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 1259, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = type;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/FetchHawkeyeAISBatteryType", v6);
}

- (void)fetchHawkeyeSerialNumber:(id)number
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!number)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 1267, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = number;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/FetchHawkeyeSerialNumber", v6);
}

- (void)fetchHawkeyeCurrentPrimaryKey:(id)key
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!key)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 1275, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = key;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/FetchHawkeyeCurrentPrimaryKey", v6);
}

- (void)fetchHawkeyeiCloudIdentifier:(id)identifier
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!identifier)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 1283, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11 = 0x1F0E747E0;
  v12[0] = identifier;
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v12, &v11, 1);
  objc_msgSend_sendMessage_withPayload_(self, v7, "DurianManagement/FetchHawkeyeiCloudIdentifier", v6);
}

- (void)fetchAISForTAUnknownBeacon:(id)beacon macAddress:(id)address deviceType:(id)type
{
  v17[3] = *MEMORY[0x1E69E9840];
  if (!beacon)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, address);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CLFindMyAccessoryManager.mm", 1336, @"Invalid parameter not satisfying: %@", @"device");
    if (address)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, beacon, address);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CLFindMyAccessoryManager.mm", 1337, @"Invalid parameter not satisfying: %@", @"macAddress");
    goto LABEL_3;
  }

  if (!address)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16[0] = 0x1F0E747E0;
  v16[1] = 0x1F0E74800;
  v17[0] = beacon;
  v17[1] = address;
  v16[2] = 0x1F0E748E0;
  v17[2] = type;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v17, v16, 3);
  objc_msgSend_sendMessage_withPayload_(self, v11, "DurianManagement/FetchAISForTAUnknownBeacon", v10);
}

- (void)stageTADetection:(id)detection deviceType:(id)type detailsBitmask:(id)bitmask shouldRemoveDevice:(id)device
{
  v21[4] = *MEMORY[0x1E69E9840];
  if (detection)
  {
    if (type)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, detection, type);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CLFindMyAccessoryManager.mm", 1351, @"Invalid parameter not satisfying: %@", @"type");
    if (bitmask)
    {
      goto LABEL_4;
    }

LABEL_7:
    v18 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, detection, type);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, self, @"CLFindMyAccessoryManager.mm", 1352, @"Invalid parameter not satisfying: %@", @"detailsBitmask");
    goto LABEL_4;
  }

  v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, type);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CLFindMyAccessoryManager.mm", 1350, @"Invalid parameter not satisfying: %@", @"macAddress");
  if (!type)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!bitmask)
  {
    goto LABEL_7;
  }

LABEL_4:
  v20[0] = 0x1F0E74800;
  v20[1] = 0x1F0E748E0;
  v21[0] = detection;
  v21[1] = type;
  v20[2] = 0x1F0E75120;
  v20[3] = 0x1F0E74D00;
  v21[2] = bitmask;
  v21[3] = device;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v21, v20, 4);
  objc_msgSend_sendMessage_withPayload_(self, v13, "DurianManagement/StageTADetection", v12);
}

- (void)forceSurfaceStagedDetections:(id)detections deviceType:(id)type detailsBitmask:(id)bitmask
{
  v19[3] = *MEMORY[0x1E69E9840];
  if (detections)
  {
    if (type)
    {
      goto LABEL_3;
    }

LABEL_6:
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, detections, type);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CLFindMyAccessoryManager.mm", 1366, @"Invalid parameter not satisfying: %@", @"type");
    if (bitmask)
    {
      goto LABEL_4;
    }

LABEL_7:
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, detections, type);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CLFindMyAccessoryManager.mm", 1367, @"Invalid parameter not satisfying: %@", @"detailsBitmask");
    goto LABEL_4;
  }

  v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, type);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CLFindMyAccessoryManager.mm", 1365, @"Invalid parameter not satisfying: %@", @"macAddress");
  if (!type)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!bitmask)
  {
    goto LABEL_7;
  }

LABEL_4:
  v18[0] = 0x1F0E74800;
  v18[1] = 0x1F0E748E0;
  v19[0] = detections;
  v19[1] = type;
  v18[2] = 0x1F0E75120;
  v19[2] = bitmask;
  v10 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v19, v18, 3);
  objc_msgSend_sendMessage_withPayload_(self, v11, "DurianManagement/ForceSurfaceStagedDetections", v10);
}

- (void)fetchFindingCapabilities:(id)capabilities
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!capabilities)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CLFindMyAccessoryManager.mm", 1378, @"Invalid parameter not satisfying: %@", @"device");
  }

  v9 = 0x1F0E747E0;
  v10[0] = capabilities;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  sub_19B890E08();
}

- (void)initRangingOnDevice:(id)device macAddress:(id)address
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, address);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CLFindMyAccessoryManager.mm", 1391, @"Invalid parameter not satisfying: %@", @"device");
  }

  v10[0] = 0x1F0E747E0;
  v10[1] = 0x1F0E74B40;
  v11[0] = device;
  v11[1] = address;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v11, v10, 2);
  sub_19B890E08();
}

- (void)deinitRangingOnDevice:(id)device
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CLFindMyAccessoryManager.mm", 1405, @"Invalid parameter not satisfying: %@", @"device");
  }

  v9 = 0x1F0E747E0;
  v10[0] = device;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  sub_19B890E08();
}

- (void)configureNBRangingOnDevice:(id)device withParams:(id)params
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, params);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CLFindMyAccessoryManager.mm", 1417, @"Invalid parameter not satisfying: %@", @"device");
  }

  v10[0] = 0x1F0E747E0;
  v10[1] = @"CLDurianNBConfigDictionary";
  v11[0] = device;
  v11[1] = params;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v11, v10, 2);
  sub_19B890E08();
}

- (void)configureRangingOnDevice:(id)device macAddress:(id)address countryCode:(unsigned __int8)code uwbChannel:(unsigned __int8)channel acqPreamble:(unsigned __int8)preamble trackingPreamble:(unsigned __int8)trackingPreamble interval:(unsigned __int16)interval
{
  trackingPreambleCopy = trackingPreamble;
  preambleCopy = preamble;
  channelCopy = channel;
  codeCopy = code;
  v29[7] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v26 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, address);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CLFindMyAccessoryManager.mm", 1431, @"Invalid parameter not satisfying: %@", @"device");
  }

  v28[0] = 0x1F0E747E0;
  v28[1] = 0x1F0E74B40;
  v29[0] = device;
  v29[1] = address;
  v28[2] = 0x1F0E74B60;
  v29[2] = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], a2, codeCopy, address);
  v28[3] = 0x1F0E74B80;
  v29[3] = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v16, channelCopy, v17);
  v28[4] = 0x1F0E74BA0;
  v29[4] = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v18, preambleCopy, v19);
  v28[5] = 0x1F0E74BC0;
  v29[5] = objc_msgSend_numberWithUnsignedChar_(MEMORY[0x1E696AD98], v20, trackingPreambleCopy, v21);
  v28[6] = 0x1F0E74BE0;
  v29[6] = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], v22, interval, v23);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, v29, v28, 7);
  sub_19B890E08();
}

- (void)prepareRangingOnDevice:(id)device
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CLFindMyAccessoryManager.mm", 1450, @"Invalid parameter not satisfying: %@", @"device");
  }

  v9 = 0x1F0E747E0;
  v10[0] = device;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  sub_19B890E08();
}

- (void)startNBRangingOnDevice:(id)device withIRK:(id)k
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, k);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CLFindMyAccessoryManager.mm", 1462, @"Invalid parameter not satisfying: %@", @"device");
  }

  v10[0] = 0x1F0E747E0;
  v10[1] = @"CLDurianRangingIRK";
  v11[0] = device;
  v11[1] = k;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v11, v10, 2);
  sub_19B890E08();
}

- (void)startRangingOnDevice:(id)device targetEventCounter:(unsigned __int16)counter
{
  counterCopy = counter;
  v12[2] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, counter);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLFindMyAccessoryManager.mm", 1476, @"Invalid parameter not satisfying: %@", @"device");
  }

  v11[0] = 0x1F0E747E0;
  v11[1] = 0x1F0E74C20;
  v12[0] = device;
  v12[1] = objc_msgSend_numberWithUnsignedShort_(MEMORY[0x1E696AD98], a2, counterCopy, counter);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v12, v11, 2);
  sub_19B890E08();
}

- (void)stopRangingOnDevice:(id)device
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CLFindMyAccessoryManager.mm", 1490, @"Invalid parameter not satisfying: %@", @"device");
  }

  v9 = 0x1F0E747E0;
  v10[0] = device;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  sub_19B890E08();
}

- (void)startEventCounterForDevice:(id)device
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CLFindMyAccessoryManager.mm", 1503, @"Invalid parameter not satisfying: %@", @"device");
  }

  v9 = 0x1F0E747E0;
  v10[0] = device;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  sub_19B890E08();
}

- (void)stopEventCounterForDevice:(id)device
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CLFindMyAccessoryManager.mm", 1516, @"Invalid parameter not satisfying: %@", @"device");
  }

  v9 = 0x1F0E747E0;
  v10[0] = device;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  sub_19B890E08();
}

- (void)fetchAISProductData:(id)data
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!data)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CLFindMyAccessoryManager.mm", 1530, @"Invalid parameter not satisfying: %@", @"device");
  }

  v9 = 0x1F0E747E0;
  v10[0] = data;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  sub_19B890E08();
}

- (void)fetchAISManufacturerName:(id)name
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!name)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CLFindMyAccessoryManager.mm", 1544, @"Invalid parameter not satisfying: %@", @"device");
  }

  v9 = 0x1F0E747E0;
  v10[0] = name;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  sub_19B890E08();
}

- (void)fetchAISModelName:(id)name
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!name)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CLFindMyAccessoryManager.mm", 1558, @"Invalid parameter not satisfying: %@", @"device");
  }

  v9 = 0x1F0E747E0;
  v10[0] = name;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  sub_19B890E08();
}

- (void)fetchAISProtocolImplementation:(id)implementation
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!implementation)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CLFindMyAccessoryManager.mm", 1572, @"Invalid parameter not satisfying: %@", @"device");
  }

  v9 = 0x1F0E747E0;
  v10[0] = implementation;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  sub_19B890E08();
}

- (void)fetchAISAccessoryCategory:(id)category
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!category)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CLFindMyAccessoryManager.mm", 1586, @"Invalid parameter not satisfying: %@", @"device");
  }

  v9 = 0x1F0E747E0;
  v10[0] = category;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  sub_19B890E08();
}

- (void)fetchAISAccessoryCapabilities:(id)capabilities
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!capabilities)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CLFindMyAccessoryManager.mm", 1600, @"Invalid parameter not satisfying: %@", @"device");
  }

  v9 = 0x1F0E747E0;
  v10[0] = capabilities;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  sub_19B890E08();
}

- (void)fetchAISNetworkID:(id)d
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!d)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CLFindMyAccessoryManager.mm", 1614, @"Invalid parameter not satisfying: %@", @"device");
  }

  v9 = 0x1F0E747E0;
  v10[0] = d;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  sub_19B890E08();
}

- (void)fetchAISFirmwareVersion:(id)version
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!version)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CLFindMyAccessoryManager.mm", 1628, @"Invalid parameter not satisfying: %@", @"device");
  }

  v9 = 0x1F0E747E0;
  v10[0] = version;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  sub_19B890E08();
}

- (void)fetchAISBatteryType:(id)type
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!type)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CLFindMyAccessoryManager.mm", 1642, @"Invalid parameter not satisfying: %@", @"device");
  }

  v9 = 0x1F0E747E0;
  v10[0] = type;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  sub_19B890E08();
}

- (void)fetchAISBatteryLevel:(id)level
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!level)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CLFindMyAccessoryManager.mm", 1656, @"Invalid parameter not satisfying: %@", @"device");
  }

  v9 = 0x1F0E747E0;
  v10[0] = level;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  sub_19B890E08();
}

- (void)fetchAISSerialNumber:(id)number
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!number)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CLFindMyAccessoryManager.mm", 1670, @"Invalid parameter not satisfying: %@", @"device");
  }

  v9 = 0x1F0E747E0;
  v10[0] = number;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  sub_19B890E08();
}

- (void)fetchAccessoryInformationForDevice:(id)device
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!device)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CLFindMyAccessoryManager.mm", 1683, @"Invalid parameter not satisfying: %@", @"device");
  }

  v9 = 0x1F0E747E0;
  v10[0] = device;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], a2, v10, &v9, 1);
  sub_19B890E08();
}

@end