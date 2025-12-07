@interface PointerBridge
- (BOOL)decodeFromMap:(void *)map;
- (BOOL)handleHSDecode:(void *)decode;
- (BOOL)handleHSEncode:(void *)encode;
- (NSDictionary)debug;
- (PointerBridge)initWithService:(unsigned int)service settings:(id)settings;
- (void)_handleGetDebugEvent:(id)event;
- (void)_handleHSTNotificationEvent:(id)event;
- (void)_handleResetEvent:(id)event;
- (void)dealloc;
- (void)dispatch:(id)dispatch;
- (void)dispatchSettingsEventWithFlush:(BOOL)flush;
- (void)encodeToMap:(void *)map;
- (void)handleActivateEvent:(id)event;
- (void)handleConsume:(id)consume;
- (void)handleGetPropertyEvent:(id)event;
- (void)handleHSTEvent:(id)event;
- (void)handleSetPropertyEvent:(id)event;
- (void)setQueue:(id)queue;
- (void)updatePreference:(id)preference to:(id)to;
@end

@implementation PointerBridge

- (PointerBridge)initWithService:(unsigned int)service settings:(id)settings
{
  settingsCopy = settings;
  v14.receiver = self;
  v14.super_class = PointerBridge;
  v8 = [(HSStage *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_service = service;
    v8->_activated = 0;
    objc_storeStrong(&v8->_settings, settings);
    v10 = objc_opt_new();
    coreAccessoryManager = v9->_coreAccessoryManager;
    v9->_coreAccessoryManager = v10;

    v12 = v9;
  }

  return v9;
}

- (void)dealloc
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    [(TrackpadActuatorStage *)v4 dealloc];
  }

  v5.receiver = self;
  v5.super_class = PointerBridge;
  [(HSStage *)&v5 dealloc];
}

- (void)handleConsume:(id)consume
{
  consumeCopy = consume;
  [(PointerBridge *)self setSignpostBeginTime:mach_continuous_time()];
  [(PointerBridge *)self handleHSTEvent:consumeCopy];
}

- (void)handleHSTEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = eventCopy;
    v5 = eventCopy;
    v6 = v4;
  }

  else
  {
    v6 = 0;
    v5 = eventCopy;
  }

  if (v6)
  {
    [(PointerBridge *)self handleSetPropertyEvent:eventCopy];
  }

  else
  {
    v7 = eventCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      [(PointerBridge *)self handleGetPropertyEvent:v7];
    }

    else
    {
      v9 = v7;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        [(PointerBridge *)self _handleResetEvent:v9];
      }

      else
      {
        v11 = v9;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        if (v12)
        {
          [(PointerBridge *)self handleActivateEvent:v11];
        }

        else
        {
          v13 = HSUtil::DynamicCast<HSTGetDebugStateEvent>(v11);

          if (v13)
          {
            [(PointerBridge *)self _handleGetDebugEvent:v11];
          }

          else
          {
            v14 = HSUtil::DynamicCast<HSTNotificationEvent>(v11);

            if (v14)
            {
              [(PointerBridge *)self _handleHSTNotificationEvent:v11];
            }

            else
            {
              [(PointerBridge *)self dispatch:v11];
            }
          }
        }
      }
    }
  }
}

- (void)handleSetPropertyEvent:(id)event
{
  eventCopy = event;
  v4 = [NSString stringWithUTF8String:?];
  v5 = eventCopy[5];
  if ([v4 isEqualToString:@"MTEventSource"])
  {
    v6 = eventCopy[5];
    eventCopy[5] = &__kCFBooleanTrue;
  }

  if ([v4 isEqualToString:@"SerialNumber"])
  {
    coreAccessoryManager = [(PointerBridge *)self coreAccessoryManager];
    [coreAccessoryManager setSerialNumber:v5];
  }

  else
  {
    if (![v4 isEqualToString:@"bcdVersion"])
    {
      goto LABEL_8;
    }

    coreAccessoryManager = [(PointerBridge *)self coreAccessoryManager];
    [coreAccessoryManager setDriverFirmwareVersion:v5];
  }

LABEL_8:
  [(PointerBridge *)self updatePreference:v4 to:eventCopy[5]];
  [(PointerBridge *)self dispatch:eventCopy];
}

