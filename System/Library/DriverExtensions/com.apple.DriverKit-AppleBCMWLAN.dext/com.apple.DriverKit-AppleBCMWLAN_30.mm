uint64_t AppleBCMWLANCore::processAuthEvenData()
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:safe_align_up failed\n", "processAuthEvenData", 56606);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: WLC_E_AUTH: PMKID has invalid length (%d)\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: WLC_E_AUTH: PMKID exists. length %lu\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v18 = *(*v0 + 306);
  v19 = *(*v0 + 307);
  v16 = *(*v0 + 304);
  v17 = *(*v0 + 305);
  v14 = *(*v0 + 302);
  v15 = *(*v0 + 303);
  v12 = *(*v0 + 300);
  v13 = *(*v0 + 301);
  v10 = *(*v0 + 298);
  v11 = *(*v0 + 299);
  OUTLINED_FUNCTION_152();
  return CCLogStream::logNotice(v2, "[dk] %s@%d: %02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\n", "processAuthEvenData", 56640, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: WLC_E_AUTH: PMK has invalid length (%d)\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: WLC_E_AUTH: PMK exists. length %lu\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_134();
  v21 = v1[237];
  v22 = v1[238];
  v19 = v1[235];
  v20 = v1[236];
  v17 = v1[233];
  v18 = v1[234];
  v15 = v2;
  v16 = v1[232];
  v13 = v3;
  v14 = v4;
  OUTLINED_FUNCTION_152();
  return CCLogStream::logNotice(v5, "[dk] %s@%d: %02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\n", "processAuthEvenData", 56622, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:UINT16_MAX overflow tagMemoryUsage\n", "processAuthEvenData", 56607);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::retrieveExcessPMParams()
{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_126();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:PM ALERT: version[%u] length[%4u] reasons[%u]\n", "retrieveExcessPMParams", 49564, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:PM ALERT: CONST_AWAKE_DUR_RECOVERY\n", "retrieveExcessPMParams", 49610);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:PM ALERT: CONST_AWAKE_DUR_ALERT\n", "retrieveExcessPMParams", 49605);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:PM ALERT: EPNO_THRESH_EXCEEDED\n", "retrieveExcessPMParams", 49600);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:PM ALERT: ROAM_THRESH_EXCEEDED\n", "retrieveExcessPMParams", 49595);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:PM ALERT: MPC_DUR_EXCEEDED\n", "retrieveExcessPMParams", 49590);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:PM ALERT: PM_DUR_EXCEEDED\n", "retrieveExcessPMParams", 49585);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_92_0();
  return CCLogStream::logAlert(v1, "PMALERT_UCODE_DBG_SC: macctrl %u m_p2p_hps %u psm_brc %u ifsstat %u\n\t m_p2p_bss_dtim_prd[0] %u m_p2p_bss_dtim_prd[1] %u m_p2p_bss_dtim_prd[2] %u m_p2p_bss_dtim_prd[3] %u\n", v3, v2, v5, v6, v7, v8, v9, v10);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "\t psm_maccommand %u \n", *(v0 + 264));
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v1 + 1952))();
  v17 = v0[14];
  v18 = v0[15];
  v15 = v0[11];
  v16 = v0[13];
  v13 = v0[10];
  v14 = v0[12];
  v11 = v0[8];
  v12 = v0[9];
  OUTLINED_FUNCTION_65_0();
  return CCLogStream::logAlert(v2, "PMALERT_FIXED_SC: PM ALERT SC 0x%08x:\n\tPrev Stats Time: %u, Current Time: %u\n\tPrev PM Dur: %u Current PM Dur %u win_down_time %u\n\tHw-MACC: %u Sw-MACC: %u\n\tDrift: last=%u min=%u avg=%u max=%u ct=%u\n\tCalibration: CalDur: %u Prev CalDur: %u\n", v3, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_237();
  return CCLogStream::logInfoIf(v1, 0x20uLL, "[dk] %s@%d:PMALERT_UCODE_DBG_V2: macctrl %u m_p2p_hps %u psm_brc %u ifsstat %u\n\t m_p2p_bss_dtim_prd[0] %u m_p2p_bss_dtim_prd[1] %u m_p2p_bss_dtim_prd[2] %u m_p2p_bss_dtim_prd[3] %u\n", "retrieveExcessPMParams", 49952, v3, v4, v5, v6, v7, v8, v9, v10);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_236();
  return CCLogStream::logInfoIf(v1, 0x20uLL, "[dk] %s@%d:\t psmdebug[%d] %u", "retrieveExcessPMParams", 49955, v3, v4);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_236();
  return CCLogStream::logInfoIf(v1, 0x20uLL, "[dk] %s@%d:\t phydebug[%d] %u", "retrieveExcessPMParams", 49958, v3, v4);
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logInfoIf(v3, 0x20uLL, "[dk] %s@%d:\t M_P2P_PRE_TBTT[%d] %u", "retrieveExcessPMParams", 49966, v0, *(v1 + 2 * v0));
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_112();
  return CCLogStream::logInfoIf(v1, 0x20uLL, "[dk] %s@%d:\t xmtfifordy %u psm_maccommand %u txe_status1 %u AQMFifoReady %u\n", "retrieveExcessPMParams", 49968, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_237();
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:PMALERT_EXT_UCODE_DBG: macctrl %u m_p2p_hps %u psm_brc %u ifsstat %u\n\t m_p2p_bss_dtim_prd[0] %u m_p2p_bss_dtim_prd[1] %u m_p2p_bss_dtim_prd[2] %u m_p2p_bss_dtim_prd[3] %u\n", "retrieveExcessPMParams", 49923, v3, v4, v5, v6, v7, v8, v9, v10);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_236();
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:\t psmdebug[%d] %u", "retrieveExcessPMParams", 49926, v3, v4);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_236();
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:\t phydebug[%d] %u", "retrieveExcessPMParams", 49929, v3, v4);
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logAlertIf(v3, 0x20uLL, "[dk] %s@%d:\t M_P2P_PRE_TBTT[%d] %u", "retrieveExcessPMParams", 49937, v0, *(v1 + 2 * v0));
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_112();
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:\t xmtfifordy %u psm_maccommand %u txe_status1 %u AQMFifoReady %u\n", "retrieveExcessPMParams", 49939, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:PM ALERT: Incorrect PS Dbg TLV length %d remaining. Report issue. Bailing.\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlertIf(v2, 0x20uLL, "[dk] %s@%d:PMALERT_UCODE_DBG: macctrl %u m_p2p_hps %u psm_brc %u ifsstat %u\n\t psmdebug[0] %u psmdebug[1] %u psmdebug[2] %u psmdebug[3] %u\n\t phydebug[0] %u phydebug[1] %u phydebug[2] %u phydebug[3] %u\n\t psm_maccommand %u txe_status1 %u AQMFifoReady %u\n", "retrieveExcessPMParams", 49893, *(v0 + 4), *(v0 + 8), *(v0 + 10), *(v0 + 14), *(v0 + 26), *(v0 + 30), *(v0 + 34), *(v0 + 38), *(v0 + 106), *(v0 + 110), *(v0 + 114), *(v0 + 118), *(v0 + 266), *(v0 + 268), *(v0 + 270));
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:PM ALERT: Incorrect Event Duration TLV length %d remaining. Report issue. Bailing.\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Radio is awake possibly due to Access Point Issues such as setting TIM in all beacons\n", "retrieveExcessPMParams", 49866);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:\n", "retrieveExcessPMParams", 49872);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:PM ALERT: Incorrect Event Duration TLV length %d remaining. Report issue. Bailing.\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:\n", "retrieveExcessPMParams", 49826);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:PM ALERT: Incorrect PM state TLV length %d remaining. Report issue. Bailing.\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  v4 = (v1 + 8 * v0);
  v9 = pmReasonStr(v4[1]);
  v10 = *v4;
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Reason 0x%x (%s) Timestmp %ums\n", v6, v7, v8, v9, v10);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v1 + 1952))();
  v16 = v0[11];
  v17 = v0[13];
  v14 = v0[10];
  v15 = v0[12];
  v12 = v0[8];
  v13 = v0[9];
  v10 = v0[6];
  v11 = v0[7];
  v8 = v0[5];
  v9 = v0[4];
  OUTLINED_FUNCTION_112();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:PMALERT_FIXED: PM ALERT 0x%08x:\n\tPrev Stats Time: %u, Current Time: %u\n\tPrev PM Dur: %u Prev MPC Dur: %u Current PM Dur %u Current MPC Dur %u\n\tHw-MACC: %u Sw-MACC: %u\n\tDrift: last=%u min=%u avg=%u max=%u ct=%u\n", "retrieveExcessPMParams", 49680, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:PM ALERT: Overflow detected\n", "retrieveExcessPMParams", 49697);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_146();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:PM ALERT: Incorrect type field. %d Len %d\n", "retrieveExcessPMParams", 50033, v3, v4);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Not enough space to accomodate remaining TLVs, Bail out\n", "retrieveExcessPMParams", 50052);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:PM ALERT: Incorrect length %d remaining. Report issue. Bailing.\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:InCorrect PM Alert Len =%d\n", "retrieveExcessPMParams", 49627, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:PM ALERT: Incorrect data length in the Event %d\n", "retrieveExcessPMParams", 49621, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:PM ALERT: UN-KNOWN \n", "retrieveExcessPMParams", 49615);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:PM ALERT: Incorrect data length in the Event\n", "retrieveExcessPMParams", 49557);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:PM ALERT: No data attached to Event\n", "retrieveExcessPMParams", 49544);
}

uint64_t AppleBCMWLANCore::handleLinkDown()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to bring up AWDL: %s\n", v5, v6, v7);
}

BOOL AppleBCMWLANCore::handleCCAOnlyChanQualEvent()
{
  OUTLINED_FUNCTION_9_5();
  result = 1;
  if ((*(v1 + 1952))())
  {
    (*(*v0 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleCCAOnlyChanQualEvent()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Zero CCA busy duration\n", "handleCCAOnlyChanQualEvent", 24481);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid wle message,unknown message ID=0x%x\n", "handleCCAOnlyChanQualEvent", 24470, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_199();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid wle message length=%u, too small to hold event length=%u\n", "handleCCAOnlyChanQualEvent", 24452, v3, v4);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Allocation failure\n", "handleCCAOnlyChanQualEvent", 24446);
}

uint64_t AppleBCMWLANCore::handleGetWmeParams()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Error: cannot get WME params: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::enableTxQueues()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNoticeIf(v1, 0x10200uLL, "[dk] %s@%d: Enabling data queues\n", "enableTxQueues", 24995);
}

uint64_t AppleBCMWLANCore::disableTxQueues()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNoticeIf(v1, 0x10200uLL, "[dk] %s@%d: Disabling data queues\n", "disableTxQueues", 25014);
}

uint64_t AppleBCMWLANCore::configureMonitorModeToFW(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_11_4();
  v6 = (*(v5 + 1952))();
  return CCLogStream::logAlert(v6, "[dk] %s@%d:Configure Monitor Mode: enable=%d ivars->fMonitorEnabled=%d \n", "configureMonitorModeToFW", 25033, a3, *(*(v3 + 72) + 18297));
}

uint64_t AppleBCMWLANCore::configureMonitorModeToFW()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to enable monitor mode (WLC_SET_MONITOR): %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setCurEtheraddr()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Invalid MAC address %02X:%02X:%02X:%02X:%02X:%02X \n", "setCurEtheraddr", 25188, v3, v4, v5, v6, v7, v8);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: cur_etheraddr failed, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: cur_etheraddr send iovar failed, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error: cannot set Mac address. MemAlloc Failed \n", "setCurEtheraddr", 25198);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Cannot set MAC address. GAS query in progress \n", "setCurEtheraddr", 25178);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Cannot set MAC address. Join manager busy \n", "setCurEtheraddr", 25173);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Cannot set MAC address. Already associated \n", "setCurEtheraddr", 25164);
}

uint64_t AppleBCMWLANCore::_setAllMulticastModeEnable()
{
  OUTLINED_FUNCTION_11_9();
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_59_0();
      v6 = OUTLINED_FUNCTION_136();
      v7(v6);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logCrit(v3, "[dk] %s@%d: setAllMulticast(false) failed, error %s\n", v8, v9, v10);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_59_0();
      v6 = OUTLINED_FUNCTION_136();
      v7(v6);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logCrit(v3, "[dk] %s@%d: cleanFWMulticastList failed, error %s\n", v8, v9, v10);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_59_0();
      v6 = OUTLINED_FUNCTION_136();
      v7(v6);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logCrit(v3, "[dk] %s@%d: setAllMulticast(true) failed, error %s\n", v8, v9, v10);
    }
  }

  *v0 = v1;
  return result;
}

uint64_t AppleBCMWLANCore::cleanFWMulticastList()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: ivars->mcast_list failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setAllMulticast()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v4 = v3(v2);
  return CCLogStream::logCrit(v0, "[dk] %s@%d: %s() failed, error %s\n", "setAllMulticast", 25458, "allmulti", v4);
}

uint64_t AppleBCMWLANCore::setMulticastMode()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: ivars->mcast_list failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::createNANMgmtDataInterface()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: NAN mgmt+data interface already created\n", "createNANMgmtDataInterface", 25818);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create NAN mgmt+data interface \n", "createNANMgmtDataInterface", 25835);
}

uint64_t AppleBCMWLANCore::createNANDataInterface()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: NAN Data Interface already created\n", "createNANDataInterface", 25897);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create NAN data interface \n", "createNANDataInterface", 25914);
}

uint64_t AppleBCMWLANCore::createProxInterface()
{
  OUTLINED_FUNCTION_10_5();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  ClassNameHelper = getClassNameHelper(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d:%s::%s() skipping createProxInterface\n", "createProxInterface", 25996, ClassNameHelper, "createProxInterface");
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: already created\n", "createProxInterface", 26001);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to create awdl interface \n", "createProxInterface", 26018);
}

uint64_t AppleBCMWLANCore::commandSleepForThreadSafe()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Sleep failed 0x%08x", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::commandWakeupForThreadSafe()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  v3 = current_thread();
  v4 = thread_tid(v3);
  return CCLogStream::logNoticeIf(v2, 0x200000uLL, "[dk] %s@%d: Signalling wakeup (%d) event from tid: %llx\n", "commandWakeupForThreadSafe", 26090, v0, v4);
}

