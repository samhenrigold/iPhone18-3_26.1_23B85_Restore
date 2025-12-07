uint64_t ___ZN16AppleBCMWLANCore15getWCL_BSS_INFOEP21apple80211_beacon_msg_block_invoke(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v3 = *(*(*(a1 + 32) + 8) + 24);
  if (AppleBCMWLANBSSBeacon::getBeaconMsgFromWLBSSInfo(v3, (v3 + 68), a2, *a3, *(a2 + 4)))
  {
    return 0;
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::getWCL_EXTENDED_BSS_INFO(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return AppleBCMWLANNetAdapter::getExtendedBssInfo(*(*(a1 + 72) + 5600), a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getWCL_EXTENDED_BSS_INFO(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return AppleBCMWLANNetAdapter::getExtendedBssInfo(*(*(a1 + 8) + 5600), a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::getCOUNTRY_BAND_SUPPORT(AppleBCMWLANCore *a1, uint64_t a2)
{
  v3 = *(a1 + 9);
  if (*(v3 + 6756) == 1 && AppleBCMWLANCore::is6ESupportedInCountry(a1, (v3 + 6736)))
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getCOUNTRY_BAND_SUPPORT();
      }
    }

    v5 = 7;
  }

  else
  {
    v5 = 3;
  }

  *(a2 + 4) = v5;
  return 0;
}

uint64_t AppleBCMWLANCore::handleGetChanSpecs(void *a1, uint64_t a2, uint64_t a3, unsigned int **a4)
{
  if (a3)
  {
    result = (*(*a1 + 1952))(a1, a2);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleGetChanSpecs();
      }
    }

    return result;
  }

  v6 = *a4;
  v7 = **a4;
  if (v7 >= 0x17C)
  {
    v8 = 380;
  }

  else
  {
    v8 = v7;
  }

  if ((*(*a1 + 1952))(a1, a2) && ((*(*a1 + 1952))(a1), CCLogStream::shouldLog()))
  {
    AppleBCMWLANCore::handleGetChanSpecs();
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else if (!v7)
  {
    goto LABEL_13;
  }

  v9 = (v6 + 1);
  v10 = 19918;
  v11 = v8;
  do
  {
    v12 = *v9++;
    *(a1[9] + v10) = v12;
    v10 += 2;
    --v11;
  }

  while (v11);
LABEL_13:
  *(a1[9] + 19916) = v8;
  result = AppleBCMWLANCore::adjustBeaconListPerNewCountryCode(a1);
  v13 = a1[9];
  if (*(v13 + 6752))
  {
    atomic_fetch_add_explicit((v13 + 6752), 1u, memory_order_relaxed);
  }

  else
  {
    strlcpy((v13 + 6748), (v13 + 6744), 4uLL);
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleGetChanSpecs();
      }
    }

    v14 = *(**(a1[9] + 6240) + 56);

    return v14();
  }

  return result;
}

uint64_t AppleBCMWLANCore::get6GTxPowerFromFW(unint64_t this, uint64_t a2, uint64_t a3)
{
  if (a3 < 2)
  {
    v11 = 786433;
    v12 = 1;
    WORD2(v12) = a2;
    v6 = &txPowerLPIBuffer;
    HIBYTE(v12) = a3;
    if (a3 == 1)
    {
      v6 = &txPowerVLPBuffer;
    }

    v10[0] = v6;
    v10[1] = 0x10C000C010CLL;
    v7 = *(*(this + 72) + 5408);
    v9[0] = &v11;
    v9[1] = 12;
    result = AppleBCMWLANCommander::runIOVarGet(v7, "chanspec_txpwr_max", v9, v10, 0);
    if (result)
    {
      v8 = result;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::get6GTxPowerFromFW(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v8, a3);
        }
      }

      return 4294967294;
    }
  }

  else
  {
    if ((*(*this + 1952))(this, a2))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::get6GTxPowerFromFW();
      }
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void *AppleBCMWLANCore::handleGetCountryListAsyncCallBack(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = result;
  if (a3)
  {
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v4 + 1952))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleGetCountryListAsyncCallBack();
      }
    }
  }

  else
  {
    v5 = *a4;
    if (*a4)
    {
      v6 = *(v5 + 12);
      if (v6 >= 0x100)
      {
        v7 = 256;
      }

      else
      {
        v7 = *(v5 + 12);
      }

      *(result[9] + 6760) = v7;
      if (v6)
      {
        v8 = 0;
        v9 = (v5 + 16);
        do
        {
          v10 = *v9++;
          *(result[9] + 4 * v8++ + 6764) = v10;
        }

        while (v6 > v8);
      }
    }

    else
    {
      result = (*(*result + 1952))(result, a2);
      if (result)
      {
        (*(*v4 + 1952))(v4);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::handleGetCountryListAsyncCallBack();
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleGet6ECountryListAsyncCallBack(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3)
  {
    result = (*(*a1 + 1952))(a1, a2);
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleGet6ECountryListAsyncCallBack();
      }
    }
  }

  else
  {
    v6 = *a4;
    if (*a4)
    {
      v7 = *(v6 + 12);
      if (v7 >= 0x100)
      {
        v8 = 256;
      }

      else
      {
        v8 = *(v6 + 12);
      }

      result = (*(*a1 + 1952))(a1, a2);
      if (result)
      {
        (*(*a1 + 1952))(a1);
        result = CCLogStream::shouldLog();
        if (result)
        {
          result = AppleBCMWLANCore::handleGet6ECountryListAsyncCallBack();
        }
      }

      *(a1[9] + 7788) = v8;
      if (v7)
      {
        v9 = 0;
        v10 = 0;
        v11 = v6 + 16;
        do
        {
          *(a1[9] + 4 * v10 + 7792) = *(v11 + 4 * v9);
          result = (*(*a1 + 1952))(a1);
          if (result)
          {
            (*(*a1 + 1952))(a1);
            result = CCLogStream::shouldLog();
            if (result)
            {
              v12 = (*(*a1 + 1952))(a1);
              result = CCLogStream::logAlert(v12, "[dk] %s@%d:WiFiCC : Country %3d %s\n", "handleGet6ECountryListAsyncCallBack", 46633, v9, (v11 + 4 * v9));
            }
          }

          v9 = ++v10;
        }

        while (v7 > v10);
      }
    }

    else
    {
      result = (*(*a1 + 1952))(a1, a2);
      if (result)
      {
        (*(*a1 + 1952))(a1);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::handleGet6ECountryListAsyncCallBack();
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::getUCMCoexProfileV1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 2) = *(a3 + 6);
  *(a2 + 3) = *(a3 + 7);
  *(a2 + 4) = *(a3 + 8);
  *(a2 + 5) = *(a3 + 9);
  *(a2 + 6) = *(a3 + 10);
  *(a2 + 7) = *(a3 + 11);
  *(a2 + 8) = *(a3 + 12);
  *(a2 + 9) = *(a3 + 13);
  *(a2 + 10) = *(a3 + 14);
  *(a2 + 11) = *(a3 + 15);
  *(a2 + 12) = *(a3 + 16);
  *(a2 + 13) = *(a3 + 17);
  *(a2 + 14) = *(a3 + 18);
  *(a2 + 15) = *(a3 + 19);
  *(a2 + 16) = *(a3 + 20);
  *(a2 + 17) = *(a3 + 21);
  *(a2 + 18) = *(a3 + 22);
  if (*(a3 + 7))
  {
    v3 = 0;
    v4 = a2 + 20;
    v5 = (a3 + 27);
    do
    {
      *v4 = 0;
      *v4 = *(v5 - 1);
      v6 = *v5;
      v5 += 2;
      *(v4 + 3) = v6;
      ++v3;
      v4 += 7;
    }

    while (v3 < *(a3 + 7));
  }

  return 0;
}

uint64_t AppleBCMWLANCore::getUCMCoexProfileV2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 2) = *(a3 + 6);
  *(a2 + 3) = *(a3 + 7);
  *(a2 + 4) = *(a3 + 8);
  *(a2 + 5) = *(a3 + 9);
  *(a2 + 6) = *(a3 + 10);
  *(a2 + 7) = *(a3 + 11);
  *(a2 + 8) = *(a3 + 12);
  *(a2 + 9) = *(a3 + 13);
  *(a2 + 10) = *(a3 + 14);
  *(a2 + 11) = *(a3 + 15);
  *(a2 + 12) = *(a3 + 16);
  *(a2 + 13) = *(a3 + 17);
  *(a2 + 14) = *(a3 + 18);
  *(a2 + 15) = *(a3 + 19);
  *(a2 + 16) = *(a3 + 20);
  *(a2 + 17) = *(a3 + 21);
  *(a2 + 18) = *(a3 + 22);
  *(a2 + 19) = *(a3 + 23);
  if (*(a3 + 7))
  {
    v3 = 0;
    v4 = a2 + 20;
    v5 = (a3 + 27);
    do
    {
      *v4 = 0;
      *v4 = *(v5 - 1);
      v6 = *v5;
      v5 += 2;
      *(v4 + 3) = v6;
      ++v3;
      v4 += 7;
    }

    while (v3 < *(a3 + 7));
  }

  return 0;
}

uint64_t AppleBCMWLANCore::getUCMCoexProfileV3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  *(a2 + 2) = *(a3 + 6);
  *(a2 + 3) = *(a3 + 7);
  *(a2 + 4) = *(a3 + 8);
  *(a2 + 5) = *(a3 + 9);
  *(a2 + 6) = *(a3 + 10);
  *(a2 + 7) = *(a3 + 11);
  *(a2 + 8) = *(a3 + 12);
  *(a2 + 9) = *(a3 + 13);
  *(a2 + 10) = *(a3 + 14);
  *(a2 + 11) = *(a3 + 15);
  *(a2 + 12) = *(a3 + 16);
  *(a2 + 13) = *(a3 + 17);
  *(a2 + 14) = *(a3 + 18);
  *(a2 + 15) = *(a3 + 19);
  *(a2 + 16) = *(a3 + 20);
  *(a2 + 17) = *(a3 + 21);
  *(a2 + 18) = *(a3 + 22);
  *(a2 + 19) = *(a3 + 23);
  if (*(a3 + 7))
  {
    v3 = 0;
    v4 = a3 + 31;
    v5 = a2 + 26;
    do
    {
      *(v5 - 6) = 0;
      *(v5 - 5) = *(v4 - 5);
      *(v5 - 1) = *(v4 - 1);
      ++v3;
      v4 += 8;
      v5 += 7;
    }

    while (v3 < *(a3 + 7));
  }

  return 0;
}

uint64_t AppleBCMWLANCore::getGUARD_INTERVAL(void *a1, uint64_t a2)
{
  v10 = 0;
  if (!a2)
  {
    return 3758097090;
  }

  v9[0] = &v10;
  v9[1] = 0x400040004;
  v4 = AppleBCMWLANCommander::runIOVarGet(*(a1[9] + 5408), "nrate", &kNoTxPayload, v9, 0);
  v5 = v4;
  if (v4 == -536870173 || v4 == 0)
  {
    if ((v10 & 0x7000000) == 0x2000000)
    {
      if ((v10 & 0x800000) != 0)
      {
        v7 = 400;
      }

      else
      {
        v7 = 800;
      }
    }

    else if ((v10 & 0x7000000) == 0x3000000 && ((v10 >> 10) & 3) > 1)
    {
      if (((v10 >> 10) & 3) == 2)
      {
        v7 = 1600;
      }

      else
      {
        v7 = 3200;
      }
    }

    else
    {
      v7 = 800;
    }

    *(a2 + 4) = v7;
  }

  else if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::getGUARD_INTERVAL();
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::getChanSpec(uint64_t a1, int a2, int a3, int *a4)
{
  if (a2 && (v6 = *(*(a1 + 72) + 19916), *(*(a1 + 72) + 19916)))
  {
    v9 = v6 + 1;
    v10 = 2 * v6 + 19916;
    while (1)
    {
      AppleChannelSpec = AppleBCMWLANChanSpec::getAppleChannelSpec(*(*(a1 + 72) + 17744), *(*(a1 + 72) + v10));
      if (a3 == (AppleChannelSpec & 0xC000) >> 14)
      {
        v12 = AppleChannelSpec;
        if (ChanSpecGetPrimaryChannel() == a2)
        {
          v13 = (v12 >> 11) & 7;
          if (*a4 >= v13)
          {
            break;
          }
        }
      }

      --v9;
      v10 -= 2;
      if (v9 <= 1)
      {
        goto LABEL_8;
      }
    }

    *a4 = v13;
    return *(*(a1 + 72) + v10);
  }

  else
  {
LABEL_8:
    result = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t AppleBCMWLANCore::getPOWER_DEBUG_INFO(AppleBCMWLANCore *a1, uint64_t a2)
{
  *(a2 + 4) = 0;
  *(a2 + 8) = 0;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[0] = v4;
  v27[1] = v4;
  if (!AppleBCMWLANCore::isRejectingCommands(a1))
  {
    BYTE4(v27[0]) = 0;
    LODWORD(v27[0]) = 13;
    if (AppleBCMWLANCore::getPowerStats(a1, a2, v27))
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getPOWER_DEBUG_INFO();
        }
      }
    }
  }

  memcpy((a2 + 704), (*(a1 + 9) + 11344), 0x2C0uLL);
  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 76) && (*(*(a1 + 9) + 18484) & 1) == 0)
  {
    memset(v26, 170, sizeof(v26));
    LODWORD(v27[0]) = 32;
    AppleBCMWLANCore::getPowerStats(a1, v26, v27);
    v5 = v26[7];
    v6 = HIDWORD(v26[50]);
    v7 = v26[60];
    *(a2 + 1408) = v26[0];
    *(a2 + 1412) = v5;
    v8 = *(&v26[11] + 4);
    *(a2 + 1416) = *(&v26[9] + 4);
    *(a2 + 1432) = v8;
    *(a2 + 1448) = *(&v26[13] + 4);
    *(a2 + 1464) = v26[42];
    *(a2 + 1476) = v26[59];
    *(a2 + 1484) = v7;
    *(a2 + 1472) = v6;
    v9 = *(a1 + 9);
    v10 = *(v9 + 12080);
    v11 = *(v9 + 12064);
    *(a2 + 1512) = *(v9 + 12048);
    *(a2 + 1528) = v11;
    v12 = *(v9 + 12096);
    v13 = *(v9 + 12112);
    v14 = *(v9 + 12128);
    *(a2 + 1608) = *(v9 + 12144);
    *(a2 + 1576) = v13;
    *(a2 + 1592) = v14;
    *(a2 + 1544) = v10;
    *(a2 + 1560) = v12;
  }

  AppleBCMWLANCore::getInactivityPowerStats(a1, (a2 + 1616));
  v15 = *(a1 + 9);
  v16 = v15[2237];
  v17 = v15[2238];
  *(a2 + 1688) = *(v15 + 35820);
  *(a2 + 1660) = v16;
  *(a2 + 1676) = v17;
  v18 = *(*(a1 + 9) + 35880);
  v20 = *(*(a1 + 9) + 35852);
  v19 = *(*(a1 + 9) + 35868);
  *(a2 + 1704) = *(*(a1 + 9) + 35836);
  *(a2 + 1720) = v20;
  *(a2 + 1736) = v19;
  *(a2 + 1748) = v18;
  v21 = *(a1 + 9);
  v22 = v21[2253];
  v23 = v21[2251];
  v24 = v21[2252];
  *(a2 + 1764) = v21[2250];
  *(a2 + 1780) = v23;
  *(a2 + 1796) = v24;
  *(a2 + 1812) = v22;
  return 0;
}

AppleBCMWLANCore *AppleBCMWLANCore::getInactivityPowerStats(AppleBCMWLANCore *this, _DWORD *a2)
{
  v2 = *(*(this + 9) + 18200);
  if (v2)
  {
    v4 = this;
    *a2 = v2;
    v5 = *(this + 9);
    v6 = *(v5 + 18208);
    v7 = v6 ? *(v5 + 18200) - v6 : 0;
    a2[1] = v7;
    a2[4] = *(*(this + 9) + 18212);
    a2[3] = *(*(this + 9) + 18216);
    a2[5] = *(*(this + 9) + 18224) - *(*(this + 9) + 18212);
    a2[2] = *(*(this + 9) + 18224);
    this = AppleBCMWLANCore::featureFlagIsBitSet(this, 76);
    if (this)
    {
      v8 = *(v4 + 9);
      v9 = *(v8 + 18228);
      if (v9)
      {
        v10 = *(v8 + 18200) - v9;
      }

      else
      {
        v10 = 0;
      }

      a2[6] = v10;
      a2[9] = *(*(v4 + 9) + 18244) - *(*(v4 + 9) + 18240);
      a2[8] = *(*(v4 + 9) + 18236);
      a2[10] = *(*(v4 + 9) + 18240);
      a2[7] = *(*(v4 + 9) + 18244);
    }
  }

  return this;
}

uint64_t AppleBCMWLANCore::collectOPSEBTStatus(AppleBCMWLANCore *this)
{
  if (AppleBCMWLANCore::checkForOppPowerSaveSupport(this))
  {
    v15 = xmmword_1003B0158;
    v16 = unk_1003B0168;
    v17 = xmmword_1003B0178;
    v18 = unk_1003B0188;
    v13 = xmmword_1003B0138;
    v14 = unk_1003B0148;
    OPSStatus = AppleBCMWLANPowerManager::getOPSStatus(*(*(this + 9) + 5520), &v13);
    if (OPSStatus)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::collectOPSEBTStatus();
        }
      }
    }

    else
    {
      v3 = *(this + 9);
      v4 = v16;
      v6 = v17;
      v5 = v18;
      *(v3 + 88) = v15;
      *(v3 + 104) = v4;
      *(v3 + 120) = v6;
      *(v3 + 136) = v5;
      v7 = v14;
      *(v3 + 56) = v13;
      *(v3 + 72) = v7;
    }
  }

  else
  {
    OPSStatus = 0;
  }

  if (AppleBCMWLANCore::checkForEarlyBeconTerminationSupport(this))
  {
    AppleBCMWLANCommander::getMaxCmdRxPayload(*(*(this + 9) + 5408));
    v8 = IOMallocZeroData();
    if (v8)
    {
      v9 = v8;
      OPSStatus = AppleBCMWLANPowerManager::getEBTStatus(*(*(this + 9) + 5520), v8);
      if (OPSStatus)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::collectOPSEBTStatus();
          }
        }
      }

      else
      {
        v10 = *(this + 9);
        v11 = *(v9 + 16);
        *(v10 + 176) = *(v9 + 24);
        *(v10 + 168) = v11;
      }

      IOFreeData();
    }

    else
    {
      return 3758097085;
    }
  }

  return OPSStatus;
}

uint64_t AppleBCMWLANCore::checkForOppPowerSaveSupport(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(this, 56);
  if (result)
  {
    v3 = *(*(this + 9) + 5464);

    return AppleBCMWLANConfigManager::isOPSSupportedInDriver(v3);
  }

  return result;
}

uint64_t AppleBCMWLANCore::getActivePortsFromNetworkStack(void *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::getActivePortsFromNetworkStack();
    }
  }

  v3 = this + 9;
  v2 = this[9];
  if (*(v2 + 11288))
  {
    v4 = (v2 + 10044);
    v4[14] = 0u;
    v4[15] = 0u;
    v4[12] = 0u;
    v4[13] = 0u;
    v4[10] = 0u;
    v4[11] = 0u;
    v4[8] = 0u;
    v4[9] = 0u;
    v4[6] = 0u;
    v4[7] = 0u;
    v4[4] = 0u;
    v4[5] = 0u;
    v4[2] = 0u;
    v4[3] = 0u;
    *v4 = 0u;
    v4[1] = 0u;
    *(*v3 + 10300) = 0;
    v5 = IOMallocZeroData();
    if (v5)
    {
      PacketFilterData = IO80211InfraInterface::getPacketFilterData();
      if (PacketFilterData)
      {
        v7 = PacketFilterData;
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::getActivePortsFromNetworkStack();
          }
        }
      }

      else
      {
        v8 = *(v5 + 264);
        if (v8 >= 0x80)
        {
          LOWORD(v8) = 128;
        }

        *(*v3 + 10300) = v8;
        v9 = *v3;
        if (*(*v3 + 10300))
        {
          v10 = 0;
          do
          {
            *(v9 + 2 * v10 + 10044) = *(v5 + 266 + 2 * v10);
            ++v10;
            v9 = *v3;
          }

          while (v10 < *(*v3 + 10300));
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::getActivePortsFromNetworkStack();
          }
        }

        if (!*(*v3 + 10300))
        {
          goto LABEL_50;
        }

        v11 = 0;
        v12 = 0;
        do
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              v13 = (*(*this + 1952))(this);
              v14 = this[9] + 10044;
              CCLogStream::logAlert(v13, "[dk] %s@%d:%s: Active port - %d, %d, %d, %d, %d, %d, %d, %d\n", "getActivePortsFromNetworkStack", 48310, "getActivePortsFromNetworkStack", *(v14 + 2 * v12), *(v14 + 2 * (v11 | 1u)), *(v14 + 2 * (v11 | 2u)), *(v14 + 2 * (v11 | 3u)), *(v14 + 2 * (v11 | 4u)), *(v14 + 2 * (v11 | 5u)), *(v14 + 2 * (v11 | 6u)), *(v14 + 2 * (v11 | 7u)));
            }
          }

          v12 += 8;
          v11 = v12;
        }

        while (v12 < *(*v3 + 10300));
        if (*(*v3 + 10300))
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::getActivePortsFromNetworkStack();
            }
          }

          v7 = 0;
        }

        else
        {
LABEL_50:
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::getActivePortsFromNetworkStack();
            }
          }

          v7 = 3758097084;
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::getActivePortsFromNetworkStack();
            }
          }
        }
      }
    }

    else if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      v7 = 3758097085;
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getActivePortsFromNetworkStack();
      }
    }

    else
    {
      v7 = 3758097085;
    }

    IOFreeData();
  }

  else
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getActivePortsFromNetworkStack();
      }
    }

    v7 = 3758097084;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getActivePortsFromNetworkStack();
      }
    }
  }

  return v7;
}

