@interface HAPWACAccessoryClient
+ (id)logCategory;
- (HAPAccessoryServer)server;
- (HAPWACAccessoryBrowser)browser;
- (HAPWACAccessoryClient)init;
- (HAPWACAccessoryClient)initWithWACAccessory:(id)accessory server:(id)server browser:(id)browser compatible2Pt4Networks:(id)networks;
- (HAPWACAccessoryClientDelegate)clientDelegate;
- (id)_findCompatiblePrefixedNetworks;
- (id)_setupEasyConfigWithDeviceInfo:(id)info;
- (id)continuePairingWithSetupCode:(id)code;
- (id)joinAccessoryNetworkWithCompletion:(id)completion;
- (id)logIdentifier;
- (id)performEasyConfigWithParingPrompt:(void *)prompt performPairSetup:(BOOL)setup isSplit:(BOOL)split pairingRequest:(id)request completion:(id)completion;
- (id)restoreNetworkWithCompletion:(id)completion;
- (unint64_t)state;
- (void)_callJoinCompletion:(id)completion withError:(id)error;
- (void)_callRestoreCompletion:(id)completion withError:(id)error;
- (void)_continuePairingWithSetupCode:(id)code;
- (void)_joinAccessory:(id)accessory completion:(id)completion;
- (void)_joinAccessoryNetworkWithCompletion:(id)completion;
- (void)_joinCompleteWithStatus:(int)status;
- (void)_performEasyConfigWithPairingPrompt:(void *)prompt performPairSetup:(BOOL)setup isSplit:(BOOL)split pairingRequest:(id)request completion:(id)completion;
- (void)_performPostConfig;
- (void)_reportProgress:(unint64_t)progress;
- (void)_restoreNetworkAndReportError:(id)error withCompletion:(id)completion;
- (void)_restoreNetworkWithCompletion:(id)completion;
- (void)dumpStatsWithError:(id)error;
- (void)registerClientDelegate:(id)delegate;
- (void)restart;
- (void)setState:(unint64_t)state;
- (void)stopEasyConfig;
@end

@implementation HAPWACAccessoryClient

- (HAPWACAccessoryBrowser)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (HAPAccessoryServer)server
{
  WeakRetained = objc_loadWeakRetained(&self->_server);

  return WeakRetained;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HAPWACAccessoryClient state](self, "state")}];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)restart
{
  workQueue = [(HAPWACAccessoryClient *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HAPWACAccessoryClient_restart__block_invoke;
  block[3] = &unk_2786D6CA0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __32__HAPWACAccessoryClient_restart__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) restartEasyConfigBlock];

  if (v2)
  {
    v3 = [*(a1 + 32) ezConfigDevice];

    if (v3)
    {
      v4 = objc_autoreleasePoolPush();
      v5 = *(a1 + 32);
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = HMFGetLogIdentifier();
        v13 = 138543362;
        v14 = v7;
        _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Restarting ezConfig", &v13, 0xCu);
      }

      objc_autoreleasePoolPop(v4);
      [*(a1 + 32) setRestartPairingCount:{objc_msgSend(*(a1 + 32), "restartPairingCount") + 1}];
      v8 = [*(a1 + 32) restartEasyConfigBlock];
      v8[2]();
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%{public}@Invalid state, must have a block here", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)stopEasyConfig
{
  v11 = *MEMORY[0x277D85DE8];
  ezConfigDevice = [(HAPWACAccessoryClient *)self ezConfigDevice];

  if (ezConfigDevice)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Stopping ezConfig", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    ezConfigDevice2 = [(HAPWACAccessoryClient *)selfCopy ezConfigDevice];
    [ezConfigDevice2 stop];
  }
}

- (void)_continuePairingWithSetupCode:(id)code
{
  codeCopy = code;
  ezConfigDevice = [(HAPWACAccessoryClient *)self ezConfigDevice];
  [ezConfigDevice trySetupCode:codeCopy];
}

- (id)continuePairingWithSetupCode:(id)code
{
  codeCopy = code;
  if (codeCopy)
  {
    workQueue = [(HAPWACAccessoryClient *)self workQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__HAPWACAccessoryClient_continuePairingWithSetupCode___block_invoke;
    v8[3] = &unk_2786D7050;
    v8[4] = self;
    v9 = codeCopy;
    dispatch_async(workQueue, v8);

    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:9 userInfo:0];
  }

  return v6;
}

uint64_t __54__HAPWACAccessoryClient_continuePairingWithSetupCode___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setState:7];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [*(a1 + 32) setupCodeRequestTime];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;
  [v2 setupCodeDelay];
  [v2 setSetupCodeDelay:v6 + v7];

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);

  return [v8 _continuePairingWithSetupCode:v9];
}

- (void)_performPostConfig
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__HAPWACAccessoryClient__performPostConfig__block_invoke;
  v4[3] = &unk_2786D6CA0;
  v4[4] = self;
  __43__HAPWACAccessoryClient__performPostConfig__block_invoke(v4);
  [(HAPWACAccessoryClient *)self setState:8];
  ezConfigDevice = [(HAPWACAccessoryClient *)self ezConfigDevice];
  [ezConfigDevice resumePostConfig];
}

void __43__HAPWACAccessoryClient__performPostConfig__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  v4 = [v2 pairingActivity];

  if (v4)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "state")}];
  }
}

- (void)_restoreNetworkAndReportError:(id)error withCompletion:(id)completion
{
  completionCopy = completion;
  errorCopy = error;
  state = [(HAPWACAccessoryClient *)self state];
  [(HAPWACAccessoryClient *)self setState:0];
  v9 = mapUnderlyingErrorToHAPError(errorCopy);

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__HAPWACAccessoryClient__restoreNetworkAndReportError_withCompletion___block_invoke;
  v13[3] = &unk_2786D3B48;
  v14 = v9;
  v15 = completionCopy;
  v16 = state;
  v10 = v9;
  v11 = completionCopy;
  v12 = [(HAPWACAccessoryClient *)self restoreNetworkWithCompletion:v13];
}

