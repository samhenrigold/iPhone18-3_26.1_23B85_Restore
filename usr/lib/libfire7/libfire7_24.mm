uint64_t BlueFin::GlDbgSlogDecoder::DecodeRecord(BlueFin::GlDbgSlogDecoder *this, char a2)
{
  if (*(this + 8) != 1)
  {
    return 1;
  }

  while ((a2 & 1) != 0 || *(this + 6) < *(this + 7))
  {
    v4 = *(this + 4);
    v5 = *(this + 5);
    if (v4 == v5 || v4 == v5 - 1 && *v4 == 13)
    {
      break;
    }

    v6 = 1;
    BlueFin::GlDbgSlogDecoder::ProcessByte(this, 1, 1);
    if ((*(this + 8) & 1) == 0)
    {
      return v6;
    }
  }

  return 0;
}

void BlueFin::GlMeSrdAcqMgr::~GlMeSrdAcqMgr(BlueFin::GlMeSrdAcqMgr *this)
{
  if (*(this + 104) == 1)
  {
    DeviceFaultNotify("glmesrd_acq_mgr.cpp", 42, "~GlMeSrdAcqMgr", "!m_bAllocated");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", 42, "!m_bAllocated");
  }
}

{
  BlueFin::GlMeSrdAcqMgr::~GlMeSrdAcqMgr(this);

  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlMeSrdAcqMgr::AllocateEswResources(BlueFin::GlMeSrdAcqMgr *this)
{
  if (*(this + 104) == 1)
  {
    DeviceFaultNotify("glmesrd_acq_mgr.cpp", 48, "AllocateEswResources", "!m_bAllocated");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", 48, "!m_bAllocated");
  }

  *(this + 104) = 1;
  v2 = *(this + 1);
  *(v2 + 3119) = 0;
  BlueFin::GlMeSrdAcqMgrSm::UpdateClockModelState(v2);
  v3 = *(**(*(this + 1) + 48) + 168);

  return v3();
}

uint64_t BlueFin::GlMeSrdAcqMgr::FreeEswResources(uint64_t this)
{
  if (*(this + 104) == 1)
  {
    v1 = this;
    *(this + 104) = 0;
    v2 = *(this + 8);
    *(v2 + 24910) = 0;
    bzero(*(v2 + 23168), ((4 * *(v2 + 23176) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(*(v2 + 23216), ((4 * *(v2 + 23224) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(*(v2 + 23264), ((4 * *(v2 + 23272) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(*(v2 + 23408), ((4 * *(v2 + 23416) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(*(v2 + 23456), ((4 * *(v2 + 23464) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(*(v2 + 23504), ((4 * *(v2 + 23512) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(*(v2 + 23360), ((4 * *(v2 + 23368) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(*(v2 + 23312), ((4 * *(v2 + 23320) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(*(v2 + 23552), ((4 * *(v2 + 23560) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    BlueFin::GlMeSrdAcqMgrSm::UpdateSvidToSearchForMgrs(v2);
    v3 = 0;
    v4 = *(v1 + 8);
    do
    {
      (*(**(v4 + 23080 + v3) + 56))(*(v4 + 23080 + v3), *(v4 + 23160));
      v3 += 8;
    }

    while (v3 != 80);
    BlueFin::GlMeSrdAcqMgrSm::KillAndReleaseSatInPostSearch(*(v1 + 8), *(v1 + 8) + 13920);
    v5 = *(v1 + 8);
    BlueFin::GlSatCarrIdSet::GetSatIdSetAnyCarrier(v9, (v5 + 18352));
    BlueFin::GlMeSrdAcqMgrSm::KillAndReleaseSatInTrack(v5, v9);
    v6 = *(v1 + 8);
    LODWORD(v5) = *(v6 + 23160);
    v7 = (*(**(v6 + 48) + 80))(*(v6 + 48));
    BlueFin::GlMeSrdSatMgr::ProcessPending(v6 + 3520, v5, v7, 1);
    v8 = *(v1 + 8);
    LODWORD(v5) = BlueFin::GlSetBase::Cnt((v8 + 3576));
    LODWORD(v5) = BlueFin::GlMeSrdSatMgr::NumSatInKillProcess((v8 + 3520)) + v5;
    if (v5 != (*(**(*(v1 + 8) + 64) + 384))())
    {
      DeviceFaultNotify("glmesrd_acq_mgr.cpp", 92, "FreeEswResources", "(m_rAcqMgrSm.m_otSatMgr.NumSatsAvailable() + m_rAcqMgrSm.m_otSatMgr.NumSatInKillProcess()) == m_rAcqMgrSm.m_rAsicConfigIfc.GetMaxNumSats()");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", 92, "(m_rAcqMgrSm.m_otSatMgr.NumSatsAvailable() + m_rAcqMgrSm.m_otSatMgr.NumSatInKillProcess()) == m_rAcqMgrSm.m_rAsicConfigIfc.GetMaxNumSats()");
    }

    return (*(**(*(v1 + 8) + 48) + 176))(*(*(v1 + 8) + 48), *(v1 + 8) + 224);
  }

  return this;
}

unsigned __int8 *BlueFin::GlMeSrdAcqMgr::GlonassSyncLost(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 - 66 <= 0xFFFFFFF1)
  {
    DeviceFaultNotify("glmesrd_acq_mgr.cpp", 447, "GlonassSyncLost", "IS_GLONASS_SVID(*rotSvId)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", 447, "IS_GLONASS_SVID(*rotSvId)");
  }

  BlueFin::GlSetBase::GlSetBase(&__src, v14, 0x10u, (*(a1 + 8) + 18352));
  v7 = v13;
  memcpy(v11, __src, 4 * v13);
  v9 = 0;
  v8 = 0;
  v10 = v11[0];
  result = BlueFin::GlSetIterator::operator++(&v7);
  if (v8 != v7)
  {
    while (1)
    {
      BlueFin::GlSatCarrId::GlSatCarrId(&v6 + 1, v9);
      v5 = BYTE1(v6);
      BlueFin::GlMeSrdSatMgr::GetSvid(&v6, (*(a1 + 8) + 3520), BYTE1(v6));
      if (*a2 == v6 && BlueFin::GlMeSrdSatTrackMgr::IsPostFrame((*(a1 + 8) + 14352), (&v6 + 1)))
      {
        break;
      }

      result = BlueFin::GlSetIterator::operator++(&v7);
      if (v8 == v7)
      {
        return result;
      }
    }

    return BlueFin::GlMeSrdSatStatusListener::RemoveFromTrackEngine((*(a1 + 8) + 200), v5);
  }

  return result;
}

BOOL BlueFin::GlMeSrdSatStatusListener::RemoveFromTrackEngine(BlueFin::GlMeSrdSatStatusListener *this, unsigned int a2)
{
  result = BlueFin::GlMeSrdSatMgr::IsSatInKillProcess((*(this + 1) + 3520), a2);
  if (!result)
  {
    v5 = *(this + 1);
    v6 = 1 << (a2 & 0x1F);
    if ((v6 & *(v5[455] + 4 * (a2 >> 5))) == 0 && (v6 & *(v5[451] + 4 * (a2 >> 5))) == 0)
    {
      DeviceFaultNotify("glmesrd_acq_mgr.cpp", 788, "RemoveFromTrackEngine", "GlMeSrdSatStatusListener::RemoveFromTrackEngine SatId %u not allocated\n");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", 788, "GlMeSrdSatStatusListener::RemoveFromTrackEngine SatId %u not allocated\n");
    }

    *(v5[3115] + 4 * (a2 >> 5)) |= 1 << (a2 & 0x1F);
  }

  return result;
}

void BlueFin::GlMeSrdSatStatusListener::SnapToTap(BlueFin::GlMeSrdSatStatusListener *this, const BlueFin::GlMeDSPMeas *a2, const BlueFin::GlMeSrdDspMeasAux *a3)
{
  BlueFin::GlMeDSPMeas::GlMeDSPMeas(v17, a2);
  TrkRslts = BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3);
  v18 = *(TrkRslts + 80) + v18;
  BlueFin::GlMeSrdAidingMgr::UpdateAidingFromEarlyTap((*(this + 1) + 240), v17, *(*(this + 1) + 48));
  v7 = (*(**(*(this + 1) + 48) + 80))(*(*(this + 1) + 48));
  v12 = 0;
  v13[0] = 0;
  *(v13 + 7) = 0;
  v14 = v7;
  v15 = 0;
  v16 = 0;
  (*(*v7 + 16))(v7, 0);
  if (!(*(**(*(this + 1) + 64) + 352))())
  {
    DeviceFaultNotify("glmesrd_acq_mgr.cpp", 943, "SnapToTap", "false");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", 943, "false");
  }

  v8 = *(a2 + 112);
  EswSignalIndex = BlueFin::GlMeSrdAsicUnitConverter::GetEswSignalIndex(*(a2 + 26));
  v10 = (*(*v14 + 48))(v14);
  v11 = (*(*v10 + 64))(v10);
  (*(*v11 + 96))(v11, &v12, v8, EswSignalIndex, 59);
  BlueFin::GlMeSrdTransaction::Complete(&v12);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v12);
}

void sub_298950E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMeSrdSatStatusListener::SnapToGridSrch(BlueFin::GlMeSrdSatStatusListener *this, const BlueFin::GlMeDSPMeas *a2, const BlueFin::GlMeSrdDspMeasAux *a3)
{
  BlueFin::GlMeDSPMeas::GlMeDSPMeas(v17, a2);
  TrkRslts = BlueFin::GlMeSrdDspMeasAux::GetTrkRslts(a3);
  v18 = *(TrkRslts + 104) + v18;
  BlueFin::GlMeSrdAidingMgr::UpdateAidingFromEarlyTap((*(this + 1) + 240), v17, *(*(this + 1) + 48));
  v7 = (*(**(*(this + 1) + 48) + 80))(*(*(this + 1) + 48));
  v12 = 0;
  v13[0] = 0;
  *(v13 + 7) = 0;
  v14 = v7;
  v15 = 0;
  v16 = 0;
  (*(*v7 + 16))(v7, 0);
  if (!(*(**(*(this + 1) + 64) + 352))())
  {
    DeviceFaultNotify("glmesrd_acq_mgr.cpp", 988, "SnapToGridSrch", "false");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", 988, "false");
  }

  v8 = *(a2 + 112);
  EswSignalIndex = BlueFin::GlMeSrdAsicUnitConverter::GetEswSignalIndex(*(a2 + 26));
  v10 = (*(*v14 + 48))(v14);
  v11 = (*(*v10 + 64))(v10);
  (*(*v11 + 96))(v11, &v12, v8, EswSignalIndex, 59);
  BlueFin::GlMeSrdTransaction::Complete(&v12);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v12);
}

void sub_298951014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

BOOL BlueFin::GlMeSrdSatStatusListener::SearchFalseAlarm(BlueFin::GlMeSrdSatStatusListener *this, unsigned int a2)
{
  result = BlueFin::GlMeSrdSatMgr::IsSatInKillProcess((*(this + 1) + 3520), a2);
  if (!result)
  {
    v5 = *(this + 1);
    v6 = 1 << (a2 & 0x1F);
    if ((v6 & *(v5[455] + 4 * (a2 >> 5))) == 0 && (v6 & *(v5[451] + 4 * (a2 >> 5))) == 0)
    {
      DeviceFaultNotify("glmesrd_acq_mgr.cpp", 809, "SearchFalseAlarm", "GlMeSrdSatStatusListener::SearchFalseAlarm Satid %u not allocated\n");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", 809, "GlMeSrdSatStatusListener::SearchFalseAlarm Satid %u not allocated\n");
    }

    *(v5[3115] + 4 * (a2 >> 5)) |= 1 << (a2 & 0x1F);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatStatusListener::SnapToAidingInDutyCycle(BlueFin::GlMeSrdSatStatusListener *this, const BlueFin::GlSatCarrId *a2)
{
  v4 = *a2;
  result = BlueFin::GlMeSrdSatMgr::IsSatInKillProcess((*(this + 1) + 3520), *a2);
  if ((result & 1) == 0)
  {
    v6 = *(this + 1);
    v7 = 1 << (v4 & 0x1F);
    if ((v7 & *(v6[455] + 4 * (v4 >> 5))) == 0 && (v7 & *(v6[451] + 4 * (v4 >> 5))) == 0 || !BlueFin::GlMeSrdSatTrackMgr::HasSat((v6 + 1794), v4))
    {
      DeviceFaultNotify("glmesrd_acq_mgr.cpp", 878, "SnapToAidingInDutyCycle", "GlMeSrdSatStatusListener::SnapToAidingInDutyCycle WARNING: Satid %u not in trackmgr\n");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", 878, "GlMeSrdSatStatusListener::SnapToAidingInDutyCycle WARNING: Satid %u not in trackmgr\n");
    }

    v8 = *(this + 1) + 14352;

    return BlueFin::GlMeSrdSatTrackMgr::SnapToAidingInDutyCycle(v8, a2);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatStatusListener::MarkSuspectBitAlignment(BlueFin::GlMeSrdSatStatusListener *this, const BlueFin::GlSatCarrId *a2)
{
  v4 = *a2;
  result = BlueFin::GlMeSrdSatMgr::IsSatInKillProcess((*(this + 1) + 3520), *a2);
  if ((result & 1) == 0)
  {
    v6 = *(this + 1);
    v7 = 1 << (v4 & 0x1F);
    if ((v7 & *(v6[455] + 4 * (v4 >> 5))) == 0 && (v7 & *(v6[451] + 4 * (v4 >> 5))) == 0 || !BlueFin::GlMeSrdSatTrackMgr::HasSat((v6 + 1794), v4))
    {
      DeviceFaultNotify("glmesrd_acq_mgr.cpp", 900, "MarkSuspectBitAlignment", "GlMeSrdSatStatusListener::RequestBitAlignmentCrossCheck WARNING: Satid %u not in trackmgr\n");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", 900, "GlMeSrdSatStatusListener::RequestBitAlignmentCrossCheck WARNING: Satid %u not in trackmgr\n");
    }

    v8 = *(this + 1) + 14352;

    return BlueFin::GlMeSrdSatTrackMgr::RequestBitAlignmentCrossCheck(v8, a2);
  }

  return result;
}

double BlueFin::GlMeSrdSatStatusListener::StartManualDirectToTrack(BlueFin::GlMeSrdSatStatusListener *this, const BlueFin::GlMeDSPMeas *a2)
{
  v3 = *(a2 + 100);
  BlueFin::GlMeSrdAidingMgr::UpdateAidingFromDspMeas((*(this + 1) + 240), a2, *(*(this + 1) + 48));
  v30 = &v32;
  v31 = 8;
  v32 = 0u;
  v33 = 0u;
  v4 = v3;
  *(&v32 + ((v3 >> 3) & 0x1C)) |= 1 << v3;
  BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(*(this + 1) + 13296, 25, 46, 0x3Bu, 0x3Cu, 0x47u, 0xFAu, 84, 0x3Bu, 1);
  v5 = *(this + 1);
  BlueFin::GlSetBase::operator=(v5 + 13552, &v30);
  v6 = v33;
  *(v5 + 13564) = v32;
  *(v5 + 13580) = v6;
  BlueFin::GlMeSrdSearchMgrBase::RemoveInvalidSvId((v5 + 13296), (v5 + 13552));
  BlueFin::GlMeSrdSearchMgr::ProcessPending((*(this + 1) + 13296));
  v7 = *(this + 1);
  v8 = *(v7 + 23160);
  v9 = (*(**(v7 + 48) + 80))(*(v7 + 48));
  BlueFin::GlMeSrdSatMgr::ProcessPending(v7 + 3520, v8, v9, 0);
  BlueFin::GlSetBase::GlSetBase(&__src, v29, 4u, (*(this + 1) + 13424));
  v10 = 0;
  v11 = __src + 4 * v28 - 4;
  v12 = v11;
  do
  {
    if (*v12)
    {
      v13 = *v12 - (((*v12 >> 1) & 0x5B6DB6DB) + ((*v12 >> 2) & 0x9249249));
      v10 = ((v13 + (v13 >> 3)) & 0xC71C71C7) + v10 - 63 * (((v13 + (v13 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v12;
  }

  while (v12 >= __src);
  if ((v10 & 0xFFFE) != 0)
  {
    DeviceFaultNotify("glmesrd_acq_mgr.cpp", 1015, "StartManualDirectToTrack", "otAllocatedSats.Cnt() <= 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", 1015, "otAllocatedSats.Cnt() <= 1");
  }

  v14 = 0;
  do
  {
    if (*v11)
    {
      v15 = *v11 - (((*v11 >> 1) & 0x5B6DB6DB) + ((*v11 >> 2) & 0x9249249));
      v14 = ((v15 + (v15 >> 3)) & 0xC71C71C7) + v14 - 63 * (((v15 + (v15 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v11;
  }

  while (v11 >= __src);
  if (v14 == 1)
  {
    LODWORD(v23) = v28;
    memcpy(&v24, __src, 4 * v28);
    HIDWORD(v23) = v24;
    BlueFin::GlSetIterator::operator++(&v23);
    v16 = WORD1(v23);
    v17 = BYTE2(v23);
    BlueFin::GlMeSrdSearchMgrBase::ReleaseSatUnaltered((*(this + 1) + 13296), BYTE2(v23));
    v18 = *(this + 1);
    v19 = *(v18 + 13368);
    *(*(v18 + 13920) + ((v16 >> 3) & 0x1C)) |= 1 << v16;
    *(v18 + 4 * v16 + 13952) = v19;
    BlueFin::GlMeSrdAcqMgrSm::MoveSatFromSSE2STE(v18, v17);
  }

  else
  {
    GlCustomLog(12, "GlMeSrdSatStatusListener::StartManualDirectToTrack SvId %d Failed - SAT not available\n", v4);
  }

  v23 = &v25;
  LOBYTE(v24) = 8;
  v25 = 0u;
  v26 = 0u;
  v20 = *(this + 1);
  BlueFin::GlSetBase::operator=(v20 + 13552, &v23);
  v21 = v26;
  *(v20 + 13564) = v25;
  *(v20 + 13580) = v21;
  BlueFin::GlMeSrdSearchMgrBase::RemoveInvalidSvId((v20 + 13296), (v20 + 13552));
  return BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(*(this + 1) + 13296, 250, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 250, 0xFAu, 1);
}

BOOL BlueFin::GlSvIdArray::Has(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  BlueFin::GlArray::EnsureValidHandle(a1 + 200, v3);
  return *(*(a1 + 216) + v3 - *(a1 + 236)) != 255;
}

BOOL BlueFin::GlSvIdArray::Missing(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  BlueFin::GlArray::EnsureValidHandle(a1 + 200, v3);
  return *(*(a1 + 216) + v3 - *(a1 + 236)) == 255;
}

double BlueFin::GlSvIdSet::operator&(uint64_t a1, const void **a2, int **a3)
{
  v5 = BlueFin::GlSetBase::GlSetBase(a1, (a1 + 12), 8u, a2);
  v7 = &v9;
  v8 = 8;
  v9 = 0u;
  *v10 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v5, &v7, a3);
  BlueFin::GlSetBase::operator=(a1, &v7);
  *(a1 + 12) = v9;
  result = v10[0];
  *(a1 + 28) = *v10;
  return result;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::autonomous_2000(BlueFin::GlMeSrdAcqMgrSm *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v3 = *a2;
  if (v3 > 0x40)
  {
    if (v3 != 65 && v3 != 67)
    {
      return BlueFin::GlMeSrdAcqMgrSm::autonomous;
    }

    if ((*(this + 25249) & 1) == 0)
    {
      result = 0;
      *(this + 24996) = BlueFin::GlMeMeasSelfAidFilter::m_IsSelfAidOn;
      return result;
    }

    if (!*(this + 6238))
    {
      BlueFin::GlMeSrdAcqMgrSm::UpdateSmFirstFixStates(this);
    }
  }

  else if (v3 == 2)
  {
    v5.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(this + 12048, 22, 45, 0x36u, 0x44u, 0x4Cu, 0xFAu, 84, 0xFAu, 1);
    if ((*(**(this + 8) + 1200))(v5))
    {
      v6 = 88;
    }

    else
    {
      v6 = 84;
    }

    v7.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(this + 10128, 5, 27, 0xFAu, 0xFAu, 0xFAu, 0x2Fu, v6, 0x55u, 1);
    if ((*(**(this + 8) + 1200))(v7))
    {
      v8 = 250;
    }

    else
    {
      v8 = 84;
    }

    v9.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(this + 10608, 4, 26, 0x33u, 0x3Du, 0x48u, 0xFAu, v8, 0xFAu, 1);
    if ((*(**(this + 8) + 1200))(v9))
    {
      v10 = 89;
    }

    else
    {
      v10 = 84;
    }

    v11.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(this + 12360, 2, 34, 0x37u, 0x3Du, 0x48u, 0xFAu, v10, 0x56u, 1);
    if ((*(**(this + 8) + 1200))(v11))
    {
      v12 = 89;
    }

    else
    {
      v12 = 84;
    }

    BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(this + 12672, 2, 34, 0x37u, 0x3Du, 0x48u, 0xFAu, v12, 0x56u, 1);
  }

  else if (v3 != 3)
  {
    return BlueFin::GlMeSrdAcqMgrSm::autonomous;
  }

  return 0;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::far_start_positionless_300(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v3 = *a2;
  if (v3 == 3)
  {
    result = 0;
    *(a1 + 25051) = 0;
  }

  else
  {
    result = BlueFin::GlMeSrdAcqMgrSm::autonomous;
    if (v3 == 2)
    {
      *(a1 + 25051) = 1;
      *(a1 + 10920) = 2;
      *(a1 + 10440) = 6;
      BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 250, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 250, 0xFAu, 1);
      v5.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 250, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 250, 0xFAu, 1);
      if ((*(**(a1 + 64) + 1200))(v5))
      {
        v6 = 250;
      }

      else
      {
        v6 = 84;
      }

      v7.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10608, 4, 30, 0x32u, 0x3Fu, 0x49u, 0xFAu, v6, 0xFAu, 1);
      if ((*(**(a1 + 64) + 1200))(v7))
      {
        v8 = 90;
      }

      else
      {
        v8 = 84;
      }

      BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10128, 13, 38, 0x32u, 0x3Fu, 0x49u, 0xFAu, v8, 0x60u, 1);
      return 0;
    }
  }

  return result;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::far_start_positionless_100(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v3 = *a2;
  if (v3 == 3)
  {
    result = 0;
    *(a1 + 25051) = 0;
  }

  else
  {
    result = BlueFin::GlMeSrdAcqMgrSm::autonomous;
    if (v3 == 2)
    {
      *(a1 + 25051) = 1;
      *(a1 + 10920) = 2;
      *(a1 + 10440) = 6;
      BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 250, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 250, 0xFAu, 1);
      v5.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 250, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 250, 0xFAu, 1);
      if ((*(**(a1 + 64) + 1200))(v5))
      {
        v6 = 250;
      }

      else
      {
        v6 = 84;
      }

      v7.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10608, 4, 30, 0x32u, 0x3Fu, 0x49u, 0xFAu, v6, 0xFAu, 1);
      if ((*(**(a1 + 64) + 1200))(v7))
      {
        v8 = 90;
      }

      else
      {
        v8 = 84;
      }

      BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10128, 17, 42, 0x32u, 0x3Fu, 0x49u, 0xFAu, v8, 0x5Fu, 1);
      return 0;
    }
  }

  return result;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::far_start_assisted_300_bit(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm *this, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v3 = *a2;
  if (v3 == 3)
  {
    result = 0;
    *(a1 + 25051) = 0;
  }

  else
  {
    result = BlueFin::GlMeSrdAcqMgrSm::assisted;
    if (v3 == 2)
    {
      *(a1 + 25051) = 1;
      *(a1 + 10920) = 0;
      *(a1 + 10440) = 5;
      if ((*(**(a1 + 64) + 1200))(*(a1 + 64)))
      {
        v5 = 90;
      }

      else
      {
        v5 = 84;
      }

      v6.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 18, 43, 0x38u, 0x42u, 0x4Bu, 0xFAu, v5, 0x61u, 1);
      if ((*(**(a1 + 64) + 1200))(v6))
      {
        v7 = 90;
      }

      else
      {
        v7 = 84;
      }

      v8.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 19, 44, 0x35u, 0x43u, 0x4Bu, 0xFAu, v7, 0x61u, 1);
      if ((*(**(a1 + 64) + 1200))(v8))
      {
        v9 = 90;
      }

      else
      {
        v9 = 84;
      }

      BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10128, 13, 38, 0x32u, 0x3Fu, 0x49u, 0xFAu, v9, 0x60u, 1);
      return 0;
    }
  }

  return result;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::far_start_assisted_300(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm *this, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v3 = *a2;
  if (v3 == 3)
  {
    result = 0;
    *(a1 + 25051) = 0;
  }

  else
  {
    result = BlueFin::GlMeSrdAcqMgrSm::assisted;
    if (v3 == 2)
    {
      *(a1 + 25051) = 1;
      *(a1 + 10920) = 0;
      *(a1 + 10440) = 5;
      if ((*(**(a1 + 64) + 1200))(*(a1 + 64)))
      {
        v5 = 90;
      }

      else
      {
        v5 = 84;
      }

      v6.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 18, 43, 0x38u, 0x42u, 0x4Bu, 0xFAu, v5, 0x61u, 1);
      if ((*(**(a1 + 64) + 1200))(v6))
      {
        v7 = 90;
      }

      else
      {
        v7 = 84;
      }

      v8.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 18, 43, 0x38u, 0x42u, 0x4Bu, 0xFAu, v7, 0x61u, 1);
      if ((*(**(a1 + 64) + 1200))(v8))
      {
        v9 = 90;
      }

      else
      {
        v9 = 84;
      }

      BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10128, 13, 38, 0x32u, 0x3Eu, 0x49u, 0xFAu, v9, 0x60u, 1);
      return 0;
    }
  }

  return result;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::far_start_assisted_100_bit(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm *this, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v3 = *a2;
  if (v3 == 3)
  {
    result = 0;
    *(a1 + 25051) = 0;
  }

  else
  {
    result = BlueFin::GlMeSrdAcqMgrSm::assisted;
    if (v3 == 2)
    {
      *(a1 + 25051) = 1;
      *(a1 + 10920) = 0;
      *(a1 + 10440) = 5;
      if ((*(**(a1 + 64) + 1200))(*(a1 + 64)))
      {
        v5 = 90;
      }

      else
      {
        v5 = 84;
      }

      v6.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 18, 43, 0x38u, 0x42u, 0x4Cu, 0xFAu, v5, 0x57u, 1);
      if ((*(**(a1 + 64) + 1200))(v6))
      {
        v7 = 90;
      }

      else
      {
        v7 = 84;
      }

      v8.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 19, 44, 0x35u, 0x43u, 0x4Cu, 0xFAu, v7, 0x57u, 1);
      if ((*(**(a1 + 64) + 1200))(v8))
      {
        v9 = 90;
      }

      else
      {
        v9 = 84;
      }

      BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10128, 17, 42, 0x38u, 0x3Fu, 0x49u, 0xFAu, v9, 0x5Fu, 1);
      return 0;
    }
  }

  return result;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::far_start_assisted_100(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm *this, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v3 = *a2;
  if (v3 == 3)
  {
    result = 0;
    *(a1 + 25051) = 0;
  }

  else
  {
    result = BlueFin::GlMeSrdAcqMgrSm::assisted;
    if (v3 == 2)
    {
      *(a1 + 25051) = 1;
      *(a1 + 10920) = 0;
      *(a1 + 10440) = 5;
      if ((*(**(a1 + 64) + 1200))(*(a1 + 64)))
      {
        v5 = 90;
      }

      else
      {
        v5 = 84;
      }

      v6.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 18, 43, 0x38u, 0x42u, 0x4Bu, 0xFAu, v5, 0x57u, 1);
      if ((*(**(a1 + 64) + 1200))(v6))
      {
        v7 = 90;
      }

      else
      {
        v7 = 84;
      }

      v8.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 18, 43, 0x38u, 0x42u, 0x4Bu, 0xFAu, v7, 0x57u, 1);
      if ((*(**(a1 + 64) + 1200))(v8))
      {
        v9 = 90;
      }

      else
      {
        v9 = 84;
      }

      BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10128, 17, 42, 0x32u, 0x3Fu, 0x49u, 0xFAu, v9, 0x5Fu, 1);
      return 0;
    }
  }

  return result;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::assisted_300_fta(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm *this, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v2 = *a2;
  if (v2 == 3)
  {
    return 0;
  }

  if (v2 != 2)
  {
    return BlueFin::GlMeSrdAcqMgrSm::assisted;
  }

  if ((*(**(a1 + 64) + 1200))(*(a1 + 64)))
  {
    v4 = 90;
  }

  else
  {
    v4 = 84;
  }

  v5.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10128, 5, 31, 0x32u, 0x3Eu, 0x49u, 0x2Fu, v4, 0x60u, 1);
  if ((*(**(a1 + 64) + 1200))(v5))
  {
    v6 = 250;
  }

  else
  {
    v6 = 84;
  }

  v7 = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10608, 4, 30, 0x32u, 0x3Eu, 0x49u, 0xFAu, v6, 0xFAu, 1);
  if (*(a1 + 25053) == 1 && (*(**(a1 + 64) + 552))(*(a1 + 64), v7))
  {
    GlCustomLog(15, "GlMeSrdAcqMgrSm::assisted_300_fta: Run ExtCohGalSearch, bGalSecCodeValid:1");
    v8 = 82;
  }

  else
  {
    v8 = 75;
  }

  if ((*(**(a1 + 64) + 1200))(*(a1 + 64)))
  {
    v10 = 90;
  }

  else
  {
    v10 = 84;
  }

  v11.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 12, 37, 0x35u, 0x43u, v8, 0xFAu, v10, 0x61u, 1);
  if ((*(**(a1 + 64) + 1200))(v11))
  {
    v12 = 90;
  }

  else
  {
    v12 = 84;
  }

  BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 8, 33, 0x39u, 0x40u, 0x4Bu, 0xFAu, v12, 0x61u, 1);
  return 0;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::assisted_100_fta(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm *this, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v2 = *a2;
  if (v2 == 3)
  {
    return 0;
  }

  if (v2 != 2)
  {
    return BlueFin::GlMeSrdAcqMgrSm::assisted;
  }

  if ((*(**(a1 + 64) + 1200))(*(a1 + 64)))
  {
    v4 = 90;
  }

  else
  {
    v4 = 84;
  }

  v5.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10128, 5, 31, 0x32u, 0x3Fu, 0x49u, 0x2Fu, v4, 0x5Fu, 1);
  if ((*(**(a1 + 64) + 1200))(v5))
  {
    v6 = 250;
  }

  else
  {
    v6 = 84;
  }

  v7 = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10608, 4, 30, 0x32u, 0x3Fu, 0x49u, 0xFAu, v6, 0xFAu, 1);
  if (*(a1 + 25053) == 1 && ((*(**(a1 + 64) + 552))(*(a1 + 64), v7) & 1) != 0)
  {
    v8 = 83;
  }

  else
  {
    v8 = 77;
  }

  if ((*(**(a1 + 64) + 1200))(*(a1 + 64)))
  {
    v10 = 90;
  }

  else
  {
    v10 = 84;
  }

  v11.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 15, 40, 0x35u, 0x43u, v8, 0xFAu, v10, 0x57u, 1);
  if ((*(**(a1 + 64) + 1200))(v11))
  {
    v12 = 90;
  }

  else
  {
    v12 = 84;
  }

  BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 8, 33, 0x38u, 0x42u, 0x4Cu, 0xFAu, v12, 0x57u, 1);
  return 0;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::assisted_100_rtc(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm *this, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v2 = a1 + 24576;
  v3 = *a2;
  if (v3 == 3)
  {
    result = 0;
    *(v2 + 675) = 0;
  }

  else
  {
    result = BlueFin::GlMeSrdAcqMgrSm::assisted;
    if (v3 == 2)
    {
      *(v2 + 675) = 1;
      v6 = 90;
      if (((*(**(a1 + 64) + 1200))(*(a1 + 64)) & 1) == 0)
      {
        if ((*(**(a1 + 80) + 40))(*(a1 + 80)))
        {
          v6 = 90;
        }

        else
        {
          v6 = 84;
        }
      }

      if ((*(**(a1 + 64) + 1200))(*(a1 + 64)))
      {
        v7 = 90;
      }

      else
      {
        v7 = 84;
      }

      v8.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10128, 5, 31, 0x32u, 0x3Fu, 0xFAu, 0x2Fu, v7, 0x5Fu, 1);
      if ((*(**(a1 + 64) + 1200))(v8))
      {
        v9 = 250;
      }

      else
      {
        v9 = 84;
      }

      BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10608, 4, 30, 0x32u, 0x3Fu, 0x49u, 0xFAu, v9, 0xFAu, 1);
      v10 = 76;
      v11 = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 8, 33, 0x38u, 0x42u, 0x4Cu, 0xFAu, v6, 0x57u, 1);
      if (*(v2 + 477) == 1)
      {
        if ((*(**(a1 + 64) + 264))(*(a1 + 64), v11))
        {
          v10 = 91;
        }

        else
        {
          v10 = 76;
        }
      }

      BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 13608, 81, 40, 0x35u, 0x43u, v10, 0xFAu, v6, 0x57u, 1);
      return 0;
    }
  }

  return result;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::assisted_300(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm *this, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v2 = *a2;
  if (v2 == 3)
  {
    return 0;
  }

  if (v2 != 2)
  {
    return BlueFin::GlMeSrdAcqMgrSm::assisted;
  }

  if ((*(**(a1 + 64) + 1200))(*(a1 + 64)))
  {
    v4 = 90;
  }

  else
  {
    v4 = 84;
  }

  v5.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10128, 5, 27, 0x32u, 0x3Eu, 0xFAu, 0x2Fu, v4, 0x60u, 1);
  if ((*(**(a1 + 64) + 1200))(v5))
  {
    v6 = 250;
  }

  else
  {
    v6 = 84;
  }

  BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10608, 4, 30, 0x32u, 0x3Eu, 0xFAu, 0xFAu, v6, 0xFAu, 1);
  if (*(a1 + 25053))
  {
    v7 = 82;
  }

  else
  {
    v7 = 75;
  }

  BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 8, 33, 0x39u, 0x40u, v7, 0xFAu, v4, 0x61u, 1);
  BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 8, 33, 0x39u, 0x40u, 0x4Bu, 0xFAu, v4, 0x61u, 1);
  return 0;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::assisted_100(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm *this, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v2 = *a2;
  if (v2 == 3)
  {
    return 0;
  }

  if (v2 != 2)
  {
    return BlueFin::GlMeSrdAcqMgrSm::assisted;
  }

  v4 = 90;
  if (((*(**(a1 + 64) + 1200))(*(a1 + 64)) & 1) == 0)
  {
    if ((*(**(a1 + 80) + 40))(*(a1 + 80)))
    {
      v4 = 90;
    }

    else
    {
      v4 = 84;
    }
  }

  if ((*(**(a1 + 64) + 1200))(*(a1 + 64)))
  {
    v5 = 90;
  }

  else
  {
    v5 = 84;
  }

  v6.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10128, 5, 31, 0x32u, 0x3Fu, 0xFAu, 0x2Fu, v5, 0x5Fu, 1);
  if ((*(**(a1 + 64) + 1200))(v6))
  {
    v7 = 250;
  }

  else
  {
    v7 = 84;
  }

  v8 = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10608, 4, 30, 0x32u, 0x3Fu, 0x49u, 0xFAu, v7, 0xFAu, 1);
  v9 = 76;
  if (*(a1 + 25053) == 1)
  {
    if ((*(**(a1 + 64) + 264))(*(a1 + 64), v8))
    {
      v9 = 91;
    }

    else
    {
      v9 = 76;
    }
  }

  BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 14, 33, 0x38u, 0x42u, v9, 0xFAu, v4, 0x57u, 1);
  BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 14, 33, 0x38u, 0x42u, 0x4Cu, 0xFAu, v4, 0x57u, 1);
  return 0;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::assisted_70_bit_zoom(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm *this, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v2 = *a2;
  if (v2 == 3)
  {
    return 0;
  }

  if (v2 != 2)
  {
    return BlueFin::GlMeSrdAcqMgrSm::assisted;
  }

  if ((*(**(a1 + 64) + 1200))(*(a1 + 64)))
  {
    v4 = 90;
  }

  else
  {
    v4 = 84;
  }

  v5.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10128, 5, 31, 0x32u, 0x3Fu, 0x49u, 0x2Fu, v4, 0x5Fu, 1);
  if ((*(**(a1 + 64) + 1200))(v5))
  {
    v6 = 250;
  }

  else
  {
    v6 = 84;
  }

  v7 = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10608, 4, 30, 0x32u, 0x3Fu, 0x49u, 0xFAu, v6, 0xFAu, 1);
  if (*(a1 + 25053) == 1 && ((*(**(a1 + 64) + 552))(*(a1 + 64), v7) & 1) != 0)
  {
    v8 = 82;
  }

  else
  {
    v8 = 76;
  }

  if ((*(**(a1 + 64) + 1200))(*(a1 + 64)))
  {
    v10 = 90;
  }

  else
  {
    v10 = 84;
  }

  v11.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 20, 39, 0x35u, 0x43u, v8, 0xFAu, v10, 0x57u, 1);
  if ((*(**(a1 + 64) + 1200))(v11))
  {
    v12 = 90;
  }

  else
  {
    v12 = 84;
  }

  BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 8, 33, 0x38u, 0x42u, 0x4Cu, 0xFAu, v12, 0x57u, 1);
  return 0;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::assisted_70_bit_zoom_WithGal(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm *this, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v2 = *a2;
  if (v2 == 3)
  {
    return 0;
  }

  if (v2 != 2)
  {
    return BlueFin::GlMeSrdAcqMgrSm::assisted;
  }

  if ((*(**(a1 + 64) + 1200))(*(a1 + 64)))
  {
    v4 = 90;
  }

  else
  {
    v4 = 84;
  }

  v5.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10128, 5, 31, 0x32u, 0x3Fu, 0x49u, 0x2Fu, v4, 0x5Fu, 1);
  if ((*(**(a1 + 64) + 1200))(v5))
  {
    v6 = 250;
  }

  else
  {
    v6 = 84;
  }

  v7 = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10608, 4, 30, 0x32u, 0x3Fu, 0x49u, 0xFAu, v6, 0xFAu, 1);
  if (*(a1 + 25053) == 1 && ((*(**(a1 + 64) + 552))(*(a1 + 64), v7) & 1) != 0)
  {
    v8 = 83;
  }

  else
  {
    v8 = 77;
  }

  if ((*(**(a1 + 64) + 1200))(*(a1 + 64)))
  {
    v10 = 90;
  }

  else
  {
    v10 = 84;
  }

  v11.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 20, 39, 0x35u, 0x43u, v8, 0xFAu, v10, 0x57u, 1);
  if ((*(**(a1 + 64) + 1200))(v11))
  {
    v12 = 90;
  }

  else
  {
    v12 = 84;
  }

  BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 8, 33, 0x38u, 0x42u, 0x4Cu, 0xFAu, v12, 0x57u, 1);
  return 0;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::assisted_100_zoom_Gal(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm *this, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v2 = *a2;
  if (v2 == 3)
  {
    return 0;
  }

  if (v2 != 2)
  {
    return BlueFin::GlMeSrdAcqMgrSm::assisted;
  }

  if ((*(**(a1 + 64) + 1200))(*(a1 + 64)))
  {
    v4 = 90;
  }

  else
  {
    v4 = 84;
  }

  v5.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10128, 5, 31, 0x32u, 0x3Fu, 0x49u, 0x2Fu, v4, 0x5Fu, 1);
  if ((*(**(a1 + 64) + 1200))(v5))
  {
    v6 = 250;
  }

  else
  {
    v6 = 84;
  }

  v7.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10608, 4, 30, 0x32u, 0x3Fu, 0x49u, 0xFAu, v6, 0xFAu, 1);
  if ((*(**(a1 + 64) + 552))(v7) && *(a1 + 25053) == 1)
  {
    GlCustomLog(15, "GlMeSrdAcqMgrSm::assisted_100_zoom_Gal: Run ExtCohGalSearch, bGalSecCodeValid: 1\n");
    v8 = 83;
  }

  else
  {
    v8 = 77;
  }

  if ((*(**(a1 + 64) + 1200))(*(a1 + 64)))
  {
    v10 = 90;
  }

  else
  {
    v10 = 84;
  }

  v11.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 14, 33, 0x38u, 0x42u, v8, 0xFAu, v10, 0x57u, 1);
  if ((*(**(a1 + 64) + 1200))(v11))
  {
    v12 = 90;
  }

  else
  {
    v12 = 84;
  }

  BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 14, 33, 0x38u, 0x42u, 0x4Du, 0xFAu, v12, 0x57u, 1);
  return 0;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::autonomous_300(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v3 = *a2;
  if (v3 > 0x40)
  {
    if (v3 == 65 || v3 == 67)
    {
      result = 0;
      *(a1 + 24996) = BlueFin::GlMeMeasSelfAidFilter::m_IsSelfAidOn;
      return result;
    }

    return BlueFin::GlMeSrdAcqMgrSm::autonomous;
  }

  if (v3 == 2)
  {
    v5.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12048, 22, 45, 0x36u, 0x44u, 0x4Cu, 0xFAu, 84, 0xFAu, 1);
    if ((*(**(a1 + 64) + 1200))(v5))
    {
      v6 = 90;
    }

    else
    {
      v6 = 84;
    }

    v7.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10128, 5, 27, 0x32u, 0x3Eu, 0x49u, 0x2Fu, v6, 0x60u, 1);
    if ((*(**(a1 + 64) + 1200))(v7))
    {
      v8 = 250;
    }

    else
    {
      v8 = 84;
    }

    v9.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10608, 4, 30, 0x32u, 0x3Eu, 0x49u, 0xFAu, v8, 0xFAu, 1);
    if ((*(**(a1 + 64) + 1200))(v9))
    {
      v10 = 90;
    }

    else
    {
      v10 = 84;
    }

    v11.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 8, 33, 0x39u, 0x40u, 0x4Bu, 0xFAu, v10, 0x61u, 1);
    if ((*(**(a1 + 64) + 1200))(v11))
    {
      v12 = 90;
    }

    else
    {
      v12 = 84;
    }

    BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 8, 33, 0x39u, 0x40u, 0x4Bu, 0xFAu, v12, 0x61u, 1);
  }

  else if (v3 != 3)
  {
    return BlueFin::GlMeSrdAcqMgrSm::autonomous;
  }

  return 0;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::autonomous_100(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v3 = *a2;
  result = BlueFin::GlMeSrdAcqMgrSm::autonomous;
  if (v3 > 0x40)
  {
    if (v3 == 65 || v3 == 67)
    {
      result = 0;
      *(a1 + 24996) = BlueFin::GlMeMeasSelfAidFilter::m_IsSelfAidOn;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v5.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12048, 22, 45, 0x36u, 0x44u, 0x4Cu, 0xFAu, 84, 0xFAu, 1);
      if ((*(**(a1 + 64) + 1200))(v5))
      {
        v6 = 90;
      }

      else
      {
        v6 = 84;
      }

      v7.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10128, 5, 27, 0x32u, 0x3Fu, 0x49u, 0x2Fu, v6, 0x5Fu, 1);
      if ((*(**(a1 + 64) + 1200))(v7))
      {
        v8 = 250;
      }

      else
      {
        v8 = 84;
      }

      v9.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10608, 4, 30, 0x32u, 0x3Fu, 0x49u, 0xFAu, v8, 0xFAu, 1);
      if ((*(**(a1 + 64) + 1200))(v9))
      {
        v10 = 90;
      }

      else
      {
        v10 = 84;
      }

      v11.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 14, 33, 0x38u, 0x42u, 0x4Cu, 0xFAu, v10, 0x57u, 1);
      if ((*(**(a1 + 64) + 1200))(v11))
      {
        v12 = 90;
      }

      else
      {
        v12 = 84;
      }

      BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 14, 33, 0x38u, 0x42u, 0x4Cu, 0xFAu, v12, 0x57u, 1);
    }

    else
    {
      if (v3 != 3)
      {
        return result;
      }

      *(a1 + 24996) = 0;
      BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12048, 250, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 250, 0xFAu, 1);
    }

    return 0;
  }

  return result;
}

