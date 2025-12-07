@interface HMEnrollmentService
- (BOOL)_isAudiogramValid:(id)valid;
- (HMEnrollmentService)initWithDeviceAddress:(id)address;
- (NSArray)invalidAudiograms;
- (NSArray)validAudiograms;
- (float)getAmplification;
- (float)getBalance;
- (float)getBeamFormer;
- (float)getNoiseSuppression;
- (float)getTone;
- (void)_accessoryReceivedHearingModeSettings:(id)settings;
- (void)_accessorySendHearingModeSettings;
- (void)_activate;
- (void)_audiogramsQueryHandler:(id)handler results:(id)results error:(id)error;
- (void)_getHearingModeSettings:(id *)settings fromAudiogram:(id)audiogram;
- (void)_invalidate;
- (void)_startAudiogramQuery;
- (void)activate;
- (void)invalidate;
- (void)resetTunings;
- (void)setAmplification:(float)amplification;
- (void)setBalance:(float)balance;
- (void)setBeamFormer:(float)former;
- (void)setNoiseSuppression:(float)suppression;
- (void)setSelectedAudiogram:(id)audiogram;
- (void)setTone:(float)tone;
- (void)triggerOnDemandFaultCheckWithCompletionHandler:(id)handler;
@end

@implementation HMEnrollmentService

- (HMEnrollmentService)initWithDeviceAddress:(id)address
{
  addressCopy = address;
  v10.receiver = self;
  v10.super_class = HMEnrollmentService;
  v6 = [(HMEnrollmentService *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, MEMORY[0x277D85CD0]);
    objc_storeStrong(&v7->_bluetoothDeviceAddress, address);
    v7->_amplification = 0.5;
    *&v7->_tone = 0x3F0000003F000000;
    v8 = v7;
  }

  return v7;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMEnrollmentService_activate__block_invoke;
  block[3] = &unk_2796EE5C0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  selfCopy = self;
  if (gLogCategory_HMEnrollmentService <= 30)
  {
    if (gLogCategory_HMEnrollmentService != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(HMEnrollmentService *)self _activate];
    }
  }

  [(HMEnrollmentService *)selfCopy _startAudiogramQuery];
  v4 = selfCopy->_accessoryManager;
  if (!v4)
  {
    v5 = objc_alloc_init(HMAccessoryManager);
    accessoryManager = selfCopy->_accessoryManager;
    selfCopy->_accessoryManager = v5;

    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __32__HMEnrollmentService__activate__block_invoke;
    v10 = &unk_2796EE978;
    v11 = selfCopy;
    v4 = v5;
    v12 = v4;
    [(HMAccessoryManager *)selfCopy->_accessoryManager setSettingsUpdateHandler:&v7];
    if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
    {
      [HMEnrollmentService _activate];
    }

    [(HMAccessoryManager *)v4 activateWithBluetoothDeviceAddress:selfCopy->_bluetoothDeviceAddress, v7, v8, v9, v10, v11];
  }
}

void __32__HMEnrollmentService__activate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HMEnrollmentService__activate__block_invoke_2;
  block[3] = &unk_2796EE950;
  block[4] = v5;
  v9 = v4;
  v10 = v3;
  v7 = v3;
  dispatch_async(v6, block);
}

void *__32__HMEnrollmentService__activate__block_invoke_2(void *result)
{
  if (*(result[4] + 8) == result[5])
  {
    v2 = result;
    if (gLogCategory_HMEnrollmentService <= 10 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
    {
      __32__HMEnrollmentService__activate__block_invoke_2_cold_1(v2);
    }

    v3 = v2[4];
    v4 = v2[6];

    return [v3 _accessoryReceivedHearingModeSettings:v4];
  }

  return result;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__HMEnrollmentService_invalidate__block_invoke;
  block[3] = &unk_2796EE5C0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  accessoryManager = self->_accessoryManager;
  if (accessoryManager)
  {
    [(HMAccessoryManager *)accessoryManager invalidate];
    [(HMAccessoryManager *)self->_accessoryManager setSettingsUpdateHandler:0];
    v4 = self->_accessoryManager;
    self->_accessoryManager = 0;
  }
}

- (NSArray)validAudiograms
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_validAudiograms;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSArray)invalidAudiograms
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_invalidAudiograms;
  objc_sync_exit(selfCopy);

  return v3;
}

