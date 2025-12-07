@interface WCM_CellularController
- ($F24F406B2B787EFB06265DBA3D28CBD5)getCombinedUplinkFreqRange;
- (BOOL)clkAlgnTDDFreqCheck;
- (BOOL)isInCoexBand7LowerEdge;
- (WCM_CellularController)init;
- (WCM_CellularController)initWithConnection:(id)connection processId:(int)id;
- (unint64_t)getCoexTechForPolicy:(unint64_t)policy;
- (unint64_t)subSelector;
- (unint64_t)updateFrameSyncBit:(unint64_t)bit;
- (unint64_t)updateGPSStateBit:(unint64_t)bit;
- (unint64_t)updatePolicyForBB20:(unint64_t)b20;
- (void)ConstructAntennaMapXpcMsg:(id)msg AntPhyIdxDict:(id)dict AntSpmiIdxDict:(id)idxDict;
- (void)baseBandProtectionTimerHandler:(id)handler;
- (void)configureCellularTimeShareConfigReqParamsWithCenterFreq:(unint64_t)freq CoexTech:(unsigned int)tech bandwidth:(unint64_t)bandwidth subId:(unint64_t)id;
- (void)configureCellularTimeShareConfigReqParamsWithCenterFreq:(unint64_t)freq bandwidth:(unint64_t)bandwidth;
- (void)configureCellularTimeShareConfigReqParamsWithCenterFreq:(unint64_t)freq instance:(unsigned int)instance bandwidth:(unint64_t)bandwidth;
- (void)dealloc;
- (void)disableCellularTimeShareConfigReqSubId:(unint64_t)id;
- (void)fastChargingHandler:(BOOL)handler;
- (void)fastChargingHystersisTimerHandler:(id)handler;
- (void)handleDesenseNetworkConfig:(id)config;
- (void)handleMessage:(id)message;
- (void)handleNetworkConfig:(id)config;
- (void)handleNetworkConfig_bb20:(id)config_bb20;
- (void)handleNetworkConfig_legacy:(id)config_legacy;
- (void)handlePowerState:(BOOL)state;
- (void)handleThresholdEvent:(id)event;
- (void)handleTxPower:(id)power;
- (void)sacExtractDesenseFreq:(id)freq message:(id)message;
- (void)sacHandleDesenseNetworkConfig:(id)config;
- (void)sendBBCameraState:(int)state state:(unsigned __int8)a4;
- (void)sendBBCoexSensorMessage:(int)message band:(unsigned __int8)band usecase:(unsigned __int8)usecase;
- (void)sendMessage:(unint64_t)message withArgs:(id)args;
- (void)sendMessage:(unint64_t)message withArgs:(id)args withExtraKey:(const char *)key andExtraValue:(id)value;
- (void)sendMessageToAriDriver:(unint64_t)driver withArgs:(id)args withExtraKey:(const char *)key andExtraValue:(id)value;
- (void)sendMessageToMipcDriver:(unint64_t)driver withArgs:(id)args withExtraKey:(const char *)key andExtraValue:(id)value;
- (void)setAllCriticalCarriers;
- (void)setAllPolicies;
- (void)setAntBlockingParams;
- (void)setClientAntBlockingParams;
- (void)setClientAntBlockingParams22;
- (void)setCriticalCarrier:(unint64_t)carrier forCarrierId:(unint64_t)id forTech:(unint64_t)tech;
- (void)setEnhancedScanFrequencyTableWithBand:(id)band RATs:(id)ts Frequency:(id)frequency;
- (void)setGpsBandInfoToBB:(BOOL)b l5Enabled:(BOOL)enabled btA2DPEnabled:(BOOL)pEnabled l5Level:(unint64_t)level;
- (void)setLAACoexConfig:(int)config;
- (void)setNetworkConfigOfInterest;
- (void)setRC1Duration:(unint64_t)duration;
- (void)setScanFrequencyBandFilter:(id)filter;
- (void)setTxAntMapInHouseBB25A;
- (void)setWci2TxAntMap;
- (void)setWci2TxAntMapBB21;
- (void)setWci2TxAntMapBB22;
- (void)submitAWDMetricsforNetworkConfiguration;
- (void)updateBBRC1Params:(BOOL)params channel:(unint64_t)channel duration:(unint64_t)duration priority:(unsigned int)priority;
- (void)updateControllerTxPower:(int64_t)power;
- (void)updateWCI2CoexPolicy:(unint64_t)policy;
- (void)updateWCI2TxPower:(int64_t)power;
- (void)updateWatchAntennaPref:(int)pref watchAntPref:(int)antPref;
- (void)updateWiFiStatusCenterFreq:(unint64_t)freq bandwidth:(unint64_t)bandwidth txPower:(unint64_t)power;
@end

@implementation WCM_CellularController

- (void)setAllPolicies
{
  v3 = +[WCM_PolicyManager singleton];
  platformManager = [v3 platformManager];
  v5 = xpc_dictionary_create(0, 0, 0);
  wci2CoexPolicyBitmap = [(WCM_CellularController *)self wci2CoexPolicyBitmap];
  wcmCellularWCI2PlatformPolicyBitmap = [platformManager wcmCellularWCI2PlatformPolicyBitmap];
  if (((wcmCellularWCI2PlatformPolicyBitmap | wci2CoexPolicyBitmap) & 0x1000) != 0)
  {
    v8 = (wcmCellularWCI2PlatformPolicyBitmap | wci2CoexPolicyBitmap) & 0xFFFFFFFFFFFFFFEFLL;
  }

  else
  {
    v8 = wcmCellularWCI2PlatformPolicyBitmap | wci2CoexPolicyBitmap;
  }

  if (([objc_msgSend(v3 "activeCoexFeatures")] & 1) != 0 || objc_msgSend(objc_msgSend(v3, "activeCoexFeatures"), "containsObject:", @"BB_POLICY_CONFIG_SUPPORT"))
  {
    v8 = [(WCM_CellularController *)self updatePolicyForBB20:v8];
    if ([objc_msgSend(v3 "activeCoexFeatures")])
    {
      [WCM_Logging logLevel:2 message:@"BB21: Turning off TX ACTIVE policy in BB21 platforms"];
      v8 &= ~2uLL;
    }
  }

  [WCM_Logging logLevel:1 message:@"clkAlgnTDDFreqCheck: The final wci2CoexPolicyBitmap from WRM to CommCentr is wci2CoexPolicyBitmap= 0x%llx.", v8];
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_Policy", v8);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_PowerThreshold", [objc_msgSend(platformManager "wcmCellularWCI2ModePowerThreshold")]);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_RB_Threshold", [(WCM_CellularController *)self rbThreshold]);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_LTE_TxDenialThreshold", [objc_msgSend(platformManager "wcmCellularWCI2ModeLTETxDenial")]);
  xpc_dictionary_set_int64(v5, "kWCMCellularSetWCI2Mode_MaxAllowedFrameDenials", [objc_msgSend(platformManager "wcmCellularWCI2ModeMaxAllowedFrameDenials")]);
  xpc_dictionary_set_int64(v5, "kWCMCellularSetWCI2Mode_FrameDenialWindow", [objc_msgSend(platformManager "wcmCellularWCI2ModeFrameDenialWindow")]);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_APTTable", [objc_msgSend(platformManager "wcmCellularWCI2ModeAPTTable")]);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_ControllerTxPowerLimit", [(WCM_CellularController *)self controllerTxPowerLimit]);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_WCI2PowerLimit", [(WCM_CellularController *)self wci2TxPowerLimit]);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_LinkPathLossThreshold", [objc_msgSend(platformManager "wcmCellularWCI2ModeLinkPathLossThreshold")]);
  [objc_msgSend(platformManager "wcmCellularWCI2ModeRBFilerAlpha")];
  xpc_dictionary_set_double(v5, "kWCMCellularSetWCI2Mode_RBFilterAlpha", v9);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_FilterRBThreshold", [(WCM_CellularController *)self rbThreshold]);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_ControllerTxPowerLimitTO", [objc_msgSend(platformManager "wcmCellularWCI2ModeControllerTxPowerLimitTO")]);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_WCI2PowerLimitTO", [objc_msgSend(platformManager "wcmCellularWCI2ModeWCI2PowerLimitTO")]);
  xpc_dictionary_set_int64(v5, "kWCMCellularSetWCI2Mode_TxPowerThresholdForAdvTxNotice", [objc_msgSend(platformManager "wcmCellularWCI2ModeTxPowerThresholdAdvTx")]);
  xpc_dictionary_set_int64(v5, "kWCMCellularSetWCI2Mode_RbThresholdForAdvTxNotice", [(WCM_CellularController *)self rbThreshold]);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_Controller_RB_Threshold", [objc_msgSend(platformManager "wcmCellularWCI2ModeControllerLTERBThreshold")]);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_Harq_nack_ratio_Threshold", [objc_msgSend(platformManager "wcmCellularWCI2ModeLTEHarqnackratioThreshold")]);
  xpc_dictionary_set_BOOL(v5, "kWCMCellularSetWCI2Mode_Controller_PowerLimiting_Enable", [objc_msgSend(platformManager "wcmCellularWCI2ModeControllerLTEPowerLimitingEnable")]);
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"ULCA setAllPolicies-1-ULCA critical bitmap %d", [v3 wcmCellularWCI2Mode_Ext_critical_ul_ca_bitmap]);
  if (([objc_msgSend(v3 "activeCoexFeatures")] & 1) != 0 || objc_msgSend(objc_msgSend(v3, "activeCoexFeatures"), "containsObject:", @"BB_POLICY_CONFIG_SUPPORT"))
  {
    [(WCM_CellularController *)self setAllCriticalCarriers];
    xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_CoexTech", -[WCM_CellularController getCoexTechForPolicy:](self, "getCoexTechForPolicy:", [v3 wcmCellular_CC1_Tech]));
    xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_NGC_TxDenialThresholdSlots", [objc_msgSend(platformManager "wcmCellularWCI2ModeLTETxDenial")]);
    xpc_dictionary_set_int64(v5, "kWCMCellularSetWCI2Mode_NGC_MaxAllowedSlotDenials", [objc_msgSend(platformManager "wcmCellularWCI2ModeMaxAllowedFrameDenials")]);
    xpc_dictionary_set_int64(v5, "kWCMCellularSetWCI2Mode_NGC_SlotsDenialWindow", [objc_msgSend(platformManager "wcmCellularWCI2ModeFrameDenialWindow")]);
  }

  else
  {
    xpc_dictionary_set_BOOL(v5, "kWCMCellularSetWCI2Mode_Ext_enabled", [v3 wcmCellularWCI2Mode_Ext_Enable]);
    xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Mode_Ext_critical_ul_ca_bitmap", [v3 wcmCellularWCI2Mode_Ext_critical_ul_ca_bitmap]);
  }

  [(WCM_CellularController *)self sendMessage:1205 withArgs:v5];

  xpc_release(v5);
}

- (void)setAllCriticalCarriers
{
  v3 = +[WCM_PolicyManager singleton];
  v4 = -[WCM_CellularController getCoexTechForPolicy:](self, "getCoexTechForPolicy:", [v3 wcmCellular_CC1_Tech]);
  v5 = -[WCM_CellularController getCoexTechForPolicy:](self, "getCoexTechForPolicy:", [v3 wcmCellular_CC2_Tech]);
  getActiveULCAConfig = [(WCM_CellularController *)self getActiveULCAConfig];
  activeSubId = [(WCM_CellularController *)self activeSubId];
  if ([v3 wcmCellularCCSetToBB])
  {

    [WCM_Logging logLevel:4 message:@"setAllCriticalCarriers: Critical carriers update done!"];
    return;
  }

  [WCM_Logging logLevel:4 message:@"setAllCriticalCarriers: Start to set critical carriers"];
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"setAllCriticalCarriers: previous CC1CarrierId = %llu, new CC1CarrierId = %llu", -[WCM_CellularController CC1CarrierId](self, "CC1CarrierId"), [v3 wcmCellularWCI2Mode_Ext_critical_ul_ca_bitmap]);
  [WCM_Logging logLevel:4 message:@"setAllCriticalCarriers: previous CC1Tech = %llu, new CC1Tech = %llu", [(WCM_CellularController *)self CC1Tech], v4];
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  if (getActiveULCAConfig)
  {
    v8 = &getActiveULCAConfig->var0[getActiveULCAConfig->var2];
    var0 = v8->var0;
    var1 = v8->var1;
    var2 = v8->var2;
    var3 = v8->var3;
    v31 = *&v8->var4;
    v32 = *&v8->var6;
    v33 = *&v8->var8;
    v13 = &getActiveULCAConfig->var0[getActiveULCAConfig->var3];
    v14 = v13->var0;
    v15 = v13->var1;
    v16 = v13->var2;
    v17 = v13->var3;
    v30 = *&v13->var8;
    v28 = *&v13->var4;
    v29 = *&v13->var6;
  }

  else
  {
    var0 = 0.0;
    var1 = 0.0;
    var2 = 0.0;
    var3 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
  }

  v18 = &unk_1002B7F00 + 72 * activeSubId;
  [WCM_Logging logLevel:4 message:@"setAllCriticalCarriers: previous CC1Freq UL/DL = %f/%f, new CC1Freq UL/DL = %f/%f", *v18, *(v18 + 2), *&var0, *&var2];
  cC1CarrierId = [(WCM_CellularController *)self CC1CarrierId];
  v20 = cC1CarrierId != [v3 wcmCellularWCI2Mode_Ext_critical_ul_ca_bitmap] || -[WCM_CellularController CC1Tech](self, "CC1Tech") != v4;
  if ([objc_msgSend(v3 "activeCoexFeatures")])
  {
    if (*(v18 + 2) == var2 && *(v18 + 3) == var3 && *v18 == var0)
    {
      if (var2 != 0.0 && *(v18 + 1) != var1)
      {
        goto LABEL_16;
      }
    }

    else if (var2 != 0.0)
    {
LABEL_16:
      *v18 = var0;
      *(v18 + 1) = var1;
      *(v18 + 2) = var2;
      *(v18 + 3) = var3;
      *(v18 + 2) = v31;
      *(v18 + 3) = v32;
      *(v18 + 8) = v33;
LABEL_18:
      -[WCM_CellularController setCriticalCarrier:forCarrierId:forTech:](self, "setCriticalCarrier:forCarrierId:forTech:", 1217, [v3 wcmCellularWCI2Mode_Ext_critical_ul_ca_bitmap], v4);
      -[WCM_CellularController setCC1CarrierId:](self, "setCC1CarrierId:", [v3 wcmCellularWCI2Mode_Ext_critical_ul_ca_bitmap]);
      [(WCM_CellularController *)self setCC1Tech:v4];
      v21 = 1;
      goto LABEL_23;
    }

    *v18 = var0;
    *(v18 + 1) = var1;
    *(v18 + 2) = var2;
    *(v18 + 3) = var3;
    *(v18 + 2) = v31;
    *(v18 + 3) = v32;
    *(v18 + 8) = v33;
    if (v20)
    {
      goto LABEL_18;
    }
  }

  else if (v20)
  {
    goto LABEL_18;
  }

  [WCM_Logging logLevel:4 message:@"setAllCriticalCarriers: no change in CC1, skip CC1 update"];
  v21 = 0;
LABEL_23:
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 4, @"setAllCriticalCarriers: previous CC2CarrierId = %llu, new CC2CarrierId = %llu", -[WCM_CellularController CC2CarrierId](self, "CC2CarrierId"), [v3 wcmCellularWCI2Mode_CC2]);
  [WCM_Logging logLevel:4 message:@"setAllCriticalCarriers: previous CC2Tech = %llu, new CC2Tech = %llu", [(WCM_CellularController *)self CC2Tech], v5];
  v22 = &unk_1002B7F90 + 72 * activeSubId;
  [WCM_Logging logLevel:4 message:@"setAllCriticalCarriers: previous CC2Freq UL/DL = %f/%f, new CC2Freq UL/DL = %f/%f", *v22, *(v22 + 2), *&v14, *&v16];
  cC2CarrierId = [(WCM_CellularController *)self CC2CarrierId];
  v24 = cC2CarrierId != [v3 wcmCellularWCI2Mode_CC2] || -[WCM_CellularController CC2Tech](self, "CC2Tech") != v5;
  if ([objc_msgSend(v3 "activeCoexFeatures")])
  {
    if ((*(v22 + 2) != v16 || *(v22 + 3) != v17 || *v22 != v14 || *(v22 + 1) != v15) && v16 != 0.0)
    {
      *v22 = v14;
      *(v22 + 1) = v15;
      *(v22 + 2) = v16;
      *(v22 + 3) = v17;
      *(v22 + 2) = v28;
      *(v22 + 3) = v29;
      *(v22 + 8) = v30;
LABEL_34:
      -[WCM_CellularController setCriticalCarrier:forCarrierId:forTech:](self, "setCriticalCarrier:forCarrierId:forTech:", 1218, [v3 wcmCellularWCI2Mode_CC2], v5);
      -[WCM_CellularController setCC2CarrierId:](self, "setCC2CarrierId:", [v3 wcmCellularWCI2Mode_CC2]);
      [(WCM_CellularController *)self setCC2Tech:v5];
      v25 = 1;
      goto LABEL_37;
    }

    *v22 = v14;
    *(v22 + 1) = v15;
    *(v22 + 2) = v16;
    *(v22 + 3) = v17;
    *(v22 + 2) = v28;
    *(v22 + 3) = v29;
    *(v22 + 8) = v30;
    if (v24)
    {
      goto LABEL_34;
    }
  }

  else if (v24)
  {
    goto LABEL_34;
  }

  [WCM_Logging logLevel:4 message:@"setAllCriticalCarriers: no change in CC2, skip CC2 update"];
  v25 = 0;
LABEL_37:
  v26 = [objc_msgSend(v3 "activeCoexFeatures")];
  if ((v21 | v25) == 1 && v26)
  {
    v27 = xpc_dictionary_create(0, 0, 0);
    [(WCM_CellularController *)self sendMessage:1235 withArgs:v27];
    xpc_release(v27);
  }

  [v3 setWcmCellularCCSetToBB:1];
}

- (unint64_t)subSelector
{
  v3 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
  if (v3)
  {
    getUserDataPreferredSlot = [v3 getUserDataPreferredSlot];
    [WCM_Logging logLevel:2 message:@"BB20 subSelector  active sub %d ", getUserDataPreferredSlot];
  }

  else
  {
    getUserDataPreferredSlot = 1;
  }

  v5 = *(&self->_cellularInstance0.frameOffset + 4);
  v6 = *(&self->_cellularInstance1.frameOffset + 4);
  v10 = 0x100010000000101;
  if (getUserDataPreferredSlot == 1)
  {
    v7 = (&v10 + 4);
  }

  else
  {
    if (getUserDataPreferredSlot != 2)
    {
      v8 = 0;
      goto LABEL_10;
    }

    v7 = &v10;
  }

  v8 = *(v7 + 2 * (v5 != 0.0) + (v6 != 0.0));
LABEL_10:
  [WCM_Logging logLevel:2 message:@"BB20 subSelector rrc states Sub0=%d Sub1=%d, selected sub %llu", v5 != 0.0, v6 != 0.0, v8, v10];
  return v8;
}

- (void)submitAWDMetricsforNetworkConfiguration
{
  v3 = 20;
  if ([(WCM_CellularController *)self activeSubId])
  {
    v3 = 2764;
  }

  v4 = +[WRM_MetricsService getSingleton];
  v5 = v4;
  if (v4)
  {
    [v4 initLTECoexMetrics];
  }

  getLTECoexMetrics = [v5 getLTECoexMetrics];
  if (getLTECoexMetrics)
  {
    v7 = (self + v3);
    v8 = (getLTECoexMetrics + 20);
    *(getLTECoexMetrics + 24) = 0u;
    getLTECoexMetrics[20] = 0;
    *(getLTECoexMetrics + 40) = 0u;
    if (LODWORD(v7[153].f64[0]) >= 2)
    {
      v11 = BYTE4(v7[168].f64[0]);
      *v8 = v11;
      v15.val[1] = vmovn_s64(vcvtq_u64_f64(v7[10]));
      v15.val[0] = vmovn_s64(vcvtq_u64_f64(v7[9]));
      v9 = (getLTECoexMetrics + 24);
      vst2_f32(v9, v15);
      if (v11 == 1)
      {
        v12 = (v7 + 72 * SHIDWORD(v7[153].f64[0]) + 144);
        v16.val[1] = vmovn_s64(vcvtq_u64_f64(v12[1]));
        v16.val[0] = vmovn_s64(vcvtq_u64_f64(*v12));
        v10 = (getLTECoexMetrics + 40);
        vst2_f32(v10, v16);
      }
    }

    if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
    {
      v13 = +[WCM_PolicyManager singleton];
      LODWORD(v14) = *(v8 + 8);
      [v13 wRMCACoexSubmit_ULCACoexStates:*v8 ULCAPrimaryCarrierULFreq:*(v8 + 1) ULCAPrimaryCarrierDLFreq:*(v8 + 2) ULCAPrimaryCarrierULBW:*(v8 + 3) ULCAPrimaryCarrierDLBW:*(v8 + 4) ULCACriticalCarrierULFreq:*(v8 + 5) ULCACriticalCarrierDLFreq:*(v8 + 3) ULCACriticalCarrierULBW:v14 ULCACriticalCarrierDLBW:?];
    }
  }
}

- (BOOL)clkAlgnTDDFreqCheck
{
  tddBand = [(WCM_CellularController *)self tddBand];
  if (tddBand)
  {
    [(WCM_CellularController *)self ulCenterFreqWiFiVictim];
    v5 = v4;
    [(WCM_CellularController *)self ulBandwidthWiFiVictim];
    v7 = v6;
    [(WCM_CellularController *)self ulCenterFreqCellVictim];
    v9 = v8;
    [(WCM_CellularController *)self ulBandwidthCellVictim];
    v11 = v10;
    [(WCM_CellularController *)self ulCenterFreq];
    v13 = v12;
    [(WCM_CellularController *)self ulBandwidth];
    [WCM_Logging logLevel:4 message:@"clkAlgnTDDFreqCheck: ulCenterFreqWiFiVictim=%f, ulBandwidthWiFiVictim=%f, ulCenterFreqCellVictim=%f, ulBandwidthCellVictim=%f, ulCenterFreq=%f, ulBandwidth=%f.", v5, v7, v9, v11, v13, v14];
    [(WCM_CellularController *)self ulCenterFreqWiFiVictim];
    v16 = v15;
    [(WCM_CellularController *)self ulBandwidthWiFiVictim];
    if (v16 + v17 * 0.5 <= 2370.0 || ([(WCM_CellularController *)self ulCenterFreqWiFiVictim], v19 = v18, [(WCM_CellularController *)self ulBandwidthWiFiVictim], v19 + v20 * -0.5 >= 2400.0))
    {
      [(WCM_CellularController *)self ulCenterFreqWiFiVictim];
      v33 = v32;
      [(WCM_CellularController *)self ulBandwidthWiFiVictim];
      if (v33 + v34 * 0.5 <= 2496.0 || ([(WCM_CellularController *)self ulCenterFreqWiFiVictim], v36 = v35, [(WCM_CellularController *)self ulBandwidthWiFiVictim], v36 + v37 * -0.5 >= 2506.0))
      {
        [WCM_Logging logLevel:4 message:@"clkAlgnTDDFreqCheck: Neither B40b nor B41A1. Return False."];
        LOBYTE(tddBand) = 0;
        return tddBand;
      }

      [(WCM_CellularController *)self ulCenterFreqWiFiVictim];
      v39 = v38;
      [(WCM_CellularController *)self ulBandwidthWiFiVictim];
      v41 = v40;
      [(WCM_CellularController *)self ulCenterFreqCellVictim];
      v43 = v42;
      [(WCM_CellularController *)self ulBandwidthCellVictim];
      v45 = v44;
      [(WCM_CellularController *)self ulCenterFreq];
      v47 = v46;
      [(WCM_CellularController *)self ulBandwidth];
      [WCM_Logging logLevel:4 message:@"clkAlgnTDDFreqCheck: ulCenterFreqWiFiVictim=%f, ulBandwidthWiFiVictim=%f, ulCenterFreqCellVictim=%f, ulBandwidthCellVictim=%f, ulCenterFreq=%f, ulBandwidth=%f, Band41a1 (2496 - 2506)MHz identified.", v39, v41, v43, v45, v47, v48];
    }

    else
    {
      [(WCM_CellularController *)self ulCenterFreqWiFiVictim];
      v22 = v21;
      [(WCM_CellularController *)self ulBandwidthWiFiVictim];
      v24 = v23;
      [(WCM_CellularController *)self ulCenterFreqCellVictim];
      v26 = v25;
      [(WCM_CellularController *)self ulBandwidthCellVictim];
      v28 = v27;
      [(WCM_CellularController *)self ulCenterFreq];
      v30 = v29;
      [(WCM_CellularController *)self ulBandwidth];
      [WCM_Logging logLevel:4 message:@"clkAlgnTDDFreqCheck: ulCenterFreqWiFiVictim=%f, ulBandwidthWiFiVictim=%f, ulCenterFreqCellVictim=%f, ulBandwidthCellVictim=%f, ulCenterFreq=%f, ulBandwidth=%f, Band40b (2370 - 2400)MHz identified.", v22, v24, v26, v28, v30, v31];
    }

    LOBYTE(tddBand) = 1;
  }

  return tddBand;
}

