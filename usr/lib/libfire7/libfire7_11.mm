double BlueFin::GlMeSrdSearchMgrBase::RemoveInvalidSvId(BlueFin::GlMeSrdSearchMgrBase *this, BlueFin::GlSvIdSet *a2)
{
  v70[0] = xmmword_298A323EC;
  v70[1] = *algn_298A323FC;
  v67[0] = xmmword_298A3242C;
  v67[1] = unk_298A3243C;
  v64[0] = BlueFin::GlSvIdSet::csm_aulBeidouGeoSvIds;
  v64[1] = unk_298A324BC;
  v36 = xmmword_298A3244C;
  v68 = v70;
  v69 = 8;
  v65 = v67;
  v66 = 8;
  v62 = v64;
  v63 = 8;
  v34 = &v36;
  LOBYTE(v35) = 8;
  *v37 = unk_298A3245C;
  BlueFin::GlSvIdSet::operator~(&v62, &v56);
  BlueFin::GlSetBase::GlSetBase(&__src, v61, 8u, &v34);
  v38 = &v40;
  LOBYTE(v39) = 8;
  v40 = 0u;
  v41 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&__src, &v38, &v56);
  BlueFin::GlSetBase::operator=(&__src, &v38);
  v61[0] = v40;
  v61[1] = v41;
  v58[0] = xmmword_298A3246C;
  v58[1] = unk_298A3247C;
  v55[0] = xmmword_298A3248C;
  v56 = v58;
  v57 = 8;
  v53 = v55;
  v54 = 8;
  v55[1] = unk_298A3249C;
  LOBYTE(v38) = 1;
  HIDWORD(v38) = 0;
  LOWORD(v39) = 0;
  if (BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(this, &v38) == 250)
  {
    v42 = v44;
    v43 = 8;
    v44[0] = BlueFin::GlSvIdSet::csm_aulGlSvIdSet[0];
    v44[1] = *algn_298A323DC;
    BlueFin::GlSetBase::GlSetBase(&v45, v46, 8u, &v42);
    v38 = &v40;
    LOBYTE(v39) = 8;
    v40 = 0u;
    v41 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&v45, &v38, &v65);
    BlueFin::GlSetBase::operator=(&v45, &v38);
    v46[0] = v40;
    v46[1] = v41;
    BlueFin::GlSetBase::GlSetBase(&v47, &v49, 8u, &v45);
    v38 = &v40;
    LOBYTE(v39) = 8;
    v40 = 0u;
    v41 = 0u;
    BlueFin::GlSetBase::OperatorBinaryOr(&v47, &v38, &v53);
    BlueFin::GlSetBase::operator=(&v47, &v38);
    v49 = v40;
    v50 = v41;
    BlueFin::GlSvIdSet::operator~(&v47, &v51);
    BlueFin::GlSetBase::GlSetBase(&v34, &v36, 8u, a2);
    v38 = &v40;
    LOBYTE(v39) = 8;
    v40 = 0u;
    v41 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v34, &v38, &v51);
    BlueFin::GlSetBase::operator=(&v34, &v38);
    v36 = v40;
    *v37 = v41;
    BlueFin::GlSetBase::operator=(a2, &v34);
    *(a2 + 12) = v36;
    *(a2 + 28) = *v37;
  }

  LOBYTE(v38) = 52;
  HIDWORD(v38) = 0;
  LOWORD(v39) = 147;
  if (BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(this, &v38) == 250)
  {
    v47 = &v49;
    LOBYTE(v48) = 8;
    v49 = xmmword_298A3240C;
    v50 = unk_298A3241C;
    BlueFin::GlSvIdSet::operator~(&v47, &v51);
    BlueFin::GlSetBase::GlSetBase(&v34, &v36, 8u, a2);
    v38 = &v40;
    LOBYTE(v39) = 8;
    v40 = 0u;
    v41 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v34, &v38, &v51);
    BlueFin::GlSetBase::operator=(&v34, &v38);
    v36 = v40;
    *v37 = v41;
    BlueFin::GlSetBase::operator=(a2, &v34);
    *(a2 + 12) = v36;
    *(a2 + 28) = *v37;
  }

  LOBYTE(v38) = v60;
  memcpy(&v39, __src, 4 * v60);
  WORD1(v38) = 0;
  BYTE1(v38) = 0;
  HIDWORD(v38) = v39;
  BlueFin::GlSetIterator::operator++(&v38);
  LOBYTE(v51) = BYTE2(v38);
  HIDWORD(v51) = 0;
  v52 = 575;
  if (BYTE2(v38) - 189 >= 0xFFFFFF44)
  {
    v4 = BlueFin::GlSvId::s_aucSvId2gnss[BYTE2(v38)];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v4] == 255)
    {
      HIDWORD(v51) = -1;
    }

    else
    {
      v52 = BlueFin::GlSignalId::s_ausGnss2signalId[v4] + BYTE2(v38) - BlueFin::GlSvId::s_aucGnss2minSvId[v4];
    }
  }

  if (BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(this, &v51) == 250)
  {
    v5 = *(this + 3);
    v6 = *(v5 + 976);
    if (!*v6)
    {
      v8 = *(v5 + 984);
      if (v8 < 2)
      {
LABEL_22:
        BlueFin::GlSvIdSet::operator~(&__src, &v51);
        BlueFin::GlSetBase::GlSetBase(&v34, &v36, 8u, a2);
        v38 = &v40;
        LOBYTE(v39) = 8;
        v40 = 0u;
        v41 = 0u;
        BlueFin::GlSetBase::OperatorBinaryAnd(&v34, &v38, &v51);
        BlueFin::GlSetBase::operator=(&v34, &v38);
        v36 = v40;
        *v37 = v41;
        BlueFin::GlSetBase::operator=(a2, &v34);
        *(a2 + 12) = v36;
        *(a2 + 28) = *v37;
        goto LABEL_23;
      }

      v9 = v8 - 1;
      v10 = v6 + 1;
      while (!*v10++)
      {
        if (!--v9)
        {
          goto LABEL_22;
        }
      }
    }
  }

  LOBYTE(v34) = v60;
  memcpy(&v35, __src, 4 * v60);
  WORD1(v34) = 0;
  BYTE1(v34) = 0;
  HIDWORD(v34) = v35;
  BlueFin::GlSetIterator::operator++(&v34);
  LOBYTE(v47) = BYTE2(v34);
  HIDWORD(v47) = 3;
  v48 = 575;
  if (BYTE2(v34) - 189 >= 0xFFFFFF44)
  {
    v7 = BlueFin::GlSvId::s_aucSvId2gnss[BYTE2(v34)];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v7 + 21] == 255)
    {
      HIDWORD(v47) = -1;
    }

    else
    {
      v48 = BlueFin::GlSignalId::s_ausGnss2signalId[v7] + BYTE2(v34) - BlueFin::GlSvId::s_aucGnss2minSvId[v7] + 3 * BlueFin::GlSvId::s_aucGnss2numSvId[v7];
    }
  }

  if (BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(this, &v47) == 250)
  {
    v12 = *(this + 3);
    v13 = *(v12 + 976);
    if (*v13)
    {
      goto LABEL_22;
    }

    v22 = *(v12 + 984);
    if (v22 >= 2)
    {
      v23 = v22 - 1;
      v24 = v13 + 1;
      do
      {
        if (*v24++)
        {
          goto LABEL_22;
        }
      }

      while (--v23);
    }
  }

LABEL_23:
  LOBYTE(v38) = v63;
  memcpy(&v39, v62, 4 * v63);
  WORD1(v38) = 0;
  BYTE1(v38) = 0;
  HIDWORD(v38) = v39;
  BlueFin::GlSetIterator::operator++(&v38);
  LOBYTE(v51) = BYTE2(v38);
  HIDWORD(v51) = 0;
  v52 = 575;
  if (BYTE2(v38) - 189 >= 0xFFFFFF44)
  {
    v14 = BlueFin::GlSvId::s_aucSvId2gnss[BYTE2(v38)];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v14] == 255)
    {
      HIDWORD(v51) = -1;
    }

    else
    {
      v52 = BlueFin::GlSignalId::s_ausGnss2signalId[v14] + BYTE2(v38) - BlueFin::GlSvId::s_aucGnss2minSvId[v14];
    }
  }

  if (BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(this, &v51) == 250)
  {
    v15 = *(this + 3);
    v16 = *(v15 + 976);
    if (!*v16)
    {
      v18 = *(v15 + 984);
      if (v18 < 2)
      {
LABEL_45:
        BlueFin::GlSvIdSet::operator~(&v62, &v51);
        BlueFin::GlSetBase::GlSetBase(&v34, &v36, 8u, a2);
        v38 = &v40;
        LOBYTE(v39) = 8;
        v40 = 0u;
        v41 = 0u;
        BlueFin::GlSetBase::OperatorBinaryAnd(&v34, &v38, &v51);
        BlueFin::GlSetBase::operator=(&v34, &v38);
        v36 = v40;
        *v37 = v41;
        BlueFin::GlSetBase::operator=(a2, &v34);
        *(a2 + 12) = v36;
        *(a2 + 28) = *v37;
        goto LABEL_46;
      }

      v19 = v18 - 1;
      v20 = v16 + 1;
      while (!*v20++)
      {
        if (!--v19)
        {
          goto LABEL_45;
        }
      }
    }
  }

  LOBYTE(v34) = v63;
  memcpy(&v35, v62, 4 * v63);
  WORD1(v34) = 0;
  BYTE1(v34) = 0;
  HIDWORD(v34) = v35;
  BlueFin::GlSetIterator::operator++(&v34);
  LOBYTE(v47) = BYTE2(v34);
  HIDWORD(v47) = 3;
  v48 = 575;
  if (BYTE2(v34) - 189 >= 0xFFFFFF44)
  {
    v17 = BlueFin::GlSvId::s_aucSvId2gnss[BYTE2(v34)];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v17 + 21] == 255)
    {
      HIDWORD(v47) = -1;
    }

    else
    {
      v48 = BlueFin::GlSignalId::s_ausGnss2signalId[v17] + BYTE2(v34) - BlueFin::GlSvId::s_aucGnss2minSvId[v17] + 3 * BlueFin::GlSvId::s_aucGnss2numSvId[v17];
    }
  }

  if (BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(this, &v47) == 250)
  {
    v26 = *(this + 3);
    v27 = *(v26 + 976);
    if (!*v27)
    {
      v30 = *(v26 + 984);
      if (v30 < 2)
      {
        goto LABEL_46;
      }

      v31 = v30 - 1;
      v32 = v27 + 1;
      while (!*v32++)
      {
        if (!--v31)
        {
          goto LABEL_46;
        }
      }
    }

    goto LABEL_45;
  }

LABEL_46:
  LOBYTE(v38) = -117;
  HIDWORD(v38) = 0;
  LOWORD(v39) = 453;
  if (BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(this, &v38) == 250 || (v28 = *(this + 4), LOBYTE(v34) = -117, ((*(*v28 + 472))(v28, &v34) & 1) == 0))
  {
    BlueFin::GlSvIdSet::operator~(&v56, &v51);
    BlueFin::GlSetBase::GlSetBase(&v34, &v36, 8u, a2);
    v38 = &v40;
    LOBYTE(v39) = 8;
    v40 = 0u;
    v41 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v34, &v38, &v51);
    BlueFin::GlSetBase::operator=(&v34, &v38);
    v36 = v40;
    *v37 = v41;
    BlueFin::GlSetBase::operator=(a2, &v34);
    *(a2 + 12) = v36;
    *(a2 + 28) = *v37;
  }

  LOBYTE(v38) = 33;
  HIDWORD(v38) = 0;
  LOWORD(v39) = 128;
  if (BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(this, &v38) == 250)
  {
    BlueFin::GlSvIdSet::operator~(&v68, &v51);
    BlueFin::GlSetBase::GlSetBase(&v34, &v36, 8u, a2);
    v38 = &v40;
    LOBYTE(v39) = 8;
    v40 = 0u;
    v41 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v34, &v38, &v51);
    BlueFin::GlSetBase::operator=(&v34, &v38);
    v36 = v40;
    *v37 = v41;
    BlueFin::GlSetBase::operator=(a2, &v34);
    *(a2 + 12) = v36;
    result = v37[0];
    *(a2 + 28) = *v37;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(BlueFin::GlMeSrdSearchMgrBase *this, const BlueFin::GlSignalId *a2)
{
  v3 = BlueFin::GlSvId::s_aucSvId2gnss[*a2];
  v4 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + v3];
  result = 250;
  if (v4 <= 6)
  {
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + v3] > 2u)
    {
      if (v4 - 4 >= 2)
      {
        if (v4 == 3)
        {
          return *(this + 11);
        }

        if (v4 == 6)
        {
          if (*a2 - 81 > 0x34)
          {
            return *(this + 13);
          }

          else
          {
            return *(this + 12);
          }
        }

        return result;
      }

      return *(this + 16);
    }

    if (v4 - 1 < 2)
    {
      return *(this + 16);
    }

    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + v3])
    {
      return result;
    }

LABEL_18:
    if (v3 == 1)
    {
      return *(this + 15);
    }

    else
    {
      return *(this + 10);
    }
  }

  if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + v3] >= 0xCu)
  {
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + v3] <= 0xCu)
    {
      goto LABEL_18;
    }

    if (v4 - 13 < 2)
    {
      return *(this + 17);
    }

    if (v4 == 15 || v4 == 255)
    {
LABEL_28:
      DeviceFaultNotify("glmesrd_search_mgr_base.cpp", 618, "GetStrategyId", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_search_mgr_base.cpp", 618, "0");
    }
  }

  else
  {
    if (v4 - 7 < 2)
    {
      return *(this + 16);
    }

    if (v4 == 11)
    {
      return *(this + 14);
    }

    if (v4 - 9 < 2)
    {
      goto LABEL_28;
    }
  }

  return result;
}

uint64_t BlueFin::GlMeSrdAsicConfig::IsConstellationSupported(uint64_t a1, _BYTE *a2)
{
  v2 = *a2;
  if (v2 < 0xBD)
  {
    v3 = 6;
  }

  else
  {
    v3 = 7;
  }

  if (v2 >= 0xAF)
  {
    v4 = v3;
  }

  else
  {
    v4 = 5;
  }

  if (v2 >= 0x8B)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4;
  }

  if (v2 >= 0x4C)
  {
    v6 = v5;
  }

  else
  {
    v6 = 3;
  }

  if (v2 >= 0x42)
  {
    v7 = v6;
  }

  else
  {
    v7 = 2;
  }

  if (v2 >= 0x34)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if (v2 < 0x21)
  {
    v8 = 0;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7;
  }

  return (*(*a1 + 464))(a1, v9);
}

uint64_t BlueFin::GlMeSrdAidingMgr::SelectAiding2Refresh(int **this)
{
  BlueFin::GlMeSrdAidingMgr::SelectRefreshDue2ClockModel(this);
  BlueFin::GlMeSrdAidingMgr::SelectRefreshDue2AidingChanges(this);
  BlueFin::GlMeSrdAidingMgr::SelectRefreshDue2Time(this);
  BlueFin::GlMeSrdAidingMgr::SelectRefreshDue2AidingOverride(this);
  BlueFin::GlMeSrdAidingMgr::SelectRefreshDue2AidIdUnMap(this);

  return BlueFin::GlSetBase::operator&=((this + 148), (this + 98));
}

uint64_t BlueFin::GlMeSrdAidingMgr::SelectRefreshDue2ClockModel(int **this)
{
  v2 = (*(**this + 64))(*this);
  BlueFin::GlSetBase::GlSetBase(&v10, v11, 8u, v2);
  v5 = &v6[4];
  v6[0] = 8;
  memset(&v6[4], 0, 32);
  BlueFin::GlSetBase::OperatorBinaryAnd(&v10, &v5, this + 98);
  BlueFin::GlSetBase::operator=(&v10, &v5);
  v11[0] = *&v6[4];
  v11[1] = *&v6[20];
  v5 = &unk_2A1F0E1A0;
  *v6 = 0;
  *&v6[8] = 0x36A7C5AC00000000;
  *&v6[16] = 0;
  *&v6[24] = 2139095039;
  *&v6[32] = 0;
  v7 = 2139095039;
  v8 = 0;
  v9 = 0x36A7C5AC7F7FFFFFLL;
  result = (*(**this + 96))(*this, &v5, *(this + 6));
  if (vabds_f32(*(this + 292), *&v6[8]) <= 0.00000001)
  {
    v4 = *v6;
    if (*v6 == *(this + 293))
    {
      return result;
    }
  }

  else
  {
    v4 = *v6;
  }

  *(this + 292) = *&v6[8];
  *(this + 293) = v4;
  *(this + 1176) = 1;
  return BlueFin::GlSetBase::Add((this + 148), &v10);
}

BOOL BlueFin::GlMeSrdAidingMgr::RefreshAiding(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v4 = v3;
  v5 = v2;
  v26 = *MEMORY[0x29EDCA608];
  v6 = (v2 + 784);
  v7 = (v2 + 1432);
  v8 = BlueFin::GlSetBase::operator&=(v2 + 1432, v2 + 784);
  BlueFin::GlSetBase::operator|=(v8, v5 + 1184);
  v9 = BlueFin::GlMeSrdAidingMgr::PackTcxoAiding(v5, v24, v25);
  v12 = BlueFin::GlMeSrdAidingMgr::PackSvIdAiding(v5, &v24[v9], &v25[9 * v9], v10, v11) + v9;
  if (v12 >= 0xCC)
  {
    v22 = "ulNumAiding <= _DIM(otaAiding_l)";
    DeviceFaultNotify("glmesrd_aiding_mgr.cpp", 333, "RefreshAiding", "ulNumAiding <= _DIM(otaAiding_l)");
    v23 = 333;
    goto LABEL_21;
  }

  if (v12 > (*(**(v5 + 16) + 392))(*(v5 + 16)))
  {
    v22 = "ulNumAiding <= m_rAsicConfigIfc.GetMaxAidIndex()";
    DeviceFaultNotify("glmesrd_aiding_mgr.cpp", 334, "RefreshAiding", "ulNumAiding <= m_rAsicConfigIfc.GetMaxAidIndex()");
    v23 = 334;
LABEL_21:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_aiding_mgr.cpp", v23, v22);
  }

  if (v12)
  {
    BlueFin::GlMeSrdAidingMgr::SendAidingBatch(v4, v12, v24, v25);
  }

  if (BlueFin::GlSetBase::HasAll(v7, v6))
  {
    if (!**v6)
    {
      v13 = *(v5 + 792);
      if (v13 < 2)
      {
LABEL_11:
        if (!**v7)
        {
          v18 = *(v5 + 1440);
          if (v18 < 2)
          {
            return v12 != 0;
          }

          v19 = v18 - 1;
          v20 = *v7 + 1;
          while (!*v20++)
          {
            if (!--v19)
            {
              return v12 != 0;
            }
          }
        }
      }

      else
      {
        v14 = v13 - 1;
        v15 = *v6 + 1;
        while (!*v15++)
        {
          if (!--v14)
          {
            goto LABEL_11;
          }
        }
      }
    }

    bzero(*(v5 + 1432), ((4 * *(v5 + 1440) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  }

  return v12 != 0;
}

uint64_t BlueFin::GlMeSrdAidingMgr::PackTcxoAiding(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*(a1 + 1176) != 1)
  {
    return 0;
  }

  *(a1 + 1176) = 0;
  BlueFin::GlMeSrdAidingMgr::FormatGpsTcxoAidingForEsw(a1, a3);
  *a2 = 0;
  BlueFin::GlMeSrdAidingMgr::FormatGlnsTcxoAidingForEsw(a1, a3 + 36);
  a2[1] = 1;
  BlueFin::GlMeSrdAidingMgr::FormatBdsPosTcxoAidingForEsw(a1, a3 + 72);
  a2[2] = 2;
  *(a1 + 28) = *(a1 + 24);
  return 3;
}

uint64_t BlueFin::GlMeAcqWindowProvider::mskfGetCbGoodQuality(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = *(a1 + 8);
  v5 = 0x3FF0000000000000;
  v6 = 0;
  return BlueFin::GlMeMiniKF::mskfGetCbGoodQuality(v3 + 9344, a2, &v6, a3, &v5, 0);
}

uint64_t BlueFin::GlMeMiniKF::mskfGetCbGoodQuality(uint64_t a1, unsigned int a2, double *a3, _DWORD *a4, double *a5, unsigned int a6)
{
  BlueFin::GlMeMiniKF::GenerateClockModFlags(&v29, a1, -1);
  if (a6 <= 1 && (v29 & 4) != 0)
  {
    LODWORD(v12) = *(a1 + 216);
    v13 = (a2 - v12) / 1000.0;
    if (v13 > 600.0)
    {
      return 0;
    }

    v28 = *(a1 + 120) - v13 * *(a1 + 24);
    v25[0] = 1;
    v26 = 0;
    v27 = 0;
    *a3 = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v28, v25, 1u);
    v14 = *(a1 + 136);
  }

  else
  {
    if ((a6 & 0xFFFFFFFD) != 0 || (v29 & 0x80) == 0)
    {
      if ((v29 & 0x400) != 0 && (a6 == 3 || !a6))
      {
        LODWORD(v12) = *(a1 + 484);
        v20 = (a2 - v12) / 1000.0;
        *a4 |= 0x400u;
        if (v20 <= 600.0)
        {
          v28 = *(a1 + 376) - v20 * *(a1 + 24);
          v25[0] = -117;
          v26 = 0;
          v27 = 453;
          *a3 = BlueFin::GlSystemTime::getSubEpochTime(&v28, v25, 1u);
          v21 = *(a1 + 392);
          v22 = v20;
          v23 = *(a1 + 40);
          v24 = (sqrtf(v21) + (fabsf(v22) * sqrtf(v23)));
          *a5 = v24;
          if (v24 <= 0.001)
          {
            return 1;
          }
        }
      }

      return 0;
    }

    LODWORD(v12) = *(a1 + 344);
    v13 = (a2 - v12) / 1000.0;
    if (v13 > 600.0)
    {
      return 0;
    }

    v28 = *(a1 + 248) - v13 * *(a1 + 24);
    v25[0] = 52;
    v26 = 0;
    v27 = 147;
    *a3 = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v28, v25, 1u);
    v14 = *(a1 + 264);
  }

  v15 = v14;
  v16 = v13;
  v17 = *(a1 + 40);
  v18 = (sqrtf(v15) + (fabsf(v16) * sqrtf(v17)));
  *a5 = v18;
  if (v18 < 0.001)
  {
    *a4 |= 0x4A6u;
    return 1;
  }

  return 0;
}

uint64_t *BlueFin::GlMeMiniKF::GenerateClockModFlags@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, int a3@<W1>)
{
  *a1 = 0;
  if (a3 == -1 || *(this + 16) == a3)
  {
    if (this[13])
    {
      v3 = 16;
      *a1 = 16;
    }

    else
    {
      v3 = 0;
    }

    if (a3 == -1)
    {
LABEL_10:
      v4 = *(this + 50);
      v3 |= (4 * v4) & 8 | (v4 >> 2) & 6;
      if ((v4 & 0x1A) != 0)
      {
        *a1 = v3;
      }

      if (a3 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
  }

  if (*(this + 40) == a3)
  {
    goto LABEL_10;
  }

LABEL_13:
  if (*(this + 72) != a3)
  {
    goto LABEL_17;
  }

LABEL_14:
  v5 = *(this + 82);
  v3 = v3 & 0xFFFFFE1F | (((v5 >> 1) & 1) << 8) | (32 * ((v5 >> 3) & 1)) & 0xFFFFFF3F | (((v5 >> 4) & 1) << 7) | (((v5 >> 5) & 1) << 6);
  if ((v5 & 0x3A) != 0)
  {
    *a1 = v3;
  }

  if (a3 != -1)
  {
LABEL_17:
    if (*(this + 104) != a3)
    {
      return this;
    }
  }

  if ((~*(this + 114) & 6) == 0)
  {
    *a1 = v3 | 0x400;
  }

  return this;
}

BOOL BlueFin::GlMeWinMgr::GetMeAcqWindow(uint64_t a1, const BlueFin::GlSignalId *a2, uint64_t a3, _DWORD *a4, uint64_t a5, unsigned __int8 *a6, int8x16_t a7, double a8, int8x16_t a9, int8x16_t a10)
{
  v10 = *a9.i64;
  v17 = a1 + 0x2000;
  if (*a7.i64 == 0.0)
  {
    *a7.i64 = BlueFin::GlMeMsmtMgr::GetCurrTimeLms(*(a1 + 8), a7, a8, a9, a10);
  }

  if (*(v17 + 1664) - 1 > 3 || *(v17 + 1666) - 1 >= 4)
  {
    v18 = (v17 + 1667);
    *(v17 + 1667) = 0;
  }

  else
  {
    v18 = (v17 + 1667);
    *(v17 + 1667) = 1;
    *a4 &= ~1u;
  }

  v235[0] = *a2;
  v236 = 0;
  v237 = 575;
  if (v235[0] - 189 >= 0xFFFFFF44)
  {
    v19 = BlueFin::GlSvId::s_aucSvId2gnss[v235[0]];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v19] == 255)
    {
      v236 = -1;
    }

    else
    {
      v237 = BlueFin::GlSignalId::s_ausGnss2signalId[v19] + v235[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v19];
    }
  }

  v178 = a7;
  if ((*a4 & 0x20) != 0)
  {
    v20 = v235;
  }

  else
  {
    v20 = a2;
  }

  SigMeas = BlueFin::GlMeMsmtMgr::GetSigMeas(*(a1 + 8), v20, *a7.i64, 0);
  v223[0] = 0;
  v224 = 7;
  v225 = 0;
  v226 = xmmword_298A31A60;
  v227 = 0;
  v228 = 0;
  v233 = 0;
  v234 = 0xBF80000000000000;
  v231 = 0;
  v232 = 0;
  v229 = 0;
  v230 = 0;
  BlueFin::GlMeSatAidMgr::GetSatAid(a1 + 320, a2, v223, *v178.i64);
  v25 = v22;
  v177 = a3;
  if (v22)
  {
    v26 = v22[4];
    v27 = *(v22 + 10) < 0.001;
  }

  else
  {
    v27 = 0;
    v26 = 0.0;
  }

  if (a6)
  {
    v28 = *a6;
LABEL_19:
    v176 = v28;
    goto LABEL_32;
  }

  v203 = 0;
  LODWORD(v214) = 0;
  v185 = 0x3FF0000000000000;
  *v23.i64 = *v178.i64 + trunc(*v178.i64 * 2.32830644e-10) * -4294967300.0;
  v29.f64[0] = NAN;
  v29.f64[1] = NAN;
  v30 = vnegq_f64(v29);
  v31 = vbslq_s8(v30, v23, v178);
  if (*v178.i64 <= 4294967300.0)
  {
    v31.i64[0] = v178.i64[0];
  }

  if (*v31.i64 < -4294967300.0)
  {
    *v24.i64 = -*v31.i64;
    *v31.i64 = -(*v31.i64 - trunc(*v31.i64 * -2.32830644e-10) * -4294967300.0);
    *v31.i64 = -*vbslq_s8(v30, v31, v24).i64;
  }

  if (*v31.i64 < 0.0)
  {
    v32 = --*v31.i64;
  }

  else
  {
    v32 = *v31.i64;
  }

  CbGoodQuality = BlueFin::GlMeMiniKF::mskfGetCbGoodQuality(a1 + 9312, v32, &v203, &v214, &v185, 0);
  v34 = *a2;
  if (v34 < 0x34)
  {
    v176 = CbGoodQuality;
    goto LABEL_32;
  }

  v176 = (v34 > 0x41) & CbGoodQuality;
  if (v34 <= 0x41 && ((CbGoodQuality ^ 1) & 1) == 0)
  {
    v28 = v214 >> 7;
    goto LABEL_19;
  }

LABEL_32:
  v35 = 0.0;
  if (!v25 || (v36 = *a2, v36 < 0x34))
  {
    v39 = 0;
LABEL_45:
    v175 = 1;
    goto LABEL_46;
  }

  if (v36 <= 0x41 && *(v17 + 1632) == 1)
  {
    LOBYTE(v203) = 0;
    HIDWORD(v203) = 7;
    v204 = 0;
    v205 = xmmword_298A31A60;
    v206 = 0;
    v207 = 0;
    v212 = 0;
    v213 = 0xBF80000000000000;
    v210 = 0;
    v211 = 0;
    v208 = 0;
    v209 = 0;
    BlueFin::GlMeSatAidMgr::GetSatAid(a1 + 320, (a1 + 9808), &v203, *v178.i64);
    if (!v37 || *(v25 + 3) == 4 || *(v37 + 12) == 4)
    {
      goto LABEL_89;
    }

    v38 = *(a1 + 9816) - *v178.i64;
    if (v38 < 0.0)
    {
      v38 = -v38;
    }

    if (v38 >= 180000.0 || *(v37 + 40) >= 0.001 || !v27)
    {
LABEL_89:
      v39 = 0;
    }

    else
    {
      v35 = (*(v37 + 32) - v26) * 1000.0;
      v39 = 1;
    }

    v36 = *a2;
  }

  else
  {
    v39 = 0;
  }

  if (v36 - 139 > 0x23)
  {
    goto LABEL_45;
  }

  if (*(v17 + 1656) != 1)
  {
    goto LABEL_45;
  }

  LOBYTE(v203) = 0;
  HIDWORD(v203) = 7;
  v204 = 0;
  v205 = xmmword_298A31A60;
  v206 = 0;
  v207 = 0;
  v212 = 0;
  v213 = 0xBF80000000000000;
  v210 = 0;
  v211 = 0;
  v208 = 0;
  v209 = 0;
  BlueFin::GlMeSatAidMgr::GetSatAid(a1 + 320, (a1 + 9832), &v203, *v178.i64);
  if (!v84 || *(v25 + 3) == 4 || *(v84 + 12) == 4)
  {
    goto LABEL_45;
  }

  v85 = *(a1 + 9840) - *v178.i64;
  if (v85 < 0.0)
  {
    v85 = -v85;
  }

  if (v85 >= 180000.0 || *(v84 + 40) >= 0.001 || !v27)
  {
    goto LABEL_45;
  }

  v175 = 0;
  v35 = (*(v84 + 32) - v26) * 1000.0;
LABEL_46:
  v214 = &unk_2A1F0E1A0;
  v215 = 0;
  v216 = 0x36A7C5AC00000000;
  v217 = 0;
  v219 = 0;
  v218 = 3.4028e38;
  v220 = 2139095039;
  v221 = 0;
  v222 = 0x36A7C5AC7F7FFFFFLL;
  if (a5)
  {
    v40 = *(a5 + 16);
    v215 = *(a5 + 8);
    v216 = v40;
    v217 = *(a5 + 24);
    v41 = *(a5 + 32);
    v219 = *(a5 + 40);
    LODWORD(v40) = *(a5 + 48);
    v218 = v41;
    v220 = v40;
    v42 = *(a5 + 64);
    v221 = *(a5 + 56);
    v222 = v42;
    goto LABEL_56;
  }

  v43 = *v178.i64;
  if (*v178.i64 > 0.0)
  {
    v44 = 0.5;
LABEL_54:
    v45 = (v43 + v44);
    goto LABEL_55;
  }

  if (*v178.i64 < 0.0)
  {
    v44 = -0.5;
    v43 = *v178.i64;
    goto LABEL_54;
  }

  v45 = 0;
LABEL_55:
  BlueFin::GlMeClkModMgr::GetClkMod((a1 + 144), &v214, v45);
LABEL_56:
  BlueFin::GlMeAcqWinComputer::GlMeAcqWinComputer(&v203, SigMeas, v25, &v214, a1 + 16);
  v185 = &off_2A1F0E398;
  v186 = 0;
  v187 = -1;
  v188 = 575;
  v189 = 0;
  v190 = 0;
  v191 = xmmword_298A339D0;
  v192 = 2139095039;
  v193 = 0.0;
  v194 = 2139095039;
  v195 = 0;
  v196 = 1.79769313e308;
  v197 = -1;
  v198 = -1;
  v200 = 0;
  v201 = 0;
  v199 = 0;
  v202 = 0;
  if ((*a4 & 0x20) != 0)
  {
    v46 = v235;
  }

  else
  {
    v46 = a2;
  }

  IsDspNavBitQuality = BlueFin::GlMeMsmtMgr::IsDspNavBitQuality(*(a1 + 8), v46);
  v48 = v215 & 0x84;
  if (*(v17 + 1664) - 1 > 3 || *(v17 + 1666) - 1 >= 4)
  {
    v49 = 0;
    v50 = 0;
  }

  else
  {
    v49 = 1;
    v50 = 1;
  }

  *v18 = v49;
  BlueFin::GlMeAcqWinComputer::ComputeAcqWin(&v203, &v185, a4, IsDspNavBitQuality, v48 != 0, v50, a2, *v178.i64, *(a1 + 120));
  LODWORD(v201) = *(a1 + 9120);
  if ((*(SigMeas + 12) & 0x20) != 0)
  {
    v190 |= 0x100u;
  }

  v184 = 3.4028e38;
  v53 = *a2;
  v54 = v53 > 0x33;
  if (v53 > 0x33)
  {
    v198 = -1;
    v197 = -1;
    if (v53 > 0x41)
    {
      v54 = 0;
      v56 = &loc_298A2E000;
      goto LABEL_119;
    }

    v183 = -1;
    v55 = v39 & v176;
    if ((v39 & v176) == 1)
    {
      BlueFin::GlMeSatAidMgr::GetSatAid(a1 + 320, (a1 + 9808), 0, *v178.i64);
      v56 = &loc_298A2E000;
      v57 = (v35 + *(a1 + 9816)) * 0.001;
      v59 = 1.0 - *(v58 + 44);
      v60 = v193 < v57;
      *v61.i64 = (v57 - v193) * v59;
      *v62.i64 = *v61.i64 - trunc(*v61.i64 * 0.5) * 2.0;
      v63.f64[0] = NAN;
      v63.f64[1] = NAN;
      v64 = vnegq_f64(v63);
      v65 = 2.0 - *vbslq_s8(v64, v62, v61).i64;
      *v66.i64 = (v193 - v57) * v59;
      *v67.i64 = *v66.i64 + trunc(*v66.i64 * 0.5) * -2.0;
      v68 = vbslq_s8(v64, v67, v66).u64[0];
      if (v60)
      {
        v69 = v65;
      }

      else
      {
        v69 = *&v68;
      }

      EpochPerSymbol = BlueFin::GlSignalId::GetEpochPerSymbol(a2);
      if (*(a2 + 4) >= 0x23Fu)
      {
        v167 = "IsValid()";
        v168 = 679;
        DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
      }

      else
      {
        if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]])
        {
          v71 = v69 / ((BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]] * EpochPerSymbol) * 0.001);
          if (v71 <= 0.0)
          {
            if (v71 >= 0.0)
            {
              LOBYTE(v109) = 0;
LABEL_105:
              v83 = 0;
              goto LABEL_106;
            }

            v72 = -0.5;
          }

          else
          {
            v72 = 0.5;
          }

          v109 = (v71 + v72);
          goto LABEL_105;
        }

        v167 = "ucMsPerEpoch != 0";
        v168 = 686;
        DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      }

      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v168, v167);
    }

    if ((v176 & 1) != 0 || (v180 = 0.0, AidSysTm = BlueFin::GlMeSatAidMgr::GetAidSysTm(a1 + 320, &v180, 1, a5, v193 * 1000.0, 1000.0, v52), !v25))
    {
      v83 = 0;
      LOBYTE(v109) = -1;
      v56 = &loc_298A2E000;
      goto LABEL_106;
    }

    v74 = AidSysTm;
    v56 = &loc_298A2E000;
    if ((v180 + *(v25 + 10)) >= 0.005)
    {
      v83 = 0;
      LOBYTE(v109) = -1;
      goto LABEL_106;
    }

    v75 = v25[4];
    v76 = *(v25 + *(a2 + 1) + 14);
    v77 = BlueFin::GlSignalId::GetEpochPerSymbol(a2);
    if (*(a2 + 4) >= 0x23Fu)
    {
      v173 = "IsValid()";
      v174 = 679;
      DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    }

    else
    {
      if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]])
      {
        *v78.i64 = v74 + v75 + v76 / 299792458.0;
        v80 = 0.5;
        *v79.i64 = *v78.i64 + trunc(*v78.i64 * 0.5) * -2.0;
        v81.f64[0] = NAN;
        v81.f64[1] = NAN;
        v82 = *vbslq_s8(vnegq_f64(v81), v79, v78).i64 / ((BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]] * v77) * 0.001);
        if (v82 <= 0.0)
        {
          if (v82 >= 0.0)
          {
            LOBYTE(v109) = 0;
LABEL_170:
            v83 = 1;
LABEL_106:
            GlnsStrPhsInSym = BlueFin::GlMeMsmtMgr::GetGlnsStrPhsInSym(*(a1 + 8), a2, &v185, &v183);
            if ((v55 & 1) == 0)
            {
              if (GlnsStrPhsInSym)
              {
                LOBYTE(v109) = v183;
              }

              else if ((v83 & 1) == 0)
              {
                LOBYTE(v109) = -1;
                LOBYTE(v197) = -1;
                if ((v190 & 0x80) == 0)
                {
                  goto LABEL_116;
                }

                goto LABEL_112;
              }
            }

            LOBYTE(v197) = v109;
            if (v109 == 0xFF)
            {
              LOBYTE(v109) = -1;
              if ((v190 & 0x80) == 0)
              {
                goto LABEL_116;
              }
            }

            else
            {
              v190 |= 0x80u;
              if ((v109 & 1) == 0)
              {
                goto LABEL_116;
              }
            }

LABEL_112:
            if ((v109 + 1) <= 0xC7u)
            {
              v87 = v109 + 1;
            }

            else
            {
              v87 = v109 + 57;
            }

            LOBYTE(v197) = v87;
            v51 = v193;
            v193 = v193 + ((1.0 - *(&v191 + 1)) * 0.01);
LABEL_116:
            v53 = *a2;
            if (!*a2)
            {
              goto LABEL_218;
            }

            goto LABEL_117;
          }

          v80 = -0.5;
        }

        v109 = (v82 + v80);
        goto LABEL_170;
      }

      v173 = "ucMsPerEpoch != 0";
      v174 = 686;
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v174, v173);
  }

  v198 = -1;
  v197 = -1;
  v56 = &loc_298A2E000;
  if (!v53)
  {
    goto LABEL_218;
  }