uint64_t AppleBCMWLANCore::getDiagsAmpduStats()
{
  OUTLINED_FUNCTION_11_9();
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_59_0();
      v6 = OUTLINED_FUNCTION_136();
      v7(v6);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logEmergency(v3, "[dk] %s@%d:Failed to dump ampdu - %s\n", v8, v9, v10);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_59_0();
      v6 = OUTLINED_FUNCTION_136();
      v7(v6);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logEmergency(v3, "[dk] %s@%d:Failed to dump ampdu - %s\n", v8, v9, v10);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_59_0();
      v6 = OUTLINED_FUNCTION_136();
      v7(v6);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logEmergency(v3, "[dk] %s@%d:Failed to dumpEventLogReportedStats (6) - %s\n", v8, v9, v10);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_59_0();
      v6 = OUTLINED_FUNCTION_136();
      v7(v6);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logEmergency(v3, "[dk] %s@%d:Failed to dumpEventLogReportedStats (7) - %s\n", v8, v9, v10);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_59_0();
      v6 = OUTLINED_FUNCTION_136();
      v7(v6);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logEmergency(v3, "[dk] %s@%d:Failed to getECounterOnDemand(EVENT_LOG_TAG_BTCX_STATS) - %s\n", v8, v9, v10);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_11_9();
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_59_0();
      v6 = OUTLINED_FUNCTION_136();
      v7(v6);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logEmergency(v3, "[dk] %s@%d:Failed to getECounterOnDemand(EVENT_LOG_TAG_AMPDU_DUMP) - %s\n", v8, v9, v10);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:ampduReq.isAllocationFailure()\n", "getDiagsAmpduStats", 26107);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:ampduResp.isAllocationFailure()\n", "getDiagsAmpduStats", 26106);
}

uint64_t AppleBCMWLANCore::getECounterOnDemand()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to set ecounters: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::getDiags()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Unable to getDiags, rejecting commands\n", "getDiags", 26153);
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
      v6 = current_thread();
      thread_tid(v6);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:commandSleepForThreadSafe for getDiags failed, dropping request for tid %llx\n", v7, v8, v9);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d: Failed to get AssociatedSleep/UnAssociatedSleep Duration Values \n", "getDiags", 26199);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Failed to get power stats during sleep for LPSC \n", "getDiags", 26208);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v0, "[dk] %s@%d:Failed to getChipIfCounters - %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:getDiagsAmpduStats failed %x\n", v3, v4, v5);
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
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:memuseString.isAllocationFailure()\n", "getDiags", 26171);
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
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:_buffer.isAllocationFailure()\n", "getDiags", 26170);
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
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:buf.isAllocationFailure()\n", "getDiags", 26169);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Unable to getDiags, due to boot-arg wlan.getDiags=0,, returning kIOReturnSuccess\n", "getDiags", 26158);
}

uint64_t AppleBCMWLANCore::getPowerStats()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to collect OPS/EBT Status\n", "getPowerStats", 47536);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: mpc_dur failed, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: pm_dur failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::handleCardSpecific()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:-> %lx \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:-> %lx \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  if ((*v1 & 0xFFFFFFFE) == 0x106)
  {
    v4 = "IOVAR";
  }

  else
  {
    v4 = "IOCTL";
  }

  return CCLogStream::logNoticeIf(v3, 4uLL, "[dk] %s@%d:wl: error %x (cmd=%d %s)\n", "handleCardSpecific", 26526, v0, *v1, v4);
}

uint64_t AppleBCMWLANCore::_wlc_ioctl()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:wl: error %x wl command %d requires argument, insufficient space, len %u < %zu\n", "_wlc_ioctl", 26605, -536870206, 0, v0, 4uLL);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:wl: error %x wl command %d requires argument\n", "_wlc_ioctl", 26591, -536870206, v0);
}

uint64_t AppleBCMWLANCore::getCHANNEL()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: chanspec failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::getRSSI()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: ERROR: Invalid radio count[%u], retVal[0x%08x]\n", "getRSSI", 27436, 0, v0);
}

uint64_t AppleBCMWLANCore::getDBG_GUARD_TIME_PARAMS()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: forced_pm failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::getLEAKY_AP_STATS_MODE()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: leaky_ap_stats failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::getBEACON_INFO()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_26_1();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:WiFiRoam : is HE Beacon ? [%d]\n", "getBEACON_INFO", 27755, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:beacon_info iovar failed.\n", "getBEACON_INFO", 27759);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: buffer allocation failed for beacon_info get iovar, returning\n", "getBEACON_INFO", 27711);
}

uint64_t AppleBCMWLANCore::getBEACON_INFO(uint64_t a1, _DWORD *a2, int a3)
{
  OUTLINED_FUNCTION_5_0();
  result = (*(v6 + 1952))();
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v8 = (*(*a1 + 1952))(a1);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d: beaconFrmLength[%d] too large > %lu\n", "getBEACON_INFO", 27743, a3, 2048);
    }
  }

  *a2 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::getHW_ADDR()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: WFMacRandomisation :  Populating MAC Address for host. MAC Address: %02x:%02x:%02x:%02x:%02x:%02x\n", "getHW_ADDR", 27791, *(*v0 + 5652), *(*v0 + 5653), *(*v0 + 5654), *(*v0 + 5655), *(*v0 + 5656), *(*v0 + 5657));
}

uint64_t AppleBCMWLANCore::getTXPOWER()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: qtxpower failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::appending6GOnlyChannelsWithCurrentCC()
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
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: chanspecs failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::getCurrentSupportedChannels()
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
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: chanspecs failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::parsePerSliceContainer()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Buffer not aligned\n", "parsePerSliceContainer", 28927);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing parseEventLogRecordWmeRxMpduPerSlice\n", "parsePerSliceContainer", 29105);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing parseEventLogRecordWmeTxMpduPerSlice\n", "parsePerSliceContainer", 29098);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing parseEventLogRecordLostMpduPerSlice\n", "parsePerSliceContainer", 29091);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing parseEventLogRecordRC1CoexStatsPerSlice\n", "parsePerSliceContainer", 29081);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing parseEventLogRecordRC2CoexStatsPerSlice\n", "parsePerSliceContainer", 29075);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing reportTDM\n", "parsePerSliceContainer", 29062);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing reportTVPM\n", "parsePerSliceContainer", 29048);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing reportSlicesScanPwrStats6E\n", "parsePerSliceContainer", 29038);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing reportScanPwrStats6E\n", "parsePerSliceContainer", 29040);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing reportSlicesScanPwrStats\n", "parsePerSliceContainer", 29024);
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
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Error parsing reportScanPwrStatsAtLinkUp\n", "parsePerSliceContainer", 29013);
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
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Error parsing reportSlicesScanPwrStatsAtLinkup\n", "parsePerSliceContainer", 29015);
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
      v5 = (*(*v2 + 1952))(v2);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Error parsing reportSlicesScanPwrStats\n", "parsePerSliceContainer", 29020);
    }
  }

  *v0 = v1;
  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing reportScanPwrStats\n", "parsePerSliceContainer", 29028);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unhandled stat tag: %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing parseV30CntContainer\n", "parsePerSliceContainer", 28992);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing parseEventLogRecordLTECoexStatsPerSlice\n", "parsePerSliceContainer", 28978);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing parseEventLogRecordBTCoexStatsPerSlice\n", "parsePerSliceContainer", 28971);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Incorrect len for sliceIndex %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v1, 0x2000000000uLL, "[dk] %s@%d:WL_IFSTATS_XTLV_SLICE_INDEX %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid slice index\n", "parsePerSliceContainer", 28964);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:safe_align_up failed\n", "parsePerSliceContainer", 29123);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v1, 0x2000000000uLL, "[dk] %s@%d:parsePerSliceContainer: index %d\n", v3, v4, v5);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:UINT16_MAX overflow nextAlignedIndex\n", "parsePerSliceContainer", 29124);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Bad read at index %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:parsePerSliceContainer: Invalid tag id %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Bad xtlvContainerPayload\n", "parsePerSliceContainer", 28942);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Bad payloadStart\n", "parsePerSliceContainer", 28938);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Bad read at index %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Failed to parse Event Log Record xtlv %x\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::parseIFStatsContainer()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfoIf(v1, 0x2000000000uLL, "[dk] %s@%d:parseIFStatsContainer\n", "parseIFStatsContainer", 32060);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Buffer not aligned\n", "parseIFStatsContainer", 32064);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Failed to parse Event Log Record xtlv %x\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_184();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:xtlv_payload %hu is not equal to sizeof(wl_if_infra_stats_he_t) %lu\n", "parseIFStatsContainer", 32159, v3, v4);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error convertInfraSpecificStatisticsToApple80211Counters\n", "parseIFStatsContainer", 32161);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid interface index %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_184();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:xtlv_payload %hu is not equal to sizeof(wl_if_mgt_stats_t) %lu\n", "parseIFStatsContainer", 32143, v3, v4);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error convertInfraControlManagementStatisticsToApple80211Counters\n", "parseIFStatsContainer", 32146);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing convertInfraControlManagementStatisticsToApple80211Counters\n", "parseIFStatsContainer", 32150);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid interface index %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_184();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:xtlv_payload %hu is not equal to sizeof(wl_if_infra_enh_stats_v2_t) %lu\n", "parseIFStatsContainer", 32119, v3, v4);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_184();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:xtlv_payload %hu is not equal to sizeof(wl_if_infra_stats_t) %lu\n", "parseIFStatsContainer", 32117, v3, v4);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error convertInfraSpecificStatisticsToApple80211Counters\n", "parseIFStatsContainer", 32129);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error updating updateInfraSpecificStatistics\n", "parseIFStatsContainer", 32133);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:unsupported infra status version %d", "parseIFStatsContainer", 32121, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid interface index %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_184();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:xtlv_payload %hu is not equal to sizeof(wl_if_stats_t) %lu\n", "parseIFStatsContainer", 32100, v3, v4);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error convertInfraGenericStatisticsToApple80211Counters\n", "parseIFStatsContainer", 32103);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error updating updateInfraGenericStatistics\n", "parseIFStatsContainer", 32107);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid interface index %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v1, 0x2000000000uLL, "[dk] %s@%d:WL_IFSTATS_XTLV_IF_INDEX %d\n", v3, v4, v5);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:safe_align_up failed\n", "parseIFStatsContainer", 32189);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v1, 0x2000000000uLL, "[dk] %s@%d:parseIFStatsContainer: index %d\n", v3, v4, v5);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:UINT16_MAX overflow nextAlignedIndex\n", "parseIFStatsContainer", 32190);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid interface index %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Bad read ifPtr\n", "parseIFStatsContainer", 32089);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid tag id %u\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Bad xtlvContainerPayload\n", "parseIFStatsContainer", 32079);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Bad payloadStart\n", "parseIFStatsContainer", 32075);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Bad read at index %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Failed to parse Event Log Record xtlv %x\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::parseAMPDUStatsGlobalContainer()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Buffer not aligned\n", "parseAMPDUStatsGlobalContainer", 29937);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:unexpected version %u\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error updating updateSliceRxAmpduStats\n", "parseAMPDUStatsGlobalContainer", 30151);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:unexpected size %u\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Bad memory length xtlvLength %d aggregationDens.aggr_dist %lu\n", "parseAMPDUStatsGlobalContainer", 30090, v0, 268);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:containerLength too long %u\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Slice types do not match\n", "parseAMPDUStatsGlobalContainer", 30101);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to parseEventLogRecordAMPDU\n", "parseAMPDUStatsGlobalContainer", 30122);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Bad ampduRateCntReport\n", "parseAMPDUStatsGlobalContainer", 29997);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Slice types do not match\n", "parseAMPDUStatsGlobalContainer", 30023);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to parseEventLogRecordAMPDU\n", "parseAMPDUStatsGlobalContainer", 30045);
}

{
  OUTLINED_FUNCTION_34_3();
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:safe_align_up failed\n", "parseAMPDUStatsGlobalContainer", 30165);
    }
  }

  *v0 = v3;
  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v1, 0x2000000000uLL, "[dk] %s@%d:parseAMPDUStatsGlobalContainer: index %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_34_3();
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:UINT16_MAX overflow nextAlignedIndex\n", "parseAMPDUStatsGlobalContainer", 30166);
    }
  }

  *v0 = v3;
  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unknown AMPDU stat type %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Bad read at index %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::parseChanStatsGlobalContainer()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfoIf(v1, 0x2000000000uLL, "[dk] %s@%d:parseChanStatsGlobalContainer\n", "parseChanStatsGlobalContainer", 29449);
}

{
  OUTLINED_FUNCTION_21_3();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Buffer not aligned\n", "parseChanStatsGlobalContainer", 29451);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unknown channel stat type %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_21_3();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Unexpected Version\n", "parseChanStatsGlobalContainer", 29470);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logInfoIf(v1, 0x2000000000uLL, "[dk] %s@%d:parseChanStatsGlobalContainer: index %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_21_3();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Bad chanCntrHdr\n", "parseChanStatsGlobalContainer", 29469);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYEcounter()
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Buffer not aligned\n", "parsePHYEcounter", 31218);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unknown phy ecounter version %d\n", "parsePHYEcounter", 31243, v3);
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
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:Payload invalid or too small %u\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYCalEcounter()
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Buffer not aligned\n", "parsePHYCalEcounter", 31717);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unknown phycal ecounter version %d\n", "parsePHYCalEcounter", 31733, v3);
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
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:Payload too small %u\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parseDTIMEcounter()
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:DTIMEcounter: Unexpected Version\n", "parseDTIMEcounter", 28819);
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:DTIMEcounter: Unexpected Version\n", "parseDTIMEcounter", 28825);
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:DTIMEcounter: Unexpected length\n", "parseDTIMEcounter", 28826);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parseV30CntContainer()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Buffer not aligned\n", "parseV30CntContainer", 29198);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:tag id %d Not implemented \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing reportUcodeCntPerSlice\n", "parseV30CntContainer", 29377);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error updating SliceUcodeStatistics\n", "parseV30CntContainer", 29382);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:parseV30CntContainer TLV on slice 2 ignored\n", "parseV30CntContainer", 29371);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing reportUcodeCntPerSlice\n", "parseV30CntContainer", 29357);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error updating SliceUcodeStatistics\n", "parseV30CntContainer", 29362);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:parseV30CntContainer TLV on slice 2\n", "parseV30CntContainer", 29351);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:tag id %d Not implemented \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Failed to parse Event Log Record xtlv %x\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error updateSliceUcodeRxErr\n", "parseV30CntContainer", 29320);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error updateSliceUcodeRxErr\n", "parseV30CntContainer", 29309);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing reportOmiCntPerSlice\n", "parseV30CntContainer", 29296);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing reportHeCntPerSlice\n", "parseV30CntContainer", 29281);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing reportUcodeCntPerSlice\n", "parseV30CntContainer", 29263);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error updating SliceUcodeStatistics\n", "parseV30CntContainer", 29267);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing reportUcodeCntPerSlice\n", "parseV30CntContainer", 29243);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error updating SliceUcodeStatistics\n", "parseV30CntContainer", 29247);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing reportWlCntPerSlice\n", "parseV30CntContainer", 29222);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error parsing updateExtraRxCounters\n", "parseV30CntContainer", 29226);
}