- (void)_performEasyConfigWithPairingPrompt:(void *)prompt performPairSetup:(BOOL)setup isSplit:(BOOL)split pairingRequest:(id)request completion:(id)completion
{
  splitCopy = split;
  setupCopy = setup;
  v146 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v127[0] = 0;
  v127[1] = v127;
  v127[2] = 0x3032000000;
  v127[3] = __Block_byref_object_copy__5927;
  v127[4] = __Block_byref_object_dispose__5928;
  v128 = 0;
  v125[0] = 0;
  v125[1] = v125;
  v125[2] = 0x3032000000;
  v125[3] = __Block_byref_object_copy__5927;
  v125[4] = __Block_byref_object_dispose__5928;
  v126 = 0;
  v122[0] = MEMORY[0x277D85DD0];
  v122[1] = 3221225472;
  v122[2] = __112__HAPWACAccessoryClient__performEasyConfigWithPairingPrompt_performPairSetup_isSplit_pairingRequest_completion___block_invoke;
  v122[3] = &unk_2786D3A80;
  objc_copyWeak(&v124, &location);
  v106 = completionCopy;
  v123 = v106;
  v108 = MEMORY[0x231885210](v122);
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = HMFGetLogIdentifier();
    v17 = HMFBooleanToString();
    v18 = HMFBooleanToString();
    *buf = 138544130;
    v139 = v16;
    v140 = 2112;
    v141 = v17;
    v142 = 2112;
    v143 = v18;
    v144 = 2112;
    v145 = requestCopy;
    _os_log_impl(&dword_22AADC000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Performing easy config, setupCodeHandler: %@ performPairSetup: %@ pairingRequest: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v13);
  hapWACAccessory = [(HAPWACAccessoryClient *)selfCopy hapWACAccessory];
  name = [hapWACAccessory name];
  if (!name)
  {
    goto LABEL_10;
  }

  hapWACAccessory2 = [(HAPWACAccessoryClient *)selfCopy hapWACAccessory];
  deviceId = [hapWACAccessory2 deviceId];
  if (!deviceId)
  {

LABEL_10:
    goto LABEL_11;
  }

  currentNetworkInfo = [(HAPWACAccessoryClient *)selfCopy currentNetworkInfo];
  v24 = [currentNetworkInfo objectForKeyedSubscript:@"ssid"];
  v25 = v24 == 0;

  if (!v25)
  {
    v116[0] = MEMORY[0x277D85DD0];
    v116[1] = 3221225472;
    v116[2] = __112__HAPWACAccessoryClient__performEasyConfigWithPairingPrompt_performPairSetup_isSplit_pairingRequest_completion___block_invoke_108;
    v116[3] = &unk_2786D3AA8;
    objc_copyWeak(v119, &location);
    v119[1] = prompt;
    v120 = setupCopy;
    v121 = splitCopy;
    v26 = requestCopy;
    v117 = v26;
    v118 = v106;
    [(HAPWACAccessoryClient *)selfCopy setRestartEasyConfigBlock:v116];
    if (prompt && setupCopy)
    {
      v136[0] = *MEMORY[0x277D06AF8];
      hapWACAccessory3 = [(HAPWACAccessoryClient *)selfCopy hapWACAccessory];
      deviceId2 = [hapWACAccessory3 deviceId];
      v29 = *MEMORY[0x277D06B08];
      v137[0] = deviceId2;
      v137[1] = &unk_283EA9758;
      v30 = *MEMORY[0x277D06AE0];
      v136[1] = v29;
      v136[2] = v30;
      v137[2] = MEMORY[0x277CBEC38];
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v137 forKeys:v136 count:3];

      v32 = [(HAPWACAccessoryClient *)selfCopy _setupEasyConfigWithDeviceInfo:v31];
      [(HAPWACAccessoryClient *)selfCopy setEzConfigDevice:v32];

      ezConfigDevice = [(HAPWACAccessoryClient *)selfCopy ezConfigDevice];
      v114[0] = MEMORY[0x277D85DD0];
      v114[1] = 3221225472;
      v114[2] = __112__HAPWACAccessoryClient__performEasyConfigWithPairingPrompt_performPairSetup_isSplit_pairingRequest_completion___block_invoke_110;
      v114[3] = &unk_2786D3AD0;
      objc_copyWeak(v115, &location);
      v115[1] = prompt;
      [ezConfigDevice setPromptForSetupCodeHandler:v114];

      objc_destroyWeak(v115);
    }

    else
    {
      if (setupCopy)
      {
        v134[0] = *MEMORY[0x277D06AF8];
        hapWACAccessory4 = [(HAPWACAccessoryClient *)selfCopy hapWACAccessory];
        deviceId3 = [hapWACAccessory4 deviceId];
        v134[1] = *MEMORY[0x277D06B08];
        v135[0] = deviceId3;
        v135[1] = &unk_283EA9770;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v135 forKeys:v134 count:2];
      }

      else
      {
        v132[0] = *MEMORY[0x277D06AF8];
        hapWACAccessory4 = [(HAPWACAccessoryClient *)selfCopy hapWACAccessory];
        deviceId3 = [hapWACAccessory4 deviceId];
        v49 = *MEMORY[0x277D06B08];
        v133[0] = deviceId3;
        v133[1] = &unk_283EA9758;
        v50 = *MEMORY[0x277D06AE0];
        v132[1] = v49;
        v132[2] = v50;
        v133[2] = MEMORY[0x277CBEC38];
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:3];
      }
      v31 = ;

      v47 = [(HAPWACAccessoryClient *)selfCopy _setupEasyConfigWithDeviceInfo:v31];
      [(HAPWACAccessoryClient *)selfCopy setEzConfigDevice:v47];

      ezConfigDevice2 = [(HAPWACAccessoryClient *)selfCopy ezConfigDevice];
      [ezConfigDevice2 setSkipPairSetup:1];
    }

    v130 = *MEMORY[0x277D06B30];
    hapWACAccessory5 = [(HAPWACAccessoryClient *)selfCopy hapWACAccessory];
    name2 = [hapWACAccessory5 name];
    v131 = name2;
    v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
    v54 = [v53 mutableCopy];

    ssid = [v26 ssid];

    if (ssid)
    {
      ssid2 = [v26 ssid];
      v57 = *MEMORY[0x277D06B68];
      [v54 setObject:ssid2 forKeyedSubscript:*MEMORY[0x277D06B68]];
    }

    else
    {
      compatiblePrefixedNetwork = [(HAPWACAccessoryClient *)selfCopy compatiblePrefixedNetwork];
      v59 = [compatiblePrefixedNetwork objectForKeyedSubscript:@"ssid"];

      if (v59)
      {
        [(HAPWACAccessoryClient *)selfCopy compatiblePrefixedNetwork];
      }

      else
      {
        [(HAPWACAccessoryClient *)selfCopy currentNetworkInfo];
      }
      ssid2 = ;
      v60 = [ssid2 objectForKeyedSubscript:@"ssid"];
      v57 = *MEMORY[0x277D06B68];
      [v54 setObject:v60 forKeyedSubscript:*MEMORY[0x277D06B68]];
    }

    v61 = [v26 psk];

    if (v61)
    {
      compatiblePrefixedNetwork4 = [v26 psk];
      [v54 setObject:compatiblePrefixedNetwork4 forKeyedSubscript:*MEMORY[0x277D06B60]];
LABEL_32:

      goto LABEL_33;
    }

    compatiblePrefixedNetwork2 = [(HAPWACAccessoryClient *)selfCopy compatiblePrefixedNetwork];
    v64 = [compatiblePrefixedNetwork2 objectForKeyedSubscript:@"ssid"];

    if (v64)
    {
      compatiblePrefixedNetwork3 = [(HAPWACAccessoryClient *)selfCopy compatiblePrefixedNetwork];
      v66 = [compatiblePrefixedNetwork3 objectForKeyedSubscript:@"password"];

      if (v66)
      {
        compatiblePrefixedNetwork4 = [(HAPWACAccessoryClient *)selfCopy compatiblePrefixedNetwork];
        v67 = [compatiblePrefixedNetwork4 objectForKeyedSubscript:@"password"];
        [v54 setObject:v67 forKeyedSubscript:*MEMORY[0x277D06B60]];
LABEL_31:

        goto LABEL_32;
      }
    }

    else
    {
      currentNetworkInfo2 = [(HAPWACAccessoryClient *)selfCopy currentNetworkInfo];
      v69 = [currentNetworkInfo2 objectForKeyedSubscript:@"password"];

      if (v69)
      {
        compatiblePrefixedNetwork4 = [(HAPWACAccessoryClient *)selfCopy currentNetworkInfo];
        v67 = [compatiblePrefixedNetwork4 objectForKeyedSubscript:@"password"];
        [v54 setObject:v67 forKeyedSubscript:*MEMORY[0x277D06B60]];
        goto LABEL_31;
      }
    }

