uint64_t BlueFin::GlMeClkModMgr::SetClkModFromMkf(BlueFin::GlMeClkModMgr *this, BlueFin::GlMeClkMod *a2)
{
  if (*(this + 96) == 1 && (v4 = *(a2 + 3) - *(this + 25), v4 <= 120000))
  {
    *(a2 + 2) &= 0xFFFFFFCD;
    if (*(this + 30) != v4)
    {
      *(this + 30) = v4;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = 84;
  if ((*(a2 + 2) & 0x10) == 0)
  {
    v6 = 70;
  }

  GlCustomLog(127, "SetClkModFromMkf:%f,%c\n", (*(a2 + 5) * 1000000000.0), v6);
  if ((*(a2 + 8) & 0x32) != 0)
  {
    BlueFin::GlMeClkModMgr::SetClkMod(this, a2, 0);
    return 1;
  }

  return v5;
}

uint64_t *BlueFin::GlMeSrdSatMgr::GetSignalId@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, const BlueFin::GlSatCarrId *a3@<X1>)
{
  v3 = *a3;
  v4 = 1 << (v3 & 0x1F);
  if ((v4 & *(this[15] + 4 * (v3 >> 5))) == 0 && (v4 & *(this[11] + 4 * (v3 >> 5))) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 869, "GetSignalId", "IsSatAllocated(ucSatId)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", 869, "IsSatAllocated(ucSatId)");
  }

  v5 = *(this[786] + 52 * *a3);
  v6 = *(a3 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 4) = 575;
  if (v6 != -1 && (v5 - 189) >= 0xFFFFFF44)
  {
    v7 = BlueFin::GlSvId::s_aucSvId2gnss[v5];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v6 - v6 + v7] == 255)
    {
      *(a1 + 1) = -1;
    }

    else
    {
      *(a1 + 4) = BlueFin::GlSignalId::s_ausGnss2signalId[v7] + v5 - BlueFin::GlSvId::s_aucGnss2minSvId[v7] + v6 * BlueFin::GlSvId::s_aucGnss2numSvId[v7];
    }
  }

  return this;
}

double BlueFin::GlMeSrdSatTrackMgr::GetSetSatCarrIdValidOrAided@<D0>(uint64_t *__return_ptr a1@<X8>, BlueFin::GlMeSrdSatTrackMgr *this@<X0>)
{
  BlueFin::GlSetBase::GlSetBase(&v9, v10, 0x10u, this + 530);
  v15 = &v17;
  v16 = 16;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  *v20 = 0u;
  BlueFin::GlSetBase::OperatorBinaryInversion(&v9, &v15);
  BlueFin::GlSetBase::operator=(&v9, &v15);
  v10[0] = v17;
  v10[1] = v18;
  v10[2] = v19;
  v10[3] = *v20;
  BlueFin::GlSetBase::GlSetBase(&v11, v12, 0x10u, this + 500);
  v15 = &v17;
  v16 = 16;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  *v20 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v11, &v15, &v9);
  BlueFin::GlSetBase::operator=(&v11, &v15);
  v12[0] = v17;
  v12[1] = v18;
  v12[2] = v19;
  v12[3] = *v20;
  v4 = BlueFin::GlSetBase::GlSetBase(&v13, v14, 0x10u, &v11);
  v15 = &v17;
  v16 = 16;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  *v20 = 0u;
  BlueFin::GlSetBase::OperatorBinaryOr(v4, &v15, this + 540);
  BlueFin::GlSetBase::operator=(&v13, &v15);
  v14[0] = v17;
  v14[1] = v18;
  v14[2] = v19;
  v14[3] = *v20;
  BlueFin::GlSetBase::GlSetBase(&v7, v8, 0x10u, this + 580);
  v15 = &v17;
  v16 = 16;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  *v20 = 0u;
  BlueFin::GlSetBase::OperatorBinaryInversion(&v7, &v15);
  BlueFin::GlSetBase::operator=(&v7, &v15);
  v8[0] = v17;
  v8[1] = v18;
  v8[2] = v19;
  v8[3] = *v20;
  v5 = BlueFin::GlSetBase::GlSetBase(a1, a1 + 3, 0x10u, &v13);
  v15 = &v17;
  v16 = 16;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  *v20 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v5, &v15, &v7);
  BlueFin::GlSetBase::operator=(a1, &v15);
  *(a1 + 12) = v17;
  *(a1 + 28) = v18;
  *(a1 + 44) = v19;
  result = v20[0];
  *(a1 + 60) = *v20;
  return result;
}

double BlueFin::GlMeSrdAcqMgrSm::GetSubEpochTime(unsigned __int8 a1, double a2)
{
  if (a1 - 189 < 0xFFFFFF44 || (v2 = BlueFin::GlSvId::s_aucSvId2gnss[a1], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v2] == 255) || (BlueFin::GlSignalId::s_ausGnss2signalId[v2] + a1 - BlueFin::GlSvId::s_aucGnss2minSvId[v2]) >= 0x23Fu)
  {
    v8 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v9 = 679;
LABEL_9:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v9, v8);
  }

  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[v2])
  {
    v8 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v9 = 686;
    goto LABEL_9;
  }

  v3 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[v2] * 0.001;
  v4 = fabs(a2);
  result = v4 - floor(v4 / v3) * v3;
  v6 = v3 * 0.5;
  v7 = v3 - result;
  if (result > v6)
  {
    return v7;
  }

  return result;
}

unsigned __int8 *BlueFin::GlMeSrdSatTrackMgr::GetSetSvidValidTrackingList@<X0>(uint64_t *__return_ptr a1@<X8>, BlueFin::GlMeSrdSatTrackMgr *this@<X0>)
{
  BlueFin::GlSetBase::GlSetBase(&v9, v10, 0x10u, this + 530);
  v15 = &v17;
  v16 = 16;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  BlueFin::GlSetBase::OperatorBinaryInversion(&v9, &v15);
  BlueFin::GlSetBase::operator=(&v9, &v15);
  v10[0] = v17;
  v10[1] = v18;
  v10[2] = v19;
  v10[3] = v20;
  BlueFin::GlSetBase::GlSetBase(&v11, v12, 0x10u, this + 500);
  v15 = &v17;
  v16 = 16;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v11, &v15, &v9);
  BlueFin::GlSetBase::operator=(&v11, &v15);
  v12[0] = v17;
  v12[1] = v18;
  v12[2] = v19;
  v12[3] = v20;
  BlueFin::GlSetBase::GlSetBase(&v7, v8, 0x10u, this + 580);
  v15 = &v17;
  v16 = 16;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  BlueFin::GlSetBase::OperatorBinaryInversion(&v7, &v15);
  BlueFin::GlSetBase::operator=(&v7, &v15);
  v8[0] = v17;
  v8[1] = v18;
  v8[2] = v19;
  v8[3] = v20;
  v4 = BlueFin::GlSetBase::GlSetBase(v13, v14, 0x10u, &v11);
  v15 = &v17;
  v16 = 16;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v4, &v15, &v7);
  v5 = BlueFin::GlSetBase::operator=(v13, &v15);
  v14[0] = v17;
  v14[1] = v18;
  v14[2] = v19;
  v14[3] = v20;
  BlueFin::GlSatCarrIdSet::GetSatIdSetPrimaryCarrier(&v15, v5);
  if ((*(**(this + 3) + 264))())
  {
    BlueFin::GlSatCarrIdSet::GetSatIdSetAnyCarrier(&v11, v13);
    BlueFin::GlSetBase::operator=(&v15, &v11);
    v17 = v12[0];
  }

  return BlueFin::GlMeSrdSatMgr::GetSvidSetFromSatidSet(*(this + 1), &v15, a1);
}

void BlueFin::GlMeSrdAcqMgrSm::LimitOneTrackPerSv(BlueFin::GlMeSrdAcqMgrSm *this, uint64_t a2)
{
  v3 = (*(*this + 80))(this);
  v6 = 0;
  v7[0] = 0;
  *(v7 + 7) = 0;
  v7[2] = v3;
  v8 = 0;
  v9 = 0;
  (*(*v3 + 16))(v3, 0);
  v4 = (*(*v3 + 48))(v3);
  v5 = (*(*v4 + 48))(v4);
  (*(*v5 + 136))(v5, &v6, a2);
  BlueFin::GlMeSrdTransaction::Complete(&v6);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v6);
}

void sub_298904BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::CarpEswRpcJdEncImp::esw_jd_rpc_tm_set_single_svid(BlueFin::CarpEswRpcJdEncImp *this, BlueFin::GlMeSrdTransaction *a2, unsigned int a3)
{
  v13 = *MEMORY[0x29EDCA608];
  if (a3 >= 2)
  {
    v9 = "control < 2";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 885, "esw_jd_rpc_tm_set_single_svid", "control < 2");
    v10 = 885;
    goto LABEL_6;
  }

  v3 = a3;
  v4 = a2;
  v6 = (*(**(a2 + 3) + 40))(*(a2 + 3));
  BlueFin::GlStream::GlStream(v11, v12, 1800, v6);
  BlueFin::GlStream::PutU08(v11, v3);
  Offset = BlueFin::GlStream::GetOffset(v11);
  BlueFin::GlMeSrdTransaction::Add(v4, 4, 0xCu, v12, Offset);
  LODWORD(v4) = v4[16];
  result = (*(**(this + 1) + 416))();
  if (result < v4)
  {
    v9 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 894, "esw_jd_rpc_tm_set_single_svid", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v10 = 894;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v10, v9);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatTrackMgr::UpdateMPFSettings(uint64_t **this, BlueFin::GlMeSrdTransaction *a2, const BlueFin::GlSatCarrId *a3)
{
  v6 = *a3;
  BlueFin::GlMeSrdSatMgr::GetSvid(&v14, this[1], *a3);
  v7 = *(a3 + 1);
  result = (*(*this[3] + 256))();
  if ((result & (v7 == 3)) != 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7;
  }

  v10 = &this[2 * v6] + 4 * v9;
  if ((*(this[700] + ((v14 >> 3) & 0x1C)) >> (v14 & 0x1F)))
  {
    v11 = -1805320152;
  }

  else
  {
    v11 = 0;
  }

  if (v11 != *(v10 + 1412))
  {
    *(v10 + 1412) = v11;
    v12 = (*(**(a2 + 3) + 48))(*(a2 + 3));
    v13 = *(*(*(*v12 + 48))(v12) + 144);

    return v13();
  }

  return result;
}

uint64_t BlueFin::PikeEswRpcSatEncImp::esw_sat_rpc_set_aiding_control_multi_carr(uint64_t a1, BlueFin::GlMeSrdTransaction *a2, unsigned int a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v7 = a3;
  if ((*(**(a1 + 8) + 384))(*(a1 + 8)) <= a3)
  {
    v12 = "sat_id < m_rAsicConfigIfc.GetMaxNumSats()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 149, "esw_sat_rpc_set_aiding_control_multi_carr", "sat_id < m_rAsicConfigIfc.GetMaxNumSats()");
    v13 = 149;
    goto LABEL_6;
  }

  v14[0] = v7;
  v14[1] = a4;
  v14[2] = a5;
  *v15 = 1539;
  v16 = 7;
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v15, 3u);
  BlueFin::GlMeSrdTransaction::AddMethodData(a2, v14, 3u);
  v10 = *(a2 + 16);
  result = (*(**(a1 + 8) + 416))();
  if (result < v10)
  {
    v12 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 154, "esw_sat_rpc_set_aiding_control_multi_carr", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v13 = 154;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", v13, v12);
  }

  return result;
}

void *BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, BlueFin::GlRequestImpl **a2)
{
  v74 = *MEMORY[0x29EDCA608];
  if (*a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 143) == 0;
  }

  if (!v2 && *a2 == 0)
  {
    v61 = "(m_eMode == READ && pValue == nullptr) || pValue != nullptr";
    DeviceFaultNotify("gldebug_codec.cpp", 6476, "Rvw", "(m_eMode == READ && pValue == nullptr) || pValue != nullptr");
    v62 = 6476;
    goto LABEL_185;
  }

  v6 = (*(*this + 112))(this);
  if (v6 <= 8)
  {
    v61 = "false";
    DeviceFaultNotify("gldebug_codec.cpp", 6483, "Rvw", "false");
    v62 = 6483;
LABEL_185:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", v62, v61);
  }

  v7 = v6;
  if (*a2)
  {
    v8 = *(*a2 + 4);
  }

  else
  {
    v8 = -1;
  }

  LOBYTE(__src[0]) = v8;
  BlueFin::GlDbgCodec::Rvw(this, __src);
  if (*(this + 143))
  {
    v9 = *a2;
    if (!*a2)
    {
      DeviceFaultNotify("gldebug_codec.cpp", 6531, "Rvw", "pValue != nullptr");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 6531, "pValue != nullptr");
    }
  }

  else
  {
    v8 = LOBYTE(__src[0]);
    v9 = *a2;
    if (!*a2)
    {
      switch(LOBYTE(__src[0]))
      {
        case 0:
          BlueFin::GlRequestImplPosPeriodic::GlRequestImplPosPeriodic(__src, 0, 0, 0, 0, 0, 0, 0, 0, 0);
          v8 = 0;
          break;
        case 1:
          BlueFin::GlRequestImplPosSingleShot::GlRequestImplPosSingleShot(__src, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 7);
          v8 = 1;
          break;
        case 2:
          v8 = 2;
          LODWORD(__src[1]) = 2;
          WORD2(__src[1]) = 1;
          *(&__src[1] + 12) = -1;
          DWORD1(__src[2]) = -1;
          __src[3] = 0uLL;
          *(&__src[2] + 1) = 0;
          LOWORD(__src[4]) = 1;
          HIDWORD(__src[5]) = 0;
          *(&__src[4] + 1) = 0;
          *&__src[5] = 0;
          WORD4(__src[5]) = 0;
          *&__src[0] = &unk_2A1F161D8;
          *(&__src[0] + 1) = 0;
          v11 = -65536;
          goto LABEL_33;
        case 3:
          v8 = 3;
          LODWORD(__src[1]) = 3;
          WORD2(__src[1]) = 1;
          *(&__src[1] + 12) = -1;
          DWORD1(__src[2]) = -1;
          __src[3] = 0uLL;
          *(&__src[2] + 1) = 0;
          LOWORD(__src[4]) = 1;
          *(&__src[4] + 1) = 0;
          *&__src[5] = 0;
          WORD4(__src[5]) = 0;
          *&__src[0] = &unk_2A1F16420;
          *(&__src[0] + 1) = 0;
          LODWORD(__src[6]) = 0;
          HIDWORD(__src[5]) = 0;
          *(&__src[1] + 6) = -1;
          break;
        case 4:
          v8 = 4;
          LODWORD(__src[1]) = 4;
          WORD2(__src[1]) = 1;
          *(&__src[1] + 12) = -1;
          DWORD1(__src[2]) = -1;
          __src[3] = 0uLL;
          *(&__src[2] + 1) = 0;
          LOWORD(__src[4]) = 1;
          *(&__src[4] + 1) = 0;
          *&__src[0] = &unk_2A1F17418;
          *(&__src[0] + 1) = 0;
          LODWORD(__src[5]) = 400;
          *(&__src[1] + 6) = -1;
          break;
        case 5:
          *(&__src[0] + 1) = 0;
          v8 = 5;
          LODWORD(__src[1]) = 5;
          WORD2(__src[1]) = 1;
          *(&__src[1] + 6) = -1;
          *(&__src[1] + 12) = -1;
          DWORD1(__src[2]) = -1;
          __src[3] = 0uLL;
          *(&__src[2] + 1) = 0;
          LOWORD(__src[4]) = 1;
          v10 = &unk_2A1F16F88;
          goto LABEL_30;
        case 6:
          v8 = 6;
          LODWORD(__src[1]) = 6;
          WORD2(__src[1]) = 1;
          *(&__src[1] + 12) = -1;
          DWORD1(__src[2]) = -1;
          __src[3] = 0uLL;
          *(&__src[2] + 1) = 0;
          LOWORD(__src[4]) = 1;
          *(&__src[4] + 1) = 0;
          *&__src[0] = &unk_2A1F16D40;
          *(&__src[0] + 1) = 0;
          memset(&__src[5], 0, 34);
          v11 = -65506;
LABEL_33:
          *(&__src[1] + 6) = v11;
          break;
        case 7:
          v8 = 7;
          LODWORD(__src[1]) = 7;
          WORD2(__src[1]) = 1;
          *(&__src[1] + 6) = -1;
          *(&__src[1] + 12) = -1;
          DWORD1(__src[2]) = -1;
          memset(&__src[3], 0, 32);
          *(&__src[2] + 1) = 0;
          *&__src[0] = &unk_2A1F15870;
          *(&__src[0] + 1) = 0;
          break;
        case 8:
          BlueFin::GlRequestImplFactoryTest::GlRequestImplFactoryTest(__src, 0, 0, 0, 0, 0, 0, 0, 0, 0);
          v8 = 8;
          break;
        case 9:
          *(&__src[0] + 1) = 0;
          v8 = 9;
          LODWORD(__src[1]) = 9;
          WORD2(__src[1]) = 1;
          *(&__src[1] + 6) = -1;
          *(&__src[1] + 12) = -1;
          DWORD1(__src[2]) = -1;
          __src[3] = 0uLL;
          *(&__src[2] + 1) = 0;
          LOWORD(__src[4]) = 1;
          v10 = &unk_2A1F178D8;
LABEL_30:
          *(&__src[4] + 1) = 0;
          *&__src[5] = 0;
          *&__src[0] = v10;
          break;
        case 0xA:
          v8 = 10;
          LODWORD(__src[1]) = 10;
          WORD2(__src[1]) = 1;
          *(&__src[1] + 6) = -1;
          *(&__src[1] + 12) = -1;
          DWORD1(__src[2]) = -1;
          __src[3] = 0uLL;
          *(&__src[2] + 1) = 0;
          LOWORD(__src[4]) = 1;
          *(&__src[4] + 1) = 0;
          *&__src[5] = 0;
          *&__src[0] = &unk_2A1F171D0;
          *(&__src[0] + 1) = 0;
          DWORD2(__src[5]) = 0;
          break;
        case 0xB:
          *v66 = 0.0;
          v67 = 0;
          v69 = 0;
          v68 = 0;
          BlueFin::GlRequestImplPlatformTest::GlRequestImplPlatformTest(__src, 0, 0, v66);
          v8 = 11;
          break;
        case 0xC:
          BlueFin::GlRequestImplGeofence::GlRequestImplGeofence(__src, 0, 0, 0, 4, 7u, 0, 0, 0.0, 0.0, 0.0, 1, 0);
          v8 = 12;
          break;
        case 0xD:
          BlueFin::GlRequestImplBreadcrumb::GlRequestImplBreadcrumb(__src, 0, 0, 0, 60, 1, 1, 0);
          v8 = 13;
          break;
        case 0xE:
          v8 = 14;
          LODWORD(__src[1]) = 14;
          WORD2(__src[1]) = 1;
          *(&__src[1] + 6) = -1;
          *(&__src[1] + 12) = -1;
          DWORD1(__src[2]) = -1;
          __src[3] = 0uLL;
          *(&__src[2] + 1) = 0;
          LOWORD(__src[4]) = 1;
          *(&__src[4] + 1) = 0;
          __src[5] = 0uLL;
          *&__src[0] = &unk_2A1F16668;
          *(&__src[0] + 1) = 0;
          break;
        case 0xF:
          v8 = 15;
          LODWORD(__src[1]) = 15;
          WORD2(__src[1]) = 1;
          *(&__src[1] + 6) = -1;
          *(&__src[1] + 12) = -1;
          DWORD1(__src[2]) = -1;
          __src[3] = 0uLL;
          *(&__src[2] + 1) = 0;
          LOWORD(__src[4]) = 1;
          *(&__src[4] + 1) = 0;
          *&__src[0] = &unk_2A1F168B0;
          *(&__src[0] + 1) = 0;
          memset(&__src[5], 0, 44);
          break;
        case 0x10:
          v8 = 16;
          LODWORD(__src[1]) = 16;
          WORD2(__src[1]) = 1;
          *(&__src[1] + 12) = -1;
          DWORD1(__src[2]) = -1;
          __src[3] = 0uLL;
          *(&__src[2] + 1) = 0;
          LOWORD(__src[4]) = 1;
          *(&__src[4] + 1) = 0;
          memset(&__src[5], 0, 24);
          *&__src[0] = &unk_2A1F16AF8;
          *(&__src[0] + 1) = 0;
          *(&__src[1] + 6) = -65536;
          break;
        default:
          DeviceFaultNotify("gldebug_codec.cpp", 6526, "Rvw", "false");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 6526, "false");
      }

      v9 = __src;
      *a2 = __src;
    }
  }

  v12 = *(v9 + 6);
  v65 = *(v9 + 5) != 0;
  v64 = v12 != 0;
  v63 = *(v9 + 7) != 0;
  if (v7 >= 0xF)
  {
    BlueFin::GlDbgCodec::Rvw(this, v9 + 20);
    v9 = *a2;
  }

  BlueFin::GlDbgCodec::Rvw(this, v9 + 21);
  BlueFin::GlDbgCodec::Rvw(this, *a2 + 11);
  BlueFin::GlDbgCodec::Rvw(this, *a2 + 12);
  BlueFin::GlDbgCodec::Rvw(this, *a2 + 7);
  if (v7 > 0xE)
  {
    BlueFin::GlDbgCodec::Rvw(this, *a2 + 8);
  }

  BlueFin::GlDbgCodec::Rvw(this, *a2 + 9);
  BlueFin::GlDbgCodec::Rvw(this, &v65);
  BlueFin::GlDbgCodec::Rvw(this, &v64);
  BlueFin::GlDbgCodec::Rvw(this, &v63);
  if (!*(this + 143))
  {
    if (v65)
    {
      v13 = BlueFin::GlDbgProxyGlReqOnStart;
    }

    else
    {
      v13 = 0;
    }

    *(*a2 + 5) = v13;
    if (v64)
    {
      v14 = BlueFin::GlDbgProxyGlReqOnResponse;
    }

    else
    {
      v14 = 0;
    }

    *(*a2 + 6) = v14;
    if (v63)
    {
      v15 = BlueFin::GlDbgProxyGlReqOnStop;
    }

    else
    {
      v15 = 0;
    }

    *(*a2 + 7) = v15;
  }

  switch(v8)
  {
    case 0:
      v16 = *a2;
      BlueFin::GlDbgCodec::Rvw(this, *a2);
      BlueFin::GlDbgCodec::Rvw(this, (v16 + 108));
      BlueFin::GlDbgCodec::Rvw(this, (v16 + 112));
      result = BlueFin::GlDbgCodec::Rvw(this, (v16 + 116));
      goto LABEL_178;
    case 1:
      v42 = *a2;
      v43 = (*(*this + 112))(this);
      BlueFin::GlDbgCodec::Rvw(this, v42);
      result = BlueFin::GlDbgCodec::Rvw(this, v42 + 53);
      if (v43 >= 0x2D)
      {
        result = BlueFin::GlDbgCodec::Rvw(this, v42 + 109);
        if (v43 != 45)
        {
          result = BlueFin::GlDbgCodec::Rvw(this, v42 + 110);
          if (v43 >= 0x85)
          {
            result = BlueFin::GlDbgCodec::Rvw(this, v42 + 29);
          }
        }
      }

      goto LABEL_178;
    case 2:
      result = BlueFin::GlDbgCodec::Rvw(this, *a2);
      goto LABEL_178;
    case 3:
      v39 = *a2;
      BlueFin::GlDbgCodec::Rvw(this, *a2);
      result = BlueFin::GlDbgCodec::Rvw(this, v39 + 24);
      goto LABEL_178;
    case 4:
      v24 = *a2;
      BlueFin::GlDbgCodec::Rvw(this, *a2);
      result = BlueFin::GlDbgCodec::Rvw(this, v24 + 20);
      goto LABEL_178;
    case 5:
      v29 = *a2;
      BlueFin::GlDbgCodec::Rvw(this, *a2);
      v66[0] = *(v29 + 10) != 0;
      result = BlueFin::GlDbgCodec::Rvw(this, v66);
      if (*(this + 143))
      {
        goto LABEL_178;
      }

      v30 = !v66[0];
      v31 = BlueFin::GlDbgProxyGlReqOnCntin;
      goto LABEL_156;
    case 6:
      v48 = *a2;
      v49 = (*(*this + 112))(this);
      BlueFin::GlDbgCodec::Rvw(this, v48);
      v50 = *(v48 + 11);
      v66[0] = *(v48 + 10) != 0;
      v72 = v50 != 0;
      v71 = *(v48 + 12) != 0;
      BlueFin::GlDbgCodec::Rvw(this, v66);
      BlueFin::GlDbgCodec::Rvw(this, &v72);
      BlueFin::GlDbgCodec::Rvw(this, &v71);
      result = BlueFin::GlDbgCodec::Rvw(this, v48 + 56);
      if (!*(this + 143))
      {
        if (v66[0])
        {
          v51 = BlueFin::GlDbgProxyGlReqOnSyncInReport;
        }

        else
        {
          v51 = 0;
        }

        if (v72)
        {
          v52 = BlueFin::GlDbgProxyGlReqOnSyncInStatus;
        }

        else
        {
          v52 = 0;
        }

        *(v48 + 10) = v51;
        *(v48 + 11) = v52;
        if (v71)
        {
          v53 = BlueFin::GlDbgProxyGlReqOnSyncInLatched;
        }

        else
        {
          v53 = 0;
        }

        *(v48 + 12) = v53;
      }

      if (v49 >= 0x37)
      {
        v70 = *(v48 + 13) != 0;
        result = BlueFin::GlDbgCodec::Rvw(this, &v70);
        if (!*(this + 143))
        {
          if (v70)
          {
            v54 = BlueFin::GlDbgProxyGlReqOnSyncinReportCurrentTime;
          }

          else
          {
            v54 = 0;
          }

          *(v48 + 13) = v54;
        }
      }

      goto LABEL_178;
    case 7:
      v40 = *a2;
      v66[0] = *(*a2 + 8) != 0;
      BlueFin::GlDbgCodec::Rvw(this, v66);
      BlueFin::GlDbgCodec::Rvw(this, v40 + 18);
      result = BlueFin::GlDbgCodec::Rvw(this, v40 + 19);
      if (!*(this + 143))
      {
        if (v66[0])
        {
          v41 = BlueFin::GlDbgProxyGlReqOnTimer;
        }

        else
        {
          v41 = 0;
        }

        *(v40 + 8) = v41;
      }

      goto LABEL_178;
    case 8:
      v29 = *a2;
      v55 = (*(*this + 112))(this);
      BlueFin::GlDbgCodec::Rvw(this, v29);
      v72 = *(v29 + 10) != 0;
      BlueFin::GlDbgCodec::Rvw(this, &v72);
      if (v55 < 0xF)
      {
        BlueFin::GlDbgCodec::Rvw(this, v29 + 88);
        BlueFin::GlDbgCodec::Rvw(this, v29 + 89);
        BlueFin::GlDbgCodec::Rvw(this, v29 + 90);
        BlueFin::GlDbgCodec::Rvw(this, v29 + 91);
        v66[0] = *(v29 + 23);
        BlueFin::GlDbgCodec::Rvw(this, v66);
        if (!*(this + 143))
        {
          *(v29 + 23) = v66[0];
        }

        v66[0] = *(v29 + 24);
        BlueFin::GlDbgCodec::Rvw(this, v66);
        if (!*(this + 143))
        {
          *(v29 + 24) = v66[0];
        }

        BlueFin::GlDbgCodec::Rvw(this, v29 + 104);
        BlueFin::GlDbgCodec::Rvw(this, v29 + 50);
        BlueFin::GlDbgCodec::Rvw(this, v29 + 134);
        BlueFin::GlDbgCodec::Rvw(this, v29 + 272);
        BlueFin::GlDbgCodec::Rvw(this, v29 + 273);
        BlueFin::GlDbgCodec::Rvw(this, v29 + 274);
        BlueFin::GlDbgCodec::Rvw(this, v29 + 276);
        BlueFin::GlDbgCodec::Rvw(this, v29 + 278);
        BlueFin::GlDbgCodec::Rvw(this, v29 + 279);
        BlueFin::GlDbgCodec::Rvw(this, v29 + 275);
        result = BlueFin::GlDbgCodec::Rvw(this, v29 + 277);
      }

      else
      {
        result = BlueFin::GlDbgCodec::Rvw(this, v29 + 88);
      }

      if (*(this + 143))
      {
        goto LABEL_178;
      }

      v30 = !v72;
      v31 = BlueFin::GlDbgProxyGlReqOnFactTest;
      goto LABEL_156;
    case 9:
      v29 = *a2;
      BlueFin::GlDbgCodec::Rvw(this, *a2);
      v66[0] = *(v29 + 10) != 0;
      result = BlueFin::GlDbgCodec::Rvw(this, v66);
      if (*(this + 143))
      {
        goto LABEL_178;
      }

      v30 = !v66[0];
      v31 = BlueFin::GlDbgProxyGlReqOnAsstStatus;
      goto LABEL_156;
    case 10:
      v29 = *a2;
      BlueFin::GlDbgCodec::Rvw(this, *a2);
      v66[0] = *(v29 + 10) != 0;
      BlueFin::GlDbgCodec::Rvw(this, v66);
      result = BlueFin::GlDbgCodec::Rvw(this, v29 + 22);
      if (*(this + 143))
      {
        goto LABEL_178;
      }

      v30 = !v66[0];
      v31 = BlueFin::GlDbgProxyGlReqOnGpsData;
LABEL_156:
      if (v30)
      {
        v56 = 0;
      }

      else
      {
        v56 = v31;
      }

      *(v29 + 10) = v56;
      goto LABEL_178;
    case 11:
      v22 = *a2;
      v23 = (*(*this + 112))(this);
      BlueFin::GlDbgCodec::Rvw(this, v22);
      if (v23 < 0xF)
      {
        v66[0] = 0;
        BlueFin::GlDbgCodec::Rvw(this, v66);
        result = BlueFin::GlDbgCodec::Rvw(this, v22 + 58);
      }

      else
      {
        result = BlueFin::GlDbgCodec::Rvw(this, v22 + 80);
      }

      goto LABEL_178;
    case 12:
      v25 = *a2;
      v26 = (*(*this + 112))(this);
      BlueFin::GlDbgCodec::Rvw(this, v25);
      v72 = *(v25 + 18) != 0;
      BlueFin::GlDbgCodec::Rvw(this, &v72);
      v27 = (*(*this + 112))(this);
      BlueFin::GlDbgCodec::Rvw(this, v25 + 11);
      BlueFin::GlDbgCodec::Rvw(this, v25 + 12);
      if (v27 <= 8)
      {
        *v66 = 0.0;
        result = BlueFin::GlDbgCodec::Rvw(this, v66);
        if (*v66 <= 0.0)
        {
          if (*v66 >= 0.0)
          {
            v57 = 0;
            goto LABEL_169;
          }

          v28 = -0.5;
        }

        else
        {
          v28 = 0.5;
        }

        v57 = (*v66 + v28);
LABEL_169:
        *(v25 + 26) = v57;
        if (v27 <= 1)
        {
          goto LABEL_171;
        }

        goto LABEL_170;
      }

      BlueFin::GlDbgCodec::Rvw(this, v25 + 26);
      if (v27 <= 0x11)
      {
LABEL_170:
        v66[0] = 0;
        BlueFin::GlDbgCodec::Rvw(this, v66);
        result = BlueFin::GlDbgCodec::Rvw(this, v25 + 112);
        goto LABEL_171;
      }

      BlueFin::GlDbgCodec::Rvw(this, v25 + 112);
      v66[0] = *(v25 + 27);
      BlueFin::GlDbgCodec::Rvw(this, v66);
      if (!*(this + 143))
      {
        *(v25 + 27) = v66[0];
      }

      BlueFin::GlDbgCodec::Rvw(this, v25 + 29);
      BlueFin::GlDbgCodec::Rvw(this, v25 + 30);
      result = BlueFin::GlDbgCodec::Rvw(this, v25 + 31);
      if (v27 >= 0x19)
      {
        result = BlueFin::GlDbgCodec::Rvw(this, v25 + 32);
      }

LABEL_171:
      if (!*(this + 143))
      {
        if (v72)
        {
          v58 = BlueFin::GlDbgProxyGlReqOnGeofenceEvent;
        }

        else
        {
          v58 = 0;
        }

        *(v25 + 18) = v58;
      }

      if (v26 >= 0x34)
      {
        BlueFin::GlDbgCodec::Rvw(this, v25 + 20);
        result = BlueFin::GlDbgCodec::Rvw(this, v25 + 136);
      }

LABEL_178:
      v59 = *a2;
      if (*(this + 143) || *(v59 + 4) != 12)
      {
        if (v59 == __src)
        {
          Memory = BlueFin::GlMemAlloc::glAllocateMemory(44, 288, BlueFin::GlDbgMemory::Allocate);
          *a2 = Memory;
          return memcpy(Memory, __src, 0x120uLL);
        }
      }

      else
      {
        *a2 = 0;
      }

      return result;
    case 13:
      v44 = *a2;
      v45 = (*(*this + 112))(this);
      BlueFin::GlDbgCodec::Rvw(this, v44);
      v66[0] = *(v44 + 22) != 0;
      BlueFin::GlDbgCodec::Rvw(this, v66);
      BlueFin::GlDbgCodec::Rvw(this, v44 + 41);
      BlueFin::GlDbgCodec::Rvw(this, v44 + 42);
      result = BlueFin::GlDbgCodec::Rvw(this, v44 + 43);
      if (!*(this + 143))
      {
        if (v66[0])
        {
          v46 = BlueFin::GlDbgProxyGlReqOnbatchLocation;
        }

        else
        {
          v46 = 0;
        }

        *(v44 + 22) = v46;
      }

      if (v45 >= 0x22)
      {
        v72 = *(v44 + 23) != 0;
        result = BlueFin::GlDbgCodec::Rvw(this, &v72);
        if (!*(this + 143))
        {
          if (v72)
          {
            v47 = BlueFin::GlDbgProxyGlReqOnExerMeas;
          }

          else
          {
            v47 = 0;
          }

          *(v44 + 23) = v47;
        }

        if (v45 >= 0x3A)
        {
          result = BlueFin::GlDbgCodec::Rvw(this, v44 + 96);
        }
      }

      goto LABEL_178;
    case 14:
      v18 = *a2;
      v19 = (*(*this + 112))(this);
      BlueFin::GlDbgCodec::Rvw(this, v18);
      v66[0] = *(v18 + 10) != 0;
      result = BlueFin::GlDbgCodec::Rvw(this, v66);
      if (!*(this + 143))
      {
        if (v66[0])
        {
          v20 = BlueFin::GlDbgProxyGlReqOnMeasData;
        }

        else
        {
          v20 = 0;
        }

        *(v18 + 10) = v20;
      }

      if (v19 >= 0x23)
      {
        v72 = *(v18 + 11) != 0;
        result = BlueFin::GlDbgCodec::Rvw(this, &v72);
        if (!*(this + 143))
        {
          if (v72)
          {
            v21 = BlueFin::GlDbgProxyGlReqOnNavData;
          }

          else
          {
            v21 = 0;
          }

          *(v18 + 11) = v21;
        }
      }

      goto LABEL_178;
    case 15:
      v32 = *a2;
      v33 = (*(*this + 112))(this);
      BlueFin::GlDbgCodec::Rvw(this, v32);
      v66[0] = *(v32 + 10) != 0;
      result = BlueFin::GlDbgCodec::Rvw(this, v66);
      v34 = *(this + 143);
      if (!v34)
      {
        if (v66[0])
        {
          v35 = BlueFin::GlDbgProxyGlReqOnGnssMeasData;
        }

        else
        {
          v35 = 0;
        }

        *(v32 + 10) = v35;
      }

      if (v33 < 0x23)
      {
        goto LABEL_146;
      }

      v72 = *(v32 + 11) != 0;
      result = BlueFin::GlDbgCodec::Rvw(this, &v72);
      v34 = *(this + 143);
      if (!v34)
      {
        if (v72)
        {
          v36 = BlueFin::GlDbgProxyGlReqOnGnssNavData;
        }

        else
        {
          v36 = 0;
        }

        *(v32 + 11) = v36;
      }

      if (v33 < 0x47)
      {
        goto LABEL_146;
      }

      v72 = *(v32 + 12) != 0;
      result = BlueFin::GlDbgCodec::Rvw(this, &v72);
      v34 = *(this + 143);
      if (!v34)
      {
        if (v72)
        {
          v37 = BlueFin::GlDbgProxyGlReqOnGnssSvInfoData;
        }

        else
        {
          v37 = 0;
        }

        *(v32 + 12) = v37;
      }

      if (v33 < 0xAB)
      {
        goto LABEL_146;
      }

      v72 = *(v32 + 13) != 0;
      result = BlueFin::GlDbgCodec::Rvw(this, &v72);
      v34 = *(this + 143);
      if (!v34)
      {
        if (v72)
        {
          v38 = BlueFin::GlDbgProxyGlReqOnGnssAgcInfoData;
        }

        else
        {
          v38 = 0;
        }

        *(v32 + 13) = v38;
      }

      if (v33 < 0xAD)
      {
LABEL_146:
        if (!v34)
        {
          *(v32 + 30) = 0;
        }
      }

      else
      {
        result = BlueFin::GlDbgCodec::Rvw(this, v32 + 30);
      }

      goto LABEL_178;
    case 16:
      result = BlueFin::GlDbgCodec::Rvw(this, *a2);
      goto LABEL_178;
    default:
      DeviceFaultNotify("gldebug_codec.cpp", 6584, "Rvw", "false");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 6584, "false");
  }
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, BOOL *a2)
{
  v7[6] = *MEMORY[0x29EDCA608];
  v7[1] = 0;
  v7[3] = 0;
  v7[0] = BlueFin::GlDbgCodec::Read;
  v7[2] = BlueFin::GlDbgCodec::Verify;
  v7[4] = BlueFin::GlDbgCodec::Write;
  v7[5] = 0;
  v2 = &v7[2 * *(this + 143)];
  v3 = *v2;
  v4 = v2[1];
  v5 = (this + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, a2);
}

