@interface WFScanRequest
+ (id)scanRequestForChannels:(id)channels;
+ (id)scanRequestForSSID:(id)d channels:(id)channels;
- (BOOL)_channelListIncludesTwoFour:(id)four;
- (WFScanRequest)init;
- (WFScanRequest)initWithSSID:(id)d channels:(id)channels;
- (id)_channelListFromArrayOfChannels:(id)channels;
- (id)_defaultScanDictionary;
- (id)cScanParameters;
- (id)description;
- (id)scanParameters;
@end

@implementation WFScanRequest

+ (id)scanRequestForSSID:(id)d channels:(id)channels
{
  dCopy = d;
  channelsCopy = channels;
  if (dCopy)
  {
    v7 = [[WFScanRequest alloc] initWithSSID:dCopy channels:channelsCopy];
  }

  else
  {
    +[WFScanRequest scanRequestForSSID:channels:];
    v7 = 0;
  }

  return v7;
}

+ (id)scanRequestForChannels:(id)channels
{
  channelsCopy = channels;
  v4 = [[WFScanRequest alloc] initWithSSID:0 channels:channelsCopy];

  return v4;
}

- (WFScanRequest)initWithSSID:(id)d channels:(id)channels
{
  dCopy = d;
  channelsCopy = channels;
  v14.receiver = self;
  v14.super_class = WFScanRequest;
  v9 = [(WFScanRequest *)&v14 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_6;
  }

  if (!channelsCopy)
  {
    [WFScanRequest initWithSSID:channels:];
LABEL_6:

    v10 = 0;
    goto LABEL_4;
  }

  objc_storeStrong(&v9->_ssid, d);
  objc_storeStrong(&v10->_channels, channels);
  v10->_channelListIncludesTwoFour = [(WFScanRequest *)v10 _channelListIncludesTwoFour:channelsCopy];
  v10->_rssiThreshold = -80;
  v10->_dwellTime = 0;
  uUID = [MEMORY[0x277CCAD78] UUID];
  UUID = v10->_UUID;
  v10->_UUID = uUID;

  *&v10->_applyRssiThresholdFilter = 1;
  v10->_lowPriorityScan = 0;
LABEL_4:

  return v10;
}

- (WFScanRequest)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"-[WFScanRequest init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (id)scanParameters
{
  v26 = *MEMORY[0x277D85DE8];
  _defaultScanDictionary = [(WFScanRequest *)self _defaultScanDictionary];
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(WFScanRequest *)self channels];
  v3 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v23[0] = @"CHANNEL";
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "channel")}];
        v23[1] = @"CHANNEL_FLAGS";
        v24[0] = v8;
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "flags")}];
        v24[1] = v9;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
        [array addObject:v10];
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v4);
  }

  [_defaultScanDictionary setObject:array forKey:@"SCAN_CHANNELS"];
  ssid = [(WFScanRequest *)self ssid];

  if (ssid)
  {
    ssid2 = [(WFScanRequest *)self ssid];
    [_defaultScanDictionary setObject:ssid2 forKey:@"SSID_STR"];
  }

  if (![(WFScanRequest *)self applyRssiThresholdFilter])
  {
    [_defaultScanDictionary removeObjectForKey:@"SCAN_RSSI_THRESHOLD"];
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:0];
    [_defaultScanDictionary setObject:v13 forKey:@"SCAN_RSSI_THRESHOLD"];
  }

  if ([(WFScanRequest *)self dwellTime])
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[WFScanRequest dwellTime](self, "dwellTime")}];
    [_defaultScanDictionary setObject:v14 forKey:@"SCAN_DWELL_TIME"];
  }

  if ([(WFScanRequest *)self includeBSSList])
  {
    [_defaultScanDictionary setObject:MEMORY[0x277CBEC38] forKey:@"SCAN_INC_BSS_LIST"];
  }

  if ([(WFScanRequest *)self lowPriorityScan])
  {
    [_defaultScanDictionary setObject:MEMORY[0x277CBEC38] forKey:@"SCAN_LOW_PRIORITY"];
  }

  return _defaultScanDictionary;
}

