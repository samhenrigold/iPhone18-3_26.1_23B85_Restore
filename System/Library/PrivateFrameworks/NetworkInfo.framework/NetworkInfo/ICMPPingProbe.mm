@interface ICMPPingProbe
+ (BOOL)loadStringUtils;
+ (unint64_t)icmpIPv4OffsetInPacket:(id)packet;
- (BOOL)isValidIPv4PingResponsePacket:(id)packet isForMe:(BOOL *)me sequence:(unsigned __int16 *)sequence isBadPacket:(BOOL *)badPacket;
- (BOOL)isValidIPv6PingResponsePacket:(id)packet isForMe:(BOOL *)me sequence:(unsigned __int16 *)sequence isBadPacket:(BOOL *)badPacket;
- (BOOL)startRunLoop;
- (ICMPPingProbe)initWithQueue:(id)queue;
- (id)_shortErrorFromError:(id)error;
- (void)dealloc;
- (void)didFailWithError:(id)error;
- (void)pingDidFailToSendToAddress:(id)address packet:(id)packet sequence:(unsigned int)sequence error:(id)error;
- (void)pingDidReceivePingResponseFromAddress:(id)address packet:(id)packet sequence:(unsigned int)sequence;
- (void)pingDidReceiveUnexpectedPingResponseFromAddress:(id)address packet:(id)packet sequence:(unsigned int)sequence;
- (void)pingDidSendToAddress:(id)address packet:(id)packet sequence:(unsigned int)sequence;
- (void)readData;
- (void)sendPing;
- (void)sendPingWithData:(id)data;
- (void)setPayloadSize:(unint64_t)size;
- (void)startICMPPingTestTo:(id)to hostName:(id)name interface:(unsigned int)interface pingCount:(int64_t)count interPingInterval:(double)interval burstCount:(int64_t)burstCount interBurstInterval:(double)burstInterval timeout:(double)self0 stopTestOnFirstSuccess:(BOOL)self1;
- (void)startPing:(id)ping hostName:(id)name interface:(unsigned int)interface pingCount:(int64_t)count interPingInterval:(double)interval burstCount:(int64_t)burstCount interBurstInterval:(double)burstInterval timeout:(double)self0 stopTestOnFirstSuccess:(BOOL)self1 withCompletion:(id)self2;
- (void)startThePinging;
- (void)stopDataTransfer;
- (void)stopRunLoop;
- (void)stopTest;
@end

@implementation ICMPPingProbe

+ (BOOL)loadStringUtils
{
  if (loadStringUtils_symbolLoadOnce != -1)
  {
    +[ICMPPingProbe loadStringUtils];
  }

  return loadStringUtils_loadedCU;
}

void __32__ICMPPingProbe_loadStringUtils__block_invoke()
{
  v0 = +[TestProbe loadCoreUtils];
  if (v0)
  {
    v2 = v0;
    v3 = dlsym(v0, "StringToSockAddr");
    v5 = v3;
    if (v3)
    {
      gStringToSockAddrFunc = v3;
    }

    else
    {
      netqual_log_init(0, v4);
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
      {
        __32__ICMPPingProbe_loadStringUtils__block_invoke_cold_1();
      }
    }

    dlclose(v2);
    loadStringUtils_loadedCU = v5 != 0;
  }

  else
  {
    netqual_log_init(0, v1);
    v6 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      __32__ICMPPingProbe_loadStringUtils__block_invoke_cold_2(v6);
    }
  }
}

- (ICMPPingProbe)initWithQueue:(id)queue
{
  v7.receiver = self;
  v7.super_class = ICMPPingProbe;
  v3 = [(TestProbe *)&v7 initWithQueue:queue];
  if (v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    pings = v3->_pings;
    v3->_pings = array;

    v3->_identifier = arc4random();
    v3->_payloadSize = 56;
  }

  return v3;
}

- (void)dealloc
{
  [(ICMPPingProbe *)self stopTest];
  v3.receiver = self;
  v3.super_class = ICMPPingProbe;
  [(ICMPPingProbe *)&v3 dealloc];
}

- (void)setPayloadSize:(unint64_t)size
{
  if (self->_payloadSize != size)
  {
    selfCopy = self;
    if (size <= 0x1000)
    {
      sizeCopy = 56;
      if (size)
      {
        sizeCopy = size;
      }
    }

    else
    {
      netqual_log_init(self, a2);
      self = os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR);
      if (self)
      {
        [ICMPPingProbe setPayloadSize:];
      }

      sizeCopy = 4096;
    }

    selfCopy->_payloadSize = sizeCopy;
    netqual_log_init(self, a2);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
    {
      [ICMPPingProbe setPayloadSize:];
    }
  }
}

- (void)startICMPPingTestTo:(id)to hostName:(id)name interface:(unsigned int)interface pingCount:(int64_t)count interPingInterval:(double)interval burstCount:(int64_t)burstCount interBurstInterval:(double)burstInterval timeout:(double)self0 stopTestOnFirstSuccess:(BOOL)self1
{
  v17 = *&interface;
  v57 = *MEMORY[0x277D85DE8];
  toCopy = to;
  nameCopy = name;
  if (!toCopy)
  {
    [ICMPPingProbe startICMPPingTestTo:hostName:interface:pingCount:interPingInterval:burstCount:interBurstInterval:timeout:stopTestOnFirstSuccess:];
  }

  v22 = nameCopy;
  [(ICMPPingProbe *)self setRunning:1];
  [(TestProbe *)self setStatus:1];
  [(ICMPPingProbe *)self setIpAddress:toCopy];
  [(ICMPPingProbe *)self setHostName:v22];
  v23 = [(ICMPPingProbe *)self setInterfaceIndex:v17];
  netqual_log_init(v23, v24);
  v25 = os_log_netqual;
  v26 = os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG);
  if (v26)
  {
    identifier = self->_identifier;
    *buf = 136316419;
    v42 = "[ICMPPingProbe startICMPPingTestTo:hostName:interface:pingCount:interPingInterval:burstCount:interBurstInterval:timeout:stopTestOnFirstSuccess:]";
    v43 = 1024;
    v44 = 221;
    v45 = 2048;
    selfCopy2 = self;
    v47 = 1024;
    v48 = identifier;
    v49 = 2113;
    countCopy = toCopy;
    v51 = 2113;
    intervalCopy = *&v22;
    _os_log_debug_impl(&dword_25B859000, v25, OS_LOG_TYPE_DEBUG, "%s:%u - Ping: %p (%u) IP Address is %{private}@ and hostName is %{private}@", buf, 0x36u);
  }

  netqual_log_init(v26, v27);
  v28 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
  {
    v39 = self->_identifier;
    *buf = 136316930;
    v42 = "[ICMPPingProbe startICMPPingTestTo:hostName:interface:pingCount:interPingInterval:burstCount:interBurstInterval:timeout:stopTestOnFirstSuccess:]";
    v43 = 1024;
    v44 = 222;
    v45 = 2048;
    selfCopy2 = self;
    v47 = 1024;
    v48 = v39;
    v49 = 2048;
    countCopy = count;
    v51 = 2048;
    intervalCopy = interval;
    v53 = 2048;
    burstCountCopy = burstCount;
    v55 = 2048;
    burstIntervalCopy = burstInterval;
    _os_log_debug_impl(&dword_25B859000, v28, OS_LOG_TYPE_DEBUG, "%s:%u - Ping: %p (%u) ping count is %lu, interPingInterval is %f, burst count is %lu, interBurstInterval is %f", buf, 0x4Au);
  }

  self->stopTestOnFirstSuccess = success;
  self->_completionHandlerCalled = 0;
  [(ICMPPingProbe *)self setPingCount:count];
  [(ICMPPingProbe *)self setInterPingInterval:interval];
  [(ICMPPingProbe *)self setBurstCount:burstCount];
  v29 = [(ICMPPingProbe *)self setInterBurstInterval:burstInterval];
  v31 = (burstCount - 1) * burstInterval;
  if ((interval + 10.0) * count * v31 >= timeout)
  {
    timeout = (interval + 10.0) * count * v31;
  }

  netqual_log_init(v29, v30);
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
  {
    [ICMPPingProbe startICMPPingTestTo:hostName:interface:pingCount:interPingInterval:burstCount:interBurstInterval:timeout:stopTestOnFirstSuccess:];
  }

  queue = [(TestProbe *)self queue];
  v33 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
  timeoutTimer = self->timeoutTimer;
  self->timeoutTimer = v33;

  v35 = self->timeoutTimer;
  v36 = dispatch_time(0, (timeout * 1000000000.0));
  dispatch_source_set_timer(v35, v36, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  v37 = self->timeoutTimer;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __145__ICMPPingProbe_startICMPPingTestTo_hostName_interface_pingCount_interPingInterval_burstCount_interBurstInterval_timeout_stopTestOnFirstSuccess___block_invoke;
  v40[3] = &unk_279968268;
  v40[4] = self;
  *&v40[5] = timeout;
  dispatch_source_set_event_handler(v37, v40);
  dispatch_resume(self->timeoutTimer);
  [(ICMPPingProbe *)self startRunLoop];
  [(ICMPPingProbe *)self startThePinging];
}