{
  OUTLINED_FUNCTION_34_3();
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:safe_align_up failed\n", "parseV30CntContainer", 29411);
    }
  }

  *v0 = v3;
  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v1, 0x2000000000uLL, "[dk] %s@%d:parseV30CntContainer: index %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_34_3();
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v6 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v6, "[dk] %s@%d:UINT16_MAX overflow nextAlignedIndex\n", "parseV30CntContainer", 29412);
    }
  }

  *v0 = v3;
  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:parseV30CntContainer: Invalid tag id %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_184();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Bad read at index %d size %d\n", "parseV30CntContainer", 29201, v3, v4);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Failed to parse Event Log Record xtlv %x\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::reportSlicesScanPwrStatsAtLinkup()
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

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0();
  if (!(*(v3 + 1952))() || ((*(*v1 + 1952))(v1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_201();
      OUTLINED_FUNCTION_225(&_mh_execute_header, &_os_log_default, v4, "%c [dk] %s@%d: Insufficient buf sized scan_stats_data %ld to hold payload", v5, v6, v7, v8, v12, v13, v14, v15);
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
      result = CCLogStream::logAlert(v11, "[dk] %s@%d:Insufficient buf sized scan_stats_data %ld to hold payload", "reportSlicesScanPwrStatsAtLinkup", 42531, 148);
    }
  }

  *v0 = v2;
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
      result = CCLogStream::logAlert(v11, "[dk] %s@%d:Received NULL pointer\n", "reportSlicesScanPwrStatsAtLinkup", 42530);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to allocate scan_stats_data buf", "reportSlicesScanPwrStatsAtLinkup", 42527);
}

uint64_t AppleBCMWLANCore::reportSlicesScanPwrStats()
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

{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5_0();
  if (!(*(v3 + 1952))() || ((*(*v1 + 1952))(v1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_201();
      OUTLINED_FUNCTION_225(&_mh_execute_header, &_os_log_default, v4, "%c [dk] %s@%d: Insufficient buf sized scan_stats_data %ld to hold payload", v5, v6, v7, v8, v12, v13, v14, v15);
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
      result = CCLogStream::logAlert(v11, "[dk] %s@%d:Insufficient buf sized scan_stats_data %ld to hold payload", "reportSlicesScanPwrStats", 42614, 148);
    }
  }

  *v0 = v2;
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
      result = CCLogStream::logAlert(v11, "[dk] %s@%d:Received NULL pointer\n", "reportSlicesScanPwrStats", 42613);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to allocate scan_stats_data buf", "reportSlicesScanPwrStats", 42610);
}

uint64_t AppleBCMWLANCore::reportSlicesScanPwrStats6E()
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
      result = CCLogStream::logEmergency(v1, "[dk] %s@%d:sizeof(wl_pwr_scan_6E_stats_t) %ld cnt->getLength() %d\n", "reportSlicesScanPwrStats6E", 42751, 24, Length);
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

uint64_t AppleBCMWLANCore::parsePerPeerLeafStats()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unknown peer stat type %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v1, 0x2000000000uLL, "[dk] %s@%d:parsePeerStatsGlobalContainer: index %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_21_3();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Bad payloadStart\n", "parsePerPeerLeafStats", 29729);
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Bad peerStatsHdr\n", "parsePerPeerLeafStats", 29712);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parseSoftAPClientLeafStats()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unknown peer stat type %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v1, 0x2000000000uLL, "[dk] %s@%d:parsePeerStatsGlobalContainer: index %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_21_3();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Bad payloadStart\n", "parseSoftAPClientLeafStats", 29791);
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Bad peerStatsHdr\n", "parseSoftAPClientLeafStats", 29774);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parsePeerStatsGlobalContainer()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfoIf(v1, 0x2000000000uLL, "[dk] %s@%d:parsePeerStatsGlobalContainer\n", "parsePeerStatsGlobalContainer", 29840);
}

{
  OUTLINED_FUNCTION_21_3();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Buffer not aligned\n", "parsePeerStatsGlobalContainer", 29842);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unknown peer stat type %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_25_3();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_168();
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:Failed to parse Event Log Record xtlv %x\n", "parsePeerStatsGlobalContainer", 29887, v6);
    }
  }

  *v0 = v1;
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:safe_align_up failed\n", "parsePeerStatsGlobalContainer", 29893);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfoIf(v1, 0x2000000000uLL, "[dk] %s@%d:parsePeerStatsGlobalContainer: index %d\n", v3, v4, v5);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:UINT16_MAX overflow nextAlignedIndex\n", "parsePeerStatsGlobalContainer", 29894);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_21_3();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Bad peerStatsHdr\n", "parsePeerStatsGlobalContainer", 29869);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_21_3();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Bad xtlvContainerPayload\n", "parsePeerStatsGlobalContainer", 29859);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_21_3();
  result = (*(v3 + 1952))();
  if (result)
  {
    (*(*v1 + 1952))(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = (*(*v1 + 1952))(v1);
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Bad payloadStart\n", "parsePeerStatsGlobalContainer", 29855);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::convertInfraGenericStatisticsToApple80211Counters()
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
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:ivars->fApStaInterface->setInterfaceChipCounters failed\n", "convertInfraGenericStatisticsToApple80211Counters", 30312);
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
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:ivars->fApStaInterface->setInterfaceMIBdot11 failed\n", "convertInfraGenericStatisticsToApple80211Counters", 30314);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:kAPPLE80211InterfaceIdSoftAP soft AP does not exist\n", "convertInfraGenericStatisticsToApple80211Counters", 30318);
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
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:fP2PNANDataInterface->setInterfaceChipCounters failed\n", "convertInfraGenericStatisticsToApple80211Counters", 30297);
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
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:fP2PNANDataInterface->setInterfaceMIBdot11 failed\n", "convertInfraGenericStatisticsToApple80211Counters", 30299);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:kAPPLE80211InterfaceIdNANData nan data interface does not exist\n", "convertInfraGenericStatisticsToApple80211Counters", 30303);
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
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:fP2PNANMgmtDataInterface->setInterfaceChipCounters failed\n", "convertInfraGenericStatisticsToApple80211Counters", 30283);
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
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:fP2PNANMgmtDataInterface->setInterfaceMIBdot11 failed\n", "convertInfraGenericStatisticsToApple80211Counters", 30285);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:kAPPLE80211InterfaceIdNAN nan interface does not exist\n", "convertInfraGenericStatisticsToApple80211Counters", 30289);
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
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:fProximityInterface->setInterfaceChipCounters failed\n", "convertInfraGenericStatisticsToApple80211Counters", 30268);
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
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:fProximityInterface->setInterfaceMIBdot11 failed\n", "convertInfraGenericStatisticsToApple80211Counters", 30270);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:kAPPLE80211InterfaceIdAWDL awdl interface does not exist\n", "convertInfraGenericStatisticsToApple80211Counters", 30274);
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
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:ivars->fInfraSkywalkInterface->setInterfaceChipCounters failed\n", "convertInfraGenericStatisticsToApple80211Counters", 30256);
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
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:ivars->fInfraSkywalkInterface->setInterfaceMIBdot11 failed\n", "convertInfraGenericStatisticsToApple80211Counters", 30258);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:kAPPLE80211InterfaceIdSTA infra interface is not exist\n", "convertInfraGenericStatisticsToApple80211Counters", 30260);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unhandled interfaceIndex %d\n", v3, v4, v5);
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
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:Failed to allocate alignedCounters\n", "convertInfraGenericStatisticsToApple80211Counters", 30224);
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
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:Failed to allocate tx err buffer\n", "convertInfraGenericStatisticsToApple80211Counters", 30221);
    }
  }

  *v0 = v2;
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
      return CCLogStream::logEmergency(v3, "[dk] %s@%d:Failed to allocate mib buffer\n", "convertInfraGenericStatisticsToApple80211Counters", 30218);
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
      return CCLogStream::logEmergency(v3, "[dk] %s@%d:Failed to allocate tx buffer\n", "convertInfraGenericStatisticsToApple80211Counters", 30215);
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
      return CCLogStream::logEmergency(v3, "[dk] %s@%d:Failed to allocate rx buffer\n", "convertInfraGenericStatisticsToApple80211Counters", 30212);
    }
  }

  return result;
}

void AppleBCMWLANCore::convertInfraSpecificStatisticsToApple80211Counters()
{
  OUTLINED_FUNCTION_16_5();
  if ((*(v1 + 1952))())
  {
    (*(*v0 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      v2 = (*(*v0 + 1952))(v0);
      CCLogStream::logEmergency(v2, "[dk] %s@%d:ivars->fInfraSkywalkInterface->setFrameStats failed\n", "convertInfraSpecificStatisticsToApple80211Counters", 30380);
    }
  }

  OUTLINED_FUNCTION_2();
}

uint64_t AppleBCMWLANCore::convertInfraSpecificStatisticsToApple80211Counters()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Infra interface is not existing %d\n", "convertInfraSpecificStatisticsToApple80211Counters", 30382, 30382);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Failed to allocate buffer\n", "convertInfraSpecificStatisticsToApple80211Counters", 30363);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to create aligned infraSpecificStats data\n", "convertInfraSpecificStatisticsToApple80211Counters", 30356);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:NO INTER %s %d\n", "convertInfraSpecificStatisticsToApple80211Counters", 30337, "IOReturn AppleBCMWLANCore::convertInfraSpecificStatisticsToApple80211Counters(OSData *, apple80211_interface_id_t)", 30337);
}

