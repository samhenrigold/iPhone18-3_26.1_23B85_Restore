BOOL BlueFin::GlPeNavGnssKF::PolaroidLeftTunnelRecently(BlueFin::GlPeNavGnssKF *this, unsigned int a2)
{
  v2 = *(this + 281);
  if (*(v2 + 1764))
  {
    v3 = 60;
  }

  else
  {
    v3 = 180;
  }

  if (*(v2 + 1328) > 4.0 && *(v2 + 1320) < 20.0 && *(v2 + 76) >= v3 && ((*(v2 + 1764) & 1) != 0 || *(v2 + 64) == 1))
  {
    return 0;
  }

  v4 = *(this + 549);
  return v4 && *(this + *(*this - 24) + 200) - v4 < a2;
}

unsigned __int8 *BlueFin::GlPeNavMeasSelect::RemoveGhosts(BlueFin::GlPeNavMeasSelect *this, const BlueFin::GlPeNavUtil *a2, BlueFin::GlSignalIdSet *a3, int a4)
{
  if (**a3)
  {
LABEL_2:
    BlueFin::GlSetBase::GlSetBase(&v31, v32, 0x13u, a3);
    v26 = *(a3 + 8);
    memcpy(v30, *a3, 4 * v26);
    v28 = 0;
    v27 = 0;
    v29 = v30[0];
    for (result = BlueFin::GlSetIterator::operator++(&v26); v27 != v26; result = BlueFin::GlSetIterator::operator++(&v26))
    {
      v9 = v28;
      if (v28 >= 0x23Fu)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v10 = *(this + 3);
      v11 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v28;
      v12 = *v11;
      LODWORD(v11) = v11[1];
      LOBYTE(v23) = v12;
      HIDWORD(v23) = v11;
      LOWORD(v24) = v28;
      if (*(BlueFin::GlPeMsmtMgr::GetMeMeas(v10, &v23, 0, 0) + 29) <= *(this + 34))
      {
        BlueFin::GlSetBase::Remove(&v31, v9);
        BlueFin::GlPeNavGnssState::GlPeNavGnssState(&v25, (a2 + *(*a2 - 24)));
        v23 = &off_2A1F12F90;
        v25 = &unk_2A1F12FC8;
        v24 = *(a2 + 8);
        BlueFin::GlSignalIdSet::GetSvIdSet(v21, &v31);
        BlueFin::GlPeNavUtil::ComputeDops(&v23);
        if (v22 < 2.0 || a4)
        {
          BlueFin::GlSetBase::Remove(a3, v9);
        }

        else
        {
          *(v31 + ((v9 >> 3) & 0x1FFC)) |= 1 << v9;
        }
      }
    }

    return result;
  }

  v13 = *(a3 + 8);
  if (v13 >= 2)
  {
    v14 = v13 - 1;
    v15 = (*a3 + 4);
    do
    {
      if (*v15++)
      {
        goto LABEL_2;
      }
    }

    while (--v14);
  }

  BlueFin::GlSetBase::operator=(this + 40, a3);
  *(this + 52) = *(a3 + 12);
  v17 = *(a3 + 28);
  v18 = *(a3 + 44);
  v19 = *(a3 + 60);
  *(this + 7) = *(a3 + 72);
  *(this + 100) = v19;
  *(this + 84) = v18;
  *(this + 68) = v17;
  v20 = **(this + 3);
  *(this + 9) = v20;
  result = BlueFin::GlSetBase::Cnt(a3);
  if (result >= 3)
  {
    *(this + 8) = v20;
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeMsmtMgr::SetRrCode(uint64_t a1, uint64_t a2, char a3)
{
  v12 = *(a2 + 8);
  memcpy(v16, *a2, 4 * v12);
  v14 = 0;
  v13 = 0;
  v15 = v16[0];
  for (result = BlueFin::GlSetIterator::operator++(&v12); v13 != v12; result = BlueFin::GlSetIterator::operator++(&v12))
  {
    if (v14 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v6 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v14;
    v7 = *v6;
    LODWORD(v6) = v6[1];
    v9[0] = v7;
    v10 = v6;
    v11 = v14;
    v8 = BlueFin::GlSignalIdArray::Get(*(a1 + 18792), v9);
    if (v8)
    {
      *(v8 + 273) = a3;
    }
  }

  return result;
}

BlueFin::SKFVector *BlueFin::GlPeNavUtil::ComputeRrateResidVec(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v2;
  v49 = v20;
  v21 = 0;
  v83[275] = *MEMORY[0x29EDCA608];
  do
  {
    v22 = &v83[v21 + 2];
    *v22 = 0;
    *(v22 + 1) = -1;
    *(v22 + 4) = 575;
    v22[2] = 0;
    v21 += 3;
  }

  while (v21 != 273);
  v82[0] = v83;
  v82[1] = 0x100000000;
  v83[1] = 0;
  v83[0] = 0;
  v80[0] = v81;
  v80[1] = 0x100000000;
  v81[1] = 0;
  v81[0] = 0;
  v75[0] = &v76;
  v75[1] = 0x400000000;
  v76 = 0;
  v72 = v74;
  v73 = 0x5B00000000;
  bzero(v74, 0x2E0uLL);
  v64[0] = v75;
  v64[1] = v10;
  v64[2] = v18;
  v65 = v8;
  v66 = 0x4C100000002;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0x4008000000000000;
  v59[0] = v82;
  v59[1] = v80;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0;
  v77 = *v6;
  v78 = *(v6 + 2);
  v79 = v16;
  v56[32] = 0;
  v57 = -1;
  v58 = 575;
  LODWORD(v50) = *(v12 + 8);
  memcpy(&v51, *v12, 4 * v50);
  HIDWORD(v50) = v51;
  BlueFin::GlSetIterator::operator++(&v50);
  if (BYTE1(v50) == v50)
  {
    v51 = 0x5B00000000;
    bzero(v52, 0x2E0uLL);
    v50 = v52;
    return BlueFin::SKFVectorDim<100>::SKFVectorDim(v49, &v50);
  }

  v23 = 0;
  do
  {
    if (WORD1(v50) >= 0x23FuLL)
    {
      v46 = "usIndex < NUM_SIGNAL_IDS";
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      v47 = "glsignalid.h";
      v48 = 578;
      goto LABEL_31;
    }

    v24 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v50);
    v25 = *v24;
    v26 = v24[1];
    v53[0] = *v24;
    v27 = SWORD1(v50);
    v54 = v26;
    v55 = WORD1(v50);
    if (BlueFin::GlPeNavUtil::PackSkfMeas_RR_SignalId(v19, v56, v53, v4))
    {
      if ((*(**(v19 + 16) + 16))(*(v19 + 16), v64, v59, v56, &BlueFin::GlSet128::BIT0))
      {
        BlueFin::GlSetBase::Remove(v12, v27);
        v28 = *(v19 + 8);
        v53[0] = v25;
        v54 = v26;
        v55 = v27;
        v29 = BlueFin::GlSignalIdArray::Get(*(v28 + 18792), v53);
        if (v29)
        {
          *(v29 + 273) = 39;
        }
      }

      else
      {
        v32 = *(v82[0] + 8) - *(v80[0] + 8);
        v33 = &v83[3 * ++v23 + 2];
        *(v33 - 1) = v32;
        *(v33 - 24) = v25;
        *(v33 - 5) = v26;
        *(v33 - 8) = v27;
        BlueFin::SKFVector::AddLen(&v72);
        v72[v73] = v32;
      }
    }

    else
    {
      BlueFin::GlSetBase::Remove(v12, v27);
      v30 = *(v19 + 8);
      v53[0] = v25;
      v54 = v26;
      v55 = v27;
      v31 = BlueFin::GlSignalIdArray::Get(*(v30 + 18792), v53);
      if (v31)
      {
        *(v31 + 273) = 42;
      }
    }

    BlueFin::GlSetIterator::operator++(&v50);
  }

  while (BYTE1(v50) != v50);
  v50 = v52;
  LODWORD(v51) = v23;
  HIDWORD(v51) = 91;
  if (v23 >= 0x5Cu)
  {
    v46 = "LEN >= len";
    DeviceFaultNotify("glpe_matrix.h", 497, "SKFVectorDim", "LEN >= len");
    v47 = "glpe_matrix.h";
    v48 = 497;
LABEL_31:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v47, v48, v46);
  }

  v34 = v73;
  bzero(v52, 0x2E0uLL);
  v50 = v52;
  if (v34 < 1)
  {
    v39 = 0.0;
    if (v23)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v35 = v72[1];
    if (v34 != 1)
    {
      v36 = v34 - 1;
      v37 = v72 + 2;
      do
      {
        v38 = *v37++;
        v35 = v35 + v38;
        --v36;
      }

      while (v36);
    }

    if (v23)
    {
      v39 = v35 / v34;
LABEL_23:
      v40 = 0;
      v41 = 0;
      do
      {
        v42 = &v83[3 * v40 + 2];
        v43 = v42[2];
        if (vabdd_f64(v43, v39) <= v14)
        {
          *&v50[8 * v41++ + 8] = v43;
        }

        else
        {
          BlueFin::GlSetBase::Remove(v12, *(v42 + 4));
          v44 = BlueFin::GlSignalIdArray::Get(*(*(v19 + 8) + 18792), &v83[3 * v40 + 2]);
          if (v44)
          {
            *(v44 + 273) = 33;
          }
        }

        ++v40;
      }

      while (v23 > v40);
    }
  }

  return BlueFin::SKFVectorDim<100>::SKFVectorDim(v49, &v50);
}

unsigned __int8 *BlueFin::GlPeNavMeasSelect::SelectPr(unsigned __int8 *this, const BlueFin::GlPeNavUtil *a2, const void **a3, int a4)
{
  v7 = this;
  if (!**a3)
  {
    v8 = *(a3 + 8);
    if (v8 < 2)
    {
      return this;
    }

    v9 = v8 - 1;
    v10 = *a3 + 4;
    while (!*v10++)
    {
      if (!--v9)
      {
        return this;
      }
    }
  }

  BlueFin::GlSetBase::GlSetBase(&v30, v31, 0x13u, a3);
  if ((*(v7 + 140) & 1) == 0)
  {
    BlueFin::GlPeNavMeasSelect::RemoveGhosts(v7, a2, a3, a4);
  }

  BlueFin::GlSetBase::GlSetBase(&v20, &v21, 0x13u, a3);
  v33 = &v35;
  v34 = 19;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  BlueFin::GlSetBase::OperatorBinaryInversion(&v20, &v33);
  BlueFin::GlSetBase::operator=(&v20, &v33);
  v22 = v36;
  v23 = v37;
  *v24 = *v38;
  *&v24[12] = *&v38[12];
  v21 = v35;
  BlueFin::GlSignalIdSet::setSignalIdLimits(&v20);
  BlueFin::GlSetBase::GlSetBase(&v25, &v26, 0x13u, &v30);
  v33 = &v35;
  v34 = 19;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  BlueFin::GlSetBase::OperatorBinaryAnd(&v25, &v33, &v20);
  BlueFin::GlSetBase::operator=(&v25, &v33);
  v27 = v36;
  v28 = v37;
  *v29 = *v38;
  *&v29[12] = *&v38[12];
  v26 = v35;
  BlueFin::GlSetBase::operator=(&v30, &v25);
  v31[1] = v27;
  v31[2] = v28;
  *v32 = *v29;
  *&v32[12] = *&v29[12];
  v31[0] = v26;
  BlueFin::GlPeMsmtMgr::SetPrCode(*(v7 + 8), &v30, 16);
  BlueFin::GlSetBase::GlSetBase(&v25, &v26, 0x13u, a3);
  BlueFin::GlPeNavMeasSelect::RemoveTimeFail(v7, a3);
  BlueFin::GlSetBase::GlSetBase(&v15, &v16, 0x13u, a3);
  v33 = &v35;
  v34 = 19;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  BlueFin::GlSetBase::OperatorBinaryInversion(&v15, &v33);
  BlueFin::GlSetBase::operator=(&v15, &v33);
  v17 = v36;
  v18 = v37;
  *v19 = *v38;
  *&v19[12] = *&v38[12];
  v16 = v35;
  BlueFin::GlSignalIdSet::setSignalIdLimits(&v15);
  BlueFin::GlSetBase::GlSetBase(&v20, &v21, 0x13u, &v25);
  v33 = &v35;
  v34 = 19;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  BlueFin::GlSetBase::OperatorBinaryAnd(&v20, &v33, &v15);
  BlueFin::GlSetBase::operator=(&v20, &v33);
  v22 = v36;
  v23 = v37;
  *v24 = *v38;
  *&v24[12] = *&v38[12];
  v21 = v35;
  BlueFin::GlSetBase::operator=(&v25, &v20);
  v27 = v22;
  v28 = v23;
  *v29 = *v24;
  *&v29[12] = *&v24[12];
  v26 = v21;
  BlueFin::GlPeMsmtMgr::SetPrCode(*(v7 + 8), &v25, 9);
  BlueFin::GlSetBase::GlSetBase(&v20, &v21, 0x13u, a3);
  BlueFin::GlPeNavMeasSelect::RemoveHighUra(v7, a3);
  BlueFin::GlSetBase::GlSetBase(&v12, v13, 0x13u, a3);
  v33 = &v35;
  v34 = 19;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  BlueFin::GlSetBase::OperatorBinaryInversion(&v12, &v33);
  BlueFin::GlSetBase::operator=(&v12, &v33);
  v13[1] = v36;
  v13[2] = v37;
  *v14 = *v38;
  *&v14[12] = *&v38[12];
  v13[0] = v35;
  BlueFin::GlSignalIdSet::setSignalIdLimits(&v12);
  BlueFin::GlSetBase::GlSetBase(&v15, &v16, 0x13u, &v20);
  v33 = &v35;
  v34 = 19;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v38, 0, sizeof(v38));
  BlueFin::GlSetBase::OperatorBinaryAnd(&v15, &v33, &v12);
  BlueFin::GlSetBase::operator=(&v15, &v33);
  v17 = v36;
  v18 = v37;
  *v19 = *v38;
  *&v19[12] = *&v38[12];
  v16 = v35;
  BlueFin::GlSetBase::operator=(&v20, &v15);
  v22 = v17;
  v23 = v18;
  *v24 = *v19;
  *&v24[12] = *&v19[12];
  v21 = v16;
  return BlueFin::GlPeMsmtMgr::SetPrCode(*(v7 + 8), &v20, 11);
}

