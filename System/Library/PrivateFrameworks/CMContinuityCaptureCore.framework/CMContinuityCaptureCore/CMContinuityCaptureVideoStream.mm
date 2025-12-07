@interface CMContinuityCaptureVideoStream
- (BOOL)_setStreamProperties:(id)properties error:(id *)error;
- (BOOL)_startStreamAndReturnError:(id *)error;
- (BOOL)_stopStreamAndReturnError:(id *)error;
- (BOOL)setStreamProperties:(id)properties error:(id *)error;
- (BOOL)setupStreams:(id)streams;
- (BOOL)startStreamAndReturnError:(id *)error;
- (BOOL)stopStreamAndReturnError:(id *)error;
- (CMContinuityCaptureVideoDevice)device;
- (CMContinuityCaptureVideoStream)initWithDevice:(id)device streamFormats:(id)formats deviceID:(id)d queue:(id)queue;
- (NSSet)availableProperties;
- (NSString)description;
- (id)_availableProperties;
- (id)_getResolvedStillCaptureConfigs:(id)configs;
- (id)_streamPropertiesForProperties:(id)properties error:(id *)error;
- (id)createFormatToPublish:(id)publish;
- (id)streamPropertiesForProperties:(id)properties error:(id *)error;
- (void)_availableProperties;
- (void)_disconnectClient:(id)client;
- (void)_setValueForControl:(id)control completion:(id)completion;
- (void)captureAsyncStillImage:(int64_t)image options:(id)options completionHandler:(id)handler;
- (void)disconnectClient:(id)client;
- (void)dispatchFrame:(opaqueCMSampleBuffer *)frame entity:(int64_t)entity completion:(id)completion;
- (void)enqueueReactionEffect:(id)effect completionHandler:(id)handler;
- (void)setValueForControl:(id)control completion:(id)completion;
- (void)setupControls;
- (void)terminateComplete:(id)complete;
@end

@implementation CMContinuityCaptureVideoStream

- (void)terminateComplete:(id)complete
{
  completeCopy = complete;
  v5 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2080;
    v9 = "[CMContinuityCaptureVideoStream terminateComplete:]";
    _os_log_impl(&dword_242545000, v5, OS_LOG_TYPE_INFO, "%{public}@ %s", &v6, 0x16u);
  }

  completeCopy[2](completeCopy);
}

- (CMContinuityCaptureVideoDevice)device
{
  WeakRetained = objc_loadWeakRetained(&self->_device);

  return WeakRetained;
}

- (void)disconnectClient:(id)client
{
  clientCopy = client;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureVideoStream *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__CMContinuityCaptureVideoStream_disconnectClient___block_invoke;
  block[3] = &unk_278D5C0A8;
  objc_copyWeak(&v9, &location);
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __51__CMContinuityCaptureVideoStream_disconnectClient___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _disconnectClient:?];
    WeakRetained = v2;
  }
}

- (void)setupControls
{
  device = [(CMContinuityCaptureVideoStream *)self device];
  capabilities = [device capabilities];
  obja = [capabilities controls];

  self->_activeFormatIndex = 0;
  v5 = [CMContinuityCaptureControl alloc];
  device2 = [(CMContinuityCaptureVideoStream *)self device];
  [device2 entity];
  firstObject = [(NSArray *)self->_continuityStreamFormats firstObject];
  v8 = [CMContinuityCaptureControl initWithName:v5 attributes:"initWithName:attributes:entity:minimumSupportedVersion:value:" entity:? minimumSupportedVersion:? value:?];

  v55 = v8;
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  v9 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];
  [device setValueForControl:? completion:?];

  v10 = [CMContinuityCaptureControl alloc];
  device3 = [(CMContinuityCaptureVideoStream *)self device];
  [device3 entity];
  v12 = MEMORY[0x277CCABB0];
  v13 = [(NSArray *)self->_continuityStreamFormats objectAtIndexedSubscript:?];
  [v13 maxFrameRate];
  v14 = [v12 numberWithUnsignedInt:?];
  v15 = [CMContinuityCaptureControl initWithName:v10 attributes:"initWithName:attributes:entity:minimumSupportedVersion:value:" entity:? minimumSupportedVersion:? value:?];

  v54 = v15;
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  v16 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];
  [device setValueForControl:? completion:?];

  v17 = [CMContinuityCaptureControl alloc];
  device4 = [(CMContinuityCaptureVideoStream *)self device];
  [device4 entity];
  v19 = MEMORY[0x277CCABB0];
  v20 = [(NSArray *)self->_continuityStreamFormats objectAtIndexedSubscript:?];
  [v20 minFrameRate];
  v21 = [v19 numberWithUnsignedInt:?];
  v22 = [CMContinuityCaptureControl initWithName:v17 attributes:"initWithName:attributes:entity:minimumSupportedVersion:value:" entity:? minimumSupportedVersion:? value:?];

  v53 = v22;
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  v23 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];
  v58 = device;
  [device setValueForControl:? completion:?];

  v24 = [CMContinuityCaptureControl alloc];
  device5 = [(CMContinuityCaptureVideoStream *)self device];
  [device5 entity];
  v26 = [CMContinuityCaptureControl initWithName:v24 attributes:"initWithName:attributes:entity:minimumSupportedVersion:value:" entity:? minimumSupportedVersion:? value:?];

  v52 = v26;
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  v27 = [CMContinuityCaptureControl alloc];
  device6 = [(CMContinuityCaptureVideoStream *)self device];
  [device6 entity];
  v29 = [CMContinuityCaptureControl initWithName:v27 attributes:"initWithName:attributes:entity:minimumSupportedVersion:value:" entity:? minimumSupportedVersion:? value:?];

  v51 = v29;
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  clientsRequestingBooleanControlOnByControlName = self->_clientsRequestingBooleanControlOnByControlName;
  self->_clientsRequestingBooleanControlOnByControlName = dictionary;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  maxPhotoQualityPrioritizationByClients = self->_maxPhotoQualityPrioritizationByClients;
  selfCopy = self;
  self->_maxPhotoQualityPrioritizationByClients = dictionary2;

  obj = obja;
  v35 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v35)
  {
    v36 = v35;
    v37 = MEMORY[0];
    do
    {
      for (i = 0; i != v36; i = (i + 1))
      {
        if (MEMORY[0] != v37)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(8 * i);
        cmControlByName = selfCopy->_cmControlByName;
        name = [v39 name];
        [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];

        name2 = [v39 name];
        v43 = [name2 isEqualToString:?];

        if (v43 & 1) != 0 || ([v39 name], v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "isEqualToString:"), v44, (v45) || (objc_msgSend(v39, "name"), v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "isEqualToString:"), v46, (v47) || (objc_msgSend(v39, "name"), v48 = objc_claimAutoreleasedReturnValue(), v49 = objc_msgSend(v48, "isEqualToString:"), v48, v49))
        {
          v50 = [MEMORY[0x277CBEB58] set];
          [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
        }

        [v58 setValueForControl:? completion:?];
      }

      v36 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v36);
  }
}

