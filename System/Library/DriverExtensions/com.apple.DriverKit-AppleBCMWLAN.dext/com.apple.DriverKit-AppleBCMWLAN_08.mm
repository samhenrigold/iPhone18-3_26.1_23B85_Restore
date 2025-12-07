uint64_t acquireProperty<OSNumber>(IOService *a1, const char *a2, OSMetaClassBase **a3, unint64_t a4, const char *a5)
{
  anObject = 0;
  result = acquirePropertyWithString(a1, a2, &anObject, a4, a5);
  if (result)
  {
    v7 = OSMetaClassBase::safeMetaCast(anObject, gOSNumberMetaClass);
    if (v7)
    {
      *a3 = v7;
      return 1;
    }

    else
    {
      result = anObject;
      if (anObject)
      {
        (anObject->release)(anObject);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANConfigManager::configureEnterpriseRoamParams(AppleBCMWLANConfigManager *this)
{
  v2 = this + 48;
  v1 = *(this + 6);
  v7 = *(v1 + 98) - (*(v1 + 96) << 16);
  v3 = *(v1 + 24);
  v6[0] = &v7;
  v6[1] = 4;
  v4 = AppleBCMWLANCommander::runIOVarSet(v3, "roam_conf_aggressive", v6, 0, 0);
  if (v4 && *(*v2 + 16) && CCLogStream::shouldLog())
  {
    AppleBCMWLANConfigManager::configureEnterpriseRoamParams(v2);
  }

  return v4;
}

uint64_t AppleBCMWLANConfigManager::handleBeaconOffloadAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result + 48;
    result = *(*(result + 48) + 16);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANConfigManager::handleBeaconOffloadAsyncCallBack(v3);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANConfigManager::handleBeaconDriftAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result + 48;
    result = *(*(result + 48) + 16);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANConfigManager::handleBeaconDriftAsyncCallBack(v3);
      }
    }
  }

  return result;
}

BOOL AppleBCMWLANConfigManager::isBMWCarPlayNetworkWorkaroundNeeded(AppleBCMWLANCore ***this)
{
  Bus = AppleBCMWLANCore::getBus(*this[6]);
  v3 = (*(*Bus + 368))(Bus);
  if (this[6][2] && CCLogStream::shouldLog())
  {
    CCLogStream::logInfo(this[6][2], "[dk] %s@%d:Chip %u\n", "isBMWCarPlayNetworkWorkaroundNeeded", 1757, v3);
  }

  if (v3 >> 1 < 0x88D)
  {
    return 0;
  }

  v4 = this[6];
  if (v4[2])
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = this[6];
    if (shouldLog)
    {
      CCLogStream::logAlert(v4[2], "[dk] %s@%d:In CarPlay session with %u\n", "isBMWCarPlayNetworkWorkaroundNeeded", 1761, v3);
      v4 = this[6];
    }
  }

  BssManager = AppleBCMWLANCore::getBssManager(*v4);
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(BssManager);
  return CurrentBSS && (IO80211BSSBeacon::isLikelyAlpineBMWNetwork(CurrentBSS) & 1) != 0;
}

uint64_t AppleBCMWLANConfigManager::copyWlanPwrDutyCycleTable(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(v2 + 272);
  *(a2 + 20) = *(v2 + 288);
  *(a2 + 4) = v3;
  v4 = *(a1 + 48);
  v5 = *(v4 + 296);
  *(a2 + 44) = *(v4 + 312);
  *(a2 + 28) = v5;
  return 0;
}

uint64_t AppleBCMWLANConfigManager::setPowerProfile(AppleBCMWLANConfigManager *this, int a2)
{
  v2 = this + 48;
  *(*(this + 6) + 220) = a2;
  if ((a2 - 1) <= 1 && AppleBCMWLANConfigManager::isBMWCarPlayNetworkWorkaroundNeeded(this))
  {
    v8 = 1;
    v3 = *(*v2 + 24);
    v7[0] = &v8;
    v7[1] = 4;
    v4 = AppleBCMWLANCommander::runIOVarSet(v3, "erp_cts", v7, 0, 0);
    v5 = *(*v2 + 16);
    if (v4)
    {
      if (v5 && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(*(*v2 + 16), "[dk] %s@%d:cannot set erp_cts %u: ret %x\n", "setPowerProfile", 1953, v8, v4);
      }
    }

    else if (v5 && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::setPowerProfile(v2);
    }

    if (*(*v2 + 16) && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::setPowerProfile(v2);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANConfigManager::configureBeaconDriftOffsetConfig(AppleBCMWLANConfigManager *this, int a2)
{
  memset(v19, 170, sizeof(v19));
  v4 = IOMallocZeroData();
  if (v4)
  {
    *v4 = 0xF000C0001;
    if (a2 == 1)
    {
      v9 = 10;
    }

    else
    {
      v9 = 15;
    }

    if (a2 == 2)
    {
      v9 = 5;
    }

    *(v4 + 8) = v9;
    *(v4 + 9) = 1541;
    *(v4 + 11) = 2;
    v11 = this + 48;
    v10 = *(this + 6);
    v20[0] = v4;
    v20[1] = 12;
    v12 = (*(**v10 + 88))(*v10, v5, v6, v7, v8);
    if ((*(*v12 + 136))(v12))
    {
      v19[0] = this;
      v19[1] = AppleBCMWLANConfigManager::handleBeaconDriftAsyncCallBack;
      v19[2] = 0;
      v13 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 6) + 24), "bcn_tbtt_config", v20, kNoRxExpected, v19, 0);
    }

    else
    {
      v13 = AppleBCMWLANCommander::runIOVarSet(*(*v11 + 24), "bcn_tbtt_config", v20, 0, 0);
    }

    v14 = v13;
    v17 = *(*v11 + 16);
    if (v14)
    {
      if (v17 && CCLogStream::shouldLog())
      {
        AppleBCMWLANConfigManager::configureBeaconDriftOffsetConfig(this + 48);
      }
    }

    else if (v17 && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::configureBeaconDriftOffsetConfig(this + 48);
    }

    IOFreeData();
  }

  else
  {
    v14 = 3758097085;
    v16 = *(this + 6);
    v15 = this + 48;
    if (*(v16 + 16) && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::configureBeaconDriftOffsetConfig(v15);
    }
  }

  return v14;
}

uint64_t AppleBCMWLANConfigManager::querySDBPolicies(AppleBCMWLANCore ***this)
{
  v1 = (this + 6);
  result = AppleBCMWLANCore::checkForSDBSupport(*this[6]);
  if (result)
  {
    v3 = IOMallocZeroData();
    if (v3)
    {
      v4 = v3;
      v9[0] = v3;
      v9[1] = 0x40000000400;
      v5 = IOMallocZeroData();
      if (v5)
      {
        v6 = v5;
        v8[0] = v5;
        v8[1] = 1024;
        *v5 = 0x8000;
        *(v5 + 2) = 1;
        *(v5 + 4) = 0x100040000;
        if (AppleBCMWLANCommander::runIOVarGet((*v1)[3], "rsdb", v8, v9, 0))
        {
          if ((*v1)[2])
          {
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANConfigManager::querySDBPolicies(v1);
            }
          }
        }

        else if (*(v4 + 4) || *(v4 + 8) || *(v4 + 6) < 6u || *(v4 + 12) != 1)
        {
          if ((*v1)[2] && CCLogStream::shouldLog())
          {
            CCLogStream::logAlert((*v1)[2], "[dk] %s@%d:Rsdb version check failure, id:%d status:%d ver:%d\n");
          }
        }

        else
        {
          *(v6 + 4) = 1;
          if (AppleBCMWLANCommander::runIOVarGet((*v1)[3], "rsdb", v8, v9, 0))
          {
            if ((*v1)[2] && CCLogStream::shouldLog())
            {
              AppleBCMWLANConfigManager::querySDBPolicies(v1);
            }
          }

          else if (*(v4 + 4) != 1 || *(v4 + 8) || *(v4 + 6) <= 0xBu)
          {
            if ((*v1)[2] && CCLogStream::shouldLog())
            {
              CCLogStream::logAlert((*v1)[2], "[dk] %s@%d:Rsdb Caps check failure, id:%d status:%d len:%d\n");
            }
          }

          else
          {
            v7 = *(v4 + 12);
            AppleBCMWLANCore::updateRSDBCaps(**v1, v4 + 12);
            *(v6 + 4) = 2;
            if (AppleBCMWLANCommander::runIOVarGet((*v1)[3], "rsdb", v8, v9, 0))
            {
              if ((*v1)[2] && CCLogStream::shouldLog())
              {
                AppleBCMWLANConfigManager::querySDBPolicies(v1);
              }
            }

            else if (*(v4 + 4) != 2 || *(v4 + 8) || *(v4 + 6) <= 7u)
            {
              if ((*v1)[2] && CCLogStream::shouldLog())
              {
                CCLogStream::logAlert((*v1)[2], "[dk] %s@%d:Rsdb Bands check failure, id:%d status:%d len:%d\n");
              }
            }

            else
            {
              *(v6 + 4) = 3;
              if (AppleBCMWLANCommander::runIOVarGet((*v1)[3], "rsdb", v8, v9, 0))
              {
                if ((*v1)[2] && CCLogStream::shouldLog())
                {
                  AppleBCMWLANConfigManager::querySDBPolicies(v1);
                }
              }

              else if (*(v4 + 4) != 3 || *(v4 + 8) || *(v4 + 6) <= 0x13u)
              {
                if ((*v1)[2] && CCLogStream::shouldLog())
                {
                  CCLogStream::logAlert((*v1)[2], "[dk] %s@%d:Rsdb Config check failure, id:%d status:%d len:%d\n");
                }
              }

              else if ((*v1)[2] && CCLogStream::shouldLog())
              {
                CCLogStream::logAlert((*v1)[2], "[dk] %s@%d:SDB Capabilities: SDB:%d cores:%d curMode:%d Slice0 [%d %d %0X] Slice1 [%d %d %0X]\n", "querySDBPolicies", 2198, v7);
              }
            }
          }
        }

        IOFreeData();
      }

      else if ((*v1)[2] && CCLogStream::shouldLog())
      {
        AppleBCMWLANConfigManager::querySDBPolicies(v1);
      }

      return IOFreeData();
    }

    else
    {
      result = (*v1)[2];
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANConfigManager::querySDBPolicies(v1);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANConfigManager::configureRangingParams(AppleBCMWLANConfigManager *this)
{
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v29 = 0u;
  memset(v28, 0, sizeof(v28));
  LOWORD(v28[0]) = 2;
  v27[0] = v28;
  v27[1] = 0x9C009C009CLL;
  v1 = (this + 48);
  v2 = *(*(this + 6) + 24);
  v25 = v28;
  v26 = 156;
  v3 = AppleBCMWLANCommander::runIOVarGet(v2, "proxd_tune", &v25, v27, 0);
  v4 = *v1;
  if (v3)
  {
    v5 = v3;
    result = *(v4 + 16);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return CCLogStream::logAlert(*(*v1 + 16), "[dk] %s@%d:Failure getting proxd_tune config %d\n", "configureRangingParams", 2219, v5);
      }
    }
  }

  else
  {
    AppleBCMWLANCore::getFirmwareInterfaceVersion(*v4);
    v7 = *v1;
    BYTE1(v30) = *(*v1 + 234) & 1;
    *(&v29 + 3) = 1048601;
    v8 = *(v7 + 24);
    v25 = v28;
    v26 = 156;
    v9 = AppleBCMWLANCommander::runIOVarSet(v8, "proxd_tune", &v25, 0, 0);
    v10 = *v1;
    if (v9)
    {
      if (*(v10 + 16))
      {
        shouldLog = CCLogStream::shouldLog();
        v10 = *v1;
        if (shouldLog)
        {
          AppleBCMWLANConfigManager::configureRangingParams(v10, v9, v1, &v25);
          v10 = v25;
        }
      }
    }

    v24 = 0;
    v23 = 0;
    v21 = 2;
    v22 = 257;
    AppleBCMWLANCommander::getMaxCmdRxPayload(*(v10 + 24));
    v12 = IOMallocZeroData();
    MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(*(*v1 + 24));
    v14 = AppleBCMWLANCommander::getMaxCmdRxPayload(*(*v1 + 24));
    if (MaxCmdRxPayload)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }

    if (MaxCmdRxPayload)
    {
      v16 = v12 == 0;
    }

    else
    {
      v16 = 1;
    }

    v17 = (v14 << 32) | MaxCmdRxPayload;
    if (v16)
    {
      v17 = 0;
    }

    v25 = v15;
    v26 = v17;
    v18 = *(*v1 + 24);
    v20[0] = &v21;
    v20[1] = 12;
    result = AppleBCMWLANCommander::runIOVarGet(v18, "proxd_collect", v20, &v25, 0);
    if (result && (v19 = result, (result = *(*v1 + 16)) != 0) && (result = CCLogStream::shouldLog(), result))
    {
      result = CCLogStream::logAlert(*(*v1 + 16), "[dk] %s@%d: Failed GET IOCTL, cret[0x%08x]\n", "configureRangingParams", 2259, v19);
      if (!v12)
      {
        return result;
      }
    }

    else if (!v12)
    {
      return result;
    }

    return IOFreeData();
  }

  return result;
}

uint64_t AppleBCMWLANConfigManager::determine6GConfiguration(AppleBCMWLANCore ***this)
{
  v2 = AppleBCMWLANCore::checkFor6GSupportCardCapability(*this[6]);
  v3 = this[6];
  if (v2 && *(v3 + 390) == 1 && (*(v3 + 391) & 1) != 0)
  {
    result = 1;
  }

  else
  {
    result = v3[2];
    if (result)
    {
      result = CCLogStream::shouldLog();
      v3 = this[6];
      if (result)
      {
        CCLogStream::logAlertIf(v3[2], 0x4000uLL, "[dk] %s@%d:%s WiFiRoam : 6GHz roaming is not allowed.  Chip capability : [%d] Roaming enabled via boot-arg ? : [%d] Platform Support : [%d] \n", "determine6GConfiguration", 2277, "determine6GConfiguration", v2, *(v3 + 390), *(v3 + 391));
        result = 0;
        v3 = this[6];
      }
    }
  }

  *(v3 + 392) = result;
  return result;
}

uint64_t AppleBCMWLANConfigManager::setupBeaconOffload(AppleBCMWLANCore ***this, int a2, int a3, int a4, char a5)
{
  v10 = this + 6;
  BssManager = AppleBCMWLANCore::getBssManager(*this[6]);
  if (AppleBCMWLANCore::checkForLPSCDisable(**v10))
  {
    if ((*v10)[2] && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::setupBeaconOffload(v10);
    }

    a3 = 0;
    a2 = 0;
  }

  if ((a5 & 1) == 0 && (IO80211BssManager::isAssociated(BssManager) & 1) == 0)
  {
    if ((*v10)[2] && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::setupBeaconOffload(v10);
    }

    return 0;
  }

  if ((a2 & a4) == 1 && AppleBCMWLANCore::getBtScoForIphone(**v10))
  {
    if ((*v10)[2] && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::setupBeaconOffload(v10);
    }

    return 0;
  }

  if ((IO80211BssManager::isAssociatedToAdhoc(BssManager) & 1) != 0 || !AppleBCMWLANCore::checkForScanCoreSupport(**v10))
  {
    return 0;
  }

  v34 = 0;
  v28 = 1;
  v30 = a2;
  if (a3)
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  v31 = v12;
  v32 = 3;
  v13 = *v10;
  if ((*v10)[2])
  {
    shouldLog = CCLogStream::shouldLog();
    v13 = *v10;
    if (shouldLog)
    {
      v21 = v13[2];
      v22 = "disabled";
      if (a2)
      {
        v22 = "enabled";
      }

      v23 = "relaxed";
      if (a3)
      {
        v23 = "strict";
      }

      CCLogStream::logInfo(v21, "[dk] %s@%d:Setup beacon offload %s with %s params \n", "setupBeaconOffload", 2339, v22, v23);
      v13 = *v10;
    }
  }

  v33 = 1466;
  v29 = 4128784;
  v15 = (*(**v13 + 88))();
  if ((*(*v15 + 136))(v15))
  {
    v25 = this;
    v26 = AppleBCMWLANConfigManager::handleBeaconOffloadAsyncCallBack;
    v27 = 0;
    v16 = this[6][3];
    v24[0] = &v28;
    v24[1] = 16;
    v17 = AppleBCMWLANCommander::sendIOVarSet(v16, "sta_pm_sc_offload", v24, kNoRxExpected, &v25, 0);
  }

  else
  {
    v20 = (*v10)[3];
    v25 = &v28;
    v26 = 16;
    v17 = AppleBCMWLANCommander::runIOVarSet(v20, "sta_pm_sc_offload", &v25, 0, 0);
  }

  v18 = v17;
  if (v17 && (*v10)[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANConfigManager::setupBeaconOffload(v10);
  }

  return v18;
}

uint64_t AppleBCMWLANConfigManager::setAWDLSupported(AppleBCMWLANConfigManager *this, char a2)
{
  v2 = *(this + 6);
  result = *(v2 + 166);
  *(v2 + 166) = a2;
  return result;
}

uint64_t AppleBCMWLANConfigManager::setTetheringSupport(AppleBCMWLANConfigManager *this, char a2)
{
  v2 = *(this + 6);
  result = *(v2 + 171);
  *(v2 + 171) = a2;
  return result;
}

uint64_t AppleBCMWLANConfigManager::isContCPMSPowerSupported(AppleBCMWLANConfigManager *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 326);
  }

  return v1 & 1;
}

uint64_t AppleBCMWLANConfigManager::isSetCcodeDurPowerOffSupported(AppleBCMWLANConfigManager *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    LOBYTE(v1) = *(v1 + 327);
  }

  return v1 & 1;
}

uint64_t AppleBCMWLANConfigManager::configureDynamicRssiWindow(AppleBCMWLANConfigManager *this, int a2)
{
  v3 = this + 48;
  v2 = *(this + 6);
  if (*(v2 + 388) != 1)
  {
    return 3758097095;
  }

  v16 = a2 | 0x200;
  v5 = *(v2 + 24);
  v14 = &v16;
  v15 = 4;
  v6 = AppleBCMWLANCommander::runIOVarSet(v5, "rssi_win", &v14, 0, 0);
  if (v6 == -469794537 || v6 == 0)
  {
    v13 = a2;
    v8 = *(*v3 + 24);
    v14 = &v13;
    v15 = 4;
    v9 = AppleBCMWLANCommander::runIOVarSet(v8, "snr_win", &v14, 0, 0);
    v10 = v9;
    v11 = v9 == -469794537 || v9 == 0;
    if (!v11 && *(*v3 + 16) && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::configureDynamicRssiWindow(v3);
    }
  }

  else
  {
    v10 = v6;
    if (*(*v3 + 16) && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::configureDynamicRssiWindow(v3);
    }
  }

  return v10;
}

BOOL IOImageLoaderImageDictionary::setAttributeWithNumber(OSDictionary *this, OSDictionary *a2, uint64_t value)
{
  v5 = OSNumber::withNumber(value, 0x40uLL);
  v6 = v5;
  if (this && a2 && v5)
  {
    v7 = OSDictionary::setObject(this, a2, v5);
LABEL_5:
    (v6->release)(v6);
    return v7;
  }

  v7 = 0;
  result = 0;
  if (v6)
  {
    goto LABEL_5;
  }

  return result;
}

BOOL IOImageLoaderImageDictionary::setAttributeWithBoolean(OSDictionary *this, OSDictionary *a2, const char *a3)
{
  v3 = &kOSBooleanTrue;
  if (!a3)
  {
    v3 = &kOSBooleanFalse;
  }

  v4 = *v3;
  if (this && a2 && v4)
  {
    v5 = OSDictionary::setObject(this, a2, *v3);
LABEL_7:
    (v4->release)(v4);
    return v5;
  }

  v5 = 0;
  result = 0;
  if (v4)
  {
    goto LABEL_7;
  }

  return result;
}

BOOL OUTLINED_FUNCTION_0_14(OSMetaClassBase *anObject)
{

  return OSDictionary::setObject(v2, v1, anObject);
}

OSObject *AppleBCMWLANChipMemory::withMap(AppleBCMWLANChipMemory *this, IOMemoryMap *a2, AppleBCMWLANChipManagerPCIe *a3, AppleBCMWLANPCIeMMIOHistory *a4)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANChipMemoryMetaClass, &v9))
  {
    return 0;
  }

  v7 = v9;
  if (v9 && ((v9->OSMetaClassBase::__vftable[1].getMetaClass)(v9, this, a2, a3) & 1) == 0)
  {
    (v7->release)(v7);
    return 0;
  }

  return v7;
}

uint64_t AppleBCMWLANChipMemory::initWithMap(OSObject *this, IOMemoryMap *a2, AppleBCMWLANChipManagerPCIe *a3, AppleBCMWLANPCIeMMIOHistory *a4)
{
  result = OSObject::init(this);
  if (result)
  {
    result = IOMallocZeroTyped();
    *&this[1].refcount = result;
    if (result)
    {
      if (a4)
      {
        *(result + 248) = a4;
        (*(**(*&this[1].refcount + 248) + 8))(*(*&this[1].refcount + 248));
        result = *&this[1].refcount;
      }

      *(result + 16) = 0;
      if (AppleBCMWLANChipManagerPCIe::getMemoryCount(a3) > 7)
      {
        return 0;
      }

      else
      {
        v8 = 0;
        v9 = 24;
        do
        {
          AppleBCMWLANChipManagerPCIe::copyMemory(a3, *&this[1].refcount + v9, v8++);
          v9 += 32;
        }

        while (v8 != 7);
        *(*&this[1].refcount + 256) = 0;
        return 1;
      }
    }
  }

  return result;
}

void AppleBCMWLANChipMemory::free(OSObject *this)
{
  v2 = *&this[1].refcount;
  if (v2)
  {
    v3 = v2[31];
    if (v3)
    {
      (*(*v3 + 16))(v2[31]);
      *(*&this[1].refcount + 248) = 0;
      v2 = *&this[1].refcount;
    }

    memset_s(v2, 0x108uLL, 0, 0x108uLL);
    v4 = *&this[1].refcount;
    if (v4)
    {
      IOFree(v4, 0x108uLL);
      *&this[1].refcount = 0;
    }
  }

  OSObject::free(this);
}

void AppleBCMWLANChipMemory::readBuf(AppleBCMWLANBusInterfacePCIe *a1, unsigned int a2, int a3, int a4, uint8_t *a5)
{
  LODWORD(v6) = a4;
  LODWORD(v7) = a3;
  readData = 0;
  Device = AppleBCMWLANBusInterfacePCIe::getDevice(a1);
  if (v6)
  {
    v11 = Device;
    v7 = v7;
    v6 = v6;
    do
    {
      v12 = *(a1 + 6) + 32 * a2;
      IOPCIDevice::MemoryRead8(v11, *(v12 + 36), v7 + *(v12 + 40), &readData);
      *a5++ = readData;
      ++v7;
      --v6;
    }

    while (v6);
  }
}

void AppleBCMWLANChipMemory::writeBuf(AppleBCMWLANBusInterfacePCIe *a1, unsigned int a2, int a3, int a4, uint8_t *a5)
{
  LODWORD(v6) = a4;
  LODWORD(v7) = a3;
  Device = AppleBCMWLANBusInterfacePCIe::getDevice(a1);
  if (v6)
  {
    v11 = Device;
    v7 = v7;
    v6 = v6;
    do
    {
      v12 = *(a1 + 6) + 32 * a2;
      v13 = *a5++;
      IOPCIDevice::MemoryWrite8(v11, *(v12 + 36), v7 + *(v12 + 40), v13);
      ++v7;
      --v6;
    }

    while (v6);
  }
}

uint64_t AppleBCMWLANChipMemory::unwrapRAMOffset(AppleBCMWLANChipMemory *this, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    return (*(*(this + 6) + 160) + a2);
  }

  return a2;
}

uint64_t AppleBCMWLANChipMemory::translateRAMBackplaneAddr(AppleBCMWLANChipMemory *this, unsigned int a2, unsigned int *a3)
{
  result = 3825172999;
  v5 = *(this + 6);
  v6 = *(v5 + 156);
  if (a2 >= v6 && *(v5 + 160) + v6 > a2)
  {
    result = 0;
    *a3 = a2 - v6;
  }

  return result;
}

void OUTLINED_FUNCTION_22_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10)
{

  AppleBCMWLANChipMemory::read32(a1, 4u);
}

void OUTLINED_FUNCTION_23_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{

  AppleBCMWLANChipMemory::read32(a1, 4u);
}

uint64_t OUTLINED_FUNCTION_24_3(AppleBCMWLANPCIeMMIOHistory *a1, uint64_t a2, uint64_t a3, char a4)
{

  return AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(a1, a2, a3, a4, 0, 1);
}

uint64_t OUTLINED_FUNCTION_25_2(AppleBCMWLANPCIeMMIOHistory *a1, uint64_t a2, uint64_t a3, char a4)
{

  return AppleBCMWLANPCIeMMIOHistory::recordMMIOMemory(a1, a2, a3, a4, 1, 1);
}

OSObject *AppleBCMWLANPCIeSkywalkPacketPool::withName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeSkywalkPacketPoolMetaClass, &v12))
  {
    return 0;
  }

  v10 = v12;
  if (v12 && ((v12->OSMetaClassBase::__vftable[2].release)(v12, a1, a2, a5, a3, a4) & 1) == 0)
  {
    (v10->release)(v10);
    return 0;
  }

  return v10;
}

OSObject *AppleBCMWLANPCIeSkywalkPacketPool::newPacketWithDescriptor(uint64_t a1, uint64_t a2)
{
  result = AppleBCMWLANPCIeSkywalkPacket::withPool(a1, a2, *(*(a1 + 72) + 24), **(a1 + 72), *(*(a1 + 72) + 8), 0);
  if (result)
  {
    HIDWORD(result[2].OSMetaClassBase::__vftable[1].init) = -559038737;
  }

  return result;
}

OSObject *AppleBCMWLANPCIeSkywalkPacket::withPool(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeSkywalkPacketMetaClass, &v14))
  {
    return 0;
  }

  v12 = v14;
  if (v14 && ((v14->OSMetaClassBase::__vftable[11].getMetaClass)(v14, a1, a2, a3, a4, a5, a6) & 1) == 0)
  {
    (v12->release)(v12);
    return 0;
  }

  return v12;
}

void AppleBCMWLANPCIeSkywalkPacketPool::free(IOUserNetworkPacketBufferPool *this)
{
  meta = this[1].meta;
  if (meta)
  {
    *&meta[1].meta = 0u;
    *&meta[2].__vftable = 0u;
    *&meta->meta = 0u;
    *&meta[1].__vftable = 0u;
    *&meta->__vftable = 0u;
    v3 = this[1].meta;
    if (v3)
    {
      IOFree(v3, 0x50uLL);
      this[1].meta = 0;
    }
  }

  IOUserNetworkPacketBufferPool::free(this);
}

void *AppleBCMWLANPCIeSkywalkPacketPool::txTrackerFlush(OSObject *this)
{
  result = *(this[1].ivars + 4);
  if (result)
  {
    *(this[1].ivars + 9) += (*(*result + 72))(result);
    v3 = *(this[1].ivars + 4);

    return AppleBCMWLANHashtable::flush(v3, this, AppleBCMWLANPCIeSkywalkPacketPool::flushPacketAction, this);
  }

  return result;
}

IOUserNetworkPacket *AppleBCMWLANPCIeSkywalkPacketPool::flushPacketAction(AppleBCMWLANPCIeSkywalkPacketPool *this, __int16 a2, OSObject *anObject, IOUserNetworkPacketBufferPool *a4)
{
  result = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANPCIeSkywalkPacketMetaClass);
  if (a4 && result)
  {
    BYTE4(result[1].OSObject::OSObjectInterface::__vftable[7].free) &= ~0x80u;

    return IOUserNetworkPacketBufferPool::deallocatePacket(a4, result);
  }

  return result;
}