uint64_t BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_TrkGridTapCfg(BlueFin::MinnowGllRpcParserImp *this, BlueFin::GlStream *a2)
{
  U08 = BlueFin::GlStream::GetU08(a2);
  v10 = 0x203020F043F0606;
  v11 = -16711421;
  v12 = -1;
  v6[0] = BlueFin::GlStream::GetU32(a2);
  v6[1] = BlueFin::GlStream::GetU32(a2);
  v6[2] = BlueFin::GlStream::GetU32(a2);
  U16 = BlueFin::GlStream::GetU16(a2);
  v8 = BlueFin::GlStream::GetU16(a2);
  v9 = BlueFin::GlStream::GetU08(a2);
  BlueFin::GlStream::GetU08(a2);
  v13 = BlueFin::GlStream::GetU16(a2) & 0x7FF | 0x2000;
  if (BlueFin::GlStream::GetAvailableSize(a2))
  {
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1196, "Handle_SatRpt_TrkGridTapCfg", "otStream.GetAvailableSize() == 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_decoder_minnow.cpp", 1196, "otStream.GetAvailableSize() == 0");
  }

  return (*(**(*(this + 1) + 17072) + 96))(*(*(this + 1) + 17072), U08, v6);
}

uint64_t BlueFin::GlMeSrdSatRptRpcBuffer::gll_satrpt_rpc_trk_grid_tap_cfg(uint64_t a1, int a2, _OWORD *a3)
{
  BlueFin::GlMeSrdSatRptRpcBuffer::CheckInstanceId(a1, a2);
  v5 = *(a1 + 8);
  if ((v5 & 0x100000) != 0)
  {
    DeviceFaultNotify("glmesrd_sat_report_rpc_buffer.cpp", 259, "gll_satrpt_rpc_trk_grid_tap_cfg", "m_otFlags.Missing(FLGS_RECEIVED_GRID_TAP_CONFIG)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_rpc_buffer.cpp", 259, "m_otFlags.Missing(FLGS_RECEIVED_GRID_TAP_CONFIG)");
  }

  *(a1 + 8) = v5 | 0x100000;
  v6 = a3[1];
  *(a1 + 3116) = *a3;
  *(a1 + 3132) = v6;
  v7 = *(**(a1 + 3152) + 96);

  return v7();
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, int *a2)
{
  v7[6] = *MEMORY[0x29EDCA608];
  v7[1] = 0;
  v7[3] = 0;
  v7[0] = BlueFin::GlDbgCodec::Read;
  v7[2] = BlueFin::GlDbgCodec::Verify;
  v7[4] = BlueFin::GlDbgCodec::Write;
  v7[5] = 0;
  v2 = &v7[2 * *(this + 143)];
  v3 = *v2;
  v4 = v2[1];
  v5 = (this + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, a2);
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, BlueFin::GlRequestImplNmea *a2)
{
  v6 = *(a2 + 9) != 0;
  BlueFin::GlDbgCodec::Rvw(this, &v6);
  result = BlueFin::GlDbgCodec::Rvw(this, a2 + 32);
  if (!*(this + 143))
  {
    if (v6)
    {
      v5 = BlueFin::GlDbgProxyGlReqOnNmea;
    }

    else
    {
      v5 = 0;
    }

    *(a2 + 9) = v5;
  }

  return result;
}

uint64_t gnss::FireGnssDevice::setAssistanceDem(uint64_t a1, unint64_t a2, uint64_t a3, double a4, double a5)
{
  v18 = *MEMORY[0x29EDCA608];
  bzero(v15, 0xDD8uLL);
  __src[0] = 0x30000000BLL;
  __src[1] = a2 / 0xF4240;
  v15[8] = 1;
  v10 = a4;
  v11 = a5;
  v16 = v10;
  v17 = v11;
  FireDeviceLog::DeviceLogBase(6, "#fgd DEM,feeding,dem alt,%.3f,unc,%.3f", a4, a5);
  v12 = *(a1 + 40);
  std::deque<BlueFin::GlExtSensData>::push_back((v12 + 1744), __src);
  FireMessageHandler::send(v12, 1073741831);
  return std::function<void ()(gnss::Result)>::operator()(a3, 1);
}

uint64_t BlueFin::GlMeSrdBitHistBuf::operator+=(uint64_t result, uint64_t a2)
{
  v2 = *(result + 4);
  v3 = *(a2 + 4);
  if (*(result + 4))
  {
    if (v2 == v3)
    {
      v4 = 8;
      do
      {
        *(result + v4) = *(result + v4) + *(a2 + v4);
        v4 += 4;
        --v2;
      }

      while (v2);
      v5 = *result + *a2;
      goto LABEL_10;
    }

    v7 = "m_ucNbHistBins == rhs.m_ucNbHistBins";
    DeviceFaultNotify("glmesrd_bithistbuf.cpp", 141, "operator+=", "m_ucNbHistBins == rhs.m_ucNbHistBins");
    v8 = 141;
LABEL_13:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bithistbuf.cpp", v8, v7);
  }

  if (!*(a2 + 4))
  {
    v7 = "rhs.m_ucNbHistBins > 0";
    DeviceFaultNotify("glmesrd_bithistbuf.cpp", 132, "operator+=", "rhs.m_ucNbHistBins > 0");
    v8 = 132;
    goto LABEL_13;
  }

  *(result + 4) = v3;
  v6 = 8;
  do
  {
    *(result + v6) = *(a2 + v6);
    v6 += 4;
    --v3;
  }

  while (v3);
  v5 = *a2;
LABEL_10:
  *result = v5;
  return result;
}

float BlueFin::GlMeSrdBitHistBuf::operator[](uint64_t a1, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *(a1 + 4) <= a2)
  {
    DeviceFaultNotify("glmesrd_bithistbuf.h", 38, "operator[]", "i>=0 && i<m_ucNbHistBins");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_bithistbuf.h", 38, "i>=0 && i<m_ucNbHistBins");
  }

  return *(a1 + 4 * a2 + 8);
}

void BlueFin::GlPosEng::SetGlonassDataString(BlueFin::GlPosEng *this, BlueFin::GlGlonassDataString *a2, int8x16_t a3, double a4, int8x16_t a5, int8x16_t a6)
{
  if (!a2)
  {
    DeviceFaultNotify("glposeng.cpp", 1023, "SetGlonassDataString", "potString != 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glposeng.cpp", 1023, "potString != 0");
  }

  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    *a3.i64 = (*(*a2 + 24))(a2, 0, 0);
  }

  v8 = *(this + 30948);
  v9 = (*(a2 + 5) >> 27) & 0xF;
  v10 = *(this + 949);
  if (BlueFin::GlPeGloEphMgr::ValidateStringOrder(v10, a2, v9, a3, a4, a5, a6))
  {
    v13 = *(this + 34);
    if (v9 == 4)
    {
      BlueFin::GlPeGloFcnOsnMgr::SetGlonassDataString(*(this + 34), a2, 4);
    }

    v14 = *(a2 + 9);
    v22 = 0;
    BlueFin::GlPeGloFcnOsnMgr::FCN2OSN(v13, v14, &v22, v11, v12);
    v17 = v22;
    if (v22)
    {
      v18 = *(a2 + 9);
      v23 = 0;
      BlueFin::GlPeGloFcnOsnMgr::FCN2OSN(v13, v18, &v23, v15, v16);
      v17 = v23 + 64;
    }

    BlueFin::GlPeReqBag::SetGlonassDataString(this + 137024, a2, v17);
    BlueFin::GlPeTimeManager::SetGlonassDataString(this + 121216, a2, v19, v20);
    if (*(this + 374914) == 1)
    {
      if ((v9 - 1) <= 3)
      {
        BlueFin::GlPeGloEphMgr::SetGlonassDataString(v10, a2, v9, v21);
      }

      BlueFin::GlPeAlmMgr::SetGlonassDataString((this + 34336), a2, v9);
    }

    *(this + 374914) = 1;
  }

  if (!v8 && *(this + 30948))
  {

    BlueFin::GlPosEng::OnInitialTime(this);
  }
}

unint64_t BlueFin::GlRequestImplNmea::Print(unint64_t this, unsigned __int8 a2, const char *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v5 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
    if (this)
    {
      if (((1 << (a2 >> 3)) & 0x2000800E) != 0)
      {
        if (*(v5 + 72))
        {
          v7 = "";
        }

        else
        {
          v7 = "!";
        }

        BlueFin::GlFormat::glsnprintf(v8, 0xC8, "%scbNmea %s", v6, v7, a3);
        return BlueFin::GlRequestImpl::Print(v5, a2, v8);
      }
    }
  }

  return this;
}

uint64_t BlueFin::GlRequestImpl::Print(uint64_t this, unsigned __int8 a2, const char *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v5 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
    if (this)
    {
      if (((1 << (a2 >> 3)) & 0x2000800E) != 0)
      {
        v7 = 0uLL;
        memset(v13, 0, sizeof(v13));
        if (*(v5 + 36) >= 1)
        {
          BlueFin::GlFormat::glsnprintf(v13, 0x20, " Duration=%ds", v6, *(v5 + 36));
          v7 = 0uLL;
        }

        v12[0] = v7;
        v12[1] = v7;
        if (*(v5 + 22) >= 1)
        {
          BlueFin::GlFormat::glsnprintf(v12, 0x20, " timeout=%ds", v6, *(v5 + 22));
        }

        v8 = BlueFin::GlRequestImpl::GlRequestTypeToString(v5);
        v9 = 80;
        if (!*(v5 + 56))
        {
          v9 = 112;
        }

        v10 = 82;
        if (!*(v5 + 48))
        {
          v10 = 114;
        }

        v11 = 83;
        if (!*(v5 + 40))
        {
          v11 = 115;
        }

        return GlCustomLog(a2, "%s(%hu) ET=%0.3fs cb=(%c%c%c)%s%s %s\n", v8, *(v5 + 24), (*(BlueFin::GlUtils::m_pInstance + 1092) - *(v5 + 28)) / 1000.0, v11, v10, v9, v13, v12, a3);
      }
    }
  }

  return this;
}

uint64_t BlueFin::GlPeGlnTimeMgr::GetInitialTime(BlueFin::GlPeGlnTimeMgr *this, unsigned int *a2, unsigned __int8 *a3, unsigned __int16 *a4, unsigned int *a5)
{
  if ((*(this + 24) & 8) == 0 || (*(this + 25) & 8) == 0 || (*(this + 26) & 8) == 0)
  {
    result = 0;
    *a2 = -7200001;
    *a3 = 0;
    *a4 = 0;
    *a5 = 0;
    return result;
  }

  *a2 = *(this + 8);
  *a3 = *(this + 48);
  v6 = *(this + 20);
  *a4 = v6;
  v7 = *(this + 9);
  *a5 = v7;
  v8 = *(this + 11) - v7;
  if (v8 >= -43199999)
  {
    if (v8 <= 43200000)
    {
      LOWORD(v6) = *a4;
      goto LABEL_15;
    }

    if (v6 < 0x5B5)
    {
      LOWORD(v6) = v6 + 1;
    }

    else
    {
      LOWORD(v6) = 1;
    }
  }

  else
  {
    v9 = v6-- != 0;
    if (v6 == 0 || !v9)
    {
      LOWORD(v6) = 1461;
    }
  }

  *a4 = v6;
LABEL_15:
  v10 = *(this + 13) - v7;
  if (v10 < -43199999 && v6 == 1461)
  {
    --*a3;
    return 1;
  }

  else
  {
    result = 1;
    if (v10 > 43200000 && v6 == 1)
    {
      ++*a3;
    }
  }

  return result;
}

BlueFin::GlPeTimeManager *BlueFin::GlPeAlmMgr::SetGlonassDataString(BlueFin::GlPeTimeManager *this, BlueFin::GlGlonassDataString *a2, unsigned int a3)
{
  v134 = this;
  v151 = *MEMORY[0x29EDCA608];
  if (a3 - 16 >= 0xFFFFFFF5)
  {
    if (a3)
    {
      if ((*(a2 + 30) & 8) != 0)
      {
        return this;
      }

      v149 = 0;
      v148 = 0;
      v150 = 0;
    }

    else
    {
      v149 = 0;
      v148 = 0;
      v150 = 0;
      if (a3 <= 0xC)
      {
        v5 = ((*(a2 + 5) >> 19) & 0x1F) - 1;
        if (v5 > 0x17)
        {
          return this;
        }

        ++*(&v148 + v5 / 5u);
      }
    }

    if (*(a2 + 5))
    {
      v6 = *(a2 + 3) / 0x7530u - 5 * ((858993460 * (*(a2 + 3) / 0x7530u)) >> 32);
      ++*(&v148 + v6);
    }

    Time = BlueFin::GlPeTimeManager::GetTime(*(this + 56), 1, &v143);
    Time.n128_f64[0] = v144;
    v13 = BlueFin::GlPeTimeMgrUtil::DoubleToLms(v8, Time, v9, v10, v11, v12);
    v141 = &off_2A1F0E430;
    v142 = 0;
    if (BlueFin::GlPeGnssTime::GetGlns(&v143, &v141) < 1000000.0)
    {
      v14 = 0;
      if (BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
      {
        v14 = HIDWORD(v142) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
      }

      v15 = (v141[4])(&v141);
      if (v14)
      {
        v16.i64[0] = 0x40C5178000000000;
      }

      else
      {
        *v16.i64 = (v15 % 0x15180);
      }

      LODWORD(v17) = v142;
      *v16.i64 = *v16.i64 + v17 * 2.32830644e-10;
      *v19.i64 = *v16.i64 + trunc(*v16.i64 * 2.32830644e-10) * -4294967300.0;
      v20.f64[0] = NAN;
      v20.f64[1] = NAN;
      v21 = vnegq_f64(v20);
      v19.i64[0] = vbslq_s8(v21, v19, v16).u64[0];
      if (*v16.i64 > 4294967300.0)
      {
        v16.i64[0] = v19.i64[0];
      }

      if (*v16.i64 < -4294967300.0)
      {
        *v18.i64 = -*v16.i64;
        *v16.i64 = -(*v16.i64 - trunc(*v16.i64 * -2.32830644e-10) * -4294967300.0);
        *v16.i64 = -*vbslq_s8(v21, v16, v18).i64;
      }

      v22 = *v16.i64;
      if (*v16.i64 < 0.0)
      {
        v22 = --*v16.i64;
      }

      v23 = -15 * (v22 / 0x1E) + (v22 >> 1);
      v24 = a3 == 15 && v23 == 0;
      if (v24)
      {
        v25 = -15;
      }

      else
      {
        v25 = ~v23;
      }

      v26 = v25 + a3;
      if (v26 < 0)
      {
        v26 = -v26;
      }

      if (v26 <= 1)
      {
        v27 = v22 / 0x1E - 5 * ((858993460 * (v22 / 0x1E)) >> 32);
        v28 = v27 - 1;
        if (!v27)
        {
          v28 = 4;
        }

        if (v24)
        {
          v29 = v28;
        }

        else
        {
          v29 = v27;
        }

        ++*(&v148 + v29);
      }
    }

    v30 = *(v134 + 1986);
    if (v30 != -7200001)
    {
      if (v13 > v30)
      {
        v30 += 150000 * ((v13 - v30) / 0x249F0) + 150000;
        *(v134 + 1986) = v30;
      }

      v31 = v30 - v13;
      v32 = v31 / 0x7D0 - 15 * ((286331154 * (v31 / 0x7D0)) >> 32);
      v33 = v32 ^ 0xF;
      v34 = a3 == 15 && v32 == 14;
      if (v34)
      {
        v33 = 15;
      }

      v35 = a3 - v33;
      if (v35 < 0)
      {
        v35 = -v35;
      }

      if (v35 <= 1)
      {
        v36 = v31 / 0x7530 - 5 * ((858993460 * (v31 / 0x7530)) >> 32);
        v37 = 3 - v36;
        if (v36 == 4)
        {
          v37 = 4;
        }

        v38 = 4 - v36;
        if (v34)
        {
          v38 = v37;
        }

        ++*(&v148 + v38);
      }
    }

    v39 = 0;
    v40 = 0;
    do
    {
      this = *(&v148 + v39);
      if (*(&v148 + v40) < this)
      {
        v40 = v39;
      }

      ++v39;
    }

    while (v39 != 5);
    v41 = HIDWORD(v148) + v148 + v149 + HIDWORD(v149) + v150;
    if (v41 < 1 || *(&v148 + v40) < v41)
    {
      *(v134 + 1986) = -7200001;
      return this;
    }

    v42 = v13 + 2000 * (15 - a3) + 30000 * (4 - v40);
    *(v134 + 1986) = v42;
    if (a3 < 14 || v40 != 4)
    {
      v119 = v40;
      v43 = v40;
      v44 = *(a2 + 9);
      v45 = v44 + 7;
      this = (a3 - 5);
      if (a3 == 5)
      {
        v46 = 0;
      }

      else
      {
        v46 = (a3 & 1) + 1;
      }

      v47 = v42 / 0x249F0;
      v123 = v134 + 16224;
      if (*(v134 + v45 + 8112) + 18 <= v42 / 0x249F0uLL)
      {
        v48 = (v134 + 96 * v45);
        v48[935] = 0u;
        v48[934] = 0u;
        v48[933] = 0u;
        v48[932] = 0u;
        v48[931] = 0u;
        v48[930] = 0u;
      }

      *v133 = v44 + 7;
      *&v123[2 * v45] = v47;
      v145 = xmmword_298A3B320;
      v146 = unk_298A3B330;
      v49 = 0x111110100F0F0F0ELL;
      v147[0] = xmmword_298A3B340;
      *(v147 + 15) = 0x1717171716161515;
      LOBYTE(v145) = 4;
      BYTE11(v145) = 9;
      BYTE6(v146) = 14;
      BYTE1(v147[0]) = 19;
      v50 = *(&xmmword_298A3B320 + 11 * v40 + this);
      BYTE12(v147[0]) = 23;
      v51 = *(&v145 + 11 * v40 + this);
      if (v50 <= v51)
      {
        v52 = 0;
        v53 = v50;
        HIDWORD(v55) = *(a2 + 5);
        LODWORD(v55) = *(a2 + 6);
        v54 = v55 >> 27;
        HIDWORD(v55) = v55;
        LODWORD(v55) = *(a2 + 7);
        v56 = v55 >> 27;
        v57 = 32 * v55;
        v58 = (32 * v55) & 0xFF000000;
        *v117 = v50;
        v118 = v134 + 7948;
        v59 = 9 * this;
        v60 = v134 + 495 * v133[0] + 99 * v40 + 9 * this + 7948;
        v61 = bswap32(*v60);
        v62 = v51 - v50 + 1;
        while (1)
        {
          if (v61 == v54)
          {
            v63 = bswap32(*(v60 + 4)) == v56 && v58 == *(v60 + 8) << 24;
            v64 = v63;
            v65 = v62;
            if (v63)
            {
              break;
            }
          }

LABEL_76:
          --v62;
          v52 = 1;
          v63 = v53++ == v51;
          if (v63)
          {
            v115 = v134 + 495 * v133[0] + 99 * v40 + 9 * this + 7948;
            v116 = HIBYTE(v57);
            v66 = 0;
            goto LABEL_81;
          }
        }

        while (--v65)
        {
          if (!v64)
          {
            goto LABEL_76;
          }
        }

        if ((v52 & 1) == 0)
        {
          v122 = v51 + 1;
          v66 = 1;
          goto LABEL_127;
        }

        v115 = v134 + 495 * v133[0] + 99 * v40 + 9 * this + 7948;
        v116 = HIBYTE(v57);
        v66 = 1;
LABEL_81:
        v67 = 0;
        if (a3 == 5)
        {
          v68 = 0;
        }

        else
        {
          v68 = v40;
        }

        if (a3 == 5)
        {
          v69 = 4;
        }

        else
        {
          v69 = v40;
        }

        v70 = v134 + 14880;
        v122 = v51 + 1;
        v71 = v68;
        v121 = v69;
        v72 = v69 + 1;
        v73 = v133[0];
        v74 = v51 - *v117 + 1;
        v75 = v134 + 96 * v44 + 4 * *v117 + 15552;
        v120 = v68;
        v131 = this;
        v132 = v40;
        v129 = v54;
        v130 = v56;
        v128 = v57 & 0xFF000000;
        v127 = 9 * this;
        v126 = v72;
        v125 = v74;
        v124 = v75;
        while (v71 > v121)
        {
LABEL_124:
          ++v67;
          v70 += 96;
          v71 = v120;
          if (v67 == 14)
          {
            *v115 = HIBYTE(v54);
            v115[1] = BYTE2(v54);
            v115[2] = BYTE1(v54);
            v115[3] = v54;
            v115[4] = HIBYTE(v56);
            v115[5] = BYTE2(v56);
            v115[6] = BYTE1(v56);
            v115[7] = v56;
            v115[8] = v116;
LABEL_127:
            v93 = *v117;
            v94 = v134 + 96 * v133[0] + 14880;
            do
            {
              v95 = v93;
              v96 = *(v94 + 4 * v93);
              v138 = v96 & 1;
              v139 = (v96 & 2) != 0;
              v140 = (v96 & 4) != 0;
              v97 = (v96 >> 3) & 7;
              v135 = (v96 >> 3) & 7;
              v136 = (v96 >> 6) & 7;
              v137 = (v96 >> 9) & 7;
              v98 = (v96 >> 1) & (v96 >> 2);
              if ((v96 & 1) == 0)
              {
                v98 = 0;
              }

              if (((v96 >> 9) & (v96 >> 6) & v97) != 0)
              {
                v99 = v98;
              }

              else
              {
                v99 = 0;
              }

              if (v66)
              {
                *(&v138 + v46) = 1;
              }

              v100 = (v96 >> 12) & 0x7FFF;
              v101 = (byte_298A3B2C8[v97 | (v96 >> 6) & 7 | (v96 >> 9) & 7] + 1);
              v102 = *&v123[2 * *v133];
              v104 = v100 == v102 && v101 > 1;
              v105 = v101 >> v104;
              v106 = *(&v135 | v46);
              if (*(&v135 | v46))
              {
                LOBYTE(v106) = (v105 - 1) & ~byte_298A3B2C8[v106] | v106;
              }

              *(&v135 | v46) = v106 | v105;
              v49.i8[0] = v135;
              v49.i8[4] = v136;
              v107 = v137;
              v108 = 0x300000002;
              do
              {
                v109 = vand_s8(v49, 0xFF000000FFLL);
                v110 = vneg_s32(v108);
                v111 = vorr_s8(vorr_s8(vand_s8(vshl_u32(vshl_u32(v109, v110), 0x100000002), 0x200000004), vand_s8(vshl_u32(vdup_n_s32(v107), v110), 0x100000001)), vand_s8(vshl_u32(vshl_u32(vrev64_s32(v109), v110), 0x200000001), 0x400000002));
                if ((v111.i32[0] | v111.i32[1]) == v111.i32[1])
                {
                  v49 = vorr_s8(vshr_n_u32(vand_s8(vdup_n_s32(-1 << v108.i8[4]), v109), 1uLL), vand_s8(vdup_n_s32(~(-1 << v108.i8[0])), v109));
                  v107 = v107 & ~(-1 << v108.i8[0]) | (((-1 << v108.i8[4]) & v107) >> 1);
                }

                v112 = v108.i32[0];
                v108 = vadd_s32(v108, -1);
              }

              while (v112);
              v135 = v49.i8[0];
              v136 = v49.i8[4];
              v137 = v107;
              if (v139)
              {
                v113 = 2;
              }

              else
              {
                v113 = 0;
              }

              if (v140)
              {
                v114 = 4;
              }

              else
              {
                v114 = 0;
              }

              *(v94 + 4 * v93) = ((v107 & 7) << 9) | ((v49.i8[4] & 7) << 6) | (8 * (v49.i8[0] & 7)) | v138 | v113 | v114 | ((v102 & 0x7FFF) << 12);
              if ((v99 & 1) == 0)
              {
                this = BlueFin::GlPeAlmMgr::PublishDcdGlnAlm(v134, v133[0], v119, v93);
                v93 = v95;
              }

              ++v93;
            }

            while (v93 != v122);
            return this;
          }
        }

        v76 = &v118[495 * v67];
        while (1)
        {
          v77 = &v76[99 * v71 + v59];
          if (bswap32(*v77) != v54)
          {
            break;
          }

          if (bswap32(*(v77 + 4)) != v56 || *(v77 + 8) << 24 != v58)
          {
            break;
          }

          v86 = *(this + &xmmword_298A3B320 + 11 * v71);
          v87 = *(this + &v145 + 11 * v71);
          if (v86 <= v87)
          {
            v88 = v87 + 1;
            do
            {
              v89 = *&v70[4 * v86];
              v138 = v89 & 1;
              v139 = (v89 & 2) != 0;
              v140 = (v89 & 4) != 0;
              v90 = (v89 >> 3) & 7;
              if ((v90 & (v89 >> 9) & (v89 >> 6)) == 0 || (v89 & 1) == 0 || (v89 & 2) == 0 || (v89 & 4) == 0)
              {
                *(&v138 + v46) = 1;
                if (v139)
                {
                  v91 = 2;
                }

                else
                {
                  v91 = 0;
                }

                if (v140)
                {
                  v92 = 4;
                }

                else
                {
                  v92 = 0;
                }

                *&v70[4 * v86] = v89 & 0x7FFFFC0 | (8 * v90) | v138 | v91 | v92;
                BlueFin::GlPeAlmMgr::PublishDcdGlnAlm(v134, v67, v71, v86);
              }

              ++v86;
            }

            while (v88 != v86);
            v66 = 1;
            this = v131;
            v43 = v132;
            v54 = v129;
            v56 = v130;
            v58 = v128;
            v59 = v127;
            v72 = v126;
            v74 = v125;
            v73 = v133[0];
            v75 = v124;
LABEL_122:
            v76 = &v118[495 * v67];
            goto LABEL_123;
          }

          v66 = 1;
LABEL_123:
          if (v72 == ++v71)
          {
            goto LABEL_124;
          }
        }

        if (v67 != v73 || v71 != v43)
        {
          goto LABEL_123;
        }

        v79 = v75;
        v80 = v74;
        do
        {
          v81 = *v79;
          v138 = *v79 & 1;
          v139 = (v81 & 2) != 0;
          v140 = (v81 & 4) != 0;
          v135 = (v81 >> 3) & 7;
          v136 = (v81 >> 6) & 7;
          v137 = (v81 >> 9) & 7;
          v82 = v81 & 0x7FFF000;
          *(&v135 | v46) = 0;
          *(&v138 + v46) = 0;
          if (v139)
          {
            v83 = 2;
          }

          else
          {
            v83 = 0;
          }

          v84 = v83 | v138;
          if (v140)
          {
            v85 = 4;
          }

          else
          {
            v85 = 0;
          }

          *v79++ = (v84 | v85) & 0xFFFFF007 | (8 * (v135 & 7)) & 0x3F | ((v136 & 7) << 6) & 0xF1FF | ((v137 & 7) << 9) | v82;
          --v80;
        }

        while (v80);
        goto LABEL_122;
      }
    }
  }

  return this;
}

uint64_t BlueFin::MinnowEswRpcSatEncImp::esw_sat_rpc_set_control_flag_multi_carr(uint64_t a1, uint64_t a2, unsigned int a3, char a4, unsigned __int16 *a5)
{
  v7 = a3;
  v19 = *MEMORY[0x29EDCA608];
  if ((*(**(a1 + 8) + 384))(*(a1 + 8)) <= a3)
  {
    v15 = "sat_id < m_rAsicConfigIfc.GetMaxNumSats()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 235, "esw_sat_rpc_set_control_flag_multi_carr", "sat_id < m_rAsicConfigIfc.GetMaxNumSats()");
    v16 = 235;
    goto LABEL_9;
  }

  v10 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v17, v18, 1800, v10);
  BlueFin::GlStream::PutU08(v17, v7);
  BlueFin::GlStream::PutU08(v17, a4);
  BlueFin::GlStream::CarpPutBits(v17, *a5 & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v17, (*a5 >> 1) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v17, (*a5 >> 2) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v17, (*a5 >> 3) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v17, (*a5 >> 4) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v17, (*a5 >> 5) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v17, (*a5 >> 6) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v17, (*a5 >> 7) & 1, 1u, 8u);
  *a5 &= 0x3FFFu;
  if ((*(**(a1 + 8) + 736))())
  {
    BlueFin::GlStream::CarpPutBits(v17, 1u, 1u, 8u);
    v11 = 0;
  }

  else
  {
    BlueFin::GlStream::CarpPutBits(v17, HIBYTE(*a5) & 1, 1u, 8u);
    v11 = (*a5 >> 9) & 1;
  }

  BlueFin::GlStream::CarpPutBits(v17, v11, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v17, (*a5 >> 10) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v17, (*a5 >> 11) & 1, 1u, 8u);
  BlueFin::GlStream::CarpPutBits(v17, (*a5 >> 12) & 3, 2u, 8u);
  BlueFin::GlStream::CarpPutBits(v17, *a5 >> 14, 2u, 8u);
  BlueFin::GlStream::CarpPutBits(v17, a5[1] & 0x1F, 5u, 8u);
  BlueFin::GlStream::CarpPutBits(v17, *(a5 + 2) >> 5, 3u, 8u);
  BlueFin::GlStream::PutU08(v17, 0);
  Offset = BlueFin::GlStream::GetOffset(v17);
  BlueFin::GlMeSrdTransaction::Add(a2, 6, 9u, v18, Offset);
  v13 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v13)
  {
    v15 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_minnow.cpp", 284, "esw_sat_rpc_set_control_flag_multi_carr", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v16 = 284;
LABEL_9:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_minnow.cpp", v16, v15);
  }

  return result;
}

double BlueFin::GlPeHula::AltData::Update(uint64_t a1, uint64_t a2, BlueFin::GlPeTimeManager *a3, double a4, double a5, int8x16_t a6)
{
  v7 = a2 + 88 * (*(a2 + 32) - 1);
  result = *(v7 + 48);
  *a1 = result;
  *(a1 + 8) = *(v7 + 88);
  v9 = *(v7 + 88);
  *(a1 + 16) = v9;
  *(a1 + 64) = 3;
  if (*(a1 + 48) == 1)
  {
    v11 = *(a2 + 8);
    *(a1 + 44) = *(a2 + 24);
    *(a1 + 28) = v11;
    v22[0] = &unk_2A1F11310;
    v22[1] = 0;
    v11.i16[0] = *(a1 + 38);
    LOWORD(v9) = *(a1 + 40);
    *&v12 = *&v9;
    *v11.i64 = v11.u64[0] + *&v12 * 0.001;
    LOWORD(v12) = *(a1 + 42);
    v13 = v12;
    a6.i64[0] = 0x3EB0C6F7A0B5ED8DLL;
    *v11.i64 = *v11.i64 + v13 * 0.000001;
    BlueFin::GlUtcTime::GlUtcTime(v22, *(a1 + 28), *(a1 + 30), *(a1 + 32), *(a1 + 34), *(a1 + 36), v11, v13, a6);
    Time = BlueFin::GlPeTimeManager::GetTime(v21, a3, v22, 0);
    v15.i64[0] = v21[2];
    *(a1 + 24) = BlueFin::GlPeTimeMgrUtil::DoubleToLms(Time, v15, v16, v17, v18, v19);
    result = *a1;
  }

  else
  {
    v20 = *(a1 + 56);
    if (v20)
    {
      *(a1 + 24) = *(v20 + 576) + *(v7 + 40);
    }
  }

  *(a1 + 49) = 1;
  *(a1 + 51) = 0;
  if (result < -450.0 || result > 27500.0)
  {
    *(a1 + 49) = 0;
    result = -999.0;
    *a1 = xmmword_298A43BA0;
  }

  return result;
}