- (float)getAmplification
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  amplification = selfCopy->_amplification;
  objc_sync_exit(selfCopy);

  return amplification;
}

- (void)setAmplification:(float)amplification
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_amplification = amplification;
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMEnrollmentService_setAmplification___block_invoke;
  block[3] = &unk_2796EE5C0;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
  objc_sync_exit(selfCopy);
}

- (float)getBalance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  balance = selfCopy->_balance;
  objc_sync_exit(selfCopy);

  return balance;
}

- (void)setBalance:(float)balance
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_balance = balance;
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__HMEnrollmentService_setBalance___block_invoke;
  block[3] = &unk_2796EE5C0;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
  objc_sync_exit(selfCopy);
}

- (float)getBeamFormer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  beamFormer = selfCopy->_beamFormer;
  objc_sync_exit(selfCopy);

  return beamFormer;
}

- (void)setBeamFormer:(float)former
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_beamFormer = former;
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HMEnrollmentService_setBeamFormer___block_invoke;
  block[3] = &unk_2796EE5C0;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
  objc_sync_exit(selfCopy);
}

- (float)getNoiseSuppression
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  noiseSuppression = selfCopy->_noiseSuppression;
  objc_sync_exit(selfCopy);

  return noiseSuppression;
}

- (void)setNoiseSuppression:(float)suppression
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_noiseSuppression = suppression;
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMEnrollmentService_setNoiseSuppression___block_invoke;
  block[3] = &unk_2796EE5C0;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
  objc_sync_exit(selfCopy);
}

- (void)setSelectedAudiogram:(id)audiogram
{
  audiogramCopy = audiogram;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selectedAudiogram = selfCopy->_selectedAudiogram;
  selfCopy->_selectedAudiogram = audiogramCopy;
  v7 = audiogramCopy;

  selfCopy->_amplification = 0.5;
  *&selfCopy->_tone = 0x3F0000003F000000;
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HMEnrollmentService_setSelectedAudiogram___block_invoke;
  block[3] = &unk_2796EE5C0;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);

  objc_sync_exit(selfCopy);
}

- (float)getTone
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  tone = selfCopy->_tone;
  objc_sync_exit(selfCopy);

  return tone;
}

- (void)setTone:(float)tone
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_tone = tone;
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__HMEnrollmentService_setTone___block_invoke;
  block[3] = &unk_2796EE5C0;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
  objc_sync_exit(selfCopy);
}

- (void)triggerOnDemandFaultCheckWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__HMEnrollmentService_triggerOnDemandFaultCheckWithCompletionHandler___block_invoke;
  v7[3] = &unk_2796EE5E8;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)resetTunings
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  *&selfCopy->_tone = xmmword_251F84A20;
  selfCopy->_noiseSuppression = 0.0;
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMEnrollmentService_resetTunings__block_invoke;
  block[3] = &unk_2796EE5C0;
  block[4] = selfCopy;
  dispatch_async(dispatchQueue, block);
  objc_sync_exit(selfCopy);
}