unsigned __int8 *BlueFin::GlPeMsmtMgr::SetPrCode(uint64_t a1, uint64_t a2, char a3)
{
  v12 = *(a2 + 8);
  memcpy(v16, *a2, 4 * v12);
  v14 = 0;
  v13 = 0;
  v15 = v16[0];
  for (result = BlueFin::GlSetIterator::operator++(&v12); v13 != v12; result = BlueFin::GlSetIterator::operator++(&v12))
  {
    if (v14 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v6 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v14;
    v7 = *v6;
    LODWORD(v6) = v6[1];
    v9[0] = v7;
    v10 = v6;
    v11 = v14;
    v8 = BlueFin::GlSignalIdArray::Get(*(a1 + 18792), v9);
    if (v8)
    {
      *(v8 + 272) = a3;
    }
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeNavMeasSelect::RemoveTimeFail(BlueFin::GlPeNavMeasSelect *this, BlueFin::GlSignalIdSet *a2)
{
  v11 = *(a2 + 8);
  memcpy(v15, *a2, 4 * v11);
  v13 = 0;
  v12 = 0;
  v14 = v15[0];
  for (result = BlueFin::GlSetIterator::operator++(&v11); v12 != v11; result = BlueFin::GlSetIterator::operator++(&v11))
  {
    v5 = v13;
    if (v13 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v6 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v13;
    v7 = *v6;
    LODWORD(v6) = v6[1];
    v8[0] = v7;
    v9 = v6;
    v10 = v13;
    if (((*(**(this + 2) + 72))(*(this + 2), v8, 3) & 1) == 0)
    {
      BlueFin::GlSetBase::Remove(a2, v5);
    }
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeNavMeasSelect::RemoveHighUra(BlueFin::GlPeNavMeasSelect *this, BlueFin::GlSignalIdSet *a2)
{
  v11 = *(a2 + 8);
  memcpy(v15, *a2, 4 * v11);
  v13 = 0;
  v12 = 0;
  v14 = v15[0];
  for (result = BlueFin::GlSetIterator::operator++(&v11); v12 != v11; result = BlueFin::GlSetIterator::operator++(&v11))
  {
    v5 = v13;
    if (v13 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v6 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v13;
    v7 = *v6;
    LODWORD(v6) = v6[1];
    v8[0] = v7;
    v9 = v6;
    v10 = v13;
    if ((*(**(this + 2) + 40))(*(this + 2), v8) >= 200.0)
    {
      BlueFin::GlSetBase::Remove(a2, v5);
    }
  }

  return result;
}

double BlueFin::GlPeComputeZRH::GetUraM(uint64_t a1, unsigned __int8 *a2, int8x16_t a3, int8x16_t a4)
{
  v4 = *a2;
  if (((*(*(a1 + 48) + ((v4 >> 3) & 0x1C)) >> (v4 & 0x1F)) & 1) == 0)
  {
    return BlueFin::GlPeAsstMgr::GetUraM(*(a1 + 4272), a2, a3, a4);
  }

  a3.i32[0] = *(**(a1 + 288) + 104 * *(v4 + a1 + 95) + 88);
  return *a3.i64;
}

void BlueFin::GlPeNavGnssResidMon::RunBcMon(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t *a5, int a6)
{
  v94 = *MEMORY[0x29EDCA608];
  v88 = v90;
  v89 = 0x6400000000;
  bzero(v90, 0x328uLL);
  v85 = v87;
  v86 = 0x6400000000;
  bzero(v87, 0x328uLL);
  v13 = 0;
  v14 = 736;
  if (a6)
  {
    v14 = 112;
  }

  v15 = a1 + v14;
  v16 = *(v15 + 616);
  v17 = a2 - v16;
  if (v16 >= a2)
  {
    v17 = v16 - a2;
  }

  v18 = *(v15 + 608);
  v19 = a2 - v18;
  v20 = v18 >= a2;
  v21 = v18 - a2;
  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = v19;
  }

  if (v16 && v17 >> 5 <= 0x752)
  {
    BlueFin::GlSignalIdSet::GetSvIdSet(&v92, a5);
    v23 = 0;
    v24 = (v92 + 4 * v93 - 4);
    do
    {
      if (*v24)
      {
        v25 = *v24 - (((*v24 >> 1) & 0x5B6DB6DB) + ((*v24 >> 2) & 0x9249249));
        v23 = ((v25 + (v25 >> 3)) & 0xC71C71C7) + v23 - 63 * (((v25 + (v25 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v24;
    }

    while (v24 >= v92);
    v13 = (v23 & 0xFC) != 0;
  }

  if (v22 >= 0x5DC && !v13)
  {
    LODWORD(v38) = 0;
    *(v15 + 620) = 0;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = *a5;
    v30 = a4;
    do
    {
      v31 = *(v30 + 10);
      if (v31 == 575)
      {
        break;
      }

      if (v31 >= 0x23F)
      {
        v81 = "usIndex < NUM_SIGNAL_IDS";
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        v82 = "glsignalid.h";
        v83 = 578;
        goto LABEL_102;
      }

      if ((*(v29 + ((v31 >> 3) & 0x1FFC)) >> (v31 & 0x1F)))
      {
        v32 = 10;
        while (1)
        {
          v33 = *(v15 + v32);
          if (v33 == 575)
          {
            goto LABEL_31;
          }

          if (v33 == v31)
          {
            break;
          }

          v32 += 12;
          if (v32 == 610)
          {
            goto LABEL_31;
          }
        }

        if (*(v30 + 8) == 1)
        {
          if (v27 >= 0x32u)
          {
            v81 = "ucNumMeas < MAX_MACRO(GlPeNavGnssKFIf::MAX_DKFMEAS_PR, GlPeNavGnssKFIf::MAX_DKFMEAS_RR)";
            DeviceFaultNotify("glpe_navgnssresidmon.cpp", 277, "RunBcMon", "ucNumMeas < MAX_MACRO(GlPeNavGnssKFIf::MAX_DKFMEAS_PR, GlPeNavGnssKFIf::MAX_DKFMEAS_RR)");
            v82 = "glpe_navgnssresidmon.cpp";
            v83 = 277;
LABEL_102:
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v82, v83, v81);
          }

          *(&v92 + v27) = *(v30 + 4);
          *&v91[2 * v27++ + 50] = v31;
        }
      }

LABEL_31:
      v30 += 12;
      v20 = v28++ >= 0x63;
    }

    while (!v20);
    v84 = a3;
    v34 = v27;
    BlueFin::GlSortFloats(&v92, v27, v91, v12);
    if (v34 >= 6)
    {
      v38 = 6;
    }

    else
    {
      v38 = v34;
    }

    if (v34)
    {
      v39 = 0;
      do
      {
        v40 = *&v91[2 * v91[v39] + 50];
        v41 = 50;
        v42 = v15;
        do
        {
          v43 = *(v42 + 10);
          if (v43 == 575)
          {
            break;
          }

          if (v43 == v40)
          {
            v44 = 0;
            v45 = a4;
            while (*(v45 + 10) != v40)
            {
              v45 += 12;
              v20 = v44++ >= 0x31;
              if (v20)
              {
                goto LABEL_49;
              }
            }

            v46 = (*v45 - *v42);
            BlueFin::SKFVector::AddLen(&v88);
            *&v88[8 * v89] = v46;
            v47 = *v45;
            BlueFin::SKFVector::AddLen(&v85);
            v85[v86] = v47;
            break;
          }

          v42 += 12;
          --v41;
        }

        while (v41);
LABEL_49:
        ++v39;
      }

      while (v39 != v38);
    }

    if ((a6 & 1) != 0 && fabs(BlueFin::SKFVector::Median(&v85, v35, v36, v37)) < 15.0)
    {
      v48 = &v88;
    }

    else
    {
      v48 = &v85;
    }

    v49 = *(v48 + 2);
    *(v15 + 600) = BlueFin::SKFVector::Median(v48, v35, v36, v37);
    if (v49 < 3)
    {
      *(v15 + 620) = 0;
      a3 = v84;
    }

    else
    {
      v50 = BlueFin::GlPeNavGnssResidMon::Design::STUDENT_T_CRIT_VALUES[v49 - 2];
      if (a6)
      {
        v51 = 5.0;
      }

      else
      {
        v51 = 0.5;
      }

      v52 = sqrtf(v49);
      v53 = *(v48 + 2);
      if (v53 < 1)
      {
        v55 = 0.0;
        a3 = v84;
      }

      else
      {
        v54 = (*v48)[1];
        if (v53 == 1)
        {
          a3 = v84;
        }

        else
        {
          v56 = v53 - 1;
          v57 = *v48 + 2;
          a3 = v84;
          do
          {
            v58 = *v57++;
            v54 = v54 + v58;
            --v56;
          }

          while (v56);
        }

        v55 = v54 / v53;
      }

      v59 = v51 + v55;
      v60 = sqrt(BlueFin::SKFVector::Var(v48));
      v61 = v59 / v60;
      if ((v52 * v61) < -v50)
      {
        goto LABEL_75;
      }

      if (v53 < 1)
      {
        v66 = 0.0;
      }

      else
      {
        v62 = (*v48)[1];
        if (v53 != 1)
        {
          v63 = v53 - 1;
          v64 = *v48 + 2;
          do
          {
            v65 = *v64++;
            v62 = v62 + v65;
            --v63;
          }

          while (v63);
        }

        v66 = v62 / v53;
      }

      v67 = (v66 - v51) / v60;
      if ((v52 * v67) <= v50)
      {
        v73 = 0;
      }

      else
      {
LABEL_75:
        if (v86 >= 2)
        {
          v69 = fabs(v85[1]);
          LODWORD(v68) = 1;
          v70 = 2;
          do
          {
            v71 = fabs(v85[v70]);
            if (v69 > v71)
            {
              LODWORD(v68) = v70;
              v69 = v71;
            }

            ++v70;
          }

          while (v86 + 1 != v70);
          v68 = v68;
        }

        else
        {
          v68 = 1;
        }

        v72 = v85[v68];
        if (v72 < 0.0)
        {
          v72 = -v72;
        }

        v73 = v72 > v51;
      }

      *(v15 + 620) = v73;
    }
  }

  v74 = v38 - *(v15 + 612);
  *(v15 + 613) = v74 < -2;
  if (v74 <= -3)
  {
    *(v15 + 616) = a2;
  }

  *(v15 + 612) = v38;
  v76 = a3 < 0x5DC || v38 > 2;
  if (v76 || v13)
  {
    v77 = 0;
    *(v15 + 608) = a2;
    do
    {
      v78 = v15 + v77;
      v79 = *(a4 + v77);
      *(v78 + 8) = *(a4 + v77 + 8);
      *v78 = v79;
      v80 = 0.0;
      if (*(v15 + 620) == 1)
      {
        v80 = *(v15 + 600);
      }

      *v78 = *v78 - v80;
      v77 += 12;
    }

    while (v77 != 600);
  }
}

double BlueFin::SKFVector::Median(BlueFin::SKFVector *this, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = *(this + 2);
  if (v4 < 1)
  {
    return 0.0;
  }

  if (v4 >= 0x65)
  {
    DeviceFaultNotify("glpe_matrix.cpp", 1911, "Median", "sLen <= GL_CHANNELS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 1911, "sLen <= GL_CHANNELS");
  }

  v5 = *this;
  BlueFin::GlSortDoubles(*this + 8, *(this + 2), v7, a4);
  result = *(v5 + 8 * v7[v4 >> 1] + 8);
  if ((v4 & 1) == 0)
  {
    return (result + *(v5 + 8 * v7[(v4 >> 1) - 1] + 8)) * 0.5;
  }

  return result;
}

double BlueFin::SKFVector::Var(BlueFin::SKFVector *this)
{
  v1 = *(this + 2);
  if (v1 < 1)
  {
    return 0.0;
  }

  v2 = *this;
  v3 = *(*this + 8);
  if (v1 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = v1 + 1;
    v6 = v1 - 1;
    v7 = (v2 + 16);
    do
    {
      v8 = *v7++;
      v3 = v3 + v8;
      --v6;
    }

    while (v6);
    v3 = v3 / v1;
  }

  v9 = v4 - 1;
  v10 = (v2 + 8);
  v11 = 0.0;
  do
  {
    v12 = *v10++;
    v11 = v11 + (v12 - v3) * (v12 - v3);
    --v9;
  }

  while (v9);
  result = 0.0;
  if (v1 != 1)
  {
    return v11 / (v1 - 1);
  }

  return result;
}

void BlueFin::GlPeNavUtil::ComputeRangeResidVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  v10 = MEMORY[0x2A1C7C4A8](a1, a2);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v10;
  v33 = v32;
  v76[695] = *MEMORY[0x29EDCA608];
  if (v34)
  {
    v35 = 1225;
  }

  else
  {
    v35 = 1217;
  }

  if (!v12)
  {
    v35 &= ~0x40u;
  }

  if (a10)
  {
    v36 = v35;
  }

  else
  {
    v36 = v35 & 0x3FF;
  }

  v50 = v11;
  if (BlueFin::GlSetBase::Cnt(v11) >= 0x65)
  {
    v46 = "otThisSignals.Cnt() <= GL_CHANNELS";
    DeviceFaultNotify("glpe_navutil.cpp", 716, "ComputeRangeResidVec", "otThisSignals.Cnt() <= GL_CHANNELS");
    v47 = "glpe_navutil.cpp";
    v48 = 716;
    goto LABEL_27;
  }

  v37 = v76;
  v38 = 5600;
  do
  {
    *(v37 - 8) = 0;
    *(v37 - 1) = -1;
    *v37 = 575;
    v37 += 28;
    v38 -= 56;
  }

  while (v38);
  LODWORD(v72) = *(v50 + 8);
  memcpy(&v73, *v50, 4 * v72);
  HIDWORD(v72) = v73;
  BlueFin::GlSetIterator::operator++(&v72);
  v49 = v16;
  v39 = 0;
  if (BYTE1(v72) != v72)
  {
    while (1)
    {
      v40 = WORD1(v72);
      if (WORD1(v72) >= 0x23FuLL)
      {
        break;
      }

      v41 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v72);
      v42 = *v41;
      LODWORD(v41) = v41[1];
      LOBYTE(v69) = v42;
      HIDWORD(v69) = v41;
      LOWORD(v70) = WORD1(v72);
      if (BlueFin::GlPeNavUtil::PackSkfMeas_PR_SignalId(v31, &v75[7 * v39], &v69, a9))
      {
        if (LODWORD(v75[7 * v39 + 3]) == -1)
        {
          v36 |= 0x40000u;
        }

        ++v39;
      }

      else
      {
        BlueFin::GlSetBase::Remove(v50, v40);
      }

      BlueFin::GlSetIterator::operator++(&v72);
      if (BYTE1(v72) == v72)
      {
        goto LABEL_20;
      }
    }

    v46 = "usIndex < NUM_SIGNAL_IDS";
    DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
    v47 = "glsignalid.h";
    v48 = 578;
LABEL_27:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v47, v48, v46);
  }

LABEL_20:
  v72 = v74;
  v73 = 0x6400000000;
  bzero(v74, 0x328uLL);
  v69 = v71;
  v70 = 0x6400000000;
  bzero(v71, 0x328uLL);
  v67[0] = v68;
  v67[1] = 0x6400000000;
  bzero(v68, 0x328uLL);
  v55[0] = v67;
  v55[1] = v20;
  v55[2] = v30;
  v56 = v18;
  v57 = 0;
  v58 = v36;
  v60 = 0;
  v61 = 0;
  v59 = 0;
  v62 = v28;
  v63 = v26;
  v64 = v24;
  v65 = v22;
  v66 = xmmword_298A44280;
  v54[0] = &v72;
  v54[1] = &v69;
  v54[2] = 0;
  v54[3] = 0;
  v54[4] = v14;
  v54[5] = v49;
  memset(&v54[6], 0, 24);
  v51 = v53;
  v52 = 4;
  v53[1] = 0;
  v53[0] = 0;
  BlueFin::GlSetBase::SetAllLower(&v51, v39);
  v43 = (*(**(v31 + 16) + 16))(*(v31 + 16), v55, v54, v75, &v51);
  v33[1] = 0x6400000000;
  bzero(v33 + 2, 0x328uLL);
  *v33 = v33 + 2;
  if (v43)
  {
    bzero(*v50, ((4 * *(v50 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  }

  else if (v39)
  {
    v44 = v39;
    v45 = 8;
    do
    {
      BlueFin::SKFVector::AddLen(v33);
      *(*v33 + v45) = *&v72[v45] - *&v69[v45];
      v45 += 8;
      --v44;
    }

    while (v44);
  }
}

void **BlueFin::GlSetBase::SetAllLower(void **this, unsigned __int16 a2)
{
  v2 = a2;
  v3 = (a2 >> 5);
  if (v3 > *(this + 8))
  {
    DeviceFaultNotify("glutl_set.cpp", 165, "SetAllLower", "ucNumFullLongs <= m_ucUlongSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 165, "ucNumFullLongs <= m_ucUlongSize");
  }

  v4 = this;
  if ((a2 >> 5))
  {
    this = memset(*this, 255, 4 * (a2 >> 5));
  }

  *(*v4 + v3) |= ~(-1 << v2);
  return this;
}

void BlueFin::GlPeNavUtil::ComputeL5BiasFromMeas(uint64_t a1, float *a2, float *a3, double *a4, uint64_t *a5, unsigned int a6, uint64_t a7, unsigned int a8)
{
  v57 = v59;
  v58 = 8;
  memset(v59, 0, 32);
  if (a8)
  {
    v11 = *a5;
    v12 = a8;
    v13 = (a7 + 44);
    v14 = a8;
    do
    {
      if (!*v13 && *(v13 - 2) == 2 && ((*(v11 + 4 * (*(v13 - 2) >> 5)) >> (*(v13 - 1) & 0x1F)) & 1) != 0)
      {
        *&v59[(*(v13 - 12) >> 3) & 0x1C] |= 1 << *(v13 - 12);
      }

      v13 += 14;
      --v14;
    }

    while (v14);
    v15 = 0;
    v54 = v56;
    v55 = 8;
    memset(v56, 0, 32);
    v16 = (a7 + 32);
    v17 = a8;
    do
    {
      if (!*(v16 + 3))
      {
        v18 = *(v16 + 1);
        if (v18 == 3 || v18 == 0) && ((*(*a5 + 4 * (*(v16 + 4) >> 5)) >> (*(v16 + 4) & 0x1F)))
        {
          v20 = *v16;
          v21 = v20 >> 5;
          v22 = v20 & 0x1F;
          if (((*&v57[4 * (v20 >> 5)] >> (v20 & 0x1F)) & 1) != 0 && *(BlueFin::GlPeMsmtMgr::GetPeMeas(*(a1 + 8), v16, 0) + 104) >= 16)
          {
            *&v54[4 * v21] |= 1 << v22;
            ++v15;
          }
        }
      }

      v16 += 56;
      --v17;
    }

    while (v17);
    if (v15 >= 3u)
    {
      for (i = 0; i != v12; ++i)
      {
        v24 = a7 + 56 * i;
        if (!*(v24 + 44) && *(v24 + 36) == 2 && ((*&v54[(*(v24 + 32) >> 3) & 0x1C] >> (*(v24 + 32) & 0x1F)) & 1) != 0)
        {
          MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*(a1 + 8), (v24 + 32), 0, 0);
          if (MeMeas)
          {
            if ((*(MeMeas + 5) - 1) <= 1)
            {
              v26 = (a7 + 32);
              v27 = v12;
              while (1)
              {
                if (!*(v26 + 3) && *(v24 + 32) == *v26)
                {
                  v28 = *(v26 + 1);
                  if (v28 == 3 || v28 == 0)
                  {
                    v30 = BlueFin::GlPeMsmtMgr::GetMeMeas(*(a1 + 8), v26, 0, 0);
                    if (v30)
                    {
                      if ((*(v30 + 5) - 1) <= 1)
                      {
                        break;
                      }
                    }
                  }
                }

                v26 += 56;
                if (!--v27)
                {
                  goto LABEL_40;
                }
              }

              v51 = v53;
              v52 = 19;
              memset(v53, 0, sizeof(v53));
              v53[*(v26 + 4) >> 5] |= 1 << *(v26 + 4);
              v53[*(v24 + 40) >> 5] |= 1 << *(v24 + 40);
              v31 = a1 + *(*a1 - 24);
              v47 = *(v31 + 8);
              v48 = *(v31 + 24);
              BlueFin::GlPeNavUtil::ComputeRangeResidVec(a1, &v51, &v47, a6, 0, 0, 0, 1, 1, 1);
              if (v50 == 2)
              {
                v32 = *(v49 + 16);
                v33 = *(v49 + 8);
                v34 = v32 - v33;
                if (*(v24 + 40) < *(v26 + 4))
                {
                  v34 = -v34;
                }

                v35 = *a2;
                v36 = *a2;
                v37 = *a4 * *a3;
                v38 = 1.0 / (*(v26 - 3) * *(v26 - 3) + *(v24 + 8) * *(v24 + 8));
                v39 = *a4 + v38;
                *a4 = v39;
                v40 = v34;
                v41 = v36 + v38 / v39 * (v34 - v36);
                v42 = v38 * (v34 - v35);
                *&v38 = v41;
                *a2 = *&v38;
                *&v42 = (v37 + v42 * (v40 - v41)) / v39;
                *a3 = *&v42;
              }
            }
          }
        }

LABEL_40:
        ;
      }
    }
  }
}

uint64_t BlueFin::GlPeLsqSubsets::RunLsqSubset(uint64_t *a1, uint64_t a2, char a3, int a4, uint64_t a5, int a6)
{
  memset(v63, 0, 42);
  v64 = &v66;
  v65 = 19;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  memset(v69, 0, sizeof(v69));
  v70 = v72;
  v71 = 8;
  memset(v72, 0, 32);
  v73 = xmmword_298A41DA0;
  v74 = vdup_n_s32(0x42C60000u);
  v75 = 99.0;
  v76 = 0;
  v78 = 0;
  v77 = 0.0;
  v80 = 0;
  v79 = 0;
  v81 = &v83;
  v82 = 8;
  v83 = 0u;
  v84 = 0u;
  v85 = 0;
  v10 = *(a1 + 12);
  if ((v10 & 0x80) != 0)
  {
    v11 = 2049;
  }

  else
  {
    v11 = 2048;
  }

  if (a6)
  {
    v12 = 0x2000000;
  }

  else
  {
    v12 = 0;
  }

  v13 = a1[11];
  v14 = *(a1 + 24);
  v56[0] = a2;
  v56[1] = 0;
  v56[2] = 0;
  v56[3] = a1 + 8;
  v56[4] = v13;
  v57 = v14;
  v58 = a3;
  v59 = v12 & 0xFFEAC9FF | ((v10 & 3) << 9) & 0xCFFF | (((v10 >> 2) & 3) << 12) & 0xFFEAFFFF | (((v10 >> 4) & 1) << 16) & 0xFFEBFFFF | (((v10 >> 5) & 1) << 18) & 0xFFEFFFFF | (((v10 >> 6) & 1) << 20) | (v10 >> 4) & 0x30 | v11;
  v60 = 0;
  BlueFin::GlSetBase::GlSetBase(&v61, v62, 8u, a1 + 13);
  v60 = a1[7];
  v17 = BlueFin::GlPeLsq::LsPos((a1 + 1), v56, v63, v15, v16);
  v18 = *(&v73 + 1);
  if (a5 && v17 && *(&v73 + 1) < 50.0)
  {
    *(a5 + 137) = 1;
    *(a5 + 136) = HIBYTE(v76);
    v19 = *&v79;
    v20 = v63[1];
    *(a5 + 88) = v63[0];
    *(a5 + 104) = v20;
    *(a5 + 120) = *&v63[2];
    *(a5 + 128) = v19;
    BlueFin::GlSetBase::operator=(a5, &v64);
    v21 = v66;
    *(a5 + 28) = v67;
    v22 = v69[0];
    *(a5 + 44) = v68;
    *(a5 + 60) = v22;
    *(a5 + 72) = *(v69 + 12);
    *(a5 + 12) = v21;
    v18 = *(&v73 + 1);
  }

  v23 = 0;
  v24 = BYTE1(v76);
  if (a4 && v18 >= 15.0)
  {
    v23 = (*(a1 + 49) & 4) == 0;
  }

  if (BYTE1(v76) && !v23)
  {
    v46 = &v48;
    v47 = 19;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    memset(v51, 0, sizeof(v51));
    v44 = v63[0];
    v45 = *&v63[1];
    BlueFin::GlSetBase::operator=(&v46, &v64);
    v49 = v67;
    v50 = v68;
    *v51 = v69[0];
    *&v51[12] = *(v69 + 12);
    v48 = v66;
    *&v52 = __PAIR64__(v74.u32[0], DWORD1(v73));
    *(&v52 + 1) = vrev64_s32(vcvt_f32_f64(*(&v63[1] + 8)));
    RngUncMetric = BlueFin::stLsPosState::GetRngUncMetric(v63);
    *&RngUncMetric = RngUncMetric * *(&v73 + 1);
    LODWORD(v53) = LODWORD(RngUncMetric);
    v26 = BlueFin::stLsPosState::GetRngUncMetric(v63);
    *&v26 = v26 * *v74.i32;
    DWORD1(v53) = LODWORD(v26);
    v27 = BlueFin::stLsPosState::GetRngUncMetric(v63);
    *&v27 = v27 * *(&v73 + 2);
    DWORD2(v53) = LODWORD(v27);
    v28 = BlueFin::stLsPosState::GetRngUncMetric(v63);
    *&v28 = v28 * *(&v73 + 3);
    HIDWORD(v53) = LODWORD(v28);
    v29 = BlueFin::stLsPosState::GetRngUncMetric(v63);
    *&v29 = v29 * *&v74.i32[1];
    LODWORD(v54) = LODWORD(v29);
    v30 = BlueFin::stLsPosState::GetRngUncMetric(v63);
    *&v30 = v30 * v75;
    DWORD1(v54) = LODWORD(v30);
    v31 = *(&v79 + 1);
    *(&v54 + 1) = v79;
    v55 = v85;
    if (*(a1 + 49))
    {
      v32 = v77 * *&v52;
      *&v53 = v32;
    }

    if (v60 && *(v60 + 72) == 1)
    {
      v33 = v77;
      if (*(&v79 + 1) > v33)
      {
        v31 = v77;
      }

      *&v53 = *&v52 * v31;
    }

    if (a6)
    {
      BlueFin::GlSetBase::operator=((a1 + 13), &v81);
      v34 = v84;
      *(a1 + 116) = v83;
      *(a1 + 132) = v34;
    }

    v35 = *a1;
    v36 = *(v35 + 8);
    if (v36 >= *(v35 + 16))
    {
      DeviceFaultNotify("glpe_navutil.cpp", 184, "Submit", "m_potWritePtr < m_potBufEnd");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navutil.cpp", 184, "m_potWritePtr < m_potBufEnd");
    }

    *v36 = v44;
    *(v36 + 16) = v45;
    BlueFin::GlSetBase::operator=(v36 + 24, &v46);
    *(v36 + 36) = v48;
    v37 = v49;
    v38 = v50;
    v39 = *v51;
    *(v36 + 96) = *&v51[12];
    *(v36 + 84) = v39;
    *(v36 + 68) = v38;
    *(v36 + 52) = v37;
    v40 = v52;
    v41 = v53;
    v42 = v54;
    *(v36 + 160) = v55;
    *(v36 + 128) = v41;
    *(v36 + 144) = v42;
    *(v36 + 112) = v40;
    *(v35 + 8) += 168;
  }

  return v24;
}

BOOL BlueFin::GlPeLsq::LsPosInit(BlueFin::GlSignalIdArray ***a1, uint64_t a2, uint64_t *a3, _BYTE *a4, uint64_t a5, double a6, int8x16_t a7)
{
  v7 = a5;
  v8 = a1;
  v10 = *(a2 + 8);
  v9 = *(a2 + 16);
  if (v10)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    if (v9)
    {
      if (v10)
      {
        if (a1[2])
        {
          v12 = *(a2 + 24);
          v13 = *(v10 + 8808);
          BlueFin::GlSetBase::GlSetBase(&v136, v138, 0x13u, *a2);
          v128 = v137;
          memcpy(&v130, v136, 4 * v137);
          v129 = v130;
          BlueFin::GlSetIterator::operator++(&v128);
          if (BYTE1(v128) == v128)
          {
            LOBYTE(v14) = 0;
LABEL_10:
            v15 = a1[2];
            if (v15)
            {
              *(v15 + 48) = 1;
              v15[1] = 0x4049000000000000;
              *(v15 + 11) = 3;
              v16 = v15 + 11;
              *(v15 + 7) = -1;
              *v15 = *(v12 + 16);
              v17 = *v9;
              v18 = *(v15 + 1);
              *v7 = *v15;
              *(v7 + 16) = v18;
              if (v15 != v7)
              {
                *(v7 + 32) = *(v15 + 32);
                *(v7 + 36) = *(v15 + 9);
                *(v7 + 40) = *(v15 + 20);
              }

              v19 = *v16;
              *(v7 + 47) = *(v16 + 3);
              *(v7 + 44) = v19;
              *(v7 + 16) = v17;
              LOBYTE(v14) = v14 + 1;
            }
          }

          else
          {
            v117 = v12;
            v14 = 0;
            v67 = 0.0;
            v68.f64[0] = NAN;
            v68.f64[1] = NAN;
            v122 = vnegq_f64(v68);
            do
            {
              v69 = HIWORD(v128);
              if (HIWORD(v128) > 0x23EuLL)
              {
                goto LABEL_163;
              }

              v70 = v14;
              v71 = *(v10 + 8808);
              v72 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(v128);
              v73 = *v72;
              v74 = 91;
              while (*v71 != v73)
              {
                v71 += 96;
                if (!--v74)
                {
                  goto LABEL_89;
                }
              }

              BlueFin::GlSatAid::operator=(v13, v71);
LABEL_89:
              v75 = vcvtmd_s64_f64(*(v13 + 32) * -1000.0);
              v76 = v72[1];
              LOBYTE(v126) = v73;
              HIDWORD(v126) = v76;
              v127 = v69;
              MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v9, &v126, 0, 0);
              v78.i32[0] = *v9;
              *v78.i64 = v78.u64[0] + *(MeMeas + 8) * -1000.0;
              *v78.i64 = *v78.i64 - floor(*v78.i64) + v75;
              *v79.i64 = *v78.i64 + *(v13 + 32) * 1000.0;
              if (v70)
              {
                v80 = v122;
                if (vabdd_f64(*v79.i64, v67) > 0.5)
                {
                  if (*v79.i64 <= v67)
                  {
                    *v78.i64 = *v78.i64 + 1.0;
                  }

                  else
                  {
                    *v78.i64 = *v78.i64 + -1.0;
                  }
                }
              }

              else
              {
                v67 = *v78.i64 + *(v13 + 32) * 1000.0;
                v80 = v122;
              }

              *(v7 + 8) = 0;
              *(v7 + 20) = 0;
              *(v7 + 49) = 0;
              *v79.i64 = *v78.i64 - trunc(*v78.i64);
              *&v81.f64[0] = vbslq_s8(v80, v79, v78).u64[0];
              v81.f64[1] = *(MeMeas + 24);
              v82 = vmulq_f64(v81, xmmword_298A43E30);
              *v7 = v82;
              *(v7 + 44) = 0;
              *(v7 + 16) = *v9;
              *v82.i64 = *v78.i64 + trunc(*v78.i64 * 2.32830644e-10) * -4294967300.0;
              v83 = vbslq_s8(v80, v82, v78);
              if (*v78.i64 > 4294967300.0)
              {
                v78.i64[0] = v83.i64[0];
              }

              if (*v78.i64 < -4294967300.0)
              {
                *v83.i64 = -*v78.i64;
                *v78.i64 = -(*v78.i64 - trunc(*v78.i64 * -2.32830644e-10) * -4294967300.0);
                *v78.i64 = -*vbslq_s8(v80, v78, v83).i64;
              }

              if (*v78.i64 < 0.0)
              {
                v84 = --*v78.i64;
              }

              else
              {
                v84 = *v78.i64;
              }

              *(v7 + 24) = v84;
              *(v7 + 28) = -1;
              *(v7 + 48) = 1;
              *(v7 + 32) = v73;
              *(v7 + 36) = v76;
              *(v7 + 40) = v69;
              *(*a3 + ((v69 >> 3) & 0x1FFC)) |= 1 << v69;
              if (v70 >= 0xBu)
              {
                LOBYTE(v14) = 12;
                goto LABEL_151;
              }

              v14 = v70 + 1;
              v7 += 56;
              BlueFin::GlSetIterator::operator++(&v128);
            }

            while (BYTE1(v128) != v128);
            v12 = v117;
            if (v70 <= 2u)
            {
              goto LABEL_10;
            }
          }

          goto LABEL_151;
        }

        v114 = "m_potAlMeas != nullptr";
        DeviceFaultNotify("glpe_lsq.cpp", 431, "getGeoFenceMeasForLsPos", "m_potAlMeas != nullptr");
        v115 = "glpe_lsq.cpp";
        v116 = 431;
      }

      else
      {
        v114 = "pAcqAsst";
        DeviceFaultNotify("glpe_lsq.cpp", 554, "LsPosInit", "pAcqAsst");
        v115 = "glpe_lsq.cpp";
        v116 = 554;
      }

LABEL_164:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v115, v116, v114);
    }

    v36 = *a2;
    v37 = *(a2 + 56);
    if (v37 && *v37 == 1 && *(v37 + 64) >= 2)
    {
      v38 = *(v37 + 8);
      v39 = *(v37 + 16);
      v40 = (a5 + 50);
      v41 = *(v37 + 32);
      v42 = 1;
      do
      {
        *(v40 - 42) = 0;
        *(v40 - 30) = 0xFFFFFFFF00000000;
        *(v40 - 22) = -1;
        *v40 = 0;
        *(v40 - 18) = 0;
        *(v40 - 14) = -1;
        *(v40 - 5) = 575;
        v43 = v42 & 1;
        if (v42)
        {
          v44 = 8;
        }

        else
        {
          v44 = 9;
        }

        *(v40 - 6) = v44;
        if (v43)
        {
          v45 = v38;
        }

        else
        {
          v45 = v39;
        }

        *(v40 - 50) = v45;
        *(v40 - 34) = **a1;
        *(v40 - 42) = v41;
        *(v40 - 1) = 1;
        v40 += 56;
        v42 = 0;
      }

      while (v43);
      v7 = a5 + 112;
      *(v37 + 72) = 1;
      v120 = ((*(a2 + 49) & 0x10) == 0 || (v106 = a1[2], *(v106 + 48) == 1) && *(v106 + 1) > *(v37 + 56)) && *(v37 + 24) > -999.0 && *(v37 + 56) > 0.0;
      LOBYTE(v14) = 2;
    }

    else
    {
      v120 = 0;
      LOBYTE(v14) = 0;
    }

    v121 = v37;
    LODWORD(v136) = *(v36 + 8);
    memcpy(&v137, *v36, 4 * v136);
    HIDWORD(v136) = v137;
    BlueFin::GlSetIterator::operator++(&v136);
    if (BYTE1(v136) != v136)
    {
      while (1)
      {
        v46 = WORD1(v136);
        if (WORD1(v136) >= 0x23FuLL)
        {
          break;
        }

        v47 = *v8;
        v48 = 1 << (BYTE2(v136) & 0x1F);
        if ((v48 & *((*v8)[1] + (WORD1(v136) >> 5))) != 0)
        {
          v49 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v136);
          v50 = v49[1];
          v51 = *v49;
          LOBYTE(v128) = *v49;
          v129 = v50;
          LOWORD(v130) = WORD1(v136);
          PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(v47, &v128, 0);
          v53 = *(a2 + 48);
          if ((v53 & 0x400000) != 0 && ((v54 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(PeMeas + 44) - *(PeMeas + 44) + BlueFin::GlSvId::s_aucSvId2gnss[*(PeMeas + 40)]], v55 = v54 > 8, v56 = (1 << v54) & 0x134, !v55) ? (v57 = v56 == 0) : (v57 = 1), v57) || (v53 & 0x800000) != 0 && ((v58 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(PeMeas + 44) - *(PeMeas + 44) + BlueFin::GlSvId::s_aucSvId2gnss[*(PeMeas + 40)]], v58 != 11) ? (v59 = v58 == 0) : (v59 = 1), !v59))
          {
            v8 = a1;
          }

          else
          {
            LOBYTE(v128) = v51;
            v129 = v50;
            LOWORD(v130) = v46;
            v8 = a1;
            if ((v48 & *((*a1)[1] + (v46 >> 5))) != 0)
            {
              v60 = BlueFin::GlPeMsmtMgr::GetPeMeas(*a1, &v128, 0);
              *v7 = 0;
              *(v7 + 8) = 0;
              *(v7 + 20) = 0xFFFFFFFF00000000;
              *(v7 + 28) = -1;
              *(v7 + 48) = 0;
              *(v7 + 50) = 0;
              *(v7 + 32) = 0;
              *(v7 + 36) = -1;
              *(v7 + 40) = 575;
              *(v7 + 44) = 0;
              v61 = *a1;
              *(v7 + 16) = **a1;
              v62 = v128;
              if ((v7 + 32) != &v128)
              {
                *(v7 + 32) = v128;
                *(v7 + 36) = v129;
                *(v7 + 40) = v130;
              }

              if ((v62 - 33) > 0x12)
              {
                *v7 = *(v60 + 24);
                v63 = *(v60 + 52);
              }

              else
              {
                *v7 = *v60 * 299792.458;
                v63 = *(BlueFin::GlPeMsmtMgr::GetMeMeas(v61, &v128, 0, 0) + 24) * 299792458.0;
              }

              *(v7 + 8) = v63;
              *(v7 + 48) = 1;
              v64 = *(v60 + 88);
              *(v7 + 24) = v64;
              if (v64 != -1 || (*(a2 + 50) & 1) != 0)
              {
                if (WORD1(v136) >= 0x23Fu)
                {
                  break;
                }

                *(*a3 + ((WORD1(v136) >> 3) & 0x1FFC)) |= 1 << SBYTE2(v136);
                v14 = (v14 + 1);
                v7 += 56;
                if (v14 > 15)
                {
                  goto LABEL_78;
                }
              }
            }
          }
        }

        BlueFin::GlSetIterator::operator++(&v136);
        if (BYTE1(v136) == v136)
        {
          goto LABEL_78;
        }
      }

LABEL_163:
      v114 = "usIndex < NUM_SIGNAL_IDS";
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      v115 = "glsignalid.h";
      v116 = 578;
      goto LABEL_164;
    }

LABEL_78:
    v65 = *(a2 + 48);
    if ((v65 & 0x2000) != 0)
    {
      if ((v65 & 0x200) != 0)
      {
        v85 = 4;
      }

      else
      {
        v85 = 3;
      }

      v66 = v121;
      if (v85 < v14)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v66 = v121;
      if ((v65 & 0x100) != 0 || (v14 - 3) > 0xCu)
      {
        goto LABEL_117;
      }
    }

    if ((v65 & 0x1400) == 0x1000)
    {
      v86 = v8[2];
      if (!v86)
      {
        v114 = "m_potAlMeas != nullptr";
        DeviceFaultNotify("glpe_lsq.cpp", 190, "PackSkfMeas_AL", "m_potAlMeas != nullptr");
        v115 = "glpe_lsq.cpp";
        v116 = 190;
        goto LABEL_164;
      }

      if (*(v86 + 48) == 1 && *(v86 + 1) < 100.0)
      {
        v87 = **v8;
        v88 = *(v86 + 1);
        *v7 = *v86;
        *(v7 + 16) = v88;
        if (v86 != v7)
        {
          *(v7 + 32) = *(v86 + 32);
          *(v7 + 36) = *(v86 + 9);
          *(v7 + 40) = *(v86 + 20);
        }

        v89 = *(v86 + 11);
        *(v7 + 47) = *(v86 + 47);
        *(v7 + 44) = v89;
        *(v7 + 16) = v87;
        v7 += 56;
        LOBYTE(v14) = v14 + 1;
      }
    }

LABEL_117:
    if (v66)
    {
      if (*v66 == 1 && v14 <= 14 && *(v66 + 64) <= 1)
      {
        v90 = *(v66 + 8);
        v91 = *(v66 + 16);
        v92 = (v7 + 50);
        v93 = *(v66 + 32);
        v94 = 1;
        do
        {
          *(v92 - 42) = 0;
          *(v92 - 30) = 0xFFFFFFFF00000000;
          *(v92 - 22) = -1;
          *v92 = 0;
          *(v92 - 18) = 0;
          *(v92 - 14) = -1;
          *(v92 - 5) = 575;
          v95 = v94 & 1;
          if (v94)
          {
            v96 = 8;
          }

          else
          {
            v96 = 9;
          }

          *(v92 - 6) = v96;
          if (v95)
          {
            v97 = v90;
          }

          else
          {
            v97 = v91;
          }

          *(v92 - 50) = v97;
          *(v92 - 34) = **a1;
          *(v92 - 42) = v93;
          *(v92 - 1) = 1;
          v92 += 56;
          v94 = 0;
        }

        while (v95);
        LOBYTE(v14) = v14 + 2;
        *(v66 + 72) = 1;
        if ((*(a2 + 49) & 0x10) != 0 && ((v107 = a1[2], *(v107 + 48) != 1) || *(v107 + 1) <= *(v66 + 56)) || *(v66 + 24) <= -999.0)
        {
          v98 = 0;
LABEL_150:
          *(v66 + 73) = v98;
          goto LABEL_151;
        }

        v7 += 112;
        v120 = *(v66 + 56) > 0.0;
      }

      v98 = 0;
      if (!v120 || v14 >= 15)
      {
        goto LABEL_150;
      }
    }

    else
    {
      v99 = v120;
      if (v14 >= 15)
      {
        v99 = 0;
      }

      if (!v99)
      {
        goto LABEL_151;
      }
    }

    v100 = a1[2];
    *(v100 + 48) = 1;
    v101 = *(v66 + 56);
    *(v100 + 1) = v101;
    *(v100 + 11) = 3;
    v102 = v100 + 11;
    *(v100 + 7) = -1;
    *v100 = *(v66 + 24);
    if (v101 >= 100.0)
    {
      goto LABEL_151;
    }

    v103 = **a1;
    v104 = *(v100 + 1);
    *v7 = *v100;
    *(v7 + 16) = v104;
    if (v100 != v7)
    {
      *(v7 + 32) = *(v100 + 32);
      *(v7 + 36) = *(v100 + 9);
      *(v7 + 40) = *(v100 + 20);
    }

    v105 = *v102;
    *(v7 + 47) = *(v102 + 3);
    *(v7 + 44) = v105;
    *(v7 + 16) = v103;
    LOBYTE(v14) = v14 + 1;
    v98 = 1;
    goto LABEL_150;
  }

  if (!a1[3])
  {
    v114 = "m_pGpsEphMgr != nullptr";
    DeviceFaultNotify("glpe_lsq.cpp", 376, "getAsstMeasForLsPos", "m_pGpsEphMgr != nullptr");
    v115 = "glpe_lsq.cpp";
    v116 = 376;
    goto LABEL_164;
  }

  v20 = 0;
  LOBYTE(v14) = 0;
  v21 = *(a2 + 48);
  v22 = 91;
  v24.n128_u64[0] = -1;
  v24.n128_u64[1] = -1;
  v23 = vnegq_f64(v24);
  v24.n128_u64[1] = 0x41B1DE784A000000;
  v119 = v23;
  do
  {
    v25 = *(v10 + 8808);
    if (*(v25 + v20) - 1 > 0xBB)
    {
      break;
    }

    if ((v21 & 0x4000) != 0)
    {
      goto LABEL_21;
    }

    v26 = a1[3];
    LOBYTE(v136) = *(v25 + v20);
    v27 = *(v10 + 36);
    v24.n128_f64[0] = v27;
    if (v27 <= 0xFF9222FE)
    {
      v24.n128_f64[0] = v27;
    }

    v28 = (*(*v26 + 8))(v26, &v136, 1, v24);
    v23 = v119;
    if (!v28)
    {
LABEL_21:
      v24.n128_f64[0] = *(v25 + v20 + 32) * -1000.0;
      *(v7 + 8) = 0;
      *(v7 + 20) = 0;
      *(v7 + 49) = 0;
      *(v7 + 32) = 0;
      *a7.i64 = v24.n128_f64[0] - trunc(v24.n128_f64[0]);
      *&v29.f64[0] = vbslq_s8(v23, a7, v24).u64[0];
      v29.f64[1] = *(v25 + v20 + 40);
      v30 = vmulq_f64(v29, xmmword_298A43E30);
      *v7 = v30;
      *(v7 + 44) = 0;
      *(v7 + 16) = *(v10 + 36);
      *v30.i64 = v24.n128_f64[0] + trunc(v24.n128_f64[0] * 2.32830644e-10) * -4294967300.0;
      a7 = vbslq_s8(v23, v30, v24);
      if (v24.n128_f64[0] > 4294967300.0)
      {
        v24.n128_f64[0] = *a7.i64;
      }

      if (v24.n128_f64[0] < -4294967300.0)
      {
        *a7.i64 = -v24.n128_f64[0];
        v24.n128_f64[0] = -(v24.n128_f64[0] - trunc(v24.n128_f64[0] * -2.32830644e-10) * -4294967300.0);
        v24 = vbslq_s8(v23, v24, a7);
        v24.n128_f64[0] = -v24.n128_f64[0];
      }

      if (v24.n128_f64[0] < 0.0)
      {
        v31 = --v24.n128_f64[0];
      }

      else
      {
        v31 = v24.n128_f64[0];
      }

      *(v7 + 24) = v31;
      *(v7 + 28) = 0;
      *(v7 + 48) = 1;
      v32 = *(v25 + v20);
      if ((v32 - 189) >= 0xFFFFFF44)
      {
        v35 = BlueFin::GlSvId::s_aucSvId2gnss[*(v25 + v20)];
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v35] == 255)
        {
          v34 = 575;
          v33 = -1;
        }

        else
        {
          v33 = 0;
          v34 = BlueFin::GlSignalId::s_ausGnss2signalId[v35] + v32 - BlueFin::GlSvId::s_aucGnss2minSvId[v35];
        }
      }

      else
      {
        v33 = 0;
        v34 = 575;
      }

      *(v7 + 32) = v32;
      *(v7 + 36) = v33;
      *(v7 + 40) = v34;
      *(*a3 + 4 * (v34 >> 5)) |= 1 << v34;
      v14 = (v14 + 1);
      if (v14 > 11)
      {
        break;
      }

      v7 += 56;
    }

    v20 += 96;
    --v22;
  }

  while (v22);
LABEL_151:
  result = 0;
  *a4 = v14;
  v109 = *(a2 + 48);
  if ((v109 & 0x100) != 0)
  {
    v110 = 3;
  }

  else
  {
    v110 = 4;
  }

  if ((v109 & 0x300) == 0x200 || (v109 & 0x1400000) == 0x400000)
  {
    ++v110;
  }

  if (v14 <= 16 && v14 >= v110)
  {
    v112 = a1[1];
    v128 = 0;
    v130 = v132;
    v131 = 8;
    memset(v132, 0, sizeof(v132));
    v133 = xmmword_298A41DA0;
    v134 = vdup_n_s32(0x42C60000u);
    v135 = 1120272384;
    BlueFin::stDops::stDops(&v136, &v128);
    v139 = v112;
    v113 = **a1;
    BlueFin::GlSignalIdSet::GetSvIdSet(&v126, a3);
    BlueFin::GlPeDops::GetDops(&v136, v113);
    return *(&v133 + 1) <= 98.5;
  }

  return result;
}

BOOL BlueFin::GlPeLsq::LsPosCalc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, _BYTE *a10)
{
  v10 = MEMORY[0x2A1C7C4A8](a1, a2);
  v209 = v12;
  v14 = v13;
  v16 = v15;
  v208 = v17;
  v18 = v11;
  v199 = v19;
  v21 = v20;
  v204 = v10;
  v275 = *MEMORY[0x29EDCA608];
  v22 = *(v20 + 48);
  v23 = v22 & 0x300;
  if (v23 == 512)
  {
    v24 = 5;
  }

  else
  {
    if ((v22 & 0x1400000) == 0x400000)
    {
      v24 = 5;
    }

    else
    {
      v24 = 4;
    }

    if ((v22 & 0x100) != 0)
    {
      v25 = *v11;
      if (v25 <= 3)
      {
        if ((v22 & 0x400) == 0)
        {
          *a10 = 1;
        }

        v24 = v25;
      }
    }
  }

  v26 = *v11;
  v27 = &v255 + 8;
  v255 = xmmword_298A43E40;
  v253 = &v256;
  v254 = &v257;
  v257 = 0;
  for (i = 1; i != 21; ++i)
  {
    v254[i] = v27;
    v27 += 40;
  }

  *v211 = v24;
  BlueFin::BigMatrix::Clone(&v253, v26, v24);
  BlueFin::BigMatrixDim<20,1>::BigMatrixDim(&v251, *v18);
  BlueFin::SKFVectorDim<16>::SKFVectorDim(v250, *v18);
  v30 = *(v21 + 8);
  v29 = *(v21 + 16);
  memset(v269, 0, sizeof(v269));
  v271 = 0u;
  v272 = 0u;
  v273 = 0u;
  v274 = 0u;
  if (v30)
  {
    v31 = v29 == 0;
  }

  else
  {
    v31 = 0;
  }

  v32 = !v31;
  v248 = 0.0;
  v247 = 0.0;
  v249 = 0.0;
  if (v31 || v29)
  {
    *a10 = 0;
    BlueFin::lla2ecef(v209, &v242);
    v33 = v242;
    v34 = *&v243;
    v247 = v242;
    v248 = *&v243;
    v35 = *&v244;
    v249 = *&v244;
    v207 = 10;
    v205 = 1;
  }

  else
  {
    v205 = 0;
    v207 = *(v21 + 44);
    v35 = 0.0;
    v34 = 0.0;
    v33 = 0.0;
  }

  v36 = &v244 + 8;
  v244 = xmmword_298A43E50;
  v242 = COERCE_DOUBLE(&v245);
  *&v243 = COERCE_DOUBLE(v246);
  v246[0] = 0;
  for (j = 1; j != 17; ++j)
  {
    v243[j] = v36;
    v36 += 64;
  }

  v239[0] = v240;
  v239[1] = 0x1000000000;
  memset(v240, 0, sizeof(v240));
  v241 = 0;
  v236[0] = v237;
  v236[1] = 0x1000000000;
  memset(v237, 0, sizeof(v237));
  v238 = 0;
  v233[0] = v234;
  v233[1] = 0x1000000000;
  memset(v234, 0, sizeof(v234));
  v235 = 0;
  v38 = *(v21 + 48);
  v229[0] = v236;
  v229[1] = v233;
  v229[2] = &v242;
  v229[3] = v239;
  v230 = 0u;
  v231 = 0u;
  v232 = 0;
  v226 = v228;
  v227 = 4;
  v228[1] = 0;
  v228[0] = 0;
  v39 = (v211[0] + 1);
  v40 = (v38 >> 4) & 1;
  v41 = *v18;
  if (v39 >= v41 || (~v38 & 0x2000800) != 0)
  {
    if (v41 < 1)
    {
      v42 = 0;
      v210 = 0;
    }

    else
    {
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = (v208 + 32);
      do
      {
        v47 = *v46;
        v46 += 56;
        if (((1 << (v47 & 0x1F)) & *(*(v21 + 64) + ((v47 >> 3) & 0x1C))) != 0)
        {
          v42 = v45 | (1 << v44);
          v43 = v42;
          v45 = v42;
        }

        ++v44;
      }

      while (*v18 != v44);
      v210 = 0;
      if (v43)
      {
        LOBYTE(v40) = 2;
      }
    }
  }

  else
  {
    v42 = 0;
    v210 = 1;
  }

  v200 = v14;
  if (!v207)
  {
    v112 = 0;
    v52 = 0.0;
    v193 = 0.0;
    v51 = 0.0;
    goto LABEL_211;
  }

  v206 = v23;
  v201 = v35;
  v202 = v33;
  v48 = 0;
  v203 = v38 & 1 | (32 * ((v38 >> 15) & 1)) & 0xFFFBDFFF | (v38 >> 11) & 0x800 | (((v38 >> 5) & 1) << 13) & 0xFFFBFFFF | ((HIWORD(v38) & 1) << 18) | 0x4C0;
  v49 = 0.25;
  v50 = 0.0;
  v51 = 0.0;
  v52 = 0.0;
  while (1)
  {
    v53 = *(v21 + 32);
    v54 = *(v21 + 40);
    *&v212 = a9;
    *(&v212 + 1) = v209;
    *&v213 = v53;
    *(&v213 + 1) = __PAIR64__(v205, v54);
    v214 = v203;
    v215 = 0u;
    v216 = 0u;
    v217 = 0u;
    v218 = 0u;
    v219 = 0x4008000000000000;
    BlueFin::GlSetBase::SetAllLower(&v226, *v18);
    if (*v18 > v16)
    {
      v197 = "cNumMeas <= lSkfMeasNum";
      DeviceFaultNotify("glpe_lsq.cpp", 850, "LsPosCalc", "cNumMeas <= lSkfMeasNum");
      v198 = 850;
      goto LABEL_221;
    }

    if ((*(**(v204 + 8) + 16))(*(v204 + 8), &v212, v229, v208, &v226))
    {
      return 0;
    }

    if (*v18 >= 1)
    {
      v55 = 0;
      v56 = *(v21 + 48);
      v57 = v250[0] + 8;
      v58 = v239[0] + 8;
      v59 = v236[0] + 8;
      v60 = v254 + 1;
      v61 = v243 + 1;
      v62 = v252 + 8;
      v63 = v233[0] + 8;
      v64 = (v208 + 44);
      do
      {
        *(*(v62 + 8 * v55) + 8) = *(v59 + 8 * v55) - *(v63 + 8 * v55);
        if (*(v21 + 16))
        {
          v65 = 0;
        }

        else
        {
          v65 = v32;
        }

        v66 = v61[v55];
        v67 = v60[v55];
        v67[1] = v66[1];
        if (v65)
        {
          v67[2] = v66[3];
          v67[3] = v66[7];
          v67[4] = v66[5];
          if (v206 == 512)
          {
            v67[5] = v66[8];
          }

          if ((v56 & 0x1400000) == 0x400000)
          {
            if ((BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v64 - 2) - *(v64 - 2) + BlueFin::GlSvId::s_aucSvId2gnss[*(v64 - 12)]] & 0xFD) != 0)
            {
              v68 = 1.0;
            }

            else
            {
              v68 = 0.0;
            }

            goto LABEL_53;
          }
        }

        else
        {
          v67[2] = v66[2];
          v67[3] = v66[3];
          v67[4] = v66[4];
          if (v206 == 512)
          {
            v68 = v66[7];
LABEL_53:
            v67[5] = v68;
          }
        }

        if (!v48 && !*v64)
        {
          v69 = *(v58 + 8 * v55);
          v51 = v51 + v69;
          if (v69 >= v52)
          {
            v52 = *(v58 + 8 * v55);
          }
        }

        if (v40 == 1)
        {
          v71 = *(v58 + 8 * v55);
          v70 = 1.0;
          goto LABEL_64;
        }

        v70 = 1.0;
        if (v40 == 2)
        {
          if ((v42 >> v55))
          {
            v70 = 0.25;
            if ((v56 & 0x10) != 0)
            {
              v70 = v49 / *(v58 + 8 * v55);
            }
          }

          else if ((v56 & 0x10) != 0)
          {
            v71 = *(v58 + 8 * v55);
LABEL_64:
            if (v71 > v70)
            {
              v70 = 1.0 / v71;
            }
          }
        }

        *(v57 + 8 * v55++) = v70;
        v64 += 14;
      }

      while (v55 < *v18);
    }

    v266 = xmmword_298A43E60;
    v264 = &v267;
    v265 = &v268;
    v72 = 1;
    v73 = &v266 + 8;
    v268 = 0;
    do
    {
      v265[v72] = v73;
      v73 += 64;
      ++v72;
    }

    while (v72 != 9);
    v222 = xmmword_298A43E70;
    *&v221 = v223;
    v74 = &v222 + 8;
    *(&v221 + 1) = &v225;
    v75 = 8;
    v225 = 0;
    do
    {
      *(*(&v221 + 1) + v75) = v74;
      v74 += 128;
      v75 += 8;
    }

    while (v75 != 72);
    if (v40)
    {
      v76 = DWORD1(v255);
      *&v222 = __PAIR64__(v255, DWORD1(v255));
      if (v255 >= 1)
      {
        v77 = v250[0];
        v78 = v254;
        v79 = v255 + 1;
        v80 = *(&v221 + 1) + 8;
        v81 = 1;
        do
        {
          if (v76 >= 1)
          {
            v82 = *(v77 + 8 * v81);
            v83 = (v78[v81] + 8);
            v84 = v80;
            v85 = (v76 + 1) - 1;
            do
            {
              v86 = *v83++;
              v87 = v82 * v86;
              v88 = *v84++;
              *(v88 + 8 * v81) = v87;
              --v85;
            }

            while (v85);
          }

          ++v81;
        }

        while (v81 != v79);
      }

      BlueFin::BigMatrix::mult(&v264, &v221, &v251);
    }

    else
    {
      BlueFin::BigMatrix::mult(&v264, 1, &v253, &v251);
    }

    if (v211[0] >= 1)
    {
      v89 = v265 + 1;
      v90 = v269;
      v91 = *v211;
      do
      {
        v92 = *v89++;
        *v90++ = *(v92 + 8);
        --v91;
      }

      while (v91);
    }

    if (v40)
    {
      BlueFin::BigMatrix::mult_sym(&v264, &v221, &v253);
    }

    else
    {
      BlueFin::BigMatrix::mult_sym(&v264, 1, &v253, &v253);
    }

    v93 = BlueFin::BigMatrix::cholsl(&v264, v269, &v271, 0, v263);
    if ((v93 & v210) == 1)
    {
      v260 = xmmword_298A43E60;
      v258 = &v261;
      v259 = &v262;
      v94 = 1;
      v95 = &v260 + 8;
      v262 = 0;
      do
      {
        v259[v94] = v95;
        v95 += 64;
        ++v94;
      }

      while (v94 != 9);
      if (BlueFin::BigMatrix::inv(&v264, &v258, v263))
      {
        v213 = xmmword_298A43E50;
        *&v212 = &v214;
        *(&v212 + 1) = &v220;
        v96 = 8;
        v97 = &v213 + 8;
        v220 = 0;
        do
        {
          *(*(&v212 + 1) + v96) = v97;
          v97 += 64;
          v96 += 8;
        }

        while (v96 != 136);
        BlueFin::BigMatrix::mult(&v212, &v253, &v258);
        if (*v18 < 1)
        {
LABEL_114:
          v210 = 1;
        }

        else
        {
          v98 = *v18;
          v99 = *(&v212 + 1);
          v100 = v254;
          v101 = *(&v221 + 1) + 8;
          v102 = 1;
          do
          {
            v270[v102 - 1] = 0;
            if (v211[0] >= 1)
            {
              v103 = 0.0;
              v104 = v101;
              v105 = 1;
              do
              {
                if (v40)
                {
                  v106 = v104;
                }

                else
                {
                  v106 = &v100[v102];
                }

                if (v40)
                {
                  v107 = v102;
                }

                else
                {
                  v107 = v105;
                }

                v103 = v103 + *(*(v99 + 8 * v102) + 8 * v105++) * *(*v106 + 8 * v107);
                ++v104;
              }

              while (v39 != v105);
              *&v270[v102 - 1] = v103;
            }

            ++v102;
          }

          while (v102 != v98 + 1);
          v108 = v270;
          while (1)
          {
            v210 = 0;
            v109 = *v108 <= 0.0;
            if (fabs(*v108) <= 1.79769313e308)
            {
              v109 = 1;
            }

            if (*v108 >= 1.0 || !v109)
            {
              break;
            }

            ++v108;
            if (!--v98)
            {
              goto LABEL_114;
            }
          }
        }
      }

      else
      {
        v210 = 0;
      }
    }

    if (!v93)
    {
      return 0;
    }

    v110 = *(&v272 + 1);
    v111 = *&v271 * *&v271 + *(&v271 + 1) * *(&v271 + 1) + *&v272 * *&v272 + v110 * v110;
    v112 = v111 < 1.0;
    if (*(v21 + 16))
    {
      v113 = 0;
    }

    else
    {
      v113 = v32;
    }

    if (v113)
    {
      v212 = v271;
      *&v213 = v272;
      BlueFin::ned2lla(v209, &v212, &v221);
      *v209 = v221;
      *(v209 + 16) = v222;
      v114 = *a9;
      *(*a9 + 40) = v110 + *(*a9 + 40);
      if (v206 == 512 || (*(v21 + 48) & 0x1400000) == 0x400000)
      {
        *(v114 + 64) = *&v273 + *(v114 + 64);
      }
    }

    else
    {
      v34 = *(&v271 + 1) + v34;
      v247 = *&v271 + v202;
      v248 = v34;
      v201 = *&v272 + v201;
      v202 = *&v271 + v202;
      v249 = v201;
      BlueFin::ecef2lla(&v247, v209);
      *(*a9 + 32) = *(&v272 + 1) + *(*a9 + 32);
    }

    if (*(v21 + 16))
    {
      v115 = 0;
    }

    else
    {
      v115 = v32;
    }

    v116 = v207;
    if (v115 != 1)
    {
      goto LABEL_149;
    }

    if (v111 >= 1.0 && v207 - 1 > v48)
    {
      v112 = 0;
LABEL_149:
      v49 = 0.25;
      goto LABEL_150;
    }

    *(v200 + 248) = 0;
    if ((*(v21 + 49) & 8) == 0)
    {
      goto LABEL_149;
    }

    BlueFin::BigMatrixDim<20,1>::BigMatrixDim(&v212, *v18);
    v118 = 0;
    v222 = xmmword_298A43E80;
    *&v221 = v223;
    *(&v221 + 1) = &v224;
    v224 = 0;
    do
    {
      *(*(&v221 + 1) + v118 + 8) = &v223[v118 - 8];
      v118 += 8;
    }

    while (v118 != 64);
    BlueFin::BigMatrix::Clone(&v221, v211[0], 1);
    if (v211[0] >= 1)
    {
      v119 = (*(&v221 + 1) + 8);
      v120 = &v271;
      v121 = *v211;
      do
      {
        v122 = *v120++;
        v123 = v122;
        v124 = *v119++;
        *(v124 + 8) = v123;
        --v121;
      }

      while (v121);
    }

    BlueFin::BigMatrix::mult(&v212, &v253, &v221);
    v125 = *v18;
    if (v125 < 1)
    {
      v127 = 0;
      v131 = 0.0;
    }

    else
    {
      v126 = 0;
      v127 = 0;
      v128 = *(v200 + 248);
      v129 = *(&v212 + 1) + 8;
      v130 = v252 + 8;
      v131 = 0.0;
      v132 = (v208 + 44);
      do
      {
        v133 = *v132;
        v132 += 14;
        v134 = v133 == 3;
        v135 = *(*(v130 + 8 * v126) + 8) - *(*(v129 + 8 * v126) + 8);
        if (v135 < 0.0)
        {
          v135 = -v135;
        }

        if (v128 < v135)
        {
          *(v200 + 248) = v135;
          LOBYTE(v125) = *v18;
          v128 = v135;
        }

        v127 |= v134;
        v136 = v135 * v135;
        *(v263 + v126) = v136;
        v131 = v131 + v136;
        ++v126;
      }

      while (v126 < v125);
    }

    v137 = sqrt(v131);
    *&v137 = v137;
    *(v200 + 252) = LODWORD(v137);
    if (v111 >= 1.0)
    {
      v112 = 0;
      v49 = 0.25;
      goto LABEL_206;
    }

    v49 = 0.25;
    if ((v210 & 1) == 0)
    {
      v210 = 0;
      v112 = 1;
      goto LABEL_206;
    }

    v138 = *v18;
    v139 = v138 - v211[0];
    v140 = v138 - v211[0] - 1;
    v141 = 1.78;
    if (v140 <= 0x10)
    {
      LOWORD(v137) = word_298A43F10[v139 - 2];
      v141 = *&v137 * 0.01;
    }

    v142 = *v18;
    if (v138 < 1)
    {
      v144 = 0.0;
    }

    else
    {
      v143 = (v250[0] + 8);
      v144 = 0.0;
      v145 = v263;
      do
      {
        v146 = *v145++;
        v147 = v146;
        v148 = *v143++;
        v50 = v50 + v148 * v147;
        v144 = v144 + v147;
        --v142;
      }

      while (v142);
    }

    v149 = (v138 - (v127 & 1));
    v150 = v140;
    v50 = v50 / v140;
    if (v149 < 1)
    {
LABEL_185:
      v172 = 0;
      goto LABEL_197;
    }

    v151 = v139;
    v152 = v149;
    v153 = (v250[0] + 8);
    v154 = v144 / v151;
    v155 = &v264;
    v156 = v270;
    v157 = v263;
    v158 = v149;
    do
    {
      v159 = *v157++;
      v160 = v159;
      v161 = *v153++;
      v162 = v161 * v160;
      v163 = *v156++;
      *v155++ = v162 / (v50 * (1.0 - v163));
      --v158;
    }

    while (v158);
    v164 = 0;
    v165 = 0;
    while (2)
    {
      v166 = v158;
      while (1)
      {
        v167 = *&(&v264)[v166];
        v168 = v151 - v167;
        v169 = -(v151 - v167);
        if (v151 - v167 >= 0.0)
        {
          v169 = v151 - v167;
        }

        if (v169 <= 0.001)
        {
          v170 = 99.0;
          goto LABEL_176;
        }

        if (v168 * v150 <= 0.0)
        {
          break;
        }

        v170 = v167 * (v150 / v168);
LABEL_176:
        v171 = 1 << v166;
        if (v170 <= v141)
        {
          LODWORD(v171) = 0;
        }

        v165 |= v171;
        if (v149 == ++v166)
        {
          if (v164)
          {
            goto LABEL_185;
          }

          v174 = v154 * v211[0];
          v175 = 0.0;
          v176 = &v258;
          v177 = v270;
          v178 = v263;
          v179 = v149;
          do
          {
            v180 = *v178++;
            v181 = v180;
            v182 = *v177++;
            v183 = v182 * v181 / (v174 * ((1.0 - v182) * (1.0 - v182)));
            *v176++ = v183;
            v175 = v175 + v183;
            --v179;
          }

          while (v179);
          v184 = 0;
          v185 = 0;
          v186 = v175 / v149 * 3.0;
          do
          {
            v187 = *&(&v258)[v184];
            v188 = v187 <= v186 && v187 * v150 <= 4.0;
            v189 = 1 << v184;
            if (v188)
            {
              LODWORD(v189) = 0;
            }

            v185 |= v189;
            ++v184;
          }

          while (v152 != v184);
          v172 = v185 & v165;
          goto LABEL_197;
        }
      }

      v172 = 0;
      v164 = 1;
      v173 = 1 << v166;
      if (v141 >= 99.0)
      {
        LODWORD(v173) = 0;
      }

      v165 |= v173;
      v158 = v166 + 1;
      if (v149 - 1 != v166)
      {
        continue;
      }

      break;
    }

LABEL_197:
    LODWORD(v265) = v172;
    LODWORD(v264) = 1;
    HIDWORD(v264) = v172;
    BlueFin::GlSetIterator::operator++(&v264);
    if (BYTE1(v264) == v264)
    {
      v190 = 0;
    }

    else
    {
      v190 = 0;
      v191 = *(v200 + 264);
      do
      {
        v192 = *(v208 + 56 * SWORD1(v264) + 32);
        if ((v192 - 1) > 0xBB)
        {
          v190 |= 1 << SBYTE2(v264);
        }

        else
        {
          *(v191 + ((v192 >> 3) & 0x1C)) |= 1 << v192;
        }

        BlueFin::GlSetIterator::operator++(&v264);
      }

      while (BYTE1(v264) != v264);
    }

    v42 = v190 ^ v172;
    if (v172 == v190)
    {
      v210 = 1;
      v112 = 1;
LABEL_206:
      v116 = v207;
    }

    else
    {
      v210 = 0;
      v112 = 0;
      LOBYTE(v207) = v207 + v48;
      v116 = v207;
      LOBYTE(v40) = 2;
    }

LABEL_150:
    if (++v48 >= v116 || v112)
    {
      v193 = v50;
LABEL_211:
      if (*(v21 + 16))
      {
        v194 = 0;
      }

      else
      {
        v194 = v32;
      }

      if ((v194 & 1) == 0)
      {
        *v200 = *v209;
        *(v200 + 16) = *(v209 + 16);
        return v112;
      }

      v195 = v51 / BlueFin::GlSetBase::Cnt(v199);
      if (v195 > 0.0)
      {
        *(v200 + 227) = v112;
        *(v200 + 232) = sqrt(v195);
        *(v200 + 240) = sqrt(v52);
        *(v200 + 256) = v193;
        return 1;
      }

      v197 = "fRmsRangeMeasUnc > 0.0";
      DeviceFaultNotify("glpe_lsq.cpp", 1213, "LsPosCalc", "fRmsRangeMeasUnc > 0.0");
      v198 = 1213;
LABEL_221:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_lsq.cpp", v198, v197);
    }
  }
}

BlueFin::BigMatrix *BlueFin::BigMatrixDim<20,1>::BigMatrixDim(BlueFin::BigMatrix *this, int a2)
{
  v3 = 0;
  *(this + 1) = xmmword_298A43F00;
  *(this + 24) = 0;
  *this = this + 32;
  *(this + 1) = this + 192;
  do
  {
    *(*(this + 1) + v3 + 8) = this + v3 + 24;
    v3 += 8;
  }

  while (v3 != 160);
  BlueFin::BigMatrix::Clone(this, a2, 1);
  return this;
}

double BlueFin::SKFVectorDim<16>::SKFVectorDim(uint64_t a1, int a2)
{
  v2 = (a1 + 16);
  *a1 = a1 + 16;
  *(a1 + 8) = a2;
  *(a1 + 12) = 16;
  if (a2 >= 17)
  {
    DeviceFaultNotify("glpe_matrix.h", 497, "SKFVectorDim", "LEN >= len");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.h", 497, "LEN >= len");
  }

  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *v2 = 0u;
  *(a1 + 32) = 0u;
  *a1 = v2;
  return result;
}

double BlueFin::GlPeGnssTime::GetUtc@<D0>(BlueFin::GlPeGnssTime *this@<X0>, BlueFin::GlUtcTime *a2@<X8>)
{
  *a2 = &unk_2A1F11310;
  *(a2 + 1) = 0;
  BlueFin::GlUtcTime::breakdownFct(a2);

  return BlueFin::GlPeGnssTime::GetUtc(this, a2);
}

BlueFin::GlUtcTime *BlueFin::GlUtcTime::GlUtcTime(BlueFin::GlUtcTime *this, unsigned int a2, unsigned int a3, unsigned int a4, int8x16_t a5, double a6, int8x16_t a7)
{
  *this = &unk_2A1F11310;
  *(this + 1) = 0;
  v8 = a2 - 1980;
  if (a2 <= 0x7BC && (a2 != 1980 || a3 <= 1 && (a3 != 1 || a4 <= 5)))
  {
    v18 = "usYear > 1980 || (usYear == 1980 && (ucMonth > 1 || (ucMonth == 1 && ucDay > 5)))";
    DeviceFaultNotify("glpe_datetime.h", 1034, "GlUtcTime", "usYear > 1980 || (usYear == 1980 && (ucMonth > 1 || (ucMonth == 1 && ucDay > 5)))");
    v19 = "glpe_datetime.h";
    v20 = 1034;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v19, v20, v18);
  }

  *a7.i64 = *a5.i64 - trunc(*a5.i64);
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = *vbslq_s8(vnegq_f64(v9), a7, a5).i64;
  if (v10 < 0.0 || v10 >= 1.0)
  {
    v18 = "dFracSec >= 0.0 && dFracSec < 1.0";
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    v19 = "glpe_timepoint.h";
    v20 = 173;
    goto LABEL_22;
  }

  v12 = v10 * 4294967300.0 + 0.5;
  v13 = v12;
  if (v12 >= 4294967300.0)
  {
    v13 = -1;
  }

  v14 = a2 - 1977;
  if (v8 >= 0)
  {
    v14 = a2 - 1980;
  }

  v15 = *a5.i64 + 126230400 * (v14 >> 2) + 86400 * (BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * (v8 - (v14 & 0xFFFFFFFC)) - 1 + a3] + (a4 - 1)) - 432000;
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent - 1 >= v15 + BlueFin::GlWeekTowTime::m_ucCurrentLs)
  {
    v16 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
  }

  else
  {
    v16 = BlueFin::GlWeekTowTime::m_ucNextLs;
  }

  *(this + 2) = v13;
  *(this + 3) = v15 + v16;
  *this = &unk_2A1F11310;
  v21 = *a5.i64;
  BlueFin::GlUtcTime::breakdownFct(this);
  if (v21 >= 86400.0)
  {
    --*(this + 3);
  }

  BlueFin::GlUtcTime::breakdownFct(this);
  return this;
}

