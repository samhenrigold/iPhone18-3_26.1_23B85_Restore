__n128 __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN19AppleBCMWLANCoreDbg16injectBeaconMitiEP24apple80211_debug_commandP16AppleBCMWLANCore_block_invoke(uint64_t a1)
{
  NetAdapter = AppleBCMWLANCore::getNetAdapter(*(a1 + 40));
  v3 = *(*(a1 + 32) + 8) + 40;

  return AppleBCMWLANNetAdapter::handleBeaconMuteMitigation(NetAdapter, v3);
}

uint64_t AppleBCMWLANCoreDbg::injectDeauth(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v11 = 0;
  v12 = &v11;
  v13 = 0x5802000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  DWORD1(v16) = 6;
  if (AppleBCMWLANCore::getBssManager(a2))
  {
    BssManager = AppleBCMWLANCore::getBssManager(a2);
    if (AppleBCMWLANBssManager::getCurrentBSS(BssManager))
    {
      v5 = AppleBCMWLANCore::getBssManager(a2);
      CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(v5);
      (*(*CurrentBSS + 136))(CurrentBSS, v12 + 8);
    }
  }

  v7 = (*(*a2 + 88))(a2);
  v8 = (*(*v7 + 168))(v7);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = ___ZN19AppleBCMWLANCoreDbg12injectDeauthEP24apple80211_debug_commandP16AppleBCMWLANCore_block_invoke;
  v10[4] = &v11;
  v10[5] = a2;
  v10[3] = &__block_descriptor_tmp_440;
  IODispatchQueue::DispatchAsync(v8, v10);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  _Block_object_dispose(&v11, 8);
  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdMissingCCLogFiles(uint64_t a1, AppleBCMWLANCore *a2)
{
  (*(*a2 + 1952))(a2);
  v4 = IO80211CoreDbg::parseUInt32FromCMD();
  Bus = AppleBCMWLANCore::getBus(a2);
  AppleBCMWLANBusInterface::setCCLogDebugFlags(Bus, v4);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdEnableDisableAdaptiveRoaming(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 3758097095;
}

uint64_t AppleBCMWLANCoreDbg::cmdEnableDisableGarp(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdConfigureBcnlossCoreCapture(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = strlen((a1 + 10));
  if (!strncmp((a1 + 10), "bcnlosscc", v8))
  {
    BcnLossCCState = AppleBCMWLANCore::getBcnLossCCState(a2);
    v11 = "Disabled";
    if (BcnLossCCState)
    {
      v11 = "Enabled";
    }

    v12 = IO80211Print(v7, 5, -1, 0, v5, 0, v6, "Beacon loss CC is = %s\n", v11);
  }

  else
  {
    if (!strncmp((a1 + 20), "enable,", 7uLL))
    {
      v9 = IO80211CoreDbg::parseUInt32FromCMD();
    }

    else
    {
      v9 = 5;
    }

    AppleBCMWLANCore::dbgConfigureBcnlossCoreCapture(a2, v9);
    v12 = IO80211Print(v7, 5, -1, 0, v5, 0, v6, "Setting CC threshold to %d link downs due to bcn loss day \n", v9);
  }

  if (a1)
  {
    *(v4 + 3520) = v12;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdConfigureTrafficEngineering(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetRoamInfo(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  v8 = strlen((a1 + 10));
  if (!strncmp((a1 + 10), "roamInfo", v8))
  {
    v35 = a1;
    v36 = v4;
    v11 = 0;
    LODWORD(v9) = 0;
    v12 = -1800;
    v37 = v5;
    v38 = v7;
    do
    {
      v13 = IO80211Print(v7, 5, -1, 0, v5, v9, v6 - v9, "\n");
      v14 = (a2[9] + v12);
      v15 = (v9 + v13);
      v16 = v15 + IO80211Print(v7, 5, -1, 0, v5, v15, v6 - v15, "RoamInfo[%d]: SrcBSS: %x:%x:%x:%x:%x:%x DstBSS: %x:%x:%x:%x:%x:%x \n", v11, v14[14080], v14[14081], v14[14082], v14[14083], v14[14084], v14[14085], v14[14086], v14[14087], v14[14088], v14[14089], v14[14090], v14[14091]);
      v17 = (a2[9] + v12);
      v18 = v17[3645];
      v19 = v17[3506];
      v20 = v11;
      v21 = v17[3507];
      v22 = v17[3508];
      v23 = v17[3509];
      v24 = stringFromReason(19, v18);
      v25 = a2[9] + v12;
      v26 = *(v25 + 14008) - *(v25 + 14000);
      v27 = *(v25 + 14588) == 0;
      v28 = "Yes";
      if (v27)
      {
        v28 = "No";
      }

      v33 = v19;
      v34 = v21;
      v29 = v20;
      v5 = v37;
      v7 = v38;
      v30 = v16 + IO80211Print(v38, 5, -1, 0, v37, v16, v6 - v16, "OrigRSSI: %d TargetRSSI: %d OrigChannel: %d TargetChannel: %d Reason: %d %s, RoamTime: %llums isScoreComputed: %s\n", v33, v34, v22, v23, v18, v24, v26, v28);
      v31 = (a2[9] + v12 + 12780);
      v32 = v30 + IO80211Print(v38, 5, -1, 0, v37, v30, v6 - v30, "NumRoamScanAttempts: %d NumFullBand: %d NumPartial:%d NumRoamAborts: %d NumRoamOperationTimeouts: %d NumRoamOperationFailed: %d PacketsLost AQM: %d PacketLost SubQ: %d \n", v31[1366], v31[1365], v31[1367], v31[1368], v31[1369], v31[1370], v31[1372], v31[1373]);
      v9 = v32 + IO80211Print(v38, 5, -1, 0, v37, v32, v6 - v32, "\n");
      v11 = v29 + 1;
      v12 += 600;
    }

    while (v12);
    v4 = v36;
    if (v35)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    if (a1)
    {
LABEL_6:
      *(v4 + 3520) = v9;
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdEnableDisableCongestionControl(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdTrafficEngPacketRateConfig(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdConfigureDequeueRatio(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 1952))(a2);
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetPktLifetime(uint64_t a1, void *a2)
{
  v4 = (*(*a2 + 1952))(a2);
  v15 = 0;
  v5 = *(a1 + 19);
  if (v5 == 118)
  {
    v7 = *(a1 + 20);
    if (v7 == 111)
    {
      v8 = 3;
    }

    else
    {
      v8 = 0;
    }

    if (v7 == 105)
    {
      v6 = 2;
    }

    else
    {
      v6 = v8;
    }
  }

  else
  {
    v6 = v5 == 98 && *(a1 + 20) == 107;
  }

  LODWORD(v15) = v6;
  v14[0] = &v15;
  v14[1] = 0x800080008;
  v9 = *(a2[9] + 5408);
  v13[0] = &v15;
  v13[1] = 8;
  v10 = AppleBCMWLANCommander::runIOVarGet(v9, "lifetime", v13, v14, 0);
  if (v10)
  {
    if (v4 && CCLogStream::shouldLog())
    {
      v11 = (*(*a2 + 112))(a2, v10);
      CCLogStream::logAlert(v4, "[dk] %s@%d: Error: Unable to get packet lifetime. ret %s\n", "cmdGetPktLifetime", 5070, v11);
    }
  }

  else
  {
    v13[0] = v15;
    IO80211CoreDbg::pktLifetimePrint();
  }

  *(a1 + 245184) = 0;
  return v10;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetBTMRssiThreshold(uint64_t a1, void *a2)
{
  v4 = (*(*a2 + 1952))(a2);
  v11 = 0;
  v10[0] = &v11;
  v10[1] = 0x400040004;
  v5 = *(a2[9] + 5408);
  v9[0] = &v11;
  v9[1] = 4;
  v6 = AppleBCMWLANCommander::runIOVarGet(v5, "wnm_btm_rssi_thresh", v9, v10, 0);
  if (v6)
  {
    if (v4 && CCLogStream::shouldLog())
    {
      v7 = (*(*a2 + 112))(a2, v6);
      CCLogStream::logAlert(v4, "[dk] %s@%d: Error: Failed to Get BTM Rssi Threshold :  Ret %s\n", "cmdGetBTMRssiThreshold", 5094, v7);
    }
  }

  else
  {
    IO80211CoreDbg::btmThresholdCmdPrint();
  }

  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return v6;
}

uint64_t AppleBCMWLANCoreDbg::cmdSOI(uint64_t a1, void *a2)
{
  v4 = (*(*a2 + 1952))(a2);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13[0] = &v10;
  v13[1] = 0x1800180018;
  *__str = &v10;
  v5 = *(a2[9] + 5408);
  *&__str[8] = 24;
  v6 = AppleBCMWLANCommander::runIOVarGet(v5, "pm2_sleep_ret_ext", __str, v13, 0);
  if (v6)
  {
    if (v4 && CCLogStream::shouldLog())
    {
      v7 = (*(*a2 + 112))(a2, v6);
      CCLogStream::logAlert(v4, "[dk] %s@%d:Error: cannot get FRTS state : ret %x: %s\n", "cmdSOI", 5116, v6, v7);
    }
  }

  else
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v28 = v8;
    v29 = v8;
    v26 = v8;
    v27 = v8;
    v24 = v8;
    v25 = v8;
    v22 = v8;
    v23 = v8;
    v20 = v8;
    v21 = v8;
    v18 = v8;
    v19 = v8;
    v16 = v8;
    v17 = v8;
    *__str = v8;
    v15 = v8;
    snprintf(__str, 0x100uLL, "Logic:\t%u\nData SOI Low:\t%u\nData SOI High:\t%u\nRx Pkt Threshold:\t%u\nTx Pkt Threshold:\t%u\nTx Rx Pkt Threshold:\t%u\nRx Bytes Threshold:\t%u\nTx Bytes Threshold:\t%u\nTx Rx Bytes Threshold:\t%u\n", v10, WORD1(v10), WORD2(v10), HIWORD(v10), v11, WORD1(v11), HIDWORD(v11), v12, HIDWORD(v12));
    IO80211CoreDbg::soiCmdPrint();
  }

  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return v6;
}

uint64_t AppleBCMWLANCoreDbg::cmdPwrScanStats(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  if (!IOMallocZeroData())
  {
    return 0;
  }

  AppleBCMWLANCore::featureFlagClearBit(a2, 24);
  if (AppleBCMWLANCore::isAssociated(a2))
  {
    if (!strncmp((a1 + 20), "maincore", 8uLL))
    {
      v9 = 0;
    }

    else if (!strncmp((a1 + 20), "auxcore", 7uLL))
    {
      v9 = 0;
    }

    else if (!strncmp((a1 + 20), "scancore", 8uLL))
    {
      if (!AppleBCMWLANCore::checkForScanCoreSupport(a2) || AppleBCMWLANCore::checkForLPSCDisable(a2))
      {
        if (v7 && CCLogStream::shouldLog())
        {
          AppleBCMWLANCoreDbg::cmdPwrScanStats(a2, a2 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v7);
        }

        v9 = 0;
        goto LABEL_25;
      }

      v9 = 0;
    }

    else
    {
      v8 = (*(*a2 + 112))(a2, 0);
      v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " Error: Failed to Get Scan Power Stats :  Ret %s\n", v8);
    }

    AppleBCMWLANCore::getPowerStatsPerSliceIndex();
    if (v11)
    {
      v10 = v11;
      if (v7 && CCLogStream::shouldLog())
      {
        v12 = (*(*a2 + 112))(a2, v10);
        CCLogStream::logAlert(v7, "[dk] %s@%d: Error: Failed to Get Scan Power Stats:  Ret %s\n", "cmdPwrScanStats", 5170, v12);
      }

      goto LABEL_26;
    }

    IO80211CoreDbg::scanStatsPrint();
  }

  else
  {
    v9 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, " Scan Power Stats : Device unassociated!");
  }

LABEL_25:
  v10 = 0;
LABEL_26:
  if (a1)
  {
    *(v4 + 3520) = v9;
  }

  IOFreeData();
  return v10;
}

uint64_t AppleBCMWLANCoreDbg::cmdTvpmInfo(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = (*(*a2 + 1952))(a2);
  v5 = IOMallocZeroData();
  if (v5)
  {
    v6 = v5;
    *v5 = 0xC000300140001;
    Commander = AppleBCMWLANCore::getCommander(a2);
    v8 = AppleBCMWLANCommander::getMaxCmdRxPayload(Commander) - 5;
    v9 = IOMallocZeroData();
    if (!v9)
    {
      AppleBCMWLANCoreDbg::cmdTvpmInfo();
    }

    v10 = v8 | (v8 << 32) | 0x10000;
    if (v8)
    {
      v11 = v9;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v17[0] = v11;
    v17[1] = v10;
    v12 = *(*(a2 + 9) + 5408);
    v16[0] = v6;
    v16[1] = 20;
    v13 = AppleBCMWLANCommander::runIOVarGet(v12, "tvpm", v16, v17, 0);
    if (v13)
    {
      if (v4 && CCLogStream::shouldLog())
      {
        v14 = (*(*a2 + 112))(a2, v13);
        CCLogStream::logAlert(v4, "[dk] %s@%d:Error: cannot get tvpminfo %s\n", "cmdTvpmInfo", 5216, v14);
      }
    }

    else
    {
      IO80211CoreDbg::tvpmCmdPrint();
    }

    if (a1)
    {
      *(a1 + 245184) = 0;
    }

    IOFreeData();
    IOFreeData();
  }

  else
  {
    if (v4 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(v4, "[dk] %s@%d:No memory\n", "cmdTvpmInfo", 5192);
    }

    return 12;
  }

  return v13;
}

uint64_t AppleBCMWLANCoreDbg::cmdGetHotlistChannel(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = (*(*a2 + 1952))(a2);
  v13[0] = 0;
  v13[1] = 0;
  bzero(v12, 0x5FAuLL);
  *(&v12[1] + 2) = 380;
  v11[0] = v12;
  v11[1] = 0x5F4000405FALL;
  v5 = AppleBCMWLANCommander::runIOVarGet(*(*(a2 + 9) + 5408), "roam_channels_in_hotlist", &kNoTxPayload, v11, 0);
  if (v5)
  {
    if (v4 && CCLogStream::shouldLog())
    {
      v6 = (*(*a2 + 112))(a2, v5);
      CCLogStream::logAlert(v4, "[dk] %s@%d:Error: cannot get roam channel hot list %s\n", "cmdGetHotlistChannel", 5241, v6);
    }
  }

  else
  {
    if (v12[0] >= 7u)
    {
      v7 = 7;
    }

    else
    {
      v7 = v12[0];
    }

    v14 = v7;
    if (v12[0])
    {
      v8 = 0;
      do
      {
        ChanSpecHandler = AppleBCMWLANCore::getChanSpecHandler(a2);
        *(v13 + v8) = AppleBCMWLANChanSpec::getAppleChannelSpec(ChanSpecHandler, LOWORD(v12[v8 + 1]));
        ++v8;
      }

      while (v8 < v14);
    }

    IO80211CoreDbg::hotListChannelsPrint();
  }

  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  return v5;
}

uint64_t AppleBCMWLANCoreDbg::cmdAmpduRxAggr(uint64_t a1, void *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (*(*a2 + 1952))(a2);
  memset(v16, 0, 6);
  v14 = 0;
  v17[0] = v16;
  v17[1] = 0x600060006;
  v8 = *(a2[9] + 5408);
  v13[0] = v16;
  v13[1] = 6;
  v9 = AppleBCMWLANCommander::runIOVarGet(v8, "ampdu_rxaggr", v13, v17, 0);
  if (!v9)
  {
    LOBYTE(v14) = v16[0];
    v15 = *(v16 + 2);
    IO80211CoreDbg::rxAggrStatusCmdPrint();
    v11 = 0;
    if (!a1)
    {
      return v9;
    }

    goto LABEL_6;
  }

  v10 = (*(*a2 + 112))(a2, v9);
  v11 = IO80211Print(v7, 1, -1, 0, v5, 0, v6, "Error: cannot get rx aggregation state : ret %x: %s\n", v9, v10);
  if (a1)
  {
LABEL_6:
    *(v4 + 3520) = v11;
  }

  return v9;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpAmpdu(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = 3758097084;
  v5 = (*(*a2 + 1952))(a2);
  memset(v19, 170, sizeof(v19));
  Commander = AppleBCMWLANCore::getCommander(a2);
  v7 = (AppleBCMWLANCommander::getMaxCmdRxPayload(Commander) - 5);
  v8 = IOMallocZeroData();
  v9 = IOMallocZeroData();
  v10 = v9;
  v11 = v9 == 0;
  if (v8)
  {
    if (v9)
    {
      if (!AppleBCMWLANCore::isAssociated(a2))
      {
        goto LABEL_29;
      }

      if (!strncmp((a1 + 10), "dumpampdu", 9uLL))
      {
        strcpy(v10, "ampdu");
        goto LABEL_23;
      }

      if (*(*(a2 + 9) + 780) < 6u)
      {
        goto LABEL_23;
      }

      v12 = *(a1 + 20);
      if (v12 == 116)
      {
        if (*(a1 + 21) != 120)
        {
          goto LABEL_23;
        }

        v10[8] = 0;
        v13 = "ampdu_tx";
      }

      else
      {
        if (v12 != 114 || *(a1 + 21) != 120)
        {
          goto LABEL_23;
        }

        v10[8] = 0;
        v13 = "ampdu_rx";
      }

      *v10 = *v13;
LABEL_23:
      v19[2] = v10;
      v19[3] = 100;
      v14 = v7 | (v7 << 32) | 0x10000;
      if (v7)
      {
        v15 = v8;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      v19[0] = v15;
      v19[1] = v14;
      v16 = AppleBCMWLANCommander::runIOVarGet(*(*(a2 + 9) + 5408), "dump", &v19[2], v19, 0);
      v4 = v16;
      if ((!v16 || v16 == -469794535) && (*(*(a2 + 9) + 10376) & 1) == 0)
      {
        if (v5 && CCLogStream::shouldLog())
        {
          v18 = (*(*a2 + 112))(a2, v4);
          CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to dump ampdu - %s\n", "cmdDumpAmpdu", 5316, v18);
        }

        goto LABEL_30;
      }

LABEL_29:
      IO80211CoreDbg::ampduDumpCmdPrint();
LABEL_30:
      v11 = 0;
      goto LABEL_31;
    }

    if (v5)
    {
      v11 = 1;
      if (CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(v5, "[dk] %s@%d:ampduReq.isAllocationFailure()\n", "cmdDumpAmpdu", 5296);
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else if (v5 && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(v5, "[dk] %s@%d:ampduResp.isAllocationFailure()\n", "cmdDumpAmpdu", 5295);
  }

LABEL_31:
  if (a1)
  {
    *(a1 + 245184) = 0;
  }

  if (!v11)
  {
    IOFreeData();
  }

  if (v8)
  {
    IOFreeData();
  }

  return v4;
}

uint64_t AppleBCMWLANCoreDbg::cmdDumpAmsdu(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = 3758097084;
  v5 = (*(*a2 + 1952))(a2);
  memset(v17, 170, sizeof(v17));
  Commander = AppleBCMWLANCore::getCommander(a2);
  v7 = (AppleBCMWLANCommander::getMaxCmdRxPayload(Commander) - 5);
  v8 = IOMallocZeroData();
  v9 = IOMallocZeroData();
  v10 = v9;
  v11 = v9 == 0;
  if (v8)
  {
    if (v9)
    {
      if (AppleBCMWLANCore::isAssociated(a2) && !strncmp((a1 + 10), "dumpamsdu", 9uLL) && ((strcpy(v10, "amsdu"), v17[2] = v10, v17[3] = 100, v12 = v7 | (v7 << 32) | 0x10000, v7) ? (v13 = v8) : (v12 = 0, v13 = 0), ((v17[0] = v13, v17[1] = v12, v14 = AppleBCMWLANCommander::runIOVarGet(*(*(a2 + 9) + 5408), "dump", &v17[2], v17, 0), v4 = v14, !v14) || v14 == -469794535) && (*(*(a2 + 9) + 10376) & 1) == 0))
      {
        if (v5 && CCLogStream::shouldLog())
        {
          v16 = (*(*a2 + 112))(a2, v4);
          CCLogStream::logAlert(v5, "[dk] %s@%d:Failed to dump amsdu - %s\n", "cmdDumpAmsdu", 5352, v16);
        }
      }

      else
      {
        IO80211CoreDbg::amsduDumpCmdPrint();
      }

      v11 = 0;
      if (!a1)
      {
        goto LABEL_24;
      }

LABEL_23:
      *(a1 + 245184) = 0;
      goto LABEL_24;
    }

    if (!v5)
    {
      v11 = 1;
      if (!a1)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v11 = 1;
    if (CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(v5, "[dk] %s@%d:amsduReq.isAllocationFailure()\n", "cmdDumpAmsdu", 5343);
    }

    if (a1)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v5 && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(v5, "[dk] %s@%d:amsduResp.isAllocationFailure()\n", "cmdDumpAmsdu", 5342);
    }

    if (a1)
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  if (!v11)
  {
    IOFreeData();
  }

  if (v8)
  {
    IOFreeData();
  }

  return v4;
}

uint64_t AppleBCMWLANCoreDbg::cmdGet6GHzPowerMode(uint64_t a1, AppleBCMWLANCore *a2)
{
  v4 = a1 + 241664;
  if (a1)
  {
    v5 = *(a1 + 245208);
    v6 = *(a1 + 245200);
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = 3758097084;
  v8 = (*(*a2 + 1952))(a2);
  v9 = IOMallocZeroData();
  if (v9)
  {
    v10 = v9;
    if (AppleBCMWLANCore::getBssManager(a2) && (BssManager = AppleBCMWLANCore::getBssManager(a2), IO80211BssManager::isAssociatedOn6G(BssManager)))
    {
      if (AppleBCMWLANCore::getFirmwareInterfaceVersion(a2) < 0x11)
      {
        IO80211Print(v8, 1, -1, 0, v5, 0, v6, "Invalid FW version\n");
        goto LABEL_15;
      }

      *(v10 + 44) = 47;
      *v10 = 7;
      *(v10 + 58) = 12;
      v25[0] = v10;
      v25[1] = 181;
      v24[0] = v10;
      v24[1] = 0xB5000000B5;
      Commander = AppleBCMWLANCore::getCommander(a2);
      v13 = AppleBCMWLANCommander::runIOCtlGet(Commander, 256, v25, v24, 0);
      if (v13)
      {
        v14 = v13;
        IO80211Print(v8, 1, -1, 0, v5, 0, v6, "Unable to get curpower: %d\n", v13);
        v7 = v14;
LABEL_15:
        IOFreeData();
        return v7;
      }

      if (*(v10 + 44) != 47)
      {
        IO80211Print(v8, 1, -1, 0, v5, 0, v6, "Invalid version: %d\n", *(v10 + 44));
        goto LABEL_15;
      }

      v17 = *(v10 + 58);
      if (v17)
      {
        v15 = 0;
        v18 = 0;
        v19 = (v10 + 168);
        do
        {
          if (*v19 == 66 && v19[1] == 1)
          {
            v20 = v19[2];
            v21 = "UNKNOWN";
            if (v20 <= 2)
            {
              v21 = power_mode_table[v20];
            }

            v15 += IO80211Print(v8, 1, -1, 0, v5, v15, v6 - v15, "6GHz Power Mode: %s\n", v21);
            v17 = *(v10 + 58);
          }

          v22 = v19[1];
          v23 = v18 + v22;
          v18 += v22 + 2;
          v19 += v22 + 2;
        }

        while (v17 > (v23 + 2));
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = IO80211Print(v8, 1, -1, 0, v5, 0, v6, "get6GHzPowerMode query is only available during 6E connection\n");
    }

    v7 = 0;
    if (a1)
    {
      *(v4 + 3520) = v15;
    }

    goto LABEL_15;
  }

  return 3758097085;
}

OSObject *AppleBCMWLANPCIeSkywalk::withProviderAndCapacity(OSObject *this, AppleBCMWLANBusInterfacePCIe *a2, int a3, int a4, int a5, int a6, CCLogStream *a7, CCLogStream *a8, CCFaultReporter *a9)
{
  v15 = a2;
  pObject = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeSkywalkMetaClass, &pObject))
  {
    return 0;
  }

  v17 = pObject;
  if (pObject && (AppleBCMWLANPCIeSkywalk::initWithProviderAndCapacity(pObject, this, v15, a3, a4, a5, a6, a7, a8) & 1) == 0)
  {
    (v17->release)(v17);
    return 0;
  }

  return v17;
}

uint64_t AppleBCMWLANPCIeSkywalk::allocSkywalkCommonResources(AppleBCMWLANPCIeSkywalk *this, OSObject *a2)
{
  v20 = 0;
  v21 = 0;
  v5 = (this + 56);
  v4 = *(this + 7);
  v6 = *(v4 + 36);
  v17 = v6;
  v18 = v6;
  v19 = 1;
  HIDWORD(v20) = 805306368;
  if (v4[7])
  {
    if (*v4)
    {
      shouldLog = CCLogStream::shouldLog();
      v4 = *v5;
      if (shouldLog)
      {
        CCLogStream::logAlert(*v4, "[dk] %s@%d:common resource packet pool already allocated, skip to allocate again\n", "allocSkywalkCommonResources", 327);
        v4 = *v5;
      }
    }
  }

  else
  {
    (*v5)[7] = AppleBCMWLANPCIeSkywalkPacketPool::withName("AppleBCMWLANSkywalkPool", v4[6], *v4, v4[2], &v17);
    v4 = *v5;
    if (!(*v5)[7])
    {
      v8 = 3758097086;
      if (*v4 && CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalk::allocSkywalkCommonResources(v5);
      }

      return v8;
    }
  }

  if (v4[8])
  {
    if (*v4 && CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalk::allocSkywalkCommonResources(v5);
    }

    goto LABEL_10;
  }

  v10 = OSMetaClassBase::safeMetaCast(v4[6], gAppleBCMWLANBusInterfacePCIeMetaClass);
  (*v5)[8] = AppleBCMWLANPCIeSkywalkRxSubmissionQueue::withProviderAndQueueInfoAndPool(v10, a2, 0, 0, *(*v5 + 8), (*v5)[7], **v5, (*v5)[2], v16);
  v11 = *v5;
  if ((*v5)[8])
  {
    ActionRxSubmissionQueueDataAvailable = AppleBCMWLANBusInterfacePCIe::CreateActionRxSubmissionQueueDataAvailable(v11[6], 0, v11 + 22);
    v13 = *v5;
    if (ActionRxSubmissionQueueDataAvailable)
    {
      v8 = ActionRxSubmissionQueueDataAvailable;
      if (*v13 && CCLogStream::shouldLog())
      {
        CCLogStream::logEmergency(**v5, "[dk] %s@%d:Failed to allocate osaction RXSubmissionQueueDataAvailable, ret:%d\n", "allocSkywalkCommonResources", 360, v8);
      }
    }

    else
    {
      (*(*v13[8] + 72))(v13[8], v13 + 23);
      v14 = *v5;
      v15 = (*v5)[23];
      if (v15)
      {
        IODataQueueDispatchSource::SetDataAvailableHandler(v15, v14[22], 0);
LABEL_10:
        (*(**(*(this + 7) + 48) + 80))(*(*(this + 7) + 48));
        v8 = 0;
        *(*(this + 7) + 104) = IO80211TimerSource::allocWithParams();
        return v8;
      }

      v8 = 3758097086;
      if (*v14 && CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalk::allocSkywalkCommonResources(v5);
      }
    }
  }

  else
  {
    v8 = 3758097086;
    if (*v11 && CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalk::allocSkywalkCommonResources(v5);
    }
  }

  return v8;
}

uint64_t AppleBCMWLANPCIeSkywalk::allocSkywalkMonitorResources(AppleBCMWLANPCIeSkywalk *this, OSObject *a2)
{
  v8 = 0x3000000000000000;
  v9 = 0;
  v7 = xmmword_10033D0B0;
  v2 = this + 56;
  IOLockLock(*(*(this + 7) + 160));
  v3 = *v2;
  if (*(*v2 + 136))
  {
    if (*v3)
    {
      shouldLog = CCLogStream::shouldLog();
      v3 = *v2;
      if (shouldLog)
      {
        CCLogStream::logAlert(*v3, "[dk] %s@%d:Monitor resource packet pool already allocated, skip to allocate again\n", "allocSkywalkMonitorResources", 285);
        v3 = *v2;
      }
    }

    goto LABEL_6;
  }

  *(*v2 + 136) = AppleBCMWLANPCIeSkywalkPacketPool::withName("AppleBCMWLANSkywalkPoolMonitor", *(v3 + 48), *v3, *(v3 + 16), &v7);
  v3 = *v2;
  if (*(*v2 + 136))
  {
LABEL_6:
    *(v3 + 144) = 0;
    (*(**(*v2 + 136) + 80))(*(*v2 + 136), *v2 + 144, 0);
    v5 = 0;
    if (!*(*v2 + 144))
    {
      v5 = 3758097086;
      if (**v2)
      {
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANPCIeSkywalk::allocSkywalkMonitorResources(v2);
        }
      }
    }

    goto LABEL_13;
  }

  v5 = 3758097086;
  if (*v3 && CCLogStream::shouldLog())
  {
    AppleBCMWLANPCIeSkywalk::allocSkywalkMonitorResources(v2);
  }

LABEL_13:
  IOLockUnlock(*(*v2 + 160));
  return v5;
}

uint64_t AppleBCMWLANPCIeSkywalk::lowLatencyRingCreateTimeout(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (*v2)
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *(a1 + 56);
    if (shouldLog)
    {
      CCLogStream::logAlert(*v2, "[dk] %s@%d:Low latency ring create timeout occured %llu\n", "lowLatencyRingCreateTimeout", 705, *(v2 + 120));
      v2 = *(a1 + 56);
    }
  }

  if (*(v2 + 120) || (v4 = (*(**(v2 + 48) + 600))(*(v2 + 48), v2 + 120), v2 = *(a1 + 56), !v4))
  {
    result = CCFaultReporter::reportFault(*(v2 + 16), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANPCIeSkywalk.cpp", 0x2C9u, "lowLatencyRingCreateTimeout", 0, -469794010, 0);
    *(*(a1 + 56) + 120) = 0;
  }

  else
  {
    if (*v2)
    {
      v5 = CCLogStream::shouldLog();
      v2 = *(a1 + 56);
      if (v5)
      {
        CCLogStream::logCrit(*v2, "[dk] %s@%d:Delaying Ring Creation Failure due to pending work ivars->fLLWRingCreationTimeoutEpoch %llu\n", "lowLatencyRingCreateTimeout", 708, *(v2 + 120));
        v2 = *(a1 + 56);
      }
    }

    v6 = *(**(v2 + 104) + 56);

    return v6();
  }

  return result;
}

void AppleBCMWLANPCIeSkywalk::freeSkywalkMonitorResources(AppleBCMWLANPCIeSkywalk *this)
{
  IOLockLock(*(*(this + 7) + 160));
  v2 = *(this + 7);
  if (!v2[17])
  {
    v4 = v2[18];
    if (v4)
    {
      AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(0, v4);
      *(*(this + 7) + 144) = 0;
      v2 = *(this + 7);
      v5 = v2[17];
      if (v5)
      {
        (*(*v5 + 16))(v5);
        *(*(this + 7) + 136) = 0;
        *(*(this + 7) + 136) = 0;
        v2 = *(this + 7);
      }
    }
  }

  v3 = v2[20];

  IOLockUnlock(v3);
}

void AppleBCMWLANPCIeSkywalk::free(OSObject *this)
{
  meta = this[1].meta;
  if (meta)
  {
    if (meta->__vftable)
    {
      shouldLog = CCLogStream::shouldLog();
      meta = this[1].meta;
      if (shouldLog)
      {
        CCLogStream::logAlert(meta->__vftable, "[dk] %s@%d:Enter ::free [%p]", "free", 415, this);
        meta = this[1].meta;
      }
    }

    v4 = meta[2].__vftable;
    if (v4)
    {
      (*(v4->getMetaClass + 25))(v4);
      (*(this[1].meta[2].getMetaClass + 2))(this[1].meta[2].__vftable);
      this[1].meta[2].__vftable = 0;
      meta = this[1].meta;
    }

    metaClassPrivate = meta[1].metaClassPrivate;
    if (metaClassPrivate)
    {
      (*(*metaClassPrivate + 16))(metaClassPrivate);
      this[1].meta[1].metaClassPrivate = 0;
      meta = this[1].meta;
    }

    v6 = meta[5].__vftable;
    if (v6)
    {
      IOLockFree(v6);
      meta = this[1].meta;
    }

    if (meta->__vftable)
    {
      (*(meta->getMetaClass + 2))(meta->__vftable);
      this[1].meta->OSMetaClassBase::__vftable = 0;
      meta = this[1].meta;
    }

    meta[15].__vftable = 0;
    *&meta[14].__vftable = 0u;
    *&meta[14].meta = 0u;
    *&meta[13].__vftable = 0u;
    *&meta[13].meta = 0u;
    *&meta[12].__vftable = 0u;
    *&meta[12].meta = 0u;
    *&meta[11].__vftable = 0u;
    *&meta[11].meta = 0u;
    *&meta[10].__vftable = 0u;
    *&meta[10].meta = 0u;
    *&meta[9].__vftable = 0u;
    *&meta[9].meta = 0u;
    *&meta[8].__vftable = 0u;
    *&meta[8].meta = 0u;
    *&meta[7].__vftable = 0u;
    *&meta[7].meta = 0u;
    *&meta[6].__vftable = 0u;
    *&meta[6].meta = 0u;
    *&meta[5].__vftable = 0u;
    *&meta[5].meta = 0u;
    *&meta[4].__vftable = 0u;
    *&meta[4].meta = 0u;
    *&meta[3].__vftable = 0u;
    *&meta[3].meta = 0u;
    *&meta[2].__vftable = 0u;
    *&meta[2].meta = 0u;
    *&meta[1].__vftable = 0u;
    *&meta[1].meta = 0u;
    *&meta->__vftable = 0u;
    *&meta->meta = 0u;
    v7 = this[1].meta;
    if (v7)
    {
      IOFree(v7, 0x1E8uLL);
      this[1].meta = 0;
    }
  }

  OSObject::free(this);
}

CCLogStream *AppleBCMWLANPCIeSkywalk::completeRegistration(AppleBCMWLANPCIeSkywalk *this, int a2)
{
  v4 = *(this + 7);
  result = *v4;
  if (*v4)
  {
    result = CCLogStream::shouldLog();
    v4 = *(this + 7);
    if (result)
    {
      result = CCLogStream::logInfo(*v4, "[dk] %s@%d:Adding ifId: 0x%x\n", "completeRegistration", 445, a2);
      v4 = *(this + 7);
    }
  }

  *(v4 + 44) |= 1 << a2;
  return result;
}

uint64_t ___ZN23AppleBCMWLANPCIeSkywalk24registerSkywalkInterfaceEP32skywalkInterfaceRegisterParams_t_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[7];
  v4 = v3[11];
  if (v4)
  {
    v5 = (*(*v4 + 88))(v4);
    v3 = v2[7];
    if (!v5)
    {
      AppleBCMWLANBusInterfacePCIe::enableCompletionRing(v3[6], v3[11], *(a1 + 40));
      v3 = v2[7];
    }
  }

  v6 = v3[12];
  if (v6 && !(*(*v6 + 88))(v6))
  {
    AppleBCMWLANBusInterfacePCIe::enableCompletionRing(*(v2[7] + 48), *(v2[7] + 96), *(a1 + 40));
  }

  if (*(a1 + 48) != -1)
  {
    (*(*v2 + 104))(v2);
  }

  return 0;
}

uint64_t AppleBCMWLANPCIeSkywalk::validateRxDMAStall(AppleBCMWLANPCIeSkywalk *this)
{
  v2 = (this + 56);
  v1 = *(this + 7);
  if (!*(v1 + 64))
  {
    return AppleBCMWLANPCIeSkywalk::validateRxDMAStall(v1, v2);
  }

  TotalFilledCountinFWRing = AppleBCMWLANPCIeSkywalkRxSubmissionQueue::getTotalFilledCountinFWRing(*(v1 + 64));
  v4 = *v2;
  if (TotalFilledCountinFWRing == (*v2)[58])
  {
    ++*(v4 + 118);
  }

  else
  {
    *(v4 + 118) = 1;
    (*v2)[58] = TotalFilledCountinFWRing;
  }

  result = **v2;
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPCIeSkywalk::validateRxDMAStall(v2);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::attachDefaultRxCompRing(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 56;
  v5 = (*(**(*(a1 + 56) + 48) + 1104))(*(*(a1 + 56) + 48));
  if (!v5)
  {
    return *(*v4 + 80);
  }

  v6 = v5;
  v7 = *(*v4 + 44);
  v8 = (*v4 + 80);
  if (*v8 || (v16 = *(*v4 + 48), v17 = (*(*v16 + 80))(v16), !(*(*v16 + 1088))(v16, v8, a2, a1, v17, AppleBCMWLANPCIeSkywalk::rxCompRingDrain, AppleBCMWLANPCIeSkywalk::rxCompRingError)))
  {
    if (v7)
    {
      v9 = __clz(__rbit32(v7));
      do
      {
        v10 = (*(*v6 + 1992))(v6, v9);
        if (v10)
        {
          v11 = v10;
          if ((*(*v10 + 1064))(v10))
          {
            v12 = (*(*v11 + 1192))(v11);
            v13 = OSMetaClassBase::safeMetaCast(v12, gAppleBCMWLANPCIeSkywalkRxCompletionQueueMetaClass);
            if (v13)
            {
              v14 = v13;
              if ((v13->__vftable[5].isEqualTo)(v13) && (*(*v14 + 224))(v14))
              {
                (*(*v14 + 224))(v14);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANPCIeSkywalk::attachDefaultRxCompRing();
                }
              }

              AppleBCMWLANPCIeSkywalkRxCompletionQueue::setFirmwareRing(v14, *(*v4 + 80));
              (*(*v14 + 200))(v14);
            }
          }
        }

        v7 &= ~(1 << v9);
        v9 = __clz(__rbit32(v7));
      }

      while (v7);
    }

    return *(*v4 + 80);
  }

  result = *(*v4 + 8);
  if (result)
  {
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalk::attachDefaultRxCompRing(v4);
    }

    return 0;
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::cancelRingMgmtTimers(AppleBCMWLANPCIeSkywalk *this)
{
  v2 = *(this + 7);
  if (*v2)
  {
    shouldLog = CCLogStream::shouldLog();
    v2 = *(this + 7);
    if (shouldLog)
    {
      CCLogStream::logCrit(*v2, "[dk] %s@%d:Cancel skywalk ring mgmt timers\n", "cancelRingMgmtTimers", 695);
      v2 = *(this + 7);
    }
  }

  result = *(v2 + 104);
  if (result)
  {
    v5 = *(*result + 72);

    return v5();
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::destroyLowLatencyCompRingComplete(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  result = *a4;
  if (*a4)
  {
    result = (*(*result + 16))(result, a2, a3);
    *a4 = 0;
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::attachDefaultTxCompRing(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(*(a1 + 56) + 48) + 1104))(*(*(a1 + 56) + 48));
  if (!v4)
  {
    return *(*(a1 + 56) + 72);
  }

  v5 = v4;
  v6 = *(a1 + 56);
  v7 = *(v6 + 44);
  v8 = v6 + 72;
  if (*(v6 + 72) || (v16 = *(v6 + 48), v17 = (*(*v16 + 80))(v16), !(*(*v16 + 1088))(v16, v8, a2, a1, v17, AppleBCMWLANPCIeSkywalk::txCompRingDrain, AppleBCMWLANPCIeSkywalk::txCompRingError)))
  {
    if (v7)
    {
      v9 = __clz(__rbit32(v7));
      do
      {
        v10 = (*(*v5 + 1992))(v5, v9);
        if (v10)
        {
          v11 = v10;
          if ((*(*v10 + 1064))(v10))
          {
            v12 = (*(*v11 + 1200))(v11);
            v13 = OSMetaClassBase::safeMetaCast(v12, gAppleBCMWLANPCIeSkywalkTxCompletionQueueMetaClass);
            if (v13)
            {
              v14 = v13;
              if ((*(*v11 + 1088))(v11) && (*(*v11 + 1088))(v11))
              {
                (*(*v11 + 1088))(v11);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANPCIeSkywalk::attachDefaultTxCompRing();
                }
              }

              AppleBCMWLANPCIeSkywalkTxCompletionQueue::setFirmwareRing(v14, *(*(a1 + 56) + 72));
              (*(*v14 + 192))(v14);
            }
          }
        }

        v7 &= ~(1 << v9);
        v9 = __clz(__rbit32(v7));
      }

      while (v7);
    }

    return *(*(a1 + 56) + 72);
  }

  return 0;
}

uint64_t AppleBCMWLANPCIeSkywalk::detachRxSubmFwQueue(AppleBCMWLANPCIeSkywalk *this)
{
  v1 = *(this + 7);
  if (!v1)
  {
    return IOLog("AppleBCMWLANPCIeSkywalk::detachRxSubmFwQueue, no ivars\n");
  }

  v2 = *(v1 + 64);
  if (v2)
  {
    return AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setFWRing(v2, 0);
  }

  else
  {
    return IOLog("AppleBCMWLANPCIeSkywalk::detachRxSubmFwQueue, no queue\n");
  }
}

uint64_t AppleBCMWLANPCIeSkywalk::detachRxCompFwQueue(AppleBCMWLANPCIeSkywalk *this)
{
  v2 = this + 56;
  v1 = *(this + 7);
  if (v1)
  {
    v3 = *(v1 + 48);
    if (v3)
    {
      v4 = *(v1 + 44);
      if ((*(*v3 + 1104))(v3))
      {
        if (v4)
        {
          v5 = __clz(__rbit32(v4));
          do
          {
            v6 = *(*(**(*v2 + 48) + 1104))(*(*v2 + 48));
            v7 = (*(v6 + 1992))();
            if (v7)
            {
              v8 = v7;
              if ((*(*v7 + 1088))(v7))
              {
                if ((*(*v8 + 1088))(v8))
                {
                  (*(*v8 + 1088))(v8);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANPCIeSkywalk::detachRxCompFwQueue();
                  }
                }
              }

              v9 = (*(*v8 + 1192))(v8);
              v10 = OSMetaClassBase::safeMetaCast(v9, gAppleBCMWLANPCIeSkywalkRxCompletionQueueMetaClass);
              if (v10)
              {
                v11 = v10;
                (v10->__vftable[4].Dispatch)(v10);
                (*(*v11 + 208))(v11);
                AppleBCMWLANPCIeSkywalkRxCompletionQueue::setFirmwareRing(v11, 0);
              }
            }

            v4 &= ~(1 << v5);
            v5 = __clz(__rbit32(v4));
          }

          while (v4);
        }

        *(*v2 + 80) = 0;
        AppleBCMWLANPCIeSkywalkPacketPool::rxTrackerFlush(*(*v2 + 56));
        result = *(*v2 + 8);
        if (result)
        {
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANPCIeSkywalk::detachRxCompFwQueue(v2);
          }
        }

        return result;
      }
    }

    v13 = "AppleBCMWLANPCIeSkywalk::detachRxCompFwQueue, no bus/driver\n";
  }

  else
  {
    v13 = "AppleBCMWLANPCIeSkywalk::detachRxCompFwQueue, no ivars\n";
  }

  return IOLog(v13);
}

void *AppleBCMWLANPCIeSkywalk::detachTxCompFwQueue(AppleBCMWLANPCIeSkywalk *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    v3 = *(v1 + 48);
    if (v3)
    {
      v4 = *(v1 + 44);
      if ((*(*v3 + 1104))(v3))
      {
        if (v4)
        {
          v5 = __clz(__rbit32(v4));
          do
          {
            v6 = *(*(**(*(this + 7) + 48) + 1104))(*(*(this + 7) + 48));
            v7 = (*(v6 + 1992))();
            if (v7)
            {
              v8 = v7;
              v9 = (*(*v7 + 1200))(v7);
              v10 = OSMetaClassBase::safeMetaCast(v9, gAppleBCMWLANPCIeSkywalkTxCompletionQueueMetaClass);
              if (v10)
              {
                v11 = v10;
                if ((*(*v8 + 1088))(v8))
                {
                  if ((*(*v8 + 1088))(v8))
                  {
                    (*(*v8 + 1088))(v8);
                    if (CCLogStream::shouldLog())
                    {
                      AppleBCMWLANPCIeSkywalk::detachTxCompFwQueue();
                    }
                  }
                }

                AppleBCMWLANPCIeSkywalkTxCompletionQueue::flushPackets(v11);
                (v11->__vftable[5].getMetaClass)(v11);
                AppleBCMWLANPCIeSkywalkTxCompletionQueue::setFirmwareRing(v11, 0);
              }
            }

            v4 &= ~(1 << v5);
            v5 = __clz(__rbit32(v4));
          }

          while (v4);
        }

        *(*(this + 7) + 72) = 0;
        v12 = *(*(this + 7) + 56);

        return AppleBCMWLANPCIeSkywalkPacketPool::txTrackerFlush(v12);
      }
    }

    v14 = "AppleBCMWLANPCIeSkywalk::detachTxCompFwQueue, no bus/driver\n";
  }

  else
  {
    v14 = "AppleBCMWLANPCIeSkywalk::detachTxCompFwQueue, no ivars\n";
  }

  return IOLog(v14);
}

uint64_t AppleBCMWLANPCIeSkywalk::disableAllSubmissionQueue(AppleBCMWLANPCIeSkywalk *this)
{
  v1 = *(this + 7);
  v2 = *(v1 + 44);
  result = (*(**(v1 + 48) + 1104))(*(v1 + 48));
  if (result)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    return AppleBCMWLANPCIeSkywalk::disableAllSubmissionQueue();
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::enableAllSubmissionQueue(AppleBCMWLANPCIeSkywalk *this)
{
  v1 = *(this + 7);
  v2 = *(v1 + 44);
  result = (*(**(v1 + 48) + 1104))(*(v1 + 48));
  if (result)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    return AppleBCMWLANPCIeSkywalk::enableAllSubmissionQueue();
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::attachTxSubmissionQueues(AppleBCMWLANPCIeSkywalk *this, IO80211SkywalkInterface *a2)
{
  if ((*(*a2 + 1088))(a2))
  {
    if ((*(*a2 + 1088))(a2))
    {
      (*(*a2 + 1088))(a2);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalk::attachTxSubmissionQueues();
      }
    }
  }

  if (IO80211SkywalkInterface::getInterfaceRole(a2) == 2 && ((*(*a2 + 1064))(a2) & 1) == 0)
  {
    v13 = *(this + 7);
    v12 = this + 56;
    result = *v13;
    if (*v13)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPCIeSkywalk::attachTxSubmissionQueues(v12);
      }
    }
  }

  else
  {
    v4 = (*(*a2 + 1160))(a2);
    v5 = OSMetaClassBase::safeMetaCast(v4, gAppleBCMWLANPCIeSkywalkMulticastQueueMetaClass);
    if (v5)
    {
      v6 = v5;
      (v5->__vftable[1].isEqualTo)(v5);
      (v6->__vftable[3].getMetaClass)(v6);
    }

    v7 = 3;
    do
    {
      v8 = (*(*a2 + 1208))(a2, v7);
      v9 = OSMetaClassBase::safeMetaCast(v8, gAppleBCMWLANPCIeSkywalkTxSubmissionQueueMetaClass);
      if (v9)
      {
        v10 = v9;
        *(*(this + 7) + 476) += (v9->__vftable[5].Dispatch)(v9);
        (v10->__vftable[6].release)(v10);
        (v10->__vftable[3].retain)(v10, 0, 0);
      }

      v7 = (v7 - 1);
    }

    while (v7 != -1);
    result = **(this + 7);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANPCIeSkywalk::attachTxSubmissionQueues(this + 56);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::retrievePendingPacketsOnRoam(uint64_t this, unsigned int *a2, unsigned int *a3)
{
  *a2 = *(*(this + 56) + 480);
  *a3 = *(*(this + 56) + 476);
  return this;
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeSkywalk::retrievePendingPacketsOnRoam(uint64_t this, unsigned int *a2, unsigned int *a3)
{
  *a2 = *(*(this + 16) + 480);
  *a3 = *(*(this + 16) + 476);
  return this;
}

OSMetaClassBase *AppleBCMWLANPCIeSkywalk::detachTxSubmissionQueues(AppleBCMWLANPCIeSkywalk *this, unint64_t a2)
{
  if ((*(*a2 + 1088))(a2))
  {
    if ((*(*a2 + 1088))(a2))
    {
      (*(*a2 + 1088))(a2);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalk::detachTxSubmissionQueues();
      }
    }
  }

  v4 = 0;
  do
  {
    v5 = (*(*a2 + 1208))(a2, v4);
    v6 = OSMetaClassBase::safeMetaCast(v5, gAppleBCMWLANPCIeSkywalkTxSubmissionQueueMetaClass);
    if (v6)
    {
      v7 = v6;
      (v6->__vftable[6].Dispatch)(v6);
      (v7->__vftable[3].Dispatch)(v7);
      (v7->__vftable[6].getMetaClass)(v7);
    }

    v4 = (v4 + 1);
  }

  while (v4 != 4);
  v8 = (*(*a2 + 1160))(a2);
  result = OSMetaClassBase::safeMetaCast(v8, gAppleBCMWLANPCIeSkywalkMulticastQueueMetaClass);
  if (result)
  {
    v10 = result;
    AppleBCMWLANPCIeSkywalkMulticastQueue::setFWRing(result, 0);
    result = (v10->__vftable[1].Dispatch)(v10);
  }

  *(*(this + 7) + 476) = 0;
  *(*(this + 7) + 480) = 0;
  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::findFlowIdWithFlowHash(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 56);
  v5 = *(v4 + 44);
  v6 = (*(**(v4 + 48) + 1104))(*(v4 + 48));
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = 0xFFFFLL;
  if (v7)
  {
    return v8;
  }

  v9 = v6;
  v10 = __clz(__rbit32(v5));
  while (1)
  {
    v11 = (*(*v9 + 1992))(v9, v10);
    if (v11)
    {
      v12 = v11;
      v13 = (*(*v11 + 1160))(v11);
      v14 = OSMetaClassBase::safeMetaCast(v13, gAppleBCMWLANPCIeSkywalkMulticastQueueMetaClass);
      if (v14)
      {
        v15 = v14;
        if (*AppleBCMWLANPCIeSkywalkMulticastQueue::getFlowHash(v14) == *a2)
        {
          FlowId = AppleBCMWLANPCIeSkywalkMulticastQueue::getFlowId(v15);
          if (FlowId != 0xFFFF)
          {
            return FlowId;
          }

          goto LABEL_15;
        }
      }

      if ((*(*v12 + 1248))(v12))
      {
        break;
      }
    }

LABEL_15:
    v5 &= ~(1 << v10);
    v10 = __clz(__rbit32(v5));
    if (!v5)
    {
      return 0xFFFFLL;
    }
  }

  v17 = 0;
  while (1)
  {
    v18 = (*(*v12 + 1208))(v12, v17);
    v19 = OSMetaClassBase::safeMetaCast(v18, gAppleBCMWLANPCIeSkywalkTxSubmissionQueueMetaClass);
    FlowIDForHash = AppleBCMWLANPCIeSkywalkTxSubmissionQueue::getFlowIDForHash(v19, a2);
    if (FlowIDForHash != 0xFFFF)
    {
      break;
    }

    v17 = (v17 + 1);
    if (v17 >= (*(*v12 + 1248))(v12))
    {
      goto LABEL_15;
    }
  }

  v8 = FlowIDForHash;
  if (**(a1 + 56) && CCLogStream::shouldLog())
  {
    CCLogStream::logAlert(**(a1 + 56), "[dk] %s@%d:uc flow found ac %d interface %d flow id %d\n", "findFlowIdWithFlowHash", 1168, a2[1], *a2, v8);
  }

  return v8;
}

uint64_t AppleBCMWLANPCIeSkywalk::handleRxNanDataInterfacePacket(AppleBCMWLANPCIeSkywalk *this, AppleBCMWLANPCIeSkywalkPacket *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v5 = *a4;
  if (v5 > 0x1B)
  {
    v10 = (*(*a2 + 480))(a2);
    v11 = v10 + IO80211NetworkPacket::getHeadroom(a2);
    if (__PAIR64__(*(v11 + 15), *(v11 + 14)) == 0xAA000000AALL && *(v11 + 16) == 3 && !*(v11 + 17) && *(v11 + 18) == 23 && *(v11 + 19) == 242)
    {
      v12 = *(v11 + 26) - 1;
      if ((*(v11 + 26) - 1) <= 1u)
      {
        if (v5 - 28 >= 2)
        {
          v17 = 0;
          v18 = v11 + 28;
          while (1)
          {
            v19 = *(v18 + 1);
            v20 = v19 + 2;
            v17 += v19 + 2;
            if (v17 > (v5 - 28))
            {
              break;
            }

            if (*(v18 + 1))
            {
              if (*v18 != 1 || v19 == 1)
              {
                return 0;
              }

              v22 = *(v18 + 10);
              *(v11 + 10) = *(v18 + 14);
              *(v11 + 6) = v22;
              v23 = *(v18 + 4);
              *(v11 + 4) = *(v18 + 8);
              *v11 = v23;
              v18 += v20;
              if (--v12 < 2u)
              {
                continue;
              }
            }

            v13 = v17 + 16;
            goto LABEL_14;
          }
        }

        return 0;
      }

      v13 = 16;
LABEL_14:
      v14 = v11 + v13;
      v15 = *v11;
      *(v14 + 8) = *(v11 + 8);
      *v14 = v15;
      *a3 += v13;
      v16 = *a4 - v13;
      *a4 = v16;
      (*(*a2 + 216))(a2, v16);
      (*(*a2 + 232))(a2, *a3);
      IO80211NetworkPacket::setLinkHeaderOffset(a2, *a3);
    }

    return 1;
  }

  else
  {
    result = **(this + 7);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        CCLogStream::logAlert(**(this + 7), "[dk] %s@%d:%s[%d] : ERROR:Discarding due to insufficent length (remain=%d offset = %d)\n", "handleRxNanDataInterfacePacket", 1215, "handleRxNanDataInterfacePacket", 1215, v5, *a3);
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::getRxTimeStamp(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  *(a2 + 4) = 0;
  result = AppleBCMWLANBusInterfacePCIe::getRxChipDelayToUsecMultiplier(*(*(a1 + 56) + 48));
  if (a4 && (v9 = *(a3 + 36), v9 >> 28 == 14))
  {
    v10 = (((*(a3 + 32) | ((v9 & 0xFFFFFFF) << 32)) * 0x20C49BA5E353F7DuLL) >> 64) >> 3;
    *(a2 + 20) = v10;
  }

  else
  {
    *(a2 + 20) = *(a3 + 24);
    LODWORD(v10) = *(a3 + 24);
  }

  *(a2 + 16) = v10 + *(a3 + 29) * result;
  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::setRXTimestamp(AppleBCMWLANPCIeSkywalk *this, _DWORD *a2, AppleBCMWLANPCIeSkywalkPacket *a3, IO80211SkywalkInterface *a4, char a5)
{
  v114 = 0;
  *v113 = 0;
  memset(v112, 0, sizeof(v112));
  *v111 = 0;
  (*(*a3 + 528))(a3, 0);
  if ((a5 & 1) == 0)
  {
    if (AppleBCMWLANBusInterfacePCIe::getTimestampingMode(*(*(this + 7) + 48)) == 1)
    {
      (*(*a3 + 304))(a3, -3);
      if (AppleBCMWLANUtil::isPTPPacket(a3, 0, &v114, v113, &v112[1], v112, v111, v15))
      {
        v16 = AppleBCMWLANPCIeSkywalk::setRXTimestamp(void *,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr++;
        if (v16 <= 0x14)
        {
          if (v114)
          {
            v17 = &off_1003CB3E0;
            v18 = 9;
            v19 = "unknown";
            while (*(v17 - 2) != v112[0])
            {
              v17 += 2;
              if (!--v18)
              {
                goto LABEL_42;
              }
            }

            v19 = *v17;
LABEL_42:
            v94 = *v111;
            v102 = v19;
            if (*&v112[1])
            {
              v86 = **&v112[1];
              v79 = *(*&v112[1] + 1);
              v74 = *(*&v112[1] + 2);
              v68 = *(*&v112[1] + 3);
            }

            else
            {
              v68 = 0;
              v74 = 0;
              v79 = 0;
              v86 = 0;
            }

            IO80211SkywalkInterface::getInterfaceRole(a4);
            IO80211SkywalkInterface::isLowLatencyEnabled(a4);
            IOLog("[WiFiTimeSync@] Rx UDPv6 message %s sequence %d from %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x Error nonV7Hdr. set ts=-3 if:%d isLowLatencyEnabled: %d\n", v102, v94, v86, v79, v74, v68);
          }

          else
          {
            v36 = &off_1003CB3E0;
            v37 = 9;
            v38 = "unknown";
            while (*(v36 - 2) != v112[0])
            {
              v36 += 2;
              if (!--v37)
              {
                goto LABEL_47;
              }
            }

            v38 = *v36;
LABEL_47:
            v95 = *v111;
            v103 = v38;
            if (*&v112[1])
            {
              v87 = **&v112[1];
              v80 = *(*&v112[1] + 1);
            }

            else
            {
              v80 = 0;
              v87 = 0;
            }

            IO80211SkywalkInterface::getInterfaceRole(a4);
            IO80211SkywalkInterface::isLowLatencyEnabled(a4);
            IOLog("[WiFiTimeSync@] Rx UDPv4 message %s sequence %d from %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x Error nonV7Hdr. set ts=-3 if:%d isLowLatencyEnabled: %d\n", v103, v95, v87, v80);
          }
        }
      }

      if (PE_i_can_has_debugger(0) && (*(*(this + 7) + 484) & 1) == 0)
      {
        v45 = mach_continuous_time();
        v110 = 0xAAAAAAAAAAAAAAAALL;
        absolutetime_to_nanoseconds();
        IOLog("[WiFiTimeSync!] RX non V7 header with PTM timestamping mode. now_ns=%lld now=%lld. triggering WD\n", 0xAAAAAAAAAAAAAAAALL, v45);
        *(*(this + 7) + 484) = 1;
        CCFaultReporter::reportFault(*(*(this + 7) + 16), 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANPCIeSkywalk.cpp", 0x9D7u, "setRXTimestamp", 0, -469791212, 0);
      }
    }

    a2 = 0;
    goto LABEL_69;
  }

  v10 = a2[9] >> 28;
  if (v10 != 14)
  {
    if (AppleBCMWLANBusInterfacePCIe::getTimestampingMode(*(*(this + 7) + 48)) == 1)
    {
      (*(*a3 + 304))(a3, -2);
      if (AppleBCMWLANUtil::isPTPPacket(a3, 0, &v114, v113, &v112[1], v112, v111, v20))
      {
        v21 = AppleBCMWLANPCIeSkywalk::setRXTimestamp(void *,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr;
        v22 = ++AppleBCMWLANPCIeSkywalk::setRXTimestamp(void *,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr;
        if (v21 <= 0x14)
        {
          if (v114)
          {
            v23 = &off_1003CB3E0;
            v24 = 9;
            v25 = "unknown";
            while (*(v23 - 2) != v112[0])
            {
              v23 += 2;
              if (!--v24)
              {
                goto LABEL_58;
              }
            }

            v25 = *v23;
LABEL_58:
            v96 = *v111;
            v104 = v25;
            if (*&v112[1])
            {
              v88 = **&v112[1];
              v81 = *(*&v112[1] + 1);
              v75 = *(*&v112[1] + 2);
              v69 = *(*&v112[1] + 3);
            }

            else
            {
              v69 = 0;
              v75 = 0;
              v81 = 0;
              v88 = 0;
            }

            IO80211SkywalkInterface::getInterfaceRole(a4);
            IO80211SkywalkInterface::isLowLatencyEnabled(a4);
            IOLog("[WiFiTimeSync@] Rx UDPv6 message %s sequence %d from %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x Error clockID 0x%x. set ts=-2 if:%d isLowLatencyEnabled: %d\n", v104, v96, v88, v81, v75, v69);
          }

          else
          {
            v39 = &off_1003CB3E0;
            v40 = 9;
            v41 = "unknown";
            while (*(v39 - 2) != v112[0])
            {
              v39 += 2;
              if (!--v40)
              {
                goto LABEL_99;
              }
            }

            v41 = *v39;
LABEL_99:
            v98 = *v111;
            v106 = v41;
            if (*&v112[1])
            {
              v90 = **&v112[1];
              v83 = *(*&v112[1] + 1);
            }

            else
            {
              v83 = 0;
              v90 = 0;
            }

            IO80211SkywalkInterface::getInterfaceRole(a4);
            IO80211SkywalkInterface::isLowLatencyEnabled(a4);
            IOLog("[WiFiTimeSync@] Rx UDPv4 message %s sequence %d from %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x Error clockID 0x%x. set ts=-2 if:%d isLowLatencyEnabled: %d\n", v106, v98, v90, v83);
          }

          v22 = AppleBCMWLANPCIeSkywalk::setRXTimestamp(void *,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr;
        }

        if (v22 >= 3 && PE_i_can_has_debugger(0) && (*(*(this + 7) + 484) & 1) == 0)
        {
          v61 = mach_continuous_time();
          v110 = 0xAAAAAAAAAAAAAAAALL;
          absolutetime_to_nanoseconds();
          IOLog("[WiFiTimeSync!] RX ClockID 0x%x with PTM timestamping mode. now_ns=%lld now=%lld. triggering WD\n", v10, 0xAAAAAAAAAAAAAAAALL, v61);
          *(*(this + 7) + 484) = 1;
          CCFaultReporter::reportFault(*(*(this + 7) + 16), 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANPCIeSkywalk.cpp", 0xA39u, "setRXTimestamp", 0, -469791211, 0);
        }
      }
    }

LABEL_69:
    if ((IO80211SkywalkInterface::isLowLatencyEnabled(a4) & 1) == 0)
    {
      AppleBCMWLANBusInterfacePCIe::handleRxTimeSync(*(*(this + 7) + 48), a2, a3);
    }

    goto LABEL_71;
  }

  AppleBCMWLANPCIeSkywalk::storePTMTimestamp(this, a2 + 8, a3);
  v11 = (*(**(*(this + 7) + 48) + 544))();
  v12 = *a3;
  if (v11)
  {
    v13 = (*(v12 + 552))(a3);
    v14 = AppleBCMWLANBusInterfacePCIe::convertPTMToAbsolute(*(*(this + 7) + 48), v13);
    (*(*a3 + 304))(a3, v14);
    if (v14)
    {
      if (AppleBCMWLANPCIeSkywalk::setRXTimestamp(void *,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr)
      {
        AppleBCMWLANPCIeSkywalk::setRXTimestamp(void *,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr = 0;
      }
    }

    else
    {
      mach_continuous_time();
      v110 = 0xAAAAAAAAAAAAAAAALL;
      absolutetime_to_nanoseconds();
      if (AppleBCMWLANUtil::isPTPPacket(a3, 0, &v114, v113, &v112[1], v112, v111, v31))
      {
        v32 = AppleBCMWLANPCIeSkywalk::setRXTimestamp(void *,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr++;
        if (v32 <= 0x14)
        {
          if (v114)
          {
            v33 = &off_1003CB3E0;
            v34 = 9;
            v35 = "unknown";
            while (*(v33 - 2) != v112[0])
            {
              v33 += 2;
              if (!--v34)
              {
                goto LABEL_118;
              }
            }

            v35 = *v33;
LABEL_118:
            v100 = *v111;
            v108 = v35;
            if (*&v112[1])
            {
              v92 = **&v112[1];
              v84 = *(*&v112[1] + 1);
              v77 = *(*&v112[1] + 2);
              v70 = *(*&v112[1] + 3);
              v72 = *(*&v112[1] + 12);
              v64 = *(*&v112[1] + 13);
              v66 = *(*&v112[1] + 14);
              v63 = *(*&v112[1] + 15);
            }

            else
            {
              v66 = 0;
              v70 = 0;
              v72 = 0;
              v77 = 0;
              v84 = 0;
              v92 = 0;
              v63 = 0;
              v64 = 0;
            }

            v62 = **v113;
            AppleBCMWLANBusInterfacePCIe::getLastTimePowerOnTicks(*(*(this + 7) + 48));
            (*(**(*(this + 7) + 48) + 944))();
            IO80211SkywalkInterface::getInterfaceRole(a4);
            IOLog("[WiFiTimeSync@] Rx UDPv6 message %s sequence %d from %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x Error conversion. set ts=0 fw_ns=%lld now_ns=%lld ts_ticks=%lld now_ticks=%lld lastPowerOnTicks=%lld isPowerOn()=%d if:%d\n", v108, v100, v92, v84, v77, v70, v72, v64, v66, v63, v62);
          }

          else
          {
            v58 = &off_1003CB3E0;
            v59 = 9;
            v60 = "unknown";
            while (*(v58 - 2) != v112[0])
            {
              v58 += 2;
              if (!--v59)
              {
                goto LABEL_123;
              }
            }

            v60 = *v58;
LABEL_123:
            v101 = *v111;
            v109 = v60;
            if (*&v112[1])
            {
              v93 = **&v112[1];
              v85 = *(*&v112[1] + 1);
              v73 = *(*&v112[1] + 3);
              v78 = *(*&v112[1] + 2);
            }

            else
            {
              v78 = 0;
              v85 = 0;
              v93 = 0;
              v73 = 0;
            }

            v71 = **v113;
            v67 = *(*v113 + 1);
            v65 = *(*v113 + 2);
            AppleBCMWLANBusInterfacePCIe::getLastTimePowerOnTicks(*(*(this + 7) + 48));
            (*(**(*(this + 7) + 48) + 944))();
            IO80211SkywalkInterface::getInterfaceRole(a4);
            IOLog("[WiFiTimeSync@] Rx UDPv4 message %s sequence %d from %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x Error conversion. set ts=0 fw_ns=%lld now_ns=%lld ts_ticks=%lld now_ticks=%lld lastPowerOnTicks=%lld isPowerOn()=%d if:%d\n", v109, v101, v93, v85, v78, v73, v71, v67, v65);
          }
        }
      }
    }
  }

  else
  {
    (*(v12 + 304))(a3, -1);
    if (AppleBCMWLANUtil::isPTPPacket(a3, 0, &v114, v113, &v112[1], v112, v111, v26))
    {
      v27 = AppleBCMWLANPCIeSkywalk::setRXTimestamp(void *,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr++;
      if (v27 <= 0x14)
      {
        if (v114)
        {
          v28 = &off_1003CB3E0;
          v29 = 9;
          v30 = "unknown";
          while (*(v28 - 2) != v112[0])
          {
            v28 += 2;
            if (!--v29)
            {
              goto LABEL_61;
            }
          }

          v30 = *v28;
LABEL_61:
          v97 = *v111;
          v105 = v30;
          if (*&v112[1])
          {
            v89 = **&v112[1];
            v82 = *(*&v112[1] + 1);
            v76 = *(*&v112[1] + 2);
          }

          else
          {
            v76 = 0;
            v82 = 0;
            v89 = 0;
          }

          IO80211SkywalkInterface::getInterfaceRole(a4);
          IOLog("[WiFiTimeSync@] Rx UDPv6 message %s sequence %d from %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x Error TSDisabled. set ts=-1 if:%d\n", v105, v97, v89, v82, v76);
        }

        else
        {
          v42 = &off_1003CB3E0;
          v43 = 9;
          v44 = "unknown";
          while (*(v42 - 2) != v112[0])
          {
            v42 += 2;
            if (!--v43)
            {
              goto LABEL_102;
            }
          }

          v44 = *v42;
LABEL_102:
          v99 = *v111;
          v107 = v44;
          if (*&v112[1])
          {
            v91 = **&v112[1];
          }

          else
          {
            v91 = 0;
          }

          IO80211SkywalkInterface::getInterfaceRole(a4);
          IOLog("[WiFiTimeSync@] Rx UDPv4 message %s sequence %d from %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x Error TSDisabled. set ts=-1 if:%d\n", v107, v99, v91);
        }
      }
    }
  }

LABEL_71:
  result = (*(**(*(this + 7) + 48) + 544))(*(*(this + 7) + 48));
  if (result)
  {
    result = AppleBCMWLANBusInterfacePCIe::isTSLoggingEnabled(*(*(this + 7) + 48));
    if (result)
    {
      result = AppleBCMWLANUtil::isPTPPacket(a3, 0, &v114, v113, &v112[1], v112, v111, v47);
      if (result)
      {
        v110 = 0xAAAAAAAAAAAAAAAALL;
        (*(*a3 + 320))(a3, &v110);
        v48 = &off_1003CB3E0;
        v49 = 9;
        if (v114)
        {
          v50 = "unknown";
          while (*(v48 - 2) != v112[0])
          {
            v48 += 2;
            if (!--v49)
            {
              goto LABEL_84;
            }
          }

          v50 = *v48;
LABEL_84:
          if (*&v112[1])
          {
            v52 = **&v112[1];
            v53 = *(*&v112[1] + 1);
            v54 = *(*&v112[1] + 2);
            v55 = *(*&v112[1] + 3);
          }

          else
          {
            v54 = 0;
            v52 = 0;
            v53 = 0;
            v55 = 0;
          }

          return IOLog("[WiFiTimeSync-] Rx UDPv6 message %s sequence %d from %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x completed. ts %llu", v50, *v111, v52, v53, v54, v55);
        }

        else
        {
          v51 = "unknown";
          while (*(v48 - 2) != v112[0])
          {
            v48 += 2;
            if (!--v49)
            {
              goto LABEL_89;
            }
          }

          v51 = *v48;
LABEL_89:
          if (*&v112[1])
          {
            v56 = **&v112[1];
            v57 = *(*&v112[1] + 1);
          }

          else
          {
            v56 = 0;
            v57 = 0;
          }

          return IOLog("[WiFiTimeSync-] Rx UDPv4 message %s sequence %d from %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x completed. ts %llu", v51, *v111, v56, v57);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::inputMonitorPacket(AppleBCMWLANPCIeSkywalk *this, IO80211SkywalkInterface *a2, AppleBCMWLANPCIeSkywalkPacket *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  (*(*a3 + 232))(a3, a4);
  IO80211NetworkPacket::setHeadroom(a3, v6);
  result = (*(*a3 + 216))(a3, a5);
  if (a2)
  {
    v10 = *(*a2 + 256);

    return v10(a2, 127, a3, 0, 0);
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::setTXTimestamp(AppleBCMWLANPCIeSkywalk *this, unsigned __int8 *a2, int a3, AppleBCMWLANPCIeSkywalkPacket *a4, IO80211SkywalkInterface *a5, int a6)
{
  v12 = a2[14];
  v162 = 0;
  *v161 = 0;
  memset(v160, 0, sizeof(v160));
  *v159 = 0;
  (*(*a4 + 528))(a4, 0);
  if (a6)
  {
    v13 = a2;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*(this + 7) + 48);
  if (a3 == 1)
  {
    if (AppleBCMWLANBusInterfacePCIe::getTimestampingMode(v14) == 1)
    {
      (*(*a4 + 304))(a4, -4);
      if (AppleBCMWLANUtil::isPTPPacket(a4, 1, &v162, v161, &v160[1], v160, v159, v15))
      {
        v16 = AppleBCMWLANPCIeSkywalk::setTXTimestamp(void *,int,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr++;
        if (v16 <= 0x14)
        {
          if (v162)
          {
            v17 = &off_1003CB3E0;
            v18 = 9;
            v19 = "unknown";
            while (*(v17 - 2) != v160[0])
            {
              v17 += 2;
              if (!--v18)
              {
                goto LABEL_54;
              }
            }

            v19 = *v17;
LABEL_54:
            v138 = *v159;
            v148 = v19;
            if (*&v160[1])
            {
              v128 = **&v160[1];
              v118 = *(*&v160[1] + 1);
              v108 = *(*&v160[1] + 2);
              v96 = *(*&v160[1] + 3);
              v102 = *(*&v160[1] + 12);
            }

            else
            {
              v96 = 0;
              v102 = 0;
              v108 = 0;
              v118 = 0;
              v128 = 0;
            }

            IO80211SkywalkInterface::getInterfaceRole(a5);
            (*(**(*(this + 7) + 48) + 544))();
            (*(*a4 + 328))(a4);
            IOLog("[WiFiTimeSync@] Tx UDPv6 message %s sequence %d to %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x Error ptmModeDisabled. set ts=-4 if:%d tsEnabled:%d tsRequested:%d tx_status:%d\n", v148, v138, v128, v118, v108, v96, v102);
          }

          else
          {
            v39 = &off_1003CB3E0;
            v40 = 9;
            v41 = "unknown";
            while (*(v39 - 2) != v160[0])
            {
              v39 += 2;
              if (!--v40)
              {
                goto LABEL_59;
              }
            }

            v41 = *v39;
LABEL_59:
            v139 = *v159;
            v149 = v41;
            if (*&v160[1])
            {
              v129 = **&v160[1];
              v119 = *(*&v160[1] + 1);
              v109 = *(*&v160[1] + 2);
            }

            else
            {
              v109 = 0;
              v119 = 0;
              v129 = 0;
            }

            IO80211SkywalkInterface::getInterfaceRole(a5);
            (*(**(*(this + 7) + 48) + 544))();
            (*(*a4 + 328))(a4);
            IOLog("[WiFiTimeSync@] Tx UDPv4 message %s sequence %d to %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x Error ptmModeDisabled. set ts=-4 if:%d tsEnabled:%d tsRequested:%d tx_status:%d\n", v149, v139, v129, v119, v109);
          }
        }
      }
    }

    AppleBCMWLANBusInterfacePCIe::handleTxTimeSync(*(*(this + 7) + 48), v13, a4, v12);
    goto LABEL_71;
  }

  if ((*(*v14 + 544))(v14))
  {
    if ((*(*a4 + 328))(a4) && v12 != 0)
    {
      (*(*a4 + 304))(a4, 0);
      goto LABEL_71;
    }
  }

  if (!v13)
  {
    if (AppleBCMWLANBusInterfacePCIe::getTimestampingMode(*(*(this + 7) + 48)) != 1)
    {
      goto LABEL_71;
    }

    (*(*a4 + 304))(a4, -3);
    if (AppleBCMWLANUtil::isPTPPacket(a4, 1, &v162, v161, &v160[1], v160, v159, v24))
    {
      v25 = AppleBCMWLANPCIeSkywalk::setTXTimestamp(void *,int,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr++;
      if (v25 <= 0x14)
      {
        if (v162)
        {
          v26 = &off_1003CB3E0;
          v27 = 9;
          v28 = "unknown";
          while (*(v26 - 2) != v160[0])
          {
            v26 += 2;
            if (!--v27)
            {
              goto LABEL_125;
            }
          }

          v28 = *v26;
LABEL_125:
          v141 = *v159;
          v151 = v28;
          if (*&v160[1])
          {
            v131 = **&v160[1];
            v121 = *(*&v160[1] + 1);
            v111 = *(*&v160[1] + 2);
            v98 = *(*&v160[1] + 3);
            v104 = *(*&v160[1] + 12);
          }

          else
          {
            v98 = 0;
            v104 = 0;
            v111 = 0;
            v121 = 0;
            v131 = 0;
          }

          IO80211SkywalkInterface::getInterfaceRole(a5);
          (*(**(*(this + 7) + 48) + 544))();
          (*(*a4 + 328))(a4);
          IOLog("[WiFiTimeSync@] Tx UDPv6 message %s sequence %d to %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x Error nonV7Hdr. set ts=-3 if:%d tsEnabled:%d tsRequested:%d tx_status:%d\n", v151, v141, v131, v121, v111, v98, v104);
        }

        else
        {
          v67 = &off_1003CB3E0;
          v68 = 9;
          v69 = "unknown";
          while (*(v67 - 2) != v160[0])
          {
            v67 += 2;
            if (!--v68)
            {
              goto LABEL_147;
            }
          }

          v69 = *v67;
LABEL_147:
          v144 = *v159;
          v154 = v69;
          if (*&v160[1])
          {
            v134 = **&v160[1];
            v124 = *(*&v160[1] + 1);
            v114 = *(*&v160[1] + 2);
          }

          else
          {
            v114 = 0;
            v124 = 0;
            v134 = 0;
          }

          IO80211SkywalkInterface::getInterfaceRole(a5);
          (*(**(*(this + 7) + 48) + 544))();
          (*(*a4 + 328))(a4);
          IOLog("[WiFiTimeSync@] Tx UDPv4 message %s sequence %d to %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x Error nonV7Hdr. set ts=-3 if:%d tsEnabled:%d tsRequested:%d tx_status:%d\n", v154, v144, v134, v124, v114);
        }
      }
    }

    if (!PE_i_can_has_debugger(0) || (*(*(this + 7) + 484) & 1) != 0)
    {
      goto LABEL_71;
    }

    v73 = mach_continuous_time();
    v158 = 0xAAAAAAAAAAAAAAAALL;
    absolutetime_to_nanoseconds();
    IOLog("[WiFiTimeSync!] TX non V7 header with PTM timestamping mode. now_ns=%lld now=%lld. triggering WD\n", 0xAAAAAAAAAAAAAAAALL, v73);
    *(*(this + 7) + 484) = 1;
    v74 = *(*(this + 7) + 16);
    v75 = -469791212;
    v76 = 5;
    v77 = 2735;
LABEL_166:
    CCFaultReporter::reportFault(v74, v76, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/Busses/PCIe/AppleBCMWLANPCIeSkywalk.cpp", v77, "setTXTimestamp", 0, v75, 0);
    goto LABEL_71;
  }

  v21 = *(v13 + 5) >> 28;
  if (v21 != 14)
  {
    if (AppleBCMWLANBusInterfacePCIe::getTimestampingMode(*(*(this + 7) + 48)) != 1)
    {
      goto LABEL_71;
    }

    (*(*a4 + 304))(a4, -2);
    if (!AppleBCMWLANUtil::isPTPPacket(a4, 1, &v162, v161, &v160[1], v160, v159, v29))
    {
      goto LABEL_71;
    }

    v30 = AppleBCMWLANPCIeSkywalk::setTXTimestamp(void *,int,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr++;
    if (v30 <= 0x14)
    {
      if (v162)
      {
        v31 = &off_1003CB3E0;
        v32 = 9;
        v33 = "unknown";
        while (*(v31 - 2) != v160[0])
        {
          v31 += 2;
          if (!--v32)
          {
            goto LABEL_136;
          }
        }

        v33 = *v31;
LABEL_136:
        v142 = *v159;
        v152 = v33;
        if (*&v160[1])
        {
          v132 = **&v160[1];
          v122 = *(*&v160[1] + 1);
          v112 = *(*&v160[1] + 2);
          v99 = *(*&v160[1] + 3);
          v105 = *(*&v160[1] + 12);
        }

        else
        {
          v99 = 0;
          v105 = 0;
          v112 = 0;
          v122 = 0;
          v132 = 0;
        }

        IO80211SkywalkInterface::getInterfaceRole(a5);
        (*(**(*(this + 7) + 48) + 544))();
        (*(*a4 + 328))(a4);
        IOLog("[WiFiTimeSync@] Tx UDPv6 message %s sequence %d to %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x Error clockID 0x%x. set ts=-2 if:%d tsEnabled:%d tsRequested:%d tx_status:%d\n", v152, v142, v132, v122, v112, v99, v105);
      }

      else
      {
        v70 = &off_1003CB3E0;
        v71 = 9;
        v72 = "unknown";
        while (*(v70 - 2) != v160[0])
        {
          v70 += 2;
          if (!--v71)
          {
            goto LABEL_154;
          }
        }

        v72 = *v70;
LABEL_154:
        v145 = *v159;
        v155 = v72;
        if (*&v160[1])
        {
          v135 = **&v160[1];
          v125 = *(*&v160[1] + 1);
          v115 = *(*&v160[1] + 2);
        }

        else
        {
          v115 = 0;
          v125 = 0;
          v135 = 0;
        }

        IO80211SkywalkInterface::getInterfaceRole(a5);
        (*(**(*(this + 7) + 48) + 544))();
        (*(*a4 + 328))(a4);
        IOLog("[WiFiTimeSync@] Tx UDPv4 message %s sequence %d to %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x Error clockID 0x%x. set ts=-2 if:%d tsEnabled:%d tsRequested:%d tx_status:%d\n", v155, v145, v135, v125, v115);
      }
    }

    if (!PE_i_can_has_debugger(0) || (*(*(this + 7) + 484) & 1) != 0)
    {
      goto LABEL_71;
    }

    v78 = mach_continuous_time();
    v158 = 0xAAAAAAAAAAAAAAAALL;
    absolutetime_to_nanoseconds();
    IOLog("[WiFiTimeSync!] TX ClockID 0x%x with PTM timestamping mode. now_ns=%lld now=%lld. triggering WD\n", v21, 0xAAAAAAAAAAAAAAAALL, v78);
    *(*(this + 7) + 484) = 1;
    v74 = *(*(this + 7) + 16);
    v75 = -469791211;
    v76 = 5;
    v77 = 2862;
    goto LABEL_166;
  }

  AppleBCMWLANPCIeSkywalk::storePTMTimestamp(this, v13 + 4, a4);
  if ((*(**(*(this + 7) + 48) + 544))() && (*(*a4 + 328))(a4))
  {
    v22 = (*(*a4 + 552))(a4);
    v23 = AppleBCMWLANBusInterfacePCIe::convertPTMToAbsolute(*(*(this + 7) + 48), v22);
    (*(*a4 + 304))(a4, v23);
    if (v23)
    {
      if (AppleBCMWLANPCIeSkywalk::setTXTimestamp(void *,int,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr)
      {
        AppleBCMWLANPCIeSkywalk::setTXTimestamp(void *,int,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr = 0;
      }

      goto LABEL_71;
    }

    v42 = mach_continuous_time();
    v158 = 0xAAAAAAAAAAAAAAAALL;
    absolutetime_to_nanoseconds();
    if (AppleBCMWLANUtil::isPTPPacket(a4, 1, &v162, v161, &v160[1], v160, v159, v43))
    {
      v44 = AppleBCMWLANPCIeSkywalk::setTXTimestamp(void *,int,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr++;
      if (v44 <= 0x14)
      {
        if (v162)
        {
          v45 = &off_1003CB3E0;
          v46 = 9;
          v47 = "unknown";
          while (*(v45 - 2) != v160[0])
          {
            v45 += 2;
            if (!--v46)
            {
              goto LABEL_172;
            }
          }

          v47 = *v45;
LABEL_172:
          v146 = *v159;
          v156 = v47;
          if (*&v160[1])
          {
            v136 = **&v160[1];
            v126 = *(*&v160[1] + 1);
            v116 = *(*&v160[1] + 2);
            v100 = *(*&v160[1] + 3);
            v106 = *(*&v160[1] + 12);
            v92 = *(*&v160[1] + 13);
            v94 = *(*&v160[1] + 14);
            v90 = *(*&v160[1] + 15);
          }

          else
          {
            v94 = 0;
            v100 = 0;
            v106 = 0;
            v116 = 0;
            v126 = 0;
            v136 = 0;
            v90 = 0;
            v92 = 0;
          }

          v88 = **v161;
          v87 = *(*v161 + 1);
          v86 = *(*v161 + 2);
          AppleBCMWLANBusInterfacePCIe::getLastTimePowerOnTicks(*(*(this + 7) + 48));
          (*(**(*(this + 7) + 48) + 944))();
          IO80211SkywalkInterface::getInterfaceRole(a5);
          (*(**(*(this + 7) + 48) + 544))();
          (*(*a4 + 328))(a4);
          IOLog("[WiFiTimeSync@] Tx UDPv6 message %s sequence %d to %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x Error conversion. set ts=0 fw_ns=%lld now_ns=%lld ts_ticks=%lld now_ticks=%lld lastPowerOnTicks=%lld isPowerOn()=%d if:%d tsEnabled:%d tsRequested:%d tx_status:%d\n", v156, v146, v136, v126, v116, v100, v106, v92, v94, v90, v88, v87, v86);
        }

        else
        {
          v79 = &off_1003CB3E0;
          v80 = 9;
          v81 = "unknown";
          while (*(v79 - 2) != v160[0])
          {
            v79 += 2;
            if (!--v80)
            {
              goto LABEL_177;
            }
          }

          v81 = *v79;
LABEL_177:
          v147 = *v159;
          v157 = v81;
          if (*&v160[1])
          {
            v137 = **&v160[1];
            v127 = *(*&v160[1] + 1);
            v107 = *(*&v160[1] + 3);
            v117 = *(*&v160[1] + 2);
          }

          else
          {
            v117 = 0;
            v127 = 0;
            v137 = 0;
            v107 = 0;
          }

          v101 = **v161;
          v95 = *(*v161 + 1);
          v93 = *(*v161 + 2);
          v91 = *(*v161 + 3);
          v89 = *(*v161 + 4);
          AppleBCMWLANBusInterfacePCIe::getLastTimePowerOnTicks(*(*(this + 7) + 48));
          (*(**(*(this + 7) + 48) + 944))();
          IO80211SkywalkInterface::getInterfaceRole(a5);
          (*(**(*(this + 7) + 48) + 544))();
          (*(*a4 + 328))(a4);
          IOLog("[WiFiTimeSync@] Tx UDPv4 message %s sequence %d to %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x Error conversion. set ts=0 fw_ns=%lld now_ns=%lld ts_ticks=%lld now_ticks=%lld lastPowerOnTicks=%lld isPowerOn()=%d if:%d tsEnabled:%d tsRequested:%d tx_status:%d\n", v157, v147, v137, v127, v117, v107, v101, v95, v93, v91, v89);
        }
      }
    }

    if (!(*(**(*(this + 7) + 48) + 944))(*(*(this + 7) + 48)) || AppleBCMWLANBusInterfacePCIe::getLastTimePowerOnTicks(*(*(this + 7) + 48)) > v42)
    {
      if (PE_i_can_has_debugger(0))
      {
        v82 = *(this + 7);
        if ((*(v82 + 484) & 1) == 0)
        {
          v83 = *(v13 + 4) | ((*(v13 + 5) & 0xFFFFFFF) << 32);
          LastTimePowerOnTicks = AppleBCMWLANBusInterfacePCIe::getLastTimePowerOnTicks(*(v82 + 48));
          v85 = (*(**(*(this + 7) + 48) + 944))();
          IOLog("[WiFiTimeSync!] TX PTMTimestamp invalid: fw_ns=%lld now_ns=%lld ts_ticks=%lld now_ticks=%lld lastPowerOnTicks=%lld isPowerOn()=%d. triggering WD\n", v83, v158, v22, v42, LastTimePowerOnTicks, v85);
          *(*(this + 7) + 484) = 1;
          v74 = *(*(this + 7) + 16);
          v76 = 6;
          v77 = 2797;
          v75 = -469794004;
          goto LABEL_166;
        }
      }
    }
  }

  else
  {
    (*(*a4 + 304))(a4, -1);
    if (AppleBCMWLANUtil::isPTPPacket(a4, 1, &v162, v161, &v160[1], v160, v159, v34))
    {
      v35 = AppleBCMWLANPCIeSkywalk::setTXTimestamp(void *,int,AppleBCMWLANPCIeSkywalkPacket *,IO80211SkywalkInterface *,BOOL)::consecErr++;
      if (v35 <= 0x14)
      {
        if (v162)
        {
          v36 = &off_1003CB3E0;
          v37 = 9;
          v38 = "unknown";
          while (*(v36 - 2) != v160[0])
          {
            v36 += 2;
            if (!--v37)
            {
              goto LABEL_118;
            }
          }

          v38 = *v36;
LABEL_118:
          v140 = *v159;
          v150 = v38;
          if (*&v160[1])
          {
            v130 = **&v160[1];
            v120 = *(*&v160[1] + 1);
            v110 = *(*&v160[1] + 2);
            v97 = *(*&v160[1] + 3);
            v103 = *(*&v160[1] + 12);
          }

          else
          {
            v97 = 0;
            v103 = 0;
            v110 = 0;
            v120 = 0;
            v130 = 0;
          }

          IO80211SkywalkInterface::getInterfaceRole(a5);
          (*(**(*(this + 7) + 48) + 544))();
          (*(*a4 + 328))(a4);
          IOLog("[WiFiTimeSync@] Tx UDPv6 message %s sequence %d to %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x Error set ts=-1 if:%d tsEnabled:%d tsRequested:%d tx_status:%d\n", v150, v140, v130, v120, v110, v97, v103);
        }

        else
        {
          v64 = &off_1003CB3E0;
          v65 = 9;
          v66 = "unknown";
          while (*(v64 - 2) != v160[0])
          {
            v64 += 2;
            if (!--v65)
            {
              goto LABEL_140;
            }
          }

          v66 = *v64;
LABEL_140:
          v143 = *v159;
          v153 = v66;
          if (*&v160[1])
          {
            v133 = **&v160[1];
            v123 = *(*&v160[1] + 1);
            v113 = *(*&v160[1] + 2);
          }

          else
          {
            v113 = 0;
            v123 = 0;
            v133 = 0;
          }

          IO80211SkywalkInterface::getInterfaceRole(a5);
          (*(**(*(this + 7) + 48) + 544))();
          (*(*a4 + 328))(a4);
          IOLog("[WiFiTimeSync@] Tx UDPv4 message %s sequence %d to %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x Error set ts=-1 if:%d tsEnabled:%d tsRequested:%d tx_status:%d\n", v153, v143, v133, v123, v113);
        }
      }
    }
  }

LABEL_71:
  result = (*(*a4 + 328))(a4);
  if (result)
  {
    result = AppleBCMWLANBusInterfacePCIe::isTSLoggingEnabled(*(*(this + 7) + 48));
    if (result)
    {
      result = AppleBCMWLANUtil::isPTPPacket(a4, 1, &v162, v161, &v160[1], v160, v159, v49);
      if (result)
      {
        v50 = (*(**(*(this + 7) + 48) + 544))(*(*(this + 7) + 48));
        v158 = 0xAAAAAAAAAAAAAAAALL;
        v51 = -16;
        if (!v162)
        {
          v51 = -4;
        }

        v52 = *v161;
        v53 = (*&v160[1] + v51);
        (*(*a4 + 320))(a4, &v158);
        if (v50)
        {
          v54 = &off_1003CB3E0;
          v55 = 9;
          if (v12)
          {
            if (v162)
            {
              v56 = "unknown";
              while (*(v54 - 2) != v160[0])
              {
                v54 += 2;
                if (!--v55)
                {
                  return IOLog("[WiFiTimeSync!] Tx UDPv6 message %s sequence %d from %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x to %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x completed with tx_status %d ts %llu", v56, *v159, *v53, v53[1], v53[2], v53[3], v53[12], v53[13], v53[14], v53[15], v52[6], v52[7], v52[8]);
                }
              }

              v56 = *v54;
              return IOLog("[WiFiTimeSync!] Tx UDPv6 message %s sequence %d from %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x to %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x completed with tx_status %d ts %llu", v56, *v159, *v53, v53[1], v53[2], v53[3], v53[12], v53[13], v53[14], v53[15], v52[6], v52[7], v52[8]);
            }

            else
            {
              v62 = "unknown";
              while (*(v54 - 2) != v160[0])
              {
                v54 += 2;
                if (!--v55)
                {
                  return IOLog("[WiFiTimeSync!] Tx UDPv4 message %s sequence %d from %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x to %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x completed with tx_status %d ts %llu", v62, *v159, *v53, v53[1], v53[2], v53[3], v52[6], v52[7], v52[8]);
                }
              }

              v62 = *v54;
              return IOLog("[WiFiTimeSync!] Tx UDPv4 message %s sequence %d from %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x to %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x completed with tx_status %d ts %llu", v62, *v159, *v53, v53[1], v53[2], v53[3], v52[6], v52[7], v52[8]);
            }
          }

          else if (v162)
          {
            v60 = "unknown";
            while (*(v54 - 2) != v160[0])
            {
              v54 += 2;
              if (!--v55)
              {
                return IOLog("[WiFiTimeSync-] Tx UDPv6 message %s sequence %d from %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x to %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x completed. ts %llu", v60, *v159, *v53, v53[1], v53[2], v53[3], v53[12], v53[13], v53[14], v53[15], v52[6], v52[7], v52[8]);
              }
            }

            v60 = *v54;
            return IOLog("[WiFiTimeSync-] Tx UDPv6 message %s sequence %d from %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x to %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x completed. ts %llu", v60, *v159, *v53, v53[1], v53[2], v53[3], v53[12], v53[13], v53[14], v53[15], v52[6], v52[7], v52[8]);
          }

          else
          {
            v63 = "unknown";
            while (*(v54 - 2) != v160[0])
            {
              v54 += 2;
              if (!--v55)
              {
                return IOLog("[WiFiTimeSync-] Tx UDPv4 message %s sequence %d from %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x to %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x completed. ts %llu", v63, *v159, *v53, v53[1], v53[2], v53[3], v52[6], v52[7], v52[8]);
              }
            }

            v63 = *v54;
            return IOLog("[WiFiTimeSync-] Tx UDPv4 message %s sequence %d from %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x to %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x completed. ts %llu", v63, *v159, *v53, v53[1], v53[2], v53[3], v52[6], v52[7], v52[8]);
          }
        }

        else
        {
          v57 = &off_1003CB3E0;
          v58 = 9;
          if (v162)
          {
            v59 = "unknown";
            while (*(v57 - 2) != v160[0])
            {
              v57 += 2;
              if (!--v58)
              {
                return IOLog("[WiFiTimeSync!] Tx UDPv6 message %s sequence %d from %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x to %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x , but tsEnabled %d tx_status %d ts %llu", v59, *v159, *v53, v53[1], v53[2], v53[3], v53[12], v53[13], v53[14], v53[15], v52[6], v52[7], v52[8], v52[9]);
              }
            }

            v59 = *v57;
            return IOLog("[WiFiTimeSync!] Tx UDPv6 message %s sequence %d from %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x to %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x , but tsEnabled %d tx_status %d ts %llu", v59, *v159, *v53, v53[1], v53[2], v53[3], v53[12], v53[13], v53[14], v53[15], v52[6], v52[7], v52[8], v52[9]);
          }

          else
          {
            v61 = "unknown";
            while (*(v57 - 2) != v160[0])
            {
              v57 += 2;
              if (!--v58)
              {
                return IOLog("[WiFiTimeSync!] Tx UDPv4 message %s sequence %d from %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x to %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x , but tsEnabled %d tx_status %d ts %llu", v61, *v159, *v53, v53[1], v53[2], v53[3], v52[6], v52[7], v52[8], v52[9]);
              }
            }

            v61 = *v57;
            return IOLog("[WiFiTimeSync!] Tx UDPv4 message %s sequence %d from %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x to %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x , but tsEnabled %d tx_status %d ts %llu", v61, *v159, *v53, v53[1], v53[2], v53[3], v52[6], v52[7], v52[8], v52[9]);
          }
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalk::collectAdapterStats(AppleBCMWLANPCIeSkywalk *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v10 = *(this + 7);
  if (v10[8])
  {
    v11 = IO80211Print(*v10, 5, -1, 0, a2, a5 + a3, a4 - a5, "Logging RX Submission Queue Status\n");
    v5 = (*(**(*(this + 7) + 64) + 184))(*(*(this + 7) + 64), a2, a3, a4, v11 + v5);
    v10 = *(this + 7);
  }

  v12 = IO80211Print(*v10, 5, -1, 0, a2, v5 + a3, a4 - v5, "fRxDataAvaialbleCount:%zu\n", v10[21]) + v5;
  v13 = IO80211Print(**(this + 7), 5, -1, 0, a2, v12 + a3, a4 - v12, "fPacketCountTotalTXCompCanDrain:%zu fPacketCountTotalTXCompDrained:%zu\n", *(*(this + 7) + 208), *(*(this + 7) + 216)) + v12;
  v14 = IO80211Print(**(this + 7), 5, -1, 0, a2, v13 + a3, a4 - v13, "fPacketCountTotalTXCompDropped:%zu fPacketCountTotalTXCompStaged:%zu\n", *(*(this + 7) + 224), *(*(this + 7) + 232)) + v13;
  v15 = 0;
  v16 = IO80211Print(**(this + 7), 5, -1, 0, a2, v14 + a3, a4 - v14, "fPacketCountTotalTXCompDrainedByInterface:\n") + v14;
  do
  {
    v17 = *(this + 7);
    v18 = v17[v15 + 30];
    if (v18)
    {
      v16 += IO80211Print(*v17, 5, -1, 0, a2, v16 + a3, a4 - v16, "%d:%zu\n", v15, v18);
    }

    ++v15;
  }

  while (v15 != 12);
  v19 = IO80211Print(**(this + 7), 5, -1, 0, a2, v16 + a3, a4 - v16, "fPacketCountTotalRXCompCanDrain:%zu fPacketCountTotalRXCompDrained:%zu\n", *(*(this + 7) + 336), *(*(this + 7) + 344)) + v16;
  v20 = IO80211Print(**(this + 7), 5, -1, 0, a2, v19 + a3, a4 - v19, "fPacketCountTotalRXCompDropped:%zu fPacketCountTotalRXCompStaged:%zu\n", *(*(this + 7) + 352), *(*(this + 7) + 360)) + v19;
  v21 = 0;
  v22 = IO80211Print(**(this + 7), 5, -1, 0, a2, v20 + a3, a4 - v20, "fPacketCountTotalRXCompDrainedByInterface:\n") + v20;
  do
  {
    v23 = *(this + 7);
    v24 = v23[v21 + 46];
    if (v24)
    {
      v22 += IO80211Print(*v23, 5, -1, 0, a2, v22 + a3, a4 - v22, "%d:%zu\n", v21, v24);
    }

    ++v21;
  }

  while (v21 != 12);
  v25 = *(this + 7);
  v26 = *v25;
  TxPacketTracker = AppleBCMWLANPCIeSkywalkPacketPool::getTxPacketTracker(*(v25 + 56));
  v28 = (*(*TxPacketTracker + 72))(TxPacketTracker);
  RxPacketTracker = AppleBCMWLANPCIeSkywalkPacketPool::getRxPacketTracker(*(*(this + 7) + 56));
  v30 = (*(*RxPacketTracker + 72))(RxPacketTracker);
  v31 = IO80211Print(v26, 5, -1, 0, a2, v22 + a3, a4 - v22, "fTXTrackerCount:%u fRXTrackerCount:%u\n", v28, v30) + v22;
  absolutetime_to_nanoseconds();
  absolutetime_to_nanoseconds();
  v32 = IO80211Print(**(this + 7), 5, -1, 0, a2, v31 + a3, a4 - v31, "fLastRxRingDrain:%llu ns fLastTxRingDrain:%llu ns\n", 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL);
  return AppleBCMWLANPCIeSkywalkPacketPool::collectPacketPoolStats(*(*(this + 7) + 56), a2, a3, a4, v32 + v31);
}

void AppleBCMWLANPCIeSkywalk::setMonitorMode(AppleBCMWLANPCIeSkywalk *this, OSObject *a2)
{
  v2 = a2;
  if (a2)
  {
    AppleBCMWLANPCIeSkywalk::allocSkywalkMonitorResources(this, a2);
  }

  else
  {
    AppleBCMWLANPCIeSkywalk::freeSkywalkMonitorResources(this);
  }

  *(*(this + 7) + 128) = v2;
}

uint64_t AppleBCMWLANPCIeSkywalk::storePTMTimestamp(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  nanoseconds_to_absolutetime();
  ContinuousTimeOffset = AppleBCMWLANBusInterfacePCIe::getContinuousTimeOffset(*(*(a1 + 56) + 48));
  (*(*a3 + 528))(a3, 1);
  return (*(*a3 + 544))(a3, ContinuousTimeOffset);
}

uint64_t AppleBCMWLANPCIeSkywalk::rxSubmissionQueueDataAvailable(AppleBCMWLANPCIeSkywalk *this)
{
  v2 = (*(**(*(this + 7) + 48) + 80))(*(*(this + 7) + 48));
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = ___ZN23AppleBCMWLANPCIeSkywalk30rxSubmissionQueueDataAvailableEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_131;
  v4[4] = this;
  return (*(*v2 + 112))(v2, v4);
}

uint64_t ___ZN23AppleBCMWLANPCIeSkywalk30rxSubmissionQueueDataAvailableEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  ++*(*(v1 + 56) + 168);
  (*(**(*(v1 + 56) + 64) + 128))(*(*(v1 + 56) + 64), 0, 0);
  return 0;
}

uint64_t AppleBCMWLANPCIeSkywalk::setCommonLogger(AppleBCMWLANPCIeSkywalk *this, OSObject *anObject)
{
  *(*(this + 7) + 8) = OSMetaClassBase::safeMetaCast(anObject, gCCLogStreamMetaClass);
  v3 = *(**(*(this + 7) + 64) + 224);

  return v3();
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeSkywalk::setCommonLogger(AppleBCMWLANPCIeSkywalk *this, OSObject *anObject)
{
  *(*(this + 2) + 8) = OSMetaClassBase::safeMetaCast(anObject, gCCLogStreamMetaClass);
  v3 = *(**(*(this + 2) + 64) + 224);

  return v3();
}

void OUTLINED_FUNCTION_6_6(float a1)
{
  *(v1 - 176) = a1;
  *(v1 - 172) = 73;
  *(v1 - 168) = 2080;
}

void OUTLINED_FUNCTION_7_8(float a1)
{
  *(v1 - 176) = a1;
  *(v1 - 172) = 73;
  *(v1 - 168) = 2080;
}

OSMetaClassBase *OUTLINED_FUNCTION_18_1()
{
  v3 = *(*(v0 + 56) + 48);
  v4 = *v1;

  return OSMetaClassBase::safeMetaCast(v3, v4);
}

uint64_t OUTLINED_FUNCTION_21_0()
{
  v3 = *(*(v0 + 56) + 56);

  return AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(v3, v1);
}

void OUTLINED_FUNCTION_23_3(int a1@<W8>)
{
  *(v3 - 146) = v2;
  *(v3 - 144) = a1;
  *(v3 - 140) = v2;
  *(v3 - 138) = v1;
  *(v3 - 134) = v2;
}

AppleBCMWLANGCRAdapter *AppleBCMWLANGCRAdapter::withDriver(AppleBCMWLANGCRAdapter *this, AppleBCMWLANCore *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANGCRAdapterMetaClass, &v5))
  {
    return 0;
  }

  v3 = v5;
  if (v5 && (AppleBCMWLANGCRAdapter::initWithDriver(v5, this) & 1) == 0)
  {
    (*(*v3 + 16))(v3);
    return 0;
  }

  return v3;
}

uint64_t AppleBCMWLANGCRAdapter::initWithDriver(OSObject *this, AppleBCMWLANCore *a2)
{
  v4 = IOMallocZeroTyped();
  this[1].OSMetaClassBase::__vftable = v4;
  if (v4)
  {
    v4->retain = a2;
    retain = this[1].retain;
    if (retain)
    {
      this[1].release = AppleBCMWLANCore::getCommander(retain);
      v6 = this[1].OSMetaClassBase::__vftable;
      if (v6->release)
      {
        this[1].isEqualTo = AppleBCMWLANCore::getConfigManager(v6->retain);
        if (this[1].isEqualTo)
        {
          this[1].Dispatch = (*(*a2 + 1952))(a2);
          Dispatch = this[1].Dispatch;
          if (Dispatch)
          {
            (*(*Dispatch + 8))(Dispatch);
            if (OSObject::init(this))
            {
              v8 = this[1].OSMetaClassBase::__vftable;
              WORD2(v8->init) = 0;
              LODWORD(v8->init) = 0;
              LOBYTE(this[1].getMetaClass) = 0;
              BYTE1(this[1].getMetaClass) = 0;
              BYTE2(this[1].getMetaClass) = 0;
              return 1;
            }

            IOLog("AppleBCMWLANGCRAdapter super init failied\n");
          }

          else
          {
            IOLog("AppleBCMWLANGCRAdapter Failed to init fLogger\n");
          }
        }

        else
        {
          IOLog("AppleBCMWLANGCRAdapter configManager is null\n");
        }
      }

      else
      {
        IOLog("AppleBCMWLANGCRAdapter commander is null\n");
      }
    }

    else
    {
      IOLog("AppleBCMWLANGCRAdapter driver is null\n");
    }
  }

  else
  {
    IOLog("Failed to allocate AppleBCMWLANGCRAdapter_IVars\n");
  }

  return 0;
}

void AppleBCMWLANGCRAdapter::free(OSObject *this)
{
  v2 = this[1].OSMetaClassBase::__vftable;
  if (v2)
  {
    Dispatch = v2->Dispatch;
    if (!Dispatch || ((*(*Dispatch + 16))(v2->Dispatch), this[1].Dispatch = 0, (v2 = this[1].OSMetaClassBase::__vftable) != 0))
    {
      IOFree(v2, 0x30uLL);
      this[1].OSMetaClassBase::__vftable = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANGCRAdapter::createGCRSession(uint64_t a1, char a2, _DWORD *a3)
{
  v6 = a1 + 40;
  v5 = *(a1 + 40);
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  if (*(v5 + 32) && CCLogStream::shouldLog())
  {
    AppleBCMWLANGCRAdapter::createGCRSession(v6);
  }

  v7 = IOMallocZeroData();
  if (!v7)
  {
    return 12;
  }

  *(v7 + 8) = 1;
  *v7 = 0x1C000201018000;
  v8 = a3[5];
  v9 = a3[4] != 0;
  *(v7 + 20) = v9 | (4 * (a3[6] > 1u)) | 2;
  *(v7 + 18) = v8;
  *(v7 + 14) = 0;
  *(v7 + 12) = 1;
  *(v7 + 16) = 0;
  *(v7 + 15) = a2;
  **v6 = v9;
  v11 = a3[9];
  v10 = a3 + 9;
  *(v7 + 28) = *(v10 + 2);
  *(v7 + 24) = v11;
  v12 = (*v6 + 40);
  if (**v6 == 1)
  {
    v13 = *v10;
    *(*v6 + 44) = *(v10 + 2);
    *v12 = v13;
  }

  else
  {
    *(*v6 + 44) = 0;
    *v12 = 0;
  }

  v16 = v7;
  v17 = 36;
  v14 = AppleBCMWLANCommander::runIOVarSet(*(*v6 + 16), "llw", &v16, 0, 0);
  if (v14 && *(*v6 + 32) && CCLogStream::shouldLog())
  {
    AppleBCMWLANGCRAdapter::createGCRSession(v6);
  }

  IOFreeData();
  return v14;
}

uint64_t AppleBCMWLANGCRAdapter::joinGCRSession(uint64_t a1, char a2, uint64_t a3)
{
  v5 = (a1 + 40);
  if (*(*(a1 + 40) + 32) && CCLogStream::shouldLog())
  {
    AppleBCMWLANGCRAdapter::joinGCRSession(v5);
  }

  v6 = IOMallocZeroData();
  if (!v6)
  {
    return 12;
  }

  *(v6 + 8) = 1;
  *v6 = 0x1C000201018000;
  v7 = *(a3 + 20);
  v8 = *(a3 + 16) != 0;
  *(v6 + 20) = v8 | (4 * (*(a3 + 24) > 1u)) | 2;
  *(v6 + 18) = v7;
  *(v6 + 14) = 0;
  *(v6 + 12) = 257;
  *(v6 + 16) = 0;
  *(v6 + 15) = a2;
  **v5 = v8;
  v9 = *(a3 + 28);
  *(v6 + 28) = *(a3 + 32);
  *(v6 + 24) = v9;
  LOWORD(v9) = *(a3 + 38);
  *(v6 + 30) = *(a3 + 34);
  *(v6 + 34) = v9;
  v12[0] = v6;
  v12[1] = 36;
  v10 = AppleBCMWLANCommander::runIOVarSet(*(*v5 + 16), "llw", v12, 0, 0);
  if (v10)
  {
    AppleBCMWLANGCRAdapter::joinGCRSession(v5);
  }

  IOFreeData();
  return v10;
}

uint64_t AppleBCMWLANGCRAdapter::configureGCRRate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = IOMallocZeroData();
  if (!v5)
  {
    return 12;
  }

  v6 = v5;
  *(v5 + 8) = 1;
  *v5 = 0x1C000A01018000;
  v7 = *(a3 + 4);
  *(v5 + 12) = v7;
  *(v5 + 14) = v7;
  *(v5 + 20) = 1;
  *(v5 + 16) = 1;
  v8 = *(a3 + 8);
  if (v8 >= 4)
  {
    AppleBCMWLANGCRAdapter::configureGCRRate();
  }

  v9 = *(a3 + 16);
  if (v9 >= 3)
  {
    AppleBCMWLANGCRAdapter::configureGCRRate();
  }

  v10 = *(a3 + 12);
  if (v10 >= 2)
  {
    AppleBCMWLANGCRAdapter::configureGCRRate();
  }

  *(v5 + 16) = (16 * v8) | (v9 << 11) | (v10 << 9) | 1;
  v13 = *(a1 + 40);
  v12 = a1 + 40;
  v11 = v13;
  if (*(v13 + 32))
  {
    shouldLog = CCLogStream::shouldLog();
    v11 = *v12;
    if (shouldLog)
    {
      CCLogStream::logAlert(*(v11 + 32), "[dk] %s@%d:Configuring GCR multicast rate, %x, %x\n", "configureGCRRate", 407, *(v6 + 12), *(v6 + 16));
      v11 = *v12;
    }
  }

  v17[0] = v6;
  v17[1] = 1024;
  v15 = AppleBCMWLANCommander::runIOVarSet(*(v11 + 16), "llw", v17, 0, 0);
  if (v15 && *(*v12 + 32) && CCLogStream::shouldLog())
  {
    AppleBCMWLANGCRAdapter::configureGCRRate(v12);
  }

  IOFreeData();
  return v15;
}

uint64_t AppleBCMWLANGCRAdapter::clearGCRStats(AppleBCMWLANGCRAdapter *this)
{
  v2 = IOMallocZeroData();
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  *(v2 + 8) = 1;
  *v2 = 0xE000901018000;
  *(v2 + 12) = 1;
  *(v2 + 13) |= 1u;
  v6 = *(this + 5);
  v5 = this + 40;
  v4 = v6;
  if (*(v6 + 32))
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = *v5;
    if (shouldLog)
    {
      CCLogStream::logAlert(*(v4 + 32), "[dk] %s@%d:Clearing GCR link condition stats\n", "clearGCRStats", 454);
      v4 = *v5;
    }
  }

  v10[0] = v3;
  v10[1] = 1024;
  v8 = AppleBCMWLANCommander::runIOVarSet(*(v4 + 16), "llw", v10, 0, 0);
  if (v8 && *(*v5 + 32) && CCLogStream::shouldLog())
  {
    AppleBCMWLANGCRAdapter::clearGCRStats(v5);
  }

  IOFreeData();
  return v8;
}

uint64_t AppleBCMWLANGCRAdapter::getGCRLinkCondition(AppleBCMWLANGCRAdapter *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 40;
  if (*(*(a1 + 5) + 32) && CCLogStream::shouldLog())
  {
    AppleBCMWLANGCRAdapter::getGCRLinkCondition(v5);
  }

  v6 = IOMallocZeroData();
  v7 = IOMallocZeroData();
  v8 = v7;
  *v6 = 0xE000900018000;
  *(v6 + 8) = 1;
  *(v6 + 12) = 1;
  v17[0] = v6;
  v17[1] = 1024;
  v9 = 0x40000000400;
  if (!v7)
  {
    v9 = 0;
  }

  v16[0] = v7;
  v16[1] = v9;
  v10 = AppleBCMWLANCommander::runIOVarGet(*(*v5 + 16), "llw", v17, v16, 0);
  if (v10)
  {
    v14 = v10;
    if (AppleBCMWLANGCRAdapter::getGCRLinkCondition(v5, v8 == 0))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v11 = *(v8 + 6);
  v12 = v11 - 16;
  if (v11 == 16)
  {
    AppleBCMWLANGCRAdapter::getGCRLinkCondition(v5, &v18);
  }

  else
  {
    if (*(*v5 + 32) && CCLogStream::shouldLog())
    {
      CCLogStream::logAlert(*(*v5 + 32), "[dk] %s@%d:stats version: %d", "getGCRLinkCondition", 535, *(v8 + 20));
    }

    if (*(v8 + 20))
    {
      if (v12 <= 0x3B)
      {
        if (*(*v5 + 32) && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*v5 + 32), "[dk] %s@%d:not enough room for gcr stats version 2 %d,%lu\n", "getGCRLinkCondition", 542, v12, 60);
        }

        v14 = 3758096385;
      }

      else
      {
        *(a3 + 12) = *(v8 + 68);
        *(a3 + 16) = *(v8 + 52);
        v13 = *(v8 + 82);
        *(a3 + 20) = v13;
        *(a3 + 22) = *(v8 + 76) & 0xF;
        if (!v13)
        {
          *(a3 + 20) = *(*v5 + 1);
        }

        if (*(*v5 + 32) && CCLogStream::shouldLog())
        {
          CCLogStream::logAlert(*(*v5 + 32), "[dk] %s@%d:Got GCR link condition stats rxmpdu:%u, rxholes:%u txPackets:%u, rxPackets: %u snr:%u mcs %u\n", "getGCRLinkCondition", 555, *(v8 + 72), *(v8 + 64), *(a3 + 12), *(a3 + 16), *(a3 + 20), *(a3 + 22));
        }

        AppleBCMWLANGCRAdapter::clearGCRStats(a1);
        v14 = 0;
      }

      goto LABEL_19;
    }

    AppleBCMWLANGCRAdapter::getGCRLinkCondition(v5, v8 + 20, &v18);
  }

  v14 = v18;
LABEL_19:
  IOFreeData();
LABEL_20:
  IOFreeData();
  return v14;
}

OSObject *AppleBCMWLANPCIeSkywalkFlowQueue::withProviderAndQueueInfo(AppleBCMWLANBusInterfacePCIe *a1, uint64_t a2, uint64_t a3, IO80211SkywalkInterface *a4, BOOL (__cdecl *a5)(OSObject *__hidden this), void (__cdecl *a6)(OSObject *__hidden this))
{
  v9 = a3;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeSkywalkFlowQueueMetaClass, &v14))
  {
    return 0;
  }

  v12 = v14;
  if (v14 && (AppleBCMWLANPCIeSkywalkFlowQueue::initWithProviderAndQueueInfo(v14, a1, a2 & 0xFFFFFFFFFFFFLL, v9, a4, a5, a6) & 1) == 0)
  {
    (v12->release)(v12);
    return 0;
  }

  return v12;
}

void AppleBCMWLANPCIeSkywalkFlowQueue::free(AppleBCMWLANPCIeSkywalkFlowQueue *this)
{
  if (*(this + 5))
  {
    AppleBCMWLANPCIeSkywalkFlowQueue::setFWRing(this, 0);
    v2 = *(this + 5);
    if (*(v2 + 40))
    {
      shouldLog = CCLogStream::shouldLog();
      v2 = *(this + 5);
      if (shouldLog)
      {
        v6 = *(v2 + 40);
        InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(v2 + 64));
        CCLogStream::logInfo(v6, "[dk] %s@%d:%s: flowQ %p IfID:%u", "free", 125, "free", this, InterfaceId);
        v2 = *(this + 5);
      }
    }

    v4 = *(v2 + 40);
    if (v4)
    {
      (*(*v4 + 16))(v4);
      *(*(this + 5) + 40) = 0;
      v2 = *(this + 5);
    }

    *(v2 + 80) = 0u;
    *(v2 + 96) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
    v5 = *(this + 5);
    if (v5)
    {
      IOFree(v5, 0x70uLL);
      *(this + 5) = 0;
    }
  }

  OSObject::free(this);
}

uint64_t AppleBCMWLANPCIeSkywalkFlowQueue::setFWRing(AppleBCMWLANPCIeSkywalkFlowQueue *this, AppleBCMWLANPCIeTransmitFlowRing *a2)
{
  if (a2)
  {
    v4 = *(this + 5);
    if (*(v4 + 40))
    {
      shouldLog = CCLogStream::shouldLog();
      v4 = *(this + 5);
      if (shouldLog)
      {
        CCLogStream::logInfo(*(v4 + 40), "[dk] %s@%d:Set flowid:%u\n", "setFWRing", 257, *(v4 + 96));
        v4 = *(this + 5);
      }
    }

    *(v4 + 72) = a2;
    v6 = *(*a2 + 8);

    return v6(a2);
  }

  else
  {
    AppleBCMWLANPCIeSkywalkFlowQueue::flushPackets(this);
    v8 = *(this + 5);
    if (*(v8 + 96) != -1)
    {
      if (*(v8 + 40))
      {
        v9 = CCLogStream::shouldLog();
        v8 = *(this + 5);
        if (v9)
        {
          CCLogStream::logInfo(*(v8 + 40), "[dk] %s@%d:Free flowid:%u\n", "setFWRing", 266, *(v8 + 96));
          v8 = *(this + 5);
        }
      }

      AppleBCMWLANBusInterfacePCIe::releaseFlowId(*(v8 + 56), *(v8 + 96));
      *(*(this + 5) + 96) = -1;
      v8 = *(this + 5);
    }

    result = *(v8 + 72);
    if (result)
    {
      result = (*(*result + 16))(result);
      *(*(this + 5) + 72) = 0;
    }
  }

  return result;
}

void *AppleBCMWLANPCIeSkywalkFlowQueue::enqueuePacket(AppleBCMWLANPCIeSkywalkFlowQueue *this, AppleBCMWLANPCIeSkywalkPacket *a2, uint64_t a3)
{
  v4 = (this + 40);
  v5 = *(this + 5);
  if (*(v5 + 96) != -1 || a3 == 0)
  {
LABEL_75:
    result = AppleBCMWLANPCIeSkywalkPacket::getChain(a2);
    v31 = *(v5 + 16);
    if (*v31 == v5 + 8)
    {
      *result = v5 + 8;
      result[1] = v31;
      *v31 = result;
      *(v5 + 16) = result;
      result = AppleBCMWLANPCIeSkywalkPacket::setAc(a2, *(*v4 + 89));
      ++*(*v4 + 24);
    }

    else
    {
      __break(1u);
    }

    return result;
  }

  v32 = 0;
  v8 = *(v5 + 89);
  v9 = *(v5 + 56);
  if (v9)
  {
    v10 = (*(*v9 + 1104))(v9, a2, a3);
    v11 = v10;
    v12 = v10 != 0;
    if (v8 == 3 && v10 != 0)
    {
      if ((AppleBCMWLANCore::checkForHP2PSupport(v10) & 1) == 0)
      {
        if (AppleBCMWLANCore::isP2pAirplayActive(v11) && AppleBCMWLANCore::mapLowLatencyLowPriority(v11) && (InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(*v4 + 64)), InterfaceId == AppleBCMWLANCore::getProximityInterfaceId(v11)))
        {
          v14 = 5;
        }

        else if (IO80211SkywalkInterface::isLowLatencyEnabled(*(*v4 + 64)))
        {
          v14 = 7;
        }

        else
        {
          v14 = 6;
        }

        goto LABEL_43;
      }

      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  if (IO80211SkywalkInterface::isLowLatencyEnabled(*(*v4 + 64)))
  {
    if (v8 == 1)
    {
      v14 = 2;
      if (!v12)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    }

    if (v8 != 2)
    {
      if (v8 == 3)
      {
        v14 = 7;
        if (v12)
        {
          goto LABEL_43;
        }

LABEL_41:
        v16 = 0;
        goto LABEL_50;
      }

      v14 = 3;
      if (!v12)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    }

    v14 = 4;
LABEL_32:
    if (!v12)
    {
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  if (v8 == 1)
  {
    v14 = 1;
    if (!v12)
    {
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  if (v8 == 2)
  {
    v14 = 5;
    goto LABEL_32;
  }

  if (v8 != 3)
  {
    v14 = 0;
    if (v12)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v14 = 6;
  if (!v12)
  {
    goto LABEL_41;
  }

LABEL_43:
  v17 = *v4;
  if (*(*v4 + 40))
  {
    shouldLog = CCLogStream::shouldLog();
    v17 = *v4;
    if (shouldLog)
    {
      AppleBCMWLANPCIeSkywalkFlowQueue::enqueuePacket(v17, v11, v4, &v33);
      v17 = v33;
    }
  }

  if (*(v17 + 40) && CCLogStream::shouldLog())
  {
    AppleBCMWLANPCIeSkywalkFlowQueue::enqueuePacket(v4, v11, v14, v8);
  }

  v16 = 1;
LABEL_50:
  isLowLatencyEnabled = IO80211SkywalkInterface::isLowLatencyEnabled(*(*v4 + 64));
  v20 = isLowLatencyEnabled;
  if (v16 && isLowLatencyEnabled)
  {
    if (AppleBCMWLANCore::isSplitTxStatusEnabled(v11))
    {
      v20 = 3;
    }

    else
    {
      v20 = 1;
    }
  }

  v21 = IO80211SkywalkInterface::getInterfaceId(*(*v4 + 64));
  if (IO80211SkywalkInterface::isLowLatencyEnabled(*(*v4 + 64)))
  {
    ParentInterface = IO80211SkywalkInterface::getParentInterface(*(*v4 + 64));
    if (!ParentInterface)
    {
      v23 = *v4;
      if (*(*v4 + 40))
      {
        v29 = CCLogStream::shouldLog();
        v23 = *v4;
        if (v29)
        {
          CCLogStream::logAlert(*(v23 + 40), "[dk] %s@%d:Invalid parentIf\n", "enqueuePacket", 193);
          v23 = *v4;
        }
      }

      goto LABEL_68;
    }

    v21 = IO80211SkywalkInterface::getInterfaceId(ParentInterface);
  }

  v23 = *v4;
  if (v21 != -1)
  {
    v24 = *(v23 + 56);
    v25 = (*(**(v23 + 64) + 1072))(*(v23 + 64));
    AppleBCMWLANBusInterfacePCIe::requestFlowId(v24, v25 & 0xFFFFFFFFFFFFLL, **(this + 5) | (*(*(this + 5) + 4) << 32), v21, v14, v8, (*(this + 5) + 96), &v32, 0, this, AppleBCMWLANPCIeSkywalkFlowQueue::fwRingPending, AppleBCMWLANPCIeSkywalkFlowQueue::fwRingFill, AppleBCMWLANPCIeSkywalkFlowQueue::fwRingError, v20);
    v26 = *(this + 5);
    v27 = *(v26 + 96);
    if (v27 == 0xFFFF)
    {
      if (*(v26 + 40) && CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkFlowQueue::enqueuePacket(v4);
      }
    }

    else
    {
      TransmitFlowRing = AppleBCMWLANBusInterfacePCIe::getTransmitFlowRing(*(v26 + 56), v27);
      if (TransmitFlowRing)
      {
        AppleBCMWLANPCIeTransmitFlowRing::setSkywalkFlow(TransmitFlowRing, 1);
      }

      else if (*(*v4 + 40) && CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkFlowQueue::enqueuePacket(v4);
      }
    }

    v5 = *v4;
    goto LABEL_75;
  }

LABEL_68:
  result = *(v23 + 40);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPCIeSkywalkFlowQueue::enqueuePacket(v4);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkFlowQueue::fwRingPending(AppleBCMWLANPCIeSkywalkFlowQueue *this)
{
  v1 = *(this + 5);
  if (v1)
  {
    return *(v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANPCIeSkywalkFlowQueue::fwRingFill(AppleBCMWLANPCIeSkywalkFlowQueue *this, AppleBCMWLANByteRing *a2, char *a3, unsigned int a4)
{
  v8 = this + 40;
  TxPacketTracker = AppleBCMWLANPCIeSkywalkPacketPool::getTxPacketTracker(*(*(this + 5) + 80));
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(*v8 + 64));
  v65 = (*(**(*v8 + 64) + 1184))();
  isLowLatencyEnabled = IO80211SkywalkInterface::isLowLatencyEnabled(*(*v8 + 64));
  v10 = *v8;
  v12 = **v8 != -1 || *(*v8 + 4) != 0xFFFF;
  v13 = *(v10 + 72);
  if (v13)
  {
    v14 = v13 == a2;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    if (*(v10 + 40) && CCLogStream::shouldLog())
    {
      CCLogStream::logInfo(*(*v8 + 40), "[dk] %s@%d:Invalid fFWRing/ring ivars->fFWRing:%p ring:%p\n", "fwRingFill", 348, *(*v8 + 72), a2);
    }

    return 0;
  }

  if (IO80211SkywalkInterface::isLowLatencyEnabled(*(v10 + 64)))
  {
    ParentInterface = IO80211SkywalkInterface::getParentInterface(*(*v8 + 64));
    if (ParentInterface)
    {
      InterfaceId = IO80211SkywalkInterface::getInterfaceId(ParentInterface);
    }

    else
    {
      if (*(*v8 + 40) && CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkFlowQueue::fwRingFill(v8);
      }

      InterfaceId = -1;
    }
  }

  v74 = -21846;
  memset(&v73[1], 170, 24);
  v62 = v12;
  if (a4)
  {
    v15 = 0;
    v17 = isLowLatencyEnabled;
    if (v12)
    {
      v17 = 0;
    }

    v66 = v17;
    v63 = TxPacketTracker;
    v64 = a3;
    while (1)
    {
      v18 = AppleBCMWLANPCIeSkywalkFlowQueue::dequeuePacket(this);
      if (!v18)
      {
        goto LABEL_97;
      }

      v19 = v18;
      v20 = (v18->getDataLength)(v18);
      if (v20 <= 0xE)
      {
        break;
      }

      v24 = &a3[48 * v15];
      *(v24 + 1) = 0u;
      *(v24 + 2) = 0u;
      *v24 = 0u;
      if (isLowLatencyEnabled && AppleBCMWLANBusInterfacePCIe::isFWPacketTimestampEnabled(*(*v8 + 56)))
      {
        mach_continuous_time();
        absolutetime_to_nanoseconds();
        *(v24 + 6) = *&v73[17] / 0x3E8uLL;
        v24[47] = -1;
        if ((v19->OSObject::OSMetaClassBase::__vftable[1]._PrepareWithQueue)(v19, &v73[9]))
        {
          AppleBCMWLANPCIeSkywalkPacket::setPktLifetime(v19, -1);
        }

        else
        {
          if (*&v73[9] <= mach_absolute_time())
          {
            v22 = *v8;
            if (*(*v8 + 40))
            {
              shouldLog = CCLogStream::shouldLog();
              v22 = *v8;
              if (shouldLog)
              {
                CCLogStream::logAlertIf(*(v22 + 40), 0x400uLL, "[dk] %s@%d:Got an expired packet. Deallocating\n", "fwRingFill", 393);
                goto LABEL_90;
              }
            }

LABEL_30:
            AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(v22 + 80), v19);
            goto LABEL_87;
          }

          absolutetime_to_nanoseconds();
          v45 = *&v73[1];
          *&v73[1] /= 0x3E8uLL;
          v46 = v45 / 0xF4240;
          if (v46 >= 0x7FFFuLL)
          {
            LOWORD(v46) = 0x7FFF;
          }

          AppleBCMWLANPCIeSkywalkPacket::setPktLifetime(v19, v46);
          v47 = *&v73[1];
          if (*&v73[1] > 0xF4240uLL)
          {
            AppleBCMWLANPCIeSkywalkPacket::setPktLifetime(v19, -2);
            if (*(*v8 + 40) && CCLogStream::shouldLog())
            {
              CCLogStream::logAlert(*(*v8 + 40), "[dk] %s@%d:com.apple.p2p: Got an packet with lifetime more than a second: lifetime:%llu msg[fillCount].lifetime_250us: %d, scale=%d\n", "fwRingFill", 413, *&v73[1], v24[47], v24[45] & 7);
            }
          }

          else
          {
            v48 = *&v73[1] / 0xFAuLL;
            *&v73[1] = v48;
            v49 = v24[45] & 0xF8;
            if (v47 >> 9 >= 0x7D)
            {
              do
              {
                v50 = v48;
                v48 >>= 1;
                v49 = v49 & 0xF8 | (v49 + 1) & 7;
              }

              while (v50 > 0x1FF);
              *&v73[1] = v48;
            }

            v24[45] = v49;
            v24[47] = v48;
          }
        }
      }

      *v24 = 15;
      v24[1] = InterfaceId;
      if ((*(**(*v8 + 72) + 248))(*(*v8 + 72)))
      {
        v25 = -127;
      }

      else
      {
        v25 = 1;
      }

      v24[2] = v25;
      v24[22] = 0;
      v24[22] |= (32 * (*(**(*v8 + 72) + 344))()) | 1;
      v24[23] = 1;
      v24[44] = 0;
      v74 = -1;
      if (AppleBCMWLANHashtable::add(TxPacketTracker, v19, &v74))
      {
        if (*(*v8 + 40) && CCLogStream::shouldLog())
        {
          AppleBCMWLANPCIeSkywalkFlowQueue::fwRingFill(v8);
        }

        AppleBCMWLANPCIeSkywalkFlowQueue::enqueuePacket(this, v19, 1);
        return v15;
      }

      AppleBCMWLANPCIeSkywalkPacket::setPacketId(v19, v74);
      Headroom = IO80211NetworkPacket::getHeadroom(v19);
      v27 = (v19->OSObject::OSMetaClassBase::__vftable[1].getDataLength)(v19) + Headroom;
      if (v66)
      {
        v28 = v27 - v65;
        Headroom -= v65;
        v29 = *v27;
        v30 = *(v27 + 8);
        *(v28 + 12) = *(v27 + 12);
        *(v28 + 8) = v30;
        *v28 = v29;
        *(v28 + 14) = 0x8F2170003AAAALL;
        *(v28 + 20) = 0xDEADBEEF04030008;
        *(v28 + 12) = bswap32((v19->getDataLength)(v19) + 14) >> 16;
        (v19->setDataLength)(v19);
        v27 = v28;
      }

      v31 = *v27;
      v32 = *(v27 + 8);
      *(v24 + 10) = *(v27 + 12);
      *(v24 + 4) = v32;
      *(v24 + 1) = v31;
      v33 = AppleBCMWLANPCIeSkywalkPacket::getBusAddress(v19) + Headroom + 14;
      *(v24 + 21) = (v19->getDataLength)(v19) - 14;
      *(v24 + 4) = v33;
      *(v24 + 2) = v74;
      *(v24 + 3) = (*(**(*v8 + 72) + 296))();
      if ((v19->OSObject::OSMetaClassBase::__vftable[1].Dispatch)(v19) == 4718992 && AppleBCMWLANPCIeSkywalkPacket::getAc(v19) == 3)
      {
        if ((*(**(*v8 + 64) + 728))(*(*v8 + 64)))
        {
          v34 = (*(**(*v8 + 64) + 728))(*(*v8 + 64));
          if (AppleBCMWLANCore::getReliableL3CtrlTxProfileActive(v34))
          {
            v24[46] = 0x80;
          }
        }
      }

      v35 = (v19->OSObject::OSMetaClassBase::__vftable[1]._SetPacketIndex)(v19);
      v36 = *v8;
      if ((v35 & 1) != 0 || *(v36 + 98) == 1)
      {
        if (*(v36 + 104) == 3)
        {
          HostSWTimestamp = AppleBCMWLANBusInterfacePCIe::readHostSWTimestamp(*(v36 + 56), "fwRingFill");
          (v19->OSObject::OSMetaClassBase::__vftable[1].free)(v19, HostSWTimestamp);
          v36 = *v8;
        }

        if ((*(v36 + 100) & 1) == 0)
        {
          v24[44] |= *(v36 + 101);
          if ((*(*v8 + 101) & 4) != 0)
          {
            v24[46] = 0;
          }
        }
      }

      if ((v19->OSObject::OSMetaClassBase::__vftable[1]._SetPacketIndex)(v19))
      {
        if (*(*v8 + 99) == 1)
        {
          v73[0] = 0;
          *v72 = 0;
          memset(v71, 0, sizeof(v71));
          *v70 = 0;
          if (AppleBCMWLANUtil::isPTPPacket(v19, 1, v73, v72, &v71[1], v71, v70, v38))
          {
            v39 = *v72;
            v40 = -16;
            if (!v73[0])
            {
              v40 = -4;
            }

            v41 = (*&v71[1] + v40);
            v69 = 0;
            (v19->OSObject::OSMetaClassBase::__vftable[1]._GetPacketIndex)(v19, &v69);
            if (v73[0])
            {
              v42 = &off_1003CB540;
              v43 = 9;
              while (*(v42 - 2) != v71[0])
              {
                v42 += 2;
                if (!--v43)
                {
                  v44 = "unknown";
                  goto LABEL_79;
                }
              }

              v44 = *v42;
LABEL_79:
              IOLog("[WiFiTimeSync+] Tx UDPv6 message %s sequence %d from %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x to %02x%02x:%02x%02x_%02x%02x:%02x%02x @ %02x:%02x:%02x:%02x:%02x:%02x submitted. fIgnore %d extendedFlags 0x%x ts %llu", v44, *v70, *v41, v41[1], v41[2], v41[3], v41[12], v41[13], v41[14], v41[15], v39[6], v39[7], v39[8], v39[9]);
            }

            else
            {
              v52 = &off_1003CB540;
              v53 = 9;
              while (*(v52 - 2) != v71[0])
              {
                v52 += 2;
                if (!--v53)
                {
                  v54 = "unknown";
                  goto LABEL_84;
                }
              }

              v54 = *v52;
LABEL_84:
              IOLog("[WiFiTimeSync+] Tx UDPv4 message %s sequence %d from %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x to %u.%u.%u.%u @ %02x:%02x:%02x:%02x:%02x:%02x submitted. fIgnore %d extendedFlags 0x%x ts %llu", v54, *v70, *v41, v41[1], v41[2], v41[3], v39[6], v39[7], v39[8], v39[9]);
            }

            TxPacketTracker = v63;
            a3 = v64;
          }
        }
      }

      v15 = (v15 + 1);
LABEL_87:
      if (v15 >= a4)
      {
        goto LABEL_97;
      }
    }

    v21 = v20;
    v22 = *v8;
    if (*(*v8 + 40))
    {
      v23 = CCLogStream::shouldLog();
      v22 = *v8;
      if (v23)
      {
        v55 = *(v22 + 40);
        v56 = (*(**(v22 + 64) + 160))(*(v22 + 64));
        CCLogStream::logAlert(v55, "[dk] %s@%d:Got packet of invalid length %d on %s. Deallocating\n", "fwRingFill", 376, v21, v56);
LABEL_90:
        v22 = *v8;
      }
    }

    goto LABEL_30;
  }

  v15 = 0;
LABEL_97:
  AppleBCMWLANBusInterfacePCIe::updateActiveTxPacketCount(*(*(this + 5) + 56), v15);
  RingFreeSpace = AppleBCMWLANPCIeSkywalkFlowQueue::getRingFreeSpace(this);
  if (!v62)
  {
    v59 = RingFreeSpace;
    v60 = (*(**(*v8 + 64) + 1160))(*(*v8 + 64));
    if (v60 && v59 != 0)
    {
      (*(*v60 + 120))(v60);
    }
  }

  return v15;
}

uint64_t AppleBCMWLANPCIeSkywalkFlowQueue::fwRingError(AppleBCMWLANPCIeSkywalkFlowQueue *this, AppleBCMWLANByteRing *a2, uint64_t a3, void *a4)
{
  v4 = this + 40;
  result = *(*(this + 5) + 40);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPCIeSkywalkFlowQueue::fwRingError(v4);
    }
  }

  return result;
}

void *AppleBCMWLANPCIeSkywalkFlowQueue::dequeuePacket(AppleBCMWLANPCIeSkywalkFlowQueue *this)
{
  v1 = *(this + 5);
  if (v1 + 8 == *(v1 + 8))
  {
    *(v1 + 24) = 0;
    return 0;
  }

  else
  {
    --*(v1 + 24);
    v2 = *(this + 5);
    v5 = *(v2 + 8);
    v4 = (v2 + 8);
    result = v5;
    if (v5 == v4)
    {
      return AppleBCMWLANPCIeSkywalkPacket::fromChain(0);
    }

    else if (*result[1] == result && (v6 = *result, *(*result + 8) == result))
    {
      *(v6 + 8) = v4;
      *v4 = v6;
      *result = 0;
      result[1] = 0;
      return AppleBCMWLANPCIeSkywalkPacket::fromChain(result);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

IOUserNetworkPacket *AppleBCMWLANPCIeSkywalkFlowQueue::flushPackets(AppleBCMWLANPCIeSkywalkFlowQueue *this)
{
  result = AppleBCMWLANPCIeSkywalkFlowQueue::dequeuePacket(this);
  if (result)
  {
    v3 = result;
    do
    {
      AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(*(this + 5) + 80), v3);
      result = AppleBCMWLANPCIeSkywalkFlowQueue::dequeuePacket(this);
      v3 = result;
    }

    while (result);
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkFlowQueue::requestPendingPackets(AppleBCMWLANPCIeSkywalkFlowQueue *this)
{
  v1 = *(this + 5);
  result = *(v1 + 72);
  if (result)
  {
    return (*(*result + 192))(result, *(v1 + 24), 1);
  }

  return result;
}

IO80211WorkSource *AppleBCMWLANPCIeSkywalkFlowQueue::collectQueueStats(uint64_t a1, uint64_t a2)
{
  result = *(*(a1 + 40) + 72);
  if (result)
  {
    *(a2 + 28) = IO80211WorkSource::isEnabled(result);
    *(a2 + 27) = 1;
    *(a2 + 24) = (*(**(*(a1 + 40) + 72) + 208))(*(*(a1 + 40) + 72));
    *(a2 + 32) = AppleBCMWLANItemRing::getReadableItemCount(*(*(a1 + 40) + 72));
    result = AppleBCMWLANItemRing::getWritableItemCount(*(*(a1 + 40) + 72));
    *(a2 + 36) = result;
  }

  else
  {
    *(a2 + 27) = 0;
  }

  return result;
}

AppleBCMWLANPCIeSkywalkMulticastQueue *AppleBCMWLANPCIeSkywalkMulticastQueue::withProviderAndQueueInfo(AppleBCMWLANPCIeSkywalkMulticastQueue *this, AppleBCMWLANBusInterfacePCIe *a2, IO80211SkywalkInterface *a3, CCLogStream *a4, CCFaultReporter *a5)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeSkywalkMulticastQueueMetaClass, &v11))
  {
    return 0;
  }

  v9 = v11;
  if (v11 && (AppleBCMWLANPCIeSkywalkMulticastQueue::initWithProviderAndQueueInfo(v11, this, a2, a3, a4) & 1) == 0)
  {
    (*(*v9 + 16))(v9);
    return 0;
  }

  return v9;
}

uint64_t AppleBCMWLANPCIeSkywalkMulticastQueue::free(AppleBCMWLANSkywalkMulticastQueue *this)
{
  if ((*(*this + 136))(this))
  {
    (*(*this + 136))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkMulticastQueue::free(this);
    }
  }

  AppleBCMWLANPCIeSkywalkFlowQueue::setFWRing(*(*(this + 9) + 8), 0);
  v2 = *(this + 9);
  if (v2)
  {
    (*(**(v2 + 8) + 16))(*(v2 + 8));
    *(*(this + 9) + 8) = 0;
    v3 = *(this + 9);
    if (*v3)
    {
      (*(**v3 + 16))(*v3);
      **(this + 9) = 0;
      v3 = *(this + 9);
    }

    *v3 = 0;
    v3[1] = 0;
    v4 = *(this + 9);
    if (v4)
    {
      IOFree(v4, 0x10uLL);
      *(this + 9) = 0;
    }
  }

  return AppleBCMWLANSkywalkMulticastQueue::free(this);
}

uint64_t AppleBCMWLANPCIeSkywalkMulticastQueue::checkForWork(AppleBCMWLANPCIeSkywalkMulticastQueue *this)
{
  if (AppleBCMWLANPCIeSkywalkFlowQueue::getFlowId(*(*(this + 9) + 8)) != 0xFFFF)
  {
    if (AppleBCMWLANPCIeSkywalkFlowQueue::getPacketCount(*(*(this + 9) + 8)))
    {
      if (AppleBCMWLANPCIeSkywalkFlowQueue::getRingFreeSpace(*(*(this + 9) + 8)))
      {
        AppleBCMWLANPCIeSkywalkFlowQueue::requestPendingPackets(*(*(this + 9) + 8));
        if (AppleBCMWLANPCIeSkywalkFlowQueue::getPacketCount(*(*(this + 9) + 8)))
        {
          if (AppleBCMWLANPCIeSkywalkFlowQueue::getRingFreeSpace(*(*(this + 9) + 8)))
          {
            IO80211WorkSource::signalWorkAvailable(this);
          }
        }
      }
    }
  }

  return 0;
}

IO80211WorkSource *AppleBCMWLANPCIeSkywalkMulticastQueue::collectQueueStats(IO80211WorkSource *a1, uint64_t a2)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 5) = IO80211WorkSource::isEnabled(a1);
  v4 = *(*(a1 + 9) + 8);

  return AppleBCMWLANPCIeSkywalkFlowQueue::collectQueueStats(v4, a2);
}

IO80211WorkSource *non-virtual thunk toAppleBCMWLANPCIeSkywalkMulticastQueue::collectQueueStats(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 5) = IO80211WorkSource::isEnabled((a1 - 56));
  v4 = *(*(a1 + 16) + 8);

  return AppleBCMWLANPCIeSkywalkFlowQueue::collectQueueStats(v4, a2);
}

uint64_t AppleBCMWLANPCIeSkywalkMulticastQueue::clearFlowIdInFlowQ(AppleBCMWLANPCIeSkywalkMulticastQueue *this, int a2)
{
  result = AppleBCMWLANPCIeSkywalkFlowQueue::getFlowId(*(*(this + 9) + 8));
  if (result == a2)
  {
    v5 = *(*(this + 9) + 8);

    return AppleBCMWLANPCIeSkywalkFlowQueue::clearFlowId(v5);
  }

  return result;
}

OSObject *AppleBCMWLANPCIeSkywalkRxCompletionQueue::withProviderAndQueueInfoAndPool(AppleBCMWLANPCIeSkywalkRxCompletionQueue *this, OSObject *a2, OSObject *a3, uint64_t a4, uint64_t a5, IOUserNetworkPacketBufferPool *a6, AppleBCMWLANPCIeSkywalkPacketPool *a7, CCLogStream *a8, CCFaultReporter *a9)
{
  pObject = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeSkywalkRxCompletionQueueMetaClass, &pObject))
  {
    return 0;
  }

  v17 = pObject;
  if (pObject && (AppleBCMWLANPCIeSkywalkRxCompletionQueue::initProviderAndPoolAndQueueInfo(pObject, this, a2, a6, a3, a4, a5, a7, a8) & 1) == 0)
  {
    (v17->release)(v17);
    return 0;
  }

  return v17;
}

uint64_t AppleBCMWLANPCIeSkywalkRxCompletionQueue::initProviderAndPoolAndQueueInfo(AppleBCMWLANPCIeSkywalkRxCompletionQueue *this, AppleBCMWLANBusInterfacePCIe *a2, OSObject *a3, IOUserNetworkPacketBufferPool *a4, uint64_t a5, uint64_t a6, uint64_t a7, CCLogStream *a8, CCFaultReporter *a9)
{
  v10 = a7;
  v11 = a6;
  v17 = IOMallocZeroTyped();
  *(this + 11) = v17;
  if (v17)
  {
    v18 = (*(*a2 + 80))(a2);
    result = AppleBCMWLANSkywalkRxCompletionQueue::initWithPoolAndQueueInfo(this, a3, a4, a5, v11, v10, v18);
    if (result)
    {
      *(*(this + 11) + 72) = *(this + 11) + 72;
      *(*(this + 11) + 80) = *(this + 11) + 72;
      *(*(this + 11) + 24) = a4;
      v20 = *(this + 11);
      v21 = *(v20 + 24);
      if (v21)
      {
        (*(*v21 + 8))(v21);
        v20 = *(this + 11);
      }

      *(v20 + 16) = a2;
      v22 = *(this + 11);
      v23 = v22[2];
      if (v23)
      {
        (*(*v23 + 8))(v23);
        v22 = *(this + 11);
      }

      *v22 = a8;
      v24 = *(this + 11);
      if (*v24)
      {
        (*(**v24 + 8))(*v24);
        v24 = *(this + 11);
      }

      v24[1] = a9;
      *(*(this + 11) + 88) = (*(*a2 + 80))(a2);
      return 1;
    }
  }

  else
  {
    IOLog("rx comp queue ivars alloc fail\n");
    return 0;
  }

  return result;
}

void AppleBCMWLANPCIeSkywalkRxCompletionQueue::free(IOUserNetworkRxCompletionQueue *this)
{
  if (this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable)
  {
    if ((this->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[2].getMetaClass)(this))
    {
      (this->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[2].getMetaClass)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkRxCompletionQueue::free(this);
      }
    }

    v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    init = v2[1].init;
    if (init)
    {
      (*(*init + 16))(init);
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[1].init = 0;
      v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    }

    if (v2->init)
    {
      (*(*v2->init + 16))(v2->init);
      this[1].init = 0;
      v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    }

    free = v2[1].free;
    if (free)
    {
      (*(*free + 16))(free);
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[1].free = 0;
      v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    }

    v2[9].init = 0;
    v2[7] = 0u;
    v2[8] = 0u;
    v2[5] = 0u;
    v2[6] = 0u;
    v2[3] = 0u;
    v2[4] = 0u;
    v2[1] = 0u;
    v2[2] = 0u;
    *v2 = 0u;
    v5 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    if (v5)
    {
      IOFree(v5, 0x98uLL);
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable = 0;
    }
  }

  AppleBCMWLANSkywalkRxCompletionQueue::free(this);
}

uint64_t *AppleBCMWLANPCIeSkywalkRxCompletionQueue::flushPackets(uint64_t this)
{
  v2 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 224))(this))
  {
    (*(*this + 224))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkRxCompletionQueue::flushPackets(this);
    }
  }

  v4 = this + 88;
  for (i = *(this + 88); ; i = *v4)
  {
    v7 = *(i + 72);
    v6 = (i + 72);
    result = v7;
    if (v6 == v7)
    {
      break;
    }

    if (*result[1] != result || (v8 = *result, *(*result + 8) != result))
    {
      __break(1u);
      return result;
    }

    *(v8 + 8) = v6;
    *v6 = v8;
    *result = 0;
    result[1] = 0;
    ++*(*v4 + 128);
    v9 = AppleBCMWLANPCIeSkywalkPacket::fromChain(result);
    AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(*v4 + 24), v9);
  }

  result = (*(*this + 224))(this);
  if (result)
  {
    (*(*this + 224))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPCIeSkywalkRxCompletionQueue::flushPackets(this, v2, this + 88);
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkRxCompletionQueue::freePendingPackets(uint64_t this, IOUserNetworkPacket **a2, unsigned int a3)
{
  if (a3)
  {
    v4 = this;
    v5 = a3;
    do
    {
      if (*a2)
      {
        this = AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(*(v4 + 88) + 24), *a2);
      }

      ++a2;
      --v5;
    }

    while (v5);
  }

  return this;
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeSkywalkRxCompletionQueue::freePendingPackets(uint64_t this, IOUserNetworkPacket **a2, unsigned int a3)
{
  if (a3)
  {
    v4 = this;
    v5 = a3;
    do
    {
      if (*a2)
      {
        this = AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(*(v4 + 16) + 24), *a2);
      }

      ++a2;
      --v5;
    }

    while (v5);
  }

  return this;
}

uint64_t *AppleBCMWLANPCIeSkywalkRxCompletionQueue::enqueuePackets(AppleBCMWLANPCIeSkywalkRxCompletionQueue *this, OSObject *a2, IO80211NetworkPacket **a3, uint64_t a4, void *a5)
{
  v5 = a4;
  v8 = (*(**(*(this + 11) + 88) + 144))(*(*(this + 11) + 88), a2, a3, a4, a5);
  *(*(this + 11) + 136) = mach_continuous_time();
  *(*(this + 11) + 96) += v5;
  if (v8)
  {
    *(*(this + 11) + 48) = 0;
    *(*(this + 11) + 52) = 0;
    if (v5)
    {
      v8 = 0;
      v9 = v5;
      while (1)
      {
        v10 = *(this + 11);
        v13 = *(v10 + 72);
        v12 = (v10 + 72);
        result = v13;
        if (v12 == v13)
        {
          break;
        }

        if (*result[1] != result || (v14 = *result, *(*result + 8) != result))
        {
          __break(1u);
          return result;
        }

        *(v14 + 8) = v12;
        *v12 = v14;
        *result = 0;
        result[1] = 0;
        v15 = AppleBCMWLANPCIeSkywalkPacket::fromChain(result);
        if (!v15)
        {
          break;
        }

        v16 = v15;
        v17 = (*(*v15 + 480))(v15);
        v18 = v17 + (*(*v16 + 240))(v16);
        Interface = AppleBCMWLANSkywalkTxCompletionQueue::getInterface(this);
        InterfaceRole = IO80211SkywalkInterface::getInterfaceRole(Interface);
        v21 = AppleBCMWLANSkywalkTxCompletionQueue::getInterface(this);
        if (InterfaceRole == 10)
        {
          (*(*v21 + 632))(v21, v16, v18);
        }

        else if (IO80211SkywalkInterface::getInterfaceRole(v21) != 6)
        {
          Scratch = AppleBCMWLANPCIeSkywalkPacket::getScratch(v16);
          v23 = Scratch;
          v24 = *(Scratch + 24);
          if (v24 > 7)
          {
            LOBYTE(v25) = 4;
          }

          else
          {
            v25 = kTid2Ac[v24];
          }

          *(Scratch + 41) = v25;
          v26 = AppleBCMWLANSkywalkTxCompletionQueue::getInterface(this);
          (*(*v26 + 624))(v26, v16, v23, v18, 0, 0);
        }

        a3[v8] = v16;
        ++*(*(this + 11) + 48);
        *(*(this + 11) + 52) += (*(*v16 + 224))(v16);
        if (v9 == ++v8)
        {
          v8 = v9;
          break;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    *(*(this + 11) + 104) += v8;
    *(*(this + 11) + 112) = v8;
    if (AppleBCMWLANSkywalkTxCompletionQueue::getInterface(this))
    {
      v27 = AppleBCMWLANSkywalkTxCompletionQueue::getInterface(this);
      IO80211SkywalkInterface::recordInputPacket(v27, *(*(this + 11) + 48), *(*(this + 11) + 52));
      v28 = *AppleBCMWLANSkywalkTxCompletionQueue::getInterface(this);
      (*(v28 + 1152))();
    }
  }

  return v8;
}

uint64_t AppleBCMWLANPCIeSkywalkRxCompletionQueue::collectQueueStats(AppleBCMWLANPCIeSkywalkRxCompletionQueue *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(*this + 224))(this);
  v11 = IO80211Print(v10, 5, -1, 0, a2, a5 + a3, a4 - a5, "TotalCanEnqueue:%zu TotalEnqueue:%zu LastEqneueud:%zu\n", *(*(this + 11) + 96), *(*(this + 11) + 104), *(*(this + 11) + 112)) + a5;
  v12 = (*(*this + 224))(this);
  v13 = IO80211Print(v12, 5, -1, 0, a2, v11 + a3, a4 - v11, "TotalStaged:%zu TotalFlushed:%zu\n", *(*(this + 11) + 120), *(*(this + 11) + 128)) + v11;
  absolutetime_to_nanoseconds();
  absolutetime_to_nanoseconds();
  v14 = (*(*this + 224))(this);
  v15 = IO80211Print(v14, 5, -1, 0, a2, v13 + a3, a4 - v13, "lastEnqueueTime:%llu ns lastRequestEnqueue:%llu\n", 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL) + v13;
  v16 = *(*(this + 11) + 32);
  v17 = (*(*this + 224))(this);
  if (v16)
  {
    isEnabled = IO80211WorkSource::isEnabled(*(*(this + 11) + 32));
    v19 = (*(**(*(this + 11) + 32) + 208))(*(*(this + 11) + 32));
    AppleBCMWLANItemRing::getReadableItemCount(*(*(this + 11) + 32));
    AppleBCMWLANItemRing::getWritableItemCount(*(*(this + 11) + 32));
    v20 = IO80211Print(v17, 5, -1, 0, a2, v15 + a3, a4 - v15, "ringAttached ringEnabled:%d  ringId:%u readCount:%u writeCount:%u\n", isEnabled, v19);
  }

  else
  {
    v20 = IO80211Print(v17, 5, -1, 0, a2, v15 + a3, a4 - v15, "IPC ring not attached\n");
  }

  return AppleBCMWLANSkywalkRxCompletionQueue::collectQueueStats(this, a2, a3, a4, v20 + v15);
}

void *AppleBCMWLANPCIeSkywalkRxCompletionQueue::stagePacket(AppleBCMWLANPCIeSkywalkRxCompletionQueue *this, IO80211NetworkPacket *a2)
{
  ++*(*(this + 11) + 120);
  v2 = *(this + 11);
  result = AppleBCMWLANPCIeSkywalkPacket::getChain(a2);
  v4 = *(v2 + 80);
  if (*v4 == v2 + 72)
  {
    *result = v2 + 72;
    result[1] = v4;
    *v4 = result;
    *(v2 + 80) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkRxCompletionQueue::requestEnqueue(IOUserNetworkPacketQueue *this, void *a2, unsigned int a3)
{
  *(this[1].ivars + 18) = mach_continuous_time();
  if ((this[1].ivars + 72) == *(this[1].ivars + 9))
  {
    return 0;
  }

  return IOUserNetworkPacketQueue::requestEnqueue(this, a2, a3);
}

OSObject *AppleBCMWLANPCIeSkywalkRxSubmissionQueue::withProviderAndQueueInfoAndPool(AppleBCMWLANPCIeSkywalkRxSubmissionQueue *this, OSObject *a2, OSObject *a3, uint64_t a4, uint64_t a5, IOUserNetworkPacketBufferPool *a6, AppleBCMWLANPCIeSkywalkPacketPool *a7, CCLogStream *a8, CCFaultReporter *a9)
{
  pObject = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeSkywalkRxSubmissionQueueMetaClass, &pObject))
  {
    return 0;
  }

  v17 = pObject;
  if (pObject && (AppleBCMWLANPCIeSkywalkRxSubmissionQueue::initProviderAndPoolAndQueueInfo(pObject, this, a2, a6, a3, a4, a5, a7, a8) & 1) == 0)
  {
    (v17->release)(v17);
    return 0;
  }

  return v17;
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::initProviderAndPoolAndQueueInfo(IOUserNetworkRxSubmissionQueue *this, AppleBCMWLANBusInterfacePCIe *a2, OSObject *a3, IOUserNetworkPacketBufferPool *a4, uint64_t a5, uint64_t a6, uint64_t a7, CCLogStream *a8, CCFaultReporter *a9)
{
  v10 = a7;
  v11 = a6;
  v12 = a5;
  v17 = IOMallocZeroTyped();
  this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable = v17;
  if (!v17)
  {
    IOLog("rx subm queue ivars alloc fail\n");
    return 0;
  }

  v18 = (*(*a2 + 80))(a2);
  if (!AppleBCMWLANSkywalkRxSubmissionQueue::initWithPoolAndQueueInfo(this, a3, a4, v12, v11, v10, v18))
  {
    return 0;
  }

  this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[3].init = &this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[3];
  this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[3].free = &this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[3];
  this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[2].init = a2;
  v19 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  init = v19[2].init;
  if (init)
  {
    (*(*init + 8))(init);
    v19 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  }

  v19[4].free = a4;
  v21 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  free = v21[4].free;
  if (free)
  {
    (*(*free + 8))(free);
    v21 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  }

  LODWORD(v21[4].init) = v10;
  this[1].free = a8;
  v23 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  v24 = v23->free;
  if (v24)
  {
    (*(*v24 + 8))(v24);
    v23 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  }

  v23[1].init = a9;
  this[1].init = (*(*a2 + 80))(a2);
  v25 = 1;
  IOParseBootArgNumber("wlan.skywalk.ktrace", &fKernelTraceEnabled, 1);
  return v25;
}

void AppleBCMWLANPCIeSkywalkRxSubmissionQueue::free(IOUserNetworkRxSubmissionQueue *this)
{
  if (this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable)
  {
    if ((this->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[1].DequeuePackets)(this))
    {
      (this->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[1].DequeuePackets)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkRxSubmissionQueue::free(this);
      }
    }

    v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    init = v2[2].init;
    if (init)
    {
      (*(*init + 16))(init);
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[2].init = 0;
      v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    }

    free = v2->free;
    if (free)
    {
      (*(*free + 16))(free);
      this[1].free = 0;
      v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    }

    v5 = v2[4].free;
    if (v5)
    {
      (*(*v5 + 16))(v5);
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[4].free = 0;
      v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    }

    v2[10].init = 0;
    v2[8] = 0u;
    v2[9] = 0u;
    v2[6] = 0u;
    v2[7] = 0u;
    v2[4] = 0u;
    v2[5] = 0u;
    v2[2] = 0u;
    v2[3] = 0u;
    *v2 = 0u;
    v2[1] = 0u;
    v6 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    if (v6)
    {
      IOFree(v6, 0xA8uLL);
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable = 0;
    }
  }

  AppleBCMWLANSkywalkRxSubmissionQueue::free(this);
}

uint64_t *AppleBCMWLANPCIeSkywalkRxSubmissionQueue::dequeuePackets(AppleBCMWLANPCIeSkywalkRxSubmissionQueue *this, OSObject *a2, IO80211NetworkPacket **a3, uint64_t a4, void *a5)
{
  v5 = a4;
  v7 = (this + 88);
  v8 = (*(***(this + 11) + 144))(**(this + 11), a2, a3, a4, a5);
  *(*v7 + 104) = 0;
  *(*v7 + 88) += v5;
  *(*v7 + 68) = 0;
  *(*v7 + 144) = mach_continuous_time();
  if (v8)
  {
    v9 = *(*v7 + 24);
    if (v9)
    {
      v10 = v5;
      if (fKernelTraceEnabled)
      {
        AppleBCMWLANPCIeSkywalkRxSubmissionQueue::dequeuePackets(v9, v7);
        if (v5)
        {
LABEL_5:
          v5 = 0;
          while (1)
          {
            v11 = OSMetaClassBase::safeMetaCast(a3[v5], gAppleBCMWLANPCIeSkywalkPacketMetaClass);
            if (!v11)
            {
              break;
            }

            v12 = v11;
            AppleBCMWLANPCIeSkywalkPacket::prepare(v11);
            v13 = *v7;
            v14 = *v7 + 48;
            result = AppleBCMWLANPCIeSkywalkPacket::getChain(v12);
            v16 = *(v13 + 56);
            if (*v16 != v14)
            {
              __break(1u);
              return result;
            }

            *result = v14;
            result[1] = v16;
            *v16 = result;
            *(v13 + 56) = result;
            if (v10 == ++v5)
            {
              v5 = v10;
              break;
            }
          }
        }
      }

      else if (v5)
      {
        goto LABEL_5;
      }

      *(*v7 + 104) = v5;
      *(*v7 + 96) += v5;
      *(*v7 + 40) += v5;
      (*(**(*v7 + 24) + 192))(*(*v7 + 24), *(*v7 + 40), 1);
      if (fKernelTraceEnabled)
      {
        AppleBCMWLANPCIeSkywalkRxSubmissionQueue::dequeuePackets(v7);
      }

      return v5;
    }
  }

  return 0;
}

uint64_t *AppleBCMWLANPCIeSkywalkRxSubmissionQueue::flushPackets(void *this)
{
  if ((*(*this + 216))(this))
  {
    (*(*this + 216))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkRxSubmissionQueue::flushPackets(this);
    }
  }

  v2 = this[11];
  if (*(v2 + 72) && *(v2 + 40))
  {
    LODWORD(v3) = 0;
    while (1)
    {
      v5 = (v2 + 48);
      result = *(v2 + 48);
      if (result == (v2 + 48))
      {
        result = 0;
      }

      else
      {
        if (*result[1] != result || (v6 = *result, *(*result + 8) != result))
        {
          __break(1u);
          return result;
        }

        *(v6 + 8) = v5;
        *v5 = v6;
        *result = 0;
        result[1] = 0;
        v2 = this[11];
      }

      ++*(v2 + 128);
      v7 = AppleBCMWLANPCIeSkywalkPacket::fromChain(result);
      if (v7)
      {
        AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(this[11] + 72), v7);
      }

      else if ((*(*this + 216))(this))
      {
        (*(*this + 216))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANPCIeSkywalkRxSubmissionQueue::flushPackets();
        }
      }

      v3 = (v3 + 1);
      v2 = this[11];
      if (v3 >= *(v2 + 40))
      {
        *(v2 + 40) = 0;
        return v3;
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setFWRing(uint64_t this, AppleBCMWLANPCIeSubmissionRing *a2)
{
  v4 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 216))(this))
  {
    (*(*this + 216))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setFWRing(this, v4, a2);
    }
  }

  if (!*(this + 88))
  {
    return IOLog("AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setFWRing [%p], no ivars\n", a2);
  }

  if (a2)
  {
    (*(*a2 + 8))(a2);
    *(*(this + 88) + 24) = a2;
    if ((*(*this + 216))(this))
    {
      (*(*this + 216))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setFWRing();
      }
    }

    result = (*(*this + 128))(this, 0, 0);
    if (result)
    {
      v6 = result;
      result = (*(*this + 216))(this);
      if (result)
      {
        (*(*this + 216))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setFWRing(this, v4, v6);
        }
      }
    }
  }

  else
  {
    if ((*(*this + 216))(this))
    {
      (*(*this + 216))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setFWRing();
      }
    }

    AppleBCMWLANPCIeSkywalkRxSubmissionQueue::flushPackets(this);
    result = *(*(this + 88) + 24);
    if (result)
    {
      result = (*(*result + 16))(result);
      *(*(this + 88) + 24) = 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingPending(uint64_t this)
{
  if ((*(*(this + 88) + 68) & 1) == 0)
  {
    if ((*(*this + 208))(this))
    {
      v2 = *(this + 88);
      v3 = *(v2 + 24);
      if (v3)
      {
        v4 = *(v2 + 40);
        if (v4 < AppleBCMWLANItemRing::getWritableItemCount(v3))
        {
          v5 = (*(*this + 128))(this, 0, 0);
          if (v5)
          {
            v6 = v5;
            if ((*(*this + 216))(this))
            {
              (*(*this + 216))(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingPending(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v6);
              }
            }

            if (v6 == -536870210)
            {
              *(*(this + 88) + 68) = 1;
              *(*(this + 88) + 136) = mach_continuous_time();
            }
          }
        }
      }
    }
  }

  return *(*(this + 88) + 40);
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingFill(uint64_t this, AppleBCMWLANByteRing *a2, char *a3, uint64_t a4)
{
  LOWORD(v24) = -1;
  v7 = (this + 88);
  RxPacketTracker = AppleBCMWLANPCIeSkywalkPacketPool::getRxPacketTracker(*(*(this + 88) + 72));
  *(*v7 + 152) = mach_continuous_time();
  v9 = *(*v7 + 24);
  if (v9)
  {
    if (fKernelTraceEnabled)
    {
      AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingFill(v9, a4, v7);
      if (a4)
      {
LABEL_4:
        v10 = 0;
        v11 = 0;
        while (1)
        {
          if (v11 >= *(*v7 + 40))
          {
            a4 = v11;
            goto LABEL_27;
          }

          v12 = &a3[v10];
          *v12 = 0u;
          *(v12 + 1) = 0u;
          *v12 = -239;
          v13 = (*(**(*v7 + 24) + 248))(*(*v7 + 24)) ? -127 : 1;
          v12[2] = v13;
          v14 = (*v7 + 48);
          v15 = *v14;
          if (*v14 == v14)
          {
            v15 = 0;
          }

          else
          {
            if (*v15[1] != v15)
            {
              goto LABEL_32;
            }

            v16 = *v15;
            if (*(*v15 + 8) != v15)
            {
              goto LABEL_32;
            }

            v16[1] = v14;
            *v14 = v16;
            *v15 = 0;
            v15[1] = 0;
          }

          v17 = AppleBCMWLANPCIeSkywalkPacket::fromChain(v15);
          v18 = (v17->OSMetaClassBase::__vftable[8].init)(v17);
          if (AppleBCMWLANHashtable::add(RxPacketTracker, v17, &v24))
          {
            break;
          }

          AppleBCMWLANPCIeSkywalkPacket::setPacketId(v17, v24);
          BusAddress = AppleBCMWLANPCIeSkywalkPacket::getBusAddress(v17);
          v20 = &a3[v10];
          *(v20 + 5) = v18;
          *(v20 + 3) = BusAddress;
          *(v20 + 2) = v24;
          *(v20 + 3) = (*(**(*v7 + 24) + 296))();
          ++v11;
          v10 += 32;
          if (32 * a4 == v10)
          {
            goto LABEL_27;
          }
        }

        if ((*(*this + 216))(this))
        {
          (*(*this + 216))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingFill();
          }
        }

        v21 = *v7 + 48;
        v22 = *v21;
        if (*(*v21 + 8) != v21)
        {
LABEL_32:
          __break(1u);
        }

        *v15 = v22;
        v15[1] = v21;
        v22[1] = v15;
        a4 = v11;
        *v21 = v15;
      }
    }

    else if (a4)
    {
      goto LABEL_4;
    }

LABEL_27:
    *(*v7 + 120) = a4;
    *(*v7 + 112) += a4;
    *(*v7 + 40) -= a4;
    AppleBCMWLANBusInterfacePCIe::updateActiveRxBufferCount(*(*v7 + 32), a4);
    if (fKernelTraceEnabled)
    {
      AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingFill(v7);
    }

    return a4;
  }

  if ((*(*this + 216))(this))
  {
    (*(*this + 216))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkRxSubmissionQueue::fwRingFill(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v7);
    }
  }

  return 0;
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::collectQueueStats(AppleBCMWLANPCIeSkywalkRxSubmissionQueue *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(*this + 216))(this);
  v11 = IO80211Print(v10, 5, -1, 0, a2, a5 + a3, a4 - a5, "TotalDequeued:%zu TotalStaged:%zu Dequeued:%zu packetCount:%u\n", *(*(this + 11) + 88), *(*(this + 11) + 96), *(*(this + 11) + 104), *(*(this + 11) + 40)) + a5;
  v12 = (*(*this + 216))(this);
  v13 = IO80211Print(v12, 5, -1, 0, a2, v11 + a3, a4 - v11, "TotalPacketsQueuedFWRing:%zu QueuedFWRing%zu FlushedPackets:%zu\n", *(*(this + 11) + 112), *(*(this + 11) + 120), *(*(this + 11) + 128)) + v11;
  absolutetime_to_nanoseconds();
  v14 = (*(*this + 216))(this);
  v15 = IO80211Print(v14, 5, -1, 0, a2, v13 + a3, a4 - v13, "lastdepletedTime:%llu depletedState:%d\n", 0xAAAAAAAAAAAAAAAALL, *(*(this + 11) + 68)) + v13;
  memset(v24, 170, sizeof(v24));
  absolutetime_to_nanoseconds();
  absolutetime_to_nanoseconds();
  absolutetime_to_nanoseconds();
  v16 = (*(*this + 216))(this);
  v17 = IO80211Print(v16, 5, -1, 0, a2, v15 + a3, a4 - v15, "lastdeQueueTime:%llu ns lastRequestDequeueTime:%llu ns fwfillTime:%llu ns\n", v24[2], v24[0], v24[1]) + v15;
  v18 = *(*(this + 11) + 24);
  v19 = (*(*this + 216))(this);
  if (v18)
  {
    isEnabled = IO80211WorkSource::isEnabled(*(*(this + 11) + 24));
    v21 = (*(**(*(this + 11) + 24) + 208))(*(*(this + 11) + 24));
    AppleBCMWLANItemRing::getReadableItemCount(*(*(this + 11) + 24));
    AppleBCMWLANItemRing::getWritableItemCount(*(*(this + 11) + 24));
    v22 = IO80211Print(v19, 5, -1, 0, a2, v17 + a3, a4 - v17, "ringAttached ringEnabled:%d ringId:%u, readCount:%u writeCount:%u\n", isEnabled, v21);
  }

  else
  {
    v22 = IO80211Print(v19, 5, -1, 0, a2, v17 + a3, a4 - v17, "IPC ring not attached\n");
  }

  return AppleBCMWLANSkywalkRxSubmissionQueue::collectQueueStats(this, a2, a3, a4, v22 + v17);
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::setLogger(AppleBCMWLANPCIeSkywalkRxSubmissionQueue *this, CCLogStream *a2)
{
  v4 = *(this + 11);
  v5 = *(v4 + 8);
  if (v5)
  {
    (*(*v5 + 16))(v5);
    *(*(this + 11) + 8) = 0;
    v4 = *(this + 11);
  }

  *(v4 + 8) = a2;
  v6 = *(*(this + 11) + 8);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return AppleBCMWLANSkywalkRxSubmissionQueue::setLogger(this, a2);
}

uint64_t AppleBCMWLANPCIeSkywalkRxSubmissionQueue::requestDequeue(IOUserNetworkPacketQueue *this, void *a2, unsigned int a3)
{
  if (*(this[1].ivars + 10) >= *(this[1].ivars + 16) >> 2)
  {
    return 0;
  }

  *(this[1].ivars + 20) = mach_continuous_time();

  return IOUserNetworkPacketQueue::requestDequeue(this, a2, a3);
}

OSObject *AppleBCMWLANPCIeSkywalkTxCompletionQueue::withProviderAndQueueInfoAndPool(AppleBCMWLANPCIeSkywalkTxCompletionQueue *this, OSObject *a2, OSObject *a3, uint64_t a4, uint64_t a5, IOUserNetworkPacketBufferPool *a6, AppleBCMWLANPCIeSkywalkPacketPool *a7, CCLogStream *a8, CCFaultReporter *a9)
{
  pObject = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeSkywalkTxCompletionQueueMetaClass, &pObject))
  {
    return 0;
  }

  v17 = pObject;
  if (pObject && (AppleBCMWLANPCIeSkywalkTxCompletionQueue::initProviderAndPoolAndQueueInfo(pObject, this, a2, a6, a3, a4, a5, a7, a8) & 1) == 0)
  {
    (v17->release)(v17);
    return 0;
  }

  return v17;
}

uint64_t AppleBCMWLANPCIeSkywalkTxCompletionQueue::initProviderAndPoolAndQueueInfo(IOUserNetworkTxCompletionQueue *this, AppleBCMWLANBusInterfacePCIe *a2, OSObject *a3, IOUserNetworkPacketBufferPool *a4, uint64_t a5, uint64_t a6, uint64_t a7, CCLogStream *a8, CCFaultReporter *a9)
{
  v10 = a7;
  v11 = a6;
  v12 = a5;
  v17 = IOMallocZeroTyped();
  this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable = v17;
  if (v17)
  {
    v18 = (*(*a2 + 80))(a2);
    result = AppleBCMWLANSkywalkTxCompletionQueue::initWithPoolAndQueueInfo(this, a3, a4, v12, v11, v10, v18);
    if (result)
    {
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[2].init = &this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[2];
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[2].free = &this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[2];
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[3].init = a4;
      v20 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
      init = v20[3].init;
      if (init)
      {
        (*(*init + 8))(init);
        v20 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
      }

      v20[1].free = a2;
      v22 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
      free = v22[1].free;
      if (free)
      {
        (*(*free + 8))(free);
        v22 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
      }

      v22->init = a8;
      v24 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
      if (v24->init)
      {
        (*(*v24->init + 8))(v24->init);
        v24 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
      }

      v24->free = a9;
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[3].free = (*(*a2 + 80))(a2);
      return 1;
    }
  }

  else
  {
    IOLog("tx comp queue ivars alloc fail\n");
    return 0;
  }

  return result;
}

void AppleBCMWLANPCIeSkywalkTxCompletionQueue::free(IOUserNetworkTxCompletionQueue *this)
{
  if (this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable)
  {
    if ((this->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[1].DequeuePackets)(this))
    {
      (this->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[1].DequeuePackets)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkTxCompletionQueue::free(this);
      }
    }

    v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    free = v2[1].free;
    if (free)
    {
      (*(*free + 16))(v2[1].free);
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[1].free = 0;
      v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    }

    if (v2->init)
    {
      (*(*v2->init + 16))(v2->init);
      this[1].init = 0;
      v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    }

    init = v2[3].init;
    if (init)
    {
      (*(*init + 16))(v2[3].init);
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[3].init = 0;
      v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    }

    bzero(v2, 0x398uLL);
    v5 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    if (v5)
    {
      IOFree(v5, 0x398uLL);
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable = 0;
    }
  }

  AppleBCMWLANSkywalkTxCompletionQueue::free(this);
}

uint64_t *AppleBCMWLANPCIeSkywalkTxCompletionQueue::flushPackets(void *this)
{
  if ((*(*this + 216))(this))
  {
    (*(*this + 216))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkTxCompletionQueue::flushPackets(this);
    }
  }

  while (1)
  {
    v4 = this[11];
    v7 = *(v4 + 32);
    v6 = (v4 + 32);
    result = v7;
    if (v6 == v7)
    {
      break;
    }

    if (*result[1] != result || (v2 = *result, *(*result + 8) != result))
    {
      __break(1u);
      return result;
    }

    *(v2 + 8) = v6;
    *v6 = v2;
    *result = 0;
    result[1] = 0;
    v3 = AppleBCMWLANPCIeSkywalkPacket::fromChain(result);
    ++*(this[11] + 96);
    AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(this[11] + 48), v3);
  }

  return result;
}

uint64_t *AppleBCMWLANPCIeSkywalkTxCompletionQueue::enqueuePackets(AppleBCMWLANPCIeSkywalkTxCompletionQueue *this, OSObject *a2, IO80211NetworkPacket **a3, uint64_t a4, void *a5)
{
  v5 = a4;
  v7 = (*(**(*(this + 11) + 56) + 144))(*(*(this + 11) + 56), a2, a3, a4, a5);
  *(*(this + 11) + 904) = mach_continuous_time();
  *(*(this + 11) + 64) += v5;
  if (v7)
  {
    if (v5)
    {
      v7 = 0;
      v8 = v5;
      while (1)
      {
        v9 = *(this + 11);
        v12 = *(v9 + 32);
        v11 = (v9 + 32);
        result = v12;
        if (v11 == v12)
        {
          break;
        }

        if (*result[1] != result || (v13 = *result, *(*result + 8) != result))
        {
          __break(1u);
          return result;
        }

        *(v13 + 8) = v11;
        *v11 = v13;
        *result = 0;
        result[1] = 0;
        v14 = AppleBCMWLANPCIeSkywalkPacket::fromChain(result);
        if (!v14)
        {
          break;
        }

        v15 = v14;
        if (AppleBCMWLANSkywalkTxCompletionQueue::getInterface(this))
        {
          Headroom = IO80211NetworkPacket::getHeadroom(v15);
          v17 = (*(*v15 + 480))(v15);
          v18 = (*(*v15 + 296))(v15);
          Ac = AppleBCMWLANPCIeSkywalkPacket::getAc(v15);
          v20 = (*(*v15 + 520))(v15);
          v21 = *(this + 11);
          if ((AppleBCMWLANPCIeSkywalkPacket::isPktRequeued(v15) & 1) == 0)
          {
            v22 = 104;
            if (v18)
            {
              v22 = 504;
            }

            v23 = v21 + v22;
            v24 = v17 + Headroom;
            *v23 = *(*(this + 11) + 904);
            *(v23 + 8) = 1;
            ++*(v23 + 8 * Ac + 368);
            v25 = v23 + 88 * Ac + 8 * v20;
            ++*(v25 + 16);
            Interface = AppleBCMWLANSkywalkTxCompletionQueue::getInterface(this);
            Scratch = AppleBCMWLANPCIeSkywalkPacket::getScratch(v15);
            v28 = AppleBCMWLANPCIeSkywalkPacket::getAc(v15);
            Status = AppleBCMWLANPCIeSkywalkPacket::getStatus(v15);
            v30 = (*(*this + 208))(this);
            LOBYTE(v33) = 0;
            (*(*Interface + 608))(Interface, v15, Scratch, v24, v28, Status, v30, v18, v33);
          }
        }

        if (AppleBCMWLANPCIeSkywalkPacket::isLocalPacket(v15))
        {
          AppleBCMWLANPCIeSkywalkTxCompletionQueue::enqueuePackets();
        }

        a3[v7++] = v15;
        if (v8 == v7)
        {
          v7 = v8;
          break;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    *(*(this + 11) + 72) += v7;
    *(*(this + 11) + 80) = v7;
    v31 = AppleBCMWLANSkywalkTxCompletionQueue::getInterface(this);
    if (IO80211SkywalkInterface::getInterfaceRole(v31) == 1)
    {
      v32 = AppleBCMWLANSkywalkTxCompletionQueue::getInterface(this);
      (*(*v32 + 616))(v32, *(this + 11) + 504, *(this + 11) + 104);
    }
  }

  return v7;
}

uint64_t AppleBCMWLANPCIeSkywalkTxCompletionQueue::collectQueueStats(AppleBCMWLANPCIeSkywalkTxCompletionQueue *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(*this + 216))(this);
  v11 = IO80211Print(v10, 5, -1, 0, a2, a5 + a3, a4 - a5, "TotalCanDequeued:%zu TotalEnqueued:%zu LastEnqueued:%zu\n", *(*(this + 11) + 64), *(*(this + 11) + 72), *(*(this + 11) + 80)) + a5;
  v12 = (*(*this + 216))(this);
  v13 = IO80211Print(v12, 5, -1, 0, a2, v11 + a3, a4 - v11, "TotalStaged:%zu TotalFlushed:%zu\n", *(*(this + 11) + 88), *(*(this + 11) + 96)) + v11;
  absolutetime_to_nanoseconds();
  absolutetime_to_nanoseconds();
  v14 = (*(*this + 216))(this);
  v15 = IO80211Print(v14, 5, -1, 0, a2, v13 + a3, a4 - v13, "lastEnqueueTime:%llu ns lastRequestEnqueue:%llu\n", 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL) + v13;
  v16 = *(*(this + 11) + 16);
  v17 = (*(*this + 216))(this);
  if (v16)
  {
    isEnabled = IO80211WorkSource::isEnabled(*(*(this + 11) + 16));
    v19 = (*(**(*(this + 11) + 16) + 208))(*(*(this + 11) + 16));
    AppleBCMWLANItemRing::getReadableItemCount(*(*(this + 11) + 16));
    AppleBCMWLANItemRing::getWritableItemCount(*(*(this + 11) + 16));
    v20 = IO80211Print(v17, 5, -1, 0, a2, v15 + a3, a4 - v15, "ringAttached ringEnabled:%d  ringId:%u readCount:%u writeCount:%u\n", isEnabled, v19);
  }

  else
  {
    v20 = IO80211Print(v17, 5, -1, 0, a2, v15 + a3, a4 - v15, "IPC ring not attached\n");
  }

  return AppleBCMWLANSkywalkTxCompletionQueue::collectQueueStats(this, a2, a3, a4, v20 + v15);
}

void *AppleBCMWLANPCIeSkywalkTxCompletionQueue::stagePacket(AppleBCMWLANPCIeSkywalkTxCompletionQueue *this, AppleBCMWLANPCIeSkywalkPacket *a2)
{
  v2 = *(this + 11);
  result = AppleBCMWLANPCIeSkywalkPacket::getChain(a2);
  v4 = *(v2 + 40);
  if (*v4 == v2 + 32)
  {
    *result = v2 + 32;
    result[1] = v4;
    *v4 = result;
    *(v2 + 40) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkTxCompletionQueue::requestEnqueue(IOUserNetworkPacketQueue *this, void *a2, unsigned int a3)
{
  *(this[1].ivars + 114) = mach_continuous_time();

  return AppleBCMWLANSkywalkTxCompletionQueue::requestEnqueue(this, a2, a3);
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeSkywalkTxCompletionQueue::requestEnqueue(AppleBCMWLANPCIeSkywalkTxCompletionQueue *this, void *a2, unsigned int a3)
{
  v5 = (this - 40);
  *(*(this + 6) + 912) = mach_continuous_time();

  return AppleBCMWLANSkywalkTxCompletionQueue::requestEnqueue(v5, a2, a3);
}

OSObject *AppleBCMWLANPCIeSkywalkTxSubmissionQueue::withProviderAndQueueInfoAndPool(BOOL (__cdecl *a1)(OSObjectInterface *__hidden this), OSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, IOUserNetworkPacketBufferPool *a7, OSMetaClass_vtbl *a8, void (__cdecl *a9)(OSObjectInterface *__hidden this))
{
  pObject = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANPCIeSkywalkTxSubmissionQueueMetaClass, &pObject))
  {
    return 0;
  }

  v17 = pObject;
  if (pObject && (AppleBCMWLANPCIeSkywalkTxSubmissionQueue::initProviderAndPoolAndQueueInfo(pObject, a1, a2, a7, a3, a4, a5, a6, a8, a9) & 1) == 0)
  {
    (v17->release)(v17);
    return 0;
  }

  return v17;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::initProviderAndPoolAndQueueInfo(IOUserNetworkTxSubmissionQueue *a1, BOOL (__cdecl *a2)(OSObjectInterface *__hidden this), OSObject *a3, IOUserNetworkPacketBufferPool *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, OSMetaClass_vtbl *a9, void (__cdecl *a10)(OSObjectInterface *__hidden this))
{
  v10 = a8;
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v18 = IOMallocZeroTyped();
  a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable = v18;
  if (!v18)
  {
    IOLog("pcie tx subm ivars allocation fail\n");
    return 0;
  }

  v19 = (*(*a2 + 80))(a2);
  if (!AppleBCMWLANSkywalkTxSubmissionQueue::initWithPoolAndQueueInfo(a1, a3, a4, v13, v12, v11, v10, a9, a10, v19))
  {
    return 0;
  }

  a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[1].init = a2;
  v20 = a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  init = v20[1].init;
  if (init)
  {
    (*(*init + 8))(init);
    v20 = a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  }

  v20[1].free = a4;
  v22 = a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  free = v22[1].free;
  if (free)
  {
    (*(*free + 8))(free);
    v22 = a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  }

  LODWORD(v22[11].free) = v11;
  a1[1].init = a9;
  v24 = a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  if (v24->init)
  {
    (*(*v24->init + 8))(v24->init);
    v24 = a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
  }

  v24->free = a10;
  LOWORD(a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[10].free) = 0;
  v25 = 1;
  IOParseBootArgNumber("wlan.skywalk.ktrace", &fKernelTraceEnabled, 1);
  IOParseBootArgNumber("wlan.validateMacAddrOption", &a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[27], 4);
  a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[12].init = 0;
  LODWORD(a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[12].free) = 0;
  a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[15].init = (*(*a2 + 80))(a2);
  if ((a1->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[2].SetPacketDirection)(a1))
  {
    (a1->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[2].SetPacketDirection)(a1);
    if (CCLogStream::shouldLog())
    {
      v26 = (a1->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[2].SetPacketDirection)(a1);
      CCLogStream::logInfo(v26, "[dk] %s@%d:%s: Done txSub %p for ifId %u queueId %u ac %u, ivars->fRequeuePacketRefList:%p\n", "initProviderAndPoolAndQueueInfo", 155, "initProviderAndPoolAndQueueInfo", a1, v13, v12, v11, a1[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[12].init);
    }
  }

  return v25;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::enable(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this)
{
  if ((*(*this + 288))(this))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkTxSubmissionQueue::enable();
    }
  }

  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  if (IO80211SkywalkInterface::getInterfaceId(Interface) != 9 || (v3 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this), IO80211SkywalkInterface::getInterfaceRole(v3) != 2) || (v4 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this), (*(*v4 + 1064))(v4)))
  {
    *(*(this + 11) + 32) = 1;
    v5 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(v5);
    v7 = (*(**(*(this + 11) + 16) + 1104))();
    if (InterfaceId == AppleBCMWLANCore::getProximityInterfaceId(v7))
    {
      v8 = *(*(this + 11) + 16);
      if (v8)
      {
        v9 = (*(*v8 + 1104))(v8);
        if (v9)
        {
          if (AppleBCMWLANCore::isLlwRequeueEnabled(v9))
          {
            *(*(this + 11) + 192) = IOMallocZeroTyped();
          }
        }
      }
    }

    AppleBCMWLANSkywalkTxSubmissionQueue::enable(this);
  }

  result = (*(*this + 288))(this);
  if (result)
  {
    (*(*this + 288))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPCIeSkywalkTxSubmissionQueue::enable();
    }
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::disable(void *this)
{
  *(this[11] + 32) = 0;
  v2 = *(this[11] + 192);
  if (v2)
  {
    IOFree(v2, 0x400uLL);
    *(this[11] + 192) = 0;
  }

  if ((*(*this + 288))(this))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkTxSubmissionQueue::disable();
    }
  }

  return AppleBCMWLANSkywalkTxSubmissionQueue::disable(this);
}

AppleBCMWLANPCIeFlowQueue *AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFWRings(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this)
{
  if ((*(*this + 288))(this))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFWRings();
    }
  }

  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  result = IO80211SkywalkInterface::getInterfaceId(Interface);
  if (result != -1)
  {
    for (i = 40; i != 168; i += 8)
    {
      result = *(*(this + 11) + i);
      if (result)
      {
        AppleBCMWLANPCIeFlowQueue::setFWRing(result, 0);
        (*(**(*(this + 11) + i) + 144))(*(*(this + 11) + i));
        result = *(*(this + 11) + i);
        if (result)
        {
          result = (*(*result + 16))(result);
          *(*(this + 11) + i) = 0;
        }
      }
    }

    *(*(this + 11) + 168) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFWRing(uint64_t this, unsigned __int8 *a2)
{
  v4 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 288))(this))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFWRing(this);
    }
  }

  v5 = 5;
  while (1)
  {
    v6 = *(*(this + 88) + 8 * v5);
    if (v6)
    {
      Destination = AppleBCMWLANPCIeFlowQueue::getDestination(v6);
      if (*Destination == *a2 && *(Destination + 4) == *(a2 + 2))
      {
        break;
      }
    }

    if (++v5 == 21)
    {
      goto LABEL_18;
    }
  }

  if ((*(*this + 288))(this))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      v13 = (*(*this + 288))(this);
      v14 = *AppleBCMWLANPCIeFlowQueue::getDestination(*(*(this + 88) + 8 * v5));
      v15 = *(AppleBCMWLANPCIeFlowQueue::getDestination(*(*(this + 88) + 8 * v5)) + 1);
      v16 = *(AppleBCMWLANPCIeFlowQueue::getDestination(*(*(this + 88) + 8 * v5)) + 2);
      v17 = *(AppleBCMWLANPCIeFlowQueue::getDestination(*(*(this + 88) + 8 * v5)) + 3);
      v18 = *(AppleBCMWLANPCIeFlowQueue::getDestination(*(*(this + 88) + 8 * v5)) + 4);
      v19 = AppleBCMWLANPCIeFlowQueue::getDestination(*(*(this + 88) + 8 * v5));
      CCLogStream::logInfo(v13, "[dk] %s@%d:index %d addr :%02x:%02x:%02x:%02x:%02x:%02x\n", "clearFWRing", 223, v5 - 5, v14, v15, v16, v17, v18, *(v19 + 5));
    }
  }

  AppleBCMWLANPCIeFlowQueue::setFWRing(*(*(this + 88) + 8 * v5), 0);
  v9 = *(*(this + 88) + 8 * v5);
  (*(*v9 + 144))(v9);
  v10 = *(this + 88);
  v11 = *(v10 + 8 * v5);
  if (v11)
  {
    (*(*v11 + 16))(v11);
    *(*(this + 88) + 8 * v5) = 0;
    v10 = *(this + 88);
  }

  --*(v10 + 168);
LABEL_18:
  result = (*(*this + 288))(this);
  if (result)
  {
    (*(*this + 288))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFWRing(this, v4, this + 88);
    }
  }

  return result;
}

void AppleBCMWLANPCIeSkywalkTxSubmissionQueue::free(IOUserNetworkTxSubmissionQueue *this)
{
  if (this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable)
  {
    if ((this->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[2].SetPacketDirection)(this))
    {
      (this->IOUserNetworkPacketQueue::OSObject::OSMetaClassBase::__vftable[2].SetPacketDirection)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkTxSubmissionQueue::free();
      }
    }

    v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    init = v2[1].init;
    if (init)
    {
      (*(*init + 16))(init);
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[1].init = 0;
      v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    }

    if (v2->init)
    {
      (*(*v2->init + 16))(v2->init);
      this[1].init = 0;
      v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    }

    free = v2[1].free;
    if (free)
    {
      (*(*free + 16))(free);
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable[1].free = 0;
      v2 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    }

    v2[27].init = 0;
    v2[25] = 0u;
    v2[26] = 0u;
    v2[23] = 0u;
    v2[24] = 0u;
    v2[21] = 0u;
    v2[22] = 0u;
    v2[19] = 0u;
    v2[20] = 0u;
    v2[17] = 0u;
    v2[18] = 0u;
    v2[15] = 0u;
    v2[16] = 0u;
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
    *v2 = 0u;
    v5 = this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable;
    if (v5)
    {
      IOFree(v5, 0x1B8uLL);
      this[1].IOUserNetworkPacketQueue::OSObject::OSObjectInterface::__vftable = 0;
    }
  }

  AppleBCMWLANSkywalkTxSubmissionQueue::free(this);
}

BOOL AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dupAndTransmitMcastPacket(void *this, IO80211NetworkPacket *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v13 = 0;
  AppleBCMWLANPCIeSkywalkPacketPool::duplicatePacket(*(this[11] + 24), a2, &v13);
  v7 = v13;
  if (v13)
  {
    v14 = v13;
    v8 = (*(*v13 + 480))(v13);
    v9 = v8 + IO80211NetworkPacket::getHeadroom(v13);
    v10 = *a3;
    *(v9 + 4) = *(a3 + 2);
    *v9 = v10;
    LOWORD(v10) = *(a4 + 2);
    *(v9 + 6) = *a4;
    *(v9 + 10) = v10;
    Scratch = AppleBCMWLANPCIeSkywalkPacket::getScratch(v13);
    *(Scratch + 40) |= 0x40u;
    if ((*(*this + 176))(this, this, &v14, 1, 0) != 1)
    {
      if ((*(*this + 288))(this))
      {
        (*(*this + 288))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dupAndTransmitMcastPacket();
        }
      }
    }
  }

  else
  {
    IOLog("Failed to dup packet\n");
  }

  return v7 != 0;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::freeMulticastPacket(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, IO80211NetworkPacket *a2)
{
  *(AppleBCMWLANPCIeSkywalkPacket::getScratch(a2) + 40) = 0;
  AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(*(this + 11) + 24), a2);
  return 1;
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeSkywalkTxSubmissionQueue::freeMulticastPacket(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, IO80211NetworkPacket *a2)
{
  *(AppleBCMWLANPCIeSkywalkPacket::getScratch(a2) + 40) = 0;
  AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(*(this + 2) + 24), a2);
  return 1;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::forwardPacket(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, IO80211NetworkPacket *a2)
{
  v5 = 0;
  AppleBCMWLANPCIeSkywalkPacketPool::duplicatePacket(*(*(this + 11) + 24), a2, &v5);
  if (v5)
  {
    v3 = (v5->OSObject::OSMetaClassBase::__vftable[1].getDataLength)(v5);
    if (*(v3 + (v5->getDataOffset)(v5)))
    {
      IOUserNetworkPacket::setIsLinkMulticast(v5, 1);
    }

    v6 = v5;
    return (*(*this + 176))(this, this, &v6, 1, 0);
  }

  else
  {
    IOLog("Failed to dup packet\n");
    return 0;
  }
}

void *AppleBCMWLANPCIeSkywalkTxSubmissionQueue::signalTxPendingFlowQueue(void *this)
{
  v1 = this;
  v2 = this[11];
  if (*(v2 + 376))
  {
    v3 = 31;
    do
    {
      v4 = *(v2 + 8 * v3);
      if (v4)
      {
        AppleBCMWLANPCIeFlowQueue::requestPendingPackets(*(v2 + 8 * v3));
        this = (*(*v4 + 144))(v4);
      }

      else
      {
        this = (*(*v1 + 288))(v1);
        if (this)
        {
          (*(*v1 + 288))(v1);
          this = CCLogStream::shouldLog();
          if (this)
          {
            this = AppleBCMWLANPCIeSkywalkTxSubmissionQueue::signalTxPendingFlowQueue();
          }
        }
      }

      *(v1[11] + 8 * v3) = 0;
      v2 = v1[11];
      v5 = v3 - 30;
      ++v3;
    }

    while (v5 < *(v2 + 376));
  }

  *(v2 + 376) = 0;
  *(v1[11] + 380) = 0;
  return this;
}

BOOL AppleBCMWLANPCIeSkywalkTxSubmissionQueue::validateMacAddr(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, AppleBCMWLANPCIeSkywalkPacket *a2, AppleBCMWLANSkywalkInterface *a3)
{
  v5 = (*(*a3 + 1072))(a3);
  v6 = (*(*a2 + 480))(a2);
  v7 = v6 + IO80211NetworkPacket::getHeadroom(a2);
  v8 = *(v7 + 6) ^ v5 | *(v7 + 10) ^ WORD2(v5);
  if (v8)
  {
    if (*(*(this + 11) + 432) == 2)
    {
      if ((*(*this + 288))(this))
      {
        (*(*this + 288))(this);
        if (CCLogStream::shouldLog())
        {
          v10 = (*(*this + 288))(this);
          CCLogStream::logAlert(v10, "[dk] %s@%d:Mac adress mismatch local %02x:%02x:%02x:%02x:%02x:%02x  packet %02x:%02x:%02x:%02x:%02x:%02x \n", "validateMacAddr", 1400, v5, BYTE1(v5), BYTE2(v5), BYTE3(v5), BYTE4(v5), BYTE5(v5), *(v7 + 6), *(v7 + 7), *(v7 + 8), *(v7 + 9), *(v7 + 10), *(v7 + 11));
        }
      }
    }
  }

  return v8 != 0;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, AppleBCMWLANPCIeSkywalkPacket *a2)
{
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  if (((*(*Interface + 1064))(Interface) & 1) == 0)
  {
    v19 = 3758097112;
    if ((*(*this + 288))(this))
    {
      (*(*this + 288))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket();
        return 3758097112;
      }
    }

    return v19;
  }

  v5 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  if (IO80211SkywalkInterface::getInterfaceId(v5) == -1)
  {
    if ((*(*this + 288))(this))
    {
      (*(*this + 288))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket();
      }
    }

    return 3758096385;
  }

  v6 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  if (IO80211SkywalkInterface::getInterfaceId(v6) == 9 || (v7 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this), IO80211SkywalkInterface::getInterfaceId(v7) == 10) || (v8 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this), IO80211SkywalkInterface::getInterfaceId(v8) == 11))
  {
    v9 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    ParentInterface = IO80211SkywalkInterface::getParentInterface(v9);
    if (ParentInterface)
    {
      v11 = ParentInterface;
      if (IO80211SkywalkInterface::getInterfaceId(ParentInterface) == -1 || ((*(*v11 + 664))(v11) & 1) == 0)
      {
        if ((*(*this + 288))(this))
        {
          (*(*this + 288))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v11);
          }
        }

        return 3758096385;
      }
    }
  }

  v12 = this + 88;
  v13 = (*(**(*(this + 11) + 16) + 1104))(*(*(this + 11) + 16));
  if ((*(*a2 + 296))(a2))
  {
    v14 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    v15 = (*(*v14 + 1160))(v14);
    v16 = OSMetaClassBase::safeMetaCast(v15, gAppleBCMWLANPCIeSkywalkMulticastQueueMetaClass);
    v17 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    Scratch = AppleBCMWLANPCIeSkywalkPacket::getScratch(a2);
    (*(*v17 + 600))(v17, a2, Scratch, 0, 0);
    if (v16)
    {
      AppleBCMWLANPCIeSkywalkMulticastQueue::enqueuePacket(v16, a2, 1);
      v19 = 0;
      ++*(*v12 + 204);
    }

    else
    {
      return 3758097095;
    }
  }

  else
  {
    v21 = (*(*a2 + 480))(a2);
    v22 = 0;
    v23 = (v21 + IO80211NetworkPacket::getHeadroom(a2));
    v24 = -1;
    do
    {
      v25 = *(*v12 + 8 * v22 + 40);
      if (v25)
      {
        Destination = AppleBCMWLANPCIeFlowQueue::getDestination(v25);
        if (*Destination == *v23 && *(Destination + 4) == *(v23 + 2))
        {
          LOWORD(v24) = v22;
LABEL_48:
          if (v13)
          {
            if ((AppleBCMWLANCore::isP2pAirplayActive(v13) & 1) != 0 || (v37 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this), IO80211SkywalkInterface::isLowLatencyEnabled(v37)))
            {
              v45 = mach_absolute_time();
              absolutetime_to_nanoseconds();
              v45 /= 0x3E8uLL;
              if (AppleBCMWLANCore::isLlwRequeueEnabled(v13))
              {
                v38 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
                InterfaceId = IO80211SkywalkInterface::getInterfaceId(v38);
                if (InterfaceId == AppleBCMWLANCore::getProximityInterfaceId(v13))
                {
                  v44 = 0;
                  if (!(*(*a2 + 352))(a2, &v44))
                  {
                    absolutetime_to_nanoseconds();
                    AppleBCMWLANPCIeSkywalkPacket::setPktRemainingLifeTime(a2, 0);
                  }

                  AppleBCMWLANPCIeSkywalkPacket::setFlowQueueIdx(a2, v24);
                }
              }

              (*(*a2 + 496))(a2, v45);
            }
          }

          ++*(*(this + 11) + 212);
          *(*(this + 11) + v24 + 220) = 1;
          AppleBCMWLANPCIeFlowQueue::enqueuePacket(*(*(this + 11) + 8 * v24 + 40), a2, 1);
          v40 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
          v41 = AppleBCMWLANPCIeSkywalkPacket::getScratch(a2);
          (*(*v40 + 600))(v40, a2, v41, *(*(this + 11) + 184), 1);
          v42 = AppleBCMWLANPCIeSkywalkPacket::getScratch(a2);
          v19 = 0;
          *(v42 + 40) |= 0x20u;
          return v19;
        }
      }

      else if ((v24 & 0x80000000) != 0)
      {
        v24 = v22;
      }

      ++v22;
    }

    while (v22 != 16);
    if (v24 > 0xF || *(*v12 + 168) > 0xFu)
    {
      v19 = 3758097086;
      if ((*(*this + 288))(this))
      {
        (*(*this + 288))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket();
        }
      }
    }

    else
    {
      if ((*v23 & 1) != 0 || (v28 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this), (*(*v28 + 1032))(v28, v23)))
      {
        if ((*(*this + 288))(this))
        {
          (*(*this + 288))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, this + 11, v23);
          }
        }

        v29 = *v23;
        v30 = v23[1];
        v31 = *(v23 + 2) << 16;
        if ((*(*this + 288))(this))
        {
          (*(*this + 288))(this);
          if (CCLogStream::shouldLog())
          {
            v43 = (*(*this + 288))(this);
            CCLogStream::logAlert(v43, "[dk] %s@%d:%s %u for peer %02x:%02x:%02x:%02x:%02x:%02x flow queue count %u\n", "dequeueSoftAPLLWPacket", 495, "IOReturn AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket(AppleBCMWLANPCIeSkywalkPacket *)", v24, *v23, v23[1], v23[2], v23[3], v23[4], v23[5], *(*(this + 11) + 168));
          }
        }

        v32 = *(this + 11);
        v33 = *(v32 + 16);
        v34 = *(v32 + 184);
        v35 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
        *(*(this + 11) + 8 * v24 + 40) = AppleBCMWLANPCIeFlowQueue::withProviderAndQueueInfo(v33, v29 | (v30 << 8) | v31, v34, v35, **(this + 11), *(*(this + 11) + 8));
        v36 = *(*(this + 11) + 8 * v24 + 40);
        (*(*v36 + 136))(v36);
        ++*(*(this + 11) + 168);
        goto LABEL_48;
      }

      v19 = 3758097136;
      if ((*(*this + 288))(this))
      {
        (*(*this + 288))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket();
          return 3758097136;
        }
      }
    }
  }

  return v19;
}

IO80211FlowQueue *AppleBCMWLANPCIeSkywalkTxSubmissionQueue::findOrCreateFlowQueue(AppleBCMWLANSkywalkTxSubmissionQueue *this, void *a2)
{
  v4 = *(this + 11);
  if (*(v4 + 376))
  {
    v5 = 0;
    v6 = *(v4 + 380);
    do
    {
      v7 = *(v4 + 8 * v6 + 248);
      if (IO80211FlowQueue::getHash(v7) == *a2)
      {
        *(*(this + 11) + 380) = v6;
        return v7;
      }

      v4 = *(this + 11);
      v8 = *(v4 + 376);
      if (v6 >= 1)
      {
        v9 = v6;
      }

      else
      {
        v9 = *(v4 + 376);
      }

      v6 = v9 - 1;
      ++v5;
    }

    while (v5 < v8);
    if (v8 >= 0x10)
    {
      AppleBCMWLANPCIeSkywalkTxSubmissionQueue::signalTxPendingFlowQueue(this);
    }
  }

  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  v11 = (*(*Interface + 928))(Interface, *a2);
  v7 = v11;
  if (v11)
  {
    *(*(this + 11) + 380) = *(*(this + 11) + 376);
    v12 = *(this + 11);
    v13 = *(v12 + 376);
    *(v12 + 376) = v13 + 1;
    *(v12 + 8 * v13 + 248) = v11;
    (*(*v11 + 136))(v11);
  }

  return v7;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueAWDLNANPacket(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, AppleBCMWLANPCIeSkywalkPacket *a2)
{
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  InterfaceRole = IO80211SkywalkInterface::getInterfaceRole(Interface);
  *&v54[1] = 0;
  v6 = *AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  if (((*(v6 + 1064))() & 1) == 0)
  {
    if (!(*(*this + 288))(this))
    {
      return 3758097112;
    }

    (*(*this + 288))(this);
    v9 = 3758097112;
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueAWDLNANPacket();
    }

    return v9;
  }

  v7 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  if (IO80211SkywalkInterface::getInterfaceId(v7) == -1 || (v8 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this), ((*(*v8 + 664))(v8) & 1) == 0))
  {
    if ((*(*this + 288))(this))
    {
      (*(*this + 288))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueAWDLNANPacket();
      }
    }

    return 3758096385;
  }

  v9 = 3758097088;
  if (InterfaceRole == 10)
  {
    v22 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    v23 = OSMetaClassBase::safeMetaCast(v22, gIO80211VirtualInterfaceMetaClass);
    if (v23)
    {
      v24 = v23;
      Headroom = IO80211NetworkPacket::getHeadroom(a2);
      v26 = (*(*a2 + 224))(a2);
      v27 = Headroom;
      v28 = ((*(*a2 + 480))(a2) + Headroom);
      if (*v28)
      {
        ++*(*(this + 11) + 204);
        if (IO80211VirtualInterface::handleMulticastTransmit(v24, a2, v28, v26, v27))
        {
          return 3758097095;
        }

        else
        {
          return 0;
        }
      }

      LODWORD(v55) = 0;
      v54[0] = 0;
      Scratch = AppleBCMWLANPCIeSkywalkPacket::getScratch(a2);
      if ((*(Scratch + 40) & 0x40) != 0)
      {
        *(Scratch + 40) &= ~0x40u;
        goto LABEL_47;
      }

      if (IO80211VirtualInterface::modifyUnicastPacket(v24, v28, v26, v27, &v55, v54))
      {
        (*(*a2 + 232))(a2, v54[0]);
        (*(*a2 + 216))(a2, v55);
        IO80211NetworkPacket::setLinkHeaderOffset(a2, v54[0]);
        v27 = v54[0];
        ++*(*(this + 11) + 212);
LABEL_47:
        v17 = (*(*a2 + 480))(a2) + v27;
        *&v54[3] = *v17;
        *&v54[7] = *(v17 + 4);
        v54[2] = *(*(this + 11) + 184);
        v36 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
        v54[1] = IO80211SkywalkInterface::getInterfaceId(v36);
LABEL_48:
        FlowQueue = AppleBCMWLANPCIeSkywalkTxSubmissionQueue::findOrCreateFlowQueue(this, &v54[1]);
        if (FlowQueue)
        {
          v38 = FlowQueue;
          v39 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
          v40 = AppleBCMWLANPCIeSkywalkPacket::getScratch(a2);
          (*(*v39 + 640))(v39, a2, v40, v17, *(*(this + 11) + 184), 1);
          v41 = v38;
LABEL_53:
          AppleBCMWLANPCIeFlowQueue::enqueuePacket(v41, a2, 1);
          return 0;
        }

        return v9;
      }

      if ((*(*this + 288))(this))
      {
        (*(*this + 288))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueAWDLNANPacket();
        }
      }
    }

    else
    {
      IOLog("%s[%d] :: ERROR ! Could not insert Snap Header, discarding packet\n", "dequeueAWDLNANPacket", 778);
    }

    return 3758097095;
  }

  if (InterfaceRole == 9)
  {
    v16 = IO80211NetworkPacket::getHeadroom(a2);
    v17 = (*(*a2 + 480))(a2) + v16;
    *&v54[3] = *v17;
    *&v54[7] = *(v17 + 4);
    v54[2] = *(*(this + 11) + 184);
    v18 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    v54[1] = IO80211SkywalkInterface::getInterfaceId(v18);
    v19 = (*(**(*(this + 11) + 16) + 1104))();
    if ((*(*a2 + 296))(a2))
    {
      GCRMACAddress = AppleBCMWLANCore::getGCRMACAddress(v19);
      WORD2(v55) = WORD2(GCRMACAddress);
      if (*&v54[3] != GCRMACAddress || *&v54[7] != WORD2(GCRMACAddress))
      {
        return 3758097086;
      }

      v30 = 204;
    }

    else
    {
      v30 = 212;
    }

    ++*(*(this + 11) + v30);
    goto LABEL_48;
  }

  if (InterfaceRole != 6)
  {
    return 3758097098;
  }

  if (!AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this))
  {
    if ((*(*this + 288))(this))
    {
      (*(*this + 288))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueAWDLNANPacket();
      }
    }

    return v9;
  }

  v10 = IO80211NetworkPacket::getHeadroom(a2);
  v11 = (*(*a2 + 480))(a2) + v10;
  v12 = AppleBCMWLANPCIeSkywalkPacket::getScratch(a2);
  v13 = v12;
  v14 = *v11;
  if (*v11)
  {
    v31 = *(v12 + 40);
    if ((v31 & 0x80000000) == 0)
    {
      v32 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
      v33 = OSMetaClassBase::safeMetaCast(v32, gIO80211VirtualInterfaceMetaClass);
      ++*(*(this + 11) + 204);
      if (v33)
      {
        v34 = v33;
        v55 = 0;
        *(v13 + 40) |= 0x80u;
        AppleBCMWLANPCIeSkywalkPacketPool::duplicatePacket(*(*(this + 11) + 24), a2, &v55);
        if (v55)
        {
          AppleBCMWLANPCIeSkywalkPacket::getScratch(v55);
          v35 = AppleBCMWLANPCIeSkywalkPacket::getScratch(v55);
          *(v35 + 40) |= 0x80u;
        }

        else if ((*(*this + 288))(this))
        {
          (*(*this + 288))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueAWDLNANPacket();
          }
        }

        IO80211VirtualInterface::stashMulticastPacketPair(v34, a2, v55);
        return 0;
      }

      if ((*(*this + 288))(this))
      {
        (*(*this + 288))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueAWDLNANPacket();
        }
      }

      return v9;
    }

    *&v54[7] = -1;
    *&v54[3] = -1;
    v54[2] = 0;
    *(v12 + 40) = v31 & 0x7F;
  }

  else
  {
    ++*(*(this + 11) + 212);
    *&v54[3] = *v11;
    *&v54[7] = *(v11 + 4);
    v54[2] = *(*(this + 11) + 184);
  }

  v42 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  v54[1] = IO80211SkywalkInterface::getInterfaceId(v42);
  v43 = AppleBCMWLANPCIeSkywalkTxSubmissionQueue::findOrCreateFlowQueue(this, &v54[1]);
  if (v43)
  {
    v44 = v43;
    v45 = (v14 & 1) == 0;
    v46 = (*(*a2 + 224))(a2);
    v47 = v10 - 16;
    v48 = (*(*a2 + 480))(a2) + (v10 - 16);
    v49 = *(v11 + 12);
    v50 = *v11;
    v51 = *(v11 + 8);
    *(v13 + 2) = 0;
    IO80211NetworkPacket::setHeadroom(a2, v47);
    *v48 = v50;
    *(v48 + 8) = v51;
    *(v48 + 12) = bswap32(v46 + 2) >> 16;
    *(v48 + 22) = 1027;
    *(v48 + 14) = 0x8F2170003AAAALL;
    *(v48 + 26) = 0;
    *(v48 + 28) = v49;
    *(v48 + 24) = AppleBCMWLANPCIeFlowQueue::getSequenceNumber(v44) & 0xFFF | (*(*(this + 11) + 184) << 12);
    (*(*a2 + 232))(a2, v47);
    (*(*a2 + 216))(a2, (v46 + 16));
    IO80211NetworkPacket::setLinkHeaderOffset(a2, v47);
    v52 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    v53 = AppleBCMWLANPCIeSkywalkPacket::getScratch(a2);
    (*(*v52 + 640))(v52, a2, v53, v48, *(*(this + 11) + 184), v45);
    v41 = v44;
    goto LABEL_53;
  }

  return v9;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeuePackets(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, OSObject *a2, IO80211NetworkPacket **a3, uint64_t a4, void *a5)
{
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  InterfaceRole = IO80211SkywalkInterface::getInterfaceRole(Interface);
  v10 = this + 88;
  v11 = (*(**(*(this + 11) + 240) + 144))(*(*(this + 11) + 240));
  memset(v38, 170, sizeof(v38));
  if (InterfaceRole == 1)
  {
    v12 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    (*(*v12 + 976))(v12, 0x200000000000);
  }

  *(*v10 + 416) = mach_continuous_time();
  *(*v10 + 384) += a4;
  *(*v10 + 408) = 0;
  if (!v11 || !AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this))
  {
    return 0;
  }

  v13 = a4;
  v14 = *v10;
  *(v14 + 220) = 0u;
  *(v14 + 204) = 0u;
  if (fKernelTraceEnabled)
  {
    AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeuePackets();
    if (a4)
    {
      goto LABEL_7;
    }
  }

  else if (a4)
  {
LABEL_7:
    a4 = 0;
    v15 = 0;
    while (1)
    {
      v16 = OSMetaClassBase::safeMetaCast(a3[a4], gAppleBCMWLANPCIeSkywalkPacketMetaClass);
      if (!v16)
      {
        break;
      }

      v17 = v16;
      if ((AppleBCMWLANPCIeSkywalkPacket::getPktDup(v16) & 1) == 0)
      {
        v18.n128_f64[0] = AppleBCMWLANPCIeSkywalkPacket::prepare(v17);
      }

      *(*v10 + 216) += (*(*v17 + 224))(v17, v18);
      if (InterfaceRole <= 0xA)
      {
        if (((1 << InterfaceRole) & 0xBC) != 0)
        {
          v19 = AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueSoftAPLLWPacket(this, v17);
        }

        else if (((1 << InterfaceRole) & 0x640) != 0)
        {
          v19 = AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueAWDLNANPacket(this, v17);
        }

        else
        {
          if (InterfaceRole != 1)
          {
            goto LABEL_17;
          }

          v19 = AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeueInfraPacket(this, v17);
        }

        v15 = v19;
      }

LABEL_17:
      v20 = *v10;
      if (v15)
      {
        AppleBCMWLANPCIeSkywalkPacketPool::deallocatePacket(*(v20 + 24), v17);
        v21 = (*v10 + 400);
      }

      else
      {
        v21 = (v20 + 392);
      }

      ++*v21;
      if (v13 == ++a4)
      {
        a4 = v13;
        break;
      }
    }
  }

  if (!AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this))
  {
    AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeuePackets();
  }

  if (*(*v10 + 376))
  {
    AppleBCMWLANPCIeSkywalkTxSubmissionQueue::signalTxPendingFlowQueue(this);
  }

  else
  {
    v30 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    v31 = (*(*v30 + 1160))(v30);
    v32 = OSMetaClassBase::safeMetaCast(v31, gAppleBCMWLANPCIeSkywalkMulticastQueueMetaClass);
    v33 = *(this + 11);
    if (*(v33 + 204))
    {
      v34 = v32 == 0;
    }

    else
    {
      v34 = 1;
    }

    if (!v34)
    {
      (v32->__vftable[3].getMetaClass)(v32);
      v33 = *v10;
    }

    if (*(v33 + 208))
    {
      v35 = *(v33 + 40);
      if (v35)
      {
        AppleBCMWLANPCIeFlowQueue::requestPendingPackets(v35);
      }
    }

    else
    {
      for (i = 0; i != 16; ++i)
      {
        if (*(*v10 + i + 220) == 1)
        {
          v37 = *(*v10 + 8 * i + 40);
          if (v37)
          {
            AppleBCMWLANPCIeFlowQueue::requestPendingPackets(v37);
          }
        }
      }
    }
  }

  if (InterfaceRole == 1)
  {
    v22 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    v23 = (*(*v22 + 728))(v22);
    AppleBCMWLANCore::addCumulativePkts(v23, *(*(this + 11) + 184), *(*(this + 11) + 208));
    v24 = *(this + 11);
    LODWORD(v38[1]) = *(v24 + 184);
    v25 = *(v24 + 416);
    v38[2] = *(v24 + 204);
    v38[3] = v25;
    v38[0] = v25;
    v26 = *AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    (*(v26 + 584))();
  }

  v27 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  v28 = *(this + 11);
  (*(*v27 + 592))(v27, v28[46], v28[53] + v28[51] + v28[52], v28[54]);
  *(*(this + 11) + 408) = a4;
  if (fKernelTraceEnabled)
  {
    AppleBCMWLANPCIeSkywalkTxSubmissionQueue::dequeuePackets();
  }

  return a4;
}

unint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::getAvgTxCompLatency(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, unsigned int a2, uint64_t a3)
{
  v5 = a2;
  if (a2 <= 0xF && (v6 = *(*(this + 11) + 8 * a2 + 40)) != 0)
  {
    v7 = a3;
    if (AppleBCMWLANPCIeFlowQueue::getTxCompLatency(v6))
    {
      v7 = (90 * a3 + 10 * AppleBCMWLANPCIeFlowQueue::getTxCompLatency(*(*(this + 11) + 8 * v5 + 40))) / 0x64uLL;
    }

    AppleBCMWLANPCIeFlowQueue::setTxCompLatency(*(*(this + 11) + 8 * v5 + 40), v7);
  }

  else
  {
    AppleBCMWLANPCIeSkywalkTxSubmissionQueue::getAvgTxCompLatency(this, a2, a3, &v9);
    v7 = v9;
  }

  if (fKernelTraceEnabled)
  {
    kdebug_trace();
  }

  return v7;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::getRingFreeSpace(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this)
{
  if (!*(*(this + 11) + 168))
  {
    return 0;
  }

  RingFreeSpace = 0xFFFFFFFFLL;
  for (i = 40; i != 168; i += 8)
  {
    v4 = *(*(this + 11) + i);
    if (v4 && AppleBCMWLANPCIeFlowQueue::getRingFreeSpace(v4) < RingFreeSpace)
    {
      RingFreeSpace = AppleBCMWLANPCIeFlowQueue::getRingFreeSpace(*(*(this + 11) + i));
    }
  }

  return RingFreeSpace;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::getPendingPacketCount(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this)
{
  v2 = 0;
  for (i = 40; i != 168; i += 8)
  {
    v4 = *(*(this + 11) + i);
    if (v4)
    {
      v2 = AppleBCMWLANPCIeFlowQueue::getPendingPacketCount(v4) + v2;
    }
  }

  return v2;
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeSkywalkTxSubmissionQueue::getPendingPacketCount(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this)
{
  v2 = 0;
  for (i = 40; i != 168; i += 8)
  {
    v4 = *(*(this + 2) + i);
    if (v4)
    {
      v2 = AppleBCMWLANPCIeFlowQueue::getPendingPacketCount(v4) + v2;
    }
  }

  return v2;
}

AppleBCMWLANPCIeFlowQueue *AppleBCMWLANPCIeSkywalkTxSubmissionQueue::setFWRing(uint64_t this, AppleBCMWLANPCIeTransmitFlowRing *a2, uint64_t a3, int a4)
{
  v5 = a3;
  Interface = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
  InterfaceRole = IO80211SkywalkInterface::getInterfaceRole(Interface);
  v10 = (this + 88);
  if (!*(this + 88))
  {
    return IOLog("AppleBCMWLANPCIeSkywalkTxSubmissionQueue::setFWRing [%p], no ivars\n", a2);
  }

  v11 = InterfaceRole;
  if ((*(*this + 288))(this))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkTxSubmissionQueue::setFWRing(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, this + 88, v5);
    }
  }

  if ((*(*this + 288))(this))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkTxSubmissionQueue::setFWRing(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, this + 88);
    }
  }

  if (v11 <= 0xA && ((1 << v11) & 0x640) != 0 && !a4)
  {
    v22 = 0;
    TransmitFlowRing = a2;
    if (!a2)
    {
      if (!AppleBCMWLANBusInterfacePCIe::isValidFlowId(*(*v10 + 16), v5))
      {
        result = (*(*this + 288))(this);
        if (result)
        {
          (*(*this + 288))(this);
          result = CCLogStream::shouldLog();
          if (result)
          {
            return AppleBCMWLANPCIeSkywalkTxSubmissionQueue::setFWRing();
          }
        }

        return result;
      }

      TransmitFlowRing = AppleBCMWLANBusInterfacePCIe::getTransmitFlowRing(*(*v10 + 16), v5);
    }

    (*(*TransmitFlowRing + 400))(TransmitFlowRing, &v22 + 2);
    v15 = AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    IO80211SkywalkInterface::getInterfaceId(v15);
    v16 = *AppleBCMWLANSkywalkTxSubmissionQueue::getInterface(this);
    v17 = (*(v16 + 944))();
    if (v17)
    {
      v18 = v17;
      result = AppleBCMWLANPCIeFlowQueue::setFWRing(v17, a2);
      if (a2)
      {
        result = AppleBCMWLANPCIeFlowQueue::getPacketCount(v18);
        if (result)
        {
          AppleBCMWLANPCIeFlowQueue::requestPendingPackets(v18);
          return (*(*this + 128))(this, 0, 0);
        }
      }
    }

    else
    {
      result = (*(*this + 288))(this);
      if (result)
      {
        (*(*this + 288))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANPCIeSkywalkTxSubmissionQueue::setFWRing();
        }
      }
    }

    return result;
  }

  v12 = 5;
  while (1)
  {
    result = *(*v10 + 8 * v12);
    if (result)
    {
      result = AppleBCMWLANPCIeFlowQueue::getFlowId(result);
      if (result == v5)
      {
        break;
      }
    }

    if (++v12 == 21)
    {
      return result;
    }
  }

  if ((*(*this + 288))(this))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      v21 = (*(*this + 288))(this);
      CCLogStream::logInfo(v21, "[dk] %s@%d:SetFWRing  FlowID:%u for peer:%u\n", "setFWRing", 1241, v5, v12 - 5);
    }
  }

  AppleBCMWLANPCIeFlowQueue::setFWRing(*(*v10 + 8 * v12), a2);
  if (a2)
  {
    v19 = *(*this + 128);

    return v19(this, 0, 0);
  }

  else
  {
    (*(**(*v10 + 8 * v12) + 144))(*(*v10 + 8 * v12));
    v20 = *v10;
    result = *(*v10 + 8 * v12);
    if (result)
    {
      result = (*(*result + 16))(result);
      *(*v10 + 8 * v12) = 0;
      v20 = *v10;
    }

    --*(v20 + 168);
  }

  return result;
}