- (void)_accessorySendHearingModeSettings
{
  v33 = 0.0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  memset(v28, 0, sizeof(v28));
  v3 = self->_currentConfig;
  v6 = v3;
  if (v3)
  {
    [(NSData *)v3 getBytes:v28 length:100];
  }

  else if (gLogCategory_HMEnrollmentService <= 30)
  {
    if (gLogCategory_HMEnrollmentService != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      [(HMEnrollmentService *)v3 _accessorySendHearingModeSettings];
    }
  }

  LODWORD(v28[0]) = 6554113;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = selfCopy->_selectedAudiogram;
  objc_sync_exit(selfCopy);

  if (v8)
  {
    [(HMEnrollmentService *)selfCopy _getHearingModeSettings:v28 fromAudiogram:v8];
  }

  if (gLogCategory_HMEnrollmentService <= 30)
  {
    v9 = *(v28 + 1);
    v10 = *(&v30 + 1);
    if (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize())
    {
      [(HMEnrollmentService *)v9 _accessorySendHearingModeSettings];
    }

    if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
    {
      [(HMEnrollmentService *)v10 _accessorySendHearingModeSettings];
    }
  }

  [(HMEnrollmentService *)selfCopy getTone];
  v12 = v11;
  [(HMEnrollmentService *)selfCopy getBalance];
  v14 = v13;
  [(HMEnrollmentService *)selfCopy getAmplification];
  v16 = v15;
  if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_HMEnrollmentService, "[HMEnrollmentService _accessorySendHearingModeSettings]", 30, "UI tone: %lf, balance: %lf, amplification: %lf", v12, v14, v16);
  }

  v17 = v12 * 2.0 + -1.0;
  v18 = v16 * 2.0 + -1.0;
  v19 = v14 * 2.0 + -1.0;
  if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_HMEnrollmentService, "[HMEnrollmentService _accessorySendHearingModeSettings]", 30, "backend converted tone: %lf, balance: %lf, amplification: %lf", v17, v19, v18);
  }

  v20 = fmax(fmin((v18 - (v19 * 0.5)), 1.5), -1.5);
  v21 = fmax(fmin(((v19 * 0.5) + v18), 1.5), -1.5);
  v22 = fmaxf(fminf(v17, 1.0), -1.0);
  *(&v29 + 4) = __PAIR64__(LODWORD(v22), LODWORD(v20));
  *(&v32 + 4) = __PAIR64__(LODWORD(v22), LODWORD(v21));
  beamFormer = selfCopy->_beamFormer;
  *(&v32 + 3) = beamFormer;
  noiseSuppression = selfCopy->_noiseSuppression;
  *(&v29 + 3) = beamFormer;
  *&v30 = noiseSuppression;
  v33 = noiseSuppression;
  if (gLogCategory_HMEnrollmentService <= 30)
  {
    if (gLogCategory_HMEnrollmentService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_26;
      }

      v21 = *(&v32 + 1);
      v22 = *(&v29 + 2);
      v20 = *(&v29 + 1);
      beamFormer = *(&v29 + 3);
      noiseSuppression = *&v30;
    }

    LogPrintF(&gLogCategory_HMEnrollmentService, "[HMEnrollmentService _accessorySendHearingModeSettings]", 30, "sending settings: leftGain: %lf, rightGain: %lf, tone: %lf, amplification: %lf, balance: %lf, beamFormer: %lf, noiseSuppression: %lf", v20, v21, v22, v18, v19, beamFormer, noiseSuppression);
  }

LABEL_26:
  v25 = [MEMORY[0x277CBEA90] dataWithBytes:v28 length:100];
  v26 = [v25 copy];
  currentConfig = self->_currentConfig;
  self->_currentConfig = v26;

  [(HMAccessoryManager *)selfCopy->_accessoryManager writeHearingModeSetting:self->_currentConfig];
}

