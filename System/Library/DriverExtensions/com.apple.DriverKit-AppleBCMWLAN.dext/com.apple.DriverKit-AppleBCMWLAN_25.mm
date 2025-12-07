uint64_t AppleBCMWLANNetAdapter::setDisassocDelayAsyncCallback(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Setting disassoc_dly failed: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNetAdapter::handleConfigureLifeTimeAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to configure packet lifetime %s\n", v5, v6, v7);
}

void *AppleBCMWLANInfraProtocol::initWithProvider(AppleBCMWLANInfraProtocol *this, AppleBCMWLANCore *a2)
{
  result = IOMallocZeroTyped();
  *(this + 17) = result;
  if (result)
  {
    *result = a2;
    return (**(this + 17) != 0);
  }

  return result;
}

AppleBCMWLANRoamAdapter *AppleBCMWLANRoamAdapter::setReassocParams(AppleBCMWLANRoamAdapter *this, int a2, int a3)
{
  v4 = this;
  if (a2 || a3)
  {
    *(*(this + 5) + 39) = 1;
    if (a2)
    {
      this = AppleBCMWLANRoamAdapter::cfgRoamPruneRssiThreshold(this, a2);
    }

    if (a3)
    {
      v6 = 0;
      v5 = 0;
      return AppleBCMWLANRoamAdapter::applyRoamingCandidateBoost(v4, &v5, 0);
    }
  }

  return this;
}

AppleBCMWLANRoamAdapter *AppleBCMWLANRoamAdapter::restoreReassocParams(AppleBCMWLANRoamAdapter *this)
{
  if (*(*(this + 5) + 39) == 1)
  {
    v1 = this;
    AppleBCMWLANRoamAdapter::cfgRoamPruneRssiThreshold(this, -80);
    this = AppleBCMWLANRoamAdapter::applyRoamingCandidateBoost(v1, (*(v1 + 5) + 36), 0);
    *(*(v1 + 5) + 39) = 0;
  }

  return this;
}

uint64_t AppleBCMWLANRoamAdapter::setRoamingProfile(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNoticeIf(v1, 0x4000uLL, "[dk] %s@%d:Using motion offsets in the roam profile[%d]: CandDelta:%d\n", "setRoamingProfile", 330, v3, *v2);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_4_1();
  v17 = *(v1 + 5);
  v18 = *(v1 + 4);
  v15 = v2;
  v16 = v3;
  OUTLINED_FUNCTION_8_1();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Issuing roam_prof to FW: Roam profile[%d]: Band:%d, RSSI:[%d,%d], Flag:0x%x, ScanParams:(%d,%d,%d,%d,%d), Candidate:(%d,%d,%d)\n", "setRoamingProfile", 348, v5, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t AppleBCMWLANRoamAdapter::setRoamingProfileV4(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:WL_ROAM_PROF_EXTSCAN flag is NOT enabled due to hybrid DSA!\n", "setRoamingProfileV4", 699);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNoticeIf(v1, 0x4000uLL, "[dk] %s@%d:Using motion offsets in the roam profile. CandDelta:%d\n", "setRoamingProfileV4", 859, *v2);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_4_1();
  v19 = *(v1 + 24);
  v20 = *(v1 + 26);
  v17 = *(v1 + 5);
  v18 = *(v1 + 4);
  v15 = v2;
  v16 = v3;
  OUTLINED_FUNCTION_8_1();
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Roam profile[%d]: Band:%d, RSSI:[%d,%d], Flag:0x%x, ScanParams:(%d,%d,%d,%d,%d), Candidate:(%d,%d,%d) LP %d %d\n", "setRoamingProfileV4", 897, v5, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t AppleBCMWLANRoamAdapter::setRoamingProfileV2(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNoticeIf(v1, 0x4000uLL, "[dk] %s@%d:Using motion offsets in the roam profile[%d]: CandDelta:%d\n", "setRoamingProfileV2", 591, v3, *v2);
}

{
  OUTLINED_FUNCTION_3(a1);
  OUTLINED_FUNCTION_4_1();
  return CCLogStream::logAlert(v2, "[dk] %s@%d:%s:Issuing roam_prof to FW: Roam profile[%d]: Band:%d, RSSI:[%d,%d], Flag:0x%x, ScanParams:(%d,%d,%d,%d,%d),Candidate:(%d,%d,%d)\n", "setRoamingProfileV2", 609, "setRoamingProfileV2", v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, *(v1 + 5), *(v1 + 4));
}

uint64_t AppleBCMWLANRoamAdapter::handleRoamProfileAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set roam profile error=%s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::printProfile(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  v4 = v2 + 36 * v3;
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiRoam : profile[%d]: Band:%d, RSSI:[%d,%d], Flag:0x%x, ScanParams:(%d,%d,%d,%d,%d), Candidate_2g:(%d,%d,%d), Candidate_5g:(%d,%d,%d), Candidate_6g:(%d,%d,%d) LP %d %d\n", "printProfile", 1024, v3, *v5, *(v4 + 4), *(v4 + 5), *v4, *(v4 + 8), *(v4 + 10), *(v4 + 12), *(v4 + 14), *(v4 + 16), *(v4 + 6), *(v4 + 31), *(v4 + 30), *(v4 + 6), *(v4 + 33), *(v4 + 32), *(v4 + 6), *(v4 + 35), *(v4 + 34), *(v4 + 26), *(v4 + 28));
}

uint64_t AppleBCMWLANRoamAdapter::setRoamingProfileV6(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logNoticeIf(v1, 0x4000uLL, "[dk] %s@%d:%s WiFiRoam : Successfully set the roaming profile for band %d\n", "setRoamingProfileV6", 1076, "setRoamingProfileV6", *v2);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x4000uLL, "[dk] %s@%d:%s WiFiRoam : Invalid band (%d) passed. Nothing to do.\n", "setRoamingProfileV6", 1041, "setRoamingProfileV6", -1);
}

uint64_t AppleBCMWLANRoamAdapter::setLEGACY_ROAM_PROFILE_CONFIG(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:fail to configure legacy profile\n", "setLEGACY_ROAM_PROFILE_CONFIG", 1102);
}

{
  result = OUTLINED_FUNCTION_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*(v2 + 40) + 24), "[dk] %s@%d:pRoamProfileConfig is null\n", "setLEGACY_ROAM_PROFILE_CONFIG", 1099);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANRoamAdapter::configureMultiAPBit(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to set Multi AP Bit : %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::setROAM_PROFILE_CONFIG(uint64_t a1)
{
  result = OUTLINED_FUNCTION_7_0(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*(v3 + 40) + 24), "[dk] %s@%d:fail to configure 2g profile is null\n", "setROAM_PROFILE_CONFIG", 1124);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_7_0(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*(v3 + 40) + 24), "[dk] %s@%d:fail to configure 5g profile is null\n", "setROAM_PROFILE_CONFIG", 1129);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_7_0(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*(v3 + 40) + 24), "[dk] %s@%d:fail to configure 6g profile is null\n", "setROAM_PROFILE_CONFIG", 1134);
    }
  }

  *v1 = v2;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Skip setting defualt boost, since we are in the middle of reassoc \n", "setROAM_PROFILE_CONFIG", 1146);
}

{
  result = OUTLINED_FUNCTION_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*(v2 + 40) + 24), "[dk] %s@%d:pRoamProfileConfig is null\n", "setROAM_PROFILE_CONFIG", 1118);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANRoamAdapter::disable6GForRoamScans(uint64_t a1, int a2)
{
  v4 = OUTLINED_FUNCTION_1_2(a1);
  v6 = (*(v5 + 112))(v4);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: disable 6G Roam Scan : ret %x: %s\n", "disable6GForRoamScans", 1711, a2, v6);
}

uint64_t AppleBCMWLANRoamAdapter::applyRoamingCandidateBoost(uint64_t a1, int a2)
{
  v4 = OUTLINED_FUNCTION_1_2(a1);
  v6 = (*(v5 + 112))(v4);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot set join_pref : ret %x: %s\n", "applyRoamingCandidateBoost", 1660, a2, v6);
}

uint64_t AppleBCMWLANRoamAdapter::cmdROAM_USER_CACHE(uint64_t a1)
{
  result = OUTLINED_FUNCTION_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*(v2 + 40) + 24), "[dk] %s@%d:input buffer is null\n", "cmdROAM_USER_CACHE", 1166);
    }
  }

  *v1 = v3;
  return result;
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:cmdROAM_USER_CACHE failed to allocate cmd\n ", "cmdROAM_USER_CACHE", 1165);
}

