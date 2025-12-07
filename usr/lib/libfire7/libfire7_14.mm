uint64_t BlueFin::GlPeRqHdlr::ToSlog(uint64_t this)
{
  if (BlueFin::GlUtils::m_pInstance)
  {
    if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      v1 = this;
      v2[0] = &unk_2A1F13C50;
      this = (*(**(this + 8) + 232))(*(this + 8), v2);
      v3 = *(v1 + 32);
      if (BlueFin::GlUtils::m_pInstance)
      {
        if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          return (*(v2[0] + 24))(v2, 0, 0);
        }
      }
    }
  }

  return this;
}

int64x2_t *BlueFin::GlPeRqHdlrGnssMeasData::GlPeRqHdlrGnssMeasData(int64x2_t *a1, _DWORD *a2, int a3, __int16 a4, uint64_t *a5)
{
  v9 = a1 + 3057;
  v10 = a1 + 2642;
  v11 = BlueFin::GlPeRqHdlr::GlPeRqHdlr(a1, a2, a3, a4, a5);
  v11->i64[0] = &unk_2A1F14348;
  v13 = vdupq_n_s64(v11);
  v11[2716] = vaddq_s64(v13, xmmword_298A44C30);
  v10[75].i64[0] = v11[2970].i64;
  v10[75].i64[1] = 0x23F000000000028;
  v10[76].i16[0] = 100;
  BlueFin::GlBigArray::Clear(v11[2716].i64);
  a1[3056] = vaddq_s64(v13, xmmword_298A44C40);
  v9->i64[0] = a1[3310].i64;
  v9->i64[1] = 0x23F000000000028;
  v9[1].i16[0] = 100;
  BlueFin::GlBigArray::Clear(a1[3056].i64);
  BlueFin::GlPeGnssSvsInfoMgr::GlPeGnssSvsInfoMgr(&a1[6804], a5[3], a5[2], a5[1], a2, a1[3324].i64, &a1[6778].i64[1], a5[7], a5[13], a5[15]);
  a1[10984].i32[0] = 0;
  a1[10984].i32[1] = a3;
  a1[10984].i32[2] = 0;
  v10->i64[0] = 0;
  memset(&a1[2498], 255, 0x8FCuLL);
  bzero(&a1[4], 0x9BE0uLL);
  bzero(&a1[3324], 0xD980uLL);
  return a1;
}

uint64_t BlueFin::GlPeReqBag::GetAccuracyMaskForKf(BlueFin::GlPeReqBag *this)
{
  v7 = this + 3233;
  v8 = *(this + 3233);
  *(this + 3233) = 0;
  if (*(this + 1312))
  {
    v3 = 0;
    Accuracymask = 0xFFFFFFFFLL;
    do
    {
      v4 = *(this + v3);
      if (v4)
      {
        v5 = *(v4 + 8);
        if (!v5[4])
        {
          Accuracymask = (*(*v5 + 152))(v5);
          GlCustomLog(14, "GlPeReqBag::GetAccuracyMaskForKf  using periodic accuracy %d\n", Accuracymask);
        }
      }

      v3 += 8;
    }

    while (v3 != 576);
  }

  else
  {
    Accuracymask = BlueFin::GlPeReqBag::GetAccuracymask(this);
  }

  *v7 = v8;
  return Accuracymask;
}

BlueFin::GlPeGnssSvsInfoMgr *BlueFin::GlPeGnssSvsInfoMgr::GlPeGnssSvsInfoMgr(BlueFin::GlPeGnssSvsInfoMgr *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = 0;
  *this = 0;
  *(this + 4) = a2;
  *(this + 5) = a4;
  *(this + 6) = a5;
  *(this + 7) = a6;
  *(this + 8) = a3;
  *(this + 9) = a8;
  *(this + 10) = a9;
  *(this + 11) = a10;
  *(this + 33) = this + 96;
  do
  {
    v12 = *(this + 33) + v11;
    *(v12 + 12) = 0;
    *v12 = v12 + 12;
    *(v12 + 8) = 2;
    v11 += 24;
  }

  while (v11 != 168);
  v13 = 0;
  *(this + 8274) = this + 320;
  *(this + 8275) = this + 66212;
  *(this + 66212) = 0u;
  *(this + 66228) = 0u;
  *(this + 8354) = this + 66272;
  *(this + 66208) = 8;
  *(this + 8355) = a7;
  *(this + 8356) = a4;
  *(this + 66856) = 0;
  do
  {
    v14 = *(this + 8354) + v13;
    *(v14 + 12) = 0uLL;
    *v14 = v14 + 12;
    *(v14 + 8) = 8;
    *(v14 + 28) = 0uLL;
    *(v14 + 48) = -1;
    v13 += 56;
  }

  while (v13 != 560);
  BlueFin::GlPeGnssSvsInfoMgr::Clear(this);
  return this;
}

void BlueFin::GlPeGnssSvsInfoMgr::Clear(BlueFin::GlPeGnssSvsInfoMgr *this)
{
  v1 = 0;
  v2 = this + 0x10000;
  v3 = *(this + 8274);
  v4 = 179;
  do
  {
    v5 = (v3 + v1);
    v5[21] = 0uLL;
    v5[22] = 0uLL;
    v5[19] = 0uLL;
    v5[20] = 0uLL;
    v5[17] = 0uLL;
    v5[18] = 0uLL;
    v5[15] = 0uLL;
    v5[16] = 0uLL;
    v5[13] = 0uLL;
    v5[14] = 0uLL;
    v5[11] = 0uLL;
    v5[12] = 0uLL;
    v5[9] = 0uLL;
    v5[10] = 0uLL;
    v5[7] = 0uLL;
    v5[8] = 0uLL;
    v5[5] = 0uLL;
    v5[6] = 0uLL;
    v5[3] = 0uLL;
    v5[4] = 0uLL;
    v5[1] = 0uLL;
    v5[2] = 0uLL;
    *v5 = 0uLL;
    v3 = *(this + 8274);
    v6 = v3 + v1;
    *v6 = 8;
    v1 += 368;
    *(v6 + 4) = -2048;
    --v4;
  }

  while (v4);
  v7 = 0;
  *(this + 1) = 0;
  v8 = *this;
  v9 = -1;
  do
  {
    v8 |= 1 << BlueFin::GlPeGnssSvsInfoMgr::m_aeSupportedGnss2Impl[v7];
    *this = v8;
    if (v7 * 2)
    {
      *(this + v7 * 2 + 4) = *(this + v9 + 1) + BlueFin::GlImplGnss::m_aucNumSatsPerImplGnss[*&BlueFin::GlPeGnssSvsInfoMgr::m_aeSupportedGnss2Impl[2 * v9]];
    }

    ++v9;
    v7 += 2;
  }

  while (v7 != 12);
  *(this + 288) = 0;
  v10 = (*(this + 33) + 8);
  v11 = 7;
  do
  {
    v12 = *(v10 - 1);
    v13 = *v10;
    v10 += 24;
    bzero(v12, ((4 * v13 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    --v11;
  }

  while (v11);
  v14 = *(v2 + 162);
  v15 = 10;
  do
  {
    bzero(*v14, ((4 * *(v14 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    *(v14 + 48) = -1;
    v14 += 56;
    --v15;
  }

  while (v15);
  v16 = *(v2 + 83);
  v17 = ((4 * v2[672] + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4;

  bzero(v16, v17);
}

uint64_t BlueFin::GlDineCtrl::Enable5HzSubTrk(BlueFin::GlDineCtrl *this, int a2)
{
  *(this + 30893) = a2;
  v2 = "Disabled";
  if (a2)
  {
    v2 = "Enabled";
  }

  return GlCustomLog(14, "GlDineCtrl::Enable5HzSubTrk is %s \n", v2);
}

uint64_t BlueFin::GlPeReqBag::GetTimeTillTimeoutMs(BlueFin::GlPeReqBag *this, char a2)
{
  v2 = *(this + 329);
  if ((v2 & 0x80000000) != 0)
  {
    if (v2 != -1)
    {
      v2 = *(this + 810);
    }
  }

  else
  {
    v3 = *(this + v2);
    v4 = *(v3 + 8);
    v5 = *(v4 + 22);
    if (v5 < 1)
    {
      v2 = 0xFFFFFFFFLL;
    }

    else
    {
      v6 = 1000 * v5;
      if (a2)
      {
        v7 = *(BlueFin::GlUtils::m_pInstance + 1092) - *(v4 + 28);
      }

      else
      {
        v8 = *(v3 + 36);
        if (v8 == -1)
        {
          v7 = 1;
        }

        else
        {
          v9 = *(v4 + 28);
          v10 = *(v3 + 32) + v8;
          v11 = v10 >= v9;
          v7 = v10 - v9;
          if (!v11)
          {
            v7 = 1;
          }
        }
      }

      v11 = v6 >= v7;
      LODWORD(v2) = v6 - v7;
      if (v11)
      {
        v2 = v2;
      }

      else
      {
        v2 = 0;
      }
    }
  }

  *(this + 3233) = *(this + 3233);
  return v2;
}

uint64_t BlueFin::GlPeReqBag::IsRareFixMode(BlueFin::GlPeReqBag *this)
{
  v7 = this + 3233;
  v8 = *(this + 3233);
  *(this + 3233) = 0;
  if (*(this + 1312))
  {
    goto LABEL_11;
  }

  v2 = *(this + 329);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = *(*(this + v2) + 8);
    if ((*(v3 + 16) - 1) <= 1 && *(v3 + 22) >= 2)
    {
      GlCustomLog(14, "RareFixMode enabled by single shot request\n");
      v4 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  if (v2 == -1)
  {
    goto LABEL_11;
  }

  if (*(this + 3237))
  {
    v5 = "true";
  }

  else
  {
    v5 = "false";
  }

  GlCustomLog(14, "RareFixMode set to %s\n", v5);
  v4 = *(this + 3237);
LABEL_12:
  *v7 = v8;
  return v4 & 1;
}

uint64_t BlueFin::GlDineCtrl::SetOscOffsAiding(BlueFin::GlDineCtrl *this, int a2, double a3, double a4, int a5)
{
  v7 = fabs(a3 * 1000000.0);
  v8 = a3 * 1000000000.0;
  v9 = a4 * 1000000000.0;
  if (a5)
  {
    v10 = 84;
  }

  else
  {
    v10 = 70;
  }

  if (v7 > 6.9000001)
  {
    return GlCustomLog(14, "GlDineCtrl::SetOscOffsAiding(%u, %.1f, %.1f, %c) - Rejected!  Oscillator offset out of range. \n", a2, v8, v9, v10);
  }

  GlCustomLog(15, "GlDineCtrl::SetOscOffsAiding(%u, %.1f, %.1f, %c)\n", a2, v8, v9, v10);
  v15 = *(*(this + 3647) + 32);

  v13.n128_f32[0] = a3;
  v14.n128_f32[0] = a4;
  return v15(v13, v14);
}

void BlueFin::GlMeWinMgr::SetOscOffsAiding(BlueFin::GlMeWinMgr *this, uint64_t a2, float a3, float a4, int a5)
{
  v10 = a3;
  v11 = a4;
  v41 = &unk_2A1F0E2B8;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    off_2A1F0E2D0(&v41, 0, 0);
  }

  v12 = fabsf(a3);
  if (v12 >= 0.0000069000001)
  {
    GlCustomLog(14, "GlMeWinMgr::SetOscOffsAiding(%u, %.1f) - Rejected!  Oscillator offset out of range. \n", a2, v10 * 1000000000.0);
    return;
  }

  v29 = 0.0;
  v30 = &unk_2A1F0E1A0;
  v35 = 0;
  v36 = 2139095039;
  v37 = 0;
  v38 = 2139095039;
  v39 = 0;
  v40 = 0x36A7C5AC7F7FFFFFLL;
  v33 = a3;
  v34 = a4;
  v31 = 16;
  v32 = a2;
  v28 = 0.0;
  BlueFin::GlMeMiniKF::mskfGetCbDot((this + 9312), a2, &v29, &v28, v12, 0.0000069000001);
  v20[0] = &unk_2A1F0E1A0;
  v20[1] = 0;
  v21 = 0x36A7C5AC00000000;
  v22 = 0;
  v23 = 2139095039;
  v24 = 0;
  v25 = 2139095039;
  v26 = 0;
  v27 = 0x36A7C5AC7F7FFFFFLL;
  BlueFin::GlMeClkModMgr::GetClkMod((this + 144), v20, a2);
  v13 = 0;
  v14 = v28;
  if (*(this + 62) == -1 && v28 <= v11)
  {
    v13 = *(this + 9864) >> 7;
  }

  if (a4 <= 0.000000025 || v28 >= v11)
  {
    v15 = v29;
  }

  else
  {
    v15 = v29;
    if (v28 < 0.0000000159999995 || *(&v21 + 1) <= a4)
    {
      v16 = v29 != 0.0 || a3 == 0.0;
      v17 = !v16;
      if (((v17 | v13) & 1) == 0 && !a5)
      {
        return;
      }
    }
  }

  BlueFin::GlMeClkModMgr::SetClkModFromPe((this + 144), a2, &v30);
  v18.n128_f64[0] = v14 - v11;
  if (v14 - v11 > 0.000001 || v15 == 0.0 || a5)
  {
    v18.n128_f64[0] = (a4 * a4);
    *(this + 1167) = v10;
    *(this + 1169) = v18.n128_u64[0];
    *(this + 2344) = a2;
    *(this + 9380) = 0;
    if (a5)
    {
      GlCustomLog(14, "SetOscOffsAiding(%u,%lf,%lf) forced by PE.\n", a2, (a3 * 1000000000.0), (a4 * 1000000000.0));
    }
  }

  if (v13)
  {
    v46 = 0;
    v19 = *(this + 35);
    if (v19)
    {
      (*(*v19 + 16))(v19, 2, &v46, v18);
    }
  }
}

BOOL BlueFin::GlMeMiniKF::mskfGetCbDot(BlueFin::GlMeMiniKF *this, unsigned int a2, double *a3, double *a4, double a5, double a6)
{
  if (*(this + 68))
  {
    v7 = 0;
    *a3 = *(this + 3);
    v8 = *(this + 5);
    *a4 = sqrtf(v8);
  }

  else
  {
    LODWORD(a6) = *(this + 16);
    v9 = (a2 - *&a6) / 1000.0;
    *a3 = *(this + 3);
    v10 = *(this + 5);
    v11 = sqrtf(v10);
    if (v9 <= 0.0)
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 + v9 * 0.000000001;
    }

    *a4 = v12;
    v13 = (*(**(this + 1) + 56))(*(this + 1)) + -0.000000002;
    v14 = *a4;
    if (*a4 > v13)
    {
      *a4 = v13;
      v14 = v13;
    }

    return v14 < 0.000005;
  }

  return v7;
}

float BlueFin::GlSatAid::GlSatAid(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 92) = *(a2 + 92);
  for (i = 56; i != 72; i += 4)
  {
    result = *(a2 + i);
    *(a1 + i) = result;
  }

  return result;
}

_BYTE *BlueFin::GlPeSatAidInfo::Remove(uint64_t a1, unsigned __int8 *a2)
{
  result = BlueFin::GlArray::Get((a1 + 9120), *a2);
  if (result)
  {
    *result = 0;
    v5 = *a2;

    return BlueFin::GlArray::Remove((a1 + 9120), v5);
  }

  return result;
}

uint64_t BlueFin::GlGnssSet::operator^@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  *(a3 + 168) = a3;
  do
  {
    v7 = *(a3 + 168) + v6;
    *(v7 + 12) = 0;
    *v7 = v7 + 12;
    *(v7 + 8) = 2;
    v6 += 24;
  }

  while (v6 != 168);
  for (i = 0; i != 168; i += 24)
  {
    v9 = *(a2 + 168);
    BlueFin::GlSetBase::GlSetBase(v11, v12, 2u, (*(a1 + 168) + i));
    v13 = &v15;
    v14 = 2;
    v15 = 0;
    BlueFin::GlSetBase::OperatorBinaryXor(v11, &v13, (v9 + i));
    BlueFin::GlSetBase::operator=(v11, &v13);
    *v12 = v15;
    result = BlueFin::GlSetBase::operator=(*(a3 + 168) + i, v11);
    *(result + 12) = *v12;
  }

  return result;
}

uint64_t BlueFin::GlGnssSet::operator&@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  *(a3 + 168) = a3;
  do
  {
    v7 = *(a3 + 168) + v6;
    *(v7 + 12) = 0;
    *v7 = v7 + 12;
    *(v7 + 8) = 2;
    v6 += 24;
  }

  while (v6 != 168);
  for (i = 0; i != 168; i += 24)
  {
    v9 = *(a2 + 168);
    BlueFin::GlSetBase::GlSetBase(v11, v12, 2u, (*(a1 + 168) + i));
    v13 = &v15;
    v14 = 2;
    v15 = 0;
    BlueFin::GlSetBase::OperatorBinaryAnd(v11, &v13, (v9 + i));
    BlueFin::GlSetBase::operator=(v11, &v13);
    *v12 = v15;
    result = BlueFin::GlSetBase::operator=(*(a3 + 168) + i, v11);
    *(result + 12) = *v12;
  }

  return result;
}

BOOL BlueFin::GlGnssSet::IsEmpty(BlueFin::GlGnssSet *this)
{
  v1 = 0;
  LOBYTE(v2) = 1;
  do
  {
    if (v2 && (v3 = *(this + 21) + 24 * v1, v4 = *v3, !**v3))
    {
      v5 = *(v3 + 8);
      v6 = v5 >= 2;
      v7 = v5 - 2;
      if (v6)
      {
        v8 = v4 + 1;
        do
        {
          v10 = *v8++;
          v9 = v10;
          v2 = v10 == 0;
          v6 = v7-- != 0;
          v11 = v6;
        }

        while (!v9 && (v11 & 1) != 0);
      }

      else
      {
        v2 = 1;
      }
    }

    else
    {
      v2 = 0;
    }

    ++v1;
  }

  while (v1 != 7);
  return v2;
}

BOOL BlueFin::GlPeRangeAidGen::SvIdIsConsistentWithGnss(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v8 = 7;
  v9 = 0;
  BlueFin::GlPeSvIdConverter::SvId2Gnss((a1 + 119744), a2, &v8, a4, a5);
  result = 0;
  if (v9 - 1 <= 0x3E && v8 == *a3)
  {
    return v9 == *(a3 + 4);
  }

  return result;
}

uint64_t BlueFin::GlPeSatPos::RemoveSvId(uint64_t result, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 >= 0xBD)
  {
    DeviceFaultNotify("glpe_satpos.cpp", 628, "RemoveSvId", "*rotSvId <= MAX_SVID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_satpos.cpp", 628, "*rotSvId <= MAX_SVID");
  }

  v4 = *(result + v3 + 17512);
  if (v4 <= 0x5A)
  {
    v5 = (result + 8);

    return BlueFin::GlPeMiniEphMgr::remove(v5, v4);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::PpuToEswAidingFrequency(BlueFin::GlMeSrdAsicUnitConverter *this, float a2, const BlueFin::GlSignalId *a3)
{
  BlueFin::GlMeSrdAsicUnitConverter::CalcPpuToEswAidingFrequency(this, a2, a3);
  if (v3 <= -32768.0 || v3 >= 32767.0)
  {
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 168, "PpuToEswAidingFrequency", "dEswAidFreqInHwUnits > SHRT_MIN && dEswAidFreqInHwUnits < SHRT_MAX");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_asic_unit_converter.cpp", 168, "dEswAidFreqInHwUnits > SHRT_MIN && dEswAidFreqInHwUnits < SHRT_MAX");
  }

  return v3;
}

float BlueFin::GlMeSrdAsicUnitConverter::PpuToHz(BlueFin::GlMeSrdAsicUnitConverter *this, float a2, const BlueFin::GlSignalId *a3)
{
  if (*(this + 4) >= 0x23Fu)
  {
    DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 651, "IsValid()");
  }

  v3 = *this;
  v4 = BlueFin::GlSvId::s_aucSvId2gnss[v3];
  v5 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(this + 1) - *(this + 1) + v4]];
  if (v4 == 2)
  {
    v6 = (v3 - 59);
    if ((v3 - 52) >= 0xE)
    {
      v6 = -8.0;
    }

    v5 = v5 + v6 * 562500.0;
  }

  v7 = v5;
  return v7 * a2;
}

uint64_t BlueFin::GlMeSrdAsicUnitConverter::PpuPerSecToEswAidingAcceleration(BlueFin::GlMeSrdAsicUnitConverter *this, float a2, const BlueFin::GlSignalId *a3)
{
  if (*(this + 4) >= 0x23Fu)
  {
    goto LABEL_20;
  }

  v4 = *this;
  v5 = BlueFin::GlSvId::s_aucSvId2gnss[*this];
  v6 = *(this + 1);
  v7 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v6 + v5];
  v8 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v6 - v6 + v5];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    goto LABEL_19;
  }

  if (v6)
  {
    if ((v4 - 189) >= 0xFFFFFF44 && BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v5] != 255 && (BlueFin::GlSignalId::s_ausGnss2signalId[v5] + v4 - BlueFin::GlSvId::s_aucGnss2minSvId[v5]) < 0x23Fu)
    {
      v10 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[v5];
      if (v10)
      {
        v11 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[v5];
        if (v11)
        {
          v12 = 1000 * v10 / v11;
          goto LABEL_14;
        }
      }

LABEL_19:
      v15 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
      v16 = "glsignalid.h";
      v17 = 815;
      goto LABEL_22;
    }

LABEL_20:
    v15 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v16 = "glsignalid.h";
    v17 = 807;
    goto LABEL_22;
  }

  v12 = 1000 * v7 / v8;
LABEL_14:
  v13 = BlueFin::GlMeSrdAsicUnitConverter::PpuToHz(this, a2, a3) * 8.79609302e12 / v12 / v12 + 0.5;
  if (*(this + 1) == 2)
  {
    v13 = v13 * 0.64;
  }

  if (v13 <= -32768.0 || v13 >= 32767.0)
  {
    v15 = "dEswAccInHwUnits > SHRT_MIN && dEswAccInHwUnits < SHRT_MAX";
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 266, "PpuPerSecToEswAidingAcceleration", "dEswAccInHwUnits > SHRT_MIN && dEswAccInHwUnits < SHRT_MAX");
    v16 = "glmesrd_asic_unit_converter.cpp";
    v17 = 266;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v16, v17, v15);
  }

  return v13;
}

void BlueFin::GlMeSrdAidingMgr::SendAidingBatch(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v8 = 0;
    v9 = a2;
    do
    {
      v10 = v9 - 32;
      if (v9 >= 0x20)
      {
        v11 = 32;
      }

      else
      {
        v11 = v9;
      }

      v12 = (*(*a1 + 80))(a1);
      v15 = 0;
      v16[0] = 0;
      *(v16 + 7) = 0;
      v17 = v12;
      v18 = 0;
      v19 = 0;
      (*(*v12 + 16))(v12, 0);
      v13 = (*(*v17 + 48))(v17);
      v14 = (*(*v13 + 48))(v13);
      (*(*v14 + 72))(v14, &v15, v11, a3 + v8, a4 + 36 * v8);
      BlueFin::GlMeSrdTransaction::Complete(&v15);
      BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(&v15);
      v8 += 32;
      v9 = v10;
    }

    while (v8 < a2);
  }
}

void sub_29889D82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlReqSm::GenerateInitialDopplerBasedAiding(BlueFin::GlReqSm *this)
{
  result = BlueFin::GlPeSatAidInfo::Clear(this + 33568, 1);
  v3 = *(this + 790);
  if (*(v3 + 18816) == 1)
  {
    result = BlueFin::GlSetBase::Cnt((v3 + 37288));
    if (result)
    {
      if (*v3 >> 5 < 0x271u || *v3 == -7200001)
      {
        result = BlueFin::GlSetBase::GlSetBase(&__src, v73, 0x13u, (v3 + 37288));
        if (!*__src)
        {
          if (v72 < 2uLL)
          {
LABEL_50:
            *(*(this + 790) + 18816) = 0;
            return result;
          }

          v50 = v72 - 1;
          v51 = __src + 4;
          while (!*v51++)
          {
            if (!--v50)
            {
              goto LABEL_50;
            }
          }
        }

        v5 = *(this + 785);
        v6 = v5[642];
        if (v6 <= 0xFF9222FE)
        {
          v7 = v6;
        }

        else
        {
          v7 = v6;
        }

        v8 = BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(v5, 0, 1, v66, v7);
        LODWORD(v8) = v67;
        LOWORD(v9) = v68;
        *&v10 = v9 * 0.000001;
        *&v11 = *&v10 + *&v8 * 0.001;
        LOWORD(v10) = v69;
        v12 = *&v11 + v10 * 0.000000001;
        LODWORD(v11) = v70;
        v13 = v11 * 0.000001;
        v14 = BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(*(this + 785), 1u, 1, v61, v7);
        LODWORD(v14) = v62;
        LOWORD(v15) = v63;
        *&v16 = v15 * 0.000001;
        v17 = *&v16 + *&v14 * 0.001;
        LOWORD(v16) = v64;
        *&v18 = v16;
        v19 = v17 + *&v18 * 0.000000001;
        LODWORD(v18) = v65;
        *(this + 4233) = v12;
        v20 = v13;
        *(this + 8468) = v20;
        *(this + 4235) = v19;
        *&v19 = v18 * 0.000001;
        *(this + 8472) = LODWORD(v19);
        *(this + 8473) = v6;
        v21 = xmmword_298A31960;
        v22 = xmmword_298A31970;
        v23 = xmmword_298A31980;
        v24 = xmmword_298A31990;
        v25 = xmmword_298A319A0;
        v26 = xmmword_298A319B0;
        v27 = xmmword_298A319C0;
        v28 = xmmword_298A319D0;
        v29 = *(this + 5333);
        v30 = 96;
        v31 = vdupq_n_s64(0x5BuLL);
        v32 = vdupq_n_s64(0x10uLL);
        do
        {
          if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v31, v28)), *v21.i8), *v21.i8).u8[0])
          {
            *v29 = 0;
          }

          if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v28)), *&v21), *&v21).i8[1])
          {
            v29[96] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v27))), *&v21).i8[2])
          {
            v29[192] = 0;
            v29[288] = 0;
          }

          if (vuzp1_s8(*&v21, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v26)), *&v21)).i32[1])
          {
            v29[384] = 0;
          }

          if (vuzp1_s8(*&v21, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v26)), *&v21)).i8[5])
          {
            v29[480] = 0;
          }

          if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v25)))).i8[6])
          {
            v29[576] = 0;
            v29[672] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), v24)), *v21.i8), *v21.i8).u8[0])
          {
            v29[768] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v24)), *&v21), *&v21).i8[1])
          {
            v29[864] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v23))), *&v21).i8[2])
          {
            v29[960] = 0;
            v29[1056] = 0;
          }

          if (vuzp1_s8(*&v21, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v22)), *&v21)).i32[1])
          {
            v29[1152] = 0;
          }

          if (vuzp1_s8(*&v21, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v22)), *&v21)).i8[5])
          {
            v29[1248] = 0;
          }

          if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5BuLL), *&v21)))).i8[6])
          {
            v29[1344] = 0;
            v29[1440] = 0;
          }

          v26 = vaddq_s64(v26, v32);
          v27 = vaddq_s64(v27, v32);
          v28 = vaddq_s64(v28, v32);
          v25 = vaddq_s64(v25, v32);
          v24 = vaddq_s64(v24, v32);
          v23 = vaddq_s64(v23, v32);
          v22 = vaddq_s64(v22, v32);
          v29 += 1536;
          v21 = vaddq_s64(v21, v32);
          v30 -= 16;
        }

        while (v30);
        v56 = v72;
        memcpy(v60, __src, 4 * v72);
        v58 = 0;
        v57 = 0;
        v59 = v60[0];
        for (result = BlueFin::GlSetIterator::operator++(&v56); v57 != v56; result = BlueFin::GlSetIterator::operator++(&v56))
        {
          v33 = v58;
          if (v58 >= 0x23FuLL)
          {
            DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
          }

          v34 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v58;
          v35 = *v34;
          v36 = v34[1];
          v53[0] = *v34;
          v54 = v36;
          v55 = v58;
          *v38.i64 = BlueFin::GlPeSatAidInfo::Add(this + 33568, v53);
          if (v37)
          {
            v40 = v37;
            *v37 = v35;
            v41 = *(this + 786);
            v53[0] = v35;
            v54 = v36;
            v55 = v33;
            v74 = 7;
            v75 = 0;
            BlueFin::GlPeSvIdConverter::SvId2Gnss((v41 + 119744), v53, &v74, v38, v39);
            v42 = v75;
            *(v40 + 1) = v74;
            v40[8] = v42;
            v43 = *(this + 790);
            v53[0] = v35;
            v54 = v36;
            v55 = v33;
            *v44.i64 = BlueFin::GlPeMsmtMgr::GetIniDoppler(v43, v53);
            *v44.i32 = *v44.i64;
            *(v40 + 11) = v44.i32[0];
            v48 = BlueFin::GlPeTimeManager::GetSleepTimeSec(*(this + 785), v44, v45, v46, v47) * 5.0e-10;
            if (v48 < 0.00000001)
            {
              v48 = 0.00000001;
            }

            v49 = v48;
            *(v40 + 12) = v49;
            *(v40 + 6) = 16;
          }
        }
      }
    }
  }

  return result;
}

