@interface PLNetworkAgent
+ (id)entryEventBackwardDefinitions;
+ (id)entryEventForwardDefinitionNetworkIsExpensive;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventPointDefinitionUnattributedWake;
+ (id)entryEventPointDefinitionWake;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLNetworkAgent)init;
- (id)NWPathMonitorWithInterface:(int)interface;
- (void)handleNWPathUpdate:(id)update;
- (void)initKernelEvent;
- (void)initOperatorDependancies;
- (void)logEventBackwardCumulativeNetworkUsage;
- (void)logEventPointWake;
- (void)logMobileAssetDownload:(id)download withCategory:(id)category;
@end

@implementation PLNetworkAgent

- (void)logEventBackwardCumulativeNetworkUsage
{
  v13 = 0;
  if (!getifaddrs(&v13))
  {
    v3 = [(PLOperator *)PLNetworkAgent entryKeyForType:*MEMORY[0x277D3F5C8] andName:@"CumulativeNetworkUsage"];
    v4 = v13;
    if (v13)
    {
      do
      {
        ifa_addr = v4->ifa_addr;
        if (ifa_addr)
        {
          ifa_data = v4->ifa_data;
          if (ifa_data)
          {
            if ((v4->ifa_flags & 8) == 0 && ifa_addr->sa_family == 18)
            {
              ifa_name = v4->ifa_name;
              if (!strcmp(ifa_name, "pdp_ip0") || !strcmp(ifa_name, "en0") || !strcmp(ifa_name, "awdl0"))
              {
                v8 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
                v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4->ifa_name];
                [v8 setObject:v9 forKeyedSubscript:@"Interface"];

                v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:ifa_data[11]];
                [v8 setObject:v10 forKeyedSubscript:@"UpBytes"];

                v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:ifa_data[10]];
                [v8 setObject:v11 forKeyedSubscript:@"DownBytes"];

                [(PLOperator *)self logEntry:v8];
              }
            }
          }
        }

        v4 = v4->ifa_next;
      }

      while (v4);
      v12 = v13;
    }

    else
    {
      v12 = 0;
    }

    MEMORY[0x21CEDD880](v12);
  }
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLNetworkAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventForwardDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"IsExpensive";
  v2 = +[PLNetworkAgent entryEventForwardDefinitionNetworkIsExpensive];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryEventForwardDefinitionNetworkIsExpensive
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v13[0] = *MEMORY[0x277D3F568];
  v13[1] = v2;
  v14[0] = &unk_282C1C838;
  v14[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[0] = v3;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"NetworkType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11[1] = @"IsExpensive";
  v12[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]2 commonTypeDict_BoolFormat];
  v12[1] = commonTypeDict_BoolFormat;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v9;
}

