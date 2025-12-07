@interface ICMPPingProbe
+ (BOOL)loadStringUtils;
+ (unint64_t)icmpIPv4OffsetInPacket:(id)packet;
- (ICMPPingProbe)initWithQueue:(id)queue;
- (id)_shortErrorFromError:(void *)error;
- (uint64_t)isValidIPv4PingResponsePacket:(BOOL *)packet isForMe:(_WORD *)me sequence:(_BYTE *)sequence isBadPacket:;
- (uint64_t)isValidIPv6PingResponsePacket:(BOOL *)packet isForMe:(_WORD *)me sequence:(_BYTE *)sequence isBadPacket:;
- (void)_didFailWithError:(void *)error;
- (void)_pingDidFailToSendToAddress:(uint64_t)address packet:(uint64_t)packet sequence:(void *)sequence error:;
- (void)_pingDidReceivePingResponseFromAddress:(void *)address packet:(uint64_t)packet sequence:;
- (void)_pingDidReceiveUnexpectedPingResponseFromAddress:(void *)address packet:(uint64_t)packet sequence:;
- (void)_pingDidSendToAddress:(uint64_t)address packet:(uint64_t)packet sequence:;
- (void)_readData;
- (void)_sendPing;
- (void)_sendPingWithData:(uint64_t)data;
- (void)_startThePinging;
- (void)_stopDataTransfer;
- (void)dealloc;
- (void)setPayloadSize:(unint64_t)size;
- (void)startICMPPingTestTo:(id)to hostName:(id)name interface:(unsigned int)interface pingCount:(int64_t)count interPingInterval:(double)interval burstCount:(int64_t)burstCount interBurstInterval:(double)burstInterval timeout:(double)self0 stopTestOnFirstSuccess:(BOOL)self1;
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
  v9 = *MEMORY[0x277D85DE8];
  v0 = +[TestProbe loadCoreUtils];
  if (v0)
  {
    v1 = v0;
    v2 = dlsym(v0, "StringToSockAddr");
    v3 = v2;
    if (v2)
    {
      gStringToSockAddrFunc = v2;
    }

    else
    {
      v6 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Failed to load StringToSockAddr() in CoreUtils framework.", &v7, 2u);
      }
    }

    dlclose(v1);
    loadStringUtils_loadedCU = v3 != 0;
  }

  else
  {
    v4 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v7 = 136315138;
      v8 = dlerror();
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "CoreUtils failed to load due to %s\n", &v7, 0xCu);
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
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pings = v3->_pings;
    v3->_pings = v4;

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
  v11 = *MEMORY[0x277D85DE8];
  if (self->_payloadSize != size)
  {
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
      v5 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v9 = 134217984;
        sizeCopy2 = size;
        _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "Invalid requested ICMP Ping payload size (%lu)", &v9, 0xCu);
      }

      sizeCopy = 4096;
    }

    self->_payloadSize = sizeCopy;
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      payloadSize = self->_payloadSize;
      v9 = 134217984;
      sizeCopy2 = payloadSize;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "ICMP Ping Payload Size set to %lu", &v9, 0xCu);
    }
  }
}

- (void)startICMPPingTestTo:(id)to hostName:(id)name interface:(unsigned int)interface pingCount:(int64_t)count interPingInterval:(double)interval burstCount:(int64_t)burstCount interBurstInterval:(double)burstInterval timeout:(double)self0 stopTestOnFirstSuccess:(BOOL)self1
{
  v17 = *&interface;
  nameCopy = name;
  toCopy = to;
  [(TestProbe *)self setRunning:1];
  [(TestProbe *)self setStatus:1];
  [(ICMPPingProbe *)self setIpAddress:toCopy];

  [(ICMPPingProbe *)self setHostName:nameCopy];
  [(ICMPPingProbe *)self setInterfaceIndex:v17];
  self->stopTestOnFirstSuccess = success;
  [(ICMPPingProbe *)self setPingCount:count];
  [(ICMPPingProbe *)self setInterPingInterval:interval];
  [(ICMPPingProbe *)self setBurstCount:burstCount];
  [(ICMPPingProbe *)self setInterBurstInterval:burstInterval];
  [(ICMPPingProbe *)self _startThePinging];
  v22 = (burstCount - 1) * burstInterval;
  if ((interval + 10.0) * count * v22 >= timeout)
  {
    timeout = (interval + 10.0) * count * v22;
  }

  queue = [(TestProbe *)self queue];
  v24 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
  timeoutTimer = self->timeoutTimer;
  self->timeoutTimer = v24;

  v26 = self->timeoutTimer;
  v27 = dispatch_time(0, (timeout * 1000000000.0));
  dispatch_source_set_timer(v26, v27, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  v28 = self->timeoutTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __145__ICMPPingProbe_startICMPPingTestTo_hostName_interface_pingCount_interPingInterval_burstCount_interBurstInterval_timeout_stopTestOnFirstSuccess___block_invoke;
  handler[3] = &unk_27898A0C8;
  handler[4] = self;
  dispatch_source_set_event_handler(v28, handler);
  dispatch_resume(self->timeoutTimer);
}

void __145__ICMPPingProbe_startICMPPingTestTo_hostName_interface_pingCount_interPingInterval_burstCount_interBurstInterval_timeout_stopTestOnFirstSuccess___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = [*(a1 + 32) hostName];
    v4 = v3;
    if (!v3)
    {
      v4 = [*(a1 + 32) ipAddress];
    }

    *buf = 138477827;
    v11 = v4;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_ERROR, "Ping: Timed out waiting for ping response to %{private}@", buf, 0xCu);
    if (!v3)
    {
    }
  }

  [*(a1 + 32) stopTest];
  v5 = [*(a1 + 32) pings];
  if (![v5 count])
  {

    goto LABEL_11;
  }

  v6 = [*(a1 + 32) successCount];

  if (!v6)
  {
LABEL_11:
    v7 = 3;
    goto LABEL_12;
  }

  v7 = 2;