void __145__ICMPPingProbe_startICMPPingTestTo_hostName_interface_pingCount_interPingInterval_burstCount_interBurstInterval_timeout_stopTestOnFirstSuccess___block_invoke(uint64_t a1, uint64_t a2)
{
  netqual_log_init(a1, a2);
  v3 = os_log_netqual;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __145__ICMPPingProbe_startICMPPingTestTo_hostName_interface_pingCount_interPingInterval_burstCount_interBurstInterval_timeout_stopTestOnFirstSuccess___block_invoke_cold_1();
  }

  [*(a1 + 32) stopTest];
  v4 = [*(a1 + 32) pings];
  if (![v4 count])
  {

    goto LABEL_7;
  }

  v5 = [*(a1 + 32) successCount];

  if (!v5)
  {
LABEL_7:
    v6 = 3;
    goto LABEL_8;
  }

  v6 = 2;
LABEL_8:
  [*(a1 + 32) setStatus:v6];
  v7 = [*(a1 + 32) queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __145__ICMPPingProbe_startICMPPingTestTo_hostName_interface_pingCount_interPingInterval_burstCount_interBurstInterval_timeout_stopTestOnFirstSuccess___block_invoke_8;
  v8[3] = &unk_279968268;
  v8[4] = *(a1 + 32);
  v8[5] = *(a1 + 40);
  dispatch_async(v7, v8);
}

void __145__ICMPPingProbe_startICMPPingTestTo_hostName_interface_pingCount_interPingInterval_burstCount_interBurstInterval_timeout_stopTestOnFirstSuccess___block_invoke_8(uint64_t a1)
{
  v14[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    v5 = *(a1 + 32);
    v6 = [v5 pings];
    [v4 icmpPingProbe:v5 completedIterations:objc_msgSend(v6 successfulCount:"count") withError:{objc_msgSend(*(a1 + 32), "successCount"), 0}];
  }

  v7 = *(a1 + 32);
  if ((*(v7 + 57) & 1) == 0)
  {
    *(v7 + 57) = 1;
    v8 = *(a1 + 32);
    v9 = v8[15];
    v14[0] = @"Timed out";
    v13[0] = @"error";
    v13[1] = @"destination";
    v10 = [v8 ipAddress];
    v14[1] = v10;
    v13[2] = @"timeout_seconds";
    v11 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
    v14[2] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
    (*(v9 + 16))(v9, 0, v12);
  }
}

- (void)startPing:(id)ping hostName:(id)name interface:(unsigned int)interface pingCount:(int64_t)count interPingInterval:(double)interval burstCount:(int64_t)burstCount interBurstInterval:(double)burstInterval timeout:(double)self0 stopTestOnFirstSuccess:(BOOL)self1 withCompletion:(id)self2
{
  successCopy = success;
  v18 = *&interface;
  nameCopy = name;
  pingCopy = ping;
  v22 = _Block_copy(completion);
  completionHandler = self->_completionHandler;
  self->_completionHandler = v22;

  [(ICMPPingProbe *)self startICMPPingTestTo:pingCopy hostName:nameCopy interface:v18 pingCount:count interPingInterval:burstCount burstCount:successCopy interBurstInterval:interval timeout:burstInterval stopTestOnFirstSuccess:timeout];
}

- (id)_shortErrorFromError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    [ICMPPingProbe _shortErrorFromError:];
  }

  v4 = errorCopy;
  localizedFailureReason = [errorCopy localizedFailureReason];
  if (!localizedFailureReason)
  {
    localizedFailureReason = [v4 localizedDescription];
    if (!localizedFailureReason)
    {
      localizedFailureReason = [v4 description];
      if (!localizedFailureReason)
      {
        [ICMPPingProbe _shortErrorFromError:];
      }
    }
  }

  v6 = localizedFailureReason;

  return v6;
}

- (void)sendPing
{
  selfCopy = self;
  [OUTLINED_FUNCTION_17() interBurstInterval];
  [a2 interPingInterval];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x1Cu);
}

uint64_t __25__ICMPPingProbe_sendPing__block_invoke(uint64_t a1, uint64_t a2)
{
  netqual_log_init(a1, a2);
  v3 = os_log_netqual;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __25__ICMPPingProbe_sendPing__block_invoke_cold_1(a1);
  }

  return [*(a1 + 32) sendPingWithData:0];
}

- (void)pingDidSendToAddress:(id)address packet:(id)packet sequence:(unsigned int)sequence
{
  v5 = *&sequence;
  addressCopy = address;
  v8 = MEMORY[0x277CBEB38];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_approximate_time()];
  v11 = [v8 dictionaryWithObjectsAndKeys:{v9, @"sequence", v10, @"sendtime", 0}];

  pings = [(ICMPPingProbe *)self pings];
  [pings addObject:v11];

  netqual_log_init(v13, v14);
  v15 = os_log_netqual;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [ICMPPingProbe pingDidSendToAddress:addressCopy packet:? sequence:?];
  }

  queue = [(TestProbe *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ICMPPingProbe_pingDidSendToAddress_packet_sequence___block_invoke;
  block[3] = &unk_2799682B8;
  block[4] = self;
  v19 = v11;
  v17 = v11;
  dispatch_async(queue, block);
}

void __54__ICMPPingProbe_pingDidSendToAddress_packet_sequence___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 icmpPingProbe:*(a1 + 32) echoRequestSent:*(a1 + 40) success:1];
  }
}