+ (id)entryEventBackwardDefinitions
{
  v21[1] = *MEMORY[0x277D85DE8];
  v20 = @"CumulativeNetworkUsage";
  v18[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4D8];
  v16[0] = *MEMORY[0x277D3F568];
  v16[1] = v2;
  v17[0] = &unk_282C1C838;
  v17[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v19[0] = v3;
  v18[1] = *MEMORY[0x277D3F540];
  v14[0] = @"Interface";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v15[0] = commonTypeDict_StringFormat;
  v14[1] = @"UpBytes";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v15[1] = commonTypeDict_IntegerFormat;
  v14[2] = @"DownBytes";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v15[2] = commonTypeDict_IntegerFormat2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v19[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v21[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];

  return v12;
}

+ (id)entryEventPointDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"Wake";
  entryEventPointDefinitionWake = [self entryEventPointDefinitionWake];
  v7[1] = @"UnattributedWake";
  v8[0] = entryEventPointDefinitionWake;
  entryEventPointDefinitionUnattributedWake = [self entryEventPointDefinitionUnattributedWake];
  v8[1] = entryEventPointDefinitionUnattributedWake;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)entryEventPointDefinitionWake
{
  v44[2] = *MEMORY[0x277D85DE8];
  v43[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v41[0] = *MEMORY[0x277D3F568];
  v41[1] = v2;
  v42[0] = &unk_282C1C848;
  v42[1] = MEMORY[0x277CBEC38];
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
  v44[0] = v38;
  v43[1] = *MEMORY[0x277D3F540];
  v39[0] = @"wakeUUID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v40[0] = commonTypeDict_StringFormat;
  v39[1] = @"Interface";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v40[1] = commonTypeDict_StringFormat2;
  v39[2] = @"PID";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v40[2] = commonTypeDict_IntegerFormat;
  v39[3] = @"ProcessName";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat_withProcessName];
  v40[3] = commonTypeDict_StringFormat_withProcessName;
  v39[4] = @"EffectivePID";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v40[4] = commonTypeDict_IntegerFormat2;
  v39[5] = @"EffectiveProcessName";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withProcessName2 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat_withProcessName];
  v40[5] = commonTypeDict_StringFormat_withProcessName2;
  v39[6] = @"packetDataLength";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v40[6] = commonTypeDict_IntegerFormat3;
  v39[7] = @"controlFlagType";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v40[7] = commonTypeDict_IntegerFormat4;
  v39[8] = @"InterfaceType";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v40[8] = commonTypeDict_IntegerFormat5;
  v39[9] = @"CompanionLink";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]10 commonTypeDict_BoolFormat];
  v40[9] = commonTypeDict_BoolFormat;
  v39[10] = @"sourcePort";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v40[10] = commonTypeDict_IntegerFormat6;
  v39[11] = @"sourceAddress";
  mEMORY[0x277D3F198]12 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]12 commonTypeDict_StringFormat];
  v40[11] = commonTypeDict_StringFormat3;
  v39[12] = @"destinationPort";
  mEMORY[0x277D3F198]13 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]13 commonTypeDict_IntegerFormat];
  v40[12] = commonTypeDict_IntegerFormat7;
  v39[13] = @"destinationAddress";
  mEMORY[0x277D3F198]14 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]14 commonTypeDict_StringFormat];
  v40[13] = commonTypeDict_StringFormat4;
  v39[14] = @"idleConnectionWake";
  mEMORY[0x277D3F198]15 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat2 = [mEMORY[0x277D3F198]15 commonTypeDict_BoolFormat];
  v40[14] = commonTypeDict_BoolFormat2;
  v39[15] = @"lpwProcessedWake";
  mEMORY[0x277D3F198]16 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat3 = [mEMORY[0x277D3F198]16 commonTypeDict_BoolFormat];
  v40[15] = commonTypeDict_BoolFormat3;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:16];
  v44[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];

  return v12;
}

+ (id)entryEventPointDefinitionUnattributedWake
{
  v31[2] = *MEMORY[0x277D85DE8];
  v30[0] = *MEMORY[0x277D3F4E8];
  v28 = *MEMORY[0x277D3F568];
  v29 = &unk_282C1C858;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v31[0] = v25;
  v30[1] = *MEMORY[0x277D3F540];
  v26[0] = @"wakeUUID";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v27[0] = commonTypeDict_StringFormat;
  v26[1] = @"Interface";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v27[1] = commonTypeDict_StringFormat2;
  v26[2] = @"sourcePort";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v27[2] = commonTypeDict_IntegerFormat;
  v26[3] = @"sourceAddress";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat3 = [mEMORY[0x277D3F198]4 commonTypeDict_StringFormat];
  v27[3] = commonTypeDict_StringFormat3;
  v26[4] = @"destinationPort";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v27[4] = commonTypeDict_IntegerFormat2;
  v26[5] = @"destinationAddress";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat4 = [mEMORY[0x277D3F198]6 commonTypeDict_StringFormat];
  v27[5] = commonTypeDict_StringFormat4;
  v26[6] = @"packetDataLength";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v27[6] = commonTypeDict_IntegerFormat3;
  v26[7] = @"controlFlagType";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v27[7] = commonTypeDict_IntegerFormat4;
  v26[8] = @"InterfaceType";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v27[8] = commonTypeDict_IntegerFormat5;
  v26[9] = @"CompanionLink";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]10 commonTypeDict_BoolFormat];
  v27[9] = commonTypeDict_BoolFormat;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:10];
  v31[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  return v11;
}

