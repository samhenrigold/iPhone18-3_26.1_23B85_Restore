@interface OSActivityStream
- (BOOL)establishTrust:(id)trust;
- (BOOL)streamEvent:(id)event error:(id)error;
- (OSActivityStream)init;
- (OSActivityStreamDelegate)delegate;
- (OSDeviceDelegate)deviceDelegate;
- (id)getInfoForDevice:(id)device andKey:(id)key;
- (unint64_t)events;
- (void)addProcessID:(int)d;
- (void)addUserID:(unsigned int)d;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
- (void)setDeviceDelegate:(id)delegate;
- (void)setEvents:(unint64_t)events;
- (void)setPredicate:(id)predicate;
- (void)start;
- (void)startLocal;
- (void)startRemote;
- (void)stop;
- (void)stopLocal;
- (void)stopRemote;
@end

@implementation OSActivityStream

- (OSActivityStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (OSDeviceDelegate)deviceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceDelegate);

  return WeakRetained;
}

- (BOOL)establishTrust:(id)trust
{
  v33 = *MEMORY[0x277D85DE8];
  trustCopy = trust;
  v5 = trustCopy;
  if (!trustCopy)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
LABEL_16:
      v18 = 0;
      goto LABEL_31;
    }

    *buffer = 0;
    v15 = MEMORY[0x277D86220];
    v16 = "Invalid input.";
    v17 = 2;
LABEL_15:
    _os_log_impl(&dword_22E01A000, v15, OS_LOG_TYPE_DEFAULT, v16, buffer, v17);
    goto LABEL_16;
  }

  devType = [trustCopy devType];
  if (devType != 2)
  {
    if (devType == 1)
    {
      mobileDeviceRef = [v5 mobileDeviceRef];
      selfCopy = self;
      strcpy(buffer, "0000000000000000000000000000000000000000");
      buffer[41] = 0;
      if (!mobileDeviceRef)
      {
        v13 = 0;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v26) = 0;
          _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Invalid inputs", &v26, 2u);
          v13 = 0;
        }

        goto LABEL_30;
      }

      v9 = selfCopy;
      v10 = (*(mobdevtab + 128))(mobileDeviceRef);
      v11 = v10;
      if (v10)
      {
        CFStringGetCString(v10, buffer, 42, 0x8000100u);
      }

      v12 = (*(mobdevtab + 32))(mobileDeviceRef);
      if (v12)
      {
        v13 = v12;
        v14 = (*(mobdevtab + 136))();
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v26 = 136315650;
          v27 = buffer;
          v28 = 1024;
          v29 = v13;
          v30 = 2112;
          v31 = v14;
          _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "(%s) AMDeviceConnect failed with %08x (%@)\n", &v26, 0x1Cu);
        }

        goto LABEL_26;
      }

      v19 = (*(mobdevtab + 40))(mobileDeviceRef);
      if (v19 != -402653155 && v19 != 0)
      {
        v22 = (*(mobdevtab + 120))(mobileDeviceRef);
        if (v22)
        {
          v13 = v22;
          v14 = (*(mobdevtab + 136))();
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v26 = 136315650;
            v27 = buffer;
            v28 = 1024;
            v29 = v13;
            v30 = 2112;
            v31 = v14;
            v23 = MEMORY[0x277D86220];
            v24 = "(%s) AMDevicePair failed with %08x (%@)\n";
LABEL_35:
            _os_log_impl(&dword_22E01A000, v23, OS_LOG_TYPE_DEFAULT, v24, &v26, 0x1Cu);
          }

LABEL_25:
          (*(mobdevtab + 64))(mobileDeviceRef);
LABEL_26:
          if (v11)
          {
            CFRelease(v11);
          }

          if (v14)
          {
            CFRelease(v14);
          }

LABEL_30:
          v18 = v13 == 0;
          goto LABEL_31;
        }

        v25 = (*(mobdevtab + 40))(mobileDeviceRef);
        if (v25 != -402653155)
        {
          v13 = v25;
          if (v25)
          {
            v14 = (*(mobdevtab + 136))(v25);
            if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_25;
            }

            v26 = 136315650;
            v27 = buffer;
            v28 = 1024;
            v29 = v13;
            v30 = 2112;
            v31 = v14;
            v23 = MEMORY[0x277D86220];
            v24 = "(%s) AMDeviceStartSession failed with %08x (%@)\n";
            goto LABEL_35;
          }
        }
      }

      logdev_notification_callback(0, buffer, mobileDeviceRef, v9);
      v14 = 0;
      v13 = 0;
      goto LABEL_25;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buffer = 134217984;
    *&buffer[4] = [v5 devType];
    v15 = MEMORY[0x277D86220];
    v16 = "Unknown logging device type %ld";
    v17 = 12;
    goto LABEL_15;
  }

  v18 = 1;