- (void)pingDidFailToSendToAddress:(id)address packet:(id)packet sequence:(unsigned int)sequence error:(id)error
{
  v7 = *&sequence;
  v35 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  errorCopy = error;
  v11 = self->_failedCount + 1;
  self->_failedCount = v11;
  pingCount = self->_pingCount;
  if (pingCount)
  {
    burstCount = self->_burstCount;
    if (burstCount)
    {
      self->_percentComplete = (self->_successCount + v11) / (burstCount * pingCount);
    }
  }

  v14 = MEMORY[0x277CBEB38];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v7];
  v16 = [v14 dictionaryWithObjectsAndKeys:{v15, @"sequence", errorCopy, @"error", 0}];

  pings = [(ICMPPingProbe *)self pings];
  [pings addObject:v16];

  netqual_log_init(v18, v19);
  v20 = os_log_netqual;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    ipAddress = addressCopy;
    if (!addressCopy)
    {
      ipAddress = [(ICMPPingProbe *)self ipAddress];
    }

    *buf = 136316163;
    v26 = "[ICMPPingProbe pingDidFailToSendToAddress:packet:sequence:error:]";
    v27 = 1024;
    v28 = 364;
    v29 = 2048;
    selfCopy = self;
    v31 = 2113;
    v32 = ipAddress;
    v33 = 2112;
    v34 = errorCopy;
    _os_log_error_impl(&dword_25B859000, v20, OS_LOG_TYPE_ERROR, "%s:%u - %p ping NOT sent to %{private}@ because %@", buf, 0x30u);
    if (!addressCopy)
    {
    }
  }

  delegate = [(ICMPPingProbe *)self delegate];
  v22 = objc_opt_respondsToSelector();

  if (v22)
  {
    delegate2 = [(ICMPPingProbe *)self delegate];
    [delegate2 icmpPingProbe:self echoRequestSent:v16 success:0];
  }
}

- (void)pingDidReceivePingResponseFromAddress:(id)address packet:(id)packet sequence:(unsigned int)sequence
{
  v5 = *&sequence;
  addressCopy = address;
  v9 = addressCopy;
  v10 = self->_successCount + 1;
  self->_successCount = v10;
  pingCount = self->_pingCount;
  if (pingCount)
  {
    burstCount = self->_burstCount;
    if (burstCount)
    {
      self->_percentComplete = (self->_failedCount + v10) / (burstCount * pingCount);
    }
  }

  netqual_log_init(addressCopy, v8);
  v13 = os_log_netqual;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [ICMPPingProbe pingDidReceivePingResponseFromAddress:packet:sequence:];
  }

  pings = [(ICMPPingProbe *)self pings];
  v15 = [pings count];

  if (v15 <= v5)
  {
    netqual_log_init(v16, v17);
    v36 = os_log_netqual;
    pingCount = os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR);
    if (pingCount)
    {
      [ICMPPingProbe pingDidReceivePingResponseFromAddress:v36 packet:? sequence:?];
    }
  }

  else
  {
    pings2 = [(ICMPPingProbe *)self pings];
    v19 = [pings2 objectAtIndexedSubscript:v5];

    if (v19)
    {
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
      [v19 setObject:v20 forKeyedSubscript:@"sequence"];

      v21 = [v19 objectForKeyedSubscript:@"sendtime"];
      unsignedLongLongValue = [v21 unsignedLongLongValue];

      v23 = mach_approximate_time();
      v24 = v23 - unsignedLongLongValue;
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v23];
      [v19 setObject:v25 forKeyedSubscript:@"endtime"];

      v26 = MEMORY[0x277CCABB0];
      if (getMachTimeBaseInfo_onceToken != -1)
      {
        [ICMPPingProbe pingDidReceivePingResponseFromAddress:packet:sequence:];
      }

      0xF4240 = [v26 numberWithUnsignedLongLong:v24 * getMachTimeBaseInfo_machTimeInfoData / HIDWORD(getMachTimeBaseInfo_machTimeInfoData) / 0xF4240];
      [v19 setObject:0xF4240 forKeyedSubscript:@"duration_ms"];

      v28 = DisplayAddressForAddress(v9);
      [v19 setObject:v28 forKeyedSubscript:@"destination"];

      netqual_log_init(v29, v30);
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
      {
        [ICMPPingProbe pingDidReceivePingResponseFromAddress:packet:sequence:];
      }
    }

    delegate = [(ICMPPingProbe *)self delegate];
    v32 = objc_opt_respondsToSelector();

    if (v32)
    {
      delegate2 = [(ICMPPingProbe *)self delegate];
      [delegate2 icmpPingProbe:self echoResponseReceived:v19 success:1];
    }
  }

  if (self->stopTestOnFirstSuccess)
  {
    goto LABEL_18;
  }

  burstCount = [(ICMPPingProbe *)self burstCount];
  pingCount = [(ICMPPingProbe *)self pingCount];
  if (pingCount * burstCount - 1 == v5)
  {
    if (!self->stopTestOnFirstSuccess)
    {
      netqual_log_init(pingCount, v35);
      v37 = os_log_netqual;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        [ICMPPingProbe pingDidReceivePingResponseFromAddress:packet:sequence:];
      }

LABEL_20:

      [(ICMPPingProbe *)self stopTest];
      pings3 = [(ICMPPingProbe *)self pings];
      if ([pings3 count])
      {
        successCount = [(ICMPPingProbe *)self successCount];

        if (successCount)
        {
          v40 = 2;
LABEL_29:
          [(TestProbe *)self setStatus:v40];
          delegate3 = [(ICMPPingProbe *)self delegate];
          v43 = objc_opt_respondsToSelector();

          if (v43)
          {
            delegate4 = [(ICMPPingProbe *)self delegate];
            pings4 = [(ICMPPingProbe *)self pings];
            [delegate4 icmpPingProbe:self completedIterations:objc_msgSend(pings4 successfulCount:"count") withError:{-[ICMPPingProbe successCount](self, "successCount"), 0}];
          }

          pings5 = [(ICMPPingProbe *)self pings];
          v47 = [pings5 objectAtIndexedSubscript:v5];

          if (v47)
          {
            v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
            [v47 setObject:v48 forKeyedSubscript:@"sequence"];

            v49 = [v47 objectForKeyedSubscript:@"sendtime"];
            unsignedLongLongValue2 = [v49 unsignedLongLongValue];

            v51 = mach_approximate_time();
            v52 = v51 - unsignedLongLongValue2;
            v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v51];
            [v47 setObject:v53 forKeyedSubscript:@"endtime"];

            v54 = MEMORY[0x277CCABB0];
            if (getMachTimeBaseInfo_onceToken != -1)
            {
              [ICMPPingProbe pingDidReceivePingResponseFromAddress:packet:sequence:];
            }

            0xF42402 = [v54 numberWithUnsignedLongLong:v52 * getMachTimeBaseInfo_machTimeInfoData / HIDWORD(getMachTimeBaseInfo_machTimeInfoData) / 0xF4240];
            [v47 setObject:0xF42402 forKeyedSubscript:@"duration_ms"];

            v56 = DisplayAddressForAddress(v9);
            [v47 setObject:v56 forKeyedSubscript:@"destination"];

            hostName = [(ICMPPingProbe *)self hostName];

            if (hostName)
            {
              hostName2 = [(ICMPPingProbe *)self hostName];
              [v47 setObject:hostName2 forKeyedSubscript:@"host"];
            }
          }

          if (!self->_completionHandlerCalled)
          {
            self->_completionHandlerCalled = 1;
            (*(self->_completionHandler + 2))();
          }

          goto LABEL_41;
        }
      }

      else
      {
      }

      v40 = 3;
      goto LABEL_29;
    }