unsigned __int8 *BlueFin::GlReqSm::GetValidDetectedSignalIds(BlueFin::GlReqSm *this, uint64_t a2)
{
  v4 = BlueFin::GlSetBase::GlSetBase(this, this + 3, 0x13u, (*(a2 + 6320) + 96));
  v15 = *(v4 + 8);
  memcpy(v19, *v4, 4 * v15);
  v17 = 0;
  v16 = 0;
  v18 = v19[0];
  for (result = BlueFin::GlSetIterator::operator++(&v15); v16 != v15; result = BlueFin::GlSetIterator::operator++(&v15))
  {
    v6 = v17;
    if (v17 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v7 = *(a2 + 6320);
    v8 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v17;
    v9 = *v8;
    LODWORD(v8) = v8[1];
    v12[0] = v9;
    v13 = v8;
    v14 = v17;
    MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(v7, v12, 0, 1u);
    v11 = *(MeMeas + 3);
    if ((v11 & 0x8002) != 2 || (v11 & 0x4000) == 0 || *(MeMeas + 27) > 0.000000016)
    {
      BlueFin::GlSetBase::Remove(this, v6);
    }
  }

  return result;
}

BlueFin::GlSatAidInfo *BlueFin::GlSatAidInfo::GlSatAidInfo(BlueFin::GlSatAidInfo *this, const BlueFin::GlSatAidInfo *a2)
{
  v4 = 0;
  *this = &unk_2A1F09358;
  *(this + 1) = *(a2 + 1);
  *(this + 4) = *(a2 + 4);
  *(this + 3) = *(a2 + 3);
  v5 = *(a2 + 8);
  *(this + 9) = *(a2 + 9);
  *(this + 2200) = *(a2 + 2200);
  *(this + 1101) = this + 64;
  v6 = 91;
  *(this + 8) = v5;
  do
  {
    BlueFin::GlSatAid::GlSatAid(*(this + 1101) + v4, *(a2 + 1101) + v4);
    v4 += 96;
    --v6;
  }

  while (v6);
  return this;
}

uint64_t BlueFin::GlDineCtrl::SetFarStartMode(BlueFin::GlDineCtrl *this, int a2)
{
  v3 = this + 73728;
  v4 = "Disabled";
  if (a2)
  {
    v4 = "Enabled";
  }

  result = GlCustomLog(14, "GlDineCtrl::SetFarStartMode(%s)\n", v4);
  v3[474] = a2;
  if (a2)
  {
    v3[473] = 1;
  }

  return result;
}

BOOL BlueFin::GlPeAlmMgr::IsValid(uint64_t a1, const BlueFin::GlGpsTime *a2, uint64_t a3, int a4)
{
  AlmReference = BlueFin::GlPeAlmMgr::getAlmReference(a1, *a3, *(a3 + 4));
  v10 = AlmReference;
  if (!a4 || (result = BlueFin::GlPeAlmanac::IsHealthy(AlmReference), result))
  {
    if (*a3 == 1)
    {
      return 1;
    }

    else
    {
      BlueFin::GlPeAlmanac::GetToa(&v22, v10, a2, v8, v9);
      v12 = *(a2 + 2);
      v13 = *(a2 + 3);
      if (v23)
      {
        v15 = v13 - HIDWORD(v23);
        if (__PAIR64__(v13, v12) < v23)
        {
          v18 = HIDWORD(v23) - v13;
          v16 = v23 >= v12;
          v12 = v23 - v12;
          v19 = !v16;
          v13 = v18 - v19;
          v14 = 1;
        }

        else
        {
          v14 = 0;
          v16 = v12 >= v23;
          v12 -= v23;
          v17 = !v16;
          v13 = v15 - v17;
        }
      }

      else
      {
        v14 = 0;
      }

      v20 = v12 * 2.32830644e-10 + v13;
      if ((v14 & ((v13 | v12) != 0)) != 0)
      {
        v20 = -v20;
      }

      v21 = v20;
      if (v20 < 0)
      {
        v21 = -v21;
      }

      return v21 < 0xEFF101;
    }
  }

  return result;
}

uint64_t (*(*BlueFin::GlMeSrdCtrlSm::wait4loading(uint64_t a1, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  v3 = *a2;
  v4 = BlueFin::GlMeSrdCtrlSm::my_top;
  if (v3 > 0xC)
  {
    if (v3 == 13)
    {
      if (a2[1])
      {
        DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 1495, "wait4loading", "PARAM_ACK_WAIT4LOADING == e->par");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 1495, "PARAM_ACK_WAIT4LOADING == e->par");
      }

      if (*(a1 + 221) == 1)
      {
        v5 = "&GlMeSrdCtrlSm::wait4standby";
        v6 = BlueFin::GlMeSrdCtrlSm::wait4standby;
      }

      else
      {
        v5 = "&GlMeSrdCtrlSm::idle";
        v6 = BlueFin::GlMeSrdCtrlSm::idle;
      }
    }

    else
    {
      if (v3 != 21)
      {
        if (v3 == 25)
        {
          v4 = 0;
          *(a1 + 221) = 1;
        }

        return v4;
      }

      v5 = "&GlMeSrdCtrlSm::wait4memdump";
      v6 = BlueFin::GlMeSrdCtrlSm::wait4memdump;
    }

    BlueFin::QHsm::tran(a1, v6, v5);
    return 0;
  }

  if (v3 == 2)
  {
    if (*(*(a1 + 136) + 2136) == 1)
    {
      BlueFin::GlQueue::putLIFO((a1 + 2600), 40, 2);
    }

    v7 = *(a1 + 120);
    if (!v7)
    {
      v7 = *(a1 + 112);
    }

    (*(*v7 + 168))(v7, a1 + 3904);
    v8 = *(a1 + 120);
    if (!v8)
    {
      v8 = *(a1 + 112);
    }

    (*(*v8 + 152))(v8, a1 + 4096);
    v9 = *(a1 + 120);
    if (!v9)
    {
      v9 = *(a1 + 112);
    }

    (***(a1 + 168))(*(a1 + 168), v9, *(a1 + 136));
    v10 = *(a1 + 120);
    if (!v10)
    {
      v10 = *(a1 + 112);
    }

    (*(**(a1 + 168) + 8))(*(a1 + 168), v10, *(a1 + 136), BlueFin::GlMeSrdCtrlSm::ReceiverParameterProgrammed, a1);
    v11 = *(a1 + 120);
    if (!v11)
    {
      v11 = *(a1 + 112);
    }

    v12 = (*(*v11 + 80))(v11);
    v23[0] = 0;
    v23[1] = 0;
    v24 = 0;
    v25 = 1;
    v26 = v12;
    v27 = 0;
    v28 = 0;
    (*(*v12 + 16))(v12, 1);
    v18[0] = 8;
    v19 = 0;
    v20 = 0;
    v22 = 0;
    v21[0] = (*(**(a1 + 136) + 608))();
    v13 = *(a1 + 136);
    if (v13[1176] == 1)
    {
      v18[0] = v13[1179];
      v14 = v13[1180];
      if (!v14)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v14 = 25;
    }

    (*(**(a1 + 168) + 80))(*(a1 + 168), &v19, &v22, v21, v14);
    v12 = v26;
LABEL_30:
    v15 = (*(*v12 + 48))(v12);
    v16 = (*(*v15 + 48))(v15);
    (*(*v16 + 40))(v16, v23, v18);
    BlueFin::GlMeSrdTransaction::Complete(v23);
    if (*(a1 + 34518) == 1)
    {
      BlueFin::GlMeSrdMeasTimingMgr::SetLimitMaxRfOnTime((a1 + 3072), *(a1 + 34519), *(a1 + 34520));
    }

    BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v23);
    return 0;
  }

  if (v3 == 3)
  {
    v4 = 0;
    *(a1 + 221) = 0;
  }

  return v4;
}

void sub_29889E610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlDineCtrl::SetPowerState(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = "UNKNOWN";
  if (a2 == 1)
  {
    v4 = "GLMEIF_PWR_SAVE";
  }

  if (!a2)
  {
    v4 = "GLMEIF_PWR_FULL";
  }

  GlCustomLog(14, "GlDineCtrl::SetPowerState(%s)\n", v4);

  return BlueFin::GlMeSrdCtrlSm::SetPowerState(a1 + 75168, v2);
}

uint64_t BlueFin::GlMeSrdCtrlSm::SetPowerState(uint64_t result, int a2)
{
  if ((*(result + 219) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 292, "SetPowerState", "m_bAsicInitDone");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 292, "m_bAsicInitDone");
  }

  v2 = result;
  if ((*(result + 5576) & 1) == 0 && *(result + 5440) != a2)
  {
    *(result + 5440) = a2;
    if (*(result + 34512) == 1)
    {
      v4 = 34514;
      if (a2 == 1)
      {
        v4 = 34516;
      }

      v5 = *(result + v4);
      (*(**(result + 184) + 48))(*(result + 184), v5);
      BlueFin::GlMeSrdMeasTimingMgr::SetReportingInterval((v2 + 3072), v5);
    }

    return BlueFin::GlMeSrdMeasTimingMgr::SetPowerSaveEnabled((v2 + 3072), a2 == 1);
  }

  return result;
}

uint64_t AlmMgr_SortSvIds(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 4) - *(a2 + 4);
  if (v2 >= 1)
  {
    return 1;
  }

  else
  {
    return (v2 >> 31);
  }
}

double BlueFin::GlPeMiniEph::create(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = a4;
  v4 = *(a3 + 64);
  *(a1 + 12) = v4;
  v5 = v4 - 1;
  if (v5 > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_298A44620[v5];
  }

  *(a1 + 16) = v6;
  v7 = *(a3 + 144) - 1;
  if (v7 > 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = dword_298A44620[v7];
  }

  if (v6 != v8)
  {
    v19 = "m_eOrbitQual == raotSatPos[1].GetOrbitQuality()";
    DeviceFaultNotify("glpe_satpos.cpp", 253, "create", "m_eOrbitQual == raotSatPos[1].GetOrbitQuality()");
    v20 = 253;
    goto LABEL_15;
  }

  v9 = *(a3 + 224) - 1;
  if (v9 > 4)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_298A44620[v9];
  }

  if (v6 != v10)
  {
    v19 = "m_eOrbitQual == raotSatPos[2].GetOrbitQuality()";
    DeviceFaultNotify("glpe_satpos.cpp", 254, "create", "m_eOrbitQual == raotSatPos[2].GetOrbitQuality()");
    v20 = 254;
LABEL_15:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_satpos.cpp", v20, v19);
  }

  v11 = *(a3 + 160);
  *(a1 + 32) = v11;
  *(a1 + 40) = *(a3 + 80) - v11;
  *(a1 + 48) = *a3 + *(a3 + 80) * -2.0 + *(a3 + 160);
  v12 = *(a3 + 168);
  *(a1 + 56) = v12;
  *(a1 + 64) = *(a3 + 88) - v12;
  *(a1 + 72) = *(a3 + 8) + *(a3 + 88) * -2.0 + *(a3 + 168);
  v13 = *(a3 + 176);
  *(a1 + 80) = v13;
  *(a1 + 88) = *(a3 + 96) - v13;
  *(a1 + 96) = *(a3 + 16) + *(a3 + 96) * -2.0 + *(a3 + 176);
  v14 = *(a3 + 184);
  *(a1 + 104) = v14;
  *(a1 + 112) = *(a3 + 104) - v14;
  *(a1 + 120) = *(a3 + 24) + *(a3 + 104) * -2.0 + *(a3 + 184);
  v15 = *(a3 + 192);
  *(a1 + 128) = v15;
  *(a1 + 136) = *(a3 + 112) - v15;
  *(a1 + 144) = *(a3 + 32) + *(a3 + 112) * -2.0 + *(a3 + 192);
  v16 = *(a3 + 200);
  *(a1 + 152) = v16;
  *(a1 + 160) = *(a3 + 120) - v16;
  *(a1 + 168) = *(a3 + 40) + *(a3 + 120) * -2.0 + *(a3 + 200);
  v17 = *(a3 + 128);
  *(a1 + 176) = v17;
  result = v17 - *(a3 + 48);
  *(a1 + 184) = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<FireMessageHandler::EngineSerialNumberImpl(BlueFin::GlEngine *,unsigned int,unsigned int *,unsigned char)::$_0,std::allocator<FireMessageHandler::EngineSerialNumberImpl(BlueFin::GlEngine *,unsigned int,unsigned int *,unsigned char)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1F08778;
  a2[1] = v2;
  return result;
}

void std::__function::__func<FireMessageHandler::EngineSerialNumberImpl(BlueFin::GlEngine *,unsigned int,unsigned int *,unsigned char)::$_0,std::allocator<FireMessageHandler::EngineSerialNumberImpl(BlueFin::GlEngine *,unsigned int,unsigned int *,unsigned char)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  FireDeviceLog::DeviceLogBase(6, "postStartCompleted,pending,size,%zu", *(v1 + 1120));
  v2 = *(v1 + 1120);
  if (v2)
  {
    v3 = *(v1 + 1080);
    *(v1 + 1080) = 0;
    v10[0] = v3;
    v4 = *(v1 + 1096);
    *(v1 + 1088) = 0u;
    v10[1] = v4;
    *(v1 + 1104) = 0;
    v5 = *(v1 + 1112);
    v11.i64[0] = v5;
    v11.i64[1] = v2;
    *(v1 + 1112) = 0u;
    do
    {
      FireMessageHandler::send(v1, *(*(*(&v10[0] + 1) + ((v5 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v5 & 0x3FF)));
      v6 = v11.i64[0];
      v7 = vaddq_s64(v11, xmmword_298A2F6E0);
      v11 = v7;
      v5 = v7.i64[0];
      if (v7.i64[0] >= 0x800uLL)
      {
        v8 = v6;
        v9 = v7.i64[1];
        operator delete(**(&v10[0] + 1));
        v7.i64[1] = v9;
        v5 = v8 - 1023;
        *(&v10[0] + 1) += 8;
        v11.i64[0] = v8 - 1023;
      }
    }

    while (v7.i64[1]);
    std::deque<FireMessageHandler::Message>::~deque[abi:ne200100](v10);
  }
}

void sub_29889EC0C(_Unwind_Exception *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::deque<FireMessageHandler::Message>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void BlueFin::GlMeSrdReceiverParametersProgrammer::OnReliableAck(BlueFin::GlMeSrdReceiverParametersProgrammer *this, void *a2)
{
  v2 = a2;
  v213 = *MEMORY[0x29EDCA608];
  (*(**(this + 1) + 264))(*(this + 1));
  v4 = (*(**(this + 1) + 264))();
  MaxAllowedCnstls = BlueFin::GlMeRxParamLimits::GetMaxAllowedCnstls(v4);
  if (MaxAllowedCnstls)
  {
    v6 = MaxAllowedCnstls;
    v7 = 0;
    v8 = 0;
    do
    {
      if ((*(**(this + 1) + 128))(*(this + 1), v8))
      {
        v9 = 0;
        do
        {
          if ((*(**(this + 1) + 120))(*(this + 1), v8, v9))
          {
            if (v7 == v2)
            {
              v12 = (*(**(this + 15) + 80))(*(this + 15));
              v13 = *(this + 102);
              *(this + 102) = v13 + 1;
              v193[0] = BlueFin::GlMeSrdReceiverParametersProgrammer::OnReliableAck;
              v193[1] = this;
              v194 = v13;
              v195 = 1;
              v196 = v12;
              v197 = 0;
              v198 = 0;
              (*(*v12 + 16))(v12, 1);
              (*(**(this + 1) + 264))();
              if (v9 >= 6)
              {
                v181 = "eMode < GlMeRxParamLimits::GetMaxAllowedModes(m_rRxParams.GetRxType())";
                v182 = 444;
                DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 444, "ProgramTrackParameters", "eMode < GlMeRxParamLimits::GetMaxAllowedModes(m_rRxParams.GetRxType())");
                goto LABEL_270;
              }

              v14 = (*(**(this + 1) + 264))(*(this + 1));
              if (v8 >= BlueFin::GlMeRxParamLimits::GetMaxAllowedCnstls(v14))
              {
                v181 = "eCnstl < GlMeRxParamLimits::GetMaxAllowedCnstls(m_rRxParams.GetRxType())";
                v182 = 445;
                DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 445, "ProgramTrackParameters", "eCnstl < GlMeRxParamLimits::GetMaxAllowedCnstls(m_rRxParams.GetRxType())");
                goto LABEL_270;
              }

              if (((*(**(this + 1) + 120))(*(this + 1), v8, v9) & 1) == 0)
              {
                v181 = "m_rRxParams.IsModeSupported(eCnstl, eMode)";
                v182 = 446;
                DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 446, "ProgramTrackParameters", "m_rRxParams.IsModeSupported(eCnstl, eMode)");
                goto LABEL_270;
              }

              v15 = (*(**(this + 1) + 96))(*(this + 1), v8, v9);
              v187 = v15 + *((*(**(this + 1) + 168))(*(this + 1), v15) + 8) - 1;
              if (v15 > v187)
              {
                goto LABEL_18;
              }

              v17 = v8 == 3 && v9 == 0;
              v18 = v8 == 4 && v9 == 1;
              v184 = v17;
              if (v18)
              {
                v17 = 1;
              }

              v183 = v17;
              v19 = v15 + 1;
              v20 = 3.0;
              if (v9 != 3)
              {
                v20 = 1.0;
              }

              v185 = -v20;
              v186 = v20 * 4.0;
              v21 = 0.5;
              v22.f64[0] = NAN;
              v22.f64[1] = NAN;
              v191 = vnegq_f64(v22);
              v23 = 0.5;
              v24 = 16.0;
              v25 = v15;
              while (2)
              {
                v192 = v25;
                v26 = v25;
                v27 = (*(**(this + 1) + 168))(*(this + 1));
                if (!*(v27 + 8))
                {
                  goto LABEL_260;
                }

                v188 = *(v27 + 8);
                v189 = (*(**(this + 1) + 88))(*(this + 1), v192);
                if (v189 != v15)
                {
                  v181 = "ucGearidRoot == ucFirstGearid";
                  v182 = 459;
                  DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 459, "ProgramTrackParameters", "ucGearidRoot == ucFirstGearid");
                  goto LABEL_270;
                }

                v28 = (*(**(this + 1) + 184))(*(this + 1), v192);
                v29.i64[1] = 0;
                v206 = 0u;
                v207 = 0u;
                v205 = 0u;
                LOBYTE(v205) = v192;
                BYTE1(v205) = *(v28 + 4);
                *v29.i64 = v21 + *(v28 + 12) * 256.0;
                *v30.i64 = *v29.i64 + trunc(*v29.i64 * 2.32830644e-10) * -4294967300.0;
                v31 = vbslq_s8(v191, v30, v29.u64[0]);
                if (*v29.i64 > 4294967300.0)
                {
                  v29.i64[0] = v31.i64[0];
                }

                if (*v29.i64 < -4294967300.0)
                {
                  *v31.i64 = -*v29.i64;
                  *v29.i64 = -(*v29.i64 - trunc(*v29.i64 * -2.32830644e-10) * -4294967300.0);
                  *v29.i64 = -*vbslq_s8(v191, v29, v31).i64;
                }

                if (*v29.i64 < 0.0)
                {
                  v32 = --*v29.i64;
                }

                else
                {
                  LOBYTE(v32) = *v29.i64;
                }

                BYTE2(v205) = v32;
                v33 = *(*(**(this + 1) + 168))(*(this + 1), v192);
                v34 = (*(**(this + 1) + 168))(*(this + 1), v192);
                v35 = *(v34 + 12);
                v36.i32[0] = *(v28 + 8);
                EswCoherentTableIndex = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswCoherentTableIndex(v34, v36, v33, v37, v38);
                BYTE3(v205) = EswCoherentTableIndex;
                v40.i32[0] = v35;
                v43 = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswCoherentTableIndex(EswCoherentTableIndex, v40, v33, v41, v42);
                HIBYTE(v207) = v43;
                v44.i32[0] = *(v28 + 24);
                BYTE4(v205) = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswCoherentTableIndex(v43, v44, v33, v45, v46);
                BYTE5(v205) = *(v28 + 48);
                if (*(v28 + 28) != 3)
                {
                  v181 = "ucLpOrder == 3";
                  v182 = 1038;
                  DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1038, "GetPllLoopCoefficients", "ucLpOrder == 3");
                  goto LABEL_270;
                }

                v47.n128_u32[0] = *(v28 + 24);
                v190 = v47;
                v48 = *(v28 + 32);
                v49 = v48 * 2.4 * v33;
                v50 = v48 * 1.2;
                *&v48 = v48 * 1.2;
                v51 = powf(*&v48, 3.0);
                *v53.i64 = v49 * 65536.0;
                if (v49 * 65536.0 < 0.0 || *v53.i64 > 65535.0 || (*&v54 = v50 * v33, v55.f32[0] = v33 * v33, v55.i32[1] = v54, v58.i64[1] = v190.n128_i64[1], v56 = vmulq_f64(vcvtq_f64_f32(vmul_f32((v190.n128_u32[0] | 0x4000000000000000), vmul_f32(v55, __PAIR64__(v54, LODWORD(v51))))), xmmword_298A379A0), v57 = vmvnq_s8(vcgezq_f64(v56)), *v58.i8 = vmovn_s64(v57), (v58.i8[4] & 1) != 0) || v56.f64[1] > 65535.0 || (v58.i8[0] & 1) != 0 || v56.f64[0] > 65535.0)
                {
                  v181 = "dCoeff0 >= 0.0 && dCoeff0 <= MAX_USHORT && dCoeff1 >= 0.0 && dCoeff1 <= MAX_USHORT && dCoeff2 >= 0.0 && dCoeff2 <= MAX_USHORT";
                  v182 = 1049;
                  DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1049, "GetPllLoopCoefficients", "dCoeff0 >= 0.0 && dCoeff0 <= MAX_USHORT && dCoeff1 >= 0.0 && dCoeff1 <= MAX_USHORT && dCoeff2 >= 0.0 && dCoeff2 <= MAX_USHORT");
                  goto LABEL_270;
                }

                *v53.i64 = *v53.i64 + v21;
                *v58.i64 = *v53.i64 + trunc(*v53.i64 * 2.32830644e-10) * -4294967300.0;
                v59 = vbslq_s8(v191, v58, v53);
                if (*v53.i64 > 4294967300.0)
                {
                  v53.i64[0] = v59.i64[0];
                }

                if (*v53.i64 < -4294967300.0)
                {
                  *v59.i64 = -*v53.i64;
                  *v53.i64 = -(*v53.i64 - trunc(*v53.i64 * -2.32830644e-10) * -4294967300.0);
                  v53 = vbslq_s8(v191, v53, v59);
                  *v53.i64 = -*v53.i64;
                }

                if (*v53.i64 < 0.0)
                {
                  v60 = --*v53.i64;
                }

                else
                {
                  LOWORD(v60) = *v53.i64;
                }

                WORD3(v205) = v60;
                *v53.i64 = v56.f64[1] + v21;
                *v59.i64 = v56.f64[1] + v21 + trunc((v56.f64[1] + v21) * 2.32830644e-10) * -4294967300.0;
                v61 = vbslq_s8(v191, v59, v53);
                if (v56.f64[1] + v21 > 4294967300.0)
                {
                  v53.i64[0] = v61.i64[0];
                }

                *v61.i64 = -*v53.i64;
                *v52.i64 = -(*v53.i64 - trunc(*v53.i64 * -2.32830644e-10) * -4294967300.0);
                *v61.i64 = -*vbslq_s8(v191, v52, v61).i64;
                if (*v53.i64 < -4294967300.0)
                {
                  v53.i64[0] = v61.i64[0];
                }

                if (*v53.i64 < 0.0)
                {
                  v62 = --*v53.i64;
                }

                else
                {
                  LOWORD(v62) = *v53.i64;
                }

                v56.f64[0] = v56.f64[0] + v21;
                *v53.i64 = v56.f64[0] + trunc(v56.f64[0] * 2.32830644e-10) * -4294967300.0;
                v63 = vbslq_s8(v191, v53, v56);
                if (v56.f64[0] > 4294967300.0)
                {
                  v56.f64[0] = *v63.i64;
                }

                *v63.i64 = -v56.f64[0];
                *v57.i64 = -(v56.f64[0] - trunc(v56.f64[0] * -2.32830644e-10) * -4294967300.0);
                *v63.i64 = -*vbslq_s8(v191, v57, v63).i64;
                if (v56.f64[0] < -4294967300.0)
                {
                  v56.f64[0] = *v63.i64;
                }

                WORD4(v205) = v62;
                if (v56.f64[0] < 0.0)
                {
                  v64 = --v56.f64[0];
                }

                else
                {
                  LOWORD(v64) = v56.f64[0];
                }

                WORD5(v205) = v64;
                v65 = *(v27 + 76);
                EramToCopReQuantScaleFactor = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEramToCopReQuantScaleFactor(*(v28 + 4));
                WORD5(v207) = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswPllPedZeroThresh(this, v8, v9, v65, v190.n128_f32[0], EramToCopReQuantScaleFactor);
                v67 = *(v27 + 80);
                v68 = *(v28 + 24);
                v69 = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEramToCopReQuantScaleFactor(*(v28 + 4));
                WORD6(v207) = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswPllPedZeroThresh(this, v8, v9, v67, v68, v69);
                *v70.i64 = *(v28 + 36) + v21;
                *v71.i64 = *v70.i64 + trunc(*v70.i64 * 2.32830644e-10) * -4294967300.0;
                v72 = vbslq_s8(v191, v71, v70);
                if (*v70.i64 > 4294967300.0)
                {
                  v70.i64[0] = v72.i64[0];
                }

                if (*v70.i64 < -4294967300.0)
                {
                  *v72.i64 = -*v70.i64;
                  *v70.i64 = -(*v70.i64 - trunc(*v70.i64 * -2.32830644e-10) * -4294967300.0);
                  *v70.i64 = -*vbslq_s8(v191, v70, v72).i64;
                }

                if (*v70.i64 < 0.0)
                {
                  v73 = --*v70.i64;
                }

                else
                {
                  LOWORD(v73) = *v70.i64;
                }

                WORD6(v205) = v73;
                v74 = (*(**(this + 1) + 184))(*(this + 1), v192);
                v75 = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEramToCopReQuantScaleFactor(*(v74 + 4));
                *v77.i32 = sqrtf(BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswLowMagThres(this, v8, v9, v75, v33));
                v79.i32[0] = -813694976;
                *v80.i32 = *v77.i32 + (truncf(*v77.i32 * 2.3283e-10) * -4295000000.0);
                v81.i64[0] = 0x8000000080000000;
                v81.i64[1] = 0x8000000080000000;
                v82 = vbslq_s8(v81, v80, v77);
                if (*v77.i32 > 4295000000.0)
                {
                  v77.i32[0] = v82.i32[0];
                }

                HIWORD(v205) = *v77.i32;
                *v77.i32 = *(v28 + 44) + v23;
                *v78.i32 = *v77.i32 + (truncf(*v77.i32 * 2.3283e-10) * -4295000000.0);
                v83 = vbslq_s8(v81, v78, v77);
                if (*v77.i32 > 4295000000.0)
                {
                  v77.i32[0] = v83.i32[0];
                }

                if (*v77.i32 < -4295000000.0)
                {
                  *v83.i32 = -*v77.i32;
                  *v82.i32 = truncf(*v77.i32 * -2.3283e-10);
                  v79.i32[0] = -813694976;
                  *v77.i32 = -(*v77.i32 - (*v82.i32 * -4295000000.0));
                  v77 = vbslq_s8(v81, v77, v83);
                  *v77.i32 = -*v77.i32;
                }

                if (*v77.i32 < 0.0)
                {
                  v84 = --*v77.i32;
                }

                else
                {
                  LOBYTE(v84) = *v77.i32;
                }

                LOBYTE(v206) = v84;
                v77.i32[0] = *(v28 + 52);
                v85 = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswCoherentTableIndex(v76, v77, v33, v82, v79);
                BYTE1(v206) = v85;
                BYTE14(v207) = 0;
                if (v8 <= 4 && ((1 << v8) & 0x19) != 0 && (v9 & 6) == 2 && (v85 == 10 || BYTE4(v205) - 9 <= 1))
                {
                  BYTE14(v207) = 32;
                }

                BYTE2(v206) = *(v28 + 76);
                v89 = *(v28 + 60);
                v90 = *(v28 + 56);
                if (v90 == 1)
                {
                  v92 = v89 * 4.0;
                  v93 = 0.0;
                  goto LABEL_98;
                }

                if (v90 != 2)
                {
                  v181 = "0";
                  v182 = 1084;
                  DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1084, "GetFllLoopCoefficients", "0");
                  goto LABEL_270;
                }

                v91 = (v89 + v89) / 1.0607;
                v92 = v91 * 1.4142;
                v93 = ((v33 * (v91 * v91)) * *(v28 + 52)) * 2097152.0;
LABEL_98:
                *v87.i64 = (v33 * v92) * 1048576.0 / 3.14159265;
                if (*v87.i64 < 0.0 || *v87.i64 > 65535.0 || (*v86.i64 = v93 / 3.14159265, *v86.i64 < 0.0) || *v86.i64 > 65535.0)
                {
                  v181 = "dCoeff0 >= 0.0 && dCoeff0 <= MAX_USHORT && dCoeff1 >= 0.0 && dCoeff1 <= MAX_USHORT";
                  v182 = 1091;
                  DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1091, "GetFllLoopCoefficients", "dCoeff0 >= 0.0 && dCoeff0 <= MAX_USHORT && dCoeff1 >= 0.0 && dCoeff1 <= MAX_USHORT");
                  goto LABEL_270;
                }

                *v87.i64 = *v87.i64 + v21;
                *v88.i64 = *v87.i64 + trunc(*v87.i64 * 2.32830644e-10) * -4294967300.0;
                v94 = vbslq_s8(v191, v88, v87);
                if (*v87.i64 > 4294967300.0)
                {
                  v87.i64[0] = v94.i64[0];
                }

                if (*v87.i64 < -4294967300.0)
                {
                  *v94.i64 = -*v87.i64;
                  *v87.i64 = -(*v87.i64 - trunc(*v87.i64 * -2.32830644e-10) * -4294967300.0);
                  v87 = vbslq_s8(v191, v87, v94);
                  *v87.i64 = -*v87.i64;
                }

                if (*v87.i64 < 0.0)
                {
                  v95 = --*v87.i64;
                }

                else
                {
                  LOWORD(v95) = *v87.i64;
                }

                WORD2(v206) = v95;
                *v86.i64 = *v86.i64 + v21;
                *v87.i64 = *v86.i64 + trunc(*v86.i64 * 2.32830644e-10) * -4294967300.0;
                v96 = vbslq_s8(v191, v87, v86);
                if (*v86.i64 > 4294967300.0)
                {
                  v86.i64[0] = v96.i64[0];
                }

                if (*v86.i64 < -4294967300.0)
                {
                  *v96.i64 = -*v86.i64;
                  *v86.i64 = -(*v86.i64 - trunc(*v86.i64 * -2.32830644e-10) * -4294967300.0);
                  v86 = vbslq_s8(v191, v86, v96);
                  *v86.i64 = -*v86.i64;
                }

                *v96.i64 = -*v86.i64;
                if (*v86.i64 < 0.0)
                {
                  v97 = --*v86.i64;
                }

                else
                {
                  LOWORD(v97) = *v86.i64;
                }

                WORD3(v206) = v97;
                v98 = *(v28 + 80);
                if (v98 == 1)
                {
                  LOBYTE(v100) = 0;
                  goto LABEL_126;
                }

                if (v98)
                {
                  v181 = "0";
                  v182 = 520;
                  DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 520, "ProgramTrackParameters", "0");
                  goto LABEL_270;
                }

                *v86.i32 = (*(v28 + 72) * v23) + v23;
                *v96.i32 = *v86.i32 + (truncf(*v86.i32 * 2.3283e-10) * -4295000000.0);
                v99.i64[0] = 0x8000000080000000;
                v99.i64[1] = 0x8000000080000000;
                v96 = vbslq_s8(v99, v96, v86);
                if (*v86.i32 > 4295000000.0)
                {
                  v86.i32[0] = v96.i32[0];
                }

                if (*v86.i32 < -4295000000.0)
                {
                  *v96.i32 = -*v86.i32;
                  *v86.i32 = -(*v86.i32 - (truncf(*v86.i32 * -2.3283e-10) * -4295000000.0));
                  v86 = vbslq_s8(v99, v86, v96);
                  *v86.i32 = -*v86.i32;
                }

                if (*v86.i32 < 0.0)
                {
                  v100 = --*v86.i32;
                }

                else
                {
                  LOBYTE(v100) = *v86.i32;
                }

LABEL_126:
                BYTE8(v206) = v100;
                *v86.i64 = (*(v28 + 68) * v24) + v21;
                *v96.i64 = *v86.i64 + trunc(*v86.i64 * 2.32830644e-10) * -4294967300.0;
                v101 = vbslq_s8(v191, v96, v86);
                if (*v86.i64 > 4294967300.0)
                {
                  v86.i64[0] = v101.i64[0];
                }

                if (*v86.i64 < -4294967300.0)
                {
                  *v101.i64 = -*v86.i64;
                  *v86.i64 = -(*v86.i64 - trunc(*v86.i64 * -2.32830644e-10) * -4294967300.0);
                  *v86.i64 = -*vbslq_s8(v191, v86, v101).i64;
                }

                if (*v86.i64 < 0.0)
                {
                  v102 = --*v86.i64;
                }

                else
                {
                  LOWORD(v102) = *v86.i64;
                }

                WORD5(v206) = v102;
                *v103.i32 = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswLowMagThres(this, v8, v9, v75, v33);
                *v105.i32 = *v103.i32 + (truncf(*v103.i32 * 2.3283e-10) * -4295000000.0);
                v106.i64[0] = 0x8000000080000000;
                v106.i64[1] = 0x8000000080000000;
                v107 = vbslq_s8(v106, v105, v103);
                if (*v103.i32 > 4295000000.0)
                {
                  v103.i32[0] = v107.i32[0];
                }

                if (*v103.i32 < -4295000000.0)
                {
                  *v107.i32 = -*v103.i32;
                  *v103.i32 = -(*v103.i32 - (truncf(*v103.i32 * -2.3283e-10) * -4295000000.0));
                  *v103.i32 = -*vbslq_s8(v106, v103, v107).i32;
                }

                if (*v103.i32 < 0.0)
                {
                  v108 = --*v103.i32;
                }

                else
                {
                  v108 = *v103.i32;
                }

                HIDWORD(v206) = v108;
                v109 = *(v28 + 52) / v33;
                *v107.i32 = v109 + v23;
                *v104.i32 = (v109 + v23) + (truncf((v109 + v23) * 2.3283e-10) * -4295000000.0);
                v110 = vbslq_s8(v106, v104, v107);
                if ((v109 + v23) > 4295000000.0)
                {
                  v107.i32[0] = v110.i32[0];
                }

                if (*v107.i32 < -4295000000.0)
                {
                  *v110.i32 = -*v107.i32;
                  *v107.i32 = -(*v107.i32 - (truncf(*v107.i32 * -2.3283e-10) * -4295000000.0));
                  *v107.i32 = -*vbslq_s8(v106, v107, v110).i32;
                }

                if (*v107.i32 < 0.0)
                {
                  v111 = --*v107.i32;
                }

                else
                {
                  LOBYTE(v111) = *v107.i32;
                }

                v112 = v111;
                if (vabds_f32(v112, v109) >= 0.000001)
                {
                  v181 = "FABS_D((FLOAT)ucNumAcqSamPerFrqErrDetOut - (fErrDetCohIntInSec / fAcqSamIntInSec))<1e-6f";
                  v182 = 388;
                  DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 388, "CalcHiLoSlopeForZeroErrAtUnitAcqSigPwr", "FABS_D((FLOAT)ucNumAcqSamPerFrqErrDetOut - (fErrDetCohIntInSec / fAcqSamIntInSec))<1e-6f");
                  goto LABEL_270;
                }

                v113 = v33 * ((*(v28 + 72) * v23) * 6.2832);
                v114 = __sincosf_stret((v113 * v112) * 0.5);
                v115 = v113 * 0.5;
                v21 = 0.5;
                v117 = __sincosf_stret(v115);
                *v118.i64 = ((((12.566 / (v112 * v112)) * (v114.__sinval / v117.__sinval)) * ((v117.__sinval * -(v114.__cosval * v112)) + (v114.__sinval * v117.__cosval))) / (v117.__sinval * v117.__sinval)) + 0.5;
                v119.i64[0] = 0xC1F0000000000000;
                *v120.i64 = *v118.i64 + trunc(*v118.i64 * 2.32830644e-10) * -4294967300.0;
                v121 = vbslq_s8(v191, v120, v118);
                v122.i64[0] = 0x41F0000000000000;
                if (*v118.i64 > 4294967300.0)
                {
                  v118.i64[0] = v121.i64[0];
                }

                if (*v118.i64 < -4294967300.0)
                {
                  *v121.i64 = -*v118.i64;
                  *v119.i64 = trunc(*v118.i64 * -2.32830644e-10);
                  v122.i64[0] = 0xC1F0000000000000;
                  *v118.i64 = -(*v118.i64 - *v119.i64 * -4294967300.0);
                  v118 = vbslq_s8(v191, v118, v121);
                  *v118.i64 = -*v118.i64;
                }

                if (*v118.i64 < 0.0)
                {
                  v123 = --*v118.i64;
                }

                else
                {
                  v123 = *v118.i64;
                }

                if (v123 <= 1)
                {
                  v123 = 1;
                }

                if (*(v28 + 80) == 1)
                {
                  v123 = 1;
                }

                LODWORD(v207) = v123;
                v118.i32[0] = *(v28 + 16);
                v124 = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswCoherentTableIndex(v116, v118, v33, v119, v122);
                v23 = 0.5;
                v24 = 16.0;
                BYTE4(v207) = v124;
                v125.i32[0] = *(v28 + 20);
                BYTE5(v207) = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswCoherentTableIndex(v124, v125, v33, v126, v127);
                v128 = *(v28 + 88);
                v129 = *(*(**(this + 1) + 136))(*(this + 1));
                v130 = *(v28 + 92);
                v131 = *(v28 + 4);
                (*(**(this + 1) + 136))(*(this + 1));
                v132 = ((v128 * 4.0) * v129) / (v186 * ((v185 * (v130 * 0.5)) + 1.0));
                if (v131)
                {
                  if (v131 != 2)
                  {
                    if (v131 == 4)
                    {
                      v133 = 16.0;
                      goto LABEL_164;
                    }

                    v181 = "0";
                    v182 = 1138;
                    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1138, "GetDllLoopCoefficients", "0");
LABEL_270:
                    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters_programmer.cpp", v182, v181);
                  }

                  v133 = 4.0;
