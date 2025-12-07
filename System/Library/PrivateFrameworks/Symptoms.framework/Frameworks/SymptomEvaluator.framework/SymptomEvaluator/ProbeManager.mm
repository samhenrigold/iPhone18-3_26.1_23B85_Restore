@interface ProbeManager
- (ProbeManager)initWithQueue:(id)queue;
- (id)probeCallbackFunctions;
- (void)awdlPeerPollProbe:(id)probe serviceAdded:(id)added;
- (void)awdlPeerPollProbe:(id)probe serviceRemoved:(id)removed;
- (void)awdlPeerPollProbe:(id)probe serviceUpdated:(id)updated;
- (void)awdlPeerPollProbeIsComplete:(id)complete;
- (void)bonjourProbeComplete:(id)complete status:(unsigned int)status;
- (void)bonjourServiceAdded:(id)added isUpdatedService:(BOOL)service;
- (void)bonjourServiceRemoved:(id)removed;
- (void)cancelAllProbes;
- (void)dealloc;
- (void)icmpPingProbe:(id)probe completedIterations:(unint64_t)iterations successfulCount:(unint64_t)count withError:(id)error;
- (void)icmpPingProbe:(id)probe echoResponseReceived:(id)received success:(BOOL)success;
- (void)startAWDLPeerPollingWithDiagSession:(id)session services:(id)services count:(id)count interval:(id)interval;
- (void)startAirDropBonjourScan:(id)scan duration:(id)duration;
- (void)startGetNetworkInfo:(id)info;
- (void)startICMPPingForDiagSession:(id)session hostName:(id)name ipAddress:(id)address interface:(id)interface pingCount:(id)count interPingInterval:(id)interval burstCount:(id)burstCount interBurstInterval:(id)self0 timeout:(id)self1;
- (void)startTCPDumpForDiagSession:(id)session duration:(id)duration;
- (void)startTestHTTPForDiagSession:(id)session url:(id)url timeout:(id)timeout interfaceName:(id)name userAgent:(id)agent;
- (void)startTestTCPConnectionForDiagSession:(id)session url:(id)url host:(id)host port:(id)port interfaceName:(id)name timeout:(id)timeout;
- (void)stopTCPDump;
@end

@implementation ProbeManager

- (ProbeManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = ProbeManager;
  v6 = [(ProbeManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    probes = v7->_probes;
    v7->_probes = dictionary;
  }

  return v7;
}

- (void)dealloc
{
  [(ProbeManager *)self cancelAllProbes];
  v3.receiver = self;
  v3.super_class = ProbeManager;
  [(ProbeManager *)&v3 dealloc];
}

- (id)probeCallbackFunctions
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:@"startTestHTTPForDiagSession:url:timeout:interfaceName:userAgent:" forKey:@"StartTestHTTP"];
  [dictionary setObject:@"startTCPDumpForDiagSession:duration:" forKey:@"StartTCPDump"];
  [dictionary setObject:@"stopTCPDump" forKey:@"StopTCPDump"];
  [dictionary setObject:@"startGetNetworkInfo:" forKey:@"StartGetNetworkInfo"];
  [dictionary setObject:@"startAirDropBonjourScan:duration:" forKey:@"StartAirDropBonjourScan"];
  [dictionary setObject:@"startICMPPingForDiagSession:hostName:ipAddress:interface:pingCount:interPingInterval:burstCount:interBurstInterval:timeout:" forKey:@"StartICMPPing"];
  [dictionary setObject:@"startAWDLPeerPollingWithDiagSession:services:count:interval:" forKey:@"StartAWDLPeerPollProbe"];
  [dictionary setObject:@"startTestTCPConnectionForDiagSession:url:host:port:interfaceName:timeout:" forKey:@"StartTCPConnCheck"];

  return dictionary;
}