- (void)_accessoryReceivedHearingModeSettings:(id)settings
{
  settingsCopy = settings;
  v5 = settingsCopy;
  if (settingsCopy)
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    memset(v23, 0, sizeof(v23));
    [settingsCopy getBytes:v23 length:100];
    v6 = BYTE1(v23[0]);
    if (BYTE1(v23[0]) == 2)
    {
      *&v7 = LOBYTE(v23[0]);
      v9 = *(&v24 + 3);
      v8 = *&v25;
      v10 = fmax(fmin(*(&v24 + 1), 1.5), -1.5);
      v11 = fmax(fmin(*(&v27 + 1), 1.5), -1.5);
      v12 = fmaxf(fminf(*(&v27 + 2), 1.0), -1.0);
      v13 = v11 - v10;
      v14 = v11 + ((v11 - v10) * -0.5);
      if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_HMEnrollmentService, "[HMEnrollmentService _accessoryReceivedHearingModeSettings:]", 30, "received raw settings: version: %lf, leftGain: %lf, rightGain: %lf, tone: %lf, amplification: %lf, balance: %lf, beamFormer: %lf, noiseSuppression: %lf", v7, v10, v11, v12, v14, v13, v9, v8);
      }

      v15 = (v14 + 1.0) * 0.5;
      v16 = (v13 + 1.0) * 0.5;
      v17 = (v12 + 1.0) * 0.5;
      selfCopy = self;
      objc_sync_enter(selfCopy);
      selfCopy->_tone = v17;
      selfCopy->_balance = v16;
      selfCopy->_amplification = v15;
      selfCopy->_beamFormer = v9;
      selfCopy->_noiseSuppression = v8;
      objc_sync_exit(selfCopy);

      if (gLogCategory_HMEnrollmentService <= 30)
      {
        v19 = *(v23 + 1);
        v20 = *(&v25 + 1);
        if (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize())
        {
          [HMEnrollmentService _accessoryReceivedHearingModeSettings:v19];
        }

        if (gLogCategory_HMEnrollmentService <= 30)
        {
          if (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize())
          {
            [HMEnrollmentService _accessoryReceivedHearingModeSettings:v20];
          }

          if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_HMEnrollmentService, "[HMEnrollmentService _accessoryReceivedHearingModeSettings:]", 30, "received settings: version: %lf, leftGain: %lf, rightGain: %lf, tone: %lf, amplification: %lf, balance: %lf, beamFormer: %lf, noiseSuppression: %lf", v7, v10, v11, v17, v15, v16, v9, selfCopy->_noiseSuppression);
          }
        }
      }

      v21 = [v5 mutableCopy];
      currentConfig = selfCopy->_currentConfig;
      selfCopy->_currentConfig = v21;
    }

    else if (gLogCategory_HMEnrollmentService <= 90 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
    {
      [HMEnrollmentService _accessoryReceivedHearingModeSettings:v6];
    }
  }

  else if (gLogCategory_HMEnrollmentService <= 90 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
  {
    [HMEnrollmentService _accessoryReceivedHearingModeSettings:];
  }
}