float BlueFin::GlMeSrdAsicCorrVecTrkMsmt::CopyFrom(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 == a2)
  {
    v4 = *(a2 + 148);
    v5 = *(a2 + 149);
    v6 = *(a2 + 150);
  }

  else
  {
    BlueFin::GlMeSrdSatReportTrkCorrVec::CopyFrom(a1 + 4, (a2 + 4));
    BlueFin::GlMeSrdSatReportTrkCorrVec::CopyFrom(a1 + 52, (a2 + 52));
    BlueFin::GlMeSrdSatReportTrkCorrVec::CopyFrom(a1 + 100, (a2 + 100));
    v4 = *(a2 + 148);
    v5 = *(a2 + 149);
    v6 = *(a2 + 150);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 156) = *(a2 + 156);
    *(a1 + 160) = *(a2 + 160);
  }

  *(a1 + 148) = v4;
  *(a1 + 149) = v5;
  *(a1 + 150) = v6;
  *(a1 + 164) = *(a2 + 164);
  v7 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v7;
  result = *(a2 + 184);
  *(a1 + 184) = result;
  return result;
}

char *BlueFin::GlPeNmeaGen::FormatNmeaEND(BlueFin::GlPeNmeaGen *this, const BlueFin::GlRequestImpl *a2, unsigned int a3, unsigned int a4, int a5, BlueFin::GlFormat *a6, int a7)
{
  v36 = 0;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31[0] = 1;
  v32 = a5;
  BlueFin::GlPeNmeaGen::GetRequestParams(this, a2, &v36, v31);
  BlueFin::GlPeNmeaGen::FormatTimeTag(this, a4, v13, v14);
  v16 = a7;
  v17 = a6 + a7 - 1;
  if (v17 <= a6)
  {
    v18 = 0;
  }

  else
  {
    v18 = v16;
  }

  if (*(a2 + 4) == 8)
  {
    v19 = BlueFin::GlFormat::glsnprintf(a6, v18, "$PGLOR,%d,END,%s,%.1f", v15, 2, this + 1767, a3 * 0.001);
  }

  else
  {
    v19 = BlueFin::GlFormat::glsnprintf(a6, v18, "$PGLOR,%d,END,%s,%s,%.1f", v15, 2, this + 1799, this + 1767, a3 * 0.001);
  }

  if (v31[0])
  {
    v22 = v36;
    v23 = (a6 + v19);
    v24 = 1;
    while (v22)
    {
      v25 = *v22;
      if (!*v22)
      {
        v29 = "*acNmeaNewList";
        DeviceFaultNotify("glpe_nmeagen.cpp", 4908, "FormatNmeaEND", "*acNmeaNewList");
        v30 = 4908;
LABEL_19:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nmeagen.cpp", v30, v29);
      }

      if (v17 <= v23)
      {
        v26 = 0;
      }

      else
      {
        v26 = (v17 + 1 - v23);
      }

      ++v22;
      v23 = (v23 + BlueFin::GlFormat::glsnprintf(v23, v26, ",%s,%d", v21, v25, *&v31[4 * v24]));
      if (v24++ >= v31[0])
      {
        return BlueFin::GlPeNmeaGen::nmeaAddChksum(a6, v17, v20);
      }
    }

    v29 = "acNmeaNewList";
    DeviceFaultNotify("glpe_nmeagen.cpp", 4907, "FormatNmeaEND", "acNmeaNewList");
    v30 = 4907;
    goto LABEL_19;
  }

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(a6, v17, v20);
}

uint64_t gnss::FireGnssDevice::stopTimeTransferSession(uint64_t a1, uint64_t a2)
{
  FireDeviceLog::DeviceLogBase(6, "#fgd stopTimeTransferSession");

  return std::function<void ()(gnss::Result)>::operator()(a2, 1);
}

uint64_t BlueFin::GlPosEng::SetDataSubFrmMeas(uint64_t this, BlueFin::GlDataSubFrmMeas *a2, int8x16_t a3, int8x16_t a4)
{
  if (!a2)
  {
    DeviceFaultNotify("glposeng.cpp", 897, "SetDataSubFrmMeas", "potSubframe != 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glposeng.cpp", 897, "potSubframe != 0");
  }

  v5 = this;
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    this = (*(*a2 + 24))(a2, 0, 0);
  }

  v6 = BlueFin::GlSvId::s_aucSvId2gnss[*(a2 + 8)];
  if (v6 != 7)
  {
    if (v6 != 4 || *(v5 + 120236) == 1 || (*(v5 + 120245) & 1) != 0)
    {
      goto LABEL_23;
    }

    if (*(v5 + 120244) != 1)
    {
      goto LABEL_22;
    }

    v16 = 7;
    v17 = 0;
    this = BlueFin::GlPeSvIdConverter::SvId2Gnss((v5 + 119968), a2 + 8, &v16, a3, a4);
    if (v16 > 6 || v17 - 1 > 0x3E)
    {
      goto LABEL_22;
    }

    if (*(a2 + 9) == 1)
    {
      v7 = *(a2 + 6);
      if (!(v7 >> 30))
      {
        v8 = *(a2 + 8);
        v9 = (v7 & 0x3E000) != 24576;
        v10 = (v7 & 0x20000) == 0;
        if ((v8 - 134) >= 5 && (v8 - 76) >= 5)
        {
          v12 = v10;
        }

        else
        {
          v12 = v9;
        }

        BlueFin::GlPeSvHealthHelper::OnHealthStatusDecoded((v5 + 181344), v12, &v16);
      }
    }

    this = BlueFin::GlPeSvHealthHelper::IsUsable(v5 + 181344, &v16);
    if (this)
    {
LABEL_22:
      if (*(v5 + 120243) == 1)
      {
LABEL_23:
        if ((*(v5 + 138337) & 1) == 0)
        {
          v13 = *(v5 + 123792);
          BlueFin::GlPeTimeManager::SetDataSubFrmMeas((v5 + 121216), a2, a3, a4);
          if (*(v5 + 374914) == 1)
          {
            BlueFin::GlPeAsstMgr::SetDataSubFrmMeas(v5 + 224, a2, v14, v15);
          }

          *(v5 + 374914) = 1;
          if (!v13)
          {
            if (*(v5 + 123792))
            {
              BlueFin::GlPosEng::OnInitialTime(v5);
            }
          }
        }

        BlueFin::GlPeReqBag::SetDataSubFrmMeas(v5 + 137024, a2);
        return BlueFin::GlPePlatfStatMgr::SetDataSubFrmMeas(v5 + 157952, a2);
      }
    }
  }

  return this;
}

uint64_t BlueFin::GlPeGloEphMgr::ValidateStringOrder(uint64_t a1, uint64_t a2, int a3, int8x16_t a4, double a5, int8x16_t a6, int8x16_t a7)
{
  *a4.i64 = *(a2 + 32) * 1000.0 + (1000 * (28 - 2 * a3));
  *a7.i64 = *a4.i64 + trunc(*a4.i64 * 2.32830644e-10) * -4294967300.0;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = vnegq_f64(v7);
  a7.i64[0] = vbslq_s8(v8, a7, a4).u64[0];
  if (*a4.i64 > 4294967300.0)
  {
    a4.i64[0] = a7.i64[0];
  }

  if (*a4.i64 < -4294967300.0)
  {
    *a6.i64 = -*a4.i64;
    *a4.i64 = -(*a4.i64 - trunc(*a4.i64 * -2.32830644e-10) * -4294967300.0);
    *a4.i64 = -*vbslq_s8(v8, a4, a6).i64;
  }

  v9 = *a4.i64;
  if (*a4.i64 < 0.0)
  {
    v9 = --*a4.i64;
  }

  v10 = *(a1 + 5852);
  if (v10 == -7200001)
  {
    goto LABEL_8;
  }

  if (v9 >= v10)
  {
    v12 = *(a1 + 5852);
  }

  else
  {
    v12 = v9;
  }

  if (v10 > v9)
  {
    v9 = *(a1 + 5852);
  }

  v13 = v9 - v12;
  v14 = (v9 - v12) % 0x7530;
  if (v14 > 0x3A98)
  {
    v14 = 30000 - v14;
  }

  if (v14 <= 0x15)
  {
    v15 = *(a1 + 5848);
    if (v15 <= 9)
    {
      *(a1 + 5848) = v15 + 1;
    }

    *(a1 + 5852) = v9;
    return 1;
  }

  if (v13 >= 0x7526 && v14 <= 0x3FD)
  {
LABEL_8:
    v11 = 1;
    *(a1 + 5848) = 1;
    *(a1 + 5852) = v9;
    return v11;
  }

  v17 = *(a1 + 5848);
  v18 = v17 - 1;
  if (v17 <= 1)
  {
    *(a1 + 5848) = 0xFF9222FF00000000;
    return 1;
  }

  if (v17 > 4)
  {
    return 0;
  }

  v11 = 0;
  *(a1 + 5848) = v18;
  return v11;
}

void BlueFin::GlPeTimeManager::SetDataSubFrmMeas(int8x16_t *this, const BlueFin::GlDataSubFrmMeas *a2, int8x16_t a3, int8x16_t a4)
{
  v7 = this[2].i64[1];
  v111 = 7;
  v112 = 0;
  BlueFin::GlPeSvIdConverter::SvId2Gnss(v7, a2 + 8, &v111, a3, a4);
  if (v111 <= 2)
  {
    if (v111)
    {
      if (v111 == 1)
      {
        return;
      }

LABEL_28:
      DeviceFaultNotify("glpe_timemgr.cpp", 2474, "SetDataSubFrmMeas", "otGnss.eGnss == GNSS_GPS INC_QZS(|| otGnss.eGnss == GNSS_QZSS) INC_NIC(|| otGnss.eGnss == GNSS_NAVIC)");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timemgr.cpp", 2474, "otGnss.eGnss == GNSS_GPS INC_QZS(|| otGnss.eGnss == GNSS_QZSS) INC_NIC(|| otGnss.eGnss == GNSS_NAVIC)");
    }

LABEL_29:
    if (!BlueFin::GlPeSvHealthHelper::IsUsable(this[1].i64[1] + 32, &v111))
    {
      return;
    }

    v32 = *(a2 + 9);
    v33 = *(a2 + 7);
    v34 = (v33 >> 13) & 1;
    if (v32 != 1)
    {
      LOBYTE(v34) = 0;
    }

    if ((*(a2 + 6) | *(a2 + 5)) < 0 || (*(a2 + 9) | *(a2 + 8)) < 0 || (v34 & 1) != 0 || v33 >> 30)
    {
      return;
    }

    if (this[214].i32[2] && this[219].i32[1])
    {
      goto LABEL_143;
    }

    v35 = *(a2 + 15);
    v36 = v33 >> 20;
    if (v32 == 1)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    LODWORD(v4) = *(a2 + 4);
    v110 = 0.0;
    v109 = 0;
    BlueFin::GlPeTimeManager::getFlightTimeMs(this, a2 + 8, &v110, &v109);
    LOBYTE(v106) = *(a2 + 8);
    v107 = 0;
    v41 = 575;
    v108 = 575;
    if (v106 - 189 >= 0xFFFFFF44)
    {
      v42 = BlueFin::GlSvId::s_aucSvId2gnss[v106];
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v42] == 255)
      {
        v107 = -1;
        v41 = 575;
      }

      else
      {
        v108 = BlueFin::GlSignalId::s_ausGnss2signalId[v42] + v106 - BlueFin::GlSvId::s_aucGnss2minSvId[v42];
        v41 = v108;
      }
    }

    v46 = v4;
    if (((*(*(this->i64[0] + 8) + 4 * (v41 >> 5)) >> (v41 & 0x1F)) & 1) != 0 && (MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(this->i64[0], &v106, 0, 0)) != 0 && (MeMeas[12] & 0x20) != 0)
    {
      v35 = *this->i64[0];
      v55 = v46 - *(MeMeas + 8);
      if (v55 <= 302400.0)
      {
        if (v55 <= -302400.0)
        {
          --v37;
        }
      }

      else
      {
        ++v37;
      }

      v46 = *(MeMeas + 8);
    }

    else
    {
      v109 += 1000;
    }

    v48 = v35;
    if (v109 <= 0x7D0)
    {
      v49 = 2000;
    }

    else
    {
      v49 = v109;
    }

    *v40.i64 = v46 + v110 * 0.001;
    if (this[219].i32[1])
    {
LABEL_102:
      v76 = &this[214].i32[2];
      v77 = this[214].i32[2];
      if (*(a2 + 9) != 1 || v77)
      {
LABEL_128:
        v91 = this[160].u32[2];
        if (v91 <= 0xFF9222FE)
        {
          v92 = v91;
        }

        else
        {
          v92 = v91;
        }

        if (v77 && (this[219].i8[0] & 1) == 0)
        {
          BlueFin::GlPeVerifySubframeTime::GetVerifiedWeek(&v113, v92, &this[214].i32[2]);
          LODWORD(v95) = v116;
          v117 = v115;
          LODWORD(v118) = 0;
          v119 = v113;
          v120 = v95;
          this[219].i8[0] = 1;
          this[223].i8[8] = 1;
          v94 = 5;
        }

        else if (!this[219].i32[1] || (this[219].i8[0] & 1) != 0 || (this[223].i8[8] & 1) != 0 || !this[161].i32[0])
        {
          if (*(a2 + 9) != 1 || this[161].i32[0])
          {
            goto LABEL_143;
          }

          v38.i64[0] = v40.i64[0];
          *v39.i64 = v91;
          BlueFin::GlGpsTime::GlGpsTime(&v113, v37, v38, v39);
          v117 = *&v114;
          LODWORD(v118) = 0;
          v119 = v48;
          v120 = v49;
          v94 = 4;
        }

        else
        {
          BlueFin::GlPeTimeManager::GetTime(this, v92, 1, &v103);
          v105[0] = &off_2A1F0B5F0;
          v105[1] = 0;
          BlueFin::GlPeGnssTime::GetGps(&v103, v105);
          BlueFin::GlPeVerifySubframeTime::GetVerifiedTow(&v113, v92, &this[214].u64[1], v105);
          LODWORD(v93) = v116;
          v117 = v115;
          LODWORD(v118) = 0;
          v119 = v113;
          v120 = v93;
          this[223].i8[8] = 1;
          v94 = 6;
        }

        BlueFin::GlPeTimeManager::SetTime(this, &v117, v94, a2 + 8);
LABEL_143:
        if (!BlueFin::GlSvId::s_aucSvId2gnss[*(a2 + 8)])
        {
          v113 = COERCE_DOUBLE(&off_2A1F0B5F0);
          *&v114 = 0.0;
          if (this[161].i32[0])
          {
            BlueFin::GlPeTimeManager::GetTime(&v117, this, *(a2 + 15), 1);
            *&v114 = v117;
            v96 = &v113;
          }

          else
          {
            v96 = 0;
          }

          BlueFin::GlPeGpsTimeMgr::SetDataSubFrmMeas(this + 4, a2, v96);
          v97 = this[11].u8[0];
          this[11].i8[0] = 0;
          if (v97 == 1)
          {
            BlueFin::GlPeTimeManager::UpdateLeapSecFromGpsUtcModel(this);
          }
        }

        return;
      }

      if (v37 < 0)
      {
        LOWORD(v37) = 1023;
      }

      v103 = &off_2A1F0B5F0;
      *v38.i64 = *v40.i64 - trunc(*v40.i64);
      v78.f64[0] = NAN;
      v78.f64[1] = NAN;
      v39 = vnegq_f64(v78);
      v38 = vbslq_s8(v39, v38, v40);
      if (*v38.i64 < 0.0 || *v38.i64 >= 1.0)
      {
        DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
      }

      v80 = *v38.i64 * 4294967300.0 + 0.5;
      v81 = v80;
      if (v80 >= 4294967300.0)
      {
        v81 = -1;
      }

      v82 = *v40.i64 + 604800 * v37;
      *&v104 = COERCE_DOUBLE(__PAIR64__(v82, v81));
      v103 = &off_2A1F0B5F0;
      v83 = *this[215].i64;
      if (v83 == -7199999.0)
      {
        *this[215].i64 = v48;
        this[216].i32[0] = v81;
        this[216].i32[1] = v82;
        this[216].i32[2] = v49;
LABEL_127:
        v77 = *v76;
        goto LABEL_128;
      }

      v84 = v48 - v83;
      if (*this[217].i64 == -7199999.0)
      {
        if (v84 <= 25000.0)
        {
          goto LABEL_127;
        }

        v102 = v40.i64[0];
        *this[217].i64 = v48;
        this[218].i32[0] = v81;
        this[218].i32[1] = v82;
        this[218].i32[2] = v49;
        v85 = this[216].i64[0];
        v117 = v83;
        v119 = *&v85;
        v118 = &off_2A1F0B5F0;
        LODWORD(v120) = this[216].i32[2];
        BlueFin::GlPeVerifySubframeTime::stSubframeTime::operator+=(&v117, v84 * 0.001);
        *v38.i64 = BlueFin::GlPeVerifySubframeTime::stSubframeTime::operator-(this[218].u32[0], this[218].u32[1], LODWORD(v119), HIDWORD(v119));
        if (fabs(*v38.i64) > (this[218].i32[2] + LODWORD(v120)) * 0.000001)
        {
LABEL_126:
          v40.i64[0] = v102;
          goto LABEL_127;
        }
      }

      else
      {
        v102 = v40.i64[0];
        v86 = this[216].i64[0];
        v117 = *this[215].i64;
        v119 = *&v86;
        v118 = &off_2A1F0B5F0;
        LODWORD(v120) = this[216].i32[2];
        BlueFin::GlPeVerifySubframeTime::stSubframeTime::operator+=(&v117, v84 * 0.001);
        v117 = v48;
        v87 = *this[218].i64;
        v113 = *this[217].i64;
        v115 = v87;
        *&v114 = COERCE_DOUBLE(&off_2A1F0B5F0);
        v116 = this[218].i32[2];
        BlueFin::GlPeVerifySubframeTime::stSubframeTime::operator+=(&v113, (v48 - v113) * 0.001);
        v88 = v104;
        v89 = HIDWORD(v104);
        *v38.i64 = BlueFin::GlPeVerifySubframeTime::stSubframeTime::operator-(v104, HIDWORD(v104), LODWORD(v119), HIDWORD(v119));
        if (fabs(*v38.i64) > (LODWORD(v120) + v49) * 0.000001)
        {
          if (fabs(BlueFin::GlPeVerifySubframeTime::stSubframeTime::operator-(v104, HIDWORD(v104), LODWORD(v115), HIDWORD(v115))) > (v116 + v49) * 0.000001)
          {
            this[215].i64[0] = this[217].i64[0];
            this[216].i64[0] = this[218].i64[0];
            this[216].i32[2] = this[218].i32[2];
            *this[217].i64 = v48;
            this[218].i32[0] = v88;
            this[218].i32[1] = v89;
            this[218].i32[2] = v49;
            goto LABEL_126;
          }

          v90 = 2;
LABEL_125:
          *v76 = v90;
          goto LABEL_126;
        }
      }

      v90 = 1;
      goto LABEL_125;
    }

    v103 = &off_2A1F0B5F0;
    *v38.i64 = *v40.i64 - trunc(*v40.i64);
    v50.f64[0] = NAN;
    v50.f64[1] = NAN;
    v39 = vnegq_f64(v50);
    v38 = vbslq_s8(v39, v38, v40);
    if (*v38.i64 < 0.0 || *v38.i64 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v52 = *v38.i64 * 4294967300.0 + 0.5;
    v53 = v52;
    if (v52 >= 4294967300.0)
    {
      v53 = -1;
    }

    LODWORD(v104) = v53;
    HIDWORD(v104) = *v40.i64;
    v103 = &off_2A1F0B5F0;
    v54 = *&this[219].i64[1];
    if (v54 == -7199999.0)
    {
      *&this[219].i64[1] = v48;
      this[220].i32[2] = v53;
      this[220].i32[3] = *v40.i64;
      this[221].i32[0] = v49;
      goto LABEL_102;
    }

    v56 = v48 - v54;
    if (*&this[221].i64[1] == -7199999.0)
    {
      if (v56 <= 5000.0)
      {
        goto LABEL_102;
      }

      v101 = v40;
      v57 = this[220].i64[1];
      v117 = *&this[219].i64[1];
      v119 = *&v57;
      v118 = &off_2A1F0B5F0;
      LODWORD(v120) = this[221].i32[0];
      BlueFin::GlPeVerifySubframeTime::stSubframeTime::operator+=(&v117, v56 * 0.001);
      *&this[221].i64[1] = v48;
      v58 = v104;
      v59 = HIDWORD(v104);
      this[222].i32[2] = v104;
      this[222].i32[3] = v59;
      this[223].i32[0] = v49;
      if (fabs(BlueFin::GlPeVerifySubframeTime::stSubframeTime::operator-(v58, v59, LODWORD(v119), HIDWORD(v119))) > (LODWORD(v120) + v49) * 0.000001)
      {
LABEL_101:
        v40 = v101;
        goto LABEL_102;
      }
    }

    else
    {
      v101 = v40;
      v71 = this[220].i64[1];
      v117 = *&this[219].i64[1];
      v119 = *&v71;
      v118 = &off_2A1F0B5F0;
      LODWORD(v120) = this[221].i32[0];
      BlueFin::GlPeVerifySubframeTime::stSubframeTime::operator+=(&v117, v56 * 0.001);
      v117 = v35;
      v72 = *&this[222].i64[1];
      v113 = *&this[221].i64[1];
      v115 = v72;
      *&v114 = COERCE_DOUBLE(&off_2A1F0B5F0);
      v116 = this[223].i32[0];
      BlueFin::GlPeVerifySubframeTime::stSubframeTime::operator+=(&v113, (v48 - v113) * 0.001);
      v73 = v104;
      v74 = HIDWORD(v104);
      *v38.i64 = BlueFin::GlPeVerifySubframeTime::stSubframeTime::operator-(v104, HIDWORD(v104), LODWORD(v119), HIDWORD(v119));
      if (fabs(*v38.i64) > (LODWORD(v120) + v49) * 0.000001)
      {
        if (fabs(BlueFin::GlPeVerifySubframeTime::stSubframeTime::operator-(v104, HIDWORD(v104), LODWORD(v115), HIDWORD(v115))) > (v116 + v49) * 0.000001)
        {
          this[219].i64[1] = this[221].i64[1];
          this[220].i64[1] = this[222].i64[1];
          this[221].i32[0] = this[223].i32[0];
          *&this[221].i64[1] = v48;
          this[222].i32[2] = v73;
          this[222].i32[3] = v74;
          this[223].i32[0] = v49;
          goto LABEL_101;
        }

        v75 = 2;
LABEL_100:
        this[219].i32[1] = v75;
        goto LABEL_101;
      }
    }

    v75 = 1;
    goto LABEL_100;
  }

  if (v111 == 3)
  {
    goto LABEL_29;
  }

  if (v111 == 4)
  {
    return;
  }

  if (v111 != 6)
  {
    goto LABEL_28;
  }

  BlueFin::GlPeNicTimeMgr::SetDataSubFrmMeas(&this[152].u64[1], a2);
  this[156].i8[8] = 0;
  v8 = this[159].u8[0];
  this[159].i8[0] = 0;
  if (v8 == 1)
  {
    BlueFin::GlPeTimeManager::updateConversionTable(this);
  }

  if (!this[161].i32[0] && this[153].i8[0] == 1)
  {
    v9 = this[153].u16[1];
    v10 = this[153].u32[2];
    v11 = this[153].u32[1];
    v105[0] = 0;
    v106 = 0;
    BlueFin::GlPeTimeManager::getFlightTimeMs(this, a2 + 8, v105, &v106);
    *v12.i64 = v10;
    v13 = v106;
    v113 = COERCE_DOUBLE(&off_2A1F0DFC8);
    *v14.i64 = v10 - trunc(v10);
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v16 = vbslq_s8(vnegq_f64(v15), v14, v12);
    if (*v16.i64 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v17 = *v16.i64 * 4294967300.0 + 0.5;
    v18 = v17;
    if (v17 >= 4294967300.0)
    {
      v18 = -1;
    }

    v19 = v10 + 604800 * v9 + 619315200;
    *&v114 = COERCE_DOUBLE(__PAIR64__(v19, v18));
    v113 = COERCE_DOUBLE(&off_2A1F0DFC8);
    v20 = this[160].u32[2];
    v21 = v20;
    if (v20 <= 0xFF9222FE)
    {
      v21 = v20;
    }

    v22 = v11;
    if (v11 <= 0xFF9222FE)
    {
      v22 = v11;
    }

    v23 = (*v105 + v21 - v22) * 0.001;
    v24 = fabs(v23);
    v25 = v24 - trunc(v24);
    v26 = v25 * 4294967300.0 + 0.5;
    LODWORD(v27) = v26;
    if (v26 >= 4294967300.0)
    {
      v27 = 0xFFFFFFFFLL;
    }

    else
    {
      v27 = v27;
    }

    if (v25 < 0.0 || v25 >= 1.0)
    {
      v98 = "dFracSec >= 0.0 && dFracSec < 1.0";
      v99 = 173;
      v100 = "glpe_timepoint.h";
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      goto LABEL_151;
    }

    v29 = v24;
    if (v23 < 0.0)
    {
      v43 = v19 - v29;
      if (v19 > v29 || v19 == v29 && v18 >= v27)
      {
        v44 = v18 >= v27;
        LODWORD(v30) = v18 - v27;
        v45 = !v44;
        v31 = v43 - v45;
      }

      else
      {
        if (v29 - v19 != v18 > v27 || v18 != v27)
        {
          v98 = "!tDelta.isNegative()";
          v99 = 425;
          v100 = "glpe_datetime.h";
          DeviceFaultNotify("glpe_datetime.h", 425, "operator+=", "!tDelta.isNegative()");
LABEL_151:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v100, v99, v98);
        }

        v31 = 0;
        LODWORD(v30) = 0;
      }
    }

    else
    {
      v30 = v27 + v18;
      v31 = v19 + v29 + HIDWORD(v30);
    }

    *&v114 = COERCE_DOUBLE(__PAIR64__(v31, v30));
    v61 = v31 - 619315200;
    v62 = (v31 - 619315200) / 0x93A80u;
    *v12.i64 = v30 * 2.32830644e-10 + (v61 - 604800 * v62);
    v103 = &off_2A1F0B5F0;
    *v16.i64 = *v12.i64 - trunc(*v12.i64);
    v63.f64[0] = NAN;
    v63.f64[1] = NAN;
    v16.i64[0] = vbslq_s8(vnegq_f64(v63), v16, v12).i64[0];
    if (*v16.i64 < 0.0 || *v16.i64 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v65 = v62 & 0x3FF;
    v66 = *v16.i64 * 4294967300.0 + 0.5;
    v67 = v66;
    if (v66 >= 4294967300.0)
    {
      v67 = -1;
    }

    LODWORD(v104) = v67;
    HIDWORD(v104) = *v12.i64 + 604800 * v65;
    v103 = &off_2A1F0B5F0;
    v68 = *(BlueFin::GlPeGnssTime::GetConversionTable(&this[163]) + 68) + 0.0 + (v13 + 1000);
    v69 = this[160].u32[2];
    v70 = v69;
    if (v69 <= 0xFF9222FE)
    {
      v70 = v69;
    }

    v117 = *&v104;
    LODWORD(v118) = 0;
    v119 = v70;
    v120 = v68;
    BlueFin::GlPeTimeManager::SetTime(this, &v117, 4u, a2 + 8);
  }
}

uint64_t BlueFin::GlPeReqBag::SetGlonassDataString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v8 = (a1 + 3233);
  v9 = *(a1 + 3233);
  *(a1 + 3233) = 0;
  do
  {
    result = *(a1 + v6);
    if (result)
    {
      result = (*(*result + 120))(result, a2, a3);
    }

    v6 += 8;
  }

  while (v6 != 576);
  *v8 = v9;
  return result;
}

uint64_t BlueFin::GlPeRqHdlrGnssMeasData::SetGlonassDataString(BlueFin::GlPeRqHdlrGnssMeasData *this, BlueFin::GlGlonassDataString *a2, int8x16_t a3, int8x16_t a4)
{
  v29[2] = *MEMORY[0x29EDCA608];
  v5 = this + 36864;
  v6 = *(this + 1);
  *(this + 4995) = 0;
  *(this + 4994) = 0;
  *(this + 4993) = 0;
  memset(v29, 0, 11);
  v7 = *(a2 + 8);
  *(this + 19974) = v7 + 41;
  v8 = *(*(*(this + 7) + 24) + 48);
  if (v8)
  {
    v9 = v7 - 52;
    v10 = v7 - 59;
    if (v9 >= 0xE)
    {
      v10 = -8;
    }

    v28 = 0;
    BlueFin::GlPeGloFcnOsnMgr::FCN2OSN(v8, v10, &v28, a3, a4);
    if (v28)
    {
      *(v5 + 1542) |= v28 << 8;
    }
  }

  *(v5 + 1543) = 769;
  *(v5 + 770) = 24;
  v11 = a2 + 20;
  v12 = (*(a2 + 5) >> 27) & 0xF;
  *(v5 + 1545) = (*(a2 + 5) >> 27) & 0xF;
  v13 = *(a2 + 3);
  if (!v13)
  {
    v13 = 86400000;
    *(a2 + 3) = 86400000;
  }

  if (*(a2 + 5))
  {
    v15 = -(((v12 - 1) + (v12 - 1)) - v13 * 0.001) / 30.0;
    v14 = (fmodf(v15, 5.0) + 1.0);
  }

  else
  {
    LOWORD(v14) = -1;
  }

  v16 = 0;
  *(v5 + 1544) = v14;
  v17 = xmmword_298A319C0;
  v18 = xmmword_298A319D0;
  v19 = xmmword_298A397C0;
  v20.i64[0] = 0xFF000000FFLL;
  v20.i64[1] = 0xFF000000FFLL;
  v21.i64[0] = 0xF0000000FLL;
  v21.i64[1] = 0xF0000000FLL;
  v22.i64[0] = 0x1800000018;
  v22.i64[1] = 0x1800000018;
  v23 = vdupq_n_s64(4uLL);
  *(v5 + 773) = 11;
  v24.i64[0] = 0x400000004;
  v24.i64[1] = 0x400000004;
  do
  {
    v25 = vcgtq_u64(vdupq_n_s64(0xBuLL), v18);
    *v25.i8 = vuzp1_s16(vmovn_s64(v25), *v17.i8);
    if (v25.i8[0])
    {
      v25.i32[0] = *&v11[v16];
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), *&v18)), *&v17).i8[2])
    {
      v25.i32[1] = *&v11[v16];
    }

    if (vuzp1_s16(*&v17, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), *&v17))).i32[1])
    {
      v25.i32[2] = *&v11[v16];
      v25.i32[3] = v25.i32[2];
    }

    v26 = vmovn_s32(vandq_s8(vshlq_u32(v25, vnegq_s32(vbicq_s8(v22, vshlq_n_s32(v19, 3uLL)))), vbslq_s8(vuzp1q_s32(vceqzq_s64(v18), vceqzq_s64(v17)), v21, v20)));
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), v18)), *v17.i8).u8[0])
    {
      *(v29 + v16) = v26.i8[0];
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), *&v18)), *&v17).i8[2])
    {
      *(v29 + v16 + 1) = v26.i8[2];
    }

    if (vuzp1_s16(*&v17, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), *&v17))).i32[1])
    {
      *(v29 + v16 + 2) = v26.i8[4];
      *(v29 + v16 + 3) = v26.i8[6];
    }

    v16 += 4;
    v17 = vaddq_s64(v17, v23);
    v18 = vaddq_s64(v18, v23);
    v19 = vaddq_s32(v19, v24);
  }

  while (v16 != 12);
  *(v5 + 387) = v29;
  return BlueFin::GlRequestImplGnssMeasData::OnNavData(v6, (v5 + 3080));
}

void BlueFin::GlPeAsstMgr::SetDataSubFrmMeas(uint64_t this, const BlueFin::GlDataSubFrmMeas *a2, int8x16_t a3, int8x16_t a4)
{
  v4 = *(a2 + 8);
  if (*(a2 + 8))
  {
    if (v4 < 0x21)
    {
LABEL_3:
      BlueFin::GlPeNavMsgParser::SetDataSubFrmMeas((this + 119848), a2, *a3.i64, a4);
      return;
    }

    if (v4 < 0x34)
    {
      BlueFin::GlPeSbasMgr::HandleMsg(*(this + 7360), a2);
    }

    else if (v4 >= 0x42)
    {
      if (v4 < 0x4C)
      {
        goto LABEL_3;
      }

      if (v4 >= 0x8B)
      {
        if (v4 - 175 < 0xE)
        {
          BlueFin::GlPeNavMsgParser::SetNicDataSubFrmMeas(this + 119848, a2, *a3.i64, a4);
        }
      }

      else
      {
        BlueFin::GlPeBdIFMgr::SetDataSubFrmMeas(*(*(this + 7384) + 544), a2, a3, a4);
      }
    }
  }
}