- (void)cancelAllProbes
{
  v20 = *MEMORY[0x277D85DE8];
  probes = [(ProbeManager *)self probes];
  v4 = [probes count];

  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    probes2 = [(ProbeManager *)self probes];
    v6 = [probes2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(probes2);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          probes3 = [(ProbeManager *)self probes];
          v12 = [probes3 objectForKey:v10];

          if ([v12 status] == 1 || objc_msgSend(v12, "status") == -1)
          {
            v13[0] = MEMORY[0x277D85DD0];
            v13[1] = 3221225472;
            v13[2] = __31__ProbeManager_cancelAllProbes__block_invoke;
            v13[3] = &unk_27898F0A0;
            v14 = v12;
            [v14 cancelTest:v13];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [probes2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [(NSMutableDictionary *)self->_probes removeAllObjects];
  }
}

id *__31__ProbeManager_cancelAllProbes__block_invoke(id *result, int a2)
{
  if (a2 == 4)
  {
    return [result[4] removeProbeOutputFiles];
  }

  return result;
}

- (void)startTestTCPConnectionForDiagSession:(id)session url:(id)url host:(id)host port:(id)port interfaceName:(id)name timeout:(id)timeout
{
  sessionCopy = session;
  urlCopy = url;
  hostCopy = host;
  portCopy = port;
  nameCopy = name;
  timeoutCopy = timeout;
  queue = [(ProbeManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__ProbeManager_startTestTCPConnectionForDiagSession_url_host_port_interfaceName_timeout___block_invoke;
  block[3] = &unk_27898F6C0;
  block[4] = self;
  v28 = portCopy;
  v29 = hostCopy;
  v30 = urlCopy;
  v31 = sessionCopy;
  v32 = timeoutCopy;
  v33 = nameCopy;
  v21 = nameCopy;
  v22 = timeoutCopy;
  v23 = sessionCopy;
  v24 = urlCopy;
  v25 = hostCopy;
  v26 = portCopy;
  dispatch_async(queue, block);
}

void __89__ProbeManager_startTestTCPConnectionForDiagSession_url_host_port_interfaceName_timeout___block_invoke(id *a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__15;
  v52 = __Block_byref_object_dispose__15;
  v2 = [TCPConnectionProbe alloc];
  v3 = [a1[4] queue];
  v53 = [(TestProbe *)v2 initWithQueue:v3];

  v4 = [a1[5] unsignedIntegerValue];
  v5 = a1[6];
  if ([v5 length] && (v4 - 0x10000) > 0xFFFFFFFFFFFF0000 || !objc_msgSend(a1[7], "length"))
  {
    v8 = v5;
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:a1[7]];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 host];

      v9 = [v7 port];
      v4 = [v9 unsignedIntegerValue];

      if (!v4)
      {
        v10 = [v7 scheme];
        v11 = [v10 isEqualToString:@"http"];

        if (v11)
        {
          v4 = 80;
        }

        else
        {
          v39 = [v7 scheme];
          v40 = [v39 isEqualToString:@"https"];

          if (v40)
          {
            v4 = 443;
          }

          else
          {
            v41 = debuggabilityLogHandle;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              v42 = [v7 scheme];
              *buf = 138412290;
              v55 = v42;
              _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_ERROR, "TCPConnectionProbe: Unable to infer target port for scheme %@.", buf, 0xCu);
            }

            v4 = 0;
          }
        }
      }
    }

    else
    {
      v12 = debuggabilityLogHandle;
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
      {
        v13 = a1[7];
        *buf = 138412290;
        v55 = v13;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, "TCPConnectionProbe: Failed to parse %@ into a valid URL.", buf, 0xCu);
      }

      v8 = v5;
    }
  }

  if ([v8 length] && (v4 - 1) <= 0xFFFE)
  {
    [v49[5] setDiagSessionUUID:a1[8]];
    v14 = v49[5];
    v15 = *(a1[4] + 3);
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [v15 setObject:v14 forKeyedSubscript:v17];

    v18 = v49[5];
    [a1[9] doubleValue];
    v20 = v19;
    v21 = a1[10];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __89__ProbeManager_startTestTCPConnectionForDiagSession_url_host_port_interfaceName_timeout___block_invoke_96;
    v43[3] = &unk_27898F698;
    v43[4] = a1[4];
    v46 = &v48;
    v22 = v8;
    v44 = v22;
    v47 = v4;
    v45 = a1[10];
    [v18 testConection:v22 port:v4 timeout:v21 interfaceName:v43 reply:v20];
    if (objc_opt_respondsToSelector())
    {
      v23 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"TCPConnProbe", @"kNDFProbeName", &unk_2847EFCE0, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", 0}];
      v24 = [v49[5] diagSessionUUID];
      v25 = [v24 length];

      if (v25)
      {
        v26 = [v49[5] diagSessionUUID];
        [v23 setObject:v26 forKeyedSubscript:@"kNDFProbeSessionUUID"];
      }

      v27 = MEMORY[0x277CBEB38];
      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
      v29 = [v27 dictionaryWithObjectsAndKeys:{v22, @"host", v28, @"port", 0}];

      if ([a1[10] length])
      {
        [v29 setObject:a1[10] forKeyedSubscript:@"interfaceName"];
      }

      [v23 setObject:v29 forKeyedSubscript:@"kNDFProbeContext"];
      v30 = [a1[4] delegate];
      [v30 probeStatusUpdate:v23];
    }
  }

  else
  {
    v31 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_ERROR))
    {
      v32 = a1[10];
      *buf = 138412802;
      v55 = v8;
      v56 = 2048;
      v57 = v4;
      v58 = 2112;
      v59 = v32;
      _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_ERROR, "TCPConnectionProbe: Invalid parameter to probe. (host:%@ port:%ld interface:%@)", buf, 0x20u);
    }

    if (objc_opt_respondsToSelector())
    {
      v33 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"TCPConnProbe", @"kNDFProbeName", &unk_2847EFCF8, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", 0}];
      if ([a1[8] length])
      {
        [v33 setObject:a1[8] forKeyedSubscript:@"kNDFProbeSessionUUID"];
      }

      v34 = [MEMORY[0x277CBEB38] dictionary];
      v35 = v34;
      if (v8)
      {
        [v34 setObject:v8 forKeyedSubscript:@"host"];
      }

      v36 = a1[10];
      if (v36)
      {
        [v35 setObject:v36 forKeyedSubscript:@"interfaceName"];
      }

      if (v4)
      {
        v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
        [v35 setObject:v37 forKeyedSubscript:@"port"];
      }

      [v33 setObject:v35 forKeyedSubscript:@"kNDFProbeContext"];
      v38 = [a1[4] delegate];
      [v38 probeStatusUpdate:v33];
    }
  }

  _Block_object_dispose(&v48, 8);
}