- (BOOL)setupStreams:(id)streams
{
  v4 = MEMORY[0x277CBEB18];
  streamsCopy = streams;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = v6;
  v9 = v7;
  [streamsCopy enumerateObjectsUsingBlock:?];

  objc_storeStrong(&self->_extensionStreamFormats, v6);
  objc_storeStrong(&self->_continuityStreamFormats, v7);
  self->_activeFormatIndex = 0;
  extensionStreamFormats = self->_extensionStreamFormats;
  if (extensionStreamFormats && [(NSArray *)extensionStreamFormats count])
  {
    v11 = 1;
  }

  else
  {
    [CMContinuityCaptureVideoStream setupStreams:];
    v11 = 0;
  }

  return v11;
}

void __47__CMContinuityCaptureVideoStream_setupStreams___block_invoke(id *a1, void *a2)
{
  v4 = a2;
  v3 = [a1[4] createFormatToPublish:?];
  if (v3)
  {
    [a1[5] addObject:?];
    [a1[6] addObject:?];
  }
}

- (id)createFormatToPublish:(id)publish
{
  publishCopy = publish;
  CMTimeMake(&v13, 1, [publishCopy maxFrameRate]);
  value = v13.value;
  epoch = v13.epoch;
  v6 = *&v13.timescale;
  CMTimeMake(&v13, 1, [publishCopy minFrameRate]);
  v7 = v13.value;
  v8 = v13.epoch;
  v9 = *&v13.timescale;
  v10 = objc_alloc(MEMORY[0x277CC1BA8]);
  [publishCopy formatDescription];

  v11 = [v10 initWithFormatDescription:value maxFrameDuration:v6 minFrameDuration:epoch validFrameDurations:{v7, v9, v8}];

  return v11;
}

- (void)dispatchFrame:(opaqueCMSampleBuffer *)frame entity:(int64_t)entity completion:(id)completion
{
  entityCopy = entity;
  if (CMContinityCaptureDebugLogEnabled(self, a2))
  {
    v8 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v15.value) = 138412802;
      *(&v15.value + 4) = self;
      LOWORD(v15.flags) = 2112;
      *(&v15.flags + 2) = frame;
      HIWORD(v15.epoch) = 1024;
      v16 = entityCopy;
      _os_log_debug_impl(&dword_242545000, v8, OS_LOG_TYPE_DEBUG, "%@ dispatchFrame %@ entity %u", &v15, 0x1Cu);
    }
  }

  memset(&v15, 170, sizeof(v15));
  CMSampleBufferGetPresentationTimeStamp(&v15, frame);
  v9 = CMGetAttachment(frame, @"ContinuityCaptureTimeDiscontinuity", 0);
  [v9 BOOLValue];
  CMRemoveAttachment(frame, @"ContinuityCaptureTimeDiscontinuity");
  v10 = *MEMORY[0x277CF3FC8];
  v11 = CMGetAttachment(frame, *MEMORY[0x277CF3FC8], 0);
  if (v11)
  {
    v12 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:?];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:?];
    CMSetAttachment(frame, v10, v13, 1u);
  }

  v14 = v15;
  CMTimeGetSeconds(&v14);
  [CMIOExtensionStream sendSampleBuffer:"sendSampleBuffer:discontinuity:hostTimeInNanoseconds:" discontinuity:? hostTimeInNanoseconds:?];
}

- (NSSet)availableProperties
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__CMContinuityCaptureVideoStream_availableProperties__block_invoke;
  v6[3] = &unk_278D5C438;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __53__CMContinuityCaptureVideoStream_availableProperties__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _availableProperties];

  return MEMORY[0x2821F96F8]();
}

- (id)_availableProperties
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v3 addObject:?];
  allKeys = [(NSMutableDictionary *)self->_cmControlByName allKeys];
  [v3 addObjectsFromArray:?];

  v5 = [v3 containsObject:?];
  if (v5)
  {
    v5 = [v3 removeObject:?];
  }

  if (CMContinityCaptureDebugLogEnabled(v5, v6))
  {
    v7 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(CMContinuityCaptureVideoStream *)self _availableProperties];
    }
  }

  return v3;
}

- (id)streamPropertiesForProperties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__2;
  v25 = __Block_byref_object_dispose__2;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__CMContinuityCaptureVideoStream_streamPropertiesForProperties_error___block_invoke;
  v11[3] = &unk_278D5C638;
  v13 = &v21;
  v11[4] = self;
  v8 = propertiesCopy;
  v12 = v8;
  v14 = &v15;
  dispatch_async_and_wait(queue, v11);

  if (error)
  {
    *error = v16[5];
  }

  v9 = v22[5];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);

  return v9;
}

void __70__CMContinuityCaptureVideoStream_streamPropertiesForProperties_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[7] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _streamPropertiesForProperties:? error:?];
  objc_storeStrong((v3 + 40), obj);
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)setStreamProperties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2;
  v24 = __Block_byref_object_dispose__2;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  queue = [(CMContinuityCaptureVideoStream *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(CMContinuityCaptureVideoStream *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__CMContinuityCaptureVideoStream_setStreamProperties_error___block_invoke;
  v12[3] = &unk_278D5C638;
  v14 = &v16;
  v12[4] = self;
  v9 = propertiesCopy;
  v13 = v9;
  v15 = &v20;
  dispatch_async_and_wait(queue2, v12);

  if (error)
  {
    *error = v21[5];
  }

  v10 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __60__CMContinuityCaptureVideoStream_setStreamProperties_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[7] + 8);
  obj = *(v3 + 40);
  v4 = [v2 _setStreamProperties:? error:?];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[6] + 8) + 24) = v4;
}