uint64_t BlueFin::GlUtcTime::operator-(uint64_t result, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v5 = a5 | a4;
  if (a5 | a4)
  {
    if (a3 > a5 || a3 == a5 && a2 >= a4)
    {
      v5 = 0;
      v6 = a2 >= a4;
      a2 -= a4;
      v7 = !v6;
      a3 = a3 - a5 - v7;
    }

    else
    {
      v6 = a4 >= a2;
      a2 = a4 - a2;
      v8 = !v6;
      a3 = a5 - a3 - v8;
      v5 = 1;
    }
  }

  *result = a2;
  *(result + 4) = a3;
  if (!(a3 | a2))
  {
    v5 = 0;
  }

  *(result + 8) = v5;
  return result;
}

uint64_t BlueFin::BigMatrix::mult_sym(uint64_t this, const BlueFin::BigMatrix *a2, const BlueFin::BigMatrix *a3)
{
  if (this == a2)
  {
    v19 = "this != &mLeft";
    DeviceFaultNotify("glpe_matrix.cpp", 1065, "mult_sym", "this != &mLeft");
    v20 = 1065;
    goto LABEL_24;
  }

  if (this == a3)
  {
    v19 = "this != &mRight";
    DeviceFaultNotify("glpe_matrix.cpp", 1066, "mult_sym", "this != &mRight");
    v20 = 1066;
    goto LABEL_24;
  }

  v3 = *(a2 + 5);
  if (v3 != *(a3 + 4))
  {
    v19 = "mLeft.m_NbCols == mRight.m_NbRows";
    DeviceFaultNotify("glpe_matrix.cpp", 1069, "mult_sym", "mLeft.m_NbCols == mRight.m_NbRows");
    v20 = 1069;
    goto LABEL_24;
  }

  v4 = *(a2 + 4);
  if (v4 != *(a3 + 5))
  {
    v19 = "mLeft.m_NbRows == mRight.m_NbCols";
    DeviceFaultNotify("glpe_matrix.cpp", 1071, "mult_sym", "mLeft.m_NbRows == mRight.m_NbCols");
    v20 = 1071;
LABEL_24:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", v20, v19);
  }

  if (v4 > *(this + 24) || v4 > *(this + 28))
  {
    v19 = "mLeft.m_NbRows <= m_NbMaxRows && mRight.m_NbCols <= m_NbMaxCols";
    DeviceFaultNotify("glpe_matrix.cpp", 1072, "mult_sym", "mLeft.m_NbRows <= m_NbMaxRows && mRight.m_NbCols <= m_NbMaxCols");
    v20 = 1072;
    goto LABEL_24;
  }

  if (v4 >= 1)
  {
    v5 = v4 + 1;
    v6 = 1;
    do
    {
      if (v6 <= v4)
      {
        v7 = *(a2 + 1);
        v8 = *(this + 8);
        v9 = *(v8 + 8 * v6);
        v10 = *(a3 + 1) + 8;
        v11 = v6;
        do
        {
          if (v3 < 1)
          {
            v13 = 0.0;
          }

          else
          {
            v12 = (*(v7 + 8 * v6) + 8);
            v13 = 0.0;
            v14 = v10;
            v15 = (v3 + 1) - 1;
            do
            {
              v16 = *v12++;
              v17 = v16;
              v18 = *v14++;
              v13 = v13 + v17 * *(v18 + 8 * v11);
              --v15;
            }

            while (v15);
          }

          *(v9 + 8 * v11) = v13;
          *(*(v8 + 8 * v11++) + 8 * v6) = v13;
        }

        while (v11 != v5);
      }

      ++v6;
    }

    while (v6 != v5);
  }

  *(this + 16) = v4;
  *(this + 20) = v4;
  return this;
}

BOOL BlueFin::BigMatrix::cholsl(BlueFin::BigMatrix *this, double *a2, double *a3, double *a4, double *a5)
{
  v32[21] = *MEMORY[0x29EDCA608];
  v5 = *(this + 4);
  if (v5 != *(this + 5))
  {
    v30 = "m_NbRows == m_NbCols";
    DeviceFaultNotify("glpe_matrix.cpp", 1227, "cholsl", "m_NbRows == m_NbCols");
    v31 = 1227;
    goto LABEL_29;
  }

  if (v5 >= 22)
  {
    v30 = "m_NbCols <= BIG_MATR_MAX_COL_DIM";
    DeviceFaultNotify("glpe_matrix.cpp", 1228, "cholsl", "m_NbCols <= BIG_MATR_MAX_COL_DIM");
    v31 = 1228;
LABEL_29:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", v31, v30);
  }

  if (v5 >= 1)
  {
    bzero(a3, 8 * v5);
  }

  v11 = BlueFin::BigMatrix::choldci(this, v5, v32);
  if (v11)
  {
    if (a4)
    {
      v12 = 1.0;
      if (v5 >= 1)
      {
        v13 = v32;
        v14 = v5;
        do
        {
          v15 = *v13++;
          v12 = v12 * (v15 * v15);
          --v14;
        }

        while (v14);
      }

      *a4 = 1.0 / v12;
    }

    if (a5 && v5 >= 1)
    {
      memcpy(a5, v32, 8 * v5);
    }

    else if (v5 < 1)
    {
      return v11;
    }

    v16 = 0;
    v17 = 0;
    v18 = 1;
    do
    {
      v19 = a2[v17];
      if (v17)
      {
        v20 = (*(*(this + 1) + 8 * v17 + 8) + v16);
        v21 = v18;
        do
        {
          v22 = *v20--;
          v19 = v19 - v22 * a3[(v21-- - 2)];
        }

        while (v21 > 1);
      }

      a3[v17] = v19 * v32[v17];
      ++v17;
      ++v18;
      v16 += 8;
    }

    while (v17 != v5);
    v23 = &a3[v5];
    v24 = 8 * v5 + 8;
    v25 = v5;
    do
    {
      v26 = a3[v25 - 1];
      if (v25 < v5)
      {
        v27 = 0;
        do
        {
          v26 = v26 - *(*(*(this + 1) + v24 + 8 * v27) + 8 * v25) * v23[v27];
          ++v27;
        }

        while (v5 > v25 + v27);
      }

      a3[v25 - 1] = v26 * v32[v25 - 1];
      --v23;
      v24 -= 8;
    }

    while (v25-- > 1);
  }

  return v11;
}