LABEL_31:

  return v18;
}

- (id)getInfoForDevice:(id)device andKey:(id)key
{
  v21 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  keyCopy = key;
  if (!deviceCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      v11 = MEMORY[0x277D86220];
      v12 = "Invalid input.";
      v13 = 2;
LABEL_16:
      _os_log_impl(&dword_22E01A000, v11, OS_LOG_TYPE_DEFAULT, v12, &v19, v13);
    }

LABEL_17:
    name = 0;
    goto LABEL_27;
  }

  devType = [deviceCopy devType];
  if (devType != 2)
  {
    if (devType == 1)
    {
      mobileDeviceRef = [deviceCopy mobileDeviceRef];
      if (_logdev_mobdev_vtable_onceToken != -1)
      {
        dispatch_once(&_logdev_mobdev_vtable_onceToken, &__block_literal_global_3342);
      }

      v9 = &_logdev_mobdev_vtable_vtab;
      if (!_logdev_mobdev_vtable_valid)
      {
        v9 = 0;
      }

      mobdevtab = v9;
      if (_logdev_mobdev_vtable_valid)
      {
        name = off_27DA52A88(mobileDeviceRef, 0, keyCopy);
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134217984;
      devType2 = [deviceCopy devType];
      v11 = MEMORY[0x277D86220];
      v12 = "Unknown logging device type %ld";
      v13 = 12;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if ([keyCopy isEqualToString:@"DeviceName"])
  {
    simDev = [deviceCopy simDev];
    name = [simDev name];
  }

  else
  {
    if ([keyCopy isEqualToString:@"UniqueDeviceID"])
    {
      simDev = [deviceCopy simDev];
      uDID = [simDev UDID];
      uUIDString = [uDID UUIDString];
    }

    else
    {
      if ([keyCopy isEqualToString:@"ProductType"])
      {
        simDev = [deviceCopy simDev];
        deviceType = [simDev deviceType];
      }

      else
      {
        if (![keyCopy isEqualToString:@"ProductName"])
        {
          goto LABEL_17;
        }

        simDev = [deviceCopy simDev];
        deviceType = [simDev runtime];
      }

      uDID = deviceType;
      uUIDString = [deviceType name];
    }

    name = uUIDString;
  }

LABEL_27:

  return name;
}

- (void)setDeviceDelegate:(id)delegate
{
  v41 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  deviceSearchSession = self->_deviceSearchSession;
  if (deviceSearchSession)
  {
    if (_logdev_mobdev_vtable_onceToken != -1)
    {
      dispatch_once(&_logdev_mobdev_vtable_onceToken, &__block_literal_global_3342);
    }

    if (_logdev_mobdev_vtable_valid)
    {
      v6 = &_logdev_mobdev_vtable_vtab;
    }

    else
    {
      v6 = 0;
    }

    mobdevtab = v6;
    if (_logdev_mobdev_vtable_valid)
    {
      off_27DA52A98(deviceSearchSession);
    }

    self->_deviceSearchSession = 0;
  }

  objc_storeWeak(&self->_deviceDelegate, delegateCopy);
  if (delegateCopy)
  {
    selfCopy = self;
    if (_logdev_mobdev_vtable_onceToken != -1)
    {
      dispatch_once(&_logdev_mobdev_vtable_onceToken, &__block_literal_global_3342);
    }

    v8 = 0;
    if (_logdev_mobdev_vtable_valid)
    {
      v9 = &_logdev_mobdev_vtable_vtab;
    }

    else
    {
      v9 = 0;
    }

    mobdevtab = v9;
    if (_logdev_mobdev_vtable_valid)
    {
      *buf = 0;
      v10 = _os_trace_calloc_typed();
      *v10 = logdev_notification_callback;
      v10[1] = selfCopy;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v12 = Mutable;
        CFDictionarySetValue(Mutable, @"NotificationOptionSearchForPairedDevices", *MEMORY[0x277CBED28]);
        (*(mobdevtab + 104))(observation_callback, 0, 0, v10, buf, v12);
        CFRelease(v12);
        v8 = *buf;
      }

      else
      {
        free(v10);
        v8 = 0;
      }
    }

    self->_deviceSearchSession = v8;
    v13 = selfCopy;
    if (watchForSims_onceToken != -1)
    {
      dispatch_once(&watchForSims_onceToken, &__block_literal_global_177);
    }

    if (watchForSims_SimServiceContextClass && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v14 = objc_autoreleasePoolPush();
      v39 = 0;
      v15 = [watchForSims_SimServiceContextClass sharedServiceContextForDeveloperDir:0 error:&v39];
      v16 = v39;
      v17 = v16;
      if (v15)
      {
        v38 = v16;
        v18 = [v15 defaultDeviceSetWithError:&v38];
        v19 = v38;

        if (v18)
        {
          context = v14;
          v20 = dispatch_get_global_queue(17, 0);
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __watchForSims_block_invoke_2;
          v36[3] = &unk_2787ADCB0;
          v21 = v13;
          v37 = v21;
          [v18 registerNotificationHandlerOnQueue:v20 handler:v36];

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          devices = [v18 devices];
          v23 = [devices countByEnumeratingWithState:&v32 objects:buf count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v33;
            do
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v33 != v25)
                {
                  objc_enumerationMutation(devices);
                }

                _simDeviceUpdate(*(*(&v32 + 1) + 8 * i), v21);
              }

              v24 = [devices countByEnumeratingWithState:&v32 objects:buf count:16];
            }

            while (v24);
          }

          v14 = context;
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          localizedDescription = [v19 localizedDescription];
          uTF8String = [localizedDescription UTF8String];
          *buf = 136315138;
          *&buf[4] = uTF8String;
          _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "watchForSims error: %s", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          localizedDescription2 = [v17 localizedDescription];
          uTF8String2 = [localizedDescription2 UTF8String];
          *buf = 136315138;
          *&buf[4] = uTF8String2;
          _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "watchForSims error: %s", buf, 0xCu);
        }

        v19 = v17;
      }

      objc_autoreleasePoolPop(v14);
    }
  }
}

