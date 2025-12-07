@interface WPDScanManager
+ (int64_t)zonesAvailableForType:(unsigned __int8)type;
- (BOOL)heySiriScanActive:(BOOL)active;
- (BOOL)isScannerTestMode;
- (BOOL)retainDuplicates;
- (BOOL)scanOptionsChanged:(id)changed ForRequests:(id)requests;
- (BOOL)shallStop;
- (BOOL)updateScanRules;
- (OS_dispatch_queue)serverQueue;
- (WPDScanManager)initWithServer:(id)server;
- (id)addPeerTrackingRequest:(id)request forClient:(id)client;
- (id)addScanRequest:(id)request forClient:(id)client;
- (id)clearDuplicateFilterCache:(id)cache forClient:(id)client;
- (id)connectToPeripheral:(id)peripheral fromClient:(id)client withOptions:(id)options;
- (id)disconnectFromPeripheral:(id)peripheral withSubscribedCharacteristics:(id)characteristics forClient:(id)client;
- (id)generateStateDumpStrings;
- (id)getScanRequestsForClient:(id)client;
- (id)removePeerTrackingRequest:(id)request checkZonesAvailable:(BOOL)available forClient:(id)client;
- (id)removeScanRequest:(id)request forClient:(id)client;
- (id)retrievePeripheralWithUUID:(id)d;
- (id)ruleHashesFromScanOptions:(id)options;
- (id)scanRequestHashesFromScanRequests:(id)requests;
- (void)addSpyScanClient:(id)client;
- (void)assertCBDiscoveryScan:(BOOL)scan;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didDiscoverMultiplePeripherals:(id)peripherals;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didFailToScanWithError:(id)error;
- (void)centralManager:(id)manager didFindPeripheral:(id)peripheral forType:(id)type;
- (void)centralManager:(id)manager didLosePeripheral:(id)peripheral forType:(id)type;
- (void)centralManagerDidUpdateState:(id)state;
- (void)cleanup;
- (void)clearExistingConnections;
- (void)disconnectFromCentral:(id)central forClient:(id)client;
- (void)duplicateRulesGuard:(id)guard forRule:(id)rule;
- (void)enableRanging:(BOOL)ranging;
- (void)isScannerTestMode;
- (void)logScanRequests:(id)requests method:(BOOL)method window:(int64_t)window interval:(int64_t)interval;
- (void)logScanTypes:(id)types method:(BOOL)method window:(int64_t)window interval:(int64_t)interval;
- (void)reconcileScanRule:(id)rule withRule:(id)withRule;
- (void)removeAllPeerTrackingRequestsForClient:(id)client;
- (void)removeConflictingRequest:(id)request forClient:(id)client;
- (void)removePeripheralConnection:(id)connection forClient:(id)client;
- (void)removePeripheralConnectionsForClient:(id)client;
- (void)removeScanRequestsForClient:(id)client;
- (void)removeSpyScanClient:(id)client;
- (void)update;
- (void)updateScanner;
@end

@implementation WPDScanManager

- (BOOL)retainDuplicates
{
  scanRetainDuplicates = [(WPDScanManager *)self scanRetainDuplicates];
  bOOLValue = [scanRetainDuplicates BOOLValue];

  return bOOLValue;
}

- (void)updateScanner
{
  v31 = *MEMORY[0x277D85DE8];
  server = [(WPDManager *)self server];
  cbState = [server cbState];

  if (cbState != 3)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager updateScanner];
    }

    v16 = WiProxLog;
    if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v17 = "Trying to update scanner but Daemon central manager isn't powered on";
    v18 = v16;
    v19 = OS_LOG_TYPE_DEFAULT;
LABEL_18:
    _os_log_impl(&dword_272965000, v18, v19, v17, buf, 2u);
    return;
  }

  if ([(WPDScanManager *)self scanningDisabled])
  {
    return;
  }

  if (![(WPDScanManager *)self updateScanRules])
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager updateScanner];
    }

    v20 = WiProxLog;
    if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      return;
    }

    *buf = 0;
    v17 = "Scan request no-op per <rdar://problem/36023927>";
    v18 = v20;
    v19 = OS_LOG_TYPE_INFO;
    goto LABEL_18;
  }

  scanOptions = [(WPDScanManager *)self scanOptions];
  v6 = scanOptions;
  if (scanOptions)
  {
    [scanOptions objectForKeyedSubscript:*MEMORY[0x277CBDDE0]];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = v29 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:buf count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      v11 = *MEMORY[0x277CBDE00];
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [*(*(&v26 + 1) + 8 * i) objectForKeyedSubscript:{v11, v26}];
          integerValue = [v13 integerValue];

          if (integerValue == 8)
          {
            v15 = 1;
            goto LABEL_25;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v26 objects:buf count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_25:
  }

  else
  {
    v15 = 0;
  }

  [(WPDScanManager *)self assertCBDiscoveryScan:v15, v26];

  scanOptions2 = [(WPDScanManager *)self scanOptions];

  if (scanOptions2)
  {
    if ([(WPDScanManager *)self shallStop])
    {
      centralManager = [(WPDScanManager *)self centralManager];
      [centralManager stopScan];
    }

    [(WPDScanManager *)self setScanning:1];
    centralManager2 = [(WPDScanManager *)self centralManager];
    scanOptions3 = [(WPDScanManager *)self scanOptions];
    [centralManager2 scanForPeripheralsWithServices:0 options:scanOptions3];
  }

  else
  {
    [(WPDScanManager *)self setScanning:0];
    centralManager3 = [(WPDScanManager *)self centralManager];
    [centralManager3 stopScan];
  }
}

- (BOOL)shallStop
{
  if (_os_feature_enabled_impl())
  {
    scanOptions = [(WPDScanManager *)self scanOptions];
    v4 = [scanOptions objectForKeyedSubscript:*MEMORY[0x277CBDE30]];
    v5 = [v4 BOOLValue] ^ 1;

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager shallStop];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDScanManager shallStop];
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

void __33__WPDScanManager_updateScanRules__block_invoke_2_323(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (([a2 range] & 1) == 0)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = MEMORY[0x277CBEC28];

    *a4 = 1;
  }
}

void *__33__WPDScanManager_updateScanRules__block_invoke_7(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 clientType];
  if (result == 8)
  {
    *(*(*(a1 + 40) + 8) + 24) = 22;
    result = [*(a1 + 32) isHomePod];
    v7 = 3;
    if (!result)
    {
      v7 = 0;
    }

    *(*(*(a1 + 48) + 8) + 24) = v7;
    *a4 = 1;
  }

  return result;
}

void __33__WPDScanManager_updateScanRules__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([v8 clientType] == 16 && objc_msgSend(v8, "nearbyScanMode") == 40)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = MEMORY[0x277CBEC38];

    *a4 = 1;
  }
}

- (BOOL)updateScanRules
{
  v315 = *MEMORY[0x277D85DE8];
  server = [(WPDManager *)self server];
  statsManager = [server statsManager];
  [statsManager stopActivity:0];

  scanRequests = [(WPDScanManager *)self scanRequests];
  v6 = [scanRequests count];

  if (!v6)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager updateScanRules];
    }

    v90 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272965000, v90, OS_LOG_TYPE_DEFAULT, "Nothing left to scan for - Stopping Scan", buf, 2u);
    }

    return [(WPDScanManager *)self scanOptionsChanged:0 ForRequests:0];
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  isScannerTestMode = [(WPDScanManager *)self isScannerTestMode];
  v7 = [(WPDScanManager *)self heySiriScanActive:?];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v287 = 0u;
  v286 = 0u;
  v285 = 0u;
  v284 = 0u;
  obj = [(WPDScanManager *)self scanRequests];
  v140 = [obj countByEnumeratingWithState:&v284 objects:v314 count:16];
  if (!v140)
  {
    goto LABEL_157;
  }

  v138 = *v285;
  v161 = *MEMORY[0x277CBDDD8];
  v163 = *MEMORY[0x277CBDE00];
  v144 = *MEMORY[0x277CBDE20];
  v143 = *MEMORY[0x277CBDE28];
  v149 = *MEMORY[0x277CBDE58];
  v171 = !v7;
  v147 = *MEMORY[0x277CBDE38];
  v145 = *MEMORY[0x277CBDE40];
  v159 = *MEMORY[0x277CBDF00];
  v157 = *MEMORY[0x277CBDDF0];
  v155 = *MEMORY[0x277CBDDE8];
  *&v8 = 138412290;
  v136 = v8;
  v153 = *MEMORY[0x277CBDE08];
  v151 = *MEMORY[0x277CBDDF8];
  v142 = *MEMORY[0x277CBDE78];
  do
  {
    for (i = 0; i != v140; i = v85 + 1)
    {
      if (*v285 != v138)
      {
        objc_enumerationMutation(obj);
      }

      v141 = i;
      v10 = *(*(&v284 + 1) + 8 * i);
      if (!isScannerTestMode || (-[WPDManager server](self, "server"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isClientTestMode:v10], v11, (v12 & 1) != 0))
      {
        server2 = [(WPDManager *)self server];
        v168 = [server2 getClientForUUID:v10];

        scanRequests2 = [(WPDScanManager *)self scanRequests];
        v15 = [scanRequests2 objectForKeyedSubscript:v10];

        v283 = 0u;
        v282 = 0u;
        v281 = 0u;
        v280 = 0u;
        v173 = v15;
        v16 = [v173 countByEnumeratingWithState:&v280 objects:v313 count:16];
        if (!v16)
        {
          goto LABEL_150;
        }

        v17 = *v281;
        while (1)
        {
          v18 = 0;
          do
          {
            if (*v281 != v17)
            {
              objc_enumerationMutation(v173);
            }

            v19 = *(*(&v280 + 1) + 8 * v18);
            clientType = [v19 clientType];
            if (![(WPDManager *)self isScanAllowlistedForType:clientType])
            {
              if (WPLogInitOnce != -1)
              {
                [WPDScanManager updateScanRules];
              }

              v25 = WiProxLog;
              if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                *&buf[4] = clientType;
                _os_log_impl(&dword_272965000, v25, OS_LOG_TYPE_DEFAULT, "Not scanning for client type (%ld) when denylisted or not allowlisted", buf, 0xCu);
              }

              goto LABEL_148;
            }

            if (clientType == 8)
            {
              v21 = 1;
            }

            else
            {
              v21 = v171;
            }

            if ((v21 & 1) == 0)
            {
              if (WPLogInitOnce != -1)
              {
                [WPDScanManager updateScanRules];
              }

              v22 = WiProxLog;
              if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134217984;
                *&buf[4] = clientType;
                v23 = v22;
                v24 = "Not scanning for client type (%ld) when HeySiri scan is active";
LABEL_23:
                _os_log_debug_impl(&dword_272965000, v23, OS_LOG_TYPE_DEBUG, v24, buf, 0xCu);
                goto LABEL_148;
              }

              goto LABEL_148;
            }

            if (clientType == 16)
            {
              server3 = [(WPDManager *)self server];
              screenOff = [server3 screenOff];

              if (!screenOff)
              {
                goto LABEL_76;
              }

              memset(buf, 0, sizeof(buf));
              if (v19)
              {
                objc_msgSend_scanningRates(v19);
              }

              server4 = [(WPDManager *)self server];
              if ([server4 isMirroring])
              {
                if (v19)
                {
                  objc_msgSend_scanningRates(v19);

                  if (v271 == 966)
                  {
                    *&buf[8] = 300;
                    if (WPLogInitOnce != -1)
                    {
                      [WPDScanManager updateScanRules];
                    }

                    server5 = WiProxLog;
                    if (os_log_type_enabled(server5, OS_LOG_TYPE_DEFAULT))
                    {
                      *v307 = 134218240;
                      *&v307[4] = *&buf[8];
                      *&v307[12] = 2048;
                      *&v307[14] = 16;
                      v36 = server5;
                      v37 = "Boosting screen off scan interval to %ld for client type (%ld) when mirroring";
                      goto LABEL_65;
                    }

                    goto LABEL_74;
                  }

LABEL_58:
                  server5 = [(WPDManager *)self server];
                  if (([server5 isMirroring]& 1) != 0)
                  {
                    goto LABEL_74;
                  }

                  if (!v19)
                  {
                    v268 = 0;
                    v267 = 0;
                    v269 = 0;
                    goto LABEL_74;
                  }

                  objc_msgSend_scanningRates(v19);

                  if (v268 == 300)
                  {
                    *&buf[8] = 966;
                    if (WPLogInitOnce != -1)
                    {
                      [WPDScanManager updateScanRules];
                    }

                    server5 = WiProxLog;
                    if (os_log_type_enabled(server5, OS_LOG_TYPE_DEFAULT))
                    {
                      *v307 = 134218240;
                      *&v307[4] = *&buf[8];
                      *&v307[12] = 2048;
                      *&v307[14] = 16;
                      v36 = server5;
                      v37 = "Resetting screen off scan interval to %ld for client type (%ld) when not mirroring";
LABEL_65:
                      _os_log_impl(&dword_272965000, v36, OS_LOG_TYPE_DEFAULT, v37, v307, 0x16u);
                    }

LABEL_74:
                  }

LABEL_75:
                  *v307 = *buf;
                  *&v307[16] = *&buf[16];
                  [v19 setScanningRates:v307];
                  goto LABEL_76;
                }

                v271 = 0;
                v270 = 0;
                v272 = 0;
              }

              goto LABEL_58;
            }

            if (clientType == 12)
            {
              server6 = [(WPDManager *)self server];
              screenOff2 = [server6 screenOff];

              if (screenOff2)
              {
                memset(buf, 0, sizeof(buf));
                if (v19)
                {
                  objc_msgSend_scanningRates(v19);
                }

                server7 = [(WPDManager *)self server];
                if ([server7 isMirroring])
                {
                  if (v19)
                  {
                    objc_msgSend_scanningRates(v19);

                    if (v278 == 0xFFFF)
                    {
                      objc_msgSend_scanningRates(v19);
                      *&buf[8] = v276[0];
                      if (WPLogInitOnce != -1)
                      {
                        [WPDScanManager updateScanRules];
                      }

                      server5 = WiProxLog;
                      if (!os_log_type_enabled(server5, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_74;
                      }

                      *v307 = 134218240;
                      *&v307[4] = *&buf[8];
                      *&v307[12] = 2048;
                      *&v307[14] = 12;
                      v30 = server5;
                      v31 = "Enabling screen off scan interval of %ld for client type (%ld) when mirroring";
                      v32 = 22;
                      goto LABEL_71;
                    }

LABEL_52:
                    server5 = [(WPDManager *)self server];
                    if (([server5 isMirroring]& 1) != 0)
                    {
                      goto LABEL_74;
                    }

                    if (v19)
                    {
                      objc_msgSend_scanningRates(v19);

                      if (v274 == 0xFFFF)
                      {
                        goto LABEL_75;
                      }
                    }

                    else
                    {
                      v274 = 0;
                      v273 = 0;
                      v275 = 0;
                    }

                    *&buf[8] = 0xFFFFLL;
                    if (WPLogInitOnce != -1)
                    {
                      [WPDScanManager updateScanRules];
                    }

                    server5 = WiProxLog;
                    if (!os_log_type_enabled(server5, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_74;
                    }

                    *v307 = 134217984;
                    *&v307[4] = 12;
                    v30 = server5;
                    v31 = "Disabling screen off scan for client type (%ld) when not mirroring";
                    v32 = 12;
LABEL_71:
                    _os_log_impl(&dword_272965000, v30, OS_LOG_TYPE_DEFAULT, v31, v307, v32);
                    goto LABEL_74;
                  }

                  v278 = 0;
                  v277 = 0;
                  v279 = 0;
                }

                goto LABEL_52;
              }
            }

LABEL_76:
            server8 = [(WPDManager *)self server];
            if (![server8 screenOff])
            {
              goto LABEL_84;
            }

            if (!v19)
            {
              v265 = 0;
              v264 = 0;
              v266 = 0;
LABEL_84:

              goto LABEL_85;
            }

            objc_msgSend_scanningRates(v19);

            if (v265 == 0xFFFF)
            {
              if (WPLogInitOnce != -1)
              {
                [WPDScanManager updateScanRules];
              }

              v39 = WiProxLog;
              if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134217984;
                *&buf[4] = clientType;
                v23 = v39;
                v24 = "Not scanning for client type (%ld) because we don't scan when screen is off";
                goto LABEL_23;
              }

              goto LABEL_148;
            }

LABEL_85:
            server9 = [(WPDManager *)self server];
            if ([server9 systemLocked])
            {
              scanWhenLocked = [v19 scanWhenLocked];

              if ((scanWhenLocked & 1) == 0)
              {
                if (WPLogInitOnce != -1)
                {
                  [WPDScanManager updateScanRules];
                }

                v42 = WiProxLog;
                if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 134217984;
                  *&buf[4] = clientType;
                  v23 = v42;
                  v24 = "Not scanning for client type (%ld) because screen is locked";
                  goto LABEL_23;
                }

                goto LABEL_148;
              }
            }

            else
            {
            }

            if (!_os_feature_enabled_impl())
            {
              goto LABEL_100;
            }

            server10 = [(WPDManager *)self server];
            if (![server10 screenOff])
            {

LABEL_100:
              v46 = MEMORY[0x277CBEB38];
              v311 = v163;
              v47 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:clientType];
              v312 = v47;
              v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v312 forKeys:&v311 count:1];
              v49 = [v46 dictionaryWithDictionary:v48];

              v50 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v19, "allowDuplicates")}];
              [v49 setObject:v50 forKeyedSubscript:v161];

              if ((clientType - 15) > 1u)
              {
                if (clientType == 8)
                {
                  [v49 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v144];
                  [v49 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v143];
                }
              }

              else
              {
                if (v19)
                {
                  objc_msgSend_scanningRates(v19);
                  if (v263 <= 65534)
                  {
                    v51 = MEMORY[0x277CCABB0];
                    objc_msgSend_scanningRates(v19);
                    v52 = v260;
                    goto LABEL_107;
                  }

                  goto LABEL_108;
                }

                v52 = 0;
                v262 = 0;
                v261 = 0;
                v263 = 0;
                v51 = MEMORY[0x277CCABB0];
                v260 = 0;
                v258 = 0;
                v259 = 0;
LABEL_107:
                v53 = [v51 numberWithInteger:v52];
                [v49 setObject:v53 forKeyedSubscript:v149];

                if (v19)
                {
LABEL_108:
                  objc_msgSend_scanningRates(v19);
                  if (v255 <= 65534)
                  {
                    v54 = MEMORY[0x277CCABB0];
                    objc_msgSend_scanningRates(v19);
                    v55 = v252;
                    goto LABEL_111;
                  }

                  goto LABEL_112;
                }

                v55 = 0;
                v256 = 0;
                v255 = 0;
                v257 = 0;
                v54 = MEMORY[0x277CCABB0];
                v254 = 0;
                v252 = 0;
                v253 = 0;
LABEL_111:
                v56 = [v54 numberWithInteger:v55];
                [v49 setObject:v56 forKeyedSubscript:v147];

                if (v19)
                {
LABEL_112:
                  objc_msgSend_scanningRates(v19);
                  if (v250 <= 65534)
                  {
                    v57 = MEMORY[0x277CCABB0];
                    objc_msgSend_scanningRates(v19);
                    v58 = v247;
                    goto LABEL_115;
                  }
                }

                else
                {
                  v58 = 0;
                  v250 = 0;
                  v249 = 0;
                  v251 = 0;
                  v57 = MEMORY[0x277CCABB0];
                  v248 = 0;
                  v246 = 0;
                  v247 = 0;
LABEL_115:
                  v59 = [v57 numberWithInteger:v58];
                  [v49 setObject:v59 forKeyedSubscript:v145];
                }
              }

              bundleID = [v168 bundleID];

              if (bundleID)
              {
                v61 = MEMORY[0x277CBEA60];
                bundleID2 = [v168 bundleID];
                v63 = [v61 arrayWithObject:bundleID2];
                [v49 setObject:v63 forKeyedSubscript:v159];
              }

              blobValue = [v19 blobValue];
              v65 = [blobValue length] == 0;

              if (!v65)
              {
                blobValue2 = [v19 blobValue];
                [v49 setObject:blobValue2 forKeyedSubscript:v157];
              }

              maskValue = [v19 maskValue];
              v68 = [maskValue length] == 0;

              if (!v68)
              {
                maskValue2 = [v19 maskValue];
                [v49 setObject:maskValue2 forKeyedSubscript:v155];
              }

              peers = [v19 peers];
              v71 = [peers count] == 0;

              if (!v71)
              {
                peers2 = [v19 peers];
                [v49 setObject:peers2 forKeyedSubscript:v153];
              }

              rssiThreshold = [v19 rssiThreshold];

              if (rssiThreshold)
              {
                rssiThreshold2 = [v19 rssiThreshold];
                [v49 setObject:rssiThreshold2 forKeyedSubscript:v151];
              }

              useCaseList = [v19 useCaseList];
              v76 = [useCaseList count] == 0;

              if (!v76)
              {
                useCaseList2 = [v19 useCaseList];
                [v49 setObject:useCaseList2 forKeyedSubscript:@"kCBOptionUseCaseList"];
              }

              if ([v19 range] && -[WPDScanManager isRanging](self, "isRanging"))
              {
                rangingTypes = [(WPDScanManager *)self rangingTypes];
                if (![rangingTypes containsIndex:clientType])
                {
                  goto LABEL_136;
                }

                server11 = [(WPDManager *)self server];
                screenOff3 = [server11 screenOff];

                if ((screenOff3 & 1) == 0)
                {
                  [v49 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v142];
                  if (WPLogInitOnce != -1)
                  {
                    [WPDScanManager updateScanRules];
                  }

                  rangingTypes = WiProxLog;
                  if (os_log_type_enabled(rangingTypes, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = v136;
                    *&buf[4] = v49;
                    _os_log_debug_impl(&dword_272965000, rangingTypes, OS_LOG_TYPE_DEBUG, "[Ranging] scan rule with ranging: %@", buf, 0xCu);
                  }

LABEL_136:
                }
              }

              if ([indexSet containsIndex:clientType])
              {
                [(WPDScanManager *)self duplicateRulesGuard:array forRule:v49];
              }

              else
              {
                [array addObject:v49];
                [indexSet addIndex:clientType];
              }

              [array2 addObject:v19];
              server12 = [(WPDManager *)self server];
              if ([server12 screenOff])
              {
                if (v19)
                {
                  objc_msgSend_scanningRates(v19);
                  v19 = v244;
                }

                else
                {
                  v244 = 0;
                  v243 = 0;
                  v245 = 0;
                }
              }

              else if (v19)
              {
                objc_msgSend_scanningRates(v19);
                v19 = v240;
              }

              else
              {
                v241 = 0;
                v240 = 0;
                v242 = 0;
              }

              v82 = v19 > 299;
              server13 = [(WPDManager *)self server];
              statsManager2 = [server13 statsManager];
              [statsManager2 startActivity:0 forType:clientType scanRate:v82];

              goto LABEL_148;
            }

            v44 = [v19 advBuffer] == 0;

            if (v44)
            {
              goto LABEL_100;
            }

            if (WPLogInitOnce != -1)
            {
              [WPDScanManager updateScanRules];
            }

            v45 = WiProxLog;
            if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              *&buf[4] = clientType;
              v23 = v45;
              v24 = "Not scanning for client type (%ld) when screen is off and ADV Buffer is enabled";
              goto LABEL_23;
            }