BOOL BlueFin::BigMatrix::choldci(BlueFin::BigMatrix *this, unsigned int a2, double *a3)
{
  if (a2 >= 1)
  {
    v5 = a2;
    bzero(a3, 8 * a2);
    v6 = 0;
    v7 = 0;
    v8 = *(this + 1);
    while (1)
    {
      v9 = v6 + 1;
      v10 = *(v8 + 8 * (v6 + 1));
      v11 = v6;
      do
      {
        v12 = v11 + 1;
        v13 = *(v10 + 8 * (v11 + 1));
        if (v6 < 2)
        {
          v20 = v6 - 1;
          if (v6 - 1 < 0)
          {
            goto LABEL_12;
          }

LABEL_10:
          v21 = 8 * v20 + 8;
          do
          {
            v13 = v13 - *(v10 + v21) * *(*(v8 + 8 * v12) + v21);
            v21 -= 8;
          }

          while (v21);
          goto LABEL_12;
        }

        v14 = *(v8 + 8 * v12);
        v15 = v6;
        do
        {
          v16 = v15;
          v17 = v15 - 1;
          v18 = *(v10 + 8 * v17);
          v19 = *(v14 + 8 * v17);
          v15 = v16 - 2;
          v13 = v13 - *(v10 + 8 * v16) * *(v14 + 8 * v16) - v18 * v19;
        }

        while (v16 > 3);
        v20 = v16 - 3;
        if (((v16 - 3) & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

LABEL_12:
        if (v6 == v11)
        {
          if (v13 <= 0.0)
          {
            return v7;
          }

          a3[v6] = 1.0 / sqrt(v13);
        }

        else
        {
          *(*(v8 + 8 * v12) + 8 * v9) = v13 * a3[v6];
        }

        ++v11;
      }

      while (v12 != v5);
      ++v6;
      v7 = v9 >= v5;
      if (v9 == v5)
      {
        return 1;
      }
    }
  }

  return 1;
}

void BlueFin::GlPeLsq::LsPosFinish(unsigned int **a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v14 = *a4;
  if (v14 >= 1 && *(a5 + 44) != 3)
  {
    v15 = 0;
    v16 = (a5 + 100);
    do
    {
      if (v14 - 1 == v15)
      {
        break;
      }

      v17 = *v16;
      v16 += 14;
      ++v15;
    }

    while (v17 != 3);
  }

  v36 = *(a2 + 48);
  v18 = a1[1];
  v38 = 0;
  v39 = v41;
  v40 = 8;
  memset(v41, 0, 32);
  *&v41[9] = xmmword_298A41DA0;
  v42 = vdup_n_s32(0x42C60000u);
  v43 = 1120272384;
  BlueFin::stDops::stDops(v44, &v38);
  v45 = v18;
  v19 = **a1;
  BlueFin::GlSignalIdSet::GetSvIdSet(v37, a3);
  BlueFin::GlPeDops::GetDops(v44, v19);
  BlueFin::stDops::operator=(a7 + 136, &v38);
  *a7 = *a8;
  *(a7 + 16) = *(a8 + 16);
  v20 = *a9;
  *(a7 + 24) = *(a2 + 32) + *(*a9 + 40);
  *(a7 + 32) = *(v20 + 64) + *(a2 + 40) * 0.001;
  *(a7 + 224) = 1;
  v21 = BlueFin::GlSetBase::Cnt(a3);
  if (!v21)
  {
    DeviceFaultNotify("glpe_lsq.cpp", 1270, "LsPosFinish", "ucCnt > 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_lsq.cpp", 1270, "ucCnt > 0");
  }

  v22 = *(a7 + 196);
  v23 = *(a2 + 48);
  *(a7 + 40) = (v36 & 0x300) == 512;
  BlueFin::GlSetBase::operator=(a7 + 48, a3);
  *(a7 + 60) = *(a3 + 12);
  v24 = *(a3 + 28);
  v25 = *(a3 + 44);
  v26 = *(a3 + 60);
  *(a7 + 120) = *(a3 + 72);
  *(a7 + 108) = v26;
  *(a7 + 92) = v25;
  *(a7 + 76) = v24;
  v27 = *(a2 + 56);
  if (v27)
  {
    LOBYTE(v27) = *v27 == 1 && v27[72] == 1;
  }

  *(a7 + 312) = v27;
  RngUncMetric = BlueFin::stLsPosState::GetRngUncMetric(a7);
  v29 = 0;
  if ((v36 & 0x300) == 0x200 && v21 <= 5)
  {
    v29 = fabs(*(a7 + 32)) >= 100.0;
  }

  v30 = *(a7 + 196);
  v31 = RngUncMetric * v30;
  if (*(a7 + 232) * v30 >= v31)
  {
    v31 = *(a7 + 232) * v30;
  }

  v32 = 400.0;
  if ((~v23 & 0x140000) == 0)
  {
    v32 = 600.0;
  }

  v33 = v22 >= 40.0;
  if (v31 > v32)
  {
    v33 = 1;
  }

  v34 = (*(a7 + 16) - 27500) < 0xFFFF92D3 || v33;
  v35 = ((v34 | v29) & 1) == 0;
  *(a7 + 225) = v35;
  *(a7 + 226) = v35;
}

uint64_t BlueFin::stDops::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  BlueFin::GlSetBase::operator=(a1 + 8, a2 + 8);
  v4 = *(a2 + 20);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 20) = v4;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

double BlueFin::stLsPosState::GetRngUncMetric(BlueFin::stLsPosState *this)
{
  v2 = BlueFin::GlSetBase::Cnt((this + 48));
  if (v2 <= (*(this + 40) | 4u))
  {
    return *(this + 30);
  }

  if (v2 < 0xA)
  {
    return *(this + 29);
  }

  return *(this + 62);
}

unint64_t *BlueFin::GlPeSubsetIterator::GlPeSubsetIterator(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *result = v2;
  result[1] = v3;
  if (!v2)
  {
    v4 = "m_potWritePtr";
    DeviceFaultNotify("glpe_navutil.cpp", 108, "GlPeSubsetIterator", "m_potWritePtr");
    v5 = 108;
    goto LABEL_8;
  }

  if (!v3)
  {
    v4 = "m_potReadPtr";
    DeviceFaultNotify("glpe_navutil.cpp", 109, "GlPeSubsetIterator", "m_potReadPtr");
    v5 = 109;
    goto LABEL_8;
  }

  if (v2 < v3)
  {
    v4 = "m_potWritePtr>=m_potReadPtr";
    DeviceFaultNotify("glpe_navutil.cpp", 110, "GlPeSubsetIterator", "m_potWritePtr>=m_potReadPtr");
    v5 = 110;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navutil.cpp", v5, v4);
  }

  return result;
}

unint64_t BlueFin::GlPeSubsetIterator::operator->(unint64_t *a1)
{
  result = a1[1];
  if (result > *a1)
  {
    DeviceFaultNotify("glpe_navutil.cpp", 131, "operator->", "m_potReadPtr <= m_potWritePtr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navutil.cpp", 131, "m_potReadPtr <= m_potWritePtr");
  }

  return result;
}

uint64_t BlueFin::GlPeNavGnssKF::RunDeals(uint64_t a1, BlueFin::GlSetBase *a2)
{
  v74 = *MEMORY[0x29EDCA608];
  v4 = a1 + *(*a1 - 24);
  v5 = *(v4 + 88);
  v6 = **(a1 + 2240);
  v55[0] = v4 + 8;
  v55[1] = v5;
  v56 = v6;
  v57 = 15;
  v58 = 17;
  v43 = vdupq_n_s64(0x4079000000000000uLL);
  v44 = 0x4079000000000000;
  v46 = 0x6400000000;
  bzero(v47, 0x328uLL);
  v45 = v47;
  v47[102] = 0x6400000000;
  bzero(v48, 0x328uLL);
  v7 = 0;
  v47[101] = v48;
  v48[204] = 0;
  v49 = v51;
  v50 = 8;
  v52 = xmmword_298A41DA0;
  memset(v51, 0, 32);
  v53 = vdup_n_s32(0x42C60000u);
  v54 = 1120272384;
  v41 = 0;
  v40 = 0uLL;
  v42 = *(v4 + 152);
  v8 = *(a1 + 8);
  v48[202] = *v8;
  v37 = v39;
  v38 = 19;
  memset(v39, 0, sizeof(v39));
  do
  {
    v9 = &v73[v7 + 19];
    *v9 = 0;
    v9[1] = -1;
    *(v9 + 4) = 575;
    v7 += 3;
  }

  while (v7 != 48);
  if (BlueFin::GlSetBase::Cnt(a2) >= 0x11)
  {
    v34 = "otRrSignalIds.Cnt() <= DEALS_MAX_NUM_SUBSETS";
    DeviceFaultNotify("glpe_navgnsskf.cpp", 2565, "RunDeals", "otRrSignalIds.Cnt() <= DEALS_MAX_NUM_SUBSETS");
    v35 = "glpe_navgnsskf.cpp";
    v36 = 2565;
    goto LABEL_27;
  }

  BlueFin::GlSetBase::GlSetBase(&__src, v67, 0x13u, a2);
  v59 = &v61;
  LOBYTE(v60) = 19;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  memset(v64, 0, sizeof(v64));
  BlueFin::GlSetBase::OperatorBinaryAnd(&__src, &v59, (v8 + 8));
  BlueFin::GlSetBase::operator=(&__src, &v59);
  v67[1] = v62;
  v67[2] = v63;
  v68[0] = *v64;
  *(v68 + 12) = *&v64[12];
  v67[0] = v61;
  v69 = v66;
  memcpy(v73, __src, 4 * v66);
  v71 = 0;
  v70 = 0;
  v72 = v73[0];
  BlueFin::GlSetIterator::operator++(&v69);
  if (v70 == v69)
  {
    goto LABEL_17;
  }

  v10 = 0;
  do
  {
    v11 = v71;
    if (v71 >= 0x23FuLL)
    {
      v34 = "usIndex < NUM_SIGNAL_IDS";
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      v35 = "glsignalid.h";
      v36 = 578;
      goto LABEL_27;
    }

    v12 = *(a1 + 8);
    v13 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v71;
    v14 = *v13;
    v15 = v13[1];
    LOBYTE(v59) = *v13;
    HIDWORD(v59) = v15;
    v60 = v71;
    PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(v12, &v59, 0);
    if (BlueFin::stPeSigMeasKF::IsRRValid(PeMeas))
    {
      v17 = *(a1 + 8);
      LOBYTE(v59) = v14;
      HIDWORD(v59) = v15;
      v60 = v11;
      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v17, &v59, 0, 0);
      v19 = &v73[3 * v10 + 19];
      *v19 = v14;
      v19[1] = v15;
      *(v19 + 4) = v11;
      *(&__src + v10++) = *(MeMeas + 27);
    }

    BlueFin::GlSetIterator::operator++(&v69);
  }

  while (v70 != v69);
  if (v10 <= 3u)
  {
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  v21 = &v69;
  BlueFin::GlSortFloats(&__src, v10, &v69, v20);
  if ((v10 & 0xF0) != 0)
  {
    v22 = 16;
  }

  else
  {
    v22 = v10;
  }

  v23 = v37;
  do
  {
    v24 = *v21++;
    v25 = SLOWORD(v73[3 * v24 + 21]);
    v23[v25 >> 5] |= 1 << v25;
    --v22;
  }

  while (v22);
  BlueFin::GlSetBase::GlSetBase(&v59, &v61, 0x13u, &v37);
  result = BlueFin::GlPeDEALS::ComputeDEALS(a1 + 2856, &v59, v55, &v40);
LABEL_18:
  v27 = *(a1 + 2940) * 0.0174532925;
  if (v27 <= 0.0)
  {
    v34 = "m_otDEALS.GetHeadingAccyRad() > 0.0";
    DeviceFaultNotify("glpe_navgnsskf.cpp", 2604, "RunDeals", "m_otDEALS.GetHeadingAccyRad() > 0.0");
    v35 = "glpe_navgnsskf.cpp";
    v36 = 2604;
    goto LABEL_27;
  }

  v28 = *(a1 + 2948) * 0.0174532925;
  if (v28 <= 0.0)
  {
    v34 = "m_otDEALS.GetPitchAccyRad() > 0.0";
    DeviceFaultNotify("glpe_navgnsskf.cpp", 2605, "RunDeals", "m_otDEALS.GetPitchAccyRad() > 0.0");
    v35 = "glpe_navgnsskf.cpp";
    v36 = 2605;
    goto LABEL_27;
  }

  v29 = *(a1 + 2904);
  v30 = v29;
  v31 = v30 * v30;
  v32 = *(a1 + 2912);
  v33 = v32;
  if (sqrtf(v31 + (v33 * v33)) <= 0.0)
  {
    v34 = "m_otDEALS.GetSpeedAccy() > 0.0";
    DeviceFaultNotify("glpe_navgnsskf.cpp", 2606, "RunDeals", "m_otDEALS.GetSpeedAccy() > 0.0");
    v35 = "glpe_navgnsskf.cpp";
    v36 = 2606;
    goto LABEL_27;
  }

  if (*(a1 + 2920) <= 0.0)
  {
    v34 = "m_otDEALS.GetVVelAccy() > 0.0";
    DeviceFaultNotify("glpe_navgnsskf.cpp", 2607, "RunDeals", "m_otDEALS.GetVVelAccy() > 0.0");
    v35 = "glpe_navgnsskf.cpp";
    v36 = 2607;
    goto LABEL_27;
  }

  if (*(a1 + 2928) <= 0.0)
  {
    v34 = "m_otDEALS.GetBcDotAccy() > 0.0";
    DeviceFaultNotify("glpe_navgnsskf.cpp", 2608, "RunDeals", "m_otDEALS.GetBcDotAccy() > 0.0");
    v35 = "glpe_navgnsskf.cpp";
    v36 = 2608;
    goto LABEL_27;
  }

  if (v29 <= 0.0)
  {
    v34 = "m_otDEALS.GetVelAccy().dN > 0.0";
    DeviceFaultNotify("glpe_navgnsskf.cpp", 2609, "RunDeals", "m_otDEALS.GetVelAccy().dN > 0.0");
    v35 = "glpe_navgnsskf.cpp";
    v36 = 2609;
    goto LABEL_27;
  }

  if (v32 <= 0.0)
  {
    v34 = "m_otDEALS.GetVelAccy().dE > 0.0";
    DeviceFaultNotify("glpe_navgnsskf.cpp", 2610, "RunDeals", "m_otDEALS.GetVelAccy().dE > 0.0");
    v35 = "glpe_navgnsskf.cpp";
    v36 = 2610;
LABEL_27:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v35, v36, v34);
  }

  return result;
}

uint64_t BlueFin::GlPeDEALS::ComputeDEALS(uint64_t a1, BlueFin::GlSetBase *this, uint64_t *a3, float64x2_t *a4)
{
  v18 = *MEMORY[0x29EDCA608];
  if (BlueFin::GlSetBase::Cnt(this) >= 0x11)
  {
    DeviceFaultNotify("glpe_deals.cpp", 60, "ComputeDEALS", "otRrSignalIds.Cnt() <= DEALS_MAX_MEAS_To_PACK");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_deals.cpp", 60, "otRrSignalIds.Cnt() <= DEALS_MAX_MEAS_To_PACK");
  }

  *(a1 + 76) = 0;
  v8 = BlueFin::GlSetBase::Cnt(this);
  v9 = 0;
  if (v8 >= 4)
  {
    v16 = v17;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
    *(a1 + 48) = vdupq_n_s64(0x4082C00000000000uLL);
    *(a1 + 64) = 0x4082C00000000000;
    *(a1 + 76) = 0;
    *(a1 + 80) = xmmword_298A41E50;
    *(a1 + 40) = 0;
    *(a1 + 72) = 1142285679;
    bzero(*(a1 + 96), ((4 * *(a1 + 104) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    BlueFin::GlSetBase::GlSetBase(v14, v15, 0x13u, this);
    BlueFin::GlPeDEALS::RunAllSubsets(a1, &v16, v14, a3, a4);
    if (((v16 - v17) & 0xFE0) != 0)
    {
      BlueFin::GlPeDEALS::CalcSigmas(a1, v17, this, ((v16 - v17) >> 4));
      *(a1 + 76) = 1;
      BlueFin::GlSetBase::operator=(a1 + 96, this);
      *(a1 + 108) = *(this + 12);
      v10 = *(this + 28);
      v11 = *(this + 44);
      v12 = *(this + 60);
      *(a1 + 168) = *(this + 72);
      *(a1 + 156) = v12;
      *(a1 + 140) = v11;
      *(a1 + 124) = v10;
    }

    v9 = *(a1 + 76);
  }

  return v9 & 1;
}

unsigned __int8 *BlueFin::GlPeDEALS::RunAllSubsets(BlueFin::GlSignalIdArray ***a1, float32x4_t **a2, uint64_t a3, uint64_t *a4, float64x2_t *a5)
{
  v9 = 0;
  v121 = *MEMORY[0x29EDCA608];
  do
  {
    v10 = &v120[v9];
    v10[32] = 0;
    *(v10 + 9) = -1;
    *(v10 + 20) = 575;
    v9 += 56;
  }

  while (v9 != 896);
  LODWORD(v109) = *(a3 + 8);
  memcpy(&v110, *a3, 4 * v109);
  HIDWORD(v109) = v110;
  result = BlueFin::GlSetIterator::operator++(&v109);
  if (BYTE1(v109) != v109)
  {
    v65 = a5;
    v12 = 0;
    v66 = vdupq_n_s64(0x41B1DE784A000000uLL);
    do
    {
      v13 = WORD1(v109);
      if (WORD1(v109) >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v14 = *a1;
      v15 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v109);
      v16 = *v15;
      v17 = v15[1];
      LOBYTE(v78) = *v15;
      HIDWORD(v78) = v17;
      LOWORD(v79) = WORD1(v109);
      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v14, &v78, 0, 0);
      if (MeMeas)
      {
        v19 = &v120[56 * v12];
        *(v19 + 20) = 0xFFFFFFFF00000000;
        *(v19 + 7) = -1;
        v19[50] = 0;
        *(v19 + 11) = 2;
        *(v19 + 4) = **a1;
        v19[32] = v16;
        *(v19 + 9) = v17;
        *(v19 + 20) = v13;
        v20.f32[0] = -*(MeMeas + 26);
        v20.i32[1] = *(MeMeas + 27);
        *v19 = vmulq_f64(vcvtq_f64_f32(v20), v66);
        *(v19 + 24) = 1;
        ++v12;
      }

      result = BlueFin::GlSetIterator::operator++(&v109);
    }

    while (BYTE1(v109) != v109 && v12 <= 15);
    if (v12 >= 3)
    {
      v114[1] = 0x400000004;
      v22 = v65[1];
      v116 = *v65;
      v115 = 0;
      v114[0] = &v115;
      v117 = v22;
      v23 = &v111 + 8;
      v111 = xmmword_298A41E60;
      v109 = &v112;
      v110 = &v113;
      v113 = 0;
      for (i = 1; i != 17; ++i)
      {
        v110[i] = v23;
        v23 += 32;
      }

      v106[0] = v107;
      v106[1] = 0x1000000000;
      memset(v107, 0, sizeof(v107));
      v108 = 0;
      v103[0] = v104;
      v103[1] = 0x1000000000;
      memset(v104, 0, sizeof(v104));
      v105 = 0;
      v100[0] = v101;
      v100[1] = 0x1000000000;
      memset(v101, 0, sizeof(v101));
      v102 = 0;
      v25 = a4[3] & 1 | 0x4C0;
      v26 = *a4;
      v27 = a4[1];
      v28 = *(a4 + 4);
      v91[0] = v114;
      v91[1] = v26;
      v91[2] = v27;
      v92 = v28;
      v93 = 2;
      v94 = v25;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0x4008000000000000;
      v87[0] = v103;
      v87[1] = v100;
      v87[2] = &v109;
      v87[3] = v106;
      v88 = 0u;
      v89 = 0u;
      v90 = 0;
      v84 = v86;
      v85 = 4;
      v86[1] = 0;
      v86[0] = 0;
      BlueFin::GlSetBase::SetAllLower(&v84, v12);
      result = (*(*a1[1] + 2))(a1[1], v91, v87, v120, &v84);
      if (!result)
      {
        v29 = *(a4 + 6);
        if ((v29 & 0x200000) != 0)
        {
          BlueFin::GlPeLsq::AddPMeas(v103, v100, v106, &v109, 2, 0.0225);
          BlueFin::GlPeLsq::AddPMeas(v103, v100, v106, &v109, 1, 0.0225);
          v29 = *(a4 + 6);
        }

        v30 = v111;
        if ((v29 & 8) == 0)
        {
          v31 = (v29 & 4) == 0 && v12 > 5u;
          if (!v31 && v111 <= 20)
          {
            BlueFin::GlPeLsq::AddPMeas(v103, v100, v106, &v109, 3, 0.0225);
            v29 = *(a4 + 6);
            v30 = v111;
          }
        }

        if ((v29 & 0xA) == 2 && v30 <= 20)
        {
          BlueFin::GlPeLsq::AddPMeas(v103, v100, v106, &v109, 4, v65[2].f64[0]);
          v30 = v111;
          v29 = *(a4 + 6);
        }

        v32 = DWORD1(v111);
        BlueFin::SKFVectorDim<16>::SKFVectorDim(v83, v30);
        v33 = &v80 + 8;
        v80 = xmmword_298A41E70;
        v78 = &v81;
        v79 = &v82;
        v82 = 0;
        for (j = 1; j != 5; ++j)
        {
          v79[j] = v33;
          v33 += 128;
        }

        BlueFin::BigMatrix::Clone(&v78, v32, v30);
        if (v30 >= 1)
        {
          v35 = v106[0];
          v36 = v110;
          v37 = v103[0];
          v38 = v100[0];
          v39 = v83[0];
          v40 = v79 + 1;
          v41 = 1;
          do
          {
            v42 = 1.0;
            if ((v29 & 0x10) != 0)
            {
              v42 = 1.0 / *(v35 + 8 * v41);
            }

            if (v32 >= 1)
            {
              v43 = (v36[v41] + 8);
              v44 = v40;
              v45 = (v32 + 1) - 1;
              do
              {
                v46 = *v43++;
                v47 = v42 * v46;
                v48 = *v44++;
                *(v48 + 8 * v41) = v47;
                --v45;
              }

              while (v45);
            }

            *(v39 + 8 * v41) = *(v37 + 8 * v41) - *(v38 + 8 * v41);
            ++v41;
          }

          while (v41 != v30 + 1);
        }

        v49 = &v75 + 8;
        v75 = xmmword_298A41E80;
        v73 = &v76;
        v74 = &v77;
        v77 = 0;
        for (k = 1; k != 5; ++k)
        {
          v74[k] = v49;
          v49 += 32;
        }

        BlueFin::BigMatrix::mult(&v73, &v78, &v109);
        v70[0] = v71;
        v70[1] = 0x400000000;
        memset(v71, 0, sizeof(v71));
        v72 = 0;
        BlueFin::SKFVector::mult(v70, &v78, v83);
        BlueFin::BigMatrixDim<4,4>::BigMatrixDim(v68, v32, v32);
        v51 = 1;
        do
        {
          if (v32 >= 1)
          {
            v52 = v74;
            v53 = v110;
            v54 = v79;
            v55 = v69;
            v56 = v70[0];
            v57 = 1;
            v58 = 1;
            v59 = v83[0];
            do
            {
              if (v32 >= v58)
              {
                v60 = v52[v58];
                v61 = v53[v51];
                v62 = v58;
                v63 = *(v55 + 8 * v58);
                do
                {
                  *(v63 + 8 * v62) = *(v60 + 8 * v62) - *(v61 + 8 * v58) * *(v54[v62] + 8 * v51);
                  ++v62;
                }

                while (v32 >= v62);
              }

              v119[v57 - 1] = *(v56 + 8 * v58) - *(v54[v58] + 8 * v51) * *(v59 + 8 * v51);
              v57 = ++v58;
            }

            while (v32 >= v58);
          }

          v67 = 0.0;
          result = BlueFin::BigMatrix::cholsl(v68, v119, v118[0].f64, &v67, 0);
          if (result)
          {
            if (v67 >= 0.0001)
            {
              v64 = *a2;
              *v64 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(*v65, v118[0])), vaddq_f64(v65[1], v118[1]));
              *a2 = v64 + 1;
            }
          }

          ++v51;
        }

        while (v51 != v12 + 1);
      }
    }
  }

  return result;
}

uint64_t *BlueFin::SKFVector::mult(uint64_t *this, const BlueFin::BigMatrix *a2, const BlueFin::SKFVector *a3)
{
  v3 = *(a2 + 5);
  if (v3 != *(a3 + 2))
  {
    v17 = "rhs.GetColSize() == lhs.GetLen()";
    DeviceFaultNotify("glpe_matrix.cpp", 2143, "mult", "rhs.GetColSize() == lhs.GetLen()");
    v18 = 2143;
    goto LABEL_14;
  }

  v4 = *(a2 + 4);
  if (*(this + 3) < v4)
  {
    v17 = "m_MaxLen >= rhs.GetRowSize()";
    DeviceFaultNotify("glpe_matrix.cpp", 2144, "mult", "m_MaxLen >= rhs.GetRowSize()");
    v18 = 2144;
LABEL_14:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", v18, v17);
  }

  *(this + 2) = v4;
  if (v4 >= 1)
  {
    v5 = *(a2 + 1);
    v6 = *this;
    v7 = v4 + 1;
    v8 = *a3 + 8;
    v9 = 1;
    do
    {
      if (v3 < 1)
      {
        v11 = 0.0;
      }

      else
      {
        v10 = (*(v5 + 8 * v9) + 8);
        v11 = 0.0;
        v12 = v8;
        v13 = (v3 + 1) - 1;
        do
        {
          v14 = *v10++;
          v15 = v14;
          v16 = *v12++;
          v11 = v11 + v15 * v16;
          --v13;
        }

        while (v13);
      }

      *(v6 + 8 * v9++) = v11;
    }

    while (v9 != v7);
  }

  return this;
}

BlueFin::BigMatrix *BlueFin::BigMatrixDim<4,4>::BigMatrixDim(BlueFin::BigMatrix *this, int a2, int a3)
{
  v4 = this + 24;
  *(this + 1) = xmmword_298A41E80;
  *(this + 20) = 0;
  *this = this + 32;
  *(this + 1) = this + 160;
  for (i = 8; i != 40; i += 8)
  {
    *(*(this + 1) + i) = v4;
    v4 += 32;
  }

  BlueFin::BigMatrix::Clone(this, a2, a3);
  return this;
}

void BlueFin::GlPeDEALS::CalcSigmas(uint64_t a1, _DWORD *a2, BlueFin::GlSetBase *this, const float *a4)
{
  v89 = *MEMORY[0x29EDCA608];
  v8 = BlueFin::GlSetBase::Cnt(this);
  if (a4)
  {
    v9 = v84;
    v10 = a4;
    do
    {
      v11 = a2[1];
      *(v9 - 32) = *a2;
      *(v9 - 16) = v11;
      v12 = a2[3];
      *v9 = a2[2];
      v9[16] = v12;
      a2 += 4;
      ++v9;
      --v10;
    }

    while (v10);
  }

  v81 = 100.0;
  BlueFin::GlPeDEALS::CalcSpeedFromLs(v82, a4, &v81, v7);
  v14 = v13;
  v15 = v13;
  *(a1 + 16) = v13;
  v16 = v81;
  BlueFin::GlPeDEALS::CalcSpeedFromLs(v83, a4, &v81, v17);
  *(a1 + 24) = v19;
  v20 = v81;
  v21 = sqrtf((v14 * v14) + (v19 * v19));
  v78 = v19;
  v79 = v15;
  if (v21 <= 0.15)
  {
    if (v16 < 0.15)
    {
      v16 = 0.15;
    }

    if (v20 < 0.15)
    {
      v20 = 0.15;
    }

    *(a1 + 48) = v16;
    *(a1 + 56) = v20;
  }

  BlueFin::GlPeDEALS::CalcSpeedFromLs(&v85, a4, &v81, v18);
  *(a1 + 40) = v23;
  v24 = v81;
  *(a1 + 72) = v81;
  if (v8 < 5)
  {
    v27 = 25.0;
    v26 = 0.0;
  }

  else
  {
    BlueFin::GlPeDEALS::CalcSpeedFromLs(v84, a4, &v81, v22);
    v26 = v25;
    v27 = v81;
  }

  *(a1 + 32) = v26;
  *(a1 + 64) = v27;
  if (a4)
  {
    v28 = v86;
    v29 = v83;
    v30 = a4;
    do
    {
      *v28++ = atan2f(*v29, *(v29 - 16));
      ++v29;
      --v30;
    }

    while (v30);
    v31 = 0;
    v32 = 0;
    v33 = 0.0;
    v34 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
    v37 = 0.0;
    do
    {
      v38 = *&v83[v31];
      v39 = v82[v31];
      v40 = sqrtf((v38 * v38) + (v39 * v39));
      if (v40 > 0.0)
      {
        v33 = v33 + (v39 / v40);
        v34 = v34 + (v38 / v40);
      }

      v41 = v86[v31];
      if (v31)
      {
          ;
        }

        while (i <= -3.14159265)
        {
          i = i + 6.28318531;
        }

        v43 = i;
        if (v35 <= v43)
        {
          v35 = v43;
        }

        if (v36 >= v43)
        {
          v36 = v43;
        }
      }

      else
      {
        v37 = v86[0];
      }

      v44 = 0;
      v45 = 0.0;
      do
      {
        if (v31 != v44)
        {
            ;
          }

          while (j <= -3.14159265)
          {
            j = j + 6.28318531;
          }

          if (j < 0.0)
          {
            j = -j;
          }

          v47 = j;
          v45 = v45 + v47;
        }

        ++v44;
      }

      while (v44 != a4);
      if (v45 > 0.0)
      {
        v88[v32++] = v45;
      }

      ++v31;
    }

    while (v31 != a4);
  }

  else
  {
    v32 = 0;
    v36 = 0.0;
    v35 = 0.0;
    v34 = 0.0;
    v33 = 0.0;
  }

  v49 = atan2f(v34, v33) * 57.2957795;
  v50 = v49 - floor(v49 / 360.0) * 360.0;
  *(a1 + 80) = v50;
  if (v32 > 2u)
  {
    BlueFin::GlSortFloats(v88, v32, v87, v48);
    v51 = v86[v87[0]];
    if ((v32 & 1) == 0)
    {
        ;
      }

        ;
      }

      v53 = k;
      v51 = v51 + (v53 * -0.5);
    }

    v54 = (v51 * 57.296) - floor((v51 * 57.296) / 360.0) * 360.0;
    *(a1 + 80) = v54;
  }

  if (v21 <= 0.15)
  {
    v62 = 180.0;
  }

  else
  {
    v55 = -v36;
    if (v36 >= 0.0)
    {
      v55 = v36;
    }

    v56 = ((v35 + v55) * 0.5) * 57.296;
    v57 = -v56;
    if (v56 >= 0.0)
    {
      v57 = v56;
    }

    v58 = v57 > 0.00000011921;
    v59 = 180.0;
    if (v58)
    {
      v59 = v56;
    }

    v60 = (v79 * v79 * (v20 * v20) + v16 * v16 * (v78 * v78)) / ((v21 * v21) * (v21 * v21));
    v61 = sqrtf(v60) * 57.296;
    if (v61 >= v59)
    {
      v59 = v61;
    }

    v62 = fmaxf(v59, 1.0);
  }

  if (v27 >= 25.0)
  {
    *(a1 + 88) = 0;
    v72 = 90.0;
  }

  else
  {
    if (a4)
    {
      v80 = v16;
      v63 = 0;
      v64 = 0.0;
      v65 = 90.0;
      v66 = 0.0;
      do
      {
        v67 = atan2f(*&v84[v63], v21) * 57.296;
        if (v66 >= v67)
        {
          v68 = v67;
        }

        else
        {
          v68 = v66;
        }

        if (v67 >= v65)
        {
          v69 = v67;
        }

        else
        {
          v69 = v65;
        }

        if (v63)
        {
          v66 = v68;
        }

        else
        {
          v66 = v67;
        }

        if (v63)
        {
          v65 = v69;
        }

        else
        {
          v65 = v67;
        }

        v64 = v64 + v67;
        v63 += 4;
      }

      while (4 * a4 != v63);
      v70 = v64 / a4;
      v71 = (v65 - v66) * 0.5;
      v16 = v80;
    }

    else
    {
      v70 = 0.0;
      v71 = 45.0;
    }

    *(a1 + 88) = v70;
    v72 = 90.0;
    if (v71 != 0.0)
    {
      v72 = v71;
    }
  }

  v73 = 0.000001;
  if (v16 >= 0.000001)
  {
    v74 = v16;
  }

  else
  {
    v74 = 0.000001;
  }

  if (v20 >= 0.000001)
  {
    v75 = v20;
  }

  else
  {
    v75 = 0.000001;
  }

  *(a1 + 48) = v74;
  *(a1 + 56) = v75;
  if (v27 >= 0.000001)
  {
    v73 = v27;
  }

  *(a1 + 64) = v73;
  v76 = 0.000001;
  if (v24 >= 0.000001)
  {
    v76 = v24;
  }

  *(a1 + 72) = v76;
  if (v62 >= 0.000057296)
  {
    v77 = v62;
  }

  else
  {
    v77 = 0.000057296;
  }

  *(a1 + 84) = v77;
  if (v72 < 0.000057296)
  {
    v72 = 0.000057296;
  }

  *(a1 + 92) = v72;
}

uint64_t BlueFin::GlPeDEALS::CalcSpeedFromLs(uint64_t this, const float *a2, float *a3, float *a4)
{
  v8 = *MEMORY[0x29EDCA608];
  *a3 = 100.0;
  if (a2)
  {
    v4 = this;
    v5 = a2 - 1;
    if (a2 != 1)
    {
      this = BlueFin::GlSortFloats(this, a2, v7, a4);
      *a3 = *(v4 + 4 * v7[v5]) - *(v4 + 4 * v7[0]);
    }
  }

  return this;
}

BOOL BlueFin::GlPeNavGnssMotion::IsNotTurning(BlueFin::GlPeNavGnssMotion *this, double a2)
{
  if (*(*this + 4200) == 1)
  {
    return 1;
  }

  if (*(this + 48) == 1 && (a2 = fabs(*(this + 4)), a2 < *(this + 7)))
  {
    return 1;
  }

  else
  {
    return BlueFin::GlPeNavGnssMotion::IsNotMoving(this, a2);
  }
}

void BlueFin::GlPeNavGnssResidMon::UpdateRrate(BlueFin::GlPeNavGnssResidMon *this, const BlueFin::GlPeNavUtil *a2, const BlueFin::GlSignalIdSet *a3)
{
  *(this + 8) = 0;
  *(this + 9) = 0;
  v6 = (this + 64);
  *(this + 10) = 0;
  if (BlueFin::GlSetBase::Cnt(a3) && (BlueFin::GlSetBase::GlSetBase(v18, v19, 0x13u, a3), BlueFin::GlPeNavUtil::ComputeRrateResidVec(a2, v18), v17))
  {
    BlueFin::SKFVector::Quartiles(&v16, v6, v7, v8);
    v12 = v17;
    if (v17 >= 1)
    {
      v13 = (v16 + 8);
      do
      {
        *v13 = fabs(*v13);
        ++v13;
        --v12;
      }

      while (v12);
    }

    v14 = BlueFin::SKFVector::Median(&v16, v9, v10, v11);
  }

  else
  {
    v14 = 0.0;
  }

  v15 = *(this + 4) + (v14 - *(this + 4)) * 0.9;
  if (v15 < 0.1)
  {
    v15 = 0.1;
  }

  *(this + 4) = v15;
}

uint64_t BlueFin::SKFVector::Quartiles(uint64_t this, double *a2, uint64_t a3, unsigned __int8 *a4)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = *(this + 8);
  v5 = v4 - 1;
  if (v4 >= 1)
  {
    if (v4 >= 0x65)
    {
      DeviceFaultNotify("glpe_matrix.cpp", 2015, "Quartiles", "iLen <= GL_CHANNELS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 2015, "iLen <= GL_CHANNELS");
    }

    v7 = *this + 8;
    this = BlueFin::GlSortDoubles(v7, *(this + 8), v12, a4);
    v8 = 0;
    v9 = v5;
    do
    {
      v10 = v9 >> 2;
      v11 = *(v7 + 8 * v12[v10]);
      if ((v9 & 3) != 0)
      {
        v11 = (v11 + *(v7 + 8 * v12[v10 + 1])) * 0.5;
      }

      a2[v8++] = v11;
      v9 += v5;
    }

    while (v8 != 3);
  }

  return this;
}