uint64_t AppleBCMWLANRoamAdapter::clearChannelsFromUserRoamCache(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:clear channels \n", "clearChannelsFromUserRoamCache", 1246);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to clear User Roam  cache %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::addChannelsToUserRoamCache(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to add User Roam cache channels %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::setOverrideStateFromUserRoamCache(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to set User Roam cache override %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::getOverrideStateFromUserRoamCache(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to get User Roam override state %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::getChannelsFromUserRoamCache(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to get User Roam cache %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::applyRoamingCandidateBoostCallback(uint64_t a1, int a2)
{
  v4 = OUTLINED_FUNCTION_1_2(a1);
  v6 = (*(v5 + 112))(v4);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot set join_pref for boost : ret %x: %s\n", "applyRoamingCandidateBoostCallback", 1631, a2, v6);
}

uint64_t AppleBCMWLANRoamAdapter::skipPscScansForRoamScans(uint64_t a1, int a2)
{
  v4 = OUTLINED_FUNCTION_1_2(a1);
  v6 = (*(v5 + 112))(v4);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot set join_pref PSC scan preference : ret %x: %s\n", "skipPscScansForRoamScans", 1681, a2, v6);
}

uint64_t AppleBCMWLANRoamAdapter::skipPscScansForRoamScansCallback(uint64_t a1, int a2)
{
  v4 = OUTLINED_FUNCTION_1_2(a1);
  v6 = (*(v5 + 112))(v4);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot set join_pref for PSC scan prefernece for roam scans : ret %x: %s\n", "skipPscScansForRoamScansCallback", 1690, a2, v6);
}

uint64_t AppleBCMWLANRoamAdapter::disable6GForRoamScansCallback(uint64_t a1, int a2)
{
  v4 = OUTLINED_FUNCTION_1_2(a1);
  v6 = (*(v5 + 112))(v4);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Error: cannot disable 6G Roam Scan : ret %x: %s\n", "disable6GForRoamScansCallback", 1719, a2, v6);
}

uint64_t AppleBCMWLANRoamAdapter::rxSigSetVal(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = OUTLINED_FUNCTION_1_2(a1);
  v7 = (*(v6 + 112))(v5);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiRoam: rxsig : Failed to run rxsig set var (%s), %s\n", "rxSigSetVal", 1872, a3, v7);
}

uint64_t AppleBCMWLANRoamAdapter::rxSigSetVal(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiRoam : Buffer allocation failed!. No memory\n", "rxSigSetVal", 1848);
}

{
  v1 = OUTLINED_FUNCTION_2_2(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiRoam : Rx RSSI compensation not supported! [%d]\n", "rxSigSetVal", 1840, v3);
}

uint64_t AppleBCMWLANRoamAdapter::rxSigSetCompTbl(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = OUTLINED_FUNCTION_1_2(a1);
  v7 = (*(v6 + 112))(v5);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiRoam: rxsig : Failed to run rxsig set var for comp tbl(%s), %s\n", "rxSigSetCompTbl", 1814, a3, v7);
}

uint64_t AppleBCMWLANRoamAdapter::rxSigSetCompTbl(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiRoam : Buffer allocation failed!. No memory\n", "rxSigSetCompTbl", 1790);
}

{
  v1 = OUTLINED_FUNCTION_2_2(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:WiFiRoam : Rx RSSI compensation not supported! [%d]\n", "rxSigSetCompTbl", 1764, v3);
}

uint64_t AppleBCMWLANRoamAdapter::handleConfigureRxSigSetCompTblAsyncCallback(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = OUTLINED_FUNCTION_1_2(a1);
  v7 = (*(v6 + 112))(v5);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiRoam: rxsig : Failed to Configure rxsig Set Var for comp tbl%s, %s\n", "handleConfigureRxSigSetCompTblAsyncCallback", 1824, a3, v7);
}

uint64_t AppleBCMWLANRoamAdapter::handleConfigureRxSigSetValAsyncCallback(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = OUTLINED_FUNCTION_1_2(a1);
  v7 = (*(v6 + 112))(v5);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:WiFiRoam: rxsig : Failed to Configure rxsig Set Var %s, %s\n", "handleConfigureRxSigSetValAsyncCallback", 1882, a3, v7);
}

uint64_t AppleBCMWLANRoamAdapter::parseRoamCacheXTLV(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Buffer not aligned\n", "parseRoamCacheXTLV", 1948);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s Legacy chipset and invalid tag : %d\n", "parseRoamCacheXTLV", 2149, "parseRoamCacheXTLV", 7);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s Legacy chipset and invalid tag : %d\n", "parseRoamCacheXTLV", 2121, "parseRoamCacheXTLV", 5);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s Legacy chipset and invalid tag : %d\n", "parseRoamCacheXTLV", 2058, "parseRoamCacheXTLV", 6);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s Legacy chipset and invalid tag : %d\n", "parseRoamCacheXTLV", 2033, "parseRoamCacheXTLV", 4);
}

uint64_t AppleBCMWLANRoamAdapter::getRoamCacheAsyncCallback(uint64_t a1, int a2)
{
  v4 = OUTLINED_FUNCTION_1_2(a1);
  v6 = (*(v5 + 112))(v4);
  return CCLogStream::logWarn(v2, "[dk] %s@%d:Failed to get roam cache (error=%d (%s)\n", "getRoamCacheAsyncCallback", 2177, a2, v6);
}

uint64_t AppleBCMWLANRoamAdapter::getRoamCacheAsyncCallback(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to parse roam cache %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logWarn(v1, "[dk] %s@%d:Null roam cache response buffer\n", "getRoamCacheAsyncCallback", 2182);
}

uint64_t AppleBCMWLANRoamAdapter::getRoamCacheAsync(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3(a1);
  return CCLogStream::logAlertIf(v1, 0x4000uLL, "[dk] %s@%d:No Roam Cache Support\n", "getRoamCacheAsync", 2206);
}

{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to send roam cache iovar %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::setRoamLock(void **a1, unsigned int *a2, uint64_t a3)
{
  v3 = a3;
  v4 = (*a1)[3];
  v5 = *a2;
  v6 = (*(***a1 + 112))(**a1, a3);
  return CCLogStream::logAlert(v4, "[dk] %s@%d: cannot set roam_off to %lu : ret %x: %s \n", "setRoamLock", 2302, v5, v3, v6);
}

uint64_t AppleBCMWLANRoamAdapter::handleRoamOffAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set roam_off %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::cfgRoamPruneRssiThreshold(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure Prune RSSI threshold %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::handleMultiAPBitAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set MultiAPBit %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANRoamAdapter::handlePruneThresholdConfigurationAsyncCallback(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure Prune RSSI Threshold: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::setNDD_REQ(uint64_t a1)
{
  v1 = *(*a1 + 32);
  isNDDCapable = AppleBCMWLANCore::isNDDCapable(*(*a1 + 16));
  return CCLogStream::logAlert(v1, "[dk] %s@%d:NDD not supported %d\n", "setNDD_REQ", 99, isNDDCapable);
}

{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:timeout=%u, channel=%u, filters=%u, bandwidth=%d, band=%d, mode=%d, type=%d\n", "setNDD_REQ", 103, "setNDD_REQ", *(v2 + 8), *(v2 + 16), *(v2 + 12), (*(v2 + 16) >> 11) & 7, *(v2 + 16) >> 14, *v2, *(v2 + 4));
}

{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  v4 = v2 + 28 * v3;
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:ta=[%x:%x:%x:%x:%x:%x], ra=[%x:%x:%x:%x:%x:%x], bssid=[%x:%x:%x:%x:%x:%x], frameType=%u, numReports=%u\n", "setNDD_REQ", 105, "setNDD_REQ", *(v4 + 14), *(v4 + 15), *(v4 + 16), *(v4 + 17), *(v4 + 18), *(v4 + 19), *(v4 + 8), *(v4 + 9), *(v4 + 10), *(v4 + 11), *(v4 + 12), *(v4 + 13), *(v4 + 20), *(v4 + 21), *(v4 + 22), *(v4 + 23), *(v4 + 24), *(v4 + 25), *v4, *(v4 + 4));
}

{
  result = OUTLINED_FUNCTION_9_0(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logAlert(*(*a1 + 32), "[dk] %s@%d:Invalid filter found. More than one filter with all macIds as wildcard\n", "setNDD_REQ", 132);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_9_0(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return CCLogStream::logAlert(*(*a1 + 32), "[dk] %s@%d:Invalid filter found. Ftype & macIds are wildcard\n", "setNDD_REQ", 127);
    }
  }

  return result;
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStart(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Configuring override num reports value %u\n", "configureNDDStart", 360, "configureNDDStart", *(v2 + 8));
}

{
  v2 = OUTLINED_FUNCTION_0_1(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to set WL_EDS_IOV_XTLV_FILTER_ADD: %s[%d] for filter id %d radio %d\n", "configureNDDStart", 380, v5, v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Debug mode: NDD forced on LPSC only. Skipping programming of main/aux core\n", "configureNDDStart", 396);
}

{
  v2 = OUTLINED_FUNCTION_0_1(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to set WL_EDS_IOV_XTLV_FILTER_ADD: %s[%d] for filter id %d radio %d\n", "configureNDDStart", 393, v5, v6, v7, v8);
}

{
  v2 = OUTLINED_FUNCTION_0_1(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to set WL_EDS_IOV_XTLV_FILTER_ADD: %s[%d] for filter id %d radio %d\n", "configureNDDStart", 371, v5, v6, v7, v8);
}

{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Configuring override timeout value %u\n", "configureNDDStart", 427, "configureNDDStart", *(v2 + 4));
}

{
  OUTLINED_FUNCTION_9_0(a1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%d No memory to allocate buffers for start cmd\n", v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_9_0(a1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%d No memory to allocate buffers for filter cmd\n", v3, v4, v5, v6);
}

{
  result = OUTLINED_FUNCTION_5_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_9_1();
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Invalid NDD filters %u\n", "configureNDDStart", 313, v5);
    }
  }

  *v1 = v2;
  return result;
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStart(uint64_t *a1, uint64_t a2)
{
  if (OUTLINED_FUNCTION_9_0(a1))
  {
    v4 = v3;
    if (CCLogStream::shouldLog())
    {
      v6 = *a1;
      v7 = *(*a1 + 32);
      v8 = OUTLINED_FUNCTION_1_3(v6);
      v10 = (*(v9 + 112))(v8, v4);
      CCLogStream::logAlert(v7, "[dk] %s@%d:Unable to set WL_EDS_IOV_XTLV_START: %s[%d]\n", "configureNDDStart", 436, v10, v4);
    }
  }

  return IOFreeData();
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStop(uint64_t *a1, uint64_t a2)
{
  if (OUTLINED_FUNCTION_9_0(a1))
  {
    v4 = v3;
    if (CCLogStream::shouldLog())
    {
      v6 = *a1;
      v7 = *(*a1 + 32);
      v8 = OUTLINED_FUNCTION_1_3(v6);
      v10 = (*(v9 + 112))(v8, v4);
      CCLogStream::logAlert(v7, "[dk] %s@%d:Unable to set WL_EDS_IOV_XTLV_FILTER_ABORT: %s[%d]\n", "configureNDDStop", 479, v10, v4);
    }
  }

  return IOFreeData();
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStop(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_9_0(a1);
  if (result)
  {
    result = OUTLINED_FUNCTION_8_2(result);
    if (result)
    {
      v4 = *a1;
      v5 = *(*a1 + 32);
      v6 = OUTLINED_FUNCTION_1_3(v4);
      v8 = (*(v7 + 112))(v6, v1);
      return CCLogStream::logAlert(v5, "[dk] %s@%d:Unable to set WL_EDS_IOV_XTLV_FILTER_DELETE: %s[%d]\n", "configureNDDStop", 502, v8, v1);
    }
  }

  return result;
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::configureNDDStop(uint64_t a1)
{
  OUTLINED_FUNCTION_9_0(a1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%d No memory to allocate buffers for filter cmd\n", v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_9_0(a1);
  OUTLINED_FUNCTION_7_1();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s:%d No memory to allocate buffers for filter cmd\n", v3, v4, v5, v6);
}

{
  result = OUTLINED_FUNCTION_5_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v4 = OUTLINED_FUNCTION_9_1();
      result = CCLogStream::logAlert(v4, "[dk] %s@%d:Invalid NDD filters %u\n", "configureNDDStop", 456, v5);
    }
  }

  *v1 = v2;
  return result;
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::processNDDReportEvent(uint64_t a1)
{
  result = OUTLINED_FUNCTION_4_2(a1);
  if (result)
  {
    result = OUTLINED_FUNCTION_8_2(result);
    if (result)
    {
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_3_0();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:%s:%dInvalid event version, received %u\n", v3, v4, v5, v6, v7);
    }
  }

  return result;
}

{
  result = *(a1 + 32);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_3_0();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:%s:%dInvalid data len received %u\n", v3, v4, v5, v6, v7);
    }
  }

  return result;
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::processNDDReportEvent(uint64_t a1, _WORD *a2, unsigned int *a3)
{
  v3 = *(*a1 + 32);
  v4 = *a2;
  v5 = *a2;
  v6 = (v4 >> 8) & 7;
  v7 = (v4 >> 11) & 7;
  v8 = v4 >> 14;
  v9 = ratespec2rate(v3, *a3);
  return CCLogStream::logAlert(v3, "[dk] %s@%d:ChanSpec channel=%d, sunChannel=%d, bandwidth=%d, band=%d, rate=%u\n", "processNDDReportEvent", 209, v5, v6, v7, v8, v9);
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::processNDDStatusEvent(uint64_t a1)
{
  result = OUTLINED_FUNCTION_4_2(a1);
  if (result)
  {
    result = OUTLINED_FUNCTION_8_2(result);
    if (result)
    {
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_3_0();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:%s:%dInvalid event version, received %u\n", v3, v4, v5, v6, v7);
    }
  }

  return result;
}

{
  result = OUTLINED_FUNCTION_4_2(a1);
  if (result)
  {
    result = OUTLINED_FUNCTION_8_2(result);
    if (result)
    {
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_3_0();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:%s:%dInvalid data len received %u\n", v3, v4, v5, v6, v7);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:NDD start event received\n", "processNDDStatusEvent", 230);
}

{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:version=%u, length=%u, inactiveReason=%d, status=%d, remainDur=%u, accumDur=%u\n", "processNDDStatusEvent", 257, *v2, *(v3 + 50), *(v3 + 52), *v4, *(v3 + 60), *(v3 + 64));
}

uint64_t AppleBCMWLANNearbyDeviceDiscoveryAdapter::handleNDDFWEvents(uint64_t a1)
{
  result = OUTLINED_FUNCTION_4_2(a1);
  if (result)
  {
    result = OUTLINED_FUNCTION_8_2(result);
    if (result)
    {
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_3_0();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:%s:%dInvalid filter status version, received %u\n", v3, v4, v5, v6, v7);
    }
  }

  return result;
}

{
  v1 = OUTLINED_FUNCTION_9_0(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Version=%u, length=%u, filterId=%u, radioEnc=%u, curNumRpts=%u, validityMask=%u filterStatus=%u inactiveReason=%u\n", "handleNDDFWEvents", 294, *v2, *(v3 + 50), *(v3 + 52), *(v3 + 53), *(v3 + 54), *(v3 + 56), *(v3 + 57), *(v3 + 58));
}

{
  result = *(*(a1 + 40) + 32);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      OUTLINED_FUNCTION_7_1();
      return CCLogStream::logAlert(v2, "[dk] %s@%d:%s:%dInvalid event\n", v3, v4, v5, v6);
    }
  }

  return result;
}

OSObject *AppleBCMWLANGASAdapter::withDriver(const OSMetaClass *(__cdecl *a1)(const OSMetaClassBase *__hidden this))
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANGASAdapterMetaClass, &v4))
  {
    return 0;
  }

  v2 = v4;
  if (v4 && (AppleBCMWLANGASAdapter::initWithDriver(v4, a1) & 1) == 0)
  {
    (v2->release)(v2);
    return 0;
  }

  return v2;
}

uint64_t AppleBCMWLANGASAdapter::setGAS_REQ(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_6_2(a1);
  if (!v4 || !OUTLINED_FUNCTION_7_2(v4))
  {
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_22:
    started = 3758097090;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_8_3();
  CCLogStream::logNoticeIf(v21, 0x100000uLL, "[dk] %s@%d:Enter %s \n", v24, v25, v26);
  if (!a2)
  {
    goto LABEL_22;
  }

LABEL_4:
  isGASQueryAllowed = AppleBCMWLANCore::isGASQueryAllowed(**(v2 + 40), v5, v6);
  if (isGASQueryAllowed)
  {
    started = isGASQueryAllowed;
  }

  else
  {
    v8 = AppleBCMWLANGASAdapter::setGASQueryParams(v2, a2);
    v9 = *(v2 + 40);
    if (v8)
    {
      started = v8;
      if (*(v9 + 16) && CCLogStream::shouldLog())
      {
        v13 = *(v2 + 40);
        v14 = *(v13 + 16);
        v15 = OUTLINED_FUNCTION_1_0(v13);
        (*(v16 + 112))(v15, started);
        CCLogStream::logAlert(v14, "[dk] %s@%d:setGASQueryParams Failed %s\n");
      }
    }

    else
    {
      *(v9 + 24) = 1;
      if (OUTLINED_FUNCTION_4_3() && CCLogStream::shouldLog())
      {
        v23 = OUTLINED_FUNCTION_4_3();
        CCLogStream::logAlert(v23, "[dk] %s@%d:AppleBCMWLANGASAdapter::setGAS_REQ: Sending GAS Query\n", "setGAS_REQ", 376);
      }

      started = AppleBCMWLANGASAdapter::startGASQuery(v2, a2);
      if (started)
      {
        *(*(v2 + 40) + 24) = 0;
        if (OUTLINED_FUNCTION_4_3())
        {
          if (CCLogStream::shouldLog())
          {
            v17 = *(v2 + 40);
            v18 = *(v17 + 16);
            v19 = OUTLINED_FUNCTION_1_0(v17);
            (*(v20 + 112))(v19, started);
            CCLogStream::logAlert(v18, "[dk] %s@%d:startGASQuery Failed %s\n");
          }
        }
      }
    }
  }

LABEL_10:
  v11 = OUTLINED_FUNCTION_4_3();
  if (v11 && OUTLINED_FUNCTION_7_2(v11))
  {
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_8_3();
    CCLogStream::logNoticeIf(v22, 0x100000uLL, "[dk] %s@%d:Leave %s \n", v24, v25, v26);
  }

  return started;
}

uint64_t AppleBCMWLANGASAdapter::sendGasCompleteEvent(AppleBCMWLANCore ***this, unsigned int a2)
{
  v8 = a2;
  if (a2 < 4)
  {
    result = AppleBCMWLANGASAdapter::isGASEventAllowed(this);
    if (result)
    {
      return result;
    }

    if (OUTLINED_FUNCTION_4_3())
    {
      shouldLog = CCLogStream::shouldLog();
      v5 = this[5];
      if (shouldLog)
      {
        CCLogStream::logAlert(v5[2], "[dk] %s@%d:AppleBCMWLANGASAdapter::sendGasCompleteEvent: GAS COMPLETE event status %u\n", "sendGasCompleteEvent", 402, a2);
        v5 = this[5];
      }
    }

    AppleBCMWLANCore::postMessageInfra(*v5, 0xDCu, &v8, 4uLL);
    return 0;
  }

  result = OUTLINED_FUNCTION_4_3();
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = OUTLINED_FUNCTION_4_3();
      CCLogStream::logAlert(v7, "[dk] %s@%d:Invalid gas event status argument %u\n", "sendGasCompleteEvent", 397, a2);
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANGASAdapter::setGAS_ABORT(AppleBCMWLANGASAdapter *this)
{
  v2 = OUTLINED_FUNCTION_6_2(this);
  if (v2)
  {
    v4 = OUTLINED_FUNCTION_7_2(v2);
    v3 = *(v1 + 5);
    if (v4)
    {
      CCLogStream::logNoticeIf(v3[2], 0x100000uLL, "[dk] %s@%d:Enter %s \n", "setGAS_ABORT", 422, "setGAS_ABORT");
      v3 = *(v1 + 5);
    }
  }

  if ((AppleBCMWLANCore::featureFlagIsBitSet(*v3, 17) & 1) == 0)
  {
    if (OUTLINED_FUNCTION_4_3() && CCLogStream::shouldLog())
    {
      v10 = OUTLINED_FUNCTION_4_3();
      CCLogStream::logAlert(v10, "[dk] %s@%d:%s: ANQP Offload Disabled\n");
    }

    goto LABEL_17;
  }

  v5 = AppleBCMWLANGASAdapter::issueGASAbort(v1);
  if (v5)
  {
    v11 = v5;
    if (OUTLINED_FUNCTION_4_3() && CCLogStream::shouldLog())
    {
      v13 = *(v1 + 5);
      v14 = *(v13 + 16);
      v15 = OUTLINED_FUNCTION_1_0(v13);
      (*(v16 + 112))(v15, v11);
      CCLogStream::logAlert(v14, "[dk] %s@%d:setGAS_ABORT Failed %s\n");
    }

LABEL_17:
    v6 = 2;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:
  v7 = AppleBCMWLANGASAdapter::sendGasCompleteEvent(v1, v6);
  *(*(v1 + 5) + 24) = 0;
  v8 = OUTLINED_FUNCTION_4_3();
  if (v8 && OUTLINED_FUNCTION_7_2(v8))
  {
    v12 = OUTLINED_FUNCTION_4_3();
    CCLogStream::logNoticeIf(v12, 0x100000uLL, "[dk] %s@%d:Leave %s \n", "setGAS_ABORT", 441, "setGAS_ABORT");
  }

  return v7;
}

uint64_t AppleBCMWLANGASAdapter::handleGAS_FRAGMENT_RX(AppleBCMWLANGASAdapter *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v73 = 0;
  v10 = *(*(this + 5) + 16);
  if (v10 && OUTLINED_FUNCTION_7_2(v10))
  {
    CCLogStream::logNoticeIf(*(*(this + 5) + 16), 0x100000uLL, "[dk] %s@%d:Enter %s \n", "handleGAS_FRAGMENT_RX", 520, "handleGAS_FRAGMENT_RX");
  }

  v71 = this;
  if (!a2)
  {
    shouldLog = *(*(this + 5) + 16);
    if (shouldLog)
    {
      shouldLog = CCLogStream::shouldLog();
      if (shouldLog)
      {
        v41 = OUTLINED_FUNCTION_1_4(shouldLog, a2, a3, a4, a5, a6, a7, a8, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, this);
        shouldLog = CCLogStream::logAlert(v41, "[dk] %s@%d:No Data attached to Event\n");
      }
    }

LABEL_12:
    v30 = 0;
    goto LABEL_13;
  }

  v11 = AppleBCMWLANGASAdapter::bcmEventStatusToAppleGasEventStatus(this, *(a2 + 8), &v73);
  if (!v11)
  {
    v19 = *(a2 + 28);
    v20 = *(a2 + 20);
    if (v20 <= 7)
    {
      shouldLog = OUTLINED_FUNCTION_1_4(v11, v12, v13, v14, v15, v16, v17, v18, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, this);
      if (shouldLog)
      {
        shouldLog = CCLogStream::shouldLog();
        if (shouldLog)
        {
          v43 = OUTLINED_FUNCTION_1_4(shouldLog, a2, a3, a4, a5, a6, a7, a8, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71);
          v49 = *(a2 + 20);
          v51 = 8;
          shouldLog = CCLogStream::logAlert(v43, "[dk] %s@%d:Invalid event message length=%u, too small to hold GAS response header length=%lu\n");
        }
      }
    }

    else
    {
      v21 = *(a2 + 24);
      v22 = *(a2 + 25);
      v23 = *(a2 + 26);
      v24 = *(a2 + 27);
      v25 = *(a2 + 29);
      v26 = v73;
      *(a2 + 28) = v73;
      *(a2 + 40) = v20;
      v67 = v19;
      v69 = v21;
      *(a2 + 32) = v21;
      *(a2 + 33) = v22;
      *(a2 + 34) = v23;
      *(a2 + 35) = v24;
      *(a2 + 36) = v19;
      *(a2 + 37) = v25;
      shouldLog = AppleBCMWLANGASAdapter::isGASEventAllowed(this);
      if (shouldLog)
      {
        v30 = shouldLog;
        goto LABEL_13;
      }

      *(a2 + 44) = 1;
      v28 = *(this + 5);
      if (v28[2])
      {
        v29 = CCLogStream::shouldLog();
        v28 = *(this + 5);
        if (v29)
        {
          CCLogStream::logAlert(v28[2], "[dk] %s@%d:AppleBCMWLANGASAdapter::handleGAS_FRAGMENT_RX: %02x:%02x:%02x:%02x:%02x:%02x bcmEventStatus %u appleGasEventStatus %u\n", "handleGAS_FRAGMENT_RX", 554, v69, v22, v23, v24, v67, v25, *(a2 + 8), v26);
          v28 = *(this + 5);
        }
      }

      shouldLog = AppleBCMWLANCore::postMessageInfra(*v28, 0xDBu, (a2 + 28), v20 + 20);
    }

    goto LABEL_12;
  }

  v30 = v11;
  shouldLog = OUTLINED_FUNCTION_1_4(v11, v12, v13, v14, v15, v16, v17, v18, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, this);
  if (shouldLog)
  {
    shouldLog = CCLogStream::shouldLog();
    if (shouldLog)
    {
      v42 = OUTLINED_FUNCTION_1_4(shouldLog, a2, a3, a4, a5, a6, a7, a8, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71);
      shouldLog = CCLogStream::logAlert(v42, "[dk] %s@%d:Invalid event status value %u\n", "handleGAS_FRAGMENT_RX", 526, *(a2 + 8));
    }
  }

LABEL_13:
  v31 = OUTLINED_FUNCTION_1_4(shouldLog, a2, a3, a4, a5, a6, a7, a8, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71);
  if (v31)
  {
    v32 = OUTLINED_FUNCTION_7_2(v31);
    if (v32)
    {
      v44 = OUTLINED_FUNCTION_1_4(v32, v33, v34, v35, v36, v37, v38, v39, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72);
      CCLogStream::logNoticeIf(v44, 0x100000uLL, "[dk] %s@%d:Leave %s \n", "handleGAS_FRAGMENT_RX", 565, "handleGAS_FRAGMENT_RX");
    }
  }

  return v30;
}

uint64_t AppleBCMWLANGASAdapter::initWithDriver(const char *a1, uint64_t a2)
{
  IOLog(a1);
  v3 = *(*a2 + 48);

  return v3(a2);
}

uint64_t AppleBCMWLANGASAdapter::setHotspot20CapsIndicationIE(uint64_t *a1)
{
  v1 = *(*a1 + 16);
  v2 = OUTLINED_FUNCTION_1_0(*a1);
  v4 = (*(v3 + 112))(v2);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to configure hs20_ie: %s\n", "setHotspot20CapsIndicationIE", 150, v4);
}

uint64_t AppleBCMWLANGASAdapter::setHotspot20InterworkingIE(uint64_t *a1)
{
  v1 = *(*a1 + 16);
  v2 = OUTLINED_FUNCTION_1_0(*a1);
  v4 = (*(v3 + 112))(v2);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: HS20 ie error %s - failed to add IE\n", "setHotspot20InterworkingIE", 199, v4);
}

uint64_t AppleBCMWLANGASAdapter::setGASQueryParams(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a1[2];
  v7 = (*(**a1 + 112))(*a1, a2);
  result = CCLogStream::logAlert(v6, "[dk] %s@%d:Failed with Status %s\n", "setGASQueryParams", 226, v7);
  *a4 = *a3;
  return result;
}

uint64_t AppleBCMWLANGASAdapter::setGASQueryParams(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x100000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANGASAdapter::startGASQuery(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_0_2(a1);
  return CCLogStream::logNoticeIf(v1, 0x100000uLL, "[dk] %s@%d:GAS Peer BSSID %02x %02x %02x %02x %02x %02x\t Channel %d\n", "startGASQuery", 305, v3, v4, v5, v6, v7, v8, v9);
}

{
  v1 = OUTLINED_FUNCTION_0_2(a1);
  return CCLogStream::logNoticeIf(v1, 0x100000uLL, "[dk] %s@%d:GAS Peer BSSID %02x %02x %02x %02x %02x %02x\t Channel %d\n", "startGASQuery", 294, v3, v4, v5, v6, v7, v8, v9);
}

{
  v1 = OUTLINED_FUNCTION_0_2(a1);
  return CCLogStream::logNoticeIf(v1, 0x100000uLL, "[dk] %s@%d:GAS Peer BSSID %02x %02x %02x %02x %02x %02x\t Channel %d\n", "startGASQuery", 282, v3, v4, v5, v6, v7, v8, v9);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logNoticeIf(v1, 0x100000uLL, "[dk] %s@%d:GAS Peer Buffer memory allocation failed\n", "startGASQuery", 251);
}

{
  OUTLINED_FUNCTION_3_1(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x100000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANGASAdapter::startGASQuery(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5)
{
  result = OUTLINED_FUNCTION_3_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v11 = *a1;
      v12 = *(*a1 + 16);
      v13 = OUTLINED_FUNCTION_1_0(v11);
      v15 = (*(v14 + 112))(v13, a2);
      result = CCLogStream::logAlert(v12, "[dk] %s@%d:%s: Failed with Status %s\n", "startGASQuery", 312, "startGASQuery", v15);
    }
  }

  *a5 = a2;
  *a4 = a3;
  return result;
}

uint64_t AppleBCMWLANGASAdapter::issueGASAbort(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_3_1(a1);
  if (result)
  {
    v4 = v3;
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = *a1;
      v6 = *(*a1 + 16);
      v7 = OUTLINED_FUNCTION_1_0(v5);
      v9 = (*(v8 + 112))(v7, v4);
      return CCLogStream::logAlert(v6, "[dk] %s@%d:Line %d Failed to Abort GAS Query %s\n", "issueGASAbort", 328, 328, v9);
    }
  }

  return result;
}

uint64_t AppleBCMWLANGASAdapter::issueGASAbort(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlertIf(v1, 0x100000uLL, "[dk] %s@%d:GAS Query Aborted\n", "issueGASAbort", 332);
}

{
  OUTLINED_FUNCTION_3_1(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x100000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANGASAdapter::bcmEventStatusToAppleGasEventStatus(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x100000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_3_1(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x100000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANGASAdapter::handleGAS_COMPLETE(uint64_t a1)
{
  OUTLINED_FUNCTION_3_1(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x100000uLL, "[dk] %s@%d:Enter %s \n", v3, v4, v5);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:AppleBCMWLANGASAdapter::handleGAS_COMPLETE: %02x:%02x:%02x:%02x:%02x:%02x bcmEventStatus %u appleGasEventStatus %u\n", "handleGAS_COMPLETE", 584, v2[24], v2[25], v2[26], v2[27], v2[28], v2[29], *v3, v4);
}

{
  v1 = OUTLINED_FUNCTION_3_1(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:No Data attached to Event\n", "handleGAS_COMPLETE", 576);
}

{
  OUTLINED_FUNCTION_3_1(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logNoticeIf(v1, 0x100000uLL, "[dk] %s@%d:Leave %s \n", v3, v4, v5);
}

uint64_t AppleBCMWLANGASAdapter::handleGAS_COMPLETE(uint64_t a1, _DWORD *a2)
{
  result = OUTLINED_FUNCTION_3_1(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = CCLogStream::logAlert(*(*a1 + 16), "[dk] %s@%d:Driver in RebootShutdownPending state\n", "handleGAS_COMPLETE", 578);
    }
  }

  *a2 = 0;
  return result;
}

uint64_t AppleBCMWLANIOReportingCore::incrementEventLogCounter(AppleBCMWLANIOReportingCore *this, uint64_t a2, void (*a3)(void))
{
  HIDWORD(v73) = -1431655766;
  snprintf(&v73 + 4, 4uLL, "%03d", a2);
  v6 = SBYTE4(v73);
  v7 = SBYTE5(v73);
  v8 = SBYTE6(v73);
  v9 = OUTLINED_FUNCTION_25();
  if (!v9)
  {
    ReporterProvider = IO80211Controller::getReporterProvider(*(v10 + 208));
    *(*(this + 7) + 40) = OUTLINED_FUNCTION_23(ReporterProvider, v12, v13, v14);
    if (!*(*(this + 7) + 40))
    {
      return 3758097085;
    }

    Reporter = AppleBCMWLANIOReporting::getReporter(this);
    OSSet::setObject(Reporter, *(*(this + 7) + 40));
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_5_0();
    (*(v16 + 16))();
    v9 = OUTLINED_FUNCTION_25();
  }

  v17 = (v7 << 8) | (v6 << 16) | v8;
  if (IOSimpleReporter::incrementValue(v9, v17 | 0x454C540000000000, 1))
  {
    OUTLINED_FUNCTION_0_3();
    if (convertBcomTagToString(a2))
    {
      v70 = convertBcomTagToString(a2);
      OUTLINED_FUNCTION_30(v70, v24, "%s", v25, v26, v27, v28, v29, v70, v72, v73);
    }

    else
    {
      OUTLINED_FUNCTION_30(0, v18, "%d", v19, v20, v21, v22, v23, a2, v72, v73);
    }

    v30 = OUTLINED_FUNCTION_25();
    v31 = IOReporter::addChannel(v30, v17 | 0x454C540000000000, v74);
    if (v31)
    {
      v32 = v31;
      if (AppleBCMWLANIOReporting::getLogger(this))
      {
        AppleBCMWLANIOReporting::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          Logger = AppleBCMWLANIOReporting::getLogger(this);
          CCLogStream::logAlert(Logger, "[dk] %s@%d:ivars->fEventLogTagReporter->addChannel failed \n");
        }
      }

      return v32;
    }

    v34 = OUTLINED_FUNCTION_25();
    IOSimpleReporter::incrementValue(v34, v17 | 0x454C540000000000, 1);
    AppleBCMWLANIOReporting::getRemoveReporterCallback(this);
    v35 = OUTLINED_FUNCTION_7_3();
    AppleBCMWLANIOReporting::getTarget(v35);
    v36 = OUTLINED_FUNCTION_27();
    CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(v36);
    (v6)(0x454C540000000000, CurrentBSS, 0, "Event Log", "Tag counters");
    AppleBCMWLANIOReporting::getAddReporterCallback(this);
    v38 = OUTLINED_FUNCTION_7_3();
    AppleBCMWLANIOReporting::getTarget(v38);
    v39 = OUTLINED_FUNCTION_27();
    AppleBCMWLANBssManager::getCurrentBSS(v39);
    OUTLINED_FUNCTION_13_1();
    v6(0x454C540000000000);
  }

  v40 = OUTLINED_FUNCTION_26();
  if (!v40)
  {
    v42 = IO80211Controller::getReporterProvider(*(v41 + 208));
    *(*(this + 7) + 48) = OUTLINED_FUNCTION_31(v42, v43, v44, v45);
    if (*(*(this + 7) + 48))
    {
      v46 = AppleBCMWLANIOReporting::getReporter(this);
      OSSet::setObject(v46, *(*(this + 7) + 48));
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_5_0();
      (*(v47 + 16))();
      v40 = OUTLINED_FUNCTION_26();
      goto LABEL_16;
    }

    return 3758097085;
  }

LABEL_16:
  if (!IOSimpleReporter::incrementValue(v40, v17 | 0x454C544200000000, a3))
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_3();
  if (convertBcomTagToString(a2))
  {
    v71 = convertBcomTagToString(a2);
    OUTLINED_FUNCTION_30(v71, v54, "%s", v55, v56, v57, v58, v59, v71, v72, v73);
  }

  else
  {
    OUTLINED_FUNCTION_30(0, v48, "%d", v49, v50, v51, v52, v53, a2, v72, v73);
  }

  v60 = OUTLINED_FUNCTION_26();
  v61 = IOReporter::addChannel(v60, v17 | 0x454C544200000000, v74);
  if (v61)
  {
    v32 = v61;
    if (AppleBCMWLANIOReporting::getLogger(this))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v62 = AppleBCMWLANIOReporting::getLogger(this);
        CCLogStream::logAlert(v62, "[dk] %s@%d:ivars->fEventLogTagBytesReporter->addChannel failed \n");
      }
    }
  }

  else
  {
    v63 = OUTLINED_FUNCTION_26();
    v32 = IOSimpleReporter::incrementValue(v63, v17 | 0x454C544200000000, a3);
    AppleBCMWLANIOReporting::getRemoveReporterCallback(this);
    v64 = OUTLINED_FUNCTION_12_1();
    AppleBCMWLANIOReporting::getTarget(v64);
    v65 = OUTLINED_FUNCTION_8_4();
    v66 = AppleBCMWLANBssManager::getCurrentBSS(v65);
    (a3)(a2, v66, 0, "Event Log", "Tag Received Bytes");
    AppleBCMWLANIOReporting::getAddReporterCallback(this);
    v67 = OUTLINED_FUNCTION_12_1();
    AppleBCMWLANIOReporting::getTarget(v67);
    v68 = OUTLINED_FUNCTION_8_4();
    AppleBCMWLANBssManager::getCurrentBSS(v68);
    OUTLINED_FUNCTION_13_1();
    a3(a2);
  }

  return v32;
}

uint64_t AppleBCMWLANIOReportingCore::sendPowerStateTimeToCoreAnalytics(AppleBCMWLANIOReportingCore *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v9 = a2;
  OUTLINED_FUNCTION_43(this, a2, a3, a4, a5, a6, a7, a8, v26, v27, v28, v29, v30, SHIDWORD(v30), v32);
  if ((v31 & 0xF) != 0)
  {
    return 0;
  }

  v11 = OSString::withCString("com.apple.wifi.SystemSleepStates");
  if (!v11)
  {
    if (AppleBCMWLANIOReporting::getLogger(this))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANIOReporting::getLogger(this);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:Fail to allocate eventName\n", "sendPowerStateTimeToCoreAnalytics", 699);
      }
    }

    return 0;
  }

  v12 = v11;
  v13 = OSDictionary::withCapacity(1u);
  if (v13)
  {
    if (v9 >= 0x10)
    {
      if (AppleBCMWLANIOReporting::getLogger(this))
      {
        AppleBCMWLANIOReporting::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v22 = AppleBCMWLANIOReporting::getLogger(this);
          CCLogStream::logAlert(v22, "[dk] %s@%d:Invalid systemPowerState type =%d\n", "sendPowerStateTimeToCoreAnalytics", 754, v9);
        }
      }
    }

    else
    {
      v14 = OSString::withCString(off_1003C5DE8[v9]);
      if (v14)
      {
        v15 = v14;
        v16 = OSNumber::withNumber(v8, 0x20uLL);
        if (v16)
        {
          OSDictionary::setObject(v13, v15, v16);
          if (!OUTLINED_FUNCTION_24())
          {
            v17 = 1;
LABEL_20:
            (v15->release)(v15);
            if (v16)
            {
              (v16->release)(v16);
            }

            goto LABEL_22;
          }

          if (AppleBCMWLANIOReporting::getLogger(this))
          {
            AppleBCMWLANIOReporting::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v23 = AppleBCMWLANIOReporting::getLogger(this);
              CStringNoCopy = OSString::getCStringNoCopy(v12);
              CCLogStream::logEmergency(v23, "[dk] %s@%d:Failed to send CoreAnalyticsSendEvent for event %s", "sendPowerStateTimeToCoreAnalytics", 764, CStringNoCopy);
            }
          }
        }

        else if (AppleBCMWLANIOReporting::getLogger(this))
        {
          AppleBCMWLANIOReporting::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            v20 = AppleBCMWLANIOReporting::getLogger(this);
            CCLogStream::logAlert(v20, "[dk] %s@%d:Fail to allocate numValue\n", "sendPowerStateTimeToCoreAnalytics", 760);
          }
        }

        v17 = 0;
        goto LABEL_20;
      }
    }

    if (AppleBCMWLANIOReporting::getLogger(this))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v21 = AppleBCMWLANIOReporting::getLogger(this);
        CCLogStream::logAlert(v21, "[dk] %s@%d:Fail to allocate keyString\n");
      }
    }
  }

  else if (AppleBCMWLANIOReporting::getLogger(this))
  {
    AppleBCMWLANIOReporting::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      v19 = AppleBCMWLANIOReporting::getLogger(this);
      CCLogStream::logAlert(v19, "[dk] %s@%d:Fail to allocate eventPayload\n");
    }
  }

  v17 = 0;
LABEL_22:
  (v12->release)(v12);
  if (v13)
  {
    (v13->release)(v13);
  }

  return v17;
}

uint64_t AppleBCMWLANIOReportingCore::reportSystemPowerState(AppleBCMWLANIOReportingCore *this, unint64_t *a2, int a3, int a4, int a5)
{
  v5 = 3758097090;
  if (a2 <= 3)
  {
    v7 = a4;
    v9 = a2;
    v11 = a4 ^ 1;
    mach_continuous_nanoseconds = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, a2);
    *(*(this + 7) + 16 * v9 + 8 * v11 + 216) = mach_continuous_nanoseconds;
    if (v7)
    {
      return 0;
    }

    v13 = AppleBCMWLANIOReportingCore::getSystemPowerStateCheckPoint(mach_continuous_nanoseconds, v9, a3, a5);
    if (v13 <= 0xF)
    {
      v19 = *(this + 7) + 16 * v9;
      AppleBCMWLANIOReportingCore::sendPowerStateTimeToCoreAnalytics(this, v13, (*(v19 + 224) - *(v19 + 216)) / 0xF4240uLL, v14, v15, v16, v17, v18);
      AppleBCMWLANIOReportingCore::reportDeltaPowerTimeIfNeeded(this, v9, a3, v20, v21, v22, v23, v24);
      return 0;
    }
  }

  return v5;
}

uint64_t AppleBCMWLANIOReportingCore::reportWakeReason(AppleBCMWLANIOReportingCore *this)
{
  OUTLINED_FUNCTION_32();
  if (v3 > 0xFF)
  {
    return v2;
  }

  v4 = v3;
  OUTLINED_FUNCTION_37();
  v6 = *(v5 + 104);
  if (!v6)
  {
    ReporterProvider = IO80211Controller::getReporterProvider(*(v5 + 208));
    *(*(v1 + 7) + 104) = OUTLINED_FUNCTION_23(ReporterProvider, v8, v9, v10);
    if (!*(*(v1 + 7) + 104))
    {
      return (v2 + 1);
    }

    Reporter = AppleBCMWLANIOReporting::getReporter(v1);
    OSSet::setObject(Reporter, *(*(v1 + 7) + 104));
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_5_0();
    (*(v12 + 16))();
    v6 = OUTLINED_FUNCTION_36();
  }

  if (!IOSimpleReporter::incrementValue(v6, v4 | 0x5769466957616B20, 1))
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_3();
  if (v4 < 0xDC)
  {
    if (convertEventToString(v4, 0, 0))
    {
      v19 = convertEventToString(v4, 0, 0);
      goto LABEL_12;
    }

    OUTLINED_FUNCTION_30(0, v26, "Event %d", v27, v28, v29, v30, v31, v4, v44, v45);
  }

  else
  {
    if (convertAdditionalEventToString(v4))
    {
      v19 = convertAdditionalEventToString(v4);
LABEL_12:
      OUTLINED_FUNCTION_30(v19, v20, "%s", v21, v22, v23, v24, v25, v19, v44, v45);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_30(0, v13, "Additional Event %d", v14, v15, v16, v17, v18, v4, v44, v45);
  }

LABEL_15:
  v32 = OUTLINED_FUNCTION_36();
  if (IOReporter::addChannel(v32, v4 | 0x5769466957616B20, v46))
  {
    v33 = OUTLINED_FUNCTION_12_1();
    if (AppleBCMWLANIOReporting::getLogger(v33))
    {
      AppleBCMWLANIOReporting::getLogger(v1);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANIOReporting::getLogger(v1);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:ivars->fWakeReasonReporter->addChannel failed \n", "reportWakeReason", 817);
      }
    }
  }

  else
  {
    v35 = OUTLINED_FUNCTION_36();
    IOSimpleReporter::incrementValue(v35, v4 | 0x5769466957616B20, 1);
    v36 = OUTLINED_FUNCTION_12_1();
    AppleBCMWLANIOReporting::getRemoveReporterCallback(v36);
    v37 = OUTLINED_FUNCTION_8_4();
    AppleBCMWLANIOReporting::getTarget(v37);
    v38 = OUTLINED_FUNCTION_7_3();
    AppleBCMWLANBssManager::getCurrentBSS(v38);
    v39 = OUTLINED_FUNCTION_2_3();
    v4(v39);
    AppleBCMWLANIOReporting::getAddReporterCallback(v1);
    v40 = OUTLINED_FUNCTION_8_4();
    AppleBCMWLANIOReporting::getTarget(v40);
    v41 = OUTLINED_FUNCTION_7_3();
    AppleBCMWLANBssManager::getCurrentBSS(v41);
    OUTLINED_FUNCTION_13_1();
    v42 = OUTLINED_FUNCTION_6_3();
    v4(v42);
  }

  return v2;
}

uint64_t AppleBCMWLANIOReportingCore::reportEventLogSet(AppleBCMWLANIOReportingCore *this, void (*a2)(uint64_t), unsigned int a3)
{
  v7 = *(this + 7);
  v8 = *(v7 + 56);
  if (!v8)
  {
    ReporterProvider = IO80211Controller::getReporterProvider(*(v7 + 208));
    *(*(this + 7) + 56) = OUTLINED_FUNCTION_23(ReporterProvider, v10, v11, v12);
    if (!*(*(this + 7) + 56))
    {
      return 3758097085;
    }

    Reporter = AppleBCMWLANIOReporting::getReporter(this);
    OSSet::setObject(Reporter, *(*(this + 7) + 56));
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_5_0();
    (*(v14 + 16))();
    v8 = OUTLINED_FUNCTION_19();
  }

  v15 = ((a2 | 0x454C530000000100) - 256);
  if (IOSimpleReporter::incrementValue(v8, v15, 1))
  {
    OUTLINED_FUNCTION_0_3();
    if (convertBcomSetToString(a2))
    {
      v63 = convertBcomSetToString(a2);
      OUTLINED_FUNCTION_30(v63, v22, "%s", v23, v24, v25, v26, v27, v63, v65, v66);
    }

    else
    {
      OUTLINED_FUNCTION_30(0, v16, "%d", v17, v18, v19, v20, v21, a2, v65, v66);
    }

    v28 = OUTLINED_FUNCTION_19();
    if (IOReporter::addChannel(v28, v15, v67))
    {
      v29 = OUTLINED_FUNCTION_8_4();
      if (AppleBCMWLANIOReporting::getLogger(v29))
      {
        AppleBCMWLANIOReporting::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          Logger = AppleBCMWLANIOReporting::getLogger(this);
          CCLogStream::logAlert(Logger, "[dk] %s@%d:ivars->fEventLogSetReporter->addChannel for %s failed \n", "reportEventLogSet", 1665, v67);
        }
      }

      return v3;
    }

    v31 = OUTLINED_FUNCTION_19();
    IOSimpleReporter::incrementValue(v31, v15, 1);
    v32 = OUTLINED_FUNCTION_8_4();
    AppleBCMWLANIOReporting::getRemoveReporterCallback(v32);
    v33 = OUTLINED_FUNCTION_27();
    Target = AppleBCMWLANIOReporting::getTarget(v33);
    CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(this);
    (v15)(Target, CurrentBSS, 0, "Event Log", "Set counters");
    AppleBCMWLANIOReporting::getAddReporterCallback(this);
    v36 = OUTLINED_FUNCTION_27();
    v37 = AppleBCMWLANIOReporting::getTarget(v36);
    AppleBCMWLANBssManager::getCurrentBSS(this);
    OUTLINED_FUNCTION_13_1();
    v15(v37);
    if (!a3)
    {
      return v3;
    }
  }

  else
  {
    v3 = 0;
    if (!a3)
    {
      return v3;
    }
  }

  v38 = OUTLINED_FUNCTION_19();
  if (!IOSimpleReporter::incrementValue(v38, a2 | 0x454C530000000100, a3))
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_3();
  if (convertBcomSetToString(a2))
  {
    v64 = convertBcomSetToString(a2);
    OUTLINED_FUNCTION_30(v64, v45, "Dropped %s", v46, v47, v48, v49, v50, v64, v65, v66);
  }

  else
  {
    OUTLINED_FUNCTION_30(0, v39, "Dropped %d", v40, v41, v42, v43, v44, a2, v65, v66);
  }

  v51 = OUTLINED_FUNCTION_19();
  if (IOReporter::addChannel(v51, a2 | 0x454C530000000100, v67))
  {
    v52 = OUTLINED_FUNCTION_8_4();
    if (AppleBCMWLANIOReporting::getLogger(v52))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        v53 = AppleBCMWLANIOReporting::getLogger(this);
        CCLogStream::logAlert(v53, "[dk] %s@%d:ivars->fEventLogSetReporter->addChannel for %s failed \n", "reportEventLogSet", 1690, v67);
      }
    }
  }

  else
  {
    v54 = OUTLINED_FUNCTION_19();
    IOSimpleReporter::incrementValue(v54, a2 | 0x454C530000000100, a3);
    v55 = OUTLINED_FUNCTION_8_4();
    AppleBCMWLANIOReporting::getRemoveReporterCallback(v55);
    v56 = OUTLINED_FUNCTION_12_1();
    AppleBCMWLANIOReporting::getTarget(v56);
    v57 = OUTLINED_FUNCTION_7_3();
    AppleBCMWLANBssManager::getCurrentBSS(v57);
    v58 = OUTLINED_FUNCTION_2_3();
    a2(v58);
    AppleBCMWLANIOReporting::getAddReporterCallback(this);
    v59 = OUTLINED_FUNCTION_12_1();
    AppleBCMWLANIOReporting::getTarget(v59);
    v60 = OUTLINED_FUNCTION_7_3();
    AppleBCMWLANBssManager::getCurrentBSS(v60);
    OUTLINED_FUNCTION_13_1();
    v61 = OUTLINED_FUNCTION_6_3();
    a2(v61);
  }

  return v3;
}

uint64_t AppleBCMWLANIOReportingCore::reportEventLogSetSize(AppleBCMWLANIOReportingCore *this, uint64_t a2, unsigned int a3)
{
  v6 = *(this + 7);
  v7 = *(v6 + 64);
  if (!v7)
  {
    ReporterProvider = IO80211Controller::getReporterProvider(*(v6 + 208));
    *(*(this + 7) + 64) = OUTLINED_FUNCTION_31(ReporterProvider, v9, v10, v11);
    if (!*(*(this + 7) + 64))
    {
      return 3758097085;
    }

    Reporter = AppleBCMWLANIOReporting::getReporter(this);
    OSSet::setObject(Reporter, *(*(this + 7) + 64));
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_5_0();
    (*(v13 + 16))();
    v7 = OUTLINED_FUNCTION_34();
  }

  if (!IOSimpleReporter::incrementValue(v7, a2 | 0x454C534200000000, a3))
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_3();
  if (convertBcomSetToString(a2))
  {
    v38 = convertBcomSetToString(a2);
    OUTLINED_FUNCTION_30(v38, v20, "%s", v21, v22, v23, v24, v25, v38, v39, v40);
  }

  else
  {
    OUTLINED_FUNCTION_30(0, v14, "%d", v15, v16, v17, v18, v19, a2, v39, v40);
  }

  v26 = OUTLINED_FUNCTION_34();
  if (IOReporter::addChannel(v26, a2 | 0x454C534200000000, v41))
  {
    v27 = OUTLINED_FUNCTION_12_1();
    if (AppleBCMWLANIOReporting::getLogger(v27))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANIOReporting::getLogger(this);
        CCLogStream::logAlert(Logger, "[dk] %s@%d:ivars->fEventLogSetSizeReporter->addChannel for %s failed \n", "reportEventLogSetSize", 1732, v41);
      }
    }
  }

  else
  {
    v29 = OUTLINED_FUNCTION_34();
    IOSimpleReporter::incrementValue(v29, a2 | 0x454C534200000000, a3);
    v30 = OUTLINED_FUNCTION_12_1();
    AppleBCMWLANIOReporting::getRemoveReporterCallback(v30);
    v31 = OUTLINED_FUNCTION_8_4();
    AppleBCMWLANIOReporting::getTarget(v31);
    v32 = OUTLINED_FUNCTION_7_3();
    AppleBCMWLANBssManager::getCurrentBSS(v32);
    v33 = OUTLINED_FUNCTION_2_3();
    (a3)(v33);
    AppleBCMWLANIOReporting::getAddReporterCallback(this);
    v34 = OUTLINED_FUNCTION_8_4();
    AppleBCMWLANIOReporting::getTarget(v34);
    v35 = OUTLINED_FUNCTION_7_3();
    AppleBCMWLANBssManager::getCurrentBSS(v35);
    OUTLINED_FUNCTION_13_1();
    v36 = OUTLINED_FUNCTION_6_3();
    (a3)(v36);
  }

  return a2;
}