- (WCM_CellularController)init
{
  v5.receiver = self;
  v5.super_class = WCM_CellularController;
  v2 = [(WCM_Controller *)&v5 init];
  v3 = v2;
  if (v2)
  {
    bzero(&v2->super.mProcessId + 1, 0xAB8uLL);
    bzero(&v3->_cellularInstance0.cellBandInfo + 1, 0xAB8uLL);
    HIDWORD(v3->_cellularInstance0.cachedULBandwidth) = 127;
    HIDWORD(v3->_cellularInstance1.cachedULBandwidth) = 127;
    *(&v3->_wifiTxPowerdBm + 4) = (&v3->super.mProcessId + 1);
    *(&v3->_cellularInstance1.cellBandInfo + 1) = -1;
    v3->_sensorInfo.band[0] = -1;
  }

  v3->_sensorInfo.usecase[2] = 1;
  v3->_sensorInfo.usecase[3] = 1;
  v3->_sensorInfo.usecase[4] = 0;
  [(WCM_CellularController *)v3 setFastChargingHystersisTimer:0];
  [(WCM_CellularController *)v3 setBaseBandEnabledProtectionTimer:0];
  return v3;
}

- (void)dealloc
{
  if ([(WCM_CellularController *)self fastChargingHystersisTimer])
  {
    [(NSTimer *)[(WCM_CellularController *)self fastChargingHystersisTimer] invalidate];
    [(WCM_CellularController *)self setFastChargingHystersisTimer:0];
  }

  if ([(WCM_CellularController *)self baseBandEnabledProtectionTimer])
  {
    [(NSTimer *)[(WCM_CellularController *)self baseBandEnabledProtectionTimer] invalidate];
    [(WCM_CellularController *)self setBaseBandEnabledProtectionTimer:0];
  }

  v3.receiver = self;
  v3.super_class = WCM_CellularController;
  [(WCM_Controller *)&v3 dealloc];
}

- (void)sendMessageToMipcDriver:(unint64_t)driver withArgs:(id)args withExtraKey:(const char *)key andExtraValue:(id)value
{
  *keys = *off_1002413F0;
  v12 = "kSubId";
  values[0] = xpc_uint64_create(driver);
  values[1] = args;
  values[2] = value;
  v9 = xpc_dictionary_create(keys, values, 3uLL);
  [WCM_Logging logLevel:3 message:@"Sending messageId(%lld) to WCM_MipcCoexCommandDriver %@", driver, v9];
  xpc_release(values[0]);
  xpc_release(v9);
}

- (void)sendMessageToAriDriver:(unint64_t)driver withArgs:(id)args withExtraKey:(const char *)key andExtraValue:(id)value
{
  *keys = *off_1002413F0;
  v13 = "kSubId";
  values[0] = xpc_uint64_create(driver);
  values[1] = args;
  values[2] = value;
  v9 = xpc_dictionary_create(keys, values, 3uLL);
  [WCM_Logging logLevel:3 message:@"Sending messageId(%lld) to WCM_AriCoexCommandDriver %@", driver, v9];
  v10 = +[WCM_AriCoexCommandDriver singleton];
  if (v10)
  {
    [v10 handleEvent:v9];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Sending messageId to WCM_AriCoexCommandDriver failed. ARI Coex Driver does not exist"];
  }

  xpc_release(values[0]);
  xpc_release(v9);
}

- (void)sendMessage:(unint64_t)message withArgs:(id)args
{
  v7 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v8 = xpc_uint64_create([(WCM_CellularController *)self activeSubId]);
  if (v7)
  {
    [(WCM_CellularController *)self sendMessageToAriDriver:message withArgs:args withExtraKey:"kSubId" andExtraValue:v8];
  }

  else
  {
    [(WCM_CellularController *)self sendMessage:message withArgs:args withExtraKey:"kSubId" andExtraValue:v8];
  }

  xpc_release(v8);
}

- (void)sendMessage:(unint64_t)message withArgs:(id)args withExtraKey:(const char *)key andExtraValue:(id)value
{
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {

    [(WCM_CellularController *)self sendMessageToAriDriver:message withArgs:args withExtraKey:"kSubId" andExtraValue:value];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WCM_CellularController;
    [(WCM_Controller *)&v11 sendMessage:message withArgs:args withExtraKey:key andExtraValue:value];
  }
}

- (WCM_CellularController)initWithConnection:(id)connection processId:(int)id
{
  v6.receiver = self;
  v6.super_class = WCM_CellularController;
  [(WCM_Controller *)&v6 initWithConnection:connection processId:*&id];
  return [(WCM_CellularController *)self handlePowerState:1];
}

- (void)handlePowerState:(BOOL)state
{
  if (state)
  {
    v4 = +[WCM_PolicyManager singleton];
    platformManager = [v4 platformManager];
    -[WCM_CellularController setWci2TxPowerLimit:](self, "setWci2TxPowerLimit:", [objc_msgSend(platformManager "wcmCellularWCI2ModeLTEMaxTxPowerLow")]);
    -[WCM_CellularController setControllerTxPowerLimit:](self, "setControllerTxPowerLimit:", [objc_msgSend(platformManager "wcmCellularWCI2ModeLTEMaxTxPowerHigh")]);
    -[WCM_CellularController setRbThreshold:](self, "setRbThreshold:", [objc_msgSend(platformManager "wcmCellularWCI2ModeRBThresholdHigh")]);
    [WCM_Logging logLevel:4 message:@"DLDebug_ updateGPSStateBit function called by handlePowerState with input policy as zero."];
    [(WCM_CellularController *)self setWci2CoexPolicyBitmap:[(WCM_CellularController *)self updateGPSStateBit:0]];
    [(WCM_CellularController *)self setLteCDRXWiFiTDD:0];
    [(WCM_CellularController *)self setWifiCenterFreqMHz:0];
    [(WCM_CellularController *)self setWifiBandwidthMHz:0];
    [(WCM_CellularController *)self setWifiTxPowerdBm:0];
    [(WCM_CellularController *)self setWatchAntPrefBand:7];
    [(WCM_CellularController *)self setWatchAntPref:0];
    [(WCM_CellularController *)self setRc1priority:8];
    [(WCM_CellularController *)self setRc1duration:0];
    [(WCM_CellularController *)self setCC1CarrierId:0];
    [(WCM_CellularController *)self setCC2CarrierId:0];
    [(WCM_CellularController *)self setCC1Tech:0];
    [(WCM_CellularController *)self setCC2Tech:0];
    [(WCM_CellularController *)self setAllPolicies];
    [(WCM_CellularController *)self setNetworkConfigOfInterest];
    if ([objc_msgSend(v4 "activeCoexFeatures")])
    {
      if ([platformManager wcmCellularScanProtectionCellBands] && objc_msgSend(objc_msgSend(platformManager, "wcmCellularScanProtectionCellBands"), "count"))
      {
        -[WCM_CellularController setEnhancedScanFrequencyTableWithBand:RATs:Frequency:](self, "setEnhancedScanFrequencyTableWithBand:RATs:Frequency:", [platformManager wcmCellularScanProtectionCellBands], objc_msgSend(platformManager, "wcmCellularScanProtectionCellRats"), objc_msgSend(platformManager, "wcmCellularScanProtectionCellFrequencies"));
      }

      else
      {
        -[WCM_CellularController setScanFrequencyBandFilter:](self, "setScanFrequencyBandFilter:", [platformManager wcmCellularScanProtectionCellFrequencies]);
      }
    }

    if ([objc_msgSend(v4 "activeCoexFeatures")])
    {
      if ([objc_msgSend(v4 "activeCoexFeatures")] && (v7 = objc_msgSend(v4, "rcu1Controller")) != 0)
      {
        -[WCM_CellularController updateBBRC1Params:channel:duration:priority:](self, "updateBBRC1Params:channel:duration:priority:", [v7 mRCU1PowerOn], objc_msgSend(v7, "mRCU1ChannelNum"), objc_msgSend(v7, "mRCU1OnDuration"), objc_msgSend(v7, "mRCU1UseCaseNum"));
      }

      else
      {
        [(WCM_CellularController *)self setLAACoexConfig:4];
      }
    }

    if ([objc_msgSend(v4 "activeCoexFeatures")])
    {
      wifiController = [v4 wifiController];
      if (wifiController)
      {
        v9 = wifiController;
        if ([v4 audioBuiltInReceiver])
        {
          headTxPowerCapdBm = [v9 headTxPowerCapdBm];
        }

        else
        {
          headTxPowerCapdBm = [v9 bodyTxPowerCapdBm];
        }

        -[WCM_CellularController updateWiFiStatusCenterFreq:bandwidth:txPower:](self, "updateWiFiStatusCenterFreq:bandwidth:txPower:", [v9 channelCenterFreqMHz], objc_msgSend(v9, "channelBandwidthMHz"), headTxPowerCapdBm);
      }
    }

    [(WCM_CellularController *)self sendMessage:1200 withArgs:0];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    if (([objc_msgSend(v4 "activeCoexFeatures")] & 1) != 0 || objc_msgSend(objc_msgSend(v4, "activeCoexFeatures"), "containsObject:", @"BB_POLICY_CONFIG_SUPPORT"))
    {
      if ([objc_msgSend(v4 "activeCoexFeatures")])
      {
        [(WCM_CellularController *)self setWci2TxAntMapBB22];
      }

      else if ([objc_msgSend(v4 "activeCoexFeatures")])
      {
        [(WCM_CellularController *)self setWci2TxAntMapBB21];
      }

      else if ([objc_msgSend(v4 "activeCoexFeatures")])
      {
        [(WCM_CellularController *)self setTxAntMapInHouseBB25A];
      }

      else
      {
        [(WCM_CellularController *)self setWci2TxAntMap];
      }

      if ([objc_msgSend(v4 "activeCoexFeatures")])
      {
        [(WCM_CellularController *)self setClientAntBlockingParams];
      }

      else if ([objc_msgSend(v4 "activeCoexFeatures")])
      {
        [(WCM_CellularController *)self setClientAntBlockingParams22];
      }

      else if ([objc_msgSend(v4 "activeCoexFeatures")])
      {
        [WCM_Logging logLevel:4 message:@"Handle cellular Power State: Calling mavAntPolicy sendMavConfigItems"]);
        [objc_msgSend(v4 "mavAntPolicy")];
      }

      else
      {
        [(WCM_CellularController *)self setAntBlockingParams];
      }
    }

    if ([objc_msgSend(v4 "activeCoexFeatures")])
    {
      v11 = 0;
      v12 = &self->_cellularInstance1.cellBandInfo + 1;
      do
      {
        v13 = *(v12 + v11);
        if (*(v12 + v11) && v13 != 255)
        {
          v14 = *(v12 + v11 + 5);
          *(v12 + v11) = -1;
          [(WCM_CellularController *)self sendBBCoexSensorMessage:v11 band:v13 usecase:v14];
        }

        ++v11;
      }

      while (v11 != 5);
    }

    if ([objc_msgSend(v4 "activeCoexFeatures")])
    {
      v15 = +[WCM_AriCoexCommandDriver singleton];
      if (v15)
      {
        v16 = v15;
        wrmPlatformId = [platformManager wrmPlatformId];
        wrmPlatformAntBlockPowerLimitPlistFile = [platformManager wrmPlatformAntBlockPowerLimitPlistFile];
        [WCM_Logging logLevel:3 message:@"Handle Power State: Configure antenna blocking policy for platformId(%llu)", wrmPlatformId];
        [v16 setAntennaBlockingPolicyForPlatformId:wrmPlatformId activeSubId:-[WCM_CellularController activeSubId](self AntBlockPowerLimitPlist:{"activeSubId"), wrmPlatformAntBlockPowerLimitPlistFile}];
      }

      else
      {
        +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"Handle Power State: Configure antenna blocking policy for platformId(%u) failed, ARI Driver is NULL", [platformManager wrmPlatformId]);
      }
    }

    if ([v4 cellularRc1PolicyManager])
    {
      [objc_msgSend(v4 "cellularRc1PolicyManager")];
    }

    if ([objc_msgSend(v4 "activeCoexFeatures")])
    {
      [WCM_Logging logLevel:4 message:@"HPCellular: Calling queryHPCellularInitialState after BB power on"];

      [v4 queryHPCellularInitialState];
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"CellularController: BB power off"];
    v6 = +[WCM_PolicyManager singleton];
    if (([objc_msgSend(v6 "activeCoexFeatures")] & 1) != 0 || objc_msgSend(objc_msgSend(v6, "activeCoexFeatures"), "containsObject:", @"UseWCMMipcDriver"))
    {
      bzero(&self->super.mProcessId + 1, 0xAB8uLL);

      bzero(&self->_cellularInstance0.cellBandInfo + 1, 0xAB8uLL);
    }
  }
}

- (void)handleMessage:(id)message
{
  uint64 = xpc_dictionary_get_uint64(message, "kMessageId");
  if (uint64 <= 303)
  {
    if (uint64 > 301)
    {
      if (uint64 != 302)
      {

        [(WCM_CellularController *)self handleThresholdEvent:message];
        return;
      }

      v6 = @"Just ignore WCMCellularLinkQuality for now";
LABEL_24:

      [WCM_Logging logLevel:3 message:v6];
      return;
    }

    if (uint64 == 300)
    {
LABEL_20:

      [(WCM_CellularController *)self handleNetworkConfig:message];
      return;
    }

    if (uint64 == 301)
    {

      [(WCM_CellularController *)self handleTxPower:message];
      return;
    }

LABEL_36:
    [WCM_Logging logLevel:0 message:@"Cellular Controller dropping message %llu", uint64];
    return;
  }

  if (uint64 <= 387)
  {
    if (uint64 == 304)
    {
      [WCM_Logging logLevel:0 message:@"BB Reset & Now Ready - Reset Coex Policies"];

      [(WCM_CellularController *)self handlePowerState:1];
      return;
    }

    if (uint64 == 305)
    {
      v6 = @"Just ignore WCMCellularScanFreqBandFilter for now";
      goto LABEL_24;
    }

    goto LABEL_36;
  }

  switch(uint64)
  {
    case 388:
      [WCM_Logging logLevel:3 message:@"FCharging Handle config message WCMCellularBBStateIndication"];

      [(WCM_CellularController *)self handleDesenseBBStateIndication:message];
      break;
    case 399:
      [WCM_Logging logLevel:3 message:@"FCharging Handle config message WCMCellular_DesenseNetworkConfiguration"];

      [(WCM_CellularController *)self handleDesenseNetworkConfig:message];
      break;
    case 2600:
      goto LABEL_20;
    default:
      goto LABEL_36;
  }
}

- (void)setCriticalCarrier:(unint64_t)carrier forCarrierId:(unint64_t)id forTech:(unint64_t)tech
{
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = +[WCM_PolicyManager singleton];
  xpc_dictionary_set_BOOL(v9, "kWCMCellularSetCC_Enable", [v10 wcmCellularWCI2Mode_Ext_Enable]);
  xpc_dictionary_set_uint64(v9, "kWCMCellularSetCC_CoexTech", tech);
  xpc_dictionary_set_uint64(v9, "kWCMCellularSetCC_CarrierId", id);
  if ([objc_msgSend(v10 "activeCoexFeatures")])
  {
    activeSubId = [(WCM_CellularController *)self activeSubId];
    v12 = &OBJC_IVAR___WCM_CellularController__cellularInstance1;
    if (!activeSubId)
    {
      v12 = &OBJC_IVAR___WCM_CellularController__cellularInstance0;
    }

    v13 = &self->_cellularInstance0.cachedULBandwidth + *v12;
    v14 = 32;
    while (*(v13 + 8) != id)
    {
      v13 += 72;
      if (!--v14)
      {
        v15 = 0.0;
        v16 = 0.0;
        v17 = 0.0;
        v18 = 0.0;
        goto LABEL_16;
      }
    }

    if (![objc_msgSend(v10 "activeCoexFeatures")])
    {
      goto LABEL_15;
    }

    v19 = [objc_msgSend(v10 "wifiController")];
    v20 = [objc_msgSend(v10 "wifiController")];
    if (carrier == 1217)
    {
      v21 = 40;
    }

    else
    {
      if (carrier != 1218)
      {
        goto LABEL_15;
      }

      v21 = 48;
    }

    v22 = *&v13[v21];
    v25 = 0.0;
    v26 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    if (v22)
    {
      [v22 cellFreqRangeWithIssueForCellDlLowFreq:&v25 cellDlHighFreq:&v23 cellUlLowFreq:*(v13 + 2) - *(v13 + 3) * 0.5 cellUlHighFreq:*(v13 + 2) + *(v13 + 3) * 0.5 wifiLowFreq:*v13 - *(v13 + 1) * 0.5 wifiHighFreq:*v13 + *(v13 + 1) * 0.5 cellTxIssueRange:(v19 - (v20 >> 1)) cellRxIssueRange:(v19 + (v20 >> 1))];
      v17 = v26;
      v18 = v25 + v26 * 0.5;
      v15 = v24;
      v16 = v23 + v24 * 0.5;
      [WCM_Logging logLevel:3 message:@"Critical carrier with partial frequency range: input critical carrier DL[%f, %f]MHz, UL[%f, %f]MHz", *(v13 + 2), *(v13 + 3), *v13, *(v13 + 1)];
      [WCM_Logging logLevel:3 message:@"Critical carrier with partial frequency range: input WiFi frequency [%u, %u]MHz", v19, v20];
      [WCM_Logging logLevel:3 message:@"Critical carrier with partial frequency range: output critical carrier DL[%f, %f]MHz, UL[%f, %f]MHz", *&v16, *&v15, *&v18, *&v17];
LABEL_16:
      xpc_dictionary_set_double(v9, "kWCMCellularSetCC_UplinkCenterFrequency", v18);
      xpc_dictionary_set_double(v9, "kWCMCellularSetCC_UplinkBandwidth", v17);
      xpc_dictionary_set_double(v9, "kWCMCellularSetCC_DownlinkCenterFrequency", v16);
      xpc_dictionary_set_double(v9, "kWCMCellularSetCC_DownlinkBandwidth", v15);
      goto LABEL_17;
    }

LABEL_15:
    v18 = *v13;
    v17 = *(v13 + 1);
    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    goto LABEL_16;
  }

LABEL_17:
  [(WCM_CellularController *)self sendMessage:carrier withArgs:v9];
  xpc_release(v9);
}

- (unint64_t)getCoexTechForPolicy:(unint64_t)policy
{
  if (policy <= 7)
  {
    if (policy == 1)
    {
      if ([(WCM_CellularController *)self activeSubId])
      {
        return 9;
      }

      else
      {
        return 0;
      }
    }

    if (policy == 2)
    {
      return 1;
    }

    if (policy != 4)
    {
      return 0;
    }

    v4 = [(WCM_CellularController *)self activeSubId]== 0;
    v5 = 6;
    v6 = 2;
LABEL_21:
    if (v4)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  if (policy > 31)
  {
    if (policy != 32)
    {
      if (policy == 64)
      {
        if ([(WCM_CellularController *)self activeSubId])
        {
          return 11;
        }

        else
        {
          return 10;
        }
      }

      return 0;
    }

    v4 = [(WCM_CellularController *)self activeSubId]== 0;
    v5 = 8;
    v6 = 5;
    goto LABEL_21;
  }

  if (policy != 8)
  {
    if (policy == 16)
    {
      return 4;
    }

    return 0;
  }

  return 3;
}

- (unint64_t)updatePolicyForBB20:(unint64_t)b20
{
  b20Copy = b20 & 0xFFFFFFFFFFFFEFCFLL | 0x30;
  if ((b20 & 0x1000) == 0)
  {
    b20Copy = b20;
  }

  if ((b20 & 0x200) != 0)
  {
    b20Copy &= 0xFFFFFFFFFFFFEDFFLL;
  }

  if ((b20 & 0x4000) != 0)
  {
    b20Copy &= 0xFFFFFFFFFFFFAFFFLL;
  }

  if ((b20 & 0x10000) != 0)
  {
    b20Copy &= 0xFFFFFFFFFFFEEFFFLL;
  }

  if ((b20 & 0x4000) != 0)
  {
    b20Copy &= ~0x4000uLL;
  }

  if ((b20 & 0x8000) != 0)
  {
    v4 = b20Copy & 0xFFFFFFFFFFFF7FFFLL;
  }

  else
  {
    v4 = b20Copy;
  }

  [WCM_Logging logLevel:2 message:@"BB20 Policy updated for bb20 0x%llx", v4];
  return v4;
}

- (void)updateWCI2CoexPolicy:(unint64_t)policy
{
  [WCM_Logging logLevel:4 message:@"updateWCI2CoexPolicy: updateGPSStateBit with input policy wci2CoexPolicyBitmap : 0x%llx.", policy];
  v5 = [(WCM_CellularController *)self updateGPSStateBit:policy];
  [WCM_Logging logLevel:4 message:@"updateWCI2CoexPolicy: updateFrameSyncBit with input policy wci2CoexPolicyBitmapGPSUpdated: 0x%llx.", v5];
  v6 = [(WCM_CellularController *)self updateFrameSyncBit:v5];
  if ([(WCM_CellularController *)self wci2CoexPolicyBitmap]!= v6)
  {
    [WCM_Logging logLevel:3 message:@"updateWCI2CoexPolicy: Updating WCI2 Policy from 0x%llx to 0x%llx", [(WCM_CellularController *)self wci2CoexPolicyBitmap], v6];
    [(WCM_CellularController *)self setWci2CoexPolicyBitmap:v6];
    [(WCM_CellularController *)self setAllPolicies];
  }

  [(WCM_CellularController *)self setAllCriticalCarriers];
}

- (unint64_t)updateFrameSyncBit:(unint64_t)bit
{
  v5 = +[WCM_PolicyManager singleton];
  v6 = bit & 1;
  [WCM_Logging logLevel:4 message:@"clkAlgnTDDFreqCheck: before updateFrameSyncBit, wci2CoexPolicyBitmap=0x%llx, FrameSyncBit=%lld", bit, v6];
  if ([objc_msgSend(v5 "activeCoexFeatures")])
  {
    btClkAlgnFlag = [(WCM_CellularController *)self btClkAlgnFlag];
    v6 = btClkAlgnFlag;
    bit = bit & 0xFFFFFFFFFFFFFFFELL | btClkAlgnFlag;
    [WCM_Logging logLevel:4 message:@"clkAlgnTDDFreqCheck: clkAlgnEnableFlag is %d.", btClkAlgnFlag];
  }

  [WCM_Logging logLevel:4 message:@"clkAlgnTDDFreqCheck: after updateFrameSyncBit, wci2CoexPolicyBitmap=0x%llx, FrameSyncBit=%lld", bit, v6];
  return bit;
}

- (unint64_t)updateGPSStateBit:(unint64_t)bit
{
  [WCM_Logging logLevel:3 message:@"DLDebug_ GPS State Always Set Feature --- updateGPSStateBit function called."];
  v5 = +[WCM_PolicyManager singleton];
  if ([objc_msgSend(v5 "activeCoexFeatures")] && objc_msgSend(objc_msgSend(v5, "activeCoexFeatures"), "containsObject:", @"AlwaysSetGPSState"))
  {
    gpsRadioActive = [v5 gpsRadioActive];
    wci2CoexPolicyBitmap = [(WCM_CellularController *)self wci2CoexPolicyBitmap];
    if (gpsRadioActive)
    {
      bit |= 0x8000uLL;
      [WCM_Logging logLevel:3 message:@"DLDebug_ GPS State Always Set Feature --- GPS Active with old bitmap 0x%llx, new bitmap 0x%llx", wci2CoexPolicyBitmap, bit];
    }

    else
    {
      bit &= ~0x8000uLL;
      [WCM_Logging logLevel:3 message:@"DLDebug_ GPS State Always Set Feature --- GPS inactive with old bitmap 0x%llx, new bitmap 0x%llx", wci2CoexPolicyBitmap, bit];
    }
  }

  else if ([objc_msgSend(v5 "activeCoexFeatures")] && objc_msgSend(v5, "gpsRadioActive"))
  {
    bit |= 0x8000uLL;
  }

  return bit;
}

- (void)updateWCI2TxPower:(int64_t)power
{
  v5 = xpc_dictionary_create(0, 0, 0);
  if ([(WCM_CellularController *)self wci2TxPowerLimit]!= power)
  {
    [WCM_Logging logLevel:3 message:@"Updating WCI2 Power limit to %lld", power];
    [(WCM_CellularController *)self setWci2TxPowerLimit:power];
    [(WCM_CellularController *)self setAllPolicies];
  }

  xpc_release(v5);
}

- (void)updateControllerTxPower:(int64_t)power
{
  if ([(WCM_CellularController *)self controllerTxPowerLimit]!= power)
  {
    [WCM_Logging logLevel:3 message:@"Updating Controller Power limit to %lld", power];
    [(WCM_CellularController *)self setControllerTxPowerLimit:power];

    [(WCM_CellularController *)self setAllPolicies];
  }
}

- (void)updateWiFiStatusCenterFreq:(unint64_t)freq bandwidth:(unint64_t)bandwidth txPower:(unint64_t)power
{
  if ([(WCM_CellularController *)self wifiCenterFreqMHz]== freq && [(WCM_CellularController *)self wifiBandwidthMHz]== bandwidth && [(WCM_CellularController *)self wifiTxPowerdBm]== power)
  {
    [WCM_Logging logLevel:3 message:@"Already set to centerFreqMhz(%ld) bandwidthMHz(%ld) txPowerdBm(%ld)", freq, bandwidth, power];
  }

  else
  {
    [WCM_Logging logLevel:5 message:@"Updating WiFi Status centerFreqMHz(%ld -> %ld) bandwidthMHz(%ld -> %ld) txPowerdBm(%ld -> %ld)", [(WCM_CellularController *)self wifiCenterFreqMHz], freq, [(WCM_CellularController *)self wifiBandwidthMHz], bandwidth, [(WCM_CellularController *)self wifiTxPowerdBm], power];
    [(WCM_CellularController *)self setWifiCenterFreqMHz:freq];
    [(WCM_CellularController *)self setWifiBandwidthMHz:bandwidth];
    [(WCM_CellularController *)self setWifiTxPowerdBm:power];
    if (!(bandwidth | freq | power))
    {
      [WCM_Logging logLevel:3 message:@"DLDebug_ CellularController is getting all 0s for WiFi Freq info."];
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v9, "WCMCellularSetWiFiStatus_CenterFrequency", freq);
    xpc_dictionary_set_uint64(v9, "WCMCellularSetWiFiStatus_ChannelBandwidth", bandwidth);
    xpc_dictionary_set_uint64(v9, "WCMCellularSetWiFiStatus_TxPower", power);
    [(WCM_CellularController *)self sendMessage:1210 withArgs:v9];

    xpc_release(v9);
  }
}

- (void)updateWatchAntennaPref:(int)pref watchAntPref:(int)antPref
{
  v4 = *&antPref;
  v5 = *&pref;
  [WCM_Logging logLevel:3 message:@"Updating watch antenna pref to cellular modem, coexBand %d, antenna %d", *&pref, *&antPref];
  if (v4)
  {
    if (v5)
    {
      if (v5 >= 3)
      {
        if ((v5 - 3) > 1)
        {
          return;
        }

        v7 = 2;
        v8 = 41;
      }

      else
      {
        v7 = 1;
        v8 = 40;
      }
    }

    else
    {
      v7 = 2;
      v8 = 7;
    }

    if ([(WCM_CellularController *)self watchAntPrefBand]== v5 && [(WCM_CellularController *)self watchAntPref]== v4)
    {
      [WCM_Logging logLevel:3 message:@"Already set watch antenna pref band(%ld) to antenna (%ld)", v5, v4];
    }

    else
    {
      [(WCM_CellularController *)self setWatchAntPrefBand:v5];
      [(WCM_CellularController *)self setWatchAntPref:v4];
      [WCM_Logging logLevel:3 message:@"Updating watch antenna pref to cellular modem, with antenna %d defaultAntPref %d", v4, v7];
      v9 = xpc_dictionary_create(0, 0, 0);
      v10 = xpc_array_create(0, 0);
      values = xpc_int64_create(v8);
      object = xpc_int64_create(v4);
      *keys = *off_100241408;
      v11 = xpc_dictionary_create(keys, &values, 2uLL);
      xpc_dictionary_set_uint64(v9, "WCMCellularSetFCM_BCM_Antenna_Switching_RAT", 3uLL);
      xpc_array_append_value(v10, v11);
      xpc_dictionary_set_value(v9, "WCMCellularSetFCM_BCM_Antenna_Switching_PortMapInformationSet", v10);
      [(WCM_CellularController *)self sendMessage:1212 withArgs:v9];
      xpc_release(v11);
      xpc_release(values);
      xpc_release(object);
      xpc_release(v10);
      xpc_release(v9);
    }
  }
}

- (void)updateBBRC1Params:(BOOL)params channel:(unint64_t)channel duration:(unint64_t)duration priority:(unsigned int)priority
{
  v7 = channel == 5;
  if (!v7 || !params)
  {
    duration = 0;
  }

  if (v7 && params)
  {
    priorityCopy = priority;
  }

  else
  {
    priorityCopy = 8;
  }

  if ([(WCM_CellularController *)self rc1duration]== duration)
  {
    [WCM_Logging logLevel:3 message:@"Already set rc1 duration to (%ld)", duration];
  }

  else
  {
    durationCopy = duration | 0x10000;
    if (priorityCopy != 8)
    {
      durationCopy = duration;
    }

    if ((priorityCopy & 2) != 0)
    {
      v11 = duration | 0x3200000;
    }

    else
    {
      v11 = durationCopy;
    }

    [(WCM_CellularController *)self setRC1Duration:v11];
  }

  if ([(WCM_CellularController *)self rc1priority]== priorityCopy)
  {
    [WCM_Logging logLevel:3 message:@"Already set LAA Params to rc1priority to  (%ld)", priorityCopy];
  }

  else
  {

    [(WCM_CellularController *)self setLAACoexConfig:priorityCopy];
  }
}

- (void)fastChargingHandler:(BOOL)handler
{
  handlerCopy = handler;
  v5 = &self->super.mProcessId + 1;
  v6 = *(&self->_cellularInstance0.ulBandwidth + 4);
  if (v6 > 0.0 && ([WCM_Logging logLevel:5 message:@"FCharging :- SUB%ld: Network Config UL(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf)  TDD ULDLConfig=%lld, SFF=%lld ULCP=%lld DLCP=%lld FrameOffset=%lld", 0, *(v5 + 3), *(v5 + 4), *&v6, *(v5 + 6), *(v5 + 11), *(v5 + 12), *v5, *(v5 + 1), *(v5 + 2)], v7 = *(v5 + 6) * 0.5, *(v5 + 5) + v7 <= 960.0))
  {
    [WCM_Logging logLevel:0 message:@"FCharging RRC state connected subid:%d -  [%d - frequency %lf, bandwidth %lf] ", 0, *(v5 + 5), *&v7];
    [WCM_Logging logLevel:0 message:@"FCharging Low band detected"];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(&self->_cellularInstance1.ulBandwidth + 4);
  if (v9 > 0.0)
  {
    [WCM_Logging logLevel:5 message:@"FCharging :- SUB%ld: Network Config UL(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf)  TDD ULDLConfig=%lld, SFF=%lld ULCP=%lld DLCP=%lld FrameOffset=%lld", 1, *(&self->_cellularInstance1.frameOffset + 4), *(&self->_cellularInstance1.ulCenterFreq + 4), *&v9, *(&self->_cellularInstance1.dlCenterFreq + 4), *(&self->_cellularInstance1.dlBandwidth2 + 4), *(&self->_cellularInstance1.tddULDLConfig + 4), *(&self->_cellularInstance0.cellBandInfo + 1), *(&self->_cellularInstance1.ulCPConfig + 4), *(&self->_cellularInstance1.dlCPConfig + 4)];
    v10 = *(&self->_cellularInstance1.dlCenterFreq + 4) * 0.5;
    if (*(&self->_cellularInstance1.ulBandwidth + 4) + v10 <= 960.0)
    {
      [WCM_Logging logLevel:0 message:@"FCharging RRC state connected subid:%d -  [%lf - frequency %lf, bandwidth %lf] ", &index, *(&self->_cellularInstance1.ulBandwidth + 4), *&v10];
      [WCM_Logging logLevel:0 message:@"FCharging Low band detected"];
      v11 = &self->_sensorInfo.usecase[2];
      self->_sensorInfo.usecase[2] = 1;
      goto LABEL_15;
    }
  }

  v11 = &self->_sensorInfo.usecase[2];
  self->_sensorInfo.usecase[2] = 1;
  if (v8)
  {
LABEL_15:
    v13 = @"FChargingCADebug_ FCharging connected in low band";
    goto LABEL_16;
  }

  v12 = v6 > 0.0 || !handlerCopy;
  if (v12 || v9 > 0.0)
  {
    goto LABEL_17;
  }

  v13 = @"FChargingCADebug_ FCharging Not attached but Low band detected in frequenies";
LABEL_16:
  [WCM_Logging logLevel:3 message:v13];
  *v11 = 0;
  self->_lteCDRXWiFiTDD = 1;
LABEL_17:
  [WCM_Logging logLevel:0 message:@"FCharging Call API to decide to start timer and set the charger value %d", *v11];

  [(WCM_CellularController *)self fastChargingStateChangeHandler];
}

- (void)fastChargingHystersisTimerHandler:(id)handler
{
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"FChargingCADebug_ FCharging:fastChargingHystersisTimerHandler - Expired %@", +[NSThread currentThread]);
  [(WCM_CellularController *)self setFastChargingHystersisTimer:0];
  v4 = self->_sensorInfo.usecase[2];

  [(WCM_CellularController *)self IOKIT_FastCharging_Iface_call:v4];
}

- (void)baseBandProtectionTimerHandler:(id)handler
{
  +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"FCharging - baseBandProtectionTimerHandler - Expired Thread Id %@", +[NSThread currentThread]);
  [(WCM_CellularController *)self setBaseBandEnabledProtectionTimer:0];

  [(WCM_CellularController *)self fastChargingStateChangeHandler];
}