LABEL_148:
            ++v18;
          }

          while (v16 != v18);
          v16 = [v173 countByEnumeratingWithState:&v280 objects:v313 count:16];
          if (!v16)
          {
LABEL_150:

            v85 = v141;
            goto LABEL_155;
          }
        }
      }

      if (WPLogInitOnce != -1)
      {
        [WPDScanManager updateScanRules];
      }

      v86 = WiProxLog;
      v85 = v141;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        *buf = v136;
        *&buf[4] = v10;
        _os_log_debug_impl(&dword_272965000, v86, OS_LOG_TYPE_DEBUG, "Not scanning for non-test client UUID: %@ when in test mode", buf, 0xCu);
      }

LABEL_155:
      ;
    }

    v140 = [obj countByEnumeratingWithState:&v284 objects:v314 count:16];
  }

  while (v140);
LABEL_157:

  if ([array count])
  {
    v87 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:indexSet];
    [(WPDScanManager *)self setCurrentScanners:v87];

    v236 = 0;
    v237 = &v236;
    v238 = 0x2020000000;
    v239 = 0xFFFFLL;
    v232 = 0;
    v233 = &v232;
    v234 = 0x2020000000;
    v235 = 0xFFFFLL;
    v228 = 0;
    v229 = &v228;
    v230 = 0x2020000000;
    v231 = 0;
    v227[0] = MEMORY[0x277D85DD0];
    v227[1] = 3221225472;
    v227[2] = __33__WPDScanManager_updateScanRules__block_invoke_306;
    v227[3] = &unk_279E59640;
    v227[4] = self;
    v227[5] = &v236;
    v227[6] = &v232;
    v227[7] = &v228;
    [array2 enumerateObjectsUsingBlock:v227];
    if (v237[3] >= 0xFFFF)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager updateScanRules];
      }

      v88 = WiProxLog;
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v89 = "Scanning rate is too high, not scanning";
        goto LABEL_178;
      }

      goto LABEL_179;
    }

    if (v233[3] < 0xFFFF)
    {
      if (v229[3] > updateScanRules_latestRequestedAtNsec)
      {
        updateScanRules_latestRequestedAtNsec = v229[3];
        updateScanRules_latestProcessedAtNsec = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
      }

      *v307 = 0;
      *&v307[8] = v307;
      *&v307[16] = 0x3032000000;
      v308 = __Block_byref_object_copy__2;
      v93 = MEMORY[0x277CBEC28];
      v309 = __Block_byref_object_dispose__2;
      v310 = MEMORY[0x277CBEC28];
      if (_os_feature_enabled_impl())
      {
        v94 = v226;
        v226[0] = MEMORY[0x277D85DD0];
        v226[1] = 3221225472;
        v95 = __33__WPDScanManager_updateScanRules__block_invoke_313;
      }

      else
      {
        v94 = v225;
        v225[0] = MEMORY[0x277D85DD0];
        v225[1] = 3221225472;
        v95 = __33__WPDScanManager_updateScanRules__block_invoke_2_314;
      }

      v94[2] = v95;
      v94[3] = &unk_279E59668;
      v94[4] = v307;
      [array2 enumerateObjectsUsingBlock:v136];
      v219 = 0;
      v220 = &v219;
      v221 = 0x3032000000;
      v222 = __Block_byref_object_copy__2;
      v223 = __Block_byref_object_dispose__2;
      v224 = v93;
      v218[0] = MEMORY[0x277D85DD0];
      v218[1] = 3221225472;
      v218[2] = __33__WPDScanManager_updateScanRules__block_invoke_3;
      v218[3] = &unk_279E59690;
      v218[4] = self;
      v218[5] = &v219;
      [array2 enumerateObjectsUsingBlock:v218];
      v212 = 0;
      v213 = &v212;
      v214 = 0x3032000000;
      v215 = __Block_byref_object_copy__2;
      v216 = __Block_byref_object_dispose__2;
      v217 = v93;
      v211[0] = MEMORY[0x277D85DD0];
      v211[1] = 3221225472;
      v211[2] = __33__WPDScanManager_updateScanRules__block_invoke_4;
      v211[3] = &unk_279E59668;
      v211[4] = &v212;
      [array2 enumerateObjectsUsingBlock:v211];
      v205 = 0;
      v206 = &v205;
      v207 = 0x3032000000;
      v208 = __Block_byref_object_copy__2;
      v209 = __Block_byref_object_dispose__2;
      v210 = v93;
      v204[0] = MEMORY[0x277D85DD0];
      v204[1] = 3221225472;
      v204[2] = __33__WPDScanManager_updateScanRules__block_invoke_5;
      v204[3] = &unk_279E59668;
      v204[4] = &v205;
      [array2 enumerateObjectsUsingBlock:v204];
      v198 = 0;
      v199 = &v198;
      v200 = 0x3032000000;
      v201 = __Block_byref_object_copy__2;
      v202 = __Block_byref_object_dispose__2;
      v203 = v93;
      v197[0] = MEMORY[0x277D85DD0];
      v197[1] = 3221225472;
      v197[2] = __33__WPDScanManager_updateScanRules__block_invoke_6;
      v197[3] = &unk_279E59668;
      v197[4] = &v198;
      [array2 enumerateObjectsUsingBlock:v197];
      v193 = 0;
      v194 = &v193;
      v195 = 0x2020000000;
      v196 = 0;
      v189 = 0;
      v190 = &v189;
      v191 = 0x2020000000;
      v192 = 0;
      v188[0] = MEMORY[0x277D85DD0];
      v188[1] = 3221225472;
      v188[2] = __33__WPDScanManager_updateScanRules__block_invoke_7;
      v188[3] = &unk_279E596B8;
      v188[6] = &v193;
      v188[5] = &v189;
      v188[4] = self;
      [array2 enumerateObjectsUsingBlock:v188];
      scanRetainDuplicates = self->_scanRetainDuplicates;
      self->_scanRetainDuplicates = v93;

      v97 = array2;
      if (_os_feature_enabled_impl())
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v291) = 0;
        v181 = 0;
        v182 = &v181;
        v183 = 0x2020000000;
        if ([v220[5] BOOLValue])
        {
          bOOLValue = 1;
        }

        else
        {
          bOOLValue = [*(*&v307[8] + 40) BOOLValue];
        }

        LOBYTE(v184) = bOOLValue;
        if ((v182[3] & 1) == 0)
        {
          v187[0] = MEMORY[0x277D85DD0];
          v187[1] = 3221225472;
          v187[2] = __33__WPDScanManager_updateScanRules__block_invoke_8;
          v187[3] = &unk_279E596E0;
          v187[4] = buf;
          v187[5] = &v181;
          [array2 enumerateObjectsUsingBlock:v187];
        }

        if (*(*&buf[8] + 24) == 1)
        {
          v99 = *(v182 + 24) ^ 1u;
        }

        else
        {
          v99 = 0;
        }

        v100 = [MEMORY[0x277CCABB0] numberWithInt:v99];
        v101 = self->_scanRetainDuplicates;
        self->_scanRetainDuplicates = v100;

        if (WPLogInitOnce != -1)
        {
          [WPDScanManager updateScanRules];
        }

        v102 = WiProxLog;
        if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
        {
          bOOLValue2 = [(NSNumber *)self->_scanRetainDuplicates BOOLValue];
          v104 = *(*&buf[8] + 24);
          v105 = *(v182 + 24);
          *v301 = 67109632;
          *&v301[4] = bOOLValue2;
          LOWORD(v302) = 1024;
          *(&v302 + 2) = v104;
          HIWORD(v302) = 1024;
          LODWORD(v303) = v105;
          _os_log_impl(&dword_272965000, v102, OS_LOG_TYPE_INFO, "Retain duplicates:%d (askRetain:%d askReset:%d)", v301, 0x14u);
        }

        v97 = array2;
        [array2 enumerateObjectsUsingBlock:&__block_literal_global_322];
        _Block_object_dispose(&v181, 8);
        _Block_object_dispose(buf, 8);
      }

      v181 = 0;
      v182 = &v181;
      v183 = 0x3032000000;
      v184 = __Block_byref_object_copy__2;
      v185 = __Block_byref_object_dispose__2;
      v186 = MEMORY[0x277CBEC38];
      v180[0] = MEMORY[0x277D85DD0];
      v180[1] = 3221225472;
      v180[2] = __33__WPDScanManager_updateScanRules__block_invoke_2_323;
      v180[3] = &unk_279E59668;
      v180[4] = &v181;
      [v97 enumerateObjectsUsingBlock:v180];
      *v301 = 0;
      v302 = v301;
      v303 = 0x3032000000;
      v304 = __Block_byref_object_copy__2;
      v305 = __Block_byref_object_dispose__2;
      v306 = v93;
      v179[0] = MEMORY[0x277D85DD0];
      v179[1] = 3221225472;
      v179[2] = __33__WPDScanManager_updateScanRules__block_invoke_3_324;
      v179[3] = &unk_279E59668;
      v179[4] = v301;
      [v97 enumerateObjectsUsingBlock:v179];
      bOOLValue3 = [v220[5] BOOLValue];
      [(WPDScanManager *)self logScanTypes:indexSet method:bOOLValue3 window:v233[3] interval:v237[3]];
      v177 = 0u;
      v178 = 0u;
      v175 = 0u;
      v176 = 0u;
      v164 = array;
      v107 = [v164 countByEnumeratingWithState:&v175 objects:v300 count:16];
      if (v107)
      {
        v108 = *v176;
        v160 = *MEMORY[0x277CBDE00];
        v158 = *MEMORY[0x277CBDDF8];
        v156 = *MEMORY[0x277CBDE78];
        v154 = *MEMORY[0x277CBDDF0];
        v152 = *MEMORY[0x277CBDDE8];
        v150 = *MEMORY[0x277CBDE08];
        v148 = *MEMORY[0x277CBDF00];
        v146 = *v176;
        do
        {
          v109 = 0;
          v162 = v107;
          do
          {
            if (*v176 != v108)
            {
              objc_enumerationMutation(v164);
            }

            v110 = *(*(&v175 + 1) + 8 * v109);
            if (WPLogInitOnce != -1)
            {
              [WPDScanManager updateScanRules];
            }

            v111 = WiProxLog;
            if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
            {
              log = v111;
              v174 = [v110 objectForKeyedSubscript:v160];
              integerValue = [v174 integerValue];
              v172 = [v110 objectForKeyedSubscript:v158];
              integerValue2 = [v172 integerValue];
              v113 = [v110 objectForKeyedSubscript:v156];
              bOOLValue4 = [v113 BOOLValue];
              v115 = [v110 objectForKeyedSubscript:v154];
              v116 = [v110 objectForKeyedSubscript:v152];
              v117 = [v110 objectForKeyedSubscript:v150];
              v118 = [v117 count];
              v119 = [v110 objectForKeyedSubscript:v148];
              *buf = 134219522;
              *&buf[4] = integerValue;
              *&buf[12] = 2048;
              *&buf[14] = integerValue2;
              *&buf[22] = 1024;
              v291 = bOOLValue4;
              v292 = 2114;
              v293 = v115;
              v294 = 2114;
              v295 = v116;
              v296 = 2048;
              v297 = v118;
              v298 = 2112;
              v299 = v119;
              _os_log_impl(&dword_272965000, log, OS_LOG_TYPE_DEFAULT, "About to scan for type: %ld - rssi: %ld - range: %d - payload: %{public}@ - mask: %{public}@ - peers: %lu, bundleID: %@", buf, 0x44u);

              v108 = v146;
              v107 = v162;

              v111 = log;
            }

            ++v109;
          }

          while (v107 != v109);
          v107 = [v164 countByEnumeratingWithState:&v175 objects:v300 count:16];
        }

        while (v107);
      }

      v120 = *(*&v307[8] + 40);
      v121 = *MEMORY[0x277CBDEF8];
      v288[0] = *MEMORY[0x277CBDDB0];
      v288[1] = v121;
      v289[0] = v120;
      v289[1] = MEMORY[0x277CBEC38];
      v122 = *MEMORY[0x277CBDDE0];
      v289[2] = v164;
      v123 = *MEMORY[0x277CBDE58];
      v288[2] = v122;
      v288[3] = v123;
      v124 = [MEMORY[0x277CCABB0] numberWithInteger:v233[3]];
      v289[3] = v124;
      v288[4] = *MEMORY[0x277CBDE38];
      v125 = [MEMORY[0x277CCABB0] numberWithInteger:v237[3]];
      v288[5] = *MEMORY[0x277CBDDA8];
      v126 = v220[5];
      v289[4] = v125;
      v289[5] = v126;
      v288[6] = *MEMORY[0x277CBDDB8];
      v289[6] = v213[5];
      v288[7] = *MEMORY[0x277CBDDD0];
      v289[7] = v206[5];
      v288[8] = *MEMORY[0x277CBDE10];
      v289[8] = v199[5];
      v288[9] = *MEMORY[0x277CBDE18];
      v289[9] = v182[5];
      v288[10] = *MEMORY[0x277CBDE80];
      v289[10] = *(v302 + 5);
      v288[11] = @"kCBScanOptionPriorityConfiguration";
      v127 = [MEMORY[0x277CCABB0] numberWithInteger:v194[3]];
      v289[11] = v127;
      v288[12] = *MEMORY[0x277CBDE68];
      v128 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v190 + 6)];
      v129 = *MEMORY[0x277CBDE30];
      v130 = self->_scanRetainDuplicates;
      v289[12] = v128;
      v289[13] = v130;
      v131 = *MEMORY[0x277CBDE50];
      v288[13] = v129;
      v288[14] = v131;
      v132 = [MEMORY[0x277CCABB0] numberWithLongLong:updateScanRules_latestRequestedAtNsec];
      v289[14] = v132;
      v288[15] = *MEMORY[0x277CBDE48];
      v133 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:updateScanRules_latestProcessedAtNsec];
      v289[15] = v133;
      v134 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v289 forKeys:v288 count:16];

      v91 = [(WPDScanManager *)self scanOptionsChanged:v134 ForRequests:array2];
      _Block_object_dispose(v301, 8);

      _Block_object_dispose(&v181, 8);
      _Block_object_dispose(&v189, 8);
      _Block_object_dispose(&v193, 8);
      _Block_object_dispose(&v198, 8);

      _Block_object_dispose(&v205, 8);
      _Block_object_dispose(&v212, 8);

      _Block_object_dispose(&v219, 8);
      _Block_object_dispose(v307, 8);
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager updateScanRules];
      }

      v88 = WiProxLog;
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v89 = "Scanning window is too high, not scanning";
LABEL_178:
        _os_log_impl(&dword_272965000, v88, OS_LOG_TYPE_DEFAULT, v89, buf, 2u);
      }