LABEL_117:
  if (v53 >= 0x21)
  {
    if (v53 < 0x42)
    {
      goto LABEL_173;
    }

LABEL_119:
    if (v53 <= 0x4B)
    {
      goto LABEL_120;
    }

    if (v53 - 139 > 0x23)
    {
      goto LABEL_173;
    }

    if ((*a4 & 0x20) != 0 && *(a2 + 1) >= 1)
    {
      v193 = a8 / 299792458.0 + v193;
    }

    LOBYTE(v88) = BYTE1(v197);
    v183 = BYTE1(v197);
    if ((v175 | v176 ^ 1))
    {
      goto LABEL_144;
    }

    BlueFin::GlMeSatAidMgr::GetSatAid(a1 + 320, (a1 + 9832), 0, *v178.i64);
    v89 = v35 + *(a1 + 9840);
    v90 = v56[54];
    v91 = v89 * v90;
    v93 = 1.0 - *(v92 + 44);
    if (v193 >= v91)
    {
      v94 = fmod((v193 - v91) * v93, 0.1);
    }

    else
    {
      v94 = 0.1 - fmod((v91 - v193) * v93, 0.1);
    }

    v95 = BlueFin::GlSignalId::GetEpochPerSymbol(a2);
    if (*(a2 + 4) >= 0x23Fu)
    {
      v171 = "IsValid()";
      v172 = 679;
      DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    }

    else
    {
      if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]])
      {
        v96 = v94 / ((BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]] * v95) * v90);
        if (v96 <= 0.0)
        {
          if (v96 >= 0.0)
          {
            LOBYTE(v88) = 0;
            goto LABEL_144;
          }

          v97 = -0.5;
        }

        else
        {
          v97 = 0.5;
        }

        v88 = (v96 + v97);
LABEL_144:
        GalSecCodePhsInSym = BlueFin::GlMeMsmtMgr::GetGalSecCodePhsInSym(*(a1 + 8), a2, &v185, &v183);
        v100 = v183;
        if (!GalSecCodePhsInSym)
        {
          v100 = -1;
        }

        if (((v175 | v176 ^ 1) & 1) == 0)
        {
          v100 = v88;
        }

        BYTE1(v197) = v100;
        v101 = v193 * 1000.0;
        v102 = BlueFin::GlMeSatAidMgr::GetAidSysTm(a1 + 320, &v184, v54, &v214, v193 * 1000.0, 1000.0, v99);
        if (v25)
        {
          v103 = v25[4];
          v104 = *(v25 + *(a2 + 1) + 14);
          LOBYTE(v180) = *a2;
          v181 = 0;
          v182 = 575;
          if (LOBYTE(v180) - 189 >= 0xFFFFFF44)
          {
            v105 = BlueFin::GlSvId::s_aucSvId2gnss[LOBYTE(v180)];
            if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v105] == 255)
            {
              v181 = -1;
            }

            else
            {
              v182 = BlueFin::GlSignalId::s_ausGnss2signalId[v105] + LOBYTE(v180) - BlueFin::GlSvId::s_aucGnss2minSvId[v105];
            }
          }

          BlueFin::GlMeMsmtMgr::GetSigMeas(*(a1 + 8), &v180, v101, 0);
          v51 = 299792458.0;
          v52 = v102 + v103;
          v102 = v102 + v103 + v104 / 299792458.0;
        }

        if (BYTE1(v197) != 255)
        {
          v190 |= 0x400u;
        }

        if (!v25)
        {
          goto LABEL_172;
        }

        v51 = v218;
        if (v218 >= 0.0005)
        {
          goto LABEL_172;
        }

        v51 = v184;
        if (v184 >= 0.0005)
        {
          goto LABEL_172;
        }

        v106 = v102 + 604800.0;
        if (v102 >= 0.0)
        {
          v106 = v102;
        }

        v107 = fmod(v106, 0.1);
        if (*(a2 + 1))
        {
          v51 = v56[54];
        }

        else
        {
          v51 = 0.004;
        }

        v108 = v107 / v51;
        if (v108 <= 0.0)
        {
          if (v108 >= 0.0)
          {
            LOBYTE(v110) = 0;
LABEL_171:
            BYTE1(v197) = v110;
            v190 |= 0x400u;
LABEL_172:
            v53 = *a2;
            goto LABEL_173;
          }

          v51 = -0.5;
        }

        else
        {
          v51 = 0.5;
        }

        v110 = (v108 + v51);
        goto LABEL_171;
      }

      v171 = "ucMsPerEpoch != 0";
      v172 = 686;
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v172, v171);
  }

LABEL_120:
  if ((*a4 & 0x20) != 0 && *(a2 + 1) == 2)
  {
    v51 = v193;
    v193 = a8 / 299792458.0 + v193;
  }

LABEL_173:
  if (v53 - 76 > 0x3E)
  {
    goto LABEL_218;
  }

  v111 = *(a2 + 1);
  if (!v111)
  {
    goto LABEL_218;
  }

  v112 = v193 * 1000.0;
  v113 = BlueFin::GlMeSatAidMgr::GetAidSysTm(a1 + 320, &v184, v54, &v214, v193 * 1000.0, v51, v52);
  if (v25)
  {
    v114 = v113 + -14.0;
    v115 = v114 >= 0.0 ? v114 : v114 + 604800.0;
    v116 = v25[4];
    v117 = *(v25 + v111 + 14);
    LOBYTE(v180) = v53;
    v181 = 0;
    v182 = 575;
    v118 = BlueFin::GlSvId::s_aucSvId2gnss[v53];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v118] == 255)
    {
      v181 = -1;
    }

    else
    {
      v182 = BlueFin::GlSignalId::s_ausGnss2signalId[v118] + v53 - BlueFin::GlSvId::s_aucGnss2minSvId[v118];
    }

    BlueFin::GlMeMsmtMgr::GetSigMeas(*(a1 + 8), &v180, v112, 0);
    if (v218 < 0.0005 && v184 < 0.0005)
    {
      v119 = 0.1;
      if (*(a2 + 1) != 2)
      {
        v119 = 18.0;
      }

      v120 = dbl_298A3AD60[*(a2 + 1) == 2];
      v121 = fmod(v115 + v116 + v117 / 299792458.0, v119) / v120;
      if (v121 <= 0.0)
      {
        if (v121 >= 0.0)
        {
          LOWORD(v123) = 0;
LABEL_192:
          HIWORD(v197) = v123;
          v190 |= 0x1000u;
          goto LABEL_193;
        }

        v122 = -0.5;
      }

      else
      {
        v122 = 0.5;
      }

      v123 = (v121 + v122);
      goto LABEL_192;
    }
  }

LABEL_193:
  v124 = v190;
  if ((v190 & 0x1000) == 0 && BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]] == 13)
  {
    B1cL1cSecCodePhsInSym = BlueFin::GlMeMsmtMgr::GetB1cL1cSecCodePhsInSym(*(a1 + 8), a2, &v185, &v197 + 1);
    v124 = v190;
    if (B1cL1cSecCodePhsInSym)
    {
      v124 = v190 | 0x1000;
      v190 |= 0x1000u;
    }
  }

  if ((v124 & 0x1000) == 0)
  {
    LOBYTE(v180) = *a2;
    v181 = 0;
    v182 = 575;
    if (LOBYTE(v180) - 189 >= 0xFFFFFF44)
    {
      v126 = BlueFin::GlSvId::s_aucSvId2gnss[LOBYTE(v180)];
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v126] == 255)
      {
        v181 = -1;
      }

      else
      {
        v182 = BlueFin::GlSignalId::s_ausGnss2signalId[v126] + LOBYTE(v180) - BlueFin::GlSvId::s_aucGnss2minSvId[v126];
      }
    }

    v127 = BlueFin::GlMeMsmtMgr::GetSigMeas(*(a1 + 8), &v180, v193 * 1000.0, 0);
    if (v127)
    {
      if ((~*(v127 + 12) & 0x22) == 0)
      {
        v128 = *(a2 + 1);
        if ((*a4 & 0x20) != 0)
        {
          if (v128 == 2)
          {
            v129 = v10 / 299792458.0;
            v130 = a8 / 299792458.0;
            v193 = a8 / 299792458.0 + v193 - v10 / 299792458.0;
            goto LABEL_209;
          }
        }

        else if (v128 == 2)
        {
          v129 = v10 / 299792458.0;
          v130 = a8 / 299792458.0;
LABEL_209:
          v132 = *(v127 + 64);
          v131 = (v127 + 64);
          v133 = v129 + v132 - v130;
          v134 = 0.1;
          v135 = v56[54];
          goto LABEL_211;
        }

        v136 = *(v127 + 64);
        v131 = (v127 + 64);
        v133 = v10 / 299792458.0 + v136;
        v134 = 18.0;
        v135 = 0.01;
LABEL_211:
        *v131 = v133;
        v137 = fmod(v133, v134) / v135;
        if (v137 <= 0.0)
        {
          if (v137 >= 0.0)
          {
            LOWORD(v139) = 0;
LABEL_217:
            HIWORD(v197) = v139;
            v190 |= 0x1000u;
            goto LABEL_218;
          }

          v138 = -0.5;
        }

        else
        {
          v138 = 0.5;
        }

        v139 = (v137 + v138);
        goto LABEL_217;
      }
    }
  }

LABEL_218:
  v140 = v193 * 1000.0;
  v141 = BlueFin::GlMeSatAidMgr::GetAidSysTm(a1 + 320, &v184, v54, &v214, v193 * 1000.0, 1000.0, v52);
  v196 = v141;
  if (!v25)
  {
    goto LABEL_267;
  }

  v142 = *v25;
  if (v142 >= 0x34 && v142 <= 0x41 && v184 > 0.0005)
  {
    HIBYTE(v195) = 0;
  }

  LODWORD(v143) = *(a2 + 1);
  v144 = v141 + v25[4] + *(v25 + v143 + 14) / 299792458.0;
  v196 = v144;
  v145 = *a2;
  if (v144 < 0.0)
  {
    v144 = v144 + dbl_298A3AD70[(v145 - 52) < 0xE];
    v196 = v144;
  }

  v146 = BlueFin::GlSvId::s_aucSvId2gnss[v145];
  if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v143 - v143 + v146] == 1 && *(v25 + 10) < 0.0000001 && v184 < 0.0000001)
  {
    LOBYTE(v180) = v145;
    v181 = 0;
    v182 = 575;
    if ((v145 - 189) >= 0xFFFFFF44)
    {
      if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v146] == 255)
      {
        v181 = -1;
      }

      else
      {
        v182 = BlueFin::GlSignalId::s_ausGnss2signalId[v146] + v145 - BlueFin::GlSvId::s_aucGnss2minSvId[v146];
      }
    }

    BlueFin::GlMeMsmtMgr::GetSigMeas(*(a1 + 8), &v180, v140, 0);
    if (*(a2 + 4) >= 0x23Fu)
    {
      v169 = "IsValid()";
      v170 = 679;
      DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    }

    else
    {
      v143 = *(a2 + 1);
      v145 = *a2;
      v146 = BlueFin::GlSvId::s_aucSvId2gnss[*a2];
      if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v143 - v143 + v146])
      {
        v147 = v56[54];
        v148 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v143 - v143 + v146] * v147;
        v144 = v196;
        v149 = fmod(v196, v148);
        v152 = (1.0 - *(&v191 + 1));
        v153 = v193 + v152 * (v148 - v149);
        v193 = v153;
        *v154.i64 = vabdd_f64(v153, *v178.i64 * v147);
        if (*v154.i64 > v148 * 0.5)
        {
          *v154.i64 = (v148 * 0.5 + *v154.i64) / v148;
          *v151.i64 = *v154.i64 + trunc(*v154.i64 * 2.32830644e-10) * -4294967300.0;
          v155.f64[0] = NAN;
          v155.f64[1] = NAN;
          v156 = vnegq_f64(v155);
          v151.i64[0] = vbslq_s8(v156, v151, v154).u64[0];
          if (*v154.i64 > 4294967300.0)
          {
            v154.i64[0] = v151.i64[0];
          }

          if (*v154.i64 < -4294967300.0)
          {
            *v150.i64 = -*v154.i64;
            *v154.i64 = -(*v154.i64 - trunc(*v154.i64 * -2.32830644e-10) * -4294967300.0);
            *v154.i64 = -*vbslq_s8(v156, v154, v150).i64;
          }

          if (*v154.i64 < 0.0)
          {
            v157 = --*v154.i64;
          }

          else
          {
            v157 = *v154.i64;
          }

          v158 = v148 * v157 * v152;
          v159 = 1.0;
          if (v153 - *v178.i64 * v147 >= 0.0)
          {
            v159 = -1.0;
          }

          v193 = v153 + v159 * v158;
        }

        v190 |= 0x800u;
        goto LABEL_246;
      }

      v169 = "ucMsPerEpoch != 0";
      v170 = 686;
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v170, v169);
  }

LABEL_246:
  if (v218 < 0.0005 && v184 < 0.0005)
  {
    v160 = (v145 - 1) >= 0x20 && (v145 - 66) >= 0xA;
    v161 = !v160;
    if (v143 == 3 && v161)
    {
      v162 = fmod(v144, 18.0) / 0.01;
      if (v162 <= 0.0)
      {
        if (v162 >= 0.0)
        {
          LOWORD(v164) = 0;
LABEL_262:
          v198 = v164;
          v190 |= 0x2000u;
          goto LABEL_263;
        }

        v163 = -0.5;
      }

      else
      {
        v163 = 0.5;
      }

      v164 = (v162 + v163);
      goto LABEL_262;
    }
  }

LABEL_263:
  if ((v190 & 0x2000) == 0 && BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v143 - v143 + v146] == 14 && BlueFin::GlMeMsmtMgr::GetB1cL1cSecCodePhsInSym(*(a1 + 8), a2, &v185, &v198))
  {
    v190 |= 0x2000u;
  }

LABEL_267:
  BlueFin::GlMeAcqWin::operator=(v177, &v185);
  if ((v165 + 8) != a2)
  {
    *(v165 + 8) = *a2;
    *(v165 + 12) = *(a2 + 1);
    *(v165 + 16) = *(a2 + 4);
  }

  *(v165 + 24) = *v178.i64 * v56[54];
  if ((*a4 & 4) != 0 && BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    (*(*v165 + 24))(v165, 0, 0);
  }

  return v25 != 0;
}