uint64_t AppleBCMWLANCore::configureActivePortsInToChip(IOService *this, int a2)
{
  v46 = 1;
  v45 = 0;
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureActivePortsInToChip();
    }
  }

  IOParseBootArgNumber("wlan.enable.wol-ports", &v46, 1);
  IOParseBootArgNumber("wlan.enable.wol-prune", &v45, 1);
  v4 = IOMallocZeroData();
  if (!v4)
  {
    return 3758097085;
  }

  v5 = v4;
  v40 = a2;
  *v4 = 0;
  v6 = IOMallocZeroData();
  v7 = v6;
  if (v6)
  {
    strcpy(v6, "Active Ports:");
    v8 = 13;
  }

  else
  {
    v8 = 0;
  }

  v10 = this[1].OSObject::OSObjectInterface::__vftable;
  if (!WORD2(v10[643].free))
  {
    v12 = 0;
    if (!v6)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v11 = 0;
  v12 = 0;
  v13 = 10044;
  do
  {
    v14 = *(&v10->init + v13);
    if (v45 == 1)
    {
      switch(v14)
      {
        case 0:
          goto LABEL_30;
        case 7:
          v15 = 0;
          if (!v7 || v8 > 0x3FE)
          {
            goto LABEL_28;
          }

          v16 = &v7[v8];
          v17 = 1024;
          v18 = 1024 - v8;
          v19 = 7;
          goto LABEL_27;
        case 9:
          v15 = 0;
          if (!v7 || v8 > 0x3FE)
          {
            goto LABEL_28;
          }

          v16 = &v7[v8];
          v17 = 1024;
          v18 = 1024 - v8;
          v19 = 9;
LABEL_27:
          v15 = snprintf(v16, v18, "(*%u) ", v19);
          if (v15 > 0x3FF)
          {
LABEL_29:
            v8 += v17;
            goto LABEL_30;
          }

LABEL_28:
          v17 = v15;
          goto LABEL_29;
      }
    }

    else if (!v14)
    {
      goto LABEL_30;
    }

    v20 = 0;
    *&v5[2 * v12 + 4] = v14;
    if (!v7 || v8 > 0x3FE || (v21 = 1024, v20 = snprintf(&v7[v8], 1024 - v8, "%u ", v14), v20 <= 0x3FF))
    {
      v21 = v20;
    }

    v8 += v21;
    ++v12;
LABEL_30:
    ++v11;
    v10 = this[1].OSObject::OSObjectInterface::__vftable;
    v13 += 2;
  }

  while (v11 < WORD2(v10[643].free));
  if (!v7)
  {
LABEL_36:
    v22 = v5;
    if (v7)
    {
      goto LABEL_37;
    }

    goto LABEL_41;
  }

LABEL_34:
  if (v8 > 0x3FE)
  {
    goto LABEL_36;
  }

  snprintf(&v7[v8], 1024 - v8, "\n");
  v10 = this[1].OSObject::OSObjectInterface::__vftable;
  v22 = v5;
LABEL_37:
  if (v10[890].free && CCLogStream::shouldLog())
  {
    CCLogStream::log(this[1].OSObject::OSObjectInterface::__vftable[890].free, 5, "%s", v7);
  }

  *v7 = 0;
  v10 = this[1].OSObject::OSObjectInterface::__vftable;
LABEL_41:
  if (WORD2(v10[643].free) && v46 == 1)
  {
    if (v7)
    {
      strcpy(v7, " Additional WoL packet filter UDP/TCP ports: ");
      v23 = v22 + 4;
      v24 = v12 + 1;
      *&v22[2 * v12 + 4] = 7;
      v25 = snprintf(v7 + 45, 0x3D3uLL, "%u ", 7);
      if (v25 >= 0x400)
      {
        v27 = 0;
        v12 += 2;
        *&v23[2 * v24] = 9;
        v26 = 1069;
        goto LABEL_49;
      }

      v26 = v25 + 45;
      v12 += 2;
      *&v23[2 * v24] = 9;
      if (v25 <= 0x3D1)
      {
        v27 = snprintf(&v7[v26], 979 - v25, "%u ", 9);
        if (v27 <= 0x3FF)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v27 = 0;
LABEL_49:
        if (v27 + v26 <= 0x3FE)
        {
          snprintf(&v7[v27 + v26], 1024 - (v27 + v26), "\n");
        }
      }

      if (this[1].OSObject::OSObjectInterface::__vftable[890].free && CCLogStream::shouldLog())
      {
        CCLogStream::log(this[1].OSObject::OSObjectInterface::__vftable[890].free, 5, "%s", v7);
      }

      *v7 = 0;
    }

    else
    {
      *&v22[2 * v12 + 4] = 7;
      v28 = v12 + 1;
      v12 += 2;
      *&v22[2 * v28 + 4] = 9;
    }
  }

  *(v22 + 1) = v12;
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      v38 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      CCLogStream::logAlert(v38, "[dk] %s@%d: tag[0x%08x] version[%u] enableWoLPorts[%u] pruneWoLPorts[%u], fActivePortCnt[%u] count[%u] portListlen[%u]\n", "configureActivePortsInToChip", 48407, v40, *v22, v46, v45, WORD2(this[1].OSObject::OSObjectInterface::__vftable[643].free), v12, (2 * v12 + 4));
    }
  }

  if (WORD2(this[1].OSObject::OSObjectInterface::__vftable[643].free))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        v39 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        CCLogStream::logAlert(v39, "[dk] %s@%d: Setting last valid packet filter ports: tag[0x%08x] version[%u] enableWoLPorts[%u] pruneWoLPorts[%u], fActivePortCnt[%u] count[%u] portListlen[%u]\n", "configureActivePortsInToChip", 48418, v40, *v22, v46, v45, WORD2(this[1].OSObject::OSObjectInterface::__vftable[643].free), v12, (2 * v12 + 4));
      }
    }

    removePropertyHelper(this, "Last valid: pkt_filter_ports");
    v29 = OSData::withBytes(v22, (2 * v12 + 4));
    setPropertyHelper(this, "Last valid: pkt_filter_ports", v29);
    if (v29)
    {
      (v29->release)(v29);
    }
  }

  v30 = (this->OSObject::OSMetaClassBase::__vftable[1].Dispatch)(this);
  if ((*(*v30 + 136))(v30))
  {
    v42 = this;
    v43 = AppleBCMWLANCore::handlePktFilterPortsAsyncCallBack;
    v44 = 0;
    init = this[1].OSObject::OSObjectInterface::__vftable[338].init;
    if (2 * v12 == 0xFFFC)
    {
      v32 = 0;
    }

    else
    {
      v32 = v22;
    }

    v41[0] = v32;
    v41[1] = (2 * v12 + 4);
    v33 = AppleBCMWLANCommander::sendIOVarSet(init, "pkt_filter_ports", v41, kNoRxExpected, &v42, 0);
  }

  else
  {
    v34 = this[1].OSObject::OSObjectInterface::__vftable[338].init;
    if (2 * v12 == 0xFFFC)
    {
      v35 = 0;
    }

    else
    {
      v35 = v22;
    }

    v42 = v35;
    v43 = (2 * v12 + 4);
    v33 = AppleBCMWLANCommander::runIOVarSet(v34, "pkt_filter_ports", &v42, 0, 0);
  }

  v9 = v33;
  v36 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  if (v9)
  {
    if (v36)
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureActivePortsInToChip();
        if (!v7)
        {
          goto LABEL_83;
        }

LABEL_82:
        IOFreeData();
        goto LABEL_83;
      }
    }

LABEL_81:
    if (!v7)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

  if (!v36)
  {
    goto LABEL_81;
  }

  (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  if (!CCLogStream::shouldLog())
  {
    goto LABEL_81;
  }

  AppleBCMWLANCore::configureActivePortsInToChip();
  if (v7)
  {
    goto LABEL_82;
  }

LABEL_83:
  IOFreeData();
  return v9;
}

uint64_t AppleBCMWLANCore::configureMaxPktFilter(void *this)
{
  v6 = 16;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureMaxPktFilter();
    }
  }

  v2 = *(this[9] + 5408);
  v5[0] = &v6;
  v5[1] = 4;
  v3 = AppleBCMWLANCommander::runIOVarSet(v2, "pkt_filter_max", v5, 0, 0);
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureMaxPktFilter();
    }
  }

  return v3;
}

uint64_t AppleBCMWLANCore::configureComplexFilters(uint64_t this, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureComplexFilters();
    }
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  memset(v24, 0, sizeof(v24));
  v22 = 0u;
  v23 = 0u;
  if (a2 == 107)
  {
    LODWORD(v22) = v3 + 107;
    DWORD1(v22) = 2;
    LODWORD(v23) = 655384;
    WORD2(v23) = 16;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureComplexFilters(this, v6, v3);
      }
    }

    v10 = *(*(this + 72) + 16 * v3 + 9524);
    *(&v23 + 1) = -1;
    *&v24[0] = -1;
    *(v24 + 8) = v10;
    *(&v24[1] + 1) = 0x10001000A0006;
    LOWORD(v25) = 15103;
    v9 = 66;
    v8 = 54;
    goto LABEL_11;
  }

  if (a2 == 102)
  {
    *&v22 = 0x200000066;
    LODWORD(v23) = 524304;
    WORD2(v23) = 4;
    v7 = *(this + 72);
    DWORD2(v23) = -1;
    HIDWORD(v23) = *(v7 + 9484);
    *&v24[0] = 0x1000100080009;
    WORD4(v24[0]) = 511;
    v8 = 30;
    v9 = 42;
LABEL_11:
    HIWORD(v22) = v8;
    WORD6(v22) = 2;
    v11 = this + 72;
    v12 = *(*(this + 72) + 5408);
    v13 = &v22;
    goto LABEL_13;
  }

  v9 = 0;
  v13 = 0;
  v11 = this + 72;
  v12 = *(*(this + 72) + 5408);
LABEL_13:
  v21[0] = v13;
  v21[1] = v9;
  v14 = AppleBCMWLANCommander::runIOVarSet(v12, "pkt_filter_add", v21, 0, 0);
  if (v14)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureComplexFilters(this, v6, a2, v14);
      }
    }
  }

  else
  {
    if (a2 == 107)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureComplexFilters();
        }
      }

      ++*(*v11 + 10040);
      *(*v11 + 16 * v3 + 9780) = *(*v11 + 16 * v3 + 9524);
    }

    else if (a2 == 102)
    {
      v15 = *(this + 72);
      v16 = *(v15 + 9484);
      v17 = *(v15 + 9488);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v19 = (*(*this + 1952))(this);
          CCLogStream::logAlert(v19, "[dk] %s@%d: Added complex filter: ipv4 filterType[%u] index[%u], addr count[%u], wow ipv4[%u.%u.%u.%u], prog ipv4[%u.%u.%u.%u]\n", "configureComplexFilters", 48631, 102, v3, *(*(this + 72) + 10041), v16, BYTE1(v16), BYTE2(v16), HIBYTE(v16), v17, BYTE1(v17), BYTE2(v17), HIBYTE(v17));
        }
      }

      *(*v11 + 9488) = *(*v11 + 9484);
      ++*(*v11 + 10041);
    }

    else if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v20 = (*(*this + 1952))(this);
        CCLogStream::logAlert(v20, "[dk] %s@%d: Added complex filter: Unknown filterType[%u] index[%u]\n", "configureComplexFilters", 48646, a2, v3);
      }
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureComplexFilters();
      }
    }
  }

  return v14;
}

uint64_t AppleBCMWLANCore::configureEapolFilter(void *this)
{
  memset(bytes, 170, sizeof(bytes));
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureEapolFilter();
    }
  }

  if (*(this[9] + 19784))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureEapolFilter();
      }
    }

    bytes[0] = 101;
    bytes[1] = 0xC00000000;
    bytes[2] = 0x8E88FFFF00000002;
    v2 = *(this[9] + 5408);
    keys[0] = bytes;
    keys[1] = 24;
    v3 = AppleBCMWLANCommander::runIOVarSet(v2, "pkt_filter_add", keys, 0, 0);
    if (v3)
    {
      v4 = v3;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureEapolFilter();
        }
      }

      keys[0] = OSString::withCString("wl_pkt_filter_t.bin");
      values = OSData::withBytes(bytes, 0x38uLL);
      v5 = *(this[9] + 5536);
      v6 = OSDictionary::withObjects(&values, keys, 1u, 0);
      v7 = (*(*this + 112))(this, v4);
      CCFaultReporter::reportFault(v5, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0xBE32u, "configureEapolFilter", v6, -469792765, "status=%s", v7);
      AppleBCMWLANUtil::releaseOSObjectArray(keys, &values, 1);
      return v4;
    }

    ++*(this[9] + 10043);
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureEapolFilter();
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::configureMagicPktFilter(uint64_t this, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v7 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this, a2))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureMagicPktFilter();
    }
  }

  v24 = -1431655766;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[3] = v8;
  v23[4] = v8;
  v23[1] = v8;
  v23[2] = v8;
  v23[0] = v8;
  v9 = this + 72;
  MagicPatternData = IO80211InfraInterface::getMagicPatternData();
  if (MagicPatternData)
  {
    v11 = MagicPatternData;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureMagicPktFilter();
      }
    }

    return v11;
  }

  memset(&bytes[1], 0, 52);
  bytes[0] = v5 + 104;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureMagicPktFilter();
    }
  }

  v12 = v23 + 42 * v5;
  v13 = v12[4];
  bytes[4] = v12[4];
  memcpy(&bytes[5], v12 + 23, v13);
  memcpy(&bytes[5] + v13, v12 + 5, v13);
  if (a4)
  {
    v14 = 14;
  }

  else if (v5 > 1)
  {
    if (v5 > 7 || *(*v9 + 19848) < 1)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureMagicPktFilter(this, v7, this + 72, v5);
        }
      }

      goto LABEL_16;
    }

    v14 = *(*v9 + 4 * (v5 - 2) + 10312);
  }

  else
  {
    v14 = *(v12 + 1);
  }

  bytes[3] = v14;
LABEL_16:
  v15 = *(*v9 + 5408);
  keys[0] = bytes;
  keys[1] = 56;
  v16 = AppleBCMWLANCommander::runIOVarSet(v15, "pkt_filter_add", keys, 0, 0);
  if (v16)
  {
    v11 = v16;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureMagicPktFilter();
      }
    }

    keys[0] = OSString::withCString("wl_pkt_filter_t.bin");
    values = OSData::withBytes(bytes, 0x38uLL);
    v17 = *(*(this + 72) + 5536);
    v18 = OSDictionary::withObjects(&values, keys, 1u, 0);
    v19 = (*(*this + 112))(this, v11);
    CCFaultReporter::reportFault(v17, 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0xBE7Eu, "configureMagicPktFilter", v18, -469792765, "status=%s", v19);
    AppleBCMWLANUtil::releaseOSObjectArray(keys, &values, 1);
  }

  else
  {
    ++*(*(this + 72) + 10042);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureMagicPktFilter();
      }
    }

    return 0;
  }

  return v11;
}

uint64_t AppleBCMWLANCore::configureLegacyFilters(void *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureLegacyFilters();
    }
  }

  v10 = -1431655766;
  v7 = xmmword_1003ADC10;
  v2 = this[9];
  v8 = 0xFFFFFFFF00000004;
  v9 = *(v2 + 9484);
  v3 = *(v2 + 5408);
  v6[0] = &v7;
  v6[1] = 28;
  v4 = AppleBCMWLANCommander::runIOVarSet(v3, "pkt_filter_add", v6, 0, 0);
  if (v4)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureLegacyFilters();
      }
    }
  }

  else
  {
    ++*(this[9] + 10041);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureLegacyFilters();
      }
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureLegacyFilters();
      }
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::enablePacketFilters(void *this, int a2)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::enablePacketFilters();
    }
  }

  if (IO80211BssManager::isAssociated(*(this[9] + 5432)))
  {
    v8[0] = a2;
    v8[1] = 1;
    v4 = *(this[9] + 5408);
    v7[0] = v8;
    v7[1] = 8;
    v5 = AppleBCMWLANCommander::runIOVarSet(v4, "pkt_filter_enable", v7, 0, 0);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::enablePacketFilters();
      }
    }
  }

  else
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::enablePacketFilters();
      }
    }

    return 3758096385;
  }

  return v5;
}

uint64_t AppleBCMWLANCore::disablePacketFilters(void *this, int a2)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::disablePacketFilters();
    }
  }

  v8[0] = a2;
  v8[1] = 0;
  v4 = *(this[9] + 5408);
  v7[0] = v8;
  v7[1] = 8;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "pkt_filter_enable", v7, 0, 0);
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::disablePacketFilters();
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::deleteIPv6PktFilters(void *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::deleteIPv6PktFilters();
    }
  }

  v9[0] = this;
  v9[1] = AppleBCMWLANCore::deleteIPv6PktFiltersAsyncCallBack;
  v9[2] = 0;
  v2 = this[9];
  if (*(v2 + 10036))
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      v8 = v3 + 107;
      v5 = *(v2 + 5408);
      v7[0] = &v8;
      v7[1] = 4;
      if (AppleBCMWLANCommander::sendIOVarSet(v5, "pkt_filter_delete", v7, kNoRxExpected, v9, 0))
      {
        break;
      }

      v3 = ++v4;
      v2 = this[9];
      if (*(v2 + 10036) <= v4)
      {
        goto LABEL_8;
      }
    }

    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::deleteIPv6PktFilters();
      }
    }
  }

  else
  {
LABEL_8:
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::deleteIPv6PktFilters();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::deleteIPv4PktFilters(void *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::deleteIPv4PktFilters();
    }
  }

  v6 = 102;
  v5[0] = this;
  v5[1] = AppleBCMWLANCore::deleteIPv4PktFiltersAsyncCallBack;
  v5[2] = 0;
  v2 = *(this[9] + 5408);
  v4[0] = &v6;
  v4[1] = 4;
  if (AppleBCMWLANCommander::sendIOVarSet(v2, "pkt_filter_delete", v4, kNoRxExpected, v5, 0))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::deleteIPv4PktFilters();
      }
    }
  }

  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::deleteIPv4PktFilters();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::deleteEapolFilter(void *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::deleteEapolFilter();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::deleteEapolFilter();
    }
  }

  v6 = 101;
  v5[0] = this;
  v5[1] = AppleBCMWLANCore::deleteEapolFilterAsyncCallBack;
  v5[2] = 0;
  v2 = *(this[9] + 5408);
  v4[0] = &v6;
  v4[1] = 4;
  if (AppleBCMWLANCommander::sendIOVarSet(v2, "pkt_filter_delete", v4, kNoRxExpected, v5, 0))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::deleteEapolFilter();
      }
    }
  }

  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::deleteEapolFilter();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::deleteMagicPktFilters(void *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::deleteMagicPktFilters();
    }
  }

  v11 = 104;
  v10[0] = this;
  v10[1] = AppleBCMWLANCore::deleteMagicPktFiltersAsyncCallBack;
  v10[2] = 0;
  v2 = AppleBCMWLANConfigManager::wompEnabled(*(this[9] + 5464));
  v3 = this[9];
  if (v2)
  {
    if (AppleBCMWLANConfigManager::wompEnabled(*(v3 + 5464)))
    {
      v4 = *(this[9] + 5408);
      v8 = &v11;
      v9 = 4;
      if (AppleBCMWLANCommander::sendIOVarSet(v4, "pkt_filter_delete", &v8, kNoRxExpected, v10, 0))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::deleteMagicPktFilters();
          }
        }
      }
    }
  }

  else if (*(v3 + 19848) != -2)
  {
    v6 = 0;
    do
    {
      v11 = v6 + 104;
      v7 = *(v3 + 5408);
      v8 = &v11;
      v9 = 4;
      if (AppleBCMWLANCommander::sendIOVarSet(v7, "pkt_filter_delete", &v8, kNoRxExpected, v10, 0))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::deleteMagicPktFilters();
          }
        }
      }

      ++v6;
      v3 = this[9];
    }

    while (v6 < *(v3 + 19848) + 2);
  }

  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::deleteMagicPktFilters();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::resetWoWConfig(IOService *this)
{
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::resetWoWConfig();
    }
  }

  AppleBCMWLANCore::configureAvgRssiParamsForAssociatedSleepExit(this);
  AppleBCMWLANKeepAliveOffload::unConfigureKeepAlives(this[1].OSObject::OSObjectInterface::__vftable[346].free);
  AppleBCMWLANCore::deleteIPv4PktFilters(this);
  AppleBCMWLANCore::deleteMagicPktFilters(this);
  AppleBCMWLANCore::deleteEapolFilter(this);
  AppleBCMWLANCore::deleteIPv6PktFilters(this);
  AppleBCMWLANCore::resetPorts(this);
  AppleBCMWLANCore::resetOffloads(this);
  AppleBCMWLANCore::configureICMP(this, 0);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 43))
  {
    v2 = 50000;
    v3 = 15000;
  }

  else
  {
    v2 = 0xFFFF;
    v3 = 30000;
  }

  AppleBCMWLANPowerStateAdapter::configureMulticastBroadcastWaitPeriod(this[1].OSObject::OSObjectInterface::__vftable[2249].init, v2, v3);
  AppleBCMWLANCore::configureLPASMode(this, 0);
  AppleBCMWLANCore::resetPktFilterParams(this);
  AppleBCMWLANCore::allowLinkup(this);
  if (AppleBCMWLANCore::checkForEarlyBeconTerminationSupport(this) && AppleBCMWLANPowerManager::configureEarlyBeaconTermination(this[1].OSObject::OSObjectInterface::__vftable[345].init, 1))
  {
    result = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (result)
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::resetWoWConfig();
      }
    }
  }

  else
  {
    LOBYTE(this[1].OSObject::OSObjectInterface::__vftable[412].init) = 0;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::resetWoWConfig();
      }
    }

    result = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (result)
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::resetWoWConfig();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::resetOffloads(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::resetOffloads();
    }
  }

  AppleBCMWLANCore::configureARPOffload(this, 0);
  AppleBCMWLANCore::configureNeighbourDiscovery(this, 0);
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::resetOffloads();
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::configureICMP(unint64_t this, int a2)
{
  v14 = a2;
  v3 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureICMP();
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 31))
  {
    return 3758097095;
  }

  v5 = (*(*this + 88))(this);
  if ((*(*v5 + 136))(v5))
  {
    v11 = this;
    v12 = AppleBCMWLANCore::handleSetICMPAsyncCallBack;
    v13 = 0;
    v6 = *(*(this + 72) + 5408);
    v10[0] = &v14;
    v10[1] = 4;
    v7 = AppleBCMWLANCommander::sendIOVarSet(v6, "pkt_filter_icmp", v10, kNoRxExpected, &v11, 0);
  }

  else
  {
    v8 = *(*(this + 72) + 5408);
    v11 = &v14;
    v12 = 4;
    v7 = AppleBCMWLANCommander::runIOVarSet(v8, "pkt_filter_icmp", &v11, 0, 0);
  }

  v4 = v7;
  if (v7)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureICMP(this, v3, &v14, v4);
      }
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureICMP();
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::isIPv6AlreadyProgrammed(void *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::isIPv6AlreadyProgrammed();
    }
  }

  v2 = this[9];
  v3 = *(v2 + 10036);
  if (v3)
  {
    v4 = (v2 + 9780);
    while (*v4 == *(v4 - 32) && v4[1] == *(v4 - 31))
    {
      v4 += 2;
      if (!--v3)
      {
        goto LABEL_12;
      }
    }

    return 0;
  }

  else
  {
LABEL_12:
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::isIPv6AlreadyProgrammed();
      }
    }

    return 1;
  }
}

uint64_t AppleBCMWLANCore::configureARPOffload(uint64_t this, int a2)
{
  v18 = a2;
  v3 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureARPOffload();
    }
  }

  v4 = (*(*this + 88))(this);
  if ((*(*v4 + 136))(v4))
  {
    __b[0] = this;
    __b[1] = AppleBCMWLANCore::handleSetARPOffloadAsyncCallBack;
    __b[2] = 0;
    v5 = *(*(this + 72) + 5408);
    v16 = &v18;
    v17 = 4;
    v6 = AppleBCMWLANCommander::sendIOVarSet(v5, "arpoe", &v16, kNoRxExpected, __b, 0);
  }

  else
  {
    v7 = *(*(this + 72) + 5408);
    __b[0] = &v18;
    __b[1] = 4;
    v6 = AppleBCMWLANCommander::runIOVarSet(v7, "arpoe", __b, 0, 0);
  }

  v8 = v6;
  if (v6)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureARPOffload(this, v3, &v18, v8);
      }
    }

    return v8;
  }

  if (!v18)
  {
    goto LABEL_35;
  }

  v15 = 9;
  v9 = *(*(this + 72) + 5408);
  __b[0] = &v15;
  __b[1] = 4;
  if (AppleBCMWLANCommander::runIOVarSet(v9, "arp_ol", __b, 0, 0))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureARPOffload();
      }
    }
  }

  if (AppleBCMWLANCommander::runIOVarSet(*(*(this + 72) + 5408), "arp_hostip_clear", &kNoTxPayload, 0, 0))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureARPOffload();
      }
    }
  }

  memset(__b, 170, sizeof(__b));
  ProtocolOffloadData = IO80211InfraInterface::getProtocolOffloadData();
  if (ProtocolOffloadData)
  {
    v8 = ProtocolOffloadData;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureARPOffload();
      }
    }

    return v8;
  }

  v14 = __b[0];
  v11 = *(*(this + 72) + 5408);
  v16 = &v14;
  v17 = 4;
  v12 = AppleBCMWLANCommander::runIOVarSet(v11, "arp_hostip", &v16, 0, 0);
  if (v12)
  {
    v8 = v12;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureARPOffload();
      }
    }
  }

  else
  {
LABEL_35:
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureARPOffload();
      }
    }

    return 0;
  }

  return v8;
}