- (void)sacExtractDesenseFreq:(id)freq message:(id)message
{
  if (freq)
  {
    if (message)
    {
      count = xpc_array_get_count(message);
      if (count >= 1)
      {
        v7 = count;
        for (i = 0; i != v7; ++i)
        {
          value = xpc_array_get_value(message, i);
          uint64 = xpc_dictionary_get_uint64(value, "kWCMCellular_DesenseNetworkConfiguration_CenterFreq");
          int64 = xpc_dictionary_get_int64(value, "kWCMCellular_DesenseNetworkConfiguration_Bandwidth");
          [WCM_Logging logLevel:3 message:@"   SAC Index %d - frequency %lld - bandwidth %lld ", i, uint64, int64];
          v12 = [[FreqRangeInfo alloc] initWithFreq:uint64 Bw:int64];
          [freq addObject:v12];
        }
      }
    }
  }
}

- (void)sacHandleDesenseNetworkConfig:(id)config
{
  v5 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  uint64 = xpc_dictionary_get_uint64(config, "kSubId");
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  isTestMode = [v5 isTestMode];
  if (isTestMode)
  {
LABEL_9:
    if ([v5 isTestMode])
    {
      v9 = @" SAC Manager is in FrequencyTool Test mode, ignoring desense network config message";
LABEL_12:

      [WCM_Logging logLevel:3 message:v9];
      return;
    }

LABEL_11:
    v9 = @" SAC Manager is not enabled, ignoring desense network config message";
    goto LABEL_12;
  }

  value = xpc_dictionary_get_value(config, "kMessageArgs");
  if (!value)
  {
    v9 = @"SAC - nwConfig is NULL return";
    goto LABEL_12;
  }

  v11 = value;
  [WCM_Logging logLevel:3 message:@"SAC - total count is %d", xpc_dictionary_get_count(value)];
  v12 = xpc_dictionary_get_value(v11, "kWCMCellular_DesenseFreqReport_UplinkFrequency");
  if (v12)
  {
    v13 = @"SAC kWCMCellular_DesenseFreqReport_UplinkFrequency found, set subId=%d to active";
  }

  else
  {
    v13 = @"SAC kWCMCellular_DesenseFreqReport_UplinkFrequency is NULL, set subId=%d to inactive";
  }

  [v5 sacSetCellularSubActiveState:v12 != 0 onSubId:uint64];
  [WCM_Logging logLevel:3 message:v13, uint64];
  v14 = xpc_dictionary_get_value(v11, "kWCMCellular_DesenseFreqReport_DownlinkFrequency");
  if (v14)
  {
    v15 = v14;
    [WCM_Logging logLevel:3 message:@"SAC kWCMCellular_DesenseFreqReport_DownlinkFrequency - total count is %d", xpc_array_get_count(v14)];
    v16 = objc_alloc_init(NSMutableArray);
    [(WCM_CellularController *)self sacExtractDesenseFreq:v16 message:v15];
    [v5 sacUpdateCellularDownlinkFreqInfo:v16 onSubId:uint64];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"SAC kWCMCellular_DesenseFreqReport_DownlinkFrequency is NULL"];
  }

  v17 = xpc_dictionary_get_value(v11, "kWCMCellular_DesenseFreqReport_SearchFrequency");
  if (v17)
  {
    v18 = v17;
    [WCM_Logging logLevel:3 message:@"SAC kWCMCellular_DesenseFreqReport_SearchFrequency - total count is %d", xpc_array_get_count(v17)];
    v19 = objc_alloc_init(NSMutableArray);
    [(WCM_CellularController *)self sacExtractDesenseFreq:v19 message:v18];
    [v5 sacUpdateCellularSearchFreqInfo:v19 onSubId:uint64];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"SAC kWCMCellular_DesenseFreqReport_SearchFrequency is NULL"];
  }

  v20 = xpc_dictionary_get_value(v11, "kWCMCellular_DesenseFreqReport_HoppingFrequency");
  if (v20)
  {
    v21 = v20;
    [WCM_Logging logLevel:3 message:@"SAC kWCMCellular_DesenseFreqReport_HoppingFrequency - total count is %d", xpc_array_get_count(v20)];
    v22 = objc_alloc_init(NSMutableArray);
    [(WCM_CellularController *)self sacExtractDesenseFreq:v22 message:v21];
    [v5 sacUpdateCellularHoppingFreqInfo:v22 onSubId:uint64];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"SAC kWCMCellular_DesenseFreqReport_HoppingFrequency is NULL"];
  }

  v23 = xpc_dictionary_get_value(v11, "kWCMCellular_DesenseFreqReport_NeighborFrequency");
  if (v23)
  {
    v24 = v23;
    [WCM_Logging logLevel:3 message:@"SAC kWCMCellular_DesenseFreqReport_NeighborFrequency - total count is %d", xpc_array_get_count(v23)];
    v25 = objc_alloc_init(NSMutableArray);
    [(WCM_CellularController *)self sacExtractDesenseFreq:v25 message:v24];
    [v5 sacUpdateCellularNeighborFreqInfo:v25 onSubId:uint64];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"SAC kWCMCellular_DesenseFreqReport_NeighborFrequency  is NULL"];
  }

  v26 = xpc_dictionary_get_value(v11, "kWCMCellular_DesenseFreqReport_RplmnFrequency");
  if (v26)
  {
    v27 = v26;
    [WCM_Logging logLevel:3 message:@"SAC kWCMCellular_DesenseFreqReport_RplmnFrequency - total count is %d", xpc_array_get_count(v26)];
    v28 = objc_alloc_init(NSMutableArray);
    [(WCM_CellularController *)self sacExtractDesenseFreq:v28 message:v27];
    [v5 sacUpdateCellularRPLMNFreqInfo:v28 onSubId:uint64];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"SAC kWCMCellular_DesenseFreqReport_RplmnFrequency  is NULL"];
  }

  [v5 sacReportCellularVictimFreqListOnTargetSac:1 action:1];
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {

    [v5 sacReportCellularVictimFreqListOnTargetSac:2 action:1];
  }
}

