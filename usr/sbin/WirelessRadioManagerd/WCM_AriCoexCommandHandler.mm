@interface WCM_AriCoexCommandHandler
- (BOOL)ariApiEnabledByOSFeatureFlag:(int)flag;
- (BOOL)cacheEvent:(id)event;
- (BOOL)cacheTunerTransparentMessage:(id)message;
- (BOOL)checkError:(void *)error expectedGMID:(unsigned int)d;
- (BOOL)checkErrorMsgGmid:(unsigned int)gmid expectedGMID:(unsigned int)d API_Str:(const char *)str;
- (BOOL)setCamAntBlockingPowerLimitingParam:(t_s_UtaIdcCamAntBlockPwrLmtPolicyConfigBundleV3 *)param XpcMessage:(id)message SubId:(unsigned int)id;
- (WCM_AriCoexCommandHandler)init;
- (id).cxx_construct;
- (id)assembleCellularConfigXpcMsg:(t_s_UtaIdcCellConfig *)msg;
- (id)assembleDesenseCellularConfigXpcMsgwithDownlinkFreq:(IBIAccServingDLFreqBandwidthInfo *)freq DownlinkFreqExt:(IBIAccServingDLFreqBandwidthInfo_ext *)ext UlFreq:(IBIAccServingULFreqBandwidthInfo *)ulFreq UplinkFreqExt:(IBIAccServingULFreqBandwidthInfo_ext *)freqExt SearchFreq:(IBIAccSearchFreqBandwidthInfo *)searchFreq HoppingFreq:(IBIAccHoppingFreqBandwidthInfo *)hoppingFreq NeighborFreq:(IBIAccNeighborFreqBandwidthInfo *)neighborFreq RPLMNFreq:(IBIAccRPLMNFreqBandwidthInfo *)self0;
- (id)createMessageWithMsgId:(unint64_t)id withArgs:(id)args withSubId:(id)subId;
- (int)convertInternalCallType:(unint64_t)type;
- (int)convertInternalCoexTech:(unint64_t)tech;
- (unint64_t)getSubIdFromInternalCoexTech:(unint64_t)tech;
- (void)UtaIdcCellConfigEventIndHandle:(char *)handle size:(unsigned int)size;
- (void)appendDesenseFreqToXpcArray:(id)array DesenseFreq:(IBIAccFreqBandwidthInfo *)freq Size:(unsigned int)size;
- (void)clientStarted;
- (void)configureAccReportMode;
- (void)connectBaseband;
- (void)convertToAriType_BtState:(unint64_t)state userCase:(unint64_t)case AriState:(unint64_t *)ariState AriUseCase:(unint64_t *)useCase;
- (void)convertToAriType_FigaroState:(unint64_t)state userCase:(unint64_t)case AriState:(unint64_t *)ariState AriUseCase:(unint64_t *)useCase;
- (void)convertToAriType_GnssState:(unint64_t)state userCase:(unint64_t)case AriState:(unint64_t *)ariState AriUseCase:(unint64_t *)useCase;
- (void)convertToAriType_UwbState:(unint64_t)state userCase:(unint64_t)case AriState:(unint64_t *)ariState AriUseCase:(unint64_t *)useCase;
- (void)convertToAriType_WiFiState:(unint64_t)state userCase:(unint64_t)case AriState:(unint64_t *)ariState AriUseCase:(unint64_t *)useCase;
- (void)desenseCellConfigEventIndHandle:(char *)handle size:(unsigned int)size;
- (void)fetchLegacyRatFrequency:(t_s_UtaIdcLegacyRatCarrierInfoSet *)frequency freqInfoXpc:(id)xpc;
- (void)fetchLteNrFrequency:(t_s_UtaIdcLteNrCarrierInfoSet *)frequency freqInfoXpc:(id)xpc carrierIdXpc:(id)idXpc;
- (void)fetchLtePccFrequency:(t_s_UtaIdcLteNrCarrierInfoSet *)frequency pccUplinkFreq:(int64_t *)freq pccUplinkBw:(double *)bw pccDownlinkFreq:(int64_t *)downlinkFreq pccDownlinkBw:(double *)downlinkBw;
- (void)getCellularLaaMeasInfo:(id)info SubId:(unsigned int)id;
- (void)getCellularNetworkConfig:(id)config SubId:(unsigned int)id;
- (void)handleCoexManagerEvent:(id)event;
- (void)handleEvent:(id)event;
- (void)handleGnssImdAntBlockPowerLimitConfig:(id)config;
- (void)handleRc1DynamicPolicy:(id)policy SubId:(unsigned int)id;
- (void)handleTransparentMessage:(id)message SubId:(unsigned int)id;
- (void)handleTunerState:(unint64_t)state state:(unint64_t)a4 useCase:(unint64_t)case SubId:(unsigned int)id;
- (void)printGnssImdConfig:(t_s_UtaIdcCellImdGnssMitigationPolicyConfig *)config;
- (void)replayCachedEvent;
- (void)sendBasebandCameraState:(unint64_t)state SubId:(unsigned int)id BasebandPowerOnUpdate:(BOOL)update;
- (void)sendMessage:(unint64_t)message withArgs:(id)args withSubId:(unint64_t)id;
- (void)setAllCCConfig:(id)config SubId:(unsigned int)id;
- (void)setAntennaBlockingPolicyForPlatformId:(unint64_t)id activeSubId:(unint64_t)subId AntBlockPowerLimitPlist:(id)plist;
- (void)setCC1Config:(id)config SubId:(unsigned int)id;
- (void)setCC2Config:(id)config SubId:(unsigned int)id;
- (void)setCamAntBlockingPowerLimitingConfig:(id)config SubId:(unsigned int)id;
- (void)setCameraState:(id)state SubId:(unsigned int)id;
- (void)setCellularAntBitmap:(id)bitmap SubId:(unsigned int)id;
- (void)setCellularMiscConfig:(id)config SubId:(unsigned int)id;
- (void)setCellularMiscConfigToSubId:(unsigned int)id uwbInactThre_ms:(unsigned int)thre_ms cellOnTimer_ms:(unsigned int)timer_ms;
- (void)setCellularTxActivityConfig:(id)config SubId:(unsigned int)id;
- (void)setCnvAntBlockingPowerLimitingConfig:(id)config SubId:(unsigned int)id;
- (void)setCoexOSFeatureFlag;
- (void)setCoexPlatformFeatureFlag;
- (void)setDefaultEvent;
- (void)setDefaultMiscConfig;
- (void)setE85AntBlockingPowerLimitingConfig:(id)config SubId:(unsigned int)id;
- (void)setLAAConfig:(id)config SubId:(unsigned int)id;
- (void)setRC1Config:(id)config SubId:(unsigned int)id;
- (void)setSFBMAntBlockingPowerLimitingConfig:(id)config SubId:(unsigned int)id;
- (void)setScanFreq:(id)freq SubId:(unsigned int)id;
- (void)setSpmiFeature:(id)feature SubId:(unsigned int)id;
- (void)setStaticTimesharingConfig:(unsigned int)config;
- (void)setTimesharingConfig:(id)config SubId:(unsigned int)id;
- (void)setTxBlankingPowerLimitingConfig:(id)config SubId:(unsigned int)id;
- (void)setUwbAntBlockingPowerLimitingConfig:(id)config SubId:(unsigned int)id;
- (void)updateBasebandPowerState;
@end

@implementation WCM_AriCoexCommandHandler

- (void)connectBaseband
{
  [WCM_Logging logLevel:3 message:@"ICE Client to be started"];
  ptr = self->mIceClient.__ptr_;

  sub_1000E4B74(ptr);
}

- (void)setCoexOSFeatureFlag
{
  self->coexOSFeatureGroupEnabled[0] = 1;
  coexOSFeatureGroupEnabled = self->coexOSFeatureGroupEnabled;
  *&self->coexOSFeatureGroupEnabled[1] = 0;
  v4 = &self->coexOSFeatureGroupEnabled[1];
  *&self->coexOSFeatureGroupEnabled[6] = 0;
  if (_os_feature_enabled_impl())
  {
    *v4 = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[2] = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[3] = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[4] = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[5] = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[6] = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[7] = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[9] = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[8] = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[10] = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[11] = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[12] = 1;
  }

  if (_os_feature_enabled_impl())
  {
    self->coexOSFeatureGroupEnabled[13] = 1;
  }

  for (i = 0; i != 14; ++i)
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI Driver:  coexOSFeatureGroupEnabled[%u] = %d\n", i, coexOSFeatureGroupEnabled[i]];
  }
}

- (void)setCoexPlatformFeatureFlag
{
  v3 = +[WCM_PolicyManager singleton];
  *&self->coexPlatformFeatureGroupEnabled[1] = 0;
  self->coexPlatformFeatureGroupEnabled[0] = 1;
  *&self->coexPlatformFeatureGroupEnabled[6] = 0;
  v31 = v3;
  activeCoexFeatures = [v3 activeCoexFeatures];
  v5 = [activeCoexFeatures containsObject:@"CoexFeatureGroupTimeSharingSupport"];

  if (v5)
  {
    self->coexPlatformFeatureGroupEnabled[1] = 1;
  }

  activeCoexFeatures2 = [v31 activeCoexFeatures];
  v7 = [activeCoexFeatures2 containsObject:@"CoexFeatureGroupRxActivityProtectSupport"];

  if (v7)
  {
    self->coexPlatformFeatureGroupEnabled[2] = 1;
  }

  activeCoexFeatures3 = [v31 activeCoexFeatures];
  v9 = [activeCoexFeatures3 containsObject:@"CoexFeatureGroupCameraSupport"];

  if (v9)
  {
    self->coexPlatformFeatureGroupEnabled[3] = 1;
  }

  activeCoexFeatures4 = [v31 activeCoexFeatures];
  v11 = [activeCoexFeatures4 containsObject:@"CoexFeatureGroupConditionalMitigationSupport"];

  if (v11)
  {
    self->coexPlatformFeatureGroupEnabled[4] = 1;
  }

  activeCoexFeatures5 = [v31 activeCoexFeatures];
  v13 = [activeCoexFeatures5 containsObject:@"CoexFeatureGroupBtClockAlignmentSupport"];

  if (v13)
  {
    self->coexPlatformFeatureGroupEnabled[5] = 1;
  }

  activeCoexFeatures6 = [v31 activeCoexFeatures];
  v15 = [activeCoexFeatures6 containsObject:@"CoexFeatureGroupHpCellularSupport"];

  if (v15)
  {
    self->coexPlatformFeatureGroupEnabled[6] = 1;
  }

  activeCoexFeatures7 = [v31 activeCoexFeatures];
  v17 = [activeCoexFeatures7 containsObject:@"CoexFeatureGroupUwbSupport"];

  if (v17)
  {
    self->coexPlatformFeatureGroupEnabled[7] = 1;
  }

  activeCoexFeatures8 = [v31 activeCoexFeatures];
  v19 = [activeCoexFeatures8 containsObject:@"CoexFeatureGroupNfcSupport"];

  if (v19)
  {
    self->coexPlatformFeatureGroupEnabled[9] = 1;
  }

  activeCoexFeatures9 = [v31 activeCoexFeatures];
  v21 = [activeCoexFeatures9 containsObject:@"CoexFeatureGroupUsbCSupport"];

  if (v21)
  {
    self->coexPlatformFeatureGroupEnabled[8] = 1;
  }

  activeCoexFeatures10 = [v31 activeCoexFeatures];
  v23 = [activeCoexFeatures10 containsObject:@"CoexFeatureGroupGnssImdSupport"];

  if (v23)
  {
    self->coexPlatformFeatureGroupEnabled[10] = 1;
  }

  activeCoexFeatures11 = [v31 activeCoexFeatures];
  v25 = [activeCoexFeatures11 containsObject:@"CoexFeatureGroupAntTunerSupport"];

  if (v25)
  {
    self->coexPlatformFeatureGroupEnabled[11] = 1;
  }

  activeCoexFeatures12 = [v31 activeCoexFeatures];
  v27 = [activeCoexFeatures12 containsObject:@"CoexFeatureGroupStateIndSupport"];

  if (v27)
  {
    self->coexPlatformFeatureGroupEnabled[12] = 1;
  }

  activeCoexFeatures13 = [v31 activeCoexFeatures];
  v29 = [activeCoexFeatures13 containsObject:@"CoexFeatureGroupSFBMSupport"];

  if (v29)
  {
    self->coexPlatformFeatureGroupEnabled[13] = 1;
  }

  for (i = 0; i != 14; ++i)
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI Driver:  coexPlatformFeatureGroupEnabled[%u] = %d\n", i, self->coexPlatformFeatureGroupEnabled[i]];
  }
}

- (BOOL)ariApiEnabledByOSFeatureFlag:(int)flag
{
  v3 = qword_1002B7AF0;
  if (qword_1002B7AF0 && (v4 = *&flag, +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:"), v6 = objc_claimAutoreleasedReturnValue(), [v3 objectForKey:v6], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7) && (v8 = qword_1002B7AF0, +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v4), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKey:", v9), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "integerValue"), v10, v9, v11 <= 0xD))
  {
    return self->coexOSFeatureGroupEnabled[v11];
  }

  else
  {
    return 0;
  }
}

- (WCM_AriCoexCommandHandler)init
{
  v12.receiver = self;
  v12.super_class = WCM_AriCoexCommandHandler;
  v2 = [(WCM_AriCoexCommandHandler *)&v12 init];
  [WCM_Logging logLevel:3 message:@"Coex ARI driver: Init the WCM_AriCoexCommandHandler"];
  if (v2)
  {
    mCellularController = v2->mCellularController;
    v2->mCellularController = 0;

    mAntBlockPolicy = v2->mAntBlockPolicy;
    v2->mAntBlockPolicy = 0;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v6 = dispatch_queue_create("com.apple.WRM_IceClientDriver.CoexManager", v5);
    fObj = v2->mIceClientQueue.fObj.fObj;
    v2->mIceClientQueue.fObj.fObj = v6;

    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v9 = dispatch_queue_create("com.apple.CoexManager.AriDriver", v8);
    mQueue = v2->mQueue;
    v2->mQueue = v9;

    sub_100026C68();
  }

  return 0;
}

- (void)clientStarted
{
  [WCM_Logging logLevel:3 message:@"Coex ARI Driver:  ICE Client started\n"];
  [(WCM_AriCoexCommandHandler *)self setCoexPlatformFeatureFlag];
  [(WCM_AriCoexCommandHandler *)self setSpmiFeature:0 SubId:0];
  [(WCM_AriCoexCommandHandler *)self setSpmiFeature:0 SubId:1];
  [(WCM_AriCoexCommandHandler *)self setDefaultEvent];
  ptr = self->mIceClient.__ptr_;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100019C44;
  v6[3] = &unk_10023D9E8;
  v6[4] = self;
  sub_1000E4C5C(ptr, 1233321984, v6);
  v4 = self->mIceClient.__ptr_;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100019C54;
  v5[3] = &unk_10023D9E8;
  v5[4] = self;
  sub_1000E4C5C(v4, 630194176, v5);
  [(WCM_AriCoexCommandHandler *)self configureAccReportMode];
  [(WCM_AriCoexCommandHandler *)self setDefaultMiscConfig];
  self->basebandPowerOn = 1;
  [WCM_Logging logLevel:3 message:@"Coex ARI Driver: ARI is enabled, update BB power state\n"];
  [(WCM_AriCoexCommandHandler *)self updateBasebandPowerState];
  [(WCM_AriCoexCommandHandler *)self replayCachedEvent];
}

- (void)setDefaultMiscConfig
{
  [(WCM_AriCoexCommandHandler *)self setCellularMiscConfigToSubId:0 uwbInactThre_ms:100 cellOnTimer_ms:5000];

  [(WCM_AriCoexCommandHandler *)self setCellularMiscConfigToSubId:1 uwbInactThre_ms:100 cellOnTimer_ms:5000];
}

- (id)createMessageWithMsgId:(unint64_t)id withArgs:(id)args withSubId:(id)subId
{
  argsCopy = args;
  subIdCopy = subId;
  *keys = *off_10023DA08;
  v16 = "kSubId";
  values[0] = xpc_uint64_create(id);
  v9 = argsCopy;
  values[1] = v9;
  v10 = subIdCopy;
  values[2] = v10;
  v11 = xpc_dictionary_create(keys, values, 3uLL);
  for (i = 2; i != -1; --i)
  {
  }

  return v11;
}

- (BOOL)cacheTunerTransparentMessage:(id)message
{
  messageCopy = message;
  v5 = xpc_dictionary_get_value(messageCopy, "kMessageArgs");
  v6 = xpc_dictionary_get_value(v5, "kWCMCellularTransparentMessageInformationSet");
  v7 = v6;
  if (v6 && xpc_array_get_count(v6))
  {
    v8 = xpc_array_get_value(v7, 0);
    v9 = v8;
    if (!v8)
    {
      v15 = 0;
LABEL_21:

      goto LABEL_22;
    }

    uint64 = xpc_dictionary_get_uint64(v8, "kWCMCellularTransparentMessage_Type");
    v11 = xpc_dictionary_get_value(v9, "kWCMCellularTransparentMessage_ByteList");
    count = xpc_array_get_count(v11);
    if (count == 2)
    {
      v13 = xpc_array_get_uint64(v11, 0);
      v14 = xpc_array_get_uint64(v11, 1uLL);
      v15 = 0;
      if (uint64 <= 1)
      {
        if (!uint64)
        {
          p_mTunerStateGNSS_State = &self->mTunerStateGNSS_State;
          p_mTunerStateGNSS_UseCase = &self->mTunerStateGNSS_UseCase;
          v18 = @"Coex ARI Driver:  cache GNSS state = %llu, useCase = %llu ";
          goto LABEL_19;
        }

        if (uint64 == 1)
        {
          p_mTunerStateGNSS_State = &self->mTunerStateWifi_State;
          p_mTunerStateGNSS_UseCase = &self->mTunerStateWifi_UseCase;
          v18 = @"Coex ARI Driver:  cache WiFi state = %llu, useCase = %llu ";
          goto LABEL_19;
        }
      }

      else
      {
        switch(uint64)
        {
          case 2:
            p_mTunerStateGNSS_State = &self->mTunerStateBT_State;
            p_mTunerStateGNSS_UseCase = &self->mTunerStateBT_UseCase;
            v18 = @"Coex ARI Driver:  cache BT state = %llu, useCase = %llu ";
            goto LABEL_19;
          case 3:
            p_mTunerStateGNSS_State = &self->mTunerStateUWB_State;
            p_mTunerStateGNSS_UseCase = &self->mTunerStateUWB_UseCase;
            v18 = @"Coex ARI Driver:  cache UWB state = %llu, useCase = %llu ";
            goto LABEL_19;
          case 4:
            p_mTunerStateGNSS_State = &self->mTunerStateHFBT_State;
            p_mTunerStateGNSS_UseCase = &self->mTunerStateHFBT_UseCase;
            v18 = @"Coex ARI Driver:  cache HFBT state = %llu, useCase = %llu ";
LABEL_19:
            *p_mTunerStateGNSS_State = v13;
            *p_mTunerStateGNSS_UseCase = v14;
            [WCM_Logging logLevel:2 message:v18, v13, v14];
            v15 = 1;
            break;
        }
      }
    }

    else
    {
      [WCM_Logging logLevel:0 message:@"Coex ARI Driver: Sensor %llu has wrong data size (%llu). Expect size = 2", uint64, count];
      v15 = 0;
    }

    goto LABEL_21;
  }

  v15 = 0;
LABEL_22:

  return v15;
}