uint64_t AppleBCMWLANCore::configureNeighbourDiscovery(unint64_t this, int a2)
{
  v14 = a2;
  v3 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureNeighbourDiscovery();
    }
  }

  if (!AppleBCMWLANCore::featureFlagIsBitSet(this, 30))
  {
    return 3758097084;
  }

  AppleBCMWLANCore::clearHostIPv6TableForNeighbourDiscovery(this);
  v4 = (*(*this + 88))(this);
  if ((*(*v4 + 136))(v4))
  {
    v11 = this;
    v12 = AppleBCMWLANCore::handleSetNDOffloadAsyncCallBack;
    v13 = 0;
    v5 = *(*(this + 72) + 5408);
    v10[0] = &v14;
    v10[1] = 4;
    v6 = AppleBCMWLANCommander::sendIOVarSet(v5, "ndoe", v10, kNoRxExpected, &v11, 0);
  }

  else
  {
    v8 = *(*(this + 72) + 5408);
    v11 = &v14;
    v12 = 4;
    v6 = AppleBCMWLANCommander::runIOVarSet(v8, "ndoe", &v11, 0, 0);
  }

  v7 = v6;
  if (v6)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureNeighbourDiscovery(this, v3, &v14, v7);
      }
    }
  }

  if (v14)
  {
    v7 = AppleBCMWLANCore::configureHostIPsForNeighbourDiscovery(this);
    if (v7)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureNeighbourDiscovery();
        }
      }
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureNeighbourDiscovery();
    }
  }

  return v7;
}

uint64_t AppleBCMWLANCore::clearHostIPv6TableForNeighbourDiscovery(void *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::clearHostIPv6TableForNeighbourDiscovery();
    }
  }

  v2 = (*(*this + 88))(this);
  if ((*(*v2 + 136))(v2))
  {
    v7[0] = this;
    v7[1] = AppleBCMWLANCore::handleSetNDOffloadAsyncCallBack;
    v7[2] = 0;
    v3 = AppleBCMWLANCommander::sendIOVarSet(*(this[9] + 5408), "nd_hostip_clear", &kNoTxPayload, kNoRxExpected, v7, 0);
  }

  else
  {
    v3 = AppleBCMWLANCommander::runIOVarSet(*(this[9] + 5408), "nd_hostip_clear", &kNoTxPayload, 0, 0);
  }

  v4 = v3;
  v5 = (*(*this + 1952))(this);
  if (v4)
  {
    if (v5)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::clearHostIPv6TableForNeighbourDiscovery();
      }
    }
  }

  else if (v5)
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::clearHostIPv6TableForNeighbourDiscovery();
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::configureHostIPsForNeighbourDiscovery(void *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureHostIPsForNeighbourDiscovery();
    }
  }

  memset(&v8[2], 170, 0x220uLL);
  ProtocolOffloadData = IO80211InfraInterface::getProtocolOffloadData();
  if (ProtocolOffloadData)
  {
    v3 = ProtocolOffloadData;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureHostIPsForNeighbourDiscovery();
      }
    }
  }

  else if (HIDWORD(v8[2]))
  {
    v4 = 0;
    while (1)
    {
      v5 = *(this[9] + 5408);
      v8[0] = &v8[2 * v4 + 3];
      v8[1] = 16;
      v6 = AppleBCMWLANCommander::runIOVarSet(v5, "nd_hostip", v8, 0, 0);
      if (v6)
      {
        break;
      }

      if (HIDWORD(v8[2]) <= ++v4)
      {
        goto LABEL_12;
      }
    }

    v3 = v6;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureHostIPsForNeighbourDiscovery();
      }
    }
  }

  else
  {
LABEL_12:
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureHostIPsForNeighbourDiscovery();
      }
    }

    return 0;
  }

  return v3;
}

uint64_t AppleBCMWLANCore::getNeighbourDiscoveryStats(AppleBCMWLANCore *this)
{
  memset(v9, 170, sizeof(v9));
  v8 = 0;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::getNeighbourDiscoveryStats();
    }
  }

  if (!AppleBCMWLANCore::featureFlagIsBitSet(this, 30))
  {
    return 3758097084;
  }

  v6 = &v8;
  v7 = 0x400040004;
  v2 = AppleBCMWLANCommander::runIOVarGet(*(*(this + 9) + 5408), "ndoe", &kNoTxPayload, &v6, 0);
  if (v2)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getNeighbourDiscoveryStats();
      }
    }
  }

  if (v8)
  {
    v6 = v9;
    v7 = 0x1800180018;
    v2 = AppleBCMWLANCommander::runIOVarGet(*(*(this + 9) + 5408), "nd_status", &kNoTxPayload, &v6, 0);
    v3 = (*(*this + 1952))(this);
    if (v2)
    {
      if (v3)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getNeighbourDiscoveryStats();
        }
      }

      return v2;
    }

    if (v3)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v5 = (*(*this + 1952))(this);
        CCLogStream::logInfo(v5, "[dk] %s@%d: Neighbor Discovery Status: \thost_ip_entries %u \thost_ip_overflow %u \n\tpeer_request %u \t\tpeer_request_drop %u \n\tpeer_reply_drop %u \tpeer_service %u \n", "getNeighbourDiscoveryStats", 49413, LODWORD(v9[0]), HIDWORD(v9[0]), LODWORD(v9[1]), HIDWORD(v9[1]), LODWORD(v9[2]), HIDWORD(v9[2]));
      }
    }

    v2 = 0;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::getNeighbourDiscoveryStats();
    }
  }

  return v2;
}

const char *pmReasonStr(int a1)
{
  if (a1 > 255)
  {
    if (a1 > 4095)
    {
      if (a1 >= 0x4000)
      {
        if (a1 == 0x4000)
        {
          return "WLC_PMD_NON_PRIM_STA_UP";
        }

        if (a1 == 0x8000)
        {
          return "WLC_PMD_AP_UP";
        }
      }

      else
      {
        if (a1 == 4096)
        {
          return "WLC_PMD_AWDL_AWAKE";
        }

        if (a1 == 0x2000)
        {
          return "WLC_PMD_PM2_RADIO_SOFF_PEND";
        }
      }
    }

    else if (a1 > 1023)
    {
      if (a1 == 1024)
      {
        return "WLC_PMD_TX_PEND_WAR";
      }

      if (a1 == 2048)
      {
        return "WLC_PMD_GPTIMER_STAY_AWAKE";
      }
    }

    else
    {
      if (a1 == 256)
      {
        return "WLC_PMD_CHK_UNALIGN_TBTT";
      }

      if (a1 == 512)
      {
        return "WLC_PMD_APSD_STA_UP";
      }
    }

    return "UNKNOWN";
  }

  if (a1 > 15)
  {
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        return "WLC_PMD_PM_PEND";
      }

      if (a1 == 128)
      {
        return "WLC_PMD_PS_POLL";
      }
    }

    else
    {
      if (a1 == 16)
      {
        return "WLC_PMD_RM_IN_PROGRESS";
      }

      if (a1 == 32)
      {
        return "WLC_PMD_AS_IN_PROGRESS";
      }
    }

    return "UNKNOWN";
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      return "WLC_PMD_PM_AWAKE_BCN";
    }

    if (a1 == 8)
    {
      return "WLC_PMD_SCAN_IN_PROGRESS";
    }

    return "UNKNOWN";
  }

  return "WLC_PMD_WAKE_SET";
}

uint64_t AppleBCMWLANCore::ignoreUnicastPackets(unint64_t this)
{
  v2 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::ignoreUnicastPackets();
    }
  }

  v8 = 0;
  read_random();
  v9 = 0x10000;
  v10 = -16384;
  v3 = *(*(this + 72) + 5408);
  v7[0] = &v9;
  v7[1] = 6;
  v4 = AppleBCMWLANCommander::runIOVarSet(v3, "pkt_filter_ports", v7, 0, 0);
  v5 = (*(*this + 1952))(this);
  if (v4)
  {
    if (v5)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::ignoreUnicastPackets();
      }
    }
  }

  else
  {
    if (v5)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::ignoreUnicastPackets(this, v2, &v8, 0);
      }
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::ignoreUnicastPackets();
      }
    }
  }

  return v4;
}

void *AppleBCMWLANCore::calculateAvailableRoamTime(void *this, int a2, int a3, int *a4)
{
  v5 = this[9];
  v6 = 6608;
  if (a2 == 2)
  {
    v6 = 6644;
  }

  v7 = *(v5 + v6);
  if (*(v5 + 35528))
  {
    *a4 = v7;
  }

  else
  {
    v10 = this;
    v11 = *a4 - a3;
    if (*a4 <= a3)
    {
      v11 = 0;
    }

    if (v11 < v7)
    {
      v7 = v11;
    }

    *a4 = v7;
    this = (*(*this + 1952))(this);
    if (this)
    {
      (*(*v10 + 1952))(v10);
      this = CCLogStream::shouldLog();
      if (this)
      {
        v12 = (*(*v10 + 1952))(v10);
        if (a2 == 1)
        {
          v13 = "WoW";
        }

        else
        {
          v13 = "LPAS";
        }

        return CCLogStream::logAlert(v12, "[dk] %s@%d:available roam time for %s is %d msecs, consumedRoamTime[%d msec]\n", "calculateAvailableRoamTime", 51483, v13, *a4, a3);
      }
    }
  }

  return this;
}

uint64_t AppleBCMWLANCore::isGASQueryAllowed(AppleBCMWLANCore *this, uint64_t a2, unint64_t a3)
{
  memset(v5, 0, sizeof(v5));
  if (IO80211ThreadProcessInfo::getProcessName(v5, 0x80, a3))
  {
    IO80211Controller::getProcessName(this, v5, 0x80uLL);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::disableECounters(AppleBCMWLANCore *this)
{
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 53))
  {
    v6 = AppleBCMWLANCore::disableECountersV2(this, v2, v3, v4, v5);
  }

  else
  {
    v6 = AppleBCMWLANCore::disableECountersV1(this);
  }

  v7 = v6;
  v8 = *(this + 9);
  if (v6)
  {
    *(v8 + 960) = 0;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::disableECounters();
      }
    }
  }

  else
  {
    *(v8 + 960) = 2;
  }

  return v7;
}

uint64_t AppleBCMWLANCore::enableECounters(AppleBCMWLANCore *this)
{
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 53))
  {
    v2 = AppleBCMWLANCore::enableECountersV2(this);
  }

  else
  {
    v2 = AppleBCMWLANCore::enableECountersV1(this);
  }

  v3 = v2;
  v4 = *(this + 9);
  if (v2)
  {
    *(v4 + 960) = 0;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::enableECounters();
      }
    }
  }

  else
  {
    *(v4 + 960) = 3;
  }

  return v3;
}

uint64_t AppleBCMWLANCore::enableECountersV2(AppleBCMWLANCore *this)
{
  v23 = -21846;
  v2 = IOMallocZeroData();
  if (!v2)
  {
    return 12;
  }

  v4 = v2;
  __n = -21846;
  __n_2 = 2;
  __n_6 = 5;
  v5 = *(this + 9);
  v21 = *(v5 + 17772);
  v22 = 0;
  v6 = AppleBCMWLANCommandWithXTLV::withLengthAndHeader(0x400, &__n_2, 12, *(v5 + 14248), v3);
  if (!v6)
  {
    v15 = 3758097085;
    goto LABEL_24;
  }

  v7 = v6;
  EcountersConfigInfraContainer = AppleBCMWLANCore::getEcountersConfigInfraContainer(this, v4, 0x80u, &__n);
  if (EcountersConfigInfraContainer)
  {
    goto LABEL_31;
  }

  AppleBCMWLANCommandWithXTLV::addXTLV(v7, 1, __n, v4);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 104))
  {
    EcountersConfigInfraContainer = AppleBCMWLANCore::getEcountersConfigPeerStatsContainer(this, v4, 0x80u, &__n);
    if (EcountersConfigInfraContainer)
    {
      goto LABEL_31;
    }

    AppleBCMWLANCommandWithXTLV::addXTLV(v7, 1, __n, v4);
  }

  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  EcountersConfigInfraContainer = AppleBCMWLANCore::getEcountersConfigSoftAPContainer(this, v4, 0x80u, &__n);
  if (EcountersConfigInfraContainer)
  {
    goto LABEL_31;
  }

  AppleBCMWLANCommandWithXTLV::addXTLV(v7, 1, __n, v4);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  AppleBCMWLANCore::getEcountersConfigGlobalContainer(this, v4, 0x80u, &__n);
  if (EcountersConfigInfraContainer)
  {
    goto LABEL_31;
  }

  AppleBCMWLANCommandWithXTLV::addXTLV(v7, 1, __n, v4);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  EcountersConfigInfraContainer = AppleBCMWLANCore::getEcountersConfigSlice0Container(this, v4, 0x80u, &__n);
  if (EcountersConfigInfraContainer)
  {
    goto LABEL_31;
  }

  AppleBCMWLANCommandWithXTLV::addXTLV(v7, 1, __n, v4);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  AppleBCMWLANCore::getEcountersConfigSlice1Container(this, v4, 0x80u, &__n);
  if (EcountersConfigInfraContainer)
  {
    goto LABEL_31;
  }

  AppleBCMWLANCommandWithXTLV::addXTLV(v7, 1, __n, v4);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
  {
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *v4 = 0u;
    *(v4 + 16) = 0u;
    AppleBCMWLANCore::getEcountersConfigSlice2Container(this, v4, 0x80u, &__n);
    if (EcountersConfigInfraContainer)
    {
      goto LABEL_31;
    }

    AppleBCMWLANCommandWithXTLV::addXTLV(v7, 1, __n, v4);
  }

  if (!AppleBCMWLANCore::featureFlagIsBitSet(this, 122))
  {
LABEL_13:
    AppleBCMWLANConfigManager::setupFirmwareWithDTDefaults(v7);
    AppleBCMWLANCommandWithXTLV::complete(v7);
    v9 = *(*(this + 9) + 5408);
    CompletionRingPtr = AppleBCMWLANDynamicRingOperationContext::getCompletionRingPtr(v7);
    CommandLength = AppleBCMWLANCommandWithXTLV::getCommandLength(v7);
    v12 = CommandLength;
    if (!CompletionRingPtr)
    {
      v12 = 0;
    }

    if (CommandLength)
    {
      v13 = CompletionRingPtr;
    }

    else
    {
      v13 = 0;
    }

    v17[0] = v13;
    v17[1] = v12;
    v14 = AppleBCMWLANCommander::runIOVarSet(v9, "ecounters", v17, 0, 0);
    v15 = v14;
    if (v14 != -469794537)
    {
      if (v14)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::enableECountersV2();
          }
        }
      }
    }

    goto LABEL_23;
  }

  EcountersConfigInfraContainer = AppleBCMWLANCore::getEcountersConfigPeerStatsContainer(this, v4, 0x80u, &__n);
  if (!EcountersConfigInfraContainer)
  {
    AppleBCMWLANCommandWithXTLV::addXTLV(v7, 1, __n, v4);
    goto LABEL_13;
  }

LABEL_31:
  v15 = EcountersConfigInfraContainer;
LABEL_23:
  (*(*v7 + 16))(v7);
LABEL_24:
  IOFreeData();
  return v15;
}

uint64_t AppleBCMWLANCore::enableECountersV1(void *this)
{
  v2 = IOMallocZeroData();
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  *v2 = 327681;
  if (*(this[9] + 780) <= 4u)
  {
    v4 = 1400;
  }

  else
  {
    v4 = 1648;
  }

  *(v2 + 4) = v4;
  *(v2 + 6) = *(this[9] + 17772);
  *(v2 + 8) = 0x5F004500030000;
  *(v2 + 16) = 83;
  v5 = *(this[9] + 5408);
  v10[0] = v3;
  v10[1] = 18;
  v6 = AppleBCMWLANCommander::runIOVarSet(v5, "ecounters", v10, 0, 0);
  v7 = v6;
  if (v6 != -469794537 && v6 != 0)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::enableECountersV1();
      }
    }
  }

  IOFreeData();
  return v7;
}

uint64_t AppleBCMWLANCore::disableECountersV1(void *this)
{
  v2 = IOMallocZeroData();
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  *v2 = 1;
  *(v2 + 2) = 0;
  *(v2 + 10) = 0;
  v4 = *(this[9] + 5408);
  v9[0] = v3;
  v9[1] = 14;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "ecounters", v9, 0, 0);
  v6 = v5;
  if (v5 != -469794537 && v5 != 0)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::disableECountersV1();
      }
    }
  }

  IOFreeData();
  return v6;
}

uint64_t AppleBCMWLANCore::configureEventLogShrinkStats(void *this, char a2)
{
  v12 = 2863311530;
  LOBYTE(v12) = a2;
  v3 = *(this[9] + 5408);
  v11[0] = &v12;
  v11[1] = 8;
  v4 = AppleBCMWLANCommander::runIOVarSet(v3, "event_log_set_shrink", v11, 0, 0);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v7 = (*(*this + 1952))(this);
      v8 = v12;
      v9 = HIDWORD(v12);
      v10 = (*(*this + 112))(this, v5);
      CCLogStream::logInfo(v7, "[dk] %s@%d: Error: Unable to deallocate event_log_set_init set %d, size %d: %s\n", "configureEventLogShrinkStats", 52656, v8, v9, v10);
    }
  }

  result = 3825172759;
  if (v5 != -469794537)
  {
LABEL_6:
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANCore::configureEventLogShrinkStats();
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::configureEventLogStats(AppleBCMWLANCore *this, char a2, unsigned __int16 a3)
{
  v19 = -1431655766;
  v20 = a3;
  LOBYTE(v19) = a2;
  v4 = *(*(this + 9) + 5408);
  v17 = &v19;
  v18 = 8;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "event_log_set_init", &v17, 0, 0);
  if (v5)
  {
    v6 = v5;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v7 = (*(*this + 1952))(this);
        v8 = v19;
        v9 = v20;
        v10 = (*(*this + 112))(this, v6);
        CCLogStream::logInfo(v7, "[dk] %s@%d: Error: Unable to set event_log_set_init set %d, size %d: %s\n", "configureEventLogStats", 52678, v8, v9, v10);
      }
    }
  }

  else
  {
    v11 = *(*(this + 9) + 5408);
    v17 = &v19;
    v18 = 8;
    v6 = AppleBCMWLANCommander::runIOVarSet(v11, "event_log_set_expand", &v17, 0, 0);
    if (v6)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v13 = (*(*this + 1952))(this);
          v14 = v19;
          v15 = v20;
          v16 = (*(*this + 112))(this, v6);
          CCLogStream::logAlert(v13, "[dk] %s@%d: Error: Unable to set event_log_set_init set %d, size %d: %s\n", "configureEventLogStats", 52684, v14, v15, v16);
        }
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::handleEventLogGetAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    if (!(*(*result + 1952))(result, a2) || ((*(*v4 + 1952))(v4), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v5 = (*(*v4 + 112))(v4, a3);
        v6[0] = 67109890;
        v6[1] = 78;
        v7 = 2080;
        v8 = "handleEventLogGetAsyncCallback";
        v9 = 1024;
        v10 = 52921;
        v11 = 2080;
        v12 = v5;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: LQM-WiFi-Roam: fail to dump roam target evaluation - %s\n", v6, 0x22u);
      }
    }

    result = (*(*v4 + 1952))(v4);
    if (result)
    {
      (*(*v4 + 1952))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleEventLogGetAsyncCallback();
      }
    }
  }

  return result;
}

BOOL AppleBCMWLANCore::isFourRowPowerTableSupported(AppleBCMWLANCore *this)
{
  TxPowerCapConfig = AppleBCMWLANConfigManager::getTxPowerCapConfig(*(*(this + 9) + 5464));
  v2 = *(TxPowerCapConfig + 11);
  if (!*(TxPowerCapConfig + 11))
  {
    return 0;
  }

  if (*(TxPowerCapConfig + 1) == 2)
  {
    return 1;
  }

  v4 = (TxPowerCapConfig + 2);
  v5 = -1;
  do
  {
    v6 = v5;
    if (-v2 == v5)
    {
      break;
    }

    v7 = *v4++;
    --v5;
  }

  while (v7 != 2);
  return -v6 < v2;
}