- (void)stopRemote
{
  v12 = *MEMORY[0x277D85DE8];
  devType = [(OSLogDevice *)self->_device devType];
  if (devType != 2)
  {
    if (devType == 1)
    {
      obj = self;
      objc_sync_enter(obj);
      v4 = obj;
      deviceEventSession = obj->_deviceEventSession;
      if (deviceEventSession)
      {
        if (_logdev_mobdev_vtable_onceToken != -1)
        {
          v8 = obj->_deviceEventSession;
          dispatch_once(&_logdev_mobdev_vtable_onceToken, &__block_literal_global_3342);
          v4 = obj;
          deviceEventSession = v8;
        }

        v6 = &_logdev_mobdev_vtable_vtab;
        if (!_logdev_mobdev_vtable_valid)
        {
          v6 = 0;
        }

        mobdevtab = v6;
        if (_logdev_mobdev_vtable_valid)
        {
          OTRCancelAndFreeActivityStream(deviceEventSession);
          v4 = obj;
        }

        v4->_deviceEventSession = 0;
      }

      objc_sync_exit(v4);
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      device = self->_device;
      *buf = 138412290;
      v11 = device;
      _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unknown logging device type %@", buf, 0xCu);
    }
  }
}

- (void)stopLocal
{
  if (stopLocal_onceToken != -1)
  {
    dispatch_once(&stopLocal_onceToken, &__block_literal_global_331);
  }

  os_unfair_lock_lock(&stopLocal_stop_lock);
  stream = self->_stream;
  if (stream)
  {
    *(stream + 20) = 89;
    xpc_connection_cancel(*(stream + 2));
    xpc_release(*(stream + 2));
    self->_stream = 0;
  }

  os_unfair_lock_unlock(&stopLocal_stop_lock);
}