BlueFin::GlPeIonoMgr **BlueFin::GlPeNavMsgParser::SetDataSubFrmMeas(BlueFin::GlPeIonoMgr **this, const BlueFin::GlDataSubFrmMeas *a2, double a3, int8x16_t a4)
{
  v4 = *(a2 + 4);
  v5 = (715827883 * ((v4 + 24) % 0x1Eu)) >> 32;
  if (v5 + 1 == *(a2 + 9))
  {
    v6 = this;
    v15 = &unk_2A1F09388;
    v16[0] = *(a2 + 8);
    v16[1] = v5 + 1;
    v17 = *(a2 + 3);
    v18 = v4;
    v22 = *(a2 + 15);
    v19 = *(a2 + 20);
    v7 = *(a2 + 36);
    v20 = v7;
    v21 = *(a2 + 52);
    if (!(v19 >> 30) && (v19 & 0x3FC00000) != 0x22C00000)
    {
      LODWORD(v19) = v19 | 0x80000000;
    }

    if (DWORD1(v19) >> 30)
    {
      goto LABEL_15;
    }

    v8 = (DWORD1(v19) >> 8) & 7;
    if ((BYTE4(v19) & 3) == 1)
    {
      goto LABEL_7;
    }

    if (v4 == 604800)
    {
      v4 = 0;
    }

    if (DWORD1(v19) >> 19 > 0x626 || (BYTE4(v19) & 3) == 2 || 6 * (DWORD1(v19) >> 13) != v4)
    {
LABEL_7:
      DWORD1(v19) |= 0x80000000;
    }

    if (v8 == v5 + 1)
    {
LABEL_15:
      if (!(HIDWORD(v21) >> 30) && (v21 & 0x300000000) != 0 && (BYTE4(v21) & 3) != 3)
      {
        HIDWORD(v21) |= 0x80000000;
      }

      if ((v5 - 1) >= 2)
      {
        if ((v5 - 3) < 2)
        {
          BlueFin::GlPeIonoMgr::SetDataSubFrmMeas(*this, &v15);
          return BlueFin::GlPeAlmMgr::SetDataSubFrmMeas(v6[5], &v15);
        }

        BlueFin::GlPeIonoMgr::SetDataSubFrmMeas(*this, &v15);
      }

      v9 = v6[1];
      v23 = 7;
      v24 = 0;
      BlueFin::GlPeSvIdConverter::SvId2Gnss(v9 + 14968, v16, &v23, v7, a4);
      if (v24 - 1 >= 0x3F)
      {
        v13 = "m_rAsstMgr.SvId2Gnss(otSubframe.otSvId, otGnss)";
        DeviceFaultNotify("glpe_navmsgparser.cpp", 134, "SetDataSubFrmMeas", "m_rAsstMgr.SvId2Gnss(otSubframe.otSvId, otGnss)");
        v14 = 134;
      }

      else
      {
        if (v23 == 3)
        {
          v12 = v6[3];
          return BlueFin::GlPeGpsQzssEphMgr::SetDataSubFrmMeas(v12, &v15, v10, v11);
        }

        if (!v23)
        {
          v12 = v6[2];
          return BlueFin::GlPeGpsQzssEphMgr::SetDataSubFrmMeas(v12, &v15, v10, v11);
        }

        v13 = "false";
        DeviceFaultNotify("glpe_navmsgparser.cpp", 147, "SetDataSubFrmMeas", "false");
        v14 = 147;
      }

      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navmsgparser.cpp", v14, v13);
    }
  }

  return this;
}

uint64_t BlueFin::GlRequestImplGnssMeasData::OnNavData(uint64_t result, uint64_t a2)
{
  v3 = result;
  v5[0] = &unk_2A1F14530;
  v5[1] = a2;
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    result = off_2A1F14548(v5, 0, 0);
  }

  v4 = *(v3 + 88);
  if (v4)
  {
    return v4(v3, a2);
  }

  return result;
}

uint64_t BlueFin::GlPeGpsQzssEphMgr::SetDataSubFrmMeas(BlueFin::GlPeGpsQzssEphMgr *this, BlueFin::GlDataSubFrmMeas *a2, int8x16_t a3, int8x16_t a4)
{
  v175 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v9 = "pDataSubFrmMeas != 0";
    DeviceFaultNotify("glpe_ephmgr.cpp", 3974, "SetDataSubFrmMeas", "pDataSubFrmMeas != 0");
    v10 = 3974;
    goto LABEL_131;
  }

  if (*(a2 + 9) - 1 >= 3)
  {
    v9 = "pDataSubFrmMeas->ucSubFrmId == 1 || pDataSubFrmMeas->ucSubFrmId == 2 || pDataSubFrmMeas->ucSubFrmId == 3";
    DeviceFaultNotify("glpe_ephmgr.cpp", 3975, "SetDataSubFrmMeas", "pDataSubFrmMeas->ucSubFrmId == 1 || pDataSubFrmMeas->ucSubFrmId == 2 || pDataSubFrmMeas->ucSubFrmId == 3");
    v10 = 3975;
    goto LABEL_131;
  }

  v6 = *(this + 8);
  v161 = 7;
  LOBYTE(v162) = 0;
  result = BlueFin::GlPeSvIdConverter::SvId2Gnss(v6, a2 + 8, &v161, a3, a4);
  if (v161 > 6 || (v8 = v162, v162 - 1 >= 0x3F))
  {
    v9 = "otGnss.isValid()";
    DeviceFaultNotify("glpe_ephmgr.cpp", 3978, "SetDataSubFrmMeas", "otGnss.isValid()");
    v10 = 3978;
    goto LABEL_131;
  }

  if (*(this + 3) != v161)
  {
    return result;
  }

  v148 = *(*(this + 2) + 2568);
  BlueFin::GlArray::EnsureValidHandle(this + 544, v162);
  if (*(*(this + 70) + v8 - *(this + 580)) == 255 && *(this + 583) == 255)
  {
    *&v155 = this + 544;
    BYTE8(v155) = 0;
    if (*(this + 582))
    {
      v69 = 0;
      v70 = 0;
      do
      {
        v71 = BlueFin::GlArrayIterator::Next(&v155);
        v72 = *(BlueFin::GlArray::Get((this + 544), v71) + 8);
        v73 = v148 - v72;
        if (v69 <= v148 - v72)
        {
          v74 = v71;
        }

        else
        {
          v74 = v70;
        }

        if (v69 > v73)
        {
          v73 = v69;
        }

        if (v148 > v72)
        {
          v70 = v74;
          v69 = v73;
        }
      }

      while (BYTE8(v155) < *(v155 + 38));
      if (v69 > 0xEA60)
      {
        BlueFin::GlArray::Remove((this + 544), v70);
        v8 = v162;
        goto LABEL_8;
      }

      v8 = v162;
    }

    v92 = BlueFin::GNSS2STR(*(this + 3));
    return GlCustomLog(13, "EphMgr(%s,%d)[%u]: No free decoders available! GnssId:%d\n", v92, v8, v148, v8);
  }

LABEL_8:
  BlueFin::GlArray::EnsureValidHandle(this + 544, v8);
  if (*(*(this + 70) + v8 - *(this + 580)) == 255)
  {
    v11 = BlueFin::GlArray::Add((this + 544), v8);
    if (v11)
    {
      *v11 = *(this + 3);
      *(v11 + 4) = v8;
      *(v11 + 8) = -7200001;
      *(v11 + 24) = 0u;
      v12 = v11 + 24;
      *(v11 + 40) = 0u;
      *(v11 + 56) = 0u;
      *(v11 + 72) = 0u;
      *(v11 + 12) = 0;
      v13 = v11;
      *(v11 + 20) = 0;
      Time = BlueFin::GlPeTimeManager::GetTime(*(this + 2), 1, &v149);
      v15 = (*(*this + 368))(this, &v162, Time);
      v16 = v15;
      v17 = (*(v15 + 8) & 0xF) != 1 || v149.n128_u32[2] == -1;
      if (!v17 && *&v150[8] != 4294967300.0 && !BlueFin::GlPeEphemeris::isExpired(v15, &v149))
      {
        v155 = v12;
        LOBYTE(v156[0]) = 0;
        DWORD1(v156[1]) = 0;
        *(v156 + 12) = 0;
        *(v156 + 4) = 0x8000000080;
        BYTE8(v156[1]) = 0;
        v18 = (*(*v16 + 192))(v16, 28);
        BlueFin::GlBitBuffer::PutU(&v155, v18, 0xAu);
        v19 = (*(*v16 + 192))(v16, 4);
        BlueFin::GlBitBuffer::PutU(&v155, v19, 4u);
        v20 = (*(*v16 + 192))(v16, 3);
        BlueFin::GlBitBuffer::PutU(&v155, v20, 6u);
        v21 = (*(*v16 + 192))(v16, 5);
        BlueFin::GlBitBuffer::PutU(&v155, v21, 0xAu);
        v22 = (*(*v16 + 208))(v16, 6);
        BlueFin::GlBitBuffer::PutU(&v155, v22, 8u);
        v23 = (*(*v16 + 192))(v16, 7);
        BlueFin::GlBitBuffer::PutU(&v155, v23, 0x10u);
        v24 = (*(*v16 + 208))(v16, 8);
        BlueFin::GlBitBuffer::PutU(&v155, v24, 8u);
        v25 = (*(*v16 + 208))(v16, 9);
        BlueFin::GlBitBuffer::PutU(&v155, v25, 0x10u);
        v26 = (*(*v16 + 208))(v16, 10);
        BlueFin::GlBitBuffer::PutU(&v155, v26, 0x16u);
        v155 = (v13 + 40);
        LOBYTE(v156[0]) = 0;
        DWORD1(v156[1]) = 0;
        HIDWORD(v156[0]) = 0;
        *(v156 + 4) = 0xC0000000C0;
        BYTE8(v156[1]) = 0;
        v27 = (*(*v16 + 192))(v16, 29);
        BlueFin::GlBitBuffer::PutU(&v155, v27, 8u);
        v28 = (*(*v16 + 208))(v16, 11);
        BlueFin::GlBitBuffer::PutU(&v155, v28, 0x10u);
        v29 = (*(*v16 + 208))(v16, 12);
        BlueFin::GlBitBuffer::PutU(&v155, v29, 0x10u);
        v30 = (*(*v16 + 208))(v16, 13);
        BlueFin::GlBitBuffer::PutU(&v155, v30, 0x20u);
        v31 = (*(*v16 + 208))(v16, 14);
        BlueFin::GlBitBuffer::PutU(&v155, v31, 0x10u);
        v32 = (*(*v16 + 192))(v16, 15);
        BlueFin::GlBitBuffer::PutU(&v155, v32, 0x20u);
        v33 = (*(*v16 + 208))(v16, 16);
        BlueFin::GlBitBuffer::PutU(&v155, v33, 0x10u);
        v34 = (*(*v16 + 192))(v16, 17);
        BlueFin::GlBitBuffer::PutU(&v155, v34, 0x20u);
        v35 = (*(*v16 + 192))(v16, 18);
        BlueFin::GlBitBuffer::PutU(&v155, v35, 0x10u);
        v36 = (*(*v16 + 192))(v16, 30);
        BlueFin::GlBitBuffer::PutU(&v155, v36, 1u);
        v155 = (v13 + 64);
        LOBYTE(v156[0]) = 0;
        DWORD1(v156[1]) = 0;
        HIDWORD(v156[0]) = 0;
        *(v156 + 4) = 0xC0000000C0;
        BYTE8(v156[1]) = 0;
        v37 = (*(*v16 + 208))(v16, 19);
        BlueFin::GlBitBuffer::PutU(&v155, v37, 0x10u);
        v38 = (*(*v16 + 208))(v16, 20);
        BlueFin::GlBitBuffer::PutU(&v155, v38, 0x20u);
        v39 = (*(*v16 + 208))(v16, 21);
        BlueFin::GlBitBuffer::PutU(&v155, v39, 0x10u);
        v40 = (*(*v16 + 208))(v16, 22);
        BlueFin::GlBitBuffer::PutU(&v155, v40, 0x20u);
        v41 = (*(*v16 + 208))(v16, 23);
        BlueFin::GlBitBuffer::PutU(&v155, v41, 0x10u);
        v42 = (*(*v16 + 208))(v16, 24);
        BlueFin::GlBitBuffer::PutU(&v155, v42, 0x20u);
        v43 = (*(*v16 + 208))(v16, 25);
        BlueFin::GlBitBuffer::PutU(&v155, v43, 0x18u);
        v44 = (*(*v16 + 192))(v16, 29);
        BlueFin::GlBitBuffer::PutU(&v155, v44, 8u);
        v45 = (*(*v16 + 208))(v16, 26);
        BlueFin::GlBitBuffer::PutU(&v155, v45, 0xEu);
        *(v13 + 16) = 7;
        if ((*(*v16 + 184))(v16))
        {
          v46 = 7;
        }

        else
        {
          v46 = 0;
        }

        *(v13 + 17) = v46;
        v47 = BlueFin::GNSS2STR(*(this + 3));
        v48 = v162;
        v49 = *(*(this + 2) + 2568);
        v50 = BlueFin::GlPeEphemerisMgr::m_acEphDataSource[(*(*v16 + 144))(v16) + 1];
        v51 = (*(*v16 + 192))(v16, 5);
        GlCustomLog(14, "EphMgr(%s,%d)[%u]: Pre-loaded with existing data.  Src:%s  IODC:%03x\n", v47, v48, v49, v50, v51);
      }

      result = v13;
      goto LABEL_23;
    }

    v9 = "pBuffer != nullptr";
    DeviceFaultNotify("glpe_ephmgr.cpp", 4277, "getDecoder", "pBuffer != nullptr");
    v10 = 4277;
LABEL_131:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", v10, v9);
  }

  result = BlueFin::GlArray::Get((this + 544), v8);
  if (!result)
  {
    v9 = "potDecoder != nullptr";
    DeviceFaultNotify("glpe_ephmgr.cpp", 4296, "getDecoder", "potDecoder != nullptr");
    v10 = 4296;
    goto LABEL_131;
  }

LABEL_23:
  v52 = *(a2 + 9);
  if ((v52 - 4) <= 0xFCu)
  {
    DeviceFaultNotify("glpe_ephmgr.cpp", 812, "InsertSubframe", "ucSubId == 1 || ucSubId == 2 || ucSubId == 3");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 812, "ucSubId == 1 || ucSubId == 2 || ucSubId == 3");
  }

  v174 = 0;
  v172 = 0u;
  v173 = 0u;
  v149.n128_u64[0] = &v172;
  v149.n128_u64[1] = 0;
  v150[0] = 0;
  *&v150[20] = 0;
  *&v150[12] = 0;
  *&v150[4] = vdup_n_s32(0x140u);
  v150[24] = 0;
  if (*(a2 + 7) >> 30)
  {
    return result;
  }

  v145 = v52 - 1;
  v147 = result;
  v53 = (a2 + 32);
  v54 = -1;
  v55 = 61;
  do
  {
    BlueFin::GlBitBuffer::Position(&v149, v55);
    result = BlueFin::GlBitBuffer::PutU(&v149, *(v53 - 1) >> 6, 0x18u);
    if (v54 == -8)
    {
      *(v147 + 18) = 0;
      v157 = 0u;
      *&v171[0] = &v155;
      *&v171[1] = v156;
      *&v171[2] = &v156[1] + 8;
      v58 = *&v171[v145];
      v155 = 0u;
      memset(v156, 0, sizeof(v156));
      v59 = byte_298A3BA40[v145];
      LODWORD(v167[0]) = 0;
      BlueFin::GlBitBuffer::Initialize(&v163, v58, v59);
      v60 = 0;
      v61 = BlueFin::GlPeGpsTypeEphemerisDecoder::InsertSubframe(BlueFin::GlDataSubFrmMeas const&)::aucFieldIdx[v145];
      if (BlueFin::GlPeGpsTypeEphemerisDecoder::InsertSubframe(BlueFin::GlDataSubFrmMeas const&)::aucNumFields[v145] <= 1u)
      {
        v62 = 1;
      }

      else
      {
        v62 = BlueFin::GlPeGpsTypeEphemerisDecoder::InsertSubframe(BlueFin::GlDataSubFrmMeas const&)::aucNumFields[v145];
      }

      do
      {
        v63 = (&BlueFin::GlPeGpsTypeEphemerisDecoder::InsertSubframe(BlueFin::GlDataSubFrmMeas const&)::aucSfFieldOffsets + 4 * (v61 + v60));
        BlueFin::GlBitBuffer::Position(&v149, *v63);
        LODWORD(v63) = *(v63 + 2);
        v64 = BlueFin::GlBitBuffer::GetU(&v149, v63);
        BlueFin::GlBitBuffer::PutU(&v163, v64, v63);
        ++v60;
      }

      while (v62 != v60);
      *v168 = v147 + 24;
      v169 = v147 + 40;
      v170 = v147 + 64;
      v65 = *(v147 + 17);
      v66 = *&v168[8 * v145];
      v67 = 1 << v145;
      if (((1 << v145) & *(v147 + 16)) != 0)
      {
        if (!memcmp(*&v168[8 * v145], v58, v59))
        {
          v75 = v65 | v67;
          v57 = v147;
          *(v147 + 17) = v75;
          *(v147 + 18) = *(v147 + 19);
        }

        else
        {
          v68 = v65 & ~v67;
          v57 = v147;
          *(v147 + 17) = v68;
          *(v147 + 18) = 1;
          memcpy(v66, v58, v59);
        }

        *(v57 + 19) = 0;
      }

      else
      {
        memcpy(*&v168[8 * v145], v58, v59);
        *(v147 + 16) |= v67;
        *(v147 + 18) = 1;
        v57 = v147;
      }

      *(v57 + 2) = *(a2 + 15);
      *(v57 + 3) = *(a2 + 4);
      v77 = v65 != 7 && *(v57 + 17) == 7;
      *(v57 + 20) = v77;
      goto LABEL_59;
    }

    v56 = *v53++;
    --v54;
    v55 += 30;
  }

  while (!(v56 >> 30));
  v57 = v147;
  if (-v54 < 9)
  {
    return result;
  }

LABEL_59:
  result = *(this + 2);
  if (!*(result + 2576))
  {
    *(v57 + 19) = 1;
    return result;
  }

  v78 = BlueFin::GlPeTimeManager::GetTime(result, 1, &v172);
  v79 = (*(*this + 368))(this, &v162, v78);
  v80 = (*(*v79 + 144))(v79);
  v82 = 0;
  if (v80 == -1 || v172.n128_u32[2] == -1)
  {
    v84 = 0;
  }

  else
  {
    v81.n128_u64[0] = *(&v173 + 1);
    v84 = 0;
    if (*(&v173 + 1) != 4294967300.0)
    {
      if (BlueFin::GlPeEphemeris::isExpired(v79, &v172))
      {
        v82 = 0;
        v84 = 0;
      }

      else
      {
        v84 = (*(*v79 + 184))(v79);
        v82 = (*(*v79 + 40))(v79) ^ 1;
      }
    }
  }

  result = v147;
  if (*(a2 + 9) == 1)
  {
    if ((*(v147 + 16) & 1) == 0)
    {
      DeviceFaultNotify("glpe_ephmgr.cpp", 1020, "GetHealthCode", "SubframePresent(1)");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 1020, "SubframePresent(1)");
    }

    v85 = *(v147 + 6);
    v17 = ((v85 >> 12) & 0x3F & (*(*this + 360))(this, v81)) == 0;
    result = v147;
    if (!v17)
    {
      if (v80)
      {
        v86 = v162;
        v87 = *(this + 45);
        v88 = v162 >> 5;
        v89 = v162 & 0x1F;
        v90 = 1 << (v162 & 0x1F);
        v91 = *(v87 + 4 * v88);
      }

      else
      {
        v86 = v162;
        v87 = *(this + 45);
        v88 = v162 >> 5;
        v91 = *(v87 + 4 * v88);
        v89 = v162 & 0x1F;
        v90 = 1 << (v162 & 0x1F);
        if ((v90 & v91) != 0)
        {
LABEL_85:
          v93 = *(this + 7);
          LODWORD(v155) = *(this + 3);
          BYTE4(v155) = v86;
          BlueFin::GlPeSvHealthHelper::OnHealthStatusDecoded((v93 + 32), 0, &v155);
          v94 = *(this + 4);
          result = v147;
          if ((*(v94 + 1636) & 4) == 0)
          {
            v95 = *(this + 3);
            LOBYTE(v155) = v162;
            BlueFin::GlGnssSet::Add(v94 + 576, v95, &v155);
            result = v147;
          }

          goto LABEL_87;
        }
      }

      if ((v90 & v91) == 0)
      {
        *(this + v86 + 26) = *(*(this + 2) + 2568);
        if (v86 - 64 <= 0xFFFFFFC0)
        {
          DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.h", 115, "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
        }

        *(v87 + 4 * v88) |= 1 << v89;
      }

      BlueFin::GNSS2STR(*(this + 3));
      if (v80)
      {
        GlCustomLog(14, "EphMgr(%s,%d)[%u]: First decode is marked unhealthy by SV.  Putting on probation.\n");
      }

      else
      {
        GlCustomLog(14, "EphMgr(%s,%d)[%u]: SV just went unhealthy. Putting on probation.\n");
      }

      LOBYTE(v86) = v162;
      goto LABEL_85;
    }
  }

LABEL_87:
  if (*(result + 16) != 7)
  {
    return result;
  }

  v96 = (result + 24);
  v97 = result + 40;
  v98 = HIBYTE(*(result + 40));
  if (v98 != (*(result + 24) >> 2))
  {
    return result;
  }

  if (v98 != *(result + 86))
  {
    return result;
  }

  v99 = *(result + 17);
  if ((*(result + 18) & 1) == 0 && *(result + 20) != 1)
  {
    return result;
  }

  if (((v84 | v82) & 1) != 0 && v99 != 7)
  {
    v100 = BlueFin::GNSS2STR(*(this + 3));
    if (v82)
    {
      v101 = "unhealthy";
    }

    else
    {
      v101 = "verified";
    }

    return GlCustomLog(14, "EphMgr(%s,%d)[%u]: Current ephemeris is %s, therefore wait for new set to be verified\n", v100, v162, v148, v101);
  }

  if (((v80 != -1) & v84) == 1 && v99 != 7)
  {
    DeviceFaultNotify("glpe_ephmgr.cpp", 4062, "SetDataSubFrmMeas", "eCurrentEphDataSrc == GlPeEphemeris::EPH_DATA_SRC_NONE || !bCurrentEphVerified || bAllNewEphSubframesVerified");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 4062, "eCurrentEphDataSrc == GlPeEphemeris::EPH_DATA_SRC_NONE || !bCurrentEphVerified || bAllNewEphSubframesVerified");
  }

  WORD4(v155) = 4609;
  *&v156[0] = &v156[1];
  *(&v156[0] + 1) = vdup_n_s32(0xFF9222FF);
  v156[1] = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0;
  v154 = 0;
  *&v155 = &unk_2A1F0F200;
  v149.n128_u16[4] = 4657;
  *v150 = &v150[16];
  *&v150[8] = *(&v156[0] + 1);
  *&v150[16] = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v149.n128_u64[0] = &unk_2A1F0F338;
  if (*(this + 3))
  {
    v103 = &v149;
  }

  else
  {
    v103 = &v155;
  }

  BlueFin::GlPeGpsTypeEphemerisDecoder::Unpack(result, v103);
  if (BlueFin::GlPeEphemeris::isExpired(v103, &v172))
  {
    v104 = BlueFin::GNSS2STR(*(this + 3));
    v105 = v162;
    v106 = (*(*v103 + 64))(v103, &v172, 1);
    v163 = v172.n128_u64[0];
    v164 = v172.n128_u32[2];
    v166 = v173;
    BlueFin::GlPeGnssTime::operator-=(&v163, v106);
    v107 = BlueFin::GlPeGnssTime::operator-(&v163, &v172);
    result = GlCustomLog(13, "EphMgr(%s,%d)[%u]: Newly decoded eph is already expired!  Toe-CurTime(s):%.0lf\n", v104, v105, v148, v107);
LABEL_108:
    *(v147 + 8) = 0;
    v166 = 0u;
    memset(v167, 0, sizeof(v167));
    *v96 = 0;
    v96[1] = 0;
    *v97 = v166;
    *(v97 + 16) = v167[0];
    *(v147 + 4) = *&v167[1];
    *(v147 + 10) = v167[3];
    return result;
  }

  if (v80 != -1)
  {
    if ((*(*v79 + 280))(v79, v103))
    {
      if ((((*(*v79 + 288))(v79, v103) | v84) & 1) == 0 && ((*(*v103 + 184))(v103) & 1) == 0)
      {
        result = (*(*this + 288))(this, &v162, 0);
        goto LABEL_108;
      }
    }

    else
    {
      v108 = BlueFin::GNSS2STR(*(this + 3));
      v144 = v162;
      v146 = v108;
      v143 = (*(*v79 + 192))(v79, 18);
      v142 = (*(*v79 + 232))(v79, 18);
      v141 = (*(*v79 + 192))(v79, 5);
      v140 = (*(*v79 + 232))(v79, 5);
      v139 = (*(*v79 + 192))(v79, 3);
      v138 = (*(*v103 + 192))(v103, 18);
      v137 = (*(*v103 + 232))(v103, 18);
      v109 = (*(*v103 + 192))(v103, 5);
      v110 = (*(*v103 + 232))(v103, 5);
      v111 = (*(*v103 + 192))(v103, 3);
      GlCustomLog(15, "EphMgr(%s,%d)[%u]: New ephemeris set detected.  Toe/IODC/health  Old:(%u,%03x,%u) New:(%u,%03x,%u)\n", v146, v144, v148, v142 * v143, v140 * v141, v139, v137 * v138, v110 * v109, v111);
    }

    if ((v82 & 1) == 0 && ((*(*v103 + 40))(v103) & 1) != 0 || v84 & 1 | (((*(*v79 + 288))(v79, v103) & 1) == 0) || !(*(*v103 + 184))(v103))
    {
      v171[0] = 0.0;
      v168[0] = 0;
      if (BlueFin::GlPeGpsQzssEphMgr::sameSlotAndPlane(this, v79, v103, v171, v168))
      {
        v114 = fabs(v171[0]);
        v115 = v114 - trunc(v114 * 2.32830644e-10) * 4294967300.0;
        if (v114 <= 4294967300.0)
        {
          v116 = v114;
        }

        else
        {
          v116 = v115;
        }

        v117 = (*(*v79 + 192))(v79, 31);
        v118 = (*(*v79 + 232))(v79, 31);
        v119 = v116;
        if (v118 * v117)
        {
          v120 = BlueFin::GNSS2STR(*(this + 3));
          v121 = v119 > 0x93A80;
          v122 = 78;
          if (v119 > 0x93A80)
          {
            v122 = 89;
          }

          GlCustomLog(15, "EphMgr(%s,%d)[%u]: Org eph had valid SameSlotAndPlane. New Eph: ToeDiff:%u  NewS&P:%c  Accept:Y\n", v120, v162, v148, v116, v122);
        }

        else
        {
          if (!v168[0])
          {
            *(v147 + 8) = 0;
            v166 = 0u;
            memset(v167, 0, sizeof(v167));
            *v96 = 0;
            v96[1] = 0;
            *v97 = v166;
            *(v97 + 16) = v167[0];
            *(v147 + 4) = *&v167[1];
            *(v147 + 10) = v167[3];
            v136 = BlueFin::GNSS2STR(*(this + 3));
            return GlCustomLog(13, "EphMgr(%s,%d)[%u]: Possible cross correlation detected!  Accept:N\n", v136, v162, v148);
          }

          v123 = v119 > 0x3840;
          v124 = BlueFin::GNSS2STR(*(this + 3));
          v125 = v119 % 0x15180 > 1;
          v126 = 84;
          if (v119 % 0x15180 > 1)
          {
            v126 = 70;
          }

          v121 = v123 && v125;
          v127 = 78;
          if (v123 && v125)
          {
            v127 = 89;
          }

          GlCustomLog(14, "EphMgr(%s,%d)[%u]: SameSlotAndPlane matched. ToeDiff:%u  IntDay:%c  NewS&P:%c  Accept:Y\n", v124, v162, v148, v116, v126, v127);
        }

        (*(*v103 + 216))(v103, 31, v121);
      }
    }

    else
    {
      v112 = (*(*v79 + 192))(v79, 31);
      v113 = (*(*v79 + 232))(v79, 31);
      (*(*v103 + 216))(v103, 31, (v113 * v112));
    }
  }

  result = (*(*this + 376))(this, v103, 0);
  if (result)
  {
    v128 = (*(*v103 + 40))(v103);
    (*(*v103 + 184))(v103);
    v129 = BlueFin::GNSS2STR(*(this + 3));
    v130 = v162;
    if (v128)
    {
      v131 = 84;
    }

    else
    {
      v131 = 70;
    }

    v132 = (*(*v103 + 192))(v103, 5);
    v133 = (*(*v103 + 184))(v103);
    v134 = 70;
    if (v133)
    {
      v134 = 84;
    }

    result = GlCustomLog(14, "EphMgr(%s,%d)[%u]: Valid Eph decoded.  Healthy:%c  IODC:%u  Verified:%c\n", v129, v130, v148, v131, v132, v134);
    if (v128)
    {
      v163 = &unk_2A1F0EE98;
      v166 = 0uLL;
      v164 = *(this + 3);
      v165 = v162;
      v135 = (*(*v103 + 192))(v103, 7);
      DWORD2(v166) = (*(*v103 + 232))(v103, 7) * v135;
      LOWORD(v135) = (*(*v103 + 192))(v103, 28);
      WORD6(v166) = (*(*v103 + 232))(v103, 28) * v135;
      DWORD1(v166) = (*(*v103 + 208))(v103, 9);
      LODWORD(v166) = (*(*v103 + 208))(v103, 10);
      result = *(this + 12);
      if (result)
      {
        return BlueFin::GlPeClkCalibrateMgr::SetClkCalibrateParams(result, &v163);
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlDbgProxyGlReqOnGnssNavData(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 112))(a1);
  v4 = *(v3 + 8);

  return BlueFin::GlDbgProxy::HalGlReqOnGnssNavData(v4, v3, a2);
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnGnssNavData(uint64_t a1, uint64_t (**this)(BlueFin::GlDbgRequest *, uint64_t), uint64_t a3)
{
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v9 = result;
  if (!*(a1 + 808))
  {
    *(a1 + 580) = 1;
    if (*(a1 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteStart(a1, 562);
      if ((*(*a1 + 120))(a1))
      {
        BlueFin::GlDbgCodec::Write(a1, &v9);
      }

      if ((*(*a1 + 120))(a1))
      {
        *(a1 + 572) = 2;
        BlueFin::GlDbgCodec::Rvw(a1, a3);
      }

      result = (*(*a1 + 32))(a1, 1);
    }

    v7 = this[6];
    if (v7)
    {
      result = v7(this, a3);
    }

    *(a1 + 580) = 1;
    if (*(a1 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteFinal(a1, 562);
      if ((*(*a1 + 120))(a1))
      {
        BlueFin::GlDbgCodec::Write(a1, &v9);
      }

      v8 = *(*a1 + 32);

      return v8(a1, 1);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeReqBag::SetDataSubFrmMeas(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v6 = (a1 + 3233);
  v7 = *(a1 + 3233);
  *(a1 + 3233) = 0;
  do
  {
    result = *(a1 + v4);
    if (result)
    {
      result = (*(*result + 112))(result, a2);
    }

    v4 += 8;
  }

  while (v4 != 576);
  *v6 = v7;
  return result;
}

uint64_t BlueFin::GlPeRqHdlrGnssMeasData::SetDataSubFrmMeas(uint64_t this, BlueFin::GlDataSubFrmMeas *a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = this + 36864;
  v3 = *(this + 8);
  *(this + 39944) = 0;
  *(this + 39960) = 0;
  *(this + 39952) = 0;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v4 = *(a2 + 8);
  v5 = BlueFin::GlSvId::s_aucSvId2gnss[*(a2 + 8)];
  if (v5 > 6 || ((1 << v5) & 0x5B) == 0)
  {
    return this;
  }

  *(this + 39948) = BlueFin::GlSvId::s_aucSvId2prn[*(a2 + 8)];
  if (v5 <= 2)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_19;
      }

      v8 = 513;
    }

    else
    {
      v8 = 257;
    }
  }

  else
  {
    switch(v5)
    {
      case 3:
        v8 = 1025;
        break;
      case 4:
        if ((v4 - 81) > 0x34)
        {
          v8 = 1282;
        }

        else
        {
          v8 = 1281;
        }

        break;
      case 6:
        v8 = 1793;
        break;
      default:
        goto LABEL_19;
    }
  }

  *(this + 39950) = v8;
LABEL_19:
  *(this + 39944) = 24;
  v9 = *(a2 + 9);
  *(this + 39954) = v9;
  v10 = *(a2 + 4);
  if (!v10)
  {
    v10 = 604800;
    *(a2 + 4) = 604800;
  }

  if ((v9 & 0xFE) != 4)
  {
    LOWORD(v11) = -1;
    goto LABEL_30;
  }

  if (v5 <= 2)
  {
    if (v5)
    {
LABEL_31:
      if (v5 != 1)
      {
        goto LABEL_39;
      }

      v12 = (*(a2 + 5) >> 18) & 0x3F;
      goto LABEL_38;
    }

LABEL_29:
    v11 = (fmodf(((v10 + -6.0) + ((v9 - 1) * -6.0)) / 30.0, 25.0) + 1.0);
LABEL_30:
    *(v2 + 3088) = v11;
    if (v5 != 6)
    {
      goto LABEL_31;
    }

    goto LABEL_33;
  }

  switch(v5)
  {
    case 6:
LABEL_33:
      LOWORD(v12) = -1;
LABEL_38:
      *(v2 + 3088) = v12;
      break;
    case 4:
      v13 = v10;
      if ((v4 - 81) > 0x34)
      {
        v14 = (v13 + -3.0) / 3.0;
        v15 = 120.0;
      }

      else
      {
        v14 = ((v13 + -6.0) + ((v9 - 1) * -6.0)) / 30.0;
        v15 = 24.0;
      }

      v12 = (fmodf(v14, v15) + 1.0);
      goto LABEL_38;
    case 3:
      goto LABEL_29;
  }

LABEL_39:
  v16 = 0;
  v17 = 0;
  *(v2 + 3092) = 40;
  v18 = xmmword_298A319D0;
  v19 = a2 + 20;
  v20 = vdupq_n_s64(2uLL);
  do
  {
    v21 = v17 >> 2;
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x28uLL), v18)).u8[0])
    {
      *(v22 + v17) = (*&v19[4 * v21] & 0x3FFFFFFFu) >> (v16 & 0x10 ^ 0x18);
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x28uLL), *&v18)).i32[1])
    {
      *(v22 + v17 + 1) = (*&v19[4 * v21] & 0x3FFFFFFFu) >> (~v16 & 0x10);
    }

    v17 += 2;
    v18 = vaddq_s64(v18, v20);
    v16 += 16;
  }

  while (v17 != 40);
  *(v2 + 3096) = v22;
  return BlueFin::GlRequestImplGnssMeasData::OnNavData(v3, v2 + 3080);
}

uint64_t BlueFin::GlPePlatfStatMgr::SetDataSubFrmMeas(uint64_t result, uint64_t a2)
{
  if ((*(*(result + 1256) + ((*(a2 + 8) >> 3) & 0x1C)) >> (*(a2 + 8) & 0x1F)))
  {
    for (i = 20; i != 60; i += 4)
    {
      v3 = *(a2 + i);
      if ((v3 & 0x40000000) == 0)
      {
        if ((v3 & 0x80000000) == 0)
        {
          ++*(result + 1308);
        }

        ++*(result + 1304);
      }
    }
  }

  return result;
}