uint64_t AppleBCMWLANCore::configTxPowerCapControl(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANConfigManager::getTxPowerCapConfig(*(*(this + 9) + 5464));
  v3 = *(result + 12);
  switch(v3)
  {
    case 4:
      v10 = *(result + 1);
      *v12 = 772;
      v12[2] = v10;
      v6 = *(*(this + 9) + 5408);
      v7 = 3;
      break;
    case 3:
      *&v12[1] = 0xAAAAAAAAAAAAAAAALL;
      v13 = -21846;
      v12[0] = 3;
      v8 = *(result + 11);
      if (*(result + 11))
      {
        v9 = 0;
        do
        {
          v12[v9 + 1] = *(result + 1 + v9);
          ++v9;
        }

        while (v9 < v8);
      }

      v6 = *(*(this + 9) + 5408);
      v7 = 11;
      break;
    case 2:
      v12[5] = -86;
      *&v12[1] = -1431655766;
      v12[0] = 2;
      v4 = *(result + 11);
      if (*(result + 11))
      {
        v5 = 0;
        do
        {
          v12[v5 + 1] = *(result + 1 + v5);
          ++v5;
        }

        while (v5 < v4);
      }

      v6 = *(*(this + 9) + 5408);
      v7 = 6;
      break;
    default:
      return result;
  }

  v11[0] = v12;
  v11[1] = v7;
  result = AppleBCMWLANCommander::runIOVarSet(v6, "txcapconfig", v11, 0, 0);
  if (result)
  {
    return CCFaultReporter::reportFault(*(*(this + 9) + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0xCF9Cu, "configTxPowerCapControl", 0, result, "txcapconfig failed");
  }

  return result;
}

uint64_t AppleBCMWLANCore::setTxPowerCapState(uint64_t this)
{
  v1 = *(this + 72);
  if (*(v1 + 10376))
  {
    v2 = (v1 + 0x4000);
    if (v2[867] == 1)
    {
      return AppleBCMWLANCore::sendTxPowerCapValueToFirmware(this, v2[848], v2[847]);
    }
  }

  return this;
}

uint64_t AppleBCMWLANCore::setTxHighCapTimeout(void *this, uint64_t a2)
{
  v3 = *(this[9] + 5464);
  if (v3 && (v4 = a2, AppleBCMWLANConfigManager::isDualPowerModeSupported(v3)))
  {
    v9 = v4;
    v5 = *(this[9] + 5408);
    v8[0] = &v9;
    v8[1] = 4;
    result = AppleBCMWLANCommander::runIOVarSet(v5, "txcaphighcapto", v8, 0, 0);
    if (result != -469793788 && result != 0)
    {
      return CCFaultReporter::reportFault(*(this[9] + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0xD0F4u, "setTxHighCapTimeout", 0, result, "txcaphighcapto failed");
    }
  }

  else
  {
    result = (*(*this + 1952))(this, a2);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::setTxHighCapTimeout();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendTxPowerCapBypassToFirmware(void *this)
{
  v2 = this[9];
  v6 = *(v2 + 19781);
  if (*(v2 + 19772) == -1 || *(v2 + 19776) == -1)
  {
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::sendTxPowerCapBypassToFirmware();
      }
    }
  }

  else
  {
    v3 = *(v2 + 5408);
    v5[0] = &v6;
    v5[1] = 4;
    result = AppleBCMWLANCommander::runIOVarSet(v3, "txcapbypass", v5, 0, 0);
    if (result)
    {
      result = (*(*this + 1952))(this);
      if (result)
      {
        (*(*this + 1952))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::sendTxPowerCapBypassToFirmware();
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::heartBeatHandler(AppleBCMWLANCore *this)
{
  mach_continuous_time();
  result = absolutetime_to_nanoseconds();
  *(*(this + 9) + 19792) = 0;
  v3 = *(this + 9);
  if (*(v3 + 10376))
  {
    v4 = (v3 + 0x4000);
    if (v4[867] == 1)
    {
      return AppleBCMWLANCore::sendTxPowerCapValueToFirmware(this, v4[848], v4[847]);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::getTxPowerCapState(void *a1, uint64_t a2)
{
  v3 = *(a1[9] + 5464);
  if (v3 && AppleBCMWLANConfigManager::isDualPowerModeSupported(v3))
  {
    *(a2 + 4) = 0;
    *a2 = 0;
    v5 = 0x600060006;
    if (!a2)
    {
      v5 = 0;
    }

    v8[0] = a2;
    v8[1] = v5;
    v6 = AppleBCMWLANCommander::runIOVarGet(*(a1[9] + 5408), "txcapstate", &kNoTxPayload, v8, 0);
    if (v6)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getTxPowerCapState();
        }
      }
    }
  }

  else
  {
    v6 = 3758097095;
    if ((*(*a1 + 1952))(a1, a2))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getTxPowerCapState();
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::getTxPowerCapStateV3(void *a1, uint64_t a2)
{
  v3 = *(a1[9] + 5464);
  if (v3 && AppleBCMWLANConfigManager::isDualPowerModeSupported(v3))
  {
    *(a2 + 7) = 0;
    *a2 = 0;
    v5 = 0xB000B000BLL;
    if (!a2)
    {
      v5 = 0;
    }

    v8[0] = a2;
    v8[1] = v5;
    v6 = AppleBCMWLANCommander::runIOVarGet(*(a1[9] + 5408), "txcapstate", &kNoTxPayload, v8, 0);
    if (v6)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getTxPowerCapStateV3();
        }
      }
    }
  }

  else
  {
    v6 = 3758097095;
    if ((*(*a1 + 1952))(a1, a2))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getTxPowerCapStateV3();
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::getTxPowerCapStateV4(void *a1, uint64_t a2)
{
  v3 = *(a1[9] + 5464);
  if (v3 && AppleBCMWLANConfigManager::isDualPowerModeSupported(v3))
  {
    *(a2 + 2) = 0;
    *a2 = 0;
    v5 = 0x300030003;
    if (!a2)
    {
      v5 = 0;
    }

    v8[0] = a2;
    v8[1] = v5;
    v6 = AppleBCMWLANCommander::runIOVarGet(*(a1[9] + 5408), "txcapstate", &kNoTxPayload, v8, 0);
    if (v6)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getTxPowerCapStateV4();
        }
      }
    }
  }

  else
  {
    v6 = 3758097095;
    if ((*(*a1 + 1952))(a1, a2))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getTxPowerCapStateV4();
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::getTxPowerCapDebugInfoV3(void *a1, uint64_t a2)
{
  *(a2 + 352) = 0;
  *(a2 + 320) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = *(a1[9] + 5464);
  if (v3 && AppleBCMWLANConfigManager::isDualPowerModeSupported(v3))
  {
    v7[0] = a2;
    v7[1] = 0x16401640164;
    v5 = AppleBCMWLANCommander::runIOVarGet(*(a1[9] + 5408), "txcapdump", &kNoTxPayload, v7, 0);
    if (v5)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getTxPowerCapDebugInfoV3();
        }
      }
    }
  }

  else
  {
    v5 = 3758097095;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getTxPowerCapDebugInfoV3();
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::getTxPowerCapDebugInfoV5(void *this, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(this[9] + 5464);
  if (v4 && (v5 = a3, AppleBCMWLANConfigManager::isDualPowerModeSupported(v4)))
  {
    if (v5)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    if (v5)
    {
      v8 = a2 == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = v5 | (v5 << 32) | 0xE0000;
    if (v8)
    {
      v9 = 0;
    }

    v12[0] = v7;
    v12[1] = v9;
    v10 = AppleBCMWLANCommander::runIOVarGet(*(this[9] + 5408), "txcapdump", &kNoTxPayload, v12, 0);
    if (v10)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getTxPowerCapDebugInfoV5();
        }
      }
    }
  }

  else
  {
    v10 = 3758097095;
    if ((*(*this + 1952))(this, a2, a3))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getTxPowerCapDebugInfoV5();
      }
    }
  }

  return v10;
}

uint64_t AppleBCMWLANCore::getTxPowerCapDebugInfoV7(void *this, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(this[9] + 5464);
  if (v4 && (v5 = a3, AppleBCMWLANConfigManager::isDualPowerModeSupported(v4)))
  {
    if (v5)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    if (v5)
    {
      v8 = a2 == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = v5 | (v5 << 32) | 0x260000;
    if (v8)
    {
      v9 = 0;
    }

    v12[0] = v7;
    v12[1] = v9;
    v10 = AppleBCMWLANCommander::runIOVarGet(*(this[9] + 5408), "txcapdump", &kNoTxPayload, v12, 0);
    if (v10)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::getTxPowerCapDebugInfoV7();
        }
      }
    }
  }

  else
  {
    v10 = 3758097095;
    if ((*(*this + 1952))(this, a2, a3))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getTxPowerCapDebugInfoV7();
      }
    }
  }

  return v10;
}

uint64_t AppleBCMWLANCore::getTxHighCapTimeout(void *this, unsigned int *a2)
{
  v3 = *(this[9] + 5464);
  if (v3 && AppleBCMWLANConfigManager::isDualPowerModeSupported(v3))
  {
    v5 = 0x400040004;
    if (!a2)
    {
      v5 = 0;
    }

    v8[0] = a2;
    v8[1] = v5;
    v6 = AppleBCMWLANCommander::runIOVarGet(*(this[9] + 5408), "txcaphighcapto", &kNoTxPayload, v8, 0);
    if (v6)
    {
      CCFaultReporter::reportFault(*(this[9] + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0xD121u, "getTxHighCapTimeout", 0, v6, "txcaphighcapto failed");
    }
  }

  else
  {
    v6 = 3758097084;
    if ((*(*this + 1952))(this, a2))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getTxHighCapTimeout();
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::selfDiagnosticsReport(AppleBCMWLANCore *this, int a2, const char *a3, char a4)
{
  if (!a2 && !a3)
  {
    return 3758097090;
  }

  result = AppleBCMWLANCore::isRejectingCommands(this);
  if (!result)
  {
    switch(a2)
    {
      case -528340986:
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::selfDiagnosticsReport();
          }
        }

        (*(**(*(this + 9) + 5392) + 216))(*(*(this + 9) + 5392), 4);
        v11 = *(**(*(this + 9) + 5392) + 200);
        break;
      case -528340987:
        v13 = 1;
        IOParseBootArgNumber("wlan.debug.postmessage-error-capture", &v13, 1);
        if (v13)
        {
          v10 = "";
          if (a3)
          {
            v10 = a3;
          }

          CCFaultReporter::reportFault(*(*(this + 9) + 5536), 8u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0xD166u, "selfDiagnosticsReport", 0, -528340987, "%s", v10);
        }

        else
        {
          AppleBCMWLANCore::selfDiagnosticsReport();
        }

        return 0;
      case -528340988:
        if ((a4 & 1) == 0)
        {
          v9 = "";
          if (a3)
          {
            v9 = a3;
          }

          CCFaultReporter::reportFault(*(*(this + 9) + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0xD14Bu, "selfDiagnosticsReport", 0, -528340988, "%s", v9);
          return 0;
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::selfDiagnosticsReport();
          }
        }

        (*(**(*(this + 9) + 5392) + 216))(*(*(this + 9) + 5392), 1);
        v11 = *(**(*(this + 9) + 5392) + 200);
        break;
      default:
        v12 = "";
        if (a3)
        {
          v12 = a3;
        }

        CCFaultReporter::reportFault(*(*(this + 9) + 5536), a4 & 1 | 4, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0xD172u, "selfDiagnosticsReport", 0, a2, "%s", v12);
        return 0;
    }

    v11();
    return 0;
  }

  return result;
}

AppleBCMWLANIOReportingCore *AppleBCMWLANCore::configureReportGated(AppleBCMWLANCore *this, OSCollection **a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  if (!a2)
  {
    AppleBCMWLANCore::configureReportGated();
    return v17;
  }

  v6 = *a2;
  if (!*a2)
  {
    AppleBCMWLANCore::configureReportGated();
    return v17;
  }

  v7 = a2[2];
  if (!v7)
  {
    AppleBCMWLANCore::configureReportGated();
    return v17;
  }

  v8 = *(a2 + 2);
  v9 = *(this + 9);
  v10 = v9[688];
  if (v10)
  {
    if (AppleBCMWLANIOReporting::configureReport(v10, *a2, v8, v7, a5))
    {
      AppleBCMWLANCore::configureReportGated();
      return v17;
    }

    v9 = *(this + 9);
  }

  v11 = v9[689];
  if (v11)
  {
    if (AppleBCMWLANIOReportingPerSlice::configureReport(v11, v6, v8, v7))
    {
      AppleBCMWLANCore::configureReportGated();
      return v17;
    }

    v9 = *(this + 9);
  }

  v12 = v9[3741];
  if (v12)
  {
    if (AppleBCMWLANAudioProtector::configureReport(v12, v6, v8, v7, a5))
    {
      AppleBCMWLANCore::configureReportGated();
      return v17;
    }

    v9 = *(this + 9);
  }

  v13 = v9[676];
  if (v13)
  {
    if (AppleBCMWLANCommander::configureReport(v13, v6, v8, v7, a5))
    {
      AppleBCMWLANCore::configureReportGated();
      return v17;
    }

    v9 = *(this + 9);
  }

  v14 = v9[1413];
  if (v14 && (*(*v14 + 696))(v14, v6, v8, v7, a5))
  {
    AppleBCMWLANCore::configureReportGated();
    return v17;
  }

  if (IO80211Controller::configureReport(this, v6, v8, v7))
  {
    AppleBCMWLANCore::configureReportGated();
    return v17;
  }

  result = *(*(this + 9) + 5504);
  if (result)
  {
    AppleBCMWLANIOReportingCore::accountingForConfigureReport(result, 0, v15);
    return 0;
  }

  return result;
}

AppleBCMWLANIOReportingCore *AppleBCMWLANCore::configureReport(AppleBCMWLANCore *this, OSCollection *a2, uint64_t a3, unsigned int *a4)
{
  if (*(*(this + 9) + 968) == 1)
  {
    result = (*(*this + 1952))(this, a2, a3, a4);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANCore::configureReport();
        return 0;
      }
    }
  }

  else
  {
    *a4 = 0;
    v10 = a2;
    v12 = -1431655766;
    v11 = a3;
    v13 = a4;
    if ((*(**(*(this + 9) + 31064) + 144))(*(*(this + 9) + 31064)))
    {
      return AppleBCMWLANCore::configureReportGated(this, &v10, v6, v7, v8);
    }

    else
    {
      v9 = (*(*this + 104))(this);
      return (*(*v9 + 56))(v9, AppleBCMWLANCore::configureReportGated, &v10, 0, 0, 0);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateReportGated(AppleBCMWLANCore *this, OSCollection **a2)
{
  v36 = 0;
  v37 = 0xAAAAAAAAAAAAAAAALL;
  memset(__b, 170, sizeof(__b));
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  v33[0] = v4;
  v33[1] = v4;
  BYTE4(v33[0]) = 0;
  LODWORD(v33[0]) = 20;
  if (!a2)
  {
    v27 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateReportGated();
      }
    }

    goto LABEL_35;
  }

  v5 = *a2;
  v6 = *(a2 + 2);
  v8 = a2[2];
  v7 = a2[3];
  v36 = a2[4];
  v37 = v7;
  if (!v5)
  {
    v27 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateReportGated();
      }
    }

    goto LABEL_39;
  }

  if (!v8)
  {
    v27 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateReportGated();
      }
    }

LABEL_35:
    v24 = 0;
    v8 = 0;
    goto LABEL_40;
  }

  v9 = a2[5];
  if (!v9)
  {
    v27 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateReportGated();
      }
    }

LABEL_39:
    v24 = 0;
    goto LABEL_40;
  }

  if (!AppleBCMWLANCore::isRejectingCommands(this))
  {
    v10 = (*(*this + 104))(this);
    (*(*v10 + 56))(v10, AppleBCMWLANCore::getPowerStats, __b, v33, 0, 0);
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    v11 = (*(*this + 104))(this);
    (*(*v11 + 56))(v11, AppleBCMWLANCore::getDiags, v38, v33, 0, 0);
  }

  v12 = *(this + 9);
  v13 = v12[688];
  if (v13)
  {
    updated = AppleBCMWLANIOReporting::updateReport(v13, v5, v6, v8, &v37, &v36, v9);
    if (updated)
    {
      v24 = updated;
      v27 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v28 = (*(*this + 1952))(this);
          getClassNameHelper(this);
          CCLogStream::logEmergency(v28, "[dk] %s@%d:DKReporter::%s::%s(%d) getIOReporterCore()->updateReport failed count %u offset %llu capacity %llu", "updateReportGated", 54027);
        }
      }

      goto LABEL_40;
    }

    v12 = *(this + 9);
  }

  v15 = v12[689];
  if (v15)
  {
    v16 = AppleBCMWLANIOReportingPerSlice::updateReport(v15, v5, v6, v8, &v37, &v36, v9);
    if (v16)
    {
      v24 = v16;
      v27 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v29 = (*(*this + 1952))(this);
          getClassNameHelper(this);
          CCLogStream::logEmergency(v29, "[dk] %s@%d:DKReporter::%s::%s(%d) getIOReporterPerSlice()->updateReport failed count %u offset %llu capacity %llu", "updateReportGated", 54033);
        }
      }

      goto LABEL_40;
    }

    v12 = *(this + 9);
  }

  v17 = v12[3741];
  if (v17)
  {
    v18 = AppleBCMWLANAudioProtector::updateReport(v17, v5, v6, v8, &v37, &v36, v9);
    if (v18)
    {
      v24 = v18;
      v27 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v30 = (*(*this + 1952))(this);
          getClassNameHelper(this);
          CCLogStream::logEmergency(v30, "[dk] %s@%d:DKReporter::%s::%s(%d) ivars->fAudioProtector->updateReport failed count %u offset %llu capacity %llu", "updateReportGated", 54040);
        }
      }

      goto LABEL_40;
    }

    v12 = *(this + 9);
  }

  v19 = v12[676];
  if (v19)
  {
    v20 = AppleBCMWLANCommander::updateReport(v19, v5, v6, v8, &v37, &v36, v9);
    if (v20)
    {
      v24 = v20;
      v27 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v31 = (*(*this + 1952))(this);
          getClassNameHelper(this);
          CCLogStream::logEmergency(v31, "[dk] %s@%d:DKReporter::%s::%s(%d) ivars->fCommander->updateReport failed count %u offset %llu capacity %llu", "updateReportGated", 54047);
        }
      }

      goto LABEL_40;
    }

    v12 = *(this + 9);
  }

  v21 = v12[1413];
  if (!v21 || (v22 = (*(*v21 + 704))(v21, v5, v6, v8, &v37, &v36, v9), !v22))
  {
    v24 = IO80211Controller::updateReport(this, v5, v6, v8, v37, v36, v9);
    if (v24)
    {
      AppleBCMWLANCore::updateReportGated(this, v8, &v37, &v36);
    }

    goto LABEL_23;
  }

  v24 = v22;
  v27 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v32 = (*(*this + 1952))(this);
      getClassNameHelper(this);
      CCLogStream::logEmergency(v32, "[dk] %s@%d:DKReporter::%s::%s(%d) ivars->fApStaInterface->updateReport failed count %u offset %llu capacity %llu", "updateReportGated", 54053);
    }
  }

LABEL_40:
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::updateReportGated(this, v27, v8, &v36);
    }
  }

LABEL_23:
  v25 = *(*(this + 9) + 5504);
  if (v25)
  {
    AppleBCMWLANIOReportingCore::accountingForUpdateReport(v25, v24, v23);
  }

  return v24;
}

uint64_t AppleBCMWLANCore::updateReport(AppleBCMWLANCore *this, OSCollection *a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, IOMemoryDescriptor *a7)
{
  v8 = *(this + 9);
  if (*(v8 + 968) == 1)
  {
    result = (*(*this + 1952))(this, a2, a3, a4, a5, a6, a7);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANCore::updateReport();
        return 0;
      }
    }
  }

  else
  {
    v14 = a3;
    v16 = (*(**(v8 + 31064) + 144))(*(v8 + 31064));
    v18 = a2;
    v20 = -1431655766;
    v19 = v14;
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v24 = a7;
    *a4 = 0;
    if (v16)
    {
      return AppleBCMWLANCore::updateReportGated(this, &v18);
    }

    else
    {
      v17 = (*(*this + 104))(this);
      return (*(*v17 + 56))(v17, AppleBCMWLANCore::updateReportGated, &v18, 0, 0, 0);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::configureManagementFrameProtection(AppleBCMWLANCore *this, int a2)
{
  v10 = 0;
  v11 = a2;
  if (!IOParseBootArgNumber("bcom.feature.mfp", &v10, 4))
  {
    goto LABEL_12;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureManagementFrameProtection();
    }
  }

  if (v10)
  {
    AppleBCMWLANCore::featureFlagSetBit(this, 38);
LABEL_12:
    if (AppleBCMWLANCore::featureFlagIsBitSet(this, 38))
    {
      v5 = *(*(this + 9) + 5408);
      v9[0] = &v11;
      v9[1] = 4;
      v6 = AppleBCMWLANCommander::runIOVarSet(v5, "mfp", v9, 0, 0);
      v7 = (*(*this + 1952))(this);
      if (v6)
      {
        if (v7)
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureManagementFrameProtection(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v11, v6);
          }
        }
      }

      else if (v7)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureManagementFrameProtection();
        }
      }
    }

    return 0;
  }

  if (a2 != 2)
  {
    AppleBCMWLANCore::featureFlagClearBit(this, 38);
    v11 = 0;
    goto LABEL_12;
  }

  v4 = 3758097095;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureManagementFrameProtection();
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::setMIMOPowerSaveProperties(AppleBCMWLANCore *a1, uint64_t a2)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(a1, 44);
  if (result)
  {
    v4 = *(*(a1 + 9) + 5520);

    return AppleBCMWLANPowerManager::setMIMOPowerSaveProperties(v4);
  }

  return result;
}

uint64_t AppleBCMWLANCore::setWiFiCallPolicies(AppleBCMWLANCore *a1, uint64_t a2)
{
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setWiFiCallPolicies();
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 44))
  {
    AppleBCMWLANPowerManager::setWiFiCallPowerPolicy(*(*(a1 + 9) + 5520));
  }

  result = (*(*a1 + 1952))(a1);
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::setWiFiCallPolicies();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setReatimeAppPoliciesInternal(AppleBCMWLANCore *this, int a2)
{
  *(*(this + 9) + 30972) = a2;
  if (a2)
  {
    if (*(*(this + 9) + 30088) == 1)
    {
      if (AppleBCMWLANCore::featureFlagIsBitSet(this, 89))
      {
        AppleBCMWLANCore::setRxLatPrioEnabBitmap(this, 127);
      }
    }

    return io80211_os_log("Recommendation Thresholds: per = %u  rssi = %d  roam-rate = %u  td-rate = %u", *(*(this + 9) + 31152), *(*(this + 9) + 31156), *(*(this + 9) + 31160), *(*(this + 9) + 31164));
  }

  else
  {
    result = AppleBCMWLANCore::featureFlagIsBitSet(this, 89);
    if (result)
    {

      return AppleBCMWLANCore::setRxLatPrioEnabBitmap(this, 0);
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setBatterySaveModeConfiguration(AppleBCMWLANCore *a1, _DWORD *a2)
{
  result = AppleBCMWLANCore::isMIMOPowerSaveEnabled(a1);
  if (result)
  {
    result = AppleBCMWLANPowerManager::setBatterySaveModeConfiguration(*(*(a1 + 9) + 5520), a2);
    *(*(a1 + 9) + 16268) = *a2;
  }

  return result;
}

uint64_t AppleBCMWLANCore::getRouterMacAddress(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 3758097090;
  }

  result = 0;
  v4 = *(a1 + 72);
  v5 = *(v4 + 9500);
  LODWORD(v4) = *(v4 + 9496);
  *(a2 + 4) = v5;
  *a2 = v4;
  return result;
}

uint64_t AppleBCMWLANCore::enablePacketTimestamping(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::enablePacketTimestamping();
    }
  }

  IO80211Controller::enablePacketTimestamping(this);
  v2 = *(*(*(*this + 104))(this) + 56);

  return v2();
}

uint64_t AppleBCMWLANCore::disablePacketTimestamping(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::disablePacketTimestamping();
    }
  }

  IO80211Controller::disablePacketTimestamping(this);
  v2 = *(*(*(*this + 104))(this) + 56);

  return v2();
}

uint64_t AppleBCMWLANCore::getLQM_SUMMARY(uint64_t a1, uint64_t a2)
{
  v3 = 31181;
  memcpy((a2 + 160), (*(a1 + 72) + 31181), 0x1000uLL);
  v4 = 16;
  do
  {
    *(*(a1 + 72) + v3) = 0;
    v3 += 256;
    --v4;
  }

  while (v4);
  return 0;
}

OSStringPtr AppleBCMWLANCore::newModelString(AppleBCMWLANCore *this)
{
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  *__str = 0u;
  v7 = 0u;
  memset(__dst, 0, sizeof(__dst));
  v1 = *(*(this + 9) + 5392);
  if (v1)
  {
    v2 = (*(*v1 + 368))(v1);
    strcpy(__dst, "802.11 a/b/g/n/ac");
    if (v2 == 4378 || v2 == 4368)
    {
      strlcat(__dst, "/ax", 0x20uLL);
    }
  }

  else
  {
    strcpy(__dst, "802.11 a/b/g/n/ac");
  }

  snprintf(__str, 0x100uLL, "Wireless Network Adapter (%s)", __dst);
  return OSString::withCString(__str);
}

uint64_t AppleBCMWLANCore::setLMTPCCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::setLMTPCCallback();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setConcurrencyState(void *a1, char a2, int a3)
{
  v4 = a1[9];
  v5 = *(v4 + 19801);
  v6 = v5 | a2;
  v7 = v5 & ~a2;
  if (a3)
  {
    v7 = v6;
  }

  *(v4 + 19801) = v7;
  result = (*(*a1 + 1952))();
  if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::setConcurrencyState();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::isOpModeAllowed(AppleBCMWLANCore *a1, unsigned int a2)
{
  if ((*(*(a1 + 9) + 19801) & a2) != 0)
  {
    v2 = 1;
    return v2 & 1;
  }

  IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(a1, 70);
  v6 = *(*(a1 + 9) + 19801);
  if ((IsBitSet & 1) == 0)
  {
    v8 = v6 == 0;
    v9 = (v6 & 4) == 0;
    if (a2 == 2)
    {
      v2 = v9;
    }

    else
    {
      v2 = v8;
    }

    goto LABEL_36;
  }

  v7 = v6 & 0xFFFFFFEF;
  if (v7 <= 4)
  {
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        if (v7 != 4)
        {
          goto LABEL_29;
        }

        v2 = a2 - 1 < 2;
        goto LABEL_36;
      }

      v10 = a2 == 4 || a2 == 1;
    }

    else
    {
      if (!v7)
      {
LABEL_27:
        v2 = 1;
        goto LABEL_36;
      }

      if (v7 != 1)
      {
LABEL_29:
        v2 = 0;
        goto LABEL_36;
      }

      v10 = ((a2 - 2) & 0xFFFFFFFD) == 0;
    }

LABEL_33:
    v2 = v10;
    goto LABEL_36;
  }

  if (v7 > 8)
  {
    if (v7 != 9 && v7 != 12)
    {
      if (v7 != 13)
      {
        goto LABEL_29;
      }

LABEL_25:
      if (a2 == 2)
      {
        (*(*a1 + 1208))(a1, 0);
        goto LABEL_27;
      }

      goto LABEL_29;
    }

    v10 = a2 == 2;
    goto LABEL_33;
  }

  if (v7 == 5)
  {
    goto LABEL_25;
  }

  if (v7 != 8)
  {
    goto LABEL_29;
  }

  if (a2 >= 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0x16u >> a2;
  }