AppleBCMWLANPCIeFlowQueue *AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFlowIdInFlowQ(void *this, int a2)
{
  if ((*(*this + 288))(this))
  {
    (*(*this + 288))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANPCIeSkywalkTxSubmissionQueue::clearFlowIdInFlowQ();
    }
  }

  v4 = 40;
  while (1)
  {
    result = *(this[11] + v4);
    if (result)
    {
      result = AppleBCMWLANPCIeFlowQueue::getFlowId(result);
      if (result == a2)
      {
        break;
      }
    }

    v4 += 8;
    if (v4 == 168)
    {
      return result;
    }
  }

  v6 = *(this[11] + v4);

  return AppleBCMWLANPCIeFlowQueue::clearFlowId(v6);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::collectQueueStats(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(*this + 288))(this);
  v11 = 5;
  v12 = IO80211Print(v10, 5, -1, 0, a2, a5 + a3, a4 - a5, "fEnabled:%d fFlowQueue:%u fAc:%u\n", *(*(this + 11) + 32), *(*(this + 11) + 168), *(*(this + 11) + 184)) + a5;
  v13 = (*(*this + 288))(this);
  v14 = IO80211Print(v13, 5, -1, 0, a2, v12 + a3, a4 - v12, "SingleStats: numMc:%u numInfra:%u numUc:%u\n", *(*(this + 11) + 204), *(*(this + 11) + 208), *(*(this + 11) + 212)) + v12;
  v15 = (*(*this + 288))(this);
  v16 = IO80211Print(v15, 5, -1, 0, a2, v14 + a3, a4 - v14, "TotalDeQueued:%zu TotalStaged:%zu TotalDropped:%zu lastDequeue:%zu\n", *(*(this + 11) + 384), *(*(this + 11) + 392), *(*(this + 11) + 400), *(*(this + 11) + 408)) + v14;
  absolutetime_to_nanoseconds();
  absolutetime_to_nanoseconds();
  v17 = (*(*this + 288))(this);
  v18 = IO80211Print(v17, 5, -1, 0, a2, v16 + a3, a4 - v16, "lastdeQueueTime:%llu ns lastRequestDequeueTime:%llu ns\n", 0xAAAAAAAAAAAAAAAALL, 0xAAAAAAAAAAAAAAAALL) + v16;
  v19 = (*(*this + 288))(this);
  v20 = IO80211Print(v19, 5, -1, 0, a2, v18 + a3, a4 - v18, "logging flowQueue stats\n") + v18;
  do
  {
    if (*(*(this + 11) + 8 * v11))
    {
      v21 = (*(*this + 288))(this);
      v22 = IO80211Print(v21, 5, -1, 0, a2, v20 + a3, a4 - v20, "logging flowqueue index:%u\n", v11 - 5);
      v20 = AppleBCMWLANPCIeFlowQueue::collectQueueStats(*(*(this + 11) + 8 * v11), a2, a3, a4, v22 + v20);
    }

    ++v11;
  }

  while (v11 != 21);
  return AppleBCMWLANSkywalkTxSubmissionQueue::collectQueueStats(this, a2, a3, a4, v20);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::getFlowIDForHash(uint64_t a1, void *a2)
{
  v4 = 40;
  while (1)
  {
    v5 = *(*(a1 + 88) + v4);
    if (v5)
    {
      if (*AppleBCMWLANPCIeFlowQueue::getFlowHash(v5) == *a2)
      {
        break;
      }
    }

    v4 += 8;
    if (v4 == 168)
    {
      return 0xFFFFLL;
    }
  }

  v7 = *(*(a1 + 88) + v4);

  return AppleBCMWLANPCIeFlowQueue::getFlowId(v7);
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::addPacketToRequeueList(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(v2 + 192);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(v2 + 200);
  if (v4 > 0x7F)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(v3 + 8 * v4) = a2;
  ++*(*(a1 + 88) + 200);
  return result;
}

uint64_t AppleBCMWLANPCIeSkywalkTxSubmissionQueue::requestDequeue(IOUserNetworkPacketQueue *this, void *a2, unsigned int a3)
{
  *(this[1].ivars + 53) = mach_continuous_time();

  return AppleBCMWLANSkywalkTxSubmissionQueue::requestDequeue(this, a2, a3);
}

uint64_t non-virtual thunk toAppleBCMWLANPCIeSkywalkTxSubmissionQueue::requestDequeue(AppleBCMWLANPCIeSkywalkTxSubmissionQueue *this, void *a2, unsigned int a3)
{
  v5 = (this - 40);
  *(*(this + 6) + 424) = mach_continuous_time();

  return AppleBCMWLANSkywalkTxSubmissionQueue::requestDequeue(v5, a2, a3);
}

OSObject *AppleBCMWLANConfigManager::withDriver(AppleBCMWLANConfigManager *this, AppleBCMWLANCore *a2, AppleBCMWLANChipImage *(*a3)(const OSObject *, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t), int (*a4)(const OSObject *, AppleBCMWLANChipImage *), int (*a5)(const OSObject *, AppleBCMWLANChipImage *), BOOL (*a6)(const OSObject *))
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  if (OSObjectAllocate(gAppleBCMWLANConfigManagerMetaClass, &v13))
  {
    return 0;
  }

  v11 = v13;
  if (v13 && ((v13->OSMetaClassBase::__vftable[1].getMetaClass)(v13, this, a2, a3, a4, a5) & 1) == 0)
  {
    (v11->release)(v11);
    return 0;
  }

  return v11;
}