LABEL_33:
    v70 = objc_autoreleasePoolPush();
    v71 = selfCopy;
    v72 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
    {
      v73 = HMFGetLogIdentifier();
      v74 = [v54 objectForKeyedSubscript:v57];
      *buf = 138543618;
      v139 = v73;
      v140 = 2112;
      v141 = v74;
      _os_log_impl(&dword_22AADC000, v72, OS_LOG_TYPE_DEBUG, "%{public}@Configuring to SSID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v70);
    isoCountryCode = [v26 isoCountryCode];

    if (isoCountryCode)
    {
      v76 = objc_autoreleasePoolPush();
      v77 = v71;
      v78 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
      {
        v79 = HMFGetLogIdentifier();
        isoCountryCode2 = [v26 isoCountryCode];
        *buf = 138543618;
        v139 = v79;
        v140 = 2112;
        v141 = isoCountryCode2;
        _os_log_impl(&dword_22AADC000, v78, OS_LOG_TYPE_DEBUG, "%{public}@Adding country code: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v76);
      isoCountryCode3 = [v26 isoCountryCode];
      [v54 setObject:isoCountryCode3 forKeyedSubscript:*MEMORY[0x277D06AF0]];
    }

    ezConfigDevice3 = [(HAPWACAccessoryClient *)v71 ezConfigDevice];

    if (ezConfigDevice3)
    {
      restartPairingCount = [(HAPWACAccessoryClient *)v71 restartPairingCount];
      ezConfigDevice4 = [(HAPWACAccessoryClient *)v71 ezConfigDevice];
      v109[0] = MEMORY[0x277D85DD0];
      v109[1] = 3221225472;
      v109[2] = __112__HAPWACAccessoryClient__performEasyConfigWithPairingPrompt_performPairSetup_isSplit_pairingRequest_completion___block_invoke_117;
      v109[3] = &unk_2786D3B20;
      objc_copyWeak(v113, &location);
      v113[1] = restartPairingCount;
      v110 = v108;
      v111 = v127;
      v112 = v125;
      [ezConfigDevice4 setProgressHandler:v109];

      ezConfigDevice5 = [(HAPWACAccessoryClient *)v71 ezConfigDevice];
      [ezConfigDevice5 setConfiguration:v54];

      ezConfigDevice6 = [(HAPWACAccessoryClient *)v71 ezConfigDevice];
      [ezConfigDevice6 setPairSetupFlags:0];

      hapWACAccessory6 = [(HAPWACAccessoryClient *)v71 hapWACAccessory];
      LODWORD(restartPairingCount) = [hapWACAccessory6 supportsTokenAuth];

      if (restartPairingCount)
      {
        ezConfigDevice7 = [(HAPWACAccessoryClient *)v71 ezConfigDevice];
        [ezConfigDevice7 setPairSetupFlags:{objc_msgSend(ezConfigDevice7, "pairSetupFlags") | 0x8000}];
      }

      else
      {
        hapWACAccessory7 = [(HAPWACAccessoryClient *)v71 hapWACAccessory];
        supportsCertAuth = [hapWACAccessory7 supportsCertAuth];

        ezConfigDevice7 = [(HAPWACAccessoryClient *)v71 ezConfigDevice];
        if (supportsCertAuth)
        {
          [ezConfigDevice7 setPairSetupFlags:{objc_msgSend(ezConfigDevice7, "pairSetupFlags") | 0x4001}];
        }

        else
        {
          [ezConfigDevice7 setPairSetupFlags:1];
        }
      }

      if (splitCopy)
      {
        ezConfigDevice8 = [(HAPWACAccessoryClient *)v71 ezConfigDevice];
        [ezConfigDevice8 setPairSetupFlags:{objc_msgSend(ezConfigDevice8, "pairSetupFlags") | 0x1000000}];
      }

      ezConfigDevice9 = [(HAPWACAccessoryClient *)v71 ezConfigDevice];
      [ezConfigDevice9 setPausesAfterApply:1];

      ezConfigDevice10 = [(HAPWACAccessoryClient *)v71 ezConfigDevice];
      [ezConfigDevice10 start];

      objc_destroyWeak(v113);
    }

    else
    {
      v89 = objc_autoreleasePoolPush();
      v90 = v71;
      v91 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        v92 = HMFGetLogIdentifier();
        hapWACAccessory8 = [(HAPWACAccessoryClient *)v90 hapWACAccessory];
        rawScanResult = [hapWACAccessory8 rawScanResult];
        *buf = 138543618;
        v139 = v92;
        v140 = 2112;
        v141 = rawScanResult;
        _os_log_impl(&dword_22AADC000, v91, OS_LOG_TYPE_ERROR, "%{public}@Failed instantiating easy config with scan result: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v89);
      v95 = MEMORY[0x277CCA9B8];
      v96 = MEMORY[0x277CCACA8];
      hapWACAccessory9 = [(HAPWACAccessoryClient *)v90 hapWACAccessory];
      rawScanResult2 = [hapWACAccessory9 rawScanResult];
      v99 = [v96 stringWithFormat:@"Failed instantiating easy config with scan result: %@", rawScanResult2];
      v100 = [v95 hapErrorWithCode:19 description:v99 reason:@"HAPWACAccessoryClient.ezConfigDevice is nil during performEasyConfigWithPairingPrompt" suggestion:0 underlyingError:0 marker:107];

      (v108)[2](v108, v100, [(HAPWACAccessoryClient *)v90 state]);
    }

    objc_destroyWeak(v119);
    goto LABEL_52;
  }

LABEL_11:
  v34 = objc_autoreleasePoolPush();
  v35 = selfCopy;
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    v37 = HMFGetLogIdentifier();
    hapWACAccessory10 = [(HAPWACAccessoryClient *)v35 hapWACAccessory];
    name3 = [hapWACAccessory10 name];
    hapWACAccessory11 = [(HAPWACAccessoryClient *)v35 hapWACAccessory];
    deviceId4 = [hapWACAccessory11 deviceId];
    currentNetworkInfo3 = [(HAPWACAccessoryClient *)v35 currentNetworkInfo];
    v43 = [currentNetworkInfo3 objectForKeyedSubscript:@"ssid"];
    *buf = 138544130;
    v139 = v37;
    v140 = 2112;
    v141 = name3;
    v142 = 2112;
    v143 = deviceId4;
    v144 = 2112;
    v145 = v43;
    _os_log_impl(&dword_22AADC000, v36, OS_LOG_TYPE_ERROR, "%{public}@Invalid nil param(s), name: %@, deviceId: %@, ssid: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v34);
  v44 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:9 userInfo:0];
  (v108)[2](v108, v44, [(HAPWACAccessoryClient *)v35 state]);

LABEL_52:
  objc_destroyWeak(&v124);
  _Block_object_dispose(v125, 8);

  _Block_object_dispose(v127, 8);
  objc_destroyWeak(&location);
}

void __112__HAPWACAccessoryClient__performEasyConfigWithPairingPrompt_performPairSetup_isSplit_pairingRequest_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = [v5 userInfo];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (!v10)
    {
      v8 = v5;
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __112__HAPWACAccessoryClient__performEasyConfigWithPairingPrompt_performPairSetup_isSplit_pairingRequest_completion___block_invoke_2;
    v13[3] = &unk_2786D4978;
    v14 = v8;
    v15 = a3;
    v13[4] = WeakRetained;
    v11 = v8;
    __112__HAPWACAccessoryClient__performEasyConfigWithPairingPrompt_performPairSetup_isSplit_pairingRequest_completion___block_invoke_2(v13);
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:20];

    v5 = v12;
  }

  (*(*(a1 + 32) + 16))();
}

void __112__HAPWACAccessoryClient__performEasyConfigWithPairingPrompt_performPairSetup_isSplit_pairingRequest_completion___block_invoke_108(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained ezConfigDevice];
  [v2 stop];

  [WeakRetained _performEasyConfigWithPairingPrompt:*(a1 + 56) performPairSetup:*(a1 + 64) isSplit:*(a1 + 65) pairingRequest:*(a1 + 32) completion:*(a1 + 40)];
}

uint64_t __112__HAPWACAccessoryClient__performEasyConfigWithPairingPrompt_performPairSetup_isSplit_pairingRequest_completion___block_invoke_110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setState:6];
    v8 = [MEMORY[0x277CBEAA8] date];
    [v7 setSetupCodeRequestTime:v8];

    v9 = *(a1 + 40);
    v10 = [v7 server];
    v9(a2, a3, v10);

    v11 = 0;
  }

  else
  {
    v11 = 4294960556;
  }

  return v11;
}

void __112__HAPWACAccessoryClient__performEasyConfigWithPairingPrompt_performPairSetup_isSplit_pairingRequest_completion___block_invoke_117(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained workQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __112__HAPWACAccessoryClient__performEasyConfigWithPairingPrompt_performPairSetup_isSplit_pairingRequest_completion___block_invoke_2_118;
    v9[3] = &unk_2786D3AF8;
    v13[1] = *(a1 + 64);
    v9[4] = v7;
    v14 = a2;
    v10 = v5;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    objc_copyWeak(v13, (a1 + 56));
    dispatch_async(v8, v9);

    objc_destroyWeak(v13);
  }
}