- (void)handleDesenseNetworkConfig:(id)config
{
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C1F68;
    block[3] = &unk_10023DC80;
    block[4] = self;
    block[5] = config;
    dispatch_async([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")], block);
  }

  if (![objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    v13 = @" FCharging controller not enabled ignoring config message";
LABEL_12:
    [WCM_Logging logLevel:3 message:v13];
    return;
  }

  value = xpc_dictionary_get_value(config, "kMessageArgs");
  if (!value)
  {
    v13 = @"FCharging - nwConfig is NULL return";
    goto LABEL_12;
  }

  v6 = value;
  selfCopy = self;
  [WCM_Logging logLevel:3 message:@"FCharging - total count is %ld", xpc_dictionary_get_count(value)];
  v7 = xpc_dictionary_get_value(v6, "kWCMCellular_DesenseFreqReport_UplinkFrequency");
  if (v7)
  {
    v8 = v7;
    count = xpc_array_get_count(v7);
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_UplinkFrequency - total count is %ld", count];
    if (count >= 1)
    {
      v10 = count + 1;
      do
      {
        v11 = xpc_array_get_value(v8, v10 - 2);
        uint64 = xpc_dictionary_get_uint64(v11, "kWCMCellular_DesenseNetworkConfiguration_CenterFreq");
        [WCM_Logging logLevel:3 message:@"FCharging Index %ld - frequency %lld - bandwidth %lld ", v10 - 2, uint64, xpc_dictionary_get_int64(v11, "kWCMCellular_DesenseNetworkConfiguration_Bandwidth")];
        --v10;
      }

      while (v10 > 1);
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_UplinkFrequency - nwConfig is NULL"];
  }

  v14 = xpc_dictionary_get_value(v6, "kWCMCellular_DesenseFreqReport_SearchFrequency");
  if (v14)
  {
    v15 = v14;
    v16 = xpc_array_get_count(v14);
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_SearchFrequency - total count is %ld", v16];
    if (v16 >= 1)
    {
      v17 = 0;
      v18 = v16 + 1;
      do
      {
        v19 = xpc_array_get_value(v15, v18 - 2);
        v20 = xpc_dictionary_get_uint64(v19, "kWCMCellular_DesenseNetworkConfiguration_CenterFreq");
        int64 = xpc_dictionary_get_int64(v19, "kWCMCellular_DesenseNetworkConfiguration_Bandwidth");
        [WCM_Logging logLevel:3 message:@"FCharging Index %ld - frequency %lld - bandwidth %lld ", v18 - 2, v20, int64];
        if (v20 / 1000000.0 + int64 / 1000000.0 * 0.5 <= 960.0)
        {
          [WCM_Logging logLevel:0 message:@"FCharging Low band Index %ld - frequency %lld - bandwidth %lld ", v18 - 2, v20, int64];
          [WCM_Logging logLevel:0 message:@"FCharging Low band detected"];
          v17 = 1;
        }

        --v18;
      }

      while (v18 > 1);
      goto LABEL_23;
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_SearchFrequency - nwConfig is NULL"];
  }

  v17 = 0;
LABEL_23:
  v22 = xpc_dictionary_get_value(v6, "kWCMCellular_DesenseFreqReport_HoppingFrequency");
  if (v22)
  {
    v23 = v22;
    v24 = xpc_array_get_count(v22);
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_HoppingFrequency - total count is %ld", v24];
    if (v24 >= 1)
    {
      v25 = v24 + 1;
      do
      {
        v26 = xpc_array_get_value(v23, v25 - 2);
        v27 = xpc_dictionary_get_uint64(v26, "kWCMCellular_DesenseNetworkConfiguration_CenterFreq");
        v28 = xpc_dictionary_get_int64(v26, "kWCMCellular_DesenseNetworkConfiguration_Bandwidth");
        [WCM_Logging logLevel:3 message:@"FCharging %ld - frequency %lld - bandwidth %lld ", v25 - 2, v27, v28];
        if (v27 / 1000000.0 + v28 / 1000000.0 * 0.5 <= 960.0)
        {
          [WCM_Logging logLevel:0 message:@"FCharging Low band Index %ld - frequency %lld - bandwidth %lld ", v25 - 2, v27, v28];
          [WCM_Logging logLevel:0 message:@"FCharging Low band detected"];
          v17 = 1;
        }

        --v25;
      }

      while (v25 > 1);
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_HoppingFrequency - nwConfig is NULL"];
  }

  v29 = xpc_dictionary_get_value(v6, "kWCMCellular_DesenseFreqReport_NeighborFrequency");
  if (v29)
  {
    v30 = v29;
    v31 = xpc_array_get_count(v29);
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_NeighborFrequency - total count is %ld", v31];
    if (v31 >= 1)
    {
      v32 = v31 + 1;
      do
      {
        v33 = xpc_array_get_value(v30, v32 - 2);
        v34 = xpc_dictionary_get_uint64(v33, "kWCMCellular_DesenseNetworkConfiguration_CenterFreq");
        v35 = xpc_dictionary_get_int64(v33, "kWCMCellular_DesenseNetworkConfiguration_Bandwidth");
        [WCM_Logging logLevel:3 message:@"FCharging Index %ld - frequency %lld - bandwidth %lld ", v32 - 2, v34, v35];
        if (v34 / 1000000.0 + v35 / 1000000.0 * 0.5 <= 960.0)
        {
          [WCM_Logging logLevel:0 message:@"FCharging Low band Index %ld - frequency %lld - bandwidth %lld ", v32 - 2, v34, v35];
          [WCM_Logging logLevel:0 message:@"FCharging Low band detected"];
          v17 = 1;
        }

        --v32;
      }

      while (v32 > 1);
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_NeighborFrequency - nwConfig is NULL"];
  }

  v36 = xpc_dictionary_get_value(v6, "kWCMCellular_DesenseFreqReport_RplmnFrequency");
  if (v36)
  {
    v37 = v36;
    v38 = xpc_array_get_count(v36);
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_RplmnFrequency - total count is %ld", v38];
    if (v38 >= 1)
    {
      v39 = v38 + 1;
      do
      {
        v40 = xpc_array_get_value(v37, v39 - 2);
        v41 = xpc_dictionary_get_uint64(v40, "kWCMCellular_DesenseNetworkConfiguration_CenterFreq");
        v42 = xpc_dictionary_get_int64(v40, "kWCMCellular_DesenseNetworkConfiguration_Bandwidth");
        [WCM_Logging logLevel:3 message:@"FCharging Index %ld - frequency %lld - bandwidth %lld ", v39 - 2, v41, v42];
        if (v41 / 1000000.0 + v42 / 1000000.0 * 0.5 <= 960.0)
        {
          [WCM_Logging logLevel:0 message:@"FCharging Low band Index %ld - frequency %lld - bandwidth %lld ", v39 - 2, v41, v42];
          [WCM_Logging logLevel:0 message:@"FCharging Low band detected"];
          v17 = 1;
        }

        --v39;
      }

      while (v39 > 1);
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_RplmnFrequency - nwConfig is NULL"];
  }

  v43 = xpc_dictionary_get_value(v6, "kWCMCellular_DesenseFreqReport_DownlinkFrequency");
  if (v43)
  {
    v44 = v43;
    v45 = xpc_array_get_count(v43);
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_DownlinkFrequency - total count is %ld", v45];
    if (v45 >= 1)
    {
      v46 = v45 + 1;
      do
      {
        v47 = xpc_array_get_value(v44, v46 - 2);
        v48 = xpc_dictionary_get_uint64(v47, "kWCMCellular_DesenseNetworkConfiguration_CenterFreq");
        v49 = xpc_dictionary_get_int64(v47, "kWCMCellular_DesenseNetworkConfiguration_Bandwidth");
        [WCM_Logging logLevel:3 message:@"FCharging Index %ld - frequency %lld - bandwidth %lld ", v46 - 2, v48, v49];
        [WCM_Logging logLevel:3 message:@"FCharging Frequency Upper bound  %lf ", v48 / 1000000.0 + v49 / 1000000.0 * 0.5];
        if (v48 / 1000000.0 + v49 / 1000000.0 * 0.5 <= 960.0)
        {
          [WCM_Logging logLevel:0 message:@"FCharging Low band Index %ld - frequency %lld - bandwidth %lld ", v46 - 2, v48, v49];
          [WCM_Logging logLevel:0 message:@"FCharging Low band detected"];
          v17 = 1;
        }

        --v46;
      }

      while (v46 > 1);
    }
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"FCharging kWCMCellular_DesenseFreqReport_DownlinkFrequency - nwConfig is NULL"];
  }

  selfCopy->_sensorInfo.usecase[4] = v17 & 1;
  [(WCM_CellularController *)selfCopy fastChargingHandler:?];
}

- (void)handleNetworkConfig:(id)config
{
  [WCM_Logging logLevel:3 message:@"WCM_CellularController handleNetworkConfig message %@", config];
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [(WCM_CellularController *)self handleNetworkConfig_bb20:config];
  }

  else
  {
    [(WCM_CellularController *)self handleNetworkConfig_legacy:config];
  }

  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [WCM_Logging logLevel:3 message:@" FCharging handleNetworkConfig Message recieved. low band in report %d", self->_sensorInfo.usecase[4]];
    v5 = self->_sensorInfo.usecase[4];

    [(WCM_CellularController *)self fastChargingHandler:v5];
  }
}

- (void)handleNetworkConfig_legacy:(id)config_legacy
{
  [WCM_Logging logLevel:3 message:@"handleNetworkConfig_legacy"];
  value = xpc_dictionary_get_value(config_legacy, "kMessageArgs");
  if (!value)
  {
    return;
  }

  v6 = value;
  v106 = +[WCM_PolicyManager singleton];
  v7 = &self->super.mProcessId + 1;
  if ([(WCM_CellularController *)self activeSubId])
  {
    v7 = (&self->_cellularInstance0.cellBandInfo + 1);
  }

  v8 = *(v7 + 3);
  v9 = *(v7 + 5);
  v100 = *(v7 + 4);
  v101 = *(v7 + 6);
  v10 = *(v7 + 7);
  v11 = *(v7 + 9);
  v98 = *(v7 + 8);
  v99 = *(v7 + 10);
  activeSubId = [(WCM_CellularController *)self activeSubId];
  v96 = *(v7 + 11);
  v97 = activeSubId;
  uint64 = xpc_dictionary_get_uint64(config_legacy, "kSubId");
  if (!xpc_dictionary_get_count(v6))
  {
    [WCM_Logging logLevel:3 message:@"SUB%llu: goes out of interested frequency bands", uint64];
  }

  v14 = &self->super.mProcessId + 1;
  if (uint64)
  {
    v14 = (&self->_cellularInstance0.cellBandInfo + 1);
  }

  *(v14 + 12) = 0;
  *(v14 + 1) = 0u;
  *(v14 + 5) = 0u;
  *(v14 + 4) = 0u;
  v112 = (v14 + 16);
  *(v14 + 3) = 0u;
  *(v14 + 2) = 0u;
  *(v14 + 3) = xpc_dictionary_get_int64(v6, "kWCMCellularNetworkConfiguration_ULBandInfo_CenterFreq");
  v113 = (v14 + 6);
  *(v14 + 4) = xpc_dictionary_get_double(v6, "kWCMCellularNetworkConfiguration_ULBandInfo_BandWidth");
  *(v14 + 5) = xpc_dictionary_get_int64(v6, "kWCMCellularNetworkConfiguration_DLBandInfo_CenterFreq");
  *(v14 + 6) = xpc_dictionary_get_double(v6, "kWCMCellularNetworkConfiguration_DLBandInfo_BandWidth");
  *(v14 + 11) = xpc_dictionary_get_int64(v6, "kWCMCellularNetworkConfiguration_TTDUL_DL");
  *(v14 + 12) = xpc_dictionary_get_int64(v6, "kWCMCellularNetworkConfiguration_SubFrameFormat");
  *(v14 + 2) = xpc_dictionary_get_int64(v6, "kWCMCellularNetworkConfiguration_FrameOffset");
  v111 = (v14 + 10);
  *(v14 + 52) = 0;
  v15 = +[WRM_MetricsService getSingleton];
  v16 = v15;
  if (v15)
  {
    [v15 initLTECoexMetrics];
  }

  getLTECoexMetrics = [v16 getLTECoexMetrics];
  v105 = getLTECoexMetrics;
  if (getLTECoexMetrics)
  {
    getLTECoexMetrics[20] = 0;
    *(getLTECoexMetrics + 24) = 0u;
    *(getLTECoexMetrics + 40) = 0u;
  }

  v103 = (getLTECoexMetrics + 20);
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    *(v14 + 306) = 1;
    v18 = *(v14 + 10);
    *(v14 + 9) = *(v14 + 6);
    *(v14 + 10) = v18;
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"ULCA handleNetworkConfig-1-ULCA critical bitmap %llu", [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")]);
    if (*(v14 + 5) != 0.0)
    {
      [WCM_Logging logLevel:2 message:@"SUB%llu:  ULCA Logging -  case kWCMCellularNetworkConfiguration_ULBandInfo_CenterFreq UL-(freq=%lf bw=%lf)  DL(freq=%lf, bw=%lf) ", uint64, *(v14 + 18), *(v14 + 19), *(v14 + 20), *(v14 + 21)];
    }
  }

  else
  {
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"ULCA handleNetworkConfig-2-ULCA critical bitmap %llu", [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")], v84, v87, v89, v91);
  }

  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_1000C2D68;
  applier[3] = &unk_100241418;
  applier[4] = uint64;
  applier[5] = v14;
  xpc_dictionary_apply(v6, applier);
  v19 = xpc_dictionary_get_value(v6, "kWCMCellularNetworkConfiguration_LTEBandInformationSet");
  v107 = uint64;
  selfCopy = self;
  v102 = &self->super.mProcessId + 1;
  xdict = v6;
  if (v19)
  {
    v20 = v19;
    v21 = 1;
    goto LABEL_30;
  }

  v22 = xpc_dictionary_get_value(v6, "kWCMCellularNetworkConfiguration_TDSCDMABandInformationSet");
  if (v22)
  {
    v20 = v22;
    v21 = 2;
    goto LABEL_30;
  }

  v23 = xpc_dictionary_get_value(v6, "kWCMCellularNetworkConfiguration_GSMBandInformationSet");
  if (v23)
  {
    v20 = v23;
    v21 = 4;
    goto LABEL_30;
  }

  v24 = xpc_dictionary_get_value(v6, "kWCMCellularNetworkConfiguration_ONEXBandInformationSet");
  if (v24)
  {
    v20 = v24;
    v21 = 8;
    goto LABEL_30;
  }

  v25 = xpc_dictionary_get_value(v6, "kWCMCellularNetworkConfiguration_HDRBandInformationSet");
  if (v25)
  {
    v20 = v25;
    v21 = 16;
    goto LABEL_30;
  }

  v26 = xpc_dictionary_get_value(v6, "kWCMCellularNetworkConfiguration_WCDMABandInformationSet");
  if (v26)
  {
    v20 = v26;
    v21 = 32;
    goto LABEL_30;
  }

  v27 = xpc_dictionary_get_value(v6, "kWCMCellularNetworkConfiguration_NGCBandInformationSet");
  if (v27)
  {
    v20 = v27;
    v21 = 64;
LABEL_30:
    v14[32] = v21;
    count = xpc_array_get_count(v20);
    if (count >= 1)
    {
      v29 = 0;
      v30 = 0;
      v110 = 0;
      v31 = 0;
      v109 = v14 + 36;
      v32 = count + 1;
      while (1)
      {
        v33 = xpc_array_get_value(v20, v32 - 2);
        if (!v33)
        {
          goto LABEL_54;
        }

        v34 = v33;
        v35 = xpc_dictionary_get_uint64(v33, "kWCMCellularNetworkConfiguration_BandInfoSet_DirectionMask");
        int64 = xpc_dictionary_get_int64(v34, "kWCMCellularNetworkConfiguration_BandInfoSet_CenterFreq");
        v37 = xpc_dictionary_get_double(v34, "kWCMCellularNetworkConfiguration_BandInfoSet_Bandwidth");
        v38 = v37;
        v39 = "unknown";
        if (v35 == 2)
        {
          v39 = "downlink";
        }

        if (v35 == 1)
        {
          v39 = "uplink";
        }

        [WCM_Logging logLevel:5 message:@"directionMask(%lld:%s) centerFreq(%lld) bandwidth(%lf)", v35, v39, int64, *&v37];
        if (int64 < 1)
        {
          goto LABEL_54;
        }

        if (v35 == 1)
        {
          break;
        }

        if (v35 != 2)
        {
          goto LABEL_54;
        }

        v45 = int64 / 1000.0;
        v46 = v38 / 1000000.0;
        v47 = (v14 + 10);
        if (v110)
        {
          v47 = (v14 + 18);
        }

        v48 = (v14 + 20);
        if ((v110 & 1) == 0)
        {
          v48 = (v14 + 12);
        }

        *v47 = v45;
        *v48 = v46;
        if (![objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
        {
          v110 = 1;
LABEL_54:
          v51 = v30;
          goto LABEL_55;
        }

        v49 = &v109[18 * v30];
        *(v49 + 2) = v45;
        *(v49 + 3) = v46;
        v50 = &v109[18 * v29];
        v51 = (v30 + 1);
        *v50 = 0;
        *(v50 + 1) = 0;
        v110 = 1;
        v29 = v30;
LABEL_55:
        --v32;
        v30 = v51;
        if (v32 <= 1)
        {
          goto LABEL_59;
        }
      }

      v40 = int64 / 1000.0;
      v41 = v38 / 1000000.0;
      v42 = (v14 + 6);
      if (v31)
      {
        v42 = (v14 + 14);
      }

      v43 = (v14 + 16);
      if ((v31 & 1) == 0)
      {
        v43 = (v14 + 8);
      }

      *v42 = v40;
      *v43 = v41;
      if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
      {
        v44 = &v109[18 * v29];
        *v44 = v40;
        v44[1] = v41;
        ++v29;
      }

      v31 = 1;
      goto LABEL_54;
    }

    goto LABEL_58;
  }

  v14[32] = 127;
  [WCM_Logging logLevel:4 message:@"SUB%llu: unknown band info set", uint64];
LABEL_58:
  LODWORD(v51) = 0;
LABEL_59:
  if (*(v14 + 104) == 1)
  {
    v52 = xpc_dictionary_get_int64(xdict, "kWCMCellularNetworkConfiguration_ULCPConfig");
    v53 = xpc_dictionary_get_int64(xdict, "kWCMCellularNetworkConfiguration_DLCPConfig");
    v55 = v107;
    v54 = selfCopy;
    p_cache = (AntBlockPowerLimitPolicyClient + 16);
    if (*v113 != 0.0)
    {
      v57 = v53;
      [WCM_Logging logLevel:5 message:@"SUB%llu: RRC-connected cell notification ULCP(%lld -> %lld) DLCP(%lld -> %lld)", *v113, v107, *v14, v52, *(v14 + 1), v53];
      if (v52 != 255)
      {
        *v14 = v52;
      }

      if (v57 != 255)
      {
        *(v14 + 1) = v57;
      }
    }
  }

  else
  {
    *v14 = 0;
    *(v14 + 1) = 0;
    v55 = v107;
    v54 = selfCopy;
    p_cache = AntBlockPowerLimitPolicyClient.cache;
  }

  v58 = *(v14 + 3);
  v59 = *(v14 + 4);
  *(v14 + 338) = v58;
  *(v14 + 339) = v59;
  v60 = *(v14 + 5);
  v61 = *(v14 + 6);
  *(v14 + 340) = v60;
  *(v14 + 341) = v61;
  [WCM_Logging logLevel:5 message:@"SUB%llu: Network Config UL(freq=%lf bw=%lf) UL2(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf) DL2(freq=%lf bw=%lf) TDD ULDLConfig=%lld, SFF=%lld ULCP=%lld DLCP=%lld FrameOffset=%lld", v55, v58, v59, *(v14 + 7), *(v14 + 8), v60, v61, *(v14 + 9), *(v14 + 10), *(v14 + 11), *(v14 + 12), *v14, *(v14 + 1), *(v14 + 2)];
  v62 = v14 + 36;
  if ([objc_msgSend(objc_msgSend(p_cache + 273 "singleton")])
  {
    v14[612] = v51;
    v14[613] = 0;
    *(v14 + 2692) = 0;
    v63 = *(v14 + 10);
    *(v14 + 9) = *(v14 + 6);
    *(v14 + 10) = v63;
    v64 = *(v14 + 7);
    if (v64 != 0.0)
    {
      v65 = *v112;
      if (*v112 != 0.0)
      {
        *(v14 + 58) = *(v14 + 18);
        *(v14 + 27) = v64;
        *(v14 + 28) = v65;
      }
    }

    [WCM_Logging logLevel:4 message:@"-------- ULCA Logging   ----------"];
    [WCM_Logging logLevel:4 message:@"-------- ULCA Config   ----------"];
    [WCM_Logging logLevel:4 message:@"Total valid entries =%d", v14[612]];
    if (v14[612])
    {
      v66 = 0;
      v67 = v14 + 42;
      do
      {
        [WCM_Logging logLevel:4 message:@"Entry index %zu ..UL(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf)", v66++, *(v67 - 3), *(v67 - 2), *(v67 - 1), *v67];
        v67 += 9;
      }

      while (v66 < v14[612]);
    }

    v68 = *v113;
    if (*v113 <= 0.0)
    {
      [(WCM_CellularController *)v54 setActiveConfig:v102, v68];
      v69 = 0;
    }

    else
    {
      [(WCM_CellularController *)v54 setActiveConfig:v14, v68];
      v69 = v55;
    }

    [(WCM_CellularController *)v54 setActiveSubId:v69];
    [v106 evaluateULCARestrictions];
    v74 = &v62[18 * v14[613]];
    v76 = *v74;
    v75 = v74[1];
    *(v14 + 10) = v75;
    *(v14 + 6) = v76;
    if (v105)
    {
      if (v14[612] >= 2)
      {
        v77 = *(v14 + 2692);
        *v103 = v77;
        v78 = (v103 + 4);
        v116.val[1] = vmovn_s64(vcvtq_u64_f64(*(v14 + 10)));
        v116.val[0] = vmovn_s64(vcvtq_u64_f64(*(v14 + 9)));
        vst2_f32(v78, v116);
        if (v77 == 1)
        {
          v115.val[0] = vmovn_s64(vcvtq_u64_f64(v76));
          v115.val[1] = vmovn_s64(vcvtq_u64_f64(v75));
          v79 = (v103 + 20);
          vst2_f32(v79, v115);
        }
      }

      if ([objc_msgSend(objc_msgSend(p_cache + 273 "singleton")])
      {
        LODWORD(v85) = *(v103 + 8);
        [v106 wRMCACoexSubmit_ULCACoexStates:*v103 ULCAPrimaryCarrierULFreq:*(v103 + 1) ULCAPrimaryCarrierDLFreq:*(v103 + 2) ULCAPrimaryCarrierULBW:*(v103 + 3) ULCAPrimaryCarrierDLBW:*(v103 + 4) ULCACriticalCarrierULFreq:*(v103 + 5) ULCACriticalCarrierDLFreq:*(v103 + 3) ULCACriticalCarrierULBW:v85 ULCACriticalCarrierDLBW:?];
      }
    }

    [WCM_Logging logLevel:4 message:@"-------- ULCA After coex valuation   ----------"];
    [WCM_Logging logLevel:4 message:@"-------- ULCA After coex valuation   ----------"];
    [WCM_Logging logLevel:4 message:@"Critical carrier =%d", v14[613]];
    v80 = &v62[18 * v14[613]];
    [WCM_Logging logLevel:4 message:@"Critical Carrier UL(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf)", *v80, *(v80 + 1), *(v80 + 2), *(v80 + 3)];
    [WCM_Logging logLevel:5 message:@"ULCA Final Frequencies for COEX consideration :- SUB%llu: Network Config UL(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf)  TDD ULDLConfig=%lld, SFF=%lld ULCP=%lld DLCP=%lld FrameOffset=%lld", v55, *(v14 + 3), *(v14 + 4), *(v14 + 5), *(v14 + 6), *(v14 + 11), *(v14 + 12), *v14, *(v14 + 1), *(v14 + 2)];
    [WCM_Logging logLevel:4 message:@"-------- ULCA Logging END  ----------"];
    [objc_msgSend(p_cache + 273 "singleton")];
    [objc_msgSend(p_cache + 273 "singleton")];
    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 3, @"ULCA handleNetworkConfig-3-ULCA critical bitmap %llu", [objc_msgSend(p_cache + 273 "singleton")], v86, v88, v90, v92, v93, v94, v95);
  }

  else
  {
    v70 = &v62[18 * v14[613]];
    v71 = &v62[18 * v14[614]];
    v72 = *(v14 + 10);
    *(v70 + 1) = v72;
    *(v71 + 1) = v72;
    v73 = *(v14 + 6);
    *v70 = v73;
    *v71 = v73;
    [WCM_Logging logLevel:4 message:@"Non-ULCA devices: Expected all to be PCC: Cell Victim Critical Carrier UL(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf), WiFi Victim Critical Carrier UL(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf)", *v70, *(v70 + 1), *(v70 + 2), *(v70 + 3), v73, v72];
  }

  if (*v111 == 0.0 || v9 != 0.0 && *v111 != v9)
  {
    *(v14 + 14) = 0;
    *(v14 + 15) = 0;
  }

  v81 = *v113;
  if (*v113 != 0.0)
  {
    v82 = *(v14 + 4);
    *(v14 + 14) = v81;
    *(v14 + 15) = v82;
    [(WCM_CellularController *)v54 setActiveConfig:v14];
    [(WCM_CellularController *)v54 setActiveSubId:v55];
  }

  if ([objc_msgSend(objc_msgSend(p_cache + 273 singleton] && (objc_msgSend(objc_msgSend(objc_msgSend(p_cache + 273, "singleton"), "activeCoexFeatures"), "containsObject:", @"EnableULCA") & 1) == 0)
  {
    if (v9 == *v111 && v8 == *v113 && v11 == *(v14 + 9) && v10 == *(v14 + 7) && v101 == *(v14 + 6) && v100 == *(v14 + 4) && v99 == *(v14 + 10) && v98 == *v112 && v97 == [(WCM_CellularController *)v54 activeSubId:*v112]&& v96 == *(v14 + 11))
    {
      [WCM_Logging logLevel:2 message:@"NW Config Parameters are the same, hence ignoring the network config command"];
      return;
    }

    [WCM_Logging logLevel:2 message:@"NW Config Parameters are NOT the same, hence handling the network config command"];
  }

  if ([objc_msgSend(objc_msgSend(p_cache + 273 "singleton")])
  {
    clkAlgnTDDFreqCheck = [(WCM_CellularController *)v54 clkAlgnTDDFreqCheck];
    *(v14 + 105) = clkAlgnTDDFreqCheck;
    [WCM_Logging logLevel:4 message:@"clkAlgnTDDFreqCheck: After sorting over all cells, setting cellularConfig->btClkAlgnFlag = %d", clkAlgnTDDFreqCheck];
  }

  [objc_msgSend(p_cache + 273 "singleton")];
}

- (void)handleTxPower:(id)power
{
  value = xpc_dictionary_get_value(power, "kMessageArgs");
  if (value)
  {
    v4 = value;
    int64 = xpc_dictionary_get_int64(value, "kWCMCellularTxPower_Level");
    [WCM_Logging logLevel:4 message:@"Tx Power level(%lld) response(%lld)", int64, xpc_dictionary_get_int64(v4, "kWCMCellularTxPower_Response")];
  }
}

- (void)handleThresholdEvent:(id)event
{
  value = xpc_dictionary_get_value(event, "kMessageArgs");
  if (value)
  {
    v5 = value;
    int64 = xpc_dictionary_get_int64(value, "kWCMCellularThresholdReached_EventType");
    [WCM_Logging logLevel:4 message:@"Threshold Event type(%lld) data(%lld)", int64, xpc_dictionary_get_int64(v5, "kWCMCellularThresholdReached_EventData")];
    if (int64 == 1)
    {
      [WCM_Logging logLevel:3 message:@"Reset frame denial related parameters"];

      [(WCM_CellularController *)self setAllPolicies];
    }
  }
}

- (BOOL)isInCoexBand7LowerEdge
{
  v3 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [(WCM_CellularController *)self ulCenterFreq];
  if (v4 == 0.0 || ([(WCM_CellularController *)self ulBandwidth], v5 == 0.0))
  {
    LOBYTE(v13) = 0;
  }

  else
  {
    [(WCM_CellularController *)self ulCenterFreq];
    v7 = v6;
    [(WCM_CellularController *)self ulBandwidth];
    v9 = v8;
    [(WCM_CellularController *)self dlCenterFreq];
    v11 = v10;
    [(WCM_CellularController *)self dlBandwidth];
    v13 = [v3 isBand7CoexActiveForULFreq:v7 ulBW:v9 dlFreq:v11 dlBW:v12];
    if (v13)
    {
      [WCM_Logging logLevel:4 message:@"In CoexBand7LowerEdge"];
      LOBYTE(v13) = 1;
    }
  }

  return v13;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)getCombinedUplinkFreqRange
{
  [(WCM_CellularController *)self ulCenterFreq2];
  if (v3 == 0.0 || ([(WCM_CellularController *)self ulBandwidth2], v4 == 0.0))
  {
    [(WCM_CellularController *)self cachedULCenterFreq];
    v24 = v23;
    [(WCM_CellularController *)self cachedULBandwidth];
    v11 = v24 - v25 * 0.5;
    [(WCM_CellularController *)self cachedULCenterFreq];
    v27 = v26;
    [(WCM_CellularController *)self cachedULBandwidth];
    v29 = v27 + v28 * 0.5;
  }

  else
  {
    [(WCM_CellularController *)self cachedULCenterFreq];
    v6 = v5;
    [(WCM_CellularController *)self ulCenterFreq2];
    if (v6 >= v7)
    {
      [(WCM_CellularController *)self ulCenterFreq2];
      v31 = v30;
      [(WCM_CellularController *)self ulBandwidth2];
      v11 = v31 - v32 * 0.5;
      [(WCM_CellularController *)self ulCenterFreq2];
      v34 = v33;
      [(WCM_CellularController *)self ulBandwidth2];
      v15 = v34 + v35 * 0.5;
      [(WCM_CellularController *)self cachedULCenterFreq];
      v37 = v36;
      [(WCM_CellularController *)self cachedULBandwidth];
      v19 = v37 - v38 * 0.5;
      [(WCM_CellularController *)self cachedULCenterFreq];
      v21 = v39;
      [(WCM_CellularController *)self cachedULBandwidth];
    }

    else
    {
      [(WCM_CellularController *)self cachedULCenterFreq];
      v9 = v8;
      [(WCM_CellularController *)self cachedULBandwidth];
      v11 = v9 - v10 * 0.5;
      [(WCM_CellularController *)self cachedULCenterFreq];
      v13 = v12;
      [(WCM_CellularController *)self cachedULBandwidth];
      v15 = v13 + v14 * 0.5;
      [(WCM_CellularController *)self ulCenterFreq2];
      v17 = v16;
      [(WCM_CellularController *)self ulBandwidth2];
      v19 = v17 - v18 * 0.5;
      [(WCM_CellularController *)self ulCenterFreq2];
      v21 = v20;
      [(WCM_CellularController *)self ulBandwidth2];
    }

    v29 = v21 + v22 * 0.5;
    v40 = v19 - v15;
    if (v19 - v15 < 0.0)
    {
      v40 = -(v19 - v15);
    }

    if (v40 > 0.01)
    {
      [WCM_Logging logLevel:0 message:@"***********************************************************************************************"];
      [WCM_Logging logLevel:0 message:@"* PCC UL and SCC UL are not contiguous!!! However, go ahead by making a envelop frequency range"];
      [(WCM_CellularController *)self cachedULCenterFreq];
      v42 = v41;
      [(WCM_CellularController *)self cachedULBandwidth];
      [WCM_Logging logLevel:0 message:@"*   PCC: cachedULCenterFreq(%lf) cachedULBandwidth(%lf)", v42, v43];
      [(WCM_CellularController *)self ulCenterFreq2];
      v45 = v44;
      [(WCM_CellularController *)self ulBandwidth2];
      [WCM_Logging logLevel:0 message:@"*   SCC: ulCenterFreq2(%lf) ulBandwidth2(%lf)", v45, v46];
      [WCM_Logging logLevel:0 message:@"***********************************************************************************************"];
    }
  }

  v47 = v29 - v11;
  v48 = v11;
  result.var1 = v47;
  result.var0 = v48;
  return result;
}

- (void)setNetworkConfigOfInterest
{
  *keys = *&off_100241438;
  v60 = *&off_100241448;
  v61 = off_100241458;
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [WCM_Logging logLevel:3 message:@"Setting network config of interest to whole band"];
    values = xpc_int64_create(((452.5 + 3800.0) * 0.5));
    v54 = xpc_int64_create((3800.0 - 452.5));
    v55 = xpc_int64_create(((462.5 + 3800.0) * 0.5));
    v56 = xpc_int64_create((3800.0 - 462.5));
    v57 = xpc_int64_create(3);
    objects = xpc_dictionary_create(keys, &values, 5uLL);
    v3 = xpc_array_create(&objects, 1uLL);
    [(WCM_CellularController *)self sendMessage:1202 withArgs:v3];
    for (i = 0; i != 40; i += 8)
    {
      xpc_release(*(&values + i));
    }

    xpc_release(objects);
    v5 = v3;
LABEL_5:
    xpc_release(v5);
    return;
  }

  if (![objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
    {
      v6 = xpc_array_create(0, 0);
      values = xpc_int64_create(857);
      v54 = xpc_int64_create(115);
      v55 = xpc_int64_create(875);
      v56 = xpc_int64_create(169);
      v57 = xpc_int64_create(3);
      v58 = 0;
      v7 = xpc_dictionary_create(keys, &values, 5uLL);
      xpc_array_append_value(v6, v7);
      for (j = 0; j != 21; ++j)
      {
        v9 = byte_100199178[j];
        [WCM_Logging logLevel:3 message:@"Setting network config of interest to band-a %d", byte_100199178[j]];
        v10 = (&unk_100196CB0 + 40 * v9);
        v11 = v10[2];
        v12 = v10[3] - v11;
        objects = xpc_int64_create((v11 + v12 * 0.5));
        v48 = xpc_int64_create(v12);
        v13 = v10[1] - *v10;
        v49 = xpc_int64_create((*v10 + v13 * 0.5));
        v50 = xpc_int64_create(v13);
        v51 = xpc_int64_create(3);
        v52 = 0;
        v14 = xpc_dictionary_create(keys, &objects, 5uLL);
        xpc_array_append_value(v6, v14);
      }

      for (k = 0; k != 4; ++k)
      {
        v16 = aMno[k];
        [WCM_Logging logLevel:3 message:@"Setting network config of interest to band-b %d", aMno[k]];
        v17 = (&unk_100196030 + 40 * v16);
        v18 = v17[2];
        v19 = v17[3] - v18;
        objects = xpc_int64_create((v18 + v19 * 0.5));
        v48 = xpc_int64_create(v19);
        v20 = v17[1] - *v17;
        v49 = xpc_int64_create((*v17 + v20 * 0.5));
        v50 = xpc_int64_create(v20);
        v51 = xpc_int64_create(3);
        v52 = 0;
        v21 = xpc_dictionary_create(keys, &objects, 5uLL);
        xpc_array_append_value(v6, v21);
      }

      v22 = xpc_uint64_create(0);
      v23 = xpc_uint64_create(1uLL);
      [(WCM_CellularController *)self sendMessage:1202 withArgs:v6 withExtraKey:"kSubId" andExtraValue:v22];
      [(WCM_CellularController *)self sendMessage:1202 withArgs:v6 withExtraKey:"kSubId" andExtraValue:v23];
      [WCM_Logging logLevel:3 message:@"Setting network config of interest to band2 %d", xpc_array_get_count(v6)];
      if (xpc_array_get_count(v6))
      {
        v24 = 0;
        do
        {
          value = xpc_array_get_value(v6, v24);
          xpc_release(value);
          ++v24;
        }

        while (xpc_array_get_count(v6) > v24);
      }

      xpc_release(v6);
      xpc_release(v22);
      v5 = v23;
    }

    else
    {
      [WCM_Logging logLevel:3 message:@"Setting network config of interest to band 7"];
      v46[0] = xpc_int64_create(((2570.0 - 2500.0) * 0.5 + 2500.0));
      v46[1] = xpc_int64_create((2570.0 - 2500.0));
      v46[2] = xpc_int64_create(((2690.0 - 2620.0) * 0.5 + 2620.0));
      v46[3] = xpc_int64_create((2690.0 - 2620.0));
      v46[4] = xpc_int64_create(3);
      object = xpc_dictionary_create(keys, v46, 5uLL);
      v26 = xpc_array_create(&object, 1uLL);
      [WCM_Logging logLevel:3 message:@"Setting network config of interest to band 40"];
      values = xpc_int64_create(((2400.0 - 2300.0) * 0.5 + 2300.0));
      v54 = xpc_int64_create((2400.0 - 2300.0));
      v55 = xpc_int64_create(((2400.0 - 2300.0) * 0.5 + 2300.0));
      v56 = xpc_int64_create((2400.0 - 2300.0));
      v57 = xpc_int64_create(3);
      v58 = 0;
      v37 = xpc_dictionary_create(keys, &values, 5uLL);
      xpc_array_append_value(v26, v37);
      [WCM_Logging logLevel:3 message:@"Setting network config of interest to band 41A"];
      objects = xpc_int64_create(2522);
      v48 = xpc_int64_create(55);
      v49 = xpc_int64_create(2522);
      v50 = xpc_int64_create(55);
      v51 = xpc_int64_create(3);
      v52 = 0;
      v36 = xpc_dictionary_create(keys, &objects, 5uLL);
      xpc_array_append_value(v26, v36);
      v45[0] = xpc_int64_create(857);
      v45[1] = xpc_int64_create(115);
      v45[2] = xpc_int64_create(875);
      v45[3] = xpc_int64_create(169);
      v45[4] = xpc_int64_create(3);
      v45[5] = 0;
      v27 = xpc_dictionary_create(keys, v45, 5uLL);
      if (([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] & 1) != 0 || objc_msgSend(objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager, "singleton"), "activeCoexFeatures"), "containsObject:", @"AntennaSelectionV2Coex"))
      {
        [WCM_Logging logLevel:3 message:@"Setting network config of interest to combined range for band 5, 8, 18, 19, 20, 26, 27 and bc10"];
        xpc_array_append_value(v26, v27);
      }

      v35 = v27;
      v44[0] = xpc_int64_create(((1980.0 - 1920.0) * 0.5 + 1920.0));
      v44[1] = xpc_int64_create((1980.0 - 1920.0));
      v44[2] = xpc_int64_create(((2170.0 - 2110.0) * 0.5 + 2110.0));
      v44[3] = xpc_int64_create((2170.0 - 2110.0));
      v44[4] = xpc_int64_create(3);
      v44[5] = 0;
      v28 = xpc_dictionary_create(keys, v44, 5uLL);
      v43[0] = xpc_int64_create(((1785.0 - 1710.0) * 0.5 + 1710.0));
      v43[1] = xpc_int64_create((1785.0 - 1710.0));
      v43[2] = xpc_int64_create(((1880.0 - 1805.0) * 0.5 + 1805.0));
      v43[3] = xpc_int64_create((1880.0 - 1805.0));
      v43[4] = xpc_int64_create(3);
      v43[5] = 0;
      v29 = xpc_dictionary_create(keys, v43, 5uLL);
      v42[0] = xpc_int64_create(((1755.0 - 1710.0) * 0.5 + 1710.0));
      v42[1] = xpc_int64_create((1755.0 - 1710.0));
      v42[2] = xpc_int64_create(((2155.0 - 2110.0) * 0.5 + 2110.0));
      v42[3] = xpc_int64_create((2155.0 - 2110.0));
      v42[4] = xpc_int64_create(3);
      v42[5] = 0;
      v30 = xpc_dictionary_create(keys, v42, 5uLL);
      v41[0] = xpc_int64_create(((1915.0 - 1850.0) * 0.5 + 1850.0));
      v41[1] = xpc_int64_create((1915.0 - 1850.0));
      v41[2] = xpc_int64_create(((1995.0 - 1930.0) * 0.5 + 1930.0));
      v41[3] = xpc_int64_create((1995.0 - 1930.0));
      v41[4] = xpc_int64_create(3);
      v41[5] = 0;
      v31 = xpc_dictionary_create(keys, v41, 5uLL);
      v40[0] = xpc_int64_create(((2025.0 - 2010.0) * 0.5 + 2010.0));
      v40[1] = xpc_int64_create((2025.0 - 2010.0));
      v40[2] = xpc_int64_create(((2025.0 - 2010.0) * 0.5 + 2010.0));
      v40[3] = xpc_int64_create((2025.0 - 2010.0));
      v40[4] = xpc_int64_create(3);
      v40[5] = 0;
      v32 = xpc_dictionary_create(keys, v40, 5uLL);
      v39[0] = xpc_int64_create(((1920.0 - 1880.0) * 0.5 + 1880.0));
      v39[1] = xpc_int64_create((1920.0 - 1880.0));
      v39[2] = xpc_int64_create(((1920.0 - 1880.0) * 0.5 + 1880.0));
      v39[3] = xpc_int64_create((1920.0 - 1880.0));
      v39[4] = xpc_int64_create(3);
      v39[5] = 0;
      v33 = xpc_dictionary_create(keys, v39, 5uLL);
      if (([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] & 1) != 0 || (objc_msgSend(objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager, "singleton"), "activeCoexFeatures"), "containsObject:", @"AntennaSelectionV2Coex") & 1) != 0 || objc_msgSend(objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager, "singleton"), "activeCoexFeatures"), "containsObject:", @"WiFiOCLSupport"))
      {
        [WCM_Logging logLevel:3 message:@"Setting network config of interest to band 1, 3, 4, 25, 34"];
        xpc_array_append_value(v26, v28);
        xpc_array_append_value(v26, v29);
        xpc_array_append_value(v26, v30);
        xpc_array_append_value(v26, v31);
        xpc_array_append_value(v26, v32);
        xpc_array_append_value(v26, v33);
      }

      [(WCM_CellularController *)self sendMessage:1202 withArgs:v26];
      for (m = 0; m != 5; ++m)
      {
        xpc_release(v46[m]);
        xpc_release(*(&values + m * 8));
        xpc_release(*(&objects + m * 8));
        xpc_release(v45[m]);
        xpc_release(v44[m]);
        xpc_release(v43[m]);
        xpc_release(v42[m]);
        xpc_release(v41[m]);
        xpc_release(v40[m]);
        xpc_release(v39[m]);
      }

      xpc_release(object);
      xpc_release(v37);
      xpc_release(v36);
      xpc_release(v35);
      xpc_release(v28);
      xpc_release(v29);
      xpc_release(v30);
      xpc_release(v31);
      xpc_release(v32);
      xpc_release(v33);
      v5 = v26;
    }

    goto LABEL_5;
  }

  [WCM_Logging logLevel:3 message:@"Setting network config of interest to all bands"];
}

- (void)setEnhancedScanFrequencyTableWithBand:(id)band RATs:(id)ts Frequency:(id)frequency
{
  v7 = xpc_array_create(0, 0);
  *keys = *off_100241468;
  v29 = *off_100241478;
  v8 = [band count];
  v9 = v8;
  if (v8)
  {
    v10 = 0;
    while (1)
    {
      v11 = [frequency objectAtIndex:v10];
      v12 = [band objectAtIndex:v10];
      v13 = [ts objectAtIndex:v10];
      if ([v11 count] != 2)
      {
        break;
      }

      v14 = v7;
      v15 = [objc_msgSend(v11 objectAtIndex:{1), "integerValue"}];
      v16 = v15 - [objc_msgSend(v11 objectAtIndex:{0), "integerValue"}];
      v17 = [objc_msgSend(v11 objectAtIndex:{0), "integerValue"}] + (v16 >> 1);
      integerValue = [v12 integerValue];
      integerValue2 = [v13 integerValue];
      values[0] = xpc_int64_create(v17);
      v20 = v16;
      v7 = v14;
      values[1] = xpc_int64_create(v20);
      values[2] = xpc_uint64_create(integerValue);
      values[3] = xpc_uint64_create(integerValue2);
      v21 = xpc_dictionary_create(keys, values, 4uLL);
      xpc_array_append_value(v14, v21);
      for (i = 0; i != 4; ++i)
      {
        xpc_release(values[i]);
      }

      xpc_release(v21);
      if (++v10 == v9)
      {
        goto LABEL_9;
      }
    }

    +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 0, @"Invalid scan Freq len: %d", [v11 count]);
  }

LABEL_9:
  v23 = xpc_uint64_create(0);
  [(WCM_CellularController *)self sendMessage:1208 withArgs:v7 withExtraKey:"kSubId" andExtraValue:v23];
  xpc_release(v23);
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    v24 = xpc_uint64_create(1uLL);
    [(WCM_CellularController *)self sendMessage:1208 withArgs:v7 withExtraKey:"kSubId" andExtraValue:v24];
    xpc_release(v24);
  }

  xpc_release(v7);
}

- (void)setScanFrequencyBandFilter:(id)filter
{
  v5 = xpc_array_create(0, 0);
  *keys = *off_100241488;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [filter countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(filter);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if ([v10 count] != 2)
        {
          +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 0, @"Invalid scan Freq len: %d", [v10 count]);
          goto LABEL_11;
        }

        v11 = [objc_msgSend(v10 objectAtIndex:{1), "integerValue"}];
        v12 = v11 - [objc_msgSend(v10 objectAtIndex:{0), "integerValue"}];
        values = xpc_int64_create([objc_msgSend(v10 objectAtIndex:{0), "integerValue"}] + (v12 >> 1));
        object = xpc_int64_create(v12);
        v13 = xpc_dictionary_create(keys, &values, 2uLL);
        xpc_array_append_value(v5, v13);
        xpc_release(values);
        xpc_release(object);
        xpc_release(v13);
      }

      v7 = [filter countByEnumeratingWithState:&v16 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v14 = xpc_uint64_create(0);
  [(WCM_CellularController *)self sendMessage:1208 withArgs:v5 withExtraKey:"kSubId" andExtraValue:v14];
  xpc_release(v14);
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    v15 = xpc_uint64_create(1uLL);
    [(WCM_CellularController *)self sendMessage:1208 withArgs:v5 withExtraKey:"kSubId" andExtraValue:v15];
    xpc_release(v15);
  }

  xpc_release(v5);
}

- (void)setLAACoexConfig:(int)config
{
  v3 = *&config;
  v5 = [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [v5 wcmCellularLAACoexProtectCQIPeriod];
  [v5 wcmCellularLAACoexThresholdIn];
  [v5 wcmCellularLAACoexThresholdOut];
  [v5 wcmCellularLAACoexDeactTimer];
  [v5 wcmCellularLAACoexDeactStopTimer];
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v6, "WCMCellularSetLAAConfig_CoexEnable", 1);
  [WCM_Logging logLevel:3 message:@"Setting LAA Coex Config for Cellular with RCU priority: %d", v3];
  wcmCellularLAACoexProtectCQIPeriod = [v5 wcmCellularLAACoexProtectCQIPeriod];
  wcmCellularLAACoexThresholdIn = [v5 wcmCellularLAACoexThresholdIn];
  wcmCellularLAACoexThresholdOut = [v5 wcmCellularLAACoexThresholdOut];
  if (v3)
  {
    wcmCellularLAACoexDeactTimer = 200;
    wcmCellularLAACoexDeactStopTimer = 200;
  }

  else
  {
    wcmCellularLAACoexDeactTimer = [v5 wcmCellularLAACoexDeactTimer];
    wcmCellularLAACoexDeactStopTimer = [v5 wcmCellularLAACoexDeactStopTimer];
  }

  if ((v3 & 7) != 0)
  {
    v12 = 255;
  }

  else
  {
    v12 = wcmCellularLAACoexProtectCQIPeriod;
  }

  xpc_dictionary_set_uint64(v6, "WCMCellularSetLAAConfig_ProtectCQIPeriod", v12);
  xpc_dictionary_set_uint64(v6, "WCMCellularSetLAAConfig_ThresholdIn", wcmCellularLAACoexThresholdIn);
  xpc_dictionary_set_uint64(v6, "WCMCellularSetLAAConfig_ThresholdOut", wcmCellularLAACoexThresholdOut);
  xpc_dictionary_set_uint64(v6, "WCMCellularSetLAAConfig_DeactTimer", wcmCellularLAACoexDeactTimer);
  xpc_dictionary_set_uint64(v6, "WCMCellularSetLAAConfig_DeactStopTimer", wcmCellularLAACoexDeactStopTimer);
  v13 = xpc_uint64_create(0);
  [(WCM_CellularController *)self sendMessage:1211 withArgs:v6 withExtraKey:"kSubId" andExtraValue:v13];
  [(WCM_CellularController *)self setRc1priority:v3];
  xpc_release(v13);

  xpc_release(v6);
}

- (void)setRC1Duration:(unint64_t)duration
{
  v5 = +[WCM_PolicyManager singleton];
  [WCM_Logging logLevel:3 message:@"Setting RC1 duration in BB %d", duration];
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = xpc_uint64_create(0);
  if (([objc_msgSend(v5 "activeCoexFeatures")] & 1) == 0 && !objc_msgSend(objc_msgSend(v5, "activeCoexFeatures"), "containsObject:", @"BB_POLICY_CONFIG_SUPPORT"))
  {
    v10 = "kWCMCellularRC1Duration";
    v11 = v6;
    durationCopy = duration;
    goto LABEL_10;
  }

  if ([objc_msgSend(v5 "activeCoexFeatures")])
  {
    [WCM_Logging logLevel:3 message:@"LAA to RCU1 Throttling disabled"];
  }

  else
  {
    v8 = WORD1(duration);
    if (WORD1(duration) != 1)
    {
      v9 = 1;
      goto LABEL_9;
    }
  }

  v9 = 0;
  v8 = 1;
LABEL_9:
  xpc_dictionary_set_uint64(v6, "kWCMCellularSetLaaGpioThrottleReq_Enabled", v9);
  durationCopy = v8;
  v10 = "kWCMCellularSetLaaGpioThrottleReq_Periodicity";
  v11 = v6;
LABEL_10:
  xpc_dictionary_set_uint64(v11, v10, durationCopy);
  if ([objc_msgSend(v5 "activeCoexFeatures")])
  {
    xpc_dictionary_set_uint64(v6, "WCMCellularSetLAAConfig_UwbRangingDuration", duration);
    xpc_dictionary_set_uint64(v6, "WCMCellularSetLAAConfig_UwbNarrowBandDuration", 0);
  }

  [(WCM_CellularController *)self sendMessage:1213 withArgs:v6 withExtraKey:"kSubId" andExtraValue:v7];
  [(WCM_CellularController *)self setRc1duration:duration];
  xpc_release(v7);

  xpc_release(v6);
}

- (void)configureCellularTimeShareConfigReqParamsWithCenterFreq:(unint64_t)freq bandwidth:(unint64_t)bandwidth
{
  [(WCM_CellularController *)self configureCellularTimeShareConfigReqParamsWithCenterFreq:freq instance:0 bandwidth:bandwidth];

  [(WCM_CellularController *)self configureCellularTimeShareConfigReqParamsWithCenterFreq:freq instance:9 bandwidth:bandwidth];
}

- (void)configureCellularTimeShareConfigReqParamsWithCenterFreq:(unint64_t)freq instance:(unsigned int)instance bandwidth:(unint64_t)bandwidth
{
  [WCM_Logging logLevel:4 message:@"configureCellularTimeShareConfigReqParamsWithInstance is called. BB side timesharing will be configured. (centerFreq = %d, instance = %d, bandwidth = %d)", freq, *&instance, bandwidth];
  [WCM_Logging logLevel:4 message:@"BB20:Updating time share config req params to cellular modem"];
  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v9, "kWCMCellularSetTimeShareConfig_Enable", 1uLL);
  xpc_dictionary_set_uint64(v9, "kWCMCellularTimeShareConfig_CoexTech", instance);
  xpc_dictionary_set_uint64(v9, "kWCMCellularTimeShareConfig_CallType", 2uLL);
  xpc_dictionary_set_uint64(v9, "kWCMCellularTimeShareConfig_LongDrxCycle", 0x28uLL);
  xpc_dictionary_set_uint64(v9, "kWCMCellularTimeShareConfig_ShortDrxCycle", 0);
  xpc_dictionary_set_uint64(v9, "kWCMCellularTImeShareConfig_SleepWakeDurScale", 5uLL);
  v10 = xpc_array_create(0, 0);
  values = xpc_int64_create(freq);
  object = xpc_int64_create(bandwidth);
  *keys = *off_100241498;
  v11 = xpc_dictionary_create(keys, &values, 2uLL);
  xpc_array_append_value(v10, v11);
  xpc_dictionary_set_value(v9, "kWCMCellularTImeShareConfig_BandInformationSet", v10);
  v12 = xpc_uint64_create(0);
  [(WCM_CellularController *)self sendMessage:1214 withArgs:v9 withExtraKey:"kSubId" andExtraValue:v12];
  xpc_release(values);
  xpc_release(object);
  xpc_release(v11);
  xpc_release(v10);
  xpc_release(v12);
  xpc_release(v9);
}

- (void)configureCellularTimeShareConfigReqParamsWithCenterFreq:(unint64_t)freq CoexTech:(unsigned int)tech bandwidth:(unint64_t)bandwidth subId:(unint64_t)id
{
  [WCM_Logging logLevel:4 message:@"Cellular/WiFi TimeSharing: Configured to BB (subId = %llu, CoexTech = 0x%X, centerFreq = %llu, bandwidth = %llu, )", id, *&tech, freq, bandwidth];
  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "kWCMCellularSetTimeShareConfig_Enable", 1uLL);
  xpc_dictionary_set_uint64(v11, "kWCMCellularTimeShareConfig_CoexTech", tech);
  xpc_dictionary_set_uint64(v11, "kWCMCellularTimeShareConfig_CallType", 2uLL);
  xpc_dictionary_set_uint64(v11, "kWCMCellularTimeShareConfig_LongDrxCycle", 0x28uLL);
  xpc_dictionary_set_uint64(v11, "kWCMCellularTimeShareConfig_ShortDrxCycle", 0);
  xpc_dictionary_set_uint64(v11, "kWCMCellularTImeShareConfig_SleepWakeDurScale", 5uLL);
  v12 = xpc_array_create(0, 0);
  values = xpc_int64_create(freq);
  object = xpc_int64_create(bandwidth);
  *keys = *off_100241498;
  v13 = xpc_dictionary_create(keys, &values, 2uLL);
  xpc_array_append_value(v12, v13);
  xpc_dictionary_set_value(v11, "kWCMCellularTImeShareConfig_BandInformationSet", v12);
  v14 = xpc_uint64_create(id);
  [(WCM_CellularController *)self sendMessage:1214 withArgs:v11 withExtraKey:"kSubId" andExtraValue:v14];
  xpc_release(values);
  xpc_release(object);
  xpc_release(v13);
  xpc_release(v12);
  xpc_release(v14);
  xpc_release(v11);
}