uint64_t AppleBCMWLANConfigManager::init(AppleBCMWLANConfigManager *this, AppleBCMWLANCore *a2, AppleBCMWLANChipImage *(*a3)(const OSObject *, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t, unint64_t), int (*a4)(const OSObject *, AppleBCMWLANChipImage *), int (*a5)(const OSObject *, AppleBCMWLANChipImage *), BOOL (*a6)(const OSObject *))
{
  result = IOMallocZeroTyped();
  *(this + 6) = result;
  v13 = this + 48;
  if (result)
  {
    result = OSObject::init(this);
    if (result)
    {
      **v13 = a2;
      *(*v13 + 16) = (*(*a2 + 1952))(a2);
      v14 = *(*v13 + 16);
      if (!v14)
      {
        ClassNameHelper = getClassNameHelper(this);
        IOLog("%s::%s(): Unable to get debug logger\n", ClassNameHelper, "init");
        return 0;
      }

      (*(*v14 + 8))(v14);
      *(*v13 + 24) = AppleBCMWLANCore::getCommander(a2);
      v15 = *(*v13 + 24);
      if (v15)
      {
        (*(*v15 + 8))(v15);
        AppleBCMWLANConfigManager::initSaneParameters(this);
        *(*(this + 6) + 264) = AppleBCMWLANCore::getFaultReporter(**(this + 6));
        (*(**(*(this + 6) + 264) + 8))(*(*(this + 6) + 264));
        getClassNameHelper(this);
        CCFaultReporter::registerCallbacks();
        *(*(this + 6) + 390) = 1;
        v16 = IOParseBootArgNumber("wlan.6GHzRoaming.enabled", (*(this + 6) + 390), 1);
        v17 = *(this + 6);
        if (v16)
        {
          v18 = *(v17 + 16);
          if (*(v17 + 390) == 1)
          {
            if (v18 && CCLogStream::shouldLog())
            {
              AppleBCMWLANConfigManager::init(this + 48);
              if (!a3)
              {
                return 0;
              }

LABEL_22:
              *(*v13 + 352) = a3;
              if (a4)
              {
                *(*v13 + 360) = a4;
                if (a5)
                {
                  *(*v13 + 368) = a5;
                  if (a6)
                  {
                    *(*v13 + 376) = a6;
                    return 1;
                  }
                }
              }

              return 0;
            }
          }

          else if (v18 && CCLogStream::shouldLog())
          {
            AppleBCMWLANConfigManager::init(this + 48);
            if (a3)
            {
              goto LABEL_22;
            }

            return 0;
          }
        }

        else if (*(v17 + 16) && CCLogStream::shouldLog())
        {
          AppleBCMWLANConfigManager::init(this + 48);
          if (!a3)
          {
            return 0;
          }

          goto LABEL_22;
        }

        if (a3)
        {
          goto LABEL_22;
        }

        return 0;
      }

      result = *(*v13 + 16);
      if (result)
      {
        result = CCLogStream::shouldLog();
        if (result)
        {
          AppleBCMWLANConfigManager::init(this + 48);
          return 0;
        }
      }
    }
  }

  return result;
}