- (id)_defaultScanDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:1];
  [v3 setObject:v4 forKey:@"SCAN_MERGE"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:1];
  [v3 setObject:v5 forKey:@"MONITOR_QBSS_LOAD"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  [v3 setObject:v6 forKey:@"SCAN_TYPE"];

  v7 = [MEMORY[0x277CCABB0] numberWithInt:1];
  [v3 setObject:v7 forKey:@"SCAN_NUM_SCANS"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[WFScanRequest rssiThreshold](self, "rssiThreshold")}];
  [v3 setObject:v8 forKey:@"SCAN_RSSI_THRESHOLD"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  ssid = [(WFScanRequest *)self ssid];
  if (ssid)
  {
    v7 = @"directed";
  }

  else
  {
    v7 = @"broadcast";
  }

  uUID = [(WFScanRequest *)self UUID];
  uUIDString = [uUID UUIDString];
  v10 = [uUIDString substringToIndex:5];
  channels = [(WFScanRequest *)self channels];
  v12 = [(WFScanRequest *)self _channelListFromArrayOfChannels:channels];
  v13 = [v3 stringWithFormat:@"<%@ : %p type='%@' uuid='%@' channels=[%@]", v5, self, v7, v10, v12];

  if (![(WFScanRequest *)self applyRssiThresholdFilter])
  {
    [v13 appendString:@" rssiFilter=0"];
  }

  if ([(WFScanRequest *)self dwellTime])
  {
    [v13 appendFormat:@" dwellTime=%lu", -[WFScanRequest dwellTime](self, "dwellTime")];
  }

  if ([(WFScanRequest *)self lowPriorityScan])
  {
    [v13 appendString:@" lowPriority=1"];
  }

  [v13 appendString:@">"];

  return v13;
}

- (id)_channelListFromArrayOfChannels:(id)channels
{
  v18 = *MEMORY[0x277D85DE8];
  channelsCopy = channels;
  string = [MEMORY[0x277CCAB68] string];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = channelsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
    do
    {
      v10 = 0;
      v11 = v8 + 1;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [string appendFormat:@"%d", objc_msgSend(*(*(&v13 + 1) + 8 * v10), "channel")];
        if (v11 < [v5 count])
        {
          [string appendString:{@", "}];
        }

        ++v10;
        ++v11;
      }

      while (v7 != v10);
      v8 += v7;
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return string;
}

- (id)cScanParameters
{
  v3 = objc_alloc_init(MEMORY[0x277D02B48]);
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__11;
  v13 = __Block_byref_object_dispose__11;
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  channels = [(WFScanRequest *)self channels];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__WFScanRequest_cScanParameters__block_invoke;
  v8[3] = &unk_279EBE6A0;
  v8[4] = &v9;
  [channels enumerateObjectsUsingBlock:v8];

  [v3 setChannels:v10[5]];
  [v3 setMergeScanResults:1];
  [v3 setScanType:1];
  [v3 setNumberOfScans:1];
  [v3 setMinimumRSSI:{-[WFScanRequest rssiThreshold](self, "rssiThreshold")}];
  ssid = [(WFScanRequest *)self ssid];

  if (ssid)
  {
    ssid2 = [(WFScanRequest *)self ssid];
    [v3 setSSID:ssid2];
  }

  if (![(WFScanRequest *)self applyRssiThresholdFilter])
  {
    [v3 setMinimumRSSI:0];
  }

  if ([(WFScanRequest *)self dwellTime])
  {
    [v3 setDwellTime:{-[WFScanRequest dwellTime](self, "dwellTime")}];
  }

  [v3 setANQPElementIDListForPasspointScanResults:&unk_288305038];
  [v3 setIncludeMatchingKnownNetworkProfiles:1];
  _Block_object_dispose(&v9, 8);

  return v3;
}

void __32__WFScanRequest_cScanParameters__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D02B00];
  v4 = a2;
  v6 = objc_alloc_init(v3);
  [v6 setChannel:{objc_msgSend(v4, "channel")}];
  v5 = [v4 flags];

  [v6 setFlags:v5];
  [*(*(*(a1 + 32) + 8) + 40) addObject:v6];
}

- (BOOL)_channelListIncludesTwoFour:(id)four
{
  fourCopy = four;
  v4 = fourCopy;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (fourCopy)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__WFScanRequest__channelListIncludesTwoFour___block_invoke;
    v7[3] = &unk_279EBE6A0;
    v7[4] = &v8;
    [fourCopy enumerateObjectsUsingBlock:v7];
    v5 = *(v9 + 24);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);

  return v5 & 1;
}

void *__45__WFScanRequest__channelListIncludesTwoFour___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 channel];
  if (result <= 0xC)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

+ (void)scanRequestForSSID:channels:.cold.1()
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  v2 = v1;
  if (WFCurrentLogLevel(v1, v3) && v0 && os_log_type_enabled(v0, v2))
  {
    v10 = 0;
    OUTLINED_FUNCTION_4_0(&dword_273ECD000, v4, v5, "Missing SSID for directed scan", v6, v7, v8, v9, v10);
  }
}

- (void)initWithSSID:channels:.cold.1()
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  v2 = v1;
  if (WFCurrentLogLevel(v1, v3) && v0 && os_log_type_enabled(v0, v2))
  {
    v10 = 0;
    OUTLINED_FUNCTION_4_0(&dword_273ECD000, v4, v5, "Missing channel array for scan request", v6, v7, v8, v9, v10);
  }
}

@end