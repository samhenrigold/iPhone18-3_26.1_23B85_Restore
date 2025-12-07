@interface HSTSensingAlgs
- (BOOL)handleHSDecode:(void *)decode;
- (BOOL)handleHSEncode:(void *)encode;
- (HSTSensingAlgs)initWithConfig:(const HSTSensingAlgsConfig *)config;
- (HSTSensingAlgsConfig)config;
- (id)_handleSAFrame:(id)frame;
- (void)_handleCoreAnalytics:(id)analytics payload:(id)payload;
- (void)_handleDriverEvent:(id)event;
- (void)_handleEvents:(id)events;
- (void)_handleGetPropertyEvent:(id)event;
- (void)_handlePencilEvents:(id)events;
- (void)_handleResetRequest:(unsigned __int8)request;
- (void)_handleSetPropertyEvent:(id)event;
- (void)_handleStream:(id)stream;
- (void)_handleTimestampSyncEvent:(id)event;
- (void)handleConsume:(id)consume;
- (void)setConfig:(HSTSensingAlgsConfig *)config;
@end

@implementation HSTSensingAlgs

- (HSTSensingAlgs)initWithConfig:(const HSTSensingAlgsConfig *)config
{
  v44.receiver = self;
  v44.super_class = HSTSensingAlgs;
  v4 = [(HSStage *)&v44 init];
  v5 = v4;
  if (v4)
  {
    p_config = &v4->_config;
    *&v4->_config.maxPacketSize = *&config->maxPacketSize;
    objc_storeStrong(&v4->_config.frameworkString, config->frameworkString);
    v5->_config.device = config->device;
    frameworkString = v5->_config.frameworkString;
    if (frameworkString)
    {
      v8 = frameworkString;
    }

    else
    {
      v8 = @"SensingAlgsService.framework";
    }

    v10 = [NSString stringWithFormat:@"%@%@", @"/System/Library/PrivateFrameworks/", v8];
    v11 = [[NSBundle alloc] initWithPath:v10];
    load = [v11 load];
    if (load)
    {
      principalClass = [v11 principalClass];
      v15 = [principalClass conformsToProtocol:&OBJC_PROTOCOL___SASInterfaceProtocol];
      if (v15)
      {
        v17 = MTLoggingPlugin(v15, v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v46 = v10;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "HSTSensingAlgs: Correctly loaded %{public}@", buf, 0xCu);
        }

        objc_initWeak(buf, v5);
        v18 = [principalClass alloc];
        maxPacketSize = p_config->maxPacketSize;
        familyID = v5->_config.familyID;
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 3221225472;
        v42[2] = __33__HSTSensingAlgs_initWithConfig___block_invoke;
        v42[3] = &unk_10A9D0;
        objc_copyWeak(&v43, buf);
        v21 = [v18 initWithStreamSize:maxPacketSize platformId:familyID streamCallback:v42];
        planInterface = v5->_planInterface;
        v5->_planInterface = v21;

        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = __33__HSTSensingAlgs_initWithConfig___block_invoke_2;
        v40[3] = &unk_10A9F8;
        objc_copyWeak(&v41, buf);
        [(SASInterfaceProtocol *)v5->_planInterface setEventCallback:v40];
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = __33__HSTSensingAlgs_initWithConfig___block_invoke_3;
        v38[3] = &unk_10AA20;
        objc_copyWeak(&v39, buf);
        [(SASInterfaceProtocol *)v5->_planInterface setResetRequestCallback:v38];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = __33__HSTSensingAlgs_initWithConfig___block_invoke_4;
        v36[3] = &unk_10AA48;
        objc_copyWeak(&v37, buf);
        [(SASInterfaceProtocol *)v5->_planInterface setCoreAnalyticsCallback:v36];
        v23 = [NSString stringWithUTF8String:"@(#)PROGRAM:HSTPipeline  PROJECT:MultitouchSoftware-9110.1\n"];
        v24 = [v23 componentsSeparatedByString:@"PROJECT:"];

        if ([v24 count] >= 2)
        {
          v25 = v5->_planInterface;
          v26 = [v24 objectAtIndexedSubscript:1];
          [(SASInterfaceProtocol *)v25 addVersion:v26];
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_29;
        }

        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = __33__HSTSensingAlgs_initWithConfig___block_invoke_5;
        v34[3] = &unk_10A9F8;
        objc_copyWeak(&v35, buf);
        [(SASInterfaceProtocol *)v5->_planInterface setPencilEventCallback:v34];
        v27 = MTDeviceEnableWorkIntervalNotification();
        if (v27 == -536870201)
        {
          v29 = MTLoggingPlugin(v27, v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *v33 = 0;
            v30 = "Work interval notification unsupported";
            goto LABEL_25;
          }
        }

        else
        {
          if (v27)
          {
            v29 = MTLoggingPlugin(v27, v28);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              [HSTSensingAlgs initWithConfig:];
            }

            goto LABEL_28;
          }

          v29 = MTLoggingPlugin(v27, v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *v33 = 0;
            v30 = "Work interval notification enabled";
LABEL_25:
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, v30, v33, 2u);
          }
        }

LABEL_28:

        objc_destroyWeak(&v35);
LABEL_29:
        v9 = v5;

        objc_destroyWeak(&v37);
        objc_destroyWeak(&v39);
        objc_destroyWeak(&v41);
        objc_destroyWeak(&v43);
        objc_destroyWeak(buf);
        goto LABEL_30;
      }

      v31 = MTLoggingPlugin(v15, v16);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [HSTSensingAlgs initWithConfig:];
      }
    }

    else
    {
      v31 = MTLoggingPlugin(load, v13);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [HSTSensingAlgs initWithConfig:];
      }
    }

    v9 = 0;