- (void)disableCellularTimeShareConfigReqSubId:(unint64_t)id
{
  [WCM_Logging logLevel:4 message:@"Disable time share config req params to cellular modem SubId %llu", id];
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetTimeShareConfig_Enable", 0);
  xpc_dictionary_set_uint64(v5, "kWCMCellularTimeShareConfig_CoexTech", 0);
  xpc_dictionary_set_uint64(v5, "kWCMCellularTimeShareConfig_CallType", 2uLL);
  xpc_dictionary_set_uint64(v5, "kWCMCellularTimeShareConfig_LongDrxCycle", 0);
  xpc_dictionary_set_uint64(v5, "kWCMCellularTimeShareConfig_ShortDrxCycle", 0);
  xpc_dictionary_set_uint64(v5, "kWCMCellularTImeShareConfig_SleepWakeDurScale", 0);
  v6 = xpc_array_create(0, 0);
  values = xpc_int64_create(0);
  object = xpc_int64_create(0);
  *keys = *off_100241498;
  v7 = xpc_dictionary_create(keys, &values, 2uLL);
  xpc_array_append_value(v6, v7);
  xpc_dictionary_set_value(v5, "kWCMCellularTImeShareConfig_BandInformationSet", v6);
  v8 = xpc_uint64_create(id);
  [(WCM_CellularController *)self sendMessage:1214 withArgs:v5 withExtraKey:"kSubId" andExtraValue:v8];
  xpc_release(values);
  xpc_release(object);
  xpc_release(v7);
  xpc_release(v6);
  xpc_release(v8);
  xpc_release(v5);
}

- (void)setAntBlockingParams
{
  v2 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v3 = xpc_dictionary_create(0, 0, 0);
  [WCM_Logging logLevel:4 message:@"BB20:Updating antenna blocking params to cellular modem"];
  v4 = xpc_array_create(0, 0);
  v5 = xpc_array_create(0, 0);
  v6 = xpc_uint64_create(0xCAuLL);
  if (v2 <= 0xB && ((1 << v2) & 0xD00) != 0)
  {
    xpc_array_append_value(v5, v6);
  }

  v54 = xpc_uint64_create(0xC8uLL);
  xpc_array_append_value(v5, v54);
  v8 = xpc_uint64_create(0xC9uLL);
  if ((v2 | 4) == 0xC)
  {
    xpc_array_append_value(v5, v8);
  }

  v9 = xpc_uint64_create(0xA1uLL);
  if (v2 == 12)
  {
    xpc_array_append_value(v5, v9);
  }

  v51 = v9;
  v10 = xpc_dictionary_create(0, 0, 0);
  v46 = v5;
  xpc_dictionary_set_value(v10, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v5);
  xpc_dictionary_set_uint64(v10, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 8uLL);
  object = v10;
  xpc_array_append_value(v4, v10);
  v11 = xpc_array_create(0, 0);
  v12 = v11;
  v60 = v4;
  v61 = v3;
  if (v2 == 11)
  {
    xpc_array_append_value(v11, v8);
    v13 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v13, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v12);
    xpc_dictionary_set_uint64(v13, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 9uLL);
    v49 = v13;
    xpc_array_append_value(v4, v13);
  }

  else
  {
    v49 = xpc_dictionary_create(0, 0, 0);
  }

  v14 = xpc_array_create(0, 0);
  v15 = xpc_uint64_create(0xA0uLL);
  v16 = xpc_uint64_create(0xBFuLL);
  v52 = v12;
  v47 = v16;
  v48 = v15;
  if (v2 == 11)
  {
    v17 = v16;
    xpc_array_append_value(v14, v15);
    xpc_array_append_value(v14, v17);
    v18 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v18, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v14);
    xpc_dictionary_set_uint64(v18, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 2uLL);
    v45 = v18;
    xpc_array_append_value(v60, v18);
  }

  else
  {
    v45 = xpc_dictionary_create(0, 0, 0);
  }

  v53 = v8;
  v55 = v6;
  v19 = xpc_array_create(0, 0);
  v20 = xpc_uint64_create(0xB6uLL);
  v21 = xpc_uint64_create(0x79uLL);
  v22 = xpc_uint64_create(0x90uLL);
  v23 = xpc_uint64_create(0x7AuLL);
  v24 = xpc_uint64_create(0x7BuLL);
  v25 = xpc_uint64_create(0x9EuLL);
  v26 = v61;
  v50 = v14;
  v58 = v21;
  v59 = v20;
  v57 = v22;
  if (v2 == 8)
  {
    xpc_array_append_value(v19, v20);
    xpc_array_append_value(v19, v21);
    xpc_array_append_value(v19, v22);
    xpc_array_append_value(v19, v23);
    xpc_array_append_value(v19, v24);
    xpc_array_append_value(v19, v25);
    v27 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v27, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v19);
    xpc_dictionary_set_uint64(v27, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 1uLL);
    v28 = v60;
    xpc_array_append_value(v60, v27);
    v43 = xpc_array_create(0, 0);
    v29 = xpc_dictionary_create(0, 0, 0);
    v42 = xpc_array_create(0, 0);
    xpc_uint64_create(0x7EuLL);
    v30 = xpc_dictionary_create(0, 0, 0);
    v31 = v46;
  }

  else
  {
    v41 = xpc_dictionary_create(0, 0, 0);
    v32 = xpc_array_create(0, 0);
    v28 = v60;
    v31 = v46;
    v43 = v32;
    if ((v2 & 0xFFFFFFFE) == 0xA)
    {
      v33 = v32;
      xpc_array_append_value(v32, v20);
      xpc_array_append_value(v33, v58);
      xpc_array_append_value(v33, v57);
      v34 = v25;
      xpc_array_append_value(v33, v25);
      v35 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_value(v35, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v33);
      xpc_dictionary_set_uint64(v35, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 3uLL);
      v40 = v35;
      xpc_array_append_value(v60, v35);
    }

    else
    {
      v40 = xpc_dictionary_create(0, 0, 0);
      v34 = v25;
    }

    v36 = xpc_array_create(0, 0);
    v37 = xpc_uint64_create(0x7EuLL);
    v38 = v2 - 148;
    if (v2 - 148 <= 4 && v2 != 150)
    {
      xpc_array_append_value(v36, v37);
    }

    v39 = xpc_dictionary_create(0, 0, 0);
    v30 = v39;
    v42 = v36;
    if (v38 > 4)
    {
      v26 = v61;
      v25 = v34;
    }

    else
    {
      if (v38 != 2)
      {
        xpc_dictionary_set_value(v39, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v36);
        xpc_dictionary_set_uint64(v30, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 3uLL);
        xpc_array_append_value(v60, v30);
      }

      v26 = v61;
    }

    v29 = v40;
    v27 = v41;
  }

  xpc_dictionary_set_value(v26, "kWCMCellularSetAntBlocking_BandInformationSet", v28);
  [(WCM_CellularController *)self sendMessage:1216 withArgs:v26];
  xpc_release(object);
  xpc_release(v27);
  xpc_release(v29);
  xpc_release(v49);
  xpc_release(v45);
  xpc_release(v30);
  xpc_release(v55);
  xpc_release(v53);
  xpc_release(v54);
  xpc_release(v51);
  xpc_release(v48);
  xpc_release(v47);
  xpc_release(v59);
  xpc_release(v58);
  xpc_release(v57);
  xpc_release(v23);
  xpc_release(v24);
  xpc_release(v25);
  xpc_release(v31);
  xpc_release(v19);
  xpc_release(v43);
  xpc_release(v52);
  xpc_release(v50);
  xpc_release(v42);
  xpc_release(v28);

  xpc_release(v26);
}