__n128 AppleBCMWLANConfigManager::initSaneParameters(AppleBCMWLANConfigManager *this)
{
  *(*(this + 6) + 100) = 0;
  *(*(this + 6) + 102) = 90;
  *(*(this + 6) + 104) = 30;
  *(*(this + 6) + 106) = 7;
  *(*(this + 6) + 108) = 2;
  *(*(this + 6) + 110) = 0;
  *(*(this + 6) + 112) = -75;
  *(*(this + 6) + 114) = 20;
  *(*(this + 6) + 116) = -75;
  *(*(this + 6) + 118) = 20;
  v1 = *(this + 6);
  result = *(v1 + 100);
  *(v1 + 80) = result;
  *(v1 + 96) = *(v1 + 116);
  *(*(this + 6) + 48) = 3;
  *(*(this + 6) + 50) = 60;
  *(*(this + 6) + 52) = 0;
  *(*(this + 6) + 54) = 3;
  *(*(this + 6) + 56) = 4000;
  v3 = *(this + 6);
  *(v3 + 36) = *(v3 + 48);
  *(v3 + 44) = *(v3 + 56);
  *(*(this + 6) + 38) = 200;
  *(*(this + 6) + 220) = 0;
  *(*(this + 6) + 224) = 0;
  *(*(this + 6) + 388) = 0;
  *(*(this + 6) + 228) = 0;
  *(*(this + 6) + 229) = 0;
  *(*(this + 6) + 240) &= ~2u;
  *(*(this + 6) + 240) &= ~1u;
  *(*(this + 6) + 240) &= ~4u;
  *(*(this + 6) + 256) = 0;
  *(*(this + 6) + 252) = 0;
  *(*(this + 6) + 248) = 0;
  return result;
}