- (BOOL)cacheEvent:(id)event
{
  eventCopy = event;
  uint64 = xpc_dictionary_get_uint64(eventCopy, "kMessageId");
  if (uint64 == 1223)
  {
    v6 = [(WCM_AriCoexCommandHandler *)self cacheTunerTransparentMessage:eventCopy];
  }

  else if (uint64 == 1234)
  {
    self->mCameraState = xpc_dictionary_get_uint64(eventCopy, "kWCMCellularSetCameraState");
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)replayCachedEvent
{
  mQueue = self->mQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A15C;
  block[3] = &unk_10023D9C0;
  block[4] = self;
  dispatch_async(mQueue, block);
}

- (void)handleEvent:(id)event
{
  eventCopy = event;
  uint64 = xpc_dictionary_get_uint64(eventCopy, "kMessageId");
  v6 = [(WCM_AriCoexCommandHandler *)self cacheEvent:eventCopy];
  if (self->basebandPowerOn)
  {
    v7 = xpc_copy(eventCopy);
    mQueue = self->mQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001A3C4;
    block[3] = &unk_10023D980;
    block[4] = self;
    v12 = v7;
    v9 = v7;
    dispatch_async(mQueue, block);
  }

  else
  {
    if (v6)
    {
      v10 = @"Coex ARI Driver:  ICE client is not ready yet, XPC message(%llu) is cached";
    }

    else
    {
      v10 = @"Coex ARI Driver:  ICE client is not ready yet, XPC message(%llu) is discarded";
    }

    [WCM_Logging logLevel:0 message:v10, uint64];
  }
}

- (void)setAntennaBlockingPolicyForPlatformId:(unint64_t)id activeSubId:(unint64_t)subId AntBlockPowerLimitPlist:(id)plist
{
  plistCopy = plist;
  [WCM_Logging logLevel:2 message:@"Initialize WCM_AntBlockPowerLimitPolicy on PlatformId(%llu)...", id];
  v9 = [[WCM_AntBlockPowerLimitPolicy alloc] initWithPlatformId:id AntBlockPowerLimitPlist:plistCopy];
  mAntBlockPolicy = self->mAntBlockPolicy;
  self->mAntBlockPolicy = v9;

  v11 = self->mAntBlockPolicy;
  if (!v11)
  {
    goto LABEL_35;
  }

  v29 = plistCopy;
  v32 = [(WCM_AntBlockPowerLimitPolicy *)v11 getAntBlockConfigXpcMsgOnClient:0];
  v31 = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:1];
  value = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:2];
  v35 = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:3];
  v34 = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:8];
  v30 = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:4];
  v33 = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:5];
  v12 = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:6];
  v13 = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:9];
  v14 = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:10];
  v15 = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigXpcMsgOnClient:11];
  v16 = xpc_uint64_create(subId);
  getAntBlockConfigGnssImdClient = [(WCM_AntBlockPowerLimitPolicy *)self->mAntBlockPolicy getAntBlockConfigGnssImdClient];
  if (v32)
  {
    v18 = [(WCM_AriCoexCommandHandler *)self createMessageWithMsgId:1225 withArgs:v32 withSubId:v16];
    [(WCM_AriCoexCommandHandler *)self handleEvent:v18];
  }

  if (v31)
  {
    v19 = [(WCM_AriCoexCommandHandler *)self createMessageWithMsgId:1226 withArgs:v31 withSubId:v16];
    [(WCM_AriCoexCommandHandler *)self handleEvent:v19];
  }

  if (value || v35 || v34 || v33 || v30)
  {
    v20 = xpc_dictionary_create(0, 0, 0);
    v21 = v20;
    if (value)
    {
      xpc_dictionary_set_value(v20, "kWCMCellularSetAntBlocking_FrontCameraPolicy", value);
    }

    if (v35)
    {
      xpc_dictionary_set_value(v21, "kWCMCellularSetAntBlocking_FaceIdCameraPolicy", v35);
    }

    if (v30)
    {
      xpc_dictionary_set_value(v21, "kWCMCellularSetAntBlocking_RearUltraWideCameraPolicy", v30);
    }

    if (v34)
    {
      xpc_dictionary_set_value(v21, "kWCMCellularSetAntBlocking_RearWideCameraPolicy", v34);
    }

    if (v33)
    {
      xpc_dictionary_set_value(v21, "kWCMCellularSetAntBlocking_RearTeleCameraPolicy", v33);
    }

    if (v21)
    {
      v22 = [(WCM_AriCoexCommandHandler *)self createMessageWithMsgId:1227 withArgs:v21 withSubId:v16];
      [(WCM_AriCoexCommandHandler *)self handleEvent:v22];

      v23 = v21;
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  v23 = 0;
  if (v12)
  {
LABEL_25:
    v24 = [(WCM_AriCoexCommandHandler *)self createMessageWithMsgId:1228 withArgs:v12 withSubId:v16];
    [(WCM_AriCoexCommandHandler *)self handleEvent:v24];
  }

LABEL_26:
  if (getAntBlockConfigGnssImdClient)
  {
    mQueue = self->mQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001A990;
    block[3] = &unk_10023D980;
    block[4] = self;
    v38 = getAntBlockConfigGnssImdClient;
    dispatch_async(mQueue, block);
  }

  if (v13)
  {
    v26 = [(WCM_AriCoexCommandHandler *)self createMessageWithMsgId:1229 withArgs:v13 withSubId:v16];
    [(WCM_AriCoexCommandHandler *)self handleEvent:v26];
  }

  if (v14)
  {
    v27 = [(WCM_AriCoexCommandHandler *)self createMessageWithMsgId:1214 withArgs:v14 withSubId:v16];
    [(WCM_AriCoexCommandHandler *)self handleEvent:v27];
  }

  if (v15)
  {
    v28 = [(WCM_AriCoexCommandHandler *)self createMessageWithMsgId:1215 withArgs:v15 withSubId:v16];
    [(WCM_AriCoexCommandHandler *)self handleEvent:v28];
  }

  plistCopy = v29;
LABEL_35:
}

- (void)handleCoexManagerEvent:(id)event
{
  xdict = event;
  [WCM_Logging logLevel:3 message:@"Coex ARI Driver: Handling XPC Event : %@", xdict];
  uint64 = xpc_dictionary_get_uint64(xdict, "kMessageId");
  if (uint64)
  {
    v5 = xpc_dictionary_get_uint64(xdict, "kSubId");
    v6 = xpc_dictionary_get_value(xdict, "kMessageArgs");
    switch(uint64)
    {
      case 0x4B0uLL:
        [(WCM_AriCoexCommandHandler *)self getCellularNetworkConfig:v6 SubId:v5];
        break;
      case 0x4B5uLL:
        [(WCM_AriCoexCommandHandler *)self setSpmiFeature:v6 SubId:v5];
        break;
      case 0x4B8uLL:
        [(WCM_AriCoexCommandHandler *)self setScanFreq:v6 SubId:v5];
        break;
      case 0x4BEuLL:
        [(WCM_AriCoexCommandHandler *)self setTimesharingConfig:v6 SubId:0];
        [(WCM_AriCoexCommandHandler *)self setTimesharingConfig:v6 SubId:1];
        break;
      case 0x4BFuLL:
        [(WCM_AriCoexCommandHandler *)self setCellularAntBitmap:v6 SubId:0];
        [(WCM_AriCoexCommandHandler *)self setCellularAntBitmap:v6 SubId:1];
        break;
      case 0x4C1uLL:
        [(WCM_AriCoexCommandHandler *)self setCC1Config:v6 SubId:v5];
        break;
      case 0x4C2uLL:
        [(WCM_AriCoexCommandHandler *)self setCC2Config:v6 SubId:v5];
        break;
      case 0x4C7uLL:
        [(WCM_AriCoexCommandHandler *)self handleTransparentMessage:v6 SubId:0];
        [(WCM_AriCoexCommandHandler *)self handleTransparentMessage:v6 SubId:1];
        break;
      case 0x4C9uLL:
        [(WCM_AriCoexCommandHandler *)self setCnvAntBlockingPowerLimitingConfig:v6 SubId:0];
        [(WCM_AriCoexCommandHandler *)self setCnvAntBlockingPowerLimitingConfig:v6 SubId:1];
        break;
      case 0x4CAuLL:
        [(WCM_AriCoexCommandHandler *)self setUwbAntBlockingPowerLimitingConfig:v6 SubId:0];
        [(WCM_AriCoexCommandHandler *)self setUwbAntBlockingPowerLimitingConfig:v6 SubId:1];
        break;
      case 0x4CBuLL:
        [(WCM_AriCoexCommandHandler *)self setCamAntBlockingPowerLimitingConfig:v6 SubId:0];
        [(WCM_AriCoexCommandHandler *)self setCamAntBlockingPowerLimitingConfig:v6 SubId:1];
        break;
      case 0x4CCuLL:
        [(WCM_AriCoexCommandHandler *)self setE85AntBlockingPowerLimitingConfig:v6 SubId:v5];
        break;
      case 0x4CDuLL:
        [(WCM_AriCoexCommandHandler *)self setSFBMAntBlockingPowerLimitingConfig:v6 SubId:0];
        [(WCM_AriCoexCommandHandler *)self setSFBMAntBlockingPowerLimitingConfig:v6 SubId:1];
        break;
      case 0x4CEuLL:
        break;
      case 0x4CFuLL:
        [(WCM_AriCoexCommandHandler *)self setCellularMiscConfig:v6 SubId:0];
        [(WCM_AriCoexCommandHandler *)self setCellularMiscConfig:v6 SubId:1];
        break;
      case 0x4D0uLL:
        [(WCM_AriCoexCommandHandler *)self setCellularTxActivityConfig:v6 SubId:v5];
        break;
      case 0x4D1uLL:
        [(WCM_AriCoexCommandHandler *)self getCellularLaaMeasInfo:v6 SubId:v5];
        break;
      case 0x4D2uLL:
        [(WCM_AriCoexCommandHandler *)self setCameraState:v6 SubId:0];
        [(WCM_AriCoexCommandHandler *)self setCameraState:v6 SubId:1];
        break;
      case 0x4D3uLL:
        [(WCM_AriCoexCommandHandler *)self setAllCCConfig:v6 SubId:v5];
        break;
      default:
        [WCM_Logging logLevel:0 message:@"Coex ARI driver does not support message %llu", uint64];
        break;
    }
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Coex ARI Driver:  XPC miss key of message id"];
  }
}

- (int)convertInternalCallType:(unint64_t)type
{
  if (type == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (int)convertInternalCoexTech:(unint64_t)tech
{
  if (tech > 0xB)
  {
    return 127;
  }

  else
  {
    return dword_100195714[tech];
  }
}

- (unint64_t)getSubIdFromInternalCoexTech:(unint64_t)tech
{
  if (tech - 6 > 5)
  {
    return 0;
  }

  else
  {
    return qword_100195748[tech - 6];
  }
}

- (void)sendMessage:(unint64_t)message withArgs:(id)args withSubId:(unint64_t)id
{
  argsCopy = args;
  v9 = xpc_uint64_create(id);
  *keys = *off_10023DA08;
  v18 = "kSubId";
  values = xpc_uint64_create(message);
  v10 = argsCopy;
  v15 = v10;
  v11 = v9;
  v16 = v11;
  v12 = xpc_dictionary_create(keys, &values, 3uLL);
  if (self->mCellularController)
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI Driver: Sending messageId(%lld) to Coex Manager", message, values, v15];
    [(WCM_CellularController *)self->mCellularController handleMessage:v12];
  }

  for (i = 16; i != -8; i -= 8)
  {
  }
}

- (BOOL)checkError:(void *)error expectedGMID:(unsigned int)d
{
  v4 = *&d;
  GMID = AriSdk::MsgBase::getGMID(error);
  v6 = (GMID >> 17) & 0xFFFF8000 | (GMID << 26);
  if (v6 == 67600384)
  {
    v7 = @"Coex ARI Driver: response NACK";
  }

  else
  {
    if (v6 == v4)
    {
      return 1;
    }

    v9 = v4;
    v10 = (GMID >> 17) & 0xFFFF8000 | (GMID << 26);
    v7 = @"Coex ARI Driver: expected response GMID=%u, received response GMID=%u";
  }

  [WCM_Logging logLevel:3 message:v7, v9, v10];
  return 0;
}

- (BOOL)checkErrorMsgGmid:(unsigned int)gmid expectedGMID:(unsigned int)d API_Str:(const char *)str
{
  if (gmid == 67600384)
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI Driver: %s received NACK response", str, v6, v7];
  }

  else
  {
    if (gmid == d)
    {
      return 1;
    }

    [WCM_Logging logLevel:3 message:@"Coex ARI Driver: %s expected response GMID=%u, received response GMID=%u", str, *&d, *&gmid];
  }

  return 0;
}

- (void)setDefaultEvent
{
  v4[2] = 0x100000001;
  AriSdk::ARI_UtaIdcConfigEventReq_SDK::ARI_UtaIdcConfigEventReq_SDK(v3);
  v2[0] = 0;
  sub_10001B2B0(v4, v2);
}

- (void)convertToAriType_WiFiState:(unint64_t)state userCase:(unint64_t)case AriState:(unint64_t *)ariState AriUseCase:(unint64_t *)useCase
{
  if (ariState)
  {
    if (state - 1 >= 4)
    {
      stateCopy = 0;
    }

    else
    {
      stateCopy = state;
    }

    *ariState = stateCopy;
  }

  if (useCase)
  {
    *useCase = 0;
  }
}

- (void)convertToAriType_BtState:(unint64_t)state userCase:(unint64_t)case AriState:(unint64_t *)ariState AriUseCase:(unint64_t *)useCase
{
  if (case == 5)
  {
    v6 = 5;
  }

  else
  {
    v6 = 0;
  }

  if (case == 4)
  {
    v6 = 4;
  }

  if (case - 6 >= 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 4 * (state == 2);
  }

  if (case == 3)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  if (case == 2)
  {
    v8 = 2;
  }

  if (case == 1)
  {
    v8 = 1;
  }

  if (case <= 3)
  {
    v7 = v8;
  }

  if (ariState)
  {
    *ariState = state == 2;
  }

  if (useCase)
  {
    *useCase = v7;
  }
}

- (void)convertToAriType_FigaroState:(unint64_t)state userCase:(unint64_t)case AriState:(unint64_t *)ariState AriUseCase:(unint64_t *)useCase
{
  v6 = (case & 0xFFFFFFFFFFFFFFFELL) == 6 && state == 3;
  v7 = 3;
  if (!v6)
  {
    v7 = 0;
  }

  if (ariState)
  {
    *ariState = state == 3;
  }

  if (useCase)
  {
    *useCase = v7;
  }
}

- (void)convertToAriType_GnssState:(unint64_t)state userCase:(unint64_t)case AriState:(unint64_t *)ariState AriUseCase:(unint64_t *)useCase
{
  v6 = case & 0xF;
  if (state - 1 >= 3)
  {
    stateCopy = 0;
  }

  else
  {
    stateCopy = state;
  }

  if ((case & 0xF) <= 2)
  {
    if (v6 == 1)
    {
      goto LABEL_14;
    }

    if (v6 == 2)
    {
      v6 = 2;
      goto LABEL_14;
    }
  }

  else
  {
    switch(v6)
    {
      case 3:
        v6 = 3;
        goto LABEL_14;
      case 4:
        goto LABEL_14;
      case 5:
        v6 = 65541;
        goto LABEL_14;
    }
  }

  v6 = 4;
LABEL_14:
  v8 = case >> 4;
  v9 = v6 | 0x10100;
  v10 = v6 | 0x200;
  if (v8 == 1)
  {
    v6 |= 0x100uLL;
  }

  if (v8 == 2)
  {
    v6 = v10;
  }

  if (v8 == 5)
  {
    v6 = v9;
  }

  if (ariState)
  {
    *ariState = stateCopy;
  }

  if (useCase)
  {
    *useCase = v6;
  }
}

- (void)convertToAriType_UwbState:(unint64_t)state userCase:(unint64_t)case AriState:(unint64_t *)ariState AriUseCase:(unint64_t *)useCase
{
  if (ariState)
  {
    v6 = state == 5;
    if (state == 9)
    {
      v6 = 2;
    }

    *ariState = v6;
  }

  if (useCase)
  {
    *useCase = 0;
  }
}

- (void)handleTunerState:(unint64_t)state state:(unint64_t)a4 useCase:(unint64_t)case SubId:(unsigned int)id
{
  v6 = *&id;
  caseCopy = case;
  v16 = a4;
  idCopy = id;
  if (state <= 1)
  {
    if (state)
    {
      if (state != 1)
      {
        return;
      }

      [(WCM_AriCoexCommandHandler *)self convertToAriType_WiFiState:a4 userCase:case AriState:&v16 AriUseCase:&caseCopy];
      [WCM_Logging logLevel:3 message:@"Coex ARI Driver(SubId %u): WiFi Tuner state = %llu, useCase = %llu", v6, v16, caseCopy];
      v7 = 1;
    }

    else
    {
      [(WCM_AriCoexCommandHandler *)self convertToAriType_GnssState:a4 userCase:case AriState:&v16 AriUseCase:&caseCopy];
      [WCM_Logging logLevel:3 message:@"Coex ARI Driver(SubId %u): GNSS Tuner state = %llu, L1 useCase = %llu, L5 useCase = %llu, low priority = %llu", v6, v16, BYTE1(caseCopy), caseCopy, caseCopy & 0x10000];
      v7 = 0;
    }

LABEL_12:
    v11 = v7;
    v12 = v16;
    v13 = caseCopy;
    AriSdk::ARI_UtaIdcSetTunerVoterConfigReq_SDK::ARI_UtaIdcSetTunerVoterConfigReq_SDK(v9);
    sub_10001B2B0(&v10, &idCopy);
  }

  switch(state)
  {
    case 2uLL:
      [(WCM_AriCoexCommandHandler *)self convertToAriType_BtState:a4 userCase:case AriState:&v16 AriUseCase:&caseCopy];
      [WCM_Logging logLevel:3 message:@"Coex ARI Driver(SubId %u): BT Tuner state = %llu, useCase = %llu", v6, v16, caseCopy];
      v7 = 2;
      goto LABEL_12;
    case 3uLL:
      [(WCM_AriCoexCommandHandler *)self convertToAriType_UwbState:a4 userCase:case AriState:&v16 AriUseCase:&caseCopy];
      v8 = v6;
      v7 = 3;
      [WCM_Logging logLevel:3 message:@"Coex ARI Driver(SubId %u): UWB Tuner state = %llu, useCase = %llu", v8, v16, caseCopy];
      goto LABEL_12;
    case 4uLL:
      [(WCM_AriCoexCommandHandler *)self convertToAriType_FigaroState:a4 userCase:case AriState:&v16 AriUseCase:&caseCopy];
      [WCM_Logging logLevel:3 message:@"Coex ARI Driver(SubId %u): HFBT Tuner state = %llu, useCase = %llu", v6, v16, caseCopy];
      v7 = 4;
      goto LABEL_12;
  }
}

- (void)handleTransparentMessage:(id)message SubId:(unsigned int)id
{
  v4 = *&id;
  xarray = xpc_dictionary_get_value(message, "kWCMCellularTransparentMessageInformationSet");
  if (xarray)
  {
    count = xpc_array_get_count(xarray);
    if (count)
    {
      for (i = 0; count != i; ++i)
      {
        v8 = xpc_array_get_value(xarray, i);
        v9 = v8;
        if (v8)
        {
          uint64 = xpc_dictionary_get_uint64(v8, "kWCMCellularTransparentMessage_Type");
          v11 = xpc_dictionary_get_value(v9, "kWCMCellularTransparentMessage_ByteList");
          v12 = v11;
          if (uint64 < 5)
          {
            v13 = xpc_array_get_count(v11);
            if (v13 != 2)
            {
              [WCM_Logging logLevel:0 message:@"Coex ARI Driver: Sensor %llu has wrong data size (%llu). Expect size = 2", uint64, v13];

              break;
            }

            v14 = xpc_array_get_uint64(v12, 0);
            [(WCM_AriCoexCommandHandler *)self handleTunerState:uint64 state:v14 useCase:xpc_array_get_uint64(v12 SubId:1uLL), v4];
          }
        }
      }
    }
  }
}

- (void)setCameraState:(id)state SubId:(unsigned int)id
{
  v4 = *&id;
  stateCopy = state;
  [(WCM_AriCoexCommandHandler *)self sendBasebandCameraState:xpc_dictionary_get_uint64(stateCopy SubId:"kWCMCellularSetCameraState") BasebandPowerOnUpdate:v4, 0];
}

- (void)sendBasebandCameraState:(unint64_t)state SubId:(unsigned int)id BasebandPowerOnUpdate:(BOOL)update
{
  v6 = *&id;
  v33[0] = id;
  v29 = 0;
  v31 = 1;
  v27 = 3;
  v25 = 2;
  v23 = 4;
  v22 = 0;
  v21 = 0;
  v9 = state & 1;
  v10 = state & 8;
  v11 = state & 0x40;
  v20 = 0;
  v12 = state & 0x200;
  v13 = state & 0x1000;
  [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set camera State: Raw Camera State = 0x%x", *&id, state];
  v32 = v9;
  v17 = (state >> 3) & 1;
  v30 = (state >> 3) & 1;
  v28 = (state >> 6) & 1;
  v26 = (state >> 9) & 1;
  v24 = (state >> 12) & 1;
  v14 = (state >> 12) & 1;
  v15 = (state >> 9) & 1;
  v16 = (state >> 6) & 1;
  if (!update)
  {
    [(WCM_AriCoexCache *)self->mCache get:@"kCameraStateFaceID" value_BOOL:&v22 + 1 subId:v6];
    [(WCM_AriCoexCache *)self->mCache get:@"kCameraStateFrontCam" value_BOOL:&v22 subId:v33[0]];
    [(WCM_AriCoexCache *)self->mCache get:@"kCameraStateRearTeleCam" value_BOOL:&v21 + 1 subId:v33[0]];
    [(WCM_AriCoexCache *)self->mCache get:@"kCameraStateRearUltraWideCam" value_BOOL:&v21 subId:v33[0]];
    [(WCM_AriCoexCache *)self->mCache get:@"kCameraStateRearWideCam" value_BOOL:&v20 subId:v33[0]];
    v6 = v33[0];
  }

  [(WCM_AriCoexCache *)self->mCache update:@"kCameraStateFaceID" value_BOOL:v9 subId:v6];
  [(WCM_AriCoexCache *)self->mCache update:@"kCameraStateFrontCam" value_BOOL:v10 != 0 subId:v33[0]];
  [(WCM_AriCoexCache *)self->mCache update:@"kCameraStateRearTeleCam" value_BOOL:v11 != 0 subId:v33[0]];
  [(WCM_AriCoexCache *)self->mCache update:@"kCameraStateRearUltraWideCam" value_BOOL:v12 != 0 subId:v33[0]];
  [(WCM_AriCoexCache *)self->mCache update:@"kCameraStateRearWideCam" value_BOOL:v13 != 0 subId:v33[0]];
  if (HIBYTE(v22) != v9)
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Face Id camera State: from %d to %d ", v33[0], HIBYTE(v22), v9];
    AriSdk::ARI_UtaIdcSetCameraStatusReqV2_SDK::ARI_UtaIdcSetCameraStatusReqV2_SDK(v18);
    sub_10001B2B0(v19, v33);
  }

  if (v22 != v17)
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Front camera State: from %d to %d ", v33[0], v22, v17];
    AriSdk::ARI_UtaIdcSetCameraStatusReqV2_SDK::ARI_UtaIdcSetCameraStatusReqV2_SDK(v18);
    sub_10001B2B0(v19, v33);
  }

  if (HIBYTE(v21) != v16)
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Rear Telephoto camera State: from %d to %d ", v33[0], HIBYTE(v21), v16];
    AriSdk::ARI_UtaIdcSetCameraStatusReqV2_SDK::ARI_UtaIdcSetCameraStatusReqV2_SDK(v18);
    sub_10001B2B0(v19, v33);
  }

  if (v21 != v15)
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Rear ultra wide camera State: from %d to %d ", v33[0], v21, v15];
    AriSdk::ARI_UtaIdcSetCameraStatusReqV2_SDK::ARI_UtaIdcSetCameraStatusReqV2_SDK(v18);
    sub_10001B2B0(v19, v33);
  }

  if (v20 != v14)
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Rear wide camera State: from %d to %d ", v33[0], v20, v14];
    AriSdk::ARI_UtaIdcSetCameraStatusReqV2_SDK::ARI_UtaIdcSetCameraStatusReqV2_SDK(v18);
    sub_10001B2B0(v19, v33);
  }
}