LABEL_164:
                  v132 = v132 * v133;
                }

                v134 = (*(**(this + 2) + 328))(*(this + 2));
                v136.i64[0] = 20.0;
                if (v134)
                {
                  *v136.i64 = 16.0;
                }

                *v136.i64 = v132 * *v136.i64 * 8.0;
                if (*v136.i64 < 0.0 || *v136.i64 > 65535.0)
                {
                  v181 = "dCoeff0 >= 0.0 && dCoeff0 <= MAX_USHORT";
                  v182 = 1152;
                  DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 1152, "GetDllLoopCoefficients", "dCoeff0 >= 0.0 && dCoeff0 <= MAX_USHORT");
                  goto LABEL_270;
                }

                *v136.i64 = *v136.i64 + 0.5;
                *v135.i64 = *v136.i64 + trunc(*v136.i64 * 2.32830644e-10) * -4294967300.0;
                v137 = vbslq_s8(v191, v135, v136);
                if (*v136.i64 > 4294967300.0)
                {
                  v136.i64[0] = v137.i64[0];
                }

                if (*v136.i64 < -4294967300.0)
                {
                  *v137.i64 = -*v136.i64;
                  *v136.i64 = -(*v136.i64 - trunc(*v136.i64 * -2.32830644e-10) * -4294967300.0);
                  *v136.i64 = -*vbslq_s8(v191, v136, v137).i64;
                }

                if (*v136.i64 < 0.0)
                {
                  v138 = --*v136.i64;
                }

                else
                {
                  LOWORD(v138) = *v136.i64;
                }

                if (!v138)
                {
                  LOWORD(v138) = 1;
                }

                WORD3(v207) = v138;
                v139 = (*(**(this + 1) + 176))(*(this + 1), v8, v9);
                v140 = *(v139 + 148);
                if (v140 > 8)
                {
LABEL_294:
                  v181 = "0";
                  v182 = 631;
                  DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 631, "ProgramTrackParameters", "0");
                  goto LABEL_270;
                }

                if (((1 << v140) & 0x1AB) != 0)
                {
                  v141 = *(v139 + 155);
                  if (v141 >= 8)
                  {
                    v181 = "(late_offset & DLL_OFFSET_MASK) == late_offset";
                    v182 = 608;
                    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 608, "ProgramTrackParameters", "(late_offset & DLL_OFFSET_MASK) == late_offset");
                    goto LABEL_270;
                  }

                  v142 = *(v139 + 154);
                  if (v142 >= 8)
                  {
                    v181 = "(early_offset & DLL_OFFSET_MASK) == early_offset";
                    v182 = 609;
                    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 609, "ProgramTrackParameters", "(early_offset & DLL_OFFSET_MASK) == early_offset");
                    goto LABEL_270;
                  }

                  v143 = v142 | (8 * v141);
                  BYTE8(v207) = v143;
                  if (v140 == 5)
                  {
                    v144 = v143 | 0x40;
                    goto LABEL_194;
                  }
                }

                else
                {
                  if (v140 == 2)
                  {
                    if (*(v139 + 153) != 1)
                    {
                      v181 = "stCvecTapConfig.ucIdxOfPromptSample == 1";
                      v182 = 589;
                      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 589, "ProgramTrackParameters", "stCvecTapConfig.ucIdxOfPromptSample == 1");
                      goto LABEL_270;
                    }

                    v145 = *(v139 + 155);
                    if (v145 >= 8)
                    {
                      v181 = "(late_offset & DLL_OFFSET_MASK) == late_offset";
                      v182 = 592;
                      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 592, "ProgramTrackParameters", "(late_offset & DLL_OFFSET_MASK) == late_offset");
                      goto LABEL_270;
                    }

                    v146 = *(v139 + 154);
                    if (v146 >= 8)
                    {
                      v181 = "(early_offset & DLL_OFFSET_MASK) == early_offset";
                      v182 = 593;
                      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 593, "ProgramTrackParameters", "(early_offset & DLL_OFFSET_MASK) == early_offset");
                      goto LABEL_270;
                    }
                  }

                  else
                  {
                    if (v140 != 6)
                    {
                      goto LABEL_294;
                    }

                    if (*(v139 + 153) != 6)
                    {
                      v181 = "stCvecTapConfig.ucIdxOfPromptSample == 6";
                      v182 = 619;
                      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 619, "ProgramTrackParameters", "stCvecTapConfig.ucIdxOfPromptSample == 6");
                      goto LABEL_270;
                    }

                    v145 = *(v139 + 155);
                    if (v145 >= 8)
                    {
                      v181 = "(late_offset & DLL_OFFSET_MASK) == late_offset";
                      v182 = 623;
                      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 623, "ProgramTrackParameters", "(late_offset & DLL_OFFSET_MASK) == late_offset");
                      goto LABEL_270;
                    }

                    v146 = *(v139 + 154);
                    if (v146 >= 8)
                    {
                      v181 = "(early_offset & DLL_OFFSET_MASK) == early_offset";
                      v182 = 624;
                      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 624, "ProgramTrackParameters", "(early_offset & DLL_OFFSET_MASK) == early_offset");
                      goto LABEL_270;
                    }
                  }

                  v144 = v146 | (8 * v145);
LABEL_194:
                  BYTE8(v207) = v144;
                }

                v147 = v205;
                if (v147 >= (*(**(this + 2) + 424))(*(this + 2)))
                {
                  v181 = "otTpParam.tp_id < m_rAsicConfigIfc.GetMaxTrackParamIndex()";
                  v182 = 635;
                  DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 635, "ProgramTrackParameters", "otTpParam.tp_id < m_rAsicConfigIfc.GetMaxTrackParamIndex()");
                  goto LABEL_270;
                }

                v148 = (*(*v196 + 48))(v196);
                v149 = (*(*v148 + 48))(v148);
                (*(*v149 + 56))(v149, v193, &v205);
                v150 = 0;
                v199[0] = v192;
                v199[1] = v15;
                v151 = (v26 - v189);
                v152 = *(v27 + 16);
LABEL_197:
                v153 = *(v27 + 28 + 4 * v150);
                v212[v150] = v153;
                if (v150 == v151)
                {
                  v154 = v152 + v153;
                  v155 = v151 + 1;
                  goto LABEL_201;
                }

                v155 = v150 + 1;
                if (v150 + 1 == v151)
                {
                  v154 = v153 - v152;
                  v155 = (v26 - v189);
LABEL_201:
                  v212[v150] = v154;
                }

                v150 = v155;
                if (v155 == 4)
                {
                  for (i = 0; i != 4; ++i)
                  {
                    v157 = *((*(**(this + 1) + 184))(*(this + 1), (v19 + i)) + 8);
                    v158 = (*(**(this + 1) + 184))(*(this + 1), (v19 + i));
                    v159 = BlueFin::GlMeSrdReceiverParametersProgrammer::GetEramToCopReQuantScaleFactor(*(v158 + 4));
                    v160 = v212[i];
                    v161 = (*(**(this + 1) + 80))(*(this + 1), (v19 + i));
                    v162 = (*(**(this + 1) + 72))(*(this + 1), (v19 + i));
                    BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswPowerThreshold(this, v161, v162, v160, v157, v159);
                    *v164.i32 = (*v164.i32 * 16.0) * 0.000000059605;
                    *(&v208 + i) = *v164.i32;
                    if (*v164.i32 <= 0.0)
                    {
                      v181 = "afThresholdEsw[k] > 0.0f";
                      v182 = 678;
                      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 678, "ProgramTrackParameters", "afThresholdEsw[k] > 0.0f");
                      goto LABEL_270;
                    }

                    if (*v164.i32 > 255.0)
                    {
                      GlCustomLog(12, "WARNING: Cnst %u, Mode %u, Gear %u, threshold_g%u :Threshold over 255 (%f)\n", v8, v9, v151, i + 2, *v164.i32);
                      *(&v208 + i) = 255.0;
                    }
                  }

                  if (v188 == 1)
                  {
                    v202 = 0;
                    v165 = v15;
                    v166 = v192;
                    goto LABEL_218;
                  }

                  *v164.i32 = v208 + 0.5;
                  *v163.i32 = (v208 + 0.5) + (truncf((v208 + 0.5) * 2.3283e-10) * -4295000000.0);
                  v167.i64[0] = 0x8000000080000000;
                  v167.i64[1] = 0x8000000080000000;
                  v168 = vbslq_s8(v167, v163, v164);
                  if ((v208 + 0.5) > 4295000000.0)
                  {
                    v164.i32[0] = v168.i32[0];
                  }

                  v166 = v192;
                  if (*v164.i32 < -4295000000.0)
                  {
                    *v168.i32 = -*v164.i32;
                    *v164.i32 = -(*v164.i32 - (truncf(*v164.i32 * -2.3283e-10) * -4295000000.0));
                    v164 = vbslq_s8(v167, v164, v168);
                    *v164.i32 = -*v164.i32;
                  }

                  v165 = v15;
                  if (*v164.i32 < 0.0)
                  {
                    v169 = --*v164.i32;
                  }

                  else
                  {
                    LOBYTE(v169) = *v164.i32;
                  }

                  v202 = v169;
                  if (v188 < 3)
                  {
LABEL_218:
                    v201 = 0;
                    goto LABEL_219;
                  }

                  *v164.i32 = v209 + 0.5;
                  *v168.i32 = (v209 + 0.5) + (truncf((v209 + 0.5) * 2.3283e-10) * -4295000000.0);
                  v172 = vbslq_s8(v167, v168, v164);
                  if ((v209 + 0.5) > 4295000000.0)
                  {
                    v164.i32[0] = v172.i32[0];
                  }

                  if (*v164.i32 < -4295000000.0)
                  {
                    *v172.i32 = -*v164.i32;
                    *v164.i32 = -(*v164.i32 - (truncf(*v164.i32 * -2.3283e-10) * -4295000000.0));
                    v164 = vbslq_s8(v167, v164, v172);
                    *v164.i32 = -*v164.i32;
                  }

                  if (*v164.i32 < 0.0)
                  {
                    v173 = --*v164.i32;
                  }

                  else
                  {
                    LOBYTE(v173) = *v164.i32;
                  }

                  v201 = v173;
                  if (v188 == 3)
                  {
LABEL_219:
                    LOBYTE(v170) = 0;
                    v200 = 0;
                  }

                  else
                  {
                    *v164.i32 = v210 + 0.5;
                    *v172.i32 = (v210 + 0.5) + (truncf((v210 + 0.5) * 2.3283e-10) * -4295000000.0);
                    v174 = vbslq_s8(v167, v172, v164);
                    if ((v210 + 0.5) > 4295000000.0)
                    {
                      v164.i32[0] = v174.i32[0];
                    }

                    if (*v164.i32 < -4295000000.0)
                    {
                      *v174.i32 = -*v164.i32;
                      *v164.i32 = -(*v164.i32 - (truncf(*v164.i32 * -2.3283e-10) * -4295000000.0));
                      v164 = vbslq_s8(v167, v164, v174);
                      *v164.i32 = -*v164.i32;
                    }

                    if (*v164.i32 < 0.0)
                    {
                      v175 = --*v164.i32;
                    }

                    else
                    {
                      LOBYTE(v175) = *v164.i32;
                    }

                    v200 = v175;
                    if (v188 >= 5)
                    {
                      *v164.i32 = v211 + 0.5;
                      *v174.i32 = (v211 + 0.5) + (truncf((v211 + 0.5) * 2.3283e-10) * -4295000000.0);
                      v180 = vbslq_s8(v167, v174, v164);
                      if ((v211 + 0.5) > 4295000000.0)
                      {
                        v164.i32[0] = v180.i32[0];
                      }

                      if (*v164.i32 < -4295000000.0)
                      {
                        *v180.i32 = -*v164.i32;
                        *v164.i32 = -(*v164.i32 - (truncf(*v164.i32 * -2.3283e-10) * -4295000000.0));
                        *v164.i32 = -*vbslq_s8(v167, v164, v180).i32;
                      }

                      if (*v164.i32 < 0.0)
                      {
                        v170 = --*v164.i32;
                      }

                      else
                      {
                        LOBYTE(v170) = *v164.i32;
                      }
                    }

                    else
                    {
                      LOBYTE(v170) = 0;
                    }
                  }

                  v199[2] = v170;
                  v203 = v205;
                  if (v165 > v166)
                  {
                    v181 = "ucGearid >= ucGearidRoot";
                    v182 = 710;
                    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 710, "ProgramTrackParameters", "ucGearid >= ucGearidRoot");
                    goto LABEL_270;
                  }

                  if (v9 == 2 && !v8 && v165 == v166)
                  {
                    if ((*(**(this + 2) + 256))(*(this + 2)))
                    {
                      goto LABEL_256;
                    }

                    v171 = (*(**(this + 2) + 264))(*(this + 2));
                    v166 = v192;
                    v165 = v15;
                    if (v171)
                    {
                      goto LABEL_256;
                    }
                  }

                  if (v165 != v166)
                  {
                    if (v9 == 2 && !v8 && v151 == 1 && (((*(**(this + 2) + 256))(*(this + 2)) & 1) != 0 || ((*(**(this + 2) + 264))(*(this + 2)) & 1) != 0))
                    {
LABEL_256:
                      v204 = 0;
                      goto LABEL_257;
                    }

                    LOBYTE(v204) = 0;
LABEL_254:
                    HIBYTE(v204) = 0;
                    goto LABEL_255;
                  }

                  v204 = -256;
                  if (((*(**(this + 2) + 256))(*(this + 2)) & 1) == 0)
                  {
                    if ((v183 & (*(**(this + 2) + 264))(*(this + 2)) & 1) == 0)
                    {
                      goto LABEL_255;
                    }

                    goto LABEL_254;
                  }

                  if (v183)
                  {
                    goto LABEL_254;
                  }

LABEL_255:
                  if (v184)
                  {
                    goto LABEL_256;
                  }

LABEL_257:
                  v176 = v199[0];
                  if (v176 >= (*(**(this + 2) + 408))(*(this + 2)))
                  {
                    v181 = "otGsParam.gs_id < m_rAsicConfigIfc.GetMaxGearStepIndex()";
                    v182 = 771;
                    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 771, "ProgramTrackParameters", "otGsParam.gs_id < m_rAsicConfigIfc.GetMaxGearStepIndex()");
                    goto LABEL_270;
                  }

                  v177 = v203;
                  if (v177 >= (*(**(this + 2) + 424))(*(this + 2)))
                  {
                    v181 = "otGsParam.tp_id < m_rAsicConfigIfc.GetMaxTrackParamIndex()";
                    v182 = 772;
                    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 772, "ProgramTrackParameters", "otGsParam.tp_id < m_rAsicConfigIfc.GetMaxTrackParamIndex()");
                    goto LABEL_270;
                  }

                  v178 = (*(*v196 + 48))(v196);
                  v179 = (*(*v178 + 48))(v178);
                  (*(*v179 + 64))(v179, v193, v199);
LABEL_260:
                  v25 = v192 + 1;
                  if ((v192 + 1) > v187)
                  {
LABEL_18:
                    BlueFin::GlMeSrdTransaction::Complete(v193);
                    BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(v193);
                    return;
                  }

                  continue;
                }

                goto LABEL_197;
              }
            }

            ++v7;
          }

          v9 = (v9 + 1);
        }

        while (v9 != 6);
      }

      v8 = (v8 + 1);
    }

    while (v8 != v6);
  }

  if (v2 + 1 == *(this + 102))
  {
    v11 = *(this + 13);
    v10 = *(this + 14);

    v11(v10);
  }
}

void sub_2988A0A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  BlueFin::GlMeSrdTransaction::~GlMeSrdTransaction(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetRxType(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 264);

  return v1();
}

uint64_t BlueFin::GlMeSrdReceiverParameters::IsConstellationSupported(BlueFin::GlMeSrdReceiverParameters *a1)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(a1) + 128);

  return v1();
}

uint64_t BlueFin::GlMeRxParamStd::IsConstellationSupported(BlueFin::GlUtils *a1, unsigned int a2)
{
  AsicConfigIfc = BlueFin::GlUtils::GetAsicConfigIfc(a1);
  if (a2 >= 6)
  {
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 556, "IsConstellationSupported", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", 556, "0");
  }

  v4 = *(*AsicConfigIfc + 464);

  return v4();
}

uint64_t BlueFin::GlUtils::GetAsicConfigIfc(BlueFin::GlUtils *this)
{
  if (!BlueFin::GlUtils::m_pInstance || (result = *(BlueFin::GlUtils::m_pInstance + 1576)) == 0)
  {
    DeviceFaultNotify("glutils.h", 617, "GetAsicConfigIfc", "Instance() != NULL && Instance()->m_potAsicConfigIfc != NULL");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutils.h", 617, "Instance() != NULL && Instance()->m_potAsicConfigIfc != NULL");
  }

  return result;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::IsModeSupported(BlueFin::GlMeSrdReceiverParameters *a1)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(a1) + 120);

  return v1();
}

uint64_t BlueFin::GlMeRxParamStd::IsModeSupported(int **a1, int a2, unsigned int a3)
{
  result = (*(*a1 + 16))(a1);
  if (result)
  {
    if (a3 >= 6)
    {
      v7 = "eMode < GetMaxAllowedModes()";
      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 532, "IsModeSupported", "eMode < GetMaxAllowedModes()");
      v8 = 532;
    }

    else
    {
      if (BlueFin::GlMeRxParamLimits::GetMaxAllowedCnstls(*a1[1]) > a2)
      {
        return *(*(BlueFin::GlMeRxParamStd::rMap(a1) + 6) + 208 * a2 + 8 * a3 + 232) != 0;
      }

      v7 = "eCnstl < GetMaxAllowedCnstls()";
      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 533, "IsModeSupported", "eCnstl < GetMaxAllowedCnstls()");
      v8 = 533;
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", v8, v7);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetRootGearIdFromCnstlAndMode(BlueFin::GlMeSrdReceiverParameters *a1)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(a1) + 96);

  return v1();
}

uint64_t BlueFin::GlMeRxParamStd::GetRootGearIdFromCnstlAndMode(int **a1, int a2, int a3)
{
  if (a3 >= 6)
  {
    v7 = "eMode < GetMaxAllowedModes()";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 505, "GetRootGearIdFromCnstlAndMode", "eMode < GetMaxAllowedModes()");
    v8 = 505;
    goto LABEL_12;
  }

  if (BlueFin::GlMeRxParamLimits::GetMaxAllowedCnstls(*a1[1]) <= a2)
  {
    v7 = "eCnstl < GetMaxAllowedCnstls()";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 506, "GetRootGearIdFromCnstlAndMode", "eCnstl < GetMaxAllowedCnstls()");
    v8 = 506;
LABEL_12:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", v8, v7);
  }

  if (!**(BlueFin::GlMeRxParamStd::rMap(a1) + 2))
  {
LABEL_8:
    v7 = "0";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 515, "GetRootGearIdFromCnstlAndMode", "0");
    v8 = 515;
    goto LABEL_12;
  }

  v6 = 0;
  while ((*(*a1 + 10))(a1, v6) != a2 || (*(*a1 + 9))(a1, v6) != a3)
  {
    if (++v6 >= **(BlueFin::GlMeRxParamStd::rMap(a1) + 2))
    {
      goto LABEL_8;
    }
  }

  return v6;
}

uint64_t BlueFin::GlMeRxParamStd::GetCnstl(int **this, unsigned int a2)
{
  v4 = BlueFin::GlMeRxParamStd::rMap(this);
  if (**(v4 + 2) <= a2)
  {
    v8 = "ucGearid < *rMp.m_pucGsNum";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 490, "GetCnstl", "ucGearid < *rMp.m_pucGsNum");
    v9 = 490;
    goto LABEL_6;
  }

  v5 = v4;
  v6 = *(*(v4 + 7) + 12 * a2);
  if (v6 >= BlueFin::GlMeRxParamLimits::GetMaxAllowedCnstls(*this[1]))
  {
    v8 = "rMp.m_pastGearInfoLookup[ucGearid].etCnstl < GetMaxAllowedCnstls()";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 491, "GetCnstl", "rMp.m_pastGearInfoLookup[ucGearid].etCnstl < GetMaxAllowedCnstls()");
    v9 = 491;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", v9, v8);
  }

  return *(*(v5 + 7) + 12 * a2);
}

uint64_t BlueFin::GlMeRxParamStd::GetMode(int **this, unsigned int a2)
{
  v3 = BlueFin::GlMeRxParamStd::rMap(this);
  if (**(v3 + 2) <= a2)
  {
    v5 = "ucGearid < *rMp.m_pucGsNum";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 482, "GetMode", "ucGearid < *rMp.m_pucGsNum");
    v6 = 482;
    goto LABEL_6;
  }

  result = *(*(v3 + 7) + 12 * a2 + 4);
  if (result >= 6)
  {
    v5 = "rMp.m_pastGearInfoLookup[ucGearid].etMode < GetMaxAllowedModes()";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 483, "GetMode", "rMp.m_pastGearInfoLookup[ucGearid].etMode < GetMaxAllowedModes()");
    v6 = 483;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", v6, v5);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetAllGearsTrkParamsFromGearId(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 168);

  return v1();
}

uint64_t BlueFin::GlMeRxParamStd::GetAllGearsTrkParamsFromGearId(int **this, uint64_t a2)
{
  v4 = *(BlueFin::GlMeRxParamStd::rMap(this) + 6);
  v5 = v4 + 208 * (*(*this + 10))(this, a2);
  return *(v5 + 8 * (*(*this + 9))(this, a2) + 232);
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetRootGearIdFromGearId(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 88);

  return v1();
}

uint64_t BlueFin::GlMeRxParamStd::GetRootGearIdFromGearId(int **this, unsigned int a2)
{
  if (**(BlueFin::GlMeRxParamStd::rMap(this) + 2) <= a2)
  {
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 497, "GetRootGearIdFromGearId", "ucGearid < *rMap().m_pucGsNum");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", 497, "ucGearid < *rMap().m_pucGsNum");
  }

  return (a2 - BlueFin::GlMeRxParamStd::GetGearIndexNotGearId(this, a2));
}

uint64_t BlueFin::GlMeRxParamStd::GetGearIndexNotGearId(int **this, unsigned int a2)
{
  v3 = BlueFin::GlMeRxParamStd::rMap(this);
  if (**(v3 + 2) <= a2)
  {
    v5 = "ucGearid < *rMp.m_pucGsNum";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 779, "GetGearIndexNotGearId", "ucGearid < *rMp.m_pucGsNum");
    v6 = 779;
    goto LABEL_6;
  }

  result = *(*(v3 + 7) + 12 * a2 + 8);
  if (result >= 5)
  {
    v5 = "rMp.m_pastGearInfoLookup[ucGearid].ucZeroBasedGearNum < MAX_GEARS_PER_MODE";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 780, "GetGearIndexNotGearId", "rMp.m_pastGearInfoLookup[ucGearid].ucZeroBasedGearNum < MAX_GEARS_PER_MODE");
    v6 = 780;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", v6, v5);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetGearTrkParamsFromGearId(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 184);

  return v1();
}

uint64_t BlueFin::GlMeRxParamStd::GetGearTrkParamsFromGearId(int **this, uint64_t a2)
{
  v4 = *(BlueFin::GlMeRxParamStd::rMap(this) + 6);
  v5 = v4 + 208 * (*(*this + 10))(this, a2);
  v6 = *(v5 + 8 * (*(*this + 9))(this, a2) + 232);
  if (!*(v6 + 8 * BlueFin::GlMeRxParamStd::GetGearIndexNotGearId(this, a2) + 168))
  {
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 601, "GetGearTrkParamsFromGearId", "rMap().m_pstTrkParams->astCnstlParams[GetCnstl(ucGearId)].pastModeParams[GetMode(ucGearId)]->apstGearParams[GetGearIndexNotGearId(ucGearId)] != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", 601, "rMap().m_pstTrkParams->astCnstlParams[GetCnstl(ucGearId)].pastModeParams[GetMode(ucGearId)]->apstGearParams[GetGearIndexNotGearId(ucGearId)] != nullptr");
  }

  v7 = *(BlueFin::GlMeRxParamStd::rMap(this) + 6);
  v8 = v7 + 208 * (*(*this + 10))(this, a2);
  v9 = *(v8 + 8 * (*(*this + 9))(this, a2) + 232);
  return *(v9 + 8 * BlueFin::GlMeRxParamStd::GetGearIndexNotGearId(this, a2) + 168);
}

uint64_t BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswCoherentTableIndex(BlueFin::GlMeSrdReceiverParametersProgrammer *this, int8x16_t a2, float a3, int8x16_t a4, int8x16_t a5)
{
  *a2.i64 = (*a2.i32 / a3) + 0.5;
  *a5.i64 = *a2.i64 + trunc(*a2.i64 * 2.32830644e-10) * -4294967300.0;
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v6 = vnegq_f64(v5);
  a5.i64[0] = vbslq_s8(v6, a5, a2).u64[0];
  if (*a2.i64 > 4294967300.0)
  {
    a2.i64[0] = a5.i64[0];
  }

  if (*a2.i64 < -4294967300.0)
  {
    *a4.i64 = -*a2.i64;
    *a2.i64 = -(*a2.i64 - trunc(*a2.i64 * -2.32830644e-10) * -4294967300.0);
    *a2.i64 = -*vbslq_s8(v6, a2, a4).i64;
  }

  if (*a2.i64 < 0.0)
  {
    v7 = --*a2.i64;
  }

  else
  {
    v7 = *a2.i64;
  }

  if (!v7)
  {
    v9 = "uiRatio > 0";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 365, "GetEswCoherentTableIndex", "uiRatio > 0");
    v10 = 365;
LABEL_15:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters_programmer.cpp", v10, v9);
  }

  v8 = 0;
  while (v7 != byte_298A37A1E[v8])
  {
    if (++v8 == 11)
    {
      v9 = "0";
      DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 374, "GetEswCoherentTableIndex", "0");
      v10 = 374;
      goto LABEL_15;
    }
  }

  return v8;
}

float BlueFin::GlMeSrdReceiverParametersProgrammer::GetEramToCopReQuantScaleFactor(int a1)
{
  if (!a1)
  {
    return 0.0625;
  }

  if (a1 == 4)
  {
    return 1.0;
  }

  if (a1 != 2)
  {
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 834, "GetEramToCopReQuantScaleFactor", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters_programmer.cpp", 834, "0");
  }

  return 0.25;
}

uint64_t BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswPllPedZeroThresh(uint64_t a1, uint64_t a2, int a3, float a4, float a5, float a6)
{
  if (a4 <= 5.0)
  {
    LOWORD(v19) = 0;
    return v19;
  }

  BlueFin::GlMeReceiverParametersIfc::GetDefaultSignalId(v38, a2, a3);
  if (v40 >= 0x23Fu)
  {
    v35 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 693, "GetSecPerEpochWithTrkException", "IsValid()");
    v36 = "glsignalid.h";
    v37 = 693;
    goto LABEL_43;
  }

  if (v39 != 1 || ((v12 = 1.5, v38[0] - 1 >= 0x20) ? (v13 = v38[0] - 66 >= 0xA) : (v13 = 0), v13))
  {
    if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v39 - v39 + BlueFin::GlSvId::s_aucSvId2gnss[v38[0]]])
    {
      v35 = "ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      v36 = "glsignalid.h";
      v37 = 686;
LABEL_43:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v36, v37, v35);
    }

    v12 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v39 - v39 + BlueFin::GlSvId::s_aucSvId2gnss[v38[0]]] * 0.001;
  }

  v14 = a5 / v12;
  v15 = *((*(**(a1 + 8) + 152))(*(a1 + 8), a2) + 24);
  if (!a2 && a3 == 2)
  {
    v16 = *(a1 + 8);
    v17 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v18 = (*(*v16 + 40))(v16, v17, 0, 2);
LABEL_23:
    v15 = v18;
    goto LABEL_24;
  }

  if (!a2 && a3 == 3)
  {
    v20 = *(a1 + 8);
    v21 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v18 = (*(*v20 + 40))(v20, v21, 0, 3);
    goto LABEL_23;
  }

  if (a2 == 3 && (a3 == 5 || a3 == 3))
  {
    v22 = *(a1 + 8);
    v23 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v18 = (*(*v22 + 40))(v22, v23, 4, 3);
    goto LABEL_23;
  }