void *AppleBCMWLANPCIeSkywalkPacketPool::rxTrackerFlush(OSObject *this)
{
  result = *(this[1].ivars + 5);
  if (result)
  {
    *(this[1].ivars + 8) += (*(*result + 72))(result);
    v3 = *(this[1].ivars + 5);

    return AppleBCMWLANHashtable::flush(v3, this, AppleBCMWLANPCIeSkywalkPacketPool::flushPacketAction, this);
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(IOUserNetworkPacketBufferPool *this, IOUserNetworkPacket *a2)
{
  if (!a2)
  {
    return AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(this);
  }

  BYTE4(a2[1].OSObject::OSObjectInterface::__vftable[7].free) &= ~0x80u;

  return IOUserNetworkPacketBufferPool::deallocatePacket(this, a2);
}

uint64_t AppleBCMWLANPCIeSkywalkPacketPool::allocatePacket(AppleBCMWLANPCIeSkywalkPacketPool *this, IOUserNetworkPacket **a2, unsigned int a3)
{
  Packet = IOUserNetworkPacketBufferPool::allocatePacket(this, a2, a3);
  if (Packet)
  {
    v6 = Packet;
    if (**(this + 9) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(**(this + 9), "[dk] %s@%d:%s %d alloc fail status 0x%x\n", "allocatePacket", 211, "virtual IOReturn AppleBCMWLANPCIeSkywalkPacketPool::allocatePacket(IOUserNetworkPacket **, IOOptionBits)", 211, v6);
    }
  }

  else
  {
    v7 = OSMetaClassBase::safeMetaCast(*a2, gAppleBCMWLANPCIeSkywalkPacketMetaClass);
    if (*(*&v7[3].refcount + 100) == -559038737)
    {
      v8 = v7;
      (v7->__vftable[7].getMetaClass)(v7, 0, 1);
      IO80211NetworkPacket::setHeadroom(v8, *(*(this + 9) + 56));
      return 0;
    }

    else
    {
      v6 = 3758097084;
      v10 = *(this + 9);
      v9 = (this + 72);
      if (*v10 && CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkPacketPool::allocatePacket(v9);
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANPCIeSkywalkPacketPool::duplicatePacket(CCLogStream ***this, AppleBCMWLANPCIeSkywalkPacket *a2, AppleBCMWLANPCIeSkywalkPacket **a3)
{
  v6 = ((*this)[10])(this, a3, 1);
  if (!v6)
  {
    if (*a3)
    {
      if ((*(**a3 + 480))(*a3))
      {
        v8 = *(*a3 + 10);
        v8[1] = 0u;
        v8[2] = 0u;
        *v8 = 0u;
        v9 = *a3;
        Headroom = IO80211NetworkPacket::getHeadroom(a2);
        IO80211NetworkPacket::setHeadroom(v9, Headroom);
        v11 = (*(**a3 + 480))();
        v12 = (v11 + IO80211NetworkPacket::getHeadroom(a2));
        v13 = (*(*a2 + 480))(a2);
        v14 = (v13 + IO80211NetworkPacket::getHeadroom(a2));
        v15 = (*(*a2 + 224))(a2);
        memcpy(v12, v14, v15);
        v16 = *a3;
        v17 = (*(*a2 + 224))(a2);
        (*(*v16 + 216))(v16, v17);
        v18 = *a3;
        v19 = IO80211NetworkPacket::getHeadroom(a2);
        (*(*v18 + 232))(v18, v19);
        v7 = 0;
        *(*(*a3 + 10) + 124) |= 0x80u;
        return v7;
      }

      AppleBCMWLANPCIeSkywalkPacketPool::duplicatePacket(this);
    }

    else
    {
      AppleBCMWLANPCIeSkywalkPacketPool::duplicatePacket(this);
    }

    return v21;
  }

  v7 = v6;
  if (*this[9] && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(*this[9], "[dk] %s@%d:%s %d alloc fail status 0x%x\n", "duplicatePacket", 247, "IOReturn AppleBCMWLANPCIeSkywalkPacketPool::duplicatePacket(AppleBCMWLANPCIeSkywalkPacket *, AppleBCMWLANPCIeSkywalkPacket **)", 247, v7);
  }

  return v7;
}

double AppleBCMWLANPCIeSkywalkPacket::prepare(AppleBCMWLANPCIeSkywalkPacket *this)
{
  v1 = *(this + 10);
  result = 0.0;
  v1[1] = 0u;
  v1[2] = 0u;
  *v1 = 0u;
  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkPacket::initWithPool(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = IOMallocZeroTyped();
  *(a1 + 80) = v9;
  if (v9)
  {
    if (IO80211NetworkPacket::initWithPool())
    {
      *(*(a1 + 80) + 124) &= ~0x10u;
      *(*(a1 + 80) + 122) = 0;
      *(*(a1 + 80) + 64) = a1;
      *(*(a1 + 80) + 104) = a4;
      *(*(a1 + 80) + 124) &= ~0x40u;
      *(*(a1 + 80) + 120) = 0;
      *(*(a1 + 80) + 124) &= ~0x80u;
      *(*(a1 + 80) + 100) = 0;
      return 1;
    }

    IOLog("Skywalk Packet init fail\n");
  }

  else
  {
    IOLog("packet ivars alloc fail\n");
  }

  return 0;
}

uint64_t AppleBCMWLANPCIeSkywalkPacket::free(AppleBCMWLANPCIeSkywalkPacket *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    v2[6] = 0u;
    v2[7] = 0u;
    v2[4] = 0u;
    v2[5] = 0u;
    v2[2] = 0u;
    v2[3] = 0u;
    *v2 = 0u;
    v2[1] = 0u;
    v3 = *(this + 10);
    if (v3)
    {
      IOFree(v3, 0x80uLL);
      *(this + 10) = 0;
    }
  }

  return IO80211NetworkPacket::free(this);
}

uint64_t AppleBCMWLANPCIeSkywalkPacket::setPktRequeued(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(*(this + 80) + 124) = *(*(this + 80) + 124) & 0xEF | v2;
  return this;
}

uint64_t AppleBCMWLANPCIeSkywalkPacket::setPTMMode(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(*(this + 80) + 124) = *(*(this + 80) + 124) & 0xDF | v2;
  return this;
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeSkywalkPacket::setPTMMode(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(*(this + 24) + 124) = *(*(this + 24) + 124) & 0xDF | v2;
  return this;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::init(AppleBCMWLANIO80211APSTAInterface *this)
{
  result = IO80211SkywalkInterface::init(this);
  if (result)
  {
    v3 = IOMallocZeroTyped();
    *(this + 17) = v3;
    return v3 != 0;
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::init(IO80211SkywalkInterface *this, AppleBCMWLANCore *a2, ether_addr *a3, unsigned int a4, char *a5)
{
  if (IO80211VirtualInterface::init(this, a2, a3, a4, a5))
  {
    *(*(this + 17) + 536) = a2;
    *(*(this + 17) + 810) = 0;
    *(*(this + 17) + 811) = 0;
    if ((AppleBCMWLANCore::getDebugFlags(*(*(this + 17) + 536)) & 0x200) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    IO80211SkywalkInterface::setInterfaceId(this, v8);
    *(*(this + 17) + 616) = 2;
    (*(**(*(this + 17) + 536) + 88))(*(*(this + 17) + 536));
    *(*(this + 17) + 112) = IO80211TimerSource::allocWithParams();
    v9 = *(this + 17);
    if (*(v9 + 112))
    {
      (*(**(v9 + 536) + 88))(*(v9 + 536));
      *(*(this + 17) + 120) = IO80211TimerSource::allocWithParams();
      v10 = *(this + 17);
      if (*(v10 + 120))
      {
        *(*(this + 17) + 576) = AppleBCMWLANCore::getBGScanAdapter(*(v10 + 536));
        v11 = *(*(this + 17) + 576);
        if (v11)
        {
          (*(*v11 + 8))(v11);
          *(*(this + 17) + 584) = AppleBCMWLANCore::getPowerManager(*(*(this + 17) + 536));
          v12 = *(*(this + 17) + 584);
          if (v12)
          {
            (*(*v12 + 8))(v12);
            *(*(this + 17) + 552) = AppleBCMWLANCore::getCommander(*(*(this + 17) + 536));
            *(*(this + 17) + 528) = (*(**(*(this + 17) + 536) + 1952))();
            IO80211SkywalkInterface::setInterfaceRole(this, a4);
            *(*(this + 17) + 592) = AppleBCMWLANCore::getTxPowerManager(*(*(this + 17) + 536));
            v13 = *(*(this + 17) + 592);
            if (v13)
            {
              (*(*v13 + 8))(v13);
              *(*(this + 17) + 608) = AppleBCMWLANCore::getConfigManager(*(*(this + 17) + 536));
              v14 = *(*(this + 17) + 608);
              if (v14)
              {
                (*(*v14 + 8))(v14);
                *(*(this + 17) + 600) = AppleBCMWLANCore::getWnmAdaptor(*(*(this + 17) + 536));
                v15 = *(*(this + 17) + 600);
                if (v15)
                {
                  (*(*v15 + 8))(v15);
                  *(*(this + 17) + 524) = 0;
                  *(*(this + 17) + 136) = 0;
                  *(*(this + 17) + 176) = 0;
                  *(*(this + 17) + 180) = 0;
                  *(*(this + 17) + 20) = 300;
                  *(*(this + 17) + 676) = 4;
                  *(*(this + 17) + 680) = 0;
                  result = 1;
                  *(*(this + 17) + 684) = 1;
                  *(*(this + 17) + 688) = 2;
                  *(*(this + 17) + 692) = 3;
                  return result;
                }

                if ((*(*this + 1088))(this))
                {
                  (*(*this + 1088))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANIO80211APSTAInterface::init();
                  }
                }
              }

              else if ((*(*this + 1088))(this))
              {
                (*(*this + 1088))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANIO80211APSTAInterface::init();
                }
              }
            }

            else if ((*(*this + 1088))(this))
            {
              (*(*this + 1088))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANIO80211APSTAInterface::init();
              }
            }
          }

          else if ((*(*this + 1088))(this))
          {
            (*(*this + 1088))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIO80211APSTAInterface::init();
            }
          }
        }

        else if ((*(*this + 1088))(this))
        {
          (*(*this + 1088))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::init();
          }
        }
      }

      else if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::init();
        }
      }
    }

    else if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::init();
      }
    }

    AppleBCMWLANIO80211APSTAInterface::freeResources(this);
  }

  else
  {
    IOLog("AppleBCMWLANIO80211APSTAInterface init failed");
  }

  return 0;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleAPStatsUpdates(AppleBCMWLANIO80211APSTAInterface *a1, uint64_t a2)
{
  v4 = a1 + 136;
  v3 = *(a1 + 17);
  result = *(v3 + 112);
  if (result == a2)
  {
    if (*(v3 + 620))
    {
      result = IOMallocZeroData();
      if (result)
      {
        v6 = result;
        v7 = (*(*a1 + 1680))(a1, result);
        if (v7 != -536870184)
        {
          if (v7)
          {
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANIO80211APSTAInterface::handleAPStatsUpdates();
              }
            }
          }

          else
          {
            AppleBCMWLANIO80211APSTAInterface::checkForStationListMismatch(a1, v6);
            v8 = *(a1 + 17);
            v9 = *(v8 + 160);
            v10 = AppleBCMWLANCore::isConcurrencyOpModeSet(*(v8 + 536), 16) && AppleBCMWLANCore::isConcurrencyOpModeSet(*(*v4 + 536), 8);
            if (AppleBCMWLANCore::isNanPhFeatureEnabled(*(*v4 + 536)))
            {
              v12 = !v10;
            }

            else
            {
              v12 = 1;
            }

            if (!v12)
            {
              v9 += AppleBCMWLANCore::getNanRxPktCounter(*(*v4 + 536));
            }

            v13 = *v4;
            if (v9 == *(*v4 + 136))
            {
              *(v13 + 524) += 5000;
            }

            else
            {
              *(v13 + 136) = v9;
              *(*v4 + 524) = 0;
            }

            if (*(*v4 + 524) >= 0x16E361u)
            {
              if ((*(*a1 + 1088))(a1))
              {
                (*(*a1 + 1088))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANIO80211APSTAInterface::handleAPStatsUpdates();
                }
              }

              v15 = 0;
              v16 = -1;
              AppleBCMWLANIO80211APSTAInterface::postMessageForSTA(a1, 13, &v15, 0xCu);
              v14 = *(a1 + 17);
              if (*(v14 + 524) >= 0x170A71u)
              {
                *(v14 + 524) = 0;
              }
            }

            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANIO80211APSTAInterface::handleAPStatsUpdates();
              }
            }

            (*(**(*v4 + 112) + 56))(*(*v4 + 112), 5000);
          }
        }

        return IOFreeData();
      }
    }

    else
    {
      v11 = *(*result + 72);

      return v11();
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::freeResources(AppleBCMWLANIO80211APSTAInterface *this)
{
  v2 = *(this + 17);
  v3 = v2[14];
  if (v3)
  {
    (*(*v3 + 80))(v3);
    (*(**(*(this + 17) + 112) + 16))(*(*(this + 17) + 112));
    *(*(this + 17) + 112) = 0;
    v2 = *(this + 17);
  }

  v4 = v2[15];
  if (v4)
  {
    (*(*v4 + 80))(v4);
    (*(**(*(this + 17) + 120) + 16))(*(*(this + 17) + 120));
    *(*(this + 17) + 120) = 0;
    v2 = *(this + 17);
  }

  v5 = v2[72];
  if (v5)
  {
    (*(*v5 + 16))(v5);
    *(*(this + 17) + 576) = 0;
    v2 = *(this + 17);
  }

  v6 = v2[73];
  if (v6)
  {
    (*(*v6 + 16))(v6);
    *(*(this + 17) + 584) = 0;
    v2 = *(this + 17);
  }

  v7 = v2[74];
  if (v7)
  {
    (*(*v7 + 16))(v7);
    *(*(this + 17) + 592) = 0;
    v2 = *(this + 17);
  }

  v8 = v2[76];
  if (v8)
  {
    (*(*v8 + 16))(v8);
    *(*(this + 17) + 608) = 0;
    v2 = *(this + 17);
  }

  result = v2[75];
  if (result)
  {
    result = (*(*result + 16))(result);
    *(*(this + 17) + 600) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::monitorAPInterface(AppleBCMWLANIO80211APSTAInterface *a1, uint64_t a2)
{
  v3 = *(a1 + 17);
  result = *(v3 + 120);
  if (result == a2)
  {
    if (*(v3 + 620))
    {
      mach_continuous_time();
      absolutetime_to_nanoseconds();
      v5 = *(a1 + 17);
      v6 = *(v5 + 424);
      if (v6)
      {
        AppleBCMWLANIO80211APSTAInterface::softApStatsAccumulatePowerStateDuration(a1, *(v5 + 16), -v6);
      }

      AppleBCMWLANIO80211APSTAInterface::monitorInfraConcurrencyState(a1);
      AppleBCMWLANIO80211APSTAInterface::runPowerSaveStateMachine(a1);
      return (*(**(*(a1 + 17) + 120) + 56))(*(*(a1 + 17) + 120), 1000);
    }

    else
    {
      v7 = *(*result + 72);

      return v7();
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::start(AppleBCMWLANIO80211APSTAInterface *this, IOService *anObject)
{
  v3 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANCoreMetaClass);

  return AppleBCMWLANIO80211APSTAInterface::start(this, v3);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::start(IO80211VirtualInterface *a1, IOService *a2)
{
  IOLog("APSTA Skywalk Interface Start\n");
  result = (*(*a1 + 1864))(a1, a2, 0, 7, "ap");
  if (result)
  {
    result = IO80211VirtualInterface::start(a1, a2);
    if (result)
    {
      if (IO80211SkywalkInterface::getLogger(a1))
      {
        *(*(a1 + 17) + 528) = IO80211SkywalkInterface::getLogger(a1);
      }

      (a2->OSObject::OSMetaClassBase::__vftable[1].Dispatch)(a2);
      *(*(a1 + 17) + 816) = (a2->OSObject::OSMetaClassBase::__vftable[1].Dispatch)(a2);
      *(*(a1 + 17) + 712) = AppleBCMWLANCore::getBus(a2);
      v5 = (*(**(*(a1 + 17) + 712) + 752))();
      *(*(a1 + 17) + 720) = OSMetaClassBase::safeMetaCast(v5, gAppleBCMWLANBusSkywalkMetaClass);
      *&v6 = 0xAAAAAAAAAAAAAAAALL;
      *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v10 = v6;
      v11 = v6;
      v12 = v6;
      v13 = v6;
      v14 = v6;
      v9 = a1;
      v7 = *(a1 + 17);
      LOBYTE(v10) = *(v7 + 676);
      *&v12 = v7 + 744;
      *(&v12 + 1) = v7 + 752;
      *&v13 = v7 + 800;
      *(&v13 + 1) = v7 + 728;
      *&v14 = v7 + 736;
      *(&v11 + 1) = v7 + 760;
      *(&v10 + 1) = v7 + 680;
      *&v11 = v7 + 768;
      v15 = (*(*a1 + 1088))(a1);
      if ((*(**(*(a1 + 17) + 720) + 56))(*(*(a1 + 17) + 720), &v9))
      {
        result = (*(*a1 + 1088))(a1);
        if (result)
        {
          (*(*a1 + 1088))(a1);
          result = CCLogStream::shouldLog();
          if (result)
          {
            AppleBCMWLANIO80211APSTAInterface::start();
            return 0;
          }
        }
      }

      else
      {
        v8 = *(a1 + 17);
        if (*(v8 + 800))
        {
          (*(**(v8 + 816) + 64))(*(v8 + 816));
        }

        return (*(*a1 + 536))(a1);
      }
    }
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::start(AppleBCMWLANIO80211APSTAInterface *this, IOService *anObject)
{
  v2 = (this - 48);
  v3 = OSMetaClassBase::safeMetaCast(anObject, gAppleBCMWLANCoreMetaClass);

  return AppleBCMWLANIO80211APSTAInterface::start(v2, v3);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::registerInterface(IOService *this)
{
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[1] = v2;
  v13[2] = v2;
  v13[0] = v2;
  if ((this->OSObject::OSMetaClassBase::__vftable[1].release)(this, &mediaTable, 2))
  {
    result = (this->OSObject::OSMetaClassBase::__vftable[19].isEqualTo)(this);
    if (result)
    {
      (this->OSObject::OSMetaClassBase::__vftable[19].isEqualTo)(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANIO80211APSTAInterface::registerInterface();
        return 0;
      }
    }

    return result;
  }

  ivars = this[2].ivars;
  if (!*(ivars + 676))
  {
    goto LABEL_15;
  }

  v5 = 0;
  do
  {
    v6 = *(ivars + v5 + 96);
    *(v13 + v5) = v6;
    if ((this->OSObject::OSMetaClassBase::__vftable[19].isEqualTo)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[19].isEqualTo)(this);
      if (CCLogStream::shouldLog())
      {
        v7 = (this->OSObject::OSMetaClassBase::__vftable[19].isEqualTo)(this);
        CCLogStream::logAlert(v7, "[dk] %s@%d:APSTAInterface: network queue[%u] %p, driver queue %p\n", "registerInterface", 478, v5, v6, *(this[2].ivars + v5 + 96));
      }
    }

    ++v5;
    ivars = this[2].ivars;
  }

  while (v5 < *(ivars + 676));
  if (*(ivars + 676))
  {
    v8 = 0;
    do
    {
      (*(**(ivars + v8 + 96) + 272))(*(ivars + v8 + 96));
      *(this[2].ivars + *(this[2].ivars + v8 + 170) + 174) = AppleBCMWLANSkywalkTxSubmissionQueue::getQueueId(*(this[2].ivars + v8 + 96));
      ++v8;
      ivars = this[2].ivars;
    }

    while (v8 < *(ivars + 676));
  }

  else
  {
LABEL_15:
    LOBYTE(v8) = 0;
  }

  *(v13 + v8) = *(ivars + 93);
  *(v13 + (v8 + 1)) = *(ivars + 94);
  (*(**(ivars + 93) + 200))(*(ivars + 93));
  (*(**(this[2].ivars + 94) + 208))(*(this[2].ivars + 94));
  v9 = (this->OSObject::OSMetaClassBase::__vftable[19].retain)(this);
  v10 = (v8 + 2);
  v11 = (this->OSObject::OSMetaClassBase::__vftable[4].free)(this, v9 & 0xFFFFFFFFFFFFLL, *(this[2].ivars + 91), v13, v10);
  if ((this->OSObject::OSMetaClassBase::__vftable[19].isEqualTo)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[19].isEqualTo)(this);
    if (CCLogStream::shouldLog())
    {
      v12 = (this->OSObject::OSMetaClassBase::__vftable[19].isEqualTo)(this);
      CCLogStream::logAlert(v12, "[dk] %s@%d:APSTAInterface: ret[0x%08x] MAC[%02X:%02X:%02X:%02X:%02X:%02X], pool[%p] queues[%p] numQueue[%2u]", "registerInterface", 495, v11, v9, BYTE1(v9), BYTE2(v9), BYTE3(v9), BYTE4(v9), BYTE5(v9), *(this[2].ivars + 91), v13, v10);
      if (v11)
      {
        goto LABEL_19;
      }

LABEL_24:
      IOService::RegisterService(this, 0);
      return 1;
    }
  }

  if (!v11)
  {
    goto LABEL_24;
  }

LABEL_19:
  result = (this->OSObject::OSMetaClassBase::__vftable[19].isEqualTo)(this);
  if (result)
  {
    (this->OSObject::OSMetaClassBase::__vftable[19].isEqualTo)(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANIO80211APSTAInterface::registerInterface();
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setInterfaceEnable(AppleBCMWLANIO80211APSTAInterface *this, _BOOL4 a2)
{
  IO80211SkywalkInterface::validateDispatchQueue(this);
  v4 = IO80211VirtualInterface::setInterfaceEnable(this, a2);
  v5 = *(*(this + 17) + 536);
  if (v5)
  {
    AppleBCMWLANCore::reportSystemPowerState(v5, 3, a2, 1);
  }

  v6 = (*(*this + 1088))(this);
  if (a2)
  {
    if (v6)
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setInterfaceEnable();
      }
    }

    if (*(*(this + 17) + 620))
    {
      v7 = 3;
      v8 = 128;
    }

    else
    {
      v7 = 1;
      v8 = 130;
    }

    v4 = (*(*this + 128))(this, v7, v8);
    (*(*this + 1320))(this, 0);
  }

  else
  {
    if (v6)
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setInterfaceEnable();
      }
    }

    (*(*this + 1328))(this, 0);
  }

  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      v11 = (*(*this + 1088))(this);
      v12 = "Disable";
      if (a2)
      {
        v12 = "Enable";
      }

      CCLogStream::logAlert(v11, "[dk] %s@%d:AppleBCMWLANIO80211APSTAInterface::(%s) ret=0x%08x\n", "setInterfaceEnable", 543, v12, v4);
    }
  }

  v9 = *(*(this + 17) + 536);
  if (v9)
  {
    AppleBCMWLANCore::reportSystemPowerState(v9, 3, a2, 0);
  }

  return v4;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setPromiscuousModeEnable(uint64_t this, uint64_t a2)
{
  v2 = a2;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::setPromiscuousModeEnable(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v2);
    }
  }

  IO80211SkywalkInterface::validateDispatchQueue(this);
  return 0;
}

const char *AppleBCMWLANIO80211APSTAInterface::getBSDNamePrefix(AppleBCMWLANIO80211APSTAInterface *this)
{
  IO80211SkywalkInterface::validateDispatchQueue(this);
  if ((AppleBCMWLANCore::getDebugFlags(*(*(this + 17) + 536)) & 0x200) != 0)
  {
    return "aux";
  }

  else
  {
    return "ap";
  }
}

const char *non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::getBSDNamePrefix(AppleBCMWLANIO80211APSTAInterface *this)
{
  IO80211SkywalkInterface::validateDispatchQueue((this - 48));
  if ((AppleBCMWLANCore::getDebugFlags(*(*(this + 11) + 536)) & 0x200) != 0)
  {
    return "aux";
  }

  else
  {
    return "ap";
  }
}

uint64_t AppleBCMWLANIO80211APSTAInterface::stop(AppleBCMWLANIO80211APSTAInterface *this, IOService *a2)
{
  WorkQueue = IO80211SkywalkInterface::getWorkQueue(this);
  IO80211SkywalkInterface::validateDispatchQueue(this);
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::stop();
    }
  }

  v5 = *(this + 17);
  if (*(v5 + 676))
  {
    v6 = 96;
    do
    {
      v7 = *(v5 + 8 * v6);
      if (v7)
      {
        (*(*v7 + 272))(v7);
        v5 = *(this + 17);
        v8 = *(v5 + 8 * v6);
        if (v8)
        {
          (*(*v8 + 16))(v8);
          *(*(this + 17) + 8 * v6) = 0;
          v5 = *(this + 17);
        }
      }

      v9 = v6 - 95;
      ++v6;
    }

    while (v9 < *(v5 + 676));
  }

  v10 = *(v5 + 744);
  if (v10)
  {
    (*(*v10 + 200))(v10);
    v5 = *(this + 17);
    v11 = *(v5 + 744);
    if (v11)
    {
      (*(*v11 + 16))(v11);
      *(*(this + 17) + 744) = 0;
      v5 = *(this + 17);
    }
  }

  v12 = *(v5 + 752);
  if (v12)
  {
    (*(*v12 + 208))(v12);
    v5 = *(this + 17);
    v13 = *(v5 + 752);
    if (v13)
    {
      (*(*v13 + 16))(v13);
      *(*(this + 17) + 752) = 0;
      v5 = *(this + 17);
    }
  }

  v14 = *(v5 + 800);
  if (v14)
  {
    (*(*v14 + 72))(v14);
    (*(*WorkQueue + 72))(WorkQueue, *(*(this + 17) + 800));
    v15 = *(*(this + 17) + 800);
    if (v15)
    {
      (*(*v15 + 16))(v15);
      *(*(this + 17) + 800) = 0;
    }
  }

  return IO80211VirtualInterface::stop(this, a2);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::createChipInterface(AppleBCMWLANIO80211APSTAInterface *this)
{
  v2 = (*(*this + 1072))(this);
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      v4 = (*(*this + 1088))(this);
      v5 = *(*(this + 17) + 616);
      InterfaceRole = IO80211SkywalkInterface::getInterfaceRole(this);
      CCLogStream::logAlert(v4, "[dk] %s@%d: created interface %02X:%02X:%02X:%02X:%02X:%02X bsscfg %lu role %lu\n", "createChipInterface", 643, v2, BYTE1(v2), BYTE2(v2), BYTE3(v2), BYTE4(v2), BYTE5(v2), v5, InterfaceRole);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::reset(IO80211SkywalkInterface *this)
{
  *(*(this + 17) + 620) = 0;
  *(*(this + 17) + 809) = 0;
  if ((AppleBCMWLANCore::getDebugFlags(*(*(this + 17) + 536)) & 0x200) == 0)
  {
    IO80211SkywalkInterface::setInterfaceId(this, 0xFFFFFFFF);
  }

  AppleBCMWLANCore::setConcurrencyState(*(*(this + 17) + 536), 4, 0);
  v2 = *(this + 17);
  *(v2 + 184) = 0u;
  v2 = (v2 + 184);
  v2[13] = 0u;
  v2[14] = 0u;
  v2[11] = 0u;
  v2[12] = 0u;
  v2[9] = 0u;
  v2[10] = 0u;
  v2[7] = 0u;
  v2[8] = 0u;
  v2[5] = 0u;
  v2[6] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  **(this + 17) = 0;
  *(*(this + 17) + 176) = 0;
  *(*(this + 17) + 180) = 0;
  AppleBCMWLANIO80211APSTAInterface::setPowerSaveState(this, 0, 10);
  (*(**(*(this + 17) + 112) + 72))(*(*(this + 17) + 112));
  (*(**(*(this + 17) + 120) + 72))(*(*(this + 17) + 120));
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::reset();
    }
  }

  v3 = *(this + 17);
  *(v3 + 512) = 0;
  *(v3 + 480) = 0u;
  *(v3 + 496) = 0u;
  *(v3 + 448) = 0u;
  *(v3 + 464) = 0u;
  *(v3 + 432) = 0u;
  *(*(this + 17) + 160) = 0;
  *(*(this + 17) + 152) = 0;
  *(*(this + 17) + 144) = 0;
  return 0;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setPowerSaveState(AppleBCMWLANIO80211APSTAInterface *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  mach_continuous_time();
  *buf = 0;
  result = absolutetime_to_nanoseconds();
  v8 = a1 + 136;
  v7 = *(a1 + 17);
  if (*(v7 + 14) == 1)
  {
    if (v3 == 7)
    {
      result = (*(*a1 + 1088))(a1);
      if (result)
      {
        (*(*a1 + 1088))(a1);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANIO80211APSTAInterface::setPowerSaveState();
        }
      }
    }

    else
    {
      v9 = *(v7 + 16);
      if (v9 != v4)
      {
        v15 = *buf / 0xF4240uLL;
        v16 = *(v7 + 424);
        if (v16)
        {
          AppleBCMWLANIO80211APSTAInterface::softApStatsAccumulatePowerStateDuration(a1, v9, v15 - v16);
          v7 = *(a1 + 17);
        }

        ++*(v7 + 16 * v4 + 456);
        *(*v8 + 424) = v15;
        if (v4 > 1)
        {
          if (v4 == 2)
          {
            AppleBCMWLANIO80211APSTAInterface::configureSoftAPPowerSaveDynamic(a1);
          }

          else if (v4 == 3)
          {
            AppleBCMWLANIO80211APSTAInterface::configureSoftAPPowerSaveLow(a1);
          }
        }

        else if (v4)
        {
          if (v4 == 1)
          {
            AppleBCMWLANIO80211APSTAInterface::configureSoftAPPowerSaveActive(a1);
          }
        }

        else
        {
          AppleBCMWLANIO80211APSTAInterface::configureSoftAPPowerSaveOff(a1, v3);
        }
      }

      if (AppleBCMWLANIO80211APSTAInterface::isSoftAPConcurrencyEnabled(a1))
      {
        if (!(*(*a1 + 1088))(a1) || ((*(*a1 + 1088))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            isConcurrencyOpModeSet = AppleBCMWLANCore::isConcurrencyOpModeSet(*(*v8 + 536), 1);
            v11 = AppleBCMWLANCore::isConcurrencyOpModeSet(*(*v8 + 536), 2);
            v12 = AppleBCMWLANCore::isConcurrencyOpModeSet(*(*v8 + 536), 4);
            v13 = AppleBCMWLANCore::isConcurrencyOpModeSet(*(*v8 + 536), 8);
            v14 = AppleBCMWLANCore::isConcurrencyOpModeSet(*(*v8 + 536), 16);
            *buf = 67111170;
            *&buf[4] = 78;
            v33 = 2080;
            v34 = "setPowerSaveState";
            v35 = 1024;
            v36 = 4848;
            v37 = 2080;
            v38 = "setPowerSaveState";
            v39 = 1024;
            *v40 = isConcurrencyOpModeSet;
            *&v40[4] = 1024;
            *&v40[6] = v11;
            LOWORD(v41) = 1024;
            *(&v41 + 2) = v12;
            HIWORD(v41) = 1024;
            *v42 = v13;
            *&v42[4] = 1024;
            *&v42[6] = v14;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: %s: SoftAPConcurrencyEnabled: infra=%d awdl=%d softAp=%d nan=%d ir=%d\n", buf, 0x40u);
          }
        }

        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setPowerSaveState();
          }
        }
      }

      if (!(*(*a1 + 1088))(a1) || ((*(*a1 + 1088))(a1), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        v17 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
        if (v17)
        {
          v18 = *(*v8 + 16);
          if (v18 > 3)
          {
            v19 = "Unknown";
          }

          else
          {
            v19 = off_1003CC710[v18];
          }

          if (v4 > 3)
          {
            v20 = "Unknown";
          }

          else
          {
            v20 = off_1003CC710[v4];
          }

          v21 = AppleBCMWLANIO80211APSTAInterface::powerStateChangeReasonToString(v17, v3);
          isSoftAPConcurrencyEnabled = AppleBCMWLANIO80211APSTAInterface::isSoftAPConcurrencyEnabled(a1);
          *buf = 67110914;
          v23 = "";
          *&buf[4] = 65;
          v35 = 1024;
          v33 = 2080;
          v36 = 4853;
          v34 = "setPowerSaveState";
          if (isSoftAPConcurrencyEnabled)
          {
            v23 = ", in Concurrent Mode";
          }

          v37 = 2080;
          v38 = "setPowerSaveState";
          v39 = 2080;
          *v40 = v19;
          *&v40[8] = 2080;
          v41 = v20;
          *v42 = 2080;
          *&v42[2] = v21;
          v43 = 2080;
          v44 = v23;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: %s: LPHS power state changed %s -> %s, reason %s %s\n", buf, 0x4Au);
        }
      }

      result = (*(*a1 + 1088))(a1);
      if (result)
      {
        (*(*a1 + 1088))(a1);
        result = CCLogStream::shouldLog();
        if (result)
        {
          v24 = (*(*a1 + 1088))(a1);
          v25 = v24;
          v26 = *(*(a1 + 17) + 16);
          if (v26 > 3)
          {
            v27 = "Unknown";
          }

          else
          {
            v27 = off_1003CC710[v26];
          }

          if (v4 > 3)
          {
            v28 = "Unknown";
          }

          else
          {
            v28 = off_1003CC710[v4];
          }

          v29 = AppleBCMWLANIO80211APSTAInterface::powerStateChangeReasonToString(v24, v3);
          v30 = AppleBCMWLANIO80211APSTAInterface::isSoftAPConcurrencyEnabled(a1);
          v31 = "";
          if (v30)
          {
            v31 = ", in Concurrent Mode";
          }

          result = CCLogStream::logAlert(v25, "[dk] %s@%d:%s: LPHS power state changed %s -> %s, reason %s %s\n", "setPowerSaveState", 4853, "setPowerSaveState", v27, v28, v29, v31);
        }
      }

      *(*v8 + 16) = v4;
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::free(void **this)
{
  if (this[17])
  {
    AppleBCMWLANIO80211APSTAInterface::freeResources(this);
    bzero(this[17], 0x338uLL);
    v2 = this[17];
    if (v2)
    {
      IOFree(v2, 0x338uLL);
      this[17] = 0;
    }
  }

  return IO80211VirtualInterface::free(this);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::initSoftAPParameters(AppleBCMWLANIO80211APSTAInterface *this)
{
  v2 = *(this + 17);
  *(v2 + 512) = 0;
  *(v2 + 480) = 0u;
  *(v2 + 496) = 0u;
  *(v2 + 448) = 0u;
  *(v2 + 464) = 0u;
  *(v2 + 432) = 0u;
  *(*(this + 17) + 424) = 0;
  v3 = *(this + 17);
  *(v3 + 184) = 0u;
  v3 = (v3 + 184);
  v3[13] = 0u;
  v3[14] = 0u;
  v3[11] = 0u;
  v3[12] = 0u;
  v3[9] = 0u;
  v3[10] = 0u;
  v3[7] = 0u;
  v3[8] = 0u;
  v3[5] = 0u;
  v3[6] = 0u;
  v3[3] = 0u;
  v3[4] = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  **(this + 17) = 0;
  *(*(this + 17) + 22) = 1;
  *(*(this + 17) + 24) = 15;
  *(*(this + 17) + 28) = 30;
  *(*(this + 17) + 32) = 1800;
  *(*(this + 17) + 36) = 10;
  *(*(this + 17) + 40) = 3;
  AppleBCMWLANIO80211APSTAInterface::setBeaconInterval(this, *(*(this + 17) + 20));
  v4 = *(*(this + 17) + 22);

  return AppleBCMWLANIO80211APSTAInterface::setBeaconDTIMPeriod(this, v4);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setBeaconInterval(IO80211SkywalkInterface *this, int a2)
{
  v15 = a2;
  v2 = (this + 136);
  if (*(*(this + 17) + 104) == a2)
  {
    return 0;
  }

  v4 = a2;
  WorkQueue = IO80211SkywalkInterface::getWorkQueue(this);
  if ((*(*WorkQueue + 136))(WorkQueue))
  {
    *&v13 = this;
    *(&v13 + 1) = AppleBCMWLANIO80211APSTAInterface::handleSetBcnIntervalAsyncCallBack;
    v14 = 0;
    v7 = *(*(this + 17) + 552);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    v12[0] = &v15;
    v12[1] = 4;
    v3 = AppleBCMWLANCommander::sendVirtualIOCtlSet(v7, InterfaceId, 76, v12, kNoRxExpected, &v13, 0);
LABEL_9:
    *(*v2 + 104) = v4;
    return v3;
  }

  v9 = *(*(this + 17) + 552);
  v10 = IO80211SkywalkInterface::getInterfaceId(this);
  *&v13 = &v15;
  *(&v13 + 1) = 4;
  v3 = AppleBCMWLANCommander::runVirtualIOCtlSet(v9, v10, 76, &v13, 0, 0);
  if (!v3)
  {
    goto LABEL_9;
  }

  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::setBeaconInterval();
    }
  }

  return v3;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setBeaconDTIMPeriod(IO80211SkywalkInterface *this, int a2)
{
  v15 = a2;
  v2 = (this + 136);
  if (*(*(this + 17) + 106) == a2)
  {
    return 0;
  }

  v4 = a2;
  WorkQueue = IO80211SkywalkInterface::getWorkQueue(this);
  if ((*(*WorkQueue + 136))(WorkQueue))
  {
    *&v13 = this;
    *(&v13 + 1) = AppleBCMWLANIO80211APSTAInterface::handleSetBcnDTIMPeriodAsyncCallBack;
    v14 = 0;
    v7 = *(*(this + 17) + 552);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    v12[0] = &v15;
    v12[1] = 4;
    v3 = AppleBCMWLANCommander::sendVirtualIOCtlSet(v7, InterfaceId, 78, v12, kNoRxExpected, &v13, 0);
LABEL_9:
    *(*v2 + 106) = v4;
    return v3;
  }

  v9 = *(*(this + 17) + 552);
  v10 = IO80211SkywalkInterface::getInterfaceId(this);
  *&v13 = &v15;
  *(&v13 + 1) = 4;
  v3 = AppleBCMWLANCommander::runVirtualIOCtlSet(v9, v10, 78, &v13, 0, 0);
  if (!v3)
  {
    goto LABEL_9;
  }

  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::setBeaconDTIMPeriod();
    }
  }

  return v3;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getSSID(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 136) + 628);
  if (v2 > 0x20)
  {
    return 22;
  }

  *(a2 + 4) = v2;
  memcpy((a2 + 8), (*(a1 + 136) + 632), *(*(a1 + 136) + 628));
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::getSSID(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 24) + 628);
  if (v2 > 0x20)
  {
    return 22;
  }

  *(a2 + 4) = v2;
  memcpy((a2 + 8), (*(a1 + 24) + 632), *(*(a1 + 24) + 628));
  return 0;
}

