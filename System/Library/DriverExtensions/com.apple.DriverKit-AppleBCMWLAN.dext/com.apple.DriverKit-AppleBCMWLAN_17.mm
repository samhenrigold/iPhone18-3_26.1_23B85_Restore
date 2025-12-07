uint64_t AppleBCMWLANCore::setScanJoinProt(void *this, int *a2)
{
  v3 = this[9];
  v8 = *(v3 + 10496);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "mws_scanjoin_prot", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setScanJoinProt();
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setAutoProtParams(void *this, int *a2)
{
  v3 = this[9];
  v8 = *(v3 + 10500);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 8;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "mws_autoprot_params", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setAutoProtParams();
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setMwsFrameConfig(void *this, unsigned __int8 *a2)
{
  v3 = *(this[9] + 5408);
  v4 = 28;
  if (!a2)
  {
    v4 = 0;
  }

  v7[0] = a2;
  v7[1] = v4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v3, "mws_frame_config", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setMwsFrameConfig();
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setWCI2TxEnvelopeIndEnable(void *this, int *a2)
{
  v3 = this[9];
  v8 = *(v3 + 10508);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "wci2_tx_envelope_ind_2g", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setWCI2TxEnvelopeIndEnable();
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setWCI2TxEnvelopeIdleTimeout(void *this, int *a2)
{
  v3 = this[9];
  v8 = *(v3 + 10510);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "mws_tx_envelope_idle_timer", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setWCI2TxEnvelopeIdleTimeout();
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setWCI2TxInd5G(void *this, int *a2)
{
  v3 = this[9];
  v8 = *(v3 + 10512);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "wci2_txind_5g", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setWCI2TxInd5G();
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setWiFiConditionIdBitmapsWiFiEnh(void *this, unsigned __int8 *a2)
{
  memset(v9, 170, sizeof(v9));
  v3 = IOMallocZeroData();
  if (v3)
  {
    *v3 = 16875520;
    *(v3 + 4) = 10;
    *(v3 + 8) = 0x18000100000001;
    *(v3 + 16) = 7;
    *(v3 + 17) = *(this[9] + 10692);
    *(v3 + 18) = *(this[9] + 10540);
    *(v3 + 20) = *(this[9] + 10544);
    *(v3 + 22) = *(this[9] + 10548);
    *(v3 + 24) = *(this[9] + 10552);
    *(v3 + 26) = *(this[9] + 10556);
    *(v3 + 28) = *(this[9] + 10560);
    *(v3 + 30) = *(this[9] + 10564);
    *(v3 + 32) = *(this[9] + 10568);
    *(v3 + 34) = *(this[9] + 10572);
    *(v3 + 6) = 28;
    v10[0] = v3;
    v10[1] = 36;
    v4 = (*(*this + 88))(this);
    if ((*(*v4 + 136))(v4))
    {
      v9[0] = this;
      v9[1] = AppleBCMWLANCore::handleMWSWiFiConditionIdCoexBitmapsWiFiEnhAsyncCallback;
      v9[2] = 0;
      v5 = AppleBCMWLANCommander::sendIOVarSet(*(this[9] + 5408), "mws", v10, kNoRxExpected, v9, 0);
    }

    else
    {
      v5 = AppleBCMWLANCommander::runIOVarSet(*(this[9] + 5408), "mws", v10, 0, 0);
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
          AppleBCMWLANCore::setWiFiConditionIdBitmapsWiFiEnh();
        }
      }
    }

    else if (v7)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setWiFiConditionIdBitmapsWiFiEnh();
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
        AppleBCMWLANCore::setWiFiConditionIdBitmapsWiFiEnh();
      }
    }
  }

  return v6;
}

uint64_t AppleBCMWLANCore::setWCI2TxDurThresh(void *this, int *a2)
{
  v3 = this[9];
  v8 = *(v3 + 10514);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "wci2_txdur_thresh", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setWCI2TxDurThresh();
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setmwsActiveScanThrottle(void *this, int *a2)
{
  v3 = this[9];
  v8 = *(v3 + 10516);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "mws_active_scan_throttle", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setmwsActiveScanThrottle();
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setmwsActiveScanThrottleDwellTime(void *this, int *a2)
{
  v3 = this[9];
  v8 = *(v3 + 10520);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "mws_active_dwell_time", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setmwsActiveScanThrottleDwellTime();
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setGPIOTxEnvelopeInd(void *this, int *a2)
{
  v3 = this[9];
  v8 = *(v3 + 10524);
  v4 = *(v3 + 5408);
  v7[0] = &v8;
  v7[1] = 4;
  v5 = AppleBCMWLANCommander::runIOVarSet(v4, "gpio_tx_envelope_ind", v7, 0, 0);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setGPIOTxEnvelopeInd();
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setUCMCoexProfileV1(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  *v3 = *a2;
  *(v3 + 4) = 24;
  *(v3 + 2) = v4;
  *(v3 + 6) = *(a2 + 2);
  LODWORD(v5) = *(a2 + 3);
  *(v3 + 7) = v5;
  *(v3 + 8) = *(a2 + 4);
  *(v3 + 9) = *(a2 + 5);
  *(v3 + 10) = *(a2 + 6);
  *(v3 + 11) = *(a2 + 7);
  *(v3 + 12) = *(a2 + 8);
  *(v3 + 13) = *(a2 + 9);
  *(v3 + 14) = *(a2 + 10);
  *(v3 + 15) = *(a2 + 11);
  *(v3 + 16) = *(a2 + 12);
  *(v3 + 17) = *(a2 + 13);
  *(v3 + 18) = *(a2 + 14);
  *(v3 + 19) = *(a2 + 15);
  *(v3 + 20) = *(a2 + 16);
  *(v3 + 21) = *(a2 + 17);
  *(v3 + 22) = *(a2 + 18);
  if (v5)
  {
    if (v5 >= 5)
    {
      v5 = 5;
    }

    else
    {
      v5 = v5;
    }

    v6 = (a2 + 23);
    v7 = (v3 + 27);
    do
    {
      *(v7 - 3) = 8;
      *(v7 - 1) = *(v6 - 3);
      v8 = *v6;
      v6 = (v6 + 7);
      *v7 = v8;
      v7 += 2;
      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::setUCMCoexProfileV2(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  *v3 = *a2;
  *(v3 + 4) = 24;
  *(v3 + 2) = v4;
  *(v3 + 6) = *(a2 + 2);
  LODWORD(v5) = *(a2 + 3);
  *(v3 + 7) = v5;
  *(v3 + 8) = *(a2 + 4);
  *(v3 + 9) = *(a2 + 5);
  *(v3 + 10) = *(a2 + 6);
  *(v3 + 11) = *(a2 + 7);
  *(v3 + 12) = *(a2 + 8);
  *(v3 + 13) = *(a2 + 9);
  *(v3 + 14) = *(a2 + 10);
  *(v3 + 15) = *(a2 + 11);
  *(v3 + 16) = *(a2 + 12);
  *(v3 + 17) = *(a2 + 13);
  *(v3 + 18) = *(a2 + 14);
  *(v3 + 19) = *(a2 + 15);
  *(v3 + 20) = *(a2 + 16);
  *(v3 + 21) = *(a2 + 17);
  *(v3 + 22) = *(a2 + 18);
  *(v3 + 23) = *(a2 + 19);
  if (v5)
  {
    if (v5 >= 5)
    {
      v5 = 5;
    }

    else
    {
      v5 = v5;
    }

    v6 = (a2 + 23);
    v7 = (v3 + 27);
    do
    {
      *(v7 - 3) = 8;
      *(v7 - 1) = *(v6 - 3);
      v8 = *v6;
      v6 = (v6 + 7);
      *v7 = v8;
      v7 += 2;
      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::setUCMCoexProfileV3(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  *v3 = *a2;
  *(v3 + 4) = 24;
  *(v3 + 2) = v4;
  *(v3 + 6) = *(a2 + 2);
  LODWORD(v5) = *(a2 + 3);
  *(v3 + 7) = v5;
  *(v3 + 8) = *(a2 + 4);
  *(v3 + 9) = *(a2 + 5);
  *(v3 + 10) = *(a2 + 6);
  *(v3 + 11) = *(a2 + 7);
  *(v3 + 12) = *(a2 + 8);
  *(v3 + 13) = *(a2 + 9);
  *(v3 + 14) = *(a2 + 10);
  *(v3 + 15) = *(a2 + 11);
  *(v3 + 16) = *(a2 + 12);
  *(v3 + 17) = *(a2 + 13);
  *(v3 + 18) = *(a2 + 14);
  *(v3 + 19) = *(a2 + 15);
  *(v3 + 20) = *(a2 + 16);
  *(v3 + 21) = *(a2 + 17);
  *(v3 + 22) = *(a2 + 18);
  *(v3 + 23) = *(a2 + 19);
  if (v5)
  {
    if (v5 >= 5)
    {
      v5 = 5;
    }

    else
    {
      v5 = v5;
    }

    v6 = a2 + 26;
    v7 = v3 + 31;
    do
    {
      *(v7 - 7) = 8;
      *(v7 - 5) = *(v6 - 5);
      *(v7 - 1) = *(v6 - 1);
      v6 += 7;
      v7 += 8;
      --v5;
    }

    while (v5);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::setBTCOEX_PROFILE(void *a1, unsigned __int16 *a2)
{
  if (!a2)
  {
    goto LABEL_27;
  }

  if (*(a2 + 3) > 4u)
  {
    goto LABEL_27;
  }

  v4 = *a2;
  if ((v4 - 4) < 0xFFFFFFFD || *(a2 + 4) > 9uLL)
  {
    goto LABEL_27;
  }

  v5 = a1[9] + 56 * *(a2 + 4) + 8914;
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  *(v5 + 48) = *(a2 + 6);
  *(v5 + 16) = v7;
  *(v5 + 32) = v8;
  *v5 = v6;
  v9 = 8 * *(a2 + 3) + 24;
  AppleBCMWLANCommander::getMaxCmdRxPayload(*(a1[9] + 5408));
  v10 = IOMallocZeroData();
  v21 = IOMallocZeroData();
  v22 = v9;
  v23 = 0xAAAAAAAA00000004;
  v11 = -536870211;
  if (!v21)
  {
LABEL_22:
    if (!v10)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (!v10)
  {
    goto LABEL_21;
  }

  v12 = *a1;
  if (v4 == 2)
  {
    (v12)[208](a1, a2, &v21);
  }

  else if (v4 == 1)
  {
    (v12)[207](a1, a2, &v21);
  }

  else
  {
    (v12)[209](a1, a2, &v21);
  }

  v13 = v21;
  if (v21)
  {
    v14 = v22;
  }

  else
  {
    v14 = 0;
  }

  if (!v22)
  {
    v13 = 0;
  }

  v20[0] = v13;
  v20[1] = v14;
  MaxCmdRxPayload = AppleBCMWLANCommander::getMaxCmdRxPayload(*(a1[9] + 5408));
  v16 = (AppleBCMWLANCommander::getMaxCmdRxPayload(*(a1[9] + 5408)) << 32) | MaxCmdRxPayload;
  if (MaxCmdRxPayload)
  {
    v17 = v10;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v19[0] = v17;
  v19[1] = v16;
  v11 = AppleBCMWLANCommander::runIOVarSet(*(a1[9] + 5408), "btc_profile", v20, v19, 0);
  if (v21)
  {
LABEL_21:
    IOFreeData();
    goto LABEL_22;
  }

LABEL_23:
  IOFreeData();
LABEL_24:
  if (v11)
  {
LABEL_27:
    AppleBCMWLANCore::setBTCOEX_PROFILE();
    return v21;
  }

  return 0;
}

uint64_t AppleBCMWLANCore::setRANGING_ENABLE(unint64_t a1, uint64_t a2)
{
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  *&v17 = a1;
  *(&v17 + 1) = AppleBCMWLANCore::setRangingAsyncCallBack;
  v18 = 0;
  if (!a2)
  {
    return 3758096385;
  }

  v3 = (a2 + 4);
  if (*(a2 + 4))
  {
    v4 = 2;
  }

  else if (*(*(a1 + 72) + 18414) == 1)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRANGING_ENABLE();
      }
    }

    memcpy(__dst, &unk_1003AF9D0, sizeof(__dst));
    __dst[0] = 1;
    (*(*a1 + 1704))(a1, __dst);
    if (*v3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 3;
  }

  v21 = 1180416;
  v22 = v4;
  v23 = 4;
  LOBYTE(v24) = 1;
  *(&v24 + 2) = 0;
  if (IO80211SkywalkInterface::getInterfaceId(*(*(a1 + 72) + 11296)) == -1 || IO80211SkywalkInterface::getInterfaceId(*(*(a1 + 72) + 11296)) >= 0xC)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRANGING_ENABLE();
      }
    }

    return 3758096385;
  }

  v19 = &v21;
  v20 = 18;
  v5 = *(a1 + 72);
  v6 = *(v5 + 5408);
  InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(v5 + 11296));
  v8 = AppleBCMWLANCommander::sendVirtualIOVarSet(v6, InterfaceId, "proxd", &v19, kNoRxExpected, &v17, 0);
  if (v8)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRANGING_ENABLE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3, v8);
      }
    }
  }

  if (IO80211SkywalkInterface::getInterfaceId(*(*(a1 + 72) + 11296)) == -1 || IO80211SkywalkInterface::getInterfaceId(*(*(a1 + 72) + 11296)) >= 0xC)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRANGING_ENABLE();
      }
    }

    return 3758096385;
  }

  if (!*v3)
  {
    v16 = 0;
    v10 = (*(*a1 + 88))(a1);
    v11 = (*(*v10 + 136))(v10);
    v12 = *(a1 + 72);
    v13 = *(v12 + 5408);
    v14 = IO80211SkywalkInterface::getInterfaceId(*(v12 + 11296));
    __dst[0] = &v16;
    __dst[1] = 4;
    if (v11)
    {
      v15 = AppleBCMWLANCommander::sendVirtualIOVarSet(v13, v14, "wsec", __dst, kNoRxExpected, &v17, 0);
    }

    else
    {
      v15 = AppleBCMWLANCommander::runVirtualIOVarSet(v13, v14, "wsec", __dst, 0, 0);
    }

    v8 = v15;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setRANGING_ENABLE();
    }
  }

  return v8;
}

uint64_t AppleBCMWLANCore::setRANGING_START_V3(void *a1, uint64_t a2)
{
  v3 = a1 + 9;
  v2 = a1[9];
  v4 = *(v2 + 780);
  *&v44 = a1;
  *(&v44 + 1) = AppleBCMWLANCore::setRangingAsyncCallBack;
  v45 = 0;
  if (!a2)
  {
    return 3758096385;
  }

  if (IO80211SkywalkInterface::getInterfaceId(*(v2 + 11296)) == -1 || IO80211SkywalkInterface::getInterfaceId(*(*v3 + 11296)) == 255)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRANGING_START_V3();
      }
    }

    return 3758096385;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setRANGING_START_V3();
    }
  }

  atomic_fetch_and((*v3 + 10376), 0xFFFBFFFF);
  if (!*(a2 + 4))
  {
    *(v47 + 2) = 1;
    v46 = 0x4001300120300;
    LOWORD(v47[0]) = 0;
    v24 = *(*v3 + 5408);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(*v3 + 11296));
    v42 = &v46;
    v43 = 18;
    AppleBCMWLANCommander::sendVirtualIOVarSet(v24, InterfaceId, "proxd", &v42, kNoRxExpected, &v44, 0);
    *(v47 + 2) = 1;
    v46 = 0x4000800120300;
    LOWORD(v47[0]) = 1;
    v26 = *(*v3 + 5408);
    v27 = IO80211SkywalkInterface::getInterfaceId(*(*v3 + 11296));
    v42 = &v46;
    v43 = 18;
    AppleBCMWLANCommander::sendVirtualIOVarSet(v26, v27, "proxd", &v42, kNoRxExpected, &v44, 0);
    return 0;
  }

  if (!*(a2 + 20))
  {
    return 3758096385;
  }

  v9 = IOMallocZeroData();
  *v9 = 0x40004005C0300;
  *(v9 + 8) = 1;
  *(v9 + 10) = 1;
  v10 = *(a1[9] + 1032);
  v11 = *(a2 + 58);
  if (v11 == 80)
  {
    v10 = 4;
  }

  if (v11 == 40)
  {
    v10 = 3;
  }

  if (v11 == 20)
  {
    v10 = 2;
  }

  LODWORD(v42) = v10;
  v12 = *(a2 + 56);
  if (v12 >= 0xF)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  ChanSpec = AppleBCMWLANCore::getChanSpec(a1, v12, v13, &v42);
  *(v9 + 12) = 262147;
  *(v9 + 16) = ChanSpec;
  *(v9 + 20) = 393234;
  v15 = *(a2 + 54);
  *(v9 + 24) = *(a2 + 50);
  *(v9 + 28) = v15;
  *(v9 + 32) = 262170;
  if (*(a2 + 144) == 4)
  {
    v16 = 163941;
  }

  else
  {
    v16 = 163937;
  }

  *(v9 + 36) = v16;
  *(v9 + 40) = 262169;
  if (*(a2 + 128))
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 & 0xFFFF803F;
  }

  *(v9 + 44) = v17;
  v18 = *(a2 + 136);
  if (!*(a2 + 136))
  {
    v18 = 500;
  }

  *(v9 + 56) = 2;
  *(v9 + 48) = 524303;
  *(v9 + 52) = v18;
  v19 = *(a2 + 138);
  if (!*(a2 + 138))
  {
    v19 = 128;
  }

  *(v9 + 68) = 2;
  *(v9 + 60) = 524294;
  *(v9 + 64) = v19;
  *(v9 + 72) = 0xA00080007;
  *(v9 + 80) = 2;
  v20 = *(a2 + 130);
  if (!*(a2 + 130))
  {
    v20 = 3;
  }

  *(v9 + 84) = 131082;
  *(v9 + 88) = v20;
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v39 = (*(*a1 + 1952))(a1);
      CCLogStream::logNotice(v39, "[dk] %s@%d:Ranging config session=%d for %02X:%02X:%02X:%02X:%02X:%02X on chanspec 0x%x flagsMask=0x%x\n", "setRANGING_START_V3", 37944, *(v9 + 8), *(a2 + 50), *(a2 + 51), *(a2 + 52), *(a2 + 53), *(a2 + 54), *(a2 + 55), ChanSpec, v16);
    }
  }

  v21 = *(*v3 + 5408);
  v22 = IO80211SkywalkInterface::getInterfaceId(*(*v3 + 11296));
  v46 = v9;
  v47[0] = 92;
  v23 = AppleBCMWLANCommander::sendVirtualIOVarSet(v21, v22, "proxd", &v46, kNoRxExpected, &v44, 0);
  if (v23)
  {
    v7 = v23;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRANGING_START_V3();
      }
    }
  }

  else
  {
    v28 = IOMallocZeroData();
    v29 = v28;
    *v28 = 768;
    if (v28)
    {
      v30 = 22;
    }

    else
    {
      v30 = 0;
    }

    *(v28 + 2) = v30;
    *(v28 + 4) = 262162;
    *(v28 + 8) = 0;
    *(v28 + 10) = 1;
    *(v28 + 12) = 0x1000100040207;
    if (v4 <= 5 && (v40 = 1, v41 = 64, v31 = *(*v3 + 5408), v32 = IO80211SkywalkInterface::getInterfaceId(*(*v3 + 11296)), v46 = &v40, v47[0] = 3, v33 = AppleBCMWLANCommander::sendVirtualIOVarSet(v31, v32, "awdl_ftm_ranging_config", &v46, kNoRxExpected, &v44, 0), v33))
    {
      v7 = v33;
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRANGING_START_V3();
        }
      }
    }

    else
    {
      v34 = *(*v3 + 5408);
      v35 = IO80211SkywalkInterface::getInterfaceId(*(*v3 + 11296));
      v46 = v29;
      v47[0] = 22;
      v36 = AppleBCMWLANCommander::sendVirtualIOVarSet(v34, v35, "proxd", &v46, kNoRxExpected, &v44, 0);
      if (v36)
      {
        v7 = v36;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setRANGING_START_V3();
          }
        }
      }

      else
      {
        atomic_fetch_or((a1[9] + 10376), 0x40000u);
        v37 = *(a2 + 60);
        *(a1[9] + 31080) = (v37 & 2) != 0;
        *(a1[9] + 31081) = (v37 & 4) != 0;
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::setRANGING_START_V3();
          }
        }

        v38 = *v3;
        if ((~*(a2 + 60) & 0x30) != 0 && *(v38 + 977) != 1)
        {
          v7 = 0;
          *(v38 + 36088) = 0;
        }

        else
        {
          v7 = 0;
          *(v38 + 36088) = 1;
        }
      }
    }

    IOFreeData();
  }

  IOFreeData();
  return v7;
}

uint64_t AppleBCMWLANCore::getChanSpec(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 >= 0xF)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return AppleBCMWLANCore::getChanSpec(a1, a2, v4, a3);
}

uint64_t AppleBCMWLANCore::setRANGING_START_V4(void *a1, uint64_t a2)
{
  *&v36 = a1;
  *(&v36 + 1) = AppleBCMWLANCore::setRangingAsyncCallBack;
  v37 = 0;
  if (!a2)
  {
    return 3758096385;
  }

  v4 = a1 + 9;
  if (IO80211SkywalkInterface::getInterfaceId(*(a1[9] + 11296)) == -1 || IO80211SkywalkInterface::getInterfaceId(*(*v4 + 11296)) == 255)
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRANGING_START_V4();
      }
    }

    return 3758096385;
  }

  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setRANGING_START_V4();
    }
  }

  atomic_fetch_and((*v4 + 10376), 0xFFFBFFFF);
  if (!*(a2 + 4))
  {
    *(v39 + 2) = 1;
    v38 = 0x4001300120400;
    LOWORD(v39[0]) = 0;
    v22 = *(*v4 + 5408);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(*v4 + 11296));
    v34 = &v38;
    v35 = 18;
    AppleBCMWLANCommander::sendVirtualIOVarSet(v22, InterfaceId, "proxd", &v34, kNoRxExpected, &v36, 0);
    *(v39 + 2) = 1;
    v38 = 0x4000800120400;
    LOWORD(v39[0]) = 1;
    v24 = *(*v4 + 5408);
    v25 = IO80211SkywalkInterface::getInterfaceId(*(*v4 + 11296));
    v34 = &v38;
    v35 = 18;
    AppleBCMWLANCommander::sendVirtualIOVarSet(v24, v25, "proxd", &v34, kNoRxExpected, &v36, 0);
    return 0;
  }

  if (!*(a2 + 20))
  {
    return 3758096385;
  }

  v7 = IOMallocZeroData();
  *v7 = 0x4000400640400;
  *(v7 + 8) = 1;
  *(v7 + 10) = 1;
  v8 = *(a1[9] + 1032);
  v9 = *(a2 + 58);
  if (v9 == 80)
  {
    v8 = 4;
  }

  if (v9 == 40)
  {
    v8 = 3;
  }

  if (v9 == 20)
  {
    v8 = 2;
  }

  LODWORD(v34) = v8;
  v10 = *(a2 + 56);
  if (v10 >= 0xF)
  {
    v11 = 3;
  }

  else
  {
    v11 = 0;
  }

  ChanSpec = AppleBCMWLANCore::getChanSpec(a1, v10, v11, &v34);
  *(v7 + 12) = 262147;
  *(v7 + 16) = ChanSpec;
  *(v7 + 20) = 393234;
  v13 = *(a2 + 54);
  *(v7 + 24) = *(a2 + 50);
  *(v7 + 28) = v13;
  *(v7 + 32) = 524314;
  if (*(a2 + 144) == 4)
  {
    v14 = 163941;
  }

  else
  {
    v14 = 163937;
  }

  *(v7 + 36) = v14;
  *(v7 + 44) = 524313;
  if (*(a2 + 128))
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 & 0x3803F;
  }

  *(v7 + 48) = v15;
  v16 = *(a2 + 136);
  if (!*(a2 + 136))
  {
    v16 = 500;
  }

  *(v7 + 64) = 2;
  *(v7 + 56) = 524303;
  *(v7 + 60) = v16;
  v17 = *(a2 + 138);
  if (!*(a2 + 138))
  {
    v17 = 128;
  }

  *(v7 + 76) = 2;
  *(v7 + 68) = 524294;
  *(v7 + 72) = v17;
  *(v7 + 80) = 0xA00080007;
  *(v7 + 88) = 2;
  v18 = *(a2 + 130);
  if (!*(a2 + 130))
  {
    v18 = 3;
  }

  *(v7 + 92) = 131082;
  *(v7 + 96) = v18;
  if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      v33 = (*(*a1 + 1952))(a1);
      CCLogStream::logNotice(v33, "[dk] %s@%d:Ranging config session=%d for %02X:%02X:%02X:%02X:%02X:%02X on chanspec 0x%x flagsMask=0x%llx\n", "setRANGING_START_V4", 38200, *(v7 + 8), *(a2 + 50), *(a2 + 51), *(a2 + 52), *(a2 + 53), *(a2 + 54), *(a2 + 55), ChanSpec, v14);
    }
  }

  v19 = *(*v4 + 5408);
  v20 = IO80211SkywalkInterface::getInterfaceId(*(*v4 + 11296));
  v38 = v7;
  v39[0] = 100;
  v21 = AppleBCMWLANCommander::sendVirtualIOVarSet(v19, v20, "proxd", &v38, kNoRxExpected, &v36, 0);
  if (v21)
  {
    v5 = v21;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRANGING_START_V4();
      }
    }
  }

  else
  {
    v26 = IOMallocZeroData();
    v27 = v26;
    if (v26)
    {
      v28 = 22;
    }

    else
    {
      v28 = 0;
    }

    *v26 = 1024;
    *(v26 + 2) = v28;
    *(v26 + 4) = 262162;
    *(v26 + 8) = 0;
    *(v26 + 10) = 1;
    *(v26 + 12) = 0x1000100040207;
    v29 = *(*v4 + 5408);
    v30 = IO80211SkywalkInterface::getInterfaceId(*(*v4 + 11296));
    v38 = v27;
    v39[0] = v28;
    v5 = AppleBCMWLANCommander::sendVirtualIOVarSet(v29, v30, "proxd", &v38, kNoRxExpected, &v36, 0);
    if (v5)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRANGING_START_V4();
        }
      }
    }

    else
    {
      atomic_fetch_or((a1[9] + 10376), 0x40000u);
      v31 = *(a2 + 60);
      *(a1[9] + 31080) = (v31 & 2) != 0;
      *(a1[9] + 31081) = (v31 & 4) != 0;
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRANGING_START_V4();
        }
      }

      v32 = *v4;
      *(v32 + 36088) = (~*(a2 + 60) & 0x30) == 0 || *(v32 + 977) == 1;
    }

    IOFreeData();
  }

  IOFreeData();
  return v5;
}