- (void)stop
{
  if (self->_device)
  {
    [(OSActivityStream *)self stopRemote];
  }

  else
  {
    [(OSActivityStream *)self stopLocal];
  }
}

- (void)startLocal
{
  v46 = *MEMORY[0x277D85DE8];
  options = self->_options;
  if ((options & 4) != 0)
  {
    array = 0;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __30__OSActivityStream_startLocal__block_invoke;
  aBlock[3] = &unk_2787ADC60;
  aBlock[4] = self;
  v5 = array;
  v43 = v5;
  v6 = _Block_copy(aBlock);
  v7 = options & 0x100;
  if ((options & 0x200) != 0)
  {
    v7 = 288;
  }

  v8 = options & 1 | (4 * ((options >> 1) & 1)) | v7 | (options >> 31 << 7);
  device = self->_device;
  if (device && [(OSLogDevice *)device devType]== 2)
  {
    v10 = [(OSLogDevice *)self->_device uid];
    self->_stream = os_activity_stream_for_simulator([v10 UTF8String], v8, v6);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = self->_pids;
  v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v11);
        }

        stream = self->_stream;
        intValue = [*(*(&v38 + 1) + 8 * i) intValue];
        if (stream)
        {
          os_activity_stream_add_pid(stream, intValue);
        }

        else
        {
          self->_stream = os_activity_stream_for_pid(intValue, v8, v6);
        }
      }

      v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v13);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = self->_uids;
  v19 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v35;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = self->_stream;
        unsignedIntValue = [*(*(&v34 + 1) + 8 * j) unsignedIntValue];
        if (v23)
        {
          os_activity_stream_add_uid(v23, unsignedIntValue);
        }

        else
        {
          self->_stream = os_activity_stream_for_uid(unsignedIntValue, v8, v6);
        }
      }

      v20 = [(NSMutableSet *)v18 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v20);
  }

  v25 = self->_stream;
  if (!v25)
  {
    v25 = os_activity_stream_for_pid(0xFFFFFFFF, v8, v6);
    self->_stream = v25;
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __30__OSActivityStream_startLocal__block_invoke_2;
  v33[3] = &unk_2787ADC88;
  v33[4] = self;
  *(v25 + 8) = _Block_copy(v33);
  *(self->_stream + 16) |= LODWORD(self->_eventFilter);
  data = [(_OSLogStreamFilter *)self->_streamFilter data];
  v27 = data;
  v28 = self->_stream;
  if (data)
  {
    bytes = [data bytes];
    v30 = [v27 length];
    v31 = v28;
    v32 = bytes;
  }

  else
  {
    v31 = v28;
    v32 = 0;
    v30 = 0;
  }

  _os_activity_stream_resume_with_filter(v31, v32, v30);
}