- (void)initKernelEvent
{
  v24 = *MEMORY[0x277D85DE8];
  self->_wakeSocket = -1;
  v3 = socket(32, 3, 1);
  self->_wakeSocket = v3;
  if (v3 == -1)
  {
    v7 = PLLogNetwork();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v14 = "socket(PF_SYSTEM, SOCK_RAW, SYSPROTO_EVENT) error";
      v15 = buf;
      goto LABEL_17;
    }

LABEL_6:

    return;
  }

  v21 = 1;
  if (ioctl(v3, 0x8004667EuLL, &v21))
  {
    v4 = PLLogNetwork();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v5 = "ioctl(FIONBIO) error";
      v6 = buf;
LABEL_19:
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, v5, v6, 2u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  *buf = 0x100000001;
  v20 = 14;
  v8 = ioctl(self->_wakeSocket, 0x800C6502uLL, buf);
  v4 = PLLogNetwork();
  v9 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (v9)
    {
      *v22 = 0;
      v5 = "ioctl(SIOCSKEVFILT) error";
      v6 = v22;
      goto LABEL_19;
    }

LABEL_9:

    close(self->_wakeSocket);
    return;
  }

  if (v9)
  {
    wakeSocket = self->_wakeSocket;
    *v22 = 67109120;
    v23 = wakeSocket;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "power wake socket number %d", v22, 8u);
  }

  v10 = self->_wakeSocket;
  workQueue = [(PLOperator *)self workQueue];
  v12 = dispatch_source_create(MEMORY[0x277D85D28], v10, 0, workQueue);
  v13 = initKernelEvent_wakeSrc;
  initKernelEvent_wakeSrc = v12;

  if (!initKernelEvent_wakeSrc)
  {
    v7 = PLLogNetwork();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v22 = 0;
      v14 = "wakeSrc is invalid";
      v15 = v22;
LABEL_17:
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, v14, v15, 2u);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __33__PLNetworkAgent_initKernelEvent__block_invoke;
  handler[3] = &unk_2782591D0;
  handler[4] = self;
  dispatch_source_set_cancel_handler(initKernelEvent_wakeSrc, handler);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __33__PLNetworkAgent_initKernelEvent__block_invoke_85;
  v17[3] = &unk_2782591D0;
  v17[4] = self;
  dispatch_source_set_event_handler(initKernelEvent_wakeSrc, v17);
  dispatch_resume(initKernelEvent_wakeSrc);
}

uint64_t __33__PLNetworkAgent_initKernelEvent__block_invoke(uint64_t a1)
{
  v2 = PLLogNetwork();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "wake cancel event!!!!", v4, 2u);
  }

  return close([*(a1 + 32) wakeSocket]);
}

- (PLNetworkAgent)init
{
  v3.receiver = self;
  v3.super_class = PLNetworkAgent;
  return [(PLAgent *)&v3 init];
}

