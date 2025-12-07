eUICC::eUICCVinylMAVValve *eUICC::eUICCVinylMAVValve::eUICCVinylMAVValve(eUICC::eUICCVinylMAVValve *this, void *a2, int a3, char a4)
{
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 275) = 0u;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *this = &unk_2A1EB27C8;
  *(this + 37) = a2;
  *(this + 73) = a3;
  *(this + 291) = a4;
  *(this + 304) = 15;
  eUICC::eUICCVinylValve::hardwareHasESIM = eUICC::eUICCVinylMAVValve::HardwareHasESIM(this, &eUICC::eUICCVinylValve::simSKUID);
  return this;
}

uint64_t eUICC::eUICCVinylMAVValve::HardwareHasESIM(eUICC::eUICCVinylMAVValve *this, unsigned __int8 *a2)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN5eUICC18eUICCVinylMAVValve15HardwareHasESIMERh_block_invoke;
  v3[3] = &__block_descriptor_tmp;
  v3[4] = this;
  v3[5] = a2;
  if (eUICC::eUICCVinylValve::simSKUOnceToken != -1)
  {
    dispatch_once(&eUICC::eUICCVinylValve::simSKUOnceToken, v3);
  }

  return eUICC::eUICCVinylMAVValve::HardwareHasESIM(unsigned char &)::result;
}

uint64_t ___ZN5eUICC18eUICCVinylMAVValve15HardwareHasESIMERh_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = capabilities::euicc::supportsGenericUpdater(a1);
  if (!result)
  {
    return result;
  }

  v10[0] = *(v2 + 296);
  v10[1] = 30000;
  v5 = eUICC::GetSIMSKUID::Perform(v10, v4);
  if (v5 || v6 != 1)
  {
    gBBULogMaskGet(v5, v6);
    return _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "GetSIMSKUID error %d status 0x%hhx\n");
  }

  **(a1 + 40) = BYTE1(v6);
  v7 = **(a1 + 40);
  result = TelephonyRadiosGetRadio();
  if (result == 13)
  {
    goto LABEL_7;
  }

  if (result != 18)
  {
    if (result != 17)
    {
      gBBULogMaskGet(result, v8);
      return _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "MAV radio %d eSIM lookup not supported!\n");
    }

LABEL_7:
    if (v7 <= 6 && ((1 << v7) & 0x74) != 0)
    {
      eUICC::eUICCVinylMAVValve::HardwareHasESIM(unsigned char &)::result = 1;
    }

    return result;
  }

  if (v7 - 7 <= 1)
  {
    eUICC::eUICCVinylMAVValve::HardwareHasESIM(unsigned char &)::result = 1;
  }

  return result;
}

void *eUICC::eUICCVinylMAVValve::GetVinylType@<X0>(eUICC::eUICCVinylMAVValve *this@<X0>, void *a2@<X8>)
{
  v4 = eUICC::GetVinylType::Perform();
  v6 = v5;
  v7 = v4;
  v8 = v5;
  gBBULogMaskGet(v4, v5);
  if (v7 || v8 != 1)
  {
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "error %d status 0x%hhx\n", v7, v8);
  }

  else
  {
    v9 = v6 >> 8;
    v10 = BYTE1(v6);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "status 0x%hhx cards_type: %hhu \n", 1, v10);
    *(this + 2) = 1;
    *(this + 285) = v9;
    *(this + 288) = v10 == 3;
  }

  return memcpy(a2, this + 8, 0x11BuLL);
}

void *eUICC::eUICCVinylMAVValve::GetData@<X0>(eUICC::eUICCVinylMAVValve *this@<X0>, void *a2@<X8>, uint64_t a3@<X1>)
{
  if (!*(this + 37))
  {
    eUICC::eUICCVinylMAVValve::GetData(this, a3);
    return memcpy(a2, this + 8, 0x11BuLL);
  }

  if (*(this + 290) == 1)
  {
    gBBULogMaskGet(this, a3);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "eUICCVinylData cache is valid. Using cached data!\n");
  }

  else
  {
    *(this + 248) = 0u;
    *(this + 264) = 0u;
    *(this + 216) = 0u;
    *(this + 232) = 0u;
    *(this + 184) = 0u;
    *(this + 200) = 0u;
    *(this + 152) = 0u;
    *(this + 168) = 0u;
    *(this + 120) = 0u;
    *(this + 136) = 0u;
    *(this + 88) = 0u;
    *(this + 104) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = 0u;
    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *(this + 8) = 0u;
    *(this + 275) = 0u;
    *(this + 2) = TelephonyRadiosGetRadioVendor() - 2 < 3;
    eUICC::GetData::Perform();
    *(this + 2) = v10;
    *(this + 13) = bswap32(v12) >> 16;
    *(this + 15) = v13;
    *(this + 31) = v14;
    *(this + 2) = v15;
    *(this + 3) = v16;
    *(this + 4) = v17;
    *(this + 5) = v18;
    *(this + 143) = *&v21[15];
    *(this + 7) = v20;
    *(this + 8) = *v21;
    *(this + 6) = v19;
    *(this + 218) = *&v25[15];
    *(this + 203) = *v25;
    *(this + 187) = v24;
    *(this + 171) = v23;
    *(this + 155) = v22;
    *(this + 115) = v26;
    *(this + 250) = v28;
    *(this + 124) = v27;
    *(this + 267) = v30;
    *(this + 251) = v29;
    *(this + 12) = v11;
    *(this + 283) = v31;
    v6 = eUICC::eUICCVinylValve::hardwareHasESIM;
    *(this + 289) = eUICC::eUICCVinylValve::hardwareHasESIM;
    *(this + 286) = eUICC::eUICCVinylValve::simSKUID;
    *(this + 287) = (v10 == 4) & (v6 ^ 1);
    RadioVendor = TelephonyRadiosGetRadioVendor();
    if (*(this + 2) != (RadioVendor - 5) < 0xFFFFFFFD)
    {
      gBBULogMaskGet(RadioVendor, v5);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "error %d status %u sw1_sw2 0x%x\n", v9, *(this + 2), *(this + 13));
      return memcpy(a2, this + 8, 0x11BuLL);
    }

    *(this + 290) = 1;
  }

  eUICC::logEUICCData(this + 2, v5);
  return memcpy(a2, this + 8, 0x11BuLL);
}

uint64_t eUICC::eUICCVinylMAVValve::SetCardMode(uint64_t a1, int a2, char a3)
{
  __src[36] = *MEMORY[0x29EDCA608];
  v6 = (a1 + 8);
  (*(*a1 + 8))(__src);
  memcpy(v6, __src, 0x11BuLL);
  if (a3)
  {
    goto LABEL_2;
  }

  RadioVendor = TelephonyRadiosGetRadioVendor();
  if (*v6 != (RadioVendor - 5) < 0xFFFFFFFD)
  {
    gBBULogMaskGet(RadioVendor, v12);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "outData.Valid()");
    return 18;
  }

  if (*(a1 + 31) != a2)
  {
LABEL_2:
    v7 = *(a1 + 292);
    __src[0] = *(a1 + 296);
    LOBYTE(__src[1]) = v7;
    BYTE1(__src[1]) = a2;
    WORD1(__src[1]) = 1;
    HIDWORD(__src[1]) = 10000;
    v8 = eUICC::SwitchMode::Perform();
    v10 = v8;
    if (!v8 && (v9 & 0xFF00000000) == 0x100000000 && a2 == BYTE5(v9))
    {
      return 0;
    }

    gBBULogMaskGet(v8, v9);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "SwitchCardMode: Failed err %d status %hhu mode %d sw1 0x%x sw2 0x%x\n", v10);
    return 18;
  }

  gBBULogMaskGet(RadioVendor, v12);
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "SwitchCardMode: Baseband already in mode %hhu\n", a2);
  return 0;
}

uint64_t eUICC::eUICCVinylMAVValve::ResetCard(eUICC::eUICCVinylMAVValve *this, uint64_t a2)
{
  gBBULogMaskGet(this, a2);
  _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "eUICCVinylMAVValve::ResetCard not supported\n");
  return 9;
}

uint64_t eUICC::eUICCVinylMAVValve::DeleteProfile(eUICC::eUICCVinylMAVValve *this, uint64_t a2)
{
  if (*(this + 37))
  {
    v2 = *(this + 73);
    v8 = *(this + 37);
    v9 = v2;
    v10 = a2;
    v11 = 0;
    v12 = 60000;
    result = eUICC::DeleteProfile::Perform();
    v5 = result;
    v6 = v4;
    v7 = v4;
    if (result || (result = 0, v4 != 1))
    {
      gBBULogMaskGet(result, v4);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "DeleteProfile failed, error %d status %hhu sw1 0x%x sw2 0x%x\n", v5, v7, BYTE1(v6), BYTE2(v6));
      return 18;
    }
  }

  else
  {
    eUICC::eUICCVinylMAVValve::DeleteProfile(&v8, a2);
    return v8;
  }

  return result;
}

uint64_t eUICC::eUICCVinylMAVValve::StoreData()
{
  MEMORY[0x2A1C7C4A8]();
  v1 = v0;
  v3 = v2;
  v14 = *MEMORY[0x29EDCA608];
  v4 = eUICC::StoreData::Perform();
  if (v9 || v10 != 1)
  {
    gBBULogMaskGet(v4, v5);
    v7 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp.Valid()", "", "", 224);
    gBBULogMaskGet(v7, v8);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to StoreData status %hhu SW1 0x%x SW2 0x%x\n", v10, v11, HIBYTE(v11));
    result = 18;
  }

  else
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v3, v13, &v13[v12], v12);
    result = 0;
  }

  *v1 = bswap32(v11) >> 16;
  return result;
}

unint64_t eUICC::eUICCVinylMAVValve::LETOEnableEUICC(eUICC::eUICCVinylMAVValve *this, uint64_t a2)
{
  v9[0] = *(this + 37);
  v9[1] = 0x271000003201;
  result = eUICC::LETOMuxSwitch::Perform(v9, a2);
  v4 = v3;
  v5 = HIDWORD(result);
  if (result)
  {
    goto LABEL_6;
  }

  v6 = BYTE4(result) == 0;
  if ((v3 & 0xFF000000000000) != 0x5000000000000)
  {
    v6 = 0;
  }

  if (BYTE4(result) != 2 && !v6)
  {
LABEL_6:
    gBBULogMaskGet(result, v3);
    v7 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp.Valid() &&(( rsp.hwSetRsp == LETOMuxSwitch::MgrSetSIMHWSetResultType::kSuccess && rsp.contents.resultPhase == LETOMuxSwitch::ResultPhase::kTargetHWActivationCompleted) || rsp.hwSetRsp == LETOMuxSwitch::MgrSetSIMHWSetResultType::kErrorAlreadySet)", "", "", 240);
    gBBULogMaskGet(v7, v8);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to LETOEnableEUICC hwSetRsp %hhu resultAvailable %d srcSimHwSet %hhu targetSimHwSet %hhu resultPhase %hhu\n", v5, BYTE3(v4), BYTE4(v4), BYTE5(v4), BYTE6(v4));
    return 18;
  }

  return result;
}

uint64_t eUICC::eUICCVinylMAVValve::InitPerso(uint64_t a1, uint64_t a2, void **a3)
{
  v24 = *MEMORY[0x29EDCA608];
  *&__dst[6] = 0;
  *__dst = 0;
  *&__dst[14] = 30000;
  v4 = *(a1 + 296);
  v5 = *(a1 + 292);
  v6 = *a2;
  v8 = *(a2 + 8) - v6;
  if (v8 >= 0xC)
  {
    v9 = 12;
  }

  else
  {
    v9 = v8;
  }

  memcpy(__dst, v6, v9);
  v17 = v4;
  v18 = v5;
  v19 = 0;
  v20 = 0;
  v21 = v9;
  v22 = *__dst;
  v23 = *&__dst[16];
  v10 = eUICC::InitPersoSession::Perform();
  if (*__dst)
  {
    if (!**__dst && *(*__dst + 8) == 1 && *(*__dst + 11))
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, (*__dst + 13), (*__dst + 13 + *(*__dst + 11)), *(*__dst + 11));
      v12 = 0;
    }

    else
    {
      gBBULogMaskGet(v10, v11);
      v13 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp->Valid() && rsp->contents.rsp_len", "", "", 341);
      gBBULogMaskGet(v13, v14);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to InitPerso status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", *(*__dst + 8), *(*__dst + 9), *(*__dst + 10), *(*__dst + 11));
      v12 = 18;
    }
  }

  else
  {
    gBBULogMaskGet(v10, v11);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp", "", "", 340);
    v12 = 11;
  }

  if (*&__dst[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&__dst[8]);
  }

  return v12;
}

uint64_t eUICC::eUICCVinylMAVValve::AuthPerso(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = operator new(0x818uLL);
  bzero(v6 + 2, 0x810uLL);
  bzero(v6 + 3, 0x802uLL);
  v6[516] = 30000;
  *v6 = *(a1 + 296);
  *(v6 + 8) = *(a1 + 292);
  v7 = *a2;
  if (*(a2 + 8) - *a2 >= 0x800uLL)
  {
    v8 = 2048;
  }

  else
  {
    v8 = *(a2 + 8) - *a2;
  }

  memcpy(v6 + 14, v7, v8);
  *(v6 + 6) = v8;
  v9 = eUICC::AuthPersoSession::Perform();
  if (v15)
  {
    if (!*v15 && *(v15 + 8) == 1 && *(v15 + 11))
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, (v15 + 13), (v15 + 13 + *(v15 + 11)), *(v15 + 11));
      v11 = 0;
    }

    else
    {
      gBBULogMaskGet(v9, v10);
      v12 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp->Valid() && rsp->contents.rsp_len", "", "", 356);
      gBBULogMaskGet(v12, v13);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to AuthenticatePersoDevice status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", *(v15 + 8), *(v15 + 9), *(v15 + 10), *(v15 + 11));
      v11 = 18;
    }
  }

  else
  {
    gBBULogMaskGet(v9, v10);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp", "", "", 355);
    v11 = 11;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  operator delete(v6);
  return v11;
}

uint64_t eUICC::eUICCVinylMAVValve::FinalizePerso(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  memset(__dst, 0, 266);
  *(&__dst[16] + 2) = 30000;
  v3 = *(a1 + 296);
  v4 = *(a1 + 292);
  v5 = *a2;
  v7 = *(a2 + 8) - v5;
  if (v7 >= 0x100)
  {
    v8 = 256;
  }

  else
  {
    v8 = v7;
  }

  memcpy(__dst, v5, v8);
  v9 = *(a1 + 291);
  v17 = v3;
  v18 = v4;
  v19 = 0;
  v20 = v9;
  v21 = 0;
  v22 = v8;
  memcpy(v23, __dst, sizeof(v23));
  v10 = eUICC::FinalizePersoSession::Perform();
  if (*&__dst[0])
  {
    if (**&__dst[0] || *(*&__dst[0] + 8) != 1)
    {
      gBBULogMaskGet(v10, v11);
      v13 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp->Valid()", "", "", 370);
      gBBULogMaskGet(v13, v14);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to FinalizePersoDevice status %hhu SW1 0x%x SW2 0x%x\n", *(*&__dst[0] + 8), *(*&__dst[0] + 9), *(*&__dst[0] + 10));
      v12 = 18;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    gBBULogMaskGet(v10, v11);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp", "", "", 369);
    v12 = 11;
  }

  if (*(&__dst[0] + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__dst[0] + 1));
  }

  return v12;
}

uint64_t eUICC::eUICCVinylMAVValve::ValidatePerso(uint64_t a1, uint64_t a2, void **a3)
{
  v34 = *MEMORY[0x29EDCA608];
  v21 = 0u;
  memset(v22, 0, 24);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  __dst = 0u;
  *&v22[24] = 30000;
  v4 = *(a1 + 296);
  v5 = *(a1 + 292);
  v6 = *a2;
  v8 = *(a2 + 8) - v6;
  if (v8 >= 0x78)
  {
    v9 = 120;
  }

  else
  {
    v9 = v8;
  }

  memcpy(&__dst, v6, v9);
  v31 = v20;
  v32 = v21;
  *v33 = *v22;
  *&v33[12] = *&v22[12];
  v27 = __dst;
  v28 = v17;
  v29 = v18;
  v23 = v4;
  v24 = v5;
  v25 = 0;
  v26 = v9;
  v30 = v19;
  v10 = eUICC::VinylValidatePerso::Perform(&v23, &__dst);
  if (__dst)
  {
    if (!*__dst && *(__dst + 8) == 1 && *(__dst + 11))
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a3, (__dst + 13), (__dst + 13 + *(__dst + 11)), *(__dst + 11));
      v12 = 0;
    }

    else
    {
      gBBULogMaskGet(v10, v11);
      v13 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp->Valid() && rsp->contents.rsp_len", "", "", 383);
      gBBULogMaskGet(v13, v14);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to AuthenticatePersoDevice status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", *(__dst + 8), *(__dst + 9), *(__dst + 10), *(__dst + 11));
      v12 = 18;
    }
  }

  else
  {
    gBBULogMaskGet(v10, v11);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp", "", "", 382);
    v12 = 11;
  }

  if (*(&__dst + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&__dst + 1));
  }

  return v12;
}

uint64_t eUICC::eUICCVinylMAVValve::InstallPairingMSM()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v25 = *MEMORY[0x29EDCA608];
  v16 = 0;
  v15 = 0;
  v1 = *(v0 + 292);
  v3 = *v2;
  v4 = v2[1] - *v2;
  v12 = *(v0 + 296);
  v13 = v1;
  v14 = 0;
  v17 = v3;
  v18 = v4;
  v19 = 10000;
  v5 = eUICC::VinylManagePairing::Perform(&v12, &v20, v2);
  v6 = v20;
  v7 = v21;
  gBBULogMaskGet(v5, v8);
  if (v6 || v7 != 1)
  {
    v10 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp.Valid()", "", "", 395);
    gBBULogMaskGet(v10, v11);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Failed to InstallPairingMSM status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", v21, v22, v23, v24);
    return 18;
  }

  else
  {
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "InstallPairingMSM returning success\n");
    return 0;
  }
}

uint64_t eUICC::eUICCVinylMAVValve::ManagePairingGetNonce()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v22 = *MEMORY[0x29EDCA608];
  v3 = *(v0 + 292);
  v11 = *(v0 + 296);
  v12 = v3;
  v13 = 1;
  *v15 = 0;
  v14 = 0;
  *&v15[3] = 0;
  *&v15[7] = 10000;
  v4 = eUICC::VinylManagePairing::Perform(&v11, &v16, v1);
  if (!v16 && v17 == 1 && v20)
  {
    v9 = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v2, v21, &v21[v20], v20);
    gBBULogMaskGet(v9, v10);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "ManagePairingGetNonce returning success\n");
    return 0;
  }

  else
  {
    gBBULogMaskGet(v4, v5);
    v6 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp.Valid() && rsp.contents.rsp_len", "", "", 406);
    gBBULogMaskGet(v6, v7);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "ManagePairingGetNonce Failed status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", v17, v18, v19, v20);
    return 18;
  }
}

uint64_t eUICC::eUICCVinylMAVValve::ManagePairingAuthenticate()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v25 = *MEMORY[0x29EDCA608];
  v16 = 0;
  v15 = 0;
  v1 = *(v0 + 292);
  v3 = *v2;
  v4 = v2[1] - *v2;
  v12 = *(v0 + 296);
  v13 = v1;
  v14 = 2;
  v17 = v3;
  v18 = v4;
  v19 = 10000;
  v5 = eUICC::VinylManagePairing::Perform(&v12, &v20, v2);
  v6 = v20;
  v7 = v21;
  gBBULogMaskGet(v5, v8);
  if (v6 || v7 != 1)
  {
    v10 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "Condition <<%s>> failed %s %s/%d\n", "rsp.Valid()", "", "", 418);
    gBBULogMaskGet(v10, v11);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "ManagePairingAuthenticate Failed status %hhu SW1 0x%x SW2 0x%x rsp_len %u\n", v21, v22, v23, v24);
    return 18;
  }

  else
  {
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylMAVValve", "", "ManagePairingAuthenticate returning success\n");
    return 0;
  }
}

void eUICC::eUICCVinylMAVValve::~eUICCVinylMAVValve(eUICC::eUICCVinylMAVValve *this)
{
  VinylCommunication::~VinylCommunication(this);

  operator delete(v1);
}

void **std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(void **result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result >= a4)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (v15 - v9 >= a4)
    {
      v18 = a3 - __src;
      if (v18)
      {
        result = memmove(*result, __src, v18);
      }

      v14 = &v9[v18];
    }

    else
    {
      v17 = &__src[v16];
      if (v15 != v9)
      {
        result = memmove(*result, __src, v16);
        v15 = v7[1];
      }

      if (a3 != v17)
      {
        result = memmove(v15, v17, a3 - v17);
      }

      v14 = &v15[a3 - v17];
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    v12 = v7[1];
    v13 = a3 - __src;
    if (v13)
    {
      result = memmove(v7[1], __src, v13);
    }

    v14 = (v12 + v13);
  }

  v7[1] = v14;
  return result;
}

char *std::vector<unsigned char>::__vallocate[abi:ne200100](void *a1, size_t __sz)
{
  if ((__sz & 0x8000000000000000) != 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  result = operator new(__sz);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[__sz];
  return result;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE8E6D8, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t OUTLINED_FUNCTION_0(uint64_t a1, uint64_t a2, const char *a3, const char *a4, const char *a5)
{

  return _BBULog(1, 6, a3, a4, a5);
}

uint64_t VinylController::create(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  gBBULogMaskGet(a1, a2);
  v4 = _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "entering VinylController::create\n");
  v6 = VinylController::instance;
  if (!v2 || VinylController::instance)
  {
    if (VinylController::instance)
    {
      goto LABEL_7;
    }

    v6 = operator new(0x88uLL);
    VinylController::VinylController(v6);
  }

  else
  {
    v6 = operator new(0x88uLL);
    v4 = VinylController::VinylController(v6, 0, a1);
  }

  VinylController::instance = v6;
LABEL_7:
  if (!*(v6 + 2))
  {
    v4 = VinylControllerObjDestroy(v6);
    VinylController::instance = 0;
  }

  gBBULogMaskGet(v4, v5);
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "returning VinylController::create\n");
  return VinylController::instance;
}

uint64_t VinylControllerObjDestroy(uint64_t result)
{
  if (result)
  {
    v1 = (*(*result + 8))(result);
    VinylController::instance = 0;
    gBBULogMaskGet(v1, v2);

    return _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Cleaning up VinylController object \n");
  }

  return result;
}

uint64_t VinylController::create(uint64_t *a1, uint64_t a2)
{
  gBBULogMaskGet(a1, a2);
  v3 = _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "entering VinylController::create\n");
  v5 = VinylController::instance;
  if (!VinylController::instance)
  {
    v6 = operator new(0x88uLL);
    v5 = v6;
    v7 = *a1;
    v8 = a1[1];
    v10[0] = v7;
    v10[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v3 = VinylController::VinylController(v6, v10);
    VinylController::instance = v5;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      v5 = VinylController::instance;
    }
  }

  if (!*(v5 + 16))
  {
    v3 = VinylControllerObjDestroy(v5);
    VinylController::instance = 0;
  }

  gBBULogMaskGet(v3, v4);
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "returning VinylController::create\n");
  return VinylController::instance;
}

void sub_29826CD14(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t VinylController::VinylController(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_2A1EB2888;
  *(a1 + 8) = 0;
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = VinylCommunication::create(&v7, a2);
  v5 = v8;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *(a1 + 120) = VinylSecureElement::create(v5);
  *(a1 + 128) = 0;
  *(a1 + 24) = *a2 != 0;
  return a1;
}

void sub_29826CDDC(_Unwind_Exception *a1)
{
  v4 = *(v2 + 16);
  *(v2 + 16) = 0;
  if (v4)
  {
    VinylController::VinylController(v4);
  }

  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(v1);
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t VinylController::VinylController(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2A1EB2888;
  *(a1 + 8) = 0;
  v5 = VinylCommunication::create(a2, 0);
  *(a1 + 16) = v5;
  *(a1 + 120) = VinylSecureElement::create(v5);
  *(a1 + 128) = 0;
  if (a3)
  {
    v6 = *(a3 + 16);
    *(a1 + 32) = *a3;
    *(a1 + 48) = v6;
    v7 = *(a3 + 32);
    v8 = *(a3 + 48);
    v9 = *(a3 + 64);
    *(a1 + 112) = *(a3 + 80);
    *(a1 + 80) = v8;
    *(a1 + 96) = v9;
    *(a1 + 64) = v7;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    *(a1 + 112) = 0;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 32) = 0u;
  }

  *(a1 + 24) = v10;
  return a1;
}

void sub_29826CEFC(_Unwind_Exception *a1)
{
  v4 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v4)
  {
    VinylController::VinylController(v4);
  }

  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(v2);
  _Unwind_Resume(a1);
}

void VinylController::VinylController(VinylController *this)
{
  *this = &unk_2A1EB2888;
  *(this + 1) = 0;
  *(this + 2) = VinylCommunication::create(0, 0);
  *(this + 24) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
}