unint64_t BlueFin::GlPeNavGnssKF::AddProcessNoise(BlueFin::GlPeNavGnssKF *this, uint64_t a2, int a3, const BlueFin::GlPeNavGnssState *a4, int a5, char a6, int a7, BOOL a8, BOOL a9)
{
  v12 = a4;
  v16 = this + 4096;
  v17 = &v148 + 8;
  v148 = xmmword_298A43F30;
  v146 = &v149;
  v147 = &v150;
  v150 = 0;
  for (i = 1; i != 13; ++i)
  {
    v147[i] = v17;
    v17 += 96;
  }

  if (*(this + 26) == 1 && a7 != 0)
  {
    v20 = 0.0;
    if (*(this + 8080) == 1)
    {
      v21 = *(this + 597);
      v22 = 0.0;
      if (*(v21 + 2985) == 1)
      {
        v22 = *(v21 + 2952) * 0.0174532925;
      }

      v20 = v22 * v22;
    }

    goto LABEL_14;
  }

  v20 = 0.0;
  if (*(this + 26))
  {
LABEL_14:
    v23 = __sincos_stret(*(this + *(*this - 24) + 176));
    *(this + 167) = *&v23.__cosval;
    *(this + 168) = *&v23.__sinval;
    *(this + 169) = 0;
    *(this + 171) = *&v23.__sinval;
    *(this + 172) = -v23.__cosval;
    *(this + 173) = 0;
    *(this + 1400) = 0u;
    *(this + 177) = 0xBFF0000000000000;
  }

  BlueFin::BigMatrix::Null(&v146, 12, 12);
  v24 = *(this + 331);
  v25 = v24 < 0.0;
  if (v24 >= 0.0)
  {
    v26 = 2;
  }

  else
  {
    v26 = 3;
  }

  if (*(this + *(*this - 24) + 242))
  {
    v25 = v26;
  }

  if (v12)
  {
    v25 |= 4u;
  }

  v145 = v25;
  if (BlueFin::GlPeNavGnssKF::LeftXtcRecently(this))
  {
    v27 = 8;
  }

  else
  {
    v27 = 0;
  }

  v145 = v145 & 0xFFFFFFF7 | v27;
  if (BlueFin::GlPeNavGnssKF::UsedXtcRecently(this))
  {
    v28 = 16;
  }

  else
  {
    v28 = 0;
  }

  v29 = v145 & 0xFFFFFFCF | v28;
  v30 = v145 & 0xFFFFFF0F | v28 & 0xFFFFFF1F;
  v31 = v29 | 0x40;
  if (a5)
  {
    v32 = v31;
  }

  else
  {
    v32 = v30;
  }

  v145 = v32 & 0xFFFFFF7F;
  if (BlueFin::GlPeNavGnssMotion::IsNotMoving((this + 4776), 100.0))
  {
    v33 = 256;
  }

  else
  {
    v33 = 0;
  }

  v34 = v32 & 0xFFFFF87F | v33;
  v35 = v32 & 0xFFFFC07F | v33 & 0xFFFFC7FF;
  v36 = v34 | 0x800;
  if (!a7)
  {
    v36 = v35;
  }

  v37 = v36 & 0xFFFFCFFF;
  if (*(this + 26))
  {
    v38 = 4096;
  }

  else
  {
    v38 = 0;
  }

  v145 = v37 | v38;
  v39 = *(this + 617);
  v40 = fabs(v39);
  v41 = *(this + 1333);
  if (v41 && *v41 == 1)
  {
    v42 = *(this + 618) - *(this + 616);
    v43 = *(v41 + 3);
    v44 = v39;
    v45 = fabsf(v44);
    v46 = v42;
    v41[2] = v45;
    v41[3] = v46;
    if ((v16[2124] & 1) == 0)
    {
      v47 = (*(*this + 264))(this);
      v41 = *(this + 1333);
      if (!v47)
      {
        v48 = v145;
        goto LABEL_56;
      }

      v45 = v41[2];
    }

    v48 = v145;
    if (v45 > 3.0)
    {
      v49 = *v41;
LABEL_46:
      *(v41 + 1) = 1;
      v50 = v16[2117];
      *(v41 + 2) = v50;
LABEL_47:
      v51 = *(v41 + 3) | v49 & 1;
      *(v41 + 3) = v51;
      v52 = 1;
      goto LABEL_61;
    }

    if (v45 > 1.0)
    {
      v49 = *v41;
      if (v41[3] > 3.0)
      {
        goto LABEL_46;
      }

      v53 = *(this + 1265);
      *(v41 + 1) = v53 > 3.0;
      v50 = v16[2117];
      *(v41 + 2) = v50;
      if (v53 > 3.0)
      {
        goto LABEL_47;
      }

      if (v49)
      {
        v54 = v50;
      }

      else
      {
        v54 = 0;
      }

      v51 = *(v41 + 3) | v54;
LABEL_60:
      *(v41 + 3) = v51;
      v52 = 0;
      if ((v43 & 1) == 0)
      {
        v56 = v48 & 0xFFFFBFFF;
LABEL_63:
        v145 = v56;
        GlCustomLog(12, "TCXO PN:%u,%.1f,%.1f,%.1f,en=%d,%d,%d,%d\n", *(this + *(*this - 24) + 200), v40, v42, *(this + 1265), v51, v49, v52, v50);
        if (BlueFin::GlUtils::m_ucEnabled)
        {
          BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xC);
        }

        goto LABEL_65;
      }

LABEL_61:
      v56 = v48 | 0x4000;
      goto LABEL_63;
    }

LABEL_56:
    *(v41 + 1) = 0;
    v50 = v16[2117];
    *(v41 + 2) = v50;
    v49 = *v41;
    if (*v41)
    {
      v55 = v50;
    }

    else
    {
      v55 = 0;
    }

    v51 = v55 | *(v41 + 3);
    goto LABEL_60;
  }

LABEL_65:
  v57 = this + *(*this - 24);
  v58 = (*(*this + 72))(this);
  v59 = *(this + 546);
  v60 = *(this + 1265);
  v135[0] = a2;
  v135[1] = v57;
  v135[2] = this + 32;
  v135[3] = this + 1336;
  v135[4] = &v145;
  v136 = v58;
  v137 = a3;
  v138 = 0;
  v139 = 0;
  v140 = v20;
  v141 = 0x3E45798EE2308C3ALL;
  v142 = v59;
  v143 = v40;
  v144 = v60;
  v133 = 0;
  v134 = 0uLL;
  v131 = 0uLL;
  v132 = 0;
  v129 = 0;
  v130 = 0uLL;
  v127 = 0uLL;
  v128 = 0;
  v61 = *(this + 190);
  v62 = *(this + 191);
  if (*(this + 26) == 1)
  {
    v133 = *(this + 189);
    *&v134 = v61;
    *(&v134 + 1) = v62;
    v63 = *(this + 194);
    v131 = *(this + 96);
    v132 = v63;
  }

  else
  {
    v129 = *(this + 189);
    *&v130 = v61;
    *(&v130 + 1) = v62;
    v64 = *(this + 194);
    v127 = *(this + 96);
    v128 = v64;
  }

  BlueFin::GlPeProcessNoise::CalcQValues(this + 4568, v135, &v129, &v127, &v133, &v131);
  if (*(this + 26) == 1)
  {
    v65 = v134;
    v66 = &v131;
    v67 = &v133;
    v68 = v131.f64[1];
  }

  else
  {
    v65 = v130;
    v66 = &v127;
    v67 = &v129;
    v68 = v127.f64[1];
  }

  v69 = v66[1].f64[0];
  v70 = v66->f64[0];
  *(this + 189) = *v67;
  *(this + 95) = v65;
  *(this + 192) = v70;
  *(this + 193) = v68;
  *(this + 194) = v69;
  if ((*(*this + 72))(this) > 0xBB8)
  {
    v71 = 1;
  }

  else
  {
    v71 = a6;
  }

  v72 = *(this + 546);
  v73 = v72 * v72;
  v74 = v72 * (v72 * v72);
  v75 = *(this + 571);
  v76 = v147;
  if (*(this + 26) == 1)
  {
    if ((a6 & 1) == 0)
    {
      v77 = v74;
      *(v147[1] + 8) = *(v75 + 8) * v77;
      *(v76[3] + 24) = *(v75 + 16) * v77;
      *(v76[5] + 40) = *(v75 + 48) * v77;
    }

    v78 = v72;
    v79 = v76[2];
    v79[2] = *(v75 + 32) * v78;
    v80 = v76[4];
    *(v80 + 32) = *(v75 + 40) * v78;
    v81 = v76[6];
    v82 = v76[7];
    *(v81 + 48) = *(v75 + 64) * v78;
    *(v82 + 56) = *(v75 + 72);
    v83 = v76[8];
    *(v83 + 64) = *(v75 + 88);
    *(v83 + 56) = *(v75 + 80);
    if ((v71 & 1) == 0)
    {
      v79[1] = *(v75 + 96) * v73;
      *(v80 + 24) = *(v75 + 104) * v73;
      *(v76[1] + 24) = *(v75 + 112) * v73;
      *(v81 + 40) = *(v75 + 56) * v73;
      v79[4] = *(v75 + 128) * v73;
    }
  }

  else
  {
    if ((a6 & 1) == 0)
    {
      v84 = v74;
      *(v147[1] + 8) = *(v75 + 8) * v84;
      *(v76[3] + 24) = *(v75 + 16) * v84;
      *(v76[5] + 40) = *(v75 + 48) * v84;
    }

    v85 = v72;
    v86 = v76[2];
    *(v86 + 16) = *(v75 + 32) * v85;
    *(v76[4] + 32) = *(v75 + 40) * v85;
    v87 = v76[6];
    v88 = v76[7];
    *(v87 + 48) = *(v75 + 64) * v85;
    *(v88 + 56) = *(v75 + 72);
    v89 = v76[8];
    *(v89 + 64) = *(v75 + 88);
    *(v89 + 56) = *(v75 + 80);
    if ((v71 & 1) == 0)
    {
      *(v86 + 8) = *(v75 + 24) * v73;
      *(v87 + 40) = *(v75 + 56) * v73;
    }
  }

  v125 = v73;
  v90 = v76[12];
  *(v76[11] + 88) = 0x3E45798EE2308C3ALL;
  v92 = v76[9];
  v91 = v76[10];
  *(v92 + 72) = 0x3E45798EE2308C3ALL;
  *(v90 + 96) = 0x3E45798EE2308C3ALL;
  *(v91 + 80) = 0x3E45798EE2308C3ALL;
  v93 = *(a2 + 88);
  v94 = (this + *(*this - 24));
  v95 = v94[11];
  v126 = *(a2 + 152);
  v96 = v94[19];
  v97 = *(a2 + 24);
  v98 = v94[3];
  if (*(a2 + 96) * 3.0 >= 100.0)
  {
    v99 = *(a2 + 96) * 3.0;
  }

  else
  {
    v99 = 100.0;
  }

  if (*(a2 + 160) * 3.0 >= 10.0)
  {
    v100 = *(a2 + 160) * 3.0;
  }

  else
  {
    v100 = 10.0;
  }

  if (*(a2 + 84) * 3.0 >= 50.0)
  {
    v101 = *(a2 + 84) * 3.0;
  }

  else
  {
    v101 = 50.0;
  }

  v102 = (*(*this + 264))(this);
  if (v102)
  {
    v103 = v102;
    if ((*(*this + 72))(this) >= 0x3E9)
    {
      v105 = vabdd_f64(v93, v95);
      v104.n128_f64[0] = vabdd_f64(v126, v96);
      if (v105 > v99 || vabdd_f64(v97, v98) > v101 || v104.n128_f64[0] > v100 || !a5)
      {
        if (a5)
        {
          if (v105 > v99)
          {
            v118 = v93 - v95;
            if (v97 - v98 >= v93 - v95)
            {
              v118 = v97 - v98;
            }

            v119 = v118 * v118;
            if (*(*(*(this + 5) + 56) + 56) < v119)
            {
              *(v147[7] + 56) = v119 + *(v147[7] + 56);
            }
          }

          if (v104.n128_f64[0] <= v100)
          {
            goto LABEL_98;
          }

          v120 = (v126 - v96) * (v126 - v96);
          if (*(*(*(this + 5) + 64) + 64) >= v120)
          {
            goto LABEL_98;
          }
        }

        else
        {
          if (v103 != 2)
          {
            if (v103 == 1 && *(*(*(this + 5) + 56) + 56) < 2.24688795e10)
            {
              v121 = v147[8];
              *(v147[7] + 56) = *(v147[7] + 56) + 2.24688795e10;
              *(v121 + 64) = *(v121 + 64) + 505.549788;
            }

            goto LABEL_98;
          }

          if (*(*(*(this + 5) + 64) + 64) >= fmin((*(*this + 72))(this, v104) * 505.549788 * 0.001, 3235518.64))
          {
            goto LABEL_98;
          }

          v120 = -(*(*(*(this + 5) + 64) + 64) - (*(*this + 72))(this) * 505.549788 * 0.001);
        }

        v122 = v147[7];
        v123 = v147[8];
        v124 = v120 + *(v123 + 64);
        *(v123 + 64) = v124;
        *(v122 + 56) = *(v122 + 56) + v124 / 3.0 * v125;
      }
    }
  }

LABEL_98:
  (*(*this + 392))(this);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  BlueFin::BigMatrix::operator+=(this + 32, &v146);
  v106 = *(this + 5);
  if (*(this + 26) == 1)
  {
    *(v106[7] + 64) = *(v106[8] + 56);
    v108 = v106[1];
    v107 = v106[2];
    *(v108 + 16) = *(v107 + 8);
    v110 = v106[3];
    v109 = v106[4];
    *(v110 + 32) = *(v109 + 24);
    *(v106[5] + 48) = *(v106[6] + 40);
    *(v110 + 8) = *(v108 + 24);
    *(v109 + 16) = *(v107 + 32);
  }

  else
  {
    v111 = fmin(sqrt(*(v106[4] + 32)), 1.57079633);
    v112 = v106[1];
    if (v111 > 0.174532925)
    {
      v113 = *(v112 + 8);
      v114 = sin(v111);
      v115 = v114 * v114 * v113;
      v116 = v106[3];
      if (v115 > *(v116 + 24))
      {
        *(v116 + 24) = v115;
      }
    }

    *(v106[7] + 64) = *(v106[8] + 56);
    *(v112 + 16) = *(v106[2] + 8);
    *(v106[5] + 48) = *(v106[6] + 40);
  }

  result = (*(*this + 392))(this);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    return BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  return result;
}

BOOL BlueFin::GlPeNavGnssKF::LeftXtcRecently(BlueFin::GlPeNavGnssKF *this)
{
  if ((*(*this + 64))(this) >> 4 < 0x753)
  {
    return 0;
  }

  if (*(this + 571) == -7200001)
  {
    return 0;
  }

  if (*(*(this + 281) + 8) == 3)
  {
    return 0;
  }

  BlueFin::lla2ned((this + *(*this - 24) + 8), this + 286, 0, &v6);
  v2 = *(this + *(*this - 24) + 200) - *(this + 571);
  if (v2 < 0x9C5)
  {
    return 0;
  }

  v3 = v2 >> 3;
  return sqrt(v7 * v7 + v6 * v6) < 50.0 || v3 < 0xC35;
}

BOOL BlueFin::GlPeNavGnssKF::UsedXtcRecently(BlueFin::GlPeNavGnssKF *this)
{
  if ((*(*this + 64))(this) >> 4 < 0x753 || *(this + 571) == -7200001 || *(*(this + 281) + 8) == 3)
  {
    return 0;
  }

  BlueFin::lla2ned((this + *(*this - 24) + 8), this + 286, 0, &v4);
  return sqrt(v5 * v5 + v4 * v4) < 1000.0 || (*(this + *(*this - 24) + 200) - *(this + 571)) < 0x493E1;
}

BOOL BlueFin::GlPeNavGnssMotion::IsNotMoving(BlueFin::GlPeNavGnssMotion *this, double a2)
{
  result = (*(this + 84) & 1) == 0 && *(this + 48) == 1 && *(this + 20) >= *(this + 19);
  v4 = *this;
  v5 = *this + 4096;
  v6 = *(v4 + 4216);
  if ((v6 == 6 || v6 == 1) && *(v5 + 128) == 1 && (*(v5 + 130) & 1) == 0)
  {
    return 1;
  }

  return result;
}

uint64_t BlueFin::GlPeProcessNoise::CalcQValues(uint64_t a1, uint64_t *a2, float64x2_t *a3, float64x2_t *a4, float64x2_t *a5, float64x2_t *a6)
{
  v13 = *(a1 + 192);
  v12 = *(a1 + 200);
  v14 = *(v12 + 8);
  v16 = v14 == 6 && *(a2 + 10) > 0x7D0u;
  if (*(v13 + 2) < 1)
  {
    v18 = 0;
  }

  else
  {
    v17 = vabdd_f64(*(v13 + 64), *(a2[1] + 176));
    if (v17 > 3.14159265)
    {
      v17 = 6.28318531 - v17;
    }

    v18 = v17 > 0.122173048;
    if ((v14 - 1) <= 1)
    {
      v19 = *(v13 + 45) == 0;
      goto LABEL_14;
    }
  }

  v19 = 0;
LABEL_14:
  v20 = *(v12 + 16);
  v21 = v14 - 3;
  v23 = v20 == 1 && v21 < 4;
  v24 = 0.5;
  v25 = 1.0;
  if (!v16 && !v18 && !v19 && !v23 && v14 != 6)
  {
    if (v21 <= 2 && (*(a2[4] + 1) & 0x10) != 0)
    {
      v24 = 1.5;
LABEL_32:
      v25 = 0.1;
      goto LABEL_33;
    }

    v26 = sqrt(*(a2[1] + 112) * *(a2[1] + 112) + *(a2[1] + 104) * *(a2[1] + 104));
    v24 = 0.5;
    if (v26 > 10.0)
    {
      v25 = 0.5;
      goto LABEL_33;
    }

    v25 = 0.25;
    if (v26 <= 3.0)
    {
      if (v26 < 0.278)
      {
        v25 = 0.01;
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

LABEL_33:
  if (v25 >= v24)
  {
    v27 = v25;
  }

  else
  {
    v27 = v24;
  }

  v28 = *a2;
  v29 = sqrt(*(*a2 + 112) * *(*a2 + 112) + *(*a2 + 104) * *(*a2 + 104));
  if (*(*a2 + 204) == 1)
  {
    v30 = (v29 - *(a1 + 152)) * 0.497 + *(a1 + 160) * 0.503;
    *(a1 + 152) = v29;
    *(a1 + 160) = v30;
  }

  else
  {
    v30 = *(a1 + 160);
  }

  v31 = fabs(v30);
  if (v31 < v25 || (v25 = v27, v31 > v27))
  {
    if (v30 <= 0.0)
    {
      v25 = -v25;
    }

    *(a1 + 160) = v25;
  }

  v32 = *a2[4];
  v33 = 100.0;
  if ((v32 & 0x100) != 0)
  {
    v33 = 25.0;
  }

  if (v29 < 1.0)
  {
    v33 = 25.0;
  }

  if ((v32 & 0x1000) != 0)
  {
    v34 = a6;
  }

  else
  {
    v34 = a4;
  }

  *v34 = vaddq_f64(*v34, vdupq_lane_s64(*&v33, 0));
  v34[1].f64[0] = v33 + v34[1].f64[0];
  if (*(v28 + 248) >= *(v28 + 80))
  {
    v35 = *(v28 + 248);
  }

  else
  {
    v35 = *(v28 + 80);
  }

  if (*(v28 + 252) >= *(v28 + 84))
  {
    v36 = *(v28 + 252);
  }

  else
  {
    v36 = *(v28 + 84);
  }

  BlueFin::lla2ned((v28 + 8), (a2[1] + 8), 0, v174.f64);
  v172 = v174;
  v176 = v174;
  v37 = v175;
  *&v177 = v175;
  BlueFin::ned2hlu(&v176, a2[3], &v174);
  v38 = *a2[4];
  if (v35 >= 400.0)
  {
    if ((v38 & 0x1000) != 0)
    {
      v39 = a6;
    }

    else
    {
      v39 = a4;
    }

    v39->f64[0] = 0.0;
    v39->f64[1] = 0.0;
  }

  v40 = *(a1 + 200);
  v41 = *(v40 + 16);
  v42 = 50.0;
  if (v35 >= 50.0)
  {
    v43 = v35;
  }

  else
  {
    v43 = 50.0;
  }

  if (v36 >= 50.0)
  {
    v42 = v36;
  }

  if (v41 == 1)
  {
    v43 = v35;
    v42 = v36;
  }

  if ((v38 & 0x1001) == 1)
  {
    v174 = vnegq_f64(v174);
  }

  v44 = vdupq_lane_s64(COERCE__INT64((v43 * v43)), 0);
  if ((v38 & 0x1000) != 0)
  {
    v48 = vdivq_f64(*a6, vaddq_f64(*a6, v44));
    *a5 = vmlaq_f64(*a5, vsubq_f64(v172, *a5), v48);
    *a6 = vmlsq_f64(*a6, *a6, v48);
    v49 = a6[1].f64[0];
    v47 = a6 + 1;
    v46 = v49 / (v49 + (v42 * v42));
  }

  else
  {
    v45 = vdivq_f64(*a4, vaddq_f64(*a4, v44));
    *a3 = vmlaq_f64(*a3, vsubq_f64(v174, *a3), v45);
    *a4 = vmlsq_f64(*a4, *a4, v45);
    v46 = a4[1].f64[0] / (a4[1].f64[0] + (v42 * v42));
    v37 = v175;
    a5 = a3;
    v47 = a4 + 1;
  }

  a5[1].f64[0] = a5[1].f64[0] + v46 * (v37 - a5[1].f64[0]);
  v47->f64[0] = v47->f64[0] - v46 * v47->f64[0];
  v50 = *a2;
  v51 = a2[1];
  v52 = *(v51 + 176);
    ;
  }

    ;
  }

  if (i < 0.0)
  {
    i = -i;
  }

  v54 = *(a1 + 184) + 0.030462;
  v55 = i;
  v56 = v54 / (v54 + ((*(v50 + 184) * *(v50 + 184)) + (*(v51 + 184) * *(v51 + 184))));
  v57 = *(a1 + 180) + (v56 * (v55 - *(a1 + 180)));
  *(a1 + 180) = v57;
  *(a1 + 184) = v54 * (1.0 - v56);
  v58 = sqrt(*(v51 + 112) * *(v51 + 112) + *(v51 + 104) * *(v51 + 104));
  v59 = *(v50 + 128);
  v60 = v58;
  if (v59 <= 300.0)
  {
    v60 = sqrt(*(v50 + 112) * *(v50 + 112) + *(v50 + 104) * *(v50 + 104));
  }

  v61 = *(v40 + 8);
  if (v61 > 6)
  {
    v64 = 0.69813;
  }

  else
  {
    v62 = v60;
    if (((1 << v61) & 0x79) == 0)
    {
      v66 = 0.0;
      v68 = 0.0;
      if (v62 >= 0.25)
      {
        if (v62 >= 1.0)
        {
          v68 = 0.69813;
        }

        else
        {
          v68 = (fmin(fmax(v62, 0.25), 1.0) + -0.25) * 0.69813168 / 0.75 + 0.0;
        }
      }

      v64 = 0.2618;
      if (sqrt(*(v50 + 112) * *(v50 + 112) + *(v50 + 104) * *(v50 + 104)) <= 1.5)
      {
        v64 = v68;
      }

      v65 = *(a1 + 192);
      if (*(v65 + 1))
      {
        v66 = v64;
      }

      goto LABEL_99;
    }

    v63 = v62 / 5.0;
    v64 = 4.9033 / v62;
    if (v63 < v64)
    {
      v64 = v63;
    }
  }

  v65 = *(a1 + 192);
  v66 = 0.0;
  if (*(v65 + 1))
  {
    v66 = v64;
  }

  if (v61 - 1 >= 2)
  {
    v67 = a2[4];
    goto LABEL_102;
  }

LABEL_99:
  v67 = a2[4];
  if ((v41 & 0xFFFFFFFE) == 2 && (*v67 & 0x20) != 0)
  {
    v66 = 0.69813;
  }

LABEL_102:
  if (v66 >= v57)
  {
    v57 = v66;
  }

  if (v57 >= v64)
  {
    v69 = v64;
  }

  else
  {
    v69 = v57;
  }

  v70 = *(a1 + 160);
  v71 = *(a2 + 10);
  v72 = v61 - 3;
  if (v61 - 3 > 0xFFFFFFFD)
  {
    if ((v41 & 0xFFFFFFFE) == 2 && (*v67 & 0x10) != 0)
    {
      v70 = v70 * 0.25;
    }

    v76 = v41 != 1;
    v77 = v41 == 1 && (*v67 & 8) == 0;
  }

  else
  {
    if (v72 > 2 || v71 < 0x3E9)
    {
      if (v61 == 6)
      {
        v78 = 1.0;
        v79 = 0.0;
        if (v70 < 0.0)
        {
          v79 = -1.0;
        }

        if (v70 <= 0.0)
        {
          v78 = v79;
        }

        v80 = 10.0;
        if (v70 <= 10.0)
        {
          v80 = *(a1 + 160);
        }

        v81 = v80 * v78;
        if (v71 >= 0x3E9)
        {
          v70 = v81;
        }
      }
    }

    else
    {
      v73 = 1.0;
      v74 = 0.0;
      if (v70 < 0.0)
      {
        v74 = -1.0;
      }

      if (v70 <= 0.0)
      {
        v73 = v74;
      }

      if (v70 > 5.0)
      {
        v70 = 5.0;
      }

      v70 = v70 * v73;
    }

    v77 = 0;
    v76 = v41 != 1;
  }

  v82 = *(v65 + 2);
  if (*(v65 + 2) || v71 > 0x7D0 || v77)
  {
    v83 = v61 == 6 && *(v65 + 12) <= v71;
    v84 = 1.0;
    if (*(v65 + 2))
    {
      goto LABEL_153;
    }
  }

  else
  {
    v83 = 0;
    if (v41 == 7)
    {
      v84 = 1.0;
    }

    else
    {
      v84 = 0.25;
    }
  }

  v86 = v61 != 6 || v76;
  if ((v86 & 1) == 0)
  {
    v69 = fmaxf(v69, 0.087266);
    v84 = 1.0;
  }

LABEL_153:
  v87 = *v67;
  v88 = v70 * 0.5 * (v70 * 0.5);
  v89 = v70 * v70;
  if ((v87 & 0x80) != 0)
  {
    v90 = 0.04;
  }

  else
  {
    v90 = 1.0;
  }

  if ((v87 & 0x1800) == 0x800 && v82 >= 1 && (v87 & 0x600) == 0x600)
  {
    *&v91.f64[1] = a2[7];
    v91.f64[0] = v69;
    v92 = vmulq_f64(*(a2 + 3), v91);
    *&v88 = *&vaddq_f64(vmulq_f64(v92, v92), vdupq_laneq_s64(v92, 1));
  }

  if (v72 > 2)
  {
    v97 = 1.0;
    v95 = 1.0;
    v94 = 1.0;
    if (v61 == 6)
    {
      v97 = 10.0;
      v94 = 1.2;
      v95 = 10.0;
    }
  }

  else
  {
    v93 = 5.0;
    v94 = 1.0;
    if ((v87 & 0x1000) != 0)
    {
      v95 = 5.0;
    }

    else
    {
      v95 = 1.0;
    }

    v96 = 1.2;
    if ((v87 & 0x1000) != 0)
    {
      v94 = 1.2;
    }

    v97 = 0.5;
    if (v58 >= 0.277)
    {
      v97 = 3.0;
      if ((v87 & 0x1000) == 0)
      {
        if ((v87 & 0x200) == 0)
        {
          v96 = 1.0;
          goto LABEL_192;
        }

        v84 = v84 * 0.25;
        v94 = 1.0;
        v97 = 2.0;
        LODWORD(v98) = 1;
        goto LABEL_174;
      }

      goto LABEL_184;
    }
  }

  if ((v87 & 0x1000) == 0)
  {
    v98 = (v87 >> 9) & 1;
LABEL_174:
    v99 = 0.5;
    if ((v87 & 0x400) == 0)
    {
      v99 = v97;
    }

    v100 = 0.25;
    if ((v87 & 0x400) == 0)
    {
      v100 = v94;
    }

    if (!v98)
    {
      v99 = v97;
      v100 = v94;
    }

    if (v82 < 1)
    {
      v96 = v94;
    }

    else
    {
      v97 = v99;
      v96 = v100;
    }

    goto LABEL_192;
  }

  v96 = v94;
  v93 = v95;
LABEL_184:
  if (*(v50 + 240) == 1 && (v87 & 0x200) == 0 && (*(v65 + 1) & 1) == 0)
  {
    v168 = sqrt(*(v50 + 112) * *(v50 + 112) + *(v50 + 104) * *(v50 + 104));
    v170 = v90;
    v171 = v52;
    v173 = v69;
    v169 = v88;
    v101 = sin(fmin(v69, 0.17453292));
    v88 = v169;
    v90 = v170;
    v52 = v171;
    v69 = v173;
    v102 = v101 * v168 * (v101 * v168);
    if (v102 < v96)
    {
      v102 = v96;
    }

    if (v102 >= v93)
    {
      v96 = v93;
    }

    else
    {
      v96 = v102;
    }
  }

LABEL_192:
  v103 = v89 * 0.5 * 1.0;
  v104 = 10.5;
  if ((v87 & 4) == 0)
  {
    v104 = v97;
  }

  if (v104 >= v88)
  {
    v105 = v104;
  }

  else
  {
    v105 = v88;
  }

  if ((v87 & 4) != 0)
  {
    if (v59 > 100000.0 || v59 > 500.0)
    {
      v103 = v105 * 0.5;
      v106 = v105;
      if ((v87 & 0x1000) != 0)
      {
        goto LABEL_210;
      }
    }

    else
    {
      v106 = v89 * 100.0;
      if ((v87 & 0x1000) != 0)
      {
        goto LABEL_210;
      }
    }
  }

  else
  {
    v106 = v89;
    if ((v87 & 0x1000) != 0)
    {
      goto LABEL_210;
    }
  }

  if ((~v87 & 0x600) == 0 && v82 > 0)
  {
    v103 = v103 * 0.5;
  }

LABEL_210:
  if (v72 >= 0xFFFFFFFE && (v41 & 0xFFFFFFFE) == 2 && (v87 & 0x20) != 0)
  {
    v106 = v105;
  }

  v108 = v89 * v90;
  if ((v87 & 0x1000) != 0)
  {
    if (v96 >= v106)
    {
      v119 = v96;
    }

    else
    {
      v119 = v106;
    }

    v120 = 0.0;
    if ((v87 & 2) != 0)
    {
      v120 = v52;
      v121 = v84;
    }

    else
    {
      v121 = 1.0;
    }

    v124 = __sincos_stret(v120);
    cosval = v124.__cosval;
    sinval = v124.__sinval;
    v111 = *a1;
    v111[1] = v124.__sinval * v124.__sinval * (v121 * v105) + v105 * (v124.__cosval * v124.__cosval);
    v111[2] = v124.__cosval * v124.__cosval * (v121 * v105) + v105 * (v124.__sinval * v124.__sinval);
    v111[14] = v124.__cosval * (v124.__sinval * (v105 - v121 * v105));
    v111[12] = 0.0;
    v111[13] = 0.0;
    v125 = *(*(a1 + 200) + 8) - 1;
    v126 = (sinval * sinval * (v121 * v119) + v119 * (cosval * cosval)) * 0.5;
    v127 = (cosval * cosval * (v121 * v119) + v119 * (sinval * sinval)) * 0.5;
    if (v125 <= 1)
    {
      v128 = v126;
    }

    else
    {
      v128 = v119 * 0.5;
    }

    if (v125 > 1)
    {
      v127 = v119 * 0.5;
    }

    v111[4] = v128;
    v111[5] = v127;
    v111[16] = 0.0;
    v118 = *a2[4];
  }

  else
  {
    if (*(v40 + 1764))
    {
      v109 = 60;
    }

    else
    {
      v109 = 180;
    }

    if (*(v40 + 1328) > 4.0 && *(v40 + 1320) < 20.0 && *(v40 + 76) >= v109 && ((*(v40 + 1764) & 1) != 0 || *(v40 + 64) == 1) && *(v40 + 1988))
    {
      v96 = v106;
    }

    if (v96 >= v106)
    {
      v106 = v96;
    }

    v110 = (v87 >> 9) & 1;
    if (v82)
    {
      LOBYTE(v110) = 0;
    }

    if (v72 >= 3)
    {
      LOBYTE(v110) = 0;
    }

    if ((v110 & (v106 < v108)) != 0)
    {
      v108 = v106;
    }

    v111 = *a1;
    v112 = v84 * v105;
    v111[1] = v105;
    v111[2] = v84 * v105;
    v111[3] = v103;
    v111[4] = v106;
    v111[5] = (v69 * v69);
    if (v83)
    {
      v112 = v112 + v106;
      v111[2] = v112;
    }

    if (v82)
    {
      v113 = v106;
      v114 = sqrtf(v113);
      v115 = fmin(sqrtf(v69 * v69) * 3.0, 1.57079633);
      v116 = sinf(v115);
      v117 = (v116 * v114) * (v116 * v114);
      if (v117 < v112)
      {
        v117 = v112;
      }

      v111[2] = v117;
    }

    LOWORD(v118) = v87;
  }

  v129 = v108 / 3.0;
  v130 = 0.01;
  if ((v87 & 0x80) == 0)
  {
    v130 = 0.25;
  }

  v131 = v130 * v105;
  if (v131 >= v129)
  {
    v129 = v131;
  }

  v111[6] = v129;
  v111[7] = v108 * 0.5;
  v111[8] = v108;
  v132 = *(a2 + 20);
  if ((v118 & 0x4000) != 0)
  {
    *(a1 + 188) = *(a2 + 11);
    v136 = *(a2 + 11);
    if (v136 >= 2.9979248)
    {
      v137 = v136 * v136;
    }

    else
    {
      v137 = *(a2 + 12) * 9.0;
    }

    v135 = v137 * 0.0900000036;
    v134 = 80.8879782;
  }

  else
  {
    v133 = *(a1 + 188);
    v134 = 8.98755313;
    v135 = 0.0900000036;
    if (v133)
    {
      if ((*(a2 + 11) - v133) > 0x7530)
      {
        *(a1 + 188) = 0;
      }

      else
      {
        v135 = *(a2 + 12) * 3.0 * 0.0900000036;
      }
    }
  }

  v138 = v132;
  v139 = v135 * v132;
  v140 = *a1;
  v141 = v132 * v132;
  if (v139 >= v134)
  {
    v142 = v134;
  }

  else
  {
    v142 = v139;
  }

  v143 = v138 + v142 / 3.0 * v141;
  v140[10] = v142 * 0.5 * v138;
  v140[11] = v142;
  v140[9] = v143;
  if ((v118 & 0x400) != 0)
  {
    if ((v118 & 0x2000) != 0)
    {
      v144 = *(a2 + 7);
      if (v144 < 0.5)
      {
        v144 = 0.5;
      }

      v145 = v144 * v138;
      v140[1] = v145;
      v140[2] = v145 * 0.25;
      v146 = *(a2 + 8);
      if (v146 < 0.00030461742)
      {
        v146 = 0.00030461742;
      }

      v140[5] = v146 * v138;
    }

    v140[4] = *(a2 + 7) * v138;
    v140[3] = 0.0;
  }

  v147 = v140[1];
  v148 = v140[8];
  if ((v118 & 2) != 0)
  {
    v150 = v140[2];
    v151 = *(v140 + 4);
  }

  else
  {
    v149 = fmax(v140[4], 0.01);
    if (v148 < 0.01)
    {
      *(v140 + 3) = xmmword_298A445C0;
      v148 = 0.01;
    }

    v150 = fmax(v147, 0.01);
    v140[3] = 0.0;
    v151 = vdupq_lane_s64(*&v149, 0);
    v147 = v150;
  }

  v140[1] = fmax(v147, 1.0e-12);
  v140[2] = fmax(v150, 1.0e-12);
  *(v140 + 2) = vmaxnmq_f64(v151, vdupq_n_s64(0x3D719799812DEA11uLL));
  v140[6] = fmax(v140[6], 1.0e-12);
  v140[8] = fmax(v148, 1.0e-12);
  v140[9] = fmax(v143, 1.0e-12);
  v140[11] = fmax(v142, 1.0e-12);
  v152 = &v177 + 8;
  v177 = xmmword_298A43F30;
  *&v176.f64[0] = &v178;
  *&v176.f64[1] = &v179;
  v179 = 0;
  for (j = 8; j != 104; j += 8)
  {
    *(*&v176.f64[1] + j) = v152;
    v152 += 96;
  }

  BlueFin::BigMatrix::Null(&v176, 12, 12);
  v154 = *a1;
  v155 = v176.f64[1];
  v156 = *(*&v176.f64[1] + 8);
  *(v156 + 8) = *(*a1 + 8);
  v157 = *(*&v155 + 16);
  *(v157 + 16) = v154[4];
  *(*(*&v155 + 24) + 24) = v154[2];
  *(*(*&v155 + 32) + 32) = v154[5];
  v158 = *(*&v155 + 40);
  *(v158 + 40) = v154[6];
  v159 = *(*&v155 + 48);
  *(v159 + 48) = v154[8];
  v160 = *(*&v155 + 56);
  *(v160 + 56) = v154[9];
  v161 = *(*&v155 + 64);
  *(v161 + 64) = v154[11];
  v162 = *(v154 + 3);
  *(v156 + 16) = v162;
  *(v157 + 8) = v162;
  v163 = *(v154 + 10);
  *(v160 + 64) = v163;
  *(v161 + 56) = v163;
  v164 = *(v154 + 7);
  *(v158 + 48) = v164;
  *(v159 + 40) = v164;
  v165 = a2[9];
  for (k = 72; k != 104; k += 8)
  {
    *(*(*&v155 + k) + k) = v165;
  }

  result = BlueFin::CheckCovMat(&v176);
  if ((result & 1) == 0)
  {
    DeviceFaultNotify("glpe_processnoise.cpp", 647, "CheckQ", "CheckCovMat(otQM)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_processnoise.cpp", 647, "CheckCovMat(otQM)");
  }

  return result;
}

double BlueFin::ned2hlu@<D0>(__int128 *a1@<X0>, const BlueFin::Matrix *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = *a1;
  v4 = *(a1 + 2);
  v14 = 0x300000001;
  v13 = v4;
  BlueFin::Matrix::mult(v10, a2, 1, &v12, COERCE_DOUBLE(0x300000001));
  v5 = v11 == 1;
  v6 = 4;
  if (v11 == 1)
  {
    v6 = 1;
  }

  v7 = v10[v6];
  *a3 = v10[0];
  *(a3 + 8) = v7;
  v8 = 8;
  if (v5)
  {
    v8 = 2;
  }

  result = *&v10[v8];
  *(a3 + 16) = result;
  return result;
}

uint64_t BlueFin::BigMatrix::operator+=(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  v2 = *(result + 20);
  if (v3 != *(a2 + 16) || v2 != *(a2 + 20))
  {
    DeviceFaultNotify("glpe_matrix.cpp", 1416, "operator+=", "ucLeftNumRows == ucRightNumRows && ucLeftNumCols == ucRightNumCols");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 1416, "ucLeftNumRows == ucRightNumRows && ucLeftNumCols == ucRightNumCols");
  }

  if (v3 >= 1)
  {
    v5 = *(a2 + 8);
    v6 = v3 + 1;
    v7 = 1;
    do
    {
      if (v2 >= 1)
      {
        v8 = (*(*(result + 8) + 8 * v7) + 8);
        v9 = (*(v5 + 8 * v7) + 8);
        v10 = (v2 + 1) - 1;
        do
        {
          v11 = *v9++;
          *v8 = v11 + *v8;
          ++v8;
          --v10;
        }

        while (v10);
      }

      ++v7;
    }

    while (v7 != v6);
  }

  return result;
}