- (void)_getHearingModeSettings:(id *)settings fromAudiogram:(id)audiogram
{
  v72 = [HMAudiogramUtility frequencyToHearingDecibelLevelMapFromAudiogram:audiogram];
  if (v72)
  {
    v7 = +[HMAudiogramUtility frequencyBins];
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v72 objectForKey:v8];
    v10 = [v9 objectForKey:@"left"];
    [v10 floatValue];
    settings->var3.var0 = v11;

    v12 = [v7 objectAtIndexedSubscript:0];
    v13 = [v72 objectForKey:v12];
    v14 = [v13 objectForKey:@"right"];
    [v14 floatValue];
    settings->var4.var0 = v15;

    v16 = [v7 objectAtIndexedSubscript:1];
    v17 = [v72 objectForKey:v16];
    v18 = [v17 objectForKey:@"left"];
    [v18 floatValue];
    settings->var3.var1 = v19;

    v20 = [v7 objectAtIndexedSubscript:1];
    v21 = [v72 objectForKey:v20];
    v22 = [v21 objectForKey:@"right"];
    [v22 floatValue];
    settings->var4.var1 = v23;

    v24 = [v7 objectAtIndexedSubscript:2];
    v25 = [v72 objectForKey:v24];
    v26 = [v25 objectForKey:@"left"];
    [v26 floatValue];
    settings->var3.var2 = v27;

    v28 = [v7 objectAtIndexedSubscript:2];
    v29 = [v72 objectForKey:v28];
    v30 = [v29 objectForKey:@"right"];
    [v30 floatValue];
    settings->var4.var2 = v31;

    v32 = [v7 objectAtIndexedSubscript:3];
    v33 = [v72 objectForKey:v32];
    v34 = [v33 objectForKey:@"left"];
    [v34 floatValue];
    settings->var3.var3 = v35;

    v36 = [v7 objectAtIndexedSubscript:3];
    v37 = [v72 objectForKey:v36];
    v38 = [v37 objectForKey:@"right"];
    [v38 floatValue];
    settings->var4.var3 = v39;

    v40 = [v7 objectAtIndexedSubscript:5];
    v41 = [v72 objectForKey:v40];
    v42 = [v41 objectForKey:@"left"];
    [v42 floatValue];
    settings->var3.var5 = v43;

    v44 = [v7 objectAtIndexedSubscript:5];
    v45 = [v72 objectForKey:v44];
    v46 = [v45 objectForKey:@"right"];
    [v46 floatValue];
    settings->var4.var5 = v47;

    v48 = [v7 objectAtIndexedSubscript:7];
    v49 = [v72 objectForKey:v48];
    v50 = [v49 objectForKey:@"left"];
    [v50 floatValue];
    settings->var3.var7 = v51;

    v52 = [v7 objectAtIndexedSubscript:7];
    v53 = [v72 objectForKey:v52];
    v54 = [v53 objectForKey:@"right"];
    [v54 floatValue];
    settings->var4.var7 = v55;

    v56 = [v7 objectAtIndexedSubscript:4];
    v57 = [v72 objectForKey:v56];

    if (v57)
    {
      v58 = [v57 objectForKey:@"left"];
      [v58 floatValue];
      settings->var3.var4 = v59;

      v60 = [v57 objectForKey:@"right"];
      [v60 floatValue];
      settings->var4.var4 = v61;

      goto LABEL_8;
    }

    var4 = (settings->var3.var3 + settings->var3.var5) * 0.5;
    settings->var3.var4 = var4;
    v63 = (settings->var4.var3 + settings->var4.var5) * 0.5;
    settings->var4.var4 = v63;
    if (gLogCategory_HMEnrollmentService <= 30)
    {
      if (gLogCategory_HMEnrollmentService != -1)
      {
LABEL_6:
        LogPrintF(&gLogCategory_HMEnrollmentService, "[HMEnrollmentService _getHearingModeSettings:fromAudiogram:]", 30, "interpolating sensitivity point at 3000Hz, leftEar: %f dbHL, rightEar: %f dbHL", var4, v63);
        goto LABEL_8;
      }

      if (_LogCategory_Initialize())
      {
        var4 = settings->var3.var4;
        v63 = settings->var4.var4;
        goto LABEL_6;
      }
    }

LABEL_8:
    v64 = [v7 objectAtIndexedSubscript:6];
    v65 = [v72 objectForKey:v64];

    if (v65)
    {
      v66 = [v65 objectForKey:@"left"];
      [v66 floatValue];
      settings->var3.var6 = v67;

      v68 = [v65 objectForKey:@"right"];
      [v68 floatValue];
      settings->var4.var6 = v69;
    }

    else
    {
      var6 = (settings->var3.var5 + settings->var3.var7) * 0.5;
      settings->var3.var6 = var6;
      v71 = (settings->var4.var5 + settings->var4.var7) * 0.5;
      settings->var4.var6 = v71;
      if (gLogCategory_HMEnrollmentService <= 30)
      {
        if (gLogCategory_HMEnrollmentService == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_14;
          }

          var6 = settings->var3.var6;
          v71 = settings->var4.var6;
        }

        LogPrintF(&gLogCategory_HMEnrollmentService, "[HMEnrollmentService _getHearingModeSettings:fromAudiogram:]", 30, "interpolating sensitivity point at 6000Hz, leftEar: %f dbHL, rightEar: %f dbHL", var6, v71);
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  [(HMEnrollmentService *)0 _getHearingModeSettings:v5 fromAudiogram:v6];
LABEL_15:
}

- (void)_startAudiogramQuery
{
  audiogramSampleType = [MEMORY[0x277CCD720] audiogramSampleType];
  v4 = objc_alloc_init(MEMORY[0x277CCD4D8]);
  v5 = objc_alloc(MEMORY[0x277CCD8D0]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HMEnrollmentService__startAudiogramQuery__block_invoke;
  v7[3] = &unk_2796EE9C8;
  v7[4] = self;
  v6 = [v5 initWithSampleType:audiogramSampleType predicate:0 limit:0 sortDescriptors:0 resultsHandler:v7];
  if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
  {
    [HMEnrollmentService _startAudiogramQuery];
  }

  [v4 executeQuery:v6];
}

void __43__HMEnrollmentService__startAudiogramQuery__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 24);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __43__HMEnrollmentService__startAudiogramQuery__block_invoke_2;
  v15[3] = &unk_2796EE9A0;
  v15[4] = v10;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v11, v15);
}