void __112__HAPWACAccessoryClient__performEasyConfigWithPairingPrompt_performPairSetup_isSplit_pairingRequest_completion___block_invoke_2_118(uint64_t a1)
{
  v73 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 80);
  v3 = v2 == [*(a1 + 32) restartPairingCount];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (!v7)
    {
      goto LABEL_33;
    }

    v8 = HMFGetLogIdentifier();
    v9 = v8;
    v10 = *(a1 + 88);
    if (v10 > 29)
    {
      if (v10 <= 49)
      {
        if (v10 == 30)
        {
          v11 = "Applying configuration to device";
          goto LABEL_32;
        }

        if (v10 == 40)
        {
          v11 = "Applied configuration to device";
          goto LABEL_32;
        }
      }

      else
      {
        switch(v10)
        {
          case '2':
            v11 = "Searching for post-config device";
            goto LABEL_32;
          case '<':
            v11 = "Performing post-config check of device";
            goto LABEL_32;
          case 'F':
            v11 = "Performed post-config check of device";
            goto LABEL_32;
        }
      }
    }

    else if (v10 <= 2)
    {
      if (v10 == 1)
      {
        v11 = "Start";
        goto LABEL_32;
      }

      if (v10 == 2)
      {
        v11 = "Final";
        goto LABEL_32;
      }
    }

    else
    {
      switch(v10)
      {
        case 3:
          v11 = "Error";
          goto LABEL_32;
        case 10:
          v11 = "Search for pre-config device";
          goto LABEL_32;
        case 20:
          v11 = "Authenticating pre-config device";
LABEL_32:
          *buf = 138543618;
          v68 = v8;
          v69 = 2080;
          v70 = v11;
          _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Easy config progress: %s", buf, 0x16u);

LABEL_33:
          objc_autoreleasePoolPop(v4);
          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v65[2] = __112__HAPWACAccessoryClient__performEasyConfigWithPairingPrompt_performPairSetup_isSplit_pairingRequest_completion___block_invoke_131;
          v65[3] = &unk_2786D6740;
          v65[4] = *(a1 + 32);
          v66 = *(a1 + 88);
          __112__HAPWACAccessoryClient__performEasyConfigWithPairingPrompt_performPairSetup_isSplit_pairingRequest_completion___block_invoke_131(v65);
          v13 = *(a1 + 40);
          if (v13)
          {
            v14 = *MEMORY[0x277D06B48];
            v15 = [v13 objectForKeyedSubscript:*MEMORY[0x277D06B48]];
            v16 = v15 == 0;

            if (!v16)
            {
              v17 = objc_autoreleasePoolPush();
              v18 = *(a1 + 32);
              v19 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                v20 = HMFGetLogIdentifier();
                v21 = [*(a1 + 32) state];
                v22 = [*(a1 + 40) objectForKeyedSubscript:v14];
                *buf = 138543874;
                v68 = v20;
                v69 = 2048;
                v70 = v21;
                v71 = 2112;
                v72 = v22;
                _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Easy config failed in state: %tu - error: %@ calling completion handler with error", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v17);
              v23 = *(a1 + 32);
              v24 = [*(a1 + 40) objectForKeyedSubscript:v14];
              [v23 _restoreNetworkAndReportError:v24 withCompletion:*(a1 + 48)];
            }
          }

          v25 = *(a1 + 88);
          if (v25 == 10)
          {
            [*(a1 + 32) _reportProgress:0];
            v26 = [MEMORY[0x277CBEAA8] date];
            v27 = *(*(a1 + 56) + 8);
            v28 = *(v27 + 40);
            *(v27 + 40) = v26;

            v25 = *(a1 + 88);
          }

          if (v25 == 50)
          {
            [*(a1 + 32) _reportProgress:0];
            v29 = [MEMORY[0x277CBEAA8] date];
            v30 = *(*(a1 + 64) + 8);
            v31 = *(v30 + 40);
            *(v30 + 40) = v29;

            v25 = *(a1 + 88);
          }

          if (*(*(*(a1 + 56) + 8) + 40) && v25 >= 11)
          {
            v32 = *(a1 + 32);
            v33 = [MEMORY[0x277CBEAA8] date];
            [v33 timeIntervalSinceDate:*(*(*(a1 + 56) + 8) + 40)];
            v35 = v34;
            [v32 preConfigDiscoveryTime];
            [v32 setPreConfigDiscoveryTime:v35 + v36];

            v37 = *(*(a1 + 56) + 8);
            v38 = *(v37 + 40);
            *(v37 + 40) = 0;

            v25 = *(a1 + 88);
          }

          if (*(*(*(a1 + 64) + 8) + 40) && v25 >= 51)
          {
            v39 = *(a1 + 32);
            v40 = [MEMORY[0x277CBEAA8] date];
            [v40 timeIntervalSinceDate:*(*(*(a1 + 64) + 8) + 40)];
            v42 = v41;
            [v39 postConfigDiscoveryTime];
            [v39 setPostConfigDiscoveryTime:v42 + v43];

            v44 = *(*(a1 + 64) + 8);
            v45 = *(v44 + 40);
            *(v44 + 40) = 0;

            v25 = *(a1 + 88);
          }

          if (v25 == 40)
          {
            v46 = objc_autoreleasePoolPush();
            v47 = *(a1 + 32);
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              v49 = HMFGetLogIdentifier();
              v50 = *(a1 + 40);
              *buf = 138543618;
              v68 = v49;
              v69 = 2112;
              v70 = v50;
              _os_log_impl(&dword_22AADC000, v48, OS_LOG_TYPE_DEBUG, "%{public}@Applied Config with info: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v46);
            [*(a1 + 32) _reportProgress:1];
            [*(a1 + 32) _reportProgress:2];
            v51 = *(a1 + 32);
            v63[0] = MEMORY[0x277D85DD0];
            v63[1] = 3221225472;
            v63[2] = __112__HAPWACAccessoryClient__performEasyConfigWithPairingPrompt_performPairSetup_isSplit_pairingRequest_completion___block_invoke_136;
            v63[3] = &unk_2786D6D90;
            objc_copyWeak(&v64, (a1 + 72));
            v52 = [v51 restoreNetworkWithCompletion:v63];
            objc_destroyWeak(&v64);
            v25 = *(a1 + 88);
          }

          if (v25 == 2)
          {
            v53 = [*(a1 + 32) state] == 8;
            v54 = objc_autoreleasePoolPush();
            v55 = *(a1 + 32);
            v56 = HMFGetOSLogHandle();
            v57 = v56;
            if (v53)
            {
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
              {
                v58 = HMFGetLogIdentifier();
                *buf = 138543362;
                v68 = v58;
                _os_log_impl(&dword_22AADC000, v57, OS_LOG_TYPE_DEBUG, "%{public}@Easy config completed - calling completion handler", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v54);
              [*(a1 + 32) setState:9];
              (*(*(a1 + 48) + 16))();
            }

            else
            {
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                v59 = HMFGetLogIdentifier();
                v60 = [*(a1 + 32) state];
                *buf = 138543618;
                v68 = v59;
                v69 = 2048;
                v70 = v60;
                _os_log_impl(&dword_22AADC000, v57, OS_LOG_TYPE_ERROR, "%{public}@Easy config failed in state: %tu - calling completion handler with error", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v54);
              v61 = *(a1 + 32);
              v62 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277D06B48]];
              [v61 _restoreNetworkAndReportError:v62 withCompletion:*(a1 + 48)];
            }
          }

          return;
      }
    }

    if (v10 == 100)
    {
      v11 = "Configuration complete";
    }

    else
    {
      v11 = "?";
    }

    goto LABEL_32;
  }

  if (v7)
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v68 = v12;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Ignoring easy config progress event because we are restarting", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
}

void __112__HAPWACAccessoryClient__performEasyConfigWithPairingPrompt_performPairSetup_isSplit_pairingRequest_completion___block_invoke_131(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  v5 = [v2 pairingActivity];

  if (v5)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "state")}];
    v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  }
}

void __112__HAPWACAccessoryClient__performEasyConfigWithPairingPrompt_performPairSetup_isSplit_pairingRequest_completion___block_invoke_136(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (!v3 && WeakRetained)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Restored network", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [v7 clientDelegate];
    [v10 hapWACAccessoryClient:v7 setBonjourInfo:0];

    [v7 _reportProgress:3];
    [v7 _performPostConfig];
  }
}

void __112__HAPWACAccessoryClient__performEasyConfigWithPairingPrompt_performPairSetup_isSplit_pairingRequest_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  v16 = [v2 pairingActivity];

  if (v16)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
    v4 = MEMORY[0x277CCABB0];
    [*(a1 + 32) joinLatency];
    v5 = [v4 numberWithDouble:?];
    v6 = MEMORY[0x277CCABB0];
    [*(a1 + 32) restoreLatency];
    v7 = [v6 numberWithDouble:?];
    v8 = MEMORY[0x277CCABB0];
    [*(a1 + 32) configurationLatency];
    v9 = [v8 numberWithDouble:?];
    v10 = MEMORY[0x277CCABB0];
    [*(a1 + 32) preConfigDiscoveryTime];
    v11 = [v10 numberWithDouble:?];
    v12 = MEMORY[0x277CCABB0];
    [*(a1 + 32) postConfigDiscoveryTime];
    v13 = [v12 numberWithDouble:?];
    v14 = MEMORY[0x277CCABB0];
    [*(a1 + 32) setupCodeDelay];
    v15 = [v14 numberWithDouble:?];
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
  }
}

- (void)_reportProgress:(unint64_t)progress
{
  clientDelegate = [(HAPWACAccessoryClient *)self clientDelegate];

  if (clientDelegate)
  {
    clientDelegate2 = [(HAPWACAccessoryClient *)self clientDelegate];
    [clientDelegate2 hapWACAccessoryClient:self wacProgress:progress];
  }
}

- (id)performEasyConfigWithParingPrompt:(void *)prompt performPairSetup:(BOOL)setup isSplit:(BOOL)split pairingRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if (completionCopy)
  {
    workQueue = [(HAPWACAccessoryClient *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __110__HAPWACAccessoryClient_performEasyConfigWithParingPrompt_performPairSetup_isSplit_pairingRequest_completion___block_invoke;
    block[3] = &unk_2786D3A58;
    block[4] = self;
    promptCopy = prompt;
    setupCopy = setup;
    splitCopy = split;
    v18 = requestCopy;
    v19 = completionCopy;
    dispatch_async(workQueue, block);

    v15 = 0;
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:9 userInfo:0];
  }

  return v15;
}

void __110__HAPWACAccessoryClient_performEasyConfigWithParingPrompt_performPairSetup_isSplit_pairingRequest_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setState:5];
  v2 = [MEMORY[0x277CBEAA8] date];
  objc_initWeak(&location, *(a1 + 32));
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 65);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __110__HAPWACAccessoryClient_performEasyConfigWithParingPrompt_performPairSetup_isSplit_pairingRequest_completion___block_invoke_2;
  v9[3] = &unk_2786D3A30;
  objc_copyWeak(&v12, &location);
  v8 = v2;
  v10 = v8;
  v11 = *(a1 + 48);
  [v6 _performEasyConfigWithPairingPrompt:v3 performPairSetup:v4 isSplit:v5 pairingRequest:v7 completion:v9];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __110__HAPWACAccessoryClient_performEasyConfigWithParingPrompt_performPairSetup_isSplit_pairingRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v9)
    {
      v4 = 1;
    }

    else
    {
      v4 = 9;
    }

    [WeakRetained setState:v4];
    v5 = [MEMORY[0x277CBEAA8] date];
    [v5 timeIntervalSinceDate:*(a1 + 32)];
    v7 = v6;
    [WeakRetained configurationLatency];
    [WeakRetained setConfigurationLatency:v7 + v8];
  }

  else
  {
    [MEMORY[0x277CCA9B8] errorWithHMErrorCode:20];
    v9 = v5 = v9;
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_restoreNetworkWithCompletion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  [(HAPWACAccessoryClient *)self setCompletionHandler:completionCopy];
  currentNetworkInfo = [(HAPWACAccessoryClient *)self currentNetworkInfo];
  v6 = [currentNetworkInfo hmf_stringForKey:@"ssid"];

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v10;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Restoring network: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  currentNetworkInfo2 = [(HAPWACAccessoryClient *)selfCopy currentNetworkInfo];

  if (!currentNetworkInfo2)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = selfCopy;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v15;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@No restored network info", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:26 userInfo:0];
    completionCopy[2](completionCopy, v16);
  }

  currentNetworkInfo3 = [(HAPWACAccessoryClient *)selfCopy currentNetworkInfo];
  workQueue = [(HAPWACAccessoryClient *)selfCopy workQueue];
  v21 = v6;
  v22 = completionCopy;
  v19 = completionCopy;
  v20 = v6;
  WiFiRestoreNetwork();
}