uint64_t AppleBCMWLANCore::setRANGING_START(void *a1, uint64_t a2)
{
  v3 = (a2 + 4);
  v4 = a1[9];
  if (*(v4 + 18414) == (*(a2 + 4) != 0))
  {
    v5 = 3758097090;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::setRANGING_START();
      }
    }
  }

  else
  {
    if (*(v4 + 780) > 0x10u)
    {
      v6 = AppleBCMWLANCore::setRANGING_START_V4(a1, a2);
    }

    else
    {
      v6 = AppleBCMWLANCore::setRANGING_START_V3(a1, a2);
    }

    v5 = v6;
    if (!v6)
    {
      *(a1[9] + 18414) = *v3 != 0;
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::setRANGING_AUTHENTICATE(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = 12;
  v52 = 128;
  if (a3 && *(a3 + 112))
  {
    if (IO80211SkywalkInterface::getInterfaceId(*(*(a1 + 72) + 11296)) == -1 || IO80211SkywalkInterface::getInterfaceId(*(*(a1 + 72) + 11296)) == 255)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRANGING_AUTHENTICATE();
        }
      }

      return 3758096385;
    }

    *&v50 = a1;
    *(&v50 + 1) = AppleBCMWLANCore::setRangingAsyncCallBack;
    v51 = 0;
    if (*(*(a1 + 72) + 780) >= 0x11u)
    {
      v8 = 36;
    }

    else
    {
      v8 = 28;
    }

    v9 = IOMallocZeroData();
    v10 = v9;
    if (*(*(a1 + 72) + 780) > 0x10u)
    {
      *v9 = 1024;
      *(v9 + 2) = v8;
      *(v9 + 4) = 262148;
      *(v9 + 8) = 0;
      *(v9 + 10) = 1;
      *(v9 + 12) = 17;
      *(v9 + 16) = 1024;
      *(v9 + 24) = 524290;
      v11 = 8;
      *(v9 + 28) = 1024;
    }

    else
    {
      *v9 = 768;
      *(v9 + 2) = v8;
      *(v9 + 4) = 262148;
      *(v9 + 10) = 1;
      *(v9 + 12) = 17;
      *(v9 + 16) = 0x4000200000400;
      *(v9 + 24) = 1024;
      v11 = 4;
      *(v9 + 8) = 0;
    }

    *(v9 + 14) = v11;
    v12 = (*(*a1 + 88))(a1);
    v13 = (*(*v12 + 136))(v12);
    v14 = *(a1 + 72);
    v15 = *(v14 + 5408);
    InterfaceId = IO80211SkywalkInterface::getInterfaceId(*(v14 + 11296));
    v54[0] = v10;
    v54[1] = v8;
    if (v13)
    {
      v17 = AppleBCMWLANCommander::sendVirtualIOVarSet(v15, InterfaceId, "proxd", v54, kNoRxExpected, &v50, 0);
    }

    else
    {
      v17 = AppleBCMWLANCommander::runVirtualIOVarSet(v15, InterfaceId, "proxd", v54, 0, 0);
    }

    v6 = v17;
    v18 = *a1;
    if (v17)
    {
      if ((*(v18 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRANGING_AUTHENTICATE();
        }
      }

      goto LABEL_58;
    }

    v19 = (*(v18 + 88))(a1);
    v20 = (*(*v19 + 136))(v19);
    v21 = *(a1 + 72);
    v22 = *(v21 + 5408);
    v23 = IO80211SkywalkInterface::getInterfaceId(*(v21 + 11296));
    v54[0] = &v53;
    v54[1] = 4;
    if (v20)
    {
      v24 = AppleBCMWLANCommander::sendVirtualIOVarSet(v22, v23, "wsec", v54, kNoRxExpected, &v50, 0);
    }

    else
    {
      v24 = AppleBCMWLANCommander::runVirtualIOVarSet(v22, v23, "wsec", v54, 0, 0);
    }

    v6 = v24;
    v25 = *a1;
    if (v24)
    {
      if ((*(v25 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRANGING_AUTHENTICATE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v53, v6);
        }
      }

      goto LABEL_58;
    }

    v26 = (*(v25 + 88))(a1);
    v27 = (*(*v26 + 136))(v26);
    v28 = *(a1 + 72);
    v29 = *(v28 + 5408);
    v30 = IO80211SkywalkInterface::getInterfaceId(*(v28 + 11296));
    v54[0] = &v52;
    v54[1] = 4;
    if (v27)
    {
      v31 = AppleBCMWLANCommander::sendVirtualIOCtlSet(v29, v30, 165, v54, kNoRxExpected, &v50, 0);
    }

    else
    {
      v31 = AppleBCMWLANCommander::runVirtualIOCtlSet(v29, v30, 165, v54, 0, 0);
    }

    v6 = v31;
    if (v31)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::setRANGING_AUTHENTICATE(a1, a1 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v52, v6);
        }
      }

      goto LABEL_58;
    }

    v32 = *(a3 + 112);
    v33 = IOMallocZeroData();
    if (!v33)
    {
      v6 = 3758097085;
LABEL_58:
      IOFreeData();
      return v6;
    }

    v34 = v33;
    *(v33 + 2) = v32 + 32;
    *(v33 + 4) = 0x100000002;
    v35 = *(a3 + 4) - 2;
    v36 = 1;
    if (v35 <= 2)
    {
      v36 = dword_1003B05F4[v35];
    }

    *(v33 + 12) = v36;
    v37 = *(a3 + 34);
    *(v33 + 20) = *(a3 + 38);
    *(v33 + 16) = v37;
    *(v33 + 24) = 1;
    *(v33 + 26) = v32;
    memcpy((v33 + 28), (a3 + 48), v32);
    v38 = (*(*a1 + 88))(a1);
    v39 = (*(*v38 + 136))(v38);
    v40 = *(a1 + 72);
    v41 = *(v40 + 5408);
    v42 = IO80211SkywalkInterface::getInterfaceId(*(v40 + 11296));
    if (v32 == 0xFFE0)
    {
      v43 = 0;
    }

    else
    {
      v43 = v34;
    }

    v54[0] = v43;
    v54[1] = (v32 + 32);
    if (v39)
    {
      v44 = AppleBCMWLANCommander::sendVirtualIOVarSet(v41, v42, "ptk_start", v54, kNoRxExpected, &v50, 0);
    }

    else
    {
      v44 = AppleBCMWLANCommander::runVirtualIOVarSet(v41, v42, "ptk_start", v54, 0, 0);
    }

    v6 = v44;
    v45 = (*(*a1 + 1952))(a1);
    if (v6)
    {
      if (v45)
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          v46 = (*(*a1 + 1952))(a1);
          v47 = (*(*a1 + 112))(a1, v6);
          CCLogStream::logAlert(v46, "[dk] %s@%d: Failure to start ranging authentication: %s for %02X:%02X:%02X:%02X:%02X:%02X, role %d, pmkLen %d\n", "setRANGING_AUTHENTICATE", 38466, v47, *(a3 + 34), *(a3 + 35), *(a3 + 36), *(a3 + 37), *(a3 + 38), *(a3 + 39), *(v34 + 12), v32);
        }
      }

      goto LABEL_57;
    }

    if (v45 && ((*(*a1 + 1952))(a1), CCLogStream::shouldLog()))
    {
      v49 = (*(*a1 + 1952))(a1);
      CCLogStream::logNotice(v49, "[dk] %s@%d:Ranging authentication pmk-length=%d role=%d for %02X:%02X:%02X:%02X:%02X:%02X\n", "setRANGING_AUTHENTICATE", 38472, v32, *(v34 + 12), *(a3 + 34), *(a3 + 35), *(a3 + 36), *(a3 + 37), *(a3 + 38), *(a3 + 39));
      if (a2)
      {
        goto LABEL_54;
      }
    }

    else if (a2)
    {
LABEL_54:
      if (*(a3 + 4) == 4)
      {
        *(&v54[1] + 4) = 0;
        *(v54 + 4) = 0;
        LODWORD(v54[0]) = 1;
        HIDWORD(v54[1]) = *(a3 + 34);
        LOWORD(v54[2]) = *(a3 + 38);
        v48 = *(*(a1 + 72) + 11288);
        if (v48)
        {
          IO80211Controller::postMessage(a1, v48, 0x54u, v54, 0x14uLL, 1);
        }
      }
    }

LABEL_57:
    IOFreeData();
    goto LABEL_58;
  }

  return 3758096385;
}

uint64_t AppleBCMWLANCore::HandleShutdownGated(IOService *this)
{
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::HandleShutdownGated();
    }
  }

  v2 = 1;
  BYTE4(this[1].OSObject::OSObjectInterface::__vftable[1150].free) = 1;
  atomic_compare_exchange_strong(&this[1].OSObject::OSObjectInterface::__vftable[275], &v2, 0);
  if (v2 == 1)
  {
    IOService::AdjustBusy(this, -1, 0);
    v4 = 0;
    IOService::GetBusyState(this, &v4, 0);
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::HandleShutdownGated();
      }
    }

    io80211_os_log("AppleBCMWLANCore::HandleShutdownGated/%u: AdjustBusy(-1) busystate %u, fAdjustBusyCnt %u\n", 38588, v4, LODWORD(this[1].OSObject::OSObjectInterface::__vftable[275].init));
  }

  AppleBCMWLANCommander::pause(this[1].OSObject::OSObjectInterface::__vftable[338].init);
  atomic_fetch_or(&this[1].OSObject::OSObjectInterface::__vftable[648].free, 0x2000u);
  AppleBCMWLANCore::halt(this);
  return 0;
}

uint64_t AppleBCMWLANCore::SetPowerState_Impl(IOService *this, uint64_t a2)
{
  v2 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = -1431655766;
  v4 = this[1].OSObject::OSObjectInterface::__vftable;
  init = v4[344].init;
  if (init)
  {
    AppleBCMWLANIOReportingCore::reportSystemPowerState(init, 0, a2 == 2, 1, v4[2228].free);
  }

  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::SetPowerState_Impl();
    }
  }

  v6 = (*(*this[1].OSObject::OSObjectInterface::__vftable[1941].free + 168))(this[1].OSObject::OSObjectInterface::__vftable[1941].free);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1107296256;
  block[2] = ___ZN16AppleBCMWLANCore18SetPowerState_ImplEj_block_invoke;
  block[3] = &__block_descriptor_tmp_2282;
  block[4] = &v16;
  block[5] = this;
  v15 = v2;
  IODispatchQueue::DispatchSync(v6, block);
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::SetPowerState_Impl();
    }
  }

  free = this[1].OSObject::OSObjectInterface::__vftable[1941].free;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v12[2] = ___ZN16AppleBCMWLANCore18SetPowerState_ImplEj_block_invoke_2284;
  v12[3] = &__block_descriptor_tmp_2286;
  v12[4] = this;
  v13 = v2;
  (*(*free + 112))(free, v12);
  v8 = IOService::SetPowerState(this, v2, &IO80211Controller::_Dispatch);
  *(v17 + 6) = v8;
  v9 = this[1].OSObject::OSObjectInterface::__vftable;
  v10 = v9[344].init;
  if (v10)
  {
    AppleBCMWLANIOReportingCore::reportSystemPowerState(v10, 0, v2 == 2, 1, v9[2228].free);
    v8 = *(v17 + 6);
  }

  _Block_object_dispose(&v16, 8);
  return v8;
}

AppleBCMWLANIOReportingCore *AppleBCMWLANCore::reportSystemPowerState(AppleBCMWLANCore *this, unint64_t *a2, BOOL a3, BOOL a4)
{
  v4 = *(this + 9);
  result = *(v4 + 5504);
  if (result)
  {
    return AppleBCMWLANIOReportingCore::reportSystemPowerState(result, a2, a3, a4, *(v4 + 35656));
  }

  return result;
}

uint64_t ___ZN16AppleBCMWLANCore18SetPowerState_ImplEj_block_invoke(uint64_t a1)
{
  result = AppleBCMWLANCore::SetPowerStateGated(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

uint64_t AppleBCMWLANCore::SetPowerStateGated(IOService *this, uint64_t a2)
{
  v2 = a2;
  v4 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::SetPowerStateGated(this, v4, v2);
    }
  }

  v5 = this[1].OSObject::OSObjectInterface::__vftable;
  free = v5[648].free;
  if ((free & 0x30) == 0x20)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::SetPowerStateGated();
      }
    }
  }

  else if (v2 == 2)
  {
    if (free)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::SetPowerStateGated();
        }
      }
    }

    else
    {
      atomic_fetch_or(&v5[648].free, 1u);
      AppleBCMWLANCore::powerOnSystem(this);
    }
  }

  else if (v2)
  {
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::SetPowerStateGated();
      }
    }
  }

  else if (free)
  {
    removePropertyHelper(this, "IO80211WokeSystem");
    atomic_fetch_and(&this[1].OSObject::OSObjectInterface::__vftable[648].free, 0xFFFFFFFE);
    AppleBCMWLANCore::powerOffSystem(this);
  }

  else if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::SetPowerStateGated();
    }
  }

  return 0;
}

uint64_t ___ZN16AppleBCMWLANCore18SetPowerState_ImplEj_block_invoke_2284(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) == 2)
  {
    if ((v1->OSObject::OSMetaClassBase::__vftable[34].free)(*(a1 + 32)))
    {
      (v1->OSObject::OSMetaClassBase::__vftable[34].free)(v1);
      if (CCLogStream::shouldLog())
      {
        ___ZN16AppleBCMWLANCore18SetPowerState_ImplEj_block_invoke_2284_cold_1();
      }
    }

    v2 = v1[1].OSObject::OSObjectInterface::__vftable;
    free = v2[705].free;
    if (free)
    {
      IOService::ChangePowerState(free, 2u, 0);
      v2 = v1[1].OSObject::OSObjectInterface::__vftable;
    }

    BYTE5(v2[1875].free) = 1;
    if (BYTE4(v1[1].OSObject::OSObjectInterface::__vftable[1875].free) == 1)
    {
      IOService::RegisterService(v1, 0);
    }
  }

  else
  {
    BYTE5(v1[1].OSObject::OSObjectInterface::__vftable[1875].free) = 0;
  }

  return 0;
}

uint64_t AppleBCMWLANCore::powerOffSystem(void *this)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  AppleBCMWLANUtil::AutoreleasedTimeTrace::AutoreleasedTimeTrace(&v11, 0x40, 0, 1);
  mach_continuous_nanoseconds = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, v2);
  AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceWithTimestamp(&v11, mach_continuous_nanoseconds, 131074, 39328, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOffSystem()", 39328);
  v4 = this + 9;
  v5 = *(this[9] + 10376);
  if ((v5 & 0x20) != 0)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::powerOffSystem();
      }
    }

    if (AppleBCMWLANCore::waitForDriverEvent(this, 5, 10000) == -536870186)
    {
      AppleBCMWLANCore::powerOffSystem();
    }

    v5 = *(*v4 + 10376);
  }

  if ((v5 & 0x80) != 0)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::powerOffSystem();
      }
    }

    atomic_fetch_or((*v4 + 10376), 0x400u);
    v5 = *(*v4 + 10376);
  }

  if ((v5 & 0x400) != 0)
  {
    if (AppleBCMWLANCore::waitForDriverEvent(this, 0, 5000))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::powerOffSystem();
        }
      }
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::powerOffSystem();
    }
  }

  v7 = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, v6);
  AppleBCMWLANUtil::AutoreleasedTimeTrace::setMarkTimestamp(&v11, v7);
  if (!AppleBCMWLANCore::powerOff(this, 1))
  {
    *(*v4 + 6584) = 1;
  }

  AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceFromMarkTimestamp(&v11, 0x20002, 39361, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOffSystem()", 39361);
  if ((*(*v4 + 10376) & 0x8080) == 0x8000)
  {
    (*(**(*v4 + 5392) + 272))(*(*v4 + 5392));
  }

  v9 = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, v8);
  AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceWithTimestamp(&v11, (v9 - mach_continuous_nanoseconds), 131074, 39370, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOffSystem()", 39370);
  AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceWithTimestamp(&v11, v9, 131074, 39371, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOffSystem()", 39371);
  AppleBCMWLANUtil::AutoreleasedTimeTrace::dumpToLog(&v11, 0, 0);
  if (v11)
  {
    (*(*v11 + 16))(v11);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::powerOnSystem(AppleBCMWLANCore *this)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  AppleBCMWLANUtil::AutoreleasedTimeTrace::AutoreleasedTimeTrace(&v15, 0x40, 0, 1);
  mach_continuous_nanoseconds = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, v2);
  AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceWithTimestamp(&v15, mach_continuous_nanoseconds, 65537, 38859, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOnSystem()", 38859);
  v4 = (this + 72);
  *(*(this + 9) + 35664) = mach_continuous_nanoseconds;
  v5 = *(this + 9);
  v6 = *(v5 + 10376);
  if ((v6 & 0x20) != 0)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::powerOnSystem();
      }
    }

    *(*v4 + 6584) = 0;
  }

  else if ((v6 & 0x8000) != 0)
  {
    v7 = *(v5 + 5388);
    if (v7 > 4)
    {
      AppleBCMWLANCore::watchdogFailed(this);
    }

    else
    {
      *(v5 + 5388) = v7 + 1;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::powerOnSystem();
        }
      }

      AppleBCMWLANCore::watchdog(this, 0);
    }
  }

  else
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::powerOnSystem();
      }
    }

    v10 = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, v9);
    AppleBCMWLANUtil::AutoreleasedTimeTrace::setMarkTimestamp(&v15, v10);
    AppleBCMWLANCore::powerOn(this);
    AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceFromMarkTimestamp(&v15, 0x10001, 38882, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOnSystem()", 38882);
    atomic_fetch_and((*(this + 9) + 10376), 0xFFFFFBFF);
    v11 = *(this + 9);
    v12 = *(v11 + 11288);
    if (v12)
    {
      IO80211Controller::postMessage(this, v12, 1u, 0, 0, 1);
      v11 = *(this + 9);
    }

    if (*(v11 + 6588))
    {
      if (*(v11 + 11288))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::powerOnSystem();
          }
        }

        IO80211Controller::postMessage(this, *(*(this + 9) + 11288), 0x23u, 0, 0, 1);
        v11 = *(this + 9);
      }

      *(v11 + 6588) = 0;
      v11 = *v4;
    }

    *(v11 + 6584) = 0;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::powerOnSystem();
      }
    }

    v14 = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, v13);
    AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceWithTimestamp(&v15, (v14 - mach_continuous_nanoseconds), 65537, 38910, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOnSystem()", 38910);
    AppleBCMWLANUtil::AutoreleasedTimeTrace::recordTraceWithTimestamp(&v15, v14, 65537, 38911, "%s: %6u", "IOReturn AppleBCMWLANCore::powerOnSystem()", 38911);
    AppleBCMWLANUtil::AutoreleasedTimeTrace::dumpToLog(&v15, 0, 0);
  }

  if (v15)
  {
    (*(*v15 + 16))(v15);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::watchdogFailed(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::watchdogFailed();
    }
  }

  (*(*(*(*(this + 9) + 5392) + 48) + 208))();
  atomic_fetch_or((*(this + 9) + 10376), 0x40u);
  atomic_fetch_or((*(this + 9) + 10376), 0x20u);
  AppleBCMWLANCore::signalDriverReady(this);
  AppleBCMWLANCore::halt(this);
  return 3758097084;
}

uint64_t AppleBCMWLANCore::allowLinkup(int *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::allowLinkup();
    }
  }

  v10 = 0;
  v2 = (*(*this + 88))(this);
  if ((*(*v2 + 136))(v2))
  {
    v7 = this;
    v8 = AppleBCMWLANCore::handleResetLinkParamsAsyncCallBack;
    v9 = 0;
    v3 = *(*(this + 9) + 5408);
    v6[0] = &v10;
    v6[1] = 4;
    if (AppleBCMWLANCommander::sendIOVarSet(v3, "nolinkup", v6, kNoRxExpected, &v7, 0))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::allowLinkup();
        }
      }
    }
  }

  else
  {
    v4 = *(*(this + 9) + 5408);
    v7 = &v10;
    v8 = 4;
    if (AppleBCMWLANCommander::runIOVarSet(v4, "nolinkup", &v7, 0, 0))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::allowLinkup();
        }
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
      return AppleBCMWLANCore::allowLinkup();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::resetPorts(IOService *this)
{
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::resetPorts();
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 31))
  {
    WORD2(this[1].OSObject::OSObjectInterface::__vftable[643].free) = 0;
    active = AppleBCMWLANCore::configureActivePortsInToChip(this, 858980353);
    if (active)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::resetPorts();
        }
      }
    }
  }

  else
  {
    active = 0;
  }

  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::resetPorts();
    }
  }

  return active;
}