LABEL_179:

      v91 = [(WPDScanManager *)self scanOptionsChanged:0 ForRequests:0];
    }

    _Block_object_dispose(&v228, 8);
    _Block_object_dispose(&v232, 8);
    _Block_object_dispose(&v236, 8);
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager updateScanRules];
    }

    v92 = WiProxLog;
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272965000, v92, OS_LOG_TYPE_DEFAULT, "No Scan requests that fit the current criteria, bailing", buf, 2u);
    }

    v91 = [(WPDScanManager *)self scanOptionsChanged:0 ForRequests:0];
  }

  return v91;
}

void __33__WPDScanManager_updateScanRules__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ([v10 activeScanning])
  {
    if ([v10 clientType] != 6 || (objc_msgSend(*(a1 + 32), "server"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "screenOff"), v6, (v7 & 1) == 0))
    {
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = MEMORY[0x277CBEC38];

      *a4 = 1;
    }
  }
}

void __33__WPDScanManager_updateScanRules__block_invoke_313(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 allowDuplicates])
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = MEMORY[0x277CBEC38];

    *a4 = 1;
  }
}

void __33__WPDScanManager_updateScanRules__block_invoke_306(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) server];
  if ([v4 screenOff])
  {
    if (v3)
    {
      objc_msgSend_scanningRates(v3);
      v5 = v11;
    }

    else
    {
      v5 = 0;
    }
  }

  else if (v3)
  {
    objc_msgSend_scanningRates(v3);
    v5 = v10;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(*(a1 + 40) + 8);
  if (v5 < *(v6 + 24))
  {
    *(v6 + 24) = v5;
  }

  if (v3)
  {
    objc_msgSend_scanningRates(v3);
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(a1 + 48) + 8);
  if (v7 < *(v8 + 24))
  {
    *(v8 + 24) = v7;
  }

  if ([v3 requestedAtNsec] > *(*(*(a1 + 56) + 8) + 24))
  {
    *(*(*(a1 + 56) + 8) + 24) = [v3 requestedAtNsec];
  }
}

- (BOOL)isScannerTestMode
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if ([(WPDManager *)self testMode])
  {
    scanRequests = [(WPDScanManager *)self scanRequests];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __35__WPDScanManager_isScannerTestMode__block_invoke;
    v6[3] = &unk_279E595C8;
    v6[4] = self;
    v6[5] = &v7;
    [scanRequests enumerateKeysAndObjectsUsingBlock:v6];

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager isScannerTestMode];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDScanManager isScannerTestMode];
    }
  }

  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __33__WPDScanManager_updateScanRules__block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 scanCache])
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = MEMORY[0x277CBEC38];

    *a4 = 1;
  }
}

void __33__WPDScanManager_updateScanRules__block_invoke_6(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 priorityCritical])
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = MEMORY[0x277CBEC38];

    *a4 = 1;
  }
}

void __33__WPDScanManager_updateScanRules__block_invoke_3_324(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 holdVoucher])
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = MEMORY[0x277CBEC38];

    *a4 = 1;
  }
}

void __33__WPDScanManager_updateScanRules__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 32) + 8);
  if (*(v5 + 24))
  {
    v6 = 1;
  }

  else
  {
    v6 = [v3 retainDuplicates];
    v5 = *(*(a1 + 32) + 8);
  }

  *(v5 + 24) = v6;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v7 = 1;
  }

  else if ([v4 startPending])
  {
    v7 = [v4 retainDuplicates] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v7;
  if (WPLogInitOnce != -1)
  {
    __33__WPDScanManager_updateScanRules__block_invoke_8_cold_1();
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __33__WPDScanManager_updateScanRules__block_invoke_8_cold_2(v4, v8);
  }
}

- (WPDScanManager)initWithServer:(id)server
{
  v39[1] = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v37.receiver = self;
  v37.super_class = WPDScanManager;
  v5 = [(WPDManager *)&v37 initWithServer:serverCopy Name:@"Scanner Central"];
  if (v5)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    scanRequests = v5->_scanRequests;
    v5->_scanRequests = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    peerRequests = v5->_peerRequests;
    v5->_peerRequests = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    connectionsInProgress = v5->_connectionsInProgress;
    v5->_connectionsInProgress = dictionary3;

    v12 = [MEMORY[0x277CBEB58] set];
    peripheralConnections = v5->_peripheralConnections;
    v5->_peripheralConnections = v12;

    indexSet = [MEMORY[0x277CCAA78] indexSet];
    currentScanners = v5->_currentScanners;
    v5->_currentScanners = indexSet;

    v5->_scanning = 0;
    v16 = [MEMORY[0x277CBEB58] set];
    spyScanClients = v5->_spyScanClients;
    v5->_spyScanClients = v16;

    scanOptions = v5->_scanOptions;
    v5->_scanOptions = 0;

    scanRequestHashes = v5->_scanRequestHashes;
    v5->_scanRequestHashes = 0;

    scanRuleHashes = v5->_scanRuleHashes;
    v5->_scanRuleHashes = 0;

    serverQueue = [serverCopy serverQueue];
    objc_storeWeak(&v5->_serverQueue, serverQueue);

    cbDiscoveryAsserter = v5->_cbDiscoveryAsserter;
    v5->_cbDiscoveryAsserter = 0;

    scanRetainDuplicates = v5->_scanRetainDuplicates;
    v5->_scanRetainDuplicates = MEMORY[0x277CBEC28];

    v5->_isRanging = 0;
    indexSet2 = [MEMORY[0x277CCAB58] indexSet];
    [indexSet2 addIndex:15];
    if (+[WPDaemonServer supportsRanging])
    {
      [indexSet2 addIndex:19];
    }

    v25 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:indexSet2];
    rangingTypes = v5->_rangingTypes;
    v5->_rangingTypes = v25;

    v27 = objc_alloc(MEMORY[0x277CBDFF8]);
    serverQueue2 = [(WPDScanManager *)v5 serverQueue];
    v38 = *MEMORY[0x277CBDF08];
    v39[0] = MEMORY[0x277CBEC38];
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v30 = [v27 initWithDelegate:v5 queue:serverQueue2 options:v29];
    [(WPDScanManager *)v5 setCentralManager:v30];

    v31 = MEMORY[0x277CBEB98];
    centralManager = [(WPDScanManager *)v5 centralManager];
    v33 = [v31 setWithObject:centralManager];
    [(WPDManager *)v5 setCbManagers:v33];

    wpdState = [serverCopy wpdState];
    centralManager2 = [(WPDScanManager *)v5 centralManager];
    [wpdState registerManager:centralManager2];
  }

  return v5;
}

- (void)cleanup
{
  v20 = *MEMORY[0x277D85DE8];
  cbDiscoveryAsserter = [(WPDScanManager *)self cbDiscoveryAsserter];

  if (cbDiscoveryAsserter)
  {
    cbDiscoveryAsserter2 = [(WPDScanManager *)self cbDiscoveryAsserter];
    [cbDiscoveryAsserter2 invalidate];

    [(WPDScanManager *)self setCbDiscoveryAsserter:0];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  peripheralConnections = [(WPDScanManager *)self peripheralConnections];
  v6 = [peripheralConnections countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(peripheralConnections);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        centralManager = [(WPDScanManager *)self centralManager];
        [centralManager cancelPeripheralConnection:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [peripheralConnections countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  scanRequests = [(WPDScanManager *)self scanRequests];
  [scanRequests removeAllObjects];

  spyScanClients = [(WPDScanManager *)self spyScanClients];
  [spyScanClients removeAllObjects];

  [(WPDScanManager *)self updateScanner];
  v14.receiver = self;
  v14.super_class = WPDScanManager;
  [(WPDManager *)&v14 cleanup];
}

- (id)generateStateDumpStrings
{
  selfCopy = self;
  v94 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  v89.receiver = self;
  v89.super_class = WPDScanManager;
  generateStateDumpStrings = [(WPDManager *)&v89 generateStateDumpStrings];
  v65 = [v3 arrayWithArray:generateStateDumpStrings];

  v72 = selfCopy;
  if ([(WPDManager *)selfCopy isInternalBuild])
  {
    v5 = selfCopy;
    v6 = MEMORY[0x277CCACA8];
    scanAllowlist = [(WPDManager *)v5 scanAllowlist];
    if (scanAllowlist)
    {
      scanAllowlist2 = [(WPDManager *)v5 scanAllowlist];
    }

    else
    {
      scanAllowlist2 = @"all";
    }

    v9 = [v6 stringWithFormat:@"allowlisted scan types: %@\n", scanAllowlist2];
    [v65 addObject:v9];

    if (scanAllowlist)
    {
    }

    selfCopy = v72;
  }

  v10 = MEMORY[0x277CCACA8];
  if ([(WPDScanManager *)selfCopy isRanging])
  {
    v11 = "yes";
  }

  else
  {
    v11 = "no";
  }

  rangingTypes = [(WPDScanManager *)selfCopy rangingTypes];
  v13 = [v10 stringWithFormat:@"ranging: %s, supported types: %@\n", v11, rangingTypes];
  [v65 addObject:v13];

  array = [MEMORY[0x277CBEB18] array];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  scanRequests = [(WPDScanManager *)selfCopy scanRequests];
  allKeys = [scanRequests allKeys];

  v70 = [allKeys countByEnumeratingWithState:&v85 objects:v93 count:16];
  if (v70)
  {
    v17 = *v86;
    v66 = *v86;
    v67 = allKeys;
    do
    {
      for (i = 0; i != v70; ++i)
      {
        if (*v86 != v17)
        {
          objc_enumerationMutation(allKeys);
        }

        v19 = *(*(&v85 + 1) + 8 * i);
        scanRequests2 = [(WPDScanManager *)selfCopy scanRequests];
        v21 = [scanRequests2 objectForKeyedSubscript:v19];

        v22 = v21;
        if (v21 && [v21 count])
        {
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v68 = v21;
          v23 = v21;
          v24 = [v23 countByEnumeratingWithState:&v81 objects:v92 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v82;
            do
            {
              for (j = 0; j != v25; ++j)
              {
                if (*v82 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"    %@: %@\n", v19, *(*(&v81 + 1) + 8 * j)];
                [array addObject:v28];
              }

              v25 = [v23 countByEnumeratingWithState:&v81 objects:v92 count:16];
            }

            while (v25);
            selfCopy = v72;
            v17 = v66;
            allKeys = v67;
          }

          v22 = v68;
        }

        else
        {
          v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"    %@: (nil)\n"], v19);
          [array addObject:v23];
        }
      }

      v70 = [allKeys countByEnumeratingWithState:&v85 objects:v93 count:16];
    }

    while (v70);
  }

  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"scan requests (%lu):\n", objc_msgSend(array, "count")];
  [v65 addObject:v29];

  [v65 addObjectsFromArray:array];
  array2 = [MEMORY[0x277CBEB18] array];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  peerRequests = [(WPDScanManager *)selfCopy peerRequests];
  allKeys2 = [peerRequests allKeys];

  v32 = [allKeys2 countByEnumeratingWithState:&v77 objects:v91 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v78;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v78 != v34)
        {
          objc_enumerationMutation(allKeys2);
        }

        v36 = *(*(&v77 + 1) + 8 * k);
        peerRequests2 = [(WPDScanManager *)v72 peerRequests];
        v38 = [peerRequests2 objectForKeyedSubscript:v36];

        if (v38 && [v38 count])
        {
          v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"    %@: %@\n", v36, v38];
          [array2 addObject:v39];
        }
      }

      v33 = [allKeys2 countByEnumeratingWithState:&v77 objects:v91 count:16];
    }

    while (v33);
  }

  v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"tracked peers (%lu):\n", objc_msgSend(array2, "count")];
  [v65 addObject:v40];

  [v65 addObjectsFromArray:array2];
  array3 = [MEMORY[0x277CBEB18] array];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  connectionsInProgress = [(WPDScanManager *)v72 connectionsInProgress];
  allKeys3 = [connectionsInProgress allKeys];

  v43 = [allKeys3 countByEnumeratingWithState:&v73 objects:v90 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v74;
    do
    {
      for (m = 0; m != v44; ++m)
      {
        if (*v74 != v45)
        {
          objc_enumerationMutation(allKeys3);
        }

        v47 = *(*(&v73 + 1) + 8 * m);
        connectionsInProgress2 = [(WPDScanManager *)v72 connectionsInProgress];
        v49 = [connectionsInProgress2 objectForKeyedSubscript:v47];

        if (v49 && [v49 count])
        {
          [v49 count];
          v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"    %@: %@\n", v47, v49];
          [array3 addObject:v50];
        }
      }

      v44 = [allKeys3 countByEnumeratingWithState:&v73 objects:v90 count:16];
    }

    while (v44);
  }

  v51 = [MEMORY[0x277CCACA8] stringWithFormat:@"connections in progress (%lu):\n", objc_msgSend(array3, "count")];
  [v65 addObject:v51];

  [v65 addObjectsFromArray:array3];
  v52 = MEMORY[0x277CCACA8];
  if ([(WPDScanManager *)v72 scanning])
  {
    v53 = "yes";
  }

  else
  {
    v53 = "no";
  }

  currentScanners = [(WPDScanManager *)v72 currentScanners];
  v55 = [currentScanners count];
  currentScanners2 = [(WPDScanManager *)v72 currentScanners];
  v57 = [currentScanners2 count];
  if (v57)
  {
    currentScanners3 = [(WPDScanManager *)v72 currentScanners];
  }

  else
  {
    currentScanners3 = &stru_2881F83F8;
  }

  v59 = [v52 stringWithFormat:@"scanning: %s types (%lu): %@\n", v53, v55, currentScanners3];
  [v65 addObject:v59];

  if (v57)
  {
  }

  v60 = MEMORY[0x277CCACA8];
  scanOptions = [(WPDScanManager *)v72 scanOptions];
  v62 = [v60 stringWithFormat:@"options: %@\n", scanOptions];
  [v65 addObject:v62];

  v63 = [MEMORY[0x277CBEA60] arrayWithArray:v65];

  return v63;
}