{
  v2 = *(*(a1 + 8) + 628);
  if (v2 > 0x20)
  {
    return 22;
  }

  *(a2 + 4) = v2;
  memcpy((a2 + 8), (*(a1 + 8) + 632), *(*(a1 + 8) + 628));
  return 0;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getCHANNEL(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v12 = -1431655766;
  v10[0] = &v11;
  v10[1] = 0xC000C000CLL;
  v4 = *(*(a1 + 17) + 552);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v6 = AppleBCMWLANCommander::runVirtualIOCtlGet(v4, InterfaceId, 29, &kNoTxPayload, v10, 0);
  if (v6)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::getCHANNEL();
      }
    }
  }

  else
  {
    if (SHIDWORD(v11) <= 14)
    {
      v7 = 8;
    }

    else
    {
      v7 = 16;
    }

    v8 = *(a2 + 12) | v7;
    *(a2 + 8) = HIDWORD(v11);
    *(a2 + 12) = v8;
  }

  return v6;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::getCHANNEL(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANIO80211APSTAInterface::getCHANNEL((a1 - 112), a2);
}

{
  return AppleBCMWLANIO80211APSTAInterface::getCHANNEL((a1 - 128), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::getSTATE(uint64_t a1, uint64_t a2)
{
  *(a2 + 4) = 4;
  return 0;
}

{
  *(a2 + 4) = 4;
  return 0;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getOP_MODE(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 22;
  }

  result = 0;
  *a2 = 1;
  a2[1] = 8 * (*(*(a1 + 136) + 620) != 0);
  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::getOP_MODE(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 22;
  }

  result = 0;
  *a2 = 1;
  a2[1] = 8 * (*(*(a1 + 24) + 620) != 0);
  return result;
}

{
  if (!a2)
  {
    return 22;
  }

  result = 0;
  *a2 = 1;
  a2[1] = 8 * (*(*(a1 + 8) + 620) != 0);
  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getSTATION_LIST(IO80211SkywalkInterface *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 22;
  }

  if (!*(*(a1 + 17) + 620))
  {
    return 57;
  }

  v4 = 3758097085;
  v5 = IOMallocZeroData();
  if (v5)
  {
    v6 = v5;
    *v5 = 42;
    v7 = (*(**(*(a1 + 17) + 536) + 88))(*(*(a1 + 17) + 536));
    if ((*(*v7 + 136))(v7))
    {
      *&v16 = a1;
      *(&v16 + 1) = AppleBCMWLANIO80211APSTAInterface::getAssocListAsyncCallback;
      v17 = 0;
      v8 = *(*(a1 + 17) + 552);
      InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
      v14 = v6;
      v15 = 256;
      v13 = 16777472;
      if (AppleBCMWLANCommander::sendVirtualIOCtlGet(v8, InterfaceId, 159, &v14, &v13, &v16, 0))
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::getSTATION_LIST();
          }
        }
      }

      IOFreeData();
      return 3758097112;
    }

    else
    {
      *&v16 = v6;
      *(&v16 + 1) = 0x10001000100;
      v10 = *(*(a1 + 17) + 552);
      v11 = IO80211SkywalkInterface::getInterfaceId(a1);
      v14 = v6;
      v15 = 256;
      v4 = AppleBCMWLANCommander::runVirtualIOCtlGet(v10, v11, 159, &v14, &v16, 0);
      if (v4)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::getSTATION_LIST();
          }
        }
      }

      else
      {
        AppleBCMWLANIO80211APSTAInterface::convertBCMAssocListToAppleAssocList(a1, v6, a2);
      }

      IOFreeData();
    }
  }

  return v4;
}

_DWORD *AppleBCMWLANIO80211APSTAInterface::getAssocListAsyncCallback(_DWORD *result, uint64_t a2, uint64_t a3, unsigned int **a4)
{
  v4 = result;
  if (a3)
  {
    result = (*(*result + 1088))(result, a2);
    if (result)
    {
      (*(*v4 + 136))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANIO80211APSTAInterface::getAssocListAsyncCallback();
      }
    }
  }

  else if (*a4)
  {
    result = IOMallocZeroData();
    if (result)
    {
      v6 = result;
      AppleBCMWLANIO80211APSTAInterface::convertBCMAssocListToAppleAssocList(v4, *a4, result);
      AppleBCMWLANIO80211APSTAInterface::checkForStationListMismatch(v4, v6);

      return IOFreeData();
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::convertBCMAssocListToAppleAssocList(uint64_t result, unsigned int *a2, _DWORD *a3)
{
  v5 = *a2;
  if (*a2 < 0x81)
  {
    *a3 = 1;
    a3[1] = v5;
    if (!v5)
    {
      return result;
    }
  }

  else
  {
    v6 = result;
    result = (*(*result + 1088))(result);
    if (result)
    {
      (*(*v6 + 1088))(v6);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANIO80211APSTAInterface::convertBCMAssocListToAppleAssocList();
      }
    }

    *a2 = 128;
    *a3 = 0x8000000001;
  }

  v7 = 0;
  v8 = a3 + 3;
  v9 = 4;
  do
  {
    *(v8 - 1) = 1;
    v10 = *(a2 + v9);
    *(v8 + 2) = *(a2 + v9 + 4);
    *v8 = v10;
    v8[2] = 0;
    if (v7 > 0x28)
    {
      break;
    }

    ++v7;
    v8 += 4;
    v9 += 6;
  }

  while (v7 < *a2);
  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::getSTATION_LIST(uint64_t a1, _DWORD *a2)
{
  return AppleBCMWLANIO80211APSTAInterface::getSTATION_LIST((a1 - 112), a2);
}

{
  return AppleBCMWLANIO80211APSTAInterface::getSTATION_LIST((a1 - 128), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::getPEER_CACHE_MAXIMUM_SIZE(uint64_t a1, uint64_t a2)
{
  *(a2 + 4) = 8;
  return 0;
}

{
  *(a2 + 4) = 8;
  return 0;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getHOST_AP_MODE_HIDDEN(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  if (!a2)
  {
    return 22;
  }

  *a2 = 1;
  v9[0] = &v10;
  v9[1] = 0x400040004;
  v4 = *(*(a1 + 136) + 552);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v6 = AppleBCMWLANCommander::runVirtualIOVarGet(v4, InterfaceId, "closednet", &kNoTxPayload, v9, 0);
  v7 = (*(*a1 + 1088))(a1);
  if (v6)
  {
    if (v7)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::getHOST_AP_MODE_HIDDEN(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v6);
      }
    }
  }

  else
  {
    if (v7)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::getHOST_AP_MODE_HIDDEN();
      }
    }

    if (v10 <= 1)
    {
      *(a2 + 4) = v10;
    }
  }

  return v6;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::getHOST_AP_MODE_HIDDEN(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANIO80211APSTAInterface::getHOST_AP_MODE_HIDDEN(a1 - 112, a2);
}

{
  return AppleBCMWLANIO80211APSTAInterface::getHOST_AP_MODE_HIDDEN(a1 - 128, a2);
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::setPEER_CACHE_CONTROL(uint64_t a1, uint64_t a2)
{
  AppleBCMWLANCore::completePeerCacheControl(*(*(a1 + 24) + 536), a2, (a1 - 112));
  return 0;
}

{
  AppleBCMWLANCore::completePeerCacheControl(*(*(a1 + 8) + 536), a2, (a1 - 128));
  return 0;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE(void *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 28) != 0;
  }

  else
  {
    v4 = 0;
  }

  ProximityInterface = AppleBCMWLANCore::getProximityInterface(*(a1[17] + 536));
  P2PNANMgmtDataInterface = AppleBCMWLANCore::getP2PNANMgmtDataInterface(*(a1[17] + 536));
  P2PNANDataInterface = AppleBCMWLANCore::getP2PNANDataInterface(*(a1[17] + 536));
  if (!v4)
  {
    v9 = AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal(a1, a2);
    if ((AppleBCMWLANCore::isConcurrencyEnabled(*(a1[17] + 536)) & 1) == 0)
    {
      if (!ProximityInterface)
      {
        goto LABEL_41;
      }

      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE();
        }
      }

      if (AppleBCMWLANCore::isPoweredOnOrRestricted(*(a1[17] + 536)) && !AppleBCMWLANCore::isPoweringOff(*(a1[17] + 536)) && (v9 = AppleBCMWLANProximityInterface::bringupLink(ProximityInterface), v9) && (*(*a1 + 1088))(a1) && ((*(*a1 + 1088))(a1), CCLogStream::shouldLog()))
      {
        AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE();
        if (!P2PNANMgmtDataInterface)
        {
          return v9;
        }
      }

      else
      {
LABEL_41:
        if (!P2PNANMgmtDataInterface)
        {
          return v9;
        }
      }

      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE();
        }
      }

      if (AppleBCMWLANCore::isPoweredOnOrRestricted(*(a1[17] + 536)) && !AppleBCMWLANCore::isPoweringOff(*(a1[17] + 536)) && (v9 = AppleBCMWLANNANInterface::bringupLink(P2PNANMgmtDataInterface), v9) && (*(*a1 + 1088))(a1) && ((*(*a1 + 1088))(a1), CCLogStream::shouldLog()))
      {
        AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE();
        if (P2PNANDataInterface)
        {
LABEL_51:
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE();
            }
          }

          if (AppleBCMWLANCore::isPoweredOnOrRestricted(*(a1[17] + 536)) && !AppleBCMWLANCore::isPoweringOff(*(a1[17] + 536)))
          {
            v9 = AppleBCMWLANNANDataInterface::bringupLink(P2PNANDataInterface);
            if (v9)
            {
              if ((*(*a1 + 1088))(a1))
              {
                (*(*a1 + 1088))(a1);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE();
                }
              }
            }
          }
        }
      }

      else if (P2PNANDataInterface)
      {
        goto LABEL_51;
      }
    }

    return v9;
  }

  if ((AppleBCMWLANCore::isConcurrencyEnabled(*(a1[17] + 536)) & 1) == 0)
  {
    if (!ProximityInterface)
    {
      goto LABEL_13;
    }

    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE();
      }
    }

    if (AppleBCMWLANProximityInterface::bringdownLink(ProximityInterface) && (*(*a1 + 1088))(a1) && ((*(*a1 + 1088))(a1), CCLogStream::shouldLog()))
    {
      AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE();
      if (!P2PNANMgmtDataInterface)
      {
        goto LABEL_28;
      }
    }

    else
    {
LABEL_13:
      if (!P2PNANMgmtDataInterface)
      {
        goto LABEL_28;
      }
    }

    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE();
      }
    }

    if (AppleBCMWLANNANInterface::bringdownLink(P2PNANMgmtDataInterface) && (*(*a1 + 1088))(a1) && ((*(*a1 + 1088))(a1), CCLogStream::shouldLog()))
    {
      AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE();
      if (P2PNANDataInterface)
      {
LABEL_21:
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE();
          }
        }

        if (AppleBCMWLANNANDataInterface::bringdownLink(P2PNANDataInterface))
        {
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE();
            }
          }
        }
      }
    }

    else if (P2PNANDataInterface)
    {
      goto LABEL_21;
    }
  }

LABEL_28:

  return AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal(a1, a2);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal(uint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if (!(*(*a1 + 1088))(a1) || ((*(*a1 + 1088))(a1), !CCLogStream::shouldLog()))
  {
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_141:
    (*(*a1 + 128))(a1, 1, 130);
    if (!*(*(a1 + 136) + 620))
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
        }
      }

      AppleBCMWLANCore::setConcurrencyState(*(*(a1 + 136) + 536), 4, 0);
      if (!*(*(a1 + 136) + 624))
      {
        return 0;
      }

      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
        }
      }

      if (AppleBCMWLANCore::isHostAssignedInterfaceIndex(*(*(a1 + 136) + 536)))
      {
        v80 = *(*(a1 + 136) + 552);
        InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
        AppleBCMWLANCommander::runVirtualIOVarSet(v80, InterfaceId, "interface_remove", &kNoTxPayload, 0, 0);
      }

      goto LABEL_229;
    }

    v156 = 0;
LABEL_143:
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
      }
    }

    AppleBCMWLANIO80211APSTAInterface::resetSoftAPLowPowerMode(a1);
    v70 = (a1 + 136);
    v69 = *(a1 + 136);
    if (*(v69 + 620))
    {
      AppleBCMWLANIO80211APSTAInterface::setPowerSaveState(a1, 0, 12);
      *(*(a1 + 136) + 14) = 0;
      v69 = *(a1 + 136);
    }

    if (*(v69 + 808) == 1)
    {
      AppleBCMWLANIO80211APSTAInterface::configureSoftAPPeerStats(a1, 0);
      v69 = *(a1 + 136);
    }

    *(v69 + 620) = 0;
    atomic_fetch_or((*(a1 + 136) + 664), 0x10000000u);
    *(*(a1 + 136) + 809) = 0;
    (*(*a1 + 568))(a1, 8, 0, 0, 0);
    AppleBCMWLANCore::postMessageInfra(*(*(a1 + 136) + 536), 8u, 0, 0);
    (*(*a1 + 568))(a1, 4, 0, 0, 0);
    v71 = *(a1 + 136);
    if (*v71)
    {
      LODWORD(v162[0]) = -1431633921;
      LODWORD(v158) = -1431655766;
      v157 = 0xAAAAAAAAAAAAAAAALL;
      v161 = 0xFFFFFFFF00000003;
      *v160 = &v157;
      *&v160[8] = 0xC000C000CLL;
      v72 = *(v71 + 552);
      v73 = IO80211SkywalkInterface::getInterfaceId(a1);
      v159[0] = &v161;
      v159[1] = 12;
      if (AppleBCMWLANCommander::runVirtualIOCtlSet(v72, v73, 201, v159, v160, 0))
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
          }
        }
      }

      v159[0] = 0;
      LODWORD(v159[1]) = 0;
      AppleBCMWLANIO80211APSTAInterface::postMessageForSTA(a1, 13, v159, 0xCu);
      v74 = *(a1 + 136);
      *(v74 + 184) = 0u;
      v74 = (v74 + 184);
      v74[13] = 0u;
      v74[14] = 0u;
      v74[11] = 0u;
      v74[12] = 0u;
      v74[9] = 0u;
      v74[10] = 0u;
      v74[7] = 0u;
      v74[8] = 0u;
      v74[5] = 0u;
      v74[6] = 0u;
      v74[3] = 0u;
      v74[4] = 0u;
      v74[1] = 0u;
      v74[2] = 0u;
      **(a1 + 136) = 0;
      v71 = *(a1 + 136);
    }

    AppleBCMWLANCore::setTXQueueEnabled(*(v71 + 536), 0);
    (*(**(*(a1 + 136) + 112) + 72))(*(*(a1 + 136) + 112));
    (*(**(*(a1 + 136) + 120) + 72))(*(*(a1 + 136) + 120));
    (*(*a1 + 1472))(a1, 1, 1);
    AppleBCMWLANCore::setConcurrencyState(*(*(a1 + 136) + 536), 4, 0);
    v75 = *(a1 + 136);
    *(v75 + 512) = 0;
    *(v75 + 480) = 0u;
    *(v75 + 496) = 0u;
    *(v75 + 448) = 0u;
    *(v75 + 464) = 0u;
    *(v75 + 432) = 0u;
    *(*(a1 + 136) + 160) = 0;
    *(*(a1 + 136) + 152) = 0;
    *(*(a1 + 136) + 144) = 0;
    v76 = *(a1 + 136);
    v156 = *(v76 + 616);
    v77 = *(v76 + 552);
    v78 = IO80211SkywalkInterface::getInterfaceId(a1);
    *v160 = &v156;
    *&v160[8] = 8;
    v79 = AppleBCMWLANCommander::runVirtualIOVarSet(v77, v78, "bss", v160, 0, 0);
    if (v79)
    {
      v6 = v79;
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
        }
      }

      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
        }
      }

LABEL_163:
      atomic_fetch_and((*v70 + 664), 0xEFFFFFFF);
      return v6;
    }

    ConfigManager = AppleBCMWLANCore::getConfigManager(*(*v70 + 536));
    if (AppleBCMWLANConfigManager::is80211NEnabledForAPMode(ConfigManager) && !AppleBCMWLANCore::isRestrictedCountry(*(*v70 + 536)))
    {
      *v160 = 0uLL;
      v83 = AppleBCMWLANCore::getConfigManager(*(*v70 + 536));
      if (AppleBCMWLANConfigManager::isEnhancedLocaleEnabled(v83))
      {
        LODWORD(v159[0]) = 1;
        *v160 = v159;
        *&v160[8] = 4;
        v84 = AppleBCMWLANCommander::runIOVarSet(*(*v70 + 552), "ccode_pr_2g", v160, 0, 0);
        if (v84)
        {
          v6 = v84;
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal(a1, v4, v159, v6);
            }
          }

          goto LABEL_163;
        }
      }

      v85 = AppleBCMWLANCore::getConfigManager(*(*v70 + 536));
      if (AppleBCMWLANConfigManager::isAutoCountryEnabled(v85))
      {
        LODWORD(v161) = 1;
        *v160 = &v161;
        *&v160[8] = 4;
        if (AppleBCMWLANCommander::runIOVarSet(*(*v70 + 552), "autocountry", v160, 0, 0))
        {
          v86 = *(*v70 + 552);
          v159[0] = &v161;
          v159[1] = 4;
          v87 = AppleBCMWLANCommander::runIOCtlSet(v86, 47, v159, 0, 0);
          if (v87)
          {
            v6 = v87;
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal(a1, v4, &v161, v6);
              }
            }

            goto LABEL_163;
          }
        }
      }
    }

    JoinAdapter = AppleBCMWLANCore::getJoinAdapter(*(*v70 + 536));
    isJoining = AppleBCMWLANJoinAdapter::isJoining(JoinAdapter);
    if ((AppleBCMWLANCore::isAssociated(*(*v70 + 536)) & 1) == 0 && (isJoining & 1) == 0)
    {
      AppleBCMWLANBGScanAdapter::enablePrivateMACForScans(*(*(a1 + 136) + 576));
      AppleBCMWLANBGScanAdapter::generateAndApplyNewPrivateMACForScans(*(*(a1 + 136) + 576));
      AppleBCMWLANPowerManager::configureSISOPowerSavePolicy(*(*(a1 + 136) + 584));
      AppleBCMWLANIO80211APSTAInterface::enableInfraFeaturesForSoftAP(a1);
      AppleBCMWLANCore::clearEventBit(*(*(a1 + 136) + 536), 5u);
    }

    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
      }
    }

    atomic_fetch_and((*v70 + 664), 0xEFFFFFFF);
    v90 = *v70;
    if (*(*v70 + 811) == 1)
    {
      LODWORD(v159[0]) = 0;
      v91 = *(v90 + 552);
      v92 = IO80211SkywalkInterface::getInterfaceId(a1);
      *v160 = v159;
      *&v160[8] = 4;
      v93 = AppleBCMWLANCommander::runVirtualIOVarSet(v91, v92, "wsec", v160, 0, 0);
      if (v93)
      {
        v6 = v93;
        if (!(*(*a1 + 1088))(a1))
        {
          return v6;
        }

        (*(*a1 + 1088))(a1);
        if (!CCLogStream::shouldLog())
        {
          return v6;
        }

        v66 = (*(*a1 + 1088))(a1);
        (*(**(*(a1 + 136) + 536) + 112))(*(*(a1 + 136) + 536), v6);
LABEL_197:
        CCLogStream::logCrit(v66, "[dk] %s@%d:  wsec (0x%lx) failed, error %s\n");
        return v6;
      }

      LODWORD(v161) = 0;
      v94 = *(*(a1 + 136) + 552);
      v95 = IO80211SkywalkInterface::getInterfaceId(a1);
      *v160 = &v161;
      *&v160[8] = 4;
      v96 = AppleBCMWLANCommander::runVirtualIOCtlSet(v94, v95, 165, v160, 0, 0);
      if (v96)
      {
        v6 = v96;
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
          }
        }

        return v6;
      }

      v97 = *(*(a1 + 136) + 552);
      v98 = IO80211SkywalkInterface::getInterfaceId(a1);
      v99 = AppleBCMWLANCommander::runVirtualIOCtlSet(v97, v98, 3, &kNoTxPayload, 0, 0);
      if (v99)
      {
        v6 = v99;
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
          }
        }

        return v6;
      }

      v100 = IOMallocZeroData();
      v101 = v100;
      if (v100)
      {
        v102 = 12;
      }

      else
      {
        v102 = 0;
      }

      *v100 = 0x1000100080001;
      *(v100 + 8) = 0;
      v103 = *(*(a1 + 136) + 552);
      v104 = IO80211SkywalkInterface::getInterfaceId(a1);
      *v160 = v101;
      *&v160[8] = v102;
      v105 = AppleBCMWLANCommander::runVirtualIOVarSet(v103, v104, "idauth", v160, 0, 0);
      if (v105)
      {
        v6 = v105;
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal(a1, v4, a1 + 136, v6);
          }
        }

        goto LABEL_217;
      }

      v106 = *(*(a1 + 136) + 552);
      v107 = IO80211SkywalkInterface::getInterfaceId(a1);
      v108 = AppleBCMWLANCommander::runVirtualIOCtlSet(v106, v107, 2, &kNoTxPayload, 0, 0);
      if (v108)
      {
        v6 = v108;
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
          }
        }

        goto LABEL_217;
      }

      IOFreeData();
    }

    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
      }
    }

    if (AppleBCMWLANCore::isHostAssignedInterfaceIndex(*(*v70 + 536)))
    {
      v109 = *(*(a1 + 136) + 552);
      v110 = IO80211SkywalkInterface::getInterfaceId(a1);
      v111 = AppleBCMWLANCommander::runVirtualIOVarSet(v109, v110, "interface_remove", &kNoTxPayload, 0, 0);
      if (v111)
      {
        v112 = v111;
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
          }
        }

        return (*(*a1 + 1336))(a1, v112);
      }
    }