uint64_t AppleBCMWLANCore::collectScanForwardStats(IO80211Controller *this)
{
  v13 = 1;
  v14 = 6;
  v2 = IOMallocZeroData();
  if (v2)
  {
    v3 = v2;
    if (AppleBCMWLANCore::featureFlagIsBitSet(this, 117) && (*(*(this + 9) + 17523) & 2) != 0)
    {
      v4 = (*(*this + 88))(this);
      if ((*(*v4 + 136))(v4))
      {
        *&v11 = this;
        *(&v11 + 1) = AppleBCMWLANCore::scanForwardStatsAsyncCallBack;
        v12 = 0;
        v5 = *(*(this + 9) + 5408);
        v9 = &v13;
        v10 = 6;
        v8 = 5636182;
        if (AppleBCMWLANCommander::sendIOVarGet(v5, "spmi_scan_fwd", &v9, &v8, &v11, 0) && (*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::collectScanForwardStats();
          }
        }
      }

      else
      {
        *&v11 = v3;
        *(&v11 + 1) = 0x5600560056;
        v7 = *(*(this + 9) + 5408);
        v9 = &v13;
        v10 = 6;
        if (AppleBCMWLANCommander::runIOVarGet(v7, "spmi_scan_fwd", &v9, &v11, 0))
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::collectScanForwardStats();
            }
          }
        }

        else
        {
          AppleBCMWLANCore::processScanForwardStats(this, v3);
        }
      }
    }

    return IOFreeData();
  }

  else
  {
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::collectScanForwardStats();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::processPowerStatsChangesInSleep(AppleBCMWLANCore *this, int a2)
{
  v2 = *(this + 9);
  if (*(v2 + 8819) != 1 || (*(v2 + 10376) & 1) == 0 || *(v2 + 19852) != 1)
  {
    return 0;
  }

  bzero(v38, 0x2C0uLL);
  v37 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36[0] = v5;
  v36[1] = v5;
  BYTE4(v36[0]) = 0;
  LODWORD(v36[0]) = 18;
  PowerStats = AppleBCMWLANCore::getPowerStats(this, v38, v36);
  if (PowerStats)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::processPowerStatsChangesInSleep();
      }
    }

    return PowerStats;
  }

  v8 = *(this + 9);
  v9 = v38[24] - *(v8 + 11440);
  v10 = v38[11] - *(v8 + 11388);
  v11 = (v38[1] - *(v8 + 11348));
  v12 = (v38[2] - *(v8 + 11352));
  v13 = (v38[0] - *(v8 + 11344));
  if (AppleBCMWLANBGScanAdapter::isPnoScanConfigured(*(v8 + 5496)))
  {
    v14 = 4;
  }

  else
  {
    v14 = 0;
  }

  v15 = (1.0 - ((v12 + v11) / v13)) * 1000.0;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v25 = (*(*this + 1952))(this);
      CCLogStream::logAlert(v25, "[dk] %s@%d: (0x%x) MpcDuration %dms PmDuration %dms SleepDuration %dms DutyCycle %d.%d%% RoamScanDuration %dms ConnectTime %dms, LPAS AvailableRoamTime %dms, WOW AvailableRoamTime %dms\n", "processPowerStatsChangesInSleep", 51523, v14, v12, v11, v13, v15 / 10, v15 % 10, v9, v10, *(*(this + 9) + 6660), *(*(this + 9) + 6632));
    }
  }

  v16 = *(this + 9);
  if (*(v16 + 776))
  {
    v17 = *(v16 + 35528);
    if (*(v16 + 777) == 1)
    {
      v14 = v14 | 1;
      if (v17)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            v18 = (*(*this + 1952))(this);
            CCLogStream::logAlert(v18, "[dk] %s@%d:LPAS (0x%x) power report: MpcDuration %dms PmDuration %dms SleepDuration %dms DutyCycle %d.%d%%\n", "processPowerStatsChangesInSleep");
          }
        }
      }

      else
      {
        AppleBCMWLANCore::calculateAvailableRoamTime(this, 2, v10 + v9, (v16 + 6660));
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            v23 = (*(*this + 1952))(this);
            CCLogStream::logAlert(v23, "[dk] %s@%d:LPAS (0x%x) power report: MpcDuration %dms PmDuration %dms SleepDuration %dms DutyCycle %d.%d%% RoamScanDuration %dms ConnectTime %dms AvailableRoamTime %dms\n", "processPowerStatsChangesInSleep", 51535, v14);
          }
        }
      }

      goto LABEL_36;
    }

    v14 = v14 | 2;
    if (!v17)
    {
      AppleBCMWLANCore::calculateAvailableRoamTime(this, 1, v10 + v9, (v16 + 6632));
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v26 = (*(*this + 1952))(this);
          CCLogStream::logAlert(v26, "[dk] %s@%d:WOW (0x%x) power report: MpcDuration %dms PmDuration %dms SleepDuration %dms DutyCycle %d.%d%% RoamScanDuration %dms ConnectTime %dms AvailableRoamTime %dms\n", "processPowerStatsChangesInSleep", 51546, v14);
        }
      }

      goto LABEL_36;
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v19 = (*(*this + 1952))(this);
        v20 = (v15 / 10);
        v21 = (v15 % 10);
        v30 = v11;
        v31 = v13;
        v28 = v14;
        v29 = v12;
        v27 = 51548;
        v22 = "[dk] %s@%d:WOW (0x%x) power report: MpcDuration %dms PmDuration %dms SleepDuration %dms DutyCycle %d.%d%%\n";
        goto LABEL_29;
      }
    }
  }

  else if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      v19 = (*(*this + 1952))(this);
      v20 = (v15 / 10);
      v21 = (v15 % 10);
      v30 = v11;
      v31 = v13;
      v28 = v14;
      v29 = v12;
      v27 = 51552;
      v22 = "[dk] %s@%d:PNO (0x%x) power report: MpcDuration %dms PmDuration %dms SleepDuration %dms DutyCycle %d.%d%%\n";
LABEL_29:
      CCLogStream::logAlert(v19, v22, "processPowerStatsChangesInSleep", v27, v28, v29, v30, v31, v20, v21, v32, v33, v34);
    }
  }

LABEL_36:
  if (a2)
  {
    v35[0] = v14;
    v35[1] = v12;
    v35[2] = v11;
    v35[3] = v10 + v9;
    v35[4] = v13;
    *&v35[5] = v15 / 10.0;
    v24 = *(*(this + 9) + 11288);
    if (v24)
    {
      IO80211Controller::postMessage(this, v24, 0x3Du, v35, 0x18uLL, 1);
    }
  }

  return PowerStats;
}

IOLock *AppleBCMWLANCore::configureAssociatedSleepExit(unint64_t this)
{
  v2 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureAssociatedSleepExit();
    }
  }

  v3 = this + 72;
  *(*(this + 72) + 778) = 1;
  AppleBCMWLANCore::updateInactivityAndSleepCounters(this, 0);
  AppleBCMWLANCore::configureAvgRssiParamsForAssociatedSleepExit(this);
  if (*(*(this + 72) + 777) == 1)
  {
    if (AppleBCMWLANCore::configureLPASExit(this))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureAssociatedSleepExit();
        }
      }

      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (!AppleBCMWLANCore::configureWoWExit(this))
  {
LABEL_13:
    if (AppleBCMWLANCore::featureFlagIsBitSet(this, 87))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureAssociatedSleepExit();
        }
      }

      AppleBCMWLANConfigManager::configureBeaconDriftOffsetConfig(*(*v3 + 5464), 0);
    }

    AppleBCMWLANCore::featureFlagIsBitSet(this, 82);
    goto LABEL_19;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureAssociatedSleepExit();
    }
  }

LABEL_19:
  if (*(*v3 + 30092) == 1)
  {
    AppleBCMWLANCore::setupTrafficMonitoring(this, 1);
  }

  if (AppleBCMWLANCore::checkForEarlyBeconTerminationSupport(this) && (v4 = AppleBCMWLANPowerManager::configureEarlyBeaconTermination(*(*v3 + 5520), 1), v4))
  {
    v5 = v4;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureAssociatedSleepExit();
      }
    }
  }

  else
  {
    if (AppleBCMWLANCore::isMIMOPowerSaveEnabled(this))
    {
      if (AppleBCMWLANPowerManager::configureMIMOPowerSaveAssociatedSleepExit(*(*v3 + 5520)))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureAssociatedSleepExit();
          }
        }
      }
    }

    if ((IO80211BssManager::isAssociatedToAdhoc(*(*v3 + 5432)) & 1) != 0 || (v6 = AppleBCMWLANConfigManager::setupBeaconOffload(*(*v3 + 5464), 0, 0, *(*v3 + 208), 0), !v6))
    {
      v5 = AppleBCMWLANCore::configureAssociatedSleepExitParams(this);
      if (v5)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureAssociatedSleepExit();
          }
        }
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureAssociatedSleepExit(this, v2, this + 72, v5);
        }
      }

      AppleBCMWLANCore::collectBeaconRxCounters(this, *(this + 72) + 19692, 0);
      *(*(this + 72) + 777) = 0;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureAssociatedSleepExit();
        }
      }
    }

    else
    {
      v5 = v6;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureAssociatedSleepExit();
        }
      }
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::systemWokenByWiFi(uint64_t this)
{
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  memset(__dst, 0, sizeof(__dst));
  v18 = 0;
  v2 = OSString::withCString("com.apple.iokit.pm.wakedescription");
  if (!v2 || (v3 = v2, v4 = IOService::StateNotificationItemCopy(*(*(this + 72) + 35536), v2, &v18, 0), (v3->release)(v3), v4))
  {
LABEL_17:
    result = (*(*this + 1952))(this);
    if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANCore::systemWokenByWiFi(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, __dst);
        return 0;
      }
    }
  }

  else
  {
    Object = OSDictionary::getObject(v18, "com.apple.iokit.pm.wakereason");
    v6 = OSMetaClassBase::safeMetaCast(Object, gOSStringMetaClass);
    if (v6)
    {
      CStringNoCopy = OSString::getCStringNoCopy(v6);
      strlcpy(__dst, CStringNoCopy, 0x100uLL);
    }

    else
    {
      IOLog("AppleBCMWLANCore::systemWokenByWiFi: Failed, Unknown Wake reason, [%p]\n", 0);
      strcpy(__dst, "Unknown Wake reason");
    }

    if (v18)
    {
      (v18->release)(v18);
      v18 = 0;
    }

    v17 = 0;
    IOParseBootArgNumber("wifibt-external", &v17, 4);
    if (v17 && (*__str = 0, v22 = 0, *__little = 0, v20 = 0, snprintf(__str, 0x10uLL, "pci%04x,%04x", v17, HIWORD(v17)), v8 = strlen(__dst), strnstr(__dst, __str, v8)))
    {
      v9 = 0;
      while (1)
      {
        snprintf(__little, 0x10uLL, "ATC%d.CIOWakeup", v9);
        v10 = strlen(__dst);
        if (strnstr(__dst, __little, v10))
        {
          break;
        }

        if (++v9 == 4)
        {
          goto LABEL_13;
        }
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::systemWokenByWiFi();
        }
      }
    }

    else
    {
LABEL_13:
      v11 = 0;
      while (1)
      {
        v12 = kWoWWakeReasonStrings[v11];
        v13 = strlen(__dst);
        if (strnstr(__dst, v12, v13))
        {
          if ((*(**(*(this + 72) + 5392) + 816))(*(*(this + 72) + 5392), __dst, v12, 255))
          {
            break;
          }
        }

        if (++v11 == 4)
        {
          goto LABEL_17;
        }
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v15 = (*(*this + 1952))(this);
          v16 = *(this + 72);
          if (v16)
          {
            LODWORD(v16) = *(v16 + 8824);
          }

          CCLogStream::logAlert(v15, "[dk] %s@%d:WoW Wake reason = %s, kern.wakereason: '%s', WiFiWakeType[0x%08x]\n", "systemWokenByWiFi", 44763, v12, __dst, v16);
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t acquireProperty<OSDictionary>(IOService *a1, const char *a2, OSMetaClassBase **a3, unint64_t a4, const char *a5)
{
  anObject = 0;
  result = acquirePropertyWithString(a1, a2, &anObject, a4, a5);
  if (result)
  {
    v7 = OSMetaClassBase::safeMetaCast(anObject, gOSDictionaryMetaClass);
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

BOOL AppleBCMWLANCore::setWiFiWakeType(AppleBCMWLANCore *this, int a2)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(v2 + 8824) = a2;
  }

  else
  {
    AppleBCMWLANCore::setWiFiWakeType();
  }

  return v2 != 0;
}

uint64_t AppleBCMWLANCore::sendTxPowerCapValueToFirmware(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = (result + 72);
  v3 = *(result + 72);
  if ((*(v3 + 10376) & 0x2080B0) == 0)
  {
    v6 = a2;
    if (a2 == -1)
    {
      return result;
    }

    v7 = a3;
    if (a3 == -1)
    {
      return result;
    }

    result = *(v3 + 5464);
    if (!result)
    {
      return result;
    }

    result = AppleBCMWLANConfigManager::isDualPowerModeSupported(result);
    if (!result)
    {
      return result;
    }

    result = AppleBCMWLANConfigManager::getTxPowerCapConfig(*(*v4 + 5464));
    v8 = *(result + 12);
    if (v8 != 4)
    {
      if (v8 == 3)
      {
        *&v30[1] = 0xAAAAAAAAAAAAAAAALL;
        v31 = -21846;
        v30[0] = 3;
        v17 = *(result + 11);
        if (*(result + 11))
        {
          v18 = 0;
          if (v6 == 1 && v7 == 0)
          {
            v19 = 2;
          }

          else
          {
            v19 = 0;
          }

          v20 = result + 1;
          if (v6 == 0 && v7 == 1)
          {
            v19 = 1;
          }

          if (v7 | v6)
          {
            v21 = v19;
          }

          else
          {
            v21 = 3;
          }

          do
          {
            if (*(v20 + v18))
            {
              v22 = v7 == 0;
            }

            else
            {
              v22 = v6 == 0;
            }

            if (*(v20 + v18) == 2)
            {
              v23 = v21;
            }

            else
            {
              v23 = v22;
            }

            v30[++v18] = v23;
          }

          while (v18 < v17);
        }

        v15 = *(*v4 + 5408);
        v16 = 11;
      }

      else
      {
        if (v8 != 2)
        {
          return result;
        }

        v30[5] = -86;
        *&v30[1] = -1431655766;
        v30[0] = 2;
        v9 = *(result + 11);
        if (*(result + 11))
        {
          v10 = 0;
          v11 = result + 1;
          if (v6 == 1 && v7 == 0)
          {
            v12 = 2;
          }

          else
          {
            v12 = 0;
          }

          if (v6 == 0 && v7 == 1)
          {
            v12 = 1;
          }

          if (!(v7 | v6))
          {
            v12 = 3;
          }

          do
          {
            if (*(v11 + v10))
            {
              v13 = v7 == 0;
            }

            else
            {
              v13 = v6 == 0;
            }

            if (*(v11 + v10) == 2)
            {
              v14 = v12;
            }

            else
            {
              v14 = v13;
            }

            v30[++v10] = v14;
          }

          while (v10 < v9);
        }

        v15 = *(*v4 + 5408);
        v16 = 6;
      }

LABEL_58:
      v29[0] = v30;
      v29[1] = v16;
      result = AppleBCMWLANCommander::runIOVarSet(v15, "txcapstate", v29, 0, 0);
      if (result == -469793790 || result == -469793788)
      {
        v27 = *v4;
        if ((*(*v4 + 10376) & 0x80) != 0)
        {
          return result;
        }
      }

      else
      {
        if (!result)
        {
          return result;
        }

        v27 = *v4;
      }

      return CCFaultReporter::reportFault(*(v27 + 5536), 5u, "/Library/Caches/com.apple.xbs/Sources/AppleBCMWLANV3_driverkit/AppleBCMWLANCore.cpp", 0xD01Au, "sendTxPowerCapValueToFirmware", 0, result, "txcapstate failed");
    }

    *v30 = 772;
    if (*(result + 1))
    {
      if (*(result + 1) == 2)
      {
        if (v7 | v6)
        {
          if (v6 || v7 != 1)
          {
            if (v7)
            {
              v28 = 0;
            }

            else
            {
              v28 = v6 == 1;
            }

            if (v28)
            {
              v24 = 2;
            }

            else
            {
              v24 = 0;
            }
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v24 = 3;
        }

        goto LABEL_57;
      }

      v25 = v7 == 0;
    }

    else
    {
      v25 = v6 == 0;
    }

    v24 = v25;
LABEL_57:
    v30[2] = v24;
    v15 = *(*v4 + 5408);
    v16 = 3;
    goto LABEL_58;
  }

  v5 = result;
  result = (*(*result + 1952))(result, a2, a3);
  if (result)
  {
    (*(*v5 + 1952))(v5);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::sendTxPowerCapValueToFirmware();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::resetRangingState(IO80211Controller *this)
{
  v2 = *(this + 9);
  if (*(v2 + 11288))
  {
    v10 = 0;
    v8[0] = &v9;
    v8[1] = 10;
    v9 = 0;
    if (AppleBCMWLANCommander::runIOVarSet(*(v2 + 5408), "awdl_ranging_config", v8, 0, 0))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::resetRangingState();
        }
      }
    }

    v3 = *(this + 9);
    if ((*(v3 + 10378) & 4) != 0)
    {
      v6 = 1;
      v7 = 2;
      v4 = *(v3 + 11288);
      if (v4)
      {
        IO80211Controller::postMessage(this, v4, 0x53u, &v6, 0xCuLL, 1);
      }

      else if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::resetRangingState();
        }
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::resetRangingState();
        }
      }

      v3 = *(this + 9);
    }

    atomic_fetch_and((v3 + 10376), 0xFFFBFFFF);
  }

  else if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::resetRangingState();
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::configureAssociatedSleepEntry(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureAssociatedSleepEntry();
    }
  }

  AppleBCMWLANCore::configureSupplicantTimeOutForEAPAssociation(this);
  v2 = this + 72;
  *(*(this + 9) + 777) = *(*(this + 9) + 6728);
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureAssociatedSleepEntry();
    }
  }

  if (*(*v2 + 777) == 1)
  {
    v3 = AppleBCMWLANCore::configureLPASEntry(this);
    v4 = v3;
    if (v3 == -536870174)
    {
      return v4;
    }

    if (!v3)
    {
      if (AppleBCMWLANCore::featureFlagIsBitSet(this, 87))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureAssociatedSleepEntry();
          }
        }

        AppleBCMWLANConfigManager::configureBeaconDriftOffsetConfig(*(*v2 + 5464), 1);
      }

      if (AppleBCMWLANCore::featureFlagIsBitSet(this, 82))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureAssociatedSleepEntry();
          }
        }
      }

LABEL_28:
      if (AppleBCMWLANCore::checkForEarlyBeconTerminationSupport(this))
      {
        if (AppleBCMWLANPowerManager::configureEarlyBeaconTermination(*(*v2 + 5520), 0))
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configureAssociatedSleepEntry();
            }
          }
        }
      }

      if ((IO80211BssManager::isAssociatedToAdhoc(*(*v2 + 5432)) & 1) == 0)
      {
        if (AppleBCMWLANConfigManager::setupBeaconOffload(*(*v2 + 5464), 1, 0, *(*v2 + 208), 0))
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configureAssociatedSleepEntry();
            }
          }
        }
      }

      if (AppleBCMWLANCore::isMIMOPowerSaveEnabled(this))
      {
        AppleBCMWLANPowerManager::configureMIMOPowerSaveAssociatedSleepEntry(*(*v2 + 5520));
      }

      if (*(*v2 + 30092) == 1)
      {
        AppleBCMWLANCore::setupTrafficMonitoring(this, 0);
      }

      AppleBCMWLANCore::configureAssociatedSleepEntryParams(this);
      mach_continuous_time();
      absolutetime_to_nanoseconds();
      *(*(this + 9) + 17720) = 0;
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureAssociatedSleepEntry();
        }
      }

      return 0;
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureAssociatedSleepEntry();
      }
    }
  }

  else
  {
    v5 = AppleBCMWLANCore::configureWoWEntry(this);
    if (!v5)
    {
      if (AppleBCMWLANCore::featureFlagIsBitSet(this, 87))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureAssociatedSleepEntry();
          }
        }

        AppleBCMWLANConfigManager::configureBeaconDriftOffsetConfig(*(*v2 + 5464), 2);
      }

      goto LABEL_28;
    }

    v4 = v5;
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureAssociatedSleepEntry();
      }
    }
  }

  return v4;
}

uint64_t AppleBCMWLANCore::configureEventBitMaskForUnAssociatedSleep(AppleBCMWLANCore *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureEventBitMaskForUnAssociatedSleep();
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 34))
  {
    v2 = *(this + 9);
    v3 = *(v2 + 1184);
    IOLockLock(v3);
    *(v2 + 1118) &= ~0x10u;
    IOLockUnlock(v3);
    v4 = *(this + 9);
    v5 = *(v4 + 1184);
    IOLockLock(v5);
    *(v4 + 1117) &= ~0x10u;
    IOLockUnlock(v5);
  }

  v6 = *(this + 9);
  v7 = *(v6 + 1184);
  IOLockLock(v7);
  *(v6 + 1097) &= ~0x20u;
  IOLockUnlock(v7);
  v8 = *(this + 9);
  v9 = *(v8 + 1184);
  IOLockLock(v9);
  *(v8 + 1097) &= ~0x40u;
  IOLockUnlock(v9);
  v10 = *(this + 9);
  v11 = *(v10 + 1184);
  IOLockLock(v11);
  *(v10 + 1102) &= ~0x10u;
  IOLockUnlock(v11);
  v12 = *(this + 9);
  v13 = *(v12 + 1184);
  IOLockLock(v13);
  *(v12 + 1117) &= ~8u;
  IOLockUnlock(v13);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 33))
  {
    v14 = *(this + 9);
    v15 = *(v14 + 1184);
    IOLockLock(v15);
    *(v14 + 1111) &= ~0x10u;
    IOLockUnlock(v15);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 34) && AppleBCMWLANCore::featureFlagIsBitSet(this, 76))
  {
    v16 = *(this + 9);
    v17 = *(v16 + 1184);
    IOLockLock(v17);
    *(v16 + 1119) &= ~0x20u;
    IOLockUnlock(v17);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 71))
  {
    v18 = *(this + 9);
    v19 = *(v18 + 1184);
    IOLockLock(v19);
    *(v18 + 1119) &= ~1u;
    IOLockUnlock(v19);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 79))
  {
    v20 = *(this + 9);
    v21 = *(v20 + 1184);
    IOLockLock(v21);
    *(v20 + 1119) &= ~0x40u;
    IOLockUnlock(v21);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 92))
  {
    v22 = *(this + 9);
    v23 = *(v22 + 1184);
    IOLockLock(v23);
    *(v22 + 1120) &= ~0x80u;
    IOLockUnlock(v23);
  }

  v24 = *(this + 9);
  v25 = *(v24 + 1184);
  IOLockLock(v25);
  *(v24 + 1099) &= ~4u;
  IOLockUnlock(v25);
  v26 = *(this + 9);
  v27 = *(v26 + 1184);
  IOLockLock(v27);
  *(v26 + 1122) &= ~2u;
  IOLockUnlock(v27);
  v28 = *(this + 9);
  v29 = *(v28 + 1184);
  IOLockLock(v29);
  *(v28 + 1122) &= ~0x10u;
  IOLockUnlock(v29);
  v30 = *(this + 9);
  v31 = *(v30 + 1184);
  IOLockLock(v31);
  *(v30 + 1101) &= ~0x40u;
  IOLockUnlock(v31);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 115))
  {
    v32 = *(this + 9);
    v33 = *(v32 + 1184);
    IOLockLock(v33);
    *(v32 + 1121) &= ~8u;
    IOLockUnlock(v33);
  }

  if (AppleBCMWLANBGScanAdapter::isBGScanCacheRollOverEnabled(*(*(this + 9) + 5496)))
  {
    v34 = *(this + 9);
    v35 = *(v34 + 1184);
    IOLockLock(v35);
    *(v34 + 1103) &= ~2u;
    IOLockUnlock(v35);
  }

  else
  {
    AppleBCMWLANCore::addEventBit(this);
  }

  v36 = *(this + 9);
  v37 = *(v36 + 1184);
  IOLockLock(v37);
  *(v36 + 1104) &= ~0x20u;
  IOLockUnlock(v37);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 95))
  {
    v38 = *(this + 9);
    v39 = *(v38 + 1184);
    IOLockLock(v39);
    *(v38 + 1121) &= ~1u;
    IOLockUnlock(v39);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 93))
  {
    v40 = *(this + 9);
    v41 = *(v40 + 1184);
    IOLockLock(v41);
    *(v40 + 1121) &= ~0x80u;
    IOLockUnlock(v41);
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 101))
  {
    v42 = *(this + 9);
    v43 = *(v42 + 1184);
    IOLockLock(v43);
    *(v42 + 1119) &= ~8u;
    IOLockUnlock(v43);
  }

  IOLockLock(*(*(this + 9) + 1184));
  v44 = *(this + 9);
  v44[72] = *(v44 + 1096);
  *(v44 + 1164) = *(v44 + 1108);
  IOLockUnlock(*(*(this + 9) + 1184));
  v45 = AppleBCMWLANCore::writeEventBitField(this);
  v46 = (*(*this + 1952))(this);
  if (v45)
  {
    if (v46)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureEventBitMaskForUnAssociatedSleep();
      }
    }
  }

  else if (v46)
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureEventBitMaskForUnAssociatedSleep();
    }
  }

  return v45;
}