- (BOOL)_setStreamProperties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  device = [(CMContinuityCaptureVideoStream *)self device];
  if (!device)
  {
    v17 = 0;
    v50 = 0;
    v8 = 0;
    goto LABEL_99;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  dispatch_assert_queue_V2(self->_queue);
  v8 = propertiesCopy != 0;
  if (!propertiesCopy)
  {
    v51 = 0;
    v17 = 0;
    v50 = 0;
    goto LABEL_98;
  }

  v115 = device;
  propertiesDictionary = [propertiesCopy propertiesDictionary];
  v10 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    propertiesDictionary2 = [propertiesCopy propertiesDictionary];
    *buf = 138412802;
    *&buf[4] = self;
    v123 = 2112;
    *v124 = propertiesDictionary2;
    *&v124[8] = 2112;
    *&v124[10] = propertiesCopy;
    _os_log_impl(&dword_242545000, v10, OS_LOG_TYPE_DEFAULT, "%@ SetProperties %@ %@", buf, 0x20u);
  }

  v117 = propertiesDictionary;
  v114 = propertiesCopy;

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  selfCopy = self;
  allKeys = [(NSMutableDictionary *)self->_cmControlByName allKeys];
  v13 = [allKeys countByEnumeratingWithState:? objects:? count:?];
  v15 = 0x277CCA000uLL;
  if (!v13)
  {
    v17 = 0;
    v119 = 0;
    goto LABEL_58;
  }

  v16 = v13;
  v17 = 0;
  v119 = 0;
  v18 = *v128;
  *&v14 = 138413058;
  v108 = v14;
  do
  {
    for (i = 0; i != v16; i = (i + 1))
    {
      if (*v128 != v18)
      {
        objc_enumerationMutation(allKeys);
      }

      v20 = *(*(&v127 + 1) + 8 * i);
      if ([v20 isEqualToString:v108] & 1) != 0 || (objc_msgSend(v20, "isEqualToString:") & 1) != 0 || (objc_msgSend(v20, "isEqualToString:") & 1) != 0 || (objc_msgSend(v20, "isEqualToString:") & 1) != 0 || (objc_msgSend(v20, "isEqualToString:") & 1) != 0 || (objc_msgSend(v20, "isEqualToString:") & 1) != 0 || (objc_msgSend(v20, "isEqualToString:"))
      {
        continue;
      }

      v21 = [v117 objectForKey:?];

      if (!v21)
      {
        v15 = 0x277CCA000;
        continue;
      }

      v22 = [(NSMutableDictionary *)selfCopy->_cmControlByName objectForKeyedSubscript:?];

      v120 = [v117 objectForKeyedSubscript:?];

      v116 = v22;
      value = [v22 value];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        value2 = [v120 value];
        log = [value2 BOOLValue];

        client = [v114 client];
        v27 = [(NSMutableDictionary *)selfCopy->_clientsRequestingBooleanControlOnByControlName objectForKeyedSubscript:?];

        if (!v27 || !client)
        {
          goto LABEL_41;
        }

        v28 = [(NSMutableDictionary *)selfCopy->_clientsRequestingBooleanControlOnByControlName objectForKeyedSubscript:?];
        v29 = [v28 containsObject:?];
        if (log)
        {
          if (v29)
          {
            v30 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = [v28 count];
              *buf = v108;
              *&buf[4] = selfCopy;
              v123 = 2112;
              *v124 = client;
              *&v124[8] = 2112;
              *&v124[10] = v20;
              v125 = 1024;
              v126 = v31;
              v32 = v30;
              v33 = "%@ Client %@ already wants %@ on. %d total clients.";
              goto LABEL_31;
            }
          }

          else
          {
            [v28 addObject:?];
            v30 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v37 = [v28 count];
              *buf = v108;
              *&buf[4] = selfCopy;
              v123 = 2112;
              *v124 = client;
              *&v124[8] = 2112;
              *&v124[10] = v20;
              v125 = 1024;
              v126 = v37;
              v32 = v30;
              v33 = "%@ Client %@ wants %@ on. %d total clients.";
LABEL_31:
              _os_log_impl(&dword_242545000, v32, OS_LOG_TYPE_INFO, v33, buf, 0x26u);
            }
          }

LABEL_40:
LABEL_41:

          goto LABEL_42;
        }

        if (v29)
        {
          [v28 removeObject:?];
          loga = CMContinuityCaptureLog(2);
          v15 = 0x277CCA000;
          if (os_log_type_enabled(loga, OS_LOG_TYPE_INFO))
          {
            v34 = [v28 count];
            *buf = v108;
            *&buf[4] = selfCopy;
            v123 = 2112;
            *v124 = client;
            *&v124[8] = 2112;
            *&v124[10] = v20;
            v125 = 1024;
            v126 = v34;
            v35 = loga;
            v36 = "%@ Client %@ no longer wants %@ on. %d total clients.";
            goto LABEL_35;
          }
        }

        else
        {
          loga = CMContinuityCaptureLog(2);
          v15 = 0x277CCA000;
          if (os_log_type_enabled(loga, OS_LOG_TYPE_INFO))
          {
            v38 = [v28 count];
            *buf = v108;
            *&buf[4] = selfCopy;
            v123 = 2112;
            *v124 = client;
            *&v124[8] = 2112;
            *&v124[10] = v20;
            v125 = 1024;
            v126 = v38;
            v35 = loga;
            v36 = "%@ Client %@ doesn't want %@ on. %d total clients.";
LABEL_35:
            _os_log_impl(&dword_242545000, v35, OS_LOG_TYPE_INFO, v36, buf, 0x26u);
          }
        }

        if ([v28 count])
        {
          logb = v28;
          v39 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            v40 = [logb count];
            *buf = 138412802;
            *&buf[4] = selfCopy;
            v123 = 1024;
            *v124 = v40;
            *&v124[4] = 2112;
            *&v124[6] = v20;
            _os_log_impl(&dword_242545000, v39, OS_LOG_TYPE_INFO, "%@ There are still %d clients that want %@ on. Ignoring call to turn off.", buf, 0x1Cu);
          }

          v17 = v120;
          v41 = v116;
          goto LABEL_47;
        }

        goto LABEL_40;
      }

LABEL_42:
      [v20 isEqualToString:?];
      value3 = [v116 value];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v116 value];
        v43 = logc = value3;
        [v120 value];
        v45 = v44 = v116;
        v109 = [v43 isEqualToNumber:?];

        v15 = 0x277CCA000;
        if (v109)
        {
          v46 = CMContinuityCaptureLog(2);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            *&buf[4] = selfCopy;
            v123 = 2080;
            *v124 = "[CMContinuityCaptureVideoStream _setStreamProperties:error:]";
            *&v124[8] = 2112;
            *&v124[10] = v116;
            _os_log_impl(&dword_242545000, v46, OS_LOG_TYPE_INFO, "%@ %s Skip setting value for %@ as it's not updated", buf, 0x20u);
          }

          v41 = v116;
          v17 = v120;