LABEL_229:
    *(*(a1 + 136) + 624) = 0;
    IO80211SkywalkInterface::setInterfaceId(a1, 0xFFFFFFFF);
    return 0;
  }

  AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
  if (!a2)
  {
    goto LABEL_141;
  }

LABEL_4:
  v156 = 0;
  if (*(a2 + 732) >= 0x101u)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
      }
    }

    return 22;
  }

  v5 = *(a2 + 28);
  if (v5 >= 0x21)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
      }
    }

    return 22;
  }

  if (!v5)
  {
    goto LABEL_143;
  }

  v7 = (a1 + 136);
  v8 = AppleBCMWLANCore::getJoinAdapter(*(*(a1 + 136) + 536));
  v9 = AppleBCMWLANJoinAdapter::isJoining(v8);
  if ((AppleBCMWLANCore::isAssociated(*(*(a1 + 136) + 536)) & 1) == 0 && (v9 & 1) == 0)
  {
    AppleBCMWLANBGScanAdapter::disablePrivateMACForScans(*(*v7 + 576));
    AppleBCMWLANPowerManager::configureMIMOPowerSavePolicy(*(*v7 + 584));
  }

  AppleBCMWLANPowerManager::configurePowerSaveForSoftAP(*(*v7 + 584), 0);
  v10 = *v7;
  v11 = *(*v7 + 592);
  if (v11)
  {
    DynSARPwrBoostCur = AppleBCMWLANTxPowerManager::getDynSARPwrBoostCur(v11);
    v10 = *v7;
    if (DynSARPwrBoostCur)
    {
      AppleBCMWLANTxPowerManager::resetDynSARLqmRssi(*(v10 + 592));
      AppleBCMWLANTxPowerManager::configureDynSARPwrBoost(*(*v7 + 592), 0);
      v10 = *v7;
    }
  }

  if (*(v10 + 620) && *(v10 + 624))
  {
    v13 = *(v10 + 16);
    v14 = (*(*a1 + 1088))(a1);
    if (v13)
    {
      if (v14)
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
        }
      }

      return 0;
    }

    if (v14)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
      }
    }

    v15 = *(a1 + 136);
    v156 = *(v15 + 616);
    v16 = *(v15 + 552);
    v17 = IO80211SkywalkInterface::getInterfaceId(a1);
    *v160 = &v156;
    *&v160[8] = 8;
    v6 = AppleBCMWLANCommander::runVirtualIOVarSet(v16, v17, "bss", v160, 0, 0);
    v18 = (*(*a1 + 1088))(a1);
    if (v6)
    {
      if (v18)
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
        }
      }

      return v6;
    }

    if (v18)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
      }
    }

    if (AppleBCMWLANCore::isHostAssignedInterfaceIndex(*(*v7 + 536)))
    {
      v19 = *(*(a1 + 136) + 552);
      v20 = IO80211SkywalkInterface::getInterfaceId(a1);
      v21 = AppleBCMWLANCommander::runVirtualIOVarSet(v19, v20, "interface_remove", &kNoTxPayload, 0, 0);
      if (v21)
      {
        v22 = v21;
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
          }
        }

        return (*(*a1 + 1336))(a1, v22);
      }
    }

    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
      }
    }

    *(*(a1 + 136) + 620) = 0;
    *(*(a1 + 136) + 624) = 0;
    *(*(a1 + 136) + 809) = 0;
    IO80211SkywalkInterface::setInterfaceId(a1, 0xFFFFFFFF);
    v23 = *(a1 + 136);
    *(v23 + 512) = 0;
    *(v23 + 480) = 0u;
    *(v23 + 496) = 0u;
    *(v23 + 448) = 0u;
    *(v23 + 464) = 0u;
    *(v23 + 432) = 0u;
    *(*(a1 + 136) + 160) = 0;
    *(*(a1 + 136) + 152) = 0;
    *(*(a1 + 136) + 144) = 0;
  }

  AppleBCMWLANIO80211APSTAInterface::createChipInterface(a1);
  if (AppleBCMWLANCore::isHostAssignedInterfaceIndex(*(*(a1 + 136) + 536)))
  {
    IO80211SkywalkInterface::setInterfaceId(a1, 1u);
    AppleBCMWLANCore::setApStaSkywalkInterface(*(*(a1 + 136) + 536), 1u);
    (*(**(*(a1 + 136) + 720) + 112))(*(*(a1 + 136) + 720), 1);
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
      }
    }

    *(v159 + 4) = 65564;
    *(&v159[2] + 4) = 0x100000000;
    *(&v159[1] + 4) = 0;
    v162[0] = 0;
    v162[1] = 0;
    v161 = 0;
    v163 = 0;
    LODWORD(v159[0]) = 1835011;
    v24 = (*(*a1 + 1072))(a1);
    LOWORD(v159[2]) = WORD2(v24);
    LODWORD(v159[1]) = 10;
    HIDWORD(v159[1]) = v24;
    if (AppleBCMWLANCore::isApStaSDBMode(*(*(a1 + 136) + 536)))
    {
      HIBYTE(v159[0]) = 1;
      LODWORD(v159[1]) |= 4u;
    }

    v157 = &v161;
    v158 = 0x1C001C001CLL;
    v25 = *(*v7 + 552);
    *v160 = v159;
    *&v160[8] = 28;
    v26 = AppleBCMWLANCommander::runIOVarGet(v25, "interface_create", v160, &v157, 0);
    if (v26)
    {
      v22 = v26;
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
        }
      }

      return (*(*a1 + 1336))(a1, v22);
    }

    *(*(a1 + 136) + 624) = 1;
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        v130 = (*(*a1 + 1088))(a1);
        CCLogStream::logAlert(v130, "[dk] %s@%d:%s: Return bssCfgIdx %d, ifIdx %d, ifName %s\n", "setHostApModeInternal", 1380, "setHostApModeInternal", BYTE2(v162[0]), BYTE3(v162[0]), v162 + 4);
      }
    }

    *(*v7 + 616) = -1;
    memset(v160, 0, 36);
    v33 = *(a2 + 28);
    if (v33 <= 0x20)
    {
      *v160 = *(a2 + 28);
      memcpy(&v160[4], (a2 + 32), v33);
      v34 = (*v7 + 628);
      *(*v7 + 660) = 0;
      *v34 = 0u;
      v34[1] = 0u;
      v35 = *(a2 + 28);
      *(*v7 + 628) = v35;
      memcpy((*v7 + 632), (a2 + 32), v35);
    }

    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
      }
    }

    v36 = *(*(a1 + 136) + 552);
    v37 = IO80211SkywalkInterface::getInterfaceId(a1);
    v155[0] = v160;
    v155[1] = 36;
    v38 = AppleBCMWLANCommander::runVirtualIOVarSet(v36, v37, "ssid", v155, 0, 0);
    if (v38)
    {
      v6 = v38;
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
        }
      }

      return v6;
    }
  }

  else
  {
    memset(&v160[4], 0, 36);
    v28 = *v7;
    *v160 = *(*v7 + 616);
    v29 = *(a2 + 28);
    if (v29 <= 0x20)
    {
      *&v160[4] = *(a2 + 28);
      memcpy(&v160[8], (a2 + 32), v29);
      *(v28 + 628) = 0u;
      *(v28 + 644) = 0u;
      *(v28 + 660) = 0;
      v30 = *(a2 + 28);
      *(*v7 + 628) = v30;
      memcpy((*v7 + 632), (a2 + 32), v30);
    }

    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
      }
    }

    v31 = *(*v7 + 552);
    v159[0] = v160;
    v159[1] = 40;
    v32 = AppleBCMWLANCommander::runIOVarSet(v31, "bsscfg:ssid", v159, 0, 0);
    if (v32)
    {
      v6 = v32;
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
        }
      }

      return v6;
    }

    WORD2(v161) = -21846;
    LODWORD(v161) = -1431655766;
    v39 = (*(*a1 + 1072))(a1);
    LODWORD(v161) = v39;
    WORD2(v161) = WORD2(v39);
    if (IO80211SkywalkInterface::getInterfaceId(a1) == -1)
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
        }
      }

      v6 = AppleBCMWLANCore::waitForDriverEvent(*(*v7 + 536), 3, 5);
      if (v6)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
          }
        }
      }

      if (IO80211SkywalkInterface::getInterfaceId(a1) == -1)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
          }
        }

        return v6;
      }
    }

    v40 = *(*(a1 + 136) + 552);
    v41 = IO80211SkywalkInterface::getInterfaceId(a1);
    v159[0] = &v161;
    v159[1] = 6;
    v42 = AppleBCMWLANCommander::runVirtualIOVarSet(v40, v41, "cur_etheraddr", v159, 0, 0);
    if (v42)
    {
      v6 = v42;
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
        }
      }

      return v6;
    }
  }

  v43 = AppleBCMWLANCore::getConfigManager(*(*(a1 + 136) + 536));
  LODWORD(v157) = AppleBCMWLANConfigManager::is80211NEnabledForAPMode(v43);
  v44 = *(*(a1 + 136) + 552);
  v45 = IO80211SkywalkInterface::getInterfaceId(a1);
  *v160 = &v157;
  *&v160[8] = 4;
  if (AppleBCMWLANCommander::runVirtualIOVarSet(v44, v45, "bssnmode", v160, 0, 0))
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
      }
    }
  }

  if (v157 && !AppleBCMWLANCore::isRestrictedCountry(*(*v7 + 536)))
  {
    *v160 = 0uLL;
    v46 = AppleBCMWLANCore::getConfigManager(*(*v7 + 536));
    if (AppleBCMWLANConfigManager::isAutoCountryEnabled(v46))
    {
      LODWORD(v161) = 0;
      *v160 = &v161;
      *&v160[8] = 4;
      if (AppleBCMWLANCommander::runIOVarSet(*(*v7 + 552), "autocountry", v160, 0, 0))
      {
        v47 = *(*v7 + 552);
        v159[0] = &v161;
        v159[1] = 4;
        v48 = AppleBCMWLANCommander::runIOCtlSet(v47, 47, v159, 0, 0);
        if (v48)
        {
          v6 = v48;
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal(a1, v4, &v161, v6);
            }
          }

          return v6;
        }
      }
    }

    v49 = AppleBCMWLANCore::getConfigManager(*(*v7 + 536));
    if (AppleBCMWLANConfigManager::isEnhancedLocaleEnabled(v49))
    {
      LODWORD(v159[0]) = 0;
      *v160 = v159;
      *&v160[8] = 4;
      v50 = AppleBCMWLANCommander::runIOVarSet(*(*v7 + 552), "ccode_pr_2g", v160, 0, 0);
      if (v50)
      {
        v6 = v50;
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal(a1, v4, v159, v6);
          }
        }

        return v6;
      }
    }
  }

  LODWORD(v155[0]) = 1;
  v51 = *(*(a1 + 136) + 552);
  v52 = IO80211SkywalkInterface::getInterfaceId(a1);
  *v160 = v155;
  *&v160[8] = 4;
  v53 = AppleBCMWLANCommander::runVirtualIOVarSet(v51, v52, "ap_isolate", v160, 0, 0);
  if (v53)
  {
    v6 = v53;
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
      }
    }

    return v6;
  }

  v54 = *(a2 + 20);
  v154 = -1431655766;
  if (IOParseBootArgNumber("wlan.ap.channel", &v154, 4))
  {
    ClassNameHelper = getClassNameHelper(a1);
    IOLog("%s::%s(): Got channel override 0x%lX\n", ClassNameHelper, "setHostApModeInternal", v154);
    v54 = v154;
    *(a2 + 20) = v154;
  }

  if (v54)
  {
    v56 = v54;
  }

  else
  {
    v56 = 11;
  }

  v159[0] = 1;
  v159[1] = __PAIR64__(*(a2 + 24), v56);
  v57 = (*(*a1 + 1760))(a1, v159);
  if (v57)
  {
    v6 = v57;
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        v58 = (*(*a1 + 1088))(a1);
        (*(**(*(a1 + 136) + 536) + 112))(*(*(a1 + 136) + 536), v6);
        CCLogStream::logCrit(v58, "[dk] %s@%d: WLC_SET_CHANNEL(%lu) failed, error %s (channel=%ld) \n");
      }
    }

    return v6;
  }

  v153 = (*(a2 + 24) >> 4) & 1;
  v59 = *(*(a1 + 136) + 552);
  v60 = IO80211SkywalkInterface::getInterfaceId(a1);
  *v160 = &v153;
  *&v160[8] = 4;
  v6 = AppleBCMWLANCommander::runVirtualIOVarSet(v59, v60, "bss_rateset", v160, 0, 0);
  if (v6)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
      }
    }
  }

  v61 = *v7;
  v62 = *(a2 + 12);
  if (*(*v7 + 811) == 1)
  {
    if (v62 == 8 || v62 == 4104 || v62 == 4096)
    {
      v152 = 4;
      v63 = *(v61 + 552);
      v64 = IO80211SkywalkInterface::getInterfaceId(a1);
      *v160 = &v152;
      *&v160[8] = 4;
      v65 = AppleBCMWLANCommander::runVirtualIOVarSet(v63, v64, "wsec", v160, 0, 0);
      if (v65)
      {
        v6 = v65;
        if (!(*(*a1 + 1088))(a1))
        {
          return v6;
        }

        (*(*a1 + 1088))(a1);
        if (!CCLogStream::shouldLog())
        {
          return v6;
        }

        v66 = (*(*a1 + 1088))(a1);
        (*(**(*(a1 + 136) + 536) + 112))(*(*(a1 + 136) + 536), v6);
        goto LABEL_197;
      }

      *&v160[256] = 0xAAAAAAAAAAAAAAAALL;
      *&v116 = 0xAAAAAAAAAAAAAAAALL;
      *(&v116 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v160[224] = v116;
      *&v160[240] = v116;
      *&v160[192] = v116;
      *&v160[208] = v116;
      *&v160[160] = v116;
      *&v160[176] = v116;
      *&v160[128] = v116;
      *&v160[144] = v116;
      *&v160[96] = v116;
      *&v160[112] = v116;
      *&v160[64] = v116;
      *&v160[80] = v116;
      *&v160[48] = v116;
      *&v160[16] = v116;
      *&v160[32] = v116;
      v117 = *(a2 + 68);
      *v160 = v116;
      if ((v117 - 65) <= 0xFFFFFFBF)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
          }
        }

        return 22;
      }

      memset(&v160[4], 0, 260);
      *v160 = v117;
      *&v160[2] = 1;
      memcpy(&v160[4], (a2 + 80), v117);
      v118 = *(*(a1 + 136) + 552);
      v119 = IO80211SkywalkInterface::getInterfaceId(a1);
      v161 = v160;
      v162[0] = 264;
      v120 = AppleBCMWLANCommander::runVirtualIOCtlSet(v118, v119, 268, &v161, 0, 0);
      if (v120)
      {
        v6 = v120;
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
          }
        }

        return v6;
      }

      v121 = *(a2 + 12);
      if (v121 == 4104)
      {
        v151 = 262272;
        v122 = 1;
      }

      else if (v121 == 4096)
      {
        v151 = 0x40000;
        v122 = 2;
      }

      else
      {
        v122 = 0;
        v151 = 128;
      }

      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
        }
      }

      v123 = *(*(a1 + 136) + 552);
      v124 = IO80211SkywalkInterface::getInterfaceId(a1);
      v161 = &v151;
      v162[0] = 4;
      v125 = AppleBCMWLANCommander::runVirtualIOCtlSet(v123, v124, 165, &v161, 0, 0);
      if (v125)
      {
        v6 = v125;
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
          }
        }

        return v6;
      }

      v126 = AppleBCMWLANIO80211APSTAInterface::configureManagementFrameProtectionForSoftAP(a1, v122);
      if (v126)
      {
        v6 = v126;
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
          }
        }

        return v6;
      }

      v127 = *(*(a1 + 136) + 552);
      v128 = IO80211SkywalkInterface::getInterfaceId(a1);
      v129 = AppleBCMWLANCommander::runVirtualIOCtlSet(v127, v128, 3, &kNoTxPayload, 0, 0);
      if (v129)
      {
        v6 = v129;
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
          }
        }

        return v6;
      }

      v131 = IOMallocZeroData();
      v132 = v131;
      if (v131)
      {
        v133 = 52;
      }

      else
      {
        v133 = 0;
      }

      *v131 = 0x1000100300001;
      *(v131 + 8) = 1;
      *(v131 + 12) = 0x57E4000040002;
      *(v131 + 20) = 131075;
      *(v131 + 24) = 3;
      *(v131 + 28) = 0x12C00040004;
      *(v131 + 36) = 131077;
      *(v131 + 40) = 5;
      *(v131 + 44) = 262150;
      *(v131 + 48) = 3000;
      v134 = *(*(a1 + 136) + 552);
      v135 = IO80211SkywalkInterface::getInterfaceId(a1);
      v161 = v132;
      v162[0] = v133;
      v136 = AppleBCMWLANCommander::runVirtualIOVarSet(v134, v135, "idauth", &v161, 0, 0);
      if (v136)
      {
        v6 = v136;
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal(a1, v4, a1 + 136, v6);
          }
        }

LABEL_217:
        IOFreeData();
        return v6;
      }

      v137 = *(*(a1 + 136) + 552);
      v138 = IO80211SkywalkInterface::getInterfaceId(a1);
      v6 = AppleBCMWLANCommander::runVirtualIOCtlSet(v137, v138, 2, &kNoTxPayload, 0, 0);
      if (v6)
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
          }
        }

        goto LABEL_217;
      }

      IOFreeData();
    }

LABEL_277:
    if (*(a2 + 12))
    {
      v139 = *v7;
    }

    else
    {
      v139 = *v7;
      if (!*(a2 + 72))
      {
        goto LABEL_282;
      }
    }

    if ((*(v139 + 811) & 1) == 0 && *(v139 + 810) != 1)
    {
LABEL_290:
      v143 = AppleBCMWLANCore::getConfigManager(*(*(a1 + 136) + 536));
      *(*(a1 + 136) + 8) = AppleBCMWLANConfigManager::getMaxSTAs(v143);
      AppleBCMWLANIO80211APSTAInterface::setMaxAssoc(a1, *(*(a1 + 136) + 8));
      (*(*a1 + 568))(a1, 87, *(a1 + 136) + 8, 4, 0);
      v144 = *(a2 + 732);
      if (v144)
      {
        AppleBCMWLANIO80211APSTAInterface::programVendorIEList(a1, (a2 + 736), v144);
      }

      else
      {
        AppleBCMWLANIO80211APSTAInterface::programAppleVendorIE(a1);
      }

      *(*(a1 + 136) + 620) = 1;
      *(*(a1 + 136) + 524) = 0;
      *(*(a1 + 136) + 136) = 0;
      AppleBCMWLANIO80211APSTAInterface::handleAPStatsUpdates(a1, *(*(a1 + 136) + 112));
      (*(**(*(a1 + 136) + 120) + 56))(*(*(a1 + 136) + 120), 1000);
      v145 = *(a2 + 4);
      if ((v145 & 0x100) != 0)
      {
        v146 = 100;
      }

      else
      {
        v146 = 300;
      }

      *(*(a1 + 136) + 20) = v146;
      if ((v145 & 0x200) != 0)
      {
        LODWORD(v161) = 1;
        v147 = *(*(a1 + 136) + 552);
        v148 = IO80211SkywalkInterface::getInterfaceId(a1);
        *v160 = &v161;
        *&v160[8] = 4;
        v6 = AppleBCMWLANCommander::runVirtualIOVarSet(v147, v148, "closednet", v160, 0, 0);
        v149 = (*(*a1 + 1088))(a1);
        if (v6)
        {
          if (v149)
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal(a1, v4, v6);
            }
          }
        }

        else if (v149)
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
          }
        }
      }

      AppleBCMWLANIO80211APSTAInterface::initSoftAPParameters(a1);
      if (AppleBCMWLANCore::isSaeH2eEnabled(*(*(a1 + 136) + 536)) && (*(a2 + 13) & 0x10) != 0)
      {
        AppleBCMWLANIO80211APSTAInterface::setRSNXE(a1);
      }

      (*(*a1 + 128))(a1, 3, 128);
      AppleBCMWLANCore::setConcurrencyState(*(*(a1 + 136) + 536), 4, 1);
      v150 = *(a1 + 136);
      if ((*(v150 + 811) & 1) != 0 || (*(v150 + 810) & 1) != 0 || !*(a2 + 12))
      {
        AppleBCMWLANIO80211APSTAInterface::enableAPInterface(a1);
      }

      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
        }
      }

      return v6;
    }

LABEL_282:
    LODWORD(v156) = *(v139 + 616);
    HIDWORD(v156) = 1;
    v140 = *(v139 + 552);
    v141 = IO80211SkywalkInterface::getInterfaceId(a1);
    *v160 = &v156;
    *&v160[8] = 8;
    v6 = AppleBCMWLANCommander::runVirtualIOVarSet(v140, v141, "bss", v160, 0, 0);
    v142 = (*(*a1 + 1088))(a1);
    if (v6)
    {
      if (v142)
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
        }
      }

      return v6;
    }

    if (v142)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
      }
    }

    v6 = 0;
    goto LABEL_290;
  }

  if ((v62 | 8) != 0x1008)
  {
    goto LABEL_277;
  }

  *&v160[256] = 0xAAAAAAAAAAAAAAAALL;
  *&v67 = 0xAAAAAAAAAAAAAAAALL;
  *(&v67 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v160[224] = v67;
  *&v160[240] = v67;
  *&v160[192] = v67;
  *&v160[208] = v67;
  *&v160[160] = v67;
  *&v160[176] = v67;
  *&v160[128] = v67;
  *&v160[144] = v67;
  *&v160[96] = v67;
  *&v160[112] = v67;
  *&v160[64] = v67;
  *&v160[80] = v67;
  *&v160[48] = v67;
  *&v160[16] = v67;
  *&v160[32] = v67;
  v68 = *(a2 + 68);
  *v160 = v67;
  if ((v68 - 65) <= 0xFFFFFFBF)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
      }
    }

    return 22;
  }

  memset(&v160[4], 0, 260);
  *v160 = v68;
  *&v160[2] = 1;
  memcpy(&v160[4], (a2 + 80), v68);
  v114 = *(v61 + 552);
  v115 = IO80211SkywalkInterface::getInterfaceId(a1);
  v161 = v160;
  v162[0] = 264;
  v6 = AppleBCMWLANCommander::runVirtualIOCtlSet(v114, v115, 268, &v161, 0, 0);
  if (!v6)
  {
    goto LABEL_277;
  }

  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal();
    }
  }

  return v6;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE((a1 - 112), a2);
}

{
  return AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE((a1 - 128), a2);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::resetSoftAPLowPowerMode(AppleBCMWLANIO80211APSTAInterface *this)
{
  AppleBCMWLANIO80211APSTAInterface::deleteIPv4PktFilters(this);
  AppleBCMWLANIO80211APSTAInterface::configureARPOffload(this, 0);
  *(*(this + 17) + 172) = 0;
  *(*(this + 17) + 180) = 0;
  result = (*(*this + 1088))(this);
  if (result)
  {
    (*(*this + 1088))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANIO80211APSTAInterface::resetSoftAPLowPowerMode();
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::enableInfraFeaturesForSoftAP(AppleBCMWLANIO80211APSTAInterface *this)
{
  AppleBCMWLANCore::configureManagementFrameProtection(*(*(this + 17) + 536), 1);
  AppleBCMWLANIO80211APSTAInterface::configureMPDUSize(this, -1);
  AppleBCMWLANPowerManager::configurePowerSaveForSoftAP(*(*(this + 17) + 584), 1);
  AppleBCMWLANTxPowerManager::resetDynSARLqmRssi(*(*(this + 17) + 592));
  v2 = *(this + 17);
  v3 = *(v2 + 592);
  v4 = *(AppleBCMWLANConfigManager::getDynSARPwrBoostCtl(*(v2 + 608)) + 3);

  return AppleBCMWLANTxPowerManager::configureDynSARPwrBoost(v3, v4);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureManagementFrameProtectionForSoftAP(unint64_t this, int a2)
{
  v9 = a2;
  if (!AppleBCMWLANCore::checkForPMFSupport(*(*(this + 136) + 536)))
  {
    return 0;
  }

  v3 = *(*(this + 136) + 552);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
  v8[0] = &v9;
  v8[1] = 4;
  v5 = AppleBCMWLANCommander::runVirtualIOVarSet(v3, InterfaceId, "mfp", v8, 0, 0);
  v6 = (*(*this + 1088))(this);
  if (!v5)
  {
    if (v6)
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::configureManagementFrameProtectionForSoftAP();
      }
    }

    return 0;
  }

  if (v6)
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::configureManagementFrameProtectionForSoftAP(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v9, v5);
    }
  }

  return v5;
}

IO80211SkywalkInterface *AppleBCMWLANIO80211APSTAInterface::setMaxAssoc(IO80211SkywalkInterface *this, int a2)
{
  v2 = *(this + 17);
  if (v2[1] != a2)
  {
    v7 = *v2 + a2;
    if (v7 <= v2[2])
    {
      v3 = this;
      v2[1] = a2;
      v4 = *(*(this + 17) + 552);
      InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
      v6[0] = &v7;
      v6[1] = 4;
      this = AppleBCMWLANCommander::runVirtualIOVarSet(v4, InterfaceId, "maxassoc", v6, 0, 0);
      if (this)
      {
        this = (*(*v3 + 1088))(v3);
        if (this)
        {
          (*(*v3 + 1088))(v3);
          this = CCLogStream::shouldLog();
          if (this)
          {
            return AppleBCMWLANIO80211APSTAInterface::setMaxAssoc();
          }
        }
      }
    }
  }

  return this;
}