LABEL_36:
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v12 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v12, "[dk] %s@%d:%s: OpMode current state:%d  requested %d status %d", "isOpModeAllowed", 54977, "isOpModeAllowed", *(*(a1 + 9) + 19801), a2, v2 & 1);
    }
  }

  return v2 & 1;
}

uint64_t AppleBCMWLANCore::destroySkywalkInterface(uint64_t this, uint64_t a2)
{
  v2 = a2;
  result = (*(*this + 1992))(this);
  if (result)
  {
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::destroySkywalkInterface(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v2);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setWCL_JOIN_ABORT(uint64_t a1, _DWORD *a2)
{
  v2 = *(*(a1 + 72) + 5416);
  if (a2)
  {
    LODWORD(a2) = *a2 != 0;
  }

  return AppleBCMWLANJoinAdapter::abortFirmwareJoinSync(v2, a2);
}

uint64_t AppleBCMWLANCore::setWCL_TRIGGER_CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 1)
  {
    return AppleBCMWLANJoinAdapter::triggerCC(*(*(a1 + 72) + 5416), a2);
  }

  if (v2)
  {
    return 3758097084;
  }

  return AppleBCMWLANScanAdapter::triggerCC(*(*(a1 + 72) + 5424), a2);
}

uint64_t AppleBCMWLANCore::setRADIO_CHANSEQ_CONTROL(void *a1, _BYTE *a2)
{
  if (*a2)
  {
    if (!*(a1[9] + 11296))
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRADIO_CHANSEQ_CONTROL();
        }
      }

      return 6;
    }

    v4 = a2 + 4;
  }

  else
  {
    v4 = 0;
  }

  v5 = a1[9];
  if (a2[1])
  {
    if (!*(v5 + 29944))
    {
      if ((*(*a1 + 1952))(a1, v4))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRADIO_CHANSEQ_CONTROL();
        }
      }

      return 6;
    }

    v6 = a2 + 404;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v5 + 11296);
  if (!v7)
  {
    if ((*(*a1 + 1952))(a1, v4, v6))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRADIO_CHANSEQ_CONTROL();
      }
    }

    return 6;
  }

  return AppleBCMWLANProximityInterface::buildChanSequenceCommand(v7, v4, v6);
}

uint64_t AppleBCMWLANCore::setRC2CoexMode(uint64_t this, int *a2)
{
  memset(v9, 170, sizeof(v9));
  v3 = IOMallocZeroData();
  if (v3)
  {
    *v3 = 16875520;
    *(v3 + 4) = 1;
    *(v3 + 8) = 1;
    *(v3 + 12) = *(*(this + 72) + 10712) != 0;
    *(v3 + 6) = 8;
    v10[0] = v3;
    v10[1] = 16;
    v4 = (*(*this + 88))(this);
    if ((*(*v4 + 136))(v4))
    {
      v9[0] = this;
      v9[1] = AppleBCMWLANCore::handleRC2CoexModeAsyncCallback;
      v9[2] = 0;
      v5 = AppleBCMWLANCommander::sendIOVarSet(*(*(this + 72) + 5408), "rc2cx", v10, kNoRxExpected, v9, 0);
    }

    else
    {
      v5 = AppleBCMWLANCommander::runIOVarSet(*(*(this + 72) + 5408), "rc2cx", v10, 0, 0);
    }

    v6 = v5;
    v7 = (*(*this + 1952))(this);
    if (v6)
    {
      if (v7)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRC2CoexMode();
        }
      }
    }

    else if (v7)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRC2CoexMode(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, this + 72);
      }
    }

    IOFreeData();
  }

  else
  {
    v6 = 3758097085;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRC2CoexMode();
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::handleRC2CoexModeAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result, a2, a3, a4);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleRC2CoexModeAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setRC2CoexPMProtectionMode(void *this, int *a2)
{
  memset(v8, 170, sizeof(v8));
  v3 = IOMallocZeroData();
  if (v3)
  {
    *v3 = 16875520;
    *(v3 + 4) = 2;
    *(v3 + 8) = 1;
    *(v3 + 12) = *(this[9] + 10716) != 0;
    *(v3 + 6) = 8;
    v9[0] = v3;
    v9[1] = 16;
    v4 = (*(*this + 88))(this);
    if ((*(*v4 + 136))(v4))
    {
      v8[0] = this;
      v8[1] = AppleBCMWLANCore::handleRC2PMProtectionModeAsyncCallback;
      v8[2] = 0;
      v5 = AppleBCMWLANCommander::sendIOVarSet(*(this[9] + 5408), "rc2cx", v9, kNoRxExpected, v8, 0);
    }

    else
    {
      v5 = AppleBCMWLANCommander::runIOVarSet(*(this[9] + 5408), "rc2cx", v9, 0, 0);
    }

    v6 = v5;
    if (v5)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRC2CoexPMProtectionMode();
        }
      }
    }

    IOFreeData();
  }

  else
  {
    v6 = 3758097085;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRC2CoexPMProtectionMode();
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::handleRC2PMProtectionModeAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result, a2, a3, a4);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleRC2PMProtectionModeAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setRC2CoexCTS2Sconfig(void *this, int *a2)
{
  memset(v8, 170, sizeof(v8));
  v3 = IOMallocZeroData();
  if (v3)
  {
    *v3 = 16875520;
    *(v3 + 4) = 3;
    *(v3 + 8) = 1;
    *(v3 + 12) = *(this[9] + 10722);
    *(v3 + 13) = *(this[9] + 10723);
    *(v3 + 14) = *(this[9] + 10724);
    *(v3 + 6) = 8;
    v9[0] = v3;
    v9[1] = 16;
    v4 = (*(*this + 88))(this);
    if ((*(*v4 + 136))(v4))
    {
      v8[0] = this;
      v8[1] = AppleBCMWLANCore::handleRC2CoexCTS2SconfigAsyncCallback;
      v8[2] = 0;
      v5 = AppleBCMWLANCommander::sendIOVarSet(*(this[9] + 5408), "rc2cx", v9, kNoRxExpected, v8, 0);
    }

    else
    {
      v5 = AppleBCMWLANCommander::runIOVarSet(*(this[9] + 5408), "rc2cx", v9, 0, 0);
    }

    v6 = v5;
    if (v5)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRC2CoexCTS2Sconfig();
        }
      }
    }

    IOFreeData();
  }

  else
  {
    v6 = 3758097085;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRC2CoexCTS2Sconfig();
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::handleRC2CoexCTS2SconfigAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    result = (*(*result + 1952))(result, a2, a3, a4);
    if (result)
    {
      (*(*v7 + 1952))(v7);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleRC2CoexCTS2SconfigAsyncCallback(v7, v7 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, a5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setRC1CoexMode(void *this, int *a2)
{
  v3 = this[9];
  v8 = *(v3 + 10704);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "rc1coex_mode", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRC1CoexMode();
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::updateDataPathActivityTimestamp(AppleBCMWLANCore *this, unint64_t a2)
{
  v2 = a2;
  v6 = a2;
  result = IO80211BssManager::isAssociated(*(*(this + 9) + 5432));
  v5 = *(this + 9);
  if (result)
  {
    if (*(v5 + 6232))
    {
      result = AppleBCMWLANCore::timeSinceLastActivity_abs(this, &v6);
      v5 = *(this + 9);
      if (result >= *(v5 + 6552))
      {
        result = (*(**(v5 + 6232) + 56))(*(v5 + 6232), 2000);
        v2 = v6;
        v5 = *(this + 9);
      }
    }
  }

  *(v5 + 6536) = v2;
  return result;
}

uint64_t AppleBCMWLANCore::handleDataPathActivity(AppleBCMWLANCore *this)
{
  AppleBCMWLANCore::updateInactivityAndSleepCounters(this, 1);
  result = *(this + 9);
  if (*(result + 6724))
  {
    return AppleBCMWLANCore::handleDataPathActivity();
  }

  return result;
}

AppleBCMWLANIO80211APSTAInterface *AppleBCMWLANCore::setSoftAPPowerState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(*(a1 + 72) + 11304);
  if (result)
  {
    return AppleBCMWLANIO80211APSTAInterface::setPowerSaveState(result, a2, a3);
  }

  return result;
}

uint64_t AppleBCMWLANCore::requestBlockScan(AppleBCMWLANCore *this, int a2, uint64_t a3)
{
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v10 = (*(*this + 1952))(this);
      CCLogStream::logNotice(v10, "[dk] %s@%d: %s: Requesting for Scan Block: %d %llu\n", "requestBlockScan", 55730, "requestBlockScan", a2, a3);
    }
  }

  v6 = a3 + (((0 * 0x431BDE82D7B634DBuLL) >> 64) >> 18);
  mach_continuous_time();
  result = absolutetime_to_nanoseconds();
  v8 = *(this + 9);
  v9 = *(v8 + 19808);
  if (!v9)
  {
    *(v8 + 19808) = 0;
    *(*(this + 9) + 19816) = 0;
    v8 = *(this + 9);
    v9 = *(v8 + 19808);
  }

  if (v9 < v6)
  {
    *(v8 + 19808) = v6;
    *(*(this + 9) + 19816) |= 1 << a2;
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleConfigureAvgRssiParamsAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleConfigureAvgRssiParamsAsyncCallback();
      }
    }
  }

  return result;
}

void *AppleBCMWLANCore::handleGetDtimParam(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = result;
  if (a3)
  {
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v4 + 1952))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleGetDtimParam();
      }
    }
  }

  else if (*a4)
  {
    *(result[9] + 10364) = **a4;
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v4 + 1952))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleGetDtimParam();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setHp2pCtrlCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    if (*(a2 + 8))
    {
      v5 = *(a2 + 8);
    }

    else
    {
      v5 = "(null)";
    }

    result = (*(*result + 1952))(result);
    if (result)
    {
      (*(*v4 + 1952))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::setHp2pCtrlCallback(v4, v4 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, a3, v5);
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setHP2P_CTRL(uint64_t a1, uint64_t a2)
{
  memset(v12, 170, sizeof(v12));
  v4 = IOMallocZeroData();
  if (((*(**(*(a1 + 72) + 5392) + 800))() & 1) == 0)
  {
    AppleBCMWLANCore::setHP2P_CTRL();
    goto LABEL_13;
  }

  if (!a2)
  {
    AppleBCMWLANCore::setHP2P_CTRL();
LABEL_13:
    v10 = v13;
    if (!v4)
    {
      return v10;
    }

    goto LABEL_9;
  }

  if (!v4)
  {
    AppleBCMWLANCore::setHP2P_CTRL();
    return v13;
  }

  *v4 = 16875520;
  *(v4 + 4) = 8;
  *(v4 + 8) = 1;
  *(v4 + 12) = 1;
  *(v4 + 16) = 8;
  if (*(*(a1 + 72) + 221) == 1)
  {
    *(v4 + 18) = 4;
    *(v4 + 20) = *(a2 + 4);
    v5 = 24;
  }

  else
  {
    v5 = 16;
  }

  *(v4 + 6) = v5 - 8;
  *v12 = a1;
  *&v12[8] = AppleBCMWLANCore::setHp2pCtrlCallback;
  *&v12[16] = 0;
  *&v12[24] = v4;
  *&v12[32] = v5;
  v6 = *(a1 + 72);
  v7 = *(v6 + 5408);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(v6 + 11296));
  v9 = AppleBCMWLANCommander::sendVirtualIOVarSet(v7, InterfaceId, "hp2p", &v12[24], kNoRxExpected, v12, 0);
  v10 = 0;
  if (v9)
  {
    AppleBCMWLANCore::setHP2P_CTRL();
    v10 = v13;
  }

LABEL_9:
  IOFreeData();
  return v10;
}

uint64_t AppleBCMWLANCore::setBSS_BLACKLIST(AppleBCMWLANCore *a1, __int128 *a2)
{
  if (a2)
  {
    v3 = a1 + 72;
    v4 = (*(a1 + 9) + 17858);
    *(v4 + 27) = 0u;
    *v4 = 0u;
    v4[1] = 0u;
    v5 = (*(a1 + 9) + 17858);
    v6 = *a2;
    v7 = a2[1];
    *(v5 + 27) = *(a2 + 27);
    *v5 = v6;
    v5[1] = v7;
    v8 = *(*(a1 + 9) + 17858);
    v9 = (*(*a1 + 1952))(a1);
    if (v8)
    {
      if (v9)
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setBSS_BLACKLIST();
        }
      }

      if (*(*v3 + 17858))
      {
        v10 = 0;
        do
        {
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::setBSS_BLACKLIST();
            }
          }

          ++v10;
        }

        while (v10 < *(*v3 + 17858));
      }

      v11 = a1;
      v12 = 3;
    }

    else
    {
      if (v9)
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setBSS_BLACKLIST();
        }
      }

      v11 = a1;
      v12 = 0;
    }

    AppleBCMWLANCore::setBssBlacklistMode(v11, v12);
    AppleBCMWLANCore::getBssBlacklistModeAsync(a1);
    AppleBCMWLANCore::setBssBlacklist(a1, (*(a1 + 9) + 17858));
    AppleBCMWLANCore::getBssBlacklistAsyncGated(a1);
    return 0;
  }

  else
  {
    v13 = 3758097084;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setBSS_BLACKLIST();
      }
    }
  }

  return v13;
}

uint64_t AppleBCMWLANCore::setBssBlacklistMode(void *this, uint64_t a2)
{
  v9 = a2;
  *&v7 = this;
  *(&v7 + 1) = AppleBCMWLANCore::setBssBlacklistModeAsyncCallback;
  v8 = 0;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setBssBlacklistMode();
    }
  }

  v3 = *(this[9] + 5408);
  v6[0] = &v9;
  v6[1] = 4;
  v4 = AppleBCMWLANCommander::sendIOCtlSet(v3, 106, v6, kNoRxExpected, &v7, 0);
  if (v4)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setBssBlacklistMode();
      }
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::getBssBlacklistModeAsync(void *this)
{
  *&v6 = this;
  *(&v6 + 1) = AppleBCMWLANCore::getBssBlacklistModeAsyncCallback;
  v7 = 0;
  v2 = *(this[9] + 5408);
  v5 = 262148;
  v3 = AppleBCMWLANCommander::sendIOCtlGet(v2, 105, &kNoTxPayload, &v5, &v6, 0);
  if (v3)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getBssBlacklistModeAsync();
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANCore::setBssBlacklist(void *a1, _BYTE *a2)
{
  *&v19 = a1;
  *(&v19 + 1) = AppleBCMWLANCore::setBssBlacklistAsyncCallback;
  v20 = 0;
  if (*a2 < 8u)
  {
    if (*a2)
    {
      v5 = 6 * *a2 + 4;
      v6 = IOMallocZeroData();
      if (v6)
      {
        v7 = v6;
        v8 = *a2;
        *v6 = v8;
        if (v8)
        {
          v9 = 0;
          v10 = 0;
          do
          {
            v11 = v6 + v9;
            v12 = *&a2[v9 + 1];
            *(v11 + 4) = *&a2[v9 + 5];
            *(v11 + 1) = v12;
            ++v10;
            v9 += 6;
          }

          while (v10 < *a2);
          if (*v6)
          {
            if ((*(*a1 + 1952))(a1))
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::setBssBlacklist();
              }
            }

            if (*v7)
            {
              v13 = 0;
              do
              {
                if ((*(*a1 + 1952))(a1))
                {
                  (*(*a1 + 1952))(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::setBssBlacklist();
                  }
                }

                ++v13;
              }

              while (v13 < *v7);
            }
          }
        }

        v14 = *(a1[9] + 5408);
        v17 = v7;
        v18 = v5;
        v4 = AppleBCMWLANCommander::sendIOCtlSet(v14, 70, &v17, kNoRxExpected, &v19, 0);
        if (v4)
        {
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::setBssBlacklist();
            }
          }
        }

        IOFreeData();
      }

      else
      {
        return 12;
      }
    }

    else
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setBssBlacklist();
        }
      }

      v22 = 0;
      v21 = 0;
      v15 = *(a1[9] + 5408);
      v17 = &v21;
      v18 = 12;
      v4 = AppleBCMWLANCommander::sendIOCtlSet(v15, 70, &v17, kNoRxExpected, &v19, 0);
      if (v4)
      {
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setBssBlacklist();
          }
        }
      }
    }
  }

  else
  {
    v4 = 3758097090;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setBssBlacklist();
      }
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::getBssBlacklistAsyncGated(void *this)
{
  *&v6 = this;
  *(&v6 + 1) = AppleBCMWLANCore::getBssBlacklistAsyncCallback;
  v7 = 0;
  v2 = *(this[9] + 5408);
  v5 = 67108876;
  v3 = AppleBCMWLANCommander::sendIOCtlGet(v2, 69, &kNoTxPayload, &v5, &v6, 0);
  if (v3)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getBssBlacklistAsyncGated();
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANCore::setBssBlacklistAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::setBssBlacklistAsyncCallback();
      }
    }
  }

  return result;
}

IO80211Controller *AppleBCMWLANCore::getBssBlacklistAsyncCallback(IO80211Controller *result, uint64_t a2, uint64_t a3, _DWORD **a4)
{
  v4 = result;
  if (a3)
  {
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v4 + 1952))(v4);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::getBssBlacklistAsyncCallback();
      }
    }
  }

  else
  {
    v5 = *a4;
    if (*a4)
    {
      result = (*(*result + 1952))(result, a2);
      if (result)
      {
        (*(*v4 + 1952))(v4);
        result = CCLogStream::shouldLog();
        if (result)
        {
          result = AppleBCMWLANCore::getBssBlacklistAsyncCallback();
        }
      }

      if (*v5)
      {
        v6 = 0;
        do
        {
          result = (*(*v4 + 1952))(v4);
          if (result)
          {
            (*(*v4 + 1952))(v4);
            result = CCLogStream::shouldLog();
            if (result)
            {
              result = AppleBCMWLANCore::getBssBlacklistAsyncCallback();
            }
          }

          ++v6;
          v7 = *v5;
        }

        while (v6 < v7);
        if (v7)
        {
          v8 = *(*(v4 + 9) + 11288);

          return IO80211Controller::postMessage(v4, v8, 0xA3u, v5, 6 * (v7 - 1) + 12, 1);
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::getBSS_BLACKLIST(uint64_t a1)
{
  v1 = *(*(*(*a1 + 104))(a1) + 56);

  return v1();
}

uint64_t AppleBCMWLANCore::setBssBlacklistModeAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::setBssBlacklistModeAsyncCallback();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::getBssBlacklistModeAsyncCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  result = (*(*a1 + 1952))(a1, a2);
  if (v4)
  {
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::getBssBlacklistModeAsyncCallback();
      }
    }
  }

  else if (result)
  {
    (*(*a1 + 1952))(a1);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::getBssBlacklistModeAsyncCallback();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleSetEntropyForRNGAsyncCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
    result = (*(*result + 1952))(result, a2);
    if (result)
    {
      (*(*v3 + 1952))(v3);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::handleSetEntropyForRNGAsyncCallback();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::setDBRG_ENTROPY(AppleBCMWLANCore *a1, uint64_t a2)
{
  v4 = IOMallocZeroData();
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  if (a2)
  {
    if (AppleBCMWLANCore::featureFlagIsBitSet(a1, 81))
    {
      *v5 = 1;
      *(v5 + 6) = 4194370;
      v6 = *(a2 + 120);
      v7 = *(a2 + 136);
      v8 = *(a2 + 152);
      *(v5 + 58) = *(a2 + 168);
      *(v5 + 42) = v8;
      *(v5 + 26) = v7;
      *(v5 + 10) = v6;
      v9 = (*(*a1 + 88))(a1);
      if ((*(*v9 + 136))(v9))
      {
        v16 = a1;
        v17 = AppleBCMWLANCore::handleSetEntropyForRNGAsyncCallback;
        v18 = 0;
        v10 = *(*(a1 + 9) + 5408);
        v15[0] = v5;
        v15[1] = 74;
        v11 = AppleBCMWLANCommander::sendIOVarSet(v10, "rng", v15, kNoRxExpected, &v16, 0);
      }

      else
      {
        v13 = *(*(a1 + 9) + 5408);
        v16 = v5;
        v17 = 74;
        v11 = AppleBCMWLANCommander::runIOVarSet(v13, "rng", &v16, 0, 0);
      }

      v12 = v11;
      if (v11)
      {
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setDBRG_ENTROPY();
          }
        }
      }
    }

    else
    {
      v12 = 3758097095;
    }
  }

  else
  {
    v12 = 3758096385;
  }

  IOFreeData();
  return v12;
}

uint64_t AppleBCMWLANCore::isP2pAirplayActive(void *this)
{
  v2 = this[9];
  v3 = *(v2 + 11296);
  if (v3)
  {

    return AppleBCMWLANProximityInterface::isAirplayActive(v3);
  }

  else
  {
    HIDWORD(v5) = 652835029 * *(v2 + 31060);
    LODWORD(v5) = HIDWORD(v5);
    if ((v5 >> 3) <= 0x418937)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::isP2pAirplayActive();
        }
      }
    }

    ++*(this[9] + 31060);
    return 0;
  }
}

BOOL AppleBCMWLANCore::mapLowLatencyLowPriority(void *this)
{
  v2 = this[9];
  v3 = *(v2 + 11296);
  if (v3)
  {

    return AppleBCMWLANProximityInterface::isAirplayLlwMapToLowPriority(v3);
  }

  else
  {
    HIDWORD(v5) = 652835029 * *(v2 + 31060);
    LODWORD(v5) = HIDWORD(v5);
    if ((v5 >> 3) <= 0x418937)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::mapLowLatencyLowPriority();
        }
      }
    }

    ++*(this[9] + 31060);
    return 0;
  }
}

BOOL AppleBCMWLANCore::isLlwRequeueEnabled(void *this)
{
  v2 = this[9];
  v3 = *(v2 + 11296);
  if (v3)
  {

    return AppleBCMWLANProximityInterface::isLlwRequeueEnabled(v3);
  }

  else
  {
    HIDWORD(v5) = 652835029 * *(v2 + 31060);
    LODWORD(v5) = HIDWORD(v5);
    if ((v5 >> 3) <= 0x418937)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::isLlwRequeueEnabled();
        }
      }
    }

    ++*(this[9] + 31060);
    return 0;
  }
}