void *BlueFin::GlMeSrdAcqMgrSm::UpdateSmContinuousTrackStates(BlueFin::GlMeSrdAcqMgrSm *this)
{
  v2 = this + 23160;
  v3 = *(this + 6238);
  v4 = *(this + 6239);
  v5 = *(this + 25053);
  v25 = 0.0;
  (*(**(this + 5) + 48))(*(this + 5), *(this + 5790), &v25, 0);
  v7 = 0;
  if ((*(**(this + 8) + 552))())
  {
    LODWORD(v6) = *v2;
    v8 = (*(**(this + 5) + 136))(*(this + 5), v6);
    if (v25 < 0.0005)
    {
      v7 = 1;
    }

    else
    {
      v7 = v8;
    }
  }

  v2[1893] = v7;
  if (v5 != v7)
  {
    v18 = v20;
    v19 = 8;
    v20[0] = xmmword_298A3246C;
    v20[1] = unk_298A3247C;
    BlueFin::GlSetBase::GlSetBase(&v21, v22, 8u, &v18);
    v26 = &v28;
    v27 = 8;
    v28 = 0u;
    v29 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v21, &v26, this + 2896);
    BlueFin::GlSetBase::operator=(&v21, &v26);
    v22[0] = v28;
    v22[1] = v29;
    BlueFin::GlMeSrdSatTrackMgr::GetSetSvidListTrackingOrAided(v16, (this + 14352));
    BlueFin::GlSvIdSet::operator~(v16, v17);
    BlueFin::GlSetBase::GlSetBase(&v23, v24, 8u, &v21);
    v26 = &v28;
    v27 = 8;
    v28 = 0u;
    v29 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v23, &v26, v17);
    BlueFin::GlSetBase::operator=(&v23, &v26);
    v24[0] = v28;
    v24[1] = v29;
    BlueFin::GlMeSrdAidingMgr::ForceAidingRefresh(this + 240, &v23);
  }

  v9 = v2[1840];
  if (v9)
  {
    v10 = BlueFin::GlMeSrdAcqMgrSm::continuous_track_power_save;
  }

  else
  {
    v10 = BlueFin::GlMeSrdAcqMgrSm::continuous_track_300;
  }

  if ((v9 & 1) == 0 && (v4 & 0x22) == 0x22)
  {
    v11 = v4 & 0x108;
    if ((v3 - 2) < 2)
    {
      v12 = v11 == 264;
      v13 = BlueFin::GlMeSrdAcqMgrSm::continuous_track_70_bit;
      v14 = BlueFin::GlMeSrdAcqMgrSm::continuous_track_70_bit_zoom;
    }

    else
    {
      v10 = BlueFin::GlMeSrdAcqMgrSm::continuous_track_300;
      if (!v3)
      {
        goto LABEL_20;
      }

      if (v3 != 1)
      {
        goto LABEL_25;
      }

      v12 = v11 == 264;
      v13 = BlueFin::GlMeSrdAcqMgrSm::continuous_track_300_bit;
      v14 = BlueFin::GlMeSrdAcqMgrSm::continuous_track_300_bit_zoom;
    }

    if (v12)
    {
      v10 = v14;
    }

    else
    {
      v10 = v13;
    }
  }

LABEL_20:
  if (v10 == BlueFin::QHsm::top)
  {
LABEL_25:
    DeviceFaultNotify("glmesrd_acq_mgr_sm.cpp", 1522, "UpdateSmContinuousTrackStates", "nextState != (QSTATE)&GlMeSrdAcqMgrSm::top");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr_sm.cpp", 1522, "nextState != (QSTATE)&GlMeSrdAcqMgrSm::top");
  }

  result = BlueFin::QHsm::isIn(this, v10);
  if (v5 != v7 || !result)
  {
    return BlueFin::QHsm::tran(this, v10, "UpdateSmContinuousTrackStates");
  }

  return result;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::continuous_track_300(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v2 = a1 + 24576;
  v3 = *a2;
  if (v3 == 3)
  {
    result = 0;
    *(v2 + 417) = 0;
  }

  else
  {
    result = BlueFin::GlMeSrdAcqMgrSm::continuous_track_power_full;
    if (v3 == 2)
    {
      *(v2 + 420) = 0;
      *(v2 + 417) = 1;
      if ((*(**(a1 + 64) + 1200))(*(a1 + 64)))
      {
        v6 = 250;
      }

      else
      {
        v6 = 84;
      }

      v7.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 8, 33, 0x39u, 0x40u, 0x4Bu, 0xFAu, v6, 0xFAu, 1);
      if ((*(**(a1 + 64) + 1200))(v7))
      {
        v8 = 90;
      }

      else
      {
        v8 = 84;
      }

      BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 8, 33, 0x39u, 0x40u, 0x4Bu, 0xFAu, v8, 0x61u, 1);
      BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12048, 250, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 250, 0xFAu, 1);
      return 0;
    }
  }

  return result;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::continuous_track_300_bit_zoom(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v2 = (a1 + 24576);
  v3 = *a2;
  if (v3 == 3)
  {
    result = 0;
    v2[417] = 0;
  }

  else
  {
    result = BlueFin::GlMeSrdAcqMgrSm::continuous_track_power_full;
    if (v3 == 2)
    {
      v2[420] = (*(**(a1 + 80) + 32))(*(a1 + 80)) ^ 1;
      v2[417] = (*(**(a1 + 64) + 1016))();
      BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 250, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 250, 0xFAu, 1);
      v6 = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 250, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 250, 0xFAu, 1);
      if (v2[477] == 1 && (*(**(a1 + 64) + 552))(*(a1 + 64), v6))
      {
        GlCustomLog(15, "GlMeSrdAcqMgrSm::continuous_track_300_bit_zoom: Run ExtCohGalSearch, bGalSecCodeValid: 1\n");
        BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12048, 11, 36, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 84, 0xFAu, 1);
      }

      else
      {
        BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12048, 11, 36, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 84, 0xFAu, 1);
      }

      return 0;
    }
  }

  return result;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::continuous_track_300_bit(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v2 = (a1 + 24576);
  v3 = *a2;
  if (v3 == 3)
  {
    result = 0;
    v2[417] = 0;
  }

  else
  {
    result = BlueFin::GlMeSrdAcqMgrSm::continuous_track_power_full;
    if (v3 == 2)
    {
      v2[420] = 1;
      v2[417] = (*(**(a1 + 64) + 1016))(*(a1 + 64));
      if ((*(**(a1 + 64) + 1200))())
      {
        v6 = 250;
      }

      else
      {
        v6 = 84;
      }

      v7.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 250, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, v6, 0xFAu, 1);
      if ((*(**(a1 + 64) + 1200))(v7))
      {
        v8 = 90;
      }

      else
      {
        v8 = 84;
      }

      v9 = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 250, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, v8, 0x61u, 1);
      if (v2[477] == 1)
      {
        (*(**(a1 + 64) + 552))(*(a1 + 64), v9);
      }

      BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12048, 10, 36, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 84, 0xFAu, 1);
      return 0;
    }
  }

  return result;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::continuous_track_70_bit_zoom(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v2 = *a2;
  if (v2 == 3)
  {
    return 0;
  }

  if (v2 != 2)
  {
    return BlueFin::GlMeSrdAcqMgrSm::continuous_track_power_full;
  }

  v4 = a1 + 24576;
  *(a1 + 24996) = (*(**(a1 + 80) + 32))(*(a1 + 80)) ^ 1;
  *(v4 + 417) = (*(**(a1 + 64) + 1016))();
  if ((*(**(a1 + 64) + 1200))())
  {
    v5 = 90;
  }

  else
  {
    v5 = 84;
  }

  v6.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 8, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, v5, 0x57u, 1);
  if ((*(**(a1 + 64) + 1200))(v6))
  {
    v7 = 90;
  }

  else
  {
    v7 = 84;
  }

  v8.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 21, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, v7, 0x57u, 1);
  if ((*(**(a1 + 64) + 552))(v8) && *(v4 + 477) == 1)
  {
    GlCustomLog(15, "GlMeSrdAcqMgrSm::continuous_track_70_bit_zoom: Run ExtCohGalSearch, bGalSecCodeValid: 1\n");
    BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12048, 23, 45, 0x36u, 0xFAu, 0xFAu, 0xFAu, 84, 0xFAu, 1);
  }

  else
  {
    BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12048, 23, 45, 0x36u, 0xFAu, 0xFAu, 0xFAu, 84, 0xFAu, 1);
  }

  return 0;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::continuous_track_70_bit(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v2 = *a2;
  if (v2 == 3)
  {
    return 0;
  }

  if (v2 != 2)
  {
    return BlueFin::GlMeSrdAcqMgrSm::continuous_track_power_full;
  }

  v4 = a1 + 24576;
  *(a1 + 24996) = 1;
  *(a1 + 24993) = (*(**(a1 + 64) + 1016))(*(a1 + 64));
  if ((*(**(a1 + 64) + 1200))())
  {
    v5 = 90;
  }

  else
  {
    v5 = 84;
  }

  v6.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 8, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, v5, 0x57u, 1);
  if ((*(**(a1 + 64) + 1200))(v6))
  {
    v7 = 90;
  }

  else
  {
    v7 = 84;
  }

  v8 = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 21, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, v7, 0x57u, 1);
  if (*(v4 + 477) == 1)
  {
    (*(**(a1 + 64) + 552))(*(a1 + 64), v8);
  }

  BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12048, 22, 45, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 84, 0xFAu, 1);
  return 0;
}

uint64_t (*(*BlueFin::GlMeSrdAcqMgrSm::continuous_track_power_full(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
{
  v2 = a1 + 24993;
  v3 = *a2;
  if (v3 == 3)
  {
    result = 0;
    *v2 = 0;
    *(v2 + 3) = 1;
  }

  else
  {
    result = BlueFin::GlMeSrdAcqMgrSm::continuous_track;
    if (v3 == 2)
    {
      *(v2 + 1) = 1;
      *(a1 + 10440) = 0;
      *(a1 + 10920) = 4;
      v6 = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10128, 250, 250, 0xFAu, 0xFAu, 0xFAu, 0xFAu, 250, 0xFAu, 1);
      v7 = (*(**(a1 + 80) + 32))(*(a1 + 80), v6);
      if ((*(**(a1 + 64) + 1200))())
      {
        v8 = 90;
      }

      else
      {
        v8 = 84;
      }

      if (v7)
      {
        BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10608, 4, 30, 0x32u, 0x3Fu, 0x49u, 0x2Fu, v8, 0x5Fu, 1);
      }

      else
      {
        BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10608, 4, 30, 0x32u, 0x3Fu, 0xFAu, 0x2Fu, v8, 0x5Fu, 1);
      }

      return 0;
    }
  }

  return result;
}

uint64_t BlueFin::GlMeSrdAcqMgrSm::MoveSatFromSSE2STE(BlueFin::GlMeSrdAcqMgrSm *this, uint64_t a2)
{
  v2 = a2;
  v4 = 1 << (a2 & 0x1F);
  if ((v4 & *(*(this + 1740) + 4 * (a2 >> 5))) != 0)
  {
    BlueFin::GlSetBase::Remove(this + 13920, a2);
  }

  else
  {
    v5 = 0;
    while (1)
    {
      v6 = *(this + v5 + 23080);
      if ((v4 & *(v6[16] + 4 * (a2 >> 5))) != 0)
      {
        break;
      }

      v5 += 8;
      if (v5 == 80)
      {
        DeviceFaultNotify("glmesrd_acq_mgr_sm.cpp", 3016, "MoveSatFromSSE2STE", "bFound");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr_sm.cpp", 3016, "bFound");
      }
    }

    (*(*v6 + 24))(v6, a2);
  }

  return BlueFin::GlMeSrdSatTrackMgr::AddSat(this + 1794, v2);
}

void BlueFin::GlMeSrdAcqMgrSm::~GlMeSrdAcqMgrSm(BlueFin::GlMeSrdAcqMgrSm *this)
{
  BlueFin::GlMeSrdAcqMgrSm::~GlMeSrdAcqMgrSm(this);

  JUMPOUT(0x29C292F60);
}

{
  *this = &unk_2A1F0A930;
  BlueFin::GlMeSrdSatTrackMgr::~GlMeSrdSatTrackMgr((this + 14352));
  BlueFin::GlMeSrdSatPostSearchMgr::~GlMeSrdSatPostSearchMgr((this + 13920));
  *(this + 1701) = &unk_2A1F0AA38;
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase((this + 13608));
  *(this + 1662) = &unk_2A1F0AA38;
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase((this + 13296));
  *(this + 1623) = &unk_2A1F0AA38;
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase((this + 12984));
  *(this + 1584) = &unk_2A1F0AA38;
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase((this + 12672));
  *(this + 1545) = &unk_2A1F0AA38;
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase((this + 12360));
  *(this + 1506) = &unk_2A1F0AA38;
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase((this + 12048));
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase((this + 11568));
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase((this + 11088));
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase((this + 10608));
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase((this + 10128));
  BlueFin::GlMeSrdAcqMgr::~GlMeSrdAcqMgr((this + 88));
}

uint64_t BlueFin::GlSignalId::GetMsPerEpoch(BlueFin::GlSignalId *this)
{
  if (*(this + 4) >= 0x23Fu)
  {
    v4 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v5 = 679;
    goto LABEL_6;
  }

  v1 = BlueFin::GlSvId::s_aucSvId2gnss[*this];
  v2 = &BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(this + 1) - *(this + 1)];
  result = v2[v1];
  if (!v2[v1])
  {
    v4 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v5 = 686;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v5, v4);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdAidingMgr::LogMappingChange(BlueFin::GlMeSrdAidingMgr *this, uint64_t a2, const BlueFin::GlSignalId *a3)
{
  MEMORY[0x2A1C7C4A8](this, a2);
  v4 = v3;
  v6 = v5;
  v15 = *MEMORY[0x29EDCA608];
  v11 = 81;
  v12 = 2;
  v13 = 0x1000000000000;
  v10 = &unk_2A1F09520;
  v14 = 2;
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0x80;
  }

  BlueFin::GlSysLogEntry::PutU8(&v10, v8);
  BlueFin::GlSysLogEntry::PutU8(&v10, *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *v6));
  BlueFin::GlSysLogEntry::PutU8(&v10, v6[4]);
  BlueFin::GlSysLogEntry::PutU8(&v10, v4);
  return BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v10, 0, 4);
}

uint64_t BlueFin::GlMeSrdAidingMgr::UpdateAidingFromEarlyTap(BlueFin::GlMeSrdAidingMgr *a1, double *a2, uint64_t a3)
{
  v29 = &off_2A1F0E398;
  v30 = 0;
  v31 = -1;
  v32 = 575;
  v33 = 0;
  v34 = 0;
  v35 = xmmword_298A339D0;
  v36 = 2139095039;
  v37 = 0;
  v38 = 2139095039;
  v39 = 0;
  v40 = 0x7FEFFFFFFFFFFFFFLL;
  v41 = -1;
  v42 = -1;
  v44 = 0;
  v45 = 0;
  v43 = 0;
  v6 = a2[3] * 1000.0;
  v46 = 0;
  BlueFin::GlMeSrdAidingMgr::GetAcqWindow(a1, &v29, (a2 + 100), v6, 0, 0);
  BlueFin::GlMeAcqWin::OverrideAcqWinWithDspMeas(&v29, a2, 1);
  *v7.i64 = a2[3] * 1000.0;
  BlueFin::GlMeSrdAidingMgr::FormatAidingForEsw(a1, v28, &v29, 1, (a2 + 100), v7, v8, v9, v10);
  AidIdFromSignalId = BlueFin::GlMeSrdAidingMgr::GetAidIdFromSignalId(a1, (a2 + 100));
  v14 = v30 >> 5;
  v15 = 1 << v30;
  *(*(a1 + 160) + 4 * v14) |= 1 << v30;
  if (BlueFin::GlMeMeasSelfAidFilter::m_IsSelfAidOn == 1)
  {
    *(*(a1 + 166) + 4 * v14) |= v15;
  }

  *v11.i64 = a2[3] * 1000.0;
  *v13.i64 = *v11.i64 + trunc(*v11.i64 * 2.32830644e-10) * -4294967300.0;
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v17 = vnegq_f64(v16);
  v13.i64[0] = vbslq_s8(v17, v13, v11).u64[0];
  if (*v11.i64 > 4294967300.0)
  {
    v11.i64[0] = v13.i64[0];
  }

  if (*v11.i64 < -4294967300.0)
  {
    *v12.i64 = -*v11.i64;
    *v11.i64 = -(*v11.i64 - trunc(*v11.i64 * -2.32830644e-10) * -4294967300.0);
    *v11.i64 = -*vbslq_s8(v17, v11, v12).i64;
  }

  if (*v11.i64 < 0.0)
  {
    v18 = --*v11.i64;
  }

  else
  {
    v18 = *v11.i64;
  }

  *(a1 + *(a2 + 100) + 7) = v18;
  v19 = (*(*a3 + 80))(a3);
  v23 = 0;
  v24[0] = 0;
  *(v24 + 7) = 0;
  v24[2] = v19;
  v25 = 0;
  v26 = 0;
  (*(*v19 + 16))(v19, 0);
  v20 = (*(*v19 + 48))(v19);
  v21 = (*(*v20 + 48))(v20);
  (*(*v21 + 72))(v21, &v23, 1, &AidIdFromSignalId, v28);
  BlueFin::GlMeSrdTransaction::Complete(&v23);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v23);
  return 1;
}

void sub_298955700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlMeSrdAidingMgr::UpdateAidingFromDspMeas(BlueFin::GlMeSrdAidingMgr *a1, double *a2, uint64_t a3)
{
  v30 = &off_2A1F0E398;
  v31 = 0;
  v32 = -1;
  v33 = 575;
  v34 = 0;
  v35 = 0;
  v36 = xmmword_298A339D0;
  v37 = 2139095039;
  v38 = 0;
  v39 = 2139095039;
  v40 = 0;
  v41 = 0x7FEFFFFFFFFFFFFFLL;
  v42 = -1;
  v43 = -1;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v6 = a2[3] * 1000.0;
  v47 = 0;
  AcqWindow = BlueFin::GlMeSrdAidingMgr::GetAcqWindow(a1, &v30, (a2 + 100), v6, 0, 0);
  BlueFin::GlMeAcqWin::OverrideAcqWinWithDspMeas(&v30, a2, 0);
  *v8.i64 = a2[3] * 1000.0;
  BlueFin::GlMeSrdAidingMgr::FormatAidingForEsw(a1, v29, &v30, AcqWindow, (a2 + 100), v8, v9, v10, v11);
  AidIdFromSignalId = BlueFin::GlMeSrdAidingMgr::GetAidIdFromSignalId(a1, (a2 + 100));
  *(*(a1 + 160) + ((v31 >> 3) & 0x1C)) |= 1 << v31;
  v28 = AidIdFromSignalId;
  *v14.i64 = a2[3] * 1000.0;
  *v15.i64 = *v14.i64 + trunc(*v14.i64 * 2.32830644e-10) * -4294967300.0;
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v17 = vnegq_f64(v16);
  *&v18 = vbslq_s8(v17, v15, v14).u64[0];
  if (*v14.i64 > 4294967300.0)
  {
    *v14.i64 = v18;
  }

  if (*v14.i64 < -4294967300.0)
  {
    *v13.i64 = -*v14.i64;
    *v14.i64 = -(*v14.i64 - trunc(*v14.i64 * -2.32830644e-10) * -4294967300.0);
    *v14.i64 = -*vbslq_s8(v17, v14, v13).i64;
  }

  if (*v14.i64 < 0.0)
  {
    v19 = --*v14.i64;
  }

  else
  {
    v19 = *v14.i64;
  }

  *(a1 + *(a2 + 100) + 7) = v19;
  v20 = (*(*a3 + 80))(a3);
  v24 = 0;
  v25[0] = 0;
  *(v25 + 7) = 0;
  v25[2] = v20;
  v26 = 0;
  v27 = 0;
  (*(*v20 + 16))(v20, 0);
  v21 = (*(*v20 + 48))(v20);
  v22 = (*(*v21 + 48))(v21);
  (*(*v22 + 72))(v22, &v24, 1, &v28, v29);
  BlueFin::GlMeSrdTransaction::Complete(&v24);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v24);
  return 1;
}

void sub_2989559EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMeSrdSatPostSearchMgr::~GlMeSrdSatPostSearchMgr(BlueFin::GlMeSrdSatPostSearchMgr *this)
{
  if (**this)
  {
    goto LABEL_7;
  }

  v1 = *(this + 8);
  if (v1 >= 2)
  {
    v2 = v1 - 1;
    v3 = (*this + 4);
    while (!*v3++)
    {
      if (!--v2)
      {
        return;
      }
    }

LABEL_7:
    DeviceFaultNotify("glmesrd_post_search_mgr.cpp", 35, "~GlMeSrdSatPostSearchMgr", "m_otSatSetInPostSearch.IsEmpty()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_post_search_mgr.cpp", 35, "m_otSatSetInPostSearch.IsEmpty()");
  }
}

uint64_t BlueFin::GlMeSrdSatMgr::AsicStarted(BlueFin::GlMeSrdSatMgr *this)
{
  v1 = *(this + 7);
  if (*v1)
  {
LABEL_21:
    v18 = "!m_otSetSatidAvailable.HasAny()";
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 71, "AsicStarted", "!m_otSetSatidAvailable.HasAny()");
    v19 = 71;
    goto LABEL_23;
  }

  v3 = *(this + 64);
  if (v3 >= 2)
  {
    v4 = v3 - 1;
    v5 = v1 + 1;
    do
    {
      if (*v5++)
      {
        goto LABEL_21;
      }
    }

    while (--v4);
  }

  v7 = *(this + 49);
  if (*v7)
  {
    goto LABEL_22;
  }

  v8 = *(this + 400);
  if (v8 >= 2)
  {
    v9 = v8 - 1;
    v10 = v7 + 1;
    while (!*v10++)
    {
      if (!--v9)
      {
        goto LABEL_11;
      }
    }

LABEL_22:
    v18 = "!m_otSupportedSatsList.HasAny()";
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 72, "AsicStarted", "!m_otSupportedSatsList.HasAny()");
    v19 = 72;
    goto LABEL_23;
  }

LABEL_11:
  if ((*(**(this + 819) + 384))(*(this + 819)) >= 0x65)
  {
    v18 = "m_rAsicConfigIfc.GetMaxNumSats() <= GlMeSrdAsicConfigConstants::GLL_SAT_ARRAY_SIZE";
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 73, "AsicStarted", "m_rAsicConfigIfc.GetMaxNumSats() <= GlMeSrdAsicConfigConstants::GLL_SAT_ARRAY_SIZE");
    v19 = 73;
LABEL_23:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", v19, v18);
  }

  v12 = (*(**(this + 819) + 384))(*(this + 819));
  if (v12)
  {
    v13 = 0;
    v14 = *(this + 7);
    v15 = *(this + 49);
    do
    {
      *(v14 + 4 * (v13 >> 5)) |= 1 << v13;
      *(v15 + 4 * (v13 >> 5)) |= 1 << v13;
      ++v13;
    }

    while (v12 != v13);
  }

  result = (*(**(this + 819) + 352))(*(this + 819));
  if (result)
  {
    result = (*(**(this + 819) + 264))(*(this + 819));
    if (!result)
    {
      return result;
    }

    v17 = -56;
  }

  else
  {
    v17 = -1;
  }

  *(this + 48) = v17;
  return result;
}

uint64_t BlueFin::GlMeSrdSatMgr::NumSatInKillProcess(BlueFin::GlMeSrdSatMgr *this)
{
  v2 = BlueFin::GlSetBase::Cnt((this + 152));
  v3 = BlueFin::GlSetBase::Cnt((this + 184)) + v2;
  return v3 + BlueFin::GlSetBase::Cnt((this + 216));
}

uint64_t BlueFin::GlMeSrdSatMgr::AddCarrier(uint64_t result, unsigned int a2, char a3, char a4, int a5)
{
  v8 = result;
  v9 = *(result + 6288) + 52 * a2;
  v10 = *(v9 + 5);
  if (*(v9 + 5))
  {
    v11 = (v9 + 8);
    while (1)
    {
      v12 = *v11++;
      if (v12 == a5)
      {
        break;
      }

      if (!--v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = BlueFin::GlSatCarrId::GlSatCarrId(v18, a2, a5);
    *(*(v8 + 6304) + 4 * ((v18[0] + 100 * v19) >> 5)) |= 1 << (v18[0] + 100 * v19);
    v14 = *(v8 + 6288) + 52 * a2;
    v15 = v14 + 2 * a5;
    *(v15 + 34) = 1;
    *(v15 + 33) = a4;
    *(v14 + *(v14 + 5) + 1) = a3;
    v16 = *(v8 + 6288) + 52 * a2;
    v17 = *(v16 + 5);
    *(v16 + 5) = v17 + 1;
    *(v16 + 4 * v17 + 8) = a5;
    ++*(v8 + 49);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatMgr::EswKilledSat(BlueFin::GlMeSrdSatMgr *this, unsigned int a2)
{
  v4 = *(this + 15);
  v3 = this + 120;
  v5 = a2 >> 5;
  v6 = a2 & 0x1F;
  v7 = 1 << (a2 & 0x1F);
  if (!(v7 & *(v4 + 4 * (a2 >> 5)) | (v7 & *(*(v3 - 4) + 4 * (a2 >> 5)))))
  {
    v10 = "IsSatAllocated(ucSatid)";
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 803, "EswKilledSat", "IsSatAllocated(ucSatid)");
    v11 = 803;
    goto LABEL_6;
  }

  if ((v7 & *(*(v3 - 4) + 4 * (a2 >> 5))) != 0)
  {
    v10 = "!m_otSetSatidDeferredCreate.Has(ucSatid)";
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 804, "EswKilledSat", "!m_otSetSatidDeferredCreate.Has(ucSatid)");
    v11 = 804;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", v11, v10);
  }

  BlueFin::GlSetBase::Remove(v3, a2);
  *(this + 49) -= *(*(this + 786) + 52 * a2 + 5);
  BlueFin::GlSetBase::Remove(this + 360, a2);
  result = BlueFin::GlSatCarrIdSet::RemoveAllCarr((this + 280), a2);
  *(*(this + 27) + 4 * v5) |= 1 << v6;
  return result;
}

void *BlueFin::GlMeSrdSatMgr::SetTrackChannel(void *this, const BlueFin::GlSatCarrId *a2, char a3)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  v5 = 1 << (v3 & 0x1F);
  if ((v5 & *(this[15] + 4 * (v3 >> 5))) == 0 && (v5 & *(this[11] + 4 * (v3 >> 5))) == 0)
  {
    v6 = "IsSatAllocated(ucSatId)";
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 892, "SetTrackChannel", "IsSatAllocated(ucSatId)");
    v7 = 892;
    goto LABEL_7;
  }

  if (v4 >= 4)
  {
    v6 = "eSignal < _DIM(m_aotSatData[ucSatId].aucTrackChannel)";
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 893, "SetTrackChannel", "eSignal < _DIM(m_aotSatData[ucSatId].aucTrackChannel)");
    v7 = 893;
LABEL_7:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", v7, v6);
  }

  *(this[35] + 4 * ((v3 + 100 * v4) >> 5)) |= 1 << (v3 + 100 * v4);
  *(this[786] + 52 * v3 + v4 + 24) = a3;
  return this;
}

uint64_t BlueFin::GlMeSrdSatMgr::GetNumSignals(BlueFin::GlMeSrdSatMgr *this, unsigned int a2)
{
  v2 = 1 << (a2 & 0x1F);
  if ((v2 & *(*(this + 15) + 4 * (a2 >> 5))) == 0 && (v2 & *(*(this + 11) + 4 * (a2 >> 5))) == 0)
  {
    v4 = "IsSatAllocated(ucSatId)";
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 913, "GetNumSignals", "IsSatAllocated(ucSatId)");
    v5 = 913;
    goto LABEL_7;
  }

  if (a2 >= 0x64)
  {
    v4 = "ucSatId < _DIM(m_aotSatData)";
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 914, "GetNumSignals", "ucSatId < _DIM(m_aotSatData)");
    v5 = 914;
LABEL_7:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", v5, v4);
  }

  return *(*(this + 786) + 52 * a2 + 5);
}

uint64_t BlueFin::GlMeSrdSatMgr::GetSignalIndex(BlueFin::GlMeSrdSatMgr *this, unsigned int a2, unsigned int a3)
{
  v3 = 1 << (a2 & 0x1F);
  if ((v3 & *(*(this + 15) + 4 * (a2 >> 5))) == 0 && (v3 & *(*(this + 11) + 4 * (a2 >> 5))) == 0)
  {
    v6 = "IsSatAllocated(ucSatId)";
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 922, "GetSignalIndex", "IsSatAllocated(ucSatId)");
    v7 = 922;
    goto LABEL_9;
  }

  if (a2 >= 0x64)
  {
    v6 = "ucSatId < _DIM(m_aotSatData)";
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 923, "GetSignalIndex", "ucSatId < _DIM(m_aotSatData)");
    v7 = 923;
    goto LABEL_9;
  }

  v4 = *(this + 786) + 52 * a2;
  if (*(v4 + 5) <= a3)
  {
    v6 = "ucIdx < m_aotSatData[ucSatId].ucNumCarriers";
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 924, "GetSignalIndex", "ucIdx < m_aotSatData[ucSatId].ucNumCarriers");
    v7 = 924;
LABEL_9:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", v7, v6);
  }

  return *(v4 + 4 * a3 + 8);
}