uint64_t BlueFin::GlPeUrbanPosAsst::findRegion(uint64_t a1, float64x2_t *a2, int a3, _BYTE *a4, _BYTE *a5, uint64_t a6, char a7, uint64_t a8, double a9, unsigned __int8 a10)
{
  *a4 = 0;
  v19 = *(a1 + 8);
  v20 = -((*(v19 + 4) * 0.00000011921) * 90.0);
  if ((*v19 & 1) == 0)
  {
    v20 = (*(v19 + 4) * 0.00000011921) * 90.0;
  }

  v21 = (*(v19 + 8) * 0.000000059605) * 360.0;
  if (v21 > 180.0)
  {
    v21 = 360.0 - v21;
  }

  v22 = v20;
  v23 = v21;
  *(a8 + 264) = v22;
  *(a8 + 272) = v23;
  v37 = vcvt_f32_f64(*a2);
  v44 = vcvtq_f64_f32(v37);
  v45 = 0;
  v41 = v22;
  v42 = v23;
  v43 = 0;
  BlueFin::lla2ned(v44.f64, &v41, 0, &v38);
  if (sqrt(v39 * v39 + v38 * v38) >= 30000.0 || ((*(a1 + 24) >> a7) & 1) == 0 || (v24 = *(a1 + 16), *(a8 + 256) = *a1, !v24))
  {
LABEL_32:
    *(a8 + 256) = 0;
    return 0xFFFFFFFFLL;
  }

  v25 = 0;
  v26 = 0;
  v27 = 8 * v24;
  while (1)
  {
    v28 = *(a8 + 264);
    v29 = *(a8 + 272);
    BlueFin::GlPeUrbanPosAsstRegion::unpackRegion((*(a8 + 256) + v26), &v41, v28, v29);
    if ((*a6 & 1) != 0 || (v43 & 0x10000000000) != 0)
    {
      break;
    }

    v30 = *(a6 + 4);
    if (v30 < 2)
    {
      goto LABEL_20;
    }

    if (v30 == 2)
    {
      if ((v43 & 0x1000000000000) != 0)
      {
        goto LABEL_20;
      }
    }

    else if (v30 == 3 && (v43 & 0x1000000000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_31:
    v26 += 8;
    v25 = (v25 + 1);
    if (v27 == v26)
    {
      goto LABEL_32;
    }
  }

  if (*a6)
  {
    v31 = BYTE5(v43) == 0;
  }

  else
  {
    v31 = 1;
  }

  if (v31)
  {
    goto LABEL_31;
  }

LABEL_20:
  v32 = *&v42 * 0.0000175;
  v33 = *&v43 * 0.0000175;
  if (((*(&v41 + 1) - (*&v43 * 0.0000175)) - (*&v42 * 0.0000175)) > v37.f32[1])
  {
    goto LABEL_31;
  }

  v34 = (v32 + (*(&v41 + 1) + v33)) < v37.f32[1] || ((*&v41 - v33) - v32) > v37.f32[0];
  if (v34 || (v32 + (v33 + *&v41)) < v37.f32[0])
  {
    goto LABEL_31;
  }

  *a4 = 1;
  BlueFin::UrbanPosAsstRegionExt::UrbanPosAsstRegionExt(&v38, &v41);
  BlueFin::lla2ned(a2->f64, &v40, 0, v44.f64);
  if ((BlueFin::UrbanPosAsstRegionExt::isNedPosInside(&v38, v44.f64, a3, a5, a10, a9) & 1) == 0)
  {
    goto LABEL_31;
  }

  *(a8 + 4) = 0;
  return v25;
}

void BlueFin::GlPeGnssNavUpa::UrbanPosAssist(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  v4 = a3 + 8;
  *(a3 + 36) = 0;
  *(a3 + 40) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  if (*(*(result + 312) + 21) != 1)
  {
    return;
  }

  v6 = *(a2 + 32);
  if (v6 & 4) == 0 || (v6 & 2) == 0 && (*(*(result + 328) + 1988))
  {
    return;
  }

  v8 = *(result + 320);
  if (*(v8 + 3216) != 1)
  {
    v17 = 0;
    XtrackPos = 0;
    v14 = 0uLL;
    v15 = 0.0;
    v16 = 0.0;
    goto LABEL_16;
  }

  v9 = *(v8 + 3176);
  v10 = *(v8 + 3184);
  v11 = *(v8 + 3192);
  *&v40 = v9;
  *(&v40 + 1) = v10;
  v41 = v11;
  v12 = *(v8 + 3204);
  if (v12 < 35.0)
  {
    v12 = 35.0;
  }

  if (*(*(result + 328) + 8) == 3)
  {
    v12 = 5.0;
  }

  BlueFin::UrbanPosAsstRegionExt::UrbanPosAsstRegionExt(v36, v9, v10, v11, *(v8 + 3196), *(v8 + 3200), v12, *(v8 + 3208));
  isOkToUse = BlueFin::UrbanPosAsstRegionExt::isOkToUse(v36, (a2 + 8), (v6 >> 3) & 1, *a2, &v35, 0);
  v14 = 0uLL;
  v15 = 0.0;
  v16 = 0.0;
  if (!isOkToUse)
  {
    goto LABEL_14;
  }

  if (*(a2 + 36) & 1) != 0 || (v39)
  {
    v17 = 0;
    if (!*(a2 + 36) || !v39)
    {
      XtrackPos = 0;
      goto LABEL_16;
    }
  }

  else if (*(a2 + 40) >= 2u)
  {
LABEL_14:
    v17 = 0;
    XtrackPos = 0;
    goto LABEL_16;
  }

  XtrackPos = BlueFin::UrbanPosAsstRegionExt::getXtrackPos(v36, (a2 + 8), &v40);
  v27 = v37;
  if ((*(a2 + 32) & 8) != 0 && (v38 & 1) == 0)
  {
    v28 = *a2;
    v27 = BlueFin::GlPeGnssNavUpa::UnravelHeadingRad(result, v28, v37);
  }

    ;
  }

    ;
  }

  if (i < 0.0)
  {
    i = -i;
  }

  if (i >= 1.04719755)
  {
    v17 = 0;
    XtrackPos = 0;
    v14 = 0uLL;
  }

  else
  {
    v14 = v40;
    v17 = 1;
    v16 = v41;
    v15 = v27;
  }

LABEL_16:
  *a3 = XtrackPos;
  *(a3 + 8) = v14;
  *(a3 + 24) = v16;
  *(a3 + 32) = v17;
  *(a3 + 36) = v15;
  *(a3 + 40) = 0;
  if (XtrackPos)
  {
    return;
  }

  v19 = *(result + 312);
  if (*(v19 + 20))
  {
    return;
  }

  v20 = *(a2 + 36);
  LOBYTE(v40) = 0;
  v35 = 0;
  v21 = *(a2 + 32);
  v22 = (result + 32);
  v23 = *(*(result + 328) + 8);
  v24 = v23 - 1;
  if (v23 == 6)
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  if (v24 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if ((*(result + 32) & 0x80000000) != 0)
  {
    goto LABEL_46;
  }

  if (v20 & 1) != 0 || (*(result + 49))
  {
    if ((v20 & 1) != 0 && *(result + 49))
    {
      goto LABEL_44;
    }

LABEL_46:
    Region = BlueFin::GlPeUrbanPosAsst::findRegion(v19, (a2 + 8), (*(a2 + 32) >> 3) & 1, &v35, &v40, a2 + 36, v26, result + 32, *a2, (*(a2 + 32) & 0x40) != 0);
    v31 = 0;
    *v22 = Region;
    if (Region < 0)
    {
      goto LABEL_61;
    }

LABEL_52:
    if ((v21 & 0x100) != 0)
    {
      *a3 = v40;
      return;
    }

    if ((v31 & 1) == 0)
    {
      v32 = BlueFin::GlPeUrbanPosAsstCache::getRegion(*(result + 288), Region);
      v33 = *(result + 296);
      v34 = *(result + 304);
      BlueFin::GlPeUrbanPosAsstRegion::unpackRegion(v32, v36, v33, v34);
      BlueFin::UrbanPosAsstRegionExt::operator=(result + 40, v36);
      if ((*(result + 32) & 0x80000000) != 0)
      {
        goto LABEL_61;
      }
    }

    if (v20)
    {
      if ((*(result + 49) & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    else if (*(result + 49))
    {
      goto LABEL_61;
    }

    XtrackPos = BlueFin::UrbanPosAsstRegionExt::getXtrackPos(result + 40, (a2 + 8), v4);
    *a3 = XtrackPos;
    *(a3 + 36) = *(result + 44);
    *(a3 + 40) = *(result + 48);
    goto LABEL_61;
  }

  if (*(a2 + 40) >= 2u)
  {
    goto LABEL_46;
  }

LABEL_44:
  if (BlueFin::UrbanPosAsstRegionExt::isPosInside(result + 40, (a2 + 8), (*(a2 + 32) >> 3) & 1, &v40, (*(a2 + 32) >> 6) & 1, *a2))
  {
    Region = *v22;
    v31 = 1;
  }

  else
  {
    Region = BlueFin::GlPeUrbanPosAsst::findRegion(*(result + 312), (a2 + 8), (*(a2 + 32) >> 3) & 1, &v35, &v40, a2 + 36, v26, result + 32, *a2, (v21 & 0x40) != 0);
    v31 = 0;
    *(result + 32) = Region;
  }

  if ((Region & 0x80000000) == 0)
  {
    goto LABEL_52;
  }

LABEL_61:
  if (XtrackPos && (*(a2 + 32) & 1) == 0 && *(result + 50) == 1)
  {
    LOBYTE(XtrackPos) = 0;
    *a3 = 0;
  }

  *(a3 + 32) = XtrackPos;
}

BlueFin::BigMatrix *BlueFin::BigMatrixDim<21,21>::BigMatrixDim(BlueFin::BigMatrix *this, int a2, int a3)
{
  v4 = this + 24;
  *(this + 1) = xmmword_298A43FA0;
  *this = this + 32;
  *(this + 1) = this + 3560;
  *(this + 445) = 0;
  for (i = 8; i != 176; i += 8)
  {
    *(*(this + 1) + i) = v4;
    v4 += 168;
  }

  BlueFin::BigMatrix::Clone(this, a2, a3);
  return this;
}

void BlueFin::GlPePolaroid::GetPInLOS(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 56) == 1)
  {
    v5 = *(a2 + 8);
  }

  else if (a3)
  {
    v5 = *(a2 + 8);
    v6 = *(v5 + 8);
    v7 = v6[2];
    v8 = v6[4];
    v9 = v6[6];
    v10 = __sincosf_stret(*(a1 + 104));
    v6[2] = v8 * v10.__sinval + v7 * v10.__cosval;
    v6[4] = (v8 * v10.__cosval - v7 * v10.__sinval) * *(a1 + 108);
    v6[6] = -v9;
  }

  else
  {
    v11 = *(*(a2 + 8) + 8);
    v12 = v11[3];
    v13 = v11[5];
    v28[0] = v11[1];
    v28[1] = v12;
    *&v28[16] = 0x300000001;
    v28[2] = v13;
    BlueFin::Matrix::mult(v26, *(a1 + 72), 1, v28, v28[0]);
    v14 = v27;
    v5 = *(a2 + 8);
    v15 = *(v5 + 8);
    v15[1] = v26[0];
    v16 = v14 == 1;
    v17 = 4;
    if (v16)
    {
      v17 = 1;
    }

    v15[3] = v26[v17];
    v18 = 8;
    if (v16)
    {
      v18 = 2;
    }

    v15[5] = v26[v18];
  }

  v19 = *(v5 + 8);
  v20 = 0.0;
  for (i = 1; i != 13; ++i)
  {
    v22 = *(v19 + 8 * i);
    if (v22 != 0.0)
    {
      v23 = 0.0;
      for (j = 8; j != 104; j += 16)
      {
        v25 = vmulq_f64(*(*(*(*(a1 + 80) + 8) + 8 * i) + j), *(v19 + j));
        v23 = v23 + v25.f64[0] + v25.f64[1];
      }

      v20 = v20 + v23 * v22;
    }
  }
}

BOOL BlueFin::GlPePolaroid::PolaroidInnovPR(uint64_t a1, const BlueFin::GlSignalId *a2, double *a3, double *a4, double *a5, unsigned int a6, int a7, char a8, double a9, double a10)
{
  v74 = 0.0;
  v75 = 0.0;
  v76 = 0.0;
  v71[0] = *a2;
  v20 = (a2 + 4);
  v72 = *(a2 + 1);
  v73 = *(a2 + 4);
  Metrics = BlueFin::GlPePolaroid::GetMetrics(a1, &v74, v71, 0);
  result = 0;
  if (!Metrics)
  {
    return result;
  }

  v23 = *(a1 + 48);
  if (*(v23 + 732))
  {
    v24 = 712;
  }

  else
  {
    v25 = 0.0;
    if (*(a1 + 96) > 0xFu)
    {
      goto LABEL_7;
    }

    v24 = 48;
  }

  v25 = *(v23 + v24);
LABEL_7:
  v26 = v74 - v25;
  *a5 = v74 - v25;
  if (a7 == 2)
  {
    v32 = *(a1 + 125);
    if (v32 < 0xB)
    {
      v33 = (v32 - 2);
      if (v33 < 1.0)
      {
        v33 = 1.0;
      }

      v31 = v33 / 7.0;
      v30 = 2.0;
      goto LABEL_17;
    }

    v69 = "m_scKfStateConfLowCnt >= 0 && m_scKfStateConfLowCnt <= Design::KF_CONF_CNT_MAX_THRESH";
    DeviceFaultNotify("glpe_polaroid.cpp", 687, "PolaroidInnovPR", "m_scKfStateConfLowCnt >= 0 && m_scKfStateConfLowCnt <= Design::KF_CONF_CNT_MAX_THRESH");
    v70 = 687;
LABEL_127:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_polaroid.cpp", v70, v69);
  }

  v27 = 1.0;
  if (a7 != 1)
  {
    goto LABEL_18;
  }

  v28 = *(a1 + 124);
  if (v28 >= 0xB)
  {
    v69 = "m_scKfStateConfMedCnt >= 0 && m_scKfStateConfMedCnt <= Design::KF_CONF_CNT_MAX_THRESH";
    DeviceFaultNotify("glpe_polaroid.cpp", 682, "PolaroidInnovPR", "m_scKfStateConfMedCnt >= 0 && m_scKfStateConfMedCnt <= Design::KF_CONF_CNT_MAX_THRESH");
    v70 = 682;
    goto LABEL_127;
  }

  v29 = (v28 - 2);
  v30 = 1.0;
  if (v29 < 1.0)
  {
    v29 = 1.0;
  }

  v31 = v29 / 7.0;
LABEL_17:
  v27 = (v31 + v30) * (v31 + v30);
LABEL_18:
  v34 = *(a1 + 32);
  v35 = *(v34 + 16);
  if (v35 == 1)
  {
    v36 = sqrt(v76 + v75);
    v37 = v26 / v36;
    if (v37 < 0.0)
    {
      v37 = -v37;
    }

    v38 = v37 / sqrt(v27);
  }

  else
  {
    v38 = v26 / sqrt(v75 + v76 * v27);
    if (v38 < 0.0)
    {
      v38 = -v38;
    }

    v36 = sqrt(v76 + v75);
  }

  v39 = *(v34 + 8);
  *a3 = v38;
  v40 = (*(v23 + 24) + *(v23 + 24)) / v36;
  if (v40 > 2.0)
  {
    v40 = 2.0;
  }

  if (v40 < 1.0)
  {
    v40 = 1.0;
  }

  *a4 = v40;
  if (*(a1 + 96) <= 0xFu && *(v23 + 24) <= a10)
  {
    a10 = *(v23 + 24);
  }

  MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*(a1 + 8), a2, 0, 0);
  v42 = 20;
  if (*(a1 + 93))
  {
    v42 = 28;
  }

  v43 = *&MeMeas[v42];
  v44 = 0.75;
  if ((v43 - 1) < 2)
  {
    v44 = 1.0;
  }

  v45 = a10 * v44;
  if ((a8 & 1) != 0 || *(a1 + 96) <= 0xFu)
  {
    if (*(a1 + 89) == 1)
    {
      return *a3 < 1.0;
    }

    v57 = *a5;
    if (a9 >= 10.0)
    {
      v58 = -v57;
    }

    else
    {
      v58 = -v57;
      if (v57 >= 0.0)
      {
        v59 = *a5;
      }

      else
      {
        v59 = -v57;
      }

      if (v59 > v45)
      {
        return 0;
      }
    }

    if (v57 < 0.0)
    {
      v57 = v58;
    }

    v60 = v45 * 5.0;
    return v57 <= v60;
  }

  if (a9 >= 10.0)
  {
    if (*(a1 + 116) > a6)
    {
      goto LABEL_71;
    }

    v65 = *a5;
    v66 = *(*(a1 + 48) + 24);
    if (*a5 <= fmin(v66, 20.0))
    {
      if (v35 != 1)
      {
        goto LABEL_71;
      }

      if (v65 < 0.0)
      {
        v65 = -v65;
      }

      if (v65 <= v66 * 3.0)
      {
LABEL_71:
        *a4 = 5.0;
        v61 = *(a1 + 120);
        v62 = *a5;
        if (a6 >= 9 && !v61)
        {
          v63 = -v62;
          if (v62 >= 0.0)
          {
            v63 = *a5;
          }

          v64 = 3.0;
          if (v63 > *(*(a1 + 48) + 24) * 5.0)
          {
            goto LABEL_79;
          }
        }

        v56 = 5.0;
        if (v61 == 2 || v62 < 0.0)
        {
          v64 = 7.5;
          if ((*(*(a1 + 32) + 8) - 1) <= 1)
          {
LABEL_79:
            *a4 = v64;
            v56 = v64;
          }
        }

        v50 = *a3;
        return v50 <= v56;
      }
    }
  }

  v46 = *(a1 + 32);
  v47 = *(v46 + 16);
  if (!v47 || (v48 = *(v46 + 8)) == 0)
  {
    v60 = v45 / v36;
    if (v60 > 3.0)
    {
      v60 = 3.0;
    }

    if (v60 < 1.0)
    {
      v60 = 1.0;
    }

    goto LABEL_87;
  }

  result = 0;
  v49 = v35 & 0xFFFFFFFE;
  v50 = *a3;
  v52 = *a3 > 4.0 && v49 == 2;
  v53 = 3.0;
  v55 = v50 > 3.0 && v39 != 6 && v35 == 1;
  if (!v55 && !v52)
  {
    if (v35 != 1)
    {
      goto LABEL_97;
    }

    if (v48 - 3 <= 2)
    {
      v56 = 1.5;
      return v50 <= v56;
    }

    if (v39 == 6)
    {
      v68 = 0x4010000000000000;
    }

    else
    {
LABEL_97:
      if (v48 <= 2)
      {
        v60 = 3.0;
        if (v47 == 9)
        {
LABEL_87:
          *a4 = v60;
          v57 = *a3;
          return v57 <= v60;
        }

        if (v43 != 4)
        {
          if (v43 == 3)
          {
            v60 = *a4;
            v53 = 1.0;
LABEL_122:
            if (v60 > v53)
            {
              v60 = v53;
            }

            goto LABEL_87;
          }

          if (v43)
          {
            if (*v20 == 2 && (a9 > 10.0 || a6 <= 7))
            {
              v60 = *a4;
            }

            else
            {
              v60 = *a4;
              v53 = 1.5;
            }

            goto LABEL_122;
          }
        }

        v60 = *a4;
        v53 = 0.5;
        goto LABEL_122;
      }

      if (v49 == 2)
      {
        return v50 <= 2.0 || v48 - 6 < 0xFFFFFFFD;
      }

      if (v48 != 3)
      {
        return 1;
      }

      v68 = 0x4008000000000000;
    }

    *a4 = v68;
    v50 = *a3;
    v56 = 4.0;
    return v50 <= v56;
  }

  return result;
}

uint64_t BlueFin::GlPePolaroid::GetMetrics(uint64_t a1, uint64_t a2, BlueFin::GlSignalId *a3, int a4)
{
  if (a4)
  {
    v48 = 0;
    v49 = -1;
    v50 = 575;
    v6 = BlueFin::GlPeNavUtil::PackSkfMeas_RR_SignalId(a1, v45, a3, (*(*(a1 + 32) + 8) - 1) < 2);
    if (v6)
    {
      v42 = xmmword_298A442E0;
      v41[0] = &v43;
      v41[1] = v44;
      v44[0] = 0;
      v44[1] = &v42 + 8;
      if (v47 == -1)
      {
        v7 = 263361;
      }

      else
      {
        v7 = 1217;
      }

      v38[1] = 0;
      v39[0] = v40;
      v39[1] = 0x100000000;
      v40[0] = 0;
      v40[1] = 0;
      v37[0] = v38;
      v37[1] = 0x100000000;
      v38[0] = 0;
      v35[0] = v36;
      v35[1] = 0xD00000000;
      memset(v36, 0, sizeof(v36));
      v8 = a1 + *(*a1 - 24);
      v9 = *(v8 + 88);
      v10 = *(a1 + 16);
      v11 = **(a1 + 24);
      v12 = *(v8 + 208);
      v13 = *(v8 + 216);
      v14 = *(v8 + 224);
      v15 = *(v8 + 232);
      v23[0] = v35;
      v23[1] = v8 + 8;
      v23[2] = v9;
      v24 = v11;
      v25 = 3;
      v26 = v7;
      v27 = v8 + 104;
      v28 = 0;
      v29 = v8 + 152;
      v30 = v12;
      v31 = v13;
      v32 = v14;
      v33 = v15;
      v34 = xmmword_298A44280;
      v19[0] = v39;
      v19[1] = v37;
      v19[2] = v41;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      if ((*(*v10 + 16))(v10, v23, v19, v45, &BlueFin::GlSet128::BIT0))
      {
        DeviceFaultNotify("glpe_polaroid.cpp", 1220, "GetMetrics", "m_rotComputeZRH.Compute(otInp, otOut, &otSkfMeas, GlSet128::BIT0) == SKF_ZRH_OK");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_polaroid.cpp", 1220, "m_rotComputeZRH.Compute(otInp, otOut, &otSkfMeas, GlSet128::BIT0) == SKF_ZRH_OK");
      }

      *a2 = *(v39[0] + 8) - *(v37[0] + 8);
      BlueFin::GlPePolaroid::GetPInLOS(a1, v41, 1);
      *(a2 + 8) = v46 * v46;
      *(a2 + 16) = v16;
    }
  }

  else if ((*(*(a1 + 1904) + 4 * (*(a3 + 4) >> 5)) >> (*(a3 + 4) & 0x1F)))
  {
    v17 = a1 + 24 * *(a1 + *(a3 + 4) + 1328);
    *(a2 + 16) = *(v17 + 144);
    *a2 = *(v17 + 128);
    return 1;
  }

  else
  {
    GlCustomLog(14, "GetMetrics missing svId %d\n", *a3);
    return 0;
  }

  return v6;
}

uint64_t BlueFin::GlBigArrayIterator::Next(BlueFin::GlBigArrayIterator *this)
{
  v1 = *(this + 4);
  v2 = *this;
  if (v1 >= *(*this + 32))
  {
    v7 = "HasNext()";
    DeviceFaultNotify("glinc_array.h", 360, "Next", "HasNext()");
    v8 = 360;
    goto LABEL_8;
  }

  v3 = *(v2 + 16);
  *(this + 4) = v1 + 1;
  v4 = *(v3 + 2 * v1);
  v5 = *(v2 + 28);
  result = (v5 + v4);
  if (result - v5 >= *(v2 + 30))
  {
    v7 = "handle - m_usMinHandle < m_usNumHandles";
    DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
    v8 = 313;
    goto LABEL_8;
  }

  if (*(*(v2 + 8) + 2 * (result - v5)) == -1)
  {
    v7 = "m_potArray->Has(handle)";
    DeviceFaultNotify("glinc_array.h", 362, "Next", "m_potArray->Has(handle)");
    v8 = 362;
LABEL_8:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glinc_array.h", v8, v7);
  }

  return result;
}

void BlueFin::GlPeNavGnssKF::Update(BlueFin::GlPeNavGnssKF *this, uint64_t a2, int *a3)
{
  v4 = *this;
  v5 = *this;
  v6 = *(*this - 24);
  v7 = this + v6;
  v8 = *(this + v6 + 8);
  v9 = *(this + v6 + 16);
  v508[0] = v8;
  v508[1] = v9;
  v10 = *(this + v6 + 24);
  v508[2] = v10;
  v505 = v507;
  v506 = 8;
  memset(v507, 0, 32);
  v502 = xmmword_298A43FD0;
  v500 = &v503;
  v501 = v504;
  v504[0] = 0;
  v504[1] = &v502 + 8;
  *&v11 = COERCE_UNSIGNED_INT(3.0);
  if ((*(*(this + 281) + 8) - 1) < 2)
  {
    *&v11 = 0.75;
  }

  if (fabsf(*(this + 331)) > *&v11 && BlueFin::GlPeNavGnssMotion::IsNotTurning((this + 4776), v11))
  {
    TrueHeadingRad = BlueFin::GlPeNavGnssKF::GetTrueHeadingRad(this);
    v13 = *(v7 + 50);
    *(this + 392) = TrueHeadingRad;
    *(this + 393) = v13;
    *(this + 197) = v8;
    *(this + 198) = v9;
    *(this + 199) = v10;
    v6 = *(v5 - 24);
  }

  v453 = *(this + v6 + 152);
  if (*(this + 26))
  {
    v14 = 0;
    v15 = 1;
    goto LABEL_27;
  }

  v16 = *(*(*(this + 5) + 32) + 32);
  v17 = sqrtf(v16);
  v18 = BlueFin::GlPeNavGnssKF::LeftXtcRecently(this);
  v19 = *(this + 281);
  if (v18 || v17 >= 3.14159265)
  {
    v20 = *(v19 + 8);
  }

  else
  {
    v20 = *(v19 + 8);
    if ((v20 - 3) > 0xFFFFFFFD)
    {
      v21 = 0;
LABEL_15:
      v22 = *(this + 2932);
LABEL_17:
      v23 = *(this + 284);
      if (*(v23 + 2) < 1 || *(v23 + 45))
      {
        v24 = (*(*this + 72))(this);
        v14 = v17 >= 3.14159265 || v24 > 0x7D0;
      }

      else
      {
        v14 = 1;
      }

      goto LABEL_26;
    }
  }

  if (v20 == 3)
  {
    v21 = *(v19 + 16) != 1;
    goto LABEL_15;
  }

  v22 = *(this + 2932);
  v21 = 1;
  v14 = 1;
  if (v20 != 6)
  {
    goto LABEL_17;
  }

LABEL_26:
  v15 = v22 & v21 ^ 1;
  v4 = *this;
LABEL_27:
  if (*(this + *(v4 - 24) + 240))
  {
    v26 = 20;
  }

  else
  {
    v26 = 4;
  }

  if ((*(*(this + 281) + 8) - 1) >= 2)
  {
    v27 = v26;
  }

  else
  {
    v27 = v26 + 1;
  }

  if ((*(v4 + 56))(this) > 0x5A)
  {
    v27 |= 2u;
  }

  v28 = *(*(this + 284) + 8);
  if (v28 && (*(this + *(*this - 24) + 200) - v28) >> 5 < 0x753)
  {
    v27 |= 0x20u;
  }

  if ((*(a3 + 1) & 0x40) != 0 && BlueFin::GlPeNavGnssKF::PolaroidLeftTunnelRecently(this, 0x4E20u))
  {
    v27 |= ((*(*(this + 281) + 8) - 3) < 3) << 7;
  }

  v29 = (this + *(*this - 24));
  if (*(v29 + 241))
  {
    v30 = 8;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30 | v27 & 0xFFFFFFF7;
  v32 = sqrt(v29[14] * v29[14] + v29[13] * v29[13]);
  v466 = *(v29 + 1);
  v471 = *(v29 + 2);
  v465 = *(v29 + 3);
  v33 = BlueFin::GlPeNavGnssKF::GetTrueHeadingRad(this);
  *&v34 = v466;
  *&v35 = v465;
  *(&v35 + 1) = v466;
  v36 = *(v29 + 50);
  *(&v34 + 1) = v471;
  *&v534[24] = v35;
  *&v534[8] = v34;
  *v534 = v32;
  *&v534[40] = v471;
  *&v535 = v465;
  *(&v535 + 1) = __PAIR64__(v36, LODWORD(v33));
  *&v536 = __PAIR64__(v31, LODWORD(v33));
  BlueFin::GlPeGnssNavUpa::SetUrbanPosAssist(this + 2280, v534, &v525);
  v499 = 0;
  BlueFin::GlPeNavGnssKF::UpdateHeadingConsistentWithDeals(this, v526[24], &v499);
  if (!(v15 & 1 | !v14))
  {
    BlueFin::GlPeNavGnssKF::DealsMeasUpdate(this, &v500, (*a3 >> 8) & 1);
  }

  v37 = *(this + 281);
  v38 = v37[4];
  v458 = v15;
  if ((v37[2] - 1) > 1)
  {
    v460 = 0;
  }

  else
  {
    v460 = (v38 & 0xFFFFFFFE) == 2;
    if (*(this + 26) == 1 && (v38 & 0xFFFFFFFE) == 2)
    {
      v39 = 1;
      v460 = 1;
LABEL_55:
      v462 = v39;
      goto LABEL_57;
    }
  }

  if (v38 == 7)
  {
    v39 = 1;
    goto LABEL_55;
  }

  if (v38 == 1)
  {
    v39 = v37[5] == 1;
    goto LABEL_55;
  }

  v462 = 0;
LABEL_57:
  v496 = v498;
  v497 = 8;
  memset(v498, 0, 32);
  v493 = v495;
  v494 = 8;
  memset(v495, 0, 32);
  v490 = v492;
  v491 = 8;
  memset(v492, 0, 32);
  v487 = v489;
  v488 = 8;
  memset(v489, 0, 32);
  v484 = v486;
  v485 = 19;
  memset(v486, 0, sizeof(v486));
  v481 = v483;
  v482 = 19;
  memset(v483, 0, sizeof(v483));
  v477[1] = 0;
  v478 = v480;
  v479 = 19;
  memset(v480, 0, sizeof(v480));
  v476[0] = v477;
  v476[1] = 0x100000000;
  v477[0] = 0;
  v40 = *(this + 1560);
  if (v40 >= 1)
  {
    v454 = v14;
    v41 = 0;
    v42 = 0;
    LOBYTE(v43) = 0;
    v459 = 0;
    v463 = this + 264;
    v464 = this + 352;
    v461 = this + 256;
    v44 = vdup_n_s32(0x42C60000u);
    v457 = (this + 3040);
    v456 = v44;
    while (1)
    {
      v45 = a2 + 56 * v41;
      v47 = (v45 + 32);
      v46 = *(v45 + 32);
      v48 = *(v45 + 36);
      LOBYTE(v516.f64[0]) = v46;
      HIDWORD(v516.f64[0]) = v48;
      LOWORD(v516.f64[1]) = *(v45 + 40);
      v49 = *(v45 + 44);
      if (v49 != 10)
      {
        v472 = v42;
        if (v49 == 2)
        {
          v50 = *(*this - 24);
          v51 = this + 352;
        }

        else
        {
          if (v49)
          {
            break;
          }

          v50 = *(*this - 24);
          v51 = this + 264;
        }

        if ((*(*&v51[v50] + 4 * (SLOWORD(v516.f64[1]) >> 5)) >> (LOBYTE(v516.f64[1]) & 0x1F)))
        {
          break;
        }
      }

LABEL_269:
      if (++v41 >= v40)
      {
        v473 = v42;
        v190 = v43 > 0;
        v14 = v454;
        goto LABEL_272;
      }
    }

    LOBYTE(v514.f64[0]) = v46;
    HIDWORD(v514.f64[0]) = *(v45 + 36);
    LOWORD(v514.f64[1]) = *(v45 + 40);
    v52 = *a3;
    *&v511 = v512;
    *(&v511 + 1) = 0x100000000;
    v512[0] = 0;
    v512[1] = 0;
    *&v509.f64[0] = v510;
    *&v509.f64[1] = 0x100000000;
    v510[0] = 0;
    v510[1] = 0;
    *&v534[8] = 0xC0000000CLL;
    memset(&v534[16], 0, 32);
    v535 = 0u;
    v536 = 0u;
    v537 = 0u;
    v538 = 0u;
    v539 = 0;
    v53 = *(this + 281);
    v54 = *(v53 + 8);
    v55 = v54 - 3;
    *v534 = &v534[16];
    v56 = (v54 - 3) <= 2 && **(this + 1) < 0x493E0u;
    v57 = *(v53 + 16) & 0xFFFFFFFE;
    if (fabsf(*(this + 331)) >= 3.5)
    {
      v58 = 1219;
    }

    else if (((v54 - 1) < 2 || v56) && v57 == 2)
    {
      v58 = 1223;
    }

    else
    {
      v58 = 1219;
    }

    if (v55 >= 0xFFFFFFFE)
    {
      v58 |= 0x200u;
    }

    v59 = v58 & 0xFFFFEFFF | (((v52 >> 3) & 1) << 12);
    if (*(v45 + 24) == -1)
    {
      v60 = v59 | 0x40000;
    }

    else
    {
      v60 = v59;
    }

    v61 = *this;
    if ((v52 & 0x4000) != 0 && v55 >= 0xFFFFFFFE && (*(this + *(v61 - 24) + 242) & 1) != 0 && v57 == 2)
    {
      v60 |= 0x6000u;
    }

    v62 = this + *(v61 - 24);
    v63 = *(v62 + 11);
    v64 = **(this + 280);
    v65 = *(v62 + 52);
    *&v66 = *(v62 + 54);
    v67 = *(v62 + 56);
    v68 = *(v62 + 58);
    v69 = *(v62 + 55);
    *&v525 = v534;
    *(&v525 + 1) = v62 + 8;
    *v526 = v63;
    *&v526[8] = v64;
    *&v526[12] = 3;
    *&v526[16] = v60;
    *&v526[24] = v62 + 104;
    *&v526[32] = 0;
    *&v527 = v62 + 152;
    *(&v527 + 1) = v65;
    v528 = v66;
    v529 = v67;
    v530 = v68;
    v531 = 0;
    v532 = v69;
    *v518 = &v511;
    *&v518[8] = &v509;
    *&v518[16] = &v500;
    v519 = v476;
    v521 = 0;
    v522 = 0;
    v520 = 0.0;
    v523 = &v505;
    v524 = 0;
    if ((*(**(this + 2) + 16))(*(this + 2), &v525, v518, v45, &BlueFin::GlSet128::BIT0))
    {
      v70 = *(v45 + 44);
      if (v70 == 2)
      {
        BlueFin::GlSetBase::Remove(&v464[*(*this - 24)], SLOWORD(v514.f64[1]));
        v83 = BlueFin::GlSignalIdArray::Get(*(*(this + 1) + 18792), &v514);
        if (v83)
        {
          *(v83 + 273) = 39;
        }
      }

      else
      {
        if (v70)
        {
          v450 = "false";
          DeviceFaultNotify("glpe_navgnsskf.cpp", 4517, "RunComputeZRH", "false");
          v451 = "glpe_navgnsskf.cpp";
          v452 = 4517;
LABEL_631:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v451, v452, v450);
        }

        BlueFin::GlSetBase::Remove(&v463[*(*this - 24)], SLOWORD(v514.f64[1]));
        v71 = BlueFin::GlSignalIdArray::Get(*(*(this + 1) + 18792), &v514);
        if (v71)
        {
          *(v71 + 272) = 39;
        }
      }

      goto LABEL_96;
    }

    v72 = *(v511 + 8);
    v73 = *(*&v509.f64[0] + 8);
    if ((*(this + 26) & 1) == 0)
    {
      v74 = *(v45 + 44);
      if (v74 == 2)
      {
        v84 = v501[1];
        v85 = v84[2];
        v86 = v84[4];
        v87 = v84[6];
        v88 = __sincosf_stret(*(this + *(*this - 24) + 176));
        v84[2] = v86 * v88.__sinval + v85 * v88.__cosval;
        v84[4] = (v86 * v88.__cosval - v85 * v88.__sinval) * *(this + 331);
        v89 = -v87;
        v44 = v456;
        v84[6] = v89;
      }

      else
      {
        if (v74)
        {
          goto LABEL_99;
        }

        v75 = v501[1];
        v76 = v75[3];
        v77 = v75[5];
        *v534 = v75[1];
        *&v534[8] = v76;
        v540[0] = 0x300000001;
        *&v534[16] = v77;
        BlueFin::Matrix::mult(&v525, (this + 1336), 1, v534, *v534);
        v78 = v533;
        v79 = v501[1];
        v79[1] = v525;
        _ZF = v78 == 1;
        v81 = 8;
        if (!_ZF)
        {
          v81 = 32;
        }

        v79[3] = *&v526[v81 - 16];
        v82 = 64;
        if (_ZF)
        {
          v82 = 16;
        }

        v79[5] = *&v526[v82 - 16];
      }
    }

    v74 = *(v45 + 44);
LABEL_99:
    v90 = v72 - v73;
    if (!v74)
    {
      if ((*(a3 + 1) & 0x40) == 0)
      {
        LOBYTE(v511) = LOBYTE(v516.f64[0]);
        DWORD1(v511) = HIDWORD(v516.f64[0]);
        WORD4(v511) = LOWORD(v516.f64[1]);
        v91 = *(this + 2);
        LODWORD(v525) = 0;
        *(&v525 + 1) = &v526[4];
        v526[0] = 8;
        memset(&v526[4], 0, 32);
        v527 = xmmword_298A41DA0;
        v528 = v44;
        LODWORD(v529) = 1120272384;
        BlueFin::stDops::stDops(v534, &v525);
        *(&v537 + 1) = v91;
        v92 = **(this + 1);
        BlueFin::GlSignalIdSet::GetSvIdSet(v518, &v481);
        v509.f64[0] = *(this + *(*this - 24) + 88);
        LODWORD(v514.f64[0]) = **(this + 280);
        v513 = 0;
        BlueFin::GlPeDops::GetDops(v534, v92);
        *&v481[4 * (SWORD4(v511) >> 5)] |= 1 << SBYTE8(v511);
        v93 = *(this + 5);
        v94 = *(*(v93 + 8) + 8);
        v95 = *(*(v93 + 24) + 24);
        if (!*(*(this + 284) + 2) && (*(*this + 72))(this) <= 0x7CF && *(&v527 + 1) < 99.0)
        {
          v96 = *(this + 609);
          v97 = fmax(v96 * *(&v527 + 1), 20.0);
          if (*(this + 380) >= v97)
          {
            v98 = v97;
          }

          else
          {
            v98 = *(this + 380);
          }

          if (*(&v527 + 1) < 3.0 && BlueFin::GlSignalIdSet::CntSecondarySignalSvIdSet(&v478, 2))
          {
            v99 = *(this + 5);
            v100 = *(v99[1] + 8);
            v101 = *(v99[3] + 24);
            v102 = v100 + v101;
            v103 = *(v99[5] + 40);
            v104 = sqrtf(v102 + v103);
            v105 = v104 + v104;
            v106 = v96;
            if (v105 <= v106)
            {
              v105 = v96;
            }

            v107 = v105;
            if (v98 >= v107)
            {
              v98 = v107;
            }
          }

          if (fabsf(*(this + 331)) < 3.5 && *(*(this + 281) + 16) == 3 && v98 > 100.0)
          {
            v98 = 100.0;
          }

          *v457 = v98;
          v44 = v456;
        }

        v108 = *(this + 284);
        v109 = *(v108 + 2);
        v110 = v109 >= 1 && v109 < *(v108 + 4);
        v111 = (*(*(this + 281) + 8) - 3) < 0xFFFFFFFE;
        v112 = v111 || v110;
        v113 = v111 ^ v112;
        if (v109 >= 1 && (v112 & 1) == 0)
        {
          v113 = *(v108 + 45) == 0;
        }

        v114 = v94;
        v115 = v95;
        v116 = sqrtf(v114 + v115);
        v117 = 56;
        if (*(this + 26))
        {
          v118 = 40;
        }

        else
        {
          v118 = 56;
        }

        if (!*(this + 26))
        {
          v117 = 40;
        }

        v119 = *(*(*(this + 5) + 8) + 8) + *(*(*(this + 5) + 24) + 24) + *(*(*(this + 5) + v118) + v118) + *(*(*(this + 5) + v117) + v117);
        v120 = (*(*(this + *(*this - 24)) + 16))(this + *(*this - 24));
        v121 = v120 * v120;
        if (v121 >= v119)
        {
          v119 = v121;
        }

        v122 = (*(*this + 72))(this);
        if (BlueFin::GlPePolaroidGnssKF::Polaroid(v457, v90, v472, v116, v122, &v511, v119, v113 & 1))
        {
          v123 = fabs(v90);
          v124 = v123 > 100.0;
          if (*(&v527 + 1) < 5.0 && v472 > 4)
          {
            v124 = 1;
          }

          if ((v113 | v124))
          {
            *(v45 + 48) = 0;
            v126 = SWORD4(v511);
            if (v123 > 400.0)
            {
              *(*(this + 202) + 4 * (SWORD4(v511) >> 5)) |= 1 << SBYTE8(v511);
            }

            BlueFin::GlSetBase::Remove(&v463[*(*this - 24)], v126);
            BlueFin::GlSetBase::Remove(&v481, SWORD4(v511));
            v127 = BlueFin::GlSignalIdArray::Get(*(*(this + 1) + 18792), &v511);
            if (v127)
            {
              *(v127 + 272) = 10280;
            }

            goto LABEL_96;
          }

          if (v472 >= 5 && *(&v527 + 1) >= 5.0)
          {
            v128 = *v457 * *v457;
            if (v128 < *(v476[0] + 8))
            {
              v128 = *(v476[0] + 8);
            }

            *(v476[0] + 8) = v128;
          }
        }
      }

      v129 = BlueFin::GlSignalIdArray::Get(*(*(this + 1) + 18792), &v516);
      if (v129)
      {
        *(v129 + 272) = 44;
      }

      v130 = 0;
      v131 = LOBYTE(v516.f64[0]) >> 5;
      v132 = 1 << SLOBYTE(v516.f64[0]);
      v133 = v496;
      *&v496[4 * v131] |= 1 << SLOBYTE(v516.f64[0]);
      v134 = &v133[4 * v497 - 4];
      do
      {
        if (*v134)
        {
          v135 = *v134 - (((*v134 >> 1) & 0x5B6DB6DB) + ((*v134 >> 2) & 0x9249249));
          v130 = ((v135 + (v135 >> 3)) & 0xC71C71C7) + v130 - 63 * (((v135 + (v135 >> 3)) & 0xC71C71C7) / 0x3F);
        }

        v134 -= 4;
      }

      while (v134 >= v133);
      v472 = v130;
      if (v90 < 20.0)
      {
        *&v490[4 * v131] |= v132;
      }

      *&v461[*(*this - 24)] |= 1u;
      v74 = *(v45 + 44);
    }

    if (v74 != 2)
    {
LABEL_237:
      v178 = *(v45 + 44);
      if ((*(a3 + 1) & 0x40) != 0)
      {
        goto LABEL_247;
      }

      if (!v178 && BlueFin::GlPeNavGnssKF::UsedXtcRecently(this))
      {
        v179 = *(this + 281);
        if ((*(v179 + 8) - 1) <= 1 && (*(v179 + 16) & 0xFFFFFFFE) == 2)
        {
          *(v476[0] + 8) = *(v476[0] + 8) * 4.0;
        }
      }

      v178 = *(v45 + 44);
      v180 = !v460;
      if (v178)
      {
        v180 = 1;
      }

      if (v180)
      {
LABEL_247:
        if ((v178 | 2) != 2)
        {
          v182 = 0;
          v183 = 13;
          v181 = v462;
LABEL_252:
          BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v500, 1, 0, v181, v90, *(v476[0] + 8));
          v184 = *(v45 + 44);
          if ((v184 | 2) == 2)
          {
            v42 = v472;
            if ((v181 & 1) == 0)
            {
              BlueFin::BigMatrix::ReShape(this + 8, 12, 12);
              v42 = v472;
              if (v182)
              {
                v185 = v183;
                if (v183 <= 0xC)
                {
                  v186 = 12;
                }

                else
                {
                  v186 = v183;
                }

                v187 = (v186 + 1);
                do
                {
                  for (i = 1; i != 13; ++i)
                  {
                    if (v185 != i)
                    {
                      v189 = *(this + 5);
                      *(*(v189 + 8 * v185) + 8 * i) = 0;
                      *(*(v189 + 8 * i) + 8 * v185) = 0;
                    }
                  }

                  ++v185;
                }

                while (v185 != v187);
              }
            }

            v184 = *(v45 + 44);
          }

          else
          {
            v42 = v472;
          }

          if (!v184)
          {
            *&v478[4 * (SLOWORD(v516.f64[1]) >> 5)] |= 1 << SLOBYTE(v516.f64[1]);
          }

          goto LABEL_268;
        }
      }

      else
      {
        *(v476[0] + 8) = fmax(*(v476[0] + 8), 50.0);
      }

      v181 = v462;
      if (v462)
      {
        v182 = 0;
        v183 = 13;
      }

      else
      {
        BlueFin::BigMatrix::ReShape(this + 8, 8, 8);
        v182 = 1;
        BlueFin::BigMatrix::ReShape(&v500, 1, 8);
        v181 = v462;
        v183 = 9;
      }

      goto LABEL_252;
    }

    if ((*(a3 + 1) & 0x40) == 0)
    {
      v455 = SLOWORD(v516.f64[1]);
      *&v484[4 * (SLOWORD(v516.f64[1]) >> 5)] |= 1 << SLOBYTE(v516.f64[1]);
      v136 = 64;
      if (!*(this + 26))
      {
        v136 = 48;
      }

      v137 = *(this + 284);
      if (*(v137 + 2) >= *(v137 + 4))
      {
        v138 = *(v137 + 1);
      }

      else
      {
        v138 = 0;
      }

      v139 = 0;
      v140 = *(this + 5);
      v141 = *(*(v140 + 16) + 16);
      v142 = *(*(v140 + 32) + 32);
      v143 = v141 + v142;
      v144 = *(*(v140 + v136) + v136);
      v145 = sqrtf(v143 + v144);
      if (v459 >= 2 && (v138 & 1) == 0)
      {
        v146 = fabsf(*(this + 331));
        v147 = 3.0;
        if (v146 > 5.0)
        {
          v147 = 10.0;
          if (v459 > 4)
          {
            v147 = 4.0;
          }

          if (*(*(this + 281) + 8) == 6)
          {
            v147 = 17.5;
          }

          if (v146 < 15.0)
          {
            v147 = (v146 + -5.0) * 0.1 + 3.0;
          }
        }

        *(this + 381) = v147;
        v139 = v145 < 64.0 && fabs(v90) > v147;
      }

      if (v43 > 6 || (v148 = 99.0, v139))
      {
        v149 = *(this + 2);
        LODWORD(v525) = 0;
        *(&v525 + 1) = &v526[4];
        v526[0] = 8;
        memset(&v526[4], 0, 32);
        v527 = xmmword_298A41DA0;
        v528 = v44;
        LODWORD(v529) = 1120272384;
        BlueFin::stDops::stDops(v534, &v525);
        *(&v537 + 1) = v149;
        v150 = **(this + 1);
        BlueFin::GlSignalIdSet::GetSvIdSet(v518, &v484);
        *&v511 = *(this + *(*this - 24) + 88);
        LODWORD(v509.f64[0]) = **(this + 280);
        LODWORD(v514.f64[0]) = 0;
        BlueFin::GlPeDops::GetDops(v534, v150);
        v148 = *(&v527 + 1);
      }

      v151 = v90 * v148;
      if (v139)
      {
        if (v43 > 3 || fabs(v151) > *(this + 448))
        {
          BlueFin::GlSetBase::Remove(&v464[*(*this - 24)], v455);
          BlueFin::GlSetBase::Remove(&v484, v455);
LABEL_96:
          v42 = v472;
LABEL_268:
          LOBYTE(v40) = *(this + 1560);
          goto LABEL_269;
        }
      }

      else if (v43 >= 7 && (v148 < 2.0 || v148 == 99.0))
      {
        *(this + 381) = 0x4000000000000000;
        v152 = this + *(*this - 24);
        v153 = 2.0;
        if (sqrt(*(v152 + 14) * *(v152 + 14) + *(v152 + 13) * *(v152 + 13)) < 3.0)
        {
          v154 = *(this + 571);
          v153 = 1.5;
          if (v154 != -7200001)
          {
            v155 = (*(*(this + 281) + 8) - 1) >= 2 ? 30000 : 300000;
            if (*(v152 + 50) <= (v155 + v154))
            {
              v153 = 1.0;
            }
          }

          *(this + 381) = v153;
        }

        v156 = fabs(v90);
        if (v145 < 64.0 && v156 > v153)
        {
          v158 = v153 * v153;
          if (*(v476[0] + 8) >= v153 * v153)
          {
            v158 = *(v476[0] + 8);
          }

          *(v476[0] + 8) = v158;
          if (*(v45 + 8) >= v153)
          {
            v153 = *(v45 + 8);
          }

          *(v45 + 8) = v153;
        }
      }

      v159 = v151;
      *(this + 448) = fabsf(v159);
    }

    v160 = BlueFin::GlSignalIdArray::Get(*(*(this + 1) + 18792), &v516);
    if (v160)
    {
      *(v160 + 273) = 44;
    }

    v43 = 0;
    v161 = LOBYTE(v516.f64[0]) >> 5;
    v162 = 1 << SLOBYTE(v516.f64[0]);
    v163 = v493;
    *&v493[4 * v161] |= 1 << SLOBYTE(v516.f64[0]);
    v164 = &v163[4 * v494 - 4];
    do
    {
      if (*v164)
      {
        v165 = *v164 - (((*v164 >> 1) & 0x5B6DB6DB) + ((*v164 >> 2) & 0x9249249));
        v43 = ((v165 + (v165 >> 3)) & 0xC71C71C7) + v43 - 63 * (((v165 + (v165 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v164;
    }

    while (v164 >= v163);
    if (fabs(v90) < 2.0)
    {
      v166 = 0;
      v167 = v487;
      *&v487[4 * v161] |= v162;
      v168 = &v167[4 * v488 - 4];
      do
      {
        if (*v168)
        {
          v169 = *v168 - (((*v168 >> 1) & 0x5B6DB6DB) + ((*v168 >> 2) & 0x9249249));
          v166 = ((v169 + (v169 >> 3)) & 0xC71C71C7) + v166 - 63 * (((v169 + (v169 >> 3)) & 0xC71C71C7) / 0x3F);
        }

        --v168;
      }

      while (v168 >= v167);
      v459 = v166;
    }

    *&v461[*(*this - 24)] |= 2u;
    v170 = *(this + 281);
    v171 = *(v170 + 16);
    if (v171 == 2)
    {
      if ((*(v170 + 8) - 3) >= 3)
      {
LABEL_225:
        v172 = 1;
        goto LABEL_226;
      }
    }

    else
    {
      v172 = v171 == 3;
      if ((*(v170 + 8) - 3) >= 3)
      {
        goto LABEL_226;
      }

      if (v171 != 3)
      {
        v176 = v476[0];
        v177 = fmin(*(v476[0] + 8) * ((fmin(fmax(fabsf(*(this + 331)), 0.5), 10.0) + -0.5) * 4.0 / 9.5 + 1.0), 2.0);
        goto LABEL_234;
      }
    }

    v173 = *(BlueFin::GlPeMsmtMgr::GetMeMeas(*(this + 1), v47, 0, 0) + 29);
    v172 = 1;
    if (v173 < 20.0 && v173 > 0.0)
    {
      v174 = (20.0 - v173) / v173;
      if (v174 > 1.5)
      {
        v174 = 1.5;
      }

      *(v476[0] + 8) = v174 + *(v476[0] + 8);
      goto LABEL_225;
    }

LABEL_226:
    v175 = !v172 || (*(*(this + 281) + 8) - 1) > 1;
    if (v175 || *(BlueFin::GlPeMsmtMgr::GetMeMeas(*(this + 1), v47, 0, 0) + 8) != 3 && *(BlueFin::GlPeMsmtMgr::GetMeMeas(*(this + 1), v47, 0, 0) + 8) != 2)
    {
LABEL_235:
      if (*(*(this + 281) + 8) == 10)
      {
        *(v476[0] + 8) = fmax(*(v476[0] + 8), 3.0);
      }

      goto LABEL_237;
    }

    v176 = v476[0];
    v177 = *(v476[0] + 8) * 3.0;
LABEL_234:
    *(v176 + 8) = v177;
    goto LABEL_235;
  }

  v190 = 0;
  v473 = 0;
LABEL_272:
  v191 = *(this + 26);
  if (v191)
  {
    BlueFin::GlPeNavGnssKF::UpdateHeading(this);
    v191 = *(this + 26);
  }

  v192 = 0.392699082;
  if ((v191 & 1) == 0)
  {
    v192 = 0.785398163;
  }

  v193 = this + *(*this - 24);
  if (v192 > *(v193 + 46))
  {
    v194 = *(this + 597);
    v195 = *(v194 + 5128);
    if (v195 != -7200001 && v195 > **(this + 598))
    {
      v197 = *(v194 + 5136);
      v198 = *(v194 + 5132);
      v199 = sqrt(*(v193 + 14) * *(v193 + 14) + *(v193 + 13) * *(v193 + 13));
      v200 = v199;
      v201 = 0.0;
      if (v198 >= v200)
      {
        v202 = 0.0;
      }

      else
      {
        v202 = *(v194 + 5136);
      }

      if (v198 < v200)
      {
        v201 = *(v194 + 5132);
      }

      v203 = v197 <= v200 ? v201 : *(v194 + 5136);
      v204 = v197 <= v200 ? v202 : *(v194 + 5132);
      if (v197 > v200 || v198 < v200)
      {
        v206 = v198 - v197;
        if (v191)
        {
          v207 = v203 - v199;
          v208 = *(this + 5);
          v209 = *(*(v208 + 16) + 16);
          v210 = *(*(v208 + 32) + 32);
          v211 = (v209 + v210) * 9.0;
          if ((v207 * v207) > v211)
          {
            goto LABEL_308;
          }

          v212 = v204 - v199;
          v213 = __sincosf_stret(*(v193 + 44));
          v214 = vabds_f32(v200, v203);
          v215 = fmax(v209 * v206 / v214, 0.0001);
          v216 = fmax(v210 * v206 / v214, 0.0001);
          BlueFin::BigMatrix::Null(&v500, 1, 12);
          *(v501[1] + 16) = 0x3FF0000000000000;
          BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v500, 1, 0, 1, v212 * v213.__cosval, v215);
          BlueFin::BigMatrix::Null(&v500, 1, 12);
          *(v501[1] + 32) = 0x3FF0000000000000;
          v217 = this;
          v218 = v212 * v213.__sinval;
          v219 = v216;
        }

        else
        {
          v220 = *(this + 331);
          v221 = -v203;
          if (v220 > 0.0)
          {
            v221 = v203;
          }

          v222 = *(*(*(this + 5) + 16) + 16) * 9.0;
          if (((v221 - v220) * (v221 - v220)) > v222)
          {
            goto LABEL_308;
          }

          if (v220 <= 0.0)
          {
            v204 = -v204;
          }

          v223 = (v204 - v220);
          BlueFin::BigMatrix::Null(&v500, 1, 12);
          *(v501[1] + 16) = 0x3FF0000000000000;
          v224 = sqrt(*(this + *(*this - 24) + 112) * *(this + *(*this - 24) + 112) + *(this + *(*this - 24) + 104) * *(this + *(*this - 24) + 104));
          v219 = fmax(*(*(*(this + 5) + 16) + 16) * v206 / vabds_f32(v224, v203), 2.22044605e-16);
          *(v476[0] + 8) = v219;
          v217 = this;
          v218 = v223;
        }

        BlueFin::GlPeNavGnssKF::MeasUpdate(v217, &v500, 1, 0, 1, v218, v219);
        *(this + 3991) = 257;
      }
    }
  }

LABEL_308:
  if (((v458 | v14) & 1) == 0)
  {
    BlueFin::GlPeNavGnssKF::DealsMeasUpdate(this, &v500, (*a3 >> 8) & 1);
  }

  if ((*(a3 + 1) & 0x40) != 0)
  {
    IsTunnelExit = BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExit(this);
  }

  else
  {
    IsTunnelExit = 0;
  }

  v226 = 0;
  v227 = *(this + 281);
  v228 = *(v227 + 16);
  v229 = &v478[4 * v479 - 4];
  do
  {
    if (*v229)
    {
      v230 = *v229 - (((*v229 >> 1) & 0x5B6DB6DB) + ((*v229 >> 2) & 0x9249249));
      v226 += ((v230 + (v230 >> 3)) & 0xC71C71C7) % 0x3F;
    }

    --v229;
  }

  while (v229 >= v478);
  if (v228 == 1)
  {
    v231 = 1;
  }

  else
  {
    v231 = IsTunnelExit;
  }

  if ((v231 & 1) != 0 || *(v227 + 8) == 6 || (v232 = 4, v226 >= 0xAu) && (v228 & 0xFFFFFFFE) != 2 && (*a3 & 8) == 0 && (*(*this + 56))(this) <= 0x96)
  {
    v232 = 0;
  }

  *v534 = 0;
  *&v525 = 0;
  ExtAlt = BlueFin::GlPeAltMgr::GetExtAlt(*(this + 283), (this + *(*this - 24) + 8), v534, &v525);
  if (ExtAlt == 4)
  {
    v234 = v232;
  }

  else
  {
    v234 = ExtAlt;
  }

  if (v234)
  {
    if (v234 == 4)
    {
      v236 = 0;
      v235 = 5.0;
    }

    else
    {
      v235 = 3.0;
      v236 = v234 == 3 && *&v525 < 8.0 && *&v525 > 0.0;
    }

    BlueFin::BigMatrix::Null(&v500, 1, 12);
    v237 = 1.0;
    if (*(this + 26))
    {
      v237 = -1.0;
    }

    *(v501[1] + 40) = v237;
    v238 = *v534 - *(this + *(*this - 24) + 24);
    v239 = *&v525 * *&v525;
    if (v236 || v238 * v238 < v235 * v235 * (v239 + *(*(*(this + 5) + 40) + 40)))
    {
      BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v500, 1, 1, 1, v238, v239);
    }
  }

  BlueFin::lla2ned((this + *(*this - 24) + 8), (this + *(*this - 24) + 32), 0, &v511);
  v240 = *(this + 281);
  v241 = *(v240 + 16);
  v243 = sqrt(*&v511 * *&v511 + *(&v511 + 1) * *(&v511 + 1)) < 10.0 && v241 == 7;
  if (v241)
  {
    v244 = 60000;
  }

  else
  {
    v244 = 120000;
  }

  if (*(this + *(*this - 24) + 200) >= v244 && (v245 = *(this + 597), *(v245 + 4216) == 6) && (v246 = v245 + 4096, *(v246 + 128) == 1))
  {
    v247 = *(v246 + 130) ^ 1;
  }

  else
  {
    v247 = 0;
  }

  if ((*(a3 + 1) & 0x20) != 0)
  {
    v248 = (*(*this + 48))(this);
    v240 = *(this + 281);
    if (v248)
    {
      if ((*(v240 + 8) - 1) > 1)
      {
        goto LABEL_362;
      }
    }
  }

  if ((*(v240 + 8) | 8) == 0xA)
  {
    goto LABEL_362;
  }

  if (((*(this + *(*this - 24) + 242) | v243) & 1) == 0)
  {
    if (*(v240 + 1764))
    {
      v254 = 60;
    }

    else
    {
      v254 = 180;
    }

    if (*(v240 + 1328) <= 4.0 || *(v240 + 1320) >= 20.0 || *(v240 + 76) < v254)
    {
      if (v247)
      {
        goto LABEL_379;
      }

LABEL_362:
      v249 = 0;
      v250 = (this + 4776);
      goto LABEL_363;
    }

    if ((*(v240 + 1764) & 1) == 0 && !((*(v240 + 64) == 1) | v247 & 1))
    {
      goto LABEL_362;
    }
  }

LABEL_379:
  v255 = *(this + 546) * 1000.0;
  if (v255 > 0.0)
  {
    v256 = v255;
    v257 = 0.5;
LABEL_384:
    v258 = (v256 + v257);
    goto LABEL_385;
  }

  if (v255 < 0.0)
  {
    v256 = v255;
    v257 = -0.5;
    goto LABEL_384;
  }

  v258 = 0;
LABEL_385:
  v259 = *(this + 2);
  LODWORD(v525) = 0;
  *(&v525 + 1) = &v526[4];
  v526[0] = 8;
  memset(&v526[4], 0, 32);
  v527 = xmmword_298A41DA0;
  v528 = vdup_n_s32(0x42C60000u);
  LODWORD(v529) = 1120272384;
  BlueFin::stDops::stDops(v534, &v525);
  *(&v537 + 1) = v259;
  v260 = **(this + 1);
  BlueFin::GlSignalIdSet::GetSvIdSet(v518, (this + *(*this - 24) + 352));
  v509.f64[0] = *(this + *(*this - 24) + 88);
  LODWORD(v516.f64[0]) = **(this + 280);
  LODWORD(v514.f64[0]) = 0;
  BlueFin::GlPeDops::GetDops(v534, v260);
  if ((*(*this + 72))(this) >= 2 * v258 || *(&v527 + 1) >= 5.0)
  {
    v249 = *(*(this + 281) + 1989);
    if ((v249 & 1) == 0 && ((v247 ^ 1) & 1) == 0)
    {
      v261 = *(*(this + 284) + 48);
      if (v261)
      {
        v262 = *(this + *(*this - 24) + 200) - v261;
      }

      else
      {
        v262 = -1;
      }

      v249 = v262 < **(this + 598) - *(*(this + 597) + 4240);
    }
  }

  else
  {
    v249 = 1;
  }

  v250 = (this + 4776);
  if (BlueFin::GlPeNavGnssMotion::IsNotMoving((this + 4776), 1.0) && (v249 & 1) != 0)
  {
    v249 = 1;
LABEL_397:
    v251 = this;
    v252 = v249;
    v253 = 0;
    goto LABEL_398;
  }

LABEL_363:
  if (*(*v250 + 4216) == 6 && *(*v250 + 4224) == 1 && (*(*v250 + 4226) & 1) == 0)
  {
    goto LABEL_397;
  }

  if (*(this + 5884) && (*(this + *(*this - 24) + 200) - *(this + 2951)) <= 0xBB8 && *(this + 1477) < 0.100000001 || *(*(this + 281) + 8) == 10)
  {
    v251 = this;
    v252 = 0;
    v253 = 1;
LABEL_398:
    BlueFin::GlPeNavGnssKF::ZeroSpeedUpdate(v251, &v500, v508, v252, v253);
  }

  BlueFin::GlPeNavGnssKF::UpdateHeadingConsistentWithDeals(this, 0, &v499);
  if (!v499 || *(*(this + 284) + 2) || !BlueFin::GlPeNavGnssMotion::IsNotTurning(v250, v263) || !v190 || (*(*(this + 281) + 8) - 3) > 3)
  {
    goto LABEL_419;
  }

  v264 = *(a3 + 1) | v460 & *(this + 26);
  if (v264)
  {
    v265 = *(this + 735) * 0.0174532925;
    v266 = v265 * 57.296;
    if (v266 < 45.1)
    {
      v266 = 45.1;
    }

    v267 = v266 * 0.0174532925;
    if ((*(this + 26) & 1) == 0)
    {
      goto LABEL_407;
    }
  }

  else
  {
    v267 = 0.315904601;
    if ((*(this + 26) & 1) == 0)
    {
LABEL_407:
      v268 = *(this + 392);
        ;
      }

        ;
      }

      v271 = j;
      BlueFin::BigMatrix::Null(&v500, 1, 12);
      *(v501[1] + 32) = 0x3FF0000000000000;
      BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v500, k & 1, 0, 1, v271, v267 * v267);
      goto LABEL_419;
    }
  }

  if (sqrt(*(this + *(*this - 24) + 112) * *(this + *(*this - 24) + 112) + *(this + *(*this - 24) + 104) * *(this + *(*this - 24) + 104)) >= 1.0)
  {
    BlueFin::BigMatrix::Null(&v500, 1, 12);
    v272 = *this;
    v273 = (this + *(*this - 24));
    v274 = v273[14];
    v275 = -v274;
    v276 = sqrt(v274 * v274 + v273[13] * v273[13]);
    v277 = v501[1];
    *(v277 + 16) = v275 / (v276 * v276);
    v278 = (this + *(v272 - 24));
    v279 = v278[13];
    v280 = sqrt(v278[14] * v278[14] + v279 * v279);
    *(v277 + 32) = v279 / (v280 * v280);
    v281 = *(this + 392);
      ;
    }

      ;
    }

    BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v500, (v264 ^ 1) & 1, 0, 1, m, v267 * v267);
    BlueFin::GlPeNavGnssKF::UpdateHeading(this);
  }