LABEL_24:
  v24 = v14;
  if ((*(**(a1 + 16) + 256))(*(a1 + 16)))
  {
    if (a2 != 4)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v25 = (*(**(a1 + 16) + 264))(*(a1 + 16));
    if (a2 != 4 || (v25 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  if ((*(**(a1 + 16) + 1032))(*(a1 + 16)))
  {
    v26 = *(a1 + 8);
    v27 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v15 = (*(*v26 + 40))(v26, v27, 5, 0);
  }

LABEL_31:
  v28 = log10f(a5);
  v29 = (((v15 * v24) + (__exp10f((a4 + (v28 * 10.0)) / 10.0) * (v15 * v24))) * a6) + 0.166666667;
  v31.i16[0] = *((*(**(a1 + 8) + 136))(*(a1 + 8)) + 24);
  *v31.i32 = v29 * v31.u32[0];
  if (*v31.i32 < 0.0)
  {
    v35 = "fPedThreshPllCopTotPwr >= 0.0f";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 955, "GetEswPllPedZeroThresh", "fPedThreshPllCopTotPwr >= 0.0f");
    v36 = "glmesrd_receiver_parameters_programmer.cpp";
    v37 = 955;
    goto LABEL_43;
  }

  v32 = sqrtf(*v31.i32);
  if (v32 <= 0.0)
  {
    v35 = "fThresholdEsw > 0.0f";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 960, "GetEswPllPedZeroThresh", "fThresholdEsw > 0.0f");
    v36 = "glmesrd_receiver_parameters_programmer.cpp";
    v37 = 960;
    goto LABEL_43;
  }

  *v31.i32 = v32 + 0.5;
  if (*v31.i32 >= 65535.0)
  {
    v35 = "(fThresholdEsw + 0.5f) < MAX_USHORT";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 961, "GetEswPllPedZeroThresh", "(fThresholdEsw + 0.5f) < MAX_USHORT");
    v36 = "glmesrd_receiver_parameters_programmer.cpp";
    v37 = 961;
    goto LABEL_43;
  }

  *v30.i32 = *v31.i32 - (truncf(*v31.i32 * 2.3283e-10) * 4295000000.0);
  v33.i64[0] = 0x8000000080000000;
  v33.i64[1] = 0x8000000080000000;
  v30.i32[0] = vbslq_s8(v33, v30, v31).u32[0];
  if (*v31.i32 > 4295000000.0)
  {
    v31.i32[0] = v30.i32[0];
  }

  return *v31.i32;
}

float BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswLowMagThres(uint64_t a1, uint64_t a2, int a3, float a4, float a5)
{
  v10 = *((*(**(a1 + 8) + 136))(*(a1 + 8)) + 24);
  BlueFin::GlMeReceiverParametersIfc::GetDefaultSignalId(v37, a2, a3);
  if (v39 >= 0x23Fu)
  {
    v35 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 693, "GetSecPerEpochWithTrkException", "IsValid()");
    v36 = 693;
    goto LABEL_45;
  }

  if (v38 != 1 || ((v11 = 1.5, v37[0] - 1 >= 0x20) ? (v12 = v37[0] - 66 >= 0xA) : (v12 = 0), v12))
  {
    if (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v38 - v38 + BlueFin::GlSvId::s_aucSvId2gnss[v37[0]]])
    {
      v11 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v38 - v38 + BlueFin::GlSvId::s_aucSvId2gnss[v37[0]]] * 0.001;
      goto LABEL_10;
    }

    v35 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v36 = 686;
LABEL_45:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v36, v35);
  }

LABEL_10:
  v13 = a5 / v11;
  v14 = *((*(**(a1 + 8) + 152))(*(a1 + 8), a2) + 24);
  if (!a2 && a3 == 2)
  {
    v15 = *(a1 + 8);
    v16 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v17 = (*(*v15 + 40))(v15, v16, 0, 2);
LABEL_21:
    v14 = v17;
    goto LABEL_22;
  }

  if (!a2 && a3 == 3)
  {
    v18 = *(a1 + 8);
    v19 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v17 = (*(*v18 + 40))(v18, v19, 0, 3);
    goto LABEL_21;
  }

  if (a2 == 3 && (a3 == 5 || a3 == 3))
  {
    v20 = *(a1 + 8);
    v21 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v17 = (*(*v20 + 40))(v20, v21, 4, 3);
    goto LABEL_21;
  }

LABEL_22:
  v22 = v13;
  if ((*(**(a1 + 16) + 256))(*(a1 + 16)))
  {
    if (a2 != 4)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v23 = (*(**(a1 + 16) + 264))(*(a1 + 16));
    if (a2 != 4 || (v23 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if ((*(**(a1 + 16) + 1032))(*(a1 + 16)))
  {
    v24 = *(a1 + 8);
    v25 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v14 = (*(*v24 + 40))(v24, v25, 5, 0);
  }

LABEL_29:
  v27.i8[0] = *((*(**(a1 + 8) + 152))(*(a1 + 8), a2) + 8);
  *v27.i32 = v27.u32[0] / v22;
  *v28.i32 = *v27.i32 + (truncf(*v27.i32 * 2.3283e-10) * -4295000000.0);
  v29.i64[0] = 0x8000000080000000;
  v29.i64[1] = 0x8000000080000000;
  LODWORD(v30) = vbslq_s8(v29, v28, v27).u32[0];
  if (*v27.i32 > 4295000000.0)
  {
    *v27.i32 = v30;
  }

  if (*v27.i32 < -4295000000.0)
  {
    *v26.i32 = -*v27.i32;
    *v27.i32 = -(*v27.i32 - (truncf(*v27.i32 * -2.3283e-10) * -4295000000.0));
    *v27.i32 = -*vbslq_s8(v29, v27, v26).i32;
  }

  if (*v27.i32 < 0.0)
  {
    v31 = --*v27.i32;
  }

  else
  {
    v31 = *v27.i32;
  }

  if (a2 == 2)
  {
    v32 = 2.0;
  }

  else
  {
    if (a2 != 1)
    {
      v33 = flt_298A37990[a2 == 4];
      return (((((v14 * v22) * (v33 * v22)) * v31) * v31) * v10) * a4;
    }

    v31 <<= a3 == 2;
    v32 = -8.0;
  }

  v33 = __exp10f(v32 / 10.0);
  return (((((v14 * v22) * (v33 * v22)) * v31) * v31) * v10) * a4;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetAllCnstlTrkParams(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 136);

  return v1();
}

uint64_t BlueFin::GlMeRxParamStd::GetAllModesTrkParamsFromCnstl(int **a1, int a2)
{
  if (BlueFin::GlMeRxParamLimits::GetMaxAllowedCnstls(*a1[1]) <= a2)
  {
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 579, "GetAllModesTrkParamsFromCnstl", "eCnstl < GetMaxAllowedCnstls()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", 579, "eCnstl < GetMaxAllowedCnstls()");
  }

  return *(BlueFin::GlMeRxParamStd::rMap(a1) + 6) + 208 * a2 + 72;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetAllModesTrkParamsFromCnstl(BlueFin::GlMeSrdReceiverParameters *a1)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(a1) + 152);

  return v1();
}

uint64_t BlueFin::GlMeReceiverParametersIfc::GetDefaultSignalId(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    v3 = a2 == 3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  v5 = 2 * (a2 == 0);
  if (a3 != 2)
  {
    v5 = 0;
  }

  if (a3 != 3)
  {
    v4 = v5;
  }

  if (a3 == 5)
  {
    v6 = 3;
  }

  else
  {
    v6 = v4;
  }

  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        *result = 76;
        *(result + 4) = v6;
        *(result + 8) = 575;
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v6 - v6 + 4] != 255)
        {
          v7 = 63 * v6 + 201;
          goto LABEL_33;
        }

        goto LABEL_34;
      case 4:
        *result = -117;
        *(result + 4) = v6;
        *(result + 8) = 575;
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v6 - v6 + 5] == 255)
        {
          goto LABEL_34;
        }

        v8 = 36;
        v9 = 453;
        break;
      case 5:
        *result = -81;
        *(result + 4) = v6;
        *(result + 8) = 575;
        if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v6 - v6 + 6] == 255)
        {
          goto LABEL_34;
        }

        v8 = 14;
        v9 = 561;
        break;
      default:
        goto LABEL_35;
    }

    v7 = v9 + v6 * v8;
    goto LABEL_33;
  }

  if (!a2)
  {
    *result = 1;
    *(result + 4) = v6;
    *(result + 8) = 575;
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v6 - v6] != 255)
    {
      v7 = 32 * v6;
      goto LABEL_33;
    }

    goto LABEL_34;
  }

  if (a2 == 1)
  {
    *result = 52;
    *(result + 4) = 0;
    v7 = 147;
    goto LABEL_33;
  }

  if (a2 != 2)
  {
LABEL_35:
    DeviceFaultNotify("glme_receiver_parameters_ifc.h", 1197, "GetDefaultSignalId", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_receiver_parameters_ifc.h", 1197, "0");
  }

  *result = 33;
  *(result + 4) = v6;
  *(result + 8) = 575;
  if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v6 - v6 + 1] != 255)
  {
    v7 = (19 * v6) | 0x80;
LABEL_33:
    *(result + 8) = v7;
    return result;
  }

LABEL_34:
  *(result + 4) = -1;
  return result;
}

uint64_t BlueFin::GlMeRxParamStd::GetAllGearsTrkParamsFromCnstlAndMode(int **a1, int a2, unsigned int a3)
{
  if (a3 >= 6)
  {
    v7 = "eMode < GetMaxAllowedModes()";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 593, "GetAllGearsTrkParamsFromCnstlAndMode", "eMode < GetMaxAllowedModes()");
    v8 = 593;
    goto LABEL_6;
  }

  if (BlueFin::GlMeRxParamLimits::GetMaxAllowedCnstls(*a1[1]) <= a2)
  {
    v7 = "eCnstl < GetMaxAllowedCnstls()";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 594, "GetAllGearsTrkParamsFromCnstlAndMode", "eCnstl < GetMaxAllowedCnstls()");
    v8 = 594;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", v8, v7);
  }

  return *(*(BlueFin::GlMeRxParamStd::rMap(a1) + 6) + 208 * a2 + 8 * a3 + 232);
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetAllGearsTrkParamsFromCnstlAndMode(BlueFin::GlMeSrdReceiverParameters *a1)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(a1) + 176);

  return v1();
}

uint64_t BlueFin::PikeEswRpcJdEncImp::esw_jd_rpc_tp_set_all(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (!(*(**(a1 + 8) + 424))(*(a1 + 8)))
  {
    v10 = "m_rAsicConfigIfc.GetMaxTrackParamIndex()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 229, "esw_jd_rpc_tp_set_all", "m_rAsicConfigIfc.GetMaxTrackParamIndex()");
    v11 = 229;
    goto LABEL_6;
  }

  v6 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v12, v13, 1800, v6);
  BlueFin::GlStream::PutU08(v12, *a3);
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU08(v12, 0);
  BlueFin::GlStream::PutU32(v12, *(a3 + 28));
  BlueFin::GlStream::PutU32(v12, *(a3 + 32));
  BlueFin::GlStream::PutU16(v12, *(a3 + 6));
  BlueFin::GlStream::PutU16(v12, *(a3 + 8));
  BlueFin::GlStream::PutU16(v12, *(a3 + 10));
  BlueFin::GlStream::PutU16(v12, *(a3 + 12));
  BlueFin::GlStream::PutU16(v12, *(a3 + 14));
  BlueFin::GlStream::PutU16(v12, *(a3 + 20));
  BlueFin::GlStream::PutU16(v12, *(a3 + 22));
  BlueFin::GlStream::PutU16(v12, *(a3 + 26));
  BlueFin::GlStream::PutU16(v12, *(a3 + 38));
  BlueFin::GlStream::PutU08(v12, *(a3 + 1));
  BlueFin::GlStream::PutU08(v12, *(a3 + 2));
  BlueFin::GlStream::PutU08(v12, *(a3 + 3));
  BlueFin::GlStream::PutU08(v12, *(a3 + 4));
  BlueFin::GlStream::PutU08(v12, *(a3 + 5));
  BlueFin::GlStream::PutU08(v12, *(a3 + 16));
  BlueFin::GlStream::PutU08(v12, *(a3 + 17));
  BlueFin::GlStream::PutU08(v12, *(a3 + 18));
  BlueFin::GlStream::PutU08(v12, *(a3 + 24));
  BlueFin::GlStream::PutU08(v12, *(a3 + 36));
  BlueFin::GlStream::PutU08(v12, *(a3 + 37));
  BlueFin::GlStream::PutU08(v12, *(a3 + 40));
  BlueFin::GlStream::PutU16(v12, *(a3 + 42));
  BlueFin::GlStream::PutU16(v12, *(a3 + 44));
  BlueFin::GlStream::PutU08(v12, *(a3 + 46));
  BlueFin::GlStream::PutU08(v12, *(a3 + 47));
  Offset = BlueFin::GlStream::GetOffset(v12);
  BlueFin::GlMeSrdTransaction::Add(a2, 4, 5u, v13, Offset);
  v8 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v8)
  {
    v10 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_pike.cpp", 280, "esw_jd_rpc_tp_set_all", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v11 = 280;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_pike.cpp", v11, v10);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetCnstl(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 80);

  return v1();
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetMode(BlueFin::GlMeSrdReceiverParameters *this)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(this) + 72);

  return v1();
}

float *BlueFin::GlMeSrdReceiverParametersProgrammer::GetEswPowerThreshold(uint64_t a1, uint64_t a2, int a3, float a4, float a5, float a6)
{
  BlueFin::GlMeReceiverParametersIfc::GetDefaultSignalId(v35, a2, a3);
  if (v37 >= 0x23Fu)
  {
    v32 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 693, "GetSecPerEpochWithTrkException", "IsValid()");
    v33 = "glsignalid.h";
    v34 = 693;
    goto LABEL_34;
  }

  if (v36 != 1 || ((v12 = 1.5, v35[0] - 1 >= 0x20) ? (v13 = v35[0] - 66 >= 0xA) : (v13 = 0), v13))
  {
    if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v36 - v36 + BlueFin::GlSvId::s_aucSvId2gnss[v35[0]]])
    {
      v32 = "ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      v33 = "glsignalid.h";
      v34 = 686;
LABEL_34:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v33, v34, v32);
    }

    v12 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v36 - v36 + BlueFin::GlSvId::s_aucSvId2gnss[v35[0]]] * 0.001;
  }

  v14 = a5 / v12;
  v15 = *((*(**(a1 + 8) + 152))(*(a1 + 8), a2) + 24);
  if (!a2 && a3 == 2)
  {
    v16 = *(a1 + 8);
    v17 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v18 = (*(*v16 + 40))(v16, v17, 0, 2);
LABEL_21:
    v15 = v18;
    goto LABEL_22;
  }

  if (!a2 && a3 == 3)
  {
    v19 = *(a1 + 8);
    v20 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v18 = (*(*v19 + 40))(v19, v20, 0, 3);
    goto LABEL_21;
  }

  if (a2 == 3 && (a3 == 5 || a3 == 3))
  {
    v21 = *(a1 + 8);
    v22 = (*(**(a1 + 16) + 16))(*(a1 + 16));
    v18 = (*(*v21 + 40))(v21, v22, 4, 3);
    goto LABEL_21;
  }

LABEL_22:
  v23 = v14;
  if ((*(**(a1 + 16) + 256))(*(a1 + 16)))
  {
    if (a2 != 4)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v24 = (*(**(a1 + 16) + 264))(*(a1 + 16));
  if (a2 == 4 && (v24 & 1) != 0)
  {
LABEL_27:
    if ((*(**(a1 + 16) + 1032))(*(a1 + 16)))
    {
      v25 = *(a1 + 8);
      v26 = (*(**(a1 + 16) + 16))(*(a1 + 16));
      v15 = (*(*v25 + 40))(v25, v26, 5, 0);
    }
  }

LABEL_29:
  v27 = log10f(a5);
  v28 = (((v15 * v23) + (__exp10f((a4 + (v27 * 10.0)) / 10.0) * (v15 * v23))) * a6) + 0.166666667;
  LOWORD(v29) = *((*(**(a1 + 8) + 136))(*(a1 + 8)) + 24);
  v30 = v29;
  result = (*(**(a1 + 8) + 136))(*(a1 + 8));
  if (((v28 * v30) * (*result / a5)) <= 0.0)
  {
    v32 = "fThresholdEsw > 0.0";
    DeviceFaultNotify("glmesrd_receiver_parameters_programmer.cpp", 895, "GetEswPowerThreshold", "fThresholdEsw > 0.0");
    v33 = "glmesrd_receiver_parameters_programmer.cpp";
    v34 = 895;
    goto LABEL_34;
  }

  return result;
}

uint64_t BlueFin::CarpEswRpcJdEncImp::esw_jd_rpc_gs_set_all(uint64_t a1, uint64_t a2, char *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v6 = *a3;
  if (v6 >= (*(**(a1 + 8) + 408))(*(a1 + 8)))
  {
    v11 = "gs_param_ptr->gs_id < m_rAsicConfigIfc.GetMaxGearStepIndex()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 520, "esw_jd_rpc_gs_set_all", "gs_param_ptr->gs_id < m_rAsicConfigIfc.GetMaxGearStepIndex()");
    v12 = 520;
    goto LABEL_6;
  }

  v7 = (*(**(a2 + 24) + 40))(*(a2 + 24));
  BlueFin::GlStream::GlStream(v13, v14, 1800, v7);
  BlueFin::GlStream::PutU08(v13, *a3);
  BlueFin::GlStream::PutU08(v13, a3[1]);
  BlueFin::GlStream::PutU08(v13, a3[2]);
  BlueFin::GlStream::PutU08(v13, a3[3]);
  BlueFin::GlStream::PutU08(v13, a3[4]);
  BlueFin::GlStream::PutU08(v13, a3[5]);
  BlueFin::GlStream::PutU08(v13, a3[6]);
  BlueFin::GlStream::PutU08(v13, a3[7]);
  BlueFin::GlStream::PutU08(v13, a3[8]);
  BlueFin::GlStream::PutU08(v13, 0);
  BlueFin::GlStream::PutU08(v13, 0);
  BlueFin::GlStream::PutU08(v13, 0);
  Offset = BlueFin::GlStream::GetOffset(v13);
  BlueFin::GlMeSrdTransaction::Add(a2, 4, 6u, v14, Offset);
  v9 = *(a2 + 32);
  result = (*(**(a1 + 8) + 416))();
  if (result < v9)
  {
    v11 = "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()";
    DeviceFaultNotify("glmesrd_transaction_rpc_encoder_carp.cpp", 541, "esw_jd_rpc_gs_set_all", "pTransaction->GetTransLength() <= m_rAsicConfigIfc.GetMaxEswTransBufSize()");
    v12 = 541;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_encoder_carp.cpp", v12, v11);
  }

  return result;
}

uint64_t BlueFin::GlMeSrdReceiverParameters::GetBandNoisePowerAtCaEpoch(BlueFin::GlMeSrdReceiverParameters *a1)
{
  v1 = *(*BlueFin::GlMeSrdReceiverParameters::rRxIfc(a1) + 40);

  return v1();
}

float BlueFin::GlMeRxParamStd::GetBandNoisePowerAtCaEpoch(uint64_t a1, int a2, int a3, int a4)
{
  v7 = (*(*a1 + 264))(a1);
  if (v7 < 2)
  {
    v20 = (a2 & 0xF000FFFF) - 805306382;
    if (v20 >= 4)
    {
      v21 = "0";
      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 358, "GetBandNoisePowerAtCaEpoch", "0");
      v22 = 358;
      goto LABEL_55;
    }

    v9 = *&BlueFin::GlMeSrdConstants::_4755_GALILEO_E1_COH_NOI_PWR_AT_CA_EPOCH_INT;
    v8 = *&BlueFin::GlMeSrdConstants::_4755_BEIDOU_B1C_COH_NOI_PWR_AT_CA_EPOCH_INT;
    result = *&BlueFin::GlMeSrdConstants::_4755_GPS_L1_COH_NOI_PWR_AT_CA_EPOCH_INT;
    v14 = flt_298A37930[v20];
    v17 = flt_298A37940[v20];
    v18 = **(&off_29EEAC4D0 + v20);
    v16 = **(&off_29EEAC4B0 + v20);
    v19 = 3.062;
    v15 = 4.244;
    v12 = 1.915;
    v10 = 3.8152;
    v11 = 3.5809;
  }

  else if (v7 - 2 >= 2)
  {
    if (v7 != 5)
    {
      v21 = "0";
      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 372, "GetBandNoisePowerAtCaEpoch", "0");
      v22 = 372;
      goto LABEL_55;
    }

    if ((a2 & 0xF000FFFF) - 805306383 > 6)
    {
      goto LABEL_60;
    }

    v8 = *&BlueFin::GlMeSrdConstants::_4777_BEIDOU_B1C_COH_NOI_PWR_AT_CA_EPOCH_INT;
    v9 = *&BlueFin::GlMeSrdConstants::_4777_GALILEO_E1_COH_NOI_PWR_AT_CA_EPOCH_INT;
    v19 = 3.062;
    v12 = 1.915;
    v10 = 3.8152;
    v11 = 3.5809;
    result = 3.598;
    v15 = 4.244;
    if (((1 << (a2 - 15)) & 0x54) != 0)
    {
      v14 = 2.893;
      v16 = 2.893;
      v17 = 2.893;
      v18 = 2.893;
      goto LABEL_15;
    }

    if (((1 << (a2 - 15)) & 0x28) != 0)
    {
      v19 = 2.8139;
      v18 = 0.92448;
      v14 = 2.86;
      v16 = 2.86;
      v17 = 2.86;
      goto LABEL_15;
    }

    if ((a2 & 0xF000FFFF) != 0x3000000F)
    {
LABEL_60:
      v21 = "0";
      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 309, "GetBandNoisePowerAtCaEpoch", "0");
      v22 = 309;
      goto LABEL_55;
    }

    v16 = 4.005;
    v15 = 4.244;
    v14 = 3.816;
    v17 = 3.816;
    v18 = 4.244;
  }

  else
  {
    if (a4)
    {
      v21 = "eSignalIndex==SIGNAL_INDEX_0";
      DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 369, "GetBandNoisePowerAtCaEpoch", "eSignalIndex==SIGNAL_INDEX_0");
      v22 = 369;
      goto LABEL_55;
    }

    v8 = 0.0;
    v9 = 14.56;
    v10 = 4.02;
    v11 = 4.1;
    v12 = 0.0;
    result = 4.23;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
  }

LABEL_15:
  if (a3 <= 2)
  {
    switch(a3)
    {
      case 0:
        if (a4 > 1)
        {
          result = v16;
          if (a4 == 2)
          {
            return result;
          }

          result = v8;
          if (a4 == 3)
          {
            return result;
          }
        }

        else
        {
          if (!a4)
          {
            return result;
          }

          result = v12;
          if (a4 == 1)
          {
            return result;
          }
        }

        v21 = "0";
        DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 390, "GetBandNoisePowerAtCaEpoch", "0");
        v22 = 390;
        goto LABEL_55;
      case 1:
        if (a4)
        {
          v21 = "0";
          DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 400, "GetBandNoisePowerAtCaEpoch", "0");
          v22 = 400;
          goto LABEL_55;
        }

        return result;
      case 2:
        result = v11;
        if (a4)
        {
          v21 = "0";
          DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 410, "GetBandNoisePowerAtCaEpoch", "0");
          v22 = 410;
          goto LABEL_55;
        }

        return result;
    }

LABEL_58:
    v21 = "0";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 471, "GetBandNoisePowerAtCaEpoch", "0");
    v22 = 471;
    goto LABEL_55;
  }

  if (a3 > 4)
  {
    if (a3 == 5)
    {
      result = v9;
      if (a4)
      {
        result = v17;
        if (a4 != 2)
        {
          result = v18;
          if (a4 != 1)
          {
            v21 = "0";
            DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 456, "GetBandNoisePowerAtCaEpoch", "0");
            v22 = 456;
            goto LABEL_55;
          }
        }
      }

      return result;
    }

    if (a3 == 6)
    {
      result = v19;
      if (a4)
      {
        v21 = "0";
        DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 466, "GetBandNoisePowerAtCaEpoch", "0");
        v22 = 466;
        goto LABEL_55;
      }

      return result;
    }

    goto LABEL_58;
  }

  if (a3 == 3)
  {
    if (a4 > 1)
    {
      result = v16;
      if (a4 == 2)
      {
        return result;
      }

      result = v8;
      if (a4 == 3)
      {
        return result;
      }
    }

    else
    {
      if (!a4)
      {
        return result;
      }

      result = v12;
      if (a4 == 1)
      {
        return result;
      }
    }

    v21 = "0";
    DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 426, "GetBandNoisePowerAtCaEpoch", "0");
    v22 = 426;
LABEL_55:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_receiver_parameters.cpp", v22, v21);
  }

  if (a4 > 1)
  {
    result = v14;
    if (a4 != 2)
    {
      result = v8;
      if (a4 != 3)
      {
        goto LABEL_50;
      }
    }
  }

  else
  {
    result = v10;
    if (a4)
    {
      result = v15;
      if (a4 != 1)
      {
LABEL_50:
        v21 = "0";
        DeviceFaultNotify("glmesrd_receiver_parameters.cpp", 442, "GetBandNoisePowerAtCaEpoch", "0");
        v22 = 442;
        goto LABEL_55;
      }
    }
  }

  return result;
}

uint64_t gnss::FireGnssDevice::startTimeTransferSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[3] = *MEMORY[0x29EDCA608];
  FireDeviceLog::DeviceLogBase(6, "#fgd startTimeTransferSession");
  v8 = *(a2 + 24);
  if (v8)
  {
    if (v8 == a2)
    {
      v14 = v13;
      (*(*v8 + 24))(v8, v13);
    }

    else
    {
      v14 = (*(*v8 + 16))(v8);
    }
  }

  else
  {
    v14 = 0;
  }

  v9 = a1 + 8;
  if (v13 != (a1 + 8))
  {
    v10 = v14;
    v11 = *(a1 + 32);
    if (v14 == v13)
    {
      if (v11 == v9)
      {
        (*(*v14 + 24))();
        (*(*v14 + 32))(v14);
        v14 = 0;
        (*(**(a1 + 32) + 24))(*(a1 + 32), v13);
        (*(**(a1 + 32) + 32))(*(a1 + 32));
        *(a1 + 32) = 0;
        v14 = v13;
        (*(v15[0] + 24))(v15, a1 + 8);
        (*(v15[0] + 32))(v15);
      }

      else
      {
        (*(*v14 + 24))();
        (*(*v14 + 32))(v14);
        v14 = *(a1 + 32);
      }

      *(a1 + 32) = v9;
    }

    else if (v11 == v9)
    {
      (*(*v11 + 24))(*(a1 + 32), v13);
      (*(**(a1 + 32) + 32))(*(a1 + 32));
      *(a1 + 32) = v14;
      v14 = v13;
    }

    else
    {
      v14 = *(a1 + 32);
      *(a1 + 32) = v10;
    }
  }

  std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](v13);
  FireMessageHandler::send(*(a1 + 40), 1073741837);
  std::function<void ()(gnss::Result)>::operator()(a3, 1);

  return std::function<void ()(gnss::Result)>::operator()(a4, 1);
}

void sub_2988A3B34(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(gnss::Result,gnss::TimeTransferData)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t BlueFin::GlDbgRequest::CreateGlRequestImplSyncin(uint64_t (*a1)(uint64_t), void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a4;
  v12 = a2;
  if (BlueFin::GlDbgMemory::m_pInstance)
  {
    v14 = 1;
  }

  else
  {
    v14 = a1 == 0;
  }

  if (!v14 && a2 != 0)
  {
    v18 = a1(16);
    BlueFin::GlDbgMemory::m_pInstance = v18;
    v16 = a1;
    if (v18)
    {
      *v18 = a1;
      v18[1] = v12;
      v16 = a1;
    }

    goto LABEL_13;
  }

  v16 = a1;
  if (a1)
  {
LABEL_13:
    v17 = v16(136);
    goto LABEL_14;
  }

  v17 = (*BlueFin::GlDbgMemory::m_pInstance)(136);
LABEL_14:
  v19 = v17;
  if (v17)
  {
    *v17 = &unk_2A1F0A1D8;
    *(v17 + 72) = 0u;
    *(v17 + 40) = 0u;
    *(v17 + 88) = 0u;
    *(v17 + 8) = 0u;
    *(v17 + 24) = 0u;
    *(v17 + 56) = 0u;
    *(v17 + 104) = 0u;
    *(v17 + 120) = 0u;
    *(v17 + 72) = a3;
    *(v17 + 40) = a7;
    *(v17 + 88) = a5;
    *(v17 + 96) = a6;
    Memory = BlueFin::GlMemAlloc::glAllocateMemory(44, 288, a1);
    v21 = BlueFin::GlRequestImplSyncin::Create(Memory, v19, BlueFin::GlDbgProxyGlReqOnStart, v10, BlueFin::GlDbgProxyGlReqOnSyncInReport, BlueFin::GlDbgProxyGlReqOnSyncInStatus, BlueFin::GlDbgProxyGlReqOnSyncInLatched);
    *(v19 + 24) = v21;
    if (!v21)
    {
      if (!v12)
      {
        v12 = *(BlueFin::GlDbgMemory::m_pInstance + 8);
      }

      v12(v19);
      return 0;
    }
  }

  return v19;
}

uint64_t BlueFin::GlRequestImplSyncin::Create(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!result)
  {
    DeviceFaultNotify("glrequest.cpp", 1348, "Create", "pvBuffer != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glrequest.cpp", 1348, "pvBuffer != nullptr");
  }

  *(result + 16) = 6;
  *(result + 20) = 1;
  *(result + 24) = -1;
  *(result + 28) = -1;
  *(result + 36) = -1;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = a3;
  *(result + 64) = 1;
  *(result + 72) = 0;
  *(result + 80) = a5;
  *result = &unk_2A1F16D40;
  *(result + 8) = a2;
  *(result + 88) = a6;
  *(result + 96) = a7;
  *(result + 104) = 0;
  *(result + 112) = 0;
  if (a4 <= 0)
  {
    v7 = 30;
  }

  else
  {
    v7 = a4;
  }

  *(result + 22) = v7;
  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgRequest::SetOnSyncinReportCurrentTime(uint64_t a1, uint64_t a2)
{
  *(a1 + 112) = a2;
  v3 = *(a1 + 8);
  if (v3)
  {
    BlueFin::GlDbgCodec::WriteStart(v3, 3084);
    v4 = *(a1 + 8);
    v9 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v4, &v9);
    (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  }

  (*(**(a1 + 24) + 80))(*(a1 + 24), BlueFin::GlDbgProxyGlReqOnSyncinReportCurrentTime);
  result = *(a1 + 8);
  if (result)
  {
    BlueFin::GlDbgCodec::WriteFinal(result, 3084);
    v6 = *(a1 + 8);
    v8 = BlueFin::GlDbgRequest::Id(a1, 0);
    BlueFin::GlDbgCodec::Write(v6, &v8);
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }

  return result;
}

unint64_t BlueFin::GlRequestImplSyncin::Print(unint64_t this, unsigned __int8 a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v3 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(a2);
    if (this)
    {
      if (((1 << (a2 >> 3)) & 0x2000800E) != 0)
      {
        v5 = 76;
        if (!*(v3 + 96))
        {
          v5 = 108;
        }

        v6 = 68;
        if (!*(v3 + 80))
        {
          v6 = 100;
        }

        v7 = 89;
        if (!*(v3 + 88))
        {
          v7 = 121;
        }

        BlueFin::GlFormat::glsnprintf(v8, 0x32, "cbSync(%c%c%c) %hds", v4, v7, v6, v5, *(v3 + 22));
        return BlueFin::GlRequestImplNmea::Print(v3, a2, v8);
      }
    }
  }

  return this;
}