- (void)enableRanging:(BOOL)ranging
{
  rangingCopy = ranging;
  v7 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager enableRanging:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = rangingCopy;
    _os_log_impl(&dword_272965000, v5, OS_LOG_TYPE_DEFAULT, "WPScanManager enable ranging: %d", v6, 8u);
  }

  [(WPDScanManager *)self setIsRanging:rangingCopy];
  if ([(WPDManager *)self state]== 3)
  {
    [(WPDScanManager *)self updateScanner];
  }
}

- (void)addSpyScanClient:(id)client
{
  v18 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager addSpyScanClient:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    spyScanClients = [(WPDScanManager *)self spyScanClients];
    v14 = 138412290;
    v15 = spyScanClients;
    _os_log_impl(&dword_272965000, v6, OS_LOG_TYPE_DEFAULT, "Current spy scan clients: %@", &v14, 0xCu);
  }

  spyScanClients2 = [(WPDScanManager *)self spyScanClients];
  v9 = [spyScanClients2 containsObject:clientCopy];

  if ((v9 & 1) == 0)
  {
    spyScanClients3 = [(WPDScanManager *)self spyScanClients];
    [spyScanClients3 addObject:clientCopy];
  }

  if (WPLogInitOnce != -1)
  {
    [WPDScanManager addSpyScanClient:];
  }

  v11 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    spyScanClients4 = [(WPDScanManager *)self spyScanClients];
    v14 = 138412546;
    v15 = spyScanClients4;
    v16 = 2112;
    v17 = clientCopy;
    _os_log_impl(&dword_272965000, v12, OS_LOG_TYPE_DEFAULT, "Current spy scan clients: %@ after adding client %@", &v14, 0x16u);
  }
}

- (void)removeSpyScanClient:(id)client
{
  v18 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager removeSpyScanClient:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    spyScanClients = [(WPDScanManager *)self spyScanClients];
    v14 = 138412290;
    v15 = spyScanClients;
    _os_log_impl(&dword_272965000, v6, OS_LOG_TYPE_DEFAULT, "Current spy scan clients: %@", &v14, 0xCu);
  }

  spyScanClients2 = [(WPDScanManager *)self spyScanClients];
  v9 = [spyScanClients2 count];

  if (v9)
  {
    spyScanClients3 = [(WPDScanManager *)self spyScanClients];
    [spyScanClients3 removeObject:clientCopy];

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager removeSpyScanClient:];
    }

    v11 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      spyScanClients4 = [(WPDScanManager *)self spyScanClients];
      v14 = 138412546;
      v15 = spyScanClients4;
      v16 = 2112;
      v17 = clientCopy;
      _os_log_impl(&dword_272965000, v12, OS_LOG_TYPE_DEFAULT, "Current spy scan clients: %@ after removing client %@", &v14, 0x16u);
    }
  }
}

- (void)removeConflictingRequest:(id)request forClient:(id)client
{
  v43 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  clientCopy = client;
  server = [(WPDManager *)self server];
  v9 = [server isClientTestMode:clientCopy];

  clientType = [requestCopy clientType];
  v11 = clientType;
  if ((v9 & 1) != 0 || clientType == 18)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager removeConflictingRequest:forClient:];
    }

    v23 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      *v39 = 138412802;
      *&v39[4] = clientCopy;
      *&v39[12] = 1024;
      *&v39[14] = v9;
      *&v39[18] = 1024;
      *&v39[20] = v11 == 18;
      _os_log_debug_impl(&dword_272965000, v23, OS_LOG_TYPE_DEBUG, "%@ skip check for conflicting request: test mode:%d ObjectDiscovery:%d", v39, 0x18u);
    }
  }

  else
  {
    *v39 = 0;
    *&v39[8] = v39;
    *&v39[16] = 0x3032000000;
    v40 = __Block_byref_object_copy__2;
    v41 = __Block_byref_object_dispose__2;
    v42 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy__2;
    v33 = __Block_byref_object_dispose__2;
    v34 = 0;
    scanRequests = [(WPDScanManager *)self scanRequests];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __53__WPDScanManager_removeConflictingRequest_forClient___block_invoke_180;
    v24[3] = &unk_279E59580;
    v24[4] = self;
    v25 = requestCopy;
    v26 = clientCopy;
    v27 = v39;
    v28 = &v29;
    [scanRequests enumerateKeysAndObjectsUsingBlock:v24];

    if (*(*&v39[8] + 40))
    {
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager removeConflictingRequest:forClient:];
      }

      v13 = WiProxLog;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(*&v39[8] + 40);
        scanRequests2 = [(WPDScanManager *)self scanRequests];
        v16 = [scanRequests2 objectForKeyedSubscript:*(*&v39[8] + 40)];
        *buf = 138412546;
        v36 = v14;
        v37 = 2112;
        v38 = v16;
        _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, "Before removing scan request for client: %@ - %@", buf, 0x16u);
      }

      scanRequests3 = [(WPDScanManager *)self scanRequests];
      v18 = [scanRequests3 objectForKeyedSubscript:*(*&v39[8] + 40)];

      [v18 removeObject:v30[5]];
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager removeConflictingRequest:forClient:];
      }

      v19 = WiProxLog;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(*&v39[8] + 40);
        scanRequests4 = [(WPDScanManager *)self scanRequests];
        v22 = [scanRequests4 objectForKeyedSubscript:*(*&v39[8] + 40)];
        *buf = 138412546;
        v36 = v20;
        v37 = 2112;
        v38 = v22;
        _os_log_impl(&dword_272965000, v19, OS_LOG_TYPE_DEFAULT, "After removing scan request for client: %@ - %@", buf, 0x16u);
      }
    }

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(v39, 8);
  }
}

void __53__WPDScanManager_removeConflictingRequest_forClient___block_invoke_180(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) server];
  v8 = [v7 isClientTestMode:v5];

  if ((v8 & 1) == 0)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__WPDScanManager_removeConflictingRequest_forClient___block_invoke_2;
    v9[3] = &unk_279E59558;
    v10 = *(a1 + 40);
    v11 = v5;
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    [v6 enumerateObjectsUsingBlock:v9];
  }
}

void __53__WPDScanManager_removeConflictingRequest_forClient___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 clientType];
  if (v7 == [*(a1 + 32) clientType] && (objc_msgSend(*(a1 + 40), "isEqual:", *(a1 + 48)) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 40));
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    if (WPLogInitOnce != -1)
    {
      __53__WPDScanManager_removeConflictingRequest_forClient___block_invoke_2_cold_1();
    }

    v8 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = v8;
      v12 = [v9 clientType];
      v13 = *(a1 + 48);
      v14 = 138412802;
      v15 = v10;
      v16 = 2048;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_error_impl(&dword_272965000, v11, OS_LOG_TYPE_ERROR, "%@ is already scanning for type %ld, but new client %@ also wants to scan for same type. Remove existing scan request", &v14, 0x20u);
    }

    *a3 = 1;
  }
}

- (id)addScanRequest:(id)request forClient:(id)client
{
  v56[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  clientCopy = client;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager addScanRequest:forClient:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "Adding scan request called", buf, 2u);
  }

  if ([(WPDManager *)self state]== 3)
  {
    [(WPDScanManager *)self removeConflictingRequest:requestCopy forClient:clientCopy];
    scanRequests = [(WPDScanManager *)self scanRequests];
    v10 = [scanRequests objectForKeyedSubscript:clientCopy];

    if (!v10)
    {
      v11 = [MEMORY[0x277CBEB58] set];
      scanRequests2 = [(WPDScanManager *)self scanRequests];
      [scanRequests2 setObject:v11 forKeyedSubscript:clientCopy];
    }

    v13 = [MEMORY[0x277CBEB58] set];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    selfCopy = self;
    scanRequests3 = [(WPDScanManager *)self scanRequests];
    v42 = clientCopy;
    v15 = [scanRequests3 objectForKeyedSubscript:clientCopy];

    v16 = [v15 countByEnumeratingWithState:&v43 objects:v54 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v44;
      do
      {
        v19 = 0;
        do
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v43 + 1) + 8 * v19);
          clientType = [v20 clientType];
          if (clientType == [requestCopy clientType])
          {
            if (WPLogInitOnce != -1)
            {
              [WPDScanManager addScanRequest:forClient:];
            }

            v22 = WiProxLog;
            if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
            {
              v23 = v22;
              clientType2 = [requestCopy clientType];
              *buf = 138412546;
              *&buf[4] = v42;
              *&buf[12] = 2048;
              *&buf[14] = clientType2;
              _os_log_debug_impl(&dword_272965000, v23, OS_LOG_TYPE_DEBUG, "%@ is already scanning for type %ld. Replacing scan request", buf, 0x16u);
            }

            [v13 addObject:v20];
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v43 objects:v54 count:16];
      }

      while (v17);
    }

    scanRequests4 = [(WPDScanManager *)selfCopy scanRequests];
    v26 = [scanRequests4 objectForKeyedSubscript:v42];
    [v26 minusSet:v13];

    *buf = 0;
    *&buf[8] = 0;
    *&buf[14] = 0;
    v51 = 0;
    v52[0] = 0;
    *(v52 + 6) = 0;
    blobValue = [requestCopy blobValue];
    maskValue = [requestCopy maskValue];
    if ([blobValue length])
    {
      [blobValue getBytes:buf length:{objc_msgSend(blobValue, "length")}];
      if ([maskValue length])
      {
        [maskValue getBytes:&v51 length:{objc_msgSend(maskValue, "length")}];
      }

      else
      {
        [blobValue length];
        __memset_chk();
      }
    }

    v33 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:22];
    v34 = [MEMORY[0x277CBEA90] dataWithBytes:&v51 length:22];
    [requestCopy setBlobValue:v33];
    [requestCopy setMaskValue:v34];
    if (_os_feature_enabled_impl())
    {
      [requestCopy setStartPending:1];
    }

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager addScanRequest:forClient:];
    }

    v35 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      *v47 = 138543618;
      v48 = requestCopy;
      v49 = 2114;
      v50 = v42;
      _os_log_impl(&dword_272965000, v35, OS_LOG_TYPE_DEFAULT, "Adding scan request %{public}@ for client %{public}@", v47, 0x16u);
    }

    scanRequests5 = [(WPDScanManager *)selfCopy scanRequests];
    v37 = [scanRequests5 objectForKeyedSubscript:v42];
    [v37 addObject:requestCopy];

    server = [(WPDManager *)selfCopy server];
    statsManager = [server statsManager];
    [statsManager resetActivity:0 forType:{objc_msgSend(requestCopy, "clientType")}];

    [(WPDScanManager *)selfCopy updateScanner];
    clientCopy = v42;

    v31 = 0;
  }

  else
  {
    v29 = MEMORY[0x277CCA9B8];
    v55 = *MEMORY[0x277CCA450];
    v56[0] = @"CoreBluetooth is currently powered off";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
    v31 = [v29 errorWithDomain:@"WPErrorDomain" code:1 userInfo:v30];

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager addScanRequest:forClient:];
    }

    v32 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [(WPDScanManager *)v32 addScanRequest:requestCopy forClient:self];
    }
  }

  return v31;
}

- (id)removeScanRequest:(id)request forClient:(id)client
{
  v39[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  clientCopy = client;
  v8 = MEMORY[0x277CCA9B8];
  v38 = *MEMORY[0x277CCA450];
  v39[0] = @"CoreBluetooth isn't scanning for this device type";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v10 = [v8 errorWithDomain:@"WPErrorDomain" code:10 userInfo:v9];

  if (!requestCopy)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager removeScanRequest:forClient:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDScanManager removeScanRequest:forClient:];
      if (v10)
      {
        goto LABEL_21;
      }
    }

    else if (v10)
    {
      goto LABEL_21;
    }

LABEL_26:
    server = [(WPDManager *)self server];
    statsManager = [server statsManager];
    [statsManager resetActivity:0 forType:{objc_msgSend(requestCopy, "clientType")}];

    [(WPDScanManager *)self updateScanner];
    goto LABEL_27;
  }

  v11 = [MEMORY[0x277CBEB58] set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  selfCopy = self;
  scanRequests = [(WPDScanManager *)self scanRequests];
  v13 = clientCopy;
  v14 = [scanRequests objectForKeyedSubscript:clientCopy];

  v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      v18 = 0;
      do
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * v18);
        clientType = [v19 clientType];
        if (clientType == [requestCopy clientType])
        {
          if (WPLogInitOnce != -1)
          {
            [WPDScanManager removeScanRequest:forClient:];
          }

          v21 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v34 = requestCopy;
            v35 = 2114;
            v36 = v13;
            _os_log_impl(&dword_272965000, v21, OS_LOG_TYPE_DEFAULT, "Removing scan request %{public}@ for client %{public}@", buf, 0x16u);
          }

          [v11 addObject:v19];

          v10 = 0;
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v16);
  }

  self = selfCopy;
  scanRequests2 = [(WPDScanManager *)selfCopy scanRequests];
  clientCopy = v13;
  v23 = [scanRequests2 objectForKeyedSubscript:v13];
  [v23 minusSet:v11];

  if (!v10)
  {
    goto LABEL_26;
  }

LABEL_21:
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager removeScanRequest:forClient:];
  }

  v24 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = clientCopy;
    _os_log_impl(&dword_272965000, v24, OS_LOG_TYPE_INFO, "WirelessProximity has no scan requests for client %@", buf, 0xCu);
  }

LABEL_27:

  return v10;
}

- (id)getScanRequestsForClient:(id)client
{
  clientCopy = client;
  scanRequests = [(WPDScanManager *)self scanRequests];
  v6 = [scanRequests objectForKeyedSubscript:clientCopy];

  allObjects = [v6 allObjects];

  return allObjects;
}

- (void)removeScanRequestsForClient:(id)client
{
  v9 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager removeScanRequestsForClient:];
  }

  v5 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = clientCopy;
    _os_log_impl(&dword_272965000, v5, OS_LOG_TYPE_DEFAULT, "Removing all scan requests for client %{public}@", &v7, 0xCu);
  }

  scanRequests = [(WPDScanManager *)self scanRequests];
  [scanRequests removeObjectForKey:clientCopy];

  [(WPDScanManager *)self updateScanner];
}

- (void)assertCBDiscoveryScan:(BOOL)scan
{
  scanCopy = scan;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (scanCopy)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager assertCBDiscoveryScan:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDScanManager assertCBDiscoveryScan:];
    }

    cbDiscoveryAsserter = [(WPDScanManager *)selfCopy cbDiscoveryAsserter];

    if (!cbDiscoveryAsserter)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBE010]);
      [(WPDScanManager *)selfCopy setCbDiscoveryAsserter:v6];
    }

    cbDiscoveryAsserter2 = [(WPDScanManager *)selfCopy cbDiscoveryAsserter];
    [cbDiscoveryAsserter2 activateAssertionWithFlags:1 completion:&__block_literal_global_224_0];
  }

  else
  {
    cbDiscoveryAsserter3 = [(WPDScanManager *)selfCopy cbDiscoveryAsserter];

    if (cbDiscoveryAsserter3)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager assertCBDiscoveryScan:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        [WPDScanManager assertCBDiscoveryScan:];
      }

      cbDiscoveryAsserter4 = [(WPDScanManager *)selfCopy cbDiscoveryAsserter];
      [cbDiscoveryAsserter4 invalidate];

      [(WPDScanManager *)selfCopy setCbDiscoveryAsserter:0];
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager assertCBDiscoveryScan:];
      }

      v10 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_272965000, v10, OS_LOG_TYPE_INFO, "assertCBDiscoveryScan de-asserted", v11, 2u);
      }
    }
  }

  objc_sync_exit(selfCopy);
}

void __40__WPDScanManager_assertCBDiscoveryScan___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (WPLogInitOnce != -1)
    {
      __40__WPDScanManager_assertCBDiscoveryScan___block_invoke_cold_1();
    }

    v3 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      __40__WPDScanManager_assertCBDiscoveryScan___block_invoke_cold_2(v3);
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      __40__WPDScanManager_assertCBDiscoveryScan___block_invoke_cold_3();
    }

    v4 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_INFO, "assertCBDiscoveryScan asserted", v5, 2u);
    }
  }
}

void __35__WPDScanManager_isScannerTestMode__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [v7 server];
  LODWORD(v7) = [v9 isClientTestMode:v8];

  if (v7)
  {
    v10 = [v11 count];

    if (v10)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  else
  {
  }
}

