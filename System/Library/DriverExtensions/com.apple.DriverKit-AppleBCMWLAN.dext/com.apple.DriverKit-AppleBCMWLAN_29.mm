uint64_t AppleBCMWLANCore::handleChanInfoTimer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11_4();
  v6 = (*(v5 + 1952))();
  LODWORD(a3) = *(*a3 + 780);
  IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(v3, 93);
  return CCLogStream::logAlert(v6, "[dk] %s@%d: P2PVLPAllowed FW version %d 6G enabled %d\n", "handleChanInfoTimer", 46343, a3, IsBitSet);
}

uint64_t AppleBCMWLANCore::handleChanInfoTimer()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: clm_flags failed, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: clm_flags 0x%X\n", "handleChanInfoTimer", 46352, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: VLP is not allowed for P2P\n", "handleChanInfoTimer", 46354);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: per_chan_info failed, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiCC : Chan specs changed due to another country code set call. Mismatch will occur which is fixed below after collecting a corecapture\n", "handleChanInfoTimer", 46436);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_166();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:No existing 20MHz channel matches the primary channel of Chanspec: %x\n", "handleChanInfoTimer", 46480, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:20MHz channel total number already reached max, %d\n", "handleChanInfoTimer", 46520, 400);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_247();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiCC : Mismatch between country supoprting 6E and 6E channels allowed. ivars->fCurrentCountrySupports6E : [%hhu], countryCode : [%s] , ivars->fThreadCountExecChanInfo : %d\n", "handleChanInfoTimer", 46547, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiCC : FwTypeMfg detected. No recovery being attempted\n", "handleChanInfoTimer", 46549);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_234();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiCC : Current FW country [%s] supports 6E [%hhu]\n", "handleChanInfoTimer", 46557, (v1 + v2), *(v1 + 35896));
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:No memory for currChanSpec\n", "handleChanInfoTimer", 46330);
}

uint64_t AppleBCMWLANCore::handleTxDCReportTimeout()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to get Tx Duty Cycle from DynSAR Summary\n", "handleTxDCReportTimeout", 19863);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Sub Command ID mismatch, input %d, output %d\n", "handleTxDCReportTimeout", 19868, 3, *v0);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid FW length detected for DYNSAR_CNT_VERSION_V4!\n", "handleTxDCReportTimeout", 19891);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid FW length detected for DYNSAR_CNT_VERSION_V2!\n", "handleTxDCReportTimeout", 19883);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid DynSAR Summary version\n", "handleTxDCReportTimeout", 19895);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Slice %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 2 TxDC %d%%\n", "handleTxDCReportTimeout", 19959, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 1 TxDC %d%%\n", "handleTxDCReportTimeout", 19956, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 0 TxDC %d%%\n", "handleTxDCReportTimeout", 19953, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 3 TxDC %d%%\n", "handleTxDCReportTimeout", 19962, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 2 TxDC %d%%\n", "handleTxDCReportTimeout", 19945, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 1 TxDC %d%%\n", "handleTxDCReportTimeout", 19942, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 0 TxDC %d%%\n", "handleTxDCReportTimeout", 19939, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 3 TxDC %d%%\n", "handleTxDCReportTimeout", 19948, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 2 TxDC %d%%\n", "handleTxDCReportTimeout", 19929, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 1 TxDC %d%%\n", "handleTxDCReportTimeout", 19926, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 0 TxDC %d%%\n", "handleTxDCReportTimeout", 19923, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 3 TxDC %d%%\n", "handleTxDCReportTimeout", 19932, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 2 TxDC %d%%\n", "handleTxDCReportTimeout", 19915, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 1 TxDC %d%%\n", "handleTxDCReportTimeout", 19912, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 0 TxDC %d%%\n", "handleTxDCReportTimeout", 19909, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 3 TxDC %d%%\n", "handleTxDCReportTimeout", 19918, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid DynSAR Summary version\n", "handleTxDCReportTimeout", 19966);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid version or fields from DynSAR summary response\n", "handleTxDCReportTimeout", 19874);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::driverkitAllocSkywalkBusResources(uint64_t a1, int a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_5_0();
  result = (*(v6 + 1952))();
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*a1 + 1952))(a1);
      OUTLINED_FUNCTION_209();
      result = CCLogStream::logAlert(v8, "[dk] %s@%d:%s:%s: driverKitProcessPlatformConfig() rc:%d\n", v9, v10, v11, "driverkitAllocSkywalkBusResources", a2);
    }
  }

  *a3 = -536870199;
  return result;
}

uint64_t AppleBCMWLANCore::driverkitAllocSkywalkBusResources()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_3();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:%s:%s: Failed to fetchAndUpdateRingParameters()\n", "driverkitAllocSkywalkBusResources", 5106, "AppleBCMWLANCore", "driverkitAllocSkywalkBusResources");
    }
  }

  *v0 = 713;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_3();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:allocateSkywalkBusResource failed - fetchAndUpdateRingParameters\n", "driverkitAllocSkywalkBusResources", 5110);
    }
  }

  *v0 = 713;
  return result;
}

uint64_t AppleBCMWLANCore::appendWskuInfo(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_5_0();
  result = (*(v6 + 1952))();
  if (result)
  {
    OUTLINED_FUNCTION_89_0();
    (*(v8 + 1952))(v4);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_89_0();
      v10 = (*(v9 + 1952))(v4);
      result = CCLogStream::logAlert(v10, "[dk] %s@%d:Invalid WSKU format, version[0x%08x] reserved[0x%08x]\n", "appendWskuInfo", 3291, *(*v3 + 4336), *(*v3 + 4340));
    }
  }

  *a3 = -469793004;
  return result;
}

uint64_t AppleBCMWLANCore::appendWskuInfo()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Skip WSKU by EDT Property", "appendWskuInfo", 3281);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Skip WSKU by boot-args\n", "appendWskuInfo", 3276);
}

uint64_t AppleBCMWLANCore::stopResources()
{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_110();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:AdjustBusy(-1) busystate %u, fAdjustBusyCnt %u\n", "stopResources", 3873, v3, v4);
}

uint64_t AppleBCMWLANCore::collectSPMIHEBResetStats()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:sent SPMI reset stats to coreAnalytics\n", "collectSPMIHEBResetStats", 4294);
}

{
  OUTLINED_FUNCTION_35_1();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valResetCount\n", "collectSPMIHEBResetStats", 4285);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_35_1();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyResetCount\n", "collectSPMIHEBResetStats", 4283);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_35_1();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventPayload\n", "collectSPMIHEBResetStats", 4280);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_35_1();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventName\n", "collectSPMIHEBResetStats", 4278);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::featureFlagIsBitSet()
{
  OUTLINED_FUNCTION_16_5();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v4, "[dk] %s@%d: Invalid lock\n", "featureFlagIsBitSet", 34960);
    }
  }

  *v0 = 0;
  return result;
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v4, "[dk] %s@%d: Invalid bit position, bit[%d]\n", v5, v6, v7);
    }
  }

  *v0 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::waitForDriverEvent(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  OUTLINED_FUNCTION_5_5();
  v6 = (*(v5 + 1952))();
  v7 = AppleBCMWDriverEventToString[a4];
  v8 = current_thread();
  v13 = thread_tid(v8);
  OUTLINED_FUNCTION_66();
  return CCLogStream::logNoticeIf(v6, 0x200000uLL, "[dk] %s@%d: Waiting %ld ms for (%s) event from tid: %llx\n", v10, v11, v12, v7, v13);
}

uint64_t AppleBCMWLANCore::waitForDriverEvent()
{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Sleep failed 0x%08x for event %s", "waitForDriverEvent", 4544, v0, AppleBCMWDriverEventToString[v1]);
}

uint64_t AppleBCMWLANCore::handleRxEventFrame()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to lock event cage buffer\n", "handleRxEventFrame", 4569);
}

uint64_t AppleBCMWLANCore::driverKitChipBoot()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_3();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Failed in initAfterIORegUpdated()\n", "driverKitChipBoot", 5056);
    }
  }

  *v0 = 713;
  return result;
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to prepare the ChipImage, iorc[0x%08x]\n", v6, v7, v8);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to complete the ChipImage, iorc[0x%08x]\n", v6, v7, v8);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed in bootChipImage(), iorc[0x%08x]\n", v6, v7, v8);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_16_5();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Failed to get ChipImage\n", "driverKitChipBoot", 5071);
    }
  }

  *v0 = 0;
  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_209();
  return CCLogStream::logInfo(v2, "[dk] %s@%d:%s:%s: iorc[0x%08x]\n", v4, v5, v6, "driverKitChipBoot", v0);
}

uint64_t AppleBCMWLANCore::bootChipImage()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:wlan.debug.single-boot-only set, only one boot allowed\n", "bootChipImage", 5572);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_68_0();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: state 0x%lX\n", "bootChipImage", 5577, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:FW image loading failed: retval 0x%x, putting device into reset state\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::driverKitProcessPlatformConfig(uint64_t a1, uint64_t a2, char a3, int a4)
{
  OUTLINED_FUNCTION_5_5();
  v7 = (*(v6 + 1952))();
  return CCLogStream::logNoticeIf(v7, 0x80uLL, "[dk] %s@%d:Image verification, rv:%d, skipVerification:%d\n", "driverKitProcessPlatformConfig", 5173, a4, a3 & 1);
}

uint64_t AppleBCMWLANCore::driverKitProcessPlatformConfig()
{
  OUTLINED_FUNCTION_34_3();
  if ((*(v2 + 1952))())
  {
    OUTLINED_FUNCTION_162();
    (*(v3 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_162();
      v6 = (*(v5 + 1952))(v1);
      CCLogStream::logEmergency(v6, "[dk] %s@%d:PlatformConfig.plist validation failed", "driverKitProcessPlatformConfig", 5177);
    }
  }

  return io80211_os_log("PlatformConfig.plist validation failed: PlatformConfig.plist: '%s'\n", v0);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:plist is not an OSDictionary", "driverKitProcessPlatformConfig", 5190);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Failed to unserialize PlatformConfig.plist", "driverKitProcessPlatformConfig", 5187);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:IOMallocZero failed", "driverKitProcessPlatformConfig", 5183);
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    OUTLINED_FUNCTION_89_0();
    (*(v5 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_89_0();
      v7 = (*(v6 + 1952))(v2);
      result = CCLogStream::logEmergency(v7, "[dk] %s@%d:Failed to create OSDictionary", "driverKitProcessPlatformConfig", 5161);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_16_5();
  if ((*(v2 + 1952))())
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      v4 = (*(*v1 + 1952))(v1);
      CCLogStream::logEmergency(v4, "[dk] %s@%d:Failed to load PlatformConfig.plist", "driverKitProcessPlatformConfig", 5153);
    }
  }

  return io80211_os_log("Failed to load PlatformConfig.plist: '%s'\n", v0);
}

{
  OUTLINED_FUNCTION_16_5();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logEmergency(v4, "[dk] %s@%d:IOMalloc failed", "driverKitProcessPlatformConfig", 5146);
    }
  }

  *v0 = 0;
  return result;
}

{
  OUTLINED_FUNCTION_16_5();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logEmergency(v4, "[dk] %s@%d:Invalid OSBundle", "driverKitProcessPlatformConfig", 5142);
    }
  }

  *v0 = 0;
  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:rc:%d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::driverKitProcessPlatformConfig(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  OUTLINED_FUNCTION_5_0();
  result = (*(v8 + 1952))();
  if (result)
  {
    OUTLINED_FUNCTION_1_10();
    (*(v10 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_1_10();
      v12 = (*(v11 + 1952))(a1);
      result = CCLogStream::logEmergency(v12, "[dk] %s@%d:Failed to create filename OSString", "driverKitProcessPlatformConfig", 5167);
    }
  }

  *a4 = 0;
  *a3 = 0;
  *a2 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::setPlatformConfigProperties()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_3();
  result = (*(v2 + 1952))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1952))(v1);
      result = CCLogStream::logEmergency(v6, "[dk] %s@%d:dict argument is not an OSDictionary", "setPlatformConfigProperties", 10439);
    }
  }

  *v0 = 706;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_3();
  result = (*(v2 + 1952))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1952))(v1);
      result = CCLogStream::logEmergency(v6, "[dk] %s@%d:Missing dict argument", "setPlatformConfigProperties", 10437);
    }
  }

  *v0 = 706;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_3();
  result = (*(v2 + 1952))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1952))(v1);
      result = CCLogStream::logEmergency(v6, "[dk] %s@%d:Missing ProvisioningRoot", "setPlatformConfigProperties", 10435);
    }
  }

  *v0 = 702;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_3();
  result = (*(v2 + 1952))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1952))(v1);
      result = CCLogStream::logEmergency(v6, "[dk] %s@%d:Missing fProvider", "setPlatformConfigProperties", 10433);
    }
  }

  *v0 = 702;
  return result;
}

uint64_t AppleBCMWLANCore::logChipImage()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d:\n", "logChipImage", 5543);
}

uint64_t AppleBCMWLANCore::halt()
{
  OUTLINED_FUNCTION_10_5();
  v2 = (*(v1 + 1952))();
  v3 = current_thread();
  v4 = thread_tid(v3);
  return CCLogStream::logInfo(v2, "[dk] %s@%d:AppleBCMWLANCore::halt[%u] this[%p] <%llx>\n", "halt", 44866, 44866, v0, v4);
}

uint64_t AppleBCMWLANCore::loadAndSetup()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  v2 = current_thread();
  thread_tid(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d:<%llx>\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Chip image loading begins.", "loadAndSetup", 5680);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Chip image loading has finished.", "loadAndSetup", 5694);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to set WiFi Boot State", "loadAndSetup", 5697);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logEmergency(v0, "[dk] %s@%d: provider loadChipImage fail %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed commander reset(), ret[0x%08x]\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:command pool reset not allowed\n", "loadAndSetup", 5722);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_73_0();
  if (!v5 & v4)
  {
    v6 = "UNKNOWN";
  }

  else
  {
    v6 = off_1003D0E30[v3];
  }

  return CCLogStream::logInfo(v1, "[dk] %s@%d:Wakeup commander fStateFlags(%lx) userPower(%s)\n", "loadAndSetup", 5725, v2, v6);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logEmergency(v0, "[dk] %s@%d: setupFirmware fail %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logEmergency(v0, "[dk] %s@%d: setupDriver fail %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setBootUnrecoverable()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:WiFi Chip boot unrecoverable due to %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setupFirmware()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: iovar get version command failed: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Firmware Version: %s\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Firmware InterfaceVersion: %d\n", "setupFirmware", 8336, *(*v0 + 780));
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: 'getMaxSupportedEventLogSets' failed: 0x%08x/%s\n", "setupFirmware", 8344, v0, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: 'setupTraceLogCheckers' failed: 0x%08x/%s\n", "setupFirmware", 8349, v0, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Download clmb failed, rv 0x%x %s\n", "setupFirmware", 8389, v0, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Download txcap failed: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Download platcfg failed: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Download wifi cal msf failed: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: 'updateFWAPIVerFromHW' failed: 0x%08x/%s\n", "setupFirmware", 8436, v0, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: 'processChipCaps' failed: 0x%08x/%s\n", "setupFirmware", 8472, v0, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: 'set_mpc_state' failed: 0x%08x/%s\n", "setupFirmware", 8489, v0, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: iovar set pm2_refresh_badiv failed: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: 'populateCountryList' failed: 0x%08x/%s\n", "setupFirmware", 8530, v0, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: 'populate6ESupportedCountryList' failed: 0x%08x/%s\n", "setupFirmware", 8537, v0, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_139();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiCC : Initializing FW with country code [%s]. Probably a chip reset recovery\n", "setupFirmware", 8549, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_180();
  OUTLINED_FUNCTION_139();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiCC : Current host country code [%s] setup to FW is complete.\n", "setupFirmware", 8553, v3);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: fw query for chanspecs failed during init : %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_1_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_4_6();
  v2 = OUTLINED_FUNCTION_118();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: WiFiCC : fw query for chanspecs SUCCEEDED during init : %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiCC : host country code not present. Defaulting fHostCountryEnabled to false\n", "setupFirmware", 8567);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:WiFiCC : setup default countrycode to FW complete. rv : [%s] \n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: 'configureDefaultCountryCode' failed: 0x%08x/%s\n", "setupFirmware", 8572, v0, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: fw query for chanspecs failed during init : %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_1_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_4_6();
  v2 = OUTLINED_FUNCTION_118();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: WiFiCC : fw query for chanspecs SUCCEEDED during init : %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: iovar set scan_force_active command failed: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: 11d ingored due to boot-arg wlan.11d.ignore override\n", "setupFirmware", 8603);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Disables adoption of tx power constraints from the AP's 802.11D Country IE and 802.11H Power Constraint IE\n", "setupFirmware", 8612);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: iovar tpc_options command failed: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: iovar vlan_mode command failed: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_233();
  return CCLogStream::logInfo(v2, "[dk] %s@%d:Low Power Scan Core based feature disable boot-arg=%d and disableProfileActive=%d \n", "setupFirmware", 8663, *(v1 + 2096), *(v1 + 2100));
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot disable feature support : ret %x: %s\n", "setupFirmware", 8674, v0, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d: Configuring Beacon protection params 0 to FW Active\n", "setupFirmware", 8688);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Enabling Bcn Protection failed: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Bcn Protection config failed: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Bringup firmware bringupBCM, calling ...\n", "setupFirmware", 8709);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  BCMInterfaceState = AppleBCMWLANCore::getBCMInterfaceState(v0);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Bringup firmware bringupBCM, called ..., rv[0x%08x]/'%s', bcmInterfaceState[%u]\n", v7, v8, v9, v5, BCMInterfaceState);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: 'bringupBCM' failed: 0x%08x/%s\n", "setupFirmware", 8714, v0, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfoIf(v0, 0x80uLL, "[dk] %s@%d:Failed to set FW dma mode: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ERROR: Failed to set flow rings to TID mode: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: 'configureDefaultEvents' failed: 0x%08x/%s\n", "setupFirmware", 8749, v0, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: 'configurePowerSave' failed: 0x%08x/%s\n", "setupFirmware", 8799, v0, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: 'configureSecurityParams' failed: 0x%08x/%s\n", "setupFirmware", 8813, v0, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to set the packet filter mode: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: cannot set offload with error : %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set assoc_retry_max to %d : ret %x: %s\n", "setupFirmware", 8853, 5, v0, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set 40MHz Intolerant bit : ret %x: %s\n", "setupFirmware", 8864, v0, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: 'setupFirmwareWithDTDefaults' failed: 0x%08x/%s\n", "setupFirmware", 8934, v0, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: 'configureEarlyBeaconDetect' failed: 0x%08x/%s\n", "setupFirmware", 8941, v0, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure TVPM\n", "setupFirmware", 8947);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure DynSAR\n", "setupFirmware", 8956);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Enable static tx sdb\n", "setupFirmware", 8962);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Calling configureOCLParams \n", "setupFirmware", 8983);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Ignoring mcast/bcast after %d ms\n", "setupFirmware", 9015, 50);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_125();
  AppleBCMWLANConfigManager::isTxFailEventSupported(*(v2 + 5464));
  OUTLINED_FUNCTION_6();
  return CCLogStream::logNotice(v0, "[dk] %s@%d:ivars->fConfigManager->isTxFailEventSupported() %d\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set Block Ack Policy on TID %d", "setupFirmware", 9046, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set Block Ack Policy on TID %d", "setupFirmware", 9053, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Disabling Early Beacon Termination in non-phone platform\n", "setupFirmware", 9060);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Disabling Digital Nap feature in non-phone platform\n", "setupFirmware", 9065);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Disabling Opportunistic PwrSave in non-phone platform\n", "setupFirmware", 9071);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Setting GPIO Tx Envelope Ind to %d\n", "setupFirmware", 9078, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d: Configuring Beacon drift mitigation params to FW Active\n", "setupFirmware", 9091);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Configuring Beacon drift mitigation params failed: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: iovar get version command failed: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:[WiFiTimeSync] Override 'wlan.forced.ts' found : [%u]\n", "setupFirmware", 9147, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:[WiFiTimeSync] Invalid forcedTimestmping value. Force it to %d\n", "setupFirmware", 9150, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logWarn(v1, "[dk] %s@%d:Failied configure IE filtering %u\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: 'restore_mpc_state' failed: 0x%08x/%s\n", "setupFirmware", 9231, v0, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Succeeded\n", "setupFirmware", 9280);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Manufacturing image type; omitting additional initializations..\n", "setupFirmware", 8449);
}