- (void)updateBasebandPowerState
{
  v3 = xpc_dictionary_create(0, 0, 0);
  [WCM_AriCoexCommandHandler sendMessage:"sendMessage:withArgs:withSubId:" withArgs:304 withSubId:?];
}

- (void)getCellularLaaMeasInfo:(id)info SubId:(unsigned int)id
{
  AriSdk::ARI_UtaIdcGetLaaMeasInfoReq_SDK::ARI_UtaIdcGetLaaMeasInfoReq_SDK(v6);
  idCopy = id;
  sub_10001B2B0(&v7, &idCopy);
}

- (void)setCellularTxActivityConfig:(id)config SubId:(unsigned int)id
{
  v4 = *&id;
  configCopy = config;
  v16 = v4;
  int64 = xpc_dictionary_get_int64(configCopy, "kWCMCellularSetTxActivityConfig_TxEnvPowerThreshold");
  uint64 = xpc_dictionary_get_uint64(configCopy, "kWCMCellularSetTxActivityConfig_TxEnvMinDuration");
  v8 = xpc_dictionary_get_BOOL(configCopy, "kWCMCellularSetTxActivityConfig_TxStatsEnable");
  v9 = xpc_dictionary_get_uint64(configCopy, "kWCMCellularSetTxActivityConfig_TxStatsCadence");
  [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set TX Activity Config: txEnvPowerThre = %lld, txEnvMinDur = %llu, txStatsEnable = %d, txStatsCadence = %llu", v4, int64, uint64, v8, v9];
  v12 = int64;
  v13 = uint64;
  v14 = v8;
  v15 = v9;
  AriSdk::ARI_UtaIdcConfigTxActParamReq_SDK::ARI_UtaIdcConfigTxActParamReq_SDK(v10);
  sub_10001B2B0(&v11, &v16);
}

- (void)setCellularMiscConfig:(id)config SubId:(unsigned int)id
{
  v4 = *&id;
  xdict = config;
  uint64 = xpc_dictionary_get_uint64(xdict, "kWCMCellularSetMiscConfig_UwbInactivityDurationThreshold");
  [(WCM_AriCoexCommandHandler *)self setCellularMiscConfigToSubId:v4 uwbInactThre_ms:uint64 cellOnTimer_ms:xpc_dictionary_get_uint64(xdict, "kWCMCellularSetMiscConfig_CellOnStickyTimer")];
}

- (void)setCellularMiscConfigToSubId:(unsigned int)id uwbInactThre_ms:(unsigned int)thre_ms cellOnTimer_ms:(unsigned int)timer_ms
{
  idCopy = id;
  [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Misc Config: uwbInactThre_ms = %u, cellOnTimer_ms = %u", *&id, *&thre_ms, *&timer_ms];
  thre_msCopy = thre_ms;
  timer_msCopy = timer_ms;
  AriSdk::ARI_UtaIdcConfigMiscParamReqV2_SDK::ARI_UtaIdcConfigMiscParamReqV2_SDK(v7);
  sub_10001B2B0(&v8, &idCopy);
}

- (void)setCellularAntBitmap:(id)bitmap SubId:(unsigned int)id
{
  v4 = *&id;
  idCopy = id;
  v5 = xpc_dictionary_get_value(bitmap, "kWCMCellularSetWCI2TxAntMap_InformationSet");
  [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Cellular Ant Bitmap: enable = %llu, defaultIdx = %llu", v4, 1, 0];
  if (v5)
  {
    count = xpc_array_get_count(v5);
    v14 = 0;
    v15 = 0;
    if (count)
    {
      v7 = 0;
      do
      {
        v8 = xpc_array_get_value(v5, v7);
        uint64 = xpc_dictionary_get_uint64(v8, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx");
        v10 = xpc_dictionary_get_uint64(v8, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx");
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Cellular Ant Bitmap: physical Ant Idx = %llu, SPMI Ant Idx = %llu", v4, uint64, v10];
        if (uint64 <= 0xF)
        {
          *(&v14 + uint64) = v10;
        }

        ++v7;
      }

      while (count != v7);
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  AriSdk::ARI_UtaIdcSetTxAntMappingTableReq_SDK::ARI_UtaIdcSetTxAntMappingTableReq_SDK(v11);
  sub_10001B2B0(&v12, &idCopy);
}

- (void)setSpmiFeature:(id)feature SubId:(unsigned int)id
{
  v4 = *&id;
  featureCopy = feature;
  v38[0] = &off_10026FAE0;
  v38[1] = &off_10026FB10;
  v39[0] = &off_10026FDE0;
  v39[1] = &off_10026FDF8;
  v38[2] = &off_10026FB28;
  v38[3] = &off_10026FB40;
  v39[2] = &off_10026FC90;
  v39[3] = &off_10026FE10;
  v38[4] = &off_10026FB58;
  v38[5] = &off_10026FB70;
  v39[4] = &off_10026FB88;
  v39[5] = &off_10026FE28;
  v38[6] = &off_10026FBE8;
  v38[7] = &off_10026FAC8;
  v39[6] = &off_10026FC60;
  v39[7] = &off_10026FDE0;
  v38[8] = &off_10026FBA0;
  v38[9] = &off_10026FA80;
  v39[8] = &off_10026FDE0;
  v39[9] = &off_10026FE40;
  v38[10] = &off_10026FB88;
  v38[11] = &off_10026FC18;
  v39[10] = &off_10026FE58;
  v39[11] = &off_10026FDE0;
  v38[12] = &off_10026FBB8;
  v38[13] = &off_10026FE70;
  v39[12] = &off_10026FAF8;
  v39[13] = &off_10026FE88;
  v38[14] = &off_10026FEA0;
  v38[15] = &off_10026FED0;
  v39[14] = &off_10026FEB8;
  v39[15] = &off_10026FE88;
  v38[16] = &off_10026FEE8;
  v38[17] = &off_10026FF00;
  v39[16] = &off_10026FE28;
  v39[17] = &off_10026FE88;
  v38[18] = &off_10026FF18;
  v38[19] = &off_10026FF30;
  v39[18] = &off_10026FE58;
  v39[19] = &off_10026FE58;
  v29 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:20];
  if (featureCopy)
  {
    uint64 = xpc_dictionary_get_uint64(featureCopy, "kWCMCellularSetWCI2Mode_Policy");
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId%d): Set TX SPMI feature: Coex Policy bitmap = 0x%x, ClockAlignment = %d", v4, uint64, uint64 & 1];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId%d): Set TX SPMI feature: XPC message is nil", v4];
    LOBYTE(uint64) = 0;
    if (v4)
    {
      qword_1002B7CE8 = 0;
      qword_1002B7CF0 = 0;
    }

    else
    {
      qword_1002B7CD8 = 0;
      qword_1002B7CE0 = 0;
    }
  }

  v8 = objc_alloc_init(NSMutableArray);
  v30 = objc_alloc_init(NSMutableArray);
  if (self->coexOSFeatureGroupEnabled[1] && self->coexPlatformFeatureGroupEnabled[1] && ([v8 containsObject:&off_10026FB58] & 1) == 0)
  {
    [v8 addObject:&off_10026FB58];
  }

  if (self->coexOSFeatureGroupEnabled[2] && self->coexPlatformFeatureGroupEnabled[2])
  {
    if (([v8 containsObject:&off_10026FB70] & 1) == 0)
    {
      [v8 addObject:&off_10026FB70];
    }

    if (([v8 containsObject:&off_10026FBE8] & 1) == 0)
    {
      [v8 addObject:&off_10026FBE8];
    }
  }

  if (self->coexOSFeatureGroupEnabled[4] && self->coexPlatformFeatureGroupEnabled[4] && ([v30 containsObject:&off_10026FF00] & 1) == 0)
  {
    [v30 addObject:&off_10026FF00];
  }

  if (self->coexOSFeatureGroupEnabled[5] && (self->coexPlatformFeatureGroupEnabled[5] & uint64 & 1) != 0 && ([v8 containsObject:&off_10026FAE0] & 1) == 0)
  {
    [v8 addObject:&off_10026FAE0];
  }

  if (self->coexOSFeatureGroupEnabled[6] && self->coexPlatformFeatureGroupEnabled[6])
  {
    if (([v8 containsObject:&off_10026FAC8] & 1) == 0)
    {
      [v8 addObject:&off_10026FAC8];
    }

    if (([v8 containsObject:&off_10026FBA0] & 1) == 0)
    {
      [v8 addObject:&off_10026FBA0];
    }
  }

  if (self->coexOSFeatureGroupEnabled[7] && self->coexPlatformFeatureGroupEnabled[7] && ([v30 containsObject:&off_10026FF18] & 1) == 0)
  {
    [v30 addObject:&off_10026FF18];
  }

  if (self->coexOSFeatureGroupEnabled[9] && self->coexPlatformFeatureGroupEnabled[9] && ([v8 containsObject:&off_10026FBB8] & 1) == 0)
  {
    [v8 addObject:&off_10026FBB8];
  }

  if (self->coexOSFeatureGroupEnabled[12] && self->coexPlatformFeatureGroupEnabled[12] && ([v8 containsObject:&off_10026FA80] & 1) == 0)
  {
    [v8 addObject:&off_10026FA80];
  }

  v28 = v4;
  for (i = 1; i != 65; i += 2)
  {
    v36[i] = 107;
    v34[i] = 107;
  }

  v10 = 0;
  v11 = 0;
  v36[0] = 0;
  v34[0] = 0;
  for (j = &v35; ; j += 2)
  {
    v13 = [v8 count];
    if (v10 > 0x1F || v13 <= v10)
    {
      break;
    }

    v14 = v8;
    v15 = [v8 objectAtIndex:v10];
    *(j - 1) = [v15 unsignedIntValue];
    v16 = [v29 objectForKeyedSubscript:v15];
    *j = [v16 unsignedIntValue];

    ++v34[0];
    v17 = *(j - 1);
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId%d): Set TX SPMI feature [%d]: feature = %u, subsys = %u", v4, v10, v17, *j];

    v11 |= 1 << v17;
    ++v10;
    v8 = v14;
  }

  v18 = 0;
  v19 = 0;
  for (k = &v37; ; k += 2)
  {
    v21 = [v30 count];
    if (v18 > 0x1F || v21 <= v18)
    {
      break;
    }

    v22 = [v30 objectAtIndex:v18];
    unsignedIntValue = [v22 unsignedIntValue];
    *(k - 1) = unsignedIntValue;
    v24 = [v29 objectForKeyedSubscript:v22];
    unsignedIntValue2 = [v24 unsignedIntValue];
    *k = unsignedIntValue2;

    v36[0] = v18 + 1;
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId%d): Set RX SPMI feature [%d]: feature = %u, subsys = %u", v28, v18, unsignedIntValue, unsignedIntValue2];

    v19 |= 1 << (unsignedIntValue - 100);
    ++v18;
  }

  if (v28)
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId1): Set TX SPMI feature bitmap = 0x%x, cached = 0x%x", v11, qword_1002B7CE8];
    v26 = &qword_1002B7CF0;
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId1): Set RX SPMI feature bitmap = 0x%x, cached = 0x%x", v19, qword_1002B7CF0];
    v27 = &qword_1002B7CE8;
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId0): Set TX SPMI feature bitmap = 0x%x, cached = 0x%x", v11, qword_1002B7CD8];
    v26 = &qword_1002B7CE0;
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId0): Set RX SPMI feature bitmap = 0x%x, cached = 0x%x", v19, qword_1002B7CE0];
    v27 = &qword_1002B7CD8;
  }

  *v27 = v11;
  *v26 = v19;
  AriSdk::ARI_UtaIdcSetRTFeatureSpmiTxReqV3_SDK::ARI_UtaIdcSetRTFeatureSpmiTxReqV3_SDK(v32);
  v31[0] = v28;
  sub_10001B2B0(&v33, v31);
}