LABEL_47:
          v119 = v41;
          continue;
        }
      }

      else
      {

        v44 = v116;
      }

      value4 = [v120 value];
      [v44 setValue:?];

      [v7 setObject:? forKeyedSubscript:?];
      v48 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = selfCopy;
        v123 = 2112;
        *v124 = v44;
        _os_log_impl(&dword_242545000, v48, OS_LOG_TYPE_DEFAULT, "%@ Set Control %@", buf, 0x16u);
      }

      [v115 setValueForControl:? completion:?];
      v49 = v44;
      v17 = v120;
      v119 = v49;
      v15 = 0x277CCA000;
    }

    v16 = [allKeys countByEnumeratingWithState:? objects:? count:?];
  }

  while (v16);
LABEL_58:

  propertiesCopy = v114;
  activeFormatIndex = [v114 activeFormatIndex];
  if (activeFormatIndex)
  {
    v53 = activeFormatIndex;
    v121 = v17;
    activeFormatIndex2 = [v114 activeFormatIndex];
    unsignedIntegerValue = [activeFormatIndex2 unsignedIntegerValue];
    p_isa = &selfCopy->super.super.isa;
    v57 = [(NSArray *)selfCopy->_continuityStreamFormats count];

    device = v115;
    if (unsignedIntegerValue >= v57)
    {
      v17 = v121;
    }

    else
    {
      v58 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        activeFormatIndex3 = [v114 activeFormatIndex];
        unsignedIntegerValue2 = [activeFormatIndex3 unsignedIntegerValue];
        activeFormatIndex = selfCopy->_activeFormatIndex;
        *buf = 138412802;
        *&buf[4] = selfCopy;
        v123 = 1024;
        *v124 = unsignedIntegerValue2;
        *&v124[4] = 1024;
        *&v124[6] = activeFormatIndex;
        _os_log_impl(&dword_242545000, v58, OS_LOG_TYPE_DEFAULT, " %@ set active format to %d from %d ", buf, 0x18u);
      }

      activeFormatIndex4 = [v114 activeFormatIndex];
      selfCopy->_activeFormatIndex = [activeFormatIndex4 unsignedIntegerValue];

      v63 = MEMORY[0x277CC1B90];
      v64 = [*(v15 + 2992) numberWithUnsignedInteger:?];
      v65 = [v63 propertyStateWithValue:?];

      [v7 setObject:? forKeyedSubscript:?];
      v66 = [(NSArray *)selfCopy->_continuityStreamFormats objectAtIndexedSubscript:?];
      v67 = [(NSMutableDictionary *)selfCopy->_cmControlByName objectForKeyedSubscript:?];
      [v67 setValue:?];

      v15 = 0x277CCA000;
      v68 = [(NSMutableDictionary *)selfCopy->_cmControlByName objectForKeyedSubscript:?];
      [v115 setValueForControl:? completion:?];

      v17 = v65;
    }
  }

  else
  {
    device = v115;
    p_isa = &selfCopy->super.super.isa;
  }

  frameDuration = [v114 frameDuration];

  v51 = v117;
  if (frameDuration)
  {
    frameDuration2 = [v114 frameDuration];
    CMTimeMakeFromDictionary(buf, frameDuration2);
    v71 = *buf;

    if (v71 >= 1)
    {
      v72 = [p_isa[29] objectForKeyedSubscript:?];

      if (v72)
      {
        v73 = [*(v15 + 2992) numberWithFloat:?];
        [v72 setValue:?];

        [device setValueForControl:? completion:?];
        v119 = v72;
      }

      else
      {
        v119 = 0;
      }
    }
  }

  maxFrameDuration = [v114 maxFrameDuration];

  if (maxFrameDuration)
  {
    maxFrameDuration2 = [v114 maxFrameDuration];
    CMTimeMakeFromDictionary(buf, maxFrameDuration2);
    v76 = *buf;

    if (v76 >= 1)
    {
      v77 = [p_isa[29] objectForKeyedSubscript:?];

      if (v77)
      {
        v78 = [*(v15 + 2992) numberWithFloat:?];
        [v77 setValue:?];

        [device setValueForControl:? completion:?];
        v119 = v77;
      }

      else
      {
        v119 = 0;
      }
    }
  }

  v79 = [v117 objectForKeyedSubscript:?];

  if (v79)
  {
    v80 = [p_isa[29] objectForKeyedSubscript:?];

    if (v80)
    {
      v81 = [v117 objectForKeyedSubscript:?];

      value5 = [v81 value];
      v83 = *(v15 + 2992);
      [value5 floatValue];
      v84 = [v83 numberWithFloat:?];
      [v80 setValue:?];

      v51 = v117;
      [device setValueForControl:? completion:?];

      v17 = v81;
      v119 = v80;
    }

    else
    {
      v119 = 0;
    }
  }

  v85 = [v51 objectForKeyedSubscript:?];

  if (v85)
  {
    v86 = [p_isa[29] objectForKeyedSubscript:?];

    if (v86)
    {
      v87 = [v51 objectForKeyedSubscript:?];

      value6 = [v87 value];
      v89 = *(v15 + 2992);
      [value6 floatValue];
      v90 = [v89 numberWithFloat:?];
      [v86 setValue:?];

      v51 = v117;
      [device setValueForControl:? completion:?];

      v17 = v87;
      v119 = v86;
    }

    else
    {
      v119 = 0;
    }
  }

  v91 = [v51 objectForKeyedSubscript:?];

  if (v91)
  {
    v92 = [p_isa[29] objectForKeyedSubscript:?];

    if (v92)
    {
      v93 = [v51 objectForKeyedSubscript:?];

      value7 = [v93 value];
      v95 = *(v15 + 2992);
      [value7 BOOLValue];
      v96 = [v95 numberWithBool:?];
      [v92 setValue:?];

      v51 = v117;
      [device setValueForControl:? completion:?];

      v17 = v93;
      v119 = v92;
    }

    else
    {
      v119 = 0;
    }
  }

  v97 = [v51 objectForKeyedSubscript:?];

  if (v97)
  {
    v98 = [p_isa[29] objectForKeyedSubscript:?];

    if (v98)
    {
      v99 = [v51 objectForKeyedSubscript:?];

      value8 = [v99 value];
      v101 = *(v15 + 2992);
      [value8 BOOLValue];
      v102 = [v101 numberWithBool:?];
      [v98 setValue:?];

      v51 = v117;
      [device setValueForControl:? completion:?];

      v17 = v99;
      v50 = v98;
    }

    else
    {
      v50 = 0;
    }
  }

  else
  {
    v50 = v119;
  }

  v103 = [v51 objectForKeyedSubscript:?];

  if (v103)
  {
    v104 = [p_isa[29] objectForKeyedSubscript:?];

    if (v104)
    {
      v105 = [v51 objectForKeyedSubscript:?];

      value9 = [v105 value];
      [v104 setValue:?];

      [device setValueForControl:? completion:?];
      v17 = v105;
      v50 = v104;
    }

    else
    {
      v50 = 0;
    }
  }

  v8 = 1;
  if ([v7 count])
  {
    [p_isa notifyPropertiesChanged:?];
  }