LABEL_18:
    netqual_log_init(pingCount, v35);
    v37 = os_log_netqual;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [ICMPPingProbe pingDidReceivePingResponseFromAddress:packet:sequence:];
    }

    goto LABEL_20;
  }

  netqual_log_init(pingCount, v35);
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
  {
    [ICMPPingProbe pingDidReceivePingResponseFromAddress:packet:sequence:];
  }

LABEL_41:
}

- (void)pingDidReceiveUnexpectedPingResponseFromAddress:(id)address packet:(id)packet sequence:(unsigned int)sequence
{
  v5 = *&sequence;
  v51 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  v8 = self->_failedCount + 1;
  self->_failedCount = v8;
  pingCount = self->_pingCount;
  if (pingCount)
  {
    burstCount = self->_burstCount;
    if (burstCount)
    {
      self->_percentComplete = (self->_successCount + v8) / (burstCount * pingCount);
    }
  }

  pings = [(ICMPPingProbe *)self pings];
  v12 = [pings count];

  netqual_log_init(v13, v14);
  v15 = os_log_netqual;
  if (v12 > v5)
  {
    v16 = os_log_netqual;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ICMPPingProbe pingDidReceiveUnexpectedPingResponseFromAddress:packet:sequence:];
    }

    pings2 = [(ICMPPingProbe *)self pings];
    v18 = [pings2 objectAtIndexedSubscript:v5];

    if (v18)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
      [v18 setObject:v19 forKeyedSubscript:@"sequence"];

      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:100 userInfo:0];
      [v18 setObject:v20 forKeyedSubscript:@"error"];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_approximate_time()];
      [v18 setObject:v21 forKeyedSubscript:@"endtime"];

      v22 = DisplayAddressForAddress(addressCopy);
      [v18 setObject:v22 forKeyedSubscript:@"destination"];

      netqual_log_init(v23, v24);
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
      {
        [ICMPPingProbe pingDidReceiveUnexpectedPingResponseFromAddress:packet:sequence:];
      }
    }

    delegate = [(ICMPPingProbe *)self delegate];
    v26 = objc_opt_respondsToSelector();

    if (v26)
    {
      delegate2 = [(ICMPPingProbe *)self delegate];
      [delegate2 icmpPingProbe:self echoResponseReceived:v18 success:0];
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
  {
    v18 = v15;
    pings3 = [(ICMPPingProbe *)self pings];
    v34 = [pings3 count];
    v35 = DisplayAddressForAddress(addressCopy);
    *buf = 136316419;
    v40 = "[ICMPPingProbe pingDidReceiveUnexpectedPingResponseFromAddress:packet:sequence:]";
    v41 = 1024;
    v42 = 469;
    v43 = 2048;
    selfCopy = self;
    v45 = 1024;
    v46 = v5;
    v47 = 2048;
    v48 = v34;
    v49 = 2113;
    v50 = v35;
    _os_log_error_impl(&dword_25B859000, v18, OS_LOG_TYPE_ERROR, "%s:%u - %p unexpected ping sequence (%u should be < %lu) from %{private}@", buf, 0x36u);

LABEL_12:
  }

  pingCount = [(ICMPPingProbe *)self pingCount];
  burstCount = [(ICMPPingProbe *)self burstCount];
  if (burstCount * pingCount - 1 <= v5)
  {
    netqual_log_init(burstCount, v30);
    v31 = os_log_netqual;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      [ICMPPingProbe pingDidReceiveUnexpectedPingResponseFromAddress:packet:sequence:];
    }

    queue = [(TestProbe *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__ICMPPingProbe_pingDidReceiveUnexpectedPingResponseFromAddress_packet_sequence___block_invoke;
    block[3] = &unk_2799682E0;
    block[4] = self;
    v38 = v5;
    v37 = addressCopy;
    dispatch_async(queue, block);
  }
}

void __81__ICMPPingProbe_pingDidReceiveUnexpectedPingResponseFromAddress_packet_sequence___block_invoke(uint64_t a1)
{
  [*(a1 + 32) stopTest];
  v2 = [*(a1 + 32) pings];
  if ([v2 count])
  {
    v3 = [*(a1 + 32) successCount];

    if (v3)
    {
      v4 = 2;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v4 = 3;
LABEL_6:
  [*(a1 + 32) setStatus:v4];
  v5 = [*(a1 + 32) delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [*(a1 + 32) delegate];
    v8 = *(a1 + 32);
    v9 = [v8 pings];
    [v7 icmpPingProbe:v8 completedIterations:objc_msgSend(v9 successfulCount:"count") withError:{objc_msgSend(*(a1 + 32), "successCount"), 0}];
  }

  v10 = [*(a1 + 32) pings];
  v16 = [v10 objectAtIndexedSubscript:*(a1 + 48)];

  if (v16)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 48)];
    [v16 setObject:v11 forKeyedSubscript:@"sequence"];

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:100 userInfo:0];
    [v16 setObject:v12 forKeyedSubscript:@"error"];

    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_approximate_time()];
    [v16 setObject:v13 forKeyedSubscript:@"endtime"];

    v14 = DisplayAddressForAddress(*(a1 + 40));
    [v16 setObject:v14 forKeyedSubscript:@"destination"];
  }

  v15 = *(a1 + 32);
  if ((*(v15 + 57) & 1) == 0)
  {
    *(v15 + 57) = 1;
    (*(*(*(a1 + 32) + 120) + 16))();
  }
}

- (void)stopDataTransfer
{
  socket = self->_socket;
  if (socket)
  {
    CFSocketInvalidate(socket);
    CFRelease(self->_socket);
    self->_socket = 0;
  }
}

- (void)stopTest
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)didFailWithError:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (!errorCopy)
  {
    [ICMPPingProbe didFailWithError:];
  }

  v6 = errorCopy;
  netqual_log_init(errorCopy, v5);
  v7 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [(ICMPPingProbe *)self _shortErrorFromError:v6];
    *buf = 136315650;
    v17 = "[ICMPPingProbe didFailWithError:]";
    v18 = 1024;
    v19 = 608;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_25B859000, v8, OS_LOG_TYPE_INFO, "%s:%u - ping failed because %@", buf, 0x1Cu);
  }

  pingTimer = self->pingTimer;
  if (pingTimer)
  {
    dispatch_source_cancel(pingTimer);
    v11 = self->pingTimer;
    self->pingTimer = 0;
  }

  [(ICMPPingProbe *)self setRunning:0];
  [(TestProbe *)self setStatus:3];
  queue = [(TestProbe *)self queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __34__ICMPPingProbe_didFailWithError___block_invoke;
  v14[3] = &unk_2799682B8;
  v14[4] = self;
  v15 = v6;
  v13 = v6;
  dispatch_async(queue, v14);
}