void __55__HAPWACAccessoryClient__restoreNetworkWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    *buf = 138543874;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    v20 = 1024;
    v21 = a2;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%{public}@Restored to network %@ with status: %d", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v4);
  if (a2)
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:26 userInfo:0];
  }

  else
  {
    v10 = WiFiCopyCurrentNetworkInfoEx();
    v11 = [v10 hmf_stringForKey:@"ssid"];
    if ([*(a1 + 40) isEqual:v11])
    {
      v9 = 0;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v17 = v15;
        _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Restored network does not match - indicating join failure", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:26 userInfo:0];
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_callRestoreCompletion:(id)completion withError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  [(HAPWACAccessoryClient *)self setState:v8];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    hapWACAccessory = [(HAPWACAccessoryClient *)selfCopy hapWACAccessory];
    ssid = [hapWACAccessory ssid];
    v17 = 138543618;
    v18 = v12;
    v19 = 2112;
    v20 = ssid;
    _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Removing accessory network %@ from the known network list", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  WiFiManagerClientCreate();
  hapWACAccessory2 = [(HAPWACAccessoryClient *)selfCopy hapWACAccessory];
  rawScanResult = [hapWACAccessory2 rawScanResult];
  [rawScanResult objectForKey:@"platformNetwork"];

  WiFiManagerClientRemoveNetwork();
  if (completionCopy)
  {
    completionCopy[2](completionCopy, errorCopy);
  }
}

- (id)restoreNetworkWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
    workQueue = [(HAPWACAccessoryClient *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__HAPWACAccessoryClient_restoreNetworkWithCompletion___block_invoke;
    block[3] = &unk_2786D69E0;
    block[4] = self;
    v11 = date;
    v12 = completionCopy;
    v7 = date;
    dispatch_async(workQueue, block);

    v8 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:9 userInfo:0];
  }

  return v8;
}

void __54__HAPWACAccessoryClient_restoreNetworkWithCompletion___block_invoke(id *a1)
{
  objc_initWeak(&location, a1[4]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__HAPWACAccessoryClient_restoreNetworkWithCompletion___block_invoke_2;
  v9[3] = &unk_2786D3EB8;
  objc_copyWeak(&v11, &location);
  v10 = a1[6];
  v2 = MEMORY[0x231885210](v9);
  [a1[4] setState:4];
  v3 = a1[4];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__HAPWACAccessoryClient_restoreNetworkWithCompletion___block_invoke_4;
  v5[3] = &unk_2786D3A30;
  objc_copyWeak(&v8, &location);
  v4 = v2;
  v7 = v4;
  v6 = a1[5];
  [v3 _restoreNetworkWithCompletion:v5];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __54__HAPWACAccessoryClient_restoreNetworkWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__HAPWACAccessoryClient_restoreNetworkWithCompletion___block_invoke_3;
    v10[3] = &unk_2786D7050;
    v10[4] = WeakRetained;
    v6 = v3;
    v11 = v6;
    __54__HAPWACAccessoryClient_restoreNetworkWithCompletion___block_invoke_3(v10);
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:20];
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v6, v7, v8, v9);
}

void __54__HAPWACAccessoryClient_restoreNetworkWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    [v5 timeIntervalSinceDate:*(a1 + 32)];
    v7 = v6;
    [WeakRetained restoreLatency];
    [WeakRetained setRestoreLatency:v7 + v8];

    if (v3)
    {
      [WeakRetained setRetryCount:{objc_msgSend(WeakRetained, "retryCount") + 1}];
      v9 = objc_autoreleasePoolPush();
      v10 = WeakRetained;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v21 = v12;
        v22 = 2112;
        v23 = v3;
        _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Retrying restore after 5 sec on error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v13 = dispatch_time(0, 5000000000);
      v14 = [v10 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__HAPWACAccessoryClient_restoreNetworkWithCompletion___block_invoke_101;
      block[3] = &unk_2786D6BE0;
      block[4] = v10;
      objc_copyWeak(&v19, (a1 + 48));
      v18 = *(a1 + 40);
      dispatch_after(v13, v14, block);

      objc_destroyWeak(&v19);
    }

    else
    {
      [WeakRetained _callRestoreCompletion:*(a1 + 40) withError:0];
    }
  }

  else
  {
    v15 = *(a1 + 40);
    v16 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:20];
    (*(v15 + 16))(v15, v16);
  }
}

void __54__HAPWACAccessoryClient_restoreNetworkWithCompletion___block_invoke_101(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__HAPWACAccessoryClient_restoreNetworkWithCompletion___block_invoke_2_102;
  v3[3] = &unk_2786D3EB8;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  [v2 _restoreNetworkWithCompletion:v3];

  objc_destroyWeak(&v5);
}

void __54__HAPWACAccessoryClient_restoreNetworkWithCompletion___block_invoke_2_102(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  v5 = *(a1 + 32);
  if (WeakRetained)
  {
    [WeakRetained _callRestoreCompletion:v5 withError:v7];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:20];
    (*(v5 + 16))(v5, v6);
  }
}

void __54__HAPWACAccessoryClient_restoreNetworkWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  v7 = [v2 pairingActivity];

  if (v7)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "state")}];
    v4 = MEMORY[0x277CCABB0];
    [*(a1 + 32) restoreLatency];
    v5 = [v4 numberWithDouble:?];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "retryCount")}];
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
  }
}

- (void)_joinAccessory:(id)accessory completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  completionCopy = completion;
  currentNetworkInfo = [(HAPWACAccessoryClient *)self currentNetworkInfo];
  [currentNetworkInfo objectForKey:@"platformNetwork"];

  OperatingBand = WiFiNetworkGetOperatingBand();
  currentNetworkInfo2 = [(HAPWACAccessoryClient *)self currentNetworkInfo];
  v11 = [currentNetworkInfo2 hmf_stringForKey:@"ssid"];

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = HMFGetLogIdentifier();
    hapWACAccessory = [(HAPWACAccessoryClient *)selfCopy hapWACAccessory];
    ssid = [hapWACAccessory ssid];
    *buf = 138544130;
    v31 = v15;
    v32 = 2112;
    v33 = v11;
    v34 = 1024;
    v35 = OperatingBand;
    v36 = 2112;
    v37 = ssid;
    _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Joining accessory network: (%@[%u]) -> %@)", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v12);
  objc_initWeak(&location, selfCopy);
  hapWACAccessory2 = [(HAPWACAccessoryClient *)selfCopy hapWACAccessory];
  rawScanResult = [hapWACAccessory2 rawScanResult];
  workQueue = [(HAPWACAccessoryClient *)selfCopy workQueue];
  v27 = MEMORY[0x277D85DD0];
  objc_copyWeak(&v28, &location);
  v21 = WiFiJoinNetwork_b();

  if (v21)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v25;
      v32 = 1024;
      LODWORD(v33) = v21;
      _os_log_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to join accessory network with error: %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:26 userInfo:{0, v27, 3221225472, __51__HAPWACAccessoryClient__joinAccessory_completion___block_invoke, &unk_2786D39E0}];
    completionCopy[2](completionCopy, v26);
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __51__HAPWACAccessoryClient__joinAccessory_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _joinCompleteWithStatus:a2];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = objc_opt_class();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%{public}@WiFiJoinNetwork_b called completion after self had been destroyed", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (id)_findCompatiblePrefixedNetworks
{
  v55 = *MEMORY[0x277D85DE8];
  v46 = 0;
  currentNetworkInfo = [(HAPWACAccessoryClient *)self currentNetworkInfo];
  v4 = [currentNetworkInfo hmf_stringForKey:@"ssid"];

  v5 = MEMORY[0x277CBEB18];
  compatible2Pt4Networks = [(HAPWACAccessoryClient *)self compatible2Pt4Networks];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(compatible2Pt4Networks, "count")}];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  compatible2Pt4Networks2 = [(HAPWACAccessoryClient *)self compatible2Pt4Networks];
  v9 = [compatible2Pt4Networks2 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v43;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(compatible2Pt4Networks2);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        v14 = [v4 commonPrefixWithString:v13 options:10];
        if ([v14 length])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [compatible2Pt4Networks2 countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v10);
  }

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543618;
    v51 = v18;
    v52 = 2112;
    v53 = v7;
    _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, "%{public}@Possible compatible results: %@", buf, 0x16u);
  }

  v35 = selfCopy;
  objc_autoreleasePoolPop(v15);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v7;
  v19 = [obj countByEnumeratingWithState:&v38 objects:v49 count:16];
  if (v19)
  {
    v21 = v19;
    v22 = 0;
    v37 = *v39;
    *&v20 = 138543618;
    v34 = v20;
    v23 = selfCopy;
    while (2)
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v39 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v38 + 1) + 8 * j);
        v47 = @"ssid";
        v48 = v25;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:{1, v34}];
        v26 = WiFiCopyNetworkInfo();
        if (v26)
        {
          v27 = objc_autoreleasePoolPush();
          v28 = v23;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = HMFGetLogIdentifier();
            v31 = [v26 objectForKeyedSubscript:@"ssid"];
            *buf = v34;
            v51 = v30;
            v52 = 2112;
            v53 = v31;
            _os_log_impl(&dword_22AADC000, v29, OS_LOG_TYPE_INFO, "%{public}@Matched : %@", buf, 0x16u);

            v23 = v35;
          }

          objc_autoreleasePoolPop(v27);
          if (v22)
          {

            goto LABEL_26;
          }

          v22 = v26;
        }
      }

      v21 = [obj countByEnumeratingWithState:&v38 objects:v49 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  else
  {
LABEL_26:
    v22 = 0;
  }

  v32 = v22;

  return v32;
}