uint64_t get_info(__CFDictionary **a1, uint64_t a2)
{
  v41 = *MEMORY[0x29EDCA608];
  if (*a2 != TelephonyRadiosGetRadioVendor() - 5 < 0xFFFFFFFD)
  {
    return 1;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    get_info(&v39, v5);
    return LODWORD(v39.__r_.__value_.__l.__data_);
  }

  v6 = Mutable;
  stringifyDataBuffer(&v39, (a2 + 7), 16);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v37, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
  }

  else
  {
    v37 = v39;
  }

  v8 = copyAsCFString(&v37);
  v38 = v8;
  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  CFDictionarySetValue(v6, @"kVinylEID", v8);
  *v40 = 0;
  *&v40[8] = 0;
  *&v40[15] = 0;
  if (*(a2 + 4))
  {
    qmemcpy(v40, "Unpersonalized", 14);
    v9 = 14;
  }

  else
  {
    qmemcpy(v40, "Personalized", 12);
    v9 = 12;
  }

  *v34 = *v40;
  *&v34[15] = *&v40[15];
  v35 = v9;
  v10 = copyAsCFString(v34);
  v36 = v10;
  if (v35 < 0)
  {
    operator delete(*v34);
  }

  CFDictionarySetValue(v6, @"kVinylPersoState", v10);
  v11 = operator new(0x28uLL);
  v12 = *(a2 + 40);
  *v11 = *(a2 + 24);
  v11[1] = v12;
  *(v11 + 32) = 0;
  std::string::__init_copy_ctor_external(&v32, v11, 0x20uLL);
  v13 = copyAsCFString(&v32);
  v33 = v13;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  CFDictionarySetValue(v6, @"kVinylFirmware", v13);
  v14 = *(a2 + 281);
  v15 = *(a2 + 278);
  std::to_string(&v30, v15);
  v16 = copyAsCFString(&v30);
  v31 = v16;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  CFDictionarySetValue(v6, @"kVinylSIMSKUID", v16);
  RadioVendor = TelephonyRadiosGetRadioVendor();
  v18 = "ESIM";
  if ((RadioVendor - 2) < 2)
  {
    if (!v14)
    {
      v18 = "PSIM";
    }

    goto LABEL_24;
  }

  if (RadioVendor != 1)
  {
    if (RadioVendor != 4)
    {
      goto LABEL_28;
    }

LABEL_24:
    std::string::basic_string[abi:ne200100]<0>(&v29, v18);
    goto LABEL_29;
  }

  if (v15 < 0xB)
  {
    std::string::basic_string[abi:ne200100]<0>(&v29, eUICC::MAVHWSIMSKUStr[v15]);
    goto LABEL_29;
  }

  gBBULogMaskGet(RadioVendor, "ESIM");
  v19 = _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Condition <<%s>> failed %s %s/%d\n", "simSKUID < ARR_SIZE(MAVHWSIMSKUStr)", "", "", 142);
  gBBULogMaskGet(v19, v20);
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Error: invalid simSKUID = %u\n", v15);
LABEL_28:
  memset(&v29, 0, sizeof(v29));
LABEL_29:
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
  }

  else
  {
    v27 = v29;
  }

  v21 = copyAsCFString(&v27);
  v28 = v21;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  CFDictionarySetValue(v6, @"kVinylSIMSKU", v21);
  capabilities::radio::radioType(&__p, v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v24 = __p;
  }

  v23 = copyAsCFString(&v24);
  v25 = v23;
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  CFDictionarySetValue(v6, @"kVinylRadioType", v23);
  *a1 = v6;
  if (v23)
  {
    CFRelease(v23);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v21)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (v21)
  {
LABEL_45:
    CFRelease(v21);
  }

LABEL_46:
  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v16)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  operator delete(v29.__r_.__value_.__l.__data_);
  if (v16)
  {
LABEL_50:
    CFRelease(v16);
  }

LABEL_51:
  if (v13)
  {
    CFRelease(v13);
  }

  operator delete(v11);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_29826D464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, const void *a54)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a34);
  if (a40 < 0)
  {
    operator delete(a35);
  }

  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a47);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a54);
  operator delete(v54);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v55 - 184));
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef((v55 - 144));
  if (*(v55 - 113) < 0)
  {
    operator delete(*(v55 - 136));
  }

  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t VinylController::performNonUpdateOperation(uint64_t a1, uint64_t a2, eUICC::Pairing *a3, const __CFDictionary *a4)
{
  v6 = a2;
  v171 = *MEMORY[0x29EDCA608];
  v168 = 0;
  memset(__dst, 0, 283);
  pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v8 = xmmword_2A13A8CA0;
  if (!xmmword_2A13A8CA0)
  {
    BBUCapabilities::create_default_global(__p);
    v9 = *&__p[0].__r_.__value_.__l.__data_;
    *&__p[0].__r_.__value_.__l.__data_ = 0uLL;
    v10 = *(&xmmword_2A13A8CA0 + 1);
    xmmword_2A13A8CA0 = v9;
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      if (__p[0].__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p[0].__r_.__value_.__l.__size_);
      }
    }

    v8 = xmmword_2A13A8CA0;
  }

  v11 = *(&xmmword_2A13A8CA0 + 1);
  if (*(&xmmword_2A13A8CA0 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A13A8CA0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v12 = BBUCapabilities::supportsVinylRestore(v8);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if ((v12 & 1) == 0)
  {
    v43 = 0;
    goto LABEL_171;
  }

  if (a4)
  {
    __p[0].__r_.__value_.__r.__words[0] = a4;
    ctu::cf::CFSharedRef<__CFDictionary const>::reset((a1 + 128), &__p[0].__r_.__value_.__l.__data_);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&cf, (a1 + 128));
  Options::Options(&v148, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&v146, (a1 + 128));
  BBULogParseDebugArgs(&v146);
  v14 = v146;
  if (v146)
  {
    CFRelease(v146);
  }

  gBBULogMaskGet(v14, v13);
  Options::ToString(__p, &v148);
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0].__r_.__value_.__r.__words[0];
  }

  v16 = _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "VinylRestore Options:\n%s\n", v15);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (v150)
  {
    if (v6 != 1)
    {
      gBBULogMaskGet(v16, v17);
      updated = VinylController::performNonUpdateOperation();
      if (updated)
      {
        updated = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 465, "operation == kVinylOperationNonUpdate");
      }

      gBBULogMaskGet(updated, v116);
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Perso Only can only be performed with kVinylOperationNonUpdate\n");
      v22 = 1;
      goto LABEL_150;
    }

    v6 = 5;
  }

  v18 = VinylController::operationRequested(v16, v6, &v148);
  if (v18)
  {
    TransportNoEvents = VinylController::createTransportNoEvents(a1, 0);
    v22 = TransportNoEvents;
    if (TransportNoEvents)
    {
      gBBULogMaskGet(TransportNoEvents, v21);
      v111 = VinylController::performNonUpdateOperation();
      if (v111)
      {
        v111 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 477, "kBBUReturnSuccess == ret");
      }

      if ((*gBBULogMaskGet(v111, v112) & 1) != 0 && gBBULogVerbosity >= 1)
      {
        _BBULog(0, 1, "VinylController", "", "Fail to create transport: %d\n", v22);
      }

      goto LABEL_150;
    }

    v23 = v148;
    (*(**(a1 + 16) + 48))(&v144);
    eUICC::VinylFactory::GetValve((a1 + 32), v23, 0, &v144, __p);
    v25 = v168;
    v168 = __p[0].__r_.__value_.__r.__words[0];
    __p[0].__r_.__value_.__r.__words[0] = 0;
    if (v25)
    {
      (*(*v25 + 120))(v25);
      v26 = __p[0].__r_.__value_.__r.__words[0];
      __p[0].__r_.__value_.__r.__words[0] = 0;
      if (v26)
      {
        (*(*v26 + 120))(v26);
      }
    }

    v27 = v145;
    if (v145)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v145);
    }

    if (!v168)
    {
      gBBULogMaskGet(v27, v24);
      v113 = VinylController::performNonUpdateOperation();
      if (v113)
      {
        v113 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 482, "vinylValve");
      }

      v22 = 18;
      if ((*gBBULogMaskGet(v113, v114) & 1) != 0 && gBBULogVerbosity >= 1)
      {
        _BBULog(0, 1, "VinylController", "", "Fail to get valve\n");
        v22 = 18;
      }

      goto LABEL_150;
    }

    pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
    v28 = xmmword_2A13A8CA0;
    if (!xmmword_2A13A8CA0)
    {
      BBUCapabilities::create_default_global(__p);
      v29 = *&__p[0].__r_.__value_.__l.__data_;
      *&__p[0].__r_.__value_.__l.__data_ = 0uLL;
      v30 = *(&xmmword_2A13A8CA0 + 1);
      xmmword_2A13A8CA0 = v29;
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        if (__p[0].__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__p[0].__r_.__value_.__l.__size_);
        }
      }

      v28 = xmmword_2A13A8CA0;
    }

    v31 = *(&xmmword_2A13A8CA0 + 1);
    if (*(&xmmword_2A13A8CA0 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A13A8CA0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
    v33 = BBUCapabilities::supportsEuiccViaEOS(v28);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    if (!v33)
    {
      v37 = 0;
      goto LABEL_51;
    }

    v34 = *(a1 + 120);
    if (v34)
    {
      v35 = VinylSecureElement::PowerUpSE(v34);
      v37 = v35;
      if (!v35)
      {
        gBBULogMaskGet(0, v36);
        v119 = VinylController::performNonUpdateOperation();
        if (v119)
        {
          v119 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 493, "se_handle");
        }

        gBBULogMaskGet(v119, v120);
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Failed to power SE\n");
        if (eUICC::eUICCVinylValve::hardwareHasESIM)
        {
          v22 = 107;
        }

        else
        {
          v22 = 0;
        }

        goto LABEL_150;
      }

      gBBULogMaskGet(v35, v36);
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Power up SE successful.\n");
      (*(*v168 + 8))(__p);
      memcpy(__dst, __p, 0x11BuLL);
      RadioVendor = TelephonyRadiosGetRadioVendor();
      if (__dst[0] != (RadioVendor - 5) < 0xFFFFFFFD)
      {
        gBBULogMaskGet(RadioVendor, v39);
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "No valid GetData found and trying to reset Vinyl.\n");
        v40 = (*(*v168 + 16))(v168, 0, 1);
        if (v40)
        {
          gBBULogMaskGet(v40, v41);
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Reset card failed\n");
        }

        v42 = v168;
        *(v168 + 8) = 0u;
        v42 += 8;
        *(v42 + 16) = 0u;
        *(v42 + 32) = 0u;
        *(v42 + 48) = 0u;
        *(v42 + 64) = 0u;
        *(v42 + 80) = 0u;
        *(v42 + 96) = 0u;
        *(v42 + 112) = 0u;
        *(v42 + 128) = 0u;
        *(v42 + 144) = 0u;
        *(v42 + 160) = 0u;
        *(v42 + 176) = 0u;
        *(v42 + 192) = 0u;
        *(v42 + 208) = 0u;
        *(v42 + 224) = 0u;
        *(v42 + 240) = 0u;
        *(v42 + 256) = 0u;
        *(v42 + 267) = 0u;
        *v42 = TelephonyRadiosGetRadioVendor() - 2 < 3;
      }

LABEL_51:
      (*(*v168 + 8))(__p);
      memcpy(__dst, __p, 0x11BuLL);
      v44 = TelephonyRadiosGetRadioVendor();
      if (__dst[0] != (v44 - 5) < 0xFFFFFFFD)
      {
        if ((__dst[69] & 0x1000000) == 0)
        {
          gBBULogMaskGet(v44, v45);
          v51 = _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Condition <<%s>> failed %s %s/%d\n", "outData.contents.isAbsentOk", "", "", 515);
          gBBULogMaskGet(v51, v52);
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "GetData() output not valid and isAbsentOK = false. kBBUReturnGetEIDFailure will be reported as kVinylResultDataMissing!\n");
          v22 = 107;
          goto LABEL_148;
        }

        v47 = capabilities::euicc::supportsVinylSEPPairing(v44);
        if (v47)
        {
          if (v6 == 4)
          {
            gBBULogMaskGet(v47, v48);
            _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "In VINYL_OPERATION_GET_PAIRING_PARAMETERS_DUMMY\n");
            if (eUICC::Pairing::GetParametersDummy(a3, v74))
            {
              v22 = 11;
            }

            else
            {
              v22 = 0;
            }

LABEL_148:
            if (v37)
            {
              VinylSecureElement::PowerDownSE(*(a1 + 120), v37);
            }

            goto LABEL_150;
          }

          if (v6 == 8)
          {
            gBBULogMaskGet(v47, v48);
            _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "In VINYL_OPERATION_GET_PAIRING_IDENTIFIER\n");
            PairingIdentifier = eUICC::getPairingIdentifier(a3, v49);
            goto LABEL_66;
          }

          gBBULogMaskGet(v47, v48);
          v56 = "GetData not valid but isAbsentOK = true, eUICC not detected, skipping.\n";
        }

        else
        {
          gBBULogMaskGet(v47, v48);
          v54 = _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Condition <<%s>> failed %s %s/%d\n", "capabilities::euicc::supportsVinylSEPPairing()", "", "", 519);
          gBBULogMaskGet(v54, v55);
          v56 = "GetaData() output not valid and isAbsentOK = true. However, device doesn't support SEPPairing, no further non-update operation.\n";
        }

LABEL_145:
        v97 = 0xFFFFFFFFLL;
LABEL_146:
        _BBULog(0, v97, "VinylController", "", v56);
        goto LABEL_147;
      }

      if (BYTE1(__dst[10]) == 82)
      {
        if (LOBYTE(__dst[1]))
        {
          gBBULogMaskGet(v44, v45);
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "resetting refurb fw with perso supported in an attempt to clear perso\n");
          (*(*v168 + 16))(v168, 1, 1);
          (*(*v168 + 16))(v168, 0, 1);
          v46 = v168;
          *(v168 + 8) = 0u;
          v46 += 8;
          *(v46 + 16) = 0u;
          *(v46 + 32) = 0u;
          *(v46 + 48) = 0u;
          *(v46 + 64) = 0u;
          *(v46 + 80) = 0u;
          *(v46 + 96) = 0u;
          *(v46 + 112) = 0u;
          *(v46 + 128) = 0u;
          *(v46 + 144) = 0u;
          *(v46 + 160) = 0u;
          *(v46 + 176) = 0u;
          *(v46 + 192) = 0u;
          *(v46 + 208) = 0u;
          *(v46 + 224) = 0u;
          *(v46 + 240) = 0u;
          *(v46 + 256) = 0u;
          *(v46 + 267) = 0u;
          *v46 = TelephonyRadiosGetRadioVendor() - 2 < 3;
          (*(*v168 + 8))(__p);
          memcpy(__dst, __p, 0x11BuLL);
          v44 = TelephonyRadiosGetRadioVendor();
          if (__dst[0] != (v44 - 5) < 0xFFFFFFFD)
          {
            gBBULogMaskGet(v44, v45);
            v57 = _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Condition <<%s>> failed %s %s/%d\n", "outData.Valid()", "", "", 549);
            v22 = 18;
            if ((*gBBULogMaskGet(v57, v58) & 1) != 0 && gBBULogVerbosity >= 1)
            {
              _BBULog(0, 1, "VinylController", "", "Fail to get data after resetting refurb\n");
              v22 = 18;
            }

            goto LABEL_148;
          }
        }
      }

      if (v6 > 3)
      {
        if (v6 > 5)
        {
          if (v6 == 6)
          {
            gBBULogMaskGet(v44, v45);
            v90 = _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "In VINYL_OPERATION_GET_INFO\n");
            if (a3)
            {
              info = get_info(a3, __dst);
              v93 = info;
              if (info)
              {
                gBBULogMaskGet(info, v45);
                v94 = VinylController::performNonUpdateOperation();
                if (v94)
                {
                  v94 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 675, "kBBUReturnSuccess == ret");
                }

                v22 = 1;
                if ((*gBBULogMaskGet(v94, v95) & 1) != 0 && gBBULogVerbosity >= 1)
                {
                  v22 = 1;
                  _BBULog(0, 1, "VinylController", "", "Failed to get info: %d\n", v93);
                }

                goto LABEL_148;
              }

              goto LABEL_147;
            }

            gBBULogMaskGet(v90, v91);
            v131 = VinylController::performNonUpdateOperation();
            if (v131)
            {
              v131 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 672, "rsp_data");
            }

            v22 = 0;
            if ((*gBBULogMaskGet(v131, v132) & 1) == 0 || gBBULogVerbosity <= 0)
            {
              goto LABEL_148;
            }

            v56 = "Client rsp data buffer is not valid\n";
            goto LABEL_240;
          }

          if (v6 != 7)
          {
            if (v6 != 8)
            {
              goto LABEL_144;
            }

            goto LABEL_95;
          }

          goto LABEL_123;
        }

        if (v6 != 4)
        {
          gBBULogMaskGet(v44, v45);
          v60 = _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "In VINYL_OPERATION_PERFORM_SECURE_PERSO\n");
          if (LOBYTE(__dst[1]))
          {
            std::to_string(&v141, LOBYTE(__dst[60]));
            v62 = std::string::append(&v141, ".", 1uLL);
            v63 = *&v62->__r_.__value_.__l.__data_;
            __p[0].__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
            *&__p[0].__r_.__value_.__l.__data_ = v63;
            v62->__r_.__value_.__l.__size_ = 0;
            v62->__r_.__value_.__r.__words[2] = 0;
            v62->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v140, BYTE1(__dst[60]));
            if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v64 = &v140;
            }

            else
            {
              v64 = v140.__r_.__value_.__r.__words[0];
            }

            if ((v140.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v140.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v140.__r_.__value_.__l.__size_;
            }

            v66 = std::string::append(__p, v64, size);
            v67 = *&v66->__r_.__value_.__l.__data_;
            v143 = v66->__r_.__value_.__r.__words[2];
            *v142 = v67;
            v66->__r_.__value_.__l.__size_ = 0;
            v66->__r_.__value_.__r.__words[2] = 0;
            v66->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v140.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v141.__r_.__value_.__l.__data_);
            }

            ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&v139, (a1 + 128));
            Options::Options(__p, &v139);
            v22 = eUICC::Perso::Perform(__p, v142, &v168);
            Options::~Options(&__p[0].__r_.__value_.__l.__data_);
            v68 = ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&v139);
            if (v22)
            {
              gBBULogMaskGet(v68, v45);
              v133 = VinylController::performNonUpdateOperation();
              if (v133)
              {
                v133 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 664, "kBBUReturnSuccess == ret");
              }

              gBBULogMaskGet(v133, v134);
              _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Failed to complete secure perso: %d\n", v22);
            }

            if (SHIBYTE(v143) < 0)
            {
              operator delete(v142[0]);
            }

            goto LABEL_148;
          }

          gBBULogMaskGet(v60, v61);
          v129 = VinylController::performNonUpdateOperation();
          if (v129)
          {
            v129 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 660, "outData.contents.perso != 0");
          }

          gBBULogMaskGet(v129, v130);
          v56 = "Card already perso'ed\n";
          goto LABEL_145;
        }

        __p[0].__r_.__value_.__s.__data_[0] = 0;
        gBBULogMaskGet(v44, v45);
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "In VINYL_OPERATION_GET_PAIRING_PARAMS\n");
        v96 = eUICC::checkEOSDev(__p, &v168);
        v22 = v96;
        if (v96)
        {
          goto LABEL_148;
        }

        if (__p[0].__r_.__value_.__s.__data_[0] == 1)
        {
          gBBULogMaskGet(v96, v45);
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "EOS - dev product type detected, returning not supported\n");
          v22 = 9;
          goto LABEL_148;
        }

        PairingIdentifier = VinylController::getPairingParameters(0, a4, a3, &v168);
LABEL_66:
        v22 = PairingIdentifier;
        goto LABEL_148;
      }

      if (v6 > 1)
      {
        v59 = 1;
        if (v6 != 2)
        {
          goto LABEL_113;
        }

        v53 = 1;
      }

      else
      {
        if (!v6)
        {
LABEL_95:
          gBBULogMaskGet(v44, v45);
          v69 = _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "In VINYL_OPERATION_GET_EID\n");
          if (a3)
          {
            EID = eUICC::getEID();
            v22 = EID;
            if (EID)
            {
              gBBULogMaskGet(EID, v45);
              v72 = VinylController::performNonUpdateOperation();
              if (v72)
              {
                v72 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 561, "kBBUReturnSuccess == ret");
              }

              if ((*gBBULogMaskGet(v72, v73) & 1) != 0 && gBBULogVerbosity >= 1)
              {
                _BBULog(0, 1, "VinylController", "", "Failed to retrieve EID: %d\n", v22);
              }
            }

            goto LABEL_148;
          }

          gBBULogMaskGet(v69, v70);
          v121 = VinylController::performNonUpdateOperation();
          if (v121)
          {
            v121 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 558, "rsp_data");
          }

          v22 = 0;
          if ((*gBBULogMaskGet(v121, v122) & 1) == 0 || gBBULogVerbosity <= 0)
          {
            goto LABEL_148;
          }

          v56 = "Client rsp data is not valid\n";
LABEL_240:
          v97 = 1;
          goto LABEL_146;
        }

        if (v6 != 1)
        {
LABEL_144:
          gBBULogMaskGet(v44, v45);
          v56 = "Invalid user operation\n";
          goto LABEL_145;
        }

        gBBULogMaskGet(v44, v45);
        v44 = _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "In VINYL_OPERATION_NON_UPDATE\n");
        v53 = 0;
      }

      if (v149)
      {
        gBBULogMaskGet(v44, v45);
        v75 = _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "In VINYL_OPERATION_REFURB\n");
        if (v149 - 3 <= 1)
        {
          v75 = VinylController::pairingSupported(v75, v76, &v168);
          if (v75)
          {
            v75 = VinylController::verifyPairing(a1, &v168, 1);
            v22 = v75;
            if (v75)
            {
              gBBULogMaskGet(v75, v77);
              v137 = VinylController::performNonUpdateOperation();
              if (v137)
              {
                v137 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 579, "kBBUReturnSuccess == ret");
              }

              if ((*gBBULogMaskGet(v137, v138) & 1) == 0 || gBBULogVerbosity < 1)
              {
                goto LABEL_148;
              }

              goto LABEL_253;
            }
          }
        }

        v44 = VinylController::Refurb(v75, v149, &v168);
        v22 = v44;
        if (v44)
        {
          gBBULogMaskGet(v44, v45);
          v125 = VinylController::performNonUpdateOperation();
          if (v125)
          {
            v125 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 583, "kBBUReturnSuccess == ret");
          }

          if ((*gBBULogMaskGet(v125, v126) & 1) != 0 && gBBULogVerbosity >= 1)
          {
            _BBULog(0, 1, "VinylController", "", "Failed to Refurb: %d\n", v22);
          }

          goto LABEL_148;
        }
      }

      v59 = 0;
      if (v53)
      {
        goto LABEL_147;
      }

LABEL_113:
      v78 = v163;
      if ((v163 & 0x80u) != 0)
      {
        v78 = v162;
      }

      if (!v78)
      {
        v79 = v158;
        if ((v158 & 0x80u) != 0)
        {
          v79 = v157;
        }

        if (!v79)
        {
          goto LABEL_122;
        }
      }

      gBBULogMaskGet(v44, v45);
      v80 = _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "In VINYL_OPERATION_BOOTSTRAP_PROVISIONING\n");
      if (!VinylController::pairingSupported(v80, v81, &v168) || (v82 = VinylController::verifyPairing(a1, &v168, 1), (v22 = v82) == 0))
      {
        v44 = VinylController::bootstrapProvisioning(a1, &v168);
        v22 = v44;
        if (v44)
        {
          gBBULogMaskGet(v44, v45);
          v123 = VinylController::performNonUpdateOperation();
          if (v123)
          {
            v123 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 602, "kBBUReturnSuccess == ret");
          }

          if ((*gBBULogMaskGet(v123, v124) & 1) != 0 && gBBULogVerbosity >= 1)
          {
            _BBULog(0, 1, "VinylController", "", "Failed to complete bootstrap provisioning: %d\n", v22);
          }

          goto LABEL_148;
        }

LABEL_122:
        if ((v59 & 1) == 0)
        {
LABEL_123:
          gBBULogMaskGet(v44, v45);
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "In VINYL_OPERATION_VERFIY_PAIRING_PARAMS\n");
          pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
          v84 = xmmword_2A13A8CA0;
          if (!xmmword_2A13A8CA0)
          {
            BBUCapabilities::create_default_global(__p);
            v85 = *&__p[0].__r_.__value_.__l.__data_;
            *&__p[0].__r_.__value_.__l.__data_ = 0uLL;
            v86 = *(&xmmword_2A13A8CA0 + 1);
            xmmword_2A13A8CA0 = v85;
            if (v86)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v86);
              if (__p[0].__r_.__value_.__l.__size_)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](__p[0].__r_.__value_.__l.__size_);
              }
            }

            v84 = xmmword_2A13A8CA0;
          }

          v87 = *(&xmmword_2A13A8CA0 + 1);
          if (*(&xmmword_2A13A8CA0 + 1))
          {
            atomic_fetch_add_explicit((*(&xmmword_2A13A8CA0 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
          v88 = BBUCapabilities::supportsEuiccViaEOS(v84);
          v89 = v88;
          if (v87)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v87);
          }

          if (v89)
          {
            gBBULogMaskGet(v88, v45);
            v56 = "Verify Pairing is skipped for EOS product\n";
            goto LABEL_145;
          }

          if (v151 == 1)
          {
            v105 = VinylController::managePairingInstallMSM(v88, &v168);
            v22 = v105;
            if (v105)
            {
              gBBULogMaskGet(v105, v45);
              v135 = VinylController::performNonUpdateOperation();
              if (v135)
              {
                v135 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 624, "kBBUReturnSuccess == ret");
              }

              if ((*gBBULogMaskGet(v135, v136) & 1) != 0 && gBBULogVerbosity >= 1)
              {
                _BBULog(0, 1, "VinylController", "", "Failed to install MSM: %d\n", v22);
              }

              goto LABEL_148;
            }
          }

          if ((v152 & 1) == 0 && v151 != 1)
          {
            goto LABEL_147;
          }

          v106 = VinylController::verifyPairing(a1, &v168, v153);
          v22 = v106;
          if (!v106)
          {
            goto LABEL_148;
          }

          gBBULogMaskGet(v106, v45);
          v107 = VinylController::performNonUpdateOperation();
          if (v107)
          {
            v107 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 633, "kBBUReturnSuccess == ret");
          }

          if ((*gBBULogMaskGet(v107, v108) & 1) == 0 || gBBULogVerbosity < 1)
          {
            goto LABEL_148;
          }

          goto LABEL_253;
        }