uint64_t BlueFin::GlSignalId::GetEpochPerBit(BlueFin::GlSignalId *this)
{
  if (*(this + 4) >= 0x23Fu)
  {
    v7 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 726, "GetEpochPerBit", "IsValid()");
    v8 = 726;
LABEL_13:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v8, v7);
  }

  v1 = *this;
  if ((v1 - 76) > 0x3E || ((1 << (v1 - 76)) & 0x7C0000000000001FLL) == 0)
  {
    v3 = *(this + 1);
  }

  else
  {
    v3 = *(this + 1);
    if (!v3)
    {
      return 2;
    }
  }

  v4 = BlueFin::GlSvId::s_aucSvId2gnss[*this];
  v5 = &BlueFin::GlSignalId::s_aucSignalIndexAndGnss2epochPerBit + 8 * v3 - v3;
  result = v5[v4];
  if (!v5[v4])
  {
    v7 = "ucEpochPerBit != 0";
    DeviceFaultNotify("glsignalid.h", 738, "GetEpochPerBit", "ucEpochPerBit != 0");
    v8 = 738;
    goto LABEL_13;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdCtrlSm::SetSatAiding(BlueFin::GlMeSrdCtrlSm *this, const BlueFin::GlSatAidInfo *a2)
{
  v5 = 29;
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

void *BlueFin::GlStackAlloc<BlueFin::GlSatAidInfo>::~GlStackAlloc(void *a1)
{
  (***a1)(*a1);
  (a1[1])(*a1);
  return a1;
}

void BlueFin::GlMeAcqWindowProvider::GetClkMod(BlueFin::GlMeAcqWindowProvider *this, BlueFin::GlMeClkMod *a2, uint64_t CurrTimeLms, int8x16_t a4, double a5, int8x16_t a6, int8x16_t a7)
{
  v8 = *(this + 1);
  if (!CurrTimeLms)
  {
    CurrTimeLms = BlueFin::GlMeMsmtMgr::GetCurrTimeLms((v8 + 10624), a4, a5, a6, a7);
  }

  BlueFin::GlMeClkModMgr::GetClkMod((v8 + 176), a2, CurrTimeLms);
}

uint64_t BlueFin::GlMeSignalAidInfo::operator=(uint64_t result, uint64_t a2)
{
  *(result + 8) = *(a2 + 8);
  v2 = *(a2 + 14);
  if (v2 > *(result + 12))
  {
    DeviceFaultNotify("glmepeif_types.cpp", 100, "operator=", "m_ucMaxSignals >= otSrc.number_of_signals");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmepeif_types.cpp", 100, "m_ucMaxSignals >= otSrc.number_of_signals");
  }

  *(result + 14) = v2;
  if (v2)
  {
    v3 = (*(result + 16) + 4);
    v4 = (*(a2 + 16) + 4);
    do
    {
      *(v3 - 2) = *(v4 - 2);
      v5 = *v4;
      v4 += 2;
      *v3 = v5;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t BlueFin::GlMeSignalAidInfo::RemoveAllNullSignals(uint64_t this)
{
  v1 = *(this + 14);
  if (v1)
  {
    v2 = this;
    v3 = 0;
    do
    {
      if ((*(*(v2 + 16) + 8 * v3 + 4) & 0x1110700) != 0)
      {
        ++v3;
      }

      else
      {
        this = BlueFin::GlMeSignalAidInfo::RemoveSignalByArrayIdx(v2, v3);
        v1 = *(v2 + 14);
      }
    }

    while (v3 < v1);
  }

  return this;
}

uint64_t BlueFin::GlReqSm::sendMeSignalAiding(BlueFin::GlReqSm *this, const BlueFin::GlMeSignalAidInfo *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19, unsigned __int16 *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, unsigned int a36, char a37, unsigned __int16 a38, __int128 *a39, __int128 a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, __int128 a45, __int128 a46, __int128 a47, __int128 a48, __int128 a49, __int128 a50, __int128 a51, __int128 a52, __int128 a53, __int128 a54, __int128 a55, __int128 a56, __int128 a57)
{
  STACK[0xCB8] = *MEMORY[0x29EDCA608];
  v59 = *(this + 784);
  if (*(v59 + 26342) == 1 && !*(*(this + 805) + 36))
  {
    (*(*v59 + 1000))(*(this + 784), 1, a3, a4, a5, a6, a7, a8);
    (*(**(this + 39) + 776))();
    v59 = *(this + 784);
  }

  if (*(v59 + 26300) == 2 && *(*(this + 788) + 60928) >= 0x1Fu)
  {
    v60 = 0;
    *&STACK[0x980] = 0u;
    *&STACK[0x990] = 0u;
    *&STACK[0x960] = 0u;
    *&STACK[0x970] = 0u;
    *&STACK[0x940] = 0u;
    *&STACK[0x950] = 0u;
    *&STACK[0x920] = 0u;
    *&STACK[0x930] = 0u;
    *&STACK[0x900] = 0u;
    *&STACK[0x910] = 0u;
    *&STACK[0x8E0] = 0u;
    *&STACK[0x8F0] = 0u;
    *&STACK[0x8C0] = 0u;
    *&STACK[0x8D0] = 0u;
    a56 = 0u;
    a57 = 0u;
    a54 = 0u;
    a55 = 0u;
    a52 = 0u;
    a53 = 0u;
    a50 = 0u;
    a51 = 0u;
    a48 = 0u;
    a49 = 0u;
    a46 = 0u;
    a47 = 0u;
    a44 = 0u;
    a45 = 0u;
    a42 = 0u;
    a43 = 0u;
    a40 = 0u;
    a41 = 0u;
    v133 = &unk_2A1F09328;
    LOBYTE(v135[0]) = -96;
    *(v135 + 4) = &a40;
    do
    {
      v61 = &a40 + v60;
      *v61 = 0;
      *(v61 + 1) = 0;
      v60 += 8;
    }

    while (v60 != 1280);
    v134 = *(a2 + 2);
    WORD1(v135[0]) = 0;
    v62 = *(a2 + 7);
    if (*(a2 + 7))
    {
      v63 = 0;
      v64 = 0;
      v65 = (*(a2 + 2) + 4);
      do
      {
        v66 = *v65;
        if ((*v65 & 0x400) != 0)
        {
          v67 = &a40 + 8 * v64;
          *v67 = *(v65 - 2);
          *(v67 + 1) = v66;
          WORD1(v135[0]) = ++v63;
          v64 = v63;
        }

        v65 += 2;
        --v62;
      }

      while (v62);
    }

    if (BlueFin::GlUtils::m_pInstance)
    {
      if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        off_2A1F09340(&v133, 0, 0);
      }
    }

    BlueFin::GlMeSignalAidInfo::Print(&v133, 0xEu, 0);
    BlueFin::GlMeSignalAidInfo::GetSignalIds(&a24, &v133);
    (*(**(this + 787) + 96))(*(this + 787), &a24);
    return (*(**(this + 39) + 232))(*(this + 39), &v133);
  }

  if (*(v59 + 26297) == 1)
  {
    v69 = *(v59 + 48);
    if ((v69 - 4) < 5 || v69 == 2)
    {
      v71 = 0;
      *&STACK[0x980] = 0u;
      *&STACK[0x990] = 0u;
      *&STACK[0x960] = 0u;
      *&STACK[0x970] = 0u;
      *&STACK[0x940] = 0u;
      *&STACK[0x950] = 0u;
      *&STACK[0x920] = 0u;
      *&STACK[0x930] = 0u;
      *&STACK[0x900] = 0u;
      *&STACK[0x910] = 0u;
      *&STACK[0x8E0] = 0u;
      *&STACK[0x8F0] = 0u;
      *&STACK[0x8C0] = 0u;
      *&STACK[0x8D0] = 0u;
      a56 = 0u;
      a57 = 0u;
      a54 = 0u;
      a55 = 0u;
      a52 = 0u;
      a53 = 0u;
      a50 = 0u;
      a51 = 0u;
      a48 = 0u;
      a49 = 0u;
      a46 = 0u;
      a47 = 0u;
      a44 = 0u;
      a45 = 0u;
      a42 = 0u;
      a43 = 0u;
      a40 = 0u;
      a41 = 0u;
      a17 = &unk_2A1F09328;
      LOBYTE(a19) = -96;
      HIWORD(a19) = 0;
      a20 = &a40;
      do
      {
        v72 = &a40 + v71;
        *v72 = 0;
        *(v72 + 1) = 0;
        v71 += 8;
      }

      while (v71 != 1280);
      a18 = *(a2 + 2);
      v73 = *(*(this + 788) + 60928);
      BlueFin::GlSetBase::GlSetBase(&v133, v135, 8u, (v59 + 208));
      v74 = 0;
      v75 = v133 + v134 - 1;
      do
      {
        if (*v75)
        {
          v76 = *v75 - (((*v75 >> 2) & 0x9249249) + ((*v75 >> 1) & 0x5B6DB6DB));
          v74 = ((v76 + (v76 >> 3)) & 0xC71C71C7) + v74 - 63 * (((v76 + (v76 >> 3)) & 0xC71C71C7) / 0x3F);
        }

        --v75;
      }

      while (v75 >= v133);
      if (v73 > 0x1E || v74 <= 0x20u && *(*(this + 788) + 60928) >= 2u)
      {
        if (*(a2 + 7))
        {
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v81 = *(this + 789);
          v132 = 15;
          v82 = 4;
          while (1)
          {
            if (v74 < 0x21u || *(*(a2 + 2) + v77) - 1 > 0x1F)
            {
              LOBYTE(a24) = *(*(a2 + 2) + v77);
              AidBySvId = BlueFin::GlPeSatAidInfo::GetAidBySvId(v81 + 32, &a24);
              if (AidBySvId && *(AidBySvId + 37) >= 5 && *(AidBySvId + 3) != 4)
              {
                v84 = *(a2 + 2);
                v85 = v84 + v77;
                v86 = *(v84 + v77 + 4);
                if ((v86 & 0x600) != 0)
                {
                  v87 = HIWORD(a19);
                  v88 = &a20[4 * HIWORD(a19)];
                  *v88 = *v85;
                  *(v88 + 1) = v86;
                  v89 = (*(v85 + 4) & 0x200) == 0;
                  v90 = v132;
                  if (!v89)
                  {
                    v90 = 11;
                  }

                  v132 = v90;
                  if (v89)
                  {
                    v91 = 1;
                  }

                  else
                  {
                    v82 = 2;
                    v91 = 2;
                  }

                  v79 += v91;
                  if (v80 >= v82)
                  {
                    *(v88 + 1) = v86 & 0xFFFFF9FF;
                  }

                  else
                  {
                    ++v79;
                  }

                  ++v80;
                  v93 = v87 + 1;
                  HIWORD(a19) = v93;
                }

                else
                {
                  v92 = *(v84 + v77);
                  v93 = HIWORD(a19);
                  if (v92 - 175 <= 0xD)
                  {
                    v94 = &a20[4 * HIWORD(a19)];
                    *v94 = v92;
                    *(v94 + 1) = v86;
                    HIWORD(a19) = ++v93;
                    ++v79;
                  }
                }

                if (v82 <= v93)
                {
                  LODWORD(v95) = *(a2 + 7);
LABEL_52:
                  if (v79 >= v132 || !v95)
                  {
                    break;
                  }

                  v96 = 0;
LABEL_55:
                  if (*(*(a2 + 2) + 8 * v96) - 1 <= 0x1F)
                  {
                    LOBYTE(a24) = *(*(a2 + 2) + 8 * v96);
                    v97 = BlueFin::GlPeSatAidInfo::GetAidBySvId(v81 + 32, &a24);
                    if (v97)
                    {
                      if (*(v97 + 37) >= 5 && *(v97 + 3) != 4)
                      {
                        v98 = *(a2 + 2) + 8 * v96;
                        v99 = HIWORD(a19);
                        if (!HIWORD(a19))
                        {
LABEL_63:
                          if (v74 < 0x21u)
                          {
                            v103 = *(v98 + 4);
                            if ((v103 & 0x600) != 0)
                            {
                              goto LABEL_72;
                            }
                          }

                          else
                          {
                            v103 = *(v98 + 4);
                          }

                          v104 = &a20[4 * HIWORD(a19)];
                          *v104 = *v98;
                          *(v104 + 1) = v103;
                          v105 = v79 + 1;
                          if ((*(v98 + 5) & 6) != 0)
                          {
                            if (v80 >= v82)
                            {
                              *(v104 + 1) = v103 & 0xFFFFF9FF;
                            }

                            else
                            {
                              v105 = v79 + 2;
                            }

                            ++v80;
                          }

                          HIWORD(a19) = v99 + 1;
                          v79 = v105;
                          if (v105 >= v132)
                          {
                            break;
                          }

                          goto LABEL_72;
                        }

                        v100 = a20;
                        v101 = HIWORD(a19);
                        while (1)
                        {
                          v102 = *v100;
                          v100 += 4;
                          if (v102 == *v98)
                          {
                            break;
                          }

                          if (!--v101)
                          {
                            goto LABEL_63;
                          }
                        }
                      }
                    }
                  }

LABEL_72:
                  if (++v96 >= *(a2 + 7))
                  {
                    break;
                  }

                  goto LABEL_55;
                }
              }
            }

            else
            {
              GlCustomLog(14, "Has none GPS \n");
            }

            ++v78;
            v95 = *(a2 + 7);
            v77 += 8;
            if (v78 >= v95)
            {
              goto LABEL_52;
            }
          }
        }
      }

      else
      {
        v121 = *(a2 + 7);
        if (*(a2 + 7))
        {
          v122 = HIWORD(a19);
          v123 = a20;
          v124 = (*(a2 + 2) + 4);
          do
          {
            if (*(v124 - 2) - 1 <= 0x1F)
            {
              v125 = &v123[4 * v122];
              *v125 = *(v124 - 2);
              v126 = *v124;
              *(v125 + 1) = *v124;
              if (v74 >= 0x21u && (v126 & 0x600) != 0)
              {
                *&v123[4 * v122 + 2] = v126 & 0xFFFFF9FF;
              }

              HIWORD(a19) = ++v122;
            }

            v124 += 2;
            --v121;
          }

          while (v121);
        }
      }

      if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
      {
        (*(a17 + 3))(&a17, 0, 0);
      }

      BlueFin::GlMeSignalAidInfo::Print(&a17, 0xEu, 0);
      BlueFin::GlMeSignalAidInfo::GetSignalIds(&a24, &a17);
      (*(**(this + 787) + 96))(*(this + 787), &a24);
      return (*(**(this + 39) + 232))(*(this + 39), &a17);
    }
  }

  if (*(v59 + 26341) == 1)
  {
    v106 = 0;
    *&STACK[0x980] = 0u;
    *&STACK[0x990] = 0u;
    *&STACK[0x960] = 0u;
    *&STACK[0x970] = 0u;
    *&STACK[0x940] = 0u;
    *&STACK[0x950] = 0u;
    *&STACK[0x920] = 0u;
    *&STACK[0x930] = 0u;
    *&STACK[0x900] = 0u;
    *&STACK[0x910] = 0u;
    *&STACK[0x8E0] = 0u;
    *&STACK[0x8F0] = 0u;
    *&STACK[0x8C0] = 0u;
    *&STACK[0x8D0] = 0u;
    a56 = 0u;
    a57 = 0u;
    a54 = 0u;
    a55 = 0u;
    a52 = 0u;
    a53 = 0u;
    a50 = 0u;
    a51 = 0u;
    a48 = 0u;
    a49 = 0u;
    a46 = 0u;
    a47 = 0u;
    a44 = 0u;
    a45 = 0u;
    a42 = 0u;
    a43 = 0u;
    a40 = 0u;
    a41 = 0u;
    a35 = &unk_2A1F09328;
    a37 = -96;
    a39 = &a40;
    do
    {
      v107 = &a40 + v106;
      *v107 = 0;
      *(v107 + 1) = 0;
      v106 += 8;
    }

    while (v106 != 1280);
    a36 = *(a2 + 2);
    a38 = 0;
    BlueFin::GlReqSm::GetValidDetectedSignalIds(&a24, this);
    BlueFin::GlSignalIdSet::GetSvIdSet(&a11, &a24);
    BlueFin::GlSetBase::GlSetBase(&a17, &a19, 8u, &a11);
    v133 = v135;
    LOBYTE(v134) = 8;
    v135[0] = xmmword_298A3244C;
    v135[1] = unk_298A3245C;
    BlueFin::GlSetBase::operator&=(&a17, &v133);
    v108 = 0;
    v109 = &a17[4 * a18 - 4];
    do
    {
      if (*v109)
      {
        v110 = *v109 - (((*v109 >> 2) & 0x9249249) + ((*v109 >> 1) & 0x5B6DB6DB));
        v108 = ((v110 + (v110 >> 3)) & 0xC71C71C7) + v108 - 63 * (((v110 + (v110 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      v109 -= 4;
    }

    while (v109 >= a17);
    v111 = v108 & 0xF8;
    if (*(a2 + 7))
    {
      v112 = 0;
      v113 = 0;
      v114 = *(this + 789);
      do
      {
        v115 = *(*(a2 + 2) + v112);
        LOBYTE(v133) = v115;
        if (v115 - 76 <= 0x3E)
        {
          v116 = !BlueFin::GlPeSatAidInfo::GetAidBySvId(v114 + 32, &v133) && v111 != 0;
          if (!v116 || ((*&a17[(v115 >> 3) & 0x1C] >> (v115 & 0x1F)) & 1) != 0)
          {
            v117 = *(a2 + 2) + v112;
            v118 = a38;
            v119 = a39 + 8 * a38;
            *v119 = *v117;
            *(v119 + 1) = *(v117 + 4);
            a38 = v118 + 1;
          }
        }

        ++v113;
        v120 = *(a2 + 7);
        v112 += 8;
      }

      while (v113 < v120);
      if ((*(*(this + 784) + 26342) & 1) == 0)
      {
        if (!*(a2 + 7))
        {
LABEL_120:
          if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
          {
            (*(a35 + 3))(&a35, 0, 0);
          }

          BlueFin::GlMeSignalAidInfo::Print(&a35, 0xEu, 0);
          BlueFin::GlMeSignalAidInfo::GetSignalIds(&v133, &a35);
          (*(**(this + 787) + 96))(*(this + 787), &v133);
          return (*(**(this + 39) + 232))(*(this + 39), &a35);
        }

LABEL_116:
        v127 = 0;
        v128 = a38;
        v129 = a39;
        v130 = (*(a2 + 2) + 4);
        do
        {
          if (*(v130 - 2) - 76 >= 0x3F)
          {
            v131 = v129 + 8 * v128;
            *v131 = *(v130 - 2);
            *(v131 + 1) = *v130;
            a38 = ++v128;
          }

          ++v127;
          v130 += 2;
        }

        while (v127 < v120);
        goto LABEL_120;
      }
    }

    else
    {
      if ((*(*(this + 784) + 26342) & 1) == 0)
      {
        goto LABEL_120;
      }

      LODWORD(v120) = 0;
    }

    if (!v120 || !(*(*(this + 3975) + 10297) & 1 | (a36 > 0x1D4C0 || v111 != 0)))
    {
      goto LABEL_120;
    }

    goto LABEL_116;
  }

  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    (*(*a2 + 24))(a2, 0, 0, a4, a5, a6, a7, a8);
  }

  BlueFin::GlMeSignalAidInfo::Print(a2, 0xEu, 0);
  BlueFin::GlMeSignalAidInfo::GetSignalIds(&a40, a2);
  (*(**(this + 787) + 96))(*(this + 787), &a40);
  return (*(**(this + 39) + 232))(*(this + 39), a2);
}

uint64_t BlueFin::GlMeSignalAidInfo::Print(uint64_t this, unsigned __int8 a2, char a3)
{
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v5 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
    if (this)
    {
      if (((1 << (a2 >> 3)) & 0x2000800E) != 0)
      {
        GlCustomLog(a2, "SIGAID(%2u) LMS %u:", *(v5 + 14), *(v5 + 8));
        v59 = v61;
        v60 = 8;
        memset(v61, 0, 32);
        if (*(v5 + 14))
        {
          v6 = 0;
          v7 = 0;
          do
          {
            v8 = *(*(v5 + 16) + v6);
            *&v59[(v8 >> 3) & 0x1C] |= 1 << v8;
            GlCustomLog(a2, "%3u ", v8);
            ++v7;
            v6 += 8;
          }

          while (v7 < *(v5 + 14));
        }

        this = GlCustomLog(a2, "\n");
        if (a3)
        {
          GlCustomLog(a2, "SIGAID(%02u): LMS %u SvId, ", *(v5 + 14), *(v5 + 8));
          for (i = 0; i != 7; ++i)
          {
            v10 = &BlueFin::GlSvIdSet::csm_aulGlSvIdSet[2 * i];
            v51 = &v53;
            v52 = 8;
            v11 = v10[1];
            v53 = *v10;
            v54 = v11;
            v12 = BlueFin::GlSetBase::GlSetBase(&v55, &v57, 8u, &v59);
            v47 = &v49;
            LOBYTE(v48) = 8;
            v49 = 0u;
            v50 = 0u;
            BlueFin::GlSetBase::OperatorBinaryAnd(v12, &v47, &v51);
            BlueFin::GlSetBase::operator=(&v55, &v47);
            v13 = 0;
            v57 = v49;
            v58 = v50;
            v14 = &v55[4 * v56 - 4];
            do
            {
              if (*v14)
              {
                v15 = *v14 - (((*v14 >> 1) & 0x5B6DB6DB) + ((*v14 >> 2) & 0x9249249));
                v13 = ((v15 + (v15 >> 3)) & 0xC71C71C7) + v13 - 63 * (((v15 + (v15 >> 3)) & 0xC71C71C7) / 0x3F);
              }

              v14 -= 4;
            }

            while (v14 >= v55);
            v16 = v13;
            AbbrevGnssName = BlueFin::GlGnss::GetAbbrevGnssName(i);
            v18 = "\n";
            if (i != 6)
            {
              v18 = ",";
            }

            GlCustomLog(a2, " %u %s%s", v16, AbbrevGnssName, v18);
          }

          for (j = 0; j != 7; ++j)
          {
            v20 = &BlueFin::GlSvIdSet::csm_aulGlSvIdSet[2 * j];
            v51 = &v53;
            v52 = 8;
            v21 = v20[1];
            v53 = *v20;
            v54 = v21;
            v22 = BlueFin::GlSetBase::GlSetBase(&v55, &v57, 8u, &v59);
            v47 = &v49;
            LOBYTE(v48) = 8;
            v49 = 0u;
            v50 = 0u;
            BlueFin::GlSetBase::OperatorBinaryAnd(v22, &v47, &v51);
            BlueFin::GlSetBase::operator=(&v55, &v47);
            v23 = 0;
            v57 = v49;
            v58 = v50;
            v24 = &v55[4 * v56 - 4];
            do
            {
              if (*v24)
              {
                v25 = *v24 - (((*v24 >> 1) & 0x5B6DB6DB) + ((*v24 >> 2) & 0x9249249));
                v23 = ((v25 + (v25 >> 3)) & 0xC71C71C7) + v23 - 63 * (((v25 + (v25 >> 3)) & 0xC71C71C7) / 0x3F);
              }

              v24 -= 4;
            }

            while (v24 >= v55);
            v46 = BlueFin::GlGnss::GetAbbrevGnssName(j);
            GlCustomLog(a2, "SIGAID %s(%2d):", v46, v23);
            LOBYTE(v47) = v56;
            v26 = v56;
            v27 = v55;
            memcpy(&v48, v55, 4 * v56);
            WORD1(v47) = 0;
            BYTE1(v47) = 0;
            HIDWORD(v47) = v48;
            BlueFin::GlSetIterator::operator++(&v47);
            if (BYTE1(v47) != v47)
            {
              do
              {
                GlCustomLog(a2, " %3d   ", BYTE2(v47));
                BlueFin::GlSetIterator::operator++(&v47);
              }

              while (BYTE1(v47) != v47);
              v27 = v55;
              v26 = v56;
            }

            v28 = 0;
            v29 = &v27[4 * v26 - 4];
            do
            {
              if (*v29)
              {
                v30 = *v29 - (((*v29 >> 1) & 0x5B6DB6DB) + ((*v29 >> 2) & 0x9249249));
                v28 = ((v30 + (v30 >> 3)) & 0xC71C71C7) + v28 - 63 * (((v30 + (v30 >> 3)) & 0xC71C71C7) / 0x3F);
              }

              v29 -= 4;
            }

            while (v29 >= v27);
            GlCustomLog(a2, "\nSIGAID %s(%2d):", v46, v28);
            v31 = *(v5 + 14);
            if (v31)
            {
              v32 = 0;
              for (k = 0; k < v31; ++k)
              {
                v34 = *(v5 + 16);
                if (j == BlueFin::GlSvId::s_aucSvId2gnss[*(v34 + v32)])
                {
                  v35 = *(v34 + v32 + 4);
                  v36 = 53;
                  v37 = 120;
                  if ((v35 & 0x400) == 0)
                  {
                    v36 = 120;
                  }

                  if ((v35 & 0x200) != 0)
                  {
                    v37 = 50;
                  }

                  v44 = v37;
                  v45 = v36;
                  v38 = 65;
                  if ((v35 & 0x1000) == 0)
                  {
                    v38 = 97;
                  }

                  v39 = 80;
                  if ((v35 & 0x800) == 0)
                  {
                    v39 = 112;
                  }

                  v43 = v38;
                  v40 = 70;
                  if ((v35 & 2) == 0)
                  {
                    v40 = 102;
                  }

                  v41 = (v35 & 1) == 0;
                  v42 = 82;
                  if (v41)
                  {
                    v42 = 114;
                  }

                  GlCustomLog(a2, "%c%c%c%c%c%c ", v42, v40, v39, v43, v44, v45);
                  v31 = *(v5 + 14);
                }

                v32 += 8;
              }
            }

            this = GlCustomLog(a2, "\n");
          }
        }
      }
    }
  }

  return this;
}

_BYTE *BlueFin::GlPeGnssSatPosTriplet::GlPeGnssSatPosTriplet(_BYTE *a1, uint64_t a2, unsigned int *a3, int a4, char a5, uint64_t a6, double a7)
{
  *a1 = 0;
  v22 = a5;
  Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((a2 + 384), a4);
  if (Mgr)
  {
    v12 = Mgr;
    v13 = (*(*Mgr + 112))(Mgr, &v22, 1);
    if (v13)
    {
      v14 = v13;
      if (!(*(*v12 + 72))(v12, v13, 0, a7 + -15000.0) && !(*(*v12 + 72))(v12, v14, 0, a7) && !(*(*v12 + 72))(v12, v14, 0, a7 + 15000.0))
      {
        BlueFin::GlPeTimeManager::GetTime(a3, a7, 0, &v19);
        v16 = v19;
        v17 = v20;
        v18 = v21;
        BlueFin::GlPeGnssTime::operator-=(&v16, 15.0);
        *a1 = (*(*v14 + 112))(v14, &v16, a6, 0.0);
        *a1 &= (*(*v14 + 112))(v14, &v19, a6 + 80, 0.0);
        v18 = v21;
        LODWORD(v16) = v19;
        HIDWORD(v16) = HIDWORD(v19) + 15;
        v17 = v20;
        *a1 &= (*(*v14 + 112))(v14, &v16, a6 + 160, 0.0);
      }
    }
  }

  return a1;
}

uint64_t BlueFin::GlMeSrdCtrlSm::SetSignalAiding(BlueFin::GlMeSrdCtrlSm *this, const BlueFin::GlMeSignalAidInfo *a2)
{
  BlueFin::GlMeSignalAidInfo::operator=(this + 1600, a2);
  v5 = 28;
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

uint64_t BlueFin::GlMeAidingListener::SetSignalAiding(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8) + 0x2000;
  *(*(result + 8) + 9888) = *(a2 + 14);
  if (*(a2 + 12))
  {
    v3 = **(a2 + 16);
    *(v2 + 1700) = v3;
    *(v2 + 1701) = v3;
  }

  return result;
}

void BlueFin::GlMeSatAidMgr::GetSatAid(uint64_t a1, unsigned __int8 *a2, uint64_t a3, double a4)
{
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a1 + 8832;
  }

  v7 = *(a1 + 8808);
  v8 = 91;
  while (*v7 != *a2)
  {
    v7 += 24;
    if (!--v8)
    {
      return;
    }
  }

  BlueFin::GlSatAid::operator=(v6, v7);
  if (a4 > 0.0)
  {
    LODWORD(v10) = *(a1 + 36);
    v11 = a4 - v10;
    v12 = v11 / 1000.0;
    v13 = (v11 + -0.5);
    if (v11 >= 0.0)
    {
      v13 = 0;
    }

    if (v11 > 0.0)
    {
      v13 = (v11 + 0.5);
    }

    *(v9 + 20) += v13;
    v14 = v12;
    *(v9 + 40) = *(v9 + 40) + (*(v9 + 48) * fabsf(v14));
    *(v9 + 48) = v7[12] + (v14 * 3.6111e-11);
    if ((*(v9 + 24) & 0x20) != 0)
    {
      v16 = *(v9 + 52);
      v17 = *(v9 + 44) + (v16 * v14);
      *(v9 + 44) = v17;
      v15 = *(v9 + 32) + v17 * v12 + v12 * (v16 * 0.5) * v12;
    }

    else
    {
      v15 = *(v9 + 32) + *(v9 + 44) * v12;
    }

    *(v9 + 32) = v15;
  }
}

_WORD *BlueFin::GlMeSrdSatTrackMgr::RequestGrids(BlueFin::GlMeSrdSatTrackMgr *this, const BlueFin::GlSvIdArray *a2)
{
  result = (*(**(this + 3) + 712))(*(this + 3));
  if (result)
  {
    BlueFin::GlArray::Clear(this + 8640);
    result = (*(*a2 + 80))(&v8, a2);
    while (v9 < *(v8 + 38))
    {
      v5 = BlueFin::GlArrayIterator::Next(&v8);
      v7 = v5;
      v6 = BlueFin::GlArray::Add((this + 8640), v5);
      result = (*(*a2 + 16))(a2, &v7);
      *v6 = *result;
    }
  }

  return result;
}

double BlueFin::GlPePlatfStatMgr::ResetEpoch(BlueFin::GlPePlatfStatMgr *this)
{
  *(this + 13) += *(this + 9);
  v1 = *(this + 7);
  if (v1 > *(this + 11))
  {
    *(this + 11) = v1;
  }

  *(this + 14) += *(this + 10);
  v2 = *(this + 8);
  if (v2 > *(this + 12))
  {
    *(this + 12) = v2;
  }

  result = NAN;
  *(this + 169) = -1;
  *(this + 9) = 0;
  *(this + 7) = 0;
  return result;
}

BOOL BlueFin::GlPeStartupMgr::hasAssistRtoOrLtoOrbit(BlueFin::GlPeStartupMgr *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int **a24)
{
  BlueFin::GlGnssSet::operator|(*this + 120224, *this + 120608, &v50);
  v25 = *a24;
  v26 = **a24;
  if (!v26)
  {
    v33 = *(a24 + 8);
    if (v33 < 2)
    {
      goto LABEL_25;
    }

    v34 = v33 - 1;
    v35 = v25 + 1;
    while (!*v35++)
    {
      if (!--v34)
      {
        goto LABEL_18;
      }
    }
  }

  v27 = a24[15];
  if (!*v27)
  {
    v37 = *(a24 + 128);
    if (v37 < 2)
    {
      goto LABEL_18;
    }

    v38 = v37 - 1;
    v39 = v27 + 1;
    while (!*v39++)
    {
      if (!--v38)
      {
        goto LABEL_18;
      }
    }
  }

  v28 = a24[12];
  if (*v28)
  {
    return 1;
  }

  v29 = *(a24 + 104);
  if (v29 >= 2)
  {
    v30 = v29 - 1;
    v31 = v28 + 1;
    do
    {
      if (*v31++)
      {
        return 1;
      }
    }

    while (--v30);
  }

LABEL_18:
  if (v26)
  {
    goto LABEL_19;
  }

  v43 = *(a24 + 8);
  if (v43 < 2)
  {
LABEL_25:
    v41 = *this;
    goto LABEL_26;
  }

  v44 = v43 - 1;
  v45 = v25 + 1;
  while (!*v45++)
  {
    if (!--v44)
    {
      goto LABEL_25;
    }
  }

LABEL_19:
  v41 = *this;
  if (*(*this + 120012) == 1)
  {
    return 1;
  }

LABEL_26:
  v47 = 0;
  v48 = *(v41 + 120584);
  v49 = 7;
  do
  {
    v47 += BlueFin::GlSetBase::Cnt(v48);
    v48 = (v48 + 24);
    --v49;
  }

  while (v49);
  return v47 > 3u;
}

float BlueFin::GlMeMiniKF::NoMsmtAvail(BlueFin::GlMeMiniKF *this, unsigned int a2, double a3, double a4)
{
  v6 = BlueFin::GlMeSkfCb::NoMsmtAvail((this + 112), a2, a3, a4);
  v8 = BlueFin::GlMeSkfCb::NoMsmtAvail((this + 240), a2, v6, v7);
  BlueFin::GlMeSkfCb::NoMsmtAvail((this + 368), a2, v8, v9);
  LODWORD(v10) = *(this + 16);
  v11 = (a2 - v10) / 1000.0;
  *&v10 = *(this + 5);
  v12 = sqrtf(*&v10);
  *&v11 = v11;
  *&v11 = fabsf(*&v11);
  *(this + 5) = (v12 + *&v11 * 0.000000005) * (v12 + *&v11 * 0.000000005);
  *(this + 16) = a2;
  v14 = &unk_2A1F0E1A0;
  v17 = 0x36A7C5AC00000000;
  v18 = 0;
  v19 = 2139095039;
  v20 = 0;
  v21 = 2139095039;
  v22 = 0;
  v23 = 0x36A7C5AC7F7FFFFFLL;
  v15 = 0;
  v16 = a2;
  (*(**(this + 1) + 32))(*(this + 1), &v14);
  return BlueFin::GlMeClkMod::Print(&v14, "MKF");
}

float BlueFin::GlMeClkMod::Print(BlueFin::GlMeClkMod *this, const char *a2)
{
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xAF);
  }

  result = fminf(*(this + 5), 1.0);
  *(this + 8) = fminf(*(this + 8), 604800.0);
  v4 = fminf(*(this + 12), 86400.0);
  *(this + 5) = result;
  *(this + 12) = v4;
  *(this + 16) = fminf(*(this + 16), 604800.0);
  *(this + 17) = result;
  return result;
}

BOOL BlueFin::GlMeUserDynamic::UpdateTimeStamps(BlueFin::GlMeUserDynamic *this, int8x16_t a2, double a3, int8x16_t a4, int8x16_t a5)
{
  v6 = *(this + 6);
  CurrTimeLms = BlueFin::GlMeMsmtMgr::GetCurrTimeLms(v6, a2, a3, a4, a5);
  v12 = *(this + 2);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      *(this + 8) = CurrTimeLms;
      goto LABEL_10;
    }

    if (v12 == 3)
    {
      *(this + 9) = CurrTimeLms;
      goto LABEL_10;
    }

LABEL_23:
    DeviceFaultNotify("glme_userdynamic.cpp", 247, "UpdateTimeStamps", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_userdynamic.cpp", 247, "0");
  }

  if (!v12)
  {
    *(this + 6) = CurrTimeLms;
    goto LABEL_10;
  }

  if (v12 != 1)
  {
    goto LABEL_23;
  }

  *(this + 7) = CurrTimeLms;
LABEL_10:
  *(this + 12) = 0;
  if (BlueFin::GlMeUserDynamic::Recent(v6, *(this + 7), v8, v9, v10, v11) || BlueFin::GlMeUserDynamic::Recent(*(this + 6), *(this + 8), v13, v14, v15, v16) || BlueFin::GlMeUserDynamic::Recent(*(this + 6), *(this + 9), v13, v14, v15, v16))
  {
    *(this + 12) = 1;
  }

  *(this + 15) = 1;
  if (BlueFin::GlMeUserDynamic::VeryRecent(*(this + 6), *(this + 7), v13, v14, v15, v16) || BlueFin::GlMeUserDynamic::VeryRecent(*(this + 6), *(this + 8), v17, v18, v19, v20) || BlueFin::GlMeUserDynamic::VeryRecent(*(this + 6), *(this + 9), v17, v18, v19, v20))
  {
    *(this + 15) = 0;
  }

  else if (*(this + 15))
  {
    *(this + 9) = 0;
    goto LABEL_20;
  }

  v21 = ++*(this + 9);
  if (v21 >= 0xB)
  {
    *(this + 16) = 0;
  }

LABEL_20:
  result = BlueFin::GlMeUserDynamic::Recent(*(this + 6), *(this + 7), v17, v18, v19, v20);
  *(this + 14) = result;
  return result;
}

BOOL BlueFin::GlMeUserDynamic::Recent(BlueFin::GlMeUserDynamic *this, unsigned int a2, int8x16_t a3, double a4, int8x16_t a5, int8x16_t a6)
{
  CurrTimeLms = BlueFin::GlMeMsmtMgr::GetCurrTimeLms(this, a3, a4, a5, a6);
  result = a2 != -1 && CurrTimeLms - a2 < 0x2BF20;
  if (result && CurrTimeLms < a2)
  {
    DeviceFaultNotify("glme_userdynamic.cpp", 294, "Recent", "ulCurrTimeMs >= ulTimeStampLms");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_userdynamic.cpp", 294, "ulCurrTimeMs >= ulTimeStampLms");
  }

  return result;
}

void BlueFin::GlMeSrdAcqMgr::ProcessPending(BlueFin::GlMeSrdAcqMgr *this, uint64_t a2)
{
  if ((*(this + 104) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_acq_mgr.cpp", 103, "ProcessPending", "m_bAllocated");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", 103, "m_bAllocated");
  }

  v2 = a2;
  v4 = *(this + 1);
  *(v4 + 23160) = a2;
  BlueFin::GlMeSrdAcqMgrSm::UpdateSvidControl(v4);
  BlueFin::GlMeSrdSatTrackMgr::UpdateState((*(this + 1) + 14352));
  BlueFin::GlMeSrdAcqMgrSm::UpdateDeferredKill(*(this + 1));
  BlueFin::GlMeSrdAcqMgrSm::UpdateStateMachineTransitions(*(this + 1));
  BlueFin::GlMeSrdAcqMgrSm::UpdatePostSearchMgr(*(this + 1));
  BlueFin::GlMeSrdAcqMgrSm::UpdateSvidToSearchForMgrs(*(this + 1));
  BlueFin::GlMeSrdAcqMgrSm::UpdateAidingMgr(*(this + 1));
  v5 = *(this + 1);
  v6 = *(v5 + 23160);
  v7 = (*(**(v5 + 48) + 80))(*(v5 + 48));
  BlueFin::GlMeSrdSatTrackMgr::ProcessPending((v5 + 14352), v6, v7);
  v8 = 0;
  v9 = *(this + 1);
  do
  {
    (*(**(v9 + 23080 + v8) + 56))(*(v9 + 23080 + v8), *(v9 + 23160));
    v8 += 8;
  }

  while (v8 != 80);
  v10 = *(this + 1);
  v11 = (*(**(v10 + 48) + 80))(*(v10 + 48));
  BlueFin::GlMeSrdSatMgr::ProcessPending(v10 + 3520, v2, v11, *(*(this + 1) + 25248));
  v12 = *(this + 1);
  BlueFin::GlMeSrdSatMgr::GetLowLevelAllocatedSvidList(v14, (v12 + 3520));
  BlueFin::GlMeSrdSatMgr::GetRecentlyKilledWaiting4AckSvIdList(v13, (*(this + 1) + 3520));
  BlueFin::GlMeSrdAidingMgr::CleanupUnusedAidIds(v12 + 240, v14);
  BlueFin::GlMeSrdAcqMgrSm::UpdateResources(*(this + 1));
}

__n128 BlueFin::GlMeSrdSatMgr::SetBitHistogramEnabled(BlueFin::GlMeSrdSatMgr *this, const BlueFin::GlSvIdSet *a2)
{
  if (!BlueFin::GlSetBase::operator==(a2, this + 600))
  {
    *(this + 6296) = 1;
    BlueFin::GlSetBase::operator=(this + 600, a2);
    result = *(a2 + 12);
    v5 = *(a2 + 28);
    *(this + 612) = result;
    *(this + 628) = v5;
  }

  return result;
}

unint64_t BlueFin::GlMeSrdSatMgr::SetL5Enabled(BlueFin::GlMeSrdSatMgr *this, const BlueFin::GlSvIdSet *a2)
{
  result = BlueFin::GlSetBase::operator==(a2, this + 744);
  if ((result & 1) == 0)
  {
    result = BlueFin::GlSetBase::operator=(this + 744, a2);
    v5 = *(a2 + 28);
    *(this + 756) = *(a2 + 12);
    *(this + 772) = v5;
    if (BlueFin::GlUtils::m_ucEnabled)
    {

      return BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
    }
  }

  return result;
}

unint64_t BlueFin::GlMeSrdSatMgr::SetB1CEnabled(BlueFin::GlMeSrdSatMgr *this, const BlueFin::GlSvIdSet *a2)
{
  result = BlueFin::GlSetBase::operator==(a2, this + 792);
  if ((result & 1) == 0)
  {
    result = BlueFin::GlSetBase::operator=(this + 792, a2);
    v5 = *(a2 + 28);
    *(this + 804) = *(a2 + 12);
    *(this + 820) = v5;
    if (BlueFin::GlUtils::m_ucEnabled)
    {

      return BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
    }
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSatMgr::SetGridIqDumpEnabled(BlueFin::GlMeSrdSatMgr *this, const void **a2)
{
  v3 = 0;
  v14 = this + 888;
  do
  {
    v4 = &v14[48 * v3];
    v5 = BlueFin::GlSetBase::GlSetBase(&v23, v25, 8u, &a2[6 * v3]);
    BlueFin::GlSetBase::operator&=(v5, v4);
    v6 = 0;
    v7 = &v23[v24 - 1];
    do
    {
      if (*v7)
      {
        v8 = *v7 - (((*v7 >> 1) & 0x5B6DB6DB) + ((*v7 >> 2) & 0x9249249));
        v6 = ((v8 + (v8 >> 3)) & 0xC71C71C7) + v6 - 63 * (((v8 + (v8 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v7;
    }

    while (v7 >= v23);
    result = (*(**(this + 819) + 696))(*(this + 819));
    if (result > v6)
    {
      BlueFin::GlSetBase::GlSetBase(&__src, v22, 8u, &a2[6 * v3]);
      v16 = &v18;
      LOBYTE(v17) = 8;
      v18 = 0u;
      v19 = 0u;
      BlueFin::GlSetBase::OperatorBinaryXor(&__src, &v16, &v23);
      BlueFin::GlSetBase::operator=(&__src, &v16);
      v22[0] = v18;
      v22[1] = v19;
      LOBYTE(v16) = v21;
      memcpy(&v17, __src, 4 * v21);
      WORD1(v16) = 0;
      BYTE1(v16) = 0;
      HIDWORD(v16) = v17;
      BlueFin::GlSetIterator::operator++(&v16);
      if (BYTE1(v16) != v16)
      {
        v10 = v23;
        do
        {
          v11 = 0;
          v12 = &v10[v24 - 1];
          do
          {
            if (*v12)
            {
              v13 = *v12 - (((*v12 >> 1) & 0x5B6DB6DB) + ((*v12 >> 2) & 0x9249249));
              v11 = ((v13 + (v13 >> 3)) & 0xC71C71C7) + v11 - 63 * (((v13 + (v13 >> 3)) & 0xC71C71C7) / 0x3F);
            }

            --v12;
          }

          while (v12 >= v10);
          if ((*(**(this + 819) + 696))(*(this + 819)) <= v11)
          {
            break;
          }

          v10 = v23;
          *(v23 + ((WORD1(v16) >> 3) & 0x1C)) |= 1 << SBYTE2(v16);
          BlueFin::GlSetIterator::operator++(&v16);
        }

        while (BYTE1(v16) != v16);
      }

      result = BlueFin::GlSetBase::operator==(&v23, v4);
      if ((result & 1) == 0)
      {
        *(this + 6296) = 1;
        result = BlueFin::GlSetBase::operator=(v4, &v23);
        *(v4 + 12) = v25[0];
        *(v4 + 28) = v25[1];
      }
    }

    ++v3;
  }

  while (v3 != 4);
  return result;
}

unint64_t BlueFin::GlMeSrdSatMgr::SetL1CEnabled(BlueFin::GlMeSrdSatMgr *this, const BlueFin::GlSvIdSet *a2)
{
  result = BlueFin::GlSetBase::operator==(a2, this + 840);
  if ((result & 1) == 0)
  {
    result = BlueFin::GlSetBase::operator=(this + 840, a2);
    v5 = *(a2 + 28);
    *(this + 852) = *(a2 + 12);
    *(this + 868) = v5;
    if (BlueFin::GlUtils::m_ucEnabled)
    {

      return BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
    }
  }

  return result;
}

unsigned __int8 *BlueFin::GlMeSrdAcqMgrSm::UpdateDeferredKill(BlueFin::GlMeSrdAcqMgrSm *this)
{
  v18 = v20;
  v2 = this + 23160;
  v19 = 4;
  v20[1] = 0;
  v20[0] = 0;
  v15 = v17;
  v16 = 4;
  v17[1] = 0;
  v17[0] = 0;
  LODWORD(v13) = *(this + 24928);
  v3 = *(this + 3115);
  v4 = 4 * v13;
  memcpy(v14, v3, v4);
  HIDWORD(v13) = v14[0];
  BlueFin::GlSetIterator::operator++(&v13);
  if (BYTE1(v13) != v13)
  {
    do
    {
      v5 = BYTE2(v13);
      if (BlueFin::GlMeSrdSatTrackMgr::HasSat((this + 14352), BYTE2(v13)))
      {
        *(v18 + ((v5 >> 3) & 0x1C)) |= 1 << v5;
      }

      else
      {
        v6 = 1 << (v5 & 0x1F);
        if ((v6 & *(*(this + 1740) + 4 * (v5 >> 5))) != 0)
        {
          *(v15 + (v5 >> 5)) |= 1 << (v5 & 0x1F);
        }

        else
        {
          v7 = 0;
          while (1)
          {
            v8 = *(this + v7 + 23080);
            if ((v6 & *(v8[16] + 4 * (v5 >> 5))) != 0)
            {
              break;
            }

            v7 += 8;
            if (v7 == 80)
            {
              goto LABEL_11;
            }
          }

          (*(*v8 + 24))(v8, v5);
          BlueFin::GlMeSrdSatMgr::KillSat((this + 3520), v5);
        }
      }

LABEL_11:
      BlueFin::GlSetIterator::operator++(&v13);
    }

    while (BYTE1(v13) != v13);
    v3 = *(this + 3115);
    v4 = 4 * v2[1768];
  }

  bzero(v3, ((v4 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  BlueFin::GlMeSrdAcqMgrSm::KillAndReleaseSatInPostSearch(this, &v15);
  BlueFin::GlMeSrdSatTrackMgr::GetSetSatIdToKill((this + 14352), &v13);
  v10 = v12;
  v11 = 4;
  v12[1] = 0;
  v12[0] = 0;
  BlueFin::GlSetBase::OperatorBinaryOr(&v18, &v10, &v13);
  return BlueFin::GlMeSrdAcqMgrSm::KillAndReleaseSatInTrack(this, &v10);
}

uint64_t BlueFin::GlMeSrdAcqMgrSm::UpdateStateMachineTransitions(BlueFin::GlMeSrdAcqMgrSm *this)
{
  BlueFin::GlMeSrdAcqMgrSm::UpdateParallelReAcqState(this);
  BlueFin::GlMeSrdAcqMgrSm::UpdateClockModelState(this);
  v4 = 70;
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

uint64_t BlueFin::GlMeSrdAcqMgrSm::UpdateParallelReAcqState(BlueFin::GlMeSrdAcqMgrSm *this)
{
  v2 = this + 23160;
  *(this + 25252) = 0;
  result = (*(**(this + 8) + 1008))(*(this + 8));
  if (result && (v2[1837] & 1) == 0 && *v2 >= 0x7531u)
  {
    BlueFin::GlMeSrdSatTrackMgr::GetSetSatCarrIdValidOrAided(&__src, (this + 14352));
    v15 = v14;
    memcpy(v19, __src, 4 * v14);
    v17 = 0;
    v16 = 0;
    v18 = v19[0];
    result = BlueFin::GlSetIterator::operator++(&v15);
    v4 = 0;
    if (v16 != v15)
    {
      v4 = 0;
      do
      {
        v5 = *(this + 5);
        BlueFin::GlSatCarrId::GlSatCarrId(&v12, v17);
        BlueFin::GlMeSrdSatMgr::GetSignalId(&__src, this + 440, &v12);
        v6 = (*(*v5 + 80))(v5, &__src);
        if (v6)
        {
          if ((~*(v6 + 84) & 0x40040) == 0)
          {
            v7 = *(v6 + 40);
            if (v7 > 20.0)
            {
              if (v7 <= 25.0)
              {
                ++v4;
              }

              else if (v7 <= 30.0)
              {
                v4 += 2;
              }

              else
              {
                v4 += 3;
              }
            }
          }
        }

        result = BlueFin::GlSetIterator::operator++(&v15);
      }

      while (v16 != v15);
    }

    v8 = *(v2 + 524);
    if (v8)
    {
      goto LABEL_25;
    }

    result = (*(**(this + 10) + 56))(*(this + 10));
    if (result)
    {
      v8 = *v2;
      *(v2 + 524) = *v2;
      v2[2093] = 0;
    }

    else
    {
      v9 = *(v2 + 525);
      v10 = v4;
      if (v9)
      {
        if (v9 <= v4)
        {
          v10 = v9 + ((v4 - v9) * 0.7);
        }

        else
        {
          v10 = v9 - ((v9 - v4) * 0.2);
        }
      }

      *(v2 + 525) = v10;
      v8 = *(v2 + 524);
    }

    if (v8)
    {
LABEL_25:
      v11 = v2[2093];
      if (v11 <= 4 && *v2 > (dword_298A33A00[v2[2093]] + v8))
      {
        v2[2093] = v11 + 1;
        if ((*(v2 + 525) * 0.6) <= v4)
        {
          if (!v11)
          {
            return result;
          }
        }

        else
        {
          v2[2092] = 1;
          if (v11 != 4)
          {
            return result;
          }
        }

        v2[2093] = 0;
        *(v2 + 524) = 0;
      }
    }
  }

  return result;
}

void BlueFin::GlMeSrdAcqMgrSm::UpdateClockModelState(BlueFin::GlMeSrdAcqMgrSm *this)
{
  v2 = this + 23160;
  v43 = &unk_2A1F0E1A0;
  v44 = 0;
  v45 = 0x36A7C5AC00000000;
  v46 = 0.0;
  v47 = 2139095039;
  v48 = 0.0;
  v49 = 2139095039;
  v50 = 0.0;
  v51 = 0x36A7C5AC7F7FFFFFLL;
  (*(**(this + 5) + 96))(*(this + 5), &v43, *(this + 5790));
  v6 = v44;
  LOWORD(v7) = 5000;
  if ((v44 & 0x10) != 0 && *(&v45 + 1) > 0.0 && *(&v45 + 1) < 0.000005)
  {
    *v3.i32 = (*(&v45 + 1) * 1000000000.0) + 0.5;
    *v5.i32 = *v3.i32 + (truncf(*v3.i32 * 2.3283e-10) * -4295000000.0);
    v8.i64[0] = 0x8000000080000000;
    v8.i64[1] = 0x8000000080000000;
    v5.i32[0] = vbslq_s8(v8, v5, v3).u32[0];
    if (*v3.i32 > 4295000000.0)
    {
      v3.i32[0] = v5.i32[0];
    }

    if (*v3.i32 < -4295000000.0)
    {
      *v4.i32 = -*v3.i32;
      *v3.i32 = -(*v3.i32 - (truncf(*v3.i32 * -2.3283e-10) * -4295000000.0));
      *v3.i32 = -*vbslq_s8(v8, v3, v4).i32;
    }

    if (*v3.i32 < 0.0)
    {
      v7 = --*v3.i32;
    }

    else
    {
      v7 = *v3.i32;
    }
  }

  v9 = v2[2092];
  if (v9 == 1)
  {
    v10 = v7;
    if (v7 <= 121)
    {
      v10 = 121;
    }

    if (v2[2093] - 3 < 0xFFFFFFFE)
    {
      LOWORD(v7) = v10;
    }
  }

  v11 = 0;
  v12 = v7;
  v13 = v7 - 10;
  v14 = -1;
  do
  {
    if (v11 == 4)
    {
      v17 = *(v2 + 448);
      goto LABEL_24;
    }

    v15 = word_298A33A14[v11 + 1];
    ++v14;
    ++v11;
  }

  while (v13 < v15);
  v16 = word_298A33A14[*(v2 + 448)];
  if (v16 + 20 < v12 || (v17 = *(v2 + 448), !*(v2 + 524)) && (v17 = *(v2 + 448), v12 < v16))
  {
    v17 = v14;
  }

LABEL_24:
  v18 = v45;
  if (*(v2 + 448))
  {
    if (vabds_f32(*(v2 + 450), *&v45) > 0.00000002 || v9 != 0)
    {
      BlueFin::GlMeSrdSearchMgrBase::RestartSATs(this + 12048, this + 1522);
      BlueFin::GlMeSrdSearchMgrBase::RestartSATs(this + 12360, this + 1561);
      BlueFin::GlMeSrdSearchMgrBase::RestartSATs(this + 12672, this + 1600);
      v18 = v45;
      v6 = v44;
    }
  }

  *(v2 + 450) = v18;
  if ((v6 & 8) != 0)
  {
    if ((v2[1796] & 8) != 0)
    {
      *v20.i64 = BlueFin::GlMeSrdAcqMgrSm::GetSubEpochTime(1u, *(this + 3121) - v46);
      if (*v20.i64 > 0.0000244)
      {
        *v20.i64 = *v20.i64 * 1023000.0 * 3.0;
        *v22.i64 = *v20.i64 + trunc(*v20.i64 * 2.32830644e-10) * -4294967300.0;
        v23.f64[0] = NAN;
        v23.f64[1] = NAN;
        v24 = vnegq_f64(v23);
        v22.i64[0] = vbslq_s8(v24, v22, v20).u64[0];
        if (*v20.i64 > 4294967300.0)
        {
          v20.i64[0] = v22.i64[0];
        }

        if (*v20.i64 < -4294967300.0)
        {
          *v21.i64 = -*v20.i64;
          *v20.i64 = -(*v20.i64 - trunc(*v20.i64 * -2.32830644e-10) * -4294967300.0);
          *v20.i64 = -*vbslq_s8(v24, v20, v21).i64;
        }

        if (*v20.i64 < 0.0)
        {
          v25 = --*v20.i64;
        }

        else
        {
          LOWORD(v25) = *v20.i64;
        }

        BlueFin::GlMeSrdSearchMgr::GetGpsSatWithinZoomWindow(v42, (this + 12048), v25);
        BlueFin::GlMeSrdSearchMgrBase::RestartSATs(this + 12048, v42);
        BlueFin::GlMeSrdSearchMgr::GetGpsSatWithinZoomWindow(v42, (this + 12360), v25);
        BlueFin::GlMeSrdSearchMgrBase::RestartSATs(this + 12360, v42);
      }
    }

    *(this + 3121) = v46;
    v6 = v44;
    if ((v44 & 0x100) == 0)
    {
LABEL_32:
      if ((v6 & 0x400) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_56;
    }
  }

  else if ((v6 & 0x100) == 0)
  {
    goto LABEL_32;
  }

  if (v2[1797])
  {
    *v26.i64 = BlueFin::GlMeSrdAcqMgrSm::GetSubEpochTime(0x34u, *(this + 3122) - v48);
    if (*v26.i64 > 0.0000244)
    {
      *v26.i64 = *v26.i64 * 511000.0 * 3.0;
      *v28.i64 = *v26.i64 + trunc(*v26.i64 * 2.32830644e-10) * -4294967300.0;
      v29.f64[0] = NAN;
      v29.f64[1] = NAN;
      v30 = vnegq_f64(v29);
      v28.i64[0] = vbslq_s8(v30, v28, v26).u64[0];
      if (*v26.i64 > 4294967300.0)
      {
        v26.i64[0] = v28.i64[0];
      }

      if (*v26.i64 < -4294967300.0)
      {
        *v27.i64 = -*v26.i64;
        *v26.i64 = -(*v26.i64 - trunc(*v26.i64 * -2.32830644e-10) * -4294967300.0);
        *v26.i64 = -*vbslq_s8(v30, v26, v27).i64;
      }

      if (*v26.i64 < 0.0)
      {
        v31 = --*v26.i64;
      }

      else
      {
        LOWORD(v31) = *v26.i64;
      }

      BlueFin::GlMeSrdSearchMgr::GetGlnsSatWithinZoomWindow(v42, (this + 12048), v31);
      BlueFin::GlMeSrdSearchMgrBase::RestartSATs(this + 12048, v42);
      BlueFin::GlMeSrdSearchMgr::GetGlnsSatWithinZoomWindow(v42, (this + 12360), v31);
      BlueFin::GlMeSrdSearchMgrBase::RestartSATs(this + 12360, v42);
    }
  }

  *(this + 3122) = v48;
  if ((v44 & 0x400) != 0)
  {
LABEL_56:
    if ((v2[1797] & 4) != 0)
    {
      *v32.i64 = BlueFin::GlMeSrdAcqMgrSm::GetSubEpochTime(0x8Bu, *(this + 3123) - v50);
      if (*v32.i64 > 0.0000244)
      {
        *v32.i64 = *v32.i64 * 1023000.0 * 3.0;
        *v34.i64 = *v32.i64 + trunc(*v32.i64 * 2.32830644e-10) * -4294967300.0;
        v35.f64[0] = NAN;
        v35.f64[1] = NAN;
        v36 = vnegq_f64(v35);
        v34.i64[0] = vbslq_s8(v36, v34, v32).u64[0];
        if (*v32.i64 > 4294967300.0)
        {
          v32.i64[0] = v34.i64[0];
        }

        if (*v32.i64 < -4294967300.0)
        {
          *v33.i64 = -*v32.i64;
          *v32.i64 = -(*v32.i64 - trunc(*v32.i64 * -2.32830644e-10) * -4294967300.0);
          *v32.i64 = -*vbslq_s8(v36, v32, v33).i64;
        }

        if (*v32.i64 < 0.0)
        {
          v37 = --*v32.i64;
        }

        else
        {
          LOWORD(v37) = *v32.i64;
        }

        BlueFin::GlMeSrdSearchMgr::GetGalSatWithinZoomWindow(v42, (this + 12048), v37);
        BlueFin::GlMeSrdSearchMgrBase::RestartSATs(this + 12048, v42);
        BlueFin::GlMeSrdSearchMgr::GetGalSatWithinZoomWindow(v42, (this + 12360), v37);
        BlueFin::GlMeSrdSearchMgrBase::RestartSATs(this + 12360, v42);
      }
    }

    *(this + 3123) = v50;
  }

LABEL_67:
  if (v17 == *(v2 + 448))
  {
    v38 = v44;
    if (*(v2 + 449) == v44)
    {
      return;
    }
  }

  else
  {
    v38 = v44;
  }

  *(v2 + 449) = v38;
  *(v2 + 448) = v17;
  v41 = 65;
  v39 = *(this + 4);
  v40 = *(this + 1);
  *(this + 4) = v40;
  do
  {
    v42[0] = 0;
    if (BlueFin::patch_dispatch(v40, this, &v41, v42))
    {
      v40 = v42[0];
    }

    else
    {
      v40 = (*(this + 4))(this, &v41);
    }

    *(this + 4) = v40;
  }

  while (v40);
  *(this + 4) = v39;
}

uint64_t BlueFin::GlMeStateProvider::IsFactoryAidingDetected(BlueFin::GlMeStateProvider *this)
{
  v1 = *(this + 1) + 0x2000;
  if (*(*(this + 1) + 9888) - 1 > 3 || *(*(this + 1) + 9890) - 1 >= 4)
  {
    v2 = 0;
    result = 0;
  }

  else
  {
    v2 = 1;
    result = 1;
  }

  *(v1 + 1699) = v2;
  return result;
}

BOOL BlueFin::GlMeSrdAsicConfig::IsConstellationSupported(uint64_t a1, unsigned int a2)
{
  if (!*(a1 + 8))
  {
    v3 = "m_eAsicType != ASIC_TYPE_UNKNOWN";
    DeviceFaultNotify("glmesrd_asic_config.cpp", 4892, "IsConstellationSupported", "m_eAsicType != ASIC_TYPE_UNKNOWN");
    v4 = 4892;
    goto LABEL_5;
  }

  if (a2 >= 7)
  {
    v3 = "0";
    DeviceFaultNotify("glmesrd_asic_config.cpp", 4918, "IsConstellationSupported", "0");
    v4 = 4918;
LABEL_5:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_config.cpp", v4, v3);
  }

  return (*(a1 + 1444) & dword_298A34010[a2]) != 0;
}

BOOL BlueFin::GlMeSrdAcqMgrSm::UpdateAidingMgr(BlueFin::GlMeSrdAcqMgrSm *this)
{
  *(this + 66) = *(this + 5790);
  BlueFin::GlSatCarrIdSet::GetSatIdSetAnyCarrier(&v9, (this + 18352));
  BlueFin::GlMeSrdSatMgr::GetSvidSetFromSatidSet(*(this + 1795), &v9, v4);
  BlueFin::GlSetBase::GlSetBase(&v5, v6, 8u, v4);
  v9 = &v11;
  v10 = 8;
  v11 = 0u;
  v12 = 0u;
  BlueFin::GlSetBase::OperatorBinaryOr(&v5, &v9, this + 1418);
  BlueFin::GlSetBase::operator=(&v5, &v9);
  v6[0] = v11;
  v6[1] = v12;
  BlueFin::GlSetBase::GlSetBase(&v7, v8, 8u, &v5);
  v9 = &v11;
  v10 = 8;
  v11 = 0u;
  v12 = 0u;
  BlueFin::GlSetBase::OperatorBinaryOr(&v7, &v9, this + 1655);
  BlueFin::GlSetBase::operator=(&v7, &v9);
  v8[0] = v11;
  v8[1] = v12;
  BlueFin::GlMeSrdAidingMgr::ForceAidingRefresh(this + 240, &v7);
  v2 = *(this + 6);
  BlueFin::GlMeSrdAidingMgr::SelectAiding2Refresh(this + 30);
  return BlueFin::GlMeSrdAidingMgr::RefreshAiding(this + 240, v2);
}

uint64_t BlueFin::GlMeSrdAidingMgr::ForceAidingRefresh(uint64_t a1, const void **a2)
{
  BlueFin::GlSetBase::GlSetBase(&v4, v5, 8u, a2);
  v6 = &v8;
  v7 = 8;
  v8 = 0u;
  v9 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v4, &v6, (a1 + 784));
  BlueFin::GlSetBase::operator=(&v4, &v6);
  v5[0] = v8;
  v5[1] = v9;
  return BlueFin::GlSetBase::Add(a1 + 1184, &v4);
}

double BlueFin::GlMeSrdAidingMgr::SelectRefreshDue2AidingChanges(int **this)
{
  v2 = (*(**this + 64))(*this);
  BlueFin::GlSetBase::GlSetBase(&v8, &v9, 8u, v2);
  v11 = &v13;
  v12 = 8;
  v13 = 0u;
  v14 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v8, &v11, this + 98);
  BlueFin::GlSetBase::operator=(&v8, &v11);
  v9 = v13;
  v10 = v14;
  BlueFin::GlSvIdSet::operator~(this + 140, v5);
  BlueFin::GlSetBase::GlSetBase(&v6, v7, 8u, v5);
  v11 = &v13;
  v12 = 8;
  v13 = 0u;
  v14 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v6, &v11, &v8);
  BlueFin::GlSetBase::operator=(&v6, &v11);
  v7[0] = v13;
  v7[1] = v14;
  BlueFin::GlSetBase::Add((this + 148), &v6);
  BlueFin::GlSetBase::operator=((this + 140), &v8);
  result = *&v9;
  v4 = v10;
  *(this + 1132) = v9;
  *(this + 1148) = v4;
  return result;
}

unsigned __int8 *BlueFin::GlMeSrdAidingMgr::SelectRefreshDue2Time(unsigned __int8 *this)
{
  v3 = *(this + 6);
  if (v3 != *(this + 356))
  {
    v20 = v1;
    v21 = v2;
    v4 = this;
    *(this + 356) = v3;
    v5 = (this + 1184);
    BlueFin::GlSvIdSet::operator~(this + 148, &v10);
    BlueFin::GlSetBase::GlSetBase(&__src, &v14, 8u, v4 + 98);
    v16 = &v18;
    LOBYTE(v17) = 8;
    v18 = 0u;
    v19 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, &v16, &v10);
    BlueFin::GlSetBase::operator=(&__src, &v16);
    v14 = v18;
    v15 = v19;
    LOBYTE(v16) = v13;
    memcpy(&v17, __src, 4 * v13);
    WORD1(v16) = 0;
    BYTE1(v16) = 0;
    HIDWORD(v16) = v17;
    BlueFin::GlSetIterator::operator++(&v16);
    while (BYTE1(v16) != v16)
    {
      if ((*(v4 + 6) - *&v4[4 * BYTE2(v16) + 28]) >> 7 >= 0x7D)
      {
        *(*v5 + (BYTE2(v16) >> 5)) |= 1 << SBYTE2(v16);
      }

      BlueFin::GlSetIterator::operator++(&v16);
    }

    BlueFin::GlSvIdSet::operator~(v4 + 179, v9);
    BlueFin::GlSetBase::GlSetBase(&v10, v11, 8u, v4 + 98);
    v16 = &v18;
    LOBYTE(v17) = 8;
    v18 = 0u;
    v19 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&v10, &v16, v9);
    BlueFin::GlSetBase::operator=(&v10, &v16);
    v11[0] = v18;
    v11[1] = v19;
    BlueFin::GlSvIdSet::operator~(v5, v8);
    BlueFin::GlSetBase::GlSetBase(&__src, &v14, 8u, &v10);
    v16 = &v18;
    LOBYTE(v17) = 8;
    v18 = 0u;
    v19 = 0u;
    BlueFin::GlSetBase::OperatorBinaryAnd(&__src, &v16, v8);
    BlueFin::GlSetBase::operator=(&__src, &v16);
    v14 = v18;
    v15 = v19;
    v6 = BlueFin::GlSetBase::Cnt((v4 + 784));
    LOBYTE(v16) = v13;
    memcpy(&v17, __src, 4 * v13);
    WORD1(v16) = 0;
    BYTE1(v16) = 0;
    HIDWORD(v16) = v17;
    this = BlueFin::GlSetIterator::operator++(&v16);
    if (BYTE1(v16) != v16)
    {
      v7 = v6 / 0xFu + 1;
      do
      {
        if (!v7)
        {
          break;
        }

        this = BlueFin::GlSetBase::Cnt(v5);
        if (this >= 5u)
        {
          break;
        }

        LOBYTE(v7) = v7 - 1;
        *(*v5 + ((WORD1(v16) >> 3) & 0x1C)) |= 1 << SBYTE2(v16);
        this = BlueFin::GlSetIterator::operator++(&v16);
      }

      while (BYTE1(v16) != v16);
    }
  }

  return this;
}

uint64_t BlueFin::GlMeSrdAsicConfig::IsL5PrecedenceSet(BlueFin::GlMeSrdAsicConfig *this)
{
  v2 = (*(*this + 184))(this) & 0xF000FFFF;
  if (v2 == 805306389 || v2 == 805306387)
  {
    v4 = *(this + 2198);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void BlueFin::GlMeSrdAidingMgr::SelectRefreshDue2AidingOverride(BlueFin::GlMeSrdAidingMgr *this)
{
  BlueFin::GlSvIdSet::operator~(this + 160, &v5);
  BlueFin::GlSetBase::operator&=(this + 1184, &v5);
  BlueFin::GlSvIdSet::operator~(this + 160, v2);
  BlueFin::GlSetBase::GlSetBase(&v3, v4, 8u, v2);
  v5 = &v7;
  v6 = 8;
  v7 = 0u;
  v8 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v3, &v5, this + 166);
  BlueFin::GlSetBase::operator=(&v3, &v5);
  v4[0] = v7;
  v4[1] = v8;
  BlueFin::GlSvIdSet::operator~(&v3, &v5);
  BlueFin::GlSetBase::operator&=(this + 1184, &v5);
  BlueFin::GlSvIdSet::operator~(&v3, &v5);
  BlueFin::GlSetBase::operator&=(this + 1328, &v5);
  bzero(*(this + 160), ((4 * *(this + 1288) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
}

void BlueFin::GlMeSrdAidingMgr::SelectRefreshDue2AidIdUnMap(const void **this)
{
  v2 = (*(**this + 64))(*this);
  BlueFin::GlSetBase::GlSetBase(&v5, v6, 8u, v2);
  v7 = &v9;
  v8 = 8;
  v9 = 0u;
  v10 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v5, &v7, this + 98);
  BlueFin::GlSetBase::operator=(&v5, &v7);
  v6[0] = v9;
  v6[1] = v10;
  BlueFin::GlSetBase::GlSetBase(v3, v4, 8u, this + 172);
  v7 = &v9;
  v8 = 8;
  v9 = 0u;
  v10 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v3, &v7, &v5);
  BlueFin::GlSetBase::operator=(v3, &v7);
  v4[0] = v9;
  v4[1] = v10;
  BlueFin::GlSetBase::operator|=((this + 148), v3);
  bzero(this[172], ((4 * *(this + 1384) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
}

uint64_t BlueFin::GlMeSrdAidingMgr::PackSvIdAiding(BlueFin::GlMeSrdAidingMgr *a1, uint64_t a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v39[0] = &unk_2A1F0E1A0;
  v39[1] = 0;
  v39[2] = 0x36A7C5AC00000000;
  v39[3] = 0;
  v40 = 2139095039;
  v41 = 0;
  v42 = 2139095039;
  v43 = 0;
  a4.i32[1] = 916964780;
  v44 = 0x36A7C5AC7F7FFFFFLL;
  v8 = *a1;
  a4.i32[0] = *(a1 + 6);
  *a4.i64 = a4.u64[0] + 0.5;
  *a5.i64 = *a4.i64 - trunc(*a4.i64 * 2.32830644e-10) * 4294967300.0;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v28 = vnegq_f64(v9);
  a5.i64[0] = vbslq_s8(v28, a5, a4).u64[0];
  if (*a4.i64 > 4294967300.0)
  {
    a4.i64[0] = a5.i64[0];
  }

  v10 = (*(*v8 + 96))(v8, v39, *a4.i64);
  v38 = 0;
  v10.i32[0] = *(a1 + 6);
  *v10.i64 = v10.u64[0] + 0.5;
  *v11.i64 = *v10.i64 - trunc(*v10.i64 * 2.32830644e-10) * 4294967300.0;
  *&v12 = vbslq_s8(v28, v11, v10).u64[0];
  if (*v10.i64 > 4294967300.0)
  {
    *v10.i64 = v12;
  }

  v13 = (*(**a1 + 16))(*a1, *v10.i64, &v38);
  v33 = *(a1 + 1192);
  memcpy(v37, *(a1 + 148), 4 * v33);
  v35 = 0;
  v34 = 0;
  v36 = v37[0];
  BlueFin::GlSetIterator::operator++(&v33);
  v14 = 0;
  if (v34 != v33)
  {
    LODWORD(v14) = 0;
    while (1)
    {
      v15 = v35;
      v16 = v35;
      BlueFin::GlSetBase::Remove(a1 + 1184, v35);
      v32 = v13;
      if ((v16 - 52) <= 0xD)
      {
        break;
      }

      v29[0] = v16;
      v30 = 0;
      v31 = 575;
      if ((v16 - 189) >= 0xFFFFFF44)
      {
        goto LABEL_11;
      }

      v17 = 1;
LABEL_14:
      AidIdAndAiding = BlueFin::GlMeSrdAidingMgr::GetAidIdAndAiding(a1, v29, (a2 + v14), a3 + 36 * v14, v39, &v32);
      v29[0] = v16;
      v30 = 1;
      v31 = 575;
      if ((v17 & 1) == 0)
      {
        v20 = BlueFin::GlSvId::s_aucSvId2gnss[v15];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v20 + 7] == 255)
        {
          v30 = -1;
        }

        else
        {
          v31 = BlueFin::GlSignalId::s_ausGnss2signalId[v20] + v15 + BlueFin::GlSvId::s_aucGnss2numSvId[v20] - BlueFin::GlSvId::s_aucGnss2minSvId[v20];
        }
      }

      v21 = v14 + AidIdAndAiding;
      v22 = BlueFin::GlMeSrdAidingMgr::GetAidIdAndAiding(a1, v29, (a2 + v21), a3 + 36 * v21, v39, &v32);
      v29[0] = v16;
      v30 = 2;
      v31 = 575;
      if ((v17 & 1) == 0)
      {
        v23 = BlueFin::GlSvId::s_aucSvId2gnss[v15];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v23 + 14] == 255)
        {
          v30 = -1;
        }

        else
        {
          v31 = BlueFin::GlSignalId::s_ausGnss2signalId[v23] + v15 - BlueFin::GlSvId::s_aucGnss2minSvId[v23] + 2 * BlueFin::GlSvId::s_aucGnss2numSvId[v23];
        }
      }

      v24 = v21 + v22;
      v25 = BlueFin::GlMeSrdAidingMgr::GetAidIdAndAiding(a1, v29, (a2 + v24), a3 + 36 * v24, v39, &v32);
      v29[0] = v16;
      v30 = 3;
      v31 = 575;
      if ((v17 & 1) == 0)
      {
        v26 = BlueFin::GlSvId::s_aucSvId2gnss[v15];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v26 + 21] == 255)
        {
          v30 = -1;
        }

        else
        {
          v31 = BlueFin::GlSignalId::s_ausGnss2signalId[v26] + v15 - BlueFin::GlSvId::s_aucGnss2minSvId[v26] + 3 * BlueFin::GlSvId::s_aucGnss2numSvId[v26];
        }
      }

      v14 = v24 + v25 + BlueFin::GlMeSrdAidingMgr::GetAidIdAndAiding(a1, v29, (a2 + v24 + v25), a3 + 36 * (v24 + v25), v39, &v32);
      BlueFin::GlSetIterator::operator++(&v33);
      if (v34 == v33)
      {
        return v14;
      }
    }

    v32 = v13 & ((v38 & 0x80) >> 7);
    v29[0] = v16;
    v30 = 0;
    v31 = 575;
LABEL_11:
    v18 = BlueFin::GlSvId::s_aucSvId2gnss[v15];
    v17 = 0;
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v18] == 255)
    {
      v30 = -1;
    }

    else
    {
      v31 = BlueFin::GlSignalId::s_ausGnss2signalId[v18] + v15 - BlueFin::GlSvId::s_aucGnss2minSvId[v18];
    }

    goto LABEL_14;
  }

  return v14;
}

uint64_t BlueFin::GlMeSrdAidingMgr::GetAcqWindow(BlueFin::GlMeSrdAidingMgr *this, BlueFin::GlMeAcqWin *a2, const BlueFin::GlSignalId *a3, double a4, BlueFin::GlMeClkMod *a5, BOOL *a6)
{
  if ((*(**(this + 2) + 976))(*(this + 2)))
  {
    v12 = 1;
  }

  else
  {
    v12 = (*(**(this + 2) + 992))(*(this + 2));
  }

  v13 = (*(**this + 40))(*this, a3, v12, a4);
  if (v13)
  {
    v17 = 17;
  }

  else
  {
    v17 = 16;
  }

  v18 = *this;
  *v14.i64 = a4 + 0.5;
  *v16.i64 = a4 + 0.5 + trunc((a4 + 0.5) * 2.32830644e-10) * -4294967300.0;
  v19.f64[0] = NAN;
  v19.f64[1] = NAN;
  v20 = vnegq_f64(v19);
  v16.i64[0] = vbslq_s8(v20, v16, v14).u64[0];
  if (a4 + 0.5 <= 4294967300.0)
  {
    v21 = a4 + 0.5;
  }

  else
  {
    v21 = *v16.i64;
  }

  *v14.i64 = v21;
  if (v21 < -4294967300.0)
  {
    *v14.i64 = -v21;
    *v15.i64 = -(v21 - trunc(v21 * -2.32830644e-10) * -4294967300.0);
    *v14.i64 = -*vbslq_s8(v20, v15, v14).i64;
  }

  if (*v14.i64 < 0.0)
  {
    v22 = --*v14.i64;
  }

  else
  {
    v22 = *v14.i64;
  }

  v46 = v17;
  v23 = (*(*v18 + 24))(v18, a3, a2, &v46, a5, a6, v22, 0.0, 0.0);
  LODWORD(v24) = *(a3 + 1);
  if (v13 & v23)
  {
    LOBYTE(v25) = 1;
    if ((v24 & 0x80000000) != 0)
    {
      return v25 & 1;
    }
  }

  else
  {
    if ((v24 - 1) < 2 || BlueFin::GlSvId::s_aucSvId2gnss[*a3] == 5)
    {
      v26 = (*(**(this + 2) + 856))(*(this + 2));
      v29.n128_u64[0] = (*(**(this + 2) + 872))();
      v30 = *this;
      if (v21 < -4294967300.0)
      {
        *v27.i64 = -v21;
        *v28.i64 = -(v21 - trunc(v21 * -2.32830644e-10) * -4294967300.0);
        v31.f64[0] = NAN;
        v31.f64[1] = NAN;
        v21 = -*vbslq_s8(vnegq_f64(v31), v28, v27).i64;
      }

      if (v21 < 0.0)
      {
        v32 = --v21;
      }

      else
      {
        v32 = v21;
      }

      v45 = 32;
      (*(*v30 + 24))(v30, a3, a2, &v45, a5, a6, v32, v26, v29);
      v33 = (*(**(this + 2) + 976))();
      v34 = 1.5;
      if (v33)
      {
        v34 = 4.0;
      }

      if (*(a3 + 4) >= 0x23Fu)
      {
        v43 = "IsValid()";
        DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
        v44 = 807;
      }

      else
      {
        v35 = BlueFin::GlSvId::s_aucSvId2gnss[*a3];
        v24 = *(a3 + 1);
        v36 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v24 + v35];
        if (v36)
        {
          v37 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v24 - v24 + v35];
          if (v37)
          {
            LOBYTE(v25) = *(a2 + 11) < 0.000000025 && (*(a2 + 16) * (1000 * v36 / v37)) < v34;
            if ((v24 & 0x80000000) != 0)
            {
              return v25 & 1;
            }

            goto LABEL_39;
          }
        }

        v43 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
        DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
        v44 = 815;
      }

      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v44, v43);
    }

    LOBYTE(v25) = 0;
    if ((v24 & 0x80000000) != 0)
    {
      return v25 & 1;
    }
  }

LABEL_39:
  v39 = *a3;
  v40 = v25 ^ 1;
  if (v24)
  {
    if (((v39 - 139) < 0xFFFFFFC1) | v40 & 1)
    {
      v41 = ((v39 - 139) < 0xFFFFFFC1) & v25;
    }

    else
    {
      v41 = (*(a2 + 33) >> 4) & 1;
    }

    if (v24 != 3)
    {
      LOBYTE(v25) = v41;
      return v25 & 1;
    }

    if ((v39 - 1) < 0x20)
    {
      if (!v41)
      {
        LOBYTE(v25) = 0;
        return v25 & 1;
      }

LABEL_53:
      v25 = (*(a2 + 33) >> 5) & 1;
      return v25 & 1;
    }

    LOBYTE(v25) = ((v39 - 76) < 0xFFFFFFF6) & v41;
    if ((v39 - 76) >= 0xFFFFFFF6 && ((v41 ^ 1) & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if (((v39 - 175) < 0xFFFFFFDC) | v40 & 1)
  {
    LOBYTE(v25) = ((v39 - 175) < 0xFFFFFFDC) & v25;
  }

  else
  {
    v25 = (*(a2 + 33) >> 2) & 1;
  }

  return v25 & 1;
}

uint64_t BlueFin::GlMeSrdAidingMgr::GetAidIdAndAiding(BlueFin::GlMeSrdAidingMgr *this, BlueFin::GlSignalId *a2, _BYTE *a3, uint64_t a4, BlueFin::GlMeClkMod *a5, BOOL *a6)
{
  if (*(a2 + 4) > 0x23Eu)
  {
    return 0;
  }

  v45 = v6;
  v46 = v7;
  v12 = *(a2 + 1);
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      if (v12 == 3)
      {
        v16 = *a2;
        v17 = v16 >> 5;
        v18 = *(*(this + 122) + 4 * (v16 >> 5));
        v19 = 1 << (v16 & 0x1F);
        if ((v19 & v18) == 0 && (v19 & *(*(this + 128) + 4 * v17)) == 0)
        {
          return 0;
        }
      }

      goto LABEL_15;
    }

    v13 = *a2;
    v14 = *(this + 116);
LABEL_14:
    if ((*(v14 + ((v13 >> 3) & 0x1C)) >> (v13 & 0x1F)))
    {
      goto LABEL_15;
    }

    return 0;
  }

  if (!v12)
  {
    v13 = *a2;
    v14 = *(this + 104);
    goto LABEL_14;
  }

  if (v12 == 1)
  {
    v13 = *a2;
    v14 = *(this + 110);
    goto LABEL_14;
  }

LABEL_15:
  v27 = &off_2A1F0E398;
  v28 = 0;
  v29 = -1;
  v30 = 575;
  v31 = 0;
  v32 = 0;
  v33 = xmmword_298A339D0;
  v34 = 3.4028e38;
  v35 = 0;
  v36 = 2139095039;
  v37 = 0;
  v38 = 0x7FEFFFFFFFFFFFFFLL;
  v39 = -1;
  v40 = -1;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v20 = *(this + 6);
  v44 = 0;
  AcqWindow = BlueFin::GlMeSrdAidingMgr::GetAcqWindow(this, &v27, a2, v20, a5, a6);
  if ((v32 & 4) != 0 || (LODWORD(v24) = DWORD2(v33), *(&v33 + 2) < 0.000001) || (result = 0, *&v24 = v34, v34 < 0.000001))
  {
    if (*a2 - 52 > 0xD || (BlueFin::GlMeSrdAsicUnitConverter::CalcPpuToEswAidingFrequency(a2, *(&v33 + 1), v21), result = 0, *v23.i64 > -32768.0) && (v24 = 32767.0, *v23.i64 < 32767.0))
    {
      v23.i32[0] = *(this + 6);
      *v23.i64 = v23.u64[0];
      BlueFin::GlMeSrdAidingMgr::FormatAidingForEsw(this, a4, &v27, AcqWindow, a2, v23, v24, v25, v26);
      *a3 = BlueFin::GlMeSrdAidingMgr::GetAidIdFromSignalId(this, a2);
      *(this + *a2 + 7) = *(this + 6);
      return 1;
    }
  }

  return result;
}

uint64_t BlueFin::GlMeWinMgr::IsAidingGoodForTrack(BlueFin::GlMeWinMgr *this, const BlueFin::GlSignalId *a2, double a3, int a4)
{
  if (a3 - *(this + 1300) <= 500.0)
  {
    v8 = 1 << (*(a2 + 4) & 0x1F);
    if ((v8 & *(*(this + 1312) + 4 * (*(a2 + 4) >> 5))) != 0)
    {
      LOBYTE(v9) = (v8 & *(*(this + 1301) + 4 * (*(a2 + 4) >> 5))) != 0;
      return v9 & 1;
    }
  }

  else
  {
    bzero(*(this + 1301), ((4 * *(this + 10416) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(*(this + 1312), ((4 * *(this + 10504) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  }

  v28 = &off_2A1F0E398;
  v29 = 0;
  v30 = -1;
  v31 = 575;
  v32 = 0;
  v33 = 0;
  v34 = xmmword_298A339D0;
  v35 = 2139095039;
  v36 = 0;
  v37 = 3.4028e38;
  v38 = 0;
  v39 = 0x7FEFFFFFFFFFFFFFLL;
  v40 = -1;
  v41 = -1;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v45 = 0;
  v10 = (*(*this + 32))(this, a2, &v28, a3);
  LOBYTE(v9) = 0;
  v11 = *(a2 + 4);
  if (v10)
  {
    if (v11 >= 0x23F)
    {
      v26 = "IsValid()";
      DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
      v27 = 807;
    }

    else
    {
      v12 = *a2;
      v13 = BlueFin::GlSvId::s_aucSvId2gnss[*a2];
      v14 = *(a2 + 1);
      v15 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v14 + v13];
      if (v15)
      {
        v16 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v14 - v14 + v13];
        if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v14 - v14 + v13])
        {
          v17 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v14 - v14 + v13];
          v18 = 2.0;
          if (a4)
          {
            v18 = 10.0;
          }

          if (((1 << v17) & 0x134) == 0)
          {
            v18 = 1.0;
          }

          if (v17 > 8)
          {
            v18 = 1.0;
          }

          LOBYTE(v9) = (*(&v34 + 2) * 1000000000.0) <= 25.0 && (v37 * (1000 * v15 / v16)) <= v18;
          if (v14 >= 1 && ((v12 - 1) < 0x20 || (v12 - 66) <= 9))
          {
            v20 = v14 == 2;
            v21 = (v14 != 2) & v9;
            if (v20)
            {
              v22 = v9 ^ 1;
              LOBYTE(v9) = v21;
              if ((v22 & 1) == 0)
              {
                v9 = (v33 >> 4) & 1;
              }
            }

            else
            {
              LOBYTE(v9) = v21;
            }
          }

          goto LABEL_28;
        }
      }

      v26 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
      v27 = 815;
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v27, v26);
  }

LABEL_28:
  *(this + 1300) = a3;
  v23 = v11 >> 5;
  v24 = 1 << v11;
  *(*(this + 1312) + 4 * v23) |= v24;
  if (v9)
  {
    *(*(this + 1301) + 4 * v23) |= v24;
  }

  return v9 & 1;
}

uint64_t BlueFin::GlMeWinMgr::GetMeAidParams(BlueFin::GlMeWinMgr *this, const BlueFin::GlSignalId *a2, BlueFin::GlMeAcqWin *a3, int8x16_t a4)
{
  BlueFin::GlMeSatAidMgr::GetSatAid(this + 320, a2, 0, *a4.i64);
  v9 = v8;
  v50 = 0;
  v49 = 1.0;
  *v10.i64 = *a4.i64 + trunc(*a4.i64 * 2.32830644e-10) * -4294967300.0;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = vnegq_f64(v11);
  v13 = vbslq_s8(v12, v10, a4);
  if (*a4.i64 <= 4294967300.0)
  {
    v13.i64[0] = a4.i64[0];
  }

  if (*v13.i64 < -4294967300.0)
  {
    *v7.i64 = -*v13.i64;
    *v13.i64 = -(*v13.i64 - trunc(*v13.i64 * -2.32830644e-10) * -4294967300.0);
    *v13.i64 = -*vbslq_s8(v12, v13, v7).i64;
  }

  v51 = 0.0;
  if (*v13.i64 < 0.0)
  {
    v14 = --*v13.i64;
  }

  else
  {
    v14 = *v13.i64;
  }

  CbGoodQuality = BlueFin::GlMeMiniKF::mskfGetCbGoodQuality(this + 9312, v14, &v51, &v50, &v49, 0);
  if (v9)
  {
    if ((~*(v9 + 24) & 0x12) != 0)
    {
      return 0;
    }

    v16 = CbGoodQuality;
    v40 = &unk_2A1F0E1A0;
    v41 = 0;
    v42 = 0x36A7C5AC00000000;
    v43 = 0;
    v45 = 0;
    v44 = 2139095039;
    v46 = 2139095039;
    v47 = 0;
    v48 = 0x36A7C5AC7F7FFFFFLL;
    v17 = (*a4.i64 + -0.5);
    if (*a4.i64 >= 0.0)
    {
      v17 = 0;
    }

    if (*a4.i64 > 0.0)
    {
      v18 = (*a4.i64 + 0.5);
    }

    else
    {
      v18 = v17;
    }

    BlueFin::GlMeClkModMgr::GetClkMod((this + 144), &v40, v18);
    v19 = fminf(*(this + 84), *(this + 88));
    v21 = *(&v42 + 1) < 0.00000005 && v19 < 0.0000001;
    v22 = *a2;
    if (v22 < 0x34)
    {
      v23 = 0;
      v24 = 0;
      goto LABEL_31;
    }

    if (v22 > 0x41 || v21 || ((v16 ^ 1) & 1) != 0)
    {
      v16 &= v22 > 0x41 || v21;
      if (v22 > 0x41)
      {
        v23 = 0;
        goto LABEL_30;
      }
    }

    else
    {
      v16 = v50 >> 7;
    }

    if (((BYTE1(v41) | v21) & 1) == 0)
    {
      return 0;
    }

    v23 = 1;
LABEL_30:
    v24 = v22 - 139 < 0x24;
    if (v23)
    {
LABEL_33:
      if (!v24 || ((v21 | (BYTE1(v41) >> 2)) & 1) != 0)
      {
        SigMeas = BlueFin::GlMeMsmtMgr::GetSigMeas(*(this + 1), a2, *a4.i64, 0);
        BlueFin::GlMeAcqWinComputer::GlMeAcqWinComputer(v39, SigMeas, v9, &v40, this + 16);
        v38 = 24;
        IsDspNavBitQuality = BlueFin::GlMeMsmtMgr::IsDspNavBitQuality(*(this + 1), a2);
        if (*(this + 4928) - 1 > 3 || *(this + 9858) - 1 >= 4)
        {
          v27 = 0;
          v28 = 0;
        }

        else
        {
          v27 = 1;
          v28 = 1;
        }

        *(this + 9859) = v27;
        v9 = BlueFin::GlMeAcqWinComputer::ComputeAcqWin(v39, a3, &v38, IsDspNavBitQuality, 0, v28, a2, *a4.i64, *(this + 15));
        *(a3 + 26) = *(this + 2280);
        if (v23)
        {
          if (((v16 | v21) & 1) == 0)
          {
            v30 = *a2;
            goto LABEL_45;
          }
        }

        else
        {
          v30 = *a2;
          if (!(((v30 - 175) < 0xFFFFFFDC || v21) | v16 & 1))
          {
LABEL_45:
            if (*(a2 + 4) >= 0x23Fu)
            {
              v35 = "IsValid()";
              DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
              v36 = 807;
            }

            else
            {
              v31 = *(a2 + 1);
              v32 = BlueFin::GlSvId::s_aucSvId2gnss[v30];
              v33 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v31 + v32];
              if (v33)
              {
                v34 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v31 - v31 + v32];
                if (v34)
                {
                  GlCustomLog(15, "GlMeWinMgr::GetMeAidParams: Svid %d Band %s Force GLN/BDS/GAL unc %.6f sec(%f chips) to 1ms\n", v30, BlueFin::GlSignalId::s_ausSignalIndex2str[v31], *(a3 + 16), (*(a3 + 16) * (1000 * v33 / v34)));
                  *(a3 + 16) = 981668463;
                  goto LABEL_49;
                }
              }

              v35 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
              DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
              v36 = 815;
            }

            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v36, v35);
          }
        }

LABEL_49:
        *(a3 + 3) = *a4.i64 * 0.001;
        if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          (*(*a3 + 24))(a3, 0, 0);
        }

        return v9;
      }

      return 0;
    }

LABEL_31:
    if (!v24 && ((v21 | (v41 >> 3)) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_33;
  }

  return v9;
}

uint64_t BlueFin::GlMeMsmtMgr::GetSigMeas(BlueFin::GlMeMsmtMgr *this, const BlueFin::GlSignalId *a2, double a3, int a4)
{
  BlueFin::GlSigMeas::init(this + 240, a2);
  MsmtSlotPtr = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(this, a2, 1, 1);
  if (!MsmtSlotPtr)
  {
    return this + 240;
  }

  v12 = MsmtSlotPtr;
  if ((*(MsmtSlotPtr + 84) & 0x10) == 0)
  {
    return this + 240;
  }

  v13 = *(MsmtSlotPtr + 100);
  if (v13 != *a2 || *(MsmtSlotPtr + 104) != *(a2 + 1))
  {
    v148 = "pMeDspMeas->otSignalId == rotSignalId";
    DeviceFaultNotify("glme_meas.cpp", 377, "GetSigMeas", "pMeDspMeas->otSignalId == rotSignalId");
    v149 = "glme_meas.cpp";
    v150 = 377;
    goto LABEL_265;
  }

  *(this + 128) = *(MsmtSlotPtr + 112);
  v14 = *(MsmtSlotPtr + 140);
  if (v14 > 0xF || ((1 << v14) & 0x8300) == 0)
  {
    v16 = *(this + 63) & 0xFFFF7FFF;
  }

  else
  {
    v16 = *(this + 63) | 0x8000;
  }

  *(this + 63) = v16;
  v17 = v16 & 0xFFFFF7FF | (((*(MsmtSlotPtr + 84) >> 15) & 1) << 11);
  *(this + 63) = v17;
  v18 = v17 & 0xFFFEFFFF | (((*(MsmtSlotPtr + 84) >> 12) & 1) << 16);
  *(this + 63) = v18;
  v19 = (*(MsmtSlotPtr + 84) >> 4) & 0x40000 | ((v14 == 14) << 22) | v18 & 0xFFBBFFFF;
  *(this + 63) = v19;
  v157 = 0.0;
  *(this + 260) = *(MsmtSlotPtr + 88);
  *(this + 67) = *(MsmtSlotPtr + 96);
  *(this + 68) = *(MsmtSlotPtr + 132);
  *(this + 71) = *(MsmtSlotPtr + 136);
  if ((*(MsmtSlotPtr + 84) & 0x800080) != 0)
  {
    v20 = v19 | 0x1000;
    *(this + 63) = v20;
    if ((*(MsmtSlotPtr + 84) & 0x80) != 0)
    {
      v20 &= ~0x40u;
      *(this + 63) = v20;
    }

    v21 = -*(MsmtSlotPtr + 8);
    *(this + 85) = *(MsmtSlotPtr + 60);
  }

  else
  {
    v21 = -*(MsmtSlotPtr + 8);
    v20 = v19 & 0xFFFFEFBF | 0x40;
    *(this + 63) = v20;
  }

  v22 = -*(MsmtSlotPtr + 120);
  if (*(MsmtSlotPtr + 87))
  {
    v23 = v20 | 0x100000;
    *(this + 91) = *(MsmtSlotPtr + 128);
  }

  else
  {
    v23 = v20 & 0xFFEFFFFF;
  }

  *(this + 63) = v23;
  *(this + 46) = v22;
  v24 = (v21 + 262144.0) * 0.00000190734863;
  v25 = floor(v24);
  v26 = ceil(v24);
  if (v24 < 0.0)
  {
    v25 = v26;
  }

  v27 = (v24 - v25) * 524288.0;
  if (v27 < 0.0)
  {
    v27 = v27 + 524288.0;
  }

  *(this + 90) = *(MsmtSlotPtr + 44);
  *(this + 41) = v27 + -262144.0;
  v28 = *(MsmtSlotPtr + 84);
  if ((v28 & 0x40000) != 0)
  {
    v23 |= 0x4000u;
    *(this + 63) = v23;
    *(this + 89) = *(MsmtSlotPtr + 40);
    v28 = *(MsmtSlotPtr + 84);
  }

  if ((v28 & 0x100) != 0)
  {
    *(this + 36) = *(MsmtSlotPtr + 48);
    v23 |= 0x100u;
    *(this + 63) = v23;
    v28 = *(MsmtSlotPtr + 84);
  }

  if ((v28 & 4) != 0)
  {
    *(this + 88) = (*(MsmtSlotPtr + 16) * 1000.0);
    v23 |= 0x400u;
    *(this + 63) = v23;
    v28 = *(MsmtSlotPtr + 84);
  }

  if ((v28 & 0x40) != 0)
  {
    *(this + 86) = *(MsmtSlotPtr + 32);
    *(this + 87) = *(MsmtSlotPtr + 56);
    *(this + 47) = *(MsmtSlotPtr + 148);
  }

  if ((v28 & 0x2000) != 0)
  {
    v23 |= 0x80u;
    *(this + 63) = v23;
    v28 = *(MsmtSlotPtr + 84);
  }

  v29 = *(MsmtSlotPtr + 24);
  if ((v28 & 0x20) != 0)
  {
    v30 = v23 | 2;
    v29 = v29 + *(MsmtSlotPtr + 64);
  }

  else
  {
    v30 = v23 & 0xFFFFFFFD;
  }

  *(this + 63) = v30;
  *(this + 84) = *(MsmtSlotPtr + 68);
  if (*(*(this + 24) + 9856) - 1 > 3 || *(*(this + 24) + 9858) - 1 > 3)
  {
    *(*(this + 24) + 9859) = 0;
    v32 = *(MsmtSlotPtr + 164);
    if (v32 == -1)
    {
      v35 = *(MsmtSlotPtr + 84);
      goto LABEL_59;
    }

    v33 = a3 * 0.001;
    v34 = v32 * 0.001;
    v31 = (v33 - v34) <= 600.0;
  }

  else
  {
    v31 = 1;
    *(*(this + 24) + 9859) = 1;
  }

  v35 = *(MsmtSlotPtr + 84);
  v36 = !v31 || a4 == 0;
  if (!v36 && (*(MsmtSlotPtr + 84) & 0x608) == 0x608)
  {
    if (v13 - 52 <= 0xD && (v35 & 0x80000) == 0)
    {
LABEL_48:
      v37 = v30 & 0xFFFFFFF7;
LABEL_57:
      v30 = v37 | 4;
      *(this + 63) = v30;
      goto LABEL_60;
    }

LABEL_56:
    v37 = v30 | 8;
    goto LABEL_57;
  }

  if ((v31 & (a4 ^ 1)) == 1 && (~v35 & 0x408) == 0)
  {
    if (v13 - 52 <= 0xD && (v35 & 0x80000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_56;
  }

LABEL_59:
  if ((v35 & 0x408) == 8)
  {
    v148 = "0";
    DeviceFaultNotify("glme_meas.cpp", 633, "GetSigMeas", "0");
    v149 = "glme_meas.cpp";
    v150 = 633;
    goto LABEL_265;
  }

LABEL_60:
  if ((v30 & 0x100) == 0)
  {
    v39 = 0.0;
LABEL_140:
    v61 = 0xFFFFFFFFLL;
    goto LABEL_141;
  }

  LOBYTE(v155) = 0;
  *(this + 63) = v30 & 0xFFFFFFCF;
  v39 = 0.0;
  if (!v13)
  {
    goto LABEL_140;
  }

  if (v13 < 0x21 || v13 - 66 <= 9)
  {
    v40 = BlueFin::GlMeSlots::GpsFrameMgr(MsmtSlotPtr, a2);
    TowMeas = BlueFin::GlMeFrameMgr::GetTowMeas(v40, &v155);
    if (TowMeas)
    {
      if (*a2 != LOBYTE(v155))
      {
        v148 = "rotSignalId.GetSvId() == stTowMeas.otSvId";
        DeviceFaultNotify("glme_meas.cpp", 705, "GetSigMeas", "rotSignalId.GetSvId() == stTowMeas.otSvId");
        v149 = "glme_meas.cpp";
        v150 = 705;
        goto LABEL_265;
      }

      v43 = TowMeas;
      LODWORD(v42) = *(this + 72);
      v9.i32[0] = HIDWORD(v155);
      v39 = (v42 - v9.u64[0]) * 0.001 + (v156 + 604800);
      v157 = v39;
      *v44.i64 = BlueFin::GlSystemTime::getSubBitTime(&v157, a2, 0);
      *v46.i64 = *v44.i64 + trunc(*v44.i64 * 2.32830644e-10) * -4294967300.0;
      v47.f64[0] = NAN;
      v47.f64[1] = NAN;
      v9 = vnegq_f64(v47);
      v10 = vbslq_s8(v9, v46, v44);
      if (*v44.i64 > 4294967300.0)
      {
        v44.i64[0] = v10.i64[0];
      }

      v48 = *v44.i64;
      if (*v44.i64 < -4294967300.0)
      {
        *v45.i64 = -*v44.i64;
        *v10.i64 = -(*v44.i64 - trunc(*v44.i64 * -2.32830644e-10) * -4294967300.0);
        v9 = vbslq_s8(v9, v10, v45);
        v48 = -*v9.i64;
      }

      if (v48 < 0.0)
      {
        v49 = --v48;
      }

      else
      {
        v49 = v48;
      }

      if (v49)
      {
        if (*v44.i64 < -4294967300.0)
        {
          *v9.i64 = -*v44.i64;
          *v44.i64 = -(*v44.i64 - trunc(*v44.i64 * -2.32830644e-10) * -4294967300.0);
          v50.f64[0] = NAN;
          v50.f64[1] = NAN;
          *v44.i64 = -*vbslq_s8(vnegq_f64(v50), v44, v9).i64;
        }

        if (*v44.i64 < 0.0)
        {
          v51 = --*v44.i64;
        }

        else
        {
          v51 = *v44.i64;
        }

        EpochPerBit = BlueFin::GlSignalId::GetEpochPerBit((v12 + 100));
        if (*(v12 + 108) >= 0x23Fu)
        {
          v148 = "IsValid()";
          DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
          v149 = "glsignalid.h";
          v150 = 679;
          goto LABEL_265;
        }

        if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v12 + 104) - *(v12 + 104) + BlueFin::GlSvId::s_aucSvId2gnss[*(v12 + 100)]])
        {
          v148 = "ucMsPerEpoch != 0";
          DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
          v149 = "glsignalid.h";
          v150 = 686;
          goto LABEL_265;
        }

        *v53.i64 = (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v12 + 104) - *(v12 + 104) + BlueFin::GlSvId::s_aucSvId2gnss[*(v12 + 100)]] * EpochPerBit) * 0.001;
        *v55.i64 = *v53.i64 + trunc(*v53.i64 * 2.32830644e-10) * -4294967300.0;
        v56.f64[0] = NAN;
        v56.f64[1] = NAN;
        v9 = vnegq_f64(v56);
        v10 = vbslq_s8(v9, v55, v53);
        if (*v53.i64 > 4294967300.0)
        {
          v53.i64[0] = v10.i64[0];
        }

        if (*v53.i64 < -4294967300.0)
        {
          *v54.i64 = -*v53.i64;
          *v53.i64 = -(*v53.i64 - trunc(*v53.i64 * -2.32830644e-10) * -4294967300.0);
          *v53.i64 = -*vbslq_s8(v9, v53, v54).i64;
        }

        v57 = *v53.i64 < 0.0 ? --*v53.i64 : *v53.i64;
        if (v51 != v57)
        {
          v148 = "REAL_TO_INT(dSubBitTime)==0 || REAL_TO_INT(dSubBitTime)==REAL_TO_INT(pMeDspMeas->otSignalId.GetMsPerBit()*SEC_PER_MS)";
          DeviceFaultNotify("glme_meas.cpp", 722, "GetSigMeas", "REAL_TO_INT(dSubBitTime)==0 || REAL_TO_INT(dSubBitTime)==REAL_TO_INT(pMeDspMeas->otSignalId.GetMsPerBit()*SEC_PER_MS)");
          v149 = "glme_meas.cpp";
          v150 = 722;
          goto LABEL_265;
        }
      }

      v58 = *(this + 63);
      *(this + 63) = v58 | 0x10;
      if (v43 == 2)
      {
        *(this + 63) = v58 | 0x30;
      }
    }
  }

  v59 = *a2;
  if (v59 < 0x34)
  {
    goto LABEL_140;
  }

  if (v59 > 0x41)
  {
    v61 = 0xFFFFFFFFLL;
    goto LABEL_206;
  }

  v154 = 0;
  v152 = 0;
  v153 = 0;
  v60 = BlueFin::GlMeSlots::GlonassFrameMgr(v12, a2);
  if (BlueFin::GlMeGlonassFrameMgr::GetSystemTime(v60, &v154 + 1, &v154, &v153 + 3, &v153 + 2, &v153 + 1, &v153, &v152) && HIBYTE(v153) == 1)
  {
    v61 = v154;
    v62 = *(this + 72) - HIDWORD(v154);
    if (v153 == 1)
    {
      v39 = fmod((v62 + v154), 30000.0) * 0.001;
      v157 = v39;
      *(this + 63) |= 0x10u;
    }

    if (BYTE2(v153) != 1)
    {
      goto LABEL_204;
    }

    v63 = v61 + v62 + 86400000;
    HIDWORD(v64) = 1062232653;
    v39 = v63 * 0.001;
    v157 = v39;
    if ((v153 & 0x100) == 0)
    {
      v65 = *(this + 24);
      v66 = *(v65 + 352);
      if (v66 < 43200.0)
      {
        *v9.i64 = v63;
        v151 = v9;
        LODWORD(v64) = *(v65 + 356);
        v67 = v29 + v64 * -0.001;
        v68 = *(v65 + 344) + ((*(v12 + 32) + 1.0) * v67);
        v69 = fabsf(v67);
        v70 = *(v12 + 56);
        *v71.i32 = fmodf(v68, 86400.0);
        if (v68 >= 86400.0)
        {
          v72.i32[0] = v71.i32[0];
        }

        else
        {
          *v72.i32 = v68;
        }

        if (*v72.i32 < 0.0)
        {
          *v72.i32 = 86400.0 - fmodf(-*v72.i32, 86400.0);
        }

        *v73.i64 = *v72.i32 * 1000.0;
        *v74.i64 = *v73.i64 + trunc(*v73.i64 * 2.32830644e-10) * -4294967300.0;
        v75.f64[0] = NAN;
        v75.f64[1] = NAN;
        v76 = vnegq_f64(v75);
        v74.i64[0] = vbslq_s8(v76, v74, v73).u64[0];
        if (*v73.i64 > 4294967300.0)
        {
          v73.i64[0] = v74.i64[0];
        }

        if (*v73.i64 < -4294967300.0)
        {
          *v11.i64 = -*v73.i64;
          *v73.i64 = -(*v73.i64 - trunc(*v73.i64 * -2.32830644e-10) * -4294967300.0);
          *v73.i64 = -*vbslq_s8(v76, v73, v11).i64;
        }

        if (*v73.i64 < 0.0)
        {
          v77 = --*v73.i64;
        }

        else
        {
          v77 = *v73.i64;
        }

        *v71.i64 = (v66 + (v69 * v70)) * 1000.0;
        *v72.i64 = *v71.i64 + trunc(*v71.i64 * 2.32830644e-10) * -4294967300.0;
        v78 = vbslq_s8(v76, v72, v71);
        if (*v71.i64 > 4294967300.0)
        {
          v71.i64[0] = v78.i64[0];
        }

        if (*v71.i64 < -4294967300.0)
        {
          *v78.i64 = -*v71.i64;
          *v71.i64 = -(*v71.i64 - trunc(*v71.i64 * -2.32830644e-10) * -4294967300.0);
          v79.f64[0] = NAN;
          v79.f64[1] = NAN;
          v71 = vbslq_s8(vnegq_f64(v79), v71, v78);
          *v71.i64 = -*v71.i64;
        }

        if (*v71.i64 < 0.0)
        {
          v80 = --*v71.i64;
        }

        else
        {
          v80 = *v71.i64;
        }

        v10.i64[1] = v151.i64[1];
        *v71.i64 = *v151.i64 + trunc(*v151.i64 * 2.32830644e-10) * -4294967300.0;
        v81.f64[0] = NAN;
        v81.f64[1] = NAN;
        v82 = vnegq_f64(v81);
        v71.i64[0] = vbslq_s8(v82, v71, v151).u64[0];
        if (v63 <= 0x100000000)
        {
          v71.i64[0] = v151.i64[0];
        }

        *v78.i64 = -*v71.i64;
        *v10.i64 = -(*v71.i64 - trunc(*v71.i64 * -2.32830644e-10) * -4294967300.0);
        v9 = vbslq_s8(v82, v10, v78);
        *v9.i64 = -*v9.i64;
        if (*v71.i64 < -4294967300.0)
        {
          v71.i64[0] = v9.i64[0];
        }

        if (*v71.i64 < 0.0)
        {
          v83 = --*v71.i64;
        }

        else
        {
          v83 = *v71.i64;
        }

        if (v83 > 0x5265BFF)
        {
          v83 -= 86400000;
        }

        v84 = v83 - v77;
        v85 = v77 >= v83;
        v86 = v77 - v83;
        if (!v85)
        {
          v86 = v84;
        }

        if (v86 > 0x2932E00)
        {
          v86 = 86400000 - v86;
        }

        if (v86 >= 10 * v80 + 880)
        {
          goto LABEL_136;
        }
      }

      BYTE1(v153) = 1;
    }

    *(this + 63) |= 0x20u;
LABEL_136:
    if (BlueFin::GlSignalId::s_aucSignalType2halfCycleAmbiguity[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]]])
    {
      v87 = v152;
      if (v152)
      {
        v88 = *(this + 63);
        *(this + 63) = v88 | 0x20000;
        if (v87 == 2)
        {
          *(this + 63) = v88 | 0x220000;
          *(this + 41) = *(this + 41) + BlueFin::GlSignalId::GetRfCarrierWavelengthM(a2) * -0.5;
        }

        else
        {
          *(this + 63) = v88 & 0xFFDDFFFF | 0x20000;
        }
      }
    }

LABEL_204:
    v61 = v61;
    goto LABEL_205;
  }

  v61 = 0xFFFFFFFFLL;