void __89__ProbeManager_startTestTCPConnectionForDiagSession_url_host_port_interfaceName_timeout___block_invoke_96(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [*(*(*(a1 + 56) + 8) + 40) status];
    v10 = MEMORY[0x277CBEB38];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    v12 = [v10 dictionaryWithObjectsAndKeys:{@"TCPConnProbe", @"kNDFProbeName", v11, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", 0}];

    v13 = [*(*(*(a1 + 56) + 8) + 40) diagSessionUUID];
    v14 = [v13 length];

    if (v14)
    {
      v15 = [*(*(*(a1 + 56) + 8) + 40) diagSessionUUID];
      [v12 setObject:v15 forKeyedSubscript:@"kNDFProbeSessionUUID"];
    }

    v16 = MEMORY[0x277CBEB38];
    v17 = *(a1 + 40);
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 64)];
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:a2];
    v20 = [v16 dictionaryWithObjectsAndKeys:{v17, @"host", v18, @"port", v19, @"duration", 0}];

    if ([*(a1 + 48) length])
    {
      [v20 setObject:*(a1 + 48) forKeyedSubscript:@"interfaceName"];
    }

    if ((a4 - 1) > 5)
    {
      v21 = @"Unknown";
    }

    else
    {
      v21 = off_27898F7D0[a4 - 1];
    }

    [v20 setObject:v21 forKeyedSubscript:@"tcpResult"];
    [v12 setObject:v20 forKeyedSubscript:@"kNDFProbeContext"];
    v22 = [*(a1 + 32) delegate];
    [v22 probeStatusUpdate:v12];
  }

  [*(*(a1 + 32) + 24) removeObjectForKey:@"TCPConnectionProbe"];
  v23 = *(*(a1 + 56) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = 0;
}

- (void)startTestHTTPForDiagSession:(id)session url:(id)url timeout:(id)timeout interfaceName:(id)name userAgent:(id)agent
{
  sessionCopy = session;
  urlCopy = url;
  timeoutCopy = timeout;
  nameCopy = name;
  agentCopy = agent;
  queue = [(ProbeManager *)self queue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __80__ProbeManager_startTestHTTPForDiagSession_url_timeout_interfaceName_userAgent___block_invoke;
  v23[3] = &unk_27898F710;
  v23[4] = self;
  v24 = sessionCopy;
  v25 = urlCopy;
  v26 = timeoutCopy;
  v27 = nameCopy;
  v28 = agentCopy;
  v18 = agentCopy;
  v19 = nameCopy;
  v20 = timeoutCopy;
  v21 = urlCopy;
  v22 = sessionCopy;
  dispatch_async(queue, v23);
}

void __80__ProbeManager_startTestHTTPForDiagSession_url_timeout_interfaceName_userAgent___block_invoke(uint64_t a1)
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__15;
  v32 = __Block_byref_object_dispose__15;
  v2 = [TestHTTPProbe alloc];
  v3 = [*(a1 + 32) queue];
  v33 = [(TestHTTPProbe *)v2 initWithQueue:v3];

  [v29[5] setDiagSessionUUID:*(a1 + 40)];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [*(*(a1 + 32) + 24) setObject:v29[5] forKeyedSubscript:v5];
  v6 = v29[5];
  v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:*(a1 + 48)];
  [*(a1 + 56) doubleValue];
  v9 = v8;
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __80__ProbeManager_startTestHTTPForDiagSession_url_timeout_interfaceName_userAgent___block_invoke_2;
  v21 = &unk_27898F6E8;
  v12 = *(a1 + 40);
  v22 = *(a1 + 32);
  v23 = v12;
  v24 = *(a1 + 48);
  v25 = *(a1 + 64);
  v13 = v5;
  v26 = v13;
  v27 = &v28;
  [v6 testURL:v7 timeout:v10 interfaceName:v11 userAgent:&v18 reply:v9];

  if (objc_opt_respondsToSelector())
  {
    v14 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"TestHTTPProbe", @"kNDFProbeName", &unk_2847EFCE0, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", 0, v18, v19, v20, v21, v22, v23, v24, v25}];
    v15 = v14;
    v16 = *(a1 + 40);
    if (v16)
    {
      [v14 setObject:v16 forKeyedSubscript:@"kNDFProbeSessionUUID"];
    }

    v17 = [*(a1 + 32) delegate];
    [v17 probeStatusUpdate:v15];
  }

  _Block_object_dispose(&v28, 8);
}

void __80__ProbeManager_startTestHTTPForDiagSession_url_timeout_interfaceName_userAgent___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v21 = a3;
  v6 = a4;
  v7 = [*(a1 + 32) delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    if (v6)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v10 = MEMORY[0x277CBEB38];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    v12 = [v10 dictionaryWithObjectsAndKeys:{@"TestHTTPProbe", @"kNDFProbeName", v11, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", 0}];

    v13 = *(a1 + 40);
    if (v13)
    {
      [v12 setObject:v13 forKeyedSubscript:@"kNDFProbeSessionUUID"];
    }

    v14 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{*(a1 + 48), @"url", *(a1 + 56), @"interfaceName", 0}];
    v15 = v14;
    if (v6)
    {
      v16 = @"error";
      v17 = v6;
    }

    else
    {
      v16 = @"response";
      v17 = v21;
    }

    [v14 setObject:v17 forKeyedSubscript:v16];
    [v12 setObject:v15 forKeyedSubscript:@"kNDFProbeContext"];
    v18 = [*(a1 + 32) delegate];
    [v18 probeStatusUpdate:v12];
  }

  [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 64)];
  v19 = *(*(a1 + 72) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = 0;
}