void AppleBCMWLANCore::convertInfraSpecificHeStatisticsToApple80211Counters()
{
  OUTLINED_FUNCTION_16_5();
  if ((*(v1 + 1952))())
  {
    (*(*v0 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      v2 = (*(*v0 + 1952))(v0);
      CCLogStream::logEmergency(v2, "[dk] %s@%d:ivars->fInfraSkywalkInterface->setFrameStats failed\n", "convertInfraSpecificHeStatisticsToApple80211Counters", 30423);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  OUTLINED_FUNCTION_16_5();
  if ((*(v1 + 1952))())
  {
    (*(*v0 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      v2 = (*(*v0 + 1952))(v0);
      CCLogStream::logEmergency(v2, "[dk] %s@%d:Failed to allocate alignedCounters\n", "convertInfraSpecificHeStatisticsToApple80211Counters", 30406);
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
      CCLogStream::logEmergency(v3, "[dk] %s@%d:Failed to allocate buffer\n", "convertInfraSpecificHeStatisticsToApple80211Counters", 30405);
    }
  }

  AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(v0);
}

uint64_t AppleBCMWLANCore::convertInfraSpecificHeStatisticsToApple80211Counters()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Infra interface is not existing %d\n", "convertInfraSpecificHeStatisticsToApple80211Counters", 30425, 30425);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:NO INTER %s %d\n", "convertInfraSpecificHeStatisticsToApple80211Counters", 30394, "IOReturn AppleBCMWLANCore::convertInfraSpecificHeStatisticsToApple80211Counters(OSData *, apple80211_interface_id_t)", 30394);
}

void AppleBCMWLANCore::convertInfraControlManagementStatisticsToApple80211Counters()
{
  OUTLINED_FUNCTION_16_5();
  if ((*(v1 + 1952))())
  {
    (*(*v0 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      v2 = (*(*v0 + 1952))(v0);
      CCLogStream::logEmergency(v2, "[dk] %s@%d:ivars->fApStaInterface->setFrameStats failed\n", "convertInfraControlManagementStatisticsToApple80211Counters", 30514);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  OUTLINED_FUNCTION_16_5();
  if ((*(v1 + 1952))())
  {
    (*(*v0 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      v2 = (*(*v0 + 1952))(v0);
      CCLogStream::logEmergency(v2, "[dk] %s@%d:ivars->fP2PNANDataInterface->setFrameStats failed\n", "convertInfraControlManagementStatisticsToApple80211Counters", 30508);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  OUTLINED_FUNCTION_16_5();
  if ((*(v1 + 1952))())
  {
    (*(*v0 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      v2 = (*(*v0 + 1952))(v0);
      CCLogStream::logEmergency(v2, "[dk] %s@%d:ivars->fP2PNANMgmtDataInterface->setFrameStats failed\n", "convertInfraControlManagementStatisticsToApple80211Counters", 30503);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  OUTLINED_FUNCTION_16_5();
  if ((*(v1 + 1952))())
  {
    (*(*v0 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      v2 = (*(*v0 + 1952))(v0);
      CCLogStream::logEmergency(v2, "[dk] %s@%d:ivars->fProximityInterface->setFrameStats failed\n", "convertInfraControlManagementStatisticsToApple80211Counters", 30497);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  OUTLINED_FUNCTION_16_5();
  if ((*(v1 + 1952))())
  {
    (*(*v0 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      v2 = (*(*v0 + 1952))(v0);
      CCLogStream::logEmergency(v2, "[dk] %s@%d:ivars->fInfraSkywalkInterface->setFrameStats failed\n", "convertInfraControlManagementStatisticsToApple80211Counters", 30488);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  OUTLINED_FUNCTION_11_9();
  if ((*(v3 + 1952))())
  {
    (*(*v2 + 1952))(v2);
    if (CCLogStream::shouldLog())
    {
      v4 = (*(*v2 + 1952))(v2);
      CCLogStream::logEmergency(v4, "[dk] %s@%d:Failed to allocate buffer\n", "convertInfraControlManagementStatisticsToApple80211Counters", 30450);
    }
  }

  *v1 = -536870212;
  AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(v0);
}

uint64_t AppleBCMWLANCore::convertInfraControlManagementStatisticsToApple80211Counters()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:kAPPLE80211InterfaceIdSTA %d Infra interface is not exist\n", "convertInfraControlManagementStatisticsToApple80211Counters", 30491, 30491);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unhandled interfaceIndex %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_7_13();
  if ((*(v2 + 1952))())
  {
    (*(*v1 + 1952))(v1);
    if (CCLogStream::shouldLog())
    {
      v4 = (*(*v1 + 1952))(v1);
      CCLogStream::logEmergency(v4, "[dk] %s@%d:Failed to allocate alignedCounters\n", "convertInfraControlManagementStatisticsToApple80211Counters", 30447);
    }
  }

  OUTLINED_FUNCTION_275();
  return v0 & 1;
}

uint64_t AppleBCMWLANCore::parsePHYEcounterV1()
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Buffer not aligned\n", "parsePHYEcounterV1", 30582);
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Unexpected Version\n", "parsePHYEcounterV1", 30586);
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
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:Payload invalid or too small %u\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYEcounterV2()
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Buffer not aligned\n", "parsePHYEcounterV2", 30620);
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Unexpected Version\n", "parsePHYEcounterV2", 30624);
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
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:Payload invalid or too small %u\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYEcounterV3()
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Buffer not aligned\n", "parsePHYEcounterV3", 30699);
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Unexpected Version\n", "parsePHYEcounterV3", 30703);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v13 = v0[14];
  v14 = v0[15];
  v11 = v0[12];
  v12 = v0[13];
  OUTLINED_FUNCTION_25_1();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:gbdBphySleepCnt=%u gbdOfdmSleepCnt=%u homeChan=0x%x scca_txstall_precondition=%u, crsminPwrApplyCnt=%u edThreshold=%d preemptStatus2=0x%04x totalGlitch=%u bphyGlitch=%u badplcp=%d bphyBadplcp=%u\n", "parsePHYEcounterV3", 30725, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:ccaDurMS=%d ccaEdDuration=%u crsminPwr0=%d noiseLevelInst0=%d crsminPwr1=%d noiseLevelInst1=%d", "parsePHYEcounterV3", 30730, *(v0 + 64), *(v0 + 68), *(v0 + 72), *(v0 + 73), *(v0 + 74), *(v0 + 75));
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
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:Payload invalid or too small %u\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYEcounterV4()
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Buffer not aligned\n", "parsePHYEcounterV4", 30751);
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Unexpected Version\n", "parsePHYEcounterV4", 30755);
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
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:Payload invalid or too small %u\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYEcounterV5()
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Buffer not aligned\n", "parsePHYEcounterV5", 30882);
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Unexpected Version\n", "parsePHYEcounterV5", 30886);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_141();
  v18 = *(v0 + 28);
  v19 = *(v0 + 179);
  v16 = v2;
  v17 = v3;
  v14 = v4;
  v15 = *(v0 + 24);
  OUTLINED_FUNCTION_25_1();
  return CCLogStream::logAlert(v5, "[dk] %s@%d: Version = %u, ChanSpec=0x%04x, noise_req=%u, noise_crsbit=%u, cal_counter=%u, rxchain=%u, chiptemp=%d, femtemp=%d, btcx_mode=%d,  ltecx_mode=%d, weakest_rssi=%d, chan_switch_cnt=%u, sc_dccal_incc_cnt=%u\n", "parsePHYEcounterV5", 31006, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v14 = *(v0 + 160);
  v15 = *(v0 + 170);
  v12 = *(v0 + 144);
  v13 = *(v0 + 146);
  v10 = *(v0 + 76);
  v11 = *(v0 + 84);
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: gbd_ofdm_desense=%u, gbd_bphy_desense=%u, featureflag=%u, crsmin_pwr_apply_cnt=%u, preempt_status2=%u, ed_crs_status=%u, measurehold=%u, ocl_disable_reqs=%u,  gci_rst_tx= %u, gci_rst_rx=%u, gci_rst_sc=%u, asym_intf_stats=%u\n", "parsePHYEcounterV5", 31011, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v10 = *(v0 + 217);
  v11 = *(v0 + 245);
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: asym_intf_avg_noise[0/1]= [%d, %d], asym_intf_latest_noise[0/1]=[%d, %d], pwridx_init[0/1]=[%u, %u], baseindxval[0/1]=[%u, %u]\n", "parsePHYEcounterV5", 31016, v4, v5, v6, v7, v8, v9, v10, v11);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v12 = v0[219];
  v13 = v0[247];
  v10 = v0[218];
  v11 = v0[246];
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: estpwradj[0/1]=[%d, %d], ed_threshold[0/1]=[%d, %d], crsmin_pwr_idx[0/1]=[%u, %u], crsmin_pwr[0/1]=[%d, %d], noise_level_inst[0/1]=[%d, %d]\n", "parsePHYEcounterV5", 31022, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
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
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:Payload invalid or too small %u\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYEcounterV7()
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Buffer not aligned\n", "parsePHYEcounterV7", 31057);
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Unexpected Version\n", "parsePHYEcounterV7", 31061);
    }
  }

  *v0 = v2;
  return result;
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_141();
  v18 = *(v0 + 28);
  v19 = *(v0 + 138);
  v16 = v2;
  v17 = v3;
  v14 = v4;
  v15 = *(v0 + 24);
  OUTLINED_FUNCTION_25_1();
  return CCLogStream::logAlert(v5, "[dk] %s@%d: Ver=%u, Chan=0x%04x, noise_req=%u, noise_crsbit=%u, cal_counter=%u, rxchain=%u, chiptemp=%d, femtemp=%d, btcx_mode=%d,  ltecx_mode=%d, weakest_rssi=%d, chan_switch_cnt=%u, sc_dccal_incc_cnt=%u\n", "parsePHYEcounterV7", 31179, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v11 = *(v0 + 80);
  v12 = *(v0 + 124);
  v9 = *(v0 + 46);
  v10 = *(v0 + 76);
  v7 = *(v0 + 44);
  v8 = *(v0 + 48);
  OUTLINED_FUNCTION_126();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: gbd_desense[ofdm:%d, bphy:%d], featureflag=%u, crsmin_pwr_apply_cnt=%u, preempt_status2=%u, ed_crs_status=%u,  measurehold=%u, ocl_disable_reqs=%u, asym_intf_stats=%u\n", "parsePHYEcounterV7", 31184, v4, v5, v6, v7, v8, v9, v10, v11, v12);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v12 = *(v0 + 265);
  v13 = *(v0 + 313);
  v10 = *(v0 + 261);
  v11 = *(v0 + 309);
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: asym_intf_avg_noise[0/1]= [%d, %d], asym_intf_latest_noise[0/1]=[%d, %d], pwridx_init[0/1]=[%u, %u], baseindxval[0/1]=[%u, %u], estpwradj[0/1]=[%d, %d]\n", "parsePHYEcounterV7", 31190, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  v11 = *(v0 + 263);
  v12 = *(v0 + 311);
  OUTLINED_FUNCTION_25_1();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: obss_cur_det_bitmap=0x%x, ed_threshold[0/1]=[%d, %d], crsmin_pwr_idx[0/1]=[%u, %u], crsmin_pwr[0/1]=[%d, %d], noise_level_inst[0/1]=[%d, %d]\n", "parsePHYEcounterV7", 31196, v4, v5, v6, v7, v8, v9, v10, v11, v12);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_126();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: LTECX TxBlanking --> msg12_rx_cnt = %u, 40m_timeout_cnt = %u, blanked_duration = %u\n", "parsePHYEcounterV7", 31198, v3, v4, v5);
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
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:Payload invalid or too small %u\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYCalEcounterV1()
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Buffer not aligned\n", "parsePHYCalEcounterV1", 31261);
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Unexpected Version\n", "parsePHYCalEcounterV1", 31265);
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
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:Payload too small %u\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYCalEcounterV2()
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Buffer not aligned\n", "parsePHYCalEcounterV2", 31358);
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Unexpected Version\n", "parsePHYCalEcounterV2", 31362);
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
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:Payload too small %u\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::parsePHYCalEcounterV3()
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Buffer not aligned\n", "parsePHYCalEcounterV3", 31515);
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Unexpected Version\n", "parsePHYCalEcounterV3", 31519);
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
      result = CCLogStream::logAlert(v1, "[dk] %s@%d:Payload too small %u\n", v6, v7, v8);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::issueIfCounterIOVar()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:issueIfCounterIOVar feature is not supported\n", "issueIfCounterIOVar", 32252);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:if_counters command failed reason: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::issueIfCounterIOVar(uint64_t a1, uint64_t a2, void *a3, _DWORD *a4)
{
  OUTLINED_FUNCTION_5_5();
  result = (*(v8 + 1952))();
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v10 = (*(*a1 + 1952))(a1);
      result = CCLogStream::logAlert(v10, "[dk] %s@%d:Bad payload\n", "issueIfCounterIOVar", 32315);
    }
  }

  *a4 = -536870212;
  *a3 = a2;
  return result;
}

uint64_t AppleBCMWLANCore::issueIfCounterIOVar(AppleBCMWLANCommandWithXTLV *a1)
{
  return AppleBCMWLANCommandWithXTLV::addXTLV(a1, 1283, 0, 0);
}

{
  return AppleBCMWLANCommandWithXTLV::addXTLV(a1, 1284, 0, 0);
}

uint64_t AppleBCMWLANCore::handleIssueIfCounterIOVarAsyncCallback()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: if_counters IOVAR failed, error %s\n", v5, v6, v7);
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Bad payload\n", "handleIssueIfCounterIOVarAsyncCallback", 32238);
    }
  }

  *v0 = v2;
  return result;
}

uint64_t AppleBCMWLANCore::getTRAP_INFO()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unknown trap info type %d\n", "getTRAP_INFO", 32460, v3);
}

uint64_t AppleBCMWLANCore::getWIFI_NOISE_PER_ANT()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: phy_noise_ant Failed \n", "getWIFI_NOISE_PER_ANT", 32503);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:phy_noise_ant: not supported on this chip\n", "getWIFI_NOISE_PER_ANT", 32507);
}

uint64_t AppleBCMWLANCore::getMIMO_STATUS()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to collect MIMO PS Status values \n", "getMIMO_STATUS", 32576);
}

uint64_t AppleBCMWLANCore::getSIB_COEX_STATUS()
{
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_29_5();
  (*(v3 + 1952))();
  v4 = OUTLINED_FUNCTION_77();
  ClassNameHelper = getClassNameHelper(v4);
  return CCLogStream::logInfo(v2, "[dk] %s@%d:%s::%s getting sib coex mode %d , timeToTST %d\n", "getSIB_COEX_STATUS", 32718, ClassNameHelper, "getSIB_COEX_STATUS", *v1, *v0);
}

uint64_t AppleBCMWLANCore::dbgSuppressScans()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  v3 = "Allowing scans";
  if (v0)
  {
    v3 = "Suppressing scans";
  }

  return CCLogStream::logAlert(v2, "[dk] %s@%d:[%s]: %s %s\n", "dbgSuppressScans", 32802, "dbgSuppressScans", v3, "success");
}

uint64_t AppleBCMWLANCore::setLQM_CONFIG()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Enhanced trigger disconnect is not enabled. Interval change not allowed\n", "setLQM_CONFIG", 32822);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Failed to update fECountersUpdateIntervalSeconds %s\n", v5, v6, v7);
}

uint64_t ___ZN16AppleBCMWLANCore13setLQM_CONFIGEP23apple80211_lqm_config_t_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_116();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Setting ECounter update interval to: %d\n", "setLQM_CONFIG_block_invoke", 32846, v3);
}

uint64_t AppleBCMWLANCore::configureLqmRssiUpdates()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to setup rssi events: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureLqmChanQUpdates()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_233();
  v12 = v1[1406];
  v13 = v1[1407];
  v10 = v1[1404];
  v11 = v1[1405];
  OUTLINED_FUNCTION_24_4();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Setting rate_limit_msec: %d hysterisis: %d bounds: %d,%d,%d,%d,%d,%d,%d,%d \n", "configureLqmChanQUpdates", 41058, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Error: setting up chq_event fail: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::checkBackToBackHostScans()
{
  OUTLINED_FUNCTION_11_4();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, v2);
}

uint64_t AppleBCMWLANCore::isScanAllowed()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: [%s]: Scans suppressed\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d:Device not yet associated\n", "isScanAllowed", 33120);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d:BT is busy with a call\n", "isScanAllowed", 33137);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logNoticeIf(v1, 0x40uLL, "[dk] %s@%d:Device is in low signal area, Rssi %d and could potentially roam\n", "isScanAllowed", 33150, v3);
}

uint64_t AppleBCMWLANCore::setSCAN_CONTROL()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  v3 = "OFF";
  if (v0[1])
  {
    v4 = "OFF";
  }

  else
  {
    v4 = "ON";
  }

  if (v0[2])
  {
    v5 = "OFF";
  }

  else
  {
    v5 = "ON";
  }

  if (v0[3])
  {
    v3 = "ON";
  }

  return CCLogStream::logAlert(v2, "[dk] %s@%d:Abort scan %d, ePnoScans %s, roamScans %s, limitedRoam %s\n", "setSCAN_CONTROL", 33215, *v0, v4, v5, v3);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: ERROR: setSCAN_CONTROL is taking more time %06llu\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::setOFFLOAD_ARP()
{
  OUTLINED_FUNCTION_8_7();
  (*(v0 + 1952))();
  IO80211_io80211isSensitiveInfoAllowed();
  IO80211_io80211isSensitiveInfoAllowed();
  IO80211_io80211isSensitiveInfoAllowed();
  IO80211_io80211isSensitiveInfoAllowed();
  IO80211_io80211isSensitiveInfoAllowed();
  v1 = IO80211_io80211isSensitiveInfoAllowed();
  return OUTLINED_FUNCTION_228(v1, "[dk] %s@%d: Router MAC address for ARP = %02X:%02X:%02X:%02X:%02X:%02X\n", v2, v3, v4, v5, v6, v7, v9, v10);
}