uint64_t AppleBCMWLANIOReportingCore::createDefaultReportersAndLegend(AppleBCMWLANIOReportingCore *this)
{
  OUTLINED_FUNCTION_37();
  *(v3 + 184) = 100;
  *(*(v4 + 56) + 188) = 250;
  *(*(v4 + 56) + 192) = 500;
  *(*(v4 + 56) + 196) = 1000;
  *(*(v4 + 56) + 200) = 1200;
  *(*(v4 + 56) + 204) = 1648;
  *(*(v4 + 56) + 72) = 5;
  *(*(v4 + 56) + 76) = 10;
  *(*(v4 + 56) + 80) = 100;
  *(*(v4 + 56) + 84) = 1000;
  *(*(v4 + 56) + 88) = 5000;
  *(*(v4 + 56) + 92) = 10000;
  v1[7][3] = OSArray::withCapacity(0xAu);
  v5 = v1[7][3];
  Logger = AppleBCMWLANIOReporting::getLogger(v1);
  if (v5)
  {
    if (Logger)
    {
      AppleBCMWLANIOReporting::getLogger(v1);
      if (CCLogStream::shouldLog())
      {
        v32 = AppleBCMWLANIOReporting::getLogger(v1);
        CCLogStream::logAlert(v32, "[dk] %s@%d:Adding %s %s \n", "createDefaultReportersAndLegend", 1981, "IOReporter API", "ConfigureReport Calls");
      }
    }

    ReporterProvider = IO80211Controller::getReporterProvider(v1[7][26]);
    *v1[7] = OUTLINED_FUNCTION_23(ReporterProvider, v8, v9, v10);
    if (!*v1[7])
    {
      return 0;
    }

    Reporter = AppleBCMWLANIOReporting::getReporter(v1);
    OSSet::setObject(Reporter, *v1[7]);
    OUTLINED_FUNCTION_5_0();
    (*(v12 + 16))();
    IOReporter::addChannel(*v1[7], 0x5A46732020202020uLL, "Success");
    IOReporter::addChannel(*v1[7], 0x5A46662020202020uLL, "Failed");
    AppleBCMWLANIOReporting::getAddReporterCallback(v1);
    v13 = OUTLINED_FUNCTION_12_1();
    AppleBCMWLANIOReporting::getTarget(v13);
    v14 = OUTLINED_FUNCTION_8_4();
    AppleBCMWLANBssManager::getCurrentBSS(v14);
    OUTLINED_FUNCTION_13_1();
    (v5)(v2);
    v15 = IO80211Controller::getReporterProvider(v1[7][26]);
    v1[7][1] = OUTLINED_FUNCTION_23(v15, v16, v17, v18);
    if (!v1[7][1])
    {
      return 0;
    }

    v19 = AppleBCMWLANIOReporting::getReporter(v1);
    OSSet::setObject(v19, v1[7][1]);
    OUTLINED_FUNCTION_5_0();
    (*(v20 + 16))();
    IOReporter::addChannel(v1[7][1], 0x5A5A732020202020uLL, "Success");
    IOReporter::addChannel(v1[7][1], 0x5A5A662020202020uLL, "Failed");
    AppleBCMWLANIOReporting::getAddReporterCallback(v1);
    v21 = OUTLINED_FUNCTION_12_1();
    AppleBCMWLANIOReporting::getTarget(v21);
    v22 = OUTLINED_FUNCTION_8_4();
    AppleBCMWLANBssManager::getCurrentBSS(v22);
    OUTLINED_FUNCTION_13_1();
    (v5)(v2);
    v23 = IO80211Controller::getReporterProvider(v1[7][26]);
    v1[7][2] = OUTLINED_FUNCTION_23(v23, v24, v25, v26);
    if (!v1[7][2])
    {
      return 0;
    }

    v27 = AppleBCMWLANIOReporting::getReporter(v1);
    OSSet::setObject(v27, v1[7][2]);
    OUTLINED_FUNCTION_5_0();
    (*(v28 + 16))();
    return 1;
  }

  if (!Logger)
  {
    return 1;
  }

  AppleBCMWLANIOReporting::getLogger(v1);
  v29 = 1;
  if (CCLogStream::shouldLog())
  {
    v31 = AppleBCMWLANIOReporting::getLogger(v1);
    CCLogStream::logAlert(v31, "[dk] %s@%d:Failed to create ivars->_processNameIndex\n", "createDefaultReportersAndLegend", 1979);
  }

  return v29;
}

uint64_t AppleBCMWLANIOReportingCore::getIndexForProcessName(AppleBCMWLANIOReporting *a1)
{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to create iter\n", "getIndexForProcessName", 184);
}

{
  AppleBCMWLANIOReporting::getLogger(a1);
  v2 = OUTLINED_FUNCTION_12_1();
  OSString::getCStringNoCopy(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Adding new process to IOReporting caller list: %s\n", v4, v5, v6);
}

{
  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      v3 = OUTLINED_FUNCTION_12_1();
      OSString::getCStringNoCopy(v3);
      OUTLINED_FUNCTION_6();
      return CCLogStream::logAlert(a1, "[dk] %s@%d:Failed to add new processName %s\n", v4, v5, v6);
    }
  }

  return result;
}

uint64_t AppleBCMWLANIOReportingCore::accountingForUpdateReport(AppleBCMWLANIOReporting *a1)
{
  AppleBCMWLANIOReporting::getLogger(a1);
  v2 = OUTLINED_FUNCTION_12_1();
  OSString::getCStringNoCopy(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to add kUpdateReportReport for %s\n", v4, v5, v6);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to create processName\n", "accountingForUpdateReport", 262);
}

uint64_t AppleBCMWLANIOReportingCore::accountingForConfigureReport(AppleBCMWLANIOReporting *a1)
{
  AppleBCMWLANIOReporting::getLogger(a1);
  v2 = OUTLINED_FUNCTION_12_1();
  OSString::getCStringNoCopy(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to add kConfigureReportReport for %s\n", v4, v5, v6);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to create processName\n", "accountingForConfigureReport", 305);
}

uint64_t AppleBCMWLANIOReportingCore::incrementStaleConfigurationDetected(AppleBCMWLANIOReporting *a1)
{
  AppleBCMWLANIOReporting::getLogger(a1);
  v2 = OUTLINED_FUNCTION_12_1();
  OSString::getCStringNoCopy(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logInfo(v1, "[dk] %s@%d:Caller: %s used a stale config\n", v4, v5, v6);
}

{
  AppleBCMWLANIOReporting::getLogger(a1);
  v2 = OUTLINED_FUNCTION_12_1();
  OSString::getCStringNoCopy(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to add kStaleConfigurationReport for %s\n", v4, v5, v6);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to create processName\n", "incrementStaleConfigurationDetected", 347);
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportLTECoexStatisticsPerSlice(AppleBCMWLANBssManager *a1, uint64_t a2, uint64_t a3)
{
  v114[1] = 0xAAAAAAAAAAAAAAAALL;
  v114[2] = 0xAAAAAAAAAAAAAAAALL;
  OUTLINED_FUNCTION_59();
  v114[0] = v6;
  AppleBCMWLANUtil::AutoreleasedAlignedOSData::AutoreleasedAlignedOSData(v114, v7, 2);
  v8 = v114[0];
  if (v114[0])
  {
    if (a3 > 1)
    {
      goto LABEL_13;
    }

    if (*(*(a1 + 7) + a3 + 39))
    {
      goto LABEL_6;
    }

    if (!AppleBCMWLANIOReportingPerSlice::initLTECoexReporter(a1, a3))
    {
      *(*(a1 + 7) + a3 + 39) = 1;
LABEL_6:
      for (i = 0; i != 176; i += 16)
      {
        OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_8_5();
        CounterValueSafe = AppleBCMWLANUtil::getCounterValueSafe(v10, v11, v8, v12);
        OUTLINED_FUNCTION_52(CounterValueSafe);
      }

      for (j = 0; j != 176; j += 16)
      {
        OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_8_5();
        v18 = AppleBCMWLANUtil::getCounterValueSafe(v15, v16, v8, v17);
        OUTLINED_FUNCTION_52(v18);
      }

      for (k = 0; k != 176; k += 16)
      {
        OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_8_5();
        v23 = AppleBCMWLANUtil::getCounterValueSafe(v20, v21, v8, v22);
        OUTLINED_FUNCTION_52(v23);
      }

      OUTLINED_FUNCTION_43_0();
      v32 = OUTLINED_FUNCTION_64(v24, v25, v26, v27, v28, v29, v30, v31, v89, v94, v99, v104, 0);
      v35 = AppleBCMWLANUtil::getCounterValueSafe(v32, v33, v34, 0x92uLL);
      OUTLINED_FUNCTION_52(v35);
      OUTLINED_FUNCTION_43_0();
      v44 = OUTLINED_FUNCTION_64(v36, v37, v38, v39, v40, v41, v42, v43, v90, v95, v100, v105, v109);
      v47 = AppleBCMWLANUtil::getCounterValueSafe(v44, v45, v46, 0x94uLL);
      OUTLINED_FUNCTION_52(v47);
      OUTLINED_FUNCTION_43_0();
      v56 = OUTLINED_FUNCTION_64(v48, v49, v50, v51, v52, v53, v54, v55, v91, v96, v101, v106, v110);
      v59 = AppleBCMWLANUtil::getCounterValueSafe(v56, v57, v58, 0x9EuLL);
      OUTLINED_FUNCTION_52(v59);
      OUTLINED_FUNCTION_43_0();
      v68 = OUTLINED_FUNCTION_64(v60, v61, v62, v63, v64, v65, v66, v67, v92, v97, v102, v107, v111);
      v71 = AppleBCMWLANUtil::getCounterValueSafe(v68, v69, v70, 0x9CuLL);
      OUTLINED_FUNCTION_52(v71);
      OUTLINED_FUNCTION_43_0();
      v73 = *(v72 + 104);
      v82 = OUTLINED_FUNCTION_64(v74, v75, v76, v77, v78, v79, v80, v81, v93, v98, v103, v108, v112);
      v85 = AppleBCMWLANUtil::getCounterValueSafe(v82, v83, v84, 0x9AuLL);
      IOSimpleReporter::setValue(v73, (a3 << 56) ^ 0x6420206E43747852, v85);
      v3 = v113;
      goto LABEL_13;
    }

    if (AppleBCMWLANIOReporting::getLogger(a1))
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANIOReporting::getLogger(a1);
        CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to init LTE Coex reporters\n");
      }
    }
  }

  else if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      v87 = AppleBCMWLANIOReporting::getLogger(a1);
      CCLogStream::logEmergency(v87, "[dk] %s@%d:Failed to allocate alignedCounters\n");
    }
  }

LABEL_13:
  AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(v114);
  return v3;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportWlCntSliceCounters(AppleBCMWLANBssManager *a1, uint64_t a2, uint64_t a3)
{
  v65[1] = 0xAAAAAAAAAAAAAAAALL;
  v65[2] = 0xAAAAAAAAAAAAAAAALL;
  OUTLINED_FUNCTION_59();
  v65[0] = v6;
  AppleBCMWLANUtil::AutoreleasedAlignedOSData::AutoreleasedAlignedOSData(v65, v7, 2);
  if (v65[0])
  {
    if (a3 <= 1)
    {
      v8 = *(a1 + 7);
      if (*(v8 + a3 + 20))
      {
LABEL_6:
        v9 = *(v8 + 8 * a3 + 296);
        OUTLINED_FUNCTION_67();
        v11 = v10 ^ (a3 << 56);
        v20 = OUTLINED_FUNCTION_5_4(v12, v13, v14, v15, v16, v17, v18, v19, v52, v55, v58, v61, 0);
        CounterValueSafe = AppleBCMWLANUtil::getCounterValueSafe(v20, v21, v22, 0x40uLL);
        v64 = IOSimpleReporter::setValue(v9, v11, CounterValueSafe);
        OUTLINED_FUNCTION_36_0();
        OUTLINED_FUNCTION_69();
        v32 = OUTLINED_FUNCTION_5_4(v24, v25, v26, v27, v28, v29, v30, v31, v53, v56, v59, v62, v64);
        v35 = AppleBCMWLANUtil::getCounterValueSafe(v32, v33, v34, 4uLL);
        v63[4] = OUTLINED_FUNCTION_52(v35);
        while (1)
        {
          OUTLINED_FUNCTION_36_0();
          v44 = OUTLINED_FUNCTION_5_4(v37, v38, v39, *(*(v36 + 200) + 8), v40, v41, v42, v43, v54, v57, v60, *v63, v63[4]);
          v48 = AppleBCMWLANUtil::getCounterValueSafe(v44, v45, v46, v47);
          OUTLINED_FUNCTION_52(v48);
          OUTLINED_FUNCTION_81();
        }
      }

      if (!AppleBCMWLANIOReportingPerSlice::initWlCntReporter(a1, a3))
      {
        *(*(a1 + 7) + a3 + 20) = 1;
        v8 = *(a1 + 7);
        goto LABEL_6;
      }

      if (AppleBCMWLANIOReporting::getLogger(a1))
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          Logger = AppleBCMWLANIOReporting::getLogger(a1);
          CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to init LTE Coex reporters\n");
        }
      }
    }
  }

  else if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      v50 = AppleBCMWLANIOReporting::getLogger(a1);
      CCLogStream::logEmergency(v50, "[dk] %s@%d:Failed to allocate alignedCounters\n");
    }
  }

  AppleBCMWLANUtil::AutoreleasedAlignedOSData::~AutoreleasedAlignedOSData(v65);
  return v3;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportTVPM(AppleBCMWLANIOReporting *a1, OSData *this, uint64_t a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    OUTLINED_FUNCTION_41_0();
    if (AppleBCMWLANIOReporting::getLogger(a1))
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANIOReporting::getLogger(a1);
        CCLogStream::logEmergency(Logger, "[dk] %s@%d:Out of range slice index %d\n");
      }
    }
  }

  else if (OSData::getLength(this) == 16)
  {
    BytesNoCopy = OSData::getBytesNoCopy(this);
    v4 = BytesNoCopy[2];
    v10 = BytesNoCopy[3];
    v72 = BytesNoCopy[4];
    v71 = BytesNoCopy[5];
    v11 = *(BytesNoCopy + 12);
    v69 = *(BytesNoCopy + 13);
    v68 = *(BytesNoCopy + 14);
    v12 = *(a1 + 7);
    if ((*(v12 + a3 + 16) & 1) == 0)
    {
      if (AppleBCMWLANIOReportingPerSlice::initTVPMReporter(a1, a3))
      {
        OUTLINED_FUNCTION_41_0();
        if (AppleBCMWLANIOReporting::getLogger(a1))
        {
          AppleBCMWLANIOReporting::getLogger(a1);
          if (CCLogStream::shouldLog())
          {
            v63 = AppleBCMWLANIOReporting::getLogger(a1);
            CCLogStream::logEmergency(v63, "[dk] %s@%d:Failed to initTVPMReporter slice %d\n");
          }
        }

        return v4;
      }

      *(*(a1 + 7) + a3 + 16) = 1;
      v12 = *(a1 + 7);
    }

    v66 = v4;
    v67 = v10;
    if (*(v12 + 8 * a3 + 552))
    {
      v70 = v11;
      v64 = a4;
      v65 = 0;
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_41_0();
    CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
    ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
    OUTLINED_FUNCTION_29(ReporterProvider, v15, v16, v17);
    OUTLINED_FUNCTION_51();
    *(v19 + 552) = v18;
    OUTLINED_FUNCTION_51();
    if (!*(v20 + 552))
    {
      return v4;
    }

    AppleBCMWLANIOReporting::getReporter(a1);
    OUTLINED_FUNCTION_51();
    OSSet::setObject(v22, *(v21 + 552));
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_5_0();
    (*(v23 + 16))();
    v24 = &off_1003C6720;
    v25 = 8;
    do
    {
      v26 = OUTLINED_FUNCTION_32_0();
      IOReporter::addChannel(v26, *(v24 - 1) ^ (a3 << 56), *v24);
      v24 += 2;
      --v25;
    }

    while (v25);
    v27 = IOMallocZeroData();
    if (v27)
    {
      v70 = v11;
      v64 = a4;
      snprintf(v27, 0x32uLL, "%s Slice %d", "TVPM", a3);
      AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
      Target = AppleBCMWLANIOReporting::getTarget(a1);
      AppleBCMWLANBssManager::getCurrentBSS(a1);
      OUTLINED_FUNCTION_51();
      v65 = AddReporterCallback(Target);
      IOFreeData();
LABEL_13:
      v30 = -v10;
      if (v71 >= 0xC9 && (AppleBCMWLANIOReportingPerSlice::reportTVPM(OSData *,AppleBCMWLANSliceId,apple80211_tvpm_event *)::filedSingleInvalidStatIssue & 1) == 0)
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        OSData::getBytesNoCopy(this);
        OSData::getLength(this);
        IO80211Hexdump();
        AppleBCMWLANIOReportingPerSlice::reportTVPM(OSData *,AppleBCMWLANSliceId,apple80211_tvpm_event *)::filedSingleInvalidStatIssue = 1;
      }

      v31 = OUTLINED_FUNCTION_32_0();
      IOSimpleReporter::setValue(v31, (a3 << 56) ^ 0x4D20205478447574, v4);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_94();
      IOSimpleReporter::setValue(v33, v32 ^ (a3 << 56), v30);
      v34 = OUTLINED_FUNCTION_32_0();
      IOSimpleReporter::setValue(v34, (a3 << 56) ^ 0x4D20204163436861, v72);
      v35 = OUTLINED_FUNCTION_32_0();
      IOSimpleReporter::setValue(v35, (a3 << 56) ^ 0x4D202054656D7020, v71);
      v36 = OUTLINED_FUNCTION_32_0();
      IOSimpleReporter::setValue(v36, (a3 << 56) ^ 0x4D20204261747456, v70);
      v37 = OUTLINED_FUNCTION_32_0();
      IOSimpleReporter::setValue(v37, (a3 << 56) ^ 0x4D2020202050504DLL, v68);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_104();
      IOSimpleReporter::setValue(v39, v38 ^ (a3 << 56), v69);
      v40 = OUTLINED_FUNCTION_32_0();
      IOSimpleReporter::incrementValue(v40, (a3 << 56) ^ 0x4D2020555456504DLL, 1);
      OUTLINED_FUNCTION_51();
      PercentIndex = findPercentIndex(v4);
      OUTLINED_FUNCTION_92(PercentIndex);
      OUTLINED_FUNCTION_51();
      v42 = findPercentIndex(v68);
      OUTLINED_FUNCTION_92(v42);
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_104();
      v43 = findPercentIndex(v69);
      OUTLINED_FUNCTION_92(v43);
      OUTLINED_FUNCTION_51();
      OUTLINED_FUNCTION_94();
      v46 = (v45 | 1) ^ (a3 << 56);
      if (v10)
      {
        v47 = v71;
        v48 = a3 << 56;
        if (v30 >= 5)
        {
          if (v30 >= 9u)
          {
            if (v30 >= 0xDu)
            {
              if (v30 >= 0x11u)
              {
                v49 = 5;
                if (v30 >= 0x15u)
                {
                  v49 = 6;
                }
              }

              else
              {
                v49 = 4;
              }
            }

            else
            {
              v49 = 3;
            }
          }

          else
          {
            v49 = 2;
          }
        }

        else
        {
          v49 = 1;
        }

        v4 = v65;
        v50 = v64;
        v51 = v70;
      }

      else
      {
        v49 = 0;
        v4 = v65;
        v48 = a3 << 56;
        v50 = v64;
        v51 = v70;
        v47 = v71;
      }

      IOStateReporter::setChannelState(v44, v46, kDsaTxPowerBoostStates[v49]);
      OUTLINED_FUNCTION_51();
      v54 = 1;
      if (v72 != 2)
      {
        v54 = 2;
      }

      if (v72 == 1)
      {
        v54 = 0;
      }

      IOStateReporter::setChannelState(*(v53 + 600), v48 ^ 0x4D20204163436873, kTxChainsStates[v54]);
      OUTLINED_FUNCTION_51();
      if (v47 <= 0xC8)
      {
        v57 = v47;
      }

      else
      {
        v57 = 0;
      }

      if (v57 <= 0x54)
      {
        if (v57 <= 0x45)
        {
          if (v57 <= 0x3B)
          {
            if (v57 <= 0x31)
            {
              if (v57 <= 0x27)
              {
                v56 = 5;
                if (v57 <= 0x1D)
                {
                  v56 = 6;
                }
              }

              else
              {
                v56 = 4;
              }
            }

            else
            {
              v56 = 3;
            }
          }

          else
          {
            v56 = 2;
          }
        }

        else
        {
          v56 = 1;
        }
      }

      IOStateReporter::setChannelState(*(v55 + 616), v48 ^ 0x4D202054656D7073, kTemperatureStates[v56]);
      OUTLINED_FUNCTION_51();
      v59 = 1;
      if (v51 <= 0x1E)
      {
        v59 = 2;
      }

      if (v51 > 0x20)
      {
        v59 = 0;
      }

      IOStateReporter::setChannelState(*(v58 + 632), v48 ^ 0x4D20204261747473, kVoltageStates[v59]);
      if (v50)
      {
        *v50 = v51;
        *(v50 + 1) = v69;
        *(v50 + 2) = v68;
        *(v50 + 4) = v66;
        *(v50 + 6) = v67;
        *(v50 + 8) = v72;
        *(v50 + 10) = v47;
      }

      return v4;
    }

    if (AppleBCMWLANIOReporting::getLogger(a1))
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v52 = AppleBCMWLANIOReporting::getLogger(a1);
        CCLogStream::logEmergency(v52, "[dk] %s@%d:Failed to alloc AppleBCMWLANUtil::AutoreleasedBuffer\n");
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_41_0();
    if (AppleBCMWLANIOReporting::getLogger(a1))
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        v62 = AppleBCMWLANIOReporting::getLogger(a1);
        OSData::getLength(this);
        CCLogStream::logEmergency(v62, "[dk] %s@%d:sizeof(tvpm) %lu payload->getLength() %lu\n");
      }
    }
  }

  return v4;
}

uint64_t (*AppleBCMWLANIOReportingPerSlice::reportDSA(AppleBCMWLANIOReporting *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  v7 = *(a1 + 7);
  v8 = a2;
  if ((*(v7 + a2 + 18) & 1) == 0)
  {
    if (AppleBCMWLANIOReportingPerSlice::initDynSARReporter(a1, a2))
    {
      v70 = OUTLINED_FUNCTION_33_0();
      if (AppleBCMWLANIOReporting::getLogger(v70))
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIOReporting::getLogger(a1);
          OUTLINED_FUNCTION_103();
          CCLogStream::logEmergency(v71, "[dk] %s@%d:Failed to initDynSARReporter slice %d\n");
        }
      }

      return AddReporterCallback;
    }

    *(*(a1 + 7) + v8 + 18) = 1;
    v7 = *(a1 + 7);
  }

  v9 = *(v7 + 8 * v8 + 680);
  if (v9)
  {
    LODWORD(AddReporterCallback) = 0;
    v10 = a2 << 56;
LABEL_11:
    IOSimpleReporter::setValue(v9, v10 ^ 0x4420537461747573, *(a3 + 64));
    v28 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v28, v10 ^ 0x4420507772427374, *(a3 + 66));
    v29 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v29, v10 ^ 0x44205444416E7430, *(a3 + 68));
    v30 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v30, v10 ^ 0x44205574416E7430, *(a3 + 69));
    v31 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v31, v10 ^ 0x44205444416E7431, *(a3 + 70));
    v32 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v32, v10 ^ 0x44205574416E7431, *(a3 + 71));
    v33 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v33, v10 ^ 0x44205444416E7432, *(a3 + 72));
    v34 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v34, v10 ^ 0x44205574416E7432, *(a3 + 73));
    v35 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v35, v10 ^ 0x44205444416E7433, *(a3 + 74));
    v36 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v36, v10 ^ 0x44205574416E7433, *(a3 + 75));
    v37 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v37, v10 ^ 0x44204E6F4F447572, *(a3 + 8));
    v38 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v38, v10 ^ 0x4420506F4F447572, *(a3 + 16));
    v39 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v39, v10 ^ 0x4420465365447572, *(a3 + 24));
    v40 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v40, v10 ^ 0x44204E6F4D447572, *(a3 + 32));
    v41 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v41, v10 ^ 0x4420486264447572, *(a3 + 40));
    v42 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v42, v10 ^ 0x4420446354447572, *(a3 + 48));
    v43 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::setValue(v43, v10 ^ 0x4420504F54447572, *(a3 + 56));
    v44 = OUTLINED_FUNCTION_10_3();
    IOSimpleReporter::incrementValue(v44, v10 ^ 0x4420202055706474, 1);
    OUTLINED_FUNCTION_43_0();
    v46 = *(a3 + 64);
    if (v46 > 4)
    {
      v47 = 4;
    }

    else
    {
      v47 = *&kDsaUtilPercStates[8 * v46 + 80];
    }

    IOStateReporter::setChannelState(*(v45 + 696), v10 ^ 0x4453537461747573, kDsaStateStates[v47]);
    OUTLINED_FUNCTION_43_0();
    v49 = *(a3 + 66);
    if (v49 >= 6)
    {
      v49 = 6;
    }

    IOStateReporter::setChannelState(*(v48 + 712), v10 ^ 0x4453507772427374, kDsaTxPowerBoostStates[v49]);
    OUTLINED_FUNCTION_43_0();
    v51 = *(v50 + 728);
    PercentIndex = findPercentIndex(*(a3 + 68));
    IOStateReporter::setChannelState(v51, v10 ^ 0x44535444416E7430, kDsaTxDCPercStates[PercentIndex]);
    OUTLINED_FUNCTION_43_0();
    v54 = *(v53 + 744);
    v55 = findPercentIndex(*(a3 + 69));
    IOStateReporter::setChannelState(v54, v10 ^ 0x44535574416E7430, *&kDsaUtilPercStates[8 * v55]);
    OUTLINED_FUNCTION_43_0();
    v56 = findPercentIndex(*(a3 + 70));
    OUTLINED_FUNCTION_89(v56);
    OUTLINED_FUNCTION_43_0();
    v58 = *(v57 + 776);
    v59 = findPercentIndex(*(a3 + 71));
    IOStateReporter::setChannelState(v58, v10 ^ 0x44535574416E7431, *&kDsaUtilPercStates[8 * v59]);
    OUTLINED_FUNCTION_43_0();
    v60 = findPercentIndex(*(a3 + 72));
    OUTLINED_FUNCTION_89(v60);
    OUTLINED_FUNCTION_43_0();
    v62 = *(v61 + 808);
    v63 = findPercentIndex(*(a3 + 73));
    IOStateReporter::setChannelState(v62, v10 ^ 0x44535574416E7432, *&kDsaUtilPercStates[8 * v63]);
    OUTLINED_FUNCTION_43_0();
    v64 = findPercentIndex(*(a3 + 74));
    OUTLINED_FUNCTION_89(v64);
    OUTLINED_FUNCTION_43_0();
    v66 = *(v65 + 840);
    v67 = findPercentIndex(*(a3 + 75));
    IOStateReporter::setChannelState(v66, v10 ^ 0x44535574416E7433, *&kDsaUtilPercStates[8 * v67]);
    return AddReporterCallback;
  }

  v11 = OUTLINED_FUNCTION_33_0();
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(v11);
  ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
  OUTLINED_FUNCTION_29(ReporterProvider, v14, v15, v16);
  OUTLINED_FUNCTION_43_0();
  *(v18 + 680) = v17;
  OUTLINED_FUNCTION_43_0();
  if (!*(v19 + 680))
  {
    return AddReporterCallback;
  }

  AppleBCMWLANIOReporting::getReporter(a1);
  OUTLINED_FUNCTION_43_0();
  OSSet::setObject(v21, *(v20 + 680));
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_5_0();
  (*(v22 + 16))();
  v10 = a2 << 56;
  v23 = &off_1003C67A0;
  v24 = 18;
  do
  {
    v25 = OUTLINED_FUNCTION_10_3();
    IOReporter::addChannel(v25, *(v23 - 1) ^ v10, *v23);
    v23 += 2;
    --v24;
  }

  while (v24);
  v26 = IOMallocZeroData();
  if (v26)
  {
    snprintf(v26, 0x32uLL, "%s Slice %d", "DSA", a2);
    AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
    Target = AppleBCMWLANIOReporting::getTarget(a1);
    AppleBCMWLANBssManager::getCurrentBSS(a1);
    OUTLINED_FUNCTION_43_0();
    LODWORD(AddReporterCallback) = AddReporterCallback(Target);
    IOFreeData();
    v9 = OUTLINED_FUNCTION_10_3();
    goto LABEL_11;
  }

  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AppleBCMWLANUtil::AutoreleasedBuffer\n");
    }
  }

  return AddReporterCallback;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportTDM(AppleBCMWLANIOReporting *this, OSData *a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    v17 = 3758097084;
    if (AppleBCMWLANIOReporting::getLogger(this))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIOReporting::getLogger(this);
        OUTLINED_FUNCTION_66();
        CCLogStream::logEmergency(v66, "[dk] %s@%d:Out of range slice index %d\n");
      }
    }

    return v17;
  }

  if (OSData::getLength(a2) >= 2)
  {
    v6 = *OSData::getBytesNoCopy(a2);
    if (v6 == 2)
    {
      if (OSData::getLength(a2) == 56)
      {
        BytesNoCopy = OSData::getBytesNoCopy(a2);
        v10 = 0;
        v7 = BytesNoCopy[1];
        v81 = BytesNoCopy[2];
        v83 = BytesNoCopy[3];
        v85 = BytesNoCopy[4];
        v11 = BytesNoCopy[6];
        v86 = BytesNoCopy[5];
        v9 = 1;
        v12 = BytesNoCopy[7];
        v13 = BytesNoCopy[8];
        v72 = 2863311530;
        v74 = 2863311530;
        v75 = 2863311530;
        v76 = 2863311530;
        v82 = BytesNoCopy[9];
        v84 = BytesNoCopy[10];
        v79 = 2863311530;
        v78 = 2863311530;
        v70 = 2863311530;
        v71 = 2863311530;
        v80 = BytesNoCopy[11];
        v15 = BytesNoCopy[13];
        v87 = BytesNoCopy[12];
        v14 = 2863311530;
        v73 = 2863311530;
        v16 = 2863311530;
        goto LABEL_7;
      }

      if (!AppleBCMWLANIOReporting::getLogger(this))
      {
        return 0;
      }

      AppleBCMWLANIOReporting::getLogger(this);
      if (!CCLogStream::shouldLog())
      {
        return 0;
      }

LABEL_33:
      AppleBCMWLANIOReporting::getLogger(this);
      OUTLINED_FUNCTION_93();
      CCLogStream::logEmergency(this, "[dk] %s@%d:sizeof(tdm) %lu payload->getLength() %lu\n");
      return 0;
    }

    if (v6 != 1)
    {
      if (AppleBCMWLANIOReporting::getLogger(this))
      {
        AppleBCMWLANIOReporting::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIOReporting::getLogger(this);
          OUTLINED_FUNCTION_103();
          CCLogStream::logEmergency(v67, "[dk] %s@%d:Invalid TDM version - %u\n");
        }
      }

      return 0;
    }
  }

  if (OSData::getLength(a2) != 52)
  {
    if (!AppleBCMWLANIOReporting::getLogger(this))
    {
      return 0;
    }

    AppleBCMWLANIOReporting::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      return 0;
    }

    goto LABEL_33;
  }

  v7 = 2863311530;
  v8 = OSData::getBytesNoCopy(a2);
  v9 = 0;
  v72 = v8[2];
  v74 = v8[3];
  v75 = v8[4];
  v76 = v8[5];
  v79 = v8[6];
  v10 = 1;
  v81 = 2863311530;
  v83 = 2863311530;
  v85 = 2863311530;
  v78 = v8[7];
  v70 = v8[8];
  v86 = 2863311530;
  v11 = 2863311530;
  v12 = 2863311530;
  v13 = 2863311530;
  v14 = v8[10];
  v71 = v8[9];
  v82 = 2863311530;
  v84 = 2863311530;
  v80 = 2863311530;
  v87 = 2863311530;
  v15 = 2863311530;
  v73 = v8[11];
  v16 = v8[12];