uint64_t BlueFin::GlMeSrdSatMgr::GetActiveTimeMs(BlueFin::GlMeSrdSatMgr *this, unsigned int a2, int a3)
{
  if (((*(*(this + 45) + 4 * (a2 >> 5)) >> (a2 & 0x1F)) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 980, "GetActiveTimeMs", "IsActive(ucSatid)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", 980, "IsActive(ucSatid)");
  }

  return (a3 - *(*(this + 786) + 52 * a2 + 48));
}

uint64_t BlueFin::GlMeSrdSatMgr::GetLastActiveMs(BlueFin::GlMeSrdSatMgr *this, unsigned int a2)
{
  v2 = 1 << (a2 & 0x1F);
  if ((v2 & *(*(this + 15) + 4 * (a2 >> 5))) == 0 && (v2 & *(*(this + 11) + 4 * (a2 >> 5))) == 0)
  {
    DeviceFaultNotify("glmesrd_sat_mgr.cpp", 987, "GetLastActiveMs", "IsSatAllocated(ucSatid)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", 987, "IsSatAllocated(ucSatid)");
  }

  return *(*(this + 786) + 52 * a2 + 48);
}

void BlueFin::GlMeSrdSearchMgr::~GlMeSrdSearchMgr(BlueFin::GlMeSrdSearchMgr *this)
{
  *this = &unk_2A1F0AA38;
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase(this);
}

{
  *this = &unk_2A1F0AA38;
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase(this);

  JUMPOUT(0x29C292F70);
}

unsigned __int8 *BlueFin::GlMeSrdSearchMgr::GetGpsSatWithinZoomWindow@<X0>(uint64_t *__return_ptr a1@<X8>, BlueFin::GlMeSrdSearchMgr *this@<X0>, unsigned int a3@<W1>)
{
  *(a1 + 12) = 0;
  *a1 = a1 + 12;
  *(a1 + 8) = 4;
  *(a1 + 20) = 0;
  v11 = *(this + 136);
  memcpy(v15, *(this + 16), 4 * v11);
  *v13 = 0;
  v12 = 0;
  v14 = v15[0];
  for (result = BlueFin::GlSetIterator::operator++(&v11); v12 != v11; result = BlueFin::GlSetIterator::operator++(&v11))
  {
    v7 = v13[0];
    BlueFin::GlMeSrdSatMgr::GetSvid(&v10, *(this + 2), v13[0]);
    if (v10 - 1 <= 0x1F)
    {
      v8 = *(this + 2);
      if ((*(*(v8 + 45) + 4 * (v7 >> 5)) >> (v7 & 0x1F)))
      {
        ActiveBsId = BlueFin::GlMeSrdSatMgr::GetActiveBsId(v8, v7);
        if (*((*(**(this + 38) + 248))(*(this + 38), ActiveBsId) + 10) <= a3)
        {
          *(*a1 + 4 * (v7 >> 5)) |= 1 << (v7 & 0x1F);
        }
      }
    }
  }

  return result;
}

unsigned __int8 *BlueFin::GlMeSrdSearchMgr::GetGlnsSatWithinZoomWindow@<X0>(uint64_t *__return_ptr a1@<X8>, BlueFin::GlMeSrdSearchMgr *this@<X0>, unsigned int a3@<W1>)
{
  *(a1 + 12) = 0;
  *a1 = a1 + 12;
  *(a1 + 8) = 4;
  *(a1 + 20) = 0;
  v11 = *(this + 136);
  memcpy(v15, *(this + 16), 4 * v11);
  *v13 = 0;
  v12 = 0;
  v14 = v15[0];
  for (result = BlueFin::GlSetIterator::operator++(&v11); v12 != v11; result = BlueFin::GlSetIterator::operator++(&v11))
  {
    v7 = v13[0];
    BlueFin::GlMeSrdSatMgr::GetSvid(&v10, *(this + 2), v13[0]);
    if (v10 - 52 <= 0xD)
    {
      v8 = *(this + 2);
      if ((*(*(v8 + 45) + 4 * (v7 >> 5)) >> (v7 & 0x1F)))
      {
        ActiveBsId = BlueFin::GlMeSrdSatMgr::GetActiveBsId(v8, v7);
        if (*((*(**(this + 38) + 248))(*(this + 38), ActiveBsId) + 10) <= a3)
        {
          *(*a1 + 4 * (v7 >> 5)) |= 1 << (v7 & 0x1F);
        }
      }
    }
  }

  return result;
}

unsigned __int8 *BlueFin::GlMeSrdSearchMgr::GetGalSatWithinZoomWindow@<X0>(uint64_t *__return_ptr a1@<X8>, BlueFin::GlMeSrdSearchMgr *this@<X0>, unsigned int a3@<W1>)
{
  *(a1 + 12) = 0;
  *a1 = a1 + 12;
  *(a1 + 8) = 4;
  *(a1 + 20) = 0;
  v11 = *(this + 136);
  memcpy(v15, *(this + 16), 4 * v11);
  *v13 = 0;
  v12 = 0;
  v14 = v15[0];
  for (result = BlueFin::GlSetIterator::operator++(&v11); v12 != v11; result = BlueFin::GlSetIterator::operator++(&v11))
  {
    v7 = v13[0];
    BlueFin::GlMeSrdSatMgr::GetSvid(&v10, *(this + 2), v13[0]);
    if (v10 - 139 <= 0x23)
    {
      v8 = *(this + 2);
      if ((*(*(v8 + 45) + 4 * (v7 >> 5)) >> (v7 & 0x1F)))
      {
        ActiveBsId = BlueFin::GlMeSrdSatMgr::GetActiveBsId(v8, v7);
        if (*((*(**(this + 38) + 248))(*(this + 38), ActiveBsId) + 10) <= a3)
        {
          *(*a1 + 4 * (v7 >> 5)) |= 1 << (v7 & 0x1F);
        }
      }
    }
  }

  return result;
}

void BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase(BlueFin::GlMeSrdSearchMgrBase *this)
{
  *this = &unk_2A1F0AAB0;
  v1 = *(this + 16);
  if (*v1)
  {
LABEL_12:
    v11 = "m_otSetSatIdInUse.IsEmpty()";
    v12 = 57;
    DeviceFaultNotify("glmesrd_search_mgr_base.cpp", 57, "~GlMeSrdSearchMgrBase", "m_otSetSatIdInUse.IsEmpty()");
    goto LABEL_14;
  }

  v2 = *(this + 136);
  if (v2 >= 2)
  {
    v3 = v2 - 1;
    v4 = v1 + 1;
    do
    {
      if (*v4++)
      {
        goto LABEL_12;
      }
    }

    while (--v3);
  }

  v6 = *(this + 10);
  if (*v6)
  {
LABEL_13:
    v11 = "m_otSetSvidInUse.IsEmpty()";
    v12 = 58;
    DeviceFaultNotify("glmesrd_search_mgr_base.cpp", 58, "~GlMeSrdSearchMgrBase", "m_otSetSvidInUse.IsEmpty()");
LABEL_14:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_search_mgr_base.cpp", v12, v11);
  }

  v7 = *(this + 88);
  if (v7 >= 2)
  {
    v8 = v7 - 1;
    v9 = v6 + 1;
    while (!*v9++)
    {
      if (!--v8)
      {
        return;
      }
    }

    goto LABEL_13;
  }
}

double BlueFin::GlMeSrdSearchMgrBase::SetSvidToSearch(BlueFin::GlMeSrdSearchMgrBase *this, const BlueFin::GlSvIdSet *a2)
{
  BlueFin::GlSetBase::operator=(this + 256, a2);
  v4 = *(a2 + 28);
  *(this + 268) = *(a2 + 12);
  *(this + 284) = v4;

  return BlueFin::GlMeSrdSearchMgrBase::RemoveInvalidSvId(this, (this + 256));
}

double BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, int a8, unsigned int a9, char a10)
{
  v17 = (*(**(a1 + 32) + 264))(*(a1 + 32));
  if (a10)
  {
    v54 = v17;
    v55 = a8;
    v65[0] = 1;
    *&v65[4] = 0;
    LOWORD(v66) = 0;
    StrategyId = BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(a1, v65);
    v65[0] = 52;
    *&v65[4] = 0;
    LOWORD(v66) = 147;
    v62 = BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(a1, v65);
    v80[0] = BlueFin::GlSvIdSet::csm_aulBeidouGeoSvIds;
    v80[1] = unk_298A324BC;
    v74[0] = xmmword_298A3244C;
    v78 = v80;
    v79 = 8;
    v72 = v74;
    LOBYTE(v73) = 8;
    v74[1] = unk_298A3245C;
    BlueFin::GlSvIdSet::operator~(&v78, &v69);
    v19 = BlueFin::GlSetBase::GlSetBase(&v75, v77, 8u, &v72);
    *v65 = &v67;
    LOBYTE(v66) = 8;
    v67 = 0u;
    v68 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(v19, v65, &v69);
    BlueFin::GlSetBase::operator=(&v75, v65);
    v77[0] = v67;
    v77[1] = v68;
    v65[0] = v76;
    memcpy(&v66, v75, 4 * v76);
    *&v65[2] = 0;
    v65[1] = 0;
    *&v65[4] = v66;
    BlueFin::GlSetIterator::operator++(v65);
    LOBYTE(v72) = v65[2];
    HIDWORD(v72) = 0;
    v73 = 575;
    if (v65[2] - 189 >= 0xFFFFFF44)
    {
      v20 = BlueFin::GlSvId::s_aucSvId2gnss[v65[2]];
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v20] == 255)
      {
        HIDWORD(v72) = -1;
      }

      else
      {
        v73 = BlueFin::GlSignalId::s_ausGnss2signalId[v20] + v65[2] - BlueFin::GlSvId::s_aucGnss2minSvId[v20];
      }
    }

    v60 = BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(a1, &v72);
    v65[0] = v79;
    memcpy(&v66, v78, 4 * v79);
    *&v65[2] = 0;
    v65[1] = 0;
    *&v65[4] = v66;
    BlueFin::GlSetIterator::operator++(v65);
    LOBYTE(v72) = v65[2];
    HIDWORD(v72) = 0;
    v73 = 575;
    if (v65[2] - 189 >= 0xFFFFFF44)
    {
      v21 = BlueFin::GlSvId::s_aucSvId2gnss[v65[2]];
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v21] == 255)
      {
        HIDWORD(v72) = -1;
      }

      else
      {
        v73 = BlueFin::GlSignalId::s_ausGnss2signalId[v21] + v65[2] - BlueFin::GlSvId::s_aucGnss2minSvId[v21];
      }
    }

    v59 = BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(a1, &v72);
    v65[0] = -117;
    *&v65[4] = 0;
    LOWORD(v66) = 453;
    v22 = BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(a1, v65);
    v65[0] = 33;
    *&v65[4] = 0;
    LOWORD(v66) = 128;
    v57 = BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(a1, v65);
    v65[0] = v76;
    memcpy(&v66, v75, 4 * v76);
    *&v65[2] = 0;
    v65[1] = 0;
    *&v65[4] = v66;
    BlueFin::GlSetIterator::operator++(v65);
    LOBYTE(v72) = v65[2];
    HIDWORD(v72) = 3;
    v73 = 575;
    if (v65[2] - 189 >= 0xFFFFFF44)
    {
      v23 = BlueFin::GlSvId::s_aucSvId2gnss[v65[2]];
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v23 + 21] == 255)
      {
        HIDWORD(v72) = -1;
      }

      else
      {
        v73 = BlueFin::GlSignalId::s_ausGnss2signalId[v23] + v65[2] - BlueFin::GlSvId::s_aucGnss2minSvId[v23] + 3 * BlueFin::GlSvId::s_aucGnss2numSvId[v23];
      }
    }

    v61 = BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(a1, &v72);
    if (StrategyId != a2 || v62 != a3 || v57 != a7 || v60 != a4 || v59 != a5 || v22 != a6 || v61 != a9)
    {
      v52 = v22;
      v53 = a7;
      v58 = a5;
      v56 = a6;
      v72 = v74;
      LOBYTE(v73) = 4;
      v74[0] = 0uLL;
      v69 = v71;
      v70 = 4;
      v71[1] = 0;
      v71[0] = 0;
      v65[0] = *(a1 + 136);
      memcpy(&v66, *(a1 + 128), 4 * v65[0]);
      *&v65[2] = 0;
      v65[1] = 0;
      *&v65[4] = v66;
      BlueFin::GlSetIterator::operator++(v65);
      if (v65[1] != v65[0])
      {
        v24 = BlueFin::GlSvId::s_aucSvId2gnss;
        while (1)
        {
          v25 = v65[2];
          BlueFin::GlMeSrdSatMgr::GetSvid(&v64, *(a1 + 16), v65[2]);
          v26 = v64;
          v27 = v24[v64];
          if (StrategyId != a2 && v27 <= 6 && ((1 << v27) & 0x49) != 0)
          {
            break;
          }

          if (v62 != a3 && v27 == 2)
          {
            StartupBsId = BlueFin::GlMeSrdSatMgr::GetStartupBsId(*(a1 + 16), v25);
            v33 = (*(*a1 + 64))(a1, v25, StartupBsId, a3);
            goto LABEL_33;
          }

          v35 = StrategyId;
          v36 = v24;
          v37 = v64 - 81;
          if (v60 != a4 && v37 <= 0x34 && !BlueFin::GlMeSrdSatMgr::GetSignalIndex(*(a1 + 16), v25, 0))
          {
            v46 = BlueFin::GlMeSrdSatMgr::GetStartupBsId(*(a1 + 16), v25);
            v39 = (*(*a1 + 64))(a1, v25, v46, a4);
LABEL_60:
            if (v39)
            {
              v47 = v69;
            }

            else
            {
              v47 = v72;
            }

            v44 = &v47[v25 >> 5];
            v24 = v36;
LABEL_72:
            StrategyId = v35;
            goto LABEL_73;
          }

          if (v61 != a9 && v37 <= 0x34 && BlueFin::GlMeSrdSatMgr::GetSignalIndex(*(a1 + 16), v25, 0) == 3)
          {
            v38 = BlueFin::GlMeSrdSatMgr::GetStartupBsId(*(a1 + 16), v25);
            v39 = (*(*a1 + 64))(a1, v25, v38, a9);
            goto LABEL_60;
          }

          if (v59 != v58 && (v26 - 76) <= 0x3E && ((1 << (v26 - 76)) & 0x7C0000000000001FLL) != 0 && !BlueFin::GlMeSrdSatMgr::GetSignalIndex(*(a1 + 16), v25, 0))
          {
            v48 = BlueFin::GlMeSrdSatMgr::GetStartupBsId(*(a1 + 16), v25);
            v24 = v36;
            if ((*(*a1 + 64))(a1, v25, v48, v58))
            {
              v49 = v69;
            }

            else
            {
              v49 = v72;
            }

            v44 = &v49[v25 >> 5];
            goto LABEL_72;
          }

          v24 = v36;
          if (v61 != a9 && (v26 - 76) <= 0x3E && ((1 << (v26 - 76)) & 0x7C0000000000001FLL) != 0 && BlueFin::GlMeSrdSatMgr::GetSignalIndex(*(a1 + 16), v25, 0) == 3)
          {
            v40 = BlueFin::GlMeSrdSatMgr::GetStartupBsId(*(a1 + 16), v25);
            StrategyId = v35;
            if ((*(*a1 + 64))(a1, v25, v40, a9))
            {
              v41 = v69;
            }

            else
            {
              v41 = v72;
            }

            v44 = &v41[v25 >> 5];
            goto LABEL_73;
          }

          StrategyId = v35;
          if (v52 == v56 || v27 != 5)
          {
            if (v57 == v53 || v27 != 1)
            {
              goto LABEL_74;
            }

            v45 = BlueFin::GlMeSrdSatMgr::GetStartupBsId(*(a1 + 16), v25);
            v33 = (*(*a1 + 64))(a1, v25, v45, v53);
LABEL_33:
            v31 = v25 >> 5;
            if (v33)
            {
LABEL_34:
              v34 = v69;
LABEL_67:
              v44 = &v34[v31];
              goto LABEL_73;
            }

LABEL_66:
            v34 = v72;
            goto LABEL_67;
          }

          v42 = BlueFin::GlMeSrdSatMgr::GetStartupBsId(*(a1 + 16), v25);
          v43 = (*(*a1 + 64))(a1, v25, v42, v56);
          v31 = v25 >> 5;
          if (!v43)
          {
            goto LABEL_66;
          }

          v44 = &v69[v31];
LABEL_73:
          *v44 |= 1 << v25;
LABEL_74:
          BlueFin::GlSetIterator::operator++(v65);
          if (v65[1] == v65[0])
          {
            goto LABEL_75;
          }
        }

        v29 = BlueFin::GlMeSrdSatMgr::GetStartupBsId(*(a1 + 16), v25);
        v30 = (*(*a1 + 64))(a1, v25, v29, a2);
        v31 = v25 >> 5;
        if (v30)
        {
          goto LABEL_34;
        }

        goto LABEL_66;
      }

LABEL_75:
      BlueFin::GlSetBase::operator|=(a1 + 192, &v72);
      BlueFin::GlSetBase::operator|=(a1 + 224, &v69);
      a7 = v53;
      a6 = v56;
      a5 = v58;
    }

    v17 = v54;
    a8 = v55;
  }

  if (v17)
  {
    v50 = a8;
  }

  else
  {
    v50 = 250;
  }

  *(a1 + 40) = a2;
  *(a1 + 44) = a3;
  *(a1 + 48) = a4;
  *(a1 + 52) = a5;
  *(a1 + 56) = a6;
  *(a1 + 60) = a7;
  *(a1 + 64) = v50;
  *(a1 + 68) = a9;
  return BlueFin::GlMeSrdSearchMgrBase::RemoveInvalidSvId(a1, (a1 + 256));
}