BlueFin::GlPeGloFcnOsnMgr *BlueFin::GlPeGloFcnOsnMgr::SetGlonassDataString(BlueFin::GlPeGloFcnOsnMgr *this, BlueFin::GlGlonassDataString *a2, int a3)
{
  if (a3 == 4)
  {
    v3 = *(a2 + 9);
    if ((v3 - 7) <= 0xF1u)
    {
      DeviceFaultNotify("glpe_glofcnosnmgr.cpp", 268, "SetGlonassDataString", "IS_GLONASS_FCN(cFCN)");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glofcnosnmgr.cpp", 268, "IS_GLONASS_FCN(cFCN)");
    }

    if (a3 == 4)
    {
      v4 = (*(a2 + 7) >> 21) & 0x1F;
      if ((v4 - 1) <= 0x17)
      {
        v5 = this;
        v6 = v3 + 7;
        v7 = *(*(this + 2) + 2568);
        v8 = (*(this + 53) + 28 * (v3 + 7));
        v9 = BlueFin::GlPeGloFcnOsnMgr::OsnVerifier::ageCache(v8, v7);
        *(v8 + v9 + 3) = v7;
        *(v8 + v9 + 24) = v4;
        BlueFin::GlPeGloFcnOsnMgr::OsnVerifier::UpdateCache(v8, v7, 1);

        return BlueFin::GlPeGloFcnOsnMgr::updateFcnToOsnCache(v5, v7, v6);
      }
    }
  }

  return this;
}

uint64_t BlueFin::GlMeFrameAidMgr::FoundTLM(BlueFin::GlMeFrameAidMgr *this, int8x16_t a2, int a3, double a4, int8x16_t a5, int8x16_t a6)
{
  *a2.i64 = *a2.i64 * 1000.0;
  *a6.i64 = *a2.i64 + trunc(*a2.i64 * 2.32830644e-10) * -4294967300.0;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = vnegq_f64(v7);
  a6.i64[0] = vbslq_s8(v8, a6, a2).u64[0];
  if (*a2.i64 > 4294967300.0)
  {
    a2.i64[0] = a6.i64[0];
  }

  if (*a2.i64 < -4294967300.0)
  {
    *a5.i64 = -*a2.i64;
    *a2.i64 = -(*a2.i64 - trunc(*a2.i64 * -2.32830644e-10) * -4294967300.0);
    *a2.i64 = -*vbslq_s8(v8, a2, a5).i64;
  }

  if (*a2.i64 < 0.0)
  {
    v9 = --*a2.i64;
  }

  else
  {
    v9 = *a2.i64;
  }

  if (v9 > 20 * a3)
  {
    v10 = v9 - 20 * a3;
  }

  else
  {
    v10 = v9 + -20 * a3 + 6000 * (20 * a3 / 0x1770u) + 6000;
  }

  v11 = *(this + 24);
  v12 = 4;
  while (1)
  {
    v13 = v11;
    if (v10 != -1)
    {
      v14 = *(this + v11);
      if (v14 != -1)
      {
        v15 = v14 - v10;
        if (v15 < 0)
        {
          v15 = -v15;
        }

        v16 = (v15 + 19) / 0x14u - 300 * (((229064923 * ((v15 + 19) / 0x14u)) >> 32) >> 4);
        result = (13 * v15 + 500000);
        v18 = 300 - v16;
        if (v16 < 300 - v16)
        {
          v18 = v16;
        }

        if (result <= 0x112A87F && v18 < 3)
        {
          break;
        }
      }
    }

    if ((v11 + 1) <= 2u)
    {
      ++v11;
    }

    else
    {
      v11 = 0;
    }

    *(this + 24) = v11;
    if (!--v12)
    {
      v20 = 0;
      result = BlueFin::GlMeFrameAidMgr::FindBestPair(this, &v20, &v19);
      if (result && v20 == v11)
      {
        if ((v11 + 1) <= 2u)
        {
          ++v11;
        }

        else
        {
          v11 = 0;
        }

        *(this + 24) = v11;
      }

      v13 = v11;
      break;
    }
  }

  *(this + v13) = v10;
  return result;
}

BlueFin::GlPeGloFcnOsnMgr::OsnVerifier *BlueFin::GlPeGloFcnOsnMgr::updateFcnToOsnCache(BlueFin::GlPeGloFcnOsnMgr *this, int a2, unsigned int a3)
{
  v6 = this + 20 * a3;
  v7 = v6 + 432;
  v8 = *(v6 + 111);
  if (v8 && (a2 - *(v7 + 1)) >= BlueFin::GlPeGloFcnOsnMgr::m_aulMaxFcnToOsnMs[v8])
  {
    *(v7 + 3) = 0;
  }

  v9 = *(this + 53) + 28 * a3;
  result = BlueFin::GlPeGloFcnOsnMgr::OsnVerifier::UpdateCache(v9, a2, 0);
  v11 = *(v7 + 3);
  if (v11 == 1)
  {
    if (*v9 != 1)
    {
      return result;
    }

    v12 = v7[8];
    v13 = *(v9 + 2);
    if (v12 == v13)
    {
      return result;
    }

    *(v7 + 1) = *(v9 + 8);
    if (*(v9 + 1) != 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *(v7 + 1) = *(v9 + 8);
    v13 = *(v9 + 2);
    if ((*(v9 + 1) & 1) == 0)
    {
      if (!v11)
      {
LABEL_15:
        v7[8] = v13;
        *(v7 + 3) = 2;
        goto LABEL_17;
      }

      v12 = v7[8];
LABEL_13:
      if (v12 != v13)
      {
        v7[16] = 1;
        GlCustomLog(14, "FCN2OSN: LMS:%u  FCN:%+d  Msg: OSN change detected found on unverified data; require verification.  CandidateOsn:%d  CurrentOsn:%d  Src:%d\n", a2, a3 - 7, v13, v12, v11);
        goto LABEL_17;
      }

      LOBYTE(v13) = v12;
      goto LABEL_15;
    }
  }

  v7[8] = v13;
  *(v7 + 3) = 1;
  v7[16] = 0;
LABEL_17:

  return BlueFin::GlPeGloFcnOsnMgr::checkForDuplicateOsns(this, a2, a3);
}

uint64_t (*(*BlueFin::GlMeSrdSyncIn::wait4pulse(BlueFin::GlMeSrdSyncIn *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  if (v3 > 0x27)
  {
    if (v3 != 40)
    {
      if (v3 == 41)
      {
        BlueFin::GlMeSrdSyncIn::DisarmESW(this);
        (*(**(this + 15) + 184))(*(this + 15), 5, 0.0);
        goto LABEL_16;
      }

      if (v3 != 43)
      {
        return BlueFin::GlMeSrdSyncIn::running;
      }

      if (*(this + 28) == -1.0)
      {
        DeviceFaultNotify("glmesrd_syncin_ctrl.cpp", 246, "wait4pulse", "0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_syncin_ctrl.cpp", 246, "0");
      }

      GlCustomLog(14, "Received Sync In: Lms %.6f\n", *(this + 28));
      (*(**(this + 15) + 184))(*(this + 15), 1, *(this + 28));
      *(this + 28) = 0xBFF0000000000000;
      if ((*(this + 216) & 1) == 0)
      {
        v5 = "&GlMeSrdSyncIn::idle";
        v6 = BlueFin::GlMeSrdSyncIn::idle;
        goto LABEL_17;
      }

      BlueFin::GlTimer::rearm((this + 176));
    }
  }

  else
  {
    if (v3 == 2)
    {
      (*(**(this + 15) + 184))(*(this + 15), 0, 0.0);
      *(this + 26) = this;
      BlueFin::GlTimer::arm((this + 176), 5, 0, 0x3A98u);
      result = 0;
      *(this + 200) = 1;
      return result;
    }

    if (v3 != 3)
    {
      if (v3 == 5)
      {
        (*(**(this + 15) + 184))(*(this + 15), 3, 0.0);
        BlueFin::GlMeSrdSyncIn::DisarmESW(this);
LABEL_16:
        v5 = "&GlMeSrdSyncIn::wait4disarm";
        v6 = BlueFin::GlMeSrdSyncIn::wait4disarm;
LABEL_17:
        BlueFin::QHsm::tran(this, v6, v5);
        return 0;
      }

      return BlueFin::GlMeSrdSyncIn::running;
    }

    BlueFin::GlTimer::disarm(this + 22);
  }

  return 0;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgPeIf::SetSyncinEvent(uint64_t a1, unsigned int a2, double a3)
{
  v9 = a2;
  v8 = a3;
  result = *(a1 + 8);
  if (!*(result + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(result, 4625);
    BlueFin::GlDbgCodec::Write(*(a1 + 8), &v9);
    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      BlueFin::GlDbgCodec::Write(v6, &v8);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    (*(**(a1 + 16) + 184))(*(a1 + 16), v9, a3);
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 4625);
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }

  return result;
}

double BlueFin::GlPeGloEphMgr::SetGlonassDataString(BlueFin::GlPeGloEphMgr *this, BlueFin::GlGlonassDataString *a2, int a3, double result)
{
  if (*(this + 7968))
  {
    return result;
  }

  if ((a3 - 5) <= 0xFFFFFFFB)
  {
    v40 = "iStringNumber >= 1 && iStringNumber <= 4";
    DeviceFaultNotify("glpe_glnephmgr.cpp", 1396, "SetGlonassDataString", "iStringNumber >= 1 && iStringNumber <= 4");
    v41 = 1396;
    goto LABEL_62;
  }

  v4 = *(a2 + 9);
  if ((v4 - 7) <= 0xF1u)
  {
    v40 = "IS_GLONASS_FCN(cFcn)";
    DeviceFaultNotify("glpe_glnephmgr.cpp", 1399, "SetGlonassDataString", "IS_GLONASS_FCN(cFcn)");
    v41 = 1399;
    goto LABEL_62;
  }

  v5 = *(a2 + 5);
  if (((v5 >> 27) & 0xF) - 5 < 0xFFFFFFFC)
  {
    v40 = "ucStringNumber >= 1 && ucStringNumber <= 4";
    DeviceFaultNotify("glpe_glnephmgr.cpp", 1004, "InsertString", "ucStringNumber >= 1 && ucStringNumber <= 4");
    v41 = 1004;
LABEL_62:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glnephmgr.cpp", v41, v40);
  }

  v7 = *(this + 730);
  v8 = v7 + 184 * (v4 + 7);
  v9 = *(*(this + 2) + 2568);
  v10 = (v8 + 160);
  LODWORD(result) = *(v8 + 160);
  v11 = (v5 >> 27) & 0xF;
  v12 = v11 - 1;
  v13 = *(v8 + 160 + v11 - 1);
  v14 = vmaxv_u16(*&vmovl_u8(*&result));
  v15 = v9 + 2000 * (v11 ^ 0xF);
  v42 = v9;
  if (v14)
  {
    v17 = *(v8 + 164) < v9 || v15 < v9;
  }

  else
  {
    v17 = 1;
  }

  *(v8 + 164) = v15 - 10000;
  *(v8 + 176) = (*(a2 + 4) - (2 * v12)) * 1000.0;
  v46.n128_u64[0] = 0;
  v46.n128_u64[1] = a2 + 20;
  v47 = 1;
  v49 = 0;
  v48 = 0x6000000060uLL;
  v50 = 0;
  v18 = *(v8 + 16);
  v19 = 4 * *(v8 + 9);
  v45[8] = 0;
  BlueFin::GlBitBuffer::Initialize(v45, v18, v19);
  if (v13)
  {
    v20 = v12;
    if (BlueFin::GlBitBuffer::CompareBits(v45, &v46, (&BlueFin::GlPeGloEphMgr::Stitcher::InsertString(BlueFin::GlGlonassDataString const&,unsigned int)::aulBufferPos + 12 * v20), &BlueFin::GlPeGloEphMgr::Stitcher::InsertString(BlueFin::GlGlonassDataString const&,unsigned int)::aulStringPos[3 * v20], &BlueFin::GlPeGloEphMgr::Stitcher::InsertString(BlueFin::GlGlonassDataString const&,unsigned int)::aulLength[3 * v20], 3))
    {
      if (v13 < v14)
      {
        v21.i32[0] = *v10;
        v22 = vmin_u16(vdup_n_s16(v13), *&vmovl_u8(v21));
        *v10 = vuzp1_s8(v22, v22).u32[0];
      }

      goto LABEL_20;
    }

    *v10 = 0;
    v23 = 1;
  }

  else
  {
    v23 = v14 + v17;
    v20 = v12;
  }

  *(v10 + v12) = v23;
LABEL_20:
  BlueFin::GlBitBuffer::TransferBits(v45, &v46, (&unk_298A3C310 + 12 * v20), &dword_298A3C340[3 * v20], &dword_298A3C370[3 * v20], 3);
  if (*v10 != 1)
  {
    return result;
  }

  v24 = v4 + 59;
  v25 = (v7 + 184 * (v4 + 7) + 161);
  v26 = 1;
  v27 = v42;
  do
  {
    if (v26 == -2)
    {
      *(v8 + 8) = *(v8 + 8) & 0xF0 | 1;
      *(v8 + 160) = 0;
      goto LABEL_27;
    }

    v28 = *v25++;
    --v26;
  }

  while (v28 == 1);
  if (-v26 < 3)
  {
    return result;
  }

LABEL_27:
  v44 = (*(*v8 + 192))(v7 + 184 * (v4 + 7), 27);
  if (v44 - 1 > 0x17)
  {
    return result;
  }

  Time = BlueFin::GlPeTimeManager::GetTime(*(this + 2), 1, &v46);
  if (v46.n128_u32[2] != -1)
  {
    Time.n128_u64[0] = *(&v48 + 4);
    if (*(&v48 + 4) != 4294967300.0)
    {
      if ((*(*this + 320))(this, &v44, *(&v48 + 4)))
      {
        v30 = (*(*this + 368))(this, &v44);
        if (*(*v30 + 144))(v30) != 2 && !BlueFin::GlPeEphemeris::isExpired(v30, &v46) && ((*(*v30 + 184))(v30))
        {
          v31 = (*(*this + 368))(this, &v44);
          if ((*(v8 + 88) & 0xF) != 0)
          {
            v32 = v31;
            BlueFin::GlPeGloEphMgr::compareEphFields(v45, v8, (v8 + 80), BlueFin::GlPeGloEphMgr::SetGlonassDataString(BlueFin::GlGlonassDataString *,int)::aucAllEphFields, 0xFu);
            if (!v45[0])
            {
              BlueFin::GlPeGloEphMgr::compareEphFields(&v43, v8, v32, BlueFin::GlPeGloEphMgr::SetGlonassDataString(BlueFin::GlGlonassDataString *,int)::aucHealthFields, 3u);
              v33 = v43;
              BlueFin::GlPeGloEphMgr::compareEphFields(&v43, v8, v32, BlueFin::GlPeGloEphMgr::SetGlonassDataString(BlueFin::GlGlonassDataString *,int)::aucNewEphSetFields, 7u);
              if (v33 || (v34 = v43 - (((v43 >> 1) & 0x5B6DB6DB) + ((v43 >> 2) & 0x9249249)), ((v34 + (v34 >> 3)) & 0xC71C71C7) % 0x3F > 4))
              {
                v35 = 1;
                v27 = v42;
LABEL_50:
                BlueFin::GlPeEphemeris::operator=(v8 + 80, v8);
                result = *(v8 + 176);
                *(v8 + 168) = result;
                goto LABEL_51;
              }

              if (v43)
              {
                GlCustomLog(13, "GlnsEph(%d)[%u]: Unexpected! New verified set does not differ from current set enough. DiffHealth:%c DiffEphSet:0x%02x\n", v24, v42, 70, v43);
              }
            }
          }

          goto LABEL_57;
        }
      }
    }
  }

  if (!(*(*this + 320))(this, &v44, Time))
  {
    if (BlueFin::GlPeGloEphMgr::validateEph(this, v8))
    {
      if ((*(v8 + 88) & 0xF) != 0)
      {
        BlueFin::GlPeGloEphMgr::compareEphFields(v45, v8, (v8 + 80), BlueFin::GlPeGloEphMgr::SetGlonassDataString(BlueFin::GlGlonassDataString *,int)::aucAllEphFields, 0xFu);
        v35 = v45[0] == 0;
      }

      else
      {
        v35 = 0;
      }

      goto LABEL_50;
    }

LABEL_57:
    BlueFin::GlPeEphemeris::operator=(v8 + 80, v8);
    result = *(v8 + 176);
    *(v8 + 168) = result;
    return result;
  }

  v36 = (*(*this + 368))(this, &v44);
  BlueFin::GlPeGloEphMgr::compareEphFields(v45, v36, v8, BlueFin::GlPeGloEphMgr::SetGlonassDataString(BlueFin::GlGlonassDataString *,int)::aucAllEphFields, 0xFu);
  if (!v45[0])
  {
    v35 = 1;
    goto LABEL_50;
  }

  BlueFin::GlPeGloEphMgr::compareEphFields(&v43, v36, v8, BlueFin::GlPeGloEphMgr::SetGlonassDataString(BlueFin::GlGlonassDataString *,int)::aucHealthFields, 3u);
  v37 = v43;
  BlueFin::GlPeGloEphMgr::compareEphFields(&v43, v36, v8, BlueFin::GlPeGloEphMgr::SetGlonassDataString(BlueFin::GlGlonassDataString *,int)::aucNewEphSetFields, 7u);
  if (!v37)
  {
    v38 = v43 - (((v43 >> 1) & 0x5B6DB6DB) + ((v43 >> 2) & 0x9249249));
    if (((v38 + (v38 >> 3)) & 0xC71C71C7) % 0x3F < 5)
    {
      if ((*(*(this + 48) + ((v44 >> 3) & 0x1C)) >> (v44 & 0x1F)))
      {
        if (BlueFin::GlPeGloEphMgr::validateEph(this, v8))
        {
          GlCustomLog(13, "GlnsEph(%d)[%u]: Possible Glonass bad decode in ephemeris detected (verification had been required--reverify)\n", v24, v42);
          v35 = 0;
          v27 = v42;
          goto LABEL_50;
        }

        GlCustomLog(13, "GlnsEph(%d)[%u]: Possible Glonass bad decode in ephemeris detected (verification had been required--reset)\n", v24, v42);
        (*(*this + 336))(this, &v44);
        BlueFin::GlSetBase::Remove(this + 384, v44);
      }

      else
      {
        (*(*this + 288))(this, &v44, 0);
        GlCustomLog(13, "GlnsEph(%d)[%u]: Possible Glonass bad decode in published ephemeris detected! Trigger bad decode.\n", v24, v42);
      }

      goto LABEL_57;
    }
  }

  v39 = BlueFin::GlPeGloEphMgr::validateEph(this, v8);
  BlueFin::GlPeEphemeris::operator=(v8 + 80, v8);
  result = *(v8 + 176);
  *(v8 + 168) = result;
  if (v39)
  {
    v35 = 0;
    v27 = v42;
LABEL_51:
    BlueFin::GlPeGloEphMgr::updateEph(this, v27, result, v8, v35);
  }

  return result;
}

uint64_t BlueFin::GlReqSm::SetSyncinEvent(uint64_t a1, uint64_t a2, double a3)
{
  v4 = a2;
  result = BlueFin::GlPeReqBag::SetSyncinEvent(a1 + 10880, a2, a3);
  if (v4 == 1)
  {
    v8 = *(a1 + 6272);
    v9 = *(v8 + 88);
    v10 = 0.00007794;
    if (*(v8 + 26298) & 1 | (v9 < 39))
    {
      v10 = 0.00007594;
    }

    if (v9 <= 33)
    {
      v10 = 0.000042;
    }

    v7 = a3 + v10 * 1000.0;
  }

  else
  {
    if (v4 != 6)
    {
      return result;
    }

    result = *(a1 + 312);
    v7 = 0.0;
    if (result)
    {
      result = (*(*result + 344))(result, 0, *(*(a1 + 6272) + 25956));
    }
  }

  *(a1 + 54600) = v7;
  return result;
}

uint64_t BlueFin::GlPeReqBag::SetSyncinEvent(uint64_t a1, uint64_t a2, double a3)
{
  v6 = 0;
  v8 = (a1 + 3233);
  v9 = *(a1 + 3233);
  *(a1 + 3233) = 0;
  do
  {
    result = *(a1 + v6);
    if (result)
    {
      result = (*(*result + 192))(result, a2, a3);
    }

    v6 += 8;
  }

  while (v6 != 576);
  *v8 = v9;
  return result;
}

uint64_t BlueFin::GlPeGloEphMgr::compareEphFields(BlueFin::GlPeGloEphMgr *this, const BlueFin::GlPeGloEphemeris *a2, const BlueFin::GlPeGloEphemeris *a3, const unsigned __int8 *a4, unsigned int a5)
{
  v9 = 0;
  v10 = 0;
  v11 = a5;
  do
  {
    v12 = (*(*a2 + 200))(a2, a4[v9]);
    v13 = a4[v9];
    v14 = *a2;
    if (v12)
    {
      v15 = (*(v14 + 208))(a2, v13);
      result = (*(*a3 + 208))(a3, a4[v9]);
    }

    else
    {
      v15 = (*(v14 + 192))(a2, v13);
      result = (*(*a3 + 192))(a3, a4[v9]);
    }

    if (v15 != result)
    {
      v10 |= 1 << v9;
    }

    ++v9;
  }

  while (v11 != v9);
  *this = v10;
  return result;
}

uint64_t BlueFin::GlPeRqHdlrSyncin::SetSyncinEvent(uint64_t this, int a2, double a3)
{
  if ((*(this + 20) & 1) == 0)
  {
    v3 = this;
    if ((*(this + 19) & 1) == 0)
    {
      if (a2 == 1)
      {
        *(this + 72) = a3;
        *(this + 112) |= 2u;
        v5 = *(*(this + 104) + 96);
        if (v5)
        {
          v5();
        }
      }

      else
      {
        v6 = *(*(this + 104) + 88);
        if (v6)
        {
          v6(a3);
        }

        if ((a2 - 3) <= 1)
        {
          *(v3 + 112) |= 0x20u;
          *(v3 + 19) = 1;
        }
      }

      return BlueFin::GlPeRqHdlrSyncin::ProcessSyncInEvent(v3);
    }
  }

  return this;
}

uint64_t BlueFin::GlPeGloEphMgr::updateEph(BlueFin::GlPeGloEphMgr *this, int a2, double a3, const BlueFin::GlPeGloEphemeris *a4, int a5)
{
  v10 = (*(*a4 + 208))(a4, 4);
  v11 = (*(*a4 + 192))(a4, 27);
  if (v11 - 1 > 0x17 || (v10 + 7) > 0xD)
  {
    return 0;
  }

  v70 = 2593;
  v71 = v73;
  v72 = vdup_n_s32(0xFF9222FF);
  v14 = *(a4 + 3);
  v73[0] = *(a4 + 2);
  v73[1] = v14;
  v69 = &unk_2A1F0FED0;
  v15 = *(a4 + 9);
  v74 = *(a4 + 8);
  v75 = v15;
  if (a5)
  {
    BlueFin::GlPeGloEphemeris::PutCmpUnsignedField(&v69, 2, 1u);
  }

  *(this + 88 * v11 + 5768) = -1;
  if (BlueFin::GlPeTimeManager::TimeKnown(*(this + 2), 1, 0xE4E1C0u))
  {
    BlueFin::GlPeTimeManager::GetTime(*(this + 2), a3, 1, &v64);
    v67 = &off_2A1F0E430;
    v68 = 0;
    BlueFin::GlPeGnssTime::GetGlns(&v64, &v67);
    v16 = (*v71 >> 14) & 0x3F;
    v17 = ((*v71 << 18) >> 31) & 0x1E;
    v18 = 60 * v16 + 3600 * ((*v71 >> 20) & 0x1F) + v17;
    *v19.i64 = v18;
    *v20.i64 = v18 - trunc(v18);
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v22 = *vbslq_s8(vnegq_f64(v21), v20, v19).i64;
    if (v22 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v63 = (*v71 >> 20) & 0x1F;
    HIDWORD(v23) = v71[7];
    LODWORD(v23) = v71[8];
    v24 = (v23 >> 6) >> 21;
    v25 = v22 * 4294967300.0 + 0.5;
    if (v25 >= 4294967300.0)
    {
      v26 = -1;
    }

    else
    {
      v26 = v25;
    }

    v76 = v26;
    v77 = v18 + 86400 * v24 - 86400;
    v27 = (v67[4])(&v67);
    v64 = __PAIR64__(v27, v68);
    BlueFin::GlTimePoint::resolveAmbiguity(&v76, &v64, 0x7861F80u);
    v28 = (v67[3])(&v67, v77);
    v65 = v26;
    v66 = v28;
    v64 = &off_2A1F0E430;
    v29 = (v67[4])(&v67);
    LODWORD(v30) = v68;
    v31 = v30 * 2.32830644e-10 + v29;
    v32 = (v64[4])(&v64);
    LODWORD(v33) = v65;
    v34 = (v31 - (v33 * 2.32830644e-10 + v32));
    if (v34 >= 0)
    {
      v35 = (v31 - (v33 * 2.32830644e-10 + v32));
    }

    else
    {
      v35 = -v34;
    }

    if (v35 < 0x79)
    {
      v44 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && v66 == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
      v45 = (v64[4])(&v64);
      BlueFin::GlPeGloEphemeris::PutCmpUnsignedField(&v69, 36, (v45 - v44) / 0x7861F80u + 1);
    }

    else
    {
      v36 = 0;
      if (BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
      {
        v36 = HIDWORD(v68) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
      }

      v37 = (v67[4])(&v67);
      if (v36)
      {
        v38.i64[0] = 0x40C5178000000000;
      }

      else
      {
        *v38.i64 = (v37 % 0x15180);
      }

      v62 = v10 + 59;
      LODWORD(v39) = v68;
      *v38.i64 = *v38.i64 + v39 * 2.32830644e-10;
      *v41.i64 = *v38.i64 + trunc(*v38.i64 * 2.32830644e-10) * -4294967300.0;
      v46.f64[0] = NAN;
      v46.f64[1] = NAN;
      v47 = vnegq_f64(v46);
      v41.i64[0] = vbslq_s8(v47, v41, v38).u64[0];
      if (*v38.i64 > 4294967300.0)
      {
        v38.i64[0] = v41.i64[0];
      }

      if (*v38.i64 < -4294967300.0)
      {
        *v40.i64 = -*v38.i64;
        *v38.i64 = -(*v38.i64 - trunc(*v38.i64 * -2.32830644e-10) * -4294967300.0);
        *v38.i64 = -*vbslq_s8(v47, v38, v40).i64;
      }

      if (*v38.i64 < 0.0)
      {
        v48 = --*v38.i64;
      }

      else
      {
        v48 = *v38.i64;
      }

      v49 = v48 / 0x1EuLL;
      v50 = (v49 % 0x78u) >> 1;
      v53 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && HIDWORD(v68) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
      v54 = (((203613265 * (((v67[4])(&v67) - v53) % 0x7861F80)) >> 32) >> 12) + 1;
      v55 = (v49 / 0x78u);
      BlueFin::GlPeGloEphemeris::PutCmpUnsignedField(&v69, 6, v55);
      BlueFin::GlPeGloEphemeris::PutCmpUnsignedField(&v69, 7, v50);
      v56 = v49 & 1;
      if (v49)
      {
        v57 = 30;
      }

      else
      {
        v57 = 0;
      }

      BlueFin::GlPeGloEphemeris::PutCmpUnsignedField(&v69, 8, v56);
      BlueFin::GlPeGloEphemeris::PutCmpUnsignedField(&v69, 25, v54);
      v60 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && HIDWORD(v68) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
      v61 = (v67[4])(&v67);
      BlueFin::GlPeGloEphemeris::PutCmpUnsignedField(&v69, 36, (v61 - v60) / 0x7861F80u + 1);
      GlCustomLog(14, "GlnsEph(%d)[%u]: Derived Tk/Nt differs from decoded. Using derived.  Derived(%hu %u:%u:%u)  Decoded(%hu %u:%u:%u)\n", v62, a2, v54, v55, v50, v57, v24, v63, v16, v17);
    }

    BlueFin::GlPeGloEphemeris::PutCmpUnsignedField(&v69, 35, 1u);
  }

  else
  {
    BlueFin::GlPeGloEphemeris::PutCmpUnsignedField(&v69, 35, 0);
    v69[27](&v69, 2, 0);
  }

  BlueFin::GlPeGloEphemeris::PutCmpUnsignedField(&v69, 38, 0);
  BlueFin::GlPeGloEphemeris::PutCmpUnsignedField(&v69, 39, 0);
  return (*(*this + 376))(this, &v69, 0);
}

uint64_t BlueFin::GlDbgProxyGlReqOnSyncInStatus(uint64_t a1, unsigned int a2)
{
  v3 = (*(*a1 + 112))(a1);
  v4 = *(v3 + 1);

  return BlueFin::GlDbgProxy::HalGlReqOnSyncInStatus(v4, v3, a2);
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnSyncInStatus(BlueFin::GlDbgCodec *a1, BlueFin::GlDbgRequest *this, unsigned int a3)
{
  v9 = a3;
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v8 = result;
  if (!*(a1 + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(a1, 548);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v8);
    }

    BlueFin::GlDbgCodec::Write(a1, &v9);
    (*(*a1 + 32))(a1, 1);
    v6 = *(this + 12);
    if (v6)
    {
      v6(this, v9);
    }

    BlueFin::GlDbgCodec::WriteFinal(a1, 548);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v8);
    }

    v7 = *(*a1 + 32);

    return v7(a1, 1);
  }

  return result;
}

uint64_t *BlueFin::GlPeGloEphemeris::PutCmpUnsignedField(BlueFin::GlPeGloEphemeris *this, int a2, unsigned int a3)
{
  v5 = *(this + 2);
  v6 = 4 * *(this + 9);
  v11 = 0;
  BlueFin::GlBitBuffer::Initialize(v10, v5, v6);
  if ((a2 - 2) >= 0x26 || ((0x3FFFFFFFFDuLL >> (a2 - 2)) & 1) == 0)
  {
    DeviceFaultNotify("glpe_glnephmgr.cpp", 572, "PutCmpUnsignedField", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glnephmgr.cpp", 572, "0");
  }

  v7 = (a2 - 2);
  v8 = byte_298A3C4C8[v7];
  BlueFin::GlBitBuffer::Position(v10, dword_298A3C430[v7]);
  return BlueFin::GlBitBuffer::PutU(v10, a3, v8);
}

void std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_7,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_7>,void ()(BlueFin::GL_SYNCIN_STATUS)>::operator()(uint64_t a1, _DWORD *a2)
{
  v2 = *a2;
  FireDeviceLog::DeviceLogBase(6, "#tt,syncInArm,status,%d", *a2);
  if (!v2)
  {
    if (!FireResourceMgr::fInstance)
    {
      operator new();
    }

    (*(**FireResourceMgr::fInstance + 144))(v3);
    FireDeviceLog::DeviceLogBase(3, "#tt,pulse_sent,status,%d", 0);
  }
}

void FireCallback::GlReqOnSyncInStatus(uint64_t a1, int a2)
{
  if (FireCallback::pInstance)
  {
    v3 = *(FireCallback::pInstance + 824);
    if (v3)
    {
      v5 = a2;
      (*(*v3 + 48))(v3, &v5);
      return;
    }

    v4 = "fcb,fReqOnSyncInStatusCb,nullptr";
  }

  else
  {
    v4 = "fcb,GlReqOnSyncInStatus,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v4);
}

uint64_t BlueFin::GlPeRqHdlrSyncin::ProcessSyncInEvent(uint64_t this)
{
  v1 = *(this + 112);
  if ((v1 & 2) != 0)
  {
    v2 = this;
    if (*(this + 21) == 1)
    {
      *(*(*(this + 56) + 88) + 54558) = 1;
    }

    else if ((v1 & 4) != 0)
    {
      *(this + 112) = v1 & 0xFFFFFFFB;
      v3 = *(this + 72);
      v4 = *(this + 80);
      v5 = *(this + 96);
      v8 = *(this + 84);
      v9 = v4;
      v10 = v3;
      v11 = v5;
      v6 = *(*(this + 56) + 8);
      v7 = 0;
      this = BlueFin::GlPeTimeManager::SetTime(v6, &v8, 3u, &v7);
      if ((*(v2 + 112) & 8) != 0)
      {
        *(v2 + 19) = 1;
      }
    }
  }

  return this;
}

uint64_t BlueFin::GlMeSrdEvtListener::OnSyncinCaptured(BlueFin::GlMeSrdEvtListener *this)
{
  v4 = 17;
  v1 = *(this + 1);
  v2 = *(v1 + 32);
  result = *(v1 + 8);
  *(v1 + 32) = result;
  do
  {
    v5 = 0;
    if (BlueFin::patch_dispatch(result, v1, &v4, &v5))
    {
      result = v5;
    }

    else
    {
      result = (*(v1 + 32))(v1, &v4);
    }

    *(v1 + 32) = result;
  }

  while (result);
  *(v1 + 32) = v2;
  return result;
}

uint64_t BlueFin::GlDbgProxyGlReqOnSyncInLatched(uint64_t a1, unsigned int a2, double a3)
{
  v5 = (*(*a1 + 112))(a1);
  v6 = *(v5 + 1);

  return BlueFin::GlDbgProxy::HalGlReqOnSyncInLatched(v6, v5, a2, a3);
}

uint64_t BlueFin::GlPeGloEphMgr::validateEph(BlueFin::GlPeGloEphMgr *this, const BlueFin::GlPeGloEphemeris *a2)
{
  v4 = (*(*a2 + 208))(a2, 4);
  v5 = v4;
  if ((v5 + 7) >= 0xE)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4 + 59;
  }

  v7 = (*(*a2 + 192))(a2, 27);
  v8 = *(*(this + 2) + 2568);
  v9 = (*(*a2 + 192))(a2, 6);
  v10 = (*(*a2 + 232))(a2, 6) * v9;
  v11 = (*(*a2 + 192))(a2, 7);
  v12 = (*(*a2 + 232))(a2, 7) * v11;
  v13 = v10;
  v15 = v10 > 0x17u || (v12 & 0xFCu) > 0x3B;
  if (v15)
  {
    GlCustomLog(13, "GlnsEph(%d,%d)[%u]: Validation error: Tk: Hour:%d  Min:%d\n", v6, v7, v8, v13, v12);
  }

  v16 = (*(*a2 + 192))(a2, 9);
  v17 = (*(*a2 + 232))(a2, 9);
  if ((v17 * v16) - 1426 <= 0xFFFFFA7C)
  {
    GlCustomLog(13, "GlnsEph(%d,%d)[%u]: Validation error: Osn:%d  Tb:%d\n", v6, v7, v8, (v17 * v16), v85);
    LOBYTE(v15) = 1;
  }

  v18 = (*(*a2 + 192))(a2, 25);
  if (v18 >= 0x5B6u)
  {
    GlCustomLog(13, "GlnsEph(%d,%d)[%u]: Validation error: Nt:%d\n", v6, v7, v8, v18);
    return 0;
  }

  if (v15)
  {
    return 0;
  }

  if ((*(*a2 + 40))(a2))
  {
    ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(a2, 12);
    v21 = fabs(ScaledFloatingField);
    v22 = v21 > 0.001953125;
    if (v21 > 0.001953125)
    {
      GlCustomLog(13, "GlnsEph(%d,%d)[%u]: Validation error: TauN:%.6f\n", v6, v7, v8, ScaledFloatingField);
    }

    v23 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a2, 28);
    if (fabs(v23) > 0.00000001397)
    {
      GlCustomLog(13, "GlnsEph(%d,%d)[%u]: Validation error: deltaTauN:%.6f\n", v6, v7, v8, v23);
      v22 = 1;
    }

    v24 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a2, 11);
    if (fabs(v24) > 9.31322575e-10)
    {
      GlCustomLog(13, "GlnsEph(%d,%d)[%u]: Validation error: gamma:%.15e\n", v6, v7, v8, v24);
      v22 = 1;
    }

    v25 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a2, 13);
    v26 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a2, 14);
    v27 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a2, 15);
    if (fabs(v25) > 27000.0 || fabs(v26) > 27000.0 || fabs(v27) > 24000.0)
    {
      GlCustomLog(13, "GlnsEph(%d,%d)[%u]: Validation error: XYZ: X0:%.3f  Y0:%.3f  Z0:%.3f\n", v6, v7, v8, v25, v26, v27);
      v22 = 1;
    }

    v28 = v26 * v26 + v25 * v25 + v27 * v27;
    v29 = sqrt(v28);
    if (v29 < 6378.137)
    {
      GlCustomLog(13, "GlnsEph(%d,%d)[%u]: Validation error: Semi-major axis too small: (%.1lf < %.1lf)\n", v6, v7, v8, v29, 6378.137);
      v22 = 1;
    }

    v30 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a2, 16);
    v31 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a2, 17);
    v32 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a2, 18);
    if (fabs(v30) > 4.3 || fabs(v31) > 4.3 || fabs(v32) > 4.3)
    {
      GlCustomLog(13, "GlnsEph(%d,%d)[%u]: Validation error: XYZ': X1:%.6f  Y1:%.6f  Z1:%.6f\n", v6, v7, v8, v30, v31, v32);
      v22 = 1;
    }

    v33 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a2, 19);
    v34 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a2, 20);
    v36 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a2, 21);
    if (fabs(v33) > 0.000000007 || fabs(v34) > 0.000000007 || fabs(v36) > 0.0000000062)
    {
      GlCustomLog(13, "GlnsEph(%d,%d)[%u]: Validation error: XYZ'': X2:%.9f  Y2:%.9f  Z2:%.9f\n", v6, v7, v8, v33, v34, v36);
      v22 = 1;
    }

    v37 = v28;
    v38 = v31 * v31 + v30 * v30 + v32 * v32;
    v39 = v34 * v34 + v33 * v33 + v36 * v36;
    if (v37 < 642620000.0 || v37 >= 657920000.0 || v38 < 9.0 || v38 >= 13.69 || v39 >= 8.1e-17)
    {
      (*(*a2 + 136))(v115, a2);
      if (LOBYTE(v115[0]) - 64 <= 0xFFFFFFC0)
      {
        goto LABEL_94;
      }

      *(*(this + 48) + ((LOBYTE(v115[0]) >> 3) & 0x1C)) |= 1 << SLOBYTE(v115[0]);
      GlCustomLog(13, "GlnsEph(%d,%d)[%u]: Validation requires verification: XYZ Magnitude Outside of Limits SatPosKm(%.3f<%.3f<%.3f) SatVelKmps(%.6f<%.6f<%.6f) SatAccKmpss(%.9f<%.9f<%.9f)\n", v6, v7, v8, 25350.0, sqrtf(v37), 25650.0, 3.0, sqrtf(v38), 3.70000005, 0.0, sqrtf(v39), 0.00000000899999986);
    }

    *v87 = 0;
    v40 = *(this + 68);
    if (v40)
    {
      PossibleOsnsForFcn = BlueFin::GlPeGloFcnOsnMgr::GetPossibleOsnsForFcn(v40, v5, &v87[1], v87);
      if (!PossibleOsnsForFcn)
      {
        goto LABEL_58;
      }
    }

    else
    {
      PossibleOsnsForFcn = BlueFin::GlPeGloFcnOsnMgr::GetHcPossibleOsnsForFcn(v5, &v87[1], v87, v35);
      if (!PossibleOsnsForFcn)
      {
        goto LABEL_58;
      }
    }

    if (v87[1] != v7 && (PossibleOsnsForFcn != 2 || v87[0] != v7))
    {
      if (v7 - 64 <= 0xFFFFFFC0)
      {
        goto LABEL_94;
      }

      *(*(this + 48) + 4 * (v7 >> 5)) |= 1 << v7;
    }