uint64_t AppleBCMWLANCore::setOFFLOAD_NDP()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Too Many IPV6 Addresses, MAX Limit is %d \n", "setOFFLOAD_NDP", 33341, 4);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Number of IPv6 addresses %d\n", "setOFFLOAD_NDP", 33369, v3);
}

uint64_t AppleBCMWLANCore::resetAutoCountry()
{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_125();
  AppleBCMWLANConfigManager::isEnhancedLocaleEnabled(*(v2 + 5464));
  OUTLINED_FUNCTION_167();
  return CCLogStream::logNotice(v0, "[dk] %s@%d:EnhancedLocaleEnabled: %d, HostCountry:%d, ivars->fDefaultCountryCode:%s, ivars->fCurrentHostCountryCode:%s\n", "resetAutoCountry", 33484, v3, v5, v6, v4);
}

uint64_t AppleBCMWLANCore::setupRestrictedCountryCode()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v4 = v3(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d: %s: disable ccode_pr_2g command failed: %s\n", "setupRestrictedCountryCode", 33511, "setupRestrictedCountryCode", v4);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v4 = v3(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d: %s: disable autocountry command failed: %s\n", "setupRestrictedCountryCode", 33520, "setupRestrictedCountryCode", v4);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v4 = v3(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d: %s: enable passive_on_restricted command failed: %s\n", "setupRestrictedCountryCode", 33528, "setupRestrictedCountryCode", v4);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v4 = v3(v2);
  return CCLogStream::logAlert(v0, "[dk] %s@%d: %s: disable country_default command failed: %s\n", "setupRestrictedCountryCode", 33536, "setupRestrictedCountryCode", v4);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_125();
  v3 = (v2 + 6740);
  isEnhancedLocaleEnabled = AppleBCMWLANConfigManager::isEnhancedLocaleEnabled(*(v2 + 5464));
  return CCLogStream::logNotice(v0, "[dk] %s@%d:Strict regulatory settings applied: ivars->fRestrictedCountryCode:%s EnhancedLocaleEnabled: %d\n", "setupRestrictedCountryCode", 33555, v3, isEnhancedLocaleEnabled);
}

uint64_t AppleBCMWLANCore::setupRestrictedCountryCode(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_0_8();
  v6 = (*(v5 + 1952))();
  v7 = (*a3 + 6740);
  OUTLINED_FUNCTION_81_0();
  v9 = (*(v8 + 112))(v3, 3825172766);
  return CCLogStream::logAlert(v6, "[dk] %s@%d: Error: Unsupported country %s, error: %s\n", "setupRestrictedCountryCode", 33544, v7, v9);
}

uint64_t AppleBCMWLANCore::setupCountryCode()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: iovar set passive_on_restricted command failed: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: iovar set country_default command failed: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: iovar set country_default command failed: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Failed to restore autocountry setting : %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_247();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:WiFiCC : HostCountry:%d, ivars->fDefaultCountryCode:%s, ivars->fCurrentHostCountryCode:%s\n", "setupCountryCode", 33642, v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_8();
  v2 = (*(v1 + 1952))();
  OUTLINED_FUNCTION_180();
  v5 = (v3 + v4);
  OUTLINED_FUNCTION_81_0();
  v7 = (*(v6 + 112))(v0, 3825172766);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: Unsupported country %s, error: %s\n", "setupCountryCode", 33606, v5, v7);
}

uint64_t AppleBCMWLANCore::setWCL_ASSOCIATE()
{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  v4 = authtypelower2str(*(v1 + 16));
  v5 = authtypeupper2str(*(v1 + 20), *(v1 + 24));
  v6 = ciphertype2str(*(v1 + 72));
  v7 = *(v1 + 480);
  v8 = ", Instant Hotspot";
  if ((v7 & 2) == 0)
  {
    v8 = "";
  }

  if ((v7 & 4) != 0)
  {
    v9 = ", Auto Instant Hotspot";
  }

  else
  {
    v9 = "";
  }

  return CCLogStream::logCrit(v3, "[dk] %s@%d: [%s]: lowerAuth = %s, upperAuth = %s, key = %s %s %s.\n", "setWCL_ASSOCIATE", 33775, v0, v4, v5, v6, v8, v9);
}

uint64_t AppleBCMWLANCore::createNANInterface()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:No driver support for NAN, skipping interface creation\n", "createNANInterface", 33971);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s creation of nan1 data interface\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Failed to create NAN Data interface\n", "createNANInterface", 34011);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s creation of nan0 interface\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: Failed to create NAN Mgmt interface\n", "createNANInterface", 33989);
}

uint64_t AppleBCMWLANCore::setVIRTUAL_IF_CREATE()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:AWDL VIRTUAL_IF_CREATE is rejected due to boot-args wlan.dk.awdl=0\n", "setVIRTUAL_IF_CREATE", 34052);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: create virtif role %u\n", "setVIRTUAL_IF_CREATE", 34093, v3);
}

{
  OUTLINED_FUNCTION_5_6();
  v2 = (*(v1 + 1952))();
  OUTLINED_FUNCTION_5_0();
  v4 = (*(v3 + 160))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:WARNING: <%s> already created role %u\n", "setVIRTUAL_IF_CREATE", 34104, v4, *v0);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v2 + 1952))();
  OUTLINED_FUNCTION_125();
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(v3 + 11304));
  InterfaceRole = IO80211SkywalkInterface::getInterfaceRole(*(*v0 + 11304));
  return CCLogStream::logAlertIf(v1, 0x5000080400uLL, "[dk] %s@%d: Created Virtual interface id %lu role %lu\n", "setVIRTUAL_IF_CREATE", 34149, InterfaceId, InterfaceRole);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to create AP STA Interface role %u\n", "setVIRTUAL_IF_CREATE", 34114, v3);
}

uint64_t AppleBCMWLANCore::setIBSS_MODE()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: [%s]: Tearing down AWDL before bringing up adhoc\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: [%s]: Tearing down NAN before bringing up adhoc\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: [%s]: Tearing down NDI before bringing up adhoc\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: [%s]: Bring AWDL up after tearing down adhoc\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: [%s]: Bring NAN up after tearing down adhoc\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: [%s]: Bring NDI up after tearing down adhoc\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: [%s]: Bring AWDL up after tearing down adhoc\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: [%s]: Bring NAN up after tearing down adhoc\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: [%s]: Bring NDI up after tearing down adhoc\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::powerOff()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_112();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Userland LPAS [%d] , Associated sleep LPAS [%d], fStateFlags(%lx) userPower(%s)\n", "powerOff", 39454, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Conflicting power transitions.\n", "powerOff", 39483);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: already powering off!\n", "powerOff", 39480);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: during initialization !!\n", "powerOff", 39493);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: driver uninititalized\n", "powerOff", 39498);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: Failed to get AssociatedSleep/UnAssociatedSleep Duration Values \n", "powerOff", 39524);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Failed to get power stats during sleep for LPSC \n", "powerOff", 39532);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_112();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: posting APPLE80211_M_DRIVER_AVAILABLE, available[%u] reason[0x%08x] sub_reason[0x%08x] minor_reason[0x%08x]\n", "powerOff", 39542, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Failed to clear event WLC_E_COUNTRY_CODE_CHANGED : %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Unable to quiesce AWDL: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Unable to quiesce NAN: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Unable to quiesce NDI: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure Private MAC Address for Scans \n", "powerOff", 39694);
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

  return CCLogStream::logAlert(v1, "[dk] %s@%d:Quiesce commander ivars->fStateFlags(%lx) userPower(%s)\n", "powerOff", 39812, v2, v6);
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

  return CCLogStream::logAlert(v1, "[dk] %s@%d:Wakeup commander ivars->fStateFlags(%lx) userPower(%s)\n", "powerOff", 39817, v2, v6);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v1 + 1952))();
  v7 = *(*v0 + 19852);
  v8 = *(*v0 + 10376);
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Disabling WoW, system hibernating, hibstate[%08x], ivars->fUserSpacePowerState[%08x] ivars->fStateFlags[%08x]\n", v4, v5, v6, v7, v8);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Sending disconnect command failed %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unsuccessful requesting WLAN to wake host\n", "powerOff", 39875);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Associated & WoW enabled, WiFi will remain up\n", "powerOff", 39892);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Low Power Associated Sleep Enabled\n", "powerOff", 39890);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Waiting for watchdog to complete\n", "powerOff", 39906);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Timed out waiting for driver to reset itself: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_73_0();
  if (!v6 & v5)
  {
    v7 = "UNKNOWN";
  }

  else
  {
    v7 = off_1003D0E30[v4];
  }

  return CCLogStream::logAlert(v2, "[dk] %s@%d:Quiesce commander ivars->fStateFlags(%lx) userPower(%s) hibernating[%u]\n", "powerOff", 39926, v3, v7, v0);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_186();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Ready to power off%s\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WD Failed while in powerOff. Save me!\n", "powerOff", 39981);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Last watchdog failed, max retries performed, waiting for panic\n", "powerOff", 39988);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: already powered off!\n", "powerOff", 39488);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:NO INTER %s %d\n", "powerOff", 39464, "IOReturn AppleBCMWLANCore::powerOff(BOOL)", 39464);
}

uint64_t AppleBCMWLANCore::setPOWER()
{
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_29_5();
  (*(v2 + 1952))();
  v8 = *(v0 + 8);
  v9 = *(*(v1 + 72) + 10376);
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v3, "[dk] %s@%d: [%s]: Setting power state to %u. stateFlags(%lx)\n", v5, v6, v7, v8, v9);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:  driver not initialized or watchdog running; setPOWER request deferred\n", "setPOWER", 34417);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d: Forced host trapping firmware\n", "setPOWER", 34442);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Failed to resume-poweron AWDL link: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Failed to resume-poweron NAN link: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Failed to resume-poweron NDI link: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: IOKit power off. Discarding request.\n", "setPOWER", 34413);
}

uint64_t AppleBCMWLANCore::setWCL_SET_ROAM_LOCK()
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
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:pSetRoamLock is null\n", "setWCL_SET_ROAM_LOCK", 34543);
    }
  }

  *v0 = 22;
  return result;
}

uint64_t AppleBCMWLANCore::writeEventBitField()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to setup event handling: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setExtendedEventBit()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Error: Unable to set event_mgs_ext, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::resetExtendedEventBit()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Error: Unable to set event_mgs_ext, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setRESET_CHIP()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logEmergency(v2, "[dk] %s@%d:This call to setRESET_CHIP will not actually reset the chip! isTrap=%u, isUserspaceReset=%u, calling message %s", "setRESET_CHIP", 35265, 0, 0, v0);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Exiting setRESET_CHIP after calling FaultReport with kFaultActionFullCapture", "setRESET_CHIP", 35291);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:This call to setRESET_CHIP will not actually reset the chip nor collect CoreCapture! Forwarding to dbgTriggerWatchdog()", "setRESET_CHIP", 35283);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:This call to setRESET_CHIP will not actually reset the chip nor collect CoreCapture! returning ENODEV, calling message %s", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::getChanSpec()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Warning Failed to parse requested channel, channel %d is out range \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::setDBG_GUARD_TIME_PARAMS()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: Setting debug guard time params failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setLEAKY_AP_STATS_MODE()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v0, "[dk] %s@%d: ERROR: Setting leaky_ap_stats, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setTHERMAL_INDEX()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logInfo(v2, "[dk] %s@%d:CLTM Index: %d\n", "setTHERMAL_INDEX", 35465, *(v0 + 4));
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:TVPM capability is missing for this chipset/FW\n", "setTHERMAL_INDEX", 35468);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v0, "[dk] %s@%d: Error: Unable to set CLTM Index: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:setTHERMAL_INDEX is called with an out-of-range value %d\n", "setTHERMAL_INDEX", 35474, v3);
}

uint64_t AppleBCMWLANCore::setPOWER_BUDGET()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logInfo(v2, "[dk] %s@%d:PPM Index: %d\n", "setPOWER_BUDGET", 35507, *(v0 + 4));
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:TVPM capability is missing for this chipset/FW\n", "setPOWER_BUDGET", 35510);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v0, "[dk] %s@%d: Error: Unable to set PPM Index: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:setPOWER_BUDGET is called with an out-of-range value %d\n", "setPOWER_BUDGET", 35516, v3);
}

uint64_t AppleBCMWLANCore::setTXPOWER()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: qtxpower override 2 failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setUSB_HOST_NOTIFICATION()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logCrit(v2, "[dk] %s@%d:%s seqNum %d pres %d chg %d\n", "setUSB_HOST_NOTIFICATION", 35581, "setUSB_HOST_NOTIFICATION", v0[1], v0[3], v0[2]);
}

uint64_t AppleBCMWLANCore::setRATE()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: bg_rate override 1 failed, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: bg_rate override 2 failed, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: bg_rate override 3 failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureWoWTestModeEntry()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Failure to setup event handling for WLC_E_WAKE_EVENT, %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Failure to send 'wake_event' iovar, %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: WoW test mode: Firmware will send a WAKE EVENT in %ld seconds  \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::setVendorIE()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:ERROR: vndr_ie error %s - failed to delete existing IE\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:ERROR: vndr_ie error %s - failed to add IE\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logWarn(v1, "[dk] %s@%d:WARNING: vendor IE information overrun max allowed %u\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logWarn(v1, "[dk] %s@%d:WARNING: vendor IE information overrun max allowed %u\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logWarn(v1, "[dk] %s@%d:WARNING: vendor IE information overrun max allowed %u\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::setIE()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s: Invalid input association data parameters, bailing ie_len %d\n", "setIE", 35891, "setIE", *v0);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: NULL input association data parameters, bailing\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::printLogOnDeadlock()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Dumping IPC stats before assert\n", "printLogOnDeadlock", 35956);
}

uint64_t AppleBCMWLANCore::setSWDIV_RX_POLICY()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: swdiv_rx_policy failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setSWDIV_TX_POLICY()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: swdiv_tx_policy failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setSWDIV_CELL_POLICY()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: swdiv_cell_policy failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setMWS_NGC_COEX_BITMAPS()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: 5gwifi_coex_bitmap failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setMWS_NGC_TimerGranularity()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: 5gwifi_timer_granularity failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setMWS_NGC_ACTIVITY_LEVEL_THRESHOLDS()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: 5gwifi_activity_level_threshold failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setMWS2GWiFiType7Bitmap()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:Configured 2G WiFi Type7 bitmap Failure, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ltecx cmd alloc fail\n", "setMWS2GWiFiType7Bitmap", 36329);
}