LABEL_30:

    goto LABEL_31;
  }

  v9 = 0;
LABEL_31:

  return v9;
}

void __33__HSTSensingAlgs_initWithConfig___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleStream:v3];
}

void __33__HSTSensingAlgs_initWithConfig___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleEvents:v3];
}

void __33__HSTSensingAlgs_initWithConfig___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleResetRequest:a2];
}

void __33__HSTSensingAlgs_initWithConfig___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleCoreAnalytics:v6 payload:v5];
}

void __33__HSTSensingAlgs_initWithConfig___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePencilEvents:v3];
}

- (void)_handleEvents:(id)events
{
  eventsCopy = events;
  if ([eventsCopy count])
  {
    v5 = objc_opt_new();
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = eventsCopy;
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v7)
    {
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v15 = 0xAAAAAAAAAAAAAAAALL;
          v15 = *(*(&v11 + 1) + 8 * v9);
          std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v5 + 1, &v15);
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }

    v10.receiver = self;
    v10.super_class = HSTSensingAlgs;
    [(HSStage *)&v10 handleConsume:v5];
    MTDeviceNotifyWorkInterval();
  }
}

- (void)_handlePencilEvents:(id)events
{
  eventsCopy = events;
  if ([eventsCopy count])
  {
    v5 = objc_opt_new();
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = eventsCopy;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v16 = 0xAAAAAAAAAAAAAAAALL;
          v16 = *(*(&v12 + 1) + 8 * v9);
          std::vector<HIDEvent * {__strong}>::push_back[abi:ne200100](v5 + 1, &v16);
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }

    v10 = objc_opt_new();
    objc_storeStrong(v10 + 2, v5);
    v11.receiver = self;
    v11.super_class = HSTSensingAlgs;
    [(HSStage *)&v11 handleConsume:v10];
    MTDeviceNotifyWorkInterval();
  }
}

- (void)_handleStream:(id)stream
{
  streamCopy = stream;
  v6 = streamCopy;
  if (self->_filteredClients && [streamCopy length])
  {
    v7 = objc_opt_new();
    objc_storeStrong(v7 + 1, stream);
    v8.receiver = self;
    v8.super_class = HSTSensingAlgs;
    [(HSStage *)&v8 handleConsume:v7];
  }
}

- (void)_handleCoreAnalytics:(id)analytics payload:(id)payload
{
  analyticsCopy = analytics;
  payloadCopy = payload;
  v8 = [[HSTAnalyticsEvent alloc] initWithName:analyticsCopy payload:payloadCopy];
  v9.receiver = self;
  v9.super_class = HSTSensingAlgs;
  [(HSStage *)&v9 handleConsume:v8];
}