LABEL_58:
    if (v22)
    {
      return !v22;
    }

    v124 = 7;
    v125 = 0;
    LODWORD(v115[0]) = -65536;
    v115[1] = 0;
    v116 = 0;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0;
    v122 = -1;
    v123 = 0;
    v45 = *(this + 69);
    v46 = (*(*a2 + 192))(a2, 27);
    if (!BlueFin::GlPeAlmMgr::GetAlm(v45, 2u, v46, v115, 1, 1))
    {
      return !v22;
    }

    if (v123 != v4)
    {
      return !v22;
    }

    if (v122 == 2)
    {
      return !v22;
    }

    v47 = *(this + 2);
    if (!*(v47 + 644))
    {
      return !v22;
    }

    BlueFin::GlPeTimeManager::GetTime(v47, 1, &v100);
    v114[1] = 0;
    v114[0] = &off_2A1F0E430;
    BlueFin::GlPeGnssTime::GetGlns(&v100, v114);
    v48 = BlueFin::GlPeGloEphemeris::computeTk(v113, a2, v114);
    v49 = (*(*a2 + 192))(a2, 9, v48);
    v50 = (*(*a2 + 232))(a2, 9);
    *v50.i64 = (60 * v49 * v51);
    BlueFin::GlGlnsTime::ResolveAmbiguity(v112, v113, v50, v52);
    BlueFin::GlPeTimeManager::GetTime(v111, *(this + 2), v112, 1);
    v110 = 0;
    v109 = &off_2A1F0B5F0;
    BlueFin::GlPeGnssTime::GetGps(v111, &v109);
    *v53.i64 = v116;
    *&v100.f64[0] = &off_2A1F0B5F0;
    *v54.i64 = v116 - trunc(v116);
    v55.f64[0] = NAN;
    v55.f64[1] = NAN;
    v56 = *vbslq_s8(vnegq_f64(v55), v54, v53).i64;
    if (v56 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v57 = v56 * 4294967300.0 + 0.5;
    v58 = v57;
    if (v57 >= 4294967300.0)
    {
      v58 = -1;
    }

    LODWORD(v100.f64[1]) = v58;
    HIDWORD(v100.f64[1]) = v116 + 604800 * v121;
    *&v100.f64[0] = &off_2A1F0B5F0;
    *&v94.f64[0] = __PAIR64__(HIDWORD(v100.f64[1]), v58);
    v59 = (v109[4])(&v109);
    *&v88.f64[0] = __PAIR64__(v59, v110);
    BlueFin::GlTimePoint::resolveAmbiguity(&v94, &v88, 0x93A8000u);
    v60 = (v109[3])(&v109, HIDWORD(v94.f64[0]));
    v107 = LODWORD(v94.f64[0]);
    v108 = v60;
    v106 = &off_2A1F0B5F0;
    v61 = v110;
    v62 = HIDWORD(v110);
    v63 = v60 | LOBYTE(v94.f64[0]);
    if (v60 | LODWORD(v94.f64[0]))
    {
      if (v110 < __PAIR64__(v60, LODWORD(v94.f64[0])))
      {
        v62 = (__PAIR64__(v60 - HIDWORD(v110), LODWORD(v94.f64[0])) - v110) >> 32;
        v61 = LODWORD(v94.f64[0]) - v110;
        v63 = 1;
      }

      else
      {
        v63 = 0;
        v62 = (v110 - __PAIR64__(v60, LODWORD(v94.f64[0]))) >> 32;
        v61 = v110 - LODWORD(v94.f64[0]);
      }
    }

    v64 = v61 * 2.32830644e-10;
    v65 = v64 + v62;
    v66 = (v63 & ((v62 | v61) != 0)) != 0 ? -v65 : v64 + v62;
    if (BlueFin::GlPeEphemeris::isExpired(a2, v111) || v65 >= 4838400.0)
    {
      return !v22;
    }

    v105 = 0;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0;
    BlueFin::GlPeAlmMgr::GetSatPos(v66, *(this + 69), v115, &v100, 0);
    v99 = 0;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0;
    (*(*a2 + 112))(a2, v111, &v94, 0.0);
    v67 = ceil(v65 / 86400.0) + 7.0;
    v68 = vsubq_f64(v94, v100);
    v69 = sqrt(vaddvq_f64(vmulq_f64(v68, v68)) + (*&v95 - *&v101) * (*&v95 - *&v101));
    v70 = sqrt((*&v96 - *&v102) * (*&v96 - *&v102) + (*(&v95 + 1) - *(&v101 + 1)) * (*(&v95 + 1) - *(&v101 + 1)) + (*(&v96 + 1) - *(&v102 + 1)) * (*(&v96 + 1) - *(&v102 + 1)));
    v71 = *(&v97 + 1);
    v72 = *(&v103 + 1);
    v73 = vabdd_f64(*&v97, *&v103) * 1000000.0;
    v74 = *(this + 2);
    if (*(v74 + 2589))
    {
      v75 = v67 * 1.70000005 + 60.0;
      v76 = v67 + 60.0;
      v77 = v67 * 6.0 + 60.0;
    }

    else
    {
      v86 = *(&v97 + 1);
      v93 = 0;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0;
      BlueFin::GlPeAlmMgr::GetSatPos(v66 - *(v74 + 2588), *(this + 69), v115, &v88, 0);
      v75 = v67 * 1.70000005;
      v78 = vsubq_f64(v94, v88);
      v79 = sqrt(vaddvq_f64(vmulq_f64(v78, v78)) + (*&v95 - *&v89) * (*&v95 - *&v89));
      if (v69 >= v79)
      {
        v69 = v79;
      }

      v77 = v67 * 6.0;
      v80 = sqrt((*&v96 - *&v90) * (*&v96 - *&v90) + (*(&v95 + 1) - *(&v89 + 1)) * (*(&v95 + 1) - *(&v89 + 1)) + (*(&v96 + 1) - *(&v90 + 1)) * (*(&v96 + 1) - *(&v90 + 1)));
      if (v70 >= v80)
      {
        v70 = v80;
      }

      v81 = vabdd_f64(*&v97, *&v91) * 1000000.0;
      if (v73 >= v81)
      {
        v73 = v81;
      }

      v76 = v67;
      v71 = v86;
    }

    v82 = vabdd_f64(v71, v72) * 1000000000.0;
    v83 = v77 * 1000.0;
    if (v69 < v83 && v70 < v76 && v73 < v75 && v82 < 1000.0)
    {
      return !v22;
    }

    if ((v4 + 7) >= 0xEu)
    {
      v84 = 0;
    }

    else
    {
      v84 = v5 + 59;
    }

    GlCustomLog(14, "GlnsEph(%d)[%u]: AlmanacCrossCheck failed! Forcing verification.  AlmAgeDays:%.0lf PosDiffM(%.1lf:%.1lf) VelDiffMps(%.1lf:%.1lf) ClkErrDiffUs(%.1lf:%.1lf) ClkErrRateDiffPpb(%.1lf:%.1lf)\n", v84, *(*(this + 2) + 2568), v67, v69, v83, v70, v76, v73, v75, v82, 1000.0);
    if (v7 - 64 > 0xFFFFFFC0)
    {
      *(*(this + 48) + 4 * (v7 >> 5)) |= 1 << v7;
      return !v22;
    }

LABEL_94:
    DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.h", 115, "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
  }

  v42 = (*(*a2 + 192))(a2, 23);
  v43 = (*(*a2 + 192))(a2, 34);
  v44 = 78;
  if (v7 - 1 < 0x18)
  {
    v44 = 121;
  }

  GlCustomLog(13, "GlnsEph(%d,%d)[%u]: Validated unhealthy BnMsb:%u Ln:%u OsnValid:%c\n", v6, v7, v8, v42, v43, v44);
  return 1;
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnSyncInLatched(BlueFin::GlDbgCodec *a1, BlueFin::GlDbgRequest *this, unsigned int a3, double a4)
{
  v12 = a3;
  v11 = a4;
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v10 = result;
  if (!*(a1 + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(a1, 546);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v10);
    }

    BlueFin::GlDbgCodec::Write(a1, &v12);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v11);
    }

    (*(*a1 + 32))(a1, 1);
    v8 = *(this + 5);
    if (v8)
    {
      v8(this, v12, a4);
    }

    BlueFin::GlDbgCodec::WriteFinal(a1, 546);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v10);
    }

    v9 = *(*a1 + 32);

    return v9(a1, 1);
  }

  return result;
}

void std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_8,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_8>,void ()(BlueFin::GL_SYNCIN_STATUS,double)>::operator()(uint64_t a1, _DWORD *a2, double *a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  FireDeviceLog::DeviceLogBase(6, "#tt,syncInLatch,status,%d,time,%.3f", *a2, *a3);
  if (v3 == 1)
  {
    v5 = *(*(v4 + 40) + 1296);
    FireDeviceLog::DeviceLogBase(6, "#tt,latch,status,%d", 1);
    (*(*v5 + 376))(v5, v6, 2);
  }
}

void FireCallback::GlReqOnSyncInLatched(double a1, uint64_t a2, int a3)
{
  if (FireCallback::pInstance)
  {
    v4 = *(FireCallback::pInstance + 856);
    if (v4)
    {
      v7 = a3;
      v6 = a1;
      (*(*v4 + 48))(v4, &v7, &v6);
      return;
    }

    v5 = "fcb,fReqOnSyncInLatchedCb,nullptr";
  }

  else
  {
    v5 = "fcb,GlReqOnSyncInLatched,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v5, a1);
}

uint64_t BlueFin::GlDbgEngine::SetAsstPreciseTime(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a2;
  v10 = a3;
  v5 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v5, 1557);
    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      *(v6 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v6, v3);
    }

    BlueFin::GlDbgCodec::Write(*(a1 + 8), &v10);
    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v3 = BlueFin::GlEngineImplStd::SetAsstPreciseTime(a1 + 368, v3, v10);
    v9 = v3;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1557);
    v7 = *(a1 + 8);
    if ((*(*v7 + 120))(v7))
    {
      BlueFin::GlDbgCodec::Write(v7, &v9);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v5 + 104))(v5, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:800");
  }

  return v3;
}

{
  v3 = a2;
  v10 = a3;
  v5 = *(a1 + 8);
  if (a2)
  {
    BlueFin::GlDbgCodec::WriteStart(v5, 1558);
    v6 = *(a1 + 8);
    if ((*(*v6 + 120))(v6))
    {
      *(v6 + 143) = 2;
      BlueFin::GlDbgCodec::Rvw(v6, v3);
    }

    BlueFin::GlDbgCodec::Write(*(a1 + 8), &v10);
    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
    v3 = BlueFin::GlEngineImplStd::SetAsstPreciseTime(a1 + 368, v3, v10);
    v9 = v3;
    BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1558);
    v7 = *(a1 + 8);
    if ((*(*v7 + 120))(v7))
    {
      BlueFin::GlDbgCodec::Write(v7, &v9);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  else
  {
    (*(*v5 + 104))(v5, 1, "/Library/Caches/com.apple.xbs/Sources/FIREGPS7/proprietary/deliverables/gll_dev/gldebug/src/gldebug_engine.cpp:820");
  }

  return v3;
}

uint64_t BlueFin::GlReqSm::SetSyncinPulseTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(*(a1 + 6280) + 2576);
  result = BlueFin::GlPeReqBag::SetSyncinPulseTime(a1 + 10880, a2, a3);
  if (*(*(a1 + 6280) + 2576))
  {
    v7 = v3 == 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 && v5 == 0)
  {
    v9 = *(a1 + 6264);

    return BlueFin::GlPosEng::OnInitialTime(v9);
  }

  return result;
}

uint64_t BlueFin::GlPosEng::SetAsstPreciseTime(uint64_t a1, unsigned __int16 *a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  *(a1 + 350216) = 1;
  v15 = &off_2A1F0B5F0;
  v16 = 0;
  a4.i16[0] = a2[4];
  a5.i16[0] = a2[5];
  *a5.i64 = a5.u64[0] * 0.000001;
  *a4.i64 = *a5.i64 + a4.u64[0] * 0.001;
  v5 = *a2;
  a5.i32[0] = *(a2 + 1);
  *a4.i64 = (*a4.i64 + a5.u64[0]) * 0.001;
  *a5.i64 = *a4.i64 - trunc(*a4.i64);
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  a5.i64[0] = vbslq_s8(vnegq_f64(v6), a5, a4).i64[0];
  if (*a5.i64 < 0.0 || *a5.i64 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v8 = *a5.i64 * 4294967300.0 + 0.5;
  v9 = v8;
  if (v8 >= 4294967300.0)
  {
    v9 = -1;
  }

  v10 = *a4.i64;
  a4.i32[0] = *(a2 + 3);
  v12[0] = v9;
  v12[1] = v10 + 604800 * v5;
  v12[2] = 0;
  v13 = 0x41EFF2445FE00000;
  v14 = a4.u64[0];
  BlueFin::GlReqSm::SetSyncinPulseTime(a1 + 126144, v12, a3);
  return 1;
}

uint64_t BlueFin::GlPeReqBag::SetSyncinPulseTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v8 = (a1 + 3233);
  v9 = *(a1 + 3233);
  *(a1 + 3233) = 0;
  do
  {
    result = *(a1 + v6);
    if (result)
    {
      result = (*(*result + 200))(result, a2, a3);
    }

    v6 += 8;
  }

  while (v6 != 576);
  *v8 = v9;
  return result;
}

uint64_t BlueFin::GlPeRqHdlrSyncin::SetSyncinPulseTime(uint64_t result, uint64_t a2, int a3)
{
  if ((*(result + 20) & 1) == 0)
  {
    v3 = result;
    if ((*(result + 19) & 1) == 0)
    {
      v6 = *(*(*(result + 56) + 8) + 2568);
      v7 = v6;
      if (v6 <= 0xFF9222FE)
      {
        v7 = v6;
      }

      v8 = "GL_UPLINK_REPORT_CURRENT";
      if (!a3)
      {
        v8 = "GL_UPLINK";
      }

      if (a3 == 1)
      {
        v8 = "GL_DOWNLINK";
      }

      GlCustomLog(14, "SyncinPulseTime(Lms: %0.1f, Prec: %.1f, %s)\n", v7, *(a2 + 24), v8);
      if (a3)
      {
        if (a3 == 2)
        {
          *(v3 + 21) = 1;
          return BlueFin::GlPeRqHdlrSyncin::ProcessSyncInEvent(v3);
        }
      }

      else
      {
        *(v3 + 22) = 1;
      }

      *(v3 + 112) |= 4u;
      v9 = *(a2 + 8);
      *(v3 + 80) = v9;
      if (v9 == 2)
      {
        v11 = &unk_2A1F11310;
        v12 = 0;
        v10 = 432000 - BlueFin::GlWeekTowTime::m_ucCurrentLs;
        v13 = 1980;
        v14 = v10 / 0x15180 + 1;
        v15 = 1;
        v16 = v10 / 0x15180 + 1;
        v17 = v10 % 0x15180 / 0xE10;
        v18 = (2185 * (v10 - 3600 * ((1193047 * v10) >> 32))) >> 17;
        v19 = v10 - 60 * ((71582789 * v10) >> 32);
        BlueFin::GlPeGnssTime::GetUtc(a2, &v11);
      }

      else if (v9 == 1)
      {
        v11 = &off_2A1F0E430;
        v12 = 0;
        BlueFin::GlPeGnssTime::GetGlns(a2, &v11);
      }

      else
      {
        if (v9)
        {
          DeviceFaultNotify("glpe_reqhdlr_syncin.cpp", 153, "SetSyncinPulseTime", "0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_syncin.cpp", 153, "0");
        }

        v11 = &off_2A1F0B5F0;
        v12 = 0;
        BlueFin::GlPeGnssTime::GetGps(a2, &v11);
      }

      *(v3 + 84) = v12;
      *(v3 + 96) = *(a2 + 24);
      if (a3 == 1)
      {
        *(v3 + 112) |= 8u;
      }

      return BlueFin::GlPeRqHdlrSyncin::ProcessSyncInEvent(v3);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeReqBag::SendSyncinImmediateReportCb(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v14 = 0;
  v16 = (a1 + 3233);
  v17 = *(a1 + 3233);
  *(a1 + 3233) = 0;
  do
  {
    result = *(a1 + v14);
    if (result)
    {
      result = (*(*result + 216))(result, a2, a3, a4, a5, a6, a7);
    }

    v14 += 8;
  }

  while (v14 != 576);
  *v16 = v17;
  return result;
}

uint64_t BlueFin::GlPeRqHdlrSyncin::SendSyncinImmediateReport(uint64_t a1)
{
  result = *(a1 + 104);
  v3 = *(result + 104);
  if (v3)
  {
    result = v3();
  }

  *(a1 + 19) = 1;
  return result;
}

uint64_t BlueFin::GlDbgProxyGlReqOnSyncinReportCurrentTime(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, _BOOL8 a5, _BOOL8 a6, double a7)
{
  v13 = (*(*a1 + 112))(a1);
  v14 = *(v13 + 1);

  return BlueFin::GlDbgProxy::HalGlReqOnSyncinReportCurrentTime(v14, v13, a2, a3, a4, a5, a6, a7);
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnSyncinReportCurrentTime(uint64_t a1, BlueFin::GlDbgRequest *this, unsigned int a3, uint64_t a4, unsigned int a5, _BOOL8 a6, _BOOL8 a7, double a8)
{
  v21 = a5;
  v22 = a3;
  v20 = a8;
  v19 = a6;
  v18 = a7;
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v17 = result;
  if (!*(a1 + 808))
  {
    BlueFin::GlDbgCodec::WriteStart(a1, 560);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v17);
    }

    BlueFin::GlDbgCodec::Write(a1, &v22);
    if ((*(*a1 + 120))(a1))
    {
      *(a1 + 572) = 2;
      BlueFin::GlDbgCodec::Rvw(a1, a4);
    }

    BlueFin::GlDbgCodec::Write(a1, &v21);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v20);
    }

    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v19);
    }

    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v18);
    }

    (*(*a1 + 32))(a1, 1);
    v15 = *(this + 14);
    if (v15)
    {
      v15(this, v22, a4, v21, a6, a7, a8);
    }

    BlueFin::GlDbgCodec::WriteFinal(a1, 560);
    if ((*(*a1 + 120))(a1))
    {
      BlueFin::GlDbgCodec::Write(a1, &v17);
    }

    v16 = *(*a1 + 32);

    return v16(a1, 1);
  }

  return result;
}

void FireCallback::GlReqOnSyncinReportCurrentTime(double a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (FireCallback::pInstance)
  {
    v8 = *(FireCallback::pInstance + 920);
    if (v8)
    {
      v15 = a3;
      v14 = a4;
      v13 = a5;
      v12 = a1;
      v11 = a6;
      v10 = a7;
      (*(*v8 + 48))(v8, &v15, &v14, &v13, &v12, &v11, &v10);
      return;
    }

    v9 = "fcb,fReqOnSyncinReportCurrentTimeCb,nullptr";
  }

  else
  {
    v9 = "fcb,GlReqOnSyncinReportCurrentTime,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v9, a4, a5, a6, a7, a1);
}

void std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_9,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_9>,void ()(BlueFin::GL_SYNCIN_STATUS,BlueFin::GL_TIME const*,BlueFin::GL_TIME_VALIDITY,double,BOOL,signed char)>::operator()(uint64_t a1, int *a2, unsigned __int16 **a3, unsigned int *a4, double *a5, char *a6, char *a7)
{
  v7 = *a3;
  if (*a3)
  {
    v8 = *a2;
    v9 = *a4;
    v10 = *a5;
    v11 = *a6;
    v12 = *a7;
    v13 = *(a1 + 8);
    FireDeviceLog::DeviceLogBase(6, "#tt,report,status,%d,valid,%d,tow,%d,lms,%6.1f", *a2, *a4, *(v7 + 1), *a5);
    if (*(v13 + 32))
    {
      memset(v21, 0, sizeof(v21));
      if ((convertGlTimeValidityToTtdataQuality(v9, &v21[2]) & 1) == 0)
      {
        FireDeviceLog::DeviceLogBase(2, "#tt,failed to convert,status,%d,valid,%d", v8, v9);
      }

      FireDeviceLog::DeviceLogBase(6, "#tt,Gltime,status,%d,valid,%d,week,%u,tow,%u,%u,%u,prec,%u", v8, v9, *v7, *(v7 + 1), v7[4], v7[5], *(v7 + 3));
      LOBYTE(v18) = LODWORD(v21[2]) == 5;
      v14 = *(v7 + 3) * 1000.0;
      *(&v18 + 1) = 604800000000000 * *v7 + 1000000 * *(v7 + 1) + 1000 * v7[4] + v7[5];
      *&v19 = v14;
      BYTE4(v19) = v11;
      DWORD2(v19) = v12;
      v20 = (v10 * 1000000.0 + 0.5);
      v21[0] = 0;
      v21[1] = 0;
      v17[2] = v20;
      v17[3] = *&v21[1];
      v17[4] = *&v21[3];
      v17[0] = v18;
      v17[1] = v19;
      v15 = *(v13 + 32);
      v22 = 1;
      if (!v15)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v15 + 48))(v15, &v22, v17);
      return;
    }

    v16 = "#tt,handleTimeTransferData,nullptr";
  }

  else
  {
    v16 = "SyncinReport,pGlTime,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v16);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaSyncin(int a1, uint64_t a2, BlueFin::GlFormat *this, const char *a4)
{
  v5 = a4;
  v6 = this + a4 - 1;
  if (v6 <= this)
  {
    v5 = 0;
  }

  v7 = 70;
  if (*(a2 + 7400))
  {
    v7 = 84;
  }

  BlueFin::GlFormat::glsnprintf(this, v5, "$PGLOR,%d,SYN,%hd,SynLms,%.6f,Week,%d,TOW,%u.%03d%03d,U,%u,Leap,%c,%d", a4, 0, *(a2 + 7388), *(a2 + 7392), *(a2 + 7368), *(a2 + 7372), *(a2 + 7376), *(a2 + 7378), *(a2 + 7380), v7, *(a2 + 7401));

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v6, v8);
}

void BlueFin::GlPeRqHdlrSyncin::SetFixStatus(uint64_t a1, unsigned int *a2)
{
  if ((*(a1 + 20) & 1) == 0 && (*(a1 + 19) & 1) == 0)
  {
    v3 = *a2;
    v4 = *(*(a1 + 56) + 8);
    if (*a2 <= 0xFF9222FE)
    {
      v3 = *a2;
    }

    BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(v4, 0, 1, v7, v3);
    if ((*(a1 + 112) & 2) != 0 && v11 <= 0x14)
    {
      v5 = *(a1 + 72);
      if (*(a1 + 22) == 1)
      {
        v5 = v5 + 0.042;
        *(a1 + 72) = v5;
      }

      BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(*(*(a1 + 56) + 8), 0, 1, v7, v5);
      GlCustomLog(14, "Syncin::SetFixStatus(), GpsWeek=%d, WeekMs=%u.%d%d(Unc:%uUs), PulseLms = %.6f\n", v7[0], v8, v9, v10, v11, *(a1 + 72));
      v6 = *(*(a1 + 104) + 80);
      if (v6)
      {
        v6();
      }

      *(a1 + 19) = 1;
    }
  }
}