uint64_t AppleBCMWLANCore::setMWS2GWiFiType7Bitmap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_8();
  (*(v5 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v6 = OUTLINED_FUNCTION_172();
  v8 = v7(v6);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Configured 2G WiFi Type7 bitmap Success with %s, 0x%x\n", "setMWS2GWiFiType7Bitmap", 36369, v8, *(*a3 + 31084));
}

uint64_t AppleBCMWLANCore::setMWSCoexBitmapsWiFiEnh()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:Configured MWS WiFiEnh COEX iovar Failure, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_1_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_4_6();
  v2 = OUTLINED_FUNCTION_118();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Configured MWS WiFiEnh COEX iovar Success with %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ltecx cmd (MWSCoexBitmapsWiFiEnh) alloc failed\n", "setMWSCoexBitmapsWiFiEnh", 36396);
}

uint64_t AppleBCMWLANCore::setOCLCoexBitmapsWiFiEnh()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:Configured OCL WiFiEnh COEX iovar Failure, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_1_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_4_6();
  v2 = OUTLINED_FUNCTION_118();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Configured OCL WiFiEnh COEX iovar Success with %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ltecx cmd (OCLCoexBitmapsWiFiEnh) alloc failed\n", "setOCLCoexBitmapsWiFiEnh", 36475);
}

uint64_t AppleBCMWLANCore::setWiFiType7BitmapsWiFiEnh()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:Configured WiFiType7 WiFiEnh COEX iovar Failure, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_1_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_4_6();
  v2 = OUTLINED_FUNCTION_118();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Configured WiFiType7 WiFiEnh COEX iovar Success with %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ltecx cmd (WiFiType7BitmapsWiFiEnh) alloc failed\n", "setWiFiType7BitmapsWiFiEnh", 36555);
}

uint64_t AppleBCMWLANCore::setWiFiType4BlankingBitmapsWiFiEnh()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:Configured WiFi Type4 Blanking WiFiEnh COEX iovar Failure, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_1_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_4_6();
  v2 = OUTLINED_FUNCTION_118();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Configured WiFi Type4 Blanking WiFiEnh COEX iovar Success with %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ltecx cmd (WiFiType4BlankingBitmapsWiFiEnh) alloc failed\n", "setWiFiType4BlankingBitmapsWiFiEnh", 36634);
}

uint64_t AppleBCMWLANCore::setWiFiType4BlankingModeBitmapsWiFiEnh()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:Configured WiFi Type4 Blanking Mode WiFiEnh COEX iovar Failure, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_1_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_4_6();
  v2 = OUTLINED_FUNCTION_118();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Configured WiFi Type4 Blanking Mode WiFiEnh COEX iovar Success with %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ltecx cmd (WiFiType4BlankingModeBitmapsWiFiEnh) alloc failed\n", "setWiFiType4BlankingModeBitmapsWiFiEnh", 36713);
}

uint64_t AppleBCMWLANCore::setWiFiRfemConfigBitmapWiFiEnh()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:Configured WiFi rFEM Config WiFiEnh COEX iovar Failure, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_1_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_4_6();
  v2 = OUTLINED_FUNCTION_118();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Configured WiFi rFEM Config WiFiEnh COEX iovar Success with %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ltecx cmd (setWiFiRfemConfigBitmapWiFiEnh) alloc failed\n", "setWiFiRfemConfigBitmapWiFiEnh", 36796);
}

uint64_t AppleBCMWLANCore::setWiFiAssocProtectionConfigBitmapWiFiEnh()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:Configured WiFi Assoc Protection Config WiFiEnh COEX iovar Failure, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_1_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_4_6();
  v2 = OUTLINED_FUNCTION_118();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Configured WiFi Assoc Protection Config WiFiEnh COEX iovar Success with %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ltecx cmd (setWiFiAssocProtectionConfigBitmapWiFiEnh) alloc failed\n", "setWiFiAssocProtectionConfigBitmapWiFiEnh", 36894);
}

uint64_t AppleBCMWLANCore::setSCAN_FREQ_CHANNELS()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: mws_scanreq_bm failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setLTE_TDD_CHANNELS()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: mws_tscoex_bitmap failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setANTENNA_SELECTION()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: mws_antenna_selection failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setANTENNA_SELECTION_V2()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: mws_antenna_selection_2nd failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setANTENNA_SELECTION_V3_WiFiEnh()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_12_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid band index (%d) for WiFi Antenna Selection WiFiEnh COEX iovar.\n", "setANTENNA_SELECTION_V3_WiFiEnh", 37074, v3);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:Configured WiFi Antenna Selection WiFiEnh COEX iovar Failure, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_1_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_4_6();
  v2 = OUTLINED_FUNCTION_118();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Configured WiFi Antenna Selection WiFiEnh COEX iovar Success with %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ltecx cmd (WiFiAntennaSelectionBitmapsWiFiEnh) alloc failed\n", "setANTENNA_SELECTION_V3_WiFiEnh", 37026);
}

uint64_t AppleBCMWLANCore::setWlanRxProt()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: mws_wlanrx_prot failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setWCI2TxInd()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: wci2_txind failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setScanJoinProt()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: mws_scanjoin_prot failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setAutoProtParams()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: mws_autoprot_params failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setMwsFrameConfig()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: mws_frame_config failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setWCI2TxEnvelopeIndEnable()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: wci2_tx_envelope_ind_2g failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setWCI2TxEnvelopeIdleTimeout()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: mws_tx_envelope_idle_timer failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setWCI2TxInd5G()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: wci2_txind_5g failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setWiFiConditionIdBitmapsWiFiEnh()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:Configured WiFi conditin id bm WiFiEnh COEX iovar Failure, error %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_1_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_4_6();
  v2 = OUTLINED_FUNCTION_118();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Configured WiFi condition id bm WiFiEnh COEX iovar Success with %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ltecx cmd (setWiFiConditionIdBitmapsWiFiEnh) alloc failed\n", "setWiFiConditionIdBitmapsWiFiEnh", 37259);
}

uint64_t AppleBCMWLANCore::setWCI2TxDurThresh()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: wci2_txdur_thresh failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setmwsActiveScanThrottle()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: mws_active_scan_throttle failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setmwsActiveScanThrottleDwellTime()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: mws_active_dwell_time failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setGPIOTxEnvelopeInd()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d: gpio_tx_envelope_ind failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::setBTCOEX_PROFILE()
{
  OUTLINED_FUNCTION_11_9();
  result = (*(v4 + 1952))();
  if (result)
  {
    (*(*v2 + 1952))(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      (*(*v2 + 1952))(v2);
      OUTLINED_FUNCTION_59_0();
      v6 = OUTLINED_FUNCTION_136();
      v7(v6);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logCrit(v3, "[dk] %s@%d:BTC_PROFILE failed, error %s\n", v8, v9, v10);
    }
  }

  *v0 = v1;
  return result;
}

uint64_t AppleBCMWLANCore::setRANGING_ENABLE()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Receive disable ranging before ranging ended, stop ranging!", "setRANGING_ENABLE", 37692);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Ranging %s\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: %s:%u fProximityInterface not initialized, bailing out\n", v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: %s:%u fProximityInterface not initialized, bailing out\n", v3, v4, v5, v6);
}

uint64_t AppleBCMWLANCore::setRANGING_START_V3()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logNotice(v2, "[dk] %s@%d:%s: request->start=%d\n", "setRANGING_START_V3", 37780, "setRANGING_START_V3", *(v0 + 4));
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to config proxd ftm: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to set awdl_ftm_ranging_config : %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to start ranging : %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_210();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: fEnableOnDemandProxdDumpLogging=%d fEnableProxdRssiFiltering=%d\n", "setRANGING_START_V3", 38001, v3, v4);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: %s:%u fProximityInterface not initialized, bailing out\n", v3, v4, v5, v6);
}

uint64_t AppleBCMWLANCore::setRANGING_START_V4()
{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logNotice(v2, "[dk] %s@%d:%s: request->start=%d\n", "setRANGING_START_V4", 38036, "setRANGING_START_V4", *(v0 + 4));
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to config proxd ftm: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to start ranging : %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_210();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: fEnableOnDemandProxdDumpLogging=%d fEnableProxdRssiFiltering=%d\n", "setRANGING_START_V4", 38241, v3, v4);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: %s:%u fProximityInterface not initialized, bailing out\n", v3, v4, v5, v6);
}

uint64_t AppleBCMWLANCore::setRANGING_START()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_113();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ranging already %s", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::setRANGING_AUTHENTICATE()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to config proxd ftm: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ERROR: %s:%u fProximityInterface not initialized, bailing out\n", v3, v4, v5, v6);
}

uint64_t AppleBCMWLANCore::HandleShutdownGated()
{
  OUTLINED_FUNCTION_10_5();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:AppleBCMWLANCore[%u] [%p]\n", "HandleShutdownGated", 38578, 38578, v0);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_110();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:AdjustBusy(-1) busystate %u, fAdjustBusyCnt %u\n", "HandleShutdownGated", 38587, v3, v4);
}

uint64_t AppleBCMWLANCore::SetPowerState_Impl()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:DK: SetPowerState Core %u\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:DK: SetPowerState Core %u complete retval %#x\n", "SetPowerState_Impl", 38719, v0, *(*v1 + 24));
}

uint64_t AppleBCMWLANCore::SetPowerStateGated(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_11_4();
  v6 = (*(v5 + 1952))();
  return CCLogStream::logNotice(v6, "[dk] %s@%d: powerState %u, fStateFlags 0x%lx\n", "SetPowerStateGated", 38778, a3, *(*(v3 + 72) + 10376));
}

uint64_t AppleBCMWLANCore::SetPowerStateGated()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: Already powered on, ignoring\n", "SetPowerStateGated", 38819);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d: Already powered off, ignoring\n", "SetPowerStateGated", 38800);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Bad Power State %u\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_68_0();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Received power state change before driver has initialized, ignoring 0x%08x\n", "SetPowerStateGated", 38784, v3);
}

uint64_t ___ZN16AppleBCMWLANCore18SetPowerState_ImplEj_block_invoke_2284_cold_1()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:Trigger powerOn Skywalk interfaces\n", "SetPowerState_Impl_block_invoke", 38724);
}

uint64_t AppleBCMWLANCore::powerOffSystem()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:System Sleep request before Driver has initialized, waiting\n", "powerOffSystem", 39332);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_68_0();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: Unavailable (0x%lX), waiting...\n", "powerOffSystem", 39341, v3);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logNotice(v0, "[dk] %s@%d: Timed out waiting for driver to reset itself: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: : Powering Off and sleeping\n", "powerOffSystem", 39356);
}

uint64_t AppleBCMWLANCore::powerOnSystem()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_68_0();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: Dongle not yet initialized, deferring 0x%08x\n", "powerOnSystem", 38863, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Last watchdog aborted, inducing another watchdog\n", "powerOnSystem", 38869);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: : Powering On\n", "powerOnSystem", 38878);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: post BLACKLIST_NETWORK\n", "powerOnSystem", 38896);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: : Powered On\n", "powerOnSystem", 38906);
}

uint64_t AppleBCMWLANCore::watchdogFailed()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Last watchdog failed, max retries performed, bailing out\n", "watchdogFailed", 45077);
}

uint64_t AppleBCMWLANCore::allowLinkup()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to turn off Link Up filtering %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed SET IOCTL, cret[0x%08x]\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::resetPorts()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure Active Ports\n", "resetPorts", 50421);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::collectScanForwardStats()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:sendIOVarGet failed, ret[0x%08x]\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:sendIOVarGet failed for spmi_scan_fwd, ret[0x%08x]\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to allocate buffer for scan forward stats\n", "collectScanForwardStats", 62419);
}

uint64_t AppleBCMWLANCore::processPowerStatsChangesInSleep()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Failure to get power stats changes, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureAssociatedSleepExit()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure WoW in F/W\n", "configureAssociatedSleepExit", 44087);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure LPAS in F/W\n", "configureAssociatedSleepExit", 44082);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Configuring Beacon drift mitigation params to FW Active mode\n", "configureAssociatedSleepExit", 44095);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to enable EBT in F/W\n", "configureAssociatedSleepExit", 44139);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlertIf(v1, 0x20uLL, "[dk] %s@%d:Failed to Exit MIMO Power Save\n", "configureAssociatedSleepExit", 44148);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to disable Beacon offload\n", "configureAssociatedSleepExit", 44155);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure Associated Sleep Mode\n", "configureAssociatedSleepExit", 44162);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::systemWokenByWiFi()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:kern.wakereason: '%s'\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::systemWokenByWiFi(uint64_t a1, uint64_t a2, const char *a3)
{
  OUTLINED_FUNCTION_11_4();
  v6 = (*(v5 + 1952))();
  v7 = *(v3 + 72);
  if (v7)
  {
    LODWORD(v7) = *(v7 + 8824);
  }

  return CCLogStream::logAlert(v6, "[dk] %s@%d:rv[0x%08x] len[%3u], kern.wakereason: '%s', type[0x%08x]\n", "systemWokenByWiFi", 44771, -1, 255, a3, v7);
}

uint64_t AppleBCMWLANCore::setWiFiWakeType()
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Can't set WiFiWakeType[0x%08x]", v4, v5, v6);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendTxPowerCapValueToFirmware()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_68_0();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Deferring send Tx Power Cap Value to Firmware due to ivars->fStateFlags 0x%x\n", "sendTxPowerCapValueToFirmware", 53210, v3);
}

uint64_t AppleBCMWLANCore::resetRangingState()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to reset ranging state\n", "resetRangingState", 51670);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:resetRangingState %d infra interface is not exist\n", "resetRangingState", 51686, 51686);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Posted ranging abort event\n", "resetRangingState", 51688);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:NO INTER %s %d\n", "resetRangingState", 51659, "IOReturn AppleBCMWLANCore::resetRangingState(IOReturn)", 51659);
}