- (void)initOperatorDependancies
{
  v28[1] = *MEMORY[0x277D85DE8];
  if ([(PLOperator *)self isDebugEnabled])
  {
    v3 = objc_alloc(MEMORY[0x277D3F1A8]);
    v25[0] = &unk_282C125D0;
    v25[1] = &unk_282C125E8;
    v26[0] = &unk_282C1C838;
    v26[1] = &unk_282C12600;
    v27 = @"Level";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v28[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __42__PLNetworkAgent_initOperatorDependancies__block_invoke;
    v24[3] = &unk_2782597E8;
    v24[4] = self;
    v6 = [v3 initWithOperator:self forEntryKey:@"PLBatteryAgent_EventBackward_Battery" withFilter:v5 withBlock:v24];
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __42__PLNetworkAgent_initOperatorDependancies__block_invoke_2;
    v23[3] = &unk_2782597E8;
    v23[4] = self;
    v6 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v23];
  }

  [(PLNetworkAgent *)self setBatteryLevelChanged:v6];
  v7 = [MEMORY[0x277D3F218] sharedSemaphoreForKey:*MEMORY[0x277D3F468]];
  [(PLNetworkAgent *)self setCanSleepSemaphore:v7];

  canSleepSemaphore = [(PLNetworkAgent *)self canSleepSemaphore];
  [canSleepSemaphore signalInterestByObject:self];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __42__PLNetworkAgent_initOperatorDependancies__block_invoke_3;
  v22[3] = &unk_2782597E8;
  v22[4] = self;
  v9 = [MEMORY[0x277D3F1A8] canSleepEntryNotificationWithOperator:self withBlock:v22];
  [(PLNetworkAgent *)self setCanSleep:v9];

  v10 = dispatch_queue_create("com.apple.powerlog.networkPathMonitor", 0);
  [(PLNetworkAgent *)self setNwPathMonitorQueue:v10];

  v11 = [(PLNetworkAgent *)self NWPathMonitorWithInterface:2];
  [(PLNetworkAgent *)self setNwPathMonitorCellular:v11];

  v12 = [(PLNetworkAgent *)self NWPathMonitorWithInterface:1];
  [(PLNetworkAgent *)self setNwPathMonitorWiFi:v12];

  v13 = [(PLNetworkAgent *)self NWPathMonitorWithInterface:3];
  [(PLNetworkAgent *)self setNwPathMonitorWired:v13];

  v14 = [(PLNetworkAgent *)self NWPathMonitorWithInterface:4];
  [(PLNetworkAgent *)self setNwPathMonitorLoopback:v14];

  v15 = [(PLNetworkAgent *)self NWPathMonitorWithInterface:0];
  [(PLNetworkAgent *)self setNwPathMonitorOther:v15];

  [(PLNetworkAgent *)self initKernelEvent];
  v16 = objc_alloc(MEMORY[0x277D3F270]);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __42__PLNetworkAgent_initOperatorDependancies__block_invoke_127;
  v21[3] = &unk_27825A1D8;
  v21[4] = self;
  v17 = [v16 initWithOperator:self withRegistration:&unk_282C18F58 withBlock:v21];
  [(PLNetworkAgent *)self setDownloadAutoAssetDownloadsListener:v17];
  v18 = objc_alloc(MEMORY[0x277D3F270]);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __42__PLNetworkAgent_initOperatorDependancies__block_invoke_139;
  v20[3] = &unk_27825A1D8;
  v20[4] = self;
  v19 = [v18 initWithOperator:self withRegistration:&unk_282C18F80 withBlock:v20];
  [(PLNetworkAgent *)self setDownloadV2AssetDownloadsListener:v19];
}

void __42__PLNetworkAgent_initOperatorDependancies__block_invoke_3(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = PLLogNetwork();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Sleep triggered", buf, 2u);
  }

  v3 = +[PLProcessPortMap sharedInstance];
  [v3 clearPortMap];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v4 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __42__PLNetworkAgent_initOperatorDependancies__block_invoke_106;
    v15 = &__block_descriptor_40_e5_v8__0lu32l8;
    v16 = v4;
    if (qword_2811F61C0 != -1)
    {
      dispatch_once(&qword_2811F61C0, &block);
    }

    if (_MergedGlobals_1_46 == 1)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ signaling done", *(a1 + 32), block, v13, v14, v15, v16];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Networking/PLNetworkAgent.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLNetworkAgent initOperatorDependancies]_block_invoke_2"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:331];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v18 = v5;
        _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }
  }

  v11 = [*(a1 + 32) canSleepSemaphore];
  [v11 signalDoneByObject:*(a1 + 32)];
}

void *__42__PLNetworkAgent_initOperatorDependancies__block_invoke_106(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_1_46 = result;
  return result;
}

void __42__PLNetworkAgent_initOperatorDependancies__block_invoke_127(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "DownloadMetrics AutoAssetDownloads payload: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logMobileAssetDownload:v6 withCategory:@"AutoAssetDownloads"];
}

void __42__PLNetworkAgent_initOperatorDependancies__block_invoke_139(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "DownloadMetrics v2AssetDownloads payload: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logMobileAssetDownload:v6 withCategory:@"v2AssetDownloads"];
}