{
  OUTLINED_FUNCTION_1_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_4_6();
  v2 = OUTLINED_FUNCTION_118();
  v4 = v3(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d: 'AppleBCMWLANChanSpec::withFWAPIVer' failed: 0x%08x/%s\n", "setupFirmware", 8444, 0, v4);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: 'synchronizeTime' failed: 0x%08x/%s\n", "setupFirmware", 8428, v0, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: iovar 'wlc_ver' command failed: 0x%08x/%s\n", "setupFirmware", 8332, v0, v5);
}

uint64_t AppleBCMWLANCore::setupDriver()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_68_0();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: State 0x%lX\n", "setupDriver", 5899, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to set ModuleDictionary", "setupDriver", 5922);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to set Moduleinfo\n", "setupDriver", 5925);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  CStringNoCopy = OSString::getCStringNoCopy(*v0);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Failed to write property %s = %s into registry\n", "setupDriver", 5936, "vendor-id", CStringNoCopy);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Setting fRangingCorrectionCore0=%d, fRangingCorrectionCore1=%d", "setupDriver", 5985, *(*v0 + 36092), *(*v0 + 36096));
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlertIf(v1, 0x80uLL, "[dk] %s@%d: creating virtual interface with prefix = %s\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_169();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Core Driver Initialization Time %llu.%09llu\n", "setupDriver", 6070, v1 / v2, v1 % v2);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logNotice(v2, "[dk] %s@%d: Setting power state to %lu\n", "setupDriver", 6075, *(*v0 + 10388));
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d: Succeeded\n", "setupDriver", 6154);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_68_0();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: driver initialized 0x%lX\n", "setupDriver", 5879, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logNotice(v2, "[dk] %s@%d: Setting power state to %lu\n", "setupDriver", 5887, *(*v0 + 10388));
}

uint64_t AppleBCMWLANCore::setupDriver(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_11_4();
  (*(v5 + 1952))();
  v6 = OUTLINED_FUNCTION_86();
  ClassNameHelper = getClassNameHelper(v6);
  v8 = "Attempting";
  if (!*a3)
  {
    v8 = "Skipping";
  }

  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s::%s() boot-args wlan.awdl.create_by_driver=%d. %s to create AWDL virtual interface here.\n", "setupDriver", 6054, ClassNameHelper, "setupDriver", *a3, v8);
}

uint64_t AppleBCMWLANCore::setPTMMode()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:[WiFiTimeSync] %s: forcedTimestmping %d. Force fPTMMode to %d\n", "setPTMMode", 5787, "setPTMMode", *(*v0 + 35912), 1);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to disable ptm, ret:0x%x\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ptm cmd allocation failed", "setPTMMode", 5780);
}

uint64_t AppleBCMWLANCore::handlePowerStateChange(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  OUTLINED_FUNCTION_8_7();
  v7 = (*(v6 + 1952))();
  v8 = *(*v4 + 19852);
  if (v8 > 4)
  {
    v9 = "UNKNOWN";
  }

  else
  {
    v9 = off_1003D0E30[v8];
  }

  if (a4 > 4)
  {
    v10 = "UNKNOWN";
  }

  else
  {
    v10 = off_1003D0E30[a4];
  }

  return CCLogStream::logNotice(v7, "[dk] %s@%d: Changing power state from %s to %s.\n", "handlePowerStateChange", 34370, v9, v10);
}

uint64_t AppleBCMWLANCore::handlePowerStateChange()
{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Unknown power state transition from %d to %d\n", "handlePowerStateChange", 34391, *(*v1 + 19852), v0);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  if (v0 > 4)
  {
    v3 = "UNKNOWN";
  }

  else
  {
    v3 = off_1003D0E30[v0];
  }

  return CCLogStream::logAlert(v2, "[dk] %s@%d: Power transition failed. Restoring power state to %s.\n", "handlePowerStateChange", 34396, v3);
}

uint64_t AppleBCMWLANCore::bringupBCM()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Bringup firmware, sending ...\n", "bringupBCM", 6165);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Bringup firmware, ... sent rv[0x%08x]/'%s'\n", "bringupBCM", 6167, v0, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: WLC_UP command failed, trying again: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: WLC_UP command failed, giving up: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to enable radio (WLC_SET_RADIO): %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::getBCMInterfaceState()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Failed WLC_GET_UP: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::IssueFwCap()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: iovar get cap command failed, %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logNoticeIf(v2, 0x80uLL, "[dk] %s@%d:cap: %.*s\n", "IssueFwCap", 6374, 1024, v0);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DigitalNap Supported\n", "IssueFwCap", 6426);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DigitalNap NOT Supported\n", "IssueFwCap", 6429);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:NAN and NANHO disabled\n", "IssueFwCap", 6448);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:PMF not supported so disable WPA3\n", "IssueFwCap", 6493);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Error:  getting HP2P Capability %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Setting Beacon Mute & Drift feature flag\n", "IssueFwCap", 6590);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Setting Beacon Mute feature flag\n", "IssueFwCap", 6593);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Setting Beacon Drift feature flag\n", "IssueFwCap", 6599);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Beacon Mute Mitigation disabled\n", "IssueFwCap", 6607);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Beacon Drift Mitigation disabled\n", "IssueFwCap", 6614);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Enable NDD feature\n", "IssueFwCap", 6680);
}

uint64_t AppleBCMWLANCore::featureFlagSetBit()
{
  OUTLINED_FUNCTION_35_1();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d: Invalid lock\n", "featureFlagSetBit", 34924);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_36_1();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      OUTLINED_FUNCTION_11_3();
      return CCLogStream::logAlert(v3, "[dk] %s@%d: Invalid bit position, bit[%d]\n", v4, v5, v6);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::featureFlagClearBit()
{
  OUTLINED_FUNCTION_35_1();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d: Invalid lock\n", "featureFlagClearBit", 34942);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_36_1();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      OUTLINED_FUNCTION_11_3();
      return CCLogStream::logAlert(v3, "[dk] %s@%d: Invalid bit position, bit[%d]\n", v4, v5, v6);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::getHP2P_CTRL()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_3();
  result = (*(v2 + 1952))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1952))(v1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:FW does not support llw", "getHP2P_CTRL", 55967);
    }
  }

  *v0 = 711;
  return result;
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:hp2p get iovar failed\n", "getHP2P_CTRL", 55989);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_3();
  result = (*(v2 + 1952))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1952))(v1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:hp2p cmd resp alloc fail\n", "getHP2P_CTRL", 55969);
    }
  }

  *v0 = 701;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_3();
  result = (*(v2 + 1952))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v4 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      v6 = (*(v5 + 1952))(v1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:hp2p cmd alloc fail\n", "getHP2P_CTRL", 55968);
    }
  }

  *v0 = 701;
  return result;
}

void AppleBCMWLANCore::getHP2P_CTRL()
{
  OUTLINED_FUNCTION_16_5();
  if ((*(v1 + 1952))())
  {
    OUTLINED_FUNCTION_19_1();
    (*(v2 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v4 = (*(v3 + 1952))(v0);
      CCLogStream::logAlert(v4, "[dk] %s@%d:Unexpected hp2p subcmd resp length\n", "getHP2P_CTRL", 56002);
    }
  }

  OUTLINED_FUNCTION_120();
}

uint64_t AppleBCMWLANCore::isRC1CoexSupported()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:bootArg for rc1cx is %d\n", "isRC1CoexSupported", 40508, v3);
}

uint64_t AppleBCMWLANCore::isPHYEcounterSupported()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:bootArg for PHYEcounter is %d\n", "isPHYEcounterSupported", 40523, v3);
}

uint64_t AppleBCMWLANCore::isPHYCALEcounterSupported()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:bootArg for PHYCALEcounter is %d\n", "isPHYCALEcounterSupported", 40538, v3);
}

uint64_t AppleBCMWLANCore::IssueFwCapExt()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: iovar get capext command failed, issuing get cap %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:iovar dngl:capext payload xtlvlist error:\n", "IssueFwCapExt", 6791);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:processFwFeatures: Error parsing the xtlv payload:\n", "IssueFwCapExt", 6835);
}

{
  OUTLINED_FUNCTION_0_25();
  result = (*(v3 + 1952))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v5 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      (*(v6 + 1952))(v1);
      OUTLINED_FUNCTION_9_4();
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:%s::%s[%u] Error: Invalid xtlvData \n", v8, v9, v10, "IssueFwCapExt", 6824);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:iovar dngl:capext: Extra payload remaining: remainingSize = %lu\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:iovar dngl:capext payload size overrun:\n", "IssueFwCapExt", 6784);
}

uint64_t AppleBCMWLANCore::processFwFeatures()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:NAN and NANHO disabled\n", "processFwFeatures", 7091);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DigitalNap Supported\n", "processFwFeatures", 7136);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DigitalNap NOT Supported\n", "processFwFeatures", 7140);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:PMF not supported so disable WPA3\n", "processFwFeatures", 7165);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Setting Beacon Mute feature flag\n", "processFwFeatures", 7195);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Setting Beacon Drift feature flag\n", "processFwFeatures", 7199);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Beacon Mute Mitigation disabled\n", "processFwFeatures", 7207);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Beacon Drift Mitigation disabled\n", "processFwFeatures", 7214);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Error:  getting HP2P Capability %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Should not come here. tlvtype = %lu \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_25();
  result = (*(v3 + 1952))();
  if (result)
  {
    OUTLINED_FUNCTION_19_1();
    (*(v5 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_19_1();
      (*(v6 + 1952))(v1);
      OUTLINED_FUNCTION_7_1();
      result = CCLogStream::logAlert(v7, "[dk] %s@%d:%s:%d: xtlvData pointer null:\n", v8, v9, v10, v11);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::processChipCaps()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:About to issue capext.... \n", "processChipCaps", 7342);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:FW capext not supported. Proceeding to default cap.... \n", "processChipCaps", 7345);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:About to issue cap.... \n", "processChipCaps", 7351);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:FW cap returning error... can't proceed...  \n", "processChipCaps", 7354);
}

uint64_t AppleBCMWLANCore::adjustFeatureFlags()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Enabling features: Power manage mcast/bcast\n", "adjustFeatureFlags", 34904);
}

uint64_t AppleBCMWLANCore::queryPlatcfgCommandVersion()
{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:paltcfg get iovar failed\n", "queryPlatcfgCommandVersion", 7522);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Platcfg command version %u\n", "queryPlatcfgCommandVersion", 7534, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:platcfg cmd resp alloc fail\n", "queryPlatcfgCommandVersion", 7502);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:platcfg cmd alloc fail\n", "queryPlatcfgCommandVersion", 7501);
}

void AppleBCMWLANCore::queryPlatcfgCommandVersion()
{
  OUTLINED_FUNCTION_16_5();
  if ((*(v1 + 1952))())
  {
    OUTLINED_FUNCTION_19_1();
    (*(v2 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v4 = (*(v3 + 1952))(v0);
      CCLogStream::logAlert(v4, "[dk] %s@%d:Unexpected platcfg subcmd resp length\n", "queryPlatcfgCommandVersion", 7530);
    }
  }

  OUTLINED_FUNCTION_120();
}

uint64_t AppleBCMWLANCore::retrievePlatcfgStatus()
{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:paltcfg get iovar failed\n", "retrievePlatcfgStatus", 7578);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:platcfg blob download status: segment count=%u blob download status=%u\n", "retrievePlatcfgStatus", 7596, *v1, *(v0 + 16));
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:platcfg blob segment download status: type=%u status=%u\n", "retrievePlatcfgStatus", 7602, *v0, *(v0 + 1));
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:platcfg cmd resp alloc fail\n", "retrievePlatcfgStatus", 7558);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:platcfg cmd alloc fail\n", "retrievePlatcfgStatus", 7557);
}

void AppleBCMWLANCore::retrievePlatcfgStatus(char a1)
{
  if ((a1 & 1) == 0)
  {
    OUTLINED_FUNCTION_231();
    (*(v2 + 1952))(v3);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_162();
      v5 = (*(v4 + 1952))(v1);
      CCLogStream::logAlert(v5, "[dk] %s@%d:Unexpected platcfg download status resp length\n", "retrievePlatcfgStatus", 7594);
    }
  }

  OUTLINED_FUNCTION_120();
}

void AppleBCMWLANCore::retrievePlatcfgStatus()
{
  OUTLINED_FUNCTION_16_5();
  if ((*(v1 + 1952))())
  {
    OUTLINED_FUNCTION_19_1();
    (*(v2 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v4 = (*(v3 + 1952))(v0);
      CCLogStream::logAlert(v4, "[dk] %s@%d:invalid platcfg download status count\n", "retrievePlatcfgStatus", 7590);
    }
  }

  OUTLINED_FUNCTION_120();
}

{
  OUTLINED_FUNCTION_16_5();
  if ((*(v1 + 1952))())
  {
    OUTLINED_FUNCTION_19_1();
    (*(v2 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v4 = (*(v3 + 1952))(v0);
      CCLogStream::logAlert(v4, "[dk] %s@%d:Unexpected platcfg subcmd resp length\n", "retrievePlatcfgStatus", 7586);
    }
  }

  OUTLINED_FUNCTION_120();
}

uint64_t AppleBCMWLANCore::retrievePlatcfgBlobVersion()
{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:paltcfg get iovar failed\n", "retrievePlatcfgBlobVersion", 7653);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_146();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unknown blob version xtlv id=%u len=%u\n", "retrievePlatcfgBlobVersion", 7708, v3, v4);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logNotice(v2, "[dk] %s@%d:Blob segment: 6GHz Antenna Gain, bin format version: %u\n", "retrievePlatcfgBlobVersion", 7683, *(v0 + 5));
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Creation: %s\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Title: %s\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_146();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unknown segment meta data xtlv ID %u len %u\n", "retrievePlatcfgBlobVersion", 7700, v3, v4);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:platcfg cmd resp alloc fail\n", "retrievePlatcfgBlobVersion", 7633);
}