uint64_t AppleBCMWLANCore::configureAssociatedSleepEntry()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Userland LPAS [%d] , Associated sleep [%d] \n", "configureAssociatedSleepEntry", 43626, *(*v0 + 6728), *(*v0 + 777));
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure WoW in F/W\n", "configureAssociatedSleepEntry", 43661);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Configuring Beacon drift mitigation params to FW WoW Mode\n", "configureAssociatedSleepEntry", 43666);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d: Configuring Beacon drift mitigation params to FW LPAS mode \n", "configureAssociatedSleepEntry", 43648);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d: Configuring Beacon mute mitigation params to FW LPAS mode \n", "configureAssociatedSleepEntry", 43652);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to disable EBT in F/W\n", "configureAssociatedSleepEntry", 43674);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to enable Beacon Offload in F/W\n", "configureAssociatedSleepEntry", 43682);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure LPAS in F/W\n", "configureAssociatedSleepEntry", 43644);
}

uint64_t AppleBCMWLANCore::configureEventBitMaskForUnAssociatedSleep()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Failure to clear WLC_E_CCA_CHAN_QUAL/WLC_E_SCAN_COMPLETE events from the event mask, %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::resetWoWStateMachine()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::resetPktFilterParams()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::configureWeightAvgLQMUpdates()
{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_112();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Weighted Averge %s Conf: NumTotal=%d, NumRecent=%d, WeightRecent=%d%%\n", "configureWeightAvgLQMUpdates", 40971, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Firmware does not support weighted average LQM\n", "configureWeightAvgLQMUpdates", 40958);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Error - Fail to configure weighted average LQM\n", "configureWeightAvgLQMUpdates", 40963);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Allocation Failure for Weighted Average LQM config\n", "configureWeightAvgLQMUpdates", 40944);
}

uint64_t AppleBCMWLANCore::setL3CtrlTxProfile(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  OUTLINED_FUNCTION_0_8();
  v5 = (*(v4 + 1952))();
  LODWORD(a3) = *a3;
  OUTLINED_FUNCTION_81_0();
  v6 = OUTLINED_FUNCTION_172();
  v8 = v7(v6);
  return CCLogStream::logAlert(v5, "[dk] %s@%d: Reliable L3 control frames tx_profile iovar command %d: %s \n", "setL3CtrlTxProfile", 41572, a3, v8);
}

uint64_t AppleBCMWLANCore::enablePTKKeyBuffer()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: Unable to set iovar buf_key_b4_m4 %x\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics()
{
  OUTLINED_FUNCTION_9_10();
  *v2 = v1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if (*(v3 + 1952))() && ((*(*v0 + 1952))(v0), (CCLogStream::shouldLog()))
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_98_0();
  }
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41786);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41778);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41770);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41762);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41754);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41746);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41738);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41730);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41722);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41714);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41711);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventName\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", 41709);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics()
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41894);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41886);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41878);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41870);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41862);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41854);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41846);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41838);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41830);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41822);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41819);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventName\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", 41817);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics()
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARPerSliceStatsCoreAnalytics", 41990);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARPerSliceStatsCoreAnalytics", 41982);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARPerSliceStatsCoreAnalytics", 41974);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARPerSliceStatsCoreAnalytics", 41966);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARPerSliceStatsCoreAnalytics", 41958);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARPerSliceStatsCoreAnalytics", 41950);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARPerSliceStatsCoreAnalytics", 41942);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendDynSARPerSliceStatsCoreAnalytics", 41934);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendDynSARPerSliceStatsCoreAnalytics", 41931);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventName\n", "sendDynSARPerSliceStatsCoreAnalytics", 41929);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendHostScanStatsCoreAnalytics()
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Scan stats are empty, won't send to CoreAnalytics\n", "sendHostScanStatsCoreAnalytics", 42193);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventName\n", "sendHostScanStatsCoreAnalytics", 42190);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::prepareScanMotionStatsForCA()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Prepared Scan Motion Stats event to CA\n", "prepareScanMotionStatsForCA", 42268);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueHostRejWhileMov\n", "prepareScanMotionStatsForCA", 42265);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyHostRejWhileMov\n", "prepareScanMotionStatsForCA", 42263);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueHostWhileMov\n", "prepareScanMotionStatsForCA", 42259);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyHostWhileMov\n", "prepareScanMotionStatsForCA", 42257);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueLowPrioWhileStat\n", "prepareScanMotionStatsForCA", 42253);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyLowPrioWhileStat\n", "prepareScanMotionStatsForCA", 42251);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueLowPrioWhileMov\n", "prepareScanMotionStatsForCA", 42247);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyLowPrioWhileMov\n", "prepareScanMotionStatsForCA", 42245);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueNormPrioWhileStat\n", "prepareScanMotionStatsForCA", 42241);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyNormPrioWhileStat\n", "prepareScanMotionStatsForCA", 42239);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueNormPrioWhileMov\n", "prepareScanMotionStatsForCA", 42235);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyNormPrioWhileMov\n", "prepareScanMotionStatsForCA", 42233);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueSessionDur\n", "prepareScanMotionStatsForCA", 42229);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keySessionDur\n", "prepareScanMotionStatsForCA", 42227);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventPayload\n", "prepareScanMotionStatsForCA", 42224);
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
      return CCLogStream::logCrit(v3, "[dk] %s@%d:Failed to allocate AppleBCMWLANRoamManager_IVars\n", "prepareScanMotionStatsForCA", 42220);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::prepareScanRoamStatsForCA()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Prepared Scan/Roam event to CA\n", "prepareScanRoamStatsForCA", 42365);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueNumBkToBkScanReqHigh\n", "prepareScanRoamStatsForCA", 42362);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueNumBkToBkScanReqLow\n", "prepareScanRoamStatsForCA", 42356);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyNumBkToBkScanReqLow\n", "prepareScanRoamStatsForCA", 42354);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueNumBkToBkScanReq\n", "prepareScanRoamStatsForCA", 42350);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyNumBkToBkScanReq\n", "prepareScanRoamStatsForCA", 42348);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueNumHostScanLowPrioOR\n", "prepareScanRoamStatsForCA", 42344);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyNumHostScanLowPrioOR\n", "prepareScanRoamStatsForCA", 42342);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueNumHostScanLowLat\n", "prepareScanRoamStatsForCA", 42338);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyNumHostScanLowLat\n", "prepareScanRoamStatsForCA", 42336);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valNumHostScanLowPrio\n", "prepareScanRoamStatsForCA", 42332);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyNumHostScanLowPrio\n", "prepareScanRoamStatsForCA", 42330);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueNumHostScanComp\n", "prepareScanRoamStatsForCA", 42326);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueNumHostScanReq\n", "prepareScanRoamStatsForCA", 42314);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyNumHostScanReq\n", "prepareScanRoamStatsForCA", 42312);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueLocWithinXSecRoam\n", "prepareScanRoamStatsForCA", 42308);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyLocWithinXSecRoam\n", "prepareScanRoamStatsForCA", 42306);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRoamWithinXsec\n", "prepareScanRoamStatsForCA", 42302);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyRoamWithinXsec\n", "prepareScanRoamStatsForCA", 42300);
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
      return CCLogStream::logCrit(v3, "[dk] %s@%d:Failed to allocate AppleBCMWLANRoamManager_IVars\n", "prepareScanRoamStatsForCA", 42298);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::prepareScanRejectStatsForCA()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Prepared Scan Reject Stats event to CA\n", "prepareScanRejectStatsForCA", 42441);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRejBlocked\n", "prepareScanRejectStatsForCA", 42438);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyRejBlocked\n", "prepareScanRejectStatsForCA", 42436);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRejLLSupp\n", "prepareScanRejectStatsForCA", 42432);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyRejLLSupp\n", "prepareScanRejectStatsForCA", 42430);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRejLowRssiRoam\n", "prepareScanRejectStatsForCA", 42426);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyRejLowRssiRoam\n", "prepareScanRejectStatsForCA", 42424);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRejIPRes\n", "prepareScanRejectStatsForCA", 42420);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyRejIPRes\n", "prepareScanRejectStatsForCA", 42418);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRejBusy\n", "prepareScanRejectStatsForCA", 42414);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyRejBusy\n", "prepareScanRejectStatsForCA", 42412);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRejJoin\n", "prepareScanRejectStatsForCA", 42408);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyRejJoin\n", "prepareScanRejectStatsForCA", 42406);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate valueRejLowPrio\n", "prepareScanRejectStatsForCA", 42402);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyRejLowPrio\n", "prepareScanRejectStatsForCA", 42400);
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
      return CCLogStream::logCrit(v3, "[dk] %s@%d:Failed to allocate AppleBCMWLANRoamManager_IVars\n", "prepareScanRejectStatsForCA", 42398);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics()
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42962);
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
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42959);
    }
  }

  *v0 = 0;
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42952);
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
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42949);
    }
  }

  *v0 = 0;
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42942);
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
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42939);
    }
  }

  *v0 = 0;
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42932);
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
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42929);
    }
  }

  *v0 = 0;
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42922);
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
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42919);
    }
  }

  *v0 = 0;
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42909);
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
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42906);
    }
  }

  *v0 = 0;
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42899);
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
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42896);
    }
  }

  *v0 = 0;
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42889);
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
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42886);
    }
  }

  *v0 = 0;
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42879);
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
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42876);
    }
  }

  *v0 = 0;
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42869);
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
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42866);
    }
  }

  *v0 = 0;
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42858);
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
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42855);
    }
  }

  *v0 = 0;
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42848);
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
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42845);
    }
  }

  *v0 = 0;
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42838);
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
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42835);
    }
  }

  *v0 = 0;
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42828);
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
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42825);
    }
  }

  *v0 = 0;
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42818);
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
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42815);
    }
  }

  *v0 = 0;
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
      result = CCLogStream::logAlert(v5, "[dk] %s@%d:Fail to allocate numValue\n", "SendSlicesScanStatsCoreAnalytics", 42806);
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
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Fail to allocate keyString\n", "SendSlicesScanStatsCoreAnalytics", 42804);
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
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Fail to allocate eventPayload\n", "SendSlicesScanStatsCoreAnalytics", 42799);
    }
  }

  *v0 = 0;
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventName\n", "SendSlicesScanStatsCoreAnalytics", 42797);
    }
  }

  return result;
}

void AppleBCMWLANCore::sendePNOEventsCoreAnalytics()
{
  OUTLINED_FUNCTION_33_3();
  if ((*(v1 + 1952))())
  {
    (*(*v0 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      v2 = (*(*v0 + 1952))(v0);
      CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendePNOEventsCoreAnalytics", 43026);
    }
  }

  OUTLINED_FUNCTION_208();
}

{
  OUTLINED_FUNCTION_33_3();
  if ((*(v1 + 1952))())
  {
    (*(*v0 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      v2 = (*(*v0 + 1952))(v0);
      CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendePNOEventsCoreAnalytics", 43017);
    }
  }

  OUTLINED_FUNCTION_208();
}

{
  OUTLINED_FUNCTION_33_3();
  if ((*(v1 + 1952))())
  {
    (*(*v0 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      v2 = (*(*v0 + 1952))(v0);
      CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendePNOEventsCoreAnalytics", 43008);
    }
  }

  OUTLINED_FUNCTION_208();
}

{
  OUTLINED_FUNCTION_33_3();
  if ((*(v1 + 1952))())
  {
    (*(*v0 + 1952))(v0);
    if (CCLogStream::shouldLog())
    {
      v2 = (*(*v0 + 1952))(v0);
      CCLogStream::logAlert(v2, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendePNOEventsCoreAnalytics", 42999);
    }
  }

  OUTLINED_FUNCTION_208();
}

uint64_t AppleBCMWLANCore::sendePNOEventsCoreAnalytics()
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventName\n", "sendePNOEventsCoreAnalytics", 43024);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventName\n", "sendePNOEventsCoreAnalytics", 43015);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventName\n", "sendePNOEventsCoreAnalytics", 43006);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Submitted ePNO event type %d to CA\n", v3, v4, v5);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate valueePNOevent\n", "sendePNOEventsCoreAnalytics", 43033);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventName\n", "sendePNOEventsCoreAnalytics", 42997);
    }
  }

  return result;
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Fail to allocate keyePNOevent\n", "sendePNOEventsCoreAnalytics", 43031);
}