- (BOOL)heySiriScanActive:(BOOL)active
{
  activeCopy = active;
  v35 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  scanRequests = [(WPDScanManager *)self scanRequests];
  v22 = [scanRequests countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v22)
  {
    v6 = *v30;
    v23 = scanRequests;
    v21 = *v30;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(scanRequests);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        scanRequests2 = [(WPDScanManager *)self scanRequests];
        v10 = [scanRequests2 objectForKeyedSubscript:v8];

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v26;
LABEL_8:
          v15 = 0;
          while (1)
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(v11);
            }

            if ([*(*(&v25 + 1) + 8 * v15) clientType] == 8)
            {
              if (!activeCopy)
              {
                break;
              }

              server = [(WPDManager *)self server];
              v17 = [server isClientTestMode:v8];

              if (v17)
              {
                break;
              }
            }

            if (v13 == ++v15)
            {
              v13 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v13)
              {
                goto LABEL_8;
              }

              goto LABEL_16;
            }
          }

          if ([(WPDManager *)self isScanAllowlistedForType:8])
          {
            v18 = 1;
            goto LABEL_26;
          }

          if (WPLogInitOnce != -1)
          {
            [WPDScanManager heySiriScanActive:];
          }

          v19 = WiProxLog;
          v18 = 0;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_272965000, v19, OS_LOG_TYPE_DEFAULT, "WPClientHeySiri scan is denylisted or not allowlisted", buf, 2u);
            goto LABEL_25;
          }

          goto LABEL_26;
        }

LABEL_16:

        scanRequests = v23;
        v6 = v21;
      }

      v22 = [v23 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:
  v18 = 0;
LABEL_26:
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager heySiriScanActive:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDScanManager heySiriScanActive:];
  }

  return v18;
}

- (void)reconcileScanRule:(id)rule withRule:(id)withRule
{
  ruleCopy = rule;
  withRuleCopy = withRule;
  v7 = [ruleCopy objectForKeyedSubscript:*MEMORY[0x277CBDE00]];
  integerValue = [v7 integerValue];

  if (integerValue == 18)
  {
    v9 = MEMORY[0x277CBEB58];
    allKeys = [ruleCopy allKeys];
    v11 = [v9 setWithArray:allKeys];

    v12 = MEMORY[0x277CBEB98];
    allKeys2 = [withRuleCopy allKeys];
    v14 = [v12 setWithArray:allKeys2];
    [v11 unionSet:v14];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __45__WPDScanManager_reconcileScanRule_withRule___block_invoke_255;
    v15[3] = &unk_279E595F0;
    v16 = ruleCopy;
    v17 = withRuleCopy;
    v18 = 18;
    [v11 enumerateObjectsUsingBlock:v15];
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager reconcileScanRule:withRule:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDScanManager reconcileScanRule:withRule:];
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager reconcileScanRule:withRule:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDScanManager reconcileScanRule:withRule:];
    }
  }
}

void __45__WPDScanManager_reconcileScanRule_withRule___block_invoke_255(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (*MEMORY[0x277CBDDD8] == v4)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v4];
    if (v7)
    {
      v8 = v7;
      v9 = [*(a1 + 40) objectForKeyedSubscript:v5];

      if (v9)
      {
        v10 = MEMORY[0x277CCABB0];
        v11 = [*(a1 + 32) objectForKeyedSubscript:v5];
        v12 = [v11 BOOLValue];
        if (v12)
        {
          v13 = 1;
        }

        else
        {
          v2 = [*(a1 + 40) objectForKeyedSubscript:v5];
          v13 = [v2 BOOLValue];
        }

        v27 = [v10 numberWithInt:v13];
        [*(a1 + 32) setObject:v27 forKeyedSubscript:v5];

        if ((v12 & 1) == 0)
        {
        }

        goto LABEL_29;
      }
    }

    goto LABEL_16;
  }

  if (*MEMORY[0x277CBDDF8] == v4)
  {
    v14 = [*(a1 + 32) objectForKeyedSubscript:v4];
    if (v14)
    {
      v15 = v14;
      v16 = [*(a1 + 40) objectForKeyedSubscript:v5];

      if (v16)
      {
        v17 = MEMORY[0x277CCABB0];
        v18 = [*(a1 + 32) objectForKeyedSubscript:v5];
        v19 = [v18 intValue];

        v20 = [*(a1 + 40) objectForKeyedSubscript:v5];
        v21 = [v20 intValue];

        if (v19 >= v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = v19;
        }

        v23 = [v17 numberWithInt:v22];
LABEL_20:
        v11 = v23;
        [*(a1 + 32) setObject:v23 forKeyedSubscript:v5];
LABEL_29:

        goto LABEL_30;
      }
    }

LABEL_16:
    v24 = [*(a1 + 32) objectForKeyedSubscript:v5];
    if (v24)
    {

      goto LABEL_30;
    }

    v25 = [*(a1 + 40) objectForKeyedSubscript:v5];

    if (!v25)
    {
      goto LABEL_30;
    }

    v23 = [*(a1 + 40) objectForKeyedSubscript:v5];
    goto LABEL_20;
  }

  if (*MEMORY[0x277CBDE00] != v4)
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v4];
    if (v6)
    {
    }

    else
    {
      v26 = [*(a1 + 40) objectForKeyedSubscript:v5];

      if (!v26)
      {
        goto LABEL_30;
      }
    }

    if (WPLogInitOnce != -1)
    {
      __45__WPDScanManager_reconcileScanRule_withRule___block_invoke_255_cold_1();
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      __45__WPDScanManager_reconcileScanRule_withRule___block_invoke_255_cold_2();
    }
  }

LABEL_30:
}

- (void)duplicateRulesGuard:(id)guard forRule:(id)rule
{
  ruleCopy = rule;
  v7 = *MEMORY[0x277CBDE00];
  guardCopy = guard;
  v9 = [ruleCopy objectForKeyedSubscript:v7];
  integerValue = [v9 integerValue];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__WPDScanManager_duplicateRulesGuard_forRule___block_invoke;
  v12[3] = &unk_279E59618;
  v14 = integerValue;
  v12[4] = self;
  v13 = ruleCopy;
  v11 = ruleCopy;
  [guardCopy enumerateObjectsUsingBlock:v12];
}

void __46__WPDScanManager_duplicateRulesGuard_forRule___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [v9 objectForKeyedSubscript:*MEMORY[0x277CBDE00]];
  v7 = [v6 integerValue];
  v8 = *(a1 + 48);

  if (v7 == v8)
  {
    [*(a1 + 32) reconcileScanRule:v9 withRule:*(a1 + 40)];
    *a4 = 1;
  }
}

void __33__WPDScanManager_updateScanRules__block_invoke_2_314(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ([v8 allowDuplicates] && objc_msgSend(v8, "clientType") != 18)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = MEMORY[0x277CBEC38];

    *a4 = 1;
  }
}

- (id)ruleHashesFromScanOptions:(id)options
{
  optionsCopy = options;
  v4 = optionsCopy;
  if (optionsCopy)
  {
    v5 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277CBDDE0]];
    if (v5)
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x3032000000;
      v12 = __Block_byref_object_copy__2;
      v13 = __Block_byref_object_dispose__2;
      array = [MEMORY[0x277CBEB18] array];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __44__WPDScanManager_ruleHashesFromScanOptions___block_invoke;
      v8[3] = &unk_279E59728;
      v8[4] = &v9;
      [v5 enumerateObjectsUsingBlock:v8];
      v6 = [MEMORY[0x277CBEB98] setWithArray:v10[5]];
      _Block_object_dispose(&v9, 8);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __44__WPDScanManager_ruleHashesFromScanOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a2, "hash")}];
  [v2 addObject:v3];
}

- (id)scanRequestHashesFromScanRequests:(id)requests
{
  requestsCopy = requests;
  if (requestsCopy)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__2;
    v11 = __Block_byref_object_dispose__2;
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __52__WPDScanManager_scanRequestHashesFromScanRequests___block_invoke;
    v6[3] = &unk_279E59668;
    v6[4] = &v7;
    [requestsCopy enumerateObjectsUsingBlock:v6];
    v4 = [MEMORY[0x277CBEB98] setWithArray:v8[5]];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __52__WPDScanManager_scanRequestHashesFromScanRequests___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a2, "hash")}];
  [v2 addObject:v3];
}

- (BOOL)scanOptionsChanged:(id)changed ForRequests:(id)requests
{
  v39 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  requestsCopy = requests;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__2;
  v31[4] = __Block_byref_object_dispose__2;
  string = [MEMORY[0x277CCAB68] string];
  v8 = objc_autoreleasePoolPush();
  v9 = [(WPDScanManager *)self ruleHashesFromScanOptions:changedCopy];
  v10 = [(WPDScanManager *)self scanRequestHashesFromScanRequests:requestsCopy];
  if (!changedCopy || ([(WPDScanManager *)self scanOptions], v11 = objc_claimAutoreleasedReturnValue(), v12 = v11 == 0, v11, v12))
  {
    scanOptions = [(WPDScanManager *)self scanOptions];
    *(v34 + 24) = (changedCopy | scanOptions) != 0;

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager scanOptionsChanged:ForRequests:];
    }

    v16 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      v17 = *(v34 + 24);
      *buf = 67109120;
      v38 = v17;
      v18 = "Scan options changed (from/to nil): %d";
LABEL_29:
      _os_log_impl(&dword_272965000, v16, OS_LOG_TYPE_INFO, v18, buf, 8u);
    }
  }

  else
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __49__WPDScanManager_scanOptionsChanged_ForRequests___block_invoke;
    v30[3] = &unk_279E59750;
    v30[4] = self;
    v30[5] = &v33;
    v30[6] = v31;
    [changedCopy enumerateKeysAndObjectsUsingBlock:v30];
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager scanOptionsChanged:ForRequests:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDScanManager scanOptionsChanged:ForRequests:];
    }

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager scanOptionsChanged:ForRequests:];
    }

    v13 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      v14 = *(v34 + 24);
      *buf = 67109120;
      v38 = v14;
      _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_INFO, "Scan options changed (options): %d", buf, 8u);
    }

    if (*(v34 + 24) == 1)
    {
      *(v34 + 24) = 1;
    }

    else
    {
      scanRequestHashes = [(WPDScanManager *)self scanRequestHashes];
      v20 = [v10 isEqualToSet:scanRequestHashes];
      *(v34 + 24) = v20 ^ 1;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager scanOptionsChanged:ForRequests:];
    }

    v21 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      v22 = *(v34 + 24);
      *buf = 67109120;
      v38 = v22;
      _os_log_impl(&dword_272965000, v21, OS_LOG_TYPE_INFO, "Scan options changed (requests): %d", buf, 8u);
    }

    if (*(v34 + 24) == 1)
    {
      *(v34 + 24) = 1;
    }

    else
    {
      scanRuleHashes = [(WPDScanManager *)self scanRuleHashes];
      v24 = [v9 isEqualToSet:scanRuleHashes];
      *(v34 + 24) = v24 ^ 1;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager scanOptionsChanged:ForRequests:];
    }

    v16 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      v25 = *(v34 + 24);
      *buf = 67109120;
      v38 = v25;
      v18 = "Scan options changed (rules): %d";
      goto LABEL_29;
    }
  }

  if (*(v34 + 24) == 1)
  {
    [(WPDScanManager *)self setScanOptions:changedCopy];
    [(WPDScanManager *)self setScanRequestHashes:v10];
    [(WPDScanManager *)self setScanRuleHashes:v9];
  }

  if (WPLogInitOnce != -1)
  {
    [WPDScanManager scanOptionsChanged:ForRequests:];
  }

  v26 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(v34 + 24);
    *buf = 67109120;
    v38 = v27;
    _os_log_impl(&dword_272965000, v26, OS_LOG_TYPE_DEFAULT, "Scan options changed: %d", buf, 8u);
  }

  objc_autoreleasePoolPop(v8);
  v28 = *(v34 + 24);
  _Block_object_dispose(v31, 8);

  _Block_object_dispose(&v33, 8);
  return v28 & 1;
}

void __49__WPDScanManager_scanOptionsChanged_ForRequests___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v7 = a3;
  if (*MEMORY[0x277CBDDE0] != v12 && *MEMORY[0x277CBDEF8] != v12)
  {
    v9 = *(*(a1 + 40) + 8);
    if (*(v9 + 24) == 1)
    {
      *(v9 + 24) = 1;
    }

    else
    {
      v10 = [*(a1 + 32) scanOptions];
      v11 = [v10 objectForKeyedSubscript:v12];
      *(*(*(a1 + 40) + 8) + 24) = v11 != v7;
    }

    *a4 = *(*(*(a1 + 40) + 8) + 24);
    [*(*(*(a1 + 48) + 8) + 40) appendFormat:@"Scan options %@ => %@ changed: %d\n", v12, v7, *(*(*(a1 + 40) + 8) + 24)];
  }
}

- (void)logScanRequests:(id)requests method:(BOOL)method window:(int64_t)window interval:(int64_t)interval
{
  v18 = *MEMORY[0x277D85DE8];
  if (method)
  {
    v8 = @"Actively";
  }

  else
  {
    v8 = @"Passively";
  }

  v9 = MEMORY[0x277CCAB68];
  requestsCopy = requests;
  v11 = [v9 stringWithFormat:@"%@ scanning for devices of types: ", v8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__WPDScanManager_logScanRequests_method_window_interval___block_invoke;
  v14[3] = &unk_279E59778;
  v12 = v11;
  v15 = v12;
  [requestsCopy enumerateObjectsUsingBlock:v14];

  [v12 appendFormat:@"(Window: %ld/Interval: %ld)", window, interval];
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager logScanRequests:method:window:interval:];
  }

  v13 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v12;
    _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }
}

- (void)logScanTypes:(id)types method:(BOOL)method window:(int64_t)window interval:(int64_t)interval
{
  v18 = *MEMORY[0x277D85DE8];
  if (method)
  {
    v8 = @"Actively";
  }

  else
  {
    v8 = @"Passively";
  }

  v9 = MEMORY[0x277CCAB68];
  typesCopy = types;
  v11 = [v9 stringWithFormat:@"%@ scanning for devices of types: ", v8];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54__WPDScanManager_logScanTypes_method_window_interval___block_invoke;
  v14[3] = &unk_279E597A0;
  v12 = v11;
  v15 = v12;
  [typesCopy enumerateIndexesUsingBlock:v14];

  [v12 appendFormat:@"(Window: %ld/Interval: %ld)", window, interval];
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager logScanTypes:method:window:interval:];
  }

  v13 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v12;
    _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }
}

- (id)clearDuplicateFilterCache:(id)cache forClient:(id)client
{
  v34[1] = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  clientCopy = client;
  v8 = MEMORY[0x277CCA9B8];
  v33 = *MEMORY[0x277CCA450];
  v34[0] = @"CoreBluetooth isn't scanning for this device type";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  v10 = [v8 errorWithDomain:@"WPErrorDomain" code:10 userInfo:v9];

  if (cacheCopy)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    scanRequests = [(WPDScanManager *)self scanRequests];
    v12 = [scanRequests objectForKeyedSubscript:clientCopy];

    v13 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          clientType = [*(*(&v26 + 1) + 8 * i) clientType];
          if (clientType == [cacheCopy clientType])
          {

            v10 = 0;
            goto LABEL_12;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager clearDuplicateFilterCache:forClient:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDScanManager removeScanRequest:forClient:];
    }
  }

  if (v10)
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager clearDuplicateFilterCache:forClient:];
    }

    v18 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = clientCopy;
      _os_log_impl(&dword_272965000, v18, OS_LOG_TYPE_INFO, "WirelessProximity has no scan requests for client %@", buf, 0xCu);
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager clearDuplicateFilterCache:forClient:];
    }

    v19 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      clientType2 = [cacheCopy clientType];
      *buf = 67109120;
      LODWORD(v31) = clientType2;
      _os_log_impl(&dword_272965000, v20, OS_LOG_TYPE_DEFAULT, "About to clearDuplicateFilterCache for type: %d", buf, 8u);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(cacheCopy, "clientType")}];
    [dictionary setObject:v23 forKey:*MEMORY[0x277CBDDA0]];

    centralManager = [(WPDScanManager *)self centralManager];
    [centralManager clearDuplicateFilterCache:dictionary];
  }

  return v10;
}

- (void)clearExistingConnections
{
  connectionsInProgress = [(WPDScanManager *)self connectionsInProgress];
  [connectionsInProgress removeAllObjects];

  peripheralConnections = [(WPDScanManager *)self peripheralConnections];
  [peripheralConnections removeAllObjects];

  server = [(WPDManager *)self server];
  getAllClients = [server getAllClients];
  [getAllClients enumerateObjectsUsingBlock:&__block_literal_global_384_0];
}

void __42__WPDScanManager_clearExistingConnections__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (objc_opt_respondsToSelector())
    {
      [v2 resetConnection];
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        __42__WPDScanManager_clearExistingConnections__block_invoke_cold_1();
      }

      v3 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        __42__WPDScanManager_clearExistingConnections__block_invoke_cold_2(v3);
      }
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      __42__WPDScanManager_clearExistingConnections__block_invoke_cold_3();
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      __42__WPDScanManager_clearExistingConnections__block_invoke_cold_4();
    }
  }
}