void AppleBCMWLANCore::retrievePlatcfgBlobVersion()
{
  OUTLINED_FUNCTION_34_3();
  if ((*(v1 + 1952))())
  {
    OUTLINED_FUNCTION_162();
    (*(v2 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_162();
      v4 = (*(v3 + 1952))(v0);
      CCLogStream::logAlert(v4, "[dk] %s@%d:remain length is short than xtlv length\n", "retrievePlatcfgBlobVersion", 7690);
    }
  }

  OUTLINED_FUNCTION_120();
}

{
  OUTLINED_FUNCTION_34_3();
  if ((*(v1 + 1952))())
  {
    OUTLINED_FUNCTION_161();
    (*(v2 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_161();
      v4 = (*(v3 + 1952))(v0);
      CCLogStream::logAlert(v4, "[dk] %s@%d:remain length is short than XTLV length\n", "retrievePlatcfgBlobVersion", 7675);
    }
  }

  OUTLINED_FUNCTION_120();
}

{
  OUTLINED_FUNCTION_16_5();
  if ((*(v1 + 1952))())
  {
    OUTLINED_FUNCTION_19_1();
    (*(v2 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v4 = (*(v3 + 1952))(v0);
      CCLogStream::logAlert(v4, "[dk] %s@%d:Unexpected platcfg blob version resp length\n", "retrievePlatcfgBlobVersion", 7668);
    }
  }

  OUTLINED_FUNCTION_120();
}

{
  OUTLINED_FUNCTION_16_5();
  if ((*(v1 + 1952))())
  {
    OUTLINED_FUNCTION_19_1();
    (*(v2 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v4 = (*(v3 + 1952))(v0);
      CCLogStream::logAlert(v4, "[dk] %s@%d:invalid platcfg blob version count\n", "retrievePlatcfgBlobVersion", 7664);
    }
  }

  OUTLINED_FUNCTION_120();
}

{
  OUTLINED_FUNCTION_16_5();
  if ((*(v1 + 1952))())
  {
    OUTLINED_FUNCTION_19_1();
    (*(v2 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v4 = (*(v3 + 1952))(v0);
      CCLogStream::logAlert(v4, "[dk] %s@%d:Unexpected platcfg subcmd resp length\n", "retrievePlatcfgBlobVersion", 7661);
    }
  }

  OUTLINED_FUNCTION_120();
}

void AppleBCMWLANCore::retrievePlatcfgBlobVersion(char a1)
{
  if ((a1 & 1) == 0)
  {
    OUTLINED_FUNCTION_231();
    (*(v2 + 1952))(v3);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_162();
      v5 = (*(v4 + 1952))(v1);
      CCLogStream::logAlert(v5, "[dk] %s@%d:not enough remain length\n", "retrievePlatcfgBlobVersion", 7680);
    }
  }

  OUTLINED_FUNCTION_120();
}

uint64_t AppleBCMWLANCore::retrievePlatcfgXTLVDumpData()
{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:paltcfg get iovar failed\n", "retrievePlatcfgXTLVDumpData", 7762);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_146();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unknown dump data xtlv id %u len %u\n", "retrievePlatcfgXTLVDumpData", 7797, v3, v4);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v2 + 1952))();
  v8 = *(v1 + 6);
  OUTLINED_FUNCTION_126();
  return CCLogStream::logNotice(v3, "[dk] %s@%d:%u - %u Mhz: Correlated signals: %d Uncorrelated signals: %d Individual AntGains: %s\n", "retrievePlatcfgXTLVDumpData", 7793, v5, v6, v7, v8, v0);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:platcfg cmd resp alloc fail\n", "retrievePlatcfgXTLVDumpData", 7742);
}

void AppleBCMWLANCore::retrievePlatcfgXTLVDumpData()
{
  OUTLINED_FUNCTION_34_3();
  if ((*(v1 + 1952))())
  {
    OUTLINED_FUNCTION_161();
    (*(v2 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_161();
      v4 = (*(v3 + 1952))(v0);
      CCLogStream::logAlert(v4, "[dk] %s@%d:invalid dump ant gain xtlv\n", "retrievePlatcfgXTLVDumpData", 7785);
    }
  }

  OUTLINED_FUNCTION_120();
}

{
  OUTLINED_FUNCTION_34_3();
  if ((*(v1 + 1952))())
  {
    OUTLINED_FUNCTION_161();
    (*(v2 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_161();
      v4 = (*(v3 + 1952))(v0);
      CCLogStream::logAlert(v4, "[dk] %s@%d:invalid dump data XTLV\n", "retrievePlatcfgXTLVDumpData", 7780);
    }
  }

  OUTLINED_FUNCTION_120();
}

{
  OUTLINED_FUNCTION_34_3();
  if ((*(v1 + 1952))())
  {
    OUTLINED_FUNCTION_161();
    (*(v2 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_161();
      v4 = (*(v3 + 1952))(v0);
      CCLogStream::logAlert(v4, "[dk] %s@%d:segment dump xtlv length is too big\n", "retrievePlatcfgXTLVDumpData", 7779);
    }
  }

  OUTLINED_FUNCTION_120();
}

{
  OUTLINED_FUNCTION_16_5();
  if ((*(v1 + 1952))())
  {
    OUTLINED_FUNCTION_19_1();
    (*(v2 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v4 = (*(v3 + 1952))(v0);
      CCLogStream::logAlert(v4, "[dk] %s@%d:invalid number of segment dumps\n", "retrievePlatcfgXTLVDumpData", 7773);
    }
  }

  OUTLINED_FUNCTION_120();
}

{
  OUTLINED_FUNCTION_16_5();
  if ((*(v1 + 1952))())
  {
    OUTLINED_FUNCTION_19_1();
    (*(v2 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      OUTLINED_FUNCTION_19_1();
      v4 = (*(v3 + 1952))(v0);
      CCLogStream::logAlert(v4, "[dk] %s@%d:Unexpected platcfg subcmd resp length\n", "retrievePlatcfgXTLVDumpData", 7770);
    }
  }

  OUTLINED_FUNCTION_120();
}

uint64_t AppleBCMWLANCore::retrieveRegTableStatus()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: clmload_status failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::retrieveTxCapTableStatus()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: txcapload_status failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::retrieveCalMSFStatus()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:calload_status failed, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d:calload_status return %ld\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d: Force skipping MSF checking\n", "retrieveCalMSFStatus", 7875);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Skip MSF SN check\n", "retrieveCalMSFStatus", 7881);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:apply SN workaround, returned %x %s\n", "retrieveCalMSFStatus", 7904, v0, v5);
}

uint64_t AppleBCMWLANCore::removeFirmwareLoader()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Terminating/releasing request of firmware loading\n", "removeFirmwareLoader", 53102);
}

uint64_t AppleBCMWLANCore::logRegTableVersion()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v4 = v3(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d:%s returns %s\n", "logRegTableVersion", 7962, "clmver", v4);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logNoticeIf(v2, 0x80uLL, "[dk] %s@%d:%s returns\n %s\n", "logRegTableVersion", 7956, "clmver", v0);
}

uint64_t AppleBCMWLANCore::logTxCapTableVersion()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v4 = v3(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d:%s returns %s\n", "logTxCapTableVersion", 7988, "txcapver", v4);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logNoticeIf(v2, 0x80uLL, "[dk] %s@%d:%s returns\n %s\n", "logTxCapTableVersion", 7983, "txcapver", v0);
}

uint64_t AppleBCMWLANCore::outputPlatcfg()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:no platcfg blob present in chip image, skip download\n", "outputPlatcfg", 8046);
}

uint64_t AppleBCMWLANCore::downloadCal()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:NO WCAL is programmed!\n", "downloadCal", 8087);
}

uint64_t AppleBCMWLANCore::outputWiFiCal()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s unavailable in ioreg\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Download %s\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s and %s unavailable in ioreg\n", "outputWiFiCal", 8137, "wifi-calibration-fdr", "wifi-calibration-gen");
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Download %s\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Download %s\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Skip WCAL by boot-args\n", "outputWiFiCal", 8120);
}

uint64_t AppleBCMWLANCore::setupTraceLogCheckers()
{
  OUTLINED_FUNCTION_268();
  *v2 = v1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(v3 + 1952))())
  {
    (*(*v0 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_2();
  return 1;
}

uint64_t AppleBCMWLANCore::getMaxSupportedEventLogSets()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to get max event log sets: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::set_mpc_state()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Iovar failure getting MPC value: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Iovar failure to MPC to zero: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::restore_mpc_state()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Failure restoring MPC iovar: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::updateFWAPIVerFromHW()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to get FW API version: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d: FW API version: 0x%x\n", "updateFWAPIVerFromHW", 9576, v3);
}

uint64_t AppleBCMWLANCore::updateHTAndVHTCapBasedOnHWSupport()
{
  OUTLINED_FUNCTION_36_1();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      OUTLINED_FUNCTION_11_3();
      return CCLogStream::logAlert(v3, "[dk] %s@%d: ERROR: Unexpected error detected: rxStreams (%d)\n", v4, v5, v6);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::configureTethering()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: apsta failed, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: apsta get failed, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d: apsta set to %u\n", "configureTethering", 40307, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d: Enabling AP mode feature\n", "configureTethering", 40313);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d: AP mode unsupported but requested by device tree\n", "configureTethering", 40317);
}

uint64_t AppleBCMWLANCore::configureDualPowerMode()
{
  OUTLINED_FUNCTION_10_5();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  AppleBCMWLANCore::featureFlagIsBitSet(v2, 40);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Set kFeatureDualPowerMode %s\n", v4, v5, v6);
}

uint64_t AppleBCMWLANCore::populateCountryList()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Failed to retrieve country code list from firmware: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::populate6ESupportedCountryList()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: WiFiCC : Failed to retrieve country code list from firmware: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiCC : Total # of countries in CLM for 6E: %d\n", "populate6ESupportedCountryList", 46743, v3);
}

uint64_t AppleBCMWLANCore::configureDefaultCountryCode()
{
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_29_5();
  (*(v3 + 1952))();
  v4 = OUTLINED_FUNCTION_77();
  ClassNameHelper = getClassNameHelper(v4);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s::%s(): Device MPN %s is for restricted country code %s\n", "configureDefaultCountryCode", 40677, ClassNameHelper, "configureDefaultCountryCode", *v1, v0);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Failed to retrieve country code:%s \n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_139();
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d: Default Country code set to %s\n", "configureDefaultCountryCode", 40702, v3);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: iovar set autocountry_default command failed: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_139();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: Strict regulatory settings for %s required. Not enabling autocountry.\n", "configureDefaultCountryCode", 40714, v3);
}

uint64_t AppleBCMWLANCore::configureDefaultCountryCode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11_4();
  (*(v5 + 1952))();
  v6 = OUTLINED_FUNCTION_86();
  ClassNameHelper = getClassNameHelper(v6);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s::%s() boot-args overrides ivars->fRestrictedCountryCode to %s\n", "configureDefaultCountryCode", 40690, ClassNameHelper, "configureDefaultCountryCode", (*a3 + 6740));
}

uint64_t AppleBCMWLANCore::setTxProfileEnable()
{
  OUTLINED_FUNCTION_1_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_4_6();
  v2 = OUTLINED_FUNCTION_118();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Enable tx_profile feature : %s \n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureScans()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to set passive scan dwell time: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureLinkLoss()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to set the link lost timeout: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to set  bcn_to_dly: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s WiFiRoam : Unable to set join pref to skip PSC roam scans\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s WiFiRoam : Unable to configure RSSI compensation threshold\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s WiFiRoam : Unable to set RSSI compensation smooth values\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to configure First beacon Rx timeout value: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configurePowerSave()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d: Warning: Unable to configure pm2_md_sleep_ext, not supported on this platform.\n", "configurePowerSave", 41201);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to configure pm2_md_sleep_ext, %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNoticeIf(v1, 0x80uLL, "[dk] %s@%d: Enabling MPC mode\n", "configurePowerSave", 41226);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to enable MPC mode: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set pm2_radio_shutoff to %d : ret %x: %s\n", "configurePowerSave", 41263, 10, v0, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: cannot set pm2_bcn_sleep_ret to %d : ret %x: %s  -> continue with initialization\n", "configurePowerSave", 41271, 120, v0, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Always externally powered platform\n", "configurePowerSave", 41294);
}

uint64_t AppleBCMWLANCore::configureRoam()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:%d RoamScan feature is not enabled for this platform \n", "configureRoam", 41608, 41608);
}

uint64_t AppleBCMWLANCore::configureSecurityParams()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to set iovar sup_auto_eapver %x\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to set iovar sup_m3sec_ok %x\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Interface is not available\n", "configureSecurityParams", 41626);
}

uint64_t AppleBCMWLANCore::configureHS20IE()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logWarn(v1, "[dk] %s@%d:Failed to configure HS20 Capability Indication IE\n", "configureHS20IE", 51635);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logWarn(v1, "[dk] %s@%d:Failed to configure HS20 Interworking IE\n", "configureHS20IE", 51638);
}

uint64_t AppleBCMWLANCore::configureEarlyBeaconDetect()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: early_bcn_thresh %u\n", "configureEarlyBeaconDetect", 51710, v3);
}

uint64_t AppleBCMWLANCore::configureTrgDisc()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Enabling Enhanced Trigger Disconnect Mode\n", "configureTrgDisc", 51738);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Disabling Enhanced Trigger Disconnect Mode\n", "configureTrgDisc", 51736);
}

uint64_t AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_coex_bitmap()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error: kMWSCoexIoVarCmd_mws_coex_bitmap  -- empty array\n", "setMWSCoexIoVarsAsync_mws_coex_bitmap", 9952);
}

uint64_t AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_aggCh_params()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error:: ch params -- enable NULL\n", "setMWSCoexIoVarsAsync_mws_aggCh_params", 10194);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error: ch params -- rx center freq NULL\n", "setMWSCoexIoVarsAsync_mws_aggCh_params", 10203);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error: ch params -- tx center freq NULL\n", "setMWSCoexIoVarsAsync_mws_aggCh_params", 10212);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error:: ch params -- rx bw NULL\n", "setMWSCoexIoVarsAsync_mws_aggCh_params", 10221);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error: ch params -- tx bw NULL\n", "setMWSCoexIoVarsAsync_mws_aggCh_params", 10230);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error: ch params -- type NULL\n", "setMWSCoexIoVarsAsync_mws_aggCh_params", 10239);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error: kMWSCoexIoVarCmd_mws_params  -- null dict\n", "setMWSCoexIoVarsAsync_mws_aggCh_params", 10180);
}

uint64_t AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wciSig_config()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error:  mws signalling --  rx assert offset is NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10028);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error:  mws signalling -- rx assert jitter NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10037);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error:  mws signalling --  rx de-assert offset  NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10046);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error:  mws signalling -- rx de-assert jitter NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10055);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error:  mws signalling --  tx assert offset  NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10064);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error:  mws signalling -- tx assert jitter NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10073);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error:  mws signalling --  tx de-assert offset  NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10082);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error:  mws signalling -- tx de-assert jitter NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10091);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error:  mws signalling --  pattern assert offset  NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10100);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error:  mws signalling -- pattern assert jitter NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10109);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error:  mws signalling --  inactivity assert offset  NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10118);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error:  mws signalling -- inactivity assert jitter NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10127);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error: signalling --  scan freq assert offset  NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10136);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error:  mws signalling -- scan freq assert jitter NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10145);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error:  mws signalling -- signal priority assert jitter NULL \n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10154);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error: kMWSCoexIoVarCmd_wci2_config  -- null dict\n", "setMWSCoexIoVarsAsync_mws_wciSig_config", 10014);
}

uint64_t AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_wlanrxpri_threshold()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error: null wlanrxpri_threshold\n", "setMWSCoexIoVarsAsync_mws_wlanrxpri_threshold", 10264);
}

uint64_t AppleBCMWLANCore::setMWSCoexIoVarsAsync_mws_coex_bitmap_V2()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_166();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:MWS_BITMAP_V2: 2G -------->  0x%x\n", "setMWSCoexIoVarsAsync_mws_coex_bitmap_V2", 9907, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_166();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:MWS_BITMAP_V2: 5G-Low --------> 0x%x\n", "setMWSCoexIoVarsAsync_mws_coex_bitmap_V2", 9914, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_166();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:MWS_BITMAP_V2: 5G-Mid --------> 0x%x\n", "setMWSCoexIoVarsAsync_mws_coex_bitmap_V2", 9921, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_166();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:MWS_BITMAP_V2: 5G-HI --------> 0x%x\n", "setMWSCoexIoVarsAsync_mws_coex_bitmap_V2", 9928, v3);
}

uint64_t AppleBCMWLANCore::setMWSCoexIoVarsRxPrioTimer()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:--------------------> MWS RX Prio Timer %u\n", "setMWSCoexIoVarsRxPrioTimer", 10297, *(*v0 + 8900));
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error: null Rx Prio Timer value\n", "setMWSCoexIoVarsRxPrioTimer", 10291);
}

uint64_t AppleBCMWLANCore::setMWSCoexIoVarsPwrLimitTimer()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:--------------------> MWS Power Limit %u\n", "setMWSCoexIoVarsPwrLimitTimer", 10325, *(*v0 + 8908));
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error: null Pwr Limit Timer value\n", "setMWSCoexIoVarsPwrLimitTimer", 10319);
}

uint64_t AppleBCMWLANCore::configureTxFailEventThreshold()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to set txFail Event Threshold: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: txFail Event is configured with value:%u!\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Allocation failure for return TLV\n", "configureTxFailEventThreshold", 54642);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: txFail Event is not supported!\n", "configureTxFailEventThreshold", 54671);
}

uint64_t AppleBCMWLANCore::configureECounters()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ecounter Configuration failed\n", "configureECounters", 51862);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Disabling ecounters due to boot-arg wlan.ecounters=0\n", "configureECounters", 51834);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create AppleBCMWLANIOReportingPerSlice block\n", "configureECounters", 51822);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create AppleBCMWLANIOReportingCore block\n", "configureECounters", 51815);
}

uint64_t AppleBCMWLANCore::configureEventLogOneReportedStats()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Setting Log1 size to %d due to boot-arg wlan.elogs.size1\n", "configureEventLogOneReportedStats", 52705, v3);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v0, "[dk] %s@%d:Event Log Configuration %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Disabling event logs due to boot-arg wlan.elogs=0\n", "configureEventLogOneReportedStats", 52698);
}

uint64_t AppleBCMWLANCore::configureEventLogSixReportedStats()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Setting Log6 size to %d due to boot-arg wlan.elogs.size6\n", "configureEventLogSixReportedStats", 52750, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Event Log Configuration failed\n", "configureEventLogSixReportedStats", 52806);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Enable SCAN_SUMAMRY from configureEventLogSixReportedStats \n", "configureEventLogSixReportedStats", 52785);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v0, "[dk] %s@%d:Event Log Configuration %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Disabling event logs due to boot-arg wlan.elogs=0\n", "configureEventLogSixReportedStats", 52743);
}

uint64_t AppleBCMWLANCore::configureEventLogSevenReportedStats()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Setting Log7 size to %d due to boot-arg wlan.elogs.size7\n", "configureEventLogSevenReportedStats", 52828, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Event Log Configuration failed\n", "configureEventLogSevenReportedStats", 52913);
}

{
  OUTLINED_FUNCTION_1_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_4_6();
  v2 = OUTLINED_FUNCTION_118();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v0, "[dk] %s@%d:Event Log Configuration %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Disabling event logs due to boot-arg wlan.elogs=0\n", "configureEventLogSevenReportedStats", 52821);
}

uint64_t AppleBCMWLANCore::updateCurrentFWCountryCode()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Failed to retrieve country code from firmware: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureIeFiltering()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v0, "[dk] %s@%d: Error: Unable to set filter ies : %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::initTrafficEngineering()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Traffic Engineering support is: %s\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Traffic Engineering logging is: %s\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::disableC2C()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: %s: ", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Failure to send c2c: %s", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to allocate memory for txBuf\n", "disableC2C", 9728);
}

uint64_t AppleBCMWLANCore::configureScanForwardToAOP()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Scan forward to AOP is %s\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Scan forward to AOP is already %s\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::configureScanParamMods()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to allocate memory for txBuf\n", "configureScanParamMods", 62291);
}

uint64_t AppleBCMWLANCore::configureRxHCRTSCTSEventParams()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Allocation subcmd_payload_len for return %d %d \n", "configureRxHCRTSCTSEventParams", 54687, 12, 16);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to set RTS CTS hold down params: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Allocation failure for return TLV\n", "configureRxHCRTSCTSEventParams", 54690);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Rx RTS CTS Mitigation Enhancement is not supported!\n", "configureRxHCRTSCTSEventParams", 54717);
}

uint64_t AppleBCMWLANCore::setRxLatPrioEnabBitmapAsyncCallback()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Setting rx_lat_prio_enab failed: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setMacAddressAsyncCallback()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:WFRandomisation : Async setting interface mac address failed: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setMacAddressComplete()
{
  OUTLINED_FUNCTION_11_4();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_5_9();
  v14 = *(*(v0 + 72) + 5656);
  v15 = *(*(v0 + 72) + 5657);
  v12 = *(*(v0 + 72) + 5654);
  v13 = *(*(v0 + 72) + 5655);
  v10 = *(*(v0 + 72) + 5652);
  v11 = *(*(v0 + 72) + 5653);
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:WiFi MAC Address: %02x:%02x:%02x:%02x:%02x:%02x, HW[ %02x:%02x:%02x:%02x:%02x:%02x ]\n", "setMacAddressComplete", 25151, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t AppleBCMWLANCore::setRxLatPrioEnabBitmap()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:rx_lat_prio_enab is set to %u\n", "setRxLatPrioEnabBitmap", 9329, v3);
}