LABEL_12:
  [*(a1 + 32) setStatus:v7];
  v8 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __145__ICMPPingProbe_startICMPPingTestTo_hostName_interface_pingCount_interPingInterval_burstCount_interBurstInterval_timeout_stopTestOnFirstSuccess___block_invoke_6;
  block[3] = &unk_27898A0C8;
  block[4] = *(a1 + 32);
  dispatch_async(v8, block);
}

void __145__ICMPPingProbe_startICMPPingTestTo_hostName_interface_pingCount_interPingInterval_burstCount_interBurstInterval_timeout_stopTestOnFirstSuccess___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v6 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = [v4 pings];
    [v6 icmpPingProbe:v4 completedIterations:objc_msgSend(v5 successfulCount:"count") withError:{objc_msgSend(*(a1 + 32), "successCount"), 0}];
  }
}

void __55__ICMPPingProbe__pingDidSendToAddress_packet_sequence___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 icmpPingProbe:*(a1 + 32) echoRequestSent:*(a1 + 40) success:1];
  }
}

void __82__ICMPPingProbe__pingDidReceiveUnexpectedPingResponseFromAddress_packet_sequence___block_invoke(uint64_t a1)
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
    v9 = [*(a1 + 32) delegate];
    v7 = *(a1 + 32);
    v8 = [v7 pings];
    [v9 icmpPingProbe:v7 completedIterations:objc_msgSend(v8 successfulCount:"count") withError:{objc_msgSend(*(a1 + 32), "successCount"), 0}];
  }
}

- (void)stopTest
{
  [self setRunning:0];
  [(ICMPPingProbe *)self _stopDataTransfer];
  v2 = self[9];
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = self[9];
    self[9] = 0;
  }

  v4 = self[10];
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = self[10];
    self[10] = 0;
  }

  v6 = self[8];
  if (v6)
  {
    dispatch_source_cancel(v6);
    v7 = self[8];
    self[8] = 0;
  }
}

void __35__ICMPPingProbe__didFailWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v6 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = [v4 pings];
    [v6 icmpPingProbe:v4 completedIterations:objc_msgSend(v5 successfulCount:"count") withError:{objc_msgSend(*(a1 + 32), "successCount"), *(a1 + 40)}];
  }
}

+ (unint64_t)icmpIPv4OffsetInPacket:(id)packet
{
  v14 = *MEMORY[0x277D85DE8];
  packetCopy = packet;
  if ([packetCopy length] < 0x30)
  {
    goto LABEL_10;
  }

  bytes = [packetCopy bytes];
  v5 = bytes;
  if ((*bytes & 0xF0) != 0x40)
  {
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = *v5 >> 4;
      v12 = 67109120;
      v13 = v8;
      v9 = "This is not an IPv4 packet! What is it? (%d)";
LABEL_9:
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, v9, &v12, 8u);
    }

LABEL_10:
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_11;
  }

  if (bytes[9] != 1)
  {
    v7 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = v5[9];
      v12 = 67109120;
      v13 = v10;
      v9 = "This is not an ICMP packet! What is it? (%d)";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v6 = 4 * (*bytes & 0x3F);
LABEL_11:

  return v6;
}

- (void)_readData
{
  v0 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_23255B000, v0, OS_LOG_TYPE_ERROR, "ping socket is invalid. Bailing readData", v1, 2u);
  }
}

void __26__ICMPPingProbe__readData__block_invoke(uint64_t result)
{
  if (*(result + 58) == 1)
  {
    __26__ICMPPingProbe__readData__block_invoke_cold_2(result);
  }

  else if (*(result + 59) == 1)
  {
    if ((*(result + 60) & 1) != 0 || (v2 = *(result + 56), v2 != 0xFFFF) && (v3 = [*(result + 32) pingCount], objc_msgSend(*(result + 32), "burstCount") * v3 <= v2))
    {
      __26__ICMPPingProbe__readData__block_invoke_cold_1(result);
    }
  }
}