uint64_t BlueFin::GlMeSrdSearchMgrBase::ReleaseSatUnaltered(BlueFin::GlMeSrdSearchMgrBase *this, unsigned int a2)
{
  v4 = *(this + 16);
  v3 = this + 128;
  if (((*(v4 + 4 * (a2 >> 5)) >> (a2 & 0x1F)) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_search_mgr_base.cpp", 325, "ReleaseSatUnaltered", "m_otSetSatIdInUse.Has(ucSatId)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_search_mgr_base.cpp", 325, "m_otSetSatIdInUse.Has(ucSatId)");
  }

  BlueFin::GlSetBase::Remove(v3, a2);
  BlueFin::GlMeSrdSatMgr::GetSvid(&v7, *(this + 2), a2);
  BlueFin::GlSetBase::Remove(this + 80, v7);
  BlueFin::GlSetBase::Remove(this + 160, a2);
  BlueFin::GlSetBase::Remove(this + 192, a2);

  return BlueFin::GlSetBase::Remove(this + 224, a2);
}

const char *BlueFin::GlMeSrdSearchMgrBase::GetName(BlueFin::GlMeSrdSearchMgrBase *this)
{
  if (this > 9)
  {
    return "SRCHMGR_ID_UNKNOWMN";
  }

  else
  {
    return off_29EEAC2F0[this];
  }
}

uint64_t BlueFin::GlMeSrdSearchMgrBase::RestartSATs(uint64_t a1, int **a2)
{
  if (!BlueFin::GlSetBase::HasAll((a1 + 128), a2))
  {
    DeviceFaultNotify("glmesrd_search_mgr_base.cpp", 556, "RestartSATs", "m_otSetSatIdInUse.HasAll(rSetSatidToRestart)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_search_mgr_base.cpp", 556, "m_otSetSatIdInUse.HasAll(rSetSatidToRestart)");
  }

  return BlueFin::GlSetBase::operator|=(a1 + 192, a2);
}

uint64_t BlueFin::GlMeSrdSharedSatSearchMgr::ReleaseSatUnaltered(uint64_t **this, unsigned int a2)
{
  BlueFin::GlMeSrdSatMgr::GetSvid(&v5, this[2], a2);
  BlueFin::GlMeSrdSharedSatSearchMgr::MarkSvidAsScanned(this, v5);

  return BlueFin::GlMeSrdSearchMgrBase::ReleaseSatUnaltered(this, a2);
}

void BlueFin::GlMeSrdSharedSatSearchMgr::~GlMeSrdSharedSatSearchMgr(BlueFin::GlMeSrdSharedSatSearchMgr *this)
{
  BlueFin::GlMeSrdSearchMgrBase::~GlMeSrdSearchMgrBase(this);

  JUMPOUT(0x29C292F70);
}

void BlueFin::GlMeSrdSatTrackMgr::~GlMeSrdSatTrackMgr(BlueFin::GlMeSrdSatTrackMgr *this)
{
  v1 = *(this + 500);
  if (*v1)
  {
    goto LABEL_7;
  }

  v2 = *(this + 4008);
  if (v2 >= 2)
  {
    v3 = v2 - 1;
    v4 = v1 + 1;
    while (!*v4++)
    {
      if (!--v3)
      {
        return;
      }
    }

LABEL_7:
    DeviceFaultNotify("glmesrd_track_mgr.cpp", 65, "~GlMeSrdSatTrackMgr", "m_otSetSatCarrIdInUse.IsEmpty()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_track_mgr.cpp", 65, "m_otSetSatCarrIdInUse.IsEmpty()");
  }
}

void *BlueFin::GlMeSrdSatTrackMgr::AddSatCarr(BlueFin::GlMeSrdSatTrackMgr *this, const BlueFin::GlSatCarrId *a2)
{
  if (((*(**(this + 3) + 352))(*(this + 3)) & 1) != 0 || BlueFin::GlSetBase::Cnt((this + 4000)) >= 0x7B)
  {
    v4 = *a2;
    SignalIndexStr = BlueFin::GlSatCarrId::GetSignalIndexStr(a2);
    GlCustomLog(14, "GlMeSrdSatTrackMgr::AddSatCarr: Sat %u CarrBand %s\n", v4, SignalIndexStr);
    v20 = *(this + 4008);
    memcpy(v24, *(this + 500), 4 * v20);
    v22 = 0;
    v21 = 0;
    v23 = v24[0];
    BlueFin::GlSetIterator::operator++(&v20);
    while (v21 != v20)
    {
      v6 = v22;
      BlueFin::GlSatCarrId::GlSatCarrId(v19, v22);
      v7 = v19[0];
      BlueFin::GlSatCarrId::GlSatCarrId(v18, v6);
      v8 = BlueFin::GlSatCarrId::GetSignalIndexStr(v18);
      GlCustomLog(14, "    [AddSatCarr]InUse: Sat %u CarrBand %s\n", v7, v8);
      BlueFin::GlSetIterator::operator++(&v20);
    }

    v9 = BlueFin::GlSetBase::Cnt((this + 4000));
    GlCustomLog(14, "    [AddSatCarr]InUseCnt: %u of %u\n", v9, 123);
  }

  if (BlueFin::GlSetBase::Cnt((this + 4000)) >= 0x7B)
  {
    v16 = "m_otSetSatCarrIdInUse.Cnt() < NUM_OF_TRACKSNIFF";
    DeviceFaultNotify("glmesrd_track_mgr.cpp", 93, "AddSatCarr", "m_otSetSatCarrIdInUse.Cnt() < NUM_OF_TRACKSNIFF");
    v17 = 93;
    goto LABEL_11;
  }

  v20 = *(this + 3976);
  memcpy(v24, *(this + 496), 4 * v20);
  v22 = 0;
  v21 = 0;
  v23 = v24[0];
  BlueFin::GlSetIterator::operator++(&v20);
  if (v21 == v20)
  {
    v16 = "!it.last()";
    DeviceFaultNotify("glmesrd_track_mgr.cpp", 96, "AddSatCarr", "!it.last()");
    v17 = 96;
LABEL_11:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_track_mgr.cpp", v17, v16);
  }

  v10 = v22;
  BlueFin::GlSetBase::Remove(this + 3968, v22);
  v11 = *a2 + 100 * *(a2 + 4);
  v12 = v11 >> 5;
  v13 = 1 << v11;
  *(*(this + 500) + 4 * v12) |= v13;
  *(*(this + 520) + 4 * v12) |= v13;
  v14 = this + 32 * v10;
  *(v14 + 2) = 0u;
  *(v14 + 3) = 0u;
  *(v14 + 9) = -1027080192;
  return BlueFin::GlMeSrdSatMgr::SetTrackChannel(*(this + 1), a2, v10);
}

uint64_t BlueFin::GlMeSrdSatTrackMgr::AddSat(BlueFin::GlMeSrdSatMgr **this, unsigned int a2)
{
  result = BlueFin::GlMeSrdSatMgr::GetNumSignals(this[1], a2);
  if (result)
  {
    v5 = result;
    v6 = 0;
    do
    {
      SignalIndex = BlueFin::GlMeSrdSatMgr::GetSignalIndex(this[1], a2, v6);
      BlueFin::GlSatCarrId::GlSatCarrId(v8, a2, SignalIndex);
      result = BlueFin::GlMeSrdSatTrackMgr::AddSatCarr(this, v8);
      ++v6;
    }

    while (v5 > v6);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatTrackMgr::RemoveSatCarr(BlueFin::GlMeSrdSatTrackMgr *this, const BlueFin::GlSatCarrId *a2)
{
  v4 = (*(**(this + 3) + 352))(*(this + 3));
  v5 = *a2;
  if (v4 || (v6 = v5 + 100 * *(a2 + 4), v7 = *(*(this + 500) + 4 * (v6 >> 5)), v8 = 1 << (v6 & 0x1F), (v8 & v7) == 0))
  {
    SignalIndexStr = BlueFin::GlSatCarrId::GetSignalIndexStr(a2);
    GlCustomLog(14, "GlMeSrdSatTrackMgr::RemoveSatCarr: Sat %u CarrBand %s\n", v5, SignalIndexStr);
    v23 = *(this + 4008);
    memcpy(v27, *(this + 500), 4 * v23);
    v25 = 0;
    v24 = 0;
    v26 = v27[0];
    BlueFin::GlSetIterator::operator++(&v23);
    while (v24 != v23)
    {
      v10 = v25;
      BlueFin::GlSatCarrId::GlSatCarrId(v22, v25);
      v11 = v22[0];
      BlueFin::GlSatCarrId::GlSatCarrId(v21, v10);
      v12 = BlueFin::GlSatCarrId::GetSignalIndexStr(v21);
      GlCustomLog(14, "    [RemoveSatCarr]InUse: Sat %u CarrBand %s\n", v11, v12);
      BlueFin::GlSetIterator::operator++(&v23);
    }

    v13 = BlueFin::GlSetBase::Cnt((this + 4000));
    GlCustomLog(14, "    [RemoveSatCarr]InUseCnt: %u of %u\n", v13, 123);
    v14 = *a2 + 100 * *(a2 + 4);
    v8 = 1 << (v14 & 0x1F);
    v7 = *(*(this + 500) + 4 * (v14 >> 5));
  }

  if ((v8 & v7) == 0)
  {
    v19 = "m_otSetSatCarrIdInUse.Has(otSatCarrId)";
    DeviceFaultNotify("glmesrd_track_mgr.cpp", 133, "RemoveSatCarr", "m_otSetSatCarrIdInUse.Has(otSatCarrId)");
    v20 = 133;
LABEL_14:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_track_mgr.cpp", v20, v19);
  }

  TrackChannel = BlueFin::GlMeSrdSatMgr::GetTrackChannel(*(this + 1), a2);
  if (TrackChannel > 0x7A || (v16 = TrackChannel >> 5, v17 = TrackChannel & 0x1F, ((*(*(this + 496) + 4 * (TrackChannel >> 5)) >> (TrackChannel & 0x1F)) & 1) != 0))
  {
    v19 = "ucTrackChannel < _DIM(m_aotSatTrackData) && m_otSetTrackChannelsAvailable.Missing(ucTrackChannel)";
    DeviceFaultNotify("glmesrd_track_mgr.cpp", 137, "RemoveSatCarr", "ucTrackChannel < _DIM(m_aotSatTrackData) && m_otSetTrackChannelsAvailable.Missing(ucTrackChannel)");
    v20 = 137;
    goto LABEL_14;
  }

  BlueFin::GlSetBase::Remove(this + 4000, (*a2 + 100 * *(a2 + 4)));
  BlueFin::GlSetBase::Remove(this + 4160, (*a2 + 100 * *(a2 + 4)));
  BlueFin::GlSetBase::Remove(this + 4240, (*a2 + 100 * *(a2 + 4)));
  BlueFin::GlSetBase::Remove(this + 4320, (*a2 + 100 * *(a2 + 4)));
  BlueFin::GlSetBase::Remove(this + 4400, (*a2 + 100 * *(a2 + 4)));
  BlueFin::GlSetBase::Remove(this + 4480, (*a2 + 100 * *(a2 + 4)));
  BlueFin::GlSetBase::Remove(this + 4560, (*a2 + 100 * *(a2 + 4)));
  BlueFin::GlSetBase::Remove(this + 4640, (*a2 + 100 * *(a2 + 4)));
  BlueFin::GlSetBase::Remove(this + 4880, (*a2 + 100 * *(a2 + 4)));
  BlueFin::GlSetBase::Remove(this + 4960, (*a2 + 100 * *(a2 + 4)));
  BlueFin::GlSetBase::Remove(this + 5104, (*a2 + 100 * *(a2 + 4)));
  BlueFin::GlSetBase::Remove(this + 5184, (*a2 + 100 * *(a2 + 4)));
  BlueFin::GlSetBase::Remove(this + 5264, (*a2 + 100 * *(a2 + 4)));
  result = BlueFin::GlSetBase::Remove(this + 5344, (*a2 + 100 * *(a2 + 4)));
  *(*(this + 496) + 4 * v16) |= 1 << v17;
  if (*(this + 7252) == 1)
  {
    *(this + 7252) = 0;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatTrackMgr::RemoveSat(BlueFin::GlMeSrdSatMgr **this, unsigned int a2)
{
  NumSignals = BlueFin::GlMeSrdSatMgr::GetNumSignals(this[1], a2);
  if (NumSignals)
  {
    v5 = NumSignals;
    v6 = 0;
    do
    {
      SignalIndex = BlueFin::GlMeSrdSatMgr::GetSignalIndex(this[1], a2, v6);
      BlueFin::GlSatCarrId::GlSatCarrId(v9, a2, SignalIndex);
      BlueFin::GlMeSrdSatTrackMgr::RemoveSatCarr(this, v9);
      ++v6;
    }

    while (v5 > v6);
  }

  BlueFin::GlSetBase::Remove((this + 510), a2);
  BlueFin::GlSetBase::Remove((this + 634), a2);
  return BlueFin::GlSetBase::Remove((this + 630), a2);
}

uint64_t BlueFin::GlMeSrdSatTrackMgr::SnapToAidingInDutyCycle(uint64_t this, const BlueFin::GlSatCarrId *a2)
{
  v2 = *a2 + 100 * *(a2 + 4);
  v3 = v2 >> 5;
  v4 = v2 & 0x1F;
  if (((*(*(this + 4000) + 4 * v3) >> v4) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_track_mgr.cpp", 491, "SnapToAidingInDutyCycle", "m_otSetSatCarrIdInUse.Has(otSatCarrId)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_track_mgr.cpp", 491, "m_otSetSatCarrIdInUse.Has(otSatCarrId)");
  }

  *(*(this + 4480) + 4 * v3) |= 1 << v4;
  return this;
}

uint64_t BlueFin::GlMeSrdSatTrackMgr::RequestBitAlignmentCrossCheck(uint64_t this, const BlueFin::GlSatCarrId *a2)
{
  v2 = *a2 + 100 * *(a2 + 4);
  v3 = v2 >> 5;
  v4 = v2 & 0x1F;
  if (((*(*(this + 4000) + 4 * v3) >> v4) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_track_mgr.cpp", 499, "RequestBitAlignmentCrossCheck", "m_otSetSatCarrIdInUse.Has(otSatCarrId)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_track_mgr.cpp", 499, "m_otSetSatCarrIdInUse.Has(otSatCarrId)");
  }

  *(*(this + 4960) + 4 * v3) |= 1 << v4;
  return this;
}

BOOL BlueFin::GlMeSrdSatTrackMgr::IsPostFrame(BlueFin::GlMeSrdSatTrackMgr *this, const BlueFin::GlSatCarrId *a2)
{
  v2 = *a2 + 100 * *(a2 + 4);
  if (((*(*(this + 500) + 4 * (v2 >> 5)) >> (v2 & 0x1F)) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_track_mgr.cpp", 679, "IsPostFrame", "m_otSetSatCarrIdInUse.Has(otSatCarrId)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_track_mgr.cpp", 679, "m_otSetSatCarrIdInUse.Has(otSatCarrId)");
  }

  TrackChannel = BlueFin::GlMeSrdSatMgr::GetTrackChannel(*(this + 1), a2);
  if ((*(*(this + 510) + ((*a2 >> 3) & 0x1C)) >> (*a2 & 0x1F)))
  {
    return 0;
  }

  v7 = this + 32 * TrackChannel;
  v9 = *(v7 + 16);
  v8 = v7 + 32;
  if (!v9)
  {
    return 0;
  }

  v10 = *(v8 + 2);
  return v10 == 12 || v10 == 17;
}

BOOL BlueFin::GlMeSrdSatTrackMgr::MeasVsAidingBitTimeNotEqual(BlueFin::GlMeSrdSatTrackMgr *this, double a2, double a3)
{
  if (a2 * 1000.0 <= 0.0)
  {
    if (a2 * 1000.0 >= 0.0)
    {
      v4 = 0;
      goto LABEL_7;
    }

    v3 = -0.5;
  }

  else
  {
    v3 = 0.5;
  }

  v4 = (a2 * 1000.0 + v3);
LABEL_7:
  v5 = a3 * 1000.0;
  if (a3 * 1000.0 <= 0.0)
  {
    if (v5 >= 0.0)
    {
      v7 = 0;
      goto LABEL_13;
    }

    v6 = -0.5;
  }

  else
  {
    v6 = 0.5;
  }

  v7 = (v5 + v6);
LABEL_13:
  v8 = v4 % this;
  v9 = v7 % this;
  if (v4 % this != v7 % this)
  {
    GlCustomLog(14, "GlMeSrdSatTrackMgr::MeasVsAidingBitTimeNotEqual - MeasLs(%lf) AidLs(%lf) MeasLms(%u) AidLms(%u) MsPerBit(%hu) %u != %u\n", a2, a3, v4, v7, this, v4 % this, v7 % this);
  }

  return v8 != v9;
}

uint64_t BlueFin::SendGridCtrlRpc(BlueFin *this, const BlueFin::GlSignalId *a2, BlueFin::GlMeSrdTransaction *a3, unsigned int a4)
{
  EswSignalIndex = BlueFin::GlMeSrdAsicUnitConverter::GetEswSignalIndex(this);
  if (a4 > 0xE)
  {
    if (a4 != 255)
    {
      DeviceFaultNotify("glmesrd_track_mgr.cpp", 1485, "SendGridCtrlRpc", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_track_mgr.cpp", 1485, "0");
    }

    v10 = 0;
  }

  else
  {
    v8 = 4 * (a4 & 0x1F);
    v9 = v8 | 0x100;
    v10 = v8 | 0x80;
    if (((1 << a4) & 0x62DA) != 0)
    {
      v10 = v9;
    }
  }

  v14 = v10 | 0x2000;
  v11 = (*(**(a2 + 3) + 48))(*(a2 + 3));
  v12 = (*(*v11 + 64))(v11);
  return (*(*v12 + 128))(v12, a2, a3, EswSignalIndex, &v14);
}

uint64_t BlueFin::GlMeSrdAsicConfig::SetRfParams(uint64_t this, int a2, char a3, char a4)
{
  *(this + 1412) = a2;
  *(this + 1416) = a3;
  *(this + 2196) = a4;
  return BlueFin::GlMeSrdAsicConfig::UpdatePerformanceModes(this);
}

uint64_t BlueFin::GlMeSrdAsicConfig::IsFeatureSupported(int a1, int a2)
{
  if (a1 <= 6)
  {
    if (a1 > 3)
    {
      if (a1 != 4)
      {
        if (a1 != 5)
        {
          return 0;
        }

        v3 = a2 & 0xF000FFFE;
        v4 = a2 == 872480783 || (a2 & 0xF000FFFF) == 805306385;
        goto LABEL_53;
      }

      goto LABEL_23;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        if (a1 == 3)
        {
          return (a2 & 0xF000FFFE) - 805306382 < 7 || (a2 & 0xF0FFFFFE) == 805371918;
        }

LABEL_67:
        DeviceFaultNotify("glmesrd_asic_config.cpp", 875, "IsFeatureSupported", "0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", 875, "0");
      }

LABEL_23:
      v3 = a2 & 0xF000FFFE;
      v4 = (a2 & 0xF000FFFE) == 0x3000000E || v3 == 805306384;
LABEL_53:
      v12 = v4;
      if (v3 == 805306388)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      if (v3 == 805306386)
      {
        return 1;
      }

      else
      {
        return v13;
      }
    }

    result = 0;
    if ((a2 & 0xF000FFFE) == 0x30000012 || (a2 & 0xF000FFFE) == 0x30000014)
    {
      return result;
    }

    result = 0;
    if (a2 <= 922746896)
    {
      if (a2 != 805502985)
      {
        if (a2 == 922746895)
        {
          return result;
        }

LABEL_64:
        v5 = a2 & 0xF000FFFF;
        v6 = (a2 & 0xF000FFFF) == 805306383;
        v7 = 805306385;
        return v6 || v5 == v7;
      }
    }

    else
    {
      if (a2 == 922746897 || a2 == 922812431)
      {
        return result;
      }

      if (a2 != 1006829577)
      {
        goto LABEL_64;
      }
    }

    return 1;
  }

  if (a1 > 9)
  {
    if (a1 != 10 && a1 != 11 && a1 != 12)
    {
      goto LABEL_67;
    }

    v5 = a2 & 0xF000FFFE;
    v6 = (a2 & 0xF000FFFE) == 805306386;
    v7 = 805306388;
    return v6 || v5 == v7;
  }

  if (a1 != 7)
  {
    if (a1 != 8)
    {
      v3 = a2 & 0xF000FFFE;
      v4 = (a2 & 0xF000FFFF) == 805306385;
      goto LABEL_53;
    }

    return (a2 & 0xF0FFFFFE) == 805371918;
  }

  result = 1;
  if ((a2 & 0xF000FFFE) != 0x30000012)
  {
    v11 = (a2 & 0xF0FFFFFE) == 0x30000010 || (a2 & 0xF0FFFFFF) == 805371918 || (a2 & 0xF0FFFFFE) == 822018064;
    return (a2 & 0xF000FFFE) == 0x30000014 || v11;
  }

  return result;
}

const char *BlueFin::GlMeSrdAsicConfig::AsicVersionToName(BlueFin::GlMeSrdAsicConfig *this, int a2)
{
  v2 = "Unknown";
  if (a2 > 822018066)
  {
    v5 = "FMNW B0 ASIC";
    v6 = "FMNW FF ASIC";
    if (a2 != 838795285)
    {
      v6 = "Unknown";
    }

    if (a2 == 838729749)
    {
      v7 = "FMNW FE ASIC";
    }

    else
    {
      v7 = v6;
    }

    if (a2 != 822083605)
    {
      v5 = v7;
    }

    if (a2 == 822018069)
    {
      v2 = "MNW FF ASIC";
    }

    if (a2 == 822018068)
    {
      v2 = "MNW FF FPGA";
    }

    if (a2 == 822018067)
    {
      v2 = "MNW FF ASIC";
    }

    if (a2 <= 822083604)
    {
      return v2;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v3 = "MNW FF FPGA";
    if (a2 != 822018066)
    {
      v3 = "Unknown";
    }

    if (a2 == 821952533)
    {
      v3 = "MNW FE ASIC";
    }

    if (a2 == 805306389)
    {
      v3 = "MNW B0 ASIC";
    }

    if (a2 == 805306388)
    {
      v2 = "MNW B0 FPGA";
    }

    if (a2 == 805306387)
    {
      v2 = "MNW A0 ASIC";
    }

    if (a2 == 805306386)
    {
      v2 = "MNW A0 FPGA";
    }

    if (a2 <= 805306388)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

void BlueFin::GlMeSrdAsicConfig::SetHwAsicVersion(BlueFin::GlMeSrdAsicConfig *this, int a2)
{
  *(this + 3) = a2;
  v3 = (*(*this + 184))(this);
  if (*(this + 1212) == 1)
  {
    v4 = *(this + 304);
  }

  else
  {
    v4 = v3;
  }

  *(this + 4) = v4;
  v17 = &v19;
  v18 = 2;
  v19 = 0;
  for (i = 1; i != 13; ++i)
  {
    if (BlueFin::GlMeSrdAsicConfig::IsFeatureSupported(i, v4))
    {
      *v17 |= 1 << i;
    }

    else
    {
      BlueFin::GlSetBase::Remove(&v17, i);
    }
  }

  BlueFin::GlSetBase::operator=(this + 1616, &v17);
  *(this + 1628) = v19;
  v6 = *(this + 7);
  if (!v6)
  {
    v15 = "m_ulFreqHz > 0";
    DeviceFaultNotify("glmesrd_asic_config.cpp", 1028, "SetHwAsicVersion", "m_ulFreqHz > 0");
    v16 = 1028;
    goto LABEL_56;
  }

  *(this + 36) = 20;
  *(this + 8) = 0x6400100000006ELL;
  v7 = *(this + 3);
  if (v7 == 0x7FFFFFFF)
  {
    *(this + 40) = xmmword_298A33C40;
    *(this + 17) = 1179666;
    *(this + 36) = 0;
    *(this + 268) = 1;
    *(this + 68) = -1055307858;
    *(this + 276) = xmmword_298A33D44;
    *(this + 292) = unk_298A33D54;
    *(this + 308) = xmmword_298A33D64;
    *(this + 324) = 0xBF0CCCCD3EB33333;
    goto LABEL_50;
  }

  *(this + 1488) = 0;
  if (v4 > 822018066)
  {
    if (v4 > 822083604)
    {
      if (v4 == 822083605 || v4 == 838795285)
      {
        goto LABEL_33;
      }

      v9 = 838729749;
    }

    else
    {
      if (v4 == 822018067)
      {
        goto LABEL_33;
      }

      if (v4 == 822018068)
      {
        goto LABEL_25;
      }

      v9 = 822018069;
    }

    if (v4 != v9)
    {
      goto LABEL_59;
    }

LABEL_33:
    if (v6 == 52000000 || v6 == 26000000)
    {
      v12 = (&unk_298A33C30 + 8 * ((v7 & 0xF000FFFE) == 805306386));
      if (*(this + 546) == 4)
      {
        v12 = (&unk_298A33C20 + 8 * ((v7 & 0xF000FFFE) == 805306386));
      }

      v13 = *v12;
      *(this + 5) = *v12;
      v11 = v13 / 3.0;
    }

    else
    {
      if (v6 != 10000000)
      {
        v15 = "0";
        DeviceFaultNotify("glmesrd_asic_config.cpp", 1144, "SetHwAsicVersion", "0");
        v16 = 1144;
        goto LABEL_56;
      }

      *(this + 5) = 0x419796AA70000000;
      v11 = 32979166.7;
    }

    *(this + 6) = v11;
    *(this + 358) = 268441866;
    *(this + 1480) = 1;
    *(this + 1493) = BlueFin::GlMeSrdAsicConfig::Is4753A3OrLater(v4);
    *(this + 1602) = BlueFin::GlMeSrdAsicConfig::PlatformSupportsHealthProfile(v4);
    *(this + 16) = 211;
    *(this + 34) = 16;
    if (BlueFin::GlMeObjFactory::m_ptObjFactory)
    {
      v14 = *(BlueFin::GlMeObjFactory::m_ptObjFactory + 44);
    }

    else
    {
      LOWORD(v14) = 100;
    }

    *(this + 35) = v14;
    *(this + 36) = 0;
    *(this + 268) = 1;
    *(this + 22) = 0;
    BlueFin::GlMeSrdAsicConfig::ComputeSignalDelays(this);
    goto LABEL_50;
  }

  if (v4 <= 805306388)
  {
    if (v4 == 805306386)
    {
      goto LABEL_25;
    }

    if (v4 != 805306387)
    {
      v8 = 805306388;
      goto LABEL_24;
    }

    goto LABEL_33;
  }

  if (v4 == 805306389 || v4 == 821952533)
  {
    goto LABEL_33;
  }

  v8 = 822018066;
LABEL_24:
  if (v4 != v8)
  {
LABEL_59:
    v15 = "0";
    DeviceFaultNotify("glmesrd_asic_config.cpp", 1659, "SetHwAsicVersion", "0");
    v16 = 1659;
    goto LABEL_56;
  }

LABEL_25:
  if (v6 != 10000000)
  {
    if (v6 == 52000000 || v6 == 26000000)
    {
      v10 = 98962500.0;
      goto LABEL_45;
    }

    v15 = "0";
    DeviceFaultNotify("glmesrd_asic_config.cpp", 1195, "SetHwAsicVersion", "0");
    v16 = 1195;
LABEL_56:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", v16, v15);
  }

  v10 = 98937500.0;
LABEL_45:
  *(this + 5) = v10;
  *(this + 6) = v10 / 3.0;
  *(this + 358) = 268441866;
  *(this + 1480) = 1;
  *(this + 1493) = BlueFin::GlMeSrdAsicConfig::Is4753A3OrLater(v4);
  *(this + 1602) = BlueFin::GlMeSrdAsicConfig::PlatformSupportsHealthProfile(v4);
  *(this + 8) = 0x1600100000006CLL;
  *(this + 36) = 2;
  *(this + 268) = 1;
  *(this + 22) = 1;
  if ((*(*this + 40))(this))
  {
    BlueFin::GlMeSrdAsicConfig::ComputeSignalDelays(this);
  }

  else
  {
    *(this + 68) = 1094713344;
    *(this + 276) = 0u;
    *(this + 292) = 0u;
    *(this + 308) = 0u;
    *(this + 324) = 0;
    *(this + 84) = 0;
    (*(*this + 1296))(this, 5.5);
    *(this + 43) = 1085276160;
    *(this + 83) = 1104150528;
  }

  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xFF);
  }

LABEL_50:
  if (*(this + 35) >= 0x65u)
  {
    v15 = "m_usMaxNumParallelTrks <= GlMeSrdAsicConfigConstants::DEFAULT_MAX_NUM_PARALLEL_TRKS";
    DeviceFaultNotify("glmesrd_asic_config.cpp", 1681, "SetHwAsicVersion", "m_usMaxNumParallelTrks <= GlMeSrdAsicConfigConstants::DEFAULT_MAX_NUM_PARALLEL_TRKS");
    v16 = 1681;
    goto LABEL_56;
  }

  if (*(this + 1204) == 1)
  {
    GlCustomLog(12, "GlMeSrdAsicConfig::ApplyDebugSettings:Overwritting Sniff Channels from %u to %u\n", *(this + 36), *(this + 1205));
    *(this + 36) = *(this + 1205);
  }
}

uint64_t BlueFin::GlMeSrdAsicConfig::Is4753A3OrLater(BlueFin::GlMeSrdAsicConfig *this)
{
  v1 = this;
  result = 0;
  if (v1 > 805502979)
  {
    if ((v1 - 805502980) < 2 || v1 == 872480775 || v1 == 939589639)
    {
      return result;
    }

    return 1;
  }

  v3 = (v1 - 805371910) > 3 || v1 == 805371911;
  v4 = v1 - 805437444;
  if (v3 && v4 >= 2)
  {
    return 1;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdAsicConfig::PlatformSupportsHealthProfile(BlueFin::GlMeSrdAsicConfig *this)
{
  v1 = this;
  result = 0;
  if (v1 > 872480774)
  {
    if (v1 > 939589638)
    {
      if (v1 == 939589639)
      {
        return result;
      }

      v5 = 939720711;
    }

    else
    {
      if (v1 == 872480775)
      {
        return result;
      }

      v5 = 872611847;
    }

    if (v1 != v5)
    {
      return 1;
    }
  }

  else if (((v1 - 805371910) > 3 || v1 == 805371911) && v1 != 805502982)
  {
    return 1;
  }

  return result;
}

float BlueFin::GlMeSrdAsicConfig::ComputeSignalDelays(BlueFin::GlMeSrdAsicConfig *this)
{
  v2 = *(this + 546);
  v3 = 0.0;
  v4 = 0.0;
  if (v2 != 4)
  {
    v3 = -507.07;
    *(this + 43) = 0xC41323FFC41506EBLL;
    v4 = -564.42;
  }

  v5 = *(this + 85);
  *(this + 268) = 1;
  *(this + 68) = v3;
  *(this + 83) = v4;
  if (*(this + 547) != 4)
  {
    if (*(this + 22) != 1)
    {
      v3 = v3 + -13.5;
      *(this + 68) = v3;
      *(this + 276) = xmmword_298A33C50;
      *(this + 292) = 0xC0000000BF800000;
      *(this + 300) = 0u;
      *(this + 316) = 0u;
      *(this + 83) = v4 + -44.2;
      v8 = *(this + 86) + -66.4;
      v7 = *(this + 87) + -17.3;
      goto LABEL_13;
    }

    v8 = *(this + 86);
    v7 = *(this + 87);
    goto LABEL_12;
  }

  v6 = flt_298A33BB8[v2 == 0];
  v7 = -(v6 - dbl_298A33C60[v2 == 0] * 299792458.0);
  if (v2)
  {
    v8 = -v6;
    if (v2 == 4)
    {
      v8 = v8 + -67.6;
    }
  }

  else
  {
    v4 = v4 + -47.2;
    *(this + 83) = v4;
    v7 = v7 + -21.5;
    v8 = -694.25;
  }

  if (*(this + 22))
  {
LABEL_12:
    *(this + 324) = 0;
    *(this + 292) = 0u;
    *(this + 308) = 0u;
    *(this + 276) = 0u;
    v3 = v3 + 32.0;
    *(this + 68) = v3;
    *(this + 83) = v4 + 13.0;
    v8 = v8 + -6.0;
    v7 = v7 + 37.0;
  }

LABEL_13:
  *(this + 86) = v5 + v8;
  *(this + 85) = v5 + v8;
  *(this + 87) = v5 + v7;
  if ((*(this + 3) & 0xF000FFFE) == 0x30000014)
  {
    *(this + 276) = xmmword_298A33D7C;
    *(this + 292) = unk_298A33D8C;
    *(this + 308) = xmmword_298A33D9C;
    *(this + 324) = 0x3F451EB83ECCCCCDLL;
    *(this + 68) = v3 + 17.2;
  }

  *v9.i32 = BlueFin::GlMeSrdAsicConfig::GetNotchGroupDelayPerBand(this, 1, 0);
  *(this + 68) = *(this + 68) - *v9.i32;
  *(this + 332) = vsubq_f32(*(this + 332), vdupq_lane_s32(v9, 0));
  *(this + 87) = *(this + 87) - *v9.i32;
  v10 = 249;
  for (i = 276; i != 332; i += 4)
  {
    *(this + i) = BlueFin::GlMeSrdAsicConfig::GetNotchGroupDelayPerBand(this, 2, v10++) + *(this + i);
  }

  *(this + 83) = BlueFin::GlMeSrdAsicConfig::GetNotchGroupDelayPerBand(this, 3, 0) + *(this + 83);
  *(this + 85) = BlueFin::GlMeSrdAsicConfig::GetNotchGroupDelayPerBand(this, 4, 0) + *(this + 85);
  *(this + 86) = BlueFin::GlMeSrdAsicConfig::GetNotchGroupDelayPerBand(this, 5, 0) + *(this + 86);
  result = BlueFin::GlMeSrdAsicConfig::GetNotchGroupDelayPerBand(this, 4, 0) + *(this + 87);
  *(this + 87) = result;
  return result;
}

float BlueFin::GlMeSrdAsicConfig::GetNotchGroupDelayPerBand(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = 0;
  v19 = *MEMORY[0x29EDCA608];
  v6 = (a1 + 76);
  v7 = 24;
  do
  {
    if (*v6 != a2)
    {
      goto LABEL_6;
    }

    if (v6[1] >= 0xFu)
    {
      v13 = "m_otNotchFilters[i].ucLoopCoefficient < 15";
      DeviceFaultNotify("glmesrd_asic_config.cpp", 5297, "GetNotchGroupDelayPerBand", "m_otNotchFilters[i].ucLoopCoefficient < 15");
      v14 = 5297;
      goto LABEL_15;
    }

    if (v5 >= 2)
    {
      v13 = "ucNotchesEnabled < 2";
      DeviceFaultNotify("glmesrd_asic_config.cpp", 5298, "GetNotchGroupDelayPerBand", "ucNotchesEnabled < 2");
      v14 = 5298;
LABEL_15:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", v14, v13);
    }

    *&v15[8 * v5++] = *v6;
LABEL_6:
    v6 += 8;
    --v7;
  }

  while (v7);
  if (!v5)
  {
    return 0.0;
  }

  NotchGroupDelayMinnow = BlueFin::GlMeSrdAsicConfig::GetNotchGroupDelayMinnow(a2, v15[1], v16, 0, a3);
  v9 = 0.0;
  v10 = NotchGroupDelayMinnow + 0.0;
  if (v5 != 1)
  {
    v9 = BlueFin::GlMeSrdAsicConfig::GetNotchGroupDelayMinnow(v4, v17, v18, 1, v3);
  }

  v11 = v10 + v9;
  GlCustomLog(14, "GetNotchGroupDelayPerBand %d - %.1f\n", v4, v11);
  return v11;
}

uint64_t BlueFin::GlMeSrdAsicConfig::SetL1PerfMode(uint64_t result, int a2)
{
  if (a2 > 5 || a2 == 1)
  {
    DeviceFaultNotify("glmesrd_asic_config.cpp", 2089, "SetL1PerfMode", "(etL1PerfMode <= RADIO_PERF_AUTO) && (etL1PerfMode != RADIO_PERF_LPA)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", 2089, "(etL1PerfMode <= RADIO_PERF_AUTO) && (etL1PerfMode != RADIO_PERF_LPA)");
  }

  *(result + 2184) = a2;
  return result;
}

uint64_t BlueFin::GlMeSrdAsicConfig::SetL5DrPerfMode(uint64_t result, unsigned int a2)
{
  if (a2 >= 2 && a2 != 4)
  {
    DeviceFaultNotify("glmesrd_asic_config.cpp", 2095, "SetL5DrPerfMode", "(etL5DrPerfMode == RADIO_PERF_LP) || (etL5DrPerfMode == RADIO_PERF_LPA) || (etL5DrPerfMode == RADIO_PERF_VLP)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", 2095, "(etL5DrPerfMode == RADIO_PERF_LP) || (etL5DrPerfMode == RADIO_PERF_LPA) || (etL5DrPerfMode == RADIO_PERF_VLP)");
  }

  *(result + 2188) = a2;
  return result;
}

uint64_t BlueFin::GlMeSrdAsicConfig::SetL5ArPerfMode(uint64_t result, unsigned int a2)
{
  if (a2 > 5 || ((1 << a2) & 0x25) == 0)
  {
    DeviceFaultNotify("glmesrd_asic_config.cpp", 2101, "SetL5ArPerfMode", "(etL5ArPerfMode == RADIO_PERF_LP) || (etL5ArPerfMode == RADIO_PERF_AUTO) || (etL5ArPerfMode == RADIO_PERF_PM)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", 2101, "(etL5ArPerfMode == RADIO_PERF_LP) || (etL5ArPerfMode == RADIO_PERF_AUTO) || (etL5ArPerfMode == RADIO_PERF_PM)");
  }

  *(result + 2192) = a2;
  return result;
}

uint64_t BlueFin::GlMeSrdAsicConfig::GetParam(BlueFin::GlMeSrdAsicConfig *this, const char *a2, BOOL *a3, BOOL *a4, const char **a5)
{
  v7 = a2;
  __endptr = 0;
  v9 = strtoul(this, &__endptr, 0);
  v10 = __endptr;
  *a4 = __endptr;
  if (v10 == this || *v10 != v7)
  {
    result = 0;
    *a4 = this;
  }

  else
  {
    *a3 = v9 != 0;
    return 1;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdAsicConfig::GetParam(BlueFin::GlMeSrdAsicConfig *this, const char *a2, int *a3, int *a4, const char **a5)
{
  v7 = a2;
  v8 = *this;
  if (v8 == 45)
  {
    v9 = this + 1;
  }

  else
  {
    v9 = this;
  }

  __endptr = 0;
  v10 = strtoul(v9, &__endptr, 0);
  v11 = __endptr;
  *a4 = __endptr;
  if (v11 == v9 || *v11 != v7)
  {
    result = 0;
    *a4 = v9;
  }

  else
  {
    if (v8 == 45)
    {
      v12 = -v10;
    }

    else
    {
      v12 = v10;
    }

    *a3 = v12;
    return 1;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdAsicConfig::GetDebugMiIntervalParams(BlueFin::GlMeSrdAsicConfig *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (*(this + 1206) == 1)
  {
    *a2 = *(this + 1207);
    *a3 = *(this + 1208);
    v3 = *(this + 1206);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t BlueFin::GlMeSrdAsicConfig::GetDebugGeofence(BlueFin::GlMeSrdAsicConfig *this, BOOL *a2, int *a3, int *a4, int *a5, int *a6, int *a7, BOOL *a8)
{
  if (*(this + 1220) == 1)
  {
    *a2 = *(this + 1221);
    *a3 = *(this + 306);
    *a4 = *(this + 307);
    *a5 = *(this + 308);
    *a6 = *(this + 309);
    *a7 = *(this + 310);
    *a8 = *(this + 1244);
    v8 = *(this + 1220);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t BlueFin::GlMeSrdAsicConfig::GetDebugHH43AagcFixedAtt(BlueFin::GlMeSrdAsicConfig *this, BOOL *a2, BOOL *a3, BOOL *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10)
{
  *a2 = *(this + 1300);
  *a3 = *(this + 1301);
  v10 = *(this + 1302);
  *a4 = v10;
  *a5 = *(this + 326);
  *a6 = *(this + 327);
  *a7 = *(this + 328);
  *a8 = *(this + 329);
  *a9 = *(this + 330);
  *a10 = *(this + 331);
  if (*(this + 1300))
  {
    v11 = 1;
  }

  else
  {
    v11 = *(this + 1301) | v10;
  }

  return v11 & 1;
}

uint64_t BlueFin::GlMeSrdAsicConfig::GetDebugHH43DagcFixedAtt(BlueFin::GlMeSrdAsicConfig *this, BOOL *a2, BOOL *a3, BOOL *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9, unsigned int *a10)
{
  *a2 = *(this + 1328);
  *a3 = *(this + 1329);
  v10 = *(this + 1330);
  *a4 = v10;
  *a5 = *(this + 333);
  *a6 = *(this + 334);
  *a7 = *(this + 335);
  *a8 = *(this + 336);
  *a9 = *(this + 337);
  *a10 = *(this + 338);
  if (*(this + 1328))
  {
    v11 = 1;
  }

  else
  {
    v11 = *(this + 1329) | v10;
  }

  return v11 & 1;
}

uint64_t BlueFin::GlMeSrdAsicConfig::Deserialize(BlueFin::GlMeSrdAsicConfig *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 73 || *(a2 + 12) - 19 <= 0xFFFFFFED)
  {
    v5 = "0";
    DeviceFaultNotify("glmesrd_asic_config.cpp", 4303, "Deserialize", "0");
    v6 = 4303;
LABEL_25:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", v6, v5);
  }

  *(this + 20) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 21) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 3) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 4) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 2) = BlueFin::GlSysLogEntry::GetS32(a2);
  *(this + 1424) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 1425) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 1426) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 1427) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 1428) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 1429) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 1430) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 1432) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 1433) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 1434) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 1435) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 361) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 1448) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 363) = BlueFin::GlSysLogEntry::GetU32(a2);
  if (*(a2 + 12) >= 2u)
  {
    *(this + 1456) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 1457) = BlueFin::GlSysLogEntry::GetU8(a2);
    if (*(a2 + 12) >= 3u)
    {
      *(this + 1483) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
      if (*(a2 + 12) >= 4u)
      {
        *(this + 1484) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
        if (*(a2 + 12) >= 5u)
        {
          *(this + 1485) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
          if (*(a2 + 12) >= 6u)
          {
            *(this + 1488) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
            *(this + 1489) = BlueFin::GlSysLogEntry::GetU8(a2);
            if (*(a2 + 12) >= 7u)
            {
              *(this + 736) = BlueFin::GlSysLogEntry::GetS16(a2);
              *(this + 737) = BlueFin::GlSysLogEntry::GetS16(a2);
              if (*(a2 + 12) >= 8u)
              {
                *(this + 738) = BlueFin::GlSysLogEntry::GetS16(a2);
                *(this + 739) = BlueFin::GlSysLogEntry::GetS16(a2);
                if (*(a2 + 12) >= 9u)
                {
                  *(this + 1480) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
                  if (*(a2 + 12) >= 0xAu)
                  {
                    *(this + 1481) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
                    if (*(a2 + 12) >= 0xBu)
                    {
                      *(this + 1482) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  *(this + 1458) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 1459) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 730) = BlueFin::GlSysLogEntry::GetU16(a2);
  *(this + 366) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 367) = BlueFin::GlSysLogEntry::GetU32(a2);
  if (*(a2 + 12) >= 0xCu)
  {
    *(this + 1490) = BlueFin::GlSysLogEntry::GetU8(a2);
    if (*(a2 + 12) >= 0xDu)
    {
      *(this + 1491) = BlueFin::GlSysLogEntry::GetU8(a2);
      if (*(a2 + 12) >= 0xEu)
      {
        *(this + 1493) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
        if (*(a2 + 12) >= 0xFu)
        {
          *(this + 1601) = BlueFin::GlSysLogEntry::GetU8(a2);
          if (*(a2 + 12) >= 0x10u)
          {
            *(this + 2180) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
            if (*(a2 + 12) >= 0x11u)
            {
              *(this + 1492) = BlueFin::GlSysLogEntry::GetU8(a2);
              if (*(a2 + 12) >= 0x12u)
              {
                *(this + 1212) = BlueFin::GlSysLogEntry::GetU8(a2) != 0;
                *(this + 304) = BlueFin::GlSysLogEntry::GetU32(a2);
              }
            }
          }
        }
      }
    }
  }

  if (*(a2 + 11) != *(a2 + 10))
  {
    v5 = "otEntry.DataSize() == otEntry.ReadIdx()";
    DeviceFaultNotify("glmesrd_asic_config.cpp", 4418, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    v6 = 4418;
    goto LABEL_25;
  }

  return 1;
}

uint64_t BlueFin::GlMeSrdAsicConfig::ConfigureCvecPerTrkMode(BlueFin::GlMeSrdAsicConfig *this)
{
  BlueFin::GlMeSrdAsicConfig::VERIFY(this, 1);
  if ((*(*this + 264))(this))
  {
    return 1;
  }

  v3 = *(*this + 256);

  return v3(this);
}

double BlueFin::GlMeSrdAsicConfig::GetSearchFudgeFactorDB(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12) & 0xF000FFFE;
  if (v2 != 805306388 && v2 != 805306386)
  {
    return 0.0;
  }

  LODWORD(result) = -1.0;
  if (*(a2 + 4) != 2)
  {
    return 0.0;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdAsicConfig::GetSignalSupported(uint64_t this, unsigned __int8 *a2)
{
  for (i = 0; i != 7; ++i)
  {
    a2[i] = *(this + 1436 + i);
  }

  return this;
}

uint64_t BlueFin::GlMeSrdAsicConfig::SetSignalSupported(uint64_t this, const unsigned __int8 *a2)
{
  for (i = 0; i != 7; ++i)
  {
    *(this + 1436 + i) = a2[i];
  }

  return this;
}

uint64_t BlueFin::GlMeSrdAsicConfig::GetMILengthsMs(BlueFin::GlMeSrdAsicConfig *this, int a2)
{
  v6 = 1;
  v5 = 1;
  (*(*this + 216))(this, &v6, &v5);
  if (a2)
  {
    v3 = &v5;
  }

  else
  {
    v3 = &v6;
  }

  return (1000 * *v3) & 0xFFF8;
}

uint64_t BlueFin::GlMeSrdAsicConfig::SetBdsSignalType(uint64_t this, const unsigned __int8 *a2)
{
  for (i = 0; i != 63; ++i)
  {
    *(this + 597 + i) = a2[i];
  }

  return this;
}

uint64_t BlueFin::GlMeSrdAsicConfig::GetBdsSignalType(uint64_t this, unsigned __int8 *a2)
{
  for (i = 0; i != 63; ++i)
  {
    a2[i] = *(this + 597 + i);
  }

  return this;
}

uint64_t BlueFin::GlMeSrdAsicConfig::SetGpsSignalType(uint64_t this, const unsigned __int8 *a2)
{
  for (i = 0; i != 32; ++i)
  {
    *(this + 565 + i) = a2[i];
  }

  return this;
}

uint64_t BlueFin::GlMeSrdAsicConfig::GetGpsSignalType(uint64_t this, unsigned __int8 *a2)
{
  for (i = 0; i != 32; ++i)
  {
    a2[i] = *(this + 565 + i);
  }

  return this;
}

void *BlueFin::GlMeSrdAsicConfig::SetRadioRegistersAddr(BlueFin::GlMeSrdAsicConfig *this, unsigned int *a2)
{
  v3 = *a2;
  v4 = 2 * v3;
  v5 = 6 * v3;
  if (*(a2 + 1) == 1)
  {
    v5 = v4;
  }

  if (v5 >= 0x1ED)
  {
    DeviceFaultNotify("glmesrd_asic_config.cpp", 5242, "SetRadioRegistersAddr", "bytes_num <= sizeof(m_aulRadioRegsAddr)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", 5242, "bytes_num <= sizeof(m_aulRadioRegsAddr)");
  }

  v6 = this + 676;

  return memcpy(v6, a2, v5 + 8);
}

void *BlueFin::GlMeSrdAsicConfig::GetRadioRegistersAddr(BlueFin::GlMeSrdAsicConfig *this, unsigned int *__dst, unsigned int *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 *a7)
{
  *a4 = *(this + 676);
  *a5 = *(this + 677);
  *a7 = *(this + 678);
  *a6 = *(this + 679);
  *a3 = *(this + 170);
  v7 = *a4;
  v8 = 2 * v7;
  v9 = 6 * v7;
  if (*a5 == 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return memcpy(__dst, this + 684, v10);
}

float BlueFin::GlMeSrdAsicConfig::GetNotchGroupDelayMinnow(int a1, unsigned __int8 a2, int a3, int a4, int a5)
{
  v6 = 0.0;
  if (a1 > 3)
  {
    v7 = 99326000.0;
  }

  else
  {
    v7 = 16554000.0;
    if (a1 == 2)
    {
      v6 = a5 * 562500.0;
    }
  }

  if (a4)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 2.0;
  }

  v9 = 1.0 - ldexpf(1.0, a2 - 14);
  v10 = v9 + 1.0;
  v11 = ((a3 - v6) * 6.2832) / v7;
  v12 = __sincosf_stret(v11);
  v13 = __sincosf_stret(v11 + v11);
  return ((v8 + ((((v13.__sinval - (v10 * v12.__sinval)) * ((v13.__sinval + v13.__sinval) - (v10 * v12.__sinval))) + (((v13.__cosval * -2.0) + (v10 * v12.__cosval)) * (-(v9 - (v10 * v12.__cosval)) - v13.__cosval))) / (((v13.__sinval - (v10 * v12.__sinval)) * (v13.__sinval - (v10 * v12.__sinval))) + ((-(v9 - (v10 * v12.__cosval)) - v13.__cosval) * (-(v9 - (v10 * v12.__cosval)) - v13.__cosval))))) * 299790000.0) / v7;
}

uint64_t BlueFin::GlMeSrdAsicConfig::SetLnaMask(uint64_t this, int a2)
{
  *(this + 1416) = a2;
  if (a2)
  {
    *(this + 23) = 1;
  }

  return this;
}

uint64_t BlueFin::GlMeSrdAsicConfig::GetMeasurementPeriodCorrectionLimits(BlueFin::GlMeSrdAsicConfig *this, __int16 *a2, __int16 *a3)
{
  result = BlueFin::GlMeSrdAsicConfig::VERIFY(this, 1);
  *a2 = *(this + 736);
  *a3 = *(this + 737);
  return result;
}

uint64_t BlueFin::GlMeSrdAsicConfig::SetSwTrackAgc(uint64_t this, char a2)
{
  *(this + 1604) = 1;
  *(this + 1603) = a2;
  return this;
}

uint64_t BlueFin::GlMeSrdAsicConfig::SetL5ExtBias(uint64_t this, float a2)
{
  if ((*(this + 269) & 1) == 0)
  {
    *(this + 340) = a2;
  }

  return this;
}

uint64_t BlueFin::GlMeSrdAsicConfig::SetL5DeltaExtBias(uint64_t this, float a2)
{
  if ((*(this + 270) & 1) == 0)
  {
    *(this + 340) = a2;
  }

  return this;
}

uint64_t BlueFin::GlMeSrdAsicConfig::SetPpsParam(uint64_t this, char a2, char a3, int a4, int a5, int a6)
{
  *(this + 660) = a2;
  *(this + 661) = a3;
  *(this + 664) = a4;
  *(this + 668) = a5;
  *(this + 672) = a6;
  return this;
}

uint64_t BlueFin::GlMeSrdAsicConfig::GetPpsParam(uint64_t this, BOOL *a2, BOOL *a3, int *a4, unsigned int *a5, unsigned int *a6)
{
  *a2 = *(this + 660);
  *a3 = *(this + 661);
  *a4 = *(this + 664);
  *a5 = *(this + 668);
  *a6 = *(this + 672);
  return this;
}

uint64_t BlueFin::GlSvIdSet::setSvIdLimits(BlueFin::GlSvIdSet *this)
{
  ULong = BlueFin::GlSetBase::GetULong(this, 0);
  result = BlueFin::GlSetBase::SetULong(this, 0, ULong & 0xFFFFFFFE);
  v4 = (32 * (*(this + 8) & 0x3F) - 1);
  if (v4 >= 0xBE)
  {
    v5 = 189;
    v6 = -67;
    do
    {
      v7 = v6 & 0x1F;
      if ((v6 & 0x1F) != 0)
      {
        v8 = BlueFin::GlSetBase::GetULong(this, (v5 >> 5));
        result = BlueFin::GlSetBase::SetULong(this, (v5 >> 5), v8 & ~(-1 << v7));
        LOWORD(v5) = v5 - v7;
      }

      else
      {
        result = BlueFin::GlSetBase::SetULong(this, (v5 >> 5), 0);
      }

      v6 = v5 + 32;
      v5 = (v5 + 32);
    }

    while (v5 < v4);
  }

  return result;
}

void BlueFin::GlMeSrdAsicinit::~GlMeSrdAsicinit(BlueFin::GlMeSrdAsicinit *this)
{
  *this = &unk_2A1F0B160;
  BlueFin::GlEventPump::RemoveActive(*(this + 17), this);
}

{
  BlueFin::GlMeSrdAsicinit::~GlMeSrdAsicinit(this);

  JUMPOUT(0x29C292F60);
}

uint64_t BlueFin::QHsm::dispatch(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 32);
  result = *(a1 + 8);
  *(a1 + 32) = result;
  do
  {
    v6 = 0;
    if (BlueFin::patch_dispatch(result, a1, a2, &v6))
    {
      result = v6;
    }

    else
    {
      result = (*(a1 + 32))(a1, a2);
    }

    *(a1 + 32) = result;
  }

  while (result);
  *(a1 + 32) = v4;
  return result;
}

uint64_t BlueFin::GlMeSrdAsicinit::LoadAsicEswFw(BlueFin::GlMeSrdAsicinit *this)
{
  v4 = 26;
  v2 = *(this + 4);
  result = *(this + 1);
  *(this + 4) = result;
  do
  {
    v5 = 0;
    if (BlueFin::patch_dispatch(result, this, &v4, &v5))
    {
      result = v5;
    }

    else
    {
      result = (*(this + 4))(this, &v4);
    }

    *(this + 4) = result;
  }

  while (result);
  *(this + 4) = v2;
  return result;
}

uint64_t BlueFin::GlMeSrdAsicinit::StopInit(BlueFin::GlMeSrdAsicinit *this)
{
  v4 = 25;
  v2 = *(this + 4);
  result = *(this + 1);
  *(this + 4) = result;
  do
  {
    v5 = 0;
    if (BlueFin::patch_dispatch(result, this, &v4, &v5))
    {
      result = v5;
    }

    else
    {
      result = (*(this + 4))(this, &v4);
    }

    *(this + 4) = result;
  }

  while (result);
  *(this + 4) = v2;
  return result;
}

uint64_t BlueFin::GlMeSrdAsicinit::DebugComDeadIssue(BlueFin::GlMeSrdAsicinit *this)
{
  v4 = *MEMORY[0x29EDCA608];
  BlueFin::GlMeSrdAsicinit::Bri_RequestNvRamWord7(this);
  memset(v3, 128, sizeof(v3));
  *(this + 732) = 0;
  BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v3);
  return BlueFin::GlMeSrdAsicinit::Bri_RequestNvRamWord7(this);
}

uint64_t BlueFin::GlMeSrdAsicinit::Bri_RequestNvRamWord7(BlueFin::GlMeSrdAsicinit *this)
{
  v9[2] = *MEMORY[0x29EDCA608];
  v1 = *(*(this + 16) + 8);
  if ((v1 - 2) >= 2 && v1 != 5)
  {
    DeviceFaultNotify("glmesrd_asicinit.cpp", 3391, "Bri_RequestNvRamWord7", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", 3391, "0");
  }

  v9[0] = 0xC000006C43FD00FELL;
  *(v9 + 5) = 0xFC00000007C00000;
  BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v9);
  ++*(this + 187);
  *v7 = 0xC000006C09FD00FFLL;
  v8 = -4;
  BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v7);
  ++*(this + 187);
  *v5 = 0xC000006809FD00FFLL;
  v6 = -4;
  result = BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v5);
  ++*(this + 187);
  return result;
}

uint64_t (*BlueFin::GlMeSrdAsicinit::wait4Mcuversion(uint64_t a1, unsigned __int8 *a2))()
{
  v9 = *MEMORY[0x29EDCA608];
  *v8 = xmmword_298A340F0;
  *&v8[10] = *(&xmmword_298A340F0 + 10);
  v3 = *a2;
  if (v3 <= 6)
  {
    if (v3 != 2)
    {
      if (v3 != 3)
      {
        return BlueFin::QHsm::top;
      }

      return 0;
    }

    v5 = *(a1 + 128);
    if (*(v5 + 8) == 3)
    {
      if (*(v5 + 1418))
      {
        *(a1 + 688) = a1;
        BlueFin::GlTimer::arm((a1 + 656), 7, 0, 0x1F4u);
        *(a1 + 680) = 1;
LABEL_17:
        BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(a1, v8);
        return 0;
      }

      v6 = "me->m_rAsicConfig.GetMcuBypassEnable()";
      DeviceFaultNotify("glmesrd_asicinit.cpp", 410, "wait4Mcuversion", "me->m_rAsicConfig.GetMcuBypassEnable()");
      v7 = 410;
    }

    else
    {
      v6 = "me->m_rAsicConfig.GetAsicType() == ASIC_PIKE";
      DeviceFaultNotify("glmesrd_asicinit.cpp", 409, "wait4Mcuversion", "me->m_rAsicConfig.GetAsicType() == ASIC_PIKE");
      v7 = 409;
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", v7, v6);
  }

  if (v3 == 7)
  {
    if (!a2[1])
    {
      *(a1 + 688) = a1;
      BlueFin::GlTimer::arm((a1 + 656), 7, 1, 0x1F4u);
      *(a1 + 680) = 1;
      goto LABEL_17;
    }

    *(a1 + 732) = 0;
    (*(**(a1 + 128) + 1248))(*(a1 + 128), 4);
LABEL_15:
    BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdAsicinit::bri_startup_asic, "&GlMeSrdAsicinit::bri_startup_asic");
    return 0;
  }

  if (v3 != 12)
  {
    return BlueFin::QHsm::top;
  }

  if (a2[1] == 30)
  {
    goto LABEL_15;
  }

  return 0;
}

uint64_t BlueFin::GlMeSrdAsicinit::OnHeartbeat(BlueFin::GlMeSrdAsicinit *this)
{
  v4 = 1032;
  v2 = *(this + 4);
  result = *(this + 1);
  *(this + 4) = result;
  do
  {
    v5 = 0;
    if (BlueFin::patch_dispatch(result, this, &v4, &v5))
    {
      result = v5;
    }

    else
    {
      result = (*(this + 4))(this, &v4);
    }

    *(this + 4) = result;
  }

  while (result);
  *(this + 4) = v2;
  return result;
}

uint64_t BlueFin::GlMeSrdAsicinit::OnSubHeartbeat(BlueFin::GlMeSrdAsicinit *this)
{
  v4 = 1288;
  v2 = *(this + 4);
  result = *(this + 1);
  *(this + 4) = result;
  do
  {
    v5 = 0;
    if (BlueFin::patch_dispatch(result, this, &v4, &v5))
    {
      result = v5;
    }

    else
    {
      result = (*(this + 4))(this, &v4);
    }

    *(this + 4) = result;
  }

  while (result);
  *(this + 4) = v2;
  return result;
}

uint64_t BlueFin::GlMeSrdAsicinit::OnRtcCapture(BlueFin::GlMeSrdAsicinit *this)
{
  v4 = 1544;
  v2 = *(this + 4);
  result = *(this + 1);
  *(this + 4) = result;
  do
  {
    v5 = 0;
    if (BlueFin::patch_dispatch(result, this, &v4, &v5))
    {
      result = v5;
    }

    else
    {
      result = (*(this + 4))(this, &v4);
    }

    *(this + 4) = result;
  }

  while (result);
  *(this + 4) = v2;
  return result;
}

uint64_t (*BlueFin::GlMeSrdAsicinit::meif_wait4passthrough(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  result = BlueFin::QHsm::top;
  if (v3 > 0xB)
  {
    switch(v3)
    {
      case 0xCu:
        if (a2[1] == 25)
        {
          v10 = *(a1 + 128);
          if (*(v10 + 8) != 3 || *(v10 + 561) != 1)
          {
            *(a1 + 688) = a1;
            BlueFin::GlTimer::arm((a1 + 656), 34, 0, 0xC8u);
            *(a1 + 680) = 1;
            goto LABEL_24;
          }

          (*(**(a1 + 112) + 64))(*(a1 + 112));
          v6 = "&GlMeSrdAsicinit::bri_startup_asic";
          v7 = BlueFin::GlMeSrdAsicinit::bri_startup_asic;
LABEL_7:
          BlueFin::QHsm::tran(a1, v7, v6);
LABEL_24:
          result = 0;
          *(a1 + 734) = 0;
          return result;
        }

        return 0;
      case 0x19u:
        v8 = "&GlMeSrdAsicinit::off";
        v9 = BlueFin::GlMeSrdAsicinit::off;
        break;
      case 0x22u:
        (*(**(a1 + 112) + 64))(*(a1 + 112));
        v8 = "&GlMeSrdAsicinit::bri_startup_asic";
        v9 = BlueFin::GlMeSrdAsicinit::bri_startup_asic;
        break;
      default:
        return result;
    }

    goto LABEL_20;
  }

  if (v3 == 2)
  {
    (*(**(a1 + 112) + 56))(*(a1 + 112));
    *(a1 + 688) = a1;
    BlueFin::GlTimer::arm((a1 + 656), 5, 0, 0x1F4u);
    result = 0;
    *(a1 + 680) = 1;
    return result;
  }

  if (v3 != 3)
  {
    if (v3 != 5)
    {
      return result;
    }

    v5 = *(a1 + 734) + 1;
    *(a1 + 734) = v5;
    if (v5 >= 4u)
    {
      (*(**(a1 + 112) + 16))(*(a1 + 112));
      v6 = "&GlMeSrdAsicinit::off";
      v7 = BlueFin::GlMeSrdAsicinit::off;
      goto LABEL_7;
    }

    GlCustomLog(14, "GlMeSrdAsicinit::meif_wait4passthrough init retry count = %d\n", v5);
    v8 = "&GlMeSrdAsicinit::meif_wait4passthrough";
    v9 = BlueFin::GlMeSrdAsicinit::meif_wait4passthrough;
LABEL_20:
    BlueFin::QHsm::tran(a1, v9, v8);
    return 0;
  }

  BlueFin::GlQueue::Remove((a1 + 40), 5);
  BlueFin::GlTimer::disarm((a1 + 656));
  return 0;
}

uint64_t (*(*BlueFin::GlMeSrdAsicinit::bri_wait4flowcontrol(BlueFin::GlMeSrdAsicinit *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v4 = BlueFin::GlMeSrdAsicinit::loading;
  if (v3 > 4)
  {
    if (v3 == 5)
    {
      v10 = ++*(this + 733);
      if (v10 < 2)
      {
        GlCustomLog(12, "GlMeSrdAsicinit::No correct BRI response after retries. Maybe chipset is in ESW mode. Let's try to set it back to BRI\n");
        v11 = "&GlMeSrdAsicinit::bri_wait4bri";
        v12 = BlueFin::GlMeSrdAsicinit::bri_wait4bri;
      }

      else
      {
        (*(**(this + 14) + 16))(*(this + 14));
        v11 = "&GlMeSrdAsicinit::off";
        v12 = BlueFin::GlMeSrdAsicinit::off;
      }

      goto LABEL_25;
    }

    if (v3 != 6)
    {
      if (v3 == 12)
      {
        if (a2[1] == 15)
        {
          v6 = *(this + 16);
          v7 = *(v6 + 352);
          v8 = *(this + 768);
          if (v7 == 2)
          {
            if (v8 != 2)
            {
              goto LABEL_41;
            }

            if (*(this + 698) != 1)
            {
              goto LABEL_41;
            }

            v9 = *(this + 769);
            if ((v9 & 0xF) + *(this + 770) != *(this + 696) || *(this + 771) + (v9 >> 4) != *(this + 697) || (*(this + 772) & 1) != 0 && *(this + 773) != 17)
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (v8 != 1 || *(this + 770) != 14 || *(this + 771) != 16 || *(this + 769) != 51 || *(this + 772) == 1 && *(this + 773) != 17)
            {
LABEL_41:
              if (*(this + 680))
              {
                if (v7 == 2)
                {
                  v20 = "SW";
                }

                else
                {
                  v20 = "HW";
                }

                GlCustomLog(14, "GlMeSrdAsicinit::%s Flow Control Was not Acked properly. Retrying\n", v20);
                BlueFin::GlTimer::rearm((this + 656), 0);
              }

              else
              {
                if (v7 == 2)
                {
                  v21 = "SW";
                }

                else
                {
                  v21 = "HW";
                }

                GlCustomLog(14, "GlMeSrdAsicinit::%s Flow Control Was not Acked properly. Timer already expired.\n", v21);
              }

              return 0;
            }

            if (*(v6 + 8) != 2 || (v24 = -4, *v23 = xmmword_298A3410A, BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v23), ++*(this + 187), *(*(this + 16) + 352) != 2))
            {
              v19 = "HW";
              goto LABEL_53;
            }
          }

          v19 = "SW";
LABEL_53:
          GlCustomLog(14, "GlMeSrdAsicinit::%s Flow Control Set\n", v19);
          v11 = "&GlMeSrdAsicinit::bri_wait4version";
          v12 = BlueFin::GlMeSrdAsicinit::bri_wait4version;
LABEL_25:
          BlueFin::QHsm::tran(this, v12, v11);
        }

        return 0;
      }

      return v4;
    }

    if (a2[1] > 1u)
    {
      *(this + 86) = this;
      v13 = (this + 656);
      v14 = 5;
      v15 = 0;
      v16 = 300;
    }

    else
    {
      memset(v23, 128, sizeof(v23));
      *(this + 732) = 0;
      BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v23);
      if (*(*(this + 16) + 352) == 2)
      {
        BlueFin::GlMeSrdAsicinit::Bri_ProgramSwFlowControl(this);
      }

      else
      {
        BlueFin::GlMeSrdAsicinit::Bri_ProgramHwFlowControl(this);
      }

      v18 = a2[1] + 1;
      *(this + 86) = this;
      v13 = (this + 656);
      v15 = v18;
      v14 = 6;
      v16 = 200;
    }

LABEL_31:
    BlueFin::GlTimer::arm(v13, v14, v15, v16);
    v4 = 0;
    *(this + 680) = 1;
    return v4;
  }

  if (v3 == 2)
  {
    if (*(*(this + 16) + 352) == 2)
    {
      BlueFin::GlMeSrdAsicinit::Bri_ProgramSwFlowControl(this);
    }

    else
    {
      BlueFin::GlMeSrdAsicinit::Bri_ProgramHwFlowControl(this);
    }

    v17 = *(this + 185);
    *(this + 86) = this;
    v13 = (this + 656);
    v16 = v17 + 300;
    v14 = 6;
    v15 = 0;
    goto LABEL_31;
  }

  if (v3 == 3)
  {
    BlueFin::GlQueue::Remove(this + 5, 6);
    BlueFin::GlQueue::Remove(this + 5, 5);
    BlueFin::GlTimer::disarm(this + 82);
    return 0;
  }

  return v4;
}

uint64_t (*(*BlueFin::GlMeSrdAsicinit::bri_wait4version(BlueFin::GlMeSrdAsicinit *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v24 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v4 = BlueFin::GlMeSrdAsicinit::loading;
  if (v3 <= 4)
  {
    if (v3 == 2)
    {
      BlueFin::GlMeSrdAsicinit::Bri_RequestHwVersion(this);
      v19 = *(this + 185);
      *(this + 86) = this;
      BlueFin::GlTimer::arm((this + 656), 6, 0, v19 + 300);
      v4 = 0;
      *(this + 680) = 1;
      *(this + 158) = 0;
    }

    else if (v3 == 3)
    {
      BlueFin::GlQueue::Remove(this + 5, 6);
      BlueFin::GlQueue::Remove(this + 5, 5);
      BlueFin::GlTimer::disarm(this + 82);
      return 0;
    }
  }

  else
  {
    switch(v3)
    {
      case 5u:
        v12 = ++*(this + 733);
        if (v12 < 2)
        {
          v10 = "&GlMeSrdAsicinit::bri_wait4bri";
          v11 = BlueFin::GlMeSrdAsicinit::bri_wait4bri;
        }

        else
        {
          (*(**(this + 14) + 16))(*(this + 14));
          v10 = "&GlMeSrdAsicinit::off";
          v11 = BlueFin::GlMeSrdAsicinit::off;
        }

        goto LABEL_28;
      case 6u:
        if (a2[1] > 1u)
        {
          *(this + 86) = this;
          v15 = (this + 656);
          v18 = 5;
          v16 = 0;
          v17 = 300;
        }

        else
        {
          memset(v23, 128, sizeof(v23));
          *(this + 732) = 0;
          BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v23);
          BlueFin::GlMeSrdAsicinit::Bri_RequestHwVersion(this);
          v13 = a2[1] + 1;
          v14 = *(this + 185);
          *(this + 86) = this;
          v15 = (this + 656);
          v16 = v13;
          v17 = v14 + 200;
          v18 = 6;
        }

        BlueFin::GlTimer::arm(v15, v18, v16, v17);
        v4 = 0;
        *(this + 680) = 1;
        break;
      case 0xCu:
        if (a2[1] != 12 || *(this + 768))
        {
          return 0;
        }

        v6 = *(this + 193);
        (*(**(this + 14) + 48))(*(this + 14), v6);
        (*(**(this + 16) + 176))(*(this + 16), v6);
        v7 = *(this + 16);
        *(v7 + 1423) = 1;
        v8 = v6 & 0xF000FFFE;
        if ((v8 - 805306382) > 6 || ((1 << (v8 - 14)) & 0x55) == 0)
        {
          BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion = 0;
        }

        if (v8 == 805306386 || v8 == 805306388)
        {
          if (*(v7 + 352) != 1)
          {
            *(v7 + 352) = 1;
            *(v7 + 356) = 4881;
            v10 = "&GlMeSrdAsicinit::bri_wait4flowcontrol";
            v11 = BlueFin::GlMeSrdAsicinit::bri_wait4flowcontrol;
LABEL_28:
            BlueFin::QHsm::tran(this, v11, v10);
            return 0;
          }

          if (((*(*v7 + 16))(v7) & 0xF0FFFFFE) == 0x30FE0012 || ((*(**(this + 16) + 16))(*(this + 16)) & 0xF0FFFFFE) == 0x30FE0014)
          {
            (*(**(this + 15) + 64))(*(this + 15));
          }

          (*(**(this + 16) + 200))(*(this + 16), 0, 0);
          v9 = *(*(this + 16) + 8);
          if ((v9 - 1) < 3 || v9 == 5)
          {
            if (v8 == 805306386)
            {
              v10 = "&GlMeSrdAsicinit::bri_wait4gpioconfig";
              v11 = BlueFin::GlMeSrdAsicinit::bri_wait4gpioconfig;
            }

            else
            {
              v10 = "&GlMeSrdAsicinit::bri_wait4asic_ready";
              v11 = BlueFin::GlMeSrdAsicinit::bri_wait4asic_ready;
            }

            goto LABEL_28;
          }

          v21 = "GlMeSrdAsicinit::Need to add support for unknown asic type\n";
          DeviceFaultNotify("glmesrd_asicinit.cpp", 956, "bri_wait4version", "GlMeSrdAsicinit::Need to add support for unknown asic type\n");
          v22 = 956;
        }

        else
        {
          v21 = "GlMeSrdAsicinit::HW Asic Version Not Supported(0x%x)\n";
          DeviceFaultNotify("glmesrd_asicinit.cpp", 902, "bri_wait4version", "GlMeSrdAsicinit::HW Asic Version Not Supported(0x%x)\n");
          v22 = 902;
        }

        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", v22, v21);
    }
  }

  return v4;
}

uint64_t BlueFin::GlMeSrdAsicinit::Bri_ProgramSwFlowControl(BlueFin::GlMeSrdAsicinit *this)
{
  v18 = *MEMORY[0x29EDCA608];
  *(this + 732) = 0;
  if (*(this + 698) != 1 || (v2 = *(this + 696), v3 = *(this + 697), v2 == v3))
  {
    v10 = "m_bSwFlowControlEnabled && m_ucXon != m_ucXoff";
    DeviceFaultNotify("glmesrd_asicinit.cpp", 3249, "Bri_ProgramSwFlowControl", "m_bSwFlowControlEnabled && m_ucXon != m_ucXoff");
    v11 = 3249;
    goto LABEL_34;
  }

  if ((v2 + 4) < 9u || *(this + 696) == 224 || *(this + 696) == 33)
  {
    v10 = "m_ucXon > 0x04 && m_ucXon < 0xFC && m_ucXon != 0x21 && m_ucXon != 0xE0";
    DeviceFaultNotify("glmesrd_asicinit.cpp", 3250, "Bri_ProgramSwFlowControl", "m_ucXon > 0x04 && m_ucXon < 0xFC && m_ucXon != 0x21 && m_ucXon != 0xE0");
    v11 = 3250;
    goto LABEL_34;
  }

  if ((v3 + 4) < 9u || *(this + 697) == 33 || *(this + 697) == 224)
  {
    v10 = "m_ucXoff > 0x04 && m_ucXoff < 0xFC && m_ucXoff != 0x21 && m_ucXoff != 0xE0";
    DeviceFaultNotify("glmesrd_asicinit.cpp", 3251, "Bri_ProgramSwFlowControl", "m_ucXoff > 0x04 && m_ucXoff < 0xFC && m_ucXoff != 0x21 && m_ucXoff != 0xE0");
    v11 = 3251;
    goto LABEL_34;
  }

  v4 = 0;
  v5 = 20;
  v6 = *(this + 697);
  v7 = *(this + 696);
  while (v7 == v2 || v7 == v3 || v7 == 224 || v4 == v2 || v4 == v3 || v4 == 224)
  {
    --v7;
    v4 = v4 & 0xFFFFFFF0 | (v4 + 1) & 0xF;
LABEL_12:
    if (!--v5)
    {
      goto LABEL_23;
    }
  }

  if (v6 == v2 || v6 == v3 || v6 == 224)
  {
    --v6;
    v4 += 16;
    goto LABEL_12;
  }

LABEL_23:
  if ((v4 & 0xF) + v7 != v2 || (v4 >> 4) + v6 != v3)
  {
    v10 = "m_ucXon == (xon+(add&0xF)) && m_ucXoff == (xoff+((add>>4)&0xF))";
    DeviceFaultNotify("glmesrd_asicinit.cpp", 3278, "Bri_ProgramSwFlowControl", "m_ucXon == (xon+(add&0xF)) && m_ucXoff == (xoff+((add>>4)&0xF))");
    v11 = 3278;
    goto LABEL_34;
  }

  *(this + 698) = 0;
  v8 = *(*(this + 16) + 8);
  if ((v8 - 2) < 2)
  {
    *v12 = 268239103;
    LOBYTE(v13) = 2;
    HIBYTE(v13) = v4;
    v14 = v7;
    v15 = v6;
    LOBYTE(v16) = -4;
    goto LABEL_31;
  }

  if (v8 == 1)
  {
    *v12 = 570228990;
    v13 = 512;
    v14 = v4;
    v15 = v7;
    LOBYTE(v16) = v6;
    BYTE1(v16) = -4;
    goto LABEL_31;
  }

  if (v8 != 5)
  {
    v10 = "0";
    DeviceFaultNotify("glmesrd_asicinit.cpp", 3311, "Bri_ProgramSwFlowControl", "0");
    v11 = 3311;
LABEL_34:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", v11, v10);
  }

  *v12 = 536674559;
  LOBYTE(v13) = 2;
  HIBYTE(v13) = v4;
  v14 = v7;
  v15 = v6;
  v16 = 17;
  v17 = -4;
LABEL_31:
  result = BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v12);
  ++*(this + 187);
  *(this + 698) = 1;
  return result;
}

uint64_t BlueFin::GlMeSrdAsicinit::Bri_ProgramHwFlowControl(BlueFin::GlMeSrdAsicinit *this)
{
  v7 = *MEMORY[0x29EDCA608];
  *(this + 732) = 0;
  v2 = *(*(this + 16) + 8);
  if ((v2 - 2) < 2)
  {
    *v4 = 0x100E33010FFD00FFLL;
    LOBYTE(v5) = -4;
  }

  else if (v2 == 1)
  {
    *v4 = 0xE33010021FD00FELL;
    LOWORD(v5) = -1008;
  }

  else
  {
    if (v2 != 5)
    {
      DeviceFaultNotify("glmesrd_asicinit.cpp", 3358, "Bri_ProgramHwFlowControl", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", 3358, "0");
    }

    *v4 = 0x100E33011FFD00FFLL;
    v5 = 35089;
    v6 = -4;
  }

  result = BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v4);
  ++*(this + 187);
  return result;
}

uint64_t (*(*BlueFin::GlMeSrdAsicinit::bri_wait4bri(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  v4 = BlueFin::GlMeSrdAsicinit::loading;
  switch(v3)
  {
    case 5:
      if ((*(*(a1 + 128) + 352) - 1) > 1)
      {
        v8 = "&GlMeSrdAsicinit::bri_wait4version";
        v9 = BlueFin::GlMeSrdAsicinit::bri_wait4version;
      }

      else
      {
        v8 = "&GlMeSrdAsicinit::bri_wait4flowcontrol";
        v9 = BlueFin::GlMeSrdAsicinit::bri_wait4flowcontrol;
      }

      BlueFin::QHsm::tran(a1, v9, v8);
      return 0;
    case 3:
      *(a1 + 737) = 1;
      BlueFin::GlQueue::Remove((a1 + 40), 5);
      BlueFin::GlTimer::disarm((a1 + 656));
      return 0;
    case 2:
      *(a1 + 737) = 0;
      *(a1 + 688) = a1;
      BlueFin::GlTimer::arm((a1 + 656), 5, 0, 0x12Cu);
      *(a1 + 680) = 1;
      v5 = (*(**(a1 + 120) + 80))(*(a1 + 120));
      v11 = 0;
      v12[0] = 0;
      *(v12 + 7) = 0;
      v12[2] = v5;
      v13 = 0;
      v14 = 0;
      (*(*v5 + 16))(v5, 0);
      GlCustomLog(14, "GlMeSrdAsicinit::Sending ESW Standby RPC\n");
      v6 = (*(*v5 + 48))(v5);
      v7 = (*(*v6 + 16))(v6);
      (*(*v7 + 152))(v7, &v11, 0);
      BlueFin::GlMeSrdTransaction::Complete(&v11);
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v11);
      return 0;
  }

  return v4;
}

void sub_29895BDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlMeSrdAsicinit::Bri_RequestHwVersion(BlueFin::GlMeSrdAsicinit *this)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *(*(this + 16) + 8);
  if ((v2 - 2) >= 2)
  {
    if (v2 == 1)
    {
      *&v4[4] = -1024;
      *v4 = 16580863;
      goto LABEL_6;
    }

    if (v2 != 5)
    {
      DeviceFaultNotify("glmesrd_asicinit.cpp", 3186, "Bri_RequestHwVersion", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", 3186, "0");
    }
  }

  v5 = -4;
  *v4 = 0xC000000009FD00FFLL;
LABEL_6:
  result = BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v4);
  ++*(this + 187);
  return result;
}

uint64_t (*(*BlueFin::GlMeSrdAsicinit::bri_wait4gpioconfig(BlueFin::GlMeSrdAsicinit *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v4 = BlueFin::GlMeSrdAsicinit::loading;
  if (v3 <= 4)
  {
    if (v3 == 2)
    {
      BlueFin::GlMeSrdAsicinit::bri_wait4gpioconfig(BlueFin::GlMeSrdAsicinit*,BlueFin::GlEvent const*)::gpictrlState = 0;
      *(this + 732) = 0;
      *v18 = 0xC00000B009FD00FFLL;
      v19 = -4;
      BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v18);
      ++*(this + 187);
      *(this + 86) = this;
      BlueFin::GlTimer::arm((this + 656), 6, 0, 0xC8u);
      v4 = 0;
      *(this + 680) = 1;
      *(this + 158) = 0;
      return v4;
    }

    if (v3 == 3)
    {
      BlueFin::GlQueue::Remove(this + 5, 6);
      BlueFin::GlQueue::Remove(this + 5, 5);
      BlueFin::GlTimer::disarm(this + 82);
      return 0;
    }
  }

  else
  {
    switch(v3)
    {
      case 5u:
        if (BlueFin::GlMeSrdAsicinit::bri_wait4gpioconfig(BlueFin::GlMeSrdAsicinit*,BlueFin::GlEvent const*)::gpictrlState)
        {
          v8 = "DriveStrength";
        }

        else
        {
          v8 = "Hysteresis";
        }

        GlCustomLog(11, "GlMeSrdAsicinit::Watchdog Timeout waiting for %s response\n", v8);
        (*(**(this + 14) + 16))(*(this + 14));
        v9 = "&GlMeSrdAsicinit::off";
        v10 = BlueFin::GlMeSrdAsicinit::off;
        goto LABEL_17;
      case 6u:
        if (a2[1] <= 1u)
        {
          v11 = BlueFin::GlMeSrdAsicinit::bri_wait4gpioconfig(BlueFin::GlMeSrdAsicinit*,BlueFin::GlEvent const*)::gpictrlState;
          *(this + 732) = 0;
          v19 = -4;
          if (v11)
          {
            v12 = &qword_298A3462D;
          }

          else
          {
            v12 = &qword_298A34624;
          }

          *v18 = *v12;
          BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v18);
          ++*(this + 187);
          v15 = a2[1] + 1;
          *(this + 86) = this;
          v13 = (this + 656);
          v16 = v15;
          v14 = 6;
          goto LABEL_32;
        }

        *(this + 86) = this;
        v13 = (this + 656);
        v14 = 5;
LABEL_31:
        v16 = 0;
LABEL_32:
        BlueFin::GlTimer::arm(v13, v14, v16, 0x64u);
        v4 = 0;
        *(this + 680) = 1;
        return v4;
      case 0xCu:
        if (a2[1] != 12)
        {
          return 0;
        }

        v6 = *(this + 768);
        if (v6 != 49)
        {
          if (v6 == 44)
          {
            v7 = *(this + 193);
            if ((v7 & 0x10000000) == 0)
            {
              BlueFin::GlMeSrdAsicinit::Bri_ProgramHysteresis(this, v7 | 0x10000000);
              *(this + 732) = 0;
              *v18 = 0xC00000B009FD00FFLL;
              v19 = -4;
              BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v18);
              v4 = 0;
              ++*(this + 187);
              return v4;
            }

            *(this + 732) = 0;
            *v18 = 0xC00000C409FD00FFLL;
            v19 = -4;
            BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v18);
            ++*(this + 187);
            ++BlueFin::GlMeSrdAsicinit::bri_wait4gpioconfig(BlueFin::GlMeSrdAsicinit*,BlueFin::GlEvent const*)::gpictrlState;
            goto LABEL_30;
          }

          return 0;
        }

        if ((*(this + 193) & 0x3F) != 9)
        {
          BlueFin::GlMeSrdAsicinit::Bri_ProgramDriveStrentgh(this, *(this + 193) & 0xFFFFFFC0 | 9);
LABEL_30:
          *(this + 86) = this;
          v13 = (this + 656);
          v14 = 6;
          goto LABEL_31;
        }

        v9 = "&GlMeSrdAsicinit::bri_wait4asic_ready";
        v10 = BlueFin::GlMeSrdAsicinit::bri_wait4asic_ready;
LABEL_17:
        BlueFin::QHsm::tran(this, v10, v9);
        return 0;
    }
  }

  return v4;
}

uint64_t (*(*BlueFin::GlMeSrdAsicinit::bri_wait4asic_ready(BlueFin::GlMeSrdAsicinit *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v4 = BlueFin::GlMeSrdAsicinit::loading;
  if (v3 <= 4)
  {
    if (v3 != 2)
    {
      if (v3 != 3)
      {
        return v4;
      }

      BlueFin::GlQueue::Remove(this + 5, 5);
      BlueFin::GlTimer::disarm(this + 82);
      return 0;
    }

    v13 = (this + 40);
    v14 = 0;
LABEL_20:
    BlueFin::GlQueue::putFIFO(v13, 6, v14);
    return 0;
  }

  if (v3 == 5)
  {
    v9 = a2[1];
    if (v9 >= 3)
    {
      (*(**(this + 14) + 16))(*(this + 14));
      v10 = "&GlMeSrdAsicinit::off";
      v11 = BlueFin::GlMeSrdAsicinit::off;
LABEL_39:
      BlueFin::QHsm::tran(this, v11, v10);
      return 0;
    }

    *(this + 158) &= 0xFE19FFFF;
    v13 = (this + 40);
    v14 = v9 + 1;
    goto LABEL_20;
  }

  if (v3 == 6)
  {
    *(this + 732) = 0;
    v12 = *(*(this + 16) + 8);
    if ((v12 - 2) >= 2)
    {
      if (v12 == 1)
      {
        *&v23[4] = -875;
        *v23 = 536674559;
        goto LABEL_22;
      }

      if (v12 != 5)
      {
        DeviceFaultNotify("glmesrd_asicinit.cpp", 2850, "Bri_RequestDebugSfr", "0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", 2850, "0");
      }
    }

    v24 = -4;
    *v23 = 0xC0000A5409FD00FFLL;
LABEL_22:
    BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v23);
    ++*(this + 187);
    v15 = a2[1];
    *(this + 86) = this;
    BlueFin::GlTimer::arm((this + 656), 5, v15, 0x1F4u);
    v4 = 0;
    *(this + 680) = 1;
    return v4;
  }

  if (v3 != 12)
  {
    return v4;
  }

  v6 = a2[1];
  if (v6 == 13)
  {
    if (*(this + 768) != 149)
    {
      goto LABEL_33;
    }

    v7 = *(this + 158);
    if ((*(this + 769) & 4) == 0)
    {
      v8 = v7 | 0x40000;
LABEL_32:
      *(this + 158) = v8;
      goto LABEL_33;
    }

    *(this + 158) = v7 | 0x20000;
    *(this + 636) = 1;
    (*(**(this + 14) + 72))(*(this + 14), 1);
    v6 = a2[1];
  }

  if (v6 == 29 || v6 == 27)
  {
    v8 = *(this + 158) | 0x100000;
    goto LABEL_32;
  }

  if (v6 == 12 && *(this + 768) == 77)
  {
    v16 = *(this + 193);
    if ((v16 & 0xF7) == 0x80)
    {
      v17 = *(this + 158);
      if ((v17 & 0x1800000) == 0)
      {
        goto LABEL_33;
      }

      v18 = (v16 & 8) == 0;
      v19 = 0x400000;
      v20 = 0x200000;
      goto LABEL_44;
    }

    if ((v16 & 0xF7) == 0x40)
    {
      v17 = *(this + 158);
      v18 = (v16 & 8) == 0;
      v19 = 0x1000000;
      v20 = 0x800000;
LABEL_44:
      if (v18)
      {
        v19 = v20;
      }

      v8 = v17 | v19;
      goto LABEL_32;
    }
  }

LABEL_33:
  v4 = 0;
  v21 = *(this + 158);
  if ((v21 & 0x60000) != 0 && (*&v21 & 0x180000) != 0x80000)
  {
    if ((v21 & 0x20000) != 0 || (*(*(this + 16) + 556) & 1) == 0)
    {
      GlCustomLog(12, "GlMeSrdAsicinit::Debbugger detected or run without loading is enabled. Exiting Legacy!\n");
      BlueFin::GlMeSrdAsicinit::Bri_GetOutOfLegacy(this);
      v10 = "&GlMeSrdAsicinit::esw_wait4version";
      v11 = BlueFin::GlMeSrdAsicinit::esw_wait4version;
    }

    else
    {
      v10 = "&GlMeSrdAsicinit::bri_wait4patchload";
      v11 = BlueFin::GlMeSrdAsicinit::bri_wait4patchload;
    }

    goto LABEL_39;
  }

  return v4;
}

uint64_t BlueFin::GlMeSrdAsicinit::Bri_ProgramHysteresis(BlueFin::GlMeSrdAsicinit *this, int a2)
{
  v6 = *MEMORY[0x29EDCA608];
  *v3 = 0xC00000B003FD00FELL;
  v4 = a2;
  v5 = -4;
  return BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v3);
}

uint64_t BlueFin::GlMeSrdAsicinit::Bri_ProgramDriveStrentgh(BlueFin::GlMeSrdAsicinit *this, int a2)
{
  v6 = *MEMORY[0x29EDCA608];
  *v3 = 0xC00000C403FD00FELL;
  v4 = a2;
  v5 = -4;
  return BlueFin::GlMeSrdAsicinit::Bri_SendAsicData(this, v3);
}

void *BlueFin::GlMeSrdAsicinit::RetryBri(BlueFin::GlMeSrdAsicinit *this, BlueFin::GlMeSrdAsicinit *a2)
{
  v3 = ++*(this + 733);
  if (v3 > 4)
  {
    (*(**(this + 14) + 16))(*(this + 14), a2);
    v10 = "&GlMeSrdAsicinit::off";
    v11 = BlueFin::GlMeSrdAsicinit::off;
  }

  else
  {
    if (*(this + 638) == 1)
    {
      *(this + 639) = 0;
      v4 = *(this + 16);
      v5 = (*(*v4 + 184))(v4, a2);
      if (*(v4 + 1212) == 1)
      {
        v5 = *(v4 + 1216);
      }

      *(v4 + 16) = v5;
      if (v5 != 805437445)
      {
        DeviceFaultNotify("glmesrd_asicinit.cpp", 4432, "RetryBri", "0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", 4432, "0");
      }

      v6 = (*(**(this + 16) + 184))(*(this + 16));
      v7 = *(this + 16);
      v8 = (*(*v7 + 184))(v7);
      if (*(v7 + 1212) == 1)
      {
        v9 = *(v7 + 1216);
      }

      else
      {
        v9 = v8;
      }

      *(v7 + 16) = v9;
      v14 = *(this + 16);
      v15 = (*(*v14 + 184))(v14);
      if (*(v14 + 1212) == 1)
      {
        v16 = *(v14 + 1216);
      }

      else
      {
        v16 = v15;
      }

      v17 = v6 == v9;
      *(v14 + 16) = v16;
      v18 = *(this + 16);
      v19 = v18[2];
      v20 = (*(*v18 + 40))(v18);

      return BlueFin::GlMeSrdAsicInitPatchLoader::Init((this + 200), v16, 0x3FCu, v17, v19, v20);
    }

    v12 = *(this + 192);
    if (v12 && (BlueFin::GlMeSrdAsicInitPatchLoader::AckBelogsToAnotherPacketInBuf((this + 200), *(this + 776), *(this + 193), v12) & 1) == 0)
    {
      BlueFin::GlMeSrdAsicInitPatchLoader::ReQueuePacketIntoBuffer((this + 200));
    }

    v10 = "&GlMeSrdAsicinit::bri_wait4patchblockload";
    v11 = BlueFin::GlMeSrdAsicinit::bri_wait4patchblockload;
  }

  return BlueFin::QHsm::tran(this, v11, v10);
}

uint64_t BlueFin::GlMeSrdRpcMiscAsicInit::gll_misc_rpc_nvram_response(uint64_t this, int a2, int a3, unsigned int *a4)
{
  if (a2 || a3 != 6)
  {
    if (a2 != 7 || a3 != 1)
    {
      DeviceFaultNotify("glmesrd_asicinit.cpp", 4236, "gll_misc_rpc_nvram_response", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit.cpp", 4236, "0");
    }
  }

  else
  {
    v4 = this;
    BlueFin::GlMeSrdNvRamReader::ProcessRpcNvRamResponse((*(this + 8) + 168), a4, 6);
    v7 = 264;
    v5 = *(v4 + 8);
    v6 = *(v5 + 32);
    this = *(v5 + 8);
    *(v5 + 32) = this;
    do
    {
      v8 = 0;
      if (BlueFin::patch_dispatch(this, v5, &v7, &v8))
      {
        this = v8;
      }

      else
      {
        this = (*(v5 + 32))(v5, &v7);
      }

      *(v5 + 32) = this;
    }

    while (this);
    *(v5 + 32) = v6;
  }

  return this;
}

BOOL BlueFin::GlMeSrdAsicInitPatchLoader::Init(BlueFin::GlMeSrdAsicInitPatchLoader *this, int a2, unsigned int a3, const char *a4, int a5, BOOL a6)
{
  if (a3 <= 7)
  {
    v20 = "usMaxSizePerBlock >= 8";
    DeviceFaultNotify("glmesrd_asicinit_patchloader.cpp", 68, "Init", "usMaxSizePerBlock >= 8");
    v21 = 68;
    goto LABEL_9;
  }

  *(this + 10) = 0;
  v8 = (this + 40);
  *(this + 8) = a2;
  *(this + 6) = 0;
  v9 = (this + 48);
  *(this + 18) = a3;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 72) = 0;
  *(this + 84) = 0;
  *(this + 76) = 0;
  *(this + 104) = 0;
  *(this + 419) = 0;
  *(this + 423) = a4;
  *(this + 106) = a5;
  if (a5 != 5)
  {
    v20 = "0";
    DeviceFaultNotify("glmesrd_asicinit_patchloader.cpp", 133, "Init", "0");
    v21 = 133;
    goto LABEL_9;
  }

  if ((a2 & 0xF000FFFE) != 0x30000012 && (a2 & 0xF000FFFE) != 0x30000014)
  {
    v20 = "IS_ANY_MINNOW(ulAsicVersion)";
    DeviceFaultNotify("glmesrd_asicinit_patchloader.cpp", 125, "Init", "IS_ANY_MINNOW(ulAsicVersion)");
    v21 = 125;
LABEL_9:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asicinit_patchloader.cpp", v21, v20);
  }

  PlatformName = BlueFin::GlMeSrdAsicInitPatchLoader::GetPlatformName(this, a6);
  *(this + 7) = PlatformName;
  PatchInfoMinnow = BlueFin::GetPatchInfoMinnow(PlatformName, a4, v8, v9, v11);
  if (PatchInfoMinnow)
  {
    BlueFin::GlMeSrdAsicInitPatchLoader::InitSegment(this, v12, v13, v14, v15, v16, v17);
  }

  return PatchInfoMinnow;
}

const char *BlueFin::GlMeSrdAsicInitPatchLoader::GetPlatformName(BlueFin::GlMeSrdAsicInitPatchLoader *this, int a2)
{
  v2 = *(this + 8);
  v3 = v2 & 0xF0FFFFFE;
  result = "4775_FF";
  if ((v2 & 0xF0FFFFFE) <= 821952529)
  {
    if (v3 <= 805306385)
    {
      if (v3 == 805306382)
      {
        return result;
      }

      if (v3 == 805306384)
      {
        return "4776_A0";
      }

      goto LABEL_37;
    }

    if (v3 != 805306386)
    {
      if (v3 == 805306388)
      {
        if ((v2 & 0x30000015) == 0x30000014)
        {
          v8 = a2;
        }

        else
        {
          v8 = 1;
        }

        if (v8)
        {
          return "MNW_B0";
        }

        else
        {
          return "MNW_FF_HVR";
        }
      }

      if (v3 == 805371918)
      {
        return "4775_B1";
      }

LABEL_37:
      if ((v2 - 805371912) < 2)
      {
        return "47531_A1";
      }

      if ((v2 - 805502984) < 2)
      {
        return "4774_A1";
      }

      if ((v2 - 1006829576) > 1)
      {
        return "";
      }

      return "4773_A3";
    }

LABEL_19:
    v7 = v2 & 0xF000FFFF;
    if ((v7 == 805306388 || v7 == 805306386) && !a2)
    {
      return "MNW_FF_HVR";
    }

    else
    {
      return "MNW_FF";
    }
  }

  if (v3 > 822018063)
  {
    if (v3 != 822018068 && v3 != 822018066)
    {
      if (v3 == 822018064)
      {
        return "4776_FF";
      }

      goto LABEL_37;
    }

    goto LABEL_19;
  }

  if (v3 == 821952530 || v3 == 821952532)
  {
    return "MNW_FE";
  }

  if (v3 != 822018062)
  {
    goto LABEL_37;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdAsicInitPatchLoader::AckBelogsToAnotherPacketInBuf(BlueFin::GlMeSrdAsicInitPatchLoader *this, int a2, int a3, int a4)
{
  v4 = *(this + 420);
  if (!*(this + 420))
  {
    return 0;
  }

  v9 = 0;
  v10 = *(this + 418);
  v11 = this + 96;
  v12 = v10;
  while (*&v11[40 * v12 + 4] + *&v11[40 * v12 + 12] != a4 || BlueFin::GlMeSrdAsicInitPatchLoader::GetBlockCRCBuf(this, v12) != a2 || BlueFin::GlMeSrdAsicInitPatchLoader::GetBlockCheckSumBuf(this, v12) != a3)
  {
    ++v9;
    v12 = (v12 + 1) & 7;
    if (v4 <= v9)
    {
      return 0;
    }
  }

  if (v9)
  {
    v14 = 0;
    do
    {
      BlueFin::GlMeSrdAsicInitPatchLoader::ReQueuePacketIntoBuffer(this);
      LOBYTE(v4) = *(this + 420) + 1;
      *(this + 420) = v4;
      ++v14;
    }

    while (v9 > v14);
    v10 = *(this + 418);
  }

  *(this + 420) = v4 + ~v9;
  *(this + 418) = (v10 + 1) & 7;
  return 1;
}

double BlueFin::GlMeSrdAsicInitPatchLoader::ReQueuePacketIntoBuffer(BlueFin::GlMeSrdAsicInitPatchLoader *this)
{
  v1 = *(this + 418);
  v2 = *(this + 420);
  v3 = this + 40 * v1 + 96;
  result = *v3;
  v5 = this + 40 * ((v2 + v1) & 7) + 96;
  *v5 = *v3;
  v5[8] = v3[8];
  *(v5 + 3) = *(v3 + 3);
  *(v5 + 2) = *(v3 + 2);
  *(v5 + 6) = *(v3 + 6);
  v5[28] = v3[28];
  *(v5 + 8) = *(v3 + 8);
  *(this + 420) = v2 - 1;
  *(this + 418) = (v1 + 1) & 7;
  ++*(this + 417);
  return result;
}

void BlueFin::GlMeSrdCntIn::~GlMeSrdCntIn(BlueFin::GlMeSrdCntIn *this)
{
  *this = &unk_2A1F0B240;
  BlueFin::GlEventPump::RemoveActive(*(this + 16), this);
}

{
  BlueFin::GlMeSrdCntIn::~GlMeSrdCntIn(this);

  JUMPOUT(0x29C292F60);
}

uint64_t (*(*BlueFin::GlMeSrdCntIn::wait4arm(BlueFin::GlMeSrdCntIn *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  result = 0;
  v4 = *a2;
  if (v4 > 0x2B)
  {
    switch(v4)
    {
      case ',':
        return result;
      case '.':
        GlCustomLog(14, "CNTIN measurement received while waiting for CNTIN armed!  Maybe due to packet loss.\n");
        if (*(this + 225) == 1)
        {
          if (*(this + 224))
          {
            v8 = 1;
          }

          else
          {
            v8 = 2;
          }
        }

        else
        {
          v8 = 3;
        }

        LOWORD(v7) = *(*(this + 17) + 60);
        (*(**(this + 15) + 144))(*(this + 15), v8, *(this + 27), v7);
        v5 = "&GlMeSrdCntIn::idle";
        v6 = BlueFin::GlMeSrdCntIn::idle;
        goto LABEL_17;
      case '-':
        BlueFin::GlMeSrdCntIn::DisarmFrequencyCapture(this);
        (*(**(this + 15) + 144))(*(this + 15), 5, 0.0, 0.0);
        v5 = "&GlMeSrdCntIn::wait4disarm";
        v6 = BlueFin::GlMeSrdCntIn::wait4disarm;
        goto LABEL_17;
    }

    return BlueFin::GlMeSrdCntIn::running;
  }

  if (v4 - 2 < 2)
  {
    return result;
  }

  if (v4 != 13)
  {
    return BlueFin::GlMeSrdCntIn::running;
  }

  if (!a2[1])
  {
    v5 = "&GlMeSrdCntIn::wait4msmt";
    v6 = BlueFin::GlMeSrdCntIn::wait4msmt;
LABEL_17:
    BlueFin::QHsm::tran(this, v6, v5);
  }

  return 0;
}

uint64_t (*BlueFin::GlMeSrdCntIn::running(uint64_t a1, unsigned __int8 *a2))()
{
  v2 = *a2;
  if (v2 - 2 < 2)
  {
    return 0;
  }

  v4 = v2 > 0x2E;
  v5 = (1 << v2) & 0x700000002000;
  if (!v4 && v5 != 0)
  {
    DeviceFaultNotify("glmesrd_cntin_ctrl.cpp", 140, "running", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_cntin_ctrl.cpp", 140, "0");
  }

  return BlueFin::QHsm::top;
}

void BlueFin::GlMeSrdCntIn::DisarmFrequencyCapture(BlueFin::GlMeSrdCntIn *this)
{
  v2 = (*(**(this + 14) + 80))(*(this + 14));
  v5[0] = BlueFin::GlMeSrdCntIn::OnReliableAck;
  v5[1] = this;
  v6 = 257;
  v7 = 0;
  v8 = v2;
  v9 = 0;
  v10 = 0;
  (*(*v2 + 16))(v2, 1);
  v3 = (*(*v2 + 48))(v2);
  v4 = (*(*v3 + 40))(v3);
  (*(*v4 + 40))(v4, v5, 3);
  BlueFin::GlMeSrdTransaction::Complete(v5);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v5);
}

void sub_29895D374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t (*(*BlueFin::GlMeSrdCntIn::wait4disarm(void *a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v2 = *a2;
  if (v2 <= 0x2E)
  {
    if (((1 << v2) & 0x60000000000CLL) != 0)
    {
      return 0;
    }

    if (v2 == 13)
    {
      if (a2[1] == 1)
      {
        BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdCntIn::idle, "&GlMeSrdCntIn::idle");
      }

      return 0;
    }

    if (v2 == 44)
    {
      DeviceFaultNotify("glmesrd_cntin_ctrl.cpp", 309, "wait4disarm", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_cntin_ctrl.cpp", 309, "0");
    }
  }

  return BlueFin::GlMeSrdCntIn::running;
}

uint64_t (*(*BlueFin::GlMeSrdCntIn::wait4msmt(BlueFin::GlMeSrdCntIn *this, unsigned __int8 *a2, double a3, double a4))(uint64_t a1, unsigned __int8 *a2))()
{
  v5 = *a2;
  result = BlueFin::GlMeSrdCntIn::running;
  if (v5 <= 4)
  {
    if (v5 == 2)
    {
      v12 = *(*(this + 17) + 62);
      *(this + 26) = this;
      BlueFin::GlTimer::arm((this + 176), 5, 0, v12 + 1000);
      result = 0;
      *(this + 200) = 1;
      return result;
    }

    if (v5 != 3)
    {
      return result;
    }

    BlueFin::GlTimer::disarm(this + 22);
  }

  else
  {
    if (v5 == 5 || v5 == 45)
    {
      BlueFin::GlMeSrdCntIn::DisarmFrequencyCapture(this);
      v8.n128_u64[0] = 0;
      v9.n128_u64[0] = 0;
      (*(**(this + 15) + 144))(v8, v9);
      v10 = "&GlMeSrdCntIn::wait4disarm";
      v11 = BlueFin::GlMeSrdCntIn::wait4disarm;
    }

    else
    {
      if (v5 != 46)
      {
        return result;
      }

      if (*(this + 225) == 1)
      {
        if (*(this + 224))
        {
          v7 = 1;
        }

        else
        {
          v7 = 2;
        }
      }

      else
      {
        v7 = 3;
      }

      LOWORD(a4) = *(*(this + 17) + 60);
      (*(**(this + 15) + 144))(*(this + 15), v7, *(this + 27), *&a4);
      v10 = "&GlMeSrdCntIn::idle";
      v11 = BlueFin::GlMeSrdCntIn::idle;
    }

    BlueFin::QHsm::tran(this, v11, v10);
  }

  return 0;
}

uint64_t BlueFin::GlMeSrdCtrlSm::EswIsIdle(BlueFin::GlMeSrdCtrlSm *this, void *a2)
{
  v5 = 59;
  v3 = *(this + 4);
  result = *(this + 1);
  *(this + 4) = result;
  do
  {
    v6 = 0;
    if (BlueFin::patch_dispatch(result, this, &v5, &v6))
    {
      result = v6;
    }

    else
    {
      result = (*(this + 4))(this, &v5);
    }

    *(this + 4) = result;
  }

  while (result);
  *(this + 4) = v3;
  return result;
}

void BlueFin::GlMeSrdCtrlSmRpcSatEvt::~GlMeSrdCtrlSmRpcSatEvt(BlueFin::GlMeSrdCtrlSmRpcSatEvt *this)
{
  *this = &unk_2A1F0B298;
}

{
  JUMPOUT(0x29C292F60);
}

void BlueFin::GlMeSrdCtrlSm::~GlMeSrdCtrlSm(BlueFin::GlMeSrdCtrlSm *this)
{
  *this = &unk_2A1F0B278;
  (*(**(this + 16) + 72))(*(this + 16), 0, 0);
  BlueFin::GlEventPump::RemoveActive(*(this + 18), this);
  *(this + 488) = &unk_2A1F0B298;
  *(this + 424) = &unk_2A1F0B708;
  BlueFin::GlMeSrdMeasTimingMgr::~GlMeSrdMeasTimingMgr((this + 3072));
  BlueFin::GlMeSrdCntIn::~GlMeSrdCntIn((this + 2816));
  BlueFin::GlMeSrdSyncIn::~GlMeSrdSyncIn((this + 2560));
  BlueFin::GlMeSrdAsicinit::~GlMeSrdAsicinit((this + 1760));
}

{
  BlueFin::GlMeSrdCtrlSm::~GlMeSrdCtrlSm(this);

  JUMPOUT(0x29C292F60);
}

uint64_t BlueFin::GlMeSrdCtrlSm::LoadEswPatch(BlueFin::GlMeSrdCtrlSm *this)
{
  *(this + 220) = 1;
  v4 = 26;
  v2 = *(this + 4);
  result = *(this + 1);
  *(this + 4) = result;
  do
  {
    v5 = 0;
    if (BlueFin::patch_dispatch(result, this, &v4, &v5))
    {
      result = v5;
    }

    else
    {
      result = (*(this + 4))(this, &v4);
    }

    *(this + 4) = result;
  }

  while (result);
  *(this + 4) = v2;
  return result;
}

_BYTE *BlueFin::GlMeSrdCtrlSm::MeasureCNTIN(_BYTE *this, int a2)
{
  if ((this[5576] & 1) == 0)
  {
    if (this[219] != 1)
    {
      DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 264, "MeasureCNTIN", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 264, "0");
    }

    if (a2)
    {
      v3 = 44;
    }

    else
    {
      v3 = 45;
    }

    v4 = (this + 2856);

    return BlueFin::GlQueue::putFIFO(v4, v3, 0);
  }

  return this;
}

uint64_t BlueFin::GlMeSrdCtrlSm::SetGeofenceMode(BlueFin::GlMeSrdCtrlSm *this, char a2)
{
  if ((*(this + 219) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 318, "SetGeofenceMode", "m_bAsicInitDone");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 318, "m_bAsicInitDone");
  }

  v3 = (this + 40);

  return BlueFin::GlQueue::putFIFO(v3, 31, a2);
}

uint64_t BlueFin::GlMeSrdCtrlSm::SetGeofenceData(uint64_t a1)
{
  if ((*(a1 + 217) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 326, "SetGeofenceData", "m_bGeofenceStarted");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 326, "m_bGeofenceStarted");
  }

  v2 = *(**(a1 + 192) + 32);

  return v2();
}

uint64_t BlueFin::GlMeSrdCtrlSm::GetGeofenceState(BlueFin::GlMeSrdCtrlSm *this)
{
  if ((*(this + 217) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 340, "GetGeofenceState", "m_bGeofenceStarted");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 340, "m_bGeofenceStarted");
  }

  v2 = *(**(this + 24) + 48);

  return v2();
}

uint64_t BlueFin::GlMeSrdCtrlSm::SetMeasurementIntervalMs(uint64_t this, unsigned int a2, unsigned int a3)
{
  if ((*(this + 219) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 374, "SetMeasurementIntervalMs", "m_bAsicInitDone");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 374, "m_bAsicInitDone");
  }

  if ((*(this + 5576) & 1) == 0)
  {
    v3 = a3;
    v4 = a2;
    v5 = this + 34512;
    v6 = (this + 3072);
    if (*(this + 3324))
    {
      v7 = 263;
    }

    else
    {
      v7 = 286;
      if (*(this + 3340))
      {
        v7 = 279;
      }
    }

    if (*(v6 + v7))
    {
      v8 = a3;
    }

    else
    {
      v8 = a2;
    }

    (*(**(this + 184) + 48))(*(this + 184), v8);
    this = BlueFin::GlMeSrdMeasTimingMgr::SetReportingInterval(v6, v8);
    *v5 = 1;
    *(v5 + 2) = v4;
    *(v5 + 4) = v3;
  }

  return this;
}

void BlueFin::GlMeSrdCtrlSm::DataBurstCtrl(uint64_t this, uint64_t a2, int a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  if ((*(this + 5576) & 1) == 0)
  {
    if (a2)
    {
      a7 = (*(**(this + 136) + 584))(*(this + 136));
      GlCustomLog(14, "GlDineCtrl::DataBurstCtrl(%s, %d, %d, 0x%02X, 0x%02X, %d, %d)\n", "ON", a3, a4, a5, a6, a7, a8);
    }

    BlueFin::GlMeSrdCtrlSm::ProgramDebugBurstMode(this, a2, a3, a4, a5, a6, a7, a8);
    *(*(this + 136) + 552) = a2;
  }
}

void BlueFin::GlMeSrdCtrlSm::ProgramDebugBurstMode(BlueFin::GlMeSrdCtrlSm *this, uint64_t a2, char a3, char a4, uint64_t a5, char a6, int a7, int a8)
{
  v16 = *(this + 15);
  if (!v16)
  {
    v16 = *(this + 14);
  }

  v17 = (*(*v16 + 80))(v16);
  v24[0] = 0;
  v24[1] = 0;
  v25 = 0;
  v26 = 1;
  v27 = v17;
  v28 = 0;
  v29 = 0;
  (*(*v17 + 16))(v17, 1);
  v21[0] = a6;
  v21[1] = a5;
  v21[2] = a3;
  v21[3] = a4;
  v22 = a7;
  v23 = a8;
  if ((a2 & 1) == 0)
  {
    v21[0] = 0;
  }

  v18 = *(this + 15);
  if (!v18)
  {
    v18 = *(this + 14);
  }

  (*(*v18 + 24))(v18, a2, a5);
  v19 = (*(*v17 + 48))(v17);
  v20 = (*(*v19 + 16))(v19);
  (*(*v20 + 104))(v20, v24, v21);
  BlueFin::GlMeSrdTransaction::Complete(v24);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v24);
}

void sub_29895DE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlMeSrdCtrlSm::SetMeasurementPeriodCorrection(uint64_t this, int a2)
{
  if ((*(this + 219) & 1) == 0)
  {
    v5 = "m_bAsicInitDone";
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 426, "SetMeasurementPeriodCorrection", "m_bAsicInitDone");
    v6 = 426;
    goto LABEL_16;
  }

  v2 = this;
  if (*(this + 5576))
  {
    return this;
  }

  v7 = 0;
  (*(**(this + 136) + 560))(*(this + 136), &v7 + 2, &v7);
  if (SHIWORD(v7) > a2)
  {
    a2 = (a2 + 1000 * (((HIWORD(v7) - a2) - 1) / 1000) + 1000);
    if (a2 < SHIWORD(v7))
    {
      v5 = "sCorrectionMs >= ssMinMeasurementPeriodCorrection";
      DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 452, "SetMeasurementPeriodCorrection", "sCorrectionMs >= ssMinMeasurementPeriodCorrection");
      v6 = 452;
      goto LABEL_16;
    }
  }

  if (a2 > v7)
  {
    a2 = (((a2 - v7) - 1) % 1000 - (-v7 - 1) - 1000);
    if (a2 > v7)
    {
      v5 = "sCorrectionMs <= ssMaxMeasurementPeriodCorrection";
      DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 467, "SetMeasurementPeriodCorrection", "sCorrectionMs <= ssMaxMeasurementPeriodCorrection");
      v6 = 467;
LABEL_16:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", v6, v5);
    }
  }

  if (a2 < SHIWORD(v7))
  {
    v5 = "sCorrectionMs >= ssMinMeasurementPeriodCorrection";
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 473, "SetMeasurementPeriodCorrection", "sCorrectionMs >= ssMinMeasurementPeriodCorrection");
    v6 = 473;
    goto LABEL_16;
  }

  if (a2 > v7)
  {
    v5 = "sCorrectionMs <= ssMaxMeasurementPeriodCorrection";
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 474, "SetMeasurementPeriodCorrection", "sCorrectionMs <= ssMaxMeasurementPeriodCorrection");
    v6 = 474;
    goto LABEL_16;
  }

  ReportingLms = BlueFin::GlMeSrdMeasTimingMgr::GetReportingLms((v2 + 3072));
  return BlueFin::GlMeSrdMeasTimingMgr::SetMIAdjustment(v2 + 3072, ReportingLms, a2);
}