uint64_t AppleBCMWLANCore::resetWoWStateMachine(void *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::resetWoWStateMachine();
    }
  }

  *(this[9] + 8819) = 0;
  *(this[9] + 9480) = 0;
  *(this[9] + 9488) = 0;
  *(this[9] + 8817) = 0;
  *(this[9] + 8818) = 0;
  *(this[9] + 8820) = 0;
  *(this[9] + 10310) = 0;
  v2 = 9780;
  v3 = 10;
  do
  {
    v4 = (this[9] + v2);
    *v4 = 0;
    v4[1] = 0;
    v2 += 16;
    --v3;
  }

  while (v3);
  *(this[9] + 10036) = 0;
  *(this[9] + 10040) = 0;
  *(this[9] + 10041) = 0;
  *(this[9] + 10042) = 0;
  *(this[9] + 10043) = 0;
  *(this[9] + 776) = 0;
  *(this[9] + 6592) = 0;
  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::resetWoWStateMachine();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::resetPktFilterParams(void *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::resetPktFilterParams();
    }
  }

  *(this[9] + 9488) = 0;
  *(this[9] + 10310) = 0;
  v2 = 9780;
  v3 = 10;
  do
  {
    v4 = (this[9] + v2);
    *v4 = 0;
    v4[1] = 0;
    v2 += 16;
    --v3;
  }

  while (v3);
  result = (*(*this + 1952))(this);
  if (result)
  {
    (*(*this + 1952))(this);
    result = CCLogStream::shouldLog();
    if (result)
    {
      return AppleBCMWLANCore::resetPktFilterParams();
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::getSupportedBands(AppleBCMWLANCore *this)
{
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 28))
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

uint64_t AppleBCMWLANCore::configureWeightAvgLQMUpdates(AppleBCMWLANCore *a1, _OWORD *a2)
{
  v2 = 3758097085;
  if (!a2)
  {
    return 3758097084;
  }

  v13[2] = "RSSI";
  v13[3] = "SNR";
  v13[4] = "TXRATE";
  v13[5] = "RXRATE";
  v5 = IOMallocZeroData();
  if (v5)
  {
    v6 = v5;
    *v5 = 0x10000000140000;
    *(v5 + 8) = *a2;
    v7 = *(*(a1 + 9) + 5408);
    v13[0] = v6;
    v13[1] = 24;
    v8 = AppleBCMWLANCommander::runIOVarSet(v7, "lq_wa_params", v13, 0, 0);
    if (v8 == -469794537)
    {
      if ((*(*a1 + 1952))(a1))
      {
        (*(*a1 + 1952))(a1);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureWeightAvgLQMUpdates();
        }
      }

      AppleBCMWLANCore::featureFlagClearBit(a1, 71);
      v2 = 3825172759;
    }

    else
    {
      v2 = v8;
      if (v8)
      {
        if ((*(*a1 + 1952))(a1))
        {
          (*(*a1 + 1952))(a1);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configureWeightAvgLQMUpdates();
          }
        }

        AppleBCMWLANCore::featureFlagClearBit(a1, 71);
      }

      else
      {
        v10 = 0;
        v11 = v6 + 8;
        do
        {
          if ((*(*a1 + 1952))(a1))
          {
            (*(*a1 + 1952))(a1);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configureWeightAvgLQMUpdates();
            }
          }

          v11 += 4;
        }

        while (v10++ < 3);
        AppleBCMWLANCore::featureFlagSetBit(a1, 71);
        AppleBCMWLANCore::addEventBit(a1);
        v2 = 0;
      }
    }

    IOFreeData();
  }

  else if ((*(*a1 + 1952))(a1))
  {
    (*(*a1 + 1952))(a1);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureWeightAvgLQMUpdates();
    }
  }

  return v2;
}

IO80211Controller *AppleBCMWLANCore::reportLQMCrashTracerFeatureFlag(IO80211Controller *this)
{
  v1 = *(this + 9);
  v3 = *(v1 + 30064);
  v2 = *(v1 + 11288);
  if (v2)
  {
    return IO80211Controller::postMessage(this, v2, 0xB1u, &v3, 4uLL, 1);
  }

  return this;
}

IO80211Controller *AppleBCMWLANCore::reportP2PForULLRTInfraFeatureFlag(IO80211Controller *this)
{
  v1 = *(this + 9);
  v3 = *(v1 + 30080);
  v2 = *(v1 + 11288);
  if (v2)
  {
    return IO80211Controller::postMessage(this, v2, 0xC2u, &v3, 4uLL, 1);
  }

  return this;
}

uint64_t AppleBCMWLANCore::setL3CtrlTxProfile(uint64_t this, int a2)
{
  v2 = *(this + 72);
  if (*(v2 + 18476) != a2)
  {
    v4 = this;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v17[12] = v5;
    *v17 = v5;
    v16 = v5;
    v15 = v5;
    v14 = v5;
    v13 = v5;
    if (a2)
    {
      *&v13 = 0x4000100200000;
      *(&v13 + 1) = 0x4000200000010;
      *&v14 = 0x400030000000CLL;
      *(&v14 + 1) = 0x4000700000000;
      LODWORD(v15) = 2000;
      v6 = 40;
      v7 = 1;
      v8 = 44;
    }

    else
    {
      LOWORD(v13) = 0;
      v6 = 6;
      v7 = 3;
      v8 = 10;
    }

    v11[0] = v7;
    v12 = 0;
    v11[1] = v6;
    v9 = *(v2 + 5408);
    v10[0] = v11;
    v10[1] = v8;
    this = AppleBCMWLANCommander::runIOVarSet(v9, "tx_profile", v10, 0, 0);
    if (!this)
    {
      this = (*(*v4 + 1952))(v4);
      if (this)
      {
        (*(*v4 + 1952))(v4);
        this = CCLogStream::shouldLog();
        if (this)
        {
          this = AppleBCMWLANCore::setL3CtrlTxProfile(v4, v4 & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v11);
        }
      }

      *(*(v4 + 72) + 18476) = a2;
    }
  }

  return this;
}

uint64_t AppleBCMWLANCore::enablePTKKeyBuffer(void *this)
{
  v6 = 1;
  v2 = *(this[9] + 5408);
  v5[0] = &v6;
  v5[1] = 4;
  v3 = AppleBCMWLANCommander::runIOVarSet(v2, "buf_key_b4_m4", v5, 0, 0);
  if (v3)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::enablePTKKeyBuffer();
      }
    }
  }

  return v3;
}

uint64_t AppleBCMWLANCore::configureSupplicantTimeOutForEAPAssociation(AppleBCMWLANCore *this)
{
  CurrentBSS = AppleBCMWLANBssManager::getCurrentBSS(*(*(this + 9) + 5432));
  if (!CurrentBSS || !IO80211BSSBeacon::is8021xEnabled(CurrentBSS))
  {
    return 0;
  }

  v3 = *(*(this + 9) + 5416);

  return AppleBCMWLANJoinAdapter::configureSupplicantTimeOutForEAPAssociation(v3);
}

uint64_t AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(IOService *this)
{
  v2 = OSString::withCString("com.apple.wifi.TxDCStatsSlice0Ant0");
  if (!v2)
  {
    return AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics();
  }

  v3 = v2;
  v4 = OSDictionary::withCapacity(0xAu);
  if (!v4)
  {
    AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics();
    goto LABEL_27;
  }

  v5 = OSString::withCString("Slice0Ant0TxDC0To10");
  if (!v5)
  {
    AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics();
    goto LABEL_27;
  }

  v6 = v5;
  v7 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[394].init, 0x40uLL);
  if (v7)
  {
    v8 = v7;
    OSDictionary::setObject(v4, v6, v7);
    (v6->release)(v6);
    (v8->release)(v8);
    v9 = OSString::withCString("Slice0Ant0TxDC10To20");
    if (!v9)
    {
      AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics();
      goto LABEL_27;
    }

    v6 = v9;
    v10 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[394].free, 0x40uLL);
    if (v10)
    {
      v11 = v10;
      OSDictionary::setObject(v4, v6, v10);
      (v6->release)(v6);
      (v11->release)(v11);
      v12 = OSString::withCString("Slice0Ant0TxDC20To30");
      if (!v12)
      {
        AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics();
        goto LABEL_27;
      }

      v6 = v12;
      v13 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[395].init, 0x40uLL);
      if (v13)
      {
        v14 = v13;
        OSDictionary::setObject(v4, v6, v13);
        (v6->release)(v6);
        (v14->release)(v14);
        v15 = OSString::withCString("Slice0Ant0TxDC30To40");
        if (!v15)
        {
          AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics();
          goto LABEL_27;
        }

        v6 = v15;
        v16 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[395].free, 0x40uLL);
        if (v16)
        {
          v17 = v16;
          OSDictionary::setObject(v4, v6, v16);
          (v6->release)(v6);
          (v17->release)(v17);
          v18 = OSString::withCString("Slice0Ant0TxDC40To50");
          if (!v18)
          {
            AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics();
            goto LABEL_27;
          }

          v6 = v18;
          v19 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[396].init, 0x40uLL);
          if (v19)
          {
            v20 = v19;
            OSDictionary::setObject(v4, v6, v19);
            (v6->release)(v6);
            (v20->release)(v20);
            v21 = OSString::withCString("Slice0Ant0TxDC50To60");
            if (!v21)
            {
              AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics();
              goto LABEL_27;
            }

            v6 = v21;
            v22 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[396].free, 0x40uLL);
            if (v22)
            {
              v23 = v22;
              OSDictionary::setObject(v4, v6, v22);
              (v6->release)(v6);
              (v23->release)(v23);
              v24 = OSString::withCString("Slice0Ant0TxDC60To70");
              if (!v24)
              {
                AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics();
                goto LABEL_27;
              }

              v6 = v24;
              v25 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[397].init, 0x40uLL);
              if (v25)
              {
                v26 = v25;
                OSDictionary::setObject(v4, v6, v25);
                (v6->release)(v6);
                (v26->release)(v26);
                v27 = OSString::withCString("Slice0Ant0TxDC70To80");
                if (!v27)
                {
                  AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics();
                  goto LABEL_27;
                }

                v6 = v27;
                v28 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[397].free, 0x40uLL);
                if (v28)
                {
                  v29 = v28;
                  OSDictionary::setObject(v4, v6, v28);
                  (v6->release)(v6);
                  (v29->release)(v29);
                  v30 = OSString::withCString("Slice0Ant0TxDC80To90");
                  if (!v30)
                  {
                    AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics();
                    goto LABEL_27;
                  }

                  v6 = v30;
                  v31 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[398].init, 0x40uLL);
                  if (v31)
                  {
                    v32 = v31;
                    OSDictionary::setObject(v4, v6, v31);
                    (v6->release)(v6);
                    (v32->release)(v32);
                    v33 = OSString::withCString("Slice0Ant0TxDC90To100");
                    if (!v33)
                    {
                      AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics();
                      goto LABEL_27;
                    }

                    v6 = v33;
                    v34 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[398].free, 0x40uLL);
                    if (v34)
                    {
                      v35 = v34;
                      OSDictionary::setObject(v4, v6, v34);
                      (v6->release)(v6);
                      (v35->release)(v35);
                      v36 = IOService::CoreAnalyticsSendEvent(this, 0, v3, v4, 0);
                      if (v36)
                      {
                        v37 = v36;
                        if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                        {
                          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                          if (CCLogStream::shouldLog())
                          {
                            AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3, v37);
                          }
                        }
                      }

                      goto LABEL_27;
                    }

                    if (AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics())
                    {
                      goto LABEL_63;
                    }

                    v40 = 41788;
LABEL_65:
                    v41 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                    CCLogStream::logAlert(v41, "[dk] %s@%d:Fail to allocate numValue\n", "sendTxDCSlice0Ant0StatsCoreAnalytics", v40);
                    goto LABEL_66;
                  }

                  if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
                  {
                    v40 = 41780;
                    goto LABEL_65;
                  }
                }

                else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
                {
                  v40 = 41772;
                  goto LABEL_65;
                }
              }

              else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
              {
                v40 = 41764;
                goto LABEL_65;
              }
            }

            else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
            {
              v40 = 41756;
              goto LABEL_65;
            }
          }

          else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
          {
            v40 = 41748;
            goto LABEL_65;
          }
        }

        else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
        {
          v40 = 41740;
          goto LABEL_65;
        }
      }

      else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
      {
        v40 = 41732;
        goto LABEL_65;
      }
    }

    else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
    {
      v40 = 41724;
      goto LABEL_65;
    }
  }

  else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
  {
    v40 = 41716;
    goto LABEL_65;
  }

LABEL_63:
  v6 = v42;
LABEL_66:
  (v6->release)(v6);
LABEL_27:
  result = (v3->release)(v3);
  if (v4)
  {
    release = v4->release;

    return (release)(v4);
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics(IOService *this)
{
  v2 = OSString::withCString("com.apple.wifi.TxDCStatsSlice1Ant0");
  if (!v2)
  {
    return AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics();
  }

  v3 = v2;
  v4 = OSDictionary::withCapacity(0xAu);
  if (!v4)
  {
    AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics();
    goto LABEL_27;
  }

  v5 = OSString::withCString("Slice1Ant0TxDC0To10");
  if (!v5)
  {
    AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics();
    goto LABEL_27;
  }

  v6 = v5;
  v7 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[399].free, 0x40uLL);
  if (v7)
  {
    v8 = v7;
    OSDictionary::setObject(v4, v6, v7);
    (v6->release)(v6);
    (v8->release)(v8);
    v9 = OSString::withCString("Slice1Ant0TxDC10To20");
    if (!v9)
    {
      AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics();
      goto LABEL_27;
    }

    v6 = v9;
    v10 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[400].init, 0x40uLL);
    if (v10)
    {
      v11 = v10;
      OSDictionary::setObject(v4, v6, v10);
      (v6->release)(v6);
      (v11->release)(v11);
      v12 = OSString::withCString("Slice1Ant0TxDC20To30");
      if (!v12)
      {
        AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics();
        goto LABEL_27;
      }

      v6 = v12;
      v13 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[400].free, 0x40uLL);
      if (v13)
      {
        v14 = v13;
        OSDictionary::setObject(v4, v6, v13);
        (v6->release)(v6);
        (v14->release)(v14);
        v15 = OSString::withCString("Slice1Ant0TxDC30To40");
        if (!v15)
        {
          AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics();
          goto LABEL_27;
        }

        v6 = v15;
        v16 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[401].init, 0x40uLL);
        if (v16)
        {
          v17 = v16;
          OSDictionary::setObject(v4, v6, v16);
          (v6->release)(v6);
          (v17->release)(v17);
          v18 = OSString::withCString("Slice1Ant0TxDC40To50");
          if (!v18)
          {
            AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics();
            goto LABEL_27;
          }

          v6 = v18;
          v19 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[401].free, 0x40uLL);
          if (v19)
          {
            v20 = v19;
            OSDictionary::setObject(v4, v6, v19);
            (v6->release)(v6);
            (v20->release)(v20);
            v21 = OSString::withCString("Slice1Ant0TxDC50To60");
            if (!v21)
            {
              AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics();
              goto LABEL_27;
            }

            v6 = v21;
            v22 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[402].init, 0x40uLL);
            if (v22)
            {
              v23 = v22;
              OSDictionary::setObject(v4, v6, v22);
              (v6->release)(v6);
              (v23->release)(v23);
              v24 = OSString::withCString("Slice1Ant0TxDC60To70");
              if (!v24)
              {
                AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics();
                goto LABEL_27;
              }

              v6 = v24;
              v25 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[402].free, 0x40uLL);
              if (v25)
              {
                v26 = v25;
                OSDictionary::setObject(v4, v6, v25);
                (v6->release)(v6);
                (v26->release)(v26);
                v27 = OSString::withCString("Slice1Ant0TxDC70To80");
                if (!v27)
                {
                  AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics();
                  goto LABEL_27;
                }

                v6 = v27;
                v28 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[403].init, 0x40uLL);
                if (v28)
                {
                  v29 = v28;
                  OSDictionary::setObject(v4, v6, v28);
                  (v6->release)(v6);
                  (v29->release)(v29);
                  v30 = OSString::withCString("Slice1Ant0TxDC80To90");
                  if (!v30)
                  {
                    AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics();
                    goto LABEL_27;
                  }

                  v6 = v30;
                  v31 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[403].free, 0x40uLL);
                  if (v31)
                  {
                    v32 = v31;
                    OSDictionary::setObject(v4, v6, v31);
                    (v6->release)(v6);
                    (v32->release)(v32);
                    v33 = OSString::withCString("Slice1Ant0TxDC90To100");
                    if (!v33)
                    {
                      AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics();
                      goto LABEL_27;
                    }

                    v6 = v33;
                    v34 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[404].init, 0x40uLL);
                    if (v34)
                    {
                      v35 = v34;
                      OSDictionary::setObject(v4, v6, v34);
                      (v6->release)(v6);
                      (v35->release)(v35);
                      v36 = IOService::CoreAnalyticsSendEvent(this, 0, v3, v4, 0);
                      if (v36)
                      {
                        v37 = v36;
                        if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                        {
                          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                          if (CCLogStream::shouldLog())
                          {
                            AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3, v37);
                          }
                        }
                      }

                      goto LABEL_27;
                    }

                    if (AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics())
                    {
                      goto LABEL_63;
                    }

                    v40 = 41896;
LABEL_65:
                    v41 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                    CCLogStream::logAlert(v41, "[dk] %s@%d:Fail to allocate numValue\n", "sendTxDCSlice1Ant0StatsCoreAnalytics", v40);
                    goto LABEL_66;
                  }

                  if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
                  {
                    v40 = 41888;
                    goto LABEL_65;
                  }
                }

                else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
                {
                  v40 = 41880;
                  goto LABEL_65;
                }
              }

              else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
              {
                v40 = 41872;
                goto LABEL_65;
              }
            }

            else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
            {
              v40 = 41864;
              goto LABEL_65;
            }
          }

          else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
          {
            v40 = 41856;
            goto LABEL_65;
          }
        }

        else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
        {
          v40 = 41848;
          goto LABEL_65;
        }
      }

      else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
      {
        v40 = 41840;
        goto LABEL_65;
      }
    }

    else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
    {
      v40 = 41832;
      goto LABEL_65;
    }
  }

  else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
  {
    v40 = 41824;
    goto LABEL_65;
  }

LABEL_63:
  v6 = v42;
LABEL_66:
  (v6->release)(v6);
LABEL_27:
  result = (v3->release)(v3);
  if (v4)
  {
    release = v4->release;

    return (release)(v4);
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics(IOService *this, unsigned int a2)
{
  if (a2)
  {
    v4 = "com.apple.wifi.dsaSimpleStats.slice1";
  }

  else
  {
    v4 = "com.apple.wifi.dsaSimpleStats.slice0";
  }

  v5 = OSString::withCString(v4);
  if (!v5)
  {
    return AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics();
  }

  v6 = v5;
  v7 = OSDictionary::withCapacity(8u);
  if (!v7)
  {
    AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics();
    goto LABEL_26;
  }

  v8 = OSString::withCString("NoOptDuration");
  if (!v8)
  {
    AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics();
    goto LABEL_26;
  }

  v9 = v8;
  v10 = a2;
  v11 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[4 * a2 + 280].free, 0x40uLL);
  if (v11)
  {
    v12 = v11;
    OSDictionary::setObject(v7, v9, v11);
    (v9->release)(v9);
    (v12->release)(v12);
    v13 = OSString::withCString("PwrOptDuration");
    if (!v13)
    {
      AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics();
      goto LABEL_26;
    }

    v9 = v13;
    v14 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[4 * v10 + 281].init, 0x40uLL);
    if (v14)
    {
      v15 = v14;
      OSDictionary::setObject(v7, v9, v14);
      (v9->release)(v9);
      (v15->release)(v15);
      v16 = OSString::withCString("FailSafeDuration");
      if (!v16)
      {
        AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics();
        goto LABEL_26;
      }

      v9 = v16;
      v17 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[4 * v10 + 281].free, 0x40uLL);
      if (v17)
      {
        v18 = v17;
        OSDictionary::setObject(v7, v9, v17);
        (v9->release)(v9);
        (v18->release)(v18);
        v19 = OSString::withCString("NoMuteDuration");
        if (!v19)
        {
          AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics();
          goto LABEL_26;
        }

        v9 = v19;
        v20 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[4 * v10 + 282].init, 0x40uLL);
        if (v20)
        {
          v21 = v20;
          OSDictionary::setObject(v7, v9, v20);
          (v9->release)(v9);
          (v21->release)(v21);
          v22 = OSString::withCString("HybridDuration");
          if (!v22)
          {
            AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics();
            goto LABEL_26;
          }

          v9 = v22;
          v23 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[4 * v10 + 282].free, 0x40uLL);
          if (v23)
          {
            v24 = v23;
            OSDictionary::setObject(v7, v9, v23);
            (v9->release)(v9);
            (v24->release)(v24);
            v25 = OSString::withCString("TxDCThrottleDuration");
            if (!v25)
            {
              AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics();
              goto LABEL_26;
            }

            v9 = v25;
            v26 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[4 * v10 + 283].init, 0x40uLL);
            if (v26)
            {
              v27 = v26;
              OSDictionary::setObject(v7, v9, v26);
              (v9->release)(v9);
              (v27->release)(v27);
              v28 = OSString::withCString("PwrOptTxDCThrottleDuration");
              if (!v28)
              {
                AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics();
                goto LABEL_26;
              }

              v9 = v28;
              v29 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[4 * v10 + 283].free, 0x40uLL);
              if (v29)
              {
                v30 = v29;
                OSDictionary::setObject(v7, v9, v29);
                (v9->release)(v9);
                (v30->release)(v30);
                v31 = OSString::withCString("UpdatesPerSession");
                if (!v31)
                {
                  AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics();
                  goto LABEL_26;
                }

                v9 = v31;
                v32 = OSNumber::withNumber(LODWORD(this[1].OSObject::OSObjectInterface::__vftable[4 * v10 + 284].init), 0x20uLL);
                if (v32)
                {
                  v33 = v32;
                  OSDictionary::setObject(v7, v9, v32);
                  (v9->release)(v9);
                  (v33->release)(v33);
                  v34 = IOService::CoreAnalyticsSendEvent(this, 0, v6, v7, 0);
                  if (v34)
                  {
                    v35 = v34;
                    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                    {
                      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                      if (CCLogStream::shouldLog())
                      {
                        AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v6, v35);
                      }
                    }
                  }

                  goto LABEL_26;
                }

                if (AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics())
                {
                  goto LABEL_56;
                }

                v38 = 41992;
LABEL_58:
                v39 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                CCLogStream::logAlert(v39, "[dk] %s@%d:Fail to allocate numValue\n", "sendDynSARPerSliceStatsCoreAnalytics", v38);
                goto LABEL_59;
              }

              if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
              {
                v38 = 41984;
                goto LABEL_58;
              }
            }

            else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
            {
              v38 = 41976;
              goto LABEL_58;
            }
          }

          else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
          {
            v38 = 41968;
            goto LABEL_58;
          }
        }

        else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
        {
          v38 = 41960;
          goto LABEL_58;
        }
      }

      else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
      {
        v38 = 41952;
        goto LABEL_58;
      }
    }

    else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
    {
      v38 = 41944;
      goto LABEL_58;
    }
  }

  else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
  {
    v38 = 41936;
    goto LABEL_58;
  }

LABEL_56:
  v9 = v40;
LABEL_59:
  (v9->release)(v9);
LABEL_26:
  result = (v6->release)(v6);
  if (v7)
  {
    release = v7->release;

    return (release)(v7);
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendHostScanStatsCoreAnalytics(IOService *this)
{
  v2 = OSString::withCString("com.apple.wifi.hostScanStats");
  if (!v2)
  {
    return AppleBCMWLANCore::sendHostScanStatsCoreAnalytics();
  }

  v3 = v2;
  v4 = OSDictionary::withCapacity(0x19u);
  if (v4)
  {
    AppleBCMWLANCore::prepareScanMotionStatsForCA(this, v4);
    AppleBCMWLANCore::prepareScanRoamStatsForCA(this, v4);
    AppleBCMWLANCore::prepareScanRejectStatsForCA(this, v4);
    v5 = IOService::CoreAnalyticsSendEvent(this, 0, v3, v4, 0);
    if (v5)
    {
      v6 = v5;
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::sendHostScanStatsCoreAnalytics(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3, v6);
        }
      }
    }
  }

  else
  {
    AppleBCMWLANCore::sendHostScanStatsCoreAnalytics();
  }

  result = (v3->release)(v3);
  if (v4)
  {
    release = v4->release;

    return (release)(v4);
  }

  return result;
}