- (void)handleGetPropertyEvent:(id)event
{
  eventCopy = event;
  v4 = [NSString stringWithUTF8String:?];
  settings = [(PointerBridge *)self settings];
  preferences = [settings preferences];
  v7 = [preferences objectForKeyedSubscript:v4];

  if (v7)
  {
    objc_storeStrong(eventCopy + 5, v7);
  }

  else
  {
    [(PointerBridge *)self dispatch:eventCopy];
  }
}

- (void)_handleResetEvent:(id)event
{
  eventCopy = event;
  [(PointerBridge *)self setActivated:0];
  [(PointerBridge *)self dispatch:eventCopy];
}

- (void)handleActivateEvent:(id)event
{
  eventCopy = event;
  [(PointerBridge *)self setActivated:1];
  [(PointerBridge *)self dispatchSettingsEventWithFlush:1];
  [(PointerBridge *)self dispatch:eventCopy];
}

- (void)_handleGetDebugEvent:(id)event
{
  eventCopy = event;
  eventCopy[16] = 1;
  v7 = eventCopy;
  v5 = *(eventCopy + 3);
  debug = [(PointerBridge *)self debug];
  [v5 addObject:debug];

  [(PointerBridge *)self dispatch:v7];
}

- (void)_handleHSTNotificationEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy notification] == 12)
  {
    CFProperty = IORegistryEntryCreateCFProperty([(PointerBridge *)self service], @"ParserDisabled", kCFAllocatorDefault, 0);
    v6 = CFProperty;
    if (CFProperty)
    {
      bOOLValue = [CFProperty BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    settings = [(PointerBridge *)self settings];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = @"TrackpadExternallyDisabled";
    }

    else
    {
      settings2 = [(PointerBridge *)self settings];
      objc_opt_class();
      v12 = objc_opt_isKindOfClass();

      if ((v12 & 1) == 0)
      {
LABEL_14:

        goto LABEL_15;
      }

      v10 = @"MouseExternallyDisabled";
    }

    v13 = [NSNumber numberWithBool:bOOLValue];
    [(PointerBridge *)self updatePreference:v10 to:v13];

    v16 = MTLoggingPlugin(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = "enabled";
      *v18 = 136315906;
      *&v18[4] = "";
      if (bOOLValue)
      {
        v17 = "disabled";
      }

      *&v18[12] = 2080;
      *&v18[14] = "";
      v19 = 2080;
      v20 = "[PointerBridge _handleHSTNotificationEvent:]";
      v21 = 2080;
      v22 = v17;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Pointer parser was externally %s", v18, 0x2Au);
    }

    goto LABEL_14;
  }

LABEL_15:
  [(PointerBridge *)self dispatch:eventCopy, *v18, *&v18[8]];
}

- (void)dispatch:(id)dispatch
{
  dispatchCopy = dispatch;
  v6 = MTLoggingPlugin(dispatchCopy, v5);
  if (os_signpost_enabled(v6))
  {
    *buf = 134349314;
    signpostBeginTime = [(PointerBridge *)self signpostBeginTime];
    v10 = 2080;
    ClassName = object_getClassName(dispatchCopy);
    _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TrackpadBridge", "%{public, signpost.description:begin_time}llu event=%s", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = PointerBridge;
  [(HSStage *)&v7 handleConsume:dispatchCopy];
  [(PointerBridge *)self setSignpostBeginTime:mach_continuous_time()];
}

- (void)updatePreference:(id)preference to:(id)to
{
  preferenceCopy = preference;
  toCopy = to;
  settings = [(PointerBridge *)self settings];
  v8 = [settings updatePreferenceKey:preferenceCopy to:toCopy];

  if (v8)
  {
    [(PointerBridge *)self setSettings:v8];
    -[PointerBridge dispatchSettingsEventWithFlush:](self, "dispatchSettingsEventWithFlush:", [preferenceCopy isEqualToString:@"NotificationCenterActive"] ^ 1);
  }
}

- (void)dispatchSettingsEventWithFlush:(BOOL)flush
{
  if ([(PointerBridge *)self activated])
  {
    settings = [(PointerBridge *)self settings];

    if (settings)
    {
      v8 = MTLoggingPlugin(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        settings2 = [(PointerBridge *)self settings];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v15 = 136315906;
        v16 = "[Debug] ";
        v17 = 2080;
        v18 = "";
        v19 = 2080;
        v20 = "[PointerBridge dispatchSettingsEventWithFlush:]";
        v21 = 2112;
        v22 = v11;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEBUG, "[HID] [MT] %s%s%s Dispatching new %@ to pipeline", &v15, 0x2Au);
      }

      v12 = objc_opt_new();
      settings3 = [(PointerBridge *)self settings];
      v14 = *(v12 + 8);
      *(v12 + 8) = settings3;

      *(v12 + 16) = flush;
      [(PointerBridge *)self dispatch:v12];
    }
  }
}