- (void)startTCPDumpForDiagSession:(id)session duration:(id)duration
{
  sessionCopy = session;
  durationCopy = duration;
  queue = [(ProbeManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ProbeManager_startTCPDumpForDiagSession_duration___block_invoke;
  block[3] = &unk_27898A328;
  block[4] = self;
  v12 = sessionCopy;
  v13 = durationCopy;
  v9 = durationCopy;
  v10 = sessionCopy;
  dispatch_async(queue, block);
}

void __52__ProbeManager_startTCPDumpForDiagSession_duration___block_invoke(uint64_t a1)
{
  v2 = [TCPDumpProbe alloc];
  v3 = [*(a1 + 32) queue];
  v4 = [(TCPDumpProbe *)v2 initWithQueue:v3];

  [(TestProbe *)v4 setDiagSessionUUID:*(a1 + 40)];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [*(*(a1 + 32) + 24) setObject:v4 forKeyedSubscript:v6];
  [*(a1 + 48) doubleValue];
  v8 = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__ProbeManager_startTCPDumpForDiagSession_duration___block_invoke_2;
  v12[3] = &unk_27898F738;
  v12[4] = *(a1 + 32);
  v13 = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__ProbeManager_startTCPDumpForDiagSession_duration___block_invoke_3;
  v10[3] = &unk_27898F738;
  v10[4] = *(a1 + 32);
  v11 = v13;
  v9 = v13;
  [(TCPDumpProbe *)v9 startTCPDumpWithDuration:@"/var/networkd/Library/Logs/Debuggability/" destinationPath:v12 tcpDumpStarted:v10 tcpDumpCompleted:v8];
}

void __52__ProbeManager_startTCPDumpForDiagSession_duration___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    if ((a2 - 3) <= 2)
    {
      v6 = [*(a1 + 32) probes];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      [v6 removeObjectForKey:v8];
    }

    v9 = [*(a1 + 32) delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = MEMORY[0x277CBEAC0];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
      v13 = [*(a1 + 40) diagSessionUUID];
      v15 = [v11 dictionaryWithObjectsAndKeys:{@"TCPDumpProbe", @"kNDFProbeName", v12, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", v13, @"kNDFProbeSessionUUID", 0}];

      v14 = [*(a1 + 32) delegate];
      [v14 probeStatusUpdate:v15];
    }
  }
}

void __52__ProbeManager_startTCPDumpForDiagSession_duration___block_invoke_3(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ProbeManager_startTCPDumpForDiagSession_duration___block_invoke_4;
  block[3] = &unk_27898A7A8;
  v8 = a2;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v5;
  dispatch_async(v4, block);
}

void __52__ProbeManager_startTCPDumpForDiagSession_duration___block_invoke_4(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = [TestProbe testProbeStatusString:v3];
    *buf = 138412290;
    v22 = v5;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_INFO, "tcpDumpComplete status is %@", buf, 0xCu);
  }

  v6 = [*(a1 + 32) delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [*(a1 + 32) delegate];
    v9 = [*(a1 + 40) probeOutputFilePaths];
    v10 = [*(a1 + 40) diagSessionUUID];
    [v8 probeOutputFilePaths:v9 forDiagSessionUUID:v10];
  }

  v11 = [*(a1 + 32) delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = MEMORY[0x277CBEAC0];
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 48)];
    v15 = [*(a1 + 40) diagSessionUUID];
    v16 = [v13 dictionaryWithObjectsAndKeys:{@"TCPDumpProbe", @"kNDFProbeName", v14, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", v15, @"kNDFProbeSessionUUID", 0}];

    v17 = [*(a1 + 32) delegate];
    [v17 probeStatusUpdate:v16];
  }

  v18 = [*(a1 + 32) probes];
  v19 = objc_opt_class();
  v20 = NSStringFromClass(v19);
  [v18 removeObjectForKey:v20];
}

- (void)stopTCPDump
{
  v3 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "Stopping (not cancelling) a TCP Dump", v8, 2u);
  }

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  probes = [(ProbeManager *)self probes];
  v7 = [probes objectForKey:v5];

  [v7 stopTest];
}