_BYTE *BlueFin::GlMeSrdCtrlSm::Set1HzPhaseMs(_BYTE *this, double a2)
{
  if ((this[219] & 1) == 0)
  {
    v7 = "m_bAsicInitDone";
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 484, "Set1HzPhaseMs", "m_bAsicInitDone");
    v8 = 484;
    goto LABEL_15;
  }

  v2 = this;
  if (this[5576])
  {
    return this;
  }

  this = BlueFin::GlMeSrdMeasTimingMgr::GetReportingLms((this + 3072));
  v4 = a2 - this;
  if (v4 <= 0.0)
  {
    v5 = 0.0;
    if (v4 < 0.0)
    {
      v5 = ceil(v4 + -0.5);
    }
  }

  else
  {
    v5 = floor(v4 + 0.5);
  }

  v6 = v5;
  if ((v5 - 1000) <= 0xFFFFF893)
  {
    v7 = "slCorrection >= -900 && slCorrection <= 999";
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 491, "Set1HzPhaseMs", "slCorrection >= -900 && slCorrection <= 999");
    v8 = 491;
LABEL_15:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", v8, v7);
  }

  if (v6)
  {

    return BlueFin::GlMeSrdCtrlSm::SetMeasurementPeriodCorrection(v2, v6);
  }

  return this;
}