_BYTE *BlueFin::GlDineCtrl::ArmSYNCIN(BlueFin::GlDineCtrl *this, int a2, int a3)
{
  v6 = 70;
  if (a3)
  {
    v7 = 84;
  }

  else
  {
    v7 = 70;
  }

  if (a2)
  {
    v6 = 84;
  }

  GlCustomLog(14, "GlDineCtrl::ArmSYNCIN(%c,%c)\n", v6, v7);
  result = BlueFin::GlMeSrdCtrlSm::ArmSYNCIN(this + 75168, a2, a3);
  if (a2)
  {
    *(this + 74200) = 1;
  }

  return result;
}

_BYTE *BlueFin::GlMeSrdCtrlSm::ArmSYNCIN(_BYTE *this, int a2, int a3)
{
  if ((this[5576] & 1) == 0)
  {
    if (this[219] == 1)
    {
      if (a3)
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }

      if (a2)
      {
        v5 = 40;
      }

      else
      {
        v5 = 41;
      }

      v6 = (this + 2600);

      return BlueFin::GlQueue::putLIFO(v6, v5, v4);
    }

    else if (a2)
    {
      DeviceFaultNotify("glmesrd_ctrl_sm.cpp", 283, "ArmSYNCIN", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_ctrl_sm.cpp", 283, "0");
    }
  }

  return this;
}

uint64_t BlueFin::GlQueue::putLIFO(BlueFin::GlQueue *this, int a2, char a3)
{
  if (!a2)
  {
    DeviceFaultNotify("glhsm_queue.cpp", 115, "putLIFO", "sig != 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glhsm_queue.cpp", 115, "sig != 0");
  }

  v3 = *this;
  if (!*this)
  {
    *this = a2;
    *(this + 1) = a3;
    *(this + 47) |= *(this + 46);
    return 1;
  }

  v4 = *(this + 21);
  if (v4 < *(this + 20))
  {
    *(this + 21) = v4 + 1;
    if (v4 >= *(this + 22))
    {
      *(this + 22) = v4 + 1;
    }

    v5 = (*(this + 4) - 2);
    *(this + 4) = v5;
    if (v5 < *(this + 1))
    {
      v5 = (*(this + 2) - 2);
      *(this + 4) = v5;
    }

    *v5 = v3;
    v5[1] = *(this + 1);
    *this = a2;
    *(this + 1) = a3;
    return 1;
  }

  return 0;
}

uint64_t (*(*BlueFin::GlMeSrdSyncIn::wait4arm(BlueFin::GlMeSrdSyncIn *this, unsigned __int8 *a2))(uint64_t a1, unsigned __int8 *a2))()
{
  result = 0;
  v4 = *a2;
  if (v4 > 0x27)
  {
    if (v4 == 40)
    {
      return result;
    }

    if (v4 == 41)
    {
      BlueFin::GlMeSrdSyncIn::DisarmESW(this);
      (*(**(this + 15) + 184))(*(this + 15), 5, 0.0);
      v5 = "&GlMeSrdSyncIn::wait4disarm";
      v6 = BlueFin::GlMeSrdSyncIn::wait4disarm;
      goto LABEL_9;
    }
  }

  else
  {
    if (v4 - 2 < 2)
    {
      return result;
    }

    if (v4 == 13)
    {
      if (a2[1])
      {
        return 0;
      }

      v5 = "&GlMeSrdSyncIn::wait4pulse";
      v6 = BlueFin::GlMeSrdSyncIn::wait4pulse;
LABEL_9:
      BlueFin::QHsm::tran(this, v6, v5);
      return 0;
    }
  }

  return BlueFin::GlMeSrdSyncIn::running;
}

uint64_t (*BlueFin::GlMeSrdSyncIn::running(uint64_t a1, unsigned __int8 *a2))()
{
  v2 = *a2;
  if (v2 > 0x2B)
  {
    return BlueFin::QHsm::top;
  }

  if (((1 << v2) & 0xB0000002000) != 0)
  {
    GlCustomLog(12, "GlMeSrdSyncIn::running the following msg %d was discarded because it was not expected to be received!!! \n", v2);
    return 0;
  }

  if (((1 << v2) & 0xC) != 0)
  {
    return 0;
  }

  else
  {
    return BlueFin::QHsm::top;
  }
}

BOOL BlueFin::GlAscii85::Encode(BlueFin::GlAscii85 *this, char *a2, const unsigned __int8 *a3, unsigned int a4, unsigned int a5, unsigned int *a6, unsigned int *a7, int a8)
{
  v8 = *(this + 5);
  if (v8)
  {
    return (v8 & 1) == 0;
  }

  v9 = a5;
  v10 = a4;
  *(this + 7) = 1;
  v12 = *(this + 9);
  v11 = *(this + 10);
  if (v12 != v11)
  {
    v13 = *a6;
    if (v13 >= v10)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v14 = *(this + v12 + 5);
      *a6 = v13 + 1;
      a2[v13] = v14;
      v11 = *(this + 10);
      v12 = (*(this + 9) + 1) & 7;
      *(this + 9) = v12;
      if (v12 == v11)
      {
        break;
      }

      v13 = *a6;
      if (v13 >= v10)
      {
        goto LABEL_7;
      }
    }
  }

  v11 = v12;
LABEL_7:
  if (((v11 - v12) & 7u) > 2)
  {
    goto LABEL_49;
  }

  v15 = this + 5;
  while (1)
  {
    v16 = *a7;
    if (v16 >= v9)
    {
      if (!a8 || *(this + 6))
      {
        goto LABEL_49;
      }

      v17 = *(this + 8);
    }

    else
    {
      v17 = *(this + 8);
      if (v17 < 4)
      {
        v18 = *(this + 4);
        do
        {
          *a7 = v16 + 1;
          v19 = a3[v16];
          v20 = *(this + 8);
          *(this + 8) = v20 + 1;
          *(this + v20) = v19;
          v18 = BlueFin::GlAscii85::m_aucCrcLookupTable[v18 ^ v19];
          *(this + 4) = v18;
          v17 = *(this + 8);
          v16 = *a7;
        }

        while (v17 <= 3 && v16 < v9);
      }

      if (!a8)
      {
        goto LABEL_27;
      }
    }

    if (v16 >= v9)
    {
      while (1)
      {
        v17 = *(this + 8);
        if (v17 > 3)
        {
          break;
        }

        if (*(this + 6))
        {
          goto LABEL_27;
        }

        v22 = ~*(this + 16);
        *(this + 8) = v17 + 1;
        *(this + v17) = v22;
        ++*(this + 6);
        if (*a7 < v9)
        {
          v17 = *(this + 8);
          goto LABEL_27;
        }
      }

      v11 = *(this + 10);
      goto LABEL_32;
    }

LABEL_27:
    v23 = v17 > 3 ? 1 : a8;
    v11 = *(this + 10);
    if (!v17 || (v23 & 1) == 0)
    {
      break;
    }

LABEL_32:
    v24 = bswap32(*this);
    if (v17 == 4 && v24 == 0)
    {
      v15[v11] = 122;
      v30 = *(this + 10) + 1;
    }

    else
    {
      v26 = v11 & 7 ^ 4;
      *(this + 10) = v26;
      v27 = 5;
      do
      {
        v28 = (v24 >> 7) + (v24 >> 8) + (((v24 >> 7) + (v24 >> 8)) >> 8);
        v29 = v28 + HIWORD(v28) + ((193 * (v24 - 85 * (v28 + HIWORD(v28)))) >> 14);
        v15[v26] = BlueFin::GlAscii85::m_aucEncodeTable[(v24 - 85 * v29)];
        v26 = (*(this + 10) - 1) & 7;
        *(this + 10) = v26;
        v24 = v29;
        --v27;
      }

      while (v27);
      v30 = v26 + *(this + 8) + 2;
    }

    v11 = v30 & 7;
    *(this + 10) = v11;
    v12 = *(this + 9);
    if (v12 == v11)
    {
      v12 = v11;
    }

    else
    {
      while (1)
      {
        v31 = *a6;
        if (v31 >= v10)
        {
          break;
        }

        v32 = v15[v12];
        *a6 = v31 + 1;
        a2[v31] = v32;
        v11 = *(this + 10);
        v12 = (*(this + 9) + 1) & 7;
        *(this + 9) = v12;
        if (v12 == v11)
        {
          v11 = v12;
          break;
        }
      }
    }

    *(this + 8) = 0;
    *this = 0;
    if (((v11 - v12) & 7u) >= 3)
    {
      goto LABEL_49;
    }
  }

  v12 = *(this + 9);
LABEL_49:
  if (v12 != v11)
  {
    do
    {
      v33 = *a6;
      if (v33 >= v10)
      {
        break;
      }

      v34 = *(this + v12 + 5);
      *a6 = v33 + 1;
      a2[v33] = v34;
      v35 = *(this + 10);
      v12 = (*(this + 9) + 1) & 7;
      *(this + 9) = v12;
    }

    while (v12 != v35);
  }

  v8 = *(this + 5);
  if (a8)
  {
    if (*a7 == v9 && *a6 < v10)
    {
      v8 |= 2u;
      *(this + 5) = v8;
    }
  }

  return (v8 & 1) == 0;
}

char *BlueFin::GlDbgCodecBase::Encode(char *this, char *a2, int a3, unsigned int a4, unsigned int a5)
{
  v8 = this;
  this[562] = 1;
  v9 = this + 32;
  v10 = this + 552;
  v11 = this + 296;
  v12 = this + 292;
  do
  {
    if (a3)
    {
      while (1)
      {
        v13 = *(v8 + 72);
        if (v13 > 0xFF)
        {
          break;
        }

        v14 = *a2++;
        *(v8 + 72) = v13 + 1;
        v9[v13] = v14;
        if (!--a3)
        {
          goto LABEL_5;
        }
      }

      v15 = 1;
    }

    else
    {
LABEL_5:
      a3 = 0;
      if (v8[560])
      {
        v15 = 0;
      }

      else
      {
        v15 = 0;
        if (!a4)
        {
          return this;
        }
      }
    }

    v16 = v8[567];
    if (!v16)
    {
      v17 = *v10;
      if (v17 > 0xFF)
      {
        v16 = 0;
        goto LABEL_23;
      }

      *(v8 + 138) = v17 + 1;
      v11[v17] = 123;
      v16 = v8[567] + 1;
      v8[567] = v16;
    }

    if (v16 == 1)
    {
      (*(*v8 + 88))(v8, v9, v11, v12, v10, *(v8 + 72), 256, (v15 ^ 1) & a4);
      if (a4)
      {
        v18 = (*(*v8 + 96))(v8);
        v16 = v8[567];
        if (v18)
        {
          v8[567] = ++v16;
        }
      }

      else
      {
        v16 = v8[567];
      }
    }

    v17 = *v10;
    if (v16 == 2)
    {
      v16 = 2;
      if (v17 <= 0xFF)
      {
        if (a4)
        {
          v16 = 0;
          *(v8 + 138) = v17 + 1;
          v11[v17] = 125;
          v8[567] = 0;
          v17 = *(v8 + 138);
        }
      }
    }

LABEL_23:
    if (v16)
    {
      v19 = a4;
    }

    else
    {
      v19 = 0;
    }

    this = (*(*v8 + 80))(v8, &v11[*(v8 + 139)], v17, a5);
    *(v8 + 69) = 0;
    v20 = *(v8 + 73);
    v21 = *(v8 + 72);
    if (v21 == v20)
    {
      *(v8 + 72) = 0;
    }

    else
    {
      v22 = (v21 - v20);
      *(v8 + 72) = v22;
      this = memmove(v9, &v9[v20], v22);
    }

    *v12 = 0;
  }

  while (((v15 | v19) & 1) != 0);
  return this;
}

char *BlueFin::GlDbgCodec::Write(BlueFin::GlDbgCodec *this, const __int16 *a2)
{
  result = (*(*this + 120))(this);
  if (result)
  {
    *v5 = bswap32(*a2) >> 16;
    return BlueFin::GlDbgCodecBase::Encode(this, v5, 2, 0, 0);
  }

  return result;
}

void *BlueFin::GlDbgProxy::Rawwrite(BlueFin::GlDbgProxy *this, unsigned __int8 *__src, unsigned int a3, int a4)
{
  v8 = this + 6624;
  v9 = *(this + 1720);
  while (1)
  {
    v10 = 251 - v9 >= a3 ? a3 : (251 - v9);
    result = memcpy(&v8[v9 + 3], __src, v10);
    v8[(v10 + *(this + 1720) + 3)] = 10;
    v8[(v10 + *(this + 1720) + 4)] = 0;
    a3 -= v10;
    if (!a3 && !a4)
    {
      break;
    }

    v12 = *(this + 112);
    if (v12)
    {
      result = v12(this + 608, v8);
    }

    v9 = 0;
    __src += v10;
    *(this + 1720) = 0;
    if (!a3)
    {
      return result;
    }
  }

  *(this + 1720) += v10;
  return result;
}

char *BlueFin::GlDbgCodec::Write(BlueFin::GlDbgCodec *this, double *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  result = (*(*this + 120))(this);
  if (result)
  {
    BlueFin::GlDbgCodecBase::External(this, v5, *a2);
    return BlueFin::GlDbgCodecBase::Encode(this, v5, 8, 0, 0);
  }

  return result;
}

{
  result = (*(*this + 120))(this);
  if (result)
  {

    return BlueFin::GlDbgCodec::Write(this, a2);
  }

  return result;
}

void BlueFin::GlDbgCodecBase::External(BlueFin::GlDbgCodecBase *this, unsigned __int8 *a2, double a3)
{
  __e = 0;
  v5 = fabs(a3);
  v6 = vcvtd_n_s64_f64(frexp(v5, &__e), 0x35uLL);
  if (__e <= -1022)
  {
    v7 = -1023;
  }

  else
  {
    v7 = __e - 1;
  }

  if (__e <= -1022)
  {
    v8 = v6 >> (3 - __e);
  }

  else
  {
    v8 = v6;
  }

  v9 = v6 == 0;
  if (v6)
  {
    v10 = v7;
  }

  else
  {
    v10 = -1023;
  }

  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  if (v5 > 1.79769313e308)
  {
    v10 = 1024;
    v11 = 0;
  }

  v12 = ((v10 << 52) + 0x3FF0000000000000) | *(&__const__ZN7BlueFin14GlDbgCodecBase8ExternalEPhd_ullSigns + ((~*&a3 >> 60) & 8));
  v13 = v12 | v11 & 0xFFFFFFFFFFFFFLL;
  *(a2 + 1) = bswap32(v13);
  a2[3] = BYTE4(v13);
  a2[2] = BYTE5(v13);
  a2[1] = BYTE6(v13);
  *a2 = HIBYTE(v12);
}

uint64_t gnss::FireGnssDevice::setAssistanceAccel(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = FireMessageHandler::setAssistanceAccel(*(a1 + 40), a2);

  return std::function<void ()(gnss::Result)>::operator()(a3, v4);
}

__n128 std::deque<BlueFin::GlSensRawData>::push_back(unint64_t *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 204 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<BlueFin::GlSensRawData>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + 8 * (v7 / 0xCC)) + 20 * (v7 % 0xCC));
  result = *a2;
  v8[1].n128_u32[0] = a2[1].n128_u32[0];
  *v8 = result;
  ++a1[5];
  return result;
}

void FireMessageHandler::SetAssistanceRawSensor(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = a2[5];
  if (v2)
  {
    v5 = 0;
    while (1)
    {
      if ((*(a1 + 2200) & 1) == 0)
      {
        v6 = *(a1 + 1296);
        LOBYTE(v16) = 1;
        *(&v16 + 1) = 0;
        *(&v16 + 5) = 16842752;
        *(&v16 + 9) = 0;
        HIDWORD(v16) = 0;
        v17 = 257;
        v18 = 0;
        if ((*(*v6 + 536))())
        {
          FireDeviceLog::DeviceLogBase(5, "SetAssistanceRawSensorConfig,pass,enable,%d");
        }

        else
        {
          FireDeviceLog::DeviceLogBase(2, "SetAssistanceRawSensorConfig,fail,enable,%d");
        }

        *(a1 + 2200) = 1;
        v2 = a2[5];
      }

      v7 = a2[1];
      v8 = a2[4];
      v9 = v7[v8 / 0xCC] + 20 * (v8 % 0xCC);
      v10 = *(v9 + 16);
      v11 = *v9;
      v12 = &v19[5 * v5];
      *v12 = v11;
      v12[4] = v10;
      a2[4] = ++v8;
      a2[5] = v2 - 1;
      if (v8 >= 0x198)
      {
        operator delete(*v7);
        a2[1] += 8;
        a2[4] -= 204;
      }

      if (v5 != -1)
      {
        v13 = v5 + 1;
        if (v5 != 39)
        {
          v2 = a2[5];
          if (v2)
          {
            goto LABEL_17;
          }
        }

        *(&v16 + 1) = v19;
        *&v16 = v13;
        v14 = (*(**(a1 + 1296) + 528))(*(a1 + 1296), &v16);
        v15 = "Warning";
        if (v14)
        {
          v15 = "";
        }

        FireDeviceLog::DeviceLogBase(6, "#%s,GPSD_SENSOR,isPass,%d,timeStamp,%u,SensorType,%d,Size,%zu,InQueue,%zu", v15, v14, v19[1], v19[0], v5 + 1, a2[5]);
      }

      v13 = 0;
      v2 = a2[5];
LABEL_17:
      v5 = v13;
      if (!v2)
      {
        return;
      }
    }
  }

  FireDeviceLog::DeviceLogBase(3, "#Warning GPSD_SENSOR,No Raw Sensor Data");
}

uint64_t FireMessageHandler::setAssistanceAccel(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v5 = (*v3 + 500000) / 0xF4240uLL;
      v7.n128_u32[0] = 0;
      v7.n128_u32[1] = v5;
      v7.n128_u64[1] = *(v3 + 8);
      v8 = *(v3 + 16);
      std::deque<BlueFin::GlSensRawData>::push_back((a1 + 1840), &v7);
      v3 += 24;
    }

    while (v3 != v4);
  }

  FireMessageHandler::send(a1, 1073741833);
  return 1;
}

uint64_t BlueFin::GlDbgEngine::SetSensRawInfo(uint64_t a1, uint64_t a2)
{
  BlueFin::GlDbgCodec::WriteStart(*(a1 + 8), 1584);
  BlueFin::GlDbgCodec::Write(*(a1 + 8), a2);
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  v4 = BlueFin::GlEngineImplStd::SetSensRawInfo(a1 + 368, a2);
  v7 = v4;
  BlueFin::GlDbgCodec::WriteFinal(*(a1 + 8), 1584);
  v5 = *(a1 + 8);
  if ((*(*v5 + 120))(v5))
  {
    BlueFin::GlDbgCodec::Write(v5, &v7);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 1);
  return v4;
}

uint64_t FireMessageHandler::setAssistanceGyro(uint64_t a1, float32x2_t **a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v8 = vdupq_n_s64(0xC04CA5DC1A63C1F8);
    do
    {
      v5 = (*v3 + 500000) / 0xF4240uLL;
      v9.n128_u32[0] = 2;
      v9.n128_u32[1] = v5;
      *&v9.n128_i8[8] = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(v3[1]), v8));
      v6 = -v3[2].f32[0] * 57.2957795;
      v10 = v6;
      std::deque<BlueFin::GlSensRawData>::push_back((a1 + 1888), &v9);
      v3 += 3;
    }

    while (v3 != v4);
  }

  FireMessageHandler::send(a1, 1073741834);
  return 1;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *a1, uint64_t a2)
{
  v5 = *a2;
  BlueFin::GlDbgCodec::Rvw(a1, &v5);
  if (!*(a1 + 143))
  {
    *a2 = v5;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  switch(*a2)
  {
    case 0:
    case 1:
    case 2:
    case 6:
    case 7:
    case 8:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
      result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
      break;
    case 3:
    case 4:
    case 5:
      result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
      break;
    default:
      DeviceFaultNotify("gldebug_codec.cpp", 7039, "Rvw", "false");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 7039, "false");
  }

  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  v5 = *(a2 + 32);
  result = BlueFin::GlDbgCodec::Rvw(a1, &v5);
  if (!*(a1 + 143))
  {
    *(a2 + 32) = v5;
  }

  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  if (!*(a1 + 143))
  {
    *(a2 + 6) = 32;
  }

  return BlueFin::GlDbgCodec::RvwArray(a1, a2 + 8, (a2 + 6));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 10));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
}

{
  if ((*(*a1 + 112))(a1) < 0x5F)
  {
    v4 = 3;
    goto LABEL_5;
  }

  v6 = *a2;
  BlueFin::GlDbgCodec::Rvw(a1, &v6);
  if (!*(a1 + 143))
  {
    v4 = v6;
LABEL_5:
    *a2 = v4;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  return BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 8), (a2 + 6));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  if (!*(a1 + 143))
  {
    *(a2 + 4) = 7;
  }

  return BlueFin::GlDbgCodec::RvwArray(a1, a2 + 8, (a2 + 4));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  if (!*(a1 + 143))
  {
    *a2 = 14;
  }

  return BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 8), a2);
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 5));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 36));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 44));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
}

{
  v4 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 4);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 24);
  LOBYTE(v22) = *(a2 + 40);
  BlueFin::GlDbgCodec::Rvw(a1, &v22);
  if (!*(a1 + 143))
  {
    *(a2 + 40) = v22;
  }

  v5 = *(a2 + 44);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 44));
  BlueFin::GlDbgCodec::checkArraySize(a1, (a2 + 44), v5);
  if (*(a2 + 44) >= 1)
  {
    v6 = 0;
    v7 = (a2 + 84);
    do
    {
      BlueFin::GlDbgCodec::Rvw(a1, v7 - 36);
      BlueFin::GlDbgCodec::Rvw(a1, v7 - 35);
      BlueFin::GlDbgCodec::Rvw(a1, v7 - 34);
      BlueFin::GlDbgCodec::Rvw(a1, v7 - 33);
      BlueFin::GlDbgCodec::Rvw(a1, v7 - 16);
      BlueFin::GlDbgCodec::Rvw(a1, v7 - 15);
      if ((*(*a1 + 112))(a1) < 0x68)
      {
        LOWORD(v22) = 0;
        BlueFin::GlDbgCodec::Rvw(a1, &v22);
        *(v7 - 4) = v22;
      }

      else
      {
        BlueFin::GlDbgCodec::Rvw(a1, v7 - 4);
      }

      BlueFin::GlDbgCodec::Rvw(a1, v7 - 6);
      BlueFin::GlDbgCodec::Rvw(a1, v7 - 5);
      if ((*(*a1 + 112))(a1) < 0x68)
      {
        LOWORD(v22) = 0;
        BlueFin::GlDbgCodec::Rvw(a1, &v22);
        *(v7 - 4) = v22;
      }

      else
      {
        BlueFin::GlDbgCodec::Rvw(a1, v7 - 2);
      }

      BlueFin::GlDbgCodec::Rvw(a1, v7 - 2);
      if ((*(*a1 + 112))(a1) >= 0x2B)
      {
        BlueFin::GlDbgCodec::Rvw(a1, v7 - 1);
        BlueFin::GlDbgCodec::Rvw(a1, v7);
      }

      if ((*(*a1 + 112))(a1) >= 0xBF)
      {
        BlueFin::GlDbgCodec::Rvw(a1, v7 - 2);
      }

      ++v6;
      v7 += 40;
    }

    while (v6 < *(a2 + 44));
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4048));
  LOBYTE(v22) = *(a2 + 4060);
  BlueFin::GlDbgCodec::Rvw(a1, &v22);
  if (!*(a1 + 143))
  {
    *(a2 + 4060) = v22;
  }

  LOBYTE(v22) = *(a2 + 4064);
  BlueFin::GlDbgCodec::Rvw(a1, &v22);
  if (!*(a1 + 143))
  {
    *(a2 + 4064) = v22;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4068));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4072));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4080));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4088));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4096));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4112));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4120));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4128));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4136));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4144));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4152));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4160));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4168));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4172));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4184));
  if (v4 >= 0x4D)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4051));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4176));
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4192));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4200));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4208));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4216));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4224));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4256));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4258));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4260));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4264));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4268));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4272));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4274));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4280));
  v23 = 0;
  if (v4 >= 0x58)
  {
    v23 = 4;
    BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 5816), &v23);
LABEL_25:
    v23 = 4;
    BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 4600), &v23);
    v23 = 4;
    BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 4856), &v23);
    v23 = 4;
    BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 5112), &v23);
    v23 = 4;
    BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 5368), &v23);
LABEL_26:
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 5624));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 5752));
    v8 = 1;
    goto LABEL_27;
  }

  if (v4 >= 0x42)
  {
    goto LABEL_25;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4600));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4856));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 5112));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 5368));
  if (v4 >= 8)
  {
    goto LABEL_26;
  }

  v8 = 0;
LABEL_27:
  v23 = 188;
  BlueFin::GlDbgCodec::Rvw(a1, &v23);
  BlueFin::GlDbgCodec::checkArraySize(a1, &v23, 0xBCu);
  if (v23)
  {
    v9 = 0;
    v10 = a2 + 6136;
    do
    {
      LOBYTE(v22) = *(v10 + 4 * v9);
      BlueFin::GlDbgCodec::Rvw(a1, &v22);
      if (!*(a1 + 143))
      {
        *(v10 + 4 * v9) = v22;
      }

      ++v9;
    }

    while (v9 < v23);
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6888));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6892));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6896));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6900));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6904));
  LOBYTE(v22) = *(a2 + 6912);
  BlueFin::GlDbgCodec::Rvw(a1, &v22);
  if (!*(a1 + 143))
  {
    *(a2 + 6912) = v22;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6916));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6920));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6924));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6928));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6932));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6936));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6940));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6944));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6948));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6952));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6960));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6968));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6976));
  v22 = *(a2 + 4200);
  BlueFin::GlDbgCodec::Rvw(a1, &v22);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6984));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6992));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7000));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7008));
  __dst[0] = *(a2 + 7012);
  BlueFin::GlDbgCodec::Rvw(a1, __dst);
  if (!*(a1 + 143))
  {
    *(a2 + 7012) = __dst[0];
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7016));
  v11 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7024));
  v12 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7032));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7034));
  __dst[0] = *(a2 + 7036);
  BlueFin::GlDbgCodec::Rvw(a1, __dst);
  if (!*(a1 + 143))
  {
    *(a2 + 7036) = __dst[0];
  }

  if (v12 >= 0x19)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7040));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7048));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7056));
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7064));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7068));
  __dst[0] = *(a2 + 7072);
  BlueFin::GlDbgCodec::Rvw(a1, __dst);
  if (!*(a1 + 143))
  {
    *(a2 + 7072) = __dst[0];
  }

  __dst[0] = *(a2 + 7076);
  BlueFin::GlDbgCodec::Rvw(a1, __dst);
  if (!*(a1 + 143))
  {
    *(a2 + 7076) = __dst[0];
  }

  __dst[0] = *(a2 + 7080);
  BlueFin::GlDbgCodec::Rvw(a1, __dst);
  if (!*(a1 + 143))
  {
    *(a2 + 7080) = __dst[0];
  }

  __dst[0] = *(a2 + 7084);
  BlueFin::GlDbgCodec::Rvw(a1, __dst);
  if (!*(a1 + 143))
  {
    *(a2 + 7084) = __dst[0];
  }

  BlueFin::GlDbgCodec::Rvw(a1, a2 + 7088);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 7096);
  __dst[0] = *(a2 + 7104);
  BlueFin::GlDbgCodec::Rvw(a1, __dst);
  if (!*(a1 + 143))
  {
    *(a2 + 7104) = __dst[0];
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7108));
  __dst[0] = *(a2 + 7112);
  BlueFin::GlDbgCodec::Rvw(a1, __dst);
  if (!*(a1 + 143))
  {
    *(a2 + 7112) = __dst[0];
  }

  if (v11 >= 0x38)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7116));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7120));
    __dst[0] = *(a2 + 7124);
    BlueFin::GlDbgCodec::Rvw(a1, __dst);
    if (!*(a1 + 143))
    {
      *(a2 + 7124) = __dst[0];
    }

    __dst[0] = *(a2 + 7128);
    BlueFin::GlDbgCodec::Rvw(a1, __dst);
    if (!*(a1 + 143))
    {
      *(a2 + 7128) = __dst[0];
    }
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7148));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7152));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7160));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7168));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7176));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7180));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7184));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7188));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7192));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7196));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7200));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7204));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7208));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7212));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7216));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7220));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7224));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7228));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7232));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7236));
  if ((*(*a1 + 112))(a1) >= 0x54)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7240));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7244));
  }

  BlueFin::GlDbgCodec::Rvw(a1, a2 + 7248);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7268));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7272));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7273));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7274));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7276));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7277));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7278));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7280));
  v13 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7284));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7285));
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7288));
  if (v13 >= 0xE)
  {
    result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7292));
  }

  if (v4 <= 0x5B && *(a1 + 143) <= 1u)
  {
    BlueFin::GlDbgCodecBase::Decode(a1, __dst, 4u);
    v15 = bswap32(*__dst);
    if (v15)
    {
      v16 = 3 * v15;
      if (v16 <= 1)
      {
        v16 = 1;
      }

      v17 = -v16;
      do
      {
        BlueFin::GlDbgCodecBase::Decode(a1, __dst, 1u);
        v18 = __CFADD__(v17++, 1);
      }

      while (!v18);
    }

    result = BlueFin::GlDbgCodecBase::Decode(a1, __dst, 4u);
    v19 = bswap32(*__dst);
    if (v19)
    {
      v20 = 9 * v19;
      if (v20 <= 1)
      {
        v20 = 1;
      }

      v21 = -v20;
      do
      {
        result = BlueFin::GlDbgCodecBase::Decode(a1, __dst, 1u);
        v18 = __CFADD__(v21++, 1);
      }

      while (!v18);
    }
  }

  if (v8)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7296));
    result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7300));
  }

  if (v4 >= 0x3C)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7316));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7318));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7320));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7322));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7324));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7326));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7328));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7332));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7334));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7336));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7338));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7340));
    result = (*(*a1 + 112))(a1);
    if (result < 172)
    {
      *(a2 + 7344) = 0;
      *(a2 + 7346) = 0;
    }

    else
    {
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7344));
      return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7346));
    }
  }

  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  v5 = *(a2 + 8);
  BlueFin::GlDbgCodec::Rvw(a1, &v5);
  if (!*(a1 + 143))
  {
    *(a2 + 8) = v5;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 13));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 14));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 18));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 10));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 11));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 14));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 9));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 10));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 11));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 13));
}

{
  v4 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 4);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 66));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 67));
  if (v4 <= 0x43)
  {
    v5 = 32;
  }

  else
  {
    v5 = 63;
  }

  v7 = v5;
  BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 68), &v7);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 132);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 152));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 216));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 220));
  v7 = 5;
  return BlueFin::GlDbgCodec::RvwArray(a1, a2 + 224, &v7);
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 28));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 30));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 34));
}