uint64_t AppleBCMWLANCore::utilGetHWCap()
{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logNoticeIf(v3, 0x80uLL, "[dk] %s@%d: %s: 0x%x\n", "utilGetHWCap", 9344, v0, *v1);
}

uint64_t AppleBCMWLANCore::cfgAmpduWinSizeCallback()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Setting AMPDU BA window size failed: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::cfgAmpduWindowSize()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Could not set Tx AMPDU window size: error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Tx AMPDU BA window size setting is successful\n", "cfgAmpduWindowSize", 9408);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Could not set Rx AMPDU window size: error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Rx AMPDU BA window size setting is successful\n", "cfgAmpduWindowSize", 9434);
}

uint64_t AppleBCMWLANCore::getSupportedPhyModeFromHW()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to get phytype: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::updateRSDBCaps()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: More cores (%d) than expected (%d)\n", "updateRSDBCaps", 9664, *(*v0 + 1081), 2);
}

uint64_t AppleBCMWLANCore::applyRoamingCandidateBoost(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v5 = a3;
  OUTLINED_FUNCTION_5_5();
  (*(v6 + 1952))();
  v7 = "2,4GHz";
  if (v5 == 1)
  {
    v7 = "5GHz";
  }

  v14 = v7;
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v8, "[dk] %s@%d:%s:%d: Issuing join_pref to FW: Applying %s roam candidate boost of %d\n", v10, v11, v12, v13, v14, a4);
}

uint64_t AppleBCMWLANCore::applyRoamingCandidateBoost()
{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set join_pref to %d : ret %x: %s\n", "applyRoamingCandidateBoost", 9700, 5, v0, v5);
}

uint64_t AppleBCMWLANCore::handleSetC2CCompletion()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Failed with status 0x%X(%u)", "handleSetC2CCompletion", 9708, v0, v0);
}

uint64_t AppleBCMWLANCore::stopARPKeepAlive()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to set keep alive packet ret %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::programARPKeepAlive()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ARP keepalive interval - %d ms\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s: Failed to get Arp keepalive data (%d)\n", "programARPKeepAlive", 9824, "programARPKeepAlive", v0);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to set keep alive packet ret %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::runSetMwsCoexIoVarsAsync_mws_ocl_coex_bitmap()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:mws_ocl_channel_map is NULL!", "runSetMwsCoexIoVarsAsync_mws_ocl_coex_bitmap", 9878);
}

uint64_t ___ZN16AppleBCMWLANCore27setPlatformConfigPropertiesEP12OSDictionary_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  OSString::getCStringNoCopy(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v0, "[dk] %s@%d:Setting property: '%s'\n", v4, v5, v6);
}

uint64_t ___ZN16AppleBCMWLANCore27setPlatformConfigPropertiesEP12OSDictionary_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Property check failed, skip to next keystr", "setPlatformConfigProperties_block_invoke", 10462);
}

uint64_t ___ZN16AppleBCMWLANCore27setPlatformConfigPropertiesEP12OSDictionary_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:No cstring, skip to next keystr", "setPlatformConfigProperties_block_invoke", 10451);
}

uint64_t ___ZN16AppleBCMWLANCore27setPlatformConfigPropertiesEP12OSDictionary_block_invoke_cold_4()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Not OSString, skip to next keystr", "setPlatformConfigProperties_block_invoke", 10446);
}

uint64_t AppleBCMWLANCore::setProperties()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: ERROR: Unexpected non-ioctl set property call for this platform\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_38_1();
  v4 = (*(v3 + 288))(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Setting WiFi calibration MSF property: [%p] '%s'\n", "setProperties", 11070, v4, "wifi-calibration-msf");
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_38_1();
  v4 = (*(v3 + 288))(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Setting WiFi calibration MSF property: [%p] '%s' ... done\n", "setProperties", 11072, v4, "wifi-calibration-msf");
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_38_1();
  v4 = (*(v3 + 288))(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Setting WiFi calibration FDR property: [%p] '%s'\n", "setProperties", 11081, v4, "wifi-calibration-fdr");
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_38_1();
  v4 = (*(v3 + 288))(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Setting WiFi calibration FDR property: [%p] '%s' ... done\n", "setProperties", 11083, v4, "wifi-calibration-fdr");
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_38_1();
  v4 = (*(v3 + 288))(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Setting WiFi calibration Generic property: [%p] '%s'\n", "setProperties", 11092, v4, "wifi-calibration-gen");
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_38_1();
  v4 = (*(v3 + 288))(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Setting WiFi calibration Generic property: [%p] '%s' ... done\n", "setProperties", 11094, v4, "wifi-calibration-gen");
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_38_1();
  v4 = (*(v3 + 288))(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Setting WiFi MSF source property: [%p] '%s'\n", "setProperties", 11103, v4, "wlan.msf.source");
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_38_1();
  v4 = (*(v3 + 288))(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Setting WiFi calibration Generic property: [%p] '%s' ... done\n", "setProperties", 11106, v4, "wifi-calibration-gen");
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Calling setPlatformConfigProperties: [%p]\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Calling setPlatformConfigProperties: [%p] ... done\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Scan Offload is %s affected\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Beacon Offload is %s affected\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Setting APPLE80211KEY_MWS_COEX_ENABLED_CHANNELS\n", "setProperties", 11176);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Setting APPLE80211KEY_MWS_COEX_BITMAP_V2\n", "setProperties", 11198);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Setting APPLE80211KEY_MWS_RX_PRIO_TIMER\n", "setProperties", 11206);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Setting APPLE80211KEY_MWS_PWR_LIMIT_TIMER\n", "setProperties", 11213);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Error: mws_ocl_coex_bitmap invalid channel(%d)\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logNotice(v2, "[dk] %s@%d:Setting MWS_SCAN_FREQ_CHANNELS to %d 0x%x 0x%x 0x%x 0x%x\n", "setProperties", 11288, *(*v0 + 10412), *(*v0 + 10414), *(*v0 + 10416), *(*v0 + 10418), *(*v0 + 10420));
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Parameters missing!!!\n", "setProperties", 11293);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:more channels that APPLE80211_MAX_CHANNELS (%d)\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logNotice(v2, "[dk] %s@%d:Setting MWS_SET_LTE_TDD_MODE channels bitmap %08x\n", "setProperties", 11313, *(*v0 + 10424));
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Expected array of 4, got %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logNotice(v2, "[dk] %s@%d:Setting MWS_ANTENNA_SELECTION ivars->fAntennaSelection array %d %d %d %d\n", "setProperties", 11338, *(*v0 + 10428), *(*v0 + 10430), *(*v0 + 10432), *(*v0 + 10434));
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Expected array of %d, got %d\n", "setProperties", 11368, 16, v0);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v10 = *(*v0 + 10448);
  v11 = *(*v0 + 10450);
  OUTLINED_FUNCTION_152();
  return CCLogStream::logNotice(v2, "[dk] %s@%d:Setting MWS_ANTENNA_SELECTION_V2 ivars->fAntennaSelection_v2 array %d %d %d %d %d %d %d %d\n", "setProperties", 11364, v4, v5, v6, v7, v8, v9, v10, v11);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logNotice(v2, "[dk] %s@%d:Setting MWS_WLANRX_PROT to 0x%x\n", "setProperties", 11380, *(*v0 + 10488));
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logNotice(v2, "[dk] %s@%d:Setting WCI2_TXIND to 0x%x\n", "setProperties", 11390, *(*v0 + 10492));
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logNotice(v2, "[dk] %s@%d:Setting MWS_SCANJOIN_PROT to 0x%x\n", "setProperties", 11400, *(*v0 + 10496));
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logNotice(v2, "[dk] %s@%d:Setting MWS_AUTOPROT_PARAMS to weight 0x%x thresh 0x%x\n", "setProperties", 11414, *(*v0 + 10500), *(*v0 + 10504));
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Setting APPLE80211KEY_MWS_NGC_COEX_BITMAP\n", "setProperties", 11422);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_247();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Setting MWS_NGC_COEX_BITMAPS to 0x%x 0x%x 0x%x\n", "setProperties", 11446, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Setting MWS_NGC_TIMER_GRANULARITY to 0x%x\n", "setProperties", 11458, *(*v0 + 10700));
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Setting MWS_NGC_ACTIVITY_LEVEL_THRESHOLDS to 0x%x\n", "setProperties", 11467, *(*v0 + 10696));
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_116();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Setting MWS_2GWiFi_TYPE7_BITMAP to 0x%x\n", "setProperties", 11480, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Setting MWS_AGG_FRAME_CONFIG\n", "setProperties", 11568);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error reading APPLE80211KEY_MWS_AGG_FRAME_PERIOD_TYPE\n", "setProperties", 11552);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error reading APPLE80211KEY_MWS_AGG_FRAME_PERIOD_DURATION\n", "setProperties", 11533);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Error reading APPLE80211KEY_MWS_AGG_FRAME_NUM_PERIODS is too big %d(max %d)\n", "setProperties", 11528, *v0, 7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error reading APPLE80211KEY_MWS_AGG_FRAME_NUM_PERIODS\n", "setProperties", 11523);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error reading APPLE80211KEY_MWS_AGG_FRAME_SYNC_ASSERT_JITTER\n", "setProperties", 11515);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error reading APPLE80211KEY_MWS_AGG_FRAME_SYNC_ASSERT_OFFSET\n", "setProperties", 11508);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error reading APPLE80211KEY_MWS_AGG_FRAME_DURATION\n", "setProperties", 11501);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Processing Property APPLE80211KEY_MWS_OCL_PARAMS\n", "setProperties", 11581);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Setting WCI2 Tx Envelope Indication Enable to 0x%x\n", "setProperties", 11629, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_166();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Setting Tx Envelope Idle Timeout to 0x%x\n", "setProperties", 11639, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Setting WCI2 Tx Indication 5G to 0x%x\n", "setProperties", 11649, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_166();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Setting Tx Duration Threshold to 0x%x\n", "setProperties", 11659, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logNotice(v2, "[dk] %s@%d:Setting Active Scan Throttle to 0x%x\n", "setProperties", 11669, *(*v0 + 10516));
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logNotice(v2, "[dk] %s@%d:Setting Active Scan Throttle Dwell Time to 0x%x\n", "setProperties", 11681, *(*v0 + 10520));
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logNotice(v2, "[dk] %s@%d:Setting RC2 Coex Mode to 0x%x\n", "setProperties", 11693, *(*v0 + 10712));
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logNotice(v2, "[dk] %s@%d:Setting RC2 PM Protection Mode to 0x%x\n", "setProperties", 11704, *(*v0 + 10716));
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Setting RC2 CTS2S setting to 0x%x\n", "setProperties", 11722, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Setting RC1 Coex Mode to 0x%x\n", "setProperties", 11749, *(*v0 + 10704));
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Setting WIFI BT AIRTIME POLICY to 0x%x\n", "setProperties", 11787, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:APPLE80211KEY_MWS_SET_WIFI_BT_AIRTIME_POLICY profile %d is not supported\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Got APPLE80211KEY_MWS_BT_SCO_HID_TRAFFIC_PARAM\n", "setProperties", 11800);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Got APPLE80211KEY_MWS_BT_A2DP_TRAFFIC_INDICATION\n", "setProperties", 11836);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:BT A2DP for iphone indication is %d \n", "setProperties", 11850, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Got APPLE80211KEY_MWS_BT_ESCO_TRAFFIC_INDICATION\n", "setProperties", 11859);
}

{
  OUTLINED_FUNCTION_5_6();
  v2 = (*(v1 + 1952))();
  OUTLINED_FUNCTION_5_0();
  v4 = (*(v3 + 72))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:SetProperty Failed handling of propertyDict with %d keys: %s\n", "setProperties", 12019, v4, v0);
}

uint64_t AppleBCMWLANCore::simulateRoamStatusSubStateGated()
{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_112();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Setting simulated roam status substate params: substate: 0x%x idx: 0x%x status: 0x%x reason: 0x%x\n", "simulateRoamStatusSubStateGated", 56174, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_112();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure simulated roam status substate: substate=%d idx=%d status=%d reason=%d\n", "simulateRoamStatusSubStateGated", 56199, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Clearing simulated roam status substate\n", "simulateRoamStatusSubStateGated", 56205);
}

uint64_t AppleBCMWLANCore::handleSetEventBitFieldAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: cannot set the event bit field!!: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::startRoamScanAsyncCallback()
{
  OUTLINED_FUNCTION_0_8();
  v2 = (*(v1 + 1952))();
  OUTLINED_FUNCTION_81_0();
  (*(v3 + 112))(v0);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot start a Roam Scan: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::getRssiAsyncCallback()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: cannot read rssi from the firmware: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: no valid data \n", "getRssiAsyncCallback", 12360);
}

uint64_t AppleBCMWLANCore::handlePktFilterPortsAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: cannot Configure Pkt Ports List in the firmware: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::handleSetARPOffloadAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: cannot read ARP OE from the firmware: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::handleSetICMPAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: cannot configure ICMP in firmware: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::handleSetLpasAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: cannot configure LPAS in firmware: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_172();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: LPAS request in FW: %s %d \n", "handleSetLpasAsyncCallBack", 12441, v5, v0);
}

uint64_t AppleBCMWLANCore::handleSetNDOffloadAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: cannot read ND OE from the firmware: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::handleExtDTIMIoVarAsyncCallBack()
{
  OUTLINED_FUNCTION_0_8();
  v1 = (*(v0 + 1952))();
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_81_0();
  v3 = *(v2 + 3452);
  v4 = OUTLINED_FUNCTION_172();
  v10 = v5(v4);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: LPAS config update needed with %d (%d): %s\n", v7, v8, v9, v3, v10);
}

uint64_t AppleBCMWLANCore::handleBcnLiBcnIoVarAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: cannot set beacon wake up time: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::handleMWSCoexIoVarAsyncCallBack(uint64_t a1, uint64_t a2, const char *a3)
{
  OUTLINED_FUNCTION_0_8();
  (*(v5 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v6 = OUTLINED_FUNCTION_172();
  v8 = v7(v6);
  return CCLogStream::logNoticeIf(v3, 0x4000000uLL, "[dk] %s@%d:Coex iovar set successfully - %s : %s\n", "handleMWSCoexIoVarAsyncCallBack", 12584, a3, v8);
}

uint64_t AppleBCMWLANCore::handleAutoCountryAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: cannot reset autocountry : %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::handleGetCountryCodeAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot get current country code from FW : %s, ivars->fCurrentFWCountryCode: %s\n", "handleGetCountryCodeAsyncCallBack", 12723, v5, (*(v0 + 72) + 6744));
}

uint64_t AppleBCMWLANCore::handleExcessPMPeriodAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: cannot set excess_pm_period: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::handleExcessPMPercentAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: cannot set excess_pm_period: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::handleGetPowerSaveModeAsyncCallBack()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logInfo(v2, "Power Save = %d\n", **v0);
}

uint64_t AppleBCMWLANCore::handleCollectBeaconRxCountersAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: cannot get Beacon Rx Counters: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_126();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:BCN_OFLD_DUR=%d RX_BCN_CNT=%d MISSED_BCN_CNT=%d\n", "handleCollectBeaconRxCountersAsyncCallBack", 12771, v3, v4, v5);
}

uint64_t AppleBCMWLANCore::updateTrafficInactivityScanCoreBeaconStats()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_126();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Exit: BCN_OFLD_DUR= %d EXPECTED= %d MISSED_BCN_CNT= %d\n", "updateTrafficInactivityScanCoreBeaconStats", 13444, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logCrit(v3, "[dk] %s@%d:Overflow detected in adding LPSC beacon stats\n", "updateTrafficInactivityScanCoreBeaconStats", 13453);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateBeaconOffloadStatsReport()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logInfo(v2, "[dk] %s@%d:Beacon Offload Stats: SessionDur %lld, OffloadDur %lld, BcnRxCount %d BcnMissedCnt %d, OffloadEnterCount %d, OffloadRejectCount %d \n", "updateBeaconOffloadStatsReport", 43444, *(*v0 + 19008), *(*v0 + 19016), *(*v0 + 19024), *(*v0 + 19028), *(*v0 + 19032), *(*v0 + 19036));
}

uint64_t AppleBCMWLANCore::sendBeaconOffloadStatsEventCoreAnalytics()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyOffldEnterCount\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43497);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueOffloadEnterCount\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43493);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyOffldEnterCount\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43491);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueBcnMissedCount\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43487);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyBcnMissedCount\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43485);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueBcnRxCount\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43481);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyBcnRxCount\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43479);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyOffloadDur\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43473);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueSessionDur\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43469);
}