IO80211SkywalkInterface *AppleBCMWLANIO80211APSTAInterface::programVendorIEList(IO80211SkywalkInterface *this, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 >= 6)
  {
    v3 = a3;
    v5 = this;
    while (1)
    {
      v6 = a2[1];
      if (v3 - 2 < v6)
      {
        break;
      }

      v7 = IOMallocZeroData();
      if (!v7)
      {
        this = (*(*v5 + 1088))(v5);
        if (this)
        {
          (*(*v5 + 1088))(v5);
          this = CCLogStream::shouldLog();
          if (this)
          {
            return AppleBCMWLANIO80211APSTAInterface::programVendorIEList();
          }
        }

        return this;
      }

      v8 = v7;
      *v7 = xmmword_1003AD320;
      *(v7 + 20) = *a2;
      memcpy((v7 + 21), a2 + 2, v6);
      *(v8 + 16) = v6 + 1;
      v9 = *(*(v5 + 17) + 536);
      InterfaceId = IO80211SkywalkInterface::getInterfaceId(v5);
      if (AppleBCMWLANCore::setVendorIE(v9, InterfaceId, v8) && (*(*v5 + 1088))(v5))
      {
        (*(*v5 + 1088))(v5);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::programVendorIEList();
        }
      }

      v3 -= v6 + 2;
      a2 += v6 + 2;
      this = IOFreeData();
      if (v3 <= 5)
      {
        return this;
      }
    }

    this = (*(*v5 + 1088))(v5);
    if (this)
    {
      (*(*v5 + 1088))(v5);
      this = CCLogStream::shouldLog();
      if (this)
      {
        return AppleBCMWLANIO80211APSTAInterface::programVendorIEList();
      }
    }
  }

  return this;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::programAppleVendorIE(uint64_t this)
{
  MaxCmdTxPayload = AppleBCMWLANCommander::getMaxCmdTxPayload(*(*(this + 136) + 552));
  MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(*(*(this + 136) + 552));
  v4 = *(*(this + 136) + 552);
  if (MaxCmdTxPayload >= MaxCmdRxPayload)
  {
    v5 = AppleBCMWLANCommander::getMaxCmdRxPayload(v4);
  }

  else
  {
    v5 = AppleBCMWLANCommander::getMaxCmdTxPayload(v4);
  }

  v6 = v5;
  v7 = v5 - 8;
  memset(__src, 0, 73);
  v8 = IOMallocZeroData();
  v9 = IOMallocZeroData();
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      v11 = __CFADD__(v6 - 9, v9);
      if (v7 >= 1)
      {
        v12 = v6 - 9 + v9;
      }

      else
      {
        v12 = 0;
      }

      v13 = v7 | (v7 << 32) | 0x40000;
      if (v7)
      {
        v14 = v9;
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      v52[0] = v14;
      v52[1] = v13;
      v15 = *(*(this + 136) + 552);
      InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
      if (AppleBCMWLANCommander::runVirtualIOVarGet(v15, InterfaceId, "vndr_ie", &kNoTxPayload, v52, 0))
      {
        if ((*(*this + 1088))(this))
        {
          (*(*this + 1088))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::programAppleVendorIE();
          }
        }
      }

      v17 = *v10;
      if (*v10 >= 1)
      {
        if (v7 >= 1 && !v11)
        {
          v20 = 0;
          v21 = v10 + 1;
          while (1)
          {
            v22 = v21 + 1;
            if ((v21 + 1) < v10 || v12 < v22)
            {
              break;
            }

            v25 = v21 + 5;
            v24 = *(v21 + 5);
            v26 = v22 + v24 + 2;
            v27 = v22 + v24 + 4;
            if (v27 < v10 || v26 >= 0xFFFFFFFFFFFFFFFELL || v27 > v12 || v10 > v26 || v12 < v26)
            {
              if ((*(*this + 1088))(this))
              {
                (*(*this + 1088))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANIO80211APSTAInterface::programAppleVendorIE(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v25, v7);
                }
              }

              goto LABEL_91;
            }

            if (*(v21 + 3) == 5888 && *(v21 + 8) == 242)
            {
              *v8 = 0x1006C6564;
              memmove((v8 + 8), v21, *(v21 + 5) + 6);
              v33 = *(*(this + 136) + 552);
              v34 = IO80211SkywalkInterface::getInterfaceId(this);
              v50 = v8;
              v51 = 82;
              if (AppleBCMWLANCommander::runVirtualIOVarSet(v33, v34, "vndr_ie", &v50, 0, 0))
              {
                if ((*(*this + 1088))(this))
                {
                  (*(*this + 1088))(this);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANIO80211APSTAInterface::programAppleVendorIE();
                  }
                }

                goto LABEL_91;
              }

              v17 = *v10;
            }

            ++v20;
            v21 = v26;
            if (v20 >= v17)
            {
              goto LABEL_59;
            }
          }
        }

        if ((*(*this + 1088))(this))
        {
          (*(*this + 1088))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::programAppleVendorIE();
          }
        }

        goto LABEL_91;
      }

LABEL_59:
      *v8 = 0x100646461;
      *(v8 + 8) = 7;
      v49 = 0;
      if (AppleBCMWLANCore::isSdbChip(*(*(this + 136) + 536), &v49))
      {
        if (AppleBCMWLANCore::isConcurrencyOpModeSet(*(*(this + 136) + 536), 1))
        {
          v35 = 1;
        }

        else
        {
          v35 = 3;
        }
      }

      else
      {
        v35 = 1;
      }

      LODWORD(__src[0]) = 385878749;
      BYTE4(__src[0]) = -14;
      *(__src + 5) = 50397446;
      BYTE9(__src[0]) = v35;
      memset(__src + 10, 0, 63);
      *(v8 + 12) = *&__src[0];
      *(v8 + 20) = DWORD2(__src[0]);
      IO80211Hexdump();
      v36 = *(*(this + 136) + 552);
      v37 = IO80211SkywalkInterface::getInterfaceId(this);
      v50 = v8;
      v51 = 24;
      if (AppleBCMWLANCommander::runVirtualIOVarSet(v36, v37, "vndr_ie", &v50, 0, 0))
      {
        if ((*(*this + 1088))(this))
        {
          (*(*this + 1088))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::programAppleVendorIE();
          }
        }
      }

      isConcurrencyEnabled = AppleBCMWLANCore::isConcurrencyEnabled(*(*(this + 136) + 536));
      v39 = *(this + 136);
      if (isConcurrencyEnabled && (v40 = *(v39 + 47), *(v39 + 46)))
      {
        v43 = *(v39 + 47);
        BYTE11(__src[0]) = *(v39 + 46);
        *(__src + 9) = *(v39 + 44);
        memcpy((__src | 0xC), (v39 + 48), v40);
        WORD3(__src[0]) = 259;
        BYTE8(__src[0]) = v43 + 3;
        v42 = v43 + 6;
        v41 = *(v39 + 80);
        if (!v41)
        {
          goto LABEL_74;
        }
      }

      else
      {
        v41 = *(v39 + 80);
        if (!v41)
        {
          goto LABEL_91;
        }

        v42 = 0;
      }

      v44 = __src + v42 + 6;
      v44[3] = v41;
      *(v44 + 4) = *(v39 + 81);
      *v44 = 260;
      v44[2] = 18;
      v42 += 21;
LABEL_74:
      BYTE1(__src[0]) = v42 + 4;
      memcpy((v8 + 12), __src, (v42 + 6));
      v45 = v42 + 18;
      if ((v42 + 18) < 0x53u)
      {
        v46 = *(*(this + 136) + 552);
        v47 = IO80211SkywalkInterface::getInterfaceId(this);
        if (v45)
        {
          v48 = v8;
        }

        else
        {
          v48 = 0;
        }

        v50 = v48;
        v51 = v45;
        if (AppleBCMWLANCommander::runVirtualIOVarSet(v46, v47, "vndr_ie", &v50, 0, 0))
        {
          if ((*(*this + 1088))(this))
          {
            (*(*this + 1088))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIO80211APSTAInterface::programAppleVendorIE();
            }
          }
        }
      }

      else if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::programAppleVendorIE();
        }
      }

      goto LABEL_91;
    }

    v18 = 1;
  }

  else
  {
    v18 = v9 == 0;
  }

  result = (*(*this + 1088))(this);
  if (result)
  {
    (*(*this + 1088))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = AppleBCMWLANIO80211APSTAInterface::programAppleVendorIE();
    }
  }

  if (v18)
  {
    if (!v8)
    {
      return result;
    }

    return IOFreeData();
  }

LABEL_91:
  result = IOFreeData();
  if (!v8)
  {
    return result;
  }

  return IOFreeData();
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setRSNXE(IO80211SkywalkInterface *this)
{
  v14 = 0;
  v13 = 500;
  if (AppleBCMWLANCore::isSaeH2eEnabled(*(*(this + 17) + 536)))
  {
    v14 = 32;
  }

  WorkQueue = IO80211SkywalkInterface::getWorkQueue(this);
  if ((*(*WorkQueue + 136))(WorkQueue))
  {
    *&v11 = this;
    *(&v11 + 1) = AppleBCMWLANIO80211APSTAInterface::handleSetRSNXEAsyncCallBack;
    v12 = 0;
    v3 = *(*(this + 17) + 552);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    v10[0] = &v13;
    v10[1] = 3;
    v5 = AppleBCMWLANCommander::sendVirtualIOVarSet(v3, InterfaceId, "rsnxe", v10, kNoRxExpected, &v11, 0);
  }

  else
  {
    v6 = *(*(this + 17) + 552);
    v7 = IO80211SkywalkInterface::getInterfaceId(this);
    *&v11 = &v13;
    *(&v11 + 1) = 3;
    v5 = AppleBCMWLANCommander::runVirtualIOVarSet(v6, v7, "rsnxe", &v11, 0, 0);
  }

  v8 = v5;
  if (v5)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setRSNXE();
      }
    }
  }

  return v8;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::enableAPInterface(AppleBCMWLANIO80211APSTAInterface *this)
{
  AppleBCMWLANIO80211APSTAInterface::disableInfraFeaturesForSoftAP(this);
  AppleBCMWLANCore::setTXQueueEnabled(*(*(this + 17) + 536), 1);
  (*(*this + 1472))(this, 2, 1);
  v2 = (*(*this + 160))(this);
  v3 = v2;
  if (v2)
  {
    v4 = strlen(v2);
    if (v4 <= 0x10)
    {
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  AppleBCMWLANIO80211APSTAInterface::configureKeepAliveProbing(this);
  AppleBCMWLANCore::postMessageInfra(*(*(this + 17) + 536), 0x1Eu, v3, v5);
  (*(*this + 568))(this, 4, 0, 0, 0);
  v6 = *(*(this + 17) + 536);

  return AppleBCMWLANCore::setEventBit(v6);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE_HIDDEN(uint64_t this, uint64_t a2)
{
  v3 = *(this + 136);
  if (*(v3 + 620))
  {
    if (a2 && (v11 = *(a2 + 4), v11 <= 1))
    {
      v6 = *(v3 + 552);
      InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
      v10[0] = &v11;
      v10[1] = 4;
      v4 = AppleBCMWLANCommander::runVirtualIOVarSet(v6, InterfaceId, "closednet", v10, 0, 0);
      v8 = (*(*this + 1088))(this);
      if (v4)
      {
        if (v8)
        {
          (*(*this + 1088))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE_HIDDEN(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v4);
          }
        }
      }

      else
      {
        if (v8)
        {
          (*(*this + 1088))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE_HIDDEN();
          }
        }

        *(*(this + 136) + 13) = v11 != 0;
        v9 = *(this + 136);
        if (*(v9 + 13))
        {
          AppleBCMWLANIO80211APSTAInterface::enableSoftAPPowerSave(this, 8);
        }

        else
        {
          if (*(v9 + 620))
          {
            AppleBCMWLANIO80211APSTAInterface::setPowerSaveState(this, 0, 9);
            *(*(this + 136) + 14) = 0;
          }

          AppleBCMWLANIO80211APSTAInterface::holdSoftAPPowerAssertion(this);
        }

        return 0;
      }
    }

    else
    {
      return 22;
    }
  }

  else
  {
    if ((*(*this + 1088))(this, a2))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE_HIDDEN();
      }
    }

    return 6;
  }

  return v4;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::holdSoftAPPowerAssertion(void *this)
{
  v3 = 1;
  *(this[17] + 12) = 1;
  AppleBCMWLANCore::postMessageInfra(*(this[17] + 536), 0x8Du, &v3, 4uLL);
  result = (*(*this + 1088))(this);
  if (result)
  {
    (*(*this + 1088))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANIO80211APSTAInterface::holdSoftAPPowerAssertion();
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::enableSoftAPPowerSave(AppleBCMWLANIO80211APSTAInterface *a1, uint64_t a2)
{
  v5 = 0;
  result = AppleBCMWLANCore::isSdbChip(*(*(a1 + 17) + 536), &v5);
  if (result)
  {
    *(*(a1 + 17) + 14) = 1;
    if (*(*(a1 + 17) + 620))
    {
      return AppleBCMWLANIO80211APSTAInterface::setPowerSaveState(a1, 1, a2);
    }
  }

  else
  {
    result = (*(*a1 + 1088))(a1);
    if (result)
    {
      (*(*a1 + 1088))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANIO80211APSTAInterface::enableSoftAPPowerSave();
      }
    }
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE_HIDDEN(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE_HIDDEN(a1 - 112, a2);
}

{
  return AppleBCMWLANIO80211APSTAInterface::setHOST_AP_MODE_HIDDEN(a1 - 128, a2);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setSSID(uint64_t a1)
{
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::setSSID();
    }
  }

  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::setSSID(uint64_t a1)
{
  AppleBCMWLANIO80211APSTAInterface::setSSID(a1 - 112);
  return 0;
}

{
  AppleBCMWLANIO80211APSTAInterface::setSSID(a1 - 128);
  return 0;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setCHANNEL(void *a1, uint64_t a2)
{
  if (!a2)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setCHANNEL();
      }
    }

    return 22;
  }

  SupportedMaxBW = AppleBCMWLANCore::getSupportedMaxBW(*(a1[17] + 536));
  v4 = *(a2 + 8);
  if (v4 >= 0x100)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setCHANNEL();
      }
    }

    return 22;
  }

  v7 = *(a2 + 12);
  if ((v7 & 0x400) != 0)
  {
    v9 = 4;
  }

  else if ((v7 & 4) != 0)
  {
    v9 = 3;
  }

  else
  {
    if ((v7 & 2) == 0)
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          v8 = (*(*a1 + 1088))(a1);
          CCLogStream::logCrit(v8, "[dk] %s@%d: Setting SoftAP to set chanspecs has invalid BW, flags 0x%x, channel %d, bw is out of range \n", "setCHANNEL", 1886, v7, v4);
        }
      }

      goto LABEL_21;
    }

    v9 = 2;
  }

  SupportedMaxBW = v9;
LABEL_21:
  ChanSpec = AppleBCMWLANCore::getChanSpec(*(a1[17] + 536), v4, &SupportedMaxBW);
  if (ChanSpec)
  {
    v10 = *(a1[17] + 552);
    v15[0] = &ChanSpec;
    v15[1] = 4;
    v5 = AppleBCMWLANCommander::runIOVarSet(v10, "chanspec", v15, 0, 0);
    v11 = (*(*a1 + 1088))(a1);
    if (v5)
    {
      if (v11)
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          v12 = (*(*a1 + 1088))(a1);
          (*(*a1 + 920))(a1, v5);
          CCLogStream::logCrit(v12, "[dk] %s@%d: Setting SoftAP Failed to set channel %d  chanspecs 0x%x iovar,  error %s\n");
        }
      }
    }

    else
    {
      if (v11)
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          v14 = (*(*a1 + 1088))(a1);
          CCLogStream::logNotice(v14, "[dk] %s@%d: Setting SoftAP channel %d chanspecs 0x%x \n", "setCHANNEL", 1904, v4, ChanSpec);
        }
      }

      return 0;
    }
  }

  else
  {
    v5 = 3758097090;
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        v13 = (*(*a1 + 1088))(a1);
        CCLogStream::logCrit(v13, "[dk] %s@%d: Setting SoftAP Failed  to set channel %d, bw 0x%x, invalid setting flags 0x%x failed to convert to chanspec 0x%x \n");
      }
    }
  }

  return v5;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::setCHANNEL(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANIO80211APSTAInterface::setCHANNEL((a1 - 112), a2);
}

{
  return AppleBCMWLANIO80211APSTAInterface::setCHANNEL((a1 - 128), a2);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setSOFTAP_TRIGGER_CSA(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 136);
  v3 = *(a1 + 136);
  if (*(v3 + 620) && (*(v3 + 809) & 1) != 0)
  {
    if (!a2)
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::setSOFTAP_TRIGGER_CSA(a1);
        }
      }

      return 22;
    }

    v23 = 0;
    if (*(a2 + 20))
    {
      isConcurrencyEnabled = AppleBCMWLANCore::isConcurrencyEnabled(*(v3 + 536));
      v3 = *v4;
      if (isConcurrencyEnabled)
      {
        isConcurrencyOpModeSet = AppleBCMWLANCore::isConcurrencyOpModeSet(*(v3 + 536), 1);
        v3 = *v4;
        if (isConcurrencyOpModeSet)
        {
          (*(**(v3 + 536) + 1208))(*(v3 + 536), 0);
          v3 = *v4;
        }
      }
    }

    ChanSpec = AppleBCMWLANCore::getChanSpec(*(v3 + 536), a2 + 4, &v23);
    if (ChanSpec)
    {
      v9 = ChanSpec;
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::setSOFTAP_TRIGGER_CSA(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a2, v9);
        }
      }

      return v9;
    }

    if (v23 >= 0x10000)
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::setSOFTAP_TRIGGER_CSA(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a2);
        }
      }

      return 22;
    }

    v21 = 0;
    v22 = 0;
    BYTE1(v21) = *(a2 + 16);
    HIWORD(v21) = v23;
    v11 = *(*(a1 + 136) + 552);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
    v20[0] = &v21;
    v20[1] = 6;
    v9 = AppleBCMWLANCommander::runVirtualIOVarSet(v11, InterfaceId, "csa", v20, 0, 0);
    v13 = (*(*a1 + 1088))(a1);
    if (v9)
    {
      if (v13)
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          v14 = (*(*a1 + 1088))(a1);
          v15 = (*(*a1 + 160))(a1);
          v17 = *(a2 + 8);
          v16 = *(a2 + 12);
          v18 = v23;
          v19 = (*(*a1 + 920))(a1, v9);
          CCLogStream::logAlert(v14, "[dk] %s@%d:<%s> ERROR: failed to set channel, channel %d flags 0x%X chanspec 0x%X error string %s  \n", "setSOFTAP_TRIGGER_CSA", 1955, v15, v17, v16, v18, v19);
        }
      }
    }

    else if (v13)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setSOFTAP_TRIGGER_CSA(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a2, &v23);
      }
    }
  }

  else
  {
    if ((*(*a1 + 1088))(a1, a2))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setSOFTAP_TRIGGER_CSA();
      }
    }

    return 6;
  }

  return v9;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::setSOFTAP_TRIGGER_CSA(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANIO80211APSTAInterface::setSOFTAP_TRIGGER_CSA(a1 - 112, a2);
}

{
  return AppleBCMWLANIO80211APSTAInterface::setSOFTAP_TRIGGER_CSA(a1 - 128, a2);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setSOFTAP_PARAMS(AppleBCMWLANIO80211APSTAInterface *this, uint64_t a2)
{
  v4 = *(this + 17);
  if (*(a2 + 23) != *(v4 + 14))
  {
    if (!*(a2 + 23))
    {
      if (*(v4 + 620))
      {
        AppleBCMWLANIO80211APSTAInterface::setPowerSaveState(this, 0, 0);
        v5 = 0;
        *(*(this + 17) + 14) = 0;
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_5;
    }

    AppleBCMWLANIO80211APSTAInterface::enableSoftAPPowerSave(this, 0);
  }

  v5 = 1;
LABEL_5:
  v6 = *(a2 + 20);
  v7 = *(this + 17);
  if (v6 != 0xFFFF && v6 != *(v7 + 104))
  {
    AppleBCMWLANIO80211APSTAInterface::setBeaconInterval(this, v6);
    v7 = *(this + 17);
  }

  v9 = *(a2 + 4);
  if (v9 != *(v7 + 24))
  {
    *(v7 + 24) = v9;
    v7 = *(this + 17);
  }

  v10 = *(a2 + 8);
  if (v10 != *(v7 + 28))
  {
    *(v7 + 28) = v10;
    v7 = *(this + 17);
  }

  v11 = *(a2 + 12);
  if (v11 != *(v7 + 32))
  {
    *(v7 + 32) = v11;
    v7 = *(this + 17);
  }

  v12 = *(a2 + 16);
  if (v12 != *(v7 + 36))
  {
    *(v7 + 36) = v12;
    v7 = *(this + 17);
  }

  v13 = *(a2 + 24);
  if (*(v7 + 40) != v13)
  {
    *(v7 + 40) = v13;
  }

  if (v5)
  {
    AppleBCMWLANIO80211APSTAInterface::setPowerSaveState(this, 1, 0);
  }

  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::setSOFTAP_PARAMS(uint64_t a1, uint64_t a2)
{
  AppleBCMWLANIO80211APSTAInterface::setSOFTAP_PARAMS((a1 - 112), a2);
  return 0;
}

{
  AppleBCMWLANIO80211APSTAInterface::setSOFTAP_PARAMS((a1 - 128), a2);
  return 0;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setSOFTAP_WIFI_NETWORK_INFO_IE(void *a1, _BYTE *a2)
{
  v4 = a1 + 17;
  if (!AppleBCMWLANCore::isConcurrencyEnabled(*(a1[17] + 536)))
  {
    return 0;
  }

  if (a2[3] < 0x21u)
  {
    v6 = *v4;
    if (memcmp((*v4 + 44), a2, 0x24uLL))
    {
      *(v6 + 98) = 1;
      v6 = *v4;
    }

    *(v6 + 76) = 0;
    *(v6 + 60) = 0u;
    *(v6 + 44) = 0u;
    *(*v4 + 46) = a2[2];
    *(*v4 + 44) = *a2;
    v7 = a2[3];
    *(*v4 + 47) = v7;
    if (v7)
    {
      memcpy((*v4 + 48), a2 + 4, v7);
    }

    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setSOFTAP_WIFI_NETWORK_INFO_IE();
      }
    }

    return 0;
  }

  v5 = 3758097090;
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::setSOFTAP_WIFI_NETWORK_INFO_IE();
    }
  }

  return v5;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::setSOFTAP_WIFI_NETWORK_INFO_IE(uint64_t a1, _BYTE *a2)
{
  return AppleBCMWLANIO80211APSTAInterface::setSOFTAP_WIFI_NETWORK_INFO_IE((a1 - 112), a2);
}

{
  return AppleBCMWLANIO80211APSTAInterface::setSOFTAP_WIFI_NETWORK_INFO_IE((a1 - 128), a2);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setSOFTAP_EXTENDED_CAPABILITIES_IE(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(*(a1 + 136) + 80) = *a2;
  *(*(a1 + 136) + 81) = *(a2 + 1);
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::setSOFTAP_EXTENDED_CAPABILITIES_IE(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(*(a1 + 24) + 80) = *a2;
  *(*(a1 + 24) + 81) = *(a2 + 1);
  return 0;
}

{
  v2 = *(a1 + 8);
  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  *(v2 + 96) = 0;
  *(*(a1 + 8) + 80) = *a2;
  *(*(a1 + 8) + 81) = *(a2 + 1);
  return 0;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getSOFTAP_PARAMS(uint64_t a1, uint64_t a2)
{
  *(a2 + 20) = *(*(a1 + 136) + 104);
  *(a2 + 23) = *(*(a1 + 136) + 14);
  *(a2 + 22) = *(*(a1 + 136) + 16);
  *(a2 + 4) = *(*(a1 + 136) + 24);
  *(a2 + 8) = *(*(a1 + 136) + 28);
  *(a2 + 12) = *(*(a1 + 136) + 32);
  *(a2 + 16) = *(*(a1 + 136) + 36);
  *(a2 + 24) = *(*(a1 + 136) + 40);
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::getSOFTAP_PARAMS(uint64_t a1, uint64_t a2)
{
  AppleBCMWLANIO80211APSTAInterface::getSOFTAP_PARAMS(a1 - 112, a2);
  return 0;
}

{
  AppleBCMWLANIO80211APSTAInterface::getSOFTAP_PARAMS(a1 - 128, a2);
  return 0;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getSOFTAP_STATS(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  v3 = *(v2 + 448);
  *a2 = *(v2 + 432);
  *(a2 + 16) = v3;
  v4 = *(v2 + 464);
  v5 = *(v2 + 480);
  v6 = *(v2 + 496);
  *(a2 + 80) = *(v2 + 512);
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 32) = v4;
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::getSOFTAP_STATS(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(v2 + 448);
  *a2 = *(v2 + 432);
  *(a2 + 16) = v3;
  v4 = *(v2 + 464);
  v5 = *(v2 + 480);
  v6 = *(v2 + 496);
  *(a2 + 80) = *(v2 + 512);
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 32) = v4;
  return 0;
}

{
  v2 = *(a1 + 8);
  v3 = *(v2 + 448);
  *a2 = *(v2 + 432);
  *(a2 + 16) = v3;
  v4 = *(v2 + 464);
  v5 = *(v2 + 480);
  v6 = *(v2 + 496);
  *(a2 + 80) = *(v2 + 512);
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 32) = v4;
  return 0;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setRSN_CONF(IO80211SkywalkInterface *this, uint64_t a2)
{
  v50 = 0;
  memset(v54, 170, sizeof(v54));
  v53 = 0xAAAAAAAAAAAAAAAALL;
  if ((*(*(this + 17) + 667) & 0x10) != 0)
  {
    v11 = 3758097109;
    if ((*(*this + 1088))(this, a2))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setRSN_CONF();
      }
    }
  }

  else
  {
    v4 = *(a2 + 44);
    if (v4)
    {
      v5 = 0;
      if (v4 >= 8)
      {
        v6 = 8;
      }

      else
      {
        v6 = v4;
      }

      v7 = (a2 + 48);
      do
      {
        v9 = *v7++;
        v8 = v9;
        v10 = v5 | 2;
        if (v9 != 1)
        {
          v10 = v5;
        }

        if (v8 == 2)
        {
          v5 |= 4u;
        }

        else
        {
          v5 = v10;
        }

        --v6;
      }

      while (v6);
    }

    else
    {
      v5 = 0;
    }

    v12 = *(a2 + 124);
    if (v12)
    {
      if (v12 >= 8)
      {
        v13 = 8;
      }

      else
      {
        v13 = v12;
      }

      v14 = (a2 + 128);
      do
      {
        v16 = *v14++;
        v15 = v16;
        v17 = v5 | 0x80;
        v18 = v5 | 0x40;
        if (v16 != 4)
        {
          v18 = v5;
        }

        if (v15 != 8)
        {
          v17 = v18;
        }

        if (v15 == 4096)
        {
          v5 |= 0x40000u;
        }

        else
        {
          v5 = v17;
        }

        --v13;
      }

      while (v13);
    }

    v49 = v5;
    if (v4 && *(a2 + 8))
    {
      v19 = 0;
      do
      {
        mapAppleCipherToBcomWsecFlags(&v50, *(a2 + 12 + 4 * v19));
        if (v19 > 6)
        {
          break;
        }

        ++v19;
      }

      while (v19 < *(a2 + 8));
      v12 = *(a2 + 124);
    }

    if (v12 && *(a2 + 88))
    {
      v20 = 0;
      do
      {
        mapAppleCipherToBcomWsecFlags(&v50, *(a2 + 92 + 4 * v20));
        if (v20 > 6)
        {
          break;
        }

        ++v20;
      }

      while (v20 < *(a2 + 88));
    }

    v21 = *(a2 + 160);
    v48 = 0;
    v22 = *(*(this + 17) + 552);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    *&v51[0] = &v48;
    *(&v51[0] + 1) = 4;
    v24 = AppleBCMWLANCommander::runVirtualIOCtlSet(v22, InterfaceId, 22, v51, 0, 0);
    if (v24)
    {
      v11 = v24;
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          v25 = (*(*this + 1088))(this);
          (*(**(*(this + 17) + 536) + 112))(*(*(this + 17) + 536), v11);
          CCLogStream::logCrit(v25, "[dk] %s@%d:auth (0x%lx) failed, error %s\n");
        }
      }
    }

    else
    {
      v52 = v21;
      *&v26 = 0xAAAAAAAAAAAAAAAALL;
      *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v51[2] = v26;
      v51[3] = v26;
      v51[0] = v26;
      v51[1] = v26;
      v47[0] = v51;
      v47[1] = 0x4000000040;
      v27 = *(*(this + 17) + 552);
      v28 = IO80211SkywalkInterface::getInterfaceId(this);
      v45 = &v52;
      v46 = 32;
      v29 = AppleBCMWLANCommander::runVirtualIOVarSet(v27, v28, "wpa_cap", &v45, v47, 0);
      if (v29)
      {
        v11 = v29;
        if ((*(*this + 1088))(this))
        {
          (*(*this + 1088))(this);
          if (CCLogStream::shouldLog())
          {
            v30 = (*(*this + 1088))(this);
            (*(**(*(this + 17) + 536) + 112))(*(*(this + 17) + 536), v11);
            CCLogStream::logCrit(v30, "[dk] %s@%d:  wpa_cap (%ld) failed, error %s\n");
          }
        }
      }

      else
      {
        v31 = *(*(this + 17) + 552);
        v32 = IO80211SkywalkInterface::getInterfaceId(this);
        v45 = &v50;
        v46 = 4;
        v11 = AppleBCMWLANCommander::runVirtualIOVarSet(v31, v32, "wsec", &v45, 0, 0);
        v33 = (*(*this + 1088))(this);
        if (v11)
        {
          if (v33)
          {
            (*(*this + 1088))(this);
            if (CCLogStream::shouldLog())
            {
              v34 = (*(*this + 1088))(this);
              (*(**(*(this + 17) + 536) + 112))(*(*(this + 17) + 536), v11);
              CCLogStream::logCrit(v34, "[dk] %s@%d:  wsec (0x%lx) failed, error %s\n");
            }
          }
        }

        else
        {
          if (v33)
          {
            (*(*this + 1088))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIO80211APSTAInterface::setRSN_CONF();
            }
          }

          v35 = *(*(this + 17) + 552);
          v36 = IO80211SkywalkInterface::getInterfaceId(this);
          v45 = &v49;
          v46 = 4;
          v37 = AppleBCMWLANCommander::runVirtualIOCtlSet(v35, v36, 165, &v45, 0, 0);
          if (v37)
          {
            v11 = v37;
            if ((*(*this + 1088))(this))
            {
              (*(*this + 1088))(this);
              if (CCLogStream::shouldLog())
              {
                v38 = (*(*this + 1088))(this);
                (*(**(*(this + 17) + 536) + 112))(*(*(this + 17) + 536), v11);
                CCLogStream::logCrit(v38, "[dk] %s@%d:  wpa_auth (0x%lx) failed, error %s\n");
              }
            }
          }

          else
          {
            if (v49 == 262272)
            {
              v39 = 1;
            }

            else if (v49 == 0x40000)
            {
              v39 = 2;
            }

            else
            {
              v39 = (v21 >> 7) & 1;
            }

            AppleBCMWLANIO80211APSTAInterface::configureManagementFrameProtectionForSoftAP(this, v39);
            v40 = *(this + 17);
            v44[0] = *(v40 + 616);
            v44[1] = 1;
            v41 = *(v40 + 552);
            v42 = IO80211SkywalkInterface::getInterfaceId(this);
            v45 = v44;
            v46 = 8;
            v11 = AppleBCMWLANCommander::runVirtualIOVarSet(v41, v42, "bss", &v45, 0, 0);
            if (v11)
            {
              if ((*(*this + 1088))(this))
              {
                (*(*this + 1088))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANIO80211APSTAInterface::setRSN_CONF();
                }
              }
            }

            else
            {
              AppleBCMWLANIO80211APSTAInterface::enableAPInterface(this);
              if ((*(*this + 1088))(this))
              {
                (*(*this + 1088))(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANIO80211APSTAInterface::setRSN_CONF();
                }
              }

              *(*(this + 17) + 620) = 1;
            }
          }
        }
      }
    }
  }

  return v11;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::setRSN_CONF(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANIO80211APSTAInterface::setRSN_CONF((a1 - 112), a2);
}