uint64_t __33__ICMPPingProbe__startThePinging__block_invoke_2(uint64_t a1)
{
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_INFO, "ICMP ping socket handler has been cancelled, cleaning up", v4, 2u);
  }

  result = close(*(*(a1 + 32) + 112));
  *(*(a1 + 32) + 112) = -1;
  return result;
}

void __33__ICMPPingProbe__startThePinging__block_invoke_57(uint64_t a1)
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
  handler[2] = __33__ICMPPingProbe__startThePinging__block_invoke_2_58;
  handler[3] = &unk_27898A0C8;
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
  v18[2] = __33__ICMPPingProbe__startThePinging__block_invoke_3;
  v18[3] = &unk_27898A0C8;
  v18[4] = v16;
  dispatch_source_set_event_handler(v17, v18);
  dispatch_resume(*(*(a1 + 32) + 80));
}

- (void)_startThePinging
{
  v53 = *MEMORY[0x277D85DE8];
  if (self)
  {
    ipAddress = [self ipAddress];
    uTF8String = [ipAddress UTF8String];

    memset(v49, 0, sizeof(v49));
    v50 = 0;
    v48 = 0;
    if (gStringToSockAddrFunc(uTF8String, v49, 28, &v48))
    {
      queue2 = debuggabilityLogHandle;
      if (!OUTLINED_FUNCTION_14())
      {
        return;
      }

      v5 = queue2;
      ipAddress2 = [OUTLINED_FUNCTION_4() ipAddress];
      v51 = 138477827;
      v52 = ipAddress2;
      OUTLINED_FUNCTION_10();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);

      goto LABEL_24;
    }

    if (BYTE1(v49[0]) == 2)
    {
      v12 = objc_alloc(MEMORY[0x277CBEA90]);
      v13 = 16;
    }

    else
    {
      if (BYTE1(v49[0]) != 30)
      {
        if (OUTLINED_FUNCTION_14())
        {
          v51 = 67109120;
          LODWORD(v52) = BYTE1(v49[0]);
          OUTLINED_FUNCTION_10();
          _os_log_impl(v33, v34, v35, v36, v37, 8u);
        }

LABEL_10:
        bytes = [*(self + 104) bytes];
        queue2 = bytes;
        v17 = *(bytes + 1);
        if (v17 == 30)
        {
          v19 = *(self + 128);
          if (v19 && !*(bytes + 24))
          {
            *(bytes + 24) = v19;
          }

          *(self + 120) = 1;
          queue2 = socket(30, 2, 58);
          if ((queue2 & 0x80000000) == 0)
          {
            goto LABEL_23;
          }

          v18 = *__error();
          if (OUTLINED_FUNCTION_15())
          {
            v51 = 67109120;
            LODWORD(v52) = v18;
            goto LABEL_21;
          }
        }

        else
        {
          if (v17 != 2)
          {
            if (OUTLINED_FUNCTION_15())
            {
              v38 = *(queue2 + 1);
              v51 = 67109120;
              LODWORD(v52) = v38;
              OUTLINED_FUNCTION_22();
              _os_log_impl(v39, v40, v41, v42, v43, 8u);
            }

            v18 = 43;
            goto LABEL_31;
          }

          *(self + 120) = 0;
          queue2 = socket(2, 2, 1);
          if ((queue2 & 0x80000000) == 0)
          {
LABEL_23:
            *(self + 112) = queue2;
            v25 = *(self + 112);
            queue = [self queue];
            v27 = dispatch_source_create(MEMORY[0x277D85D28], v25, 0, queue);
            v28 = *(self + 88);
            *(self + 88) = v27;

            v29 = OUTLINED_FUNCTION_19();
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 3221225472;
            handler[2] = __33__ICMPPingProbe__startThePinging__block_invoke;
            handler[3] = &unk_27898A0C8;
            handler[4] = self;
            dispatch_source_set_event_handler(v29, handler);
            v30 = OUTLINED_FUNCTION_19();
            v46[0] = MEMORY[0x277D85DD0];
            v46[1] = 3221225472;
            v46[2] = __33__ICMPPingProbe__startThePinging__block_invoke_2;
            v46[3] = &unk_27898A0C8;
            v46[4] = self;
            dispatch_source_set_cancel_handler(v30, v46);
            v31 = OUTLINED_FUNCTION_19();
            dispatch_activate(v31);
            queue2 = [self queue];
            OUTLINED_FUNCTION_1_4();
            v45[1] = 3221225472;
            v45[2] = __33__ICMPPingProbe__startThePinging__block_invoke_57;
            v45[3] = &unk_27898A0C8;
            v45[4] = self;
            dispatch_async(v32, v45);
LABEL_24:

            return;
          }

          v18 = *__error();
          if (OUTLINED_FUNCTION_15())
          {
            v51 = 67109120;
            LODWORD(v52) = v18;
LABEL_21:
            OUTLINED_FUNCTION_22();
            _os_log_impl(v20, v21, v22, v23, v24, 8u);
          }
        }

        if (!v18)
        {
          goto LABEL_23;
        }

LABEL_31:
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v18 userInfo:0];
        objc_claimAutoreleasedReturnValue();
        v44 = OUTLINED_FUNCTION_4();
        [(ICMPPingProbe *)v44 _didFailWithError:queue2];
        goto LABEL_24;
      }

      v12 = objc_alloc(MEMORY[0x277CBEA90]);
      v13 = 28;
    }

    v14 = [v12 initWithBytes:v49 length:v13];
    v15 = *(self + 104);
    *(self + 104) = v14;

    goto LABEL_10;
  }
}