LABEL_7:
  v77 = v16;
  v90 = v13;
  v88 = v11;
  v89 = v12;
  if (*(*(this + 7) + 8 * a3 + 856))
  {
    v17 = 0;
LABEL_14:
    if (v10)
    {
      v36 = OUTLINED_FUNCTION_7_4();
      v38 = v37;
      IOSimpleReporter::setValue(v36, (a3 << 56) ^ 0x53202054444D6F6ELL, v39);
      v40 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v40, (a3 << 56) ^ 0x53202054444D6475, v14);
      v41 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v41, (a3 << 56) ^ 0x53202054444D746FLL, v72);
      v42 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v42, (a3 << 56) ^ 0x53202054444D706FLL, v74);
      v43 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v43, (a3 << 56) ^ 0x53202054444D7075, v75);
      v44 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v44, (a3 << 56) ^ 0x53202054444D706DLL, v76);
      v45 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v45, (a3 << 56) ^ 0x53202054444D746DLL, v70);
      v46 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v46, (a3 << 56) ^ 0x53202054444D7462, v71);
      v47 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v47, (a3 << 56) ^ 0x53202054444D7074, v79);
      v48 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v48, (a3 << 56) ^ 0x53202054444D7064, v73);
      v49 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v49, (a3 << 56) ^ 0x53202054444D6463, v78);
      v50 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v50, (a3 << 56) ^ 0x53202054444D6464, v77);
      v9 = v38;
    }

    if (v9)
    {
      v51 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v51, (a3 << 56) ^ 0x53202054444D6F6ELL, v7);
      v52 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v52, (a3 << 56) ^ 0x53202054444D6475, v80);
      v53 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v53, (a3 << 56) ^ 0x53202054444D746FLL, v81);
      v54 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v54, (a3 << 56) ^ 0x53202054444D706FLL, v83);
      v55 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v55, (a3 << 56) ^ 0x53202054444D706FLL, v85);
      v56 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v56, (a3 << 56) ^ 0x53202054444D7075, v86);
      v57 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v57, (a3 << 56) ^ 0x53202054444D706DLL, v88);
      v58 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v58, (a3 << 56) ^ 0x53202054444D746DLL, v82);
      v59 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v59, (a3 << 56) ^ 0x53202054444D7462, v84);
      v60 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v60, (a3 << 56) ^ 0x53202054444D7074, v89);
      v61 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v61, (a3 << 56) ^ 0x53202054444D7064, v87);
      v62 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v62, (a3 << 56) ^ 0x53202054444D6463, v90);
      v63 = OUTLINED_FUNCTION_7_4();
      IOSimpleReporter::setValue(v63, (a3 << 56) ^ 0x53202054444D6464, v15);
    }

    return v17;
  }

  v69 = v9;
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(this);
  ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
  OUTLINED_FUNCTION_29(ReporterProvider, v20, v21, v22);
  OUTLINED_FUNCTION_45_0();
  *(v24 + 856) = v23;
  OUTLINED_FUNCTION_45_0();
  if (!*(v25 + 856))
  {
    return 3758097085;
  }

  AppleBCMWLANIOReporting::getReporter(this);
  OUTLINED_FUNCTION_45_0();
  OSSet::setObject(v27, *(v26 + 856));
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_5_0();
  (*(v28 + 16))();
  v29 = &off_1003C68C0;
  v30 = 14;
  do
  {
    v31 = OUTLINED_FUNCTION_7_4();
    v32 = IOReporter::addChannel(v31, *(v29 - 1) ^ (a3 << 56), *v29);
    v29 += 2;
    --v30;
  }

  while (v30);
  v17 = v32;
  v33 = IOMallocZeroData();
  if (v33)
  {
    snprintf(v33, 0x32uLL, "%s Slice %d", "TDM", a3);
    AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(this);
    Target = AppleBCMWLANIOReporting::getTarget(this);
    AppleBCMWLANBssManager::getCurrentBSS(this);
    OUTLINED_FUNCTION_45_0();
    v17 = AddReporterCallback(Target);
    IOFreeData();
    v9 = v69;
    goto LABEL_14;
  }

  if (AppleBCMWLANIOReporting::getLogger(this))
  {
    AppleBCMWLANIOReporting::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANIOReporting::getLogger(this);
      CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AppleBCMWLANUtil::AutoreleasedBuffer\n");
    }
  }

  return v17;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportRC2Coex(AppleBCMWLANIOReporting *this, OSData *a2, int a3)
{
  if (a3 != 1)
  {
    if (AppleBCMWLANIOReporting::getLogger(this))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIOReporting::getLogger(this);
        OUTLINED_FUNCTION_66();
        CCLogStream::logInfo(v83, "[dk] %s@%d:Unexpected slice index %d\n", v94, v95, v96);
      }
    }

    return 0;
  }

  if (OSData::getLength(a2) <= 2)
  {
    v84 = OUTLINED_FUNCTION_33_0();
    if (!AppleBCMWLANIOReporting::getLogger(v84))
    {
      return v3;
    }

    AppleBCMWLANIOReporting::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      return v3;
    }

    AppleBCMWLANIOReporting::getLogger(this);
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_6();
    v82 = "[dk] %s@%d:Unexpected RC2 Coex Stats length %lu\n";
    goto LABEL_38;
  }

  v6 = *OSData::getBytesNoCopy(a2);
  if (v6 == 3)
  {
    if (OSData::getLength(a2) == 48)
    {
      if (*(OSData::getBytesNoCopy(a2) + 2) == 48)
      {
        OUTLINED_FUNCTION_46_0();
        v107 = v19[18];
        v11 = v19 + 8;
        v12 = v19 + 9;
        v104 = v19[19];
        v13 = v19 + 10;
        v14 = v19 + 11;
        v105 = v19[20];
        v16 = v19 + 12;
        v17 = v19 + 15;
        v102 = v19[21];
        v103 = v19[22];
        goto LABEL_16;
      }

      v90 = OUTLINED_FUNCTION_33_0();
      if (AppleBCMWLANIOReporting::getLogger(v90))
      {
        AppleBCMWLANIOReporting::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          Logger = AppleBCMWLANIOReporting::getLogger(this);
          CCLogStream::logAlert(Logger, "[dk] %s@%d:sizeof(rc2CoexStatsV3) %lu rc2CoexStatsV3.len() %d\n");
        }
      }

      return v3;
    }

    v86 = OUTLINED_FUNCTION_33_0();
    if (!AppleBCMWLANIOReporting::getLogger(v86))
    {
      return v3;
    }

    AppleBCMWLANIOReporting::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      return v3;
    }

    AppleBCMWLANIOReporting::getLogger(this);
    v96 = 48;
    v97 = OUTLINED_FUNCTION_93();
    v94 = "reportRC2Coex";
    v95 = 2689;
    v82 = "[dk] %s@%d:sizeof(rc2CoexStatsV3) %lu payload->getLength() %lu\n";
    goto LABEL_38;
  }

  if (v6 != 2)
  {
    if (v6 != 1)
    {
      v80 = OUTLINED_FUNCTION_33_0();
      if (!AppleBCMWLANIOReporting::getLogger(v80))
      {
        return v3;
      }

      AppleBCMWLANIOReporting::getLogger(this);
      if (!CCLogStream::shouldLog())
      {
        return v3;
      }

      AppleBCMWLANIOReporting::getLogger(this);
      OUTLINED_FUNCTION_103();
      v82 = "[dk] %s@%d:Invalid RC2 Coex stats version - %u\n";
LABEL_30:
      CCLogStream::logAlert(v81, v82, v94, v95, v96, v97);
      return v3;
    }

    if (OSData::getLength(a2) == 36)
    {
      if (*(OSData::getBytesNoCopy(a2) + 2) == 36)
      {
        OUTLINED_FUNCTION_46_0();
        OUTLINED_FUNCTION_95();
        v16 = (v15 + 24);
        v17 = (v15 + 30);
        v107 = 43690;
        v104 = 43690;
LABEL_12:
        v105 = 43690;
        v102 = 43690;
        v103 = 43690;
LABEL_16:
        v106 = *v17;
        v20 = *v16;
        v21 = *v14;
        v22 = *v13;
        v23 = *v12;
        v24 = *v11;
        v25 = *v10;
        v26 = *v9;
        v27 = *v8;
        v28 = *v7;
        v29 = OUTLINED_FUNCTION_50();
        v110 = v32;
        v109 = v33;
        if (!v29)
        {
          v98 = v31;
          v99 = v28;
          v100 = v27;
          v101 = v26;
          v34 = v30;
          CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(this);
          ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
          *(*(this + 7) + 1248) = OUTLINED_FUNCTION_29(ReporterProvider, v37, v38, v39);
          if (!*(*(this + 7) + 1248))
          {
            return 3758097085;
          }

          Reporter = AppleBCMWLANIOReporting::getReporter(this);
          OSSet::setObject(Reporter, *(*(this + 7) + 1248));
          OUTLINED_FUNCTION_50();
          OUTLINED_FUNCTION_5_0();
          (*(v41 + 16))();
          v42 = &off_1003C6D20;
          v43 = 19;
          do
          {
            v44 = OUTLINED_FUNCTION_50();
            IOReporter::addChannel(v44, *(v42 - 1) ^ 0x100000000000000, *v42);
            v42 += 2;
            --v43;
          }

          while (v43);
          AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(this);
          Target = AppleBCMWLANIOReporting::getTarget(this);
          v47 = AppleBCMWLANBssManager::getCurrentBSS(this);
          AddReporterCallback(Target, v47, *(*(this + 7) + 1248), "RC2 Coex", "Counters");
          if (!v111)
          {
            return 0;
          }

          v29 = OUTLINED_FUNCTION_50();
          v30 = v34;
          v27 = v100;
          v26 = v101;
          v31 = v98;
          v28 = v99;
        }

        v108 = v30;
        IOSimpleReporter::incrementValue(v29, 0x5343324475722020uLL, v31);
        v48 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v48, v49 | 0x5343325265710000, v28);
        v50 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v50, v51 | 0x4672616E74630000, v27);
        v52 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v52, v53 | 0x5241636B504D0000, v26);
        v54 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v54, v55 | 0x5254584354530000, v25);
        v56 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v56, v57 | 0x4644656C61790000, v24);
        v58 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v58, v59 | 0x42506843616C0000, v23);
        v60 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v60, v61 | 0x4252617465520000, v22);
        v62 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v62, v63 | 0x4242636E4C730000, v21);
        v64 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v64, v65 | 0x4272694870700000, v20);
        v66 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v66, v67 | 0x4272697442540000, v108);
        v68 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v68, v69 | 0x4241574E616E0000, v109);
        v70 = OUTLINED_FUNCTION_15_2();
        IOSimpleReporter::incrementValue(v70, v71 | 0x4272694167670000, v110);
        if (v111 >= 2)
        {
          v72 = OUTLINED_FUNCTION_15_2();
          IOSimpleReporter::incrementValue(v72, v73 | 0x4272694D78440000, v106);
          v74 = OUTLINED_FUNCTION_50();
          IOSimpleReporter::incrementValue(v74, 0x4272694D614D2020uLL, v107);
          if (v111 != 2)
          {
            v75 = OUTLINED_FUNCTION_50();
            IOSimpleReporter::incrementValue(v75, 0x4272695478522020uLL, v104);
            v76 = OUTLINED_FUNCTION_50();
            IOSimpleReporter::incrementValue(v76, 0x4272695278522020uLL, v105);
            v77 = OUTLINED_FUNCTION_50();
            IOSimpleReporter::incrementValue(v77, 0x4272695478442020uLL, v102);
            v78 = OUTLINED_FUNCTION_50();
            IOSimpleReporter::incrementValue(v78, 0x4272695278442020uLL, v103);
          }
        }

        return 0;
      }

      v92 = OUTLINED_FUNCTION_33_0();
      if (AppleBCMWLANIOReporting::getLogger(v92))
      {
        AppleBCMWLANIOReporting::getLogger(this);
        if (CCLogStream::shouldLog())
        {
          v93 = AppleBCMWLANIOReporting::getLogger(this);
          CCLogStream::logAlert(v93, "[dk] %s@%d:sizeof(rc2CoexStatsV1) %lu rc2CoexStatsV1.len() %d\n");
        }
      }

      return v3;
    }

    v87 = OUTLINED_FUNCTION_33_0();
    if (!AppleBCMWLANIOReporting::getLogger(v87))
    {
      return v3;
    }

    AppleBCMWLANIOReporting::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      return v3;
    }

    AppleBCMWLANIOReporting::getLogger(this);
    v96 = 36;
    v97 = OUTLINED_FUNCTION_93();
    v94 = "reportRC2Coex";
    v95 = 2677;
    v82 = "[dk] %s@%d:sizeof(rc2CoexStatsV1) %lu payload->getLength() %lu\n";
LABEL_38:
    v81 = this;
    goto LABEL_30;
  }

  if (OSData::getLength(a2) != 40)
  {
    v85 = OUTLINED_FUNCTION_33_0();
    if (!AppleBCMWLANIOReporting::getLogger(v85))
    {
      return v3;
    }

    AppleBCMWLANIOReporting::getLogger(this);
    if (!CCLogStream::shouldLog())
    {
      return v3;
    }

    AppleBCMWLANIOReporting::getLogger(this);
    v96 = 40;
    v97 = OUTLINED_FUNCTION_93();
    v94 = "reportRC2Coex";
    v95 = 2683;
    v82 = "[dk] %s@%d:sizeof(rc2CoexStatsV2) %lu payload->getLength() %lu\n";
    goto LABEL_38;
  }

  if (*(OSData::getBytesNoCopy(a2) + 2) == 40)
  {
    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_95();
    v16 = v18 + 12;
    v17 = v18 + 15;
    v107 = v18[18];
    v104 = v18[19];
    goto LABEL_12;
  }

  v88 = OUTLINED_FUNCTION_33_0();
  if (AppleBCMWLANIOReporting::getLogger(v88))
  {
    AppleBCMWLANIOReporting::getLogger(this);
    if (CCLogStream::shouldLog())
    {
      v89 = AppleBCMWLANIOReporting::getLogger(this);
      CCLogStream::logAlert(v89, "[dk] %s@%d:sizeof(rc2CoexStatsV2) %lu rc2CoexStatsV2.len() %d\n");
    }
  }

  return v3;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportRC1Coex(AppleBCMWLANIOReporting *this, OSData *a2, int a3)
{
  if (a3)
  {
    if (AppleBCMWLANIOReporting::getLogger(this))
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANIOReporting::getLogger(this);
        CCLogStream::logInfo(Logger, "[dk] %s@%d:Unexpected slice index %d\n", "reportRC1Coex", 2748, a3);
      }
    }

    return 0;
  }

  else if (OSData::getLength(a2) <= 2)
  {
    if (OUTLINED_FUNCTION_55())
    {
      AppleBCMWLANIOReporting::getLogger(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIOReporting::getLogger(this);
        OUTLINED_FUNCTION_91();
        OUTLINED_FUNCTION_6();
        v34 = "[dk] %s@%d:Unexpected RC1 Coex Stats length %lu\n";
LABEL_44:
        v33 = this;
LABEL_37:
        CCLogStream::logAlert(v33, v34, v38, v39, v40, v41);
      }
    }
  }

  else
  {
    switch(*OSData::getBytesNoCopy(a2))
    {
      case 1:
        if (OSData::getLength(a2) == 40)
        {
          BytesNoCopy = OSData::getBytesNoCopy(a2);
          if (BytesNoCopy[1] == 40)
          {
            goto LABEL_26;
          }

          if (OUTLINED_FUNCTION_55())
          {
            AppleBCMWLANIOReporting::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v7 = AppleBCMWLANIOReporting::getLogger(this);
              CCLogStream::logAlert(v7, "[dk] %s@%d:sizeof(wlc_rc1cx_status_v1_t) %lu rc1CoexStats.len() %d\n");
            }
          }
        }

        else if (OUTLINED_FUNCTION_55())
        {
          AppleBCMWLANIOReporting::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReporting::getLogger(this);
            v40 = 40;
            v41 = OUTLINED_FUNCTION_91();
            v38 = "reportRC1Coex";
            v39 = 2753;
            v34 = "[dk] %s@%d:sizeof(wlc_rc1cx_status_v1_t) %lu payload->getLength() %lu\n";
            goto LABEL_44;
          }
        }

        return v3;
      case 2:
        if (OSData::getLength(a2) == 48)
        {
          BytesNoCopy = OSData::getBytesNoCopy(a2);
          if (BytesNoCopy[1] == 48)
          {
            goto LABEL_26;
          }

          if (OUTLINED_FUNCTION_55())
          {
            AppleBCMWLANIOReporting::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v37 = AppleBCMWLANIOReporting::getLogger(this);
              CCLogStream::logAlert(v37, "[dk] %s@%d:sizeof(wlc_rc1cx_status_v2_t) %lu rc1CoexStats.len() %d\n");
            }
          }
        }

        else if (OUTLINED_FUNCTION_55())
        {
          AppleBCMWLANIOReporting::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReporting::getLogger(this);
            v40 = 48;
            v41 = OUTLINED_FUNCTION_91();
            v38 = "reportRC1Coex";
            v39 = 2757;
            v34 = "[dk] %s@%d:sizeof(wlc_rc1cx_status_v2_t) %lu payload->getLength() %lu\n";
            goto LABEL_44;
          }
        }

        return v3;
      case 3:
        if (OSData::getLength(a2) == 72)
        {
          BytesNoCopy = OSData::getBytesNoCopy(a2);
          if (BytesNoCopy[1] == 72)
          {
            goto LABEL_26;
          }

          if (OUTLINED_FUNCTION_55())
          {
            AppleBCMWLANIOReporting::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v9 = AppleBCMWLANIOReporting::getLogger(this);
              CCLogStream::logAlert(v9, "[dk] %s@%d:sizeof(wlc_rc1cx_status_v3_t) %lu rc1CoexStats.len() %d\n");
            }
          }
        }

        else if (OUTLINED_FUNCTION_55())
        {
          AppleBCMWLANIOReporting::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReporting::getLogger(this);
            v40 = 72;
            v41 = OUTLINED_FUNCTION_91();
            v38 = "reportRC1Coex";
            v39 = 2761;
            v34 = "[dk] %s@%d:sizeof(wlc_rc1cx_status_v3_t) %lu payload->getLength() %lu\n";
            goto LABEL_44;
          }
        }

        return v3;
      case 4:
        if (OSData::getLength(a2) == 52)
        {
          BytesNoCopy = OSData::getBytesNoCopy(a2);
          if (BytesNoCopy[1] == 52)
          {
            goto LABEL_26;
          }

          if (OUTLINED_FUNCTION_55())
          {
            AppleBCMWLANIOReporting::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v10 = AppleBCMWLANIOReporting::getLogger(this);
              CCLogStream::logAlert(v10, "[dk] %s@%d:sizeof(wlc_rc1cx_status_v4_t) %lu rc1CoexStats.len() %d\n");
            }
          }
        }

        else if (OUTLINED_FUNCTION_55())
        {
          AppleBCMWLANIOReporting::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReporting::getLogger(this);
            v40 = 52;
            v41 = OUTLINED_FUNCTION_91();
            v38 = "reportRC1Coex";
            v39 = 2765;
            v34 = "[dk] %s@%d:sizeof(wlc_rc1cx_status_v4_t) %lu payload->getLength() %lu\n";
            goto LABEL_44;
          }
        }

        return v3;
      case 5:
        if (OSData::getLength(a2) == 76)
        {
          BytesNoCopy = OSData::getBytesNoCopy(a2);
          if (BytesNoCopy[1] == 76)
          {
LABEL_26:
            v11 = *(BytesNoCopy + 7);
            v12 = *(BytesNoCopy + 6);
            v13 = *(BytesNoCopy + 3);
            v14 = *(BytesNoCopy + 2);
            v15 = OUTLINED_FUNCTION_75();
            if (!v15)
            {
              CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(this);
              ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
              *(*(this + 7) + 1256) = OUTLINED_FUNCTION_29(ReporterProvider, v18, v19, v20);
              if (!*(*(this + 7) + 1256))
              {
                return 3758097085;
              }

              Reporter = AppleBCMWLANIOReporting::getReporter(this);
              OSSet::setObject(Reporter, *(*(this + 7) + 1256));
              OUTLINED_FUNCTION_75();
              OUTLINED_FUNCTION_5_0();
              (*(v22 + 16))();
              v23 = &off_1003C6E50;
              v24 = 4;
              do
              {
                v25 = OUTLINED_FUNCTION_75();
                IOReporter::addChannel(v25, *(v23 - 1), *v23);
                v23 += 2;
                --v24;
              }

              while (v24);
              AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(this);
              Target = AppleBCMWLANIOReporting::getTarget(this);
              v28 = AppleBCMWLANBssManager::getCurrentBSS(this);
              AddReporterCallback(Target, v28, *(*(this + 7) + 1256), "RC1 Coex", "Counters");
              v15 = OUTLINED_FUNCTION_75();
            }

            IOSimpleReporter::incrementValue(v15, 0x5243315265712020uLL, v14);
            v29 = OUTLINED_FUNCTION_75();
            IOSimpleReporter::incrementValue(v29, 0x5243314475722020uLL, v13);
            v30 = OUTLINED_FUNCTION_75();
            IOSimpleReporter::incrementValue(v30, 0x5243317763722020uLL, v12);
            v31 = OUTLINED_FUNCTION_75();
            IOSimpleReporter::incrementValue(v31, 0x5243314344752020uLL, v11);
            return 0;
          }

          if (OUTLINED_FUNCTION_55())
          {
            AppleBCMWLANIOReporting::getLogger(this);
            if (CCLogStream::shouldLog())
            {
              v8 = AppleBCMWLANIOReporting::getLogger(this);
              CCLogStream::logAlert(v8, "[dk] %s@%d:sizeof(wlc_rc1cx_status_v5_t) %lu rc1CoexStats.len() %d\n");
            }
          }
        }

        else if (OUTLINED_FUNCTION_55())
        {
          AppleBCMWLANIOReporting::getLogger(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIOReporting::getLogger(this);
            v40 = 76;
            v41 = OUTLINED_FUNCTION_91();
            v38 = "reportRC1Coex";
            v39 = 2769;
            v34 = "[dk] %s@%d:sizeof(wlc_rc1cx_status_v5_t) %lu payload->getLength() %lu\n";
            goto LABEL_44;
          }
        }

        break;
      default:
        if (!OUTLINED_FUNCTION_55())
        {
          return v3;
        }

        AppleBCMWLANIOReporting::getLogger(this);
        if (!CCLogStream::shouldLog())
        {
          return v3;
        }

        AppleBCMWLANIOReporting::getLogger(this);
        OUTLINED_FUNCTION_103();
        v34 = "[dk] %s@%d:Invalid RC1 Coex stats version - %u\n";
        goto LABEL_37;
    }
  }

  return v3;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportExtraBTCoex(AppleBCMWLANIOReporting *a1, OSData *this, uint64_t a3)
{
  if (a3 >= 2)
  {
    OUTLINED_FUNCTION_59();
    if (AppleBCMWLANIOReporting::getLogger(a1))
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      if (CCLogStream::shouldLog())
      {
        Logger = AppleBCMWLANIOReporting::getLogger(a1);
        CCLogStream::logEmergency(Logger, "[dk] %s@%d:Out of range slice index %d\n");
      }
    }
  }

  else
  {
    if (OSData::getLength(this) >= 3)
    {
      v8 = *OSData::getBytesNoCopy(this);
      switch(v8)
      {
        case 3:
          goto LABEL_4;
        case 4:
          if (OSData::getLength(this) == 92)
          {
            OSData::getBytesNoCopy(this);
            OUTLINED_FUNCTION_65();
            v301 = v178;
            v295 = v179[18];
            v291 = v179[19];
            v293 = v179[20];
            v289 = v179[21];
            v292 = v179[22];
            v287 = v179[23];
            v285 = v179[24];
            v286 = v179[25];
            v288 = v179[26];
            v290 = v179[27];
            v294 = v179[28];
            v296 = v179[29];
            v297 = v179[30];
            v298 = v179[31];
            v299 = v179[32];
            v300 = v179[33];
            v302 = v179[34];
            v303 = v179[35];
            v304 = v179[36];
            v305 = v179[37];
            v306 = v179[38];
            v307 = v179[39];
            v308 = v179[40];
            v309 = v179[41];
            v310 = v179[42];
            v311 = v179[43];
            v312 = v179[44];
            v313 = v179[45];
            v10 = 4;
            v323 = 43690;
            v322 = 43690;
            v320 = 43690;
            v321 = 43690;
            v318 = 43690;
            v319 = 43690;
            v316 = 43690;
            v317 = 43690;
            v314 = 43690;
            v315 = 43690;
            goto LABEL_6;
          }

          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReporting::getLogger(a1);
              v225 = OUTLINED_FUNCTION_88();
              CCLogStream::logEmergency(a1, "[dk] %s@%d:sizeof(btcoex) %lu payload->getLength() %lu\n", "reportExtraBTCoex", 2987, 92, v225);
            }
          }

          goto LABEL_71;
        case 6:
          if (OSData::getLength(this) == 60)
          {
            OSData::getBytesNoCopy(this);
            OUTLINED_FUNCTION_65();
            v284 = v190;
            v10 = 6;
            v280 = *(v191 + 36);
            OUTLINED_FUNCTION_16_1();
            v274 = v192;
            OUTLINED_FUNCTION_23_0();
            v275 = v193;
            OUTLINED_FUNCTION_20_0();
            v276 = v194;
            OUTLINED_FUNCTION_22_0();
            v277 = v195;
            OUTLINED_FUNCTION_21();
            v278 = v196;
            OUTLINED_FUNCTION_18_0();
            v279 = v197;
            OUTLINED_FUNCTION_19_0();
            v281 = v198;
            OUTLINED_FUNCTION_17_1();
            v282 = v199;
            OUTLINED_FUNCTION_62();
            v283 = v200;
            OUTLINED_FUNCTION_80();
            OUTLINED_FUNCTION_31_0();
            OUTLINED_FUNCTION_29_0();
            OUTLINED_FUNCTION_30_0();
            OUTLINED_FUNCTION_28_0();
            OUTLINED_FUNCTION_0_4();
            goto LABEL_7;
          }

          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReporting::getLogger(a1);
              v227 = OUTLINED_FUNCTION_88();
              CCLogStream::logEmergency(a1, "[dk] %s@%d:sizeof(btcoex) %lu payload->getLength() %lu\n", "reportExtraBTCoex", 2990, 60, v227);
            }
          }

          goto LABEL_71;
        case 7:
          if (OSData::getLength(this) == 72)
          {
            OSData::getBytesNoCopy(this);
            OUTLINED_FUNCTION_65();
            v273 = v201;
            v10 = 7;
            v269 = *(v202 + 36);
            OUTLINED_FUNCTION_16_1();
            v263 = v203;
            OUTLINED_FUNCTION_23_0();
            v264 = v204;
            OUTLINED_FUNCTION_20_0();
            v265 = v205;
            OUTLINED_FUNCTION_22_0();
            v266 = v206;
            OUTLINED_FUNCTION_21();
            v267 = v207;
            OUTLINED_FUNCTION_18_0();
            v268 = v208;
            OUTLINED_FUNCTION_19_0();
            v270 = v209;
            OUTLINED_FUNCTION_17_1();
            v271 = v210;
            OUTLINED_FUNCTION_62();
            v272 = v211;
            OUTLINED_FUNCTION_80();
            OUTLINED_FUNCTION_31_0();
            OUTLINED_FUNCTION_29_0();
            OUTLINED_FUNCTION_30_0();
            OUTLINED_FUNCTION_28_0();
            OUTLINED_FUNCTION_0_4();
            OUTLINED_FUNCTION_1_6();
            goto LABEL_8;
          }

          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReporting::getLogger(a1);
              v228 = OUTLINED_FUNCTION_88();
              CCLogStream::logEmergency(a1, "[dk] %s@%d:sizeof(btcoex) %lu payload->getLength() %lu\n", "reportExtraBTCoex", 2993, 72, v228);
            }
          }

          goto LABEL_71;
        case 9:
          if (OSData::getLength(this) == 76)
          {
            OSData::getBytesNoCopy(this);
            OUTLINED_FUNCTION_65();
            v262 = v212;
            v10 = 9;
            v258 = *(v213 + 36);
            OUTLINED_FUNCTION_16_1();
            v252 = v214;
            OUTLINED_FUNCTION_23_0();
            v253 = v215;
            OUTLINED_FUNCTION_20_0();
            v254 = v216;
            OUTLINED_FUNCTION_22_0();
            v255 = v217;
            OUTLINED_FUNCTION_21();
            v256 = v218;
            OUTLINED_FUNCTION_18_0();
            v257 = v219;
            OUTLINED_FUNCTION_19_0();
            v259 = v220;
            OUTLINED_FUNCTION_17_1();
            v260 = v221;
            OUTLINED_FUNCTION_62();
            v261 = v222;
            OUTLINED_FUNCTION_80();
            OUTLINED_FUNCTION_31_0();
            OUTLINED_FUNCTION_29_0();
            OUTLINED_FUNCTION_30_0();
            OUTLINED_FUNCTION_28_0();
            OUTLINED_FUNCTION_0_4();
            OUTLINED_FUNCTION_1_6();
            OUTLINED_FUNCTION_2_4();
            goto LABEL_9;
          }

          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReporting::getLogger(a1);
              v229 = OUTLINED_FUNCTION_88();
              CCLogStream::logEmergency(a1, "[dk] %s@%d:sizeof(btcoex) %lu payload->getLength() %lu\n", "reportExtraBTCoex", 2996, 76, v229);
            }
          }

          goto LABEL_71;
        case 11:
          if (OSData::getLength(this) == 88)
          {
            OSData::getBytesNoCopy(this);
            OUTLINED_FUNCTION_65();
            v251 = v167;
            v10 = 11;
            v247 = *(v168 + 36);
            OUTLINED_FUNCTION_16_1();
            v241 = v169;
            OUTLINED_FUNCTION_23_0();
            v242 = v170;
            OUTLINED_FUNCTION_20_0();
            v243 = v171;
            OUTLINED_FUNCTION_22_0();
            v244 = v172;
            OUTLINED_FUNCTION_21();
            v245 = v173;
            OUTLINED_FUNCTION_18_0();
            v246 = v174;
            OUTLINED_FUNCTION_19_0();
            v248 = v175;
            OUTLINED_FUNCTION_17_1();
            v249 = v176;
            OUTLINED_FUNCTION_62();
            v250 = v177;
            OUTLINED_FUNCTION_80();
            OUTLINED_FUNCTION_31_0();
            OUTLINED_FUNCTION_29_0();
            OUTLINED_FUNCTION_30_0();
            OUTLINED_FUNCTION_28_0();
            OUTLINED_FUNCTION_0_4();
            OUTLINED_FUNCTION_1_6();
            OUTLINED_FUNCTION_2_4();
            OUTLINED_FUNCTION_9_3();
            goto LABEL_10;
          }

          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReporting::getLogger(a1);
              v224 = OUTLINED_FUNCTION_88();
              CCLogStream::logEmergency(a1, "[dk] %s@%d:sizeof(btcoex) %lu payload->getLength() %lu\n", "reportExtraBTCoex", 2999, 88, v224);
            }
          }

          goto LABEL_71;
        case 12:
          if (OSData::getLength(this) == 112)
          {
            BytesNoCopy = OSData::getBytesNoCopy(this);
            v8 = 0;
            v240 = BytesNoCopy[17];
            v10 = 12;
            v3 = 1;
            v238 = BytesNoCopy[18];
            OUTLINED_FUNCTION_16_1();
            v230 = v181;
            OUTLINED_FUNCTION_23_0();
            v231 = v182;
            OUTLINED_FUNCTION_20_0();
            v232 = v183;
            OUTLINED_FUNCTION_22_0();
            v233 = v184;
            OUTLINED_FUNCTION_21();
            v235 = v185;
            OUTLINED_FUNCTION_18_0();
            v234 = v186;
            OUTLINED_FUNCTION_19_0();
            v237 = v187;
            OUTLINED_FUNCTION_17_1();
            v236 = v188;
            OUTLINED_FUNCTION_62();
            v239 = v189;
            OUTLINED_FUNCTION_80();
            OUTLINED_FUNCTION_31_0();
            OUTLINED_FUNCTION_29_0();
            OUTLINED_FUNCTION_30_0();
            OUTLINED_FUNCTION_28_0();
            OUTLINED_FUNCTION_0_4();
            OUTLINED_FUNCTION_1_6();
            OUTLINED_FUNCTION_2_4();
            OUTLINED_FUNCTION_9_3();
            OUTLINED_FUNCTION_49();
            goto LABEL_11;
          }

          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIOReporting::getLogger(a1);
              v226 = OUTLINED_FUNCTION_88();
              CCLogStream::logEmergency(a1, "[dk] %s@%d:sizeof(btcoex) %lu payload->getLength() %lu\n", "reportExtraBTCoex", 3003, 112, v226);
            }
          }

          break;
        default:
          OUTLINED_FUNCTION_59();
          if (AppleBCMWLANIOReporting::getLogger(a1))
          {
            AppleBCMWLANIOReporting::getLogger(a1);
            if (CCLogStream::shouldLog())
            {
              v166 = AppleBCMWLANIOReporting::getLogger(a1);
              CCLogStream::logEmergency(v166, "[dk] %s@%d:Invalid BT Coex stats version - %u\n");
            }
          }

          return v3;
      }

      goto LABEL_71;
    }