- (void)centralManagerDidUpdateState:(id)state
{
  v3.receiver = self;
  v3.super_class = WPDScanManager;
  [(WPDManager *)&v3 cbManagerDidUpdateState:state];
}

- (void)update
{
  v27 = *MEMORY[0x277D85DE8];
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager update];
  }

  v3 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v22 = 67109376;
    *v23 = [(WPDManager *)self state];
    *&v23[4] = 1024;
    *&v23[6] = [(WPDManager *)self restricted];
    _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_DEFAULT, "Scanner Central manager update with state: %d restricted: %d", &v22, 0xEu);
  }

  state = [(WPDManager *)self state];
  if (state > 1)
  {
    if (state == 2)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager update];
      }

      v14 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v14;
        centralManager = [(WPDScanManager *)self centralManager];
        state2 = [centralManager state];
        connectionsInProgress = [(WPDScanManager *)self connectionsInProgress];
        peripheralConnections = [(WPDScanManager *)self peripheralConnections];
        v22 = 134218498;
        *v23 = state2;
        *&v23[8] = 2112;
        v24 = connectionsInProgress;
        v25 = 2112;
        v26 = peripheralConnections;
        _os_log_impl(&dword_272965000, v15, OS_LOG_TYPE_DEFAULT, "Scanner Central manager is unknown, powered off, unauthorized or not supported (%ld) - reset connection in progress %@ and peripheral connections %@", &v22, 0x20u);
      }

LABEL_27:
      [(WPDScanManager *)self clearExistingConnections];
      server = [(WPDManager *)self server];
      statsManager = [server statsManager];
      [statsManager stopActivity:0];

      return;
    }

    if (state == 3)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager update];
      }

      v10 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        restricted = [(WPDManager *)self restricted];
        v22 = 67109120;
        *v23 = restricted;
        _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_DEFAULT, "Scanner Central manager is powered on, restricted: %d", &v22, 8u);
      }

      [(WPDScanManager *)self updateScanner];
    }
  }

  else
  {
    if (state)
    {
      if (state != 1)
      {
        return;
      }

      if (WPLogInitOnce != -1)
      {
        [WPDScanManager update];
      }

      v6 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v6;
        connectionsInProgress2 = [(WPDScanManager *)self connectionsInProgress];
        peripheralConnections2 = [(WPDScanManager *)self peripheralConnections];
        v22 = 138412546;
        *v23 = connectionsInProgress2;
        *&v23[8] = 2112;
        v24 = peripheralConnections2;
        _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "Scanner Central manager is resetting - reset connection in progress %@ and peripheral connections %@", &v22, 0x16u);
      }

      goto LABEL_27;
    }

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager update];
    }

    v13 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, "Scanner Central manager state is unknown", &v22, 2u);
    }
  }
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  v68 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  peripheralCopy = peripheral;
  dataCopy = data;
  iCopy = i;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager centralManager:didDiscoverPeripheral:advertisementData:RSSI:];
  }

  v14 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDScanManager centralManager:v14 didDiscoverPeripheral:peripheralCopy advertisementData:iCopy RSSI:?];
  }

  scanRequests = [(WPDScanManager *)self scanRequests];
  currentScanners = [(WPDScanManager *)self currentScanners];
  selfCopy = self;
  spyScanClients = [(WPDScanManager *)self spyScanClients];
  v18 = [dataCopy objectForKeyedSubscript:*MEMORY[0x277CBDD10]];
  bytes = [v18 bytes];
  v20 = [v18 length];
  if (v20 < 2 || *bytes != 76 || bytes[1])
  {
    goto LABEL_30;
  }

  v21 = v20;
  v45 = dataCopy;
  v46 = peripheralCopy;
  v47 = managerCopy;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (v21 < 4)
  {
    goto LABEL_26;
  }

  v23 = &bytes[v21];
  v24 = bytes + 2;
  *&v22 = 134218242;
  v44 = v22;
  v48 = &bytes[v21];
  v49 = bytes;
  while (1)
  {
    v25 = *v24;
    v26 = v24 + 2;
    v27 = (v24[1] & 0x1F);
    v28 = v23 - (v24 + 2);
    if (v28 < v27)
    {
      break;
    }

    v29 = &v27[v26];
    if ((v25 - 28) <= 0xE4u)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager centralManager:didDiscoverPeripheral:advertisementData:RSSI:];
      }

      v30 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
      {
        *buf = v44;
        v63 = v25;
        v64 = 2112;
        v65 = v18;
        _os_log_debug_impl(&dword_272965000, v30, OS_LOG_TYPE_DEBUG, "Unsupported payload type %ld, data %@", buf, 0x16u);
      }

      goto LABEL_20;
    }

LABEL_18:
    if ([currentScanners containsIndex:{*v24, v44}])
    {
      [MEMORY[0x277CBEB28] dataWithBytes:v49 length:2];
      v31 = spyScanClients;
      v32 = currentScanners;
      v33 = scanRequests;
      v35 = v34 = iCopy;
      [v35 appendBytes:v24 length:v27 + 2];
      v36 = [MEMORY[0x277CBEA90] dataWithData:v35];
      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v25];
      [dictionary setObject:v36 forKey:v37];

      iCopy = v34;
      scanRequests = v33;
      currentScanners = v32;
      spyScanClients = v31;
      v23 = v48;
    }

LABEL_20:
    v24 = v29;
    if (v23 - v29 <= 1)
    {
      goto LABEL_26;
    }
  }

  if (v25 == 4)
  {
    v29 = &v26[v28];
    v27 = (v23 - (v24 + 2));
    goto LABEL_18;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDScanManager centralManager:didDiscoverPeripheral:advertisementData:RSSI:];
  }

  v38 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218498;
    v63 = v25;
    v64 = 2048;
    v65 = v27;
    v66 = 2112;
    v67 = v18;
    _os_log_error_impl(&dword_272965000, v38, OS_LOG_TYPE_ERROR, "Bad payload type %ld length %zu, data %@", buf, 0x20u);
  }

LABEL_26:
  peripheralCopy = v46;
  name = [v46 name];
  if (name)
  {
    name2 = [v46 name];
  }

  else
  {
    name2 = @"Unknown";
  }

  dataCopy = v45;

  identifier = [v46 identifier];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_427;
  v52[3] = &unk_279E59810;
  v53 = scanRequests;
  v54 = identifier;
  v55 = v45;
  v56 = selfCopy;
  v57 = v46;
  v58 = iCopy;
  v59 = v18;
  v60 = name2;
  v61 = spyScanClients;
  v42 = name2;
  v43 = identifier;
  [dictionary enumerateKeysAndObjectsUsingBlock:v52];

  managerCopy = v47;
LABEL_30:
}

void __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_427(uint64_t a1, void *a2, void *a3)
{
  v77[12] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_2;
  v67[3] = &unk_279E597E8;
  v8 = v5;
  v68 = v8;
  v69 = *(a1 + 40);
  v9 = v6;
  v70 = v9;
  v59 = [v7 keysOfEntriesPassingTest:v67];
  v10 = *MEMORY[0x277CBDD30];
  v11 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277CBDD30]];
  v12 = *MEMORY[0x277CBDD38];
  v13 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277CBDD38]];
  v14 = *MEMORY[0x277CBDD28];
  v58 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277CBDD28]];
  v15 = *MEMORY[0x277CBDD18];
  v57 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277CBDD18]];
  v16 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:*(a1 + 48)];
  v17 = v16;
  v50 = v11;
  if (v11)
  {
    [v16 removeObjectForKey:v10];
  }

  if (v13)
  {
    [v17 removeObjectForKey:v12];
  }

  if (v58)
  {
    [v17 removeObjectForKey:v14];
  }

  if (v57)
  {
    [v17 removeObjectForKey:v15];
  }

  v18 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277CBDCE0]];
  v19 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277CBDCD8]];
  v56 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277CBDD20]];
  v55 = [*(a1 + 48) objectForKeyedSubscript:*MEMORY[0x277CBDD40]];
  if ([v8 integerValue] == 15 || objc_msgSend(v8, "integerValue") == 16 || objc_msgSend(v8, "integerValue") == 7)
  {
    v20 = [*(a1 + 56) centralManager];
    v21 = [v20 sharedPairingAgent];
    v22 = [v21 isPeerPaired:*(a1 + 64)];
  }

  else
  {
    v22 = 0;
  }

  v49 = v13;
  v54 = [*(a1 + 48) objectForKeyedSubscript:@"kCBAdvDataProximityPairingStatusDecrypted"];
  v53 = [*(a1 + 48) objectForKeyedSubscript:@"kCBAdvDataAccessoryStatusDecrypted"];
  v76[0] = @"kDeviceAdvertisingPacket";
  v76[1] = @"kDeviceAdvertisingData";
  v48 = v17;
  v77[0] = v17;
  v77[1] = v9;
  v23 = &unk_288201A00;
  if (v19)
  {
    v23 = v19;
  }

  v77[2] = v23;
  v76[2] = @"kDeviceChannel";
  v76[3] = @"kDeviceAddress";
  v24 = v18;
  if (!v18)
  {
    v24 = [MEMORY[0x277CBEA90] data];
  }

  v51 = v9;
  v25 = *(a1 + 72);
  v26 = *(a1 + 80);
  v77[3] = v24;
  v77[4] = v25;
  v76[4] = @"kDeviceRSSI";
  v76[5] = @"kDevicePeripheralUUID";
  v77[5] = *(a1 + 40);
  v77[6] = v26;
  v76[6] = @"kDeviceManufacturerData";
  v76[7] = @"kDeviceName";
  v77[7] = *(a1 + 88);
  v77[8] = v8;
  v52 = v8;
  v76[8] = @"kDeviceType";
  v76[9] = @"kDevicePaired";
  v27 = [MEMORY[0x277CCABB0] numberWithBool:v22];
  v77[9] = v27;
  v76[10] = @"kDeviceTime";
  v28 = v55;
  if (!v55)
  {
    v28 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent()];
  }

  v76[11] = @"kDeviceDataSaturated";
  v29 = MEMORY[0x277CBEC28];
  if (v56)
  {
    v29 = v56;
  }

  v77[10] = v28;
  v77[11] = v29;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:12];
  v31 = [v30 mutableCopy];

  if (!v55)
  {
  }

  if (!v18)
  {
  }

  if (v54)
  {
    [v31 setObject:v54 forKeyedSubscript:@"kDeviceProxPairingStatusDecrypted"];
  }

  v46 = v19;
  v47 = v18;
  if (v53)
  {
    [v31 setObject:v53 forKeyedSubscript:{@"kDeviceAccessoryStatusDecrypted", v19, v18, v17}];
  }

  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_441;
  v65[3] = &unk_279E59420;
  v65[4] = *(a1 + 56);
  v32 = v31;
  v66 = v32;
  [v59 enumerateObjectsUsingBlock:v65];
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v33 = *(a1 + 96);
  v34 = [v33 countByEnumeratingWithState:&v61 objects:v75 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v62;
    do
    {
      v37 = 0;
      do
      {
        if (*v62 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v61 + 1) + 8 * v37);
        v39 = [*(a1 + 56) server];
        v40 = [v39 getClientForUUID:v38];

        if (v40)
        {
          v41 = [v32 copy];
          [v40 anyDiscoveredDevice:v41];
        }

        else
        {
          if (WPLogInitOnce != -1)
          {
            __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_427_cold_1();
          }

          v42 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
          {
            v43 = *(a1 + 56);
            log = v42;
            v44 = [v43 server];
            v45 = [v44 getAllClients];
            *buf = 138412546;
            v72 = v38;
            v73 = 2112;
            v74 = v45;
            _os_log_error_impl(&dword_272965000, log, OS_LOG_TYPE_ERROR, "Spy client %@ doesn't exist in current all clients: %@", buf, 0x16u);
          }
        }

        ++v37;
      }

      while (v35 != v37);
      v35 = [v33 countByEnumeratingWithState:&v61 objects:v75 count:16];
    }

    while (v35);
  }
}

uint64_t __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v26;
    *&v6 = 138412546;
    v24 = v6;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = [v10 clientType];
        if ([*(a1 + 32) integerValue] == v11)
        {
          v12 = [v10 peers];
          if (![v12 count])
          {

LABEL_22:
            v22 = 1;
            goto LABEL_23;
          }

          v13 = [v10 peers];
          v14 = [v13 containsObject:*(a1 + 40)];

          if (v14)
          {
            goto LABEL_22;
          }

          if (WPLogInitOnce != -1)
          {
            __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_2_cold_1();
          }

          v15 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
          {
            v17 = *(a1 + 40);
            v16 = *(a1 + 48);
            *buf = v24;
            v30 = v16;
            v31 = 2112;
            v32 = v17;
            _os_log_impl(&dword_272965000, v15, OS_LOG_TYPE_INFO, "Ignoring scan packet %@ because it's peer %@ is not being tracked", buf, 0x16u);
          }

          if ([v10 clientType] == 16)
          {
            if (WPLogInitOnce != -1)
            {
              __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_2_cold_2();
            }

            v18 = WiProxLog;
            if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
            {
              v19 = v18;
              v20 = [v10 peers];
              v21 = *(a1 + 40);
              *buf = v24;
              v30 = v20;
              v31 = 2112;
              v32 = v21;
              _os_log_impl(&dword_272965000, v19, OS_LOG_TYPE_INFO, "NearByInfo scanning for peers %@ but found %@", buf, 0x16u);
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v22 = 0;
LABEL_23:

  return v22;
}

void __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_441(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) server];
  v5 = [v4 getClientForUUID:v3];

  if (v5)
  {
    v6 = [*(a1 + 40) copy];
    [v5 discoveredDevice:v6];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_441_cold_1();
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      __78__WPDScanManager_centralManager_didDiscoverPeripheral_advertisementData_RSSI___block_invoke_441_cold_2();
    }
  }
}

- (void)centralManager:(id)manager didDiscoverMultiplePeripherals:(id)peripherals
{
  managerCopy = manager;
  peripheralsCopy = peripherals;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager centralManager:didDiscoverMultiplePeripherals:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPDScanManager centralManager:v7 didDiscoverMultiplePeripherals:?];
  }
}

- (void)centralManager:(id)manager didFailToScanWithError:(id)error
{
  v11 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  errorCopy = error;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager centralManager:didFailToScanWithError:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = errorCopy;
    _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "WPDScanManager UNEXPECTED didFailToScanWithError %{public}@", &v9, 0xCu);
  }

  if (WPLogInitOnce != -1)
  {
    [WPDScanManager centralManager:didFailToScanWithError:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "WPDScanManager scan failed to start - TODO add proper cleanup", &v9, 2u);
  }
}

+ (int64_t)zonesAvailableForType:(unsigned __int8)type
{
  if (type - 9) < 8u && ((0xCBu >> (type - 9)))
  {
    return 15;
  }

  if (WPLogInitOnce != -1)
  {
    +[WPDScanManager zonesAvailableForType:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    +[WPDScanManager zonesAvailableForType:];
  }

  return 0;
}

- (id)addPeerTrackingRequest:(id)request forClient:(id)client
{
  v44[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  clientCopy = client;
  clientType = [requestCopy clientType];
  if ([(WPDManager *)self state]== 3)
  {
    peerRequests = [(WPDScanManager *)self peerRequests];
    v10 = [peerRequests objectForKeyedSubscript:clientCopy];

    if (!v10)
    {
      v10 = [MEMORY[0x277CBEB58] set];
    }

    if ([v10 containsObject:requestCopy])
    {
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager addPeerTrackingRequest:forClient:];
      }

      v11 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        v12 = v11;
        peerUUID = [requestCopy peerUUID];
        *buf = 138412290;
        clientType2 = peerUUID;
        _os_log_impl(&dword_272965000, v12, OS_LOG_TYPE_INFO, "Peer %@ is already being tracked", buf, 0xCu);
      }

LABEL_24:
      v15 = 0;
      goto LABEL_34;
    }

    v16 = [WPDScanManager zonesAvailableForType:clientType];
    if ([v10 count] >= v16)
    {
      server = [(WPDManager *)self server];
      v25 = [server getClientForUUID:clientCopy];
      [v25 peerTrackingFull];

      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Peer tracking maxed out for client %ld (%lu slots)", objc_msgSend(requestCopy, "clientType"), objc_msgSend(v10, "count")];
      v27 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277CCA450];
      v36 = v26;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v15 = [v27 errorWithDomain:@"WPErrorDomain" code:14 userInfo:v28];

      if (WPLogInitOnce != -1)
      {
        [WPDScanManager addPeerTrackingRequest:forClient:];
      }

      v29 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        clientType2 = v26;
        _os_log_impl(&dword_272965000, v29, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
      }
    }

    else
    {
      [v10 addObject:requestCopy];
      if (WPLogInitOnce != -1)
      {
        [WPDScanManager addPeerTrackingRequest:forClient:];
      }

      v17 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
      {
        v18 = v17;
        *buf = 134218496;
        clientType2 = [requestCopy clientType];
        v39 = 2048;
        v40 = [v10 count];
        v41 = 2048;
        v42 = v16;
        _os_log_impl(&dword_272965000, v18, OS_LOG_TYPE_INFO, "Adding peer tracking request for client %ld. Using (%lu/%lu) tracking slots", buf, 0x20u);
      }

      peerUUID2 = [requestCopy peerUUID];
      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:clientType];
      v21 = [(WPDScanManager *)self startTrackingPeripheral:peerUUID2 ofType:v20];

      if (v21)
      {
        peerRequests2 = [(WPDScanManager *)self peerRequests];
        [peerRequests2 setObject:v10 forKeyedSubscript:clientCopy];

        if (WPLogInitOnce != -1)
        {
          [WPDScanManager addPeerTrackingRequest:forClient:];
        }

        v23 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
        {
          [WPDScanManager addPeerTrackingRequest:v23 forClient:?];
        }

        goto LABEL_24;
      }

      v30 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277CCA450];
      v34 = @"Unknown error";
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v15 = [v30 errorWithDomain:@"WPErrorDomain" code:26 userInfo:v31];

      if (WPLogInitOnce != -1)
      {
        [WPDScanManager addPeerTrackingRequest:forClient:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDScanManager addPeerTrackingRequest:forClient:];
      }
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager addPeerTrackingRequest:forClient:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDScanManager addPeerTrackingRequest:forClient:];
    }

    v14 = MEMORY[0x277CCA9B8];
    v43 = *MEMORY[0x277CCA450];
    v44[0] = @"Trying to start tracking when central manager is not powered on";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v15 = [v14 errorWithDomain:@"WPErrorDomain" code:1 userInfo:v10];
  }