uint64_t AppleBCMWLANCore::prepareScanMotionStatsForCA(void *this, OSDictionary *a2)
{
  if (!this[9])
  {
    return AppleBCMWLANCore::prepareScanMotionStatsForCA();
  }

  mach_continuous_time();
  absolutetime_to_nanoseconds();
  if (!a2)
  {
    return AppleBCMWLANCore::prepareScanMotionStatsForCA();
  }

  v4 = OSString::withCString("SessionDur");
  if (!v4)
  {
    return AppleBCMWLANCore::prepareScanMotionStatsForCA();
  }

  v5 = v4;
  v6 = OSNumber::withNumber(-*(this[9] + 19104), 0x40uLL);
  v34 = v6;
  v35 = v5;
  if (!v6)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA();
      }
    }

    goto LABEL_56;
  }

  OSDictionary::setObject(a2, v5, v6);
  v7 = OSString::withCString("NumNormalPrioMov");
  if (!v7)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA();
      }
    }

LABEL_56:
    v36 = 0;
LABEL_60:
    v31 = 0;
    v33 = 0;
LABEL_65:
    v17 = 0;
    v32 = 0;
LABEL_66:
    v19 = 0;
    v23 = 0;
    v27 = 0;
    v13 = 0;
LABEL_84:
    v21 = 0;
LABEL_85:
    v25 = 0;
    goto LABEL_86;
  }

  v8 = v7;
  v9 = OSNumber::withNumber(*(this[9] + 19136), 0x20uLL);
  v36 = v8;
  if (!v9)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA();
      }
    }

    goto LABEL_60;
  }

  v33 = v9;
  OSDictionary::setObject(a2, v8, v9);
  v10 = OSString::withCString("NumNormalPrioStat");
  if (!v10)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA();
      }
    }

    v31 = 0;
    goto LABEL_65;
  }

  v11 = v10;
  v12 = OSNumber::withNumber(*(this[9] + 19140), 0x20uLL);
  v32 = v11;
  if (!v12)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA();
      }
    }

    v31 = 0;
    v17 = 0;
    goto LABEL_66;
  }

  v13 = v12;
  OSDictionary::setObject(a2, v11, v12);
  v14 = OSString::withCString("NumLowPrioMov");
  if (!v14)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA();
      }
    }

    v31 = 0;
    goto LABEL_78;
  }

  v15 = v14;
  v16 = OSNumber::withNumber(*(this[9] + 19144), 0x20uLL);
  v31 = v15;
  if (!v16)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA();
      }
    }

LABEL_78:
    v17 = 0;
LABEL_82:
    v19 = 0;
LABEL_83:
    v23 = 0;
    v27 = 0;
    goto LABEL_84;
  }

  v17 = v16;
  OSDictionary::setObject(a2, v15, v16);
  v18 = OSString::withCString("NumLowPrioStat");
  if (!v18)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA();
      }
    }

    goto LABEL_82;
  }

  v19 = v18;
  v20 = OSNumber::withNumber(*(this[9] + 19148), 0x20uLL);
  if (!v20)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA();
      }
    }

    goto LABEL_83;
  }

  v21 = v20;
  OSDictionary::setObject(a2, v19, v20);
  v22 = OSString::withCString("NumHostScanReqMov");
  if (!v22)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA();
      }
    }

    v23 = 0;
    goto LABEL_97;
  }

  v23 = v22;
  v24 = OSNumber::withNumber(*(this[9] + 19152), 0x20uLL);
  if (!v24)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA();
      }
    }

LABEL_97:
    v27 = 0;
    goto LABEL_85;
  }

  v25 = v24;
  OSDictionary::setObject(a2, v23, v24);
  v26 = OSString::withCString("NumHostScanRejectedMov");
  if (v26)
  {
    v27 = v26;
    v28 = OSNumber::withNumber(*(this[9] + 19156), 0x20uLL);
    if (v28)
    {
      v29 = v28;
      OSDictionary::setObject(a2, v27, v28);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::prepareScanMotionStatsForCA();
        }
      }

      goto LABEL_20;
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanMotionStatsForCA();
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
        AppleBCMWLANCore::prepareScanMotionStatsForCA();
      }
    }

    v27 = 0;
  }

LABEL_86:
  v29 = 0;
LABEL_20:
  (v35->release)(v35);
  if (v34)
  {
    (v34->release)(v34);
  }

  if (v36)
  {
    (v36->release)(v36);
  }

  if (v33)
  {
    (v33->release)(v33);
  }

  if (v32)
  {
    (v32->release)(v32);
  }

  if (v13)
  {
    (v13->release)(v13);
  }

  result = v31;
  if (v31)
  {
    result = (*(*v31 + 16))(v31);
  }

  if (v17)
  {
    result = (v17->release)(v17);
  }

  if (v19)
  {
    result = (v19->release)(v19);
  }

  if (v21)
  {
    result = (v21->release)(v21);
  }

  if (v23)
  {
    result = (v23->release)(v23);
  }

  if (v25)
  {
    result = (v25->release)(v25);
  }

  if (v27)
  {
    result = (v27->release)(v27);
  }

  if (v29)
  {
    return (v29->release)(v29);
  }

  return result;
}

uint64_t AppleBCMWLANCore::prepareScanRoamStatsForCA(void *this, OSDictionary *a2)
{
  if (!this[9])
  {
    return AppleBCMWLANCore::prepareScanRoamStatsForCA();
  }

  v4 = OSString::withCString("RoamWithinX");
  if (!v4)
  {
    return AppleBCMWLANCore::prepareScanRoamStatsForCA();
  }

  v5 = v4;
  v6 = OSNumber::withNumber(*(this[9] + 19056), 0x20uLL);
  v51 = v6;
  v52 = v5;
  if (!v6)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA();
      }
    }

    goto LABEL_77;
  }

  OSDictionary::setObject(a2, v5, v6);
  v7 = OSString::withCString("LocScanWithinRoam");
  if (!v7)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA();
      }
    }

LABEL_77:
    v50 = 0;
LABEL_81:
    v54 = 0;
LABEL_82:
    v37 = 0;
    v47 = 0;
    v48 = 0;
    v44 = 0;
    v45 = 0;
    v38 = 0;
    v49 = 0;
LABEL_83:
    v53 = 0;
    v23 = 0;
    v46 = 0;
    v43 = 0;
    v25 = 0;
    v27 = 0;
    v31 = 0;
    v34 = 0;
    v29 = 0;
    v33 = 0;
    v36 = 0;
    goto LABEL_24;
  }

  v8 = v7;
  v9 = OSNumber::withNumber(*(this[9] + 19060), 0x20uLL);
  v50 = v8;
  if (!v9)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA();
      }
    }

    goto LABEL_81;
  }

  v54 = v9;
  OSDictionary::setObject(a2, v8, v9);
  v10 = OSString::withCString("NumHostScanReq");
  if (!v10)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA();
      }
    }

    goto LABEL_82;
  }

  v11 = v10;
  v12 = OSNumber::withNumber(*(this[9] + 19064), 0x20uLL);
  v49 = v11;
  if (!v12)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA();
      }
    }

    v37 = 0;
    v47 = 0;
    v48 = 0;
    v44 = 0;
    v45 = 0;
    v38 = 0;
    goto LABEL_83;
  }

  v46 = v12;
  OSDictionary::setObject(a2, v11, v12);
  v13 = OSString::withCString("NumHostScanRejected");
  v41 = OSNumber::withNumber(*(this[9] + 19068), 0x20uLL);
  v42 = v13;
  OSDictionary::setObject(a2, v13, v41);
  v14 = OSString::withCString("NumHostScanComp");
  v15 = OSNumber::withNumber(*(this[9] + 19072), 0x20uLL);
  v48 = v14;
  if (!v15)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA();
      }
    }

    v45 = 0;
    v47 = 0;
    goto LABEL_102;
  }

  v47 = v15;
  OSDictionary::setObject(a2, v14, v15);
  v16 = OSString::withCString("NumHostScanLowPrio");
  if (!v16)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA();
      }
    }

    v45 = 0;
    goto LABEL_102;
  }

  v17 = v16;
  v18 = OSNumber::withNumber(*(this[9] + 19076), 0x20uLL);
  v45 = v17;
  if (!v18)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA();
      }
    }

LABEL_102:
    v44 = 0;
LABEL_103:
    v53 = 0;
LABEL_104:
    v23 = 0;
    v43 = 0;
LABEL_105:
    v25 = 0;
LABEL_106:
    v27 = 0;
LABEL_107:
    v31 = 0;
    v34 = 0;
    v29 = 0;
LABEL_108:
    v33 = 0;
    goto LABEL_109;
  }

  v44 = v18;
  OSDictionary::setObject(a2, v17, v18);
  v19 = OSString::withCString("NumHostScanLowLatency");
  if (!v19)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA();
      }
    }

    goto LABEL_103;
  }

  v20 = v19;
  v21 = OSNumber::withNumber(*(this[9] + 19080), 0x20uLL);
  v53 = v20;
  if (!v21)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA();
      }
    }

    goto LABEL_104;
  }

  v43 = v21;
  OSDictionary::setObject(a2, v20, v21);
  v22 = OSString::withCString("NumHostScanLowPrioOR");
  if (!v22)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA();
      }
    }

    v23 = 0;
    goto LABEL_105;
  }

  v23 = v22;
  v24 = OSNumber::withNumber(*(this[9] + 19084), 0x20uLL);
  if (!v24)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA();
      }
    }

    goto LABEL_105;
  }

  v25 = v24;
  OSDictionary::setObject(a2, v23, v24);
  v26 = OSString::withCString("CntB2BHostScan");
  if (!v26)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA();
      }
    }

    goto LABEL_106;
  }

  v27 = v26;
  v28 = OSNumber::withNumber(*(this[9] + 19088), 0x20uLL);
  if (!v28)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA();
      }
    }

    goto LABEL_107;
  }

  v29 = v28;
  OSDictionary::setObject(a2, v27, v28);
  v30 = OSString::withCString("CntB2BHostScanLow");
  if (!v30)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA();
      }
    }

    v31 = 0;
    goto LABEL_136;
  }

  v31 = v30;
  v32 = OSNumber::withNumber(*(this[9] + 19096), 0x20uLL);
  if (!v32)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA();
      }
    }

LABEL_136:
    v34 = 0;
    goto LABEL_108;
  }

  v33 = v32;
  OSDictionary::setObject(a2, v31, v32);
  v34 = OSString::withCString("CntB2BHostScanHigh");
  v35 = OSNumber::withNumber(*(this[9] + 19092), 0x20uLL);
  if (v35)
  {
    v36 = v35;
    OSDictionary::setObject(a2, v34, v35);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRoamStatsForCA();
      }
    }

    goto LABEL_23;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::prepareScanRoamStatsForCA();
    }
  }

LABEL_109:
  v36 = 0;
LABEL_23:
  v38 = v41;
  v37 = v42;
LABEL_24:
  (v52->release)(v52);
  if (v51)
  {
    (v51->release)(v51);
  }

  if (v50)
  {
    (v50->release)(v50);
  }

  if (v54)
  {
    (v54->release)(v54);
  }

  if (v49)
  {
    (v49->release)(v49);
  }

  if (v46)
  {
    (v46->release)(v46);
  }

  if (v37)
  {
    (v37->release)(v37);
  }

  if (v38)
  {
    (v38->release)(v38);
  }

  if (v48)
  {
    (v48->release)(v48);
  }

  if (v47)
  {
    (v47->release)(v47);
  }

  if (v45)
  {
    (v45->release)(v45);
  }

  if (v44)
  {
    (v44->release)(v44);
  }

  if (v53)
  {
    (v53->release)(v53);
  }

  result = v43;
  if (v43)
  {
    result = (*(*v43 + 16))(v43);
  }

  if (v23)
  {
    result = (v23->release)(v23);
  }

  if (v25)
  {
    result = (v25->release)(v25);
  }

  if (v27)
  {
    result = (v27->release)(v27);
  }

  if (v29)
  {
    result = (v29->release)(v29);
  }

  if (v31)
  {
    result = (v31->release)(v31);
  }

  if (v33)
  {
    result = (v33->release)(v33);
  }

  if (v34)
  {
    result = (v34->release)(v34);
  }

  if (v36)
  {
    release = v36->release;

    return (release)(v36);
  }

  return result;
}

uint64_t AppleBCMWLANCore::prepareScanRejectStatsForCA(void *this, OSDictionary *a2)
{
  if (!this[9])
  {
    return AppleBCMWLANCore::prepareScanRejectStatsForCA();
  }

  v4 = OSString::withCString("NumRejLowPrio");
  if (!v4)
  {
    return AppleBCMWLANCore::prepareScanRejectStatsForCA();
  }

  v5 = v4;
  v6 = OSNumber::withNumber(*(this[9] + 35928), 0x20uLL);
  v34 = v6;
  v35 = v5;
  if (!v6)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA();
      }
    }

    goto LABEL_56;
  }

  OSDictionary::setObject(a2, v5, v6);
  v7 = OSString::withCString("NumRejJoin");
  if (!v7)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA();
      }
    }

LABEL_56:
    v33 = 0;
LABEL_60:
    v26 = 0;
    v36 = 0;
LABEL_65:
    v28 = 0;
    v32 = 0;
LABEL_66:
    v14 = 0;
    v18 = 0;
    v22 = 0;
    v31 = 0;
LABEL_80:
    v16 = 0;
LABEL_90:
    v20 = 0;
LABEL_91:
    v24 = 0;
    goto LABEL_19;
  }

  v8 = v7;
  v9 = OSNumber::withNumber(*(this[9] + 35932), 0x20uLL);
  v33 = v8;
  if (!v9)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA();
      }
    }

    goto LABEL_60;
  }

  v36 = v9;
  OSDictionary::setObject(a2, v8, v9);
  v10 = OSString::withCString("NumRejBusy");
  if (!v10)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA();
      }
    }

    v26 = 0;
    goto LABEL_65;
  }

  v11 = v10;
  v12 = OSNumber::withNumber(*(this[9] + 35936), 0x20uLL);
  v32 = v11;
  if (!v12)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA();
      }
    }

    v26 = 0;
    v28 = 0;
    goto LABEL_66;
  }

  v31 = v12;
  OSDictionary::setObject(a2, v11, v12);
  v13 = OSString::withCString("NumRejIPRes");
  if (!v13)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA();
      }
    }

    v26 = 0;
    v28 = 0;
    v14 = 0;
    goto LABEL_79;
  }

  v14 = v13;
  v15 = OSNumber::withNumber(*(this[9] + 35940), 0x20uLL);
  if (!v15)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA();
      }
    }

    v26 = 0;
    v28 = 0;
LABEL_79:
    v18 = 0;
    v22 = 0;
    goto LABEL_80;
  }

  v16 = v15;
  OSDictionary::setObject(a2, v14, v15);
  v17 = OSString::withCString("NumRejRssi");
  if (!v17)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA();
      }
    }

    v26 = 0;
    v28 = 0;
    v18 = 0;
    goto LABEL_89;
  }

  v18 = v17;
  v19 = OSNumber::withNumber(*(this[9] + 35944), 0x20uLL);
  if (!v19)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA();
      }
    }

    v26 = 0;
    v28 = 0;
LABEL_89:
    v22 = 0;
    goto LABEL_90;
  }

  v20 = v19;
  OSDictionary::setObject(a2, v18, v19);
  v21 = OSString::withCString("NumRejLLS");
  if (!v21)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA();
      }
    }

    v26 = 0;
    v28 = 0;
    v22 = 0;
    goto LABEL_91;
  }

  v22 = v21;
  v23 = OSNumber::withNumber(*(this[9] + 35948), 0x20uLL);
  if (!v23)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA();
      }
    }

    v26 = 0;
    v28 = 0;
    goto LABEL_91;
  }

  v24 = v23;
  OSDictionary::setObject(a2, v22, v23);
  v25 = OSString::withCString("NumRejScanBlock");
  if (v25)
  {
    v26 = v25;
    v27 = OSNumber::withNumber(*(this[9] + 35952), 0x20uLL);
    if (v27)
    {
      v28 = v27;
      OSDictionary::setObject(a2, v26, v27);
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::prepareScanRejectStatsForCA();
        }
      }

      goto LABEL_19;
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::prepareScanRejectStatsForCA();
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
        AppleBCMWLANCore::prepareScanRejectStatsForCA();
      }
    }

    v26 = 0;
  }

  v28 = 0;
LABEL_19:
  (v35->release)(v35);
  if (v34)
  {
    (v34->release)(v34);
  }

  if (v33)
  {
    (v33->release)(v33);
  }

  if (v36)
  {
    (v36->release)(v36);
  }

  if (v32)
  {
    (v32->release)(v32);
  }

  result = v31;
  if (v31)
  {
    result = (*(*v31 + 16))(v31);
  }

  if (v14)
  {
    result = (v14->release)(v14);
  }

  if (v16)
  {
    result = (v16->release)(v16);
  }

  if (v18)
  {
    result = (v18->release)(v18);
  }

  if (v20)
  {
    result = (v20->release)(v20);
  }

  if (v22)
  {
    result = (v22->release)(v22);
  }

  if (v24)
  {
    result = (v24->release)(v24);
  }

  if (v26)
  {
    result = (v26->release)(v26);
  }

  if (v28)
  {
    release = v28->release;

    return (release)(v28);
  }

  return result;
}

double AppleBCMWLANCore::resetSlicesScanModeStats(AppleBCMWLANCore *this)
{
  v1 = *(this + 9) + 19652;
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

uint64_t AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(IOService *this)
{
  memset(v81, 170, 22);
  *__str = 0xAAAAAAAAAAAAAAAALL;
  v2 = OSString::withCString("com.apple.wifi.slicesScanStats");
  if (!v2)
  {
    return AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
  }

  v3 = v2;
  v4 = OSDictionary::withCapacity(0x36u);
  if (!v4)
  {
    AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
    v75 = v79;
    goto LABEL_47;
  }

  v77 = v3;
  v5 = 0;
  v6 = 19652;
  while (2)
  {
    v7 = 0;
    v8 = kSliceIdKeys[v5];
    v78 = v6;
    do
    {
      snprintf(__str, 0x1EuLL, "%s_%s", v8, kScanModeReportKeys[v7]);
      v9 = OSString::withCString(__str);
      if (!v9)
      {
        AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
LABEL_46:
        v75 = v79;
        v3 = v77;
        goto LABEL_47;
      }

      v10 = v9;
      v11 = OSNumber::withNumber(*(&this[1].init + v6), 0x20uLL);
      if (!v11)
      {
        AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
        goto LABEL_46;
      }

      v12 = v11;
      OSDictionary::setObject(v4, v10, v11);
      (v10->release)(v10);
      (v12->release)(v12);
      v6 += 4;
      ++v7;
    }

    while (v7 != 3);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "UserScanCnt");
    v13 = OSString::withCString(__str);
    if (!v13)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v14 = v13;
    v15 = OSNumber::withNumber((LODWORD(this[1].OSObject::OSObjectInterface::__vftable[9 * v5 + 1197].free) - *(&this[1].OSObject::OSObjectInterface::__vftable[1224].free + 5 * v5)), 0x20uLL);
    if (!v15)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v16 = v15;
    OSDictionary::setObject(v4, v14, v15);
    (v14->release)(v14);
    (v16->release)(v16);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "AssocScanCnt");
    v17 = OSString::withCString(__str);
    if (!v17)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v18 = v17;
    v19 = OSNumber::withNumber((HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[9 * v5 + 1197].free) - *(&this[1].OSObject::OSObjectInterface::__vftable[1224].free + 5 * v5 + 1)), 0x20uLL);
    if (!v19)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v20 = v19;
    OSDictionary::setObject(v4, v18, v19);
    (v18->release)(v18);
    (v20->release)(v20);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "RoamScanCnt");
    v21 = OSString::withCString(__str);
    if (!v21)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v22 = v21;
    v23 = OSNumber::withNumber((LODWORD(this[1].OSObject::OSObjectInterface::__vftable[9 * v5 + 1198].init) - *(&this[1].OSObject::OSObjectInterface::__vftable[1225].init + 5 * v5)), 0x20uLL);
    if (!v23)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v24 = v23;
    OSDictionary::setObject(v4, v22, v23);
    (v22->release)(v22);
    (v24->release)(v24);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "PNOScanCnt");
    v25 = OSString::withCString(__str);
    if (!v25)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v26 = v25;
    v27 = OSNumber::withNumber((HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[9 * v5 + 1198].init) - *(&this[1].OSObject::OSObjectInterface::__vftable[1225].init + 5 * v5 + 1)), 0x20uLL);
    if (!v27)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v28 = v27;
    OSDictionary::setObject(v4, v26, v27);
    (v26->release)(v26);
    (v28->release)(v28);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "OtherScanCnt");
    v29 = OSString::withCString(__str);
    if (!v29)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v30 = v29;
    v31 = OSNumber::withNumber((LODWORD(this[1].OSObject::OSObjectInterface::__vftable[9 * v5 + 1198].free) - *(&this[1].OSObject::OSObjectInterface::__vftable[1225].free + 5 * v5)), 0x20uLL);
    if (!v31)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v32 = v31;
    OSDictionary::setObject(v4, v30, v31);
    (v30->release)(v30);
    (v32->release)(v32);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "UserScanDur");
    v33 = OSString::withCString(__str);
    if (!v33)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v34 = v33;
    v35 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[9 * v5 + 1200].init, 0x40uLL);
    if (!v35)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v36 = v35;
    OSDictionary::setObject(v4, v34, v35);
    (v34->release)(v34);
    (v36->release)(v36);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "AssocScanDur");
    v37 = OSString::withCString(__str);
    if (!v37)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v38 = v37;
    v39 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[9 * v5 + 1200].free, 0x40uLL);
    if (!v39)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v40 = v39;
    OSDictionary::setObject(v4, v38, v39);
    (v38->release)(v38);
    (v40->release)(v40);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "RoamScanDur");
    v41 = OSString::withCString(__str);
    if (!v41)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v42 = v41;
    v43 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[9 * v5 + 1201].init, 0x40uLL);
    if (!v43)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v44 = v43;
    OSDictionary::setObject(v4, v42, v43);
    (v42->release)(v42);
    (v44->release)(v44);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "PNOScanDur");
    v45 = OSString::withCString(__str);
    if (!v45)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v46 = v45;
    v47 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[9 * v5 + 1201].free, 0x40uLL);
    if (!v47)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v48 = v47;
    OSDictionary::setObject(v4, v46, v47);
    (v46->release)(v46);
    (v48->release)(v48);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "OtherScanDur");
    v49 = OSString::withCString(__str);
    if (!v49)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v50 = v49;
    v51 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[9 * v5 + 1202].init, 0x40uLL);
    if (!v51)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v52 = v51;
    OSDictionary::setObject(v4, v50, v51);
    (v50->release)(v50);
    (v52->release)(v52);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "UserScanOffChDur");
    v53 = OSString::withCString(__str);
    if (!v53)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v54 = v53;
    v55 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[9 * v5 + 1204].init, 0x40uLL);
    if (!v55)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v56 = v55;
    OSDictionary::setObject(v4, v54, v55);
    (v54->release)(v54);
    (v56->release)(v56);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "AssocScanOffChDur");
    v57 = OSString::withCString(__str);
    if (!v57)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v58 = v57;
    v59 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[9 * v5 + 1204].free, 0x40uLL);
    if (!v59)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v60 = v59;
    OSDictionary::setObject(v4, v58, v59);
    (v58->release)(v58);
    (v60->release)(v60);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "RoamScanOffChDur");
    v61 = OSString::withCString(__str);
    if (!v61)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v62 = v61;
    v63 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[9 * v5 + 1205].init, 0x40uLL);
    if (!v63)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v64 = v63;
    OSDictionary::setObject(v4, v62, v63);
    (v62->release)(v62);
    (v64->release)(v64);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "PNOScanOffChDur");
    v65 = OSString::withCString(__str);
    if (!v65)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v66 = v65;
    v67 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[9 * v5 + 1205].free, 0x40uLL);
    if (!v67)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v68 = v67;
    OSDictionary::setObject(v4, v66, v67);
    (v66->release)(v66);
    (v68->release)(v68);
    snprintf(__str, 0x1EuLL, "%s_%s", v8, "OtherScanOffChDur");
    v69 = OSString::withCString(__str);
    if (!v69)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v70 = v69;
    v71 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[9 * v5 + 1206].init, 0x40uLL);
    if (!v71)
    {
      AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics();
      goto LABEL_46;
    }

    v72 = v71;
    OSDictionary::setObject(v4, v70, v71);
    (v70->release)(v70);
    (v72->release)(v72);
    ++v5;
    v6 = v78 + 12;
    if (v5 != 3)
    {
      continue;
    }

    break;
  }

  v3 = v77;
  v73 = IOService::CoreAnalyticsSendEvent(this, 0, v77, v4, 0);
  if (v73)
  {
    v74 = v73;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::SendSlicesScanStatsCoreAnalytics(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v77, v74);
      }
    }
  }

  v75 = 0;