- (id)_shortErrorFromError:(void *)error
{
  v3 = a2;
  v4 = v3;
  if (error)
  {
    localizedFailureReason = [v3 localizedFailureReason];
    if (!localizedFailureReason)
    {
      localizedFailureReason = [v4 localizedDescription];
      if (!localizedFailureReason)
      {
        localizedFailureReason = [v4 description];
      }
    }

    error = localizedFailureReason;
  }

  return error;
}

- (void)_sendPing
{
  if (!self)
  {
    return;
  }

  pings = [self pings];
  if (![pings count])
  {

    goto LABEL_10;
  }

  pings2 = [self pings];
  v4 = [pings2 count];
  v5 = v4 % [self pingCount];

  if (v5)
  {
LABEL_10:
    queue = [self queue];
    OUTLINED_FUNCTION_2_1();
    v16 = 3221225472;
    v17 = __26__ICMPPingProbe__sendPing__block_invoke;
    v18 = &unk_27898A0C8;
    selfCopy = self;
    dispatch_async(v12, block);

    return;
  }

  if ([self burstCount] < 2 || (objc_msgSend(self, "currentBurst"), pings >= objc_msgSend(OUTLINED_FUNCTION_4(), "burstCount")))
  {
    v13 = self[9];
    if (v13)
    {
      dispatch_source_cancel(v13);
      v14 = self[9];
      self[9] = 0;
    }
  }

  else
  {
    dispatch_source_set_timer(self[9], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    v6 = self[10];
    [self interBurstInterval];
    v8 = v7;
    [self interPingInterval];
    v10 = dispatch_time(0, ((v8 - v9) * 1000000000.0));

    dispatch_source_set_timer(v6, v10, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  }
}

- (void)_sendPingWithData:(uint64_t)data
{
  v76 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (data)
  {
    if ((*(data + 112) & 0x80000000) != 0)
    {
      v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:9 userInfo:0];
      v8 = OUTLINED_FUNCTION_7();
      [(ICMPPingProbe *)v8 _pingDidFailToSendToAddress:v9 packet:v10 sequence:v11 error:v7];
LABEL_45:

      goto LABEL_46;
    }

    v7 = v5;
    if (v7)
    {
LABEL_12:
      if (*(data + 120) == 1)
      {
        v14 = objc_alloc(MEMORY[0x277CBEB28]);
        v15 = [v2 initWithLength:{objc_msgSend(OUTLINED_FUNCTION_21(), "length") + 8}];
        mutableBytes = [v15 mutableBytes];
        *mutableBytes = 128;
        OUTLINED_FUNCTION_3_0();
        *(v17 + 4) = v18;
        OUTLINED_FUNCTION_3_0();
        *(v19 + 6) = v20;
        [v7 bytes];
        v21 = [OUTLINED_FUNCTION_11() length];
        memcpy(mutableBytes + 2, v3, v21);
        v69 = 1;
        if (setsockopt(*(data + 112), 0xFFFF, 4356, &v69, 4u) < 0)
        {
          v22 = *__error();
          if (OUTLINED_FUNCTION_16())
          {
            LODWORD(v75.msg_name) = 67109120;
            HIDWORD(v75.msg_name) = v22;
            OUTLINED_FUNCTION_5();
            _os_log_impl(v23, v24, v25, v26, v27, 8u);
          }
        }

        else
        {
          v22 = 0;
        }

        v44 = OUTLINED_FUNCTION_8() + 8;
        v75.msg_name = [*(data + 104) bytes];
        v75.msg_namelen = [*(data + 104) length];
        v73 = mutableBytes;
        v74 = v44;
        v75.msg_iov = &v73;
        v75.msg_iovlen = 1;
        v45 = sendmsg(*(data + 112), &v75, 0);
        v46 = v45;
        if (v45 < 0 || v45 != v44)
        {
          v22 = *__error();
          if (OUTLINED_FUNCTION_16())
          {
            OUTLINED_FUNCTION_23();
            v70 = v44;
            v71 = 1024;
            v72 = v22;
            OUTLINED_FUNCTION_5();
            _os_log_impl(v47, v48, v49, v50, v51, 0x1Cu);
          }
        }
      }

      else
      {
        if (*(data + 128))
        {
          if (setsockopt(*(data + 112), 0, 25, (data + 128), 4u))
          {
            v2 = debuggabilityLogHandle;
            if (OUTLINED_FUNCTION_13())
            {
              v75.msg_name = 67109120;
              OUTLINED_FUNCTION_9();
              _os_log_impl(v28, v29, v30, v31, v32, 8u);
            }
          }
        }

        v33 = objc_alloc(MEMORY[0x277CBEB28]);
        v15 = [v2 initWithLength:{objc_msgSend(OUTLINED_FUNCTION_21(), "length") + 28}];
        mutableBytes2 = [v15 mutableBytes];
        *mutableBytes2 = 8;
        OUTLINED_FUNCTION_3_0();
        *(v35 + 4) = v36;
        OUTLINED_FUNCTION_3_0();
        *(v37 + 6) = v38;
        [v7 bytes];
        v39 = [OUTLINED_FUNCTION_11() length];
        memcpy((mutableBytes2 + 28), v3, v39);
        bytes = [v15 bytes];
        v41 = [v15 length];
        if (v41 < 2)
        {
          v42 = 0;
        }

        else
        {
          v42 = 0;
          do
          {
            v43 = *bytes++;
            v42 += v43;
            v41 -= 2;
          }

          while (v41 > 1);
        }

        if (v41)
        {
          v42 += *bytes;
        }

        *(mutableBytes2 + 2) = ~(HIWORD(v42) + v42 + (((v42 >> 16) + v42) >> 16));
        v52 = OUTLINED_FUNCTION_8() + 28;
        v75.msg_name = [*(data + 104) bytes];
        v75.msg_namelen = [*(data + 104) length];
        v73 = mutableBytes2;
        v74 = v52;
        v75.msg_iov = &v73;
        v75.msg_iovlen = 1;
        v53 = sendmsg(*(data + 112), &v75, 0);
        v46 = v53;
        if (v53 < 0 || (v22 = 0, v53 != v52))
        {
          v22 = *__error();
          if (OUTLINED_FUNCTION_16())
          {
            OUTLINED_FUNCTION_23();
            v70 = v52;
            v71 = 1024;
            v72 = v22;
            OUTLINED_FUNCTION_5();
            _os_log_impl(v54, v55, v56, v57, v58, 0x1Cu);
          }
        }
      }

      if (v46 >= 1 && v46 == [v15 length])
      {
        v59 = OUTLINED_FUNCTION_7();
        [(ICMPPingProbe *)v59 _pingDidSendToAddress:v60 packet:v61 sequence:v62];
      }

      else
      {
        if (v22)
        {
          v63 = v22;
        }

        else
        {
          v63 = 55;
        }

        v64 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:v63 userInfo:0];
        v65 = OUTLINED_FUNCTION_7();
        [(ICMPPingProbe *)v65 _pingDidFailToSendToAddress:v66 packet:v67 sequence:v68 error:v64];
      }

      ++*(data + 118);

      goto LABEL_45;
    }

    if (*(data + 136) == 56)
    {
      v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%28zd bottles of beer on the wall", (100 * (*(data + 118) / 0x64u) - *(data + 118) + 99)];
      v12 = [v2 dataUsingEncoding:1];
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:*(data + 136)];
      v2 = v13;
      if (!v13)
      {
        v7 = 0;
LABEL_11:

        goto LABEL_12;
      }

      arc4random_buf([v13 bytes], objc_msgSend(v13, "length"));
      v12 = v2;
      v2 = v12;
    }

    v7 = v12;
    goto LABEL_11;
  }