LABEL_419:
  v283 = *(this + 282);
  v284 = *(v283 + 17);
  if (v284 && *(v284 + 3008) == 1 && vaddvq_f64(vmulq_f64(*(v284 + 3040), *(v284 + 3040))) < 160000.0 && (v285 = *a3, (*a3 & 0x1000) != 0))
  {
    v467 = 1;
  }

  else
  {
    v286 = (*(*this + 128))(this);
    v287 = (*(*this + 160))(this);
    if (!BlueFin::GlPeExtLoc::IsPosLocMeasAvailable(v283, v286, v287, (*a3 & 0x1000) != 0))
    {
      goto LABEL_537;
    }

    v291 = *(*(this + 282) + 136);
    if (v291)
    {
      if (*(v291 + 3009))
      {
        goto LABEL_537;
      }
    }

    v467 = 0;
    v285 = *a3;
  }

  v292 = *(this + 26);
  v293 = *(this + 597);
  v294 = *(v293 + 3016);
  v295 = *(v293 + 3024);
  v514.f64[0] = v294;
  v514.f64[1] = v295;
  v296 = *(v293 + 3032);
  v515 = v296;
  v297 = *(v293 + 3048);
  v298 = *(v293 + 3072);
  v299 = *(this + 5884);
  v300 = this + *(*this - 24);
  v301 = *(v300 + 50);
  v302 = *(v300 + 44);
  if (!v299)
  {
    *(this + 5884) = 1;
    *(this + 3060) = 0;
    *(this + 1472) = v294;
    *(this + 1473) = v295;
    *(this + 1474) = v296;
    *(this + 2950) = v301;
    *(this + 2951) = v301;
    *(this + 2952) = v302;
LABEL_453:
    *(this + 11824) = 0;
    goto LABEL_454;
  }

  v303 = (v301 - *(this + 2951)) * 0.001;
  if (v303 <= 1.0 || v303 > 30.0)
  {
    goto LABEL_432;
  }

    ;
  }

    ;
  }

  if (n < 0.0)
  {
    n = -n;
  }

  if (n > 1.2566371 && *(this + 1477) >= 0.100000001)
  {
LABEL_432:
    *v534 = v294;
    *&v534[8] = v295;
    *&v534[16] = v296;
    BlueFin::ExtLocFilter::Reset(this + 11768, v534, v301, v302);
    v299 = *(this + 5884);
  }

  *(this + 5884) = v299 + 1;
  *(this + 2951) = v301;
  v470 = (v301 - *(this + 2950)) * 0.001;
  BlueFin::lla2ned(v514.f64, this + 1472, 0, v534);
  v306 = *v534;
  v307 = *&v534[8];
  v308 = v470 * v470 + *(this + 1479);
  *(this + 1479) = v308;
  v309 = v470 + *(this + 1480);
  *(this + 1480) = v309;
  __asm { FMOV            V5.2D, #1.0 }

  _Q5.f64[0] = v470;
  v313 = vaddq_f64(_Q5, *(this + 11864));
  *(this + 11864) = v313;
  *(this + 1496) = *(this + 1496) + v470 * v306;
  *(this + 1500) = v306 + *(this + 1500);
  *(this + 1513) = *(this + 1513) + v470 * v307;
  *(this + 1517) = v307 + *(this + 1517);
  if (*(this + 5884) <= 2u)
  {
    goto LABEL_453;
  }

  if (v470 <= 0.1)
  {
    v315 = v313.f64[1];
    v314 = 0.0;
  }

  else
  {
    BlueFin::lla2ned(v514.f64, this + 1472, 0, v534);
    v314 = sqrt(*&v534[8] * *&v534[8] + *v534 * *v534) / v470 * 0.200000003;
    v308 = *(this + 1479);
    v315 = *(this + 1484);
    v309 = *(this + 1480);
    v313.f64[0] = *(this + 1483);
  }

  *(this + 1477) = v314 + *(this + 1477) * 0.799999997;
  v316 = v308 * v315 - v309 * v313.f64[0];
  if (fabs(v316) <= 2.22044605e-16)
  {
    goto LABEL_453;
  }

  v317 = 1.0 / v316;
  v540[0] = 0x200000002;
  *v534 = v315 * v317;
  *&v534[8] = -(v317 * v309);
  *&v534[32] = -(v317 * v313.f64[0]);
  *&v534[40] = v308 * v317;
  BlueFin::Matrix::mult(&v525, v534, (this + 11968));
  BlueFin::Matrix::mult(v518, v534, (this + 12104));
  *&v511 = *&v526[16] + v470 * *&v525;
  *(&v511 + 1) = v520 + v470 * *v518;
  v512[0] = 0;
  BlueFin::ned2lla(this + 1472, &v511, v509.f64);
  BlueFin::lla2ned(v509.f64, v514.f64, 0, v516.f64);
  v318 = sqrt(vaddvq_f64(vmulq_f64(v516, v516)));
  v319 = *(this + 3060);
  v320 = v318;
  if (v319 <= v320)
  {
    v319 = v318;
  }

  *(this + 3060) = v319;
  if (v318 <= 20.0)
  {
    *(this + 12244) = 0;
  }

  else
  {
    v321 = ++*(this + 12244);
    if (v321 >= 3)
    {
      v516 = v514;
      v517 = v515;
      BlueFin::ExtLocFilter::Reset(this + 11768, &v516, v301, v302);
      v319 = *(this + 3060);
    }
  }

  v514 = v509;
  v515 = v510[0];
  v297 = fmaxf(v319, 48.0);
  *(this + 11824) = 1;
LABEL_454:
  if (*(this + 26) == 1)
  {
    v322 = *this;
    v323 = (this + *(*this - 24));
    v324 = v323[13];
    v325 = v323[14] * v323[14];
    v326 = sqrt(v325 + v324 * v324);
    v327 = *(this + 5);
    if (v326 <= 0.1)
    {
      v328 = 3.14159265;
    }

    else
    {
      v328 = (v324 * v324 * *(*(v327 + 32) + 32) + *(*(v327 + 16) + 16) * v325) / (v326 * v326 * (v326 * v326));
    }
  }

  else
  {
    v327 = *(this + 5);
    v328 = sqrt(*(*(v327 + 32) + 32));
    v322 = *this;
  }

  v329 = v292 == 0;
  if (v292)
  {
    v330 = 1;
  }

  else
  {
    v330 = 3;
  }

  if (v329)
  {
    v331 = 1;
  }

  else
  {
    v331 = 3;
  }

  v332 = *(*(v327 + 8 * v330) + 8 * v330) + *(*(v327 + 8 * v331) + 8 * v331);
  if (*(this + 611) * *(this + 611) >= v332)
  {
    v332 = *(this + 611) * *(this + 611);
  }

  v333 = v332;
  BlueFin::lla2ned((this + *(v322 - 24) + 8), v514.f64, 0, v534);
  v334 = v297 * v297 + v333;
  v335 = sqrt(*&v534[8] * *&v534[8] + *v534 * *v534) / sqrtf(v334);
  v336 = ((*(*this + 64))(this) / (*(this + 546) * 1000.0));
  v288.i32[0] = 3.0;
  if (v298 == 3)
  {
    *v288.i32 = 5.0;
  }

  if (v336 <= 1)
  {
    *v288.i32 = 9.0;
  }

  v337 = v473;
  if (*v288.i32 < v335)
  {
    goto LABEL_531;
  }

  v338 = *(*v250 + 4216);
  if ((v338 == 1 || v338 == 6) && *(*v250 + 4224) == 1)
  {
    v339 = 0;
    if (v473 <= 9 && (*(*v250 + 4226) & 1) == 0)
    {
      v339 = *(this + *(*this - 24) + 242) ^ 1;
    }
  }

  else
  {
    v339 = 0;
  }

  v340 = *(*(this + 282) + 136);
  if (v340 && *(v340 + 3008) == 1 && vaddvq_f64(vmulq_f64(*(v340 + 3040), *(v340 + 3040))) < 160000.0 && (*(v340 + 3072) - 3) <= 2 && ((v339 & 1) != 0 || BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExit(this)))
  {
    v341 = *(*(*(this + 5) + 8 * v330) + 8 * v330) + *(*(*(this + 5) + 8 * v331) + 8 * v331);
    BlueFin::BigMatrix::Null(&v500, 1, 12);
    *(v501[1] + 8 * v330) = 0x3FF0000000000000;
    BlueFin::lla2ned(v514.f64, (this + *(*this - 24) + 8), 0, &v525);
    v474 = *&v525;
    *v534 = v525;
    *&v534[16] = *v526;
    BlueFin::ned2hlu(v534, (this + 1336), &v525);
    v342 = v297;
    v343 = v342 * v342;
    v344 = v341 * 3.0;
    if (v343 < (v341 * 3.0))
    {
      v344 = v343;
    }

    v345 = *(&v525 + 1);
    if (*(this + 26))
    {
      v345 = v474;
    }

    v346 = v344;
    BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v500, 1, 1, 1, v345, v344);
    BlueFin::BigMatrix::Null(&v500, 1, 12);
    *(v501[1] + 8 * v331) = 0x3FF0000000000000;
    BlueFin::lla2ned(v514.f64, (this + *(*this - 24) + 8), 0, v518);
    *v534 = *v518;
    v475 = *&v518[8];
    *&v534[8] = *&v518[8];
    BlueFin::ned2hlu(v534, (this + 1336), v518);
    v347 = *v518;
    if (*(this + 26))
    {
      v347 = v475;
    }

    v348 = this;
    v349 = v346;
    v350 = 1;
    goto LABEL_529;
  }

  BlueFin::lla2ned(v514.f64, (this + *(*this - 24) + 8), 0, v518);
  v525 = *v518;
  *v526 = *&v518[16];
  BlueFin::ned2hlu(&v525, (this + 1336), v534);
  v351 = *(this + 5);
  if (*(this + 26) == 1)
  {
    v352 = *(*(v351 + 24) + 24) * (*(this + 172) * *(this + 172)) + *(*(v351 + 8) + 8) * (*(this + 168) * *(this + 168));
  }

  else
  {
    v352 = *(*(v351 + 24) + 24);
  }

  v353 = v297;
  if ((v285 & 0x1000000) == 0)
  {
    v353 = v297;
    if ((*(this + 11824) & 1) == 0)
    {
      v354 = sqrt(v352) / (*(*(this + *(*this - 24)) + 16))(this + *(*this - 24));
      if (v354 < 0.1)
      {
        v354 = 0.1;
      }

      v353 = v297 * v354;
    }
  }

  v355 = *(this + *(*this - 24) + 176);
  v356 = *(this + 26);
  BlueFin::BigMatrix::Null(&v500, 1, 12);
  v357 = v501[1];
  if (v356 == 1)
  {
    *(v357 + 8) = *(this + 171);
    v358 = *(this + 172);
  }

  else
  {
    v358 = 1.0;
  }

  *(v357 + 24) = v358;
  BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v500, 1, 0, 1, *&v534[8], v353 * v353);
  v359 = *this;
  if (*(this + 26) == 1)
  {
    v360 = *(this + *(v359 - 24) + 176);
      ;
    }

      ;
    }

    if (ii > 0.523598776)
    {
      v362 = __sincos_stret(v360);
      *(this + 167) = *&v362.__cosval;
      *(this + 168) = *&v362.__sinval;
      *(this + 169) = 0;
      *(this + 171) = *&v362.__sinval;
      *(this + 172) = -v362.__cosval;
      *(this + 173) = 0;
      *(this + 1400) = 0u;
      *(this + 177) = 0xBFF0000000000000;
    }
  }

  BlueFin::lla2ned(v514.f64, (this + *(v359 - 24) + 8), 0, &v511);
  *v518 = v511;
  *&v518[16] = v512[0];
  BlueFin::ned2hlu(v518, (this + 1336), &v525);
  v363 = *(this + 5);
  v364 = *(*(v363 + 8) + 8);
  if (*(this + 26) == 1)
  {
    v364 = *(*(v363 + 24) + 24) * (*(this + 168) * *(this + 168)) + v364 * (*(this + 167) * *(this + 167));
  }

  v365 = *&v525;
  if (v285 & 0x1000000) != 0 || (*(this + 11824))
  {
    if (*(this + 26))
    {
      goto LABEL_515;
    }
  }

  else
  {
    v368 = sqrt(v364) / (*(*(this + *(*this - 24)) + 16))(this + *(*this - 24));
    if (v368 < 0.1)
    {
      v368 = 0.1;
    }

    v297 = v297 * v368;
    if (*(this + 26))
    {
LABEL_515:
      BlueFin::BigMatrix::Null(&v500, 1, 12);
      v366 = HIBYTE(v285) & 1;
      v367 = v501[1];
      *(v367 + 8) = *(this + 167);
      v288.i64[0] = *(this + 168);
      *(v367 + 24) = v288.i64[0];
      if (v328 < 0.523598776)
      {
        v366 = 1;
      }

      if ((v467 | v366) & 1) == 0 && (*(this + *(*this - 24) + 242))
      {
        goto LABEL_530;
      }

      goto LABEL_528;
    }
  }

  BlueFin::BigMatrix::Null(&v500, 1, 12);
  v369 = v365 > 0.0;
  v288.i32[1] = 1071694162;
  *(v501[1] + 8) = 0x3FF0000000000000;
  v370 = v467;
  if (v328 >= 0.523598776)
  {
    v370 = 0;
    v369 = 0;
  }

  if ((v285 & 0x1000000) == 0 && (v370 & 1) == 0 && !v369)
  {
    goto LABEL_530;
  }