LABEL_34:

  return v15;
}

- (id)removePeerTrackingRequest:(id)request checkZonesAvailable:(BOOL)available forClient:(id)client
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  clientCopy = client;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager removePeerTrackingRequest:checkZonesAvailable:forClient:];
  }

  v10 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 67109120;
    state = [(WPDManager *)self state];
    _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_DEFAULT, "Remove peer tracking when central state is %d", buf, 8u);
  }

  clientType = [requestCopy clientType];
  peerUUID = [requestCopy peerUUID];
  peerRequests = [(WPDScanManager *)self peerRequests];
  v15 = [peerRequests objectForKeyedSubscript:clientCopy];

  if (![v15 containsObject:requestCopy])
  {
    server = [MEMORY[0x277CCACA8] stringWithFormat:@"Couldn't find peer tracking request for peer %@ of type %ld (internal error)", peerUUID, clientType];
    v21 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25 = server;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v20 = [v21 errorWithDomain:@"WPErrorDomain" code:16 userInfo:v22];

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager removePeerTrackingRequest:checkZonesAvailable:forClient:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDScanManager removePeerTrackingRequest:checkZonesAvailable:forClient:];
    }

    goto LABEL_17;
  }

  if (WPLogInitOnce != -1)
  {
    [WPDScanManager removePeerTrackingRequest:checkZonesAvailable:forClient:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDScanManager removePeerTrackingRequest:checkZonesAvailable:forClient:];
  }

  [v15 removeObject:requestCopy];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:clientType];
  [(WPDScanManager *)self stopTrackingPeripheral:peerUUID ofType:v16];

  if (available)
  {
    v17 = [WPDScanManager zonesAvailableForType:clientType];
    if ([v15 count] < v17)
    {
      server = [(WPDManager *)self server];
      v19 = [server getClientForUUID:clientCopy];
      [v19 peerTrackingAvailable];

      v20 = 0;
LABEL_17:

      goto LABEL_19;
    }
  }

  v20 = 0;
LABEL_19:

  return v20;
}

- (void)removeAllPeerTrackingRequestsForClient:(id)client
{
  v13 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  peerRequests = [(WPDScanManager *)self peerRequests];
  v6 = [peerRequests objectForKeyedSubscript:clientCopy];

  if (WPLogInitOnce != -1)
  {
    [WPDScanManager removeAllPeerTrackingRequestsForClient:];
  }

  v7 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = clientCopy;
    _os_log_impl(&dword_272965000, v7, OS_LOG_TYPE_DEFAULT, "Removing all peer tracking requests for client %{public}@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__WPDScanManager_removeAllPeerTrackingRequestsForClient___block_invoke_499;
  v9[3] = &unk_279E59838;
  v9[4] = self;
  v10 = clientCopy;
  v8 = clientCopy;
  [v6 enumerateObjectsUsingBlock:v9];
}

- (id)retrievePeripheralWithUUID:(id)d
{
  v11[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([(WPDManager *)self state]== 3)
  {
    centralManager = [(WPDScanManager *)self centralManager];
    v11[0] = dCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v7 = [centralManager retrievePeripheralsWithIdentifiers:v6];

    firstObject = [v7 firstObject];
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDScanManager retrievePeripheralWithUUID:];
    }

    v9 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDScanManager retrievePeripheralWithUUID:v9];
    }

    firstObject = 0;
  }

  return firstObject;
}

- (void)centralManager:(id)manager didLosePeripheral:(id)peripheral forType:(id)type
{
  v22 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  identifier = [peripheral identifier];
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager centralManager:didLosePeripheral:forType:];
  }

  v9 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    *buf = 138412546;
    v19 = identifier;
    v20 = 2048;
    integerValue = [typeCopy integerValue];
    _os_log_impl(&dword_272965000, v10, OS_LOG_TYPE_INFO, "Lost a peer %@ of type %ld", buf, 0x16u);
  }

  peerRequests = [(WPDScanManager *)self peerRequests];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__WPDScanManager_centralManager_didLosePeripheral_forType___block_invoke_505;
  v14[3] = &unk_279E59888;
  v15 = identifier;
  v16 = typeCopy;
  selfCopy = self;
  v12 = typeCopy;
  v13 = identifier;
  [peerRequests enumerateKeysAndObjectsUsingBlock:v14];
}

void __59__WPDScanManager_centralManager_didLosePeripheral_forType___block_invoke_505(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__WPDScanManager_centralManager_didLosePeripheral_forType___block_invoke_2;
  v9[3] = &unk_279E59860;
  v10 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v8 = v5;
  [a3 enumerateObjectsUsingBlock:v9];
}

void __59__WPDScanManager_centralManager_didLosePeripheral_forType___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 peerUUID];
  if ([v3 isEqual:*(a1 + 32)])
  {
    v4 = [v9 clientType];
    v5 = [*(a1 + 40) unsignedCharValue];

    if (v4 != v5)
    {
      goto LABEL_5;
    }

    v6 = [*(a1 + 48) server];
    v3 = [v6 getClientForUUID:*(a1 + 56)];

    v7 = [v9 peerUUID];
    [v3 lostPeer:v7 ofType:{objc_msgSend(*(a1 + 40), "integerValue")}];

    v8 = [*(a1 + 48) removePeerTrackingRequest:v9 checkZonesAvailable:1 forClient:*(a1 + 56)];
  }

LABEL_5:
}

- (void)centralManager:(id)manager didFindPeripheral:(id)peripheral forType:(id)type
{
  v22 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  identifier = [peripheral identifier];
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager centralManager:didFindPeripheral:forType:];
  }

  v9 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    *buf = 138412546;
    v19 = identifier;
    v20 = 2048;
    integerValue = [typeCopy integerValue];
    _os_log_impl(&dword_272965000, v10, OS_LOG_TYPE_DEFAULT, "Found a peer %@ of type %ld", buf, 0x16u);
  }

  peerRequests = [(WPDScanManager *)self peerRequests];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__WPDScanManager_centralManager_didFindPeripheral_forType___block_invoke_508;
  v14[3] = &unk_279E59888;
  v15 = identifier;
  v16 = typeCopy;
  selfCopy = self;
  v12 = typeCopy;
  v13 = identifier;
  [peerRequests enumerateKeysAndObjectsUsingBlock:v14];
}

void __59__WPDScanManager_centralManager_didFindPeripheral_forType___block_invoke_508(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__WPDScanManager_centralManager_didFindPeripheral_forType___block_invoke_2;
  v9[3] = &unk_279E59860;
  v10 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v8 = v5;
  [a3 enumerateObjectsUsingBlock:v9];
}

void __59__WPDScanManager_centralManager_didFindPeripheral_forType___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 peerUUID];
  if ([v3 isEqual:*(a1 + 32)])
  {
    v4 = [v8 clientType];
    v5 = [*(a1 + 40) unsignedCharValue];

    if (v4 != v5)
    {
      goto LABEL_5;
    }

    v6 = [*(a1 + 48) server];
    v3 = [v6 getClientForUUID:*(a1 + 56)];

    v7 = [v8 peerUUID];
    [v3 foundPeer:v7 ofType:{objc_msgSend(*(a1 + 40), "integerValue")}];
  }

LABEL_5:
}

- (id)connectToPeripheral:(id)peripheral fromClient:(id)client withOptions:(id)options
{
  v46[1] = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  clientCopy = client;
  optionsCopy = options;
  if ([(WPDManager *)self state]== 3)
  {
    connectionsInProgress = [(WPDScanManager *)self connectionsInProgress];
    v12 = [connectionsInProgress objectForKeyedSubscript:peripheralCopy];

    if (v12 && [v12 count])
    {
      if ([v12 containsObject:clientCopy])
      {
        if (WPLogInitOnce != -1)
        {
          [WPDScanManager connectToPeripheral:fromClient:withOptions:];
        }

        v13 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = peripheralCopy;
          *&buf[12] = 2112;
          *&buf[14] = clientCopy;
          _os_log_impl(&dword_272965000, v13, OS_LOG_TYPE_DEFAULT, "Wireless Proximity is already connecting to peripheral %@ for client %@ - ignore the processing", buf, 0x16u);
        }

        v14 = 0;
LABEL_30:

        goto LABEL_31;
      }

      server = [(WPDManager *)self server];
      v19 = [server getClientForUUID:clientCopy];
      clientTypeString = [v19 clientTypeString];

      v14 = buf;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v42 = __Block_byref_object_copy__2;
      v43 = __Block_byref_object_dispose__2;
      v44 = 0;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __61__WPDScanManager_connectToPeripheral_fromClient_withOptions___block_invoke_514;
      v36[3] = &unk_279E598B0;
      v36[4] = self;
      v21 = clientTypeString;
      v37 = v21;
      v38 = buf;
      [v12 enumerateObjectsUsingBlock:v36];
      v22 = *(*&buf[8] + 40);
      if (v22)
      {
        if (WPLogInitOnce != -1)
        {
          [WPDScanManager connectToPeripheral:fromClient:withOptions:];
        }

        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
        {
          [WPDScanManager connectToPeripheral:fromClient:withOptions:];
        }

        v14 = *(*&buf[8] + 40);
      }

      _Block_object_dispose(buf, 8);
      if (v22)
      {
        goto LABEL_30;
      }
    }

    v23 = [(WPDScanManager *)self retrievePeripheralWithUUID:peripheralCopy];
    if (v23)
    {
      centralManager = [(WPDScanManager *)self centralManager];
      [centralManager connectPeripheral:v23 options:optionsCopy];

      connectionsInProgress2 = [(WPDScanManager *)self connectionsInProgress];
      v26 = [connectionsInProgress2 objectForKeyedSubscript:peripheralCopy];
      v27 = v26 == 0;

      if (v27)
      {
        v28 = [MEMORY[0x277CBEB58] set];
        connectionsInProgress3 = [(WPDScanManager *)self connectionsInProgress];
        [connectionsInProgress3 setObject:v28 forKeyedSubscript:peripheralCopy];
      }

      connectionsInProgress4 = [(WPDScanManager *)self connectionsInProgress];
      v31 = [connectionsInProgress4 objectForKeyedSubscript:peripheralCopy];
      [v31 addObject:clientCopy];

      peripheralConnections = [(WPDScanManager *)self peripheralConnections];
      [peripheralConnections addObject:v23];

      v14 = 0;
    }

    else
    {
      v33 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277CCA450];
      v40 = @"Wireless Proximity can't retrieve the peripheral specified";
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      v14 = [v33 errorWithDomain:@"WPErrorDomain" code:6 userInfo:v34];

      if (WPLogInitOnce != -1)
      {
        [WPDScanManager connectToPeripheral:fromClient:withOptions:];
      }

      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
      {
        [WPDScanManager connectToPeripheral:fromClient:withOptions:];
      }
    }

    goto LABEL_30;
  }

  v15 = MEMORY[0x277CCA9B8];
  v45 = *MEMORY[0x277CCA450];
  v46[0] = @"CoreBluetooth is currently powered off";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
  v14 = [v15 errorWithDomain:@"WPErrorDomain" code:1 userInfo:v16];

  if (WPLogInitOnce != -1)
  {
    [WPDScanManager connectToPeripheral:fromClient:withOptions:];
  }

  v17 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPDScanManager connectToPeripheral:v17 fromClient:self withOptions:?];
  }

LABEL_31:

  return v14;
}

void __61__WPDScanManager_connectToPeripheral_fromClient_withOptions___block_invoke_514(void *a1, void *a2, _BYTE *a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 server];
  v8 = [v7 getClientForUUID:v6];

  v9 = [v8 clientTypeString];

  if ([v9 isEqualToString:a1[5]])
  {
    v10 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    v16[0] = @"Wireless Proximity is already trying to connect for this type";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v10 errorWithDomain:@"WPErrorDomain" code:18 userInfo:v11];
    v13 = *(a1[6] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *a3 = 1;
  }
}

- (id)disconnectFromPeripheral:(id)peripheral withSubscribedCharacteristics:(id)characteristics forClient:(id)client
{
  v62 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  characteristicsCopy = characteristics;
  clientCopy = client;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager disconnectFromPeripheral:withSubscribedCharacteristics:forClient:];
  }

  v11 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v57 = peripheralCopy;
    v58 = 2114;
    v59 = characteristicsCopy;
    v60 = 2114;
    v61 = clientCopy;
    _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_DEFAULT, "Disconnect from peripheral: %{public}@, characteristics: %{public}@, for client: %{public}@", buf, 0x20u);
  }

  v12 = [(WPDScanManager *)self retrievePeripheralWithUUID:peripheralCopy];
  v13 = v12;
  if (v12)
  {
    selfCopy = self;
    v38 = clientCopy;
    v39 = peripheralCopy;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = [v12 services];
    v42 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v42)
    {
      v41 = *v49;
      do
      {
        v14 = 0;
        do
        {
          if (*v49 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v43 = v14;
          v15 = *(*(&v48 + 1) + 8 * v14);
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          characteristics = [v15 characteristics];
          v17 = [characteristics countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v45;
            do
            {
              v20 = 0;
              do
              {
                if (*v45 != v19)
                {
                  objc_enumerationMutation(characteristics);
                }

                v21 = *(*(&v44 + 1) + 8 * v20);
                uUID = [v21 UUID];
                uUIDString = [uUID UUIDString];
                v24 = [characteristicsCopy containsObject:uUIDString];

                if (v24)
                {
                  if (WPLogInitOnce != -1)
                  {
                    [WPDScanManager disconnectFromPeripheral:withSubscribedCharacteristics:forClient:];
                  }

                  v25 = WiProxLog;
                  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
                  {
                    v26 = v25;
                    uUID2 = [v21 UUID];
                    uUIDString2 = [uUID2 UUIDString];
                    *buf = 138543362;
                    v57 = uUIDString2;
                    _os_log_impl(&dword_272965000, v26, OS_LOG_TYPE_DEFAULT, "Setting notify value to off for characteristic %{public}@", buf, 0xCu);
                  }

                  [v13 setNotifyValue:0 forCharacteristic:v21];
                }

                ++v20;
              }

              while (v18 != v20);
              v18 = [characteristics countByEnumeratingWithState:&v44 objects:v52 count:16];
            }

            while (v18);
          }

          v14 = v43 + 1;
        }

        while (v43 + 1 != v42);
        v42 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v42);
    }

    connectionsInProgress = [(WPDScanManager *)selfCopy connectionsInProgress];
    identifier = [v13 identifier];
    [connectionsInProgress removeObjectForKey:identifier];

    peripheralConnections = [(WPDScanManager *)selfCopy peripheralConnections];
    [peripheralConnections removeObject:v13];

    centralManager = [(WPDScanManager *)selfCopy centralManager];
    [centralManager cancelPeripheralConnection:v13];

    v33 = 0;
    clientCopy = v38;
    peripheralCopy = v39;
  }

  else
  {
    v34 = MEMORY[0x277CCA9B8];
    v54 = *MEMORY[0x277CCA450];
    v55 = @"Wireless Proximity can't retrieve the peripheral specified";
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v33 = [v34 errorWithDomain:@"WPErrorDomain" code:6 userInfo:v35];

    if (WPLogInitOnce != -1)
    {
      [WPDScanManager disconnectFromPeripheral:withSubscribedCharacteristics:forClient:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      [WPDScanManager disconnectFromPeripheral:withSubscribedCharacteristics:forClient:];
    }
  }

  return v33;
}