- (void)startGetNetworkInfo:(id)info
{
  infoCopy = info;
  queue = [(ProbeManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__ProbeManager_startGetNetworkInfo___block_invoke;
  v7[3] = &unk_27898A7D0;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(queue, v7);
}

void __36__ProbeManager_startGetNetworkInfo___block_invoke(uint64_t a1)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__15;
  v25 = __Block_byref_object_dispose__15;
  v26 = 0;
  v2 = [GetNetworkInfoProbe alloc];
  v3 = [*(a1 + 32) queue];
  v4 = [(GetNetworkInfoProbe *)v2 initWithQueue:v3];
  v5 = v22[5];
  v22[5] = v4;

  [v22[5] setDiagSessionUUID:*(a1 + 40)];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [*(*(a1 + 32) + 24) setObject:v22[5] forKeyedSubscript:v7];
  v8 = v22[5];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __36__ProbeManager_startGetNetworkInfo___block_invoke_2;
  v18[3] = &unk_27898F760;
  v9 = *(a1 + 40);
  v18[4] = *(a1 + 32);
  v19 = v9;
  v20 = &v21;
  if (([v8 startNetDiagnosticsTask:v18] & 1) == 0)
  {
    v10 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, "Could not start the Get Network Info", buf, 2u);
    }

    v11 = [*(a1 + 32) delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"GetNetworkInfoProbe", @"kNDFProbeName", &unk_2847EFCF8, @"Networking", @"kNDFProbeCLIPSModule", @"kNDFProbeStatus", *(a1 + 40), @"kNDFProbeSessionUUID", 0}];
      v14 = [*(a1 + 32) delegate];
      [v14 probeStatusUpdate:v13];
    }

    [v22[5] disconnectFromNetDiagnostics];
    if ([v7 length])
    {
      v15 = [*(a1 + 32) probes];
      [v15 removeObjectForKey:v7];
    }

    v16 = v22[5];
    v22[5] = 0;
  }

  _Block_object_dispose(&v21, 8);
}

void __36__ProbeManager_startGetNetworkInfo___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = MEMORY[0x277CBEAC0];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
    v8 = [v6 dictionaryWithObjectsAndKeys:{@"GetNetworkInfoProbe", @"kNDFProbeName", v7, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", *(a1 + 40), @"kNDFProbeSessionUUID", 0}];

    v9 = [*(a1 + 32) delegate];
    [v9 probeStatusUpdate:v8];
  }

  if ((a2 - 2) < 2 || a2 == 5)
  {
    v10 = [*(a1 + 32) delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [*(a1 + 32) delegate];
      v13 = [*(*(*(a1 + 48) + 8) + 40) probeOutputFilePaths];
      [v12 probeOutputFilePaths:v13 forDiagSessionUUID:*(a1 + 40)];
    }
  }

  else
  {
    if (a2 != 4)
    {
      return;
    }

    [*(*(*(a1 + 48) + 8) + 40) removeProbeOutputFiles];
  }

  [*(*(*(a1 + 48) + 8) + 40) disconnectFromNetDiagnostics];
  v14 = [*(a1 + 32) probes];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  [v14 removeObjectForKey:v16];

  v17 = *(*(a1 + 48) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = 0;
}

- (void)startAirDropBonjourScan:(id)scan duration:(id)duration
{
  scanCopy = scan;
  durationCopy = duration;
  queue = [(ProbeManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ProbeManager_startAirDropBonjourScan_duration___block_invoke;
  block[3] = &unk_27898A328;
  block[4] = self;
  v12 = scanCopy;
  v13 = durationCopy;
  v9 = durationCopy;
  v10 = scanCopy;
  dispatch_async(queue, block);
}

void __49__ProbeManager_startAirDropBonjourScan_duration___block_invoke(uint64_t a1)
{
  v2 = [AirDropBonjourProbe alloc];
  v3 = [*(a1 + 32) queue];
  v9 = [(BonjourProbe *)v2 initWithQueue:v3];

  [(TestProbe *)v9 setDiagSessionUUID:*(a1 + 40)];
  [(BonjourProbe *)v9 setDelegate:*(a1 + 32)];
  v4 = *(*(a1 + 32) + 24);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 setObject:v9 forKeyedSubscript:v6];

  -[AirDropBonjourProbe startAirDropScanWithDuration:](v9, "startAirDropScanWithDuration:", [*(a1 + 48) integerValue]);
  if (objc_opt_respondsToSelector())
  {
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"AirDropBonjourScanProbe", @"kNDFProbeName", &unk_2847EFCE0, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", *(a1 + 40), @"kNDFProbeSessionUUID", 0}];
    v8 = [*(a1 + 32) delegate];
    [v8 probeStatusUpdate:v7];
  }
}

- (void)bonjourServiceAdded:(id)added isUpdatedService:(BOOL)service
{
  v6 = [added copy];
  queue = [(ProbeManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ProbeManager_bonjourServiceAdded_isUpdatedService___block_invoke;
  block[3] = &unk_27898BE18;
  serviceCopy = service;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

uint64_t __53__ProbeManager_bonjourServiceAdded_isUpdatedService___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v3 = *(a1 + 40);
      v4 = *(*(a1 + 32) + 16);

      return [v4 serviceUpdated:v3 type:1];
    }
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v5 = *(a1 + 40);
      v6 = *(*(a1 + 32) + 16);

      return [v6 serviceAdded:v5 type:1];
    }
  }

  return result;
}

- (void)bonjourServiceRemoved:(id)removed
{
  v4 = [removed copy];
  queue = [(ProbeManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ProbeManager_bonjourServiceRemoved___block_invoke;
  v7[3] = &unk_27898A7D0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

uint64_t __38__ProbeManager_bonjourServiceRemoved___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 16);

    return [v4 serviceRemoved:v3 type:1];
  }

  return result;
}

- (void)bonjourProbeComplete:(id)complete status:(unsigned int)status
{
  completeCopy = complete;
  queue = [(ProbeManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__ProbeManager_bonjourProbeComplete_status___block_invoke;
  v8[3] = &unk_27898A7D0;
  v8[4] = self;
  v9 = completeCopy;
  v7 = completeCopy;
  dispatch_async(queue, v8);
}

void __44__ProbeManager_bonjourProbeComplete_status___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 40) allDiscoveredServices];
    v3 = [v2 count];

    v4 = MEMORY[0x277CBEAC0];
    v13 = @"discoveredCount";
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v3];
    v14[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v7 = [*(a1 + 40) diagSessionUUID];
    v8 = [v4 dictionaryWithObjectsAndKeys:{@"AirDropBonjourScanProbe", @"kNDFProbeName", &unk_2847EFD10, @"kNDFProbeStatus", v6, @"kNDFProbeContext", @"Networking", @"kNDFProbeCLIPSModule", v7, @"kNDFProbeSessionUUID", 0}];

    v9 = [*(a1 + 32) delegate];
    [v9 probeStatusUpdate:v8];
  }

  v10 = [*(a1 + 32) probes];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  [v10 removeObjectForKey:v12];
}