uint64_t AppleBCMWLANConfigManager::collectImmediateFaultDataCallback(AppleBCMWLANConfigManager *this, CCFaultReport *a2)
{
  v4 = IOMallocZeroData();
  if (v4)
  {
    v5 = v4;
    v6 = AppleBCMWLANConfigManager::dumpState(this, v4, 0, 0x3FFFu);
    if (v6 >= 0x4000)
    {
      panic("buffer overflow printed is bigger than buffer size %d >= bufferSize %d \n", v6, 0x4000);
    }

    v7 = OSString::withCString("ConfigManagerState.txt");
    v8 = OSString::withCString(v5);
    (*(*a2 + 192))(a2, v7, v8);
    IOFreeData();
  }

  return 0;
}

CCFaultReporter *AppleBCMWLANConfigManager::stop(OSObject *this)
{
  result = *(*&this[1].refcount + 264);
  if (result)
  {
    return CCFaultReporter::unregisterCallbacks(result, this);
  }

  return result;
}

uint64_t AppleBCMWLANConfigManager::freeResources(AppleBCMWLANConfigManager *this)
{
  v2 = *(this + 6);
  v3 = v2[33];
  if (v3)
  {
    (*(*v3 + 16))(v3);
    *(*(this + 6) + 264) = 0;
    v2 = *(this + 6);
  }

  v4 = v2[3];
  if (v4)
  {
    (*(*v4 + 16))(v4);
    *(*(this + 6) + 24) = 0;
    v2 = *(this + 6);
  }

  v5 = v2[1];
  if (v5)
  {
    (*(*v5 + 16))(v5);
    *(*(this + 6) + 8) = 0;
    v2 = *(this + 6);
  }

  v6 = v2[2];
  if (v6)
  {
    (*(*v6 + 16))(v6);
    *(*(this + 6) + 16) = 0;
    v2 = *(this + 6);
  }

  result = v2[24];
  if (result)
  {
    result = (*(*result + 16))(result);
    *(*(this + 6) + 192) = 0;
  }

  return result;
}

