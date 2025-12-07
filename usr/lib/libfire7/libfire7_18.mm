uint64_t BlueFin::GlPeSatAidInfo::GetAidRcvdSysTimeS(BlueFin::GlPeSatAidInfo *this, const BlueFin::GlSignalId *a2, const BlueFin::GlPeGnssTime *a3, double *a4, double *a5)
{
  v21 = *a2;
  v8 = *(a2 + 1);
  v9 = BlueFin::GlSvId::s_aucSvId2gnss[v21];
  result = BlueFin::GlPeSatAidInfo::GetAidBySvId(this, &v21);
  if (!result)
  {
    return result;
  }

  v11 = result;
  if ((*(result + 12) | 4) == 4 || *(result + 40) >= 0.0005)
  {
    return 0;
  }

  v12 = *(result + 4 * v8 + 56) / 299792458.0;
  if (v9 > 3)
  {
    switch(v9)
    {
      case 4:
        v19 = &off_2A1F0E4D0;
        v20 = 0;
        Bds = BlueFin::GlPeGnssTime::GetBds(a3, &v19);
        break;
      case 5:
        v19 = &off_2A1F0E480;
        v20 = 0;
        Bds = BlueFin::GlPeGnssTime::GetGal(a3, &v19);
        break;
      case 6:
        v19 = &off_2A1F0DFC8;
        v20 = 0;
        Bds = BlueFin::GlPeGnssTime::GetNic(a3, &v19);
        break;
      default:
        v14 = *a4;
LABEL_18:
        v15 = 604800.0;
        goto LABEL_19;
    }

LABEL_17:
    *a5 = Bds;
    v16 = (v19[4])(&v19);
    LODWORD(v17) = v20;
    v14 = v12 + *(v11 + 32) + v17 * 2.32830644e-10 + (v16 % 0x93A80);
    *a4 = v14;
    goto LABEL_18;
  }

  if (v9 != 2)
  {
    v19 = &off_2A1F0B5F0;
    v20 = 0;
    Bds = BlueFin::GlPeGnssTime::GetGps(a3, &v19);
    goto LABEL_17;
  }

  v19 = &off_2A1F0E430;
  v20 = 0;
  *a5 = BlueFin::GlPeGnssTime::GetGlns(a3, &v19);
  v14 = v12 + BlueFin::GlGlnsTime::getTodS(&v19) + *(v11 + 32);
  *a4 = v14;
  v15 = 86400.0;
LABEL_19:
  if (v14 >= 0.0)
  {
    v18 = v14 < v15;
  }

  else
  {
    v14 = v14 + v15;
    v18 = 0;
  }

  if (!v18)
  {
    if (v14 >= v15)
    {
      v14 = v14 - v15;
    }

    *a4 = v14;
  }

  return 1;
}