uint64_t AppleBCMWLANCore::getCUR_PMK(void *a1, uint64_t a2)
{
  isDevFusedOrCSRInternal = AppleBCMWLAN_isDevFusedOrCSRInternal();
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::getCUR_PMK();
    }
  }

  if (!isDevFusedOrCSRInternal)
  {
    return 3758097095;
  }

  if ((allowWiFiDebug(void)::checked & 1) == 0)
  {
    allowWiFiDebug(void)::checked = 1;
    IOParseBootArgNumber("wlan.debug.enable", &allowWiFiDebug(void)::debugEnasbled, 4);
  }

  result = 3758097095;
  if (allowWiFiDebug(void)::debugEnasbled)
  {
    isAssociated = IO80211BssManager::isAssociated(*(a1[9] + 5432));
    result = 3758097136;
    if (a2)
    {
      if (isAssociated)
      {
        v7 = a1[9];
        v8 = *(v7 + 288);
        if ((v8 - 1) > 0x3F)
        {
          return 3758097084;
        }

        else
        {
          memcpy((a2 + 8), (v7 + 223), v8);
          result = 0;
          *(a2 + 4) = *(a1[9] + 288);
          *(a2 + 76) = *(a1[9] + 292);
          *(a2 + 72) = 16;
        }
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::saveCUR_PMK(void *a1, uint64_t a2)
{
  v4 = 3758097095;
  if (AppleBCMWLAN_isDevFusedOrCSRInternal())
  {
    if ((allowWiFiDebug(void)::checked & 1) == 0)
    {
      allowWiFiDebug(void)::checked = 1;
      IOParseBootArgNumber("wlan.debug.enable", &allowWiFiDebug(void)::debugEnasbled, 4);
    }

    if (allowWiFiDebug(void)::debugEnasbled)
    {
      isAssociated = IO80211BssManager::isAssociated(*(a1[9] + 5432));
      v4 = 3758097136;
      if (a2)
      {
        if (isAssociated)
        {
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::saveCUR_PMK();
            }
          }

          v6 = *(a2 + 4);
          if (v6 > 0x40)
          {
            return 3758097084;
          }

          else
          {
            memcpy((a1[9] + 223), (a2 + 16), *(a2 + 4));
            *(a1[9] + 288) = *(a2 + 4);
            v7 = a1[9];
            *(v7 + 292) = 0;
            *(v7 + 300) = 0;
            if ((*(*a1 + 1952))(a1))
            {
              (*(*a1 + 1952))(a1);
              if (CCLogStream::shouldLog())
              {
                v10 = (*(*a1 + 1952))(a1);
                CCLogStream::logAlert(v10, "[dk] %s@%d:Save PMK: ok Len:%d TLV_LEN:%d\n", "saveCUR_PMK", 56700, *(a2 + 4), v6 >> 4);
              }
            }

            if (v6 >= 0x10)
            {
              v9 = 0;
              do
              {
                if ((*(*a1 + 1952))(a1))
                {
                  (*(*a1 + 1952))(a1);
                  if (CCLogStream::shouldLog())
                  {
                    AppleBCMWLANCore::saveCUR_PMK();
                  }
                }

                ++v9;
              }

              while (v6 >> 4 != v9);
            }

            return 0;
          }
        }
      }
    }
  }

  return v4;
}

double AppleBCMWLANCore::clearPmk(AppleBCMWLANCore *this)
{
  *(*(this + 9) + 288) = 0;
  v1 = *(this + 9);
  result = 0.0;
  *(v1 + 223) = 0u;
  v1 = (v1 + 223);
  v1[2] = 0u;
  v1[3] = 0u;
  v1[1] = 0u;
  return result;
}

uint64_t AppleBCMWLANCore::checkForDigitalNapSupport(AppleBCMWLANCore *this)
{
  v1 = *(this + 9);
  if (*(v1 + 10369) == 1)
  {
    return AppleBCMWLANConfigManager::isDigitalNapSupportedInDriver(*(v1 + 5464));
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANCore::isControllerRegisteredAndPoweredOn(AppleBCMWLANCore *this)
{
  v1 = *(*(this + 9) + 31064);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = ___ZN16AppleBCMWLANCore34isControllerRegisteredAndPoweredOnEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_3166;
  v3[4] = this;
  return (*(*v1 + 112))(v1, v3);
}

uint64_t ___ZN16AppleBCMWLANCore34isControllerRegisteredAndPoweredOnEv_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 72) + 28672;
  v2 = *(*(*(a1 + 32) + 72) + 30013) ^ 1;
  if (*(*(*(a1 + 32) + 72) + 30013))
  {
    result = 0;
  }

  else
  {
    result = 3758097112;
  }

  *(v1 + 1340) = v2;
  return result;
}

uint64_t AppleBCMWLANCore::setTXQueueEnabled(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  *(*(this + 72) + 10376) = *(*(this + 72) + 10376) & 0xFFFEFFFF | v2;
  return this;
}

uint64_t AppleBCMWLANCore::wasDynSARInFailSafeMode(unint64_t this)
{
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::wasDynSARInFailSafeMode();
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::qosSetIOVar(AppleBCMWLANCore *this, const char *a2, __int16 a3, void *a4, unsigned int a5)
{
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 95) && (*(*(this + 9) + 30081) & 1) != 0)
  {
    v10 = IOMallocZeroData();
    if (v10)
    {
      v11 = v10;
      *v10 = 1;
      v10[1] = a5;
      v10[2] = a3;
      memcpy(v10 + 3, a4, a5);
      v12 = *(*(this + 9) + 5408);
      if (a5 == 0xFFFA)
      {
        v13 = 0;
      }

      else
      {
        v13 = v11;
      }

      *buf = v13;
      *v18 = (a5 + 6);
      v14 = AppleBCMWLANCommander::runIOVarSet(v12, "qos_mgmt", buf, 0, 0);
      if (v14)
      {
        if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67110146;
            *&buf[4] = 65;
            *v18 = 2080;
            *&v18[2] = "qosSetIOVar";
            v19 = 1024;
            v20 = 58094;
            v21 = 2080;
            v22 = a2;
            v23 = 1024;
            v24 = v14;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: Failed to runIOVarSet(qos_mgmt, %s) = 0x%x\n", buf, 0x28u);
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            v16 = (*(*this + 1952))(this);
            CCLogStream::logAlert(v16, "[dk] %s@%d:WiFi-QoS: Failed to runIOVarSet(qos_mgmt, %s) = 0x%x\n", "qosSetIOVar", 58094, a2, v14);
          }
        }
      }

      IOFreeData();
    }

    else
    {
      AppleBCMWLANCore::qosSetIOVar(this, a2, buf);
      return *buf;
    }
  }

  else
  {
    if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        *&buf[4] = 65;
        *v18 = 2080;
        *&v18[2] = "qosSetIOVar";
        v19 = 1024;
        v20 = 58077;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: QoS Management is disabled\n", buf, 0x18u);
      }
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::qosSetIOVar();
      }
    }

    return 0;
  }

  return v14;
}

uint64_t AppleBCMWLANCore::enableQoSMgmtMSCS(AppleBCMWLANCore *this, uint64_t a2)
{
  v2 = a2;
  v5 = a2;
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 95) && (*(*(this + 9) + 30081) & 1) != 0)
  {
    if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109890;
        v7 = 65;
        v8 = 2080;
        v9 = "enableQoSMgmtMSCS";
        v10 = 1024;
        v11 = 58116;
        v12 = 1024;
        v13 = v2;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: QoS Management enableFlags = %u\n", buf, 0x1Eu);
      }
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::enableQoSMgmtMSCS();
      }
    }

    return AppleBCMWLANCore::qosSetIOVar(this, "WL_QOS_CMD_ENABLE", 1, &v5, 2u);
  }

  else
  {
    if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        v7 = 65;
        v8 = 2080;
        v9 = "enableQoSMgmtMSCS";
        v10 = 1024;
        v11 = 58112;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: QoS Management is disabled\n", buf, 0x18u);
      }
    }

    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANCore::enableQoSMgmtMSCS();
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::confiQoSMgmtMSCS(uint64_t this, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v11 = 0;
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 95) && (*(*(this + 72) + 30081) & 1) != 0)
  {
    v7 = 0xEA6000100001;
    v8 = 2032;
    v9 = 4;
    v10 = v4;
    LOBYTE(v11) = v3;
    if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110146;
        v13 = 65;
        v14 = 2080;
        v15 = "confiQoSMgmtMSCS";
        v16 = 1024;
        v17 = 58146;
        v18 = 1024;
        v19 = v3;
        v20 = 1024;
        v21 = v4;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: qosReqType=%d qosFCMask=0x%x\n", buf, 0x24u);
      }
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::confiQoSMgmtMSCS(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3, v4);
      }
    }

    return AppleBCMWLANCore::qosSetIOVar(this, "WL_QOS_CMD_RAV_MSCS", 2, &v7, 0x10u);
  }

  else
  {
    if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        v13 = 65;
        v14 = 2080;
        v15 = "confiQoSMgmtMSCS";
        v16 = 1024;
        v17 = 58133;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: QoS Management is disabled\n", buf, 0x18u);
      }
    }

    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANCore::confiQoSMgmtMSCS();
        return 0;
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::initQoSMgmtMSCS(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(this, 95);
  if (result)
  {
    if (*(*(this + 9) + 30081))
    {
      v5 = -1431655766;
      if (IOParseBootArgNumber("wlan.qos.enableFlags", &v5, 4))
      {
        v3 = v5;
        if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109890;
            v7 = 65;
            v8 = 2080;
            v9 = "initQoSMgmtMSCS";
            v10 = 1024;
            v11 = 58173;
            v12 = 1024;
            v13 = v3;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: boot-arg wlan.qos.enableFlags=%d\n", buf, 0x1Eu);
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::initQoSMgmtMSCS();
          }
        }
      }

      else
      {
        v3 = 1;
      }

      AppleBCMWLANCore::enableQoSMgmtMSCS(this, v3);
      if (IOParseBootArgNumber("wlan.qos.FCMask", &v5, 4))
      {
        v4 = v5;
        if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109890;
            v7 = 65;
            v8 = 2080;
            v9 = "initQoSMgmtMSCS";
            v10 = 1024;
            v11 = 58180;
            v12 = 1024;
            v13 = v4;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: boot-arg wlan.qos.FCMask=0x%x\n", buf, 0x1Eu);
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::initQoSMgmtMSCS();
          }
        }
      }

      else
      {
        v4 = 95;
      }

      *(*(this + 9) + 30084) = v4;
      result = IO80211BssManager::isAssociated(*(*(this + 9) + 5432));
      if ((result & 1) == 0)
      {
        result = AppleBCMWLANCore::confiQoSMgmtMSCS(this, v4, 0);
      }
    }

    else
    {
      result = AppleBCMWLANCore::enableQoSMgmtMSCS(this, 0);
    }

    *(*(this + 9) + 30082) = 0;
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendQoSMgmtMSCSReq(AppleBCMWLANCore *this, int a2)
{
  v4 = *(this + 9);
  v5 = *(v4 + 30084);
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(*(v4 + 5432));
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 95) && (*(*(this + 9) + 30081) & 1) != 0)
  {
    if ((*(*CurrentBSS + 656))(CurrentBSS))
    {
      if (a2 && *(*(this + 9) + 30082))
      {
        if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v8 = 67109634;
            v9 = 65;
            v10 = 2080;
            v11 = "sendQoSMgmtMSCSReq";
            v12 = 1024;
            v13 = 58211;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: QoS MSCS is already active\n", &v8, 0x18u);
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::sendQoSMgmtMSCSReq();
          }
        }
      }

      else if (a2 || (*(*(this + 9) + 30082) & 1) != 0)
      {
        AppleBCMWLANCore::confiQoSMgmtMSCS(this, v5, a2 == 0);
      }

      else
      {
        if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            v8 = 67109634;
            v9 = 65;
            v10 = 2080;
            v11 = "sendQoSMgmtMSCSReq";
            v12 = 1024;
            v13 = 58215;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: QoS MSCS is already terminated\n", &v8, 0x18u);
          }
        }

        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::sendQoSMgmtMSCSReq();
          }
        }
      }
    }

    else
    {
      if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 67109634;
          v9 = 65;
          v10 = 2080;
          v11 = "sendQoSMgmtMSCSReq";
          v12 = 1024;
          v13 = 58206;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: AP does not support QoS MSCS\n", &v8, 0x18u);
        }
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::sendQoSMgmtMSCSReq();
        }
      }
    }
  }

  else
  {
    if (!(*(*this + 1952))(this) || ((*(*this + 1952))(this), (CCLogStream::shouldLogConsole() & 1) == 0))
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 67109634;
        v9 = 65;
        v10 = 2080;
        v11 = "sendQoSMgmtMSCSReq";
        v12 = 1024;
        v13 = 58201;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%c [dk] %s@%d: WiFi-QoS: QoS Management is disabled\n", &v8, 0x18u);
      }
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::sendQoSMgmtMSCSReq();
      }
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::collectRealTimeAppCongestionState(void *this)
{
  v2 = this + 9;
  if (*(this[9] + 30092) == 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 35344;
    v6 = 5;
    do
    {
      v7 = *(*v2 + v5 - 40);
      v8 = __CFADD__(v4, v7);
      v4 += v7;
      if (v8)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::collectRealTimeAppCongestionState();
          }
        }
      }

      v9 = *(*v2 + v5);
      v8 = __CFADD__(v3, v9);
      v3 += v9;
      if (v8)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::collectRealTimeAppCongestionState();
          }
        }
      }

      v5 += 8;
      --v6;
    }

    while (v6);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::collectRealTimeAppCongestionState();
      }
    }

    v10 = *(*v2 + 35290);
  }

  else
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::collectRealTimeAppCongestionState();
      }
    }

    v10 = 0;
  }

  return v10 & 1;
}

uint64_t AppleBCMWLANCore::trafficMonitorCallback(const OSMetaClassBase *this, OSObject *a2, void *a3, unsigned int a4, unsigned int a5)
{
  v7 = a3;
  result = OSMetaClassBase::safeMetaCast(this, gAppleBCMWLANCoreMetaClass);
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = result;
  v29 = -21846;
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  if ((*(*v9 + 1952))(v9))
  {
    (*(*v10 + 1952))(v10);
    if (CCLogStream::shouldLog())
    {
      v25 = (*(*v10 + 1952))(v10);
      CCLogStream::logAlert(v25, "[dk] %s@%d:Now:%llu elapsedMS:%u rtPacketCount:%u bgPacketCount:%u\n", "trafficMonitorCallback", 58296, 0, v7, a4, a5);
    }
  }

  v11 = *(v10 + 9) + 0x8000;
  if (*(*(v10 + 9) + 35292) >= a4)
  {
    LOBYTE(v29) = 0;
    *(v11 + 2512) = 0;
  }

  else
  {
    v30 = 0;
    mach_continuous_time();
    absolutetime_to_nanoseconds();
    v12 = *(v10 + 9);
    v13 = *(v12 + 35280);
    if (v13)
    {
      if (-v13 >= 0x13)
      {
        LOBYTE(v29) = 1;
        *(v12 + 35280) = 0;
      }
    }

    else
    {
      *(v12 + 35280) = 0;
    }
  }

  v14 = *(v10 + 9);
  v15 = *(v14 + 35296) < a5;
  HIBYTE(v29) = *(v14 + 35296) < a5;
  if (v29 != *(v14 + 35288) || *(v14 + 35289) != v15)
  {
    AppleBCMWLANCore::handleAppTrafficIndication(v10, &v29);
    v14 = *(v10 + 9);
  }

  v16 = *(v14 + 35384) % 5u;
  if (*(v14 + 35384))
  {
    v17 = v16 == 0;
  }

  else
  {
    v17 = 0;
  }

  if (!v17)
  {
    *(v14 + 8 * v16 + 35304) = a4;
    *(*(v10 + 9) + 8 * (*(*(v10 + 9) + 35384) % 5u) + 35344) = a5;
    v18 = *(v10 + 9);
    v19 = (*(v18 + 35384))++ + 1;
    if ((v19 & 0x100) != 0)
    {
      *(*(v10 + 9) + 35384) = 0;
    }

    result = AppleBCMWLANCore::collectRealTimeAppCongestionState(v10);
    if ((result & 1) == 0)
    {
      result = *(*(v10 + 9) + 11288);
      if (result)
      {
        result = IO80211InfraInterface::getWMMBWReset(result);
        if (result)
        {
          IO80211InfraInterface::setWMMBWReset(*(*(v10 + 9) + 11288), 0);
          result = (*(*v10 + 1952))(v10);
          if (result)
          {
            (*(*v10 + 1952))(v10);
            result = CCLogStream::shouldLog();
            if (result)
            {
              result = AppleBCMWLANCore::trafficMonitorCallback();
            }
          }
        }
      }

      *(*(v10 + 9) + 35385) = 0;
    }

    return result;
  }

  v20 = AppleBCMWLANCore::collectRealTimeAppCongestionState(v10);
  v21 = *(v10 + 9);
  if (v20)
  {
    if (!*(v21 + 35385) || (IO80211InfraInterface::getWMMBWReset(*(v21 + 11288)) & 1) == 0)
    {
      if ((*(*v10 + 1952))(v10))
      {
        (*(*v10 + 1952))(v10);
        if (CCLogStream::shouldLog())
        {
          v27 = (*(*v10 + 1952))(v10);
          CCLogStream::logAlert(v27, "[dk] %s@%d:Enabling trigger for dqeue mechanism for @ now:%llu elapsedMS:%u for tid %d tid %d\n", "trafficMonitorCallback", 58333, 0, v7, 1, 2);
        }
      }

      v22 = *(*(v10 + 9) + 11288);
      if (v22)
      {
        v23 = 1;
        IO80211InfraInterface::setWMMBWReset(v22, 1);
        if ((*(*v10 + 1952))(v10))
        {
          (*(*v10 + 1952))(v10);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::trafficMonitorCallback();
          }
        }
      }

      else
      {
        v23 = 1;
      }

LABEL_48:
      *(*(v10 + 9) + 35385) = v23;
    }
  }

  else if ((*(v21 + 35385) & 1) != 0 || IO80211InfraInterface::getWMMBWReset(*(v21 + 11288)))
  {
    if ((*(*v10 + 1952))(v10))
    {
      (*(*v10 + 1952))(v10);
      if (CCLogStream::shouldLog())
      {
        v28 = (*(*v10 + 1952))(v10);
        CCLogStream::logAlert(v28, "[dk] %s@%d:Disabling trigger for dqeue mechanism for @ now:%llu elapsedMS:%u for tid %d tid %d\n", "trafficMonitorCallback", 58357, 0, v7, 1, 2);
      }
    }

    v24 = *(*(v10 + 9) + 11288);
    if (v24)
    {
      IO80211InfraInterface::setWMMBWReset(v24, 0);
      if ((*(*v10 + 1952))(v10))
      {
        (*(*v10 + 1952))(v10);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::trafficMonitorCallback();
        }
      }
    }

    v23 = 0;
    goto LABEL_48;
  }

  *(*(v10 + 9) + 8 * (*(*(v10 + 9) + 35384) + 1 - 5 * ((13108 * (*(*(v10 + 9) + 35384) + 1)) >> 16)) + 35304) = a4;
  *(*(v10 + 9) + 8 * (*(*(v10 + 9) + 35384) + 1 - 5 * ((13108 * (*(*(v10 + 9) + 35384) + 1)) >> 16)) + 35344) = a5;
  result = (*(*v10 + 1952))(v10);
  if (result)
  {
    (*(*v10 + 1952))(v10);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v26 = (*(*v10 + 1952))(v10);
      return CCLogStream::logAlert(v26, "[dk] %s@%d:Collecting sample modulo size now:%llu elapsedMS:%u @ window %d\n", "trafficMonitorCallback", 58378, 0, v7, *(*(v10 + 9) + 35384));
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::handleAppTrafficIndication(IO80211Controller *a1, _BYTE *a2)
{
  if (*a2)
  {
    if (a2[1])
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleAppTrafficIndication();
        }
      }
    }

    else
    {
      v6 = *(*(a1 + 9) + 35289);
      v7 = (*(*a1 + 1952))(a1);
      if (v6)
      {
        if (v7)
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::handleAppTrafficIndication();
          }
        }
      }

      else if (v7)
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleAppTrafficIndication();
        }
      }
    }
  }

  else if (a2[1])
  {
    v4 = *(*(a1 + 9) + 35289);
    v5 = (*(*a1 + 1952))(a1);
    if (v4)
    {
      if (v5)
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::handleAppTrafficIndication();
        }
      }
    }

    else if (v5)
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleAppTrafficIndication();
      }
    }
  }

  else if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::handleAppTrafficIndication();
    }
  }

  result = IO80211Controller::postMessage(a1, *(*(a1 + 9) + 11288), 0xBDu, a2, 2uLL, 1);
  *(*(a1 + 9) + 35288) = *a2;
  *(*(a1 + 9) + 35289) = a2[1];
  return result;
}

uint64_t AppleBCMWLANCore::changeAggregationPerEDCATID(uint64_t this, unsigned int a2, uint64_t a3)
{
  if (a2 <= 7)
  {
    v3 = a3;
    v5 = this;
    v14[0] = a2;
    v14[1] = a3;
    v6 = *(*(this + 72) + 5408);
    v12 = v14;
    v13 = 2;
    v7 = AppleBCMWLANCommander::runIOVarSet(v6, "ampdu_tid", &v12, 0, 0);
    this = (*(*v5 + 1952))(v5);
    if (v7)
    {
      if (this)
      {
        (*(*v5 + 1952))(v5);
        this = CCLogStream::shouldLog();
        if (this)
        {
          return AppleBCMWLANCore::changeAggregationPerEDCATID();
        }
      }
    }

    else
    {
      if (this)
      {
        (*(*v5 + 1952))(v5);
        if (CCLogStream::shouldLog())
        {
          v10 = (*(*v5 + 1952))(v5);
          v11 = "disabled";
          if (v3)
          {
            v11 = "enabled";
          }

          CCLogStream::logInfo(v10, "[dk] %s@%d:Block ACK %s for TID %d", "changeAggregationPerEDCATID", 58474, v11, a2);
        }
      }

      v15 = 0;
      BYTE6(v15) = a2;
      HIBYTE(v15) = v3 ^ 1;
      this = IO80211BssManager::getCurrentBSSID(*(*(v5 + 72) + 5432), &v15);
      if (this)
      {
        v8 = *(*(v5 + 72) + 5408);
        if (v3)
        {
          v9 = "ampdu_send_addba";
        }

        else
        {
          v9 = "ampdu_send_delba";
        }

        v12 = v14;
        v13 = 8;
        if (AppleBCMWLANCommander::runIOVarSet(v8, v9, &v12, 0, 0))
        {
          if ((*(*v5 + 1952))(v5))
          {
            (*(*v5 + 1952))(v5);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::changeAggregationPerEDCATID(v5, v5 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3, &v15 + 6);
            }
          }
        }

        this = (*(*v5 + 1952))(v5);
        if (this)
        {
          (*(*v5 + 1952))(v5);
          this = CCLogStream::shouldLog();
          if (this)
          {
            return AppleBCMWLANCore::changeAggregationPerEDCATID();
          }
        }
      }
    }
  }

  return this;
}