LABEL_46:
}

- (void)_pingDidSendToAddress:(uint64_t)address packet:(uint64_t)packet sequence:
{
  if (self)
  {
    v5 = MEMORY[0x277CBEB38];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:packet];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_approximate_time()];
    v8 = [v5 dictionaryWithObjectsAndKeys:{v6, @"sequence", v7, @"sendtime", 0}];

    pings = [self pings];
    [pings addObject:v8];

    queue = [self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__ICMPPingProbe__pingDidSendToAddress_packet_sequence___block_invoke;
    block[3] = &unk_27898A7D0;
    block[4] = self;
    v13 = v8;
    v11 = v8;
    dispatch_async(queue, block);
  }
}

- (void)_pingDidFailToSendToAddress:(uint64_t)address packet:(uint64_t)packet sequence:(void *)sequence error:
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a2;
  sequenceCopy = sequence;
  if (self)
  {
    OUTLINED_FUNCTION_6();
    if (*(self + 184) && *(self + 200))
    {
      *(self + 124) = OUTLINED_FUNCTION_0_5(v10);
    }

    v11 = objc_alloc(MEMORY[0x277CBEB38]);
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:packet];
    v13 = [v11 initWithObjectsAndKeys:{v12, @"sequence", sequenceCopy, @"error", 0}];

    pings = [self pings];
    [pings addObject:v13];

    v15 = debuggabilityLogHandle;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      ipAddress = v8;
      if (!v8)
      {
        ipAddress = [self ipAddress];
      }

      *buf = 134218499;
      selfCopy = self;
      v22 = 2113;
      v23 = ipAddress;
      v24 = 2112;
      v25 = sequenceCopy;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "%p ping NOT sent to %{private}@ because %@", buf, 0x20u);
      if (!v8)
      {
      }
    }

    delegate = [self delegate];
    v18 = objc_opt_respondsToSelector();

    if (v18)
    {
      delegate2 = [self delegate];
      [delegate2 icmpPingProbe:self echoRequestSent:v13 success:0];
    }
  }
}