- (void)_handleResetRequest:(unsigned __int8)request
{
  __src = request;
  memset(v18, 170, sizeof(v18));
  v17 = 90;
  v12 = v18;
  v13 = xmmword_D8C70;
  v14 = 0xAAAAAAAAAA00AA00;
  v15 = 0;
  inited = SABinaryWriter::initHostRequest(&v12, 1, 1uLL, &__src);
  v5 = inited;
  v7 = MTLoggingPlugin(inited, v6);
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "FW SA Reset Request", buf, 2u);
    }

    v9 = [HSTSetReportEvent alloc];
    v8 = [(HSTSetReportEvent *)v9 initWithBuffer:&v17 length:*(&v13 + 1) + 1];
    v10.receiver = self;
    v10.super_class = HSTSensingAlgs;
    [(HSStage *)&v10 handleConsume:v8];
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [HSTSensingAlgs _handleResetRequest:];
  }
}

- (id)_handleSAFrame:(id)frame
{
  frameCopy = frame;
  if (!frameCopy)
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"HSTSensingAlgs.mm" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"frame"}];
  }

  v6 = HSTFrameParserTypes::ReportCast<HSTPipeline::FirmwareInterface::InputReport::SABinaryFrame>(frameCopy[1]);
  if (v6)
  {
    v8 = MTLoggingPlugin(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [HSTSensingAlgs _handleSAFrame:];
    }

    v9 = [(SASInterfaceProtocol *)self->_planInterface handleInputStream:frameCopy[1]];
    if ((v9 & 1) == 0)
    {
      v11 = MTLoggingPlugin(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [HSTSensingAlgs _handleSAFrame:];
      }
    }

    if (self->_filteredClients)
    {

      frameCopy = 0;
    }
  }

  v12 = frameCopy;

  return v12;
}

- (void)_handleDriverEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy notification] == 5)
  {
    v4 = 1;
  }

  else
  {
    if ([eventCopy notification] != 6)
    {
      goto LABEL_6;
    }

    v4 = 0;
  }

  self->_filteredClients = v4;
LABEL_6:
}

- (void)_handleSetPropertyEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  v6 = eventCopy + 16;
  v7 = eventCopy[39];
  if ((v7 & 0x80000000) == 0)
  {
    if (eventCopy[39] != 13)
    {
      if (eventCopy[39] != 15)
      {
        goto LABEL_34;
      }

      if (*v6 != 0x617A69746E617551 || *(eventCopy + 23) != 0x4950446E6F697461)
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

LABEL_17:
    v10 = *v6;
    v11 = *(v6 + 5);
    if (v10 != 0x7369447265766F48 || v11 != 0x64656C6261736944)
    {
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  if (*(eventCopy + 3) != 15 || (**v6 == 0x617A69746E617551 ? (v9 = *(*v6 + 7) == 0x4950446E6F697461) : (v9 = 0), !v9))
  {
    if (*(eventCopy + 3) != 13)
    {
      goto LABEL_34;
    }

    v6 = *v6;
    goto LABEL_17;
  }

LABEL_23:
  v13 = *(eventCopy + 5);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  quantizationDPI = self->_quantizationDPI;
  self->_quantizationDPI = v14;

  LOBYTE(v7) = v5[39];
LABEL_27:
  v16 = v5 + 16;
  if ((v7 & 0x80) != 0)
  {
    v16 = *v16;
  }

  v17 = [NSString stringWithUTF8String:v16];
  v18 = [(SASInterfaceProtocol *)self->_planInterface injectProperty:v17 value:*(v5 + 5)];
  if ((v18 & 1) == 0)
  {
    v20 = MTLoggingPlugin(v18, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [HSTSensingAlgs _handleSetPropertyEvent:];
    }
  }

LABEL_34:
}

- (void)_handleGetPropertyEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy + 16;
  v6 = eventCopy[39];
  if (v6 < 0)
  {
    if (*(eventCopy + 3) != 15)
    {
      goto LABEL_13;
    }

    v5 = *v5;
  }

  else if (v6 != 15)
  {
    goto LABEL_13;
  }

  v7 = *v5;
  v8 = *(v5 + 7);
  if (v7 == 0x617A69746E617551 && v8 == 0x4950446E6F697461)
  {
    quantizationDPI = self->_quantizationDPI;
    if (quantizationDPI)
    {
      v11 = eventCopy;
      objc_storeStrong(eventCopy + 5, quantizationDPI);
      eventCopy = v11;
    }
  }

LABEL_13:
}

- (void)_handleTimestampSyncEvent:(id)event
{
  eventCopy = event;
  deviceTimestampOffsetMs = [eventCopy deviceTimestampOffsetMs];
  planInterface = self->_planInterface;
  v7 = [NSNumber numberWithLongLong:deviceTimestampOffsetMs];
  LODWORD(planInterface) = [(SASInterfaceProtocol *)planInterface injectProperty:@"TimestampSync" value:v7];

  if (planInterface)
  {
    v10 = MTLoggingPlugin(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [HSTSensingAlgs _handleTimestampSyncEvent:];
    }
  }

  else
  {
    v10 = MTLoggingPlugin(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HSTSensingAlgs _handleTimestampSyncEvent:];
    }
  }
}