LABEL_98:

LABEL_99:
  return v8;
}

- (void)setValueForControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  objc_initWeak(&location, self);
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__CMContinuityCaptureVideoStream_setValueForControl_completion___block_invoke;
  v11[3] = &unk_278D5C490;
  objc_copyWeak(&v14, &location);
  v12 = controlCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = controlCopy;
  dispatch_async(queue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __64__CMContinuityCaptureVideoStream_setValueForControl_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _setValueForControl:? completion:?];
    WeakRetained = v2;
  }
}

- (id)_getResolvedStillCaptureConfigs:(id)configs
{
  queue = self->_queue;
  configsCopy = configs;
  dispatch_assert_queue_V2(queue);
  v5 = [configsCopy mutableCopy];

  return v5;
}

- (BOOL)startStreamAndReturnError:(id *)error
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v15 = 2080;
    v16 = "[CMContinuityCaptureVideoStream startStreamAndReturnError:]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  device = [(CMContinuityCaptureVideoStream *)self device];
  if (device)
  {
    v6 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __60__CMContinuityCaptureVideoStream_startStreamAndReturnError___block_invoke;
    v11 = &unk_278D5C080;
    objc_copyWeak(&v12, buf);
    [v6 startStreamForDevice:? startCompletion:? startSkippedCompletion:?];

    objc_destroyWeak(&v12);
  }

  objc_destroyWeak(buf);
  return 1;
}

void __60__CMContinuityCaptureVideoStream_startStreamAndReturnError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _startStreamAndReturnError:?];
    WeakRetained = v2;
  }
}

- (BOOL)_startStreamAndReturnError:(id *)error
{
  objc_initWeak(&location, self);
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v11 = 2080;
    v12 = "[CMContinuityCaptureVideoStream _startStreamAndReturnError:]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__CMContinuityCaptureVideoStream__startStreamAndReturnError___block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v8, &location);
  dispatch_async(queue, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  return 1;
}

void __61__CMContinuityCaptureVideoStream__startStreamAndReturnError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained device];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 compositeDelegate];
      v7 = MEMORY[0x277D85DD0];
      objc_copyWeak(&v9, (a1 + 32));
      v8 = v5;
      [v6 registerStreamIntentForCaptureDevice:v7 completion:{3221225472, __61__CMContinuityCaptureVideoStream__startStreamAndReturnError___block_invoke_2, &unk_278D5C660}];

      objc_destroyWeak(&v9);
    }
  }
}

void __61__CMContinuityCaptureVideoStream__startStreamAndReturnError___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = 138543618;
    v9 = WeakRetained;
    v10 = 2112;
    v11 = a2;
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ completed registerStreamIntentForCaptureDevice error %@", &v8, 0x16u);
  }

  if (a2 && [a2 code] && (objc_msgSend(a2, "code") == -1005 || objc_msgSend(a2, "code") == -1006))
  {
    v6 = [*(a1 + 32) compositeDelegate];
    [*(a1 + 32) entity];
    [v6 postEvent:? entity:? data:?];
  }

  v7 = [*(a1 + 32) compositeDelegate];
  [*(a1 + 32) entity];
  [v7 postEvent:? entity:? data:?];
}

- (BOOL)stopStreamAndReturnError:(id *)error
{
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v21 = 2080;
    v22 = "[CMContinuityCaptureVideoStream stopStreamAndReturnError:]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  device = [(CMContinuityCaptureVideoStream *)self device];
  v6 = device;
  if (device)
  {
    compositeDelegate = [device compositeDelegate];
    [v6 entity];
    [compositeDelegate postEvent:? entity:? data:?];

    v8 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    [v8 unscheduleNotification:?];

    v9 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    [v9 unscheduleNotification:?];

    v10 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    [v10 unscheduleNotification:?];

    v11 = +[CMContinuityCaptureUserNotificationCenter sharedInstance];
    [v11 unscheduleNotification:?];

    v12 = +[CMContinuityCaptureSessionStateManager sharedInstance];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __59__CMContinuityCaptureVideoStream_stopStreamAndReturnError___block_invoke;
    v17 = &unk_278D5C080;
    objc_copyWeak(&v18, buf);
    [v12 stopStreamForDevice:? option:? completion:?];

    objc_destroyWeak(&v18);
  }

  objc_destroyWeak(buf);
  return 1;
}

void __59__CMContinuityCaptureVideoStream_stopStreamAndReturnError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _stopStreamAndReturnError:?];
    WeakRetained = v2;
  }
}

- (BOOL)_stopStreamAndReturnError:(id *)error
{
  objc_initWeak(&location, self);
  v4 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v14 = 2080;
    v15 = "[CMContinuityCaptureVideoStream _stopStreamAndReturnError:]";
    _os_log_impl(&dword_242545000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %s", buf, 0x16u);
  }

  device = [(CMContinuityCaptureVideoStream *)self device];
  compositeDelegate = [device compositeDelegate];
  device2 = [(CMContinuityCaptureVideoStream *)self device];
  [compositeDelegate unregisterStreamIntentForCaptureDevice:?];

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CMContinuityCaptureVideoStream__stopStreamAndReturnError___block_invoke;
  block[3] = &unk_278D5C080;
  objc_copyWeak(&v11, &location);
  dispatch_async(queue, block);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  return 1;
}

void __60__CMContinuityCaptureVideoStream__stopStreamAndReturnError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained device];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 compositeDelegate];
      [v3 entity];
      [v4 postEvent:? entity:? data:?];
    }

    WeakRetained = v5;
  }
}