- (void)_joinAccessoryNetworkWithCompletion:(id)completion
{
  v63 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  [(HAPWACAccessoryClient *)self setCompletionHandler:completionCopy];
  currentNetworkInfo = [(HAPWACAccessoryClient *)self currentNetworkInfo];
  [currentNetworkInfo objectForKey:@"platformNetwork"];

  if (CoreWiFiLibraryCore(0))
  {
    v56 = 0;
    v57 = &v56;
    v58 = 0x2050000000;
    v6 = getCWFInterfaceClass_softClass;
    v59 = getCWFInterfaceClass_softClass;
    if (!getCWFInterfaceClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCWFInterfaceClass_block_invoke;
      v61 = &unk_2786D3B88;
      v62 = &v56;
      __getCWFInterfaceClass_block_invoke(buf);
      v6 = v57[3];
    }

    v7 = v6;
    _Block_object_dispose(&v56, 8);
    v8 = objc_alloc_init(v6);
    [v8 resume];
    currentKnownNetworkProfile = [v8 currentKnownNetworkProfile];
    isEAP = [currentKnownNetworkProfile isEAP];

    [v8 invalidate];
  }

  else
  {
    isEAP = 0;
  }

  OperatingBand = WiFiNetworkGetOperatingBand();
  currentNetworkInfo2 = [(HAPWACAccessoryClient *)self currentNetworkInfo];
  v13 = [currentNetworkInfo2 hmf_stringForKey:@"ssid"];

  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v15 = [mEMORY[0x277D0F8D0] preferenceForKey:@"wifiNetworkBlacklist"];
  value = [v15 value];

  if ((isEAP & 1) != 0 || [value containsObject:v13])
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v20;
      _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Enterprise networks - not supported", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:23 userInfo:0];
    completionCopy[2](completionCopy, v21);

    goto LABEL_11;
  }

  hapWACAccessory = [(HAPWACAccessoryClient *)self hapWACAccessory];
  ssid = [hapWACAccessory ssid];
  v24 = [v13 isEqual:ssid];
  if (v13)
  {
    v25 = v24;
  }

  else
  {
    v25 = 1;
  }

  if (v25)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_impl(&dword_22AADC000, v28, OS_LOG_TYPE_ERROR, "%{public}@Not associated to WiFi", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:21 userInfo:0];
    completionCopy[2](completionCopy, v30);

    goto LABEL_11;
  }

  [(HAPWACAccessoryClient *)self setCompatiblePrefixedNetwork:0];
  hapWACAccessory2 = [(HAPWACAccessoryClient *)self hapWACAccessory];
  if (([hapWACAccessory2 supportedWiFiBands] & 1) != 0 && OperatingBand == 1)
  {
    goto LABEL_24;
  }

  hapWACAccessory3 = [(HAPWACAccessoryClient *)self hapWACAccessory];
  if (([hapWACAccessory3 supportedWiFiBands] & 2) != 0 && OperatingBand == 2)
  {

LABEL_24:
LABEL_25:
    v33 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v36;
      _os_log_impl(&dword_22AADC000, v35, OS_LOG_TYPE_DEBUG, "%{public}@Compatible network", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v33);
    hapWACAccessory4 = [(HAPWACAccessoryClient *)selfCopy3 hapWACAccessory];
    [(HAPWACAccessoryClient *)selfCopy3 _joinAccessory:hapWACAccessory4 completion:completionCopy];

    goto LABEL_11;
  }

  hapWACAccessory5 = [(HAPWACAccessoryClient *)self hapWACAccessory];
  if ([hapWACAccessory5 supportedWiFiBands])
  {
    compatible2Pt4Networks = [(HAPWACAccessoryClient *)self compatible2Pt4Networks];
    v40 = [compatible2Pt4Networks containsObject:v13];

    if (v40)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  hapWACAccessory6 = [(HAPWACAccessoryClient *)self hapWACAccessory];
  if (([hapWACAccessory6 supportedWiFiBands] & 1) == 0)
  {

LABEL_34:
    v44 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v47;
      _os_log_impl(&dword_22AADC000, v46, OS_LOG_TYPE_ERROR, "%{public}@Incompatible network", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v44);
    v48 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:20 userInfo:0];
    completionCopy[2](completionCopy, v48);

    goto LABEL_11;
  }

  compatible2Pt4Networks2 = [(HAPWACAccessoryClient *)self compatible2Pt4Networks];
  v43 = [compatible2Pt4Networks2 containsObject:v13];

  if (v43)
  {
    goto LABEL_34;
  }

  v49 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v51 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
  {
    v52 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v52;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    _os_log_impl(&dword_22AADC000, v51, OS_LOG_TYPE_DEBUG, "%{public}@Finding 2.4 AP with ssid: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v49);
  browser = [(HAPWACAccessoryClient *)selfCopy5 browser];
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __61__HAPWACAccessoryClient__joinAccessoryNetworkWithCompletion___block_invoke;
  v54[3] = &unk_2786D39B8;
  v54[4] = selfCopy5;
  v55 = completionCopy;
  [browser scan2Pt4APWithSSID:v13 completion:v54];

LABEL_11:
}

void __61__HAPWACAccessoryClient__joinAccessoryNetworkWithCompletion___block_invoke(uint64_t a1, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (a2)
  {
    v18 = [*(a1 + 32) hapWACAccessory];
    [v3 _joinAccessory:? completion:?];
  }

  else
  {
    v4 = [*(a1 + 32) _findCompatiblePrefixedNetworks];
    [*(a1 + 32) setCompatiblePrefixedNetwork:v4];

    v5 = [*(a1 + 32) compatiblePrefixedNetwork];

    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    v9 = v8;
    if (v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        v11 = [*(a1 + 32) compatiblePrefixedNetwork];
        v12 = [v11 objectForKeyedSubscript:@"ssid"];
        *buf = 138543618;
        v20 = v10;
        v21 = 2112;
        v22 = v12;
        _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%{public}@Found compatible prefixed network: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      v13 = *(a1 + 32);
      v14 = [v13 hapWACAccessory];
      [v13 _joinAccessory:v14 completion:*(a1 + 40)];
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v20 = v15;
        _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@No compatible network found", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      v16 = *(a1 + 40);
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:20 userInfo:0];
      (*(v16 + 16))(v16, v17);
    }
  }
}

- (id)joinAccessoryNetworkWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    workQueue = [(HAPWACAccessoryClient *)self workQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__HAPWACAccessoryClient_joinAccessoryNetworkWithCompletion___block_invoke;
    v8[3] = &unk_2786D65D8;
    v8[4] = self;
    v9 = completionCopy;
    dispatch_async(workQueue, v8);

    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:9 userInfo:0];
  }

  return v6;
}