LABEL_147:
        v22 = 0;
        goto LABEL_148;
      }

      gBBULogMaskGet(v82, v83);
      v127 = VinylController::performNonUpdateOperation();
      if (v127)
      {
        v127 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 598, "kBBUReturnSuccess == ret");
      }

      if ((*gBBULogMaskGet(v127, v128) & 1) == 0 || gBBULogVerbosity < 1)
      {
        goto LABEL_148;
      }

LABEL_253:
      _BBULog(0, 1, "VinylController", "", "Failed to verify pairing: %d\n", v22);
      goto LABEL_148;
    }

    gBBULogMaskGet(0, v32);
    v117 = VinylController::performNonUpdateOperation();
    if (v117)
    {
      v117 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 488, "fSe");
    }

    v22 = 0;
    if ((*gBBULogMaskGet(v117, v118) & 1) == 0 || gBBULogVerbosity < 1)
    {
      goto LABEL_150;
    }

    _BBULog(0, 1, "VinylController", "", "Vinyl Secure Element object not created, cannot power up SE\n");
  }

  else
  {
    gBBULogMaskGet(v18, v19);
    v109 = VinylController::performNonUpdateOperation();
    if (v109)
    {
      v109 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 472, "operationRequested(operation, eUICCoptions)");
    }

    gBBULogMaskGet(v109, v110);
    _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "No operation requested in options\n");
  }

  v22 = 0;
LABEL_150:
  v98 = VinylController::freeTransport(a1, v45);
  if (v98)
  {
    v43 = v98;
  }

  else
  {
    v43 = v22;
  }

  if (v167 == 1)
  {
    gBBULogMaskGet(v98, v99);
    v100 = &BBUpdaterCommon::bbCoredumpPath;
    if (byte_2A18995F7 < 0)
    {
      v100 = BBUpdaterCommon::bbCoredumpPath;
    }

    _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Try to copy the BB coredump from %s\n", v100);
    v101 = BBUpdaterCommon::BBUIsDirectoryEmpty(&BBUpdaterCommon::bbCoredumpPath);
    if (v101)
    {
      gBBULogMaskGet(v101, v102);
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "But the BB coredump dir is empty.\n");
    }

    else
    {
      gBBULogMaskGet(v101, v102);
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "And found the BB coredump already collected, don't need to trigger collection again. Now return error = %d, previous ret = %d\n", 14, v43);
      v43 = 14;
    }
  }

  else if (v166 == 1)
  {
    gBBULogMaskGet(v98, v99);
    _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Force collecting BB coredump by return error = %d, previous ret = %d\n", 28, v43);
    v43 = 28;
  }

  if (v165 < 0)
  {
    operator delete(v164);
  }

  if (v163 < 0)
  {
    operator delete(v161);
  }

  if (v160 < 0)
  {
    operator delete(v159);
  }

  if (v158 < 0)
  {
    operator delete(v156);
  }

  if (v155 < 0)
  {
    operator delete(v154);
  }

LABEL_171:
  v103 = v168;
  v168 = 0;
  if (v103)
  {
    (*(*v103 + 120))(v103);
  }

  return v43;
}

void sub_29826EF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  Options::~Options(&a31);
  v54 = a53;
  a53 = 0;
  if (v54)
  {
    (*(*v54 + 120))(v54);
  }

  _Unwind_Resume(a1);
}

void ctu::cf::CFSharedRef<__CFDictionary const>::reset(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    CFRelease(v4);
  }
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t VinylController::operationRequested(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a3 + 4))
  {
    pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
    v5 = xmmword_2A13A8CA0;
    if (!xmmword_2A13A8CA0)
    {
      BBUCapabilities::create_default_global(&v19);
      v6 = v19;
      v19 = 0uLL;
      v7 = *(&xmmword_2A13A8CA0 + 1);
      xmmword_2A13A8CA0 = v6;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        if (*(&v19 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
        }
      }

      v5 = xmmword_2A13A8CA0;
    }

    v8 = *(&xmmword_2A13A8CA0 + 1);
    if (*(&xmmword_2A13A8CA0 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_2A13A8CA0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
    if (BBUCapabilities::supportsEuiccViaEOS(v5))
    {
      v9 = 1;
    }

    else
    {
      pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
      v10 = xmmword_2A13A8CA0;
      if (!xmmword_2A13A8CA0)
      {
        BBUCapabilities::create_default_global(&v19);
        v11 = v19;
        v19 = 0uLL;
        v12 = *(&xmmword_2A13A8CA0 + 1);
        xmmword_2A13A8CA0 = v11;
        if (v12)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          if (*(&v19 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
          }
        }

        v10 = xmmword_2A13A8CA0;
      }

      v13 = *(&xmmword_2A13A8CA0 + 1);
      if (*(&xmmword_2A13A8CA0 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_2A13A8CA0 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
      v9 = BBUCapabilities::supportsVinylUpdate(v10);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    v9 = 0;
  }

  v14 = *(a3 + 135);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a3 + 120);
  }

  v15 = *(a3 + 79);
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(a3 + 64);
  }

  if (a2 > 2)
  {
    if ((a2 - 4) >= 3)
    {
      if (a2 == 3)
      {
        return (v15 | v14) != 0;
      }

      if (a2 != 8)
      {
        return 0;
      }
    }

    return 1;
  }

  switch(a2)
  {
    case 0:
      return 1;
    case 1:
      if (v15 | v14)
      {
        v17 = 1;
      }

      else
      {
        v17 = v9;
      }

      return (*(a3 + 13) | *(a3 + 12) | v17);
    case 2:
      return v9;
    default:
      return 0;
  }
}

void sub_29826F3F0(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t VinylController::createTransportNoEvents(VinylController *this, uint64_t a2)
{
  if (!*(this + 2))
  {
    VinylController::createTransportNoEvents(&v13, a2);
    return v13;
  }

  if (!*(this + 24))
  {
    v5 = VinylController::freeTransport(this, a2);
    v7 = 1;
    v8 = 1;
    do
    {
      v9 = v7;
      gBBULogMaskGet(v5, v6);
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "createTransport attempt %d/%d\n", v8, 2);
      v11 = (*(**(this + 2) + 16))(*(this + 2), this + 32);
      if (!v11)
      {
        break;
      }

      VinylController::freeTransport(this, v10);
      __ns.__rep_ = 3000000000;
      std::this_thread::sleep_for (&__ns);
      v7 = 0;
      v8 = 2;
    }

    while ((v9 & 1) != 0);
    return v11;
  }

  gBBULogMaskGet(this, a2);
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "opening channel on provided external transport\n");
  v3 = *(**(this + 2) + 24);

  return v3();
}

BOOL VinylController::pairingSupported(uint64_t a1, uint64_t a2, void *a3)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  v3 = (*(**a3 + 96))(*a3, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  return v3 == 0;
}

void sub_29826F664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylController::verifyPairing(uint64_t a1, void *a2, int a3)
{
  v99 = *MEMORY[0x29EDCA608];
  v94 = 0;
  v95 = 0;
  v96 = 0;
  LODWORD(__ns.__rep_) = 1380532560;
  v92 = 0;
  v93 = 0;
  data = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&data, &__ns, &__ns.__rep_ + 4, 4uLL);
  std::vector<unsigned char>::vector[abi:ne200100](&md, 0x20uLL);
  v87 = 0;
  v88 = 0;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&cf, (a1 + 128));
  Options::Options(v68, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (a3 >= 1)
  {
    v6 = 0;
    while (1)
    {
      RadioVendor = TelephonyRadiosGetRadioVendor();
      if (RadioVendor == 3)
      {
        gBBULogMaskGet(RadioVendor, v8);
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Performing ResetCard\n");
        v9 = (*(**a2 + 24))();
        v11 = v9;
        if (v9)
        {
          gBBULogMaskGet(v9, v10);
          updated = VinylController::performNonUpdateOperation();
          if (updated)
          {
            updated = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 908, "ret == kBBUReturnSuccess");
          }

          gBBULogMaskGet(updated, v55);
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Fail to ResetCard\n");
          goto LABEL_39;
        }
      }

      else
      {
        v12 = *a2;
        *(v12 + 8) = 0u;
        v12 += 8;
        *(v12 + 240) = 0u;
        *(v12 + 256) = 0u;
        *(v12 + 208) = 0u;
        *(v12 + 224) = 0u;
        *(v12 + 176) = 0u;
        *(v12 + 192) = 0u;
        *(v12 + 144) = 0u;
        *(v12 + 160) = 0u;
        *(v12 + 112) = 0u;
        *(v12 + 128) = 0u;
        *(v12 + 80) = 0u;
        *(v12 + 96) = 0u;
        *(v12 + 48) = 0u;
        *(v12 + 64) = 0u;
        *(v12 + 16) = 0u;
        *(v12 + 32) = 0u;
        *(v12 + 267) = 0u;
        *v12 = TelephonyRadiosGetRadioVendor() - 2 < 3;
        (*(**a2 + 8))(&__ns);
        LODWORD(v12) = __ns.__rep_;
        v13 = TelephonyRadiosGetRadioVendor();
        if (v12 != (v13 - 5) < 0xFFFFFFFD)
        {
          gBBULogMaskGet(v13, v14);
          v52 = VinylController::performNonUpdateOperation();
          if (v52)
          {
            v52 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 912, "outData.Valid()");
          }

          gBBULogMaskGet(v52, v53);
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Invalid GetData output\n");
          goto LABEL_87;
        }

        gBBULogMaskGet(v13, v14);
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Performing SetCardMode(kOpModeRestore)\n");
        v15 = (*(**a2 + 16))(*a2, 1, 1);
        v11 = v15;
        if (v15)
        {
          gBBULogMaskGet(v15, v16);
          v56 = VinylController::performNonUpdateOperation();
          if (v56)
          {
            v56 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 916, "ret == kBBUReturnSuccess");
          }

          gBBULogMaskGet(v56, v57);
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Fail to SetCardMode(kOpModeRestore)\n");
          goto LABEL_39;
        }

        gBBULogMaskGet(v15, v16);
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Performing SetCardMode(kOpModeNormal)\n");
        v17 = (*(**a2 + 16))(*a2, 0, 1);
        v11 = v17;
        if (v17)
        {
          gBBULogMaskGet(v17, v18);
          v58 = VinylController::performNonUpdateOperation();
          if (v58)
          {
            v58 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 920, "ret == kBBUReturnSuccess");
          }

          gBBULogMaskGet(v58, v59);
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Fail to SetCardMode(kOpModeNormal)\n");
          goto LABEL_39;
        }

        v19 = *a2;
        *(v19 + 8) = 0u;
        v19 += 8;
        *(v19 + 240) = 0u;
        *(v19 + 256) = 0u;
        *(v19 + 208) = 0u;
        *(v19 + 224) = 0u;
        *(v19 + 176) = 0u;
        *(v19 + 192) = 0u;
        *(v19 + 144) = 0u;
        *(v19 + 160) = 0u;
        *(v19 + 112) = 0u;
        *(v19 + 128) = 0u;
        *(v19 + 80) = 0u;
        *(v19 + 96) = 0u;
        *(v19 + 48) = 0u;
        *(v19 + 64) = 0u;
        *(v19 + 16) = 0u;
        *(v19 + 32) = 0u;
        *(v19 + 267) = 0u;
        *v19 = TelephonyRadiosGetRadioVendor() - 2 < 3;
        (*(**a2 + 8))(&__ns);
        rep = __ns.__rep_;
        v21 = v98;
        v22 = TelephonyRadiosGetRadioVendor();
        if (rep != (v22 - 5) < 0xFFFFFFFD)
        {
          gBBULogMaskGet(v22, v23);
          v60 = VinylController::performNonUpdateOperation();
          if (v60)
          {
            v60 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 924, "outData.Valid()");
          }

          gBBULogMaskGet(v60, v61);
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Invalid GetData output\b");
          goto LABEL_87;
        }

        if (v21)
        {
          gBBULogMaskGet(v22, v23);
          v62 = VinylController::performNonUpdateOperation();
          if (v62)
          {
            v62 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 925, "outData.contents.op_mode == eUICC::VinylOpMode::kOpModeNormal");
          }

          gBBULogMaskGet(v62, v63);
          _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "After check， card mode was not successfully set to normal\n");
LABEL_87:
          v11 = 1;
          goto LABEL_39;
        }
      }

      __ns.__rep_ = 1000000000;
      std::this_thread::sleep_for (&__ns);
      gBBULogMaskGet(v24, v25);
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Performing ManagePairingGetNonce\n");
      v26 = (*(**a2 + 96))(*a2, &v94);
      v11 = v26;
      if (v26)
      {
        gBBULogMaskGet(v26, v27);
        v46 = VinylController::performNonUpdateOperation();
        if (v46)
        {
          v46 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 932, "kBBUReturnSuccess == ret");
        }

        gBBULogMaskGet(v46, v47);
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Failed to get nonce\n");
        goto LABEL_39;
      }

      v28 = v92;
      v29 = v92 - data;
      if ((v92 - data) > 3)
      {
        if (v29 != 4)
        {
          v28 = data + 4;
          v92 = data + 4;
        }
      }

      else
      {
        std::vector<unsigned char>::__append(&data, 4 - v29);
        v28 = v92;
      }

      std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(&data, v28, v94, v95, v95 - v94);
      v30 = CC_SHA256(data, v92 - data, md);
      gBBULogMaskGet(v30, v31);
      ctu::hex_sp();
      if ((v98 & 0x80u) == 0)
      {
        p_ns = &__ns;
      }

      else
      {
        p_ns = __ns.__rep_;
      }

      v33 = _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Payload %s\n", p_ns);
      if (v98 < 0)
      {
        operator delete(__ns.__rep_);
      }

      gBBULogMaskGet(v33, v34);
      ctu::hex_sp();
      if ((v98 & 0x80u) == 0)
      {
        v35 = &__ns;
      }

      else
      {
        v35 = __ns.__rep_;
      }

      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "hash %s\n", v35);
      if (v98 < 0)
      {
        operator delete(__ns.__rep_);
      }

      v36 = aks_system_key_sign(4, 1, 0, 0, md, v90 - md, &v88, &v84, v64, v65, v66, cf, v68[0], v68[1], v68[2], v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79);
      v38 = v36;
      if (v36)
      {
        gBBULogMaskGet(v36, v37);
        v48 = VinylController::performNonUpdateOperation();
        if (v48)
        {
          v48 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 941, "kAKSReturnSuccess == auth_ret");
        }

        gBBULogMaskGet(v48, v49);
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "aks_system_key_sign failed signing nonce %d\n", v38);
        v11 = 11;
        goto LABEL_39;
      }

      gBBULogMaskGet(v36, v37);
      ctu::hex_sp(&__ns.__rep_, v88, v84);
      if ((v98 & 0x80u) == 0)
      {
        v39 = &__ns;
      }

      else
      {
        v39 = __ns.__rep_;
      }

      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "sig_out %s\n", v39);
      if (v98 < 0)
      {
        operator delete(__ns.__rep_);
      }

      v40 = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v85, v88, v84 + v88, v84);
      gBBULogMaskGet(v40, v41);
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Performing SEP-eUICC pairing authentication %d/%d\n", v6 + 1, a3);
      v42 = (*(**a2 + 104))(*a2, &v85, &v94);
      v11 = v42;
      if (v42)
      {
        gBBULogMaskGet(v42, v43);
        v50 = VinylController::performNonUpdateOperation();
        if (v50)
        {
          v50 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 947, "ret == kBBUReturnSuccess");
        }

        gBBULogMaskGet(v50, v51);
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Authentication with card failed\n");
        goto LABEL_39;
      }

      if (a3 == ++v6)
      {
        v11 = 0;
        goto LABEL_38;
      }
    }
  }

  v11 = 1;
LABEL_38:
  v44 = *a2;
  *(v44 + 8) = 0u;
  v44 += 8;
  *(v44 + 240) = 0u;
  *(v44 + 256) = 0u;
  *(v44 + 208) = 0u;
  *(v44 + 224) = 0u;
  *(v44 + 176) = 0u;
  *(v44 + 192) = 0u;
  *(v44 + 144) = 0u;
  *(v44 + 160) = 0u;
  *(v44 + 112) = 0u;
  *(v44 + 128) = 0u;
  *(v44 + 80) = 0u;
  *(v44 + 96) = 0u;
  *(v44 + 48) = 0u;
  *(v44 + 64) = 0u;
  *(v44 + 16) = 0u;
  *(v44 + 32) = 0u;
  *(v44 + 267) = 0u;
  *v44 = TelephonyRadiosGetRadioVendor() - 2 < 3;
  (*(**a2 + 8))(&__ns);
LABEL_39:
  if (v88)
  {
    free(v88);
    v88 = 0;
  }

  if (v83 < 0)
  {
    operator delete(__p);
  }

  if (v81 < 0)
  {
    operator delete(v80);
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(v77);
  }

  if (SHIBYTE(v75) < 0)
  {
    operator delete(v73);
  }

  if (SHIBYTE(v71) < 0)
  {
    operator delete(v69);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (md)
  {
    v90 = md;
    operator delete(md);
  }

  if (data)
  {
    v92 = data;
    operator delete(data);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  return v11;
}

uint64_t VinylController::Refurb(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  *&v14[283] = *MEMORY[0x29EDCA608];
  gBBULogMaskGet(a1, a2);
  v5 = _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "refurbAction: %d\n", v4);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v8 = 1;
    }

    else
    {
      if (v4 != 4)
      {
LABEL_8:
        gBBULogMaskGet(v5, v6);
        _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "default case\n");
        return 0;
      }

      v8 = 0;
    }

    eUICC::ClearMetadata::Perform(v8, a3);
    return 0;
  }

  if (v4 != 1)
  {
    if (v4 == 2)
    {
      v7 = 1;
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v7 = 0;
LABEL_10:
  v9 = (*(**a3 + 32))(*a3, v7);
  if (!v9)
  {
    v12 = *a3;
    *(v12 + 8) = 0u;
    v12 += 8;
    *(v12 + 240) = 0u;
    *(v12 + 256) = 0u;
    *(v12 + 208) = 0u;
    *(v12 + 224) = 0u;
    *(v12 + 176) = 0u;
    *(v12 + 192) = 0u;
    *(v12 + 144) = 0u;
    *(v12 + 160) = 0u;
    *(v12 + 112) = 0u;
    *(v12 + 128) = 0u;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 267) = 0u;
    *v12 = TelephonyRadiosGetRadioVendor() - 2 < 3;
    (*(**a3 + 8))(v14);
    return 0;
  }

  v11 = v9;
  gBBULogMaskGet(v9, v10);
  _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Failed to handle Refurb operation, ret %d\n", v11);
  return v11;
}

uint64_t VinylController::bootstrapProvisioning(uint64_t a1, uint64_t *a2)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef(&cf, (a1 + 128));
  Options::Options(v8, &cf);
  v4 = eUICC::TwoPhaseProv::Perform(v8, a2);
  if (v18 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  v5 = cf;
  if (cf)
  {
    CFRelease(cf);
  }

  if (!v4)
  {
    return 0;
  }

  gBBULogMaskGet(v5, v3);
  _BBULog(22, 0xFFFFFFFFLL, "VinylController", "", "Failed to handle bootstrap provisioning operation, ret %d\n", v4);
  return 11;
}

void sub_298270504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  Options::~Options(va1);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t VinylController::managePairingInstallMSM(uint64_t a1, void *a2)
{
  v37 = 0;
  v38 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  EID = eUICC::getEID();
  v5 = EID;
  if (EID)
  {
    gBBULogMaskGet(EID, v4);
    updated = VinylController::performNonUpdateOperation();
    if (updated)
    {
      updated = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 862, "kBBUReturnSuccess == ret");
    }

    gBBULogMaskGet(updated, v25);
    _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Unable to get EID\n");
    goto LABEL_24;
  }

  Value = CFDictionaryGetValue(v38, @"EID");
  v8 = Value;
  if (!Value || (TypeID = CFStringGetTypeID(), Value = CFGetTypeID(v8), TypeID != Value))
  {
    gBBULogMaskGet(Value, v7);
    v22 = VinylController::performNonUpdateOperation();
    if (v22)
    {
      v22 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 865, "eid && (CFStringGetTypeID() == CFGetTypeID(eid))");
    }

    gBBULogMaskGet(v22, v23);
    _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Invalid dictionary returned from getEID\n");
    v5 = 0;
LABEL_24:
    v10 = 0;
    goto LABEL_11;
  }

  __p[0] = 0;
  __p[1] = &v37;
  v10 = AMFDRSealingMapCopyLocalMinimalManifestForInstance();
  v11 = ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(__p);
  if (v10)
  {
    BytePtr = CFDataGetBytePtr(v10);
    v14 = CFDataGetBytePtr(v10);
    Length = CFDataGetLength(v10);
    v16 = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v34, BytePtr, &v14[Length], &v14[Length] - BytePtr);
    gBBULogMaskGet(v16, v17);
    ctu::hex_sp();
    if (v33 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "MSMVectorBlob %s\n", v18);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    v19 = (*(**a2 + 88))(*a2, &v34);
    v5 = v19;
    if (v19)
    {
      gBBULogMaskGet(v19, v20);
      v29 = VinylController::performNonUpdateOperation();
      if (v29)
      {
        v29 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 873, "kBBUReturnSuccess == ret");
      }

      gBBULogMaskGet(v29, v30);
      _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Failed to push minimal sealing manifest to the card\n");
    }
  }

  else
  {
    gBBULogMaskGet(v11, v12);
    v26 = VinylController::performNonUpdateOperation();
    if (v26)
    {
      v26 = _BBULog(1, 6, "VinylController", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/Controller/VinylController.cpp", 868, "MSMData");
    }

    gBBULogMaskGet(v26, v27);
    ctu::cf::CFSharedRef<void const>::CFSharedRef<__CFError,void>(&v31, &v37);
    CFOBJ_STR(&v31, __p);
    if (v33 >= 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = __p[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Minimal sealing manifest fetch failed %s\n", v28);
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    ctu::cf::CFSharedRef<void const>::~CFSharedRef(&v31);
    v10 = 0;
    v5 = 11;
  }

LABEL_11:
  if (v38)
  {
    CFRelease(v38);
    v38 = 0;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v37);
  return v5;
}

void sub_2982708FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a12);
  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef((v20 - 48));
  _Unwind_Resume(a1);
}

uint64_t VinylController::getPairingParameters(int a1, CFDictionaryRef theDict, __CFDictionary **a3, void *a4)
{
  Value = CFDictionaryGetValue(theDict, @"kToBeSignedPayload");
  if (Value && (v8 = Value, v9 = CFGetTypeID(Value), Value = CFDictionaryGetTypeID(), v9 == Value))
  {
    if (eUICC::Pairing::GetParameters(v8, a3, a4))
    {
      return 11;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    VinylController::getPairingParameters(Value, v7);
    return 0;
  }
}

void Options::~Options(void **this)
{
  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

uint64_t VinylController::freeTransport(VinylController *this, uint64_t a2)
{
  if (*(this + 24))
  {
    gBBULogMaskGet(this, a2);
    _BBULog(0, 0xFFFFFFFFLL, "VinylController", "", "Skipping free of external transport\n");
    return 0;
  }

  else
  {
    v4 = *(this + 2);
    if (v4)
    {
      v5 = *(this + 11);
      if (v5 && (v6 = v5(this + 32), v4 = *(this + 2), v6))
      {
        v7 = *(*v4 + 40);
      }

      else
      {
        v7 = *(*v4 + 40);
      }

      if (v7())
      {
        return 0;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      VinylController::freeTransport(&v8, a2);
      return v8;
    }
  }
}

const void **ctu::cf::CFSharedRef<void const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void VinylController::~VinylController(VinylController *this)
{
  VinylController::~VinylController(this);

  operator delete(v1);
}

{
  *this = &unk_2A1EB2888;
  v2 = *(this + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 15);
  *(this + 15) = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    CFRelease(v5);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  v5 = this;
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((__sz | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__sz | 7) + 1;
    }

    v7 = operator new(v6);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = v7;
    v5 = v7;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
  }

  memmove(v5, __s, __sz + 1);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

void **std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result >= a4)
  {
    v14 = result[1];
    v15 = v14 - v9;
    if (v14 - v9 >= a4)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      v12 = &v9[v20];
    }

    else
    {
      v16 = &__src[v15];
      if (v14 != v9)
      {
        result = memmove(*result, __src, v15);
        v14 = v7[1];
      }

      v17 = v14;
      if (v16 != a3)
      {
        v17 = v14;
        v18 = v14;
        do
        {
          v19 = *v16++;
          *v18++ = v19;
          ++v17;
        }

        while (v16 != a3);
      }

      v12 = v17;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    v12 = v7[1];
    while (v6 != a3)
    {
      v13 = *v6++;
      *v12++ = v13;
    }
  }

  v7[1] = v12;
  return result;
}

const void **ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

char *std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(char *result, char *a2, char *a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = std::vector<unsigned char>::__vallocate[abi:ne200100](result, __sz);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_298270EE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *a1, size_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
    v4 = a1[1];
    v5 = v4 + a2;
    bzero(v4, a2);
    a1[1] = v5;
  }

  return a1;
}