uint64_t BlueFin::GlPeRqHdlrSyncin::Cleanup(BlueFin::GlPeRqHdlrSyncin *this)
{
  if ((*(this + 20) & 1) != 0 || (*(this + 19) & 1) != 0 || *(this + 23) == 1)
  {
    *(this + 19) = 1;
    BlueFin::GlReqSm::SetSyncinEvent(*(*(this + 7) + 88), 6, 0.0);
    if (*(this + 20) == 1)
    {
      v2 = *(*(this + 13) + 88);
      if (!v2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if ((*(this + 23) & 1) == 0 && (*(this + 112) & 0x20) == 0)
      {
        goto LABEL_11;
      }

      v2 = *(*(this + 13) + 88);
      if (!v2)
      {
        goto LABEL_11;
      }
    }

    v2();
  }

LABEL_11:

  return BlueFin::GlPeRqHdlr::Cleanup(this);
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnStop(BlueFin::GlDbgProxy *this, void (**a2)(BlueFin::GlDbgRequest *))
{
  result = BlueFin::GlDbgRequest::Id(a2, 0);
  v7 = result;
  if (!*(this + 101))
  {
    BlueFin::GlDbgCodec::WriteStart(this, 545);
    if ((*(*this + 120))(this))
    {
      BlueFin::GlDbgCodec::Write(this, &v7);
    }

    (*(*this + 32))(this, 1);
    v5 = a2[10];
    if (v5)
    {
      v5(a2);
    }

    BlueFin::GlDbgCodec::WriteFinal(this, 545);
    if ((*(*this + 120))(this))
    {
      BlueFin::GlDbgCodec::Write(this, &v7);
    }

    v6 = *(*this + 32);

    return v6(this, 1);
  }

  return result;
}

uint64_t BlueFin::GlDbgProxyGlReqOnStop(uint64_t a1)
{
  v1 = (*(*a1 + 112))(a1);
  v2 = *(v1 + 8);

  return BlueFin::GlDbgProxy::HalGlReqOnStop(v2, v1);
}

void std::__function::__func<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_8,std::allocator<FireMessageHandler::FireMessageHandler(BlueFin::GlEngine *)::$_8>,void ()(BlueFin::GlRequest *)>::operator()(uint64_t a1, const void **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  FireDeviceLog::DeviceLogBase(5, "ReqOnStopImpl,%p", *a2);

  FireMessageHandler::eraseRequest(v3, v2);
}

void FireCallback::GlReqOnStop(uint64_t a1)
{
  if (FireCallback::pInstance)
  {
    v3 = *(FireCallback::pInstance + 56);
    if (v3)
    {
      v5 = a1;
      (*(*v3 + 48))(v3, &v5);
      return;
    }

    v4 = "fcb,fReqOnStopCb,nullptr";
  }

  else
  {
    v4 = "fcb,GlReqOnStop,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v4);
}

void FireMessageHandler::eraseRequest(void *a1, uint64_t a2)
{
  v3 = a1 + 165;
  v4 = a1 + 165;
  do
  {
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  while (v4[3] != a2);
  v5 = *(v4 + 4);
  if (v5 == -1)
  {
LABEL_8:
    FireDeviceLog::DeviceLogBase(2, "#fmh,eraseRequest,request,%p,notExist");
    return;
  }

  v6 = a1[164];
  if (!*&v6)
  {
    goto LABEL_52;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v5;
    if (*&v6 <= v5)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = a1[163];
  v10 = *(v9 + 8 * v8);
  if (!v10)
  {
    goto LABEL_52;
  }

  v11 = *v10;
  if (!*v10)
  {
    goto LABEL_52;
  }

  v12 = *&v6 - 1;
  while (1)
  {
    v13 = v11[1];
    if (v13 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v13 >= *&v6)
      {
        v13 %= *&v6;
      }
    }

    else
    {
      v13 &= v12;
    }

    if (v13 != v8)
    {
      goto LABEL_52;
    }

LABEL_22:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_52;
    }
  }

  if (*(v11 + 4) != v5)
  {
    goto LABEL_22;
  }

  v14 = *v11;
  if (v7.u32[0] > 1uLL)
  {
    v15 = v5;
    if (*&v6 <= v5)
    {
      v15 = v5 % *&v6;
    }
  }

  else
  {
    v15 = v12 & v5;
  }

  v16 = *(v9 + 8 * v15);
  do
  {
    v17 = v16;
    v16 = *v16;
  }

  while (v16 != v11);
  if (v17 == v3)
  {
    goto LABEL_41;
  }

  v18 = v17[1];
  if (v7.u32[0] > 1uLL)
  {
    if (v18 >= *&v6)
    {
      v18 %= *&v6;
    }
  }

  else
  {
    v18 &= v12;
  }

  if (v18 == v15)
  {
LABEL_43:
    if (v14)
    {
      v19 = *(v14 + 8);
      goto LABEL_45;
    }
  }

  else
  {
LABEL_41:
    if (!v14)
    {
      goto LABEL_42;
    }

    v19 = *(v14 + 8);
    if (v7.u32[0] > 1uLL)
    {
      v20 = *(v14 + 8);
      if (v19 >= *&v6)
      {
        v20 = v19 % *&v6;
      }
    }

    else
    {
      v20 = v19 & v12;
    }

    if (v20 != v15)
    {
LABEL_42:
      *(v9 + 8 * v15) = 0;
      v14 = *v11;
      goto LABEL_43;
    }

LABEL_45:
    if (v7.u32[0] > 1uLL)
    {
      if (v19 >= *&v6)
      {
        v19 %= *&v6;
      }
    }

    else
    {
      v19 &= v12;
    }

    if (v19 != v15)
    {
      *(a1[163] + 8 * v19) = v17;
      v14 = *v11;
    }
  }

  *v17 = v14;
  *v11 = 0;
  --a1[166];
  operator delete(v11);
LABEL_52:
  FireDeviceLog::DeviceLogBase(5, "#fmh,eraseRequest,request,%p,%d,size,%zu");
}

uint64_t BlueFin::GlRequestBase::Destroy(uint64_t a1)
{
  v2 = (*(*a1 + 112))(a1);
  (*(*a1 + 128))(a1, BlueFin::GlDbgMemory::Deallocate);
  if (*(v2 + 1))
  {
    *(*(v2 + 1) + 8 * BlueFin::GlDbgRequest::Id(v2, 0) + 5928) = 0;
  }

  v3 = *(BlueFin::GlDbgMemory::m_pInstance + 8);

  return v3(v2);
}

void BlueFin::GlPeRqHdlr::~GlPeRqHdlr(BlueFin::GlPeRqHdlr *this)
{
  *this = &unk_2A1F13AD0;
  BlueFin::GlRequestBase::Destroy(*(this + 1));
}

{
  BlueFin::GlPeRqHdlr::~GlPeRqHdlr(this);

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlRequestImpl::Destroy(uint64_t this, uint64_t (*a2)(uint64_t))
{
  if (a2)
  {
    return a2(this);
  }

  return this;
}

uint64_t FireTranslator::translateGpsNavigationModel(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  FireDeviceLog::DeviceLogBase(6, "translateGpsNavigationModel : index (%d)", a2);
  *(a3 + 124) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (a2 > 0xF || *a1 <= a2)
  {
    FireDeviceLog::DeviceLogBase(2, "translateGpsNavigationModel : index is invalid (%d)");
    return 0;
  }

  v6 = &a1[96 * a2];
  v7 = v6[60];
  if (v7 >= 0x20)
  {
    FireDeviceLog::DeviceLogBase(2, "translateGpsNavigationModel : satId is invalid (%d)");
    return 0;
  }

  v9 = *(v6 + 18);
  if (v9 >= 0x400)
  {
    FireDeviceLog::DeviceLogBase(2, "translateGpsNavigationModel : ephemIodc is invalid (%d)");
    return 0;
  }

  v10 = *(v6 + 19);
  if (v10 >= 0x93A8)
  {
    FireDeviceLog::DeviceLogBase(2, "translateGpsNavigationModel : ephemToc is invalid (%d)");
    return 0;
  }

  v11 = *(v6 + 25);
  if (v11 >= 0x93A8)
  {
    FireDeviceLog::DeviceLogBase(2, "translateGpsNavigationModel : toe is invalid (%d)");
    return 0;
  }

  v12 = v6[61];
  if (v12 >= 0x10)
  {
    FireDeviceLog::DeviceLogBase(2, "translateGpsNavigationModel : ephemUra is invalid (%d)");
    return 0;
  }

  v13 = v6[62];
  if (v13 >= 0x40)
  {
    FireDeviceLog::DeviceLogBase(2, "translateGpsNavigationModel : ephemSvHealth is invalid (%d)");
    return 0;
  }

  v14 = v6[64];
  if (v14 >= 4)
  {
    FireDeviceLog::DeviceLogBase(2, "translateGpsNavigationModel : satStatus is invalid (%d)");
    return 0;
  }

  v15 = v6[65];
  if (v15 >= 4)
  {
    FireDeviceLog::DeviceLogBase(2, "translateGpsNavigationModel : ephemCodeOnL2 is invalid (%d)");
    return 0;
  }

  v16 = v6[80];
  if (v16 >= 0x20)
  {
    FireDeviceLog::DeviceLogBase(2, "translateGpsNavigationModel : ephemAODO is invalid (%d)");
    return 0;
  }

  *a3 = v7;
  *(a3 + 4) = 0;
  *(a3 + 8) = v14;
  *(a3 + 12) = v15;
  *(a3 + 16) = v12;
  *(a3 + 20) = v13;
  v17 = *(v6 + 17);
  *(a3 + 24) = v9;
  *(a3 + 28) = v17;
  *(a3 + 32) = *(v6 + 84);
  *(a3 + 48) = v6[72];
  *(a3 + 52) = v10;
  v18 = *(v6 + 20);
  *(a3 + 56) = v6[63];
  *(a3 + 60) = v18;
  v19 = *(v6 + 21);
  v20 = *(v6 + 2);
  *(a3 + 64) = *(v6 + 1);
  *(a3 + 68) = v19;
  *(a3 + 72) = *(v6 + 22);
  *(a3 + 76) = v20;
  v21 = *(v6 + 3);
  v22 = *(v6 + 4);
  *(a3 + 80) = *(v6 + 23);
  *(a3 + 84) = v21;
  *(a3 + 88) = *(v6 + 24);
  *(a3 + 92) = v22;
  v23 = *(v6 + 19);
  *(a3 + 96) = v11;
  *(a3 + 100) = v23;
  v24 = *(v6 + 26);
  *(a3 + 104) = v16;
  *(a3 + 108) = v24;
  v25 = *(v6 + 27);
  v26 = *(v6 + 6);
  *(a3 + 112) = *(v6 + 5);
  *(a3 + 116) = v25;
  v27 = *(v6 + 28);
  *(a3 + 120) = v26;
  *(a3 + 124) = v27;
  *(a3 + 128) = *(v6 + 28);
  result = 1;
  *(a3 + 136) = *(v6 + 29);
  return result;
}

void FireTranslator::translateGpsNavigationModel(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v5 = 0;
    do
    {
      if (FireTranslator::translateGpsNavigationModel(a1, v5, &v25))
      {
        v6 = *(a2 + 8);
        v7 = *(a2 + 16);
        if (v6 >= v7)
        {
          v13 = 0xAF8AF8AF8AF8AF8BLL * ((v6 - *a2) >> 2);
          v14 = v13 + 1;
          if (v13 + 1 > 0x1D41D41D41D41D4)
          {
            std::vector<BlueFin::GlUncmprsdEph>::__throw_length_error[abi:ne200100]();
          }

          v15 = 0xAF8AF8AF8AF8AF8BLL * ((v7 - *a2) >> 2);
          if (2 * v15 > v14)
          {
            v14 = 2 * v15;
          }

          if (v15 >= 0xEA0EA0EA0EA0EALL)
          {
            v16 = 0x1D41D41D41D41D4;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<BlueFin::GlUncmprsdEph>>(a2, v16);
          }

          v17 = 140 * v13;
          v18 = v32[0];
          *(v17 + 96) = v31;
          *(v17 + 112) = v18;
          *(v17 + 124) = *(v32 + 12);
          v19 = v28;
          *(v17 + 32) = v27;
          *(v17 + 48) = v19;
          v20 = v30;
          *(v17 + 64) = v29;
          *(v17 + 80) = v20;
          v21 = v26;
          *v17 = v25;
          *(v17 + 16) = v21;
          v12 = 140 * v13 + 140;
          v22 = *(a2 + 8) - *a2;
          v23 = 140 * v13 - v22;
          memcpy((v17 - v22), *a2, v22);
          v24 = *a2;
          *a2 = v23;
          *(a2 + 8) = v12;
          *(a2 + 16) = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          v8 = v32[0];
          v6[6] = v31;
          v6[7] = v8;
          *(v6 + 124) = *(v32 + 12);
          v9 = v28;
          v6[2] = v27;
          v6[3] = v9;
          v10 = v30;
          v6[4] = v29;
          v6[5] = v10;
          v11 = v26;
          *v6 = v25;
          v6[1] = v11;
          v12 = v6 + 140;
        }

        *(a2 + 8) = v12;
      }

      ++v5;
      v3 = *a1;
    }

    while (v5 < v3);
  }

  FireDeviceLog::DeviceLogBase(6, "#fgd,setNwAssistanceGpsEphemeris,from,%d,to,%zu", v3, 0xAF8AF8AF8AF8AF8BLL * ((*(a2 + 8) - *a2) >> 2));
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EEAC098, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<BlueFin::GlUncmprsdEph>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1D41D41D41D41D5)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

FireDeviceLog::Setting *FireDeviceLog::Setting::Setting(FireDeviceLog::Setting *this)
{
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  v2 = (*(**(FireResourceMgr::fInstance + 16) + 56))(*(FireResourceMgr::fInstance + 16));
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = v2;
  v3 = v2 - 1;
  if ((v2 - 1) <= 8)
  {
    v4 = dword_298A2E070[v3];
    v5 = dword_298A2E094[v3];
    *(this + 1) = v4;
    *(this + 2) = v5;
  }

  return this;
}

void FireDeviceLog::StaticSetting::Init(FireDeviceLog::StaticSetting *this)
{
  if (!FireDeviceLog::StaticSetting::fInstance)
  {
    operator new();
  }

  FireDeviceLog::DeviceLogBase(5, "FireDeviceLog,Setting,level,%d,pri,0x%x,fac,0x%x", *FireDeviceLog::StaticSetting::fInstance, *(FireDeviceLog::StaticSetting::fInstance + 4), *(FireDeviceLog::StaticSetting::fInstance + 8));
}

void std::vector<GnssHal::ExtensionsFire::RecoveryPoint>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 56;
        std::allocator<GnssHal::ExtensionsFire::RecoveryPoint>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<GnssHal::ExtensionsFire::RecoveryPoint>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void GnssHal::ExtensionsFire::RecoveryPoint::~RecoveryPoint(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::vector<GnssHal::ExtensionsFire::RecoveryPoint>::__emplace_back_slow_path<GnssHal::ExtensionsFire::RecoveryPoint&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    std::vector<GnssHal::ExtensionsFire::RecoveryPoint>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v23 = a1;
  if (v6)
  {
    if (v6 <= 0x492492492492492)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v7 = 56 * v2;
  v19 = 0;
  v20 = v7;
  v21 = v7;
  v22 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    *(v7 + 16) = *(a2 + 16);
  }

  *(v7 + 24) = *(a2 + 24);
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    *(v7 + 32) = *(a2 + 32);
    *(v7 + 48) = *(a2 + 48);
  }

  v8 = v21;
  v9 = *a1;
  v10 = a1[1];
  v11 = v20 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v20 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 16);
      *v13 = v14;
      *(v12 + 8) = 0;
      *(v12 + 16) = 0;
      *v12 = 0;
      *(v13 + 24) = *(v12 + 24);
      v15 = *(v12 + 32);
      *(v13 + 48) = *(v12 + 48);
      *(v13 + 32) = v15;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 32) = 0;
      v12 += 56;
      v13 += 56;
    }

    while (v12 != v10);
    do
    {
      std::allocator<GnssHal::ExtensionsFire::RecoveryPoint>::destroy[abi:ne200100](a1, v9);
      v9 += 56;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  v16 = v8 + 56;
  *a1 = v11;
  a1[1] = v16;
  v17 = a1[2];
  a1[2] = v22;
  v21 = v9;
  v22 = v17;
  v19 = v9;
  v20 = v9;
  std::__split_buffer<GnssHal::ExtensionsFire::RecoveryPoint>::~__split_buffer(&v19);
  return v16;
}

void sub_298911D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  std::__split_buffer<GnssHal::ExtensionsFire::RecoveryPoint>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<GnssHal::ExtensionsFire::RecoveryPoint>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(a1 + 32);
    *(a1 + 16) = i - 56;
    std::allocator<GnssHal::ExtensionsFire::RecoveryPoint>::destroy[abi:ne200100](v4, i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void gnss::FireGnssDevice::stop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[8] = *MEMORY[0x29EDCA608];
  FireDeviceLog::DeviceLogBase(5, "#fgd,stop");
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](&v5, a2);
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100](v6, a3);
  v6[7] = 0;
  operator new();
}

void sub_298911F54(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 40);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t gnss::FireGnssDevice::setPVTMReport(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18[3] = *MEMORY[0x29EDCA608];
  *(a1 + 152) = a2;
  *(a1 + 153) = a3;
  v10 = *(a8 + 24);
  if (v10)
  {
    if (v10 == a8)
    {
      v17 = v16;
      (*(*v10 + 24))(v10, v16);
    }

    else
    {
      v17 = (*(*v10 + 16))(v10);
    }

    v12 = a1 + 160;
    if (v16 != (a1 + 160))
    {
      v13 = v17;
      v14 = *(a1 + 184);
      if (v17 == v16)
      {
        if (v14 == v12)
        {
          (*(*v17 + 24))();
          (*(*v17 + 32))(v17);
          v17 = 0;
          (*(**(a1 + 184) + 24))(*(a1 + 184), v16);
          (*(**(a1 + 184) + 32))(*(a1 + 184));
          *(a1 + 184) = 0;
          v17 = v16;
          (*(v18[0] + 24))(v18, a1 + 160);
          (*(v18[0] + 32))(v18);
        }

        else
        {
          (*(*v17 + 24))();
          (*(*v17 + 32))(v17);
          v17 = *(a1 + 184);
        }

        *(a1 + 184) = v12;
      }

      else if (v14 == v12)
      {
        (*(*v14 + 24))(*(a1 + 184), v16);
        (*(**(a1 + 184) + 32))(*(a1 + 184));
        *(a1 + 184) = v17;
        v17 = v16;
      }

      else
      {
        v17 = *(a1 + 184);
        *(a1 + 184) = v13;
      }
    }

    std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](v16);
    v11 = 1;
  }

  else
  {
    v11 = 4;
  }

  return std::function<void ()(gnss::Result)>::operator()(a9, v11);
}

void sub_2989122A8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t gnss::FireGnssDevice::setNmeaHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a3 + 24))
  {
    std::function<void ()(std::vector<std::string>)>::operator=<std::function<void ()(std::vector<std::string>&&)> &,void>((a1 + 192), a3);
    *(a1 + 224) = a2;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return std::function<void ()(gnss::Result)>::operator()(a4, v7);
}

void *std::function<void ()(std::vector<std::string>)>::operator=<std::function<void ()(std::vector<std::string>&&)> &,void>(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(std::vector<std::string>)>::__value_func[abi:ne200100]<std::function<void ()(std::vector<std::string>&&)>,std::allocator<void ()(std::vector<std::string>&&)>>(v5, v4);
  std::__function::__value_func<void ()(std::vector<std::string>)>::swap[abi:ne200100](v5, a1);
  std::__function::__value_func<void ()(std::vector<std::string>)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void sub_2989123A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t gnss::FireGnssDevice::deleteGnssData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FireDeviceLog::DeviceLogBase(6, "#fgd deleteGnssData deleteFlags = %llu", a2);
  v5 = FireMessageHandler::deleteSto(*(a1 + 40));

  return std::function<void ()(gnss::Result)>::operator()(a3, v5);
}

uint64_t gnss::FireGnssDevice::clear(uint64_t a1, uint64_t a2)
{
  FireDeviceLog::DeviceLogBase(6, "#fgd clear");
  v4 = FireMessageHandler::clearNvStorage(*(a1 + 40));

  return std::function<void ()(gnss::Result)>::operator()(a2, v4);
}

uint64_t gnss::FireGnssDevice::setAssistanceMapVector(uint64_t a1, unint64_t a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, int a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15)
{
  v46 = *MEMORY[0x29EDCA608];
  bzero(v37, 0xDD8uLL);
  __src[0] = 0x300000017;
  __src[1] = a2 / 0xF4240;
  v37[8] = 1;
  v45 = -1082130432;
  if (a3)
  {
    v26 = a6;
    v27 = v26;
  }

  else
  {
    v27 = -999.0;
  }

  v28 = a7;
  v29 = a8;
  v30 = a9;
  if (a11)
  {
    v31 = 33;
  }

  else
  {
    v31 = 1;
  }

  if (a13)
  {
    v32 = 8;
  }

  else
  {
    v32 = 0;
  }

  v33 = v32 | v31;
  FireDeviceLog::DeviceLogBase(6, "#fgd feeding,mapVector,startLat,%.7lf,startLon,%.7lf,startAlt,%.1f,length,%.1f,azimuth,%.1f,width,%.1f,attributes,%u", a4, a5, v27, v28, v29, v30, v32 | v31);
  v38 = a4;
  v39 = a5;
  v40 = v27;
  v41 = v28;
  v42 = v29;
  v43 = v30;
  v44 = v33;
  v34 = *(a1 + 40);
  std::deque<BlueFin::GlExtSensData>::push_back((v34 + 1744), __src);
  FireMessageHandler::send(v34, 1073741831);
  return std::function<void ()(gnss::Result)>::operator()(a15, 1);
}

uint64_t gnss::FireGnssDevice::setAssistanceSpeedConstraint(uint64_t a1, unint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v24 = *MEMORY[0x29EDCA608];
  if (a2 == -1)
  {
    FireDeviceLog::DeviceLogBase(2, "#fgd Pedometer Assistance: pedometer constraint assistance command ignored due to invalid validity time");
  }

  else
  {
    v8 = (*&a4 <= -1 || ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&a4 - 1) >= 0xFFFFFFFFFFFFFLL;
    if (v8 || (v10 = ceil(a4), v10 > 255.0))
    {
      FireDeviceLog::DeviceLogBase(2, "#fgd Pedometer Assistance: pedometer constraint assistance command ignored due to invalid duration");
    }

    else if (*&a5 > -1 && ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&a5 - 1) < 0xFFFFFFFFFFFFFLL || (*&a5 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (a6 >= a5 && (*&a6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        FireDeviceLog::DeviceLogBase(6, "#fgd Injecting Pedometer Assistance duration = %lf,speedLowerBound=%lf,speedUpperBound=%lf", a4, a5, a6);
        bzero(v20, 0xDD8uLL);
        __src[0] = 0x300000066;
        __src[1] = a2 / 0xF4240;
        v20[8] = 1;
        v23 = v10;
        v21 = a5;
        v22 = a6;
        v18 = *(a1 + 40);
        std::deque<BlueFin::GlExtSensData>::push_back((v18 + 1744), __src);
        FireMessageHandler::send(v18, 1073741831);
        return std::function<void ()(gnss::Result)>::operator()(a3, 1);
      }

      FireDeviceLog::DeviceLogBase(2, "#fgd Pedometer Assistance: pedometer constraint assistance command ignored due to invalid maximum speed bound");
    }

    else
    {
      FireDeviceLog::DeviceLogBase(2, "#fgd Pedometer Assistance: pedometer constraint assistance command ignored due to invalid minimum speed bound");
    }
  }

  return std::function<void ()(gnss::Result)>::operator()(a3, 4);
}

uint64_t gnss::FireGnssDevice::setAssistanceAlongTrackVelocity(uint64_t a1, unint64_t a2, uint64_t a3, double a4, double a5)
{
  v23 = *MEMORY[0x29EDCA608];
  if (a2 == -1)
  {
    FireDeviceLog::DeviceLogBase(2, "#fgd Pedometer Assistance: pedometer speed assistance command ignored due to invalid validity time", a4, a5);
  }

  else if (*&a4 > -1 && ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&a4 - 1) < 0xFFFFFFFFFFFFFLL || (*&a4 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (*&a5 > -1 && ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&a5 - 1) < 0xFFFFFFFFFFFFFLL)
    {
      FireDeviceLog::DeviceLogBase(6, "#fgd Injecting Pedometer Speed Assistance = %lf,uncertainty=%lf", a4, a5);
      bzero(v20, 0xDD8uLL);
      __src[0] = 0x30000000DLL;
      __src[1] = a2 / 0xF4240;
      v20[8] = 1;
      v15 = a4;
      v16 = a5;
      v21 = v15;
      v22 = v16;
      v17 = *(a1 + 40);
      std::deque<BlueFin::GlExtSensData>::push_back((v17 + 1744), __src);
      FireMessageHandler::send(v17, 1073741831);
      return std::function<void ()(gnss::Result)>::operator()(a3, 1);
    }

    FireDeviceLog::DeviceLogBase(2, "#fgd Pedometer Assistance: pedometer speed assistance command ignored due to invalid along track sppeed uncertainty", a4, a5);
  }

  else
  {
    FireDeviceLog::DeviceLogBase(2, "#fgd Pedometer Assistance: pedometer speed assistance command ignored due to invalid along track speed", a4, a5);
  }

  return std::function<void ()(gnss::Result)>::operator()(a3, 4);
}

uint64_t gnss::FireGnssDevice::setThermalRiskState(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  FireDeviceLog::DeviceLogBase(6, "#fgd,setThermalRiskState,time,%llu,scale,%d,ignored", a2, a3);

  return std::function<void ()(gnss::Result)>::operator()(a4, 7);
}

uint64_t gnss::FireGnssDevice::setPowerReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[3] = *MEMORY[0x29EDCA608];
  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      v12 = v11;
      (*(*v5 + 24))(v5, v11);
    }

    else
    {
      v12 = (*(*v5 + 16))(v5);
    }

    v7 = a1 + 232;
    if (v11 != (a1 + 232))
    {
      v8 = v12;
      v9 = *(a1 + 256);
      if (v12 == v11)
      {
        if (v9 == v7)
        {
          (*(*v12 + 24))();
          (*(*v12 + 32))(v12);
          v12 = 0;
          (*(**(a1 + 256) + 24))(*(a1 + 256), v11);
          (*(**(a1 + 256) + 32))(*(a1 + 256));
          *(a1 + 256) = 0;
          v12 = v11;
          (*(v13[0] + 24))(v13, a1 + 232);
          (*(v13[0] + 32))(v13);
        }

        else
        {
          (*(*v12 + 24))();
          (*(*v12 + 32))(v12);
          v12 = *(a1 + 256);
        }

        *(a1 + 256) = v7;
      }

      else if (v9 == v7)
      {
        (*(*v9 + 24))(*(a1 + 256), v11);
        (*(**(a1 + 256) + 32))(*(a1 + 256));
        *(a1 + 256) = v12;
        v12 = v11;
      }

      else
      {
        v12 = *(a1 + 256);
        *(a1 + 256) = v8;
      }
    }

    std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](v11);
    v6 = 1;
  }

  else
  {
    v6 = 4;
  }

  return std::function<void ()(gnss::Result)>::operator()(a3, v6);
}

void sub_298912D80(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t gnss::FireGnssDevice::setConfigSimulatorMode(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v7 = a2;
  FireDeviceLog::DeviceLogBase(3, "#fgd,setConfigSimulatorMode,enable,%d,week,%d", a2, a3);
  v9 = *(a1 + 40);
  *(v9 + 1064) = v7;
  *(v9 + 1068) = a3;

  return std::function<void ()(gnss::Result)>::operator()(a5, 1);
}

uint64_t gnss::FireGnssDevice::setConfigCoexistence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FireDeviceLog::DeviceLogBase(6, "#fgd,%s,coex,0x%llu", "setConfigCoexistence", a2);

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

void gnss::FireGnssDevice::setNwAssistanceGpsEphemeris(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  FireDeviceLog::DeviceLogBase(6, "#fgd,%s", "setNwAssistanceGpsEphemeris");
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  FireTranslator::translateGpsNavigationModel(a2, __p);
  v6 = *(a1 + 40);
  v7 = *(v6 + 2120);
  *(v6 + 2120) = *__p;
  *__p = v7;
  v8 = *(v6 + 2136);
  *(v6 + 2136) = v10;
  v10 = v8;
  FireMessageHandler::send(v6, 1073741835);
  std::function<void ()(gnss::Result)>::operator()(a3, 1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_298912F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_298913B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void gnss::FireGnssDevice::~FireGnssDevice(gnss::FireGnssDevice *this)
{
  gnss::FireGnssDevice::~FireGnssDevice(this);

  JUMPOUT(0x29C292F70);
}

{
  *this = &unk_2A1F07598;
  std::__function::__value_func<void ()(BlueFin::GlSvIqData const*)>::~__value_func[abi:ne200100](this + 400);
  std::__tree<std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>,std::__map_value_compare<std::pair<gnss::SatelliteSystem,unsigned short>,std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>,std::less<std::pair<gnss::SatelliteSystem,unsigned short>>,true>,std::allocator<std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>>>::destroy(*(this + 47));
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](this + 296);
  std::__function::__value_func<void ()(gnss::DecodedExtendedEphemeris &&)>::~__value_func[abi:ne200100](this + 264);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](this + 232);
  std::__function::__value_func<void ()(std::vector<std::string>)>::~__value_func[abi:ne200100](this + 192);
  std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](this + 160);
  v5 = (this + 128);
  std::vector<gnss::SvInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 15);
  *(this + 15) = 0;
  if (v2)
  {
    MEMORY[0x29C292F70](v2, 0x1000C400A747E1ELL);
  }

  std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](this + 14, 0);
  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](this + 10, 0);
  std::__tree<std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>,std::__map_value_compare<std::pair<gnss::SatelliteSystem,unsigned short>,std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>,std::less<std::pair<gnss::SatelliteSystem,unsigned short>>,true>,std::allocator<std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>>>::destroy(*(this + 8));
  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](this + 8);
}

uint64_t gnss::FireGnssDevice::startEmergencyPreemptiveSession(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FireDeviceLog::DeviceLogBase(2, "startEmergencyPreemptiveSession,illegalCall");

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

uint64_t gnss::FireGnssDevice::stopEmergencyPreemptiveSession(uint64_t a1, uint64_t a2)
{
  FireDeviceLog::DeviceLogBase(2, "stopEmergencyPreemptiveSession,illegalCall");

  return std::function<void ()(gnss::Result)>::operator()(a2, 7);
}

uint64_t gnss::FireGnssDevice::setEmergencySessionSummaryReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FireDeviceLog::DeviceLogBase(2, "setEmergencySessionSummaryReport,illegalCall");

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

uint64_t gnss::FireGnssDevice::setEmergencyPositionReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FireDeviceLog::DeviceLogBase(2, "setEmergencyPositionReport,illegalCall");

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

uint64_t gnss::FireGnssDevice::setEmergencyMeasurementReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FireDeviceLog::DeviceLogBase(2, "setEmergencyMeasurementReport,illegalCall");

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

uint64_t gnss::FireGnssDevice::setEmergencyMeasurementWithEstimateReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FireDeviceLog::DeviceLogBase(2, "setEmergencyMeasurementWithEstimateReport,illegalCall");

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

uint64_t gnss::FireGnssDevice::startEmergencyPositionRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FireDeviceLog::DeviceLogBase(2, "startEmergencyPositionRequest,illegalCall", a3);

  return std::function<void ()(gnss::Result)>::operator()(a4, 7);
}

uint64_t gnss::FireGnssDevice::stopEmergencyPositionRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FireDeviceLog::DeviceLogBase(2, "stopEmergencyPositionRequest,illegalCall");

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

uint64_t gnss::FireGnssDevice::setNwAssistanceNeededReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FireDeviceLog::DeviceLogBase(2, "setNwAssistanceNeededReport,illegalCall");

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

uint64_t gnss::FireGnssDevice::setNwAssistanceGpsRefTime(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FireDeviceLog::DeviceLogBase(2, "setNwAssistanceGpsRefTime,illegalCall");

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

uint64_t gnss::FireGnssDevice::setNwAssistanceRefPosition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FireDeviceLog::DeviceLogBase(2, "setNwAssistanceRefPosition,illegalCall");

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

uint64_t gnss::FireGnssDevice::setNwAssistanceGpsAcquisition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FireDeviceLog::DeviceLogBase(2, "setNwAssistanceGpsAcquisition,illegalCall");

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

uint64_t gnss::FireGnssDevice::setFtAssistanceNeededReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FireDeviceLog::DeviceLogBase(2, "setFtAssistanceNeededReport,illegalCall");

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

uint64_t gnss::FireGnssDevice::injectFTAssistance(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FireDeviceLog::DeviceLogBase(2, "injectFTAssistance,illegalCall");

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

uint64_t gnss::FireGnssDevice::setSuplInit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  FireDeviceLog::DeviceLogBase(2, "setSuplInit,illegalCall", a3);

  return std::function<void ()(gnss::Result)>::operator()(a4, 7);
}

uint64_t gnss::FireGnssDevice::setSuplLocationIdNeededReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FireDeviceLog::DeviceLogBase(2, "setSuplLocationIdNeededReport,illegalCall");

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

uint64_t gnss::FireGnssDevice::setSuplLocationId(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FireDeviceLog::DeviceLogBase(2, "setSuplLocationId,illegalCall");

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

uint64_t gnss::FireGnssDevice::abortSuplSession(uint64_t a1, uint64_t a2)
{
  FireDeviceLog::DeviceLogBase(2, "abortSuplSession,illegalCall");

  return std::function<void ()(gnss::Result)>::operator()(a2, 7);
}

uint64_t gnss::FireGnssDevice::setSuplSessionStatusReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FireDeviceLog::DeviceLogBase(2, "setSuplSessionStatusReport,illegalCall");

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

uint64_t gnss::FireGnssDevice::setSuplWlanMeasurementNeededReport(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FireDeviceLog::DeviceLogBase(2, "setSuplWlanMeasurementNeededReport,illegalCall");

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

uint64_t gnss::FireGnssDevice::setSuplWlanMeasurements(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FireDeviceLog::DeviceLogBase(2, "setSuplWlanMeasurements,illegalCall");

  return std::function<void ()(gnss::Result)>::operator()(a3, 7);
}

void *std::function<void ()(BlueFin::GL_FIX_STATUS const*)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(BlueFin::GL_FIX_STATUS const*)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(BlueFin::GL_FIX_STATUS const*)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(BlueFin::GL_FIX_STATUS const*)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<void ()(BlueFin::GL_FIX_STATUS const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__value_func<void ()(BlueFin::GL_FIX_STATUS const*)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_2989147B0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::function<void ()(char const*,short)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(char const*,short)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(char const*,short)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(char const*,short)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<void ()(char const*,short)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__value_func<void ()(char const*,short)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_298914B20(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::function<void ()(BlueFin::GlGnssData const*)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(BlueFin::GlGnssData const*)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(BlueFin::GlGnssData const*)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(BlueFin::GlGnssData const*)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<void ()(BlueFin::GlGnssData const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__value_func<void ()(BlueFin::GlGnssData const*)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_298914E90(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::function<void ()(BlueFin::GlGnssSvInfoData const*,BlueFin::GlTimeConversionInfo const*)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(BlueFin::GlGnssSvInfoData const*,BlueFin::GlTimeConversionInfo const*)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(BlueFin::GlGnssSvInfoData const*,BlueFin::GlTimeConversionInfo const*)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(BlueFin::GlGnssSvInfoData const*,BlueFin::GlTimeConversionInfo const*)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<void ()(BlueFin::GlGnssSvInfoData const*,BlueFin::GlTimeConversionInfo const*)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__value_func<void ()(BlueFin::GlGnssSvInfoData const*,BlueFin::GlTimeConversionInfo const*)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_298915200(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::function<void ()(void)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(void)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::__function::__value_func<void ()(void)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_2989154D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::function<void ()(BlueFin::GL_SYNCIN_STATUS)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_298915848(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::function<void ()(BlueFin::GL_SYNCIN_STATUS,double)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS,double)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS,double)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS,double)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS,double)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS,double)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_298915BB8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::function<void ()(BlueFin::GL_SYNCIN_STATUS,BlueFin::GL_TIME const*,BlueFin::GL_TIME_VALIDITY,double,BOOL,signed char)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x29EDCA608];
  std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS,BlueFin::GL_TIME const*,BlueFin::GL_TIME_VALIDITY,double,BOOL,signed char)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS,BlueFin::GL_TIME const*,BlueFin::GL_TIME_VALIDITY,double,BOOL,signed char)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS,BlueFin::GL_TIME const*,BlueFin::GL_TIME_VALIDITY,double,BOOL,signed char)>::~__value_func[abi:ne200100](v4);
  return a1;
}