- (void)_audiogramsQueryHandler:(id)handler results:(id)results error:(id)error
{
  v34 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  resultsCopy = results;
  errorCopy = error;
  if (errorCopy)
  {
    if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
    {
      [HMEnrollmentService _audiogramsQueryHandler:errorCopy results:? error:?];
    }

    audiogramsAvailableHandler = self->_audiogramsAvailableHandler;
    if (audiogramsAvailableHandler)
    {
      (*(audiogramsAvailableHandler + 2))(audiogramsAvailableHandler, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8], errorCopy);
    }
  }

  else
  {
    p_validAudiograms = &self->_validAudiograms;
    if (!self->_validAudiograms)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v13 = *p_validAudiograms;
      *p_validAudiograms = v12;
    }

    p_invalidAudiograms = &self->_invalidAudiograms;
    if (!self->_invalidAudiograms)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v16 = *p_invalidAudiograms;
      *p_invalidAudiograms = v15;
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    objc_storeStrong(&selfCopy->_audiograms, results);
    v28 = handlerCopy;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = selfCopy->_audiograms;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v19)
    {
      v20 = *v30;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v29 + 1) + 8 * i);
          if ([(HMEnrollmentService *)selfCopy _isAudiogramValid:v22])
          {
            v23 = p_validAudiograms;
          }

          else
          {
            v23 = p_invalidAudiograms;
          }

          [*v23 addObject:v22];
        }

        v19 = [(NSArray *)v18 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v19);
    }

    handlerCopy = v28;
    objc_sync_exit(selfCopy);

    if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
    {
      [HMEnrollmentService _audiogramsQueryHandler:p_invalidAudiograms results:? error:?];
    }

    v25 = selfCopy->_audiogramsAvailableHandler;
    if (v25)
    {
      v26 = [*p_validAudiograms copy];
      v27 = [*p_invalidAudiograms copy];
      v25[2](v25, v26, v27, 0);
    }
  }
}