uint64_t __30__OSActivityStream_startLocal__block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    v8 = 1;
    if (!a3)
    {
      return v8;
    }

    goto LABEL_9;
  }

  v5 = [OSActivityEvent activityEventFromStreamEntry:a2];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = *(*(a1 + 32) + 96);
  if (v6)
  {
    if (([v6 evaluateWithObject:v5] & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    [v7 addObject:v5];
LABEL_7:
    v8 = 1;
    goto LABEL_8;
  }

  v8 = [*(a1 + 32) streamEvent:v5 error:0];
LABEL_8:

  if (a3)
  {
LABEL_9:
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:a3 userInfo:0];
    v8 = [*(a1 + 32) streamEvent:0 error:v9] & v8;
  }

  return v8;
}

uint64_t __30__OSActivityStream_startLocal__block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  switch(a3)
  {
    case 3:
      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:5 userInfo:0];
      [*(a1 + 32) streamEvent:0 error:v6];
      [*(a1 + 32) stop];

      break;
    case 2:
      v10 = WeakRetained;
      if (objc_opt_respondsToSelector())
      {
        [v10 streamDidStop:*(a1 + 32)];
      }

      else
      {
        v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:89 userInfo:0];
        [*(a1 + 32) streamEvent:0 error:v7];
      }

      [*(a1 + 32) stop];
      break;
    case 1:
      v9 = WeakRetained;
      if (objc_opt_respondsToSelector())
      {
        [v9 streamDidStart:*(a1 + 32)];
      }

      break;
  }

  return MEMORY[0x2821F97C8]();
}