- (void)disconnectFromCentral:(id)central forClient:(id)client
{
  v21 = *MEMORY[0x277D85DE8];
  centralCopy = central;
  clientCopy = client;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager disconnectFromCentral:forClient:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = centralCopy;
    v19 = 2114;
    v20 = clientCopy;
    _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "Disconnecting from central %{public}@ for client %{public}@", buf, 0x16u);
  }

  v9 = [(WPDScanManager *)self retrievePeripheralWithUUID:centralCopy];
  if (v9)
  {
    centralManager = [(WPDScanManager *)self centralManager];
    v15 = *MEMORY[0x277CBDD68];
    v16 = MEMORY[0x277CBEC38];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [centralManager cancelPeripheralConnection:v9 options:v11];

    connectionsInProgress = [(WPDScanManager *)self connectionsInProgress];
    identifier = [v9 identifier];
    [connectionsInProgress removeObjectForKey:identifier];

    peripheralConnections = [(WPDScanManager *)self peripheralConnections];
    [peripheralConnections removeObject:v9];
  }
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  v28 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  peripheralCopy = peripheral;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager centralManager:didConnectPeripheral:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    name = [peripheralCopy name];
    identifier = [peripheralCopy identifier];
    *buf = 138543874;
    v23 = name;
    v24 = 2114;
    v25 = identifier;
    v26 = 2048;
    role = [peripheralCopy role];
    _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "Connected to device (%{public}@) with UUID %{public}@ and role %ld", buf, 0x20u);
  }

  peripheralConnections = [(WPDScanManager *)self peripheralConnections];
  [peripheralConnections removeObject:peripheralCopy];

  connectionsInProgress = [(WPDScanManager *)self connectionsInProgress];
  identifier2 = [peripheralCopy identifier];
  v15 = [connectionsInProgress objectForKeyedSubscript:identifier2];

  if (WPLogInitOnce != -1)
  {
    [WPDScanManager centralManager:didConnectPeripheral:];
  }

  v16 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v15;
    _os_log_impl(&dword_272965000, v16, OS_LOG_TYPE_DEFAULT, "Current Connection clients %@", buf, 0xCu);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541;
  v19[3] = &unk_279E598D8;
  v19[4] = self;
  v20 = peripheralCopy;
  v21 = v15;
  v17 = v15;
  v18 = peripheralCopy;
  [v17 enumerateObjectsUsingBlock:v19];
}

void __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541(id *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (WPLogInitOnce != -1)
  {
    __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541_cold_1();
  }

  v4 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 138412290;
    v34 = v3;
    _os_log_impl(&dword_272965000, v4, OS_LOG_TYPE_DEFAULT, "connection client uuid %@", &v33, 0xCu);
  }

  v5 = [a1[4] server];
  v6 = [v5 getClientForUUID:v3];

  v7 = a1 + 5;
  v8 = [a1[5] identifier];
  v9 = [v6 connectionForUUID:v8];

  if (v6)
  {
    if (v9)
    {
      if (WPLogInitOnce != -1)
      {
        __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541_cold_2();
      }

      v10 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v10;
        v12 = [v6 clientUUID];
        v13 = [*v7 identifier];
        v33 = 138543874;
        v34 = v9;
        v35 = 2114;
        v36 = v12;
        v37 = 2114;
        v38 = v13;
        _os_log_impl(&dword_272965000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ already exists for client %{public}@ for peripheral %{public}@", &v33, 0x20u);
      }

      v14 = [(WPDConnection *)v9 getPeripheral];
      v15 = v14;
      if (v14)
      {
        v16 = [(WPDConnection *)v14 services];

        if (v16)
        {
          if (WPLogInitOnce != -1)
          {
            __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541_cold_3();
          }

          v17 = WiProxLog;
          if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v33) = 0;
            _os_log_impl(&dword_272965000, v17, OS_LOG_TYPE_DEFAULT, "Services are discovered already", &v33, 2u);
          }

          v18 = [(WPDConnection *)v9 subscribedCharacteristics];
          v19 = [v18 count];

          if (v19)
          {
            if (WPLogInitOnce != -1)
            {
              __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541_cold_4();
            }

            v20 = WiProxLog;
            if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v33) = 0;
              _os_log_impl(&dword_272965000, v20, OS_LOG_TYPE_DEFAULT, "Characteristics are discovered and subscribed", &v33, 2u);
            }

            v21 = [(WPDConnection *)v9 getPeripheralUUID];
            [v6 connectedDevice:v21 withError:0 shouldDiscover:0];

            goto LABEL_50;
          }

          if (WPLogInitOnce != -1)
          {
            __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541_cold_5();
          }

          v31 = WiProxLog;
          if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_50;
          }

          LOWORD(v33) = 0;
          v32 = "Peripheral connection exist but characteristic discovery is in progress.. wait";
        }

        else
        {
          if (WPLogInitOnce != -1)
          {
            __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541_cold_6();
          }

          v31 = WiProxLog;
          if (!os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_50;
          }

          LOWORD(v33) = 0;
          v32 = "Peripheral connection exist but service discovery is in progress.. wait";
        }

        _os_log_impl(&dword_272965000, v31, OS_LOG_TYPE_DEFAULT, v32, &v33, 2u);
LABEL_50:

        goto LABEL_51;
      }

      if (WPLogInitOnce != -1)
      {
        __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541_cold_7();
      }

      v25 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        v27 = [v6 clientUUID];
        v28 = [*v7 identifier];
        v33 = 138412802;
        v34 = v9;
        v35 = 2112;
        v36 = v27;
        v37 = 2112;
        v38 = v28;
        _os_log_impl(&dword_272965000, v26, OS_LOG_TYPE_DEFAULT, "Updating connection(%@) for client(%@) with peripheral(%@)", &v33, 0x20u);
      }

      [(WPDConnection *)v9 updateWithPeripheral:*v7];
      v29 = v6;
      v30 = v9;
LABEL_40:
      [v29 createdConnection:v30];
      goto LABEL_50;
    }

    if ([*v7 role] != 1)
    {
      v15 = [[WPDConnection alloc] initWithPeripheral:*v7];
      [(WPDConnection *)v15 setClient:v6];
      v29 = v6;
      v30 = v15;
      goto LABEL_40;
    }

    if (WPLogInitOnce != -1)
    {
      __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541_cold_8();
    }

    v24 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&dword_272965000, v24, OS_LOG_TYPE_DEFAULT, "Connected as peripheral, wait for subscribed notification from central", &v33, 2u);
    }
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541_cold_9();
    }

    v22 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
    {
      __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541_cold_10(v3, (a1 + 5), v22);
    }

    if ([a1[6] count] == 1)
    {
      v23 = [a1[4] centralManager];
      [v23 cancelPeripheralConnection:a1[5]];
    }
  }

LABEL_51:
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  errorCopy = error;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager centralManager:didFailToConnectPeripheral:error:];
  }

  v11 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPDScanManager centralManager:v11 didFailToConnectPeripheral:peripheralCopy error:?];
  }

  v12 = peripheralCopy;
  connectionsInProgress = [(WPDScanManager *)self connectionsInProgress];
  identifier = [v12 identifier];
  v15 = [connectionsInProgress objectForKeyedSubscript:identifier];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__WPDScanManager_centralManager_didFailToConnectPeripheral_error___block_invoke_571;
  v21[3] = &unk_279E598D8;
  v21[4] = self;
  v22 = v12;
  v23 = errorCopy;
  v16 = errorCopy;
  v17 = v12;
  [v15 enumerateObjectsUsingBlock:v21];
  connectionsInProgress2 = [(WPDScanManager *)self connectionsInProgress];
  identifier2 = [v17 identifier];
  [connectionsInProgress2 removeObjectForKey:identifier2];

  peripheralConnections = [(WPDScanManager *)self peripheralConnections];
  [peripheralConnections removeObject:v17];
}

void __66__WPDScanManager_centralManager_didFailToConnectPeripheral_error___block_invoke_571(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 server];
  v7 = [v5 getClientForUUID:v4];

  v6 = [*(a1 + 40) identifier];
  [v7 connectedDevice:v6 withError:*(a1 + 48) shouldDiscover:0];
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  v29 = *MEMORY[0x277D85DE8];
  peripheralCopy = peripheral;
  errorCopy = error;
  v9 = peripheralCopy;
  connectionsInProgress = [(WPDScanManager *)self connectionsInProgress];
  identifier = [v9 identifier];
  v12 = [connectionsInProgress objectForKeyedSubscript:identifier];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __63__WPDScanManager_centralManager_didDisconnectPeripheral_error___block_invoke;
  v22[3] = &unk_279E598D8;
  v22[4] = self;
  v13 = v9;
  v23 = v13;
  v14 = errorCopy;
  v24 = v14;
  [v12 enumerateObjectsUsingBlock:v22];
  connectionsInProgress2 = [(WPDScanManager *)self connectionsInProgress];
  identifier2 = [v13 identifier];
  [connectionsInProgress2 removeObjectForKey:identifier2];

  peripheralConnections = [(WPDScanManager *)self peripheralConnections];
  [peripheralConnections removeObject:v13];

  if (WPLogInitOnce != -1)
  {
    [WPDScanManager centralManager:didDisconnectPeripheral:error:];
  }

  v18 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    identifier3 = [v13 identifier];
    localizedDescription = [v14 localizedDescription];
    *buf = 138543618;
    v26 = identifier3;
    v27 = 2114;
    v28 = localizedDescription;
    _os_log_impl(&dword_272965000, v19, OS_LOG_TYPE_DEFAULT, "Disconnected from peripheral %{public}@ with Error: %{public}@", buf, 0x16u);
  }
}

void __63__WPDScanManager_centralManager_didDisconnectPeripheral_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 server];
  v7 = [v5 getClientForUUID:v4];

  v6 = [*(a1 + 40) identifier];
  [v7 disconnectedPeer:v6 error:*(a1 + 48)];
}

- (void)removePeripheralConnection:(id)connection forClient:(id)client
{
  v21 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  clientCopy = client;
  if (WPLogInitOnce != -1)
  {
    [WPDScanManager removePeripheralConnection:forClient:];
  }

  v8 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = connectionCopy;
    v19 = 2114;
    v20 = clientCopy;
    _os_log_impl(&dword_272965000, v8, OS_LOG_TYPE_DEFAULT, "Removing connection to peer %{public}@ for client %{public}@", buf, 0x16u);
  }

  connectionsInProgress = [(WPDScanManager *)self connectionsInProgress];
  v10 = [connectionsInProgress objectForKeyedSubscript:connectionCopy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__WPDScanManager_removePeripheralConnection_forClient___block_invoke_576;
  v13[3] = &unk_279E598D8;
  v14 = clientCopy;
  selfCopy = self;
  v16 = connectionCopy;
  v11 = connectionCopy;
  v12 = clientCopy;
  [v10 enumerateObjectsUsingBlock:v13];
}

void __55__WPDScanManager_removePeripheralConnection_forClient___block_invoke_576(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) isEqual:v3])
  {
    v4 = [*(a1 + 40) connectionsInProgress];
    v5 = [v4 objectForKeyedSubscript:*(a1 + 48)];
    v6 = [v5 count];

    if (v6 == 1)
    {
      v7 = [*(a1 + 40) retrievePeripheralWithUUID:*(a1 + 48)];
      if (v7)
      {
        v8 = [*(a1 + 40) peripheralConnections];
        [v8 removeObject:v7];

        if (WPLogInitOnce != -1)
        {
          __55__WPDScanManager_removePeripheralConnection_forClient___block_invoke_576_cold_2();
        }

        v9 = WiProxLog;
        if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138543362;
          v20 = v7;
          _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "Removing CBPeripheral object %{public}@", &v19, 0xCu);
        }

        v10 = [*(a1 + 40) centralManager];
        [v10 cancelPeripheralConnection:v7];
      }
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        __55__WPDScanManager_removePeripheralConnection_forClient___block_invoke_576_cold_1();
      }

      v11 = WiProxLog;
      if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        v13 = *(a1 + 48);
        v14 = v11;
        v15 = [v12 connectionsInProgress];
        v16 = [v15 objectForKeyedSubscript:*(a1 + 48)];
        v19 = 138412546;
        v20 = v13;
        v21 = 2112;
        v22 = v16;
        _os_log_impl(&dword_272965000, v14, OS_LOG_TYPE_DEFAULT, "Don't disconnect because peer %@ has more than one connections %@", &v19, 0x16u);
      }
    }

    v17 = [*(a1 + 40) connectionsInProgress];
    v18 = [v17 objectForKeyedSubscript:*(a1 + 48)];
    [v18 removeObject:v3];
  }
}

- (void)removePeripheralConnectionsForClient:(id)client
{
  clientCopy = client;
  connectionsInProgress = [(WPDScanManager *)self connectionsInProgress];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__WPDScanManager_removePeripheralConnectionsForClient___block_invoke;
  v7[3] = &unk_279E59900;
  v8 = clientCopy;
  selfCopy = self;
  v6 = clientCopy;
  [connectionsInProgress enumerateKeysAndObjectsUsingBlock:v7];
}

void __55__WPDScanManager_removePeripheralConnectionsForClient___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v5 containsObject:*(a1 + 32)])
  {
    [v5 removeObject:*(a1 + 32)];
  }

  if (![v5 count])
  {
    v6 = [*(a1 + 40) connectionsInProgress];
    [v6 removeObjectForKey:v7];
  }
}

- (OS_dispatch_queue)serverQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_serverQueue);

  return WeakRetained;
}

- (void)addScanRequest:(void *)a3 forClient:.cold.3(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  [OUTLINED_FUNCTION_18() clientType];
  [a3 state];
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x12u);
}

- (void)assertCBDiscoveryScan:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)assertCBDiscoveryScan:.cold.5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __40__WPDScanManager_assertCBDiscoveryScan___block_invoke_cold_2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9() localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_1(&dword_272965000, v4, v5, "assertCBDiscoveryScan failed to assert with error: %@", v6, v7, v8, v9);
}

- (void)isScannerTestMode
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)heySiriScanActive:.cold.3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)reconcileScanRule:withRule:.cold.4()
{
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __45__WPDScanManager_reconcileScanRule_withRule___block_invoke_255_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_10_0(&dword_272965000, v0, v1, "Reconcile scan rules for type %ld - unexpected key ignored:%@");
}

void __33__WPDScanManager_updateScanRules__block_invoke_8_cold_2(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a1 clientType];
  v5 = [a1 retainDuplicates];
  if ([a1 startPending])
  {
    v6 = [a1 retainDuplicates] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v7[0] = 67109632;
  v7[1] = v4;
  v8 = 1024;
  v9 = v5;
  v10 = 1024;
  v11 = v6;
  _os_log_debug_impl(&dword_272965000, a2, OS_LOG_TYPE_DEBUG, "Retain duplicates type:%d retain:%d reset:%d)", v7, 0x14u);
}

- (void)scanOptionsChanged:ForRequests:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __42__WPDScanManager_clearExistingConnections__block_invoke_cold_2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9() description];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_1(&dword_272965000, v4, v5, "Client %@ does not respond to selector resetConnection", v6, v7, v8, v9);
}

- (void)centralManager:(uint64_t)a3 didDiscoverPeripheral:advertisementData:RSSI:.cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [OUTLINED_FUNCTION_18() identifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  v8 = a3;
  _os_log_debug_impl(&dword_272965000, v3, OS_LOG_TYPE_DEBUG, "WPDScanManager didDiscoverPeripheral:%@ RSSI%@", v7, 0x16u);
}

- (void)centralManager:(void *)a1 didDiscoverMultiplePeripherals:.cold.2(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_9() count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_1(&dword_272965000, v3, v4, "WPDScanManager UNEXPECTED didDiscoverMultiplePeripherals %lu peripherals", v5, v6, v7, v8);
}

- (void)addPeerTrackingRequest:(void *)a1 forClient:.cold.8(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9() peerRequests];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_272965000, v1, OS_LOG_TYPE_DEBUG, "Currently tracking peers: %@", v4, 0xCu);
}

- (void)removePeerTrackingRequest:checkZonesAvailable:forClient:.cold.5()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v3 = 2048;
  v4 = v0;
  _os_log_debug_impl(&dword_272965000, v1, OS_LOG_TYPE_DEBUG, "Removing tracking for peer %@ of type %ld", v2, 0x16u);
}

- (void)retrievePeripheralWithUUID:(void *)a1 .cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_9() centralManager];
  [v3 state];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_1(&dword_272965000, v4, v5, "Failed to retrieve peripherals with identifiers - central is not powered on: %ld", v6, v7, v8, v9);
}

- (void)connectToPeripheral:(void *)a1 fromClient:(void *)a2 withOptions:.cold.2(void *a1, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4[0] = 67109120;
  v4[1] = [a2 state];
  _os_log_error_impl(&dword_272965000, v3, OS_LOG_TYPE_ERROR, "Failed to create connection - central is not powered on %d", v4, 8u);
}

- (void)connectToPeripheral:fromClient:withOptions:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_10_0(&dword_272965000, v0, v1, "Wireless Proximity is already connecting to peripheral %@ for type %@");
}

void __54__WPDScanManager_centralManager_didConnectPeripheral___block_invoke_541_cold_10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v10 = [OUTLINED_FUNCTION_18() identifier];
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)centralManager:(void *)a1 didFailToConnectPeripheral:(void *)a2 error:.cold.2(void *a1, void *a2)
{
  v4 = a1;
  [OUTLINED_FUNCTION_18() identifier];
  objc_claimAutoreleasedReturnValue();
  v5 = [OUTLINED_FUNCTION_9() localizedDescription];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);
}

@end