- (void)captureAsyncStillImage:(int64_t)image options:(id)options completionHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  queue = [(CMContinuityCaptureVideoStream *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__CMContinuityCaptureVideoStream_captureAsyncStillImage_options_completionHandler___block_invoke;
  block[3] = &unk_278D5C288;
  objc_copyWeak(v16, &location);
  v16[1] = image;
  v14 = optionsCopy;
  v15 = handlerCopy;
  v11 = handlerCopy;
  v12 = optionsCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __83__CMContinuityCaptureVideoStream_captureAsyncStillImage_options_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(CMContinuityCaptureStillImageRequest);
    [(CMContinuityCaptureStillImageRequest *)v3 setUniqueID:?];
    v4 = [*(a1 + 32) objectForKeyedSubscript:?];
    [(CMContinuityCaptureStillImageRequest *)v3 setCompressedFormat:?];

    v5 = [*(a1 + 32) objectForKeyedSubscript:?];
    [v5 BOOLValue];
    [(CMContinuityCaptureStillImageRequest *)v3 setHighResolutionPhotoEnabled:?];

    v6 = [*(a1 + 32) objectForKeyedSubscript:?];
    [v6 intValue];
    [(CMContinuityCaptureStillImageRequest *)v3 setFlashMode:?];

    v7 = [*(a1 + 32) objectForKeyedSubscript:?];
    [v7 intValue];
    [(CMContinuityCaptureStillImageRequest *)v3 setPhotoQualityPrioritization:?];

    v8 = [*(a1 + 32) objectForKeyedSubscript:?];
    if (v8)
    {
      v9 = v8;
      v10 = [*(a1 + 32) objectForKeyedSubscript:?];

      if (v10)
      {
        v11 = [*(a1 + 32) objectForKeyedSubscript:?];
        [v11 intValue];

        v12 = [*(a1 + 32) objectForKeyedSubscript:?];
        [v12 intValue];
      }
    }

    [(CMContinuityCaptureStillImageRequest *)v3 setMaxPhotoDimensions:?];
    [(CMContinuityCaptureStillImageRequest *)v3 setCompletionHandler:?];
    v13 = objc_loadWeakRetained(WeakRetained + 34);
    v14 = [WeakRetained device];
    [v14 entity];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:@"ImageRequest" forKeys:v3 count:?];
    [v13 postEvent:? entity:? data:?];
  }
}

- (void)enqueueReactionEffect:(id)effect completionHandler:(id)handler
{
  effectCopy = effect;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v8 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v18 = 2080;
    v19 = "[CMContinuityCaptureVideoStream enqueueReactionEffect:completionHandler:]";
    _os_log_impl(&dword_242545000, v8, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  queue = [(CMContinuityCaptureVideoStream *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CMContinuityCaptureVideoStream_enqueueReactionEffect_completionHandler___block_invoke;
  block[3] = &unk_278D5C490;
  objc_copyWeak(&v15, &location);
  v13 = effectCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = effectCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __74__CMContinuityCaptureVideoStream_enqueueReactionEffect_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained device];
    if (v4)
    {
      v5 = [v3 device];
      [v5 entity];
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:@"ReactionType" forKeys:*(a1 + 32) count:?];
      [v4 postEvent:? entity:? data:?];

      v7 = *(a1 + 40);
      if (v7)
      {
        (*(v7 + 16))(v7, 0);
      }
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  device = [(CMContinuityCaptureVideoStream *)self device];
  v7 = [v3 stringWithFormat:v5, device, self];

  return v7;
}

- (CMContinuityCaptureVideoStream)initWithDevice:(id)device streamFormats:(id)formats deviceID:(id)d queue:(id)queue
{
  deviceCopy = device;
  formatsCopy = formats;
  dCopy = d;
  queueCopy = queue;
  compositeDelegate = [deviceCopy compositeDelegate];
  objc_storeWeak(&self->_compositeDevice, compositeDelegate);

  v13 = MEMORY[0x277CCACA8];
  WeakRetained = objc_loadWeakRetained(&self->_compositeDevice);
  client = [WeakRetained client];
  device = [client device];
  deviceName = [device deviceName];
  v18 = [v13 stringWithFormat:deviceName];
  v19 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v53.receiver = self;
  v53.super_class = CMContinuityCaptureVideoStream;
  v20 = [(CMIOExtensionStream *)&v53 initWithLocalizedName:v18 streamID:v19 direction:0 clockType:0 source:self];

  if (!v20)
  {
LABEL_11:
    v29 = 0;
    v26 = dCopy;
    goto LABEL_7;
  }

  objc_storeStrong(&v20->_queue, queue);
  v21 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v50 = v20;
    v51 = 2112;
    v52 = formatsCopy;
    _os_log_impl(&dword_242545000, v21, OS_LOG_TYPE_DEFAULT, " %@ setup stream for formats %@", buf, 0x16u);
  }

  if (!v20->_queue)
  {
    v31 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v50 = v20;
      OUTLINED_FUNCTION_11(&dword_242545000, v32, v33, " %@ Invalid queue", v34, v35, v36, v37, v45, v46, queueCopy, dCopy);
    }

    goto LABEL_11;
  }

  objc_storeWeak(&v20->_device, deviceCopy);
  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
  cmControlByName = v20->_cmControlByName;
  v20->_cmControlByName = v22;

  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  clientsRequestingBooleanControlOnByControlName = v20->_clientsRequestingBooleanControlOnByControlName;
  v20->_clientsRequestingBooleanControlOnByControlName = v24;

  if ([(CMContinuityCaptureVideoStream *)v20 setupStreams:?])
  {
    v26 = dCopy;
    v27 = [dCopy copy];
    deviceID = v20->_deviceID;
    v20->_deviceID = v27;

    [(CMContinuityCaptureVideoStream *)v20 setupControls];
    v29 = v20;
  }

  else
  {
    v38 = CMContinuityCaptureLog(2);
    v26 = dCopy;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v50 = v20;
      OUTLINED_FUNCTION_11(&dword_242545000, v39, v40, " %@ Failed to setup streams", v41, v42, v43, v44, v45, v46, queueCopy, dCopy);
    }

    v29 = 0;
  }

LABEL_7:

  return v29;
}