- (void)handleConsume:(id)consume
{
  consumeCopy = consume;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = consumeCopy;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = [(HSTSensingAlgs *)self _handleSAFrame:consumeCopy];

    v7 = v6;
  }

  else
  {
    v7 = consumeCopy;
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
      [(HSTSensingAlgs *)self _handleDriverEvent:v7];
    }

    else
    {
      v7 = v7;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v7;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        [(HSTSensingAlgs *)self _handleResetRequest:0];
      }

      else
      {
        v7 = v7;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v7;
        }

        else
        {
          v10 = 0;
        }

        if (v10)
        {
          [(HSTSensingAlgs *)self _handleSetPropertyEvent:v7];
        }

        else
        {
          v11 = HSUtil::DynamicCast<HSTGetPropertyEvent>(v7);

          if (v11)
          {
            [(HSTSensingAlgs *)self _handleGetPropertyEvent:v7];
          }

          else
          {
            v12 = HSUtil::DynamicCast<HSTTimestampSyncEvent>(v7);

            if (v12)
            {
              [(HSTSensingAlgs *)self _handleTimestampSyncEvent:v7];
            }
          }
        }
      }
    }
  }

  if (v7)
  {
    v13.receiver = self;
    v13.super_class = HSTSensingAlgs;
    [(HSStage *)&v13 handleConsume:v7];
  }
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

  HSUtil::Encoder::encodeUInt(encode, HSUtil::CoderKey::Literal<(char)109,(char)97,(char)120,(char)80,(char)97,(char)99,(char)107,(char)101,(char)116,(char)83,(char)105,(char)122,(char)101>::Key, self->_config.maxPacketSize);
  if (!*encode)
  {
    HSUtil::Encoder::_encodeContainerStop(encode);
  }

  return 1;
}

- (BOOL)handleHSDecode:(void *)decode
{
  self->_config.maxPacketSize = HSUtil::Decoder::decodeUInt(decode, HSUtil::CoderKey::Literal<(char)109,(char)97,(char)120,(char)80,(char)97,(char)99,(char)107,(char)101,(char)116,(char)83,(char)105,(char)122,(char)101>::Key);
  v4 = *decode;
  if (*decode)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/HIDSensingTouch/HSTPipeline/HSTSensingAlgs.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [HSTSensingAlgs handleHSDecode:];
    }
  }

  return v4 == 0;
}

- (HSTSensingAlgsConfig)config
{
  p_config = &self->_config;
  *&retstr->maxPacketSize = *&self->_config.maxPacketSize;
  result = self->_config.frameworkString;
  device = p_config->device;
  retstr->frameworkString = result;
  retstr->device = device;
  return result;
}

- (void)setConfig:(HSTSensingAlgsConfig *)config
{
  p_config = &self->_config;
  *&self->_config.maxPacketSize = *&config->maxPacketSize;
  objc_storeStrong(&self->_config.frameworkString, config->frameworkString);
  p_config->device = config->device;
  frameworkString = config->frameworkString;
}

- (void)initWithConfig:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)initWithConfig:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleResetRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleSAFrame:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_handleSetPropertyEvent:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "Error injecting property %{public}@=%{public}@ in SA", v2, 0x16u);
}

- (void)_handleTimestampSyncEvent:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end