void __34__ICMPPingProbe_didFailWithError___block_invoke(uint64_t a1)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    v5 = *(a1 + 32);
    v6 = [v5 pings];
    [v4 icmpPingProbe:v5 completedIterations:objc_msgSend(v6 successfulCount:"count") withError:{objc_msgSend(*(a1 + 32), "successCount"), *(a1 + 40)}];
  }

  v7 = *(a1 + 32);
  if ((*(v7 + 57) & 1) == 0)
  {
    *(v7 + 57) = 1;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v8[15];
    v14[0] = @"error";
    v11 = [v8 _shortErrorFromError:v9];
    v14[1] = @"destination";
    v15[0] = v11;
    v12 = [*(a1 + 32) ipAddress];
    v15[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    (*(v10 + 16))(v10, 0, v13);
  }
}

- (void)sendPingWithData:(id)data
{
  v61 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  socket = self->_socket;
  if (socket)
  {
    Native = CFSocketGetNative(socket);
    v7 = dataCopy;
    if (!v7)
    {
      if (self->_payloadSize == 56)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%28zd bottles of beer on the wall", (100 * (self->_nextSequenceNumber / 0x64u) - self->_nextSequenceNumber + 99)];
        v7 = [v8 dataUsingEncoding:1];

        if (!v7)
        {
          [ICMPPingProbe sendPingWithData:];
        }

        if ([v7 length] != 56)
        {
          [ICMPPingProbe sendPingWithData:];
        }
      }

      else
      {
        v14 = [MEMORY[0x277CBEB28] dataWithLength:?];
        v7 = v14;
        if (v14)
        {
          arc4random_buf([v14 bytes], objc_msgSend(v14, "length"));
          if ([v7 length] != self->_payloadSize)
          {
            [ICMPPingProbe sendPingWithData:];
          }
        }
      }
    }

    v44 = dataCopy;
    if (self->_hostAddressIsIPv6)
    {
      v15 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v7, "length") + 8}];
      if (!v15)
      {
        [ICMPPingProbe sendPingWithData:];
      }

      v16 = v15;
      mutableBytes = [v15 mutableBytes];
      *mutableBytes = 128;
      *(mutableBytes + 4) = bswap32(self->_identifier) >> 16;
      *(mutableBytes + 6) = bswap32(self->_nextSequenceNumber) >> 16;
      memcpy((mutableBytes + 8), [v7 bytes], objc_msgSend(v7, "length"));
      v46 = 1;
      if (setsockopt(Native, 0xFFFF, 4356, &v46, 4u) < 0)
      {
        v33 = __error();
        v18 = *v33;
        netqual_log_init(v33, v34);
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
        {
          [ICMPPingProbe sendPingWithData:];
        }
      }

      else
      {
        v18 = 0;
      }

      memset(&v45.msg_namelen, 0, 40);
      v59 = 0;
      v60 = 0;
      v35 = [v7 length];
      v36 = v35 + 8;
      netqual_log_init(v35, v37);
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
      {
        [ICMPPingProbe sendPingWithData:];
      }

      v45.msg_name = [(NSData *)self->_hostAddressData bytes];
      v45.msg_namelen = [(NSData *)self->_hostAddressData length];
      v57 = mutableBytes;
      v58 = v36;
      v45.msg_iov = &v57;
      v45.msg_iovlen = 1;
      v38 = sendmsg(Native, &v45, 0);
      v29 = v38;
      if (v38 < 0 || v38 != v36)
      {
        v39 = __error();
        v18 = *v39;
        netqual_log_init(v39, v40);
        v41 = os_log_netqual;
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v48 = "[ICMPPingProbe sendPingWithData:]";
          v49 = 1024;
          v50 = 720;
          v51 = 2048;
          v52 = v29;
          v53 = 2048;
          v54 = v36;
          v55 = 1024;
          v56 = v18;
          _os_log_error_impl(&dword_25B859000, v41, OS_LOG_TYPE_ERROR, "%s:%u - IPv6 sendmsg failed (%ld/%ld) err: %{errno}d", buf, 0x2Cu);
        }
      }

LABEL_42:
      if (v29 >= 1 && v29 == [v16 length])
      {
        [(ICMPPingProbe *)self pingDidSendToAddress:self->_hostAddressData packet:v16 sequence:self->_nextSequenceNumber];
      }

      else
      {
        if (v18)
        {
          v42 = v18;
        }

        else
        {
          v42 = 55;
        }

        v43 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v42 userInfo:0];
        [(ICMPPingProbe *)self pingDidFailToSendToAddress:self->_hostAddressData packet:v16 sequence:self->_nextSequenceNumber error:v43];
      }

      ++self->_nextSequenceNumber;

      dataCopy = v44;
      goto LABEL_50;
    }

    v19 = setsockopt(Native, 0, 25, &self->_interfaceIndex, 4u);
    if (v19)
    {
      netqual_log_init(v19, v20);
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
      {
        [ICMPPingProbe sendPingWithData:];
      }
    }

    v21 = [MEMORY[0x277CBEB28] dataWithLength:{objc_msgSend(v7, "length") + 28}];
    if (!v21)
    {
      [ICMPPingProbe sendPingWithData:];
    }

    v16 = v21;
    mutableBytes2 = [v21 mutableBytes];
    *mutableBytes2 = 8;
    *(mutableBytes2 + 4) = bswap32(self->_identifier) >> 16;
    *(mutableBytes2 + 6) = bswap32(self->_nextSequenceNumber) >> 16;
    memcpy((mutableBytes2 + 28), [v7 bytes], objc_msgSend(v7, "length"));
    bytes = [v16 bytes];
    v24 = [v16 length];
    if (v24 < 2)
    {
      v25 = 0;
      if (!v24)
      {
LABEL_27:
        *(mutableBytes2 + 2) = ~(HIWORD(v25) + v25 + (((v25 >> 16) + v25) >> 16));
        memset(&v45.msg_namelen, 0, 40);
        v59 = 0;
        v60 = 0;
        v27 = [v7 length] + 28;
        v45.msg_name = [(NSData *)self->_hostAddressData bytes];
        v45.msg_namelen = [(NSData *)self->_hostAddressData length];
        v57 = mutableBytes2;
        v58 = v27;
        v45.msg_iov = &v57;
        v45.msg_iovlen = 1;
        v28 = sendmsg(Native, &v45, 0);
        v29 = v28;
        if (v28 < 0 || (v18 = 0, v28 != v27))
        {
          v30 = __error();
          v18 = *v30;
          netqual_log_init(v30, v31);
          v32 = os_log_netqual;
          if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v48 = "[ICMPPingProbe sendPingWithData:]";
            v49 = 1024;
            v50 = 763;
            v51 = 2048;
            v52 = v29;
            v53 = 2048;
            v54 = v27;
            v55 = 1024;
            v56 = v18;
            _os_log_error_impl(&dword_25B859000, v32, OS_LOG_TYPE_ERROR, "%s:%u - IPv4 sendmsg failed (%ld/%ld) err: %{errno}d", buf, 0x2Cu);
          }
        }

        goto LABEL_42;
      }
    }

    else
    {
      v25 = 0;
      do
      {
        v26 = *bytes++;
        v25 += v26;
        v24 -= 2;
      }

      while (v24 > 1);
      if (!v24)
      {
        goto LABEL_27;
      }
    }

    v25 += *bytes;
    goto LABEL_27;
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:9 userInfo:0];
  delegate = [(ICMPPingProbe *)self delegate];
  if (delegate)
  {
    v11 = delegate;
    delegate2 = [(ICMPPingProbe *)self delegate];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      [(ICMPPingProbe *)self pingDidFailToSendToAddress:self->_hostAddressData packet:0 sequence:self->_nextSequenceNumber error:v9];
    }
  }