{
  v98[5] = *MEMORY[0x29EDCA608];
  v4 = (*(*a1 + 112))(a1);
  v5 = (*(*a2 + 64))(a2);
  v7 = v5[1];
  v6 = v5[2];
  v83 = *v5;
  v84 = v7;
  v85 = v6;
  v98[0] = &v83;
  v98[1] = &v83 + 8;
  v98[2] = &v83 + 4;
  v98[3] = &v83 | 0xC;
  v98[4] = &v84;
  v96[0] = 0;
  v96[1] = 0;
  v97 = 0;
  v8 = (*(*a2 + 16))(a2);
  v9 = (*(*a2 + 264))(a2);
  MaxAllowedCnstls = BlueFin::GlMeRxParamLimits::GetMaxAllowedCnstls(v9);
  if (v8 < MaxAllowedCnstls)
  {
    MaxAllowedCnstls = v8;
  }

  v82 = MaxAllowedCnstls;
  v11 = (*(*a2 + 24))(a2);
  (*(*a2 + 264))(a2);
  if (v11 >= 6)
  {
    v12 = 6;
  }

  else
  {
    v12 = v11;
  }

  v81 = v12;
  v13 = (*(*a2 + 200))(a2);
  v80 = v13;
  v14 = (*(*a2 + 208))(a2);
  v79 = v14;
  v15 = (*(*a2 + 216))(a2);
  v78 = v15;
  if (v15 > 0x5A || v13 > 0x7E || v14 >= 0xA1)
  {
    v74 = "(ucNumGearIds <= MAX_GEAR_IDS) && (ucNumSrchParams <= MAX_SP_PARAMS) && (ucNumBinningStepParams <= MAX_BS_PARAMS)";
    DeviceFaultNotify("gldebug_codec.cpp", 4001, "Rvw", "(ucNumGearIds <= MAX_GEAR_IDS) && (ucNumSrchParams <= MAX_SP_PARAMS) && (ucNumBinningStepParams <= MAX_BS_PARAMS)");
    v75 = 4001;
    goto LABEL_135;
  }

  BlueFin::GlDbgCodec::Rvw(a1, &v82);
  BlueFin::GlDbgCodec::Rvw(a1, &v81);
  *v76 = *(*(*a2 + 32))(a2);
  BlueFin::GlDbgCodec::Rvw(a1, v76);
  v16 = (*(*a2 + 136))(a2);
  __dst[0] = *v16;
  v18 = *(v16 + 32);
  v17 = *(v16 + 48);
  v19 = *(v16 + 16);
  *&__dst[4] = *(v16 + 64);
  __dst[2] = v18;
  __dst[3] = v17;
  __dst[1] = v19;
  v20 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, __dst);
  BlueFin::GlDbgCodec::Rvw(a1, __dst + 4);
  BlueFin::GlDbgCodec::Rvw(a1, __dst + 5);
  BlueFin::GlDbgCodec::Rvw(a1, __dst + 6);
  LOBYTE(v88[0]) = BYTE8(__dst[0]);
  BlueFin::GlDbgCodec::Rvw(a1, v88);
  if (!*(a1 + 143))
  {
    DWORD2(__dst[0]) = LOBYTE(v88[0]);
  }

  LOBYTE(v88[0]) = BYTE12(__dst[0]);
  BlueFin::GlDbgCodec::Rvw(a1, v88);
  if (!*(a1 + 143))
  {
    HIDWORD(__dst[0]) = LOBYTE(v88[0]);
  }

  LOBYTE(v88[0]) = __dst[1];
  BlueFin::GlDbgCodec::Rvw(a1, v88);
  if (!*(a1 + 143))
  {
    LODWORD(__dst[1]) = LOBYTE(v88[0]);
  }

  LOBYTE(v88[0]) = BYTE4(__dst[1]);
  BlueFin::GlDbgCodec::Rvw(a1, v88);
  if (!*(a1 + 143))
  {
    DWORD1(__dst[1]) = LOBYTE(v88[0]);
  }

  BlueFin::GlDbgCodec::Rvw(a1, &__dst[1] + 4);
  BlueFin::GlDbgCodec::Rvw(a1, &__dst[1] + 10);
  BlueFin::GlDbgCodec::Rvw(a1, &__dst[1] + 3);
  LOBYTE(v88[0]) = __dst[2];
  BlueFin::GlDbgCodec::Rvw(a1, v88);
  if (!*(a1 + 143))
  {
    LODWORD(__dst[2]) = LOBYTE(v88[0]);
  }

  if (v20 <= 0x18)
  {
    v21 = (*(*a1 + 128))(a1);
    if ((*(*(v21 + 976) + 704))(v21 + 976) == 1)
    {
      BlueFin::GlMeSrdTrkCvecTapConfig::GlMeSrdTrkCvecTapConfig(v88, 4u, 1u);
      BlueFin::GlMeTrkCvecTapConfig::operator=(&__dst[2] + 4, v88);
      BYTE8(__dst[3]) = 0;
      goto LABEL_27;
    }

    v74 = "Proxy().Eng().GetEngineType() == GL_ENGINE_TYPE_SINGLE_ME";
    DeviceFaultNotify("gldebug_codec.cpp", 5194, "Rvw", "Proxy().Eng().GetEngineType() == GL_ENGINE_TYPE_SINGLE_ME");
    v75 = 5194;
LABEL_135:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", v75, v74);
  }

  BlueFin::GlDbgCodec::Rvw(a1, (&__dst[2] + 4));
  if (v20 - 117 <= 0x1C)
  {
    LOBYTE(v88[0]) = 0;
    BlueFin::GlDbgCodec::Rvw(a1, v88);
    BYTE8(__dst[3]) = LOBYTE(v88[0]) != 0;
LABEL_27:
    BYTE9(__dst[3]) = 0;
    goto LABEL_28;
  }

  BYTE8(__dst[3]) = 0;
  if (v20 <= 0x92)
  {
    goto LABEL_27;
  }

  LOBYTE(v88[0]) = *&__dst[4] != 0;
  BlueFin::GlDbgCodec::Rvw(a1, v88);
  BYTE9(__dst[3]) = LOBYTE(v88[0]) != 0;
  if (v20 >= 0xCA)
  {
    LOBYTE(v88[0]) = 0;
    BlueFin::GlDbgCodec::Rvw(a1, v88);
  }

LABEL_28:
  BlueFin::GlDbgCodec::Rvw(a1, &v80);
  BlueFin::GlDbgCodec::Rvw(a1, &v79);
  BlueFin::GlDbgCodec::Rvw(a1, &v78);
  (*(*a2 + 224))(a2);
  (*(*a2 + 232))(a2);
  if (v4 >= 0x2F)
  {
    BlueFin::GlDbgCodec::Rvw(a1, &v83);
    BlueFin::GlDbgCodec::Rvw(a1, &v83 + 1);
    BlueFin::GlDbgCodec::Rvw(a1, &v83 + 2);
    BlueFin::GlDbgCodec::Rvw(a1, (&v83 | 0xC));
    BlueFin::GlDbgCodec::Rvw(a1, &v84);
    BlueFin::GlDbgCodec::Rvw(a1, &v84 + 1);
    BlueFin::GlDbgCodec::Rvw(a1, &v84 + 2);
    BlueFin::GlDbgCodec::Rvw(a1, &v84 + 3);
    BlueFin::GlDbgCodec::Rvw(a1, &v85);
    BlueFin::GlDbgCodec::Rvw(a1, &v85 + 1);
    BlueFin::GlDbgCodec::Rvw(a1, &v85 + 2);
    if ((*(*a1 + 112))(a1) >= 0x5D)
    {
      BlueFin::GlDbgCodec::Rvw(a1, &v85 + 3);
    }
  }

  if (v82 >= 1)
  {
    v22 = 0;
    do
    {
      if (v4 <= 0x2E)
      {
        BlueFin::GlDbgCodec::Rvw(a1, v98[v22]);
      }

      v76[0] = (*(*a2 + 128))(a2, v22);
      BlueFin::GlDbgCodec::Rvw(a1, v76);
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      memset(v89, 0, sizeof(v89));
      memset(v88, 0, sizeof(v88));
      if (v76[0])
      {
        v23 = (*(*a2 + 152))(a2, v22);
        v24 = 0;
        v25 = *(v23 + 13);
        v88[0] = *v23;
        *(v88 + 13) = v25;
        do
        {
          *&v89[v24] = *(v23 + v24 + 32);
          v24 += 4;
        }

        while (v24 != 32);
        v26 = v23[5];
        v90 = v23[4];
        v91 = v26;
        v27 = v23[6];
        v28 = v23[7];
        v29 = v23[9];
        v94 = v23[8];
        v95 = v29;
        v92 = v27;
        v93 = v28;
      }

      BlueFin::GlDbgCodec::Rvw(a1, v88, v96);
      if (v81 >= 1)
      {
        v30 = 0;
        do
        {
          if (v76[0])
          {
            v31 = (*(*a2 + 120))(a2, v22, v30);
          }

          else
          {
            v31 = 0;
          }

          v86 = v31;
          v77 = 0;
          BlueFin::GlDbgCodec::Rvw(a1, &v86);
          if (v86)
          {
            v77 = (*(*a2 + 96))(a2, v22, v30);
            v32 = (*(*a2 + 192))(a2, v22, v30);
            v33 = *(v32 + 16);
            __dst[0] = *v32;
            __dst[1] = v33;
            v34 = *(v32 + 80);
            v36 = *(v32 + 32);
            v35 = *(v32 + 48);
            __dst[4] = *(v32 + 64);
            __dst[5] = v34;
            __dst[2] = v36;
            __dst[3] = v35;
            v38 = *(v32 + 112);
            v37 = *(v32 + 128);
            v39 = *(v32 + 96);
            LODWORD(__dst[9]) = *(v32 + 144);
            __dst[7] = v38;
            __dst[8] = v37;
            __dst[6] = v39;
            BlueFin::GlMeTrkCvecTapConfig::operator=(&__dst[9] + 4, v32 + 148);
            v40 = *(v32 + 168);
            v41 = *(v32 + 184);
            *(&__dst[12] + 1) = *(v32 + 200);
            *(&__dst[11] + 8) = v41;
            *(&__dst[10] + 8) = v40;
            BlueFin::GlDbgCodec::Rvw(a1, &v77);
            BlueFin::GlDbgCodec::Rvw(a1, __dst, v96);
          }

          v30 = (v30 + 1);
          v42 = v81;
          if (v81 >= 6)
          {
            v42 = 6;
          }
        }

        while (v30 < v42);
      }

      ++v22;
      v43 = v82;
      if (v82 >= 6)
      {
        v43 = 6;
      }
    }

    while (v22 < v43);
  }

  if (v4 < 0x30)
  {
    v81 = 6;
  }

  if (v78)
  {
    v44 = 0;
    do
    {
      LODWORD(v45) = (*(*a2 + 72))(a2, v44);
      LODWORD(v46) = (*(*a2 + 80))(a2, v44);
      LOBYTE(__dst[0]) = v45;
      BlueFin::GlDbgCodec::Rvw(a1, __dst);
      if (*(a1 + 143))
      {
        v45 = v45;
      }

      else
      {
        v45 = LOBYTE(__dst[0]);
      }

      LOBYTE(__dst[0]) = v46;
      BlueFin::GlDbgCodec::Rvw(a1, __dst);
      if (*(a1 + 143))
      {
        v46 = v46;
      }

      else
      {
        v46 = LOBYTE(__dst[0]);
      }

      if (v4 <= 0xA)
      {
        LOBYTE(__dst[0]) = 0;
        BlueFin::GlDbgCodec::Rvw(a1, __dst);
      }

      v86 = 0;
      memset(__dst, 0, 288);
      if ((*(*a2 + 120))(a2, v46, v45))
      {
        v86 = (*(*a2 + 112))(a2, v44);
        v47 = (*(*a2 + 184))(a2, v44);
        memcpy(__dst, v47, 0x120uLL);
      }

      BlueFin::GlDbgCodec::Rvw(a1, &v86);
      if (v4 <= 0xA)
      {
        BlueFin::GlDbgCodec::Rvw(a1, v76, v96);
        BlueFin::GlDbgCodec::Rvw(a1, v88, v96);
      }

      if ((*(*a1 + 112))(a1) <= 0xC)
      {
        LOBYTE(v88[0]) = 0;
        BlueFin::GlDbgCodec::Rvw(a1, v88);
      }

      BlueFin::GlDbgCodec::Rvw(a1, __dst);
      LOBYTE(v88[0]) = BYTE4(__dst[0]);
      BlueFin::GlDbgCodec::Rvw(a1, v88);
      if (!*(a1 + 143))
      {
        DWORD1(__dst[0]) = LOBYTE(v88[0]);
      }

      BlueFin::GlDbgCodec::Rvw(a1, __dst + 2);
      BlueFin::GlDbgCodec::Rvw(a1, __dst + 3);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[1]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[1] + 1);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[1] + 2);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[1] + 12);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[2]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[2] + 1);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[2] + 2);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[2] + 3);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[3]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[3] + 1);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[3] + 8);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[3] + 3);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[4]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[4] + 1);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[4] + 2);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[4] + 12);
      LOBYTE(v88[0]) = __dst[5];
      BlueFin::GlDbgCodec::Rvw(a1, v88);
      if (!*(a1 + 143))
      {
        LODWORD(__dst[5]) = LOBYTE(v88[0]);
      }

      BlueFin::GlDbgCodec::Rvw(a1, &__dst[5] + 4);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[5] + 2);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[5] + 3);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[6]);
      LODWORD(v88[0]) = 3;
      BlueFin::GlDbgCodec::Rvw(a1, v88);
      BlueFin::GlDbgCodec::checkArraySize(a1, v88, 3u);
      if (LODWORD(v88[0]))
      {
        v48 = 0;
        do
        {
          v76[0] = *(&__dst[6] + v48 + 1);
          BlueFin::GlDbgCodec::Rvw(a1, v76);
          if (!*(a1 + 143))
          {
            *(&__dst[6] + v48 + 1) = v76[0];
          }

          ++v48;
        }

        while (v48 < LODWORD(v88[0]));
      }

      BlueFin::GlDbgCodec::Rvw(a1, &__dst[7]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[7] + 4);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[7] + 2);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[7] + 12);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[8]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[8] + 1);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[8] + 2);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[8] + 3);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[9]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[9] + 1);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[9] + 2);
      LOBYTE(v88[0]) = BYTE12(__dst[9]);
      BlueFin::GlDbgCodec::Rvw(a1, v88);
      if (!*(a1 + 143))
      {
        HIDWORD(__dst[9]) = LOBYTE(v88[0]);
      }

      LODWORD(v88[0]) = 5;
      BlueFin::GlDbgCodec::Rvw(a1, v88);
      BlueFin::GlDbgCodec::checkArraySize(a1, v88, 5u);
      if (LODWORD(v88[0]))
      {
        v49 = 0;
        do
        {
          v76[0] = *(&__dst[10] + v49);
          BlueFin::GlDbgCodec::Rvw(a1, v76);
          if (!*(a1 + 143))
          {
            *(&__dst[10] + v49) = v76[0];
          }

          ++v49;
        }

        while (v49 < LODWORD(v88[0]));
      }

      BlueFin::GlDbgCodec::Rvw(a1, &__dst[11] + 1);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[11] + 8);
      v76[0] = BYTE12(__dst[11]);
      BlueFin::GlDbgCodec::Rvw(a1, v76);
      if (!*(a1 + 143))
      {
        HIDWORD(__dst[11]) = v76[0];
      }

      BlueFin::GlDbgCodec::Rvw(a1, &__dst[12]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[12] + 1);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[12] + 2);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[12] + 3);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[13]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[13] + 4);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[13] + 2);
      v76[0] = BYTE12(__dst[13]);
      BlueFin::GlDbgCodec::Rvw(a1, v76);
      if (!*(a1 + 143))
      {
        HIDWORD(__dst[13]) = v76[0];
      }

      BlueFin::GlDbgCodec::Rvw(a1, &__dst[14]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[14] + 1);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[14] + 8);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[14] + 3);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[15]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[15] + 1);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[15] + 8);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[15] + 3);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[16]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[16] + 1);
      LODWORD(v88[0]) = 3;
      BlueFin::GlDbgCodec::Rvw(a1, v88);
      BlueFin::GlDbgCodec::checkArraySize(a1, v88, 3u);
      if (LODWORD(v88[0]))
      {
        v50 = 0;
        v51 = &__dst[16] + 4;
        do
        {
          BlueFin::GlDbgCodec::Rvw(a1, v51);
          ++v50;
          ++v51;
        }

        while (v50 < LODWORD(v88[0]));
      }

      LOBYTE(__dst[17]) = 1;
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[17]);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[17] + 1);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[17] + 2);
      BlueFin::GlDbgCodec::Rvw(a1, &__dst[17] + 3);
      ++v44;
      v52 = v78;
      if (v78 >= 0x5Au)
      {
        v52 = 90;
      }
    }

    while (v44 < v52);
  }

  if (v4 >= 0xA)
  {
    v53 = v80;
  }

  else
  {
    v53 = 64;
  }

  if (v53)
  {
    for (i = 0; i != v53; ++i)
    {
      v55 = (*(*a2 + 240))(a2, i);
      v56 = *(v55 + 32);
      v57 = *(v55 + 16);
      __dst[0] = *v55;
      __dst[1] = v57;
      *&__dst[2] = v56;
      BlueFin::GlDbgCodec::Rvw(a1, __dst);
    }
  }

  if (v4 >= 0xA)
  {
    v58 = v79;
  }

  else
  {
    v58 = 98;
  }

  if (v58)
  {
    for (j = 0; j != v58; ++j)
    {
      if (v4 <= 0xA)
      {
        memset(__dst, 0, 40);
        BlueFin::GlDbgCodec::Rvw(a1, __dst);
      }

      v60 = (*(*a2 + 256))(a2, j);
      v61 = *(v60 + 4);
      LODWORD(__dst[0]) = *v60;
      WORD2(__dst[0]) = v61;
      v62 = (*(*a1 + 112))(a1);
      BlueFin::GlDbgCodec::Rvw(a1, __dst);
      BlueFin::GlDbgCodec::Rvw(a1, __dst + 1);
      BlueFin::GlDbgCodec::Rvw(a1, __dst + 2);
      BlueFin::GlDbgCodec::Rvw(a1, __dst + 3);
      BlueFin::GlDbgCodec::Rvw(a1, __dst + 4);
      BlueFin::GlDbgCodec::Rvw(a1, __dst + 5);
      if (v62 >= 0xCD)
      {
        LOBYTE(v88[0]) = 0;
        BlueFin::GlDbgCodec::Rvw(a1, v88);
      }
    }
  }

  result = (*(*a2 + 264))(a2);
  if (v4 > 0x10)
  {
    v64 = result;
    LOBYTE(__dst[0]) = result;
    result = BlueFin::GlDbgCodec::Rvw(a1, __dst);
    v65 = *(a1 + 143) ? v64 : LOBYTE(__dst[0]);
    if (v4 >= 0x93)
    {
      result = (*(*a2 + 136))(a2);
      if (*(result + 57) == 1)
      {
        if (v65 == 5 && *((*(*a2 + 136))(a2) + 64))
        {
          v66 = (*(*a2 + 136))(a2);
          memcpy(__dst, *(v66 + 64), 0x18CuLL);
        }

        if ((*(*a1 + 112))(a1) < 0x9D)
        {
          v71 = 0;
          v86 = 0;
          *v76 = 0;
          LODWORD(v88[0]) = 0;
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, &v86);
            v72 = v71++ >= 3;
          }

          while (!v72);
          BlueFin::GlDbgCodec::Rvw(a1, v88);
          v73 = 0;
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v88);
            BlueFin::GlDbgCodec::Rvw(a1, v88);
            BlueFin::GlDbgCodec::Rvw(a1, v88);
            BlueFin::GlDbgCodec::Rvw(a1, v76);
            BlueFin::GlDbgCodec::Rvw(a1, v76);
            BlueFin::GlDbgCodec::Rvw(a1, &v86);
            BlueFin::GlDbgCodec::Rvw(a1, &v86);
            BlueFin::GlDbgCodec::Rvw(a1, v76);
            BlueFin::GlDbgCodec::Rvw(a1, v88);
            BlueFin::GlDbgCodec::Rvw(a1, v88);
            BlueFin::GlDbgCodec::Rvw(a1, v76);
            BlueFin::GlDbgCodec::Rvw(a1, v76);
            BlueFin::GlDbgCodec::Rvw(a1, v76);
            result = BlueFin::GlDbgCodec::Rvw(a1, v76);
            v72 = v73++ >= 0xF;
          }

          while (!v72);
        }

        else
        {
          v67 = __dst;
          v68 = 8;
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v67++);
            --v68;
          }

          while (v68);
          BlueFin::GlDbgCodec::Rvw(a1, __dst + 2);
          v69 = &__dst[1] + 3;
          v70 = 32;
          do
          {
            BlueFin::GlDbgCodec::Rvw(a1, v69 - 5);
            BlueFin::GlDbgCodec::Rvw(a1, v69 - 4);
            BlueFin::GlDbgCodec::Rvw(a1, (v69 - 3));
            BlueFin::GlDbgCodec::Rvw(a1, v69 - 1);
            result = BlueFin::GlDbgCodec::Rvw(a1, v69);
            v69 += 6;
            --v70;
          }

          while (v70);
        }
      }
    }
  }

  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 3));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 22));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 26));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 28));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 29));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 30));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 18));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 10));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 23));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 14));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 22));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 10));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  result = (*(*a1 + 112))(a1);
  v5 = result;
  if (result >= 0xAC)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 18));
    goto LABEL_4;
  }

  *(a2 + 16) = 0;
  if (result >= 0x91)
  {
LABEL_4:
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 28));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 36));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
    if (v5 <= 0x99)
    {
      *(a2 + 44) = 0;
    }

    else
    {
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 44));
    }

    goto LABEL_8;
  }

  *(a2 + 28) = 0;
  *(a2 + 20) = 0;
  *(a2 + 44) = 0;
  *(a2 + 36) = 0;
  if (result <= 0x62)
  {
    *(a2 + 56) = 0;
    *(a2 + 48) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 80) = 0;
    *(a2 + 104) = 0;
    goto LABEL_15;
  }

LABEL_8:
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 50));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 52));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 54));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 56));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 80));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 92));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 84));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 96));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 100));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 104));
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 88));
  if (v5 <= 0x63)
  {
LABEL_15:
    *(a2 + 8) = 0;
    *(a2 + 109) = 0;
    goto LABEL_16;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 110));
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 109));
  if (v5 <= 0x7F)
  {
LABEL_16:
    *(a2 + 108) = -1;
    goto LABEL_17;
  }

  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 108));
  if (v5 < 0x94)
  {
LABEL_17:
    *(a2 + 68) = 0;
    *(a2 + 60) = 0;
    *(a2 + 76) = 0;
LABEL_18:
    *(a2 + 112) = 0;
    return result;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 60));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 62));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 66));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 68));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 70));
  if (v5 <= 0xB8)
  {
    v7 = 0;
    BlueFin::GlDbgCodec::Rvw(a1, &v7);
    *(a2 + 72) = v7;
    result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 76));
    if (v5 == 184)
    {
      return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 112));
    }

    goto LABEL_18;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 72));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 76));
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 112));
  if (v5 >= 0xCF)
  {
    v6 = 0;
    BlueFin::GlDbgCodec::Rvw(a1, &v6);
    v6 = 0;
    BlueFin::GlDbgCodec::Rvw(a1, &v6);
    v6 = 0;
    return BlueFin::GlDbgCodec::Rvw(a1, &v6);
  }

  return result;
}

{
  v29 = *MEMORY[0x29EDCA608];
  v4 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 108));
  v25 = 14;
  BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 116), &v25);
  if (v4 >= 0x17)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 188));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 192));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 196));
    if (v4 >= 0x31)
    {
      v5 = a2 + 4;
      *v27 = 8;
      BlueFin::GlDbgCodec::Rvw(a1, v27);
      if (*(a1 + 143) == 2)
      {
        v6 = 0;
        *v28 = 0;
        do
        {
          if (v6 != 4)
          {
            v28[v6] = *(v5 + BlueFin::GlImplGnss::m_aucImplGnssTable[v6]);
          }

          ++v6;
        }

        while (v6 != 8);
        for (i = 0; i != 8; ++i)
        {
          BlueFin::GlDbgCodec::Rvw(a1, &v28[i]);
        }
      }

      else
      {
        *v28 = 0;
        if (*v27 >= 8u)
        {
          v8 = 8;
        }

        else
        {
          v8 = *v27;
        }

        if (*v27)
        {
          v9 = 0;
          do
          {
            if (*(a1 + 143) == 1 && v9 != 4 && v9 != 8)
            {
              v28[v9] = *(v5 + BlueFin::GlImplGnss::m_aucImplGnssTable[v9]);
            }

            BlueFin::GlDbgCodec::Rvw(a1, &v28[v9++]);
          }

          while (v8 != v9);
          while (v8 < *v27)
          {
            v26 = 0;
            BlueFin::GlDbgCodec::Rvw(a1, &v26);
            LODWORD(v8) = v8 + 1;
          }
        }

        for (j = 0; j != 7; ++j)
        {
          *(v5 + j) = v28[BlueFin::GlImplGnss::m_aucEnabledGnssTable[j]];
        }
      }

      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 112));
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 172));
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 176));
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 180));
      if (v4 < 0x61)
      {
        if (!*(a1 + 143))
        {
          *(a2 + 184) = 0;
        }

        if (v4 < 0x3E)
        {
          goto LABEL_40;
        }
      }

      else
      {
        BlueFin::GlDbgCodec::Rvw(a1, (a2 + 184));
      }

      v28[0] = *(a2 + 200);
      BlueFin::GlDbgCodec::Rvw(a1, v28);
      if (!*(a1 + 143))
      {
        *(a2 + 200) = v28[0];
      }

      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 204));
      if (v4 - 96 <= 0x1C)
      {
        v13 = (a2 + 208);
        v28[0] = (**(a2 + 208) & 2) != 0;
        BlueFin::GlDbgCodec::Rvw(a1, v28);
        if (v28[0])
        {
          v14 = **v13 | 2;
          **v13 = v14;
        }

        else
        {
          BlueFin::GlSetBase::Remove(a2 + 208, 1);
          v14 = **v13;
        }

        v27[0] = (v14 & 4) != 0;
        BlueFin::GlDbgCodec::Rvw(a1, v27);
        if (v27[0])
        {
          v16 = *v13;
          goto LABEL_46;
        }

        v17 = a2 + 208;
        goto LABEL_52;
      }
    }
  }

LABEL_40:
  if (BlueFin::GlMeSrdAsicConfig::IsFeatureSupported(1, *(a2 + 188)))
  {
    **(a2 + 208) |= 2u;
  }

  else
  {
    BlueFin::GlSetBase::Remove(a2 + 208, 1);
  }

  v15 = (*(a2 + 188) & 0xF000FFFE) - 805306382;
  if (v15 <= 6 && ((1 << v15) & 0x55) != 0)
  {
    v16 = *(a2 + 208);
LABEL_46:
    *v16 |= 4u;
    goto LABEL_53;
  }

  v17 = a2 + 208;
LABEL_52:
  BlueFin::GlSetBase::Remove(v17, 2);
LABEL_53:
  if (v4 == 124)
  {
    v28[0] = (**(a2 + 208) & 8) != 0;
    BlueFin::GlDbgCodec::Rvw(a1, v28);
    if (v28[0])
    {
      **(a2 + 208) |= 8u;
    }

    else
    {
      BlueFin::GlSetBase::Remove(a2 + 208, 3);
    }

LABEL_64:
    for (k = 4; k != 13; ++k)
    {
      result = BlueFin::GlMeSrdAsicConfig::IsFeatureSupported(k, *(a2 + 188));
      if (result)
      {
        **(a2 + 208) |= 1 << k;
      }

      else
      {
        result = BlueFin::GlSetBase::Remove(a2 + 208, k);
      }
    }

    return result;
  }

  v18 = *(a2 + 188);
  v19 = (v18 & 0xF000FFFE) - 805306382;
  if (v19 <= 6 && ((1 << v19) & 0x55) != 0)
  {
    v20 = (a2 + 208);
LABEL_59:
    **v20 |= 8u;
    goto LABEL_60;
  }

  v20 = (a2 + 208);
  if ((v18 & 0xF0FFFFFE) == 0x3001000E)
  {
    goto LABEL_59;
  }

  BlueFin::GlSetBase::Remove(a2 + 208, 3);
LABEL_60:
  if (v4 <= 0x7C)
  {
    goto LABEL_64;
  }

  v27[0] = *(v20 + 8) & 0x3F;
  *v28 = 0;
  result = BlueFin::GlDbgCodec::Rvw(a1, v27);
  if (*(a1 + 143))
  {
    v22 = v27[0];
  }

  else
  {
    v22 = *(v20 + 8) & 0x3F;
    if (v22 != v27[0])
    {
      DeviceFaultNotify("gldebug_codec.cpp", 7084, "Rvw", "(rValue.GetMaxByteSize() >> 2) == ucWords");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 7084, "(rValue.GetMaxByteSize() >> 2) == ucWords");
    }
  }

  if (v22)
  {
    v24 = 0;
    do
    {
      *v28 = BlueFin::GlSetBase::GetULong(v20, v24);
      result = BlueFin::GlDbgCodec::Rvw(a1, v28);
      if (!*(a1 + 143))
      {
        result = BlueFin::GlSetBase::SetULong(v20, v24, *v28);
      }

      ++v24;
    }

    while (v24 < v27[0]);
  }

  return result;
}

{
  v4 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 1));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 3));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 7));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 10));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 11));
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  if (v4 >= 0xE)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 5));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 9));
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
    result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 17));
    if (v4 >= 0x19)
    {
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 18));
      result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 19));
      if (v4 >= 0x1E)
      {

        return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
      }
    }
  }

  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 28));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 36));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 44));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 52));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 56));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 60));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 68));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 72));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 76));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 80));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 84));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 88));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 92));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 96));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 100));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 104));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 108));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 112));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 116));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 120));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 124));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 128));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 132));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 136));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 36));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  if (*(a2 + 8) > 0x7Fu)
  {
    DeviceFaultNotify("gldebug_codec.cpp", 7070, "Rvw", "rValue.wlanScan.size < GL_WLAN_AP_INFO_SIZE");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 7070, "rValue.wlanScan.size < GL_WLAN_AP_INFO_SIZE");
  }

  if (*(a2 + 8))
  {
    v5 = 0;
    v6 = (a2 + 25);
    do
    {
      BlueFin::GlDbgCodec::Rvw(a1, (v6 - 9));
      BlueFin::GlDbgCodec::Rvw(a1, v6 - 1);
      result = BlueFin::GlDbgCodec::Rvw(a1, v6);
      ++v5;
      v6 += 16;
    }

    while (v5 < *(a2 + 8));
  }

  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 28));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 36));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 44));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 52));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 56));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 60));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 68));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 72));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 76));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 1));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 10));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 14));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));

  return BlueFin::GlDbgCodec::RvwArray(a1, a2 + 20, (a2 + 16));
}

{
  v4 = (*(*a1 + 112))(a1);
  LOBYTE(v7) = *a2;
  BlueFin::GlDbgCodec::Rvw(a1, &v7);
  if (!*(a1 + 143))
  {
    *a2 = v7;
  }

  LOBYTE(v7) = *(a2 + 4);
  BlueFin::GlDbgCodec::Rvw(a1, &v7);
  if (!*(a1 + 143))
  {
    *(a2 + 4) = v7;
  }

  LOBYTE(v7) = *(a2 + 8);
  BlueFin::GlDbgCodec::Rvw(a1, &v7);
  if (!*(a1 + 143))
  {
    *(a2 + 8) = v7;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 14));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 56));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 72));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 80));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 88));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 92));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 96));
  LOBYTE(v7) = *(a2 + 100);
  BlueFin::GlDbgCodec::Rvw(a1, &v7);
  if (!*(a1 + 143))
  {
    *(a2 + 100) = v7;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 104));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 112));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 120));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 128));
  if (v4 <= 0xB)
  {
    v8 = 0;
    v7 = 0;
    BlueFin::GlDbgCodec::Rvw(a1, &v8);
    BlueFin::GlDbgCodec::Rvw(a1, &v7);
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 200));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 204));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 208));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 216));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 224));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 232));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 276));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 280));
  if (v4 >= 0xC)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 152));
    if (v4 > 0x47)
    {
      v5 = 11;
    }

    else
    {
      v5 = 6;
    }

    v7 = v5;
    BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 156), &v7);
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 288));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 296));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 304));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 308));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 312));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 316));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 318));
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 320));
  if (v4 <= 0xA3)
  {
    return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 321));
  }

  return result;
}