{
  return AppleBCMWLANIO80211APSTAInterface::setRSN_CONF((a1 - 128), a2);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setSTA_AUTHORIZE(IO80211SkywalkInterface *a1, uint64_t a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  v4 = *(*(a1 + 17) + 552);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  if (*(a2 + 4))
  {
    v6 = 121;
  }

  else
  {
    v6 = 122;
  }

  v13[0] = a2 + 8;
  v13[1] = 6;
  v7 = AppleBCMWLANCommander::runVirtualIOCtlSet(v4, InterfaceId, v6, v13, 0, 0);
  if (v7)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        v8 = (*(*a1 + 1088))(a1);
        v9 = *(a2 + 4);
        v10 = (*(**(*(a1 + 17) + 536) + 112))(*(*(a1 + 17) + 536), v7);
        v11 = 121;
        if (!v9)
        {
          v11 = 122;
        }

        CCLogStream::logCrit(v8, "[dk] %s@%d:  %d failed, error %s\n", "setSTA_AUTHORIZE", 2491, v11, v10);
      }
    }
  }

  return v7;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::setSTA_AUTHORIZE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANIO80211APSTAInterface::setSTA_AUTHORIZE((a1 - 112), a2);
}

{
  return AppleBCMWLANIO80211APSTAInterface::setSTA_AUTHORIZE((a1 - 128), a2);
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::setSTA_DEAUTH(uint64_t a1)
{
  return (*(*(a1 - 112) + 1784))();
}

{
  return (*(*(a1 - 128) + 1784))();
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setSTA_DISASSOCIATE(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v15 = -1431655766;
  v4 = *(a2 + 8);
  v16[0] = *(a2 + 4);
  v16[1] = v4;
  v17 = -1431655766;
  LOWORD(v17) = *(a2 + 12);
  v13[0] = &v14;
  v13[1] = 0xC000C000CLL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v5 = *(*(a1 + 17) + 552);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v12[0] = v16;
  v12[1] = 12;
  v7 = AppleBCMWLANCommander::runVirtualIOCtlSet(v5, InterfaceId, 201, v12, v13, 0);
  if (v7)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        v9 = (*(*a1 + 1088))(a1);
        v10 = *(a2 + 4);
        v11 = (*(**(*(a1 + 17) + 536) + 112))(*(*(a1 + 17) + 536), v7);
        CCLogStream::logCrit(v9, "[dk] %s@%d: WLC_SCB_DEAUTHENTICATE_FOR_REASON (reason=%x) failed, error %s\n", "setSTA_DISASSOCIATE", 2517, v10, v11);
      }
    }
  }

  return v7;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::setSTA_DISASSOCIATE(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANIO80211APSTAInterface::setSTA_DISASSOCIATE((a1 - 112), a2);
}

{
  return AppleBCMWLANIO80211APSTAInterface::setSTA_DISASSOCIATE((a1 - 128), a2);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setCIPHER_KEY(IO80211SkywalkInterface *a1, uint64_t a2)
{
  if (*(*(a1 + 17) + 620))
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      if (v3 == 5 || v3 == 3)
      {
        v11 = 0;
        memset(v10, 0, sizeof(v10));
        v5 = mapAppleKeyToBcomKey(v10, a2);
        if (v5)
        {
          v3 = v5;
          if ((*(*a1 + 1088))(a1))
          {
            (*(*a1 + 1088))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIO80211APSTAInterface::setCIPHER_KEY();
            }
          }
        }

        else
        {
          v6 = *(*(a1 + 17) + 552);
          InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
          v9[0] = v10;
          v9[1] = 164;
          v3 = AppleBCMWLANCommander::runVirtualIOCtlSet(v6, InterfaceId, 45, v9, 0, 0);
          if (v3)
          {
            if ((*(*a1 + 1088))(a1))
            {
              (*(*a1 + 1088))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANIO80211APSTAInterface::setCIPHER_KEY();
              }
            }
          }
        }
      }

      else
      {
        if ((*(*a1 + 1088))(a1))
        {
          (*(*a1 + 1088))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANIO80211APSTAInterface::setCIPHER_KEY();
          }
        }

        return 0;
      }
    }
  }

  else
  {
    if ((*(*a1 + 1088))(a1, a2))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::setCIPHER_KEY();
      }
    }

    return 6;
  }

  return v3;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::setCIPHER_KEY(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANIO80211APSTAInterface::setCIPHER_KEY((a1 - 112), a2);
}

{
  return AppleBCMWLANIO80211APSTAInterface::setCIPHER_KEY((a1 - 128), a2);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getSTA_IE_LIST(IO80211SkywalkInterface *this, uint64_t a2)
{
  if (!a2)
  {
    return 22;
  }

  v4 = *(this + 17) + 185;
  v5 = 5;
  while (*v4 != *(a2 + 4) || *(v4 + 4) != *(a2 + 8))
  {
    v4 += 48;
    if (!--v5)
    {
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::getSTA_IE_LIST();
        }
      }

      return 2;
    }
  }

  *(a2 + 16) = *(a2 + 4);
  v8 = *(a2 + 12) - 6;
  *(a2 + 20) = *(a2 + 8);
  v9 = v8;
  if (v8)
  {
    v10 = a2 + 16;
  }

  else
  {
    v10 = 0;
  }

  v23[0] = v10;
  v23[1] = v8 | (v8 << 32);
  v11 = *(*(this + 17) + 552);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
  v22[0] = v10;
  v22[1] = v9;
  v7 = AppleBCMWLANCommander::runVirtualIOVarGet(v11, InterfaceId, "wpaie", v22, v23, 0);
  if (v7)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        v13 = (*(*this + 1088))(this);
        v14 = *(a2 + 4);
        v15 = *(a2 + 5);
        v16 = *(a2 + 6);
        v17 = *(a2 + 7);
        v18 = *(a2 + 8);
        v19 = *(a2 + 9);
        v20 = (*(**(*(this + 17) + 536) + 112))(*(*(this + 17) + 536), v7);
        CCLogStream::logCrit(v13, "[dk] %s@%d:wpaie (%02x:%02x:%02x:%02x:%02x:%02x) failed, error %s\n", "getSTA_IE_LIST", 2603, v14, v15, v16, v17, v18, v19, v20);
      }
    }
  }

  else
  {
    *(a2 + 12) = *(a2 + 17) + 2;
  }

  return v7;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::getSTA_IE_LIST(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANIO80211APSTAInterface::getSTA_IE_LIST((a1 - 112), a2);
}

{
  return AppleBCMWLANIO80211APSTAInterface::getSTA_IE_LIST((a1 - 128), a2);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getSTA_STATS(IO80211SkywalkInterface *a1, _DWORD *a2)
{
  v3 = a1 + 136;
  v2 = *(a1 + 17);
  if (!*(v2 + 620))
  {
    return 57;
  }

  if (!a2)
  {
    return 22;
  }

  if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*(v2 + 536)) >= 7)
  {
    if (AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*v3 + 536)) >= 0xF)
    {
      v6 = 296;
    }

    else
    {
      v6 = 280;
    }
  }

  else
  {
    v6 = 264;
  }

  v8 = v6;
  v9 = IOMallocZeroData();
  if (!v9)
  {
    return 12;
  }

  v10 = v9;
  v19[0] = v9;
  v19[1] = v8 | ((v8 | (v8 << 16)) << 16);
  v11 = *(*(a1 + 17) + 552);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v18[0] = (a2 + 1);
  v18[1] = 6;
  v7 = AppleBCMWLANCommander::runVirtualIOVarGet(v11, InterfaceId, "sta_info", v18, v19, 0);
  if (v7)
  {
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::getSTA_STATS();
      }
    }
  }

  else
  {
    v13 = *(v10 + 84);
    v14 = *(v10 + 88);
    v15 = *(v10 + 96);
    v16 = *(v10 + 104);
    *a2 = 1;
    a2[3] = v14;
    a2[4] = v16;
    a2[5] = v13;
    a2[6] = v15;
  }

  IOFreeData();
  return v7;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::getSTA_STATS(uint64_t a1, _DWORD *a2)
{
  return AppleBCMWLANIO80211APSTAInterface::getSTA_STATS((a1 - 112), a2);
}

{
  return AppleBCMWLANIO80211APSTAInterface::getSTA_STATS((a1 - 128), a2);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getKEY_RSC(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  LODWORD(v9) = *(a2 + 14);
  v7[0] = &v8;
  v7[1] = 0x800040008;
  v3 = *(*(a1 + 17) + 552);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
  v6[0] = &v9;
  v6[1] = 8;
  result = AppleBCMWLANCommander::runVirtualIOCtlGet(v3, InterfaceId, 183, v6, v7, 0);
  if (!result)
  {
    *(a2 + 84) = v8;
    *(a2 + 80) = 8;
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::getKEY_RSC(uint64_t a1, uint64_t a2)
{
  return AppleBCMWLANIO80211APSTAInterface::getKEY_RSC((a1 - 112), a2);
}

{
  return AppleBCMWLANIO80211APSTAInterface::getKEY_RSC((a1 - 128), a2);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleEvent(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return result;
  }

  v3 = result;
  v4 = result & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*result + 1088))(result))
  {
    (*(*v3 + 1088))(v3);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::handleEvent();
    }
  }

  v5 = *(a2 + 4);
  if (v5 <= 10)
  {
    if (v5 > 7)
    {
      if (v5 != 8 && v5 != 10)
      {
        goto LABEL_93;
      }

      v16 = IO80211HexdumpIf();
      if (*(a2 + 8) || *(a2 + 12))
      {
        result = (*(*v3 + 1088))(v3);
        if (result)
        {
          (*(*v3 + 1088))(v3);
          result = CCLogStream::shouldLog();
          if (result)
          {
            v17 = (*(*v3 + 1088))(v3);
            v18 = "WLC_E_REASSOC_IND";
            if (*(a2 + 4) == 8)
            {
              v18 = "WLC_E_ASSOC_IND";
            }

            return CCLogStream::logAlert(v17, "[dk] %s@%d:%s %02X:%02X:%02X:%02X:%02X:%02X assoc with failed status %u reason %u, ignored", "handleEvent", 2887, v18);
          }
        }
      }

      else
      {
        v38 = AppleBCMWLANIO80211APSTAInterface::checkForAppleIE(v16, (a2 + 48), *(a2 + 20));
        v39 = *(v3 + 17);
        if ((v38 & 1) != 0 || (*(v39 + 13) & 1) == 0)
        {
          v40 = *(a2 + 24);
          *(v39 + 132) = *(a2 + 28);
          *(v39 + 128) = v40;
          *&v41 = AppleBCMWLANIO80211APSTAInterface::updateSTAAssocInfo(v3, a2);
          v43 = v42;
          (*(**(*(v3 + 17) + 112) + 72))(*(*(v3 + 17) + 112), v41);
          (*(**(*(v3 + 17) + 112) + 56))(*(*(v3 + 17) + 112), 0);
          v65 = 0;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v56 = 0u;
          v55 = 0u;
          v53 = 0u;
          memset(v54, 0, sizeof(v54));
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          AppleBCMWLANIO80211APSTAInterface::parseRSNXE(v3, (a2 + 48), *(a2 + 20), &v50);
          if (v43)
          {
            if (v43[8])
            {
              HIDWORD(v49) |= 1u;
            }

            if (v43[9])
            {
              HIDWORD(v49) |= 2u;
            }

            if (v38)
            {
              HIDWORD(v49) |= 4u;
              v43[10] = 1;
            }
          }

          v44 = *(v3 + 17);
          LODWORD(v49) = *(v44 + 128);
          WORD2(v49) = *(v44 + 132);
          DWORD2(v49) = *v44;
          AppleBCMWLANIO80211APSTAInterface::postMessageForSTA(v3, 12, &v49, 0x114u);
          if ((*(*v3 + 1088))(v3))
          {
            (*(*v3 + 1088))(v3);
            if (CCLogStream::shouldLog())
            {
              v45 = (*(*v3 + 1088))(v3);
              v46 = "WLC_E_REASSOC_IND";
              if (*(a2 + 4) == 8)
              {
                v46 = "WLC_E_ASSOC_IND";
              }

              CCLogStream::logAlert(v45, "[dk] %s@%d:%s: status = %lu, reason = %lu, flags = 0x%x, authtype = %lu, addr = %02X:%02X:%02X:%02X:%02X:%02X, (count =%ld), AIHS %d Sharing %d, iOS %d\n", "handleEvent", 2934, v46, *(a2 + 8), *(a2 + 12), *(a2 + 2), *(a2 + 16), *(a2 + 24), *(a2 + 25), *(a2 + 26), *(a2 + 27), *(a2 + 28), *(a2 + 29), **(v3 + 17), BYTE12(v49) & 1, (HIDWORD(v49) >> 1) & 1, (HIDWORD(v49) >> 2) & 1);
            }
          }

          ++*(*(v3 + 17) + 812);
          return IOLog("fTestAssocCount %d\n");
        }

        else
        {
          result = (*(*v3 + 1088))(v3);
          if (result)
          {
            (*(*v3 + 1088))(v3);
            result = CCLogStream::shouldLog();
            if (result)
            {
              return AppleBCMWLANIO80211APSTAInterface::handleEvent();
            }
          }
        }
      }
    }

    else
    {
      if ((v5 - 5) < 2)
      {
LABEL_22:
        IO80211HexdumpIf();
        v10 = *(v3 + 17);
        v11 = *(a2 + 24);
        *(v10 + 132) = *(a2 + 28);
        *(v10 + 128) = v11;
        (*(**(*(v3 + 17) + 112) + 72))(*(*(v3 + 17) + 112));
        (*(**(*(v3 + 17) + 112) + 56))(*(*(v3 + 17) + 112), 0);
        AppleBCMWLANIO80211APSTAInterface::clearStaContextFromStaTable(v3, (a2 + 24));
        v12 = **(v3 + 17);
        *&v49 = 0;
        LODWORD(v49) = *(a2 + 24);
        WORD2(v49) = *(a2 + 28);
        DWORD2(v49) = v12;
        AppleBCMWLANIO80211APSTAInterface::postMessageForSTA(v3, 13, &v49, 0xCu);
        result = (*(*v3 + 1088))(v3);
        if (result)
        {
          (*(*v3 + 1088))(v3);
          result = CCLogStream::shouldLog();
          if (result)
          {
            v13 = (*(*v3 + 1088))(v3);
            v14 = *(a2 + 4);
            v15 = convertEventToString(*(a2 + 4), 0, 0);
            return CCLogStream::logAlert(v13, "[dk] %s@%d:STA removal event type %ld(%s): status = %lu, reason = %lu, flags = 0x%x, authtype = %lu, addr = %02x:%02x:%02x:%02x:%02x:%02x (count =%ld)\n", "handleEvent", 3015, v14, v15, *(a2 + 8), *(a2 + 12));
          }
        }

        return result;
      }

      if (v5 != 4)
      {
        goto LABEL_93;
      }

      AppleBCMWLANIO80211APSTAInterface::setPowerSaveState(v3, 1, 1);
      AppleBCMWLANCore::requestBlockScan(*(*(v3 + 17) + 536), 1, 500);
      result = (*(*v3 + 1088))(v3);
      if (result)
      {
        (*(*v3 + 1088))(v3);
        result = CCLogStream::shouldLog();
        if (result)
        {
          result = AppleBCMWLANIO80211APSTAInterface::handleEvent();
        }
      }

      if (!*(a2 + 8) && *(a2 + 16) == 3)
      {
        v53 = 0u;
        memset(v54, 0, 28);
        v51 = 0u;
        v52 = 0u;
        v50 = 0u;
        DWORD1(v49) = mapBcmStatusToApple80211IOReturnScan(0);
        v19 = mapBcmReasonToApple80211IOReturnIEEEReason(*(a2 + 12));
        LODWORD(v49) = 5;
        v21 = *(a2 + 20);
        v20 = (a2 + 20);
        *(&v49 + 1) = __PAIR64__(*(a2 + 24), v19);
        LOWORD(v50) = *(a2 + 28);
        if (v21)
        {
          if (v21 <= 3)
          {
            return AppleBCMWLANIO80211APSTAInterface::handleEvent(v3, v4, &v49, v20);
          }

          if (*(a2 + 48) == 1)
          {
            v22 = *(a2 + 50);
            LOWORD(v23) = v22 - 4;
            if (v22 >= 4 && v21 >= v22 && (v22 - 4) >= 4u)
            {
              v24 = 0;
              v25 = (a2 + 52);
              while (1)
              {
                v26 = *v25;
                v27 = v25[1];
                v48 = 0;
                if (AppleBCMWLANUtil::safe_align_up(v27, 4, &v48, v20))
                {
                  AppleBCMWLANIO80211APSTAInterface::handleEvent();
                  return AppleBCMWLANIO80211APSTAInterface::handleEvent();
                }

                v28 = __CFADD__(v48, 4);
                v29 = v48 + 4;
                v48 += 4;
                if (v28)
                {
                  AppleBCMWLANIO80211APSTAInterface::handleEvent();
                  return AppleBCMWLANIO80211APSTAInterface::handleEvent();
                }

                if (v29 >= 0xFFFF)
                {
                  AppleBCMWLANIO80211APSTAInterface::handleEvent();
                  return AppleBCMWLANIO80211APSTAInterface::handleEvent();
                }

                if (v26 == 2)
                {
                  if (v27 == 16)
                  {
                    memcpy(&v54[3], v25 + 2, v27);
                    v54[2] = 16;
                    if ((*(*v3 + 1088))(v3))
                    {
                      (*(*v3 + 1088))(v3);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANIO80211APSTAInterface::handleEvent();
                      }
                    }

                    if ((*(*v3 + 1088))(v3))
                    {
                      (*(*v3 + 1088))(v3);
                      if (CCLogStream::shouldLog())
                      {
                        v30 = (*(*v3 + 1088))(v3);
                        CCLogStream::logNotice(v30, "[dk] %s@%d: %02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\n", "handleEvent", 2845, BYTE8(v50), BYTE9(v50), BYTE10(v50), BYTE11(v50), BYTE12(v50), BYTE13(v50), BYTE14(v50), HIBYTE(v50), v51, BYTE1(v51), BYTE2(v51), BYTE3(v51), BYTE4(v51), BYTE5(v51), BYTE6(v51), BYTE7(v51));
                      }
                    }
                  }

                  else if ((*(*v3 + 1088))(v3))
                  {
                    (*(*v3 + 1088))(v3);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANIO80211APSTAInterface::handleEvent();
                    }
                  }
                }

                else if (v26 == 1)
                {
                  if ((v27 - 32) > 0x20)
                  {
                    if ((*(*v3 + 1088))(v3))
                    {
                      (*(*v3 + 1088))(v3);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANIO80211APSTAInterface::handleEvent();
                      }
                    }
                  }

                  else
                  {
                    memcpy(&v50 + 8, v25 + 2, v27);
                    if ((*(*v3 + 1088))(v3))
                    {
                      (*(*v3 + 1088))(v3);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANIO80211APSTAInterface::handleEvent();
                      }
                    }

                    v24 = v27;
                  }
                }

                v31 = v23;
                v23 = v23 - v29;
                if ((v23 & 0xFFFF0000) != 0)
                {
                  break;
                }

                v25 = (v25 + v29);
                if (v23 <= 3u)
                {
                  goto LABEL_129;
                }
              }

              if ((*(*v3 + 1088))(v3))
              {
                (*(*v3 + 1088))(v3);
                if (CCLogStream::shouldLog())
                {
                  v47 = (*(*v3 + 1088))(v3);
                  CCLogStream::logNotice(v47, "[dk] %s@%d: WLC_E_AUTH_IND: Invalid computed TLV length, computed[%u] tlvs_len[%u] tlv_size[%u]\n", "handleEvent", 2856, v23, v31, v29);
                }
              }

LABEL_129:
              DWORD1(v50) = v24;
            }
          }
        }

        return AppleBCMWLANIO80211APSTAInterface::postMessageForSTA(v3, 152, &v49, 0x6Cu);
      }
    }
  }

  else
  {
    if (v5 <= 53)
    {
      if ((v5 - 11) >= 2)
      {
        if (v5 == 16)
        {
          v6 = *(*v3 + 1472);
          if (*(a2 + 2))
          {
            v6(v3, 2, 1);
            AppleBCMWLANIO80211APSTAInterface::configureSoftAPPeerStats(v3, 1);
            *(*(v3 + 17) + 809) = 1;
            result = (*(*v3 + 1088))(v3);
            if (result)
            {
              (*(*v3 + 1088))(v3);
              result = CCLogStream::shouldLog();
              if (result)
              {
                return AppleBCMWLANIO80211APSTAInterface::handleEvent(v3);
              }
            }
          }

          else
          {
            v6(v3, 1, 1);
            AppleBCMWLANCore::setConcurrencyState(*(*(v3 + 17) + 536), 4, 0);
            if ((*(*v3 + 1088))(v3))
            {
              (*(*v3 + 1088))(v3);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANIO80211APSTAInterface::handleEvent(v3);
              }
            }

            JoinAdapter = AppleBCMWLANCore::getJoinAdapter(*(*(v3 + 17) + 536));
            isJoining = AppleBCMWLANJoinAdapter::isJoining(JoinAdapter);
            if ((AppleBCMWLANCore::isAssociated(*(*(v3 + 17) + 536)) & 1) == 0 && (isJoining & 1) == 0)
            {
              AppleBCMWLANBGScanAdapter::enablePrivateMACForScans(*(*(v3 + 17) + 576));
            }

            AppleBCMWLANBGScanAdapter::generateAndApplyNewPrivateMACForScans(*(*(v3 + 17) + 576));
            result = AppleBCMWLANCore::isAssociated(*(*(v3 + 17) + 536));
            if (((result | isJoining) & 1) == 0)
            {
              v9 = *(*(v3 + 17) + 584);

              return AppleBCMWLANPowerManager::configureSISOPowerSavePolicy(v9);
            }
          }

          return result;
        }

        goto LABEL_93;
      }

      goto LABEL_22;
    }

    if (v5 == 54)
    {
      v32 = *(a2 + 20);
      if (v32)
      {
        if (v32 > 4)
        {
          v33 = (a2 + 48);
          v34 = *(a2 + 48);
          v35 = *(a2 + 51);
          FirmwareInterfaceVersion = AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*(v3 + 17) + 536));
          IOLog(" AP interface index is now: %u (bsscfg=%u) fwVer %d\n", v34, v35, FirmwareInterfaceVersion);
          if (AppleBCMWLANCore::isHostAssignedInterfaceIndex(*(*(v3 + 17) + 536)))
          {
            v37 = *v33;
            if (IO80211SkywalkInterface::getInterfaceId(v3) == v37)
            {
              *(*(v3 + 17) + 616) = -1;
            }

            else if (IO80211SkywalkInterface::getInterfaceId(v3) == -1)
            {
              IOLog("WLC_E_IF ignored as SoftAP interface is already down\n");
            }

            else if ((*(*v3 + 1088))(v3))
            {
              (*(*v3 + 1088))(v3);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANIO80211APSTAInterface::handleEvent(v3, v4, v33);
              }
            }
          }

          else if (*(*(v3 + 17) + 616) == *(a2 + 51))
          {
            IO80211SkywalkInterface::setInterfaceId(v3, *v33);
            AppleBCMWLANCore::setApStaSkywalkInterface(*(*(v3 + 17) + 536), *v33);
            (*(**(*(v3 + 17) + 720) + 104))(*(*(v3 + 17) + 720), *v33);
            AppleBCMWLANCore::signalDriverEvent(*(*(v3 + 17) + 536), 3);
          }

          IO80211SkywalkInterface::getInterfaceId(v3);
          return IOLog("%s %d interface id %d\n");
        }

        AppleBCMWLANIO80211APSTAInterface::handleEvent(v3, v4, (a2 + 20));
      }

      return AppleBCMWLANIO80211APSTAInterface::handleEvent();
    }

    if (v5 == 150)
    {
      result = (*(*v3 + 1088))(v3);
      if (result)
      {
        (*(*v3 + 1088))(v3);
        result = CCLogStream::shouldLog();
        if (result)
        {
          result = AppleBCMWLANIO80211APSTAInterface::handleEvent();
        }
      }

      if (*(a2 + 12) == 3)
      {
        result = (*(*v3 + 1088))(v3);
        if (result)
        {
          (*(*v3 + 1088))(v3);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANIO80211APSTAInterface::handleEvent();
          }
        }
      }

      return result;
    }

    if (v5 != 75)
    {
LABEL_93:
      result = (*(*v3 + 1088))(v3);
      if (result)
      {
        (*(*v3 + 1088))(v3);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANIO80211APSTAInterface::handleEvent(v3, v4, a2 + 4, a2);
        }
      }

      return result;
    }

    return AppleBCMWLANIO80211APSTAInterface::handleActionFrame(v3, a2);
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::postMessageForSTA(void *this, uint64_t a2, void *a3, unsigned int a4)
{
  v7 = a4;
  v8 = IOMallocZeroData();
  if (v8)
  {
    v9 = v8;
    memcpy(v8, a3, v7);
    (*(*this + 568))(this, a2, v9, v7, 0);
    AppleBCMWLANCore::postMessageInfra(*(this[17] + 536), a2, v9, v7);

    return IOFreeData();
  }

  else
  {
    result = (*(*this + 1088))(this);
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANIO80211APSTAInterface::postMessageForSTA();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::checkForAppleIE(AppleBCMWLANIO80211APSTAInterface *this, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 < 6)
  {
    return 0;
  }

  while (1)
  {
    if (*a2 == 221)
    {
      if (*(a2 + 1) == 5888 && a2[4] == 242)
      {
        break;
      }

      if (*(a2 + 1) == 768 && a2[4] == 147)
      {
        break;
      }

      if (*(a2 + 1) == -24576 && a2[4] == 64)
      {
        break;
      }
    }

    v6 = a2[1] + 2;
    v7 = a3 >= v6;
    a3 -= v6;
    a2 += v6;
    if (a3 == 0 || !v7 || a3 <= 5)
    {
      return 0;
    }
  }

  return 1;
}

int8x8_t AppleBCMWLANIO80211APSTAInterface::updateSTAAssocInfo(AppleBCMWLANIO80211APSTAInterface *a1, uint64_t a2)
{
  v4 = AppleBCMWLANIO80211APSTAInterface::addStaToStaTable(a1, (a2 + 24));
  v5 = AppleBCMWLANIO80211APSTAInterface::checkForAppleInstantHSIE(v4, (a2 + 48), *(a2 + 20));
  if (v5)
  {
    v6 = v5;
    v13 = vtst_s32(vdup_n_s32(*v5), 0x200000001);
    if ((*(*a1 + 1088))(a1))
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        v12 = (*(*a1 + 1088))(a1);
        CCLogStream::logInfo(v12, "[dk] %s@%d:Associating STA %02X:%02X:%02X:%02X:%02X:%02X has instant HS IE, flags %x\n", "updateSTAAssocInfo", 4427, *(a2 + 24), *(a2 + 25), *(a2 + 26), *(a2 + 27), *(a2 + 28), *(a2 + 29), *v6);
      }
    }

    v7 = v13;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 17) + 184;
  v9 = 5;
  do
  {
    if (*(v8 + 1) == *(a2 + 24) && *(v8 + 5) == *(a2 + 28))
    {
      result = vand_s8(v7, 0x100000001);
      *(v8 + 32) = result;
      return result;
    }

    v8 += 48;
    --v9;
  }

  while (v9);
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::updateSTAAssocInfo();
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::parseRSNXE(unint64_t this, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *__dst)
{
  if (a2 && a3 >= 2)
  {
    while (1)
    {
      v5 = a2[1] + 2;
      if (v5 > a3)
      {
        break;
      }

      if (*a2 == 244)
      {
        memcpy(__dst, a2, a2[1] + 2);
        goto LABEL_11;
      }

      a2 += v5;
      a3 -= v5;
      if (a3 <= 1)
      {
        goto LABEL_11;
      }
    }

    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::parseRSNXE();
      }
    }
  }