- (void)setCnvAntBlockingPowerLimitingConfig:(id)config SubId:(unsigned int)id
{
  v28 = *&id;
  xdict = config;
  uint64 = xpc_dictionary_get_uint64(xdict, "kWCMCellularSetAntBlocking_LQMThreshold");
  v5 = xpc_dictionary_get_uint64(xdict, "kWCMCellularSetAntBlocking_DurationGranularity");
  v6 = xpc_dictionary_get_BOOL(xdict, "kWCMCellularSetAntBlocking_DenyProtectVoice");
  v7 = xpc_dictionary_get_uint64(xdict, "kWCMCellularSetAntBlocking_MitigationTimer");
  [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set CNV Antenna Blk Policy, lqmThreshold = %llu, durationGranularity = %llu", v28, uint64, v5];
  [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set CNV Antenna Blk Policy, denyVoiceProtect = %d, mitigationTimer = %llu", v28, v6, v7];
  if ([(WCM_AriCoexCommandHandler *)self LQMEnumCheck:uint64])
  {
    v8 = xpc_dictionary_get_value(xdict, "kWCMCellularSetAntBlocking_PolicySet");
    xarray = v8;
    if (v8)
    {
      count = xpc_array_get_count(v8);
      v10 = 32;
      if (count < 0x20)
      {
        v10 = count;
      }

      v26 = v10;
    }

    else
    {
      v26 = 0;
    }

    for (i = 0; i != 1152; i += 36)
    {
      v12 = &v34[2] + i;
      *v12 = 0;
      *(v12 + 6) = 3;
      *(v12 + 2) = 127;
      *(v12 + 16) = 0;
    }

    v35[284] = v6;
    v35[285] = uint64;
    v36 = v5;
    v37 = v7;
    if (!v26)
    {
LABEL_15:
      AriSdk::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigReq_SDK::ARI_UtaIdcSetCnvAntBlockPwrLmtConfigReq_SDK(v33);
      v32 = v28;
      sub_10001B2B0(v34, &v32);
    }

    v13 = 0;
    v14 = v35;
    while (1)
    {
      v15 = xpc_array_get_value(xarray, v13);
      v31 = xpc_dictionary_get_BOOL(v15, "kWCMCellularSetAntBlocking_Policy_Enable");
      v30 = xpc_dictionary_get_uint64(v15, "kWCMCellularSetAntBlocking_Policy_CellularAntBitmap");
      int64 = xpc_dictionary_get_int64(v15, "kWCMCellularSetAntBlocking_Policy_CellularPowerCap");
      v17 = xpc_dictionary_get_uint64(v15, "kWCMCellularSetAntBlocking_Policy_MitigationType");
      v18 = xpc_dictionary_get_uint64(v15, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_Band");
      v19 = xpc_dictionary_get_uint64(v15, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_CoexTech");
      v20 = xpc_dictionary_get_uint64(v15, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_CenterFreq");
      v21 = xpc_dictionary_get_uint64(v15, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_Bandwidth");
      v22 = xpc_dictionary_get_uint64(v15, "kWCMCellularSetAntBlocking_Policy_ConditionId");
      [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set CNV Antenna Blk Policy -- policy[%lu]: enable = %d, cellularAntBitmap = %llu, cellularTxPowerCap = %lld, mitigationType = %llu", v28, v13, v31, v30, int64, v17];
      [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set CNV Antenna Blk Policy -- policy[%lu]: cellularBand = %llu, cellularCoexTech = %llu, frequency = %lluKHz, BW = %lluKHz, Condition_id = %llu", v28, v13, v18, v19, v20, v21, v22];
      if (![(WCM_AriCoexCommandHandler *)self coexTechEnumCheck:v19])
      {
        v23 = 3;
        v24 = @"Coex ARI driver(SubId %u): Set CNV Antenna Blk Policy -- Invalid cellularCoexTech = %llu";
        goto LABEL_18;
      }

      if (![(WCM_AriCoexCommandHandler *)self mitigationTypeEnumCheck:v17])
      {
        break;
      }

      *(v14 - 4) = v31;
      *(v14 - 3) = v18;
      *(v14 - 2) = v19;
      *(v14 - 1) = v20;
      *v14 = v21;
      v14[1] = v30;
      v14[2] = v17;
      v14[3] = int64;
      *(v14 + 8) = v22;

      ++v13;
      v14 += 9;
      if (v26 == v13)
      {
        goto LABEL_15;
      }
    }

    v23 = 0;
    v24 = @"Coex ARI driver(SubId %u): Set CNV Antenna Blk Policy, invalid mitigationType=%llu, API UtaIdcSetCnvAntBlockPwrLmtConfigReq failed";
    v19 = v17;
LABEL_18:
    [WCM_Logging logLevel:v23 message:v24, v28, v19];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Coex ARI driver(SubId %u): Set CNV Antenna Blk Policy, invalid lqmThreshold=%llu, API UtaIdcSetCnvAntBlockPwrLmtConfigReq failed", v28, uint64];
  }
}

- (BOOL)setCamAntBlockingPowerLimitingParam:(t_s_UtaIdcCamAntBlockPwrLmtPolicyConfigBundleV3 *)param XpcMessage:(id)message SubId:(unsigned int)id
{
  v55 = *&id;
  xdict = message;
  v60[0] = &off_10026FB88;
  v60[1] = &off_10026FB10;
  v61[0] = @"UNKNOWN SKU";
  v61[1] = @"US SKU";
  v60[2] = &off_10026FB28;
  v60[3] = &off_10026FB40;
  v61[2] = @"WW SKU";
  v61[3] = @"ROW SKU";
  v60[4] = &off_10026FB58;
  v61[4] = @"CHINA SKU";
  v56 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:5];
  v6 = 0;
  if (!param || !xdict)
  {
    goto LABEL_52;
  }

  uint64 = xpc_dictionary_get_uint64(xdict, "kWCMCellularSetAntBlocking_CameraId");
  v7 = xpc_dictionary_get_BOOL(xdict, "kWCMCellularSetAntBlocking_DenyProtectVoice");
  v8 = xpc_dictionary_get_uint64(xdict, "kWCMCellularSetAntBlocking_MitigationTimer");
  if (uint64 <= 3)
  {
    if (uint64 == 2)
    {
      v10 = 0;
      v9 = 1;
      goto LABEL_15;
    }

    if (uint64 == 3)
    {
      v9 = 1;
      v10 = 1;
      goto LABEL_15;
    }

LABEL_14:
    v9 = 0;
    v10 = 5;
    goto LABEL_15;
  }

  if (uint64 == 4)
  {
    v9 = 1;
    v10 = 2;
    goto LABEL_15;
  }

  if (uint64 == 5)
  {
    v9 = 1;
    v10 = 3;
    goto LABEL_15;
  }

  if (uint64 != 8)
  {
    goto LABEL_14;
  }

  v9 = 1;
  v10 = 4;
LABEL_15:
  if ((v9 & [(WCM_AriCoexCommandHandler *)self cameraEnumCheck:v10]& 1) == 0)
  {
    [WCM_Logging logLevel:0 message:@"Coex ARI driver(SubId %u): Set Camera Antenna Blk Policy, invalid camera ID = %llu", v55, v10];
    v6 = 0;
    goto LABEL_52;
  }

  v11 = &param->var0[v10];
  v11->var1 = v7;
  v49 = v11;
  v11->var2 = v8;
  [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Camera Antenna Blk Policy, camera ID = %llu", v55, v10];
  [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Camera Antenna Blk Policy, denyVoiceProtect = %d, mitigationTimer = %llu", v55, v7, v8];
  v12 = xpc_dictionary_get_value(xdict, "kWCMCellularSetAntBlocking_PolicySet");
  xarray = v12;
  if (v12)
  {
    count = xpc_array_get_count(v12);
  }

  else
  {
    count = 0;
  }

  if (uint64 == 3)
  {
    v13 = +[WCM_PolicyManager singleton];
    platformManager = [v13 platformManager];
    wrmSku = [platformManager wrmSku];

    if (count >= 0x10)
    {
      v16 = 16;
    }

    else
    {
      v16 = count;
    }

    if (count)
    {
      v17 = 0;
      while (1)
      {
        v18 = xpc_array_get_value(xarray, v17);
        v19 = xpc_dictionary_get_uint64(v18, "kWCMCellularSetAntBlocking_SKU") == wrmSku;

        if (v19)
        {
          break;
        }

        if (v16 == ++v17)
        {
          goto LABEL_28;
        }
      }

      v20 = wrmSku;
    }

    else
    {
LABEL_28:
      v20 = 8;
    }

    v21 = [NSNumber numberWithUnsignedInt:wrmSku];
    v22 = [v56 objectForKeyedSubscript:v21];
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Device is %@ ", v55, v22];

    if (v20 == 8)
    {
      [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set FaceId Antenna Blk Policy - there are no dedicated policies for device SKU, apply policy SKU = UNKNOWN SKU", v55];
    }

    else
    {
      v23 = [NSNumber numberWithUnsignedInt:v20];
      v24 = [v56 objectForKeyedSubscript:v23];
      [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set FaceId Antenna Blk Policy - apply policy SKU = %@", v55, v24];
    }
  }

  else
  {
    LODWORD(v20) = 8;
  }

  if (!count)
  {
    v6 = 1;
    goto LABEL_51;
  }

  v58 = 0;
  v46 = v20;
  v47 = v20;
  v25 = 1;
  while (1)
  {
    v54 = v25;
    v26 = v25 - 1;
    v27 = xpc_array_get_value(xarray, v25 - 1);
    v59 = xpc_dictionary_get_BOOL(v27, "kWCMCellularSetAntBlocking_Policy_Enable");
    v28 = xpc_dictionary_get_uint64(v27, "kWCMCellularSetAntBlocking_SKU");
    v29 = xpc_dictionary_get_uint64(v27, "kWCMCellularSetAntBlocking_Policy_CellularAntBitmap");
    int64 = xpc_dictionary_get_int64(v27, "kWCMCellularSetAntBlocking_Policy_CellularPowerCap");
    v31 = xpc_dictionary_get_uint64(v27, "kWCMCellularSetAntBlocking_Policy_MitigationType");
    v32 = xpc_dictionary_get_uint64(v27, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_Band");
    v33 = xpc_dictionary_get_uint64(v27, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_CoexTech");
    v34 = xpc_dictionary_get_uint64(v27, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_CenterFreq");
    v35 = xpc_dictionary_get_uint64(v27, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_Bandwidth");
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Camera Antenna Blk Policy -- policy[%lu]: enable = %d, cellularAntBitmap = %llu, cellularTxPowerCap = %lld, mitigationType = %llu", v55, v26, v59, v29, int64, v31];
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Camera Antenna Blk Policy -- policy[%lu]: cellularBand = %llu, cellularCoexTech = %llu, frequency = %lluKHz, BW = %lluKHz", v55, v26, v32, v33, v34, v35];
    if (uint64 != 3)
    {
      break;
    }

    if (v28 == v47)
    {
      v45 = [NSNumber numberWithUnsignedLongLong:?];
      v48 = [v56 objectForKeyedSubscript:?];
      v44 = [NSNumber numberWithUnsignedInt:v46];
      v36 = [v56 objectForKeyedSubscript:?];
      [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Camera Antenna Blk Policy -- policy[%lu]: SKU = %@ matches device policy SKU (%@)", v55, v26, v48, v36];

      break;
    }

    v38 = [NSNumber numberWithUnsignedLongLong:v28];
    v39 = [v56 objectForKeyedSubscript:v38];
    v40 = [NSNumber numberWithUnsignedInt:v46];
    v41 = [v56 objectForKeyedSubscript:v40];
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Camera Antenna Blk Policy -- policy[%lu]: SKU = %@ does not match device policy SKU (%@), skipped", v55, v26, v39, v41];

LABEL_44:
    v6 = 1;
    if (v54 < count)
    {
      v25 = v54 + 1;
      if (v58 <= 0xF)
      {
        continue;
      }
    }

    goto LABEL_51;
  }

  if (![(WCM_AriCoexCommandHandler *)self coexTechEnumCheck:v33])
  {
    v42 = @"Coex ARI driver(SubId %u): Set Camera Antenna Blk Policy, invalid coexTech=%llu, API UtaIdcSetCamAntBlockPwrLmtConfigReq failed";
    goto LABEL_50;
  }

  if ([(WCM_AriCoexCommandHandler *)self mitigationTypeEnumCheck:v31])
  {
    v37 = &v49->var0[v58];
    v37->var3 = v31;
    v37->var4 = int64;
    v37->var0 = v59;
    v37->var1.var0 = v32;
    v37->var1.var1 = v33;
    v37->var1.var2.var0 = v34;
    ++v58;
    v37->var1.var2.var1 = v35;
    v37->var2 = v29;
    goto LABEL_44;
  }

  v42 = @"Coex ARI driver(SubId %u): SSet Camera Antenna Blk Policy, invalid mitigationType=%llu, API UtaIdcSetCamAntBlockPwrLmtConfigReq failed";
  v33 = v31;
LABEL_50:
  [WCM_Logging logLevel:0 message:v42, v55, v33];

  v6 = 0;
LABEL_51:

LABEL_52:
  return v6;
}

- (void)setCamAntBlockingPowerLimitingConfig:(id)config SubId:(unsigned int)id
{
  v4 = *&id;
  configCopy = config;
  v7 = configCopy;
  v8 = 0;
  v9 = v20;
  do
  {
    v20[65 * v8 + 64] = &_mh_execute_header;
    v10 = v9;
    v11 = 16;
    do
    {
      *v10 = 0;
      v10[6] = 3;
      v10[2] = 127;
      v10 += 8;
      --v11;
    }

    while (v11);
    ++v8;
    v9 += 65;
  }

  while (v8 != 5);
  v12 = xpc_dictionary_get_value(configCopy, "kWCMCellularSetAntBlocking_FrontCameraPolicy");
  v13 = xpc_dictionary_get_value(v7, "kWCMCellularSetAntBlocking_FaceIdCameraPolicy");
  v14 = xpc_dictionary_get_value(v7, "kWCMCellularSetAntBlocking_RearTeleCameraPolicy");
  v15 = xpc_dictionary_get_value(v7, "kWCMCellularSetAntBlocking_RearWideCameraPolicy");
  v16 = xpc_dictionary_get_value(v7, "kWCMCellularSetAntBlocking_RearUltraWideCameraPolicy");
  if ((v12 || v13 || v14 || v15) && (!v12 || [(WCM_AriCoexCommandHandler *)self setCamAntBlockingPowerLimitingParam:v20 XpcMessage:v12 SubId:v4]) && (!v13 || [(WCM_AriCoexCommandHandler *)self setCamAntBlockingPowerLimitingParam:v20 XpcMessage:v13 SubId:v4]) && (!v14 || [(WCM_AriCoexCommandHandler *)self setCamAntBlockingPowerLimitingParam:v20 XpcMessage:v14 SubId:v4]) && (!v16 || [(WCM_AriCoexCommandHandler *)self setCamAntBlockingPowerLimitingParam:v20 XpcMessage:v16 SubId:v4]) && (!v15 || [(WCM_AriCoexCommandHandler *)self setCamAntBlockingPowerLimitingParam:v20 XpcMessage:v15 SubId:v4]))
  {
    AriSdk::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV3_SDK::ARI_UtaIdcSetCamAntBlockPwrLmtConfigReqV3_SDK(v18);
    v17 = v4;
    sub_10001B2B0(&v19, &v17);
  }
}

- (void)setUwbAntBlockingPowerLimitingConfig:(id)config SubId:(unsigned int)id
{
  v40 = *&id;
  configCopy = config;
  for (i = 0; i != 160; i += 5)
  {
    v6 = &v48[i + 2];
    *v6 = 0;
    *(v6 + 8) = 3;
    *(v6 + 4) = 127;
  }

  xdict = configCopy;
  for (j = 0; j != 160; j += 20)
  {
    v8 = &v48[2] + j;
    *(v8 + 320) = 0;
    *(v8 + 161) = &_mh_execute_header;
  }

  uint64 = xpc_dictionary_get_uint64(configCopy, "kWCMCellularSetAntBlocking_LQMThreshold");
  v9 = xpc_dictionary_get_uint64(xdict, "kWCMCellularSetAntBlocking_DurationGranularity");
  if ([(WCM_AriCoexCommandHandler *)self LQMEnumCheck:uint64])
  {
    v50[36] = uint64;
    v51 = v9;
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set UWB Antenna Blk Policy, lqmThreshold = %llu, durationGranularity = %llu", v40, uint64, v9];
    xarray = xpc_dictionary_get_value(xdict, "kWCMCellularSetAntBlocking_PolicySet");
    if (!xarray)
    {
      goto LABEL_14;
    }

    count = xpc_array_get_count(xarray);
    v11 = 32;
    if (count < 0x20)
    {
      v11 = count;
    }

    v36 = v11;
    if (!count)
    {
LABEL_14:
      v22 = xpc_dictionary_get_value(xdict, "kWCMCellularSetAntBlocking_PriorityClassPolicy");
      v23 = v22;
      if (v22)
      {
        v24 = xpc_array_get_count(v22);
        v25 = 8;
        if (v24 < 8)
        {
          v25 = v24;
        }

        v44 = v25;
        if (v24)
        {
          v26 = 0;
          v27 = v50;
          do
          {
            v28 = v23;
            v29 = xpc_array_get_value(v23, v26);
            v30 = xpc_dictionary_get_BOOL(v29, "kWCMCellularSetAntBlocking_PriorityClassPolicy_Enable");
            v31 = xpc_dictionary_get_BOOL(v29, "kWCMCellularSetAntBlocking_PriorityClassPolicy_DenyProtectVoice");
            v32 = xpc_dictionary_get_BOOL(v29, "kWCMCellularSetAntBlocking_PriorityClassPolicy_NeedMitigation");
            v33 = xpc_dictionary_get_uint64(v29, "kWCMCellularSetAntBlocking_PriorityClassPolicy_PriorityClass");
            v34 = xpc_dictionary_get_uint64(v29, "kWCMCellularSetAntBlocking_PriorityClassPolicy_MitigationTimer");
            [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set UWB Antenna Blk Policy -- priorityPolicy[%lu]: enable = %d, priorityClass = %llu, mitigationTimer = %llu", v40, v26, v30, v33, v34];
            [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set UWB Antenna Blk Policy -- priorityPolicy[%lu]: denyVoiceProtect = %d, mitigationRequired = %d", v40, v26, v31, v32];
            *(v27 - 4) = v30;
            *(v27 - 2) = v32;
            *(v27 - 1) = v31;
            *(v27 - 12) = v33;
            *v27 = v34;
            v27 += 5;

            ++v26;
            v23 = v28;
          }

          while (v44 != v26);
        }
      }

      [(WCM_AriCoexCache *)self->mCache update:@"UWB_LQM_Threshold" value_uint64:uint64 subId:v40];
      if (v50[1])
      {
        [(WCM_AriCoexCache *)self->mCache update:@"UWB_PC1_Deny_Voice_Protection" value_BOOL:v50[4] != 0 subId:v40];
      }

      AriSdk::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReqV2_SDK::ARI_UtaIdcSetUwbAntBlockPwrLmtConfigReqV2_SDK(v47);
      v46 = v40;
      sub_10001B2B0(v48, &v46);
    }

    v12 = 0;
    v13 = &v49;
    while (1)
    {
      v14 = xpc_array_get_value(xarray, v12);
      v43 = xpc_dictionary_get_BOOL(v14, "kWCMCellularSetAntBlocking_Policy_Enable");
      v42 = xpc_dictionary_get_uint64(v14, "kWCMCellularSetAntBlocking_Policy_CellularAntBitmap");
      int64 = xpc_dictionary_get_int64(v14, "kWCMCellularSetAntBlocking_Policy_CellularPowerCap");
      v15 = xpc_dictionary_get_uint64(v14, "kWCMCellularSetAntBlocking_Policy_MitigationType");
      v16 = xpc_dictionary_get_uint64(v14, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_Band");
      v17 = xpc_dictionary_get_uint64(v14, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_CoexTech");
      v18 = xpc_dictionary_get_uint64(v14, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_CenterFreq");
      v19 = xpc_dictionary_get_uint64(v14, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_Bandwidth");
      v20 = xpc_dictionary_get_uint64(v14, "kWCMCellularSetAntBlocking_Policy_UwbChannel");
      v21 = xpc_dictionary_get_uint64(v14, "kWCMCellularSetAntBlocking_Policy_UwbAntBitmap");
      [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set UWB Antenna Blk Policy -- policy[%lu]: enable = %d, cellularAntBitmap = %llu, cellularTxPowerCap = %lld, mitigationType = %llu", v40, v12, v43, v42, int64, v15];
      [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set UWB Antenna Blk Policy -- policy[%lu]: cellularBand = %llu, cellularCoexTech = %llu, frequency = %lluKHz, BW = %lluKHz", v40, v12, v16, v17, v18, v19];
      [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set UWB Antenna Blk Policy -- policy[%lu]: uwbChannel = %llu, uwbAntBitmap = %llu", v40, v12, v20, v21];
      if (![(WCM_AriCoexCommandHandler *)self coexTechEnumCheck:v17])
      {
        v35 = @"Coex ARI driver(SubId %u): Set UWB Antenna Blk Policy, invalid coexTech=%llu, API UtaIdcSetUwbAntBlockPwrLmtConfigReq failed";
        goto LABEL_26;
      }

      if (![(WCM_AriCoexCommandHandler *)self mitigationTypeEnumCheck:v15])
      {
        break;
      }

      *(v13 - 5) = v43;
      *(v13 - 8) = v20;
      v13[3] = v15;
      v13[4] = int64;
      *(v13 - 3) = v21;
      *(v13 - 2) = v16;
      *(v13 - 1) = v17;
      *v13 = v18;
      v13[1] = v19;
      v13[2] = v42;

      ++v12;
      v13 += 10;
      if (v36 == v12)
      {
        goto LABEL_14;
      }
    }

    v35 = @"Coex ARI driver(SubId %u): Set UWB Antenna Blk Policy, invalid mitigationType=%llu, API UtaIdcSetUwbAntBlockPwrLmtConfigReq failed";
    v17 = v15;
LABEL_26:
    [WCM_Logging logLevel:0 message:v35, v40, v17];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Coex ARI driver(SubId %u): Set UWB Antenna Blk Policy, invalid lqmThreshold=%llu, API UtaIdcSetUwbAntBlockPwrLmtConfigReq failed", v40, uint64];
  }
}

- (void)setE85AntBlockingPowerLimitingConfig:(id)config SubId:(unsigned int)id
{
  configCopy = config;
  uint64 = xpc_dictionary_get_uint64(configCopy, "kWCMCellularSetAntBlocking_LQMThreshold");
  v6 = xpc_dictionary_get_BOOL(configCopy, "kWCMCellularSetAntBlocking_DenyProtectVoice");
  v7 = xpc_dictionary_get_uint64(configCopy, "kWCMCellularSetAntBlocking_MitigationTimer");
  [WCM_Logging logLevel:3 message:@"Coex ARI driver: Set USB-C Antenna Blk Policy, lqmThreshold = %llu", uint64];
  [WCM_Logging logLevel:3 message:@"Coex ARI driver: Set USB-C Antenna Blk Policy, denyVoiceProtect = %d, mitigationTimer = %llu", v6, v7];
  if ([(WCM_AriCoexCommandHandler *)self LQMEnumCheck:uint64])
  {
    v24 = configCopy;
    v8 = xpc_dictionary_get_value(configCopy, "kWCMCellularSetAntBlocking_PolicySet");
    v9 = v8;
    if (v8)
    {
      count = xpc_array_get_count(v8);
      v11 = 32;
      if (count < 0x20)
      {
        v11 = count;
      }

      v27 = v11;
    }

    else
    {
      v27 = 0;
    }

    for (i = 0; i != 128; i += 4)
    {
      v13 = &v32[i + 2] + 4;
      *v13 = 0;
      *(v13 + 5) = 3;
      *(v13 + 2) = 0;
      *(v13 + 7) = 0;
    }

    v33[252] = v6;
    v33[253] = uint64;
    v33[254] = v7;
    if (!v27)
    {
LABEL_14:
      AriSdk::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigReq_SDK::ARI_UtaIdcSetUsbEnhAntBlockPwrLmtPolicyConfigReq_SDK(v31);
      idCopy = id;
      sub_10001B2B0(v32, &idCopy);
    }

    v14 = 0;
    v15 = v33;
    v26 = v9;
    while (1)
    {
      v16 = xpc_array_get_value(v9, v14);
      v29 = xpc_dictionary_get_BOOL(v16, "kWCMCellularSetAntBlocking_Policy_Enable");
      v17 = xpc_dictionary_get_uint64(v16, "kWCMCellularSetAntBlocking_Policy_CellularAntBitmap");
      int64 = xpc_dictionary_get_int64(v16, "kWCMCellularSetAntBlocking_Policy_CellularPowerCap");
      v19 = xpc_dictionary_get_uint64(v16, "kWCMCellularSetAntBlocking_Policy_MitigationType");
      v20 = xpc_dictionary_get_uint64(v16, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_CoexTech");
      v21 = xpc_dictionary_get_uint64(v16, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_CenterFreq");
      v22 = xpc_dictionary_get_uint64(v16, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_Bandwidth");
      v23 = xpc_dictionary_get_uint64(v16, "kWCMCellularSetAntBlocking_Policy_UsbRate");
      [WCM_Logging logLevel:3 message:@"Coex ARI driver: Set USB-C Antenna Blk Policy -- policy[%lu]: enable = %d, cellularAntBitmap = %llu, cellularTxPowerCap = %llu, mitigationType = %llu", v14, v29, v17, int64, v19];
      [WCM_Logging logLevel:3 message:@"Coex ARI driver: Set USB-C Antenna Blk Policy -- policy[%lu]: cellularCoexTech = %llu, frequency = %lluKHz, BW = %lluKHz, USB_rate_bitmap = %llu", v14, v20, v21, v22, v23];
      if (![(WCM_AriCoexCommandHandler *)self mitigationTypeEnumCheck:v19])
      {
        break;
      }

      *(v15 - 4) = v29;
      *(v15 - 6) = v20;
      *(v15 - 2) = v21;
      *(v15 - 1) = v22;
      *v15 = v17;
      v15[1] = v19;
      v15[2] = int64;
      v15[3] = v23;

      ++v14;
      v15 += 8;
      v9 = v26;
      if (v27 == v14)
      {
        goto LABEL_14;
      }
    }

    [WCM_Logging logLevel:0 message:@"Coex ARI driver: Set USB-C Antenna Blk Policy, invalid mitigationType=%llu, API UtaIdcSetCnvAntBlockPwrLmtConfigReq failed", v19];

    configCopy = v24;
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Coex ARI driver: Set USB-C Antenna Blk Policy, invalid lqmThreshold=%llu, API UtaIdcSetCnvAntBlockPwrLmtConfigReq failed", uint64];
  }
}

- (void)setStaticTimesharingConfig:(unsigned int)config
{
  v4 = *&config;
  [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Timesharing Config, enable=%d, coexTech=%llu, callType=%u, longDrxCycle=%llu, shortDrxCycle=%llu, durationScale=%llu", *&config, 1, 1, 1, 40, 0, 5];
  [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Timesharing Config - BandInfo[0], frequency=%lldKHz, BW=%lldKHz", v4, 2385000, 30000];
  v9 = 0x2800000001;
  v10 = 5;
  v7[2] = 0x100000001;
  v7[3] = 0x24646800000001;
  v8 = 30000;
  AriSdk::ARI_UtaIdcSetTimeSharingConfigReq_SDK::ARI_UtaIdcSetTimeSharingConfigReq_SDK(v6);
  configCopy = config;
  sub_10001B2B0(v7, &configCopy);
}

- (void)setTimesharingConfig:(id)config SubId:(unsigned int)id
{
  v4 = *&id;
  xdict = config;
  uint64 = xpc_dictionary_get_uint64(xdict, "kWCMCellularSetTimeShareConfig_Enable");
  v6 = xpc_dictionary_get_uint64(xdict, "kWCMCellularTimeShareConfig_CoexTech");
  v7 = xpc_dictionary_get_uint64(xdict, "kWCMCellularTimeShareConfig_CallType");
  v8 = xpc_dictionary_get_uint64(xdict, "kWCMCellularTimeShareConfig_LongDrxCycle");
  v9 = xpc_dictionary_get_uint64(xdict, "kWCMCellularTimeShareConfig_ShortDrxCycle");
  v10 = xpc_dictionary_get_uint64(xdict, "kWCMCellularTImeShareConfig_SleepWakeDurScale");
  [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Timesharing Config, enable=%d, coexTech=%llu, callType=%u, longDrxCycle=%llu, shortDrxCycle=%llu, durationScale=%llu", v4, uint64 != 0, v6, v7, v8, v9, v10];
  if ([(WCM_AriCoexCommandHandler *)self coexTechEnumCheck:v6])
  {
    if ([(WCM_AriCoexCommandHandler *)self callTypeEnumCheck:v7])
    {
      v26 = uint64 != 0;
      v27 = v6;
      v29[7] = v7;
      v30 = v8;
      v31 = v9;
      v32 = v10;
      v11 = xpc_dictionary_get_value(xdict, "kWCMCellularTImeShareConfig_BandInformationSet");
      v12 = v11;
      if (v11)
      {
        count = xpc_array_get_count(v11);
        v28 = count;
        if (count)
        {
          v14 = 0;
          v15 = v29;
          do
          {
            v16 = v12;
            v17 = xpc_array_get_value(v12, v14);
            int64 = xpc_dictionary_get_int64(v17, "kWCMCellularTImeShareConfig_BandSet_Frequency");
            v19 = xpc_dictionary_get_int64(v17, "kWCMCellularTImeShareConfig_BandSet_BW");
            [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Timesharing Config - BandInfo[%lu], frequency=%lldKHz, BW=%lldKHz", v4, v14, int64, v19];
            *(v15 - 1) = int64;
            *v15 = v19;

            ++v14;
            v15 += 2;
            v12 = v16;
          }

          while (count != v14);
        }
      }

      else
      {
        v28 = 0;
      }

      AriSdk::ARI_UtaIdcSetTimeSharingConfigReq_SDK::ARI_UtaIdcSetTimeSharingConfigReq_SDK(v24);
      v23 = v4;
      sub_10001B2B0(&v25, &v23);
    }

    v20 = @"Coex ARI driver(SubId %u): Set Timesharing Config, invalid callType=%llu, failed to set UtaIdcSetTimeSharingConfigReq";
    v6 = v7;
  }

  else
  {
    v20 = @"Coex ARI driver(SubId %u): Set Timesharing Config, invalid coexTech=%llu, UtaIdcSetTimeSharingConfigReq failed";
  }

  [WCM_Logging logLevel:0 message:v20, v4, v6];
}

- (void)setCC1Config:(id)config SubId:(unsigned int)id
{
  v4 = *&id;
  xdict = config;
  v6 = xpc_dictionary_get_BOOL(xdict, "kWCMCellularSetCC_Enable");
  uint64 = xpc_dictionary_get_uint64(xdict, "kWCMCellularSetCC_CoexTech");
  v8 = xpc_dictionary_get_uint64(xdict, "kWCMCellularSetCC_CarrierId");
  v9 = xpc_dictionary_get_double(xdict, "kWCMCellularSetCC_UplinkCenterFrequency");
  v10 = xpc_dictionary_get_double(xdict, "kWCMCellularSetCC_UplinkBandwidth");
  v11 = xpc_dictionary_get_double(xdict, "kWCMCellularSetCC_DownlinkCenterFrequency");
  v12 = xpc_dictionary_get_double(xdict, "kWCMCellularSetCC_DownlinkBandwidth");
  v13 = [(WCM_AriCoexCommandHandler *)self convertInternalCoexTech:uint64];
  if ([(WCM_AriCoexCommandHandler *)self coexTechEnumCheck:v13])
  {
    [(WCM_AriCoexCache *)self->mCache update:@"CC1_Enable" value_BOOL:v6 subId:v4];
    [(WCM_AriCoexCache *)self->mCache update:@"CC1_Tech" value_uint64:v13 subId:v4];
    [(WCM_AriCoexCache *)self->mCache update:@"CC1_CarrierId" value_uint64:v8 subId:v4];
    [(WCM_AriCoexCache *)self->mCache update:@"CC1_UplinkCenterFreq" value_double:v4 subId:v9];
    [(WCM_AriCoexCache *)self->mCache update:@"CC1_UplinkBandwidth" value_double:v4 subId:v10];
    [(WCM_AriCoexCache *)self->mCache update:@"CC1_DownlinkCenterFreq" value_double:v4 subId:v11];
    [(WCM_AriCoexCache *)self->mCache update:@"CC1_DownlinkBandwidth" value_double:v4 subId:v12];
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Critical Carrier 1, enable=%d, coexTech=%llu, carrier_id=%llu", v4, v6, v13, v8];
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Critical Carrier 1, UL_freq=%fMHz, UL_BW=%fMHz, DL_freq=%fMHz, DL_BW=%fMHz", v4, *&v9, *&v10, *&v11, *&v12];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Coex ARI driver(SubId %u): Set Critical Carrier 1, invalid coexTech=%llu, UtaIdcSetCriticalCarrierConfigReq failed", v4, v13];
  }
}

- (void)setCC2Config:(id)config SubId:(unsigned int)id
{
  v4 = *&id;
  xdict = config;
  v6 = xpc_dictionary_get_BOOL(xdict, "kWCMCellularSetCC_Enable");
  uint64 = xpc_dictionary_get_uint64(xdict, "kWCMCellularSetCC_CoexTech");
  v8 = xpc_dictionary_get_uint64(xdict, "kWCMCellularSetCC_CarrierId");
  v9 = xpc_dictionary_get_double(xdict, "kWCMCellularSetCC_UplinkCenterFrequency");
  v10 = xpc_dictionary_get_double(xdict, "kWCMCellularSetCC_UplinkBandwidth");
  v11 = xpc_dictionary_get_double(xdict, "kWCMCellularSetCC_DownlinkCenterFrequency");
  v12 = xpc_dictionary_get_double(xdict, "kWCMCellularSetCC_DownlinkBandwidth");
  v13 = [(WCM_AriCoexCommandHandler *)self convertInternalCoexTech:uint64];
  if ([(WCM_AriCoexCommandHandler *)self coexTechEnumCheck:v13])
  {
    [(WCM_AriCoexCache *)self->mCache update:@"CC2_Enable" value_BOOL:v6 subId:v4];
    [(WCM_AriCoexCache *)self->mCache update:@"CC2_Tech" value_uint64:v13 subId:v4];
    [(WCM_AriCoexCache *)self->mCache update:@"CC2_CarrierId" value_uint64:v8 subId:v4];
    [(WCM_AriCoexCache *)self->mCache update:@"CC2_UplinkCenterFreq" value_double:v4 subId:v9];
    [(WCM_AriCoexCache *)self->mCache update:@"CC2_UplinkBandwidth" value_double:v4 subId:v10];
    [(WCM_AriCoexCache *)self->mCache update:@"CC2_DownlinkCenterFreq" value_double:v4 subId:v11];
    [(WCM_AriCoexCache *)self->mCache update:@"CC2_DownlinkBandwidth" value_double:v4 subId:v12];
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Critical Carrier 2, enable=%d, coexTech=%llu, carrier_id=%llu", v4, v6, v13, v8];
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Critical Carrier 2, UL_freq=%fMHz, UL_BW=%fMHz, DL_freq=%fMHz, DL_BW=%fMHz", v4, *&v9, *&v10, *&v11, *&v12];
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Coex ARI driver(SubId %u): Set Critical Carrier 2, invalid coexTech=%llu, UtaIdcSetCriticalCarrierConfigReq failed", v4, v13];
  }
}

- (void)setAllCCConfig:(id)config SubId:(unsigned int)id
{
  v4 = *&id;
  v45 = 0;
  v43 = 0;
  v44 = 127;
  v41 = 0.0;
  v42 = 0.0;
  v39 = 0.0;
  v40 = 0.0;
  v38 = 0;
  v36 = 0;
  v37 = 127;
  v34 = 0.0;
  v35 = 0.0;
  v32 = 0.0;
  v33 = 0.0;
  if ([(WCM_AriCoexCache *)self->mCache get:@"CC1_Enable" value_BOOL:&v45 subId:*&id])
  {
    [(WCM_AriCoexCache *)self->mCache get:@"CC1_Tech" value_uint64:&v44 subId:v4];
    [(WCM_AriCoexCache *)self->mCache get:@"CC1_CarrierId" value_uint64:&v43 subId:v4];
    [(WCM_AriCoexCache *)self->mCache get:@"CC1_UplinkCenterFreq" value_double:&v42 subId:v4];
    [(WCM_AriCoexCache *)self->mCache get:@"CC1_UplinkBandwidth" value_double:&v41 subId:v4];
    [(WCM_AriCoexCache *)self->mCache get:@"CC1_DownlinkCenterFreq" value_double:&v40 subId:v4];
    [(WCM_AriCoexCache *)self->mCache get:@"CC1_DownlinkBandwidth" value_double:&v39 subId:v4];
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Critical Carrier 1, enable=%d, coexTech=%llu, carrier_id=%llu", v4, v45, v44, v43];
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Critical Carrier 1, UL_freq=%fMHz, UL_BW=%fMHz, DL_freq=%fMHz, DL_BW=%fMHz", v4, *&v42, *&v41, *&v40, *&v39];
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Critical Carrier 1, not configured yet", v4, v15, v16, v17, v18];
  }

  if ([(WCM_AriCoexCache *)self->mCache get:@"CC2_Enable" value_BOOL:&v38 subId:v4])
  {
    [(WCM_AriCoexCache *)self->mCache get:@"CC2_Tech" value_uint64:&v37 subId:v4];
    [(WCM_AriCoexCache *)self->mCache get:@"CC2_CarrierId" value_uint64:&v36 subId:v4];
    [(WCM_AriCoexCache *)self->mCache get:@"CC2_UplinkCenterFreq" value_double:&v35 subId:v4];
    [(WCM_AriCoexCache *)self->mCache get:@"CC2_UplinkBandwidth" value_double:&v34 subId:v4];
    [(WCM_AriCoexCache *)self->mCache get:@"CC2_DownlinkCenterFreq" value_double:&v33 subId:v4];
    [(WCM_AriCoexCache *)self->mCache get:@"CC2_DownlinkBandwidth" value_double:&v32 subId:v4];
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Critical Carrier 2, enable=%d, coexTech=%llu, carrier_id=%llu", v4, v38, v37, v36];
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Critical Carrier 2, UL_freq=%fMHz, UL_BW=%fMHz, DL_freq=%fMHz, DL_BW=%fMHz", v4, *&v35, *&v34, *&v33, *&v32];
    v6 = v37;
    v7.f64[0] = v35;
    v7.f64[1] = v34;
    v8.f64[0] = v33;
    v8.f64[1] = v32;
    v9 = vdupq_n_s64(0x408F400000000000uLL);
    v10 = v36;
    v11 = vuzp1q_s32(vcvtq_u64_f64(vmulq_f64(v7, v9)), vcvtq_u64_f64(vmulq_f64(v8, v9)));
  }

  else
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Critical Carrier 2, not configured yet", v4];
    v10 = 0;
    v11 = 0uLL;
    v6 = 127;
  }

  v22 = v45;
  v23 = v44;
  v24 = v43;
  v12.f64[0] = v42;
  v13.f64[0] = v40;
  v12.f64[1] = v41;
  v13.f64[1] = v39;
  v14 = vdupq_n_s64(0x408F400000000000uLL);
  v25 = vuzp1q_s32(vcvtq_u64_f64(vmulq_f64(v12, v14)), vcvtq_u64_f64(vmulq_f64(v13, v14)));
  v26 = 0xFFFF;
  v27 = v38;
  v28 = v6;
  v29 = v10;
  v31 = 0xFFFF;
  v30 = v11;
  AriSdk::ARI_UtaIdcSetCriticalCarrierConfigReqV2_SDK::ARI_UtaIdcSetCriticalCarrierConfigReqV2_SDK(v20);
  v19 = v4;
  sub_10001B2B0(&v21, &v19);
}

- (void)setTxBlankingPowerLimitingConfig:(id)config SubId:(unsigned int)id
{
  v4 = *&id;
  configCopy = config;
  uint64 = xpc_dictionary_get_uint64(configCopy, "kWCMCellularSetWCI2Mode_PowerThreshold");
  v7 = xpc_dictionary_get_uint64(configCopy, "kWCMCellularSetWCI2Mode_RB_Threshold");
  v23 = xpc_dictionary_get_uint64(configCopy, "kWCMCellularSetWCI2Mode_LTE_TxDenialThreshold");
  int64 = xpc_dictionary_get_int64(configCopy, "kWCMCellularSetWCI2Mode_MaxAllowedFrameDenials");
  v21 = xpc_dictionary_get_int64(configCopy, "kWCMCellularSetWCI2Mode_FrameDenialWindow");
  v20 = xpc_dictionary_get_uint64(configCopy, "kWCMCellularSetWCI2Mode_LinkPathLossThreshold");
  v19 = xpc_dictionary_get_uint64(configCopy, "kWCMCellularSetWCI2Mode_Harq_nack_ratio_Threshold");
  v8 = xpc_dictionary_get_double(configCopy, "kWCMCellularSetWCI2Mode_RBFilterAlpha");
  v18 = xpc_dictionary_get_uint64(configCopy, "kWCMCellularSetWCI2Mode_FilterRBThreshold");
  v9 = xpc_dictionary_get_uint64(configCopy, "kWCMCellularSetWCI2Mode_WCI2PowerLimit");
  v10 = xpc_dictionary_get_uint64(configCopy, "kWCMCellularSetWCI2Mode_WCI2PowerLimitTO");
  v11 = xpc_dictionary_get_BOOL(configCopy, "kWCMCellularSetWCI2Mode_Controller_PowerLimiting_Enable");
  v12 = xpc_dictionary_get_uint64(configCopy, "kWCMCellularSetWCI2Mode_ControllerTxPowerLimit");
  v13 = xpc_dictionary_get_uint64(configCopy, "kWCMCellularSetWCI2Mode_ControllerTxPowerLimitTO");
  v14 = 0.0;
  if (v8 >= 0.0)
  {
    v14 = v8;
  }

  if (v14 <= 1.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1.0;
  }

  [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set TX blanking Config, PowerThreshold=%llu(1/16dBm), RBThreshold=%llu, PerEventBlankingThreshold=%llu, MaxBlankingInWindow=%lld, SlidingWindowSize=%lld", v4, 16 * uint64, v7, v23, int64, v21];
  [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set TX Power Limiting Config, PathLossThreshold=%llu, NackRatioThreshold=%llu, RBFilterAlpha=%d, FilterRBThreshold=%llu", v4, v20, v19, (v15 * 10000.0), v18];
  v16 = 16 * v9;
  v17 = 16 * v12;
  [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set TX Power Limiting Config, SpmiPowerLimitThreshold=%llu(1/16dBm), SpmiPowerLimitTimeout=%llu, hostPowerLimitEnable=%d, hostPowerLimitThreshold=%llu(1/16dBm), hostPowerLimitTimeout=%llu", v4, v16, v10, v11, v17, v13];
  v33 = v11;
  v34 = v20;
  v35 = v17;
  v36 = v16;
  v37 = 1;
  v38 = (v15 * 10000.0);
  v39 = v18;
  v40 = v10;
  v41 = v13;
  v42 = v19;
  v27 = v21;
  v28 = int64;
  v29 = v23;
  v30 = 16 * uint64;
  v31 = v7;
  v32 = 1;
  AriSdk::ARI_UtaIdcSetTxPowerLimitingConfigReq_SDK::ARI_UtaIdcSetTxPowerLimitingConfigReq_SDK(v25);
  v24[0] = v4;
  sub_10001B2B0(&v26, v24);
}

- (void)setScanFreq:(id)freq SubId:(unsigned int)id
{
  v4 = *&id;
  xarray = freq;
  count = xpc_array_get_count(xarray);
  if (count >= 0x10)
  {
    v6 = 16;
  }

  else
  {
    v6 = count;
  }

  v17[0] = v6;
  if (count)
  {
    v7 = 0;
    if (v6 <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6;
    }

    v9 = &v18;
    do
    {
      v10 = xpc_array_get_value(xarray, v7);
      int64 = xpc_dictionary_get_int64(v10, "kWCMCellularScanFreqBandFilter_CenterFreq");
      v12 = xpc_dictionary_get_int64(v10, "kWCMCellularScanFreqBandFilter_Bandwidth");
      [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set Scan Frequency Config--freq[%d]: frequency=%lldMHz, BW=%lldMHz", v4, v7, int64, v12];
      *(v9 - 2) = 1000 * int64;
      *(v9 - 1) = 1000 * v12;
      *v9 = 1;
      v9 = (v9 + 12);

      ++v7;
    }

    while (v8 != v7);
  }

  AriSdk::ARI_UtaIdcRTSetScanFreqReqV2_SDK::ARI_UtaIdcRTSetScanFreqReqV2_SDK(v15);
  v14 = v4;
  sub_10001B2B0(&v16, &v14);
}

- (void)setRC1Config:(id)config SubId:(unsigned int)id
{
  v4 = *&id;
  configCopy = config;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  uint64 = xpc_dictionary_get_uint64(configCopy, "WCMCellularSetLAAConfig_UwbRangingDuration");
  v8 = xpc_dictionary_get_uint64(configCopy, "WCMCellularSetLAAConfig_UwbNarrowBandDuration");
  v9 = xpc_dictionary_get_uint64(configCopy, "kWCMCellularSetLaaGpioThrottleReq_Enabled");
  v10 = xpc_dictionary_get_uint64(configCopy, "kWCMCellularSetLaaGpioThrottleReq_Periodicity");
  [WCM_Logging logLevel:3 message:@"Coex ARI driver: Set LAA(RC1) Config : RangingDuration=%llu, NarrowBandDuration=%llu", uint64, v8];
  [WCM_Logging logLevel:3 message:@"Coex ARI driver: Set LAA(RC1) Config : throttleEnable=%llu, throttleDuration=%llu", v9, v10];
  [(WCM_AriCoexCache *)self->mCache update:@"kWCMCellularSetLaaGpioThrottleReq_Enabled" value_uint64:v9 subId:v4];
  [(WCM_AriCoexCache *)self->mCache update:@"kWCMCellularSetLaaGpioThrottleReq_Periodicity" value_uint64:v10 subId:v4];
  if (uint64)
  {
    [(WCM_AriCoexCache *)self->mCache update:@"WCMCellularSetLAAConfig_UwbRangingDuration" value_uint64:uint64 subId:v4];
  }

  if (v8)
  {
    [(WCM_AriCoexCache *)self->mCache update:@"WCMCellularSetLAAConfig_UwbNarrowBandDuration" value_uint64:uint64 subId:v4];
  }

  if ([(WCM_AriCoexCache *)self->mCache get:@"WCMCellularSetLAAConfig_CoexEnable" value_BOOL:&v28 subId:v4])
  {
    [(WCM_AriCoexCache *)self->mCache get:@"WCMCellularSetLAAConfig_ProtectCQIPeriod" value_uint64:&v27 subId:v4];
    [(WCM_AriCoexCache *)self->mCache get:@"WCMCellularSetLAAConfig_ThresholdIn" value_uint64:&v26 subId:v4];
    [(WCM_AriCoexCache *)self->mCache get:@"WCMCellularSetLAAConfig_ThresholdOut" value_uint64:&v25 subId:v4];
    [(WCM_AriCoexCache *)self->mCache get:@"WCMCellularSetLAAConfig_DeactTimer" value_uint64:&v24 subId:v4];
    [(WCM_AriCoexCache *)self->mCache get:@"WCMCellularSetLAAConfig_DeactStopTimer" value_uint64:&v23 subId:v4];
    [WCM_Logging logLevel:3 message:@"Coex ARI driver: Set LAA Config, enable=%d, protectCQIPeriod=%llu, thresholdIn=%llu", v28, v27, v26];
    [WCM_Logging logLevel:3 message:@"Coex ARI driver: Set LAA Config, threshold_out=%llu, deactTimer=%llu, deactStopTimer=%llu", v25, v24, v23];
    v15 = v28;
    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 1;
    }

    v16 = v11;
    v17 = v26;
    v18 = v25;
    v19 = v24;
    v20 = v23;
    v21 = uint64;
    v22 = v8;
    AriSdk::ARI_UtaIdcSetLaaConfigReq_SDK::ARI_UtaIdcSetLaaConfigReq_SDK(v13);
    v12 = v4;
    sub_10001B2B0(&v14, &v12);
  }

  [WCM_Logging logLevel:3 message:@"Coex ARI driver: Set LAA(RC1) Config : LAA not configured, no ARI call"];
}

- (void)setLAAConfig:(id)config SubId:(unsigned int)id
{
  v4 = *&id;
  configCopy = config;
  v7 = xpc_dictionary_get_BOOL(configCopy, "WCMCellularSetLAAConfig_CoexEnable");
  uint64 = xpc_dictionary_get_uint64(configCopy, "WCMCellularSetLAAConfig_ProtectCQIPeriod");
  v9 = xpc_dictionary_get_uint64(configCopy, "WCMCellularSetLAAConfig_ThresholdIn");
  v10 = xpc_dictionary_get_uint64(configCopy, "WCMCellularSetLAAConfig_ThresholdOut");
  v11 = xpc_dictionary_get_uint64(configCopy, "WCMCellularSetLAAConfig_DeactTimer");
  v12 = xpc_dictionary_get_uint64(configCopy, "WCMCellularSetLAAConfig_DeactStopTimer");
  v27 = 0;
  v28 = 0;
  v25 = 0;
  v26 = 0;
  [(WCM_AriCoexCache *)self->mCache update:@"WCMCellularSetLAAConfig_CoexEnable" value_BOOL:v7 subId:v4];
  [(WCM_AriCoexCache *)self->mCache update:@"WCMCellularSetLAAConfig_ProtectCQIPeriod" value_uint64:uint64 subId:v4];
  [(WCM_AriCoexCache *)self->mCache update:@"WCMCellularSetLAAConfig_ThresholdIn" value_uint64:v9 subId:v4];
  [(WCM_AriCoexCache *)self->mCache update:@"WCMCellularSetLAAConfig_ThresholdOut" value_uint64:v10 subId:v4];
  [(WCM_AriCoexCache *)self->mCache update:@"WCMCellularSetLAAConfig_DeactTimer" value_uint64:v11 subId:v4];
  [(WCM_AriCoexCache *)self->mCache update:@"WCMCellularSetLAAConfig_DeactStopTimer" value_uint64:v12 subId:v4];
  [WCM_Logging logLevel:3 message:@"Coex ARI driver: Set LAA Config, enable=%d, protectCQIPeriod=%llu, thresholdIn=%llu", v7, uint64, v9];
  [WCM_Logging logLevel:3 message:@"Coex ARI driver: Set LAA Config, threshold_out=%llu, deactTimer=%llu, deactStopTimer=%llu", v10, v11, v12];
  if (![(WCM_AriCoexCache *)self->mCache get:@"WCMCellularSetLAAConfig_UwbRangingDuration" value_uint64:&v28 subId:v4])
  {
    v28 = 0;
  }

  if (![(WCM_AriCoexCache *)self->mCache get:@"WCMCellularSetLAAConfig_UwbNarrowBandDuration" value_uint64:&v27 subId:v4])
  {
    v27 = 0;
  }

  if (![(WCM_AriCoexCache *)self->mCache get:@"kWCMCellularSetLaaGpioThrottleReq_Enabled" value_uint64:&v26 subId:v4])
  {
    v26 = 0;
  }

  if (![(WCM_AriCoexCache *)self->mCache get:@"kWCMCellularSetLaaGpioThrottleReq_Periodicity" value_uint64:&v25 subId:v4])
  {
    v25 = 1;
  }

  [WCM_Logging logLevel:3 message:@"Coex ARI driver: Set LAA(RC1) Config : RangingDuration=%llu, NarrowBandDuration=%llu", v28, v27];
  v17 = v7;
  if (v26)
  {
    v13 = v25;
  }

  else
  {
    v13 = 1;
  }

  v18 = v13;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v28;
  v24 = v27;
  AriSdk::ARI_UtaIdcSetLaaConfigReq_SDK::ARI_UtaIdcSetLaaConfigReq_SDK(v15);
  v14 = v4;
  sub_10001B2B0(&v16, &v14);
}

- (void)fetchLtePccFrequency:(t_s_UtaIdcLteNrCarrierInfoSet *)frequency pccUplinkFreq:(int64_t *)freq pccUplinkBw:(double *)bw pccDownlinkFreq:(int64_t *)downlinkFreq pccDownlinkBw:(double *)downlinkBw
{
  if (frequency && freq && downlinkFreq && downlinkBw && frequency->var0)
  {
    v7 = 0;
    v8 = 0;
    v9 = frequency->var0 - 1;
    p_var3 = &frequency->var1[0].var3;
    do
    {
      v11 = v9;
      v13 = *(p_var3 - 3);
      v12 = *(p_var3 - 2);
      v14 = *(p_var3 - 1);
      v15 = *p_var3;
      if (v13)
      {
        v16 = 0;
      }

      else
      {
        v16 = (*p_var3 & 0xFFFFFFFE) == 2;
      }

      if (v16)
      {
        *downlinkFreq = v12 / 0x3E8uLL;
        *downlinkBw = v14 / 1000.0;
        v8 = 1;
      }

      v17 = v15 & 0xFFFFFFFD;
      if (v13)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17 == 1;
      }

      if (v18)
      {
        *freq = v12 / 0x3E8uLL;
        *bw = v14 / 1000.0;
        v7 = 1;
      }

      if (v7 & v8)
      {
        break;
      }

      p_var3 += 4;
      v9 = v11 - 1;
    }

    while (v11);
  }
}

- (void)fetchLteNrFrequency:(t_s_UtaIdcLteNrCarrierInfoSet *)frequency freqInfoXpc:(id)xpc carrierIdXpc:(id)idXpc
{
  xarray = xpc;
  idXpcCopy = idXpc;
  if (frequency && xarray && idXpcCopy && frequency->var0)
  {
    v8 = 0;
    p_var3 = &frequency->var1[0].var3;
    do
    {
      v10 = *(p_var3 - 3);
      v11 = *(p_var3 - 2);
      v12 = *p_var3;
      v13 = 1000 * *(p_var3 - 1);
      if ((*p_var3 & 0xFFFFFFFE) == 2)
      {
        v14 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v14, "kWCMCellularNetworkConfiguration_BandInfoSet_DirectionMask", 2uLL);
        xpc_dictionary_set_int64(v14, "kWCMCellularNetworkConfiguration_BandInfoSet_CenterFreq", v11);
        xpc_dictionary_set_double(v14, "kWCMCellularNetworkConfiguration_BandInfoSet_Bandwidth", v13);
        xpc_array_append_value(xarray, v14);

        v15 = xpc_int64_create(v10);
        xpc_array_append_value(idXpcCopy, v15);
      }

      if ((v12 & 0xFFFFFFFD) == 1)
      {
        v16 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v16, "kWCMCellularNetworkConfiguration_BandInfoSet_DirectionMask", 1uLL);
        xpc_dictionary_set_int64(v16, "kWCMCellularNetworkConfiguration_BandInfoSet_CenterFreq", v11);
        xpc_dictionary_set_double(v16, "kWCMCellularNetworkConfiguration_BandInfoSet_Bandwidth", v13);
        xpc_array_append_value(xarray, v16);

        v17 = xpc_int64_create(v10);
        xpc_array_append_value(idXpcCopy, v17);
      }

      p_var3 += 4;
      ++v8;
    }

    while (v8 < frequency->var0);
  }
}

- (void)fetchLegacyRatFrequency:(t_s_UtaIdcLegacyRatCarrierInfoSet *)frequency freqInfoXpc:(id)xpc
{
  xarray = xpc;
  if (frequency && xarray && frequency->var0)
  {
    v5 = 0;
    p_var3 = &frequency->var1[0].var3;
    do
    {
      v7 = *(p_var3 - 2);
      v8 = 1000 * *(p_var3 - 1);
      v9 = *p_var3;
      if ((*p_var3 & 0xFFFFFFFE) == 2)
      {
        v10 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v10, "kWCMCellularNetworkConfiguration_BandInfoSet_DirectionMask", 2uLL);
        xpc_dictionary_set_int64(v10, "kWCMCellularNetworkConfiguration_BandInfoSet_CenterFreq", v7);
        xpc_dictionary_set_double(v10, "kWCMCellularNetworkConfiguration_BandInfoSet_Bandwidth", v8);
        xpc_array_append_value(xarray, v10);
      }

      if ((v9 & 0xFFFFFFFD) == 1)
      {
        v11 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(v11, "kWCMCellularNetworkConfiguration_BandInfoSet_DirectionMask", 1uLL);
        xpc_dictionary_set_int64(v11, "kWCMCellularNetworkConfiguration_BandInfoSet_CenterFreq", v7);
        xpc_dictionary_set_double(v11, "kWCMCellularNetworkConfiguration_BandInfoSet_Bandwidth", v8);
        xpc_array_append_value(xarray, v11);
      }

      p_var3 += 4;
      ++v5;
    }

    while (v5 < frequency->var0);
  }
}

- (id)assembleCellularConfigXpcMsg:(t_s_UtaIdcCellConfig *)msg
{
  v5 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v5, "kWCMCellularNetworkConfiguration_ULBandInfo_CenterFreq", 0);
  xpc_dictionary_set_double(v5, "kWCMCellularNetworkConfiguration_ULBandInfo_BandWidth", 0.0);
  xpc_dictionary_set_int64(v5, "kWCMCellularNetworkConfiguration_DLBandInfo_CenterFreq", 0);
  xpc_dictionary_set_double(v5, "kWCMCellularNetworkConfiguration_DLBandInfo_BandWidth", 0.0);
  var0 = msg->var3.var0;
  if (var0 != 240)
  {
    xpc_dictionary_set_int64(v5, "kWCMCellularNetworkConfiguration_TTDUL_DL", var0);
    xpc_dictionary_set_int64(v5, "kWCMCellularNetworkConfiguration_SubFrameFormat", msg->var3.var1);
    xpc_dictionary_set_int64(v5, "kWCMCellularNetworkConfiguration_FrameOffset", 0);
    xpc_dictionary_set_int64(v5, "kWCMCellularNetworkConfiguration_ULCPConfig", msg->var3.var2);
    xpc_dictionary_set_int64(v5, "kWCMCellularNetworkConfiguration_DLCPConfig", msg->var3.var3);
    [WCM_Logging logLevel:3 message:@"Coex ARI driver: UtaIdcCellConfigEventIndCb DlUl_config=%u\n", msg->var3.var0];
    [WCM_Logging logLevel:3 message:@"Coex ARI driver: UtaIdcCellConfigEventIndCb special_sub_frame=%u\n", msg->var3.var1];
    [WCM_Logging logLevel:3 message:@"Coex ARI driver: UtaIdcCellConfigEventIndCb uplink_cyclic_prefix=%u\n", msg->var3.var2];
    [WCM_Logging logLevel:3 message:@"Coex ARI driver: UtaIdcCellConfigEventIndCb downlink_cyclic_prefix=%u\n", msg->var3.var3];
  }

  if (msg->var2.var0)
  {
    v18 = 0;
    value = 0;
    v16 = 0.0;
    v17 = 0.0;
    [(WCM_AriCoexCommandHandler *)self fetchLtePccFrequency:&msg->var2 pccUplinkFreq:&value pccUplinkBw:&v17 pccDownlinkFreq:&v18 pccDownlinkBw:&v16];
    xpc_dictionary_set_int64(v5, "kWCMCellularNetworkConfiguration_ULBandInfo_CenterFreq", value);
    xpc_dictionary_set_double(v5, "kWCMCellularNetworkConfiguration_ULBandInfo_BandWidth", v17);
    xpc_dictionary_set_int64(v5, "kWCMCellularNetworkConfiguration_DLBandInfo_CenterFreq", v18);
    xpc_dictionary_set_double(v5, "kWCMCellularNetworkConfiguration_DLBandInfo_BandWidth", v16);
    v7 = xpc_array_create(0, 0);
    v8 = xpc_array_create(0, 0);
    [(WCM_AriCoexCommandHandler *)self fetchLteNrFrequency:&msg->var2 freqInfoXpc:v7 carrierIdXpc:v8];
    xpc_dictionary_set_value(v5, "kWCMCellularNetworkConfiguration_LTEBandInformationSet", v7);
    xpc_dictionary_set_value(v5, "kWCMCellularNetworkConfiguration_LTECarrierInformationSet", v8);
  }

  if (msg->var4.var0)
  {
    v9 = xpc_array_create(0, 0);
    v10 = xpc_array_create(0, 0);
    [(WCM_AriCoexCommandHandler *)self fetchLteNrFrequency:&msg->var4 freqInfoXpc:v9 carrierIdXpc:v10];
    xpc_dictionary_set_value(v5, "kWCMCellularNetworkConfiguration_NGCBandInformationSet", v9);
    xpc_dictionary_set_value(v5, "kWCMCellularNetworkConfiguration_NGCCarrierInformationSet", v10);
  }

  if (msg->var0.var0)
  {
    v11 = xpc_array_create(0, 0);
    [(WCM_AriCoexCommandHandler *)self fetchLegacyRatFrequency:msg freqInfoXpc:v11];
    xpc_dictionary_set_value(v5, "kWCMCellularNetworkConfiguration_GSMBandInformationSet", v11);
  }

  v13 = msg->var1.var0;
  p_var1 = &msg->var1;
  if (v13)
  {
    v14 = xpc_array_create(0, 0);
    [(WCM_AriCoexCommandHandler *)self fetchLegacyRatFrequency:p_var1 freqInfoXpc:v14];
    xpc_dictionary_set_value(v5, "kWCMCellularNetworkConfiguration_WCDMABandInformationSet", v14);
  }

  return v5;
}

- (void)getCellularNetworkConfig:(id)config SubId:(unsigned int)id
{
  AriSdk::ARI_UtaIdcGetCellConfigReq_SDK::ARI_UtaIdcGetCellConfigReq_SDK(v6);
  idCopy = id;
  sub_10001B2B0(&v7, &idCopy);
}

- (void)UtaIdcCellConfigEventIndHandle:(char *)handle size:(unsigned int)size
{
  AriSdk::ARI_UtaIdcCellConfigEventIndCb_SDK::ARI_UtaIdcCellConfigEventIndCb_SDK(v10, handle, size);
  if (ice::isARIResponseValid(v10, 0x49830000, v5))
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver: UtaIdcCellConfigEventIndCb received\n"];
    v6 = AriSdk::ARI_UtaIdcCellConfigEventIndCb_SDK::unpack(v10);
    if (v6)
    {
      [WCM_Logging logLevel:3 message:@"Coex ARI driver: Failed to unpack UtaIdcCellConfigEventIndCb: %s (%u)", asString(), v6];
    }

    else
    {
      v7 = v12;
      v8 = *v11;
      [WCM_Logging logLevel:3 message:@"Coex ARI driver: UtaIdcCellConfigEventIndCb SubId=%u\n", v8];
      v9 = [(WCM_AriCoexCommandHandler *)self assembleCellularConfigXpcMsg:v7];
      [(WCM_AriCoexCommandHandler *)self sendMessage:300 withArgs:v9 withSubId:v8];
    }
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Coex ARI driver ERROR: Invalid UtaIdcCellConfigEventIndCb received\n"];
  }

  AriSdk::ARI_UtaIdcCellConfigEventIndCb_SDK::~ARI_UtaIdcCellConfigEventIndCb_SDK(v10);
}

- (void)configureAccReportMode
{
  v5 = 1;
  AriSdk::ARI_IBIMsAccCurrentFreqInfoReq_SDK::ARI_IBIMsAccCurrentFreqInfoReq_SDK(v3);
  v2 = 0;
  sub_10001B2B0(&v4, &v2);
}

- (void)appendDesenseFreqToXpcArray:(id)array DesenseFreq:(IBIAccFreqBandwidthInfo *)freq Size:(unsigned int)size
{
  xarray = array;
  if (xarray && freq && size)
  {
    v7 = 0;
    p_var1 = &freq->var1;
    do
    {
      v9 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v9, "kWCMCellular_DesenseNetworkConfiguration_CenterFreq", *(p_var1 - 1));
      xpc_dictionary_set_int64(v9, "kWCMCellular_DesenseNetworkConfiguration_Bandwidth", *p_var1);
      [WCM_Logging logLevel:3 message:@"Coex ARI driver: IBIMsAccCurrentFreqInfoIndCb, freq[%u]=(freq:%llu, bw:%u)Hz \n", v7, *(p_var1 - 1), *p_var1];
      xpc_array_append_value(xarray, v9);

      ++v7;
      p_var1 += 3;
    }

    while (size != v7);
  }
}

- (id)assembleDesenseCellularConfigXpcMsgwithDownlinkFreq:(IBIAccServingDLFreqBandwidthInfo *)freq DownlinkFreqExt:(IBIAccServingDLFreqBandwidthInfo_ext *)ext UlFreq:(IBIAccServingULFreqBandwidthInfo *)ulFreq UplinkFreqExt:(IBIAccServingULFreqBandwidthInfo_ext *)freqExt SearchFreq:(IBIAccSearchFreqBandwidthInfo *)searchFreq HoppingFreq:(IBIAccHoppingFreqBandwidthInfo *)hoppingFreq NeighborFreq:(IBIAccNeighborFreqBandwidthInfo *)neighborFreq RPLMNFreq:(IBIAccRPLMNFreqBandwidthInfo *)self0
{
  v15 = xpc_dictionary_create(0, 0, 0);
  if (freq->var0)
  {
    v16 = xpc_array_create(0, 0);
    if (freq->var0 >= 4u)
    {
      var0 = 4;
    }

    else
    {
      var0 = freq->var0;
    }

    [WCM_Logging logLevel:3 message:@"Coex ARI driver: IBIMsAccCurrentFreqInfoIndCb Downlink Freq num = %u\n", var0];
    [(WCM_AriCoexCommandHandler *)self appendDesenseFreqToXpcArray:v16 DesenseFreq:&freq->var0 + 4 Size:var0];
    if (ext->var0)
    {
      if (ext->var0 >= 0xAu)
      {
        v18 = 10;
      }

      else
      {
        v18 = ext->var0;
      }

      [WCM_Logging logLevel:3 message:@"Coex ARI driver: IBIMsAccCurrentFreqInfoIndCb Downlink Freq Ext num = %u\n", v18];
      [(WCM_AriCoexCommandHandler *)self appendDesenseFreqToXpcArray:v16 DesenseFreq:&ext->var0 + 4 Size:v18];
    }

    xpc_dictionary_set_value(v15, "kWCMCellular_DesenseFreqReport_DownlinkFrequency", v16);
  }

  if (ulFreq->var0)
  {
    v19 = xpc_array_create(0, 0);
    if (ulFreq->var0 >= 2u)
    {
      v20 = 2;
    }

    else
    {
      v20 = ulFreq->var0;
    }

    [WCM_Logging logLevel:3 message:@"Coex ARI driver: IBIMsAccCurrentFreqInfoIndCb Uplink Freq num = %u\n", v20];
    [(WCM_AriCoexCommandHandler *)self appendDesenseFreqToXpcArray:v19 DesenseFreq:&ulFreq->var0 + 4 Size:v20];
    if (freqExt->var0)
    {
      if (freqExt->var0 >= 0xAu)
      {
        v21 = 10;
      }

      else
      {
        v21 = freqExt->var0;
      }

      [WCM_Logging logLevel:3 message:@"Coex ARI driver: IBIMsAccCurrentFreqInfoIndCb Uplink Freq Ext num = %u\n", v21];
      [(WCM_AriCoexCommandHandler *)self appendDesenseFreqToXpcArray:v19 DesenseFreq:&freqExt->var0 + 4 Size:v21];
    }

    xpc_dictionary_set_value(v15, "kWCMCellular_DesenseFreqReport_UplinkFrequency", v19);
  }

  if (searchFreq->var0)
  {
    v22 = xpc_array_create(0, 0);
    if (searchFreq->var0 >= 0x14u)
    {
      v23 = 20;
    }

    else
    {
      v23 = searchFreq->var0;
    }

    [WCM_Logging logLevel:3 message:@"Coex ARI driver: IBIMsAccCurrentFreqInfoIndCb Search Freq num = %u\n", v23];
    [(WCM_AriCoexCommandHandler *)self appendDesenseFreqToXpcArray:v22 DesenseFreq:&searchFreq->var0 + 4 Size:v23];
    xpc_dictionary_set_value(v15, "kWCMCellular_DesenseFreqReport_SearchFrequency", v22);
  }

  if (neighborFreq->var0)
  {
    v24 = xpc_array_create(0, 0);
    if (neighborFreq->var0 >= 0x64u)
    {
      v25 = 100;
    }

    else
    {
      v25 = neighborFreq->var0;
    }

    [WCM_Logging logLevel:3 message:@"Coex ARI driver: IBIMsAccCurrentFreqInfoIndCb Neighbor Freq num = %u\n", v25];
    [(WCM_AriCoexCommandHandler *)self appendDesenseFreqToXpcArray:v24 DesenseFreq:&neighborFreq->var0 + 4 Size:v25];
    xpc_dictionary_set_value(v15, "kWCMCellular_DesenseFreqReport_NeighborFrequency", v24);
  }

  if (hoppingFreq->var0)
  {
    v26 = xpc_array_create(0, 0);
    if (hoppingFreq->var0 >= 0x40u)
    {
      v27 = 64;
    }

    else
    {
      v27 = hoppingFreq->var0;
    }

    [WCM_Logging logLevel:3 message:@"Coex ARI driver: IBIMsAccCurrentFreqInfoIndCb GSM Hopping Freq num = %u\n", v27];
    [(WCM_AriCoexCommandHandler *)self appendDesenseFreqToXpcArray:v26 DesenseFreq:&hoppingFreq->var0 + 4 Size:v27];
    xpc_dictionary_set_value(v15, "kWCMCellular_DesenseFreqReport_HoppingFrequency", v26);
  }

  if (nFreq->var0)
  {
    v28 = xpc_array_create(0, 0);
    if (nFreq->var0 >= 0x46u)
    {
      v29 = 70;
    }

    else
    {
      v29 = nFreq->var0;
    }

    [WCM_Logging logLevel:3 message:@"Coex ARI driver: IBIMsAccCurrentFreqInfoIndCb RPLMN Freq num = %u\n", v29];
    [(WCM_AriCoexCommandHandler *)self appendDesenseFreqToXpcArray:v28 DesenseFreq:&nFreq->var0 + 4 Size:v29];
    xpc_dictionary_set_value(v15, "kWCMCellular_DesenseFreqReport_RplmnFrequency", v28);
  }

  return v15;
}

- (void)desenseCellConfigEventIndHandle:(char *)handle size:(unsigned int)size
{
  AriSdk::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK(v9, handle, size);
  if (ice::isARIResponseValid(v9, 0x25900000, v5))
  {
    [WCM_Logging logLevel:3 message:@"Coex ARI driver: IBIMsAccCurrentFreqInfoIndCb received\n"];
    v6 = AriSdk::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK::unpack(v9);
    if (v6)
    {
      [WCM_Logging logLevel:3 message:@"Coex ARI driver: Failed to unpack IBIMsAccCurrentFreqInfoIndCb: %s (%u)", asString(), v6];
    }

    else
    {
      v7 = *v10;
      [WCM_Logging logLevel:3 message:@"Coex ARI driver: IBIMsAccCurrentFreqInfoIndCb SubId=%u\n", v7];
      v8 = [(WCM_AriCoexCommandHandler *)self assembleDesenseCellularConfigXpcMsgwithDownlinkFreq:v11 DownlinkFreqExt:v17 UlFreq:v12 UplinkFreqExt:v18 SearchFreq:v13 HoppingFreq:v14 NeighborFreq:v15 RPLMNFreq:v16];
      [(WCM_AriCoexCommandHandler *)self sendMessage:399 withArgs:v8 withSubId:v7];
    }
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Coex ARI driver ERROR: Invalid IBIMsAccCurrentFreqInfoIndCb received\n"];
  }

  AriSdk::ARI_IBIMsAccCurrentFreqInfoIndCb_SDK::~ARI_IBIMsAccCurrentFreqInfoIndCb_SDK(v9);
}

- (void)printGnssImdConfig:(t_s_UtaIdcCellImdGnssMitigationPolicyConfig *)config
{
  if (config)
  {
    configCopy = config;
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, protect_low_priority_background_gnss=%d, deny_voice_call_protection=%d", config->var1, config->var2];
    [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, mitigation_timer_ms=%u, lqm_threshold=%d", configCopy->var3, configCopy->var4];
    v4 = 0;
    v15 = configCopy;
    do
    {
      v5 = &configCopy->var0[v4];
      if (v5->var0 == 1)
      {
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, policy[%d]: imd_type=%u, gnss_L5_preferred_tuner_allowed=%d, parallel_mitigation_allowed=%d", v4, v5->var3, v5->var5, v5->var6];
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, policy[%d]: gnss_victim_center_freq_khz=%u, gnss_victim_bandwidth_khz=%u", v4, v5->var4.var0, v5->var4.var1];
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, policy[%d]: aggressor1: tech_bitmap=%u, center_freq_khz=%u, bandwidth_khz=%u", v4, v5->var1.var0.var0, v5->var1.var0.var1.var0, v5->var1.var0.var1.var1];
        v6 = 0;
        v7 = 1;
        do
        {
          v8 = v7;
          v9 = &v5->var1.var1[v6];
          if (*v9 == 1)
          {
            [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, policy[%d]: aggressor1_policy[%d]: cellular_aggressor_antenna_bitmap=%u", v4, v6, *(v9 + 1)];
            [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, policy[%d]: aggressor1_policy[%d]: cellular_tx_power_cap=%d, mitigation_type=%u", v4, v6, *(v9 + 2), *(v9 + 3)];
          }

          v7 = 0;
          v6 = 1;
        }

        while ((v8 & 1) != 0);
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, policy[%d]: aggressor2: tech_bitmap=%u, center_freq_khz=%u, bandwidth_khz=%u", v4, v5->var2.var0.var0, v5->var2.var0.var1.var0, v5->var2.var0.var1.var1];
        v10 = 0;
        var1 = v5->var2.var1;
        v12 = 1;
        configCopy = v15;
        do
        {
          v13 = v12;
          v14 = &var1[16 * v10];
          if (*v14 == 1)
          {
            [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, policy[%d]: aggressor2_policy[%d]: cellular_aggressor_antenna_bitmap=%u", v4, v10, *(v14 + 1)];
            [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, policy[%d]: aggressor2_policy[%d]: cellular_tx_power_cap=%d, mitigation_type=%u", v4, v10, *(v14 + 2), *(v14 + 3)];
          }

          v12 = 0;
          v10 = 1;
        }

        while ((v13 & 1) != 0);
      }

      ++v4;
    }

    while (v4 != 32);
  }
}

- (void)handleGnssImdAntBlockPowerLimitConfig:(id)config
{
  v108 = __chkstk_darwin(self, a2, config);
  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = 0;
    v112 = 0;
    mLqmThreshold = 0;
    do
    {
      v7 = &v113[v6];
      *v7 = 0;
      *(v7 + 13) = 0;
      *(v7 + 4) = 0;
      *(v7 + 15) = 0;
      *(v7 + 28) = 3;
      *(v7 + 11) = 3;
      *(v7 + 9) = 3;
      v6 += 112;
      *(v7 + 11) = 3;
    }

    while (v6 != 3584);
    v115[878] = [v4 mProtectGnssLowPriority];
    v115[879] = [v5 mDenyVoiceProtect];
    v115[880] = [v5 mMitigationTimer_ms];
    if ([v108 LQMEnumCheck:{objc_msgSend(v5, "mLqmThreshold")}])
    {
      mLqmThreshold = [v5 mLqmThreshold];
      mPolicy = [v5 mPolicy];
      v9 = [mPolicy count];

      if (v9 < 0x21)
      {
        if (!v9)
        {
LABEL_26:
          [v108 printGnssImdConfig:v113];
          AriSdk::ARI_UtaIdcSetCellImdGnssMitigationConfigReq_SDK::ARI_UtaIdcSetCellImdGnssMitigationConfigReq_SDK(v110);
          v109[0] = 0;
          sub_10001B2B0(&v111, v109);
        }
      }

      else
      {
        [WCM_Logging logLevel:0 message:@"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, too many policies (%llu)", v9];
        LODWORD(v9) = 32;
      }

      v102 = v9;
      v10 = 0;
      v104 = v115;
      v105 = &v114;
      while (1)
      {
        mPolicy2 = [v5 mPolicy];
        v12 = [mPolicy2 objectAtIndexedSubscript:v10];
        v13 = [v108 ImdTypeEnumCheck:{objc_msgSend(v12, "mImdType")}];

        if ((v13 & 1) == 0)
        {
          break;
        }

        v14 = &v113[112 * v10];
        *v14 = 1;
        mPolicy3 = [v5 mPolicy];
        v16 = [mPolicy3 objectAtIndexedSubscript:v10];
        *(v14 + 23) = [v16 mImdType];

        mPolicy4 = [v5 mPolicy];
        v18 = [mPolicy4 objectAtIndexedSubscript:v10];
        *(v14 + 26) = [v18 mGnssL5TunerAllowed];

        mPolicy5 = [v5 mPolicy];
        v20 = [mPolicy5 objectAtIndexedSubscript:v10];
        *(v14 + 27) = [v20 mParallelMitigationAllowed];

        mPolicy6 = [v5 mPolicy];
        v22 = [mPolicy6 objectAtIndexedSubscript:v10];
        *(v14 + 24) = [v22 mGnssVictimFreq_KHz];

        mPolicy7 = [v5 mPolicy];
        v24 = [mPolicy7 objectAtIndexedSubscript:v10];
        *(v14 + 25) = [v24 mGnssVictimBw_KHz];

        mPolicy8 = [v5 mPolicy];
        v26 = [mPolicy8 objectAtIndexedSubscript:v10];
        mCellAggressor1 = [v26 mCellAggressor1];
        mBandPolicy = [mCellAggressor1 mBandPolicy];
        v29 = [mBandPolicy count];

        mPolicy9 = [v5 mPolicy];
        v31 = [mPolicy9 objectAtIndexedSubscript:v10];
        mCellAggressor2 = [v31 mCellAggressor2];
        mBandPolicy2 = [mCellAggressor2 mBandPolicy];
        v34 = [mBandPolicy2 count];

        v35 = 2;
        if (v29 >= 2)
        {
          v36 = 2;
        }

        else
        {
          v36 = v29;
        }

        v103 = v34;
        if (v34 < 2)
        {
          v35 = v34;
        }

        v106 = v35;
        v107 = v36;
        mPolicy10 = [v5 mPolicy];
        v38 = [mPolicy10 objectAtIndexedSubscript:v10];
        mCellAggressor12 = [v38 mCellAggressor1];
        *(v14 + 2) = [mCellAggressor12 mCellularCoexTech];

        mPolicy11 = [v5 mPolicy];
        v41 = [mPolicy11 objectAtIndexedSubscript:v10];
        mCellAggressor13 = [v41 mCellAggressor1];
        *(v14 + 2) = [mCellAggressor13 mCellularFrequencyKHz];

        mPolicy12 = [v5 mPolicy];
        v44 = [mPolicy12 objectAtIndexedSubscript:v10];
        mCellAggressor14 = [v44 mCellAggressor1];
        *(v14 + 3) = [mCellAggressor14 mCellularBandwidthKHz];

        mPolicy13 = [v5 mPolicy];
        v47 = [mPolicy13 objectAtIndexedSubscript:v10];
        mCellAggressor22 = [v47 mCellAggressor2];
        *(v14 + 24) = [mCellAggressor22 mCellularCoexTech];

        mPolicy14 = [v5 mPolicy];
        v50 = [mPolicy14 objectAtIndexedSubscript:v10];
        mCellAggressor23 = [v50 mCellAggressor2];
        *(v14 + 13) = [mCellAggressor23 mCellularFrequencyKHz];

        mPolicy15 = [v5 mPolicy];
        v53 = [mPolicy15 objectAtIndexedSubscript:v10];
        mCellAggressor24 = [v53 mCellAggressor2];
        *(v14 + 14) = [mCellAggressor24 mCellularBandwidthKHz];

        if (v29)
        {
          v55 = 0;
          v56 = v105;
          do
          {
            mPolicy16 = [v5 mPolicy];
            v58 = [mPolicy16 objectAtIndexedSubscript:v10];
            mCellAggressor15 = [v58 mCellAggressor1];
            mBandPolicy3 = [mCellAggressor15 mBandPolicy];
            v61 = [mBandPolicy3 objectAtIndexedSubscript:v55];
            mMitigationType = [v61 mMitigationType];

            if (([v108 mitigationTypeEnumCheck:mMitigationType] & 1) == 0)
            {
              goto LABEL_27;
            }

            *(v56 - 3) = 1;
            mPolicy17 = [v5 mPolicy];
            v64 = [mPolicy17 objectAtIndexedSubscript:v10];
            mCellAggressor16 = [v64 mCellAggressor1];
            mBandPolicy4 = [mCellAggressor16 mBandPolicy];
            v67 = [mBandPolicy4 objectAtIndexedSubscript:v55];
            *(v56 - 2) = [v67 mCellularAntBitmap];

            mPolicy18 = [v5 mPolicy];
            v69 = [mPolicy18 objectAtIndexedSubscript:v10];
            mCellAggressor17 = [v69 mCellAggressor1];
            mBandPolicy5 = [mCellAggressor17 mBandPolicy];
            v72 = [mBandPolicy5 objectAtIndexedSubscript:v55];
            *(v56 - 1) = [v72 mCellularTxPowerCap];

            mPolicy19 = [v5 mPolicy];
            v74 = [mPolicy19 objectAtIndexedSubscript:v10];
            mCellAggressor18 = [v74 mCellAggressor1];
            mBandPolicy6 = [mCellAggressor18 mBandPolicy];
            v77 = [mBandPolicy6 objectAtIndexedSubscript:v55];
            *v56 = [v77 mMitigationType];
            v56 += 4;
          }

          while (++v55 < v107);
        }

        if (v103)
        {
          v78 = 0;
          v79 = v104;
          while (1)
          {
            mPolicy20 = [v5 mPolicy];
            v81 = [mPolicy20 objectAtIndexedSubscript:v10];
            mCellAggressor25 = [v81 mCellAggressor2];
            mBandPolicy7 = [mCellAggressor25 mBandPolicy];
            v84 = [mBandPolicy7 objectAtIndexedSubscript:v78];
            mMitigationType = [v84 mMitigationType];

            if (([v108 mitigationTypeEnumCheck:mMitigationType] & 1) == 0)
            {
              break;
            }

            *(v79 - 3) = 1;
            mPolicy21 = [v5 mPolicy];
            v86 = [mPolicy21 objectAtIndexedSubscript:v10];
            mCellAggressor26 = [v86 mCellAggressor2];
            mBandPolicy8 = [mCellAggressor26 mBandPolicy];
            v89 = [mBandPolicy8 objectAtIndexedSubscript:v78];
            *(v79 - 2) = [v89 mCellularAntBitmap];

            mPolicy22 = [v5 mPolicy];
            v91 = [mPolicy22 objectAtIndexedSubscript:v10];
            mCellAggressor27 = [v91 mCellAggressor2];
            mBandPolicy9 = [mCellAggressor27 mBandPolicy];
            v94 = [mBandPolicy9 objectAtIndexedSubscript:v78];
            *(v79 - 1) = [v94 mCellularTxPowerCap];

            mPolicy23 = [v5 mPolicy];
            v96 = [mPolicy23 objectAtIndexedSubscript:v10];
            mCellAggressor28 = [v96 mCellAggressor2];
            mBandPolicy10 = [mCellAggressor28 mBandPolicy];
            v99 = [mBandPolicy10 objectAtIndexedSubscript:v78];
            *v79 = [v99 mMitigationType];
            v79 += 4;

            if (++v78 >= v106)
            {
              goto LABEL_25;
            }
          }

LABEL_27:
          [WCM_Logging logLevel:0 message:@"Coex ARI driver: Set GNSS IMD Antenna Blk Policy, invalid mitigationType=%u, API UtaIdcSetCellImdGnssMitigationConfigReq failed", mMitigationType];
          goto LABEL_30;
        }

LABEL_25:
        v10 = (v10 + 1);
        v104 += 28;
        v105 += 28;
        if (v10 >= v102)
        {
          goto LABEL_26;
        }
      }

      mPolicy24 = [v5 mPolicy];
      v101 = [mPolicy24 objectAtIndexedSubscript:v10];
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 0, @"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, invalid imdType=%u, API UtaIdcSetCellImdGnssMitigationConfigReq failed", [v101 mImdType]);
    }

    else
    {
      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 0, @"Coex ARI driver(SubId 0 and 1): Set GNSS IMD Antenna Blk Policy, invalid lqmThreshold=%u, API UtaIdcSetCellImdGnssMitigationConfigReq failed", [v5 mLqmThreshold]);
    }
  }

  else
  {
    [WCM_Logging logLevel:0 message:@"Coex ARI driver ERROR: Invalid AntBlockPowerLimitPolicyClientGnssImd received\n"];
  }

LABEL_30:
}

- (void)handleRc1DynamicPolicy:(id)policy SubId:(unsigned int)id
{
  v4 = *&id;
  policyCopy = policy;
  v7 = policyCopy;
  v27 = v4;
  v39[0] = v4;
  if (policyCopy)
  {
    v26 = policyCopy;
    if ([policyCopy count])
    {
      v8 = 0;
      v37 = 20;
      do
      {
        v9 = (&v36[1] + v8 + 4);
        *v9 = 0;
        v9[9] = 3;
        v9[5] = 127;
        v8 += 44;
      }

      while (v8 != 704);
      v36[0] = 0;
      v35 = 0;
      if ([(WCM_AriCoexCache *)self->mCache get:@"UWB_LQM_Threshold" value_uint64:v36 subId:v4])
      {
        v37 = v36[0];
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set UWB RT Policy, LQM_Threshold = %u", v4, v36[0]];
      }

      if ([(WCM_AriCoexCache *)self->mCache get:@"UWB_PC1_Deny_Voice_Protection" value_BOOL:&v35 subId:v4])
      {
        v38 = v35;
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set UWB RT Policy, Deny_Voice_Protection = %d", v4, v35];
      }

      v10 = 0;
      for (i = self; ; self = i)
      {
        v11 = v10;
        if ([v7 count] <= v10)
        {
          AriSdk::ARI_UtaIdcSetUwbRtActivityMitigationConfigReqV2_SDK::ARI_UtaIdcSetUwbRtActivityMitigationConfigReqV2_SDK(v33);
          sub_10001B2B0(&v34, v39);
        }

        v12 = [v7 objectAtIndex:v10];
        v13 = &v36[1] + 44 * v10 + 4;
        *v13 = 1;
        rc1PriorityBitmap = [v12 Rc1PriorityBitmap];
        *(v13 + 1) = rc1PriorityBitmap;
        nbChannelToAvoidStart = [v12 nbChannelToAvoidStart];
        *(v13 + 4) = nbChannelToAvoidStart;
        nbChannelToAvoidEnd = [v12 nbChannelToAvoidEnd];
        *(v13 + 5) = nbChannelToAvoidEnd;
        rc1AntBitmap = [v12 Rc1AntBitmap];
        *(v13 + 3) = rc1AntBitmap;
        cellBand = [v12 cellBand];
        *(v13 + 4) = cellBand;
        if (!-[WCM_AriCoexCommandHandler coexTechEnumCheck:](self, "coexTechEnumCheck:", [v12 bandInfoType]))
        {
          +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 0, @"Coex ARI driver(SubId %u): Set UWB RT Policy, invalid coexTech=%u, API UtaIdcSetUwbRtActivityMitigationConfigReq failed", v27, [v12 bandInfoType]);

          goto LABEL_17;
        }

        v30 = nbChannelToAvoidEnd;
        v18 = rc1PriorityBitmap;
        bandInfoType = [v12 bandInfoType];
        v29 = rc1AntBitmap;
        *(v13 + 5) = bandInfoType;
        uplinkHighFreq_Hz = [v12 uplinkHighFreq_Hz];
        uplinkLowFreq_Hz = [v12 uplinkLowFreq_Hz];
        v21 = (uplinkHighFreq_Hz - uplinkLowFreq_Hz) / 0x3E8uLL;
        v22 = (uplinkHighFreq_Hz - uplinkLowFreq_Hz) / 0x7D0 + ([v12 uplinkLowFreq_Hz] / 0x3E8);
        *(v13 + 6) = v22;
        *(v13 + 7) = v21;
        cellAgressorAntBitmap = [v12 cellAgressorAntBitmap];
        *(v13 + 8) = cellAgressorAntBitmap;
        if (!-[WCM_AriCoexCommandHandler mitigationTypeEnumCheck:](i, "mitigationTypeEnumCheck:", [v12 mitigationType]))
        {
          break;
        }

        mitigationType = [v12 mitigationType];
        *(v13 + 9) = mitigationType;
        cellTxPowerCap_16th_dBm = [v12 cellTxPowerCap_16th_dBm];
        *(v13 + 10) = cellTxPowerCap_16th_dBm;
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set UWB RT Policy[%u], priority_bitmap = 0x%X, ", v27, v11, v18];
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set UWB RT Policy[%u], nb_channel_start = %u, nb_channel_end = %u", v27, v11, nbChannelToAvoidStart, v30];
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set UWB RT Policy[%u], uwb_antenna_bitmap = %u, cellular_band = %u", v27, v11, v29, cellBand];
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set UWB RT Policy[%u], coex_tech = %u, cellular_aggressor_antenna_bitmap = 0x%X", v27, v11, bandInfoType, cellAgressorAntBitmap];
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set UWB RT Policy[%u], center_freq_khz = %u, bandwidth_khz = %u", v27, v11, v22, v21];
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set UWB RT Policy[%u], mitigation_type = %u, cellular_tx_power_cap(1/16dBm) = %d", v27, v11, mitigationType, cellTxPowerCap_16th_dBm];

        v10 = v11 + 1;
        v7 = v26;
      }

      +[WCM_Logging logLevel:message:](WCM_Logging, "logLevel:message:", 0, @"Coex ARI driver(SubId %u): Set UWB RT Policy, invalid mitigationType=%u, API UtaIdcSetUwbRtActivityMitigationConfigReq failed", v27, [v12 mitigationType]);

      v7 = v26;
    }
  }

LABEL_17:
}

- (void)setSFBMAntBlockingPowerLimitingConfig:(id)config SubId:(unsigned int)id
{
  v29 = *&id;
  xdict = config;
  uint64 = xpc_dictionary_get_uint64(xdict, "kWCMCellularSetAntBlocking_LQMThreshold");
  v5 = xpc_dictionary_get_uint64(xdict, "kWCMCellularSetAntBlocking_DurationGranularity");
  v6 = xpc_dictionary_get_BOOL(xdict, "kWCMCellularSetAntBlocking_DenyProtectVoice");
  v7 = xpc_dictionary_get_uint64(xdict, "kWCMCellularSetAntBlocking_MitigationTimer");
  v8 = xpc_dictionary_get_uint64(xdict, "kWCMCellularSetAntBlocking_TxDutyCycleThreshold");
  v9 = xpc_dictionary_get_uint64(xdict, "kWCMCellularSetAntBlocking_SFBMWindowSize");
  [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set SFBM Antenna Blk Policy, lqmThreshold = %llu, durationGranularity = %llu", v29, uint64, v5];
  [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set SFBM Antenna Blk Policy, denyVoiceProtect = %d, mitigationTimer = %llu", v29, v6, v7];
  [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set SFBM Antenna Blk Policy, txDutyCycleThreshold = %llu, windowSize = %llu", v29, v8, v9];
  if ([(WCM_AriCoexCommandHandler *)self LQMEnumCheck:uint64])
  {
    v10 = xpc_dictionary_get_value(xdict, "kWCMCellularSetAntBlocking_PolicySet");
    xarray = v10;
    if (v10)
    {
      count = xpc_array_get_count(v10);
      v12 = 16;
      if (count < 0x10)
      {
        v12 = count;
      }

      v27 = v12;
    }

    else
    {
      v27 = 0;
    }

    for (i = 0; i != 448; i += 28)
    {
      v14 = &v32[2] + i;
      *v14 = 0;
      *(v14 + 12) = 0;
    }

    v33[109] = v6;
    v33[110] = uint64;
    v34 = v5;
    v35 = v7;
    v36 = v8;
    v37 = v9;
    if (v27)
    {
      v15 = 0;
      v16 = v33;
      do
      {
        v17 = xpc_array_get_value(xarray, v15);
        v18 = xpc_dictionary_get_BOOL(v17, "kWCMCellularSetAntBlocking_Policy_Enable");
        v19 = xpc_dictionary_get_uint64(v17, "kWCMCellularSetAntBlocking_Policy_CellularAntBitmap");
        int64 = xpc_dictionary_get_int64(v17, "kWCMCellularSetAntBlocking_Policy_CellularPowerCap");
        v21 = xpc_dictionary_get_uint64(v17, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_CoexTech");
        v22 = xpc_dictionary_get_uint64(v17, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_CenterFreq");
        v23 = xpc_dictionary_get_uint64(v17, "kWCMCellularSetAntBlocking_Policy_CellularBandInfo_Bandwidth");
        v24 = xpc_dictionary_get_uint64(v17, "kWCMCellularSetAntBlocking_Policy_ConditionId");
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set SFBM Antenna Blk Policy -- policy[%lu]: enable = %d, cellularAntBitmap = %llu, cellularTxPowerCap = %lld", v29, v15, v18, v19, int64];
        [WCM_Logging logLevel:3 message:@"Coex ARI driver(SubId %u): Set SFBM Antenna Blk Policy -- policy[%lu]: cellularCoexTechBitmap = %llu, frequency = %lluKHz, BW = %lluKHz, Condition_id = %llu", v29, v15, v21, v22, v23, v24];
        *(v16 - 3) = v18;
        *(v16 - 4) = v21;
        *(v16 - 1) = v22;
        *v16 = v23;
        v16[1] = v19;
        v16[2] = int64;
        *(v16 + 6) = v24;

        ++v15;
        v16 += 7;
      }

      while (v27 != v15);
    }

    AriSdk::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigReq_SDK::ARI_UtaIdcSetSfbmAntBlockPwrLmtPolicyConfigReq_SDK(v31);
    v30 = v29;
    sub_10001B2B0(v32, &v30);
  }

  [WCM_Logging logLevel:0 message:@"Coex ARI driver(SubId %u): Set SFBM Antenna Blk Policy, invalid lqmThreshold=%llu, API UtaIdcSetCnvAntBlockPwrLmtConfigReq failed", v29, uint64];
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 4) = 0;
  return self;
}

@end