{
  OUTLINED_FUNCTION_35_1();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keySessionDur\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43467);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_35_1();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43463);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_35_1();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventName\n", "sendBeaconOffloadStatsEventCoreAnalytics", 43461);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::deleteEapolFilterAsyncCallBack()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: WoWEapolFilter is deleted\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::handleResetLinkParamsAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: cannot Reset Linkup : %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::handleBusWakeReasonSyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: bus:wakeup_data failed, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  v3 = *v0;
  v4 = convertEventToString(v3, 0, 0);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Wake up event packet received event_type: 0x%x %s \n", "handleBusWakeReasonSyncCallBack", 12963, v3, v4);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Wake up dongle dump event received\n", "handleBusWakeReasonSyncCallBack", 12946);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Wake up packet received: Data\n", "handleBusWakeReasonSyncCallBack", 12912);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d: Wake up event received, but failed to parse\n", "handleBusWakeReasonSyncCallBack", 12985);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_16_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      OUTLINED_FUNCTION_12_3();
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Rx payload buffer is too small (%d bytes) to contain cached wake up data \n", "handleBusWakeReasonSyncCallBack", 12890, v4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(uint64_t a1, uint64_t a2, _DWORD *a3, int a4)
{
  OUTLINED_FUNCTION_29_5();
  result = (*(v7 + 1952))();
  if (result)
  {
    (*(*v4 + 1952))(v4);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v9 = (*(*v4 + 1952))(v4);
      return CCLogStream::logAlert(v9, "[dk] %s@%d:remainingBufferLength %u is too small to contain data length %u\n", "handleBusWakeReasonSyncCallBack", 12968, a4, *a3);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleBusWakeReasonSyncCallBack(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_41_2();
  result = (*(v5 + 1952))();
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      return CCLogStream::logAlert(v7, "[dk] %s@%d:Firmware event buffer remaining length %u is too small to contain wl_event_msg_t size %zu\n", "handleBusWakeReasonSyncCallBack", 12957, a3, 0x30uLL);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_41_2();
  result = (*(v5 + 1952))();
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      return CCLogStream::logAlert(v7, "[dk] %s@%d:Firmware event buffer remaining length %u is too small to contain bcmeth_hdr_t size %zu\n", "handleBusWakeReasonSyncCallBack", 12935, a3, 0xAuLL);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_41_2();
  result = (*(v5 + 1952))();
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      return CCLogStream::logAlert(v7, "[dk] %s@%d:Firmware event buffer remaining length %u is too small to contain bcm_event_t size %zu\n", "handleBusWakeReasonSyncCallBack", 12929, a3, 0x48uLL);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_41_2();
  result = (*(v5 + 1952))();
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      return CCLogStream::logAlert(v7, "[dk] %s@%d:Data offset %u is larger than remaining buffer length %u\n", "handleBusWakeReasonSyncCallBack", 12915, 16, a3);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_41_2();
  result = (*(v5 + 1952))();
  if (result)
  {
    (*(*v3 + 1952))(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*v3 + 1952))(v3);
      return CCLogStream::logAlert(v7, "[dk] %s@%d:Cached FW wakeup data length %u is too small to contain a BCOMIPCHeader size %lu\n", "handleBusWakeReasonSyncCallBack", 12907, a3, 8);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::linkChangeEvent()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d: LinkDown: Stopping link activity timer\n", "linkChangeEvent", 13066);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNoticeIf(v1, 0x20uLL, "[dk] %s@%d: LinkUp: Starting link activity timer\n", "linkChangeEvent", 13034);
}

uint64_t AppleBCMWLANCore::setupTrafficMonitoring()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:RT/NRT traffic notification not created yet\n", "setupTrafficMonitoring", 58450);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Failed to create RT/NRT traffic notification\n", "setupTrafficMonitoring", 58432);
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    OUTLINED_FUNCTION_258();
    (*(v3 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_258();
      v5 = (*(v4 + 1952))(v0);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to get RT/NRT traffic monitor\n", "setupTrafficMonitoring", 58412);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    OUTLINED_FUNCTION_258();
    (*(v3 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_258();
      v5 = (*(v4 + 1952))(v0);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to get workloop\n", "setupTrafficMonitoring", 58411);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleIPv6AddressNotificationGated()
{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  my_ip6_sprintf((*v1 + 16 * v0 + 9524));
  OUTLINED_FUNCTION_6();
  return CCLogStream::logNoticeIf(v3, 0x100uLL, "[dk] %s@%d:IPv6  addresses Configured %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::handlGetPMDurationAsyncCallback()
{
  OUTLINED_FUNCTION_36_1();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      OUTLINED_FUNCTION_52_0();
      v4 = OUTLINED_FUNCTION_130();
      v5(v4);
      OUTLINED_FUNCTION_6();
      return CCLogStream::logCrit(v1, "[dk] %s@%d: pm_dur failed, error %s\n", v6, v7, v8);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logCrit(v3, "[dk] %s@%d:Over flow detected in adding delta value to ivars->fInactivityMpcSleepDuration\n", "handlGetPMDurationAsyncCallback", 13369);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_116();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:ASync enter MPC duration - last: %d\n", "handlGetPMDurationAsyncCallback", 13360, v3);
}

uint64_t AppleBCMWLANCore::updateTrafficInactivityBeaconStats()
{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logCrit(v3, "[dk] %s@%d:Overflow detected in adding MPC beacon stats\n", "updateTrafficInactivityBeaconStats", 13425);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to create aligned infraSpecificStats data\n", "updateTrafficInactivityBeaconStats", 13395);
}

uint64_t AppleBCMWLANCore::setTrafficInactivityStats()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:enter %llu\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_41_2();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      OUTLINED_FUNCTION_162();
      v4 = OUTLINED_FUNCTION_130();
      v5(v4);
      OUTLINED_FUNCTION_6();
      return CCLogStream::logCrit(v3, "[dk] %s@%d: pm_dur failed, error %s\n", v6, v7, v8);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logCrit(v3, "[dk] %s@%d:Overflow detected in adding delta stats to ivars->fInactivityMpcSleepDuration\n", "setTrafficInactivityStats", 13510);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_116();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Sync enter MPC duration - last: %d\n", "setTrafficInactivityStats", 13500, v3);
}

{
  OUTLINED_FUNCTION_41_2();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      OUTLINED_FUNCTION_162();
      v4 = OUTLINED_FUNCTION_130();
      v5(v4);
      OUTLINED_FUNCTION_6();
      return CCLogStream::logCrit(v3, "[dk] %s@%d: pm_dur failed, error %s\n", v6, v7, v8);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::getChipIfCounters()
{
  OUTLINED_FUNCTION_36_1();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      OUTLINED_FUNCTION_52_0();
      v4 = OUTLINED_FUNCTION_130();
      v5(v4);
      OUTLINED_FUNCTION_6();
      return CCLogStream::logAlert(v1, "[dk] %s@%d:getChipIfCounters failed getting soft AP if_counters reason: %s\n", v6, v7, v8);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_36_1();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      OUTLINED_FUNCTION_52_0();
      v4 = OUTLINED_FUNCTION_130();
      v5(v4);
      OUTLINED_FUNCTION_6();
      return CCLogStream::logAlert(v1, "[dk] %s@%d:getChipIfCounters failed reason: %s\n", v6, v7, v8);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::collectBeaconRxCounters()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_126();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:BCN_OFLD_DUR=%d RX_BCN_CNT=%d MISSED_BCN_CNT=%d\n", "collectBeaconRxCounters", 43570, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::validateBrcmExtChIE()
{
  OUTLINED_FUNCTION_16_5();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logEmergency(v4, "[dk] %s@%d:Malformed IE, bss_info is invalid in Extentded Channel IE\n", "validateBrcmExtChIE", 14138);
    }
  }

  *v0 = 0;
  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Found wl_bss_info_t\n", "validateBrcmExtChIE", 14139);
}

{
  OUTLINED_FUNCTION_16_5();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Invalid argument\n", "validateBrcmExtChIE", 14120);
    }
  }

  *v0 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::getRoamNoNetworkReason()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "getRoamNoNetworkReason", 14168);
}

uint64_t AppleBCMWLANCore::handleExtendedEventData()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logEmergency(v2, "[dk] %s@%d:Malformed event message does not have enough space for another IE\n", "handleExtendedEventData", v0);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleExtendedEventData", 14308);
}

void AppleBCMWLANCore::updateSlowWifiRxAmpduStats()
{
  OUTLINED_FUNCTION_16_5();
  if ((*(v1 + 1952))())
  {
    (*(*v0 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      v2 = (*(*v0 + 1952))(v0);
      CCLogStream::logAlert(v2, "[dk] %s@%d:alignment fails\n", "updateSlowWifiRxAmpduStats", 14468);
    }
  }

  OUTLINED_FUNCTION_2();
}

uint64_t AppleBCMWLANCore::handleDongleEventPacket()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unsupported Dongle Event Message Version (%d)\n", "handleDongleEventPacket", 14567, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s %d Length check failed with reasonCode %d", "handleDongleEventPacket", 14767, "handleDongleEventPacket", 14767, v0);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:RX DMA STALL - wrong bcm_xtlv length %u\n", "handleDongleEventPacket", 14720, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_126();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:RX DMA STALL - entity=%d timeout=%u stalled_dma_bitmap=%u\n", "handleDongleEventPacket", 14727, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:RX DMA STALL - Buffer overflow rx_dma_hc_info\n", "handleDongleEventPacket", 14724);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:RX DMA STALL - Buffer overflow bcm_xtlv\n", "handleDongleEventPacket", 14718);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_126();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:RX DMA STALL - entity=%d timeout=%u stalled_dma_bitmap=%u\n", "handleDongleEventPacket", 14737, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:RX DMA STALL - Buffer overflow rx_dma_hc_info\n", "handleDongleEventPacket", 14734);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Buffer overflow\n", "handleDongleEventPacket", 14706);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Buffer overflow\n", "handleDongleEventPacket", 14664);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Buffer overflow\n", "handleDongleEventPacket", 14653);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Buffer overflow\n", "handleDongleEventPacket", 14641);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Buffer overflow\n", "handleDongleEventPacket", 14632);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Buffer overflow\n", "handleDongleEventPacket", 14620);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:SPMI reset ind dongle event core#0[%u] core#1[%u]\n", "handleDongleEventPacket", 14586, *(*v0 + 35648), *(*v0 + 35652));
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid SPMI reset indication message length\n", "handleDongleEventPacket", 14576);
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Unexpected Dongle Event Type (%04x) Event Length (%hu)\n", "handleDongleEventPacket", 14591, bswap32(*v1) >> 16, bswap32(*v0) >> 16);
}

uint64_t AppleBCMWLANCore::validateRxDMAStall()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:validateRxDMAStall: no fBusSkywalk", "validateRxDMAStall", 14851);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:validateRxDMAStall: no fProvider", "validateRxDMAStall", 14854);
}

uint64_t AppleBCMWLANCore::handleRxStallReasons()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Buffer overflow detected\n", "operator()", 14873);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Processed RX Stall V2\n", "handleRxStallReasons", 14896);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Processed RX Stall V3\n", "handleRxStallReasons", 14892);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Processed RX Stall V4\n", "handleRxStallReasons", 14888);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Invalid hc data %d %zu %zu \n", "handleRxStallReasons", 14945, *v0, 0x20uLL, 0x28uLL);
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:HC currentTime %llu is less than resetTime %llu\n", "handleRxStallReasons", 14974, v0, *(*v1 + 14288));
}

uint64_t AppleBCMWLANCore::checkActionFrameCompleteOverdue()
{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Found action frame completion overdue start=%llu(ms) now=%llu(ms)\n", "checkActionFrameCompleteOverdue", 15121, *(*v1 + 17536), *v0);
}

uint64_t AppleBCMWLANCore::getTransDisabledFlags()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Transition mode disabled 0x%x\n", "getTransDisabledFlags", 15138, v3);
}

{
  OUTLINED_FUNCTION_16_5();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Invalid argument\n", "getTransDisabledFlags", 15133);
    }
  }

  *v0 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::updateTransitionDisabledInfo()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "updateTransitionDisabledInfo", 15162);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: ERROR: invalid Length\n", "updateTransitionDisabledInfo", 15154);
}

uint64_t AppleBCMWLANCore::handleScanEvent()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Incorrect scan add version %d\n", "handleScanEvent", 22423, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ERROR: Channels in scan list %d > max %d\n", "handleScanEvent", 22393, v0, 400);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Could not materialize the Scan event from FW\n", "handleScanEvent", 22377);
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ERROR: Channels in scan list %d > max %d\n", "handleScanEvent", 22347, *v0 + *v1, 400);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Event Payload incorrect: datalen = %d\n", "handleScanEvent", 22335, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Invalid event data length %d \n", "handleScanEvent", 22234, v3);
}

uint64_t AppleBCMWLANCore::handleCCAChanQualEvent(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_19_6();
  result = (*(v6 + 1952))();
  if (result)
  {
    (*(*v4 + 1952))(v4);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v4 + 1952))(v4);
      OUTLINED_FUNCTION_215();
      return CCLogStream::logEmergency(v8, "[dk] %s@%d: Overflow detected: cca_busy.congest[%u], cca_busy_ext.congest_ibss[%u], cca_busy_ext.congest_obss[%u], cca_busy_ext.interference[%u]\n", "handleCCAChanQualEvent", 24387, v9, v9, v10, *a4);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_19_6();
  result = (*(v6 + 1952))();
  if (result)
  {
    (*(*v4 + 1952))(v4);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v4 + 1952))(v4);
      OUTLINED_FUNCTION_215();
      return CCLogStream::logEmergency(v8, "[dk] %s@%d: Overflow detected: cca_busy.congest[%u], cca_busy_ext.congest_ibss[%u], cca_busy_ext.congest_obss[%u], cca_busy_ext.interference[%u]\n", "handleCCAChanQualEvent", 24342, v9, v9, v10, *a4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleCCAChanQualEvent()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:handleCCAChanQualEvent: %d CCA busy zero duration\n", "handleCCAChanQualEvent", 24334, 24334);
}

{
  OUTLINED_FUNCTION_49_0();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logEmergency(v3, "[dk] %s@%d:fInfraSkywalkInterface->setInterfaceNF failed\n", "handleCCAChanQualEvent", 24313);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_16_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      OUTLINED_FUNCTION_15_4();
      return CCLogStream::logEmergency(v3, "[dk] %s@%d: Overflow detected: cca_busy.congest[%u]\n", "handleCCAChanQualEvent", 24267, v4);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:handleCCAChanQualEvent: %d zero CCA busy duration\n", "handleCCAChanQualEvent", 24260, 24260);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:handleCCAChanQualEvent: Invalid wle message,unknown message ID=%u\n", "handleCCAChanQualEvent", 24233, *(v0 + 2));
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_199();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:handleCCAChanQualEvent: Invalid wle message length=%u, too small to hold event length=%u\n", "handleCCAChanQualEvent", 24210, v3, v4);
}

uint64_t AppleBCMWLANCore::handleTxStatusErrEvent()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:handleTxStatusErrEvent: PHY TX Error event from FW: 0x%x\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::handleWeightAvgLQMEvent()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Not associated, will drop\n", "handleWeightAvgLQMEvent", 23179);
}

{
  OUTLINED_FUNCTION_35_1();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:event_weight_avg_lqm alignment failure\n", "handleWeightAvgLQMEvent", 23232);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unsupported Weighted Average Event Version = %d\n", "handleWeightAvgLQMEvent", 23245, v3);
}

{
  OUTLINED_FUNCTION_35_1();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:sub_event_ptr alignment failure\n", "handleWeightAvgLQMEvent", 23252);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unsupported Weighted Average LQM event subtype = %d\n", "handleWeightAvgLQMEvent", 23260, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Wrong event length(WL_EVENT_WA_LQM_BASIC) = %d\n", "handleWeightAvgLQMEvent", 23265, v3);
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1952))(v2);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Invalid event_weight_avg_lqm->len = %d, exceeds %u\n", "handleWeightAvgLQMEvent", 23242, *v1, *v0);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_16_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      OUTLINED_FUNCTION_12_3();
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid event_weight_avg_lqm->len = %d\n", "handleWeightAvgLQMEvent", 23239, v4);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_16_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      OUTLINED_FUNCTION_15_4();
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid WLE size[%d]\n", "handleWeightAvgLQMEvent", 23229, v4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleDynSAREvent()
{
  OUTLINED_FUNCTION_35_1();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Alignment failure, event_dynsar\n", "handleDynSAREvent", 23308);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_16_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      OUTLINED_FUNCTION_15_4();
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid wle->datalen = %d\n", "handleDynSAREvent", 23309, v4);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_16_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      OUTLINED_FUNCTION_12_3();
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid event_dynsar->length = %d\n", "handleDynSAREvent", 23310, v4);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_16_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      OUTLINED_FUNCTION_26_1();
      return CCLogStream::logAlert(v3, "[dk] %s@%d:DSA slice %d is out of range\n", "handleDynSAREvent", 23312, v4);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_16_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      OUTLINED_FUNCTION_12_3();
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Unsupported DynSAR event version = %d\n", "handleDynSAREvent", 23311, v4);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Memory allocation failure for dynSARDataPerSlice\n", "handleDynSAREvent", 23302);
}

uint64_t AppleBCMWLANCore::handleRangingEvent()
{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logNotice(v3, "[dk] %s@%d: proxd event: reason=%d type %s method 0x%x session %d\n", "handleRangingEvent", 23598, *(v1 + 12), v0, *(v1 + 54), *(v1 + 56));
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:insufficient remaining data length for wl_proxd_ftm_session_status_t\n", "handleRangingEvent", 24152);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: WL_PROXD_EVENT_BURST_END, TLV ID: 0x%x\n", "handleRangingEvent", 23643, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:insufficient remaining data length for wl_proxd_rtt_sample_v3_t\n", "handleRangingEvent", 23991);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_116();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Applying offset of %d.", "handleRangingEvent", 24007, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_116();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Applying offset of %d.", "handleRangingEvent", 24004, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Detected outlier but not discarding sample!\n", "handleRangingEvent", 24020);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:insufficient remaining data length for wl_proxd_rtt_sample_v3_t\n", "handleRangingEvent", 23985);
}

{
  OUTLINED_FUNCTION_34_3();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      OUTLINED_FUNCTION_15_4();
      return CCLogStream::logEmergency(v3, "[dk] %s@%d: Overflow detected: avg_dist[%d]\n", "handleRangingEvent", 23966, v4);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:insufficient remaining data length for wl_proxd_rtt_result_v3_t\n", "handleRangingEvent", 23945);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:insufficient remaining data length for wl_proxd_rtt_sample_v2_t\n", "handleRangingEvent", 23846);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_116();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Applying offset of %d.", "handleRangingEvent", 23867, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_116();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Applying offset of %d.", "handleRangingEvent", 23864, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Detected outlier but not discarding sample!\n", "handleRangingEvent", 23880);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:insufficient remaining data length for wl_proxd_rtt_sample_v2_t\n", "handleRangingEvent", 23840);
}

{
  OUTLINED_FUNCTION_34_3();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      OUTLINED_FUNCTION_15_4();
      return CCLogStream::logEmergency(v3, "[dk] %s@%d: Overflow detected: avg_dist[%d]\n", "handleRangingEvent", 23821, v4);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:insufficient remaining data length for wl_proxd_rtt_result_v2_t\n", "handleRangingEvent", 23793);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:insufficient remaining data length for wl_proxd_rtt_sample_v1_t\n", "handleRangingEvent", 23704);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_116();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Applying offset of %d.", "handleRangingEvent", 23720, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_116();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Applying offset of %d.", "handleRangingEvent", 23717, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Detected outlier but not discarding sample!\n", "handleRangingEvent", 23733);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:insufficient remaining data length for wl_proxd_rtt_sample_v1_t\n", "handleRangingEvent", 23698);
}

{
  OUTLINED_FUNCTION_34_3();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      OUTLINED_FUNCTION_15_4();
      return CCLogStream::logEmergency(v3, "[dk] %s@%d: Overflow detected: avg_dist[%d]\n", "handleRangingEvent", 23679, v4);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:insufficient remaining data length for wl_proxd_rtt_result_v1_t\n", "handleRangingEvent", 23658);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Filtered ranging samples based on RSSI, new count=%d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:insufficient remaining data length for wl_proxd_ftm_session_status_t\n", "handleRangingEvent", 24138);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:incorrect remaining data size for wl_proxd_collect_event_data_v%d_t\n", "handleRangingEvent", 23609, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: ERROR: Boundary condition detected\n", "handleRangingEvent", 23554);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:incorrect payload size for wl_proxd_event_t", "handleRangingEvent", 23548);
}