- (void)startRemote
{
  v58 = *MEMORY[0x277D85DE8];
  devType = [(OSLogDevice *)self->_device devType];
  if (devType == 2)
  {

    [(OSActivityStream *)self startLocal];
  }

  else
  {
    if (devType == 1)
    {
      mobileDeviceRef = [(OSLogDevice *)self->_device mobileDeviceRef];
      selfCopy = self;
      if (_logdev_mobdev_vtable_onceToken != -1)
      {
        dispatch_once(&_logdev_mobdev_vtable_onceToken, &__block_literal_global_3342);
      }

      v6 = &_logdev_mobdev_vtable_vtab;
      if (!_logdev_mobdev_vtable_valid)
      {
        v6 = 0;
      }

      mobdevtab = v6;
      if (!_logdev_mobdev_vtable_valid)
      {
        goto LABEL_10;
      }

      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 0x40000000;
      v39[2] = __logdev_stream_events_block_invoke;
      v39[3] = &__block_descriptor_tmp_3375;
      v39[4] = logdev_message_callback;
      v39[5] = selfCopy;
      v44 = 0xFFFF;
      valuePtr = -1;
      v43 = 60;
      v42 = 0;
      if (_CopyOTRServiceConnectionForDevice(mobileDeviceRef, &v42, @"com.apple.os_trace_relay"))
      {
        if (_CopyOTRServiceConnectionForDevice(mobileDeviceRef, &v42, @"com.apple.syslog_relay"))
        {
LABEL_10:
          v7 = 0;
LABEL_53:
          selfCopy->_deviceEventSession = v7;
          return;
        }

        v9 = 0;
        v10 = 0;
        v11 = 0;
        v13 = v42;
        goto LABEL_23;
      }

      v9 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      v10 = CFNumberCreate(0, kCFNumberIntType, &v44);
      v11 = CFNumberCreate(0, kCFNumberIntType, &v43);
      keys[0] = xmmword_2787AEC50;
      keys[1] = *off_2787AEC60;
      values[0] = @"StartActivity";
      values[1] = v9;
      values[2] = v10;
      values[3] = v11;
      v12 = CFDictionaryCreate(0, keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v13 = v42;
      v14 = (*(mobdevtab + 72))(v42, v12, 200, 0);
      if (v14)
      {
        if (v14 == -402653139)
        {
          if (v13)
          {
            (*(mobdevtab + 88))(v13);
            CFRelease(v13);
            v42 = 0;
          }

          v15 = _CopyOTRServiceConnectionForDevice(mobileDeviceRef, &v42, @"com.apple.syslog_relay");
          v13 = v42;
          if (!v15)
          {
LABEL_23:
            v46[0] = 0;
            v46[1] = v46;
            v46[2] = 0x2000000000;
            v47 = 1;
            v16 = dispatch_queue_create("com.apple.os_trace_relay.queue", MEMORY[0x277D85CD8]);
            v17 = (*(mobdevtab + 80))(v13);
            v18 = dispatch_source_create(MEMORY[0x277D85D28], v17, 0, v16);
            v7 = _os_trace_calloc_typed();
            *v7 = v13;
            v7[1] = v18;
            *&buf = MEMORY[0x277D85DD0];
            *(&buf + 1) = 0x40000000;
            v52 = __OTRStartLegacyStreaming_block_invoke;
            v53 = &unk_2787AECC8;
            v56 = v18;
            v57 = v13;
            v54 = v39;
            v55 = v46;
            dispatch_source_set_event_handler(v18, &buf);
            v19 = dispatch_semaphore_create(0);
            v7[3] = v19;
            if (v19)
            {
              v20 = v7[1];
              handler[0] = MEMORY[0x277D85DD0];
              handler[1] = 0x40000000;
              handler[2] = __OTRStartLegacyStreaming_block_invoke_2;
              handler[3] = &unk_2787AECF0;
              handler[4] = v39;
              handler[5] = v7;
              dispatch_source_set_cancel_handler(v20, handler);
              dispatch_activate(v18);
              _Block_object_dispose(v46, 8);
LABEL_45:
              if (v9)
              {
                CFRelease(v9);
              }

              if (v10)
              {
                CFRelease(v10);
              }

              if (v11)
              {
                CFRelease(v11);
              }

              if (v7)
              {
                signal(2, 1);
                global_queue = dispatch_get_global_queue(21, 0);
                v30 = dispatch_source_create(MEMORY[0x277D85D30], 2uLL, 0, global_queue);
                v7[2] = v30;
                *&buf = MEMORY[0x277D85DD0];
                *(&buf + 1) = 0x40000000;
                v52 = __logdev_stream_events_block_invoke_2;
                v53 = &__block_descriptor_tmp_4;
                v54 = v7;
                dispatch_source_set_event_handler(v30, &buf);
                dispatch_activate(v30);
              }

              goto LABEL_53;
            }

            free(v7);
            _Block_object_dispose(v46, 8);
          }
        }

LABEL_40:
        v27 = 0;
        goto LABEL_41;
      }

      CFRelease(v12);
      LOBYTE(v46[0]) = 0;
      *&buf = 0;
      if ((*(mobdevtab + 8))(v13, v46, 1) == 1)
      {
        v21 = LOBYTE(v46[0]);
        if (LOBYTE(v46[0]) != 1)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_38;
          }

          LODWORD(handler[0]) = 67109120;
          HIDWORD(handler[0]) = v21;
          v24 = MEMORY[0x277D86220];
          v25 = "Got incorrect response type: %hhu";
          goto LABEL_36;
        }

        v22 = (*(mobdevtab + 16))(v13, &buf, 0, 0);
        if (v22)
        {
          v23 = v22;
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_38;
          }

          LODWORD(handler[0]) = 67109120;
          HIDWORD(handler[0]) = v23;
          v24 = MEMORY[0x277D86220];
          v25 = "Failed to receive response: %x";
LABEL_36:
          v26 = 8;
          goto LABEL_37;
        }

        if (buf)
        {
          TypeID = CFDictionaryGetTypeID();
          if (TypeID == CFGetTypeID(buf))
          {
            v27 = buf;
            if (buf)
            {
              Value = CFDictionaryGetValue(buf, @"Status");
              if (CFEqual(Value, @"RequestSuccessful"))
              {
                v33 = (*(mobdevtab + 80))(v13);
                if (v33 != -1)
                {
                  v34 = v33;
                  v35 = _os_trace_calloc_typed();
                  *v35 = v13;
                  v28 = v35;
                  v36 = dispatch_queue_create("com.apple.os_trace_relay_client", 0);
                  v28[3] = dispatch_semaphore_create(0);
                  v37 = dispatch_source_create(MEMORY[0x277D85D28], v34, 0, v36);
                  v28[1] = v37;
                  v41[0] = MEMORY[0x277D85DD0];
                  v41[1] = 0x40000000;
                  v41[2] = __OTRCreateActivityStreamForPID_block_invoke;
                  v41[3] = &unk_2787AEC78;
                  v41[4] = v39;
                  v41[5] = v28;
                  dispatch_source_set_event_handler(v37, v41);
                  v38 = v28[1];
                  v40[0] = MEMORY[0x277D85DD0];
                  v40[1] = 0x40000000;
                  v40[2] = __OTRCreateActivityStreamForPID_block_invoke_2;
                  v40[3] = &unk_2787AECA0;
                  v40[4] = v39;
                  v40[5] = v28;
                  dispatch_source_set_cancel_handler(v38, v40);
                  dispatch_activate(v28[1]);
                  if (v36)
                  {
                    dispatch_release(v36);
                  }

LABEL_44:
                  CFRelease(v27);
                  v7 = v28;
                  goto LABEL_45;
                }
              }

LABEL_41:
              if (v13)
              {
                (*(mobdevtab + 88))(v13);
                CFRelease(v13);
                v42 = 0;
              }

              v28 = 0;
              v7 = 0;
              if (!v27)
              {
                goto LABEL_45;
              }

              goto LABEL_44;
            }

            goto LABEL_40;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
LABEL_38:
            if (buf)
            {
              CFRelease(buf);
            }

            goto LABEL_40;
          }

          LOWORD(handler[0]) = 0;
          v24 = MEMORY[0x277D86220];
          v25 = "Incorrect response type";
        }

        else
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_40;
          }

          LOWORD(handler[0]) = 0;
          v24 = MEMORY[0x277D86220];
          v25 = "Got NULL response dictionary";
        }
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_38;
        }

        LOWORD(handler[0]) = 0;
        v24 = MEMORY[0x277D86220];
        v25 = "Failed to get message type response";
      }

      v26 = 2;