void BlueFin::GlMeSrdCtrlSm::SetPpsAiding(BlueFin::GlMeSrdCtrlSm *this, int a2, double a3, double a4)
{
  v5 = a3;
  v7 = *(this + 886);
  if (a2 || a3 != 0.0 || a4 != 0.0)
  {
    if ((*(this + 223) & 1) == 0)
    {
      if (v7 % 0x3E8 != (*(this + 829) + *(this + 1660)) % 0x3E8u)
      {
        return;
      }

      *(this + 223) = 1;
    }

    LODWORD(a3) = *(this + 887);
    v12 = *&a3;
    v13 = (*(**(this + 17) + 88))(*(this + 17));
    v14 = v13;
    if (*(this + 248) == 1)
    {
      v15 = v13 + *(this + 30);
      if (v15 >= 4294967300.0)
      {
        v15 = v15 + -4294967300.0;
      }

      *(this + 30) = v15;
      v16 = v12 - v15;
      v17 = v12 - v15 + 4294967300.0;
      if (v12 - v15 >= -2147483650.0)
      {
        v17 = v12 - v15;
      }

      if (v16 >= 2147483650.0)
      {
        v18 = v16 + -4294967300.0;
      }

      else
      {
        v18 = v17;
      }

      if (v18 >= -10.0 && fabs(v18) <= 2.0)
      {
        v30 = v15 + v18 * 0.1;
        if (v30 >= 4294967300.0)
        {
          v30 = v30 + -4294967300.0;
        }

        *(this + 30) = v30;
        goto LABEL_25;
      }

      v19 = v12 + 0.5;
    }

    else
    {
      v19 = v12 + 0.5;
    }

    if (v19 >= 4294967300.0)
    {
      v19 = v19 + -4294967300.0;
    }

    *(this + 30) = v19;
    *(this + 248) = 1;
LABEL_25:
    v20 = *(this + 15);
    if (!v20)
    {
      v20 = *(this + 14);
    }

    v21 = a4 * 0.001 * v14;
    v22 = (*(*v20 + 80))(v20);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 1;
    v35 = v22;
    v36 = 0;
    v37 = 0;
    (*(*v22 + 16))(v22, 1);
    if ((*(this + 222) & 1) == 0)
    {
      (*(**(this + 17) + 1384))();
      DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 581, "SetPpsAiding", "bPpsEnabled");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 581, "bPpsEnabled");
    }

    v23 = (v5 + 1000.0) * 0.001 * v21 + *(this + 30);
    if (v23 >= 4294967300.0)
    {
      v24 = v23 + -4294967300.0;
    }

    else
    {
      v24 = (v5 + 1000.0) * 0.001 * v21 + *(this + 30);
    }

    v25 = (*(*v22 + 48))(v22);
    v26 = (*(*v25 + 40))(v25);
    (*(*v26 + 56))(v26, &v31, (v24 + 0.5), (v21 + 0.5));
    BlueFin::GlMeSrdTransaction::Complete(&v31);
    v27 = v24 - v12;
    v28 = v24 - v12 + 4294967300.0;
    if (v24 - v12 >= -2147483650.0)
    {
      v28 = v24 - v12;
    }

    if (v27 >= 2147483650.0)
    {
      v29 = v27 + -4294967300.0;
    }

    else
    {
      v29 = v28;
    }

    GlCustomLog(15, "PPS: GlMeSrdCtrlSm::SetPpsAiding(%u)  PROGRAM     TriggerClk:%.2lf  TriggerLms:%.6lf  PeriodMs:%.6lf\n", v7, v24, v29 / (v21 * 0.001) + v7, v21 / v14 * 1000.0);
    goto LABEL_38;
  }

  *(this + 222) = 0;
  v8 = *(this + 15);
  if (!v8)
  {
    v8 = *(this + 14);
  }

  v9 = (*(*v8 + 80))(v8);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 1;
  v35 = v9;
  v36 = 0;
  v37 = 0;
  (*(*v9 + 16))(v9, 1);
  v10 = (*(*v9 + 48))(v9);
  v11 = (*(*v10 + 40))(v10);
  (*(*v11 + 64))(v11, &v31);
  BlueFin::GlMeSrdTransaction::Complete(&v31);
LABEL_38:
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v31);
}

void sub_29895E78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlMeSrdCtrlSm::CWTest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, _BYTE *a7, int a8, double a9, double a10, char a11, _BYTE *a12, _BYTE *a13)
{
  *(a1 + 216) = 1;
  if (*(a1 + 1614))
  {
    v17 = "m_otSigAid.number_of_signals == 0";
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 606, "CWTest", "m_otSigAid.number_of_signals == 0");
    v18 = 606;
    goto LABEL_8;
  }

  v13 = 0;
  v14 = a1 + 0x8000;
  v15 = (a1 + 34248);
  do
  {
    *v15 = *(a2 + v13);
    LODWORD(a10) = *(a4 + v13);
    v15[10] = *(a3 + v13);
    v15[20] = *&a10;
    v13 += 4;
    ++v15;
  }

  while (v13 != 40);
  *(a1 + 34496) = *a7;
  *(a1 + 34497) = *a12;
  *(a1 + 34498) = *a13;
  *(a1 + 34500) = a8;
  if (a5 < 0x3E8)
  {
    v17 = "ulCoherentUs >= 1000";
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 620, "CWTest", "ulCoherentUs >= 1000");
    v18 = 620;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", v18, v17);
  }

  *(a1 + 34488) = a5 / 0x3E8;
  *(a1 + 34492) = a6;
  result = (*(**(a1 + 136) + 672))();
  *(v14 + 1737) = result;
  *(v14 + 1736) = a11;
  return result;
}

void BlueFin::GlMeSrdCtrlSm::ToggleHostWakeConfigure(BlueFin::GlMeSrdCtrlSm *this, int a2)
{
  if (a2)
  {
    v3 = *(this + 15);
    if (!v3)
    {
      v3 = *(this + 14);
    }

    v4 = (*(*v3 + 80))(v3);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 1;
    v18 = v4;
    v19 = 0;
    v20 = 0;
    (*(*v4 + 16))(v4, 1);
    v12 = (*(**(this + 17) + 584))();
    v13 = 0x100000001;
    v5 = (*(*v4 + 48))(v4);
    v6 = (*(*v5 + 16))(v5);
    (*(*v6 + 80))(v6, &v14, &v12);
    BlueFin::GlMeSrdTransaction::Complete(&v14);
  }

  else
  {
    v7 = *(this + 15);
    if (!v7)
    {
      v7 = *(this + 14);
    }

    v8 = (*(*v7 + 80))(v7);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 1;
    v18 = v8;
    v19 = 0;
    v20 = 0;
    (*(*v8 + 16))(v8, 1);
    *(this + 34524) = 1;
    v9 = (*(**(this + 17) + 584))();
    v10 = (*(*v8 + 48))(v8);
    v11 = (*(*v10 + 16))(v10);
    (*(*v11 + 96))(v11, &v14, v9);
    BlueFin::GlMeSrdTransaction::Complete(&v14);
  }

  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v14);
}

void sub_29895EBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMeSrdCtrlSm::ToggleCoexConfigure(BlueFin::GlMeSrdCtrlSm *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
    v2 = *(this + 14);
  }

  v3 = (*(*v2 + 80))(v2);
  v8[0] = 0;
  v8[1] = 0;
  v9 = 0;
  v10 = 1;
  v11 = v3;
  v12 = 0;
  v13 = 0;
  (*(*v3 + 16))(v3, 1);
  v6 = (*(**(this + 17) + 600))();
  v7 = 0x100000001;
  v4 = (*(*v3 + 48))(v3);
  v5 = (*(*v4 + 16))(v4);
  (*(*v5 + 80))(v5, v8, &v6);
  BlueFin::GlMeSrdTransaction::Complete(v8);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v8);
}

void sub_29895ED5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMeSrdCtrlSm::ToggleCoexGpio(BlueFin::GlMeSrdCtrlSm *this, uint64_t a2)
{
  v4 = *(this + 15);
  if (!v4)
  {
    v4 = *(this + 14);
  }

  v5 = (*(*v4 + 80))(v4);
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  v11 = 1;
  v12 = v5;
  v13 = 0;
  v14 = 0;
  (*(*v5 + 16))(v5, 1);
  v6 = (*(*v5 + 48))(v5);
  v7 = (*(*v6 + 16))(v6);
  v8 = (*(**(this + 17) + 600))(*(this + 17));
  (*(*v7 + 88))(v7, v9, v8, a2);
  BlueFin::GlMeSrdTransaction::Complete(v9);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v9);
}

void sub_29895EEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMeSrdCtrlSm::SaveNvRamAndRtc(BlueFin::GlMeSrdCtrlSm *this, unsigned int a2, unsigned int *a3, int a4)
{
  if ((*(this + 5576) & 1) == 0)
  {
    v8 = *(this + 15);
    if (!v8)
    {
      v8 = *(this + 14);
    }

    v9 = (*(*v8 + 80))(v8);
    v29[0] = 0;
    v29[1] = 0;
    v30 = 0;
    v31 = 1;
    v32 = v9;
    v33 = 0;
    v34 = 0;
    (*(*v9 + 16))(v9, 1);
    v28 = 0;
    v10 = *(this + 452);
    LODWORD(v11) = *(this + 906);
    v13.i16[0] = *(this + 1814);
    v12 = v11 + v13.u64[0] * 4294967300.0;
    *v13.i64 = floor(v12 + (a2 - v10) * 32.768 + 0.5);
    if (*v13.i64 >= 8.79609302e12)
    {
      *v13.i64 = *v13.i64 + -8.79609302e12;
    }

    v24 = v13;
    GlCustomLog(15, "SaveNvRamAndRtc:  LastCapture  Lms:%.3lf  RtcCnt:%.0lf  RtcMs:%.3lf\n", v10, v12, v12 / 32.768);
    v16.i64[1] = v24.i64[1];
    if (*v24.i64 <= 0.0)
    {
      GlCustomLog(11, "SaveNvRamAndRtc:  Error! Negative Rtc Count\n");
      v22 = 0;
      v23 = 0;
      v20 = *v24.i64;
    }

    else
    {
      *v16.i64 = *v24.i64 * 2.32830644e-10;
      *v15.i64 = *v24.i64 * 2.32830644e-10 + trunc(*v24.i64 * 2.32830644e-10 * 2.32830644e-10) * -4294967300.0;
      v17.f64[0] = NAN;
      v17.f64[1] = NAN;
      v18 = vnegq_f64(v17);
      v15.i64[0] = vbslq_s8(v18, v15, v16).u64[0];
      if (*v24.i64 * 2.32830644e-10 > 4294967300.0)
      {
        v16.i64[0] = v15.i64[0];
      }

      if (*v16.i64 < -4294967300.0)
      {
        *v14.i64 = -*v16.i64;
        *v16.i64 = -(*v16.i64 - trunc(*v16.i64 * -2.32830644e-10) * -4294967300.0);
        v16 = vbslq_s8(v18, v16, v14);
        *v16.i64 = -*v16.i64;
      }

      if (*v16.i64 < 0.0)
      {
        v19 = --*v16.i64;
      }

      else
      {
        LOWORD(v19) = *v16.i64;
      }

      v20 = *v24.i64;
      *v14.i64 = *v24.i64 - trunc(*v24.i64 * 2.32830644e-10) * 4294967300.0;
      v14.i64[0] = vbslq_s8(v18, v14, v24).i64[0];
      *v16.i64 = *v14.i64 - trunc(*v14.i64 * 2.32830644e-10) * 4294967300.0;
      *&v21 = vbslq_s8(v18, v16, v24).u64[0];
      if (*v14.i64 <= 4294967300.0)
      {
        v21 = *v14.i64;
      }

      v22 = v21;
      v23 = 32 * (v19 & 0x7FF);
    }

    GlCustomLog(15, "SaveNvRamAndRtc:  AtLms:%u  RtcCnt:%.0lf  RtcMs:%.3lf  Reg1:%08x  Reg2:%08x  Reg3:%08x\n", a2, v20, v20 / 32.768, *a3, a3[1], a3[2]);
    v25[0] = v23;
    v25[1] = v22;
    v26 = *a3;
    v27 = a3[2];
    BlueFin::GlMeSrdNvRamWriter::SendNvramToEsw(v25, v29, a4);
    BlueFin::GlMeSrdTransaction::Complete(v29);
    BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v29);
  }
}

void sub_29895F190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlMeSrdCtrlSm::GetRadioRegisters(BlueFin::GlMeSrdCtrlSm *this)
{
  v4 = 61;
  v2 = *(this + 4);
  result = *(this + 1);
  *(this + 4) = result;
  do
  {
    v5 = 0;
    if (BlueFin::patch_dispatch(result, this, &v4, &v5))
    {
      result = v5;
    }

    else
    {
      result = (*(this + 4))(this, &v4);
    }

    *(this + 4) = result;
  }

  while (result);
  *(this + 4) = v2;
  return result;
}

uint64_t BlueFin::GlMeSrdCtrlSm::GetAdcCapture(BlueFin::GlMeSrdCtrlSm *this)
{
  v4 = 62;
  v2 = *(this + 4);
  result = *(this + 1);
  *(this + 4) = result;
  do
  {
    v5 = 0;
    if (BlueFin::patch_dispatch(result, this, &v4, &v5))
    {
      result = v5;
    }

    else
    {
      result = (*(this + 4))(this, &v4);
    }

    *(this + 4) = result;
  }

  while (result);
  *(this + 4) = v2;
  return result;
}

uint64_t BlueFin::GlMeSrdAsicInitCallback::OnEswPatchLoaded(BlueFin::GlMeSrdCtrlSm **this)
{
  BlueFin::GlMeSrdCtrlSm::ReportSupportedFeatures(this[1]);
  v2 = this[1];
  GlCustomLog(12, "GlMeSrdCtrlSm::EswPatchLoaded!\n");
  BlueFin::GlQueue::putFIFO((v2 + 40), 27, 0);
  v3 = *(**(this[1] + 20) + 88);

  return v3();
}