uint64_t std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS,BlueFin::GL_TIME const*,BlueFin::GL_TIME_VALIDITY,double,BOOL,signed char)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS,BlueFin::GL_TIME const*,BlueFin::GL_TIME_VALIDITY,double,BOOL,signed char)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_298915F28(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void gnss::SvInfo::~SvInfo(gnss::SvInfo *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    MEMORY[0x29C292F70](v3, 0x1000C40AC4F46D1);
  }

  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

void *toString(void *a1, int a2)
{
  if ((a2 - 1) > 6)
  {
    v2 = "UNK";
  }

  else
  {
    v2 = off_29EEAC0A0[(a2 - 1)];
  }

  return std::string::basic_string[abi:ne200100]<0>(a1, v2);
}

uint64_t std::__function::__value_func<void ()(std::unique_ptr<gnss::Fix>,std::unique_ptr<gnss::MeasurementReport>,std::vector<gnss::SvInfo> &&,std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &&,std::unique_ptr<gnss::TimeConversionInfo,std::default_delete<std::vector<gnss::ReceiverBandCorrections,std::allocator<std::vector<gnss::SvInfo> &&>> &>>,std::unique_ptr<gnss::KlobucharModelParameters>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::vector<std::string>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::unique_ptr<gnss::PwrMeasurement>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(BlueFin::GlSvIqData const*)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_0,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_0>,void ()(BlueFin::GL_FIX_STATUS const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F077B0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_0,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_0>,void ()(BlueFin::GL_FIX_STATUS const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
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

uint64_t std::__function::__value_func<void ()(BlueFin::GL_FIX_STATUS const*)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_1,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_1>,void ()(char const*,short)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F07840;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_1,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_1>,void ()(char const*,short)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(char const*,short)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_2,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_2>,void ()(BlueFin::GlGnssData const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F078D0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_2,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_2>,void ()(BlueFin::GlGnssData const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(BlueFin::GlGnssData const*)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_3,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_3>,void ()(BlueFin::GlGnssSvInfoData const*,BlueFin::GlTimeConversionInfo const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F07960;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_3,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_3>,void ()(BlueFin::GlGnssSvInfoData const*,BlueFin::GlTimeConversionInfo const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(BlueFin::GlGnssSvInfoData const*,BlueFin::GlTimeConversionInfo const*)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_4,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_4>,void ()(BlueFin::GlSvIqData const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F079F0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_4,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_4>,void ()(BlueFin::GlSvIqData const*)>::operator()(uint64_t a1, unsigned __int16 **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if ((*(v3 + 392) & 1) == 0)
  {
    *(v3 + 392) = 1;
    FireDeviceLog::DeviceLogBase(6, "fireiq,svid,constellation,signal,timePicoSec,rateMps,i,q");
  }

  if (v2[6])
  {
    v4 = 0;
    v5 = v2 + 33;
    do
    {
      FireDeviceLog::DeviceLogBase(6, "fireiq,%d,%d,%d,%llu,%.1f,%d,%d", *v2, *(v2 + 1), *(v2 + 2), *(v5 - 17), *(v5 - 9), *(v5 - 1), *v5);
      ++v4;
      v5 += 24;
    }

    while (v4 < v2[6]);
  }
}

uint64_t std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_4,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_4>,void ()(BlueFin::GlSvIqData const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_5,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_5>,void ()(BlueFin::GlEngine *,unsigned int,unsigned int,BlueFin::etReadLTOFileStat,BlueFin::GlPeLtoReadStat,BlueFin::etPredictionFileType,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F07A80;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_5,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_5>,void ()(BlueFin::GlEngine *,unsigned int,unsigned int,BlueFin::etReadLTOFileStat,BlueFin::GlPeLtoReadStat,BlueFin::etPredictionFileType,unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(BlueFin::GlEngine *,unsigned int,unsigned int,BlueFin::etReadLTOFileStat,BlueFin::GlPeLtoReadStat,BlueFin::etPredictionFileType,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_6,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_6>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F07B10;
  a2[1] = v2;
  return result;
}

void std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_6,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_6>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 320))
  {
    FireDeviceLog::DeviceLogBase(2, "#fgd,error,%s", "handleLtoFileErrorReport");
    v2 = *(v1 + 320);
    if (!v2)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v2 + 48))(v2);
    v3 = *(v1 + 320);
    *(v1 + 320) = 0;
    if (v3 == v1 + 296)
    {
      v4 = *(*v3 + 32);

      goto LABEL_7;
    }

    if (v3)
    {
      v4 = *(*v3 + 40);

LABEL_7:
      v4();
    }
  }

  else
  {
    FireDeviceLog::DeviceLogBase(3, "#fgd,#warning,%s,fLtoErrorReportCb,nullptr", "handleLtoFileErrorReport");
  }
}

uint64_t std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_6,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_6>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_7,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_7>,void ()(BlueFin::GL_SYNCIN_STATUS)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_8,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_8>,void ()(BlueFin::GL_SYNCIN_STATUS,double)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F07C20;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_8,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_8>,void ()(BlueFin::GL_SYNCIN_STATUS,double)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS,double)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_9,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_9>,void ()(BlueFin::GL_SYNCIN_STATUS,BlueFin::GL_TIME const*,BlueFin::GL_TIME_VALIDITY,double,BOOL,signed char)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F07CB0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_9,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_9>,void ()(BlueFin::GL_SYNCIN_STATUS,BlueFin::GL_TIME const*,BlueFin::GL_TIME_VALIDITY,double,BOOL,signed char)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(BlueFin::GL_SYNCIN_STATUS,BlueFin::GL_TIME const*,BlueFin::GL_TIME_VALIDITY,double,BOOL,signed char)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__function::__func<gnss::FireGnssDevice::stop(std::function<void ()(gnss::Result)>,std::function<void ()(gnss::Result)>)::$_0,std::allocator<gnss::FireGnssDevice::stop(std::function<void ()(gnss::Result)>,std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::~__func(void *a1)
{
  *a1 = &unk_2A1F07D40;
  v2 = a1 + 2;
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a1 + 6));
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v2);
  return a1;
}

void std::__function::__func<gnss::FireGnssDevice::stop(std::function<void ()(gnss::Result)>,std::function<void ()(gnss::Result)>)::$_0,std::allocator<gnss::FireGnssDevice::stop(std::function<void ()(gnss::Result)>,std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::~__func(void *a1)
{
  *a1 = &unk_2A1F07D40;
  v1 = a1 + 2;
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100]((a1 + 6));
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1);

  JUMPOUT(0x29C292F70);
}

void sub_2989173CC(_Unwind_Exception *a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](v1 + 16);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<gnss::FireGnssDevice::stop(std::function<void ()(gnss::Result)>,std::function<void ()(gnss::Result)>)::$_0,std::allocator<gnss::FireGnssDevice::stop(std::function<void ()(gnss::Result)>,std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::__clone(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_2A1F07D40;
  a2[1] = v4;
  std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
  return std::__function::__value_func<void ()(gnss::Result)>::__value_func[abi:ne200100]((a2 + 6), a1 + 48);
}

uint64_t std::__function::__func<gnss::FireGnssDevice::stop(std::function<void ()(gnss::Result)>,std::function<void ()(gnss::Result)>)::$_0,std::allocator<gnss::FireGnssDevice::stop(std::function<void ()(gnss::Result)>,std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::destroy(uint64_t a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 48);

  return std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 16);
}

void std::__function::__func<gnss::FireGnssDevice::stop(std::function<void ()(gnss::Result)>,std::function<void ()(gnss::Result)>)::$_0,std::allocator<gnss::FireGnssDevice::stop(std::function<void ()(gnss::Result)>,std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 48);
  std::__function::__value_func<void ()(gnss::Result)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<gnss::FireGnssDevice::stop(std::function<void ()(gnss::Result)>,std::function<void ()(gnss::Result)>)::$_0,std::allocator<gnss::FireGnssDevice::stop(std::function<void ()(gnss::Result)>,std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::operator()(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  FireDeviceLog::DeviceLogBase(6, "#fgd,ocstop,completed");
  *(v4 + 48) = 0;
  *(v4 + 328) = 0;
  std::function<void ()(gnss::Result)>::operator()(a1 + 16, v3);

  return std::function<void ()(gnss::Result)>::operator()(a1 + 48, v3);
}

uint64_t std::__function::__func<gnss::FireGnssDevice::stop(std::function<void ()(gnss::Result)>,std::function<void ()(gnss::Result)>)::$_0,std::allocator<gnss::FireGnssDevice::stop(std::function<void ()(gnss::Result)>,std::function<void ()(gnss::Result)>)::$_0>,void ()(gnss::Result)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::vector<std::string> &&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<void ()(std::vector<std::string>)>::__value_func[abi:ne200100]<std::function<void ()(std::vector<std::string>&&)>,std::allocator<void ()(std::vector<std::string>&&)>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  if (*(a2 + 24))
  {
    operator new();
  }

  return a1;
}

void *std::__function::__func<std::function<void ()(std::vector<std::string> &&)>,std::allocator<void ()(std::vector<std::string> &&)>,void ()(std::vector<std::string>)>::~__func(void *a1)
{
  *a1 = &unk_2A1F07DD0;
  std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<void ()(std::vector<std::string> &&)>,std::allocator<void ()(std::vector<std::string> &&)>,void ()(std::vector<std::string>)>::~__func(void *a1)
{
  *a1 = &unk_2A1F07DD0;
  std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x29C292F70);
}

void std::__function::__func<std::function<void ()(std::vector<std::string> &&)>,std::allocator<void ()(std::vector<std::string> &&)>,void ()(std::vector<std::string>)>::destroy_deallocate(char *a1)
{
  std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<std::function<void ()(std::vector<std::string> &&)>,std::allocator<void ()(std::vector<std::string> &&)>,void ()(std::vector<std::string>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<void ()(std::vector<std::string>)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_298917BE4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(std::vector<std::string> &&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 1);
    v1 -= 3;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void gnss::fire::charToHex(std::string *__return_ptr a1@<X8>, gnss::fire *this@<X0>, const unsigned __int8 *a3@<X1>, int __c@<W2>)
{
  memset(&v9, 0, sizeof(v9));
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      if (__c)
      {
        if (i)
        {
          std::string::push_back(&v9, __c);
        }
      }

      std::string::push_back(&v9, gnss::fire::charToHex(unsigned char const*,unsigned long,char)::charmap[i[this] >> 4]);
      std::string::push_back(&v9, gnss::fire::charToHex(unsigned char const*,unsigned long,char)::charmap[i[this] & 0xF]);
    }

    *a1 = v9;
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a1, "EmptyBuffer");
  }
}

void sub_298917DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void FireMessageHandler::FireMessageHandler(uint64_t a1, uint64_t a2)
{
  v83 = *MEMORY[0x29EDCA608];
  *(a1 + 32) = 0;
  v3 = (a1 + 8);
  *(a1 + 64) = 0;
  *(a1 + 96) = 0;
  *(a1 + 128) = 0;
  *(a1 + 160) = 0;
  *(a1 + 192) = 0;
  *(a1 + 224) = 0;
  *(a1 + 256) = 0;
  *(a1 + 288) = 0;
  *(a1 + 320) = 0;
  *(a1 + 352) = 0;
  *(a1 + 384) = 0;
  *(a1 + 416) = 0;
  *(a1 + 448) = 0;
  *(a1 + 480) = 0;
  *(a1 + 512) = 0;
  *(a1 + 544) = 0;
  *(a1 + 576) = 0;
  *(a1 + 608) = 0;
  *(a1 + 640) = 0;
  *(a1 + 672) = 0;
  *(a1 + 704) = 0;
  *(a1 + 736) = 0;
  *(a1 + 768) = 0;
  *(a1 + 800) = 0;
  *(a1 + 832) = 0;
  *(a1 + 864) = 0;
  *(a1 + 896) = 0;
  *a1 = &unk_2A1F07ED0;
  *(a1 + 928) = 0u;
  *(a1 + 968) = 0;
  *(a1 + 1000) = 0;
  *(a1 + 1008) = 3;
  *(a1 + 1060) = 0;
  *(a1 + 1064) = 0;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1041) = 0u;
  *(a1 + 1068) = 2049;
  *(a1 + 1072) = 0;
  *(a1 + 1080) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1176) = xmmword_298A2F6D0;
  *(a1 + 1192) = 0;
  *(a1 + 1194) = 255;
  *(a1 + 1196) = 0;
  *(a1 + 1200) = 0x100000000;
  *(a1 + 1208) = 65556;
  *(a1 + 1216) = 0u;
  *(a1 + 1232) = 0;
  *(a1 + 1240) = 196618;
  *(a1 + 1244) = 257;
  *(a1 + 1246) = 0;
  *(a1 + 1248) = 0u;
  *(a1 + 1272) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1276) = 60;
  *(a1 + 1280) = 0x100000010;
  *(a1 + 1288) = 1;
  *(a1 + 1296) = a2;
  *(a1 + 1304) = 0u;
  *(a1 + 1320) = 0u;
  *(a1 + 1336) = 1065353216;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 1;
  *(a1 + 1356) = 0;
  *(a1 + 1384) = 0;
  *(a1 + 1416) = 0;
  *(a1 + 1424) = 0;
  *(a1 + 1692) = 0;
  *(a1 + 2112) = 0;
  *(a1 + 1952) = 0;
  *(a1 + 1936) = 0u;
  *(a1 + 1920) = 0u;
  *(a1 + 1904) = 0u;
  *(a1 + 1888) = 0u;
  *(a1 + 1872) = 0u;
  *(a1 + 1856) = 0u;
  *(a1 + 1840) = 0u;
  *(a1 + 1824) = 0u;
  *(a1 + 1808) = 0u;
  *(a1 + 1792) = 0u;
  *(a1 + 1776) = 0u;
  *(a1 + 1760) = 0u;
  *(a1 + 1744) = 0u;
  *(a1 + 1728) = 0u;
  *(a1 + 1712) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 2114) = 16778216;
  *(a1 + 2152) = 0u;
  *(a1 + 2168) = 0u;
  *(a1 + 2120) = 0;
  *(a1 + 2128) = 0u;
  *(a1 + 2144) = 0;
  *(a1 + 2184) = 1065353216;
  *(a1 + 2192) = 0;
  *(a1 + 2200) = 0;
  *(a1 + 2208) = 0;
  *(a1 + 2240) = 0;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 2248) = _D0;
  *(a1 + 2256) = 0xBF80000000000000;
  FireDeviceLog::DeviceLogBase(5, "Version %s, build at %s", "FIRE@125.0.3 GLL@643487", "Oct 10 2025, 20:40:09");
  FireDeviceLog::DeviceLogBase(5, "Approximate memory size %u", 532136);
  v78[0] = &unk_2A1F07F28;
  v78[1] = a1;
  v79 = v78;
  FireDeviceLog::DeviceLogBase(6, "fcb,setEngineOnStartCb,%p", v78);
  v9 = v79;
  if (v79)
  {
    if (v79 == v78)
    {
      v82 = &v81;
      (*(*v79 + 24))(v79, &v81);
LABEL_6:
      v10 = a1 + 360;
      if (&v81 != (a1 + 360))
      {
        v11 = v82;
        v12 = *(a1 + 384);
        if (v82 == &v81)
        {
          if (v12 == v10)
          {
            (*(*v82 + 24))(v82, &v80);
            (*(*v82 + 32))(v82);
            v82 = 0;
            (*(**(a1 + 384) + 24))(*(a1 + 384), &v81);
            (*(**(a1 + 384) + 32))(*(a1 + 384));
            *(a1 + 384) = 0;
            v82 = &v81;
            (*(v80 + 24))(&v80, a1 + 360);
            (*(v80 + 32))(&v80);
          }

          else
          {
            (*(*v82 + 24))(v82, a1 + 360);
            (*(*v82 + 32))(v82);
            v82 = *(a1 + 384);
          }

          *(a1 + 384) = v10;
        }

        else if (v12 == v10)
        {
          (*(*v12 + 24))(*(a1 + 384), &v81);
          (*(**(a1 + 384) + 32))(*(a1 + 384));
          *(a1 + 384) = v82;
          v82 = &v81;
        }

        else
        {
          v82 = *(a1 + 384);
          *(a1 + 384) = v11;
        }
      }

      std::__function::__value_func<short ()(BlueFin::GlEngine *,BlueFin::GlSettings *)>::~__value_func[abi:ne200100](&v81);
      std::__function::__value_func<short ()(BlueFin::GlEngine *,BlueFin::GlSettings *)>::~__value_func[abi:ne200100](v78);
      v76[0] = &unk_2A1F07FB8;
      v76[1] = a1;
      v77 = v76;
      FireDeviceLog::DeviceLogBase(6, "fcb,setEngineOnStopCb,%p", v76);
      v13 = v77;
      if (v77)
      {
        if (v77 == v76)
        {
          v82 = &v81;
          (*(*v77 + 24))();
LABEL_20:
          v14 = a1 + 392;
          if (&v81 != (a1 + 392))
          {
            v15 = v82;
            v16 = *(a1 + 416);
            if (v82 == &v81)
            {
              if (v16 == v14)
              {
                (*(*v82 + 24))();
                (*(*v82 + 32))(v82);
                v82 = 0;
                (*(**(a1 + 416) + 24))(*(a1 + 416), &v81);
                (*(**(a1 + 416) + 32))(*(a1 + 416));
                *(a1 + 416) = 0;
                v82 = &v81;
                (*(v80 + 24))(&v80, a1 + 392);
                (*(v80 + 32))(&v80);
              }

              else
              {
                (*(*v82 + 24))();
                (*(*v82 + 32))(v82);
                v82 = *(a1 + 416);
              }

              *(a1 + 416) = v14;
            }

            else if (v16 == v14)
            {
              (*(*v16 + 24))(*(a1 + 416), &v81);
              (*(**(a1 + 416) + 32))(*(a1 + 416));
              *(a1 + 416) = v82;
              v82 = &v81;
            }

            else
            {
              v82 = *(a1 + 416);
              *(a1 + 416) = v15;
            }
          }

          std::__function::__value_func<void ()(BlueFin::GlEngine *,BlueFin::GL_STOP_CODE,char const*)>::~__value_func[abi:ne200100](&v81);
          std::__function::__value_func<void ()(BlueFin::GlEngine *,BlueFin::GL_STOP_CODE,char const*)>::~__value_func[abi:ne200100](v76);
          v74[0] = &unk_2A1F08048;
          v75 = v74;
          FireDeviceLog::DeviceLogBase(6, "fcb,setEngineOnAsicDataCb,%p", v74);
          v17 = v75;
          if (v75)
          {
            if (v75 == v74)
            {
              v82 = &v81;
              (*(*v75 + 24))();
LABEL_34:
              v18 = a1 + 488;
              if (&v81 != (a1 + 488))
              {
                v19 = v82;
                v20 = *(a1 + 512);
                if (v82 == &v81)
                {
                  if (v20 == v18)
                  {
                    (*(*v82 + 24))();
                    (*(*v82 + 32))(v82);
                    v82 = 0;
                    (*(**(a1 + 512) + 24))(*(a1 + 512), &v81);
                    (*(**(a1 + 512) + 32))(*(a1 + 512));
                    *(a1 + 512) = 0;
                    v82 = &v81;
                    (*(v80 + 24))(&v80, a1 + 488);
                    (*(v80 + 32))(&v80);
                  }

                  else
                  {
                    (*(*v82 + 24))();
                    (*(*v82 + 32))(v82);
                    v82 = *(a1 + 512);
                  }

                  *(a1 + 512) = v18;
                }

                else if (v20 == v18)
                {
                  (*(*v20 + 24))(*(a1 + 512), &v81);
                  (*(**(a1 + 512) + 32))(*(a1 + 512));
                  *(a1 + 512) = v82;
                  v82 = &v81;
                }

                else
                {
                  v82 = *(a1 + 512);
                  *(a1 + 512) = v19;
                }
              }

              std::__function::__value_func<void ()(unsigned char *,short)>::~__value_func[abi:ne200100](&v81);
              std::__function::__value_func<void ()(unsigned char *,short)>::~__value_func[abi:ne200100](v74);
              v72[0] = &unk_2A1F080D8;
              v73 = v72;
              FireDeviceLog::DeviceLogBase(6, "fcb,setEngineOnTimerRqCb,%p", v72);
              v21 = v73;
              if (v73)
              {
                if (v73 == v72)
                {
                  v82 = &v81;
                  (*(*v73 + 24))();
LABEL_48:
                  v22 = a1 + 424;
                  if (&v81 != (a1 + 424))
                  {
                    v23 = v82;
                    v24 = *(a1 + 448);
                    if (v82 == &v81)
                    {
                      if (v24 == v22)
                      {
                        (*(*v82 + 24))();
                        (*(*v82 + 32))(v82);
                        v82 = 0;
                        (*(**(a1 + 448) + 24))(*(a1 + 448), &v81);
                        (*(**(a1 + 448) + 32))(*(a1 + 448));
                        *(a1 + 448) = 0;
                        v82 = &v81;
                        (*(v80 + 24))(&v80, a1 + 424);
                        (*(v80 + 32))(&v80);
                      }

                      else
                      {
                        (*(*v82 + 24))();
                        (*(*v82 + 32))(v82);
                        v82 = *(a1 + 448);
                      }

                      *(a1 + 448) = v22;
                    }

                    else if (v24 == v22)
                    {
                      (*(*v24 + 24))(*(a1 + 448), &v81);
                      (*(**(a1 + 448) + 32))(*(a1 + 448));
                      *(a1 + 448) = v82;
                      v82 = &v81;
                    }

                    else
                    {
                      v82 = *(a1 + 448);
                      *(a1 + 448) = v23;
                    }
                  }

                  std::__function::__value_func<unsigned int ()(BlueFin::GlEngine *)>::~__value_func[abi:ne200100](&v81);
                  std::__function::__value_func<unsigned int ()(BlueFin::GlEngine *)>::~__value_func[abi:ne200100](v72);
                  v70[0] = &unk_2A1F08168;
                  v70[1] = a1;
                  v71 = v70;
                  FireDeviceLog::DeviceLogBase(6, "fcb,setEngineOnTimerSetCb,%p", v70);
                  v25 = v71;
                  if (v71)
                  {
                    if (v71 == v70)
                    {
                      v82 = &v81;
                      (*(*v71 + 24))();
LABEL_62:
                      v26 = a1 + 456;
                      if (&v81 != (a1 + 456))
                      {
                        v27 = v82;
                        v28 = *(a1 + 480);
                        if (v82 == &v81)
                        {
                          if (v28 == v26)
                          {
                            (*(*v82 + 24))();
                            (*(*v82 + 32))(v82);
                            v82 = 0;
                            (*(**(a1 + 480) + 24))(*(a1 + 480), &v81);
                            (*(**(a1 + 480) + 32))(*(a1 + 480));
                            *(a1 + 480) = 0;
                            v82 = &v81;
                            (*(v80 + 24))(&v80, a1 + 456);
                            (*(v80 + 32))(&v80);
                          }

                          else
                          {
                            (*(*v82 + 24))();
                            (*(*v82 + 32))(v82);
                            v82 = *(a1 + 480);
                          }

                          *(a1 + 480) = v26;
                        }

                        else if (v28 == v26)
                        {
                          (*(*v28 + 24))(*(a1 + 480), &v81);
                          (*(**(a1 + 480) + 32))(*(a1 + 480));
                          *(a1 + 480) = v82;
                          v82 = &v81;
                        }

                        else
                        {
                          v82 = *(a1 + 480);
                          *(a1 + 480) = v27;
                        }
                      }

                      std::__function::__value_func<void ()(BlueFin::GlEngine *,unsigned int,short,BOOL)>::~__value_func[abi:ne200100](&v81);
                      std::__function::__value_func<void ()(BlueFin::GlEngine *,unsigned int,short,BOOL)>::~__value_func[abi:ne200100](v70);
                      v68[0] = &unk_2A1F081F8;
                      v68[1] = a1;
                      v69 = v68;
                      FireDeviceLog::DeviceLogBase(6, "fcb,setEngCbOnLTOFileReadCb,%p", v68);
                      v29 = v69;
                      if (v69)
                      {
                        if (v69 == v68)
                        {
                          v82 = &v81;
                          (*(*v69 + 24))();
LABEL_76:
                          v30 = a1 + 616;
                          if (&v81 != (a1 + 616))
                          {
                            v31 = v82;
                            v32 = *(a1 + 640);
                            if (v82 == &v81)
                            {
                              if (v32 == v30)
                              {
                                (*(*v82 + 24))();
                                (*(*v82 + 32))(v82);
                                v82 = 0;
                                (*(**(a1 + 640) + 24))(*(a1 + 640), &v81);
                                (*(**(a1 + 640) + 32))(*(a1 + 640));
                                *(a1 + 640) = 0;
                                v82 = &v81;
                                (*(v80 + 24))(&v80, a1 + 616);
                                (*(v80 + 32))(&v80);
                              }

                              else
                              {
                                (*(*v82 + 24))();
                                (*(*v82 + 32))(v82);
                                v82 = *(a1 + 640);
                              }

                              *(a1 + 640) = v30;
                            }

                            else if (v32 == v30)
                            {
                              (*(*v32 + 24))(*(a1 + 640), &v81);
                              (*(**(a1 + 640) + 32))(*(a1 + 640));
                              *(a1 + 640) = v82;
                              v82 = &v81;
                            }

                            else
                            {
                              v82 = *(a1 + 640);
                              *(a1 + 640) = v31;
                            }
                          }

                          std::__function::__value_func<void ()(BlueFin::GlEngine *,BlueFin::GlLTOFileReader *,BOOL)>::~__value_func[abi:ne200100](&v81);
                          std::__function::__value_func<void ()(BlueFin::GlEngine *,BlueFin::GlLTOFileReader *,BOOL)>::~__value_func[abi:ne200100](v68);
                          v66[0] = &unk_2A1F08288;
                          v66[1] = a1;
                          v67 = v66;
                          FireDeviceLog::DeviceLogBase(6, "fcb,setEngCbOnSerialNumberCb,%p", v66);
                          v33 = v67;
                          if (v67)
                          {
                            if (v67 == v66)
                            {
                              v82 = &v81;
                              (*(*v67 + 24))();
LABEL_90:
                              v34 = a1 + 648;
                              if (&v81 != (a1 + 648))
                              {
                                v35 = v82;
                                v36 = *(a1 + 672);
                                if (v82 == &v81)
                                {
                                  if (v36 == v34)
                                  {
                                    (*(*v82 + 24))();
                                    (*(*v82 + 32))(v82);
                                    v82 = 0;
                                    (*(**(a1 + 672) + 24))(*(a1 + 672), &v81);
                                    (*(**(a1 + 672) + 32))(*(a1 + 672));
                                    *(a1 + 672) = 0;
                                    v82 = &v81;
                                    (*(v80 + 24))(&v80, a1 + 648);
                                    (*(v80 + 32))(&v80);
                                  }

                                  else
                                  {
                                    (*(*v82 + 24))();
                                    (*(*v82 + 32))(v82);
                                    v82 = *(a1 + 672);
                                  }

                                  *(a1 + 672) = v34;
                                }

                                else if (v36 == v34)
                                {
                                  (*(*v36 + 24))(*(a1 + 672), &v81);
                                  (*(**(a1 + 672) + 32))(*(a1 + 672));
                                  *(a1 + 672) = v82;
                                  v82 = &v81;
                                }

                                else
                                {
                                  v82 = *(a1 + 672);
                                  *(a1 + 672) = v35;
                                }
                              }

                              std::__function::__value_func<void ()(BlueFin::GlEngine *,unsigned int,unsigned int *,unsigned char)>::~__value_func[abi:ne200100](&v81);
                              std::__function::__value_func<void ()(BlueFin::GlEngine *,unsigned int,unsigned int *,unsigned char)>::~__value_func[abi:ne200100](v66);
                              v64[0] = &unk_2A1F08318;
                              v64[1] = a1;
                              v65 = v64;
                              FireDeviceLog::DeviceLogBase(6, "fcb,setReqOnStartCb,%p", v64);
                              v37 = v65;
                              if (v65)
                              {
                                if (v65 == v64)
                                {
                                  v82 = &v81;
                                  (*(*v65 + 24))();
LABEL_104:
                                  if (&v81 != v3)
                                  {
                                    v38 = v82;
                                    v39 = *(a1 + 32);
                                    if (v82 == &v81)
                                    {
                                      if (v39 == v3)
                                      {
                                        (*(*v82 + 24))();
                                        (*(*v82 + 32))(v82);
                                        v82 = 0;
                                        (*(**(a1 + 32) + 24))(*(a1 + 32), &v81);
                                        (*(**(a1 + 32) + 32))(*(a1 + 32));
                                        *(a1 + 32) = 0;
                                        v82 = &v81;
                                        (*(v80 + 24))(&v80, v3);
                                        (*(v80 + 32))(&v80);
                                      }

                                      else
                                      {
                                        (*(*v82 + 24))();
                                        (*(*v82 + 32))(v82);
                                        v82 = *(a1 + 32);
                                      }

                                      *(a1 + 32) = v3;
                                    }

                                    else if (v39 == v3)
                                    {
                                      (*(*v39 + 24))(*(a1 + 32), &v81);
                                      (*(**(a1 + 32) + 32))(*(a1 + 32));
                                      *(a1 + 32) = v82;
                                      v82 = &v81;
                                    }

                                    else
                                    {
                                      v82 = *(a1 + 32);
                                      *(a1 + 32) = v38;
                                    }
                                  }

                                  std::__function::__value_func<void ()(BlueFin::GlRequest *,BlueFin::GL_REQ_START_CODE)>::~__value_func[abi:ne200100](&v81);
                                  std::__function::__value_func<void ()(BlueFin::GlRequest *,BlueFin::GL_REQ_START_CODE)>::~__value_func[abi:ne200100](v64);
                                  v62[0] = &unk_2A1F083A8;
                                  v62[1] = a1;
                                  v63 = v62;
                                  FireDeviceLog::DeviceLogBase(6, "fcb,setReqOnStopCb,%p", v62);
                                  v40 = v63;
                                  if (v63)
                                  {
                                    if (v63 == v62)
                                    {
                                      v82 = &v81;
                                      (*(*v63 + 24))();
LABEL_118:
                                      v41 = a1 + 40;
                                      if (&v81 != (a1 + 40))
                                      {
                                        v42 = v82;
                                        v43 = *(a1 + 64);
                                        if (v82 == &v81)
                                        {
                                          if (v43 == v41)
                                          {
                                            (*(*v82 + 24))();
                                            (*(*v82 + 32))(v82);
                                            v82 = 0;
                                            (*(**(a1 + 64) + 24))(*(a1 + 64), &v81);
                                            (*(**(a1 + 64) + 32))(*(a1 + 64));
                                            *(a1 + 64) = 0;
                                            v82 = &v81;
                                            (*(v80 + 24))(&v80, a1 + 40);
                                            (*(v80 + 32))(&v80);
                                          }

                                          else
                                          {
                                            (*(*v82 + 24))();
                                            (*(*v82 + 32))(v82);
                                            v82 = *(a1 + 64);
                                          }

                                          *(a1 + 64) = v41;
                                        }

                                        else if (v43 == v41)
                                        {
                                          (*(*v43 + 24))(*(a1 + 64), &v81);
                                          (*(**(a1 + 64) + 32))(*(a1 + 64));
                                          *(a1 + 64) = v82;
                                          v82 = &v81;
                                        }

                                        else
                                        {
                                          v82 = *(a1 + 64);
                                          *(a1 + 64) = v42;
                                        }
                                      }

                                      std::__function::__value_func<void ()(BlueFin::GlRequest *)>::~__value_func[abi:ne200100](&v81);
                                      std::__function::__value_func<void ()(BlueFin::GlRequest *)>::~__value_func[abi:ne200100](v62);
                                      v60[0] = &unk_2A1F08438;
                                      v60[1] = a1;
                                      v61 = v60;
                                      FireDeviceLog::DeviceLogBase(6, "fcb,setEngCbOnNvStgWriteCb,%p", v60);
                                      v44 = v61;
                                      if (v61)
                                      {
                                        if (v61 == v60)
                                        {
                                          v82 = &v81;
                                          (*(*v61 + 24))();
LABEL_132:
                                          v45 = a1 + 584;
                                          if (&v81 != (a1 + 584))
                                          {
                                            v46 = v82;
                                            v47 = *(a1 + 608);
                                            if (v82 == &v81)
                                            {
                                              if (v47 == v45)
                                              {
                                                (*(*v82 + 24))();
                                                (*(*v82 + 32))(v82);
                                                v82 = 0;
                                                (*(**(a1 + 608) + 24))(*(a1 + 608), &v81);
                                                (*(**(a1 + 608) + 32))(*(a1 + 608));
                                                *(a1 + 608) = 0;
                                                v82 = &v81;
                                                (*(v80 + 24))(&v80, a1 + 584);
                                                (*(v80 + 32))(&v80);
                                              }

                                              else
                                              {
                                                (*(*v82 + 24))();
                                                (*(*v82 + 32))(v82);
                                                v82 = *(a1 + 608);
                                              }

                                              *(a1 + 608) = v45;
                                            }

                                            else if (v47 == v45)
                                            {
                                              (*(*v47 + 24))(*(a1 + 608), &v81);
                                              (*(**(a1 + 608) + 32))(*(a1 + 608));
                                              *(a1 + 608) = v82;
                                              v82 = &v81;
                                            }

                                            else
                                            {
                                              v82 = *(a1 + 608);
                                              *(a1 + 608) = v46;
                                            }
                                          }

                                          std::__function::__value_func<void ()(BlueFin::GL_NV_STG_CTRL,char const*,short)>::~__value_func[abi:ne200100](&v81);
                                          std::__function::__value_func<void ()(BlueFin::GL_NV_STG_CTRL,char const*,short)>::~__value_func[abi:ne200100](v60);
                                          v58[0] = &unk_2A1F084C8;
                                          v58[1] = a1;
                                          v59 = v58;
                                          FireDeviceLog::DeviceLogBase(6, "fcb,setEngCbOnNvStgReadCb,%p", v58);
                                          v48 = v59;
                                          if (v59)
                                          {
                                            if (v59 == v58)
                                            {
                                              v82 = &v81;
                                              (*(*v59 + 24))();
LABEL_146:
                                              v49 = a1 + 520;
                                              if (&v81 != (a1 + 520))
                                              {
                                                v50 = v82;
                                                v51 = *(a1 + 544);
                                                if (v82 == &v81)
                                                {
                                                  if (v51 == v49)
                                                  {
                                                    (*(*v82 + 24))();
                                                    (*(*v82 + 32))(v82);
                                                    v82 = 0;
                                                    (*(**(a1 + 544) + 24))(*(a1 + 544), &v81);
                                                    (*(**(a1 + 544) + 32))(*(a1 + 544));
                                                    *(a1 + 544) = 0;
                                                    v82 = &v81;
                                                    (*(v80 + 24))(&v80, a1 + 520);
                                                    (*(v80 + 32))(&v80);
                                                  }

                                                  else
                                                  {
                                                    (*(*v82 + 24))();
                                                    (*(*v82 + 32))(v82);
                                                    v82 = *(a1 + 544);
                                                  }

                                                  *(a1 + 544) = v49;
                                                }

                                                else if (v51 == v49)
                                                {
                                                  (*(*v51 + 24))(*(a1 + 544), &v81);
                                                  (*(**(a1 + 544) + 32))(*(a1 + 544));
                                                  *(a1 + 544) = v82;
                                                  v82 = &v81;
                                                }

                                                else
                                                {
                                                  v82 = *(a1 + 544);
                                                  *(a1 + 544) = v50;
                                                }
                                              }

                                              std::__function::__value_func<void ()(BlueFin::GlNvStorageReader *)>::~__value_func[abi:ne200100](&v81);
                                              std::__function::__value_func<void ()(BlueFin::GlNvStorageReader *)>::~__value_func[abi:ne200100](v58);
                                              v56[0] = &unk_2A1F08558;
                                              v56[1] = a1;
                                              v57 = v56;
                                              FireDeviceLog::DeviceLogBase(6, "fcb,setEngCbOnOscReadyForStorageCb,%p", v56);
                                              v52 = v57;
                                              if (v57)
                                              {
                                                if (v57 == v56)
                                                {
                                                  v82 = &v81;
                                                  (*(*v57 + 24))();
LABEL_160:
                                                  v53 = a1 + 552;
                                                  if (&v81 != (a1 + 552))
                                                  {
                                                    v54 = v82;
                                                    v55 = *(a1 + 576);
                                                    if (v82 == &v81)
                                                    {
                                                      if (v55 == v53)
                                                      {
                                                        (*(*v82 + 24))();
                                                        (*(*v82 + 32))(v82);
                                                        v82 = 0;
                                                        (*(**(a1 + 576) + 24))(*(a1 + 576), &v81);
                                                        (*(**(a1 + 576) + 32))(*(a1 + 576));
                                                        *(a1 + 576) = 0;
                                                        v82 = &v81;
                                                        (*(v80 + 24))(&v80, a1 + 552);
                                                        (*(v80 + 32))(&v80);
                                                      }

                                                      else
                                                      {
                                                        (*(*v82 + 24))();
                                                        (*(*v82 + 32))(v82);
                                                        v82 = *(a1 + 576);
                                                      }

                                                      *(a1 + 576) = v53;
                                                    }

                                                    else if (v55 == v53)
                                                    {
                                                      (*(*v55 + 24))(*(a1 + 576), &v81);
                                                      (*(**(a1 + 576) + 32))(*(a1 + 576));
                                                      *(a1 + 576) = v82;
                                                      v82 = &v81;
                                                    }

                                                    else
                                                    {
                                                      v82 = *(a1 + 576);
                                                      *(a1 + 576) = v54;
                                                    }
                                                  }

                                                  std::__function::__value_func<void ()(int,int,BlueFin::GL_TIME *)>::~__value_func[abi:ne200100](&v81);
                                                  std::__function::__value_func<void ()(int,int,BlueFin::GL_TIME *)>::~__value_func[abi:ne200100](v56);
                                                  operator new();
                                                }

                                                v52 = (*(*v57 + 16))();
                                              }

                                              v82 = v52;
                                              goto LABEL_160;
                                            }

                                            v48 = (*(*v59 + 16))();
                                          }

                                          v82 = v48;
                                          goto LABEL_146;
                                        }

                                        v44 = (*(*v61 + 16))();
                                      }

                                      v82 = v44;
                                      goto LABEL_132;
                                    }

                                    v40 = (*(*v63 + 16))();
                                  }

                                  v82 = v40;
                                  goto LABEL_118;
                                }

                                v37 = (*(*v65 + 16))();
                              }

                              v82 = v37;
                              goto LABEL_104;
                            }

                            v33 = (*(*v67 + 16))();
                          }

                          v82 = v33;
                          goto LABEL_90;
                        }

                        v29 = (*(*v69 + 16))();
                      }

                      v82 = v29;
                      goto LABEL_76;
                    }

                    v25 = (*(*v71 + 16))();
                  }

                  v82 = v25;
                  goto LABEL_62;
                }

                v21 = (*(*v73 + 16))();
              }

              v82 = v21;
              goto LABEL_48;
            }

            v17 = (*(*v75 + 16))();
          }

          v82 = v17;
          goto LABEL_34;
        }

        v13 = (*(*v77 + 16))();
      }

      v82 = v13;
      goto LABEL_20;
    }

    v9 = (*(*v79 + 16))(v79);
  }

  v82 = v9;
  goto LABEL_6;
}