- (void)startICMPPingForDiagSession:(id)session hostName:(id)name ipAddress:(id)address interface:(id)interface pingCount:(id)count interPingInterval:(id)interval burstCount:(id)burstCount interBurstInterval:(id)self0 timeout:(id)self1
{
  sessionCopy = session;
  nameCopy = name;
  addressCopy = address;
  interfaceCopy = interface;
  countCopy = count;
  intervalCopy = interval;
  burstCountCopy = burstCount;
  burstIntervalCopy = burstInterval;
  timeoutCopy = timeout;
  queue = [(ProbeManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __139__ProbeManager_startICMPPingForDiagSession_hostName_ipAddress_interface_pingCount_interPingInterval_burstCount_interBurstInterval_timeout___block_invoke;
  block[3] = &unk_27898F788;
  block[4] = self;
  v37 = sessionCopy;
  v38 = nameCopy;
  v39 = addressCopy;
  v40 = interfaceCopy;
  v41 = countCopy;
  v42 = intervalCopy;
  v43 = burstCountCopy;
  v44 = burstIntervalCopy;
  v45 = timeoutCopy;
  v35 = timeoutCopy;
  v34 = burstIntervalCopy;
  v25 = burstCountCopy;
  v26 = intervalCopy;
  v27 = countCopy;
  v28 = interfaceCopy;
  v29 = addressCopy;
  v30 = nameCopy;
  v31 = sessionCopy;
  dispatch_async(queue, block);
}

void __139__ProbeManager_startICMPPingForDiagSession_hostName_ipAddress_interface_pingCount_interPingInterval_burstCount_interBurstInterval_timeout___block_invoke(uint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = [ICMPPingProbe alloc];
  v3 = [*(a1 + 32) queue];
  v4 = [(ICMPPingProbe *)v2 initWithQueue:v3];

  [(TestProbe *)v4 setDiagSessionUUID:*(a1 + 40)];
  [(ICMPPingProbe *)v4 setDelegate:*(a1 + 32)];
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [*(a1 + 48) length];
  v9 = 48;
  if (!v8)
  {
    v9 = 56;
  }

  v10 = [v5 stringWithFormat:@"%@.%@", v7, *(a1 + v9)];

  [*(*(a1 + 32) + 24) setObject:v4 forKeyedSubscript:v10];
  if (objc_opt_respondsToSelector())
  {
    v11 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"ICMPPingProbe", @"kNDFProbeName", &unk_2847EFCE0, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", 0}];
    v12 = v11;
    v13 = *(a1 + 40);
    if (v13)
    {
      [v11 setObject:v13 forKeyedSubscript:@"kNDFProbeSessionUUID"];
    }

    v14 = *(a1 + 48);
    if (v14)
    {
      v17 = @"hostName";
      v18[0] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      [v12 setObject:v15 forKeyedSubscript:@"kNDFProbeContext"];
    }

    v16 = [*(a1 + 32) delegate];
    [v16 probeStatusUpdate:v12];
  }

  -[ICMPPingProbe startICMPPingTestTo:hostName:interface:pingCount:interPingInterval:burstCount:interBurstInterval:timeout:stopTestOnFirstSuccess:](v4, "startICMPPingTestTo:hostName:interface:pingCount:interPingInterval:burstCount:interBurstInterval:timeout:stopTestOnFirstSuccess:", *(a1 + 56), *(a1 + 48), [*(a1 + 64) unsignedIntValue], objc_msgSend(*(a1 + 72), "integerValue"), objc_msgSend(*(a1 + 88), "integerValue"), 0, objc_msgSend(*(a1 + 80), "integerValue"), objc_msgSend(*(a1 + 96), "integerValue"), objc_msgSend(*(a1 + 104), "integerValue"));
}

- (void)startAWDLPeerPollingWithDiagSession:(id)session services:(id)services count:(id)count interval:(id)interval
{
  sessionCopy = session;
  servicesCopy = services;
  countCopy = count;
  intervalCopy = interval;
  queue = [(ProbeManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__ProbeManager_startAWDLPeerPollingWithDiagSession_services_count_interval___block_invoke;
  block[3] = &unk_27898C108;
  block[4] = self;
  v20 = sessionCopy;
  v21 = servicesCopy;
  v22 = countCopy;
  v23 = intervalCopy;
  v15 = intervalCopy;
  v16 = countCopy;
  v17 = servicesCopy;
  v18 = sessionCopy;
  dispatch_async(queue, block);
}

void __76__ProbeManager_startAWDLPeerPollingWithDiagSession_services_count_interval___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [AWDLPeerProbe alloc];
  v3 = [*(a1 + 32) queue];
  v4 = [(AWDLPeerProbe *)v2 initWithQueue:v3];

  [(TestProbe *)v4 setDiagSessionUUID:*(a1 + 40)];
  [(AWDLPeerProbe *)v4 setDelegate:*(a1 + 32)];
  v5 = *(*(a1 + 32) + 24);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v5 setObject:v4 forKeyedSubscript:v7];

  if (objc_opt_respondsToSelector())
  {
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"AWDLPeerPollProbe", @"kNDFProbeName", &unk_2847EFCE0, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", *(a1 + 40), @"kNDFProbeSessionUUID", 0}];
    v9 = [*(a1 + 32) delegate];
    [v9 probeStatusUpdate:v8];
  }

  v10 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    *buf = 138412802;
    v15 = v11;
    v16 = 2112;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "About to start the AWDL Peer Polling for services:%@ count:%@ interval:%@", buf, 0x20u);
  }

  -[AWDLPeerProbe startAWDLPeerPollingForServices:withCount:interval:](v4, "startAWDLPeerPollingForServices:withCount:interval:", *(a1 + 48), [*(a1 + 56) unsignedIntegerValue], objc_msgSend(*(a1 + 64), "unsignedIntegerValue"));
}