- (void)setClientAntBlockingParams22
{
  v2 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v66 = xpc_dictionary_create(0, 0, 0);
  [WCM_Logging logLevel:4 message:@"BB21:Updating WIFI antenna blocking params to cellular modem"];
  v3 = xpc_array_create(0, 0);
  v4 = xpc_dictionary_create(0, 0, 0);
  v64 = xpc_uint64_create(0);
  xpc_dictionary_set_value(v4, "kWCMCellularSetAntBlocking_ClientId", v64);
  v62 = xpc_BOOL_create(0);
  xpc_dictionary_set_value(v4, "kWCMCellularSetAntBlocking_BlockVoice", v62);
  v61 = xpc_uint64_create(0xFAuLL);
  xpc_dictionary_set_value(v4, "kWCMCellularSetAntBlocking_TimeMultiplier", v61);
  v5 = xpc_array_create(0, 0);
  v6 = xpc_array_create(0, 0);
  v7 = xpc_uint64_create(0xCAuLL);
  if (v2 - 19 >= 4)
  {
    object = xpc_dictionary_create(0, 0, 0);
  }

  else
  {
    xpc_array_append_value(v6, v7);
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v8, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v6);
    xpc_dictionary_set_uint64(v8, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 8uLL);
    object = v8;
    xpc_array_append_value(v5, v8);
  }

  v9 = xpc_array_create(0, 0);
  v59 = v6;
  v55 = v9;
  v10 = v3;
  if (v2 - 21 >= 2)
  {
    v54 = xpc_dictionary_create(0, 0, 0);
  }

  else
  {
    v11 = v9;
    xpc_array_append_value(v9, v7);
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v12, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v11);
    xpc_dictionary_set_uint64(v12, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 9uLL);
    v54 = v12;
    xpc_array_append_value(v5, v12);
  }

  v13 = xpc_array_create(0, 0);
  v14 = xpc_uint64_create(0xBFuLL);
  v15 = xpc_uint64_create(0xA0uLL);
  v53 = v13;
  if (v2 - 19 >= 4)
  {
    v50 = xpc_dictionary_create(0, 0, 0);
  }

  else
  {
    xpc_array_append_value(v13, v14);
    xpc_array_append_value(v13, v15);
    v16 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v16, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v13);
    xpc_dictionary_set_uint64(v16, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 4uLL);
    v50 = v16;
    xpc_array_append_value(v5, v16);
  }

  v51 = v15;
  v52 = v14;
  v71 = xpc_array_create(0, 0);
  if (v2 - 154 <= 4 && v2 != 156)
  {
    xpc_array_append_value(v71, v7);
  }

  v70 = xpc_dictionary_create(0, 0, 0);
  v17 = v10;
  if (v2 - 154 <= 4 && v2 != 156)
  {
    xpc_dictionary_set_value(v70, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v71);
    xpc_dictionary_set_uint64(v70, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 3uLL);
    xpc_array_append_value(v5, v70);
  }

  v60 = v5;
  xpc_dictionary_set_value(v4, "kWCMCellularSetAntBlocking_BandInformationSet", v5);
  xpc_array_append_value(v10, v4);
  [WCM_Logging logLevel:4 message:@"BB21:Updating RC1 antenna blocking params to cellular modem"];
  v18 = xpc_dictionary_create(0, 0, 0);
  v49 = xpc_uint64_create(1uLL);
  xpc_dictionary_set_value(v18, "kWCMCellularSetAntBlocking_ClientId", v49);
  v48 = xpc_BOOL_create(1);
  xpc_dictionary_set_value(v18, "kWCMCellularSetAntBlocking_BlockVoice", v48);
  v47 = xpc_uint64_create(0xFAuLL);
  xpc_dictionary_set_value(v18, "kWCMCellularSetAntBlocking_TimeMultiplier", v47);
  v19 = xpc_array_create(0, 0);
  v20 = xpc_array_create(0, 0);
  v21 = xpc_uint64_create(0xBFuLL);
  v69 = xpc_uint64_create(0xA0uLL);
  v68 = xpc_dictionary_create(0, 0, 0);
  if (v2 - 20 <= 2)
  {
    xpc_array_append_value(v20, v69);
    xpc_array_append_value(v20, v21);
    xpc_dictionary_set_value(v68, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v20);
    xpc_dictionary_set_uint64(v68, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 2uLL);
    xpc_array_append_value(v19, v68);
  }

  v44 = v21;
  v45 = v20;
  v57 = v7;
  v65 = v4;
  v22 = xpc_array_create(0, 0);
  v23 = xpc_uint64_create(0xC9uLL);
  v24 = xpc_dictionary_create(0, 0, 0);
  v58 = v2;
  if (v2 == 22)
  {
    xpc_array_append_value(v22, v23);
    xpc_dictionary_set_value(v24, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v22);
    xpc_dictionary_set_uint64(v24, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 4uLL);
    xpc_array_append_value(v19, v24);
  }

  v41 = v24;
  v42 = v23;
  v43 = v22;
  v46 = v19;
  xpc_dictionary_set_value(v18, "kWCMCellularSetAntBlocking_BandInformationSet", v19);
  xpc_array_append_value(v17, v18);
  [WCM_Logging logLevel:4 message:@"BB21:Updating FC1 antenna blocking params to cellular modem"];
  v25 = xpc_dictionary_create(0, 0, 0);
  v40 = xpc_uint64_create(2uLL);
  xpc_dictionary_set_value(v25, "kWCMCellularSetAntBlocking_ClientId", v40);
  v39 = xpc_BOOL_create(1);
  xpc_dictionary_set_value(v25, "kWCMCellularSetAntBlocking_BlockVoice", v39);
  v38 = xpc_uint64_create(0xFAuLL);
  xpc_dictionary_set_value(v25, "kWCMCellularSetAntBlocking_TimeMultiplier", v38);
  v26 = v17;
  xpc_array_append_value(v17, v25);
  [WCM_Logging logLevel:4 message:@"BB22:Updating FC2 antenna blocking params to cellular modem"];
  v27 = xpc_dictionary_create(0, 0, 0);
  v37 = xpc_uint64_create(3uLL);
  xpc_dictionary_set_value(v27, "kWCMCellularSetAntBlocking_ClientId", v37);
  v36 = xpc_BOOL_create(1);
  xpc_dictionary_set_value(v27, "kWCMCellularSetAntBlocking_BlockVoice", v36);
  v35 = xpc_uint64_create(0xFAuLL);
  xpc_dictionary_set_value(v27, "kWCMCellularSetAntBlocking_TimeMultiplier", v35);
  v28 = xpc_array_create(0, 0);
  v29 = xpc_array_create(0, 0);
  v30 = xpc_uint64_create(0xA0uLL);
  v31 = xpc_uint64_create(0xBFuLL);
  v67 = xpc_uint64_create(0x9DuLL);
  v32 = xpc_dictionary_create(0, 0, 0);
  v33 = v30;
  v34 = v31;
  if (v58 != 19)
  {
    if (v58 != 22)
    {
      goto LABEL_24;
    }

    xpc_array_append_value(v29, v30);
    v33 = v31;
    v34 = v67;
  }

  xpc_array_append_value(v29, v33);
  xpc_array_append_value(v29, v34);
  xpc_dictionary_set_value(v32, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v29);
  xpc_dictionary_set_uint64(v32, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 2uLL);
  xpc_array_append_value(v28, v32);
LABEL_24:
  xpc_dictionary_set_value(v27, "kWCMCellularSetAntBlocking_BandInformationSet", v28);
  xpc_array_append_value(v26, v27);
  xpc_dictionary_set_value(v66, "kWCMCellularSetAntBlocking_ClientInformationSet", v26);
  [(WCM_CellularController *)self sendMessage:1221 withArgs:v66];
  xpc_release(object);
  xpc_release(v57);
  xpc_release(v59);
  xpc_release(v54);
  xpc_release(v55);
  xpc_release(v50);
  xpc_release(v52);
  xpc_release(v51);
  xpc_release(v53);
  xpc_release(v70);
  xpc_release(v71);
  xpc_release(v60);
  xpc_release(v65);
  xpc_release(v64);
  xpc_release(v62);
  xpc_release(v61);
  xpc_release(v41);
  xpc_release(v68);
  xpc_release(v42);
  xpc_release(v44);
  xpc_release(v69);
  xpc_release(v43);
  xpc_release(v45);
  xpc_release(v46);
  xpc_release(v18);
  xpc_release(v49);
  xpc_release(v48);
  xpc_release(v47);
  xpc_release(v25);
  xpc_release(v40);
  xpc_release(v39);
  xpc_release(v38);
  xpc_release(v32);
  xpc_release(v30);
  xpc_release(v31);
  xpc_release(v67);
  xpc_release(v29);
  xpc_release(v28);
  xpc_release(v27);
  xpc_release(v37);
  xpc_release(v36);
  xpc_release(v35);
  xpc_release(v66);

  xpc_release(v26);
}

- (void)setClientAntBlockingParams
{
  v2 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v3 = xpc_dictionary_create(0, 0, 0);
  [WCM_Logging logLevel:4 message:@"BB21:Updating WIFI antenna blocking params to cellular modem"];
  xarray = xpc_array_create(0, 0);
  v4 = xpc_dictionary_create(0, 0, 0);
  v98 = xpc_uint64_create(0);
  xpc_dictionary_set_value(v4, "kWCMCellularSetAntBlocking_ClientId", v98);
  v97 = xpc_BOOL_create(0);
  xpc_dictionary_set_value(v4, "kWCMCellularSetAntBlocking_BlockVoice", v97);
  v96 = xpc_uint64_create(0xFAuLL);
  xpc_dictionary_set_value(v4, "kWCMCellularSetAntBlocking_TimeMultiplier", v96);
  v5 = xpc_array_create(0, 0);
  v6 = xpc_array_create(0, 0);
  v7 = xpc_uint64_create(0xCAuLL);
  v8 = v2 - 13;
  v93 = v6;
  v110 = v7;
  if (v2 - 13 >= 4)
  {
    object = xpc_dictionary_create(0, 0, 0);
  }

  else
  {
    xpc_array_append_value(v6, v7);
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v9, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v6);
    xpc_dictionary_set_uint64(v9, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 8uLL);
    object = v9;
    xpc_array_append_value(v5, v9);
  }

  v10 = xpc_array_create(0, 0);
  v11 = xpc_uint64_create(0x78uLL);
  v12 = xpc_uint64_create(0x79uLL);
  v13 = xpc_uint64_create(0x7AuLL);
  v88 = xpc_uint64_create(0x90uLL);
  v14 = xpc_uint64_create(0x9EuLL);
  v116 = v10;
  v91 = v11;
  v87 = v14;
  if (v2 == 14)
  {
    v15 = v14;
    xpc_array_append_value(v10, v11);
    xpc_array_append_value(v10, v12);
    v16 = v15;
LABEL_7:
    xpc_array_append_value(v10, v16);
    v17 = xpc_dictionary_create(0, 0, 0);
LABEL_8:
    xpc_dictionary_set_value(v17, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v10);
    xpc_dictionary_set_uint64(v17, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 3uLL);
    xpc_array_append_value(v5, v17);
    goto LABEL_9;
  }

  v16 = v13;
  if ((v2 | 2) == 0xF)
  {
    goto LABEL_7;
  }

  v17 = xpc_dictionary_create(0, 0, 0);
  if (v8 <= 3)
  {
    goto LABEL_8;
  }

LABEL_9:
  v18 = xpc_array_create(0, 0);
  v19 = xpc_uint64_create(0x9FuLL);
  v100 = v3;
  v90 = v12;
  v83 = v19;
  if (v2 == 144)
  {
    v20 = 0;
    v21 = v19;
    goto LABEL_13;
  }

  if (v2 == 127)
  {
    v20 = 1;
    v21 = v110;
LABEL_13:
    xpc_array_append_value(v18, v21);
    v22 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v22, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v18);
    xpc_dictionary_set_uint64(v22, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 6uLL);
    v82 = v22;
    xpc_array_append_value(v5, v22);
    v23 = xpc_array_create(0, 0);
    v77 = 0;
    goto LABEL_14;
  }

  v82 = xpc_dictionary_create(0, 0, 0);
  v42 = xpc_array_create(0, 0);
  v23 = v42;
  if (v2 == 146)
  {
    xpc_array_append_value(v42, v110);
    v20 = 0;
    v77 = 1;
  }

  else
  {
    v77 = 0;
    v20 = 0;
  }

LABEL_14:
  v109 = xpc_uint64_create(0xA8uLL);
  v108 = xpc_uint64_create(0xB8uLL);
  v107 = xpc_uint64_create(0xC2uLL);
  if (v20)
  {
    xpc_array_append_value(v23, v13);
    xpc_array_append_value(v23, v109);
    xpc_array_append_value(v23, v108);
    xpc_array_append_value(v23, v107);
  }

  v84 = v18;
  v89 = v13;
  v112 = xpc_dictionary_create(0, 0, 0);
  if (v2 == 146 || v2 == 127)
  {
    xpc_dictionary_set_value(v112, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v23);
    xpc_dictionary_set_uint64(v112, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 4uLL);
    xpc_array_append_value(v5, v112);
  }

  v24 = xpc_array_create(0, 0);
  v25 = xpc_uint64_create(0xA0uLL);
  v26 = xpc_uint64_create(0xBFuLL);
  v78 = v26;
  v79 = v25;
  if (v20)
  {
    v27 = v26;
    xpc_array_append_value(v24, v25);
    xpc_array_append_value(v24, v27);
    v28 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v28, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v24);
    xpc_dictionary_set_uint64(v28, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 3uLL);
    v73 = v28;
    xpc_array_append_value(v5, v28);
  }

  else
  {
    v73 = xpc_dictionary_create(0, 0, 0);
  }

  v80 = v24;
  v29 = v17;
  if (v8 < 4 || v2 - 127 <= 0x13 && ((1 << (v2 - 127)) & 0xA0001) != 0)
  {
    xpc_dictionary_set_value(v4, "kWCMCellularSetAntBlocking_BandInformationSet", v5);
  }

  xpc_array_append_value(xarray, v4);
  [WCM_Logging logLevel:4 message:@"BB21:Updating RC1 antenna blocking params to cellular modem"];
  v30 = xpc_dictionary_create(0, 0, 0);
  v75 = xpc_uint64_create(1uLL);
  xpc_dictionary_set_value(v30, "kWCMCellularSetAntBlocking_ClientId", v75);
  v74 = xpc_BOOL_create(1);
  xpc_dictionary_set_value(v30, "kWCMCellularSetAntBlocking_BlockVoice", v74);
  v72 = xpc_uint64_create(0xFAuLL);
  xpc_dictionary_set_value(v30, "kWCMCellularSetAntBlocking_TimeMultiplier", v72);
  v117 = xpc_array_create(0, 0);
  v106 = xpc_array_create(0, 0);
  v105 = xpc_uint64_create(0xCAuLL);
  v104 = xpc_dictionary_create(0, 0, 0);
  if (v8 <= 3)
  {
    xpc_array_append_value(v106, v105);
    v29 = v17;
    xpc_dictionary_set_value(v104, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v106);
    xpc_dictionary_set_uint64(v104, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 8uLL);
    xpc_array_append_value(v117, v104);
  }

  v85 = v29;
  v81 = v23;
  v31 = xpc_array_create(0, 0);
  v32 = xpc_uint64_create(0xBFuLL);
  v102 = xpc_uint64_create(0xA0uLL);
  v111 = xpc_dictionary_create(0, 0, 0);
  v70 = v32;
  if (v8 <= 2 && (xpc_array_append_value(v31, v32), v2 == 13))
  {
    v33 = v4;
    xpc_array_append_value(v31, v102);
  }

  else
  {
    v33 = v4;
    if ((v2 & 0xFFFFFFFE) != 0xE)
    {
      goto LABEL_33;
    }
  }

  xpc_dictionary_set_value(v111, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v31);
  xpc_dictionary_set_uint64(v111, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 2uLL);
  xpc_array_append_value(v117, v111);
LABEL_33:
  v34 = xpc_array_create(0, 0);
  v35 = xpc_uint64_create(0xC9uLL);
  v36 = xpc_dictionary_create(0, 0, 0);
  v94 = v5;
  v68 = v35;
  v66 = v36;
  if (v2 == 14)
  {
    v37 = 1;
    v38 = v36;
    xpc_array_append_value(v34, v35);
    xpc_dictionary_set_value(v38, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v34);
    xpc_dictionary_set_uint64(v38, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 4uLL);
    xpc_array_append_value(v117, v38);
LABEL_36:
    xpc_dictionary_set_value(v30, "kWCMCellularSetAntBlocking_BandInformationSet", v117);
    goto LABEL_37;
  }

  v37 = v2 - 13;
  if (v8 <= 3)
  {
    goto LABEL_36;
  }

LABEL_37:
  xpc_array_append_value(xarray, v30);
  [WCM_Logging logLevel:4 message:@"BB21:Updating FC1 antenna blocking params to cellular modem"];
  v39 = xpc_dictionary_create(0, 0, 0);
  v67 = xpc_uint64_create(2uLL);
  xpc_dictionary_set_value(v39, "kWCMCellularSetAntBlocking_ClientId", v67);
  v65 = xpc_BOOL_create(1);
  xpc_dictionary_set_value(v39, "kWCMCellularSetAntBlocking_BlockVoice", v65);
  v64 = xpc_uint64_create(0xFAuLL);
  xpc_dictionary_set_value(v39, "kWCMCellularSetAntBlocking_TimeMultiplier", v64);
  v40 = xpc_array_create(0, 0);
  v41 = xpc_array_create(0, 0);
  v115 = xpc_uint64_create(0xCAuLL);
  v113 = xpc_uint64_create(0xC8uLL);
  v101 = xpc_uint64_create(0xC9uLL);
  v114 = xpc_dictionary_create(0, 0, 0);
  if (v37 < 2)
  {
    goto LABEL_40;
  }

  if (v2 == 15)
  {
    goto LABEL_41;
  }

  if (v2 == 16)
  {
LABEL_40:
    xpc_array_append_value(v41, v115);
    xpc_array_append_value(v41, v113);
    if (v2 != 15)
    {
LABEL_48:
      xpc_dictionary_set_value(v114, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v41);
      xpc_dictionary_set_uint64(v114, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 8uLL);
      xpc_array_append_value(v40, v114);
      xpc_dictionary_set_value(v39, "kWCMCellularSetAntBlocking_BandInformationSet", v40);
      xpc_array_append_value(xarray, v39);
      goto LABEL_49;
    }

LABEL_41:
    xpc_array_append_value(v41, v115);
    goto LABEL_48;
  }

  if (v2 - 19 <= 1)
  {
    xpc_array_append_value(v41, v115);
    xpc_array_append_value(v41, v113);
    xpc_array_append_value(v41, v101);
  }

  if (v2 <= 0x14 && ((1 << v2) & 0x190000) != 0)
  {
    goto LABEL_48;
  }

LABEL_49:
  v62 = v41;
  v63 = v40;
  v69 = v34;
  v71 = v31;
  v76 = v30;
  v99 = v33;
  [WCM_Logging logLevel:4 message:@"BB21:Updating FC2 antenna blocking params to cellular modem"];
  v43 = xpc_dictionary_create(0, 0, 0);
  v61 = xpc_uint64_create(3uLL);
  xpc_dictionary_set_value(v43, "kWCMCellularSetAntBlocking_ClientId", v61);
  v60 = xpc_BOOL_create(1);
  xpc_dictionary_set_value(v43, "kWCMCellularSetAntBlocking_BlockVoice", v60);
  v59 = xpc_uint64_create(0xFAuLL);
  xpc_dictionary_set_value(v43, "kWCMCellularSetAntBlocking_TimeMultiplier", v59);
  v44 = xpc_array_create(0, 0);
  v45 = xpc_array_create(0, 0);
  v46 = xpc_uint64_create(0xA0uLL);
  v47 = xpc_uint64_create(0xBFuLL);
  v48 = xpc_dictionary_create(0, 0, 0);
  if (v2 == 20 || v2 == 13)
  {
    xpc_array_append_value(v45, v46);
    xpc_array_append_value(v45, v47);
    xpc_dictionary_set_value(v48, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v45);
    xpc_dictionary_set_uint64(v48, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 2uLL);
    xpc_array_append_value(v44, v48);
    xpc_dictionary_set_value(v43, "kWCMCellularSetAntBlocking_BandInformationSet", v44);
    xpc_array_append_value(xarray, v43);
  }

  v57 = v47;
  v58 = v44;
  [WCM_Logging logLevel:4 message:@"BB21:Updating JPN REG CLIENT antenna blocking params to cellular modem"];
  v49 = xpc_dictionary_create(0, 0, 0);
  v56 = xpc_uint64_create(2uLL);
  xpc_dictionary_set_value(v49, "kWCMCellularSetAntBlocking_ClientId", v56);
  v55 = xpc_BOOL_create(0);
  xpc_dictionary_set_value(v49, "kWCMCellularSetAntBlocking_BlockVoice", v55);
  v54 = xpc_uint64_create(0xFAuLL);
  xpc_dictionary_set_value(v49, "kWCMCellularSetAntBlocking_TimeMultiplier", v54);
  v50 = xpc_array_create(0, 0);
  v51 = xpc_array_create(0, 0);
  v52 = xpc_uint64_create(0xC8uLL);
  v103 = xpc_uint64_create(0xC9uLL);
  v53 = xpc_dictionary_create(0, 0, 0);
  if (v77)
  {
    xpc_array_append_value(v51, v52);
    xpc_array_append_value(v51, v103);
    xpc_dictionary_set_value(v53, "kWCMCellularSetAntBlocking_BandInfoSet_BandList", v51);
    xpc_dictionary_set_uint64(v53, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum", 6uLL);
    xpc_array_append_value(v50, v53);
    xpc_dictionary_set_value(v49, "kWCMCellularSetAntBlocking_BandInformationSet", v50);
    xpc_array_append_value(xarray, v49);
  }

  xpc_dictionary_set_value(v100, "kWCMCellularSetAntBlocking_ClientInformationSet", xarray);
  [(WCM_CellularController *)self sendMessage:1221 withArgs:v100];
  xpc_release(object);
  xpc_release(v110);
  xpc_release(v93);
  xpc_release(v94);
  xpc_release(v85);
  xpc_release(v91);
  xpc_release(v90);
  xpc_release(v89);
  xpc_release(v88);
  xpc_release(v87);
  xpc_release(v116);
  xpc_release(v82);
  xpc_release(v83);
  xpc_release(v84);
  xpc_release(v112);
  xpc_release(v81);
  xpc_release(v73);
  xpc_release(v79);
  xpc_release(v78);
  xpc_release(v80);
  xpc_release(v109);
  xpc_release(v108);
  xpc_release(v107);
  xpc_release(v99);
  xpc_release(v98);
  xpc_release(v97);
  xpc_release(v96);
  xpc_release(v104);
  xpc_release(v111);
  xpc_release(v66);
  xpc_release(v105);
  xpc_release(v70);
  xpc_release(v68);
  xpc_release(v102);
  xpc_release(v106);
  xpc_release(v71);
  xpc_release(v69);
  xpc_release(v117);
  xpc_release(v76);
  xpc_release(v75);
  xpc_release(v74);
  xpc_release(v72);
  xpc_release(v114);
  xpc_release(v115);
  xpc_release(v113);
  xpc_release(v101);
  xpc_release(v62);
  xpc_release(v63);
  xpc_release(v39);
  xpc_release(v67);
  xpc_release(v65);
  xpc_release(v64);
  xpc_release(v48);
  xpc_release(v57);
  xpc_release(v46);
  xpc_release(v45);
  xpc_release(v58);
  xpc_release(v43);
  xpc_release(v61);
  xpc_release(v60);
  xpc_release(v59);
  xpc_release(v53);
  xpc_release(v52);
  xpc_release(v103);
  xpc_release(v51);
  xpc_release(v50);
  xpc_release(v49);
  xpc_release(v56);
  xpc_release(v55);
  xpc_release(v54);
  xpc_release(v100);

  xpc_release(xarray);
}