void __60__HAPWACAccessoryClient_joinAccessoryNetworkWithCompletion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  objc_initWeak(&location, *(a1 + 32));
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __60__HAPWACAccessoryClient_joinAccessoryNetworkWithCompletion___block_invoke_2;
  v19[3] = &unk_2786D3EB8;
  objc_copyWeak(&v21, &location);
  v20 = *(a1 + 40);
  v3 = MEMORY[0x231885210](v19);
  v18 = 0;
  [*v2 setState:2];
  [*(a1 + 32) setRetryCount:0];
  v4 = WiFiCopyCurrentNetworkInfoEx();
  [*(a1 + 32) setCurrentNetworkInfo:v4];

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 32) currentNetworkInfo];
    v10 = [v9 hmf_stringForKey:@"ssid"];
    *buf = 138543618;
    v24 = v8;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Saving current network: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v11 = [MEMORY[0x277CBEAA8] date];
  v12 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__HAPWACAccessoryClient_joinAccessoryNetworkWithCompletion___block_invoke_90;
  v14[3] = &unk_2786D3A30;
  objc_copyWeak(&v17, &location);
  v16 = v3;
  v13 = v11;
  v15 = v13;
  [v12 _joinAccessoryNetworkWithCompletion:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __60__HAPWACAccessoryClient_joinAccessoryNetworkWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__HAPWACAccessoryClient_joinAccessoryNetworkWithCompletion___block_invoke_3;
    v10[3] = &unk_2786D7050;
    v10[4] = WeakRetained;
    v6 = v3;
    v11 = v6;
    __60__HAPWACAccessoryClient_joinAccessoryNetworkWithCompletion___block_invoke_3(v10);
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:20];
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v6, v7, v8, v9);
}

void __60__HAPWACAccessoryClient_joinAccessoryNetworkWithCompletion___block_invoke_90(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    [v5 timeIntervalSinceDate:*(a1 + 32)];
    v7 = v6;
    [WeakRetained joinLatency];
    [WeakRetained setJoinLatency:v7 + v8];

    if (!v3)
    {
      v9 = 3;
      goto LABEL_9;
    }

    if ([WeakRetained retryCount] || objc_msgSend(v3, "code") == 23 || objc_msgSend(v3, "code") == 34)
    {
      v9 = 1;
LABEL_9:
      [WeakRetained setState:v9];
      (*(*(a1 + 40) + 16))();
      goto LABEL_10;
    }

    [WeakRetained setRetryCount:{objc_msgSend(WeakRetained, "retryCount") + 1}];
    v12 = objc_autoreleasePoolPush();
    v13 = WeakRetained;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Retrying to join accessory network on error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__HAPWACAccessoryClient_joinAccessoryNetworkWithCompletion___block_invoke_91;
    v16[3] = &unk_2786D3EB8;
    objc_copyWeak(&v18, (a1 + 48));
    v17 = *(a1 + 40);
    [v13 _joinAccessoryNetworkWithCompletion:v16];

    objc_destroyWeak(&v18);
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:20];
    (*(v10 + 16))(v10, v11);
  }

LABEL_10:
}

void __60__HAPWACAccessoryClient_joinAccessoryNetworkWithCompletion___block_invoke_91(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v4 = 1;
    }

    else
    {
      v4 = 3;
    }

    [WeakRetained setState:v4];
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:20];

    v6 = v5;
  }

  (*(*(a1 + 32) + 16))();
}

void __60__HAPWACAccessoryClient_joinAccessoryNetworkWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  v7 = [v2 pairingActivity];

  if (v7)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "state")}];
    v4 = MEMORY[0x277CCABB0];
    [*(a1 + 32) joinLatency];
    v5 = [v4 numberWithDouble:?];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "retryCount")}];
    [*(a1 + 40) domain];

    [*(a1 + 40) code];
  }
}

- (void)_callJoinCompletion:(id)completion withError:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  errorCopy = error;
  if (!errorCopy)
  {
    v8 = WiFiCopyCurrentNetworkInfoEx();
    errorCopy = 0;
    v9 = [v8 objectForKey:@"platformNetwork"];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v9)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v8 hmf_stringForKey:@"ssid"];
        *buf = 138543874;
        v19 = v14;
        v20 = 2112;
        v21 = v15;
        v22 = 2112;
        v23 = 0;
        _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Disabling auto-join on: %@, error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      WiFiNetworkDisableAutoJoinUntilFirstUserJoin();
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v19 = v16;
        _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@Join succeeded but no network - declaring join failure", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAPErrorDomain" code:26 userInfo:0];

      errorCopy = v17;
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, errorCopy);
  }
}

- (void)_joinCompleteWithStatus:(int)status
{
  v3 = *&status;
  v33 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v8;
    v31 = 1024;
    v32 = v3;
    _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Joined accessory network with status: %d", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v5);
  switch(v3)
  {
    case 5:
      goto LABEL_6;
    case 0:
      completionHandler = [(HAPWACAccessoryClient *)selfCopy completionHandler];
      [(HAPWACAccessoryClient *)selfCopy _callJoinCompletion:completionHandler withError:0];
      break;
    case 0xFFFFF0A0:
LABEL_6:
      v9 = objc_autoreleasePoolPush();
      v10 = selfCopy;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v12;
        _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@Failed to join network, reporting connection failure", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      completionHandler = [(HAPWACAccessoryClient *)v10 completionHandler];
      v14 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA470];
      v28 = @"Network was not found";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v16 = [v14 errorWithDomain:@"HAPErrorDomain" code:34 userInfo:v15];
      [(HAPWACAccessoryClient *)v10 _callJoinCompletion:completionHandler withError:v16];

      break;
    default:
      completionHandler = HMErrorFromOSStatus(v3);
      completionHandler2 = [(HAPWACAccessoryClient *)selfCopy completionHandler];
      objc_initWeak(buf, selfCopy);
      if ([(HAPWACAccessoryClient *)selfCopy retryCount]> 2)
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __49__HAPWACAccessoryClient__joinCompleteWithStatus___block_invoke_4;
        v20[3] = &unk_2786D3EB8;
        v18 = &v22;
        objc_copyWeak(&v22, buf);
        v21 = completionHandler2;
        [(HAPWACAccessoryClient *)selfCopy _restoreNetworkWithCompletion:v20];
        v19 = &v21;
      }

      else
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __49__HAPWACAccessoryClient__joinCompleteWithStatus___block_invoke;
        v23[3] = &unk_2786D3A30;
        v18 = &v26;
        objc_copyWeak(&v26, buf);
        v25 = completionHandler2;
        v24 = completionHandler;
        [(HAPWACAccessoryClient *)selfCopy _restoreNetworkWithCompletion:v23];

        v19 = &v25;
      }

      objc_destroyWeak(v18);
      objc_destroyWeak(buf);

      break;
  }
}

void __49__HAPWACAccessoryClient__joinCompleteWithStatus___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setRetryCount:{objc_msgSend(WeakRetained, "retryCount") + 1}];
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v7 retryCount];
      v11 = *(a1 + 32);
      *buf = 138543874;
      v27 = v9;
      v28 = 2048;
      v29 = v10;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Retrying attempt: %ld to join accessory network on error:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    if ([v7 retryCount] == 3)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v7;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543362;
        v27 = v15;
        _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Last retry attempting after 10 sec", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      v16 = dispatch_time(0, 10000000000);
      v17 = [v13 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __49__HAPWACAccessoryClient__joinCompleteWithStatus___block_invoke_77;
      block[3] = &unk_2786D6BE0;
      block[4] = v13;
      objc_copyWeak(&v25, (a1 + 48));
      v24 = *(a1 + 40);
      dispatch_after(v16, v17, block);

      objc_destroyWeak(&v25);
    }

    else
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __49__HAPWACAccessoryClient__joinCompleteWithStatus___block_invoke_3;
      v20[3] = &unk_2786D3EB8;
      objc_copyWeak(&v22, (a1 + 48));
      v21 = *(a1 + 40);
      [v7 _joinAccessoryNetworkWithCompletion:v20];

      objc_destroyWeak(&v22);
    }
  }

  else
  {
    v18 = *(a1 + 40);
    v19 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:20];
    (*(v18 + 16))(v18, v19);
  }
}

void __49__HAPWACAccessoryClient__joinCompleteWithStatus___block_invoke_4(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  v5 = *(a1 + 32);
  if (WeakRetained)
  {
    [WeakRetained _callJoinCompletion:v5 withError:v7];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:20];
    (*(v5 + 16))(v5, v6);
  }
}

void __49__HAPWACAccessoryClient__joinCompleteWithStatus___block_invoke_77(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__HAPWACAccessoryClient__joinCompleteWithStatus___block_invoke_2;
  v3[3] = &unk_2786D3EB8;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  [v2 _joinAccessoryNetworkWithCompletion:v3];

  objc_destroyWeak(&v5);
}

void __49__HAPWACAccessoryClient__joinCompleteWithStatus___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  v5 = *(a1 + 32);
  if (WeakRetained)
  {
    [WeakRetained _callJoinCompletion:v5 withError:v7];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:20];
    (*(v5 + 16))(v5, v6);
  }
}

void __49__HAPWACAccessoryClient__joinCompleteWithStatus___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  v5 = *(a1 + 32);
  if (WeakRetained)
  {
    [WeakRetained _callJoinCompletion:v5 withError:v7];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:20];
    (*(v5 + 16))(v5, v6);
  }
}