uint64_t AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics()
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43221);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43213);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43205);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43197);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43189);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43181);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43173);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43165);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43157);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43149);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43141);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43133);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43125);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43117);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43109);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43101);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate keyString\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43093);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventPayload\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43090);
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
      return CCLogStream::logAlert(v3, "[dk] %s@%d:Fail to allocate eventName\n", "sendSCTxBlankingStatsEventCoreAnalytics", 43088);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateDynSARSimpleReport()
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
      v6 = (*v1 + (v0 << 6));
      return CCLogStream::logEmergency(v5, "[dk] %s@%d: Overflow detected: non_opt_dur[%llu] pwr_opt_dur[%llu] fail_safe_dur[%llu] no_mute_dur[%llu] hybrid_dur[%llu] txdc_throttle_dur[%llu] pwr_opt_txdc_throttle_dur[%llu]\n", "updateDynSARSimpleReport", 43268, v6[593], v6[594], v6[595], v6[596], v6[597], v6[598], v6[599]);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::configureLPASEntry()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to enable LPAS mode in F/W\n", "configureLPASEntry", 43751);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure LPAS Packet Filters\n", "configureLPASEntry", 43783);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::configureWoWEntry()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Configuring NAT/CarPlay/VPN Keep-Alives Not Supported\n", "configureWoWEntry", 43890);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure NAT/CarPlay/VPN Keep Alives\n", "configureWoWEntry", 43892);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure Pkt Filters\n", "configureWoWEntry", 43898);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to UnConfigure Pkt Filters\n", "configureWoWEntry", 43901);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::configureAssociatedSleepEntryParams()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to turn on Link Up filtering: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: rval[0x%08x], fAssociatedbeforeSleep[%u] -> true, fPowerSaveMode[%u]\n", v3, v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::configureLPASMode()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v2 + 1952))();
  v3 = OUTLINED_FUNCTION_12_1();
  IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(v3, 26);
  v5 = AppleBCMWLANCore::featureFlagIsBitSet(v0, 70);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: rval[0x%08x], supported[%u] concurrency[%u] softAP[%u] fLPASEnabledBeforeSleep[%u] fPowerSaveMode[%u]\n", "configureLPASMode", 50458, 0, IsBitSet, v5, (*(*(v0 + 9) + 19801) >> 2) & 1, *(*(v0 + 9) + 777), *(*(v0 + 9) + 6724));
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Failure to configure LPAS in FW: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::configureLPASMode(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_0_8();
  (*(v5 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v6 = OUTLINED_FUNCTION_172();
  v8 = v7(v6);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: LPAS request in FW: %s %d \n", "configureLPASMode", 50485, v8, *a3);
}

uint64_t AppleBCMWLANCore::configurePktFilters()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Lost Link while configuring Packet Filters\n", "configurePktFilters", 50071);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to get packet filter data\n", "configurePktFilters", 50091);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure Legacy Unicast Filter\n", "configurePktFilters", 50157);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure IPv4 Pkt Filter ID %d\n", "configurePktFilters", 50118, 102);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to Configure Max Num of Pkt Filters\n", "configurePktFilters", 50130);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure IPv6 Pkt Filter %d\n", "configurePktFilters", 50137, 107);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Added %s Filters\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure Magic Packet Filter %d at offset %d\n", "configurePktFilters", 50178, 104, 14);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_9_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure Magic Packet Filter %d\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure Active Ports, Disable Port Filtering and rely on IP Filtering\n", "configurePktFilters", 50211);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to turn on IP packet filter: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unicast IPv4 filter enabled (ID=%d)\n", "configurePktFilters", 50232, 102);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to turn on ARP Offload\n", "configurePktFilters", 50238);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: ARP Offload enabled\n", "configurePktFilters", 50242);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Enabled the 'ICMP' packet filter\n", "configurePktFilters", 50261);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Neighbor Discovery Offload Enabled in F/W\n", "configurePktFilters", 50268);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Enabled IPv6 Pkt Filters\n", "configurePktFilters", 50272);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to turn on IPv6 packet filter: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logNotice(v2, "(ID=%d) \n", v0);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to turn on Magic packet filter: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Enabled WOMP filter  (ID=%d) (ID=%d)\n", "configurePktFilters", 50292, 104, 105);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Enable WoWEapolFilter\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to turn on EAPOL filter: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to turn on Magic packet filter: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: WOMP Magic Packet filter enabled (ID=%d)  \n", "configurePktFilters", 50310, 104);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to allocate packet filter buffer\n", "configurePktFilters", 50078);
}

uint64_t AppleBCMWLANCore::unConfigurePktFilters()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure Active Ports\n", "unConfigurePktFilters", 50328);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to turn off IPv4 packet filter: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d: Disabled IPv4 packet filter\n", "unConfigurePktFilters", 50338);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d: Disabled ARP Offload:\n", "unConfigurePktFilters", 50345);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d: Disabled the 'ICMP' packet filter\n", "unConfigurePktFilters", 50350);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to turn off IPv6 packet filter: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Disabling WoWEapolFiter\n", "unConfigurePktFilters", 50361);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to turn off magic packet filter: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::initialize6GCapabilities()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlertIf(v1, 0x4000uLL, "[dk] %s@%d:%s WiFiRoam : 6GHz configuration not allowed\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlertIf(v1, 0x4000uLL, "[dk] %s@%d:%s WiFiRoam : 6GHz configuration IS allowed\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::configureAvgRssiParamsForAssociatedSleepEntry()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Associated to IBSS, Bailout\n", "configureAvgRssiParamsForAssociatedSleepEntry", 55794);
}

uint64_t AppleBCMWLANCore::resetClockDrifts()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to reset drift stats\n", "resetClockDrifts", 44646);
}

uint64_t AppleBCMWLANCore::updateInactivityAndSleepCounters()
{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logInfo(v3, "[dk] %s@%d:Most recent traffic inactivity duration = %llu, Accumulated = %llu \n", "updateInactivityAndSleepCounters", 55631, v0 - *(*v1 + 17712), *(*v1 + 17728));
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Most recent LPAS/WoW duration = %llu Accumulated = %llu \n", "updateInactivityAndSleepCounters", 55625, v0 - *(*v1 + 17720), *(*v1 + 17736));
}

uint64_t AppleBCMWLANCore::configureAvgRssiParamsForAssociatedSleepExit()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Associated to IBSS, Bailout\n", "configureAvgRssiParamsForAssociatedSleepExit", 55823);
}

uint64_t AppleBCMWLANCore::configureLPASExit()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_10_5();
  (*(v1 + 1952))();
  v2 = OUTLINED_FUNCTION_12_1();
  AppleBCMWLANCore::featureFlagIsBitSet(v2, 26);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: LPAS supported[%u]\n", v4, v5, v6);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to disable LPAS mode in F/W\n", "configureLPASExit", 44199);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to UnConfigure Pkt Filters\n", "configureLPASExit", 44205);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::configureWoWExit()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to UnConfigure Keep-Alives\n", "configureWoWExit", 44251);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to UnConfigure Pkt Filters\n", "configureWoWExit", 44264);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::configureAssociatedSleepExitParams()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to turn off Link Up filtering %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to release Events\n", "configureAssociatedSleepExitParams", 44326);
}

{
  OUTLINED_FUNCTION_5_6();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_232();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: rval[0x%08x], fAssociatedbeforeSleep[%u] -> false, fPowerSaveMode[%u]\n", v3, v4, v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::timeSinceLastActivity_abs(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_19_6();
  result = (*(v8 + 1952))();
  if (result)
  {
    (*(*v6 + 1952))(v6);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v10 = (*(*v6 + 1952))(v6);
      result = CCLogStream::logEmergency(v10, "[dk] %s@%d: Overflow detected, now_abs[%llu] ivars->fLastLinkActivity_abs[%llu]\n", "timeSinceLastActivity_abs", 44804, *v5, *(*v4 + 6536));
    }
  }

  *a4 = 0;
  return result;
}

uint64_t AppleBCMWLANCore::captureRequestCallback()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Problem reported from corecapture: %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Faulter Reporter is busy!\n", "captureRequestCallback", 45490);
}

uint64_t AppleBCMWLANCore::setLogFlagsCallback()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Setting loggerstream flags to 0x%llX\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::getFeatures()
{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logInfoIf(v3, 0x80uLL, "[dk] %s@%d:[WiFiTimeSync] ptmMode = %d supported features = 0x%x\n", "getFeatures", 45960, *(*v1 + 30088), v0);
}

uint64_t AppleBCMWLANCore::getCHANNELS_INFO()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_198();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Querying FW as number of chanspecs is %d, current CC %s\n", "getCHANNELS_INFO", 46077, v3, v4);
}

uint64_t AppleBCMWLANCore::getCOUNTRY_BAND_SUPPORT()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logInfo(v1, "[dk] %s@%d: %s WiFiMC : Country supports 6GHz\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::handleGetChanSpecs()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Error: cannot get chanspecs: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logNoticeIf(v3, 0x4000000400uLL, "[dk] %s@%d:Num chanspecs in response: %d, Saved: %d\n", "handleGetChanSpecs", 46214, *v1, v0);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_139();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiCC : Writing current FW country code [%s] to fChanListQueriedForCountryCode\n", "handleGetChanSpecs", 46235, v3);
}

uint64_t AppleBCMWLANCore::get6GTxPowerFromFW()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Invalid power mode %d\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::handleGetCountryListAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Failed to retrieve country code list from firmware: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:No valid data\n", "handleGetCountryListAsyncCallBack", 46593);
}

uint64_t AppleBCMWLANCore::handleGet6ECountryListAsyncCallBack()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Failed to retrieve country code list from firmware: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_15_4();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiCC : Total # of 6E supported countries in CLM: %d\n", "handleGet6ECountryListAsyncCallBack", 46628, v3);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d:No valid data\n", "handleGet6ECountryListAsyncCallBack", 46623);
}

uint64_t AppleBCMWLANCore::getGUARD_INTERVAL()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v0, "[dk] %s@%d:nrate failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::getPOWER_DEBUG_INFO()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logNotice(v1, "[dk] %s@%d: Failed to get PM/MPC Duration Values, retrieving Cached Values \n", "getPOWER_DEBUG_INFO", 47498);
}

uint64_t AppleBCMWLANCore::collectOPSEBTStatus()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Collect OPS Stats\n", "collectOPSEBTStatus", 48103);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Collect EBT Status\n", "collectOPSEBTStatus", 48121);
}

uint64_t AppleBCMWLANCore::getActivePortsFromNetworkStack()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to get packet filter data\n", "getActivePortsFromNetworkStack", 48296);
}

{
  OUTLINED_FUNCTION_5_6();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:%s: Number of active ports - %d networking %d arr size %lu \n", "getActivePortsFromNetworkStack", 48305, "getActivePortsFromNetworkStack", *(*v1 + 10300), *v0, 128);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: is enabled but there are no active ports in the system, falling back to legacy WoW \n", "getActivePortsFromNetworkStack", 48315);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to allocate packet filter buffer\n", "getActivePortsFromNetworkStack", 48283);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:ivars->fInfraSkywalkInterface is null\n", "getActivePortsFromNetworkStack", 48235);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::configureActivePortsInToChip()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Failed to configure Packet Port List : %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::configureMaxPktFilter()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::configureComplexFilters()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_5_5();
  v3 = (*(v2 + 1952))();
  v4 = *v0;
  v5 = *(*v0 + 10040);
  v6 = my_ip6_sprintf((v4 + 16 * v1 + 9524));
  return CCLogStream::logAlert(v3, "[dk] %s@%d: Added complex filter: ipv6 filterType[%u] index[%u], addr count[%u] '%s'\n", "configureComplexFilters", 48638, 107, v1, v5, v6);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::configureComplexFilters(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  OUTLINED_FUNCTION_11_4();
  v6 = (*(v5 + 1952))();
  my_ip6_sprintf((*(v3 + 72) + 16 * a3 + 9524));
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v6, "[dk] %s@%d:IPv6 address %s\n", v8, v9, v10);
}

uint64_t AppleBCMWLANCore::configureEapolFilter()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Configuring WoWEapolFilter\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: pkt_filter_add failed to set packet filter: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::configureMagicPktFilter()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s: Failed to get magic pattern data (%d)\n", "configureMagicPktFilter", 48713, "configureMagicPktFilter", v0);
}

{
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_5_5();
  v3 = (*(v2 + 1952))();
  return CCLogStream::logAlert(v3, "[dk] %s@%d:Magic pattern(%d) length - %d\n", "configureMagicPktFilter", 48729, v1, *(v0 + 42 * v1 + 4));
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: pkt_filter_add failed to set packet filter: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::configureMagicPktFilter(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  OUTLINED_FUNCTION_29_5();
  (*(v7 + 1952))();
  v8 = OUTLINED_FUNCTION_77();
  ClassNameHelper = getClassNameHelper(v8);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:%s::%s():invalid parameters %d %u\n", "configureMagicPktFilter", 48750, ClassNameHelper, "configureMagicPktFilter", *(*a3 + 19848), a4);
}

uint64_t AppleBCMWLANCore::configureLegacyFilters()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to set IP address packet filter: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Added Unicast IP filter \n", "configureLegacyFilters", 48806);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::enablePacketFilters()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Lost Link while enabling Packet Filters\n", "enablePacketFilters", 48821);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::disablePacketFilters()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::deleteIPv6PktFilters()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to delete Unicast IPv6 address packet filter: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::deleteIPv4PktFilters()
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
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed SET IOCTL, cret[0x%08x]\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::deleteEapolFilter()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: deleting WoWEapolFilter\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed SET IOCTL, cret[0x%08x]\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::deleteMagicPktFilters()
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
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed SET IOCTL, cret[0x%08x]\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed SET IOCTL, cret[0x%08x]\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::resetWoWConfig()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to enable EBT in F/W\n", "resetWoWConfig", 49019);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d: Deleted IPv4/IPv6 and Magic packet filters\n", "resetWoWConfig", 49025);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::resetOffloads()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::configureICMP()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::isIPv6AlreadyProgrammed()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::configureARPOffload()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to turn on ARP monitoring: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed SET IOCTL, cret[0x%08x]\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s: Failed to get protocol offload data (%d)\n", "configureARPOffload", 49124, "configureARPOffload", v0);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Unable to program IP address for ARP filtering: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::configureNeighbourDiscovery()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to configure HOST IPs for Neighbor Discovery\n", "configureNeighbourDiscovery", 49320);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::clearHostIPv6TableForNeighbourDiscovery()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Failed to Clear IPV6 addresses from to IPV6 Table %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::configureHostIPsForNeighbourDiscovery()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_2_7();
  v2 = (*(v1 + 1952))();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s: Failed to get protocol offload data (%d)\n", "configureHostIPsForNeighbourDiscovery", 49341, "configureHostIPsForNeighbourDiscovery", v0);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Failed to add IPV6 address in to IPV6 Table %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::getNeighbourDiscoveryStats()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Failure to get Neighbour Discovery status: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Failed collect Neighbor Discovery Stats %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::ignoreUnicastPackets()
{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d:Failed to configure Packet Port  0 : %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_5_5();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x8000000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::disableECounters()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:setEcountersEnableStateSync fail =(0x%x) from disableECounters\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::enableECounters()
{
  OUTLINED_FUNCTION_2_7();
  (*(v0 + 1952))();
  OUTLINED_FUNCTION_11_3();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:setEcountersEnableStateSync fail =(0x%x) from enableECounters\n", v3, v4, v5);
}

uint64_t AppleBCMWLANCore::enableECountersV2()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to set ecounters V2: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::enableECountersV1()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to set ecounters: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::disableECountersV1()
{
  OUTLINED_FUNCTION_0_9();
  (*(v1 + 1952))();
  OUTLINED_FUNCTION_3_5();
  v2 = OUTLINED_FUNCTION_16_2();
  v3(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v0, "[dk] %s@%d: Error: Unable to set ecounters: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANCore::configureEventLogShrinkStats()
{
  OUTLINED_FUNCTION_5_5();
  v1 = (*(v0 + 1952))();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Event Log Configuration failed\n", "configureEventLogShrinkStats", 52662);
}