LABEL_205:
  v59 = *a2;
LABEL_206:
  if (v59 < 0x4C)
  {
    goto LABEL_141;
  }

  if (v59 <= 0x8A)
  {
    v111 = *(a2 + 1);
    if (!v111)
    {
      v154 = 0;
      v112 = BlueFin::GlMeSlots::BeidouBitDecoder(v12, a2);
      if (!BlueFin::GlMeBeidouDecodeMgr::GetSecondOfWeek(v112, a2, &v154 + 1, &v154))
      {
        goto LABEL_141;
      }

      LODWORD(v113) = *(this + 72);
      v9.i32[0] = HIDWORD(v154);
      v39 = (v113 - v9.u64[0]) * 0.001 + (v154 + 604800);
      v157 = v39;
      *v114.i64 = BlueFin::GlSystemTime::getSubBitTime(&v157, a2, 0);
      *v116.i64 = *v114.i64 + trunc(*v114.i64 * 2.32830644e-10) * -4294967300.0;
      v117.f64[0] = NAN;
      v117.f64[1] = NAN;
      v9 = vnegq_f64(v117);
      v10 = vbslq_s8(v9, v116, v114);
      if (*v114.i64 > 4294967300.0)
      {
        v114.i64[0] = v10.i64[0];
      }

      v118 = *v114.i64;
      if (*v114.i64 < -4294967300.0)
      {
        *v115.i64 = -*v114.i64;
        *v10.i64 = -(*v114.i64 - trunc(*v114.i64 * -2.32830644e-10) * -4294967300.0);
        v9 = vbslq_s8(v9, v10, v115);
        v118 = -*v9.i64;
      }

      if (v118 < 0.0)
      {
        v119 = --v118;
      }

      else
      {
        v119 = v118;
      }

      if (!v119)
      {
        goto LABEL_231;
      }

      if (*v114.i64 < -4294967300.0)
      {
        *v9.i64 = -*v114.i64;
        *v114.i64 = -(*v114.i64 - trunc(*v114.i64 * -2.32830644e-10) * -4294967300.0);
        v120.f64[0] = NAN;
        v120.f64[1] = NAN;
        *v114.i64 = -*vbslq_s8(vnegq_f64(v120), v114, v9).i64;
      }

      if (*v114.i64 < 0.0)
      {
        v121 = --*v114.i64;
      }

      else
      {
        v121 = *v114.i64;
      }

      *v122.i64 = BlueFin::GlSignalId::GetMsPerBit((v12 + 100)) * 0.001;
      *v124.i64 = *v122.i64 + trunc(*v122.i64 * 2.32830644e-10) * -4294967300.0;
      v125.f64[0] = NAN;
      v125.f64[1] = NAN;
      v9 = vnegq_f64(v125);
      v10 = vbslq_s8(v9, v124, v122);
      if (*v122.i64 > 4294967300.0)
      {
        v122.i64[0] = v10.i64[0];
      }

      if (*v122.i64 < -4294967300.0)
      {
        *v123.i64 = -*v122.i64;
        *v122.i64 = -(*v122.i64 - trunc(*v122.i64 * -2.32830644e-10) * -4294967300.0);
        *v122.i64 = -*vbslq_s8(v9, v122, v123).i64;
      }

      v126 = *v122.i64 < 0.0 ? --*v122.i64 : *v122.i64;
      if (v121 == v126)
      {
LABEL_231:
        v127 = *(this + 63) | 0x30;
LABEL_263:
        *(this + 63) = v127;
        goto LABEL_141;
      }

      v148 = "REAL_TO_INT(dSubBitTime)==0 || REAL_TO_INT(dSubBitTime)==REAL_TO_INT(pMeDspMeas->otSignalId.GetMsPerBit()*SEC_PER_MS)";
      DeviceFaultNotify("glme_meas.cpp", 862, "GetSigMeas", "REAL_TO_INT(dSubBitTime)==0 || REAL_TO_INT(dSubBitTime)==REAL_TO_INT(pMeDspMeas->otSignalId.GetMsPerBit()*SEC_PER_MS)");
      v149 = "glme_meas.cpp";
      v150 = 862;
LABEL_265:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v149, v150, v148);
    }