- (void)_disconnectClient:(id)client
{
  clientCopy = client;
  dispatch_assert_queue_V2(self->_queue);
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_device);

  if (WeakRetained)
  {
    v6 = CMContinuityCaptureLog(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_3_0();
      _os_log_impl(&dword_242545000, v6, OS_LOG_TYPE_INFO, "%@ Client %{private}@ has disconnected.", buf, 0x16u);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v7 = self->_clientsRequestingBooleanControlOnByControlName;
    v8 = [NSMutableDictionary countByEnumeratingWithState:v7 objects:"countByEnumeratingWithState:objects:count:" count:?];
    if (v8)
    {
      v10 = v8;
      v49 = 0;
      v11 = *v57;
      *&v9 = 138412546;
      v47 = v9;
      v48 = v7;
      do
      {
        v12 = 0;
        v50 = v10;
        do
        {
          if (*v57 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v56 + 1) + 8 * v12);
          v14 = [(NSMutableDictionary *)selfCopy->_clientsRequestingBooleanControlOnByControlName objectForKeyedSubscript:v47];
          if ([v14 containsObject:?])
          {
            v15 = v11;
            [v14 removeObject:?];
            v16 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              [v14 count];
              OUTLINED_FUNCTION_3_0();
              OUTLINED_FUNCTION_5_0();
              OUTLINED_FUNCTION_10();
              _os_log_impl(v17, v18, v19, "%@ Client %{private}@ no longer needs %@ on. %d total clients.", v20, 0x26u);
            }

            v21 = [v14 count];
            v22 = CMContinuityCaptureLog(2);
            v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
            if (v21)
            {
              v11 = v15;
              if (v23)
              {
                v24 = [v14 count];
                *buf = 138412802;
                v53 = selfCopy;
                v54 = 1024;
                LODWORD(v55[0]) = v24;
                WORD2(v55[0]) = 2112;
                *(v55 + 6) = v13;
                OUTLINED_FUNCTION_10();
                _os_log_impl(v25, v26, v27, "%@ There are still %d clients that want %@ on. Keeping on.", v28, 0x1Cu);
              }
            }

            else
            {
              if (v23)
              {
                *buf = v47;
                v53 = selfCopy;
                v54 = 2112;
                v55[0] = v13;
                OUTLINED_FUNCTION_10();
                _os_log_impl(v33, v34, v35, "%@ No more clients need %@ on. Turning off.", v36, 0x16u);
              }

              v22 = [(NSMutableDictionary *)selfCopy->_cmControlByName objectForKeyedSubscript:?];
              v37 = [MEMORY[0x277CCABB0] numberWithBool:?];
              [v22 setValue:?];

              v38 = objc_loadWeakRetained(&selfCopy->_device);
              [v38 setValueForControl:? completion:?];

              v39 = v49;
              if (!v49)
              {
                v39 = objc_alloc_init(MEMORY[0x277CBEB38]);
              }

              v40 = MEMORY[0x277CC1B90];
              [MEMORY[0x277CCABB0] numberWithBool:?];
              v41 = v49 = v39;
              v42 = [v40 propertyStateWithValue:?];
              [v39 setObject:? forKeyedSubscript:?];

              v7 = v48;
              v11 = v15;
            }

            v10 = v50;
          }

          else
          {
            v22 = CMContinuityCaptureLog(2);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              [v14 count];
              OUTLINED_FUNCTION_3_0();
              OUTLINED_FUNCTION_5_0();
              OUTLINED_FUNCTION_10();
              _os_log_impl(v29, v30, v31, "%@ Client %{private}@ didn't want %@ on. %d total clients.", v32, 0x26u);
            }
          }

          v12 = (v12 + 1);
        }

        while (v10 != v12);
        v10 = [NSMutableDictionary countByEnumeratingWithState:v7 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v10);
    }

    else
    {
      v49 = 0;
    }

    v43 = [(NSMutableDictionary *)selfCopy->_cmControlByName objectForKeyedSubscript:?];
    v44 = v49;
    if (v43)
    {
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
      v45 = CMContinuityCaptureLog(2);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        maxPhotoQualityPrioritizationByClients = selfCopy->_maxPhotoQualityPrioritizationByClients;
        *buf = 138412546;
        v53 = selfCopy;
        v54 = 2112;
        v55[0] = maxPhotoQualityPrioritizationByClients;
        _os_log_impl(&dword_242545000, v45, OS_LOG_TYPE_INFO, "%@ Updated maxPhotoQualityPrioritizationByClients to %@", buf, 0x16u);
      }
    }

    if (v49)
    {
      [(CMIOExtensionStream *)selfCopy notifyPropertiesChanged:?];
    }
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }
}

- (id)_streamPropertiesForProperties:(id)properties error:(id *)error
{
  propertiesCopy = properties;
  v5 = [MEMORY[0x277CC1BB0] streamPropertiesWithDictionary:?];
  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  if (!propertiesCopy || !v5)
  {
    goto LABEL_44;
  }

  if ([propertiesCopy containsObject:?])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v6 setActiveFormatIndex:?];
  }

  if ([propertiesCopy containsObject:?])
  {
    device = [(CMContinuityCaptureVideoStream *)self device];
    activeConfiguration = [device activeConfiguration];
    CMTimeMake(&v47, 1, [activeConfiguration maxFrameRate]);

    v14 = OUTLINED_FUNCTION_9_0();
    if (v14)
    {
      [v6 setFrameDuration:?];
    }
  }

  else
  {
    v14 = 0;
  }

  v44 = v6;
  v42 = v14;
  if ([propertiesCopy containsObject:?])
  {
    device2 = [(CMContinuityCaptureVideoStream *)self device];
    activeConfiguration2 = [device2 activeConfiguration];
    CMTimeMake(&v47, 1, [activeConfiguration2 minFrameRate]);

    v17 = OUTLINED_FUNCTION_9_0();
    if (v17)
    {
      v40 = v17;
      [v6 setMaxFrameDuration:?];
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  allKeys = [(NSMutableDictionary *)self->_cmControlByName allKeys];
  v19 = [allKeys countByEnumeratingWithState:? objects:? count:?];
  if (!v19)
  {
    v45 = 0;
    v9 = 0;
    goto LABEL_38;
  }

  v20 = v19;
  v45 = 0;
  v9 = 0;
  v21 = MEMORY[0];
  do
  {
    for (i = 0; i != v20; i = (i + 1))
    {
      if (MEMORY[0] != v21)
      {
        objc_enumerationMutation(allKeys);
      }

      v23 = *(8 * i);
      if (([v23 isEqualToString:?] & 1) == 0 && (objc_msgSend(v23, "isEqualToString:") & 1) == 0 && objc_msgSend(propertiesCopy, "containsObject:"))
      {
        v24 = propertiesCopy;
        v25 = [(NSMutableDictionary *)self->_cmControlByName objectForKeyedSubscript:?];

        name = [v25 name];
        v27 = [name isEqualToString:?];

        if (v27)
        {
          v9 = v25;
          propertiesCopy = v24;
          continue;
        }

        if (v25)
        {
          if ([v23 isEqualToString:?] && (objc_opt_class(), (objc_opt_respondsToSelector() & 1) != 0))
          {
            value2 = [MEMORY[0x277CC1B88] propertyAttributesWithSharedStreamDefaultValue:? minValue:? maxValue:? validValues:?];
            v29 = MEMORY[0x277CC1B90];
            value = [v25 value];
            v30 = [v29 propertyStateWithValue:? attributes:?];

            v31 = value;
          }

          else
          {
            v32 = MEMORY[0x277CC1B90];
            value2 = [v25 value];
            v30 = [v32 propertyStateWithValue:? attributes:?];
            v31 = v45;
          }

          v33 = v30;
          propertiesCopy = v24;
          if (v33)
          {
LABEL_30:
            v45 = v33;
            [v44 setPropertyState:? forProperty:?];
LABEL_33:
            v9 = v25;
            continue;
          }
        }

        else
        {
          propertiesCopy = v24;
          v33 = v45;
          if (v45)
          {
            goto LABEL_30;
          }
        }

        v45 = 0;
        goto LABEL_33;
      }
    }

    v20 = [allKeys countByEnumeratingWithState:? objects:? count:?];
  }

  while (v20);
LABEL_38:

  if (CMContinityCaptureDebugLogEnabled(v34, v35))
  {
    v36 = CMContinuityCaptureLog(2);
    v6 = v44;
    v7 = v41;
    v10 = v42;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      propertiesDictionary = [v44 propertiesDictionary];
      LODWORD(v47.value) = 138412546;
      *(&v47.value + 4) = self;
      LOWORD(v47.flags) = 2112;
      *(&v47.flags + 2) = propertiesDictionary;
      _os_log_debug_impl(&dword_242545000, v36, OS_LOG_TYPE_DEBUG, "%@ GetProperties %@", &v47, 0x16u);
    }
  }

  else
  {
    v6 = v44;
    v7 = v41;
    v10 = v42;
  }

  v8 = v45;
LABEL_44:
  v37 = v6;

  return v6;
}