- (void)sendBBCoexSensorMessage:(int)message band:(unsigned __int8)band usecase:(unsigned __int8)usecase
{
  usecaseCopy = usecase;
  bandCopy = band;
  v7 = *&message;
  [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v21 = xpc_dictionary_create(0, 0, 0);
  v9 = xpc_uint64_create(v7);
  v10 = xpc_array_create(0, 0);
  v11 = xpc_dictionary_create(0, 0, 0);
  v12 = xpc_array_create(0, 0);
  selfCopy = self;
  v13 = &self->_cellularInstance1.cellBandInfo + 1;
  v14 = v13 + 5;
  [WCM_Logging logLevel:4 message:@"BB21: Requests to send sensor info st %d band %d uc %d to BB %d %d", v7, bandCopy, usecaseCopy, *(v13 + v7), *(v13 + v7 + 5)];
  if (*(v13 + v7) != bandCopy || (v14[v7] != usecaseCopy ? (v15 = bandCopy == 0) : (v15 = 1), !v15))
  {
    *(v13 + v7) = bandCopy;
    v14[v7] = usecaseCopy;
    v16 = xpc_uint64_create(bandCopy);
    xpc_array_append_value(v10, v16);
    v17 = xpc_uint64_create(usecaseCopy);
    xpc_array_append_value(v10, v17);
    xpc_dictionary_set_value(v11, "kWCMCellularTransparentMessage_Type", v9);
    xpc_dictionary_set_value(v11, "kWCMCellularTransparentMessage_ByteList", v10);
    xpc_array_append_value(v12, v11);
    xpc_dictionary_set_value(v21, "kWCMCellularTransparentMessageInformationSet", v12);
    [(WCM_CellularController *)selfCopy sendMessage:1223 withArgs:v21];
    if (xpc_array_get_count(v10))
    {
      v18 = 0;
      do
      {
        value = xpc_array_get_value(v10, v18);
        xpc_release(value);
        ++v18;
      }

      while (xpc_array_get_count(v10) > v18);
    }
  }

  xpc_release(v11);
  xpc_release(v9);
  xpc_release(v21);
  xpc_release(v12);

  xpc_release(v10);
}

- (void)setWci2TxAntMap
{
  v3 = xpc_array_create(0, 0);
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = +[WCM_PolicyManager singleton];
  [WCM_Logging logLevel:4 message:@"BB20:Updating antenna map params to cellular modem"];
  xpc_dictionary_set_uint64(v4, "kWCMCellularSetWCI2TxAntMap_Enable", 1uLL);
  xpc_dictionary_set_uint64(v4, "kWCMCellularSetWCI2TxAntMap_DefaultIdx", 0);
  if ([objc_msgSend(v5 "activeCoexFeatures")])
  {
    [WCM_Logging logLevel:4 message:@"Enable type7 mmWave TX on bit"];
    xpc_dictionary_set_uint64(v4, "kWCMCellularSetWCI2Type7FRTwoTxEnable", 1uLL);
    for (i = 0; i != 10; ++i)
    {
      v7 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v7, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx", i);
      v8 = i - 5 < 2;
      if (i == 4)
      {
        v8 = 0;
      }

      if ((i & 0xE) == 2)
      {
        v9 = 3;
      }

      else
      {
        v9 = v8;
      }

      if (i == 1)
      {
        v10 = 2;
      }

      else
      {
        v10 = v9;
      }

      xpc_dictionary_set_uint64(v7, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx", v10);
      xpc_array_append_value(v3, v7);
    }
  }

  else
  {
    for (j = -3; j != 7; ++j)
    {
      v12 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v12, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx", j + 3);
      v13 = (j + 3);
      if ((j + 3) <= 6)
      {
        v14 = 0;
      }

      else
      {
        v14 = j;
      }

      if (v13 == 6)
      {
        v14 = 1;
      }

      if (v13 == 5)
      {
        v15 = 2;
      }

      else
      {
        v15 = v14;
      }

      if ((j + 2) >= 4)
      {
        v16 = v15;
      }

      else
      {
        v16 = j + 2;
      }

      xpc_dictionary_set_uint64(v12, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx", v16);
      xpc_array_append_value(v3, v12);
    }
  }

  xpc_dictionary_set_value(v4, "kWCMCellularSetWCI2TxAntMap_InformationSet", v3);
  [(WCM_CellularController *)self sendMessage:1215 withArgs:v4];
  if (xpc_array_get_count(v3))
  {
    v17 = 0;
    do
    {
      value = xpc_array_get_value(v3, v17);
      xpc_release(value);
      ++v17;
    }

    while (v17 < xpc_array_get_count(v3));
  }

  xpc_release(v3);

  xpc_release(v4);
}

- (void)setWci2TxAntMapBB21
{
  v3 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v4 = xpc_array_create(0, 0);
  v5 = xpc_dictionary_create(0, 0, 0);
  [WCM_Logging logLevel:4 message:@"BB21WCI2AntDebug_:Updating antenna map params to cellular modem"];
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2TxAntMap_Enable", 1uLL);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2TxAntMap_DefaultIdx", 0);
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [WCM_Logging logLevel:4 message:@"BB21WCI2AntDebug_: Enable ARBuffer mmW TX on bit"];
    xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Type7FRTwoTxEnable", 1uLL);
  }

  selfCopy = self;
  if (v3 == 146)
  {
    v53[0] = @"Ant-1a";
    v54[0] = [NSNumber numberWithInt:1];
    v53[1] = @"Ant-1b";
    v54[1] = [NSNumber numberWithInt:2];
    v53[2] = @"Ant-2a";
    v54[2] = [NSNumber numberWithInt:3];
    v53[3] = @"Ant-2b";
    v54[3] = [NSNumber numberWithInt:4];
    v53[4] = @"Ant-3a";
    v54[4] = [NSNumber numberWithInt:5];
    v53[5] = @"Ant-3b";
    v54[5] = [NSNumber numberWithInt:6];
    v53[6] = @"Ant-4";
    v54[6] = [NSNumber numberWithInt:7];
    v12 = [NSDictionary dictionaryWithObjects:v54 forKeys:v53 count:7];
    v51[0] = @"Ant-1a";
    v52[0] = [NSNumber numberWithInt:0];
    v51[1] = @"Ant-1b";
    v52[1] = [NSNumber numberWithInt:1];
    v51[2] = @"Ant-2a";
    v52[2] = [NSNumber numberWithInt:2];
    v51[3] = @"Ant-2b";
    v52[3] = [NSNumber numberWithInt:3];
    v51[4] = @"Ant-3a";
    v52[4] = [NSNumber numberWithInt:4];
    v51[5] = @"Ant-3b";
    v52[5] = [NSNumber numberWithInt:5];
    v51[6] = @"Ant-4";
    v52[6] = [NSNumber numberWithInt:6];
    v13 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:7];
    for (i = 0; i != 10; ++i)
    {
      v15 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v15, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx", i);
      v16 = [(NSDictionary *)v12 allKeysForObject:[NSNumber numberWithInt:i]];
      if ([(NSArray *)v16 count])
      {
        v17 = [-[NSDictionary objectForKey:](v13 objectForKey:{-[NSArray objectAtIndexedSubscript:](v16, "objectAtIndexedSubscript:", 0)), "intValue"}];
      }

      else
      {
        v17 = 0;
      }

      xpc_dictionary_set_uint64(v15, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx", v17);
      xpc_array_append_value(v4, v15);
    }
  }

  else if (v3 == 144)
  {
    v57[0] = @"Ant-1a";
    v58[0] = [NSNumber numberWithInt:1];
    v57[1] = @"Ant-1b";
    v58[1] = [NSNumber numberWithInt:2];
    v57[2] = @"Ant-2";
    v58[2] = [NSNumber numberWithInt:3];
    v57[3] = @"Ant-3a";
    v58[3] = [NSNumber numberWithInt:4];
    v57[4] = @"Ant-3b";
    v58[4] = [NSNumber numberWithInt:5];
    v57[5] = @"Ant-4";
    v58[5] = [NSNumber numberWithInt:6];
    v57[6] = @"Ant-5T";
    v58[6] = [NSNumber numberWithInt:7];
    v6 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:7];
    v55[0] = @"Ant-1a";
    v56[0] = [NSNumber numberWithInt:0];
    v55[1] = @"Ant-1b";
    v56[1] = [NSNumber numberWithInt:1];
    v55[2] = @"Ant-2";
    v56[2] = [NSNumber numberWithInt:2];
    v55[3] = @"Ant-3a";
    v56[3] = [NSNumber numberWithInt:3];
    v55[4] = @"Ant-3b";
    v56[4] = [NSNumber numberWithInt:4];
    v55[5] = @"Ant-4";
    v56[5] = [NSNumber numberWithInt:5];
    v55[6] = @"Ant-5T";
    v56[6] = [NSNumber numberWithInt:6];
    v7 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:7];
    for (j = 0; j != 10; ++j)
    {
      v9 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v9, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx", j);
      v10 = [(NSDictionary *)v6 allKeysForObject:[NSNumber numberWithInt:j]];
      if ([(NSArray *)v10 count])
      {
        v11 = [-[NSDictionary objectForKey:](v7 objectForKey:{-[NSArray objectAtIndexedSubscript:](v10, "objectAtIndexedSubscript:", 0)), "intValue"}];
      }

      else
      {
        v11 = 0;
      }

      xpc_dictionary_set_uint64(v9, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx", v11);
      xpc_array_append_value(v4, v9);
    }
  }

  else if (v3 - 13 > 3)
  {
    if (v3 == 127)
    {
      v41[0] = @"Ant-1a";
      v42[0] = [NSNumber numberWithInt:7];
      v41[1] = @"Ant-1b";
      v42[1] = [NSNumber numberWithInt:4];
      v41[2] = @"Ant-2a";
      v42[2] = [NSNumber numberWithInt:8];
      v41[3] = @"Ant-2b";
      v42[3] = [NSNumber numberWithInt:2];
      v41[4] = @"Ant-3a";
      v42[4] = [NSNumber numberWithInt:3];
      v41[5] = @"Ant-3b";
      v42[5] = [NSNumber numberWithInt:6];
      v41[6] = @"Ant-4";
      v42[6] = [NSNumber numberWithInt:1];
      v30 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:7];
      v39[0] = @"Ant-1a";
      v40[0] = [NSNumber numberWithInt:0];
      v39[1] = @"Ant-1b";
      v40[1] = [NSNumber numberWithInt:1];
      v39[2] = @"Ant-2a";
      v40[2] = [NSNumber numberWithInt:2];
      v39[3] = @"Ant-2b";
      v40[3] = [NSNumber numberWithInt:3];
      v39[4] = @"Ant-3a";
      v40[4] = [NSNumber numberWithInt:4];
      v39[5] = @"Ant-3b";
      v40[5] = [NSNumber numberWithInt:5];
      v39[6] = @"Ant-4";
      v40[6] = [NSNumber numberWithInt:6];
      v31 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:7];
      for (k = 0; k != 10; ++k)
      {
        v33 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v33, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx", k);
        v34 = [(NSDictionary *)v30 allKeysForObject:[NSNumber numberWithInt:k]];
        if ([(NSArray *)v34 count])
        {
          v35 = [-[NSDictionary objectForKey:](v31 objectForKey:{-[NSArray objectAtIndexedSubscript:](v34, "objectAtIndexedSubscript:", 0)), "intValue"}];
        }

        else
        {
          v35 = 0;
        }

        xpc_dictionary_set_uint64(v33, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx", v35);
        xpc_array_append_value(v4, v33);
      }
    }

    else if (v3 == 18)
    {
      v45[0] = @"Ant-1";
      v46[0] = [NSNumber numberWithInt:1];
      v45[1] = @"Ant-2";
      v46[1] = [NSNumber numberWithInt:2];
      v45[2] = @"Ant-3";
      v46[2] = [NSNumber numberWithInt:3];
      v45[3] = @"Ant-4";
      v46[3] = [NSNumber numberWithInt:4];
      v45[4] = @"Ant-6";
      v46[4] = [NSNumber numberWithInt:6];
      v24 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:5];
      v43[0] = @"Ant-1";
      v44[0] = [NSNumber numberWithInt:0];
      v43[1] = @"Ant-2";
      v44[1] = [NSNumber numberWithInt:1];
      v43[2] = @"Ant-3";
      v44[2] = [NSNumber numberWithInt:2];
      v43[3] = @"Ant-4";
      v44[3] = [NSNumber numberWithInt:3];
      v43[4] = @"Ant-6";
      v44[4] = [NSNumber numberWithInt:4];
      v25 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:5];
      for (m = 0; m != 10; ++m)
      {
        v27 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v27, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx", m);
        v28 = [(NSDictionary *)v24 allKeysForObject:[NSNumber numberWithInt:m]];
        if ([(NSArray *)v28 count])
        {
          v29 = [-[NSDictionary objectForKey:](v25 objectForKey:{-[NSArray objectAtIndexedSubscript:](v28, "objectAtIndexedSubscript:", 0)), "intValue"}];
        }

        else
        {
          v29 = 0;
        }

        xpc_dictionary_set_uint64(v27, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx", v29);
        xpc_array_append_value(v4, v27);
      }
    }

    else
    {
      [WCM_Logging logLevel:1 message:@"BB21: platformID not defined to configure CellTxAntIdx over the bus"];
    }
  }

  else
  {
    v49[0] = @"Ant-1";
    v50[0] = [NSNumber numberWithInt:1];
    v49[1] = @"Ant-2";
    v50[1] = [NSNumber numberWithInt:2];
    v49[2] = @"Ant-3";
    v50[2] = [NSNumber numberWithInt:3];
    v49[3] = @"Ant-4";
    v50[3] = [NSNumber numberWithInt:4];
    v49[4] = @"Ant-7";
    v50[4] = [NSNumber numberWithInt:7];
    v49[5] = @"Ant-8";
    v50[5] = [NSNumber numberWithInt:8];
    v49[6] = @"Ant-9";
    v50[6] = [NSNumber numberWithInt:9];
    v18 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:7];
    v47[0] = @"Ant-1";
    v48[0] = [NSNumber numberWithInt:0];
    v47[1] = @"Ant-2";
    v48[1] = [NSNumber numberWithInt:2];
    v47[2] = @"Ant-3";
    v48[2] = [NSNumber numberWithInt:4];
    v47[3] = @"Ant-4";
    v48[3] = [NSNumber numberWithInt:6];
    v47[4] = @"Ant-7";
    v48[4] = [NSNumber numberWithInt:0];
    v47[5] = @"Ant-8";
    v48[5] = [NSNumber numberWithInt:2];
    v47[6] = @"Ant-9";
    v48[6] = [NSNumber numberWithInt:4];
    v19 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:7];
    for (n = 0; n != 10; ++n)
    {
      v21 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v21, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx", n);
      v22 = [(NSDictionary *)v18 allKeysForObject:[NSNumber numberWithInt:n]];
      if ([(NSArray *)v22 count])
      {
        v23 = [-[NSDictionary objectForKey:](v19 objectForKey:{-[NSArray objectAtIndexedSubscript:](v22, "objectAtIndexedSubscript:", 0)), "intValue"}];
      }

      else
      {
        v23 = 0;
      }

      xpc_dictionary_set_uint64(v21, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx", v23);
      xpc_array_append_value(v4, v21);
    }
  }

  xpc_dictionary_set_value(v5, "kWCMCellularSetWCI2TxAntMap_InformationSet", v4);
  [(WCM_CellularController *)selfCopy sendMessage:1215 withArgs:v5];
  if (xpc_array_get_count(v4))
  {
    v36 = 0;
    do
    {
      value = xpc_array_get_value(v4, v36);
      xpc_release(value);
      ++v36;
    }

    while (v36 < xpc_array_get_count(v4));
  }

  xpc_release(v4);
  xpc_release(v5);
}

- (void)ConstructAntennaMapXpcMsg:(id)msg AntPhyIdxDict:(id)dict AntSpmiIdxDict:(id)idxDict
{
  if (msg && dict && idxDict)
  {
    for (i = 0; i != 10; ++i)
    {
      v9 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v9, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx", i);
      v10 = [dict allKeysForObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", i)}];
      if ([v10 count])
      {
        v11 = [objc_msgSend(idxDict objectForKey:{objc_msgSend(v10, "objectAtIndexedSubscript:", 0)), "intValue"}];
      }

      else
      {
        v11 = 0;
      }

      xpc_dictionary_set_uint64(v9, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx", v11);
      xpc_array_append_value(msg, v9);
    }
  }
}

- (void)setWci2TxAntMapBB22
{
  v2 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v3 = xpc_array_create(0, 0);
  v4 = xpc_dictionary_create(0, 0, 0);
  [WCM_Logging logLevel:4 message:@"BB22AntMapping_:Updating antenna map params to cellular modem"];
  xpc_dictionary_set_uint64(v4, "kWCMCellularSetWCI2TxAntMap_Enable", 1uLL);
  xpc_dictionary_set_uint64(v4, "kWCMCellularSetWCI2TxAntMap_DefaultIdx", 0);
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [WCM_Logging logLevel:4 message:@"BB22WCI2AntDebug_: Enable ARBuffer mmW TX on bit"];
    xpc_dictionary_set_uint64(v4, "kWCMCellularSetWCI2Type7FRTwoTxEnable", 1uLL);
  }

  xdict = v4;
  if (v2 <= 153)
  {
    if (v2 <= 0x3D && ((1 << v2) & 0x3FFC000000780000) != 0)
    {
      v47[0] = @"Ant-1";
      v48[0] = [NSNumber numberWithInt:1];
      v47[1] = @"Ant-2";
      v48[1] = [NSNumber numberWithInt:2];
      v47[2] = @"Ant-3";
      v48[2] = [NSNumber numberWithInt:3];
      v47[3] = @"Ant-4";
      v48[3] = [NSNumber numberWithInt:4];
      v47[4] = @"Ant-7";
      v48[4] = [NSNumber numberWithInt:7];
      v47[5] = @"Ant-8";
      v48[5] = [NSNumber numberWithInt:8];
      v47[6] = @"Ant-9";
      v48[6] = [NSNumber numberWithInt:9];
      v5 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:7];
      v45[0] = @"Ant-1";
      v46[0] = [NSNumber numberWithInt:0];
      v45[1] = @"Ant-2";
      v46[1] = [NSNumber numberWithInt:2];
      v45[2] = @"Ant-3";
      v46[2] = [NSNumber numberWithInt:4];
      v45[3] = @"Ant-4";
      v46[3] = [NSNumber numberWithInt:6];
      v45[4] = @"Ant-7";
      v46[4] = [NSNumber numberWithInt:0];
      v45[5] = @"Ant-8";
      v46[5] = [NSNumber numberWithInt:2];
      v45[6] = @"Ant-9";
      v46[6] = [NSNumber numberWithInt:4];
      v6 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:7];
      for (i = 0; i != 10; ++i)
      {
        v8 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v8, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx", i);
        v9 = [(NSDictionary *)v5 allKeysForObject:[NSNumber numberWithInt:i]];
        if ([(NSArray *)v9 count])
        {
          v10 = [-[NSDictionary objectForKey:](v6 objectForKey:{-[NSArray objectAtIndexedSubscript:](v9, "objectAtIndexedSubscript:", 0)), "intValue"}];
        }

        else
        {
          v10 = 0;
        }

        xpc_dictionary_set_uint64(v8, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx", v10);
        xpc_array_append_value(v3, v8);
      }

      goto LABEL_35;
    }

    goto LABEL_39;
  }

  if (v2 > 163)
  {
    if (v2 <= 167)
    {
      if (v2 != 164)
      {
        if (v2 != 166)
        {
          goto LABEL_39;
        }

        v35[0] = @"Ant-1a";
        v36[0] = [NSNumber numberWithInt:6];
        v35[1] = @"Ant-1b";
        v36[1] = [NSNumber numberWithInt:4];
        v35[2] = @"Ant-2";
        v36[2] = [NSNumber numberWithInt:2];
        v35[3] = @"Ant-3a";
        v36[3] = [NSNumber numberWithInt:5];
        v35[4] = @"Ant-3b";
        v36[4] = [NSNumber numberWithInt:3];
        v35[5] = @"Ant-4";
        v36[5] = [NSNumber numberWithInt:1];
        v35[6] = @"Ant-5T";
        v36[6] = [NSNumber numberWithInt:7];
        v17 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:7];
        v33[0] = @"Ant-1a";
        v34[0] = [NSNumber numberWithInt:0];
        v33[1] = @"Ant-1b";
        v34[1] = [NSNumber numberWithInt:1];
        v33[2] = @"Ant-2";
        v34[2] = [NSNumber numberWithInt:2];
        v33[3] = @"Ant-3a";
        v34[3] = [NSNumber numberWithInt:3];
        v33[4] = @"Ant-3b";
        v34[4] = [NSNumber numberWithInt:4];
        v33[5] = @"Ant-4";
        v34[5] = [NSNumber numberWithInt:5];
        v18 = v34;
        v19 = v33;
LABEL_30:
        v20 = 6;
        goto LABEL_34;
      }
    }

    else
    {
      if (v2 == 168)
      {
LABEL_32:
        v43[0] = @"Ant-1a";
        v44[0] = [NSNumber numberWithInt:7, v4];
        v43[1] = @"Ant-1b";
        v44[1] = [NSNumber numberWithInt:4];
        v43[2] = @"Ant-2a";
        v44[2] = [NSNumber numberWithInt:6];
        v43[3] = @"Ant-2b";
        v44[3] = [NSNumber numberWithInt:2];
        v43[4] = @"Ant-3a";
        v44[4] = [NSNumber numberWithInt:3];
        v43[5] = @"Ant-3b";
        v44[5] = [NSNumber numberWithInt:5];
        v43[6] = @"Ant-4";
        v44[6] = [NSNumber numberWithInt:1];
        v17 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:7];
        v41[0] = @"Ant-1a";
        v42[0] = [NSNumber numberWithInt:0];
        v41[1] = @"Ant-1b";
        v42[1] = [NSNumber numberWithInt:1];
        v41[2] = @"Ant-2a";
        v42[2] = [NSNumber numberWithInt:2];
        v41[3] = @"Ant-2b";
        v42[3] = [NSNumber numberWithInt:3];
        v41[4] = @"Ant-3a";
        v42[4] = [NSNumber numberWithInt:4];
        v41[5] = @"Ant-3b";
        v42[5] = [NSNumber numberWithInt:5];
        v41[6] = @"Ant-4";
        v42[6] = [NSNumber numberWithInt:6];
        v18 = v42;
        v19 = v41;
        goto LABEL_33;
      }

      if (v2 != 170)
      {
        if (v2 == 180)
        {
          v31[0] = @"Ant-1a";
          v32[0] = [NSNumber numberWithInt:7];
          v31[1] = @"Ant-1b";
          v32[1] = [NSNumber numberWithInt:4];
          v31[2] = @"Ant-2a";
          v32[2] = [NSNumber numberWithInt:6];
          v31[3] = @"Ant-2b";
          v32[3] = [NSNumber numberWithInt:2];
          v31[4] = @"Ant-3a";
          v32[4] = [NSNumber numberWithInt:3];
          v31[5] = @"Ant-3b";
          v32[5] = [NSNumber numberWithInt:5];
          v31[6] = @"Ant-4";
          v32[6] = [NSNumber numberWithInt:1];
          v17 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:7];
          v29[0] = @"Ant-1a";
          v30[0] = [NSNumber numberWithInt:0];
          v29[1] = @"Ant-1b";
          v30[1] = [NSNumber numberWithInt:1];
          v29[2] = @"Ant-2a";
          v30[2] = [NSNumber numberWithInt:2];
          v29[3] = @"Ant-2b";
          v30[3] = [NSNumber numberWithInt:3];
          v29[4] = @"Ant-3a";
          v30[4] = [NSNumber numberWithInt:4];
          v29[5] = @"Ant-3b";
          v30[5] = [NSNumber numberWithInt:5];
          v29[6] = @"Ant-4";
          v30[6] = [NSNumber numberWithInt:6];
          v18 = v30;
          v19 = v29;
LABEL_33:
          v20 = 7;
          goto LABEL_34;
        }

        goto LABEL_39;
      }
    }

    v39[0] = @"Ant-1a";
    v40[0] = [NSNumber numberWithInt:7, v4];
    v39[1] = @"Ant-1b";
    v40[1] = [NSNumber numberWithInt:4];
    v39[2] = @"Ant-2";
    v40[2] = [NSNumber numberWithInt:2];
    v39[3] = @"Ant-3a";
    v40[3] = [NSNumber numberWithInt:6];
    v39[4] = @"Ant-3b";
    v40[4] = [NSNumber numberWithInt:3];
    v39[5] = @"Ant-4";
    v40[5] = [NSNumber numberWithInt:1];
    v17 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:6];
    v37[0] = @"Ant-1a";
    v38[0] = [NSNumber numberWithInt:0];
    v37[1] = @"Ant-1b";
    v38[1] = [NSNumber numberWithInt:1];
    v37[2] = @"Ant-2";
    v38[2] = [NSNumber numberWithInt:2];
    v37[3] = @"Ant-3a";
    v38[3] = [NSNumber numberWithInt:3];
    v37[4] = @"Ant-3b";
    v38[4] = [NSNumber numberWithInt:4];
    v37[5] = @"Ant-4";
    v38[5] = [NSNumber numberWithInt:5];
    v18 = v38;
    v19 = v37;
    goto LABEL_30;
  }

  if ((v2 - 154) >= 2 && (v2 - 157) >= 2)
  {
    if (v2 == 162)
    {
      goto LABEL_32;
    }

LABEL_39:
    if ((v2 & 0xFFFFFFFD) != 0xAC)
    {
      [WCM_Logging logLevel:1 message:@"BB22: platformID not defined to configure CellTxAntIdx over the bus"];
      goto LABEL_35;
    }

    v27[0] = @"Ant-1";
    v28[0] = [NSNumber numberWithInt:2];
    v27[1] = @"Ant-2b";
    v28[1] = [NSNumber numberWithInt:4];
    v27[2] = @"Ant-3";
    v28[2] = [NSNumber numberWithInt:1];
    v27[3] = @"Ant-4b";
    v28[3] = [NSNumber numberWithInt:3];
    v17 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:4];
    v25[0] = @"Ant-1";
    v26[0] = [NSNumber numberWithInt:4];
    v25[1] = @"Ant-2b";
    v26[1] = [NSNumber numberWithInt:6];
    v25[2] = @"Ant-3";
    v26[2] = [NSNumber numberWithInt:0];
    v25[3] = @"Ant-4b";
    v26[3] = [NSNumber numberWithInt:2];
    v18 = v26;
    v19 = v25;
    v20 = 4;
LABEL_34:
    [(WCM_CellularController *)self ConstructAntennaMapXpcMsg:v3 AntPhyIdxDict:v17 AntSpmiIdxDict:[NSDictionary dictionaryWithObjects:v18 forKeys:v19 count:v20, xdict]];
    goto LABEL_35;
  }

  v51[0] = @"Ant-1";
  v52[0] = [NSNumber numberWithInt:2, v4];
  v51[1] = @"Ant-2a";
  v52[1] = [NSNumber numberWithInt:7];
  v51[2] = @"Ant-2b";
  v52[2] = [NSNumber numberWithInt:4];
  v51[3] = @"Ant-3";
  v52[3] = [NSNumber numberWithInt:1];
  v51[4] = @"Ant-4a";
  v52[4] = [NSNumber numberWithInt:5];
  v51[5] = @"Ant-4b";
  v52[5] = [NSNumber numberWithInt:3];
  v11 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:6];
  v49[0] = @"Ant-1";
  v50[0] = [NSNumber numberWithInt:4];
  v49[1] = @"Ant-2a";
  v50[1] = [NSNumber numberWithInt:6];
  v49[2] = @"Ant-2b";
  v50[2] = [NSNumber numberWithInt:6];
  v49[3] = @"Ant-3";
  v50[3] = [NSNumber numberWithInt:0];
  v49[4] = @"Ant-4a";
  v50[4] = [NSNumber numberWithInt:2];
  v49[5] = @"Ant-4b";
  v50[5] = [NSNumber numberWithInt:2];
  v12 = [NSDictionary dictionaryWithObjects:v50 forKeys:v49 count:6];
  for (j = 0; j != 10; ++j)
  {
    v14 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v14, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx", j);
    v15 = [(NSDictionary *)v11 allKeysForObject:[NSNumber numberWithInt:j]];
    if ([(NSArray *)v15 count])
    {
      v16 = [-[NSDictionary objectForKey:](v12 objectForKey:{-[NSArray objectAtIndexedSubscript:](v15, "objectAtIndexedSubscript:", 0)), "intValue"}];
    }

    else
    {
      v16 = 0;
    }

    xpc_dictionary_set_uint64(v14, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx", v16);
    xpc_array_append_value(v3, v14);
  }

LABEL_35:
  xpc_dictionary_set_value(xdict, "kWCMCellularSetWCI2TxAntMap_InformationSet", v3);
  [(WCM_CellularController *)self sendMessage:1215 withArgs:xdict];
  if (xpc_array_get_count(v3))
  {
    v21 = 0;
    do
    {
      value = xpc_array_get_value(v3, v21);
      xpc_release(value);
      ++v21;
    }

    while (v21 < xpc_array_get_count(v3));
  }

  xpc_release(v3);
  xpc_release(xdict);
}