void sub_298270F54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__append(uint64_t a1, size_t a2)
{
  v6 = a1 + 8;
  v4 = *(a1 + 8);
  v5 = *(v6 + 8);
  if (v5 - v4 >= a2)
  {
    if (a2)
    {
      v13 = &v4[a2];
      bzero(v4, a2);
      v4 = v13;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v7 = *a1;
    v8 = &v4[-*a1];
    v9 = v8 + a2;
    if ((v8 + a2) < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = operator new(v11);
    }

    else
    {
      v12 = 0;
    }

    bzero(&v12[v8], a2);
    memcpy(v12, v7, v8);
    *a1 = v12;
    *(a1 + 8) = &v12[v8 + a2];
    *(a1 + 16) = &v12[v11];
    if (v7)
    {

      operator delete(v7);
    }
  }
}

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v6 = __len;
  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((v9 - v10) < __len)
  {
    v11 = *a1;
    v12 = v10 - *a1 + __len;
    if (v12 < 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v13 = (__dst - v11);
    v14 = v9 - v11;
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      v16 = operator new(v15);
    }

    else
    {
      v16 = 0;
    }

    v32 = &v13[v16];
    v33 = &v13[v16 + v6];
    v34 = v32;
    do
    {
      v35 = *v7++;
      *v34++ = v35;
      --v6;
    }

    while (v6);
    v36 = v16 + v15;
    memcpy(v33, v5, v10 - v5);
    v37 = &v33[v10 - v5];
    *(a1 + 8) = v5;
    v38 = *a1;
    v39 = &v32[*a1 - v5];
    memcpy(v39, *a1, &v5[-*a1]);
    *a1 = v39;
    *(a1 + 8) = v37;
    *(a1 + 16) = v36;
    if (v38)
    {
      operator delete(v38);
    }

    return v32;
  }

  v17 = v10 - __dst;
  if ((v10 - __dst) >= __len)
  {
    v28 = &__dst[__len];
    v29 = (v10 - __len);
    v30 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v31 = *v29++;
        *v30++ = v31;
      }

      while (v29 != v10);
    }

    *(a1 + 8) = v30;
    if (v10 != v28)
    {
      memmove(&__dst[__len], __dst, v10 - v28);
    }

    v25 = v5;
    v26 = v7;
    v27 = v6;
    goto LABEL_27;
  }

  v19 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v20 = (v10 + v19);
  *(a1 + 8) = v10 + v19;
  if (v17 >= 1)
  {
    v21 = &v5[v6];
    v22 = (v10 + v19);
    if (&v20[-v6] < v10)
    {
      v23 = (a4 - &v7[v6]);
      v24 = (a4 - v7);
      do
      {
        v5[v24++] = v5[v23++];
      }

      while (&v5[v23] < v10);
      v22 = &v5[v24];
    }

    *(a1 + 8) = v22;
    if (v20 != v21)
    {
      memmove(&v5[v6], v5, v20 - v21);
    }

    v25 = v5;
    v26 = v7;
    v27 = v10 - v5;
LABEL_27:
    memmove(v25, v26, v27);
  }

  return v5;
}

uint64_t ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

const void **ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(const void **a1)
{
  v2 = a1[1];
  if (*a1)
  {
    v3 = *v2;
    *v2 = *a1;
    v6 = v3;
  }

  else
  {
    v4 = *v2;
    *v2 = 0;
    v6 = v4;
  }

  ctu::SharedRef<__CFError,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFError>::~SharedRef(&v6);
  return a1;
}

const void **ctu::cf::CFSharedRef<void const>::CFSharedRef<__CFError,void>(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_29826A000);
  }

  return result;
}

uint64_t __cxx_global_var_init_126()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_29826A000);
  }

  return result;
}

eUICC::eUICCVinylICEValve *eUICC::eUICCVinylICEValve::eUICCVinylICEValve(eUICC::eUICCVinylICEValve *this, void *a2, int a3, char a4)
{
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 104) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 275) = 0u;
  *(this + 8) = 0u;
  *(this + 264) = 0u;
  *(this + 304) = 0;
  *this = &unk_2A1EB28B8;
  *(this + 39) = 0;
  *(this + 37) = a2;
  v5 = a3 != 1;
  if (a3 == 255)
  {
    v5 = 255;
  }

  *(this + 73) = v5;
  *(this + 291) = a4;
  IceAriGetContext();
  v6 = operator new(0x40uLL);
  eUICC::VinylCommandDriver::VinylCommandDriver();
  std::unique_ptr<eUICC::VinylCommandDriver>::reset[abi:ne200100](this + 39, v6);
  *(this + 304) = 15;
  eUICC::eUICCVinylValve::hardwareHasESIM = (*(*this + 128))(this, &eUICC::eUICCVinylValve::simSKUID);
  return this;
}

void sub_298271624(_Unwind_Exception *a1)
{
  std::unique_ptr<eUICC::VinylCommandDriver>::reset[abi:ne200100](v1 + 39, 0);
  VinylCommunication::~VinylCommunication(v1);
  _Unwind_Resume(a1);
}

uint64_t IceAriGetContext(void)
{
  pthread_mutex_lock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  v0 = off_2A13A8C50;
  if (!off_2A13A8C50)
  {
    v1 = operator new(0x28uLL);
    v1[32] = 0;
    std::shared_ptr<ICEARIContext>::shared_ptr[abi:ne200100]<ICEARIContext,0>(&v6, v1);
    v2 = v6;
    v6 = 0uLL;
    v3 = *(&off_2A13A8C50 + 1);
    off_2A13A8C50 = v2;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      if (*(&v6 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v6 + 1));
      }
    }

    v0 = off_2A13A8C50;
  }

  v4 = *(&off_2A13A8C50 + 1);
  if (*(&off_2A13A8C50 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13A8C50 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v0;
}

uint64_t eUICC::eUICCVinylICEValve::HardwareHasESIM(eUICC::eUICCVinylICEValve *this, unsigned __int8 *a2)
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN5eUICC18eUICCVinylICEValve15HardwareHasESIMERh_block_invoke;
  block[3] = &__block_descriptor_tmp_0;
  block[4] = this;
  if (eUICC::eUICCVinylValve::simSKUOnceToken != -1)
  {
    dispatch_once(&eUICC::eUICCVinylValve::simSKUOnceToken, block);
  }

  return eUICC::eUICCVinylICEValve::HardwareHasESIM(unsigned char &)::result;
}

capabilities::euicc *___ZN5eUICC18eUICCVinylICEValve15HardwareHasESIMERh_block_invoke(uint64_t a1)
{
  result = TelephonyRadiosGetRadio();
  if (result == 4)
  {
    eUICC::eUICCVinylICEValve::HardwareHasESIM(unsigned char &)::result = 1;
  }

  else
  {
    result = capabilities::euicc::supportsGenericUpdater(result);
    if (result)
    {
      AriSdk::ARI_IBIVinylHwIdSimConfigReq_SDK::ARI_IBIVinylHwIdSimConfigReq_SDK(v4);
      HwIdSimConfig = eUICC::VinylCommandDriver::GetHwIdSimConfig();
      if (HwIdSimConfig)
      {
        if (*(MEMORY[0x48] + 4) == 2)
        {
          gBBULogMaskGet(0, v3);
          _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "SimConfigRsp: device supports eSIM\n");
          eUICC::eUICCVinylICEValve::HardwareHasESIM(unsigned char &)::result = 1;
        }

        else
        {
          (*(MEMORY[0] + 16))(0);
        }
      }

      else
      {
        gBBULogMaskGet(HwIdSimConfig, v3);
        _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Error: failed to get SimConfig info from BB\n");
      }

      return MEMORY[0x29C286710](v4);
    }
  }

  return result;
}

void *eUICC::eUICCVinylICEValve::GetVinylType@<X0>(eUICC::eUICCVinylICEValve *this@<X0>, void *a2@<X8>)
{
  *(this + 2) = 0;
  *(this + 288) = 1;
  return memcpy(a2, this + 8, 0x11BuLL);
}

uint64_t eUICC::eUICCVinylICEValve::GetData@<X0>(eUICC::eUICCVinylICEValve *this@<X0>, void *a2@<X8>)
{
  DataReq_SDK = AriSdk::ARI_IBIVinylGetDataReq_SDK::ARI_IBIVinylGetDataReq_SDK(v38);
  v5 = (this + 8);
  if (*(this + 290) == 1)
  {
    gBBULogMaskGet(DataReq_SDK, v4);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "eUICCVinylData cache is valid. Using cached data!\n");
    eUICC::logEUICCData(this + 2, v6);
    goto LABEL_36;
  }

  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *v5 = 0u;
  *(this + 275) = 0u;
  *(this + 2) = TelephonyRadiosGetRadioVendor() - 2 < 3;
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v39, this + 73);
  v7 = operator new(1uLL);
  *v7 = 0;
  v8 = __p;
  __p = v7;
  if (v8)
  {
    operator delete(v8);
  }

  RadioVendor = TelephonyRadiosGetRadioVendor();
  v11 = RadioVendor;
  if (RadioVendor == 3)
  {
    v28 = 0;
    *(this + 287) = eUICC::eUICCVinylValve::hardwareHasESIM ^ 1;
    while (1)
    {
      Data = eUICC::VinylCommandDriver::GetData();
      if ((Data & 1) == 0)
      {
        break;
      }

      v31 = *MEMORY[0x48];
      gBBULogMaskGet(Data, v30);
      v32 = _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "GetData IBIVinylResult 0x%x\n", v31);
      if (v31 <= 7 && ((1 << v31) & 0x91) != 0)
      {
        goto LABEL_9;
      }

      gBBULogMaskGet(v32, v14);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "SIM still initializing, trying again... IBIVinylResult 0x%x (retryCount: %d, retryLimit: %d)\n", v31, v28, 7);
      __ns.__rep_ = 2000000000;
      std::this_thread::sleep_for (&__ns);
      if (++v28 == 7)
      {
        goto LABEL_34;
      }
    }

    gBBULogMaskGet(Data, v30);
    v13 = _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Error: Invalid GetData response from BB\n");
    goto LABEL_34;
  }

  if (RadioVendor != 2)
  {
    gBBULogMaskGet(RadioVendor, v10);
    v13 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "TelephonyRadiosGetRadioVendor %d not supported!", v11);
    goto LABEL_34;
  }

  isAbsentOkay = eUICC::eUICCVinylICEValve::isAbsentOkay(this);
  *(this + 287) = isAbsentOkay;
  if (isAbsentOkay)
  {
LABEL_35:
    *v5 = 255;
    goto LABEL_36;
  }

  v13 = eUICC::VinylCommandDriver::GetData();
  if ((v13 & 1) == 0)
  {
LABEL_34:
    gBBULogMaskGet(v13, v14);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Invalid GetData response from the BB\n");
    goto LABEL_35;
  }

LABEL_9:
  *(this + 2) = *MEMORY[0x48];
  v15 = MEMORY[0x60];
  *(this + 13) = *MEMORY[0x58];
  if (v15 == MEMORY[0x68])
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  *(this + 15) = *v16;
  v17 = MEMORY[0x80];
  *(this + 31) = *MEMORY[0x78];
  if (v17 == MEMORY[0x88])
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  v19 = v18[1];
  *(this + 2) = *v18;
  *(this + 3) = v19;
  *(this + 8) = *MEMORY[0x98];
  *(this + 9) = *MEMORY[0xB0];
  v20 = MEMORY[0xC8];
  if (MEMORY[0xC8] == MEMORY[0xD0])
  {
    v20 = 0;
  }

  *(this + 5) = *v20;
  v21 = MEMORY[0x128];
  if (MEMORY[0x128] == MEMORY[0x130])
  {
    v21 = 0;
  }

  *(this + 155) = *v21;
  v22 = MEMORY[0x1C0];
  if (MEMORY[0x1C0] == MEMORY[0x1C8])
  {
    v22 = 0;
  }

  v23 = v22[1];
  *(this + 251) = *v22;
  *(this + 267) = v23;
  *(this + 115) = *MEMORY[0x188];
  v24 = MEMORY[0x1A8];
  if (MEMORY[0x1A8] == MEMORY[0x1B0])
  {
    v24 = 0;
  }

  v25 = *(v24 + 2);
  *(this + 124) = *v24;
  *(this + 250) = v25;
  *(this + 12) = *MEMORY[0x50];
  *(this + 283) = *MEMORY[0x1E8];
  *(this + 289) = eUICC::eUICCVinylValve::hardwareHasESIM;
  *(this + 286) = eUICC::eUICCVinylValve::simSKUID;
  *(this + 290) = 1;
  v26 = eUICC::logEUICCData(this + 2, v14);
  gBBULogMaskGet(v26, v27);
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "result  0x%x \n", *MEMORY[0x48]);
LABEL_36:
  v34 = TelephonyRadiosGetRadioVendor();
  if (*v5 != (v34 - 5) < 0xFFFFFFFD && (eUICC::eUICCVinylValve::hardwareHasESIM & 1) == 0)
  {
    gBBULogMaskGet(v34, v35);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "GetData status is not valid, hardware does not have eSIM, set absentOk to True\n");
    *(this + 287) = 1;
  }

  memcpy(a2, this + 8, 0x11BuLL);
  return MEMORY[0x29C286630](v38);
}

void sub_298271DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  MEMORY[0x29C286630](va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

void **AriSdk::Tlv<unsigned int>::operator=<int &,void>(void **a1, _DWORD *a2)
{
  v4 = operator new(4uLL);
  *v4 = *a2;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t eUICC::eUICCVinylICEValve::isAbsentOkay(eUICC::eUICCVinylICEValve *this)
{
  AriSdk::ARI_IBISimAccessGetSimDataReq_SDK::ARI_IBISimAccessGetSimDataReq_SDK(v18);
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v19, this + 73);
  v2 = -1;
  while (1)
  {
    VinylType = eUICC::VinylCommandDriver::GetVinylType();
    if ((VinylType & 1) == 0)
    {
      gBBULogMaskGet(VinylType, v4);
      v7 = _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Error: failed to get slot info from BB\n");
LABEL_13:
      gBBULogMaskGet(v7, v8);
      v9 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "ret", "", "", 292);
      gBBULogMaskGet(v9, v10);
      VinylType = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to get data from UIM\n");
LABEL_14:
      v11 = 0;
      goto LABEL_15;
    }

    v5 = *MEMORY[0x48];
    if (*MEMORY[0x48] > 5)
    {
      break;
    }

    if (v5 != 1 && v5 != 4)
    {
      goto LABEL_20;
    }

LABEL_10:
    gBBULogMaskGet(VinylType, v4);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "SIM still initializing, trying again... sim_state 0x%x (retryCount: %d, retryLimit: %d)\n", *MEMORY[0x48], v2 + 1, 7);
    __ns.__rep_ = 2000000000;
    std::this_thread::sleep_for (&__ns);
    if (++v2 >= 6)
    {
      goto LABEL_13;
    }
  }

  if (v5 == 254)
  {
    goto LABEL_10;
  }

  if (v5 != 6)
  {
    goto LABEL_20;
  }

  if (*MEMORY[0x80])
  {
    gBBULogMaskGet(VinylType, v4);
    v16 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "!(GET_RSP_FIELD(rsp, sim_error_cause_t28) & sim_error_cause_mask)", "", "", 278);
    gBBULogMaskGet(v16, v17);
    VinylType = _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "sim_state 0x%x, sim_error_cause 0x%x\n", *MEMORY[0x48], *MEMORY[0x80]);
    goto LABEL_14;
  }

  if (*MEMORY[0x80] == 2)
  {
    v11 = 1;
    goto LABEL_15;
  }

LABEL_20:
  if (MEMORY[0x88])
  {
    v11 = (*MEMORY[0x88] & 3) == 0;
  }

  else
  {
    v11 = 1;
  }

  gBBULogMaskGet(VinylType, v4);
  if (MEMORY[0x88])
  {
    v14 = *MEMORY[0x88];
  }

  else
  {
    v14 = 57005;
  }

  v15 = "No";
  if (v11)
  {
    v15 = "Yes";
  }

  VinylType = _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "sim_state 0x%x sim_error_cause: 0x%x sim_ext_capabilities 0x%x isAbsentOk: %s\n", *MEMORY[0x48], *MEMORY[0x80], v14, v15);
LABEL_15:
  gBBULogMaskGet(VinylType, v4);
  _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "isAbsentOkay result %d hardwareHasESIM: %d\n", v11, eUICC::eUICCVinylValve::hardwareHasESIM);
  v12 = eUICC::eUICCVinylValve::hardwareHasESIM;
  MEMORY[0x29C286730](v18);
  return v11 & (v12 ^ 1u);
}

void sub_2982721D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x29C286730](va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::SetCardMode(uint64_t a1)
{
  AriSdk::ARI_IBIVinylSwitchModeReq_SDK::ARI_IBIVinylSwitchModeReq_SDK(v7);
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v8, (a1 + 292));
  v2 = operator new(1uLL);
  *v2 = 1;
  v3 = __p;
  __p = v2;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = eUICC::VinylCommandDriver::SwitchCardMode();
  gBBULogMaskGet(v4, v5);
  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Error: failed to SwitchCardMode\n");
  MEMORY[0x29C286690](v7);
  return 18;
}

void sub_29827232C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  MEMORY[0x29C286690](va, a2, a3, a4, a5);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::ResetCard(eUICC::eUICCVinylICEValve *this)
{
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if (RadioVendor == 3)
  {
    AriSdk::ARI_IBIVinylSimCardResetReq_SDK::ARI_IBIVinylSimCardResetReq_SDK(v9);
    AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v10, this + 73);
    v4 = eUICC::VinylCommandDriver::ResetSimCard();
    gBBULogMaskGet(v4, v6);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Error: failed to perform ResetSimCard\n");
    v7 = 18;
    MEMORY[0x29C2866F0](v9);
  }

  else
  {
    gBBULogMaskGet(RadioVendor, v3);
    v5 = TelephonyRadiosGetRadioVendor();
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Error: only kTelephonyRadioVendorINT has IBIVinylSimCardResetReq, current RadioVendor = %d\n", v5);
    return 1;
  }

  return v7;
}

void sub_2982724A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x29C2866F0](va, a2, a3, a4);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::DeleteProfile(eUICC::eUICCVinylICEValve *this, unsigned int a2)
{
  AriSdk::ARI_IBIVinylTapeReq_SDK::ARI_IBIVinylTapeReq_SDK(v24);
  v23 = 0;
  v22[0] = 0xBFD00402820434BFLL;
  *(v22 + 6) = 0xD80302820434BFD0;
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v25, this + 73);
  v4 = operator new(4uLL);
  *v4 = 17;
  v5 = __p;
  __p = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = operator new(4uLL);
  *v6 = 1;
  v7 = v27;
  v27 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = operator new(2uLL);
  *v8 = 1;
  v9 = v28;
  v28 = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = operator new(2uLL);
  *v10 = 0;
  v11 = v29;
  v29 = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = operator new(2uLL);
  *v12 = 7;
  v13 = v30;
  v30 = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = &v22[a2] - a2;
  AriSdk::TlvArray<unsigned char,3584ul>::assign<unsigned char *>(&v31, v14, v14 + 7);
  v15 = eUICC::VinylCommandDriver::DeleteProfile();
  if ((v15 & 1) == 0)
  {
    gBBULogMaskGet(v15, v16);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "status", "", "", 335);
    v20 = 11;
LABEL_15:
    v17 = v23;
    if (!v23)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v17 = v23;
  if (**(v23 + 80))
  {
    gBBULogMaskGet(v23, v16);
    v18 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "!GET_RSP_FIELD(rsp, result_t4)", "", "", 336);
    gBBULogMaskGet(v18, v19);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to DeleteProfile status %d SW1_SW2 0x%x\n", **(v23 + 80), **(v23 + 88));
    v20 = 18;
    goto LABEL_15;
  }

  v20 = 0;
LABEL_18:
  (*(*v17 + 16))(v17);
LABEL_19:
  MEMORY[0x29C2865F0](v24);
  return v20;
}

void sub_298272718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  MEMORY[0x29C2865F0](va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

BOOL AriSdk::TlvArray<unsigned char,3584ul>::assign<unsigned char *>(Ari *a1, char *a2, char *a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = a3 - a2;
  if ((a3 - a2) >= 0xE01)
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v12, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v7);
        v11 = v13 >= 0 ? v12 : v12[0];
        *__p = 136316418;
        *&__p[4] = "ari";
        v15 = 2080;
        v16 = v11;
        v17 = 1024;
        v18 = 385;
        v19 = 2048;
        v20 = a1;
        v21 = 2048;
        v22 = v4;
        v23 = 2048;
        v24 = 3584;
        _os_log_error_impl(&dword_29826A000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", __p, 0x3Au);
        if (v13 < 0)
        {
          operator delete(v12[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v7);
      if (v17 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", v8, v9, 385, a1, v4, 3584);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1, a2, a3, a3 - a2);
  }

  return v4 < 0xE01;
}

void sub_2982728F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::eUICCVinylICEValve::StoreData(uint64_t a1, char **a2, void **a3, _WORD *a4)
{
  AriSdk::ARI_IBIVinylTapeReq_SDK::ARI_IBIVinylTapeReq_SDK(v26);
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v27, (a1 + 292));
  v8 = operator new(4uLL);
  *v8 = 5;
  v9 = __p;
  __p = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = operator new(4uLL);
  *v10 = 1;
  v11 = v29;
  v29 = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = operator new(2uLL);
  *v12 = 1;
  v13 = v30;
  v30 = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = operator new(2uLL);
  *v14 = 0;
  v15 = v31;
  v31 = v14;
  if (v15)
  {
    operator delete(v15);
  }

  v17 = *a2;
  v16 = a2[1];
  v18 = operator new(2uLL);
  *v18 = v16 - v17;
  v19 = v32;
  v32 = v18;
  if (v19)
  {
    operator delete(v19);
    v17 = *a2;
    v16 = a2[1];
  }

  AriSdk::TlvArray<unsigned char,3584ul>::assign<std::__wrap_iter<unsigned char const*>>(&v33, v17, v16);
  v20 = eUICC::VinylCommandDriver::DeleteProfile();
  if (v20)
  {
    if (*MEMORY[0x50])
    {
      gBBULogMaskGet(v20, v21);
      v22 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "!GET_RSP_FIELD(rsp, result_t4)", "", "", 362);
      gBBULogMaskGet(v22, v23);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to store data status %d SW1_SW2 0x%x\n", *MEMORY[0x50], *MEMORY[0x58]);
      v24 = 18;
    }

    else
    {
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(a3, MEMORY[0x78], (*MEMORY[0x70] + MEMORY[0x78]), *MEMORY[0x70]);
      v24 = 0;
    }

    *a4 = *MEMORY[0x58];
    (*(MEMORY[0] + 16))(0);
  }

  else
  {
    gBBULogMaskGet(v20, v21);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "status", "", "", 361);
    v24 = 11;
  }

  MEMORY[0x29C2865F0](v26);
  return v24;
}