- (void)_setValueForControl:(id)control completion:(id)completion
{
  controlCopy = control;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  dispatch_assert_queue_V2(self->_queue);
  [controlCopy name];
  objc_claimAutoreleasedReturnValue();
  v8 = [OUTLINED_FUNCTION_2_0() objectForKeyedSubscript:?];

  if (!v8)
  {
    goto LABEL_37;
  }

  [controlCopy name];
  objc_claimAutoreleasedReturnValue();
  v8 = [OUTLINED_FUNCTION_2_0() objectForKeyedSubscript:?];

  name = [controlCopy name];
  v10 = [name isEqualToString:?];

  if (v10)
  {
    [controlCopy value];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_2_0() setValue:?];

    v11 = CMContinuityCaptureLog(2);
    if (OUTLINED_FUNCTION_8_0(v11))
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  name = [controlCopy name];
  v12 = [name isEqualToString:?];

  if (v12)
  {
    [controlCopy value];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_2_0() setValue:?];

    v13 = CMContinuityCaptureLog(2);
    if (OUTLINED_FUNCTION_8_0(v13))
    {
LABEL_7:
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v14, v15, v16, v17, v18, 0x20u);
    }

LABEL_8:

    value = [v8 value];
    CMTimeMake(&v56, 1, [value unsignedIntValue]);
    value4 = CMTimeCopyAsDictionary(&v56, 0);
    if (value4)
    {
      v21 = [MEMORY[0x277CC1B90] propertyStateWithValue:? attributes:?];
      if (v21)
      {
        name2 = [controlCopy name];
        [v7 setObject:? forKeyedSubscript:?];
      }
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_13;
  }

  name3 = [controlCopy name];
  if (![name3 isEqualToString:?] || (objc_msgSend(controlCopy, "value"), (v24 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_24;
  }

  v25 = v24;
  value2 = [controlCopy value];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_24:
    name4 = [controlCopy name];
    if ([name4 isEqualToString:?] && (objc_msgSend(controlCopy, "value"), (v31 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v32 = v31;
      value3 = [controlCopy value];
      objc_opt_class();
      v34 = objc_opt_isKindOfClass();

      if (v34)
      {
        value4 = [v8 value];
        [controlCopy value];
        objc_claimAutoreleasedReturnValue();
        v35 = [OUTLINED_FUNCTION_7_0() isEqualToArray:?];

        if (!v35)
        {
          [controlCopy value];
          objc_claimAutoreleasedReturnValue();
          [OUTLINED_FUNCTION_2_0() setValue:?];

          v36 = CMContinuityCaptureLog(2);
          if (!OUTLINED_FUNCTION_8_0(v36))
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v50 = CMContinuityCaptureLog(2);
        if (OUTLINED_FUNCTION_8_0(v50))
        {
          goto LABEL_43;
        }

        goto LABEL_44;
      }
    }

    else
    {
    }

    value5 = [v8 value];
    objc_opt_class();
    v38 = objc_opt_isKindOfClass();

    if (v38)
    {
      value4 = [v8 value];
      [controlCopy value];
      objc_claimAutoreleasedReturnValue();
      v39 = [OUTLINED_FUNCTION_7_0() isEqualToNumber:?];

      if (!v39)
      {
        [controlCopy value];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_2_0() setValue:?];

        v40 = CMContinuityCaptureLog(2);
        if (!OUTLINED_FUNCTION_8_0(v40))
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      v48 = CMContinuityCaptureLog(2);
      if (OUTLINED_FUNCTION_8_0(v48))
      {
        goto LABEL_43;
      }

      goto LABEL_44;
    }

LABEL_37:
    v21 = 0;
    goto LABEL_14;
  }

  value4 = [v8 value];
  [controlCopy value];
  objc_claimAutoreleasedReturnValue();
  v28 = [OUTLINED_FUNCTION_7_0() isEqualToDictionary:?];

  if (v28)
  {
    v49 = CMContinuityCaptureLog(2);
    if (OUTLINED_FUNCTION_8_0(v49))
    {
LABEL_43:
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_6_0();
      _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
    }

LABEL_44:
    v21 = 0;
    goto LABEL_13;
  }

  [controlCopy value];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() setValue:?];

  v29 = CMContinuityCaptureLog(2);
  if (!OUTLINED_FUNCTION_8_0(v29))
  {
    goto LABEL_35;
  }

LABEL_34:
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  _os_log_impl(v41, v42, v43, v44, v45, 0x20u);
LABEL_35:

  v46 = MEMORY[0x277CC1B90];
  value6 = [controlCopy value];
  v21 = [v46 propertyStateWithValue:? attributes:?];

  if (v21)
  {
    value4 = [controlCopy name];
    [v7 setObject:? forKeyedSubscript:?];
LABEL_13:
  }

LABEL_14:
  if ([v7 count])
  {
    [(CMIOExtensionStream *)self notifyPropertiesChanged:?];
  }
}

- (void)setupStreams:.cold.1()
{
  v0 = CMContinuityCaptureLog(2);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(&dword_242545000, v0, OS_LOG_TYPE_ERROR, "%@ Invalid stream formats", v1, 0xCu);
  }
}

- (void)_availableProperties
{
  v3 = 138412546;
  selfCopy = self;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_242545000, log, OS_LOG_TYPE_DEBUG, "%@ AvailableProperties %@", &v3, 0x16u);
}

@end