LABEL_234:
    if (BlueFin::GlSignalId::s_aucSignalType2halfCycleAmbiguity[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v111 - v111 + BlueFin::GlSvId::s_aucSvId2gnss[v59]]])
    {
      goto LABEL_141;
    }

    v128 = *(this + 63);
    *(this + 63) = v128 & 0xFFDDFFFF | 0x20000;
    if ((v128 & 2) != 0)
    {
      v127 = v128 & 0xFFDDFFEF | 0x20010;
    }

    else
    {
      v127 = v128 & 0xFFDDFFED | 0x20000;
    }

    goto LABEL_263;
  }

  if (v59 <= 0xAE)
  {
    v111 = *(a2 + 1);
    if (!v111)
    {
      v134 = BlueFin::GlMeSlots::GalileoINavDecoder(v12, a2);
      v135 = *(v134 + 756);
      if (*(v134 + 752) == 1 && (*(v134 + 753) & 1) != 0)
      {
        v136 = (v134 + 764);
        v137 = (v134 + 760);
        v138 = 1;
        v139 = 1;
      }

      else
      {
        v136 = (v134 + 388);
        v137 = (v134 + 384);
        v138 = *(v134 + 377);
        v139 = *(v134 + 376) & v138;
      }

      v142 = *v137;
      v143 = *v136;
      v144 = *(this + 63);
      *(this + 63) = v144 & 0xFFFDFFFF;
      if (v135 == 2)
      {
        *(this + 63) = v144 | 0x220000;
        *(this + 41) = *(this + 41) + BlueFin::GlSignalId::GetRfCarrierWavelengthM(a2) * -0.5;
      }

      else if (v135 == 1)
      {
        *(this + 63) = v144 & 0xFFDDFFFF | 0x20000;
      }

      if (v139)
      {
        if ((v138 & 1) == 0)
        {
          goto LABEL_141;
        }

        v145 = (v142 + *(this + 72) - v143 + 604800000);
        v146 = 48;
      }

      else
      {
        v147 = BlueFin::GlMeSlots::GalileoPilotSecCodeDecoder(v12, a2);
        if (*(v147 + 8) != 1)
        {
          goto LABEL_141;
        }

        v145 = ((*(this + 72) - *(v147 + 4)) % 100);
        v146 = 16;
      }

      v39 = v145 * 0.001;
      v127 = *(this + 63) | v146;
      goto LABEL_263;
    }

    goto LABEL_234;
  }

  if (v59 > 0xBC)
  {
    goto LABEL_141;
  }

  v129 = BlueFin::GlMeSlots::NavICDecoder(v12, a2);
  if ((*(v129 + 368) & 1) != 0 || *(v129 + 744) == 1)
  {
    *(this + 63) |= 0x10u;
  }

  v130 = BlueFin::GlMeSlots::NavICDecoder(v12, a2);
  if (v130[368] == 1 && (v130[369] & 1) != 0)
  {
    v132 = (v130 + 380);
    v133 = v130 + 376;
LABEL_251:
    LODWORD(v131) = *(this + 72);
    v9.i32[0] = *v132;
    *&v140 = v9.u64[0];
    v141 = v131 - *&v140;
    *(this + 63) |= 0x20u;
    LODWORD(v140) = *v133;
    v39 = v140 * 0.001 + v141 * 0.001;
    goto LABEL_141;
  }

  if (v130[744] == 1 && (v130[745] & 1) != 0)
  {
    v132 = (v130 + 756);
    v133 = v130 + 752;
    goto LABEL_251;
  }

LABEL_141:
  v89 = a3 * 0.001 - v29;
  *v9.i64 = v89 * 1000.0;
  *v11.i64 = v89 * 1000.0 + trunc(v89 * 1000.0 * 2.32830644e-10) * -4294967300.0;
  v90.f64[0] = NAN;
  v90.f64[1] = NAN;
  v91 = vnegq_f64(v90);
  v11.i64[0] = vbslq_s8(v91, v11, v9).u64[0];
  if (v89 * 1000.0 > 4294967300.0)
  {
    v9.i64[0] = v11.i64[0];
  }

  if (*v9.i64 < -4294967300.0)
  {
    *v10.i64 = -*v9.i64;
    *v9.i64 = -(*v9.i64 - trunc(*v9.i64 * -2.32830644e-10) * -4294967300.0);
    *v9.i64 = -*vbslq_s8(v91, v9, v10).i64;
  }

  v92 = *v9.i64;
  if (*v9.i64 < 0.0)
  {
    v92 = --*v9.i64;
  }

  if (v92 >= 0)
  {
    v93 = v92;
  }

  else
  {
    v93 = -v92;
  }

  v94 = *(this + 88);
  if (v93 >= 0x7D0)
  {
    v94 += v92;
    *(this + 88) = v94;
  }

  if (v94 < 0)
  {
    v94 = -v94;
  }

  if (v94 >= 0x1F4)
  {
    *(this + 63) |= 0x400u;
  }

  if ((*(v12 + 84) & 0x40) == 0)
  {
    BlueFin::GlSigMeas::init(this + 240, a2);
    goto LABEL_198;
  }

  v95 = 5.99999994e-10;
  if (!*(*(this + 24) + 32))
  {
    v95 = 0.00000000560346142;
  }

  v96 = v89;
  v97 = fabsf(v96);
  v98 = v95 * v97;
  v99 = *(this + 87) + v98;
  *(this + 87) = v99;
  if (v89 < 2.0 && *(v12 + 140) == 15 && v99 > 0.000000014)
  {
    *(this + 87) = 846234790;
  }

  *(this + 84) = *(this + 84) + (*(v12 + 56) * v97);
  v100 = *(v12 + 32);
  *(this + 41) = *(this + 41) + v100 * 299792458.0 * v89;
  v101 = v89 * (1.0 / (1.0 - v100));
  SubBitAndEpochTime = v39 + v101;
  v155 = v39 + v101;
  v103 = *a2;
  if (v103 - 139 <= 0x23 && (*(this + 63) & 0x30) == 0x10)
  {
    v104 = fmod(SubBitAndEpochTime, 0.1);
    if (v104 < 0.0)
    {
      v104 = v104 + 0.1;
    }

    SubBitAndEpochTime = v104 + 604800.0;
    v155 = SubBitAndEpochTime;
  }

  if (v61 != 0xFFFFFFFF)
  {
    if (v61 < 0xA4CF69)
    {
      if (SubBitAndEpochTime >= 97199.0)
      {
LABEL_174:
        v155 = v101;
        *(this + 63) &= 0xFFFFFFCF;
        SubBitAndEpochTime = v101;
        goto LABEL_175;
      }

      if (v61 < 0xA4C798)
      {
        goto LABEL_175;
      }
    }

    if (SubBitAndEpochTime > 97201.0)
    {
      goto LABEL_175;
    }

    goto LABEL_174;
  }

LABEL_175:
  if (v101 * 1000.0 <= 0.0)
  {
    if (v101 * 1000.0 >= 0.0)
    {
      v106 = 0;
      goto LABEL_181;
    }

    v105 = -0.5;
  }

  else
  {
    v105 = 0.5;
  }

  v106 = (v101 * 1000.0 + v105);
LABEL_181:
  *(this + 36) = vadd_s32(*(this + 288), vdup_n_s32(v106));
  if (SubBitAndEpochTime < 0.0)
  {
    SubBitAndEpochTime = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v155, a2, 1u);
    v103 = *a2;
    if (v103 - 52 >= 0xE)
    {
      v107 = *(this + 63) & 0xFFFFFFCF;
    }

    else
    {
      v107 = *(this + 63);
    }

    *(this + 63) = v107 & 0xFFFFFFDF;
  }

  *(this + 38) = SubBitAndEpochTime;
  if (!v103)
  {
    goto LABEL_198;
  }

  if (v103 >= 0x21)
  {
    if (v103 < 0x42)
    {
      if (v103 < 0x34)
      {
        goto LABEL_198;
      }

      if (SubBitAndEpochTime >= 86400.0)
      {
        SubBitAndEpochTime = SubBitAndEpochTime + -86400.0;
        *(this + 38) = SubBitAndEpochTime;
      }

      if ((*(this + 63) & 0x30) != 0x10)
      {
        goto LABEL_198;
      }

      v108 = fmod(SubBitAndEpochTime, 30.0);
      goto LABEL_192;
    }

    if (v103 > 0xBC)
    {
      goto LABEL_198;
    }
  }

  if (SubBitAndEpochTime < 604800.0)
  {
    goto LABEL_198;
  }

  v108 = SubBitAndEpochTime + -604800.0;