void sub_298272B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  MEMORY[0x29C2865F0](va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

BOOL AriSdk::TlvArray<unsigned char,3584ul>::assign<std::__wrap_iter<unsigned char const*>>(Ari *a1, char *a2, char *a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = a3 - a2;
  if ((a3 - a2) >= 0xE01)
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v12, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v7);
        v11 = v13 >= 0 ? v12 : v12[0];
        *__p = 136316418;
        *&__p[4] = "ari";
        v15 = 2080;
        v16 = v11;
        v17 = 1024;
        v18 = 385;
        v19 = 2048;
        v20 = a1;
        v21 = 2048;
        v22 = v4;
        v23 = 2048;
        v24 = 3584;
        _os_log_error_impl(&dword_29826A000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", __p, 0x3Au);
        if (v13 < 0)
        {
          operator delete(v12[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v7);
      if (v17 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", v8, v9, 385, a1, v4, 3584);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(a1, a2, a3, a3 - a2);
  }

  return v4 < 0xE01;
}

void sub_298272D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::eUICCVinylICEValve::InitPerso(uint64_t a1, char **a2, void **a3)
{
  inited = AriSdk::ARI_IBIVinylInitPsoReq_SDK::ARI_IBIVinylInitPsoReq_SDK(v28);
  v27 = 0;
  v8 = a2[1];
  v9 = v8 - *a2;
  v10 = (v8 - *a2);
  if (v10 >= 0xE01)
  {
    gBBULogMaskGet(inited, v7);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Payload too large -- payload_size: %d  max allowed: %lu)\n", v9, 3584);
LABEL_14:
    v22 = 18;
    goto LABEL_16;
  }

  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v29, (a1 + 292));
  v11 = operator new(1uLL);
  *v11 = 0;
  v12 = __p;
  __p = v11;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = operator new(1uLL);
  *v13 = 0;
  v14 = v31;
  v31 = v13;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = operator new(2uLL);
  *v15 = v9;
  v16 = v32;
  v32 = v15;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = *a2;
  v26 = 0;
  v25 = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v25, v17, &v17[v10], v10);
  AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v33, &v25);
  if (v25.n128_u64[0])
  {
    v25.n128_u64[1] = v25.n128_u64[0];
    operator delete(v25.n128_u64[0]);
  }

  v18 = eUICC::VinylCommandDriver::InitPerso();
  if (v18)
  {
    if (**(v27 + 72) || (v24 = *(v27 + 88), !*v24))
    {
      gBBULogMaskGet(v18, v19);
      v20 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "!GET_RSP_FIELD(rsp, result_t3) && GET_RSP_FIELD(rsp, sim_rsp_len_t5)", "", "", 547);
      gBBULogMaskGet(v20, v21);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to InitPerso status %d SW1_SW2 0x%x rsp_len %u\n", **(v27 + 72), **(v27 + 80), **(v27 + 88));
      goto LABEL_14;
    }

    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(a3, *(v27 + 96), (*(v27 + 96) + *v24), *v24);
    v22 = 0;
  }

  else
  {
    gBBULogMaskGet(v18, v19);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "status", "", "", 546);
    v22 = 11;
  }

LABEL_16:
  if (v27)
  {
    (*(*v27 + 16))(v27);
  }

  MEMORY[0x29C286650](v28);
  return v22;
}

void sub_298273024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MEMORY[0x29C286650](va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

Ari *AriSdk::TlvArray<unsigned char,3584ul>::operator=(Ari *a1, __n128 *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  if (a2->n128_u64[1] - a2->n128_u64[0] < 0xE01)
  {
    std::vector<unsigned char>::__move_assign(a1, a2);
  }

  else
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v12, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v6);
        v10 = v13 >= 0 ? v12 : v12[0];
        v11 = a2->n128_u64[1] - a2->n128_u64[0];
        *__p = 136316418;
        *&__p[4] = "ari";
        v15 = 2080;
        v16 = v10;
        v17 = 1024;
        v18 = 360;
        v19 = 2048;
        v20 = a1;
        v21 = 2048;
        v22 = v11;
        v23 = 2048;
        v24 = 3584;
        _os_log_error_impl(&dword_29826A000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", __p, 0x3Au);
        if (v13 < 0)
        {
          operator delete(v12[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v6);
      if (v17 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%zu) max(%zu)", v7, v8, 360, a1, a2->n128_u64[1] - a2->n128_u64[0], 3584);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  return a1;
}

void sub_298273228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::eUICCVinylICEValve::AuthPerso(uint64_t a1, char **a2, void **a3)
{
  v6 = AriSdk::ARI_IBIVinylAuthPsoReq_SDK::ARI_IBIVinylAuthPsoReq_SDK(v28);
  v27 = 0;
  v8 = a2[1];
  v9 = v8 - *a2;
  v10 = (v8 - *a2);
  if (v10 >= 0xE01)
  {
    gBBULogMaskGet(v6, v7);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Payload too large -- payload_size: %d  max allowed: %lu)\n", v9, 3584);
LABEL_14:
    v22 = 18;
    goto LABEL_16;
  }

  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v29, (a1 + 292));
  v11 = operator new(1uLL);
  *v11 = 0;
  v12 = __p;
  __p = v11;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = operator new(1uLL);
  *v13 = 0;
  v14 = v31;
  v31 = v13;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = operator new(2uLL);
  *v15 = v9;
  v16 = v32;
  v32 = v15;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = *a2;
  v26 = 0;
  v25 = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v25, v17, &v17[v10], v10);
  AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v33, &v25);
  if (v25.n128_u64[0])
  {
    v25.n128_u64[1] = v25.n128_u64[0];
    operator delete(v25.n128_u64[0]);
  }

  v18 = eUICC::VinylCommandDriver::AuthPerso();
  if (v18)
  {
    if (**(v27 + 72) || (v24 = *(v27 + 88), !*v24))
    {
      gBBULogMaskGet(v18, v19);
      v20 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "!GET_RSP_FIELD(rsp, result_t3) && GET_RSP_FIELD(rsp, sim_rsp_len_t5)", "", "", 579);
      gBBULogMaskGet(v20, v21);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to AuthPerso status %d SW1_SW2 0x%x rsp_len %u\n", **(v27 + 72), **(v27 + 80), **(v27 + 88));
      goto LABEL_14;
    }

    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(a3, *(v27 + 96), (*(v27 + 96) + *v24), *v24);
    v22 = 0;
  }

  else
  {
    gBBULogMaskGet(v18, v19);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "status", "", "", 578);
    v22 = 11;
  }

LABEL_16:
  if (v27)
  {
    (*(*v27 + 16))(v27);
  }

  MEMORY[0x29C286610](v28);
  return v22;
}

void sub_2982734E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MEMORY[0x29C286610](va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::FinalizePerso(uint64_t a1, char **a2)
{
  v4 = AriSdk::ARI_IBIVinylFinalizePsoReq_SDK::ARI_IBIVinylFinalizePsoReq_SDK(v26);
  v25 = 0;
  v6 = a2[1];
  v7 = v6 - *a2;
  v8 = (v6 - *a2);
  if (v8 >= 0xE01)
  {
    gBBULogMaskGet(v4, v5);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Payload too large -- payload_size: %d  max allowed: %lu)\n", v7, 3584);
LABEL_14:
    v21 = 18;
    goto LABEL_16;
  }

  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v27, (a1 + 292));
  v9 = operator new(1uLL);
  *v9 = 0;
  v10 = __p;
  __p = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = operator new(1uLL);
  *v11 = 0;
  v12 = v29;
  v29 = v11;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = operator new(2uLL);
  *v13 = v7;
  v14 = v30;
  v30 = v13;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *a2;
  v24 = 0;
  v23 = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v23, v15, &v15[v8], v8);
  AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v31, &v23);
  if (v23.n128_u64[0])
  {
    v23.n128_u64[1] = v23.n128_u64[0];
    operator delete(v23.n128_u64[0]);
  }

  v16 = eUICC::VinylCommandDriver::FinalizePerso();
  if (v16)
  {
    v18 = v25;
    if (!**(v25 + 72))
    {
      v21 = 0;
      goto LABEL_17;
    }

    gBBULogMaskGet(v25, v17);
    v19 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "!GET_RSP_FIELD(rsp, result_t3)", "", "", 611);
    gBBULogMaskGet(v19, v20);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to FinalizePerso status %d SW1_SW2 0x%x\n", **(v25 + 72), **(v25 + 80));
    goto LABEL_14;
  }

  gBBULogMaskGet(v16, v17);
  _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "status", "", "", 610);
  v21 = 11;
LABEL_16:
  v18 = v25;
  if (v25)
  {
LABEL_17:
    (*(*v18 + 16))(v18);
  }

  MEMORY[0x29C2866B0](v26);
  return v21;
}

void sub_29827377C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C2866B0](va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::ValidatePerso(uint64_t a1, char **a2, void **a3)
{
  v6 = AriSdk::ARI_IBIVinylValidatePsoReq_SDK::ARI_IBIVinylValidatePsoReq_SDK(v28);
  v27 = 0;
  v8 = a2[1];
  v9 = v8 - *a2;
  v10 = (v8 - *a2);
  if (v10 >= 0xE01)
  {
    gBBULogMaskGet(v6, v7);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Payload too large -- payload_size: %d  max allowed: %lu)\n", v9, 3584);
LABEL_14:
    v22 = 18;
    goto LABEL_16;
  }

  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v29, (a1 + 292));
  v11 = operator new(2uLL);
  *v11 = 1;
  v12 = __p;
  __p = v11;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = operator new(2uLL);
  *v13 = 0;
  v14 = v31;
  v31 = v13;
  if (v14)
  {
    operator delete(v14);
  }

  v15 = operator new(2uLL);
  *v15 = v9;
  v16 = v32;
  v32 = v15;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = *a2;
  v26 = 0;
  v25 = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v25, v17, &v17[v10], v10);
  AriSdk::TlvArray<unsigned char,3584ul>::operator=(&v33, &v25);
  if (v25.n128_u64[0])
  {
    v25.n128_u64[1] = v25.n128_u64[0];
    operator delete(v25.n128_u64[0]);
  }

  v18 = eUICC::VinylCommandDriver::ValidatePerso();
  if (v18)
  {
    if (**(v27 + 72) || (v24 = *(v27 + 88), !*v24))
    {
      gBBULogMaskGet(v18, v19);
      v20 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "!GET_RSP_FIELD(rsp, result_t3) && GET_RSP_FIELD(rsp, sim_rsp_len_t5)", "", "", 643);
      gBBULogMaskGet(v20, v21);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to AuthPerso status %d SW1_SW2 0x%x rsp_len %u\n", **(v27 + 72), **(v27 + 80), **(v27 + 88));
      goto LABEL_14;
    }

    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(a3, *(v27 + 96), (*(v27 + 96) + *v24), *v24);
    v22 = 0;
  }

  else
  {
    gBBULogMaskGet(v18, v19);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "status", "", "", 642);
    v22 = 11;
  }

LABEL_16:
  if (v27)
  {
    (*(*v27 + 16))(v27);
  }

  MEMORY[0x29C2866D0](v28);
  return v22;
}

void sub_298273A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  MEMORY[0x29C2866D0](va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::InstallPairingMSM(uint64_t a1, char **a2)
{
  AriSdk::ARI_IBIVinylPairingReq_SDK::ARI_IBIVinylPairingReq_SDK(v24);
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v25, (a1 + 292));
  v4 = operator new(4uLL);
  *v4 = 3;
  v5 = __p;
  __p = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = operator new(4uLL);
  *v6 = 1;
  v7 = v27;
  v27 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = operator new(2uLL);
  *v8 = 1;
  v9 = v28;
  v28 = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = operator new(2uLL);
  *v10 = 0;
  v11 = v29;
  v29 = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v13 = *a2;
  v12 = a2[1];
  v14 = operator new(2uLL);
  *v14 = v12 - v13;
  v15 = v30;
  v30 = v14;
  if (v15)
  {
    operator delete(v15);
    v13 = *a2;
    v12 = a2[1];
  }

  AriSdk::TlvArray<unsigned char,3584ul>::assign<std::__wrap_iter<unsigned char const*>>(&v31, v13, v12);
  v16 = eUICC::VinylCommandDriver::ManagePairing();
  if (v16)
  {
    if (*MEMORY[0x50])
    {
      gBBULogMaskGet(0, v17);
      v18 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "!GET_RSP_FIELD(rsp, result_t4)", "", "", 669);
      gBBULogMaskGet(v18, v19);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to InstallPairingMSM result %d SW1_SW2 0x%04x\n", *MEMORY[0x50], *MEMORY[0x58]);
      v20 = 18;
    }

    else
    {
      v20 = 0;
      (*(MEMORY[0] + 16))(0);
    }
  }

  else
  {
    gBBULogMaskGet(v16, v17);
    v21 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "status", "", "", 668);
    gBBULogMaskGet(v21, v22);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to InstallPairingMSM status %d\n", 0);
    v20 = 11;
  }

  MEMORY[0x29C286670](v24);
  return v20;
}

void sub_298273CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  MEMORY[0x29C286670](va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylICEValve::ManagePairingGetNonce(uint64_t a1, void **a2)
{
  AriSdk::ARI_IBIVinylPairingReq_SDK::ARI_IBIVinylPairingReq_SDK(v30);
  v28 = 0;
  v29 = 0;
  qmemcpy(v24, "NONCE", sizeof(v24));
  v26 = 0;
  v27 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v26, v24, v25, 5uLL);
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v31, (a1 + 292));
  v4 = operator new(4uLL);
  *v4 = 1;
  v5 = __p;
  __p = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = operator new(4uLL);
  *v6 = 1;
  v7 = v33;
  v33 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = operator new(2uLL);
  *v8 = 1;
  v9 = v34;
  v34 = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = operator new(2uLL);
  *v10 = 0;
  v11 = v35;
  v35 = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = v26;
  v13 = v27;
  v14 = operator new(2uLL);
  *v14 = v13 - v12;
  v15 = v36;
  v36 = v14;
  if (v15)
  {
    operator delete(v15);
    v12 = v26;
    v13 = v27;
  }

  AriSdk::TlvArray<unsigned char,3584ul>::assign<std::__wrap_iter<unsigned char *>>(&v37, v12, v13);
  v16 = eUICC::VinylCommandDriver::ManagePairing();
  if (v16)
  {
    if (**(v29 + 80))
    {
      gBBULogMaskGet(v16, v17);
      v18 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "!GET_RSP_FIELD(rsp, result_t4)", "", "", 695);
      gBBULogMaskGet(v18, v19);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to ManagePairingGetNonce result %d SW1_SW2 0x%x\n", **(v29 + 80), **(v29 + 88));
      v20 = 18;
    }

    else
    {
      gBBULogMaskGet(v16, v17);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "ManagePairingGetNonce result %d SW1_SW2 0x%04X length %d\n", **(v29 + 80), **(v29 + 88), **(v29 + 112));
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(a2, *(v29 + 120), (**(v29 + 112) + *(v29 + 120)), **(v29 + 112));
      v20 = 0;
    }
  }

  else
  {
    gBBULogMaskGet(v16, v17);
    v21 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "status", "", "", 694);
    gBBULogMaskGet(v21, v22);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to ManagePairingGetNonce status %d\n", 0);
    v20 = 11;
  }

  if (v29)
  {
    (*(*v29 + 16))(v29);
  }

  v29 = 0;
  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  MEMORY[0x29C286670](v30);
  return v20;
}

void sub_298274034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  if (__p)
  {
    operator delete(__p);
  }

  MEMORY[0x29C286670](va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

BOOL AriSdk::TlvArray<unsigned char,3584ul>::assign<std::__wrap_iter<unsigned char *>>(Ari *a1, char *a2, char *a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = a3 - a2;
  if ((a3 - a2) >= 0xE01)
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v12, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v7);
        v11 = v13 >= 0 ? v12 : v12[0];
        *__p = 136316418;
        *&__p[4] = "ari";
        v15 = 2080;
        v16 = v11;
        v17 = 1024;
        v18 = 385;
        v19 = 2048;
        v20 = a1;
        v21 = 2048;
        v22 = v4;
        v23 = 2048;
        v24 = 3584;
        _os_log_error_impl(&dword_29826A000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", __p, 0x3Au);
        if (v13 < 0)
        {
          operator delete(v12[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp9ugAn917kH9XUndyMFQOIqUsu2rgjmZKHsog/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "assign", v7);
      if (v17 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Range assignment too large(%p), got(%ld) max(%ld)", v8, v9, 385, a1, v4, 3584);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(a1, a2, a3, a3 - a2);
  }

  return v4 < 0xE01;
}

void sub_298274234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::eUICCVinylICEValve::ManagePairingAuthenticate(uint64_t a1, char **a2, char **a3)
{
  AriSdk::ARI_IBIVinylPairingReq_SDK::ARI_IBIVinylPairingReq_SDK(v30);
  v28 = 0;
  v29 = 0;
  v26 = 0;
  __dst = 0;
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&v26, *a2, a2[1], a2[1] - *a2);
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&v26, __dst, *a3, a3[1], a3[1] - *a3);
  AriSdk::Tlv<unsigned int>::operator=<int &,void>(&v31, (a1 + 292));
  v6 = operator new(4uLL);
  *v6 = 2;
  v7 = __p;
  __p = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = operator new(4uLL);
  *v8 = 1;
  v9 = v33;
  v33 = v8;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = operator new(2uLL);
  *v10 = 1;
  v11 = v34;
  v34 = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = operator new(2uLL);
  *v12 = 0;
  v13 = v35;
  v35 = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = v26;
  v15 = __dst;
  v16 = operator new(2uLL);
  *v16 = v15 - v14;
  v17 = v36;
  v36 = v16;
  if (v17)
  {
    operator delete(v17);
    v14 = v26;
    v15 = __dst;
  }

  AriSdk::TlvArray<unsigned char,3584ul>::assign<std::__wrap_iter<unsigned char *>>(&v37, v14, v15);
  v18 = eUICC::VinylCommandDriver::ManagePairing();
  if (v18)
  {
    if (**(v29 + 80))
    {
      gBBULogMaskGet(v18, v19);
      v20 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "!GET_RSP_FIELD(rsp, result_t4)", "", "", 725);
      gBBULogMaskGet(v20, v21);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to Pairing authenticate result %d SW1_SW2 0x%04x\n", **(v29 + 80), **(v29 + 88));
      v22 = 18;
    }

    else
    {
      gBBULogMaskGet(v18, v19);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "ManagePairingAuthenticate succeed\n");
      v22 = 0;
    }
  }

  else
  {
    gBBULogMaskGet(v18, v19);
    v23 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Condition <<%s>> failed %s %s/%d\n", "status", "", "", 724);
    gBBULogMaskGet(v23, v24);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylICEValve", "", "Failed to ManagePairingAuthenticate status %d\n", 0);
    v22 = 11;
  }

  if (v29)
  {
    (*(*v29 + 16))(v29);
  }

  v29 = 0;
  if (v26)
  {
    __dst = v26;
    operator delete(v26);
  }

  MEMORY[0x29C286670](v30);
  return v22;
}

void sub_29827452C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  if (v17)
  {
    operator delete(v17);
  }

  MEMORY[0x29C286670](va, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void eUICC::eUICCVinylICEValve::~eUICCVinylICEValve(eUICC::VinylCommandDriver **this)
{
  *this = &unk_2A1EB28B8;
  std::unique_ptr<eUICC::VinylCommandDriver>::reset[abi:ne200100](this + 39, 0);

  VinylCommunication::~VinylCommunication(this);
}

{
  *this = &unk_2A1EB28B8;
  std::unique_ptr<eUICC::VinylCommandDriver>::reset[abi:ne200100](this + 39, 0);

  VinylCommunication::~VinylCommunication(this);
}

{
  *this = &unk_2A1EB28B8;
  std::unique_ptr<eUICC::VinylCommandDriver>::reset[abi:ne200100](this + 39, 0);
  VinylCommunication::~VinylCommunication(this);

  operator delete(v2);
}

void *std::shared_ptr<ICEARIContext>::shared_ptr[abi:ne200100]<ICEARIContext,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A1EB2968;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_2982746E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<ICEARIContext *,std::shared_ptr<ICEARIContext>::__shared_ptr_default_delete<ICEARIContext,ICEARIContext>,std::allocator<ICEARIContext>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ICEARIContext *,std::shared_ptr<ICEARIContext>::__shared_ptr_default_delete<ICEARIContext,ICEARIContext>,std::allocator<ICEARIContext>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ICEARIContext *,std::shared_ptr<ICEARIContext>::__shared_ptr_default_delete<ICEARIContext,ICEARIContext>,std::allocator<ICEARIContext>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void **std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(void **result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result >= a4)
  {
    v15 = result[1];
    v16 = v15 - v9;
    if (v15 - v9 >= a4)
    {
      v18 = a3 - __src;
      if (v18)
      {
        result = memmove(*result, __src, v18);
      }

      v14 = &v9[v18];
    }

    else
    {
      v17 = &__src[v16];
      if (v15 != v9)
      {
        result = memmove(*result, __src, v16);
        v15 = v7[1];
      }

      if (a3 != v17)
      {
        result = memmove(v15, v17, a3 - v17);
      }

      v14 = &v15[a3 - v17];
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    v12 = v7[1];
    v13 = a3 - __src;
    if (v13)
    {
      result = memmove(v7[1], __src, v13);
    }

    v14 = &v12[v13];
  }

  v7[1] = v14;
  return result;
}

void **std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (v8 - *result >= a4)
  {
    v14 = result[1];
    v15 = v14 - v9;
    if (v14 - v9 >= a4)
    {
      v20 = a3 - __src;
      if (v20)
      {
        result = memmove(*result, __src, v20);
      }

      i = &v9[v20];
    }

    else
    {
      v16 = &__src[v15];
      if (v14 != v9)
      {
        result = memmove(*result, __src, v15);
        v14 = v7[1];
      }

      v17 = v14;
      if (v16 != a3)
      {
        v17 = (&a3[v14] - v16);
        v18 = v14;
        do
        {
          v19 = *v16++;
          *v18++ = v19;
        }

        while (v16 != a3);
      }

      i = v17;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v10 = 2 * v8;
    if (2 * v8 <= a4)
    {
      v10 = a4;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<unsigned char>::__vallocate[abi:ne200100](v7, v11);
    for (i = v7[1]; v6 != a3; ++i)
    {
      v13 = *v6++;
      *i = v13;
    }
  }

  v7[1] = i;
  return result;
}

char *std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a5;
  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((v9 - v10) >= a5)
  {
    v17 = v10 - __dst;
    if ((v10 - __dst) >= a5)
    {
      v21 = &__dst[a5];
      v22 = (v10 - a5);
      v23 = *(a1 + 8);
      if (v10 >= a5)
      {
        do
        {
          v24 = *v22++;
          *v23++ = v24;
        }

        while (v22 != v10);
      }

      *(a1 + 8) = v23;
      if (v10 != v21)
      {
        memmove(&__dst[a5], __dst, v10 - v21);
      }

      v25 = v5;
      v26 = v7;
      v27 = v6;
    }

    else
    {
      v18 = &__src[v17];
      if (&__src[v17] == a4)
      {
        v19 = *(a1 + 8);
        v20 = v19;
      }

      else
      {
        v19 = (&a4[v10] - v18);
        v20 = *(a1 + 8);
        do
        {
          v35 = *v18++;
          *v20++ = v35;
        }

        while (v18 != a4);
      }

      *(a1 + 8) = v19;
      if (v17 < 1)
      {
        return v5;
      }

      v36 = &__dst[a5];
      v37 = &v19[-a5];
      v38 = v19;
      if (&v19[-a5] < v10)
      {
        do
        {
          v39 = *v37++;
          *v38++ = v39;
        }

        while (v37 != v10);
      }

      *(a1 + 8) = v38;
      if (v20 != v36)
      {
        memmove(&__dst[a5], __dst, v19 - v36);
      }

      v25 = v5;
      v26 = v7;
      v27 = v10 - v5;
    }

    memmove(v25, v26, v27);
    return v5;
  }

  v11 = *a1;
  v12 = v10 - *a1 + a5;
  if (v12 < 0)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v13 = (__dst - v11);
  v14 = v9 - v11;
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    v16 = operator new(v15);
  }

  else
  {
    v16 = 0;
  }

  v28 = &v13[v16];
  v29 = &v13[v16 + v6];
  v30 = v28;
  do
  {
    v31 = *v7++;
    *v30++ = v31;
    --v6;
  }

  while (v6);
  v32 = v16 + v15;
  memcpy(v29, v5, v10 - v5);
  *(a1 + 8) = v5;
  v33 = *a1;
  v34 = &v28[*a1 - v5];
  memcpy(v34, *a1, &v5[-*a1]);
  *a1 = v34;
  *(a1 + 8) = &v29[v10 - v5];
  *(a1 + 16) = v32;
  if (v33)
  {
    operator delete(v33);
  }

  return v28;
}

void std::unique_ptr<eUICC::VinylCommandDriver>::reset[abi:ne200100](eUICC::VinylCommandDriver **a1, eUICC::VinylCommandDriver *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    eUICC::VinylCommandDriver::~VinylCommandDriver(v3);

    operator delete(v4);
  }
}

__n128 std::vector<unsigned char>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t __cxx_global_var_init_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_29826A000);
  }

  return result;
}

VinylDaleCommunication *VinylCommunication::create(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if ((*gBBULogMaskGet(a1, a2) & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "VinylCommunication", "", "VinylCommunication::create");
  }

  RadioVendor = TelephonyRadiosGetRadioVendor();
  if ((RadioVendor - 2) < 2)
  {
    v7 = operator new(0x40uLL);
    VinylICECommunication::VinylICECommunication(v7, v3, a2);
  }

  else
  {
    v6 = RadioVendor;
    if (RadioVendor == 4)
    {
      v7 = operator new(0x58uLL);
      VinylDaleCommunication::VinylDaleCommunication(v7);
    }

    else if (RadioVendor == 1)
    {
      v7 = operator new(0x38uLL);
      VinylEURCommunication::VinylEURCommunication(v7, a2);
    }

    else
    {
      gBBULogMaskGet(RadioVendor, v5);
      _BBULog(0, 0xFFFFFFFFLL, "VinylCommunication", "", "Unhandled radio(%d) type or no radio\n", v6);
      return 0;
    }
  }

  return v7;
}