uint64_t BlueFin::GlMeSrdCtrlSm::ReportSupportedFeatures(BlueFin::GlMeSrdCtrlSm *this)
{
  v25 = *MEMORY[0x29EDCA608];
  *v9 = 0;
  v10 = 0;
  v11 = 0;
  v18 = 0;
  v17 = 0u;
  v16 = 0u;
  v19 = &v21;
  v20 = 2;
  v21 = 0;
  v22 = 0;
  v24 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  *&v9[7] = 0;
  memset(v23, 0, 13);
  v2 = (*(**(this + 17) + 80))(*(this + 17));
  *v9 = ((*(**(this + 17) + 72))(*(this + 17)) + v2);
  *&v9[2] = 1;
  if ((*(**(this + 17) + 464))())
  {
    *&v9[2] |= 2u;
  }

  if ((*(**(this + 17) + 464))(*(this + 17), 2))
  {
    *&v9[2] |= 4u;
  }

  v3 = *(this + 17);
  if ((v3[268] & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 1119, "ReportSupportedFeatures", "m_rAsicConfig.GetGlnsDelaysValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 1119, "m_rAsicConfig.GetGlnsDelaysValid()");
  }

  if ((*(*v3 + 464))(v3, 3))
  {
    *&v9[2] |= 8u;
  }

  if ((*(**(this + 17) + 464))(*(this + 17), 6))
  {
    *&v9[2] |= 0x80u;
  }

  if ((*(**(this + 17) + 464))(*(this + 17), 4))
  {
    *&v9[2] |= 0x20u;
  }

  (*(**(this + 17) + 480))(*(this + 17), &v9[4]);
  if (((*(**(this + 17) + 832))() & 1) == 0)
  {
    v9[8] = 1;
  }

  if ((*(**(this + 17) + 464))(*(this + 17), 5))
  {
    *&v9[2] |= 0x40u;
  }

  LODWORD(v17) = (*(**(this + 17) + 184))(*(this + 17));
  DWORD1(v17) = (*(**(this + 17) + 16))(*(this + 17));
  DWORD2(v17) = (*(**(this + 17) + 912))();
  HIDWORD(v17) = (*(**(this + 17) + 152))(*(this + 17));
  v4 = *(this + 17);
  LOBYTE(v18) = *(v4 + 1416);
  v23[12] = *(v4 + 2196);
  BlueFin::GlSetBase::operator=(&v19, v4 + 1616);
  v21 = *(v4 + 1628);
  (*(**(this + 17) + 1352))();
  (*(**(this + 17) + 1336))();
  v5 = *(this + 17);
  v6 = *(v5 + 332);
  v10 = *(v5 + 272);
  v11 = v6;
  v16 = *(v5 + 336);
  v7 = *(v5 + 292);
  v12 = *(v5 + 276);
  v13 = v7;
  v14 = *(v5 + 308);
  v15 = *(v5 + 324);
  HIBYTE(v18) = (*(*v5 + 1016))();
  v23[13] = (*(**(this + 17) + 712))();
  (*(**(this + 17) + 1384))();
  v24 = (*(**(this + 17) + 600))();
  return (*(**(this + 20) + 96))(*(this + 20), v9);
}

uint64_t BlueFin::GlMeSrdAsicInitCallback::OnAsicStarted(BlueFin::GlMeSrdAsicInitCallback *this, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, double a6)
{
  v12 = *(this + 1);
  *(v12 + 219) = 1;
  BlueFin::GlMeSrdCtrlSm::ReportSupportedFeatures(v12);
  v41 = 35;
  v13 = *(this + 1);
  v14 = *(v13 + 32);
  v15 = *(v13 + 8);
  *(v13 + 32) = v15;
  do
  {
    *&v39 = 0;
    if (BlueFin::patch_dispatch(v15, v13, &v41, &v39))
    {
      v15 = v39;
    }

    else
    {
      v15 = (*(v13 + 32))(v13, &v41);
    }

    *(v13 + 32) = v15;
  }

  while (v15);
  *(v13 + 32) = v14;
  (*(**(*(this + 1) + 160) + 80))(*(*(this + 1) + 160), a2, a3, a4, a5, a6);
  (*(**(*(this + 1) + 128) + 64))(*(*(this + 1) + 128));
  v16 = (*(**(*(this + 1) + 136) + 184))(*(*(this + 1) + 136));
  v17 = (*(**(*(this + 1) + 136) + 912))();
  v18 = *(this + 1);
  v19 = *(v18 + 136);
  v39 = *(v19 + 2220);
  v40 = *(v19 + 2236);
  result = (*(**(v18 + 160) + 376))();
  if ((v17 & 0xFFFFFFFE) == 0x20)
  {
    v33 = "(GL_RF_47520_BRCM_EXT_LNA != eRfType) && (GL_RF_47520_BRCM != eRfType)";
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 879, "OnAsicStarted", "(GL_RF_47520_BRCM_EXT_LNA != eRfType) && (GL_RF_47520_BRCM != eRfType)");
    v34 = 879;
    goto LABEL_69;
  }

  v21 = 1;
  if (v16 > 872480774)
  {
    v22 = v16 == 872480775 || v16 == 872611847;
    v23 = 889126919;
  }

  else
  {
    v22 = v16 == 805371910 || v16 == 805502982;
    v23 = 822018054;
  }

  if (!v22 && v16 != v23)
  {
    v21 = 0;
  }

  if (v16 > 939720710)
  {
    if ((v16 - 1006829576) >= 2 && v16 != 956235783 && v16 != 939720711)
    {
LABEL_52:
      v27 = v16 & 0xF000FFFE;
      v28 = v17 == 39;
      v29 = v17 - 39 < 0xFFFFFFFE;
      v30 = v16 & 0xF100FFFE;
      v31 = v17 == 40;
      if (!v21)
      {
        if (v17 <= 0x1E && ((1 << v17) & 0x76000000) != 0)
        {
          v33 = "!(b4753RF || b47531RF)";
          DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 932, "OnAsicStarted", "!(b4753RF || b47531RF)");
          v34 = 932;
          goto LABEL_69;
        }

        goto LABEL_40;
      }

LABEL_31:
      if (v17 - 25 >= 2 && v17 != 28)
      {
        v33 = "b4753RF";
        DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 924, "OnAsicStarted", "b4753RF");
        v34 = 924;
        goto LABEL_69;
      }

      goto LABEL_40;
    }
  }

  else if ((v16 - 805371912) >= 2 && (v16 - 805502984) >= 2 && v16 != 939589639)
  {
    goto LABEL_52;
  }

  v27 = v16 & 0xF000FFFE;
  v28 = v17 == 39;
  v29 = v17 - 39 < 0xFFFFFFFE;
  v30 = v16 & 0xF100FFFE;
  v31 = v17 == 40;
  if (v21)
  {
    goto LABEL_31;
  }

  if (v17 > 0x1E || ((1 << v17) & 0x76000000) == 0)
  {
    v33 = "b4753RF || b47531RF";
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 928, "OnAsicStarted", "b4753RF || b47531RF");
    v34 = 928;
    goto LABEL_69;
  }

LABEL_40:
  if (v27 == 805306384)
  {
    if (v29)
    {
      v33 = "b4776RF";
      DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 942, "OnAsicStarted", "b4776RF");
      v34 = 942;
      goto LABEL_69;
    }
  }

  else if (v27 == 805306382 && v17 != 34 && v17 != 36)
  {
    v33 = "b4755RF";
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 937, "OnAsicStarted", "b4755RF");
    v34 = 937;
    goto LABEL_69;
  }

  if (v30 != 805306386)
  {
    if (v30 != 822083604)
    {
      if (v30 != 805306388)
      {
        return result;
      }

      goto LABEL_62;
    }

    if (v31)
    {
      return result;
    }

    v33 = "bFMNWRF";
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 952, "OnAsicStarted", "bFMNWRF");
    v34 = 952;
LABEL_69:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", v34, v33);
  }

LABEL_62:
  if (!v28)
  {
    v33 = "bMNWRF";
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 947, "OnAsicStarted", "bMNWRF");
    v34 = 947;
    goto LABEL_69;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdEvtListener::OnSubHeartbeat(BlueFin::GlMeSrdEvtListener *this)
{
  v4 = 16;
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

uint64_t BlueFin::GlMeSrdEvtListener::OnCntinMeasured(BlueFin::GlMeSrdEvtListener *this)
{
  v4 = 18;
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

uint64_t BlueFin::GlMeSrdEvtListener::OnNoiseReport(BlueFin::GlMeSrdEvtListener *this)
{
  v4 = 60;
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

uint64_t BlueFin::GlMeSrdCtrlSm::OnReliableTransactionAck(BlueFin::GlMeSrdCtrlSm *this, void *a2)
{
  v5[0] = 13;
  v5[1] = a2;
  v3 = *(this + 4);
  result = *(this + 1);
  *(this + 4) = result;
  do
  {
    v6 = 0;
    if (BlueFin::patch_dispatch(result, this, v5, &v6))
    {
      result = v6;
    }

    else
    {
      result = (*(this + 4))(this, v5);
    }

    *(this + 4) = result;
  }

  while (result);
  *(this + 4) = v3;
  return result;
}

uint64_t (*(*BlueFin::GlMeSrdCtrlSm::com_breakdown(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  if (v3 <= 4)
  {
    if (v3 == 2)
    {
      *(a1 + 1688) = a1;
      BlueFin::GlTimer::arm((a1 + 1656), 5, 0, 0x1F4u);
      *(a1 + 1680) = 1;
      BlueFin::GlMeSrdAsicinit::DebugComDeadIssue((a1 + 1760));
      return 0;
    }

    if (v3 == 3)
    {
      BlueFin::GlTimer::disarm((a1 + 1656));
      return 0;
    }

    return BlueFin::GlMeSrdCtrlSm::my_top;
  }

  if (v3 == 5)
  {
    BlueFin::GlMeSrdStats::SetHeartbeatMs(*(a1 + 200), *(a1 + 3544));
    v5 = *(a1 + 200);
    v6 = *(a1 + 2504);
    *(v5 + 920) = *(a1 + 2520);
    *(v5 + 904) = v6;
    (*(**(a1 + 160) + 176))(*(a1 + 160), *(a1 + 200) + 8);
    (*(**(a1 + 160) + 192))(*(a1 + 160));
    BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdCtrlSm::off, "&GlMeSrdCtrlSm::off");
    return 0;
  }

  if (v3 != 38)
  {
    return BlueFin::GlMeSrdCtrlSm::my_top;
  }

  return 0;
}

uint64_t (*(*BlueFin::GlMeSrdCtrlSm::wait4memdump(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  v4 = BlueFin::GlMeSrdCtrlSm::my_top;
  if (v3 <= 4)
  {
    if (v3 == 2)
    {
      *(a1 + 5576) = 1;
      *(a1 + 1688) = a1;
      BlueFin::GlTimer::arm((a1 + 1656), 5, 1, 0x3E8u);
      *(a1 + 1680) = 1;
      BlueFin::GlMeSrdMeasTimingMgr::CancelOngoingMIAdjustment((a1 + 3072));
      v9 = *(a1 + 120);
      if (!v9)
      {
        v9 = *(a1 + 112);
      }

      (*(*v9 + 88))(v9, a1 + 5320);
      v10 = *(a1 + 120);
      if (!v10)
      {
        v10 = *(a1 + 112);
      }

      (*(*v10 + 56))(v10);
      v11 = *(a1 + 120);
      if (!v11)
      {
        v11 = *(a1 + 112);
      }

      v12 = (*(*v11 + 80))(v11);
      v18 = 0;
      v19[0] = 0;
      *(v19 + 7) = 0;
      v19[2] = v12;
      v20 = 0;
      v21 = 0;
      (*(*v12 + 16))(v12, 0);
      if ((*(**(a1 + 136) + 264))())
      {
        v13 = -8706;
      }

      else
      {
        v13 = -8194;
      }

      v14 = (*(*v12 + 48))(v12);
      v15 = (*(*v14 + 16))(v14);
      (*(*v15 + 160))(v15, &v18, v13);
      BlueFin::GlMeSrdTransaction::Complete(&v18);
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v18);
    }

    else
    {
      if (v3 != 3)
      {
        return v4;
      }

      *(a1 + 5576) = 0;
      v5 = *(a1 + 120);
      if (!v5)
      {
        v5 = *(a1 + 112);
      }

      (*(*v5 + 96))(v5, a1 + 5320);
      BlueFin::GlTimer::disarm((a1 + 1656));
      BlueFin::GlUtils::Assert(BlueFin::GlUtils::m_pInstance, (a1 + 5444), *(a1 + 5572), v6);
    }

    return 0;
  }

  if (v3 == 5)
  {
    v8 = a2[1];
    if (v8 < 0x3C)
    {
      *(a1 + 1688) = a1;
      BlueFin::GlTimer::arm((a1 + 1656), 5, v8 + 1, 0x3E8u);
      *(a1 + 1680) = 1;
      BlueFin::GlMeSrdMeasTimingMgr::SetHeartBeat((a1 + 3072), *(a1 + 3544) + 1000 * a2[1]);
      ReportingLms = BlueFin::GlMeSrdMeasTimingMgr::GetReportingLms((a1 + 3072));
      BlueFin::GlMeSrdStats::SetHeartbeatMs(*(a1 + 200), ReportingLms);
      (*(**(a1 + 160) + 176))(*(a1 + 160), *(a1 + 200) + 8);
      (*(**(a1 + 152) + 24))(*(a1 + 152), ReportingLms, 1000);
      return 0;
    }

    goto LABEL_12;
  }

  if (v3 == 22 || v3 == 38)
  {
LABEL_12:
    BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdCtrlSm::off, "&GlMeSrdCtrlSm::off");
    return 0;
  }

  return v4;
}

void sub_298960684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlMeSrdCtrlSm::ReceiverParameterProgrammed(BlueFin::GlMeSrdCtrlSm *this, void *a2)
{
  v5 = 13;
  v3 = *(this + 4);
  result = *(this + 1);
  *(this + 4) = result;
  do
  {
    v6 = 0;
    if (BlueFin::patch_dispatch(result, this, &v5, &v6))
    {
      result = v6;
    }

    else
    {
      result = (*(this + 4))(this, &v5);
    }

    *(this + 4) = result;
  }

  while (result);
  *(this + 4) = v3;
  return result;
}

uint64_t (*(*BlueFin::GlMeSrdCtrlSm::wait4standby(uint64_t a1, unsigned __int8 *a2, double a3))(uint64_t a1, unsigned __int8 *a2))()
{
  v4 = *a2;
  v5 = BlueFin::GlMeSrdCtrlSm::my_top;
  if (v4 > 0xC)
  {
    switch(v4)
    {
      case 0xDu:
        if (a2[1] != 1)
        {
          return 0;
        }

        BlueFin::GlTimer::disarm((a1 + 1656));
        *(a1 + 1688) = a1;
        BlueFin::GlTimer::arm((a1 + 1656), 63, 0, 0x64u);
        v5 = 0;
        *(a1 + 1680) = 1;
        break;
      case 0x15u:
        v6 = "&GlMeSrdCtrlSm::wait4memdump";
        v7 = BlueFin::GlMeSrdCtrlSm::wait4memdump;
        goto LABEL_23;
      case 0x3Fu:
        BlueFin::GlMeSrdStats::ReportStats(*(a1 + 200), a3);
        (*(**(a1 + 160) + 104))(*(a1 + 160));
        goto LABEL_10;
    }
  }

  else
  {
    switch(v4)
    {
      case 2u:
        if (*(a1 + 3324))
        {
          v8 = 260;
        }

        else
        {
          v8 = 284;
          if (*(a1 + 3340))
          {
            v8 = 276;
          }
        }

        v12 = *(a1 + 3072 + v8);
        if (*(a1 + 3356) > v12)
        {
          v12 = *(a1 + 3356);
        }

        *(a1 + 1688) = a1;
        BlueFin::GlTimer::arm((a1 + 1656), 5, 0, v12 + 1250);
        *(a1 + 1680) = 1;
        BlueFin::GlMeSrdMeasTimingMgr::CancelOngoingMIAdjustment((a1 + 3072));
        v13 = *(a1 + 120);
        if (!v13)
        {
          v13 = *(a1 + 112);
        }

        v14 = (*(*v13 + 80))(v13);
        v21[0] = BlueFin::GlMeSrdCtrlSm::OnReliableTransactionAck;
        v21[1] = a1;
        v22 = 257;
        v23 = 0;
        v24 = v14;
        v25 = 0;
        v26 = 0;
        (*(*v14 + 16))(v14, 1);
        v15 = *(*v14 + 48);
        if (*(a1 + 232) == 1)
        {
          v16 = v15(v14);
          v17 = (*(*v16 + 16))(v16);
          v18 = 0;
        }

        else
        {
          v19 = v15(v14);
          v17 = (*(*v19 + 16))(v19);
          v18 = 1;
        }

        (*(*v17 + 152))(v17, v21, v18);
        BlueFin::GlMeSrdTransaction::Complete(v21);
        BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v21);
        return 0;
      case 3u:
        v9 = *(a1 + 120);
        if (!v9)
        {
          v9 = *(a1 + 112);
        }

        (*(*v9 + 160))(v9, a1 + 4096);
        v10 = *(a1 + 120);
        if (!v10)
        {
          v10 = *(a1 + 112);
        }

        (*(*v10 + 176))(v10, a1 + 3904);
        v11 = *(a1 + 120);
        if (!v11)
        {
          v11 = *(a1 + 112);
        }

        (*(*v11 + 128))(v11, a1 + 3856);
        BlueFin::GlTimer::disarm((a1 + 1656));
        return 0;
      case 5u:
        (*(**(a1 + 160) + 176))(*(a1 + 160), *(a1 + 200) + 8);
        (*(**(a1 + 160) + 192))(*(a1 + 160));
LABEL_10:
        *(a1 + 219) = 0;
        v6 = "&GlMeSrdCtrlSm::off";
        v7 = BlueFin::GlMeSrdCtrlSm::off;
LABEL_23:
        BlueFin::QHsm::tran(a1, v7, v6);
        return 0;
    }
  }

  return v5;
}

void sub_298960AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t (*(*(*BlueFin::GlMeSrdCtrlSm::idle(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2))(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  result = BlueFin::GlMeSrdCtrlSm::running;
  if (v3 > 0x16)
  {
    if (*a2 > 0x1Du)
    {
      if (v3 == 30)
      {
        if (*(this + 34500))
        {
          v5 = "&GlMeSrdCtrlSm::wait4spectrum";
          v6 = BlueFin::GlMeSrdCtrlSm::wait4spectrum;
        }

        else
        {
          v5 = "&GlMeSrdCtrlSm::wait4cw";
          v6 = BlueFin::GlMeSrdCtrlSm::wait4cw;
        }
      }

      else
      {
        if (v3 != 32)
        {
          return result;
        }

        v5 = "&GlMeSrdCtrlSm::platform_test";
        v6 = BlueFin::GlMeSrdCtrlSm::platform_test;
      }
    }

    else
    {
      if (v3 == 23)
      {
        BlueFin::GlMeSrdCtrlSm::GotRadioReport(this);
        return 0;
      }

      if (v3 != 28)
      {
        return result;
      }

      v5 = "&GlMeSrdCtrlSm::steady";
      v6 = BlueFin::GlMeSrdCtrlSm::steady;
    }

    BlueFin::QHsm::tran(this, v6, v5);
    return 0;
  }

  if (*a2 <= 0xEu)
  {
    if (v3 != 2)
    {
      if (v3 != 3)
      {
        return result;
      }

      BlueFin::GlTimer::disarm(this + 207);
      return 0;
    }

    if (*(this + 216) == 1)
    {
      v7 = (this + 40);
      v8 = 30;
LABEL_36:
      BlueFin::GlQueue::putLIFO(v7, v8, 0);
      return 0;
    }

    if (*(this + 218) == 1)
    {
      v7 = (this + 40);
      v8 = 32;
      goto LABEL_36;
    }

    if (*(this + 807))
    {
      v7 = (this + 40);
      v8 = 28;
      goto LABEL_36;
    }

    return 0;
  }

  if (v3 != 15)
  {
    if (v3 != 16)
    {
      return result;
    }

    BlueFin::GlMeSrdMeasTimingMgr::SetSubHeartBeat((this + 3072), *(this + 898));
    (*(**(this + 19) + 24))(*(this + 19), *(this + 842), 200);
    return 0;
  }

  v9 = *(this + 886);
  BlueFin::GlMeSrdStats::SetHeartbeatMs(*(this + 25), v9);
  (*(**(this + 20) + 176))(*(this + 20), *(this + 25) + 8);
  BlueFin::GlMeSrdMeasTimingMgr::SetHeartBeat((this + 3072), v9);
  v10 = *(this + 19);
  ReportingLms = BlueFin::GlMeSrdMeasTimingMgr::GetReportingLms((this + 3072));
  (*(*v10 + 24))(v10, ReportingLms, 1000);
  if (*(this + 3324))
  {
    v12 = 260;
  }

  else
  {
    v12 = 284;
    if (*(this + 3340))
    {
      v12 = 276;
    }
  }

  v13 = *(this + v12 + 3072);
  if (*(this + 1678) > v13)
  {
    v13 = *(this + 1678);
  }

  v14 = 5 * v13;
  if (v14 >= 0x4E20)
  {
    v14 = 20000;
  }

  *(this + 211) = this;
  BlueFin::GlTimer::arm((this + 1656), 5, 0, v14 + 250);
  result = 0;
  *(this + 1680) = 1;
  return result;
}

void BlueFin::GlMeSrdCtrlSm::SetBlankingConfig(BlueFin::GlMeSrdCtrlSm *this)
{
  v2 = *(this + 15);
  if (!v2)
  {
    v2 = *(this + 14);
  }

  v3 = (*(*v2 + 80))(v2);
  v30[0] = 0;
  v30[1] = 0;
  v31 = 0;
  v32 = 1;
  v33 = v3;
  v34 = 0;
  v35 = 0;
  (*(*v3 + 16))(v3, 1);
  v27 = 0;
  v28 = 0uLL;
  v29 = 0;
  GlCustomLog(14, "SetBlankingConfig\n");
  if (!(*(**(this + 17) + 264))(*(this + 17)))
  {
    v26 = 1780;
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 1780, "SetBlankingConfig", "0");
    goto LABEL_19;
  }

  v4 = *(this + 17);
  v5 = *(v4 + 380);
  v6 = *(v4 + 382);
  if (!*(v4 + 382))
  {
    v6 = 6;
  }

  if (!*(v4 + 380))
  {
    v5 = 40;
  }

  v7 = v5 | (v6 << 16);
  v8 = *(v4 + 376);
  if (!v8)
  {
    v8 = 7500;
  }

  HIDWORD(v28) = v7;
  v29 = v8;
  GlCustomLog(14, "BlankingThresholdConfig: PwrThres %u\n", v8);
  *(&v28 + 4) = 0x1E848000000001;
  v9 = *(this + 17);
  v9[375] = 2000000;
  v10 = v9[91];
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 0;
      goto LABEL_14;
    }

    v26 = 1799;
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 1799, "SetBlankingConfig", "0");
LABEL_19:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", v26, "0");
  }

  v11 = 4;
LABEL_14:
  LOBYTE(v27) = v11;
  HIDWORD(v27) = 0;
  BlueFin::GlMeSrdCtrlSm::GetBlankingConfigs(this, v9[90], &v27);
  v12 = (*(*v33 + 48))(v33);
  v13 = (*(*v12 + 16))(v12);
  (*(*v13 + 136))(v13, v30, &v27);
  HIDWORD(v27) = 2;
  BlueFin::GlMeSrdCtrlSm::GetBlankingConfigs(this, *(*(this + 17) + 384), &v27);
  v14 = (*(*v33 + 48))(v33);
  v15 = (*(*v14 + 16))(v14);
  (*(*v15 + 136))(v15, v30, &v27);
  HIDWORD(v27) = 1;
  BlueFin::GlMeSrdCtrlSm::GetBlankingConfigs(this, *(*(this + 17) + 408), &v27);
  v16 = (*(*v33 + 48))(v33);
  v17 = (*(*v16 + 16))(v16);
  (*(*v17 + 136))(v17, v30, &v27);
  HIDWORD(v27) = 3;
  BlueFin::GlMeSrdCtrlSm::GetBlankingConfigs(this, *(*(this + 17) + 432), &v27);
  v18 = (*(*v33 + 48))(v33);
  v19 = (*(*v18 + 16))(v18);
  (*(*v19 + 136))(v19, v30, &v27);
  if ((*(**(this + 17) + 256))(*(this + 17)))
  {
    HIDWORD(v27) = 4;
    BlueFin::GlMeSrdCtrlSm::GetBlankingConfigs(this, *(*(this + 17) + 456), &v27);
    v20 = (*(*v33 + 48))(v33);
    v21 = (*(*v20 + 16))(v20);
    (*(*v21 + 136))(v21, v30, &v27);
    HIDWORD(v27) = 5;
    BlueFin::GlMeSrdCtrlSm::GetBlankingConfigs(this, *(*(this + 17) + 480), &v27);
    v22 = (*(*v33 + 48))(v33);
    v23 = (*(*v22 + 16))(v22);
    (*(*v23 + 136))(v23, v30, &v27);
    HIDWORD(v27) = 6;
    BlueFin::GlMeSrdCtrlSm::GetBlankingConfigs(this, *(*(this + 17) + 504), &v27);
    v24 = (*(*v33 + 48))(v33);
    v25 = (*(*v24 + 16))(v24);
    (*(*v25 + 136))(v25, v30, &v27);
  }

  BlueFin::GlMeSrdTransaction::Complete(v30);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v30);
}

void sub_2989613D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMeSrdCtrlSm::UpdateLteFilter(BlueFin::GlMeSrdCtrlSm *this)
{
  if ((*(**(this + 17) + 256))(*(this + 17)))
  {
    v2 = (*(**(this + 17) + 1080))(*(this + 17));
    v3 = (*(**(this + 17) + 1032))();
    v4 = *(this + 17);
    if (v4[90] == 5)
    {
      v5 = BlueFin::GlMeSrdMeasTimingMgr::GetReportingLms((this + 3072)) < 0x7D1;
      v4 = *(this + 17);
    }

    else
    {
      v5 = 1;
    }

    v6 = (*(*v4 + 1264))(v4, 0);
    v7 = 0;
    v8 = v6 > 0.0 || v5;
    if (v2 == 1)
    {
      v9 = -1;
    }

    else
    {
      v9 = v2;
    }

    if (v9 == 2)
    {
      v9 = -2;
    }

    if (!v8)
    {
      v2 = v9;
    }

    if (v2 == *(this + 57))
    {
      v7 = *(this + 224) == v3;
    }

    v10 = (v2 + 2) > 4 || v2 == 0;
    if (!v10 && !v7)
    {
      v11 = *(this + 15);
      if (!v11)
      {
        v11 = *(this + 14);
      }

      v12 = (*(*v11 + 80))(v11);
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 1;
      v21 = v12;
      v22 = 0;
      v23 = 0;
      (*(*v12 + 16))(v12, 1);
      BlueFin::GlMeSrdAsicinit::BypassLteFilter(this + 1760, &v17, v3, v2);
      *(this + 224) = v3;
      *(this + 57) = v2;
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v17);
    }
  }

  if ((*(**(this + 17) + 264))(*(this + 17)))
  {
    v13 = (*(**(this + 17) + 1080))(*(this + 17));
    v14 = (*(**(this + 17) + 1032))();
    if (*(this + 224) != v14 || v13 != *(this + 57))
    {
      v15 = *(this + 15);
      if (!v15)
      {
        v15 = *(this + 14);
      }

      v16 = (*(*v15 + 80))(v15);
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 1;
      v21 = v16;
      v22 = 0;
      v23 = 0;
      (*(*v16 + 16))(v16, 1);
      BlueFin::GlMeSrdAsicinit::BypassLteFilter(this + 1760, &v17, v14, v13);
      *(this + 224) = v14;
      *(this + 57) = v13;
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v17);
    }
  }
}

void sub_298961764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlMeSrdCtrlSm::GetBlankingConfigs(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        *a3 = *a3 & 0xC4 | 0x2A;
        if (((*(**(a1 + 136) + 256))(*(a1 + 136)) & 1) == 0)
        {
          (*(**(a1 + 136) + 264))(*(a1 + 136));
        }

        GlCustomLog(14, "GlMeSrdCtrlSm:: Conditional blanking enabled in %s band\n");
        break;
      case 4:
        *a3 = *a3 & 0xC4 | 0x18;
        v17 = *(a1 + 136);
        v18 = *(v17 + 376);
        v19 = *(v17 + 380);
        v20 = *(v17 + 382);
        if (*(v17 + 368))
        {
          v21 = *(v17 + 368);
        }

        else
        {
          v21 = 1000000;
        }

        v22 = (*(*v17 + 264))(v17);
        v24.i64[0] = 0.5;
        if ((v22 & 1) == 0)
        {
          v25 = (*(**(a1 + 136) + 256))(*(a1 + 136), 0.5);
          v24.i64[0] = 0x3F9F06F694467382;
          if (v25)
          {
            *v24.i64 = 0.5;
          }
        }

        *v24.i64 = v21 / *v24.i64;
        *v23.i64 = *v24.i64 - trunc(*v24.i64 * 2.32830644e-10) * 4294967300.0;
        v26.f64[0] = NAN;
        v26.f64[1] = NAN;
        v23.i64[0] = vbslq_s8(vnegq_f64(v26), v23, v24).u64[0];
        if (*v24.i64 > 4294967300.0)
        {
          v24.i64[0] = v23.i64[0];
        }

        *(a3 + 12) = *v24.i64;
        *(a3 + 16) = *v24.i64;
        if (v19 && v20 && v19 > v20)
        {
          *(a3 + 20) = v19 | (v20 << 16);
        }

        if (v18)
        {
          *(a3 + 24) = v18;
        }

        v27 = *(a1 + 136);
        v27[374] = *v24.i64;
        if (((*(*v27 + 256))(v27) & 1) == 0)
        {
          (*(**(a1 + 136) + 264))(*(a1 + 136));
        }

        GlCustomLog(14, "GlMeSrdCtrlSm:: Monitor blanking enabled in %s band. Settings: WindUs %u, WindCycles %u PwrThres %u\n");
        break;
      case 5:
        *a3 = *a3 & 0xC4 | 0x38;
        v6 = *(a1 + 136);
        v7 = *(v6 + 376);
        v8 = *(v6 + 380);
        v9 = *(v6 + 382);
        if (*(v6 + 368))
        {
          v10 = *(v6 + 368);
        }

        else
        {
          v10 = 1000000;
        }

        v11 = (*(*v6 + 256))(v6);
        v13.i64[0] = 0.5;
        if ((v11 & 1) == 0)
        {
          v14 = (*(**(a1 + 136) + 264))(*(a1 + 136), 0.5);
          v13.i64[0] = 0x3F9F06F694467382;
          if (v14)
          {
            *v13.i64 = 0.5;
          }
        }

        *v13.i64 = v10 / *v13.i64;
        *v12.i64 = *v13.i64 - trunc(*v13.i64 * 2.32830644e-10) * 4294967300.0;
        v15.f64[0] = NAN;
        v15.f64[1] = NAN;
        v12.i64[0] = vbslq_s8(vnegq_f64(v15), v12, v13).u64[0];
        if (*v13.i64 > 4294967300.0)
        {
          v13.i64[0] = v12.i64[0];
        }

        *(a3 + 12) = *v13.i64;
        *(a3 + 16) = *v13.i64;
        if (v8 && v9 && v8 > v9)
        {
          *(a3 + 20) = v8 | (v9 << 16);
        }

        if (v7)
        {
          *(a3 + 24) = v7;
        }

        v16 = *(a1 + 136);
        v16[374] = *v13.i64;
        if (((*(*v16 + 256))(v16) & 1) == 0)
        {
          (*(**(a1 + 136) + 264))(*(a1 + 136));
        }

        GlCustomLog(14, "GlMeSrdCtrlSm:: External LTE filter control enabled in %s band. Settings: WindUs %u, WindCycles %u PwrThres %u\n");
        break;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      *a3 |= 0x3Bu;
      if (((*(**(a1 + 136) + 256))(*(a1 + 136)) & 1) == 0)
      {
        (*(**(a1 + 136) + 264))(*(a1 + 136));
      }

      GlCustomLog(14, "GlMeSrdCtrlSm:: Exernal blanking enabled in %s band\n");
    }

    else if (a2 == 2)
    {
      *a3 = *a3 & 0xC4 | 0x19;
      if (((*(**(a1 + 136) + 256))(*(a1 + 136)) & 1) == 0)
      {
        (*(**(a1 + 136) + 264))(*(a1 + 136));
      }

      GlCustomLog(14, "GlMeSrdCtrlSm:: Internal (auto)blanking enabled in %s band\n");
    }
  }

  else
  {
    *a3 &= 0xF4u;
    if (((*(**(a1 + 136) + 256))(*(a1 + 136)) & 1) == 0)
    {
      (*(**(a1 + 136) + 264))(*(a1 + 136));
    }

    GlCustomLog(14, "GlMeSrdCtrlSm:: Blanking disabled in %s band\n");
  }

  *(a3 + 8) = *(a3 + 8) & 0xC0 | *a3 & 3 | (*a3 >> 1) & 0x18;
  result = (*(**(a1 + 136) + 912))();
  if (result == 40)
  {
    if (a2 == 6)
    {
      v29 = 32;
      v30 = -60;
      v31 = 4;
      v32 = "GlMeSrdCtrlSm:: LTE detector blanking enabled in %s band\n";
    }

    else
    {
      if (a2 != 7)
      {
        return result;
      }

      v29 = 40;
      v30 = -59;
      v31 = 5;
      v32 = "GlMeSrdCtrlSm:: L1 RSSI detector blanking enabled in %s band\n";
    }

    v33 = *(a3 + 8) & 0xC0 | v31;
    *a3 |= 8u;
    *(a3 + 8) = v33 & v30 | v29;
    return GlCustomLog(14, v32, off_29EEAC340[*(a3 + 4) & 7]);
  }

  return result;
}

double BlueFin::GlMeSrdCtrlSm::AagcDecode4775(int a1, unsigned int a2)
{
  if (a1 > 2)
  {
    if ((a1 - 3) < 3)
    {
      return (3 * (((a2 >> 6) & 7) + (a2 & 7) + ((a2 >> 9) & 7) + ((a2 >> 3) & 7)));
    }

    goto LABEL_12;
  }

  if (!a1)
  {
    v5 = log10(((a2 & 7) + 1 + ((a2 & 7) + 1) * ((a2 >> 3) & 7)));
    v6 = -12.0;
    return v6 + v5 * 20.0;
  }

  if (a1 == 1)
  {
    v2 = (a2 >> 3) & 7;
    v3 = (a2 >> 6) & 7;
    goto LABEL_9;
  }

  if (a1 != 2)
  {
LABEL_12:
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 2310, "AagcDecode4775", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 2310, "0");
  }

  v2 = (a2 >> 8) & 7;
  v3 = (a2 >> 11) & 7;
LABEL_9:
  v5 = log10((((1000 * v3 + 1000 + (1000 * v3 + 1000) * v2) & 0xFFF8u) / ((a2 & 7) + 1)));
  v6 = -52.0;
  return v6 + v5 * 20.0;
}

long double BlueFin::GlMeSrdCtrlSm::DagcDecode4753(BlueFin::GlMeSrdCtrlSm *this)
{
  if (!this)
  {
    return -100.0;
  }

  v1 = this;
  v2 = (this >> 7) & 0x1F;
  if ((this & 0x800) != 0)
  {
    v2 = -(-(this >> 7) & 0x1F);
  }

  v3 = ldexpf(1.0, v2 - 3);
  return log10(vcvtd_n_f64_u32(v1 & 0x7F, 6uLL) * v3) * 20.0;
}