- (void)awdlPeerPollProbe:(id)probe serviceAdded:(id)added
{
  v5 = [added copy];
  queue = [(ProbeManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__ProbeManager_awdlPeerPollProbe_serviceAdded___block_invoke;
  v8[3] = &unk_27898A7D0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __47__ProbeManager_awdlPeerPollProbe_serviceAdded___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) delegate];
    [v2 serviceAdded:*(a1 + 40) type:2];
  }
}

- (void)awdlPeerPollProbe:(id)probe serviceUpdated:(id)updated
{
  v5 = [updated copy];
  queue = [(ProbeManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__ProbeManager_awdlPeerPollProbe_serviceUpdated___block_invoke;
  v8[3] = &unk_27898A7D0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __49__ProbeManager_awdlPeerPollProbe_serviceUpdated___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) delegate];
    [v2 serviceUpdated:*(a1 + 40) type:2];
  }
}

- (void)awdlPeerPollProbe:(id)probe serviceRemoved:(id)removed
{
  v5 = [removed copy];
  queue = [(ProbeManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__ProbeManager_awdlPeerPollProbe_serviceRemoved___block_invoke;
  v8[3] = &unk_27898A7D0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __49__ProbeManager_awdlPeerPollProbe_serviceRemoved___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) delegate];
    [v2 serviceRemoved:*(a1 + 40) type:2];
  }
}