uint64_t AppleBCMWLANCore::handleRangingEvent(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  OUTLINED_FUNCTION_2_7();
  (*(v6 + 1952))();
  v22 = *(v4 + 99);
  v23 = *(v4 + 100);
  v20 = *(v4 + 102);
  v21 = *(v4 + 98);
  v18 = *(v4 + 81);
  v19 = *(v4 + 82);
  v16 = *(v4 + 79);
  v17 = *(v4 + 80);
  OUTLINED_FUNCTION_25_1();
  return CCLogStream::logNotice(v7, "[dk] %s@%d: Ranging result V3: session=%d, flags=0x%x, status=%d(%s), peer=%02X:%02X:%02X:%02X:%02X:%02X, state=%d,avg_dist=%d.%04dm,  num RTT samples=%d, valid=%d, num_ftm %d, burst_num  %d\n ", "handleRangingEvent", 23959, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, a4 >> 8, (625 * a4) >> 4, v20, v21, v22, v23);
}

uint64_t AppleBCMWLANCore::handleLinkEvent()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure Private MAC Address for Scans \n", "handleLinkEvent", 23045);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Link event not intended for STA or AWDL interface! Dropping!\n", "handleLinkEvent", 22977);
}

uint64_t AppleBCMWLANCore::handleRoamScanStartEvent()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Insufficient space, wle->datalen[%u] < %lu\n", "handleRoamScanStartEvent", 22101, *v0, 6);
}

{
  OUTLINED_FUNCTION_108();
  if (!(*(*v1 + 1952))(v1) || ((*(*v0 + 1952))(v0), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_37_1();
      OUTLINED_FUNCTION_15_0(&_mh_execute_header, &_os_log_default, v2, "%c [dk] %s@%d: Out-of-bound roam_xtlv pointer\n", v3, v4, v5, v6, v9, v10);
    }
  }

  result = (*(*v0 + 1952))(v0);
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v8, "[dk] %s@%d:Out-of-bound roam_xtlv pointer\n", "handleRoamScanStartEvent", 22145);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_108();
  if ((*(*v1 + 1952))(v1))
  {
    (*(*v0 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      v8 = (*(*v0 + 1952))(v0);
      CCLogStream::logAlert(v8, "[dk] %s@%d:Overflow detected while processing TLVs\n", "handleRoamScanStartEvent", 22160);
    }
  }

  if (!(*(*v0 + 1952))(v0) || ((*(*v0 + 1952))(v0), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_37_1();
      OUTLINED_FUNCTION_15_0(&_mh_execute_header, &_os_log_default, v2, "%c [dk] %s@%d: Integer overflow or limit exceeded while processing TLVs\n", v3, v4, v5, v6, v10, v11);
    }
  }

  result = (*(*v0 + 1952))(v0);
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v9 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v9, "[dk] %s@%d:Integer overflow or limit exceeded while processing TLVs\n", "handleRoamScanStartEvent", 22161);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleRoamScanStartEvent(uint64_t a1, unsigned __int16 a2)
{
  OUTLINED_FUNCTION_5_0();
  if (!(*(v4 + 1952))() || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109890;
      v8 = 65;
      v9 = 2080;
      v10 = "handleRoamScanStartEvent";
      v11 = 1024;
      v12 = 22139;
      v13 = 1024;
      v14 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Invalid xTLV total length: %u\n", buf, 0x1Eu);
    }
  }

  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*a1 + 1952))(a1);
      return CCLogStream::logAlert(v6, "[dk] %s@%d:Invalid xTLV total length: %u\n", "handleRoamScanStartEvent", 22139, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleRoamScanStartEvent(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0();
  if (!(*(v2 + 1952))() || ((*(*a1 + 1952))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_46_1();
      OUTLINED_FUNCTION_15_0(&_mh_execute_header, &_os_log_default, v3, "%c [dk] %s@%d: Invalid pRoamStartEv length for xTLV parsing\n", v4, v5, v6, v7, v10, v11);
    }
  }

  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v9 = (*(*a1 + 1952))(a1);
      return CCLogStream::logAlert(v9, "[dk] %s@%d:Invalid pRoamStartEv length for xTLV parsing\n", "handleRoamScanStartEvent", 22137);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleRoamEvent()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:LQM-WiFi-Roam: Fail to dump roam target evaluation\n", "handleRoamEvent", 22496);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Using simulated roam status substate\n", "handleRoamEvent", 22546);
}

uint64_t AppleBCMWLANCore::handleRoamPrepEvent()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_199();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Insufficent space, wle->datalen[%u] < %zu\n", "handleRoamPrepEvent", 22017, v3, v4);
}

uint64_t AppleBCMWLANCore::handleMICErrorEvent()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logWarn(v1, "[dk] %s@%d: %s MIC Error\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::handleCountryCodeChangedEvent()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_198();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiCC : Country code changed from %s to %s\n", "handleCountryCodeChangedEvent", 21838, v3, v4);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_139();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiCC : Querying FW; old country queried was: %s\n", "handleCountryCodeChangedEvent", 21844, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_139();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:WiFiCC : Skip querying FW; old country queried for chan list was: %s \n", "handleCountryCodeChangedEvent", 21849, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:Handling country code change event failed - payload insufficient for CC (length %d)\n", "handleCountryCodeChangedEvent", 21829, v3);
}

uint64_t AppleBCMWLANCore::handleICVErrorEvent()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logWarn(v1, "[dk] %s@%d: Decryption Failure\n", "handleICVErrorEvent", 21732);
}

uint64_t AppleBCMWLANCore::handlePSKEvent()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Insufficent space, wle->datalen[%u] < %zu\n", "handlePSKEvent", 21692, *v0, 0x1EuLL);
}

uint64_t AppleBCMWLANCore::handlePruneEvent()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logNotice(v2, "[dk] %s@%d: PRUNE event %lu\n", "handlePruneEvent", 21635, *(v0 + 4));
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  v4 = *(v0 + 8);
  v3 = *(v0 + 12);
  v5 = stringFromReason(*(v0 + 4), *(v0 + 12));
  return CCLogStream::logNotice(v2, "    status = %lu, reason = %lu %s, flags = 0x%x, authtype = %lu, addr = %02x:%02x:%02x:%02x:%02x:%02x\n", v4, v3, v5, *(v0 + 2), *(v0 + 16), *(v0 + 24), *(v0 + 25), *(v0 + 26), *(v0 + 27), *(v0 + 28), *(v0 + 29));
}

uint64_t AppleBCMWLANCore::handlePSMWatchdog()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Default ucode lockup.\n", "handlePSMWatchdog", 21628);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Debug PSMl Watchdog event.\n", "handlePSMWatchdog", 21626);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Detect WCI2 hang!\n", "handlePSMWatchdog", 21624);
}

uint64_t AppleBCMWLANCore::handlePMAlertEvent()
{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: cannot set excess_pm_period to 0 : ret %x: %s  -> got WLC_E_PM_ALERT\n", "handlePMAlertEvent", 22910, v0, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v3 = OUTLINED_FUNCTION_16_2();
  v5 = v4(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: cannot set excess_pm_percent to 0 : ret %x: %s  -> got WLC_E_PM_ALERT\n", "handlePMAlertEvent", 22922, v0, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "Failed to get Current Power Save Mode\n");
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Received PM ALERT Event in Un-Associated Sleep Mode\n", "handlePMAlertEvent", 22953);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Send BLACKLIST_NETWORK\n", "handlePMAlertEvent", 22947);
}

uint64_t AppleBCMWLANCore::handleTraceEvent()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: [unsupported version --> dhd version:%d dongle version:%d]\n", "handleTraceEvent", 21569, 1, v0);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to allocate eventHeaderAndPayload\n", "handleTraceEvent", 21590);
}

{
  OUTLINED_FUNCTION_35_1();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logCrit(v3, "[dk] %s@%d:Event message buffer underflow\n", "handleTraceEvent", 21564);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::csaReceived()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:CSA received while device not yet Associated, Bail out\n", "csaReceived", 15861);
}

uint64_t AppleBCMWLANCore::handleWSECEvent()
{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  v4 = "disabled";
  if (*v1)
  {
    v5 = "enabled";
  }

  else
  {
    v5 = "disabled";
  }

  if (*v0)
  {
    v4 = "enabled";
  }

  return CCLogStream::logAlert(v3, "[dk] %s@%d: handleWSECEvent: Re-assoc %s, Dis-assoc %s\n", "handleWSECEvent", 24604, v5, v4);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: handleWSECEvent: Invalid WSEC event, unknown type[%u]\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Allocation failure for return WSEC notification\n", "handleWSECEvent", 24649);
}

{
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_29_5();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d: handleWSECEvent: Invalid message length[%u] < %u\n", "handleWSECEvent", 24646, *v1, 44);
    }
  }

  *v0 = "WLC_WSEC_EVENT_PTK_PN_SYNC_ERROR";
  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: handleWSECEvent: Invalid wle message length=%u, too small to hold event length=%u\n", "handleWSECEvent", 24587, *v0, 6);
}

uint64_t AppleBCMWLANCore::handleSCChanQualEvent()
{
  OUTLINED_FUNCTION_35_1();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Alignment failure, event_chanim_sc_stats\n", "handleSCChanQualEvent", 24769);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_16_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      OUTLINED_FUNCTION_15_4();
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Unsupported SC_CHANIM_STATS event Version = %d\n", "handleSCChanQualEvent", 24770, v4);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_16_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      OUTLINED_FUNCTION_26_1();
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid event_chanim_sc_stats->id = %d\n", "handleSCChanQualEvent", 24772, v4);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_16_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      OUTLINED_FUNCTION_26_1();
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Per channel event channle count = %d, not 1\n", "handleSCChanQualEvent", 24773, v4);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:|| [Channel: %-3d] ===========================================================================\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:|| [Summary] --------------------------------------------------------------------------------\n", "handleSCChanQualEvent", 24856);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||   Tx Blanking                                    |                       | %-12s ||\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||   Tx Blanking Reason                             |                       | %-12s ||\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||   Tx Blanking Thresh Perc                        |                       | %-12u ||\n", "handleSCChanQualEvent", 24859, 25);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||   Tx Blanking Perc                               |                       | %-12u ||\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||   Duration on SC                                 | sc_only_rx_dur        | %-12u ||\n", "handleSCChanQualEvent", 24861, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||   Duration total                                 | time_dur              | %-12u ||\n", "handleSCChanQualEvent", 24862, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||   Timestamp                                      | timestamp             | %-12u ||\n", "handleSCChanQualEvent", 24863, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:|| [Details] --------------------------------------------------------------------------------\n", "handleSCChanQualEvent", 24864);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||   Rx only on SC                                  | sc_only_rx_dur        | %-12u ||\n", "handleSCChanQualEvent", 24865, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||   Rx on SC when MC active                        | sc_rx_mc_rx_dur       | %-12u ||\n", "handleSCChanQualEvent", 24866, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||   Rx on SC when AC active                        | sc_rx_ac_rx_dur       | %-12u ||\n", "handleSCChanQualEvent", 24867, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||   Rx on SC when BT Main active                   | sc_rx_bt_rx_dur       | %-12u ||\n", "handleSCChanQualEvent", 24868, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||   Rx on SC when MC Tx                            | sc_rx_mc_tx_dur       | %-12u ||\n", "handleSCChanQualEvent", 24869, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||   Rx on SC when AC-BT Tx                         | sc_rx_ac_bt_tx_dur    | %-12u ||\n", "handleSCChanQualEvent", 24870, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logInfo(v2, "[dk] %s@%d:||   BT Rx transitions                              | sc_btrx_trans_cnt     | %-12u ||\n", "handleSCChanQualEvent", 24872, *(v0 + 6));
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||   WLAN SC awake and BT SC LE scan overlapped     | sc_btle_overlap_dur   | %-12u ||\n", "handleSCChanQualEvent", 24873, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||   WLAN SC awake and BT SC Page scan overlapped   | sc_btpage_overlap_dur | %-12u ||\n", "handleSCChanQualEvent", 24874, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||   WLAN Aux Tx blanked BT SC LE scan              | ac_btle_blnk_dur      | %-12u ||\n", "handleSCChanQualEvent", 24875, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||   WLAN Aux Tx blanked BT SC Page scan            | ac_btpage_blnk_dur    | %-12u ||\n", "handleSCChanQualEvent", 24876, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||   WLAN Aux awake and BT SC LE scan overlapped    | ac_btle_overlap_dur   | %-12u ||\n", "handleSCChanQualEvent", 24877, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:||   WLAN Aux awake and BT SC Page scan overlapped  | ac_btpage_overlap_dur | %-12u ||\n", "handleSCChanQualEvent", 24878, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Allocation failure\n", "handleSCChanQualEvent", 24764);
}

uint64_t AppleBCMWLANCore::handleSCChanQualEvent(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_5_0();
  result = (*(v6 + 1952))();
  if (result)
  {
    (*(*v4 + 1952))(v4);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*v4 + 1952))(v4);
      return CCLogStream::logAlert(v8, "[dk] %s@%d:Invalid event_chanim_sc_stats->length = %d, expected len = %d\n", "handleSCChanQualEvent", 24771, *v3, a3);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleUlOfdmaDisableEvent()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WLC_E_ULMU_DISABLED_REASON_UPD: Invalid version number %u for the event\n", "handleUlOfdmaDisableEvent", 23514, v3);
}

uint64_t AppleBCMWLANCore::handleObssDetectEvent()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:OBSS Detection Event: Available channel spec = 0x%x\n", "handleObssDetectEvent", 23504, v3);
}

uint64_t AppleBCMWLANCore::setBeaconListenInterval()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Associated Sleep issued not setting beaocn intervals for active mode\n", "setBeaconListenInterval", 15895);
}

uint64_t AppleBCMWLANCore::parseEventLogRecordAMPDU()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unhandled %d mapping for report->encodingRate\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unhandled %d mapping for report->trafficDirection\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unhandled %d mapping for report->ampduStatType\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to setAMPDUstat\n", "parseEventLogRecordAMPDU", 16325);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Invalid length %u\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_5_5();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logEmergency(v3, "[dk] %s@%d:Insufficient Length for Density Distribution len %d, aggregationDens->len %d\n", "parseEventLogRecordAMPDU", 16296, v1, *(v0 + 2));
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Processing of tag %d failed\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v2 + 1952))();
  v3 = OUTLINED_FUNCTION_86();
  Length = OSData::getLength(v3);
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Failed to allocate report buffer with size %lu for tag %d\n", "parseEventLogRecordAMPDU", 15954, Length + 272, v0);
}

uint64_t AppleBCMWLANCore::parseEventLogRecordAMPDU(uint64_t a1, unint64_t *a2, _DWORD *a3)
{
  v6 = a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*a1 + 1952))(a1);
      result = CCLogStream::logEmergency(v8, "[dk] %s@%d:ampdu_stats_type_int larger than max known WL_AMPDU_STATS_TYPE_MLO_LINK_INFO\n", "parseEventLogRecordAMPDU", 15958);
    }
  }

  *a3 = -536870212;
  *a2 = v6;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordWLCounters()
{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to convertWlCntToApple80211ChipStats\n", "parseEventLogRecordWLCounters", 16352);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to updateInfraStatistics\n", "parseEventLogRecordWLCounters", 16355);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_0_25();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to setChipCounterStats\n", "parseEventLogRecordWLCounters", 16361);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::convertWlCntToApple80211ChipStats()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to create aligned wl_cnt_t data\n", "convertWlCntToApple80211ChipStats", 28478);
}

uint64_t AppleBCMWLANCore::setHeStats()
{
  OUTLINED_FUNCTION_2_18();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      v5 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v5);
      result = CCLogStream::logEmergency(v1, "[dk] %s@%d:invalid payload length %lu expect one of size(%lu,%lu,%lu)\n", "setHeStats", 16398, Length, 200, 220, 224);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_0_25();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to setExtendedChipCounterStats\n", "setHeStats", 16528);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::setOmiStats()
{
  OUTLINED_FUNCTION_0_25();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to setExtendedChipCounterStats\n", "setOmiStats", 16592);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV2()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to create aligned wl_ctl_mgt_cnt_t data\n", "parseEventLogRecordBTCoexStatsV2", 16625);
}