LABEL_50:
}

+ (unint64_t)icmpIPv4OffsetInPacket:(id)packet
{
  packetCopy = packet;
  if ([packetCopy length] < 0x30)
  {
LABEL_9:
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_10;
  }

  bytes = [packetCopy bytes];
  if ((*bytes & 0xF0) != 0x40)
  {
    netqual_log_init(bytes, v5);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      +[ICMPPingProbe icmpIPv4OffsetInPacket:];
    }

    goto LABEL_9;
  }

  if (bytes[9] != 1)
  {
    netqual_log_init(bytes, v5);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      +[ICMPPingProbe icmpIPv4OffsetInPacket:];
    }

    goto LABEL_9;
  }

  v6 = 4 * (*bytes & 0x3F);
LABEL_10:

  return v6;
}

- (BOOL)isValidIPv6PingResponsePacket:(id)packet isForMe:(BOOL *)me sequence:(unsigned __int16 *)sequence isBadPacket:(BOOL *)badPacket
{
  v52 = *MEMORY[0x277D85DE8];
  packetCopy = packet;
  v11 = [packetCopy length];
  if (v11 < 8)
  {
    netqual_log_init(v11, v12);
    v17 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [ICMPPingProbe isValidIPv6PingResponsePacket:v17 isForMe:? sequence:? isBadPacket:?];
      if (badPacket)
      {
LABEL_10:
        v18 = 0;
        *badPacket = 1;
        goto LABEL_35;
      }

LABEL_34:
      v18 = 0;
      goto LABEL_35;
    }

LABEL_9:
    if (badPacket)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

  mutableBytes = [packetCopy mutableBytes];
  if (!mutableBytes)
  {
    netqual_log_init(0, v14);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [ICMPPingProbe isValidIPv6PingResponsePacket:isForMe:sequence:isBadPacket:];
      if (badPacket)
      {
        goto LABEL_10;
      }

      goto LABEL_34;
    }

    goto LABEL_9;
  }

  v15 = mutableBytes;
  v16 = *mutableBytes == 129 && mutableBytes[1] == 0;
  v19 = bswap32(*(mutableBytes + 2)) >> 16;
  identifier = self->_identifier;
  v21 = bswap32(*(mutableBytes + 3)) >> 16;
  pingCount = [(ICMPPingProbe *)self pingCount];
  burstCount = [(ICMPPingProbe *)self burstCount];
  if (me)
  {
    *me = v19 == identifier;
  }

  v25 = burstCount * pingCount;
  if (sequence)
  {
    *sequence = v21;
  }

  v26 = v19 == identifier && v16;
  if (!v26 || v25 <= v21)
  {
    if (v16)
    {
      if (v19 == identifier)
      {
        if (v25 <= v21)
        {
          netqual_log_init(burstCount, v24);
          v28 = os_log_netqual;
          if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
          {
            [ICMPPingProbe isValidIPv6PingResponsePacket:v21 isForMe:v28 sequence:? isBadPacket:?];
          }
        }
      }

      else
      {
        netqual_log_init(burstCount, v24);
        v37 = os_log_netqual;
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
        {
          v39 = self->_identifier;
          *buf = 136316162;
          v41 = "[ICMPPingProbe isValidIPv6PingResponsePacket:isForMe:sequence:isBadPacket:]";
          v42 = 1024;
          v43 = 843;
          v44 = 2048;
          selfCopy3 = self;
          v46 = 1024;
          v47 = v19;
          v48 = 1024;
          LODWORD(v49) = v39;
          _os_log_debug_impl(&dword_25B859000, v37, OS_LOG_TYPE_DEBUG, "%s:%u - %p (%u) This ICMP6_ECHO_REPLY is NOT for me %u", buf, 0x28u);
        }
      }
    }

    else
    {
      netqual_log_init(burstCount, v24);
      v31 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
      {
        v32 = self->_identifier;
        v33 = *v15;
        v34 = v31;
        v35 = icmpTypeToString(v33);
        v36 = v15[1];
        *buf = 136316418;
        v41 = "[ICMPPingProbe isValidIPv6PingResponsePacket:isForMe:sequence:isBadPacket:]";
        v42 = 1024;
        v43 = 837;
        v44 = 2048;
        selfCopy3 = self;
        v46 = 1024;
        v47 = v32;
        v48 = 2112;
        v49 = v35;
        v50 = 1024;
        v51 = v36;
        _os_log_debug_impl(&dword_25B859000, v34, OS_LOG_TYPE_DEBUG, "%s:%u - %p (%u) Not ICMP6_ECHO_REPLY (%@) or icmp6_code (%d)", buf, 0x32u);
      }
    }

    goto LABEL_34;
  }

  netqual_log_init(burstCount, v24);
  v29 = os_log_netqual;
  v18 = 1;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
  {
    v30 = self->_identifier;
    *buf = 136316162;
    v41 = "[ICMPPingProbe isValidIPv6PingResponsePacket:isForMe:sequence:isBadPacket:]";
    v42 = 1024;
    v43 = 833;
    v44 = 2048;
    selfCopy3 = self;
    v46 = 1024;
    v47 = v21;
    v48 = 1024;
    LODWORD(v49) = v30;
    _os_log_impl(&dword_25B859000, v29, OS_LOG_TYPE_INFO, "%s:%u - %p Valid ICMP6_ECHO_REPLY (sequence %u) for me %u!", buf, 0x28u);
  }

LABEL_35:

  return v18;
}