{
  v4 = (*(*a1 + 112))(a1);
  v19 = 0;
  if (v4 < 0xAF)
  {
    v19 = 1;
  }

  else
  {
    v5 = *(a1 + 143);
    if (v5 == 1)
    {
      *(a1 + 143) = 0;
    }

    BlueFin::GlDbgCodec::Rvw(a1, &v19);
    *(a1 + 143) = v5;
  }

  result = BlueFin::GlDbgCodec::Rvw(a1, a2);
  if (v19)
  {
    v18 = v4;
    if (*a2)
    {
      v7 = 0;
      while (1)
      {
        v8 = a2 + 8 + 368 * v7;
        v9 = (*(*a1 + 112))(a1);
        if (v9 < 0x49)
        {
          break;
        }

        v22 = *v8;
        BlueFin::GlDbgCodec::Rvw(a1, &v22);
        if (!*(a1 + 143))
        {
          *v8 = v22;
        }

        BlueFin::GlDbgCodec::Rvw(a1, (v8 + 4));
        if (v9 < 0x4F)
        {
          goto LABEL_15;
        }

        BlueFin::GlDbgCodec::Rvw(a1, (v8 + 5));
LABEL_16:
        v23 = *(v8 + 8);
        BlueFin::GlDbgCodec::Rvw(a1, &v23);
        if (!*(a1 + 143))
        {
          *(v8 + 8) = v23;
        }

        v10 = 368 * v7;
        v11 = 4;
        v12 = a2 + 216 + v10;
        do
        {
          BlueFin::GlDbgCodec::Rvw(a1, (a2 + v10 + 24));
          BlueFin::GlDbgCodec::Rvw(a1, (a2 + v10 + 32));
          BlueFin::GlDbgCodec::Rvw(a1, (a2 + v10 + 40));
          BlueFin::GlDbgCodec::Rvw(a1, (a2 + v10 + 48));
          v10 += 32;
          --v11;
        }

        while (v11);
        BlueFin::GlDbgCodec::Rvw(a1, (v8 + 144));
        BlueFin::GlDbgCodec::Rvw(a1, (v8 + 152));
        BlueFin::GlDbgCodec::Rvw(a1, (v8 + 160));
        BlueFin::GlDbgCodec::Rvw(a1, (v8 + 168));
        BlueFin::GlDbgCodec::Rvw(a1, (v8 + 172));
        v24 = *(v8 + 176);
        BlueFin::GlDbgCodec::Rvw(a1, &v24);
        if (!*(a1 + 143))
        {
          *(v8 + 176) = v24;
        }

        v25 = *(v8 + 180);
        BlueFin::GlDbgCodec::Rvw(a1, &v25);
        if (!*(a1 + 143))
        {
          *(v8 + 180) = v25;
        }

        v26 = *(v8 + 184);
        BlueFin::GlDbgCodec::Rvw(a1, &v26);
        if (!*(a1 + 143))
        {
          *(v8 + 184) = v26;
        }

        v27 = *(v8 + 188);
        BlueFin::GlDbgCodec::Rvw(a1, &v27);
        if (!*(a1 + 143))
        {
          *(v8 + 188) = v27;
        }

        v28 = *(v8 + 192);
        BlueFin::GlDbgCodec::Rvw(a1, &v28);
        if (!*(a1 + 143))
        {
          *(v8 + 192) = v28;
        }

        if (v9 <= 0x9D)
        {
          *(v8 + 196) = 0;
          *(v8 + 200) = 0;
        }

        else
        {
          BlueFin::GlDbgCodec::Rvw(a1, (v8 + 196));
          v29 = *(v8 + 200);
          BlueFin::GlDbgCodec::Rvw(a1, &v29);
          if (!*(a1 + 143))
          {
            *(v8 + 200) = v29;
          }
        }

        result = BlueFin::GlDbgCodec::Rvw(a1, (v8 + 204));
        if (*(v8 + 204))
        {
          v13 = 0;
          do
          {
            v30 = *v12;
            BlueFin::GlDbgCodec::Rvw(a1, &v30);
            if (!*(a1 + 143))
            {
              *v12 = v30;
            }

            BlueFin::GlDbgCodec::Rvw(a1, (v12 + 16));
            BlueFin::GlDbgCodec::Rvw(a1, (v12 + 24));
            BlueFin::GlDbgCodec::Rvw(a1, (v12 + 32));
            result = (*(*a1 + 112))(a1);
            if (result < 0x90)
            {
              *(v12 + 4) = 1;
            }

            else
            {
              result = BlueFin::GlDbgCodec::Rvw(a1, (v12 + 4));
            }

            ++v13;
            v12 += 40;
          }

          while (v13 < *(v8 + 204));
        }

        if (*a2 <= ++v7)
        {
          goto LABEL_43;
        }
      }

      v21 = 0;
      BlueFin::GlDbgCodec::Rvw(a1, &v21);
      *v8 = v21;
      BlueFin::GlDbgCodec::Rvw(a1, (v8 + 4));
LABEL_15:
      *(v8 + 5) = -8;
      goto LABEL_16;
    }

LABEL_43:
    if (v18 <= 0x8F)
    {
      *(a2 + 55208) = -1;
      *(a2 + 55216) = 0u;
      *(a2 + 55232) = 0u;
      *(a2 + 55248) = 0u;
    }

    else
    {
      v20 = *(a2 + 55208);
      BlueFin::GlDbgCodec::Rvw(a1, &v20);
      if (!*(a1 + 143))
      {
        *(a2 + 55208) = v20;
      }

      v14 = (a2 + 55216);
      v15 = 4;
      do
      {
        BlueFin::GlDbgCodec::Rvw(a1, v14++);
        --v15;
      }

      while (v15);
      v16 = (a2 + 55248);
      v17 = 4;
      do
      {
        result = BlueFin::GlDbgCodec::Rvw(a1, v16++);
        --v17;
      }

      while (v17);
      if (v18 >= 0x96)
      {
        return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 55264));
      }
    }

    *(a2 + 55264) = 0;
  }

  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 5));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  if (*(a2 + 12))
  {
    v5 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, (*(a2 + 16) + v5++));
    }

    while (*(a2 + 12) > v5);
  }

  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 56));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 72));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 1));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 3));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 5));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 56));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 10));
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  if (*(a2 + 12))
  {
    v5 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, (*(a2 + 16) + v5++));
    }

    while (*(a2 + 12) > v5);
  }

  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  v5 = *(a2 + 4);
  result = BlueFin::GlDbgCodec::Rvw(a1, &v5);
  if (!*(a1 + 143))
  {
    *(a2 + 4) = v5;
  }

  return result;
}

{
  v4 = (*(*a1 + 112))(a1);
  v6 = 0;
  if (v4 > 0xB)
  {
    if (v4 > 0x12)
    {
      v6 = 3;
      BlueFin::GlDbgCodec::RvwArray(a1, a2, &v6);
      v6 = 3;
      BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 40), &v6);
      v6 = 3;
      BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 80), &v6);
      goto LABEL_7;
    }

    v6 = 2;
    BlueFin::GlDbgCodec::RvwArray(a1, a2, &v6);
    v6 = 2;
    BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 40), &v6);
  }

  else
  {
    BlueFin::GlDbgCodec::Rvw(a1, a2);
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 80));
LABEL_7:
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 120));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 124));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 132));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 128));
  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 135));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 5));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
}

{
  v4 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 10));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 13));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
  if (v4 < 0xCE)
  {
    if (v4 >= 0x13)
    {
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
      goto LABEL_7;
    }

    v8 = *(a2 + 24);
    BlueFin::GlDbgCodec::Rvw(a1, &v8);
    v5 = v8;
  }

  else
  {
    v9 = *(a2 + 24);
    BlueFin::GlDbgCodec::Rvw(a1, &v9);
    v5 = v9;
  }

  *(a2 + 24) = v5;
LABEL_7:
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 26));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 28));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 36));
  if (v4 >= 0xD0)
  {
    v7 = 0;
    return BlueFin::GlDbgCodec::Rvw(a1, &v7);
  }

  return result;
}

{
  v4 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 1));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  if (v4 >= 0x30)
  {
    BlueFin::GlDbgCodec::Rvw(a1, (a2 + 3));
  }

  v6 = *(a2 + 4);
  BlueFin::GlDbgCodec::Rvw(a1, &v6);
  if (!*(a1 + 143))
  {
    *(a2 + 4) = v6;
  }

  v7 = *(a2 + 8);
  BlueFin::GlDbgCodec::Rvw(a1, &v7);
  if (!*(a1 + 143))
  {
    *(a2 + 8) = v7;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 16);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 152));
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 180));
  if (v4 >= 0x1D)
  {
    result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 182));
    if (v4 >= 0x26)
    {
      BlueFin::GlDbgCodec::Rvw(a1, (a2 + 184));
      result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 185));
      if (v4 >= 0x42)
      {
        BlueFin::GlDbgCodec::Rvw(a1, (a2 + 186));
        BlueFin::GlDbgCodec::Rvw(a1, (a2 + 187));
        BlueFin::GlDbgCodec::Rvw(a1, (a2 + 188));
        BlueFin::GlDbgCodec::Rvw(a1, (a2 + 189));
        BlueFin::GlDbgCodec::Rvw(a1, (a2 + 190));
        result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 191));
        if (v4 >= 0xA9)
        {
          BlueFin::GlDbgCodec::Rvw(a1, (a2 + 192));
          result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 193));
          if (v4 >= 0xB2)
          {
            result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 194));
            if (v4 >= 0xC4)
            {
              return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 195));
            }
          }
        }
      }
    }
  }

  return result;
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 56));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 56));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 72));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 80));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 88));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 96));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 104));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 112));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 120));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 128));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 136));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 144));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 152));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 160));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 162));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 164));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 168));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 176));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 184));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 192));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 200));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 208));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 216));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 224));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 232));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 6));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 56));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));
  result = (*(*a1 + 112))(a1);
  if (result >= 0x40)
  {

    return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 72));
  }

  return result;
}

{
  v4 = (*(*a1 + 112))(a1);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 56));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 72));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 80));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 88));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 120));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 128));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 144));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 152));
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 160));
  if (v4 >= 0x5C)
  {
    result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 168));
    if (v4 >= 0x6E)
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 11));
      if (v4 >= 0x8A)
      {
        BlueFin::GlDbgCodec::Rvw(a1, (a2 + 96));
        BlueFin::GlDbgCodec::Rvw(a1, (a2 + 104));
        result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 112));
        if (v4 >= 0x8F)
        {
          v6 = *(a2 + 216);
          BlueFin::GlDbgCodec::Rvw(a1, &v6);
          if (!*(a1 + 143))
          {
            *(a2 + 216) = v6;
          }

          return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 220));
        }
      }
    }
  }

  return result;
}

{
  v5 = *a2;
  BlueFin::GlDbgCodec::Rvw(a1, &v5);
  if (!*(a1 + 143))
  {
    *a2 = v5;
  }

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 2));
  v5 = *(a2 + 8);
  BlueFin::GlDbgCodec::Rvw(a1, &v5);
  if (!*(a1 + 143))
  {
    *(a2 + 8) = v5;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 32));
  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 40));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  v5 = *(a2 + 4);
  BlueFin::GlDbgCodec::Rvw(a1, &v5);
  if (!*(a1 + 143))
  {
    *(a2 + 4) = v5;
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
}

{
  v5 = *a2;
  BlueFin::GlDbgCodec::Rvw(a1, &v5);
  if (!*(a1 + 143))
  {
    *a2 = v5;
    *(a2 + 4) = -78;
  }

  return BlueFin::GlDbgCodec::RvwArray(a1, a2 + 8, (a2 + 4));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 1));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
}

{
  v4 = (*(*a1 + 112))(a1);
  v15 = *a2;
  BlueFin::GlDbgCodec::Rvw(a1, &v15);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  LOBYTE(v14) = 1;
  LODWORD(v13) = 0;
  BlueFin::GlDbgCodec::Rvw(a1, &v14);
  if (*(a1 + 143))
  {
    v5 = 1;
  }

  else
  {
    v5 = LOBYTE(v14) == 1;
  }

  if (!v5)
  {
    DeviceFaultNotify("gldebug_codec.cpp", 7097, "Rvw", "(rValue.GetMaxByteSize() >> 2) == ucWords");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", 7097, "(rValue.GetMaxByteSize() >> 2) == ucWords");
  }

  if (LOBYTE(v14))
  {
    v6 = 0;
    do
    {
      LODWORD(v13) = *(a2 + 12);
      BlueFin::GlDbgCodec::Rvw(a1, &v13);
      if (!*(a1 + 143))
      {
        *(a2 + 12) = LODWORD(v13);
      }

      ++v6;
    }

    while (v6 < LOBYTE(v14));
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 48));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 52));
  v14 = -200.0;
  if (v4 <= 0x1E)
  {
    BlueFin::GlDbgCodec::Rvw(a1, &v14);
  }

  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 64));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 56));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 72));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 80));
  v13 = *(a2 + 96);
  BlueFin::GlDbgCodec::Rvw(a1, &v13);
  v7 = v13;
  *(a2 + 96) = v7;
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 88));
  v13 = *(a2 + 100);
  BlueFin::GlDbgCodec::Rvw(a1, &v13);
  v8 = v13;
  *(a2 + 100) = v8;
  v13 = *(a2 + 104);
  BlueFin::GlDbgCodec::Rvw(a1, &v13);
  v9 = v13;
  *(a2 + 104) = v9;
  v13 = *(a2 + 108);
  BlueFin::GlDbgCodec::Rvw(a1, &v13);
  v10 = v13;
  *(a2 + 108) = v10;
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 112));
  v12 = 0;
  BlueFin::GlDbgCodec::Rvw(a1, &v12);
  result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 116));
  if (v4 >= 0x79)
  {
    result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 120));
  }

  if (v14 > -200.0 && (*(a2 + 13) & 0x40) == 0)
  {
    *(a2 + 116) = v14 + 174.0;
  }

  if (v4 >= 0x1B)
  {
    result = BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));
    if (v4 >= 0x7E)
    {
      return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 28));
    }
  }

  return result;
}

{
  v5 = *a2;
  BlueFin::GlDbgCodec::Rvw(a1, &v5);
  if (!*(a1 + 143))
  {
    *a2 = v5;
    *(a2 + 4) = 1;
  }

  return BlueFin::GlDbgCodec::RvwArray(a1, (a2 + 8), (a2 + 4));
}

{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 4));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 8));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 12));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 16));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 20));
  BlueFin::GlDbgCodec::Rvw(a1, (a2 + 24));

  return BlueFin::GlDbgCodec::Rvw(a1, (a2 + 28));
}

uint64_t gnss::FireGnssDevice::setAssistanceGyro(uint64_t a1, float32x2_t **a2, uint64_t a3)
{
  v4 = FireMessageHandler::setAssistanceGyro(*(a1 + 40), a2);

  return std::function<void ()(gnss::Result)>::operator()(a3, v4);
}

uint64_t BlueFin::GlDbgCodec::Write(BlueFin::GlDbgCodec *a1, uint64_t a2)
{
  result = (*(*a1 + 120))(a1);
  if (result)
  {
    *(a1 + 143) = 2;
    v5 = *(a2 + 8);

    return BlueFin::GlDbgCodec::RvwArray(a1, v5, a2);
  }

  return result;
}

uint64_t BlueFin::SensorsDownsampleFilt::Update(BlueFin::SensorsDownsampleFilt *this, uint64_t a2)
{
  v4 = *(a2 + 12);
  if (*(this + 832) != 1)
  {
    *(this + 212) = v4;
    *(this + 211) = v4;
    *(this + 213) = 1;
    v6 = *(this + 214);
LABEL_13:
    v10 = (4.0 / v6) * 3.14159265;
    v11 = tanf(v10) / 3.14159265;
    v12 = 1.0 / (v11 * 3.14159265);
    v13 = v12 * v12;
    v14 = v12 * -1.4142;
    v15 = (v13 - v14) + 1.0;
    *(this + 223) = v15;
    *(this + 224) = (v13 * -2.0) + 2.0;
    v16 = (v13 + v14) + 1.0;
    *(this + 225) = v16;
    v17 = (1.0 - v16) / v15;
    v18 = (this + 876);
    v19 = 3;
    v20 = a2;
    do
    {
      *(v18 - 4) = (1.0 - (1.0 / v15)) * *v20;
      v21 = *v20++;
      *v18++ = v17 * v21;
      --v19;
    }

    while (v19);
    goto LABEL_15;
  }

  v5 = *(this + 213);
  v6 = (v5 * 1000.0) / (v4 - *(this + 211));
  *(this + 213) = v5 + 1;
  if (((v5 + 1) & 7) == 1)
  {
    v7 = vcvts_n_f32_u32(v4 - *(this + 212), 3uLL);
    *(this + 212) = v4;
    v8 = ((v6 * v7) / 1000.0) + -1.0;
    if (v8 < 0.0)
    {
      v8 = -v8;
    }

    if (v7 == 0.0 || v8 > 0.2)
    {
      *(this + 211) = v4;
      *(this + 213) = 1;
      goto LABEL_15;
    }
  }

  if (v5 + 1 >= 0x81)
  {
    *(this + 211) = v4;
    *(this + 213) = 1;
    v9 = (v6 / *(this + 214)) + -1.0;
    if (v9 < 0.0)
    {
      v9 = -v9;
    }

    if (v9 > 0.1)
    {
      *(this + 214) = v6;
      goto LABEL_13;
    }
  }

LABEL_15:
  for (i = 0; i != 12; i += 4)
  {
    v23 = *(a2 + i);
    v24 = *(this + 223);
    v25 = (this + i);
    v26 = (v23 / v24) + *(this + i + 860);
    *(&v41 + i) = v26;
    v25[215] = *(this + i + 876) + (((v23 * 2.0) - (v26 * *(this + 224))) / v24);
    v25[219] = (*(a2 + i) - (v26 * *(this + 225))) / *(this + 223);
  }

  HIDWORD(v41) = v4;
  BlueFin::SensorsDownsampleFilt::Flush(this);
  v27 = *(a2 + 12);
  v28 = *(this + 209);
  v29 = v27 - v28;
  if (v27 < v28 && v28 - v27 >= 0x80000001)
  {
    *(this + 840) = 1;
  }

  v30 = 2 * v27;
  if (*(this + 832))
  {
    v31 = *(this + 103);
    *(this + 209) = v27;
    if (v29 < -50 || v30 - v31 >= 250)
    {
      result = 0;
      *(this + 209) = 0;
      *(this + 103) = 0;
      *(this + 832) = 0;
      *(this + 840) = 0;
      *(this + 50) = 0u;
      *(this + 204) = 0;
      return result;
    }

    if (v30 - v31 >= 50)
    {
      v32 = *(this + 201);
      if (v32)
      {
        v33 = (*(this + 101) / v32) >> 1;
        v34 = *(this + 200);
        *(this + 4 * v34 + 3) = v33;
      }

      else
      {
        LODWORD(v34) = *(this + 200);
      }

      *(this + 101) = 0;
      *(this + 840) = 0;
      *(this + 103) = v31 + 100;
      *(this + 100) = (v34 + 1);
    }
  }

  else
  {
    *(this + 103) = 100 * (((v30 + 50) * 0x28F5C28F5C28F5DuLL) >> 64);
    *(this + 832) = 1;
    *(this + 209) = v27;
  }

  v35 = *(this + 200);
  if (v35 < 0x32)
  {
    v37 = *(this + 201);
    *(this + 201) = v37 + 1;
    v38 = *(this + 101) + v30;
    *(this + 101) = v38;
    if (*(this + 840) == 1)
    {
      *(this + 101) = v38 + 0x200000000;
    }

    if (v37 == -1)
    {
      DeviceFaultNotify("glpe_sensors_data.cpp", 216, "Update", "rawCnt != 0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_sensors_data.cpp", 216, "rawCnt != 0");
    }

    v39 = (this + 16 * v35);
    if (v37)
    {
      for (j = 0; j != 12; j += 4)
      {
        *(v39 + j) = *(v39 + j) + ((*(&v41 + j) - *(v39 + j)) / (v37 + 1));
      }
    }

    else
    {
      *v39 = v41;
    }

    return 1;
  }

  else
  {
    result = 0;
    *(this + 200) = 50;
  }

  return result;
}

uint64_t BlueFin::GlPeSensorsMgr::Update(uint64_t result, __int16 *a2)
{
  if (!result)
  {
    DeviceFaultNotify("glpe_sensmgr.cpp", 280, "Update", "GetSensorsConfig()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_sensmgr.cpp", 280, "GetSensorsConfig()");
  }

  if (*a2 >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = result + 24;
    v6 = result + 296;
    v7 = result + 2264;
    v8 = (*(a2 + 1) + 8);
    do
    {
      v9 = v8[-1].i32[0];
      if (v9 <= 2)
      {
        if (v9)
        {
          if (v9 == 1)
          {
            if ((*(v3 + 1) & 1) != 0 || *(v3 + 2) == 1)
            {
              result = (*(*v5 + 32))(v5, v8[-1].u32[1], v8->f32[0], v8->f32[1], v8[1].f32[0]);
            }

            ++*(v3 + 2396);
          }

          else if (v9 == 2)
          {
            if ((*(v3 + 1) & 1) != 0 || *(v3 + 2) == 1)
            {
              result = (*(*v5 + 40))(v5, v8[-1].u32[1], v8->f32[0], v8->f32[1], v8[1].f32[0]);
            }

            if (*(v3 + 7) == 1)
            {
              v10 = vneg_f32(*v8);
              *&v11 = -v8[1].f32[0];
              HIDWORD(v11) = v8[-1].i32[1];
              result = (*(*(v3 + 296) + 32))(v6, &v10);
              ++*(v3 + 2388);
            }
          }
        }

        else
        {
          if ((*(v3 + 1) & 1) != 0 || *(v3 + 2) == 1)
          {
            result = (*(*v5 + 24))(v5, v8[-1].u32[1], v8->f32[0], v8->f32[1], v8[1].f32[0]);
          }

          if (*(v3 + 7) == 1)
          {
            v10 = *v8;
            LODWORD(v11) = v8[1].i32[0];
            HIDWORD(v11) = v8[-1].i32[1];
            result = (*(*(v3 + 296) + 24))(v6, &v10);
            ++*(v3 + 2384);
          }
        }
      }

      else if (v9 > 4)
      {
        if (v9 == 5)
        {
          ++*(v3 + 2404);
        }

        else if (v9 == 10)
        {
          result = (*(*v7 + 16))(v7, v8[-1].u32[1], v8->f32[0], v8->f32[1], v8[1].f32[0]);
        }
      }

      else if (v9 == 3)
      {
        if ((*(v3 + 1) & 1) != 0 || *(v3 + 2) == 1)
        {
          result = (*(*v5 + 16))(v5, v8[-1].u32[1], v8->f32[0]);
        }

        ++*(v3 + 2408);
      }

      else
      {
        if (*(v3 + 8) == 1)
        {
          result = (*(*v6 + 48))(v6, v8[-1].u32[1], v8->f32[0]);
        }

        ++*(v3 + 2400);
      }

      ++v4;
      v8 = (v8 + 20);
    }

    while (v4 < *a2);
  }

  v10 = &unk_2A1F17BB0;
  v11 = a2;
  if (BlueFin::GlUtils::m_pInstance)
  {
    if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      return BlueFin::GlPeSensorsData::SerializeImpl(&v10, 0);
    }
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, __int16 *a2)
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

char *BlueFin::GlDbgCodec::Write(BlueFin::GlDbgCodec *this, __int16 *a2)
{
  result = (*(*this + 120))(this);
  if (result)
  {

    return BlueFin::GlDbgCodec::Write(this, a2);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::RvwArray(BlueFin::GlDbgCodec *a1, uint64_t a2, __int16 *a3)
{
  v6 = *a3;
  BlueFin::GlDbgCodec::Rvw(a1, a3);
  result = BlueFin::GlDbgCodec::checkArraySize(a1, a3, v6);
  if (*a3 >= 1)
  {
    v8 = 0;
    do
    {
      result = BlueFin::GlDbgCodec::Rvw(a1, a2);
      ++v8;
      a2 += 20;
    }

    while (v8 < *a3);
  }

  return result;
}

uint64_t BlueFin::GlDbgCodec::checkArraySize(uint64_t this, unsigned __int16 *a2, int a3)
{
  v3 = *(this + 584);
  if (v3)
  {
    if (v3 == 1)
    {
      if (*a2 > a3)
      {
        v4 = "rssActualLength <= ssMaxLength";
        DeviceFaultNotify("gldebug_codec.cpp", 784, "checkArraySize", "rssActualLength <= ssMaxLength");
        v5 = 784;
LABEL_8:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "gldebug_codec.cpp", v5, v4);
      }
    }

    else if (v3 == 2 && *a2 != a3)
    {
      v4 = "rssActualLength == ssMaxLength";
      DeviceFaultNotify("gldebug_codec.cpp", 783, "checkArraySize", "rssActualLength == ssMaxLength");
      v5 = 783;
      goto LABEL_8;
    }
  }

  else if (*a2 > a3)
  {
    *a2 = a3;
  }

  return this;
}

void BlueFin::GlDbgCodecBase::External(BlueFin::GlDbgCodecBase *this, unsigned __int8 *a2, float a3)
{
  v15 = 0;
  v5 = fabsf(a3);
  v6 = vcvts_n_s32_f32(frexpf(v5, &v15), 0x18uLL);
  if (v15 <= -126)
  {
    v7 = -127;
  }

  else
  {
    v7 = v15 - 1;
  }

  if (v15 <= -126)
  {
    v8 = v6 >> (-125 - v15);
  }

  else
  {
    v8 = v6;
  }

  v9 = v6 == 0;
  if (v6)
  {
    v10 = v7;
  }

  else
  {
    v10 = -127;
  }

  if (v9)
  {
    v8 = 0;
  }

  if (v5 <= 3.4028e38)
  {
    v11 = v10;
  }

  else
  {
    v11 = 128;
  }

  if (v5 <= 3.4028e38)
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  v13 = ((v11 << 23) + 1065353216) | __const__ZN7BlueFin14GlDbgCodecBase8ExternalEPhf_ulSigns[a3 >= 0.0];
  v14 = v13 | v12 & 0x7FFFFF;
  *(a2 + 1) = bswap32(v14) >> 16;
  a2[1] = BYTE2(v14);
  *a2 = HIBYTE(v13);
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, unsigned int *a2)
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

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *this, float *a2)
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

{
  v4 = 3;
  v5 = a2;
  do
  {
    BlueFin::GlDbgCodec::Rvw(this, v5++);
    --v4;
  }

  while (v4);
  v6 = a2 + 3;
  v7 = 4;
  do
  {
    result = BlueFin::GlDbgCodec::Rvw(this, v6);
    v6 = (v6 + 1);
    --v7;
  }

  while (v7);
  return result;
}

uint64_t BlueFin::GlDbgCodec::Rvw(BlueFin::GlDbgCodec *a1, float *a2)
{
  BlueFin::GlDbgCodec::Rvw(a1, a2);
  BlueFin::GlDbgCodec::Rvw(a1, a2 + 1);

  return BlueFin::GlDbgCodec::Rvw(a1, a2 + 2);
}