LABEL_11:
  result = (*(*this + 1088))(this);
  if (result)
  {
    (*(*this + 1088))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANIO80211APSTAInterface::parseRSNXE();
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::clearStaContextFromStaTable(AppleBCMWLANIO80211APSTAInterface *this, unsigned __int8 *a2)
{
  result = AppleBCMWLANIO80211APSTAInterface::removeSta(this, a2);
  if (result)
  {
    result = (*(*this + 1088))(this);
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANIO80211APSTAInterface::clearStaContextFromStaTable();
      }
    }
  }

  return result;
}

_DWORD **AppleBCMWLANIO80211APSTAInterface::checkForStationListMismatch(_DWORD **result, uint64_t a2)
{
  v3 = (a2 + 4);
  v2 = *(a2 + 4);
  if (v2 <= 5)
  {
    v4 = result;
    v5 = result + 17;
    if (v2 != *result[17])
    {
      result = (*(*result + 136))(result);
      if (result)
      {
        (*(*v4 + 1088))(v4);
        result = CCLogStream::shouldLog();
        if (result)
        {
          result = AppleBCMWLANIO80211APSTAInterface::checkForStationListMismatch(v4, v4 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3, v5);
        }
      }

      v7 = 0;
      v8 = a2 + 12;
      do
      {
        v9 = &(*v5)[12 * v7];
        v11 = *(v9 + 184);
        v10 = v9 + 184;
        if (v11 == 1)
        {
          v12 = *v3;
          v13 = v8;
          if (v12)
          {
            while (*(v10 + 1) != *v13 || *(v10 + 5) != *(v13 + 4))
            {
              v13 += 16;
              if (!--v12)
              {
                goto LABEL_14;
              }
            }
          }

          else
          {
LABEL_14:
            if ((*(*v4 + 1088))(v4))
            {
              (*(*v4 + 1088))(v4);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANIO80211APSTAInterface::checkForStationListMismatch();
              }
            }

            v16 = *(v10 + 1);
            v15 = v10 + 1;
            v17 = *v3;
            v20 = v16;
            WORD2(v20) = *(v15 + 4);
            v21 = v17;
            AppleBCMWLANIO80211APSTAInterface::postMessageForSTA(v4, 13, &v20, 0xCu);
            v18 = *(v4 + 136);
            if (*(v18 + 676))
            {
              v19 = 0;
              do
              {
                (*(**&v18[2 * v19 + 192] + 248))(*&v18[2 * v19 + 192], v15);
                ++v19;
                v18 = *v5;
              }

              while (v19 < *(*v5 + 676));
            }

            result = AppleBCMWLANIO80211APSTAInterface::removeStaFromStaTable(v4, v7);
          }
        }

        ++v7;
      }

      while (v7 != 5);
      **v5 = *v3;
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::removeStaFromStaTable(void *this, uint64_t a2)
{
  if (a2 < 5)
  {
    v3 = 0;
    v4 = this[17] + 48 * a2;
    *(v4 + 216) = 0u;
    *(v4 + 200) = 0u;
    *(v4 + 184) = 0u;
  }

  else
  {
    v3 = 3758097084;
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::removeStaFromStaTable();
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::disableInfraFeaturesForSoftAP(AppleBCMWLANIO80211APSTAInterface *this)
{
  AppleBCMWLANIO80211APSTAInterface::configureBcnThrottleParamsForSoftAP(this, 0);
  AppleBCMWLANIO80211APSTAInterface::configureWNMForSoftAP(this, 0);
  v4 = 0;
  if (!IOParseBootArgNumber("wlan.ap.maxmpdu", &v4, 4))
  {
    v3 = 3;
    return AppleBCMWLANIO80211APSTAInterface::configureMPDUSize(this, v3);
  }

  result = (*(*this + 1088))(this);
  if (result)
  {
    (*(*this + 1088))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      result = AppleBCMWLANIO80211APSTAInterface::disableInfraFeaturesForSoftAP();
    }
  }

  v3 = v4;
  if (v4)
  {
    return AppleBCMWLANIO80211APSTAInterface::configureMPDUSize(this, v3);
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureKeepAliveProbing(AppleBCMWLANIO80211APSTAInterface *this)
{
  v12 = 0xF0000001ELL;
  v13 = 5;
  WorkQueue = IO80211SkywalkInterface::getWorkQueue(this);
  if ((*(*WorkQueue + 136))(WorkQueue))
  {
    *&v10 = this;
    *(&v10 + 1) = AppleBCMWLANIO80211APSTAInterface::handleSetScbProbeAsyncCallBack;
    v11 = 0;
    v3 = *(*(this + 17) + 552);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    v9[0] = &v12;
    v9[1] = 12;
    return AppleBCMWLANCommander::sendVirtualIOVarSet(v3, InterfaceId, "scb_probe", v9, kNoRxExpected, &v10, 0);
  }

  else
  {
    v6 = *(*(this + 17) + 552);
    v7 = IO80211SkywalkInterface::getInterfaceId(this);
    *&v10 = &v12;
    *(&v10 + 1) = 12;
    v5 = AppleBCMWLANCommander::runVirtualIOVarSet(v6, v7, "scb_probe", &v10, 0, 0);
    if (v5)
    {
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::configureKeepAliveProbing();
        }
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureBcnThrottleParamsForSoftAP(unint64_t this, int a2)
{
  if (!AppleBCMWLANCore::isVESupportedAndEnabled(*(*(this + 136) + 536)))
  {
    return 0;
  }

  if (a2 == 1)
  {
    v4 = 120;
  }

  else
  {
    v4 = 0;
  }

  v15 = v4;
  v5 = *(*(this + 136) + 552);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
  v13 = &v15;
  v14 = 4;
  v7 = AppleBCMWLANCommander::runVirtualIOVarSet(v5, InterfaceId, "rrm_bcn_req_thrtl_win", &v13, 0, 0);
  if (v7)
  {
    v8 = v7;
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::configureBcnThrottleParamsForSoftAP(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v15, v8);
      }
    }
  }

  else
  {
    v12 = a2 == 1;
    v10 = *(*(this + 136) + 552);
    v11 = IO80211SkywalkInterface::getInterfaceId(this);
    v13 = &v12;
    v14 = 4;
    v8 = AppleBCMWLANCommander::runVirtualIOVarSet(v10, v11, "rrm_bcn_req_max_off_chan_time", &v13, 0, 0);
    if (v8)
    {
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::configureBcnThrottleParamsForSoftAP(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v12, v8);
        }
      }
    }
  }

  return v8;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureWNMForSoftAP(unint64_t this, int a2)
{
  if (!AppleBCMWLANCore::isWNMSupportedAndEnabled(*(*(this + 136) + 536)))
  {
    return 0;
  }

  v10 = a2;
  v4 = *(*(this + 136) + 552);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
  v9[0] = &v10;
  v9[1] = 4;
  v6 = AppleBCMWLANCommander::runVirtualIOVarSet(v4, InterfaceId, "wnm", v9, 0, 0);
  v7 = (*(*this + 1088))(this);
  if (v6)
  {
    if (v7)
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::configureWNMForSoftAP(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v10, v6);
      }
    }
  }

  else if (v7)
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::configureWNMForSoftAP();
    }
  }

  return v6;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureMPDUSize(unint64_t this, int a2)
{
  v8 = a2;
  if (AppleBCMWLANCore::getFWAPIVer(*(*(this + 136) + 536)) != 2 || AppleBCMWLANCore::getFirmwareInterfaceVersion(*(*(this + 136) + 536)) > 4)
  {
    return 0;
  }

  v5 = *(*(this + 136) + 552);
  v7[0] = &v8;
  v7[1] = 4;
  v3 = AppleBCMWLANCommander::runIOVarSet(v5, "ampdu_mpdu", v7, 0, 0);
  v6 = (*(*this + 1088))(this);
  if (!v3)
  {
    if (v6)
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::configureMPDUSize();
      }
    }

    return 0;
  }

  if (v6)
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::configureMPDUSize(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v8, v3);
    }
  }

  return v3;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::hostAPPowerOn(AppleBCMWLANIO80211APSTAInterface *this)
{
  v1 = *(this + 17);
  if (*(v1 + 620) && *(v1 + 16) == 3)
  {
    AppleBCMWLANIO80211APSTAInterface::setPowerSaveState(this, 1, 2);
  }

  return 0;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::hostAPPowerOff(AppleBCMWLANIO80211APSTAInterface *this)
{
  v1 = *(this + 17);
  if (!v1[155])
  {
    return 0;
  }

  if (*v1)
  {
    if ((AppleBCMWLANIO80211APSTAInterface::isSoftAPConcurrencyEnabled(this) & 1) == 0)
    {
      AppleBCMWLANIO80211APSTAInterface::setPowerSaveState(this, 3, 3);
    }

    return 0;
  }

  AppleBCMWLANIO80211APSTAInterface::setPowerSaveState(this, 0, 12);
  *(*(this + 17) + 14) = 0;
  v3 = AppleBCMWLANIO80211APSTAInterface::setHostApModeInternal(this, 0);
  IO80211Controller::postMessage(*(*(this + 17) + 536), this, 1u, 0, 0, 1);
  if (v3)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::hostAPPowerOff();
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::isSoftAPConcurrencyEnabled(AppleBCMWLANIO80211APSTAInterface *this)
{
  if (!AppleBCMWLANCore::isConcurrencyEnabled(*(*(this + 17) + 536)))
  {
    return 0;
  }

  v2 = 1;
  if (!AppleBCMWLANCore::isConcurrencyOpModeSet(*(*(this + 17) + 536), 1) && !AppleBCMWLANCore::isConcurrencyOpModeSet(*(*(this + 17) + 536), 2) && !AppleBCMWLANCore::isConcurrencyOpModeSet(*(*(this + 17) + 536), 8) && !AppleBCMWLANCore::isConcurrencyOpModeSet(*(*(this + 17) + 536), 16))
  {
    return 0;
  }

  return v2;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureLowPowerModeEntry(AppleBCMWLANIO80211APSTAInterface *this)
{
  if (*(*(this + 17) + 180) == 1)
  {
    return 0;
  }

  v1 = AppleBCMWLANIO80211APSTAInterface::configureLowPowerMode(this);
  if (v1)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::configureLowPowerModeEntry();
      }
    }
  }

  else
  {
    *(*(this + 17) + 180) = 1;
  }

  return v1;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureLowPowerMode(AppleBCMWLANIO80211APSTAInterface *this)
{
  v18 = 10;
  v17 = 1;
  WorkQueue = IO80211SkywalkInterface::getWorkQueue(this);
  if ((*(*WorkQueue + 136))(WorkQueue))
  {
    *&v15 = this;
    *(&v15 + 1) = AppleBCMWLANIO80211APSTAInterface::handleSetBcnWaitPeriodAsyncCallBack;
    v16 = 0;
    v3 = *(*(this + 17) + 552);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    v14[0] = &v18;
    v14[1] = 4;
    v5 = AppleBCMWLANCommander::sendVirtualIOVarSet(v3, InterfaceId, "modesw_bcns_wait", v14, kNoRxExpected, &v15, 0);
    if (!v5)
    {
LABEL_21:
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::configureLowPowerMode();
        }
      }

      return 0;
    }
  }

  else
  {
    v6 = *(*(this + 17) + 552);
    v7 = IO80211SkywalkInterface::getInterfaceId(this);
    *&v15 = &v18;
    *(&v15 + 1) = 4;
    v8 = AppleBCMWLANCommander::runVirtualIOVarSet(v6, v7, "modesw_bcns_wait", &v15, 0, 0);
    v9 = (*(*this + 1088))(this);
    if (v8)
    {
      if (v9)
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::configureLowPowerMode();
        }
      }
    }

    else if (v9)
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::configureLowPowerMode();
      }
    }

    v10 = *(*(this + 17) + 552);
    v11 = IO80211SkywalkInterface::getInterfaceId(this);
    *&v15 = &v17;
    *(&v15 + 1) = 4;
    v5 = AppleBCMWLANCommander::runVirtualIOVarSet(v10, v11, "lphs_mode", &v15, 0, 0);
    v12 = (*(*this + 1088))(this);
    if (!v5)
    {
      if (v12)
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::configureLowPowerMode();
        }
      }

      goto LABEL_21;
    }

    if (v12)
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::configureLowPowerMode();
      }
    }
  }

  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::configureLowPowerMode();
    }
  }

  return v5;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureLowPowerModeExit(AppleBCMWLANIO80211APSTAInterface *this)
{
  if (!*(*(this + 17) + 180))
  {
    return 0;
  }

  v2 = AppleBCMWLANIO80211APSTAInterface::unConfigureLowPowerMode(this);
  if (v2)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::configureLowPowerModeExit();
      }
    }
  }

  else
  {
    *(*(this + 17) + 180) = 0;
  }

  return v2;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::unConfigureLowPowerMode(AppleBCMWLANIO80211APSTAInterface *this)
{
  v14 = 0;
  WorkQueue = IO80211SkywalkInterface::getWorkQueue(this);
  if ((*(*WorkQueue + 136))(WorkQueue))
  {
    *&v12 = this;
    *(&v12 + 1) = AppleBCMWLANIO80211APSTAInterface::handleSetLowPowerModeAsyncCallBack;
    v13 = 0;
    v3 = *(*(this + 17) + 552);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    v11[0] = &v14;
    v11[1] = 4;
    v5 = AppleBCMWLANCommander::sendVirtualIOVarSet(v3, InterfaceId, "lphs_mode", v11, kNoRxExpected, &v12, 0);
  }

  else
  {
    v6 = *(*(this + 17) + 552);
    v7 = IO80211SkywalkInterface::getInterfaceId(this);
    *&v12 = &v14;
    *(&v12 + 1) = 4;
    v5 = AppleBCMWLANCommander::runVirtualIOVarSet(v6, v7, "lphs_mode", &v12, 0, 0);
  }

  v8 = v5;
  v9 = (*(*this + 1088))(this);
  if (v8)
  {
    if (v9)
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::unConfigureLowPowerMode();
      }
    }
  }

  else if (v9)
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::unConfigureLowPowerMode();
    }
  }

  return v8;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::deleteIPv4PktFilters(IO80211SkywalkInterface *this)
{
  v8 = 108;
  *&v6 = this;
  *(&v6 + 1) = AppleBCMWLANIO80211APSTAInterface::deleteIPv4PktFiltersAsyncCallBack;
  v7 = 0;
  v2 = *(*(this + 17) + 552);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
  v5[0] = &v8;
  v5[1] = 4;
  result = AppleBCMWLANCommander::sendVirtualIOVarSet(v2, InterfaceId, "pkt_filter_delete", v5, kNoRxExpected, &v6, 0);
  if (result)
  {
    result = (*(*this + 1088))(this);
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANIO80211APSTAInterface::deleteIPv4PktFilters();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::deleteIPv4PktFiltersAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1088))(result, a2);
    if (result)
    {
      (*(*v3 + 1088))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANIO80211APSTAInterface::deleteIPv4PktFiltersAsyncCallBack();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureARPOffload(AppleBCMWLANIO80211APSTAInterface *this, int a2)
{
  v27 = a2;
  WorkQueue = IO80211SkywalkInterface::getWorkQueue(this);
  if ((*(*WorkQueue + 136))(WorkQueue))
  {
    *&v25 = this;
    *(&v25 + 1) = AppleBCMWLANIO80211APSTAInterface::handleSetARPOffloadAsyncCallBack;
    v26 = 0;
    v4 = *(*(this + 17) + 552);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    v23 = &v27;
    v24 = 4;
    v6 = AppleBCMWLANCommander::sendVirtualIOVarSet(v4, InterfaceId, "arpoe", &v23, kNoRxExpected, &v25, 0);
  }

  else
  {
    v7 = *(*(this + 17) + 552);
    v8 = IO80211SkywalkInterface::getInterfaceId(this);
    *&v25 = &v27;
    *(&v25 + 1) = 4;
    v6 = AppleBCMWLANCommander::runVirtualIOVarSet(v7, v8, "arpoe", &v25, 0, 0);
  }

  v9 = v6;
  if (v6)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::configureARPOffload(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v27, v9);
      }
    }
  }

  else
  {
    v22 = *(*(this + 17) + 172);
    if (v27)
    {
      v21 = 9;
      v10 = IO80211SkywalkInterface::getWorkQueue(this);
      if ((*(*v10 + 136))(v10))
      {
        *&v25 = this;
        *(&v25 + 1) = AppleBCMWLANIO80211APSTAInterface::handleSetARPOffloadAsyncCallBack;
        v26 = 0;
        v11 = *(*(this + 17) + 552);
        v12 = IO80211SkywalkInterface::getInterfaceId(this);
        v23 = &v21;
        v24 = 4;
        v9 = AppleBCMWLANCommander::sendVirtualIOVarSet(v11, v12, "arp_ol", &v23, kNoRxExpected, &v25, 0);
        if (v9)
        {
          if ((*(*this + 1088))(this))
          {
            (*(*this + 1088))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIO80211APSTAInterface::configureARPOffload();
            }
          }
        }
      }

      else
      {
        v13 = *(*(this + 17) + 552);
        v14 = IO80211SkywalkInterface::getInterfaceId(this);
        *&v25 = &v21;
        *(&v25 + 1) = 4;
        if (AppleBCMWLANCommander::runVirtualIOVarSet(v13, v14, "arp_ol", &v25, 0, 0))
        {
          if ((*(*this + 1088))(this))
          {
            (*(*this + 1088))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIO80211APSTAInterface::configureARPOffload();
            }
          }
        }

        v15 = *(*(this + 17) + 552);
        v16 = IO80211SkywalkInterface::getInterfaceId(this);
        v17 = AppleBCMWLANCommander::runVirtualIOVarSet(v15, v16, "arp_hostip_clear", &kNoTxPayload, 0, 0);
        if (v17)
        {
          v9 = v17;
          if ((*(*this + 1088))(this))
          {
            (*(*this + 1088))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIO80211APSTAInterface::configureARPOffload();
            }
          }
        }

        else
        {
          v18 = *(*(this + 17) + 552);
          v19 = IO80211SkywalkInterface::getInterfaceId(this);
          *&v25 = &v22;
          *(&v25 + 1) = 4;
          v9 = AppleBCMWLANCommander::runVirtualIOVarSet(v18, v19, "arp_hostip", &v25, 0, 0);
          if (v9)
          {
            if ((*(*this + 1088))(this))
            {
              (*(*this + 1088))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANIO80211APSTAInterface::configureARPOffload();
              }
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetARPOffloadAsyncCallBack(IO80211SkywalkInterface *this, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    result = (*(*this + 1088))(this, a2);
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANIO80211APSTAInterface::handleSetARPOffloadAsyncCallBack();
      }
    }
  }

  else
  {
    *&v7 = this;
    *(&v7 + 1) = AppleBCMWLANIO80211APSTAInterface::handleSetARPHostIPClearAsyncCallBack;
    v8 = 0;
    v5 = *(*(this + 17) + 552);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    result = AppleBCMWLANCommander::sendVirtualIOVarSet(v5, InterfaceId, "arp_hostip_clear", &kNoTxPayload, kNoRxExpected, &v7, 0);
    if (result)
    {
      result = (*(*this + 1088))(this);
      if (result)
      {
        (*(*this + 1088))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANIO80211APSTAInterface::handleSetARPOffloadAsyncCallBack();
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetARPHostIPClearAsyncCallBack(IO80211SkywalkInterface *this, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    result = (*(*this + 1088))(this, a2);
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANIO80211APSTAInterface::handleSetARPHostIPClearAsyncCallBack();
      }
    }
  }

  else
  {
    v5 = *(this + 17);
    v11 = *(v5 + 172);
    *&v9 = this;
    *(&v9 + 1) = AppleBCMWLANIO80211APSTAInterface::handleSetARPHostIPAsyncCallBack;
    v10 = 0;
    v6 = *(v5 + 552);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    v8[0] = &v11;
    v8[1] = 4;
    result = AppleBCMWLANCommander::sendVirtualIOVarSet(v6, InterfaceId, "arp_hostip", v8, kNoRxExpected, &v9, 0);
    if (result)
    {
      result = (*(*this + 1088))(this);
      if (result)
      {
        (*(*this + 1088))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANIO80211APSTAInterface::handleSetARPHostIPClearAsyncCallBack();
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetARPHostIPAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1088))(result, a2);
    if (result)
    {
      (*(*v3 + 1088))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANIO80211APSTAInterface::handleSetARPHostIPAsyncCallBack();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetBcnWaitPeriodAsyncCallBack(IO80211SkywalkInterface *this, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    result = (*(*this + 1088))(this, a2);
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANIO80211APSTAInterface::handleSetBcnWaitPeriodAsyncCallBack();
      }
    }
  }

  else
  {
    v10 = 1;
    *&v8 = this;
    *(&v8 + 1) = AppleBCMWLANIO80211APSTAInterface::handleSetLowPowerModeAsyncCallBack;
    v9 = 0;
    v5 = *(*(this + 17) + 552);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    v7[0] = &v10;
    v7[1] = 4;
    return AppleBCMWLANCommander::sendVirtualIOVarSet(v5, InterfaceId, "lphs_mode", v7, kNoRxExpected, &v8, 0);
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetLowPowerModeAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1088))(result, a2);
    if (result)
    {
      (*(*v3 + 1088))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANIO80211APSTAInterface::handleSetLowPowerModeAsyncCallBack();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setBeaconDutyCycle(AppleBCMWLANIO80211APSTAInterface *this, int a2)
{
  v14 = 0;
  v13 = 0x100100101;
  v15 = 2;
  v16 = a2 != 0;
  WorkQueue = IO80211SkywalkInterface::getWorkQueue(this);
  if ((*(*WorkQueue + 136))(WorkQueue))
  {
    *&v11 = this;
    *(&v11 + 1) = AppleBCMWLANIO80211APSTAInterface::handleSetRpsNoaAsyncCallBack;
    v12 = 0;
    v4 = *(*(this + 17) + 552);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    v10[0] = &v13;
    v10[1] = 16;
    return AppleBCMWLANCommander::sendVirtualIOVarSet(v4, InterfaceId, "rpsnoa", v10, kNoRxExpected, &v11, 0);
  }

  else
  {
    v7 = *(*(this + 17) + 552);
    v8 = IO80211SkywalkInterface::getInterfaceId(this);
    *&v11 = &v13;
    *(&v11 + 1) = 16;
    v6 = AppleBCMWLANCommander::runVirtualIOVarSet(v7, v8, "rpsnoa", &v11, 0, 0);
    if (v6)
    {
      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::setBeaconDutyCycle();
        }
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetRpsNoaAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v4 = result;
    if ((*(*result + 1088))(result, a2))
    {
      (*(*v4 + 1088))(v4);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::handleSetRpsNoaAsyncCallBack();
      }
    }

    return IO80211Hexdump();
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetScbProbeAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v4 = result;
    if ((*(*result + 1088))(result, a2))
    {
      (*(*v4 + 1088))(v4);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::handleSetScbProbeAsyncCallBack();
      }
    }

    return IO80211Hexdump();
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureBeaconDutyCycleParams(IO80211SkywalkInterface *a1, unsigned int a2)
{
  v15 = 0;
  v14 = 0x300180101;
  v16 = 2;
  v3 = (&dynamicPSParams + 12 * a2);
  v17 = 10 - v3[1].i8[0];
  v18 = 0;
  v19 = vrev64_s32(*v3);
  WorkQueue = IO80211SkywalkInterface::getWorkQueue(a1);
  if ((*(*WorkQueue + 136))(WorkQueue))
  {
    *&v12 = a1;
    *(&v12 + 1) = AppleBCMWLANIO80211APSTAInterface::handleSetRpsNoaAsyncCallBack;
    v13 = 0;
    v5 = *(*(a1 + 17) + 552);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(a1);
    v11[0] = &v14;
    v11[1] = 24;
    return AppleBCMWLANCommander::sendVirtualIOVarSet(v5, InterfaceId, "rpsnoa", v11, kNoRxExpected, &v12, 0);
  }

  else
  {
    v8 = *(*(a1 + 17) + 552);
    v9 = IO80211SkywalkInterface::getInterfaceId(a1);
    *&v12 = &v14;
    *(&v12 + 1) = 24;
    v7 = AppleBCMWLANCommander::runVirtualIOVarSet(v8, v9, "rpsnoa", &v12, 0, 0);
    if (v7)
    {
      if ((*(*a1 + 1088))(a1))
      {
        (*(*a1 + 1088))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANIO80211APSTAInterface::configureBeaconDutyCycleParams();
        }
      }
    }
  }

  return v7;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetRSNXEAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1088))(result, a2);
    if (result)
    {
      (*(*v3 + 1088))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANIO80211APSTAInterface::handleSetRSNXEAsyncCallBack();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetBcnIntervalAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v4 = result;
    if ((*(*result + 1088))(result, a2))
    {
      (*(*v4 + 1088))(v4);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::handleSetBcnIntervalAsyncCallBack();
      }
    }

    return IO80211Hexdump();
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSetBcnDTIMPeriodAsyncCallBack(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    v4 = result;
    if ((*(*result + 1088))(result, a2))
    {
      (*(*v4 + 1088))(v4);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::handleSetBcnDTIMPeriodAsyncCallBack();
      }
    }

    return IO80211Hexdump();
  }

  return result;
}

BOOL AppleBCMWLANIO80211APSTAInterface::checkIfAllStaAreInLPM(AppleBCMWLANIO80211APSTAInterface *this)
{
  v2 = 0;
  v3 = 0;
  v4 = *(this + 17);
  v5 = -240;
  do
  {
    if (*(v4 + v5 + 424) == 1)
    {
      if (!(*(*this + 1088))(this) || ((*(*this + 1088))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(this + 17) + v5;
          v7 = *(v6 + 425);
          v8 = *(v6 + 426);
          v9 = *(v6 + 427);
          v10 = *(v6 + 428);
          v11 = *(v6 + 429);
          v12 = *(v6 + 430);
          LODWORD(v6) = *(v6 + 440);
          *buf = 67111682;
          v18 = 78;
          v19 = 2080;
          v20 = "checkIfAllStaAreInLPM";
          v21 = 1024;
          v22 = 4559;
          v23 = 1024;
          v24 = v2;
          v25 = 1024;
          v26 = v7;
          v27 = 1024;
          v28 = v8;
          v29 = 1024;
          v30 = v9;
          v31 = 1024;
          v32 = v10;
          v33 = 1024;
          v34 = v11;
          v35 = 1024;
          v36 = v12;
          v37 = 1024;
          v38 = v6;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: STA Index = %d addr  = %02X:%02X:%02X:%02X:%02X:%02X SleepState %d\n", buf, 0x48u);
        }
      }

      if ((*(*this + 1088))(this))
      {
        (*(*this + 1088))(this);
        if (CCLogStream::shouldLog())
        {
          v14 = (*(*this + 1088))(this);
          v15 = *(this + 17) + v5;
          CCLogStream::logNotice(v14, "[dk] %s@%d:STA Index = %d addr  = %02X:%02X:%02X:%02X:%02X:%02X SleepState %d\n", "checkIfAllStaAreInLPM", 4559, v2, *(v15 + 425), *(v15 + 426), *(v15 + 427), *(v15 + 428), *(v15 + 429), *(v15 + 430), *(v15 + 440));
        }
      }

      v4 = *(this + 17);
      if (*(v4 + v5 + 440) == 2)
      {
        break;
      }
    }

    v13 = v2++ > 3;
    v3 = v13;
    v5 += 48;
  }

  while (v5);
  return v3;
}