void *VinylCommunication::create(uint64_t *a1, uint64_t a2)
{
  if ((*gBBULogMaskGet(a1, a2) & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(2, 0, "VinylCommunication", "", "VinylCommunication::create");
  }

  RadioVendor = TelephonyRadiosGetRadioVendor();
  if (RadioVendor == 4)
  {
    v5 = operator new(0x58uLL);
    v6 = v5;
    v7 = a1[1];
    v10 = *a1;
    v11 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    VinylDaleCommunication::VinylDaleCommunication(v5, &v10);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  else
  {
    v8 = RadioVendor;
    gBBULogMaskGet(RadioVendor, v4);
    _BBULog(0, 0xFFFFFFFFLL, "VinylCommunication", "", "Unhandled radio(%d) type or no radio\n", v8);
    return 0;
  }

  return v6;
}

void sub_298274F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  operator delete(v12);
  _Unwind_Resume(a1);
}

uint64_t VinylCommunication::VinylCommunication(uint64_t result, int a2, uint64_t a3)
{
  *result = &unk_2A1EB29E0;
  *(result + 8) = a2;
  *(result + 16) = a3;
  return result;
}

uint64_t VinylEURCommunication::VinylEURCommunication(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *a1 = &unk_2A1EB3A50;
  *(a1 + 24) = dispatch_queue_create("com.apple.VinylCommunication", 0);
  *(a1 + 32) = dispatch_queue_create("com.apple.VinylStatuscallback", 0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 35;
  return a1;
}

uint64_t VinylICECommunication::VinylICECommunication(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *a1 = &unk_2A1EB39F0;
  *(a1 + 24) = 0;
  *(a1 + 32) = dispatch_queue_create("com.apple.VinylCommunication", 0);
  *(a1 + 40) = dispatch_queue_create("com.apple.VinylStatuscallback", 0);
  *(a1 + 48) = 0;
  *(a1 + 56) = 35;
  return a1;
}

void VinylDaleCommunication::VinylDaleCommunication(VinylDaleCommunication *this)
{
  *(this + 2) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1EB2BB8;
  *(this + 3) = dispatch_queue_create("com.apple.VinylStatuscallback", 0);
  *(this + 4) = dispatch_queue_create("com.apple.VinylCommunicationMisc", 0);
  *(this + 10) = 35;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 80) = 0;
}

uint64_t VinylDaleCommunication::VinylDaleCommunication(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2A1EB2BB8;
  *(a1 + 24) = dispatch_queue_create("com.apple.VinylStatuscallback", 0);
  *(a1 + 32) = dispatch_queue_create("com.apple.VinylCommunicationMisc", 0);
  *(a1 + 40) = 35;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v6 = *(a1 + 56);
    *(a1 + 48) = v5;
    *(a1 + 56) = v4;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    *(a1 + 48) = v5;
    *(a1 + 56) = 0;
  }

  return a1;
}

uint64_t eUICC::logEUICCData(int *a1, uint64_t a2)
{
  gBBULogMaskGet(a1, a2);
  v3 = *(a1 + 5);
  v4 = *a1;
  ctu::hex(v33, (a1 + 7), 0x10);
  if (v34 >= 0)
  {
    v5 = v33;
  }

  else
  {
    v5 = v33[0];
  }

  v6 = _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "status 0x%x sw1_sw2 0x%x eid 0x%s op_mode 0x%hhx\n", v4, v3, v5, *(a1 + 23));
  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  gBBULogMaskGet(v6, v7);
  v8 = v33;
  ctu::hex(v33, (a1 + 6), 0x20);
  if (v34 < 0)
  {
    v8 = v33[0];
  }

  ctu::hex(v31, (a1 + 14), 8);
  v9 = v32;
  v10 = v31[0];
  ctu::hex(__p, (a1 + 16), 8);
  v11 = v31;
  if (v9 < 0)
  {
    v11 = v10;
  }

  if (v30 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  v13 = _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "current_fw_version %s main_fw_nonce 0x%s gold_fw_nonce 0x%s\n", v8, v11, v12);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  gBBULogMaskGet(v13, v14);
  ctu::hex(v33, (a1 + 18), 0x10);
  v15 = v34;
  v16 = v33[0];
  ctu::hex(v31, (a1 + 147), 0x10);
  if (v15 >= 0)
  {
    v17 = v33;
  }

  else
  {
    v17 = v16;
  }

  if (v32 >= 0)
  {
    v18 = v31;
  }

  else
  {
    v18 = v31[0];
  }

  v19 = _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "main_fw_pcf_mac 0x%s gold_fw_pcf_mac 0x%s pcf_version 0x%x\n", v17, v18, *(a1 + 111));
  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  gBBULogMaskGet(v19, v20);
  ctu::hex(v33, (a1 + 60), 3);
  v21 = v34;
  v22 = v33[0];
  ctu::hex(v31, (a1 + 243), 0x20);
  if (v21 >= 0)
  {
    v23 = v33;
  }

  else
  {
    v23 = v22;
  }

  if (v32 >= 0)
  {
    v24 = v31;
  }

  else
  {
    v24 = v31[0];
  }

  v25 = _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "loader_version 0x%s key_id 0x%s perso %d\n", v23, v24, *(a1 + 4));
  if (v32 < 0)
  {
    operator delete(v31[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  gBBULogMaskGet(v25, v26);
  if (*(a1 + 279))
  {
    v27 = "Yes";
  }

  else
  {
    v27 = "No";
  }

  return _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylValve", "", "chip_id 0x%x stream_apdu_max_apdus 0x%x isAbsentOk: %s\n", *(a1 + 275), *(a1 + 276), v27);
}

void sub_298275498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (*(v25 - 49) < 0)
  {
    operator delete(*(v25 - 72));
  }

  _Unwind_Resume(exception_object);
}

unint64_t DEREncodeItemIntoVector(unint64_t a1, unint64_t a2, const void *a3, unint64_t *a4)
{
  v8 = DERLengthOfItem(a1, a2);
  v15 = v8;
  v9 = *a4;
  v10 = a4[1] - *a4;
  if (v8 <= v10)
  {
    if (v8 < v10)
    {
      a4[1] = v9 + v8;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a4, v8 - v10);
    v9 = *a4;
  }

  v11 = DEREncodeItem(a1, a2, a3, v9, &v15);
  if (v11)
  {
    v12 = *a4;
  }

  else
  {
    v13 = a4[1] - *a4;
    if (v15 > v13)
    {
      std::vector<unsigned char>::__append(a4, v15 - v13);
      return v11;
    }

    if (v15 >= v13)
    {
      return v11;
    }

    v12 = *a4 + v15;
  }

  a4[1] = v12;
  return v11;
}

uint64_t DEREncodeSequenceIntoVector(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4)
{
  v8 = DERLengthOfEncodedSequence(a1, a2, *(a3 + 4), *a3);
  v15 = v8;
  v9 = *a4;
  v10 = a4[1] - *a4;
  if (v8 <= v10)
  {
    if (v8 < v10)
    {
      a4[1] = v9 + v8;
    }
  }

  else
  {
    std::vector<unsigned char>::__append(a4, v8 - v10);
    v9 = *a4;
  }

  v11 = DEREncodeSequence(a1, a2, *(a3 + 4), *a3, v9, &v15);
  if (v11)
  {
    v12 = *a4;
  }

  else
  {
    v13 = a4[1] - *a4;
    if (v15 > v13)
    {
      std::vector<unsigned char>::__append(a4, v15 - v13);
      return v11;
    }

    if (v15 >= v13)
    {
      return v11;
    }

    v12 = *a4 + v15;
  }

  a4[1] = v12;
  return v11;
}

uint64_t DERDecodeBBTicket(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v16[6] = xmmword_2982BF328;
  v16[7] = unk_2982BF338;
  v16[8] = xmmword_2982BF348;
  v16[2] = xmmword_2982BF2E8;
  v16[3] = unk_2982BF2F8;
  v16[4] = xmmword_2982BF308;
  v16[5] = unk_2982BF318;
  v16[0] = xmmword_2982BF2C8;
  v16[1] = unk_2982BF2D8;
  v14[6] = xmmword_2982BF3B8;
  v14[7] = unk_2982BF3C8;
  v14[8] = xmmword_2982BF3D8;
  v14[9] = unk_2982BF3E8;
  v14[2] = xmmword_2982BF378;
  v14[3] = unk_2982BF388;
  v14[4] = xmmword_2982BF398;
  v14[5] = unk_2982BF3A8;
  v14[0] = xmmword_2982BF358;
  v14[1] = unk_2982BF368;
  v15 = 1;
  v11[0] = a1;
  v11[1] = a2;
  result = DERDecodeItem(v11, &v12);
  if (!result)
  {
    if (v12 == 0x2000000000000010)
    {
      if (TelephonyRadiosGetRadioVendor() == 1)
      {
        v5 = v14;
        v6 = 7;
      }

      else
      {
        v5 = v16;
        v6 = 6;
      }

      result = DERParseSequenceContent(&v13, v6, v5, a3, 0);
      if (!result)
      {
        v7 = *(a3 + 16);
        v8 = *v7;
        v9 = *(v7 + 4);
        v10 = v8 == 0x43DCE48862A0806 && v9 == 771;
        result = 3;
        if (v10)
        {
          if (*(a3 + 24) == 10)
          {
            return 0;
          }

          else
          {
            return 3;
          }
        }
      }
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t parseAndCheckIfTagEnabled(uint64_t a1, unsigned int a2, int *a3)
{
  v12 = 0;
  v5 = DERDecodeSeqInit(a1, &v12, v13);
  v6 = 0;
  if (!v5)
  {
    v7 = a2 | 0x8000000000000000;
    while (1)
    {
      v5 = DERDecodeSeqNext(v13, &v9);
      if (v5)
      {
        break;
      }

      if (v9 == v7)
      {
        if (v11 != 4)
        {
          v6 = 0;
LABEL_14:
          v5 = 3;
          goto LABEL_12;
        }

        v6 = 0;
        if (*v10)
        {
          if (*v10 != 1)
          {
            goto LABEL_14;
          }

          v6 = 1;
        }
      }
    }

    if (v5 == 1)
    {
      v5 = 0;
    }

    else
    {
      v6 = 0;
    }
  }

LABEL_12:
  *a3 = v5;
  return v6 & 1;
}

uint64_t isBBTicketCalibEnabled(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  result = parseAndCheckIfTagEnabled(a1 + 48, 0xD4u, &v4);
  if (v4)
  {
    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t isBBTicketFATPCalibEnabled(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  result = parseAndCheckIfTagEnabled(a1 + 48, 0x1C2u, &v4);
  if (v4)
  {
    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t eUICC::Pairing::CreateValidatePersoPayload(unint64_t *a1, CFDictionaryRef theDict)
{
  v73 = 127;
  v72 = 17433507;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  if (!theDict)
  {
    gBBULogMaskGet(a1, 0);
    updated = VinylController::performNonUpdateOperation();
    if (updated)
    {
      updated = _BBULog(1, 6, "VinylPairing", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/NonUpdate/VinylPairing.cpp", 37, "signingPayloadDict");
    }

    gBBULogMaskGet(updated, v42);
    v29 = _BBULog(1, 0xFFFFFFFFLL, "VinylPairing", "", "To be signed dictionary is NULL\n");
    goto LABEL_63;
  }

  Count = CFDictionaryGetCount(theDict);
  v5 = Count;
  if (Count <= 0)
  {
    gBBULogMaskGet(Count, v4);
    v43 = VinylController::performNonUpdateOperation();
    if (v43)
    {
      v43 = _BBULog(1, 6, "VinylPairing", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/NonUpdate/VinylPairing.cpp", 41, "parameterCount > 0");
    }

    gBBULogMaskGet(v43, v44);
    v29 = _BBULog(1, 0xFFFFFFFFLL, "VinylPairing", "", "To be signed dictionary is empty\n");
    goto LABEL_63;
  }

  v7 = calloc(Count, 8uLL);
  if (!v7)
  {
    gBBULogMaskGet(0, v6);
    v45 = VinylController::performNonUpdateOperation();
    if (v45)
    {
      v45 = _BBULog(1, 6, "VinylPairing", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/NonUpdate/VinylPairing.cpp", 44, "keys");
    }

    gBBULogMaskGet(v45, v46);
    v29 = _BBULog(1, 0xFFFFFFFFLL, "VinylPairing", "", "Calloc dict keys failed\n");
LABEL_63:
    v9 = 0;
    v7 = 0;
    goto LABEL_67;
  }

  v9 = calloc(v5, 8uLL);
  if (v9)
  {
    CFDictionaryGetKeysAndValues(theDict, v7, v9);
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v59 = 0;
      v60 = 0;
      v61 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      __p = 0;
      v54 = 0;
      v55 = 0;
      v12 = v7[v10];
      v13 = v9[v10];
      v14 = CFGetTypeID(v12);
      if (v14 != CFStringGetTypeID())
      {
        break;
      }

      v16 = CFGetTypeID(v13);
      if (v16 != CFDataGetTypeID())
      {
        break;
      }

      Length = CFStringGetLength(v12);
      CStringPtr = CFStringGetCStringPtr(v12, 0x8000100u);
      v19 = DEREncodeItemIntoVector(0xCuLL, Length, CStringPtr, &v59);
      v11 = v19;
      if (v19)
      {
        gBBULogMaskGet(v19, v20);
        v30 = VinylController::performNonUpdateOperation();
        if (v30)
        {
          v30 = _BBULog(1, 6, "VinylPairing", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/NonUpdate/VinylPairing.cpp", 64, "(ret == DR_Success)");
        }

        gBBULogMaskGet(v30, v31);
        v27 = 1;
        _BBULog(1, 0xFFFFFFFFLL, "VinylPairing", "", "UTF8 string encoding for key failed\n");
      }

      else
      {
        v21 = CFDataGetLength(v13);
        BytePtr = CFDataGetBytePtr(v13);
        v23 = DEREncodeItemIntoVector(4uLL, v21, BytePtr, &v56);
        v11 = v23;
        if (v23)
        {
          gBBULogMaskGet(v23, v24);
          v32 = VinylController::performNonUpdateOperation();
          if (v32)
          {
            v32 = _BBULog(1, 6, "VinylPairing", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/NonUpdate/VinylPairing.cpp", 69, "(ret == DR_Success)");
          }

          gBBULogMaskGet(v32, v33);
          v27 = 1;
          _BBULog(1, 0xFFFFFFFFLL, "VinylPairing", "", "Octect string encoding for value failed\n");
        }

        else
        {
          v52[0] = v59;
          v52[1] = v60 - v59;
          v52[2] = v56;
          v52[3] = v57 - v56;
          v25 = DEREncodeSequenceIntoVector(0x2000000000000010, v52, &eUICC::Pairing::derKeyValueSpec, &__p);
          v11 = v25;
          if (!v25)
          {
            std::vector<unsigned char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(&v68, v69, __p, v54, v54 - __p);
            v27 = 0;
            v11 = 0;
LABEL_13:
            v28 = 1;
            goto LABEL_14;
          }

          gBBULogMaskGet(v25, v26);
          v34 = VinylController::performNonUpdateOperation();
          if (v34)
          {
            v34 = _BBULog(1, 6, "VinylPairing", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/NonUpdate/VinylPairing.cpp", 78, "(ret == DR_Success)");
          }

          gBBULogMaskGet(v34, v35);
          v27 = 1;
          _BBULog(1, 0xFFFFFFFFLL, "VinylPairing", "", "Creating sequence using Key, Value pair failed\n");
        }
      }

      v28 = 0;
LABEL_14:
      if (__p)
      {
        v54 = __p;
        operator delete(__p);
      }

      if (v56)
      {
        v57 = v56;
        operator delete(v56);
      }

      v29 = v59;
      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      if ((v28 & 1) == 0)
      {
        if (v27)
        {
          goto LABEL_40;
        }

        goto LABEL_47;
      }

      if (v5 == ++v10)
      {
        v36 = DEREncodeItemIntoVector(0x2000000000000010uLL, v69 - v68, v68, &v65);
        v11 = v36;
        if (v36)
        {
          gBBULogMaskGet(v36, v37);
          v29 = _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 86);
        }

        else
        {
          v38 = DEREncodeItemIntoVector(0xA000000000000005, v66 - v65, v65, &v62);
          v11 = v38;
          if (v38)
          {
            gBBULogMaskGet(v38, v39);
            v29 = _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 90);
          }

          else
          {
            v71[0] = &v72;
            v71[1] = 5;
            v71[2] = v62;
            v71[3] = v63 - v62;
            v29 = DEREncodeSequenceIntoVector(0x2000000000000010, v71, &eUICC::Pairing::derKeyValueSpec, a1);
            v11 = v29;
            if (v29)
            {
              gBBULogMaskGet(v29, v15);
              v49 = VinylController::performNonUpdateOperation();
              if (v49)
              {
                v49 = _BBULog(1, 6, "VinylPairing", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/NonUpdate/VinylPairing.cpp", 99, "(ret == DR_Success)");
              }

              gBBULogMaskGet(v49, v50);
              v29 = _BBULog(1, 0xFFFFFFFFLL, "VinylPairing", "", "Creating validatePerso sequence failed\n");
            }
          }
        }

        goto LABEL_40;
      }
    }

    v27 = 0;
    goto LABEL_13;
  }

  gBBULogMaskGet(0, v8);
  v47 = VinylController::performNonUpdateOperation();
  if (v47)
  {
    v47 = _BBULog(1, 6, "VinylPairing", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/NonUpdate/VinylPairing.cpp", 47, "values");
  }

  gBBULogMaskGet(v47, v48);
  v29 = _BBULog(1, 0xFFFFFFFFLL, "VinylPairing", "", "Calloc dict values failed\n");
  v9 = 0;
LABEL_67:
  v11 = 0;
LABEL_40:
  gBBULogMaskGet(v29, v15);
  _BBULog(22, 0xFFFFFFFFLL, "VinylPairing", "", "CreateValidatePersoPayload DR %d\n", v11);
  if (v7)
  {
    free(v7);
  }

  if (v9)
  {
    free(v9);
  }

  if (v11)
  {
    v10 = 11;
  }

  else
  {
    v10 = 0;
  }

LABEL_47:
  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }

  return v10;
}

void sub_2982760A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a31)
  {
    operator delete(a31);
  }

  v34 = *(v32 - 152);
  if (v34)
  {
    *(v32 - 144) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Pairing::GetParameters(const __CFDictionary *a1, __CFDictionary **a2, void *a3)
{
  v99 = 0;
  v100 = 0;
  v98[0] = 0;
  v98[1] = 0;
  v97[0] = 0;
  v97[1] = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  __p = 0;
  v76 = 0;
  v77 = 0;
  gBBULogMaskGet(a1, a2);
  v6 = _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "In GetParameters\n");
  if (a2)
  {
    ValidatePersoPayload = eUICC::Pairing::CreateValidatePersoPayload(&v78, a1);
    gBBULogMaskGet(ValidatePersoPayload, v9);
    _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v78, v79 - v78, 32);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v11 = (*(**a3 + 72))(*a3, &v78, &__p);
    v12 = VinylControllerMapBBUReturnToVinylResult(v11);
    v14 = v12;
    if (v12)
    {
      gBBULogMaskGet(v12, v13);
      if (VinylController::performNonUpdateOperation())
      {
        _BBULog(1, 6, "VinylPairing", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/NonUpdate/VinylPairing.cpp", 141, "kVinylResultSuccess == ret");
      }

      goto LABEL_16;
    }

    v99 = __p;
    v100 = v76 - __p;
    v15 = DERDecodeSeqContentInit(&v99, v98);
    if (v15)
    {
      gBBULogMaskGet(v15, v16);
      v17 = 147;
LABEL_15:
      _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "Condition <<%s>> failed %s %s/%d\n", "(der_ret == DR_Success)", "", "", v17);
      v14 = 27;
LABEL_16:
      *a2 = Mutable;
      goto LABEL_17;
    }

    v18 = DERDecodeSeqNext(v98, &v95);
    if (v18)
    {
      gBBULogMaskGet(v18, v19);
      v17 = 150;
      goto LABEL_15;
    }

    v20 = DERParseSequenceContent(&v96, 4u, &eUICC::Pairing::LPASigningRespSpec, &bytes, 0x40uLL);
    if (v20)
    {
      gBBULogMaskGet(v20, v21);
      v17 = 158;
      goto LABEL_15;
    }

    v22 = DERDecodeSeqContentInit(&bytes, v97);
    if (v22)
    {
      gBBULogMaskGet(v22, v23);
      v17 = 162;
      goto LABEL_15;
    }

    v24 = DERDecodeSeqNext(v97, &v93);
    if (v24)
    {
      gBBULogMaskGet(v24, v25);
      v17 = 164;
      goto LABEL_15;
    }

    v26 = DERParseSequenceContent(&v94, 6u, &eUICC::Pairing::euiccSignedLPADataSpec, &v81, 0x60uLL);
    if (v26)
    {
      gBBULogMaskGet(v26, v27);
      v17 = 172;
      goto LABEL_15;
    }

    if (length)
    {
      v29 = CFDataCreate(0, bytes, length);
      CFDictionarySetValue(Mutable, @"euiccSignedLPAData", v29);
      gBBULogMaskGet(v30, v31);
      v32 = _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "euiccSignedLPAData:: \n");
      gBBULogMaskGet(v32, v33);
      BytePtr = CFDataGetBytePtr(v29);
      v35 = CFDataGetLength(v29);
      _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", BytePtr, v35, 32);
    }

    else
    {
      v29 = 0;
    }

    if (v82)
    {
      v36 = CFDataCreate(0, v81, v82);
      CFDictionarySetValue(Mutable, @"eidValue", v36);
      gBBULogMaskGet(v37, v38);
      v39 = _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "eidValue:: \n");
      gBBULogMaskGet(v39, v40);
      v41 = CFDataGetBytePtr(v36);
      v42 = CFDataGetLength(v36);
      _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v41, v42, 32);
    }

    else
    {
      v36 = 0;
    }

    if (v84)
    {
      v43 = CFDataCreate(0, v83, v84);
      CFDictionarySetValue(Mutable, @"eUICCPublicKey", v43);
      gBBULogMaskGet(v44, v45);
      v46 = _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "eUICCPublicKey:: \n");
      gBBULogMaskGet(v46, v47);
      v48 = CFDataGetBytePtr(v43);
      v49 = CFDataGetLength(v43);
      _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v48, v49, 32);
    }

    else
    {
      v43 = 0;
    }

    if (v88)
    {
      v50 = CFDataCreate(0, v87, v88);
      CFDictionarySetValue(Mutable, @"euiccSignature", v50);
      gBBULogMaskGet(v51, v52);
      v53 = _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "euiccSignature:: \n");
      gBBULogMaskGet(v53, v54);
      v55 = CFDataGetBytePtr(v50);
      v56 = CFDataGetLength(v50);
      _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v55, v56, 32);
    }

    else
    {
      v50 = 0;
    }

    v57 = 0;
    v58 = v90;
    if (v90 && v92)
    {
      v57 = CFDataCreateMutable(0, 0);
      CFDataAppendBytes(v57, v89, v90);
      CFDataAppendBytes(v57, v91, v92);
      CFDictionarySetValue(Mutable, @"euicceumCertificate", v57);
      v58 = v90;
    }

    if (v58)
    {
      v59 = CFDataCreate(0, v89, v58);
      CFDictionarySetValue(Mutable, @"euiccCertificate", v59);
      gBBULogMaskGet(v60, v61);
      v62 = _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "euiccCertificate:: \n");
      gBBULogMaskGet(v62, v63);
      v64 = CFDataGetBytePtr(v59);
      v65 = CFDataGetLength(v59);
      _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v64, v65, 32);
    }

    else
    {
      v59 = 0;
    }

    if (v92)
    {
      v66 = CFDataCreate(0, v91, v92);
      CFDictionarySetValue(Mutable, @"eumCertificate", v66);
      gBBULogMaskGet(v67, v68);
      v69 = _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "eumCertificate:: \n");
      gBBULogMaskGet(v69, v70);
      v71 = CFDataGetBytePtr(v66);
      v72 = CFDataGetLength(v66);
      _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v71, v72, 32);
    }

    else
    {
      v66 = 0;
    }

    *a2 = Mutable;
    if (v29)
    {
      CFRelease(v29);
    }

    if (v36)
    {
      CFRelease(v36);
    }

    if (v43)
    {
      CFRelease(v43);
    }

    if (v50)
    {
      CFRelease(v50);
    }

    if (v59)
    {
      CFRelease(v59);
    }

    if (v66)
    {
      CFRelease(v66);
    }

    if (v57)
    {
      CFRelease(v57);
    }

    v14 = 0;
  }

  else
  {
    gBBULogMaskGet(v6, v7);
    updated = VinylController::performNonUpdateOperation();
    if (updated)
    {
      updated = _BBULog(1, 6, "VinylPairing", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/NonUpdate/VinylPairing.cpp", 132, "rsp_data");
    }

    gBBULogMaskGet(updated, v74);
    _BBULog(1, 0xFFFFFFFFLL, "VinylPairing", "", "Null rsp dictionary reference passed\n");
    v14 = 30;
  }

LABEL_17:
  if (__p)
  {
    v76 = __p;
    operator delete(__p);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  return v14;
}

void sub_2982768A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Pairing::GetParametersDummy(eUICC::Pairing *this, const __CFDictionary **a2)
{
  gBBULogMaskGet(this, a2);
  v3 = _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "In GetParametersDummy\n");
  if (this)
  {
    v60 = this;
    v5 = *MEMORY[0x29EDB8ED8];
    v6 = CFDataCreate(*MEMORY[0x29EDB8ED8], &eUICC::Pairing::GetParametersDummy(__CFDictionary const**)::signedLPA[5], 16);
    v58 = CFDataCreate(v5, &eUICC::Pairing::GetParametersDummy(__CFDictionary const**)::signedLPA[108], 91);
    v7 = CFDataCreate(v5, eUICC::Pairing::GetParametersDummy(__CFDictionary const**)::signedLPA, 199);
    v8 = CFDataCreate(v5, eUICC::Pairing::GetParametersDummy(__CFDictionary const**)::signature, 64);
    v9 = CFDataCreate(v5, eUICC::Pairing::GetParametersDummy(__CFDictionary const**)::euiccCert, 626);
    v10 = CFDataCreate(v5, eUICC::Pairing::GetParametersDummy(__CFDictionary const**)::eumCert, 768);
    MutableCopy = CFDataCreateMutableCopy(0, 0, v10);
    BytePtr = CFDataGetBytePtr(v10);
    Length = CFDataGetLength(v10);
    CFDataAppendBytes(MutableCopy, BytePtr, Length);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v59 = v6;
    CFDictionarySetValue(Mutable, @"eidValue", v6);
    gBBULogMaskGet(v15, v16);
    v17 = _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "eidValue:: \n");
    gBBULogMaskGet(v17, v18);
    v19 = CFDataGetBytePtr(v6);
    v20 = CFDataGetLength(v6);
    _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v19, v20, 32);
    CFDictionarySetValue(Mutable, @"eUICCPublicKey", v58);
    gBBULogMaskGet(v21, v22);
    v23 = _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "eUICCPublicKey:: \n");
    gBBULogMaskGet(v23, v24);
    v25 = CFDataGetBytePtr(v58);
    v26 = CFDataGetLength(v58);
    _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v25, v26, 32);
    CFDictionarySetValue(Mutable, @"euiccSignedLPAData", v7);
    gBBULogMaskGet(v27, v28);
    v29 = _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "euiccSignedLPAData:: \n");
    gBBULogMaskGet(v29, v30);
    v31 = CFDataGetBytePtr(v7);
    v32 = CFDataGetLength(v7);
    _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v31, v32, 32);
    CFDictionarySetValue(Mutable, @"euiccSignature", v8);
    gBBULogMaskGet(v33, v34);
    v35 = _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "euiccSignature:: \n");
    gBBULogMaskGet(v35, v36);
    v37 = CFDataGetBytePtr(v8);
    v38 = CFDataGetLength(v8);
    _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v37, v38, 32);
    CFDictionarySetValue(Mutable, @"euiccCertificate", v9);
    gBBULogMaskGet(v39, v40);
    v41 = _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "euiccCertificate:: \n");
    gBBULogMaskGet(v41, v42);
    v43 = CFDataGetBytePtr(v9);
    v44 = CFDataGetLength(v9);
    _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v43, v44, 32);
    CFDictionarySetValue(Mutable, @"eumCertificate", v10);
    gBBULogMaskGet(v45, v46);
    v47 = _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "eumCertificate:: \n");
    gBBULogMaskGet(v47, v48);
    v49 = CFDataGetBytePtr(v10);
    v50 = CFDataGetLength(v10);
    _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v49, v50, 32);
    CFDictionarySetValue(Mutable, @"euicceumCertificate", MutableCopy);
    gBBULogMaskGet(v51, v52);
    v53 = _BBULog(0, 0xFFFFFFFFLL, "VinylPairing", "", "euicceumCertificate:: \n");
    gBBULogMaskGet(v53, v54);
    v55 = CFDataGetBytePtr(MutableCopy);
    v56 = CFDataGetLength(MutableCopy);
    _BBULogBinary(0, 0xFFFFFFFFLL, "VinylPairing", "", v55, v56, 32);
    *v60 = Mutable;
    if (v59)
    {
      CFRelease(v59);
    }

    if (v58)
    {
      CFRelease(v58);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    return 0;
  }

  else
  {
    gBBULogMaskGet(v3, v4);
    _BBULog(1, 0xFFFFFFFFLL, "VinylPairing", "", "Null rsp dictionary reference passed\n");
    return 2;
  }
}

