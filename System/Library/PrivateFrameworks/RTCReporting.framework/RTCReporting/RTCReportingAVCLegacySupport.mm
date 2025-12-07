@interface RTCReportingAVCLegacySupport
- (RTCReportingAVCLegacySupport)init;
- (void)dealloc;
- (void)invokeAWDAdaptorForPayload:(id)payload category:(unsigned __int16)category type:(unsigned __int16)type;
- (void)sendPowerLogEventForClient:(id)client serviceName:(id)name payload:(id)payload category:(unsigned __int16)category type:(unsigned __int16)type eventNumber:(unint64_t)number;
@end

@implementation RTCReportingAVCLegacySupport

- (RTCReportingAVCLegacySupport)init
{
  v7.receiver = self;
  v7.super_class = RTCReportingAVCLegacySupport;
  v2 = [(RTCReportingAVCLegacySupport *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    global_queue = dispatch_get_global_queue(9, 0);
    v2->_dispatchQ = dispatch_queue_create_with_target_V2("com.apple.rtcreporting.avclegacysupport", v3, global_queue);
    v2->_logger = os_log_create("com.apple.rtcreporting", "AVCLegacySupport");
    v5 = os_log_create("com.apple.rtcreporting", "AVCLegacySupport");
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __createAWDAdaptorInstance_block_invoke;
    block[3] = &unk_2784F12F0;
    block[4] = v5;
    if (createAWDAdaptorInstance_onceToken != -1)
    {
      dispatch_once(&createAWDAdaptorInstance_onceToken, block);
    }

    v2->_awdAdaptor = objc_alloc_init(createAWDAdaptorInstance_awdAdaptorClass);
  }

  return v2;
}

- (void)dealloc
{
  self->_dispatchQ = 0;

  self->_awdAdaptor = 0;
  v3.receiver = self;
  v3.super_class = RTCReportingAVCLegacySupport;
  [(RTCReportingAVCLegacySupport *)&v3 dealloc];
}

- (void)invokeAWDAdaptorForPayload:(id)payload category:(unsigned __int16)category type:(unsigned __int16)type
{
  v9 = NSSelectorFromString(&cfstr_Sendmessagewit.isa);
  if (objc_opt_respondsToSelector())
  {
    payloadCopy = payload;
    dispatchQ = self->_dispatchQ;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __73__RTCReportingAVCLegacySupport_invokeAWDAdaptorForPayload_category_type___block_invoke;
    v12[3] = &unk_2784F1368;
    categoryCopy = category;
    typeCopy = type;
    v12[4] = payload;
    v12[5] = self;
    v12[6] = v9;
    dispatch_async(dispatchQ, v12);
  }
}

void __73__RTCReportingAVCLegacySupport_invokeAWDAdaptorForPayload_category_type___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = *(a1 + 32);
  v5 = *(a1 + 56);
  v4 = *(a1 + 58);
  v3 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:{objc_msgSend(*(v2 + 24), "methodSignatureForSelector:", *(a1 + 48))}];
  [v3 setSelector:*(a1 + 48)];
  [v3 setTarget:*(*(a1 + 40) + 24)];
  [v3 setArgument:&v5 atIndex:2];
  [v3 setArgument:&v4 atIndex:3];
  [v3 setArgument:&v6 atIndex:4];
  [v3 invoke];
  if (os_log_type_enabled(*(*(a1 + 40) + 16), OS_LOG_TYPE_DEBUG))
  {
    __73__RTCReportingAVCLegacySupport_invokeAWDAdaptorForPayload_category_type___block_invoke_cold_1();
  }
}

- (void)sendPowerLogEventForClient:(id)client serviceName:(id)name payload:(id)payload category:(unsigned __int16)category type:(unsigned __int16)type eventNumber:(unint64_t)number
{
  if (MEMORY[0x2822275F0])
  {
    categoryCopy = category;
    if ([client isEqualToString:@"AVCVideoConference"])
    {
      if ([name isEqualToString:@"FaceTime"])
      {
        v15 = &unk_2837228F8;
      }

      else
      {
        v15 = MEMORY[0x277CBEBF8];
      }
    }

    else if ([client isEqualToString:@"multiwayconference"] && ((objc_msgSend(name, "isEqualToString:", @"session") & 1) != 0 || objc_msgSend(name, "isEqualToString:", @"twoway")))
    {
      v15 = &unk_283722910;
    }

    else
    {
      v15 = MEMORY[0x277CBEBF8];
    }

    v16 = [v15 containsObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedShort:", categoryCopy)}];
    if (categoryCopy && v16)
    {
      if ([payload count])
      {
        payloadCopy = payload;
        dispatchQ = self->_dispatchQ;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __105__RTCReportingAVCLegacySupport_sendPowerLogEventForClient_serviceName_payload_category_type_eventNumber___block_invoke;
        v19[3] = &unk_2784F1368;
        v19[4] = payload;
        v19[5] = self;
        v20 = categoryCopy;
        typeCopy = type;
        v19[6] = number;
        dispatch_async(dispatchQ, v19);
      }
    }
  }
}

void __105__RTCReportingAVCLegacySupport_sendPowerLogEventForClient_serviceName_payload_category_type_eventNumber___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"ParametersPayload"];
  if (!v2)
  {
    v2 = *(a1 + 32);
    if (!v2)
    {
      if (os_log_type_enabled(*(*(a1 + 40) + 16), OS_LOG_TYPE_DEBUG))
      {
        __105__RTCReportingAVCLegacySupport_sendPowerLogEventForClient_serviceName_payload_category_type_eventNumber___block_invoke_cold_1();
      }

      v2 = MEMORY[0x277CBEC10];
    }
  }

  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v2];
  [v3 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInt:", *(a1 + 56)), @"method"}];
  [v3 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInt:", *(a1 + 58)), @"respCode"}];
  [v3 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedLongLong:", *(a1 + 48)), @"event"}];
  PLLogRegisteredEvent();
  v4 = *(*(a1 + 40) + 16);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __105__RTCReportingAVCLegacySupport_sendPowerLogEventForClient_serviceName_payload_category_type_eventNumber___block_invoke_cold_2((a1 + 56), (a1 + 48), v4);
  }
}

void __73__RTCReportingAVCLegacySupport_invokeAWDAdaptorForPayload_category_type___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_223C26000, v0, OS_LOG_TYPE_DEBUG, "dispatched message %hu/%hu to AWDAdaptor", v1, 0xEu);
}

void __105__RTCReportingAVCLegacySupport_sendPowerLogEventForClient_serviceName_payload_category_type_eventNumber___block_invoke_cold_2(unsigned __int16 *a1, uint64_t *a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v5 = 136315650;
  v6 = "[RTCReportingAVCLegacySupport sendPowerLogEventForClient:serviceName:payload:category:type:eventNumber:]_block_invoke";
  v7 = 1024;
  v8 = v3;
  v9 = 2048;
  v10 = v4;
  _os_log_debug_impl(&dword_223C26000, log, OS_LOG_TYPE_DEBUG, "%s: sendMessage %hu:%llu", &v5, 0x1Cu);
}

@end