LABEL_4:
    if (OSData::getLength(this) == 60)
    {
      v9 = OSData::getBytesNoCopy(this);
      v3 = 0;
      v323 = v9[18];
      v10 = 3;
      v8 = 1;
      v322 = v9[19];
      v301 = 43690;
      v295 = 43690;
      v320 = v9[20];
      v291 = 43690;
      v293 = 43690;
      v321 = v9[21];
      v289 = 43690;
      v292 = 43690;
      v318 = v9[22];
      v287 = 43690;
      OUTLINED_FUNCTION_80();
      v319 = *(v11 + 46);
      OUTLINED_FUNCTION_31_0();
      v316 = *(v12 + 48);
      OUTLINED_FUNCTION_29_0();
      v317 = *(v13 + 50);
      OUTLINED_FUNCTION_30_0();
      v314 = *(v14 + 52);
      OUTLINED_FUNCTION_28_0();
      v315 = *(v15 + 54);
      OUTLINED_FUNCTION_0_4();
LABEL_6:
      OUTLINED_FUNCTION_1_6();
LABEL_7:
      OUTLINED_FUNCTION_2_4();
LABEL_8:
      OUTLINED_FUNCTION_9_3();
LABEL_9:
      OUTLINED_FUNCTION_49();
LABEL_10:
      v240 = 43690;
      v238 = 43690;
      v230 = 43690;
      v231 = 43690;
      v232 = 43690;
      v233 = 43690;
      v235 = 43690;
      v234 = 43690;
      v237 = 43690;
      v236 = 43690;
      v239 = 43690;
LABEL_11:
      AppleBCMWLANCore::checkForBT5GSupport(*(*(a1 + 7) + 1504));
      v16 = 0;
      if (a3 == 1 && !*(*(a1 + 7) + 544))
      {
        CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
        ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
        OUTLINED_FUNCTION_29(ReporterProvider, v19, v20, v21);
        OUTLINED_FUNCTION_37_0();
        *(v23 + 536) = v22;
        OUTLINED_FUNCTION_37_0();
        if (!*(v24 + 536))
        {
LABEL_71:
          OUTLINED_FUNCTION_59();
          return v3;
        }

        v4 = v8;
        AppleBCMWLANIOReporting::getReporter(a1);
        OUTLINED_FUNCTION_37_0();
        OSSet::setObject(v26, *(v25 + 536));
        OUTLINED_FUNCTION_6_4();
        OUTLINED_FUNCTION_5_0();
        (*(v27 + 16))();
        v28 = &off_1003C7130;
        v29 = 30;
        do
        {
          v30 = OUTLINED_FUNCTION_6_4();
          IOReporter::addChannel(v30, *(v28 - 1) ^ 0x100000000000000, *v28);
          v28 += 2;
          --v29;
        }

        while (v29);
        AddReporterCallback = AppleBCMWLANIOReporting::getAddReporterCallback(a1);
        Target = AppleBCMWLANIOReporting::getTarget(a1);
        AppleBCMWLANBssManager::getCurrentBSS(a1);
        OUTLINED_FUNCTION_37_0();
        v16 = AddReporterCallback(Target);
        v8 = v4;
      }

      v324 = v16;
      OUTLINED_FUNCTION_102();
      OUTLINED_FUNCTION_101();
      if (v8)
      {
        v33 = OUTLINED_FUNCTION_6_4();
        v8 = a3;
        IOSimpleReporter::incrementValue(v33, v34 ^ (a3 << 56), v323);
        v35 = OUTLINED_FUNCTION_6_4();
        IOSimpleReporter::incrementValue(v35, (a3 << 56) ^ 0x5362744374732020, v322);
        v36 = OUTLINED_FUNCTION_6_4();
        IOSimpleReporter::incrementValue(v36, (a3 << 56) ^ 0x5362745774782020, v320);
        v37 = OUTLINED_FUNCTION_4_4();
        IOSimpleReporter::incrementValue(v37, v38, v321);
        v39 = OUTLINED_FUNCTION_6_4();
        IOSimpleReporter::incrementValue(v39, v4 ^ (a3 << 56), v318);
        OUTLINED_FUNCTION_6_4();
        OUTLINED_FUNCTION_82();
        IOSimpleReporter::incrementValue(v40, v41, v319);
        v42 = OUTLINED_FUNCTION_6_4();
        IOSimpleReporter::incrementValue(v42, (a3 << 56) ^ 0x5362745041442020, v316);
        v43 = OUTLINED_FUNCTION_6_4();
        v4 = 0x5362745041442020;
        IOSimpleReporter::incrementValue(v43, (a3 << 56) ^ 0x5362744132472020, v317);
        OUTLINED_FUNCTION_6_4();
        OUTLINED_FUNCTION_101();
        IOSimpleReporter::incrementValue(v44, v45, v314);
        OUTLINED_FUNCTION_6_4();
        OUTLINED_FUNCTION_24_0();
        IOSimpleReporter::incrementValue(v46, v47, v315);
        OUTLINED_FUNCTION_102();
      }

      switch(v10)
      {
        case 4:
          v48 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v48, v49 ^ (a3 << 56), v301);
          v50 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v50, (a3 << 56) ^ 0x5362744374732020, v295);
          v51 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v51, (a3 << 56) ^ 0x5362745774782020, v291);
          v52 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v52, v53, v293);
          v54 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v54, v4 ^ (a3 << 56), v289);
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_82();
          IOSimpleReporter::incrementValue(v55, v56, v292);
          v57 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v57, (a3 << 56) ^ 0x5362745041442020, v287);
          v58 = OUTLINED_FUNCTION_3_3();
          IOSimpleReporter::incrementValue(v58, v59, v285);
          v60 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v60, v61, v286);
          v62 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v62, (a3 << 56) ^ 0x5362745341472020, v288);
          v63 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v63, (a3 << 56) ^ 0x5362745341442020, v290);
          v64 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v64, (a3 << 56) ^ 0x53627444434D2020, v294);
          v65 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v65, v66, v296);
          v67 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v67, (a3 << 56) ^ 0x5362744148572020, v297);
          v68 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v68, (a3 << 56) ^ 0x5362744444432020, v298);
          v69 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v69, (a3 << 56) ^ 0x5362744147432020, v299);
          v70 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v70, (a3 << 56) ^ 0x5362744147482020, v300);
          v71 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v71, (a3 << 56) ^ 0x5362744142312020, v302);
          v72 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v72, (a3 << 56) ^ 0x5362744142322020, v303);
          v73 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v73, (a3 << 56) ^ 0x5362744142332020, v304);
          v74 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v74, (a3 << 56) ^ 0x5362744142342020, v305);
          v75 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v75, (a3 << 56) ^ 0x5362744142352020, v306);
          v76 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v76, (a3 << 56) ^ 0x5362744142362020, v307);
          v77 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v77, (a3 << 56) ^ 0x5362744142372020, v308);
          v78 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v78, (a3 << 56) ^ 0x5362744142382020, v309);
          v79 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v79, v80, v310);
          v81 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v81, (a3 << 56) ^ 0x5362744147332020, v311);
          v82 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v82, (a3 << 56) ^ 0x5362744147362020, v312);
          v83 = OUTLINED_FUNCTION_6_4();
          v84 = (a3 << 56) ^ 0x5362744147472020;
          v85 = v313;
          goto LABEL_29;
        case 6:
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_70();
          v115 = v114;
          IOSimpleReporter::incrementValue(v116, v117, v284);
          v118 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v118, v115 ^ (v8 << 56), v280);
          v119 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v119, (v8 << 56) ^ 0x5362744374732020, v274);
          v120 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v120, (v8 << 56) ^ 0x5362745774782020, v275);
          v121 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v121, v122, v276);
          v123 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v123, v4 ^ (v8 << 56), v277);
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_82();
          IOSimpleReporter::incrementValue(v124, v125, v278);
          v126 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v126, (v8 << 56) ^ 0x5362745041442020, v279);
          v127 = OUTLINED_FUNCTION_3_3();
          IOSimpleReporter::incrementValue(v127, v128, v281);
          v129 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v129, v130, v282);
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_24_0();
          v85 = v283;
          goto LABEL_29;
        case 7:
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_70();
          v98 = v97;
          IOSimpleReporter::incrementValue(v99, v100, v273);
          v101 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v101, v98 ^ (v8 << 56), v269);
          v102 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v102, (v8 << 56) ^ 0x5362744374732020, v263);
          v103 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v103, (v8 << 56) ^ 0x5362745774782020, v264);
          v104 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v104, v105, v265);
          v106 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v106, v4 ^ (v8 << 56), v266);
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_82();
          IOSimpleReporter::incrementValue(v107, v108, v267);
          v109 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v109, (v8 << 56) ^ 0x5362745041442020, v268);
          v110 = OUTLINED_FUNCTION_3_3();
          IOSimpleReporter::incrementValue(v110, v111, v270);
          v112 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v112, v113, v271);
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_24_0();
          v85 = v272;
          goto LABEL_29;
        case 9:
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_70();
          v132 = v131;
          IOSimpleReporter::incrementValue(v133, v134, v262);
          v135 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v135, v132 ^ (v8 << 56), v258);
          v136 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v136, (v8 << 56) ^ 0x5362744374732020, v252);
          v137 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v137, (v8 << 56) ^ 0x5362745774782020, v253);
          v138 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v138, v139, v254);
          v140 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v140, v4 ^ (v8 << 56), v255);
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_82();
          IOSimpleReporter::incrementValue(v141, v142, v256);
          v143 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v143, (v8 << 56) ^ 0x5362745041442020, v257);
          v144 = OUTLINED_FUNCTION_3_3();
          IOSimpleReporter::incrementValue(v144, v145, v259);
          v146 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v146, v147, v260);
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_24_0();
          v85 = v261;
          goto LABEL_29;
        case 11:
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_70();
          v149 = v148;
          IOSimpleReporter::incrementValue(v150, v151, v251);
          v152 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v152, v149 ^ (v8 << 56), v247);
          v153 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v153, (v8 << 56) ^ 0x5362744374732020, v241);
          v154 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v154, (v8 << 56) ^ 0x5362745774782020, v242);
          v155 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v155, v156, v243);
          v157 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v157, v4 ^ (v8 << 56), v244);
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_82();
          IOSimpleReporter::incrementValue(v158, v159, v245);
          v160 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v160, (v8 << 56) ^ 0x5362745041442020, v246);
          v161 = OUTLINED_FUNCTION_3_3();
          IOSimpleReporter::incrementValue(v161, v162, v248);
          v163 = OUTLINED_FUNCTION_4_4();
          IOSimpleReporter::incrementValue(v163, v164, v249);
          OUTLINED_FUNCTION_6_4();
          OUTLINED_FUNCTION_24_0();
          v85 = v250;
          goto LABEL_29;
        default:
          v86 = v3 ^ 1;
          if (a3 != 1)
          {
            v86 = 1;
          }

          if (v86)
          {
            goto LABEL_30;
          }

          v87 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v87, 0x526274706D612020uLL, v240);
          v88 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v88, 0x526274706D702020uLL, v238);
          v89 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v89, 0x5262744374732020uLL, v230);
          v90 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v90, 0x5262745774782020uLL, v231);
          v91 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v91, 0x5262745772782020uLL, v232);
          v92 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v92, 0x5262744170542020uLL, v233);
          v93 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v93, 0x5262745041472020uLL, v235);
          v94 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v94, 0x5262745041442020uLL, v234);
          v95 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v95, 0x5262744132472020uLL, v237);
          v96 = OUTLINED_FUNCTION_6_4();
          IOSimpleReporter::incrementValue(v96, 0x5262744132442020uLL, v236);
          v83 = OUTLINED_FUNCTION_6_4();
          v84 = 0x5262745341472020;
          v85 = v239;
LABEL_29:
          IOSimpleReporter::incrementValue(v83, v84, v85);
LABEL_30:
          v3 = v324;
          break;
      }
    }

    else
    {
      OUTLINED_FUNCTION_59();
      if (AppleBCMWLANIOReporting::getLogger(a1))
      {
        AppleBCMWLANIOReporting::getLogger(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIOReporting::getLogger(a1);
          OUTLINED_FUNCTION_88();
          CCLogStream::logEmergency(a1, "[dk] %s@%d:sizeof(btcoex) %lu payload->getLength() %lu\n");
        }
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANIOReportingPerSlice::initRxErrorReporter(AppleBCMWLANBssManager *a1, uint64_t (*a2)(void), uint64_t a3, int *a4)
{
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a1);
  ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
  *(*(a1 + 7) + 8 * a2 + 376) = OUTLINED_FUNCTION_29(ReporterProvider, v9, v10, v11);
  if (*(*(a1 + 7) + 8 * a2 + 376))
  {
    AppleBCMWLANIOReporting::getReporter(a1);
    OUTLINED_FUNCTION_99();
    OSSet::setObject(v13, *(v12 + 376));
    OUTLINED_FUNCTION_99();
    OUTLINED_FUNCTION_5_0();
    (*(v14 + 16))();
    v15 = &off_1003C5E70;
    v16 = 8;
    do
    {
      OUTLINED_FUNCTION_99();
      IOReporter::addChannel(*(v17 + 376), *(v15 - 1) ^ (a2 << 56), *v15);
      v15 += 2;
      --v16;
    }

    while (v16);
    v18 = OUTLINED_FUNCTION_58();
    snprintf(v18, v19, v20, "Slice", a2);
    AppleBCMWLANIOReporting::getAddReporterCallback(a1);
    v21 = OUTLINED_FUNCTION_77();
    AppleBCMWLANIOReporting::getTarget(v21);
    v22 = OUTLINED_FUNCTION_53();
    AppleBCMWLANBssManager::getCurrentBSS(v22);
    OUTLINED_FUNCTION_99();
    v23 = a2(a2 << 56);
  }

  else
  {
    v23 = -536870211;
  }

  *a4 = v23;
  OUTLINED_FUNCTION_58();

  return IOFreeData();
}

uint64_t AppleBCMWLANIOReportingPerSlice::initTxMngReporter(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fSliceCountersTxManagementCountersLUT\n", "initTxMngReporter", 559);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AppleBCMWLANUtil::AutoreleasedBuffer\n", "initTxMngReporter", 548);
}

uint64_t AppleBCMWLANIOReportingPerSlice::initRxMngReporter(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fSliceCountersRxManagementCountersLUT\n", "initRxMngReporter", 605);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AppleBCMWLANUtil::AutoreleasedBuffer\n", "initRxMngReporter", 593);
}

uint64_t AppleBCMWLANIOReportingPerSlice::initLTECoexReporter(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to allocate IOSimpleReporter\n", "initLTECoexReporter", 760);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fNoLTEFrameCountersLUT\n", "initLTECoexReporter", 740);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to allocate IOSimpleReporter\n", "initLTECoexReporter", 723);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fNoLTEFrameCountersLUT\n", "initLTECoexReporter", 703);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to allocate IOSimpleReporter\n", "initLTECoexReporter", 686);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fNoLTEFrameCountersLUT\n", "initLTECoexReporter", 665);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to allocate IOSimpleReporter\n", "initLTECoexReporter", 647);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AppleBCMWLANUtil::AutoreleasedBuffer\n", "initLTECoexReporter", 641);
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportUcodeCntPerSlice(AppleBCMWLANIOReporting *a1)
{
  if (!AppleBCMWLANIOReporting::getLogger(a1))
  {
    return 1;
  }

  AppleBCMWLANIOReporting::getLogger(a1);
  shouldLog = CCLogStream::shouldLog();
  result = 0;
  if (shouldLog)
  {
    Logger = AppleBCMWLANIOReporting::getLogger(a1);
    CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initiate Rx error reporter\n", "reportUcodeCntPerSlice", 853);
    return 0;
  }

  return result;
}

{
  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initiate Tx management reporter\n", "reportUcodeCntPerSlice", 890);
    }
  }

  return result;
}

{
  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initiate Rx management reporter\n", "reportUcodeCntPerSlice", 906);
    }
  }

  return result;
}

void AppleBCMWLANIOReportingPerSlice::reportUcodeCntPerSlice()
{
  OUTLINED_FUNCTION_4();
  if (AppleBCMWLANIOReporting::getLogger(v1))
  {
    AppleBCMWLANIOReporting::getLogger(v0);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v0);
      CCLogStream::logCrit(Logger, "[dk] %s@%d:Failed to allocate AppleBCMWLANIOReportingPerSlice_IVars\n", "reportUcodeCntPerSlice", 847);
    }
  }

  OUTLINED_FUNCTION_2();
}

void AppleBCMWLANIOReportingPerSlice::reportUcodeCntPerSlice(AppleBCMWLANIOReporting *a1)
{
  if (OUTLINED_FUNCTION_74(a1))
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReporting::getLogger(v1);
      OUTLINED_FUNCTION_66();
      CCLogStream::logEmergency(v2, "[dk] %s@%d:Out of range slice index %d\n", v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2();
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportWlCntPerSlice(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_25_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIOReporting::getLogger(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:Out of range slice index %d\n", v6, v7, v8);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportWlCntSliceFrameCounters(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initiate Tx management reporter\n", "reportWlCntSliceFrameCounters", 1216);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::initWlCntSliceFrameReporter(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initiate Tx management reporter\n", "initWlCntSliceFrameReporter", 1160);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initiate Rx management reporter\n", "initWlCntSliceFrameReporter", 1166);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AppleBCMWLANUtil::AutoreleasedBuffer\n", "initWlCntSliceFrameReporter", 1154);
}

uint64_t AppleBCMWLANIOReportingPerSlice::initWlCntReporter(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initiate Rx error reporter\n", "initWlCntReporter", 1436);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fSliceCountersWPA2mcastCountersLUT\n", "initWlCntReporter", 1512);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fSliceCountersWPA2mcastCountersLUT\n", "initWlCntReporter", 1480);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fSliceCountersTxErrorCountersLUT\n", "initWlCntReporter", 1450);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fSliceCountersTxErrorCountersLUT\n", "initWlCntReporter", 1419);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fSliceCountersRxCountersLUT\n", "initWlCntReporter", 1377);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fSliceCountersTxCountersLUT\n", "initWlCntReporter", 1349);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AppleBCMWLANUtil::AutoreleasedBuffer\n", "initWlCntReporter", 1324);
}

uint64_t AppleBCMWLANIOReportingPerSlice::initHeWlCntReporter(void (*a1)(const char *, ...), uint64_t a2, AppleBCMWLANBssManager *a3, int *a4)
{
  v6 = -536870212;
  if (a1 <= 1)
  {
    v9 = OUTLINED_FUNCTION_58();
    snprintf(v9, v10, v11, "Slice", a1);
    v12 = *(a3 + 7);
    if (!*(v12 + 8 * a1 + 1352))
    {
      CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a3);
      ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
      OUTLINED_FUNCTION_29(ReporterProvider, v15, v16, v17);
      OUTLINED_FUNCTION_42_0();
      *(v19 + 1352) = v18;
      OUTLINED_FUNCTION_42_0();
      if (!*(v20 + 1352))
      {
        goto LABEL_14;
      }

      AppleBCMWLANIOReporting::getReporter(a3);
      OUTLINED_FUNCTION_42_0();
      OSSet::setObject(v22, *(v21 + 1352));
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_5_0();
      (*(v23 + 16))();
      v24 = &off_1003C6640;
      v25 = 7;
      do
      {
        OUTLINED_FUNCTION_42_0();
        IOReporter::addChannel(*(v26 + 1352), *(v24 - 1) ^ (a1 << 56), *v24);
        v24 += 2;
        --v25;
      }

      while (v25);
      AppleBCMWLANIOReporting::getAddReporterCallback(a3);
      v27 = OUTLINED_FUNCTION_54();
      AppleBCMWLANIOReporting::getTarget(v27);
      v28 = OUTLINED_FUNCTION_57();
      AppleBCMWLANBssManager::getCurrentBSS(v28);
      OUTLINED_FUNCTION_26_0();
      MEMORY[0](v4);
      v12 = *(a3 + 7);
    }

    if (*(v12 + 8 * a1 + 1368))
    {
      v29 = a1 << 56;
    }

    else
    {
      v30 = AppleBCMWLANBssManager::getCurrentBSS(a3);
      v31 = IO80211Controller::getReporterProvider(v30);
      OUTLINED_FUNCTION_29(v31, v32, v33, v34);
      OUTLINED_FUNCTION_42_0();
      *(v36 + 1368) = v35;
      OUTLINED_FUNCTION_42_0();
      if (!*(v37 + 1368))
      {
        goto LABEL_14;
      }

      v4 = "Slice";
      AppleBCMWLANIOReporting::getReporter(a3);
      OUTLINED_FUNCTION_42_0();
      OSSet::setObject(v39, *(v38 + 1368));
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_5_0();
      (*(v40 + 16))();
      v29 = a1 << 56;
      v41 = &off_1003C66B0;
      v42 = 7;
      do
      {
        OUTLINED_FUNCTION_42_0();
        IOReporter::addChannel(*(v43 + 1368), *(v41 - 1) ^ v29, *v41);
        v41 += 2;
        --v42;
      }

      while (v42);
      AppleBCMWLANIOReporting::getAddReporterCallback(a3);
      v44 = OUTLINED_FUNCTION_53();
      AppleBCMWLANIOReporting::getTarget(v44);
      v45 = OUTLINED_FUNCTION_54();
      AppleBCMWLANBssManager::getCurrentBSS(v45);
      OUTLINED_FUNCTION_26_0();
      v46 = OUTLINED_FUNCTION_56();
      (v41)(v46);
    }

    OUTLINED_FUNCTION_69();
    v220 = IOReporter::addChannel(v48, v29 ^ v47, "Tx dynamic Frgamented packets");
    v49 = OUTLINED_FUNCTION_58();
    snprintf(v49, v50, "%s %d", "Slice", a1);
    AppleBCMWLANIOReporting::getRemoveReporterCallback(a3);
    v51 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v51);
    OUTLINED_FUNCTION_78();
    v52 = OUTLINED_FUNCTION_11_1();
    (v4)(v52);
    AppleBCMWLANIOReporting::getAddReporterCallback(a3);
    v53 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v53);
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_26_0();
    v54 = OUTLINED_FUNCTION_35();
    (v4)(v54);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_67();
    v57 = IOReporter::addChannel(v56, v29 ^ v55, "Rx dynamic Frgamented packets");
    OUTLINED_FUNCTION_40(v57, v58, v59, v60, v61, v62, v63, v64, v201, v211);
    AppleBCMWLANIOReporting::getRemoveReporterCallback(a3);
    v65 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v65);
    OUTLINED_FUNCTION_78();
    v66 = OUTLINED_FUNCTION_11_1();
    (v4)(v66);
    AppleBCMWLANIOReporting::getAddReporterCallback(a3);
    v67 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v67);
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_26_0();
    v68 = OUTLINED_FUNCTION_35();
    (v4)(v68);
    OUTLINED_FUNCTION_42_0();
    v70 = IOReporter::addChannel(*(v69 + 344), v29 ^ 0x536C436C724D6973, "Color miss Count");
    OUTLINED_FUNCTION_40(v70, v71, v72, v73, v74, v75, v76, v77, v202, v212);
    AppleBCMWLANIOReporting::getRemoveReporterCallback(a3);
    v78 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v78);
    OUTLINED_FUNCTION_78();
    v79 = OUTLINED_FUNCTION_11_1();
    (v4)(v79);
    AppleBCMWLANIOReporting::getAddReporterCallback(a3);
    v80 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v80);
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_26_0();
    v81 = OUTLINED_FUNCTION_35();
    (v4)(v81);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_96();
    v84 = IOReporter::addChannel(v83, v29 ^ v82, "Tx cancelled because CS Req");
    OUTLINED_FUNCTION_40(v84, v85, v86, v87, v88, v89, v90, v91, v203, v213);
    AppleBCMWLANIOReporting::getRemoveReporterCallback(a3);
    v92 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v92);
    OUTLINED_FUNCTION_78();
    v93 = OUTLINED_FUNCTION_11_1();
    (v4)(v93);
    AppleBCMWLANIOReporting::getAddReporterCallback(a3);
    v94 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v94);
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_26_0();
    v95 = OUTLINED_FUNCTION_35();
    (v4)(v95);
    OUTLINED_FUNCTION_42_0();
    IOReporter::addChannel(*(v96 + 376), v29 ^ 0x536C5772674E5353, "Wrong NSS");
    OUTLINED_FUNCTION_42_0();
    v98 = IOReporter::addChannel(*(v97 + 376), v29 ^ 0x536C555354726752, "Unsupported Trigger Rate");
    OUTLINED_FUNCTION_40(v98, v99, v100, v101, v102, v103, v104, v105, v204, v214);
    AppleBCMWLANIOReporting::getRemoveReporterCallback(a3);
    v106 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v106);
    OUTLINED_FUNCTION_78();
    v107 = OUTLINED_FUNCTION_11_1();
    (v4)(v107);
    AppleBCMWLANIOReporting::getAddReporterCallback(a3);
    v108 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v108);
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_26_0();
    v109 = OUTLINED_FUNCTION_35();
    (v4)(v109);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_69();
    IOReporter::addChannel(v111, v29 ^ v110, "Tx Trigger frames");
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_69();
    v114 = IOReporter::addChannel(v113, v29 ^ v112, "Tx Multi TID BACK");
    OUTLINED_FUNCTION_40(v114, v115, v116, v117, v118, v119, v120, v121, v205, v215);
    AppleBCMWLANIOReporting::getRemoveReporterCallback(a3);
    v122 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v122);
    OUTLINED_FUNCTION_78();
    v123 = OUTLINED_FUNCTION_11_1();
    (v4)(v123);
    AppleBCMWLANIOReporting::getAddReporterCallback(a3);
    v124 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v124);
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_26_0();
    v125 = OUTLINED_FUNCTION_35();
    (v4)(v125);
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_67();
    IOReporter::addChannel(v127, v29 ^ v126, "Rx Multi TID BACK");
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_67();
    IOReporter::addChannel(v129, v29 ^ v128, "Rx Multi STA BACK");
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_67();
    IOReporter::addChannel(v131, v29 ^ v130, "Rx Trigger with My AID");
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_67();
    IOReporter::addChannel(v133, v29 ^ v132, "Rx Trigger with Rand AID");
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_67();
    IOReporter::addChannel(v135, v29 ^ v134, "Rx Trigger Basic");
    v136 = OUTLINED_FUNCTION_27_0();
    IOReporter::addChannel(v136, v29 ^ 0x536C52785472674DLL, "Rx Trigger MU-RTS");
    v137 = OUTLINED_FUNCTION_27_0();
    IOReporter::addChannel(v137, v29 ^ 0x536C527854726742, "Rx Trigger BSRP");
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_96();
    IOReporter::addChannel(v139, v29 ^ v138, "Rx Trigger NFRP");
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_96();
    IOReporter::addChannel(v141, v29 ^ v140, "Rx Trigger BQRP");
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_69();
    IOReporter::addChannel(v143, v29 ^ v142, "Rx Trigger MU BAR");
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_96();
    v146 = IOReporter::addChannel(v145, v29 ^ v144, "Rx Trigger GCR MU BAR");
    OUTLINED_FUNCTION_40(v146, v147, v148, v149, v150, v151, v152, v153, v206, v216);
    AppleBCMWLANIOReporting::getRemoveReporterCallback(a3);
    v154 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v154);
    OUTLINED_FUNCTION_78();
    v155 = OUTLINED_FUNCTION_11_1();
    MEMORY[0x536C527854726742](v155);
    AppleBCMWLANIOReporting::getAddReporterCallback(a3);
    v156 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v156);
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_26_0();
    v157 = OUTLINED_FUNCTION_35();
    MEMORY[0x536C527854726742](v157);
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_69();
    IOReporter::addChannel(v159, v29 ^ v158, "Tx TBPPDU");
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_69();
    IOReporter::addChannel(v161, v29 ^ v160, "Tx Null TBPPDU");
    v162 = OUTLINED_FUNCTION_39_0();
    IOReporter::addChannel(v162, v29 ^ 0x536C4D676D745050, "Tx he mgmt TBPPDU");
    v163 = OUTLINED_FUNCTION_39_0();
    IOReporter::addChannel(v163, v29 ^ 0x536C54784D614D50, "Tx Multi TID AMPDU");
    v164 = OUTLINED_FUNCTION_39_0();
    IOReporter::addChannel(v164, v29 ^ 0x536C54784E414D50, "Tx Null AMPDU in Rsp to Basic Trig");
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_69();
    IOReporter::addChannel(v166, v29 ^ v165, "Tx Null AMPDU in Rsp to BSRP");
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_69();
    v169 = IOReporter::addChannel(v168, v29 ^ v167, "Tx Null AMPDU in Rsp to Trig FIFO empty");
    OUTLINED_FUNCTION_40(v169, v170, v171, v172, v173, v174, v175, v176, v207, v217);
    AppleBCMWLANIOReporting::getRemoveReporterCallback(a3);
    v177 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v177);
    OUTLINED_FUNCTION_78();
    v178 = OUTLINED_FUNCTION_11_1();
    MEMORY[0x536C54784D614D50](v178);
    AppleBCMWLANIOReporting::getAddReporterCallback(a3);
    v179 = OUTLINED_FUNCTION_57();
    AppleBCMWLANIOReporting::getTarget(v179);
    OUTLINED_FUNCTION_78();
    OUTLINED_FUNCTION_26_0();
    v180 = OUTLINED_FUNCTION_35();
    v6 = v220;
    MEMORY[0x536C54784D614D50](v180);
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_67();
    IOReporter::addChannel(v182, v29 ^ v181, "Rx SU PPDU");
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_67();
    IOReporter::addChannel(v184, v29 ^ v183, "Rx Range Extension SU PPDU");
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_67();
    v187 = IOReporter::addChannel(v186, v29 ^ v185, "Rx MU PPDU");
    OUTLINED_FUNCTION_40(v187, v188, v189, v190, v191, v192, v193, v194, v208, v218);
    AppleBCMWLANIOReporting::getRemoveReporterCallback(a3);
    v195 = OUTLINED_FUNCTION_77();
    AppleBCMWLANIOReporting::getTarget(v195);
    v196 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v196);
    a1("%s %d", v209, v219);
    AppleBCMWLANIOReporting::getAddReporterCallback(a3);
    v197 = OUTLINED_FUNCTION_77();
    AppleBCMWLANIOReporting::getTarget(v197);
    v198 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v198);
    OUTLINED_FUNCTION_26_0();
    v199 = OUTLINED_FUNCTION_56();
    a1(v199);
  }