void AppleBCMWLANConfigManager::free(AppleBCMWLANConfigManager *this)
{
  AppleBCMWLANConfigManager::freeResources(this);
  OSObject::free(this);
  v2 = *(this + 6);
  if (v2)
  {
    memset_s(v2, 0x190uLL, 0, 0x190uLL);
    v3 = *(this + 6);
    if (v3)
    {
      IOFree(v3, 0x190uLL);
      *(this + 6) = 0;
    }
  }
}

uint64_t AppleBCMWLANConfigManager::dumpState(AppleBCMWLANConfigManager *this, char *a2, unsigned int a3, unsigned int a4)
{
  v7 = a3;
  v8 = a4;
  v9 = IO80211Print(*(*(this + 6) + 16), 5, -1, 0, a2, a3, a4, " default PS Params flags = 0x%04X, pm2SleepRet = %u\n", *(*(this + 6) + 48), *(*(this + 6) + 50));
  v10 = IO80211Print(*(*(this + 6) + 16), 5, -1, 0, a2, v9 + a3, v8 - v9, " default extended DTIM params from device tree: flags = 0x%04X, count = %u, inactivity = %lu ms\n", *(*(this + 6) + 52), *(*(this + 6) + 54), *(*(this + 6) + 56)) + v9;
  v11 = IO80211Print(*(*(this + 6) + 16), 5, -1, 0, a2, v10 + a3, v8 - v10, " real time PS Params flags = 0x%04X, pm2SleepRet = %u\n", *(*(this + 6) + 36), *(*(this + 6) + 38)) + v10;
  v12 = IO80211Print(*(*(this + 6) + 16), 5, -1, 0, a2, v11 + a3, v8 - v11, " real time extended DTIM params from device tree: flags = 0x%04X, count = %u, inactivity = %lu ms\n", *(*(this + 6) + 40), *(*(this + 6) + 42), *(*(this + 6) + 44)) + v11;
  v13 = *(this + 6);
  v14 = *(v13 + 16);
  if (*(v13 + 32))
  {
    v15 = "Enabled";
  }

  else
  {
    v15 = "Disabled";
  }

  v16 = IO80211Print(v14, 5, -1, 0, a2, v12 + a3, v8 - v12, "WOMP %s\n", v15) + v12;
  v17 = *(this + 6);
  v18 = *(v17 + 16);
  v19 = v16 + a3;
  v20 = *(v17 + 192);
  if (v20)
  {
    CStringNoCopy = OSString::getCStringNoCopy(v20);
  }

  else
  {
    CStringNoCopy = "None";
  }

  v22 = IO80211Print(v18, 5, -1, 0, a2, v19, v8 - v16, "Region Info %s\n", CStringNoCopy) + v16;
  v23 = IO80211Print(*(*(this + 6) + 16), 5, -1, 0, a2, v7 + v22, v8 - v22, "Prefer 5GHz threshold parameters from device tree: rssiThreshold = %d rssiAdjustment = %d\n", *(*(this + 6) + 72), *(*(this + 6) + 74)) + v22;
  v24 = IO80211Print(*(*(this + 6) + 16), 5, -1, 0, a2, v7 + v23, v8 - v23, "Prefer 6GHz threshold parameters from device tree: rssiThreshold = %d rssiAdjustment = %d\n", *(*(this + 6) + 76), *(*(this + 6) + 78)) + v23;
  v25 = IO80211Print(*(*(this + 6) + 16), 5, -1, 0, a2, v7 + v24, v8 - v24, "default roam params from device tree: flags = 0x%04X fullRoamScanPeriod = %u partialRoamScanPeriod = %u\n", *(*(this + 6) + 100), *(*(this + 6) + 102), *(*(this + 6) + 104)) + v24;
  v26 = IO80211Print(*(*(this + 6) + 16), 5, -1, 0, a2, v7 + v25, v8 - v25, "\troamResetRSSIDelta = %u fullRoamScanCount = %u txFailTrigger = %u\n", *(*(this + 6) + 106), *(*(this + 6) + 108), *(*(this + 6) + 110)) + v25;
  v27 = IO80211Print(*(*(this + 6) + 16), 5, -1, 0, a2, v7 + v26, v8 - v26, "\t2.4 GHz: rssiTrigger = %d rssiQualDelta = %u\n", *(*(this + 6) + 112), *(*(this + 6) + 114)) + v26;
  v28 = IO80211Print(*(*(this + 6) + 16), 5, -1, 0, a2, v7 + v27, v8 - v27, "\t5 GHz: rssiTrigger = %d rssiQualDelta = %u\n", *(*(this + 6) + 116), *(*(this + 6) + 118)) + v27;
  v29 = IO80211Print(*(*(this + 6) + 16), 5, -1, 0, a2, v7 + v28, v8 - v28, "Enterprise roam params from device tree: flags = 0x%04X fullRoamScanPeriod = %u partialRoamScanPeriod = %u\n", *(*(this + 6) + 80), *(*(this + 6) + 82), *(*(this + 6) + 84)) + v28;
  v30 = IO80211Print(*(*(this + 6) + 16), 5, -1, 0, a2, v7 + v29, v8 - v29, "\troamResetRSSIDelta = %u fullRoamScanCount = %u txFailTrigger = %u\n", *(*(this + 6) + 86), *(*(this + 6) + 88), *(*(this + 6) + 90)) + v29;
  v31 = IO80211Print(*(*(this + 6) + 16), 5, -1, 0, a2, v7 + v30, v8 - v30, "\t2.4 GHz: rssiTrigger = %d rssiQualDelta = %u\n", *(*(this + 6) + 92), *(*(this + 6) + 94)) + v30;
  v32 = IO80211Print(*(*(this + 6) + 16), 5, -1, 0, a2, v7 + v31, v8 - v31, "\t5 GHz: rssiTrigger = %d rssiQualDelta = %u\n", *(*(this + 6) + 96), *(*(this + 6) + 98)) + v31;
  v33 = *(this + 6);
  v34 = "kAWDLAlwaysEnabled";
  v35 = "N/A ";
  v36 = *(v33 + 140);
  if ((v36 & 1) == 0)
  {
    v34 = "N/A ";
  }

  v37 = "kAWDLDisablePrivElection";
  if ((v36 & 2) == 0)
  {
    v37 = "N/A ";
  }

  v38 = "kAWDLChanSeqAlwaysInfra";
  if ((v36 & 4) == 0)
  {
    v38 = " N/A";
  }

  if ((v36 & 8) != 0)
  {
    v35 = "kAWDLRestrictedFwFeature";
  }

  v39 = IO80211Print(*(v33 + 16), 5, -1, 0, a2, v7 + v32, v8 - v32, " AWDL Always ON: %s  Priv Elect: %s  Restricted to infra channel: %s  Restricted Feature Set: %s  Elect Metric: %u \n", v34, v37, v38, v35, *(v33 + 142)) + v32;
  v40 = *(this + 6);
  v41 = *(v40 + 16);
  if (*(v40 + 321))
  {
    v42 = "YES";
  }

  else
  {
    v42 = "NO";
  }

  v43 = IO80211Print(v41, 5, -1, 0, a2, v7 + v39, v8 - v39, "DFS Proxy Support Enabled:%s \t\n", v42) + v39;
  v44 = *(this + 6);
  if (*(v44 + 175) == 1)
  {
    v45 = IO80211Print(*(v44 + 16), 5, -1, 0, a2, v7 + v43, v8 - v43, "Motion Profile States from device tree: frozen = %u Moving = %u  walking = %u  driving = %u\n", *(v44 + 148), *(v44 + 150), *(v44 + 152), *(v44 + 154)) + v43;
    v43 = IO80211Print(*(*(this + 6) + 16), 5, -1, 0, a2, v7 + v45, v8 - v45, "Motion Profile Configured GPIO Pins used for Mapping: Low Significant Bit = %d High Significant Bit = %d\n", *(*(this + 6) + 156), *(*(this + 6) + 157)) + v45;
    v44 = *(this + 6);
  }

  if (*(v44 + 188) == 1)
  {
    v43 += IO80211Print(*(v44 + 16), 5, -1, 0, a2, v7 + v43, v8 - v43, "DFRTS Params: Low FRTS Value = %u High FRTS Value = %u  Logic = %u  Packet Threshold = %u\n", *(v44 + 158), *(v44 + 160), *(v44 + 162), *(v44 + 164));
    v44 = *(this + 6);
  }

  v46 = IO80211Print(*(v44 + 16), 5, -1, 0, a2, v7 + v43, v8 - v43, "ivars->fMIMOPowerSaveEnabled %d\n", *(v44 + 224)) + v43;
  v47 = *(this + 6);
  v48 = *(v47 + 16);
  if (*(v47 + 228))
  {
    v49 = "YES";
  }

  else
  {
    v49 = "NO";
  }

  v50 = IO80211Print(v48, 5, -1, 0, a2, v7 + v46, v8 - v46, "OCL Config in Device Tree:%s \t\n", v49) + v46;
  v51 = *(this + 6);
  v52 = *(v51 + 16);
  if (*(v51 + 229))
  {
    v53 = "YES";
  }

  else
  {
    v53 = "NO";
  }

  v54 = IO80211Print(v52, 5, -1, 0, a2, v7 + v50, v8 - v50, "OCLAWDL Config in Device Tree:%s \t\n", v53) + v50;
  v55 = IO80211Print(*(*(this + 6) + 16), 5, -1, 0, a2, v7 + v54, v8 - v54, "Ranging Config: bitflips %d\n", *(*(this + 6) + 232));
  v56 = *(this + 6);
  v57 = IO80211Print(*(v56 + 16), 5, -1, 0, a2, v7 + (v55 + v54), v8 - (v55 + v54), "EnabledAutoCountry=%d, Ignore11dPwrCtrl=%d, EnabledEnhancedLocale=%d, EnabledEnhancedRoaming=%d, ivars->fMaxSTAs=%lu ivars->fNoWAPI=%d EnhTrgDisc=%u\n", *(v56 + 172), *(v56 + 173), *(v56 + 174), *(v56 + 170), *(v56 + 180), *(v56 + 176), *(v56 + 200)) + v55 + v54;
  v58 = IO80211Print(*(*(this + 6) + 16), 5, -1, 0, a2, v7 + v57, v8 - v57, "ivars->fListenInterval=%d\n", *(*(this + 6) + 184)) + v57;
  v59 = *(this + 6);
  v60 = *(v59 + 16);
  if (*(v59 + 171))
  {
    v61 = "enabled";
  }

  else
  {
    v61 = "disabled";
  }

  v62 = IO80211Print(v60, 5, -1, 0, a2, v7 + v58, v8 - v58, "Tethering is %s per Device Tree\n", v61) + v58;
  v63 = *(this + 6);
  v64 = *(v63 + 16);
  if (*(v63 + 189))
  {
    v65 = "enabled";
  }

  else
  {
    v65 = "disabled";
  }

  v66 = IO80211Print(v64, 5, -1, 0, a2, v7 + v62, v8 - v62, "VO Bloack Ack is %s\n", v65) + v62;
  v67 = IO80211Print(*(*(this + 6) + 16), 5, -1, 0, a2, v7 + v66, v8 - v66, "ivars->fEnterpriseEnhancementParams State: EnahncedDisAssoc:%u BeaconReporting:%u osVersionInfo:%u\n", *(*(this + 6) + 240) & 1, (*(*(this + 6) + 240) >> 1) & 1, (*(*(this + 6) + 240) >> 2) & 1) + v66;
  v68 = *(this + 6);
  v69 = *(v68 + 16);
  if (*(v68 + 244))
  {
    v70 = "YES";
  }

  else
  {
    v70 = "NO";
  }

  v71 = IO80211Print(v69, 5, -1, 0, a2, v7 + v67, v8 - v67, "TxFail Event Supported:%s \t\n", v70) + v67;
  v72 = *(this + 6);
  v73 = *(v72 + 16);
  if (*(v72 + 204))
  {
    v74 = "Enable";
  }

  else
  {
    v74 = "Disable";
  }

  v75 = IO80211Print(v73, 5, -1, 0, a2, v7 + v71, v8 - v71, "Tx Power Cap Control: %s \n", v74) + v71;
  v76 = *(this + 6);
  if (*(v76 + 204))
  {
    v77 = IO80211Print(*(v76 + 16), 5, -1, 0, a2, v7 + v75, v8 - v75, "Tx Power Cap version: %d \n", *(v76 + 216)) + v75;
    v75 = IO80211Print(*(*(this + 6) + 16), 5, -1, 0, a2, v7 + v77, v8 - v77, "Tx Power Cap slot: %d \n", *(*(this + 6) + 215)) + v77;
    v78 = *(this + 6);
    if (*(v78 + 215))
    {
      v79 = 205;
      do
      {
        v75 = IO80211Print(*(v78 + 16), 5, -1, 0, a2, v7 + v75, v8 - v75, "Tx Power Cap config: %d \n", *(v78 + v79)) + v75;
        v78 = *(this + 6);
        v80 = v79 - 204;
        ++v79;
      }

      while (v80 < *(v78 + 215));
    }
  }

  return v75;
}