void BlueFin::GlMeSrdSatTrackMgr::OnReliableTransactionAck(int **this, void *a2)
{
  v3 = this + 512;
  BlueFin::GlSetBase::Add((this + 648), this + 638);
  BlueFin::GlSetBase::Add((this + 668), this + 658);
  bzero(this[638], ((4 * *(v3 + 1016) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v4 = this[658];
  v5 = ((4 * *(v3 + 1176) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4;

  bzero(v4, v5);
}

uint64_t BlueFin::GlMeAcqWindowProvider::SetBdsB1cSecCodeOffset(uint64_t this, unsigned int a2, int a3)
{
  v3 = *(this + 8);
  *(v3 + a2 + 10112) = a3 != -1;
  *(v3 + 4 * a2 + 10176) = a3;
  return this;
}

BOOL BlueFin::GLNFrameMgrUtils::Parity(BlueFin::GLNFrameMgrUtils *this, unsigned int *a2)
{
  v2 = 0;
  v3 = 0;
  v4 = &qword_298A39FC4;
  do
  {
    v5 = vand_s8(*v4, *(this + 4));
    v6 = v5.i32[0] ^ v4[-1].i32[1] & *this ^ v5.i32[1];
    v7 = v6 ^ HIWORD(v6) ^ ((v6 ^ HIWORD(v6)) >> 8);
    if ((0x6996u >> ((v7 ^ (v7 >> 4)) & 0xF)))
    {
      break;
    }

    v3 = v2 > 6;
    v4 = (v4 + 12);
    ++v2;
  }

  while (v2 != 8);
  return v3;
}

double BlueFin::GlPeGloEphemeris::computeTk(BlueFin::GlPeGloEphemeris *this, const BlueFin::GlGlnsTime *a2, BlueFin::GlGlnsTime *a3)
{
  *this = &off_2A1F0E430;
  *(this + 1) = 0;
  v6 = (*(*a2 + 192))(a2, 25);
  v7 = (*(*a2 + 192))(a2, 6);
  v8 = (*(*a2 + 232))(a2, 6);
  v9 = (*(*a2 + 192))(a2, 7);
  v10 = (*(*a2 + 232))(a2, 7);
  v11 = (*(*a2 + 192))(a2, 8);
  v12 = (*(*a2 + 232))(a2, 8);
  v14 = 3600 * v7 * v8 + 60 * v9 * v10 + v13 * v11;
  *v12.i64 = v14;
  v24 = v12;
  if ((*(*a2 + 80))(a2))
  {
    v16 = (*(*a2 + 192))(a2, 36);
    BlueFin::GlGlnsTime::GlGlnsTime(&v25, v16, v6, *v24.i64);
LABEL_10:
    result = v26;
    *(this + 1) = v26;
    return result;
  }

  v17.i64[1] = v24.i64[1];
  if (!v6)
  {
    BlueFin::GlGlnsTime::ResolveAmbiguity(&v25, a3, v24, v15);
    goto LABEL_10;
  }

  *v17.i64 = *v24.i64 - trunc(*v24.i64);
  v18.f64[0] = NAN;
  v18.f64[1] = NAN;
  v17.i64[0] = vbslq_s8(vnegq_f64(v18), v17, v24).i64[0];
  if (*v17.i64 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v19 = *v17.i64 * 4294967300.0 + 0.5;
  if (v19 >= 4294967300.0)
  {
    v20 = -1;
  }

  else
  {
    v20 = v19;
  }

  LODWORD(v25) = v20;
  HIDWORD(v25) = v14 + 86400 * v6 - 86400;
  v21 = (*(*a3 + 32))(a3);
  v27[0] = *(a3 + 2);
  v27[1] = v21;
  BlueFin::GlTimePoint::resolveAmbiguity(&v25, v27, 0x7861F80u);
  v22 = (*(*a3 + 24))(a3, HIDWORD(v25));
  *(this + 2) = v20;
  *(this + 3) = v22;
  return result;
}

unint64_t BlueFin::GlPeGloEphemeris::isSignedField(BlueFin::GlPeGloEphemeris *this, int a2)
{
  v2 = a2 - 2;
  if ((a2 - 2) >= 0x26 || ((0x37FFFFFFFDuLL >> v2) & 1) == 0)
  {
    DeviceFaultNotify("glpe_glnephmgr.cpp", 492, "isSignedField", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glnephmgr.cpp", 492, "0");
  }

  return (0x40FFE04uLL >> v2) & 1;
}

double BlueFin::GlPeGloEphemeris::GetFloatingScaleFactor(BlueFin::GlPeGloEphemeris *this, int a2)
{
  result = 1.0;
  if ((a2 - 8) <= 0x14)
  {
    return dbl_298A3C588[(a2 - 8)];
  }

  return result;
}

uint64_t BlueFin::GlPeGloEphemeris::isTimeSet(BlueFin::GlPeGloEphemeris *this)
{
  result = (*(*this + 192))(this, 35);
  if (result)
  {
    return (*(*this + 192))(this, 25) != 0;
  }

  return result;
}

uint64_t *BlueFin::GlGlnsTime::ResolveAmbiguity@<X0>(uint64_t *__return_ptr a1@<X8>, BlueFin::GlGlnsTime *this@<X0>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>)
{
  *a4.i64 = *a3.i64 - trunc(*a3.i64);
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  a4.i64[0] = vbslq_s8(vnegq_f64(v5), a4, a3).i64[0];
  v6 = *a4.i64 * 4294967300.0 + 0.5;
  v7 = v6;
  if (v6 >= 4294967300.0)
  {
    v7 = -1;
  }

  v15 = v7;
  if (*a4.i64 < 0.0 || *a4.i64 >= 1.0)
  {
    v12 = "dFracSec >= 0.0 && dFracSec < 1.0";
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    v13 = 173;
    goto LABEL_11;
  }

  v16 = *a3.i64;
  if (*a3.i64 < 0.0)
  {
    v12 = "dCtFctS >= 0.0";
    DeviceFaultNotify("glpe_timepoint.h", 463, "GlTimePoint", "dCtFctS >= 0.0");
    v13 = 463;
LABEL_11:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", v13, v12);
  }

  v10 = (*(*this + 32))(this);
  v14[0] = *(this + 2);
  v14[1] = v10;
  BlueFin::GlTimePoint::resolveAmbiguity(&v15, v14, 0x15180u);
  result = (*(*this + 24))(this, v16);
  *(a1 + 2) = v15;
  *(a1 + 3) = result;
  *a1 = &off_2A1F0E430;
  return result;
}

uint64_t BlueFin::GlPeGloEphemeris::GetIntegerScaleFactor(BlueFin::GlPeGloEphemeris *this, int a2)
{
  if ((a2 - 2) >= 0x26 || ((0x37FBF001FDuLL >> (a2 - 2)) & 1) == 0)
  {
    DeviceFaultNotify("glpe_glnephmgr.cpp", 632, "GetIntegerScaleFactor", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_glnephmgr.cpp", 632, "0");
  }

  return dword_298A3C4F0[(a2 - 2)];
}

uint64_t BlueFin::GlPeNavMeasSelect::SelectRr(uint64_t result, uint64_t a2, BlueFin::GlSetBase *a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7, int a8, double a9, double a10, BOOL a11)
{
  v15 = result;
  v16 = *(result + 36);
  if (!v16 || **(result + 24) != v16)
  {
    if (!**a3)
    {
      v31 = *(a3 + 8);
      if (v31 < 2)
      {
        goto LABEL_26;
      }

      v32 = v31 - 1;
      v33 = (*a3 + 4);
      while (!*v33++)
      {
        if (!--v32)
        {
          goto LABEL_26;
        }
      }
    }

    BlueFin::GlSetBase::GlSetBase(&v53, v54, 0x13u, a3);
    if ((*(v15 + 140) & 1) == 0)
    {
      BlueFin::GlPeNavMeasSelect::RemoveGhosts(v15, a2, a3, a11);
    }

    BlueFin::GlSetBase::GlSetBase(&v57, v58, 0x13u, a3);
    v49 = &v50[4];
    v50[0] = 19;
    memset(&v50[4], 0, 32);
    v51 = 0u;
    memset(v52, 0, 28);
    BlueFin::GlSetBase::OperatorBinaryInversion(&v57, &v49);
    BlueFin::GlSetBase::operator=(&v57, &v49);
    v58[1] = *&v50[20];
    v58[2] = v51;
    *v59 = v52[0];
    *&v59[12] = *(v52 + 12);
    v58[0] = *&v50[4];
    BlueFin::GlSignalIdSet::setSignalIdLimits(&v57);
    v17 = BlueFin::GlSetBase::GlSetBase(v60, &v60[12], 0x13u, &v53);
    v49 = &v50[4];
    v50[0] = 19;
    memset(&v50[4], 0, 32);
    v51 = 0u;
    memset(v52, 0, 28);
    BlueFin::GlSetBase::OperatorBinaryAnd(v17, &v49, &v57);
    BlueFin::GlSetBase::operator=(v60, &v49);
    v61 = *&v50[20];
    v62 = v51;
    v63[0] = v52[0];
    *(v63 + 12) = *(v52 + 12);
    *&v60[12] = *&v50[4];
    BlueFin::GlSetBase::operator=(&v53, v60);
    v54[1] = v61;
    v54[2] = v62;
    *v55 = v63[0];
    *&v55[12] = *(v63 + 12);
    v54[0] = *&v60[12];
    BlueFin::GlPeMsmtMgr::SetRrCode(*(v15 + 8), &v53, 16);
    LOBYTE(v49) = *(a3 + 8);
    v18 = *a3;
    memcpy(v50, *a3, 4 * v49);
    WORD1(v49) = 0;
    BYTE1(v49) = 0;
    HIDWORD(v49) = *v50;
    BlueFin::GlSetIterator::operator++(&v49);
    if (BYTE1(v49) != v49)
    {
      v46 = a7;
      v47 = a8;
      do
      {
        v19 = WORD1(v49);
        if (WORD1(v49) >= 0x23FuLL)
        {
          DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
        }

        v20 = *(v15 + 24);
        v21 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v49);
        v23 = v21[1];
        v60[0] = *v21;
        v22 = v60[0];
        *&v60[4] = v23;
        *&v60[8] = WORD1(v49);
        MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v20, v60, 0, 0);
        v25 = *(v15 + 24);
        v60[0] = v22;
        *&v60[4] = v23;
        *&v60[8] = v19;
        v26 = BlueFin::GlPeMsmtMgr::AccessPeMeas(v25, v60, 0);
        v27 = v26;
        if (*(MeMeas + 27) > 0.000000015 || (v28 = MeMeas[40], !BlueFin::stPeSigMeasKF::IsRRValidForNav(v26)) || *(v15 + 140) == 1 && v28 == 5 * ((858993460 * v28) >> 32))
        {
          BlueFin::GlSetBase::Remove(a3, v19);
          *(v27 + 129) = 18;
        }

        BlueFin::GlSetIterator::operator++(&v49);
      }

      while (BYTE1(v49) != v49);
      v18 = *a3;
      a8 = v47;
      a7 = v46;
    }

    if (*v18)
    {
LABEL_17:
      *v60 = *a4;
      *&v60[16] = *(a4 + 16);
      BlueFin::GlPeNavUtil::ComputeRrateResidVec(v15, a3);
      if (a7)
      {
        BlueFin::GlPeNavGnssState::GlPeNavGnssState(&v50[16], (a2 + *(*a2 - 24)));
        v49 = &off_2A1F12F90;
        *&v50[16] = &unk_2A1F12FC8;
        *v50 = *(a2 + 8);
        v29 = BlueFin::GlSetBase::GlSetBase(v60, &v60[12], 0x13u, a3);
        BlueFin::GlSignalIdSet::GetSvIdSet(v56, v29);
        BlueFin::GlPeNavUtil::ComputeDops(&v49);
        v30 = 2.5;
        if ((**(v15 + 24) - a8) > 0xC350)
        {
          v30 = 6.0;
        }

        if (v30 < *v59)
        {
          BlueFin::GlPeMsmtMgr::SetRrCode(*(v15 + 8), a3, 24);
          bzero(*a3, ((4 * *(a3 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
        }
      }

LABEL_26:
      BlueFin::GlSetBase::operator=(v15 + 40, a3);
      *(v15 + 52) = *(a3 + 12);
      v35 = *(a3 + 28);
      v36 = *(a3 + 44);
      v37 = *(a3 + 60);
      *(v15 + 112) = *(a3 + 72);
      *(v15 + 100) = v37;
      *(v15 + 84) = v36;
      *(v15 + 68) = v35;
      v38 = **(v15 + 24);
      *(v15 + 36) = v38;
      result = BlueFin::GlSetBase::Cnt(a3);
      if (result < 3)
      {
        return result;
      }

      goto LABEL_27;
    }

    v39 = *(a3 + 8);
    if (v39 >= 2)
    {
      v40 = v39 - 1;
      v41 = v18 + 1;
      do
      {
        if (*v41++)
        {
          goto LABEL_17;
        }
      }

      while (--v40);
    }

    BlueFin::GlSetBase::operator=(v15 + 40, a3);
    *(v15 + 52) = *(a3 + 12);
    v43 = *(a3 + 28);
    v44 = *(a3 + 44);
    v45 = *(a3 + 60);
    *(v15 + 112) = *(a3 + 72);
    *(v15 + 100) = v45;
    *(v15 + 84) = v44;
    *(v15 + 68) = v43;
    v38 = **(v15 + 24);
    *(v15 + 36) = v38;
    result = BlueFin::GlSetBase::Cnt(a3);
    if (result > 2)
    {
LABEL_27:
      *(v15 + 32) = v38;
    }
  }

  return result;
}

void BlueFin::GlPeNavGnssKF::PackSkfMeas_RR(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  *v70 = v9;
  v10 = v2;
  v11 = 0;
  v90[100] = *MEMORY[0x29EDCA608];
  do
  {
    v12 = &v89[v11 + 1200];
    *v12 = 0;
    *(v12 + 1) = -1;
    *(v12 + 4) = 575;
    v11 += 12;
  }

  while (v11 != 1200);
  for (i = 0; i != 1200; i += 12)
  {
    v14 = &v89[i];
    *v14 = 0;
    *(v14 + 5) = 575;
  }

  v15 = *(v2[281] + 8);
  if ((*(*v2 + 72))(v2) >= 0x2711 && BlueFin::GlSetBase::Cnt(v8) <= 3)
  {
    BlueFin::GlPeMsmtMgr::SetRrCode(*(v10 + 8), v8, 27);
    v16 = *v8;
    v17 = ((4 * *(v8 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4;

    bzero(v16, v17);
    return;
  }

  v69 = v4;
  v71 = v15 - 1;
  v83 = *(v8 + 8);
  memcpy(v87, *v8, 4 * v83);
  v85 = 0;
  v84 = 0;
  v86 = v87[0];
  BlueFin::GlSetIterator::operator++(&v83);
  v19 = 0;
  if (v84 != v83)
  {
    v19 = 0;
    v21 = v89;
    do
    {
      if (v85 >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v22 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v85;
      v23 = *v22;
      LODWORD(v22) = v22[1];
      v80[0] = v23;
      v81 = v22;
      v82 = v85;
      v24 = *(v10 + 8);
      if (((*(*(v24 + 184) + ((v85 >> 3) & 0x1FFC)) >> (v85 & 0x1F)) & 1) == 0)
      {
        goto LABEL_65;
      }

      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v24, v80, 0, 0);
      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*(v10 + 8), v80, 0);
      if (*(MeMeas + 27) >= 0.000000016 || (v27 = PeMeas, !BlueFin::stPeSigMeasKF::IsRRValidForNav(PeMeas)))
      {
        v39 = BlueFin::GlSignalIdArray::Get(*(*(v10 + 8) + 18792), v80);
        if (v39)
        {
          *(v39 + 273) = 33;
        }

        goto LABEL_65;
      }

      v74 = &v76;
      v75 = 19;
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      memset(v79, 0, sizeof(v79));
      if ((*(*(v10 + 2248) + 8) - 3) >= 0xFFFFFFFE && (*(*(v10 + 2256) + 96) & 1) == 0 && BlueFin::GlSetBase::Cnt(v8) >= 5 && (*(v10 + 5596) & 1) == 0 && !(*(*v10 + 264))(v10))
      {
        *(v74 + (v82 >> 5)) |= 1 << v82;
        v28 = *(*v10 + 192);
        v29 = v10 + *(*v10 - 24);
        v72 = *(v29 + 8);
        v73 = *(v29 + 24);
        v68 = **(v10 + 2240);
        v30 = v28(v10);
        BlueFin::GlPeNavUtil::ComputeRangeResidVec(v10, &v74, &v72, v68, 0, 0, 0, 1, v30, 1);
        v31 = (*(*(v10 + *(*v10 - 24)) + 16))(v10 + *(*v10 - 24));
        v32 = fabs(*(v88[0] + 8));
        v33 = v31 * 1.5;
        if (v33 < 100.0)
        {
          v33 = 100.0;
        }

        if (v32 > v33)
        {
          v56 = BlueFin::GlSignalIdArray::Get(*(*(v10 + 8) + 18792), v80);
          if (v56)
          {
            *(v56 + 273) = 18;
          }

          goto LABEL_65;
        }
      }

      v34 = &v89[12 * v19 + 1200];
      v35 = v82;
      if (v34 != v80)
      {
        *v34 = v80[0];
        *(v34 + 1) = v81;
        *(v34 + 4) = v35;
      }

      *(v74 + (v35 >> 5)) |= 1 << v35;
      v36 = v10 + *(*v10 - 24);
      v72 = *(v36 + 8);
      v73 = *(v36 + 24);
      BlueFin::GlPeNavUtil::ComputeRrateResidVec(v10, &v74);
      if (!*v74)
      {
        if (v75 < 2uLL)
        {
LABEL_42:
          v43 = BlueFin::GlSignalIdArray::Get(*(*(v10 + 8) + 18792), v80);
          if (v43)
          {
            *(v43 + 273) = 18;
          }

          goto LABEL_65;
        }

        v40 = v75 - 1;
        v41 = v74 + 1;
        while (!*v41++)
        {
          if (!--v40)
          {
            goto LABEL_42;
          }
        }
      }

      v37 = *(MeMeas + 5);
      if (v37 == 4)
      {
        if ((*(*(v10 + 2248) + 8) - 1) >= 2)
        {
          v38 = 5.0;
        }

        else
        {
          v38 = 2.0;
        }
      }

      else
      {
        v38 = 2.0;
        if (v37 <= 2)
        {
          if ((*(*(v10 + 2248) + 8) - 1) > 4)
          {
            v44 = 0;
          }

          else
          {
            IsPRValidForNav = BlueFin::stPeSigMeasKF::IsPRValidForNav(v27);
            v44 = 0;
            if (!IsPRValidForNav && *(v27 + 52) <= 28)
            {
              v44 = sqrt(*(v10 + *(*v10 - 24) + 112) * *(v10 + *(*v10 - 24) + 112) + *(v10 + *(*v10 - 24) + 104) * *(v10 + *(*v10 - 24) + 104)) > 0.5;
            }
          }

          goto LABEL_46;
        }
      }

      v44 = 1;
LABEL_46:
      v45 = v80[0];
      v46 = v80[0] - 76;
      if (v80[0] - 134 >= 5 && v46 >= 5)
      {
        v48 = v38;
      }

      else
      {
        v48 = 10.0;
      }

      v49 = *(MeMeas + 29);
      v50 = (30.0 / fmaxf(fminf(v49, 40.0), 25.0));
      if (*(*(v10 + 2248) + 16) == 1)
      {
        v51 = 1.0;
      }

      else
      {
        v51 = v50;
      }

      v52 = *(v88[0] + 8);
      v53 = fabs(v52) * v51;
      *&v90[v19] = v53;
      if (v71 <= 1 && ((v81 - 1) < 3 || (v45 - 139) <= 0x23) && *(v27 + 18) < 0.000000016)
      {
        v53 = v53 * 0.5;
        *&v90[v19] = v53;
      }

      if (v44 || v46 <= 0x3E && ((1 << v46) & 0x7C0000000000001FLL) != 0)
      {
        *&v90[v19] = v48 * v53;
      }

      v54 = v52;
      *v21 = v54;
      v21[1] = ((v49 / -40.0) * (*(v27 + 52) / 90.0)) * (3.0 / (*(MeMeas + 27) * 1000000000.0));
      *(v21 + 5) = v82;
      *(v21 + 8) = (*(MeMeas + 5) - 1) < 2;
      v21 += 3;
      ++v19;
LABEL_65:
      BlueFin::GlSetIterator::operator++(&v83);
    }

    while (v84 != v83);
  }

  if (v19 >= v6)
  {
    v20 = v6;
  }

  else
  {
    v20 = v19;
  }

  if (v20 >= 2)
  {
    v57 = v88;
    BlueFin::GlSortDoubles(v90, v19, v88, v18);
    v58 = 0;
    v74 = &v76;
    v75 = 19;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    memset(v79, 0, sizeof(v79));
    v59 = *v70;
    while (0x6DB6DB6DB6DB6DB7 * ((v59 - *v70) >> 3) < v20)
    {
      v60 = &v89[12 * *v57 + 1200];
      if (BlueFin::GlPeNavUtil::PackSkfMeas_RR_SignalId(v10, v59, v60, v71 < 2))
      {
        v59 += 56;
        *(v74 + (v60[4] >> 5)) |= 1 << v60[4];
      }

      ++v58;
      ++v57;
      if (v20 == v58)
      {
        goto LABEL_85;
      }
    }

    if (v58 < v20)
    {
      v61 = v20 - v58;
      do
      {
        v62 = *v57++;
        v63 = BlueFin::GlSignalIdArray::Get(*(*(v10 + 8) + 18792), &v89[12 * v62 + 1200]);
        if (v63)
        {
          *(v63 + 273) = 43;
        }

        --v61;
      }

      while (v61);
    }

LABEL_85:
    BlueFin::GlSetBase::operator=(v8, &v74);
    v64 = v76;
    *(v8 + 28) = v77;
    v65 = *v79;
    *(v8 + 44) = v78;
    *(v8 + 60) = v65;
    *(v8 + 72) = *&v79[12];
    *(v8 + 12) = v64;
  }

  else
  {
    BlueFin::GlPeMsmtMgr::SetRrCode(*(v10 + 8), v8, 23);
    bzero(*v8, ((4 * *(v8 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  }

  if ((*(v69 + 1) & 0x40) != 0)
  {
    v66 = *(v10 + *(*v10 - 24) + 200);
    v67 = (*(*v10 + 72))(v10);
    BlueFin::GlPeNavGnssResidMon::RunBcMon(v10 + 4864, v66, v67, v89, v8, 0);
  }
}

uint64_t BlueFin::GlSortDoubles(uint64_t this, const double *a2, _BYTE *a3, unsigned __int8 *a4)
{
  *a3 = 0;
  if (a2 >= 2)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(this + 8 * v5);
      v7 = v4;
      while (1)
      {
        v8 = a3[v7];
        if (*(this + 8 * v8) <= v6)
        {
          break;
        }

        a3[v7 + 1] = v8;
        if (!v7--)
        {
          v10 = 0;
          goto LABEL_8;
        }
      }

      v10 = v7 + 1;
LABEL_8:
      a3[v10] = v5++;
      ++v4;
    }

    while (v5 != a2);
  }

  return this;
}

void BlueFin::GlPeNavGnssKF::ComputePosition(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  *(&v174 + 1) = v3;
  v5 = v2;
  v227[100] = *MEMORY[0x29EDCA608];
  v6 = v2 + 7976;
  v7 = *v2;
  *(v2 + *(*v2 - 24) + 256) = 0;
  v8 = *(v4 + 440);
  if (*v8)
  {
    v9 = 1;
  }

  else
  {
    v10 = *(v4 + 448);
    v11 = v10 >= 2;
    v12 = v10 - 2;
    if (v11)
    {
      v13 = v8 + 1;
      do
      {
        v14 = *v13++;
        v9 = v14 != 0;
        if (v14)
        {
          v15 = 1;
        }

        else
        {
          v15 = v12 == 0;
        }

        --v12;
      }

      while (!v15);
    }

    else
    {
      v9 = 0;
    }
  }

  DWORD2(v171) = v9;
  *(&v169 + 1) = v4;
  *(v2 + 7984) = 0;
  *v6 = 0;
  if ((*(v3 + 1) & 8) != 0)
  {
    *(v2 + 4860) = 1;
  }

  *(v2 + 2888) = 0;
  *(v2 + 2872) = 0u;
  *(v2 + 2904) = 0x4082C00000000000;
  *(v2 + 2912) = vdupq_n_s64(0x4082C00000000000uLL);
  *(v2 + 2932) = 0;
  *(v2 + 2936) = xmmword_298A41E50;
  *(v2 + 2896) = 0;
  *(v2 + 2928) = 1142285679;
  bzero(*(v2 + 2952), ((4 * *(v2 + 2960) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(v5 + 1616), ((4 * *(v5 + 1624) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(v5 + 1704), ((4 * *(v5 + 1712) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v16 = *(v5 + 8);
  v17 = (v5 + *(v7 - 24));
  BlueFin::GlSetBase::operator=(v17 + 264, v16 + 184);
  *(v17 + 276) = *(v16 + 196);
  v18 = *(v16 + 212);
  v19 = *(v16 + 228);
  v20 = *(v16 + 244);
  v17[21] = v16[16];
  *(v17 + 308) = v19;
  *(v17 + 324) = v20;
  *(v17 + 292) = v18;
  v21 = *(v5 + 8);
  v22 = v5 + *(*v5 - 24);
  BlueFin::GlSetBase::operator=(v22 + 352, v21 + 184);
  *(v22 + 364) = *(v21 + 196);
  v23 = *(v21 + 212);
  v24 = *(v21 + 228);
  v25 = *(v21 + 244);
  *(v22 + 424) = v21[16];
  *(v22 + 396) = v24;
  *(v22 + 412) = v25;
  *(v22 + 380) = v23;
  v26 = *v5;
  v27 = v5 + *(*v5 - 24);
  *(v27 + 56) = *(v27 + 8);
  *(v27 + 72) = *(v27 + 24);
  *(v5 + 6868) = BYTE8(v171);
  if ((BYTE8(v171) & 1) == 0)
  {
    BlueFin::GlPeNavGnssKF::Propagate(v5, (**(&v174 + 1) >> 9) & 1);
    v26 = *v5;
  }

  BlueFin::GlPeNavGnssState::Print(v5 + *(v26 - 24), 0xEu, "KF-");
  v28 = **(&v174 + 1);
  if ((**(&v174 + 1) & 0x40000000) != 0)
  {
    v206 = &v208;
    v207 = 19;
    v208 = 0u;
    v209 = 0u;
    v210 = 0u;
    memset(v211, 0, sizeof(v211));
    BlueFin::GlSignalIdSet::GetSignalIdSet(v5 + *(*v5 - 24) + 264, 4, v224);
    BlueFin::GlSetBase::operator=(&v206, v224);
    v210 = *&v224[44];
    *v211 = *&v224[60];
    *&v211[12] = *&v224[72];
    v208 = *&v224[12];
    v209 = *&v224[28];
    v29 = (v5 + *(*v5 - 24));
    BlueFin::GlSetBase::operator=(v29 + 264, &v206);
    v30 = *v211;
    *(v29 + 308) = v210;
    *(v29 + 324) = v30;
    v29[21] = *&v211[12];
    v31 = v209;
    *(v29 + 276) = v208;
    *(v29 + 292) = v31;
    BlueFin::GlSignalIdSet::GetSignalIdSet(v5 + *(*v5 - 24) + 352, 4, v224);
    BlueFin::GlSetBase::operator=(&v206, v224);
    v210 = *&v224[44];
    *v211 = *&v224[60];
    *&v211[12] = *&v224[72];
    v208 = *&v224[12];
    v209 = *&v224[28];
    v32 = v5 + *(*v5 - 24);
    BlueFin::GlSetBase::operator=(v32 + 352, &v206);
    v33 = *v211;
    *(v32 + 396) = v210;
    *(v32 + 412) = v33;
    *(v32 + 424) = *&v211[12];
    v34 = v209;
    *(v32 + 364) = v208;
    *(v32 + 380) = v34;
    v28 = **(&v174 + 1);
  }

  BlueFin::GlPeNavMeasSelect::GlPeNavMeasSelect(&v206, *(v5 + 16), *(v5 + 8));
  if (*(*(v5 + 2272) + 2) < 1)
  {
    v37 = *(v5 + 40);
    v38 = *(*(v37 + 16) + 16);
    if (*(v5 + 26) == 1)
    {
      v39 = *(*(v37 + 32) + 32);
      v38 = v38 + v39;
    }

    v36 = fmax(sqrtf(v38), 7.5);
    v213 = v36;
    v40 = sqrt(*(v5 + *(*v5 - 24) + 112) * *(v5 + *(*v5 - 24) + 112) + *(v5 + *(*v5 - 24) + 104) * *(v5 + *(*v5 - 24) + 104));
    v41 = v40 + v40;
    if (v41 >= v36)
    {
      v36 = v41;
    }
  }

  else
  {
    v35 = sqrt(*(v5 + *(*v5 - 24) + 112) * *(v5 + *(*v5 - 24) + 112) + *(v5 + *(*v5 - 24) + 104) * *(v5 + *(*v5 - 24) + 104));
    v36 = v35 + v35;
    if (v36 < 7.5)
    {
      v36 = 7.5;
    }
  }

  v213 = v36;
  v42 = *(v5 + 2248);
  v43 = *(v42 + 1760);
  if (v43 <= 0.0)
  {
    v43 = 15.5;
  }

  if (*(v42 + 16) > 2)
  {
    v43 = 11.5;
  }

  if ((v28 & 8) != 0)
  {
    v44 = 9.0;
  }

  else
  {
    v44 = v43;
  }

  BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExitOrLeftRecently(v5, 0x4E20u);
  v214 = v44;
  v215 = *(*(v5 + 2248) + 1989);
  v45 = *v5;
  v46 = v5 + *(*v5 - 24);
  v47 = *(v46 + 88);
  v48 = **(v5 + 2240);
  *v224 = *(v46 + 104);
  *&v224[16] = *(v46 + 120);
  v49 = *(v5 + 2272);
  v50 = *(v49 + 2) >= 1 && *(v49 + 45) == 0;
  v51 = *(v46 + 152);
  v52 = (*(v45 + 80))(v5);
  BlueFin::GlPeNavMeasSelect::SelectRr(&v206, v5, (v46 + 352), v46 + 8, v48, v224, v50, v52, v47, v51, 0);
  BlueFin::GlPeNavMeasSelect::SelectPr(&v206, v5, (v5 + *(*v5 - 24) + 264), 0);
  if (*(*(v5 + 2272) + 2) < 1)
  {
    LODWORD(v170) = 0;
    goto LABEL_46;
  }

  v54 = *(*(v5 + 2248) + 8);
  LODWORD(v170) = 1;
  if (v54 <= 6)
  {
    if (((1 << v54) & 0x29) != 0)
    {
      LODWORD(v206) = 0;
      if (BlueFin::GlPeNavUtil::GetIntegrityGeometry(v5, (v5 + *(*v5 - 24) + 264), &v206, 3.0, v5 + *(*v5 - 24) + 8, 0) > 1)
      {
LABEL_42:
        LODWORD(v170) = 1;
        goto LABEL_46;
      }
    }

    else if (((1 << v54) & 6) != 0)
    {
      v55 = *(v5 + 16);
      *v224 = 0;
      *&v224[8] = &v224[20];
      v224[16] = 8;
      memset(&v224[20], 0, 32);
      *&v224[56] = xmmword_298A41DA0;
      *&v224[72] = vdup_n_s32(0x42C60000u);
      *&v224[80] = 1120272384;
      BlueFin::stDops::stDops(&v206, v224);
      v212 = v55;
      v56 = **(v5 + 8);
      BlueFin::GlSignalIdSet::GetSvIdSet(v216, (v5 + *(*v5 - 24) + 264));
      v178 = *(v5 + *(*v5 - 24) + 88);
      LODWORD(v227[0]) = **(v5 + 2240);
      LODWORD(v226[0]) = 0;
      *&v166 = 0;
      BlueFin::GlPeDops::GetDops(&v206, v56);
      LODWORD(v216[0]) = 0;
      IntegrityGeometry = BlueFin::GlPeNavUtil::GetIntegrityGeometry(v5, (v5 + *(*v5 - 24) + 264), v216, 3.0, v5 + *(*v5 - 24) + 8, 0);
      if (*&v224[60] < 1.5)
      {
        v53.n128_u32[0] = *&v224[72];
        if (*&v224[72] < 3.0 && IntegrityGeometry > 0)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      if (v54 != 6)
      {
        goto LABEL_46;
      }

      if (BlueFin::GlSetBase::Cnt((v5 + *(*v5 - 24) + 264)) > 3)
      {
        goto LABEL_42;
      }
    }

    BlueFin::GlPeMsmtMgr::SetPrCode(*(v5 + 8), v5 + *(*v5 - 24) + 264, 27);
    BlueFin::GlPeMsmtMgr::SetRrCode(*(v5 + 8), v5 + *(*v5 - 24) + 352, 27);
    v58 = *v5;
    bzero(*(v5 + *(*v5 - 24) + 264), ((4 * *(v5 + *(*v5 - 24) + 272) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(*(v5 + *(v58 - 24) + 352), ((4 * *(v5 + *(v58 - 24) + 360) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    LODWORD(v170) = 0;
    *(v5 + 1560) = 0;
  }

LABEL_46:
  if (**(&v174 + 1))
  {
    v53.n128_f32[0] = (*(*v5 + 64))(v5, v53) / (*(v5 + 2184) * 1000.0);
    if (v53.n128_f32[0] >= 2)
    {
      v59 = *(v5 + 2272);
      if (*(v59 + 2) >= 1 && (*(v59 + 45) & 1) == 0 && *(*(v5 + 2248) + 8) == 6)
      {
        v60 = 7;
LABEL_58:
        (*(*v5 + 24))(v5, v60);
        return;
      }
    }
  }

  if ((**(&v174 + 1) & 2) != 0)
  {
    v53.n128_f32[0] = (*(*v5 + 64))(v5, v53) / (*(v5 + 2184) * 1000.0);
    if (v53.n128_f32[0] >= 2)
    {
      v61 = *(v5 + 2272);
      if (*(v61 + 2) >= 1 && (*(v61 + 45) & 1) == 0 && (*(*(v5 + 2248) + 8) - 1) <= 1)
      {
        v60 = 6;
        goto LABEL_58;
      }
    }
  }

  v62 = **(&v174 + 1);
  v63 = *(v5 + 2256);
  v64 = (*(*v5 + 128))(v5, v53);
  v65 = (*(*v5 + 160))(v5);
  v66 = BlueFin::GlPeExtLoc::WaitPosLocVerification(v63, v64, v65, (v62 & 0x1000) != 0);
  v67 = *v5;
  v68 = *v5;
  v69 = BlueFin::GlSetBase::Cnt((v5 + *(*v5 - 24) + 264));
  if (v66)
  {
    v70 = 7977;
    v71 = 7976;
LABEL_83:
    *(v5 + v70) = 0;
    *(v5 + v71) = 1;
    goto LABEL_84;
  }

  if ((v62 & 0x1000000) != 0)
  {
    goto LABEL_81;
  }

  v72 = *(v5 + 2256);
  v73 = *(v72 + 17);
  v74 = v73 && *(v73 + 3008) == 1 && vaddvq_f64(vmulq_f64(*(v73 + 3040), *(v73 + 3040))) < 160000.0;
  if (!v74 && !v69)
  {
    if (*v72 < 1)
    {
      goto LABEL_84;
    }

    goto LABEL_76;
  }

  if (v69)
  {
    v74 = 0;
  }

  *(v6 + 1) = v74;
  *v6 = 1;
  if (*v72 > 0)
  {
LABEL_76:
    if (!v73 || *(v73 + 3008) != 1)
    {
      goto LABEL_82;
    }

    v75 = *(v73 + 3040);
    v70 = 7981;
    v71 = 7980;
    if (vaddvq_f64(vmulq_f64(v75, v75)) >= 160000.0 || v69 > 2 || v75.f64[0] >= 35.0)
    {
      goto LABEL_83;
    }

LABEL_81:
    *v6 = 257;
    BlueFin::GlPeMsmtMgr::SetPrCode(*(v5 + 8), v5 + *(v68 - 24) + 264, 26);
    BlueFin::GlPeMsmtMgr::SetRrCode(*(v5 + 8), v5 + *(*v5 - 24) + 352, 26);
    v67 = *v5;
    v76 = *v5;
    bzero(*(v5 + *(v67 - 24) + 264), ((4 * *(v5 + *(v67 - 24) + 272) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(*(v5 + *(v76 - 24) + 352), ((4 * *(v5 + *(v76 - 24) + 360) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    *(v5 + 1560) = 0;
LABEL_82:
    v70 = 7981;
    v71 = 7980;
    goto LABEL_83;
  }

LABEL_84:
  v77 = &v209 + 6;
  v78 = 5600;
  do
  {
    *(v77 - 8) = 0;
    *(v77 - 1) = -1;
    *v77 = 575;
    v77 += 28;
    v78 -= 56;
  }

  while (v78);
  v79 = *(v67 - 24);
  DWORD1(v171) = (*(v67 + 72))(v5);
  *(&v173 + 1) = v5 + v79;
  if (DWORD1(v171) < 0x1389)
  {
    BlueFin::GlPeNavGnssKF::PackSkfMeas_RR(v5, &v206);
    v80 = BlueFin::GlSetBase::Cnt((*(&v173 + 1) + 352));
    *&v173 = &v206 + 7 * v80;
    v81 = 100 - v80;
    goto LABEL_97;
  }

  v82 = *(v5 + 16);
  LODWORD(v216[0]) = 0;
  v216[1] = v218;
  v217 = 8;
  memset(v218, 0, 32);
  v219 = xmmword_298A41DA0;
  v220 = vdup_n_s32(0x42C60000u);
  v221 = 1120272384;
  BlueFin::stDops::stDops(v224, v216);
  v225 = v82;
  v83 = **(v5 + 8);
  BlueFin::GlSignalIdSet::GetSvIdSet(&v178, (v5 + *(*v5 - 24) + 264));
  v227[0] = *(v5 + *(*v5 - 24) + 88);
  LODWORD(v226[0]) = **(v5 + 2240);
  LODWORD(v222[0]) = 0;
  *&v166 = 0;
  BlueFin::GlPeDops::GetDops(v224, v83);
  v84 = *(v5 + 2248);
  if (*(v84 + 1764))
  {
    v85 = 60;
  }

  else
  {
    v85 = 180;
  }

  if (*(v84 + 1328) > 4.0 && *(v84 + 1320) < 20.0 && *(v84 + 76) >= v85 && ((*(v84 + 1764) & 1) != 0 || *(v84 + 64) == 1) || BlueFin::GlSetBase::Cnt((*(&v173 + 1) + 264)) >= 4 && *(&v219 + 1) <= 10.0)
  {
    *&v173 = &v206;
    v81 = 100;
LABEL_97:
    DWORD1(v169) = v81;
    *(v5 + 6896) = 0;
    bzero(v227, 0x320uLL);
    bzero(v226, 0x320uLL);
    for (i = 0; i != 1200; i += 12)
    {
      v87 = &v224[i];
      *v87 = 0;
      *(v87 + 1) = -1;
      *(v87 + 4) = 575;
    }

    v223 = 0;
    memset(v222, 0, sizeof(v222));
    BlueFin::GlSetBase::GlSetBase(&v204, v205, 0x13u, (*(v5 + 8) + 184));
    for (j = 0; j != 1200; j += 12)
    {
      v89 = v216 + j;
      *v89 = 0;
      *(v89 + 5) = 575;
    }

    DWORD1(v170) = (*(*v5 + 192))(v5);
    HIDWORD(v171) = 0;
    v90 = *(*(v5 + 2248) + 8);
    if ((*(*(&v174 + 1) + 1) & 0x40) != 0 && v90 != 6)
    {
      HIDWORD(v171) = BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExit(v5);
    }

    if (v90 == 6)
    {
      v91 = 10.0;
    }

    else
    {
      v91 = 15.0;
    }

    v199 = *(*(&v173 + 1) + 272);
    memcpy(v203, *(*(&v173 + 1) + 264), 4 * v199);
    v201 = 0;
    v200 = 0;
    v202 = v203[0];
    BlueFin::GlSetIterator::operator++(&v199);
    *&v174 = 0;
    if (v200 != v199)
    {
      *&v174 = 0;
      v172 = (v5 + 88);
      v93 = v216;
      do
      {
        if (v201 >= 0x23FuLL)
        {
          DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
        }

        v94 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v201;
        v95 = *v94;
        LODWORD(v94) = v94[1];
        v196[0] = v95;
        v197 = v94;
        v198 = v201;
        if (((*(v204 + ((v201 >> 3) & 0x1FFC)) >> (v201 & 0x1F)) & 1) == 0)
        {
          goto LABEL_153;
        }

        MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*(v5 + 8), v196, 0, 0);
        PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*(v5 + 8), v196, 0);
        if ((MeMeas[13] & 0x80) != 0)
        {
          v98 = 1;
        }

        else
        {
          v98 = *(*(v5 + 2248) + 8) != 10 && *(MeMeas + 27) * 1000000000.0 > 999.0;
        }

        v99 = *(v5 + 2272);
        if (*(v99 + 2) < 1)
        {
          v100 = 1;
          if (!v98)
          {
            goto LABEL_131;
          }
        }

        else
        {
          v100 = *(v99 + 45);
          if (!v98)
          {
            goto LABEL_131;
          }
        }

        v101 = *(MeMeas + 29);
        if (v101 <= 30.0 || (v102 = *(v5 + 2248), (*(v102 + 16) & 0xFFFFFFFE) == 2))
        {
          if (v101 < 16.0)
          {
            v100 = 1;
          }

          if (v100 != 1)
          {
            goto LABEL_131;
          }
        }

        else
        {
          v103 = *(v102 + 8) - 3;
          if (v101 < 16.0)
          {
            LOBYTE(v100) = 1;
          }

          if (v103 > 2 || (v100 & 1) == 0)
          {
            goto LABEL_131;
          }
        }

        if ((**(&v174 + 1) & 0x80) == 0)
        {
          goto LABEL_148;
        }

LABEL_131:
        if (!BlueFin::stPeSigMeasKF::IsPRValidForNav(PeMeas))
        {
LABEL_148:
          v121 = BlueFin::GlSignalIdArray::Get(*(*(v5 + 8) + 18792), v196);
          if (v121)
          {
            v122 = 14;
LABEL_152:
            *(v121 + 272) = v122;
            goto LABEL_153;
          }

          goto LABEL_153;
        }

        v104 = &v224[12 * v174];
        v105 = v198;
        if (v104 != v196)
        {
          *v104 = v196[0];
          *(v104 + 1) = v197;
          *(v104 + 4) = v105;
        }

        v193 = v195;
        v194 = 19;
        memset(v195, 0, sizeof(v195));
        v192 = 0.0;
        v195[v105 >> 5] |= 1 << v105;
        v106 = *(*v5 + 192);
        v107 = v5 + *(*v5 - 24);
        v175 = *(v107 + 8);
        v176 = *(v107 + 24);
        v108 = **(v5 + 2240);
        v109 = v106(v5);
        BlueFin::GlPeNavUtil::ComputeRangeResidVec(v5, &v193, &v175, v108, 0, 0, &v192, 1, v109, 1);
        v110 = 0;
        v111 = &v193[v194 - 1];
        do
        {
          if (*v111)
          {
            v112 = *v111 - (((*v111 >> 1) & 0x5B6DB6DB) + ((*v111 >> 2) & 0x9249249));
            v110 = ((v112 + (v112 >> 3)) & 0xC71C71C7) + v110 - 63 * (((v112 + (v112 >> 3)) & 0xC71C71C7) / 0x3F);
          }

          --v111;
        }

        while (v111 >= v193);
        if (v110)
        {
          v113 = v178[1];
          v114 = fabs(v113);
          if (v114 < 400.0)
          {
            v114 = v178[1];
          }

          *&v227[v174] = v114;
          v115 = v113;
          *v93 = v115;
          v116 = v192;
          v117 = *(MeMeas + 24) * 299792458.0;
          *(v93 + 1) = ((*(MeMeas + 29) / -40.0) * (v192 / 90.0)) * sqrtf(15.0 / v117);
          *(v93 + 5) = v198;
          v118 = *(MeMeas + 5);
          *(v93 + 8) = (v118 - 1) < 2;
          v119 = v196[0] - 76;
          if (v119 <= 0x3E && ((1 << v119) & 0x7C0000000000001FLL) != 0)
          {
            v120 = fabs(v114);
            *&v227[v174] = v120 + v120;
          }

          v93 = (v93 + 12);
          if (!HIDWORD(v171))
          {
            goto LABEL_147;
          }

          if (v116 >= v91)
          {
            *&v227[v174] = -v116;
            *&v226[v174] = ((100 * byte_298A44178[v118]) - v116);
LABEL_147:
            *&v174 = (v174 + 1);
          }
        }

        else
        {
          v121 = BlueFin::GlSignalIdArray::Get(*(*(v5 + 8) + 18792), v196);
          if (v121)
          {
            v122 = 28;
            goto LABEL_152;
          }
        }

LABEL_153:
        BlueFin::GlSetIterator::operator++(&v199);
      }

      while (v200 != v199);
    }

    v123 = v174;
    if (SBYTE4(v169) < v174)
    {
      v123 = SBYTE4(v169);
    }

    if (v123 >= 50)
    {
      v124 = 50;
    }

    else
    {
      v124 = v123;
    }

    v125 = *(v5 + 2272);
    if (*(v125 + 2) < 1 || *(v125 + 45))
    {
      if (*(*(v5 + 2248) + 1989))
      {
        v126 = 1;
      }

      else
      {
        v126 = *(v5 + 1800);
      }
    }

    else
    {
      v126 = 5;
    }

    if (v126 > v124)
    {
      BlueFin::GlPeMsmtMgr::SetPrCode(*(v5 + 8), v5 + *(*v5 - 24) + 264, 14);
      bzero(*(*(&v173 + 1) + 264), ((4 * *(*(&v173 + 1) + 272) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      goto LABEL_199;
    }

    if (HIDWORD(v171))
    {
      v128 = v226;
    }

    else
    {
      v128 = v227;
    }

    BlueFin::GlSortDoubles(v128, v174, v222, v92);
    v129 = fabs((*&v227[*(v222 + (v174 >> 1))] + *&v227[*(v222 + ((v174 - 1 + (((v174 - 1) & 0x8000u) >> 15)) >> 1))]) * 10.0 * 0.5);
    v172 = &v179[4];
    v178 = &v179[4];
    if (v129 >= 400.0)
    {
      v130 = v129;
    }

    else
    {
      v130 = 400.0;
    }

    v179[0] = 19;
    memset(&v179[4], 0, 76);
    if (!v174)
    {
      LODWORD(v131) = 0;
LABEL_187:
      if (v131 < v174)
      {
        v136 = v174 - v131;
        v137 = v222 + v131;
        do
        {
          v138 = BlueFin::GlSignalIdArray::Get(*(*(v5 + 8) + 18792), &v224[12 * *v137]);
          if (v138)
          {
            *(v138 + 272) = 43;
          }

          ++v137;
          --v136;
        }

        while (v136);
      }

LABEL_192:
      v139 = 0;
      v140 = (v178 + 4 * v179[0] - 4);
      do
      {
        if (*v140)
        {
          v141 = *v140 - (((*v140 >> 1) & 0x5B6DB6DB) + ((*v140 >> 2) & 0x9249249));
          v139 = ((v141 + (v141 >> 3)) & 0xC71C71C7) + v139 - 63 * (((v141 + (v141 >> 3)) & 0xC71C71C7) / 0x3F);
        }

        v140 = (v140 - 4);
      }

      while (v140 >= v178);
      if (!v139)
      {
        *(v5 + 6896) = 1;
      }

      BlueFin::GlSetBase::operator=(*(&v173 + 1) + 264, &v178);
      v142 = *&v179[52];
      *(*(&v173 + 1) + 308) = *&v179[36];
      *(*(&v173 + 1) + 324) = v142;
      *(*(&v173 + 1) + 336) = *&v179[64];
      v143 = *&v179[20];
      *(*(&v173 + 1) + 276) = *&v179[4];
      *(*(&v173 + 1) + 292) = v143;
LABEL_199:
      if ((*(*(&v174 + 1) + 1) & 0x40) != 0 && ((*(*v5 + 64))(v5) / (*(v5 + 2184) * 1000.0)) >= 2)
      {
        v144 = *(v5 + *(*v5 - 24) + 200);
        v145 = (*(*v5 + 72))(v5);
        BlueFin::GlPeNavGnssResidMon::RunBcMon(v5 + 4864, v144, v145, v216, (*(&v173 + 1) + 264), 1);
      }

      v146 = (v5 + *(*v5 - 24));
      BlueFin::GlSetBase::operator=(v146 + 264, *(&v173 + 1) + 264);
      *(v146 + 276) = *(*(&v173 + 1) + 276);
      v147 = *(*(&v173 + 1) + 292);
      v148 = *(*(&v173 + 1) + 308);
      v149 = *(*(&v173 + 1) + 324);
      v146[21] = *(*(&v173 + 1) + 336);
      *(v146 + 308) = v148;
      *(v146 + 324) = v149;
      *(v146 + 292) = v147;
      v150 = v173 + 56 * BlueFin::GlSetBase::Cnt((*(&v173 + 1) + 264));
      v151 = -73 * ((v150 - &v206) >> 3);
      if (DWORD1(v171) < 0x1389)
      {
        goto LABEL_209;
      }

      v152 = *(*(&v173 + 1) + 264);
      if (!*v152)
      {
        v153 = *(*(&v173 + 1) + 272);
        if (v153 < 2)
        {
          goto LABEL_209;
        }

        v154 = v153 - 1;
        v155 = v152 + 1;
        while (!*v155++)
        {
          if (!--v154)
          {
            goto LABEL_209;
          }
        }
      }

      BlueFin::GlPeNavGnssKF::PackSkfMeas_RR(v5, v150);
      v150 += 56 * BlueFin::GlSetBase::Cnt((*(&v173 + 1) + 352));
      v151 = -73 * ((v150 - &v206) >> 3);
LABEL_209:
      if (v151)
      {
        if (*(&v206 + 14 * v151 - 3) == -1)
        {
          DeviceFaultNotify("glpe_navgnsskf.cpp", 2690, "PackSkfMeas", "cNbTotalKfMeas==0 || pastSkfMeas[cNbTotalKfMeas-1].eMeasType != SKF_MEAS_INVALID");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navgnsskf.cpp", 2690, "cNbTotalKfMeas==0 || pastSkfMeas[cNbTotalKfMeas-1].eMeasType != SKF_MEAS_INVALID");
        }

        if (v151 >= 101)
        {
          DeviceFaultNotify("glpe_navgnsskf.cpp", 2691, "PackSkfMeas", "cNbTotalKfMeas <= cMaxNumSkfMeas");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navgnsskf.cpp", 2691, "cNbTotalKfMeas <= cMaxNumSkfMeas");
        }
      }

      v127 = -73 * ((v150 - &v206) >> 3);
      goto LABEL_213;
    }

    HIDWORD(v171) = v174;
    v131 = 0;
    v132 = v173;
    while (1)
    {
      if (0x6DB6DB6DB6DB6DB7 * ((v132 - v173) >> 3) >= v124)
      {
        goto LABEL_187;
      }

      v133 = &v224[12 * *(v222 + v131)];
      v134 = *&v227[*(v222 + v131)];
      if (fabs(v134) > v130)
      {
        break;
      }

      if (!BlueFin::GlPeNavUtil::PackSkfMeas_PR_SignalId(v5, v132, &v224[12 * *(v222 + v131)], SBYTE4(v170)))
      {
        v135 = BlueFin::GlSignalIdArray::Get(*(*(v5 + 8) + 18792), v133);
LABEL_182:
        if (v135)
        {
          *(v135 + 272) = 15;
        }

        goto LABEL_184;
      }

      v132 += 56;
      *(v178 + (*(v133 + 4) >> 5)) |= 1 << *(v133 + 4);
LABEL_184:
      if (v174 == ++v131)
      {
        goto LABEL_192;
      }
    }

    GlCustomLog(14, "SV Removed due to large residual - Selected Sv %02d CarrBand %d dz=%.1f Lms %u\n", *v133, *(v133 + 1), v134, **(v5 + 8));
    v135 = BlueFin::GlSignalIdArray::Get(*(*(v5 + 8) + 18792), v133);
    goto LABEL_182;
  }

  bzero(*(*(&v173 + 1) + 352), ((4 * *(*(&v173 + 1) + 360) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  bzero(*(*(&v173 + 1) + 264), ((4 * *(*(&v173 + 1) + 272) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  v127 = 0;
LABEL_213:
  *(v5 + 1560) = v127;
  BlueFin::GlPeNavUtil::ComputeL5BiasFromMeas(v5, (v5 + 6876), (v5 + 6880), (v5 + 6888), (v5 + *(*v5 - 24) + 264), **(v5 + 2240), &v206, v127);
  if (v170 && *(v5 + 6896) == 1)
  {
    (*(*v5 + 24))(v5, 9);
  }

  else
  {
    *(&v170 + 1) = v5 + 2936;
    BlueFin::GlPeNavGnssKF::ComputePositionMain(v5, *(&v174 + 1), DWORD2(v171), *(&v169 + 1), &v206, v157, v158, v159, v166, v167, v168, v169, v170, v171, v172, v173, v174, v160, v161, v175, *(&v175 + 1), v176, HIDWORD(v176), v177, v178, *v179, *&v179[8], *&v179[16], *&v179[24], *&v179[32], *&v179[40], *&v179[48], v162, *&v179[56], *&v179[64], *&v179[72], v180, v181, v182, v183, v184, v163, v164, v185, v186, v187, v165, v188, v189, v190, v191);
  }
}

unint64_t BlueFin::GlPeNavGnssKF::GetMeasSigIdSetForLsq(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4, int a5)
{
  v9 = 352;
  if (a4)
  {
    v9 = 264;
    v10 = 0;
  }

  else
  {
    v10 = 2;
  }

  result = BlueFin::GlSetBase::GlSetBase(&v46, v47, 0x13u, (a1 + v9 + *(*a1 - 24)));
  v43 = v45;
  v44 = 8;
  memset(v45, 0, sizeof(v45));
  if (**a3)
  {
    goto LABEL_37;
  }

  v12 = a3[8];
  if (v12 >= 2)
  {
    v13 = v12 - 1;
    v14 = (*a3 + 4);
    while (!*v14++)
    {
      if (!--v13)
      {
        goto LABEL_9;
      }
    }

LABEL_37:
    DeviceFaultNotify("glpe_navgnsskf.cpp", 7501, "GetMeasSigIdSetForLsq", "otLsqSignalIds.IsEmpty()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navgnsskf.cpp", 7501, "otLsqSignalIds.IsEmpty()");
  }

LABEL_9:
  if (*(a1 + 1560) >= 1)
  {
    LOBYTE(v16) = 0;
    v17 = 0;
    v18 = 108;
    if (a4)
    {
      v18 = 96;
    }

    v39 = v18;
    v37 = a5;
    v36 = a3;
    v35 = v10;
    do
    {
      v19 = *(a2 + 32);
      if (*(a2 + 44) == v10)
      {
        v20 = v43;
        v21 = v19 >> 5;
        v22 = v19 & 0x1F;
        if (((*(v43 + v21) >> (v19 & 0x1F)) & 1) == 0)
        {
          v23 = *(a2 + 40);
          v24 = v23 >> 5;
          v25 = v23 & 0x1F;
          if ((*(v46 + 4 * v24) >> v25))
          {
            v26 = BlueFin::GlSvId::s_aucSvId2gnss[*(a2 + 32)];
            v27 = BlueFin::GlSignalId::s_aucGnss2numSignals[v26];
            if (v27 >= 2)
            {
              result = BlueFin::GlPeMsmtMgr::GetMeMeas(*(a1 + 8), (a2 + 32), 0, 0);
              v28 = 0;
              v29 = *(result + v39);
              v30 = &BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v26];
              while (1)
              {
                if (v28 != *(a2 + 36))
                {
                  v40[0] = v19;
                  v41 = v28;
                  v31 = 575;
                  v42 = 575;
                  if (v19 - 189 >= 0xFFFFFF44)
                  {
                    if (*v30 == 255)
                    {
                      v41 = -1;
                      v31 = 575;
                    }

                    else
                    {
                      v42 = BlueFin::GlSignalId::s_ausGnss2signalId[v26] + v19 - BlueFin::GlSvId::s_aucGnss2minSvId[v26] + v28 * BlueFin::GlSvId::s_aucGnss2numSvId[v26];
                      v31 = v42;
                    }
                  }

                  if ((*(v46 + 4 * (v31 >> 5)) >> (v31 & 0x1F)))
                  {
                    result = BlueFin::GlPeMsmtMgr::GetMeMeas(*(a1 + 8), v40, 0, 0);
                    if (v29 > *(result + v39))
                    {
                      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*(a1 + 8), v40, 0);
                      if (a4)
                      {
                        result = BlueFin::stPeSigMeasKF::IsPRValidForNav(PeMeas);
                        if (result)
                        {
                          goto LABEL_35;
                        }
                      }

                      else
                      {
                        result = BlueFin::stPeSigMeasKF::IsRRValidForNav(PeMeas);
                        if (result)
                        {
LABEL_35:
                          a5 = v37;
                          a3 = v36;
                          v10 = v35;
                          goto LABEL_32;
                        }
                      }
                    }
                  }
                }

                ++v28;
                v30 += 7;
                if (v27 == v28)
                {
                  v33 = *(a2 + 40);
                  v34 = *(a2 + 32);
                  v20 = v43;
                  v24 = v33 >> 5;
                  v25 = v33 & 0x1F;
                  v21 = v34 >> 5;
                  v22 = v34 & 0x1F;
                  a5 = v37;
                  a3 = v36;
                  v10 = v35;
                  break;
                }
              }
            }

            *(*a3 + 4 * v24) |= 1 << v25;
            *(v20 + v21) |= 1 << v22;
            ++v17;
          }
        }
      }

LABEL_32:
      v16 = (v16 + 1);
      if (v16 >= *(a1 + 1560))
      {
        break;
      }

      a2 += 56;
    }

    while (a5 > v17);
  }

  return result;
}

BOOL BlueFin::GlPeNavUtil::PackSkfMeas_PR_SignalId(uint64_t a1, uint64_t a2, BlueFin::GlSignalId *a3, char a4)
{
  v5 = *(a1 + 8);
  v6 = (1 << (*(a3 + 4) & 0x1F)) & *(*(v5 + 8) + 4 * (*(a3 + 4) >> 5));
  if (v6)
  {
    v10 = -7200001;
    PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(v5, a3, 0);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = -1;
    *(a2 + 48) = 0;
    *(a2 + 50) = 0;
    *(a2 + 32) = 0;
    *(a2 + 36) = -1;
    *(a2 + 40) = 575;
    *(a2 + 44) = 0;
    v12 = *(a1 + 8);
    v13 = *v12;
    *(a2 + 16) = *v12;
    if (v13 != -7200001)
    {
      v14 = *(v12 + 1);
      v15 = v13 - v14;
      if (v14 == -7200001)
      {
        v10 = -7200001;
      }

      else
      {
        v10 = v15;
      }
    }

    *(a2 + 20) = v10;
    if ((a2 + 32) != a3)
    {
      *(a2 + 32) = *a3;
      *(a2 + 36) = *(a3 + 1);
      *(a2 + 40) = *(a3 + 4);
    }

    if ((a4 & 1) != 0 || (v16 = *(PeMeas + 112), v16 == 1))
    {
      *a2 = *PeMeas * 299792.458;
      *(a2 + 8) = *(BlueFin::GlPeMsmtMgr::GetMeMeas(v12, a3, 0, 0) + 24) * 299792458.0;
      v17 = *a2;
      LOBYTE(v16) = *(PeMeas + 112);
    }

    else
    {
      v17 = *(PeMeas + 24);
      *(a2 + 8) = *(PeMeas + 52);
    }

    *a2 = v17 + 0.0;
    *(a2 + 48) = 1;
    *(a2 + 24) = *(PeMeas + 88);
    *(a2 + 49) = v16;
  }

  return v6 != 0;
}

unint64_t BlueFin::GlPeSubsets::Find(BlueFin::GlPeSubsets *this, const BlueFin::GlSignalIdSet *a2)
{
  BlueFin::GlPeSubsetIterator::GlPeSubsetIterator(&v7, this);
  v4 = v7;
  v3 = v8;
  while (1)
  {
    if (v3 >= v4)
    {
      return 0;
    }

    v5 = BlueFin::GlPeSubsetIterator::operator->(&v7);
    if (BlueFin::GlSetBase::operator==(v5 + 24, a2))
    {
      break;
    }

    v4 = v7;
    v3 = v8 + 168;
    v8 += 168;
  }

  return BlueFin::GlPeSubsetIterator::operator->(&v7);
}

uint64_t BlueFin::GlMeSrdAidingMgr::FormatGpsTcxoAidingForEsw(unsigned int *a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v9[0] = &unk_2A1F0E1A0;
  v9[1] = 0;
  v10 = 0x36A7C5AC00000000;
  v11 = 0;
  v12 = 2139095039;
  v13 = 0;
  v14 = 2139095039;
  v15 = 0;
  v16 = 0x36A7C5AC7F7FFFFFLL;
  (*(**a1 + 96))(*a1, v9, a1[6]);
  *(a2 + 12) = a1[6];
  *(a2 + 14) = 1;
  v6[0] = 1;
  v7 = 0;
  v8 = 0;
  result = BlueFin::GlMeSrdAsicUnitConverter::PpuToEswAidingFrequency(v6, -*&v10, v4);
  *a2 = result;
  return result;
}

uint64_t BlueFin::GlMeSrdAidingMgr::FormatBdsPosTcxoAidingForEsw(unsigned int *a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v9[0] = &unk_2A1F0E1A0;
  v9[1] = 0;
  v10 = 0x36A7C5AC00000000;
  v11 = 0;
  v12 = 2139095039;
  v13 = 0;
  v14 = 2139095039;
  v15 = 0;
  v16 = 0x36A7C5AC7F7FFFFFLL;
  (*(**a1 + 96))(*a1, v9, a1[6]);
  *(a2 + 12) = a1[6];
  *(a2 + 14) = 1;
  v6[0] = 76;
  v7 = 0;
  v8 = 201;
  result = BlueFin::GlMeSrdAsicUnitConverter::PpuToEswAidingFrequency(v6, -*&v10, v4);
  *a2 = result;
  return result;
}

BlueFin::GlBitBuffer *BlueFin::GlBitBuffer::Put(BlueFin::GlBitBuffer *this, BlueFin::GlBitBuffer *a2, unsigned int a3)
{
  if (a3)
  {
    v4 = a3;
    do
    {
      if (v4 >= 0x20)
      {
        v6 = 32;
      }

      else
      {
        v6 = v4;
      }

      v7 = BlueFin::GlBitBuffer::GetU(a2, v6);
      BlueFin::GlBitBuffer::PutU(this, v7, v6);
      v4 -= v6;
    }

    while (v4);
  }

  return this;
}

BlueFin::GlBitBuffer *BlueFin::GlBitBuffer::TransferBits(BlueFin::GlBitBuffer *this, BlueFin::GlBitBuffer *a2, BlueFin::GlBitBuffer *a3, unsigned int *a4, unsigned int *a5, const unsigned int *a6)
{
  if (a6 >= 1)
  {
    v10 = this;
    v11 = a6;
    do
    {
      v12 = *a3;
      a3 = (a3 + 4);
      BlueFin::GlBitBuffer::Position(v10, v12);
      v13 = *a4++;
      BlueFin::GlBitBuffer::Position(a2, v13);
      v14 = *a5++;
      this = BlueFin::GlBitBuffer::Put(v10, a2, v14);
      --v11;
    }

    while (v11);
  }

  return this;
}

uint64_t BlueFin::GlPePolaroid::RunPolaroid(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v4 = v3;
  v6 = v5;
  v324 = v7;
  v9 = v8;
  v10 = v2;
  v415 = *MEMORY[0x29EDCA608];
  v11 = *v8;
  *(v2 + 64) = *v8;
  *(v2 + 80) = *(v8 + 2);
  *(v2 + 88) = v8[6];
  v325 = v2 + 88;
  *(v2 + 92) = *(v8 + 14);
  *(v2 + 94) = *(v8 + 30);
  *(v2 + 96) = v8[8];
  *(v2 + 100) = *(v8 + 36);
  *(v2 + 104) = *(v8 + 5);
  *(v2 + 112) = v8[12];
  *(v2 + 116) = *(v8 + 52);
  BlueFin::GlPeNavGnssState::operator=(v2 + *(*v2 - 24), v11);
  v343 = v345;
  v344 = 19;
  memset(v345, 0, sizeof(v345));
  v340 = v342;
  v341 = 19;
  memset(v342, 0, sizeof(v342));
  v337 = v339;
  v338 = 19;
  memset(v339, 0, sizeof(v339));
  v328 = v6;
  BlueFin::GlSetBase::GlSetBase(&v335, v336, 0x13u, v6);
  v323 = v4;
  BlueFin::GlSetBase::GlSetBase(&v333, v334, 0x13u, v4);
  v12 = *(v10 + 32);
  v331 = v10;
  if (*(v12 + 8))
  {
    v329 = *(v10 + 91);
    v13 = v6;
    if (*(v12 + 16))
    {
      if ((*(v10 + 90) & 1) == 0 && (*(v10 + 92) & 1) == 0)
      {
        v14 = 0.0;
        if (*(v10 + 96) > 0xFu)
        {
          goto LABEL_23;
        }
      }
    }
  }

  else
  {
    v329 = *(v10 + 91);
    v13 = v6;
  }

  if (BlueFin::GlSetBase::Cnt(v13))
  {
    BlueFin::GlSetBase::GlSetBase(&v346, v347 + 1, 0x13u, v13);
    v15 = v10 + *(*v10 - 24);
    v378 = *(v15 + 8);
    v379 = *(v15 + 24);
    BlueFin::GlPeNavUtil::ComputeRangeResidVec(v10, &v346, &v378, **(v10 + 24), 0, 0, 0, 1, *(v10 + 88), 1);
    v19 = *v393;
    if (*v393 >= 1)
    {
      v20 = (*&v392 + 8);
      do
      {
        *v20 = fabs(*v20);
        ++v20;
        --v19;
      }

      while (v19);
    }

    v21 = BlueFin::SKFVector::Median(&v392, v16, v17, v18);
    v22 = v21 + v21;
    v23 = v10;
    v24 = *(v10 + 48);
    if (*(v24 + 24) >= v22)
    {
      v14 = *(v24 + 24);
    }

    else
    {
      v14 = v22;
    }

    v25 = v4;
  }

  else
  {
    v14 = 0.0;
    v25 = v4;
    v23 = v10;
  }

  if (*(v23 + 90) == 1 && BlueFin::GlSetBase::Cnt(v25))
  {
    BlueFin::GlSetBase::GlSetBase(&v346, v347 + 1, 0x13u, v25);
    v26 = v10 + *(*v10 - 24);
    v378 = *(v26 + 8);
    v379 = *(v26 + 24);
    BlueFin::GlPeNavUtil::ComputeRrateResidVec(v10, &v346);
    v30 = *v393;
    if (*v393 >= 1)
    {
      v31 = (*&v392 + 8);
      do
      {
        *v31 = fabs(*v31);
        ++v31;
        --v30;
      }

      while (v30);
    }

    BlueFin::SKFVector::Median(&v392, v27, v28, v29);
  }

LABEL_23:
  if (*(v9 + 30) == 1 && (v32 = *(v10 + 32), (*(v32 + 8) - 1) <= 1) && (*(v32 + 1988) & 1) == 0)
  {
    *(v10 + 126) = 1;
    BlueFin::GlPeNavUtil::ComputeCrossTrackElevMask(v10, v9[12], &v335, &v333);
  }

  else
  {
    *(v10 + 126) = 0;
  }

  v33 = &v393[16];
  *&v393[8] = xmmword_298A43FA0;
  v392 = COERCE_DOUBLE(&v393[24]);
  *v393 = &v412;
  v412 = 0;
  for (i = 8; i != 176; i += 8)
  {
    *(*v393 + i) = v33;
    v33 += 168;
  }

  v35 = 0;
  v371 = v372 + 8;
  *&v372[0] = 0x1500000000;
  *(v372 + 8) = 0u;
  *(&v372[1] + 8) = 0u;
  *(&v372[2] + 8) = 0u;
  *(&v372[3] + 8) = 0u;
  *(&v372[4] + 8) = 0u;
  *(&v372[5] + 8) = 0u;
  *(&v372[6] + 8) = 0u;
  *(&v372[7] + 8) = 0u;
  *(&v372[8] + 8) = 0u;
  *(&v372[9] + 8) = 0u;
  *(&v372[10] + 8) = 0u;
  v355 = COERCE_DOUBLE((v356 + 8));
  *&v356[0] = 0x1500000000;
  *(v356 + 8) = 0u;
  *(&v356[1] + 8) = 0u;
  *(&v356[2] + 8) = 0u;
  *(&v356[3] + 8) = 0u;
  *(&v356[4] + 8) = 0u;
  *(&v356[5] + 8) = 0u;
  *(&v356[6] + 8) = 0u;
  *(&v356[7] + 8) = 0u;
  *(&v356[8] + 8) = 0u;
  *(&v356[9] + 8) = 0u;
  *(&v356[10] + 8) = 0u;
  v413 = COERCE_DOUBLE((v414 + 8));
  *&v414[0] = 0x1500000000;
  *(v414 + 8) = 0u;
  *(&v414[1] + 8) = 0u;
  *(&v414[2] + 8) = 0u;
  *(&v414[3] + 8) = 0u;
  *(&v414[4] + 8) = 0u;
  *(&v414[5] + 8) = 0u;
  *(&v414[6] + 8) = 0u;
  *(&v414[7] + 8) = 0u;
  *(&v414[8] + 8) = 0u;
  *(&v414[9] + 8) = 0u;
  *(&v414[10] + 8) = 0u;
  v390 = &v391[8];
  *v391 = 0xD00000000;
  memset(&v391[8], 0, 112);
  v36 = v10 + *(*v10 - 24);
  v37 = *(v36 + 88);
  v38 = **(v10 + 24);
  v39 = *(v36 + 208);
  v40 = *(v36 + 216);
  v41 = *(v36 + 224);
  v42 = *(v36 + 232);
  *&__src = COERCE_DOUBLE(&v413);
  *v349 = v36 + 8;
  *&v349[8] = v37;
  *&v349[16] = v38;
  *v350 = 0x4C100000003;
  *&v350[12] = v36 + 104;
  *&v350[20] = 0;
  *&v350[28] = v36 + 152;
  *&v350[36] = v39;
  *&v350[44] = v40;
  *&v350[52] = v41;
  v351 = v42;
  v352 = xmmword_298A44280;
  v374 = &v371;
  v375 = &v355;
  v376[0] = &v392;
  memset(&v376[1], 0, 48);
  do
  {
    v43 = &v378 + v35;
    v43[32] = 0;
    *(v43 + 9) = -1;
    *(v43 + 20) = 575;
    v35 += 56;
  }

  while (v35 != 1176);
  *v368 = &v368[12];
  v368[8] = 4;
  *&v368[20] = 0;
  *&v368[12] = 0;
  bzero(*(v10 + 1904), ((4 * *(v10 + 1912) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  BlueFin::BigMatrixDim<21,21>::BigMatrixDim(&v346, 1, 12);
  v44 = v10;
  if (*(v10 + 100) < 1)
  {
    v47 = 0;
    v46 = 0;
  }

  else
  {
    LOBYTE(v45) = 0;
    v46 = 0;
    v47 = 0;
    v48 = v324;
    v49 = v328;
    do
    {
      if (!*(v48 + 44) && ((*(*v49 + 4 * (*(v48 + 40) >> 5)) >> (*(v48 + 40) & 0x1F)) & 1) != 0)
      {
        if (BlueFin::GlPeNavUtil::PackSkfMeas_PR_SignalId(v44, &v378 + 56 * v47, (v48 + 32), *(v44 + 88)) && (*(*v368 + 4 * (v47 >> 5)) |= 1 << v47, ++v47, v47 >= 0x15u))
        {
          (*(**(v331 + 2) + 16))(*(v331 + 2), &__src, &v374, &v378, v368);
          v50 = 0;
          do
          {
            v51 = *(*v393 + 8 * v50 + 8);
            v52 = *(*&v347[0] + 8);
            for (j = 8; j != 104; j += 8)
            {
              *(v52 + j) = *(v51 + j);
            }

            v54 = v331 + 24 * v46 + 128;
            *v54 = *&v371[8 * v50 + 8] - *(*&v355 + 8 * (v50 + 1));
            BlueFin::GlPePolaroid::GetPInLOS(v331, &v346, 0);
            v55 = &v378 + 7 * v50;
            *(v54 + 8) = v55[1] * v55[1];
            *(v54 + 16) = v56;
            LODWORD(v55) = *(v55 + 20);
            *(v331 + v55 + 1328) = v46;
            *(*(v331 + 238) + 4 * (v55 >> 5)) |= 1 << v55;
            ++v46;
            ++v50;
          }

          while (v50 != v47);
          bzero(*v368, ((4 * v368[8] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
          v44 = v331;
          v47 = 0;
        }

        else
        {
          v44 = v331;
        }

        v49 = v328;
      }

      v45 = (v45 + 1);
      v48 += 56;
    }

    while (v45 < *(v44 + 100));
  }

  (*(**(v331 + 2) + 16))(*(v331 + 2), &__src, &v374, &v378, v368);
  v57 = v331;
  if (v47)
  {
    for (k = 0; k != v47; ++k)
    {
      v59 = *(*v393 + 8 * k + 8);
      v60 = *(*&v347[0] + 8);
      for (m = 8; m != 104; m += 8)
      {
        *(v60 + m) = *(v59 + m);
      }

      v62 = v331 + 24 * v46 + 128;
      *v62 = *&v371[8 * k + 8] - *(*&v355 + 8 * (k + 1));
      BlueFin::GlPePolaroid::GetPInLOS(v331, &v346, 0);
      v57 = v331;
      v63 = &v378 + 7 * k;
      *(v62 + 8) = v63[1] * v63[1];
      *(v62 + 16) = v64;
      LODWORD(v63) = *(v63 + 20);
      *(v331 + v63 + 1328) = v46;
      *(*(v331 + 238) + 4 * (v63 >> 5)) |= 1 << v63;
      ++v46;
    }
  }

  memset(v332, 0, sizeof(v332));
  v65 = *(v57 + 2);
  LODWORD(v392) = 0;
  *v393 = &v393[12];
  v393[8] = 8;
  memset(&v393[12], 0, 32);
  *&v393[48] = xmmword_298A41DA0;
  v66 = vdup_n_s32(0x42C60000u);
  *&v393[64] = v66;
  *&v393[72] = 1120272384;
  BlueFin::stDops::stDops(&__src, &v392);
  v351 = v65;
  LODWORD(v374) = 0;
  v375 = (v376 + 4);
  LOBYTE(v376[0]) = 8;
  memset(v376 + 4, 0, 32);
  *&v376[5] = xmmword_298A41DA0;
  v376[7] = v66;
  v377 = 1120272384;
  v373 = 0x3FF0000000000000;
  v346 = v347 + 8;
  *&v347[0] = 0x6400000000;
  bzero(v347 + 8, 0x328uLL);
  *&v378 = &v379;
  *(&v378 + 1) = 0x6400000000;
  bzero(&v379, 0x328uLL);
  v67 = 0;
  v398 = &v413;
  v399 = &v392;
  v400 = &v390;
  v401 = 0x23F000000000008;
  v402 = 50;
  do
  {
    *&v393[2 * v67++ - 8] = -1;
  }

  while (v67 < HIWORD(v401));
  v68 = v402;
  if (v402)
  {
    v69 = 0;
    v70 = (v402 + 7) & 0x1FFF8;
    v71 = vdupq_n_s64(v402 - 1);
    v72 = xmmword_298A319A0;
    v73 = xmmword_298A319B0;
    v74 = xmmword_298A319C0;
    v75 = xmmword_298A319D0;
    v76 = v391;
    v77 = vdupq_n_s64(8uLL);
    do
    {
      v78 = vmovn_s64(vcgeq_u64(v71, v75));
      if (vuzp1_s8(vuzp1_s16(v78, *v71.i8), *v71.i8).u8[0])
      {
        *(v76 - 4) = v69;
      }

      if (vuzp1_s8(vuzp1_s16(v78, *&v71), *&v71).i8[1])
      {
        *(v76 - 3) = v69 | 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v71, vmovn_s64(vcgeq_u64(v71, *&v74))), *&v71).i8[2])
      {
        *(v76 - 2) = v69 | 2;
        *(v76 - 1) = v69 | 3;
      }

      v79 = vmovn_s64(vcgeq_u64(v71, v73));
      if (vuzp1_s8(*&v71, vuzp1_s16(v79, *&v71)).i32[1])
      {
        *v76 = v69 | 4;
      }

      if (vuzp1_s8(*&v71, vuzp1_s16(v79, *&v71)).i8[5])
      {
        v76[1] = v69 | 5;
      }

      if (vuzp1_s8(*&v71, vuzp1_s16(*&v71, vmovn_s64(vcgeq_u64(v71, *&v72)))).i8[6])
      {
        v76[2] = v69 | 6;
        v76[3] = v69 | 7;
      }

      v69 += 8;
      v73 = vaddq_s64(v73, v77);
      v74 = vaddq_s64(v74, v77);
      v75 = vaddq_s64(v75, v77);
      v72 = vaddq_s64(v72, v77);
      v76 += 8;
    }

    while (v70 != v69);
    v80 = v68 - 1;
  }

  else
  {
    v80 = -1;
  }

  v403 = v80;
  v371 = v372 + 8;
  *&v372[0] = 0x6400000000;
  bzero(v372 + 8, 0x328uLL);
  v81 = v331;
  v82 = *(*(v331 + 4) + 16);
  *v368 = &v368[12];
  v368[8] = 19;
  memset(&v368[12], 0, 32);
  v369 = 0u;
  memset(v370, 0, sizeof(v370));
  v365 = &v366[4];
  v366[0] = 8;
  *&v366[4] = 0u;
  v367 = 0u;
  v363 = (v364 + 4);
  LOBYTE(v364[0]) = 8;
  memset(v364 + 4, 0, 32);
  v361 = (v362 + 4);
  LOBYTE(v362[0]) = 8;
  memset(v362 + 4, 0, 32);
  v327 = (v331 + 8);
  if (*(v331 + 100) < 1)
  {
    v89 = 0;
    v87 = 0;
    v322 = 0;
    v112 = 0;
    v84 = 0;
    v83 = 0;
    v317 = 0.0;
    v113 = 0.0;
    v114 = 0.0;
    v110 = 0.0;
  }

  else
  {
    v316 = v82;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v322 = 0;
    LOBYTE(v86) = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v319 = 0;
    v90 = 0.0;
    v91 = (v324 + 32);
    v92 = 99.0;
    v93 = 0.0;
    v94 = v328;
    do
    {
      v95 = *(v91 + 3);
      if ((v95 | 2) != 2)
      {
        v313 = "(pMeas->eMeasType == SKF_MEAS_PR) || (pMeas->eMeasType == SKF_MEAS_RR)";
        DeviceFaultNotify("glpe_polaroid.cpp", 284, "RunMeasPreselection", "(pMeas->eMeasType == SKF_MEAS_PR) || (pMeas->eMeasType == SKF_MEAS_RR)");
        v314 = "glpe_polaroid.cpp";
        v315 = 284;
LABEL_424:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v314, v315, v313);
      }

      *&v353 = 0;
      v360 = 0.0;
      if (!v95 && ((*(*v94 + 4 * (*(v91 + 4) >> 5)) >> (*(v91 + 4) & 0x1F)) & 1) != 0)
      {
        MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*v327, v91, 0, 0);
        if (*(MeMeas + 29) >= 17.0)
        {
          v97 = MeMeas;
          v98 = *v91;
          *&v365[4 * (v98 >> 5)] |= 1 << v98;
          v99 = v331;
          v100 = 20;
          if (*(v331 + 93))
          {
            v100 = 28;
          }

          v101 = *&v97[v100] - 1;
          if (v101 <= 1)
          {
            ++v84;
            *(*v368 + 4 * (*(v91 + 4) >> 5)) |= 1 << *(v91 + 4);
            *(v361 + (v98 >> 5)) |= 1 << v98;
          }

          if (v92 > 10.0)
          {
            v102 = **(v331 + 1);
            v359 = *(v325 + *(*v331 - 24));
            v358 = **(v331 + 3);
            v357 = 0;
            BlueFin::GlPeDops::GetDops(&__src, v102);
            BlueFin::stDops::operator=(&v374, &v355);
            v99 = v331;
            LOBYTE(v98) = *v91;
          }

          LOBYTE(v355) = v98;
          HIDWORD(v355) = *(v91 + 1);
          LOWORD(v356[0]) = *(v91 + 4);
          if (BlueFin::GlPePolaroid::PolaroidInnovPR(v99, &v355, &v353, &v373, &v360, 0x32u, 0, v329 & 1, v92, v14))
          {
            v103 = *(v97 + 29);
            v92 = *(&v376[5] + 1);
            v104 = v360;
            BlueFin::SKFVector::AddLen(&v346);
            *(v346 + SLODWORD(v347[0])) = v104;
            if (v101 <= 1)
            {
              *(v363 + ((*v91 >> 3) & 0x1C)) |= 1 << *v91;
              ++v319;
            }

            v93 = v93 + v103;
            ++v85;
            if (v104 >= 15.0)
            {
              ++v87;
            }

            else
            {
              ++v88;
            }
          }

          else
          {
            BlueFin::GlSetBase::Remove(&v365, *v91);
            v105 = *(v97 + 29);
            v104 = v360;
            BlueFin::SKFVector::AddLen(&v378);
            v90 = v90 + v105;
            ++v322;
            *(v378 + 8 * SDWORD2(v378)) = v104;
            if (v101 < 2)
            {
              ++v89;
            }
          }

          ++v83;
          v106 = *&v353;
          if (*&v353 > 0.0)
          {
            v107 = BlueFin::GlBigArray::Add(&v398, *(v91 + 4));
            if (!v107)
            {
              v313 = "pdSlot";
              DeviceFaultNotify("glpe_polaroid.cpp", 347, "RunMeasPreselection", "pdSlot");
              v314 = "glpe_polaroid.cpp";
              v315 = 347;
              goto LABEL_424;
            }

            if (v104 <= 0.0)
            {
              v108 = 0.0;
              if (v104 < 0.0)
              {
                v108 = -1.0;
              }

              *v107 = v106 * v108;
            }

            else
            {
              *v107 = v106;
              v108 = 1.0;
            }

            v109 = v106 * v108;
            BlueFin::SKFVector::AddLen(&v371);
            *&v371[8 * SLODWORD(v372[0])] = v109;
          }
        }

        v81 = v331;
        v94 = v328;
      }

      v86 = (v86 + 1);
      v91 += 56;
    }

    while (v86 < *(v81 + 100));
    v110 = 0.0;
    v111 = 0.0;
    v112 = v85;
    if (v85)
    {
      v111 = v93 / v85;
    }

    v317 = v111;
    if (v322)
    {
      v110 = v90 / v322;
    }

    v113 = v319;
    v114 = v88;
    v82 = v316;
  }

  v115 = **(v81 + 1);
  *&v353 = *(v81 + *(*v81 - 24) + 88);
  LODWORD(v360) = **(v81 + 3);
  LODWORD(v359) = 0;
  v116 = v81;
  BlueFin::GlPeDops::GetDops(&__src, v115);
  BlueFin::stDops::operator=(&v374, &v355);
  v117 = **(v116 + 8);
  *&v353 = *(v116 + *(*v116 - 24) + 88);
  LODWORD(v360) = **(v116 + 24);
  LODWORD(v359) = 0;
  BlueFin::GlPeDops::GetDops(&__src, v117);
  BlueFin::stDops::operator=(&v374, &v355);
  v118 = **(v116 + 8);
  *&v353 = *(v116 + *(*v116 - 24) + 88);
  LODWORD(v360) = **(v116 + 24);
  LODWORD(v359) = 0;
  BlueFin::GlPeDops::GetDops(&__src, v118);
  BlueFin::stDops::operator=(&v374, &v355);
  v119 = *(&v376[5] + 1);
  v120 = v116 + *(*v116 - 24);
  v353 = *(v120 + 8);
  v354 = *(v120 + 24);
  BlueFin::GlPeNavUtil::ComputeRangeResidVec(v116, v368, &v353, **(v116 + 24), 0, 0, 0, 1, *(v116 + 88), 1);
  v121 = BlueFin::SKFVector::Var(&v346);
  v125 = BlueFin::SKFVector::Var(&v378);
  if (v119 <= 2.0)
  {
    BlueFin::SKFVector::Median(&v355, v122, v123, v124);
  }

  v126 = BlueFin::SKFVector::Median(&v371, v122, v123, v124);
  *&v353 = &v398;
  WORD4(v353) = v403 + 1;
  if (v402 > (v403 + 1))
  {
    v127 = v126;
    do
    {
      v128 = BlueFin::GlBigArrayIterator::Next(&v353);
      if (v128 >= 0x23Fu)
      {
        goto LABEL_420;
      }

      if ((v128 & 0x3FF) - WORD2(v401) >= HIWORD(v401))
      {
        v313 = "handle - m_usMinHandle < m_usNumHandles";
        DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
        v314 = "glinc_array.h";
        v315 = 313;
        goto LABEL_424;
      }

      v129 = *(v399 + (v128 - WORD2(v401)));
      if (v129 != 0xFFFF)
      {
        if (v402 <= v129)
        {
          v313 = "slot < m_usNumSlots";
          DeviceFaultNotify("glinc_array.h", 319, "EnsureValidSlot", "slot < m_usNumSlots");
          v314 = "glinc_array.h";
          v315 = 319;
          goto LABEL_424;
        }

        if (v398 && *(v398 + v401 * v129) < v127)
        {
          *&v332[4 * ((v128 >> 5) & 0x1F)] |= 1 << v128;
        }
      }
    }

    while (WORD4(v353) < *(v353 + 32));
  }

  if (v329)
  {
    goto LABEL_175;
  }

  v130 = 0;
  v131 = v112 > 2u && v322 > 2u;
  v132 = v131;
  v133 = v89;
  v134 = sqrt(v121);
  v135 = sqrt(v125);
  v136 = v113 / v133;
  if (!v89)
  {
    v136 = 0.0;
  }

  v137 = v135 / v134;
  if (v134 <= 0.0)
  {
    v138 = 0.0;
  }

  else
  {
    v138 = v137;
  }

  v139 = v114 / v87;
  if (!v87)
  {
    v139 = 0.0;
  }

  v140 = v317 - v110;
  if (!v132)
  {
    v140 = 0.0;
  }

  v141 = v112;
  v142 = v141 / v83;
  if (!v83)
  {
    v142 = 0.0;
  }

  v143 = v113 / v84;
  if (!v84)
  {
    v143 = 0.0;
  }

  v144 = v113 / v141;
  if (!v112)
  {
    v144 = 0.0;
  }

  v145 = 1.0;
  if ((v82 & 0xFFFFFFFE) != 2)
  {
    v145 = 0.0;
  }

  v146 = *(v331 + 56);
  v147 = &BlueFin::KF_CONF_COEFS_NAV2;
  v148 = &BlueFin::KF_CONF_COEFS_SPIDER;
  do
  {
    if (v146)
    {
      v149 = v148;
    }

    else
    {
      v149 = v147;
    }

    *&v393[v130 - 8] = ((((((((((((*v149 + (v149[1] * 0.0)) + (v149[2] * v145)) + (v149[3] * v141)) + (v149[4] * v113)) + (v149[5] * v133)) + (v149[6] * v136)) + (v149[7] * v138)) + (v149[8] * v139)) + (v149[9] * v140)) + (v149[10] * (v112 - v322))) + (v149[11] * v142)) + (v149[12] * v144)) + (v149[13] * v143);
    v130 += 4;
    v147 += 14;
    v148 += 14;
  }

  while (v130 != 12);
  if (*&v392 < *(&v392 + 1) || *&v392 < *v393)
  {
    v152 = *(v331 + 125);
    LOBYTE(v151) = *(v331 + 124) + 1;
    if (*v393 < *(&v392 + 1) || *v393 <= *&v392)
    {
      LOBYTE(v150) = v152 - 1;
    }

    else
    {
      LOBYTE(v150) = v152 + 1;
    }
  }

  else
  {
    LOBYTE(v150) = *(v331 + 125) - 1;
    LOBYTE(v151) = *(v331 + 124) - 1;
  }

  v150 = v150;
  v153 = v150 & ~(v150 >> 31);
  v151 = v151;
  if (v153 >= 10)
  {
    LOBYTE(v153) = 10;
  }

  *(v331 + 125) = v153;
  if ((v151 & ~(v151 >> 31)) >= 10)
  {
    v154 = 10;
  }

  else
  {
    v154 = v151 & ~(v151 >> 31);
  }

  *(v331 + 124) = v154;
  v155 = *(v331 + 30);
  if (v155 == 1)
  {
    v157 = v151 <= 0;
    goto LABEL_169;
  }

  if (v155 != 2)
  {
    v157 = v151 <= 2;
LABEL_169:
    v156 = !v157;
    if (v150 > 2)
    {
      v156 = 2;
    }

    goto LABEL_174;
  }

  if (v150 < 1)
  {
    v156 = 1;
  }

  else
  {
    v156 = 2;
  }

LABEL_174:
  *(v331 + 30) = v156;
LABEL_175:
  v390 = &v391[4];
  v391[0] = 19;
  memset(&v391[4], 0, 76);
  v371 = v372 + 4;
  LOBYTE(v372[0]) = 8;
  *(v372 + 4) = 0u;
  *(&v372[1] + 4) = 0u;
  v355 = 0.0;
  v413 = 1.0;
  *&__src = 0.0;
  v158 = *(v331 + 2);
  LODWORD(v346) = 0;
  *&v347[0] = v347 + 12;
  BYTE8(v347[0]) = 8;
  memset(v347 + 12, 0, 32);
  v347[3] = xmmword_298A41DA0;
  v159 = vdup_n_s32(0x42C60000u);
  *&v347[4] = v159;
  DWORD2(v347[4]) = 1120272384;
  BlueFin::stDops::stDops(&v392, &v346);
  v160 = v331;
  v394 = v158;
  LODWORD(v346) = 0;
  *&v347[0] = v347 + 12;
  BYTE8(v347[0]) = 8;
  memset(v347 + 12, 0, 32);
  v347[3] = xmmword_298A41DA0;
  *&v347[4] = v159;
  DWORD2(v347[4]) = 1120272384;
  v161 = 99.0;
  v162 = 1;
  LOBYTE(v163) = *(v331 + 100);
  v164 = v328;
  do
  {
    v165 = v162;
    if (v163 >= 1)
    {
      LOBYTE(v166) = 0;
      v167 = v324;
      do
      {
        v168 = *(v167 + 44);
        if ((v168 | 2) != 2)
        {
          v313 = "(pMeas->eMeasType == SKF_MEAS_PR) || (pMeas->eMeasType == SKF_MEAS_RR)";
          DeviceFaultNotify("glpe_polaroid.cpp", 424, "RunMeasSelectionPR", "(pMeas->eMeasType == SKF_MEAS_PR) || (pMeas->eMeasType == SKF_MEAS_RR)");
          v314 = "glpe_polaroid.cpp";
          v315 = 424;
          goto LABEL_424;
        }

        v169 = 1 << (*(v167 + 40) & 0x1F);
        if (v165)
        {
          if (!v168 && (v169 & *&v332[4 * (*(v167 + 40) >> 5)]) != 0)
          {
            goto LABEL_185;
          }
        }

        else if (!v168 && (v169 & *&v332[4 * (*(v167 + 40) >> 5)]) == 0)
        {
LABEL_185:
          if ((v169 & *(*v164 + (*(v167 + 40) >> 5))) != 0)
          {
            v170 = 0;
            LOBYTE(v378) = *(v167 + 32);
            DWORD1(v378) = *(v167 + 36);
            WORD4(v378) = *(v167 + 40);
            v171 = &v343[4 * v344 - 4];
            do
            {
              if (*v171)
              {
                v172 = *v171 - (((*v171 >> 1) & 0x5B6DB6DB) + ((*v171 >> 2) & 0x9249249));
                v170 = ((v172 + (v172 >> 3)) & 0xC71C71C7) + v170 - 63 * (((v172 + (v172 >> 3)) & 0xC71C71C7) / 0x3F);
              }

              --v171;
            }

            while (v171 >= v343);
            if (v170 <= v112)
            {
              v173 = v112;
            }

            else
            {
              v173 = v170;
            }

            v174 = v160;
            if (BlueFin::GlPePolaroid::PolaroidInnovPR(v160, &v378, &v355, &v413, &__src, v173, *(v160 + 120), v329 & 1, v161, v14))
            {
              *&v371[(*(v167 + 32) >> 3) & 0x1C] |= 1 << *(v167 + 32);
              v160 = v174;
              if (v355 > v413 && !(v329 & 1 | (*(v174 + 120) == 2)) && (*(v174 + 96) > 0xFu || *(*(v174 + 48) + 24) < 20.0 || *&__src > 0.0))
              {
                v175 = exp(v355 / v413);
                v160 = v331;
                *(v167 + 8) = fmin(sqrt(v175), 10000.0) * *(v167 + 8);
              }

              *&v343[4 * (*(v167 + 40) >> 5)] |= 1 << *(v167 + 40);
              if (v161 > 10.0)
              {
                v181 = **(v160 + 8);
                v374 = *(v325 + *(*v160 - 24));
                *v368 = **(v160 + 24);
                LODWORD(v365) = 0;
                BlueFin::GlPeDops::GetDops(&v392, v181);
                BlueFin::stDops::operator=(&v346, &v378);
                v160 = v331;
              }

              v161 = *(&v347[3] + 1);
              v177 = __src;
            }

            else
            {
              v176 = *(v167 + 40);
              *&v337[4 * (v176 >> 5)] |= 1 << *(v167 + 40);
              v177 = __src;
              if (*&__src >= 0.0)
              {
                v178 = *&__src;
              }

              else
              {
                v178 = -*&__src;
              }

              v179 = *(*(v174 + 48) + 24);
              v180 = v178 < v179 && v355 < 3.0;
              v160 = v174;
              if (v180 && *(*(v174 + 32) + 8) == 1 || v179 > 20.0 && *(*(v174 + 32) + 8) == 2)
              {
                BlueFin::GlSetBase::Remove(&v337, v176);
                v160 = v331;
              }
            }

            v164 = v328;
            if (*&v177 < 0.0)
            {
              *&v390[4 * (*(v167 + 40) >> 5)] |= 1 << *(v167 + 40);
            }
          }
        }

        v167 += 56;
        v166 = (v166 + 1);
        v163 = *(v160 + 100);
      }

      while (v166 < v163);
    }

    v162 = 0;
  }

  while ((v165 & 1) != 0);
  BlueFin::GlSetBase::GlSetBase(&v346, v347 + 1, 0x13u, v164);
  v392 = COERCE_DOUBLE(&v393[4]);
  v393[0] = 19;
  memset(&v393[4], 0, 76);
  BlueFin::GlSetBase::OperatorBinaryXor(&v346, &v392, v323);
  BlueFin::GlSetBase::operator=(&v346, &v392);
  *(&v347[1] + 4) = *&v393[20];
  *(&v347[2] + 4) = *&v393[36];
  *(&v347[3] + 4) = *&v393[52];
  v347[4] = *&v393[64];
  *(v347 + 4) = *&v393[4];
  BlueFin::GlSetBase::GlSetBase(&__src, &v349[4], 0x13u, &v346);
  v392 = COERCE_DOUBLE(&v393[4]);
  v393[0] = 19;
  memset(&v393[4], 0, 76);
  BlueFin::GlSetBase::OperatorBinaryAnd(&__src, &v392, v323);
  BlueFin::GlSetBase::operator=(&__src, &v392);
  *v350 = *&v393[20];
  *&v350[16] = *&v393[36];
  *&v350[32] = *&v393[52];
  *&v350[44] = *&v393[64];
  *&v349[4] = *&v393[4];
  LOBYTE(v392) = v349[0];
  memcpy(v393, __src, 4 * v349[0]);
  WORD1(v392) = 0;
  BYTE1(v392) = 0;
  HIDWORD(v392) = *v393;
  BlueFin::GlSetIterator::operator++(&v392);
  if (BYTE1(v392) != LOBYTE(v392))
  {
    while (1)
    {
      v182 = WORD1(v392);
      if (WORD1(v392) >= 0x23FuLL)
      {
        break;
      }

      v183 = *v327;
      v184 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v392);
      v185 = *v184;
      LODWORD(v184) = v184[1];
      LOBYTE(v346) = v185;
      HIDWORD(v346) = v184;
      LOWORD(v347[0]) = WORD1(v392);
      v186 = BlueFin::GlSignalIdArray::Get(v183[2349], &v346);
      if (v186 && *(v186 + 272) == 15)
      {
        *&v337[(v182 >> 3) & 0x1FFC] |= 1 << v182;
      }

      BlueFin::GlSetIterator::operator++(&v392);
      if (BYTE1(v392) == LOBYTE(v392))
      {
        goto LABEL_225;
      }
    }

LABEL_420:
    v313 = "usIndex < NUM_SIGNAL_IDS";
    DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
    v314 = "glsignalid.h";
    v315 = 578;
    goto LABEL_424;
  }

LABEL_225:
  v187 = v331;
  v188 = *(v331 + 8);
  if (v188)
  {
    v200 = BlueFin::GlSetBase::Cnt((v188 + 440)) == 0;
    v187 = v331;
    v189 = v200;
  }

  else
  {
    v189 = 1;
  }

  v330 = v189;
  v190 = v323;
  v191 = *(*(v187 + 4) + 16);
  v371 = v372 + 4;
  LOBYTE(v372[0]) = 19;
  *(v372 + 4) = 0u;
  *(&v372[1] + 4) = 0u;
  *(&v372[2] + 4) = 0u;
  *(&v372[3] + 4) = 0u;
  v372[4] = 0u;
  v355 = COERCE_DOUBLE((v356 + 4));
  LOBYTE(v356[0]) = 19;
  *(v356 + 4) = 0u;
  *(&v356[1] + 4) = 0u;
  *(&v356[2] + 4) = 0u;
  *(&v356[3] + 4) = 0u;
  v356[4] = 0u;
  v413 = COERCE_DOUBLE((v414 + 4));
  LOBYTE(v414[0]) = 19;
  *(v414 + 4) = 0u;
  *(&v414[1] + 4) = 0u;
  *(&v414[2] + 4) = 0u;
  *(&v414[3] + 4) = 0u;
  v414[4] = 0u;
  v192 = *(v187 + 100);
  if (v192 >= 1)
  {
    LOBYTE(v193) = 0;
    v326 = v191 & 0xFFFFFFFE;
    v320 = v187 + 2001;
    v321 = (v187 + 1992);
    v318 = (v187 + 2008);
    v194 = v324;
    while (1)
    {
      v195 = *(v194 + 44);
      if ((v195 & 0xFFFFFFFD) != 0)
      {
        v313 = "(pMeas->eMeasType == SKF_MEAS_PR) || (pMeas->eMeasType == SKF_MEAS_RR)";
        DeviceFaultNotify("glpe_polaroid.cpp", 488, "RunMeasSelectionRR", "(pMeas->eMeasType == SKF_MEAS_PR) || (pMeas->eMeasType == SKF_MEAS_RR)");
        v314 = "glpe_polaroid.cpp";
        v315 = 488;
        goto LABEL_424;
      }

      v196 = *(v194 + 40);
      if (v195 == 2)
      {
        v197 = *(v194 + 40) >> 5;
        v198 = 1 << (v196 & 0x1F);
        v199 = (v198 & *(*v190 + 4 * (v196 >> 5))) == 0;
      }

      else
      {
        v197 = *(v194 + 40) >> 5;
        v199 = 1;
        v198 = 1 << (v196 & 0x1F);
      }

      v200 = (v198 & *&v337[4 * v197]) != 0 && v326 == 2;
      v201 = v200 && *(v187 + 24) > 0xFu;
      if (v330)
      {
        v202 = BlueFin::GlSetBase::Cnt(v190);
        v190 = v323;
        v131 = v202 > 0xB;
        v187 = v331;
        v203 = v131;
      }

      else
      {
        v203 = 0;
      }

      if (!v199 && !v201)
      {
        break;
      }

LABEL_327:
      v194 += 56;
      v193 = (v193 + 1);
      if (v193 >= v192)
      {
        goto LABEL_328;
      }
    }

    v204 = v203;
    *&v371[4 * (v196 >> 5)] |= 1 << v196;
    v205 = v190;
    BlueFin::GlSetBase::GlSetBase(&v346, v347 + 1, 0x13u, v190);
    BlueFin::GlSetBase::operator=(&v413, v205);
    v206 = *(v205 + 28);
    v207 = *(v205 + 60);
    *(&v414[2] + 4) = *(v205 + 44);
    *(&v414[3] + 4) = v207;
    v414[4] = *(v205 + 72);
    *(v414 + 4) = *(v205 + 12);
    *(&v414[1] + 4) = v206;
    BlueFin::GlSetBase::Remove(&v413, *(v194 + 40));
    v208 = 0;
    v209 = (*&v413 + 4 * LOBYTE(v414[0]) - 4);
    do
    {
      if (*v209)
      {
        v210 = *v209 - (((*v209 >> 2) & 0x9249249) + ((*v209 >> 1) & 0x5B6DB6DB));
        v208 = ((v210 + (v210 >> 3)) & 0xC71C71C7) + v208 - 63 * (((v210 + (v210 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v209;
    }

    while (v209 >= *&v413);
    v211 = -1.0;
    v212 = v331;
    if (v208 >= 3u && ((*(v331 + 90) & 1) != 0 || (*(v331 + 92) & 1) != 0 || *(v331 + 24) <= 0xFu))
    {
      v213 = v331 + *(*v331 - 24);
      v378 = *(v213 + 8);
      v379 = *(v213 + 3);
      BlueFin::GlPeNavUtil::ComputeRrateResidVec(v331, &v413);
      v217 = *v393;
      if (*v393 >= 1)
      {
        v218 = (*&v392 + 8);
        do
        {
          *v218 = fabs(*v218);
          ++v218;
          --v217;
        }

        while (v217);
      }

      v211 = BlueFin::SKFVector::Median(&v392, v214, v215, v216);
      v212 = v331;
    }

    LOBYTE(v374) = *(v194 + 32);
    HIDWORD(v374) = *(v194 + 36);
    LOWORD(v375) = *(v194 + 40);
    *v393 = 0;
    v392 = 0.0;
    *&v393[8] = 0;
    LOBYTE(v378) = v374;
    DWORD1(v378) = *(v194 + 36);
    WORD4(v378) = *(v194 + 40);
    if (!BlueFin::GlPePolaroid::GetMetrics(v212, &v392, &v378, 1))
    {
      goto LABEL_319;
    }

    v219 = BlueFin::GlPeMsmtMgr::GetMeMeas(*v327, &v374, 0, 0);
    *&v220 = v392;
    v221 = v331;
    if (*(v219 + 8) != 3)
    {
      v222 = v392 * v392;
      v223 = *(v331 + 2000);
      *(v321 + v223) = *(v321 + v223) + v222;
      ++v320[v223];
      *v318 = vaddq_f64(*v393, *v318);
    }

    v224 = *&v220;
    if (v330)
    {
      v225 = *(v331 + 6);
      v226 = 0.0;
      if (*(v225 + 1356) == 1)
      {
        v226 = *(v225 + 1336);
      }

      v224 = *&v220 - v226;
    }

    v227 = sqrt(*&v393[8] + *v393);
    if (v224 / v227 >= 0.0)
    {
      v228 = v224 / v227;
    }

    else
    {
      v228 = -(v224 / v227);
    }

    v229 = *(v331 + 4);
    v230 = *(v229 + 8);
    v231 = BlueFin::GlPePolaroid::Design::RR_THRESH[v230];
    v232 = *(v229 + 16);
    if (v232 != 1)
    {
      if ((v230 - 3) > 2)
      {
        if (v230 != 6)
        {
          goto LABEL_278;
        }

        v233 = 1.67;
      }

      else
      {
        v233 = 1.33;
        if (v232 != 9)
        {
          v233 = 2.0;
        }
      }

      v231 = v231 / v233;
    }

LABEL_278:
    if (v224 < 0.0)
    {
      v224 = -v224;
    }

    if (v224 <= v211 * 3.0)
    {
      v234 = 1;
    }

    else
    {
      v234 = v224 <= 5.0 && *(v331 + 24) < 0x10u;
    }

    if (v230 == 1 && (*(v331 + 56) & 1) != 0)
    {
      v231 = v231 * 0.5;
      if (v232 == 9 && (*(*(v331 + 6) + 32) + *(*(v331 + 6) + 32)) / v227 >= v231)
      {
        v231 = (*(*(v331 + 6) + 32) + *(*(v331 + 6) + 32)) / v227;
      }

      goto LABEL_304;
    }

    if (v211 > 0.0)
    {
      if (*(v331 + 90) & 1) != 0 || (*(v331 + 92))
      {
        if (v234)
        {
          goto LABEL_295;
        }
      }

      else if (*(v331 + 24) > 0xFu || v234)
      {
        goto LABEL_295;
      }

      v231 = 0.0;
      goto LABEL_304;
    }

LABEL_295:
    v235 = BlueFin::GlPeMsmtMgr::GetMeMeas(*(v331 + 1), &v374, 0, 0);
    v236 = 20;
    if (*(v331 + 93))
    {
      v236 = 28;
    }

    v237 = *&v235[v236];
    if ((v237 - 1) > 1)
    {
      if (v237 == 4)
      {
        v228 = v228 + v228;
      }
    }

    else
    {
      v228 = v228 * 0.5;
    }

    v221 = v331;
LABEL_304:
    if (fabs(*&v220) > 0.200000003 && v204)
    {
      v239 = *(v221 + 6);
      v240 = *(v239 + 80);
      v241 = *(v239 + 64);
      v242 = (v240 - v241) * 0.75;
      v243 = v242;
      v244 = v241 - v243 > *&v220;
      if (v240 + v243 < *&v220)
      {
        v244 = 1;
      }

      if (v240 <= v241)
      {
        v244 = 0;
      }
    }

    else
    {
      v244 = 0;
    }

    v245 = *(v221 + 90) == 1 && *(*(v221 + 6) + 32) > v227 * 3.0;
    if (v228 <= v231 && !v244 || v245)
    {
      if (v228 >= v231 * 0.6)
      {
        v187 = v331;
        v246 = &v355;
        if (!*(v331 + 56))
        {
          v246 = &v340;
        }

        v190 = v323;
      }

      else
      {
        v246 = &v340;
        v190 = v323;
        v187 = v331;
      }

      *(*v246 + 4 * (*(v194 + 40) >> 5)) |= 1 << *(v194 + 40);
      goto LABEL_326;
    }

LABEL_319:
    v190 = v323;
    v187 = v331;
LABEL_326:
    LOBYTE(v192) = *(v187 + 100);
    goto LABEL_327;
  }

LABEL_328:
  if ((v330 & 1) != 0 && (v247 = *(v187 + 252), v247 > 0.000001) && *(v187 + 2001) && *(v187 + 2002) && *(v187 + 2002) + *(v187 + 2001) >= 8)
  {
    v248 = sqrt(fabs(((*(v187 + 498) + 0.0 + *(v187 + 499)) * 0.5 - *(v187 + 251)) / v247)) * 0.6 + *(v187 + 253) * 0.4;
  }

  else
  {
    v248 = *(v187 + 253) * 0.7 + 0.3;
  }

  *(v187 + 253) = v248;
  v249 = 0;
  v250 = *(v187 + 2000);
  if (v250 == 1)
  {
    v251 = 0;
  }

  else
  {
    v251 = v250 + 1;
  }

  *(v187 + 2000) = v251;
  *(v187 + v251 + 2001) = 0;
  *(v187 + v251 + 498) = 0;
  *(v187 + 2008) = 0u;
  v252 = v340;
  v253 = &v340[4 * v341 - 4];
  do
  {
    if (*v253)
    {
      v254 = *v253 - (((*v253 >> 1) & 0x5B6DB6DB) + ((*v253 >> 2) & 0x9249249));
      v249 = ((v254 + (v254 >> 3)) & 0xC71C71C7) + v249 - 63 * (((v254 + (v254 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    v253 -= 4;
  }

  while (v253 >= v340);
  if (v249 > 4u)
  {
    v260 = 0;
    v261 = (*&v355 + 4 * LOBYTE(v356[0]) - 4);
    do
    {
      if (*v261)
      {
        v262 = *v261 - (((*v261 >> 2) & 0x9249249) + ((*v261 >> 1) & 0x5B6DB6DB));
        v260 = ((v262 + (v262 >> 3)) & 0xC71C71C7) + v260 - 63 * (((v262 + (v262 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v261;
    }

    while (v261 >= *&v355);
    if (v249 <= 0xFu && v260)
    {
      v263 = v187 + *(*v187 - 24);
      v264 = *(v263 + 11);
      v265 = **(v187 + 3);
      v365 = v263 + 8;
      *v366 = v264;
      v366[12] = 15;
      *&v366[8] = v265;
      *&v366[16] = 21;
      *&v393[24] = vdupq_n_s64(0x4079000000000000uLL);
      *&v393[40] = 0x4079000000000000;
      *&v393[56] = 0x6400000000;
      v266 = v187;
      bzero(&v393[64], 0x328uLL);
      *&v393[48] = &v393[64];
      v396 = 0x6400000000;
      bzero(v397, 0x328uLL);
      v395 = v397;
      v405 = 0;
      v406 = v408;
      v407 = 8;
      memset(v408, 0, 32);
      v409 = xmmword_298A41DA0;
      v410 = vdup_n_s32(0x42C60000u);
      v411 = 1120272384;
      *&v393[8] = 0;
      v392 = 0.0;
      *v393 = 0;
      *&v393[16] = *(v263 + 19);
      v267 = *(v266 + 8);
      v404 = **(v266 + 1);
      *v368 = v267;
      memset(&v368[16], 0, 24);
      if (BlueFin::GlPeLsq::LsVelDeals(v368, &v365, &v340, &v392))
      {
        v268 = *(*(v266 + 6) + 32);
        if (v268 < 0.58)
        {
          v268 = 0.58;
        }

        v269 = *(v266 + 100);
        v187 = v266;
        if (v269 >= 1)
        {
          LOBYTE(v270) = 0;
          v271 = fminf(v268, 1.74);
          v272 = v324;
          do
          {
            if (*(v272 + 44) == 2)
            {
              v273 = 1 << (*(v272 + 40) & 0x1F);
              if ((v273 & *(*&v355 + 4 * (*(v272 + 40) >> 5))) != 0 && (v273 & *&v340[4 * (*(v272 + 40) >> 5)]) == 0)
              {
                v363 = &v364[1];
                v364[0] = 0x100000000;
                v364[1] = 0;
                v364[2] = 0;
                v361 = &v362[1];
                v362[0] = 0x100000000;
                v362[1] = 0;
                v362[2] = 0;
                v346 = v347 + 8;
                *&v347[0] = 0xC00000000;
                memset(v347 + 8, 0, 104);
                v274 = v187 + *(*v187 - 24);
                v275 = *(v274 + 11);
                v277 = v187 + 16;
                v276 = *(v187 + 2);
                v278 = **(v277 + 1);
                v279 = *(v274 + 52);
                v280 = *(v274 + 54);
                v281 = *(v274 + 56);
                v282 = *(v274 + 58);
                *&v378 = &v346;
                *(&v378 + 1) = v274 + 8;
                v379 = v275;
                v380 = v278;
                v381 = 0x4C100000003;
                v382 = &v392;
                v383 = 0;
                v384 = &v393[16];
                v385 = v279;
                v386 = v280;
                v387 = v281;
                v388 = v282;
                v389 = xmmword_298A44280;
                v374 = &v363;
                v375 = &v361;
                memset(v376, 0, 56);
                (*(*v276 + 16))(v276, &v378, &v374, v272, &BlueFin::GlSet128::BIT0);
                v283 = v363[1] - v361[1];
                if (v283 < 0.0)
                {
                  v283 = -v283;
                }

                v284 = v283;
                if (v271 > v284)
                {
                  *&v340[4 * (*(v272 + 40) >> 5)] |= 1 << *(v272 + 40);
                }

                v187 = v331;
                LOBYTE(v269) = *(v331 + 100);
              }
            }

            v272 += 56;
            v270 = (v270 + 1);
          }

          while (v270 < v269);
        }
      }

      else
      {
        v285 = *(v266 + 100);
        v187 = v266;
        if (v285 >= 1)
        {
          v286 = v355;
          v287 = v340;
          v288 = (v324 + 44);
          do
          {
            if (*v288 == 2)
            {
              v289 = 1 << (*(v288 - 1) & 0x1F);
              if ((v289 & *(*&v286 + 4 * (*(v288 - 2) >> 5))) != 0)
              {
                v290 = *(v288 - 2) >> 5;
                if ((v289 & *&v287[4 * v290]) == 0)
                {
                  *&v287[4 * v290] |= 1 << (*(v288 - 1) & 0x1F);
                }
              }
            }

            v288 += 14;
            --v285;
          }

          while (v285);
        }
      }
    }
  }

  else
  {
    v255 = v192;
    if (v192 >= 1)
    {
      v256 = v355;
      v257 = (v324 + 44);
      do
      {
        if (*v257 == 2)
        {
          v258 = 1 << (*(v257 - 1) & 0x1F);
          if ((v258 & *(*&v256 + 4 * (*(v257 - 2) >> 5))) != 0)
          {
            v259 = *(v257 - 2) >> 5;
            if ((v258 & *&v252[4 * v259]) == 0)
            {
              *&v252[4 * v259] |= 1 << (*(v257 - 1) & 0x1F);
            }
          }
        }

        v257 += 14;
        --v255;
      }

      while (v255);
    }
  }

  if (*(v187 + 126) == 1)
  {
    BlueFin::GlSignalIdSet::GetSvIdSet(&v346, &v335);
    BlueFin::GlPeNavUtil::ComputeDops(v331);
    v291 = 6.0 - *&v393[52];
    if (*&v393[52] < 1.0)
    {
      v291 = 5.0;
    }

    if (*&v393[52] <= 5.0)
    {
      v292 = v291;
    }

    else
    {
      v292 = 1.0;
    }

    BlueFin::GlSignalIdSet::GetSvIdSet(&v346, &v333);
    BlueFin::GlPeNavUtil::ComputeDops(v331);
    v187 = v331;
    v293.n128_u32[0] = *&v393[52];
    v294.n128_f32[0] = (5.0 - *&v393[52]) * 0.5;
    if (*&v393[52] < 1.0)
    {
      v294.n128_f32[0] = 3.0;
    }

    if (*&v393[52] <= 5.0)
    {
      v295 = v294.n128_f32[0];
    }

    else
    {
      v295 = 1.0;
    }

    v296 = *(v331 + 100);
    if (v296 >= 1)
    {
      v297 = 0;
      do
      {
        v298 = v324 + 56 * v297;
        if (*(v298 + 36) == 2)
        {
          v299 = 0.5;
        }

        else
        {
          v299 = 1.0;
        }

        v300 = *(v298 + 44);
        if (v300 == 2)
        {
          v310 = 1 << (*(v298 + 40) & 0x1F);
          if ((v310 & v333[*(v298 + 40) >> 5]) == 0 && (v310 & *&v340[4 * (*(v298 + 40) >> 5)]) != 0)
          {
            v294.n128_u64[0] = *(v298 + 8);
            v293.n128_f64[0] = v294.n128_f64[0] * fmaxf(v295 * v299, 1.0);
            *(v298 + 8) = v293.n128_u64[0];
          }
        }

        else if (!v300)
        {
          v301 = 1 << (*(v298 + 40) & 0x1F);
          if ((v301 & v335[*(v298 + 40) >> 5]) == 0)
          {
            v302 = *(v298 + 40) >> 5;
            if ((v301 & *&v390[4 * v302]) == 0 && (v301 & *&v343[4 * v302]) != 0)
            {
              v303 = (*(**(v187 + 2) + 64))(*(v187 + 2), v298 + 32, v293, v294);
              if (v303)
              {
                v304 = v303;
                BlueFin::GlSignalIdSet::GetSvIdSet(&v346, &v343);
                BlueFin::GlSetBase::Remove(&v346, *(v298 + 32));
                LOBYTE(v392) = v347[0];
                memcpy(v393, v346, 4 * LOBYTE(v347[0]));
                WORD1(v392) = 0;
                BYTE1(v392) = 0;
                HIDWORD(v392) = *v393;
                BlueFin::GlSetIterator::operator++(&v392);
                v293.n128_u32[0] = 1.0;
                v187 = v331;
                if (BYTE1(v392) != LOBYTE(v392))
                {
                  v305 = 0;
                  do
                  {
                    v306 = *(v187 + 2);
                    LOBYTE(v378) = BYTE2(v392);
                    v307 = (*(*v306 + 64))(v306, &v378, v293);
                    if (v307)
                    {
                      v308 = *(v304 + 8) - *(v307 + 8);
                      if (v308 < 0.0)
                      {
                        v308 = -v308;
                      }

                      if (v308 < 15.0)
                      {
                        v309 = *(v304 + 4) - *(v307 + 4);
                        if (v309 < 0.0)
                        {
                          v309 = -v309;
                        }

                        if (v309 < 15.0)
                        {
                          ++v305;
                        }
                      }
                    }

                    BlueFin::GlSetIterator::operator++(&v392);
                    v187 = v331;
                  }

                  while (BYTE1(v392) != LOBYTE(v392));
                  v293.n128_f32[0] = (v305 + 1);
                }
              }

              else
              {
                v293.n128_u32[0] = 1.0;
                v187 = v331;
              }

              v294.n128_u64[0] = *(v298 + 8);
              v293.n128_f64[0] = v294.n128_f64[0] * fmaxf(v299 * (v292 * v293.n128_f32[0]), 1.0);
              *(v298 + 8) = v293.n128_u64[0];
              LOBYTE(v296) = *(v187 + 100);
            }
          }
        }

        ++v297;
      }

      while (v297 < v296);
    }
  }

  v311 = v187;
  BlueFin::GlSetBase::operator&=(v328, &v343);
  BlueFin::GlSetBase::operator&=(v323, &v340);
  return *(v311 + 100);
}

uint64_t BlueFin::GlMeFrameMgr::SendSubFrame(BlueFin::GlMeFrameMgr *this, BlueFin::GlBitBuffer *a2)
{
  if (*this != 1)
  {
    DeviceFaultNotify("glme_framemgr.h", 532, "GetSynced", "SYNCED == m_utStateMem.ucState");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_framemgr.h", 532, "SYNCED == m_utStateMem.ucState");
  }

  v2 = a2;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v71 = &unk_2A1F09388;
  v72 = 0;
  v73 = -1;
  memset(v74, 0, sizeof(v74));
  *(a2 + 3) = *(a2 + 7);
  *(a2 + 40) = 0;
  v8 = 1;
  do
  {
    v9 = v2;
    v10 = BlueFin::GlBitBuffer::GetU(v2, 0x20u);
    v11 = v10;
    if (v10 == -1951547170 || v10 == 1269678302)
    {
      v8 = 0;
    }

    else
    {
      if (!BlueFin::GlMeFrameMgr::TestOverlapBits(v10, v3, v6, v7))
      {
LABEL_38:
        v8 = 0;
        LOBYTE(v11) = -34;
        v13 = -1951547170;
        goto LABEL_39;
      }

      if ((v6 & 3) == v11 >> 30)
      {
        v11 = v11;
      }

      else
      {
        v11 = ~v11;
      }

      if (((v3 & 7) != 1 || (v11 & 3) != 0) && (v3 != 2 || v11 >> 30))
      {
        v17 = (v3 & 7) != 1 || (v11 & 3) == 0;
        v18 = v3 != 2 || (v11 & 0xC0000000) == 0;
        if (v18 && v17)
        {
          goto LABEL_9;
        }

        if (v8)
        {
          goto LABEL_38;
        }

        v11 = ~v11;
      }

      v8 = 1;
    }

LABEL_9:
    if (v11 == -1951547170 || v11 == 1269678302)
    {
      v13 = v11;
    }

    else
    {
      if (BlueFin::GPSFrameMgrUtils::Parity(v11))
      {
        v15 = 0;
      }

      else
      {
        v15 = 0x80000000;
      }

      v13 = v15 & 0xC0000000 | (v11 ^ ((2 * v11) >> 31)) & 0x3FFFFFFF;
    }

LABEL_39:
    v7 = v13 >> 30 == 0;
    v74[0].i32[v3 + 1] = v13;
    v4 |= (v13 & 0x80000000) == 0;
    if (v13 >> 30 == 2)
    {
      ++v5;
    }

    ++v3;
    v6 = v11;
    v2 = v9;
  }

  while (v3 != 10);
  v19 = *(this + 1);
  if (*(this + 1))
  {
    v20 = 0;
  }

  else
  {
    v21 = 0;
    do
    {
      v20 = (v74[0].i32[v21 + 3] & 0xFFC00000) == 583008256;
      v22 = (v74[0].i32[v21 + 3] & 0xFFC00000) == 0x22C00000 || v21 == 7;
      ++v21;
    }

    while (!v22);
  }

  v23 = *(this + 3);
  v24 = v5;
  v25 = xmmword_298A3A3A0;
  v26 = xmmword_298A397C0;
  v27 = vdupq_n_s32(v23);
  v28 = 8;
  v29.i64[0] = 0xF0000000FLL;
  v29.i64[1] = 0xF0000000FLL;
  v30.i64[0] = 0x100000001;
  v30.i64[1] = 0x100000001;
  v31.i64[0] = 0x400000004;
  v31.i64[1] = 0x400000004;
  do
  {
    v32 = vshlq_u32(v27, vnegq_s32(vshlq_n_s32(v26, 2uLL)));
    v24 = vaddq_s32(vqsubq_u32(vandq_s8(v32, v29), v30), v24);
    v25 = vsubq_s32(v25, vtstq_s32(v32, v29));
    v26 = vaddq_s32(v26, v31);
    v28 -= 4;
  }

  while (v28);
  v33 = vaddvq_s32(v25);
  v34 = vaddvq_s32(v24);
  *(this + 3) = (v5 + 1) | (16 * v23);
  if (!v19 && (v33 >= 3 ? (v35 = 9 * v33 >= v34) : (v35 = 1), !v35) || (v19 == 1 ? (v36 = 10 * v33 >= v34) : (v36 = 1), !v36 ? (v37 = 1) : (v37 = v20), v37 == 1))
  {
    *(this + 412) = 0xFFFF0000FFFFLL;
    *(this + 87) = 0;
    *(this + 424) = 0u;
    *(this + 440) = 0u;
    *(this + 456) = 0u;
    *(this + 472) = 0u;
    *(this + 488) = 0u;
    *(this + 504) = 0u;
    *(this + 520) = 0u;
    *(this + 536) = 0u;
    *(this + 552) = 0u;
    *(this + 568) = 0u;
    *(this + 584) = 0u;
    *(this + 600) = 0u;
    *(this + 616) = 0u;
    *(this + 632) = 0u;
    *(this + 648) = 0u;
    *(this + 664) = 0u;
    *(this + 680) = 0u;
    *&v38 = 0xF0F0F0F0F0F0F0F0;
    *(&v38 + 1) = 0xF0F0F0F0F0F0F0F0;
    *(this + 48) = v38;
    *(this + 49) = v38;
    *(this + 46) = v38;
    *(this + 47) = v38;
    *(this + 44) = v38;
    *(this + 45) = v38;
    BlueFin::GlMeFrameMgr::SetState(this, 0);
    return 0;
  }

  if (v4)
  {
    LOBYTE(v72) = *(this + 408);
    v40 = *(this + 12);
    v41 = *(this + 14);
    v74[0].i32[0] = 6 * v40;
    v74[2].i32[3] = v41;
    HIBYTE(v72) = (v40 + 4) % 5u + 1;
    v42 = v74[0].u32[1];
    if (!(v74[0].i32[1] >> 30))
    {
      *(this + 19) = v74[0].i32[1];
      v43 = 10;
      goto LABEL_73;
    }

    v44 = *(this + 7);
    if (v44)
    {
      v42 = *(this + 19);
      v74[0].i32[1] = v42;
      v43 = v44 - 1;
LABEL_73:
      *(this + 7) = v43;
    }

    v45 = v74[0].i32[2];
    if (!(v74[0].i32[2] >> 30))
    {
      *(this + 20) = v74[0].i32[2];
      v46 = 10;
      goto LABEL_81;
    }

    v47 = *(this + 8);
    if (v47)
    {
      v48 = 0;
      v49 = (v42 << 30) | (v40 << 13);
      v50 = *(this + 20) & 0x1800 | (((v40 + 4) % 5u + 1) << 8) | v49;
      if ((v49 & 0x40000000) != 0)
      {
        v50 ^= 0xC0000000;
      }

      do
      {
        v51 = dword_298A3A3B4[v48] & v50 ^ ((dword_298A3A3B4[v48] & v50) >> 16);
        v52 = v51 ^ (v51 >> 8) ^ ((v51 ^ (v51 >> 8)) >> 4);
        v50 |= (((v52 ^ (v52 >> 2)) ^ ((v52 ^ (v52 >> 2)) >> 1)) & 1) << byte_298A3A3CC[v48++];
      }

      while (v48 != 6);
      v45 = v50 & 0x3FFFFFFF;
      v74[0].i32[2] = v50 & 0x3FFFFFFF;
      v46 = v47 - 1;
LABEL_81:
      *(this + 8) = v46;
    }

    v53.i64[0] = 0xC0000000C0000000;
    v53.i64[1] = 0xC0000000C0000000;
    v54.i64[0] = 0x100000001;
    v54.i64[1] = 0x100000001;
    if (!vaddvq_s32(vsubq_s32(vandq_s8(vcgtq_u32(*(v74 + 12), v53), v54), vcgtq_u32(*(&v74[1] + 12), v53))))
    {
      if (v42 >> 22 == 139)
      {
        v55 = v42;
      }

      else
      {
        v55 = ~v42;
      }

      if (v55 >> 22 != 139)
      {
        v74[0].i32[1] = v42 | 0x80000000;
      }

      if ((~v45 & 3) != 0)
      {
        v56 = v45;
      }

      else
      {
        v56 = ~v45;
      }

      if ((v56 & 0x40000000) != 0)
      {
        v56 ^= 0x3FFFFFC0u;
      }

      if ((v56 & 3) != 0 || ((v57 = (v56 >> 13) & 0x1FFFF, v58 = (v56 >> 8) & 7, v57 >> 6 <= 0x626) ? (v59 = v57 + 4 - 5 * ((858993460 * (v57 + 4)) >> 32) + 1 == v58) : (v59 = 0), v59 ? (v60 = v57 == v40) : (v60 = 0), !v60))
      {
        v74[0].i32[2] = v45 | 0x80000000;
      }

      (*(**(*(this + 49) + 48) + 32))(*(*(this + 49) + 48), &v71);
      if (HIBYTE(v72) <= 3u)
      {
        v65[0] = this + 424;
        v65[1] = 0;
        v66 = 0;
        v69 = 0;
        v68 = 0;
        v67 = vdup_n_s32(0x8C0u);
        v70 = 0;
        BlueFin::GlBitBuffer::Position(v65, 744 * HIBYTE(v72) - 744);
        v61 = 248;
        do
        {
          BlueFin::GlBitBuffer::PutU(v65, 8u, 3u);
          --v61;
        }

        while (v61);
        v62 = this + 32 * HIBYTE(v72);
        *&v63 = 0xF0F0F0F0F0F0F0F0;
        *(&v63 + 1) = 0xF0F0F0F0F0F0F0F0;
        *(v62 + 42) = v63;
        *(v62 + 43) = v63;
      }
    }
  }

  *(v9 + 9) = 0;
  *(v9 + 3) = *(v9 + 5);
  *(v9 + 40) = 0;
  return 1;
}

uint64_t BlueFin::GlPePlatfStat::SetOscDrift(uint64_t this, int a2, int a3, float a4, float a5)
{
  if (a2 == 10)
  {
    v5 = *(this + 240);
    if (v5 == 2)
    {
      if (a3)
      {
        return this;
      }

      v6 = 2;
    }

    else
    {
      if (a3)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      *(this + 240) = v6;
    }

    v11 = (1.0 - ((a4 - a5) / (a4 + a5))) * 100.0;
    if (v11 >= 0.0)
    {
      if (v11 <= 100.0)
      {
        v12 = (v11 + 0.5);
        if (v11 <= 0.0)
        {
          LOBYTE(v12) = 0;
        }
      }

      else
      {
        LOBYTE(v12) = 100;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }

    *(this + 249) = v12;
  }

  else if (a2 == 1)
  {
    v5 = *(this + 244);
    if (v5 == 2)
    {
      if (a3)
      {
        return this;
      }

      v6 = 2;
    }

    else
    {
      if (a3)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      *(this + 244) = v6;
    }

    v9 = (1.0 - ((a4 - a5) / (a4 + a5))) * 100.0;
    if (v9 >= 0.0)
    {
      if (v9 <= 100.0)
      {
        v10 = (v9 + 0.5);
        if (v9 <= 0.0)
        {
          LOBYTE(v10) = 0;
        }
      }

      else
      {
        LOBYTE(v10) = 100;
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }

    *(this + 250) = v10;
  }

  else
  {
    if (a2)
    {
      return this;
    }

    v5 = *(this + 236);
    if (a3)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    *(this + 236) = v6;
    v7 = (1.0 - ((a4 - a5) / (a4 + a5))) * 100.0;
    if (v7 >= 0.0)
    {
      if (v7 <= 100.0)
      {
        v8 = (v7 + 0.5);
        if (v7 <= 0.0)
        {
          LOBYTE(v8) = 0;
        }
      }

      else
      {
        LOBYTE(v8) = 100;
      }
    }

    else
    {
      LOBYTE(v8) = 0;
    }

    *(this + 248) = v8;
  }

  if (v5 != v6)
  {
    *(this + 232) = 1;
  }

  return this;
}

uint64_t BlueFin::GlPeNavGnssMeasMgr::checkMeasEphValid(void *a1, unsigned __int8 *a2, int a3, void *a4, int *a5, int8x16_t a6, int8x16_t a7)
{
  v12 = a1[2];
  v25 = 7;
  v26[0] = 0;
  BlueFin::GlPeSvIdConverter::SvId2Gnss((v12 + 119744), a2, &v25, a6, a7);
  if (v25 > 6 || v26[0] - 1 >= 0x3F)
  {
    result = 0;
    v15 = 1;
    goto LABEL_8;
  }

  if (!BlueFin::GlPeSvHealthHelper::IsUsable(a1[7] + 32, &v25))
  {
    result = 0;
    v15 = 6;
    goto LABEL_8;
  }

  ValidEphCacheSrc = BlueFin::GlPeAsstMgr::GetValidEphCacheSrc(a1[2], &v25);
  if (ValidEphCacheSrc == -1)
  {
    result = BlueFin::GlPeGnssEphemerisMgr::GetMgr((a1[2] + 384), v25);
    if (!result || (v16 = result, (result = (*(*result + 112))(result, v26, 0)) == 0))
    {
LABEL_24:
      v15 = 2;
      goto LABEL_8;
    }

    v18 = result;
    v17.n128_f64[0] = a3;
    if (a3 <= 0xFF9222FE)
    {
      v17.n128_f64[0] = a3;
    }

    v19 = (*(*v16 + 64))(v16, v26, 1, v17);
    if (v19 == 6)
    {
      *a5 = 4;
      v23 = a1[3];
      v24 = *a2;
      BlueFin::GlPeLtoMgr::IdentifyBadLtoSvId(v23, &v24, 0, v20, v21);
      return 0;
    }

    if (v19 != 1)
    {
      if (v19)
      {
        result = 0;
      }

      else
      {
        v22 = (*(*v18 + 152))(v18);
        result = 1;
        if (v22 == 3)
        {
          *(*a4 + ((*a2 >> 3) & 0x1C)) |= 1 << *a2;
        }
      }

      goto LABEL_24;
    }

    result = 0;
    v15 = 3;
LABEL_8:
    *a5 = v15;
    return result;
  }

  if (ValidEphCacheSrc != 2)
  {
    return 1;
  }

  result = 1;
  *(*a4 + ((*a2 >> 3) & 0x1C)) |= 1 << *a2;
  return result;
}

uint64_t BlueFin::GlPeAsstMgr::GetValidEphCacheSrc(uint64_t a1, unsigned int *a2)
{
  if (BlueFin::GlGnssSet::Has(a1 + 120416, a2))
  {
    return 2;
  }

  if (BlueFin::GlGnssSet::Has(a1 + 120032, a2))
  {
    return 0;
  }

  if (BlueFin::GlGnssSet::Has(a1 + 120224, a2))
  {
    return 1;
  }

  if (BlueFin::GlGnssSet::Has(a1 + 120608, a2))
  {
    return 3;
  }

  return 0xFFFFFFFFLL;
}

uint64_t BlueFin::GlPeComputeZRH::GetSatPos(uint64_t a1, unsigned __int8 *a2, int a3, uint64_t a4, float64x2_t *a5, int a6, uint64_t a7, int a8, __n128 q0_0, uint64_t a9)
{
  v11 = a7;
  v16 = a3;
  if (a3 <= 0xFF9222FE)
  {
    v16 = a3;
  }

  if (a9 || (*(a4 + 152) & 1) != 0 || fabs(*(a4 + 56)) > 0.5)
  {
    v17 = v16 + *(a4 + 56) * -1000.0;
    if (!a6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v17 = v16 - **(a1 + 4336);
    if (!a6)
    {
      goto LABEL_12;
    }
  }

  if (a8 & 1) == 0 && (a7 & 1) == 0 && (BlueFin::GlPeSatPosCache::GetSatPosFromCache(a1 + 24, a2, a5, v17))
  {
    return 0;
  }

LABEL_12:
  if (a8)
  {
    v19 = 32;
    goto LABEL_18;
  }

  q0_0.n128_f64[0] = v17;
  result = BlueFin::GlPeComputeZRH::GetSatPosWithFullPr(a1, a2, a4, v11, 1, a5, a9, q0_0);
  if (result)
  {
    if (*(a1 + 4344))
    {
      v19 = 2;
    }

    else
    {
      v19 = 66;
    }

LABEL_18:
    v26 = v19;
    v20 = *(a1 + 4288);
    v28 = 0.0;
    BlueFin::GlPeTimeManager::GetAvgFlightTimeMs(v20, a2, &v28, &v27);
    v21 = v28 * 0.001;
    v28 = v28 * 0.001;
    v22 = 1;
    while (1)
    {
      v23 = v22;
      if (!(*(**(a1 + 4264) + 32))(*(a1 + 4264), a2, &v28, &v26, a5, v17 + v21 * -1000.0))
      {
        break;
      }

      v22 = 0;
      v24 = a5[1].f64[0] - *(a4 + 40);
      v25 = vsubq_f64(*a5, *(a4 + 24));
      v21 = sqrt(vaddvq_f64(vmulq_f64(v25, v25)) + v24 * v24) / 299792458.0;
      v28 = v21;
      if ((v23 & 1) == 0)
      {
        result = 0;
        goto LABEL_23;
      }
    }

    result = 6;
  }

LABEL_23:
  a5[4].f64[1] = v17;
  return result;
}

uint64_t BlueFin::GlPeComputeZRH::GetSatPosWithFullPr(uint64_t a1, _BYTE *a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  v9 = a8.n128_f64[0];
  if (!a7 && (*(a3 + 152) & 1) != 0)
  {
    return 4;
  }

  v13 = 0.0;
  if (a7 && *(a7 + 48) == 1 && (v14 = *(a7 + 24), v14 != -1))
  {
    v13 = *a7;
    v15 = 1;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v16 = BlueFin::GlSignalId::s_aucGnss2numSignals[BlueFin::GlSvId::s_aucSvId2gnss[*a2]];
    if (BlueFin::GlSignalId::s_aucGnss2numSignals[BlueFin::GlSvId::s_aucSvId2gnss[*a2]])
    {
      v30 = a5;
      v31 = a4;
      v32 = a6;
      v17 = -v16;
      v18 = &BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v16 - v16 - 7];
      for (i = v16 - 1; ; --i)
      {
        LOBYTE(v34) = *a2;
        HIDWORD(v34) = i;
        v20 = 575;
        v35 = 575;
        if (LOBYTE(v34) - 189 >= 0xFFFFFF44)
        {
          v21 = BlueFin::GlSvId::s_aucSvId2gnss[LOBYTE(v34)];
          if (v18[v21] == 255)
          {
            HIDWORD(v34) = -1;
            v20 = 575;
          }

          else
          {
            v35 = BlueFin::GlSignalId::s_ausGnss2signalId[v21] + LOBYTE(v34) - BlueFin::GlSvId::s_aucGnss2minSvId[v21] + BlueFin::GlSvId::s_aucGnss2numSvId[v21] * i;
            v20 = v35;
          }
        }

        v22 = *(a1 + 4320);
        if ((*(*(v22 + 8) + 4 * (v20 >> 5)) >> (v20 & 0x1F)))
        {
          PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(v22, &v34, 0);
          if (*(PeMeas + 22) != -1)
          {
            v24 = PeMeas;
            if (BlueFin::stPeSigMeasKF::IsPRValid(PeMeas))
            {
              break;
            }
          }
        }

        v18 -= 7;
        if (__CFADD__(v17++, 1))
        {
          return 5;
        }
      }

      v14 = *(v24 + 22);
      v13 = *(v24 + 3);
      a6 = v32;
      a5 = v30;
      a4 = v31;
      goto LABEL_23;
    }
  }

  if ((v15 & 1) == 0)
  {
    return 5;
  }

LABEL_23:
  v26 = v13 + v14 * 299792.458;
  v27 = (v26 - *(a3 + 48)) / 299792458.0;
  a8.n128_f64[0] = v9 - v26 / 299792.458;
  if (!a5)
  {
    v27 = 0.0;
  }

  v28 = *(a1 + 4344);
  v34 = v27;
  if (v28)
  {
    v29 = 2;
  }

  else
  {
    v29 = 66;
  }

  v33 = v29;
  if (a4 && (*(*(a1 + 4272) + 120021) & 1) == 0)
  {
    v33 = v29 | 0x80;
  }

  if ((*(**(a1 + 4264) + 32))(*(a1 + 4264), a2, &v34, &v33, a6, a8))
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

uint64_t BlueFin::GlPeSatPosCache::GetSatPosFromCache(uint64_t a1, unsigned __int8 *a2, uint64_t a3, double a4)
{
  v4 = *a2;
  if (((*(*(a1 + 24) + ((v4 >> 3) & 0x1C)) >> (v4 & 0x1F)) & 1) == 0)
  {
    return 0;
  }

  v5 = (**(a1 + 264) + 104 * *(v4 + a1 + 71));
  if (*v5 != v4)
  {
    return 0;
  }

  v6 = *(v5 + 10);
  if (vabdd_f64(v6, a4) >= 0.001)
  {
    return 0;
  }

  *a3 = *(v5 + 1);
  *(a3 + 8) = *(v5 + 2);
  *(a3 + 16) = *(v5 + 24);
  *(a3 + 32) = *(v5 + 5);
  *(a3 + 40) = *(v5 + 3);
  *(a3 + 56) = *(v5 + 8);
  *(a3 + 64) = *(v5 + 18);
  *(a3 + 72) = v6;
  return 1;
}

double BlueFin::GlPeAsstMgr::GetUraM(uint64_t a1, unsigned __int8 *a2, int8x16_t a3, int8x16_t a4)
{
  v9 = 7;
  v10 = 0;
  BlueFin::GlPeSvIdConverter::SvId2Gnss((a1 + 119744), a2, &v9, a3, a4);
  if (v10 - 1 > 0x3E)
  {
    return 1.58456366e29;
  }

  v8 = v10;
  Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((a1 + 384), v9);
  if (!Mgr)
  {
    return 1.58456366e29;
  }

  v6 = (*(*Mgr + 112))(Mgr, &v8, 1);
  if (!v6)
  {
    return 1.58456366e29;
  }

  (*(*v6 + 96))(v6);
  return result;
}

float BlueFin::GlPeSatPosCache::AddToSatPosCache(BlueFin::GlSetBase *this, unsigned __int8 *a2, uint64_t a3, float64x2_t *a4, float a5)
{
  v8 = this + 24;
  v9 = *(this + 3);
  v10 = *(this + 33);
  v11 = *(v10 + 2);
  v12 = *a2;
  v13 = *(v9 + 4 * (v12 >> 5));
  if (((v13 >> (v12 & 0x1F)) & 1) != 0 && *v10)
  {
    v14 = &(*v10)[104 * *(this + v12 + 71)];
  }

  else
  {
    v25 = a2;
    v26 = a4;
    if (v11 <= BlueFin::GlSetBase::Cnt(this))
    {
      goto LABEL_11;
    }

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = *this;
    while (((*(v18 + 4 * (v15 >> 21)) >> (v17 & 0x1F)) & 1) != 0)
    {
      ++v17;
      v16 -= 104;
      v15 += 0x10000;
      if (v11 == v17)
      {
        goto LABEL_11;
      }
    }

    *(v9 + 4 * (v12 >> 5)) = (1 << (v12 & 0x1F)) | v13;
    *(this + v12 + 71) = v17;
    *(v18 + 4 * (v15 >> 21)) |= 1 << (v17 & 0x1F);
    v10 = *(this + 33);
    if (*v10)
    {
      v14 = &(*v10)[-v16];
      a2 = v25;
      a4 = v26;
    }

    else
    {
LABEL_11:
      v14 = *v10;
      if (v11 < 2)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0;
        v20 = v14 + 104;
        for (i = 1; i != v11; ++i)
        {
          if (*(v20 + 10) < *(v14 + 10))
          {
            v14 = v20;
            v19 = i;
          }

          v20 += 104;
        }
      }

      BlueFin::GlSetBase::Remove(v8, *v14);
      a2 = v25;
      a4 = v26;
      v22 = *v25;
      *(*(this + 3) + ((v22 >> 3) & 0x1C)) |= 1 << v22;
      *(this + v22 + 71) = v19;
    }
  }

  *v14 = *a2;
  *(v14 + 1) = *a3;
  *(v14 + 2) = *(a3 + 8);
  *(v14 + 24) = *(a3 + 16);
  *(v14 + 5) = *(a3 + 32);
  *(v14 + 3) = *(a3 + 40);
  *(v14 + 8) = *(a3 + 56);
  *(v14 + 18) = *(a3 + 64);
  *(v14 + 10) = *(a3 + 72);
  *(v14 + 22) = a5;
  *(v14 + 92) = vneg_f32(vcvt_f32_f64(*a4));
  v23 = a4[1].f64[0];
  result = -v23;
  *(v14 + 25) = result;
  return result;
}

BOOL BlueFin::GlPeElAzCache::Add(uint64_t a1, unsigned __int8 *a2, float a3, float a4)
{
  v4 = *a2;
  v5 = *(a1 + 1216);
  v6 = *(v5 + 4 * (v4 >> 5));
  if (((1 << (v4 & 0x1F)) & v6) == 0)
  {
    v7 = *(a1 + 1264);
    v8 = a1 + 12 * v7;
    *v8 = v4;
    *(v8 + 4) = a3;
    *(v8 + 8) = a4;
    *(v5 + 4 * (v4 >> 5)) = (1 << (v4 & 0x1F)) | v6;
    *(a1 + 1264) = v7 + 1;
    if ((v7 + 1) >= 0x65u)
    {
      DeviceFaultNotify("glpe_computezrhif.cpp", 39, "Add", "m_ucNbSats < MAX_PE_SVS_MEASURED");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_computezrhif.cpp", 39, "m_ucNbSats < MAX_PE_SVS_MEASURED");
    }
  }

  return ((1 << (v4 & 0x1F)) & v6) == 0;
}

void BlueFin::GlPeComputeZRH::UpdateAtmosDelays(uint64_t a1, unsigned __int8 *a2, double *a3, uint64_t a4, int8x16_t a5, double a6, float a7, double a8, int8x16_t a9)
{
  v10 = *&a6;
  v13 = *a5.i64;
  v15 = *(a1 + 1568);
  v16 = *a2;
  if (!v15)
  {
    goto LABEL_7;
  }

  v17 = 0;
  v18 = a1 + 1572;
  do
  {
    if (*(v18 + 8) == v16)
    {
      v21 = *(v18 + 4);
      v22 = v21 > 0xA;
      v23 = (1 << v21) & 0x580;
      if (v22 || v23 == 0)
      {
        goto LABEL_9;
      }

      a5.i32[0] = *v18;
      if (v13 - a5.u64[0] > 300000.0 && *(a1 + 8) <= 1u)
      {
        goto LABEL_9;
      }

      goto LABEL_56;
    }

    ++v17;
    v18 += 24;
  }

  while (v15 > v17);
  if (v15 == 112)
  {
    v15 = BlueFin::GlPeCachedAtmosDelays::Oldest((a1 + 1568), *a5.i64, a6);
    goto LABEL_8;
  }

LABEL_7:
  *(a1 + 1568) = v15 + 1;
LABEL_8:
  v18 = a1 + 24 * v15 + 1572;
LABEL_9:
  *(v18 + 8) = v16;
  v19 = v13;
  *(v18 + 20) = 0;
  *v18 = v13;
  *a5.i64 = v13;
  if (BlueFin::GlPeComputeZRH::CalcIonoDelay(a1, a3, v18, a5, v10, a7, a8, a9))
  {
    if (*v18)
    {
      v20 = (*(v18 + 20) * (v19 - *v18)) * 0.001;
    }

    else
    {
      v20 = 0.0;
    }

    v25 = *(v18 + 4);
    if (v25)
    {
      v26 = (v20 + *(v18 + 16));
    }

    else
    {
      v26 = 0.0;
    }

    v27 = *(a4 + 16) + *(a4 + 40) * 300.0;
    v49 = vmlaq_f64(*a4, vdupq_n_s64(0x4072C00000000000uLL), *(a4 + 24));
    v50 = v27;
    v48 = 0;
    BlueFin::lla2ecef(a3, v47);
    v28 = (*(**(a1 + 4264) + 80))(*(a1 + 4264), &v49, v47, a3, 0, 0, &v48 + 4, &v48);
    *v28.i64 = v13 + 300000.0;
    BlueFin::GlPeComputeZRH::CalcIonoDelay(a1, a3, v18, v28, *(&v48 + 1), *&v48, v29, v30);
    if (*v18)
    {
      v31 = (*(v18 + 20) * (v19 - *v18)) * 0.001;
    }

    else
    {
      v31 = 0.0;
    }

    v32 = *(v18 + 4);
    if (v32)
    {
      v33 = (v31 + *(v18 + 16));
      if (v25 == 9)
      {
        goto LABEL_28;
      }

      if (v32 == 9)
      {
        goto LABEL_53;
      }

      if (v25 == 7)
      {
LABEL_35:
        v34 = 7;
        goto LABEL_52;
      }

      if (v32 == 7)
      {
        goto LABEL_53;
      }

      if (v25 == 8)
      {
        goto LABEL_45;
      }

      if (v32 == 8)
      {
        goto LABEL_53;
      }

      if (v25 == 10)
      {
LABEL_51:
        v34 = 10;
LABEL_52:
        *(v18 + 4) = v34;
        v38 = v26;
        *(v18 + 16) = v38;
LABEL_53:
        if (v32 == v25)
        {
          v39 = (v33 - v26) / 300.0;
          *(v18 + 20) = v39;
          *v18 = v19;
        }

        ++*(a1 + 8);
        goto LABEL_56;
      }

      if (v32 == 10)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v33 = 0.0;
      if (v25 > 8)
      {
        if (v25 == 10)
        {
          goto LABEL_51;
        }

        if (v25 == 9)
        {
LABEL_28:
          v34 = 9;
          goto LABEL_52;
        }
      }

      else
      {
        if (v25 == 7)
        {
          goto LABEL_35;
        }

        if (v25 == 8)
        {
LABEL_45:
          v34 = 8;
          goto LABEL_52;
        }
      }
    }

    if (v25 <= 3)
    {
      if (v25 == 2)
      {
        v43 = v26;
        *(v18 + 16) = v43;
        v36 = 2;
        goto LABEL_61;
      }

      if (v25 == 3)
      {
        v37 = v26;
        *(v18 + 16) = v37;
        v36 = 3;
        goto LABEL_61;
      }
    }

    else
    {
      switch(v25)
      {
        case 4:
          v41 = v26;
          *(v18 + 16) = v41;
          v36 = 4;
          goto LABEL_61;
        case 5:
          v42 = v26;
          *(v18 + 16) = v42;
          v36 = 5;
          goto LABEL_61;
        case 6:
          v35 = v26;
          *(v18 + 16) = v35;
          v36 = 6;
LABEL_61:
          *(v18 + 4) = v36;
          goto LABEL_53;
      }
    }

    v44 = "0";
    DeviceFaultNotify("glpe_atmosdelays.h", 193, "SetIonoDelay", "0");
    v45 = "glpe_atmosdelays.h";
    v46 = 193;
LABEL_65:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v45, v46, v44);
  }

LABEL_56:
  BlueFin::GlPeUnbTropoModel::getTropoDelayInMeters((a1 + 4348), a7);
  *(v18 + 12) = v40;
  *(v18 + 9) = 1;
  if (!*(v18 + 4))
  {
    v44 = "potCacheSlot->otAtmosDelays.HaveTropoDelay() && potCacheSlot->otAtmosDelays.HaveIonoDelay()";
    DeviceFaultNotify("glpe_computezrh.cpp", 2092, "UpdateAtmosDelays", "potCacheSlot->otAtmosDelays.HaveTropoDelay() && potCacheSlot->otAtmosDelays.HaveIonoDelay()");
    v45 = "glpe_computezrh.cpp";
    v46 = 2092;
    goto LABEL_65;
  }
}

uint64_t BlueFin::GlPeBitMon::CheckBitValidity(uint64_t result, unsigned __int8 *a2, int a3, BOOL *a4, BOOL *a5)
{
  v5 = 0;
  v6 = *(result + 288);
  v7 = *a2;
  while (1)
  {
    v8 = v6 + v5;
    if (*(v6 + v5 + 12) == v7)
    {
      break;
    }

    v5 += 16;
    if (v5 == 288)
    {
      v8 = 0;
      break;
    }
  }

  v9 = *(a2 + 3);
  *a4 = (v9 & 8) != 0;
  *a5 = (v9 & 4) != 0;
  v10 = *a4;
  if (*a4 || (v9 & 4) != 0)
  {
    if (!v8)
    {
      v14 = v6 + 16;
      v15 = 17;
      v8 = v6;
      do
      {
        if (*(v8 + 8) > *(v14 + 8))
        {
          v8 = v14;
        }

        v14 += 16;
        --v15;
      }

      while (v15);
    }

    *(v8 + 12) = v7;
    *(v8 + 8) = a3;
    *v8 = *(a2 + 8);
    *(v8 + 13) = v10;
    *(v8 + 14) = *a5;
  }

  else if (v8)
  {
    v11 = a3 - *(v8 + 8);
    if (v11 <= 179999)
    {
      v12 = (*v8 - *(a2 + 8)) * 1000.0;
      if (v12 <= 0.0)
      {
        v13 = 0.0;
        if (v12 < 0.0)
        {
          v13 = ceil(v12 + -0.5);
        }
      }

      else
      {
        v13 = floor(v12 + 0.5);
      }

      v16 = v12 - v13;
      if (fabsf((*(a2 + 26) * v11) + v16) < 0.25)
      {
        *a4 = *(v8 + 13);
        *a5 = *(v8 + 14);
      }
    }
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeNavUtil::ComputeRrateResidVec(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v4 = v3;
  v42 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v2;
  v16 = v15;
  v73 = *MEMORY[0x29EDCA608];
  v17 = v15 + 2;
  v15[1] = 0x6400000000;
  bzero(v15 + 2, 0x328uLL);
  v18 = 0;
  *v16 = v17;
  do
  {
    v19 = &v69[v18 + 808];
    *v19 = 0;
    *(v19 + 1) = -1;
    *(v19 + 4) = 575;
    *(v19 + 2) = 0;
    v18 += 24;
  }

  while (v18 != 2184);
  v68[0] = v69;
  v68[1] = 0x6400000000;
  bzero(v69, 0x328uLL);
  v66[0] = v67;
  v66[1] = 0x6400000000;
  bzero(v67, 0x328uLL);
  v62[0] = v63;
  v62[1] = 0x6400000000;
  bzero(v63, 0x328uLL);
  v54[0] = v62;
  v54[1] = v7;
  v54[2] = v13;
  v55 = v42;
  v56 = 0x4C100000002;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0x4008000000000000;
  v49[0] = v68;
  v49[1] = v66;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0;
  *&v63[8] = *v4;
  v64 = *(v4 + 16);
  v65 = v11;
  v46[32] = 0;
  v47 = -1;
  v48 = 575;
  LOBYTE(v71) = *(v9 + 8);
  memcpy(&v71 + 8, *v9, 4 * v71);
  WORD1(v71) = 0;
  BYTE1(v71) = 0;
  DWORD1(v71) = DWORD2(v71);
  result = BlueFin::GlSetIterator::operator++(&v71);
  if (BYTE1(v71) != v71)
  {
    v21 = 0;
    do
    {
      if (WORD1(v71) >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v22 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v71);
      v23 = *v22;
      v24 = v22[1];
      v43[0] = *v22;
      v25 = SWORD1(v71);
      v44 = v24;
      v45 = WORD1(v71);
      if (BlueFin::GlPeNavUtil::PackSkfMeas_RR_SignalId(v14, v46, v43, 0) && !(*(**(v14 + 16) + 16))(*(v14 + 16), v54, v49, v46, &BlueFin::GlSet128::BIT0))
      {
        v26 = &v69[24 * ++v21 + 808];
        *(v26 - 1) = *(v68[0] + 8) - *(v66[0] + 8);
        *(v26 - 24) = v23;
        *(v26 - 5) = v24;
        *(v26 - 8) = v25;
      }

      else
      {
        BlueFin::GlSetBase::Remove(v9, v25);
      }

      result = BlueFin::GlSetIterator::operator++(&v71);
    }

    while (BYTE1(v71) != v71);
    if (v21 <= 0x10u)
    {
      v37 = v21;
      if (!v21)
      {
        return result;
      }
    }

    else
    {
      v27 = 1;
      do
      {
        v28 = &v69[24 * v27 + 808];
        v29 = *&v70[3 * v27 - 3];
        v30 = -v29;
        if (v29 >= 0.0)
        {
          v30 = *&v70[3 * v27 - 3];
        }

        v31 = v28[2];
        if (v31 < 0.0)
        {
          v31 = -v31;
        }

        if (v30 > v31)
        {
          v32 = v27 - 1;
          if (v27 != 1)
          {
            v33 = 0;
            do
            {
              v34 = (v32 + v33) / 2;
              v35 = *&v70[3 * v34];
              if (v35 < 0.0)
              {
                v35 = -v35;
              }

              if (v35 <= v31)
              {
                v33 = v34 + 1;
              }

              else
              {
                v32 = (v32 + v33) / 2;
              }
            }

            while (v33 != v32);
          }

          v71 = *v28;
          v72 = *(v28 + 2);
          v36 = &v69[24 * v32 + 808];
          memmove(&v69[24 * v32 + 832], v36, 24 * (v27 - v32));
          *v36 = v71;
          v36[2] = v72;
        }

        ++v27;
      }

      while (v27 != v21);
      bzero(*v9, ((4 * *(v9 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      v37 = 16;
    }

    v38 = v37;
    v39 = v70;
    v40 = 8;
    do
    {
      if (v21 >= 0x11u)
      {
        *(*v9 + 4 * (*(v39 - 4) >> 5)) |= 1 << *(v39 - 4);
      }

      result = BlueFin::SKFVector::AddLen(v16);
      v41 = *v39;
      v39 += 3;
      *(*v16 + v40) = v41;
      v40 += 8;
      --v38;
    }

    while (v38);
  }

  return result;
}

BOOL BlueFin::GlPeNavUtil::PackSkfMeas_RR_SignalId(uint64_t a1, uint64_t a2, BlueFin::GlSignalId *a3, int a4)
{
  v5 = *(a1 + 8);
  v6 = (1 << (*(a3 + 4) & 0x1F)) & *(*(v5 + 8) + 4 * (*(a3 + 4) >> 5));
  if (v6)
  {
    v10 = -7200001;
    PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(v5, a3, 0);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 24) = -1;
    *(a2 + 49) = 0;
    *(a2 + 32) = 0;
    *(a2 + 36) = -1;
    *(a2 + 40) = 575;
    *(a2 + 44) = 2;
    v12 = *(a1 + 8);
    v13 = *v12;
    *(a2 + 16) = *v12;
    if (v13 != -7200001)
    {
      v14 = v12[1];
      v15 = v13 - v14;
      if (v14 == -7200001)
      {
        v10 = -7200001;
      }

      else
      {
        v10 = v15;
      }
    }

    *(a2 + 20) = v10;
    if ((a2 + 32) != a3)
    {
      *(a2 + 32) = *a3;
      *(a2 + 36) = *(a3 + 1);
      *(a2 + 40) = *(a3 + 4);
    }

    if (*a3 - 139 >= 0x24 && (v16 = *(a3 + 1), (v16 - 1) >= 2))
    {
      if (v16 != 3 || (a4 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (!a4)
    {
      goto LABEL_16;
    }

    if (*(PeMeas + 72) < 0.000000016)
    {
      v17.f32[0] = -*(PeMeas + 68);
      v17.i32[1] = *(PeMeas + 72);
      *a2 = vmulq_f64(vcvtq_f64_f32(v17), vdupq_n_s64(0x41B1DE784A000000uLL));
      *(a2 + 50) = 1;
LABEL_17:
      *(a2 + 48) = 1;
      return v6 != 0;
    }

LABEL_16:
    v18.f32[0] = -*(PeMeas + 60);
    v18.i32[1] = *(PeMeas + 64);
    *a2 = vmulq_f64(vcvtq_f64_f32(v18), vdupq_n_s64(0x41B1DE784A000000uLL));
    goto LABEL_17;
  }

  return v6 != 0;
}

BOOL BlueFin::GlPeSatPosCache::GetLOSFromCache(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = (1 << (v3 & 0x1F)) & *(*(a1 + 24) + ((v3 >> 3) & 0x1C));
  if (v4)
  {
    v5 = **(a1 + 264) + 104 * *(v3 + a1 + 71);
    v6 = -*(v5 + 100);
    *(a3 + 128) = 0x300000001;
    *a3 = vcvtq_f64_f32(vneg_f32(*(v5 + 92)));
    *(a3 + 16) = v6;
  }

  return v4 != 0;
}

uint64_t BlueFin::SKFVector::AddLen(uint64_t this)
{
  v1 = *(this + 8);
  if (v1 >= *(this + 12))
  {
    DeviceFaultNotify("glpe_matrix.h", 443, "AddLen", "m_Len < m_MaxLen");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.h", 443, "m_Len < m_MaxLen");
  }

  *(this + 8) = v1 + 1;
  return this;
}

uint64_t BlueFin::GlPeMsmtMgr::ValidatePeMeas(BlueFin::GlSignalIdArray **this, const BlueFin::GlSignalId *a2)
{
  result = BlueFin::GlSignalIdArray::Get(this[2349], a2);
  if (result)
  {
    *(this[23] + (*(a2 + 4) >> 5)) |= 1 << *(a2 + 4);
  }

  return result;
}

__n128 BlueFin::GlPeMsmtMgr::SetPeMeas(uint64_t a1, __int128 *a2, char a3)
{
  v6 = BlueFin::GlSignalIdArray::Get(*(a1 + 18792), (a2 + 40));
  if (!v6 || ((*(*(a1 + 8) + 4 * (*(a2 + 24) >> 5)) >> (a2[3] & 0x1F)) & 1) == 0 && (a3 & 1) == 0)
  {
    DeviceFaultNotify("glpe_msmtmgr.cpp", 873, "SetPeMeas", "potMePeMeas != nullptr && (m_otValidMeasSignalIds.Has(rotPeMeas.oSignalid) || bAllowInvalidMeas)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_msmtmgr.cpp", 873, "potMePeMeas != nullptr && (m_otValidMeasSignalIds.Has(rotPeMeas.oSignalid) || bAllowInvalidMeas)");
  }

  v7 = *a2;
  v8 = a2[1];
  *(v6 + 176) = *(a2 + 4);
  *(v6 + 144) = v7;
  *(v6 + 160) = v8;
  if ((v6 + 144) != a2)
  {
    *(v6 + 184) = *(a2 + 40);
    *(v6 + 188) = *(a2 + 11);
    *(v6 + 192) = *(a2 + 24);
  }

  *(v6 + 196) = *(a2 + 52);
  result = *(a2 + 68);
  v10 = *(a2 + 84);
  v11 = *(a2 + 100);
  *(v6 + 258) = *(a2 + 114);
  *(v6 + 244) = v11;
  *(v6 + 228) = v10;
  *(v6 + 212) = result;
  return result;
}

__n128 BlueFin::GlPeMsmtMgr::SetMeMeas(uint64_t a1, uint64_t a2)
{
  v3 = BlueFin::GlSignalIdArray::Get(*(a1 + 18792), a2);
  if (!v3)
  {
    DeviceFaultNotify("glpe_msmtmgr.cpp", 820, "SetMeMeas", "potMePeMeas != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_msmtmgr.cpp", 820, "potMePeMeas != nullptr");
  }

  if (v3 != a2)
  {
    *v3 = *a2;
    *(v3 + 4) = *(a2 + 4);
    *(v3 + 8) = *(a2 + 8);
  }

  *(v3 + 12) = *(a2 + 12);
  v4 = *(a2 + 28);
  v5 = *(a2 + 44);
  v6 = *(a2 + 60);
  *(v3 + 76) = *(a2 + 76);
  *(v3 + 60) = v6;
  *(v3 + 44) = v5;
  *(v3 + 28) = v4;
  result = *(a2 + 92);
  v8 = *(a2 + 108);
  v9 = *(a2 + 124);
  *(v3 + 140) = *(a2 + 140);
  *(v3 + 124) = v9;
  *(v3 + 108) = v8;
  *(v3 + 92) = result;
  return result;
}

__n128 BlueFin::GlPeMsmtMgr::SetPeGridMeas(uint64_t a1, uint64_t a2)
{
  v3 = BlueFin::GlSignalIdArray::Get(*(a1 + 56328), a2);
  if (!v3)
  {
    DeviceFaultNotify("glpe_msmtmgr.cpp", 839, "SetPeGridMeas", "potGridMeas != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_msmtmgr.cpp", 839, "potGridMeas != nullptr");
  }

  if (v3 != a2)
  {
    *v3 = *a2;
    *(v3 + 4) = *(a2 + 4);
    *(v3 + 8) = *(a2 + 8);
  }

  v4 = *(a2 + 12);
  v5 = *(a2 + 28);
  *(v3 + 44) = *(a2 + 44);
  *(v3 + 28) = v5;
  *(v3 + 12) = v4;
  v6 = *(a2 + 60);
  v7 = *(a2 + 76);
  v8 = *(a2 + 92);
  *(v3 + 108) = *(a2 + 108);
  *(v3 + 92) = v8;
  *(v3 + 76) = v7;
  *(v3 + 60) = v6;
  v9 = *(a2 + 124);
  v10 = *(a2 + 140);
  v11 = *(a2 + 156);
  *(v3 + 168) = *(a2 + 168);
  *(v3 + 156) = v11;
  *(v3 + 140) = v10;
  *(v3 + 124) = v9;
  result = *(a2 + 184);
  *(v3 + 200) = *(a2 + 200);
  *(v3 + 184) = result;
  return result;
}

uint64_t BlueFin::GlPeMsmtMgr::AccessPeMeas(BlueFin::GlSignalIdArray **this, const BlueFin::GlSignalId *a2, char a3)
{
  v6 = BlueFin::GlSignalIdArray::Get(this[2349], a2);
  if (!v6 || ((*(this[1] + (*(a2 + 4) >> 5)) >> (*(a2 + 4) & 0x1F)) & 1) == 0 && (a3 & 1) == 0)
  {
    DeviceFaultNotify("glpe_msmtmgr.cpp", 864, "AccessPeMeas", "potMePeMeas != nullptr && (m_otValidMeasSignalIds.Has(rotSignalId) || bAllowInvalidMeas)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_msmtmgr.cpp", 864, "potMePeMeas != nullptr && (m_otValidMeasSignalIds.Has(rotSignalId) || bAllowInvalidMeas)");
  }

  return v6 + 144;
}

uint64_t BlueFin::GlSetBase::OperatorLeftShift(uint64_t this, BlueFin::GlSetBase *a2, unsigned int a3)
{
  if (a3 >= 0x20)
  {
    DeviceFaultNotify("glutl_set.cpp", 485, "OperatorLeftShift", "(iShiftBits >> 5) == 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 485, "(iShiftBits >> 5) == 0");
  }

  v3 = *this;
  v4 = *a2;
  if (*(this + 8) != 1)
  {
    v5 = (*(this + 8) - 1);
    do
    {
      v4[v5] = (v3[(v5 - 1)] >> (32 - a3)) & ~(-1 << a3) | (v3[v5] << a3);
      --v5;
    }

    while (v5);
  }

  *v4 = *v3 << a3;
  return this;
}

uint64_t BlueFin::GlSetBase::Highest(BlueFin::GlSetBase *this)
{
  v1 = *(this + 8);
  v2 = 32 * v1;
  do
  {
    if (v1 < 1)
    {
      return -1;
    }

    v3 = *(*this + 4 * v1 - 4);
    v2 -= 32;
    --v1;
  }

  while (!v3);
  v4 = 0;
  for (i = 4; i != -1; --i)
  {
    v6 = 1 << i;
    if (((~(-1 << v6) << v6) & v3) == 0)
    {
      LOWORD(v6) = 0;
    }

    v4 += v6;
    v3 >>= v6;
  }

  return (v4 + v2);
}

double BlueFin::GlPeTimeManager::GetSystemConversionS(uint64_t a1, unsigned int a2, double *a3)
{
  *a3 = 0.0;
  if (!*(a1 + 2576))
  {
    return 4294967300.0;
  }

  v5 = BlueFin::GlPeGnssTime::Gnss2TimeSystem(a2);
  *a3 = BlueFin::GlPeTimeManager::GetSystemConversionS(a1, v5);
  ConversionTable = BlueFin::GlPeGnssTime::GetConversionTable((a1 + 2608));
  v7 = 0.0;
  if (v5 - 1 <= 1)
  {
    LOBYTE(v7) = *(a1 + 2589);
    v7 = *&v7;
  }

  return *(ConversionTable + 4 * v5 + 48) + v7 * 1000000.0;
}

double BlueFin::GlPeComputeZRH::GetTimeSystemConversionM(uint64_t a1, unsigned int a2)
{
  v10 = 0.0;
  BlueFin::GlPeTimeManager::GetSystemConversionS(*(a1 + 4288), a2, &v10);
  v4 = v10 / 0.001;
  if (v10 / 0.001 <= 0.0)
  {
    v5 = 0.0;
    if (v10 / 0.001 < 0.0)
    {
      v5 = ceil(v4 + -0.5);
    }
  }

  else
  {
    v5 = floor(v4 + 0.5);
  }

  v6 = v10 + v5 * -0.001;
  if (a2 == 3)
  {
    v7 = *(a1 + 4280);
    if (*(v7 + 920) == 1)
    {
      v6 = *(v7 + 996) * -0.000000001;
      v8 = *(a1 + 4288);
      if (*(v8 + 2616) == 1 && *(v8 + 344) == 1)
      {
        v6 = v6 - *(v8 + 352);
      }
    }
  }

  return v6 * 299792458.0;
}

uint64_t BlueFin::GlPeComputeZRHUtil::resolveIntegers(BlueFin::GlSetBase *a1, unsigned int a2, unsigned int a3, unsigned int a4, void *a5, uint64_t a6)
{
  v6 = a6 + 56 * a2;
  if (*(v6 + 32) - 189 < 0xFFFFFF44 || *(v6 + 44))
  {
    return 0xFFFFFFFFLL;
  }

  if ((BlueFin::GlSetBase::Cnt(a1) & 0xFE) == 0)
  {
    goto LABEL_16;
  }

  v22 = *(a1 + 8);
  memcpy(v26, *a1, 4 * v22);
  v24 = 0;
  v23 = 0;
  v25 = v26[0];
  BlueFin::GlSetIterator::operator++(&v22);
  if (v23 == v22)
  {
    goto LABEL_16;
  }

  v14 = 0;
  while (1)
  {
    ++v14;
    if (!*(a6 + 56 * v24 + 44))
    {
      break;
    }

    BlueFin::GlSetIterator::operator++(&v22);
    if (v23 == v22)
    {
      goto LABEL_16;
    }
  }

  if (v24 == 255 || v24 == a2)
  {
LABEL_16:
    v21 = (*(*a5 + 8 * a4) - *v6) / 299792.458;
  }

  else
  {
    v21 = (*(a6 + 56 * v24) - *v6 + *(*a5 + 8 * a4) - *(*a5 + 8 * v14)) / 299792.458 + *(a6 + 56 * v24 + 24);
  }

  if (v21 <= 0.0)
  {
    if (v21 >= 0.0)
    {
      result = 0;
      goto LABEL_23;
    }

    v16 = -0.5;
  }

  else
  {
    v16 = 0.5;
  }

  result = (v21 + v16);
LABEL_23:
  if (a3 >= 2)
  {
    v17 = *(v6 + 28);
    v18 = (v21 - v17) / a3;
    if (v18 <= 0.0)
    {
      if (v18 >= 0.0)
      {
        v20 = 0;
        return v17 + v20 * a3;
      }

      v19 = -0.5;
    }

    else
    {
      v19 = 0.5;
    }

    v20 = (v18 + v19);
    return v17 + v20 * a3;
  }

  return result;
}

uint64_t BlueFin::GlPeComputeZRHUtil::computeBitResolution(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = *a1;
  v3 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[BlueFin::GlSvId::s_aucSvId2gnss[*a1]];
  if (BlueFin::GlImplGnss::m_aucEnabledGnssTable[BlueFin::GlSvId::s_aucSvId2gnss[*a1]])
  {
    v4 = v3 == 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 20;
  }

  if (v3 == 8)
  {
    DeviceFaultNotify("glpe_computezrhif.cpp", 188, "computeBitResolution", "eImplGnss != IMPL_GNSS_INVALID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_computezrhif.cpp", 188, "eImplGnss != IMPL_GNSS_INVALID");
  }

  if ((v2 - 81) < 0x35)
  {
    return 20;
  }

  switch(v3)
  {
    case 1:
      return 2;
    case 6:
      return 4;
    case 2:
      return 10;
  }

  result = 1;
  v6 = v2 - 76;
  if (v6 <= 0x3E && ((1 << v6) & 0x7C0000000000001FLL) != 0)
  {
    return 2;
  }

  return result;
}

uint64_t (*(*(*BlueFin::GlMeSrdAcqMgrSm::assisted_2000(uint64_t a1, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm *this, unsigned __int8 *a2))(BlueFin::GlMeSrdAcqMgrSm **this, unsigned __int8 *a2))()
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
    v4 = 88;
  }

  else
  {
    v4 = 84;
  }

  v5.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10128, 5, 27, 0x33u, 0x3Du, 0xFAu, 0x2Fu, v4, 0x55u, 1);
  if ((*(**(a1 + 64) + 1200))(v5))
  {
    v6 = 250;
  }

  else
  {
    v6 = 84;
  }

  v7 = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 10608, 4, 26, 0x33u, 0x3Du, 0xFAu, 0xFAu, v6, 0xFAu, 1);
  v8 = (*(**(a1 + 80) + 40))(*(a1 + 80), v7);
  v9 = **(a1 + 64);
  if (v8)
  {
    if ((*(v9 + 1200))())
    {
      v10 = 89;
    }

    else
    {
      v10 = 84;
    }

    v11.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 3, 32, 0x45u, 0x3Du, 0x48u, 0xFAu, v10, 0x56u, 1);
    if ((*(**(a1 + 64) + 1200))(v11))
    {
      v12 = 89;
    }

    else
    {
      v12 = 84;
    }

    BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 3, 32, 0x45u, 0x3Du, 0x48u, 0xFAu, v12, 0x56u, 1);
  }

  else
  {
    if ((*(v9 + 264))())
    {
      v14 = 92;
    }

    else
    {
      v14 = 72;
    }

    if ((*(**(a1 + 64) + 1200))())
    {
      v15 = 89;
    }

    else
    {
      v15 = 84;
    }

    v16.n128_f64[0] = BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12360, 2, 34, 0x37u, 0x3Du, v14, 0xFAu, v15, 0x56u, 1);
    if ((*(**(a1 + 64) + 264))(v16))
    {
      v17 = 92;
    }

    else
    {
      v17 = 72;
    }

    if ((*(**(a1 + 64) + 1200))())
    {
      v18 = 89;
    }

    else
    {
      v18 = 84;
    }

    BlueFin::GlMeSrdSearchMgrBase::SetStrategyId(a1 + 12672, 2, 34, 0x37u, 0x3Du, v17, 0xFAu, v18, 0x56u, 1);
  }

  return 0;
}

unsigned int **BlueFin::GlPeNavMeasUtil::processEl(unsigned int **result, uint64_t a2, uint64_t a3, _WORD *a4, _DWORD *a5)
{
  v32 = 90.0;
  if ((*(a3 + 184) | 4) != 4)
  {
    v9 = result;
    if (*(a3 + 156) && (result = (*(*result[1] + 64))(result[1], a2)) != 0)
    {
      *a5 = *(result + 2);
    }

    else
    {
      v31 = 0;
      v30 = 0;
      memset(v28, 0, sizeof(v28));
      v29 = 0;
      v26 = 0;
      v25 = 0u;
      v24 = 0u;
      v23 = 0u;
      v22 = 0u;
      v21 = 0u;
      v20 = 0u;
      v19 = 0u;
      v18 = 0u;
      v27 = 0x4008000000000000;
      v16 = *(a3 + 88);
      v17 = *(a3 + 104);
      BlueFin::lla2ecef(&v16, &v14);
      v18 = v14;
      v10 = *(a3 + 136);
      v11 = *(a3 + 144);
      *&v19 = v15;
      *(&v19 + 1) = v10;
      v12 = *(a3 + 152) * 0.001;
      *(&v23 + 1) = v11;
      *&v20 = v12;
      result = (*(*v9[1] + 24))(v9[1], a2, **v9, &v16, v28, 1, 0, 0, 0);
      if (!result)
      {
        v13 = (*(*v9[1] + 48))(v9[1]);
        result = (*(*v13 + 80))(v13, v28, &v18, &v16, 0, 0, &v31, &v32);
        if (v32 < -2.0 && !*(a3 + 156))
        {
          ++*a4;
        }

        *a5 = v31;
      }
    }
  }

  return result;
}

float BlueFin::GlPeProbation::UpdateProbationInfo(int32x2_t *a1, int32x2_t *a2, double *a3, float64x2_t *a4, __int32 a5)
{
  if (!a2)
  {
    v11 = "pMeSigMeas";
    DeviceFaultNotify("glpe_probation.cpp", 208, "UpdateProbationInfo", "pMeSigMeas");
    v12 = 208;
    goto LABEL_26;
  }

  if (!a3)
  {
    v11 = "pSkfMeas";
    DeviceFaultNotify("glpe_probation.cpp", 209, "UpdateProbationInfo", "pSkfMeas");
    v12 = 209;
    goto LABEL_26;
  }

  v5 = a2->u8[0];
  if (!a2->i8[0])
  {
    v11 = "*pMeSigMeas->m_otSignalId.GetSvId()";
    DeviceFaultNotify("glpe_probation.cpp", 210, "UpdateProbationInfo", "*pMeSigMeas->m_otSignalId.GetSvId()");
    v12 = 210;
LABEL_26:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_probation.cpp", v12, v11);
  }

  if ((a2[2].i32[1] - 1) >= 2)
  {
    for (i = 0; i != 108; i += 9)
    {
      if (a1->u8[i * 4] == v5 && a1->i32[i + 1] == a2->i32[1])
      {
        a1 = (a1 + i * 4);
        goto LABEL_19;
      }
    }

    for (j = 0; j != 432; j += 36)
    {
      if (!a1->i8[j])
      {
        a1 = (a1 + j);
        goto LABEL_19;
      }
    }

    v8 = (a1 + 36);
    v9 = 11;
    do
    {
      if (a1[1].i32[1] > v8[1].i32[1])
      {
        a1 = v8;
      }

      v8 = (v8 + 36);
      --v9;
    }

    while (v9);
LABEL_19:
    if (a1 != a2)
    {
      a1->i8[0] = v5;
      a1->i32[1] = a2->i32[1];
      a1[1].i16[0] = a2[1].i16[0];
    }

    a1[1].i32[1] = a5;
    a1[2] = vmovn_s64(vcvtq_s64_f64(vmulq_f64(*a4, vdupq_n_s64(0x412E848000000000uLL))));
    a1[3].i32[0] = -(a3[3] - *a3 * 299792.458);
    result = *&a2[14].i32[1];
    a1[3].i16[2] = result;
    a1[4].i32[0] = a2[6].i32[0];
  }

  return result;
}

void BlueFin::GlPeSvVisibilityCache::UpdateVisibilityInfo(BlueFin::GlPeSvVisibilityCache *this, float *a2, double *a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a2)
  {
    v63 = "pMeSigMeas";
    DeviceFaultNotify("glpe_svvisibilitycache.cpp", 440, "UpdateVisibilityInfo", "pMeSigMeas");
    v64 = 440;
    goto LABEL_57;
  }

  if (!a3)
  {
    v63 = "pSkfMeas";
    DeviceFaultNotify("glpe_svvisibilitycache.cpp", 441, "UpdateVisibilityInfo", "pSkfMeas");
    v64 = 441;
    goto LABEL_57;
  }

  v18 = *a2;
  if (!*a2)
  {
    v63 = "*pMeSigMeas->m_otSignalId.GetSvId()";
    DeviceFaultNotify("glpe_svvisibilitycache.cpp", 442, "UpdateVisibilityInfo", "*pMeSigMeas->m_otSignalId.GetSvId()");
    v64 = 442;
    goto LABEL_57;
  }

  v20 = *(this + 1);
  if (!v20)
  {
    return;
  }

  v21 = *(v20 + 2576);
  if ((v18 - 76) < 0x63 || v21 == 0)
  {
    return;
  }

  v23 = *(this + 10);
  if (v23 == 0xFFFF)
  {
    if (BlueFin::GlPeSvVisibilityCache::GetSvVisibilityArraySize(this) > 8)
    {
      LOWORD(v23) = 0;
      *(this + 9) = 0;
      v52 = -1600;
      v53 = 1.79769313e308;
      while (1)
      {
        v54 = *(this + 204) + v52;
        if ((*(*(v54 + 1608) + 32))(v54 + 1608) < 0x93A80)
        {
          break;
        }

        v55 = (*(*(v54 + 1608) + 32))(v54 + 1608);
        LODWORD(v56) = *(v54 + 1616);
        if (v56 * 2.32830644e-10 + (v55 % 0x93A80) == 0.0)
        {
          break;
        }

        v57 = *(this + 204) + v52;
        v58 = (*(*(v57 + 1608) + 32))();
        LODWORD(v59) = *(v57 + 1616);
        if (v59 * 2.32830644e-10 + v58 < v53)
        {
          v60 = *(this + 204) + v52;
          v61 = (*(*(v60 + 1608) + 32))();
          LODWORD(v62) = *(v60 + 1616);
          v53 = v62 * 2.32830644e-10 + v61;
          *(this + 9) = v23;
        }

        LOWORD(v23) = v23 + 1;
        v52 += 160;
        if (!v52)
        {
          LOWORD(v23) = *(this + 9);
          goto LABEL_13;
        }
      }
    }

    else
    {
      LOWORD(v23) = *(this + 9) + 1;
    }

    *(this + 9) = v23;
LABEL_13:
    *(this + 10) = v23;
  }

  if (v23 >= 0xAu)
  {
    v63 = "m_sUpdateIdx >= 0 && m_sUpdateIdx < MAX_SVVISIBILITY_CACHE_SIZE";
    DeviceFaultNotify("glpe_svvisibilitycache.cpp", 465, "UpdateVisibilityInfo", "m_sUpdateIdx >= 0 && m_sUpdateIdx < MAX_SVVISIBILITY_CACHE_SIZE");
    v64 = 465;
LABEL_57:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_svvisibilitycache.cpp", v64, v63);
  }

  BlueFin::GlPeTimeManager::GetTime(*(this + 1), 1, &v67);
  v65 = &off_2A1F0B5F0;
  v66 = 0;
  BlueFin::GlPeGnssTime::GetGps(&v67, &v65);
  v24 = *(this + 204);
  v25 = *(this + 10);
  if (v66 != *(v24 + 160 * *(this + 10) + 16))
  {
    for (i = 0; i != 96; i += 8)
    {
      v27 = &v67 + i;
      *v27 = -256;
      *(v27 + 1) = 0;
    }

    v28 = 0;
    v29 = *(v24 + 160 * v25 + 128);
    do
    {
      v30 = v29 + v28;
      *v30 = v67.n128_u16[v28 / 2];
      *(v30 + 4) = v67.n128_u32[v28 / 4 + 1];
      v28 += 8;
    }

    while (v28 != 96);
  }

  BlueFin::GlPeTimeManager::GetTime(*(this + 1), 1, &v67);
  v65 = &off_2A1F0B5F0;
  v66 = 0;
  BlueFin::GlPeGnssTime::GetGps(&v67, &v65);
  v32 = *(this + 204);
  v33 = *(this + 10);
  *(v32 + 160 * *(this + 10) + 16) = v66;
  *v34.i64 = a2[29] + 0.5;
  *v35.i64 = *v34.i64 + trunc(*v34.i64 * 2.32830644e-10) * -4294967300.0;
  v36.f64[0] = NAN;
  v36.f64[1] = NAN;
  v37 = vnegq_f64(v36);
  *&v38 = vbslq_s8(v37, v35, v34).u64[0];
  if (*v34.i64 > 4294967300.0)
  {
    *v34.i64 = v38;
  }

  if (*v34.i64 < -4294967300.0)
  {
    *v31.i64 = -*v34.i64;
    *v34.i64 = -(*v34.i64 - trunc(*v34.i64 * -2.32830644e-10) * -4294967300.0);
    v34 = vbslq_s8(v37, v34, v31);
    *v34.i64 = -*v34.i64;
  }

  if (*v34.i64 < 0.0)
  {
    v39 = --*v34.i64;
  }

  else
  {
    LOBYTE(v39) = *v34.i64;
  }

  v40 = a3[3];
  v41 = -v40;
  v42 = -(v40 - *a3 * 299792.458);
  *v34.i64 = -(v41 + *a3 * 299792.458);
  if (v42 >= 0.0)
  {
    *v34.i64 = v42;
  }

  *v31.i64 = *v34.i64 + trunc(*v34.i64 * 2.32830644e-10) * -4294967300.0;
  v43 = vbslq_s8(v37, v31, v34);
  if (*v34.i64 <= 4294967300.0)
  {
    v43.i64[0] = v34.i64[0];
  }

  if (*v43.i64 < -4294967300.0)
  {
    *v34.i64 = -*v43.i64;
    *v43.i64 = -(*v43.i64 - trunc(*v43.i64 * -2.32830644e-10) * -4294967300.0);
    v44.f64[0] = NAN;
    v44.f64[1] = NAN;
    *v43.i64 = -*vbslq_s8(vnegq_f64(v44), v43, v34).i64;
  }

  v45 = 0;
  v46 = 0;
  if (*v43.i64 < 0.0)
  {
    v47 = --*v43.i64;
  }

  else
  {
    v47 = *v43.i64;
  }

  v48 = *(v32 + 160 * v33 + 128);
  v49 = (v48 + 1);
  while (*(v49 - 1) && *(v49 - 1) != v18)
  {
    v50 = *v49;
    v49 += 8;
    if (v50 < *(v48 + 8 * v46 + 1))
    {
      v46 = v45;
    }

    if (++v45 == 12)
    {
      goto LABEL_44;
    }
  }

  v46 = v45;
LABEL_44:
  v51 = v48 + 8 * v46;
  *v51 = v18;
  *(v51 + 1) = v39;
  *(v51 + 4) = v47;
}

unsigned __int8 *BlueFin::GlPeComputeZRH::UpdateSatPosCache(unsigned __int8 *this, const BlueFin::GlSignalIdSet *a2, int a3, double a4)
{
  v5 = this;
  v6 = *a2;
  v7 = *(a2 + 8);
  if (!*v6)
  {
    if (v7 < 2)
    {
      return this;
    }

    v12 = v7 - 1;
    v13 = v6 + 1;
    while (!*v13++)
    {
      if (!--v12)
      {
        return this;
      }
    }
  }

  v8 = *(*(this + 536) + 2568);
  if (v8 <= 0xFF9222FE)
  {
    v9 = v8;
  }

  else
  {
    v9 = v8;
  }

  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  memset(v27, 0, sizeof(v27));
  v35 = 0x4008000000000000;
  v10 = a3;
  v28 = a4;
  v29 = a3 * 0.001;
  v24 = v26;
  v25 = 8;
  memset(v26, 0, 32);
  v19 = v7;
  memcpy(v23, v6, 4 * v7);
  v21 = 0;
  v20 = 0;
  v22 = v23[0];
  this = BlueFin::GlSetIterator::operator++(&v19);
  if (v20 != v19)
  {
    v11 = v9 - v10;
    do
    {
      if (v21 >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v18 = *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v21);
      if (((*&v24[(v18 >> 3) & 0x1C] >> (v18 & 0x1F)) & 1) == 0)
      {
        v17 = 0.0;
        memset(v15, 0, sizeof(v15));
        v16 = 0;
        if (!BlueFin::GlPeComputeZRH::GetSatPosWithFullPr(v5, &v18, v27, 0, 1, v15, 0, *&v11))
        {
          v17 = v11;
          *&v24[(v18 >> 3) & 0x1C] |= 1 << v18;
          BlueFin::GlPeSatPosCache::UpdateSatPosCache((v5 + 24), &v18, v15);
        }
      }

      this = BlueFin::GlSetIterator::operator++(&v19);
    }

    while (v20 != v19);
  }

  return this;
}

double BlueFin::GlPeSatPosCache::UpdateSatPosCache(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  if ((*(*(a1 + 24) + ((v3 >> 3) & 0x1C)) >> (v3 & 0x1F)))
  {
    v4 = **(a1 + 264) + 104 * *(v3 + a1 + 71);
    *(v4 + 8) = *a3;
    *(v4 + 16) = *(a3 + 8);
    *(v4 + 24) = *(a3 + 16);
    *(v4 + 40) = *(a3 + 32);
    *(v4 + 48) = *(a3 + 40);
    *(v4 + 64) = *(a3 + 56);
    *(v4 + 72) = *(a3 + 64);
    result = *(a3 + 72);
    *(v4 + 80) = result;
  }

  return result;
}

uint64_t BlueFin::GlPeKFAltAsst::altAsstFromCitySetFine(__int16 *a1, uint64_t a2, double *a3)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1157234688;
  if (*(a1 + 2) != 1)
  {
    return 0;
  }

  v6 = *a3;
  v7 = a3[1];
  if ((BlueFin::GlPeLatLonRegionSet::disabledRegion(&BlueFin::GlPeKFAltAsst::m_otCityFine, v6, v7) & 1) != 0 || *a1 == -1 || *(a1 + 2) != 1)
  {
    return 0;
  }

  v9 = (qword_2A18BACF8 + 12 * *a1);
  v10 = *v9;
  LOWORD(v8) = v9[1];
  *&v11 = v8;
  v12 = ((v10 >> 9) - 50) + (v8 * 0.0001);
  LOWORD(v11) = v9[3];
  v13 = v12 + (v11 * 0.0001);
  v14 = v12;
  v15 = v13;
  if (*a3 < v14 || *a3 > v15)
  {
    return 0;
  }

  LOWORD(v14) = v9[4];
  *&v14 = LODWORD(v14);
  LOWORD(v15) = v9[2];
  v17 = *v9 + (LODWORD(v15) * 0.0001);
  v18 = -v17;
  if ((v10 & 0x100) == 0)
  {
    v18 = v17;
  }

  v19 = v18 + (*&v14 * 0.0001);
  v20 = a3[1];
  v21 = v19;
  if (v20 < v18 || v20 > v21)
  {
    return 0;
  }

  v24 = v9[5];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = ((v24 >> 4) - 100);
  *(a2 + 24) = (5 * (v24 & 0xF) + 5);
  return 1;
}

uint64_t BlueFin::GlPeVlss::SetFadingStatusAuto(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    DeviceFaultNotify("glpe_vlss.cpp", 53, "SetFadingStatusAuto", "rotFadingStatus == GLPE_FADING_NOT_KNOWN || rotFadingStatus == GLPE_FADING_NONE || rotFadingStatus == GLPE_FADING_DETECTED");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_vlss.cpp", 53, "rotFadingStatus == GLPE_FADING_NOT_KNOWN || rotFadingStatus == GLPE_FADING_NONE || rotFadingStatus == GLPE_FADING_DETECTED");
  }

  *(result + 4) = a2;
  return result;
}

uint64_t BlueFin::GlPeEnvironmentMonitor::RecordSignalStr(uint64_t result, unsigned __int8 *a2, float a3)
{
  v3 = *(result + 1680);
  v4 = *a2;
  v5 = *v3;
  if (v5 != v4)
  {
    v9 = v3 + 28;
    v8 = 12;
    v10 = -1;
    while (1)
    {
      v11 = (v10 + 1);
      if (v11 >= v8)
      {
        LOBYTE(v11) = v8;
      }

      if (!v5)
      {
        v8 = v11;
      }

      if (v10 == 10)
      {
        goto LABEL_13;
      }

      v12 = *v9;
      v9 += 28;
      v5 = v12;
      ++v10;
      if (v12 == v4)
      {
        v7 = v10 > 0xA;
        v6 = v10 + 1;
        goto LABEL_11;
      }
    }
  }

  v6 = 0;
  v7 = 0;
  v8 = 12;
LABEL_11:
  v13 = &v3[28 * v6];
  *(v13 + 4) = *(v13 + 8);
  *(v13 + 5) = a3;
  if (v7)
  {
LABEL_13:
    if (v8 <= 0xBu)
    {
      v14 = &v3[28 * v8];
      *v14 = v4;
      if (a3 <= 7.0)
      {
        a3 = 0.0;
      }

      *(v14 + 5) = a3;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeEnvironmentMonitor::GlPeGNSSSignalStrAnalysis(uint64_t this, double a2, double a3, unint64_t a4, int a5, int a6)
{
  v6 = a2 - a3;
  if (a2 - a3 >= 50.0)
  {
    v9 = 0.99;
  }

  else
  {
    v7 = 1.0 / v6;
    if (v6 == 0.0)
    {
      v7 = 0.0;
    }

    v8 = 1.0 - v7;
    if (v7 == 0.0)
    {
      v8 = 0.0;
    }

    v9 = v8;
  }

  v10 = 0;
  v11 = 0.0;
  while (1)
  {
    v12 = *(this + 4 * v10 + 1272);
    if (v12 < 5.0)
    {
      break;
    }

    v11 = v11 + v12;
    if (++v10 == 4)
    {
      v13 = v11 * 0.25;
      v14 = 3;
      goto LABEL_14;
    }
  }

  if (!v10)
  {
    v13 = 0.0;
    v16 = 4.0;
    goto LABEL_19;
  }

  v13 = v11 / v10;
  v14 = v10 - 1;
LABEL_14:
  v15 = vabds_f32(*(this + 1272), *(this + 1272 + 4 * v14));
  v16 = 4.0;
  if (v15 >= 4.0)
  {
    v16 = v15;
  }

  if (v13 > 36.0)
  {
    v13 = 36.0;
  }

LABEL_19:
  v17 = *(this + 1288);
  if (v17 == 0.0)
  {
    v18 = v13;
    v17 = v18;
  }

  v19 = 1.0 - v9;
  v20 = (v9 * v17) + v19 * v13;
  *(this + 1288) = v20;
  v21 = *(this + 1296);
  if (v21 == 0.0)
  {
    v22 = v16;
    v21 = v22;
  }

  v23 = (v9 * v21) + v19 * v16;
  *(this + 1296) = v23;
  if (v6 >= 10.0000095)
  {
    v24 = (v20 + v23);
    v25 = v24 * 0.1;
    v26 = *(this + 1320);
    if (v26)
    {
      if (v26 >= 2)
      {
        v27 = 1;
        if (v13 >= (v20 - v23) - v25 || (a6 & 1) != 0)
        {
          goto LABEL_40;
        }

        *(this + 1292) = v20;
        *(this + 1300) = v23;
        *(this + 1304) = a2;
        goto LABEL_38;
      }

      if (v26 == 1)
      {
LABEL_38:
        *(this + 1320) = 2;
        v27 = 1;
        goto LABEL_40;
      }

      v27 = 0;
    }

    else
    {
      if (v13 >= (v20 - v23))
      {
        v28 = 1;
      }

      else
      {
        v28 = a6;
      }

      v27 = 1;
      if (v28)
      {
        v29 = 2;
      }

      else
      {
        v29 = 1;
      }

      *(this + 1320) = v29;
      if ((v28 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    *(this + 1312) = a2;
    if (a5)
    {
      v30 = 60;
    }

    else
    {
      v30 = 180;
    }

    if (*(this + 1264) > 4.0 && *(this + 1256) < 20.0 && *(this + 12) >= v30 && ((v31 = 9.0, (a5 & 1) != 0) || *this == 1) || (v31 = 15.5, (v20 + -20.0) >= 15.5) || (v31 = 12.5, (v20 + -20.0) < 12.5))
    {
      *(this + 1696) = v31;
    }

    v32 = 0;
    v33 = 0;
    *(this + 1688) = 0;
    v34 = *(this + 1680);
    v35 = 0.0;
    v36 = v34;
    v37 = 0.0;
    do
    {
      v38 = v34 + 28 * v32;
      if (*v38)
      {
        v39 = 0;
        *(v38 + 24) = 0;
        v40 = 0.0;
        for (i = 4; i != 24; i += 4)
        {
          v42 = *(v36 + i);
          if (v42 > 0.0)
          {
            ++v39;
            v40 = v40 + v42;
          }
        }

        if (v39 >= 4u)
        {
          v43 = v39;
          v44 = v40 / v43;
          v45 = 0.0;
          for (j = 4; j != 24; j += 4)
          {
            v47 = *(v36 + j);
            if (v47 > 0.0)
            {
              v45 = v45 + ((v47 - v44) * (v47 - v44));
            }
          }

          v48 = sqrtf(v45 / v43);
          *(v34 + 28 * v32 + 24) = v48;
          if (v48 > v37)
          {
            v37 = v48;
          }

          v35 = v35 + v48;
          *(this + 1688) = v35;
          ++v33;
        }
      }

      ++v32;
      v36 += 28;
    }

    while (v32 != 12);
    if (v33 > 5u)
    {
      v35 = (v35 - v37) / (v33 - 1);
      *(this + 1688) = v35;
    }

    if (v27)
    {
      v49 = *(this + 1692);
      v50 = a4;
      v51 = v49 > 0.0 && ((v50 - v49) / 1000.0) < 6.0;
      if (v35 > 1.0 || v51)
      {
        *(this + 1320) = 3;
        *(this + 1692) = v50;
      }

      else
      {
        *(this + 1320) = 2;
      }
    }

    *(this + 1700) = a5;
    if (v13 <= v24)
    {
      if (v13 < (v20 - v23) - v25)
      {
        *(this + 1702) = 0;
        *(this + 1704) = 0;
        v56 = (*(this + 1705) + 1);
        if (v56 >= 0x5A)
        {
          LOBYTE(v56) = 90;
        }

        *(this + 1705) = v56;
        v57 = (*(this + 1706) + 1);
        if (v57 >= 0x5A)
        {
          v58 = 90;
        }

        else
        {
          v58 = *(this + 1706) + 1;
        }

        *(this + 1706) = v58;
        if (v57 >= 0xB)
        {
          v55 = 0;
          *(this + 1703) = 0;
LABEL_105:
          *(this + 1701) = v55;
          return this;
        }

        if (v57 == 10)
        {
LABEL_104:
          v55 = 0;
          goto LABEL_105;
        }

LABEL_102:
        if (*(this + 1703) >= 0x10u)
        {
          v55 = *(this + 1705) > 0xFu;
          goto LABEL_105;
        }

        goto LABEL_104;
      }

      v53 = (*(this + 1702) + 1);
      if (v53 >= 0x5A)
      {
        v59 = 90;
      }

      else
      {
        v59 = *(this + 1702) + 1;
      }

      *(this + 1702) = v59;
      *(this + 1704) = 0;
      *(this + 1706) = 0;
      if (v53 >= 6)
      {
        v55 = 0;
        *(this + 1703) = 0;
        goto LABEL_98;
      }
    }

    else
    {
      *(this + 1702) = 0;
      v52 = (*(this + 1703) + 1);
      if (v52 >= 0x5A)
      {
        LOBYTE(v52) = 90;
      }

      *(this + 1703) = v52;
      v53 = (*(this + 1704) + 1);
      if (v53 >= 0x5A)
      {
        v54 = 90;
      }

      else
      {
        v54 = *(this + 1704) + 1;
      }

      *(this + 1704) = v54;
      *(this + 1706) = 0;
      if (v53 >= 6)
      {
        v55 = 0;
LABEL_98:
        *(this + 1705) = 0;
        goto LABEL_105;
      }
    }

    if (v53 == 5)
    {
      goto LABEL_104;
    }

    goto LABEL_102;
  }

  return this;
}

void BlueFin::BigMatrix::Clone(BlueFin::BigMatrix *this, int a2, int a3)
{
  *(this + 4) = a2;
  *(this + 5) = a3;
  if (*(this + 6) < a2 || (v4 = *(this + 7), v4 < a3))
  {
    DeviceFaultNotify("glpe_matrix.cpp", 883, "Clone", "m_NbRows <= m_NbMaxRows && m_NbCols <= m_NbMaxCols");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 883, "m_NbRows <= m_NbMaxRows && m_NbCols <= m_NbMaxCols");
  }

  v5 = 8 * v4 * a2;
  v6 = (*(*(this + 1) + 8) + 8);

  bzero(v6, v5);
}

BOOL BlueFin::GlPeSatPosCache::GetHFromCache(uint64_t a1, unsigned __int8 *a2, unsigned int a3, uint64_t a4)
{
  v4 = *a2;
  v5 = (1 << (v4 & 0x1F)) & *(*(a1 + 24) + ((v4 >> 3) & 0x1C));
  if (v5)
  {
    v6 = (**(a1 + 264) + 104 * *(v4 + a1 + 71));
    v7 = v6[24];
    v8 = *(*(a4 + 8) + 8 * a3);
    *(v8 + 8) = v6[23];
    *(v8 + 24) = v7;
    *(v8 + 56) = v6[25];
    *(v8 + 40) = 0x3FF0000000000000;
  }

  return v5 != 0;
}

uint64_t BlueFin::BigMatrix_F::ReShape(uint64_t this, int a2, int a3)
{
  if ((a2 - 1) > 0x14 || (a3 - 1) >= 0x15)
  {
    DeviceFaultNotify("glpe_matrix.cpp", 1779, "ReShape", "bCond");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 1779, "bCond");
  }

  *(this + 1944) = a2;
  *(this + 1948) = a3;
  return this;
}

const BlueFin::BigMatrix_F *BlueFin::BigMatrix_F::mult_sym(const BlueFin::BigMatrix_F *this, BOOL a2, const BlueFin::BigMatrix_F *a3, const BlueFin::BigMatrix_F *a4)
{
  if (this == a3)
  {
    v16 = "this != &mLeft";
    DeviceFaultNotify("glpe_matrix.cpp", 1695, "mult_sym", "this != &mLeft");
    v17 = 1695;
    goto LABEL_18;
  }

  if (this == a4)
  {
    v16 = "this != &mRight";
    DeviceFaultNotify("glpe_matrix.cpp", 1696, "mult_sym", "this != &mRight");
    v17 = 1696;
    goto LABEL_18;
  }

  v4 = *(a3 + 486);
  if (v4 != *(a4 + 486))
  {
    v16 = "mLeft.m_NbRows == mRight.m_NbRows";
    DeviceFaultNotify("glpe_matrix.cpp", 1699, "mult_sym", "mLeft.m_NbRows == mRight.m_NbRows");
    v17 = 1699;
    goto LABEL_18;
  }

  v5 = *(a3 + 487);
  if (v5 != *(a4 + 487))
  {
    v16 = "mLeft.m_NbCols == mRight.m_NbCols";
    DeviceFaultNotify("glpe_matrix.cpp", 1701, "mult_sym", "mLeft.m_NbCols == mRight.m_NbCols");
    v17 = 1701;
LABEL_18:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", v17, v16);
  }

  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = a4;
      v8 = i;
      if (i < v5)
      {
        do
        {
          v9 = 0.0;
          if (v4 >= 1)
          {
            v10 = a3;
            v11 = v7;
            v12 = v4;
            do
            {
              v13 = *v10;
              v10 = (v10 + 84);
              v14 = v13;
              v15 = *v11;
              v11 += 21;
              v9 = v9 + (v14 * v15);
              --v12;
            }

            while (v12);
          }

          *(this + 21 * i + v8) = v9;
          *(this + 21 * v8++ + i) = v9;
          v7 = (v7 + 4);
        }

        while (v8 != v5);
      }

      a4 = (a4 + 4);
      a3 = (a3 + 4);
    }
  }

  *(this + 486) = v5;
  *(this + 487) = v5;
  return this;
}

BOOL BlueFin::BigMatrix_F::choldci(BlueFin::BigMatrix_F *this, unsigned int a2, float *a3)
{
  if (a2 < 1)
  {
    return 1;
  }

  else
  {
    v5 = a2;
    bzero(a3, 4 * a2);
    v6 = 0;
    v7 = 0;
    v8 = 2;
    v9 = this;
    do
    {
      v10 = v9;
      v11 = v6;
      do
      {
        v12 = *(this + 21 * v6 + v11);
        v13 = v6 - 1;
        v14 = v8;
        if (v6 >= 2)
        {
          do
          {
            v12 = (v12 - (*(this + 21 * v6 + (v14 - 3)) * *(this + 21 * v11 + (v14 - 3)))) - (*(this + 21 * v6 + (v14 - 4)) * *(this + 21 * v11 + (v14 - 4)));
            v14 -= 2;
          }

          while (v14 > 3);
          v13 = v14 - 3;
        }

        if ((v13 & 0x80000000) == 0)
        {
          v15 = 4 * v13;
          do
          {
            v12 = v12 - (*(v9 + v15) * *(v10 + v15));
            v15 -= 4;
          }

          while (v15 != -4);
        }

        if (v6 == v11)
        {
          if (v12 <= 0.0)
          {
            return v7;
          }

          a3[v6] = 1.0 / sqrtf(v12);
        }

        else
        {
          *(this + 21 * v11 + v6) = v12 * a3[v6];
        }

        ++v11;
        v10 = (v10 + 84);
      }

      while (v11 != v5);
      ++v6;
      ++v8;
      v9 = (v9 + 84);
      v7 = v6 >= v5;
    }

    while (v6 != v5);
    return 1;
  }
}

uint64_t BlueFin::GlPeHula::ExtSensTempMonitor::MonitorExternalSensorTemp(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = *(a2 + 28);
  v4 = v3 - *(result + 4);
  if (v4 >= 0xEA61)
  {
    *result = 0;
  }

  if (*(a2 + 24 + a3) == 1)
  {
    v5 = *(a2 + 8 + 8 * a3 + 4);
    if (*result == 1)
    {
      v6 = *(result + 12);
    }

    else
    {
      *(result + 416) = v5;
      *(result + 420) = 0;
      *(result + 12) = v3;
      *result = 1;
      v6 = v3;
    }

    *(result + 8) = v5;
    *(result + 424) = *(a2 + 8 + 8 * a3);
    *(result + 4) = v3;
    v7 = (v3 - v6) * 0.001;
    if (v3 && (v4 * 0.001) > 0.0)
    {
      v8 = (v5 * 0.01) + (*(result + 416) * 0.99);
      *(result + 416) = v8;
      v9 = *(result + 420);
      v10 = v9;
      *(result + 4 * v9 + 16) = v8;
    }

    else
    {
      v9 = *(result + 420);
      v10 = v9;
    }

    v11 = (v9 + 1) % 0x64uLL;
    v12 = *(result + 16 + 4 * v10);
    v13 = *(result + 16 + 4 * v11);
    *(result + 420) = v11;
    v14 = *(result + 1);
    v15 = vabds_f32(v12, v13);
    v16 = (v15 < 1.0) & ~v14;
    if (v7 <= 100.0)
    {
      v16 = 0;
    }

    v17 = (v16 | v14) & (v15 > 1.05);
    if (v7 <= 100.0)
    {
      v17 = 0;
    }

    if ((v16 & 1) != 0 || v17)
    {
      *(result + 1) = v17 ^ 1;
    }

    *(a2 + 24 + a3) = 0;
  }

  return result;
}

BOOL BlueFin::GlPeNavGnssBlocked::PublishIndoorPropagation(BlueFin::GlPeNavGnssBlocked *this, int a2)
{
  if (*(this + 120) == 1 && (*(this + 21) ? (v2 = *(this + 29) == 0) : (v2 = 1), !v2 && *(this + 121) == 1))
  {
    v3 = a2 - *(this + 10);
    v4 = *(this + 23);
    v5 = *(this + 9);
    if (v4 <= v5)
    {
      v4 = *(this + 9);
    }

    v6 = v4 * (v3 / 0x3E8);
    return v3 <= *(this + 24) && v6 <= *(this + 26);
  }

  else
  {
    return 0;
  }
}

uint64_t BlueFin::GlPeKfPool::SetTcxoMitigationState(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = a1 + 37248;
  do
  {
    result = (*(**(v4 + v3) + 384))(*(v4 + v3));
    if (result)
    {
      result = (*(**(v4 + v3) + 280))(*(v4 + v3), a2);
    }

    v3 += 8;
  }

  while (v3 != 24);
  return result;
}

uint64_t BlueFin::GlPeSensStats::updateGnssState(uint64_t this, const BlueFin::GlPeNavGnssState *a2, double a3, double a4, double a5, int8x16_t a6, int8x16_t a7)
{
  v7 = *(this + 176);
  v8 = *(this + 48);
  *a6.i64 = v7 - v8;
  v9 = *(a2 + 50);
  if (v7 - v8 >= 0.0)
  {
    *a7.i64 = *a6.i64 - trunc(*a6.i64 * 2.32830644e-10) * 4294967300.0;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    a7.i64[0] = vbslq_s8(vnegq_f64(v11), a7, a6).u64[0];
    if (*a6.i64 > 4294967300.0)
    {
      a6.i64[0] = a7.i64[0];
    }

    v12 = v9 - *(this + 184);
    v10 = v12 > 0x5DC && v12 < *(this + 4) + 2000 * *a6.i64;
  }

  else
  {
    v10 = 0;
  }

  if (*(a2 + 240))
  {
    v14 = sqrt(*(a2 + 14) * *(a2 + 14) + *(a2 + 13) * *(a2 + 13));
    v15 = *(this + 120);
    if (v14 >= v15 || v10)
    {
      v16 = 1;
    }

    else
    {
      if (v14 >= v15)
      {
        v15 = v14;
      }

      if (v15 * 3.0 >= *(a2 + 32))
      {
        *(this + 172) = 0;
        goto LABEL_25;
      }

      v16 = -1;
    }

    *(this + 172) = v16;
LABEL_25:
    *(this + 176) = v14;
    *(this + 184) = v9;
    return this;
  }

  v17 = v8 * 0.5;
  v18 = v7 > v17;
  if (v17 >= a3)
  {
    v18 = 0;
  }

  v19 = v18 || v10;
  if (v19 != 1)
  {
    v19 = -1;
  }

  *(this + 172) = v19;
  return this;
}

uint64_t BlueFin::GlPeHula::UpdateNoMotionState(BlueFin::GlPeHula *this)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(this + 1054) == 6 && *(this + 4224) == 1)
  {
    v2 = *(this + 4226) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  BlueFin::GlPeSensStats::UpdateNoMotionState(this, *(*(this + 126) + 576), v2 & 1);
  v4[0] = 0x200000011;
  v5 = 1;
  v6 = 0;
  v7 = *(this + 81) >= *this;
  v8 = 4;
  return BlueFin::GlPeHula::MovingStateSensorData::Update(this + 4208, v4);
}

uint64_t BlueFin::GlPeSensStats::UpdateNoMotionState(uint64_t this, unsigned int a2, char a3)
{
  v4 = this;
  v5 = 0;
  v6 = 0;
  v52 = *MEMORY[0x29EDCA608];
  v7 = (this + 952);
  do
  {
    *&v51[v5 + 24] = *(this + v6 + 232) - *(this + v5 + 488);
    *&v51[v5] = *(this + v6 + 632) - *(this + v5 + 952);
    v6 += 96;
    v5 += 8;
  }

  while (v6 != 288);
  if (*(this + 188) == 1)
  {
    v8 = 0;
    v9 = 0;
    v11 = *(this + 96);
    v10 = *(this + 104);
    v12 = (this + 560);
    v13 = *(this + 8);
    v14 = *(this + 1001);
    v15 = (this + 232);
    v16 = 1;
    v17 = 3;
    do
    {
      v18 = *v15 - *(v12 - 9);
      if (v18 < 0.0)
      {
        v18 = -v18;
      }

      if (v14)
      {
        if (v10 >= *(v12 - 3) * 3.0)
        {
          v19 = *(v12 - 3) * 3.0;
        }

        else
        {
          v19 = v10;
        }

        v20 = *v12;
        v21 = *v12 * 3.0;
        if (v11 < v21)
        {
          v21 = v11;
        }
      }

      else
      {
        v20 = *v12;
        v19 = v10;
        v21 = v11;
      }

      v22 = v18 < v21;
      v23 = v15[1];
      if (v23 <= v19)
      {
        ++v9;
      }

      if (v23 <= v10 * 0.25)
      {
        ++v8;
      }

      v24 = 1.0;
      if (v20 != v13)
      {
        v24 = *(this + 24);
      }

      v16 &= v22;
      *v12 = v20 + v24 * (v18 - v20);
      v25 = *v15;
      v15 += 12;
      *(v12 - 9) = v25;
      ++v12;
      --v17;
    }

    while (v17);
    if (v8)
    {
      v26 = 1;
    }

    else
    {
      v26 = v9 > 1u;
    }

    if (v26)
    {
      v27 = v16;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    this = BlueFin::GlPeSensStats::reset(this);
    v27 = 0;
  }

  v28 = *(v4 + 585);
  if (v28 == 1)
  {
    v29 = *(v4 + 88);
    v30 = *(v4 + 112);
    v31 = (v4 + 640);
    v32 = 3;
    v33 = *(v4 + 1001);
    do
    {
      v34 = v29;
      if (v33)
      {
        v34 = *(v7 - 3) * 3.0;
        if (v29 < v34)
        {
          v34 = v29;
        }
      }

      v35 = *(v31 - 1);
      v36 = *v31 < v34;
      v37 = *v7 - v35;
      if (v37 < 0.0)
      {
        v37 = -v37;
      }

      if (v37 >= v30)
      {
        v36 = 0;
      }

      LOBYTE(v28) = v28 & v36;
      *v7++ = v35;
      v31 += 12;
      --v32;
    }

    while (v32);
    if (v28)
    {
      if (*(v4 + 172) != -1)
      {
        goto LABEL_41;
      }

      v46 = 0;
      v47 = 0;
      do
      {
        v48 = (v4 + 648 + v46);
        v49 = vld1q_dup_f64(v48);
        v47 = vsub_s32(v47, vmovn_s64(vcgtq_f64(v49, *(v4 + 128))));
        v46 += 96;
      }

      while (v46 != 288);
      if (v47.u8[4] <= 1u && (!v47.i8[4] || v47.u8[0] < 2u))
      {
LABEL_41:
        v38 = 1;
        goto LABEL_44;
      }
    }
  }

  else
  {
    this = BlueFin::GlPeSensStats::reset(v4);
  }

  v38 = 0;
LABEL_44:
  v39 = v27 & v38;
  if (*(v4 + 172) == 1)
  {
    v39 = 0;
  }

  if (v39 & 1) != 0 || (a3)
  {
    ++*(v4 + 162);
LABEL_64:
    ++*(v4 + 160);
  }

  else
  {
    *(v4 + 162) = 0;
    if (*(v4 + 152) == 1)
    {
      v40 = 0;
      v41 = *(v4 + 112);
      v42 = v4;
      while (1)
      {
        v43 = v42[79] - v42[85];
        if (v43 < 0.0)
        {
          v43 = -v43;
        }

        if (v43 > v41 || v42[81] > *(v4 + 56))
        {
          break;
        }

        v44 = *&v51[v40];
        if (v44 < 0.0)
        {
          v44 = -v44;
        }

        if (v44 > v41 || v42[30] > *(v4 + 64))
        {
          break;
        }

        v45 = *&v51[v40 + 24];
        if (v45 < 0.0)
        {
          v45 = -v45;
        }

        if (v45 > *(v4 + 96))
        {
          break;
        }

        v40 += 8;
        v42 += 12;
        if (v40 == 24)
        {
          goto LABEL_64;
        }
      }

      *(v4 + 160) = 0;
    }
  }

  return this;
}

double BlueFin::GlPeContextThresholds::SetContext(uint64_t a1, int a2)
{
  if (!a2)
  {
    v9 = "etContext != UNKNOWN";
    DeviceFaultNotify("glpe_sens_stats.cpp", 560, "SetContext", "etContext != UNKNOWN");
    v10 = 560;
    goto LABEL_7;
  }

  if (*(a1 + 64) == a2)
  {
    return result;
  }

  if (a2 >= 5)
  {
    v9 = "false";
    DeviceFaultNotify("glpe_sens_stats.cpp", 592, "SetContext", "false");
    v10 = 592;
LABEL_7:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_sens_stats.cpp", v10, v9);
  }

  v2 = a2 - 1;
  result = dbl_298A45620[v2];
  v4 = qword_298A45640[v2];
  v5 = qword_298A45660[v2];
  v6 = qword_298A45680[v2];
  v7 = qword_298A456A0[v2];
  v8 = qword_298A456C0[v2];
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = 0x3FF0000000000000;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = 0x4014000000000000;
  *(a1 + 64) = a2;
  return result;
}

unsigned __int16 *BlueFin::GlPeSensStats::UpdateGyroBias(unsigned __int16 *this, unsigned int a2)
{
  v2 = this[81];
  if (this[81])
  {
    v3 = *(this + 1001);
    v4 = 1.0;
    if (v3 == 1)
    {
      v4 = *(this + 3);
    }

    v5 = (this + 268);
    v6 = 3;
    v7 = this;
    do
    {
      v8 = *(v7 + 30);
      if (!v3)
      {
        v8 = v8 + v8;
      }

      *v5 = *v5 + v4 * (v8 - *v5);
      v9 = *(v7 + 80);
      if (!v3)
      {
        v9 = v9 + v9;
      }

      v5[49] = v5[49] + v4 * (v9 - v5[49]);
      v7 += 48;
      ++v5;
      --v6;
    }

    while (v6);
    *(this + 1001) = 1;
  }

  v10 = *this;
  if (v2 >= v10)
  {
    for (i = 0; i != 144; i += 48)
    {
      if (*&this[i + 344] <= 0.0)
      {
LABEL_23:
        v17 = 0;
        v18 = this + 256;
        v19 = (this + 344);
        do
        {
          v20 = *(v19 - 6);
          v21 = v20;
          if (v20 > 0.0)
          {
            if (*(v19 - 5) * 0.33 >= v20)
            {
              v21 = *(v19 - 5) * 0.33;
            }

            else
            {
              v21 = *(v19 - 6);
            }
          }

          if (v21 > 0.0)
          {
            v22 = *v19;
            v23 = 1.0;
            if (*v19 <= 0.0 || (v23 = v22 / (v21 * v21 + v22), v23 > 0.0))
            {
              v24 = v20 * v23 * (v20 * v23) + (1.0 - v23) * (1.0 - v23) * v22;
              v25 = *(v19 - 1);
              v26 = *(v19 - 7) - v25;
              *(v19 - 1) = v25 + v26 * v23;
              *v19 = v24 + v23 * (1.0 - v23) * (v26 * v26);
              *&this[v17 + 444] = a2;
            }
          }

          *v18 = *(v18 + 3);
          *(v18 + 49) = *(v18 + 52);
          v17 += 2;
          v19 += 12;
          v18 += 4;
        }

        while (v17 != 6);
        goto LABEL_49;
      }
    }

    v12 = (this + 344);
    v13 = 3;
    while (1)
    {
      v14 = *(v12 - 7) - *(v12 - 1);
      if (v14 < 0.0)
      {
        v14 = -v14;
      }

      v15 = *v12;
      v16 = *(this + 19) * sqrtf(v15);
      if (*(this + 18) < v16)
      {
        v16 = *(this + 18);
      }

      if (v14 > v16)
      {
        break;
      }

      v12 += 12;
      if (!--v13)
      {
        *(this + 993) = 0;
        *(this + 494) = 0;
        goto LABEL_23;
      }
    }

    v27 = *(this + 1000);
    if (v27)
    {
      v28 = (this + 488);
      v29 = (this + 344);
      v30 = 3;
      do
      {
        v31 = *v28;
        v32 = *(v29 - 7) - *v28;
        v33 = *v29;
        v34 = sqrtf(v33);
        if (v34 >= *v28)
        {
          v31 = v34;
        }

        v28[3] = v31;
        if (v32 < 0.0)
        {
          v32 = -v32;
        }

        if (v32 > v31)
        {
          *(this + 1000) = 0;
          goto LABEL_48;
        }

        v29 += 12;
        ++v28;
        --v30;
      }

      while (v30);
      v35 = v27 + 1;
      *(this + 1000) = v35;
      if (*(this + 80) <= v35)
      {
        goto LABEL_23;
      }
    }

    else
    {
      *(this + 1000) = 1;
      v36 = (this + 488);
      v37 = (this + 344);
      v38 = 3;
      do
      {
        v39 = *(v37 - 7);
        *v36 = v39;
        v40 = *v37;
        v37 += 12;
        v41 = v40;
        v36[3] = sqrtf(v41);
        ++v36;
        --v38;
      }

      while (v38);
    }

LABEL_48:
    this[81] = v10 - 1;
  }

LABEL_49:
  v42 = 0;
  v43 = this + 444;
  v44 = (this + 344);
  do
  {
    if (*&v43[v42] + 1000 < a2 && *v44 > 0.0)
    {
      v45 = *v44;
      v46 = sqrtf(v45);
      *v44 = (*(this + 4) + v46) * (*(this + 4) + v46);
      *&v43[v42] = a2;
    }

    v42 += 2;
    v44 += 12;
  }

  while (v42 != 6);
  v47 = 0;
  while (1)
  {
    v48 = *&this[v47 + 344];
    if (v48 <= 0.0 || v48 > *(this + 5))
    {
      break;
    }

    v47 += 48;
    if (v47 == 144)
    {
      *(this + 584) = 1;
      return this;
    }
  }

  return this;
}

uint64_t BlueFin::GlPeSensStats::UpdateTurningState(BlueFin::GlPeSensStats *this, int a2)
{
  v2 = *(this + 81) < *this;
  if (*(this + 584) == 1)
  {
    v2 = 0;
    v3 = (this + 680);
    v4 = 3;
    do
    {
      v5 = *(v3 - 6);
      v6 = *v3;
      v3 += 12;
      v7 = v5 - v6;
      if (v7 < 0.0)
      {
        v7 = -v7;
      }

      v2 |= v7 > *(this + 18);
      --v4;
    }

    while (v4);
  }

  if (v2)
  {
    *(this + 41) = a2;
  }

  *(this + 42) = a2;
  return v2 & 1;
}

uint64_t BlueFin::GlPeKfPool::GetADRDeltaPos(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = a1 + 37304;
  v6 = a1 + 37248;
  do
  {
    BlueFin::GlPeNavGnssState::GlPeNavGnssState(v8);
    BlueFin::GlPeNavGnssState::operator=(v5, v8);
    result = (*(**(v6 + v4) + 384))();
    if (result)
    {
      result = (*(**(v6 + v4) + 304))(*(v6 + v4), v5, a3);
    }

    v4 += 8;
    v5 += 528;
  }

  while (v4 != 24);
  return result;
}

uint64_t BlueFin::GlPeNavGnssKF::GetADRDeltaPos(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v216 = v3;
  v217 = v4;
  v5 = v2;
  v312[23] = *MEMORY[0x29EDCA608];
  v6 = &v230 + 8;
  v230 = xmmword_298A43F70;
  v228 = &v231;
  v229 = &v232;
  v232 = 0;
  for (i = 1; i != 22; ++i)
  {
    v229[i] = v6;
    v6 += 96;
  }

  v225 = v227;
  v226 = 0x1500000000;
  memset(v227, 0, sizeof(v227));
  v222 = v224;
  v223 = 0x1500000000;
  memset(v224, 0, sizeof(v224));
  v221[0] = 1;
  v220 = v2;
  if ((*(v3 + 1) & 0x20) == 0)
  {
    goto LABEL_187;
  }

  v8 = *(v2[284] + 8);
  v9 = v8 && (*(v2 + *(*v2 - 24) + 200) - v8) >> 5 <= 0x752 && *(v2[281] + 8) != 6;
  v11 = v2[281];
  v213 = v2 + 167;
  if ((*(v11 + 8) - 1) > 1)
  {
    v13 = 49.0;
  }

  else
  {
    v12 = *(v11 + 16);
    v13 = v12 == 2 ? 147.0 : dbl_298A43F80[v12 == 3];
  }

  v5 = v2;
  v10 = *(*(v2[5] + 8) + 8) + *(*(v2[5] + 24) + 24);
  if ((*(*v2 + 56))(v2) < 0xF || v9 || v10 > v13)
  {
    goto LABEL_187;
  }

  v14 = *v220;
  if (*(v220 + *(*v220 - 24) + 242) != 1)
  {
    goto LABEL_187;
  }

  v15 = 0;
  v293[1] = 0xC0000000CLL;
  memset(v294, 0, sizeof(v294));
  v295 = 0;
  v293[0] = v294;
  v288 = &v290;
  v289 = 0x1500000000;
  v290 = 0u;
  memset(v291, 0, sizeof(v291));
  memset(v292, 0, 32);
  do
  {
    v16 = &(&v296)[v15];
    *(v16 + 32) = 0;
    *(v16 + 9) = -1;
    *(v16 + 20) = 575;
    v15 += 7;
  }

  while (v15 != 147);
  v17 = v220 + *(v14 - 24);
  v18 = *(v17 + 11);
  v19 = **(v220 + 280);
  v262 = v293;
  v263 = v17 + 8;
  v264 = v18;
  v265 = v19;
  v266 = 0x4C100000003;
  v267 = v17 + 104;
  v268 = 0;
  v269 = v17 + 152;
  v270 = 0u;
  v271 = 0u;
  v272 = 0;
  v273 = 0x4008000000000000;
  v233 = &v288;
  v234 = &v222;
  *&v235 = &v228;
  *(&v235 + 1) = &v225;
  v236 = 0u;
  v237 = 0u;
  v238 = 0;
  v20 = *(v220 + 26);
  BlueFin::GlPeNavMeasSelect::GlPeNavMeasSelect(&v239, *(v220 + 2), *(v220 + 1));
  BlueFin::GlSetBase::GlSetBase(&v256, &v257 + 1, 0x13u, (*(v220 + 1) + 184));
  BlueFin::GlPeNavMeasSelect::SelectADR(&v239, &v256);
  v254 = &v255[4];
  v255[0] = 19;
  memset(&v255[4], 0, 76);
  BlueFin::GlSetBase::GlSetBase(v280, v280 + 3, 0x13u, (*(v220 + 1) + 184));
  v251 = v253;
  v252 = 8;
  memset(v253, 0, 32);
  bzero(&v308, 0x320uLL);
  for (j = 0; j != 1200; j += 12)
  {
    v22 = &v304[j];
    *v22 = 0;
    *(v22 + 1) = -1;
    *(v22 + 4) = 575;
  }

  if (v20)
  {
    v23 = 21;
  }

  else
  {
    v23 = 12;
  }

  v218 = v23;
  v303 = 0;
  memset(v302, 0, sizeof(v302));
  LOBYTE(v249) = v257;
  memcpy(v250, v256, 4 * v257);
  WORD1(v249) = 0;
  BYTE1(v249) = 0;
  HIDWORD(v249) = v250[0];
  BlueFin::GlSetIterator::operator++(&v249);
  v25 = 0;
  if (BYTE1(v249) != v249)
  {
    v25 = 0;
    do
    {
      v275 = 0;
      v276 = 0;
      HIDWORD(v278) = -1;
      v277 = xmmword_298A419D0;
      LOWORD(v279) = 0;
      BYTE2(v279) = 0;
      LOBYTE(v278) = 0;
      DWORD1(v278) = -1;
      WORD4(v278) = 575;
      if (WORD1(v249) >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v26 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v249);
      v27 = *v26;
      LODWORD(v26) = v26[1];
      LOBYTE(v245) = v27;
      HIDWORD(v245) = v26;
      v246 = WORD1(v249);
      if (BlueFin::GlPeNavUtil::PackSkfMeas_ADR_SignalId(v220, &v275, &v245, 3) && ((*(*&v280[0] + 4 * (v246 >> 5)) >> (v246 & 0x1F)) & 1) != 0)
      {
        *(&v308 + v25) = -*(BlueFin::GlPeMsmtMgr::GetPeMeas(*(v220 + 1), &v245, 0) + 104);
        v28 = &v304[12 * v25];
        if (v28 != &v245)
        {
          *v28 = v245;
          *(v28 + 1) = HIDWORD(v245);
          *(v28 + 4) = v246;
        }

        ++v25;
      }

      BlueFin::GlSetIterator::operator++(&v249);
    }

    while (BYTE1(v249) != v249 && v25 <= 0x63u);
  }

  BlueFin::GlSortDoubles(&v308, v25, v302, v24);
  v29 = 0;
  v30 = 0;
  v31 = v25;
  v32 = &v296;
  v214 = v31;
  do
  {
    if (v29 && v30 > 5)
    {
      break;
    }

    if (v31)
    {
      v33 = v302;
      while (1)
      {
        v34 = *v33++;
        v35 = &v304[12 * v34];
        if (((*&v251[(*v35 >> 3) & 0x1C] >> (*v35 & 0x1F)) & 1) == 0)
        {
          if (BlueFin::GlPeNavUtil::PackSkfMeas_ADR_SignalId(v220, v32, v35, v29))
          {
            *&v251[(*v35 >> 3) & 0x1C] |= 1 << *v35;
            v32 += 7;
            v254[v35[4] >> 5] |= 1 << v35[4];
            if (v218 == ++v30)
            {
              break;
            }
          }
        }

        if (!--v31)
        {
          goto LABEL_41;
        }
      }

      v30 = v218;
    }

LABEL_41:
    ++v29;
    v31 = v214;
  }

  while (v29 != 3);
  v36 = 0;
  v37 = &v256[4 * v257 - 4];
  do
  {
    if (*v37)
    {
      v38 = *v37 - (((*v37 >> 1) & 0x5B6DB6DB) + ((*v37 >> 2) & 0x9249249));
      v36 = ((v38 + (v38 >> 3)) & 0xC71C71C7) + v36 - 63 * (((v38 + (v38 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    v37 -= 4;
  }

  while (v37 >= v256);
  v39 = v254;
  v40 = v255[0];
  if ((v36 & 0xFFFC) == 0)
  {
    bzero(v254, ((4 * v255[0] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  }

  v41 = 0;
  v42 = &v39[v40 - 1];
  do
  {
    if (*v42)
    {
      v43 = *v42 - (((*v42 >> 1) & 0x5B6DB6DB) + ((*v42 >> 2) & 0x9249249));
      v41 = ((v43 + (v43 >> 3)) & 0xC71C71C7) + v41 - 63 * (((v43 + (v43 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v42;
  }

  while (v42 >= v39);
  v44 = v41;
  if (!v41)
  {
    v221[0] = 1;
    v47 = &v304[12];
    *v304 = &v304[12];
    v52 = 4;
    v304[8] = 4;
    *&v304[20] = 0;
    *&v304[12] = 0;
    v51 = v220;
LABEL_67:
    v53 = v52 - 1;
    v54 = v47 + 1;
    while (1)
    {
      if (*v54++)
      {
        goto LABEL_63;
      }

      if (!--v53)
      {
        goto LABEL_70;
      }
    }
  }

  if (*(&v299 + 14 * v41 - 11) == -1)
  {
    DeviceFaultNotify("glpe_navgnsskf.cpp", 439, "getMeasForADR", "cNbTotalKfMeas==0 || pSkfMeasIn[cNbTotalKfMeas-1].eMeasType != SKF_MEAS_INVALID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navgnsskf.cpp", 439, "cNbTotalKfMeas==0 || pSkfMeasIn[cNbTotalKfMeas-1].eMeasType != SKF_MEAS_INVALID");
  }

  if (v41 > v218)
  {
    DeviceFaultNotify("glpe_navgnsskf.cpp", 440, "getMeasForADR", "cNbTotalKfMeas <= ulMaxMeas");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navgnsskf.cpp", 440, "cNbTotalKfMeas <= ulMaxMeas");
  }

  v45 = 0;
  v46 = 0;
  v221[0] = 1;
  v47 = &v304[12];
  *v304 = &v304[12];
  v304[8] = 4;
  *&v304[20] = 0;
  *&v304[12] = 0;
  v48 = &v299 + 3;
  do
  {
    if (*v48 == 10)
    {
      v49 = v221[0];
      if (v221[0] - 576 <= 0xFFFFFDC0)
      {
        DeviceFaultNotify("glsignalid.h", 497, "push_back", "(m_maxIndex - m_minIndex) < _DIM(m_otSignalIdsObjects)");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 497, "(m_maxIndex - m_minIndex) < _DIM(m_otSignalIdsObjects)");
      }

      v50 = *(v48 - 2);
      ++v221[0];
      *BlueFin::GlSignalIdList::operator[](v221, v49) = v50;
      v47 = *v304;
      *(*v304 + 4 * (v45 >> 21)) |= 1 << v46;
    }

    ++v46;
    v45 += 0x10000;
    v48 += 14;
  }

  while (v44 != v46);
  v51 = v220;
  if (!*v47)
  {
    v52 = v304[8];
    if (v304[8] < 2u)
    {
      goto LABEL_70;
    }

    goto LABEL_67;
  }

LABEL_63:
  if (BlueFin::GlSetBase::Highest(v304) >= 0x15)
  {
    DeviceFaultNotify("glpe_navgnsskf.cpp", 2290, "ComputeZRH", "otMeasArrayIx.IsEmpty() || (GlIntU32)otMeasArrayIx.Highest() < _DIM(pastADRMeas)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navgnsskf.cpp", 2290, "otMeasArrayIx.IsEmpty() || (GlIntU32)otMeasArrayIx.Highest() < _DIM(pastADRMeas)");
  }

LABEL_70:
  if ((*(**(v51 + 2) + 16))(*(v51 + 2), &v262, &v233, &v296, v304))
  {
    v5 = v220;
    goto LABEL_187;
  }

  v5 = v220;
  v57 = *(v220 + 281);
  v58 = *(v57 + 8);
  if ((v58 - 3) >= 4)
  {
    v59 = 5.0;
  }

  else
  {
    v59 = 7.0;
  }

  v60 = v58 - 1;
  v61 = v60 <= 1 && (*(v57 + 16) & 0xFFFFFFFE) == 2;
  v62 = *(v220 + 1);
  if (*v62 == -7200001 || ((v63 = v62[1], v64 = *v62 - v63, v63 != -7200001) ? (_ZF = v64 == -7200001) : (_ZF = 1), !_ZF ? (_CF = v221[0] >= 2) : (_CF = 0), !_CF))
  {
LABEL_187:
    if (((*(*v5 + 64))(v5) / (*(v220 + 546) * 1000.0)) >= 2)
    {
      v174 = *v216;
      if ((v174 & 0x80000) != 0)
      {
        BlueFin::GlPeNavGnssKF::Propagate(v220, (v174 >> 9) & 1);
        BlueFin::GlPeNavGnssState::GlPeNavGnssState(v304);
        BlueFin::GlPeNavGnssKF::AddProcessNoise(v220, v304, *(v220 + *(*v220 - 24) + 200), ((*v216 >> 8) & 1), 0, 0, (*v216 & 0x30000) != 0, v175, v212);
      }
    }

    v221[0] = 1;
    goto LABEL_191;
  }

  if (DWORD1(v230) != 12)
  {
    goto LABEL_186;
  }

  v67 = v230;
  if (v230 < 4)
  {
    goto LABEL_186;
  }

  if (v221[0] - 1 != v230)
  {
    DeviceFaultNotify("glpe_navgnsskf.cpp", 485, "ADR2DeltaPos", "otSignalIdsUsed.Cnt() == (GlIntU32)otH.GetRowSize()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navgnsskf.cpp", 485, "otSignalIdsUsed.Cnt() == (GlIntU32)otH.GetRowSize()");
  }

  *v56.i32 = v64 / 1000.0;
  v69 = v60 < 2 || v230 == 4;
  v70 = *(v220 + 26);
  if (v70 == 1)
  {
    v71 = v220 + *(*v220 - 24);
    v72 = vmulq_n_f64(*(v71 + 104), *v56.i32);
    v73 = *(v71 + 15) * *v56.i32;
  }

  else
  {
    v74.f64[0] = *(v220 + 167);
    v75.f64[0] = *(v220 + 168);
    v75.f64[1] = *(v220 + 172);
    v74.f64[1] = *(v220 + 171);
    v72 = vmlaq_n_f64(vmulq_f64(v75, 0), v74, (*v56.i32 * *(v220 + 331)));
    v73 = -(*v56.i32 * *(v220 + 332));
  }

  *&v304[8] = 0x400000004;
  memset(&v304[16], 0, 40);
  *v304 = &v304[16];
  v296 = &v298;
  v297 = 0x400000000;
  v300 = 0;
  v298 = 0u;
  v299 = 0u;
  v76 = *(v220 + 5);
  v77 = *(v76[4] + 32);
  if ((v70 & 1) == 0)
  {
    v77 = v77 * (*(v220 + 331) * *(v220 + 331));
  }

  v78 = *(v76[8] + 64);
  v79 = *(v76[6] + 48);
  *(&v298 + 1) = *(v76[2] + 16);
  *&v299 = v77;
  *(&v299 + 1) = v79;
  v300 = v78;
  *&v304[24] = v72;
  *&v304[40] = v73;
  v215 = v56;
  *&v219 = *v56.i32;
  *&v304[48] = *(v220 + *(*v220 - 24) + 152) * *v56.i32;
  v80 = v69 ? 1.0 : 5.0;
  v81 = 0.0;
  do
  {
    *(&v308 + 1) = 0x400000004;
    v309 = 0u;
    v310 = 0u;
    v311 = 0.0;
    *&v308 = &v309;
    v240 = 0x400000004;
    v241 = 0u;
    v242 = 0u;
    v243 = 0.0;
    v239 = &v241;
    v82 = *&v225[8 * v67];
    *&v225[8 * v67] = v82 * 9.0;
    v83 = v229[v67];
    *(&v309 + 1) = *(v83 + 16);
    *(&v241 + 1) = *(&v309 + 1) * v296[1];
    *&v310 = *(v83 + 32);
    *&v242 = *&v310 * v296[2];
    *(&v310 + 1) = *(v83 + 48);
    *(&v242 + 1) = *(&v310 + 1) * v296[3];
    v311 = *(v83 + 64);
    v243 = v311 * v296[4];
    v84 = BlueFin::SKFVector::dot(&v308, &v239);
    v85 = BlueFin::SKFVector::dot(&v308, v304);
    v86 = vabdd_f64(v85, *&v222[8 * v67]);
    if (v86 > v80 || v86 / sqrt(v82 + v84) >= 50.0)
    {
      v87 = 8 * v67;
      BlueFin::BigMatrix::RemoveRow(&v228, v67);
      v88 = v226;
      if (v226 > v67)
      {
        v89 = &v225[v87 + 8];
        v90 = v226 - v67;
        do
        {
          *(v89 - 1) = *v89;
          ++v89;
          --v90;
        }

        while (v90);
      }

      LODWORD(v226) = v88 - 1;
      v91 = v223;
      if (v223 > v67)
      {
        v92 = &v222[v87 + 8];
        v93 = v223 - v67;
        do
        {
          *(v92 - 1) = *v92;
          ++v92;
          --v93;
        }

        while (v93);
      }

      LODWORD(v223) = v91 - 1;
      BlueFin::GlSignalIdList::Remove(v221, v67);
    }

    else
    {
      v81 = v81 + *&v225[8 * v67];
    }

    v94 = v67-- <= 1;
  }

  while (!v94);
  v5 = v220;
  if (DWORD1(v230) != 12 || (v95 = v230, v230 < 4))
  {
LABEL_186:
    *(v217 + 240) = 0;
    goto LABEL_187;
  }

  v96 = v81 / v230;
  v97 = &v298 + 8;
  v298 = xmmword_298A43F90;
  v296 = &v299;
  v297 = &v301;
  v301 = 0;
  for (k = 8; k != 176; k += 8)
  {
    *(v297 + k) = v97;
    v97 += 32;
  }

  BlueFin::BigMatrix::Null(&v296, v95, 4);
  BlueFin::SKFVectorDim<21>::SKFVectorDim(v293, v230);
  v99 = v230;
  if (v230 >= 1)
  {
    v100 = (v293[0] + 8);
    v101 = (v225 + 8);
    v102 = (v297 + 8);
    v103 = v229 + 1;
    do
    {
      v105 = *v103++;
      v104 = v105;
      v106 = v105[2];
      v107 = *v102++;
      v107[1] = v106;
      v107[2] = v104[4];
      v107[3] = v104[6];
      v107[4] = v104[8];
      v108 = *v101++;
      *v100++ = 1.0 / v108;
      --v99;
    }

    while (v99);
  }

  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  v109 = &v241 + 8;
  v241 = xmmword_298A41E80;
  v239 = &v242;
  v240 = &v244;
  v244 = 0;
  for (m = 8; m != 40; m += 8)
  {
    *(v240 + m) = v109;
    v109 += 32;
  }

  v111 = &v290 + 8;
  v290 = xmmword_298A41E80;
  v288 = v291;
  v289 = v292;
  v292[0] = 0;
  for (n = 8; n != 40; n += 8)
  {
    *(v289 + n) = v111;
    v111 += 32;
  }

  v233 = &v235;
  v234 = 0x400000000;
  v235 = 0u;
  v236 = 0u;
  *&v237 = 0;
  v113 = &v304[24];
  *&v304[24] = 0x1500000004;
  *v304 = &v304[32];
  *&v304[8] = &v306;
  v114 = 8;
  v306 = 0;
  do
  {
    *(*&v304[8] + v114) = v113;
    v113 += 168;
    v114 += 8;
  }

  while (v114 != 40);
  v115 = DWORD1(v298);
  *&v304[16] = DWORD1(v298);
  *&v304[20] = v298;
  if (v298 >= 1)
  {
    v116 = v293[0];
    v117 = v297;
    v118 = v298 + 1;
    v119 = *&v304[8] + 8;
    v120 = 1;
    do
    {
      if (v115 >= 1)
      {
        v121 = *(v116 + 8 * v120);
        v122 = (*(v117 + 8 * v120) + 8);
        v123 = v119;
        v124 = (v115 + 1) - 1;
        do
        {
          v125 = *v122++;
          v126 = v121 * v125;
          v127 = *v123++;
          *(v127 + 8 * v120) = v126;
          --v124;
        }

        while (v124);
      }

      ++v120;
    }

    while (v120 != v118);
  }

  BlueFin::BigMatrix::mult_sym(&v239, v304, &v296);
  BlueFin::SKFVector::mult(&v233, v304, &v222);
  if (!BlueFin::BigMatrix::inv(&v239, &v288, 0))
  {
    v5 = v220;
    goto LABEL_186;
  }

  v287 = 0;
  v275 = &v277;
  v276 = 0x400000000;
  v277 = 0u;
  v278 = 0u;
  v279 = 0;
  BlueFin::SKFVector::mult(&v275, &v288, &v233);
  if (*(v220 + 26) == 1)
  {
    BlueFin::Matrix::Matrix(v304, &v288);
    v283 = *&v304[64];
    v284 = *&v304[80];
    v285 = *&v304[96];
    v286 = *&v304[112];
    v280[0] = *v304;
    v280[1] = *&v304[16];
    v281 = *&v304[32];
    v282 = *&v304[48];
    v287 = v305;
  }

  else
  {
    v305 = 0x400000004;
    *v304 = *v213;
    *&v304[16] = *(v220 + 169);
    *&v304[24] = 0;
    *&v304[32] = v213[2];
    *&v304[48] = *(v220 + 173);
    *&v304[56] = 0;
    *&v304[64] = v213[4];
    *&v304[80] = *(v220 + 177);
    memset(&v304[88], 0, 32);
    *&v304[120] = 0x3FF0000000000000;
    BlueFin::BigMatrix::ReShape(&v288, 4, 4);
    BlueFin::Matrix::Matrix(&v308, &v288);
    v274 = 0;
    BlueFin::Matrix::mult(&v262, &v308, 1, v304, v128);
    BlueFin::Matrix::mult(v280, v304, &v262);
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
      if (BlueFin::GlUtils::m_ucEnabled)
      {
        BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
      }
    }
  }

  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
    }
  }

  v5 = v220;
  v129 = *v220;
  v130 = (v220 + *(*v220 - 24));
  v131 = v275;
  v132 = *(v275 + 3);
  v308 = *(v275 + 8);
  *&v309 = v132;
  BlueFin::ned2lla(v130 + 1, &v308, v304);
  *(v217 + 8) = *v304;
  *(v217 + 24) = *&v304[16];
  v133 = *(v131 + 24) / *&v219;
  *(v217 + 104) = vdivq_f64(*(v131 + 8), vdupq_lane_s64(v219, 0));
  *(v217 + 120) = v133;
  *(v217 + 240) = 1;
  v134.f64[0] = *v280;
  v135 = *(&v281 + 1);
  v136 = *v280 + *(&v281 + 1);
  v137 = (*v280 + *(&v281 + 1)) / *&v219;
  *(v217 + 128) = sqrtf(v137);
  v138 = *&v284;
  v139 = *&v284;
  *(v217 + 140) = sqrtf(v139) / *v215.i32;
  v140 = *(v220 + 26);
  v141 = *(v220 + 5);
  _Q3.f64[0] = v134.f64[0] + *(v141[1] + 8) + *(v141[3] + 24);
  v143.f64[0] = v135;
  v143.f64[1] = v138;
  _Q3.f64[1] = *(v141[5] + 40);
  v144 = vsqrt_f32(vcvt_f32_f64(vaddq_f64(v143, _Q3)));
  __asm { FMOV            V3.2S, #1.0 }

  *(v217 + 80) = vmaxnm_f32(v144, *&_Q3.f64[0]);
  if (v140 == 1)
  {
    v134.f64[1] = v135;
    *(v217 + 132) = vsqrt_f32(vdiv_f32(vcvt_f32_f64(v134), vdup_lane_s32(v215, 0)));
  }

  *(v217 + 88) = *(v220 + *(v129 - 24) + 88) + *(v131 + 32);
  v147 = *(&v286 + 1);
  v148 = *(v141[7] + 56) + *(&v286 + 1);
  *(v217 + 96) = sqrtf(v148);
  v149 = *(v131 + 32) / *&v219;
  *(v217 + 152) = v149;
  v150 = v147;
  *(v217 + 160) = sqrtf(v150 / *v215.i32);
  v151 = *(v131 + 8);
  v152 = *(v131 + 16);
  v153 = atan2(v152, v151);
  if (v153 < 0.0)
  {
    v153 = v153 + 6.28318531;
  }

  v154 = v136 / v96;
  if (sqrtf(v154) <= v59 && (v155 = (v220 + *(v129 - 24)), vabdd_f64(v155[19], v149) <= 3.0) && vabdd_f64(v155[15], v133) <= 1.0)
  {
    if (v230 < 5)
    {
      v156 = 0;
      v157 = 1;
    }

    else
    {
      v183 = v153;
      v184 = &v309 + 8;
      v309 = xmmword_298A43F90;
      *&v308 = &v310;
      *(&v308 + 1) = v312;
      v312[0] = 0;
      for (ii = 8; ii != 176; ii += 8)
      {
        *(*(&v308 + 1) + ii) = v184;
        v184 += 32;
      }

      BlueFin::BigMatrix::mult(&v308, &v296, &v288);
      v186 = &v304[24];
      *&v304[16] = xmmword_298A43FA0;
      *v304 = &v304[32];
      *&v304[8] = &v307;
      v307 = 0;
      for (jj = 8; jj != 176; jj += 8)
      {
        *(*&v304[8] + jj) = v186;
        v186 += 168;
      }

      BlueFin::BigMatrix::mult(v304, &v308, 1, &v296);
      v188 = *&v304[16];
      if (*&v304[16] >= 1)
      {
        v189 = v225;
        v190 = *&v304[8];
        do
        {
          *(*(v190 + 8 * v188) + 8 * v188) = *(*(v190 + 8 * v188) + 8 * v188) - *&v189[8 * v188];
          v94 = v188-- > 1;
        }

        while (v94);
      }

      BlueFin::SKFVectorDim<21>::SKFVectorDim(&v262, v230);
      BlueFin::SKFVectorDim<21>::SKFVectorDim(v302, v230);
      v194 = v230;
      if (v230 >= 1)
      {
        do
        {
          v257 = 0x400000004;
          v260 = 0;
          v258 = 0u;
          v259 = 0u;
          v256 = &v258;
          v195 = v229[v194];
          v196 = v195[4];
          *(&v258 + 1) = v195[2];
          *&v259 = v196;
          v197 = v195[8];
          *(&v259 + 1) = v195[6];
          v260 = v197;
          v198 = BlueFin::SKFVector::dot(&v256, &v275);
          v199 = v198 - *&v222[8 * v194];
          *&v262[v194] = v199;
          *(v302[0] + 8 * v194) = v199 / sqrt(-*(*(*&v304[8] + 8 * v194) + 8 * v194));
          v94 = v194-- > 1;
        }

        while (v94);
      }

      v203 = BlueFin::SKFVector::Median(&v262, v191, v192, v193);
      v204 = v263;
      if (v263 >= 1)
      {
        v205 = (v262 + 1);
        do
        {
          *v205 = fabs(*v205);
          ++v205;
          --v204;
        }

        while (v204);
      }

      v156 = BlueFin::SKFVector::Median(&v262, v200, v201, v202) > 0.0299999993;
      v206 = v230;
      if (v230 >= 1)
      {
        do
        {
          if (fabs(*(v302[0] + 8 * v206)) > 3.0)
          {
            BlueFin::GlSignalIdList::Remove(v221, v206);
          }

          v94 = v206-- <= 1;
        }

        while (!v94);
      }

      v207 = fabs(v203) <= 0.00999999978;
      v208 = *(v220 + 2);
      *v255 = &v255[12];
      v255[8] = 8;
      memset(&v255[12], 0, 32);
      *&v255[48] = xmmword_298A41DA0;
      *&v255[64] = vdup_n_s32(0x42C60000u);
      LODWORD(v254) = 0;
      *&v255[72] = 1120272384;
      BlueFin::stDops::stDops(&v256, &v254);
      v261 = v208;
      v209 = *(v220 + *(*v220 - 24) + 200);
      BlueFin::GlSignalIdList::GetSignalIdSet(&v249, v221);
      BlueFin::GlSignalIdSet::GetSvIdSet(&v251, &v249);
      v245 = *(v220 + *(*v220 - 24) + 88);
      v248 = **(v220 + 280);
      v247 = 0;
      v212 = 0;
      BlueFin::GlPeDops::GetDops(&v256, v209);
      v211 = *&v255[52] <= v59 && v221[0] - 5 < 0xFFFFFFFC;
      v157 = v211 && v207;
      v131 = v275;
      v151 = *(v275 + 1);
      v152 = *(v275 + 2);
      v153 = v183;
      v5 = v220;
    }
  }

  else
  {
    v156 = 0;
    v157 = 0;
  }

  v158 = v152 * v152 + v151 * v151 + *(v131 + 24) * *(v131 + 24);
  v159 = sqrtf(v158) / *v215.i32;
  v160 = *(*(v5 + 281) + 8);
  if (((v160 - 1) > 1 || v159 <= 7.5) && (v159 > 26.85 ? (v161 = (v160 - 6) >= 0xFFFFFFFD) : (v161 = 0), v161 ? (v162 = 0) : (v162 = 1), (v162 & v157) == 1))
  {
    v163 = *v280;
    v164 = *(&v281 + 1);
    v165 = 0.01;
    if (v160 == 6)
    {
      v165 = 3.0;
    }

    if (*v280 < v165)
    {
      v163 = v165;
    }

    if (*(&v281 + 1) < v165)
    {
      v164 = v165;
    }

    *v280 = v163;
    *(&v281 + 1) = v164;
    if ((v160 - 3) <= 3 && sqrt(*(v217 + 112) * *(v217 + 112) + *(v217 + 104) * *(v217 + 104)) > 1.79999995)
    {
      *(v217 + 128) = vmaxnmq_f32(*(v217 + 128), xmmword_298A43FB0);
    }

    v166 = *(v5 + 5);
    *(v166[1] + 8) = *(v166[1] + 8) + v163 * *&v219;
    *(v166[3] + 24) = *(v166[3] + 24) + *(&v281 + 1) * *&v219;
    *(v166[5] + 40) = *(v166[5] + 40) + *&v284 * *&v219;
    *(v166[7] + 56) = *(v166[7] + 56) + *(&v286 + 1) * *&v219;
    v167 = *v5;
    v168 = v5 + *(*v5 - 24);
    *(v168 + 8) = *(v217 + 8);
    *(v168 + 3) = *(v217 + 24);
    *(v5 + *(v167 - 24) + 88) = *(v217 + 88);
    *(v5 + *(v167 - 24) + 200) = **(v5 + 1);
    v169 = 1;
  }

  else
  {
    v169 = 0;
  }

  v170 = sqrt(*(v217 + 112) * *(v217 + 112) + *(v217 + 104) * *(v217 + 104));
  if (v170 <= 0.5 || (v171 = *(v217 + 128), v170 <= (v171 * 3.0)))
  {
    *(v217 + 241) = 0;
  }

  else
  {
    *(v217 + 241) = 1;
    v172 = v153;
    *(v217 + 176) = v172;
    v173 = v171 / v170;
    *(v217 + 184) = v173;
  }

  if (v61 && (v230 < 6 || v156))
  {
    *(v217 + 240) = 0;
  }

  if ((v169 & 1) == 0)
  {
    goto LABEL_186;
  }

LABEL_191:
  BlueFin::GlSignalIdList::GetSignalIdSet(v304, v221);
  BlueFin::GlSetBase::operator=(v217 + 440, v304);
  *(v217 + 512) = *&v304[72];
  v176 = *&v304[28];
  v177 = *&v304[60];
  *(v217 + 484) = *&v304[44];
  *(v217 + 500) = v177;
  *(v217 + 452) = *&v304[12];
  *(v217 + 468) = v176;
  v178 = *(*v220 - 24);
  BlueFin::GlSignalIdList::GetSignalIdSet(v304, v221);
  v179 = (v220 + v178);
  result = BlueFin::GlSetBase::operator=(v179 + 440, v304);
  v179[32] = *&v304[72];
  v181 = *&v304[28];
  v182 = *&v304[60];
  *(v179 + 484) = *&v304[44];
  *(v179 + 500) = v182;
  *(v179 + 452) = *&v304[12];
  *(v179 + 468) = v181;
  return result;
}

uint64_t BlueFin::GlSignalIdList::GetSignalIdSet(uint64_t this, _DWORD *a2)
{
  *(this + 12) = 0u;
  *this = this + 12;
  *(this + 8) = 19;
  *(this + 28) = 0u;
  *(this + 44) = 0u;
  *(this + 60) = 0u;
  *(this + 72) = 0u;
  if (*a2 != 1)
  {
    v2 = (a2 + 1);
    v3 = a2 + (*a2 - 1) + 2;
    do
    {
      v4 = *v2;
      if (v4 >= 0x23F)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      *(this + 12 + ((v4 >> 3) & 0x1FFC)) |= 1 << v4;
      ++v2;
    }

    while (v2 < v3);
  }

  return this;
}

uint64_t BlueFin::GlPeKfPool::ComputePosition(void *a1, uint64_t a2)
{
  v4 = 0;
  v5 = a1 + 4656;
  v6 = a1 + 4663;
  v7 = (a1 + 4663);
  do
  {
    v8 = v5[v4];
    BlueFin::GlPeNavGnssState::GlPeNavGnssState(v13, v7);
    if (v4 == 1)
    {
      BlueFin::GlPeNavGnssState::operator=(v13, v6);
    }

    if ((*(*v8 + 384))(v8))
    {
      (*(*v8 + 32))(v8, a2, v13);
    }

    ++v4;
    v7 = (v7 + 528);
  }

  while (v4 != 3);
  v9 = a1 + 3;
  v10 = a1[3];
  v11 = a1[1462];
  *(a1 + *(v10 - 24) + 240) = *(a1 + *(v11 - 24) + 11912);
  *(v9 + *(v10 - 24) + 224) = *(a1 + *(v11 - 24) + 11920);
  *(v9 + *(v10 - 24) + 208) = *(a1 + *(v11 - 24) + 11904);
  *(v9 + *(v10 - 24) + 232) = *(a1 + *(v11 - 24) + 11928);
  *(v9 + *(v10 - 24) + 220) = *(a1 + *(v11 - 24) + 11916);
  *(v9 + *(v10 - 24) + 228) = *(a1 + *(v11 - 24) + 11924);
  *(v9 + *(v10 - 24) + 212) = *(a1 + *(v11 - 24) + 11908);
  *(v9 + *(v10 - 24) + 236) = *(a1 + *(v11 - 24) + 11932);
  *(v9 + *(v10 - 24) + 168) = *(a1 + *(v11 - 24) + 11864);
  return BlueFin::GlPeNavGnssState::operator=(a1 + *(*a1 - 24), a1[4659] + *(*a1[4659] - 24));
}

BlueFin::GlPeNavGnssState *BlueFin::GlPeNavGnssState::GlPeNavGnssState(BlueFin::GlPeNavGnssState *this, const BlueFin::GlPeNavGnssState *a2)
{
  *this = &unk_2A1F11EF8;
  *(this + 8) = *(a2 + 8);
  *(this + 24) = *(a2 + 24);
  *(this + 40) = *(a2 + 40);
  *(this + 56) = *(a2 + 56);
  v4 = *(a2 + 10);
  *(this + 9) = *(a2 + 9);
  *(this + 10) = v4;
  *(this + 11) = *(a2 + 11);
  *(this + 24) = *(a2 + 24);
  *(this + 104) = *(a2 + 104);
  *(this + 15) = *(a2 + 15);
  *(this + 8) = *(a2 + 8);
  *(this + 36) = *(a2 + 36);
  *(this + 19) = *(a2 + 19);
  *(this + 40) = *(a2 + 40);
  *(this + 21) = *(a2 + 21);
  *(this + 11) = *(a2 + 11);
  *(this + 48) = *(a2 + 48);
  *(this + 196) = *(a2 + 196);
  *(this + 51) = *(a2 + 51);
  *(this + 13) = *(a2 + 13);
  *(this + 14) = *(a2 + 14);
  *(this + 60) = *(a2 + 60);
  *(this + 244) = *(a2 + 244);
  *(this + 31) = *(a2 + 31);
  *(this + 64) = *(a2 + 64);
  BlueFin::GlSetBase::GlSetBase((this + 264), this + 69, 0x13u, a2 + 33);
  BlueFin::GlSetBase::GlSetBase((this + 352), this + 91, 0x13u, a2 + 44);
  BlueFin::GlSetBase::GlSetBase((this + 440), this + 113, 0x13u, a2 + 55);
  return this;
}

unint64_t BlueFin::GlPeNavGnssKF::Propagate(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v4 = v3;
  v5 = v2;
  v6 = *v2;
  v7 = **(v2 + 8);
  v8 = *v2;
  v9 = *(v2 + *(*v2 - 24) + 200);
  if (v9)
  {
    v10 = v7 - v9;
    if (!v10)
    {
      DeviceFaultNotify("glpe_navgnsskf.cpp", 3182, "Propagate", "ulIntervalMs > 0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navgnsskf.cpp", 3182, "ulIntervalMs > 0");
    }

    v11 = v10 * 0.001;
    *(v2 + 2184) = v11;
    v12 = v11;
  }

  else
  {
    v12 = 1.0;
  }

  v13 = *(v2 + 4776);
  v14 = *(v13 + 4216);
  if ((v14 == 1 || v14 == 6) && *(v13 + 4224) == 1 && (*(v13 + 4226) & 1) == 0 && (*(v13 + 4220) - 3) <= 1)
  {
    v15 = (v2 + *(v8 - 24));
    v15[13] = 0;
    v15[14] = 0;
    v15[15] = 0;
    *(v2 + 1324) = 0;
    v6 = *v2;
  }

  v16 = v2 + *(v8 - 24);
  v17 = *(v16 + 104);
  v18 = *(v16 + 120);
  v72 = v18;
  if (*(*(v2 + 2248) + 8) == 6)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0.0;
  }

  v61 = v12;
  if (*(v2 + *(v6 - 24) + 241))
  {
    v20 = 1;
  }

  else
  {
    v60 = v17;
    v21 = (*(v6 + 72))(v2);
    v17 = v60;
    v12 = v61;
    v20 = (*(v5 + 2184) * 1000.0) >= v21;
    v6 = *v5;
  }

  v22 = *(v5 + 11768);
  if (v22)
  {
    LOBYTE(v22) = (*(v5 + *(v6 - 24) + 200) - *(v5 + 11804)) <= 0xBB8 && *(v5 + 11816) < 0.100000001;
  }

  v23 = *(*(v5 + 2248) + 8);
  if (v23 != 10 && !((v23 < 3) & ~v20 | v22 & 1))
  {
    v71 = vmulq_n_f64(v17, v12);
    v72 = v12 * v19;
    BlueFin::ned2lla((v5 + *(v6 - 24) + 8), v71.f64, &v62);
    v12 = v61;
    v24 = v5 + *(v6 - 24);
    *(v24 + 8) = v62;
    *(v24 + 24) = v63;
  }

  v25 = (v5 + *(v6 - 24));
  if (v4)
  {
    v26 = sqrt(v25[14] * v25[14] + v25[13] * v25[13]);
    *(v5 + 1324) = v26;
  }

  else
  {
    v25[11] = v25[11] + v25[19] * v12;
  }

  *(v5 + *(v6 - 24) + 200) = v7;
  v27 = &v68 + 8;
  v68 = xmmword_298A43F30;
  v66 = &v69;
  v67 = &v70;
  v70 = 0;
  for (i = 1; i != 13; ++i)
  {
    v67[i] = v27;
    v27 += 96;
  }

  BlueFin::BigMatrix::Null(&v66, 12, 12);
  v29 = 1;
  v30 = v67;
  do
  {
    *(v30[v29] + v29 * 8) = 0x3FF0000000000000;
    ++v29;
  }

  while (v29 != 13);
  if ((*(*(v5 + 2248) + 8) - 1) < 2)
  {
    v31 = *(v5 + 2184);
    if (v31 <= 0.0)
    {
      if (v31 >= 0.0)
      {
        v35 = 0.60653;
LABEL_42:
        if (*(v5 + 26) == 1)
        {
          v36 = *v5;
          v37 = v5 + *(*v5 - 24);
          v38 = *(v37 + 120);
          v39 = -v38;
          v40 = v35;
          v41 = -(v38 * v35);
          v42 = -(v35 * v39);
          v43 = *(v37 + 104);
          *(v30[6] + 48) = v40;
          v44 = v5 + *(v36 - 24);
          *(v44 + 104) = v43;
          *(v44 + 120) = v42;
          *(v5 + 1328) = v41;
          goto LABEL_44;
        }

        v47 = *(v5 + 1328);
        *(v30[6] + 48) = v35;
        *(v5 + 1328) = v35 * v47;
        goto LABEL_46;
      }

      v32 = v31;
      v33 = -0.5;
    }

    else
    {
      v32 = v31;
      v33 = 0.5;
    }

    v34 = (v32 + v33);
    if ((v34 - 1) >= 3)
    {
      v35 = flt_298A44058[v34 == 4];
    }

    else
    {
      v35 = flt_298A441D4[v34 - 1];
    }

    goto LABEL_42;
  }

  if (*(v5 + 26))
  {
LABEL_44:
    v45 = v61;
    *(v30[1] + 16) = v61;
    v46 = v61;
LABEL_50:
    *(v30[3] + 32) = v46;
    goto LABEL_51;
  }

LABEL_46:
  v48 = *(v5 + 1324);
  v49 = 1.0;
  if (v48 < 0.0)
  {
    v49 = -1.0;
  }

  v45 = v61;
  *(v30[1] + 16) = v61 * v49;
  if (*(v5 + *(*v5 - 24) + 240) == 1)
  {
    v46 = v61 * -v48;
    goto LABEL_50;
  }

LABEL_51:
  *(v30[5] + 48) = v45;
  *(v30[7] + 64) = v45;
  v50 = &v63 + 8;
  v63 = xmmword_298A43FA0;
  *&v62 = &v64;
  *(&v62 + 1) = &v65;
  v65 = 0;
  for (j = 8; j != 176; j += 8)
  {
    *(*(&v62 + 1) + j) = v50;
    v50 += 168;
  }

  v52 = 1;
  BlueFin::BigMatrix::mult(&v62, (v5 + 32), 1, &v66);
  result = BlueFin::BigMatrix::mult(v5 + 32, &v66, &v62);
  v54 = 2;
  do
  {
    if (v52 <= 0xB)
    {
      v55 = *(v5 + 40);
      v56 = *(v55 + 8 * v52);
      v57 = v54;
      do
      {
        v58 = *(v55 + 8 * v57);
        v59 = (*(v56 + 8 * v57) + *(v58 + 8 * v52)) * 0.5;
        *(v58 + 8 * v52) = v59;
        *(v56 + 8 * v57++) = v59;
      }

      while (v57 != 13);
    }

    ++v52;
    ++v54;
  }

  while (v52 != 13);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    return BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  return result;
}

uint64_t BlueFin::BigMatrix::mult(uint64_t this, const BlueFin::BigMatrix *a2, BOOL a3, const BlueFin::BigMatrix *a4)
{
  if (this == a2)
  {
    v19 = "this != &mLeft";
    DeviceFaultNotify("glpe_matrix.cpp", 1032, "mult", "this != &mLeft");
    v20 = 1032;
    goto LABEL_22;
  }

  if (this == a4)
  {
    v19 = "this != &mRight";
    DeviceFaultNotify("glpe_matrix.cpp", 1033, "mult", "this != &mRight");
    v20 = 1033;
    goto LABEL_22;
  }

  v4 = *(a2 + 5);
  if (v4 != *(a4 + 5))
  {
    v19 = "mLeft.m_NbCols == mRight.m_NbCols";
    DeviceFaultNotify("glpe_matrix.cpp", 1036, "mult", "mLeft.m_NbCols == mRight.m_NbCols");
    v20 = 1036;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", v20, v19);
  }

  v5 = *(a2 + 4);
  if (v5 > *(this + 24) || (v6 = *(a4 + 4), v6 > *(this + 28)))
  {
    v19 = "mLeft.m_NbRows <= m_NbMaxRows && mRight.m_NbRows <= m_NbMaxCols";
    DeviceFaultNotify("glpe_matrix.cpp", 1037, "mult", "mLeft.m_NbRows <= m_NbMaxRows && mRight.m_NbRows <= m_NbMaxCols");
    v20 = 1037;
    goto LABEL_22;
  }

  if (v5 >= 1)
  {
    v7 = 1;
    do
    {
      if (v6 >= 1)
      {
        v8 = *(a2 + 1);
        v9 = *(a4 + 1);
        v10 = *(*(this + 8) + 8 * v7);
        v11 = 1;
        do
        {
          if (v4 < 1)
          {
            v14 = 0.0;
          }

          else
          {
            v12 = (*(v9 + 8 * v11) + 8);
            v13 = (*(v8 + 8 * v7) + 8);
            v14 = 0.0;
            v15 = (v4 + 1) - 1;
            do
            {
              v16 = *v13++;
              v17 = v16;
              v18 = *v12++;
              v14 = v14 + v17 * v18;
              --v15;
            }

            while (v15);
          }

          *(v10 + 8 * v11++) = v14;
        }

        while (v11 != v6 + 1);
      }

      ++v7;
    }

    while (v7 != v5 + 1);
  }

  *(this + 16) = v5;
  *(this + 20) = *(a4 + 4);
  return this;
}

uint64_t BlueFin::BigMatrix::mult(uint64_t this, const BlueFin::BigMatrix *a2, const BlueFin::BigMatrix *a3)
{
  if (this == a2)
  {
    v18 = "this != &mLeft";
    DeviceFaultNotify("glpe_matrix.cpp", 990, "mult", "this != &mLeft");
    v19 = 990;
    goto LABEL_22;
  }

  if (this == a3)
  {
    v18 = "this != &mRight";
    DeviceFaultNotify("glpe_matrix.cpp", 991, "mult", "this != &mRight");
    v19 = 991;
    goto LABEL_22;
  }

  v3 = *(a2 + 5);
  if (v3 != *(a3 + 4))
  {
    v18 = "mLeft.m_NbCols == mRight.m_NbRows";
    DeviceFaultNotify("glpe_matrix.cpp", 994, "mult", "mLeft.m_NbCols == mRight.m_NbRows");
    v19 = 994;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", v19, v18);
  }

  v4 = *(a2 + 4);
  if (v4 > *(this + 24) || (v5 = *(a3 + 5), v5 > *(this + 28)))
  {
    v18 = "mLeft.m_NbRows <= m_NbMaxRows && mRight.m_NbCols <= m_NbMaxCols";
    DeviceFaultNotify("glpe_matrix.cpp", 996, "mult", "mLeft.m_NbRows <= m_NbMaxRows && mRight.m_NbCols <= m_NbMaxCols");
    v19 = 996;
    goto LABEL_22;
  }

  if (v4 >= 1)
  {
    v6 = 1;
    do
    {
      if (v5 >= 1)
      {
        v7 = *(a2 + 1);
        v8 = *(*(this + 8) + 8 * v6);
        v9 = *(a3 + 1) + 8;
        v10 = 1;
        do
        {
          if (v3 < 1)
          {
            v12 = 0.0;
          }

          else
          {
            v11 = (*(v7 + 8 * v6) + 8);
            v12 = 0.0;
            v13 = v9;
            v14 = (v3 + 1) - 1;
            do
            {
              v15 = *v11++;
              v16 = v15;
              v17 = *v13++;
              v12 = v12 + v16 * *(v17 + 8 * v10);
              --v14;
            }

            while (v14);
          }

          *(v8 + 8 * v10++) = v12;
        }

        while (v10 != v5 + 1);
      }

      ++v6;
    }

    while (v6 != v4 + 1);
  }

  *(this + 16) = v4;
  *(this + 20) = v5;
  return this;
}

uint64_t BlueFin::GlPeNavGnssState::Print(uint64_t this, unsigned __int8 a2, const char *a3)
{
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v5 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
    if (this)
    {
      if (((1 << (a2 >> 3)) & 0x2000800E) != 0)
      {
        if (a3)
        {
          GlCustomLog(a2, "%s ", a3);
        }

        return GlCustomLog(a2, "NavGnssState: LMS %u LLA (%f %f %.1f) (%.1f %.1f) Bc %.1f (%.1f) BcDot %.1f (%.1f) BcDotDot %.1f Vel NED (%.1f %.1f %.1f) (%.1f %.1f %.1f %.1f) HdgDeg %.1f (%.1f) BiasStates %.1f (%.1f) % .1f (%.1f) % .1f (%.1f) % .1f (%.1f)\n", *(v5 + 200), *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 80), *(v5 + 84), *(v5 + 88), *(v5 + 96), *(v5 + 152), *(v5 + 160), *(v5 + 168), *(v5 + 104), *(v5 + 112), *(v5 + 120), *(v5 + 132), *(v5 + 136), *(v5 + 128), *(v5 + 140), *(v5 + 176) * 57.2957795, *(v5 + 184) * 57.2957795, *(v5 + 208), *(v5 + 212), *(v5 + 216), *(v5 + 220), *(v5 + 224), *(v5 + 228), *(v5 + 232), *(v5 + 236));
      }
    }
  }

  return this;
}

uint64_t BlueFin::GlPeNavMeasSelect::GlPeNavMeasSelect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  BlueFin::GlPeNavGnssState::GlPeNavGnssState((a1 + 144));
  *(a1 + 8) = a3;
  *(a1 + 16) = a2;
  *a1 = &unk_2A1F12448;
  *(a1 + 144) = &unk_2A1F12480;
  *(a1 + 24) = a3;
  *(a1 + 32) = 0;
  *(a1 + 52) = 0u;
  *(a1 + 40) = a1 + 52;
  *(a1 + 48) = 19;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0x3FF0000000000000;
  *(a1 + 136) = 1098383360;
  *(a1 + 140) = 0;
  return a1;
}

uint64_t BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExitOrLeftRecently(BlueFin::GlPeNavGnssKF *this, unsigned int a2)
{
  v4 = *(*(this + 281) + 8);
  result = BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExit(this);
  if ((result & 1) == 0 && v4 != 6)
  {

    return BlueFin::GlPeNavGnssKF::PolaroidLeftTunnelRecently(this, a2);
  }

  return result;
}

uint64_t BlueFin::GlPeNavGnssKF::PolaroidIsTunnelExit(BlueFin::GlPeNavGnssKF *this)
{
  v2 = *(*(this + 284) + 12);
  v3 = *(*(this + 281) + 8);
  if ((*(*this + 264))(this) == 1)
  {
    v4 = 5000;
  }

  else
  {
    v5 = (*(*this + 264))(this);
    if ((v3 - 3) >= 4)
    {
      v6 = 60000;
    }

    else
    {
      v6 = v2;
    }

    if (v5 == 2)
    {
      v4 = 10000;
    }

    else
    {
      v4 = v6;
    }
  }

  v7 = *(this + 281);
  if (*(v7 + 1764))
  {
    v8 = 60;
  }

  else
  {
    v8 = 180;
  }

  if (*(v7 + 1328) > 4.0 && *(v7 + 1320) < 20.0 && *(v7 + 76) >= v8 && ((*(v7 + 1764) & 1) != 0 || *(v7 + 64) == 1))
  {
    v9 = 0;
  }

  else if ((*(*this + 72))(this) <= v4)
  {
    v9 = *(*(this + 284) + 1);
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}