LABEL_47:
  result = (v3->release)(v3);
  if (v4)
  {
    result = (v4->release)(v4);
  }

  if (v75)
  {
    return (*(*v75 + 16))(v75);
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendePNOEventsCoreAnalytics(IOService *this, uint64_t a2)
{
  v3 = 0;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v12 = OSString::withCString("com.apple.wifi.ePNOLostEventLegacy");
      if (!v12)
      {
        return AppleBCMWLANCore::sendePNOEventsCoreAnalytics();
      }

      v3 = v12;
      v13 = OSDictionary::withCapacity(1u);
      if (!v13)
      {
        AppleBCMWLANCore::sendePNOEventsCoreAnalytics();
        goto LABEL_48;
      }

      v4 = v13;
      v7 = "NetLostLegacyEvent";
    }

    else
    {
      v4 = 0;
      if (a2 != 3)
      {
        goto LABEL_29;
      }

      v8 = OSString::withCString("com.apple.wifi.ePNOLostEventLpsc");
      if (!v8)
      {
        return AppleBCMWLANCore::sendePNOEventsCoreAnalytics();
      }

      v3 = v8;
      v9 = OSDictionary::withCapacity(1u);
      if (!v9)
      {
        AppleBCMWLANCore::sendePNOEventsCoreAnalytics();
        goto LABEL_48;
      }

      v4 = v9;
      v7 = "NetLostLPSCEvent";
    }

LABEL_18:
    v14 = OSString::withCString(v7);
    if (v14)
    {
      v15 = v14;
      v16 = OSNumber::withNumber(1uLL, 0x20uLL);
      if (v16)
      {
        OSDictionary::setObject(v4, v15, v16);
        v17 = IOService::CoreAnalyticsSendEvent(this, 0, v3, v4, 0);
        if (v17)
        {
          v18 = v17;
          if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
          {
            (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::sendePNOEventsCoreAnalytics(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3, v18);
            }
          }
        }

        if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
        {
          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::sendePNOEventsCoreAnalytics();
          }
        }
      }

      else
      {
        AppleBCMWLANCore::sendePNOEventsCoreAnalytics();
      }

      (v15->release)(v15);
      if (v16)
      {
        (v16->release)(v16);
      }

      goto LABEL_33;
    }

LABEL_29:
    result = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (result)
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        result = AppleBCMWLANCore::sendePNOEventsCoreAnalytics();
      }
    }

    if (!v3)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    v10 = OSString::withCString("com.apple.wifi.ePNOFoundEventLegacy");
    if (!v10)
    {
      return AppleBCMWLANCore::sendePNOEventsCoreAnalytics();
    }

    v3 = v10;
    v11 = OSDictionary::withCapacity(1u);
    if (!v11)
    {
      AppleBCMWLANCore::sendePNOEventsCoreAnalytics();
      goto LABEL_48;
    }

    v4 = v11;
    v7 = "NetFoundLegacyEvent";
    goto LABEL_18;
  }

  v4 = 0;
  if (a2 != 1)
  {
    goto LABEL_29;
  }

  v5 = OSString::withCString("com.apple.wifi.ePNOFoundEventLpsc");
  if (!v5)
  {
    return AppleBCMWLANCore::sendePNOEventsCoreAnalytics();
  }

  v3 = v5;
  v6 = OSDictionary::withCapacity(1u);
  if (v6)
  {
    v4 = v6;
    v7 = "NetFoundLPSCEvent";
    goto LABEL_18;
  }

  AppleBCMWLANCore::sendePNOEventsCoreAnalytics();
LABEL_48:
  v3 = v21;
  v4 = v22;
LABEL_33:
  result = (v3->release)(v3);
LABEL_34:
  if (v4)
  {
    release = v4->release;

    return (release)(v4);
  }

  return result;
}

uint64_t AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(IOService *this)
{
  v2 = OSString::withCString("com.apple.wifi.SCTxBlankingStats");
  if (!v2)
  {
    return AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics();
  }

  v3 = v2;
  v4 = OSDictionary::withCapacity(0x11u);
  if (!v4)
  {
    AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics();
    goto LABEL_41;
  }

  v5 = OSString::withCString("NoBlkChannelCnt");
  if (!v5)
  {
    AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics();
    goto LABEL_41;
  }

  v6 = v5;
  v7 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[1130].free, 0x40uLL);
  if (v7)
  {
    v8 = v7;
    OSDictionary::setObject(v4, v6, v7);
    (v6->release)(v6);
    (v8->release)(v8);
    v9 = OSString::withCString("UppBoundBin1");
    if (!v9)
    {
      AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics();
      goto LABEL_41;
    }

    v6 = v9;
    v10 = OSNumber::withNumber(LODWORD(this[1].OSObject::OSObjectInterface::__vftable[1122].free), 0x20uLL);
    if (v10)
    {
      v11 = v10;
      OSDictionary::setObject(v4, v6, v10);
      (v6->release)(v6);
      (v11->release)(v11);
      v12 = OSString::withCString("CntAcBtTxBin1");
      if (!v12)
      {
        AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics();
        goto LABEL_41;
      }

      v6 = v12;
      v13 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[1123].init, 0x40uLL);
      if (v13)
      {
        v14 = v13;
        OSDictionary::setObject(v4, v6, v13);
        (v6->release)(v6);
        (v14->release)(v14);
        v15 = OSString::withCString("CntMcTxBin1");
        if (!v15)
        {
          AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics();
          goto LABEL_41;
        }

        v6 = v15;
        v16 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[1123].free, 0x40uLL);
        if (v16)
        {
          v17 = v16;
          OSDictionary::setObject(v4, v6, v16);
          (v6->release)(v6);
          (v17->release)(v17);
          v18 = OSString::withCString("CntTotalBin1");
          if (!v18)
          {
            AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics();
            goto LABEL_41;
          }

          v6 = v18;
          v19 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[1124].init, 0x40uLL);
          if (v19)
          {
            v20 = v19;
            OSDictionary::setObject(v4, v6, v19);
            (v6->release)(v6);
            (v20->release)(v20);
            v21 = OSString::withCString("UppBoundBin2");
            if (!v21)
            {
              AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics();
              goto LABEL_41;
            }

            v6 = v21;
            v22 = OSNumber::withNumber(LODWORD(this[1].OSObject::OSObjectInterface::__vftable[1124].free), 0x20uLL);
            if (v22)
            {
              v23 = v22;
              OSDictionary::setObject(v4, v6, v22);
              (v6->release)(v6);
              (v23->release)(v23);
              v24 = OSString::withCString("CntAcBtTxBin2");
              if (!v24)
              {
                AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics();
                goto LABEL_41;
              }

              v6 = v24;
              v25 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[1125].init, 0x40uLL);
              if (v25)
              {
                v26 = v25;
                OSDictionary::setObject(v4, v6, v25);
                (v6->release)(v6);
                (v26->release)(v26);
                v27 = OSString::withCString("CntMcTxBin2");
                if (!v27)
                {
                  AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics();
                  goto LABEL_41;
                }

                v6 = v27;
                v28 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[1125].free, 0x40uLL);
                if (v28)
                {
                  v29 = v28;
                  OSDictionary::setObject(v4, v6, v28);
                  (v6->release)(v6);
                  (v29->release)(v29);
                  v30 = OSString::withCString("CntTotalBin2");
                  if (!v30)
                  {
                    AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics();
                    goto LABEL_41;
                  }

                  v6 = v30;
                  v31 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[1126].init, 0x40uLL);
                  if (v31)
                  {
                    v32 = v31;
                    OSDictionary::setObject(v4, v6, v31);
                    (v6->release)(v6);
                    (v32->release)(v32);
                    v33 = OSString::withCString("UppBoundBin3");
                    if (!v33)
                    {
                      AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics();
                      goto LABEL_41;
                    }

                    v6 = v33;
                    v34 = OSNumber::withNumber(LODWORD(this[1].OSObject::OSObjectInterface::__vftable[1126].free), 0x20uLL);
                    if (v34)
                    {
                      v35 = v34;
                      OSDictionary::setObject(v4, v6, v34);
                      (v6->release)(v6);
                      (v35->release)(v35);
                      v36 = OSString::withCString("CntAcBtTxBin3");
                      if (!v36)
                      {
                        AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics();
                        goto LABEL_41;
                      }

                      v6 = v36;
                      v37 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[1127].init, 0x40uLL);
                      if (v37)
                      {
                        v38 = v37;
                        OSDictionary::setObject(v4, v6, v37);
                        (v6->release)(v6);
                        (v38->release)(v38);
                        v39 = OSString::withCString("CntMcTxBin3");
                        if (!v39)
                        {
                          AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics();
                          goto LABEL_41;
                        }

                        v6 = v39;
                        v40 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[1127].free, 0x40uLL);
                        if (v40)
                        {
                          v41 = v40;
                          OSDictionary::setObject(v4, v6, v40);
                          (v6->release)(v6);
                          (v41->release)(v41);
                          v42 = OSString::withCString("CntTotalBin3");
                          if (!v42)
                          {
                            AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics();
                            goto LABEL_41;
                          }

                          v6 = v42;
                          v43 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[1128].init, 0x40uLL);
                          if (v43)
                          {
                            v44 = v43;
                            OSDictionary::setObject(v4, v6, v43);
                            (v6->release)(v6);
                            (v44->release)(v44);
                            v45 = OSString::withCString("UppBoundBin4");
                            if (!v45)
                            {
                              AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics();
                              goto LABEL_41;
                            }

                            v6 = v45;
                            v46 = OSNumber::withNumber(LODWORD(this[1].OSObject::OSObjectInterface::__vftable[1128].free), 0x20uLL);
                            if (v46)
                            {
                              v47 = v46;
                              OSDictionary::setObject(v4, v6, v46);
                              (v6->release)(v6);
                              (v47->release)(v47);
                              v48 = OSString::withCString("CntAcBtTxBin4");
                              if (!v48)
                              {
                                AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics();
                                goto LABEL_41;
                              }

                              v6 = v48;
                              v49 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[1129].init, 0x40uLL);
                              if (v49)
                              {
                                v50 = v49;
                                OSDictionary::setObject(v4, v6, v49);
                                (v6->release)(v6);
                                (v50->release)(v50);
                                v51 = OSString::withCString("CntMcTxBin4");
                                if (!v51)
                                {
                                  AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics();
                                  goto LABEL_41;
                                }

                                v6 = v51;
                                v52 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[1129].free, 0x40uLL);
                                if (v52)
                                {
                                  v53 = v52;
                                  OSDictionary::setObject(v4, v6, v52);
                                  (v6->release)(v6);
                                  (v53->release)(v53);
                                  v54 = OSString::withCString("CntTotalBin4");
                                  if (!v54)
                                  {
                                    AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics();
                                    goto LABEL_41;
                                  }

                                  v6 = v54;
                                  v55 = OSNumber::withNumber(this[1].OSObject::OSObjectInterface::__vftable[1130].init, 0x40uLL);
                                  if (v55)
                                  {
                                    v56 = v55;
                                    OSDictionary::setObject(v4, v6, v55);
                                    (v6->release)(v6);
                                    (v56->release)(v56);
                                    v57 = IOService::CoreAnalyticsSendEvent(this, 0, v3, v4, 0);
                                    if (v57)
                                    {
                                      v58 = v57;
                                      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
                                      {
                                        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                        if (CCLogStream::shouldLog())
                                        {
                                          AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, v3, v58);
                                        }
                                      }
                                    }

                                    goto LABEL_41;
                                  }

                                  if (AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics())
                                  {
                                    goto LABEL_98;
                                  }

                                  v61 = 43223;
LABEL_100:
                                  v62 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                                  CCLogStream::logAlert(v62, "[dk] %s@%d:Fail to allocate numValue\n", "sendSCTxBlankingStatsEventCoreAnalytics", v61);
                                  goto LABEL_101;
                                }

                                if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
                                {
                                  v61 = 43215;
                                  goto LABEL_100;
                                }
                              }

                              else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
                              {
                                v61 = 43207;
                                goto LABEL_100;
                              }
                            }

                            else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
                            {
                              v61 = 43199;
                              goto LABEL_100;
                            }
                          }

                          else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
                          {
                            v61 = 43191;
                            goto LABEL_100;
                          }
                        }

                        else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
                        {
                          v61 = 43183;
                          goto LABEL_100;
                        }
                      }

                      else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
                      {
                        v61 = 43175;
                        goto LABEL_100;
                      }
                    }

                    else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
                    {
                      v61 = 43167;
                      goto LABEL_100;
                    }
                  }

                  else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
                  {
                    v61 = 43159;
                    goto LABEL_100;
                  }
                }

                else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
                {
                  v61 = 43151;
                  goto LABEL_100;
                }
              }

              else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
              {
                v61 = 43143;
                goto LABEL_100;
              }
            }

            else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
            {
              v61 = 43135;
              goto LABEL_100;
            }
          }

          else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
          {
            v61 = 43127;
            goto LABEL_100;
          }
        }

        else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
        {
          v61 = 43119;
          goto LABEL_100;
        }
      }

      else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
      {
        v61 = 43111;
        goto LABEL_100;
      }
    }

    else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
    {
      v61 = 43103;
      goto LABEL_100;
    }
  }

  else if ((AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics() & 1) == 0)
  {
    v61 = 43095;
    goto LABEL_100;
  }

LABEL_98:
  v6 = v63;
LABEL_101:
  (v6->release)(v6);
LABEL_41:
  result = (v3->release)(v3);
  if (v4)
  {
    release = v4->release;

    return (release)(v4);
  }

  return result;
}

uint64_t AppleBCMWLANCore::updateDynSARSimpleReport(uint64_t this, unsigned int a2)
{
  v3 = (this + 72);
  v4 = a2;
  v5 = (*(this + 72) + (a2 << 6));
  v6 = v5[593];
  v7 = v5[577];
  v8 = v6 >= v7;
  v9 = v6 - v7;
  v10 = !v8;
  v11 = v5[594];
  v12 = v5[578];
  v8 = v11 >= v12;
  v13 = v11 - v12;
  v14 = !v8;
  v15 = v5[595];
  v16 = v5[579];
  v8 = v15 >= v16;
  v17 = v15 - v16;
  v18 = !v8;
  v19 = v5[596];
  v20 = v5[580];
  v8 = v19 >= v20;
  v21 = v19 - v20;
  v22 = !v8;
  v23 = v5[597];
  v24 = v5[581];
  v8 = v23 >= v24;
  v25 = v23 - v24;
  v26 = !v8;
  v27 = v5[598];
  v28 = v5[582];
  v8 = v27 >= v28;
  v29 = v27 - v28;
  v30 = !v8;
  v31 = v5[599];
  v32 = v5[583];
  v8 = v31 >= v32;
  v33 = v31 - v32;
  v34 = !v8;
  if ((v10 & 1) != 0 || (v14 & 1) != 0 || (v18 & 1) != 0 || (v22 & 1) != 0 || (v26 & 1) != 0 || (v30 & 1) != 0 || v34)
  {
    return AppleBCMWLANCore::updateDynSARSimpleReport();
  }

  v5[561] = v9;
  *(*v3 + (v4 << 6) + 4496) = v13;
  *(*v3 + (v4 << 6) + 4504) = v17;
  *(*v3 + (v4 << 6) + 4512) = v21;
  *(*v3 + (v4 << 6) + 4520) = v25;
  *(*v3 + (v4 << 6) + 4528) = v29;
  *(*v3 + (v4 << 6) + 4536) = v33;
  *(*v3 + (v4 << 6) + 4544) = *(*v3 + (v4 << 6) + 4800);
  return this;
}

double AppleBCMWLANCore::collectDynSARPerSliceSummary(IOService *this, unsigned int a2)
{
  v2 = a2;
  if (LODWORD(this[1].OSObject::OSObjectInterface::__vftable[4 * a2 + 300].init))
  {
    AppleBCMWLANCore::updateDynSARSimpleReport(this, a2);
    AppleBCMWLANCore::sendDynSARPerSliceStatsCoreAnalytics(this, a2);
    v5 = &this[1].OSObject::OSObjectInterface::__vftable[4 * v2];
    v6 = (v5 + 4616);
    v5 = (v5 + 4744);
    v7 = v5[1];
    *v6 = *v5;
    v6[1] = v7;
    v8 = v5[3];
    v6[2] = v5[2];
    v6[3] = v8;
    p_free = &this[1].OSObject::OSObjectInterface::__vftable[4 * v2 + 280].free;
    result = 0.0;
    *p_free = 0u;
    *(p_free + 1) = 0u;
    *(p_free + 2) = 0u;
    *(p_free + 3) = 0u;
    v11 = &this[1].OSObject::OSObjectInterface::__vftable[4 * v2 + 296].free;
    *(v11 + 2) = 0u;
    *(v11 + 3) = 0u;
    *v11 = 0u;
    *(v11 + 1) = 0u;
  }

  return result;
}

double AppleBCMWLANCore::collectTxDCSlice0Ant0Summary(IOService *this)
{
  v2 = this[1].OSObject::OSObjectInterface::__vftable;
  if (v2[344].init && LODWORD(v2[393].free))
  {
    AppleBCMWLANIOReportingCore::reportTxDCSlice0Ant0();
    v2 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  if (LODWORD(v2[393].free))
  {
    AppleBCMWLANCore::sendTxDCSlice0Ant0StatsCoreAnalytics(this);
    v2 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  v2[398].free = 0;
  result = 0.0;
  *&v2[396].free = 0u;
  *&v2[397].free = 0u;
  *&v2[394].free = 0u;
  *&v2[395].free = 0u;
  *&v2[393].free = 0u;
  return result;
}

double AppleBCMWLANCore::collectTxDCSlice1Ant0Summary(IOService *this)
{
  v2 = this[1].OSObject::OSObjectInterface::__vftable;
  if (v2[344].init && LODWORD(v2[399].init))
  {
    AppleBCMWLANIOReportingCore::reportTxDCSlice1Ant0();
    v2 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  if (LODWORD(v2[399].init))
  {
    AppleBCMWLANCore::sendTxDCSlice1Ant0StatsCoreAnalytics(this);
    v2 = this[1].OSObject::OSObjectInterface::__vftable;
  }

  v2[404].init = 0;
  result = 0.0;
  v2[403] = 0u;
  v2[402] = 0u;
  v2[401] = 0u;
  v2[400] = 0u;
  v2[399] = 0u;
  return result;
}

double AppleBCMWLANCore::collectSCTxBlankingSummary(IOService *this)
{
  v2 = this[1].OSObject::OSObjectInterface::__vftable;
  init = v2[344].init;
  if (init)
  {
    AppleBCMWLANIOReportingCore::reportSCTxBlankingStats(init, &v2[1122].free);
  }

  AppleBCMWLANCore::sendSCTxBlankingStatsEventCoreAnalytics(this);
  v4 = this[1].OSObject::OSObjectInterface::__vftable;
  v4[1130].free = 0;
  result = 0.0;
  *&v4[1128].free = 0u;
  *&v4[1129].free = 0u;
  *&v4[1126].free = 0u;
  *&v4[1127].free = 0u;
  *&v4[1124].free = 0u;
  *&v4[1125].free = 0u;
  *&v4[1122].free = 0u;
  *&v4[1123].free = 0u;
  v6 = this[1].OSObject::OSObjectInterface::__vftable;
  v6[1130].free = 0;
  *&v6[1128].free = 0u;
  *&v6[1129].free = 0u;
  *&v6[1126].free = 0u;
  *&v6[1127].free = 0u;
  *&v6[1124].free = 0u;
  *&v6[1125].free = 0u;
  *&v6[1122].free = 0u;
  *&v6[1123].free = 0u;
  LODWORD(this[1].OSObject::OSObjectInterface::__vftable[1122].free) = 25;
  LODWORD(this[1].OSObject::OSObjectInterface::__vftable[1124].free) = 40;
  LODWORD(this[1].OSObject::OSObjectInterface::__vftable[1126].free) = 70;
  LODWORD(this[1].OSObject::OSObjectInterface::__vftable[1128].free) = 100;
  return result;
}

uint64_t AppleBCMWLANCore::configureLPASEntry(IOService *this)
{
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureLPASEntry();
    }
  }

  v2 = AppleBCMWLANCore::configureLPASMode(this, 1);
  if (v2)
  {
    v3 = v2;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureLPASEntry();
      }
    }
  }

  else
  {
    v4 = AppleBCMWLANCore::configurePktFilters(this);
    if (v4)
    {
      v3 = v4;
      AppleBCMWLANCore::unConfigurePktFilters(this);
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureLPASEntry();
        }
      }
    }

    else
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureLPASEntry();
        }
      }

      return 0;
    }
  }

  return v3;
}

uint64_t AppleBCMWLANCore::configureWoWEntry(IOService *this)
{
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureWoWEntry();
    }
  }

  v2 = AppleBCMWLANKeepAliveOffload::configureKeepAlives(this[1].OSObject::OSObjectInterface::__vftable[346].free);
  if (v2)
  {
    if (v2 == -536870201)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureWoWEntry();
        }
      }
    }

    else if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureWoWEntry();
      }
    }
  }

  v3 = AppleBCMWLANCore::configurePktFilters(this);
  v4 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  if (v3)
  {
    if (v4)
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureWoWEntry();
      }
    }

    v5 = AppleBCMWLANCore::unConfigurePktFilters(this);
    if (v5)
    {
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureWoWEntry();
        }
      }

      AppleBCMWLANCore::resetPktFilterParams(this);
    }
  }

  else
  {
    if (v4)
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureWoWEntry();
      }
    }

    return 0;
  }

  return v5;
}

uint64_t AppleBCMWLANCore::isMIMOPowerSaveEnabled(AppleBCMWLANCore *this)
{
  result = AppleBCMWLANCore::featureFlagIsBitSet(this, 44);
  if (result)
  {
    v3 = *(*(this + 9) + 5464);

    return AppleBCMWLANConfigManager::isMIMOPSSupported(v3);
  }

  return result;
}

uint64_t AppleBCMWLANCore::configureAssociatedSleepEntryParams(uint64_t this)
{
  v2 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureAssociatedSleepEntryParams();
    }
  }

  v3 = *(this + 72);
  v13 = 1;
  v4 = *(v3 + 5408);
  v11 = &v13;
  v12 = 4;
  if (AppleBCMWLANCommander::runIOVarSet(v4, "nolinkup", &v11, 0, 0))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureAssociatedSleepEntryParams();
      }
    }
  }

  AppleBCMWLANCore::configureAvgRssiParamsForAssociatedSleepEntry(this);
  AppleBCMWLANCore::configureEventBitMaskForAssociatedSleep(this);
  AppleBCMWLANCore::resetClockDrifts(this);
  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 39))
  {
    v10 = 0;
    v5 = *(*(this + 72) + 5408);
    v11 = &v10;
    v12 = 4;
    v6 = AppleBCMWLANCommander::runIOVarSet(v5, "lq_max_bcn_thresh", &v11, 0, 0);
    v7 = v6;
    if (v6 != -469794537 && v6 != 0)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureAssociatedSleepEntryParams(this, v2, &v10, v7);
        }
      }
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureAssociatedSleepEntryParams();
    }
  }

  *(*(this + 72) + 776) = 1;
  *(*(this + 72) + 778) = 1;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureAssociatedSleepEntryParams();
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::configureLPASMode(uint64_t this, int a2)
{
  v18 = a2;
  v4 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureLPASMode();
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 26) && (!AppleBCMWLANCore::featureFlagIsBitSet(this, 70) || (*(*(this + 72) + 19801) & 4) == 0))
  {
    v5 = (*(*this + 88))(this);
    if ((*(*v5 + 136))(v5))
    {
      v6 = IOMallocZeroTyped();
      if (!v6)
      {
        v9 = 0;
        goto LABEL_29;
      }

      v7 = v6;
      *v6 = a2;
      v15 = this;
      v16 = AppleBCMWLANCore::handleSetLpasAsyncCallBack;
      v17 = v6;
      v8 = *(*(this + 72) + 5408);
      v14[0] = &v18;
      v14[1] = 4;
      v9 = AppleBCMWLANCommander::sendIOVarSet(v8, "lpas", v14, kNoRxExpected, &v15, 0);
      if (v9)
      {
        IOFree(v7, 4uLL);
      }
    }

    else
    {
      v10 = *(*(this + 72) + 5408);
      v15 = &v18;
      v16 = 4;
      v9 = AppleBCMWLANCommander::runIOVarSet(v10, "lpas", &v15, 0, 0);
    }

    v11 = (*(*this + 1952))(this);
    if (v9)
    {
      if (v11)
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureLPASMode();
        }
      }

      v12 = *(this + 72);
      goto LABEL_28;
    }

    if (v11)
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureLPASMode(this, v4, &v18);
      }
    }

    v12 = *(this + 72);
    if (v18 != 1)
    {
      v9 = 0;
LABEL_28:
      atomic_fetch_and((v12 + 10376), 0xFF7FFFFF);
      goto LABEL_29;
    }

    v9 = 0;
    atomic_fetch_or((v12 + 10376), 0x800000u);