uint64_t AppleBCMWLANConfigManager::gatherParameterData(AppleBCMWLANConfigManager *this, IOService *a2)
{
  v87 = 0;
  v88 = 0;
  v86 = 0;
  v85 = 0;
  v83 = 0;
  v84 = 0;
  if (!a2)
  {
    return 3758097090;
  }

  v5 = (this + 48);
  v4 = *(this + 6);
  v6 = v4[1];
  if (v6 != a2)
  {
    if (v6)
    {
      (v6->release)(v6);
      v4 = *v5;
    }

    v4[1] = a2;
    (*(*(*v5)[1] + 8))((*v5)[1]);
    v4 = *v5;
  }

  if (v4[2])
  {
    shouldLog = CCLogStream::shouldLog();
    v4 = *v5;
    if (shouldLog)
    {
      CCLogStream::logAlert(v4[2], "[dk] %s@%d: root[%p] fProvisioningRoot[%p]\n", "gatherParameterData", 722, a2, v4[1]);
      v4 = *v5;
    }
  }

  if (checkAcquireDataPropertyNotEmpty(v4[1], "region-info", &v88, 0, 1uLL, "IOService"))
  {
    BytesNoCopy = OSData::getBytesNoCopy(v88);
    if (BytesNoCopy)
    {
      v9 = OSData::getBytesNoCopy(v88);
      BytesNoCopy = OSString::withCString(v9);
    }

    (*v5)[24] = BytesNoCopy;
    if ((*v5)[2] && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::gatherParameterData(v5);
    }

    if (v88)
    {
      (v88->release)(v88);
      v88 = 0;
    }
  }

  if (checkAcquireDataPropertyNotEmpty((*v5)[1], "bcom.ps.default", &v88, 0xCuLL, 1uLL, "IOService"))
  {
    v10 = *v5;
    v11 = OSData::getBytesNoCopy(v88, 0, 0xCuLL);
    v12 = v11[2];
    v10[6] = *v11;
    *(v10 + 14) = v12;
    if (v88)
    {
      (v88->release)(v88);
      v88 = 0;
    }
  }

  v13 = checkAcquireDataPropertyNotEmpty((*v5)[1], "bcom.ps.realtime", &v88, 0xCuLL, 1uLL, "IOService");
  v14 = *v5;
  if (v13)
  {
    v15 = OSData::getBytesNoCopy(v88, 0, 0xCuLL);
    v16 = v15[2];
    *(v14 + 36) = *v15;
    *(v14 + 11) = v16;
    if (v88)
    {
      (v88->release)(v88);
      v88 = 0;
    }
  }

  else
  {
    if (v14[2])
    {
      v18 = CCLogStream::shouldLog();
      v14 = *v5;
      if (v18)
      {
        CCLogStream::logAlert(v14[2], "[dk] %s@%d: no real time PS parameters found using default\n", "gatherParameterData", 740);
        v14 = *v5;
      }
    }

    *(v14 + 36) = v14[6];
    *(v14 + 11) = *(v14 + 14);
  }

  v19 = checkAcquireDataPropertyNotEmpty((*v5)[1], "bcom.wow.magic-packet", &v88, 0, 1uLL, "IOService");
  v20 = *v5;
  v21 = (*v5)[2];
  if (v19)
  {
    if (v21)
    {
      v22 = CCLogStream::shouldLog();
      v20 = *v5;
      if (v22)
      {
        CCLogStream::logAlert(v20[2], "[dk] %s@%d: WOMP - true\n", "gatherParameterData", 745);
        v20 = *v5;
      }
    }

    *(v20 + 32) = 1;
    if (v88)
    {
      (v88->release)(v88);
      v88 = 0;
    }
  }

  else
  {
    if (v21)
    {
      v23 = CCLogStream::shouldLog();
      v20 = *v5;
      if (v23)
      {
        CCLogStream::logAlert(v20[2], "[dk] %s@%d: WOMP - false\n", "gatherParameterData", 749);
        v20 = *v5;
      }
    }

    *(v20 + 32) = 0;
  }

  v24 = checkAcquireDataPropertyNotEmpty((*v5)[1], "bcom.roam.default", &v88, 0x14uLL, 1uLL, "IOService");
  v25 = *v5;
  if (v24)
  {
    v26 = OSData::getBytesNoCopy(v88, 0, 0x14uLL);
    v27 = v26[4];
    *(v25 + 100) = *v26;
    *(v25 + 29) = v27;
    if (v88)
    {
      (v88->release)(v88);
      v88 = 0;
    }
  }

  else if (v25[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANConfigManager::gatherParameterData(v5);
  }

  v28 = checkAcquireDataPropertyNotEmpty((*v5)[1], "bcom.roam.enterprise", &v88, 0x14uLL, 1uLL, "IOService");
  v29 = *v5;
  if (v28)
  {
    v30 = OSData::getBytesNoCopy(v88, 0, 0x14uLL);
    v31 = v30[4];
    *(v29 + 5) = *v30;
    *(v29 + 24) = v31;
    if (v88)
    {
      (v88->release)(v88);
      v88 = 0;
    }
  }

  else
  {
    if (v29[2])
    {
      v32 = CCLogStream::shouldLog();
      v29 = *v5;
      if (v32)
      {
        CCLogStream::logAlert(v29[2], "[dk] %s@%d: no enterprise roaming parameters found using default\n", "gatherParameterData", 764);
        v29 = *v5;
      }
    }

    *(v29 + 5) = *(v29 + 100);
    *(v29 + 24) = *(v29 + 29);
  }

  v33 = checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.externallypowered", &v88, 0, 1uLL, "IOService");
  v34 = *v5;
  if (v33)
  {
    *(v34 + 239) = 1;
    if (v88)
    {
      (v88->release)(v88);
      v88 = 0;
    }
  }

  else
  {
    *(v34 + 239) = 0;
  }

  v35 = checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.chip.power.dutycycle", &v88, 0x30uLL, 1uLL, "IOService");
  v36 = *v5;
  if (v35)
  {
    v37 = OSData::getBytesNoCopy(v88, 0, 0x30uLL);
    v39 = v37[1];
    v38 = v37[2];
    *(v36 + 17) = *v37;
    *(v36 + 18) = v39;
    *(v36 + 19) = v38;
    *(*v5 + 320) = 1;
    if (v88)
    {
      (v88->release)(v88);
      v88 = 0;
    }
  }

  else
  {
    if (v36[2])
    {
      v40 = CCLogStream::shouldLog();
      v36 = *v5;
      if (v40)
      {
        CCLogStream::logAlert(v36[2], "[dk] %s@%d:Using default power to duty cycle table.\n", "gatherParameterData", 781);
        v36 = *v5;
      }
    }

    v41 = unk_1003E816C;
    *(v36 + 17) = kWlanPwrDutyCyclePreset;
    *(v36 + 18) = v41;
    *(v36 + 19) = xmmword_1003E817C;
    *(*v5 + 320) = 0;
  }

  *(*v5 + 140) = 0;
  v42 = checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.awdl.params", &v88, 8uLL, 1uLL, "IOService");
  v43 = *v5;
  if (v42)
  {
    *(v43 + 140) = *OSData::getBytesNoCopy(v88, 0, 8uLL);
    IO80211HexdumpIf();
    *(*v5 + 167) = (*(*v5 + 140) & 2) != 0;
    *(*v5 + 166) = 1;
    if (v88)
    {
      (v88->release)(v88);
      v88 = 0;
    }
  }

  else if (v43[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANConfigManager::gatherParameterData(v5);
  }

  v85 = 0;
  if (checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.awdlht20only", &v88, 4uLL, 1uLL, "IOService"))
  {
    v85 = *OSData::getBytesNoCopy(v88, 0, 4uLL);
    IO80211HexdumpIf();
    if (v85)
    {
      *(*v5 + 70) |= 0x10u;
    }

    if (v88)
    {
      (v88->release)(v88);
      v88 = 0;
    }
  }

  else if ((*v5)[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANConfigManager::gatherParameterData(v5);
  }

  v44 = checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.dfsproxy.enabled", &v88, 0, 1uLL, "IOService");
  v45 = *v5;
  if (v44)
  {
    *(v45 + 321) = 1;
    if (v88)
    {
      (v88->release)(v88);
      v88 = 0;
    }
  }

  else
  {
    *(v45 + 321) = 0;
    if ((*v5)[2] && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::gatherParameterData(v5);
    }
  }

  v46 = checkAcquireDataPropertyNotEmpty((*v5)[1], "bcom.oscar.profilestates", &v88, 0xAuLL, 1uLL, "IOService");
  v47 = *v5;
  if (v46)
  {
    v48 = OSData::getBytesNoCopy(v88, 0, 0xAuLL);
    v49 = v48[4];
    *(v47 + 148) = *v48;
    *(v47 + 78) = v49;
    *(*v5 + 175) = 1;
    if (v88)
    {
      (v88->release)(v88);
      v88 = 0;
    }
  }

  else
  {
    *(v47 + 175) = 0;
  }

  v50 = checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.dfrts", &v88, 8uLL, 1uLL, "IOService");
  v51 = *v5;
  if (v50)
  {
    *(v51 + 158) = *OSData::getBytesNoCopy(v88, 0, 8uLL);
    *(*v5 + 188) = 1;
    if (v88)
    {
      (v88->release)(v88);
      v88 = 0;
    }
  }

  else
  {
    *(v51 + 188) = 0;
  }

  *(*v5 + 224) = checkPropertyExists((*v5)[1], "wlan.mimo_ps.enabled", 1uLL, "IOService");
  *(*v5 + 228) = checkPropertyExists((*v5)[1], "wlan.ocl.enabled", 1uLL, "IOService");
  v52 = checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.ocl_awdl.enabled", &v88, 0, 1uLL, "IOService");
  v53 = *v5;
  if (v52)
  {
    *(v53 + 229) = 1;
    if (v88)
    {
      (v88->release)(v88);
      v88 = 0;
    }
  }

  else
  {
    *(v53 + 229) = 0;
  }

  v54 = checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.ebt.enabled", &v88, 0, 1uLL, "IOService");
  v55 = *v5;
  if (v54)
  {
    if (*v55 && (v56 = AppleBCMWLANCore::getBus(*v55), v55 = *v5, v56))
    {
      Bus = AppleBCMWLANCore::getBus(*v55);
      *(*v5 + 237) = (*(*Bus + 368))(Bus) != 4377;
    }

    else
    {
      *(v55 + 237) = 1;
    }

    if (v88)
    {
      (v88->release)(v88);
      v88 = 0;
    }
  }

  else
  {
    *(v55 + 237) = 0;
  }

  v58 = checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.dignap.enabled", &v88, 0, 1uLL, "IOService");
  v59 = *v5;
  if (v58)
  {
    *(v59 + 238) = 1;
    if (v88)
    {
      (v88->release)(v88);
      v88 = 0;
    }
  }

  else
  {
    *(v59 + 238) = 0;
  }

  v60 = checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.ops.enabled", &v88, 0, 1uLL, "IOService");
  v61 = *v5;
  if (v60)
  {
    *(v61 + 236) = 1;
    if (v88)
    {
      (v88->release)(v88);
      v88 = 0;
    }
  }

  else
  {
    *(v61 + 236) = 0;
  }

  AppleBCMWLANConfigManager::gatherKvrParameterData(this, *(*(this + 6) + 8), 1);
  AppleBCMWLANConfigManager::readEnhancedRoamingProperty(this, *(*(this + 6) + 8));
  v62 = checkAcquireDataPropertyNotEmpty(*(*(this + 6) + 8), "wlan.txFailEvent.enabled", &v88, 0, 1uLL, "IOService");
  v63 = *(this + 6);
  if (v62)
  {
    *(v63 + 244) = 1;
    v82 = 0;
    if (checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.txFailEvent.params", &v82, 0xCuLL, 1uLL, "IOService"))
    {
      v64 = *v5;
      v65 = OSData::getBytesNoCopy(v82, 0, 0xCuLL);
      v66 = v65[2];
      v64[31] = *v65;
      *(v64 + 64) = v66;
      if (v82)
      {
        (v82->release)(v82);
        v82 = 0;
      }
    }

    if (v88)
    {
      (v88->release)(v88);
      v88 = 0;
    }
  }

  else
  {
    *(v63 + 244) = 0;
  }

  v67 = checkAcquireDataPropertyNotEmpty((*v5)[1], "wlan.ranging.params", &v88, 4uLL, 1uLL, "IOService");
  v68 = *v5;
  if (v67)
  {
    *(v68 + 58) = *OSData::getBytesNoCopy(v88, 0, 4uLL);
    if (v88)
    {
      (v88->release)(v88);
      v88 = 0;
    }
  }

  else
  {
    *(v68 + 116) = 10;
    *(*v5 + 117) |= 1u;
  }

  v84 = 0;
  if (acquireProperty<OSBoolean>((*v5)[1], "wlan.vo.blockack", &v84, 1uLL, "IOService"))
  {
    v69 = v84;
    v70 = v84 && v84 == kOSBooleanTrue;
    v71 = v70;
    *(*v5 + 189) = v71;
    if (v69)
    {
      (v69->release)(v69);
      v84 = 0;
    }
  }

  AppleBCMWLANCore::fetchAndUpdateRingParameters(**v5);
  v83 = 0;
  if (acquireProperty<OSBoolean>((*v5)[1], "wlan.gpio-tx-envelope-ind", &v83, 1uLL, "IOService"))
  {
    v72 = v83;
    v73 = v83 && v83 == kOSBooleanTrue;
    v74 = v73;
    *(*v5 + 323) = v74;
    if (v72)
    {
      (v72->release)(v72);
      v83 = 0;
    }
  }

  *(*v5 + 324) = 1;
  v86 = 0;
  if (IOParseBootArgNumber("wlan.lowlatency.enable", &v86, 4))
  {
    *(*v5 + 324) = v86 != 0;
  }

  v87 = 0;
  *(*v5 + 325) = 0;
  if (acquireProperty<OSBoolean>((*v5)[1], "wlan.adaptiveroaming.enabled", &v87, 1uLL, "IOService"))
  {
    v75 = v87;
    if (v87 == kOSBooleanTrue)
    {
      *(*v5 + 325) = 1;
    }

    if (v75)
    {
      (v75->release)(v75);
      v87 = 0;
    }
  }

  if (checkPropertyExists((*v5)[1], "wlan.lpas-allowed", 1uLL, "IOService"))
  {
    *(*v5 + 335) = 1;
  }

  v76 = IOParseBootArgNumber("wlan.lpas-allowed", *v5 + 335, 1);
  v77 = *v5;
  if (v76)
  {
    if (v77[2])
    {
      v78 = CCLogStream::shouldLog();
      v77 = *v5;
      if (v78)
      {
        CCLogStream::logAlert(v77[2], "[dk] %s@%d: Found '%s' boot-arg, forced[%u]\n", "gatherParameterData", 959, "wlan.lpas-allowed", *(v77 + 335));
        v77 = *v5;
      }
    }
  }

  if (checkPropertyExists(v77[1], "wlan.aoac-allowed", 1uLL, "IOService"))
  {
    *(*v5 + 336) = 1;
  }

  if (IOParseBootArgNumber("wlan.aoac-allowed", *v5 + 42, 1) && (*v5)[2] && CCLogStream::shouldLog())
  {
    AppleBCMWLANConfigManager::gatherParameterData(v5);
  }

  AppleBCMWLANConfigManager::populatePlatformProperties(this);
  v79 = *(this + 6);
  if (v79[2])
  {
    v80 = CCLogStream::shouldLog();
    v79 = *v5;
    if (v80)
    {
      CCLogStream::logAlert(v79[2], "[dk] %s@%d: LPAS allowed[%u], AOAC allowed[%u]\n", "gatherParameterData", 972, *(v79 + 335), *(v79 + 336));
      v79 = *v5;
    }
  }

  v81 = v79[2];
  if (v81)
  {
    if (CCLogStream::shouldLog(v81, 0x80uLL))
    {
      AppleBCMWLANConfigManager::dumpState(this, 0, 0, 0);
    }
  }

  IOParseBootArgNumber("wlan.debug.isNewDevice", *v5 + 389, 1);
  return 0;
}

uint64_t AppleBCMWLANConfigManager::gatherKvrParameterData(AppleBCMWLANConfigManager *this, IOService *a2, int a3)
{
  if (!a2)
  {
    return 3758097090;
  }

  v7 = this + 48;
  v6 = *(this + 6);
  v8 = *(v6 + 8);
  if (v8 != a2)
  {
    if (v8)
    {
      (v8->release)(v8);
      v6 = *v7;
    }

    *(v6 + 8) = a2;
    (*(**(*v7 + 8) + 8))(*(*v7 + 8));
    v8 = *(*v7 + 8);
  }

  v24 = 0;
  v9 = checkAcquireDataPropertyNotEmpty(v8, "wlan.enterprise.params", &v24, 4uLL, 1uLL, "IOService");
  v10 = *v7;
  if (v9)
  {
    *(v10 + 240) = *OSData::getBytesNoCopy(v24, 0, 4uLL);
    if (*(*v7 + 16) && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::gatherKvrParameterData(v7);
    }

    if (v24)
    {
      (v24->release)(v24);
      v24 = 0;
    }
  }

  else
  {
    if (*(v10 + 16))
    {
      shouldLog = CCLogStream::shouldLog();
      v10 = *v7;
      if (shouldLog)
      {
        CCLogStream::logNotice(*(v10 + 16), "[dk] %s@%d:EnterpriseEnhancementParams: Failed to read params. Defaulting to OFF \n", "gatherKvrParameterData", 1011);
        v10 = *v7;
      }
    }

    *(v10 + 240) &= ~1u;
    *(*v7 + 240) &= ~2u;
    *(*v7 + 240) &= ~4u;
  }

  v23 = 0;
  if (IOParseBootArgNumber("wlan.debug.EEparams.enhancedDisAssociationInfo", &v23, 1))
  {
    *(*v7 + 240) = *(*v7 + 240) & 0xFFFFFFFE | v23;
  }

  if (IOParseBootArgNumber("wlan.debug.EEparams.beaconReporting", &v23, 1))
  {
    *(*v7 + 240) = *(*v7 + 240) & 0xFFFFFFFD | (2 * (v23 & 1));
  }

  if (IOParseBootArgNumber("wlan.debug.EEparams.osVersionReporting", &v23, 1))
  {
    *(*v7 + 240) = *(*v7 + 240) & 0xFFFFFFFB | (4 * (v23 & 1));
  }

  v13 = *v7;
  if (*(*v7 + 16))
  {
    v14 = CCLogStream::shouldLog();
    v13 = *v7;
    if (v14)
    {
      CCLogStream::logAlert(*(v13 + 16), "[dk] %s@%d:EnterpriseEnhancementParams: enhancedDisAssociationInfo:%u beaconReporting:%u osVersionReporting:%u!\n", "gatherKvrParameterData", 1043, *(v13 + 240) & 1, (*(v13 + 240) >> 1) & 1, (*(v13 + 240) >> 2) & 1);
      v13 = *v7;
    }
  }

  if (checkAcquireDataPropertyNotEmpty(*(v13 + 8), "wlan.fast_enterprise_nw.enabled", &v24, 0, 1uLL, "IOService"))
  {
    if (a3)
    {
      v15 = *v7;
      if (*(*v7 + 16))
      {
        v16 = CCLogStream::shouldLog();
        v15 = *v7;
        if (v16)
        {
          CCLogStream::logNotice(*(v15 + 16), "[dk] %s@%d:FastEnterpriseNwSupportEnabled is enabled \n", "gatherKvrParameterData", 1048);
          v15 = *v7;
        }
      }

      *(v15 + 225) = 1;
    }

    if (v24)
    {
      (v24->release)(v24);
      v24 = 0;
    }
  }

  else
  {
    v17 = *v7;
    if (*(*v7 + 16))
    {
      v18 = CCLogStream::shouldLog();
      v17 = *v7;
      if (v18)
      {
        CCLogStream::logNotice(*(v17 + 16), "[dk] %s@%d:FastEnterpriseNwSupportEnabled is disabled \n", "gatherKvrParameterData", 1053);
        v17 = *v7;
      }
    }

    *(v17 + 225) = 0;
  }

  *(*(this + 6) + 226) = AppleBCMWLANConfigManager::getPlatformPropertyBool(this, "wlan.voice_enterprise_nw.enabled", 1) & a3;
  v19 = *(this + 6);
  v20 = *(v19 + 16);
  if (*(v19 + 226) == 1)
  {
    if (v20 && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::gatherKvrParameterData(v7);
    }
  }

  else if (v20 && CCLogStream::shouldLog())
  {
    AppleBCMWLANConfigManager::gatherKvrParameterData(v7);
  }

  *(*(this + 6) + 227) = AppleBCMWLANConfigManager::getPlatformPropertyBool(this, "wlan.wnm.enabled", 1) & a3;
  v21 = *(this + 6);
  v22 = *(v21 + 16);
  if (*(v21 + 227) == 1)
  {
    if (v22)
    {
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANConfigManager::gatherKvrParameterData(v7);
      }
    }
  }

  else if (v22 && CCLogStream::shouldLog())
  {
    AppleBCMWLANConfigManager::gatherKvrParameterData(v7);
  }

  return 0;
}

uint64_t AppleBCMWLANConfigManager::readEnhancedRoamingProperty(AppleBCMWLANConfigManager *this, IOService *a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  v5 = this + 48;
  v4 = *(this + 6);
  v6 = *(v4 + 8);
  if (v6 != a2)
  {
    if (v6)
    {
      (v6->release)(v6);
      v4 = *v5;
    }

    *(v4 + 8) = a2;
    (*(**(*v5 + 8) + 8))(*(*v5 + 8));
  }

  *(*(this + 6) + 170) = AppleBCMWLANConfigManager::getPlatformPropertyBool(this, "bcom.roam.enabledenhanced", 1);
  v7 = *(this + 6);
  result = *(v7 + 16);
  if (*(v7 + 170) == 1)
  {
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANConfigManager::readEnhancedRoamingProperty(v5);
        return 0;
      }
    }
  }

  else if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      AppleBCMWLANConfigManager::readEnhancedRoamingProperty(v5);
      return 0;
    }
  }

  return result;
}