- (void)_pingDidReceivePingResponseFromAddress:(void *)address packet:(uint64_t)packet sequence:
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = a2;
  addressCopy = address;
  if (self)
  {
    OUTLINED_FUNCTION_6();
    if (*(self + 184) && *(self + 200))
    {
      *(self + 124) = OUTLINED_FUNCTION_0_5(v9);
    }

    v10 = debuggabilityLogHandle;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      hostName = [self hostName];
      ipAddress = hostName;
      if (!hostName)
      {
        ipAddress = [self ipAddress];
      }

      v44 = 138477827;
      selfCopy = ipAddress;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "ping response received from %{private}@", &v44, 0xCu);
      if (!hostName)
      {
      }
    }

    packetCopy = packet;
    pings = [self pings];
    v15 = [pings count];

    if (v15 <= packet)
    {
      v17 = debuggabilityLogHandle;
      if (OUTLINED_FUNCTION_16())
      {
        v29 = v17;
        pings2 = [OUTLINED_FUNCTION_11() pings];
        v31 = [pings2 count];
        v44 = 134218496;
        selfCopy = self;
        v46 = 1024;
        packetCopy2 = packet;
        v48 = 2048;
        v49 = v31;
        OUTLINED_FUNCTION_5();
        _os_log_impl(v32, v33, v34, v35, v36, 0x1Cu);
      }
    }

    else
    {
      pings3 = [self pings];
      v17 = [pings3 objectAtIndexedSubscript:packet];

      if (v17)
      {
        v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:packet];
        OUTLINED_FUNCTION_12();

        v19 = [v17 objectForKeyedSubscript:@"sendtime"];
        unsignedLongLongValue = [v19 unsignedLongLongValue];

        v21 = mach_approximate_time();
        v22 = v21 - unsignedLongLongValue;
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v21];
        [v17 setObject:v23 forKeyedSubscript:@"endtime"];

        0xF4240 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:nanosecondsFromMachAbsoluteTime(v22) / 0xF4240];
        OUTLINED_FUNCTION_12();

        v25 = DisplayAddressForAddress(v7);
        OUTLINED_FUNCTION_12();
      }

      delegate = [self delegate];
      v27 = objc_opt_respondsToSelector();

      if (v27)
      {
        delegate2 = [self delegate];
        [delegate2 icmpPingProbe:self echoResponseReceived:v17 success:1];
      }
    }

    if ((*(self + 56) & 1) != 0 || (v37 = [self burstCount], objc_msgSend(self, "pingCount") * v37 - 1 == packetCopy))
    {
      [self stopTest];
      pings4 = [self pings];
      if ([pings4 count])
      {
        successCount = [self successCount];

        if (successCount)
        {
          v40 = 2;
          goto LABEL_26;
        }
      }

      else
      {
      }

      v40 = 3;
LABEL_26:
      [self setStatus:v40];
      delegate3 = [self delegate];
      v42 = objc_opt_respondsToSelector();

      if (v42)
      {
        [self delegate];
        objc_claimAutoreleasedReturnValue();
        pings5 = [OUTLINED_FUNCTION_21() pings];
        [pings5 count];
        [delegate3 icmpPingProbe:self completedIterations:v17 successfulCount:objc_msgSend(OUTLINED_FUNCTION_11() withError:{"successCount"), 0}];
      }
    }
  }
}

- (void)_pingDidReceiveUnexpectedPingResponseFromAddress:(void *)address packet:(uint64_t)packet sequence:
{
  v57 = *MEMORY[0x277D85DE8];
  v7 = a2;
  addressCopy = address;
  if (!self)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_6();
  if (*(self + 184) && *(self + 200))
  {
    *(self + 124) = OUTLINED_FUNCTION_0_5(v9);
  }

  packetCopy = packet;
  pings = [self pings];
  v12 = [pings count];

  v13 = debuggabilityLogHandle;
  if (v12 <= packet)
  {
    if (!OUTLINED_FUNCTION_16())
    {
      goto LABEL_19;
    }

    v30 = v13;
    pings2 = [OUTLINED_FUNCTION_11() pings];
    v32 = [pings2 count];
    DisplayAddressForAddress(v7);
    *buf = 134218755;
    selfCopy = self;
    v51 = 1024;
    packetCopy2 = packet;
    v53 = 2048;
    v54 = v32;
    v56 = v55 = 2113;
    OUTLINED_FUNCTION_5();
    _os_log_impl(v33, v34, v35, v36, v37, 0x26u);
  }

  else
  {
    v14 = debuggabilityLogHandle;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      hostName = [self hostName];
      ipAddress = hostName;
      if (!hostName)
      {
        ipAddress = [self ipAddress];
      }

      *buf = 138477827;
      selfCopy = ipAddress;
      OUTLINED_FUNCTION_5();
      _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
      if (!hostName)
      {
      }
    }

    pings3 = [self pings];
    v13 = [pings3 objectAtIndexedSubscript:packet];

    if (v13)
    {
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:packet];
      OUTLINED_FUNCTION_12();

      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:100 userInfo:0];
      OUTLINED_FUNCTION_12();

      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:mach_approximate_time()];
      OUTLINED_FUNCTION_12();

      v26 = DisplayAddressForAddress(v7);
      OUTLINED_FUNCTION_12();
    }

    delegate = [self delegate];
    v28 = objc_opt_respondsToSelector();

    if (v28)
    {
      delegate2 = [self delegate];
      [delegate2 icmpPingProbe:self echoResponseReceived:v13 success:0];
    }
  }