LABEL_14:
  *a4 = v6;
  OUTLINED_FUNCTION_58();

  return IOFreeData();
}

uint64_t AppleBCMWLANIOReportingPerSlice::initTVPMReporter(uint64_t a1, AppleBCMWLANBssManager *a2, uint64_t a3, _DWORD *a4)
{
  if (a1 > 1)
  {
    goto LABEL_44;
  }

  v8 = OUTLINED_FUNCTION_58();
  snprintf(v8, v9, v10, "TVPM", a1);
  v11 = *(a2 + 7);
  if (*(v11 + 8 * a1 + 568))
  {
    v12 = 0;
  }

  else
  {
    CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a2);
    ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
    OUTLINED_FUNCTION_60(ReporterProvider, v15, v16, v17, v18);
    OUTLINED_FUNCTION_36_0();
    *(v20 + 568) = v19;
    OUTLINED_FUNCTION_36_0();
    if (!*(v21 + 568))
    {
      goto LABEL_44;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v23, *(v22 + 568));
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_5_0();
    (*(v24 + 16))();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_83();
    IOReporter::addChannel(v25, v4, "Tx Duty Cycle");
    do
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_61(*(v26 + 568));
      OUTLINED_FUNCTION_68();
    }

    while (!v27);
    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v28 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v28);
    v29 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v29);
    OUTLINED_FUNCTION_13_2();
    v30 = OUTLINED_FUNCTION_56();
    v12 = v4(v30);
    v11 = *(a2 + 7);
  }

  if (!*(v11 + 8 * a1 + 648))
  {
    v31 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v32 = IO80211Controller::getReporterProvider(v31);
    OUTLINED_FUNCTION_60(v32, v33, v34, v35, v36);
    OUTLINED_FUNCTION_36_0();
    *(v38 + 648) = v37;
    OUTLINED_FUNCTION_36_0();
    if (!*(v39 + 648))
    {
      goto LABEL_44;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v41, *(v40 + 648));
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_5_0();
    (*(v42 + 16))();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_83();
    IOReporter::addChannel(v43, v4, "PPM");
    do
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_61(*(v44 + 648));
      OUTLINED_FUNCTION_68();
    }

    while (!v27);
    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v45 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v45);
    v46 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v46);
    OUTLINED_FUNCTION_13_2();
    v47 = OUTLINED_FUNCTION_56();
    v12 = v4(v47);
    v11 = *(a2 + 7);
  }

  if (!*(v11 + 8 * a1 + 664))
  {
    v48 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v49 = IO80211Controller::getReporterProvider(v48);
    OUTLINED_FUNCTION_60(v49, v50, v51, v52, v53);
    OUTLINED_FUNCTION_36_0();
    *(v55 + 664) = v54;
    OUTLINED_FUNCTION_36_0();
    if (!*(v56 + 664))
    {
      goto LABEL_44;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v58, *(v57 + 664));
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_5_0();
    (*(v59 + 16))();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_83();
    IOReporter::addChannel(v60, v4, "CTLM Index");
    do
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_61(*(v61 + 664));
      OUTLINED_FUNCTION_68();
    }

    while (!v27);
    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v62 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v62);
    v63 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v63);
    OUTLINED_FUNCTION_13_2();
    v64 = OUTLINED_FUNCTION_56();
    v12 = v4(v64);
    v11 = *(a2 + 7);
  }

  if (!*(v11 + 8 * a1 + 584))
  {
    v65 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v66 = IO80211Controller::getReporterProvider(v65);
    OUTLINED_FUNCTION_90(v66, v67, v68, v69, v70);
    OUTLINED_FUNCTION_36_0();
    *(v72 + 584) = v71;
    OUTLINED_FUNCTION_36_0();
    if (!*(v73 + 584))
    {
      goto LABEL_44;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v75, *(v74 + 584));
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_5_0();
    (*(v76 + 16))();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_83();
    IOReporter::addChannel(v77, v4, "Tx Power Backoff");
    for (i = 0; i != 7; ++i)
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_61(*(v79 + 584));
    }

    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v80 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v80);
    v81 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v81);
    OUTLINED_FUNCTION_13_2();
    v82 = OUTLINED_FUNCTION_56();
    v12 = v4(v82);
    v11 = *(a2 + 7);
  }

  if (!*(v11 + 8 * a1 + 600))
  {
    v83 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v84 = IO80211Controller::getReporterProvider(v83);
    IOStateReporter::with(v84, 0x8010, 3u, 0, v85);
    OUTLINED_FUNCTION_36_0();
    *(v87 + 600) = v86;
    OUTLINED_FUNCTION_36_0();
    if (!*(v88 + 600))
    {
      goto LABEL_44;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v90, *(v89 + 600));
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_5_0();
    (*(v91 + 16))();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_83();
    IOReporter::addChannel(v92, v4, "Active Chains");
    for (j = 0; j != 3; ++j)
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_61(*(v94 + 600));
    }

    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v95 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v95);
    v96 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v96);
    OUTLINED_FUNCTION_13_2();
    v97 = OUTLINED_FUNCTION_56();
    v12 = v4(v97);
    v11 = *(a2 + 7);
  }

  if (*(v11 + 8 * a1 + 616))
  {
    goto LABEL_36;
  }

  v98 = AppleBCMWLANBssManager::getCurrentBSS(a2);
  v99 = IO80211Controller::getReporterProvider(v98);
  OUTLINED_FUNCTION_90(v99, v100, v101, v102, v103);
  OUTLINED_FUNCTION_36_0();
  *(v105 + 616) = v104;
  OUTLINED_FUNCTION_36_0();
  if (!*(v106 + 616))
  {
LABEL_44:
    v12 = OUTLINED_FUNCTION_97();
    goto LABEL_41;
  }

  AppleBCMWLANIOReporting::getReporter(a2);
  OUTLINED_FUNCTION_36_0();
  OSSet::setObject(v108, *(v107 + 616));
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_5_0();
  (*(v109 + 16))();
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_83();
  IOReporter::addChannel(v110, v4, "Temperature");
  for (k = 0; k != 7; ++k)
  {
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_61(*(v112 + 616));
  }

  AppleBCMWLANIOReporting::getAddReporterCallback(a2);
  v113 = OUTLINED_FUNCTION_53();
  AppleBCMWLANIOReporting::getTarget(v113);
  v114 = OUTLINED_FUNCTION_54();
  AppleBCMWLANBssManager::getCurrentBSS(v114);
  OUTLINED_FUNCTION_13_2();
  v115 = OUTLINED_FUNCTION_56();
  v12 = v4(v115);
  v11 = *(a2 + 7);
LABEL_36:
  if (!*(v11 + 8 * a1 + 632))
  {
    v116 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v117 = IO80211Controller::getReporterProvider(v116);
    IOStateReporter::with(v117, 0x8010, 3u, 0, v118);
    OUTLINED_FUNCTION_36_0();
    *(v120 + 632) = v119;
    OUTLINED_FUNCTION_36_0();
    v12 = OUTLINED_FUNCTION_97();
    if (v121)
    {
      AppleBCMWLANIOReporting::getReporter(a2);
      OUTLINED_FUNCTION_36_0();
      OSSet::setObject(v123, *(v122 + 632));
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_5_0();
      (*(v124 + 16))();
      OUTLINED_FUNCTION_36_0();
      v126 = ((a1 << 56) ^ 0x4D20204261747473);
      IOReporter::addChannel(*(v125 + 632), v126, "Battery Voltage");
      for (m = 0; m != 3; ++m)
      {
        OUTLINED_FUNCTION_36_0();
        IOStateReporter::setStateID(*(v128 + 632), v126, m, kVoltageStates[m]);
      }

      AppleBCMWLANIOReporting::getAddReporterCallback(a2);
      v129 = OUTLINED_FUNCTION_77();
      AppleBCMWLANIOReporting::getTarget(v129);
      v130 = OUTLINED_FUNCTION_53();
      AppleBCMWLANBssManager::getCurrentBSS(v130);
      OUTLINED_FUNCTION_13_2();
      v12 = v126(3);
    }
  }

LABEL_41:
  *a4 = v12;
  OUTLINED_FUNCTION_58();

  return IOFreeData();
}

uint64_t AppleBCMWLANIOReportingPerSlice::initDynSARReporter(uint64_t a1, AppleBCMWLANBssManager *a2, uint64_t a3, _DWORD *a4)
{
  if (a1 > 1)
  {
    goto LABEL_63;
  }

  v7 = OUTLINED_FUNCTION_58();
  snprintf(v7, v8, v9, "DSA", a1);
  v10 = *(a2 + 7);
  if (*(v10 + 8 * a1 + 696))
  {
    v11 = 0;
  }

  else
  {
    CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(a2);
    ReporterProvider = IO80211Controller::getReporterProvider(CurrentBSS);
    IOStateReporter::with(ReporterProvider, 0x8010, 5u, 0, v14);
    OUTLINED_FUNCTION_36_0();
    *(v16 + 696) = v15;
    OUTLINED_FUNCTION_36_0();
    if (!*(v17 + 696))
    {
      goto LABEL_63;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v19, *(v18 + 696));
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_5_0();
    (*(v20 + 16))();
    OUTLINED_FUNCTION_36_0();
    IOReporter::addChannel(*(v21 + 696), (a1 << 56) ^ 0x4453537461747573, "DSA Status");
    for (i = 0; i != 5; ++i)
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_61(*(v23 + 696));
    }

    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v24 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v24);
    v25 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v25);
    OUTLINED_FUNCTION_13_2();
    v26 = OUTLINED_FUNCTION_56();
    v11 = (((a1 << 56) ^ 0x4453537461747573))(v26);
    v10 = *(a2 + 7);
  }

  if (!*(v10 + 8 * a1 + 712))
  {
    v27 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v28 = IO80211Controller::getReporterProvider(v27);
    OUTLINED_FUNCTION_90(v28, v29, v30, v31, v32);
    OUTLINED_FUNCTION_36_0();
    *(v34 + 712) = v33;
    OUTLINED_FUNCTION_36_0();
    if (!*(v35 + 712))
    {
      goto LABEL_63;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v37, *(v36 + 712));
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_5_0();
    (*(v38 + 16))();
    OUTLINED_FUNCTION_36_0();
    IOReporter::addChannel(*(v39 + 712), (a1 << 56) ^ 0x4453507772427374, "DSA Power Boost (dB)");
    for (j = 0; j != 7; ++j)
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_61(*(v41 + 712));
    }

    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v42 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v42);
    v43 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v43);
    OUTLINED_FUNCTION_13_2();
    v44 = OUTLINED_FUNCTION_56();
    v11 = (((a1 << 56) ^ 0x4453507772427374))(v44);
    v10 = *(a2 + 7);
  }

  if (!*(v10 + 8 * a1 + 728))
  {
    v45 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v46 = IO80211Controller::getReporterProvider(v45);
    OUTLINED_FUNCTION_60(v46, v47, v48, v49, v50);
    OUTLINED_FUNCTION_36_0();
    *(v52 + 728) = v51;
    OUTLINED_FUNCTION_36_0();
    if (!*(v53 + 728))
    {
      goto LABEL_63;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v55, *(v54 + 728));
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_5_0();
    (*(v56 + 16))();
    OUTLINED_FUNCTION_36_0();
    IOReporter::addChannel(*(v57 + 728), (a1 << 56) ^ 0x44535444416E7430, "DSA TxDC Ant 0 (%)");
    do
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_79(*(v58 + 728), v59, v60, 0x3130302D39302520uLL);
      OUTLINED_FUNCTION_68();
    }

    while (!v61);
    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v62 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v62);
    v63 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v63);
    OUTLINED_FUNCTION_13_2();
    v64 = OUTLINED_FUNCTION_56();
    v11 = (((a1 << 56) ^ 0x44535444416E7430))(v64);
    v10 = *(a2 + 7);
  }

  if (!*(v10 + 8 * a1 + 744))
  {
    v65 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v66 = IO80211Controller::getReporterProvider(v65);
    OUTLINED_FUNCTION_60(v66, v67, v68, v69, v70);
    OUTLINED_FUNCTION_36_0();
    *(v72 + 744) = v71;
    OUTLINED_FUNCTION_36_0();
    if (!*(v73 + 744))
    {
      goto LABEL_63;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v75, *(v74 + 744));
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_5_0();
    (*(v76 + 16))();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_63();
    v79 = (v78 ^ (v77 << 56));
    IOReporter::addChannel(v80, v79, "DSA Util Ant 0 (%)");
    do
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_61(*(v81 + 744));
      OUTLINED_FUNCTION_68();
    }

    while (!v61);
    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v82 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v82);
    v83 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v83);
    OUTLINED_FUNCTION_13_2();
    v84 = OUTLINED_FUNCTION_56();
    v11 = v79(v84);
    v10 = *(a2 + 7);
  }

  if (!*(v10 + 8 * a1 + 760))
  {
    v85 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v86 = IO80211Controller::getReporterProvider(v85);
    OUTLINED_FUNCTION_60(v86, v87, v88, v89, v90);
    OUTLINED_FUNCTION_36_0();
    *(v92 + 760) = v91;
    OUTLINED_FUNCTION_36_0();
    if (!*(v93 + 760))
    {
      goto LABEL_63;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v95, *(v94 + 760));
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_5_0();
    (*(v96 + 16))();
    OUTLINED_FUNCTION_36_0();
    IOReporter::addChannel(*(v97 + 760), (a1 << 56) ^ 0x44535444416E7431, "DSA TxDC Ant 1 (%)");
    do
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_79(*(v98 + 760), v99, v100, 0x3130302D39302520uLL);
      OUTLINED_FUNCTION_68();
    }

    while (!v61);
    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v101 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v101);
    v102 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v102);
    OUTLINED_FUNCTION_13_2();
    v103 = OUTLINED_FUNCTION_56();
    v11 = (((a1 << 56) ^ 0x44535444416E7431))(v103);
    v10 = *(a2 + 7);
  }

  if (!*(v10 + 8 * a1 + 776))
  {
    v104 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v105 = IO80211Controller::getReporterProvider(v104);
    OUTLINED_FUNCTION_60(v105, v106, v107, v108, v109);
    OUTLINED_FUNCTION_36_0();
    *(v111 + 776) = v110;
    OUTLINED_FUNCTION_36_0();
    if (!*(v112 + 776))
    {
      goto LABEL_63;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v114, *(v113 + 776));
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_5_0();
    (*(v115 + 16))();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_63();
    v118 = ((v116 + 1) ^ (v117 << 56));
    IOReporter::addChannel(v119, v118, "DSA Util Ant 1 (%)");
    do
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_61(*(v120 + 776));
      OUTLINED_FUNCTION_68();
    }

    while (!v61);
    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v121 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v121);
    v122 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v122);
    OUTLINED_FUNCTION_13_2();
    v123 = OUTLINED_FUNCTION_56();
    v11 = v118(v123);
    v10 = *(a2 + 7);
  }

  if (!*(v10 + 8 * a1 + 792))
  {
    v124 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v125 = IO80211Controller::getReporterProvider(v124);
    OUTLINED_FUNCTION_60(v125, v126, v127, v128, v129);
    OUTLINED_FUNCTION_36_0();
    *(v131 + 792) = v130;
    OUTLINED_FUNCTION_36_0();
    if (!*(v132 + 792))
    {
      goto LABEL_63;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v134, *(v133 + 792));
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_5_0();
    (*(v135 + 16))();
    OUTLINED_FUNCTION_36_0();
    IOReporter::addChannel(*(v136 + 792), (a1 << 56) ^ 0x44535444416E7432, "DSA TxDC Ant 2 (%)");
    do
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_79(*(v137 + 792), v138, v139, 0x3130302D39302520uLL);
      OUTLINED_FUNCTION_68();
    }

    while (!v61);
    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v140 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v140);
    v141 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v141);
    OUTLINED_FUNCTION_13_2();
    v142 = OUTLINED_FUNCTION_56();
    v11 = (((a1 << 56) ^ 0x44535444416E7432))(v142);
    v10 = *(a2 + 7);
  }

  if (!*(v10 + 8 * a1 + 808))
  {
    v143 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v144 = IO80211Controller::getReporterProvider(v143);
    OUTLINED_FUNCTION_60(v144, v145, v146, v147, v148);
    OUTLINED_FUNCTION_36_0();
    *(v150 + 808) = v149;
    OUTLINED_FUNCTION_36_0();
    if (!*(v151 + 808))
    {
      goto LABEL_63;
    }

    AppleBCMWLANIOReporting::getReporter(a2);
    OUTLINED_FUNCTION_36_0();
    OSSet::setObject(v153, *(v152 + 808));
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_5_0();
    (*(v154 + 16))();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_63();
    v157 = ((v155 + 2) ^ (v156 << 56));
    IOReporter::addChannel(v158, v157, "DSA Util Ant 2 (%)");
    do
    {
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_61(*(v159 + 808));
      OUTLINED_FUNCTION_68();
    }

    while (!v61);
    AppleBCMWLANIOReporting::getAddReporterCallback(a2);
    v160 = OUTLINED_FUNCTION_53();
    AppleBCMWLANIOReporting::getTarget(v160);
    v161 = OUTLINED_FUNCTION_54();
    AppleBCMWLANBssManager::getCurrentBSS(v161);
    OUTLINED_FUNCTION_13_2();
    v162 = OUTLINED_FUNCTION_56();
    v11 = v157(v162);
    v10 = *(a2 + 7);
  }

  if (*(v10 + 8 * a1 + 824))
  {
    goto LABEL_55;
  }

  v163 = AppleBCMWLANBssManager::getCurrentBSS(a2);
  v164 = IO80211Controller::getReporterProvider(v163);
  OUTLINED_FUNCTION_60(v164, v165, v166, v167, v168);
  OUTLINED_FUNCTION_36_0();
  *(v170 + 824) = v169;
  OUTLINED_FUNCTION_36_0();
  if (!*(v171 + 824))
  {
LABEL_63:
    v11 = OUTLINED_FUNCTION_97();
    goto LABEL_60;
  }

  AppleBCMWLANIOReporting::getReporter(a2);
  OUTLINED_FUNCTION_36_0();
  OSSet::setObject(v173, *(v172 + 824));
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_5_0();
  (*(v174 + 16))();
  OUTLINED_FUNCTION_36_0();
  IOReporter::addChannel(*(v175 + 824), (a1 << 56) ^ 0x44535444416E7433, "DSA TxDC Ant 3 (%)");
  do
  {
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_79(*(v176 + 824), v177, v178, 0x3130302D39302520uLL);
    OUTLINED_FUNCTION_68();
  }

  while (!v61);
  AppleBCMWLANIOReporting::getAddReporterCallback(a2);
  v179 = OUTLINED_FUNCTION_53();
  AppleBCMWLANIOReporting::getTarget(v179);
  v180 = OUTLINED_FUNCTION_54();
  AppleBCMWLANBssManager::getCurrentBSS(v180);
  OUTLINED_FUNCTION_13_2();
  v181 = OUTLINED_FUNCTION_56();
  v11 = (((a1 << 56) ^ 0x44535444416E7433))(v181);
  v10 = *(a2 + 7);
LABEL_55:
  if (!*(v10 + 8 * a1 + 840))
  {
    v182 = AppleBCMWLANBssManager::getCurrentBSS(a2);
    v183 = IO80211Controller::getReporterProvider(v182);
    OUTLINED_FUNCTION_60(v183, v184, v185, v186, v187);
    OUTLINED_FUNCTION_36_0();
    *(v189 + 840) = v188;
    OUTLINED_FUNCTION_36_0();
    v11 = OUTLINED_FUNCTION_97();
    if (v190)
    {
      AppleBCMWLANIOReporting::getReporter(a2);
      OUTLINED_FUNCTION_36_0();
      OSSet::setObject(v192, *(v191 + 840));
      OUTLINED_FUNCTION_36_0();
      OUTLINED_FUNCTION_5_0();
      (*(v193 + 16))();
      OUTLINED_FUNCTION_36_0();
      v195 = ((a1 << 56) ^ 0x44535574416E7433);
      IOReporter::addChannel(*(v194 + 840), v195, "DSA Util Ant 3 (%)");
      for (k = 0; k != 10; ++k)
      {
        OUTLINED_FUNCTION_36_0();
        IOStateReporter::setStateID(*(v197 + 840), v195, k, *&kDsaUtilPercStates[8 * k]);
      }

      AppleBCMWLANIOReporting::getAddReporterCallback(a2);
      v198 = OUTLINED_FUNCTION_77();
      AppleBCMWLANIOReporting::getTarget(v198);
      v199 = OUTLINED_FUNCTION_53();
      AppleBCMWLANBssManager::getCurrentBSS(v199);
      OUTLINED_FUNCTION_13_2();
      v11 = v195(10);
    }
  }

LABEL_60:
  *a4 = v11;
  OUTLINED_FUNCTION_58();

  return IOFreeData();
}

void AppleBCMWLANIOReportingPerSlice::reportScanPwrStats(AppleBCMWLANIOReporting *a1)
{
  if (OUTLINED_FUNCTION_74(a1))
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReporting::getLogger(v1);
      OUTLINED_FUNCTION_66();
      CCLogStream::logEmergency(v2, "[dk] %s@%d:Out of range slice index %d\n", v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2();
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportScanPwrStats(AppleBCMWLANIOReporting *a1, int a2)
{
  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initPwrScanStatsReporter slice %d\n", "reportScanPwrStats", 2281, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportScanPwrStats(AppleBCMWLANIOReporting *a1)
{
  if (!AppleBCMWLANIOReporting::getLogger(a1) || (AppleBCMWLANIOReporting::getLogger(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_87();
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Insufficient buf sized scan_stats_data %ld to hold payload", buf, 0x22u);
    }
  }

  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      return CCLogStream::logAlert(Logger, "[dk] %s@%d:Insufficient buf sized scan_stats_data %ld to hold payload", "reportScanPwrStats", 2275, 148);
    }
  }

  return result;
}

{
  if (!AppleBCMWLANIOReporting::getLogger(a1) || (AppleBCMWLANIOReporting::getLogger(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_72();
      v5 = 2274;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Received NULL pointer\n", buf, 0x18u);
    }
  }

  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      return CCLogStream::logAlert(Logger, "[dk] %s@%d:Received NULL pointer\n", "reportScanPwrStats", 2274);
    }
  }

  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to allocate scan_stats_data buf", "reportScanPwrStats", 2271);
}

uint64_t AppleBCMWLANIOReportingPerSlice::initPwrScanStat6EReporter(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_25_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:%s:%d:Out of range slice index %d\n", "initPwrScanStat6EReporter", 2341, "initPwrScanStat6EReporter", 2341, v2);
    }
  }

  *v1 = v4;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Incorrect length written by snprintf\n", "initPwrScanStat6EReporter", 2345);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AppleBCMWLANUtil::AutoreleasedBuffer\n", "initPwrScanStat6EReporter", 2339);
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportScanPwrStats6E(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_25_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:%s:%d:Out of range slice index %d\n", "reportScanPwrStats6E", 2364, "reportScanPwrStats6E", 2364, v2);
    }
  }

  *v1 = v4;
  return result;
}

{
  result = OUTLINED_FUNCTION_25_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIOReporting::getLogger(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:Failed to initPwrScanStatsReporter slice %d\n", v6, v7, v8);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportScanPwrStats6E(AppleBCMWLANIOReporting *a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_59();
  result = AppleBCMWLANIOReporting::getLogger(v6);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      v8 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v8);
      result = CCLogStream::logEmergency(a1, "[dk] %s@%d:sizeof(wl_pwr_scan_6E_stats_t) %lu cnt->getLength() %lu\n", "reportScanPwrStats6E", 2366, 24, Length);
    }
  }

  *a3 = v3;
  return result;
}

void AppleBCMWLANIOReportingPerSlice::reportScanPwrStatsAtLinkUp(AppleBCMWLANIOReporting *a1)
{
  if (OUTLINED_FUNCTION_74(a1))
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReporting::getLogger(v1);
      OUTLINED_FUNCTION_66();
      CCLogStream::logEmergency(v2, "[dk] %s@%d:Out of range slice index %d\n", v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2();
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportScanPwrStatsAtLinkUp(AppleBCMWLANIOReporting *a1, int a2)
{
  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initPwrScanStatsAtLinkUpReporter slice %d\n", "reportScanPwrStatsAtLinkUp", 2444, a2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportScanPwrStatsAtLinkUp(AppleBCMWLANIOReporting *a1)
{
  if (!AppleBCMWLANIOReporting::getLogger(a1) || (AppleBCMWLANIOReporting::getLogger(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_73();
      OUTLINED_FUNCTION_87();
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Insufficient buf sized scan_stats_data %ld to hold payload", buf, 0x22u);
    }
  }

  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      return CCLogStream::logAlert(Logger, "[dk] %s@%d:Insufficient buf sized scan_stats_data %ld to hold payload", "reportScanPwrStatsAtLinkUp", 2438, 148);
    }
  }

  return result;
}

{
  if (!AppleBCMWLANIOReporting::getLogger(a1) || (AppleBCMWLANIOReporting::getLogger(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_72();
      v5 = 2437;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: Received NULL pointer\n", buf, 0x18u);
    }
  }

  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      return CCLogStream::logAlert(Logger, "[dk] %s@%d:Received NULL pointer\n", "reportScanPwrStatsAtLinkUp", 2437);
    }
  }

  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logAlert(Logger, "[dk] %s@%d:Failed to allocate scan_stats_data buf", "reportScanPwrStatsAtLinkUp", 2434);
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportScanPwrStatsSinceLinkUp(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_25_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIOReporting::getLogger(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:Out of range slice index %d\n", v6, v7, v8);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_25_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIOReporting::getLogger(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:Failed to initPwrScanStatsSinceLinkUpReporter slice %d\n", v6, v7, v8);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportScanModeStatsSinceLinkUp(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_25_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIOReporting::getLogger(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:Out of range slice index %d\n", v6, v7, v8);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initScanModeSinceLinkUpReporter slice %d\n", "reportScanModeStatsSinceLinkUp", 2634, 0);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initScanModeSinceLinkUpReporter slice %d\n", "reportScanModeStatsSinceLinkUp", 2639, 1);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initScanModeSinceLinkUpReporter slice %d\n", "reportScanModeStatsSinceLinkUp", 2644, 2);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportHeCntPerSlice(AppleBCMWLANIOReporting *a1)
{
  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to init Slice Count reporters\n", "reportHeCntPerSlice", 3164);
    }
  }

  return result;
}

{
  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initiate Slice Frame reporter\n", "reportHeCntPerSlice", 3169);
    }
  }

  return result;
}

{
  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initiate Slice He reporter\n", "reportHeCntPerSlice", 3174);
    }
  }

  return result;
}

void AppleBCMWLANIOReportingPerSlice::reportHeCntPerSlice(AppleBCMWLANIOReporting *a1)
{
  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      v2 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v2);
      CCLogStream::logEmergency(a1, "[dk] %s@%d:invalid payload length %lu expect one of size(%lu,%lu,%lu)\n", "reportHeCntPerSlice", 3187, Length, 200, 220, 224);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  if (OUTLINED_FUNCTION_74(a1))
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReporting::getLogger(v1);
      OUTLINED_FUNCTION_66();
      CCLogStream::logEmergency(v2, "[dk] %s@%d:Out of range slice index %d\n", v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2();
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportOmiCntPerSlice(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initiate OMI reporter\n", "reportOmiCntPerSlice", 3326);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_25_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIOReporting::getLogger(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:Out of range slice index %d\n", v6, v7, v8);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportOmiCntPerSlice(AppleBCMWLANIOReporting *a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_59();
  result = AppleBCMWLANIOReporting::getLogger(v6);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      v8 = OUTLINED_FUNCTION_86();
      Length = OSData::getLength(v8);
      result = CCLogStream::logEmergency(a1, "[dk] %s@%d:sizeof(wl_he_omi_cnt_wlc_v1) %lu payload->getLength() %lu\n", "reportOmiCntPerSlice", 3330, 68, Length);
    }
  }

  *a3 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::addDictionaryChanspec(AppleBCMWLANIOReporting *a1)
{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to find channelDictionary\n", "addDictionaryChanspec", 3420);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set transitions\n", "addDictionaryChanspec", 3432);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get joinedAggStatsDictionary\n", "addDictionaryChanspec", 3446);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get totalDur\n", "addDictionaryChanspec", 3461);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set totalDur\n", "addDictionaryChanspec", 3457);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get transitions\n", "addDictionaryChanspec", 3477);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set transitions\n", "addDictionaryChanspec", 3473);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonsForJoiningDictionary\n", "addDictionaryChanspec", 3490);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set reasonsForJoiningDictionary\n", "addDictionaryChanspec", 3496);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set joinedAggStatsDictionary\n", "addDictionaryChanspec", 3504);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get leftAggStatsDictionary\n", "addDictionaryChanspec", 3519);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonsForLeavingDictionary\n", "addDictionaryChanspec", 3532);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set reasonsForLeavingDictionary\n", "addDictionaryChanspec", 3538);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set leftAggStatsDictionary\n", "addDictionaryChanspec", 3546);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set channelDictionary\n", "addDictionaryChanspec", 3554);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc reasonsForLeavingDictionary\n", "addDictionaryChanspec", 3527);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc leftAggStatsDictionary\n", "addDictionaryChanspec", 3514);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc reasonsForJoiningDictionary\n", "addDictionaryChanspec", 3486);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc transitions\n", "addDictionaryChanspec", 3470);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc totalDur\n", "addDictionaryChanspec", 3454);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc joinedAggStatsDictionary\n", "addDictionaryChanspec", 3441);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc chanspecNum\n", "addDictionaryChanspec", 3430);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc channelDictionary\n", "addDictionaryChanspec", 3415);
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc channelKey\n", "addDictionaryChanspec", 3408);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:appleChanSpec convToAscii strnlen >= bufLen\n", "addDictionaryChanspec", 3406);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_25_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIOReporting::getLogger(v2);
      OUTLINED_FUNCTION_66();
      result = CCLogStream::logEmergency(v5, "[dk] %s@%d:Failed to create ivars->fChannelSwitchDictionary[%d]\n", v6, v7, v8);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AutoreleasedBuffer\n", "addDictionaryChanspec", 3389);
}