void std::deque<BlueFin::GlSensRawData>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xCC;
  v3 = v1 - 204;
  if (!v2)
  {
    v5 = a1[3];
    v6 = v5 - *a1;
    if (a1[2] - a1[1] < v6)
    {
      operator new();
    }

    v7 = v6 >> 2;
    if (v5 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<FireMessageHandler::GLRefPositionExtended *>>(v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<FireMessageHandler::GLRefPositionExtended *>::emplace_back<FireMessageHandler::GLRefPositionExtended *&>(a1, &v9);
}

void sub_2988A6804(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t BlueFin::SensorsData::addacc(uint64_t result, float *a2)
{
  if (fabsf(*a2) < 100.0 && fabsf(a2[1]) < 100.0 && fabsf(a2[2]) < 100.0)
  {
    v2 = result;
    result = BlueFin::SensorsDownsampleFilt::Update((result + 8), a2);
    if ((result & 1) == 0)
    {
      result = (*(*v2 + 232))(v2);
      v2[206] = v2[202];
      v2[432] = v2[428];
    }
  }

  return result;
}

uint64_t BlueFin::GlStream::GetBits(BlueFin::GlStream *this, unsigned int a2)
{
  v2 = *this;
  v3 = *(this + 6);
  v4 = *(this + 4);
  if (*this + ((a2 + v3 + 7) >> 3) > v4)
  {
    v11 = "m_uiOffset+((m_uiBitOffset+ulNumBits+7)/8)<=m_uiMaxOffset";
    DeviceFaultNotify("glutl_stream.cpp", 314, "GetBits", "m_uiOffset+((m_uiBitOffset+ulNumBits+7)/8)<=m_uiMaxOffset");
    v12 = 314;
    goto LABEL_15;
  }

  if (a2 > 0x20)
  {
    v11 = "ulNumBits <= 32";
    DeviceFaultNotify("glutl_stream.cpp", 315, "GetBits", "ulNumBits <= 32");
    v12 = 315;
    goto LABEL_15;
  }

  v5 = 0;
  if (a2)
  {
    v6 = 0;
    while (1)
    {
      if (v2 >= v4)
      {
        v11 = "m_uiOffset < m_uiMaxOffset";
        DeviceFaultNotify("glutl_stream.cpp", 331, "GetBits", "m_uiOffset < m_uiMaxOffset");
        v12 = 331;
        goto LABEL_15;
      }

      v7 = 8 - v3;
      if (8 - v3 >= a2)
      {
        v7 = a2;
      }

      v8 = *(*(this + 1) + v2);
      v9 = v7 + v3;
      *(this + 6) = v7 + v3;
      if (v7 + v3 >= 9)
      {
        break;
      }

      if (v9 == 8)
      {
        v9 = 0;
        *(this + 6) = 0;
        *this = ++v2;
      }

      v5 = (((v8 >> v3) & ~(-1 << v7)) << v6) | v5;
      v6 += v7;
      v3 = v9;
      a2 -= v7;
      if (!a2)
      {
        return v5;
      }
    }

    v11 = "m_uiBitOffset <= 8";
    DeviceFaultNotify("glutl_stream.cpp", 340, "GetBits", "m_uiBitOffset <= 8");
    v12 = 340;
LABEL_15:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_stream.cpp", v12, v11);
  }

  return v5;
}

uint64_t BlueFin::GlMeSrdSatRptRpcBuffer::CheckInstanceId(uint64_t this, int a2)
{
  if (*(this + 8))
  {
    if (*(this + 12) != a2)
    {
      DeviceFaultNotify("glmesrd_sat_report_rpc_buffer.cpp", 130, "CheckInstanceId", "m_ucSatId == ucInstanceId");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_rpc_buffer.cpp", 130, "m_ucSatId == ucInstanceId");
    }
  }

  else
  {
    *(this + 12) = a2;
  }

  return this;
}

uint64_t BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_TrkMsmt(BlueFin::MinnowGllRpcParserImp *this, BlueFin::GlStream *a2)
{
  U08 = BlueFin::GlStream::GetU08(a2);
  v5 = BlueFin::GlStream::GetU08(a2);
  v6 = BlueFin::GlStream::GetU08(a2);
  v126 = 0;
  v7 = v5 & 0xE;
  v8 = v6 & 1;
  memset(v125, 0, sizeof(v125));
  v124 = 0u;
  v123 = 0u;
  v122 = 0u;
  v121 = 0u;
  v120 = 0u;
  v119 = 0u;
  v118 = 0u;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v113 = 0;
  memset(v112, 0, sizeof(v112));
  v110 = 0u;
  v111 = 0u;
  memset(v109, 0, 308);
  v108 = 0;
  v107 = 0;
  v106 = 0;
  memset(v105, 0, sizeof(v105));
  memset(v104, 0, sizeof(v104));
  v103 = 0;
  v101 = 0u;
  v102 = 0u;
  v9 = v5 & 0xF1 | (4 * (v6 & 1)) | (2 * v6) & 8;
  S16 = 0;
  U16 = BlueFin::GlStream::GetU16(a2);
  v117 = ((U16 << 16) & 0xFFE00000) >> U16;
  v99 = v6;
  if (v6)
  {
    *&v118 = 0;
    WORD2(v126) = BlueFin::GlStream::GetU16(a2);
    v116 = 0;
    v115 = 0;
    v113 = 0;
    v114 = 0;
    v110 = 0u;
    v111 = 0u;
    S16 = BlueFin::GlStream::GetS16(a2);
    p_S16 = &S16;
  }

  else
  {
    v11 = BlueFin::GlStream::GetU16(a2);
    v12 = BlueFin::GlStream::GetU16(a2);
    v13.i32[0] = v11 & 0xFFFF7FFF;
    v13.i32[1] = v12 & 0xFFFF7FFF;
    v14 = vshl_u32((*&vshl_n_s32(v13, 0x10uLL) & 0xFFE0FFFFFFE0FFFFLL), vneg_s32(vand_s8(v13, 0x1F0000001FLL)));
    *&v118 = vshl_n_s32(vbsl_s8(vcltz_s32(vshr_n_s32(vshl_n_s32(__PAIR64__(v12, v11), 0x10uLL), 0x10uLL)), vneg_s32(v14), v14), 8uLL);
    WORD2(v126) = BlueFin::GlStream::GetU16(a2);
    v15 = (*(**(*(this + 1) + 17032) + 824))();
    v16 = BlueFin::GlStream::GetU16(a2);
    v17 = v16 << 16;
    if (v15 < 0x85)
    {
      v17 = (v17 & 0x7FE00000) >> v16;
      if (v16 < 0)
      {
        v17 = -v17;
      }
    }

    LODWORD(v115) = v17;
    v18 = BlueFin::GlStream::GetU16(a2);
    if ((v18 & 0x8000u) == 0)
    {
      v19 = ((v18 << 16) & 0x7FE00000u) >> v18;
    }

    else
    {
      v19 = -(((v18 << 16) & 0x7FE00000u) >> v18);
    }

    HIDWORD(v115) = v19;
    v20 = BlueFin::GlStream::GetU16(a2);
    LODWORD(v116) = ((v20 << 16) & 0xFFE00000) >> v20;
    v21 = (*(**(*(this + 1) + 17032) + 824))();
    v22 = BlueFin::GlStream::GetU16(a2);
    v23 = v22 << 16;
    if (v21 < 0x85)
    {
      v23 = (v23 & 0x7FE00000) >> v22;
      if (v22 < 0)
      {
        v23 = -v23;
      }
    }

    LODWORD(v113) = v23;
    v24 = BlueFin::GlStream::GetU16(a2);
    if ((v24 & 0x8000u) == 0)
    {
      v25 = ((v24 << 16) & 0x7FE00000u) >> v24;
    }

    else
    {
      v25 = -(((v24 << 16) & 0x7FE00000u) >> v24);
    }

    HIDWORD(v113) = v25;
    LOWORD(v114) = BlueFin::GlStream::GetBits(a2, 0xAu);
    BYTE2(v114) = BlueFin::GlStream::GetBits(a2, 1u);
    BYTE4(v116) = BlueFin::GlStream::GetBits(a2, 1u);
    HIBYTE(v114) = BlueFin::GlStream::GetBits(a2, 3u);
    BlueFin::GlStream::GetBits(a2, 1u);
    for (i = 0; i != 32; i += 4)
    {
      v27 = BlueFin::GlStream::GetU16(a2);
      *(&v110 + i) = ((v27 << 16) & 0xFFE00000) >> v27;
    }

    p_S16 = 0;
  }

  for (j = 0; j != 32; j += 4)
  {
    v29 = BlueFin::GlStream::GetU16(a2);
    *&v112[j] = ((v29 << 16) & 0xFFE00000) >> v29;
  }

  LOBYTE(v109[0]) = (v6 & 2) != 0;
  if ((v6 & 2) != 0)
  {
    v97 = v6 & 1;
    if ((*(**(*(this + 1) + 17032) + 824))(*(*(this + 1) + 17032)) > 0x85)
    {
      v34 = BlueFin::GlStream::CarpGetBits(a2, 3u, 0x20u) & 7;
      v35 = v34 & 0xFFFFFF07 | (8 * (BlueFin::GlStream::CarpGetBits(a2, 5u, 0x20u) & 0x1F));
      v36 = v35 & 0xFFFFE0FF | ((BlueFin::GlStream::CarpGetBits(a2, 5u, 0x20u) & 0x1F) << 8);
      Bits = BlueFin::GlStream::CarpGetBits(a2, 5u, 0x20u);
      v38 = v36 & 0xFF001FFF | ((Bits & 0x1F) << 13) & 0xFF03FFFF | ((BlueFin::GlStream::CarpGetBits(a2, 6u, 0x20u) & 0x3F) << 18);
      v39 = BlueFin::GlStream::CarpGetBits(a2, 7u, 0x20u);
      v32 = (BlueFin::GlStream::CarpGetBits(a2, 1u, 0x20u) << 31) | ((v39 & 0x7F) << 24) | v38;
      v109[1] = v32;
      if ((Bits & 0x10) != 0)
      {
        v91 = "mpf.settings.bits.points <= MAX_MPF_TAPS";
        DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1328, "Handle_SatRpt_TrkMsmt", "mpf.settings.bits.points <= MAX_MPF_TAPS");
        v92 = 1328;
LABEL_76:
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_decoder_minnow.cpp", v92, v91);
      }
    }

    else
    {
      v31 = 0;
      v32 = -1805320152;
      v109[1] = -1805320152;
      do
      {
        BlueFin::GlStream::GetS32(a2);
      }

      while (v31++ < 4);
    }

    v94 = v9;
    v40 = v7;
    v41 = this;
    v42 = U08;
    v43 = 0;
    v44 = (v32 >> 13) & 0xF;
    v45 = ((v32 >> 7) & 0x3E) + 10;
    v46 = &v109[2];
    do
    {
      v47 = v46;
      v48 = v44;
      if (v44)
      {
        do
        {
          v49 = BlueFin::GlStream::GetU16(a2);
          *v47++ = ((v49 << 16) & 0xFFE00000) >> v49 >> v45;
          --v48;
        }

        while (v48);
      }

      ++v43;
      v46 += 15;
    }

    while (v43 != 5);
    v30 = v109;
    U08 = v42;
    this = v41;
    v7 = v40;
    v9 = v94;
    v8 = v97;
  }

  else
  {
    v30 = 0;
  }

  if (v7 == 2)
  {
    LOWORD(v103) = BlueFin::GlStream::GetU16(a2);
    v50 = BlueFin::GlStream::GetU16(a2);
  }

  else
  {
    LOWORD(v103) = BlueFin::GlStream::GetU08(a2);
    v50 = BlueFin::GlStream::GetU08(a2);
  }

  HIWORD(v103) = v50;
  v51 = v9;
  if ((v9 & 0x10) == 0)
  {
    v52 = 0;
    goto LABEL_57;
  }

  if ((0x5055u >> v7))
  {
    LODWORD(v53) = byte_298A336EA[v7];
  }

  else if (v7 == 8)
  {
    LODWORD(v53) = 25;
  }

  else
  {
    LODWORD(v53) = 0;
  }

  LOBYTE(v105[0]) = v53;
  v54 = BlueFin::GlStream::GetBits(a2, 0xFu);
  WORD1(v105[0]) = v54 & 0x7FFF | (BlueFin::GlStream::GetBits(a2, 1u) << 15);
  if (v7 != 8 && (v7 != 6 || !(*(**(*(this + 1) + 17032) + 664))(*(*(this + 1) + 17032))))
  {
    if (v53)
    {
      v96 = U08;
      v70 = this;
      v71 = v30;
      v53 = v53;
      v72 = 4;
      do
      {
        v73 = BlueFin::GlStream::GetU16(a2);
        v52 = v105;
        *(v105 + v72) = ((v73 << 16) & 0xFFE00000) >> v73;
        v72 += 4;
        --v53;
      }

      while (v53);
      v30 = v71;
      this = v70;
      U08 = v96;
      goto LABEL_57;
    }

LABEL_56:
    v52 = v105;
    goto LABEL_57;
  }

  BYTE8(v118) = v53;
  if (!v53)
  {
    goto LABEL_56;
  }

  v93 = v30;
  v95 = U08;
  v55 = v125;
  v56 = 4;
  __asm { FMOV            V9.2S, #16.0 }

  v53 = v53;
  do
  {
    v61 = BlueFin::GlStream::GetU16(a2);
    v62 = BlueFin::GlStream::GetU16(a2);
    v63.i32[0] = v61 & 0xFFFF7FFF;
    v63.i32[1] = v62 & 0xFFFF7FFF;
    v64 = vshl_u32((*&vshl_n_s32(v63, 0x10uLL) & 0xFFE0FFFFFFE0FFFFLL), vneg_s32(vand_s8(v63, 0x1F0000001FLL)));
    *v65.i8 = vneg_s32(v64);
    v66 = vbsl_s8(vcltz_s32(vshr_n_s32(vshl_n_s32(__PAIR64__(v62, v61), 0x10uLL), 0x10uLL)), *v65.i8, v64);
    *v67.i8 = vmul_f32(vcvt_f32_s32(v66), _D9);
    *v67.i8 = vmul_f32(*v67.i8, *v67.i8);
    *v67.i32 = sqrtf(vaddv_f32(*v67.i8));
    *v65.i32 = *v67.i32 - (truncf(*v67.i32 * 2.3283e-10) * 4295000000.0);
    v68.i64[0] = 0x8000000080000000;
    v68.i64[1] = 0x8000000080000000;
    LODWORD(v69) = vbslq_s8(v68, v65, v67).u32[0];
    if (*v67.i32 > 4295000000.0)
    {
      *v67.i32 = v69;
    }

    v52 = v105;
    *v55 = v66.i32[1];
    *(v55 - 25) = v66.i32[0];
    *(v105 + v56) = *v67.i32;
    v56 += 4;
    ++v55;
    --v53;
  }

  while (v53);
  U08 = v95;
  v30 = v93;
LABEL_57:
  v108 = 0;
  v107 = 0;
  if ((v99 & 8) != 0)
  {
    LOBYTE(v107) = 1;
    v74 = BlueFin::GlStream::GetU08(a2);
    BYTE1(v107) = v74 & 0xF;
    BYTE2(v107) = v74 >> 4;
    v108 = BlueFin::GlStream::GetU16(a2);
  }

  if ((v9 & 0x20) != 0)
  {
    LOBYTE(v101) = BlueFin::GlStream::GetU08(a2);
    if (v8)
    {
      v89 = 0;
      *(&v101 + 1) = 0;
      DWORD1(v101) = 0;
      DWORD1(v102) = 0;
    }

    else
    {
      v80 = v9;
      v81 = BlueFin::GlStream::GetU16(a2);
      v82 = __PAIR64__(BlueFin::GlStream::GetU16(a2), v81);
      v9 = v80;
      v83 = vshr_n_s32(vshl_n_s32(v82, 0x10uLL), 0x10uLL);
      v84 = vshl_u32((*&vshl_n_s32((*&v82 & 0xFFFF7FFFFFFF7FFFLL), 0x10uLL) & 0xFFE0FFFFFFE0FFFFLL), vneg_s32(vand_s8((*&v82 & 0xFFFF7FFFFFFF7FFFLL), 0x1F0000001FLL)));
      *(&v101 + 4) = vbsl_s8(vcltz_s32(v83), vneg_s32(v84), v84);
      v85 = BlueFin::GlStream::GetU16(a2);
      if ((v85 & 0x8000u) == 0)
      {
        v86 = ((v85 << 16) & 0x7FE00000u) >> v85;
      }

      else
      {
        v86 = -(((v85 << 16) & 0x7FE00000u) >> v85);
      }

      HIDWORD(v101) = v86;
      v87 = BlueFin::GlStream::GetU16(a2);
      DWORD1(v102) = ((v87 << 16) & 0xFFE00000) >> v87;
      v88 = BlueFin::GlStream::GetU16(a2);
      v89 = ((v88 << 16) & 0xFFE00000) >> v88;
    }

    DWORD2(v102) = v89;
    BYTE12(v102) = BlueFin::GlStream::GetU08(a2);
    BYTE13(v102) = BlueFin::GlStream::GetU08(a2);
    BYTE14(v102) = BlueFin::GlStream::GetU08(a2);
    v75 = &v101;
    if ((v51 & 0x40) != 0)
    {
      goto LABEL_61;
    }

LABEL_71:
    v79 = 0;
    goto LABEL_72;
  }

  v75 = 0;
  if ((v9 & 0x40) == 0)
  {
    goto LABEL_71;
  }

LABEL_61:
  v76 = U08;
  v77 = v9;
  for (k = 0; k != 32; k += 4)
  {
    v79 = v104;
    *(v104 + k) = BlueFin::GlStream::GetS32(a2);
    *(&v104[2] + k) = BlueFin::GlStream::GetS32(a2);
  }

  v9 = v77;
  U08 = v76;
LABEL_72:
  if (BlueFin::GlStream::GetAvailableSize(a2))
  {
    v91 = "otStream.GetAvailableSize() == 0";
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 1471, "Handle_SatRpt_TrkMsmt", "otStream.GetAvailableSize() == 0");
    v92 = 1471;
    goto LABEL_76;
  }

  return (*(**(*(this + 1) + 17072) + 56))(*(*(this + 1) + 17072), U08, v7, v9, &v117, &v115, &v113, p_S16, v112, &v110, &v103, v30, v52, &v107, v79, v75);
}

BOOL BlueFin::GlMeSrdSatReportMgr::CheckForTrackReset(BlueFin::GlMeSrdSatReportMgr *this, const BlueFin::GlSatCarrId *a2, const BlueFin::GlSignalId *a3)
{
  v6 = *(this + 122);
  if ((v6 & 0x20000) != 0 || (*(this + 122) & 0x12) == 0x12)
  {
    if (BlueFin::GlBigArray::Missing(*(this + 456), *a2 + 100 * *(a2 + 4)))
    {
      return 1;
    }

    v8 = *(this + 456);
    if (*a2 + 100 * *(a2 + 4) - *(v8 + 28) >= *(v8 + 30))
    {
LABEL_22:
      v14 = "handle - m_usMinHandle < m_usNumHandles";
      DeviceFaultNotify("glinc_array.h", 313, "EnsureValidHandle", "handle - m_usMinHandle < m_usNumHandles");
      v15 = 313;
      goto LABEL_24;
    }

    v9 = *(*(v8 + 8) + 2 * (*a2 + 100 * *(a2 + 4) - *(v8 + 28)));
    if (*(v8 + 32) <= v9)
    {
LABEL_23:
      v14 = "slot < m_usNumSlots";
      DeviceFaultNotify("glinc_array.h", 319, "EnsureValidSlot", "slot < m_usNumSlots");
      v15 = 319;
LABEL_24:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glinc_array.h", v15, v14);
    }

    result = *(*v8 + *(v8 + 24) * v9 + 500) != *a3;
    v6 = *(this + 122);
  }

  else
  {
    result = 0;
  }

  if (~v6 & 0x12) != 0 || (result)
  {
    return result;
  }

  if (BlueFin::GlBigArray::Missing(*(this + 456), *a2 + 100 * *(a2 + 4)))
  {
    return 0;
  }

  v10 = *(this + 456);
  if (*a2 + 100 * *(a2 + 4) - *(v10 + 28) >= *(v10 + 30))
  {
    goto LABEL_22;
  }

  v11 = *(*(v10 + 8) + 2 * (*a2 + 100 * *(a2 + 4) - *(v10 + 28)));
  if (v11 != 0xFFFF)
  {
    if (*(v10 + 32) > v11)
    {
      v12 = (*v10 + *(v10 + 24) * v11);
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_19:
  v13 = *(this + 14);

  return BlueFin::GlMeSrdSatReport::HasTrackReset(v12, (this + 480), a3, v13);
}

BOOL BlueFin::GlMeSrdSatReport::HasTrackReset(BlueFin::GlMeSrdSatReport *this, const BlueFin::GlMeSrdSatRptRpcBuffer *a2, const BlueFin::GlSignalId *a3, int a4)
{
  if ((~*(a2 + 2) & 0x12) != 0)
  {
    DeviceFaultNotify("glmesrd_sat_report.cpp", 116, "HasTrackReset", "rRpcBuffer.HaveTrkMsmt()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report.cpp", 116, "rRpcBuffer.HaveTrkMsmt()");
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = **(this + 1);
  v14[0] = a2;
  v14[1] = this + 24;
  v14[2] = v7;
  v15 = a4;
  v16 = a3;
  v8 = 255;
  v9 = -1;
  v10 = 255;
  do
  {
    if (v10 == 255)
    {
      v11 = *(a2 + v6 + 25);
    }

    else
    {
      v11 = v8;
    }

    if (v10 == 255)
    {
      v12 = *(a2 + v6 + 25);
    }

    else
    {
      v12 = v10;
    }

    if (*(a2 + v6 + 25) != 255)
    {
      v8 = v11;
      v9 = *(a2 + v6 + 25);
      v4 = v5 + 1;
      v10 = v12;
      ++v5;
    }

    ++v6;
  }

  while (v6 != 5);
  v19 = v4;
  v18 = v9;
  v17 = v8;
  return BlueFin::GlMeSrdSatRptTrkMsmtMIBase::IsTrackReset(v14);
}

BOOL BlueFin::GlMeSrdSatRptTrkMsmtMIBase::IsTrackReset(BlueFin::GlMeSrdSatRptTrkMsmtMIBase *this)
{
  if (!**(this + 1))
  {
    return 0;
  }

  v2 = (*(**(this + 2) + 168))(*(this + 2), *(this + 41));
  EpochCntInBits = BlueFin::GlMeSrdSatRptTrkMsmtMIBase::GetEpochCntInBits(this);
  v4 = *(*(this + 1) + 4);
  *v5.i64 = BlueFin::GlMeSrdAsicUnitConverter::EswUtStructToFinalUserTimeMs((*this + 36), *(this + 4), *(this + 6));
  *v7.i64 = *v5.i64 + trunc(*v5.i64 * 2.32830644e-10) * -4294967300.0;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = vnegq_f64(v8);
  *&v10 = vbslq_s8(v9, v7, v5).u64[0];
  if (*v5.i64 > 4294967300.0)
  {
    *v5.i64 = v10;
  }

  if (*v5.i64 < -4294967300.0)
  {
    *v6.i64 = -*v5.i64;
    *v5.i64 = -(*v5.i64 - trunc(*v5.i64 * -2.32830644e-10) * -4294967300.0);
    *v5.i64 = -*vbslq_s8(v9, v5, v6).i64;
  }

  if (*v5.i64 < 0.0)
  {
    v11 = --*v5.i64;
  }

  else
  {
    v11 = *v5.i64;
  }

  v12 = **(this + 1);
  v13 = *(this + 4);
  EpochPerSymbol = BlueFin::GlSignalId::GetEpochPerSymbol(v13);
  if (*(v13 + 4) >= 0x23Fu)
  {
    v25 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v26 = 679;
    goto LABEL_29;
  }

  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v13 + 1) - *(v13 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*v13]])
  {
    v25 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v26 = 686;
LABEL_29:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v26, v25);
  }

  v15 = (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(v13 + 1) - *(v13 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*v13]] * EpochPerSymbol) * 0.001;
  v16 = *(this + 4);
  v17 = *v16;
  if ((v17 - 76) <= 0x3Eu && (*(*this + 24) & 0xF) == 0 && (v17 + 122) >= 5u && (v17 - 76) >= 5u)
  {
    v15 = 0.001;
  }

  if (BlueFin::GlMeSrdSatRptTrkMsmtMIBase::GetEpochCntInBits(this) < *(*(this + 1) + 4))
  {
    return 1;
  }

  v19 = EpochCntInBits - v4;
  v20 = (v11 - v12) * 0.001;
  v21 = 0.02;
  if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v16 + 1) - *(v16 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[v17]] != 1)
  {
    v21 = v15;
  }

  v22 = v20 - v19 * v21;
  v23 = -(v20 + -v19 * v21);
  if (v22 >= 0.0)
  {
    v23 = v22;
  }

  return v23 > (*(v2 + 44) * 5.0);
}

uint64_t BlueFin::GlMeSrdSatRptTrkMsmtMIBase::GetEpochCntInBits(BlueFin::GlMeSrdSatRptTrkMsmtMIBase *this)
{
  v2 = *this;
  if ((*(*this + 8) & 4) != 0)
  {
    result = *(v2 + 96);
    if (*(v2 + 100))
    {
      v4 = *(*(this + 1) + 4);
      v5 = (v4 & 0xFFFF8000) + result;
      if (v5 >= v4)
      {
        result = v5;
      }

      else
      {
        result = v5 + 0x8000;
      }
    }
  }

  else
  {
    result = 0;
  }

  if ((*(v2 + 24) & 0xF) == 2)
  {
    v6 = *(this + 4);
    v7 = *v6;
    if ((v7 - 139) > 0x23)
    {
      if ((v7 - 81) > 0x34)
      {
        if ((v7 - 52) <= 0xD)
        {
          v8 = *(*(this + 1) + 4);
          v9 = floor(vcvtd_n_f64_u32(result - v8, 1uLL));
          return (v8 + (v9 + v9));
        }
      }

      else if (*(v6 + 1) == 2)
      {
        return (100 * result);
      }

      else
      {
        return result;
      }
    }

    else if ((*(v6 + 1) - 1) >= 2)
    {
      return result;
    }

    else
    {
      return (100 * result);
    }
  }

  return result;
}

double BlueFin::GlMeSrdAsicUnitConverter::EswUtStructToFinalUserTimeMs(unsigned __int16 *a1, unsigned __int8 *a2, int a3)
{
  Lms16ToLms32 = BlueFin::GlMeSrdAsicUnitConverter::GetLms16ToLms32(*a1, a3);
  if (*(a2 + 4) >= 0x23Fu)
  {
    v13 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 807, "GetChipsPerSec", "IsValid()");
    v14 = "glsignalid.h";
    v15 = 807;
    goto LABEL_11;
  }

  v6 = BlueFin::GlSvId::s_aucSvId2gnss[*a2];
  v7 = *(a2 + 1);
  v8 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v7 + v6];
  v9 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v7 - v7 + v6];
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v13 = "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 815, "GetChipsPerSec", "ulChipsPerEpoch != 0 && ulMsPerEpoch != 0");
    v14 = "glsignalid.h";
    v15 = 815;
    goto LABEL_11;
  }

  v11 = 1000 * v8 / v9 * BlueFin::GlMeSrdAsicUnitConverter::ucSubChipResolution;
  if (!v11)
  {
    v13 = "ulTwentiethPerS != 0";
    DeviceFaultNotify("glmesrd_asic_unit_converter.cpp", 341, "EswUtStructToFinalUserTimeMs", "ulTwentiethPerS != 0");
    v14 = "glmesrd_asic_unit_converter.cpp";
    v15 = 341;
LABEL_11:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v14, v15, v13);
  }

  return (1000 * a1[1]) / v11 + Lms16ToLms32;
}

uint64_t BlueFin::GlMeSrdSatReportMgr::GetSatRptSniffStatePtr(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = *(a2 + 1);
  v4 = a3 + 4;
  if (v3 != *(a3 + 1))
  {
    v12 = "otSatCarrId.GetSignalIndex() == otSignalId.GetSignalIndex()";
    DeviceFaultNotify("glmesrd_sat_report_mgr_sniff.cpp", 37, "GetSatRptSniffStatePtr", "otSatCarrId.GetSignalIndex() == otSignalId.GetSignalIndex()");
    v13 = 37;
    goto LABEL_27;
  }

  if (v3)
  {
    return 0;
  }

  v8 = *a2;
  v9 = ~*(a1 + 488) & 0x10002;
  v10 = (*(**(a1 + 3656) + 40))(*(a1 + 3656), v8);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    result = (*(**(a1 + 3656) + 16))(*(a1 + 3656), v8);
    if (result)
    {
      (*(**(a1 + 3656) + 32))(*(a1 + 3656), v8);
      return 0;
    }

    return result;
  }

  v11 = **(a1 + 3656);
  if (!v10)
  {
    if ((*(v11 + 64))())
    {
      (*(**(a1 + 3656) + 80))(&v19);
      if (v20 >= *(v19 + 38))
      {
        goto LABEL_30;
      }

      v14 = -1;
      v15 = 3.4028e38;
      do
      {
        v16 = BlueFin::GlArrayIterator::Next(&v19);
        v17 = *((*(**(a1 + 3656) + 16))(*(a1 + 3656), v16) + 48);
        if (v17 < v15)
        {
          v14 = v16;
          v15 = v17;
        }
      }

      while (v20 < *(v19 + 38));
      if (v14 == 0xFF)
      {
LABEL_30:
        v12 = "ucInstanceIdOlder != 0xFF";
        DeviceFaultNotify("glmesrd_sat_report_mgr_sniff.cpp", 91, "GetSatRptSniffStatePtr", "ucInstanceIdOlder != 0xFF");
        v13 = 91;
      }

      else
      {
        (*(**(a1 + 3656) + 32))(*(a1 + 3656), v14);
        result = (*(**(a1 + 3656) + 24))(*(a1 + 3656), v8);
        if (result)
        {
          goto LABEL_25;
        }

        v12 = "pstSatRptSniffState != nullptr";
        DeviceFaultNotify("glmesrd_sat_report_mgr_sniff.cpp", 99, "GetSatRptSniffStatePtr", "pstSatRptSniffState != nullptr");
        v13 = 99;
      }
    }

    else
    {
      result = (*(**(a1 + 3656) + 24))(*(a1 + 3656), v8);
      if (result)
      {
        goto LABEL_25;
      }

      v12 = "pstSatRptSniffState != nullptr";
      DeviceFaultNotify("glmesrd_sat_report_mgr_sniff.cpp", 69, "GetSatRptSniffStatePtr", "pstSatRptSniffState != nullptr");
      v13 = 69;
    }

LABEL_27:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_sat_report_mgr_sniff.cpp", v13, v12);
  }

  result = (*(v11 + 16))();
  if (!result)
  {
    v12 = "pstSatRptSniffState != nullptr";
    DeviceFaultNotify("glmesrd_sat_report_mgr_sniff.cpp", 53, "GetSatRptSniffStatePtr", "pstSatRptSniffState != nullptr");
    v13 = 53;
    goto LABEL_27;
  }

  if (*(result + 24) != *a3 || *(result + 28) != *v4)
  {
    (*(**(a1 + 3656) + 32))(*(a1 + 3656), v8);
    result = (*(**(a1 + 3656) + 24))(*(a1 + 3656), v8);
    if (!result)
    {
      v12 = "pstSatRptSniffState != nullptr";
      DeviceFaultNotify("glmesrd_sat_report_mgr_sniff.cpp", 60, "GetSatRptSniffStatePtr", "pstSatRptSniffState != nullptr");
      v13 = 60;
      goto LABEL_27;
    }

LABEL_25:
    *result = 0;
    *(result + 10) = 0;
    *(result + 2) = 0;
    *(result + 17) = 0;
    *(result + 24) = *a3;
    v18 = *v4;
    *(result + 32) = *(v4 + 2);
    *(result + 28) = v18;
    *(result + 40) = 0;
    *(result + 48) = 0;
  }

  return result;
}

uint64_t BlueFin::MinnowGllRpcParserImp::Handle_SatRpt_TrkBits(BlueFin::MinnowGllRpcParserImp *this, BlueFin::GlStream *a2)
{
  U08 = BlueFin::GlStream::GetU08(a2);
  v5 = BlueFin::GlStream::GetU08(a2);
  Bits = BlueFin::GlStream::GetBits(a2, 0xCu);
  v47 = BlueFin::GlStream::GetBits(a2, 4u);
  if ((v47 & 0xF8) != 0)
  {
    v7 = Bits;
    v47 = 0;
  }

  else
  {
    v7 = Bits & 0xFFF;
  }

  v46 = v7;
  if (v7)
  {
    v8 = ((v7 - 1) >> 3) + 1;
  }

  else
  {
    LOWORD(v8) = 0;
  }

  if (v8 >= 0x41u)
  {
    v29 = "usNumBytes <= _DIM(fll_bvec.word)*4";
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 856, "Handle_SatRpt_TrkBits", "usNumBytes <= _DIM(fll_bvec.word)*4");
    v30 = 856;
    goto LABEL_56;
  }

  if ((v5 & 2) == 0)
  {
    v9 = 0;
LABEL_13:
    if ((v5 & 4) != 0)
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      if (v8)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = BlueFin::GlStream::GetU08(a2);
          v12 = &v41;
          *(&v41 + (v14++ & 0xFFFFFFFC)) |= v15 << (v13 & 0x18);
          v13 += 8;
        }

        while (v8 != v14);
      }

      else
      {
        v12 = &v41;
      }
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_24;
  }

  memset(v45, 0, sizeof(v45));
  if (v8)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v9 = v45;
      *(v45 + (v11++ & 0xFFFFFFFC)) |= BlueFin::GlStream::GetU08(a2) << (v10 & 0x18);
      v10 += 8;
    }

    while (v8 != v11);
    goto LABEL_13;
  }

  if ((v5 & 4) != 0)
  {
    v43 = 0uLL;
    v44 = 0uLL;
    v41 = 0uLL;
    v42 = 0uLL;
    v12 = &v41;
  }

  else
  {
    v12 = 0;
  }

  v9 = v45;
LABEL_24:
  v34 = v8;
  v33 = v12;
  if ((v5 & 8) != 0)
  {
    memset(v40, 0, sizeof(v40));
    if (!v8)
    {
      if ((v5 & 0x10) != 0)
      {
        v38 = 0uLL;
        v39 = 0uLL;
        v36 = 0uLL;
        v37 = 0uLL;
        v19 = &v36;
      }

      else
      {
        v19 = 0;
      }

      v16 = v40;
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    v17 = 0;
    v18 = 0;
    do
    {
      v16 = v40;
      *(v40 + (v18++ & 0xFFFFFFFC)) |= BlueFin::GlStream::GetU08(a2) << (v17 & 0x18);
      v17 += 8;
    }

    while (v8 != v18);
  }

  else
  {
    v16 = 0;
  }

  if ((v5 & 0x10) == 0)
  {
    v19 = 0;
    if ((v5 & 0x20) != 0)
    {
      goto LABEL_31;
    }

LABEL_44:
    v24 = 0;
    goto LABEL_45;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  if (v8)
  {
    v25 = 0;
    v26 = 0;
    v27 = v8;
    do
    {
      v19 = &v36;
      *(&v36 + (v26++ & 0xFFFFFFFC)) |= BlueFin::GlStream::GetU08(a2) << (v25 & 0x18);
      v25 += 8;
    }

    while (v27 != v26);
    if ((v5 & 0x20) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_44;
  }

  v19 = &v36;
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_44;
  }

LABEL_31:
  v31 = this;
  v32 = v5;
  v20 = 0;
  memset(&v35[2], 0, 224);
  if ((v5 & 0x40) != 0)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  memset(v35, 0, 32);
  do
  {
    if (v34)
    {
      v22 = 0;
      v23 = 0;
      do
      {
        *(&v35[4 * v20] + (v23++ & 0xFFFFFFFC)) |= BlueFin::GlStream::GetU08(a2) << (v22 & 0x18);
        v22 += 8;
      }

      while (v34 != v23);
    }

    ++v20;
  }

  while (v20 != v21);
  v24 = v35;
  v5 = v32;
  U08 = U08;
  this = v31;
LABEL_45:
  if (BlueFin::GlStream::GetAvailableSize(a2))
  {
    v29 = "otStream.GetAvailableSize() == 0";
    DeviceFaultNotify("glmesrd_transaction_rpc_decoder_minnow.cpp", 912, "Handle_SatRpt_TrkBits", "otStream.GetAvailableSize() == 0");
    v30 = 912;
LABEL_56:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_transaction_rpc_decoder_minnow.cpp", v30, v29);
  }

  return (*(**(*(this + 1) + 17072) + 72))(*(*(this + 1) + 17072), U08, v5, &v46, v9, v33, v16, v19, v24);
}