LABEL_192:
  *(this + 38) = v108;
LABEL_198:
  MeasTrackMode = BlueFin::GlMeDSPMeas::GetMeasTrackMode(v12);
  *(this + 69) = MeasTrackMode;
  if (MeasTrackMode)
  {
    *(this + 280) = *(v12 + 144);
  }

  return this + 240;
}

BOOL BlueFin::GlMeAcqWindowProvider::GetMeAcqWindow(uint64_t a1, const BlueFin::GlSignalId *a2, uint64_t a3, int *a4, uint64_t a5, unsigned __int8 *a6, int8x16_t a7, double a8, int8x16_t a9, int8x16_t a10)
{
  v10 = *(a1 + 8);
  v12 = *a4;
  return BlueFin::GlMeWinMgr::GetMeAcqWindow(v10 + 32, a2, a3, &v12, a5, a6, a7, a8, a9, a10);
}

uint64_t BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(BlueFin::GlMeMsmtMgr *this, const BlueFin::GlSignalId *a2, char a3, int a4)
{
  if (BlueFin::GlBigArray::Has(*(this + 112), *(a2 + 4)))
  {
    v8 = *(this + 112);
    if (*(a2 + 4) - *(v8 + 28) >= *(v8 + 30))
    {
LABEL_58:
      v44 = "handle - m_usMinHandle < m_usNumHandles";
      DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
      v45 = "glinc_array.h";
      v46 = 313;
      goto LABEL_62;
    }

    v9 = *(*(v8 + 8) + 2 * (*(a2 + 4) - *(v8 + 28)));
    if (v9 != 0xFFFF)
    {
      if (*(v8 + 32) > v9)
      {
        return *v8 + *(v8 + 24) * v9;
      }

LABEL_59:
      v44 = "slot < m_usNumSlots";
      DeviceFaultNotify("glinc_array.h", 319, "EnsureValidSlot", "slot < m_usNumSlots");
      v45 = "glinc_array.h";
      v46 = 319;
LABEL_62:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v45, v46, v44);
    }

    return 0;
  }

  if (a3)
  {
    return 0;
  }

  v12 = *(this + 112);
  v13 = *(v12 + 32);
  v14 = *(v12 + 34);
  if (*(this + 256) > (v13 + ~v14))
  {
    goto LABEL_10;
  }

  v23 = v14 + 1;
  if (v13 <= v23)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }

LABEL_41:
    v44 = "0";
    DeviceFaultNotify("glme_msmtmgr.cpp", 534, "GetMsmtSlotPtr", "0");
    v45 = "glme_msmtmgr.cpp";
    v46 = 534;
    goto LABEL_62;
  }

  v24 = 0;
  v25 = 0;
  v47 = 0;
  v26 = v23;
  v27 = 575;
  v28 = 4294967300.0;
  v29 = 4294967300.0;
  v30 = 4294967300.0;
  v31 = 575;
  v48 = 575;
  do
  {
    v32 = (*(v12 + 28) + *(*(v12 + 16) + 2 * v26));
    if (!BlueFin::GlBigArray::Has(v12, v32))
    {
      v44 = "m_potArray->Has(handle)";
      DeviceFaultNotify("glinc_array.h", 362, "Next", "m_potArray->Has(handle)");
      v45 = "glinc_array.h";
      v46 = 362;
      goto LABEL_62;
    }

    if (v32 >= 0x23F)
    {
      v44 = "usIndex < NUM_SIGNAL_IDS";
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      v45 = "glsignalid.h";
      v46 = 578;
      goto LABEL_62;
    }

    v33 = *(this + 112);
    v34 = v32 - *(v33 + 28);
    v35 = *(v33 + 30);
    if ((*(*(this + 101) + 4 * (v32 >> 5)) >> (v32 & 0x1F)))
    {
      if (v34 >= v35)
      {
        goto LABEL_58;
      }

      v36 = *(*(v33 + 8) + 2 * (v32 - *(v33 + 28)));
      if (*(v33 + 32) <= v36)
      {
        goto LABEL_59;
      }

      v37 = *v33 + *(v33 + 24) * v36;
      v38 = *(v37 + 24);
      if (v38 < v28)
      {
        v25 = *(v37 + 100);
        v27 = *(v37 + 108);
        goto LABEL_34;
      }
    }

    else
    {
      if (v34 >= v35)
      {
        goto LABEL_58;
      }

      v39 = *(*(v33 + 8) + 2 * (v32 - *(v33 + 28)));
      if (*(v33 + 32) <= v39)
      {
        goto LABEL_59;
      }

      v40 = *v33 + *(v33 + 24) * v39;
      v41 = *(v40 + 24);
      if (v41 < v30)
      {
        LODWORD(v47) = *(v40 + 100);
        v31 = *(v40 + 108);
        v30 = *(v40 + 24);
      }

      if ((*(v40 + 84) & 0x60) == 0 && v41 < v29)
      {
        HIDWORD(v47) = *(v40 + 100);
        v48 = *(v40 + 108);
        v24 = 1;
        v29 = *(v40 + 24);
      }

      else
      {
        v24 = 1;
      }
    }

    v38 = v28;
LABEL_34:
    ++v26;
    v28 = v38;
  }

  while (v26 < *(v12 + 32));
  v49 = v27;
  v51[0] = v31;
  v50 = v48;
  if (((a4 | v24) & 1) == 0)
  {
    return 0;
  }

  if ((v24 & 1) == 0)
  {
    if (v25)
    {
      v43 = &v49;
      goto LABEL_53;
    }

    goto LABEL_41;
  }

  if (HIDWORD(v47) && v29 - v30 < 1.0)
  {
    v43 = &v50;
    goto LABEL_53;
  }

  if (v47)
  {
    v43 = v51;
LABEL_53:
    BlueFin::GlBigArray::Remove(v33, *v43);
    BlueFin::GlSetBase::Remove(this, *v43);
    BlueFin::GlSetBase::Remove(this + 88, *v43);
    v33 = *(this + 112);
  }

  v12 = v33;
LABEL_10:
  v15 = BlueFin::GlBigArray::Add(v12, *(a2 + 4));
  v10 = v15;
  if (v15)
  {
    v16 = *(this + 24);
    v17 = *(this + 22);
    v18 = *(this + 121);
    v19 = *(this + 1012);
    LOBYTE(v51[0]) = -1;
    v52 = 0;
    v53 = 575;
    *v15 = &unk_2A1F0DBF0;
    *(v15 + 84) = 0;
    *(v15 + 100) = 0;
    *(v15 + 104) = -1;
    *(v15 + 108) = 575;
    BlueFin::GlMeDSPMeas::init(v15, v51);
    *(v10 + 160) = -1;
    *(v10 + 164) = -1;
    *(v10 + 168) = 255;
    *(v10 + 172) = -1;
    *(v10 + 1504) = *a2;
    v20 = *(a2 + 1);
    *(v10 + 1512) = *(a2 + 4);
    *(v10 + 1508) = v20;
    BlueFin::GlMeDSPMeas::init(v10, a2);
    v21 = *a2;
    *(v10 + 160) = v21;
    *(v10 + 164) = -1;
    *(v10 + 168) = 255;
    *(v10 + 172) = -1;
    if (v21)
    {
      if (v21 < 0x21)
      {
        goto LABEL_13;
      }

      if (v21 < 0x42)
      {
        if (v21 >= 0x34)
        {
          *(v10 + 196) = 0u;
          *(v10 + 192) = 0;
          *(v10 + 476) = v21;
          *(v10 + 480) = v17;
          *(v10 + 488) = v16;
          *(v10 + 496) = v18;
          *(v10 + 212) = 0u;
          *(v10 + 228) = 0u;
          *(v10 + 244) = 0u;
          *(v10 + 260) = 0u;
          *(v10 + 276) = 0u;
          *(v10 + 292) = 0u;
          *(v10 + 308) = 0u;
          *(v10 + 324) = 0u;
          *(v10 + 340) = 0u;
          *(v10 + 356) = 0u;
          *(v10 + 372) = 0u;
          *(v10 + 388) = 0u;
          *(v10 + 404) = 0u;
          *(v10 + 420) = 0u;
          *(v10 + 436) = 0u;
          *(v10 + 452) = 0u;
          *(v10 + 468) = 0;
        }
      }

      else if (v21 <= 0x4B)
      {
LABEL_13:
        *(v10 + 576) = v16;
        *(v10 + 584) = this + 912;
        *(v10 + 592) = v18;
        *(v10 + 600) = v21;
        *(v10 + 992) = 0;
        *(v10 + 996) = v19;
        *(v10 + 604) = 0xFFFF;
        *(v10 + 608) = 0xFFFFFFFF0000FFFFLL;
        *(v10 + 888) = 0;
        *(v10 + 616) = 0u;
        *(v10 + 632) = 0u;
        *(v10 + 648) = 0u;
        *(v10 + 664) = 0u;
        *(v10 + 680) = 0u;
        *(v10 + 696) = 0u;
        *(v10 + 712) = 0u;
        *(v10 + 728) = 0u;
        *(v10 + 744) = 0u;
        *(v10 + 760) = 0u;
        *(v10 + 776) = 0u;
        *(v10 + 792) = 0u;
        *(v10 + 808) = 0u;
        *(v10 + 824) = 0u;
        *(v10 + 840) = 0u;
        *(v10 + 856) = 0u;
        *(v10 + 872) = 0u;
        *&v22 = 0xF0F0F0F0F0F0F0F0;
        *(&v22 + 1) = 0xF0F0F0F0F0F0F0F0;
        *(v10 + 960) = v22;
        *(v10 + 976) = v22;
        *(v10 + 928) = v22;
        *(v10 + 944) = v22;
        *(v10 + 896) = v22;
        *(v10 + 912) = v22;
        BlueFin::GlMeFrameMgr::SetState(v10 + 192, 0);
      }

      else if (v21 < 0x8B)
      {
        *(v10 + 192) = 0u;
        *(v10 + 368) = 0u;
        *(v10 + 328) = 0;
        *(v10 + 208) = 0u;
        *(v10 + 224) = 0u;
        *(v10 + 240) = 0u;
        *(v10 + 256) = 0u;
        *(v10 + 272) = 0u;
        *(v10 + 284) = 0u;
        *(v10 + 320) = &unk_2A1F0DB48;
        *(v10 + 332) = 0;
        *(v10 + 344) = 0;
        *(v10 + 336) = &unk_2A1F0DB48;
        *(v10 + 348) = 0;
        *(v10 + 384) = 0u;
        *(v10 + 400) = 0u;
        *(v10 + 416) = 0u;
        *(v10 + 432) = 0u;
        *(v10 + 448) = 0u;
        *(v10 + 464) = 0u;
        *(v10 + 480) = 0u;
        *(v10 + 496) = 0u;
        *(v10 + 512) = 0u;
        *(v10 + 528) = 0u;
        *(v10 + 540) = 0u;
        *(v10 + 359) = 0;
        *(v10 + 352) = 0;
        *(v10 + 576) = 0u;
        *(v10 + 592) = 0u;
        *(v10 + 608) = 0u;
        *(v10 + 624) = 0u;
        *(v10 + 640) = 0u;
        *(v10 + 656) = 0u;
        *(v10 + 672) = 0u;
        *(v10 + 688) = 0u;
        *(v10 + 704) = 0u;
        *(v10 + 720) = 0u;
        *(v10 + 736) = 0u;
        *(v10 + 752) = 0u;
        *(v10 + 768) = 0u;
        *(v10 + 784) = 0u;
        *(v10 + 800) = 0u;
        *(v10 + 816) = 0u;
        *(v10 + 832) = 0u;
        *(v10 + 848) = 0u;
        *(v10 + 864) = 0u;
        *(v10 + 880) = 0u;
        *(v10 + 896) = 0u;
      }

      else if (v21 > 0xAE)
      {
        if (v21 <= 0xBC)
        {
          BlueFin::GlMeNavICDecoder::GlMeNavICDecoder((v10 + 192), v17, v16);
        }
      }

      else
      {
        BlueFin::GlMeGalileoINavDecoder::GlMeGalileoINavDecoder((v10 + 192), v17, v16);
        *(v10 + 1000) = 0;
        *(v10 + 992) = 0;
        *(v10 + 1008) = v16;
        *(v10 + 1016) = 0u;
        *(v10 + 1032) = 0u;
        *(v10 + 1048) = 0u;
        *(v10 + 1064) = 0u;
        *(v10 + 1080) = 0u;
        *(v10 + 1096) = 0u;
        *(v10 + 1112) = 0;
      }
    }
  }

  return v10;
}

uint64_t BlueFin::GlMeMsmtMgr::IsDspNavBitQuality(BlueFin::GlMeMsmtMgr *this, const BlueFin::GlSignalId *a2)
{
  result = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(this, a2, 1, 1);
  if (result)
  {
    v4 = *(result + 84);
    if ((v4 & 0x10) != 0)
    {
      if (*(result + 100) != *a2 || *(result + 104) != *(a2 + 1))
      {
        DeviceFaultNotify("glme_meas.cpp", 80, "IsDspNavBitQuality", "pMeDspMeas->otSignalId == rotSignalId");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_meas.cpp", 80, "pMeDspMeas->otSignalId == rotSignalId");
      }

      return (~v4 & 0x608) == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL BlueFin::GlMeAcqWinComputer::ComputeAcqWin(uint64_t *a1, uint64_t a2, _BYTE *a3, int a4, int a5, int a6, BlueFin::GlSignalId *this, double a8, double a9)
{
  *(a1 + 40) = 0;
  v18 = (a1 + 5);
  *(a1 + 11) = -1;
  *(a1 + 24) = 575;
  a1[7] = 0;
  *(a1 + 16) = 0;
  *(a1 + 68) = xmmword_298A339D0;
  *(a1 + 21) = 2139095039;
  a1[11] = 0;
  *(a1 + 24) = 2139095039;
  *(a1 + 50) = 0;
  a1[13] = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 28) = -1;
  *(a1 + 58) = -1;
  a1[16] = 0;
  a1[17] = 0;
  a1[15] = 0;
  *(a1 + 36) = 0;
  *(a1 + 68) = 0;
  v19 = *a1;
  if (*a1)
  {
    v20 = *(v19 + 112);
    if (v20 <= 29999 && (*(v19 + 12) & 2) != 0)
    {
      *(a1 + 68) = 1;
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    if (v20 <= 599999 && (*(v19 + 12) & 0xC) != 0)
    {
      *(a1 + 68) = v21;
    }
  }

  *(a1 + 160) = 0;
  *(a1 + 41) = -1;
  *(a1 + 84) = 575;
  a1[22] = 0;
  *(a1 + 46) = 0;
  *(a1 + 188) = xmmword_298A339D0;
  *(a1 + 51) = 2139095039;
  *(a1 + 110) = 0;
  a1[28] = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 58) = -1;
  *(a1 + 118) = -1;
  a1[31] = 0;
  a1[32] = 0;
  a1[30] = 0;
  *(a1 + 66) = 0;
  *(a1 + 69) = 0;
  v22 = a1[2];
  v23 = *(v22 + 8);
  if ((v23 & 0x10) != 0)
  {
    *(a1 + 48) = 0.0 - *(v22 + 16);
  }

  a1[26] = 0;
  *(a1 + 54) = 2139095039;
  v24 = a1[1];
  v25 = &loc_298A2E000;
  if (!v24)
  {
    if (v19)
    {
      if (a2 + 8 == v19)
      {
        LOBYTE(v27) = 0;
        v28 = 0.0;
        goto LABEL_83;
      }

      LOBYTE(v27) = 0;
      *(a2 + 8) = *v19;
      *(a2 + 12) = *(v19 + 4);
      v30 = *(v19 + 8);
    }

    else
    {
      LOBYTE(v27) = 0;
      *(a2 + 8) = 0;
      *(a2 + 12) = -1;
      v30 = 575;
    }

    v28 = 0.0;
    goto LABEL_82;
  }

  v26 = *(v24 + 6);
  if ((v26 & 2) == 0)
  {
    LOBYTE(v27) = 0;
    v28 = 0.0;
    v29 = a1[1];
    goto LABEL_71;
  }

  if ((v23 & 2) == 0)
  {
    if ((v23 & 0x20) == 0)
    {
      if ((v23 & 0x400) != 0)
      {
        v32 = *(v22 + 56);
        if (*v24 - 139 > 0x23)
        {
          SecPerEpoch = BlueFin::GlSignalId::GetSecPerEpoch(this);
          v25 = &loc_298A2E000;
          v34 = SecPerEpoch * 16.0;
          v29 = a1[1];
          goto LABEL_46;
        }
      }

      else
      {
        v31 = *v24;
        if ((v31 - 52) <= 0xD)
        {
          v32 = *(v22 + 40);
LABEL_32:
          v35 = *(v22 + 48);
LABEL_42:
          if (v35 >= 1.0)
          {
            v35 = 1.0;
          }

          v34 = v35;
          goto LABEL_45;
        }

        if ((v31 - 139) > 0x23)
        {
          v32 = *(v22 + 24);
          v35 = *(v22 + 32);
          goto LABEL_42;
        }

        v32 = *(v22 + 56);
      }

      v35 = *(v22 + 64);
      goto LABEL_42;
    }

    v32 = *(v22 + 40);
    if (*v24 - 52 > 0xD)
    {
      if (*(this + 4) >= 0x23Fu)
      {
        goto LABEL_222;
      }

      if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(this + 1) - *(this + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*this]])
      {
        goto LABEL_223;
      }

      v34 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(this + 1) - *(this + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*this]] * 0.001 * 10.0;
      goto LABEL_45;
    }

    goto LABEL_32;
  }

  v32 = *(v22 + 24);
  v33 = *(v22 + 32);
  if (v33 >= 1.0)
  {
    v33 = 1.0;
  }

  v34 = v33;
  if ((v23 & 0x20) == 0)
  {
    goto LABEL_45;
  }

  v29 = a1[1];
  if (BlueFin::GlSvId::s_aucSvId2gnss[*v24] != 2)
  {
    goto LABEL_46;
  }

  v32 = *(v22 + 40);
  if ((v23 & 0x100) != 0)
  {
    goto LABEL_32;
  }

  v34 = 0.0005;
LABEL_45:
  v29 = a1[1];
LABEL_46:
  v37 = *(this + 1);
  v28 = v32 + *(v29 + 4) + *&v29[4 * v37 + 56] / 299792458.0;
  *(a1 + 26) = v28;
  if ((*a3 & 8) == 0)
  {
    v28 = v28 + a8 * v25[54];
    *(a1 + 26) = v28;
  }

  v38 = v34;
  if (a6)
  {
    v38 = 0.0004;
  }

  v39 = v38 + *(v29 + 10);
  *(a1 + 54) = v39;
  v40 = *v29;
  if ((v40 - 52) > 0xD)
  {
    if ((v40 - 139) > 0x23)
    {
      if (v39 >= 0.00015152 || (*(a1[2] + 8) & 8) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (v39 >= 0.00015152 || (*(a1[2] + 9) & 4) == 0)
    {
      goto LABEL_60;
    }

LABEL_61:
    v41 = *(a1 + 69) | 1;
    goto LABEL_62;
  }

  if (v39 < 0.00030333 && (*(a1[2] + 9) & 1) != 0)
  {
    goto LABEL_61;
  }

LABEL_60:
  v41 = *(a1 + 69) & 0xFFFFFFFE;
LABEL_62:
  *(a1 + 69) = v41;
  if ((v40 - 33) >= 0x13 && *(v29 + 3) == 4)
  {
    goto LABEL_69;
  }

  if (*(this + 4) >= 0x23Fu)
  {
    goto LABEL_222;
  }

  v42 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v37 - v37 + BlueFin::GlSvId::s_aucSvId2gnss[*this]];
  if (!v42)
  {
    goto LABEL_223;
  }

  if (v42 * v25[54] <= v39 || (*(a1[2] + 8) & 0x422) == 0)
  {
LABEL_69:
    v27 = v41 & 0xFFFFFFFD;
  }

  else
  {
    v27 = v41 | 2;
  }

  *(a1 + 69) = v27;
  v26 = *(v29 + 6);
LABEL_71:
  v43 = v26;
  if ((v26 & 0x10) != 0)
  {
    v44 = *(v29 + 11);
    *(a1 + 48) = v44;
    if (*(v29 + 3) == 6)
    {
      v45 = *(v29 + 12);
      *(a1 + 49) = v45;
      *(a1 + 51) = v45;
      *(a1 + 21) = v45;
    }

    else
    {
      if (a9 == 0.0 || (*a3 & 4) == 0)
      {
        v47 = a1[2];
        v46 = *(v47 + 16);
      }

      else
      {
        v46 = a9;
        v47 = a1[2];
      }

      *(a1 + 48) = v44 - v46;
      v48 = *(v29 + 12);
      *(a1 + 49) = *(v47 + 20) + v48;
      *(a1 + 51) = v48;
      *(a1 + 21) = v48;
      if ((v43 & 0x20) != 0)
      {
        v49 = *(v29 + 13);
        *(a1 + 50) = v49;
        *(a1 + 20) = v49;
      }
    }
  }

  if ((a2 + 8) != this)
  {
    *(a2 + 8) = *this;
    *(a2 + 12) = *(this + 1);
    v30 = *(this + 4);
LABEL_82:
    *(a2 + 16) = v30;
  }

LABEL_83:
  v50 = *(a2 + 8);
  v51 = v50 == 0;
  v52 = *(a2 + 12) == -1;
  v53 = !v51 || !v52;
  if (v51 && v52)
  {
    v54 = 0;
  }

  else
  {
    v54 = *(a2 + 12);
  }

  if (v53)
  {
    v55 = *(a2 + 16);
  }

  else
  {
    v55 = 0;
  }

  if (!v53)
  {
    v50 = 1;
  }

  *(a1 + 40) = v50;
  *(a1 + 11) = v54;
  *(a1 + 24) = v55;
  if ((*a3 & 9) != 0)
  {
    if ((*a3 & 8) == 0 && *(a1 + 49) < 0.000000006)
    {
      *(a1 + 49) = 835594383;
    }

    goto LABEL_95;
  }

  v58 = *a1;
  if (v24)
  {
    if (!v58)
    {
      goto LABEL_151;
    }

    v59 = *(v58 + 108);
    if (v59 >= 0.00000001 && v59 > *(a1 + 49))
    {
      goto LABEL_95;
    }

    v60 = *(v58 + 12);
    if ((v60 & 2) == 0 || (v60 & 0x8000) != 0 && *(v58 + 116) <= 25.0)
    {
      goto LABEL_95;
    }

    v61 = *(a1[3] + 8);
    if (v61 >= 4)
    {
      v121 = "0";
      DeviceFaultNotify("glme_userdynamic.h", 78, "State", "0");
      v122 = "glme_userdynamic.h";
      v123 = 78;
LABEL_224:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v122, v123, v121);
    }

    if (v61 >= 2 && *(v58 + 112) > 5000)
    {
      goto LABEL_95;
    }
  }

  else
  {
    v75 = a1[2];
    if ((*(v75 + 8) & 0x10) != 0)
    {
      if (!v58)
      {
        goto LABEL_151;
      }

      v60 = *(v58 + 12);
      *(a1 + 48) = -*(v75 + 16);
      if ((v60 & 2) == 0)
      {
LABEL_95:
        *(a1 + 9) = *(a1 + 12);
        *(a1 + 16) |= 0x20u;
        goto LABEL_96;
      }
    }

    else
    {
      if (!v58)
      {
        goto LABEL_151;
      }

      v60 = *(v58 + 12);
    }
  }

  if ((v60 & 2) != 0)
  {
    v83 = *(v58 + 108);
    if (v83 <= 0.000005)
    {
      *(a1 + 18) = *(v58 + 104);
      *(a1 + 19) = v83;
      goto LABEL_96;
    }
  }

LABEL_151:
  v84 = a1[2];
  if ((*(v84 + 8) & 0x10) != 0 && *(v84 + 20) <= 0.0000005)
  {
    *(a1 + 18) = -*(v84 + 16);
  }

LABEL_96:
  if (v27)
  {
    if ((*a3 & 9) != 0)
    {
      v56 = 1;
      if ((v27 & 2) == 0)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v56 = (a1[34] & 1) == 0;
      if ((v27 & 2) == 0)
      {
        goto LABEL_98;
      }
    }
  }

  else
  {
    v56 = 0;
    if ((v27 & 2) == 0)
    {
LABEL_98:
      v57 = 0;
      goto LABEL_119;
    }
  }

  v57 = (*a3 & 9) != 0 || (a1[34] & 2) == 0;
  if ((*a3 & 0x30) != 0)
  {
    v62 = a5 & ~a4;
    goto LABEL_120;
  }

LABEL_119:
  v62 = 0;
LABEL_120:
  v125[0] = *(a2 + 8);
  v126 = 0;
  v127 = 575;
  if (v125[0] - 189 < 0xFFFFFF44)
  {
    goto LABEL_123;
  }

  v63 = BlueFin::GlSvId::s_aucSvId2gnss[v125[0]];
  if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v63] != 255)
  {
    v127 = BlueFin::GlSignalId::s_ausGnss2signalId[v63] + v125[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v63];
LABEL_123:
    if (v56)
    {
      goto LABEL_124;
    }

    goto LABEL_131;
  }

  v126 = -1;
  if (v56)
  {
LABEL_124:
    if (v62)
    {
      v64 = a1[8] & 0xFFFFFFE5 | 0x18;
    }

    else
    {
      if (!v57)
      {
        v76 = v25;
        v77 = *(a1 + 16);
        v78 = v77 & 0xFFFFFFE5;
        if ((a1[34] & 2) != 0)
        {
          v85 = v78 | 0x12;
          v86 = v77 | 0x1A;
          if (!a4)
          {
            v86 = v85;
          }

          *(a1 + 16) = v86;
          v124 = v28;
          SubEpochTime = BlueFin::GlSystemTime::getSubEpochTime(&v124, v125, 1u);
          if (*a1)
          {
            v124 = *(*a1 + 64);
            v67 = SubEpochTime + BlueFin::GlSystemTime::getSubBitTime(&v124, v125, 0);
            if (*a1)
            {
              v124 = *(*a1 + 64);
              v88 = BlueFin::GlSystemTime::getSubEpochTime(&v124, v125, 1u);
            }

            else
            {
              v88 = 0.0;
            }
          }

          else
          {
            v88 = 0.0;
            v67 = SubEpochTime + 0.0;
          }

          if (v127 >= 0x23Fu)
          {
            goto LABEL_222;
          }

          v112 = BlueFin::GlSvId::s_aucSvId2gnss[v125[0]];
          v113 = &BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[-v126];
          if (!v113[8 * v126 + v112])
          {
            goto LABEL_223;
          }

          v25 = v76;
          v114 = v113[8 * v126 + v112] * v76[54];
          if (vabdd_f64(SubEpochTime, v88) > v114 * 0.5)
          {
            if (SubEpochTime - v88 >= 0.0)
            {
              v67 = v67 - v114;
            }

            else
            {
              v67 = v67 + v114;
            }
          }
        }

        else
        {
          *(a1 + 16) = v78;
          v124 = v28;
          v67 = BlueFin::GlSystemTime::getSubEpochTime(&v124, v125, 0);
          v25 = v76;
        }

        goto LABEL_129;
      }

      v64 = a1[8] & 0xFFFFFFE5 | 0x10;
    }

    *(a1 + 16) = v64;
    v124 = v28;
    v65 = v25;
    SubBitAndEpochTime = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v124, v125, 0);
    v25 = v65;
    v67 = SubBitAndEpochTime;
LABEL_129:
    *(a1 + 16) |= 0x200u;
    v68 = *(a1 + 54);
    goto LABEL_178;
  }

LABEL_131:
  v69 = *(a1 + 68);
  if (v69)
  {
    if (v62)
    {
      v73 = v25;
      *(a1 + 16) = a1[8] & 0xFFFFFFE5 | 0x18;
      if (*a1)
      {
        v124 = *(*a1 + 64);
        v74 = BlueFin::GlSystemTime::getSubEpochTime(&v124, v125, 1u);
        v28 = *(a1 + 26);
      }

      else
      {
        v74 = 0.0;
      }

      v124 = v28;
      SubBitTime = BlueFin::GlSystemTime::getSubBitTime(&v124, v125, 0);
      *&v124 = a1[26];
      v93 = BlueFin::GlSystemTime::getSubEpochTime(&v124, v125, 1u);
      if (v127 >= 0x23Fu)
      {
        goto LABEL_222;
      }

      v94 = BlueFin::GlSvId::s_aucSvId2gnss[v125[0]];
      v95 = &BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[-v126];
      if (!v95[8 * v126 + v94])
      {
        goto LABEL_223;
      }

      v25 = v73;
      v67 = v74 + SubBitTime;
      v96 = v95[8 * v126 + v94] * v73[54];
      if (vabdd_f64(v74, v93) > v96 * 0.5)
      {
        if (v74 - v93 >= 0.0)
        {
          v67 = v67 - v96;
        }

        else
        {
          v67 = v67 + v96;
        }
      }
    }

    else
    {
      v79 = *(a1 + 16);
      v80 = v79 & 0xFFFFFFE5;
      if ((v69 & 2) != 0)
      {
        v89 = v80 | 0x12;
        if (a4)
        {
          v89 = v79 | 0x1A;
        }

        *(a1 + 16) = v89;
        if (*a1)
        {
          v124 = *(*a1 + 64);
          v90 = v25;
          v91 = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v124, v125, 1u);
          v25 = v90;
          v67 = v91;
        }

        else
        {
          v67 = 0.0;
        }
      }

      else if (v57)
      {
        v81 = v25;
        *(a1 + 16) = v80 | 0x12;
        if (*a1)
        {
          v124 = *(*a1 + 64);
          v82 = BlueFin::GlSystemTime::getSubEpochTime(&v124, v125, 1u);
          v28 = *(a1 + 26);
        }

        else
        {
          v82 = 0.0;
        }

        v124 = v28;
        v115 = BlueFin::GlSystemTime::getSubBitTime(&v124, v125, 0);
        *&v124 = a1[26];
        v116 = BlueFin::GlSystemTime::getSubEpochTime(&v124, v125, 1u);
        if (v127 >= 0x23Fu)
        {
          goto LABEL_222;
        }

        v117 = BlueFin::GlSvId::s_aucSvId2gnss[v125[0]];
        v118 = &BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[-v126];
        if (!v118[8 * v126 + v117])
        {
          goto LABEL_223;
        }

        v25 = v81;
        v67 = v82 + v115;
        if (vabdd_f64(v82, v116) > v118[8 * v126 + v117] * v81[54] * 0.5)
        {
          v119 = v82 - v116;
          v120 = BlueFin::GlSignalId::GetSecPerEpoch(v125);
          if (v119 >= 0.0)
          {
            v67 = v67 - v120;
          }

          else
          {
            v67 = v67 + v120;
          }

          v25 = v81;
        }
      }

      else
      {
        *(a1 + 16) = v80;
        if (*a1)
        {
          v124 = *(*a1 + 64);
          v97 = v25;
          v98 = BlueFin::GlSystemTime::getSubEpochTime(&v124, v125, 1u);
          v25 = v97;
          v67 = v98;
        }

        else
        {
          v67 = 0.0;
        }
      }
    }

    *(a1 + 16) |= 0x200u;
    if (*a1)
    {
      v68 = *(*a1 + 96);
    }

    else
    {
      v68 = 1.0;
    }
  }

  else
  {
    v70 = *(a1 + 16);
    if (v57)
    {
      *(a1 + 16) = v70 & 0xFFFFFFE5 | 0x10;
      v124 = v28;
      v71 = v25;
      v72 = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v124, v18, 0);
      v25 = v71;
      v67 = v72;
      v68 = *(a1 + 54);
    }

    else
    {
      *(a1 + 16) = v70 & 0xFFFFFDE5;
      v67 = 0.0;
      v68 = 3.4028e38;
    }
  }

LABEL_178:
  v99 = v25[54];
  *(a1 + 11) = a8 * v99;
  *(a1 + 24) = v68;
  v125[0] = *(a2 + 8);
  v126 = 0;
  v127 = 575;
  if (v125[0] - 189 >= 0xFFFFFF44)
  {
    v100 = BlueFin::GlSvId::s_aucSvId2gnss[v125[0]];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v100] == 255)
    {
      v126 = -1;
    }

    else
    {
      v127 = BlueFin::GlSignalId::s_ausGnss2signalId[v100] + v125[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v100];
    }
  }

  v124 = v67;
  v101 = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v124, v125, 0);
  if ((a1[8] & 0x10) != 0)
  {
    if (v127 < 0x23Fu)
    {
      v102 = BlueFin::GlSvId::s_aucSvId2gnss[v125[0]];
      v103 = &BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[-v126];
      if (v103[8 * v126 + v102])
      {
        v104 = v103[8 * v126 + v102];
        v105 = v104 * v99 * BlueFin::GlSignalId::GetEpochPerBit(v125);
        if (v101 >= v105 * 0.5)
        {
          v101 = v101 - v105;
        }

        else if (v101 <= -(v105 * 0.5))
        {
          v101 = v101 + v105;
        }

        goto LABEL_189;
      }

LABEL_223:
      v121 = "ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      v122 = "glsignalid.h";
      v123 = 686;
      goto LABEL_224;
    }

LABEL_222:
    v121 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v122 = "glsignalid.h";
    v123 = 679;
    goto LABEL_224;
  }

LABEL_189:
  v106 = *(a1 + 11) - v101 * (1.0 - *(a1 + 18));
  if (v106 < 0.0)
  {
    v106 = v106 + 1.0;
  }

  *(a1 + 11) = v106;
  v107 = *a1;
  if (*a1 && (*(v107 + 13) & 0x40) != 0)
  {
    *(a1 + 17) = *(v107 + 116);
    *(a1 + 16) |= 4u;
  }

  if ((*a3 & 8) != 0)
  {
    *(a1 + 16) |= 0x40u;
    v109 = fmod(*(a1 + 26), v99);
    *(a1 + 11) = fabs(fmod(v109 + v99, v99));
    v108 = *(a1 + 54);
    *(a1 + 24) = v108;
  }

  else
  {
    v108 = *(a1 + 54);
  }

  *(a1 + 101) = v57 && v56;
  if (*(this + 4) >= 0x23Fu)
  {
    goto LABEL_222;
  }

  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(this + 1) - *(this + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*this]])
  {
    goto LABEL_223;
  }

  v110 = a1[1];
  if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(this + 1) - *(this + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*this]] * v99 <= v108)
  {
    if (v110)
    {
LABEL_204:
      *(a1 + 15) = *(v110 + 76);
      *(a1 + 35) = 1082130432;
      *(a1 + 36) = *(a1[2] + 16);
    }
  }

  else if (v110)
  {
    if (*v110 - 52 <= 0xD)
    {
      *(a1 + 101) = 1;
    }

    goto LABEL_204;
  }

  BlueFin::GlMeAcqWin::operator=(a2, (a1 + 4));
  return a1[1] != 0;
}