LABEL_29:
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureLPASMode();
      }
    }

    return v9;
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureLPASMode();
    }
  }

  return 0;
}

uint64_t AppleBCMWLANCore::configurePktFilters(IOService *this)
{
  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configurePktFilters();
    }
  }

  if (IO80211BssManager::isAssociated(this[1].OSObject::OSObjectInterface::__vftable[339].free))
  {
    v2 = IOMallocZeroData();
    if (!v2)
    {
      v4 = 3758097085;
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configurePktFilters();
        }
      }

      goto LABEL_18;
    }

    PacketFilterData = IO80211InfraInterface::getPacketFilterData();
    if (PacketFilterData)
    {
      v4 = PacketFilterData;
      if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
      {
        (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configurePktFilters();
        }
      }

LABEL_18:
      IOFreeData();
      return v4;
    }

    v6 = v2[1];
    HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[592].free) = *v2;
    LODWORD(this[1].OSObject::OSObjectInterface::__vftable[593].init) = 0;
    HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[627].init) = v6;
    v7 = this[1].OSObject::OSObjectInterface::__vftable;
    if (HIDWORD(v7[627].init))
    {
      v8 = 0;
      v9 = (v2 + 2);
      v10 = 9524;
      do
      {
        v11 = *v9++;
        *(v7 + v10) = v11;
        ++v8;
        v7 = this[1].OSObject::OSObjectInterface::__vftable;
        v10 += 16;
      }

      while (v8 < HIDWORD(v7[627].init));
    }

    v12 = (&v7[611].init + 4);
    v12[14] = 0u;
    v12[15] = 0u;
    v12[12] = 0u;
    v12[13] = 0u;
    v12[10] = 0u;
    v12[11] = 0u;
    v12[8] = 0u;
    v12[9] = 0u;
    v12[6] = 0u;
    v12[7] = 0u;
    v12[4] = 0u;
    v12[5] = 0u;
    v12[2] = 0u;
    v12[3] = 0u;
    *v12 = 0u;
    v12[1] = 0u;
    v13 = this[1].OSObject::OSObjectInterface::__vftable;
    free_high = HIDWORD(v13[592].free);
    init = v13[593].init;
    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        v48 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
        v42 = this[1].OSObject::OSObjectInterface::__vftable;
        free = v42[341].free;
        if (free)
        {
          v47 = AppleBCMWLANConfigManager::wompEnabled(free);
          v42 = this[1].OSObject::OSObjectInterface::__vftable;
        }

        else
        {
          v47 = 0;
        }

        v46 = BYTE6(v42[644].init);
        init_high = HIDWORD(v42[627].init);
        isIPv6AlreadyProgrammed = AppleBCMWLANCore::isIPv6AlreadyProgrammed(this);
        CCLogStream::logAlert(v48, "[dk] %s@%d: WOMP:[%u], configured[%u], wow ipv4[%u.%u.%u.%u], prog ipv4[%u.%u.%u.%u], fWoWIPv6AddressCount[%u] isIPv6AlreadyProgrammed[%u]\n", "configurePktFilters", 50107, v47, v46, free_high, BYTE1(free_high), BYTE2(free_high), HIBYTE(free_high), init, BYTE1(init), BYTE2(init), HIBYTE(init), init_high, isIPv6AlreadyProgrammed);
      }
    }

    IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(this, 31);
    v17 = this[1].OSObject::OSObjectInterface::__vftable;
    if (IsBitSet)
    {
      if (AppleBCMWLANConfigManager::wompEnabled(v17[341].free))
      {
        goto LABEL_55;
      }

      if (HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[592].free) == LODWORD(this[1].OSObject::OSObjectInterface::__vftable[593].init))
      {
        v18 = 0;
      }

      else
      {
        AppleBCMWLANCore::deleteIPv4PktFilters(this);
        v20 = AppleBCMWLANCore::configureComplexFilters(this, 102, 0);
        if (v20)
        {
          v4 = v20;
          if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
          {
            (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configurePktFilters();
            }
          }

          goto LABEL_18;
        }

        v18 = 1;
      }

      if (!AppleBCMWLANCore::isIPv6AlreadyProgrammed(this))
      {
        AppleBCMWLANCore::deleteIPv6PktFilters(this);
        if (AppleBCMWLANCore::configureMaxPktFilter(this))
        {
          if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
          {
            (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configurePktFilters();
            }
          }
        }

        if (HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[627].init))
        {
          v21 = 0;
          while (1)
          {
            v22 = AppleBCMWLANCore::configureComplexFilters(this, 107, v21);
            if (v22)
            {
              break;
            }

            if (HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[627].init) <= ++v21)
            {
              goto LABEL_50;
            }
          }

          v4 = v22;
          if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
          {
            (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configurePktFilters();
            }
          }

          goto LABEL_18;
        }

LABEL_50:
        v18 |= 2u;
      }

      AppleBCMWLANCore::deleteEapolFilter(this);
      AppleBCMWLANCore::configureEapolFilter(this);
      if (!v18)
      {
LABEL_55:
        v23 = AppleBCMWLANConfigManager::wompEnabled(this[1].OSObject::OSObjectInterface::__vftable[341].free);
        v24 = this[1].OSObject::OSObjectInterface::__vftable;
        if (v23 && (BYTE6(v24[644].init) & 1) == 0)
        {
          AppleBCMWLANCore::deleteMagicPktFilters(this);
          v26 = AppleBCMWLANCore::configureMagicPktFilter(this, v25, 0, 14);
          if (v26)
          {
            v4 = v26;
            if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
            {
              (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configurePktFilters();
              }
            }

            goto LABEL_18;
          }

          BYTE6(this[1].OSObject::OSObjectInterface::__vftable[644].init) = 1;
          v24 = this[1].OSObject::OSObjectInterface::__vftable;
        }

        if ((BYTE6(v24[644].init) & 1) == 0)
        {
          AppleBCMWLANCore::deleteMagicPktFilters(this);
          v28 = this[1].OSObject::OSObjectInterface::__vftable;
          if (SLODWORD(v28[1240].free) >= -1)
          {
            v29 = 0;
            while (1)
            {
              v30 = AppleBCMWLANCore::configureMagicPktFilter(this, v27, v29, 0);
              if (v30)
              {
                break;
              }

              v28 = this[1].OSObject::OSObjectInterface::__vftable;
              v31 = v29 <= SLODWORD(v28[1240].free);
              v29 = (v29 + 1);
              if (!v31)
              {
                goto LABEL_67;
              }
            }

            v4 = v30;
            if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
            {
              (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configurePktFilters();
              }
            }

            goto LABEL_18;
          }

LABEL_67:
          BYTE6(v28[644].init) = 1;
        }

        if (AppleBCMWLANCore::featureFlagIsBitSet(this, 31))
        {
          if (BYTE1(this[1].OSObject::OSObjectInterface::__vftable[48].free) == 1)
          {
            AppleBCMWLANCore::ignoreUnicastPackets(this);
          }

          else
          {
            if (!AppleBCMWLANCore::getActivePortsFromNetworkStack(this) && AppleBCMWLANCore::configureActivePortsInToChip(this, 286326785))
            {
              if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
              {
                (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::configurePktFilters();
                }
              }

              WORD2(this[1].OSObject::OSObjectInterface::__vftable[643].free) = 0;
            }

            if (!WORD2(this[1].OSObject::OSObjectInterface::__vftable[643].free))
            {
              AppleBCMWLANCore::configureActivePortsInToChip(this, 286326786);
            }
          }
        }

        if (AppleBCMWLANConfigManager::wompEnabled(this[1].OSObject::OSObjectInterface::__vftable[341].free))
        {
          v4 = AppleBCMWLANCore::enablePacketFilters(this, 104);
          v32 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
          if (v4)
          {
            if (v32)
            {
              (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configurePktFilters();
              }
            }

            goto LABEL_18;
          }

          if (v32)
          {
            (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configurePktFilters();
            }
          }
        }

        else
        {
          if (BYTE1(this[1].OSObject::OSObjectInterface::__vftable[627].free))
          {
            v4 = AppleBCMWLANCore::enablePacketFilters(this, 102);
            v33 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
            if (v4)
            {
              if (v33)
              {
                (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::configurePktFilters();
                }
              }

              goto LABEL_18;
            }

            if (v33)
            {
              (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configurePktFilters();
              }
            }
          }

          v4 = AppleBCMWLANCore::configureARPOffload(this, 1);
          v34 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
          if (v4)
          {
            if (v34)
            {
              (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configurePktFilters();
              }
            }

            goto LABEL_18;
          }

          if (v34)
          {
            (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configurePktFilters();
            }
          }

          if (!AppleBCMWLANCore::configureICMP(this, 1))
          {
            if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
            {
              (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configurePktFilters();
              }
            }
          }

          v4 = AppleBCMWLANCore::configureNeighbourDiscovery(this, 1);
          if (!v4)
          {
            if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
            {
              (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configurePktFilters();
              }
            }
          }

          if (LOBYTE(this[1].OSObject::OSObjectInterface::__vftable[627].free))
          {
            if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
            {
              (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configurePktFilters();
              }
            }
          }

          v35 = this[1].OSObject::OSObjectInterface::__vftable;
          if (LOBYTE(v35[627].free))
          {
            v36 = 107;
            while (1)
            {
              v4 = AppleBCMWLANCore::enablePacketFilters(this, v36);
              v37 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
              if (v4)
              {
                break;
              }

              if (v37)
              {
                (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
                if (CCLogStream::shouldLog())
                {
                  AppleBCMWLANCore::configurePktFilters();
                }
              }

              v35 = this[1].OSObject::OSObjectInterface::__vftable;
              v38 = v36 - 106;
              ++v36;
              if (v38 >= LOBYTE(v35[627].free))
              {
                v4 = 0;
                goto LABEL_132;
              }
            }

            if (v37)
            {
              (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configurePktFilters();
              }
            }

            goto LABEL_18;
          }

LABEL_132:
          if (SLODWORD(v35[1240].free) >= -1)
          {
            v39 = -1;
            while (1)
            {
              v40 = AppleBCMWLANCore::enablePacketFilters(this, v39 + 105);
              if (v40)
              {
                break;
              }

              if (++v39 > SLODWORD(this[1].OSObject::OSObjectInterface::__vftable[1240].free))
              {
                v4 = 0;
                goto LABEL_137;
              }
            }

            v4 = v40;
            if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
            {
              (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configurePktFilters();
              }
            }

            goto LABEL_18;
          }

LABEL_137:
          if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
          {
            (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configurePktFilters();
            }
          }

          v41 = this[1].OSObject::OSObjectInterface::__vftable;
          if (!LODWORD(v41[1236].free) || !BYTE3(v41[627].free))
          {
            goto LABEL_93;
          }

          if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
          {
            (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::configurePktFilters();
            }
          }

          if (AppleBCMWLANCore::enablePacketFilters(this, 101))
          {
            if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
            {
              (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
              v4 = 1;
              if (CCLogStream::shouldLog())
              {
                AppleBCMWLANCore::configurePktFilters();
              }
            }

            else
            {
              v4 = 1;
            }

            goto LABEL_18;
          }
        }

        v4 = 0;
LABEL_93:
        if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
        {
          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configurePktFilters();
          }
        }

        goto LABEL_18;
      }
    }

    else
    {
      if (HIDWORD(v17[592].free) == LODWORD(v17[593].init) || (AppleBCMWLANConfigManager::wompEnabled(v17[341].free) & 1) != 0)
      {
        goto LABEL_55;
      }

      AppleBCMWLANCore::deleteIPv4PktFilters(this);
      v19 = AppleBCMWLANCore::configureLegacyFilters(this);
      if (v19)
      {
        v4 = v19;
        if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
        {
          (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::configurePktFilters();
          }
        }

        goto LABEL_18;
      }

      LODWORD(this[1].OSObject::OSObjectInterface::__vftable[593].init) = HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[592].free);
    }

    if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configurePktFilters();
      }
    }

    goto LABEL_55;
  }

  if ((this->OSObject::OSMetaClassBase::__vftable[34].free)(this))
  {
    (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configurePktFilters();
    }
  }

  return 3758096385;
}

uint64_t AppleBCMWLANCore::unConfigurePktFilters(unint64_t this)
{
  v2 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::unConfigurePktFilters();
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 31))
  {
    *(*(this + 72) + 10300) = 0;
    active = AppleBCMWLANCore::configureActivePortsInToChip(this, 572653569);
    if (active)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::unConfigurePktFilters();
        }
      }
    }
  }

  else
  {
    active = 0;
  }

  if (AppleBCMWLANConfigManager::wompEnabled(*(*(this + 72) + 5464)))
  {
    if (*(*(this + 72) + 10042))
    {
      active = AppleBCMWLANCore::disablePacketFilters(this, 104);
      if (active)
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::unConfigurePktFilters();
          }
        }
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          v4 = 50386;
LABEL_61:
          v10 = (*(*this + 1952))(this);
          CCLogStream::logInfo(v10, "[dk] %s@%d: Disabled Magic packet filter\n", "unConfigurePktFilters", v4);
        }
      }
    }
  }

  else
  {
    if (*(*(this + 72) + 10041))
    {
      if (AppleBCMWLANCore::disablePacketFilters(this, 102))
      {
        if ((*(*this + 1952))(this))
        {
          (*(*this + 1952))(this);
          if (CCLogStream::shouldLog())
          {
            AppleBCMWLANCore::unConfigurePktFilters();
          }
        }
      }

      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::unConfigurePktFilters();
        }
      }
    }

    AppleBCMWLANCore::configureARPOffload(this, 0);
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::unConfigurePktFilters();
      }
    }

    active = AppleBCMWLANCore::configureICMP(this, 0);
    if (!active)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::unConfigurePktFilters();
        }
      }
    }

    v5 = *(this + 72);
    if (*(v5 + 10040))
    {
      v6 = 107;
      do
      {
        active = AppleBCMWLANCore::disablePacketFilters(this, v6);
        if (active)
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::unConfigurePktFilters();
            }
          }
        }

        v5 = *(this + 72);
        v7 = v6 - 106;
        ++v6;
      }

      while (v7 < *(v5 + 10040));
    }

    if (*(v5 + 19784) && *(v5 + 10043))
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::unConfigurePktFilters();
        }
      }

      AppleBCMWLANCore::disablePacketFilters(this, 101);
    }

    AppleBCMWLANCore::getNeighbourDiscoveryStats(this);
    AppleBCMWLANCore::configureNeighbourDiscovery(this, 0);
    if (*(*(this + 72) + 10042))
    {
      v8 = 0;
      do
      {
        active = AppleBCMWLANCore::disablePacketFilters(this, v8 + 104);
        if (active)
        {
          if ((*(*this + 1952))(this))
          {
            (*(*this + 1952))(this);
            if (CCLogStream::shouldLog())
            {
              AppleBCMWLANCore::unConfigurePktFilters(this, v2, active, v8 + 104);
            }
          }
        }

        ++v8;
      }

      while (v8 < *(*(this + 72) + 10042));
    }

    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        v4 = 50379;
        goto LABEL_61;
      }
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::unConfigurePktFilters();
    }
  }

  return active;
}

AppleBCMWLANCore ***AppleBCMWLANCore::initialize6GCapabilities(void *this)
{
  result = *(this[9] + 5464);
  if (result)
  {
    v3 = AppleBCMWLANConfigManager::determine6GConfiguration(result);
    result = (*(*this + 1952))(this);
    if (v3)
    {
      if (result)
      {
        (*(*this + 1952))(this);
        result = CCLogStream::shouldLog();
        if (result)
        {
          return AppleBCMWLANCore::initialize6GCapabilities();
        }
      }
    }

    else if (result)
    {
      (*(*this + 1952))(this);
      result = CCLogStream::shouldLog();
      if (result)
      {
        return AppleBCMWLANCore::initialize6GCapabilities();
      }
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::configureAvgRssiParamsForAssociatedSleepEntry(uint64_t this)
{
  if (IO80211BssManager::isAssociatedToAdhoc(*(*(this + 72) + 5432)))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureAvgRssiParamsForAssociatedSleepEntry();
      }
    }

    return 0;
  }

  else
  {
    v13 = 516;
    v3 = (*(*this + 88))(this);
    if ((*(*v3 + 136))(v3))
    {
      v10 = this;
      v11 = AppleBCMWLANCore::handleConfigureAvgRssiParamsAsyncCallback;
      v12 = 0;
      v4 = *(*(this + 72) + 5408);
      v9[0] = &v13;
      v9[1] = 4;
      v5 = AppleBCMWLANCommander::sendIOVarSet(v4, "rssi_win", v9, kNoRxExpected, &v10, 0);
    }

    else
    {
      v6 = *(*(this + 72) + 5408);
      v10 = &v13;
      v11 = 4;
      v5 = AppleBCMWLANCommander::runIOVarSet(v6, "rssi_win", &v10, 0, 0);
    }

    v2 = v5;
    if (v5 != -469794537 && v5 != 0)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureAvgRssiParamsForAssociatedSleepEntry(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v13, v2);
        }
      }
    }
  }

  return v2;
}

uint64_t AppleBCMWLANCore::resetClockDrifts(uint64_t this)
{
  v1 = *(this + 72);
  if (*(v1 + 777) == 1)
  {
    v2 = this;
    this = AppleBCMWLANCommander::runIOVarSet(*(v1 + 5408), "drift_stats_reset", &kNoTxPayload, 0, 0);
    if (this)
    {
      this = (*(*v2 + 1952))(v2);
      if (this)
      {
        (*(*v2 + 1952))(v2);
        this = CCLogStream::shouldLog();
        if (this)
        {
          return AppleBCMWLANCore::resetClockDrifts();
        }
      }
    }
  }

  return this;
}

AppleBCMWLANIOReportingCore *AppleBCMWLANCore::updateInactivityAndSleepCounters(void *a1, int a2)
{
  mach_continuous_time();
  absolutetime_to_nanoseconds();
  if (a2 == 1)
  {
    v5 = a1 + 9;
    v8 = a1[9];
    v9 = *(v8 + 17712);
    if (!v9)
    {
      goto LABEL_14;
    }

    *(v8 + 17728) -= v9;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateInactivityAndSleepCounters();
      }
    }

    v7 = 17712;
  }

  else
  {
    if (a2)
    {
      goto LABEL_14;
    }

    v5 = a1 + 9;
    v4 = a1[9];
    v6 = *(v4 + 17720);
    if (!v6)
    {
      goto LABEL_14;
    }

    *(v4 + 17736) -= v6;
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::updateInactivityAndSleepCounters();
      }
    }

    v7 = 17720;
  }

  *(*v5 + v7) = 0;
LABEL_14:
  v10 = a1[9];
  result = v10[688];
  if (result)
  {
    return AppleBCMWLANIOReportingCore::updateInactivitySleepStats(result, -v10[2467], v10[2216], v10[2217]);
  }

  return result;
}

uint64_t AppleBCMWLANCore::configureAvgRssiParamsForAssociatedSleepExit(uint64_t this)
{
  if (IO80211BssManager::isAssociatedToAdhoc(*(*(this + 72) + 5432)))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureAvgRssiParamsForAssociatedSleepExit();
      }
    }

    return 0;
  }

  else
  {
    v13 = 520;
    v3 = (*(*this + 88))(this);
    if ((*(*v3 + 136))(v3))
    {
      v10 = this;
      v11 = AppleBCMWLANCore::handleConfigureAvgRssiParamsAsyncCallback;
      v12 = 0;
      v4 = *(*(this + 72) + 5408);
      v9[0] = &v13;
      v9[1] = 4;
      v5 = AppleBCMWLANCommander::sendIOVarSet(v4, "rssi_win", v9, kNoRxExpected, &v10, 0);
    }

    else
    {
      v6 = *(*(this + 72) + 5408);
      v10 = &v13;
      v11 = 4;
      v5 = AppleBCMWLANCommander::runIOVarSet(v6, "rssi_win", &v10, 0, 0);
    }

    v2 = v5;
    if (v5 != -469794537 && v5 != 0)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureAvgRssiParamsForAssociatedSleepExit(this, this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000, &v13, v2);
        }
      }
    }
  }

  return v2;
}

uint64_t AppleBCMWLANCore::configureLPASExit(unint64_t this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureLPASExit();
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureLPASExit();
    }
  }

  if (AppleBCMWLANCore::configureLPASMode(this, 0))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureLPASExit();
      }
    }
  }

  v2 = AppleBCMWLANCore::unConfigurePktFilters(this);
  if (v2)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureLPASExit();
      }
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureLPASExit();
    }
  }

  return v2;
}

uint64_t AppleBCMWLANCore::configureWoWExit(void *this)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureWoWExit();
    }
  }

  if (AppleBCMWLANKeepAliveOffload::unConfigureKeepAlives(*(this[9] + 5544)))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureWoWExit();
      }
    }
  }

  v2 = AppleBCMWLANCore::unConfigurePktFilters(this);
  if (v2)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureWoWExit();
      }
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureWoWExit();
    }
  }

  return v2;
}

IOLock *AppleBCMWLANCore::configureAssociatedSleepExitParams(unint64_t this)
{
  v2 = this & 0xFFFFFFFFFFFFLL | 0xCDA1000000000000;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureAssociatedSleepExitParams();
    }
  }

  v3 = *(this + 72);
  v13 = 0;
  v4 = *(v3 + 5408);
  v11 = &v13;
  v12 = 4;
  if (AppleBCMWLANCommander::runIOVarSet(v4, "nolinkup", &v11, 0, 0))
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureAssociatedSleepExitParams();
      }
    }
  }

  v5 = AppleBCMWLANCore::unconfigureEventBitMaskForAssociatedSleep(this);
  if (v5)
  {
    if ((*(*this + 1952))(this))
    {
      (*(*this + 1952))(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::configureAssociatedSleepExitParams();
      }
    }
  }

  if (AppleBCMWLANCore::featureFlagIsBitSet(this, 39))
  {
    v10 = 0;
    v6 = *(*(this + 72) + 5408);
    v11 = &v10;
    v12 = 4;
    v7 = AppleBCMWLANCommander::runIOVarSet(v6, "lq_max_bcn_thresh", &v11, 0, 0);
    v5 = v7;
    if (v7 != -469794537 && v7 != 0)
    {
      if ((*(*this + 1952))(this))
      {
        (*(*this + 1952))(this);
        if (CCLogStream::shouldLog())
        {
          AppleBCMWLANCore::configureAssociatedSleepExitParams(this, v2, &v10, v5);
        }
      }
    }
  }

  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureAssociatedSleepExitParams();
    }
  }

  *(*(this + 72) + 776) = 0;
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::configureAssociatedSleepExitParams();
    }
  }

  return v5;
}