- (unint64_t)state
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (void)setState:(unint64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_state = state;

  os_unfair_lock_unlock(&self->_lock);
}

- (HAPWACAccessoryClientDelegate)clientDelegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_clientDelegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)registerClientDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_clientDelegate, delegateCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dumpStatsWithError:(id)error
{
  v57 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (![(HAPWACAccessoryClient *)self metricSubmitted])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v8 = v29 = v5;
      hapWACAccessory = [(HAPWACAccessoryClient *)selfCopy hapWACAccessory];
      name = [hapWACAccessory name];
      hapWACAccessory2 = [(HAPWACAccessoryClient *)selfCopy hapWACAccessory];
      deviceId = [hapWACAccessory2 deviceId];
      hapWACAccessory3 = [(HAPWACAccessoryClient *)selfCopy hapWACAccessory];
      rssi = [hapWACAccessory3 rssi];
      hapWACAccessory4 = [(HAPWACAccessoryClient *)selfCopy hapWACAccessory];
      [hapWACAccessory4 discoveryTime];
      v16 = v15;
      [(HAPWACAccessoryClient *)selfCopy joinLatency];
      v18 = v17;
      [(HAPWACAccessoryClient *)selfCopy restoreLatency];
      v20 = v19;
      [(HAPWACAccessoryClient *)selfCopy configurationLatency];
      v22 = v21;
      [(HAPWACAccessoryClient *)selfCopy preConfigDiscoveryTime];
      v24 = v23;
      [(HAPWACAccessoryClient *)selfCopy postConfigDiscoveryTime];
      v26 = v25;
      [(HAPWACAccessoryClient *)selfCopy setupCodeDelay];
      *buf = 138546434;
      v32 = v8;
      v33 = 2112;
      v34 = name;
      v35 = 2112;
      v36 = deviceId;
      v37 = 2112;
      v38 = rssi;
      v39 = 2048;
      v40 = v16;
      v41 = 2048;
      v42 = v18;
      v43 = 2048;
      v44 = v20;
      v45 = 2048;
      v46 = v22;
      v47 = 2048;
      v48 = v24;
      v49 = 2048;
      v50 = v26;
      v51 = 2048;
      v52 = v27;
      v53 = 2048;
      retryCount = [(HAPWACAccessoryClient *)selfCopy retryCount];
      v55 = 2112;
      v56 = errorCopy;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%{public}@Stats for accessory: %@ (%@) @ (%@), \nDiscovery Time: %f sec, \nJoin Time     : %f sec, \nRestore Time  : %f sec, \nWAC Configs   : %f sec, \n    Pre-Config Discovery : %f sec, \n    Post-Config Discovery: %f sec, \n    Setup Code delay     : %f sec, \nRetry Count   : %ld \nError         : %@  \n", buf, 0x84u);

      v5 = v29;
    }

    objc_autoreleasePoolPop(v5);
    v30 = errorCopy;
    AnalyticsSendEventLazy();
    [(HAPWACAccessoryClient *)selfCopy setMetricSubmitted:1];
  }
}

id __44__HAPWACAccessoryClient_dumpStatsWithError___block_invoke(uint64_t a1)
{
  v25[11] = *MEMORY[0x277D85DE8];
  v24[0] = @"accessoryName";
  v23 = [*(a1 + 32) hapWACAccessory];
  v22 = [v23 name];
  v25[0] = v22;
  v24[1] = @"deviceId";
  v21 = [*(a1 + 32) hapWACAccessory];
  v20 = [v21 deviceId];
  v25[1] = v20;
  v24[2] = @"joinLatency";
  v2 = MEMORY[0x277CCABB0];
  [*(a1 + 32) joinLatency];
  v19 = [v2 numberWithDouble:?];
  v25[2] = v19;
  v24[3] = @"restoreLatency";
  v3 = MEMORY[0x277CCABB0];
  [*(a1 + 32) restoreLatency];
  v4 = [v3 numberWithDouble:?];
  v25[3] = v4;
  v24[4] = @"configurationLatency";
  v5 = MEMORY[0x277CCABB0];
  [*(a1 + 32) configurationLatency];
  v6 = [v5 numberWithDouble:?];
  v25[4] = v6;
  v24[5] = @"preConfigDiscoveryTime";
  v7 = MEMORY[0x277CCABB0];
  [*(a1 + 32) preConfigDiscoveryTime];
  v8 = [v7 numberWithDouble:?];
  v25[5] = v8;
  v24[6] = @"postConfigDiscoveryTime";
  v9 = MEMORY[0x277CCABB0];
  [*(a1 + 32) postConfigDiscoveryTime];
  v10 = [v9 numberWithDouble:?];
  v25[6] = v10;
  v24[7] = @"setupCodeDelay";
  v11 = MEMORY[0x277CCABB0];
  [*(a1 + 32) setupCodeDelay];
  v12 = [v11 numberWithDouble:?];
  v25[7] = v12;
  v24[8] = @"retryCount";
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "retryCount")}];
  v25[8] = v13;
  v24[9] = @"errorCode";
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "code")}];
  v25[9] = v14;
  v24[10] = @"errorDescription";
  v15 = [*(a1 + 40) description];
  if (v15)
  {
    v16 = [*(a1 + 40) description];
  }

  else
  {
    v16 = &stru_283E79C60;
  }

  v25[10] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:11];
  if (v15)
  {
  }

  return v17;
}

- (id)_setupEasyConfigWithDeviceInfo:(id)info
{
  infoCopy = info;
  server = [(HAPWACAccessoryClient *)self server];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = server;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    copyPairingIdentityDelegateCallback = [v7 copyPairingIdentityDelegateCallback];
    findPairedPeerDelegateCallback = [v7 findPairedPeerDelegateCallback];
    *&v19 = [v7 savePairedPeerDelegateCallback];
    v8 = [[HAPEasyConfigDevice alloc] initWithDeviceInfo:infoCopy server:v7];
    [(EasyConfigDevice *)v8 setPairingDelegate:&v16];

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return [(HAPWACAccessoryClient *)v10 initWithWACAccessory:v11 server:v12 browser:v13 compatible2Pt4Networks:v14, v15];
  }
}

- (HAPWACAccessoryClient)initWithWACAccessory:(id)accessory server:(id)server browser:(id)browser compatible2Pt4Networks:(id)networks
{
  accessoryCopy = accessory;
  serverCopy = server;
  browserCopy = browser;
  networksCopy = networks;
  v26.receiver = self;
  v26.super_class = HAPWACAccessoryClient;
  v15 = [(HAPWACAccessoryClient *)&v26 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_hapWACAccessory, accessory);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("HAPWACAccessoryClient", v17);
    workQueue = v16->_workQueue;
    v16->_workQueue = v18;

    currentNetworkInfo = v16->_currentNetworkInfo;
    v16->_currentNetworkInfo = 0;

    objc_storeWeak(&v16->_server, serverCopy);
    objc_storeWeak(&v16->_browser, browserCopy);
    objc_storeStrong(&v16->_compatible2Pt4Networks, networks);
    compatiblePrefixedNetwork = v16->_compatiblePrefixedNetwork;
    v16->_compatiblePrefixedNetwork = 0;

    v16->_metricSubmitted = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __84__HAPWACAccessoryClient_initWithWACAccessory_server_browser_compatible2Pt4Networks___block_invoke;
    v23[3] = &unk_2786D7050;
    v24 = v16;
    v25 = accessoryCopy;
    __84__HAPWACAccessoryClient_initWithWACAccessory_server_browser_compatible2Pt4Networks___block_invoke(v23);
  }

  return v16;
}

void __84__HAPWACAccessoryClient_initWithWACAccessory_server_browser_compatible2Pt4Networks___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) server];
  v13 = [v2 pairingActivity];

  if (v13)
  {
    [*(a1 + 40) wacCategory];

    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "version")}];
    [*(a1 + 40) supportsLegacyWAC];
    v4 = HMFBooleanToString();
    v5 = HAPAuthFeaturesToString([*(a1 + 40) authFeatures]);
    [*(a1 + 40) supportedWiFiBands];
    v6 = HMFBooleanToString();
    [*(a1 + 40) supportedWiFiBands];
    v7 = HMFBooleanToString();
    [*(a1 + 40) supportsTokenAuth];
    v8 = HMFBooleanToString();
    [*(a1 + 40) supportsCertAuth];
    v9 = HMFBooleanToString();
    [*(a1 + 40) isAirPlayAccessory];
    v10 = HMFBooleanToString();
    [*(a1 + 40) isHomeKitAccessory];
    v11 = HMFBooleanToString();
    [*(a1 + 40) requiresOwnershipToken];
    v12 = HMFBooleanToString();
  }
}

- (HAPWACAccessoryClient)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t49 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t49, &__block_literal_global_6025);
  }

  v3 = logCategory__hmf_once_v50;

  return v3;
}

uint64_t __36__HAPWACAccessoryClient_logCategory__block_invoke()
{
  logCategory__hmf_once_v50 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

@end