double BlueFin::GlMeAcqWin::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = *(a2 + 12);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 36) = *(a2 + 36);
    *(a1 + 52) = *(a2 + 52);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 68) = *(a2 + 68);
    *(a1 + 69) = *(a2 + 69);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 81) = *(a2 + 81);
    *(a1 + 82) = *(a2 + 82);
    *(a1 + 84) = *(a2 + 84);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    result = *(a2 + 108);
    *(a1 + 108) = result;
  }

  return result;
}

uint64_t BlueFin::GlMeMsmtMgr::GetGalSecCodePhsInSym(BlueFin::GlMeMsmtMgr *this, const BlueFin::GlSignalId *a2, const BlueFin::GlMeAcqWin *a3, unsigned __int8 *a4)
{
  v14[0] = *a2;
  v15 = 0;
  v16 = 575;
  if (v14[0] - 189 >= 0xFFFFFF44)
  {
    v7 = BlueFin::GlSvId::s_aucSvId2gnss[v14[0]];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v7] == 255)
    {
      v15 = -1;
    }

    else
    {
      v16 = BlueFin::GlSignalId::s_ausGnss2signalId[v7] + v14[0] - BlueFin::GlSvId::s_aucGnss2minSvId[v7];
    }
  }

  result = BlueFin::GlMeMsmtMgr::GetMsmtSlotPtr(this, v14, 1, 1);
  if (result)
  {
    if ((~*(result + 84) & 0x150) != 0)
    {
      return 0;
    }

    v9 = (*(a3 + 7) - *(result + 24)) * 1000.0 * (*(a3 + 10) + 1.0);
    v10 = *(result + 48);
    if (v9 <= 0.0)
    {
      if (v9 >= 0.0)
      {
        v12 = 0;
LABEL_14:
        v13 = BlueFin::GlMeSlots::GalileoPilotSecCodeDecoder(result, a2);
        return BlueFin::GlMeGalileoPilotSecCodeDecoder::GetSecCodePhsInSym(v13, v12 + v10, a4, *(a2 + 1));
      }

      v11 = -0.5;
    }

    else
    {
      v11 = 0.5;
    }

    v12 = (v9 + v11);
    goto LABEL_14;
  }

  return result;
}

unsigned __int8 *BlueFin::GlMeSrdSharedSatSearchMgr::StopSats(uint64_t **a1, const void *a2, unsigned __int8 a3, int a4)
{
  v9 = a3;
  memcpy(v13, a2, 4 * a3);
  v11 = 0;
  v10 = 0;
  v12 = v13[0];
  while (1)
  {
    result = BlueFin::GlSetIterator::operator++(&v9);
    if (v10 == v9)
    {
      break;
    }

    v7 = v11;
    BlueFin::GlMeSrdSatMgr::GetSvid(&v8, a1[2], v11);
    if (a4)
    {
      BlueFin::GlMeSrdSharedSatSearchMgr::MarkSvidAsScanned(a1, v8);
    }

    BlueFin::GlMeSrdSearchMgrBase::StopSat(a1, v7);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdSharedSatSearchMgr::AddSvidToScan(BlueFin::GlMeSrdSharedSatSearchMgr *this, BlueFin::GlSvIdSet *a2)
{
  v4 = *(this + 312);
  result = BlueFin::GlSetBase::Cnt((this + 80));
  v6 = v4 - result;
  v7 = *(this + 1);
  if (*(v7 + 14))
  {
    v8 = v6 < 1;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = *a2;
      if (!**a2)
      {
        v19 = *(a2 + 8);
        if (v19 < 2)
        {
          return result;
        }

        v20 = v19 - 1;
        v21 = v10 + 1;
        while (!*v21++)
        {
          if (!--v20)
          {
            return result;
          }
        }
      }

      v11 = *(*(v7 + 16) + 8 * v9);
      if (((*(v10 + ((v11 >> 3) & 0x1C)) >> (v11 & 0x1F)) & 1) == 0)
      {
        goto LABEL_68;
      }

      v12 = *(this + 2);
      v13 = *(v12 + 56);
      if (!*v13)
      {
        v23 = *(v12 + 64);
        if (v23 < 2)
        {
          return result;
        }

        v24 = v23 - 1;
        v25 = v13 + 1;
        while (!*v25++)
        {
          if (!--v24)
          {
            return result;
          }
        }
      }

      v48 = v11;
      if (((*(**(this + 4) + 472))(*(this + 4), &v48) & 1) == 0)
      {
        goto LABEL_65;
      }

      if (v48 - 1 >= 0x20 && v48 - 66 >= 0xA)
      {
        v16 = *(this + 1);
      }

      else
      {
        v15 = (*(**(this + 4) + 832))(*(this + 4), 10);
        v16 = *(this + 1);
        if (v15)
        {
          v17 = (*(v16 + 16) + 8 * v9);
          if (v17[7])
          {
            v18 = *v17;
            goto LABEL_66;
          }
        }
      }

      v45[0] = 1;
      v27 = *(*(v16 + 16) + 8 * v9 + 4);
      if ((v27 & 0x200) != 0)
      {
        v28 = (*(*(*(this + 3) + 880) + ((v48 >> 3) & 0x1C)) >> (v48 & 0x1F)) & 1;
      }

      else
      {
        LOBYTE(v28) = 0;
      }

      v45[1] = v28;
      if ((v27 & 0x400) != 0)
      {
        v29 = (*(*(*(this + 3) + 928) + ((v48 >> 3) & 0x1C)) >> (v48 & 0x1F)) & 1;
      }

      else
      {
        LOBYTE(v29) = 0;
      }

      v46 = v29;
      if ((*(**(this + 4) + 1200))(*(this + 4)))
      {
        if (v46 == 1)
        {
          v42[0] = 1;
          v43 = 2;
          v44 = 64;
          result = BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(this, v42);
          if (result == 250)
          {
            goto LABEL_67;
          }
        }
      }

      v30 = *(*(*(this + 1) + 16) + 8 * v9 + 4);
      if ((v30 & 0x10000) == 0)
      {
        break;
      }

      v33 = *(this + 3);
      v34 = v48;
      v35 = v48 >> 5;
      v36 = 1 << (v48 & 0x1F);
      v37 = v36 & *(*(v33 + 976) + 4 * v35);
      if ((v30 & 0x1000000) != 0)
      {
        v31 = v37 != 0;
        v38 = v36 & *(*(v33 + 1024) + 4 * v35);
        v32 = v38 != 0;
        if (!v37)
        {
          v31 = 0;
          if (!v38)
          {
LABEL_55:
            v32 = 0;
            goto LABEL_56;
          }

          goto LABEL_52;
        }
      }

      else
      {
        v32 = 0;
        if ((v36 & *(*(v33 + 976) + 4 * v35)) == 0)
        {
          v31 = 0;
          goto LABEL_56;
        }

        v31 = 1;
      }

      if ((v30 & 0x100000) != 0 && v48 - 76 <= 0x3E)
      {
        DeviceFaultNotify("glmesrd_shared_sat_search_mgr.cpp", 211, "AddSvidToScan", "!m_rSigAid.signals[i].EnableBdsB1I()");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_shared_sat_search_mgr.cpp", 211, "!m_rSigAid.signals[i].EnableBdsB1I()");
      }

LABEL_53:
      v42[0] = 1;
      v43 = 3;
      v44 = 96;
      result = BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(this, v42);
      if (result != 250)
      {
        goto LABEL_54;
      }

LABEL_67:
      v7 = *(this + 1);
LABEL_68:
      if (++v9 >= *(v7 + 14) || v6 <= 0)
      {
        return result;
      }
    }

    v31 = 0;
    if ((v30 & 0x1000000) == 0)
    {
      v32 = 0;
LABEL_54:
      v34 = v48;
LABEL_56:
      if ((v34 - 76) >= 0x3F)
      {
        v39 = v32;
      }

      else
      {
        v39 = v31;
      }

      v47 = v39;
      if (v39)
      {
        v40 = 3;
      }

      else if ((*(**(this + 4) + 1200))(*(this + 4)))
      {
        v40 = 2;
      }

      else
      {
        v40 = 0;
      }

      v42[0] = *(*(*(this + 1) + 16) + 8 * v9);
      BlueFin::GlMeSrdSearchMgrBase::CreateSatAndStartSat(this, v42, v40, v45);
      --v6;
LABEL_65:
      v18 = *(*(*(this + 1) + 16) + 8 * v9);
LABEL_66:
      result = BlueFin::GlSetBase::Remove(a2, v18);
      goto LABEL_67;
    }

    v34 = v48;
    if (((*(*(*(this + 3) + 1024) + ((v48 >> 3) & 0x1C)) >> (v48 & 0x1F)) & 1) == 0)
    {
      goto LABEL_55;
    }

LABEL_52:
    v32 = 1;
    goto LABEL_53;
  }

  return result;
}

unint64_t BlueFin::GlMeSrdSearchMgr::ProcessPending(BlueFin::GlMeSrdSearchMgr *this)
{
  BlueFin::GlSvIdSet::operator~(this + 32, &__src);
  v2 = BlueFin::GlSetBase::GlSetBase(&v53, &v55, 8u, this + 10);
  *&v45[1] = &v47;
  LOBYTE(v46) = 8;
  v47 = 0u;
  v48 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v2, &v45[1], &__src);
  BlueFin::GlSetBase::operator=(&v53, &v45[1]);
  v55 = v47;
  v56 = v48;
  if (!*v53)
  {
    if (v54 < 2uLL)
    {
      goto LABEL_10;
    }

    v4 = v54 - 1;
    v5 = v53 + 1;
    while (!*v5++)
    {
      if (!--v4)
      {
        goto LABEL_10;
      }
    }
  }

  v45[1] = *(this + 136);
  memcpy(&v46, *(this + 16), 4 * v45[1]);
  *&v45[3] = 0;
  v45[2] = 0;
  *&v45[5] = v46;
  while (1)
  {
    BlueFin::GlSetIterator::operator++(&v45[1]);
    if (v45[2] == v45[1])
    {
      break;
    }

    v3 = v45[3];
    BlueFin::GlMeSrdSatMgr::GetSvid(&__src, *(this + 2), v45[3]);
    if ((*(v53 + ((__src >> 3) & 0x1C)) >> (__src & 0x1F)))
    {
      BlueFin::GlMeSrdSearchMgrBase::StopSat(this, v3);
    }
  }

LABEL_10:
  __src = &v51;
  v50 = 4;
  v51 = 0uLL;
  BlueFin::GlSetBase::OperatorBinaryOr(this + 160, &__src, this + 24);
  v45[1] = v50;
  memcpy(&v46, __src, 4 * v50);
  *&v45[3] = 0;
  v45[2] = 0;
  *&v45[5] = v46;
  while (1)
  {
    BlueFin::GlSetIterator::operator++(&v45[1]);
    if (v45[2] == v45[1])
    {
      break;
    }

    BlueFin::GlMeSrdSearchMgrBase::StopSat(this, v45[3]);
  }

  BlueFin::GlSvIdSet::operator~(this + 10, &__src);
  v7 = BlueFin::GlSetBase::GlSetBase(&v53, &v55, 8u, this + 32);
  *&v45[1] = &v47;
  LOBYTE(v46) = 8;
  v47 = 0u;
  v48 = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(v7, &v45[1], &__src);
  result = BlueFin::GlSetBase::operator=(&v53, &v45[1]);
  v55 = v47;
  v56 = v48;
  if (!*v53)
  {
    if (v54 < 2uLL)
    {
      goto LABEL_83;
    }

    v38 = v54 - 1;
    v39 = v53 + 1;
    while (!*v39++)
    {
      if (!--v38)
      {
        goto LABEL_83;
      }
    }
  }

  v9 = *(this + 1);
  if (*(v9 + 14))
  {
    for (i = 0; i < *(v9 + 14); ++i)
    {
      v11 = *(this + 2);
      v12 = *(v11 + 56);
      if (!*v12)
      {
        v18 = *(v11 + 64);
        if (v18 < 2)
        {
          break;
        }

        v19 = v18 - 1;
        v20 = v12 + 1;
        while (!*v20++)
        {
          if (!--v19)
          {
            goto LABEL_83;
          }
        }
      }

      v45[0] = *(*(v9 + 16) + 8 * i);
      if (((*(**(this + 4) + 472))(*(this + 4), v45) & 1) == 0)
      {
        goto LABEL_76;
      }

      result = (*(**(this + 4) + 1016))(*(this + 4));
      v13 = *(this + 18);
      if (result)
      {
        v14 = v45[0];
        if (v13 != 4)
        {
          v22 = v53;
          goto LABEL_46;
        }

        if (v45[0] - 52 <= 0xD && ((*(v53 + ((v45[0] >> 3) & 0x1C)) >> (v45[0] & 0x1F)) & 1) != 0)
        {
          v41 = &v43;
          v42 = 8;
          v43 = xmmword_298A3240C;
          v44 = unk_298A3241C;
          BlueFin::GlSetBase::GlSetBase(&__src, &v51, 8u, this + 10);
          *&v45[1] = &v47;
          LOBYTE(v46) = 8;
          v47 = 0u;
          v48 = 0u;
          BlueFin::GlSetBase::OperatorBinaryAnd(&__src, &v45[1], &v41);
          result = BlueFin::GlSetBase::operator=(&__src, &v45[1]);
          v15 = 0;
          v51 = v47;
          v52 = v48;
          v16 = __src + 4 * v50 - 4;
          do
          {
            if (*v16)
            {
              v17 = *v16 - (((*v16 >> 1) & 0x5B6DB6DB) + ((*v16 >> 2) & 0x9249249));
              v15 = ((v17 + (v17 >> 3)) & 0xC71C71C7) + v15 - 63 * (((v17 + (v17 >> 3)) & 0xC71C71C7) / 0x3F);
            }

            --v16;
          }

          while (v16 >= __src);
          if (v15 >= 5u)
          {
            result = BlueFin::GlSetBase::Remove(&v53, v45[0]);
          }

          v13 = *(this + 18);
        }

        else
        {
          v13 = 4;
        }
      }

      v14 = v45[0];
      v22 = v53;
      if (v13 == 4 && v45[0] - 76 <= 0x3E && ((v53[v45[0] >> 5] >> (v45[0] & 0x1F)) & 1) != 0)
      {
        v41 = &v43;
        v42 = 8;
        v43 = xmmword_298A3244C;
        v44 = unk_298A3245C;
        BlueFin::GlSetBase::GlSetBase(&__src, &v51, 8u, this + 10);
        *&v45[1] = &v47;
        LOBYTE(v46) = 8;
        v47 = 0u;
        v48 = 0u;
        BlueFin::GlSetBase::OperatorBinaryAnd(&__src, &v45[1], &v41);
        result = BlueFin::GlSetBase::operator=(&__src, &v45[1]);
        v23 = 0;
        v51 = v47;
        v52 = v48;
        v24 = __src + 4 * v50 - 4;
        do
        {
          if (*v24)
          {
            v25 = *v24 - (((*v24 >> 1) & 0x5B6DB6DB) + ((*v24 >> 2) & 0x9249249));
            v23 = ((v25 + (v25 >> 3)) & 0xC71C71C7) + v23 - 63 * (((v25 + (v25 >> 3)) & 0xC71C71C7) / 0x3F);
          }

          --v24;
        }

        while (v24 >= __src);
        if (v23 >= 3u)
        {
          result = BlueFin::GlSetBase::Remove(&v53, v45[0]);
        }

        v14 = v45[0];
        v22 = v53;
      }

LABEL_46:
      v26 = v14 >> 5;
      v27 = v22[v14 >> 5];
      v28 = 1 << (v14 & 0x1F);
      if ((v28 & v27) == 0)
      {
        goto LABEL_77;
      }

      v29 = *(*(*(this + 1) + 16) + 8 * i + 4);
      if ((v29 & 0x200) != 0)
      {
        v30 = (v28 & *(*(*(this + 3) + 880) + 4 * v26)) != 0;
        if ((v29 & 0x400) != 0)
        {
LABEL_49:
          v31 = (v28 & *(*(*(this + 3) + 928) + 4 * v26)) != 0;
          goto LABEL_52;
        }
      }

      else
      {
        v30 = 0;
        if ((v29 & 0x400) != 0)
        {
          goto LABEL_49;
        }
      }

      v31 = 0;
LABEL_52:
      if ((*(**(this + 4) + 1200))(*(this + 4)))
      {
        v32 = !v31;
      }

      else
      {
        v32 = 1;
      }

      if (!v32)
      {
        v45[1] = 1;
        *&v45[5] = 2;
        LOWORD(v46) = 64;
        result = BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(this, &v45[1]);
        if (result == 250)
        {
          goto LABEL_77;
        }
      }

      v33 = *(*(*(this + 1) + 16) + 8 * i + 4);
      if ((v33 & 0x10000) != 0)
      {
        v34 = (*(*(*(this + 3) + 976) + ((v45[0] >> 3) & 0x1C)) >> (v45[0] & 0x1F)) & 1;
        if ((v33 & 0x1000000) != 0)
        {
LABEL_59:
          v35 = (*(*(*(this + 3) + 1024) + 4 * (v45[0] >> 5)) >> (v45[0] & 0x1F)) & 1;
          goto LABEL_62;
        }
      }

      else
      {
        LODWORD(v34) = 0;
        if ((v33 & 0x1000000) != 0)
        {
          goto LABEL_59;
        }
      }

      LODWORD(v35) = 0;
LABEL_62:
      v36 = v35;
      if (v34)
      {
        v36 = 1;
        if ((v33 & 0x100000) != 0 && (v45[0] - 76) <= 0x3Eu)
        {
          DeviceFaultNotify("glmesrd_search_mgr.cpp", 116, "ProcessPending", "!m_rSigAid.signals[i].EnableBdsB1I()");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_search_mgr.cpp", 116, "!m_rSigAid.signals[i].EnableBdsB1I()");
        }
      }

      LOBYTE(__src) = 1;
      BYTE1(__src) = v30;
      BYTE2(__src) = v31;
      if ((v45[0] - 76) >= 0x3Fu)
      {
        LOBYTE(v34) = v35;
      }

      BYTE3(__src) = v34;
      if (!v36)
      {
        if (v34)
        {
LABEL_74:
          v37 = 3;
LABEL_75:
          BlueFin::GlMeSrdSearchMgrBase::CreateSatAndStartSat(this, v45, v37, &__src);
LABEL_76:
          result = BlueFin::GlSetBase::Remove(&v53, v45[0]);
          goto LABEL_77;
        }

LABEL_70:
        if ((*(**(this + 4) + 1200))(*(this + 4)))
        {
          v37 = 2;
        }

        else
        {
          v37 = 0;
        }

        goto LABEL_75;
      }

      v45[1] = 1;
      *&v45[5] = 3;
      LOWORD(v46) = 96;
      result = BlueFin::GlMeSrdSearchMgrBase::GetStrategyId(this, &v45[1]);
      if (result != 250)
      {
        if (BYTE3(__src))
        {
          goto LABEL_74;
        }

        goto LABEL_70;
      }

LABEL_77:
      v9 = *(this + 1);
    }
  }

LABEL_83:
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    return BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
  }

  return result;
}

void BlueFin::GlMeSrdSatMgr::ProcessPending(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v6 = a1;
  v219 = *MEMORY[0x29EDCA608];
  if (*(a1 + 6544) != a2)
  {
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
    }

    BlueFin::GlSetBase::operator|=(v6 + 56, v6 + 248);
    BlueFin::GlSetBase::operator=(v6 + 424, v6 + 248);
    *(v6 + 436) = *(v6 + 260);
    *v206 = v208;
    LOBYTE(v207) = 4;
    v208[1] = 0;
    v208[0] = 0;
    BlueFin::GlSetBase::OperatorBinaryInversion(v6 + 248, v206);
    BlueFin::GlSetBase::operator&=(v6 + 216, v206);
    BlueFin::GlSetBase::operator=(v6 + 248, v6 + 216);
    *(v6 + 260) = *(v6 + 228);
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
    }
  }

  v7 = v6 + 4096;
  v8 = *(v6 + 152);
  *(v6 + 6544) = a2;
  v183 = v6 + 4096;
  if (!*v8)
  {
    v14 = *(v6 + 160);
    if (v14 < 2)
    {
      goto LABEL_22;
    }

    v15 = v14 - 1;
    v16 = v8 + 1;
    while (!*v16++)
    {
      if (!--v15)
      {
        goto LABEL_22;
      }
    }
  }

  if (*(v6 + 6548))
  {
    v9 = a4 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v10 = *(v6 + 6548) + 1;
    *(v6 + 6548) = v10;
    v209 = BlueFin::GlMeSrdSatMgr::OnReliableTransactionAck;
    v210 = v6;
    v211[0] = v10;
    *&v211[1] = 1;
    v212 = a3;
    v213 = 0;
    v214 = 0;
    (*(*a3 + 16))(a3, 1);
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
    }

    v206[0] = *(v6 + 160);
    memcpy(&v207, *(v6 + 152), 4 * v206[0]);
    *&v206[2] = 0;
    v206[1] = 0;
    *&v206[4] = v207;
    while (1)
    {
      BlueFin::GlSetIterator::operator++(v206);
      if (v206[1] == v206[0])
      {
        break;
      }

      v11 = v206[2];
      v12 = (*(*v212 + 48))(v212);
      v13 = (*(*v12 + 64))(v12);
      (*(*v13 + 120))(v13, &v209, v11);
    }

    BlueFin::GlMeSrdTransaction::Complete(&v209);
    BlueFin::GlSetBase::operator|=(v6 + 184, v6 + 152);
    bzero(*(v6 + 152), ((4 * *(v6 + 160) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v209);
    v7 = v6 + 4096;
  }

LABEL_22:
  if (*(v7 + 2200) != 1)
  {
    goto LABEL_55;
  }

  v18 = v217;
  v215 = v217;
  LOBYTE(v216) = 4;
  v217[1] = 0;
  v217[0] = 0;
  v206[0] = *(v6 + 128);
  memcpy(&v207, *(v6 + 120), 4 * v206[0]);
  *&v206[2] = 0;
  v206[1] = 0;
  *&v206[4] = v207;
  BlueFin::GlSetIterator::operator++(v206);
  if (v206[1] == v206[0])
  {
    v19 = 4;
    v20 = v6 + 4096;
    goto LABEL_25;
  }

  do
  {
    v24 = v206[2];
    BlueFin::GlMeSrdSatMgr::GetSvid(&v209, v6, v206[2]);
    v25 = v209 >> 5;
    v26 = v209 & 0x1F;
    if (v209 - 139 >= 0x24)
    {
      v27 = 552;
    }

    else
    {
      v27 = 648;
    }

    v28 = 1 << v26;
    v29 = ((1 << v26) & *(*(v6 + v27) + 4 * v25)) != 0;
    v30 = *(v6 + 6288);
    v31 = v30 + 52 * v24;
    v33 = *(v31 + 30);
    v32 = (v31 + 30);
    v34 = v24 >> 5;
    v35 = 1 << v24;
    if (v33 != v29)
    {
      *v32 = v29;
      *(v215 + v34) |= v35;
    }

    v36 = (v28 & *(*(v6 + 600) + 4 * v25)) != 0;
    v37 = v30 + 52 * v24;
    v39 = *(v37 + 31);
    v38 = (v37 + 31);
    if (v39 != v36)
    {
      *v38 = v36;
      *(v215 + v34) |= v35;
    }

    v40 = (v28 & (*(*(v6 + 984) + 4 * v25) | *(*(v6 + 888) + 4 * v25) | *(*(v6 + 1032) + 4 * v25))) != 0;
    v41 = v30 + 52 * v24;
    v43 = *(v41 + 32);
    v42 = (v41 + 32);
    if (v43 != v40)
    {
      *v42 = v40;
      *(v215 + v34) |= v35;
    }

    BlueFin::GlSetIterator::operator++(v206);
  }

  while (v206[1] != v206[0]);
  v18 = v215;
  v20 = v6 + 4096;
  if (*v215)
  {
LABEL_40:
    *v211 = 256;
    v209 = 0;
    v210 = 0;
    v211[2] = 0;
    v212 = a3;
    v213 = 0;
    v214 = 0;
    (*(*a3 + 16))(a3, 1);
    v206[0] = v216;
    memcpy(&v207, v215, 4 * v216);
    *&v206[2] = 0;
    v206[1] = 0;
    *&v206[4] = v207;
    BlueFin::GlSetIterator::operator++(v206);
    while (v206[1] != v206[0])
    {
      v44 = v206[2];
      v197 = 0;
      v196 = 0;
      BlueFin::GlMeSrdSatMgr::GetSvid(&v202, v6, v206[2]);
      BlueFin::GlMeSrdSatMgr::GetSatControl(v6, v44, &v202, &v196);
      BlueFin::GlMeSrdSatMgr::GetSvid(&v202, v6, v44);
      if (v202 - 139 <= 0x23)
      {
        v196 &= ~0x10u;
      }

      if ((*(**(v6 + 6552) + 352))(*(v6 + 6552)))
      {
        v45 = *(v6 + 6288) + 52 * v44;
        v46 = *(v45 + 5);
        if (!*(v45 + 5))
        {
          v178 = "ucNumCarriers >= 1";
          v179 = 1267;
          DeviceFaultNotify("glmesrd_sat_mgr.cpp", 1267, "UpdateSatControl", "ucNumCarriers >= 1");
          goto LABEL_227;
        }

        if (v46 > 4)
        {
          v178 = "ucNumCarriers <= _DIM(m_aotSatData[ucSatid].aetSignalIndex)";
          v179 = 1268;
          DeviceFaultNotify("glmesrd_sat_mgr.cpp", 1268, "UpdateSatControl", "ucNumCarriers <= _DIM(m_aotSatData[ucSatid].aetSignalIndex)");
LABEL_227:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", v179, v178);
        }

        v47 = 52 * v44 + 8;
        do
        {
          v48 = *(*(v6 + 6288) + v47);
          EswSignalIndex = BlueFin::GlMeSrdAsicUnitConverter::GetEswSignalIndex(v48);
          LOWORD(v202) = v196;
          BYTE2(v202) = v197;
          if (v48)
          {
            LOWORD(v202) = v202 & 0xFFF7;
          }

          v50 = (*(*v212 + 48))(v212);
          v51 = (*(*v50 + 64))(v50);
          (*(*v51 + 112))(v51, &v209, v44, EswSignalIndex, &v202);
          v47 += 4;
          --v46;
        }

        while (v46);
      }

      else
      {
        v52 = (*(*v212 + 48))(v212);
        v53 = (*(*v52 + 64))(v52);
        (*(*v53 + 104))(v53, &v209, v44, &v196);
      }

      BlueFin::GlSetIterator::operator++(v206);
    }

    BlueFin::GlMeSrdTransaction::Complete(&v209);
    BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v209);
    v20 = v6 + 4096;
    goto LABEL_54;
  }

  v19 = v216;
  if (v216 >= 2u)
  {
LABEL_25:
    v21 = v19 - 1;
    v22 = v18 + 1;
    do
    {
      if (*v22++)
      {
        goto LABEL_40;
      }
    }

    while (--v21);
  }

LABEL_54:
  *(v20 + 2200) = 0;
LABEL_55:
  v55 = (v6 + 88);
  v54 = *(v6 + 88);
  v191 = v6;
  if (*v54)
  {
LABEL_56:
    v184 = (v6 + 840);
    v185 = (v6 + 88);
    v186 = (v6 + 792);
    if (!*v54)
    {
      goto LABEL_132;
    }

    while (1)
    {
      *v211 = 256;
      v209 = 0;
      v210 = 0;
      v211[2] = 0;
      v212 = a3;
      v213 = 0;
      v214 = 0;
      (*(*a3 + 16))(a3, 1);
      v206[0] = *(v6 + 96);
      memcpy(&v207, *(v6 + 88), 4 * v206[0]);
      *&v206[2] = 0;
      v206[1] = 0;
      *&v206[4] = v207;
      BlueFin::GlSetIterator::operator++(v206);
      if (v206[1] != v206[0])
      {
        v56 = 6;
        while (1)
        {
          v57 = v206[2];
          v58 = (*(v6 + 6288) + 52 * v206[2]);
          v59 = *v58;
          v60 = 1 << (v59 & 0x1F);
          if ((v59 - 139) >= 0x24)
          {
            v61 = 552;
          }

          else
          {
            v61 = 648;
          }

          v62 = (v59 >> 3) & 0x1C;
          v58[30] = (v60 & *(*(v6 + v61) + v62)) != 0;
          v58[31] = (v60 & *(*(v6 + 600) + v62)) != 0;
          v205 = 0;
          v204 = 0;
          BlueFin::GlMeSrdSatMgr::GetSatControl(v6, v57, v58, &v204);
          v63 = BlueFin::GlMeSrdAsicUnitConverter::Svid2SvParamType(v58);
          v64 = *v63;
          v203 = *(v63 + 2);
          v202 = v64;
          if (*v58 - 139 <= 0x23)
          {
            v65 = (*(**(v6 + 6552) + 552))(*(v6 + 6552)) && v58[44] == 1 && v58[1] != 71;
            if (((*(*(v6 + 648) + ((*v58 >> 3) & 0x1C)) >> (*v58 & 0x1F)) & 1) != 0 && !v65 && ((*(**(v6 + 6552) + 256))(*(v6 + 6552)) & 1) == 0 && ((*(**(v6 + 6552) + 264))(*(v6 + 6552)) & 1) == 0)
            {
              LOWORD(v203) = v203 | 0xFF00;
              v66 = 2 * *v58 - 21;
              HIDWORD(v202) = 10;
              LOWORD(v203) = *&v66 | 0xFF00;
            }

            v204 &= 0xFFE7u;
          }

          if (v58[44] == 1)
          {
            v67 = *v58;
            if (v67 - 139 >= 0x24 && v67 - 52 >= 0xE)
            {
              v69 = 64;
            }

            else
            {
              v69 = -64;
            }

            v70 = v186;
            if (v67 - 76 < 0x3F || (v67 - 1 >= 0x20 ? (v71 = v67 - 66 > 9) : (v71 = 0), v70 = v184, !v71))
            {
              if ((*(*v70 + 4 * (v67 >> 5)) >> (v67 & 0x1F)))
              {
                v69 = -64;
              }
            }
          }

          else
          {
            v69 = 0;
          }

          if ((*(**(v6 + 6552) + 352))(*(v6 + 6552)))
          {
            break;
          }

          v95 = (*(*v212 + 48))(v212);
          v96 = (*(*v95 + 64))(v95);
          v56 += (*(*v96 + 24))(v96) + 3;
          if (v56 > (*(**(v6 + 6552) + 416))(*(v6 + 6552)))
          {
            goto LABEL_138;
          }

          if (v58[5] != 1)
          {
            v176 = "ucNumCarriers == 1";
            v177 = 763;
            DeviceFaultNotify("glmesrd_sat_mgr.cpp", 763, "CreateDeferredSat", "ucNumCarriers == 1");
            goto LABEL_221;
          }

          if (*(v58 + 2))
          {
            v176 = "rotSatData.aetSignalIndex[0] == SIGNAL_INDEX_0";
            v177 = 764;
            DeviceFaultNotify("glmesrd_sat_mgr.cpp", 764, "CreateDeferredSat", "rotSatData.aetSignalIndex[0] == SIGNAL_INDEX_0");
            goto LABEL_221;
          }

          v97 = *(v6 + 6288) + 52 * v57;
          if ((*(v97 + 34) & 1) == 0)
          {
            v176 = "m_aotSatData[ucSatid].stAidIds.astAidId[SIGNAL_INDEX_0].bValid";
            v177 = 765;
            DeviceFaultNotify("glmesrd_sat_mgr.cpp", 765, "CreateDeferredSat", "m_aotSatData[ucSatid].stAidIds.astAidId[SIGNAL_INDEX_0].bValid");
LABEL_221:
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", v177, v176);
          }

          v98 = *(v6 + 6560);
          v99 = *(v6 + 6552);
          v100 = *(v97 + 1);
          LOBYTE(v215) = *v58;
          HIDWORD(v215) = 0;
          v216 = 575;
          if (v215 - 189 >= 0xFFFFFF44)
          {
            v101 = BlueFin::GlSvId::s_aucSvId2gnss[v215];
            if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v101] == 255)
            {
              HIDWORD(v215) = -1;
            }

            else
            {
              v216 = BlueFin::GlSignalId::s_ausGnss2signalId[v101] + v215 - BlueFin::GlSvId::s_aucGnss2minSvId[v101];
            }
          }

          if (((*(*v98 + 72))(v98, v99, v100, &v215, 0) & 1) == 0)
          {
            DeviceFaultNotify("glmesrd_sat_mgr.cpp", 769, "CreateDeferredSat", "bSearchWithinSystemLimits");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", 769, "bSearchWithinSystemLimits");
          }

          v102 = (*(*v212 + 48))(v212);
          v103 = (*(*v102 + 64))(v102);
          v104 = *(v6 + 6288) + 52 * v57;
          LOBYTE(v180) = v69;
          (*(*v103 + 16))(v103, &v209, v57, &v202, *(v104 + 1), &v204, 1, *(v104 + 33), v180);
LABEL_128:
          *(*(v6 + 120) + 4 * (v57 >> 5)) |= 1 << v57;
          BlueFin::GlSetBase::Remove(v55, v57);
          v107 = 52 * v57 + 24;
          v108 = 4;
          do
          {
            *(*(v6 + 6288) + v107++) = 0;
            --v108;
          }

          while (v108);
          *(*(v6 + 6288) + 52 * v57 + 44) = 0;
          *(*(v6 + 6288) + 52 * v57 + 45) = -1;
          *(*(v6 + 6288) + 52 * v57 + 48) = 0;
          BlueFin::GlSetIterator::operator++(v206);
          if (v206[1] == v206[0])
          {
            goto LABEL_138;
          }
        }

        v72 = v58[5];
        if (!v58[5])
        {
          v174 = "ucNumCarriers >= 1";
          v175 = 662;
          DeviceFaultNotify("glmesrd_sat_mgr.cpp", 662, "CreateDeferredSat", "ucNumCarriers >= 1");
          goto LABEL_217;
        }

        if (v72 >= 4)
        {
          v174 = "ucNumCarriers <= _DIM(sat_init_aid_array)";
          v175 = 663;
          DeviceFaultNotify("glmesrd_sat_mgr.cpp", 663, "CreateDeferredSat", "ucNumCarriers <= _DIM(sat_init_aid_array)");
LABEL_217:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", v175, v174);
        }

        v73 = (*(*v212 + 48))(v212);
        v74 = (*(*v73 + 64))(v73);
        v75 = (*(*v74 + 56))(v74, v72);
        if (v56 + v75 + 3 <= (*(**(v6 + 6552) + 416))(*(v6 + 6552)))
        {
          v188 = v57;
          v189 = v56 + v75 + 3;
          v76 = 0;
          v77 = 0;
          LOBYTE(v196) = v202;
          if ((HIDWORD(v202) & 0xFFFFFFFE) == 4)
          {
            v78 = v203;
          }

          else
          {
            v78 = v203;
          }

          v198 = HIDWORD(v202);
          v199 = v78;
          v187 = v72;
          v79 = v58 + 33;
          v200 = 0;
          v201 = 0;
          v80 = 8 * v72;
          v81 = v218;
          v82 = 8;
          while (1)
          {
            v83 = *&v58[v82];
            *(&v215 + v76) = BlueFin::GlMeSrdAsicUnitConverter::GetEswSignalIndex(v83);
            v85 = &v79[2 * v83];
            if ((v85[1] & 1) == 0)
            {
              DeviceFaultNotify("glmesrd_sat_mgr.cpp", 689, "CreateDeferredSat", "rotSatData.stAidIds.astAidId[etSignalIndex].bValid");
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", 689, "rotSatData.stAidIds.astAidId[etSignalIndex].bValid");
            }

            v86 = *v85;
            v87 = &v215 + v76;
            v87[4] = v86;
            v87[5] = v69;
            if (v83 == 2)
            {
              if (*v58 - 76 <= 0x3E)
              {
                v87[5] = v69 & 0x7F;
              }

              *v81 = v204;
              v81[2] = v205;
              v88 = v81;
            }

            else
            {
              *v81 = v204;
              v81[2] = v205;
              if (!v83)
              {
                goto LABEL_104;
              }

              v88 = &v218[3 * v77];
            }

            *v88 &= 0xFFE7u;
LABEL_104:
            v89 = *v58;
            v193[0] = *v58;
            v194 = v83;
            v195 = 575;
            if (v83 != -1 && (v89 - 189) >= 0xFFFFFF44)
            {
              v90 = BlueFin::GlSvId::s_aucSvId2gnss[v89];
              if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v83 - v83 + v90] == 255)
              {
                v194 = -1;
              }

              else
              {
                v195 = BlueFin::GlSignalId::s_ausGnss2signalId[v90] + v89 - BlueFin::GlSvId::s_aucGnss2minSvId[v90] + v83 * BlueFin::GlSvId::s_aucGnss2numSvId[v90];
              }
            }

            *(&v196 + v82) = BlueFin::GlMeSrdAsicUnitConverter::SignalId2MultiCarrType(v193, v84);
            ++v77;
            v81 += 3;
            v76 += 8;
            v82 += 4;
            if (v80 == v76)
            {
              v91 = v58[28];
              v6 = v191;
              v56 = v189;
              LODWORD(v57) = v188;
              if (v79[2 * v91 + 1])
              {
                v92 = *&v58[4 * v91 + 8];
                v93 = *v58;
                v193[0] = *v58;
                v194 = v92;
                v195 = 575;
                if (v92 != -1 && (v93 - 189) >= 0xFFFFFF44)
                {
                  v94 = BlueFin::GlSvId::s_aucSvId2gnss[v93];
                  if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v92 - v92 + v94] == 255)
                  {
                    v194 = -1;
                  }

                  else
                  {
                    v195 = BlueFin::GlSignalId::s_ausGnss2signalId[v94] + v93 - BlueFin::GlSvId::s_aucGnss2minSvId[v94] + v92 * BlueFin::GlSvId::s_aucGnss2numSvId[v94];
                  }
                }

                if (((*(**(v191 + 6560) + 72))(*(v191 + 6560), *(v191 + 6552), *(*(v191 + 6288) + 52 * v188 + v91 + 1), v193, 0) & 1) == 0)
                {
                  DeviceFaultNotify("glmesrd_sat_mgr.cpp", 727, "CreateDeferredSat", "bSearchWithinSystemLimits");
                  __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", 727, "bSearchWithinSystemLimits");
                }
              }

              v105 = (*(*v212 + 48))(v212);
              v106 = (*(*v105 + 64))(v105);
              LOBYTE(v181) = v91;
              (*(*v106 + 32))(v106, &v209, v188, &v196, *(v191 + 6288) + 52 * v188 + 1, 1, v187, v218, &v215, v181);
              v55 = v185;
              goto LABEL_128;
            }
          }
        }

        v55 = v185;
      }