- (void)setTxAntMapInHouseBB25A
{
  v3 = [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v4 = xpc_array_create(0, 0);
  v5 = xpc_dictionary_create(0, 0, 0);
  [WCM_Logging logLevel:4 message:@"BB25A AntMapping_1:Updating antenna map params to cellular modem"];
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2TxAntMap_Enable", 1uLL);
  xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2TxAntMap_DefaultIdx", 0);
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [WCM_Logging logLevel:4 message:@"BB22WCI2AntDebug_: Enable ARBuffer mmW TX on bit"];
    xpc_dictionary_set_uint64(v5, "kWCMCellularSetWCI2Type7FRTwoTxEnable", 1uLL);
  }

  if (v3 == 24)
  {
    v11[0] = @"Ant-1";
    v12[0] = [NSNumber numberWithInt:1];
    v11[1] = @"Ant-2";
    v12[1] = [NSNumber numberWithInt:2];
    v11[2] = @"Ant-3";
    v12[2] = [NSNumber numberWithInt:3];
    v11[3] = @"Ant-4";
    v12[3] = [NSNumber numberWithInt:4];
    v11[4] = @"Ant-7";
    v12[4] = [NSNumber numberWithInt:7];
    v11[5] = @"Ant-8";
    v12[5] = [NSNumber numberWithInt:8];
    v11[6] = @"Ant-9";
    v12[6] = [NSNumber numberWithInt:9];
    v6 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:7];
    v10[0] = [NSNumber numberWithInt:0, @"Ant-1"];
    v9[1] = @"Ant-2";
    v10[1] = [NSNumber numberWithInt:2];
    v9[2] = @"Ant-3";
    v10[2] = [NSNumber numberWithInt:4];
    v9[3] = @"Ant-4";
    v10[3] = [NSNumber numberWithInt:6];
    v9[4] = @"Ant-7";
    v10[4] = [NSNumber numberWithInt:0];
    v9[5] = @"Ant-8";
    v10[5] = [NSNumber numberWithInt:2];
    v9[6] = @"Ant-9";
    v10[6] = [NSNumber numberWithInt:4];
    [(WCM_CellularController *)self ConstructAntennaMapXpcMsg:v4 AntPhyIdxDict:v6 AntSpmiIdxDict:[NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:7]];
    xpc_dictionary_set_value(v5, "kWCMCellularSetWCI2TxAntMap_InformationSet", v4);
    [(WCM_CellularController *)self sendMessage:1215 withArgs:v5];
  }

  else
  {
    xpc_dictionary_set_value(v5, "kWCMCellularSetWCI2TxAntMap_InformationSet", v4);
    [WCM_Logging logLevel:1 message:@"BB25A: platformID not defined to configure CellTxAntIdx over the bus"];
  }

  if (xpc_array_get_count(v4))
  {
    v7 = 0;
    do
    {
      value = xpc_array_get_value(v4, v7);
      xpc_release(value);
      ++v7;
    }

    while (v7 < xpc_array_get_count(v4));
  }

  xpc_release(v4);
  xpc_release(v5);
}

- (void)setGpsBandInfoToBB:(BOOL)b l5Enabled:(BOOL)enabled btA2DPEnabled:(BOOL)pEnabled l5Level:(unint64_t)level
{
  pEnabledCopy = pEnabled;
  enabledCopy = enabled;
  bCopy = b;
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {

    [WCM_Logging logLevel:4 message:@"Legacy GNSS messaging to BB is disabled in this platform"];
    return;
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  [WCM_Logging logLevel:4 message:@"BB20:Updating GPS band info params to cellular modem, L1=%d, L5=%d, a2dp=%d", bCopy, enabledCopy, pEnabledCopy];
  if (!pEnabledCopy)
  {
    if (enabledCopy)
    {
      v12 = 6;
    }

    else
    {
      v12 = 1;
    }

    v13 = 1;
    if (enabledCopy || bCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (!enabledCopy)
  {
LABEL_13:
    v13 = 0;
    v12 = 7;
    goto LABEL_14;
  }

  v12 = 5;
  v13 = 1;
LABEL_14:
  xpc_dictionary_set_uint64(v11, "kWCMCellularSetGnssParamsReq_Enabled", v13);
  xpc_dictionary_set_uint64(v11, "kWCMCellularSetGnssParamsReq_Band", v12);
  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    [WCM_Logging logLevel:4 message:@"BB20:Updating GPS L5 band level info params to cellular modem, l5Level=%d", level];
    xpc_dictionary_set_uint64(v11, "kWCMCellularSetGnssParamsReq_L5Level", level);
  }

  [WCM_Logging logLevel:4 message:@"BB20:Set GNSS param bitmask=%d", v12];
  [(WCM_CellularController *)self sendMessage:1220 withArgs:v11];

  xpc_release(v11);
}

- (void)handleNetworkConfig_bb20:(id)config_bb20
{
  v106[0] = &off_100271238;
  v106[1] = &off_100271250;
  v107[0] = @"LTE";
  v107[1] = @"TDSCDMA";
  v106[2] = &off_100271268;
  v106[3] = &off_100271280;
  v107[2] = @"GSM";
  v107[3] = @"CDMA";
  v106[4] = &off_100271298;
  v106[5] = &off_1002712B0;
  v107[4] = @"HDR";
  v107[5] = @"WCDMA";
  v106[6] = &off_1002712C8;
  v106[7] = &off_1002712E0;
  v107[6] = @"NR5G";
  v107[7] = @"UNKNOWN";
  v106[8] = &off_1002712F8;
  v107[8] = @"UNKNOWN";
  v5 = [NSDictionary dictionaryWithObjects:v107 forKeys:v106 count:9];
  v6 = WRM_IPTelephonyController;
  [WCM_Logging logLevel:3 message:@"handleNetworkConfig_bb20"];
  xdict = xpc_dictionary_get_value(config_bb20, "kMessageArgs");
  if (!xdict)
  {
    return;
  }

  v86 = +[WCM_PolicyManager singleton];
  v7 = &self->super.mProcessId + 1;
  if ([(WCM_CellularController *)self activeSubId])
  {
    v7 = (&self->_cellularInstance0.cellBandInfo + 1);
  }

  v8 = *(v7 + 3);
  v9 = *(v7 + 5);
  v10 = *(v7 + 6);
  v11 = *(v7 + 7);
  v81 = *(v7 + 8);
  v12 = *(v7 + 9);
  v82 = *(v7 + 10);
  v83 = *(v7 + 4);
  activeSubId = [(WCM_CellularController *)self activeSubId];
  v79 = *(v7 + 11);
  v80 = activeSubId;
  uint64 = xpc_dictionary_get_uint64(config_bb20, "kSubId");
  v85 = &self->super.mProcessId + 1;
  v103 = &self->super.mProcessId + 1;
  if (uint64)
  {
    v103 = (&self->_cellularInstance0.cellBandInfo + 1);
  }

  selfCopy = self;
  bzero(v103, 0xAB8uLL);
  *(v103 + 12) = 0;
  *(v103 + 1) = 0u;
  *(v103 + 5) = 0u;
  *(v103 + 4) = 0u;
  *(v103 + 3) = 0u;
  *(v103 + 2) = 0u;
  *(v103 + 3) = xpc_dictionary_get_int64(xdict, "kWCMCellularNetworkConfiguration_ULBandInfo_CenterFreq");
  *(v103 + 4) = xpc_dictionary_get_double(xdict, "kWCMCellularNetworkConfiguration_ULBandInfo_BandWidth");
  *(v103 + 5) = xpc_dictionary_get_int64(xdict, "kWCMCellularNetworkConfiguration_DLBandInfo_CenterFreq");
  *(v103 + 6) = xpc_dictionary_get_double(xdict, "kWCMCellularNetworkConfiguration_DLBandInfo_BandWidth");
  *(v103 + 11) = xpc_dictionary_get_int64(xdict, "kWCMCellularNetworkConfiguration_TTDUL_DL");
  *(v103 + 12) = xpc_dictionary_get_int64(xdict, "kWCMCellularNetworkConfiguration_SubFrameFormat");
  *(v103 + 2) = xpc_dictionary_get_int64(xdict, "kWCMCellularNetworkConfiguration_FrameOffset");
  *(v103 + 52) = 0;
  v89 = (v103 + 6);
  *(v103 + 9) = *(v103 + 6);
  v15 = v103 + 36;
  *(v103 + 306) = 1;
  *(v103 + 10) = *(v103 + 10);
  v103[44] = *(v103 + 17);
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  applier[0] = _NSConcreteStackBlock;
  applier[1] = 3221225472;
  applier[2] = sub_1000CA054;
  applier[3] = &unk_1002414A8;
  applier[4] = v103;
  xpc_dictionary_apply(xdict, applier);
  if (!xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_LTEBandInformationSet"))
  {
    if (xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_NGCBandInformationSet"))
    {
      value = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_NGCBandInformationSet");
      v103[32] = 64;
      v95 = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_NGCBandInformationSet");
      v96 = 0;
      v17 = 0;
      goto LABEL_24;
    }

    v18 = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_TDSCDMABandInformationSet");
    if (v18)
    {
      value = v18;
      v17 = 0;
      v95 = 0;
      v96 = 0;
      v19 = 2;
    }

    else
    {
      v20 = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_GSMBandInformationSet");
      if (v20)
      {
        value = v20;
        v17 = 0;
        v95 = 0;
        v96 = 0;
        v19 = 4;
      }

      else
      {
        v21 = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_ONEXBandInformationSet");
        if (v21)
        {
          value = v21;
          v17 = 0;
          v95 = 0;
          v96 = 0;
          v19 = 8;
        }

        else
        {
          v22 = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_HDRBandInformationSet");
          if (v22)
          {
            value = v22;
            v17 = 0;
            v95 = 0;
            v96 = 0;
            v19 = 16;
          }

          else
          {
            value = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_WCDMABandInformationSet");
            if (!value)
            {
              v103[32] = 127;
              [WCM_Logging logLevel:4 message:@"SUB%llu: Band Info parsing second pass result -- unknown band info set", uint64];
              v17 = 0;
              v96 = 0;
              goto LABEL_12;
            }

            v17 = 0;
            v95 = 0;
            v96 = 0;
            v19 = 32;
          }
        }
      }
    }

    v103[32] = v19;
    goto LABEL_24;
  }

  value = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_LTEBandInformationSet");
  if (!xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_NGCBandInformationSet"))
  {
    v103[32] = 1;
    v96 = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_LTEBandInformationSet");
    v17 = 0;
LABEL_12:
    v95 = 0;
    goto LABEL_24;
  }

  value = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_NGCBandInformationSet");
  v17 = 1;
  v103[32] = 1;
  v96 = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_LTEBandInformationSet");
  v95 = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_NGCBandInformationSet");
LABEL_24:
  v23 = v103[32];
  if (v23 == 1 || v23 == 64)
  {
    if (!v17)
    {
      if (v23 == 1 && xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_LTECarrierInformationSet"))
      {
        xarray = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_LTECarrierInformationSet");
      }

      else
      {
        xarray = 0;
      }

      if (v103[32] == 64 && xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_NGCCarrierInformationSet"))
      {
        xarray = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_NGCCarrierInformationSet");
      }

      v99 = 0;
      if (!value)
      {
        goto LABEL_105;
      }

      if (!xarray)
      {
        goto LABEL_105;
      }

      count = xpc_array_get_count(xarray);
      v25 = xpc_array_get_count(value);
      v99 = 0;
      if (v25 != count || !v25 || !count)
      {
        goto LABEL_105;
      }

      v90 = 0;
      v91 = 0;
      goto LABEL_61;
    }

    goto LABEL_31;
  }

  if (v17)
  {
LABEL_31:
    [WCM_Logging logLevel:4 message:@"BB20 bandinfotype is ENDC"];
    if (xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_LTECarrierInformationSet"))
    {
      v91 = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_LTECarrierInformationSet");
    }

    else
    {
      v91 = 0;
    }

    if (xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_NGCCarrierInformationSet"))
    {
      v90 = xpc_dictionary_get_value(xdict, "kWCMCellularNetworkConfiguration_NGCCarrierInformationSet");
    }

    else
    {
      v90 = 0;
    }

    v99 = 0;
    if (!v91)
    {
      goto LABEL_105;
    }

    if (!v90)
    {
      goto LABEL_105;
    }

    if (!v96)
    {
      goto LABEL_105;
    }

    if (!v95)
    {
      goto LABEL_105;
    }

    v26 = xpc_array_get_count(v91);
    v27 = xpc_array_get_count(v90);
    v28 = xpc_array_get_count(v96);
    v29 = xpc_array_get_count(v95);
    v99 = 0;
    if (v29 != v27 || v28 != v26 || !v28 || !v26 || !v29 || !v27)
    {
      goto LABEL_105;
    }

    goto LABEL_60;
  }

  if (v23 != 127)
  {
    v90 = 0;
    v91 = 0;
LABEL_60:
    xarray = 0;
LABEL_61:
    v30 = xpc_array_get_count(value);
    if ((v17 & [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")]) == 1)
    {
      v31 = xpc_array_get_count(v96);
      v30 = xpc_array_get_count(v95) + v31;
      v97 = v31;
    }

    else
    {
      v97 = 0;
    }

    v102 = v30;
    if (v30)
    {
      v100 = 0;
      v99 = 0;
      v32 = 0;
      v93 = 0;
      v104 = 0;
      v84 = 0;
      v88 = 0;
      v101 = uint64;
      v98 = value;
      while (1)
      {
        if (v17)
        {
          if (v32 >= v97)
          {
            int64 = xpc_array_get_int64(v90, v32 - v97);
            v34 = xpc_array_get_value(v95, v32 - v97);
            v38 = v100;
            if ((v93 & 1) == 0)
            {
              v38 = v99;
            }

            v100 = v38;
            v35 = 64;
            v93 = 1;
          }

          else
          {
            int64 = xpc_array_get_int64(v91, v32);
            v34 = xpc_array_get_value(v96, v32);
            v35 = 1;
          }

          v104 = int64;
          if (!v34)
          {
            goto LABEL_102;
          }
        }

        else
        {
          v35 = v103[32];
          v34 = xpc_array_get_value(value, v32);
          v36 = v103[32];
          if (v36 == 64 || v36 == 1)
          {
            v104 = xpc_array_get_int64(xarray, v32);
          }

          if (!v34)
          {
            goto LABEL_102;
          }
        }

        v39 = v17;
        v40 = v6;
        v41 = v5;
        v42 = xpc_dictionary_get_uint64(v34, "kWCMCellularNetworkConfiguration_BandInfoSet_DirectionMask");
        v43 = xpc_dictionary_get_int64(v34, "kWCMCellularNetworkConfiguration_BandInfoSet_CenterFreq");
        v44 = xpc_dictionary_get_double(v34, "kWCMCellularNetworkConfiguration_BandInfoSet_Bandwidth");
        v45 = "unknown";
        if (v42 == 2)
        {
          v45 = "downlink";
        }

        if (v42 == 1)
        {
          v46 = "uplink";
        }

        else
        {
          v46 = v45;
        }

        v47 = v40 + 98;
        v48 = v41;
        [(__objc2_class *)v47 logLevel:5 message:@"handleNetworkConfig: index(%ld) directionMask(%llu:%s) centerFreq(%lld) bandwidth(%lf) carrierId(%d) bandInfoType(%@) ", v32, v42, v46, v43, *&v44, v104, [(NSDictionary *)v41 objectForKeyedSubscript:[NSNumber numberWithUnsignedInt:v35]]];
        if (v43 < 1)
        {
          v6 = WRM_IPTelephonyController;
          v5 = v41;
          v17 = v39;
        }

        else
        {
          v17 = v39;
          if (v42 != 1)
          {
            value = v98;
            if (v42 == 2)
            {
              v54 = v43 / 1000.0;
              v55 = v44 / 1000000.0;
              v56 = (v103 + 10);
              if (v84)
              {
                v56 = (v103 + 18);
              }

              v57 = (v103 + 20);
              if ((v84 & 1) == 0)
              {
                v57 = (v103 + 12);
              }

              *v56 = v54;
              *v57 = v55;
              v58 = &v15[18 * v99];
              *(v58 + 2) = v54;
              *(v58 + 3) = v55;
              v58[16] = v35;
              v58[8] = v104;
              v99 = (v99 + 1);
              v84 = 1;
            }

            v6 = WRM_IPTelephonyController;
            v5 = v48;
            goto LABEL_102;
          }

          v49 = v43 / 1000.0;
          v50 = v44 / 1000000.0;
          v51 = (v103 + 6);
          if (v88)
          {
            v51 = (v103 + 14);
          }

          v52 = (v103 + 16);
          if ((v88 & 1) == 0)
          {
            v52 = (v103 + 8);
          }

          *v51 = v49;
          *v52 = v50;
          v53 = &v15[18 * v100];
          *v53 = v49;
          *(v53 + 1) = v50;
          v53[16] = v35;
          v53[8] = v104;
          ++v100;
          v88 = 1;
          v6 = WRM_IPTelephonyController;
          v5 = v48;
        }

        value = v98;
LABEL_102:
        ++v32;
        uint64 = v101;
        if (v102 == v32)
        {
          goto LABEL_105;
        }
      }
    }
  }

  v99 = 0;
LABEL_105:
  if (*(v103 + 104) == 1)
  {
    v59 = xpc_dictionary_get_int64(xdict, "kWCMCellularNetworkConfiguration_ULCPConfig");
    v60 = xpc_dictionary_get_int64(xdict, "kWCMCellularNetworkConfiguration_DLCPConfig");
    v61 = *v89;
    v62 = selfCopy;
    if (*v89 != 0.0)
    {
      if (v59 != 255)
      {
        *v103 = v59;
      }

      if (v60 != 255)
      {
        *(v103 + 1) = v60;
      }
    }
  }

  else
  {
    *v103 = 0;
    *(v103 + 1) = 0;
    v61 = *(v103 + 3);
    v62 = selfCopy;
  }

  *(v103 + 338) = v61;
  v63 = *(v103 + 4);
  v64 = *(v103 + 5);
  *(v103 + 339) = v63;
  *(v103 + 340) = v64;
  v65 = *(v103 + 6);
  *(v103 + 341) = v65;
  if (v17)
  {
    [&v6[98] logLevel:5 message:{@"handleNetworkConfig: SUB%lld: ENDC Network Config LTE PCC UL(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf) ", uint64, *&v61, v63, v64, v65, v78}];
  }

  else
  {
    [&v6[98] logLevel:5 message:{@"handleNetworkConfig: SUB%lld: %@ Network Config PCC UL(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf) ", uint64, -[NSDictionary objectForKeyedSubscript:](v5, "objectForKeyedSubscript:", +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v103[32])), *(v103 + 3), *(v103 + 4), *(v103 + 5), *(v103 + 6)}];
  }

  [&v6[98] logLevel:5 message:@"handleNetworkConfig: SUB%lld: cellularConfig->bandInfoType = %d "], uint64, v103[32]);
  if (((v103[32] != 1) & ~v17) == 0)
  {
    [&v6[98] logLevel:5 message:{@"handleNetworkConfig: SUB%lld: TDD ULDLConfig=%lld, SFF=%lld ULCP=%lld DLCP=%lld FrameOffset=%lld", uint64, *(v103 + 11), *(v103 + 12), *v103, *(v103 + 1), *(v103 + 2)}];
  }

  *(v103 + 306) = v99;
  *(v103 + 2692) = 0;
  [&v6[98] logLevel:5 message:{@"handleNetworkConfig: SUB%lld: LTE/NR total valid entries =%d", uint64, v99}];
  if (v103[612])
  {
    v66 = 0;
    do
    {
      [&v6[98] logLevel:5 message:{@"handleNetworkConfig: SUB%lld: Entry index %ld ..UL(freq=%lf bw=%lf) DL(freq=%lf, bw=%lf), carrierid(%d), bandInfoType(%@)", uint64, v66++, *v15, *(v15 + 1), *(v15 + 2), *(v15 + 3), v15[8], -[NSDictionary objectForKeyedSubscript:](v5, "objectForKeyedSubscript:", +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v15[16]))}];
      v15 += 18;
    }

    while (v66 < v103[612]);
  }

  [(WCM_CellularController *)v62 setActiveSubId:[(WCM_CellularController *)v62 subSelector]];
  v67 = v85;
  if ([(WCM_CellularController *)v62 activeSubId])
  {
    v67 = (&v62->_cellularInstance0.cellBandInfo + 1);
  }

  [(WCM_CellularController *)v62 setActiveConfig:v67];
  [v86 evaluateULCARestrictions];
  v68 = v67 + 36;
  v69 = &v67[18 * v67[613] + 36];
  v70 = *v69;
  *(v67 + 10) = *(v69 + 16);
  *(v67 + 6) = v70;
  v67[32] = *(v69 + 64);
  v71 = +[WRM_EnhancedCTService wrm_EnhancedCTServiceSingleton];
  activeSubId2 = [(WCM_CellularController *)v62 activeSubId];
  if (activeSubId2)
  {
    v73 = 2 * (activeSubId2 == 1);
  }

  else
  {
    v73 = 1;
  }

  v67[684] = [v71 getBandInfoOnSlot:v73];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  [(WCM_CellularController *)v62 submitAWDMetricsforNetworkConfiguration];
  v74 = *(v67 + 5);
  if (v74 == 0.0 || v9 != 0.0 && v74 != v9)
  {
    *(v67 + 14) = 0;
    *(v67 + 15) = 0;
  }

  v75 = *(v67 + 3);
  if (v75 != 0.0)
  {
    v76 = *(v67 + 4);
    *(v67 + 14) = v75;
    *(v67 + 15) = v76;
  }

  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] && (objc_msgSend(objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager, "singleton"), "activeCoexFeatures"), "containsObject:", @"EnableULCA") & 1) == 0)
  {
    if (v9 == *(v67 + 5) && v8 == *(v67 + 3) && v12 == *(v67 + 9) && v11 == *(v67 + 7) && v10 == *(v67 + 6) && v83 == *(v67 + 4) && v82 == *(v67 + 10) && v81 == *(v67 + 8) && v80 == [(WCM_CellularController *)v62 activeSubId]&& v79 == *(v67 + 11))
    {
      [&v6[98] logLevel:2 message:{@"handleNeteorkConfig: NW Config Parameters are the same, hence ignoring the network config command"}];
      return;
    }

    [&v6[98] logLevel:2 message:{@"handleNeteorkConfig: NW Config Parameters are NOT the same, hence handling the network config command"}];
  }

  if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
  {
    clkAlgnTDDFreqCheck = [(WCM_CellularController *)v62 clkAlgnTDDFreqCheck];
    *(v67 + 105) = clkAlgnTDDFreqCheck;
    [&v6[98] logLevel:4 message:{@"handleNeteorkConfig: clkAlgnTDDFreqCheck: BT Clock Alignment enable = %d", clkAlgnTDDFreqCheck}];
  }

  if ([objc_msgSend(v86 "activeCoexFeatures")])
  {
    [&v6[98] logLevel:3 message:{@"handleNeteorkConfig: Receive update of Cell Config, update critical carrier, wcmCellularCCSetToBB = %d", objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager, "singleton"), "wcmCellularCCSetToBB")}];
    [(WCM_CellularController *)v62 setAllCriticalCarriers];
  }

  [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
}

- (void)sendBBCameraState:(int)state state:(unsigned __int8)a4
{
  v4 = a4;
  v5 = *&state;
  [objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = xpc_uint64_create(v5);
  v9 = xpc_array_create(0, 0);
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = xpc_array_create(0, 0);
  [WCM_Logging logLevel:4 message:@"BB23: Requests to send camera info type %d enabled? %d", v5, v4];
  v12 = xpc_uint64_create(v4);
  xpc_array_append_value(v9, v12);
  xpc_dictionary_set_value(v10, "kWCMCellularTransparentMessage_Type", v8);
  xpc_dictionary_set_value(v10, "kWCMCellularTransparentMessage_ByteList", v9);
  xpc_array_append_value(v11, v10);
  xpc_dictionary_set_value(v7, "kWCMCellularTransparentMessageInformationSet", v11);
  [(WCM_CellularController *)self sendMessage:1223 withArgs:v7];
  if (xpc_array_get_count(v9))
  {
    v13 = 0;
    do
    {
      value = xpc_array_get_value(v9, v13);
      xpc_release(value);
      ++v13;
    }

    while (xpc_array_get_count(v9) > v13);
  }

  xpc_release(v10);
  xpc_release(v8);
  xpc_release(v7);
  xpc_release(v11);

  xpc_release(v9);
}

@end