uint64_t *ReverseProxyGetSettings@<X0>(uint64_t a1@<X0>, const void **a2@<X8>)
{
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3002000000;
  v29[3] = __Block_byref_object_copy_;
  v29[4] = __Block_byref_object_dispose_;
  v4 = operator new(0x90uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 850045863;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 11) = 1018212795;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 124) = 0u;
  *v4 = &unk_2A1EB2A38;
  v30[0] = v4;
  v28 = v4;
  std::__assoc_sub_state::__attach_future[abi:ne200100](v4);
  *a2 = 0;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a1, *(a1 + 8));
  }

  else
  {
    v26 = *a1;
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    v31 = v26;
  }

  v30[1] = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
  }

  else
  {
    v32 = v31;
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    v33 = v32;
  }

  v5 = *MEMORY[0x29EDB8ED8];
  v34 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = CFURLCreateWithString(v5, v34, 0);
    CFRelease(v34);
  }

  else
  {
    v6 = 0;
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v27 = v6;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v7 = RPRegisterForAvailability();
  v9 = v7;
  if (!v7)
  {
    gBBULogMaskGet(0, v8);
    v16 = _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", "reg", "", "", 41);
    gBBULogMaskGet(v16, v17);
    _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Failed to register for proxy\n");
    if (!v6)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v10 = *(a1 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 8);
  }

  if (v10 && v6)
  {
    RPRegistrationResume();
    v33.__r_.__value_.__r.__words[0] = 5;
    v11 = std::__assoc_sub_state::wait_for[abi:ne200100]<long long,std::ratio<1l,1l>>(v4, &v33);
    v12 = RPRegistrationInvalidate();
    if (v11)
    {
      gBBULogMaskGet(v12, v13);
      v14 = _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", "fs == std::future_status::ready", "", "", 47);
      gBBULogMaskGet(v14, v15);
      _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "PRP timed out %d\n", v11);
    }

    else
    {
      v22 = std::future<BOOL>::get(&v28);
      if (v22)
      {
        v33.__r_.__value_.__r.__words[0] = RPCopyProxyDictionary();
        ctu::cf::CFSharedRef<__CFDictionary const>::operator=(a2, &v33.__r_.__value_.__l.__data_);
      }

      else
      {
        gBBULogMaskGet(v22, v23);
        v24 = _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", "future.get()", "", "", 48);
        gBBULogMaskGet(v24, v25);
        _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Failed to get PRP\n");
      }
    }
  }

  else
  {
    gBBULogMaskGet(v7, v8);
    v18 = _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Condition <<%s>> failed %s %s/%d\n", "!url.empty() && urlRef", "", "", 42);
    gBBULogMaskGet(v18, v19);
    _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "NULL requestURL?\n");
  }

  CFRelease(v9);
  v6 = v27;
  if (v27)
  {
LABEL_35:
    CFRelease(v6);
  }

LABEL_36:
  v20 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
  }

  _Block_object_dispose(v29, 8);
  return std::promise<BOOL>::~promise(v30);
}

void sub_2982772B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(&a25);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(v33);
  v36 = a26;
  if (a26)
  {
    if (!atomic_fetch_add((a26 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v36 + 16))(v36);
    }
  }

  _Block_object_dispose(&a27, 8);
  std::promise<BOOL>::~promise((v34 + 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___Z23ReverseProxyGetSettingsRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 != 2)
  {
    v2 = a2;
    if (a2 == 1)
    {
      gBBULogMaskGet(result, a2);
      _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Proxy Available!\n");
      v4 = *(*(result + 32) + 8);
      v5 = 1;
      std::promise<BOOL>::set_value((v4 + 40), &v5);
    }

    else
    {
      gBBULogMaskGet(result, a2);
      _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Proxy Aborted? %d\n", v2);
    }
  }
}

void std::promise<BOOL>::set_value(uint64_t *a1, _BYTE *a2)
{
  v3 = *a1;
  if (!v3)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::__assoc_state<BOOL>::set_value<BOOL>(v3, a2);
}

uint64_t std::future<BOOL>::get(std::__assoc_sub_state **a1)
{
  v1 = *a1;
  *a1 = 0;
  std::__assoc_state<BOOL>::move(v1);
  v3 = v2;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
  }

  return v3;
}

void sub_298277504(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::future<BOOL>::get(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::operator=(const void **a1, const void **a2)
{
  v3 = *a1;
  *a1 = *a2;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__assoc_state<BOOL>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete(v3);
}

uint64_t *std::promise<BOOL>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v9.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v9);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x29C2869C0](v7, 4, v4);
        std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(v7);
        v5.__ptr_ = &v8;
        std::__assoc_sub_state::set_exception(v2, v5);
        std::exception_ptr::~exception_ptr(&v8);
        MEMORY[0x29C2869D0](v7);
        v2 = *a1;
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

uint64_t std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  __cxa_init_primary_exception();
  v3 = std::logic_error::logic_error(exception, a1);
  exception->__vftable = (MEMORY[0x29EDC9548] + 16);
  exception[1] = a1[1];

  return MEMORY[0x2A1C6FB70](v3);
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x29C2869C0](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x29EDC9430], MEMORY[0x29EDC9390]);
}

void std::__assoc_sub_state::__attach_future[abi:ne200100](uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 136);
  if ((v2 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit((a1 + 8), 1uLL, memory_order_relaxed);
  *(a1 + 136) = v2 | 2;

  std::mutex::unlock((a1 + 24));
}

void std::__assoc_state<BOOL>::set_value<BOOL>(uint64_t a1, _BYTE *a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 140) = *a2;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

uint64_t std::__assoc_sub_state::wait_for[abi:ne200100]<long long,std::ratio<1l,1l>>(uint64_t a1, uint64_t *a2)
{
  v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v5 = *a2;
  m = (a1 + 24);
  v15.__m_ = (a1 + 24);
  v15.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  v7 = *(a1 + 136);
  if ((v7 & 8) != 0)
  {
    v13 = 2;
    goto LABEL_26;
  }

  if ((v7 & 4) != 0)
  {
    goto LABEL_24;
  }

  v8 = v4.__d_.__rep_ + 1000000000 * v5;
  while (std::chrono::steady_clock::now().__d_.__rep_ < v8)
  {
    if (v8 > std::chrono::steady_clock::now().__d_.__rep_)
    {
      v9.__d_.__rep_ = v8 - std::chrono::steady_clock::now().__d_.__rep_;
      if (v9.__d_.__rep_ >= 1)
      {
        std::chrono::steady_clock::now();
        v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        if (v10.__d_.__rep_)
        {
          if (v10.__d_.__rep_ < 1)
          {
            if (v10.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              goto LABEL_14;
            }

            v11 = 0x8000000000000000;
          }

          else
          {
            if (v10.__d_.__rep_ > 0x20C49BA5E353F7)
            {
              v11 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_15;
            }

LABEL_14:
            v11 = 1000 * v10.__d_.__rep_;
LABEL_15:
            if (v11 > (v9.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
            {
              v12.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_18;
            }
          }
        }

        else
        {
          v11 = 0;
        }

        v12.__d_.__rep_ = v11 + v9.__d_.__rep_;
LABEL_18:
        std::condition_variable::__do_timed_wait((a1 + 88), &v15, v12);
        std::chrono::steady_clock::now();
      }

      std::chrono::steady_clock::now();
    }

    v7 = *(a1 + 136);
    if ((v7 & 4) != 0)
    {
      goto LABEL_24;
    }
  }

  v7 = *(a1 + 136);
LABEL_24:
  v13 = ((v7 >> 2) & 1) == 0;
  if (v15.__owns_)
  {
    m = v15.__m_;
LABEL_26:
    std::mutex::unlock(m);
  }

  return v13;
}

void std::__assoc_state<BOOL>::move(std::__assoc_sub_state *a1)
{
  __lk.__m_ = &a1->__mut_;
  __lk.__owns_ = 1;
  std::mutex::lock(&a1->__mut_);
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  ptr = a1->__exception_.__ptr_;
  v5.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v5);
  if (ptr)
  {
    std::exception_ptr::exception_ptr(&v4, &a1->__exception_);
    v3.__ptr_ = &v4;
    std::rethrow_exception(v3);
    __break(1u);
  }

  else if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_298277BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t *BBUCapabilities::create_default_global@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  v2 = operator new(4uLL);
  *v2 = TelephonyRadiosGetProduct();

  return std::shared_ptr<BBUCapabilities>::shared_ptr[abi:ne200100]<BBUCapabilities,0>(a1, v2);
}

capabilities::euicc *BBUCapabilities::supportsVinylRestore(BBUCapabilities *this)
{
  if (capabilities::euicc::supportsVinylRestore(this))
  {
    return 1;
  }

  pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  if (!xmmword_2A13A8CA0)
  {
    BBUCapabilities::create_default_global(&v7);
    v5 = v7;
    v7 = 0uLL;
    v6 = *(&xmmword_2A13A8CA0 + 1);
    xmmword_2A13A8CA0 = v5;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      if (*(&v7 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
      }
    }
  }

  v2 = *(&xmmword_2A13A8CA0 + 1);
  if (*(&xmmword_2A13A8CA0 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A13A8CA0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v3 = pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
  v1 = BBUCapabilities::supportsVinylUpdate(v3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return v1;
}

capabilities::euicc *BBUCapabilities::supportsVinylUpdate(BBUCapabilities *this)
{
  IsInternalBuild = TelephonyUtilIsInternalBuild();
  if (IsInternalBuild && (IsInternalBuild = BBUpdaterCommon::isNVRAMKeyPresent(@"VinylForceGenericUpdate", v2), IsInternalBuild))
  {
    gBBULogMaskGet(IsInternalBuild, v3);
    result = _BBULog(0, 0xFFFFFFFFLL, "BBUCapabilities", "", "kVinylForceGenericUpdate NV set to TRUE\n");
  }

  else
  {
    result = capabilities::euicc::supportsGenericUpdater(IsInternalBuild);
    if (!result)
    {
      return result;
    }
  }

  return (capabilities::euicc::supportsEOS(result) ^ 1);
}

uint64_t BBUCapabilities::getEUICCCertIDSize(BBUCapabilities *this, unsigned int a2)
{
  if (a2 <= 4)
  {
    return 4;
  }

  else
  {
    return 20;
  }
}

void *std::shared_ptr<BBUCapabilities>::shared_ptr[abi:ne200100]<BBUCapabilities,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A1EB2A80;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_298277E8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<BBUCapabilities *,std::shared_ptr<BBUCapabilities>::__shared_ptr_default_delete<BBUCapabilities,BBUCapabilities>,std::allocator<BBUCapabilities>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<BBUCapabilities *,std::shared_ptr<BBUCapabilities>::__shared_ptr_default_delete<BBUCapabilities,BBUCapabilities>,std::allocator<BBUCapabilities>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<BBUCapabilities *,std::shared_ptr<BBUCapabilities>::__shared_ptr_default_delete<BBUCapabilities,BBUCapabilities>,std::allocator<BBUCapabilities>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t __cxx_global_var_init_1()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_29826A000);
  }

  return result;
}

uint64_t eUICC::Perso::Perform(uint64_t a1, uint64_t a2, void *a3)
{
  pthread_mutex_lock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  v6 = off_2A13A8D48;
  if (!off_2A13A8D48)
  {
    v7 = operator new(0x38uLL);
    v7[4] = 0;
    v7[5] = 0;
    v7[6] = 0;
    v7[1] = 0;
    v7[2] = 0;
    *v7 = 0;
    std::shared_ptr<eUICC::Perso::PersoImplementation>::shared_ptr[abi:ne200100]<eUICC::Perso::PersoImplementation,0>(&v13, v7);
    v8 = v13;
    v13 = 0uLL;
    v9 = *(&off_2A13A8D48 + 1);
    off_2A13A8D48 = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      if (*(&v13 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
      }
    }

    v6 = off_2A13A8D48;
  }

  v10 = *(&off_2A13A8D48 + 1);
  if (*(&off_2A13A8D48 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13A8D48 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  v11 = eUICC::Perso::PersoImplementation::Perform(v6, a1, a2, a3);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v11;
}

uint64_t eUICC::Perso::PersoImplementation::Perform(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  __p = 0;
  v50 = 0;
  v51 = 0;
  if (!*a4)
  {
    gBBULogMaskGet(a1, a2);
    v19 = 109;
    v20 = "vinylValve";
LABEL_15:
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v20, "", "", v19);
    v21 = 10;
    goto LABEL_20;
  }

  *(a1 + 24) = a2;
  v9 = dispatch_queue_create("PersoImpl", 0);
  v10 = *a1;
  *a1 = v9;
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(a2 + 47);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a2 + 32);
  }

  if (!v11)
  {
    gBBULogMaskGet(v10, v8);
    v19 = 114;
    v20 = "!performOptions.alderHostname.empty()";
    goto LABEL_15;
  }

  ReverseProxyGetSettings(a2 + 24, &v48);
  v12 = (a1 + 8);
  if ((a1 + 8) != &v48)
  {
    v52 = *v12;
    *v12 = v48;
    v48 = 0;
    ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v52);
  }

  v13 = ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v48);
  if (!*v12)
  {
    gBBULogMaskGet(v13, v14);
    v19 = 116;
    v20 = "this->reverseProxySettings";
    goto LABEL_15;
  }

  v15 = eUICC::Perso::PersoImplementation::ForcePerso(a1, &__p, a4);
  if (v15)
  {
    gBBULogMaskGet(v15, v16);
    v17 = 119;
    v18 = "kBBUReturnSuccess == ret";
LABEL_19:
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", v18, "", "", v17);
    v21 = 18;
    goto LABEL_20;
  }

  inited = eUICC::Perso::PersoImplementation::InitPersoDevice(a1, &__p, a4);
  if (inited || __p == v50)
  {
    gBBULogMaskGet(inited, v23);
    v17 = 123;
LABEL_18:
    v18 = "kBBUReturnSuccess == ret && !dataBuffer.empty()";
    goto LABEL_19;
  }

  v28 = eUICC::Perso::PersoImplementation::InitPersoServer(a1, &__p, a3, a4);
  if (v28 || __p == v50)
  {
    gBBULogMaskGet(v28, v29);
    v30 = 126;
LABEL_28:
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret && !dataBuffer.empty()", "", "", v30);
    v21 = 53;
    goto LABEL_20;
  }

  v31 = eUICC::Perso::PersoImplementation::AuthenticatePersoDevice(a1, &__p, a4);
  if (v31 || __p == v50)
  {
    gBBULogMaskGet(v31, v32);
    v17 = 129;
    goto LABEL_18;
  }

  WrapKeyServer = eUICC::Perso::PersoImplementation::GetWrapKeyServer(a1, &__p);
  if (WrapKeyServer || __p == v50)
  {
    gBBULogMaskGet(WrapKeyServer, v34);
    v30 = 132;
    goto LABEL_28;
  }

  v35 = eUICC::Perso::PersoImplementation::FinalizePersoDevice(a1, &__p, a4);
  v21 = v35;
  if (v35)
  {
    gBBULogMaskGet(v35, v36);
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 135);
    goto LABEL_20;
  }

  v37 = *(a1 + 16);
  *(a1 + 16) = 0;
  v52 = v37;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v52);
  NonceServer = eUICC::Perso::PersoImplementation::GetNonceServer(a1, &__p, a4);
  if (NonceServer || __p == v50)
  {
    gBBULogMaskGet(NonceServer, v39);
    v30 = 140;
    goto LABEL_28;
  }

  ValidationBlob = eUICC::Perso::PersoImplementation::CreateValidationBlob(NonceServer, &__p);
  if (ValidationBlob || __p == v50)
  {
    gBBULogMaskGet(ValidationBlob, v41);
    v30 = 143;
    goto LABEL_28;
  }

  v42 = eUICC::Perso::PersoImplementation::ValidatePersoDevice(a1, &__p, a4);
  if (v42 || __p == v50)
  {
    gBBULogMaskGet(v42, v43);
    v30 = 146;
    goto LABEL_28;
  }

  v44 = eUICC::Perso::PersoImplementation::SendReceiptServer(a1, &__p);
  v21 = v44;
  if (v44)
  {
    gBBULogMaskGet(v44, v45);
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 149);
  }

  else
  {
    v47 = *(a1 + 32);
    for (i = *(a1 + 40); i != v47; std::__destroy_at[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>,0>(i))
    {
      i -= 48;
    }

    v21 = 0;
    *(a1 + 40) = v47;
  }

LABEL_20:
  v24 = *(a1 + 16);
  *(a1 + 16) = 0;
  v52 = v24;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v52);
  *(a1 + 24) = 0;
  v26 = *a1;
  *a1 = 0;
  if (v26)
  {
    dispatch_release(v26);
  }

  gBBULogMaskGet(v26, v25);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "ret %d records %zu\n", v21, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 40) - *(a1 + 32)) >> 4));
  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  return v21;
}

void sub_2982784FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void eUICC::Perso::DumpTransactions(std::string *a1@<X8>)
{
  pthread_mutex_lock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  v2 = off_2A13A8D48;
  if (!off_2A13A8D48)
  {
    v3 = operator new(0x38uLL);
    v3[4] = 0;
    v3[5] = 0;
    v3[6] = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = 0;
    std::shared_ptr<eUICC::Perso::PersoImplementation>::shared_ptr[abi:ne200100]<eUICC::Perso::PersoImplementation,0>(&v7, v3);
    v4 = v7;
    v7 = 0uLL;
    v5 = *(&off_2A13A8D48 + 1);
    off_2A13A8D48 = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      if (*(&v7 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v7 + 1));
      }
    }

    v2 = off_2A13A8D48;
  }

  v6 = *(&off_2A13A8D48 + 1);
  if (*(&off_2A13A8D48 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A13A8D48 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<eUICC::Perso::PersoImplementation,eUICC::Perso::PersoImplementation,ctu::PthreadMutexGuardPolicy<eUICC::Perso::PersoImplementation>>::sInstance);
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::vector<std::pair<std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(a1, *(v2 + 32), *(v2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 40) - *(v2 + 32)) >> 4));
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

std::string *eUICC::Perso::PersoImplementation::DumpTransactions@<X0>(std::string *a1@<X8>, uint64_t a2@<X0>)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::vector<std::pair<std::string,std::vector<unsigned char>>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::vector<unsigned char>>*,std::pair<std::string,std::vector<unsigned char>>*>(a1, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 4));
}

void *eUICC::Perso::PersoImplementation::create_default_global@<X0>(void *a1@<X8>)
{
  v2 = operator new(0x38uLL);
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = 0;
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;

  return std::shared_ptr<eUICC::Perso::PersoImplementation>::shared_ptr[abi:ne200100]<eUICC::Perso::PersoImplementation,0>(a1, v2);
}

uint64_t eUICC::Perso::PersoImplementation::ForcePerso(BBUpdaterCommon *a1, uint64_t a2, void *a3)
{
  *&__dst[71] = *MEMORY[0x29EDCA608];
  if (*(*(a1 + 3) + 48) != 1)
  {
    return 0;
  }

  v30 = 0;
  ECID = BBUpdaterCommon::getECID(a1);
  v28 = 0;
  v29 = 0;
  __p = 0;
  v26 = 0;
  v27 = 0;
  (*(**a3 + 8))(__dst);
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if (__dst[0] != (RadioVendor - 5) < 0xFFFFFFFD)
  {
    gBBULogMaskGet(RadioVendor, v6);
    v8 = 180;
    goto LABEL_7;
  }

  if (!LOBYTE(__dst[1]))
  {
    v9 = DEREncodeItemIntoVector(4uLL, 8uLL, &ECID, &v28);
    if (v9)
    {
      gBBULogMaskGet(v9, v10);
      v11 = 186;
LABEL_13:
      v14 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == derRet", "", "", v11);
      gBBULogMaskGet(v14, v15);
      _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to encode ECID\n");
      v7 = 10;
      goto LABEL_14;
    }

    v12 = DEREncodeItemIntoVector(0x2000000000000010uLL, v29 - v28, v28, &__p);
    if (v12)
    {
      gBBULogMaskGet(v12, v13);
      v11 = 188;
      goto LABEL_13;
    }

    v17 = (*(**a3 + 56))(*a3, &__p, a2);
    v7 = v17;
    if (v17)
    {
      gBBULogMaskGet(v17, v18);
      v19 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 192);
      gBBULogMaskGet(v19, v20);
      _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete InitPerso command\n");
      goto LABEL_14;
    }

    (*(**a3 + 16))(*a3, 0, 1);
    *__ns = 10000000000;
    std::this_thread::sleep_for (__ns);
    (*(**a3 + 8))(__ns);
    memcpy(__dst, __ns, 0x11BuLL);
    v21 = TelephonyRadiosGetRadioVendor();
    if (__dst[0] == (v21 - 5) < 0xFFFFFFFD)
    {
      if (LOBYTE(__dst[1]))
      {
        goto LABEL_4;
      }

      gBBULogMaskGet(v21, v22);
      v23 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "cardData.contents.perso", "", "", 201);
      gBBULogMaskGet(v23, v24);
      _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Still persod after force?\n");
LABEL_8:
      v7 = 18;
      goto LABEL_14;
    }

    gBBULogMaskGet(v21, v22);
    v8 = 200;
LABEL_7:
    _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "cardData.Valid()", "", "", v8);
    goto LABEL_8;
  }

LABEL_4:
  v7 = 0;
LABEL_14:
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  return v7;
}