LABEL_37:
      _os_log_impl(&dword_22E01A000, v24, OS_LOG_TYPE_DEFAULT, v25, handler, v26);
      goto LABEL_38;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      device = self->_device;
      LODWORD(buf) = 138412290;
      *(&buf + 4) = device;
      _os_log_impl(&dword_22E01A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Unknown logging device type %@", &buf, 0xCu);
    }
  }
}

- (BOOL)streamEvent:(id)event error:(id)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = WeakRetained;
  if (errorCopy)
  {
    if (self->_delegateHasDidFail)
    {
      [WeakRetained streamDidFail:self error:errorCopy];
LABEL_14:
      v15 = 1;
      goto LABEL_17;
    }

    if (!self->_delegateStreamWithError)
    {
      goto LABEL_14;
    }

    selfCopy2 = self;
    v13 = errorCopy;
    goto LABEL_9;
  }

  if (self->_delegateStreamErrorLess)
  {
    if (!eventCopy)
    {
      v14 = [WeakRetained activityStream:self results:0];
      goto LABEL_16;
    }

    v18[0] = eventCopy;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v11 = [v9 activityStream:self results:v10];
  }

  else
  {
    if (!self->_delegateStreamWithError)
    {
      goto LABEL_14;
    }

    if (!eventCopy)
    {
      selfCopy2 = self;
      v13 = 0;
LABEL_9:
      v14 = [WeakRetained activityStream:selfCopy2 results:0 error:v13];
LABEL_16:
      v15 = v14;
      goto LABEL_17;
    }

    v17 = eventCopy;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    v11 = [v9 activityStream:self results:v10 error:0];
  }

  v15 = v11;

LABEL_17:
  return v15;
}

- (void)start
{
  if (self->_device)
  {
    [(OSActivityStream *)self startRemote];
  }

  else
  {
    [(OSActivityStream *)self startLocal];
  }
}