uint64_t AppleBCMWLANCore::timeSinceLastActivity_abs(AppleBCMWLANCore *this, unint64_t *a2)
{
  v4 = mach_continuous_time();
  if (a2)
  {
    v5 = *(*(this + 9) + 6536);
    result = *a2 - v5;
    if (*a2 < v5)
    {
      AppleBCMWLANCore::timeSinceLastActivity_abs(this, a2, this + 72, &v10);
      return v10;
    }
  }

  else
  {
    v7 = *(*(this + 9) + 6536);
    v8 = v4 >= v7;
    v9 = v4 - v7;
    if (v8)
    {
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AppleBCMWLANCore::resetInterfacesBegin(AppleBCMWLANCore *this)
{
  v9 = 0;
  v2 = *(this + 9);
  v3 = v2[1411];
  if (v3)
  {
    IO80211Controller::postMessage(this, v3, 0x31u, &v9, 4uLL, 1);
    v2 = *(this + 9);
  }

  v4 = v2[1412];
  if (v4)
  {
    IO80211Controller::postMessage(this, v4, 0x31u, &v9, 4uLL, 1);
    v2 = *(this + 9);
  }

  v5 = v2[3743];
  if (v5)
  {
    IO80211Controller::postMessage(this, v5, 0x31u, &v9, 4uLL, 1);
    v2 = *(this + 9);
  }

  v6 = v2[3744];
  if (v6)
  {
    IO80211Controller::postMessage(this, v6, 0x31u, &v9, 4uLL, 1);
    v2 = *(this + 9);
  }

  v7 = v2[1413];
  if (v7)
  {
    IO80211Controller::postMessage(this, v7, 0x31u, &v9, 4uLL, 1);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::captureRequestCallback(void *a1, uint64_t a2, _OWORD *a3)
{
  isBusy = CCFaultReporter::isBusy(*(a1[9] + 5536));
  result = (*(*a1 + 1952))(a1);
  if (isBusy)
  {
    if (result)
    {
      (*(*a1 + 1952))(a1);
      result = CCLogStream::shouldLog();
      if (result)
      {
        AppleBCMWLANCore::captureRequestCallback();
        return 0;
      }
    }
  }

  else
  {
    if (result)
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::captureRequestCallback();
      }
    }

    *(a1[9] + 18424) = *a3;
    v8 = (*(*a1 + 88))(a1);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = ___ZN16AppleBCMWLANCore22captureRequestCallbackEPKcPK11CCTimestamp_block_invoke;
    v9[3] = &__block_descriptor_tmp_2665;
    v9[4] = a1;
    v9[5] = a2;
    return (*(*v8 + 112))(v8, v9);
  }

  return result;
}

uint64_t AppleBCMWLANCore::setLogFlagsCallback(void *this, unint64_t a2)
{
  if ((*(*this + 1952))(this))
  {
    (*(*this + 1952))(this);
    if (CCLogStream::shouldLog())
    {
      AppleBCMWLANCore::setLogFlagsCallback();
    }
  }

  (*(**(this[9] + 5392) + 264))(*(this[9] + 5392), (a2 >> 13) & 1);
  return 0;
}

uint64_t AppleBCMWLANCore::captureDeviceInfo(IOService *this, OSDictionary **a2)
{
  v4 = OSDictionary::withCapacity(4u);
  v25 = 0;
  property = 0;
  values = OSString::withCString("compatible");
  v5 = OSArray::withObjects(&values, 1u, 0);
  if (!IOService::CopyProviderProperties(this, v5, &v25, 0) && v25)
  {
    v6 = (v25->getCount)(v25);
    Object = OSArray::getObject(v25, v6 - 1);
    v8 = OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass);
    v9 = OSString::withCString("compatible");
    v10 = OSDictionary::getObject(v8, v9);
    v11 = OSMetaClassBase::safeMetaCast(v10, gOSDataMetaClass);
    if (v11)
    {
      BytesNoCopy = OSData::getBytesNoCopy(v11);
    }

    else
    {
      BytesNoCopy = "UNKNOWN";
    }

    v13 = OSString::withCString(BytesNoCopy);
    OSDictionary::setObject(v4, "Platform", v13);
    if (v13)
    {
      (v13->release)(v13);
    }

    if (v25)
    {
      (v25->release)(v25);
      v25 = 0;
    }

    if (v9)
    {
      (v9->release)(v9);
    }
  }

  if (values)
  {
    (values->release)(values);
    values = 0;
  }

  if (v5)
  {
    (v5->release)(v5);
  }

  if (!IOService::SearchProperty(this, "IOPlatformSerialNumber", "IOService", 1uLL, &property, 0))
  {
    v14 = OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass);
    if (v14)
    {
      OSDictionary::setObject(v4, "Serial", v14);
    }

    if (property)
    {
      (property->release)(property);
      property = 0;
    }
  }

  if (!IOService::SearchProperty(this, "ModuleInfo", "IOService", 1uLL, &property, 0))
  {
    v15 = OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass);
    if (v15)
    {
      OSDictionary::setObject(v4, "Module", v15);
    }

    if (property)
    {
      (property->release)(property);
      property = 0;
    }
  }

  v16 = OSString::withCString(&this[1].OSObject::OSObjectInterface::__vftable[155].free);
  OSDictionary::setObject(v4, "Module Instance", v16);
  if (v16)
  {
    (v16->release)(v16);
  }

  if (!IOService::SearchProperty(this, "vendor-id", "IOService", 1uLL, &property, 0))
  {
    v17 = OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass);
    if (v17)
    {
      OSDictionary::setObject(v4, "Vendor", v17);
    }

    if (property)
    {
      (property->release)(property);
      property = 0;
    }
  }

  if (!IOService::SearchProperty(this, "FirmwareVersion", "IOService", 1uLL, &property, 0))
  {
    v18 = OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass);
    if (v18)
    {
      OSDictionary::setObject(v4, "Firmware Version", v18);
    }

    if (property)
    {
      (property->release)(property);
      property = 0;
    }
  }

  if (!IOService::SearchProperty(this, "OS Build Version", "IOService", 1uLL, &property, 0))
  {
    v19 = OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass);
    if (v19)
    {
      OSDictionary::setObject(v4, "OS Build", v19);
    }

    if (property)
    {
      (property->release)(property);
      property = 0;
    }
  }

  if (kAppleBCMWLANBuildTag[0])
  {
    v20 = OSString::withCString(kAppleBCMWLANBuildTag[0]);
    OSDictionary::setObject(v4, "Build Tag", v20);
    if (v20)
    {
      (v20->release)(v20);
    }
  }

  else
  {
    OSDictionary::setObject(v4, "Build Tag", 0);
  }

  v21 = OSString::withCString("AppleBCMWLANV3_driverkit-1535.9.4.1");
  OSDictionary::setObject(v4, "Git Tag", v21);
  if (v21)
  {
    (v21->release)(v21);
  }

  if (kAppleBCMWLANBuildDate[0])
  {
    v22 = OSString::withCString(kAppleBCMWLANBuildDate[0]);
    OSDictionary::setObject(v4, "Build Date", v22);
    if (v22)
    {
      (v22->release)(v22);
    }
  }

  else
  {
    OSDictionary::setObject(v4, "Build Date", 0);
  }

  v23 = OSString::withCString("release");
  result = OSDictionary::setObject(v4, "Build Type", v23);
  if (v23)
  {
    result = (v23->release)(v23);
  }

  *a2 = v4;
  return result;
}

uint64_t AppleBCMWLANCore::captureDriverState(IOService *this, uint64_t a2, char *a3, int a4, int a5)
{
  v10 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  v11 = a4;
  v12 = (this->OSObject::OSMetaClassBase::__vftable[2].getMetaClass)(this, a2);
  v13 = IO80211Print(v10, 5, -1, 0, a3, a4, a5, "---------------------------- %s ----------------------------\n", v12);
  v14 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  v15 = IO80211Print(v14, 5, -1, 0, a3, v13 + a4, a5 - v13, "ivars->fStateFlags: 0x%x ivars->fUserSpacePowerState: 0x%x\n", LODWORD(this[1].OSObject::OSObjectInterface::__vftable[648].free), HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[1240].free)) + v13;
  v16 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  v76 = a4;
  v17 = IO80211Print(v16, 5, -1, 0, a3, v15 + a4, a5 - v15, "----------------- SYSTEM:\n");
  properties = 0;
  property = 0;
  values = OSString::withCString("compatible");
  v18 = 0;
  if (!IOService::SearchProperty(this, "FirmwareVersion", "IOService", 1uLL, &property, 0))
  {
    if (OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass))
    {
      v19 = OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass);
      v18 = OSString::withString(v19);
    }

    else
    {
      v18 = 0;
    }

    if (property)
    {
      (property->release)(property);
      property = 0;
    }
  }

  v81 = 0;
  if (!IOService::SearchProperty(this, "vendor-id", "IOService", 1uLL, &property, 0))
  {
    if (OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass))
    {
      v20 = OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass);
      v81 = OSString::withString(v20);
    }

    else
    {
      v81 = 0;
    }

    if (property)
    {
      (property->release)(property);
      property = 0;
    }
  }

  v21 = 0;
  if (!IOService::SearchProperty(this, "ModuleInfo", "IOService", 1uLL, &property, 0))
  {
    if (OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass))
    {
      v22 = OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass);
      v21 = OSString::withString(v22);
    }

    else
    {
      v21 = 0;
    }

    if (property)
    {
      (property->release)(property);
      property = 0;
    }
  }

  v80 = 0;
  if (!IOService::SearchProperty(this, "OS Build Version", "IOService", 1uLL, &property, 0))
  {
    if (OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass))
    {
      v23 = OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass);
      v80 = OSString::withString(v23);
    }

    else
    {
      v80 = 0;
    }

    if (property)
    {
      (property->release)(property);
      property = 0;
    }
  }

  v24 = v17 + v15;
  v79 = 0;
  if (!IOService::SearchProperty(this, "IOPlatformSerialNumber", "IOService", 1uLL, &property, 0))
  {
    if (OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass))
    {
      v25 = OSMetaClassBase::safeMetaCast(property, gOSStringMetaClass);
      v79 = OSString::withString(v25);
    }

    else
    {
      v79 = 0;
    }

    if (property)
    {
      (property->release)(property);
      property = 0;
    }
  }

  v75 = OSArray::withObjects(&values, 1u, 0);
  v26 = 0;
  if (!IOService::CopyProviderProperties(this, v75, &properties, 0))
  {
    if (properties)
    {
      v27 = (properties->getCount)(properties);
      Object = OSArray::getObject(properties, v27 - 1);
      v29 = OSMetaClassBase::safeMetaCast(Object, gOSDictionaryMetaClass);
      v30 = OSString::withCString("compatible");
      v31 = OSDictionary::getObject(v29, v30);
      v26 = OSMetaClassBase::safeMetaCast(v31, gOSDataMetaClass);
      if (v30)
      {
        (v30->release)(v30);
      }
    }
  }

  v74 = v26;
  v77 = v21;
  v78 = v18;
  v32 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  v34 = IO80211Print(v32, 5, -1, 0, a3, v11 + v24, a5 - v24, "Core:   state=0x%08x debug=0x%08x issues=%d\n", LODWORD(this[1].OSObject::OSObjectInterface::__vftable[648].free), HIDWORD(this[1].OSObject::OSObjectInterface::__vftable[648].init), LODWORD(this[1].free)) + v24;
  v33 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  LODWORD(v34) = IO80211Print(v33, 5, -1, 0, a3, v11 + v34, a5 - v34, "Core:   feature: ") + v34;
  v35 = 17840;
  v36 = 16;
  do
  {
    v37 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
    v34 = IO80211Print(v37, 5, -1, 0, a3, v11 + v34, a5 - v34, "%02x ", *(&this[1].init + v35++)) + v34;
    --v36;
  }

  while (v36);
  v38 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  v39 = IO80211Print(v38, 5, -1, 0, a3, v11 + v34, a5 - v34, "\n") + v34;
  v73 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  v40 = kAppleBCMWLANBuildTag[0];
  v41 = kAppleBCMWLANBuildDate[0];
  if (AppleBCMWLAN_isVerboseDebugLoggingAllowed())
  {
    v42 = "[Debuggable - verbose]";
  }

  else
  {
    v42 = "";
  }

  if (AppleBCMWLAN_isSoCRAMCaptureAllowed())
  {
    v43 = "[Debuggable - socram]";
  }

  else
  {
    v43 = "";
  }

  isDebugCommandActionAllowed = AppleBCMWLAN_isDebugCommandActionAllowed();
  v45 = "[Debuggable - debug command]";
  if (!isDebugCommandActionAllowed)
  {
    v45 = "";
  }

  v46 = IO80211Print(v73, 5, -1, 0, a3, v11 + v39, a5 - v39, "Driver: %s %s %s %s %s %s %s\n", v40, "AppleBCMWLANV3_driverkit-1535.9.4.1", v41, "release", v42, v43, v45) + v39;
  v47 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  if (v77)
  {
    CStringNoCopy = OSString::getCStringNoCopy(v77);
  }

  else
  {
    CStringNoCopy = "UNKNOWN";
  }

  if (v78)
  {
    v49 = OSString::getCStringNoCopy(v78);
  }

  else
  {
    v49 = "UNKNOWN";
  }

  if (v81)
  {
    v50 = OSString::getCStringNoCopy(v81);
  }

  else
  {
    v50 = "UNKNOWN";
  }

  v51 = IO80211Print(v47, 5, -1, 0, a3, v11 + v46, a5 - v46, "Module: mod=%s fw=%s vend=%s inst=%s\n", CStringNoCopy, v49, v50, &this[1].OSObject::OSObjectInterface::__vftable[155].free) + v46;
  v52 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  if (v74)
  {
    BytesNoCopy = OSData::getBytesNoCopy(v74);
  }

  else
  {
    BytesNoCopy = "UNKNOWN";
  }

  if (v80)
  {
    v54 = OSString::getCStringNoCopy(v80);
  }

  else
  {
    v54 = "UNKNOWN";
  }

  if (v79)
  {
    v55 = OSString::getCStringNoCopy(v79);
  }

  else
  {
    v55 = "UNKNOWN";
  }

  v56 = IO80211Print(v52, 5, -1, 0, a3, v11 + v51, a5 - v51, "Platform: %s Build: %s Device Serial: %s\n", BytesNoCopy, v54, v55) + v51;
  v57 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  v58 = IO80211Print(v57, 5, -1, 0, a3, v11 + v56, a5 - v56, "Generated File Name: %s\n", &this[1].OSObject::OSObjectInterface::__vftable[75].free);
  if (v78)
  {
    (v78->release)(v78);
  }

  if (v81)
  {
    (v81->release)(v81);
  }

  if (v77)
  {
    (v77->release)(v77);
  }

  if (v80)
  {
    (v80->release)(v80);
  }

  if (v79)
  {
    (v79->release)(v79);
  }

  if (properties)
  {
    (properties->release)(properties);
    properties = 0;
  }

  if (values)
  {
    (values->release)(values);
    values = 0;
  }

  if (v75)
  {
    (v75->release)(v75);
  }

  v59 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  v60 = IO80211Print(v59, 5, -1, 0, a3, v11 + (v58 + v56), a5 - (v58 + v56), "-------------- DATA PATH:\n") + v58 + v56;
  v61 = AppleBCMWLANCore::printDataPathDebug(this, a3, v60 + v76, a5 - v60) + v60;
  v62 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  v63 = 0;
  v64 = v61 + IO80211Print(v62, 5, -1, 0, a3, v61 + v11, a5 - v61, "---------------------------- EventBitField ----------------------------\n");
  do
  {
    if ((*(&this[1].OSObject::OSObjectInterface::__vftable[68].free + (v63 >> 3)) >> (v63 & 7)))
    {
      v65 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      v66 = convertEventToString(v63, 0, 0);
      v64 += IO80211Print(v65, 4, -1, 0, a3, v11 + v64, a5 - v64, "%s\n", v66);
    }

    ++v63;
  }

  while (v63 != 219);
  v67 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
  v68 = 0;
  v69 = v64 + IO80211Print(v67, 5, -1, 0, a3, v11 + v64, a5 - v64, "---------------------------- EventBitField Before Sleep ---------------\n");
  do
  {
    if ((*(&this[1].OSObject::OSObjectInterface::__vftable[72].init + (v68 >> 3)) >> (v68 & 7)))
    {
      v70 = (this->OSObject::OSMetaClassBase::__vftable[34].free)(this);
      v71 = convertEventToString(v68, 0, 0);
      v69 = v69 + IO80211Print(v70, 4, -1, 0, a3, v11 + v69, a5 - v69, "%s\n", v71);
    }

    ++v68;
  }

  while (v68 != 219);
  return v69;
}

uint64_t AppleBCMWLANCore::stringFromReturn(AppleBCMWLANCore *this, unsigned int a2)
{
  if (a2 >> 14 == 229896)
  {
    return IO80211Controller::stringFromReturn(this, a2);
  }

  else
  {
    return (*(**(*(this + 9) + 5392) + 104))();
  }
}

uint64_t AppleBCMWLANCore::errnoFromReturn(AppleBCMWLANCore *this, unsigned int a2)
{
  if (a2 >> 14 == 229896)
  {
    return IO80211Controller::errnoFromReturn(this, a2);
  }

  else
  {
    return (*(**(*(this + 9) + 5392) + 112))();
  }
}

uint64_t AppleBCMWLANCore::isWNMSupportedAndEnabled(AppleBCMWLANCore *this)
{
  IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(this, 25);
  v3 = *(*(this + 9) + 5464);
  if (v3)
  {
    LODWORD(v3) = AppleBCMWLANConfigManager::isWnmSupportEnabled(v3);
  }

  return IsBitSet & v3;
}

uint64_t AppleBCMWLANCore::getFeatures(OSObject *this)
{
  p_ivars = &this[1].ivars;
  ivars = this[1].ivars;
  v4 = *(ivars + 8978);
  if (v4 == 1)
  {
    goto LABEL_9;
  }

  if (v4 == 2)
  {
    v5 = 0x2000000;
    goto LABEL_10;
  }

  v6 = *(ivars + 7522);
  if ((v6 - 2) < 2)
  {
    v5 = 0x1000000;
    goto LABEL_10;
  }

  if (v6 != 1)
  {
LABEL_9:
    v5 = 0;
  }

  else
  {
    v12 = -86;
    v11 = -86;
    if ((*(**(ivars + 674) + 456))(*(ivars + 674), &v12, &v11))
    {
      v5 = 0;
    }

    else
    {
      IsBitSet = AppleBCMWLANCore::featureFlagIsBitSet(this, 52);
      if ((IsBitSet & v12) != 0)
      {
        v10 = 0x1000000;
      }

      else
      {
        v10 = 0;
      }

      if (v11)
      {
        v5 = v10 | 0x2000000;
      }

      else
      {
        v5 = v10;
      }
    }

    ivars = p_ivars->ivars;
  }

LABEL_10:
  if (*(ivars + 1781))
  {
    if ((this->OSMetaClassBase::__vftable[34].free)(this))
    {
      (this->OSMetaClassBase::__vftable[34].free)(this);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getFeatures();
      }
    }
  }

  else
  {
    ClassNameHelper = getClassNameHelper(this);
    IOLog("[WiFiTimeSync] %s::%s() ptmMode = %d supported features = 0x%x\n", ClassNameHelper, "getFeatures", *(this[1].ivars + 7522), v5);
  }

  return v5;
}

uint64_t AppleBCMWLANCore::getHT_CAPABILITY(AppleBCMWLANCore *a1, uint64_t a2)
{
  AppleBCMWLANCore::updateHTAndVHTCapBasedOnHWSupport(a1);
  v4 = *(*(a1 + 9) + 1036);
  *(a2 + 16) = *(*(a1 + 9) + 1048);
  *(a2 + 4) = v4;
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getHT_CAPABILITY(uint64_t a1, uint64_t a2)
{
  AppleBCMWLANCore::updateHTAndVHTCapBasedOnHWSupport((a1 - 64));
  v4 = *(*(a1 + 8) + 1036);
  *(a2 + 16) = *(*(a1 + 8) + 1048);
  *(a2 + 4) = v4;
  return 0;
}

uint64_t AppleBCMWLANCore::getVHT_CAPABILITY(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (*(v2 + 1024) < 128)
  {
    return 45;
  }

  result = 0;
  v4 = v2 + 1064;
  v5 = *(v2 + 1064);
  *(a2 + 10) = *(v4 + 6);
  *(a2 + 4) = v5;
  return result;
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getVHT_CAPABILITY(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(v2 + 1024) < 128)
  {
    return 45;
  }

  result = 0;
  v4 = v2 + 1064;
  v5 = *(v2 + 1064);
  *(a2 + 10) = *(v4 + 6);
  *(a2 + 4) = v5;
  return result;
}

double AppleBCMWLANCore::getHE_CAPABILITY(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 72) + 1024) >= 128)
  {
    *(a2 + 12) = 2816;
    *(a2 + 14) = 38;
    *&result = 0x5000500050005;
    *(a2 + 26) = 0x5000500050005;
  }

  return result;
}

double non-virtual thunk toAppleBCMWLANCore::getHE_CAPABILITY(uint64_t a1, uint64_t a2)
{
  if (*(*(a1 + 8) + 1024) >= 128)
  {
    *(a2 + 12) = 2816;
    *(a2 + 14) = 38;
    *&result = 0x5000500050005;
    *(a2 + 26) = 0x5000500050005;
  }

  return result;
}

uint64_t AppleBCMWLANCore::getEXTENDED_STATS(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (!a2)
  {
    return 22;
  }

  if (!IO80211BssManager::isAssociated(*(*(a1 + 72) + 5432)))
  {
    return 3766625283;
  }

  CurrentRSSI = IO80211BssManager::getCurrentRSSI(*(*(a1 + 72) + 5432), &v6);
  *(a2 + 28) = v6;
  *(a2 + 4) = AppleBCMWLANNetAdapter::isRealTimeTrafficSettingEnabled(*(*(a1 + 72) + 5600));
  return CurrentRSSI;
}

uint64_t AppleBCMWLANCore::getCOUNTRY_CODE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 72);
  v4 = *(v3 + 6746);
  LOWORD(v3) = *(v3 + 6744);
  *(a3 + 6) = v4;
  *(a3 + 4) = v3;
  return 0;
}

uint64_t non-virtual thunk toAppleBCMWLANCore::getCOUNTRY_CODE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  v4 = *(v3 + 6746);
  LOWORD(v3) = *(v3 + 6744);
  *(a3 + 6) = v4;
  *(a3 + 4) = v3;
  return 0;
}

uint64_t AppleBCMWLANCore::getCHANNELS_INFO(AppleBCMWLANCore *a1, void *a2)
{
  v4 = a1 + 72;
  v5 = *(a1 + 9);
  v6 = strncmp(v5 + 6748, v5 + 6744, 4uLL);
  memcpy(a2, v5 + 19904, 0x2720uLL);
  if (v6 || *(*v4 + 6744) != 88 && !*(*v4 + 19916))
  {
    if ((*(*a1 + 1952))(a1))
    {
      (*(*a1 + 1952))(a1);
      if (CCLogStream::shouldLog())
      {
        AppleBCMWLANCore::getCHANNELS_INFO();
      }
    }

    AppleBCMWLANCore::handleCountryCodeChangeToRepopulateChannels(a1);
  }

  return 0;
}

uint64_t AppleBCMWLANCore::getWCL_LOW_LATENCY_INFO(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  v4 = *(*(a1 + 72) + 11296);
  if (v4)
  {
    LOBYTE(v4) = AppleBCMWLANProximityInterface::isLowLatencyTrafficOngoing(v4);
  }

  *a2 = v4;
  v5 = *(*(a1 + 72) + 11296);
  if (v5)
  {
    LOBYTE(v5) = AppleBCMWLANNANInterface::nanIsEnabled(v5);
  }

  *(a2 + 1) = v5;
  v6 = *(*(a1 + 72) + 11296);
  if (v6)
  {
    DesiredChannel = AppleBCMWLANProximityInterface::getDesiredChannel(v6);
  }

  else
  {
    DesiredChannel = 0;
  }

  result = 0;
  *(a2 + 2) = DesiredChannel;
  return result;
}

uint64_t AppleBCMWLANCore::getWCL_TRAFFIC_COUNTERS(AppleBCMWLANCore *a1, void *a2)
{
  if (!a2)
  {
    return 3758097084;
  }

  *a2 = AppleBCMWLANCore::getRealTimeTrafficClassTxCounter(a1);
  a2[1] = *(*(a1 + 9) + 10792) + *(*(a1 + 9) + 10784);
  a2[2] = AppleBCMWLANCore::getTxPktCounter(a1);
  a2[3] = vaddvq_s64(vaddq_s64(*(*(a1 + 9) + 10784), *(*(a1 + 9) + 10768)));
  a2[4] = AppleBCMWLANCore::getRealTimeAwdlTxPktCounter(a1);
  a2[5] = AppleBCMWLANCore::getRealTimeNANTxPktCounter(a1);
  mach_continuous_nanoseconds = AppleBCMWLANUtil::get_mach_continuous_nanoseconds(0, v4);
  result = 0;
  a2[6] = mach_continuous_nanoseconds;
  return result;
}

uint64_t AppleBCMWLANCore::getWCL_BSS_INFO(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v6[3] = a2;
  if (a2)
  {
    v2 = *(*(a1 + 72) + 5600);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = ___ZN16AppleBCMWLANCore15getWCL_BSS_INFOEP21apple80211_beacon_msg_block_invoke;
    v5[3] = &__block_descriptor_tmp_2701;
    v5[4] = v6;
    BssInfo = AppleBCMWLANNetAdapter::getBssInfo(v2, v5);
  }

  else
  {
    BssInfo = 3758097084;
  }

  _Block_object_dispose(v6, 8);
  return BssInfo;
}