LABEL_528:
  v349 = v297 * v297;
  v348 = this;
  v347 = v365;
  v350 = 0;
LABEL_529:
  BlueFin::GlPeNavGnssKF::MeasUpdate(v348, &v500, 1, v350, 1, v347, v349);
LABEL_530:
  *(this + 3992) = 257;
LABEL_531:
  if (v337 <= 2 && BlueFin::GlPeNavGnssMotion::IsNotMoving(v250, 1.0))
  {
    v371 = *(this + 26);
    BlueFin::BigMatrix::Null(&v500, 1, 12);
    *(v501[1] + 16) = 0x3FF0000000000000;
    if (v371 == 1)
    {
      BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v500, 0, 0, 1, -*(this + *(*this - 24) + 104), 1.0);
      BlueFin::BigMatrix::Null(&v500, 1, 12);
      *(v501[1] + 32) = 0x3FF0000000000000;
      v372 = -*(this + *(*this - 24) + 112);
    }

    else
    {
      v372 = -*(this + 331);
    }

    BlueFin::GlPeNavGnssKF::MeasUpdate(this, &v500, 0, 0, 1, v372, 1.0);
  }

LABEL_537:
  v373 = *(this + 281);
  if ((*(v373 + 8) - 1) > 1)
  {
    goto LABEL_562;
  }

  v374 = *(v373 + 1909);
  if (*(this + 26))
  {
    *&v525 = 0;
    *v518 = 0;
    *(this + 2169) = 0;
    IsHulaSpeedValid = BlueFin::GlPeNavGnssKF::IsHulaSpeedValid(this, &v525, v518, 0);
    *(this + 2168) = IsHulaSpeedValid;
    v288 = xmmword_298A43FD0;
    *&v534[16] = xmmword_298A43FD0;
    *v534 = &v534[32];
    *&v534[8] = v540;
    v540[0] = 0;
    v540[1] = &v534[24];
    if (*(this + 2169) == 1)
    {
      if (!IsHulaSpeedValid)
      {
        *v288.i64 = sqrt(*(this + *(*this - 24) + 112) * *(this + *(*this - 24) + 112) + *(this + *(*this - 24) + 104) * *(this + *(*this - 24) + 104));
        if (*v288.i64 <= 1.0)
        {
          goto LABEL_557;
        }

        BlueFin::BigMatrix::Null(v534, 1, 12);
        v396 = *this;
        v397 = (this + *(*this - 24));
        v398 = v397[14];
        v399 = -v398;
        v400 = sqrt(v398 * v398 + v397[13] * v397[13]);
        v401 = *(*&v534[8] + 8);
        *(v401 + 16) = v399 / (v400 * v400);
        v402 = (this + *(v396 - 24));
        v403 = v402[13];
        v404 = sqrt(v402[14] * v402[14] + v403 * v403);
        *(v401 + 32) = v403 / (v404 * v404);
          ;
        }

          ;
        }

        v382 = 0.0;
        v383 = this;
        v395 = 0;
        goto LABEL_556;
      }

      BlueFin::BigMatrix::Null(v534, 1, 12);
      *(*(*&v534[8] + 8) + 16) = 0x3FF0000000000000;
      v376 = *&v525;
      v377 = *&v525 - *(this + *(*this - 24) + 104);
      v378 = *v518;
      v379 = *&v525 * 0.0;
      v380 = tan(0.0);
      BlueFin::GlPeNavGnssKF::MeasUpdate(this, v534, 1, 0, 1, v377, v380 * v379 * (v380 * v379) + v378 * v378);
      BlueFin::BigMatrix::Null(v534, 1, 12);
      *(*(*&v534[8] + 8) + 32) = 0x3FF0000000000000;
      jj = -(*(this + *(*this - 24) + 112) - v376 * 0.0);
      v382 = v380 * v376 * (v380 * v376) + v378 * 0.0 * (v378 * 0.0);
      v383 = this;
    }

    else
    {
      if (!IsHulaSpeedValid || (*v288.i64 = *(this + *(*this - 24) + 184), *v288.i64 >= 0.785398163))
      {
LABEL_557:
        if (!v374)
        {
          goto LABEL_562;
        }

        goto LABEL_558;
      }

      *(this + 2168) = 1;
      BlueFin::BigMatrix::Null(v534, 1, 12);
      *(*(*&v534[8] + 8) + 16) = 0x3FF0000000000000;
      v384 = *&v525;
      v385 = (this + *(*this - 24));
      v386 = __sincosf_stret(v385[44]);
      v387 = -(*(v385 + 13) - v384 * v386.__cosval);
      v388 = *v518;
      v389 = *v518 * v386.__cosval * (*v518 * v386.__cosval);
      v390 = tanf(v385[46]);
      BlueFin::GlPeNavGnssKF::MeasUpdate(this, v534, 1, 0, 1, v387, v389 + v384 * v390 * v386.__sinval * (v384 * v390 * v386.__sinval));
      BlueFin::BigMatrix::Null(v534, 1, 12);
      *(*(*&v534[8] + 8) + 32) = 0x3FF0000000000000;
      v391 = (this + *(*this - 24));
      v392 = __sincosf_stret(v391[44]);
      v393 = -(*(v391 + 14) - v384 * v392.__sinval);
      v394 = tanf(v391[46]);
      v382 = v388 * v392.__sinval * (v388 * v392.__sinval) + v384 * v394 * v392.__cosval * (v384 * v394 * v392.__cosval);
      v383 = this;
      jj = v393;
    }

    v395 = 1;
LABEL_556:
    BlueFin::GlPeNavGnssKF::MeasUpdate(v383, v534, v395, 0, 1, jj, v382);
    goto LABEL_557;
  }

  if (*(v373 + 1909))
  {
    BlueFin::GlPeNavGnssKF::UpdateFromHulaSpeed(this);
LABEL_558:
    if (*(this + 8080) == 1 && *(this + 2168) == 1 && *(this + 2169) == 1)
    {
      *(this + 543) = *(this + *(*this - 24) + 200);
    }

    goto LABEL_562;
  }

  if (*(this + 8080) == 1)
  {
    BlueFin::GlPeNavGnssKF::UpdateFromHulaSpeed(this);
  }

LABEL_562:
  v405 = *(this + 1333);
  if (v405)
  {
    if (v405[4] == 1)
    {
      v288.i32[0] = *(*(this + 1) + 56088);
      *v290.i32 = *v288.i32 + (truncf(*v288.i32 * 2.3283e-10) * -4295000000.0);
      v406.i64[0] = 0x8000000080000000;
      v406.i64[1] = 0x8000000080000000;
      v290.i32[0] = vbslq_s8(v406, v290, v288).u32[0];
      if (*v288.i32 > 4295000000.0)
      {
        v288.i32[0] = v290.i32[0];
      }

      if (*v288.i32 < -4295000000.0)
      {
        *v289.i32 = -*v288.i32;
        *v288.i32 = -(*v288.i32 - (truncf(*v288.i32 * -2.3283e-10) * -4295000000.0));
        *v288.i32 = -*vbslq_s8(v406, v288, v289).i32;
      }

      if (*v288.i32 < 0.0)
      {
        v407 = --*v288.i32;
      }

      else
      {
        LOWORD(v407) = *v288.i32;
      }

      v408 = *(*(this + 1) + 56072);
      v409 = *this;
      v410 = *v405 == 1 && BlueFin::GlSetBase::Cnt((this + *(v409 - 24) + 352)) < 3;
      v412 = *(this + *(v409 - 24) + 200);
      v413 = v408 - v412;
      _CF = v412 >= v408;
      v414 = v412 - v408;
      if (v414 == 0 || !_CF)
      {
        v414 = v413;
      }

      if (v414 <= 0x3E7)
      {
        if (*(this + 2932) != 1)
        {
          goto LABEL_589;
        }

        BlueFin::GlSetBase::GlSetBase(v534, &v534[12], 0x13u, this + 369);
        v415 = 0;
        v416 = (*v534 + 4 * v534[8] - 4);
        do
        {
          if (*v416)
          {
            v417 = *v416 - (((*v416 >> 2) & 0x9249249) + ((*v416 >> 1) & 0x5B6DB6DB));
            v415 = ((v417 + (v417 >> 3)) & 0xC71C71C7) + v415 - 63 * (((v417 + (v417 >> 3)) & 0xC71C71C7) / 0x3F);
          }

          --v416;
        }

        while (v416 >= *v534);
        if (v415 >= 0xAu && *(this + 732) < 3.0)
        {
          if ((v407 + 20) <= 0x77u)
          {
            v418 = this + 10680;
            v419 = *(this + 724);
            v420 = this + 11640;
            v421 = (v407 + 20);
            v422 = *(this + v421 + 11640);
            if (*(this + v421 + 11640))
            {
              v423 = *&v418[4 * v421];
              if (v422 == 255)
              {
                v426 = 255.0;
                v425 = *&v418[4 * v421];
              }

              else
              {
                v424 = v422 + 1;
                v420[v421] = v424;
                v425 = *&v418[4 * v421];
                v426 = v424;
              }

              v449 = v425 + ((v419 - v425) / v426);
              *&v418[4 * v421] = v449;
              *(this + v421 + 2790) = *(this + v421 + 2790) + ((v419 - v449) * (v419 - v423));
            }

            else
            {
              *&v418[4 * v421] = v419;
              *(this + v421 + 2790) = 0;
              v420[v421] = 1;
            }
          }
        }

        else
        {
LABEL_589:
          if (v410)
          {
            if ((v407 + 20) >= 120)
            {
              v450 = "sBin < NBINS";
              DeviceFaultNotify("glpe_navutil.h", 582, "Get", "sBin < NBINS");
              v451 = "glpe_navutil.h";
              v452 = 582;
              goto LABEL_631;
            }

            v427 = *(this + (v407 + 20) + 11640);
            v428 = *(this + 11760);
            if (v428 <= 2)
            {
              v428 = 2;
            }

            if (v427 >= v428)
            {
              v429 = *(*(this + 5) + 64);
              if (*(this + 26))
              {
                v430 = 48;
              }

              else
              {
                v430 = 64;
              }

              v431 = *(v429 + v430);
              v432 = fmax(fmin((*(this + (v407 + 20) + 2790) / v427) / v431, 1.0), 0.5);
              v433 = *(this + (v407 + 20) + 2670);
              v434 = *this;
              v435 = *(*this - 24);
              v436 = *(this + v435 + 152);
              if ((v433 - v436) * (v433 - v436) > v431 * 4.0)
              {
                *(v429 + v430) = v431 + *(*(this + 571) + 88) * 4.0;
                v435 = *(v434 - 24);
                v436 = *(this + v435 + 152);
              }

              *(this + v435 + 152) = v432 * v433 + v436 * (1.0 - v432);
            }
          }
        }
      }

      v405 = *(this + 1333);
    }

    if (*v405 == 1)
    {
      if (*(this + 6220) == 1)
      {
        v437 = *(this + 775);
        v411 = *this;
      }

      else
      {
        v411 = *this;
        v440 = *(this + 1);
        v441 = *v440;
        if (*v440 == -7200001)
        {
          v442 = 4287767.5;
        }

        else
        {
          v443 = v440[1];
          v444 = v441 - v443;
          if (v443 == -7200001)
          {
            v445 = -7200001;
          }

          else
          {
            v445 = v444;
          }

          v442 = (v445 * 0.001);
        }

        v437 = (*(this + *(*this - 24) + 152) - v453) / v442;
      }

      v438 = (this + *(v411 - 24));
      v446 = -14.989622;
      if (v437 >= -14.989622)
      {
        v446 = v437;
      }

      if (v437 <= 14.989622)
      {
        v439 = v446;
      }

      else
      {
        v439 = 14.989622;
      }
    }

    else
    {
      v411 = *this;
      v438 = (this + *(*this - 24));
      v439 = v438[21] * 0.7;
    }

    v438[21] = v439;
  }

  else
  {
    v411 = *this;
  }

  v447 = this + *(v411 - 24);
  v448 = *(v447 + 14);
  *v534 = *(v447 + 13);
  *&v534[16] = v448;
  LODWORD(v447) = *(v447 + 50);
  *&v525 = &unk_2A1F13018;
  *(&v525 + 1) = v534;
  *v526 = v447;
  if (BlueFin::GlUtils::m_pInstance)
  {
    if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      off_2A1F13030(&v525, 0, 0);
    }
  }
}