uint64_t (*BlueFin::GlMeSrdCtrlSm::wait4spectrum(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2))()
{
  v3 = this + 0x8000;
  v4 = *a2;
  if (v4 > 0xF)
  {
    if (*a2 <= 0x16u)
    {
      if (v4 != 16 && (v4 != 21 || (*(this + 34522) & 1) == 0))
      {
        return BlueFin::GlMeSrdCtrlSm::test;
      }

      return 0;
    }

    if (v4 != 23)
    {
      if (v4 == 39)
      {
        BlueFin::GlTimer::disarm(this + 207);
        while ((*(**(v3 + 184) + 56))(*(v3 + 184)))
        {
          v6 = (*(**(v3 + 184) + 48))(*(v3 + 184));
          (*(**(this + 20) + 216))(*(this + 20), v6);
          if (*(v6 + 185) == 1)
          {
            BlueFin::QHsm::tran(this, BlueFin::GlMeSrdCtrlSm::idle, "&GlMeSrdCtrlSm::idle");
            return 0;
          }
        }

        goto LABEL_54;
      }

      return BlueFin::GlMeSrdCtrlSm::test;
    }

    BlueFin::GlMeSrdCtrlSm::GotRadioReport(this);
    return 0;
  }

  if (v4 != 2)
  {
    if (v4 == 3)
    {
      (*(**(this + 4280) + 32))(*(this + 4280));
      *(this + 216) = 0;
      BlueFin::GlTimer::disarm(this + 207);
      (***(v3 + 184))();
      result = 0;
      *(v3 + 184) = 0;
      return result;
    }

    if (v4 != 15)
    {
      return BlueFin::GlMeSrdCtrlSm::test;
    }

    v5 = *(this + 886);
    BlueFin::GlMeSrdStats::SetHeartbeatMs(*(this + 25), *(this + 886));
    (*(**(this + 20) + 176))(*(this + 20), *(this + 25) + 8);
    (*(**(v3 + 184) + 64))(*(v3 + 184), v5);
    return 0;
  }

  if (*(this + 4280))
  {
    v16 = "me->m_otTestMgr == nullptr";
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 3208, "wait4spectrum", "me->m_otTestMgr == nullptr");
    v17 = 3208;
    goto LABEL_63;
  }

  v8 = (*(**(this + 17) + 240))(*(this + 17));
  v9 = **(this + 17);
  if (!v8)
  {
    if ((*(v9 + 248))())
    {
      v10 = 1;
      goto LABEL_51;
    }

    v11 = (*(**(this + 17) + 256))(*(this + 17));
    v12 = **(this + 17);
    if (v11)
    {
      if (((*(v12 + 184))() & 0xF000FFFF) == 0x3000000F || ((*(**(this + 17) + 184))(*(this + 17)) & 0xF000FFFF) == 0x30000011 || ((*(**(this + 17) + 184))(*(this + 17)) & 0xF000FFFF) == 0x30000011)
      {
        v10 = 4;
        goto LABEL_51;
      }

      if (((*(**(this + 17) + 184))(*(this + 17)) & 0xF000FFFF) == 0x3000000E || ((*(**(this + 17) + 184))(*(this + 17)) & 0xF000FFFF) == 0x30000010 || ((*(**(this + 17) + 184))(*(this + 17)) & 0xF000FFFF) == 0x30000010)
      {
        v10 = 5;
        goto LABEL_51;
      }

      v16 = "0";
      DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 3255, "wait4spectrum", "0");
      v17 = 3255;
    }

    else if ((*(v12 + 264))())
    {
      if (((*(**(this + 17) + 184))(*(this + 17)) & 0xF000FFFF) == 0x30000013 || ((*(**(this + 17) + 184))(*(this + 17)) & 0xF000FFFF) == 0x30000015)
      {
        v10 = 6;
        goto LABEL_51;
      }

      if (((*(**(this + 17) + 184))(*(this + 17)) & 0xF000FFFF) == 0x30000012 || ((*(**(this + 17) + 184))(*(this + 17)) & 0xF000FFFF) == 0x30000014)
      {
        v10 = 7;
        goto LABEL_51;
      }

      v16 = "0";
      DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 3270, "wait4spectrum", "0");
      v17 = 3270;
    }

    else
    {
      v16 = "0";
      DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 3275, "wait4spectrum", "0");
      v17 = 3275;
    }

LABEL_63:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", v17, v16);
  }

  if ((*(v9 + 184))() != 872480775 && (*(**(this + 17) + 184))(*(this + 17)) != 872611847 && (*(**(this + 17) + 184))(*(this + 17)) != 889126919 && (*(**(this + 17) + 184))(*(this + 17)) != 939589639 && (*(**(this + 17) + 184))(*(this + 17)) != 939720711 && (*(**(this + 17) + 184))(*(this + 17)) != 956235783 && (*(**(this + 17) + 184))(*(this + 17)) != 805371913 && (*(**(this + 17) + 184))(*(this + 17)) != 1006829577 && (*(**(this + 17) + 184))(*(this + 17)) != 805502985)
  {
    if ((*(**(this + 17) + 184))(*(this + 17)) == 805371910 || (*(**(this + 17) + 184))(*(this + 17)) == 805502982 || (*(**(this + 17) + 184))(*(this + 17)) == 822018054 || (*(**(this + 17) + 184))(*(this + 17)) == 805371912 || (*(**(this + 17) + 184))(*(this + 17)) == 1006829576 || (*(**(this + 17) + 184))(*(this + 17)) == 805502984)
    {
      v10 = 3;
      goto LABEL_51;
    }

    v16 = "0";
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 3236, "wait4spectrum", "0");
    v17 = 3236;
    goto LABEL_63;
  }

  v10 = 2;
LABEL_51:
  v13 = *(this + 15);
  if (!v13)
  {
    v13 = *(this + 14);
  }

  v14 = BlueFin::GlMeSrdTestMgrSPA::GlMeSrdTestMgrSPA(this + 5600, v13, this, v10);
  *(v3 + 184) = v15;
  (*(*(this + 700) + 16))(v14);
  (*(**(v3 + 184) + 24))(*(v3 + 184));
LABEL_54:
  *(this + 211) = this;
  BlueFin::GlTimer::arm((this + 1656), 5, 0, 0x2710u);
  result = 0;
  *(this + 1680) = 1;
  return result;
}

uint64_t (*BlueFin::GlMeSrdCtrlSm::wait4cw(uint64_t a1, uint64_t a2))()
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v3 = v2;
  STACK[0x4338] = *MEMORY[0x29EDCA608];
  v5 = *v4;
  v6 = BlueFin::GlMeSrdCtrlSm::test;
  if (v5 <= 0xF)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        (*(**(v2 + 34240) + 32))(*(v2 + 34240));
        *(v3 + 216) = 0;
        (***(v3 + 34240))();
        v6 = 0;
        *(v3 + 34240) = 0;
      }

      else if (v5 == 15)
      {
        v7 = *(v2 + 3544);
        BlueFin::GlMeSrdStats::SetHeartbeatMs(*(v2 + 200), *(v2 + 3544));
        (*(**(v3 + 160) + 176))(*(v3 + 160), *(v3 + 200) + 8);
        (*(**(v3 + 34240) + 64))(*(v3 + 34240), v7);
        BlueFin::GlMeas::GlMeas(&v32);
        v8 = 0;
        v9 = 100;
        do
        {
          v10 = STACK[0x4300];
          BYTE4(v29) = 0;
          v30 = -1;
          v31 = 575;
          v11.n128_f64[0] = BlueFin::GlSigMeas::init(v10 + v8, &v29 + 4);
          v8 += 144;
          --v9;
        }

        while (v9);
        LODWORD(STACK[0x430C]) = 0;
LABEL_22:
        LODWORD(v32) = v7;
        (*(**(v3 + 160) + 16))(*(v3 + 160), &v32, v11);
        return 0;
      }

      return v6;
    }

    if (*(v2 + 34240))
    {
      v27 = "me->m_otTestMgr == nullptr";
      DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 3046, "wait4cw", "me->m_otTestMgr == nullptr");
      v28 = 3046;
    }

    else
    {
      v13 = *(v2 + 136);
      v14 = v13[2];
      if ((v14 - 2) < 2)
      {
        if ((*(*v13 + 184))(v13) == 872480775 || (*(**(v3 + 136) + 184))(*(v3 + 136)) == 872611847 || (*(**(v3 + 136) + 184))(*(v3 + 136)) == 889126919 || (*(**(v3 + 136) + 184))(*(v3 + 136)) == 939589639 || (*(**(v3 + 136) + 184))(*(v3 + 136)) == 939720711 || (*(**(v3 + 136) + 184))(*(v3 + 136)) == 956235783 || (*(**(v3 + 136) + 184))(*(v3 + 136)) == 805371913 || (*(**(v3 + 136) + 184))(*(v3 + 136)) == 1006829577 || (*(**(v3 + 136) + 184))(*(v3 + 136)) == 805502985 || ((*(**(v3 + 136) + 184))(*(v3 + 136)) & 0xF000FFFF) == 0x3000000F || ((*(**(v3 + 136) + 184))(*(v3 + 136)) & 0xF000FFFF) == 0x30000011)
        {
          v14 = 2;
          goto LABEL_37;
        }

        if ((*(**(v3 + 136) + 184))(*(v3 + 136)) == 805371910 || (*(**(v3 + 136) + 184))(*(v3 + 136)) == 805502982 || (*(**(v3 + 136) + 184))(*(v3 + 136)) == 822018054 || (*(**(v3 + 136) + 184))(*(v3 + 136)) == 805371912 || (*(**(v3 + 136) + 184))(*(v3 + 136)) == 1006829576 || (*(**(v3 + 136) + 184))(*(v3 + 136)) == 805502984 || ((*(**(v3 + 136) + 184))(*(v3 + 136)) & 0xF000FFFF) == 0x3000000E || ((*(**(v3 + 136) + 184))(*(v3 + 136)) & 0xF000FFFF) == 0x30000010)
        {
          v14 = 3;
LABEL_37:
          v18 = *(v3 + 120);
          if (!v18)
          {
            v18 = *(v3 + 112);
          }

          *(v3 + 34240) = BlueFin::GlMeSrdTestMgrCW::GlMeSrdTestMgrCW(v3 + 5600, v18, *(v3 + 136), v3, *(v3 + 176), v14);
          if ((*(**(v3 + 136) + 256))() & 1) != 0 || ((*(**(v3 + 136) + 264))(*(v3 + 136)))
          {
            v19 = *(v3 + 136);
            v20 = (*(*v19 + 1032))(v19);
            v21 = (*(**(v3 + 136) + 1080))();
            *(v19 + 531) = v20;
            *(v19 + 532) = v21;
            if ((*(*v19 + 256))(v19))
            {
              v22 = v20 ^ 1;
              if (v21 < 1)
              {
                v22 = 1;
              }

              if (v22)
              {
                BlueFin::GlMeSrdConstants::_4755_GALILEO_E1_COH_NOI_PWR_AT_CA_EPOCH_INT = 1096532623;
                BlueFin::GlMeSrdConstants::_4755_BEIDOU_B1C_COH_NOI_PWR_AT_CA_EPOCH_INT = 1107963150;
              }

              else
              {
                BlueFin::GlMeSrdConstants::_4755_GALILEO_E1_COH_NOI_PWR_AT_CA_EPOCH_INT = 1088405111;
                BlueFin::GlMeSrdConstants::_4755_BEIDOU_B1C_COH_NOI_PWR_AT_CA_EPOCH_INT = 1099736023;
                BlueFin::GlMeSrdConstants::_4755_GPS_L1_COH_NOI_PWR_AT_CA_EPOCH_INT = 1083173765;
              }
            }

            goto LABEL_52;
          }

          v23 = *(v3 + 136);
          v24 = *(v23 + 28);
          if (v24 == 26000000)
          {
            v25 = 0x419796AA70000000;
          }

          else
          {
            if (v24 != 52000000)
            {
LABEL_52:
              (*(**(v3 + 34240) + 16))(*(v3 + 34240), v3 + 34248);
              (*(**(v3 + 34240) + 24))(*(v3 + 34240));
              return 0;
            }

            v25 = 0x4197AC7BE158E780;
          }

          *(v23 + 40) = v25;
          *(v23 + 48) = 0x4192F0631AAD8600;
          goto LABEL_52;
        }
      }

      else
      {
        if (v14 == 1)
        {
          goto LABEL_37;
        }

        if (v14 == 5)
        {
          if (((*(*v13 + 184))(v13) & 0xF000FFFF) == 0x30000013 || ((*(**(v3 + 136) + 184))(*(v3 + 136)) & 0xF000FFFF) == 0x30000015)
          {
            v14 = 6;
            goto LABEL_37;
          }

          if (((*(**(v3 + 136) + 184))(*(v3 + 136)) & 0xF000FFFF) == 0x30000012 || ((*(**(v3 + 136) + 184))(*(v3 + 136)) & 0xF000FFFF) == 0x30000014)
          {
            v14 = 7;
            goto LABEL_37;
          }
        }
      }

      v27 = "eChipType != GlMeSrdTestMgr::ChipTypeUnknown";
      DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 3097, "wait4cw", "eChipType != GlMeSrdTestMgr::ChipTypeUnknown");
      v28 = 3097;
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", v28, v27);
  }

  switch(v5)
  {
    case 0x10u:
      LODWORD(v7) = *(v2 + 3592);
      BlueFin::GlMeas::GlMeas(&v32);
      v15 = 0;
      v16 = 100;
      do
      {
        v17 = STACK[0x4300];
        BYTE4(v29) = 0;
        v30 = -1;
        v31 = 575;
        v11.n128_f64[0] = BlueFin::GlSigMeas::init(v17 + v15, &v29 + 4);
        v15 += 144;
        --v16;
      }

      while (v16);
      LODWORD(STACK[0x430C]) = 1;
      goto LABEL_22;
    case 0x17u:
      BlueFin::GlMeSrdCtrlSm::GotRadioReport(v2);
      return 0;
    case 0x27u:
      v12 = (*(**(v2 + 34240) + 40))(*(v2 + 34240));
      (*(**(v3 + 160) + 208))(*(v3 + 160), *(v12 + 25), *(v12 + 24), *(v12 + 26), *v12, *(v12 + 8), *(v12 + 16));
      return 0;
  }

  return v6;
}

uint64_t (*BlueFin::GlMeSrdCtrlSm::platform_test(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2))()
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v4 = BlueFin::GlMeSrdCtrlSm::test;
  if (v3 <= 0xE)
  {
    switch(v3)
    {
      case 2u:
        if (*(this + 4280))
        {
          DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 3397, "platform_test", "me->m_otTestMgr == nullptr");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 3397, "me->m_otTestMgr == nullptr");
        }

        v5 = *(this + 15);
        if (!v5)
        {
          v5 = *(this + 14);
        }

        (*(*v5 + 88))(v5, this + 5320);
        *(this + 216) = this;
        BlueFin::GlTimer::arm((this + 1696), 5, 0, 0x1388u);
        v4 = 0;
        *(this + 1720) = 1;
        break;
      case 3u:
        v14 = *(this + 15);
        if (!v14)
        {
          v14 = *(this + 14);
        }

        (*(*v14 + 96))(v14, this + 5320);
        *(this + 218) = 0;
        BlueFin::GlTimer::disarm(this + 207);
        return 0;
      case 5u:
        BlueFin::QHsm::tran(this, BlueFin::GlMeSrdCtrlSm::com_breakdown, "&GlMeSrdCtrlSm::com_breakdown");
        return 0;
    }

    return v4;
  }

  switch(v3)
  {
    case 0xFu:
      v6 = *(this + 68);
      *(this + 216) = this;
      BlueFin::GlTimer::arm((this + 1696), 5, 0, 0x4E20u);
      *(this + 1720) = 1;
      if (v6 == 1)
      {
        GlCustomLog(15, "<PFT> SerialStressTest \n");
        if (*(this + 69))
        {
          v7 = *(this + 69);
        }

        else
        {
          v7 = 40;
        }

        if (*(this + 71))
        {
          v8 = *(this + 71);
        }

        else
        {
          v8 = 200;
        }

        if (v8 >= 0xC9)
        {
          GlCustomLog(15, "<PFT> Max bytes to be transmitted cannot be greater than 200 \n");
          LOBYTE(v8) = -56;
        }

        if (v7 >= 0x4C)
        {
          GlCustomLog(15, "<PFT> Max packets to be transmitted cannot be greater than 75 \n");
          v7 = 75;
        }

        v9 = *(this + 296);
        v24 = 0x101010101010101 * v9;
        v23[0] = vdupq_n_s8(v9);
        v23[1] = v23[0];
        v23[2] = v23[0];
        v23[3] = v23[0];
        v23[4] = v23[0];
        v23[5] = v23[0];
        v23[6] = v23[0];
        v23[7] = v23[0];
        v23[8] = v23[0];
        v23[9] = v23[0];
        v23[10] = v23[0];
        v23[11] = v23[0];
        if (v7 <= 1)
        {
          v7 = 1;
        }

        do
        {
          v10 = *(this + 15);
          if (!v10)
          {
            v10 = *(this + 14);
          }

          v11 = (*(*v10 + 80))(v10);
          v18 = 0;
          v19[0] = 0;
          *(v19 + 7) = 0;
          v20 = v11;
          v21 = 0;
          v22 = 0;
          (*(*v11 + 16))(v11, 0);
          v12 = (*(*v20 + 48))(v20);
          v13 = (*(*v12 + 24))(v12);
          (*(*v13 + 16))(v13, &v18, 1, v8, v23);
          BlueFin::GlMeSrdTransaction::Complete(&v18);
          BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v18);
          --v7;
        }

        while (v7);
      }

      else
      {
        GlCustomLog(11, "<PFT> unknown test\n");
      }

      BlueFin::GlMeSrdMeasTimingMgr::SetHeartBeat((this + 3072), *(this + 886));
      ReportingLms = BlueFin::GlMeSrdMeasTimingMgr::GetReportingLms((this + 3072));
      BlueFin::GlMeSrdStats::SetHeartbeatMs(*(this + 25), ReportingLms);
      (*(**(this + 20) + 176))(*(this + 20), *(this + 25) + 8);
      (*(**(this + 23) + 32))(*(this + 23), ReportingLms);
      v15 = *(**(this + 19) + 24);
      goto LABEL_37;
    case 0x10u:
      BlueFin::GlMeSrdMeasTimingMgr::SetSubHeartBeat((this + 3072), *(this + 898));
      (*(**(this + 23) + 40))(*(this + 23), *(this + 842));
      v15 = *(**(this + 19) + 24);
LABEL_37:
      v15();
      return 0;
    case 0x17u:
      BlueFin::GlMeSrdCtrlSm::GotRadioReport(this);
      return 0;
  }

  return v4;
}

uint64_t (*(*(*(*BlueFin::GlMeSrdCtrlSm::extsuspend(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  v4 = BlueFin::GlMeSrdCtrlSm::steady;
  if (v3 <= 0xC)
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        BlueFin::GlTimer::disarm((a1 + 1656));
        return 0;
      }

      return BlueFin::GlMeSrdCtrlSm::normal;
    }

    if (*(a1 + 3324))
    {
      v9 = 260;
    }

    else
    {
      v9 = 284;
      if (*(a1 + 3340))
      {
        v9 = 276;
      }
    }

    v10 = *(a1 + 3072 + v9);
    if (*(a1 + 3356) > v10)
    {
      v10 = *(a1 + 3356);
    }

    v11 = 5 * v10;
    if (v11 >= 0x4E20)
    {
      v11 = 20000;
    }

    *(a1 + 1688) = a1;
    BlueFin::GlTimer::arm((a1 + 1656), 5, 0, v11 + 250);
    v4 = 0;
    *(a1 + 1680) = 1;
  }

  else
  {
    if (v3 == 13)
    {
      if (a2[1] == 2)
      {
        BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdCtrlSm::wait4hb, "&GlMeSrdCtrlSm::wait4hb");
      }

      return 0;
    }

    if (v3 != 15)
    {
      if (v3 == 28)
      {
        if (*(a1 + 1614))
        {
          v5 = *(a1 + 120);
          if (!v5)
          {
            v5 = *(a1 + 112);
          }

          v6 = (*(*v5 + 80))(v5);
          v13[0] = BlueFin::GlMeSrdCtrlSm::OnReliableTransactionAck;
          v13[1] = a1;
          v14 = 258;
          v15 = 0;
          v16 = v6;
          v17 = 0;
          v18 = 0;
          (*(*v6 + 16))(v6, 1);
          v7 = (*(*v6 + 48))(v6);
          v8 = (*(*v7 + 40))(v7);
          (*(*v8 + 88))(v8, v13, 0);
          BlueFin::GlMeSrdTransaction::Complete(v13);
          BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v13);
        }

        return 0;
      }

      return BlueFin::GlMeSrdCtrlSm::normal;
    }
  }

  return v4;
}

void sub_298963D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t (*(*(*(*BlueFin::GlMeSrdCtrlSm::wait4extsuspend(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  v4 = BlueFin::GlMeSrdCtrlSm::normal;
  switch(v3)
  {
    case 13:
      if (a2[1] == 2)
      {
        BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdCtrlSm::extsuspend, "&GlMeSrdCtrlSm::extsuspend");
      }

      return 0;
    case 3:
      BlueFin::GlTimer::disarm((a1 + 1656));
      return 0;
    case 2:
      v5 = *(a1 + 120);
      if (!v5)
      {
        v5 = *(a1 + 112);
      }

      v6 = (*(*v5 + 80))(v5);
      v13[0] = BlueFin::GlMeSrdCtrlSm::OnReliableTransactionAck;
      v13[1] = a1;
      v14 = 258;
      v15 = 0;
      v16 = v6;
      v17 = 0;
      v18 = 0;
      (*(*v6 + 16))(v6, 1);
      v7 = (*(*v6 + 48))(v6);
      v8 = (*(*v7 + 40))(v7);
      (*(*v8 + 88))(v8, v13, 1);
      BlueFin::GlMeSrdTransaction::Complete(v13);
      if (*(a1 + 3324))
      {
        v9 = 260;
      }

      else
      {
        v9 = 284;
        if (*(a1 + 3340))
        {
          v9 = 276;
        }
      }

      v10 = *(a1 + 3072 + v9);
      if (*(a1 + 3356) > v10)
      {
        v10 = *(a1 + 3356);
      }

      v11 = 5 * v10;
      if (v11 >= 0x4E20)
      {
        v11 = 20000;
      }

      *(a1 + 1688) = a1;
      BlueFin::GlTimer::arm((a1 + 1656), 5, 0, v11 + 250);
      *(a1 + 1680) = 1;
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v13);
      return 0;
  }

  return v4;
}

void sub_298963FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t (*(*(*BlueFin::GlMeSrdCtrlSm::geofence(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2))(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  v4 = BlueFin::GlMeSrdCtrlSm::running;
  if (v3 > 0xF)
  {
    switch(v3)
    {
      case 0x10u:
        BlueFin::GlMeSrdMeasTimingMgr::SetSubHeartBeat((this + 3072), *(this + 898));
        (*(**(this + 23) + 40))(*(this + 23), *(this + 842));
        v6 = *(**(this + 19) + 24);
        goto LABEL_15;
      case 0x17u:
        BlueFin::GlMeSrdCtrlSm::GotRadioReport(this);
        return 0;
      case 0x1Fu:
        if (a2[1])
        {
          DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 2987, "geofence", "e->par == 0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 2987, "e->par == 0");
        }

        BlueFin::QHsm::tran(this, BlueFin::GlMeSrdCtrlSm::idle, "&GlMeSrdCtrlSm::idle");
        return 0;
    }
  }

  else
  {
    switch(v3)
    {
      case 2u:
        v7 = *(this + 15);
        if (!v7)
        {
          v7 = *(this + 14);
        }

        (*(*v7 + 128))(v7, this + 3856);
        BlueFin::GlMeSrdMeasTimingMgr::CancelOngoingMIAdjustment((this + 3072));
        *(this + 217) = 1;
        (*(**(this + 24) + 16))(*(this + 24), this + 3856);
        return 0;
      case 3u:
        (*(**(this + 24) + 24))(*(this + 24));
        *(this + 217) = 0;
        BlueFin::GlTimer::disarm(this + 207);
        v8 = *(this + 15);
        if (!v8)
        {
          v8 = *(this + 14);
        }

        (*(*v8 + 120))(v8, this + 3856);
        return 0;
      case 0xFu:
        BlueFin::GlMeSrdMeasTimingMgr::SetHeartBeat((this + 3072), *(this + 886));
        ReportingLms = BlueFin::GlMeSrdMeasTimingMgr::GetReportingLms((this + 3072));
        BlueFin::GlMeSrdStats::SetHeartbeatMs(*(this + 25), ReportingLms);
        (*(**(this + 20) + 176))(*(this + 20), *(this + 25) + 8);
        (*(**(this + 23) + 32))(*(this + 23), ReportingLms);
        v6 = *(**(this + 19) + 24);
LABEL_15:
        v6();
        return 0;
    }
  }

  return v4;
}

void *BlueFin::GlMeSrdCtrlSm::wait4hb(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 == 15)
  {
    v4 = BlueFin::GlMeSrdCtrlSm::steady;
    BlueFin::QHsm::tran(a1, BlueFin::GlMeSrdCtrlSm::steady, "&GlMeSrdCtrlSm::steady");
  }

  else if (v3 == 3)
  {
    BlueFin::GlTimer::disarm((a1 + 1656));
    return 0;
  }

  else
  {
    v4 = BlueFin::GlMeSrdCtrlSm::normal;
    if (v3 == 2)
    {
      if (*(a1 + 3324))
      {
        v5 = 260;
      }

      else
      {
        v5 = 284;
        if (*(a1 + 3340))
        {
          v5 = 276;
        }
      }

      v6 = *(a1 + 3072 + v5);
      if (*(a1 + 3356) > v6)
      {
        v6 = *(a1 + 3356);
      }

      v7 = 5 * v6;
      if (v7 >= 0x4E20)
      {
        v7 = 20000;
      }

      *(a1 + 1688) = a1;
      BlueFin::GlTimer::arm((a1 + 1656), 5, 0, v7 + 250);
      v4 = 0;
      *(a1 + 1680) = 1;
    }
  }

  return v4;
}

uint64_t BlueFin::GlMeSrdCtrlSm::PostCwResults(BlueFin::GlMeSrdCtrlSm *this)
{
  v4 = 39;
  v2 = *(this + 4);
  result = *(this + 1);
  *(this + 4) = result;
  do
  {
    v5 = 0;
    if (BlueFin::patch_dispatch(result, this, &v4, &v5))
    {
      result = v5;
    }

    else
    {
      result = (*(this + 4))(this, &v4);
    }

    *(this + 4) = result;
  }

  while (result);
  *(this + 4) = v2;
  return result;
}

uint64_t (*(*(*BlueFin::GlMeSrdCtrlSm::test(uint64_t a1, _BYTE *a2))(BlueFin::GlMeSrdCtrlSm *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  if ((*a2 & 0xFE) == 2)
  {
    return 0;
  }

  else
  {
    return BlueFin::GlMeSrdCtrlSm::running;
  }
}

uint64_t BlueFin::GlMeSrdCtrlSmRpcRmRpt::gll_rmrpt_rpc_report_resources(uint64_t a1, uint64_t a2)
{
  result = (*(**(*(a1 + 8) + 136) + 56))(*(*(a1 + 8) + 136));
  if (result != *(a2 + 6))
  {
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 3893, "gll_rmrpt_rpc_report_resources", "m_rCtrlSm.m_rAsicConfig.GetNumMemoryBins() == rResourceType.ssb_capacity");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 3893, "m_rCtrlSm.m_rAsicConfig.GetNumMemoryBins() == rResourceType.ssb_capacity");
  }

  return result;
}

unint64_t BlueFin::GlMeSrdRpcMiscCtrlSm::gll_misc_rpc_mem_dump_response(unint64_t this, int a2, unsigned __int16 a3, unsigned __int8 a4, unsigned __int8 *a5)
{
  if (a2 == 1)
  {
    v10[3] = v5;
    v10[4] = v6;
    v9 = 22;
    v7 = *(this + 8);
    v8 = *(v7 + 32);
    this = *(v7 + 8);
    *(v7 + 32) = this;
    do
    {
      v10[0] = 0;
      if (BlueFin::patch_dispatch(this, v7, &v9, v10))
      {
        this = v10[0];
      }

      else
      {
        this = (*(v7 + 32))(v7, &v9);
      }

      *(v7 + 32) = this;
    }

    while (this);
    *(v7 + 32) = v8;
  }

  return this;
}

uint64_t BlueFin::GlMeSrdRpcMiscCtrlSm::gll_misc_rpc_adc_capture_response(BlueFin::GlMeSrdRpcMiscCtrlSm *this, __int16 a2, __int16 a3, unsigned __int8 *a4)
{
  ReportingLms = BlueFin::GlMeSrdMeasTimingMgr::GetReportingLms((*(this + 1) + 3072));
  result = (*(**(*(this + 1) + 136) + 1192))(*(*(this + 1) + 136));
  v10 = *(result + 1);
  *(this + 12) = a4;
  *(this + 26) = ReportingLms;
  *(this + 108) = v10;
  *(this + 55) = a2;
  *(this + 56) = a3;
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v11 = *(*(this + 11) + 24);

    return v11();
  }

  return result;
}

void BlueFin::GlMeSrdRpcMiscCtrlSm::hrm_read_response(BlueFin::GlMeSrdRpcMiscCtrlSm *this, int a2, BlueFin::GlMeSrdCtrlSm *a3)
{
  v6 = (*(**(*(this + 1) + 136) + 16))(*(*(this + 1) + 136));
  if ((v6 & 0xF000FFFE) != 0x30000010 && (v6 & 0xF000FFFE) != 805306382)
  {
    if (v6 <= 889126918)
    {
      if (v6 > 872480774)
      {
        v8 = v6 == 872480775;
        v9 = 872611847;
      }

      else
      {
        v8 = v6 == 805371913;
        v9 = 805502985;
      }
    }

    else if (v6 <= 939720710)
    {
      v8 = v6 == 889126919;
      v9 = 939589639;
    }

    else
    {
      v8 = v6 == 939720711 || v6 == 1006829577;
      v9 = 956235783;
    }

    if (!v8 && v6 != v9)
    {
      GlCustomLog(199, "GlMeSrdRpcMiscCtrlSm::gll_misc_rpc_hrm_response: Unsupported Chip Type\n");
      v38 = "0";
      DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 4171, "hrm_read_response", "0");
      v39 = 4171;
      goto LABEL_123;
    }

    if (a2 > 28)
    {
      if (a2 <= 30)
      {
        if (a2 == 29)
        {
          if (a3 >= 0x100)
          {
            v38 = "value == (value & 0x0FF)";
            DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 4037, "hrm_read_response", "value == (value & 0x0FF)");
            v39 = 4037;
            goto LABEL_123;
          }

          *(this + 18) = 1;
          *(this + 80) = a3;
        }

        else
        {
          if (a3 >= 0x100)
          {
            v38 = "value == (value & 0x0FF)";
            DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 4043, "hrm_read_response", "value == (value & 0x0FF)");
            v39 = 4043;
            goto LABEL_123;
          }

          *(this + 19) = 1;
          *(this + 81) = a3;
        }

        goto LABEL_74;
      }

      if (a2 == 31)
      {
        if (a3 >= 0x100)
        {
          v38 = "value == (value & 0x0FF)";
          DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 4049, "hrm_read_response", "value == (value & 0x0FF)");
          v39 = 4049;
          goto LABEL_123;
        }

        *(this + 22) = 1;
        *(this + 82) = a3;
        goto LABEL_74;
      }

      if (a2 == 32)
      {
        if (a3 >= 0x100)
        {
          v38 = "value == (value & 0x0FF)";
          DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 4055, "hrm_read_response", "value == (value & 0x0FF)");
          v39 = 4055;
          goto LABEL_123;
        }

        *(this + 23) = 1;
        *(this + 83) = a3;
        goto LABEL_74;
      }
    }

    else
    {
      if (a2 <= -1073691921)
      {
        if (a2 != -1073692432)
        {
          if (a2 == -1073692176)
          {
            *(this + 21) = 1;
            v11 = BlueFin::GlMeSrdCtrlSm::DagcDecode4753(a3);
            *(this + 7) = v11;
            *&v11 = v11;
            *(*(*(this + 1) + 200) + 192) = LODWORD(v11);
            goto LABEL_74;
          }

          goto LABEL_125;
        }

        *(this + 17) = 1;
        v17 = BlueFin::GlMeSrdCtrlSm::DagcDecode4753(a3);
        *(this + 5) = v17;
        v18 = *(this + 1);
        *&v17 = v17;
        *(*(v18 + 200) + 184) = LODWORD(v17);
        ReportingLms = BlueFin::GlMeSrdMeasTimingMgr::GetReportingLms((v18 + 3072));
        GlCustomLog(199, "HWDEBUG: LMS = %u, Digital AGC gain (GPS) = %lf\n", ReportingLms, *(this + 5));
LABEL_74:
        if (*(this + 18) == 1 && *(this + 19) == 1)
        {
          v21 = *(this + 80);
          v22 = (v21 & 7) + (v21 >> 3);
          v24 = v21 < 0x2E && (v21 & 7) < 6;
          v26 = v22 < 0xB && ((*(this + 80) & 7) + (*(this + 80) >> 3) + *(this + 81)) < 0x10u;
          v27 = -(3 * (v22 + *(this + 81)));
          if (!v24 || !v26)
          {
            v27 = -255.0;
          }

          *(this + 6) = v27;
          *(this + 9) = 0;
          *(this + 20) = 1;
          v28 = v27;
          *(*(*(this + 1) + 200) + 188) = v28;
        }

        if (*(this + 22) == 1 && *(this + 23) == 1)
        {
          v29 = *(this + 82);
          v30 = (v29 & 7) + (v29 >> 3);
          v32 = v29 < 0x2E && (v29 & 7) < 6;
          v34 = v30 < 0xB && ((*(this + 82) & 7) + (*(this + 82) >> 3) + *(this + 83)) < 0x10u;
          v35 = -(3 * (v30 + *(this + 83)));
          if (!v32 || !v34)
          {
            v35 = -255.0;
          }

          *(this + 8) = v35;
          *(this + 11) = 0;
          *(this + 24) = 1;
          v36 = v35;
          *(*(*(this + 1) + 200) + 196) = v36;
        }

        if (*(this + 16) == 1 && *(this + 17) == 1 && *(this + 20) == 1 && *(this + 21) == 1 && *(this + 24) == 1 && *(this + 25) == 1)
        {
          *(this + 8) = 0;
          *(this + 10) = 0;
          *(this + 12) = 0;
          GlCustomLog(14, "AGC report:: GPS: %.3f dB  GLNS: %.3f dB  BDS: %.3f dB\n", *(this + 4) + *(this + 5), *(this + 6) + *(this + 7), *(this + 8) + *(this + 9));
          GlCustomLog(14, "AGC report extra:: GPS AAGC: %.3f dB DAGC: %.3f dB GLNS AAGC: %.3f dB DAGC: %.3f dB BDS AAGC: %.3f dB DAGC: %.3f dB\n", *(this + 4), *(this + 5), *(this + 6), *(this + 7), *(this + 8), *(this + 9));
          *(this + 3) = 0u;
          *(this + 4) = 0u;
          *(this + 2) = 0u;
        }

        return;
      }

      if (a2 == -1073691920)
      {
        *(this + 25) = 1;
        v20 = BlueFin::GlMeSrdCtrlSm::DagcDecode4753(a3);
        *(this + 9) = v20;
        *&v20 = v20;
        *(*(*(this + 1) + 200) + 200) = LODWORD(v20);
        goto LABEL_74;
      }

      if (a2 == 27)
      {
        if (a3 < 0x100)
        {
          *(this + 16) = 1;
          v12 = (a3 & 7) + ((a3 & 0xF8) >> 3);
          v14 = v12 >= 0xB || (a3 & 7u) >= 6 || a3 >= 0x2E;
          v15 = -(3 * v12);
          if (v14)
          {
            v15 = -255.0;
          }

          *(this + 4) = v15;
          v16 = v15;
          *(*(*(this + 1) + 200) + 180) = v16;
          goto LABEL_74;
        }

        v38 = "value == (value & 0x0FF)";
        DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 4028, "hrm_read_response", "value == (value & 0x0FF)");
        v39 = 4028;
LABEL_123:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", v39, v38);
      }
    }

LABEL_125:
    v38 = "0";
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 4121, "hrm_read_response", "0");
    v39 = 4121;
    goto LABEL_123;
  }

  if (a2 <= -1073691869)
  {
    switch(a2)
    {
      case -1073691904:
        GlCustomLog(199, "AGC report:: GPS:0x%08X Loop Gain %u Target Power %u\n");
        return;
      case -1073691892:
        GlCustomLog(199, "AGC report:: GPS (LP): Loop Gain %u Target Power %u");
        return;
      case -1073691880:
        GlCustomLog(199, "AGC report:: GLO: Loop Gain %u Target Power %u");
        return;
    }

LABEL_124:
    GlCustomLog(199, "GlMeSrdRpcMiscCtrlSm::gll_misc_rpc_hrm_response: Unsupported PIKE Address\n");
    v38 = "0";
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 4007, "hrm_read_response", "0");
    v39 = 4007;
    goto LABEL_123;
  }

  if (a2 <= -1073690881)
  {
    if (a2 == -1073691868)
    {
      GlCustomLog(199, "AGC report:: GLO (LP): Loop Gain %u Target Power %u");
      return;
    }

    if (a2 == -1073691856)
    {
      GlCustomLog(199, "AGC report:: BDS: Loop Gain %u Target Power %u");
      return;
    }

    goto LABEL_124;
  }

  if (a2 == -1073690880)
  {
    if ((a3 & 7u) > 4)
    {
      v37 = "XXXXXXXX";
    }

    else if ((a3 & 7) == 4)
    {
      v37 = "E5B_BDS2";
    }

    else
    {
      v37 = off_29EEAC3A0[a3 & 7];
    }

    BlueFin::GlMeSrdRpcMiscCtrlSm::hrm_read_response(unsigned char,unsigned int,unsigned int)::acCstl = v37;
    GlCustomLog(199, "AGC report:: DR_MonCtrl %s Sample %u Done %u\n");
    return;
  }

  if (a2 != -1073690864)
  {
    goto LABEL_124;
  }

  if (a3)
  {
    log10f(a3);
  }

  GlCustomLog(199, "AGC report:: DR_MonReg3 %s DAGC Gain (Integer %u Fractional %u) Linear %f Db %f\n");
}