- (id)NWPathMonitorWithInterface:(int)interface
{
  v4 = nw_path_monitor_create_with_type(interface);
  update_handler[0] = MEMORY[0x277D85DD0];
  update_handler[1] = 3221225472;
  update_handler[2] = __45__PLNetworkAgent_NWPathMonitorWithInterface___block_invoke;
  update_handler[3] = &unk_278260FE0;
  update_handler[4] = self;
  nw_path_monitor_set_update_handler(v4, update_handler);
  nwPathMonitorQueue = [(PLNetworkAgent *)self nwPathMonitorQueue];
  nw_path_monitor_set_queue(v4, nwPathMonitorQueue);

  nw_path_monitor_start(v4);

  return v4;
}

- (void)logEventPointWake
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D3F1F8] handlePowerWakeEvent:self->_wakeSocket];
  v4 = PLLogNetwork();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v3;
    _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Power wake packet dictionary %@", &v10, 0xCu);
  }

  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"AttributedWake"];
    bOOLValue = [v5 BOOLValue];

    if (bOOLValue)
    {
      v7 = @"Wake";
    }

    else
    {
      v7 = @"UnattributedWake";
    }

    v8 = [(PLOperator *)PLNetworkAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:v7];
    v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8 withRawData:v3];
    [(PLOperator *)self logEntry:v9];
  }
}

- (void)logMobileAssetDownload:(id)download withCategory:(id)category
{
  v39 = *MEMORY[0x277D85DE8];
  downloadCopy = download;
  categoryCopy = category;
  v8 = [downloadCopy mutableCopy];
  v9 = [downloadCopy objectForKeyedSubscript:@"timestampStart"];
  if (v9)
  {
    v10 = v9;
    convertFromSystemToMonotonic = [v9 convertFromSystemToMonotonic];
  }

  else
  {
    convertFromSystemToMonotonic = [MEMORY[0x277CBEAA8] monotonicDate];
  }

  [v8 removeObjectForKey:@"timestampStart"];
  v12 = [downloadCopy objectForKeyedSubscript:@"timestampEnd"];
  if (v12)
  {
    v13 = v12;
    convertFromSystemToMonotonic2 = [v12 convertFromSystemToMonotonic];
  }

  else
  {
    convertFromSystemToMonotonic2 = [MEMORY[0x277CBEAA8] monotonicDate];
  }

  [v8 setObject:convertFromSystemToMonotonic2 forKeyedSubscript:@"timestampEnd"];
  if (!convertFromSystemToMonotonic || !convertFromSystemToMonotonic2)
  {
    v19 = PLLogNetwork();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = categoryCopy;
      v20 = "DownloadMetrics %@ timestamps are invalid, returning";
      v21 = v19;
      v22 = 12;
LABEL_16:
      _os_log_error_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_ERROR, v20, buf, v22);
    }