uint64_t AppleBCMWLANCore::dbgConfigureBcnlossCoreCapture(void *this, uint64_t a2)
{
  v3 = this[9];
  if (a2)
  {
    *(v3 + 18193) = 1;
    *(this[9] + 18176) = a2;
  }

  else
  {
    *(v3 + 18193) = 0;
  }

  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::dbgConfigureBcnlossCoreCapture();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::Start_Impl(AppleBCMWLANCore *this, IOService *a2)
{
  setPropertyHelper(this, "DriverKitDriver", kOSBooleanTrue);
  v4 = OSString::withCString("iOS");
  setPropertyHelper(this, "DriverKitDriverPlatformType", v4);
  if (v4)
  {
    (v4->release)(v4);
  }

  *(*(this + 9) + 5392) = OSMetaClassBase::safeMetaCast(a2, gAppleBCMWLANBusInterfaceMetaClass);
  io80211_os_log("AppleBCMWLANCore::Start_Impl: begin: this[%p] provider[%p], fProvider[%p]\n", this, a2, *(*(this + 9) + 5392));
  v5 = *(*(this + 9) + 5392);
  if (!v5)
  {
    io80211_os_log("AppleBCMWLANCore::Start_Impl: Invalid provider[%p], fProvider[%p]\n", a2, 0);
    v14 = 0;
    v12 = 0;
    v6 = 3758097090;
LABEL_60:
    v13 = 0xFFFF;
LABEL_81:
    io80211_os_log("AppleBCMWLANCore::Start_Impl: done: failed: ret[0x%08x], this[%p] provider[%p], fProvider[%p], reason[%u] line[%u], init failed[%u]\n", v6, this, a2, *(*(this + 9) + 5392), v13, v14, v12);
    return v6;
  }

  (*(*v5 + 8))(v5);
  if ((*(*(*(*(this + 9) + 5392) + 48) + 200))())
  {
    IOLog("AppleBCMWLANCore instantiated before Bus powered on, deferring\n");
    return 3758097112;
  }

  ClassNameHelper = getClassNameHelper(a2);
  io80211_os_log("Core, %s", ClassNameHelper);
  AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(*(*(this + 9) + 5392), 0, 4, *(*(this + 9) + 35904));
  AppleBCMWLANBusInterface::sendBootCheckPointToCoreAnalytics(*(*(this + 9) + 5392), 0, 5);
  *(*(this + 9) + 14248) = AppleBCMWLANBusInterface::getLogger(*(*(this + 9) + 5392));
  v8 = *(*(this + 9) + 14248);
  if (!v8)
  {
    v6 = 3758097084;
    io80211_os_log("AppleBCMWLANCore::Start_Impl: Unable to create debug logger\n");
LABEL_59:
    v14 = 0;
    v12 = 0;
    goto LABEL_60;
  }

  (*(*v8 + 8))(v8);
  v6 = IOService::Start(this, a2, &IO80211Controller::_Dispatch);
  v9 = (*(*this + 1952))(this);
  if (v6)
  {
    if (v9)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::Start_Impl();
      }
    }

    goto LABEL_59;
  }

  if (v9)
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::Start_Impl();
    }
  }

  v6 = IOService::Create(this, this, "ReporterProxy", (*(this + 9) + 14304), 0);
  v10 = (*(*this + 1952))(this);
  if (v6)
  {
    if (v10)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::Start_Impl();
      }
    }

    goto LABEL_59;
  }

  if (v10)
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::Start_Impl();
    }
  }

  v11 = (*(*this + 64))(this, *(*(this + 9) + 5392));
  v12 = *(*(this + 9) + 18415);
  if (v12 == 1)
  {
    v13 = *(*(this + 9) + 18416);
    v14 = *(*(this + 9) + 18420);
  }

  else
  {
    v14 = 0;
    v13 = 0xFFFF;
  }

  v15 = (*(*this + 1952))(this);
  if ((v11 & 1) == 0)
  {
    v6 = 3758097084;
    if (v15)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v28 = (*(*this + 1952))(this);
        CCLogStream::logAlert(v28, "[dk] %s@%d:wlan core start failed, reason[%u] line[%u], init failed[%u]\n", "Start_Impl", 58692, v13, v14, v12);
      }
    }

    goto LABEL_81;
  }

  v29 = v13;
  if (v15)
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::Start_Impl();
    }
  }

  v16 = (*(**(*(this + 9) + 31064) + 168))(*(*(this + 9) + 31064));
  if (!v16)
  {
    v6 = 3758097084;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::Start_Impl();
      }
    }

    goto LABEL_80;
  }

  v17 = v16;
  v18 = OSObject::SetDispatchQueue(this, "WLANMainDispatchQueue", v16, 0);
  if (v18)
  {
    v6 = v18;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::Start_Impl();
      }
    }

    goto LABEL_80;
  }

  v6 = IOService::CopySystemStateNotificationService(this, (*(this + 9) + 35536), 0);
  v19 = (*(*this + 1952))(this);
  if (v6)
  {
    if (v19)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::Start_Impl();
      }
    }

    goto LABEL_80;
  }

  if (v19)
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::Start_Impl();
    }
  }

  if (*(*(this + 9) + 29928))
  {
    v20 = OSArray::withCapacity(4u);
    v21 = OSString::withCString("kAudioMessage_MicState");
    v22 = OSString::withCString("kAudioMessage_ReceiverState");
    OSArray::setObject(v20, v21);
    OSArray::setObject(v20, v22);
    v6 = IOServiceStateNotificationDispatchSource::Create(*(*(this + 9) + 35536), v20, v17, (*(this + 9) + 35544), v23);
    if (v20)
    {
      (v20->release)(v20);
    }

    if (v21)
    {
      (v21->release)(v21);
    }

    if (v22)
    {
      (v22->release)(v22);
    }

    if (v6)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::Start_Impl();
        }
      }

      goto LABEL_80;
    }

    ActionSystemStateNotificationReady = AppleBCMWLANCore::CreateActionSystemStateNotificationReady(this, 0, (*(this + 9) + 35552));
    if (ActionSystemStateNotificationReady)
    {
      v6 = ActionSystemStateNotificationReady;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::Start_Impl();
        }
      }

      goto LABEL_80;
    }

    v25 = IOServiceStateNotificationDispatchSource::SetHandler(*(*(this + 9) + 35544), *(*(this + 9) + 35552), 0);
    if (v25)
    {
      v6 = v25;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::Start_Impl();
        }
      }

LABEL_80:
      v13 = v29;
      goto LABEL_81;
    }
  }

  else if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::Start_Impl();
    }
  }

  (*(**(*(this + 9) + 5392) + 824))();
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::Start_Impl();
    }
  }

  *(*(this + 9) + 18413) = 0;
  _DebugStateSaveObject(this);
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v27 = (*(*this + 1952))(this);
      CCLogStream::logAlert(v27, "[dk] %s@%d:done: succcess: ret[0x%08x], this[%p] provider[%p], fProvider[%p], reason[%u] line[%u], init failed[%u]\n", "Start_Impl", 58751, 0, this, a2, *(*(this + 9) + 5392), v29, v14, v12);
    }
  }

  return 0;
}

uint64_t ___ZN16AppleBCMWLANCore10Start_ImplEP9IOService_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1[9] + 10376) & 0x40) != 0)
  {
    if ((*(*v1 + 1952))(*(a1 + 32)))
    {
      (*(*v1 + 1952))(v1);
      if (CCLogStream::shouldLog())
      {
        ___ZN16AppleBCMWLANCore10Start_ImplEP9IOService_block_invoke_cold_1();
      }
    }
  }

  else
  {
    AppleBCMWLANCore::HandleShutdownGated(*(a1 + 32));
  }

  return 0;
}

OSDictionary *AppleBCMWLANCore::SystemStateNotificationReady_Impl(void *this, OSAction *a2)
{
  v3 = OSString::withCString("kAudioMessage_MicState");
  v4 = OSString::withCString("kAudioMessage_ReceiverState");
  v12 = 0xAAAAAAAAAAAAAAAALL;
  IOServiceStateNotificationDispatchSource::StateNotificationBegin(*(this[9] + 35544), 0);
  if (!IOService::StateNotificationItemCopy(*(this[9] + 35536), v3, &v12, 0))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::SystemStateNotificationReady_Impl();
      }
    }

    v5 = *(this[9] + 29928);
    Object = OSDictionary::getObject(v12, "kAudioMessage_MicOn");
    v7 = OSMetaClassBase::safeMetaCast(Object, gOSBooleanMetaClass) == kOSBooleanTrue;
    AppleBCMWLANAudioProtector::setLDOOnRequest(v5, v7);
    if (v12)
    {
      (v12->release)(v12);
      v12 = 0;
    }
  }

  result = IOService::StateNotificationItemCopy(*(this[9] + 35536), v4, &v12, 0);
  if (!result)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::SystemStateNotificationReady_Impl();
      }
    }

    v9 = *(this[9] + 29928);
    v10 = OSDictionary::getObject(v12, "kAudioMessage_ReceiverOn");
    v11 = OSMetaClassBase::safeMetaCast(v10, gOSBooleanMetaClass) == kOSBooleanTrue;
    AppleBCMWLANAudioProtector::setLDOOnRequest(v9, v11);
    result = v12;
    if (v12)
    {
      result = (v12->release)(v12);
      v12 = 0;
    }
  }

  if (v3)
  {
    result = (v3->release)(v3);
  }

  if (v4)
  {
    return (v4->release)(v4);
  }

  return result;
}

uint64_t AppleBCMWLANCore::Stop_Impl(IOService *this, IOService *a2)
{
  v4 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::Stop_Impl(this, v4, a2);
    }
  }

  if (AppleBCMWLANBusInterface::hasRegisteredDriver(this[1].OSObject::OSObjectInterface::__vftable[337].init))
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::Stop_Impl(this, v4, a2);
      }
    }

    (*(*this[1].OSObject::OSObjectInterface::__vftable[337].init + 128))(this[1].OSObject::OSObjectInterface::__vftable[337].init, this, this[1].OSObject::OSObjectInterface::__vftable[347].free);
  }

  AppleBCMWLANCore::stopResources(this);
  init = this[1].OSObject::OSObjectInterface::__vftable[2221].init;
  if (init)
  {
    (*(*init + 16))(init);
    this[1].OSObject::OSObjectInterface::__vftable[2221].init = 0;
  }

  return IOService::Stop(this, a2, &IO80211Controller::_Dispatch);
}

uint64_t AppleBCMWLANCore::newUserClientGated(AppleBCMWLANCore *this, int a2, IOUserClient **a3)
{
  result = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0;
  IOParseBootArgNumber("wlan.factory", &v10, 4);
  if ((v10 & 1) == 0)
  {
    isFdrCal = AppleBCMWLANCore::isFdrCal(this);
    if (a2 == 1466517097 && isFdrCal)
    {
      goto LABEL_4;
    }

LABEL_8:
    v7 = 3758097095;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::newUserClientGated();
      }
    }

    return v7;
  }

  if (a2 != 1466517097)
  {
    goto LABEL_8;
  }

LABEL_4:
  io80211_os_log("AppleBCMWLANCore: NewUserClient %d\n", a2);
  if (IOService::Create(this, this, "AppleBCMWLANUserClientProperties", &result, 0))
  {
    io80211_os_log("AppleBCMWLANCore: new client create failed\n");
  }

  else
  {
    v8 = OSMetaClassBase::safeMetaCast(result, gAppleBCMWLANUserClientMetaClass);
    if (v8)
    {
      *a3 = v8;
      io80211_os_log("AppleBCMWLANCore: NewUserClient %d success\n", a2);
      return 0;
    }

    io80211_os_log("AppleBCMWLANCore: new client cast failed\n");
  }

  return 3758097084;
}

uint64_t AppleBCMWLANCore::NewUserClient_Impl(AppleBCMWLANCore *this, int a2, IOUserClient **a3)
{
  if ((*(**(*(this + 9) + 31064) + 144))(*(*(this + 9) + 31064)))
  {

    return AppleBCMWLANCore::newUserClientGated(this, a2, a3);
  }

  else
  {
    v7 = *(*(this + 9) + 31064);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v8[2] = ___ZN16AppleBCMWLANCore18NewUserClient_ImplEjPP12IOUserClient_block_invoke;
    v8[3] = &__block_descriptor_tmp_3265;
    v8[4] = this;
    v9 = a2;
    v8[5] = a3;
    return (*(*v7 + 112))(v7, v8);
  }
}

void AppleBCMWLANCore::setAndBootInfraInterface(void *this, uint64_t a2, AppleBCMWLANSkywalkInterface *a3)
{
  if (a2)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setAndBootInfraInterface();
      }
    }
  }

  else
  {
    *(this[9] + 11288) = a3;
    *(this[9] + 11192) = this[9] + 11288;
    (*(*this + 472))(this, a3, this);
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = -536870212;
    v4 = this[9];
    v5 = *(v4 + 31064);
    if (*(v4 + 35672) == 1)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 0x40000000;
      v12[2] = ___ZN16AppleBCMWLANCore24setAndBootInfraInterfaceEjP28AppleBCMWLANSkywalkInterface_block_invoke;
      v12[3] = &__block_descriptor_tmp_3267;
      v12[4] = this;
      v6 = (*(*v5 + 112))(v5, v12);
      *(v14 + 6) = v6;
      v7 = (*(*this + 1952))(this);
      if (v6)
      {
        if (v7)
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setAndBootInfraInterface();
          }
        }

        v8 = *(this[9] + 31064);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 0x40000000;
        v11[2] = ___ZN16AppleBCMWLANCore24setAndBootInfraInterfaceEjP28AppleBCMWLANSkywalkInterface_block_invoke_2;
        v11[3] = &__block_descriptor_tmp_3270;
        v11[4] = this;
        (*(*v8 + 112))(v8, v11);
      }

      else if (v7)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setAndBootInfraInterface();
        }
      }
    }

    else
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = ___ZN16AppleBCMWLANCore24setAndBootInfraInterfaceEjP28AppleBCMWLANSkywalkInterface_block_invoke_3;
      v10[4] = &v13;
      v10[5] = this;
      v10[3] = &__block_descriptor_tmp_3276;
      v9 = (*(*v5 + 112))(v5, v10);
      *(v14 + 6) = v9;
    }

    _Block_object_dispose(&v13, 8);
  }
}

uint64_t AppleBCMWLANCore::downloadFdr(AppleBCMWLANCore *this)
{
  v6 = 0;
  if (checkAcquireDataPropertyNotEmpty(*(*(this + 9) + 5392), "wifi-calibration-fdr", &v6, 0, 1uLL, "IOService"))
  {
    BCMInterfaceState = AppleBCMWLANCore::getBCMInterfaceState(this);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::downloadFdr();
      }
    }

    v3 = AppleBCMWLANCommander::runIOCtlSet(*(*(this + 9) + 5408), 3, &kNoTxPayload, 0, 0);
    v4 = (*(*this + 1952))(this);
    if (!v3)
    {
      if (v4)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::downloadFdr();
        }
      }

      v3 = AppleBCMWLANCore::downloadCal(this, v6, 0);
      if ((*(*this + 1952))(this) && ((*(*this + 1952))(this), CCLogStream::shouldLog()))
      {
        AppleBCMWLANCore::downloadFdr();
        if (v3)
        {
          goto LABEL_12;
        }
      }

      else if (v3)
      {
LABEL_12:
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::downloadFdr();
          }
        }
      }

      if (BCMInterfaceState)
      {
        v3 = AppleBCMWLANCore::bringupBCM(this);
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::downloadFdr();
          }
        }
      }

      goto LABEL_22;
    }

    if (v4)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::downloadFdr();
      }
    }
  }

  else
  {
    v3 = 3758097084;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::downloadFdr();
      }
    }
  }

LABEL_22:
  if (v6)
  {
    (v6->release)(v6);
  }

  return v3;
}

uint64_t AppleBCMWLANCore::createGenericPath(AppleBCMWLANCore *this, char *__dst, const char *a3)
{
  strcpy(__source, "Firmware/");
  strlcpy(__dst, __source, 0xFFuLL);
  strlcat(__dst, (*(this + 9) + 1464), 0xFFuLL);
  strlcat(__dst, "_gen.", 0xFFuLL);
  strlcat(__dst, a3, 0xFFuLL);
  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      v7 = (*(*this + 1952))(this);
      return CCLogStream::logAlert(v7, "[dk] %s@%d:%s %s from FW path %s\n", "createGenericPath", 59016, "createGenericPath", __dst, (*(this + 9) + 1464));
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::downloadGenericCalibrationData(AppleBCMWLANCore *this)
{
  memset(__dst, 0, sizeof(__dst));
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *v27 = 0u;
  v24 = 0;
  v25 = 0;
  v2 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  shouldLog = (*(*this + 1952))();
  if (shouldLog)
  {
    (*(*this + 1952))(this);
    shouldLog = CCLogStream::shouldLog();
    if (shouldLog)
    {
      shouldLog = AppleBCMWLANCore::downloadGenericCalibrationData();
    }
  }

  v4 = OSBundle::mainBundle(shouldLog);
  if (!v4)
  {
    AppleBCMWLANCore::downloadGenericCalibrationData();
    RegTableStatus = v26;
    goto LABEL_53;
  }

  AppleBCMWLANCore::createGenericPath(this, __dst, "cal");
  v5 = OSBundle::loadResource(v4, __dst, 0, 10 * IOVMPageSize, &v25);
  if (v25)
  {
    BCMInterfaceState = AppleBCMWLANCore::getBCMInterfaceState(this);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::downloadGenericCalibrationData();
      }
    }

    RegTableStatus = AppleBCMWLANCommander::runIOCtlSet(*(*(this + 9) + 5408), 3, &kNoTxPayload, 0, 0);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::downloadGenericCalibrationData(this, v2, BCMInterfaceState, RegTableStatus);
      }
    }

    v8 = (*(*this + 1952))(this);
    if (!RegTableStatus)
    {
      if (v8)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::downloadGenericCalibrationData();
        }
      }

      v9 = OSMappedFile::data(v25);
      v10 = OSMappedFile::size(v25);
      v11 = AppleBCMWLANCore::downloadBlob(this, "calload", v9, v10);
      if ((*(*this + 1952))(this) && ((*(*this + 1952))(this), CCLogStream::shouldLog()))
      {
        v18 = (*(*this + 1952))(this);
        v19 = OSMappedFile::size(v25);
        v20 = (*(*this + 112))(this, v11);
        CCLogStream::logAlert(v18, "[dk] %s@%d: calload ... called, %s: size[%zu], rv 0x%x %s\n", "downloadGenericCalibrationData", 59050, __dst, v19, v11, v20);
        if (v11)
        {
LABEL_19:
          if (v11 != -469794559)
          {
            goto LABEL_26;
          }
        }
      }

      else if (v11)
      {
        goto LABEL_19;
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::downloadGenericCalibrationData();
        }
      }

      CalMSFStatus = AppleBCMWLANCore::retrieveCalMSFStatus(this, 1);
      if ((*(*this + 1952))(this) && ((*(*this + 1952))(this), CCLogStream::shouldLog()))
      {
        AppleBCMWLANCore::downloadGenericCalibrationData();
        if (!CalMSFStatus)
        {
          goto LABEL_29;
        }
      }

      else if (!CalMSFStatus)
      {
        goto LABEL_29;
      }

LABEL_26:
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::downloadGenericCalibrationData();
        }
      }

LABEL_29:
      AppleBCMWLANCore::createGenericPath(this, v27, "clmb");
      v13 = OSBundle::loadResource(v4, v27, 0, 10 * IOVMPageSize, &v24);
      if (!v24)
      {
        v14 = v13;
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::downloadGenericCalibrationData(this, v2, v14, v27);
          }
        }
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::downloadGenericCalibrationData();
        }
      }

      v15 = OSMappedFile::data(v24);
      v16 = OSMappedFile::size(v24);
      RegTableStatus = AppleBCMWLANCore::downloadBlob(this, "clmload", v15, v16);
      if ((*(*this + 1952))(this) && ((*(*this + 1952))(this), CCLogStream::shouldLog()))
      {
        v21 = (*(*this + 1952))(this);
        v22 = OSMappedFile::size(v24);
        v23 = (*(*this + 112))(this, RegTableStatus);
        CCLogStream::logAlert(v21, "[dk] %s@%d: clmload ... called, %s: size[%zu], rv 0x%x %s\n", "downloadGenericCalibrationData", 59069, v27, v22, RegTableStatus, v23);
        if (!RegTableStatus)
        {
          goto LABEL_40;
        }
      }

      else if (!RegTableStatus)
      {
        goto LABEL_40;
      }

      if (RegTableStatus != -469794559)
      {
LABEL_46:
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::downloadGenericCalibrationData();
          }
        }

        goto LABEL_49;
      }

LABEL_40:
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::downloadGenericCalibrationData();
        }
      }

      RegTableStatus = AppleBCMWLANCore::retrieveRegTableStatus(this);
      if ((*(*this + 1952))(this) && ((*(*this + 1952))(this), CCLogStream::shouldLog()))
      {
        AppleBCMWLANCore::downloadGenericCalibrationData();
        if (RegTableStatus)
        {
          goto LABEL_46;
        }
      }

      else if (RegTableStatus)
      {
        goto LABEL_46;
      }

LABEL_49:
      if (BCMInterfaceState)
      {
        RegTableStatus = AppleBCMWLANCore::bringupBCM(this);
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::downloadGenericCalibrationData();
          }
        }
      }

      goto LABEL_53;
    }

    if (v8)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::downloadGenericCalibrationData();
      }
    }
  }

  else
  {
    RegTableStatus = v5;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::downloadGenericCalibrationData(this, v2, RegTableStatus, __dst);
      }
    }
  }

LABEL_53:
  if (v25)
  {
    (*(*v25 + 16))(v25);
    v25 = 0;
  }

  if (v24)
  {
    (*(*v24 + 16))(v24);
    v24 = 0;
  }

  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  return RegTableStatus;
}

BOOL AppleBCMWLANCore::isHWIdentifiersLate(IOService *this)
{
  v4 = 0;
  if (acquireProperty<OSBoolean>(this, "HWIdentifiersLate", &v4, 0, "IOService"))
  {
    v2 = v4 == kOSBooleanTrue;
    if (v4)
    {
      (v4->release)();
      v4 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::isHWIdentifiersLate();
    }
  }

  return v2;
}

uint64_t AppleBCMWLANCore::handleFdr(AppleBCMWLANCore *this, const char *a2)
{
  isFdrCal = AppleBCMWLANCore::isFdrCal(this);
  v5 = (*(*this + 1952))(this);
  if (isFdrCal)
  {
    if (v5)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::handleFdr();
      }
    }

    if (*a2 == 102 && a2[1] == 100 && a2[2] == 114)
    {
      v6 = AppleBCMWLANCore::downloadFdr(this);
LABEL_24:
      if (!AppleBCMWLANCore::isHWIdentifiersLate(this) && !v6)
      {
        return v6;
      }

      goto LABEL_16;
    }

    if (!strncmp(a2, "genCal", 6uLL))
    {
      v6 = AppleBCMWLANCore::downloadGenericCalibrationData(this);
      if (!v6)
      {
        goto LABEL_24;
      }

      v10 = OSString::withCString("unavailable");
      if (v10)
      {
        v11 = v10;
        v12 = (*(*(*(*(this + 9) + 5392) + 48) + 288))();
        setPropertyHelper(v12, "wlan.msf.source", v11);
        (v11->release)(v11);
      }
    }

    else
    {
      v6 = 3758097084;
    }

    AppleBCMWLANCore::isHWIdentifiersLate(this);