LABEL_19:
  pingCount = [self pingCount];
  if ([self burstCount] * pingCount - 1 <= packetCopy)
  {
    v39 = debuggabilityLogHandle;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      hostName2 = [self hostName];
      ipAddress2 = hostName2;
      if (!hostName2)
      {
        ipAddress2 = [self ipAddress];
      }

      *buf = 138477827;
      selfCopy = ipAddress2;
      _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEBUG, "Stopping because this unexpected response is the last response to %{private}@", buf, 0xCu);
      if (!hostName2)
      {
      }
    }

    queue = [self queue];
    OUTLINED_FUNCTION_2_1();
    v45 = 3221225472;
    v46 = __82__ICMPPingProbe__pingDidReceiveUnexpectedPingResponseFromAddress_packet_sequence___block_invoke;
    v47 = &unk_27898A0C8;
    selfCopy2 = self;
    dispatch_async(v43, block);
  }

LABEL_27:
}

- (void)_stopDataTransfer
{
  if (self)
  {
    v2 = *(self + 88);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = OUTLINED_FUNCTION_19();
      *(self + v4) = 0;
    }
  }
}

- (void)_didFailWithError:(void *)error
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (error)
  {
    v4 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v8 = v4;
      v9 = [(ICMPPingProbe *)error _shortErrorFromError:v3];
      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_INFO, "ping failed because %@", buf, 0xCu);
    }

    v5 = error[9];
    if (v5)
    {
      dispatch_source_cancel(v5);
      v6 = error[9];
      error[9] = 0;
    }

    [error setRunning:0];
    [error setStatus:3];
    queue = [error queue];
    OUTLINED_FUNCTION_1_4();
    v10[1] = 3221225472;
    v10[2] = __35__ICMPPingProbe__didFailWithError___block_invoke;
    v10[3] = &unk_27898A7D0;
    v10[4] = error;
    v11 = v3;
    dispatch_async(queue, v10);
  }
}

- (uint64_t)isValidIPv6PingResponsePacket:(BOOL *)packet isForMe:(_WORD *)me sequence:(_BYTE *)sequence isBadPacket:
{
  *&v49[13] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = v9;
  if (!self)
  {
    goto LABEL_28;
  }

  if ([v9 length] < 8)
  {
    v13 = debuggabilityLogHandle;
    if (OUTLINED_FUNCTION_13())
    {
      v14 = v13;
      v46 = 134218240;
      selfCopy2 = self;
      v48 = 2048;
      *v49 = [v10 length];
      OUTLINED_FUNCTION_9();
      _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
    }

LABEL_10:
    if (sequence)
    {
      v25 = 0;
      *sequence = 1;
      goto LABEL_29;
    }

LABEL_28:
    v25 = 0;
    goto LABEL_29;
  }

  mutableBytes = [v10 mutableBytes];
  if (!mutableBytes)
  {
    if (OUTLINED_FUNCTION_13())
    {
      v46 = 134217984;
      selfCopy2 = self;
      OUTLINED_FUNCTION_9();
      _os_log_impl(v20, v21, v22, v23, v24, 0xCu);
    }

    goto LABEL_10;
  }

  v12 = *mutableBytes == 129 && mutableBytes[1] == 0;
  v26 = bswap32(*(mutableBytes + 2)) >> 16;
  v27 = self[58];
  v28 = bswap32(*(mutableBytes + 3)) >> 16;
  pingCount = [self pingCount];
  burstCount = [self burstCount];
  if (packet)
  {
    *packet = v26 == v27;
  }

  v31 = burstCount * pingCount;
  if (me)
  {
    *me = v28;
  }

  v32 = v26 == v27 && v12;
  if (v32 && v31 > v28)
  {
    v43 = debuggabilityLogHandle;
    v25 = 1;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      v46 = 134218496;
      OUTLINED_FUNCTION_18();
      v49[2] = v44;
      *&v49[3] = v45;
      _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_INFO, "%p Valid ICMP6_ECHO_REPLY (sequence %u) for me %u!", &v46, 0x18u);
    }
  }

  else
  {
    v25 = 0;
    if (v32 && v31 <= v28)
    {
      v34 = debuggabilityLogHandle;
      if (OUTLINED_FUNCTION_15())
      {
        v35 = v34;
        [self pingCount];
        [self burstCount];
        v46 = 134218496;
        OUTLINED_FUNCTION_18();
        v49[2] = 2048;
        *&v49[3] = v36;
        OUTLINED_FUNCTION_22();
        _os_log_impl(v37, v38, v39, v40, v41, 0x1Cu);
      }

      goto LABEL_28;
    }
  }