- (void)setPredicate:(id)predicate
{
  predicateCopy = predicate;
  if (predicateCopy)
  {
    v4 = [[_OSLogPredicateMapper alloc] initWithPredicate:predicateCopy andValidate:0];
    v5 = [_OSLogLegacyPredicateMapper alloc];
    mappedPredicate = [(_OSLogPredicateMapper *)v4 mappedPredicate];
    v7 = [(_OSLogPredicateMapper *)v5 initWithPredicate:mappedPredicate];

    mappedPredicate2 = [(_OSLogPredicateMapper *)v7 mappedPredicate];

    if (!mappedPredicate2)
    {
      v13 = MEMORY[0x277CBEAD8];
      validationErrors = [(_OSLogPredicateMapper *)v7 validationErrors];
      v15 = [validationErrors componentsJoinedByString:@"\n"];
      v16 = [v13 exceptionWithName:@"OSLogInvalidPredicateException" reason:v15 userInfo:0];

      objc_exception_throw(v16);
    }

    mappedPredicate3 = [(_OSLogPredicateMapper *)v7 mappedPredicate];
    predicate = self->_predicate;
    self->_predicate = mappedPredicate3;

    if (([(_OSLogPredicateMapper *)v4 flags]& 1) != 0)
    {
      self->_options |= 0x300uLL;
    }

    if (([(_OSLogPredicateMapper *)v4 flags]& 2) != 0)
    {
      self->_options |= 0x100uLL;
    }
  }

  else
  {
    v4 = self->_predicate;
    self->_predicate = 0;
  }

  v11 = [[_OSLogStreamFilter alloc] initWithPredicate:self->_predicate];
  streamFilter = self->_streamFilter;
  self->_streamFilter = v11;
}

- (void)addUserID:(unsigned int)d
{
  uids = self->_uids;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*&d];
  [(NSMutableSet *)uids addObject:v4];
}

- (void)addProcessID:(int)d
{
  pids = self->_pids;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&d];
  [(NSMutableSet *)pids addObject:v4];
}

- (unint64_t)events
{
  if ((self->_eventFilter & 2) != 0)
  {
    return ((self->_eventFilter << 63) >> 63) & 0x203 | self->_eventFilter & 0x400 | 0x300;
  }

  else
  {
    return ((self->_eventFilter << 63) >> 63) & 0x203 | self->_eventFilter & 0x400;
  }
}

- (void)setEvents:(unint64_t)events
{
  v3 = (events & 0x203) != 0;
  if ((events & 0x400) != 0)
  {
    v3 = 4;
  }

  if ((events & 0x300) != 0)
  {
    v3 = 2;
  }

  if (v3)
  {
    self->_eventFilter = v3;
  }
}

- (void)dealloc
{
  stream = self->_stream;
  if (stream)
  {
    *(stream + 20) = 89;
    xpc_connection_cancel(*(stream + 2));
    xpc_release(*(stream + 2));
  }

  v4.receiver = self;
  v4.super_class = OSActivityStream;
  [(OSActivityStream *)&v4 dealloc];
}

- (OSActivityStream)init
{
  v8.receiver = self;
  v8.super_class = OSActivityStream;
  v2 = [(OSActivityStream *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB58] set];
    pids = v2->_pids;
    v2->_pids = v3;

    v5 = [MEMORY[0x277CBEB58] set];
    uids = v2->_uids;
    v2->_uids = v5;

    *&v2->_options = xmmword_22E0816B0;
    v2->_deviceSearchSession = 0;
    v2->_deviceEventSession = 0;
  }

  return v2;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  self->_delegateHasDidFail = objc_opt_respondsToSelector() & 1;
  if (objc_opt_respondsToSelector())
  {
    *&self->_delegateStreamErrorLess = 1;
  }

  else
  {
    v4 = objc_opt_respondsToSelector();
    self->_delegateStreamErrorLess = 0;
    self->_delegateStreamWithError = (v4 & 1) != 0;
  }

  objc_storeWeak(&self->_delegate, obj);
}

@end