LABEL_16:
    if (AppleBCMWLANCore::isHWIdentifiersLate(this))
    {
      v7 = 59137;
      v8 = -469792989;
    }

    else
    {
      v7 = 59139;
      v8 = v6;
    }

    CCFaultReporter::reportFault(*(*(this + 9) + 5536), 4u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", v7, "handleFdr", 0, v8, 0);
    return v6;
  }

  if (v5)
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::handleFdr();
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::userSetPropertiesGated(AppleBCMWLANCore *this, OSContainer *anObject)
{
  v4 = 3758097084;
  v5 = OSMetaClassBase::safeMetaCast(anObject, gOSDictionaryMetaClass);
  if (!v5)
  {
    return v4;
  }

  v6 = v5;
  Object = OSDictionary::getObject(v5, "PlatformConfig");
  if (Object)
  {
    v8 = OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::userSetPropertiesGated();
      }
    }

    v4 = AppleBCMWLANCore::setPlatformConfigProperties(this, v8);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::userSetPropertiesGated();
      }
    }
  }

  v9 = OSDictionary::getObject(v6, "WiFiFdrCal");
  if (v9)
  {
    v10 = OSMetaClassBase::safeMetaCast(v9, gOSDataMetaClass);
    v11 = (*(*this + 1952))(this);
    if (v10)
    {
      if (v11)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::userSetPropertiesGated();
        }
      }

      v12 = (*(*(*(*(this + 9) + 5392) + 48) + 288))();
      setPropertyHelper(v12, "wifi-calibration-fdr", v10);
      v4 = 0;
    }

    else if (v11)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::userSetPropertiesGated();
      }
    }
  }

  v13 = OSDictionary::getObject(v6, "WiFiMSFSource");
  if (v13)
  {
    v14 = v13;
    if (OSMetaClassBase::safeMetaCast(v13, gOSStringMetaClass) && (v15 = OSMetaClassBase::safeMetaCast(v14, gOSStringMetaClass), (v16 = OSString::withString(v15)) != 0))
    {
      v17 = v16;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::userSetPropertiesGated();
        }
      }

      v18 = (*(*(*(*(this + 9) + 5392) + 48) + 288))();
      setPropertyHelper(v18, "wlan.msf.source", v17);
      CStringNoCopy = OSString::getCStringNoCopy(v17);
      v4 = AppleBCMWLANCore::handleFdr(this, CStringNoCopy);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::userSetPropertiesGated(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v4);
        }
      }

      (v17->release)(v17);
    }

    else if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::userSetPropertiesGated();
      }
    }
  }

  if (OSDictionary::getObject(v6, "HWIdentifiersLate"))
  {
    setPropertyHelper(this, "HWIdentifiersLate", kOSBooleanTrue);
  }

  if (v4)
  {
    return v4;
  }

  return IOService::UserSetProperties(this, anObject, &IO80211Controller::_Dispatch);
}

uint64_t AppleBCMWLANCore::UserSetProperties_Impl(AppleBCMWLANCore *this, OSContainer *a2)
{
  if ((*(**(*(this + 9) + 31064) + 144))(*(*(this + 9) + 31064)))
  {

    return AppleBCMWLANCore::userSetPropertiesGated(this, a2);
  }

  else
  {
    v5 = *(*(this + 9) + 31064);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = ___ZN16AppleBCMWLANCore22UserSetProperties_ImplEP11OSContainer_block_invoke;
    v6[3] = &__block_descriptor_tmp_3314;
    v6[4] = this;
    v6[5] = a2;
    return (*(*v5 + 112))(v5, v6);
  }
}

uint64_t AppleBCMWLANCore::getLogPipes(uint64_t a1, void *a2, void *a3, void *a4)
{
  result = *(*(a1 + 72) + 5392);
  if (result)
  {
    return AppleBCMWLANBusInterface::getLogPipesAndStreams(result, a2, a3, a4, 0, 0);
  }

  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getLogPipes(uint64_t a1, void *a2, void *a3, void *a4)
{
  result = *(*(a1 + 24) + 5392);
  if (result)
  {
    return AppleBCMWLANBusInterface::getLogPipesAndStreams(result, a2, a3, a4, 0, 0);
  }

  return result;
}

uint64_t AppleBCMWLANCore::isOCLAWDLSupported(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANCore::isOCLEnabled(this);
  if (result)
  {
    v3 = *(*(this + 9) + 5464);

    return AppleBCMWLANConfigManager::isOCLAWDLSupportedInDriver(v3);
  }

  return result;
}

uint64_t AppleBCMWLANCore::isBcnCWSwitchEnabled(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(this, 3);
  if (result)
  {
    v3 = *(*(this + 9) + 5464);

    return AppleBCMWLANConfigManager::isBcnCWSwitchSupportedInDriver(v3);
  }

  return result;
}

uint64_t AppleBCMWLANCore::getSkywalkInterface(AppleBCMWLANCore *this, unsigned int a2)
{
  if (a2 <= 0xB && (v2 = *(*(this + 9) + 8 * a2 + 11192)) != 0)
  {
    return *v2;
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getSkywalkInterface(AppleBCMWLANCore *this, unsigned int a2)
{
  if (a2 <= 0xB && (v2 = *(*(this + 1) + 8 * a2 + 11192)) != 0)
  {
    return *v2;
  }

  else
  {
    return 0;
  }
}

uint64_t AppleBCMWLANCore::getWCL_GET_TX_BLANKING_STATUS(AppleBCMWLANCore *this, unsigned int *a2)
{
  if (a2)
  {
    *a2 = *(*(this + 9) + 19688);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::addCumulativePkts(uint64_t this, unsigned int a2, unsigned int a3)
{
  v3 = *(this + 72) + 8 * a2;
  *(v3 + 18328) += a3;
  return this;
}

uint64_t AppleBCMWLANCore::checkForSaePKSupport(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(this, 109);
  if (result)
  {
    return (*(*(this + 9) + 17522) >> 6) & 1;
  }

  return result;
}

uint64_t AppleBCMWLANCore::checkForOprChValidationSupport(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(this, 107);
  if (result)
  {
    return (*(*(this + 9) + 17522) >> 4) & 1;
  }

  return result;
}

BOOL AppleBCMWLANCoreFirmwareLoader::init(IOService *this)
{
  result = IOService::init(this);
  if (result)
  {
    v3 = IOMallocZeroTyped();
    this[1].OSObject::OSMetaClassBase::__vftable = v3;
    if (v3)
    {
      return 1;
    }

    else
    {
      IOLog("Failed to allocate AppleBCMWLANCoreFirmwareLoader_IVars\n");
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCoreFirmwareLoader::Start_Impl(IOService *this, IOService *a2)
{
  v4 = IOService::Start(this, a2, &IO80211Controller::_Dispatch);
  (a2->retain)(a2);
  this[1].getMetaClass = a2;
  if (v4)
  {
    IOLog("AppleBCMWLANCoreFirmwareLoader service registration failure\n");
  }

  else
  {
    IOService::RegisterService(this, 0);
    IOLog("AppleBCMWLANCoreFirmwareLoader service registration success\n");
  }

  return v4;
}

void AppleBCMWLANCoreFirmwareLoader::free(IOService *this)
{
  v2 = this[1].OSObject::OSMetaClassBase::__vftable;
  if (v2)
  {
    if (v2->getMetaClass)
    {
      (*(*v2->getMetaClass + 16))(v2->getMetaClass);
      this[1].getMetaClass = 0;
      v2 = this[1].OSObject::OSMetaClassBase::__vftable;
    }

    memset_s(v2, 8uLL, 0, 8uLL);
    v3 = this[1].OSObject::OSMetaClassBase::__vftable;
    if (v3)
    {
      IOFree(v3, 8uLL);
      this[1].OSObject::OSMetaClassBase::__vftable = 0;
    }
  }

  IOService::free(this);
}

uint64_t AppleBCMWLANCore::configureDynamicRssiWindow(void *this, uint64_t a2)
{
  if ((a2 - 17) > 0xFFFFFFF0)
  {
    v4 = *(this[9] + 5464);

    return AppleBCMWLANConfigManager::configureDynamicRssiWindow(v4, a2);
  }

  else
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureDynamicRssiWindow();
      }
    }

    return 3758097090;
  }
}

uint64_t AppleBCMWLANCore::triggerTTR(IO80211Controller *a1, uint64_t a2)
{
  v2 = a2;
  v4 = IOMallocZeroData();
  v5 = v4;
  if (v2)
  {
    result = (*(*a1 + 1952))(a1);
    if (result && ((*(*a1 + 1952))(a1), result = CCLogStream::shouldLog(), result))
    {
      result = AppleBCMWLANCore::triggerTTR();
      if (!v5)
      {
        return result;
      }
    }

    else if (!v5)
    {
      return result;
    }
  }

  else
  {
    *v4 = 0;
    strlcpy((v4 + 4), kAppleBCMWLANCommanderOutboundQueueStall[0], 0x100uLL);
    IO80211Controller::postMessage(a1, *(*(a1 + 9) + 11288), 0xC4u, v5, 0x104uLL, 1);
  }

  return IOFreeData();
}

uint64_t AppleBCMWLANCore::is6ESupportedInCurrentCountry(AppleBCMWLANCore *this)
{
  v2 = this + 72;
  v3 = *(this + 9);
  if (*(v3 + 6756) == 1)
  {
    if (strncmp((v3 + 6736), (v3 + 6744), 4uLL))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::is6ESupportedInCurrentCountry();
        }
      }

LABEL_19:
      *(*v2 + 35896) = 0;
      return *(*v2 + 35896);
    }

    if (strncmp((v3 + 6748), (v3 + 6736), 4uLL))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::is6ESupportedInCurrentCountry();
        }
      }

      if (AppleBCMWLANCore::handleCountryCodeChangeToRepopulateChannels(this))
      {
        goto LABEL_19;
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::is6ESupportedInCurrentCountry();
        }
      }
    }
  }

  else if (strncmp((v3 + 6748), (v3 + 6744), 4uLL))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::is6ESupportedInCurrentCountry();
      }
    }

    if (AppleBCMWLANCore::handleCountryCodeChangeToRepopulateChannels(this))
    {
      goto LABEL_19;
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::is6ESupportedInCurrentCountry();
      }
    }
  }

  return *(*v2 + 35896);
}

uint64_t AppleBCMWLANCore::setWCL_REAL_TIME_MODE(uint64_t a1, _BYTE *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  v2 = *(*(a1 + 72) + 5600);
  if (*a2)
  {
    return AppleBCMWLANNetAdapter::setRealTimeMode(v2);
  }

  else
  {
    return AppleBCMWLANNetAdapter::setDefaultMode(v2);
  }
}

uint64_t AppleBCMWLANCore::setWCL_LINK_STATE_UPDATE(uint64_t a1, ether_addr *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  v2 = *(*(a1 + 72) + 5600);
  if (a2[1].octet[0])
  {
    return AppleBCMWLANNetAdapter::setLinkUp(v2, a2, a2[1].octet[1] != 0, a2[1].octet[2] != 0);
  }

  else
  {
    return AppleBCMWLANNetAdapter::setLinkDown(v2);
  }
}

uint64_t AppleBCMWLANCore::getWCL_CHANNELS_INFO(AppleBCMWLANCore *a1, uint64_t a2)
{
  *(a2 + 3200) = *(*(a1 + 9) + 19916);
  *(a2 + 3205) = AppleBCMWLANCore::is6ESupportedInCurrentCountry(a1);
  v4 = *(*(a1 + 9) + 19912);
  *(a2 + 3204) = *(*(a1 + 9) + 19914);
  *(a2 + 3202) = v4;
  v5 = *(a1 + 9);
  if (*(v5 + 19916))
  {
    v6 = 0;
    v7 = (a2 + 7);
    do
    {
      *(v7 - 7) = AppleBCMWLANChanSpec::getAppleChannelSpec(*(v5 + 17744), *(v5 + 2 * v6 + 19918));
      *(v7 - 1) = *(*(a1 + 9) + v6 + 20718);
      v8 = *v7 & 0xFE | *(*(a1 + 9) + v6 + 21118) & 1;
      *v7 = v8;
      v9 = v8 & 0xFFFFFFFD | (2 * (*(*(a1 + 9) + v6 + 21518) & 1));
      *v7 = v9;
      v10 = v9 & 0xFFFFFFFB | (4 * (*(*(a1 + 9) + v6 + 21918) & 1));
      *v7 = v10;
      v11 = v10 & 0xFFFFFFF7 | (8 * ((*(*(a1 + 9) + 4 * v6 + 24720) >> 8) & 1));
      *v7 = v11;
      LOBYTE(v11) = v11 & 0xEF | (16 * (*(*(a1 + 9) + v6 + 27120) & 1));
      *v7 = v11;
      LOBYTE(v11) = v11 & 0xDF | (32 * (*(*(a1 + 9) + v6 + 27520) & 1));
      *v7 = v11;
      *v7 = ((*(*(a1 + 9) + v6 + 27920) & 1) << 6) | v11 & 0xBF;
      *(v7 - 5) = *(*(a1 + 9) + v6 + 28320);
      *(v7 - 4) = *(*(a1 + 9) + v6 + 28720);
      *(v7 - 3) = *(*(a1 + 9) + v6 + 29120);
      *(v7 - 2) = *(*(a1 + 9) + v6++ + 29520);
      v5 = *(a1 + 9);
      v7 += 8;
    }

    while (v6 < *(v5 + 19916));
  }

  return 0;
}

uint64_t AppleBCMWLANCore::getBEACON_PERIOD(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 72) + 5432);
  if (v2)
  {
    return IO80211BssManager::getCurrentBeaconPeriod(v2, (a2 + 4));
  }

  else
  {
    return 3758097084;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getBEACON_PERIOD(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 5432);
  if (v2)
  {
    return IO80211BssManager::getCurrentBeaconPeriod(v2, (a2 + 4));
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::getTKO_PARAMS(uint64_t a1, _DWORD *a2)
{
  v2 = *(*(a1 + 72) + 5544);
  if (v2)
  {
    return AppleBCMWLANKeepAliveOffload::getTCPAliveOffloadParams(v2, a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getTKO_PARAMS(uint64_t a1, _DWORD *a2)
{
  v2 = *(*(a1 + 8) + 5544);
  if (v2)
  {
    return AppleBCMWLANKeepAliveOffload::getTCPAliveOffloadParams(v2, a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::getTKO_DUMP(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 72) + 5544);
  if (v2)
  {
    return AppleBCMWLANKeepAliveOffload::getTCPAliveOffloadDump(v2, a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getTKO_DUMP(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 5544);
  if (v2)
  {
    return AppleBCMWLANKeepAliveOffload::getTCPAliveOffloadDump(v2, a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::getDTIM_INT(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 72) + 5432);
  if (v2)
  {
    return IO80211BssManager::getCurrentDTIMPeriod(v2, (a2 + 4));
  }

  else
  {
    return 3758097084;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getDTIM_INT(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 8) + 5432);
  if (v2)
  {
    return IO80211BssManager::getCurrentDTIMPeriod(v2, (a2 + 4));
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::setGET_DEBUG_INFO(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3 || *(a3 + 245192) != 1 || *(a3 + 1464) > 0x1000000uLL)
  {
    return 22;
  }

  if (*(*(a1 + 72) + 14264))
  {
    result = IO80211CoreDbg::handleDebugCmd();
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = 19;
    if (!a2)
    {
      return result;
    }
  }

  if (result == 19)
  {

    return IO80211SkywalkInterface::handleDebugCmd(a2, a3);
  }

  return result;
}

uint64_t AppleBCMWLANCore::setTKO_PARAMS(uint64_t a1, _DWORD *a2)
{
  v2 = *(*(a1 + 72) + 5544);
  if (v2)
  {
    return AppleBCMWLANKeepAliveOffload::setTCPAliveOffloadParams(v2, a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t non-virtual thunk toAppleBCMWLANCore::setTKO_PARAMS(uint64_t a1, _DWORD *a2)
{
  v2 = *(*(a1 + 8) + 5544);
  if (v2)
  {
    return AppleBCMWLANKeepAliveOffload::setTCPAliveOffloadParams(v2, a2);
  }

  else
  {
    return 3758097084;
  }
}

uint64_t AppleBCMWLANCore::setLE_SCAN_PARAM(void *a1, _DWORD *a2)
{
  v3 = *a2;
  v5 = a2[1];
  v4 = a2[2];
  v6 = a2[3];
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v11 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v11, "[dk] %s@%d:Receiving BT LE SCAN notification: enable %d, peak = %u, total = %u, dc = %d\n", "setLE_SCAN_PARAM", 60971, v3, v5, v4, v6);
    }
  }

  if (v3)
  {
    ++*(a1[9] + 30924);
    *(a1[9] + 30932) += v5;
    v7 = (a1[9] + 30936);
  }

  else
  {
    v7 = (a1[9] + 30928);
    v4 = 1;
  }

  *v7 += v4;
  if (v6 <= 6)
  {
    ++*(a1[9] + 4 * v6 + 30940);
  }

  v8 = a1[9];
  v9 = *(v8 + 5512);
  if (v9)
  {
    AppleBCMWLANIOReportingPerSlice::reportBTLECnxStats(v9, (v8 + 30924));
  }

  return 0;
}

uint64_t AppleBCMWLANCore::setMWS_WIFI_TYPE_7_BITMAP_WIFI_ENH(void *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setMWS_WIFI_TYPE_7_BITMAP_WIFI_ENH();
    }
  }

  *(a1[9] + 10616) = *a2;
  *(a1[9] + 10620) = a2[1];
  *(a1[9] + 10624) = a2[2];
  *(a1[9] + 10628) = a2[3];
  *(a1[9] + 10632) = a2[4];
  *(a1[9] + 10636) = a2[5];
  *(a1[9] + 10640) = a2[6];
  *(a1[9] + 10644) = a2[7];
  *(a1[9] + 10648) = a2[8];
  v4 = *(*a1 + 1568);
  v5 = a1[9] + 10616;

  return v4(a1, v5);
}

uint64_t AppleBCMWLANCore::setMWS_COEX_BITMAP_WIFI_ENH(void *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setMWS_COEX_BITMAP_WIFI_ENH();
    }
  }

  *(a1[9] + 10540) = *a2;
  *(a1[9] + 10544) = a2[1];
  *(a1[9] + 10548) = a2[2];
  *(a1[9] + 10552) = a2[3];
  *(a1[9] + 10556) = a2[4];
  *(a1[9] + 10560) = a2[5];
  *(a1[9] + 10564) = a2[6];
  *(a1[9] + 10568) = a2[7];
  *(a1[9] + 10572) = a2[8];
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v7 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v7, "[dk] %s@%d:APPLE80211_IOC_MWS_COEX_BITMAP_WIFI_ENH 2g_bitmap=0x%X, 5g_bitmap_low=0x%X, 5g_bitmap_mid=0x%X, 5g_bitmap_high=0x%X\n", "setMWS_COEX_BITMAP_WIFI_ENH", 61032, *a2, a2[1], a2[2], a2[3]);
    }
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v8 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v8, "[dk] %s@%d:APPLE80211_IOC_MWS_COEX_BITMAP_WIFI_ENH unii5_bitmap_low=0x%X, unii5_bitmap_high=0x%X, unii6_bitmap=0x%X, unii7_bitmap=0x%X, unii8_bitmap=0x%X\n", "setMWS_COEX_BITMAP_WIFI_ENH", 61034, a2[4], a2[5], a2[6], a2[7], a2[8]);
    }
  }

  v4 = *(*a1 + 1552);
  v5 = a1[9] + 10540;

  return v4(a1, v5);
}

uint64_t AppleBCMWLANCore::setMWS_DISABLE_OCL_BITMAP_WIFI_ENH(void *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setMWS_DISABLE_OCL_BITMAP_WIFI_ENH();
    }
  }

  *(a1[9] + 10580) = *a2;
  *(a1[9] + 10584) = a2[1];
  *(a1[9] + 10588) = a2[2];
  *(a1[9] + 10592) = a2[3];
  *(a1[9] + 10596) = a2[4];
  *(a1[9] + 10600) = a2[5];
  *(a1[9] + 10604) = a2[6];
  *(a1[9] + 10608) = a2[7];
  *(a1[9] + 10612) = a2[8];
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v7 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v7, "[dk] %s@%d:APPLE80211_IOC_MWS_DISABLE_OCL_BITMAP_WIFI_ENH 2g_bitmap=0x%X, 5g_bitmap_low=0x%X, 5g_bitmap_mid=0x%X, 5g_bitmap_high=0x%X\n", "setMWS_DISABLE_OCL_BITMAP_WIFI_ENH", 61059, *a2, a2[1], a2[2], a2[3]);
    }
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v8 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v8, "[dk] %s@%d:APPLE80211_IOC_MWS_DISABLE_OCL_BITMAP_WIFI_ENH unii5_bitmap_low=0x%X, unii5_bitmap_high=0x%X, unii6_bitmap=0x%X, unii7_bitmap=0x%X, unii8_bitmap=0x%X\n", "setMWS_DISABLE_OCL_BITMAP_WIFI_ENH", 61061, a2[4], a2[5], a2[6], a2[7], a2[8]);
    }
  }

  v4 = *(*a1 + 1560);
  v5 = a1[9] + 10580;

  return v4(a1, v5);
}

uint64_t AppleBCMWLANCore::setMWS_RFEM_CONFIG_WIFI_ENH(void *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setMWS_RFEM_CONFIG_WIFI_ENH();
    }
  }

  *(a1[9] + 10576) = a2[9];
  *(a1[9] + 10540) = *a2;
  *(a1[9] + 10544) = a2[1];
  *(a1[9] + 10548) = a2[2];
  *(a1[9] + 10552) = a2[3];
  *(a1[9] + 10556) = a2[4];
  *(a1[9] + 10560) = a2[5];
  *(a1[9] + 10564) = a2[6];
  *(a1[9] + 10568) = a2[7];
  *(a1[9] + 10572) = a2[8];
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v7 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v7, "[dk] %s@%d:APPLE80211_IOC_MWS_RFEM_CONFIG_WIFI_ENH wifiBandBitmak=0x%X, 2g_bitmap=0x%X, 5g_bitmap_low=0x%X, 5g_bitmap_mid=0x%X, 5g_bitmap_high=0x%X\n", "setMWS_RFEM_CONFIG_WIFI_ENH", 61087, a2[9], *a2, a2[1], a2[2], a2[3]);
    }
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v8 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v8, "[dk] %s@%d:APPLE80211_IOC_MWS_RFEM_CONFIG_WIFI_ENH unii5_bitmap_low=0x%X, unii5_bitmap_high=0x%X, unii6_bitmap=0x%X, unii7_bitmap=0x%X, unii8_bitmap=0x%X\n", "setMWS_RFEM_CONFIG_WIFI_ENH", 61089, a2[4], a2[5], a2[6], a2[7], a2[8]);
    }
  }

  v4 = *(*a1 + 1600);
  v5 = a1[9] + 10540;

  return v4(a1, v5);
}

uint64_t AppleBCMWLANCore::setMWS_ASSOC_PROTECTION_BITMAP_WIFI_ENH(void *a1, _DWORD *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setMWS_ASSOC_PROTECTION_BITMAP_WIFI_ENH();
    }
  }

  *(a1[9] + 10540) = *a2;
  *(a1[9] + 10544) = a2[1];
  *(a1[9] + 10548) = a2[2];
  *(a1[9] + 10552) = a2[3];
  *(a1[9] + 10556) = a2[4];
  *(a1[9] + 10560) = a2[5];
  *(a1[9] + 10564) = a2[6];
  *(a1[9] + 10568) = a2[7];
  *(a1[9] + 10572) = a2[8];
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v7 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v7, "[dk] %s@%d:APPLE80211_IOC_MWS_ASSOC_PROTECTION_BITMAP_WIFI_ENH 2g_bitmap=0x%X, 5g_bitmap_low=0x%X, 5g_bitmap_mid=0x%X, 5g_bitmap_high=0x%X\n", "setMWS_ASSOC_PROTECTION_BITMAP_WIFI_ENH", 61114, *a2, a2[1], a2[2], a2[3]);
    }
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v8 = (*(*a1 + 1952))(a1);
      CCLogStream::logAlert(v8, "[dk] %s@%d:APPLE80211_IOC_MWS_ASSOC_PROTECTION_BITMAP_WIFI_ENH unii5_bitmap_low=0x%X, unii5_bitmap_high=0x%X, unii6_bitmap=0x%X, unii7_bitmap=0x%X, unii8_bitmap=0x%X\n", "setMWS_ASSOC_PROTECTION_BITMAP_WIFI_ENH", 61116, a2[4], a2[5], a2[6], a2[7], a2[8]);
    }
  }

  v4 = *(*a1 + 1608);
  v5 = a1[9] + 10540;

  return v4(a1, v5);
}