void sub_298278A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::InitPersoDevice(BBUpdaterCommon *a1, const void **a2, void *a3)
{
  v37 = 0;
  ECID = BBUpdaterCommon::getECID(a1);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v6 = DEREncodeItemIntoVector(4uLL, 8uLL, &ECID, &v34);
  if (v6)
  {
    gBBULogMaskGet(v6, v7);
    v8 = 219;
LABEL_5:
    v11 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == derRet", "", "", v8);
    gBBULogMaskGet(v11, v12);
    v13 = _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to encode ECID\n");
    v15 = 10;
    goto LABEL_6;
  }

  v9 = DEREncodeItemIntoVector(0x2000000000000010uLL, v35 - v34, v34, &v31);
  if (v9)
  {
    gBBULogMaskGet(v9, v10);
    v8 = 221;
    goto LABEL_5;
  }

  v28 = 0;
  v29 = operator new(0x19uLL);
  v30 = xmmword_2982BFCE0;
  strcpy(v29, "InitPersoDeviceBlob.bin");
  __p = 0;
  v27 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, v31, v32, v32 - v31);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v29, &__p);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  v17 = (*(**a3 + 56))(*a3, &v31, a2);
  v15 = v17;
  if (v17)
  {
    gBBULogMaskGet(v17, v18);
    v19 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 227);
    gBBULogMaskGet(v19, v20);
    v13 = _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete InitPerso command\n");
  }

  else
  {
    v23 = 0;
    v24 = operator new(0x20uLL);
    v25 = xmmword_2982BFCF0;
    strcpy(v24, "InitPersoDeviceResponse.bin");
    v21 = 0;
    v22 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v21, *a2, a2[1], a2[1] - *a2);
    eUICC::Perso::PersoImplementation::logTransactionData(a1, &v24, &v21);
    v13 = v21;
    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    v15 = 0;
  }

LABEL_6:
  gBBULogMaskGet(v13, v14);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "InitPersoDevice %d\n", v15);
  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  return v15;
}

void sub_298278D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  v32 = *(v30 - 96);
  if (v32)
  {
    *(v30 - 88) = v32;
    operator delete(v32);
  }

  v33 = *(v30 - 72);
  if (v33)
  {
    *(v30 - 64) = v33;
    operator delete(v33);
  }

  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef((v30 - 48));
  _Unwind_Resume(a1);
}

uint64_t eUICC::Perso::PersoImplementation::InitPersoServer(void *a1, const void **a2, uint64_t a3, void *(****a4)(std::string *__return_ptr))
{
  v64 = *MEMORY[0x29EDCA608];
  cf = 0;
  theDict = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v49, *a2, a2[1], a2[1] - *a2);
  memset(v61, 0, 24);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v61, v49, v50, v50 - v49);
  v59 = 0;
  memset(__p, 0, 24);
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(__p, *v61, *&v61[8], *&v61[8] - *v61);
  values[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v8 = values[0];
    v59 = values[0];
  }

  else
  {
    v8 = 0;
  }

  if (__p[0].__r_.__value_.__r.__words[0])
  {
    __p[0].__r_.__value_.__l.__size_ = __p[0].__r_.__value_.__r.__words[0];
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v52 = v8;
  if (*v61)
  {
    *&v61[8] = *v61;
    operator delete(*v61);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v47, *a3, *(a3 + 8));
  }

  else
  {
    v47 = *a3;
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v61, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
  }

  else
  {
    *v61 = v47;
  }

  v58 = 0;
  if ((v61[23] & 0x80000000) != 0)
  {
    std::string::__init_copy_ctor_external(__p, *v61, *&v61[8]);
  }

  else
  {
    __p[0] = *v61;
  }

  v59 = 0;
  if (ctu::cf::convert_copy())
  {
    v9 = v58;
    v58 = v59;
    values[0] = v9;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(values);
  }

  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v48 = v58;
  v58 = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v58);
  if ((v61[23] & 0x80000000) != 0)
  {
    operator delete(*v61);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  (***a4)(__p);
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if (LODWORD(__p[0].__r_.__value_.__l.__data_) != (RadioVendor - 5) < 0xFFFFFFFD)
  {
    gBBULogMaskGet(RadioVendor, v11);
    v18 = 0;
    v16 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "hwType.Valid()", "", "", 248);
LABEL_33:
    v15 = 18;
    goto LABEL_34;
  }

  *v61 = xmmword_29EE8E760;
  *&v61[16] = *&off_29EE8E770;
  values[0] = @"StartSession";
  values[1] = v8;
  v12 = @"2";
  if (!v63)
  {
    v12 = @"0";
  }

  values[2] = v48;
  values[3] = v12;
  v13 = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(v61, values, 4, &v53);
  v15 = v13;
  if (v13)
  {
    gBBULogMaskGet(v13, v14);
    v16 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 262);
    v18 = 0;
    goto LABEL_34;
  }

  v44 = 0;
  v45 = operator new(0x20uLL);
  v46 = xmmword_2982BFD00;
  strcpy(v45, "InitPersoServerRequest.plist");
  v42 = 0;
  v43 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v42, v53, v54, v54 - v53);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v45, &v42);
  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  v20 = eUICC::Perso::PersoImplementation::PostDataSync(a1, &v53, v61);
  v22 = *v61;
  v18 = *&v61[8];
  if (!*v61)
  {
    gBBULogMaskGet(v20, v21);
    v16 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "response", "", "", 268);
LABEL_65:
    v15 = 53;
    goto LABEL_34;
  }

  v40 = operator new(0x20uLL);
  v41 = xmmword_2982BFD10;
  strcpy(v40, "InitPersoServerResponse.plist");
  (*(*v22 + 40))(&v39, v22);
  eUICC::Perso::PersoImplementation::logTransactionCFData(a1, &v40, &v39);
  if (v39)
  {
    CFRelease(v39);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
  }

  (*(*v22 + 40))(&v38, v22);
  v15 = eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(&v38, &theDict);
  v24 = v38;
  if (v38)
  {
    CFRelease(v38);
  }

  if (v15)
  {
    gBBULogMaskGet(v24, v23);
    v16 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 272);
    goto LABEL_34;
  }

  if (!theDict)
  {
    gBBULogMaskGet(0, v23);
    v16 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "respDict", "", "", 273);
    goto LABEL_33;
  }

  values[0] = CFDictionaryGetValue(theDict, @"SessionId");
  ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(v61, values);
  v25 = a1[2];
  a1[2] = *v61;
  *v61 = v25;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(v61);
  Length = a1[2];
  if (!Length || (Length = CFStringGetLength(Length)) == 0)
  {
    gBBULogMaskGet(Length, v26);
    v31 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "this->serverSessionID && CFStringGetLength( this->serverSessionID.get()) != 0", "", "", 277);
    gBBULogMaskGet(v31, v32);
    v33 = CFCopyDescription(theDict);
    CFStringGetCStringPtr(v33, 0x8000100u);
    v16 = _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Missing or empty server sssion?! %s\n");
    goto LABEL_65;
  }

  *v61 = CFDictionaryGetValue(theDict, @"DATA");
  v28 = ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(&cf, v61);
  if (!cf)
  {
    gBBULogMaskGet(v28, 0);
    v34 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "respDataPayload", "", "", 280);
    gBBULogMaskGet(v34, v35);
    v36 = CFCopyDescription(theDict);
    CFStringGetCStringPtr(v36, 0x8000100u);
    v16 = _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Couldn't get response payload %s\n");
    goto LABEL_65;
  }

  memset(v61, 0, 24);
  ctu::cf::assign();
  v29 = *v61;
  v30 = *&v61[16];
  v16 = *a2;
  if (*a2)
  {
    a2[1] = v16;
    v37 = v29;
    operator delete(v16);
    v29 = v37;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  v15 = 0;
  *a2 = v29;
  a2[2] = v30;
LABEL_34:
  gBBULogMaskGet(v16, v17);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "InitPersoServer %d\n", v15);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v48);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&theDict);
  return v15;
}

void sub_2982795B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, const void *a39, const void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49)
{
  if (__p)
  {
    a49 = __p;
    operator delete(__p);
  }

  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a31);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a35);
  if (a36)
  {
    a37 = a36;
    operator delete(a36);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a39);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&a41);
  _Unwind_Resume(a1);
}

uint64_t eUICC::Perso::PersoImplementation::AuthenticatePersoDevice(uint64_t a1, const void **a2, void *a3)
{
  v22 = operator new(0x28uLL);
  v23 = xmmword_2982BFD20;
  strcpy(v22, "AuthenticatePersoDeviceRequest.bin");
  v20 = 0;
  v21 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, a2[1], a2[1] - *a2);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v22, &__p);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22);
  }

  v6 = (*(**a3 + 64))(*a3, a2, a2);
  v8 = v6;
  if (v6)
  {
    gBBULogMaskGet(v6, v7);
    v9 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 295);
    gBBULogMaskGet(v9, v10);
    v11 = _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete AuthPerso command\n");
  }

  else
  {
    v16 = 0;
    v17 = operator new(0x28uLL);
    v18 = xmmword_2982BFD30;
    strcpy(v17, "AuthenticatePersoDeviceResponse.bin");
    v14 = 0;
    v15 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v14, *a2, a2[1], a2[1] - *a2);
    eUICC::Perso::PersoImplementation::logTransactionData(a1, &v17, &v14);
    v11 = v14;
    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17);
    }
  }

  gBBULogMaskGet(v11, v12);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "AuthenticatePersoDevice %d\n", v8);
  return v8;
}

void sub_298279968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::GetWrapKeyServer(uint64_t a1, const void **a2)
{
  v49 = *MEMORY[0x29EDCA608];
  v41 = 0;
  v42 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v35 = 0;
  v36 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, a2[1], a2[1] - *a2);
  v48 = 0;
  keys = 0uLL;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&keys, __p, v35, v35 - __p);
  v43 = 0;
  v44 = 0uLL;
  v45 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v44, keys, *(&keys + 1), *(&keys + 1) - keys);
  values[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v4 = values[0];
    v43 = values[0];
  }

  else
  {
    v4 = 0;
  }

  if (v44)
  {
    *(&v44 + 1) = v44;
    operator delete(v44);
  }

  v37 = v4;
  if (keys)
  {
    *(&keys + 1) = keys;
    operator delete(keys);
  }

  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  keys = xmmword_29EE8E790;
  v48 = @"SessionId";
  values[0] = @"GetWrapKey";
  values[1] = v4;
  values[2] = *(a1 + 16);
  v5 = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(&keys, values, 3, &v38);
  v7 = v5;
  if (v5)
  {
    gBBULogMaskGet(v5, v6);
    v8 = 0;
    v9 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 317);
    goto LABEL_31;
  }

  v31 = 0;
  v32 = operator new(0x20uLL);
  v33 = xmmword_2982BFD10;
  strcpy(v32, "GetWrapKeyServerRequest.plist");
  v29 = 0;
  v30 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v29, v38, v39, v39 - v38);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v32, &v29);
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }

  v11 = eUICC::Perso::PersoImplementation::PostDataSync(a1, &v38, &v44);
  v8 = *(&v44 + 1);
  v13 = v44;
  if (!v44)
  {
    gBBULogMaskGet(v11, v12);
    v9 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "response", "", "", 322);
LABEL_26:
    v7 = 53;
    goto LABEL_31;
  }

  v27 = operator new(0x20uLL);
  v28 = xmmword_2982BFD40;
  strcpy(v27, "GetWrapKeyServerResponse.plist");
  (*(*v13 + 40))(&cf, v13);
  eUICC::Perso::PersoImplementation::logTransactionCFData(a1, &v27, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27);
  }

  (*(*v13 + 40))(&v25, v13);
  v7 = eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(&v25, &v42);
  v15 = v25;
  if (v25)
  {
    CFRelease(v25);
  }

  if (v7)
  {
    gBBULogMaskGet(v15, v14);
    v9 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 325);
    goto LABEL_31;
  }

  *&v44 = CFDictionaryGetValue(v42, @"DATA");
  v16 = ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(&v41, &v44);
  if (!v41)
  {
    gBBULogMaskGet(v16, 0);
    v20 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "respDataPayload", "", "", 329);
    gBBULogMaskGet(v20, v21);
    v22 = CFCopyDescription(v42);
    CStringPtr = CFStringGetCStringPtr(v22, 0x8000100u);
    v9 = _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Couldn't get response payload %s\n", CStringPtr);
    goto LABEL_26;
  }

  v44 = 0uLL;
  v45 = 0;
  ctu::cf::assign();
  v17 = v44;
  v18 = v45;
  v9 = *a2;
  if (*a2)
  {
    a2[1] = v9;
    v24 = v17;
    operator delete(v9);
    v17 = v24;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  v7 = 0;
  *a2 = v17;
  a2[2] = v18;
LABEL_31:
  gBBULogMaskGet(v9, v10);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "GetWrapKeyServer %d\n", v7);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v42);
  return v7;
}

void sub_298279ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41)
{
  v44 = *(v42 - 144);
  if (v44)
  {
    *(v42 - 136) = v44;
    operator delete(v44);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a39);
  if (__p)
  {
    a41 = __p;
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v42 - 168));
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef((v42 - 160));
  _Unwind_Resume(a1);
}

uint64_t eUICC::Perso::PersoImplementation::FinalizePersoDevice(uint64_t a1, const void **a2, void *a3)
{
  v14 = 0;
  v15 = operator new(0x20uLL);
  v16 = xmmword_2982BFD40;
  strcpy(v15, "FinalizePersoDeviceRequest.bin");
  __p = 0;
  v13 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, a2[1], a2[1] - *a2);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v15, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  v6 = (*(**a3 + 80))(*a3, a2);
  v8 = v6;
  if (v6)
  {
    gBBULogMaskGet(v6, v7);
    v9 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 344);
    gBBULogMaskGet(v9, v10);
    v6 = _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete FinalizePerso command\n");
  }

  gBBULogMaskGet(v6, v7);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "FinalizePersoDevice %d\n", v8);
  return v8;
}

void sub_29827A188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::GetNonceServer(void *a1, uint64_t a2, void *(****a3)(void *__return_ptr))
{
  v53 = *MEMORY[0x29EDCA608];
  cf = 0;
  theDict = 0;
  __p = 0;
  v44 = 0;
  v45 = 0;
  (***a3)(v49);
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if (LODWORD(v49[0]) != (RadioVendor - 5) < 0xFFFFFFFD)
  {
    gBBULogMaskGet(RadioVendor, v6);
    v13 = 0;
    v11 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "hwType.Valid()", "", "", 362);
    v10 = 18;
    goto LABEL_8;
  }

  *keys = xmmword_29EE8E780;
  if (v50)
  {
    v7 = @"2";
  }

  else
  {
    v7 = @"0";
  }

  values[0] = @"GetNonce";
  values[1] = v7;
  v8 = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(keys, values, 2, &__p);
  v10 = v8;
  if (v8)
  {
    gBBULogMaskGet(v8, v9);
    v11 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 376);
    v13 = 0;
    goto LABEL_8;
  }

  v40 = 0;
  v41 = operator new(0x20uLL);
  v42 = xmmword_2982BFCF0;
  strcpy(v41, "GetNonceServerRequest.plist");
  v38 = 0;
  v39 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v38, __p, v44, v44 - __p);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v41, &v38);
  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

  v15 = eUICC::Perso::PersoImplementation::PostDataSync(a1, &__p, keys);
  v17 = keys[0];
  v13 = keys[1];
  if (!keys[0])
  {
    gBBULogMaskGet(v15, v16);
    v11 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "response", "", "", 382);
LABEL_36:
    v10 = 53;
    goto LABEL_8;
  }

  v36 = operator new(0x20uLL);
  v37 = xmmword_2982BFD00;
  strcpy(v36, "GetNonceServerResponse.plist");
  (*(*v17 + 40))(&v35, v17);
  eUICC::Perso::PersoImplementation::logTransactionCFData(a1, &v36, &v35);
  if (v35)
  {
    CFRelease(v35);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36);
  }

  (*(*v17 + 40))(&v34, v17);
  v10 = eUICC::Perso::PersoImplementation::CreateDictionaryFromPlistData(&v34, &theDict);
  v19 = v34;
  if (v34)
  {
    CFRelease(v34);
  }

  if (v10)
  {
    gBBULogMaskGet(v19, v18);
    v11 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 385);
    goto LABEL_8;
  }

  values[0] = CFDictionaryGetValue(theDict, @"SessionId");
  v20 = ctu::cf::CFSharedRef<__CFString const>::CFSharedRef<void const,void>(keys, values);
  v21 = a1[2];
  a1[2] = keys[0];
  keys[0] = v21;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(v20);
  Length = a1[2];
  if (!Length || (Length = CFStringGetLength(Length)) == 0)
  {
    gBBULogMaskGet(Length, v22);
    v27 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "this->serverSessionID && CFStringGetLength( this->serverSessionID.get()) != 0", "", "", 389);
    gBBULogMaskGet(v27, v28);
    v29 = CFCopyDescription(theDict);
    CFStringGetCStringPtr(v29, 0x8000100u);
    v11 = _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Missing or empty server sssion?! %s\n");
    goto LABEL_36;
  }

  keys[0] = CFDictionaryGetValue(theDict, @"DATA");
  v24 = ctu::cf::CFSharedRef<__CFData const>::operator=<void const,void>(&cf, keys);
  if (!cf)
  {
    gBBULogMaskGet(v24, 0);
    v30 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "respDataPayload", "", "", 391);
    gBBULogMaskGet(v30, v31);
    v32 = CFCopyDescription(theDict);
    CFStringGetCStringPtr(v32, 0x8000100u);
    v11 = _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Couldn't get response payload %s\n");
    goto LABEL_36;
  }

  keys[0] = 0;
  keys[1] = 0;
  v52 = 0;
  ctu::cf::assign();
  v25 = *keys;
  v26 = v52;
  v11 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v11;
    v33 = v25;
    operator delete(v11);
    v25 = v33;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  v10 = 0;
  *a2 = v25;
  *(a2 + 16) = v26;
LABEL_8:
  gBBULogMaskGet(v11, v12);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "GetNonceServer %d\n", v10);
  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&theDict);
  return v10;
}

void sub_29827A758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, uint64_t a37, const void *a38, const void *a40)
{
  v42 = *(v40 - 80);
  if (v42)
  {
    *(v40 - 72) = v42;
    operator delete(v42);
  }

  if (__p)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a38);
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&a40);
  _Unwind_Resume(a1);
}

uint64_t eUICC::Perso::PersoImplementation::CreateValidationBlob(BBUpdaterCommon *a1, unint64_t *a2)
{
  v57 = *MEMORY[0x29EDCA608];
  ECID = BBUpdaterCommon::getECID(a1);
  v53 = 4;
  v52 = 17433507;
  v55[0] = 0;
  v55[2] = 512;
  *&v56[8] = 0u;
  v55[1] = 12;
  *v56 = xmmword_2982BFD50;
  *&v56[16] = 512;
  v51[0] = v55;
  v51[1] = 2;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  __p = 0;
  v27 = 0;
  v28 = 0;
  v3 = a2[1] - *a2;
  v24[0] = *a2;
  v24[1] = v3;
  v4 = DERDecodeItem(v24, v25);
  v6 = v4;
  if (v4)
  {
    gBBULogMaskGet(v4, v5);
    v7 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 451);
  }

  else
  {
    v9 = DEREncodeItemIntoVector(0xCuLL, 6uLL, "kNonce", &v35);
    v6 = v9;
    if (v9)
    {
      gBBULogMaskGet(v9, v10);
      v7 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 455);
    }

    else
    {
      v49[0] = v35;
      v49[1] = v36 - v35;
      v49[2] = v25[1];
      v49[3] = v25[2];
      v11 = DEREncodeSequenceIntoVector(0x2000000000000010, v49, v51, &v41);
      v6 = v11;
      if (v11)
      {
        gBBULogMaskGet(v11, v12);
        v7 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 461);
      }

      else
      {
        v13 = DEREncodeItemIntoVector(0xCuLL, 0x11uLL, "kDeviceIdentifier", &v44);
        v6 = v13;
        if (v13)
        {
          gBBULogMaskGet(v13, v14);
          v7 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 465);
        }

        else
        {
          v15 = DEREncodeItemIntoVector(4uLL, 8uLL, &ECID, &v38);
          v6 = v15;
          if (v15)
          {
            gBBULogMaskGet(v15, v16);
            v7 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 467);
          }

          else
          {
            v50[0] = v44;
            v50[1] = v45 - v44;
            v50[2] = v38;
            v50[3] = v39 - v38;
            v17 = DEREncodeSequenceIntoVector(0x2000000000000010, v50, v51, &v32);
            v6 = v17;
            if (v17)
            {
              gBBULogMaskGet(v17, v18);
              v7 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 473);
            }

            else
            {
              v48[0] = v32;
              v48[1] = v33 - v32;
              v48[2] = v41;
              v48[3] = v42 - v41;
              v19 = DEREncodeSequenceIntoVector(0x2000000000000010, v48, v51, &v29);
              v6 = v19;
              if (v19)
              {
                gBBULogMaskGet(v19, v20);
                v7 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 482);
              }

              else
              {
                v21 = DEREncodeItemIntoVector(0xA000000000000005, v30 - v29, v29, &__p);
                v6 = v21;
                if (v21)
                {
                  gBBULogMaskGet(v21, v22);
                  v7 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 485);
                }

                else
                {
                  v47[0] = &v52;
                  v47[1] = 5;
                  v47[2] = __p;
                  v47[3] = v27 - __p;
                  v7 = DEREncodeSequenceIntoVector(0x2000000000000010, v47, v51, a2);
                  v6 = v7;
                  if (v7)
                  {
                    gBBULogMaskGet(v7, v8);
                    v7 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "DR_Success == ret", "", "", 493);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  gBBULogMaskGet(v7, v8);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "CreateValidationBlob DR %d\n", v6);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v6)
  {
    return 11;
  }

  else
  {
    return 0;
  }
}

void sub_29827AD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  if (a33)
  {
    operator delete(a33);
  }

  if (a36)
  {
    operator delete(a36);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::ValidatePersoDevice(uint64_t a1, const void **a2, void *a3)
{
  v14 = 0;
  v15 = operator new(0x20uLL);
  v16 = xmmword_2982BFD40;
  strcpy(v15, "ValidatePersoDeviceRequest.bin");
  __p = 0;
  v13 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, a2[1], a2[1] - *a2);
  eUICC::Perso::PersoImplementation::logTransactionData(a1, &v15, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  v6 = (*(**a3 + 72))(*a3, a2, a2);
  v8 = v6;
  if (v6)
  {
    gBBULogMaskGet(v6, v7);
    v9 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 506);
    gBBULogMaskGet(v9, v10);
    v6 = _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "Failed to complete ValidatePerso command\n");
  }

  gBBULogMaskGet(v6, v7);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "ValidatePersoDevice %d\n", v8);
  return v8;
}

void sub_29827AF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t eUICC::Perso::PersoImplementation::SendReceiptServer(void *a1, const void **a2)
{
  v37 = *MEMORY[0x29EDCA608];
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v25 = 0;
  v26 = 0;
  __p = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, a2[1], a2[1] - *a2);
  v33 = 0;
  v34 = 0;
  values = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&values, __p, v25, v25 - __p);
  v31 = 0;
  keys[0] = 0;
  keys[1] = 0;
  v36 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(keys, values, v33, v33 - values);
  v18[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v4 = v18[0];
    v31 = v18[0];
  }

  else
  {
    v4 = 0;
  }

  if (keys[0])
  {
    keys[1] = keys[0];
    operator delete(keys[0]);
  }

  v27 = v4;
  if (values)
  {
    v33 = values;
    operator delete(values);
  }

  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  *keys = xmmword_29EE8E790;
  v36 = @"SessionId";
  values = @"SendReceipt";
  v33 = v4;
  v34 = a1[2];
  v5 = eUICC::Perso::PersoImplementation::SerializeKeyValuePairsIntoPlistData(keys, &values, 3, &v28);
  v7 = v5;
  if (v5)
  {
    gBBULogMaskGet(v5, v6);
    v8 = 0;
    v9 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 525);
  }

  else
  {
    v21 = 0;
    v22 = operator new(0x20uLL);
    v23 = xmmword_2982BFD40;
    strcpy(v22, "SendReceiptServerRequest.plist");
    v19 = 0;
    v20 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v19, v28, v29, v29 - v28);
    eUICC::Perso::PersoImplementation::logTransactionData(a1, &v22, &v19);
    if (v19)
    {
      v20 = v19;
      operator delete(v19);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22);
    }

    v11 = eUICC::Perso::PersoImplementation::PostDataSync(a1, &v28, v18);
    v13 = v18[0];
    v8 = v18[1];
    if (v18[0])
    {
      v16 = operator new(0x20uLL);
      v17 = xmmword_2982BFD60;
      strcpy(v16, "SendReceiptServerResponse.plist");
      (*(*v13 + 40))(&cf, v13);
      eUICC::Perso::PersoImplementation::logTransactionCFData(a1, &v16, &cf);
      v9 = cf;
      if (cf)
      {
        CFRelease(cf);
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16);
      }

      v7 = 0;
      a2[1] = *a2;
    }

    else
    {
      gBBULogMaskGet(v11, v12);
      v9 = _BBULog(0, 0xFFFFFFFFLL, "PersoImpl", "", "Condition <<%s>> failed %s %s/%d\n", "response", "", "", 530);
      v7 = 53;
    }
  }

  gBBULogMaskGet(v9, v10);
  _BBULog(22, 0xFFFFFFFFLL, "PersoImpl", "", "SendReceiptServer %d\n", v7);
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  return v7;
}