{
  OUTLINED_FUNCTION_0_25();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to setBTCoexstat\n", "parseEventLogRecordBTCoexStatsV2", 16661);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_22_4();
  result = (*(v3 + 1952))();
  if (result)
  {
    OUTLINED_FUNCTION_89_0();
    (*(v5 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_89_0();
      (*(v6 + 1952))(v1);
      v7 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v7);
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid payload size[%u], expected >= %zu\n", "parseEventLogRecordBTCoexStatsV2", 16619, Length, 0x24uLL);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV3()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to create aligned wl_ctl_mgt_cnt_t data\n", "parseEventLogRecordBTCoexStatsV3", 16736);
}

{
  OUTLINED_FUNCTION_0_25();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to setBTCoexstat\n", "parseEventLogRecordBTCoexStatsV3", 16772);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_22_4();
  result = (*(v3 + 1952))();
  if (result)
  {
    OUTLINED_FUNCTION_89_0();
    (*(v5 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_89_0();
      (*(v6 + 1952))(v1);
      v7 = OUTLINED_FUNCTION_86();
      OSData::getLength(v7);
      OUTLINED_FUNCTION_241();
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid payload size[%u], expected >= %zu\n", "parseEventLogRecordBTCoexStatsV3", 16730, v8, v9);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV4()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to create aligned wl_ctl_mgt_cnt_t data\n", "parseEventLogRecordBTCoexStatsV4", 16847);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s::%s[%u] Unknown status bit in report.btStatusUsed %x\n", "parseEventLogRecordBTCoexStatsV4", 16878, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", "parseEventLogRecordBTCoexStatsV4", 16878, v0);
}

{
  OUTLINED_FUNCTION_22_4();
  result = (*(v3 + 1952))();
  if (result)
  {
    OUTLINED_FUNCTION_89_0();
    (*(v5 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_89_0();
      (*(v6 + 1952))(v1);
      v7 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v7);
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid payload size[%u], expected >= %zu\n", "parseEventLogRecordBTCoexStatsV4", 16841, Length, 0x5CuLL);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV6()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to create aligned wlc_btc_stats_v6_t data\n", "parseEventLogRecordBTCoexStatsV6", 16929);
}

{
  OUTLINED_FUNCTION_0_25();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to setBTCoexstat\n", "parseEventLogRecordBTCoexStatsV6", 16964);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_22_4();
  result = (*(v3 + 1952))();
  if (result)
  {
    OUTLINED_FUNCTION_89_0();
    (*(v5 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_89_0();
      (*(v6 + 1952))(v1);
      v7 = OUTLINED_FUNCTION_86();
      OSData::getLength(v7);
      OUTLINED_FUNCTION_241();
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid payload size[%u], expected >= %zu\n", "parseEventLogRecordBTCoexStatsV6", 16923, v8, v9);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV7()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to create aligned wlc_btc_stats_v7_t data\n", "parseEventLogRecordBTCoexStatsV7", 17059);
}

{
  OUTLINED_FUNCTION_0_25();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to setBTCoexstat\n", "parseEventLogRecordBTCoexStatsV7", 17094);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_22_4();
  result = (*(v3 + 1952))();
  if (result)
  {
    OUTLINED_FUNCTION_89_0();
    (*(v5 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_89_0();
      (*(v6 + 1952))(v1);
      v7 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v7);
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid payload size[%u], expected >= %zu\n", "parseEventLogRecordBTCoexStatsV7", 17053, Length, 0x48uLL);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV11()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to create aligned wlc_btc_stats_v11_t data\n", "parseEventLogRecordBTCoexStatsV11", 17200);
}

{
  OUTLINED_FUNCTION_0_25();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to setBTCoexstat\n", "parseEventLogRecordBTCoexStatsV11", 17240);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_22_4();
  result = (*(v3 + 1952))();
  if (result)
  {
    OUTLINED_FUNCTION_89_0();
    (*(v5 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_89_0();
      (*(v6 + 1952))(v1);
      v7 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v7);
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid payload size[%u], expected >= %zu\n", "parseEventLogRecordBTCoexStatsV11", 17194, Length, 0x58uLL);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV12()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to create aligned wlc_btc_stats_v12_t data\n", "parseEventLogRecordBTCoexStatsV12", 17393);
}

{
  OUTLINED_FUNCTION_0_25();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to setBTCoexstat\n", "parseEventLogRecordBTCoexStatsV12", 17439);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_2_18();
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d: parseEventLogRecordBTCoexStatsV12: Invalid btc slice_index [%u] \n", "parseEventLogRecordBTCoexStatsV12", 17407, *v1);
    }
  }

  *v0 = v3;
  return result;
}

{
  OUTLINED_FUNCTION_22_4();
  result = (*(v3 + 1952))();
  if (result)
  {
    OUTLINED_FUNCTION_89_0();
    (*(v5 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_89_0();
      (*(v6 + 1952))(v1);
      v7 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v7);
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid payload size[%u], expected >= %zu\n", "parseEventLogRecordBTCoexStatsV12", 17387, Length, 0x70uLL);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsV9()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to create aligned wlc_btc_stats_v9_t data\n", "parseEventLogRecordBTCoexStatsV9", 17662);
}

{
  OUTLINED_FUNCTION_0_25();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to setBTCoexstat\n", "parseEventLogRecordBTCoexStatsV9", 17702);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_22_4();
  result = (*(v3 + 1952))();
  if (result)
  {
    OUTLINED_FUNCTION_89_0();
    (*(v5 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_89_0();
      (*(v6 + 1952))(v1);
      v7 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v7);
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid payload size[%u], expected >= %zu\n", "parseEventLogRecordBTCoexStatsV9", 17656, Length, 0x4CuLL);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogScan()
{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ScanSummary size mismatch, have %d, expected %ld\n", "parseEventLogScan", 17974, Length, 64);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:SCAN_SUMMARY (SC_TX_BLANK): NO blanking. But retry might still happen if Infra channel was scanned \n", "parseEventLogScan", 18042);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:SCAN_SUMMARY (SC_TX_BLANK): Tx blanking less than retry thresh. But retry might still happen if Infra channel was scanned \n", "parseEventLogScan", 18040);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:SCAN_SUMMARY (SC_TX_BLANK): Tx blanking over retry thresh. Retry will happen if configured \n", "parseEventLogScan", 18038);
}

{
  OUTLINED_FUNCTION_24_6();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_211();
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Error parsing reportScanModeStatsSinceLinkUp for slice %d\n", v6, v7, v8);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_24_6();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_168();
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Error parsing reportScanModeStatsSinceLinkUp for slice %d\n", "parseEventLogScan", 18060, v6);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_24_6();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_239();
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Error parsing reportScanModeStatsSinceLinkUp for slice %d\n", "parseEventLogScan", 18066, v6);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_24_6();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_239();
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Error parsing reportScanModeStatsSinceLinkUp for mode %d\n", "parseEventLogScan", 18047, v6);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_24_6();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_239();
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Error parsing reportSlicesScanModeStats for mode %d\n", "parseEventLogScan", 18049, v6);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:FW Scan: Scan startTime=%d nowTime=%llu \n", "parseEventLogScan", 18140, *v1, *v0 / 0xF4240uLL);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ScanSummary size mismatch, have %d, expected %ld\n", "parseEventLogScan", 17813, Length, 40);
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Scan[%ums] - 2.4G<%ums %llu%%> 5G<%ums %llu%%> 6G<%ums %llu%%> client=%d\n", "parseEventLogScan", 17898, *(*v1 + 17952), *(*v1 + 35736), *(*v1 + 35744), *(*v1 + 35752), *(*v1 + 35760), *(*v1 + 35768), *(*v1 + 35776), v0);
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logEmergency(v3, "[dk] %s@%d: Overflow detected during scan details processing... \n", "parseEventLogScan", 17942);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logInfo(v2, "[dk] %s@%d:TOTAL_SCAN_SUMMARY: Dur2G %ums Dur5G %ums Dur6G %ums Num2G=%d Num5G=%d Num6G=%d SCNum2G=%d SCNum5G=%d SCNum6G=%d NumActive=%d NumPassive=%d\n", "parseEventLogScan", 17963, *(*v0 + 35792), *(*v0 + 35796), *(*v0 + 35800), *(*v0 + 35804), *(*v0 + 35808), *(*v0 + 35812), *(*v0 + 35816), *(*v0 + 35820), *(*v0 + 35824), *(*v0 + 35828), *(*v0 + 35832));
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Invalid scan_client %d.. Aborting \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Scan Summary version mismatch, found %d\n", "parseEventLogScan", 18166, v3);
}

uint64_t AppleBCMWLANCore::reportSlicesScanModeStats()
{
  OUTLINED_FUNCTION_2_18();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:Out of range scan mode %d\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_2_18();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:Out of range slice index %d\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parseExtendedEventLogRecordScanChan()
{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ScanSummary size mismatch, have %d, expected %ld\n", "parseExtendedEventLogRecordScanChan", 18274, Length, 64);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR:Invalid scan_flags %x\n on SCAN_SUMMARY_VERSION_2", "parseExtendedEventLogRecordScanChan", 18313, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d:ScanSummary size mismatch, have %d, expected %ld\n", "parseExtendedEventLogRecordScanChan", 18209, Length, 40);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_239();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid: appleChanSpec band[%d]", "parseExtendedEventLogRecordScanChan", 18233, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR:Invalid scan_flags %x\n", "parseExtendedEventLogRecordScanChan", 18264, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid scan chan info version %d\n", "parseExtendedEventLogRecordScanChan", 18319, v3);
}

uint64_t AppleBCMWLANCore::parseEventLogRecordRC2CoexStatsPerSlice()
{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed updateRC2CoexStatsReport\n", "parseEventLogRecordRC2CoexStatsPerSlice", 18334);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed reportRC2Coex\n", "parseEventLogRecordRC2CoexStatsPerSlice", 18337);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Invalid sliceIndex %d\n", v5, v6, v7);
    }
  }

  *v0 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::updateRC2CoexStatsReport()
{
  OUTLINED_FUNCTION_11_9();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logInfo(v4, "[dk] %s@%d:Unexpected slice index %d\n", v5, v6, v7);
    }
  }

  *v0 = 0;
  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid RC2 Coex stats version - %u\n", "updateRC2CoexStatsReport", 18665, v3);
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      v4 = OUTLINED_FUNCTION_86();
      OSData::getLength(v4);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:Unexpected RC2 Coex Stats length %d\n", v5, v6, v7);
    }
  }

  *v0 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::updateRC2CoexStatsReportV1()
{
  OUTLINED_FUNCTION_2_18();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      v5 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v5);
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:sizeof(rc2CoexStatsV1) %ld payload->getLength() %d\n", "updateRC2CoexStatsReportV1", 18354, 36, Length);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_2_18();
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:sizeof(rc2CoexStatsV1) %ld rc2CoexStatsV1.len() %d\n", "updateRC2CoexStatsReportV1", 18356, 36, v1);
    }
  }

  *v0 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::updateRC2CoexStatsReportV2()
{
  OUTLINED_FUNCTION_2_18();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      v5 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v5);
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:sizeof(rc2CoexStatsV2) %ld payload->getLength() %d\n", "updateRC2CoexStatsReportV2", 18441, 40, Length);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_2_18();
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:sizeof(rc2CoexStatsV2) %ld rc2CoexStatsV2.len() %d\n", "updateRC2CoexStatsReportV2", 18443, 40, v1);
    }
  }

  *v0 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::updateRC2CoexStatsReportV3()
{
  OUTLINED_FUNCTION_2_18();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      v5 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v5);
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:sizeof(rc2CoexStatsV3) %ld payload->getLength() %d\n", "updateRC2CoexStatsReportV3", 18536, 48, Length);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_2_18();
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:sizeof(rc2CoexStatsV3) %ld rc2CoexStatsV3.len() %d\n", "updateRC2CoexStatsReportV3", 18538, 48, v1);
    }
  }

  *v0 = v3;
  return result;
}

uint64_t AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate numValue\n", "sendRC2CoexStatsEventCoreAnalytics", 18815);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyString\n", "sendRC2CoexStatsEventCoreAnalytics", 18813);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate numValue\n", "sendRC2CoexStatsEventCoreAnalytics", 18809);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyString\n", "sendRC2CoexStatsEventCoreAnalytics", 18807);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate numValue\n", "sendRC2CoexStatsEventCoreAnalytics", 18803);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyString\n", "sendRC2CoexStatsEventCoreAnalytics", 18801);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate numValue\n", "sendRC2CoexStatsEventCoreAnalytics", 18797);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyString\n", "sendRC2CoexStatsEventCoreAnalytics", 18795);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate numValue\n", "sendRC2CoexStatsEventCoreAnalytics", 18786);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyString\n", "sendRC2CoexStatsEventCoreAnalytics", 18784);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate numValue\n", "sendRC2CoexStatsEventCoreAnalytics", 18780);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyString\n", "sendRC2CoexStatsEventCoreAnalytics", 18778);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRC2Duration\n", "sendRC2CoexStatsEventCoreAnalytics", 18770);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyRC2Duration\n", "sendRC2CoexStatsEventCoreAnalytics", 18768);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRC2CirtAggregate\n", "sendRC2CoexStatsEventCoreAnalytics", 18764);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyRC2CirtAggregate\n", "sendRC2CoexStatsEventCoreAnalytics", 18762);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueC2CritAwdlNan\n", "sendRC2CoexStatsEventCoreAnalytics", 18758);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyC2CritAwdlNan\n", "sendRC2CoexStatsEventCoreAnalytics", 18756);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRC2CritBT\n", "sendRC2CoexStatsEventCoreAnalytics", 18752);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyRC2CritBT\n", "sendRC2CoexStatsEventCoreAnalytics", 18750);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRC2CritHpp\n", "sendRC2CoexStatsEventCoreAnalytics", 18746);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyRC2CritHpp\n", "sendRC2CoexStatsEventCoreAnalytics", 18744);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRC2CritBcnLoss\n", "sendRC2CoexStatsEventCoreAnalytics", 18740);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyRC2CritBcnLoss\n", "sendRC2CoexStatsEventCoreAnalytics", 18738);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueCritRateRecovery\n", "sendRC2CoexStatsEventCoreAnalytics", 18734);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyCritRateRecovery\n", "sendRC2CoexStatsEventCoreAnalytics", 18732);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRC2CritPhyCal\n", "sendRC2CoexStatsEventCoreAnalytics", 18728);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyRC2CritPhyCal\n", "sendRC2CoexStatsEventCoreAnalytics", 18726);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRC2GrantDelay\n", "sendRC2CoexStatsEventCoreAnalytics", 18722);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyRC2GrantDelay\n", "sendRC2CoexStatsEventCoreAnalytics", 18720);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRC2SuccessTXedCTS2A\n", "sendRC2CoexStatsEventCoreAnalytics", 18716);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyRC2SuccessTXedCTS2A\n", "sendRC2CoexStatsEventCoreAnalytics", 18714);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRC2SuccessAckedPM\n", "sendRC2CoexStatsEventCoreAnalytics", 18710);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyRC2SuccessAckedPM\n", "sendRC2CoexStatsEventCoreAnalytics", 18708);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRC2Grant\n", "sendRC2CoexStatsEventCoreAnalytics", 18704);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyRC2Grant\n", "sendRC2CoexStatsEventCoreAnalytics", 18702);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRC2Request\n", "sendRC2CoexStatsEventCoreAnalytics", 18698);
}

{
  OUTLINED_FUNCTION_35_1();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventName\n", "sendRC2CoexStatsEventCoreAnalytics", 18691);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  OUTLINED_FUNCTION_5_0();
  result = (*(v10 + 1952))();
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v12 = (*(*a1 + 1952))(a1);
      result = CCLogStream::logAlert(v12, "[dk] %s@%d:Fail to allocate keyRC2Request\n", "sendRC2CoexStatsEventCoreAnalytics", 18696);
    }
  }

  *a5 = a3;
  *a4 = a2;
  return result;
}

void AppleBCMWLANCore::sendRC2CoexStatsEventCoreAnalytics()
{
  OUTLINED_FUNCTION_33_3();
  if ((*(v1 + 1952))())
  {
    (*(*v0 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      v2 = (*(*v0 + 1952))(v0);
      CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendRC2CoexStatsEventCoreAnalytics", 18693);
    }
  }

  OUTLINED_FUNCTION_208();
}

uint64_t AppleBCMWLANCore::parseEventLogRecordRC1CoexStatsPerSlice()
{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed updateRC1CoexStatsReport\n", "parseEventLogRecordRC1CoexStatsPerSlice", 18882);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed reportRC1Coex\n", "parseEventLogRecordRC1CoexStatsPerSlice", 18885);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Invalid sliceIndex %d\n", v5, v6, v7);
    }
  }

  *v0 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReport()
{
  OUTLINED_FUNCTION_11_9();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logInfo(v4, "[dk] %s@%d:Unexpected slice index %d\n", v5, v6, v7);
    }
  }

  *v0 = 0;
  return result;
}