- (BOOL)isValidIPv4PingResponsePacket:(id)packet isForMe:(BOOL *)me sequence:(unsigned __int16 *)sequence isBadPacket:(BOOL *)badPacket
{
  v63 = *MEMORY[0x277D85DE8];
  packetCopy = packet;
  v11 = [objc_opt_class() icmpIPv4OffsetInPacket:packetCopy];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    netqual_log_init(0x7FFFFFFFFFFFFFFFLL, v12);
    v13 = os_log_netqual;
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [ICMPPingProbe isValidIPv4PingResponsePacket:v13 isForMe:? sequence:? isBadPacket:?];
    }

    goto LABEL_9;
  }

  v14 = v11;
  mutableBytes = [packetCopy mutableBytes];
  if (!mutableBytes)
  {
    netqual_log_init(0, v16);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [ICMPPingProbe isValidIPv4PingResponsePacket:isForMe:sequence:isBadPacket:];
    }

    goto LABEL_9;
  }

  v17 = (mutableBytes + v14);
  if (*(mutableBytes + v14))
  {
    v49 = 0;
  }

  else
  {
    v49 = *(v17 + 1) == 0;
  }

  identifier = self->_identifier;
  v50 = bswap32(v17[2]) >> 16;
  v20 = v17[3];
  pingCount = [(ICMPPingProbe *)self pingCount];
  burstCount = [(ICMPPingProbe *)self burstCount];
  v21 = v17[1];
  v17[1] = 0;
  v22 = [packetCopy length];
  v24 = v22 - v14;
  if ((v22 - v14) < 2)
  {
    v25 = 0;
    v26 = v17;
  }

  else
  {
    v25 = 0;
    v26 = v17;
    do
    {
      v27 = *v26++;
      v25 += v27;
      v24 -= 2;
    }

    while (v24 > 1);
  }

  v28 = bswap32(v20);
  if (v24)
  {
    v25 += *v26;
  }

  v29 = HIWORD(v28);
  v30 = (v25 >> 16) + v25;
  v17[1] = v21;
  if (me)
  {
    *me = v50 == identifier;
  }

  v31 = v30 + HIWORD(v30);
  if (sequence)
  {
    *sequence = HIWORD(v28);
  }

  v32 = ~v31;
  v33 = burstCount * pingCount;
  v34 = v50 == identifier && v49;
  if (!v34 || v33 <= v29 || v21 != v32)
  {
    if (!v49)
    {
      netqual_log_init(v22, v23);
      v38 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
      {
        v39 = self->_identifier;
        v40 = *(v17 + 1) == 0;
        v41 = v38;
        v42 = icmpTypeToString(v40);
        v43 = *(v17 + 1);
        *buf = 136316418;
        v52 = "[ICMPPingProbe isValidIPv4PingResponsePacket:isForMe:sequence:isBadPacket:]";
        v53 = 1024;
        v54 = 917;
        v55 = 2048;
        selfCopy3 = self;
        v57 = 1024;
        v58 = v39;
        v59 = 2112;
        v60 = v42;
        v61 = 1024;
        v62 = v43;
        _os_log_debug_impl(&dword_25B859000, v41, OS_LOG_TYPE_DEBUG, "%s:%u - %p (%u) Not ICMP_ECHOREPLY (%@) or icmp_code (%d)", buf, 0x32u);
      }

      goto LABEL_43;
    }

    if (v50 != identifier)
    {
      netqual_log_init(v22, v23);
      v44 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
      {
        v45 = self->_identifier;
        *buf = 136316162;
        v52 = "[ICMPPingProbe isValidIPv4PingResponsePacket:isForMe:sequence:isBadPacket:]";
        v53 = 1024;
        v54 = 922;
        v55 = 2048;
        selfCopy3 = self;
        v57 = 1024;
        v58 = v50;
        v59 = 1024;
        LODWORD(v60) = v45;
        _os_log_debug_impl(&dword_25B859000, v44, OS_LOG_TYPE_DEBUG, "%s:%u - %p (%u) This ICMP_ECHOREPLY is NOT for me %u", buf, 0x28u);
      }

      goto LABEL_43;
    }

    if (v33 <= v29)
    {
      netqual_log_init(v22, v23);
      v37 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
      {
        [ICMPPingProbe isValidIPv4PingResponsePacket:v29 isForMe:v37 sequence:? isBadPacket:?];
      }

      goto LABEL_43;
    }

    if (v21 == v32)
    {
LABEL_43:
      v18 = 0;
      goto LABEL_44;
    }

    netqual_log_init(v22, v23);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [ICMPPingProbe isValidIPv4PingResponsePacket:isForMe:sequence:isBadPacket:];
    }

LABEL_9:
    if (badPacket)
    {
      v18 = 0;
      *badPacket = 1;
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  netqual_log_init(v22, v23);
  v35 = os_log_netqual;
  v18 = 1;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_INFO))
  {
    v36 = self->_identifier;
    *buf = 136316162;
    v52 = "[ICMPPingProbe isValidIPv4PingResponsePacket:isForMe:sequence:isBadPacket:]";
    v53 = 1024;
    v54 = 913;
    v55 = 2048;
    selfCopy3 = self;
    v57 = 1024;
    v58 = v29;
    v59 = 1024;
    LODWORD(v60) = v36;
    _os_log_impl(&dword_25B859000, v35, OS_LOG_TYPE_INFO, "%s:%u - %p Valid ICMP_ECHOREPLY (sequence %u) for me %u!", buf, 0x28u);
  }

LABEL_44:

  return v18;
}

- (void)readData
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

uint64_t __25__ICMPPingProbe_readData__block_invoke(uint64_t result)
{
  v1 = result;
  if (*(result + 58) == 1)
  {
    v2 = *(result + 32);
    v3 = *(v1 + 40);
    v4 = *(v1 + 48);
    v5 = *(v1 + 56);

    return [v2 pingDidReceivePingResponseFromAddress:v3 packet:v4 sequence:v5];
  }

  else if (*(result + 59) == 1)
  {
    if ((*(result + 60) & 1) != 0 || (v6 = *(result + 56), v6 != 0xFFFF) && (v7 = [*(result + 32) pingCount], result = objc_msgSend(*(v1 + 32), "burstCount"), result * v7 <= v6))
    {
      v8 = *(v1 + 32);
      v9 = *(v1 + 40);
      v10 = *(v1 + 48);
      v11 = *(v1 + 56);

      return [v8 pingDidReceiveUnexpectedPingResponseFromAddress:v9 packet:v10 sequence:v11];
    }
  }

  return result;
}

- (void)startThePinging
{
  OUTLINED_FUNCTION_19(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

void __32__ICMPPingProbe_startThePinging__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  v3 = MEMORY[0x277D85D38];
  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v2);
  v5 = *(a1 + 32);
  v6 = *(v5 + 72);
  *(v5 + 72) = v4;

  v7 = *(a1 + 32);
  v8 = v7[9];
  [v7 interPingInterval];
  dispatch_source_set_timer(v8, 0, (v9 * 1000000000.0), 0x989680uLL);
  v10 = *(a1 + 32);
  v11 = *(v10 + 72);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __32__ICMPPingProbe_startThePinging__block_invoke_2;
  handler[3] = &unk_279968290;
  handler[4] = v10;
  dispatch_source_set_event_handler(v11, handler);
  dispatch_resume(*(*(a1 + 32) + 72));
  v12 = [*(a1 + 32) queue];
  v13 = dispatch_source_create(v3, 0, 0, v12);
  v14 = *(a1 + 32);
  v15 = *(v14 + 80);
  *(v14 + 80) = v13;

  dispatch_source_set_timer(*(*(a1 + 32) + 80), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  v16 = *(a1 + 32);
  v17 = *(v16 + 80);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __32__ICMPPingProbe_startThePinging__block_invoke_3;
  v18[3] = &unk_279968290;
  v18[4] = v16;
  dispatch_source_set_event_handler(v17, v18);
  dispatch_resume(*(*(a1 + 32) + 80));
}

void __32__ICMPPingProbe_startThePinging__block_invoke_3(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) setCurrentBurst:{objc_msgSend(*(a1 + 32), "currentBurst") + 1}];
  netqual_log_init(v2, v3);
  v4 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEBUG))
  {
    __32__ICMPPingProbe_startThePinging__block_invoke_3_cold_1(v1, v4);
  }

  [*v1 sendPingWithData:0];
  v5 = *(*v1 + 9);
  [*v1 interPingInterval];
  v7 = dispatch_time(0, (v6 * 1000000000.0));
  [*v1 interPingInterval];
  dispatch_source_set_timer(v5, v7, (v8 * 1000000000.0), 0x989680uLL);
}