- (void)awdlPeerPollProbeIsComplete:(id)complete
{
  v17[1] = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  if (objc_opt_respondsToSelector())
  {
    peerList = [completeCopy peerList];
    v6 = [peerList count];

    v7 = MEMORY[0x277CBEAC0];
    v16 = @"discoveredCount";
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
    v17[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    diagSessionUUID = [completeCopy diagSessionUUID];
    v11 = [v7 dictionaryWithObjectsAndKeys:{@"AWDLPeerPollProbe", @"kNDFProbeName", &unk_2847EFD10, @"kNDFProbeStatus", v9, @"kNDFProbeContext", @"Networking", @"kNDFProbeCLIPSModule", diagSessionUUID, @"kNDFProbeSessionUUID", 0}];

    delegate = [(ProbeManager *)self delegate];
    [delegate probeStatusUpdate:v11];
  }

  if (completeCopy)
  {
    probes = [(ProbeManager *)self probes];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [probes removeObjectForKey:v15];
  }
}

- (void)icmpPingProbe:(id)probe completedIterations:(unint64_t)iterations successfulCount:(unint64_t)count withError:(id)error
{
  probeCopy = probe;
  queue = [(ProbeManager *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__ProbeManager_icmpPingProbe_completedIterations_successfulCount_withError___block_invoke;
  v12[3] = &unk_27898F7B0;
  v13 = probeCopy;
  selfCopy = self;
  countCopy = count;
  iterationsCopy = iterations;
  v11 = probeCopy;
  dispatch_async(queue, v12);
}

void __76__ProbeManager_icmpPingProbe_completedIterations_successfulCount_withError___block_invoke(uint64_t a1)
{
  v1 = a1;
  v54 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hostName];
  v3 = [*(v1 + 32) ipAddress];
  if ([v2 length])
  {
    v4 = *(*(v1 + 40) + 32);
    v5 = [*(v1 + 32) hostName];
    v6 = [v4 objectForKeyedSubscript:v5];

    v7 = [v6 count];
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  if (*(v1 + 48) != v7)
  {
    v8 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v1 + 48);
      *buf = 134218240;
      v51 = v7;
      v52 = 2048;
      v53 = v9;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "echo reply details count doesn't match successes (%lu/%lu)", buf, 0x16u);
    }
  }

  v10 = [*(v1 + 32) status];
  if (objc_opt_respondsToSelector())
  {
    v43 = v3;
    v44 = v2;
    v11 = &unk_2847EFCF8;
    if (v10 == 2)
    {
      v11 = &unk_2847EFD10;
    }

    v12 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"ICMPPingProbe", @"kNDFProbeName", v11, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", 0}];
    v13 = [*(v1 + 32) diagSessionUUID];

    if (v13)
    {
      v14 = [*(v1 + 32) diagSessionUUID];
      [v12 setObject:v14 forKeyedSubscript:@"kNDFProbeSessionUUID"];
    }

    v40 = v12;
    v15 = [MEMORY[0x277CBEB18] array];
    if (*(v1 + 56))
    {
      v16 = 0;
      do
      {
        [v15 addObject:&unk_2847EFD28];
        ++v16;
      }

      while (v16 < *(v1 + 56));
    }

    v41 = v6;
    v42 = v1;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v17 = v6;
    v18 = [v17 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v46;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v46 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v45 + 1) + 8 * i);
          v23 = [v22 objectForKeyedSubscript:@"sequence"];
          v24 = [v23 unsignedIntegerValue];

          if (v24 < [v15 count])
          {
            v25 = MEMORY[0x277CCABB0];
            v26 = [v22 objectForKeyedSubscript:@"duration_ms"];
            v27 = [v25 numberWithUnsignedInteger:{objc_msgSend(v26, "unsignedIntegerValue")}];
            [v15 setObject:v27 atIndexedSubscript:v24];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v19);
    }

    v28 = [MEMORY[0x277CBEB38] dictionaryWithObject:v15 forKey:@"pingTime_ms"];
    v1 = v42;
    v29 = [*(v42 + 32) hostName];

    if (v29)
    {
      v30 = [*(v42 + 32) hostName];
      [v28 setObject:v30 forKeyedSubscript:@"hostName"];
    }

    [v40 setObject:v28 forKeyedSubscript:@"kNDFProbeContext"];
    v31 = [*(v42 + 40) delegate];
    [v31 probeStatusUpdate:v40];

    v3 = v43;
    v2 = v44;
    v6 = v41;
  }

  v32 = *(*(v1 + 40) + 32);
  v33 = [*(v1 + 32) hostName];
  [v32 removeObjectForKey:v33];

  v34 = MEMORY[0x277CCACA8];
  v35 = objc_opt_class();
  v36 = NSStringFromClass(v35);
  if ([v2 length])
  {
    v37 = v2;
  }

  else
  {
    v37 = v3;
  }

  v38 = [v34 stringWithFormat:@"%@.%@", v36, v37];

  v39 = [*(v1 + 40) probes];
  [v39 removeObjectForKey:v38];
}

- (void)icmpPingProbe:(id)probe echoResponseReceived:(id)received success:(BOOL)success
{
  probeCopy = probe;
  receivedCopy = received;
  queue = [(ProbeManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__ProbeManager_icmpPingProbe_echoResponseReceived_success___block_invoke;
  block[3] = &unk_27898A328;
  block[4] = self;
  v13 = probeCopy;
  v14 = receivedCopy;
  v10 = receivedCopy;
  v11 = probeCopy;
  dispatch_async(queue, block);
}

void __59__ProbeManager_icmpPingProbe_echoResponseReceived_success___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = *(a1 + 32);
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(*(a1 + 32) + 32);
  }

  v6 = [*(a1 + 40) hostName];
  v7 = [v2 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v8 = *(*(a1 + 32) + 32);
    v9 = [*(a1 + 40) hostName];
    [v8 setObject:v7 forKeyedSubscript:v9];
  }

  [v7 addObject:*(a1 + 48)];
  if (objc_opt_respondsToSelector())
  {
    v10 = [MEMORY[0x277CBEB38] dictionaryWithObjectsAndKeys:{@"ICMPPingProbe", @"kNDFProbeName", &unk_2847EFCE0, @"kNDFProbeStatus", @"Networking", @"kNDFProbeCLIPSModule", 0}];
    v11 = [*(a1 + 40) diagSessionUUID];

    if (v11)
    {
      v12 = [*(a1 + 40) diagSessionUUID];
      [v10 setObject:v12 forKeyedSubscript:@"kNDFProbeSessionUUID"];
    }

    [*(a1 + 40) percentComplete];
    v14 = v13;
    v15 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v23 = v14;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "percentComplete is %.1f", buf, 0xCu);
    }

    v17 = MEMORY[0x277CBEB38];
    *&v16 = v14;
    v18 = [MEMORY[0x277CCABB0] numberWithFloat:v16];
    v19 = [v17 dictionaryWithObject:v18 forKey:@"percentComplete"];

    if (v7)
    {
      v20 = [*(a1 + 40) hostName];
      [v19 setObject:v20 forKeyedSubscript:@"hostName"];
    }

    [v10 setObject:v19 forKeyedSubscript:@"kNDFProbeContext"];
    v21 = [*(a1 + 32) delegate];
    [v21 probeStatusUpdate:v10];
  }
}

@end