LABEL_138:
      BlueFin::GlMeSrdTransaction::Complete(&v209);
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v209);
      v54 = *v55;
      if (!**v55)
      {
LABEL_132:
        v109 = *(v6 + 96);
        if (v109 < 2)
        {
          goto LABEL_144;
        }

        v110 = v109 - 1;
        v111 = v54 + 1;
        while (!*v111++)
        {
          if (!--v110)
          {
            goto LABEL_144;
          }
        }
      }
    }
  }

  v113 = *(v6 + 96);
  if (v113 >= 2)
  {
    v114 = v113 - 1;
    v115 = v54 + 1;
    do
    {
      if (*v115++)
      {
        goto LABEL_56;
      }
    }

    while (--v114);
  }

LABEL_144:
  v117 = *(v6 + 6384);
  if (!*v117)
  {
    v118 = *(v183 + 2296);
    if (v118 < 2)
    {
LABEL_149:
      v122 = *(v6 + 6304);
      if (!*v122)
      {
        v170 = *(v183 + 2216);
        if (v170 < 2)
        {
          return;
        }

        v171 = v170 - 1;
        v172 = v122 + 1;
        while (!*v172++)
        {
          if (!--v171)
          {
            return;
          }
        }
      }
    }

    else
    {
      v119 = v118 - 1;
      v120 = v117 + 1;
      while (!*v120++)
      {
        if (!--v119)
        {
          goto LABEL_149;
        }
      }
    }
  }

  *v211 = 256;
  v209 = 0;
  v210 = 0;
  v211[2] = 0;
  v212 = a3;
  v213 = 0;
  v214 = 0;
  (*(*a3 + 16))(a3, 1);
  v206[0] = *(v183 + 2216);
  v123 = *(v6 + 6304);
  v124 = 4 * v206[0];
  memcpy(&v207, v123, v124);
  *&v206[2] = 0;
  v206[1] = 0;
  *&v206[4] = v207;
  BlueFin::GlSetIterator::operator++(v206);
  if (v206[1] == v206[0])
  {
    v125 = v183;
  }

  else
  {
    v190 = (v6 + 840);
    v192 = (v6 + 792);
    do
    {
      v126 = *&v206[2];
      v127 = BlueFin::GlSatCarrId::GlSatCarrId(&v215, *&v206[2]);
      v128 = v215;
      if ((*(*(v6 + 360) + ((v128 >> 3) & 0x1C)) >> (v128 & 0x1F)))
      {
        BlueFin::GlSatCarrId::GlSatCarrId(v127, v126);
        v129 = HIDWORD(v215);
        BlueFin::GlMeSrdSatMgr::GetSvid(&v202, v6, v128);
        v130 = *(v6 + 6288);
        BlueFin::GlMeSrdSatMgr::GetSatControl(v6, v128, &v202, &v196);
        if (v129 || v202 - 139 <= 0x23)
        {
          v196 &= 0xFFE7u;
        }

        v131 = v130 + 52 * v128;
        v132 = v131 + 2 * v129;
        if ((*(v132 + 34) & 1) == 0)
        {
          DeviceFaultNotify("glmesrd_sat_mgr.cpp", 407, "UpdateCarrierTypes", "rotSatData.stAidIds.astAidId[etSignalIndex].bValid");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_mgr.cpp", 407, "rotSatData.stAidIds.astAidId[etSignalIndex].bValid");
        }

        v133 = *(v132 + 33);
        v135 = BlueFin::GlMeSrdAsicUnitConverter::GetEswSignalIndex(v129);
        if (v202 - 139 >= 0x24 && v202 - 52 >= 0xE)
        {
          v137 = 95;
        }

        else
        {
          v137 = -33;
        }

        v138 = v192;
        if (v202 - 76 < 0x3F || (v138 = v190, v202 - 1 < 0x20) || (v138 = v190, v202 - 66 <= 9))
        {
          if ((*(*v138 + 4 * (v202 >> 5)) >> (v202 & 0x1F)))
          {
            v137 = -33;
          }
        }

        v139 = *(v131 + 5);
        if (*(v131 + 5))
        {
          v140 = (v131 + 8);
          v141 = (v131 + 1);
          v142 = -6;
          do
          {
            v143 = *v140++;
            if (v143 == v129)
            {
              v142 = *v141;
            }

            ++v141;
            --v139;
          }

          while (v139);
        }

        else
        {
          v142 = -6;
        }

        LOBYTE(v215) = v202;
        if (v129)
        {
          v144 = v129 == 3;
        }

        else
        {
          v144 = 1;
        }

        if (v144)
        {
          v145 = 2;
        }

        else
        {
          v145 = 1;
        }

        HIDWORD(v215) = v129;
        v216 = 575;
        if (v129 != -1 && v202 - 189 >= 0xFFFFFF44)
        {
          v146 = BlueFin::GlSvId::s_aucSvId2gnss[v202];
          if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v129 - v129 + v146] == 255)
          {
            HIDWORD(v215) = -1;
          }

          else
          {
            v216 = BlueFin::GlSignalId::s_ausGnss2signalId[v146] + v202 - BlueFin::GlSvId::s_aucGnss2minSvId[v146] + v129 * BlueFin::GlSvId::s_aucGnss2numSvId[v146];
          }
        }

        v147 = BlueFin::GlMeSrdAsicUnitConverter::SignalId2MultiCarrType(&v215, v134);
        v148 = (*(*v212 + 48))(v212);
        v149 = (*(*v148 + 64))(v148);
        v123 = v123 & 0xFFFFFFFFFF000000 | v196 | (v197 << 16);
        (*(*v149 + 40))(v149, &v209, v128, v202, v142, v145, v123, v147, (v133 << 32) | (v137 << 40) | v135);
        v6 = v191;
      }

      BlueFin::GlSetIterator::operator++(v206);
    }

    while (v206[1] != v206[0]);
    v123 = *(v6 + 6304);
    v125 = v183;
    v124 = 4 * *(v183 + 2216);
  }

  bzero(v123, ((v124 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v206[0] = *(v125 + 2296);
  v150 = *(v6 + 6384);
  v151 = 4 * v206[0];
  memcpy(&v207, v150, v151);
  *&v206[2] = 0;
  v206[1] = 0;
  *&v206[4] = v207;
  BlueFin::GlSetIterator::operator++(v206);
  if (v206[1] != v206[0])
  {
    do
    {
      v152 = *&v206[2];
      v153 = BlueFin::GlSatCarrId::GlSatCarrId(&v215, *&v206[2]);
      v154 = v215;
      BlueFin::GlSatCarrId::GlSatCarrId(v153, v152);
      v155 = HIDWORD(v215);
      v156 = BlueFin::GlMeSrdAsicUnitConverter::GetEswSignalIndex(HIDWORD(v215));
      v157 = (*(*v212 + 48))(v212);
      v158 = (*(*v157 + 64))(v157);
      (*(*v158 + 48))(v158, &v209, v154, v156);
      BlueFin::GlSatCarrId::GlSatCarrId(&v215, v154, v155);
      *(*(v6 + 6464) + 4 * ((v215 + 100 * BYTE4(v215)) >> 5)) |= 1 << (v215 + 100 * BYTE4(v215));
      v159 = *(v6 + 6288);
      if (*(v159 + 52 * v154 + 5))
      {
        v160 = 0;
        v161 = 52 * v154;
        v162 = -1;
        do
        {
          v163 = v159 + v161 + 4 * v160;
          v164 = *(v163 + 8);
          if (v155 == v164)
          {
            v162 = v160;
          }

          if (v162 != -1 && v160 > v162)
          {
            *(v163 + 4) = v164;
            *(v159 + v161 + v160) = *(v159 + v161 + v160 + 1);
            v159 = *(v6 + 6288);
          }

          ++v160;
          v166 = v159 + 52 * v154;
          v169 = *(v166 + 5);
          v167 = (v166 + 5);
          v168 = v169;
        }

        while (v160 < v169);
        if (v162 != -1)
        {
          *v167 = v168 - 1;
          --*(v6 + 49);
        }
      }

      BlueFin::GlSetIterator::operator++(v206);
    }

    while (v206[1] != v206[0]);
    v150 = *(v6 + 6384);
    v151 = 4 * *(v183 + 2296);
  }

  bzero(v150, ((v151 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  BlueFin::GlMeSrdTransaction::Complete(&v209);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v209);
}

unsigned __int8 *BlueFin::GlMeSrdSatMgr::GetLowLevelAllocatedSvidList@<X0>(uint64_t *__return_ptr a1@<X8>, BlueFin::GlMeSrdSatMgr *this@<X0>)
{
  v7 = v9;
  LOBYTE(v8) = 4;
  v9[1] = 0;
  v9[0] = 0;
  BlueFin::GlSetBase::OperatorBinaryInversion(this + 56, &v7);
  v10 = v12;
  v11 = 4;
  v12[1] = 0;
  v12[0] = 0;
  BlueFin::GlSetBase::OperatorBinaryAnd(this + 392, &v10, &v7);
  *(a1 + 12) = 0u;
  *a1 = a1 + 12;
  *(a1 + 8) = 8;
  *(a1 + 28) = 0u;
  LOBYTE(v7) = v11;
  memcpy(&v8, v10, 4 * v11);
  WORD1(v7) = 0;
  BYTE1(v7) = 0;
  HIDWORD(v7) = v8;
  result = BlueFin::GlSetIterator::operator++(&v7);
  if (BYTE1(v7) != v7)
  {
    v5 = *(this + 786);
    do
    {
      v6 = *(v5 + 52 * SWORD1(v7));
      *(a1 + ((v6 >> 3) & 0x1C) + 12) |= 1 << v6;
      result = BlueFin::GlSetIterator::operator++(&v7);
    }

    while (BYTE1(v7) != v7);
  }

  return result;
}

unsigned __int8 *BlueFin::GlMeSrdSatMgr::GetRecentlyKilledWaiting4AckSvIdList@<X0>(uint64_t *__return_ptr a1@<X8>, BlueFin::GlMeSrdSatMgr *this@<X0>)
{
  *(a1 + 12) = 0u;
  v3 = a1 + 12;
  *a1 = a1 + 12;
  *(a1 + 8) = 8;
  *(a1 + 28) = 0u;
  v7 = *(this + 192);
  memcpy(v11, *(this + 23), 4 * v7);
  v9 = 0;
  v8 = 0;
  v10 = v11[0];
  result = BlueFin::GlSetIterator::operator++(&v7);
  if (v8 != v7)
  {
    v5 = *(this + 786);
    do
    {
      v6 = *(v5 + 52 * v9);
      *&v3[(v6 >> 3) & 0x1C] |= 1 << v6;
      result = BlueFin::GlSetIterator::operator++(&v7);
    }

    while (v8 != v7);
  }

  return result;
}

void BlueFin::GlMeSrdAidingMgr::CleanupUnusedAidIds(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v2;
  v19 = *MEMORY[0x29EDCA608];
  bzero(v18, 0x1C8CuLL);
  v15 = v9 + 2632;
  v16 = *(v9 + 2666) + 1;
  if (*(v9 + 2664) > v16)
  {
    v10 = 0;
    do
    {
      BlueFin::GlSignalIdArrayIterator::Next(&v13, &v15);
      if (((*(*v8 + ((v13 >> 3) & 0x1C)) >> (v13 & 0x1F)) & 1) == 0)
      {
        v17[v10] = *BlueFin::GlSignalIdArray::Get((v9 + 1480), &v13);
        v11 = BlueFin::GlSignalIdArray::Get((v9 + 1480), &v13);
        if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          BlueFin::GlMeSrdAidingMgr::LogMappingChange(v11, 0, &v13);
        }

        ++v10;
        BlueFin::GlBigArray::Remove(v9 + 2632, v14);
        v12 = v13 >> 5;
        if ((*(*v4 + 4 * v12) >> (v13 & 0x1F)))
        {
          *(*(v9 + 1376) + 4 * v12) |= 1 << (v13 & 0x1F);
        }
      }
    }

    while (v16 < *(v15 + 32));
    if (v10)
    {
      BlueFin::GlMeSrdAidingMgr::SendAidingBatch(v6, v10, v17, v18);
    }
  }
}

void BlueFin::GlMeSrdAcqMgrSm::UpdateResources(const void **this)
{
  v70 = *MEMORY[0x29EDCA608];
  v64 = v66;
  v65 = 8;
  v66[0] = xmmword_298A3242C;
  v66[1] = unk_298A3243C;
  v61 = v63;
  v62 = 8;
  v63[0] = xmmword_298A3244C;
  v63[1] = unk_298A3245C;
  v58 = v60;
  v59 = 8;
  v60[0] = xmmword_298A3246C;
  v60[1] = unk_298A3247C;
  v50 = &v52;
  v51 = 8;
  v52 = BlueFin::GlSvIdSet::csm_aulGlSvIdSet[0];
  v53 = *algn_298A323DC;
  BlueFin::GlSetBase::GlSetBase(&v54, &v56, 8u, &v50);
  v67 = v68 + 1;
  LOBYTE(v68[0]) = 8;
  memset(v68 + 4, 0, 32);
  BlueFin::GlSetBase::OperatorBinaryOr(&v54, &v67, &v64);
  BlueFin::GlSetBase::operator=(&v54, &v67);
  v56 = *(v68 + 4);
  v57 = *(&v68[2] + 4);
  v2 = BlueFin::GlSetBase::GlSetBase(v69, &v69[12], 8u, this + 1538);
  v67 = v68 + 1;
  LOBYTE(v68[0]) = 8;
  memset(v68 + 4, 0, 32);
  BlueFin::GlSetBase::OperatorBinaryAnd(v2, &v67, &v54);
  BlueFin::GlSetBase::operator=(v69, &v67);
  v3 = 0;
  *&v69[12] = *(v68 + 4);
  *&v69[28] = *(&v68[2] + 4);
  v4 = (*v69 + 4 * v69[8] - 4);
  do
  {
    if (*v4)
    {
      v5 = *v4 - (((*v4 >> 1) & 0x5B6DB6DB) + ((*v4 >> 2) & 0x9249249));
      v3 = ((v5 + (v5 >> 3)) & 0xC71C71C7) + v3 - 63 * (((v5 + (v5 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v4;
  }

  while (v4 >= *v69);
  v50 = &v52;
  v51 = 8;
  v52 = BlueFin::GlSvIdSet::csm_aulGlSvIdSet[0];
  v53 = *algn_298A323DC;
  BlueFin::GlSetBase::GlSetBase(&v54, &v56, 8u, &v50);
  v67 = v68 + 1;
  LOBYTE(v68[0]) = 8;
  memset(v68 + 4, 0, 32);
  BlueFin::GlSetBase::OperatorBinaryOr(&v54, &v67, &v64);
  BlueFin::GlSetBase::operator=(&v54, &v67);
  v56 = *(v68 + 4);
  v57 = *(&v68[2] + 4);
  v6 = BlueFin::GlSetBase::GlSetBase(v69, &v69[12], 8u, this + 1577);
  v67 = v68 + 1;
  LOBYTE(v68[0]) = 8;
  memset(v68 + 4, 0, 32);
  BlueFin::GlSetBase::OperatorBinaryAnd(v6, &v67, &v54);
  BlueFin::GlSetBase::operator=(v69, &v67);
  v7 = 0;
  *&v69[12] = *(v68 + 4);
  *&v69[28] = *(&v68[2] + 4);
  v8 = (*v69 + 4 * v69[8] - 4);
  do
  {
    if (*v8)
    {
      v9 = *v8 - (((*v8 >> 1) & 0x5B6DB6DB) + ((*v8 >> 2) & 0x9249249));
      v7 = ((v9 + (v9 >> 3)) & 0xC71C71C7) + v7 - 63 * (((v9 + (v9 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v8;
  }

  while (v8 >= *v69);
  v50 = &v52;
  v51 = 8;
  v52 = BlueFin::GlSvIdSet::csm_aulGlSvIdSet[0];
  v53 = *algn_298A323DC;
  BlueFin::GlSetBase::GlSetBase(&v54, &v56, 8u, &v50);
  v67 = v68 + 1;
  LOBYTE(v68[0]) = 8;
  memset(v68 + 4, 0, 32);
  BlueFin::GlSetBase::OperatorBinaryOr(&v54, &v67, &v64);
  BlueFin::GlSetBase::operator=(&v54, &v67);
  v56 = *(v68 + 4);
  v57 = *(&v68[2] + 4);
  v10 = BlueFin::GlSetBase::GlSetBase(v69, &v69[12], 8u, this + 1733);
  v67 = v68 + 1;
  LOBYTE(v68[0]) = 8;
  memset(v68 + 4, 0, 32);
  BlueFin::GlSetBase::OperatorBinaryAnd(v10, &v67, &v54);
  BlueFin::GlSetBase::operator=(v69, &v67);
  v11 = 0;
  *&v69[12] = *(v68 + 4);
  *&v69[28] = *(&v68[2] + 4);
  v12 = (*v69 + 4 * v69[8] - 4);
  do
  {
    if (*v12)
    {
      v13 = *v12 - (((*v12 >> 1) & 0x5B6DB6DB) + ((*v12 >> 2) & 0x9249249));
      v11 = ((v13 + (v13 >> 3)) & 0xC71C71C7) + v11 - 63 * (((v13 + (v13 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v12;
  }

  while (v12 >= *v69);
  v54 = &v56;
  v55 = 8;
  v56 = BlueFin::GlSvIdSet::csm_aulGlSvIdSet[0];
  v57 = *algn_298A323DC;
  v14 = BlueFin::GlSetBase::GlSetBase(v69, &v69[12], 8u, this + 1733);
  v67 = v68 + 1;
  LOBYTE(v68[0]) = 8;
  memset(v68 + 4, 0, 32);
  BlueFin::GlSetBase::OperatorBinaryAnd(v14, &v67, &v54);
  BlueFin::GlSetBase::operator=(v69, &v67);
  *&v69[12] = *(v68 + 4);
  *&v69[28] = *(&v68[2] + 4);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x4F);
  }

  v15 = BlueFin::GlSetBase::GlSetBase(v69, &v69[12], 8u, this + 1577);
  v67 = v68 + 1;
  LOBYTE(v68[0]) = 8;
  memset(v68 + 4, 0, 32);
  BlueFin::GlSetBase::OperatorBinaryAnd(v15, &v67, &v58);
  BlueFin::GlSetBase::operator=(v69, &v67);
  v16 = 0;
  v49 = v11 + v7;
  *&v69[12] = *(v68 + 4);
  *&v69[28] = *(&v68[2] + 4);
  v17 = (*v69 + 4 * v69[8] - 4);
  do
  {
    if (*v17)
    {
      v18 = *v17 - (((*v17 >> 1) & 0x5B6DB6DB) + ((*v17 >> 2) & 0x9249249));
      v16 = ((v18 + (v18 >> 3)) & 0xC71C71C7) + v16 - 63 * (((v18 + (v18 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v17;
  }

  while (v17 >= *v69);
  v19 = BlueFin::GlSetBase::GlSetBase(v69, &v69[12], 8u, this + 1358);
  v67 = v68 + 1;
  LOBYTE(v68[0]) = 8;
  memset(v68 + 4, 0, 32);
  BlueFin::GlSetBase::OperatorBinaryAnd(v19, &v67, &v58);
  BlueFin::GlSetBase::operator=(v69, &v67);
  v20 = 0;
  *&v69[12] = *(v68 + 4);
  *&v69[28] = *(&v68[2] + 4);
  v21 = (*v69 + 4 * v69[8] - 4);
  do
  {
    if (*v21)
    {
      v22 = *v21 - (((*v21 >> 1) & 0x5B6DB6DB) + ((*v21 >> 2) & 0x9249249));
      v20 = ((v22 + (v22 >> 3)) & 0xC71C71C7) + v20 - 63 * (((v22 + (v22 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v21;
  }

  while (v21 >= *v69);
  v23 = BlueFin::GlSetBase::GlSetBase(v69, &v69[12], 8u, this + 1538);
  v67 = v68 + 1;
  LOBYTE(v68[0]) = 8;
  memset(v68 + 4, 0, 32);
  BlueFin::GlSetBase::OperatorBinaryAnd(v23, &v67, &v61);
  BlueFin::GlSetBase::operator=(v69, &v67);
  v24 = 0;
  *&v69[12] = *(v68 + 4);
  *&v69[28] = *(&v68[2] + 4);
  v25 = (*v69 + 4 * v69[8] - 4);
  do
  {
    if (*v25)
    {
      v26 = *v25 - (((*v25 >> 1) & 0x5B6DB6DB) + ((*v25 >> 2) & 0x9249249));
      v24 = ((v26 + (v26 >> 3)) & 0xC71C71C7) + v24 - 63 * (((v26 + (v26 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v25;
  }

  while (v25 >= *v69);
  *v69 = xmmword_298A339E0;
  *&v69[16] = xmmword_298A339F0;
  *&v69[32] = 268435464;
  v27 = *(this + 6238);
  v28 = (*(*this[8] + 808))();
  if (v27 > 1)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (v29 == 1)
  {
    v69[3] = v69[3] & 0xF0 | 4;
    v69[11] = v69[11] & 0xF0 | 4;
    v69[15] = v69[15] & 0xF0 | 4;
    *&v69[9] = 12850;
    v69[23] = v69[23] & 0xF0 | 3;
    v69[27] = v69[27] & 0xF0 | 3;
  }

  if (10 * v24 >= 0xA)
  {
    v30 = 10;
  }

  else
  {
    v30 = 10 * v24;
  }

  if ((*(*this[8] + 32))(this[8]))
  {
    goto LABEL_57;
  }

  if (*(this + 25000) == 1)
  {
    v69[6] = 0;
    v69[14] = 0;
    v69[26] = 0;
    v31 = 8;
LABEL_56:
    v69[22] = v31;
    goto LABEL_57;
  }

  if ((*(*this[10] + 40))(this[10]))
  {
    v32 = 55;
    goto LABEL_40;
  }

  if (*(this + 24995) == 1)
  {
    if (*(this + 24996) == 1)
    {
      if (v3 >= 9u)
      {
        v33 = 45;
      }

      else
      {
        v33 = 35;
      }

      v69[6] = v33 + v30;
      v69[14] = 10;
      v69[22] = 30;
      v69[10] = 20;
      if (v49 < 5 || v20 || ((*(*this[8] + 1224))(this[8]) & 1) != 0)
      {
        v34 = 108;
      }

      else
      {
        v34 = 70;
      }

      v69[26] = v34;
      goto LABEL_57;
    }

    v31 = 108;
    v69[14] = 108;
    goto LABEL_55;
  }

  if (*(this + 24992) == 1)
  {
    v31 = 108;
    v69[14] = 108;
    v69[6] = 108;
LABEL_55:
    v69[26] = 108;
    goto LABEL_56;
  }

  if (*(this + 25051) == 1)
  {
    v69[14] = 60;
    v69[10] = 5;
    v69[6] = 0;
    v31 = 108;
    goto LABEL_55;
  }

  if (*(this + 25249) != 1 || v27)
  {
    if (v3 >= 9u)
    {
      v42 = 55;
    }

    else
    {
      v42 = 40;
    }

    v69[6] = v42 + v30;
    if ((*(*this[8] + 264))(this[8]) && *(this + 5790) >> 4 > 0x270u)
    {
      (*(*this[8] + 264))(this[8]);
      v43 = v49 > 7;
      v44 = 60;
      v45 = 70;
    }

    else
    {
      v43 = v16 > 2u || v49 > 7;
      v44 = 99;
      v45 = 108;
    }

    if (v43)
    {
      v44 = v45;
    }

    v69[14] = v44;
    if (v20 || (*(*this[8] + 1224))(this[8]))
    {
      v48 = 108;
    }

    else
    {
      v48 = 70;
    }

    v69[26] = v48;
    v31 = 40;
    goto LABEL_56;
  }

  v32 = 108;
LABEL_40:
  v69[14] = v32;
LABEL_57:
  v35 = (*(*this[6] + 80))(this[6]);
  v67 = 0;
  v68[0] = 0;
  *(v68 + 7) = 0;
  v68[2] = v35;
  LODWORD(v68[3]) = 0;
  WORD2(v68[3]) = 0;
  (*(*v35 + 16))(v35, 0);
  v36 = 0;
  v37 = v69;
  do
  {
    if (v36 != *v37)
    {
      v46 = "aSmLimits[i].sm_id == i";
      v47 = 3717;
      DeviceFaultNotify("glmesrd_acq_mgr_sm.cpp", 3717, "UpdateResources", "aSmLimits[i].sm_id == i");
LABEL_86:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr_sm.cpp", v47, v46);
    }

    if (v36 || (this[3156] & 1) == 0)
    {
      if ((v36 & 0xE) == 2 || v36 <= 6 && ((1 << v36) & 0x72) != 0)
      {
        v37[1] = v37[2];
        v40 = (*(*v68[2] + 48))(v68[2]);
        v41 = (*(*v40 + 48))(v40);
        (*(*v41 + 128))(v41, &v67, 1, v37);
      }
    }

    else
    {
      v37[1] = v37[2];
      v38 = (*(*v68[2] + 48))(v68[2]);
      v39 = (*(*v38 + 48))(v38);
      (*(*v39 + 128))(v39, &v67, 1, v37);
      if (((*(*this[8] + 264))(this[8]) & 1) == 0)
      {
        v46 = "m_rAsicConfigIfc.IsMinnowAsicType()";
        v47 = 3723;
        DeviceFaultNotify("glmesrd_acq_mgr_sm.cpp", 3723, "UpdateResources", "m_rAsicConfigIfc.IsMinnowAsicType()");
        goto LABEL_86;
      }
    }

    ++v36;
    v37 += 4;
  }

  while (v36 != 9);
  BlueFin::GlMeSrdTransaction::Complete(&v67);
  if (*(this + 25248) == 1)
  {
    (**this[9])(this[9], this[6], this[8]);
    *(this + 25248) = 0;
  }

  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v67);
}

BOOL BlueFin::GlMeSrdAsicConfig::IsGloShortDecimatorEnabled(BlueFin::GlMeSrdAsicConfig *this)
{
  v1 = (*(*this + 16))(this);
  result = 1;
  if (v1 > 956235782)
  {
    v3 = v1 == 956235783;
    v4 = 1006829577;
  }

  else
  {
    v3 = v1 == 805502985;
    v4 = 889126919;
  }

  if (!v3 && v1 != v4)
  {
    return (v1 & 0xF000FFFE) - 805306382 < 8;
  }

  return result;
}

unsigned __int8 *BlueFin::GlSatCarrIdSet::GetSatIdSetAnyCarrier@<X0>(uint64_t *__return_ptr a1@<X8>, BlueFin::GlSatCarrIdSet *this@<X0>)
{
  *(a1 + 12) = 0;
  *a1 = a1 + 12;
  *(a1 + 8) = 4;
  *(a1 + 20) = 0;
  v5 = *(this + 8);
  memcpy(v9, *this, 4 * v5);
  v7 = 0;
  v6 = 0;
  v8 = v9[0];
  for (result = BlueFin::GlSetIterator::operator++(&v5); v6 != v5; result = BlueFin::GlSetIterator::operator++(&v5))
  {
    BlueFin::GlSatCarrId::GlSatCarrId(v4, v7);
    *(*a1 + ((v4[0] >> 3) & 0x1C)) |= 1 << v4[0];
  }

  return result;
}

uint64_t *BlueFin::GlReqSm::UpdateGrids(BlueFin::GlReqSm *this)
{
  result = BlueFin::GlSvIdArray::GetSvIdSet(v9, (*(this + 788) + 61664));
  if (*(this + 4942))
  {
    v3 = 0;
    v4 = 0;
    v5 = *(this + 618);
    do
    {
      v6 = *(v5 + v3);
      v8 = *(v5 + v3);
      if ((*(v9[0] + ((v6 >> 3) & 0x1C)) >> (v6 & 0x1F)))
      {
        result = BlueFin::GlPeKF::GetGridConfig(*(this + 788), &v8);
        v5 = *(this + 618);
        v7 = *(v5 + v3 + 4);
        if ((v7 & 0x400) != 0 || result == 32)
        {
          *(v5 + v3 + 4) = v7 | (result << 24);
        }
      }

      ++v4;
      v3 += 8;
    }

    while (v4 < *(this + 4942));
  }

  return result;
}

char *BlueFin::GlMeSignalAidInfo::GetSignalIds@<X0>(uint64_t *__return_ptr a1@<X8>, char *this@<X0>)
{
  *(a1 + 12) = 0u;
  v2 = a1 + 12;
  *a1 = a1 + 12;
  *(a1 + 8) = 19;
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 9) = 0u;
  v3 = *(this + 7);
  if (*(this + 7))
  {
    v4 = (*(this + 2) + 4);
    this = BlueFin::GlSvId::s_aucGnss2minSvId;
    do
    {
      v5 = *v4;
      if ((*v4 & 0x100100) != 0)
      {
        v6 = *(v4 - 2);
        if (v6 - 189 < 0xFFFFFF44 || (v7 = BlueFin::GlSvId::s_aucSvId2gnss[v6], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v7] == 255))
        {
          v8 = 575;
        }

        else
        {
          v8 = (BlueFin::GlSignalId::s_ausGnss2signalId[v7] + v6 - BlueFin::GlSvId::s_aucGnss2minSvId[v7]);
        }

        *&v2[4 * (v8 >> 5)] |= 1 << v8;
        v5 = *v4;
      }

      if ((v5 & 0x200) != 0)
      {
        v9 = *(v4 - 2);
        if (v9 - 189 < 0xFFFFFF44 || (v10 = BlueFin::GlSvId::s_aucSvId2gnss[v9], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v10 + 7] == 255))
        {
          v11 = 575;
        }

        else
        {
          v11 = (BlueFin::GlSignalId::s_ausGnss2signalId[v10] + v9 + BlueFin::GlSvId::s_aucGnss2numSvId[v10] - BlueFin::GlSvId::s_aucGnss2minSvId[v10]);
        }

        *&v2[4 * (v11 >> 5)] |= 1 << v11;
        v5 = *v4;
      }

      if ((v5 & 0x400) != 0)
      {
        v12 = *(v4 - 2);
        if (v12 - 189 < 0xFFFFFF44 || (v13 = BlueFin::GlSvId::s_aucSvId2gnss[v12], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v13 + 14] == 255))
        {
          v14 = 575;
        }

        else
        {
          v14 = (BlueFin::GlSignalId::s_ausGnss2signalId[v13] + v12 - BlueFin::GlSvId::s_aucGnss2minSvId[v13] + 2 * BlueFin::GlSvId::s_aucGnss2numSvId[v13]);
        }

        *&v2[4 * (v14 >> 5)] |= 1 << v14;
        v5 = *v4;
      }

      if ((v5 & 0x1010000) != 0)
      {
        v15 = *(v4 - 2);
        if (v15 - 189 < 0xFFFFFF44 || (v16 = BlueFin::GlSvId::s_aucSvId2gnss[v15], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v16 + 21] == 255))
        {
          v17 = 575;
        }

        else
        {
          v17 = (BlueFin::GlSignalId::s_ausGnss2signalId[v16] + v15 - BlueFin::GlSvId::s_aucGnss2minSvId[v16] + 3 * BlueFin::GlSvId::s_aucGnss2numSvId[v16]);
        }

        *&v2[4 * (v17 >> 5)] |= 1 << v17;
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return this;
}