LABEL_29:

  return v25;
}

- (uint64_t)isValidIPv4PingResponsePacket:(BOOL *)packet isForMe:(_WORD *)me sequence:(_BYTE *)sequence isBadPacket:
{
  *&v65[13] = *MEMORY[0x277D85DE8];
  v9 = a2;
  if (!self)
  {
    goto LABEL_44;
  }

  v10 = [objc_opt_class() icmpIPv4OffsetInPacket:v9];
  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = debuggabilityLogHandle;
    if (OUTLINED_FUNCTION_13())
    {
      v12 = v11;
      *buf = 134218240;
      *v64 = self;
      *&v64[8] = 2048;
      *v65 = [v9 length];
      OUTLINED_FUNCTION_9();
      _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
    }

    goto LABEL_10;
  }

  v18 = v10;
  mutableBytes = [v9 mutableBytes];
  if (!mutableBytes)
  {
    if (OUTLINED_FUNCTION_13())
    {
      *buf = 134217984;
      *v64 = self;
      OUTLINED_FUNCTION_9();
      _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
    }

LABEL_10:
    if (sequence)
    {
      v26 = 0;
      *sequence = 1;
      goto LABEL_45;
    }

LABEL_44:
    v26 = 0;
    goto LABEL_45;
  }

  v20 = (mutableBytes + v18);
  sequenceCopy = sequence;
  if (*(mutableBytes + v18))
  {
    v62 = 0;
  }

  else
  {
    v62 = *(v20 + 1) == 0;
  }

  v27 = bswap32(v20[2]) >> 16;
  v28 = self[58];
  v29 = bswap32(v20[3]);
  pingCount = [self pingCount];
  burstCount = [self burstCount];
  v30 = v20[1];
  v20[1] = 0;
  v31 = [v9 length] - v18;
  if (v31 < 2)
  {
    v32 = 0;
    v33 = v20;
  }

  else
  {
    v32 = 0;
    v33 = v20;
    do
    {
      v34 = *v33++;
      v32 += v34;
      v31 -= 2;
    }

    while (v31 > 1);
  }

  v35 = HIWORD(v29);
  if (v31)
  {
    v32 += *v33;
  }

  v36 = (v32 >> 16) + v32 + (((v32 >> 16) + v32) >> 16);
  v20[1] = v30;
  if (packet)
  {
    *packet = v27 == v28;
  }

  v37 = ~v36;
  v38 = burstCount * pingCount;
  if (me)
  {
    *me = v35;
  }

  v39 = v62;
  if (v27 != v28)
  {
    v39 = 0;
  }

  if (!v39 || v38 <= v35 || v30 != v37)
  {
    if (v39)
    {
      if (v38 > v35)
      {
        if (v30 != v37)
        {
          if (OUTLINED_FUNCTION_15())
          {
            *buf = 67109376;
            *v64 = v30;
            *&v64[4] = 1024;
            *&v64[6] = v37;
            OUTLINED_FUNCTION_22();
            _os_log_impl(v53, v54, v55, v56, v57, 0xEu);
          }

          if (sequenceCopy)
          {
            v26 = 0;
            *sequenceCopy = 1;
            goto LABEL_45;
          }
        }
      }

      else
      {
        v42 = debuggabilityLogHandle;
        if (OUTLINED_FUNCTION_14())
        {
          v43 = v42;
          [self pingCount];
          [OUTLINED_FUNCTION_21() burstCount];
          *buf = 134218496;
          OUTLINED_FUNCTION_17();
          v65[2] = 2048;
          *&v65[3] = v44;
          OUTLINED_FUNCTION_10();
          _os_log_impl(v45, v46, v47, v48, v49, 0x1Cu);
        }
      }
    }

    goto LABEL_44;
  }

  v50 = debuggabilityLogHandle;
  v26 = 1;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 134218496;
    OUTLINED_FUNCTION_17();
    v65[2] = v51;
    *&v65[3] = v52;
    _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_INFO, "%p Valid ICMP_ECHOREPLY (sequence %u) for me %u!", buf, 0x18u);
  }

LABEL_45:

  return v26;
}

void __33__ICMPPingProbe__startThePinging__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setCurrentBurst:{objc_msgSend(*(a1 + 32), "currentBurst") + 1}];
  [(ICMPPingProbe *)*(a1 + 32) _sendPingWithData:?];
  v2 = *(a1 + 32);
  v3 = v2[9];
  [v2 interPingInterval];
  v5 = dispatch_time(0, (v4 * 1000000000.0));
  [*(a1 + 32) interPingInterval];

  dispatch_source_set_timer(v3, v5, (v6 * 1000000000.0), 0x989680uLL);
}

@end