uint64_t AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForJoining(AppleBCMWLANIOReporting *a1)
{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonDictionary\n", "addDictionaryChannelReasonForJoining", 3692);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get totalDur\n", "addDictionaryChannelReasonForJoining", 3707);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set reasonNum\n", "addDictionaryChannelReasonForJoining", 3703);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get totalDur\n", "addDictionaryChannelReasonForJoining", 3723);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set totalDur\n", "addDictionaryChannelReasonForJoining", 3719);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to update transitions\n", "addDictionaryChannelReasonForJoining", 3748);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get transitions\n", "addDictionaryChannelReasonForJoining", 3745);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set transitions\n", "addDictionaryChannelReasonForJoining", 3736);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set reasonDictionary\n", "addDictionaryChannelReasonForJoining", 3758);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to update transitions\n", "addDictionaryChannelReasonForJoining", 3738);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc transitions\n", "addDictionaryChannelReasonForJoining", 3733);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc totalDur\n", "addDictionaryChannelReasonForJoining", 3716);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc reasonNum\n", "addDictionaryChannelReasonForJoining", 3700);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc reasonDict\n", "addDictionaryChannelReasonForJoining", 3687);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonsForJoiningDictionary\n", "addDictionaryChannelReasonForJoining", 3678);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to update transitions\n", "addDictionaryChannelReasonForJoining", 3670);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get transitions\n", "addDictionaryChannelReasonForJoining", 3665);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get joinedAggStatsDictionary\n", "addDictionaryChannelReasonForJoining", 3662);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get channelDictionary\n", "addDictionaryChannelReasonForJoining", 3659);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:No ivars->fChannelSwitchDictionary[sliceIndex]\n", "addDictionaryChannelReasonForJoining", 3655);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc reasonKey\n", "addDictionaryChannelReasonForJoining", 3652);
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc channelKey\n", "addDictionaryChannelReasonForJoining", 3643);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:appleChanSpec convToAscii strnlen >= bufLen\n", "addDictionaryChannelReasonForJoining", 3641);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AutoreleasedBuffer\n", "addDictionaryChannelReasonForJoining", 3630);
}

uint64_t AppleBCMWLANIOReportingPerSlice::addNumberValue(AppleBCMWLANIOReporting *a1)
{
  AppleBCMWLANIOReporting::getLogger(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Invalid data for %s\n", v3, v4, v5);
}

uint64_t AppleBCMWLANIOReportingPerSlice::addDictionaryChannelReasonForLeaving(AppleBCMWLANIOReporting *a1)
{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonDictionary\n", "addDictionaryChannelReasonForLeaving", 3869);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get totalDur\n", "addDictionaryChannelReasonForLeaving", 3884);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set reasonNum\n", "addDictionaryChannelReasonForLeaving", 3880);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to update transitions\n", "addDictionaryChannelReasonForLeaving", 3905);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get transitions\n", "addDictionaryChannelReasonForLeaving", 3902);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set transitions\n", "addDictionaryChannelReasonForLeaving", 3898);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set reasonDictionary\n", "addDictionaryChannelReasonForLeaving", 3915);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to update totalDur\n", "addDictionaryChannelReasonForLeaving", 3960);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get totalDur\n", "addDictionaryChannelReasonForLeaving", 3957);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set totalDur\n", "addDictionaryChannelReasonForLeaving", 3953);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonDictionary\n", "addDictionaryChannelReasonForLeaving", 3983);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get totalDur\n", "addDictionaryChannelReasonForLeaving", 3998);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set reasonNum\n", "addDictionaryChannelReasonForLeaving", 3994);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get transitions\n", "addDictionaryChannelReasonForLeaving", 4014);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set transitions\n", "addDictionaryChannelReasonForLeaving", 4010);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to update totalDur\n", "addDictionaryChannelReasonForLeaving", 4033);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get totalDur\n", "addDictionaryChannelReasonForLeaving", 4030);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set totalDur\n", "addDictionaryChannelReasonForLeaving", 4026);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set reasonDictionary\n", "addDictionaryChannelReasonForLeaving", 4043);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc totalDur\n", "addDictionaryChannelReasonForLeaving", 4023);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc transitions\n", "addDictionaryChannelReasonForLeaving", 4007);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc reasonNum\n", "addDictionaryChannelReasonForLeaving", 3991);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc reasonDict\n", "addDictionaryChannelReasonForLeaving", 3978);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonsForJoiningDictionary\n", "addDictionaryChannelReasonForLeaving", 3969);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc totalDur\n", "addDictionaryChannelReasonForLeaving", 3950);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get joinedAggStatsDictionary\n", "addDictionaryChannelReasonForLeaving", 3944);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get channelDictionary\n", "addDictionaryChannelReasonForLeaving", 3941);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc reasonKey\n", "addDictionaryChannelReasonForLeaving", 3938);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc transitions\n", "addDictionaryChannelReasonForLeaving", 3895);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc reasonNum\n", "addDictionaryChannelReasonForLeaving", 3877);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc reasonDict\n", "addDictionaryChannelReasonForLeaving", 3864);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonsForLeavingDictionary\n", "addDictionaryChannelReasonForLeaving", 3855);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get leftAggStatsDictionary\n", "addDictionaryChannelReasonForLeaving", 3852);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get chLeftDictionary\n", "addDictionaryChannelReasonForLeaving", 3849);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:No ivars->fChannelSwitchDictionary[sliceIndex]\n", "addDictionaryChannelReasonForLeaving", 3844);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc reasonKey\n", "addDictionaryChannelReasonForLeaving", 3842);
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc chLeftKey\n", "addDictionaryChannelReasonForLeaving", 3833);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AutoreleasedBuffer\n", "addDictionaryChannelReasonForLeaving", 3823);
}

uint64_t AppleBCMWLANIOReportingPerSlice::storeChannelSwitch(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to addDictionaryChanspec", "storeChannelSwitch", 4103);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to addDictionaryChannelReasonForJoining", "storeChannelSwitch", 4106);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to addChannelDictChanspecJoinedLeft", "storeChannelSwitch", 4109);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to addDictionaryChannelReasonForLeaving", "storeChannelSwitch", 4112);
    }
  }

  *v1 = v2;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::initUpdateReportData(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get chanspecNum\n", "initUpdateReportData", 4203);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get channelDictionary\n", "initUpdateReportData", 4200);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Invalid ChannelSwitchReport_t pointer\n", "initUpdateReportData", 4195);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::processUpdateLeaveReason(AppleBCMWLANIOReporting *a1)
{
  AppleBCMWLANIOReporting::getLogger(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Invalid data for %s()\n", v3, v4, v5);
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get switchFromReasonReporter\n", "processUpdateLeaveReason", 4240);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonNum\n", "processUpdateLeaveReason", 4236);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get transitions\n", "processUpdateLeaveReason", 4233);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonDictionary\n", "processUpdateLeaveReason", 4229);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::processUpdateJoinReason(AppleBCMWLANIOReporting *a1)
{
  AppleBCMWLANIOReporting::getLogger(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Invalid data for %s()\n", v3, v4, v5);
}

{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get activitesStateReporter\n", "processUpdateJoinReason", 4293);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get switchToReasonReporter\n", "processUpdateJoinReason", 4285);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get transitions\n", "processUpdateJoinReason", 4281);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get totalDur\n", "processUpdateJoinReason", 4278);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonNum\n", "processUpdateJoinReason", 4275);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonDictionary\n", "processUpdateJoinReason", 4271);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::processUpdateChannelReports(AppleBCMWLANIOReporting *a1)
{
  AppleBCMWLANIOReporting::getLogger(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Invalid data for %s()\n", v3, v4, v5);
}

{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to init report data\n", "processUpdateChannelReports", 4335);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to iterate SwitchToReason\n", "processUpdateChannelReports", 4364);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to iterate SwitchFromReason\n", "processUpdateChannelReports", 4375);
    }
  }

  *v1 = v2;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::processUpdateChannelReports(AppleBCMWLANIOReporting *a1, const char *a2, uint64_t a3, const OSNumber *a4)
{
  AppleBCMWLANIOReporting::getLogger(a1);
  v7 = OUTLINED_FUNCTION_77();
  OSString::getCStringNoCopy(v7);
  v8 = OUTLINED_FUNCTION_86();
  v9 = OSNumber::unsigned64BitValue(v8);
  v10 = OSNumber::unsigned64BitValue(a4);
  return CCLogStream::logEmergency(v4, "[dk] %s@%d:Failed to ivars->fChanSWResidencyState[sliceIndex]->overrideChannelState %s dur %lldms trans %lld\n", "processUpdateChannelReports", 4353, a2, v9, v10);
}

uint64_t AppleBCMWLANIOReportingPerSlice::processUpdateChannelReports()
{
  OUTLINED_FUNCTION_4();
  result = AppleBCMWLANIOReporting::getLogger(v2);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v1);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonsForJoiningDictionary\n", "processUpdateChannelReports", 4361);
    }
  }

  *v0 = 0;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  result = AppleBCMWLANIOReporting::getLogger(v2);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v1);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get lastActivitesStateReporterSizeNum\n", "processUpdateChannelReports", 4358);
    }
  }

  *v0 = 0;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  result = AppleBCMWLANIOReporting::getLogger(v2);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v1);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get transitions\n", "processUpdateChannelReports", 4343);
    }
  }

  *v0 = 0;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  result = AppleBCMWLANIOReporting::getLogger(v2);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v1);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get totalDur\n", "processUpdateChannelReports", 4340);
    }
  }

  *v0 = 0;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  result = AppleBCMWLANIOReporting::getLogger(v2);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v1);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonsForLeavingDictionary\n", "processUpdateChannelReports", 4372);
    }
  }

  *v0 = 0;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::iterateUpdateJoinReason(AppleBCMWLANIOReporting *a1)
{
  AppleBCMWLANIOReporting::getLogger(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Invalid data for %s()\n", v3, v4, v5);
}

uint64_t AppleBCMWLANIOReportingPerSlice::iterateUpdateLeaveReason(AppleBCMWLANIOReporting *a1)
{
  AppleBCMWLANIOReporting::getLogger(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Invalid data for %s()\n", v3, v4, v5);
}

uint64_t AppleBCMWLANIOReportingPerSlice::updateReportersChannelSwitchReport(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to iterate channels\n", "updateReportersChannelSwitchReport", 4587);
    }
  }

  *v1 = v2;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::processConfigureChannelReports(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to addPerChannelReporters \n", "processConfigureChannelReports", 4818);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get channelDictionary\n", "processConfigureChannelReports", 4815);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::processConfigureChannelReports(AppleBCMWLANIOReporting *a1, uint64_t a2, int a3, _DWORD *a4)
{
  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to setStateID indx %d id %llu\n", "processConfigureChannelReports", 4839, 0, a2);
    }
  }

  *a4 = a3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::processConfigureChannelReports()
{
  OUTLINED_FUNCTION_4();
  result = AppleBCMWLANIOReporting::getLogger(v2);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v1);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get transitions\n", "processConfigureChannelReports", 4829);
    }
  }

  *v0 = 0;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  result = AppleBCMWLANIOReporting::getLogger(v2);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v1);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get totalDur\n", "processConfigureChannelReports", 4826);
    }
  }

  *v0 = 0;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  result = AppleBCMWLANIOReporting::getLogger(v2);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v1);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get chanspecNum\n", "processConfigureChannelReports", 4821);
    }
  }

  *v0 = 0;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::addPerChannelReporters(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get lastActivitesStateReporterSizeNum\n", "addPerChannelReporters", 5407);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set lastActivitesStateReporterSizeNum\n", "addPerChannelReporters", 5404);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to getReporter()->setObject(activitesStateReporter)\n", "addPerChannelReporters", 5424);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set activitesStateReporter\n", "addPerChannelReporters", 5427);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to activitesStateReporter->addChannel", "addPerChannelReporters", 5430);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to getReporter()->setObject(switchToReasonReporter)\n", "addPerChannelReporters", 5440);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set switchToReasonReporter\n", "addPerChannelReporters", 5444);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc switchToReasonReporter\n", "addPerChannelReporters", 5436);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to iterate perChannel Join Reporters\n", "addPerChannelReporters", 5450);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to add value to lastActivitesStateReporterSizeNum\n", "addPerChannelReporters", 5456);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc activitesStateReporter\n", "addPerChannelReporters", 5421);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonsForJoiningDictionary\n", "addPerChannelReporters", 5412);
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc lastActivitesStateReporterSizeNum\n", "addPerChannelReporters", 5402);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to getReporter()->setObject(switchFromReasonReporter)\n", "addPerChannelReporters", 5492);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set switchFromReasonReporter\n", "addPerChannelReporters", 5495);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc switchFromReasonReporter\n", "addPerChannelReporters", 5489);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to iterate perChannel Leaver Reporters\n", "addPerChannelReporters", 5501);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonsForLeavingDictionary\n", "addPerChannelReporters", 5485);
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get chanspecNum\n", "addPerChannelReporters", 5382);
    }
  }

  *v1 = v3;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to allocate autoreleased buffers\n", "addPerChannelReporters", 5371);
}

uint64_t AppleBCMWLANIOReportingPerSlice::configureReportersChannelSwitchReport(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to add ivars->fChanSWResidencyState to getReporter()\n", "configureReportersChannelSwitchReport", 4930);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to addChannel", "configureReportersChannelSwitchReport", 4934);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc ivars->fChanSWResidencyState\n", "configureReportersChannelSwitchReport", 4929);
    }
  }

  *v1 = v2;
  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to iterate configure channels", "configureReportersChannelSwitchReport", 4942);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AutoreleasedBuffer\n", "configureReportersChannelSwitchReport", 4913);
}

uint64_t AppleBCMWLANIOReportingPerSlice::processPerChannelJoinReporters(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v3);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to make channel\n", "processPerChannelJoinReporters", 5128);
    }
  }

  *v1 = v2;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get transitions\n", "processPerChannelJoinReporters", 5119);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get totalDur\n", "processPerChannelJoinReporters", 5116);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonNum\n", "processPerChannelJoinReporters", 5113);
    }
  }

  *v1 = v3;
  return result;
}

{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to get reasonDictionary\n", "processPerChannelJoinReporters", 5110);
    }
  }

  *v1 = v3;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::processPerChannelJoinReporters(AppleBCMWLANIOReporting *a1, const OSNumber *a2, unsigned int *a3, int a4, _DWORD *a5)
{
  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      v12 = OSNumber::unsigned32BitValue(a2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to activitesStateReporter->setStateID %lld rsidency %u chid %lld\n", "processPerChannelJoinReporters", 5137, *(&kStateIDChannelSwitch + 2 * v12), 0, (*a3 << 56) ^ 0x5350517452000000);
    }
  }

  *a5 = a4;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::iteratePerChannelJoinReporters(AppleBCMWLANIOReporting *a1)
{
  AppleBCMWLANIOReporting::getLogger(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logEmergency(v1, "[dk] %s@%d:Invalid data for %s()\n", v3, v4, v5);
}

uint64_t AppleBCMWLANIOReportingPerSlice::replaceNumberValue()
{
  OUTLINED_FUNCTION_4();
  if (AppleBCMWLANIOReporting::getLogger(v2))
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v1);
      CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to set value for replaceNumberValue()\n", "replaceNumberValue", 6407);
    }
  }

  v3 = *(*v0 + 16);

  return v3(v0);
}

{
  OUTLINED_FUNCTION_4();
  result = AppleBCMWLANIOReporting::getLogger(v2);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v1);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc tmpNum for replaceNumberValue()\n", "replaceNumberValue", 6405);
    }
  }

  *v0 = 0;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::initChanSWReporter(AppleBCMWLANIOReporting *a1)
{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to add ivars->fAggChanSWReasonsValue", "initChanSWReporter", 5844);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to add ivars->fAggChanDwellTimeHist", "initChanSWReporter", 5865);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to add legend for ivars->fAggChanDwellTimeHist", "initChanSWReporter", 5871);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to add ivars->fAggChanSWVisitedValue", "initChanSWReporter", 5878);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Found wlan.debug.chanswlimit, enabling enforcement\n", "initChanSWReporter", 5883);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to allocate histogram reporter", "initChanSWReporter", 5862);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AutoreleasedBuffer\n", "initChanSWReporter", 5836);
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV1PerSlice(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_14_1(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v2);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v2);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc\n", "reportChannelSwitchV1PerSlice", 5901);
    }
  }

  *v1 = v3;
  return result;
}

void AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice(AppleBCMWLANIOReporting *a1)
{
  if (AppleBCMWLANIOReporting::getLogger(a1))
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReporting::getLogger(a1);
      v2 = OUTLINED_FUNCTION_86();
      OSData::getLength(v2);
      OUTLINED_FUNCTION_6();
      CCLogStream::logEmergency(a1, "[dk] %s@%d:sizeof(wl_chansw_event_log_record...) payload->getLength() %lu\n", v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  if (OUTLINED_FUNCTION_44_0(a1))
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v1);
      OUTLINED_FUNCTION_34_0(Logger, v3, v4, v5, v6);
      OUTLINED_FUNCTION_76();
      CCLogStream::logEmergency(v1, "[dk] %s@%d:failed to add ivars->fAggChanSWVisitedValue slice %d chanspec %d\n", v7, v8, v9, v10);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  if (OUTLINED_FUNCTION_44_0(a1))
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v1);
      OUTLINED_FUNCTION_34_0(Logger, v3, v4, v5, v6);
      OUTLINED_FUNCTION_76();
      CCLogStream::logEmergency(v1, "[dk] %s@%d:failed to set ivars->fAggChanSWVisitedValue slice %d chanspec %d\n", v7, v8, v9, v10);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  if (OUTLINED_FUNCTION_44_0(a1))
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v1);
      OUTLINED_FUNCTION_34_0(Logger, v3, v4, v5, v6);
      OUTLINED_FUNCTION_76();
      CCLogStream::logEmergency(v1, "[dk] %s@%d:failed to add ivars->fAggChanSWReasonsValue slice %d chanspec %d\n", v7, v8, v9, v10);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  if (OUTLINED_FUNCTION_44_0(a1))
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v1);
      OUTLINED_FUNCTION_34_0(Logger, v3, v4, v5, v6);
      OUTLINED_FUNCTION_76();
      CCLogStream::logEmergency(v1, "[dk] %s@%d:failed to set ivars->fAggChanSWReasonsValue slice %d chanspec %d\n", v7, v8, v9, v10);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  if (OUTLINED_FUNCTION_44_0(a1))
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v1);
      OUTLINED_FUNCTION_34_0(Logger, v3, v4, v5, v6);
      OUTLINED_FUNCTION_76();
      CCLogStream::logEmergency(v1, "[dk] %s@%d:failed to add ivars->fAggChanSWReasonsValue slice %d chanspec %d\n", v7, v8, v9, v10);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  if (OUTLINED_FUNCTION_44_0(a1))
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v1);
      OUTLINED_FUNCTION_34_0(Logger, v3, v4, v5, v6);
      OUTLINED_FUNCTION_76();
      CCLogStream::logEmergency(v1, "[dk] %s@%d:failed to set ivars->fAggChanSWReasonsValue slice %d chanspec %d\n", v7, v8, v9, v10);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  if (OUTLINED_FUNCTION_44_0(a1))
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v1);
      OUTLINED_FUNCTION_34_0(Logger, v3, v4, v5, v6);
      OUTLINED_FUNCTION_76();
      CCLogStream::logEmergency(v1, "[dk] %s@%d:failed to storeChannelSwitch slice %d chanspec %d\n", v7, v8, v9, v10);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  if (OUTLINED_FUNCTION_74(a1))
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIOReporting::getLogger(v1);
      OUTLINED_FUNCTION_66();
      CCLogStream::logEmergency(v2, "[dk] %s@%d:Out of range slice index %d\n", v3, v4, v5);
    }
  }

  OUTLINED_FUNCTION_2();
}

uint64_t AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice(AppleBCMWLANIOReporting *a1)
{
  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to initiate ChanSW reporter\n", "reportChannelSwitchV2PerSlice", 5931);
    }
  }

  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AutoreleasedBuffer\n", "reportChannelSwitchV2PerSlice", 6007);
}

{
  result = AppleBCMWLANIOReporting::getLogger(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(a1);
      return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to add legend for ivars->fAggPhyChanSwitchTimeHist", "reportChannelSwitchV2PerSlice", 6046);
    }
  }

  return result;
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AutoreleasedBuffer\n", "reportChannelSwitchV2PerSlice", 6081);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AutoreleasedBuffer\n", "reportChannelSwitchV2PerSlice", 6107);
}

{
  Logger = AppleBCMWLANIOReporting::getLogger(a1);
  return CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to alloc AutoreleasedBuffer\n", "reportChannelSwitchV2PerSlice", 6024);
}

void AppleBCMWLANIOReportingPerSlice::reportChannelSwitchV2PerSlice()
{
  OUTLINED_FUNCTION_4();
  if (AppleBCMWLANIOReporting::getLogger(v1))
  {
    AppleBCMWLANIOReporting::getLogger(v0);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v0);
      CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to add ivars->fAggPhyChanSwitchTimeHist", "reportChannelSwitchV2PerSlice", 6040);
    }
  }

  OUTLINED_FUNCTION_2();
}

{
  OUTLINED_FUNCTION_4();
  if (AppleBCMWLANIOReporting::getLogger(v1))
  {
    AppleBCMWLANIOReporting::getLogger(v0);
    if (CCLogStream::shouldLog())
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v0);
      CCLogStream::logEmergency(Logger, "[dk] %s@%d:Failed to allocate histogram reporter", "reportChannelSwitchV2PerSlice", 6037);
    }
  }

  OUTLINED_FUNCTION_2();
}

uint64_t AppleBCMWLANIOReportingPerSlice::configureReport(AppleBCMWLANIOReporting *a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v3);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIOReporting::getLogger(v3);
      v6 = OUTLINED_FUNCTION_77();
      getClassNameHelper(v6);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logEmergency(v4, "[dk] %s@%d:DKReporter::%s::%s(%d) AppleBCMWLANIOReporting::configureReport failed", v7, v8, v9, "configureReport", 6190);
    }
  }

  *v1 = v2;
  return result;
}

uint64_t AppleBCMWLANIOReportingPerSlice::init()
{
  OUTLINED_FUNCTION_4();
  result = AppleBCMWLANIOReporting::getLogger(v2);
  if (result)
  {
    AppleBCMWLANIOReporting::getLogger(v1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      Logger = AppleBCMWLANIOReporting::getLogger(v1);
      result = CCLogStream::logEmergency(Logger, "[dk] %s@%d:Bad fProvider\n", "init", 6344);
    }
  }

  *v0 = 0;
  return result;
}

uint64_t AppleBCMWLANIOReporting::init(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    result = OUTLINED_FUNCTION_1_7(result);
    if (result)
    {
      v2 = OUTLINED_FUNCTION_0_5();
      return CCLogStream::logEmergency(v2, "[dk] %s@%d:Failed to fMaxSupportedEventLogSet\n", "init", 115);
    }
  }

  return result;
}

{
  result = *(a1 + 8);
  if (result)
  {
    result = OUTLINED_FUNCTION_1_7(result);
    if (result)
    {
      v2 = OUTLINED_FUNCTION_0_5();
      return CCLogStream::logEmergency(v2, "[dk] %s@%d:Failed to create fReporters\n", "init", 112);
    }
  }

  return result;
}

{
  result = *(a1 + 8);
  if (result)
  {
    result = OUTLINED_FUNCTION_1_7(result);
    if (result)
    {
      v2 = OUTLINED_FUNCTION_0_5();
      return CCLogStream::logEmergency(v2, "[dk] %s@%d:Bad fChanSpecHandler\n", "init", 108);
    }
  }

  return result;
}

{
  result = *(a1 + 8);
  if (result)
  {
    result = OUTLINED_FUNCTION_1_7(result);
    if (result)
    {
      v2 = OUTLINED_FUNCTION_0_5();
      return CCLogStream::logEmergency(v2, "[dk] %s@%d:Bad fCommandGate\n", "init", 104);
    }
  }

  return result;
}

{
  result = *(a1 + 8);
  if (result)
  {
    result = OUTLINED_FUNCTION_1_7(result);
    if (result)
    {
      v2 = OUTLINED_FUNCTION_0_5();
      return CCLogStream::logEmergency(v2, "[dk] %s@%d:Bad fFaultReporter", "init", 100);
    }
  }

  return result;
}

{
  return CCLogStream::logEmergency(*(*a1 + 8), "[dk] %s@%d:Bad fAddCallback\n", "init", 95);
}

{
  result = *(a1 + 8);
  if (result)
  {
    result = OUTLINED_FUNCTION_1_7(result);
    if (result)
    {
      v2 = OUTLINED_FUNCTION_0_5();
      return CCLogStream::logEmergency(v2, "[dk] %s@%d:Bad fRemoveCallback\n", "init", 92);
    }
  }

  return result;
}

{
  result = *(a1 + 8);
  if (result)
  {
    result = OUTLINED_FUNCTION_1_7(result);
    if (result)
    {
      v2 = OUTLINED_FUNCTION_0_5();
      return CCLogStream::logEmergency(v2, "[dk] %s@%d:Bad fTarget\n", "init", 89);
    }
  }

  return result;
}

{
  result = *(a1 + 8);
  if (result)
  {
    result = OUTLINED_FUNCTION_1_7(result);
    if (result)
    {
      v2 = OUTLINED_FUNCTION_0_5();
      return CCLogStream::logEmergency(v2, "[dk] %s@%d:Bad fProvider\n", "init", 86);
    }
  }

  return result;
}

uint64_t AppleBCMWLANIOReporting::init(uint64_t a1, OSObject *a2)
{
  v2 = *(*a1 + 8);
  ClassNameHelper = getClassNameHelper(a2);
  return CCLogStream::logEmergency(v2, "[dk] %s@%d:Failed %s init\n", "init", 121, ClassNameHelper);
}

uint64_t AppleBCMWLANIOReporting::configureReport(uint64_t a1)
{
  result = *(*a1 + 8);
  if (result)
  {
    result = OUTLINED_FUNCTION_1_7(result);
    if (result)
    {
      v4 = *(*a1 + 8);
      ClassNameHelper = getClassNameHelper(v1);
      return CCLogStream::logEmergency(v4, "[dk] %s@%d:DKReporter::%s::%s(%d) testPostConfigureAllAndAdjustV3 failed\n", "configureReport", 138, ClassNameHelper, "configureReport", 138);
    }
  }

  return result;
}

uint64_t logDebug()
{
  IOLog("strm is NULL");

  return IOLog("logController failed");
}

uint64_t AppleBCMWLANChipManagerPCIe4388::prepareHardware(AppleBCMWLANChipManagerPCIe4388 *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
{
  v3 = 3758097090;
  v6 = 0;
  if (a2 && a3)
  {
    if (AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0xE64u, &v6))
    {
      return 3758097098;
    }

    else
    {
      v6 = v6 & 0xFFFFFFFC | 1;
      AppleBCMWLANChipBackplane::writeGCICoreReg32(a3, 0xE64u, v6);
      return 0;
    }
  }

  return v3;
}