unsigned __int8 *AppleBCMWLANIO80211APSTAInterface::checkForAppleInstantHSIE(AppleBCMWLANIO80211APSTAInterface *this, unsigned __int8 *a2, unsigned int a3)
{
  if (a3 >= 6)
  {
    while (1)
    {
      if (*a2 == 221)
      {
        if (*(a2 + 1) == 5888 && a2[4] == 242)
        {
          if (a2[5] == 11)
          {
            return a2 + 9;
          }

LABEL_21:
          result = 0;
          v6 = a2[1] + 2;
          if (v6 >= a3)
          {
            return result;
          }

          a3 -= v6;
          if (a3 <= 5)
          {
            return result;
          }

          goto LABEL_23;
        }

        if (*(a2 + 1) == 768 && a2[4] == 147)
        {
          goto LABEL_21;
        }

        if (*(a2 + 1) == -24576 && a2[4] == 64)
        {
          goto LABEL_21;
        }
      }

      v6 = a2[1] + 2;
      v7 = a3 >= v6;
      a3 -= v6;
      v7 = a3 != 0 && v7 && a3 >= 6;
      if (!v7)
      {
        return 0;
      }

LABEL_23:
      a2 += v6;
    }
  }

  return 0;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::addStaToStaTable(AppleBCMWLANIO80211APSTAInterface *this, unsigned __int8 *a2)
{
  result = AppleBCMWLANIO80211APSTAInterface::addSta(this, a2, &v4);
  if (result)
  {
    result = (*(*this + 1088))(this);
    if (result)
    {
      (*(*this + 1088))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANIO80211APSTAInterface::addStaToStaTable();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::addSta(AppleBCMWLANIO80211APSTAInterface *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = 0;
  v4 = *(this + 17);
  v5 = v4 + 185;
  do
  {
    if (*v5 == *a2 && *(v5 + 4) == *(a2 + 2))
    {
      v11 = 0;
      *a3 = v3;
      return v11;
    }

    ++v3;
    v5 += 48;
  }

  while (v3 != 5);
  v7 = 0;
  v8 = 0;
  v9 = v4 + 185;
  while (*(v9 + v7) || *(v9 + v7 + 4) != 0)
  {
    ++v8;
    v7 += 48;
    if (v8 == 5)
    {
      return 3758097084;
    }
  }

  v11 = 0;
  v12 = v4 + v7;
  v13 = *a2;
  *(v12 + 189) = *(a2 + 2);
  *(v12 + 185) = v13;
  *(*(this + 17) + v7 + 184) = 1;
  *(*(this + 17) + v7 + 200) = 2;
  *a3 = v8;
  ++**(this + 17);
  return v11;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::removeSta(void *this, unsigned __int8 *a2)
{
  v4 = 0;
  v5 = this[17];
  for (i = v5 + 185; *i != *a2 || *(i + 2) != *(a2 + 2); i += 48)
  {
    if (++v4 == 5)
    {
      return 3758097084;
    }
  }

  if (*v5)
  {
    --*v5;
  }

  else if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::removeSta();
    }
  }

  v9 = this[17];
  if (*(v9 + 676))
  {
    v10 = 0;
    do
    {
      (*(**(v9 + 8 * v10 + 768) + 248))(*(v9 + 8 * v10 + 768), a2);
      ++v10;
      v9 = this[17];
    }

    while (v10 < *(v9 + 676));
  }

  return AppleBCMWLANIO80211APSTAInterface::removeStaFromStaTable(this, v4);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::releaseSoftAPPowerAssertion(void *this)
{
  v3 = 0;
  *(this[17] + 12) = 0;
  AppleBCMWLANCore::postMessageInfra(*(this[17] + 536), 0x8Du, &v3, 4uLL);
  result = (*(*this + 1088))(this);
  if (result)
  {
    (*(*this + 1088))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANIO80211APSTAInterface::releaseSoftAPPowerAssertion();
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::softApStatsAccumulatePowerStateDuration(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a1 + 136) + 16 * a2;
  *(v4 + 464) += a3;
  mach_continuous_time();
  result = absolutetime_to_nanoseconds();
  *(*(a1 + 136) + 424) = 0;
  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::monitorInfraConcurrencyState(uint64_t this)
{
  v2 = this + 136;
  result = AppleBCMWLANCore::isConcurrencyOpModeSet(*(*(this + 136) + 536), 1);
  v4 = result;
  v5 = *(*v2 + 520);
  *(*v2 + 520) = result;
  if (v5 != result || *(*v2 + 98) == 1)
  {
    if ((*(*this + 1088))(this))
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::monitorInfraConcurrencyState(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v5 != v4, v2);
      }
    }

    result = AppleBCMWLANIO80211APSTAInterface::programAppleVendorIE(this);
    *(*(this + 136) + 98) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::runPowerSaveStateMachine(AppleBCMWLANIO80211APSTAInterface *this)
{
  StaInactivityPeriodSecs = AppleBCMWLANIO80211APSTAInterface::getStaInactivityPeriodSecs(this);
  v3 = *(this + 17);
  v4 = *(v3 + 160);
  v5 = AppleBCMWLANCore::isConcurrencyOpModeSet(*(v3 + 536), 16) && AppleBCMWLANCore::isConcurrencyOpModeSet(*(*(this + 17) + 536), 8);
  if (AppleBCMWLANCore::isNanPhFeatureEnabled(*(*(this + 17) + 536)))
  {
    v6 = !v5;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v4 += AppleBCMWLANCore::getNanRxPktCounter(*(*(this + 17) + 536));
  }

  v7 = *(*(this + 17) + 144);
  memset(buf, 0, 32);
  (*(*this + 872))(this, buf);
  v8 = vaddvq_s64(vaddq_s64(*&buf[16], *buf));
  if (v7)
  {
    v9 = v4 - v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(this + 17);
  v11 = *(v10 + 152);
  v12 = v8 - v11;
  if (!v11)
  {
    v12 = 0;
  }

  *(v10 + 440) += v9;
  *(*(this + 17) + 448) += v12;
  *(*(this + 17) + 144) = v4;
  *(*(this + 17) + 152) = v8;
  result = AppleBCMWLANIO80211APSTAInterface::isSoftAPConcurrencyEnabled(this);
  v14 = *(this + 17);
  if ((result & 1) != 0 || v9 >= *(v14 + 36))
  {
    *(v14 + 100) = 0;
  }

  else
  {
    ++*(v14 + 100);
  }

  v15 = *(this + 17);
  if (*(v15 + 14) == 1)
  {
    v16 = *(v15 + 16);
    if (v16 == 3)
    {
      if (*(v15 + 100))
      {
        return result;
      }

      v17 = 1;
    }

    else if (v16 == 2)
    {
      v18 = *(v15 + 100);
      if (v18)
      {
        if (v18 < *(v15 + 28))
        {
          return result;
        }
      }

      else
      {
        AppleBCMWLANIO80211APSTAInterface::setPowerSaveState(this, 1, 4);
        if (*(*(this + 17) + 100) < *(*(this + 17) + 28))
        {
LABEL_32:
          if (!(*(*this + 1088))(this) || ((*(*this + 1088))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              v19 = *(*(this + 17) + 100);
              *buf = 67110914;
              *&buf[4] = 65;
              *&buf[8] = 2080;
              *&buf[10] = "runPowerSaveStateMachine";
              *&buf[18] = 1024;
              *&buf[20] = 5154;
              *&buf[24] = 2080;
              *&buf[26] = "runPowerSaveStateMachine";
              v22 = 2048;
              v23 = v4;
              v24 = 2048;
              v25 = v9;
              v26 = 1024;
              v27 = v19;
              v28 = 1024;
              v29 = StaInactivityPeriodSecs;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: %s: LPHS PS state changed due to, rx packets %llu, delta %llu, lowTrafficTime %d, inactiveTime %d\n", buf, 0x42u);
            }
          }

          result = (*(*this + 1088))(this);
          if (result)
          {
            (*(*this + 1088))(this);
            result = CCLogStream::shouldLog();
            if (result)
            {
              v20 = (*(*this + 1088))(this);
              result = CCLogStream::logAlert(v20, "[dk] %s@%d:%s: LPHS PS state changed due to, rx packets %llu, delta %llu, lowTrafficTime %d, inactiveTime %d\n", "runPowerSaveStateMachine", 5154, "runPowerSaveStateMachine", v4, v9, *(*(this + 17) + 100), StaInactivityPeriodSecs);
            }
          }

          *(*(this + 17) + 100) = 0;
          return result;
        }
      }

      v17 = 3;
    }

    else
    {
      if (v16 != 1 || *(v15 + 100) < *(v15 + 24))
      {
        return result;
      }

      v17 = 2;
    }

    AppleBCMWLANIO80211APSTAInterface::setPowerSaveState(this, v17, 4);
    goto LABEL_32;
  }

  return result;
}

const char *AppleBCMWLANIO80211APSTAInterface::powerStateChangeReasonToString(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xE)
  {
    return "Unknown";
  }

  else
  {
    return off_1003CC730[a2];
  }
}

AppleBCMWLANIO80211APSTAInterface *AppleBCMWLANIO80211APSTAInterface::configureSoftAPPowerSaveOff(AppleBCMWLANIO80211APSTAInterface *this, int a2)
{
  v2 = this;
  if (a2 == 12 || a2 == 10)
  {
    this = AppleBCMWLANIO80211APSTAInterface::releaseSoftAPPowerAssertion(this);
  }

  *(*(v2 + 17) + 100) = 0;
  if (*(*(v2 + 17) + 620))
  {
    AppleBCMWLANIO80211APSTAInterface::configureLowPowerModeExit(v2);

    return AppleBCMWLANIO80211APSTAInterface::setBeaconDutyCycle(v2, 0);
  }

  return this;
}

AppleBCMWLANIO80211APSTAInterface *AppleBCMWLANIO80211APSTAInterface::configureSoftAPPowerSaveActive(AppleBCMWLANIO80211APSTAInterface *this)
{
  if (*(*(this + 17) + 620))
  {
    v1 = this;
    AppleBCMWLANIO80211APSTAInterface::holdSoftAPPowerAssertion(this);
    AppleBCMWLANIO80211APSTAInterface::configureLowPowerModeExit(v1);
    this = AppleBCMWLANIO80211APSTAInterface::setBeaconDutyCycle(v1, 0);
    *(*(v1 + 17) + 100) = 0;
  }

  return this;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureSoftAPPowerSaveDynamic(AppleBCMWLANIO80211APSTAInterface *this)
{
  AppleBCMWLANIO80211APSTAInterface::setBeaconDutyCycle(this, 1);
  AppleBCMWLANIO80211APSTAInterface::configureBeaconDutyCycleParams(this, *(*(this + 17) + 40));

  return AppleBCMWLANIO80211APSTAInterface::releaseSoftAPPowerAssertion(this);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureSoftAPPowerSaveLow(AppleBCMWLANIO80211APSTAInterface *this)
{
  AppleBCMWLANIO80211APSTAInterface::setBeaconDutyCycle(this, 1);
  AppleBCMWLANIO80211APSTAInterface::configureBeaconDutyCycleParams(this, *(*(this + 17) + 40));
  AppleBCMWLANIO80211APSTAInterface::configureLowPowerModeEntry(this);

  return AppleBCMWLANIO80211APSTAInterface::releaseSoftAPPowerAssertion(this);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getStaInactivityPeriodSecs(AppleBCMWLANIO80211APSTAInterface *this)
{
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  result = 0;
  v3 = (*(this + 17) + 192);
  v4 = 5;
  do
  {
    if (*(v3 - 8) == 1)
    {
      v5 = -*v3 / 0x3B9ACA00uLL;
      if (result >= v5)
      {
        v6 = -*v3 / 0x3B9ACA00uLL;
      }

      else
      {
        v6 = result;
      }

      if (result)
      {
        result = v6;
      }

      else
      {
        result = v5;
      }
    }

    v3 += 6;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::forwardPacket(uint64_t a1, uint64_t a2)
{
  v2 = *(**(*(a1 + 136) + 8 * ((*(*a2 + 288))(a2) >> 7) + 768) + 184);

  return v2();
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::forwardPacket(uint64_t a1, uint64_t a2)
{
  v2 = *(**(*(a1 + 40) + 8 * ((*(*a2 + 288))(a2) >> 7) + 768) + 184);

  return v2();
}

uint64_t AppleBCMWLANIO80211APSTAInterface::enable(AppleBCMWLANIO80211APSTAInterface *this, unsigned int a2)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::enable();
    }
  }

  v4 = IO80211SkywalkInterface::enable(this, a2);
  (*(*this + 1232))(this);
  return v4;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setMIS_MAX_STA(IO80211SkywalkInterface *a1, int *a2)
{
  if (*(*(a1 + 17) + 620))
  {
    AppleBCMWLANIO80211APSTAInterface::setMaxAssoc(a1, *a2);
  }

  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::setMIS_MAX_STA(uint64_t a1, int *a2)
{
  if (*(*(a1 + 24) + 620))
  {
    AppleBCMWLANIO80211APSTAInterface::setMaxAssoc((a1 - 112), *a2);
  }

  return 0;
}

{
  if (*(*(a1 + 8) + 620))
  {
    AppleBCMWLANIO80211APSTAInterface::setMaxAssoc((a1 - 128), *a2);
  }

  return 0;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::disable(AppleBCMWLANIO80211APSTAInterface *this, unsigned int a2)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::disable();
    }
  }

  (*(*this + 1240))(this);
  IO80211SkywalkInterface::disable(this, a2);
  result = (*(*this + 1088))(this);
  if (result)
  {
    (*(*this + 1088))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANIO80211APSTAInterface::disable();
    }
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::enableDatapath(void *this)
{
  v2 = (*(*this + 1064))(this);
  v3 = (*(*this + 1088))(this);
  if (v2)
  {
    if (v3)
    {
      (*(*this + 1088))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::enableDatapath();
      }
    }

    (*(**(this[17] + 720) + 64))(*(this[17] + 720), this);
    v4 = *(this[17] + 744);
    if (v4)
    {
      (*(*v4 + 192))(v4);
      v5 = *(this[17] + 752);
      if (v5)
      {
        (*(*v5 + 200))(v5);
        v6 = (*(**(this[17] + 752) + 120))(*(this[17] + 752), 0, 0);
        if (v6)
        {
          if ((*(*this + 1088))(this))
          {
            (*(*this + 1088))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANIO80211APSTAInterface::enableDatapath();
            }
          }

          return 0;
        }

        return v6;
      }

      AppleBCMWLANIO80211APSTAInterface::enableDatapath();
    }

    else
    {
      AppleBCMWLANIO80211APSTAInterface::enableDatapath();
    }
  }

  else
  {
    AppleBCMWLANIO80211APSTAInterface::enableDatapath(v3 == 0, this);
  }

  v6 = 3758097084;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::enableDatapath();
    }
  }

  return v6;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::disableDatapath(void *this)
{
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::disableDatapath();
    }
  }

  (*(**(this[17] + 720) + 72))(*(this[17] + 720), this);
  v2 = *(this[17] + 752);
  if (v2)
  {
    (*(*v2 + 208))(v2);
    v3 = *(this[17] + 744);
    if (v3)
    {
      (*(*v3 + 200))(v3);
      return 0;
    }

    AppleBCMWLANIO80211APSTAInterface::disableDatapath();
  }

  else
  {
    AppleBCMWLANIO80211APSTAInterface::disableDatapath();
  }

  v4 = 3758097084;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::disableDatapath();
    }
  }

  return v4;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::getTxSubQueue(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 136);
  v3 = *(v2 + 4 * a2 + 696);
  if (v3 >= *(v2 + 676))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * v3 + 768);
  }
}

uint64_t non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::getTxSubQueue(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 56);
  v3 = *(v2 + 4 * a2 + 696);
  if (v3 >= *(v2 + 676))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * v3 + 768);
  }
}

AppleBCMWLANSkywalkTxSubmissionQueue *AppleBCMWLANIO80211APSTAInterface::getTxQueueDepth(AppleBCMWLANIO80211APSTAInterface *this)
{
  result = *(*(this + 17) + 768);
  if (result)
  {
    return AppleBCMWLANSkywalkTxSubmissionQueue::getQueueDepth(result);
  }

  return result;
}

AppleBCMWLANSkywalkTxSubmissionQueue *non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::getTxQueueDepth(AppleBCMWLANIO80211APSTAInterface *this)
{
  result = *(*(this + 7) + 768);
  if (result)
  {
    return AppleBCMWLANSkywalkTxSubmissionQueue::getQueueDepth(result);
  }

  return result;
}

AppleBCMWLANSkywalkRxCompletionQueue *AppleBCMWLANIO80211APSTAInterface::getRxQueueCapacity(AppleBCMWLANIO80211APSTAInterface *this)
{
  result = *(*(this + 17) + 752);
  if (result)
  {
    return AppleBCMWLANSkywalkRxCompletionQueue::getQueueCapacity(result);
  }

  return result;
}

AppleBCMWLANSkywalkRxCompletionQueue *non-virtual thunk toAppleBCMWLANIO80211APSTAInterface::getRxQueueCapacity(AppleBCMWLANIO80211APSTAInterface *this)
{
  result = *(*(this + 7) + 752);
  if (result)
  {
    return AppleBCMWLANSkywalkRxCompletionQueue::getQueueCapacity(result);
  }

  return result;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::printDataPath(IO80211SkywalkInterface *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 28);
  v6 = *(a2 + 32);
  v7 = *(a2 + 24);
  if ((*(*a1 + 1088))(a1))
  {
    (*(*a1 + 1088))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::printDataPath(a1);
    }
  }

  v8 = (*(*a1 + 1088))(a1);
  InterfaceRoleStr = IO80211SkywalkInterface::getInterfaceRoleStr(a1);
  v10 = (*(*a1 + 160))(a1);
  v11 = IO80211Print(v8, 5, -1, 0, v4, v6 + v5, v7 - v6, "InterfaceRole:%s bsdname:%s\n", InterfaceRoleStr, v10) + v6;
  if (*(*(a1 + 17) + 676))
  {
    v12 = 0;
    do
    {
      v13 = (*(*a1 + 1088))(a1);
      v14 = IO80211Print(v13, 5, -1, 0, v4, v11 + v5, v7 - v11, "Dumping TxSubQueue:%u status\n", v12);
      v11 = (*(**(*(a1 + 17) + 8 * v12 + 768) + 216))(*(*(a1 + 17) + 8 * v12 + 768), v4, v5, v7, v14 + v11);
      ++v12;
    }

    while (v12 < *(*(a1 + 17) + 676));
  }

  v15 = (*(*a1 + 1088))(a1);
  v16 = IO80211Print(v15, 5, -1, 0, v4, v11 + v5, v7 - v11, "Logging TX Completion Queue Status\n");
  v17 = (*(**(*(a1 + 17) + 744) + 176))(*(*(a1 + 17) + 744), v4, v5, v7, v16 + v11);
  v18 = (*(*a1 + 1088))(a1);
  v19 = IO80211Print(v18, 5, -1, 0, v4, v17 + v5, v7 - v17, "Logging RX Completion Queue Status\n");
  v20 = (*(**(*(a1 + 17) + 752) + 184))(*(*(a1 + 17) + 752), v4, v5, v7, v19 + v17);
  v21 = *(a2 + 28) + v20;
  *(a2 + 24) -= v20;
  *(a2 + 28) = v21;
  IO80211VirtualInterface::printDataPath();
  return 0;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::setMacAddress(uint64_t this, ether_addr *a2)
{
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
  v5 = *(this + 136);
  v6 = *(v5 + 620);
  if (InterfaceId == -1)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else if (!v6)
  {
    v7 = *(v5 + 552);
    v10[0] = a2;
    v10[1] = 6;
    return AppleBCMWLANCommander::runVirtualIOVarSet(v7, InterfaceId, "cur_etheraddr", v10, 0, 0);
  }

  v8 = 3758097084;
  if ((*(*this + 1088))(this))
  {
    (*(*this + 1088))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANIO80211APSTAInterface::setMacAddress(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, this + 136, InterfaceId);
    }
  }

  return v8;
}

uint64_t AppleBCMWLANIO80211APSTAInterface::configureSoftAPPeerStats(AppleBCMWLANIO80211APSTAInterface *this, uint64_t a2)
{
  v2 = a2;
  if (!AppleBCMWLANCore::checkForSoftAPStatsSupport(*(*(this + 17) + 536)))
  {
    return AppleBCMWLANIO80211APSTAInterface::configureSoftAPPeerStats(this);
  }

  v15 = 0;
  v16 = 0;
  v18 = 0;
  v17 = 0;
  v14 = 524290;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  HIWORD(v15) = v4;
  v5 = IOMallocZeroTyped();
  if (v5)
  {
    v6 = v5;
    *v5 = v2;
    *&v12 = this;
    *(&v12 + 1) = AppleBCMWLANIO80211APSTAInterface::handleSoftAPStatsConfigAsyncCallback;
    v13 = v5;
    v7 = *(*(this + 17) + 552);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(this);
    v11[0] = &v14;
    v11[1] = 14;
    result = AppleBCMWLANCommander::sendVirtualIOVarSet(v7, InterfaceId, "softap_stats", v11, kNoRxExpected, &v12, 0);
    if (!result)
    {
      return result;
    }

    v10 = result;
    IOFree(v6, 1uLL);
  }

  else
  {
    v10 = 3758097084;
  }

  return AppleBCMWLANIO80211APSTAInterface::configureSoftAPPeerStats(this, v2, v10);
}

uint64_t AppleBCMWLANIO80211APSTAInterface::handleSoftAPStatsConfigAsyncCallback(unint64_t a1, int a2, uint64_t a3, int a4, char *address)
{
  if (address)
  {
    v7 = *address;
    IOFree(address, 1uLL);
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(*a1 + 1088))(a1);
  if (a3)
  {
    if (v8)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::handleSoftAPStatsConfigAsyncCallback(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v7 & 1, a3);
      }
    }
  }

  else
  {
    if (v8)
    {
      (*(*a1 + 1088))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANIO80211APSTAInterface::handleSoftAPStatsConfigAsyncCallback();
      }
    }

    *(*(a1 + 136) + 808) = v7 & 1;
  }

  return a3;
}

OSObject *AppleBCMWLANDynamicRingOperationContext::withCompletion(__int128 *a1)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANDynamicRingOperationContextMetaClass, &v4))
  {
    return 0;
  }

  v2 = v4;
  if (v4 && (AppleBCMWLANDynamicRingOperationContext::initWithCompletion(v4, a1) & 1) == 0)
  {
    (v2->release)(v2);
    return 0;
  }

  return v2;
}

void AppleBCMWLANDynamicRingOperationContext::free(OSObject *this)
{
  v2 = this[1].OSMetaClassBase::__vftable;
  if (v2)
  {
    if (v2->free)
    {
      IOFree(v2->free, 0x18uLL);
      this[1].free = 0;
      v2 = this[1].OSMetaClassBase::__vftable;
    }

    memset_s(v2, 0x38uLL, 0, 0x38uLL);
    v3 = this[1].OSMetaClassBase::__vftable;
    if (v3)
    {
      IOFree(v3, 0x38uLL);
      this[1].OSMetaClassBase::__vftable = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANDynamicRingOperationContext::getContextFromLink(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

OSObject *AppleBCMWLANObjectQueue::withCapacity(AppleBCMWLANObjectQueue *this)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANObjectQueueMetaClass, &v4))
  {
    return 0;
  }

  v2 = v4;
  if (v4 && ((v4->OSMetaClassBase::__vftable[1].release)(v4, this) & 1) == 0)
  {
    (v2->release)(v2);
    return 0;
  }

  return v2;
}

uint64_t AppleBCMWLANObjectQueue::initWithCapacity(OSObject *this, unsigned int a2)
{
  result = OSObject::init(this);
  if (result)
  {
    result = IOMallocZeroTyped();
    *&this[1].refcount = result;
    if (result)
    {
      if (a2 >= 4)
      {
        v5.i32[0] = a2;
        v6 = vcnt_s8(v5);
        v6.i16[0] = vaddlv_u8(v6);
        if (v6.i32[0] <= 1u)
        {
          *result = a2;
          *(*&this[1].refcount + 16) = IOMallocZeroTyped();
          result = *&this[1].refcount;
          if (*(result + 16))
          {
            return 1;
          }
        }
      }
    }

    else
    {
      IOLog("Failed to allocate AppleBCMWLANObjectQueue_IVars\n");
      result = *&this[1].refcount;
      if (!result)
      {
        return result;
      }
    }

    memset_s(result, 0x18uLL, 0, 0x18uLL);
    result = *&this[1].refcount;
    if (result)
    {
      IOFree(result, 0x18uLL);
      result = 0;
      *&this[1].refcount = 0;
    }
  }

  return result;
}

void AppleBCMWLANObjectQueue::free(OSObject *this)
{
  v2 = *&this[1].refcount;
  if (!v2[2])
  {
    goto LABEL_9;
  }

  if ((this->OSMetaClassBase::__vftable[1].getMetaClass)(this))
  {
    panic("Freeing non-empty queue %p", this);
  }

  while ((this->OSMetaClassBase::__vftable[1].getMetaClass)(this))
  {
    AppleBCMWLANObjectQueue::dequeue(this);
  }

  v3 = *&this[1].refcount;
  v4 = *(v3 + 2);
  if (v4)
  {
    IOFree(v4, 8 * *v3);
    *(*&this[1].refcount + 16) = 0;
    v3 = *&this[1].refcount;
  }

  *(v3 + 2) = 0;
  v2 = *&this[1].refcount;
  if (v2)
  {
LABEL_9:
    memset_s(v2, 0x18uLL, 0, 0x18uLL);
    v5 = *&this[1].refcount;
    if (v5)
    {
      IOFree(v5, 0x18uLL);
      *&this[1].refcount = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANObjectQueue::dequeue(AppleBCMWLANObjectQueue *this)
{
  v1 = *(this + 6);
  v2 = *(v1 + 8);
  if (*(v1 + 12) == v2)
  {
    return 0;
  }

  v3 = *(*(v1 + 16) + 8 * v2);
  if (v3)
  {
    (*(*v3 + 16))(v3);
    *(*(*(this + 6) + 16) + 8 * *(*(this + 6) + 8)) = 0;
    v1 = *(this + 6);
  }

  --*(v1 + 4);
  *(*(this + 6) + 8) = (**(this + 6) - 1) & (*(*(this + 6) + 8) + 1);
  return v3;
}

uint64_t AppleBCMWLANObjectQueue::enqueue(AppleBCMWLANObjectQueue *this, OSObject *a2)
{
  v2 = *(this + 6);
  v3 = *(v2 + 12);
  if (((*v2 - 1) & (v3 + 1)) == *(v2 + 8))
  {
    return 3758097115;
  }

  *(*(v2 + 16) + 8 * v3) = a2;
  (a2->retain)(a2);
  result = 0;
  ++*(*(this + 6) + 4);
  *(*(this + 6) + 12) = (**(this + 6) - 1) & (*(*(this + 6) + 12) + 1);
  return result;
}

uint64_t AppleBCMWLANSacAgent::free(AppleBCMWLANSacAgent *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    IOFree(v2, 1uLL);
    *(this + 7) = 0;
  }

  return IO80211SacAgent::free(this);
}

AppleBCMWLANSacAgent *AppleBCMWLANSacAgent::withOptions(AppleBCMWLANSacAgent *this, IO80211Controller *a2, IOService *a3)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANSacAgentMetaClass, &v7))
  {
    return 0;
  }

  v5 = v7;
  if (v7 && (AppleBCMWLANSacAgent::initWithOptions(v7, this, v4) & 1) == 0)
  {
    (*(*v5 + 16))(v5);
    return 0;
  }

  return v5;
}