LABEL_30:

    goto LABEL_31;
  }

  if ([convertFromSystemToMonotonic2 compare:convertFromSystemToMonotonic] == -1)
  {
    v19 = PLLogNetwork();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v35 = categoryCopy;
      v36 = 2112;
      *v37 = convertFromSystemToMonotonic2;
      *&v37[8] = 2112;
      v38 = convertFromSystemToMonotonic;
      v20 = "DownloadMetrics %@ timestampEnd %@ is earlier than startTime %@, malformed timestamps";
      v21 = v19;
      v22 = 32;
      goto LABEL_16;
    }

    goto LABEL_30;
  }

  v15 = [downloadCopy objectForKeyedSubscript:@"clientName"];
  if (v15)
  {
    v16 = MEMORY[0x277D3F258];
    v17 = [downloadCopy objectForKeyedSubscript:@"clientName"];
    v18 = [v16 removeFirstPartyBundleIDPrefix:v17];
    [v8 setObject:v18 forKeyedSubscript:@"clientName"];
  }

  else
  {
    [v8 setObject:&stru_282B650A0 forKeyedSubscript:@"clientName"];
  }

  v23 = [downloadCopy objectForKeyedSubscript:@"assetType"];
  if (v23)
  {
    v24 = MEMORY[0x277D3F258];
    v25 = [downloadCopy objectForKeyedSubscript:@"assetType"];
    v26 = [v24 removeFirstPartyBundleIDPrefix:v25];
    [v8 setObject:v26 forKeyedSubscript:@"assetType"];
  }

  else
  {
    [v8 setObject:&stru_282B650A0 forKeyedSubscript:@"assetType"];
  }

  v27 = [v8 objectForKeyedSubscript:@"bytesDownloaded"];

  if (!v27)
  {
    goto LABEL_31;
  }

  v28 = [downloadCopy objectForKeyedSubscript:@"bytesDownloaded"];
  intValue = [v28 intValue];

  v30 = PLLogNetwork();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v33 = [downloadCopy objectForKeyedSubscript:@"bytesDownloaded"];
    *buf = 138412802;
    v35 = categoryCopy;
    v36 = 1024;
    *v37 = [v33 intValue];
    *&v37[4] = 1024;
    *&v37[6] = intValue / 0x100000;
    _os_log_debug_impl(&dword_21A4C6000, v30, OS_LOG_TYPE_DEBUG, "DownloadMetrics %@ rounded bytesDownloaded from %d to %d", buf, 0x18u);
  }

  if (intValue < 0x100000)
  {
    v19 = PLLogNetwork();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v35 = categoryCopy;
      v36 = 2112;
      *v37 = v8;
      _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "DownloadMetrics %@ will not log this payload as bytesDownloaded is 0 or less : %@", buf, 0x16u);
    }

    goto LABEL_30;
  }

  v31 = [MEMORY[0x277CCABB0] numberWithInt:(intValue / 0x100000)];
  [v8 setObject:v31 forKeyedSubscript:@"megaBytesDownloaded"];

  v32 = PLLogNetwork();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v35 = categoryCopy;
    v36 = 2112;
    *v37 = v8;
    _os_log_debug_impl(&dword_21A4C6000, v32, OS_LOG_TYPE_DEBUG, "DownloadMetrics %@ updated payload: %@", buf, 0x16u);
  }

  [(PLOperator *)self logForSubsystem:@"DownloadMetrics" category:categoryCopy data:v8 date:convertFromSystemToMonotonic];
LABEL_31:
}

- (void)handleNWPathUpdate:(id)update
{
  v17 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = PLLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = updateCopy;
    _os_log_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_INFO, "Received NWPath update: %@", buf, 0xCu);
  }

  if ((nw_path_get_status(updateCopy) & 0xFFFFFFFD) != 0)
  {
    array = [MEMORY[0x277CBEB18] array];
    enumerate_block[0] = MEMORY[0x277D85DD0];
    enumerate_block[1] = 3221225472;
    enumerate_block[2] = __37__PLNetworkAgent_handleNWPathUpdate___block_invoke;
    enumerate_block[3] = &unk_278261008;
    v7 = array;
    v14 = v7;
    nw_path_enumerate_interfaces(updateCopy, enumerate_block);
    if ([v7 count] == 1)
    {
      v8 = MEMORY[0x21CEDDB80](updateCopy);
      v9 = [(PLOperator *)PLNetworkAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"IsExpensive"];
      firstObject = [v7 firstObject];
      v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9];
      [v11 setObject:firstObject forKeyedSubscript:@"NetworkType"];
      v12 = [MEMORY[0x277CCABB0] numberWithBool:v8];
      [v11 setObject:v12 forKeyedSubscript:@"IsExpensive"];

      [(PLOperator *)self logEntry:v11];
    }

    else
    {
      v9 = PLLogNetwork();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v16 = updateCopy;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "NWPath does not have valid interface: %@", buf, 0xCu);
      }
    }
  }
}

uint64_t __37__PLNetworkAgent_handleNWPathUpdate___block_invoke(uint64_t a1, nw_interface_t interface)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:nw_interface_get_type(interface)];
  [v2 addObject:v3];

  return 1;
}

@end