- (BOOL)startRunLoop
{
  v7 = *MEMORY[0x277D85DE8];
  if (!self->_pingRunLoop)
  {
    memset(&v6, 0, sizeof(v6));
    v3 = dispatch_semaphore_create(0);
    pingRunLoopReady = self->_pingRunLoopReady;
    self->_pingRunLoopReady = v3;

    if (!self->_pingRunLoopReady)
    {
      [ICMPPingProbe startRunLoop];
    }

    pthread_attr_init(&v6);
    pthread_attr_setdetachstate(&v6, 2);
    if (pthread_create(&self->_pingThread, &v6, ping_runloop_thread, self))
    {
      [ICMPPingProbe startRunLoop];
    }

    pthread_attr_destroy(&v6);
    dispatch_semaphore_wait(self->_pingRunLoopReady, 0xFFFFFFFFFFFFFFFFLL);
    if (!self->_pingRunLoop)
    {
      [ICMPPingProbe startRunLoop];
    }
  }

  return 1;
}

- (void)stopRunLoop
{
  if (self->_pingRunLoop)
  {
    self->_pingRunLoop = 0;
  }

  if (self->_pingRunLoopReady)
  {
    self->_pingRunLoopReady = 0;
    MEMORY[0x2821F96F8]();
  }
}

void __32__ICMPPingProbe_loadStringUtils__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __32__ICMPPingProbe_loadStringUtils__block_invoke_cold_2(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = a1;
  dlerror();
  *v3 = 136315650;
  OUTLINED_FUNCTION_0();
  *&v3[7] = 157;
  v3[9] = 2080;
  v4 = v2;
  _os_log_error_impl(&dword_25B859000, v1, OS_LOG_TYPE_ERROR, "%s:%u - CoreUtils failed to load due to %s\n", v3, 0x1Cu);
}

- (void)setPayloadSize:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setPayloadSize:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)startICMPPingTestTo:hostName:interface:pingCount:interPingInterval:burstCount:interBurstInterval:timeout:stopTestOnFirstSuccess:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __145__ICMPPingProbe_startICMPPingTestTo_hostName_interface_pingCount_interPingInterval_burstCount_interBurstInterval_timeout_stopTestOnFirstSuccess___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_15();
  [*(v3 + 32) hostName];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_14();
  if (!v4)
  {
    v1 = [*(v2 + 32) ipAddress];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
  if (!v0)
  {
  }
}

void __25__ICMPPingProbe_sendPing__block_invoke_cold_1(uint64_t a1)
{
  v2 = [*(a1 + 32) pings];
  v3 = [v2 count] + 1;
  if (!(v3 % [*(a1 + 32) pingCount]))
  {
    [*(a1 + 32) pingCount];
  }

  [*(a1 + 32) pingCount];
  [*(a1 + 32) currentBurst];
  [*(a1 + 32) burstCount];
  v10 = 136316418;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13(&dword_25B859000, v4, v5, "%s:%u - Sending ping %lu of %lu of burst %lu of %lu", v6, v7, v8, v9, v10);
}

- (void)pingDidSendToAddress:(void *)a1 packet:(void *)a2 sequence:.cold.1(void *a1, void *a2)
{
  v3 = a2;
  if (!a2)
  {
    v3 = [a1 ipAddress];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x26u);
  if (!a2)
  {
  }
}

- (void)pingDidReceivePingResponseFromAddress:packet:sequence:.cold.1()
{
  OUTLINED_FUNCTION_15();
  [v3 hostName];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_14();
  if (!v4)
  {
    v1 = [v2 ipAddress];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x1Cu);
  if (!v0)
  {
  }
}

- (void)pingDidReceivePingResponseFromAddress:(void *)a1 packet:(void *)a2 sequence:.cold.2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 pings];
  [v4 count];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Cu);
}

- (void)pingDidReceivePingResponseFromAddress:packet:sequence:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)pingDidReceivePingResponseFromAddress:packet:sequence:.cold.5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)pingDidReceivePingResponseFromAddress:packet:sequence:.cold.6()
{
  OUTLINED_FUNCTION_15();
  [v3 hostName];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_14();
  if (!v4)
  {
    v1 = [v2 ipAddress];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x1Cu);
  if (!v0)
  {
  }
}

- (void)pingDidReceivePingResponseFromAddress:packet:sequence:.cold.7()
{
  OUTLINED_FUNCTION_15();
  [v3 hostName];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_14();
  if (!v4)
  {
    v1 = [v2 ipAddress];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x1Cu);
  if (!v0)
  {
  }
}

- (void)pingDidReceiveUnexpectedPingResponseFromAddress:packet:sequence:.cold.1()
{
  OUTLINED_FUNCTION_15();
  [v3 hostName];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_14();
  if (!v4)
  {
    v1 = [v2 ipAddress];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
  if (!v0)
  {
  }
}

- (void)pingDidReceiveUnexpectedPingResponseFromAddress:packet:sequence:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)pingDidReceiveUnexpectedPingResponseFromAddress:packet:sequence:.cold.3()
{
  OUTLINED_FUNCTION_15();
  [v3 hostName];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_14();
  if (!v4)
  {
    v1 = [v2 ipAddress];
  }

  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x1Cu);
  if (!v0)
  {
  }
}

- (void)sendPingWithData:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)sendPingWithData:.cold.5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)sendPingWithData:.cold.6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_12();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

+ (void)icmpIPv4OffsetInPacket:.cold.1()
{
  OUTLINED_FUNCTION_19(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

+ (void)icmpIPv4OffsetInPacket:.cold.2()
{
  OUTLINED_FUNCTION_19(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

- (void)isValidIPv6PingResponsePacket:(uint64_t)a1 isForMe:(void *)a2 sequence:isBadPacket:.cold.1(uint64_t a1, void *a2)
{
  v3 = a2;
  [OUTLINED_FUNCTION_18() length];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_16();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

- (void)isValidIPv6PingResponsePacket:(void *)a3 isForMe:sequence:isBadPacket:.cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [OUTLINED_FUNCTION_17() pingCount];
  [OUTLINED_FUNCTION_18() burstCount];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Cu);
}

- (void)isValidIPv6PingResponsePacket:isForMe:sequence:isBadPacket:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)isValidIPv4PingResponsePacket:isForMe:sequence:isBadPacket:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315906;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_25B859000, v2, OS_LOG_TYPE_ERROR, "%s:%u - unexpected ICMP checksum (%d) should be %d", v3, 0x1Eu);
}

- (void)isValidIPv4PingResponsePacket:(void *)a3 isForMe:sequence:isBadPacket:.cold.2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [OUTLINED_FUNCTION_17() pingCount];
  [OUTLINED_FUNCTION_18() burstCount];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Cu);
}

- (void)isValidIPv4PingResponsePacket:isForMe:sequence:isBadPacket:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)isValidIPv4PingResponsePacket:(uint64_t)a1 isForMe:(void *)a2 sequence:isBadPacket:.cold.4(uint64_t a1, void *a2)
{
  v3 = a2;
  [OUTLINED_FUNCTION_18() length];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_16();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x26u);
}

void __32__ICMPPingProbe_startThePinging__block_invoke_3_cold_1(id *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [v3 pings];
  [v5 count];
  [*a1 pingCount];
  [*a1 pingCount];
  [*a1 currentBurst];
  [*a1 burstCount];
  v12 = 136316418;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13(&dword_25B859000, v6, v7, "%s:%u - Burst delay over. Sending ping %lu of %lu of burst %lu of %lu", v8, v9, v10, v11, v12);
}

@end