{
  OUTLINED_FUNCTION_2_18();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Invalid RC1 Coex stats version - %u\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_2_18();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      v5 = OUTLINED_FUNCTION_86();
      OSData::getLength(v5);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:Unexpected RC1 Coex Stats length %d\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordLostMpduPerSlice()
{
  OUTLINED_FUNCTION_11_9();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Invalid sliceIndex %d\n", v5, v6, v7);
    }
  }

  *v0 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::updateLostMpduStatsReport()
{
  OUTLINED_FUNCTION_2_18();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      v5 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v5);
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:sizeof(lostMpdus) %ld payload->getLength() %d\n", "updateLostMpduStatsReport", 18943, 68, Length);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_112();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Lost MPDU BA TID:Value -> 0:%u, 1:%u, 5:%u, 6:%u\n", "updateLostMpduStatsReport", 18948, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_112();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Lost MPDU NonBA TID:Value -> 0:%u, 1:%u, 5:%u, 6:%u\n", "updateLostMpduStatsReport", 18949, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed reportRxMpduLost\n", "updateLostMpduStatsReport", 18963);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_2_18();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_9_4();
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Invalid lost MPDU stats version - %u\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordWmeTxMpduPerSlice()
{
  OUTLINED_FUNCTION_11_9();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Invalid sliceIndex %d\n", v5, v6, v7);
    }
  }

  *v0 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::updateWmeTxMpduStatsReport()
{
  OUTLINED_FUNCTION_2_18();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      v5 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v5);
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:sizeof(wmeTx) %ld payload->getLength() %d\n", "updateWmeTxMpduStatsReport", 18980, 36, Length);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_112();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:WME Tx TID:Value -> 0:%u, 1:%u, 5:%u, 6:%u\n", "updateWmeTxMpduStatsReport", 18985, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed reportTxMpduWme\n", "updateWmeTxMpduStatsReport", 18996);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_2_18();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_9_4();
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Invalid WME Tx stats version - %u\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordWmeRxMpduPerSlice()
{
  OUTLINED_FUNCTION_11_9();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Invalid sliceIndex %d\n", v5, v6, v7);
    }
  }

  *v0 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::updateWmeRxMpduStatsReport()
{
  OUTLINED_FUNCTION_2_18();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      v5 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v5);
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:sizeof(wmeRx) %ld payload->getLength() %d\n", "updateWmeRxMpduStatsReport", 19013, 36, Length);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_112();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:WME Rx TID:Value -> 0:%u, 1:%u, 5:%u, 6:%u\n", "updateWmeRxMpduStatsReport", 19018, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed reportRxMpduWme\n", "updateWmeRxMpduStatsReport", 19029);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_2_18();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_9_4();
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Invalid WME Rx stats version - %u\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV1()
{
  OUTLINED_FUNCTION_16_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      v3 = OUTLINED_FUNCTION_12_1();
      Length = OSData::getLength(v3);
      return CCLogStream::logAlert(v0, "[dk] %s@%d:sizeof(rc1CoexStatsV1) %ld payload->getLength() %d\n", "updateRC1CoexStatsReportV1", 19048, 40, Length);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV1(uint64_t a1, unsigned __int16 a2)
{
  OUTLINED_FUNCTION_36_1();
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      return CCLogStream::logAlert(v6, "[dk] %s@%d:sizeof(rc1CoexStatsV1) %ld rc1CoexStatsV1.len() %d\n", "updateRC1CoexStatsReportV1", 19050, 40, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV2()
{
  OUTLINED_FUNCTION_16_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      v3 = OUTLINED_FUNCTION_12_1();
      Length = OSData::getLength(v3);
      return CCLogStream::logAlert(v0, "[dk] %s@%d:sizeof(rc1CoexStatsV2) %ld payload->getLength() %d\n", "updateRC1CoexStatsReportV2", 19115, 48, Length);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV2(uint64_t a1, unsigned __int16 a2)
{
  OUTLINED_FUNCTION_36_1();
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      return CCLogStream::logAlert(v6, "[dk] %s@%d:sizeof(rc1CoexStatsV2) %ld rc1CoexStatsV2.len() %d\n", "updateRC1CoexStatsReportV2", 19117, 48, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV3()
{
  OUTLINED_FUNCTION_16_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      v3 = OUTLINED_FUNCTION_12_1();
      Length = OSData::getLength(v3);
      return CCLogStream::logAlert(v0, "[dk] %s@%d:sizeof(rc1CoexStatsV3) %ld payload->getLength() %d\n", "updateRC1CoexStatsReportV3", 19188, 72, Length);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV3(uint64_t a1, unsigned __int16 a2)
{
  OUTLINED_FUNCTION_36_1();
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      return CCLogStream::logAlert(v6, "[dk] %s@%d:sizeof(rc1CoexStatsV3) %ld rc1CoexStatsV3.len() %d\n", "updateRC1CoexStatsReportV3", 19190, 72, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV4()
{
  OUTLINED_FUNCTION_16_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      v3 = OUTLINED_FUNCTION_12_1();
      Length = OSData::getLength(v3);
      return CCLogStream::logAlert(v0, "[dk] %s@%d:sizeof(rc1CoexStatsV4) %ld payload->getLength() %d\n", "updateRC1CoexStatsReportV4", 19278, 52, Length);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV4(uint64_t a1, unsigned __int16 a2)
{
  OUTLINED_FUNCTION_36_1();
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      return CCLogStream::logAlert(v6, "[dk] %s@%d:sizeof(rc1CoexStatsV4) %ld rc1CoexStatsV4.len() %d\n", "updateRC1CoexStatsReportV4", 19280, 52, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV5()
{
  OUTLINED_FUNCTION_16_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v0 + 1952))(v0);
      v3 = OUTLINED_FUNCTION_12_1();
      Length = OSData::getLength(v3);
      return CCLogStream::logAlert(v0, "[dk] %s@%d:sizeof(rc1CoexStatsV5) %ld payload->getLength() %d\n", "updateRC1CoexStatsReportV5", 19355, 76, Length);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateRC1CoexStatsReportV5(uint64_t a1, unsigned __int16 a2)
{
  OUTLINED_FUNCTION_36_1();
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v2 + 1952))(v2);
      return CCLogStream::logAlert(v6, "[dk] %s@%d:sizeof(rc1CoexStatsV5) %ld rc1CoexStatsV5.len() %d\n", "updateRC1CoexStatsReportV5", 19357, 76, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendRC1CoexStatsEventCoreAnalytics()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRC1WlanCritDur\n", "sendRC1CoexStatsEventCoreAnalytics", 19525);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyRC1WlanCritDur\n", "sendRC1CoexStatsEventCoreAnalytics", 19523);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRC1WlanCrit\n", "sendRC1CoexStatsEventCoreAnalytics", 19519);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyRC1WlanCrit\n", "sendRC1CoexStatsEventCoreAnalytics", 19517);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRC1Duration", "sendRC1CoexStatsEventCoreAnalytics", 19513);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyRC1Duration\n", "sendRC1CoexStatsEventCoreAnalytics", 19511);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRC1Request\n", "sendRC1CoexStatsEventCoreAnalytics", 19507);
}

{
  OUTLINED_FUNCTION_35_1();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyRC1Request\n", "sendRC1CoexStatsEventCoreAnalytics", 19505);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_35_1();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendRC1CoexStatsEventCoreAnalytics", 19502);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_35_1();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventName\n", "sendRC1CoexStatsEventCoreAnalytics", 19500);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateTxDCSlice0Ant0Report()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid Tx Duty Cycle for Slice 0 Ant0\n", "updateTxDCSlice0Ant0Report", 19639);
}

uint64_t AppleBCMWLANCore::updateTxDCSlice1Ant0Report()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid Tx Duty Cycle for Slice 1 Ant0\n", "updateTxDCSlice1Ant0Report", 19665);
}

uint64_t AppleBCMWLANCore::handleTxDCPerAntAsyncCallback()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Failed to get TxDC from DynSAR summary %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Sub Command ID mismatch, input %d, output %d\n", "handleTxDCPerAntAsyncCallback", 19689, 3, *v0);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid FW length detected for DYNSAR_CNT_VERSION_V4!\n", "handleTxDCPerAntAsyncCallback", 19712);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid FW length detected for DYNSAR_CNT_VERSION_V2!\n", "handleTxDCPerAntAsyncCallback", 19704);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid DynSAR Summary version\n", "handleTxDCPerAntAsyncCallback", 19716);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Slice %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 2 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19779, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 1 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19776, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 0 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19773, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 3 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19782, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 2 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19765, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 1 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19762, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 0 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19759, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 3 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19768, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 2 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19749, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 1 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19746, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 0 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19743, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 3 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19752, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 2 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19735, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 1 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19732, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 0 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19729, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_102_0();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Ant 3 TxDC %d%%\n", "handleTxDCPerAntAsyncCallback", 19738, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid DynSAR Summary version\n", "handleTxDCPerAntAsyncCallback", 19786);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid version or fields from DynSAR summary response\n", "handleTxDCPerAntAsyncCallback", 19695);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:No valid data\n", "handleTxDCPerAntAsyncCallback", 19678);
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStatsPerSlice()
{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed parseEventLogRecordBTCoexStats\n", "parseEventLogRecordBTCoexStatsPerSlice", 20241);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed reportExtraBTCoex\n", "parseEventLogRecordBTCoexStatsPerSlice", 20245);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_2_18();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Invalid sliceIndex %d\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordBTCoexStats()
{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d:BTC size mismatch, have %u, expected %ld\n", "parseEventLogRecordBTCoexStats", 20339, Length, 112);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d:BTC size mismatch, have %u, expected %ld\n", "parseEventLogRecordBTCoexStats", 20329, Length, 88);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d:BTC size mismatch, have %u, expected %ld\n", "parseEventLogRecordBTCoexStats", 20319, Length, 76);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d:BTC size mismatch, have %u, expected %ld\n", "parseEventLogRecordBTCoexStats", 20308, Length, 72);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v2);
  OUTLINED_FUNCTION_241();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:BTC size mismatch, have %d, expected %ld\n", "parseEventLogRecordBTCoexStats", 20297, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d:BTC size mismatch, have %d, expected %ld\n", "parseEventLogRecordBTCoexStats", 20286, Length, 92);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v2);
  OUTLINED_FUNCTION_241();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:BTC size mismatch, have %d, expected %ld\n", "parseEventLogRecordBTCoexStats", 20275, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d:BTC size mismatch, have %d, expected %ld\n", "parseEventLogRecordBTCoexStats", 20265, Length, 36);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:BTC version mismatch, found %d\n", "parseEventLogRecordBTCoexStats", 20348, v3);
}

uint64_t AppleBCMWLANCore::parseEventLogRecordChannelSwitch()
{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Unknown payload length %d\n", v4, v5, v6);
}

uint64_t AppleBCMWLANCore::parseEventLogRecordRoamTargetEvaluation()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LQM-WiFi-Roam: Roam Target Evaluation unknown type\n", "parseEventLogRecordRoamTargetEvaluation", 20669);
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0();
  if (!(*(v2 + 1952))() || ((*(*v1 + 1952))(v1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_201();
      OUTLINED_FUNCTION_225(&_mh_execute_header, &_os_log_default, v3, "%c [dk] %s@%d: Insufficient buf sized wl_roam_target_evaluation_t %ld to hold payload", v4, v5, v6, v7, v10, v11, v12, v13);
    }
  }

  result = (*(*v1 + 1952))(v1);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v9 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v9, "[dk] %s@%d:Insufficient buf sized wl_roam_target_evaluation_t %ld to hold payload", "parseEventLogRecordRoamTargetEvaluation", 20633, 48);
    }
  }

  *v0 = 0;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0();
  if (!(*(v3 + 1952))() || ((*(*v1 + 1952))(v1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_37_1();
      OUTLINED_FUNCTION_15_0(&_mh_execute_header, &_os_log_default, v4, "%c [dk] %s@%d: Received NULL pointer\n", v5, v6, v7, v8, v12, v13);
    }
  }

  OUTLINED_FUNCTION_69_0();
  result = (*(v9 + 1952))(v1);
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v11 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v11, "[dk] %s@%d:Received NULL pointer\n", "parseEventLogRecordRoamTargetEvaluation", 20632);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to allocate wl_roam_target_evaluation_t buf", "parseEventLogRecordRoamTargetEvaluation", 20629);
}

uint64_t AppleBCMWLANCore::parseEventLogRecordKvrReport()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LQM-WiFi-Roam-kvr: Unhandled WLC_FBT_ODS_RESP. Phase 2\n", "parseEventLogRecordKvrReport", 20760);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LQM-WiFi-Roam-kvr: Unhandled WLC_FBT_ODS_REQ. Phase 2\n", "parseEventLogRecordKvrReport", 20756);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:LQM-WiFi-Roam-kvr: not enough space for the wl_roam_11kvr_dms_resp_v1 payload. length is %ld\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:LQM-WiFi-Roam-kvr: not enough space for the wl_roam_11kvr_dms_req_v1 payload. length is %ld\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:LQM-WiFi-Roam-kvr: not enough space for the wl_roam_11kvr_nbr_rpt_resp_v1 payload. length is %ld\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:LQM-WiFi-Roam-kvr: not enough space for the wl_roam_11kvr_nbr_rpt_req_v1 payload. length is %ld\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:LQM-WiFi-Roam-kvr: not enough space for the wl_roam_11kvr_bcn_rpt_resp_v1 payload. length is %ld\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s LQM-WiFi-Roam-kvr: kvr Report unknown type\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:LQM-WiFi-Roam-kvr: not enough space for the wl_roam_11kvr_bcn_rpt_req_v1 payload. length is %ld\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:LQM-WiFi-Roam-kvr: not enough space for the kvr type payoad. length is %ld\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_16_5();
  result = (*(v2 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:LQM-WiFi-Roam-kvr: Invalid kvrCursor IO80211BufferCursor\n", "parseEventLogRecordKvrReport", 20704);
    }
  }

  *v0 = 0;
  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Payload too large %ld", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LQM-WiFi-Roam-kvr: NULL payload\n", "parseEventLogRecordKvrReport", 20692);
}

uint64_t AppleBCMWLANCore::parseEventLogRecordLTECoexStatsPerSlice()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LTECX capability is missing for this chipset/FW\n", "parseEventLogRecordLTECoexStatsPerSlice", 20779);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LTECoex stats version mismatch, found %d\n", "parseEventLogRecordLTECoexStatsPerSlice", 20803, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d:LTECoex stats size mismatch, have %d, expected %ld\n", "parseEventLogRecordLTECoexStatsPerSlice", 20792, Length, 160);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d:LTECoex stats size mismatch, have %d, expected %ld\n", "parseEventLogRecordLTECoexStatsPerSlice", 20797, Length, 160);
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:failed to convertInfraLTECoexStatisticsToApple80211Counters\n", "parseEventLogRecordLTECoexStatsPerSlice", 20808);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:failed to reportLTECoexStatisticsPerSlice\n", "parseEventLogRecordLTECoexStatsPerSlice", 20811);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_2_18();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v1 + 1952))(v1);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Invalid sliceIndex %d\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

void AppleBCMWLANCore::convertInfraLTECoexStatisticsToApple80211Counters()
{
  OUTLINED_FUNCTION_16_5();
  if ((*(v1 + 1952))())
  {
    (*(*v0 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      v2 = (*(*v0 + 1952))(v0);
      CCLogStream::logEmergency(v2, "[dk] %s@%d:setLTECoexstat failed\n", "convertInfraLTECoexStatisticsToApple80211Counters", 30559);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  OUTLINED_FUNCTION_16_5();
  if ((*(v2 + 1952))())
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      v3 = (*(*v1 + 1952))(v1);
      CCLogStream::logEmergency(v3, "[dk] %s@%d:Failed to allocate buffer\n", "convertInfraLTECoexStatisticsToApple80211Counters", 30544);
    }
  }

  AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(v0);
}

uint64_t AppleBCMWLANCore::convertInfraLTECoexStatisticsToApple80211Counters()
{
  OUTLINED_FUNCTION_7_13();
  if ((*(v2 + 1952))())
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      v4 = (*(*v1 + 1952))(v1);
      CCLogStream::logEmergency(v4, "[dk] %s@%d:Failed to allocate alignedCounters\n", "convertInfraLTECoexStatisticsToApple80211Counters", 30541);
    }
  }

  OUTLINED_FUNCTION_275();
  return v0 & 1;
}

uint64_t AppleBCMWLANCore::parseEventLogRecordControlManagementFrameCounts()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to create aligned wl_ctl_mgt_cnt_t data\n", "parseEventLogRecordControlManagementFrameCounts", 20843);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Unexpected type found %d, expected %d\n", "parseEventLogRecordControlManagementFrameCounts", 20852, *v0, 0);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:CTL Mgmt size mismatch, found %d, expected %ld\n", "parseEventLogRecordControlManagementFrameCounts", 20858, *v0, 144);
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to convertwlMgmtCntToAppleFrameCounters\n", "parseEventLogRecordControlManagementFrameCounts", 20865);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_0_25();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to setFrameStats\n", "parseEventLogRecordControlManagementFrameCounts", 20871);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  Length = OSData::getLength(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d:CTL Mgmt size mismatch, have %d, expected %ld\n", "parseEventLogRecordControlManagementFrameCounts", 20834, Length, 148);
}

uint64_t AppleBCMWLANCore::convertwlMgmtCntToAppleFrameCounters()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Control Management Frame counter data not aligned, %p\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to create aligned ctl data\n", "convertwlMgmtCntToAppleFrameCounters", 28656);
}

uint64_t AppleBCMWLANCore::parseXTLVContainers()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logInfoIf(v2, 0x2000000000uLL, "[dk] %s@%d:first xtlv id %x length %d\n", "parseXTLVContainers", 28732, *v0, v0[1]);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unknown XTLV tag %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:safe_align_up failed\n", "parseXTLVContainers", 28787);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v1, 0x2000000000uLL, "[dk] %s@%d:parseXTLVContainers: index %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_9_5();
  result = (*(v1 + 1952))();
  if (result)
  {
    (*(*v0 + 1952))(v0);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = (*(*v0 + 1952))(v0);
      return CCLogStream::logAlert(v3, "[dk] %s@%d:UINT16_MAX overflow nextAlignedIndex\n", "parseXTLVContainers", 28788);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Bad read at index %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Insufficient length for any XTLV, %u\n", v4, v5, v6);
}

uint64_t AppleBCMWLANCore::parseEventLogRecordTxFailure()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Allocation failure for return TLV\n", "parseEventLogRecordTxFailure", 21127);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:%s: dropping '0' failureCount report", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::parseEventLogRecords()
{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Unexpected length payload, total len %d, needs to be 4 byte alligned\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v2 + 1952))();
  v3 = OUTLINED_FUNCTION_86();
  Length = OSData::getLength(v3);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:failed to cast footer at position %lu, payload length is %d\n", "parseEventLogRecords", 21337, v0, Length);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to allocate eventLogRecordPayload\n", "parseEventLogRecords", 21328);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to create aligned eventLogRecordPayload OSData\n", "parseEventLogRecords", 21421);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to create aligned tmpData data\n", "parseEventLogRecords", 21409);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  OSData::getLength(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Insufficient length payload %d\n", v4, v5, v6);
}

uint64_t AppleBCMWLANCore::handleMsgTraceBlock()
{
  OUTLINED_FUNCTION_5_6();
  (*(v2 + 1952))();
  v3 = OUTLINED_FUNCTION_86();
  Length = OSData::getLength(v3);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:payload and header size mismatch (payload len %d, header length field %d)\n", "handleMsgTraceBlock", 21488, Length, v0);
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid set number in event_log_block, found %d max supported log sets %d\n", "handleMsgTraceBlock", 21496, v0, *(*v1 + 972) - 1);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Insufficient data in eventHeaderAndPayload\n", "handleMsgTraceBlock", 21476);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Bad argument\n", "handleMsgTraceBlock", 21470);
}

uint64_t AppleBCMWLANCore::adjustBeaconListPerNewCountryCode()
{
  OUTLINED_FUNCTION_10_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_116();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:WiFiCC : band filter is : [%d]\n,", "adjustBeaconListPerNewCountryCode", 21751, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_116();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:WiFiCC : setting 6GHz valid channels : [%d]\n,", "adjustBeaconListPerNewCountryCode", 21798, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiCC : Invalid 6GHz channel number %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_116();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:WiFiCC : setting 5GHz valid channels : [%d]\n,", "adjustBeaconListPerNewCountryCode", 21781, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiCC : Invalid 5GHz channel number %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_116();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:WiFiCC : setting 2GHz valid channels : [%d]\n,", "adjustBeaconListPerNewCountryCode", 21765, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiCC : Invalid 2GHz channel number %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::setLMTPC()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_139();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Country code is %s\n", "setLMTPC", 54819, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:LMTPC is configured to %d\n", "setLMTPC", 54838, v3);
}

uint64_t AppleBCMWLANCore::postRoamCompletionStatus()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Roam status not populated yet, defer posting roam completion status\n", "postRoamCompletionStatus", 21891);
}

uint64_t AppleBCMWLANCore::buildRoamCompletionStatus()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Using simulated roam status substate\n", "buildRoamCompletionStatus", 21977);
}

uint64_t AppleBCMWLANCore::printRoamInfo()
{
  OUTLINED_FUNCTION_29_5();
  v3 = (*(v0 + 1952))();
  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    OUTLINED_FUNCTION_57_0();
  }

  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfo(v3, v1);
}

uint64_t AppleBCMWLANCore::printRoamInfo(uint64_t a1, uint64_t a2, unsigned int a3)
{
  OUTLINED_FUNCTION_11_4();
  (*(v5 + 1952))();
  v14 = *(*(v3 + 72) + 600 * a3 + 12776);
  v15 = *(*(v3 + 72) + 600 * a3 + 12777);
  OUTLINED_FUNCTION_152();
  return CCLogStream::logInfo(v6, "[dk] %s@%d:NumRoamScanAttempts: %d NumFullBand: %d NumPartial:%d NumRoamAborts: %d NumRoamOperationTimeouts: %d NumRoamOperationFailed: %d PacketsLost AQM: %d PacketLost SubQ: %d \n", "printRoamInfo", 32745, v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t AppleBCMWLANCore::dumpEventLogReportedStats()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Fails to dumpEventLogReportedStats as WLC_E_TRACE is not set\n", "dumpEventLogReportedStats", 52937);
}

uint64_t AppleBCMWLANCore::collectDtimConfigFromFW()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to collect DTIM Config from F/W", "collectDtimConfigFromFW", 55857);
}