- (void)setQueue:(id)queue
{
  queueCopy = queue;
  objc_storeStrong(&self->_queue, queue);
  coreAccessoryManager = [(PointerBridge *)self coreAccessoryManager];
  [coreAccessoryManager setQueue:queueCopy];
}

- (NSDictionary)debug
{
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 setObject:v5 forKeyedSubscript:@"Stage"];

  settings = [(PointerBridge *)self settings];
  preferences = [settings preferences];
  [v3 setObject:preferences forKeyedSubscript:@"UserPreferences"];

  settings2 = [(PointerBridge *)self settings];
  debug = [settings2 debug];
  [v3 setObject:debug forKeyedSubscript:@"Settings"];

  coreAccessoryManager = [(PointerBridge *)self coreAccessoryManager];

  if (coreAccessoryManager)
  {
    coreAccessoryManager2 = [(PointerBridge *)self coreAccessoryManager];
    debug2 = [coreAccessoryManager2 debug];
    [v3 setObject:debug2 forKeyedSubscript:@"CoreAccessoryManager"];
  }

  v13 = [v3 copy];

  return v13;
}

- (void)encodeToMap:(void *)map
{
  v4 = HSUtil::CoderKey::Literal<(char)115,(char)101,(char)116,(char)116,(char)105,(char)110,(char)103,(char)115>::Key;
  settings = [(PointerBridge *)self settings];
  HSUtil::Encoder::encodeHSCodable(map, v4, settings);
}

- (BOOL)decodeFromMap:(void *)map
{
  v4 = HSUtil::CoderKey::Literal<(char)115,(char)101,(char)116,(char)116,(char)105,(char)110,(char)103,(char)115>::Key;
  settings = [(PointerBridge *)self settings];
  HSUtil::Decoder::decodeHSCodable(map, v4, settings);

  return 1;
}

- (BOOL)handleHSEncode:(void *)encode
{
  if (!*encode)
  {
    *&v6 = *(encode + 17);
    DWORD2(v6) = 4;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](encode + 56, &v6);
    HSUtil::Encoder::_writeTokenValue32(encode, 0xEBu, 0);
  }

  [(PointerBridge *)self encodeToMap:encode];
  if (!*encode)
  {
    HSUtil::Encoder::_encodeContainerStop(encode);
  }

  return 1;
}

- (BOOL)handleHSDecode:(void *)decode
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v5;
  v14 = v5;
  v11 = v5;
  v12 = v5;
  v10 = v5;
  HSUtil::Decoder::decodeMap(&v10, decode);
  if (*decode)
  {
    memset(__b, 170, sizeof(__b));
    v6 = basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/Bridges/PointerBridge.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [PointerBridge handleHSDecode:v6];
    }

    v7 = 0;
  }

  else
  {
    v7 = [(PointerBridge *)self decodeFromMap:&v10];
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v8 = v11;
  *&v11 = 0;
  if (v8)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v8);
    operator delete();
  }

  return v7;
}

- (void)handleHSDecode:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = 136315906;
  v2 = "[PointerBridge handleHSDecode:]";
  v3 = 2080;
  v4 = a1;
  v5 = 2048;
  v6 = 272;
  v7 = 2080;
  v8 = "coder";
  _os_log_error_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_ERROR, "Assertion failed (%s @ %s:%ju): %s", &v1, 0x2Au);
}

@end