- (BOOL)_isAudiogramValid:(id)valid
{
  validCopy = valid;
  v4 = [HMAudiogramUtility frequencyToHearingDecibelLevelMapFromAudiogram:validCopy];
  if (!v4)
  {
    [HMEnrollmentService _isAudiogramValid:?];
    v8 = v41;
    goto LABEL_20;
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v5 = +[HMAudiogramUtility requiredFrequencyBins];
  v34 = MEMORY[0x277D85DD0];
  v35 = 3221225472;
  v36 = __41__HMEnrollmentService__isAudiogramValid___block_invoke;
  v37 = &unk_2796EE9F0;
  v6 = v4;
  v38 = v6;
  v7 = validCopy;
  v39 = v7;
  v40 = &v41;
  [v5 enumerateObjectsUsingBlock:&v34];

  if (!v42[3])
  {
    v9 = [v6 objectForKey:&unk_286437CC8];
    v10 = [v6 objectForKey:&unk_286437CE0];
    v11 = [v6 objectForKey:&unk_286437CF8];
    v12 = [v9 objectForKey:@"left"];
    [v12 floatValue];
    v13 = [v10 objectForKey:@"left"];
    [v13 floatValue];

    v14 = [v9 objectForKey:@"right"];
    [v14 floatValue];
    v16 = v15;
    v17 = [v10 objectForKey:@"right"];
    [v17 floatValue];
    v19 = vabds_f32(v16, v18);

    if (v19 <= 20.0)
    {
      v25 = [v10 objectForKey:@"left"];
      [v25 floatValue];
      v26 = [v11 objectForKey:@"left"];
      [v26 floatValue];

      v27 = [v10 objectForKey:@"right"];
      [v27 floatValue];
      v29 = v28;
      v30 = [v11 objectForKey:@"right"];
      [v30 floatValue];
      v32 = vabds_f32(v29, v31);

      if (v32 <= 20.0)
      {
        v8 = 1;
LABEL_18:

        goto LABEL_19;
      }

      if (gLogCategory_HMEnrollmentService > 30 || gLogCategory_HMEnrollmentService == -1 && !_LogCategory_Initialize())
      {
LABEL_17:
        v8 = 0;
        goto LABEL_18;
      }

      sourceRevision = [v7 sourceRevision];
      source = [sourceRevision source];
      name = [source name];
      v23 = [v10 description];
      v24 = [v11 description];
      LogPrintF(&gLogCategory_HMEnrollmentService, "[HMEnrollmentService _isAudiogramValid:]", 30, "audiogram: %@ is invalid, difference in hearing level 4000Hz and 8000Hz is >20db. Sensitivity at 4k: %@, Sensitivity at 8k: %@", name, v23, v24, v34, v35, v36, v37, v38);
    }

    else
    {
      if (gLogCategory_HMEnrollmentService > 30 || gLogCategory_HMEnrollmentService == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      sourceRevision = [v7 sourceRevision];
      source = [sourceRevision source];
      name = [source name];
      v23 = [v9 description];
      v24 = [v10 description];
      LogPrintF(&gLogCategory_HMEnrollmentService, "[HMEnrollmentService _isAudiogramValid:]", 30, "audiogram: %@ is invalid, difference in hearing level at 2000Hz and 4000Hz is >20db. Sensitivity at 2k: %@, Sensitivity at 4k: %@", name, v23, v24, v34, v35, v36, v37, v38);
    }

    goto LABEL_17;
  }

  v8 = 0;
LABEL_19:

  _Block_object_dispose(&v41, 8);
LABEL_20:

  return v8;
}

void __41__HMEnrollmentService__isAudiogramValid___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v8];

  v7 = v8;
  if (!v6)
  {
    if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
    {
      __41__HMEnrollmentService__isAudiogramValid___block_invoke_cold_1(a1, v8);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
    v7 = v8;
  }
}

- (void)_getHearingModeSettings:(uint64_t)a3 fromAudiogram:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_HMEnrollmentService <= 30 && (gLogCategory_HMEnrollmentService != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_1(&gLogCategory_HMEnrollmentService, "[HMEnrollmentService _getHearingModeSettings:fromAudiogram:]", a3, "failed to process audiogram");
  }
}

- (_BYTE)_isAudiogramValid:(_BYTE *)result .cold.1(_BYTE *result)
{
  v1 = result;
  if (gLogCategory_HMEnrollmentService <= 30)
  {
    if (gLogCategory_HMEnrollmentService != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_HMEnrollmentService, "[HMEnrollmentService _isAudiogramValid:]", 30, "invalid audiogram");
    }
  }

  *v1 = 0;
  return result;
}

void __41__HMEnrollmentService__isAudiogramValid___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 40) sourceRevision];
  v3 = [v5 source];
  v4 = [v3 name];
  LogPrintF(&gLogCategory_HMEnrollmentService, "[HMEnrollmentService _isAudiogramValid:]_block_invoke", 30, "audiogram: %@ does not contain valid entry at frequency %@", v4, a2);
}

@end