uint64_t acquireProperty<OSBoolean>(IOService *a1, const char *a2, OSMetaClassBase **a3, unint64_t a4, const char *a5)
{
  anObject = 0;
  result = acquirePropertyWithString(a1, a2, &anObject, a4, a5);
  if (result)
  {
    v7 = OSMetaClassBase::safeMetaCast(anObject, gOSBooleanMetaClass);
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

OSMetaClassBase *AppleBCMWLANConfigManager::populatePlatformProperties(AppleBCMWLANConfigManager *this)
{
  v47 = 0;
  v2 = this + 48;
  *(*(this + 6) + 172) = AppleBCMWLANConfigManager::getPlatformPropertyBool(this, "wlan.autocountry.enabled", 1);
  *(*v2 + 173) = AppleBCMWLANConfigManager::getPlatformPropertyBool(this, "wlan.11d.power.constraint.ignored", 0);
  *(*v2 + 174) = AppleBCMWLANConfigManager::getPlatformPropertyBool(this, "wlan.enhancedlocale.enabled", 0);
  *(*v2 + 170) = AppleBCMWLANConfigManager::getPlatformPropertyBool(this, "bcom.roam.enabledenhanced", 1);
  *(*v2 + 171) = AppleBCMWLANConfigManager::getPlatformPropertyBool(this, "wlan.tethering.enabled", 0);
  v3 = checkAcquireDataPropertyNotEmpty(*(*(this + 6) + 8), "bcom.ap.maxstas", &v47, 4uLL, 1uLL, "IOService");
  v4 = *(this + 6);
  if (v3)
  {
    *(v4 + 180) = *OSData::getBytesNoCopy(v47, 0, 4uLL);
    if (v47)
    {
      (v47->release)(v47);
      v47 = 0;
    }
  }

  else
  {
    *(v4 + 180) = 5;
  }

  v5 = checkAcquireDataPropertyNotEmpty(*(*v2 + 8), "wlan.listen.interval", &v47, 4uLL, 1uLL, "IOService");
  v6 = *v2;
  if (v5)
  {
    *(v6 + 184) = *OSData::getBytesNoCopy(v47, 0, 4uLL);
    if (v47)
    {
      (v47->release)(v47);
      v47 = 0;
    }
  }

  else
  {
    *(v6 + 184) = 20;
  }

  *(*v2 + 176) = 0;
  v7 = IOParseBootArgNumber("wlan.autoCountry", (*v2 + 172), 1);
  v8 = *v2;
  if (v7)
  {
    if (*(v8 + 16))
    {
      shouldLog = CCLogStream::shouldLog();
      v8 = *v2;
      if (shouldLog)
      {
        CCLogStream::logAlert(*(v8 + 16), "[dk] %s@%d:%s() boot-args overrides ivars->fEnabledAutoCountry to %d\n", "populatePlatformProperties", 1195, "populatePlatformProperties", *(v8 + 172));
        v8 = *v2;
      }
    }
  }

  v10 = IOParseBootArgNumber("wlan.enhancedlocale", (v8 + 174), 1);
  v11 = *v2;
  if (v10)
  {
    if (*(v11 + 16))
    {
      v12 = CCLogStream::shouldLog();
      v11 = *v2;
      if (v12)
      {
        CCLogStream::logAlert(*(v11 + 16), "[dk] %s@%d:%s() boot-args overrides ivars->fEnabledEnhancedLocale to %d\n", "populatePlatformProperties", 1200, "populatePlatformProperties", *(v11 + 174));
        v11 = *v2;
      }
    }
  }

  *(v11 + 190) = 1;
  v13 = IOParseBootArgNumber("wlan.tcpka", (*v2 + 190), 1);
  v14 = *v2;
  if (v13)
  {
    if (*(v14 + 16))
    {
      v15 = CCLogStream::shouldLog();
      v14 = *v2;
      if (v15)
      {
        CCLogStream::logAlert(*(v14 + 16), "[dk] %s@%d:%s() boot-args overrides ivars->fEnabledTCPKeepAlive to %d\n", "populatePlatformProperties", 1207, "populatePlatformProperties", *(v14 + 190));
        v14 = *v2;
      }
    }
  }

  v16 = checkAcquireDataPropertyNotEmpty(*(v14 + 8), "wlan.enhancedTrgDisc", &v47, 4uLL, 1uLL, "IOService");
  v17 = *v2;
  if (v16)
  {
    *(v17 + 200) = *OSData::getBytesNoCopy(v47, 0, 4uLL);
    if (v47)
    {
      (v47->release)(v47);
      v47 = 0;
    }
  }

  else
  {
    *(v17 + 200) = 1;
  }

  *(*(this + 6) + 230) = AppleBCMWLANConfigManager::getPlatformPropertyBool(this, "wlan.autojoin_ps.enabled", 0);
  v18 = *(this + 6);
  *(v18 + 204) = 0;
  *(v18 + 212) = 0;
  if (checkAcquireDataPropertyNotEmpty(*(*(this + 6) + 8), "wlan.tx-power-cap-ctrl", &v47, 0, 1uLL, "IOService"))
  {
    if (OSData::getBytesNoCopy(v47, 0, 0xBuLL))
    {
      BytesNoCopy = OSData::getBytesNoCopy(v47, 0, 0xBuLL);
      *(*v2 + 204) = *BytesNoCopy;
      *(*v2 + 216) = 3;
      *(*v2 + 215) = 10;
      v20 = *v2;
      if (*(*v2 + 215))
      {
        v21 = 0;
        do
        {
          *(v20 + v21 + 205) = BytesNoCopy[v21 + 1];
          ++v21;
          v20 = *v2;
        }

        while (v21 < *(*v2 + 215));
      }
    }

    else if (OSData::getBytesNoCopy(v47, 0, 6uLL))
    {
      v22 = OSData::getBytesNoCopy(v47, 0, 6uLL);
      *(*v2 + 204) = *v22;
      *(*v2 + 216) = 2;
      *(*v2 + 215) = 5;
      v23 = *v2;
      if (*(*v2 + 215))
      {
        v24 = 0;
        do
        {
          *(v23 + v24 + 205) = v22[v24 + 1];
          ++v24;
          v23 = *v2;
        }

        while (v24 < *(*v2 + 215));
      }
    }

    else if (OSData::getBytesNoCopy(v47, 0, 2uLL))
    {
      v25 = OSData::getBytesNoCopy(v47, 0, 2uLL);
      *(*v2 + 204) = *v25;
      *(*v2 + 216) = 4;
      *(*v2 + 205) = v25[1];
      *(*v2 + 215) = 1;
    }

    else if (*(*v2 + 16) && CCLogStream::shouldLog())
    {
      AppleBCMWLANConfigManager::populatePlatformProperties(this + 48);
    }

    if (v47)
    {
      (v47->release)(v47);
      v47 = 0;
    }
  }

  v26 = *v2;
  if (!*(*v2 + 204))
  {
    if (*(v26 + 16))
    {
      v27 = CCLogStream::shouldLog();
      v26 = *v2;
      if (v27)
      {
        CCLogStream::logNoticeIf(*(v26 + 16), 0x80uLL, "[dk] %s@%d: No valid TX cap power control configuration.\n", "populatePlatformProperties", 1254);
        v26 = *v2;
      }
    }

    *(v26 + 212) = 0;
    *(v26 + 204) = 0;
    v26 = *v2;
  }

  v46 = 0;
  if (acquireProperty<OSNumber>(*(v26 + 8), "wlan.psbw.enabled", &v46, 1uLL, "IOService"))
  {
    v28 = v46;
    if (v46)
    {
      *(*v2 + 322) = 1;
      (v28->release)(v28);
      v46 = 0;
    }
  }

  else
  {
    *(*v2 + 322) = 0;
  }

  *(*v2 + 331) = 0;
  if (checkAcquireDataPropertyNotEmpty(*(*v2 + 8), "wlan.dsa.power.boost", &v47, 4uLL, 1uLL, "IOService"))
  {
    v29 = (*v2 + 331);
    *v29 = *OSData::getBytesNoCopy(v47, 0, 4uLL);
    if (v47)
    {
      (v47->release)(v47);
      v47 = 0;
    }
  }

  v30 = *v2;
  if (!*(*v2 + 331))
  {
    if (*(v30 + 16))
    {
      v31 = CCLogStream::shouldLog();
      v30 = *v2;
      if (v31)
      {
        CCLogStream::logNoticeIf(*(v30 + 16), 0x80uLL, "[dk] %s@%d:DynSAR: Power boost control not enabled in plist\n", "populatePlatformProperties", 1276);
        v30 = *v2;
      }
    }

    *(v30 + 331) = 0;
    *(*v2 + 332) = 0;
    *(*v2 + 333) = 3;
    *(*v2 + 334) = 3;
    v30 = *v2;
  }

  *(v30 + 330) = 0;
  *(*v2 + 329) = 0;
  v45 = 0;
  if (acquireProperty<OSNumber>(*(*v2 + 8), "wlan.txsdb.mode", &v45, 1uLL, "IOService") && v45)
  {
    if (OSNumber::unsigned32BitValue(v45) == 1)
    {
      *(*v2 + 330) = 1;
    }

    else if (OSNumber::unsigned32BitValue(v45) == 2)
    {
      *(*v2 + 329) = 1;
    }
  }

  v44 = 0;
  if (IOParseBootArgNumber("wlan.txsdb.mode", &v44, 4))
  {
    if (v44 == 2)
    {
      *(*v2 + 330) = 0;
      *(*v2 + 329) = 1;
    }

    else if (v44 == 1)
    {
      *(*v2 + 329) = 0;
      *(*v2 + 330) = 1;
    }
  }

  v32 = *v2;
  if (*(*v2 + 16))
  {
    v33 = CCLogStream::shouldLog();
    v32 = *v2;
    if (v33)
    {
      CCLogStream::logNoticeIf(*(v32 + 16), 0x80uLL, "[dk] %s@%d:txSDB: dyn txsdb enabled %d, static txsdb enabled %d\n", "populatePlatformProperties", 1303, *(v32 + 329), *(v32 + 330));
      v32 = *v2;
    }
  }

  v43 = 0;
  *(v32 + 328) = 0;
  if (acquireProperty<OSBoolean>(*(*v2 + 8), "wlan.ant-inefficiency-mitigation.enabled", &v43, 1uLL, "IOService"))
  {
    v34 = v43;
    if (v43 == kOSBooleanTrue)
    {
      *(*v2 + 328) = 1;
    }

    if (v34)
    {
      (v34->release)(v34);
      v43 = 0;
    }
  }

  v42 = 0;
  *(*v2 + 326) = 0;
  if (acquireProperty<OSBoolean>(*(*v2 + 8), "wlan.continuous.cpms.power", &v42, 1uLL, "IOService"))
  {
    v35 = v42;
    if (v42 == kOSBooleanTrue)
    {
      *(*v2 + 326) = 1;
    }

    if (v35)
    {
      (v35->release)(v35);
      v42 = 0;
    }
  }

  v41 = 0;
  *(*v2 + 327) = 0;
  if (acquireProperty<OSBoolean>(*(*v2 + 8), "wlan.setccode.dur.poweroff", &v41, 1uLL, "IOService"))
  {
    v36 = v41;
    if (v41 == kOSBooleanTrue)
    {
      *(*v2 + 327) = 1;
    }

    if (v36)
    {
      (v36->release)(v36);
      v41 = 0;
    }
  }

  v40 = 0;
  *(*v2 + 384) = 0;
  if (acquireProperty<OSNumber>(*(*v2 + 8), "wlan.txchain.mode", &v40, 1uLL, "IOService"))
  {
    if (v40)
    {
      if (OSNumber::unsigned32BitValue(v40) > 2)
      {
        if (*(*v2 + 16) && CCLogStream::shouldLog())
        {
          AppleBCMWLANConfigManager::populatePlatformProperties(v2, &v40);
        }
      }

      else if (OSNumber::unsigned32BitValue(v40))
      {
        if (OSNumber::unsigned32BitValue(v40) == 1)
        {
          v37 = 1;
        }

        else
        {
          v37 = 2;
        }

        *(*v2 + 384) = v37;
      }

      else
      {
        *(*v2 + 384) = 0;
      }

      if (v40)
      {
        (v40->release)(v40);
        v40 = 0;
      }
    }
  }

  else
  {
    *(*v2 + 384) = 0;
  }

  v39 = 0;
  *(*v2 + 391) = 0;
  if (acquireProperty<OSBoolean>(*(*v2 + 8), "wlan.6GHz.supported", &v39, 1uLL, "IOService"))
  {
    if (v39 == kOSBooleanTrue)
    {
      *(*v2 + 391) = 1;
      if (*(*v2 + 16) && CCLogStream::shouldLog())
      {
        AppleBCMWLANConfigManager::populatePlatformProperties(v2);
      }
    }

    else if (v39 == kOSBooleanFalse)
    {
      *(*v2 + 391) = 0;
      if (*(*v2 + 16))
      {
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANConfigManager::populatePlatformProperties(v2);
        }
      }
    }

    result = v39;
    if (v39)
    {
      return (v39->release)(v39);
    }
  }

  else
  {
    result = *(*v2 + 16);
    if (result)
    {
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANConfigManager::populatePlatformProperties(v2);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANConfigManager::getPlatformPropertyBool(AppleBCMWLANConfigManager *this, const char *a2, uint64_t a3)
{
  v8 = 0;
  if (checkAcquireDataPropertyNotEmpty(*(*(this + 6) + 8), a2, &v8, 0, 1uLL, "IOService"))
  {
    v6 = *OSData::getBytesNoCopy(v8, 0, 4uLL);
    if (v6)
    {
      if (v6 == 1)
      {
        a3 = 1;
      }

      else if (*(*(this + 6) + 16) && CCLogStream::shouldLog())
      {
        CCLogStream::logAlert(*(*(this + 6) + 16), "[dk] %s@%d: unexpected %s parameter value(%lu), using default\n", "getPlatformPropertyBool", 1391, a2, v6);
      }
    }

    else
    {
      a3 = 0;
    }

    if (v8)
    {
      (v8->release)(v8);
    }
  }

  return a3;
}

uint64_t AppleBCMWLANConfigManager::readPmThresholds(uint64_t a1, int a2, uint64_t a3)
{
  v9 = 0;
  if (a2 == 1)
  {
    v4 = "wlan.pm-thresholds.wow";
  }

  else
  {
    v4 = "wlan.pm-thresholds.lpas";
  }

  v5 = a1 + 48;
  if (checkAcquireDataPropertyNotEmpty(*(*(a1 + 48) + 8), v4, &v9, 0x18uLL, 1uLL, "IOService"))
  {
    BytesNoCopy = OSData::getBytesNoCopy(v9, 0, 0x18uLL);
    v7 = BytesNoCopy[2];
    *a3 = *BytesNoCopy;
    *(a3 + 16) = v7;
    if (v9)
    {
      (v9->release)(v9);
      v9 = 0;
    }
  }

  result = *(*v5 + 16);
  if (result)
  {
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANConfigManager::readPmThresholds(v5);
    }
  }

  return result;
}