uint64_t AppleBCMWLANChipManagerPCIe4388::checkHardware(AppleBCMWLANChipManagerPCIe4388 *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
{
  v6 = 0;
  result = 3758097090;
  if (a2 && a3)
  {
    AppleBCMWLANChipBackplane::writeGCICoreReg32(a3, 0x40u, 4u);
    if (AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0x204u, &v6) || (v6 & 0x4000) != 0)
    {
      return 3758097098;
    }

    else
    {
      v5 = AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0x40u, &v6);
      result = 3758097098;
      if (!v5)
      {
        if (v6 == 4)
        {
          return 0;
        }

        else
        {
          return 3758097098;
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANChipManagerPCIe4399::prepareHardware(AppleBCMWLANChipManagerPCIe4399 *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
{
  v3 = 3758097090;
  v6 = 0;
  if (a2 && a3)
  {
    if (AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0xE64u, &v6))
    {
      return 3758097098;
    }

    else
    {
      v6 = v6 & 0xFFFFFFFC | 1;
      AppleBCMWLANChipBackplane::writeGCICoreReg32(a3, 0xE64u, v6);
      return 0;
    }
  }

  return v3;
}

uint64_t AppleBCMWLANChipManagerPCIe4399::checkHardware(AppleBCMWLANChipManagerPCIe4399 *this, AppleBCMWLANChipConfigSpace *a2, AppleBCMWLANChipBackplane *a3)
{
  v6 = 0;
  result = 3758097090;
  if (a2 && a3)
  {
    AppleBCMWLANChipBackplane::writeGCICoreReg32(a3, 0x40u, 4u);
    if (AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0x204u, &v6) || (v6 & 0x4000) != 0)
    {
      return 3758097098;
    }

    else
    {
      v5 = AppleBCMWLANChipBackplane::readGCICoreReg32(a3, 0x40u, &v6);
      result = 3758097098;
      if (!v5)
      {
        if (v6 == 4)
        {
          return 0;
        }

        else
        {
          return 3758097098;
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANJoinAdapter::performJoin(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to configureDwellForAssociation: %s\n", v5, v6, v7);
}

{
  v3 = OUTLINED_FUNCTION_1_8(a1);
  v6 = (*(v4 + 112))(v3, v5);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_SET_INFRA(%lu) failed, error %s\n", "performJoin", 246, v2, v6);
}

{
  OUTLINED_FUNCTION_0_6(a1);
  OUTLINED_FUNCTION_16_0();
  v4 = v3();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mapAppleLowerAuthToBcomAuth(%d) failed, error %s\n", "performJoin", 262, v2, v4);
}

{
  v3 = OUTLINED_FUNCTION_1_8(a1);
  v6 = (*(v4 + 112))(v3, v5);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_SET_AUTH(%lu) failed, error %s\n", "performJoin", 270, v2, v6);
}

{
  OUTLINED_FUNCTION_0_6(a1);
  OUTLINED_FUNCTION_16_0();
  v4 = v3();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mapAppleUpperAuthToBcomWpaAuth(%d) failed, error %s\n", "performJoin", 278, v2, v4);
}

{
  v3 = OUTLINED_FUNCTION_1_8(a1);
  v6 = (*(v4 + 112))(v3, v5);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_SET_WPA_AUTH(%lu) failed, error %s\n", "performJoin", 302, v2, v6);
}

{
  OUTLINED_FUNCTION_0_6(a1);
  OUTLINED_FUNCTION_16_0();
  v4 = v3();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mapAppleCipherToBcomWsecFlags(%d) failed, error %s\n", "performJoin", 315, v2, v4);
}

{
  OUTLINED_FUNCTION_0_6(a1);
  OUTLINED_FUNCTION_16_0();
  v4 = v3();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mapAppleUpperAuthToBcomWsecFlags(%d) failed, error %s\n", "performJoin", 321, v2, v4);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  v5 = *v4;
  v7 = *v6;
  v9 = (*(v3 + 112))(v2, v8);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mapBcomAlgoToBcomWsecFlags(group %u, pairwise %d) failed, error %s\n", "performJoin", 345, v5, v7, v9);
}

{
  v3 = OUTLINED_FUNCTION_1_8(a1);
  v6 = (*(v4 + 112))(v3, v5);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_SET_WSEC(%lu) failed, error %s\n", "performJoin", 354, v2, v6);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to program the password, error %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to program the PMK, error %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to program the WEP Key, error %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to disable supplicant timeout, %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to set iovar sup_wpa_tmo, %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to update Chip's RSN IE, %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:SAE-PK config failed: %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:OCV config failed: %s\n", v5, v6, v7);
}

{
  OUTLINED_FUNCTION_0_6(a1);
  OUTLINED_FUNCTION_16_0();
  v8 = v3();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:%s: set pmf(%d) failed, error %s\n", v5, v6, v7, v2, v8);
}

{
  OUTLINED_FUNCTION_0_6(a1);
  OUTLINED_FUNCTION_16_0();
  v8 = v3();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:%s: set wsec_info(%d) for 192-bit mode failed, error %s\n", v5, v6, v7, v2, v8);
}

{
  OUTLINED_FUNCTION_0_6(a1);
  OUTLINED_FUNCTION_16_0();
  v4 = v3();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: set bip(%d) failed, error %s\n", "performJoin", 666, v2, v4);
}

{
  OUTLINED_FUNCTION_0_6(a1);
  OUTLINED_FUNCTION_16_0();
  v8 = v3();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:%s: set wsec_info(%d) for OWE mode failed, error %s\n", v5, v6, v7, v2, v8);
}

{
  OUTLINED_FUNCTION_0_6(a1);
  OUTLINED_FUNCTION_16_0();
  v8 = v3();
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logCrit(v1, "[dk] %s@%d:%s: set wsec_info(%d) for roaming failed, error %s\n", v5, v6, v7, v2, v8);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_SET_SSID() failed, error %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:failed to allocate memory for join iovar, abort joining\n", "performJoin", 534);
}

uint64_t AppleBCMWLANJoinAdapter::performJoin()
{
  OUTLINED_FUNCTION_4_5();
  v2 = *v1;
  v4 = OUTLINED_FUNCTION_2_5(v3);
  v7 = (*(v5 + 112))(v4, v6);
  return CCLogStream::logCrit(v0, "[dk] %s@%d: mapAppleAPModeToBcomBssType(%d) failed, error %s\n", "performJoin", 237, v2, v7);
}

{
  OUTLINED_FUNCTION_4_5();
  v2 = *v1;
  v4 = OUTLINED_FUNCTION_2_5(v3);
  v7 = (*(v5 + 112))(v4, v6);
  return CCLogStream::logCrit(v0, "[dk] %s@%d: getBcomPropertiesFromWPARSN(%u) failed, error %s\n", "performJoin", 332, v2, v7);
}

uint64_t AppleBCMWLANJoinAdapter::performJoin(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_11_2();
  v5 = OUTLINED_FUNCTION_2_5(v4);
  v7 = (*(v6 + 112))(v5);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Failed to set iovar sup_wpa, %d[%s]\n", "performJoin", 254, a2, v7);
}

{
  OUTLINED_FUNCTION_11_2();
  v5 = OUTLINED_FUNCTION_2_5(v4);
  v7 = (*(v6 + 112))(v5);
  return CCLogStream::logAlert(v2, "[dk] %s@%d: Failure to set iovar sup_wpa_tmo, %d[%s]\n", "performJoin", 443, a2, v7);
}

uint64_t AppleBCMWLANJoinAdapter::set4WayHandshakeProtection(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:WL_BTC_WIFI_PROT_VER_2 detected", "set4WayHandshakeProtection", 1302);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to set iovar btc_wifi_prot, %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to allocate memory for txBuf\n", "set4WayHandshakeProtection", 1307);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logInfo(v1, "[dk] %s@%d:WL_BTC_WIFI_PROT_VER_1 detected", "set4WayHandshakeProtection", 1265);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to set iovar btc_wifi_prot, %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to allocate memory for txBuf\n", "set4WayHandshakeProtection", 1271);
}

uint64_t AppleBCMWLANJoinAdapter::clearWepKeysSync(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_11_2();
  v6 = OUTLINED_FUNCTION_2_5(v5);
  v8 = (*(v7 + 112))(v6);
  return CCLogStream::logCrit(v3, "[dk] %s@%d: WEP clear failed on index %u, error %s\n", "clearWepKeysSync", 2163, a3, v8);
}

uint64_t AppleBCMWLANJoinAdapter::setKey(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logWarnIf(v1, 0x100uLL, "[dk] %s@%d: Ignoring PMKSA request\n", "setKey", 1972);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mapAppleKeyToBcomKey() failed, error %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:invalid interface\n", "setKey", 1963);
}

uint64_t AppleBCMWLANJoinAdapter::enableICVErrorEvents(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to setup event handling for WLC_E_ICV_ERROR, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::enableSupplicantEvents(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to setup event handling for WLC_E_PSK_SUP, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::setAssocRSNIE(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: wpaie failed, error %s\n", v5, v6, v7);
}

void AppleBCMWLANJoinAdapter::setAssocWsecInfo(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 72);
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(*(a1 + 48));
  v5 = (*(*CurrentBSS + 672))(CurrentBSS);
  v6 = *AppleBCMWLANBssManager::getCurrentBSS(*(*a2 + 48));
  v7 = (*(v6 + 680))();
  CCLogStream::logAlert(v3, "[dk] %s@%d:%s: wsec_info type %d option for SAE PK BSS cap  (%d)& saepk pwd (%d): \n", "setAssocWsecInfo", 2373, "setAssocWsecInfo", 266, v5, v7);
  OUTLINED_FUNCTION_12_2();
}

uint64_t AppleBCMWLANJoinAdapter::setAssocWsecInfo(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Invalid attempt with wsec_info type %d option for SAE PK\n", "setAssocWsecInfo", 2375, "setAssocWsecInfo", 266);
}

{
  OUTLINED_FUNCTION_6_5(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Disable roaming to TKIP when joining an RSN_AKM_PSK network\n", v3, v4, v5);
}

{
  OUTLINED_FUNCTION_6_5(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Unable to allocate memory for txBuf\n", v3, v4, v5);
}

uint64_t AppleBCMWLANJoinAdapter::setAssocWsecInfo(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  v6 = *(*a1 + 72);
  v7 = OUTLINED_FUNCTION_2_5(*a1);
  v9 = (*(v8 + 112))(v7);
  return CCLogStream::logAlert(v6, "[dk] %s@%d:%s: Failure to set iovar wsec_info (type 0x%X, param 0x%X), %s\n", "setAssocWsecInfo", 2419, "setAssocWsecInfo", a3, a4, v9);
}

uint64_t AppleBCMWLANJoinAdapter::setAssocBip(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  v4 = (*(v3 + 112))(v2);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Failure to set iovar bip, %s\n", "setAssocBip", 2198, "setAssocBip", v4);
}

uint64_t AppleBCMWLANJoinAdapter::customUnAssocDwell(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to configure Dwell for Assoc: %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to configure Dwell for Assoc: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::createAdhocNetwork(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to set last joined SSID\n", "createAdhocNetwork", 764);
}

{
  v3 = OUTLINED_FUNCTION_1_8(a1);
  v6 = (*(v4 + 112))(v3, v5);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_SET_INFRA(%lu) failed, error %s\n", "createAdhocNetwork", 785, v2, v6);
}

{
  OUTLINED_FUNCTION_0_6(a1);
  OUTLINED_FUNCTION_16_0();
  v4 = v3();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mapAppleLowerAuthToBcomAuth(%d) failed, error %s\n", "createAdhocNetwork", 791, v2, v4);
}

{
  v3 = OUTLINED_FUNCTION_1_8(a1);
  v6 = (*(v4 + 112))(v3, v5);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_SET_AUTH(%lu) failed, error %s\n", "createAdhocNetwork", 799, v2, v6);
}

{
  OUTLINED_FUNCTION_0_6(a1);
  OUTLINED_FUNCTION_16_0();
  v4 = v3();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mapAppleUpperAuthToBcomWpaAuth(%d) failed, error %s\n", "createAdhocNetwork", 804, v2, v4);
}

{
  v3 = OUTLINED_FUNCTION_1_8(a1);
  v6 = (*(v4 + 112))(v3, v5);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_SET_WPA_AUTH(%lu) failed, error %s\n", "createAdhocNetwork", 812, v2, v6);
}

{
  OUTLINED_FUNCTION_0_6(a1);
  OUTLINED_FUNCTION_16_0();
  v4 = v3();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: mapAppleCipherToBcomWsecFlags(%d) failed, error %s\n", "createAdhocNetwork", 821, v2, v4);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to program the WEP Key, error %s\n", v5, v6, v7);
}

{
  v3 = OUTLINED_FUNCTION_1_8(a1);
  v6 = (*(v4 + 112))(v3, v5);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_SET_WSEC(%lu) failed, error %s\n", "createAdhocNetwork", 839, v2, v6);
}

{
  v3 = OUTLINED_FUNCTION_1_8(a1);
  v6 = (*(v4 + 112))(v3, v5);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_SET_CHANNEL(%lu) failed, error %s\n", "createAdhocNetwork", 850, v2, v6);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_SET_SSID() failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::createAdhocNetwork(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_2();
  v5 = authtypelower2str(*(v4 + 8));
  v6 = authtypeupper2str(*(a2 + 12), 0xFFFFu);
  v7 = ciphertype2str(*(a2 + 72));
  return CCLogStream::logNotice(v2, "[dk] %s@%d: lowerAuth = %s, upperAuth = %s, key = %s\n", "createAdhocNetwork", 773, v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::createAdhocNetwork()
{
  OUTLINED_FUNCTION_4_5();
  v2 = *v1;
  v4 = OUTLINED_FUNCTION_2_5(v3);
  v7 = (*(v5 + 112))(v4, v6);
  return CCLogStream::logCrit(v0, "[dk] %s@%d: mapAppleAPModeToBcomBssType(%d) failed, error %s\n", "createAdhocNetwork", 777, v2, v7);
}

void AppleBCMWLANJoinAdapter::abortFirmwareJoinSync(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_4(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to abort join attempt in firmware (WLC_DISASSOC), %s\n", v4, v5, v6);
  OUTLINED_FUNCTION_12_2();
}

uint64_t AppleBCMWLANJoinAdapter::configureSupplicantTimeOut(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to set iovar sup_wpa_tmo, %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to Configure Supplicant Timeout: %s\n", v5, v6, v7);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:ADhoc is created, supplicant is disabled in firmware, ignore supplicant timeout config", "configureSupplicantTimeOut", 948);
}

uint64_t AppleBCMWLANJoinAdapter::handleSupplicantTimeoutConfigAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failure to Configure Supplicant Timeout, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::getBSSInfoAsync(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_GET_BSS_INFO() failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::updateTransDisabledMode(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  v4 = (*(v3 + 112))(v2);
  return CCLogStream::logCrit(v1, "[dk] %s@%d:%s: set wsec_info(%d) for transition terminated mode failed, error %s\n", "updateTransDisabledMode", 1069, "updateTransDisabledMode", 268, v4);
}

uint64_t AppleBCMWLANJoinAdapter::initWithDriver(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get Power Manager\n", "initWithDriver", 1158);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failed to get Bss Manager\n", "initWithDriver", 1150);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Unable to get Command Manager\n", "initWithDriver", 1142);
}

uint64_t AppleBCMWLANJoinAdapter::custom6GUnAssocDwell(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to configure 6G Dwell for Unassoc: %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Failure to configure 6G Dwell for Unassoc: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::handleCustom6GUnAssocDwellAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failure to configure 6G Dwell for Unassoc, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::handleBeaconProtectionAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: Error: cannot set becon protection params %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::setBeaconProtectionParams(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to set bcn protection params, feature not supported\n", "setBeaconProtectionParams", 1552);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:bcmprot cmd alloc fail\n", "setBeaconProtectionParams", 1565);
}

uint64_t AppleBCMWLANJoinAdapter::setBeaconProtectionParams(uint64_t a1, uint64_t a2, const char *a3)
{
  OUTLINED_FUNCTION_11_2();
  v6 = OUTLINED_FUNCTION_2_5(v5);
  v8 = (*(v7 + 112))(v6);
  return CCLogStream::logAlertIf(v3, 0x20uLL, "[dk] %s@%d:BCN PROT: Failed to run BCN PROT set var (%s), %s\n", "setBeaconProtectionParams", 1594, a3, v8);
}

uint64_t AppleBCMWLANJoinAdapter::handleCustomUnAssocDwellAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to configure Custom Dwell Time, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::collectJoinTimeoutAwdMetrics(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  v4 = (*(v3 + 112))(v2);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s fails returning %s\n", "collectJoinTimeoutAwdMetrics", 1689, "awd_data_info", v4);
}

uint64_t AppleBCMWLANJoinAdapter::collectCCAForJoinTimeout(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  result = OUTLINED_FUNCTION_6_5(a1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = *a1;
      v8 = *(*a1 + 72);
      v9 = OUTLINED_FUNCTION_2_5(v7);
      (*(v10 + 112))(v9, a2);
      OUTLINED_FUNCTION_6();
      result = CCLogStream::logAlert(v8, "[dk] %s@%d: Unable to get cca %s\n", v11, v12, v13);
    }
  }

  *a3 = a2;
  return result;
}

uint64_t AppleBCMWLANJoinAdapter::collectCCAForJoinTimeout()
{
  OUTLINED_FUNCTION_4();
  result = OUTLINED_FUNCTION_6_5(v1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = OUTLINED_FUNCTION_15_3();
      result = CCLogStream::logAlert(v3, "[dk] %s@%d:Invalid duration\n", "collectCCAForJoinTimeout", 1728);
    }
  }

  *v0 = 0;
  return result;
}

{
  OUTLINED_FUNCTION_4();
  result = OUTLINED_FUNCTION_6_5(v1);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v3 = OUTLINED_FUNCTION_15_3();
      result = CCLogStream::logAlert(v3, "[dk] %s@%d:bss count is 0\n", "collectCCAForJoinTimeout", 1703);
    }
  }

  *v0 = -536870212;
  return result;
}

uint64_t AppleBCMWLANJoinAdapter::setAssocRSNIEAsyncCallback(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to update RSN IE, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::setCustomAssocIE(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNoticeIf(v1, 0x800uLL, "[dk] %s@%d: Clearing WAPI IE\n", "setCustomAssocIE", 1787);
}

{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: wapiie failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::setCustomAssocIEAsyncCallback(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to update Custom IE, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::getAssociatedRSNXEAsyncCallback(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to get RSN XE, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::getAssociatedRSNXE(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2, 3758097090);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: rsnxe failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::programPMK(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d: WLC_SET_WSEC_PMK() failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::setAssocWsecInfoPMKPassword(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  v4 = (*(v3 + 112))(v2);
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Failure setting wsec_info for PMK, %s\n", "setAssocWsecInfoPMKPassword", 2259, "setAssocWsecInfoPMKPassword", v4);
}

{
  OUTLINED_FUNCTION_6_5(a1);
  OUTLINED_FUNCTION_5_2();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:%s: Unable to allocate memory for txBuf\n", v3, v4, v5);
}

uint64_t AppleBCMWLANJoinAdapter::programKeyAsync(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_SET_KEY() failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::programKeySync(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_SET_KEY() failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::programKeyAsyncCallback(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_SET_KEY() failed, error %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::setWsecInfoCallback(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_6(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logCrit(v1, "[dk] %s@%d: Failed to set wsec info, %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANJoinAdapter::handleAuth(uint64_t a1, unsigned int *a2)
{
  v2 = OUTLINED_FUNCTION_7_5(a1, a2);
  OUTLINED_FUNCTION_14_2(v2);
  IO80211_io80211isSensitiveInfoAllowed();
  IO80211_io80211isSensitiveInfoAllowed();
  IO80211_io80211isSensitiveInfoAllowed();
  IO80211_io80211isSensitiveInfoAllowed();
  IO80211_io80211isSensitiveInfoAllowed();
  OUTLINED_FUNCTION_10_4();
  return CCLogStream::logAlert(v15, "[dk] %s@%d:%s:%d: status = %lu %s, reason = %lu, flags = 0x%x, authtype = %lu, addr = %02x:%02x:%02x:%02x:%02x:%02x\n", "handleAuth", 2487, "handleAuth", 2487, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t AppleBCMWLANJoinAdapter::handleAssoc(uint64_t a1, unsigned int *a2)
{
  v2 = OUTLINED_FUNCTION_7_5(a1, a2);
  OUTLINED_FUNCTION_14_2(v2);
  IO80211_io80211isSensitiveInfoAllowed();
  IO80211_io80211isSensitiveInfoAllowed();
  IO80211_io80211isSensitiveInfoAllowed();
  IO80211_io80211isSensitiveInfoAllowed();
  IO80211_io80211isSensitiveInfoAllowed();
  OUTLINED_FUNCTION_10_4();
  return CCLogStream::logAlert(v15, "[dk] %s@%d:%s:%d: status = %lu %s, reason = %lu, flags = 0x%x, authtype = %lu, addr = %02x:%02x:%02x:%02x:%02x:%02x\n", "handleAssoc", 2557, "handleAssoc", 2557, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t AppleBCMWLANJoinAdapter::handleSetSSID(uint64_t *a1, int *a2, uint64_t a3, unsigned __int8 *a4)
{
  v22 = *(*a1 + 96);
  v23 = *(*a1 + 72);
  v7 = *a2;
  v21 = stringFromStatusInEvent(*a2, 0);
  v19 = *(a3 + 2);
  v8 = *(a3 + 16);
  v20 = *(a3 + 12);
  v9 = *a1;
  v10 = *(*a1 + 640);
  v11 = *(v9 + 642);
  v12 = 0;
  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v12 = *a4;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v13 = *(a3 + 25);
  }

  else
  {
    v13 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v14 = *(a3 + 26);
  }

  else
  {
    v14 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v15 = *(a3 + 27);
  }

  else
  {
    v15 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v16 = *(a3 + 28);
  }

  else
  {
    v16 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v17 = *(a3 + 29);
  }

  else
  {
    v17 = 0;
  }

  return CCLogStream::logNotice(v23, "[dk] %s@%d: interface %lu event_status = %lu %s, reason = %lu, flags = 0x%x, authtype = %lu, join_status = %lu join_ext_status = %lu addr = %02x:%02x:%02x:%02x:%02x:%02x\n", "handleSetSSID", 2630, v22, v7, v21, v20, v19, v8, v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t AppleBCMWLANJoinAdapter::handleSetSSID(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logNotice(v1, "[dk] %s@%d:Timed out waiting for first beacon of the network", "handleSetSSID", 2637);
}

{
  v1 = OUTLINED_FUNCTION_6_5(a1);
  return CCLogStream::logCrit(v1, "[dk] %s@%d: no event specified\n", "handleSetSSID", 2609);
}

uint64_t AppleBCMWLANJoinAdapter::handleICVErrorEvent(uint64_t a1, unsigned int *a2)
{
  v7 = OUTLINED_FUNCTION_7_5(a1, a2);
  v8 = 0;
  if (OUTLINED_FUNCTION_14_2(v7))
  {
    v8 = v3[24];
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v9 = v3[25];
  }

  else
  {
    v9 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v10 = v3[26];
  }

  else
  {
    v10 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v11 = v3[27];
  }

  else
  {
    v11 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v12 = v3[28];
  }

  else
  {
    v12 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v13 = v3[29];
  }

  else
  {
    v13 = 0;
  }

  return CCLogStream::logNoticeIf(v16, 0x100uLL, "[dk] %s@%d: status = %lu %s, reason = %lu, flags = 0x%x, authtype = %lu, addr = %02x:%02x:%02x:%02x:%02x:%02x\n", "handleICVErrorEvent", 2681, v2, v15, v4, v5, v6, v8, v9, v10, v11, v12, v13);
}

void AppleBCMWLANJoinAdapter::getBSSInfoAsyncCallback(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_4(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  CCLogStream::logCrit(v1, "[dk] %s@%d: WLC_GET_BSS_INFO() failed, error %s\n", v4, v5, v6);
  OUTLINED_FUNCTION_12_2();
}

uint64_t AppleBCMWLANJoinAdapter::getBSSInfoAsyncCallback()
{
  OUTLINED_FUNCTION_4();
  if (OUTLINED_FUNCTION_6_5(v2))
  {
    shouldLog = CCLogStream::shouldLog();
    v3 = *v1;
    if (shouldLog)
    {
      CCLogStream::logAlert(*(v3 + 72), "[dk] %s@%d:Unable to get create bss from FW bss data, send connect complete with join failure\n", "getBSSInfoAsyncCallback", 2845);
      v3 = *v1;
    }
  }

  *(v3 + 640) = -1;

  return AppleBCMWLANJoinAdapter::sendConnectComplete(v0);
}

uint64_t AppleBCMWLANPowerStateAdapter::configureExtendedListenInterval(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to set beacon wakeup period: %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to set extended dtim wakeup period: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerStateAdapter::configureDefaultListenInterval(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a1[2];
  (*(**a1 + 112))(*a1, a2);
  OUTLINED_FUNCTION_6();
  result = CCLogStream::logAlert(v6, "[dk] %s@%d:Unable to set beacon wakeup period: %s\n", v8, v9, v10);
  *a4 = *a3;
  return result;
}

uint64_t AppleBCMWLANPowerStateAdapter::configureDefaultListenInterval(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Unable to set extended dtim wakeup period: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerStateAdapter::configureBeaconFRTS(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = *(*a1 + 16);
  v5 = OUTLINED_FUNCTION_1_0(*a1);
  v8 = *v7;
  v10 = (*(v6 + 112))(v5, v9);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Failed to set pm2_bcn_sleep_ret to %d : ret %x: %s\n", "configureBeaconFRTS", 200, v8, a3, v10);
}

uint64_t AppleBCMWLANPowerStateAdapter::configureMulticastBroadcastWaitPeriod(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed configuring pm_bcmc_moredata_wait: %s\n", v5, v6, v7);
}

{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed configuring pm_bcmc_moredata_wait: %s\n", v5, v6, v7);
}

{
  return CCLogStream::logAlert(*(*a1 + 16), "[dk] %s@%d:LPAS: Ignore Multicast/Broadcast failed \n", "configureMulticastBroadcastWaitPeriod", 248);
}

uint64_t AppleBCMWLANPowerStateAdapter::handleMulticastBroadcastWaitPeriodConfigAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to configure multicast wait period: %s\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerStateAdapter::disableDFRTSAndSetFRTS(uint64_t *a1, unsigned int *a2)
{
  v2 = *(*a1 + 16);
  v3 = *a2;
  v4 = OUTLINED_FUNCTION_1_0(*a1);
  v7 = (*(v5 + 112))(v4, v6);
  return CCLogStream::logAlert(v2, "[dk] %s@%d:Failed to set FRTS: ret %lu: %s\n", "disableDFRTSAndSetFRTS", 321, v3, v7);
}

uint64_t AppleBCMWLANPowerStateAdapter::configureDFRTSLogicAnd(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure DFRTS (%s)\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerStateAdapter::handleDFRTSConfigAsyncCallBack(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to set DFRTS (%s)\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerStateAdapter::disableDFRTS(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_7(a1);
  (*(v3 + 112))(v2);
  OUTLINED_FUNCTION_6();
  return CCLogStream::logAlert(v1, "[dk] %s@%d:Failed to Configure DFRTS (%s)\n", v5, v6, v7);
}

uint64_t AppleBCMWLANPowerStateAdapter::setExcessPMAlertParams(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = *(*a1 + 16);
  v5 = OUTLINED_FUNCTION_1_0(*a1);
  v8 = *v7;
  v10 = (*(v6 + 112))(v5, v9);
  return CCLogStream::logAlert(v4, "[dk] %s@%d:Failed to set excess_pm_percent to %d : ret %x: %s\n", "setExcessPMAlertParams", 391, v8, a3, v10);
}

uint64_t AppleBCMWLANPowerStateAdapter::configureRoamScanQuota(uint64_t *a1, int a2, int a3)
{
  v5 = *(*a1 + 16);
  v6 = OUTLINED_FUNCTION_1_0(*a1);
  v8 = (*(v7 + 112))(v6);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to configure pfn_roam_alert_thresh to %d: ret %x: %s\n", "configureRoamScanQuota", 433, a3, a2, v8);
}

uint64_t AppleBCMWLANLowLatencyInterface::setInterfaceEnable(uint64_t a1, uint64_t a2, char a3)
{
  v5 = (*(*a1 + 1088))(a1);
  v6 = (*(*a1 + 160))(a1);
  return CCLogStream::logAlert(v5, "[dk] %s@%d:%s: on %s isEnable %d\n", "setInterfaceEnable", 130, "virtual IOReturn AppleBCMWLANLowLatencyInterface::setInterfaceEnable(BOOL)", v6, a3 & 1);
}

uint64_t AppleBCMWLAN11beAdapter::configureMloPref(uint64_t *a1, int a2)
{
  v3 = *(*a1 + 16);
  v4 = OUTLINED_FUNCTION_1_0(*a1);
  v6 = (*(v5 + 112))(v4);
  return CCLogStream::logAlert(v3, "[dk] %s@%d: mloConfigPref_t %d[%s]\n", "configureMloPref", 226, a2, v6);
}

uint64_t AppleBCMWLAN11beAdapter::setMultilinkActiveMode(uint64_t *a1, int a2, int a3)
{
  v5 = *(*a1 + 16);
  v6 = OUTLINED_FUNCTION_1_0(*a1);
  v8 = (*(v7 + 112))(v6);
  return CCLogStream::logAlert(v5, "[dk] %s@%d: multilink_active mode %d[%s] set<%d> \n", "setMultilinkActiveMode", 394, a2, v8, a3);
}

uint64_t AppleBCMWLAN11beAdapter::configureMloFeaturesInit(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(*a1 + 16);
  v6 = OUTLINED_FUNCTION_1_0(*a1);
  v9 = *v8;
  v11 = *v10;
  v13 = (*(v7 + 112))(v6, v12);
  return CCLogStream::logAlert(v5, "[dk] %s@%d: mloFeaturesConfig_t mask:0x%x enab:0x%x  --> %d[%s] \n", "configureMloFeaturesInit", 417, v9, v11, a4, v13);
}

uint64_t AppleBCMWLAN11beAdapter::configureMlo(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v5 = *(*a1 + 16);
  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v6 = *a2;
  }

  else
  {
    v6 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v7 = a2[1];
  }

  else
  {
    v7 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v8 = a2[2];
  }

  else
  {
    v8 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v9 = a2[3];
  }

  else
  {
    v9 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v10 = a2[4];
  }

  else
  {
    v10 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v11 = a2[5];
  }

  else
  {
    v11 = 0;
  }

  return CCLogStream::logAlert(v5, "[dk] %s@%d:link id =<%d> %02x:%02x:%02x:%02x:%02x:%02x\n", "configureMlo", 194, a3, v6, v7, v8, v9, v10, v11);
}

uint64_t AppleBCMWLAN11beAdapter::dumpMloStatus(uint64_t *a1, uint64_t a2)
{
  result = *(*a1 + 16);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = *a1;
      v6 = *(*a1 + 16);
      v7 = OUTLINED_FUNCTION_1_0(v5);
      v9 = (*(v8 + 112))(v7, a2);
      return CCLogStream::logAlert(v6, "[dk] %s@%d: getMloStatus %d[%s] \n", "dumpMloStatus", 263, a2, v9);
    }
  }

  return result;
}

uint64_t AppleBCMWLAN11beAdapter::getMloContext(uint64_t *a1, uint64_t a2)
{
  result = *(*a1 + 16);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v5 = *a1;
      v6 = *(*a1 + 16);
      v7 = OUTLINED_FUNCTION_1_0(v5);
      v9 = (*(v8 + 112))(v7, a2);
      return CCLogStream::logAlert(v6, "[dk] %s@%d: getMloContext %d [%s] \n", "getMloContext", 307, a2, v9);
    }
  }

  return result;
}

uint64_t AppleBCMWLAN11beAdapter::getMloStatus(uint64_t *a1, uint64_t a2, _DWORD *a3)
{
  result = *(*a1 + 16);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = *a1;
      v8 = *(*a1 + 16);
      v9 = OUTLINED_FUNCTION_1_0(v7);
      v11 = (*(v10 + 112))(v9, a2);
      result = CCLogStream::logAlert(v8, "[dk] %s@%d: getMloStatus %d [%s] \n", "getMloStatus", 350, a2, v11);
    }
  }

  *a3 = a2;
  return result;
}

uint64_t AppleBCMWLAN11beAdapter::getMloStatus(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 16);
  v4 = *(a2 + 2);
  v5 = *(a2 + 10);
  v6 = *(a2 + 11);
  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v7 = *(a2 + 4);
  }

  else
  {
    v7 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v8 = *(a2 + 5);
  }

  else
  {
    v8 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v9 = *(a2 + 6);
  }

  else
  {
    v9 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v10 = *(a2 + 7);
  }

  else
  {
    v10 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v11 = *(a2 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (IO80211_io80211isSensitiveInfoAllowed())
  {
    v12 = *(a2 + 9);
  }

  else
  {
    v12 = 0;
  }

  return CCLogStream::logAlert(v3, "[dk] %s@%d:len=<%d> mode<%d>  num_links=<%d>   local mld_addr =%02x:%02x:%02x:%02x:%02x:%02x\n", "getMloStatus", 359, v4, v5, v6, v7, v8, v9, v10, v11, v12);
}