uint64_t BlueFin::GlGnssSet::operator|@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
    BlueFin::GlSetBase::OperatorBinaryOr(v11, &v13, (v9 + i));
    BlueFin::GlSetBase::operator=(v11, &v13);
    *v12 = v15;
    result = BlueFin::GlSetBase::operator=(*(a3 + 168) + i, v11);
    *(result + 12) = *v12;
  }

  return result;
}

unint64_t BlueFin::GlPeStartupMgr::updateTimeToEphemeris(unint64_t this)
{
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    v1 = this;
    this = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xD);
    if (this)
    {
      v2 = 0;
      v3 = *(*v1 + 120968);
      v4 = 7;
      do
      {
        this = BlueFin::GlSetBase::Cnt(v3);
        v2 += this;
        v3 = (v3 + 24);
        --v4;
      }

      while (v4);
      v5 = v2;
      if (v2 >= 2u)
      {
        if (v2 >= 0xCu)
        {
          v5 = 12;
        }

        v6 = (v5 - 1);
        if (v1[v6 + 14] == -7200001)
        {
          v7 = BlueFin::GlUtils::m_pInstance;
          v8 = &v1[v6 + 14];
          do
          {
            if (*v8 != -7200001)
            {
              break;
            }

            *v8-- = *(v7 + 1092) - v1[10];
            v9 = __OFSUB__(v5--, 1);
          }

          while (!((v5 < 0) ^ v9 | (v5 == 0)));
        }
      }
    }
  }

  return this;
}

uint64_t BlueFin::GlDineCtrl::SetLowSignalStrengthMode(BlueFin::GlDineCtrl *this, int a2)
{
  v3 = "Disabled";
  if (a2)
  {
    v3 = "Enabled";
  }

  GlCustomLog(15, "GlDineCtrl::SetLowSignalStrengthMode(%s)\n", v3);
  v4 = *(*(this + 3644) + 64);

  return v4();
}

unsigned __int8 *BlueFin::GlPeNavGnssMeasMgr::UpdateNavMeas(int32x2_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v8 = **&a1[1];
  *v86 = &v86[12];
  v86[8] = 8;
  memset(&v86[12], 0, 32);
  if ((*(*v6 + 1056))(v6))
  {
    memset(__src, 0, 24);
    v9 = a1[2];
    if (*(v9 + 100) != -1)
    {
      *v80 = *(v9 + 144);
      *&v80[16] = *(v9 + 160);
      if (BlueFin::ecef2lla(v80, __src))
      {
        BlueFin::GlPeAlmMgr::Invisible(*&a1[2] + 34112, 0, v8, __src, v86, 0, v10, v11, v75, v76, *__src, *&__src[16], *&__src[24], *&__src[32], *&__src[40], *&__src[48], *&__src[56], *&__src[64], *&__src[72], *&__src[88], *&__src[104], *&__src[120], v78, v79, v80[0], *&v80[4], *&v80[8], v80[12], *&v80[16], *&v80[32], *&v80[48], *&v80[64], *&v80[80], v81, v82, v83, v84, v85[0], v85[1], v85[2], v85[3], v85[4], *v86, *&v86[16], *&v86[32], v87, v88, v89, v90, v91);
      }
    }
  }

  BlueFin::GlSignalIdSet::GetSvIdSet(__src, a2);
  v12 = a1[1];
  v80[0] = *(v12 + 104);
  memcpy(&v80[8], *(v12 + 96), 4 * v80[0]);
  *&v80[2] = 0;
  v80[1] = 0;
  *&v80[4] = *&v80[8];
  result = BlueFin::GlSetIterator::operator++(v80);
  if (v80[1] != v80[0])
  {
    while (*&v80[2] < 0x23FuLL)
    {
      v14 = a1[1];
      v15 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * *&v80[2];
      v16 = *v15;
      LODWORD(v15) = v15[1];
      LOBYTE(v92) = v16;
      v93 = v15;
      LOWORD(v94) = *&v80[2];
      BlueFin::GlPeMsmtMgr::GetMeMeas(v14, &v92, 0, 1u);
      result = BlueFin::GlSetIterator::operator++(v80);
      if (v80[1] == v80[0])
      {
        goto LABEL_8;
      }
    }

LABEL_83:
    v72 = "usIndex < NUM_SIGNAL_IDS";
    DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
    v73 = "glsignalid.h";
    v74 = 578;
    goto LABEL_84;
  }

LABEL_8:
  if ((*(*(*a1 + 160) + 1) & 1) == 0 || (*(a2 + 189) & 4) == 0)
  {
    BlueFin::GlPeNavMeasUtil::processNewMeas(&a1[280], a2, a3);
    BlueFin::GlSetBase::GlSetBase((&v84 + 8), v85 + 1, 0x13u, (*&a1[1] + 184));
    LOBYTE(v92) = v85[0];
    memcpy(&v94, *(&v84 + 1), 4 * LOBYTE(v85[0]));
    HIWORD(v92) = 0;
    BYTE1(v92) = 0;
    v93 = v94;
    for (result = BlueFin::GlSetIterator::operator++(&v92); BYTE1(v92) != v92; result = BlueFin::GlSetIterator::operator++(&v92))
    {
      if (HIWORD(v92) >= 0x23FuLL)
      {
        goto LABEL_83;
      }

      v17 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(v92);
      v18 = *v17;
      LODWORD(v17) = v17[1];
      BYTE8(v87) = v18;
      HIDWORD(v87) = v17;
      LOWORD(v88) = HIWORD(v92);
      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*&a1[1], (&v87 + 8), 0, 0);
      v80[0] = *MeMeas;
      v20 = *(MeMeas + 1);
      *&v80[8] = *(MeMeas + 4);
      *&v80[4] = v20;
      *&v80[12] = *(MeMeas + 3);
      v21 = *(MeMeas + 4);
      v23 = *(MeMeas + 1);
      v22 = *(MeMeas + 2);
      *&v80[48] = *(MeMeas + 3);
      *&v80[64] = v21;
      *&v80[16] = v23;
      *&v80[32] = v22;
      v24 = *(MeMeas + 8);
      v26 = *(MeMeas + 5);
      v25 = *(MeMeas + 6);
      v82 = *(MeMeas + 7);
      v83 = v24;
      *&v80[80] = v26;
      v81 = v25;
      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*&a1[1], (&v87 + 8), 0);
      v28 = *PeMeas;
      v29 = *(PeMeas + 16);
      *&__src[32] = *(PeMeas + 32);
      *__src = v28;
      *&__src[16] = v29;
      __src[40] = *(PeMeas + 40);
      v30 = *(PeMeas + 44);
      *&__src[48] = *(PeMeas + 48);
      *&__src[44] = v30;
      v31 = *(PeMeas + 80);
      v32 = *(PeMeas + 68);
      *&__src[52] = *(PeMeas + 52);
      *&__src[68] = v32;
      *&__src[80] = v31;
      *&__src[96] = *(PeMeas + 96);
      v33 = *(PeMeas + 100);
      *&__src[114] = *(PeMeas + 114);
      *&__src[100] = v33;
      if ((*(**a1 + 1056))())
      {
        v34 = (1 << (BYTE8(v87) & 0x1F)) & *(*v86 + ((BYTE8(v87) >> 3) & 0x1C));
        v35 = "NOT Visible!";
        if (v34)
        {
          v36 = 10;
        }

        else
        {
          v35 = "Visible";
          v36 = 15;
        }

        GlCustomLog(v36, "StrictAssert:  SVID %d is %s\n", BYTE8(v87), v35);
        if (v34)
        {
          v72 = "bIsVisible";
          DeviceFaultNotify("glpe_navgnssmeasmgr.cpp", 126, "UpdateNavMeas", "bIsVisible");
          v73 = "glpe_navgnssmeasmgr.cpp";
          v74 = 126;
LABEL_84:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v73, v74, v72);
        }
      }

      HIWORD(v76) = **(a3 + 32);
      DWORD1(v87) = 0;
      BlueFin::GlPeNavMeasUtil::processEl(&a1[280], &v87 + 8, a2, &v76 + 7, &v87 + 1);
      if (v37 <= 0.0)
      {
        if (v37 >= 0.0)
        {
          LOWORD(v39) = 0;
          goto LABEL_23;
        }

        v38 = v37 + -0.5;
      }

      else
      {
        v38 = v37 + 0.5;
      }

      v39 = v38;
LABEL_23:
      *&__src[104] = v39;
      if (*(&v87 + 1) <= 0.0)
      {
        if (*(&v87 + 1) >= 0.0)
        {
          LOWORD(v41) = 0;
          goto LABEL_29;
        }

        v40 = *(&v87 + 1) + -0.5;
      }

      else
      {
        v40 = *(&v87 + 1) + 0.5;
      }

      v41 = v40;
LABEL_29:
      *&__src[106] = v41;
      v42 = *(a3 + 32);
      if (SHIWORD(v76) > *v42 && *(&v81 + 3) < 0.0000000149999995 && (v80[12] & 2) != 0 && *&v80[48])
      {
        *v42 = HIWORD(v76);
      }

      if (v37 < 5.0 && *(a2 + 176) >> 5 <= 0x752u)
      {
        *&__src[96] &= 0xFFFFFFC9;
        *&__src[128] = 1285;
        __src[110] = 0;
      }

      BlueFin::GlPeProbation::UpdateProbationInfo(a1 + 9, v80, __src, (a2 + 88), v8);
      BlueFin::GlPeSvVisibilityCache::UpdateVisibilityInfo(&a1[64], v80, __src, v8, v43, v44, v45, v46, v75, *(&v75 + 1), v76, *(&v76 + 1), *__src, *&__src[8], *&__src[16], *&__src[24]);
      if (BlueFin::GlPeTimeManager::GetSystemConversionUncUs(*&a1[4], BlueFin::GlSvId::s_aucSvId2gnss[BYTE8(v87)]) > 0.01)
      {
        *&__src[96] &= ~4u;
        if (!__src[128])
        {
          __src[128] = 19;
        }
      }

      BlueFin::GlPeMsmtMgr::SetPeMeas(*&a1[1], __src, 0);
    }

    v47 = *(a2 + 188);
    if ((v47 & 0x1000) == 0)
    {
      goto LABEL_61;
    }

    *v80 = &v80[12];
    v80[8] = 19;
    memset(&v80[12], 0, 76);
    BlueFin::GlSetBase::GlSetBase(__src, &__src[12], 0x13u, (*&a1[1] + 8));
    LOBYTE(v92) = __src[8];
    memcpy(&v94, *__src, 4 * __src[8]);
    HIWORD(v92) = 0;
    BYTE1(v92) = 0;
    v93 = v94;
    result = BlueFin::GlSetIterator::operator++(&v92);
    if (BYTE1(v92) == v92)
    {
      goto LABEL_88;
    }

    v48 = 0;
    do
    {
      if (HIWORD(v92) >= 0x23FuLL)
      {
        goto LABEL_83;
      }

      v49 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(v92);
      v50 = *v49;
      LODWORD(v49) = v49[1];
      BYTE8(v87) = v50;
      HIDWORD(v87) = v49;
      LOWORD(v88) = HIWORD(v92);
      if (BlueFin::GlSvId::s_aucSvId2gnss[v50] == 4)
      {
        *(*v80 + ((HIWORD(v92) >> 3) & 0x1FFC)) |= 1 << SBYTE2(v92);
      }

      else
      {
        v51 = BlueFin::GlPeMsmtMgr::AccessPeMeas(*&a1[1], (&v87 + 8), 0);
        v48 += BlueFin::stPeSigMeasKF::IsPRValidForNav(v51);
      }

      result = BlueFin::GlSetIterator::operator++(&v92);
    }

    while (BYTE1(v92) != v92);
    if (v48 < 6u)
    {
LABEL_88:
      if (**v80)
      {
        goto LABEL_51;
      }

      if (v80[8] >= 2uLL)
      {
        v55 = v80[8] - 1;
        v56 = (*v80 + 4);
        while (!*v56++)
        {
          if (!--v55)
          {
            goto LABEL_60;
          }
        }

LABEL_51:
        result = BlueFin::GlSetBase::operator==(v80, __src);
        if ((result & 1) == 0)
        {
          LOBYTE(v92) = v80[8];
          memcpy(&v94, *v80, 4 * v80[8]);
          HIWORD(v92) = 0;
          BYTE1(v92) = 0;
          v93 = v94;
          result = BlueFin::GlSetIterator::operator++(&v92);
          if (BYTE1(v92) != v92)
          {
            while (HIWORD(v92) < 0x23FuLL)
            {
              v52 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(v92);
              v53 = *v52;
              LODWORD(v52) = v52[1];
              BYTE8(v87) = v53;
              HIDWORD(v87) = v52;
              LOWORD(v88) = HIWORD(v92);
              v54 = BlueFin::GlPeMsmtMgr::AccessPeMeas(*&a1[1], (&v87 + 8), 0);
              *(v54 + 96) &= 0xFFFFFFC9;
              *(v54 + 128) = 7967;
              result = BlueFin::GlSetIterator::operator++(&v92);
              if (BYTE1(v92) == v92)
              {
                goto LABEL_60;
              }
            }

            goto LABEL_83;
          }
        }
      }
    }

LABEL_60:
    v47 = *(a2 + 188);
LABEL_61:
    if ((v47 & 0x80000) != 0 && *(a2 + 176) <= 0x7CFu)
    {
      *__src = &__src[12];
      __src[8] = 19;
      memset(&__src[12], 0, 76);
      v58 = a1[1];
      v80[0] = *(v58 + 16);
      memcpy(&v80[8], *(v58 + 8), 4 * v80[0]);
      *&v80[2] = 0;
      v80[1] = 0;
      *&v80[4] = *&v80[8];
      BlueFin::GlSetIterator::operator++(v80);
      while (v80[1] != v80[0])
      {
        v59 = *&v80[2];
        if (*&v80[2] >= 0x23FuLL)
        {
          goto LABEL_83;
        }

        v60 = a1[1];
        v61 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * *&v80[2];
        v62 = *v61;
        LODWORD(v61) = v61[1];
        LOBYTE(v92) = v62;
        v93 = v61;
        LOWORD(v94) = *&v80[2];
        v63 = BlueFin::GlPeMsmtMgr::GetPeMeas(v60, &v92, 0);
        if (BlueFin::stPeSigMeasKF::IsPRValidForNav(v63))
        {
          *(*__src + ((v59 >> 3) & 0x1FFC)) |= 1 << v59;
        }

        BlueFin::GlSetIterator::operator++(v80);
      }

      v64 = a1[6];
      v92 = 0;
      v94 = v96;
      v95 = 8;
      memset(v96, 0, 32);
      v97 = xmmword_298A41DA0;
      v98 = vdup_n_s32(0x42C60000u);
      v99 = 1120272384;
      BlueFin::stDops::stDops(v80, &v92);
      *&v80[88] = v64;
      v65 = **&a1[1];
      BlueFin::GlSignalIdSet::GetSvIdSetBySignalIndex(__src, 2, &v87 + 8);
      DWORD1(v87) = 0;
      BlueFin::GlPeDops::GetDops(v80, v65);
      v66 = *(&v97 + 1);
      result = BlueFin::GlSignalIdSet::GetSvIdSetBySignalIndex(__src, 2, v80);
      v67 = 0;
      v68 = (*v80 + 4 * v80[8] - 4);
      do
      {
        if (*v68)
        {
          v69 = *v68 - (((*v68 >> 2) & 0x9249249) + ((*v68 >> 1) & 0x5B6DB6DB));
          v67 = ((v69 + (v69 >> 3)) & 0xC71C71C7) + v67 - 63 * (((v69 + (v69 >> 3)) & 0xC71C71C7) / 0x3F);
        }

        --v68;
      }

      while (v68 >= *v80);
      if (v66 < 3.0 && v67 > 5u)
      {
        v71 = 2;
      }

      else
      {
        v71 = 0;
      }

      *(*a1 + 26300) = v71;
    }

    else
    {
      *(*a1 + 26300) = 0;
    }

    if (**(a3 + 32))
    {
      return (*(**&a1[6] + 56))(*&a1[6]);
    }
  }

  return result;
}

uint64_t *BlueFin::GlSignalIdSet::GetPrimarySignalSvIdSet@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  *(a1 + 12) = 0u;
  v2 = a1 + 12;
  *a1 = a1 + 12;
  *(a1 + 8) = 8;
  *(a1 + 28) = 0u;
  v3 = *this;
  v4 = *(this + 8);
  if (!**this)
  {
    if (v4 < 2)
    {
      return this;
    }

    v8 = v4 - 1;
    v9 = v3 + 1;
    while (!*v9++)
    {
      if (!--v8)
      {
        return this;
      }
    }
  }

  v11 = *(this + 8);
  memcpy(v15, v3, 4 * v4);
  v13 = 0;
  v12 = 0;
  v14 = v15[0];
  for (this = BlueFin::GlSetIterator::operator++(&v11); v12 != v11; this = BlueFin::GlSetIterator::operator++(&v11))
  {
    if (v13 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 594, "GetSignalIndexFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 594, "usIndex < NUM_SIGNAL_IDS");
    }

    v5 = *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v13 + 1);
    if (v5 == 3 || v5 == 0)
    {
      v7 = *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v13);
      *&v2[(v7 >> 3) & 0x1C] |= 1 << v7;
    }
  }

  return this;
}

uint64_t BlueFin::GlPeMsmtMgr::Init_IntPr(uint64_t this)
{
  v1 = *(this + 18792);
  v4 = v1 + 1152;
  v5 = *(v1 + 1186) + 1;
  if (*(v1 + 1184) > v5)
  {
    v2 = this;
    do
    {
      BlueFin::GlSignalIdArrayIterator::Next(&v3, &v4);
      this = BlueFin::GlSignalIdArray::Get(*(v2 + 18792), &v3);
      *(this + 232) = -1;
    }

    while (v5 < *(v4 + 32));
  }

  return this;
}

uint64_t BlueFin::GlPeKFAltAsst::altAsstFirstFix(uint64_t a1, uint64_t a2, double *a3, unsigned int a4)
{
  if (*(a1 + 2) != 1)
  {
    return 0;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1157234688;
  v7 = *a3;
  v8 = a3[1];
  if (BlueFin::GlPeLatLonRegionSet::disabledRegion(&BlueFin::GlPeKFAltAsst::m_otCityFine, v7, v8))
  {
    return 0;
  }

  Region = BlueFin::GlPeLatLonRegionSet::findRegion(&BlueFin::GlPeKFAltAsst::m_otCityFine, v7, v8);
  if ((Region & 0x8000) != 0)
  {
    v16 = *a3;
    v18 = 0.5;
    if (*a3 <= 0.0 && (v18 = -0.5, v16 >= 0.0))
    {
      v19 = 39;
    }

    else
    {
      v19 = ((v16 + v18) + 39);
      if (v19 > 0x65)
      {
        return 0;
      }
    }

    v20 = (qword_2A18BAD08 + 4 * v19);
    if (!*v20)
    {
      return 0;
    }

    v21 = a4 * 0.0000089993;
    v22 = v20[1];
    if (v22 > (*v20 - 1))
    {
      v23 = *v20 - 1;
      *v11.i64 = floor(fabs(v16) / 15.0);
      *v12.i64 = *v11.i64 - trunc(*v11.i64 * 2.32830644e-10) * 4294967300.0;
      v24.f64[0] = NAN;
      v24.f64[1] = NAN;
      v25 = vnegq_f64(v24);
      v12.i64[0] = vbslq_s8(v25, v12, v11).u64[0];
      if (*v11.i64 > 4294967300.0)
      {
        v11.i64[0] = v12.i64[0];
      }

      v26 = *v11.i64;
      v27 = (qword_2A18BACF8 + 12 * (*v20 - 1) + 4);
      do
      {
        v28 = *(v27 - 2);
        v29 = *(v27 - 2);
        v25.i16[0] = *(v27 - 1);
        *&v30 = v25.u32[0];
        v31 = ((v28 >> 9) - 50) + (*&v30 * 0.0001);
        LOWORD(v30) = v27[1];
        *v25.i32 = v31 + (v30 * 0.0001);
        LOWORD(v13) = *v27;
        v32 = LODWORD(v13);
        v33 = -(v29 + (v32 * 0.0001));
        if ((v28 & 0x100) == 0)
        {
          v33 = v29 + (v32 * 0.0001);
        }

        LOWORD(v32) = v27[2];
        v13 = v33 + (LODWORD(v32) * 0.0001);
        if (v33 >= v8 || v13 <= v8)
        {
          if (v31 >= v7 || *v25.i32 <= v7)
          {
            v36 = v7 - *v25.i32;
            if (v31 <= v7)
            {
              v37 = v36;
            }

            else
            {
              v37 = v31 - v7;
            }

            v38 = v33 - v8;
            v39 = v8 - v13;
            if (v33 <= v8)
            {
              v38 = v39;
            }

            *v25.i32 = v38 * flt_298A43DAC[v26];
            v13 = *v25.i32 + (v37 * 0.4);
            if (v37 <= *v25.i32)
            {
              v40 = *v25.i32 + (v37 * 0.4);
            }

            else
            {
              v40 = v37 + (*v25.i32 * 0.4);
            }
          }

          else
          {
            v41 = v33 - v8;
            if (v33 <= v8)
            {
              v41 = v8 - v13;
            }

            *v25.i32 = flt_298A43DAC[v26];
            v40 = v41 * *v25.i32;
          }
        }

        else if (*v25.i32 >= v7)
        {
          v40 = v31 - v7;
        }

        else
        {
          v40 = v7 - *v25.i32;
        }

        v27 += 6;
        if (v40 < v21)
        {
          v21 = v40;
          Region = v23;
        }

        ++v23;
      }

      while (v22 != v23);
    }

    if ((Region & 0x8000) != 0)
    {
      return 0;
    }

    v14 = *(qword_2A18BACF8 + 12 * Region + 10);
    v15 = fminf((5 * (v14 & 0xF) + 5) + ((v21 * 111120.0) * 0.067), 400.0);
  }

  else
  {
    v14 = *(qword_2A18BACF8 + 12 * Region + 10);
    v15 = (5 * (v14 & 0xF) + 5);
    v16 = *a3;
  }

  v17 = *(a3 + 1);
  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = ((v14 >> 4) - 100);
  *(a2 + 24) = v15;
  return 1;
}

BlueFin::SKFVector *BlueFin::GlPeHula::GetHulaMeas(uint64_t a1, double *a2, uint64_t a3)
{
  v6 = (a1 + 3016);
  v7 = *(a2 + 14);
  v8 = a2[11];
  v9 = *(a2 + 24);
  v11 = *(a3 + 8);
  v10 = *(a3 + 16);
  if (*(a1 + 3008) != 1 || (v12 = *(a1 + 3040), v13 = *(a1 + 3048), v12 * v12 + v13 * v13 >= 160000.0))
  {
LABEL_12:
    v17 = *a2;
    if ((~*a2 & 0xC0) == 0 && *(a1 + 3072) >= 2)
    {
      *v10 = 0;
      goto LABEL_50;
    }

    if ((v17 & 0x44) == 0x40)
    {
      v18 = *(a1 + 3120);
      if (v18 < 0x1F5)
      {
        v21 = 0;
      }

      else
      {
        v19 = v7 - v18;
        v20 = v18 >= v7;
        v21 = v18 - v7;
        if (!v20)
        {
          v21 = v19;
        }

        v22 = *(a1 + 4216);
        if (v22 != 1 && v22 != 6)
        {
          v23 = (v17 & 0x100) != 0 ? 2011 : 12000;
          if (v21 >= v23 && !((*a2 >> 14) & 1))
          {
            goto LABEL_44;
          }
        }
      }

      v25 = *(a1 + 3040);
      v26 = *(a1 + 3048);
      v74 = *(a1 + 3056);
      if ((~v17 & 0x401) != 0)
      {
        v8 = 0.0;
      }

      if (v21 >= 0x3E8)
      {
        v21 = 1000;
      }

      v27 = v8 * v21 / 1000.0;
      v28 = v25 + v27;
      v29 = v26 + v27;
      if ((v17 & 8) != 0)
      {
        goto LABEL_41;
      }

      if (v28 > *(a1 + 3080) * 3.0)
      {
LABEL_44:
        *(a1 + 3008) = 0;
        *(a1 + 3040) = vdupq_n_s64(0x412E848000000000uLL);
        *v11 = 0;
        *v10 = 1;
        goto LABEL_50;
      }

      if (v9 > 0xA || *(a1 + 3072) - 4 >= 0xFFFFFFFE)
      {
LABEL_41:
        *(a1 + 3040) = v28;
        *(a1 + 3048) = v29;
      }

      else
      {
        v69 = *(a1 + 3072);
        v30 = *(a1 + 3032);
        v76 = *v6;
        v77 = v30;
        BlueFin::lla2ned(a2 + 13, &v76, 0, &v78);
        v31 = sqrt(v79 * v79 + v78 * v78);
        *(a1 + 3040) = v28;
        *(a1 + 3048) = v29;
        *(a1 + 3056) = v74;
        *(a1 + 3072) = v69;
        if (v31 > 200.0)
        {
          goto LABEL_44;
        }
      }

      *v10 = 0;
    }

    else
    {
      *v10 = 0;
      *(a1 + 3008) = 0;
    }

    *v11 = 1;
    if ((*a2 & 4) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

  if (v12 < 0.0 || v13 < 0.0)
  {
    if (*v10)
    {
      goto LABEL_49;
    }

    v14 = *(a1 + 3016);
    v15 = *(a1 + 3024);
LABEL_48:
    GlCustomLog(14, "WARNING: INVALID External location input is REJECTED: lla (%.6lf,%.6lf,%.1lf) unc (%.1lf,%.1lf)\n", v14, v15, *(a1 + 3032), *(a1 + 3040), v13);
    goto LABEL_49;
  }

  v14 = *(a1 + 3016);
  v15 = *(a1 + 3024);
  v16 = v15 == 0.0 && v14 == 0.0;
  if (fabs(v14) > 90.0 || v16 || fabs(v15) > 180.0)
  {
    if (*v10)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  if ((*v10 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_49:
  *(a1 + 3008) = 0;
  *(a1 + 3040) = vdupq_n_s64(0x412E848000000000uLL);
  *v10 = 1;
  *v11 = 0;
LABEL_50:
  v32 = *(a2 + 14);
  v33 = *a2;
  v68 = a2[17];
  v70 = a2[16];
  BlueFin::SKFVectorDim<100>::SKFVectorDim(&v78, (a1 + 1296));
  result = BlueFin::SKFVectorDim<100>::SKFVectorDim(&v76, (a1 + 2120));
  v35 = LODWORD(v79);
  if (LODWORD(v79) != DWORD2(v76))
  {
    DeviceFaultNotify("glpe_hula.cpp", 3557, "HulaHdgMeasQA", "otInputHdgDeg.GetLen() == otInputHdgRmseDeg.GetLen()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_hula.cpp", 3557, "otInputHdgDeg.GetLen() == otInputHdgRmseDeg.GetLen()");
  }

  *(a1 + 2985) = 0;
  *(a1 + 2128) = 0;
  *(a1 + 1304) = 0;
  if ((v33 & 1) != 0 && v35 && v32 - *(a1 + 2960) <= *(a1 + 5144))
  {
    *&v74 = v75;
    *(&v74 + 1) = 0x6400000000;
    bzero(v75, 0x328uLL);
    v71 = v73;
    v72 = 0x6400000000;
    bzero(v73, 0x328uLL);
    if (v35 >= 1)
    {
      v36 = v35 + 1;
      v37 = 1;
      do
      {
        v38 = *(v76 + 8 * v37);
        if (v38 >= 0.0)
        {
          v39 = *(*&v78 + 8 * v37) - floor(*(*&v78 + 8 * v37) / 360.0) * 360.0;
          if ((v33 & 0x800) == 0)
          {
            goto LABEL_66;
          }

          if (((v38 <= 30.0) & (v33 >> 5)) != 0)
          {
            goto LABEL_66;
          }

            ;
          }

          while (i <= -3.14159265)
          {
            i = i + 6.28318531;
          }

          if (i * 57.2957795 * (i * 57.2957795) <= fmax(v38 * v38 + v68 * 3282.80635, 9.0) * 16.0)
          {
LABEL_66:
            BlueFin::SKFVector::AddLen(&v74);
            *(v74 + 8 * SDWORD2(v74)) = v39;
            v41 = *(v76 + 8 * v37);
            BlueFin::SKFVector::AddLen(&v71);
            *&v71[8 * v72] = v41;
          }
        }

        ++v37;
      }

      while (v37 != v36);
    }

    result = BlueFin::GlPeHula::HulaHdgCombine(a1, &v74, &v71);
    *(a1 + 2985) = result;
  }

  v42 = *(a2 + 14);
  v43 = a2[1];
  v44 = a2[10];
  v45 = *a2;
  v46 = a2[4];
  v47 = *(a2 + 10);
  *(a1 + 1161) = 0;
  v48 = *(a1 + 1120);
  if (v48 >= 0.0)
  {
    if ((v42 - *(a1 + 1136)) >= 0x2BF21)
    {
      *(a1 + 1120) = 0xBFF0000000000000;
      *(a1 + 1162) = 0;
      v49 = (a1 + 1163);
LABEL_99:
      *v49 = 0;
      goto LABEL_100;
    }

    if ((v45 & 4) != 0)
    {
      goto LABEL_100;
    }

    if ((v45 & 0x2000) != 0)
    {
      v52 = v47 + v47;
      if (v48 >= v52 || (v45 & 8) != 0)
      {
        v52 = *(a1 + 1120);
      }

      if ((v45 & 0x8000) != 0)
      {
        v52 = *(a1 + 1120);
      }

      if (v47 < 25.0)
      {
        v47 = 25.0;
      }

      v60 = (v47 * v47) + v52 * v52;
      v50 = *(a1 + 1112);
      v61 = v50 - v46;
      if (v61 * v61 < v60 * 9.0)
      {
        goto LABEL_96;
      }

      if ((v45 & 0x10) != 0 || v61 <= 0.0 || v61 >= 1000.0)
      {
        goto LABEL_100;
      }

      v51 = v45 & 0x8000;
    }

    else
    {
      v50 = *(a1 + 1112);
      v51 = v45 & 0x8000;
      v52 = *(a1 + 1120);
    }

    v53 = v50 - v44;
    v54 = 100.0;
    if (v52 >= 100.0 || (v45 & 8) != 0)
    {
      v54 = v52;
    }

    if (!v51)
    {
      v52 = v54;
    }

    v56 = v43 * 1.9 * (v43 * 1.9) + v52 * v52;
    v57 = *(a1 + 1176) - 1;
    v58 = 0.0;
    if (v57 <= 2)
    {
      v58 = dbl_298A43BD8[v57];
    }

    if (v53 * v53 >= v56 * v58)
    {
      goto LABEL_100;
    }

LABEL_96:
    *(a1 + 1161) = 1;
    if (*(a2 + 24))
    {
      v62 = *(a3 + 24);
      *v62 = *(a1 + 1112);
      *(v62 + 8) = v48;
      *(v62 + 44) = 3;
      *(v62 + 16) = *(a1 + 1136);
      *(v62 + 48) = 1;
      *(a1 + 1162) = 1;
    }

    v49 = *a3;
    goto LABEL_99;
  }

LABEL_100:
  v63 = a2[11];
  v64 = a2[18];
  *(a1 + 1225) = 0;
  if (v45)
  {
    v65 = *(a1 + 1192);
    if (v65 > 0.00001 && (v42 - *(a1 + 1200)) <= *(a1 + 5144))
    {
      if ((v45 & 0x800) == 0)
      {
        goto LABEL_109;
      }

      v66 = v64 + v65 * v65;
      v67 = (*(a1 + 1184) - v63) * (*(a1 + 1184) - v63);
      if (v67 <= v66 * 9.0)
      {
        goto LABEL_109;
      }

      if (v66 < 0.25)
      {
        v66 = 0.25;
      }

      if ((v45 & 0x1000) != 0 || v67 <= v66 * 9.0)
      {
LABEL_109:
        *(a1 + 1225) = 1;
      }
    }
  }

  *(a1 + 1281) = 0;
  if (v45)
  {
    if (*(a1 + 1248) >= 0.0 && v42 - *(a1 + 1256) <= *(a1 + 5144))
    {
      *(a1 + 1281) = 1;
    }

    *(v6 + 1161) = 0;
    if (*(a1 + 4148) >= 0.0 && v42 - *(a1 + 4152) <= *(a1 + 5144) && fabsf(*(a1 + 4144)) <= 120.0)
    {
      *(v6 + 1161) = 1;
    }
  }

  else
  {
    *(v6 + 1161) = 0;
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeVlss::UpdateVlssEnabledStatus(BlueFin::GlPeVlss *this, const BlueFin::GlPeMsmtMgr *a2)
{
  v51 = &v53;
  v52 = 19;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  memset(v56, 0, 28);
  if (BlueFin::GlSetBase::Cnt((a2 + 96)) >= 5)
  {
    v4 = *(this + 3);
    if ((v4 + 1) < 0x12C)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = 300;
    }

    *(this + 3) = v5;
  }

  v46 = *(a2 + 104);
  memcpy(v50, *(a2 + 12), 4 * v46);
  v48 = 0;
  v47 = 0;
  v49 = v50[0];
  BlueFin::GlSetIterator::operator++(&v46);
  if (v47 == v46)
  {
    BlueFin::GlSetBase::operator=(this + 16, &v51);
    v6 = v53;
    *(this + 44) = v54;
    v7 = v56[0];
    *(this + 60) = v55;
    *(this + 76) = v7;
    *(this + 88) = *(v56 + 12);
    *(this + 28) = v6;
    v8 = 1700;
    v9 = -300;
    goto LABEL_36;
  }

  v41 = 0;
  v10 = 0;
  v11 = this + 104;
  v12 = 1700;
  v13 = -300;
  do
  {
    v14 = v48;
    if (v48 >= 0x23FuLL)
    {
LABEL_55:
      v38 = "usIndex < NUM_SIGNAL_IDS";
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      v39 = "glsignalid.h";
      v40 = 578;
      goto LABEL_56;
    }

    v15 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v48;
    v16 = *v15;
    LODWORD(v15) = v15[1];
    v43[0] = v16;
    v44 = v15;
    v45 = v48;
    MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(a2, v43, 0, 1u);
    if (MeMeas && (*(MeMeas + 3) & 0xC000) == 0x4000 && !*(MeMeas + 1) && (v16 - 1) <= 0xBB)
    {
      v18 = vcvtps_s32_f32(*(MeMeas + 29) * 10.0);
      if (v18 > v13)
      {
        v13 = v18;
      }

      if (v12 >= v18)
      {
        v12 = v18;
      }

      if ((*(*(this + 2) + 4 * (v14 >> 5)) >> (v14 & 0x1F)))
      {
        v19 = (*&v11[2 * v14] - v18);
        if (v19 < 0)
        {
          v19 = -v19;
        }

        if (v19 >= 0x32)
        {
          v20 = 50;
        }

        else
        {
          v20 = v19;
        }

        v21 = v41;
        v22 = v20 + v41;
        if (v19 >= 1)
        {
          v21 = v22;
        }

        v41 = v21;
      }

      *&v11[2 * v14] = v18;
      v10 = 1;
      *(v51 + (v14 >> 5)) |= 1 << (v14 & 0x1F);
    }

    BlueFin::GlSetIterator::operator++(&v46);
  }

  while (v47 != v46);
  BlueFin::GlSetBase::operator=(this + 16, &v51);
  v23 = v53;
  *(this + 44) = v54;
  v24 = v56[0];
  *(this + 60) = v55;
  *(this + 76) = v24;
  *(this + 88) = *(v56 + 12);
  *(this + 28) = v23;
  if ((v10 & 1) != 0 && *(this + 3) <= 0x12Bu)
  {
    v8 = v12;
    v9 = v13;
    if (v41 >= (v13 - v8))
    {
      v25 = (v13 - v8);
    }

    else
    {
      v25 = v41;
    }

    *(this + 2) = (*(this + 2) * 0.9) + (v25 * 0.1);
  }

  else
  {
    v8 = v12;
    v9 = v13;
  }

LABEL_36:
  if (*(this + 2) >= 40.0)
  {
    BlueFin::GlPeVlss::SetFadingStatusAuto(this, 2u);
  }

  if (*(this + 3) >= 0xFu && !*(this + 1))
  {
    BlueFin::GlPeVlss::SetFadingStatusAuto(this, 1u);
  }

  if (*this != 2)
  {
    v26 = *(this + 1);
    if (v26)
    {
      if (v26 < 3)
      {
        *this = v26;
        goto LABEL_45;
      }

      v38 = "rotFadingStatus == GLPE_FADING_NOT_KNOWN || rotFadingStatus == GLPE_FADING_NONE || rotFadingStatus == GLPE_FADING_DETECTED";
      DeviceFaultNotify("glpe_vlss.cpp", 44, "SetFadingStatus", "rotFadingStatus == GLPE_FADING_NOT_KNOWN || rotFadingStatus == GLPE_FADING_NONE || rotFadingStatus == GLPE_FADING_DETECTED");
      v39 = "glpe_vlss.cpp";
      v40 = 44;
LABEL_56:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v39, v40, v38);
    }
  }

LABEL_45:
  v46 = *(a2 + 104);
  memcpy(v50, *(a2 + 12), 4 * v46);
  v48 = 0;
  v47 = 0;
  v49 = v50[0];
  result = BlueFin::GlSetIterator::operator++(&v46);
  if (v47 != v46)
  {
    v29 = 0;
    *&v28 = 0;
    v42 = v28;
    do
    {
      if (v48 >= 0x23FuLL)
      {
        goto LABEL_55;
      }

      v30 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v48;
      v31 = *v30;
      LODWORD(v30) = v30[1];
      v43[0] = v31;
      v44 = v30;
      v45 = v48;
      v32 = BlueFin::GlPeMsmtMgr::GetMeMeas(a2, v43, 0, 1u);
      if (v32 && (*(v32 + 3) & 0xC000) == 0x4000)
      {
        ++v29;
        v33 = v42;
        *&v33 = *&v42 + *(v32 + 29);
        v42 = v33;
      }

      result = BlueFin::GlSetIterator::operator++(&v46);
    }

    while (v47 != v46);
    if (v29)
    {
      v34.f32[0] = v29;
      v35 = vdup_n_s32(0x3DCCCCCDu);
      v36.f32[0] = v34.f32[0];
      v36.f32[1] = (v9 - v8);
      v37 = vmul_f32(v36, v35);
      v35.i32[0] = v42;
      v35.i32[0] = vdiv_f32(v35, v34).u32[0];
      v35.i32[1] = v37.i32[1];
      *(this + 157) = vmla_f32(vmul_f32(*(this + 1256), vdup_n_s32(0x3F666666u)), vdup_n_s32(0x3DCCCCD0u), v35);
      *(this + 316) = (*(this + 316) * 0.9) + (v34.f32[0] * 0.1);
    }
  }

  return result;
}

BOOL BlueFin::GlPeNavGnssKF::IsFirstFixConditionForExtLoc(BlueFin::GlPeNavGnssKF *this)
{
  v2 = ((*(*this + 64))(this) / (*(this + 546) * 1000.0));
  v3 = *(this + *(*this - 24) + 200);
  v4 = (v3 - (*(*this + 80))(this)) >> 4;
  return v2 == 1 || v4 > 0x36A;
}

uint64_t BlueFin::GlPeDops::GetDops(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v4 = v3;
  v6 = v5;
  v111 = v7;
  v113 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v2;
  v17 = v16;
  v163 = *MEMORY[0x29EDCA608];
  v18 = BlueFin::GlSetBase::Cnt(v11);
  if (v18 >= 12)
  {
    v19 = 12;
  }

  else
  {
    v19 = v18;
  }

  v20 = *v6;
  v21 = (v20 >> 3) & 1;
  v22 = 2000.0;
  if ((v20 & 0x10) != 0)
  {
    v22 = 10.0;
  }

  v23 = v4;
  v24 = fmaxf(v23, 10.0);
  if (v18 > 11)
  {
    v24 = 2000.0;
    LOBYTE(v21) = 0;
  }

  if ((v20 & 2) == 0)
  {
    v24 = 2000.0;
    LOBYTE(v21) = 0;
  }

  if ((v20 & 8) != 0)
  {
    v25 = v21;
  }

  else
  {
    v24 = v22;
    v25 = (v20 & 0x10) >> 4;
  }

  if ((v20 & 0x10) != 0)
  {
    v26 = v22;
  }

  else
  {
    v26 = v24;
  }

  if ((v20 & 0x10) != 0)
  {
    v27 = (v20 & 0x10) >> 4;
  }

  else
  {
    v27 = v25;
  }

  BlueFin::GlSetBase::operator=(v15 + 8, v12);
  v28 = *(v12 + 12);
  *(v15 + 36) = *(v12 + 28);
  *(v15 + 20) = v28;
  v29 = vdupq_n_s32(0x42C60000u);
  *(v15 + 60) = v29;
  *(v15 + 76) = v29.i64[0];
  *(v15 + 56) = v26;
  if (v18 > 2)
  {
    v31 = 0;
    *v117 = 0;
    v116[0] = 0;
    v32 = &v114;
    v33 = &v116[2];
    v34 = vdupq_n_s64(0x15uLL);
    do
    {
      v35 = vaddq_s64(vdupq_n_s64(v32), xmmword_298A41900);
      v36 = vorrq_s8(vdupq_n_s64(v31), xmmword_298A319D0);
      if (vmovn_s64(vcgtq_u64(v34, v36)).u8[0])
      {
        *(v33 - 1) = v35.i64[0];
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), v36)).i32[1])
      {
        *v33 = v35.i64[1];
      }

      v31 += 2;
      v32 += 42;
      v33 += 2;
    }

    while (v31 != 22);
    v108 = v19;
    v110 = v17;
    v37 = &v144 + 8;
    v144 = xmmword_298A436A0;
    v142 = &v145;
    v143 = &v146;
    v146 = 0;
    for (i = 1; i != 13; ++i)
    {
      v143[i] = v37;
      v37 += 64;
    }

    BlueFin::BigMatrix::Clone(&v142, 12, 8);
    v39 = *v6;
    LOBYTE(v150[0]) = *(v12 + 8);
    memcpy(&v151, *v12, 4 * LOBYTE(v150[0]));
    HIWORD(v150[0]) = 0;
    BYTE1(v150[0]) = 0;
    LODWORD(v150[1]) = v151;
    BlueFin::GlSetIterator::operator++(v150);
    if (BYTE1(v150[0]) != LOBYTE(v150[0]))
    {
      v56 = 0;
      while (1)
      {
        v57 = *(v15 + 88);
        LOBYTE(v160[0]) = BYTE2(v150[0]);
        if (!(*(*v57 + 128))(v57, v160, (v56 + 1), &v142))
        {
          break;
        }

        BlueFin::GlSetIterator::operator++(v150);
        if (BYTE1(v150[0]) == LOBYTE(v150[0]) || v56++ >= 0xB)
        {
          goto LABEL_57;
        }
      }

      if (v56)
      {
        goto LABEL_57;
      }
    }

    v160[0] = v161;
    v160[1] = 0xC00000000;
    memset(v161, 0, sizeof(v161));
    v162 = 0;
    *&v157 = v158;
    *(&v157 + 1) = 0xC00000000;
    memset(v158, 0, sizeof(v158));
    v159 = 0;
    v139[0] = v140;
    v139[1] = 0x800000000;
    memset(v140, 0, sizeof(v140));
    v141 = 0;
    v40 = *v111;
    v41 = *v113;
    v130[0] = v139;
    v130[1] = v10;
    v130[2] = v40;
    v131 = v41;
    v132 = 5;
    v133 = v39 & 0x20 | 0x81;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v138 = 0x4008000000000000;
    v126[0] = v160;
    v126[1] = &v157;
    v126[2] = &v142;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v123 = v125;
    v124 = 4;
    v125[1] = 0;
    v125[0] = 0;
    v42 = BlueFin::GlSetBase::Cnt(v12);
    if (v42 >= 0xC)
    {
      v43 = 12;
    }

    else
    {
      v43 = v42;
    }

    BlueFin::GlSetBase::SetAllLower(&v123, v43);
    for (j = 0; j != 168; j += 14)
    {
      v45 = &v150[j];
      *(v45 + 32) = 0;
      v45[9] = NAN;
      *(v45 + 20) = 575;
    }

    v118 = *(v12 + 8);
    memcpy(v122, *v12, 4 * v118);
    v120 = 0;
    v119 = 0;
    v121 = v122[0];
    BlueFin::GlSetIterator::operator++(&v118);
    if (v119 != v118)
    {
      v46 = 0;
      v47 = &v154[3] + 2;
      do
      {
        v48 = v120;
        v49 = v120;
        *(v47 - 50) = 0u;
        *(v47 - 30) = 0xFFFFFFFF00000000;
        *(v47 - 22) = -1;
        *(v47 - 1) = 0;
        *(v47 - 6) = 0;
        *(v47 - 34) = v14;
        if ((v49 - 189) >= 0xFFFFFF44)
        {
          v52 = v48;
          v53 = BlueFin::GlSvId::s_aucSvId2gnss[v48];
          if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v53] == 255)
          {
            v51 = 575;
            v50 = -1;
          }

          else
          {
            v50 = 0;
            v51 = BlueFin::GlSignalId::s_ausGnss2signalId[v53] + v52 - BlueFin::GlSvId::s_aucGnss2minSvId[v53];
          }
        }

        else
        {
          v50 = 0;
          v51 = 575;
        }

        *(v47 - 18) = v49;
        *(v47 - 14) = v50;
        *(v47 - 5) = v51;
        *(v47 - 2) = 1;
        BlueFin::GlSetIterator::operator++(&v118);
        if (v46 > 0xA)
        {
          break;
        }

        ++v46;
        v47 += 56;
      }

      while (v119 != v118);
    }

    if ((*(**(v15 + 88) + 16))(*(v15 + 88), v130, v126, v150, &v123))
    {
      v150[0] = 0.0;
      v151 = &v153;
      v152 = 8;
      v153 = 0u;
      *v154 = 0u;
      *&v154[5] = xmmword_298A41DA0;
      v155 = vdup_n_s32(0x42C60000u);
      v156 = 1120272384;
      BlueFin::stDops::operator=(v15, v150);
      v54 = v110;
      v55 = v15;
    }

    else
    {
LABEL_57:
      if (v108 <= 1)
      {
        v59 = 1;
      }

      else
      {
        v59 = v108;
      }

      v60 = &v116[1];
      v61 = (v143 + 1);
      do
      {
        v63 = *v61++;
        v62 = v63;
        v64 = v63[1];
        v65 = *v60++;
        v65[1] = v64;
        v66 = v62[3];
        v65[2] = v66;
        v67 = v62[7];
        v65[3] = v67;
        v68 = v62[5];
        v65[4] = v68;
        v69 = v62[8];
        v65[5] = v69;
        --v59;
      }

      while (v59);
      BlueFin::BigMatrix_F::ReShape(v115, v108, 5);
      if ((v27 & (v18 < 12)) == 1)
      {
        BlueFin::BigMatrix_F::AddRow(v115);
        *(v116[v117[0]] + 12) = 10.0 / v26;
      }

      v70 = *v6;
      if (*v6)
      {
        v71 = 5;
      }

      else
      {
        v71 = 4;
        BlueFin::BigMatrix_F::ReShape(v115, v117[0], 4);
      }

      v72 = 0;
      *v149 = 0;
      v147[0] = 0;
      v73 = &v141 + 4;
      v74 = &v148;
      v75 = vdupq_n_s64(0x15uLL);
      do
      {
        v76 = vaddq_s64(vdupq_n_s64(v73), xmmword_298A41900);
        v77 = vorrq_s8(vdupq_n_s64(v72), xmmword_298A319D0);
        if (vmovn_s64(vcgtq_u64(v75, v77)).u8[0])
        {
          *(v74 - 1) = v76.i64[0];
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x15uLL), v77)).i32[1])
        {
          *v74 = v76.i64[1];
        }

        v72 += 2;
        v73 += 168;
        v74 += 2;
      }

      while (v72 != 22);
      BlueFin::BigMatrix_F::mult_sym(&v142, 1, v115, v115);
      v78 = v149[1];
      if (v149[1] != v71)
      {
        DeviceFaultNotify("glpe_dops.cpp", 104, "Solve", "otHtH.GetColSize() == cNumStates");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_dops.cpp", 104, "otHtH.GetColSize() == cNumStates");
      }

      if (BlueFin::BigMatrix_F::choldci(&v142, v149[1], v150))
      {
        v109 = v70;
        v79 = 0;
        v80 = 0;
        v112 = v71;
        v81 = v160 + 4 * v71;
        v82 = &v147[v71 + 1];
        v83 = 1;
        v84 = v78 - v71;
        do
        {
          bzero(v160, 4 * v78);
          v85 = v79;
          v86 = v83;
          v87 = v80;
          do
          {
            if (v87 == v80)
            {
              v88 = 1.0;
            }

            else
            {
              v88 = 0.0;
            }

            if (v87)
            {
              v89 = v87 + 1;
              v90 = (v147[v87 + 1] + v85);
              v91 = v86;
              do
              {
                v92 = *v90--;
                v88 = v88 - (v92 * *(v160 + (v91-- - 2)));
              }

              while (v91 > 1);
            }

            else
            {
              v89 = 1;
            }

            *(v160 + v87) = v88 * v150[v87];
            ++v86;
            v85 += 4;
            v87 = v89;
          }

          while (v89 != v78);
          v93 = v82;
          v94 = v84;
          v95 = v81;
          v96 = v112;
          do
          {
            v97 = v96 - 1;
            v98 = *(v160 + v96 - 1);
            v99 = v93;
            v100 = v94;
            v101 = v95;
            if (v96 < v78)
            {
              do
              {
                v102 = *v99++;
                v103 = *(v102 + 4 * v96);
                LODWORD(v102) = *v101++;
                v98 = v98 - (v103 * *&v102);
                --v100;
              }

              while (v100);
            }

            *(v160 + v97) = v98 * v150[v97];
            --v95;
            ++v94;
            --v93;
            --v96;
          }

          while (v97 > v80);
          v158[v80 - 4] = *(v160 + v80);
          ++v80;
          ++v83;
          v79 += 4;
        }

        while (v80 != v78);
        v106.f32[0] = *&v157 + *(&v157 + 1);
        v104 = sqrtf(*(&v157 + 3));
        v105 = sqrtf(v158[0]);
        v106.i32[1] = v157;
        v107 = vdupq_n_s32(0x42C60000u);
        if ((v109 & 1) == 0)
        {
          v105 = 99.0;
        }

        v106.i64[1] = *(&v157 + 4);
        v55 = v15;
        *(v15 + 60) = vminnmq_f32(vsqrtq_f32(v106), v107);
        *(v15 + 76) = fminf(v104, 99.0);
        *(v15 + 80) = fminf(v105, 99.0);
      }

      else
      {
        v55 = v15;
      }

      v54 = v110;
    }

    return BlueFin::stDops::stDops(v54, v55);
  }

  else
  {

    return BlueFin::stDops::stDops(v17, v15);
  }
}

double BlueFin::GlPeTimeManager::GetSystemConversionUncUs(uint64_t a1, uint64_t a2)
{
  v3 = BlueFin::GlPeGnssTime::Gnss2TimeSystem(a2);
  ConversionTable = BlueFin::GlPeGnssTime::GetConversionTable((a1 + 2608));
  v5 = 0.0;
  if (v3 - 1 <= 1)
  {
    LOBYTE(v5) = *(a1 + 2589);
    v5 = *&v5;
  }

  return *(ConversionTable + 4 * v3 + 48) + v5 * 1000000.0;
}

uint64_t BlueFin::GlPeGnssTime::Gnss2TimeSystem(unsigned int a1)
{
  if (a1 >= 7)
  {
    DeviceFaultNotify("glpe_timemgr.cpp", 302, "Gnss2TimeSystem", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timemgr.cpp", 302, "0");
  }

  return dword_298A45EA0[a1];
}

unsigned __int8 *BlueFin::GlPeNavGnssBlocked::SetGnssBlockedStatus(unsigned __int8 *result, double *a2, float *a3)
{
  v4 = result;
  v5 = *(result + 40);
  if (a2[3] > 0.5)
  {
    ++v5;
  }

  v6 = v5;
  if (v5 >= 10)
  {
    v5 = 10;
  }

  *(result + 40) = v5;
  v7 = **a2;
  if ((v7 & 1) == 0 || (v8 = a2, v6 <= 9) && a3[14003] < 20.0)
  {
    *result = 0;
    *(result + 2) = 20;
    result[6] = 0;
    *(result + 1) = 0x271000000000;
    *(result + 10) = 0;
    *(result + 22) = 0;
    *(result + 8) = 0;
    *(result + 9) = 0;
    *(result + 7) = 0x3FF0000000000000;
    *(result + 12) = *a3;
    return result;
  }

  *result = 1;
  if ((v7 & 0x200) != 0 || !*(result + 1))
  {
    v9 = 0;
    result[1] = 0;
  }

  else
  {
    v9 = *(result + 1) - 1;
  }

  *(result + 1) = v9;
  if ((v7 & 2) != 0 || (v10 = 15.5, BlueFin::GlSetBase::Cnt((a3 + 46)) <= 1))
  {
    v10 = 19.5;
  }

  v55 = *(a3 + 192);
  memcpy(v59, *(a3 + 23), 4 * v55);
  v57 = 0;
  v56 = 0;
  v58 = v59[0];
  result = BlueFin::GlSetIterator::operator++(&v55);
  if (v56 == v55)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0.0;
    v17 = -4.0;
    v18 = 0.0;
    v19 = 0.0;
  }

  else
  {
    v50 = v8;
    v20 = 0;
    v15 = 0;
    v21 = 0;
    v51 = 0.0;
    v17 = -4.0;
    v19 = 0.0;
    v18 = 0.0;
    do
    {
      v22 = v57;
      if (v57 >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v23 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v57;
      v25 = v23[1];
      v52[0] = *v23;
      v24 = v52[0];
      v53 = v25;
      v54 = v57;
      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(a3, v52, 0, 0);
      v52[0] = v24;
      v53 = v25;
      v54 = v22;
      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(a3, v52, 0);
      if (MeMeas)
      {
        v28 = *(MeMeas + 29);
        if (v28 > 22.0)
        {
          ++v20;
        }

        v29 = *(PeMeas + 104);
        if (v28 > v10)
        {
          if (v29 > v21)
          {
            v21 = *(PeMeas + 104);
          }

          if (v15)
          {
              ;
            }

            while (i <= -3.14159265)
            {
              i = i + 6.28318531;
            }

            ++v15;
            v31 = i;
            if (v19 <= v31)
            {
              v19 = v31;
            }

            if (v18 >= v31)
            {
              v18 = v31;
            }
          }

          else
          {
            v32 = *(PeMeas + 106) * 0.0174532925;
            v51 = v32;
            v15 = 1;
          }
        }

        if (v29 > 10 && v28 > v17)
        {
          v17 = *(MeMeas + 29);
        }
      }

      result = BlueFin::GlSetIterator::operator++(&v55);
    }

    while (v56 != v55);
    v16 = v20;
    v14 = (v21 - 1) < 0x19u;
    v8 = v50;
  }

  v34 = *(v4 + 7);
  v35 = 0.949999988;
  if (v34 < v16)
  {
    v35 = 0.5;
  }

  *v11.i64 = v16 * (1.0 - v35) + v35 * v34;
  if (*v11.i64 < 1.0)
  {
    *v11.i64 = 1.0;
  }

  if (*v11.i64 > 24.0)
  {
    *v11.i64 = 24.0;
  }

  *(v4 + 7) = v11.i64[0];
  *v11.i64 = *v11.i64 * 0.200000003 + 0.5;
  *v13.i64 = *v11.i64 + trunc(*v11.i64 * 2.32830644e-10) * -4294967300.0;
  v36.f64[0] = NAN;
  v36.f64[1] = NAN;
  v37 = vnegq_f64(v36);
  v13.i64[0] = vbslq_s8(v37, v13, v11).u64[0];
  if (*v11.i64 > 4294967300.0)
  {
    v11.i64[0] = v13.i64[0];
  }

  if (*v11.i64 < -4294967300.0)
  {
    *v12.i64 = -*v11.i64;
    *v11.i64 = -(*v11.i64 - trunc(*v11.i64 * -2.32830644e-10) * -4294967300.0);
    *v11.i64 = -*vbslq_s8(v37, v11, v12).i64;
  }

  if (*v11.i64 < 0.0)
  {
    v38 = --*v11.i64;
  }

  else
  {
    LOBYTE(v38) = *v11.i64;
  }

  v39 = v38;
  if ((v38 & 0xFC) == 0)
  {
    v39 = 3;
  }

  v40 = **v8;
  if ((v40 & 0x10) == 0)
  {
    v39 = 3;
  }

  if (v15 <= 1u || !v14 || (v19 - v18) >= 0.663225116)
  {
    if (v39 <= v15 || v17 >= 40.0)
    {
      goto LABEL_65;
    }

LABEL_71:
    v41 = 1;
    goto LABEL_72;
  }

  if (v17 < 40.0)
  {
    goto LABEL_71;
  }

LABEL_65:
  v41 = 0;
LABEL_72:
  v43 = v41 ^ 1;
  if (v8[5] >= 4.0)
  {
    v43 = 1;
  }

  if (v17 <= 22.0)
  {
    v43 = 1;
  }

  v44 = v41 & v43;
  if ((v40 & 0x40) != 0 || !v44 || (v40 & 0x100) != 0)
  {
    v45 = *a3;
    *(v4 + 12) = *a3;
  }

  else
  {
    v45 = *(v4 + 12);
  }

  if ((v40 & 6) != 0)
  {
    v46 = 10000;
  }

  else
  {
    v46 = 3000;
  }

  *(v4 + 3) = v46;
  if (v45)
  {
    v47 = *(v8 + 4);
    if (v47 - v45 > v46)
    {
      v4[45] = 0;
      if ((v4[1] & 1) == 0)
      {
        *(v4 + 10) = v45;
        v48 = *(v8 + 1);
        *(v4 + 1) = *v48;
        *(v4 + 4) = *(v48 + 16);
        *(v4 + 4) = vextq_s8(*(v8 + 3), *(v8 + 3), 8uLL);
      }

      v4[1] = 1;
      if ((v40 & 2) != 0)
      {
        v49 = 35;
      }

      else if ((v40 & 4) != 0)
      {
        v49 = 25;
      }

      else if ((v40 & 0x20) != 0)
      {
        v49 = 10;
      }

      else
      {
        v49 = 6;
      }

      *(v4 + 1) = v49;
      *(v4 + 2) = v49;
      *(v4 + 2) = v47;
    }
  }

  v4[44] = v44;
  return result;
}

uint64_t BlueFin::GlPeKF::GetGllStartupType(BlueFin::GlPeKF *this)
{
  v1 = (this + 57288);
  v2 = *(*(this + 7631) + 36);
  if (!v2)
  {
    v2 = *v1;
    if (*v1)
    {
      if (*(v2 + 3008) != 1 || vaddvq_f64(vmulq_f64(*(v2 + 3040), *(v2 + 3040))) >= 160000.0)
      {
        return 0;
      }

      v3 = *(v2 + 3072);
      if (v3 > 3 || v3 == 1)
      {
        return 0;
      }

      else
      {
        return *((*(*(this + 2148) + 240))(this + 17184) + 1) ^ 1u;
      }
    }
  }

  return v2;
}

double BlueFin::GlPeNavGnssState::NormalizePos(BlueFin::GlPeNavGnssState *this)
{
  v1 = *(this + 1);
  v2 = 0x4056800000000000;
  if (v1 > 90.0 || (v2 = 0xC056800000000000, v1 < -90.0))
  {
    *(this + 1) = v2;
  }

  result = *(this + 2);
  if (fabs(result) > 180.0)
  {
    v4 = result / 360.0;
    if (result / 360.0 <= 0.0)
    {
      v5 = 0.0;
      if (result / 360.0 < 0.0)
      {
        v5 = ceil(v4 + -0.5);
      }
    }

    else
    {
      v5 = floor(v4 + 0.5);
    }

    result = result + v5 * -360.0;
    *(this + 2) = result;
  }

  return result;
}

uint64_t BlueFin::GlPeKF::resetDtsIfGood(uint64_t this, int8x16_t a2, int8x16_t a3)
{
  if (*(this + 57388) < 0x2EE1u)
  {
    v4 = *(this + 57396);
    if (v4 > 0x2EE0)
    {
      return this;
    }

    *(this + 57388) = v4;
    v3 = *(this + 57392);
  }

  else if (*(this + 61952))
  {
    v3 = 0;
  }

  else
  {
    a2.i64[0] = *(*(this + 60968) + 2632);
    if (*a2.i64 == 4294967300.0)
    {
      v5 = -1;
    }

    else if (*a2.i64 >= 0.5)
    {
      *a2.i64 = *a2.i64 + 0.5;
      *a3.i64 = *a2.i64 - trunc(*a2.i64 * 2.32830644e-10) * 4294967300.0;
      v6.f64[0] = NAN;
      v6.f64[1] = NAN;
      a3.i64[0] = vbslq_s8(vnegq_f64(v6), a3, a2).u64[0];
      if (*a2.i64 > 4294967300.0)
      {
        a2.i64[0] = a3.i64[0];
      }

      v5 = *a2.i64;
    }

    else
    {
      v5 = 1;
    }

    v3 = 0;
    *(this + 57388) = v5;
  }

  *(this + 57384) = v3;
  return this;
}

void BlueFin::GlPeFiltPos::UpdateFiltPos(uint64_t a1, int a2, __int128 *a3, uint64_t *a4, int a5, int a6, int a7, char a8)
{
  v233 = *MEMORY[0x29EDCA608];
  if (*(a3 + 7) <= 0.0)
  {
    return;
  }

  v230 = 0x200000002;
  __src = xmmword_298A436D0;
  v224 = xmmword_298A436E0;
  BlueFin::lla2ned((a1 + 16), a3, 0, v220);
  v16 = (a2 - *a1) * 0.001;
  v17 = *(a1 + 48);
  v18 = *(a1 + 60);
  v19 = sqrtf(v18);
  if (v19 >= v17)
  {
    v20 = v19;
  }

  else
  {
    v20 = *(a1 + 48);
  }

  v21 = *(a3 + 9);
  if (v21 >= 1000000.0)
  {
    v22 = fmaxf(v20, 20.0);
  }

  else
  {
    if (*(a3 + 8) >= v20)
    {
      v20 = *(a3 + 8);
    }

    v22 = sqrtf(v21);
    if (v22 < v20)
    {
      v22 = v20;
    }
  }

  v23 = sqrt(*(v220 + 1) * *(v220 + 1) + *v220 * *v220);
  v24 = *(a1 + 40) + (fmaxf(v22, 10.0) * v16);
  v25 = (v16 > 6.0) & ~a5 & (*(a3 + 64) ^ 1);
  v26 = *(a3 + 6);
  v27 = v26 * 3.0;
  if (v27 < 400.0)
  {
    v27 = 400.0;
  }

  if (a6)
  {
    v28 = 400.0;
    if (v26 >= 400.0)
    {
      v28 = *(a3 + 6);
    }

    if (!a7)
    {
      v26 = v28;
    }

    if (v24 >= v26)
    {
      v26 = v24;
    }

    v29 = v26 * 3.0;
    if (v29 < 200.0)
    {
      v29 = 200.0;
    }

    v30 = v23 > v29;
  }

  else
  {
    v30 = 0;
  }

  v31 = v24;
  v32 = *(a3 + 8);
  v33 = a5 & (v32 > 10.0);
  if (v21 >= 9.0)
  {
    v33 = 0;
  }

  v34 = v17 - v32;
  if (v34 < 0.0)
  {
    v34 = -v34;
  }

  v35 = sqrtf(v18 + fmaxf(v21, 9.0)) * 3.0;
  v36 = *(a1 + 32) - *(a3 + 2);
  if (v36 < 0.0)
  {
    v36 = -v36;
  }

  v37 = (sqrtf((*(a1 + 44) * *(a1 + 44)) + (*(a3 + 7) * *(a3 + 7))) * 3.0);
  v38 = v25 | v33;
  v39 = "";
  if (v25)
  {
    v40 = "T";
  }

  else
  {
    v40 = "";
  }

  if ((v38 & 1) == 0)
  {
    if (v27 < v31 || v30)
    {
      v40 = "";
      if (*(a3 + 65) != 1 || (a8 & 1) != 0)
      {
        goto LABEL_35;
      }

      if (v34 > v35 || v36 > v37)
      {
        goto LABEL_35;
      }
    }

    else if (v34 > v35 || v36 > v37)
    {
      v40 = "";
      goto LABEL_35;
    }

    v45 = 1;
    if (*a1)
    {
      goto LABEL_47;
    }

LABEL_71:
    LOBYTE(v46) = *(a3 + 64);
    goto LABEL_72;
  }

LABEL_35:
  v41 = "U";
  if (v27 >= v31)
  {
    v41 = "";
  }

  if (v30)
  {
    v42 = "P";
  }

  else
  {
    v42 = "";
  }

  v43 = "M";
  if (!a7)
  {
    v43 = "";
  }

  v44 = "S";
  if (v34 <= v35)
  {
    v44 = "";
  }

  if (v36 > v37)
  {
    v39 = "A";
  }

  GlCustomLog(14, "Reset GlPeFiltPos %s%s%s%s%s%s\n", v40, v41, v42, v43, v44, v39);
  GlCustomLog(15, "GlPeFiltPos:fdt,%.1f;dPosDif,%.1f;fHorzUncProp,%.1f;m_fPosSigma,%.1f;\n", v16, v23, v31, *(a3 + 6));
  v45 = 0;
  if (!*a1)
  {
    goto LABEL_71;
  }

LABEL_47:
  v46 = *(a3 + 64);
  if ((v45 & *(a1 + 8) & 1) == 0)
  {
LABEL_72:
    *a1 = a2;
    *(a1 + 16) = *a3;
    v55 = *(a3 + 2);
    *(a1 + 32) = v55;
    *&v56 = *(a3 + 3);
    DWORD2(v56) = *(a3 + 8);
    v57 = vmul_f32(*&v56, *&v56);
    v58 = *(a3 + 10);
    *(&v56 + 3) = v58;
    *(a1 + 40) = v56;
    *(a1 + 56) = 0;
    v59 = *(a3 + 9);
    if (v46)
    {
      v59 = 0.1;
    }

    *(a1 + 60) = v59;
    *(a1 + 68) = v59;
    *(a1 + 64) = *(a3 + 11);
    *(a1 + 96) = 0;
    *(a1 + 120) = 0;
    *(a1 + 88) = v57.f32[0];
    v60 = v59;
    *(a1 + 128) = v60;
    *(a1 + 232) = 0;
    *(a1 + 256) = 0;
    *(a1 + 216) = 0x200000002;
    *(a1 + 224) = v57.f32[0];
    *(a1 + 264) = v60;
    *(a1 + 368) = 0;
    *(a1 + 392) = 0;
    *(a1 + 488) = 0x200000002;
    *(a1 + 352) = 0x200000002;
    *(a1 + 360) = v57.f32[1];
    *(a1 + 400) = v60;
    *(a1 + 72) = *(a3 + 12);
    v61 = *(a3 + 52);
    *(a1 + 76) = vrev64_s32(v61);
    v62 = *(a3 + 15);
    *(a1 + 84) = v62;
    *(a1 + 504) = 0;
    *(a1 + 528) = 0;
    *(a1 + 624) = 0x200000002;
    *(a1 + 496) = vmul_f32(v61, v61).f32[0];
    *(a1 + 536) = v62;
    v63 = 0;
    if (*(a3 + 6) < 200.0)
    {
      *(a1 + 8) = 1;
    }

    goto LABEL_103;
  }

  v47 = __sincosf_stret(*(a1 + 52));
  v220[0] = __src;
  v220[1] = v223;
  v220[2] = v224;
  v220[3] = v225;
  v221 = 0x200000002;
  v217[0] = 0u;
  v218 = 0u;
  v48 = *(a1 + 4);
  v219 = 0x200000002;
  v49 = (a2 - v48) * 0.001;
  if (!v48)
  {
    v49 = v16;
  }

  v50 = *(a3 + 65);
  if (v50 == 1 && (v46 & 1) == 0 || (*a1 = a2, ((v50 | v46) & 1) == 0) || (v64 = 0.0, v49 > 1.0))
  {
    if ((a5 & 1) == 0)
    {
      *(v220 + 1) = v49;
    }

    *&v217[0] = 0x3FE0000000000000;
    *(&v218 + 1) = 0x4000000000000000;
    v51 = *(a3 + 17);
    if (v51 == 4)
    {
      v52 = 10.0;
    }

    else
    {
      if (v51 != 2)
      {
LABEL_81:
        v64 = v49;
        goto LABEL_82;
      }

      v52 = 3.0;
    }

    *v217 = v52;
    *(&v218 + 1) = v52;
    goto LABEL_81;
  }

LABEL_82:
  v215 = *(a1 + 16);
  v216 = *(a1 + 32);
  v65 = *(a1 + 48);
  v66 = (v47.__sinval * v65);
  v67 = *(a1 + 56);
  v143 = (v47.__cosval * v65);
  v68 = v67;
  v206 = v64 * v143;
  v207 = v64 * v66;
  v208 = v64 * v67;
  BlueFin::ned2lla(&v215, &v206, &v212);
  v69 = *(&v212 + 1);
  v70 = v212;
  v215 = v212;
  v55 = v213;
  v216 = v213;
  LODWORD(v71) = *(a1 + 72);
  v72 = *(a1 + 76);
  v73 = *&v71 + v72;
  v214 = 0;
  BlueFin::Matrix::mult(&v212, (a1 + 88), 1, v220, v71);
  BlueFin::Matrix::mult(a1 + 88, v220, &v212);
  BlueFin::Matrix::operator+=(a1 + 88, v217);
  v74 = (a1 + 224);
  BlueFin::Matrix::mult(&v212, (a1 + 224), 1, v220, v75);
  v76 = BlueFin::Matrix::mult(a1 + 224, v220, &v212);
  BlueFin::Matrix::operator+=(v76, v217);
  v77 = (a1 + 360);
  BlueFin::Matrix::mult(&v212, (a1 + 360), 1, v220, v78);
  v79 = BlueFin::Matrix::mult(a1 + 360, v220, &v212);
  BlueFin::Matrix::operator+=(v79, v217);
  v80 = (a1 + 496);
  BlueFin::Matrix::mult(&v212, (a1 + 496), 1, v220, v81);
  v82 = BlueFin::Matrix::mult(a1 + 496, v220, &v212);
  BlueFin::Matrix::operator+=(v82, v217);
  *(a1 + 4) = a2;
  if ((*(a3 + 65) & 1) == 0)
  {
    v207 = 0.0;
    v209 = 0;
    v84 = (*(a3 + 6) * *(a3 + 6));
    v206 = v84;
    v85 = *(a3 + 9);
    v211 = 0x200000002;
    v210 = v85;
    v203[1] = 0.0;
    v203[4] = 0.0;
    v203[0] = v84;
    v205 = 0x200000002;
    v204 = v85;
    if (*(a3 + 64) == 1)
    {
      v206 = v84 * 5.0;
      v210 = v85 * 5.0;
      v203[0] = v84 * 5.0;
      v204 = v85 * 5.0;
    }

    v197[1] = 0.0;
    v198 = v232;
    v199 = 0;
    v201 = v231;
    v86 = *(a3 + 7) * *(a3 + 7);
    v192 = v232;
    v191[1] = 0.0;
    v193 = 0;
    v195 = v231;
    v202 = 0x200000002;
    v197[0] = v86;
    v87 = *(a3 + 14);
    v191[0] = (*(a3 + 13) * *(a3 + 13));
    v88 = *(a3 + 15);
    v196 = 0x200000002;
    v194 = v88;
    v200 = v85;
    v89 = __sincosf_stret(*(a3 + 10));
    v189 = *a3;
    v190 = *(a3 + 2);
    v90 = *(a3 + 8);
    v91 = (v89.__cosval * v90);
    v92 = (v89.__sinval * v90);
    BlueFin::lla2ned(&v189, &v215, 0, v188);
    *v187 = v188[0];
    *&v187[1] = v91 - v143;
    v187[16] = 0x200000001;
    *v186 = v188[1];
    *&v186[1] = v92 - v66;
    v186[16] = 0x200000001;
    *v185 = v188[2];
    *&v185[1] = 0.0 - v68;
    v185[16] = 0x200000001;
    v93 = *(a3 + 12);
    v94 = v93 - v73;
    v95 = (v93 - v73);
    if (v95 <= 149896.229)
    {
      if (v95 >= -149896.229)
      {
LABEL_91:
        v98 = (v87 - *(a1 + 76));
        v184[0] = v94;
        v184[1] = v98;
        *&v184[16] = 0x200000001;
        v99 = *(a1 + 216);
        if (v99)
        {
          memcpy(&__dst, (a1 + 88), 32 * v99);
        }

        v183 = __PAIR64__(*(a1 + 220), v99);
        BlueFin::Matrix::operator+=(&__dst, &v206);
        v173[16] = 0x200000002;
        v173[0] = *(&v177 + 1);
        *&v173[1] = -*(&__dst + 1);
        *&v173[4] = -*&v177;
        v173[5] = __dst;
        BlueFin::Matrix::operator/=(v173, *&__dst * *(&v177 + 1) - *(&__dst + 1) * *&v177);
        BlueFin::Matrix::operator*(a1 + 88, v173, v174);
        if (&__dst != v74)
        {
          v100 = *(a1 + 304);
          v179 = *(a1 + 288);
          v180 = v100;
          v101 = *(a1 + 336);
          v181 = *(a1 + 320);
          v182 = v101;
          v102 = *(a1 + 240);
          __dst = *v74;
          v176 = v102;
          v103 = *(a1 + 272);
          v177 = *(a1 + 256);
          v178 = v103;
          v183 = *(a1 + 352);
        }

        BlueFin::Matrix::operator+=(&__dst, v203);
        v172[16] = 0x200000002;
        v172[0] = *(&v177 + 1);
        *&v172[1] = -*(&__dst + 1);
        *&v172[4] = -*&v177;
        v172[5] = __dst;
        BlueFin::Matrix::operator/=(v172, *&__dst * *(&v177 + 1) - *(&__dst + 1) * *&v177);
        BlueFin::Matrix::operator*(a1 + 224, v172, v173);
        if (&__dst != v77)
        {
          v104 = *(a1 + 440);
          v179 = *(a1 + 424);
          v180 = v104;
          v105 = *(a1 + 472);
          v181 = *(a1 + 456);
          v182 = v105;
          v106 = *(a1 + 376);
          __dst = *v77;
          v176 = v106;
          v107 = *(a1 + 408);
          v177 = *(a1 + 392);
          v178 = v107;
          v183 = *(a1 + 488);
        }

        BlueFin::Matrix::operator+=(&__dst, v197);
        v171[16] = 0x200000002;
        v171[0] = *(&v177 + 1);
        *&v171[1] = -*(&__dst + 1);
        *&v171[4] = -*&v177;
        v171[5] = __dst;
        BlueFin::Matrix::operator/=(v171, *&__dst * *(&v177 + 1) - *(&__dst + 1) * *&v177);
        BlueFin::Matrix::operator*(a1 + 360, v171, v172);
        if (&__dst != v80)
        {
          v108 = *(a1 + 576);
          v179 = *(a1 + 560);
          v180 = v108;
          v109 = *(a1 + 608);
          v181 = *(a1 + 592);
          v182 = v109;
          v110 = *(a1 + 512);
          __dst = *v80;
          v176 = v110;
          v111 = *(a1 + 544);
          v177 = *(a1 + 528);
          v178 = v111;
          v183 = *(a1 + 624);
        }

        BlueFin::Matrix::operator+=(&__dst, v191);
        v170 = 0x200000002;
        v167[0] = *(&v177 + 1);
        *&v167[1] = -*(&__dst + 1);
        v168 = -*&v177;
        v169 = __dst;
        BlueFin::Matrix::operator/=(v167, *&__dst * *(&v177 + 1) - *(&__dst + 1) * *&v177);
        BlueFin::Matrix::operator*(a1 + 496, v167, v171);
        v113 = BlueFin::Matrix::mult(v167, v174, 1, v187, v112);
        v114 = BlueFin::Matrix::mult(v166, v173, 1, v186, v113);
        v115 = BlueFin::Matrix::mult(v165, v172, 1, v185, v114);
        BlueFin::Matrix::mult(v164, v171, 1, v184, v115);
        v116 = v230;
        if (v230)
        {
          memcpy(&v154, &__src, 32 * v230);
        }

        v117 = HIDWORD(v230);
        v162 = v116;
        v163 = HIDWORD(v230);
        BlueFin::Matrix::operator-=(&v154, v174);
        BlueFin::Matrix::operator*(&v154, a1 + 88, &v145);
        v118 = v150;
        *(a1 + 152) = v149;
        *(a1 + 168) = v118;
        *(a1 + 184) = v151;
        *(a1 + 200) = v152;
        v119 = v146;
        *(a1 + 88) = v145;
        *(a1 + 104) = v119;
        v120 = v148;
        *(a1 + 120) = v147;
        *(a1 + 136) = v120;
        *(a1 + 216) = v153;
        v160 = v228;
        v161 = v229;
        v158 = v226;
        v159 = v227;
        v156 = v224;
        v157 = v225;
        v154 = __src;
        v155 = v223;
        v162 = v116;
        v163 = v117;
        BlueFin::Matrix::operator-=(&v154, v173);
        BlueFin::Matrix::operator*(&v154, a1 + 224, &v145);
        v121 = v150;
        *(a1 + 288) = v149;
        *(a1 + 304) = v121;
        v122 = v152;
        *(a1 + 320) = v151;
        *(a1 + 336) = v122;
        v123 = v146;
        *v74 = v145;
        *(a1 + 240) = v123;
        v124 = v148;
        *(a1 + 256) = v147;
        *(a1 + 272) = v124;
        *(a1 + 352) = v153;
        v160 = v228;
        v161 = v229;
        v158 = v226;
        v159 = v227;
        v156 = v224;
        v157 = v225;
        v154 = __src;
        v155 = v223;
        v162 = v116;
        v163 = v117;
        BlueFin::Matrix::operator-=(&v154, v172);
        BlueFin::Matrix::operator*(&v154, a1 + 360, &v145);
        v125 = v150;
        *(a1 + 424) = v149;
        *(a1 + 440) = v125;
        v126 = v152;
        *(a1 + 456) = v151;
        *(a1 + 472) = v126;
        v127 = v146;
        *v77 = v145;
        *(a1 + 376) = v127;
        v128 = v148;
        *(a1 + 392) = v147;
        *(a1 + 408) = v128;
        *(a1 + 488) = v153;
        v160 = v228;
        v161 = v229;
        v158 = v226;
        v159 = v227;
        v156 = v224;
        v157 = v225;
        v154 = __src;
        v155 = v223;
        v162 = v116;
        v163 = v117;
        BlueFin::Matrix::operator-=(&v154, v171);
        BlueFin::Matrix::operator*(&v154, a1 + 496, &v145);
        v129 = v150;
        *(a1 + 560) = v149;
        *(a1 + 576) = v129;
        v130 = v152;
        *(a1 + 592) = v151;
        *(a1 + 608) = v130;
        v131 = v146;
        *v80 = v145;
        *(a1 + 512) = v131;
        v132 = v148;
        *(a1 + 528) = v147;
        *(a1 + 544) = v132;
        *(a1 + 624) = v153;
        v144[0] = *v167;
        v144[1] = *v166;
        v144[2] = *v165;
        BlueFin::ned2lla(&v215, v144, &v145);
        v69 = *(&v145 + 1);
        v70 = v145;
        v55 = v146;
        v83 = v168 + v143;
        v66 = *&v166[4] + v66;
        v133 = v164[0];
        v73 = v73 + v133;
        v134 = v164[4];
        v72 = v72 + v134;
        v67 = *&v165[4] + v68;
        goto LABEL_102;
      }

      v96 = v73;
      v97 = -299792.458;
    }

    else
    {
      v96 = v73;
      v97 = 299792.458;
    }

    v73 = v96 + v97;
    v94 = v93 - v73;
    goto LABEL_91;
  }

  v83 = v143;
LABEL_102:
  *(a1 + 16) = v70;
  *(a1 + 24) = v69;
  v135.f64[0] = *(a1 + 88) + *(a1 + 224);
  v135.f64[1] = *v77;
  *(a1 + 32) = v55;
  *(a1 + 40) = vcvt_f32_f64(vsqrtq_f64(v135));
  *v135.f64 = sqrt(v83 * v83 + v66 * v66);
  *(a1 + 48) = LODWORD(v135.f64[0]);
  v58 = atan2(v66, v83);
  *(a1 + 52) = v58;
  *(a1 + 56) = v67;
  v136 = *(a1 + 128) + *(a1 + 264);
  *(a1 + 60) = v136;
  *(a1 + 64) = 0;
  v137 = *(a1 + 400);
  *(a1 + 68) = v137;
  *(a1 + 72) = v73;
  v138 = sqrt(*(a1 + 496));
  *(a1 + 76) = v72;
  *(a1 + 80) = v138;
  v139 = *(a1 + 536);
  *(a1 + 84) = v139;
  v63 = 1;
LABEL_103:
  v140 = *a4;
  *v140 = *(a1 + 16);
  *(v140 + 16) = v55;
  *a4[1] = v58;
  *a4[3] = *(a1 + 48);
  *a4[2] = *(a1 + 72);
  if (*(a3 + 65) == 1)
  {
    v141 = a4[4];
    *v141 = *(a1 + 40) * 1.5;
    *a4[5] = *(a1 + 44);
    v142 = *v141;
  }

  else
  {
    v142 = *a4[4];
    if (v63)
    {
      if (v142 >= (*(a1 + 40) * 1.5))
      {
        v142 = *(a1 + 40) * 1.5;
      }
    }
  }

  *a4[6] = v142;
}

uint64_t BlueFin::Matrix::mult(uint64_t this, const BlueFin::Matrix *a2, const BlueFin::Matrix *a3)
{
  v3 = *(a2 + 33);
  if (v3 != *(a3 + 32))
  {
    DeviceFaultNotify("glpe_matrix.cpp", 322, "mult", "mLeft.m_NbCols == mRight.m_NbRows");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 322, "mLeft.m_NbCols == mRight.m_NbRows");
  }

  v4 = *(a2 + 32);
  v5 = *(a3 + 33);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if (v5 >= 1)
      {
        v7 = 0;
        v8 = a3;
        do
        {
          v9 = 0.0;
          if (v3 >= 1)
          {
            v10 = a2;
            v11 = v8;
            v12 = v3;
            do
            {
              v13 = *v10;
              v10 = (v10 + 8);
              v14 = v13;
              v15 = *v11;
              v11 += 4;
              v9 = v9 + v14 * v15;
              --v12;
            }

            while (v12);
          }

          *(this + 32 * i + 8 * v7++) = v9;
          v8 = (v8 + 8);
        }

        while (v7 != v5);
      }

      a2 = (a2 + 32);
    }
  }

  *(this + 128) = v4;
  *(this + 132) = v5;
  return this;
}

uint64_t BlueFin::Matrix::operator-=(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 132);
  if (v2 != *(result + 132) || (v3 = *(a2 + 128), v3 != *(result + 128)))
  {
    DeviceFaultNotify("glpe_matrix.cpp", 500, "operator-=", "otMatrix.m_NbCols == m_NbCols && otMatrix.m_NbRows == m_NbRows");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 500, "otMatrix.m_NbCols == m_NbCols && otMatrix.m_NbRows == m_NbRows");
  }

  if (v3 >= 1)
  {
    v4 = 0;
    v5 = result;
    do
    {
      v6 = a2;
      v7 = v5;
      v8 = v2;
      if (v2 >= 1)
      {
        do
        {
          v9 = *v6++;
          *v7 = *v7 - v9;
          ++v7;
          --v8;
        }

        while (v8);
      }

      ++v4;
      v5 += 32;
      a2 += 32;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t BlueFin::GlPeSlowFilter::SubmitAltEst(uint64_t this, double a2, double a3, double a4, double a5, int a6)
{
  if (a6 && (a2 < -998.0 || a3 <= 0.0))
  {
    return this;
  }

  if (a3 <= 0.0)
  {
    v13 = "fVarAltM2 > 0.0";
    DeviceFaultNotify("glpe_slowfilter.cpp", 81, "SubmitAltEst", "fVarAltM2 > 0.0");
    v14 = 81;
    goto LABEL_22;
  }

  if (a4 < 0.0 || a4 > 1.0)
  {
    v13 = "dCoeff >= 0.0 && dCoeff <= 1.0";
    DeviceFaultNotify("glpe_slowfilter.cpp", 82, "SubmitAltEst", "dCoeff >= 0.0 && dCoeff <= 1.0");
    v14 = 82;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_slowfilter.cpp", v14, v13);
  }

  v7 = 32;
  if (a6)
  {
    v7 = 64;
  }

  *(this + v7) = a2 * a4 + (1.0 - a4) * *(this + v7);
  if (a6)
  {
    v8 = 72;
  }

  else
  {
    v8 = 40;
  }

  v9 = a4 * a4 * a3 + (1.0 - a4) * (1.0 - a4) * (*(this + v8) * *(this + v8) + a5);
  if (v9 >= a3)
  {
    v9 = a3;
  }

  v10 = sqrt(v9);
  v11 = v9 < 9.0;
  v12 = 3.0;
  if (!v11)
  {
    v12 = v10;
  }

  *(this + v8) = v12;
  return this;
}

uint64_t BlueFin::GlPeGeoid::Compute(BlueFin::GlPeGeoid *this, float a2, float a3, float a4, float *a5, float *a6, int a7)
{
  *a5 = 0.0;
  if ((*this & 1) != 0 || (v14 = *(this + 1), v14 == 0.0))
  {
    *this = 0;
LABEL_4:
    BlueFin::GlPeGeoid::get(this, a2, a3);
    *a5 = v15;
    *(this + 3) = a3;
    *(this + 4) = v15;
    *(this + 2) = a2;
    v16 = 1;
    goto LABEL_5;
  }

  if (vabds_f32(a2, *(this + 2)) >= v14 || vabds_f32(a3, *(this + 3)) >= v14)
  {
    goto LABEL_4;
  }

  v16 = 0;
  *a5 = *(this + 4);
LABEL_5:
  Region = BlueFin::GlPeLatLonRegionSet::findRegion((this + 24), a2, a3);
  *(this + 1) = Region >= 0;
  v18 = a4 - *a5;
  if (Region >= 0)
  {
    v19 = 1;
  }

  else
  {
    v19 = a7;
  }

  if (v18 >= 0.0)
  {
    v19 = 1;
  }

  if (!v19)
  {
    v18 = 0.0;
  }

  *a6 = v18;
  return v16;
}

double BlueFin::GlPeKF::FirstFixSetPosSource(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = a1 + 57156;
  if (*(a1 + 189) == 1)
  {
    *(a2 + 96) = 0;
    v5 = *(a1 + 57288);
    if (v5 && *(v5 + 3008) == 1)
    {
      result = vaddvq_f64(vmulq_f64(*(v5 + 3040), *(v5 + 3040)));
      if (result < 160000.0)
      {
        *(a2 + 96) = 4;
      }
    }

    *(a2 + 1076) = 2;
    return result;
  }

  if (!*(a1 + 57160))
  {
    v15 = *(a1 + 57288);
    if (v15)
    {
      if (*(v15 + 3008) == 1 && vaddvq_f64(vmulq_f64(*(v15 + 3040), *(v15 + 3040))) < 160000.0)
      {
        *(a1 + 57160) = 2;
        *(*(a1 + 61032) + 3008) = 0;
      }
    }
  }

  PosHulaSource = BlueFin::GlPeKF::GetPosHulaSource(a1, (a1 + 17184));
  v10 = PosHulaSource;
  *(a2 + 96) = PosHulaSource;
  if (a3[504] == 1)
  {
    v11 = *(v4 + 132);
    if (v11 && *(v11 + 3008) == 1 && vaddvq_f64(vmulq_f64(*(v11 + 3040), *(v11 + 3040))) < 160000.0 || *(a1 + 11224) == 1)
    {
      *(a2 + 96) = PosHulaSource | 4;
      v12 = BlueFin::GlSetBase::Cnt((a3 + 24));
      if ((a3[508] & 1) == 0 && v12)
      {
        *(a2 + 96) = v10 | 5;
      }

      v13 = **(v4 + 3852);
      if (v11)
      {
        *(v11 + 3009) = 1;
      }

      *(v4 + 56) = v13;
      *(v4 + 9) = 1;
      *v4 = 0x100000001;
    }

    goto LABEL_30;
  }

  if (*(a2 + 8) == 1)
  {
    v14 = *(a3 + 3);
    if (!*v14)
    {
      v16 = a3[32];
      if (v16 < 2)
      {
        goto LABEL_30;
      }

      v17 = v16 - 1;
      v18 = v14 + 1;
      while (!*v18++)
      {
        if (!--v17)
        {
          goto LABEL_30;
        }
      }
    }

    *(a2 + 96) = PosHulaSource | 2;
  }

LABEL_30:
  *(a2 + 100) = BlueFin::GlPeKF::GetPosConfidence(a1);
  v33 = 0;
  v32 = 0;
  (*(*(a1 + 17184) + 216))(a1 + 17184, &v33, &v32, a1 + 61476, a1 + 61477);
  v20 = *((*(*(a1 + 17184) + 240))(a1 + 17184) + 1);
  IsVdrValid = BlueFin::GlPeKF::IsVdrValid(a1);
  if (BlueFin::GlPeExtLoc::GetExtSensStatus(a1 + 57152, v28, v20, IsVdrValid, *(a1 + 184)))
  {
    v22 = v28[1];
    *(a2 + 800) = v28[0];
    *(a2 + 816) = v22;
    v23 = v28[3];
    *(a2 + 832) = v28[2];
    *(a2 + 848) = v23;
    *(a2 + 912) = v31;
    result = *&v29;
    v24 = v30;
    *(a2 + 880) = v29;
    *(a2 + 896) = v24;
    *(a2 + 864) = v28[4];
    if (*(v4 + 124) == 1)
    {
      v25 = *(v4 + 132);
      if (v25)
      {
        if (*(v25 + 3008) == 1)
        {
          result = vaddvq_f64(vmulq_f64(*(v25 + 3040), *(v25 + 3040)));
          if (result < 160000.0 && (*(v25 + 3072) - 2) <= 3)
          {
            v26 = *(v4 + 3876);
            v27 = *(v26 + 3032);
            *(a1 + 57216) = *(v26 + 3016);
            *(v4 + 76) = v27;
            result = *(v26 + 3064);
            *(v4 + 100) = *(v26 + 3040);
            *(v4 + 116) = result;
            *(v4 + 84) = **(v4 + 3852);
          }
        }
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPeKF::GetPosHulaSource(uint64_t a1, uint64_t *a2)
{
  v4 = a1 + 57156;
  v5 = *a2;
  v6 = a2 + *(*a2 - 24);
  v7 = BlueFin::GlSetBase::Cnt((v6 + 264));
  LOBYTE(v6) = BlueFin::GlSetBase::Cnt((v6 + 352));
  v8 = (*(v5 + 72))(a2);
  v27 = 0;
  v26 = 0;
  (*(*a2 + 216))(a2, &v27, &v26, a1 + 61476, a1 + 61477);
  if (!(v7 | v6) && (v8 >= v27 || (*(*a2 + 56))(a2) < 2) || (*(v4 + 52) & 1) != 0)
  {
    v9 = 0;
  }

  else if (v7 < v26)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = *(a2 + *(*a2 - 24) + 256);
  v11 = (16 * v10) & 0x80 | v9 | (v10 << 6) & 0x100;
  if (*(v4 + 12) == 1)
  {
    v12 = v11 | 0x220;
  }

  else if (*(a1 + 61476) == 1)
  {
    v12 = v11 | 0x200;
  }

  else if (*(a1 + 61477))
  {
    v12 = v11 | 0x20;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v4 + 132);
  if (v13)
  {
    if (*(v13 + 3228))
    {
      v12 |= 0x20000u;
    }

    if (*(v13 + 3229))
    {
      v12 |= 0x40000u;
    }

    if (*(v13 + 1162) == 1)
    {
      if (*(v4 + 11))
      {
        v14 = 8;
      }

      else
      {
        v14 = 16;
      }

      v12 |= v14;
    }

    if (*(v13 + 4224) == 1 && (*(v13 + 4226) & 1) == 0)
    {
      if (*(v13 + 4220) <= 3)
      {
        v15 = 64;
      }

      else
      {
        v15 = 0x100000;
      }

      v12 |= v15;
    }

    if (*(v13 + 4272))
    {
      v12 |= 0x4000u;
    }
  }

  if (*(v4 + 13))
  {
    v16 = v12 | 0x800000;
  }

  else
  {
    v16 = v12;
  }

  if (*(*(v4 + 276) + 1804))
  {
    v17 = v16 | 0x400000;
  }

  else
  {
    v17 = v16;
  }

  if ((*(*(a1 + 17184) + 48))())
  {
    v18 = v17 | 0x200000;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v4 + 132);
  if (v19 && *(v19 + 3008) == 1 && vaddvq_f64(vmulq_f64(*(v19 + 3040), *(v19 + 3040))) < 160000.0)
  {
    v20 = *(v19 + 3009);
    v21 = (v20 & 1) != 0 || *(v4 + 4) == 2;
    v24 = (*(*a2 + 56))(a2);
    if (v21)
    {
      if (v20)
      {
        v18 = v18 | 4;
        v23 = 1;
        *(v4 + 4) = 1;
        goto LABEL_62;
      }

      return v18;
    }

    v18 = v18 | 0x8000;
    v23 = 4;
    *(v4 + 4) = 4;
    if (v24 != 1)
    {
      goto LABEL_62;
    }

    goto LABEL_60;
  }

  v22 = *(v4 + 4);
  if (v22 != 2)
  {
    if (v22 != 4)
    {
      return v18;
    }

    v18 = v18 | 0x8000;
    if ((*(*a2 + 56))(a2) != 1)
    {
LABEL_61:
      v23 = 4;
      goto LABEL_62;
    }

LABEL_60:
    if (*v4 == 1)
    {
      return v18;
    }

    goto LABEL_61;
  }

  v18 = v18 | 0x10000;
  if ((*(*a2 + 56))(a2) != 1 || *v4 != 1)
  {
    v23 = 2;
LABEL_62:
    *v4 = v23;
  }

  return v18;
}

uint64_t BlueFin::GlPeNavGnssKF::GetTimeSinceFullFixMs(BlueFin::GlPeNavGnssKF *this)
{
  v1 = *(this + 402);
  if (v1)
  {
    return (*(this + *(*this - 24) + 200) - v1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t BlueFin::GlPeNavGnssKF::GetInfoForPosHulaSource(uint64_t this, unsigned int *a2, unsigned __int8 *a3, BOOL *a4, BOOL *a5)
{
  *a2 = 5000;
  v5 = *(this + 2272);
  if (*(v5 + 2) < 1 || *(v5 + 45))
  {
    if (*(*(this + 2248) + 1989))
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v6 = *(this + 1800);
    }
  }

  else
  {
    LOBYTE(v6) = 5;
  }

  *a3 = v6;
  *a4 = *(this + 2168);
  *a5 = *(this + 2169);
  return this;
}

uint64_t BlueFin::GlPeKfPool::AdjustBc(BlueFin::GlPeKfPool *this, float a2)
{
  v3 = *(this + 4659);
  v4 = (**v3)(v3, a2);
  if (v4)
  {
    v5 = 0;
    v6 = this + 37248;
    do
    {
      v7 = *&v6[v5];
      if (v7 != v3 && ((*v7)[48])(v7))
      {
        v8 = *&v6[v5] + *(**&v6[v5] - 24);
        *(v8 + 88) = *(v8 + 88) + v4 * 299792.458;
      }

      v5 += 8;
    }

    while (v5 != 24);
    *(this + *(*this - 24) + 88) = *(*(*v3 - 3) + v3 + 88);
  }

  return v4;
}

uint64_t BlueFin::GlPeMsmtMgr::Adjust_IntPr(uint64_t this, int a2)
{
  v2 = *(this + 18792);
  v7 = v2 + 1152;
  v8 = *(v2 + 1186) + 1;
  if (*(v2 + 1184) > v8)
  {
    v4 = this;
    do
    {
      BlueFin::GlSignalIdArrayIterator::Next(&v6, &v7);
      this = BlueFin::GlSignalIdArray::Get(*(v4 + 18792), &v6);
      v5 = *(this + 232);
      if (v5 != -1)
      {
        *(this + 232) = v5 + a2;
      }
    }

    while (v8 < *(v7 + 32));
  }

  return this;
}

uint64_t BlueFin::GlPePosReport::GlPePosReport(uint64_t a1, unsigned int a2, int a3, int a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, float a13)
{
  *a1 = &unk_2A1F130E0;
  if (a2)
  {
    v24 = a2;
  }

  else
  {
    v24 = *(a8 + 2568);
  }

  if (v24 <= 0xFF9222FE)
  {
    v25 = v24;
  }

  else
  {
    v25 = v24;
  }

  BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(a8, 0, 1, v49, v25);
  v26 = BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(a8, 2u, 1, &v44, v25);
  *(a1 + 8) = v24;
  *(a1 + 16) = v49[0];
  LODWORD(v26) = v50;
  LOWORD(v27) = v51;
  *&v28 = v27 * 0.000001;
  v29 = *&v28 + *&v26 * 0.001;
  LOWORD(v28) = v52;
  *&v30 = v28;
  *(a1 + 24) = v29 + *&v30 * 0.000000001;
  *(a1 + 32) = v44;
  v31 = vuzp1_s8(v45, v45);
  *(a1 + 34) = v31;
  LOWORD(v31) = v46;
  LOWORD(v30) = v47;
  *&v32 = v30;
  v33 = v31 + *&v32 * 0.001;
  LOWORD(v32) = v48;
  *(a1 + 40) = v33 + v32 * 0.000001;
  v34 = *(a8 + 2736);
  if (v34 == 4294967300.0)
  {
    v34 = 4294967300.0;
    if (*(a8 + 2576))
    {
      v34 = *(a8 + 2632);
    }
  }

  v35 = 0;
  *(a1 + 48) = v34;
  *(a1 + 56) = 0;
  *(a1 + 60) = a4;
  *(a1 + 64) = a9;
  *(a1 + 72) = a10;
  *(a1 + 80) = a11;
  *(a1 + 88) = a5;
  *(a1 + 608) = a12;
  *(a1 + 616) = a13;
  do
  {
    v36 = (a1 + v35);
    v37 = *(a6 + v35);
    v38 = *(a6 + v35 + 16);
    v39 = *(a6 + v35 + 48);
    v36[8] = *(a6 + v35 + 32);
    v36[9] = v39;
    v36[6] = v37;
    v36[7] = v38;
    v40 = *(a7 + v35);
    v41 = *(a7 + v35 + 16);
    v42 = *(a7 + v35 + 48);
    v36[24] = *(a7 + v35 + 32);
    v36[25] = v42;
    v36[22] = v40;
    v36[23] = v41;
    v35 += 64;
  }

  while (v35 != 256);
  return a1;
}

uint64_t BlueFin::GlPeReqBag::UpdateFixStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v12 = (a1 + 3233);
  v13 = *(a1 + 3233);
  *(a1 + 3233) = 0;
  do
  {
    result = *(a1 + v10);
    if (result)
    {
      result = (*(*result + 240))(result, a2, a3, a4, a5);
    }

    v10 += 8;
  }

  while (v10 != 576);
  *v12 = v13;
  return result;
}

_BYTE *BlueFin::GlPeKF::InvalidateHulaLocMeas(BlueFin::GlPeKF *this)
{
  v2 = this + 57156;
  v3 = *(this + 7629);
  if (*(v3 + 3008) == 1 && vaddvq_f64(vmulq_f64(*(v3 + 3040), *(v3 + 3040))) < 160000.0 && (*((*(*(this + 2148) + 240))() + 1) & 1) == 0 && (*(v2 + 943) || *v2 != 1))
  {
    *v2 = 2;
  }

  *(*(this + 7629) + 3008) = 0;
  if (v2[11] == 1)
  {
    v2[4044] = 0;
  }

  if (*((*(*(this + 2148) + 240))(this + 17184) + 1) == 1)
  {
    v4 = *(this + 7629);
    if ((*(v4 + 3072) & 0xFFFFFFFE) == 2)
    {
      *(v4 + 3072) = 1;
    }
  }

  *((*(*(this + 2148) + 240))(this + 17184) + 1) = 0;
  v5 = *(this + 7629);
  if (v5)
  {
    *(v5 + 2988) = 0;
  }

  result = (*(*(this + 2148) + 240))(this + 17184);
  *result = 0;
  v2[9] = 0;
  v2[11] = 0;
  v2[13] = 0;
  return result;
}

uint64_t BlueFin::GlPeKfPool::ResetFlagExtAlongTrkSpeedAndPdrUsedInKF(BlueFin::GlPeKfPool *this)
{
  v1 = 0;
  v2 = this + 37248;
  do
  {
    v3 = *&v2[v1];
    result = (*(*v3 + 384))(v3);
    if (result)
    {
      result = (*(*v3 + 144))(v3);
    }

    v1 += 8;
  }

  while (v1 != 24);
  return result;
}

uint64_t *BlueFin::GlSvIdArray::GetSvIdSet@<X0>(uint64_t *__return_ptr a1@<X8>, BlueFin::GlSvIdArray *this@<X0>)
{
  *(a1 + 12) = 0u;
  *a1 = a1 + 12;
  *(a1 + 8) = 8;
  *(a1 + 28) = 0u;
  for (i = 1; i != 189; ++i)
  {
    result = BlueFin::GlArray::EnsureValidHandle(this + 200, i);
    if (*(*(this + 27) + i - *(this + 236)) != 255)
    {
      *(*a1 + 4 * (i >> 5)) |= 1 << i;
    }
  }

  return result;
}

uint64_t BlueFin::GlSvIdArray::Iterator@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = this + 200;
  *(a2 + 8) = *(this + 239) + 1;
  return this;
}

void BlueFin::GlPeKF::UpdateKFAidingImpl(uint64_t this, BlueFin::GlPeNavGnssState *a2)
{
  v2 = a2;
  v4 = this + 57288;
  if (!a2 && **(this + 61008) == *(this + 6752))
  {
    return;
  }

  if (*(*(this + 61000) + 120021) != 1)
  {
    if (*v4)
    {
      v23 = (this + 17184);
      v24 = *(this + 17184);
      if (*(*v4 + 3009))
      {
        v25 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      v23 = (this + 17184);
      v24 = *(this + 17184);
    }

    v25 = *(this + *(v24 - 24) + 17264) < 400.0;
LABEL_18:
    v26 = 90000;
    v27 = (*(v24 + 72))(v23);
    v28 = v27;
    v29 = *(*(v4 + 3744) + 4216);
    if (v29 == 1)
    {
      v30 = v27 != 0;
      goto LABEL_37;
    }

    v30 = v27 != 0;
    if (v27)
    {
      if (v29 == 6 || ((v32 = *(v4 + 144), !*(v32 + 1764)) ? (v31 = 180) : (v31 = 60), *(v32 + 1328) > 4.0 && *(v32 + 1320) < 20.0 && *(v32 + 76) >= v31 && ((*(v32 + 1764) & 1) != 0 || *(v32 + 64) == 1)))
      {
        v30 = 1;
        goto LABEL_37;
      }
    }

    else
    {
      if (v29 == 6)
      {
        v30 = 0;
        goto LABEL_37;
      }

      v32 = *(v4 + 144);
    }

    if ((*(v32 + 8) - 3) >= 4)
    {
      v26 = 20000;
    }

    else
    {
      v26 = 5000;
    }

LABEL_37:
    if (v2)
    {
      LOBYTE(v33) = 1;
    }

    else
    {
      v34 = *(v4 + 3648);
      if (*(v34 + 26294) != 1)
      {
        goto LABEL_47;
      }

      if (*(v34 + 88) <= 36)
      {
        v30 = 0;
      }

      if (v27 >= v26 || !v30)
      {
LABEL_47:
        v33 = 0;
      }

      else
      {
        v33 = *(v4 + 3645) ^ 1;
      }

      if (((v25 | v33) & 1) == 0)
      {
        return;
      }
    }

    v36 = 0;
    v37 = *(this + 280);
    if (v37 && v27 >> 6 <= 0x752)
    {
      v36 = *(v4 + 3377) == 1 && sqrt(*(v23 + *(*v23 - 24) + 112) * *(v23 + *(*v23 - 24) + 112) + *(v23 + *(*v23 - 24) + 104) * *(v23 + *(*v23 - 24) + 104)) > 13.8;
    }

    v38 = BlueFin::GlPeKF::InFlightMode(this);
    v39 = v36 | 2;
    if (!v38)
    {
      v39 = v36;
    }

    if (*(this + 1091))
    {
      v40 = v39 | 4;
    }

    else
    {
      v40 = v39;
    }

    if (*(*(v4 + 3712) + 120021) != 1)
    {
      v40 |= 8 * ((*(this + 768) - v37) < 0x7D1);
    }

    if ((*(v4 + 3645) | v33))
    {
      v41 = 32;
    }

    else
    {
      v41 = 0;
    }

    if (v33)
    {
      v42 = 16;
    }

    else
    {
      v42 = 0;
    }

    v43 = v40 | v42 | v41;
    if (v2)
    {
      v44 = v43 | 0x40;
LABEL_74:
      v45 = *(v4 + 3648) + 208;
      v46 = BlueFin::GlSetBase::Cnt((v23 + *(*(this + 17184) - 24) + 352));
      v51 = v2;
      *&v52 = v45;
      BYTE8(v52) = v46;
      HIDWORD(v52) = v44;
      v21 = this + 3840;
      v22 = &v51;
LABEL_75:
      BlueFin::GlPeNavAid::Generate(v21, v22, v15, v16, v17, v18, v19, v20, v47, v48, v49, v50, v51, v52, SDWORD2(v52), SHIDWORD(v52), v53, SHIDWORD(v53), v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, SWORD2(v68), SBYTE6(v68), HIBYTE(v68), v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
      return;
    }

    v2 = (v23 + *(*v23 - 24));
    if (*(*(v4 + 3712) + 120021))
    {
      v44 = v43 & 0xFFFFFFF7;
      if ((v33 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v44 = v43 & 0xFFFFFFF7 | (8 * ((*(this + 768) - v37) < 0x7D1));
      if ((v33 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    *(v2 + 40) = fminf(*(v2 + 40), 1.0);
    GlCustomLog(14, "Position Gap %d\n", v28);
    goto LABEL_74;
  }

  if ((*(this + 61208) & 8) != 0 || *(this + 6752) < **(this + 61008))
  {
    if (BlueFin::GlPeKF::InFlightMode(this))
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    if (*(this + 1091))
    {
      v6 = v5 | 4;
    }

    else
    {
      v6 = v5;
    }

    BlueFin::GlPeNavGnssState::GlPeNavGnssState(&v51);
    v7 = **(v4 + 3720);
    v8 = *(this + 17184);
    v9 = this + 17184 + *(v8 - 24);
    v10 = *(v9 + 88);
    v11 = *(v9 + 152);
    v12 = *(v9 + 160);
    v52 = *(v9 + 8);
    v53 = *(v9 + 24);
    BlueFin::GlPeNavGnssState::NormalizePos(&v51);
    v59 = 0;
    v60 = v10;
    *(&v69 + 1) = v7 | 0x100000000;
    v63 = 0uLL;
    LODWORD(v61) = 0;
    v62 = 0uLL;
    *(&v61 + 1) = 0;
    *(&v64 + 1) = v11;
    v65 = v12;
    v66 = 0;
    LODWORD(v67) = 0;
    v68 = 1148846080;
    LODWORD(v69) = 0;
    *&v73 = 0;
    v13 = *(v4 + 3648) + 208;
    v14 = BlueFin::GlSetBase::Cnt((this + 17184 + *(v8 - 24) + 352));
    v48 = &v51;
    v49 = v13;
    LOBYTE(v50) = v14;
    HIDWORD(v50) = v6;
    v21 = this + 3840;
    v22 = &v48;
    goto LABEL_75;
  }
}

uint64_t BlueFin::GlPePlatfStatMgr::SetSIGMeasuement(BlueFin::GlPePlatfStatMgr *this, BlueFin::GlPeMsmtMgr *a2)
{
  v54 = v56;
  v55 = 8;
  memset(v56, 0, 32);
  v51 = v53;
  v52 = 8;
  memset(v53, 0, sizeof(v53));
  v46 = *(a2 + 16);
  memcpy(v50, *(a2 + 1), 4 * v46);
  v48 = 0;
  v47 = 0;
  v49 = v50[0];
  BlueFin::GlSetIterator::operator++(&v46);
  while (v47 != v46)
  {
    if (v48 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
    }

    v4 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v48;
    v5 = *v4;
    LODWORD(v4) = v4[1];
    LOBYTE(v43[0]) = v5;
    v44 = v4;
    v45 = v48;
    MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(a2, v43, 0, 0);
    v7 = *(MeMeas + 29);
    if (v7 <= 35.0)
    {
      BlueFin::GlSetBase::Remove(this + 1256, LOBYTE(v43[0]));
      v7 = *(MeMeas + 29);
    }

    else
    {
      *(*(this + 157) + ((LOBYTE(v43[0]) >> 3) & 0x1C)) |= 1 << SLOBYTE(v43[0]);
    }

    if (v7 > *(this + 334))
    {
      *(this + 334) = v7;
    }

    if ((MeMeas[12] & 2) != 0)
    {
      *&v54[(LOBYTE(v43[0]) >> 3) & 0x1C] |= 1 << SLOBYTE(v43[0]);
    }

    if (*(MeMeas + 27) < 0.0000000158999995)
    {
      *(v51 + ((LOBYTE(v43[0]) >> 3) & 0x1C)) |= 1 << SLOBYTE(v43[0]);
    }

    BlueFin::GlSetIterator::operator++(&v46);
  }

  v8 = *(this + 155);
  if (v8)
  {
    v9 = v8[4];
    *(this + 2) = vsub_s32(v9, *(this + 1340));
    *(this + 1340) = v9;
  }

  v10 = *(BlueFin::GlUtils::m_pInstance + 1092);
  v11 = *a2;
  v12 = *(this + 341);
  v13 = v10 >= v12;
  v14 = v10 - v12;
  if (v14 != 0 && v13)
  {
    v15 = *(this + 340);
    v13 = v15 >= v11;
    v16 = v15 - v11;
    if (!v13)
    {
      v17 = v16 + v14;
      *(this + 40) += v17;
      if (v11 <= 0xFA00u)
      {
        v18 = *(this + 342);
      }

      else
      {
        v18 = 0;
      }

      v19 = v18 + v17;
      *(this + 342) = v19;
      if (v19 < 0)
      {
        v19 = -v19;
      }

      if (v19 < 0x1771)
      {
        if (v19 >= 0xBB9)
        {
          GlCustomLog(12, "Warning: High latency detected, see HATMD in PGLOR,n,SIO sentence.\n");
        }
      }

      else
      {
        GlCustomLog(11, "Error: High latency detected, see HATMD in PGLOR,n,SIO sentence.\n");
      }
    }
  }

  *(this + 341) = v10;
  *(this + 340) = v11;
  *(this + 6) = v10 - *(this + 337);
  *(this + 337) = *(BlueFin::GlUtils::m_pInstance + 1092);
  v20 = *(this + 155);
  if (v20)
  {
    v21 = *(v20 + 20);
    v22 = *(v20 + 28);
    *(this + 2) = *(v20 + 24) + *(v20 + 16);
    *(this + 3) = v22 + v21;
    *(this + 3) = *(v20 + 4);
    v23 = *(v20 + 160);
    if (v23)
    {
      BlueFin::GlPfaStat::SetPfaData(v23, &v54, &v51);
    }
  }

  if (*a2 <= *(this + 312))
  {
    return 0;
  }

  v24 = *(this + 326);
  if (!v24)
  {
    return 0;
  }

  GlCustomLog(199, "HWDEBUG: LMS = %u, WER=%.2f\n", *a2, ((100 * (v24 - *(this + 327))) / v24));
  v25 = *this;
  v26 = *(this + 155);
  if (v26)
  {
    v27 = *(v26 + 8);
    if (!v27)
    {
      goto LABEL_49;
    }

    v27 = *(v26 + 12);
    if (!v27)
    {
      goto LABEL_49;
    }

    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = v26 + 40;
    do
    {
      if (v28 >= 5)
      {
        v33 = *(v32 + 4 * v28);
      }

      else
      {
        v33 = 0;
      }

      v31 += v33;
      if (v28 >= 5)
      {
        v34 = 0;
      }

      else
      {
        v34 = *(v32 + 4 * v28);
      }

      v30 += v34;
      v29 += *(v32 + 4 * v28++);
    }

    while (v28 != 9);
    if (v29)
    {
      *(this + 4) = (v30 * 100.0 / v29 + 0.5);
      v35 = v31 * 100.0 / v29 + 0.5;
      *(this + 5) = v35;
      if (v35 || *(this + 2) > 1)
      {
        v27 = 2;
      }

      else if (*(this + 3) <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      goto LABEL_49;
    }
  }

  v27 = 0;
LABEL_49:
  *this = v27;
  if (v25 != v27)
  {
    *(this + 232) = 1;
  }

  v37 = (*(this + 334) + 0.5);
  *(this + 84) = v37;
  v38 = *(this + 326);
  if (v38 >= 0x65)
  {
    if ((*(this + 170) & 1) == 0)
    {
      *(this + 232) = 1;
    }

    *(this + 170) = 1;
    *(this + 44) = (100 * (v38 - *(this + 327))) / v38;
  }

  v39 = *(this + 1312);
  if (v39 == 1)
  {
    if ((*(this + 188) & 1) == 0)
    {
      *(this + 232) = 1;
    }

    *(this + 188) = 1;
    v40 = sqrt(*(this + 166)) * 1000000000.0;
    *(this + 48) = v40;
  }

  if (v37 >= -126)
  {
    v41 = *(this + 41);
    if ((*(this + 170) & v39) == 1)
    {
      if (*(this + 327) == v38 && *(this + 48) < 2.0)
      {
        v42 = 1;
      }

      else
      {
        v42 = 2;
      }
    }

    else
    {
      v42 = 0;
    }

    *(this + 41) = v42;
    if (v41 != v42)
    {
      *(this + 232) = 1;
    }
  }

  *(this + 312) = *a2 + 60000;
  return 1;
}

unsigned __int8 *BlueFin::GlPfaStat::SetPfaData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a2 + 8);
  memcpy(v12, *a2, 4 * v8);
  v10 = 0;
  v9 = 0;
  v11 = v12[0];
  BlueFin::GlSetIterator::operator++(&v8);
  while (v9 != v8)
  {
    if (v10)
    {
      if (v10 >= 0x21u)
      {
        if (v10 < 0x34u)
        {
          goto LABEL_11;
        }

        v6 = a1 + 16;
        if (v10 >= 0x42u)
        {
          if (v10 < 0x4Cu)
          {
            goto LABEL_11;
          }

          v6 = a1 + 32;
          if (v10 >= 0x8Bu)
          {
            v6 = a1 + 48;
            if (v10 >= 0xAFu)
            {
              goto LABEL_11;
            }
          }
        }
      }

      else
      {
        v6 = a1;
        if (!a1)
        {
          goto LABEL_11;
        }
      }

      ++*(v6 + 8);
    }

LABEL_11:
    BlueFin::GlSetIterator::operator++(&v8);
  }

  v8 = *(a3 + 8);
  memcpy(v12, *a3, 4 * v8);
  v10 = 0;
  v9 = 0;
  v11 = v12[0];
  for (result = BlueFin::GlSetIterator::operator++(&v8); v9 != v8; result = BlueFin::GlSetIterator::operator++(&v8))
  {
    if (v10)
    {
      if (v10 >= 0x21u)
      {
        if (v10 < 0x34u)
        {
          continue;
        }

        v7 = a1 + 16;
        if (v10 >= 0x42u)
        {
          if (v10 < 0x4Cu)
          {
            continue;
          }

          v7 = a1 + 32;
          if (v10 >= 0x8Bu)
          {
            v7 = a1 + 48;
            if (v10 >= 0xAFu)
            {
              continue;
            }
          }
        }
      }

      else
      {
        v7 = a1;
        if (!a1)
        {
          continue;
        }
      }

      ++*(v7 + 12);
    }
  }

  return result;
}

void BlueFin::lla2ecef(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = BlueFin::GlPeConvUtilCache::m_potThis;
  v5 = *a1;
  v6 = a1[1];
  if (*a1 == *(BlueFin::GlPeConvUtilCache::m_potThis + 72) && v6 == *(BlueFin::GlPeConvUtilCache::m_potThis + 80) && a1[2] == *(BlueFin::GlPeConvUtilCache::m_potThis + 88))
  {
    *a2 = *(BlueFin::GlPeConvUtilCache::m_potThis + 48);
    *(a2 + 16) = *(v4 + 64);
  }

  else
  {
    v7 = __sincos_stret(v5 * 0.0174532925);
    v8 = __sincos_stret(v6 * 0.0174532925);
    v9 = 1.0 / sqrt(v7.__sinval * -0.00669438 * v7.__sinval + 1.0) * 6378137.0;
    v10 = a1[2];
    v11 = v7.__cosval * (v9 + v10);
    *a2 = v8.__cosval * v11;
    *(a2 + 8) = v8.__sinval * v11;
    v12 = v7.__sinval * (v10 + v9 * 0.99330562);
    *(a2 + 16) = v12;
    *(v4 + 80) = v6;
    *(v4 + 88) = v10;
    *(v4 + 48) = v8.__cosval * v11;
    *(v4 + 56) = v8.__sinval * v11;
    *(v4 + 64) = v12;
    *(v4 + 72) = v5;
  }
}

__n128 BlueFin::stProcessedAsstPos::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *(a1 + 16) = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    v2 = *(a2 + 88);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = v2;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
    result = *(a2 + 120);
    *(a1 + 120) = result;
    *(a1 + 136) = *(a2 + 136);
  }

  return result;
}

uint64_t BlueFin::GlPeReqBag::SetSIGMeasuement(BlueFin::GlPeReqBag *this, const void **a2)
{
  v37 = &unk_2A1F13AA0;
  v38 = this + 3233;
  v39 = *(this + 3233);
  *(this + 3233) = 0;
  BlueFin::GlSetBase::GlSetBase(&__src, v36, 0x13u, a2 + 12);
  v4 = *a2;
  v5 = *(this + 328);
  if ((v5 & 0xC) != 0)
  {
    BlueFin::GlPeMeasStatus::SetSIGMeasuement((this + 3296), a2);
    v5 = *(this + 328);
  }

  if ((v5 & 4) == 0)
  {
    if ((v5 & 8) != 0)
    {
      v6 = *(this + 329);
      if ((v6 & 0x80000000) != 0)
      {
        if (v6 == -1)
        {
          goto LABEL_34;
        }

        v7 = (this + 3238);
      }

      else
      {
        v7 = (*(*(this + v6) + 8) + 22);
      }

      if (*v7 >= 10)
      {
        goto LABEL_10;
      }
    }

LABEL_34:
    BlueFin::GlArray::Clear(this + 1272);
    goto LABEL_35;
  }

LABEL_10:
  v29 = v35;
  memcpy(v33, __src, 4 * v35);
  v31 = 0;
  v30 = 0;
  v32 = v33[0];
  BlueFin::GlSetIterator::operator++(&v29);
  if (v30 != v29)
  {
    while (1)
    {
      if (v31 >= 0x23FuLL)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v8 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v31;
      v9 = *v8;
      LODWORD(v8) = v8[1];
      LOBYTE(v27) = v9;
      HIDWORD(v27) = v8;
      v28 = v31;
      v10 = BlueFin::GlPeMsmtMgr::AccessMeMeas(a2, &v27, 0, 1u);
      if ((v10[14] & 8) != 0)
      {
        goto LABEL_23;
      }

      v11 = BlueFin::GlArray::Get((this + 1272), v9);
      if (v11)
      {
        goto LABEL_16;
      }

      v11 = BlueFin::GlArray::Add((this + 1272), v9);
      if (v11)
      {
        goto LABEL_15;
      }

      v27 = this + 1272;
      LOBYTE(v28) = *(this + 1311) + 1;
      if (*(this + 1310) > v28)
      {
        break;
      }

LABEL_23:
      BlueFin::GlSetIterator::operator++(&v29);
      if (v30 == v29)
      {
        goto LABEL_35;
      }
    }

    while (1)
    {
      v15 = BlueFin::GlArrayIterator::Next(&v27);
      if (v15 - 189 < 0xFFFFFF44 || (v16 = BlueFin::GlSvId::s_aucSvId2gnss[v15], BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v16] == 255))
      {
        v17 = 575;
      }

      else
      {
        v17 = (v15 + BlueFin::GlSignalId::s_ausGnss2signalId[v16] - BlueFin::GlSvId::s_aucGnss2minSvId[v16]);
      }

      if (((*(__src + (v17 >> 5)) >> (v17 & 0x1F)) & 1) == 0)
      {
        BlueFin::GlArray::Remove((this + 1272), v15);
        v11 = BlueFin::GlArray::Add((this + 1272), v9);
        if (v11)
        {
          break;
        }
      }

      if (v28 >= v27[38])
      {
        goto LABEL_23;
      }
    }

LABEL_15:
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 12) = 0;
    *(v11 + 16) = 1;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 36) = 0;
LABEL_16:
    v12 = *(v10 + 3);
    if ((~v12 & 0x102) != 0)
    {
      BlueFin::GlPeMeasFilter::UpdateRng(v11, *(v10 + 12), v10, v4, 0, 1, *(v10 + 8), *(v10 + 11) / 299792458.0);
    }

    else
    {
      if ((v12 & 0x1000) != 0)
      {
        v13 = *(v10 + 11) / 299792458.0;
      }

      else
      {
        v13 = *(v10 + 26);
      }

      BlueFin::GlPeMeasFilter::UpdateRng(v11, *(v10 + 12), v10, v4, (v12 & 0x1000) == 0, 0, *(v10 + 8), v13);
    }

    *(v10 + 14) = *(v11 + 16);
    v14 = *(v10 + 8) * 1000.0;
    *(v10 + 9) = *v11;
    *(v10 + 10) = v14;
    goto LABEL_23;
  }

LABEL_35:
  v18 = 0;
  v19 = __src + 4 * v35 - 4;
  do
  {
    if (*v19)
    {
      v20 = *v19 - (((*v19 >> 1) & 0x5B6DB6DB) + ((*v19 >> 2) & 0x9249249));
      v18 = ((v20 + (v20 >> 3)) & 0xC71C71C7) + v18 - 63 * (((v20 + (v20 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v19;
  }

  while (v19 >= __src);
  v21 = v18;
  v22 = BlueFin::GlSetBase::Cnt((a2 + 1));
  v23 = BlueFin::GlSetBase::Cnt((a2 + 23));
  v24 = BlueFin::GlSetBase::Cnt((a2 + 181));
  GlCustomLog(14, "GlPeReqBag::SetSIGMeasuement time=%d cnt=%d %d %d %d \n", v4, v21, v22, v23, v24);
  for (i = 0; i != 576; i += 8)
  {
    result = *(this + i);
    if (result)
    {
      result = (*(*result + 96))(result, a2);
    }
  }

  *v38 = v39;
  return result;
}

void BlueFin::GlPeRqHdlrGnssMeasData::SetSIGMeasuement(BlueFin::GlPeRqHdlrGnssMeasData *this, BlueFin::GlPeMsmtMgr *a2)
{
  v243 = this + 36864;
  bzero(this + 64, 0x9B40uLL);
  BlueFin::GlSetBase::GlSetBase(&v263, v264 + 1, 0x13u, a2 + 7030);
  HIDWORD(v256) = *(a2 + 16);
  memcpy(v257 + 4, *(a2 + 1), 4 * BYTE4(v256));
  LODWORD(v257[0]) = HIDWORD(v257[0]);
  BlueFin::GlSetIterator::operator++(&v256 + 4);
  if (BYTE5(v256) != BYTE4(v256))
  {
    v5 = this + 72;
    v244 = this + 39968;
    v238.n128_u64[0] = this + 336;
    v240 = vdupq_n_s64(0x41CDCD6500000000uLL);
    v6 = 1000.0;
    v7 = 0.5;
    v239 = vdupq_n_s64(0x41B1DE784A000000uLL);
    v8 = -8.0;
    v237 = 0x41212A8800000000;
    HIDWORD(v4) = 1091718209;
    v238.n128_u64[1] = 0x41124C41D4FDF3B6;
    v9 = 0x3B9248D1E08E72CBLL;
    v242 = a2;
    v235 = 0x3FB999999999999ALL;
    v236 = 392;
    while (1)
    {
      if (*(this + 17) > 0x63u)
      {
        goto LABEL_408;
      }

      v10 = HIWORD(v256);
      if (HIWORD(v256) >= 0x23FuLL)
      {
        v231 = "usIndex < NUM_SIGNAL_IDS";
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        v232 = "glsignalid.h";
        v233 = 578;
        goto LABEL_423;
      }

      v11 = v9;
      v12 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(v256);
      v13 = *v12;
      v14 = v12[1];
      LOBYTE(v265) = *v12;
      HIDWORD(v265) = v14;
      LOWORD(v266) = HIWORD(v256);
      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(a2, &v265, 0, 0);
      v16 = *(this + 17);
      v17 = &v5[392 * v16];
      if ((*(v263 + ((v10 >> 3) & 0x1FFC)) >> (v10 & 0x1F)))
      {
        LOBYTE(v265) = v13;
        HIDWORD(v265) = v14;
        LOWORD(v266) = v10;
        v18 = BlueFin::GlSignalIdArray::Get(*(a2 + 7041), &v265);
        if (!v18)
        {
          v231 = "potGridMeas";
          DeviceFaultNotify("glpe_reqhdlr_gnss_meas_data.cpp", 520, "SetSIGMeasuement", "potGridMeas");
          v232 = "glpe_reqhdlr_gnss_meas_data.cpp";
          v233 = 520;
          goto LABEL_423;
        }

        v19 = *(v18 + 16);
        if (v19 >= 4)
        {
          v20 = 4;
        }

        else
        {
          v20 = *(v18 + 16);
        }

        v17[228] = v20;
        if (v19)
        {
          LOBYTE(v19) = 0;
          v21 = *(v17 + 4) - (*(MeMeas + 8) * 1000000000.0);
          v22 = (v238.n128_u64[0] + 392 * v16);
          v23 = (v18 + 56);
          while (1)
          {
            *(v22 - 4) = v21 + (*(v23 - 4) * 1000000000.0);
            v24 = (*(v23 - 3) * 1000000000.0);
            *(v22 - 3) = v24;
            if (v24 < 1)
            {
              break;
            }

            if (HIDWORD(v24))
            {
              v25 = 0xFFFFFFFFLL;
LABEL_16:
              *(v22 - 3) = v25;
            }

            *(v22 - 2) = -*(v23 - 4) * 299792458.0;
            v26 = *(v23 - 1) * 299792458.0;
            *(v22 - 1) = v26;
            v27 = *v23;
            *v22 = *v23;
            if (v27 > 0.0)
            {
              LOBYTE(v19) = (v26 > 0.0) | v19;
            }

            v22 += 5;
            v23 += 10;
            if (!--v20)
            {
              goto LABEL_22;
            }
          }

          v25 = 1;
          goto LABEL_16;
        }
      }

      else
      {
        LOBYTE(v19) = 0;
      }

LABEL_22:
      v28 = *(MeMeas + 3);
      if (v28 & 2) != 0 || (v19)
      {
        break;
      }

      *(v17 + 48) = 0;
      *(v17 + 22) = 0u;
      *(v17 + 23) = 0u;
      *(v17 + 20) = 0u;
      *(v17 + 21) = 0u;
      *(v17 + 18) = 0u;
      *(v17 + 19) = 0u;
      *(v17 + 16) = 0u;
      *(v17 + 17) = 0u;
      *(v17 + 14) = 0u;
      *(v17 + 15) = 0u;
      *(v17 + 12) = 0u;
      *(v17 + 13) = 0u;
      *(v17 + 10) = 0u;
      *(v17 + 11) = 0u;
      *(v17 + 8) = 0u;
      *(v17 + 9) = 0u;
      *(v17 + 6) = 0u;
      *(v17 + 7) = 0u;
      *(v17 + 4) = 0u;
      *(v17 + 5) = 0u;
      *(v17 + 2) = 0u;
      *(v17 + 3) = 0u;
      *v17 = 0u;
      *(v17 + 1) = 0u;
      v9 = v11;
LABEL_407:
      BlueFin::GlSetIterator::operator++(&v256 + 4);
      if (BYTE5(v256) == BYTE4(v256))
      {
        goto LABEL_408;
      }
    }

    *v17 = 392;
    v29 = *MeMeas;
    *(v17 + 4) = v29;
    if (v29)
    {
      if (v29 <= 0x20)
      {
        v17[10] = 1;
        goto LABEL_43;
      }

      if (v29 <= 0x33)
      {
        v17[10] = 2;
        v30 = v29 + 87;
LABEL_34:
        *(v17 + 4) = v30;
        goto LABEL_43;
      }

      if (v29 <= 0x41)
      {
        v17[10] = 3;
        v30 = v29 + 41;
        goto LABEL_34;
      }

      if (v29 <= 0x4B)
      {
        v17[10] = 4;
        v30 = v29 + 127;
        goto LABEL_34;
      }

      if (v29 < 0x8B)
      {
        *(v17 + 4) = v29 - 75;
        v31 = 5;
        goto LABEL_39;
      }

      v30 = v29 - 174;
      if (v29 <= 0xAE)
      {
        *(v17 + 4) = v29 - 138;
        v31 = 6;
LABEL_39:
        v17[10] = v31;
        goto LABEL_43;
      }

      if (v29 <= 0xBC)
      {
        v17[10] = 7;
        goto LABEL_34;
      }
    }

    *(v17 + 4) = 0;
    v17[10] = 0;
LABEL_43:
    v32 = v5;
    v33 = &v5[392 * *(this + 17)];
    *(v33 + 2) = 0;
    *(v33 + 6) = 0;
    v34 = *(MeMeas + 1);
    v36 = v29 - 139 < 0x24 || v34 > 0;
    if ((v28 & 2) != 0)
    {
      v37 = *(v17 + 6);
      if (v29 - 139 <= 0x23 && !v34)
      {
        v38 = 1024;
LABEL_55:
        *(v17 + 6) = v38 | v37;
        goto LABEL_56;
      }

      *(v17 + 6) = v37 | 1;
      if (v29 - 175 >= 0xE)
      {
        v38 = 65537;
        if (v34 == 2)
        {
          goto LABEL_55;
        }
      }
    }

LABEL_56:
    if ((v28 & 4) != 0)
    {
      *(v17 + 6) |= 0x20u;
    }

    v39 = (v28 & 8) == 0 || v36;
    if ((v39 & 1) == 0)
    {
      if (v29 - 81 > 0x34 || v34)
      {
        v41 = v29 - 76;
        if (v41 <= 0x3E && ((1 << v41) & 0x7C0000000000001FLL) != 0)
        {
          v40 = 256;
        }

        else
        {
          v40 = 2;
        }
      }

      else
      {
        v40 = 65538;
      }

      *(v17 + 6) |= v40;
    }

    if ((v28 & 0xC) != 0)
    {
      v42 = *(this + 7);
      v43 = *(v42 + 48);
      BlueFin::GlPeTimeManager::GetTime(&v265, *(v42 + 8), *v242, 1);
      v255 = 1000000.0;
      v253 = 0.0;
      if (BlueFin::GlPeSatAidInfo::GetAidRcvdSysTimeS((v43 + 32), MeMeas, &v265, &v253, &v255) && v255 < 0.1)
      {
        v44 = *(MeMeas + 8);
        v45 = v253;
        if ((MeMeas[12] & 4) != 0)
        {
          EpochPerSymbol = BlueFin::GlSignalId::GetEpochPerSymbol(MeMeas);
        }

        else
        {
          EpochPerSymbol = BlueFin::GlSignalId::GetEpochPerBit(MeMeas);
        }

        if (*(MeMeas + 4) >= 0x23Fu)
        {
LABEL_421:
          v231 = "IsValid()";
          DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
          v232 = "glsignalid.h";
          v233 = 679;
          goto LABEL_423;
        }

        v47 = BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas];
        if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(MeMeas + 1) - *(MeMeas + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]])
        {
          goto LABEL_422;
        }

        v48 = v44 * v6;
        v49 = v6;
        v50 = floor(v45 * v6);
        v51 = floor(v44 * v6);
        v52 = v45 * v6 - v50;
        v53 = v48 - v51;
        v54 = (BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(MeMeas + 1) - *(MeMeas + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]] * EpochPerSymbol);
        v55 = fmod(v50, v54);
        v56 = fmod(v51, v54);
        v57 = v53 - v52;
        v58 = v55 + 1.0;
        if (v53 - v52 >= -0.5)
        {
          v58 = v55;
        }

        v7 = 0.5;
        if (v57 >= 0.5)
        {
          v58 = v55 + -1.0;
        }

        v59 = dbl_298A44C50[v47 == 2];
        v60 = v58 - v56;
        v61 = v60 / v59;
        if (v60 / v59 <= 0.0)
        {
          v62 = 0.0;
          if (v60 / v59 < 0.0)
          {
            v62 = ceil(v61 + -0.5);
          }
        }

        else
        {
          v62 = floor(v61 + 0.5);
        }

        v6 = v49;
        v8 = -8.0;
        if (fabs(v60 - v62 * v59) > 2.22044605e-16)
        {
          v63 = &v32[392 * *(this + 17)];
          *(v63 + 6) |= 0x80000000;
        }
      }

      v28 = *(MeMeas + 3);
    }

    v64 = (v28 & 0x10) == 0 || v36;
    v5 = v32;
    a2 = v242;
    if ((v64 & 1) == 0)
    {
      v65 = *MeMeas;
      if ((v65 - 52) > 0xD)
      {
        if ((v65 - 76) <= 0x3E && ((1 << (v65 - 76)) & 0x7C0000000000001FLL) != 0)
        {
          v66 = *(v17 + 6) | 0x200;
        }

        else if ((v65 - 139) > 0x23)
        {
          v66 = *(v17 + 6) | 4;
        }

        else
        {
          v169 = *(v17 + 6);
          if ((v28 & 0x20) != 0)
          {
            v66 = v169 | 0x1000;
          }

          else
          {
            v66 = v169 | 0x10800;
          }
        }
      }

      else
      {
        v66 = *(v17 + 6) | 0x40;
      }

      *(v17 + 6) = v66;
    }

    if ((v28 & 0x20) != 0)
    {
      v68 = *(v17 + 6);
      if (*MeMeas - 52 > 0xD)
      {
        v67 = v68 | 8;
      }

      else
      {
        v67 = v68 | 0x80;
      }
    }

    else
    {
      if ((v28 & 0x10) != 0)
      {
        goto LABEL_105;
      }

      v67 = *(v17 + 6) | 0x10;
    }

    *(v17 + 6) = v67;
LABEL_105:
    v69.f64[0] = *(MeMeas + 8);
    v69.f64[1] = *(MeMeas + 24);
    *(v17 + 2) = vcvtq_s64_f64(vmulq_f64(v69, v240));
    if ((v5[392 * *(this + 17) + 24] & 0x88) != 0)
    {
      goto LABEL_152;
    }

    v70 = *(this + 7);
    v71 = *(v70 + 48);
    BlueFin::GlPeTimeManager::GetTime(&v265, *(v70 + 8), *v242, 1);
    v255 = 1000000.0;
    v253 = 0.0;
    if (!BlueFin::GlPeSatAidInfo::GetAidRcvdSysTimeS((v71 + 32), MeMeas, &v265, &v253, &v255) || v255 >= 0.1)
    {
LABEL_151:
      v28 = *(MeMeas + 3);
LABEL_152:
      v91 = 56;
      if (!*(MeMeas + 1))
      {
        v91 = 52;
      }

      v92 = *(*(*(this + 7) + 56) + v91);
      if (v92 < 0.0)
      {
        v92 = 0.0;
      }

      v93 = *(MeMeas + 29);
      *(v17 + 6) = (v93 + v92);
      *(v17 + 26) = v93;
      v94.f32[0] = -*(MeMeas + 26);
      v94.i32[1] = *(MeMeas + 27);
      *(v17 + 56) = vmulq_f64(vcvtq_f64_f32(v94), v239);
      if ((v28 & 2) == 0)
      {
        *(v17 + 8) = 0x41B1DE784A000000;
        *(v17 + 5) = 1000000000;
      }

      *(v17 + 1) |= 0x40000u;
      v95 = (v28 >> 4) & 4 | (v28 >> 12) & 1;
      *(v17 + 36) = (v28 >> 4) & 4 | (v28 >> 12) & 1;
      if ((v28 & 0x100) == 0 || *(MeMeas + 12) < *&v244[4 * v10])
      {
        LOWORD(v95) = v95 | 2;
        *(v17 + 36) = v95;
      }

      if ((v28 & 0x20000) != 0)
      {
        *(v17 + 36) = v95 | 8;
      }

      v96 = (v28 >> 20) & 1;
      *(v17 + 48) = (v28 >> 20) & 1;
      if ((v28 & 0x100) != 0)
      {
        v97 = *(MeMeas + 12);
        if (v97 < *&v244[4 * v10])
        {
          *(v17 + 48) = v96 | 2;
        }
      }

      else
      {
        *(v17 + 48) = v96 | 2;
        v97 = *(MeMeas + 12);
      }

      *&v244[4 * v10] = v97;
      *(v17 + 56) = v97;
      LOBYTE(v265) = v13;
      HIDWORD(v265) = v14;
      LOWORD(v266) = v10;
      v98 = *v242;
      v255 = -*(MeMeas + 11);
      v253 = *(MeMeas + 25);
      BlueFin::GlMeasData_ADRState::UpdateCarrierPhaseM((this + 42304), &v265, v98, &v255, &v253);
      *(v17 + 10) = v99;
      v100 = *(MeMeas + 25);
      *(v17 + 11) = v100;
      if ((MeMeas[14] & 2) == 0)
      {
        if (*(MeMeas + 4) >= 0x23Fu)
        {
          goto LABEL_419;
        }

        v101 = *MeMeas;
        v102 = BlueFin::GlSvId::s_aucSvId2gnss[v101];
        v103 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(MeMeas + 1) - *(MeMeas + 1) + v102]];
        if (v102 == 2)
        {
          v104 = (v101 - 59);
          if ((v101 - 52) >= 0xE)
          {
            v104 = v8;
          }

          v103 = v103 + v104 * 562500.0;
        }

        v105 = 299792458.0 / v103;
        if (v105 * v7 > v100)
        {
          *(v17 + 11) = v100 + v105 * v7;
        }
      }

      LOBYTE(v265) = v13;
      HIDWORD(v265) = v14;
      LOWORD(v266) = v10;
      v106 = *v242;
      v255 = -*(MeMeas + 16);
      v253 = *(MeMeas + 31);
      BlueFin::GlMeasData_ADRState::UpdateCarrierPhaseM((this + 47744), &v265, v106, &v255, &v253);
      *(v17 + 13) = v107;
      *(v17 + 14) = *(MeMeas + 31);
      if (*(MeMeas + 4) >= 0x23Fu)
      {
LABEL_419:
        v231 = "IsValid()";
        DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
        v232 = "glsignalid.h";
        v233 = 651;
        goto LABEL_423;
      }

      v108 = *MeMeas;
      v109 = BlueFin::GlSvId::s_aucSvId2gnss[v108];
      v110 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(MeMeas + 1) - *(MeMeas + 1) + v109]];
      if (v109 == 2)
      {
        v111 = (v108 - 59);
        if ((v108 - 52) >= 0xE)
        {
          v111 = v8;
        }

        v110 = v110 + v111 * 562500.0;
      }

      v9 = v11;
      v112 = v110;
      *(v17 + 30) = v112;
      *(v17 + 1) |= 0x200u;
      *(v17 + 17) = 0;
      *(v17 + 18) = 0;
      *(v17 + 16) = 0;
      v17[152] = *(MeMeas + 5) == 4;
      *(v17 + 20) = 0;
      *(v17 + 21) = 0;
      if (!*(v243 + 736) && !BlueFin::GlPeRqHdlrGnssMeasData::UpdateAgcInfo(this))
      {
        v113 = *(MeMeas + 1);
        goto LABEL_191;
      }

      v113 = *(MeMeas + 1);
      v114 = *MeMeas;
      if (v113 == 2)
      {
        if (!*MeMeas)
        {
          goto LABEL_200;
        }

        if (v114 < 0x21)
        {
          goto LABEL_185;
        }

        if (v114 >= 0x8B)
        {
          if (v114 >= 0xAF)
          {
            goto LABEL_200;
          }

          goto LABEL_185;
        }

        if (v114 > 0x41)
        {
LABEL_185:
          v115 = 39840;
LABEL_189:
          *(v17 + 21) = *(this + v115);
          *(v17 + 1) |= 0x80000u;
          goto LABEL_191;
        }

        goto LABEL_270;
      }

      if (!*MeMeas)
      {
        goto LABEL_191;
      }

      if (v114 >= 0x21)
      {
        if (v114 < 0x8B)
        {
          if (v114 >= 0x42)
          {
            v79 = v114 >= 0x4C;
            v115 = 39824;
            if (v79)
            {
              v115 = 39904;
            }

            goto LABEL_189;
          }

LABEL_270:
          if (v114 >= 0x34)
          {
            v115 = 39856;
            goto LABEL_189;
          }

LABEL_191:
          if (v113 != 2)
          {
            if (v113 == 3)
            {
              if (BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas] == 4)
              {
                LOBYTE(v116) = 8;
              }

              else
              {
                LOBYTE(v116) = 5;
              }
            }

            else
            {
              v116 = BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas];
              if (v116 != 4)
              {
                LOBYTE(v116) = 3;
              }
            }

LABEL_201:
            v17[11] = v116;
            BlueFin::GlPeRangeAidGen::GetSatelliteInterSignalBiasNs(*(*(this + 7) + 48), MeMeas, 1, v17 + 24, v17 + 25);
            v117 = *(v17 + 1);
            *(v17 + 22) = *(v17 + 24);
            v118 = *(MeMeas + 1);
            if (v118 == 2 || (v119 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v118 - v118 + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]], v119 == 12))
            {
              v120 = *(*(*(this + 7) + 120) + 136);
            }

            else
            {
              v121 = v119 != 6 || *MeMeas - 76 >= 0x3F;
              v120 = 1.0;
              if (v121)
              {
                v120 = 0.0;
              }
            }

            *(v17 + 23) = *(v17 + 25) + v120 / 299792.458 * 1000000.0;
            *(v17 + 1) = v117 | 0xF00000;
            v122 = v17[10];
            if (v122 <= 3)
            {
              if (v17[10] <= 1u)
              {
                if (v122 != 1)
                {
                  goto LABEL_397;
                }

                goto LABEL_235;
              }

              if (v122 == 2)
              {
                v138 = *(v17 + 6);
                if ((v138 & 0x2000) != 0)
                {
                  *(v17 + 4) %= 0x3B9ACA00uLL;
                  v143 = v17[228];
                  if (v17[228])
                  {
                    v144 = v17 + 232;
                    do
                    {
                      *v144 %= 0x3B9ACA00uLL;
                      v144 += 5;
                      --v143;
                    }

                    while (v143);
                  }
                }

                else if ((v138 & 0x20) != 0)
                {
                  *(v17 + 4) %= 0x1E8480uLL;
                  v156 = v17[228];
                  if (v17[228])
                  {
                    v157 = v17 + 232;
                    do
                    {
                      *v157 %= 0x1E8480uLL;
                      v157 += 5;
                      --v156;
                    }

                    while (v156);
                  }
                }

                else if (v138)
                {
                  *(v17 + 4) %= 0xF4240uLL;
                  v139 = v17[228];
                  if (v17[228])
                  {
                    v140 = v17 + 232;
                    do
                    {
                      *v140 %= 0xF4240uLL;
                      v140 += 5;
                      --v139;
                    }

                    while (v139);
                  }
                }
              }

              else
              {
                if (v122 != 3)
                {
                  goto LABEL_424;
                }

                v126 = *(v17 + 6);
                if ((v126 & 0x8080) != 0)
                {
                  *(v17 + 4) %= 0x4E94914F0000uLL;
                  v127 = v17[228];
                  if (v17[228])
                  {
                    v128 = v17 + 232;
                    do
                    {
                      *v128 %= 0x4E94914F0000uLL;
                      v128 += 5;
                      --v127;
                    }

                    while (v127);
                  }
                }

                else if ((v126 & 0x40) != 0)
                {
                  *(v17 + 4) %= 0x77359400uLL;
                  v167 = v17[228];
                  if (v17[228])
                  {
                    v168 = v17 + 232;
                    do
                    {
                      *v168 %= 0x77359400uLL;
                      v168 += 5;
                      --v167;
                    }

                    while (v167);
                  }
                }

                else if ((v126 & 2) != 0)
                {
                  *(v17 + 4) %= 0x1312D00uLL;
                  v180 = v17[228];
                  if (v17[228])
                  {
                    v181 = v17 + 232;
                    do
                    {
                      *v181 %= 0x1312D00uLL;
                      v181 += 5;
                      --v180;
                    }

                    while (v180);
                  }
                }

                else if ((v126 & 0x20) != 0)
                {
                  *(v17 + 4) %= 0x989680uLL;
                  v187 = v17[228];
                  if (v17[228])
                  {
                    v188 = v17 + 232;
                    do
                    {
                      *v188 %= 0x989680uLL;
                      v188 += 5;
                      --v187;
                    }

                    while (v187);
                  }
                }

                else if (v126)
                {
                  *(v17 + 4) %= 0xF4240uLL;
                  v154 = v17[228];
                  if (v17[228])
                  {
                    v155 = v17 + 232;
                    do
                    {
                      *v155 %= 0xF4240uLL;
                      v155 += 5;
                      --v154;
                    }

                    while (v154);
                  }
                }
              }
            }

            else
            {
              if (v17[10] <= 5u)
              {
                if (v122 != 4)
                {
                  if (v122 != 5)
                  {
                    goto LABEL_424;
                  }

                  v123 = *(v17 + 6);
                  if ((v123 & 0x4008) != 0)
                  {
                    *(v17 + 4) -= 604800000000000 * (((*(v17 + 4) * v11) >> 64) >> 47);
                    v124 = v17[228];
                    if (v17[228])
                    {
                      v125 = v17 + 232;
                      do
                      {
                        *v125 -= 604800000000000 * (((*v125 * v11) >> 64) >> 47);
                        v125 += 5;
                        --v124;
                      }

                      while (v124);
                    }
                  }

                  else
                  {
                    v145 = *(MeMeas + 1);
                    if ((v123 & 4) != 0)
                    {
                      v158 = *(v17 + 4);
                      if (v145 == 2)
                      {
                        *(v17 + 4) = v158 % 0x5F5E100;
                        v159 = v17[228];
                        if (v17[228])
                        {
                          v160 = v17 + 232;
                          do
                          {
                            *v160 %= 0x5F5E100uLL;
                            v160 += 5;
                            --v159;
                          }

                          while (v159);
                        }
                      }

                      else
                      {
                        *(v17 + 4) = v158 % 0x165A0BC00;
                        v174 = v17[228];
                        if (v17[228])
                        {
                          v175 = v17 + 232;
                          do
                          {
                            *v175 %= 0x165A0BC00uLL;
                            v175 += 5;
                            --v174;
                          }

                          while (v174);
                        }
                      }
                    }

                    else if ((v123 & 0x200) != 0)
                    {
                      *(v17 + 4) %= 0x23C34600uLL;
                      v170 = v17[228];
                      if (v17[228])
                      {
                        v171 = v17 + 232;
                        do
                        {
                          *v171 %= 0x23C34600uLL;
                          v171 += 5;
                          --v170;
                        }

                        while (v170);
                      }
                    }

                    else if ((v123 & 0x10000) != 0)
                    {
                      v182 = *(v17 + 4);
                      if (v145 == 2)
                      {
                        *(v17 + 4) = v182 % 0x5F5E100;
                        v183 = v17[228];
                        if (v17[228])
                        {
                          v184 = v17 + 232;
                          do
                          {
                            *v184 %= 0x5F5E100uLL;
                            v184 += 5;
                            --v183;
                          }

                          while (v183);
                        }
                      }

                      else
                      {
                        *(v17 + 4) = v182 % 0x1312D00;
                        v192 = v17[228];
                        if (v17[228])
                        {
                          v193 = v17 + 232;
                          do
                          {
                            *v193 %= 0x1312D00uLL;
                            v193 += 5;
                            --v192;
                          }

                          while (v192);
                        }
                      }
                    }

                    else if ((v123 & 2) != 0)
                    {
                      v189 = *(v17 + 4);
                      if (v145 == 2)
                      {
                        *(v17 + 4) = v189 % 0xF4240;
                        v190 = v17[228];
                        if (v17[228])
                        {
                          v191 = v17 + 232;
                          do
                          {
                            *v191 %= 0xF4240uLL;
                            v191 += 5;
                            --v190;
                          }

                          while (v190);
                        }
                      }

                      else
                      {
                        *(v17 + 4) = v189 % 0x1312D00;
                        v196 = v17[228];
                        if (v17[228])
                        {
                          v197 = v17 + 232;
                          do
                          {
                            *v197 %= 0x1312D00uLL;
                            v197 += 5;
                            --v196;
                          }

                          while (v196);
                        }
                      }
                    }

                    else if ((v123 & 0x100) != 0)
                    {
                      *(v17 + 4) %= 0x1E8480uLL;
                      v194 = v17[228];
                      if (v17[228])
                      {
                        v195 = v17 + 232;
                        do
                        {
                          *v195 %= 0x1E8480uLL;
                          v195 += 5;
                          --v194;
                        }

                        while (v194);
                      }
                    }

                    else if (v123)
                    {
                      *(v17 + 4) %= 0xF4240uLL;
                      v146 = v17[228];
                      if (v17[228])
                      {
                        v147 = v17 + 232;
                        do
                        {
                          *v147 %= 0xF4240uLL;
                          v147 += 5;
                          --v146;
                        }

                        while (v146);
                      }
                    }
                  }

                  goto LABEL_397;
                }

LABEL_235:
                v132 = *(v17 + 6);
                if ((v132 & 0x4008) != 0)
                {
                  *(v17 + 4) -= 604800000000000 * (((*(v17 + 4) * v11) >> 64) >> 47);
                  v133 = v17[228];
                  if (v17[228])
                  {
                    v134 = v17 + 232;
                    do
                    {
                      *v134 -= 604800000000000 * (((*v134 * v11) >> 64) >> 47);
                      v134 += 5;
                      --v133;
                    }

                    while (v133);
                  }
                }

                else if ((v132 & 4) != 0)
                {
                  *(v17 + 4) %= 0x165A0BC00uLL;
                  v152 = v17[228];
                  if (v17[228])
                  {
                    v153 = v17 + 232;
                    do
                    {
                      *v153 %= 0x165A0BC00uLL;
                      v153 += 5;
                      --v152;
                    }

                    while (v152);
                  }
                }

                else if ((v132 & 2) != 0)
                {
                  *(v17 + 4) %= 0x1312D00uLL;
                  v165 = v17[228];
                  if (v17[228])
                  {
                    v166 = v17 + 232;
                    do
                    {
                      *v166 %= 0x1312D00uLL;
                      v166 += 5;
                      --v165;
                    }

                    while (v165);
                  }
                }

                else if ((v132 & 0x10000) != 0)
                {
                  *(v17 + 4) %= 0x1312D00uLL;
                  v178 = v17[228];
                  if (v17[228])
                  {
                    v179 = v17 + 232;
                    do
                    {
                      *v179 %= 0x1312D00uLL;
                      v179 += 5;
                      --v178;
                    }

                    while (v178);
                  }
                }

                else if (v132)
                {
                  *(v17 + 4) %= 0xF4240uLL;
                  v141 = v17[228];
                  if (v17[228])
                  {
                    v142 = v17 + 232;
                    do
                    {
                      *v142 %= 0xF4240uLL;
                      v142 += 5;
                      --v141;
                    }

                    while (v141);
                  }
                }

                goto LABEL_397;
              }

              if (v122 == 6)
              {
                v135 = *(v17 + 6);
                if ((v135 & 0x4008) != 0)
                {
                  *(v17 + 4) -= 604800000000000 * (((*(v17 + 4) * v11) >> 64) >> 47);
                  v136 = v17[228];
                  if (v17[228])
                  {
                    v137 = v17 + 232;
                    do
                    {
                      *v137 -= 604800000000000 * (((*v137 * v11) >> 64) >> 47);
                      v137 += 5;
                      --v136;
                    }

                    while (v136);
                  }
                }

                else if ((v135 & 0x1000) != 0)
                {
                  *(v17 + 4) %= 0x77359400uLL;
                  v163 = v17[228];
                  if (v17[228])
                  {
                    v164 = v17 + 232;
                    do
                    {
                      *v164 %= 0x77359400uLL;
                      v164 += 5;
                      --v163;
                    }

                    while (v163);
                  }
                }

                else if ((v135 & 0x800) != 0)
                {
                  *(v17 + 4) %= 0x5F5E100uLL;
                  v176 = v17[228];
                  if (v17[228])
                  {
                    v177 = v17 + 232;
                    do
                    {
                      *v177 %= 0x5F5E100uLL;
                      v177 += 5;
                      --v176;
                    }

                    while (v176);
                  }
                }

                else if ((v135 & 0x10000) != 0)
                {
                  *(v17 + 4) %= 0x5F5E100uLL;
                  v185 = v17[228];
                  if (v17[228])
                  {
                    v186 = v17 + 232;
                    do
                    {
                      *v186 %= 0x5F5E100uLL;
                      v186 += 5;
                      --v185;
                    }

                    while (v185);
                  }
                }

                else if ((v135 & 0x400) != 0)
                {
                  *(v17 + 4) %= 0x3D0900uLL;
                  v150 = v17[228];
                  if (v17[228])
                  {
                    v151 = v17 + 232;
                    do
                    {
                      *v151 %= 0x3D0900uLL;
                      v151 += 5;
                      --v150;
                    }

                    while (v150);
                  }
                }
              }

              else
              {
                if (v122 != 7)
                {
LABEL_424:
                  v231 = "rGnssMeas.constellation == GL_GNSS_CONSTELLATION_UNKNOWN";
                  DeviceFaultNotify("glpe_reqhdlr_gnss_meas_data.cpp", 1572, "CheckValidRSTRange", "rGnssMeas.constellation == GL_GNSS_CONSTELLATION_UNKNOWN");
                  v232 = "glpe_reqhdlr_gnss_meas_data.cpp";
                  v233 = 1572;
                  goto LABEL_423;
                }

                v129 = *(v17 + 6);
                if ((v129 & 0x4008) != 0)
                {
                  *(v17 + 4) -= 604800000000000 * (((*(v17 + 4) * v11) >> 64) >> 47);
                  v130 = v17[228];
                  if (v17[228])
                  {
                    v131 = v17 + 232;
                    do
                    {
                      *v131 -= 604800000000000 * (((*v131 * v11) >> 64) >> 47);
                      v131 += 5;
                      --v130;
                    }

                    while (v130);
                  }
                }

                else if ((v129 & 4) != 0)
                {
                  *(v17 + 4) %= 0x165A0BC00uLL;
                  v161 = v17[228];
                  if (v17[228])
                  {
                    v162 = v17 + 232;
                    do
                    {
                      *v162 %= 0x165A0BC00uLL;
                      v162 += 5;
                      --v161;
                    }

                    while (v161);
                  }
                }

                else if ((v129 & 2) != 0)
                {
                  *(v17 + 4) %= 0x1312D00uLL;
                  v172 = v17[228];
                  if (v17[228])
                  {
                    v173 = v17 + 232;
                    do
                    {
                      *v173 %= 0x1312D00uLL;
                      v173 += 5;
                      --v172;
                    }

                    while (v172);
                  }
                }

                else if (v129)
                {
                  *(v17 + 4) %= 0xF4240uLL;
                  v148 = v17[228];
                  if (v17[228])
                  {
                    v149 = v17 + 232;
                    do
                    {
                      *v149 %= 0xF4240uLL;
                      v149 += 5;
                      --v148;
                    }

                    while (v148);
                  }
                }
              }
            }

LABEL_397:
            v198 = *(v17 + 5);
            if (v198 < 1)
            {
              v199 = 1;
            }

            else
            {
              if (!HIDWORD(v198))
              {
LABEL_402:
                v200 = *(v17 + 6);
                if ((v200 & 0x88) != 0)
                {
                  *(v17 + 6) = (v200 << 8) & 0x8000 | (((v200 >> 3) & 1) << 14) | v200;
                }

                if ((*(v17 + 36) & 1) == 0)
                {
                  *(v17 + 36) = 0;
                }

                *(v17 + 54) = *(MeMeas + 9);
                v17[220] = MeMeas[40];
                ++*(this + 17);
                goto LABEL_407;
              }

              v199 = 0xFFFFFFFFLL;
            }

            *(v17 + 5) = v199;
            goto LABEL_402;
          }

LABEL_200:
          LOBYTE(v116) = 9;
          goto LABEL_201;
        }

        if (v114 >= 0xAF)
        {
          goto LABEL_191;
        }
      }

      v115 = 39824;
      goto LABEL_189;
    }

    v72 = *(MeMeas + 1);
    if (v72 == 3)
    {
      if (*(MeMeas + 4) >= 0x23Fu)
      {
        goto LABEL_421;
      }

      v74 = BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas];
      LODWORD(v75) = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[v74 + 21];
      if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[v74 + 21])
      {
        goto LABEL_422;
      }

      goto LABEL_138;
    }

    if (v72)
    {
      v73 = *(MeMeas + 3);
      if ((v73 & 2) != 0)
      {
        v77 = BlueFin::GlSignalId::GetEpochPerSymbol(MeMeas);
        if (*(MeMeas + 4) >= 0x23Fu)
        {
          goto LABEL_421;
        }

        v75 = *(MeMeas + 1);
        v78 = *MeMeas;
        LODWORD(v74) = BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas];
        if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v75 - v75 + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]])
        {
          goto LABEL_422;
        }

        if (!BlueFin::GlSignalId::s_ausSignalIndexAndGnss2symbolsPerSecFrame[7 * v75 + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]])
        {
          v231 = "usSymbolsPerSecFrame != 0";
          DeviceFaultNotify("glsignalid.h", 771, "GetSymbolsPerSecFrame", "usSymbolsPerSecFrame != 0");
          v232 = "glsignalid.h";
          v233 = 771;
LABEL_423:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v232, v233, v231);
        }

        v79 = (v78 - 66) >= 0xA && (v78 - 1) >= 0x20;
        if (v79)
        {
          v80 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v75 - v75 + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]] * v77 * BlueFin::GlSignalId::s_ausSignalIndexAndGnss2symbolsPerSecFrame[7 * v75 + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]];
        }

        else
        {
          v80 = 20;
        }

        if (v75 == 2)
        {
          LOWORD(v75) = v80;
        }

        else
        {
          LOWORD(v75) = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v75 - v75 + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]] * v77 * BlueFin::GlSignalId::s_ausSignalIndexAndGnss2symbolsPerSecFrame[7 * v75 + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]];
        }

        LODWORD(v75) = v75;
        goto LABEL_138;
      }
    }

    else
    {
      v73 = *(MeMeas + 3);
    }

    if ((v73 & 8) != 0)
    {
      EpochPerBit = BlueFin::GlSignalId::GetEpochPerBit(MeMeas);
    }

    else
    {
      if ((v73 & 4) == 0)
      {
        if (*(MeMeas + 4) >= 0x23Fu)
        {
          goto LABEL_421;
        }

        v75 = v72;
        LODWORD(v74) = BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas];
        LODWORD(v75) = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v75 - v75 + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]];
        if (!v75)
        {
          goto LABEL_422;
        }

        goto LABEL_138;
      }

      EpochPerBit = BlueFin::GlSignalId::GetEpochPerSymbol(MeMeas);
    }

    if (*(MeMeas + 4) >= 0x23Fu)
    {
      goto LABEL_421;
    }

    LODWORD(v74) = BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas];
    if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(MeMeas + 1) - *(MeMeas + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]])
    {
LABEL_422:
      v231 = "ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      v232 = "glsignalid.h";
      v233 = 686;
      goto LABEL_423;
    }

    LODWORD(v75) = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(MeMeas + 1) - *(MeMeas + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*MeMeas]] * EpochPerBit;
LABEL_138:
    v81 = v6 / v75;
    v82 = v253 * v81;
    v83 = *(MeMeas + 8) * v81 - floor(*(MeMeas + 8) * v81);
    v84 = v83 - (v82 - floor(v82));
    if (v84 >= v7)
    {
      v85 = -1.0;
    }

    else
    {
      if (v84 >= -0.5)
      {
LABEL_143:
        v86 = v83 + floor(v82);
        v87 = dbl_298A44C50[v74 == 2];
        v88 = v86 * v75;
        if (v74 == 2)
        {
          v89 = 0x8000;
        }

        else
        {
          v89 = 0x4000;
        }

        if (v88 < 0.0)
        {
          v88 = v87 + v88;
        }

        if (v88 >= v87)
        {
          v88 = v88 - v87;
        }

        v90 = &v5[392 * *(this + 17)];
        *(v90 + 4) = (v88 * 1000000.0);
        *(v90 + 6) = *(v90 + 6) & 0xFFFFFFEF | v89;
        goto LABEL_151;
      }

      v85 = 1.0;
    }

    v82 = v82 + v85;
    goto LABEL_143;
  }

LABEL_408:
  *(v243 + 301) = 104;
  v243[2416] = 1;
  LODWORD(v4) = *a2;
  *(v243 + 303) = (v4 * 1000000.0);
  *(this + 2458) = 0u;
  *(this + 2457) = 0u;
  *(this + 2456) = 0u;
  v201 = *(this + 7);
  *(v243 + 620) = *(*(v201 + 56) + 26168);
  v243[2488] = 1;
  *(v243 + 312) = 0x41D779C018000000;
  v243[2504] = 8;
  v202 = v243 + 2528;
  v203 = 18;
  do
  {
    *(v202 - 1) = 0;
    *v202 = 1084227584;
    v202 += 6;
    --v203;
  }

  while (v203);
  BYTE4(v256) = 1;
  LODWORD(v257[0]) = 0;
  WORD2(v257[0]) = 0;
  *(v243 + 315) = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(*(v201 + 120), &v256 + 4, 1, 0) / 299792.458 * 1000000.0;
  v204 = *(*(this + 7) + 120);
  *(v243 + 632) = 0;
  LOBYTE(v265) = 76;
  HIDWORD(v265) = 3;
  LOWORD(v266) = 390;
  *(v243 + 315) = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(v204, &v265, 1, 0) / 299792.458 * 1000000.0;
  v205 = *(*(this + 7) + 120);
  *(v243 + 632) = 0;
  LOBYTE(v255) = -117;
  HIDWORD(v255) = 0;
  LOWORD(v256) = 453;
  *(v243 + 315) = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(v205, &v255, 1, 0) / 299792.458 * 1000000.0;
  v206 = *(*(this + 7) + 120);
  *(v243 + 632) = 0;
  LOBYTE(v253) = 33;
  HIDWORD(v253) = 0;
  LOWORD(v254) = 128;
  *(v243 + 315) = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(v206, &v253, 1, 0) / 299792.458 * 1000000.0;
  v207 = *(*(this + 7) + 120);
  *(v243 + 632) = 0;
  BYTE4(v251) = 66;
  LODWORD(v252) = 0;
  WORD2(v252) = 161;
  v208 = (v243 + 2600);
  *(v243 + 315) = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(v207, &v251 + 4, 1, 0) / 299792.458 * 1000000.0;
  *(v243 + 632) = 0;
  v209 = 0x34u;
  do
  {
    LOBYTE(v250) = v209;
    HIDWORD(v250) = 0;
    LOWORD(v251) = 575;
    v210 = BlueFin::GlSvId::s_aucSvId2gnss[v209];
    if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v210] == 255)
    {
      HIDWORD(v250) = -1;
    }

    else
    {
      LOWORD(v251) = BlueFin::GlSignalId::s_ausGnss2signalId[v210] + v209 - BlueFin::GlSvId::s_aucGnss2minSvId[v210];
    }

    *(v208 - 1) = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(*(*(this + 7) + 120), &v250, 1, 0) / 299792.458 * 1000000.0;
    *v208 = 1084227584;
    v208 += 3;
    ++v209;
  }

  while (v209 != 66);
  LOBYTE(v250) = 1;
  HIDWORD(v250) = 2;
  LOWORD(v251) = 64;
  *(v243 + 321) = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(*(*(this + 7) + 120), &v250, 1, 1) / 299792.458 * 1000000.0;
  v211 = *(*(this + 7) + 120);
  v212 = *(v211 + 136) / 299792.458 * 1000000.0;
  *(v243 + 644) = v212;
  BYTE4(v248) = -117;
  LODWORD(v249) = 2;
  WORD2(v249) = 525;
  *(v243 + 321) = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(v211, &v248 + 4, 1, 1) / 299792.458 * 1000000.0;
  v213 = *(*(this + 7) + 120);
  v214 = *(v213 + 136) / 299792.458 * 1000000.0;
  *(v243 + 644) = v214;
  LOBYTE(v247) = 76;
  HIDWORD(v247) = 2;
  LOWORD(v248) = 327;
  *(v243 + 321) = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(v213, &v247, 1, 1) / 299792.458 * 1000000.0;
  v215 = *(*(this + 7) + 120);
  v216 = *(v215 + 136) / 299792.458 * 1000000.0;
  *(v243 + 644) = v216;
  BYTE4(v245) = -81;
  LODWORD(v246) = 0;
  WORD2(v246) = 561;
  *(v243 + 366) = BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(v215, &v245 + 4, 1, 1) / 299792.458 * 1000000.0;
  v230 = *(*(*(this + 7) + 120) + 136) / 299792.458 * 1000000.0;
  *&v230 = v230;
  *(v243 + 734) = LODWORD(v230);
  if (*(*(this + 1) + 96))
  {
    BlueFin::GlPeGnssSvsInfoMgr::Generate(this + 27216, a2, v230, v223, v224, v225, v226, v227, v228, v229, v217, v218, v219, v220, v221, v222, v234, v235, v236, v237, v238, *&v239.f64[0], v239.f64[1], *&v240.f64[0], *&v240.f64[1], v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, *&v253, v254, *&v255, v256, v257[0], v257[1], v258, v259, v260, v261, v262, v263, v264[0], v264[1], v264[2], v264[3], v264[4], v264[5], v264[6], v264[7], v264[8], v264[9], v265, v266, v267, v268);
  }
}

float BlueFin::GlPeGnssHwBiasMgr::GetInterSystemHwBiasM(uint64_t a1, unsigned __int8 *a2, int a3, int a4)
{
  if ((*(a1 + 168) & 1) == 0)
  {
    v4 = *(*(a1 + 144) + 2616);
    if (v4 == 1)
    {
      v6 = 24;
    }

    else
    {
      v5 = 0;
      if (v4 != 4)
      {
LABEL_7:
        *(a1 + 172) = v5;
        *(a1 + 168) = 1;
        goto LABEL_8;
      }

      v6 = 36;
    }

    v5 = *(a1 + v6);
    goto LABEL_7;
  }

LABEL_8:
  if (a3)
  {
    v7 = *(a2 + 1);
    v8 = a1 + 12;
    v9 = *a2;
    v10 = BlueFin::GlSvId::s_aucSvId2gnss[v9];
    if (a4 && v7 == 2)
    {
      v11 = *(v8 + 4 * BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v10 + 14]);
      v12 = *(a1 + 128);
    }

    else
    {
      v11 = *(v8 + 4 * BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v7 - v7 + v10]);
      v12 = 0.0;
      if ((v9 - 66) >= 0xFFFFFFF2)
      {
        v12 = *(a1 + 4 * v9 - 136);
      }
    }

    return v11 + v12;
  }

  else
  {
    v13 = *a2;
    v14 = 0.0;
    if ((v13 - 66) >= 0xFFFFFFF2)
    {
      v14 = *(a1 + 4 * v13 - 136);
    }

    return (*(a1 + 4 * BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(a2 + 1) - *(a2 + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*a2]] + 12) + v14) - *(a1 + 172);
  }
}

BOOL BlueFin::GlPePpsGen::UpdatePps(BlueFin::GlPePpsGen *this)
{
  if (*(this + 56) != 1 || *(this + 9) == 4294967300.0)
  {
    return 0;
  }

  v2 = *(*(this + 1) + 7274) != 0;
  if (*(*(this + 1) + 7274))
  {
    v4 = *(this + 2);
    v5 = *(v4 + 240);
    if (v5)
    {
      v5(*(v4 + 8));
    }

    v6 = 0x1000000000000;
  }

  else
  {
    v6 = 0;
  }

  if (*(this + 10) != -1)
  {
    v7 = *(this + 1);
    v8 = *(this + 24);
    *(v7 + 7264) = *(this + 10);
    *(v7 + 7248) = v8;
    *(this + 10) = -1;
  }

  if (!*(this + 6))
  {
    DeviceFaultNotify("glpe_ppsgen.cpp", 88, "UpdatePps", "m_potMeasEng != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ppsgen.cpp", 88, "m_potMeasEng != nullptr");
  }

  v9 = *(*this + 2568);
  BlueFin::GlPeTimeManager::GetTime(v35, *this, v9, 1);
  UncUs = BlueFin::GlPeGnssTime::GetUncUs(v35, 0);
  v33 = COERCE_DOUBLE(&off_2A1F0B5F0);
  v34 = 0;
  Gps = BlueFin::GlPeGnssTime::GetGps(v35, &v33);
  v12 = (*(*&v33 + 32))(&v33, Gps);
  v13 = 0;
  LODWORD(v14) = v34;
  v15 = (v14 * 2.32830644e-10 + (v12 % 0x93A80)) * 1000.0;
  v16 = -floor(v15 / 1000.0 + 0.5);
  v17 = -0.0;
  if (v15 / 1000.0 > 0.0)
  {
    v17 = v16;
  }

  if (UncUs >= *(this + 9))
  {
    v19 = 0;
  }

  else
  {
    v18 = v15 + v17 * 1000.0;
    v19 = 0;
    if (fabs(v18) <= 0.5)
    {
      v20 = v18 + 0.076036 + *(this + 8);
      v21 = v20 / 1000.0;
      if (v20 / 1000.0 <= 0.0)
      {
        v22 = 0.0;
        if (v20 / 1000.0 < 0.0)
        {
          v22 = ceil(v21 + -0.5);
        }
      }

      else
      {
        v22 = floor(v21 + 0.5);
      }

      v23 = v20 - v22 * 1000.0;
      v24 = -(v20 + -v22 * 1000.0);
      v33 = 0.0;
      if (v9 <= 0xFF9222FE)
      {
        v25 = v9;
      }

      else
      {
        v25 = v9;
      }

      BlueFin::GlPeTimeManager::GetDtsS(*this, v25, 0, 0, &v33, 0);
      GlCustomLog(15, "PPS::SetPpsAiding(timestamp:%u  deltaMs:%+.6lf  periodMs:%.6lf PpsLms %.6lf)\n", v9, v24, (v33 + 1.0) * 1000.0, v9 - v23);
      v26.n128_f64[0] = (v33 + 1.0) * 1000.0;
      (*(**(this + 6) + 272))(v24, v26);
      BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(*this, 2u, 0, this + 24, v25);
      *v28.i64 = UncUs * 1000.0 + 0.5;
      *v29.i64 = *v28.i64 + trunc(*v28.i64 * 2.32830644e-10) * -4294967300.0;
      v30.f64[0] = NAN;
      v30.f64[1] = NAN;
      v31 = vnegq_f64(v30);
      *&v32 = vbslq_s8(v31, v29, v28).u64[0];
      if (*v28.i64 > 4294967300.0)
      {
        *v28.i64 = v32;
      }

      if (*v28.i64 < -4294967300.0)
      {
        *v27.i64 = -*v28.i64;
        *v28.i64 = -(*v28.i64 - trunc(*v28.i64 * -2.32830644e-10) * -4294967300.0);
        *v28.i64 = -*vbslq_s8(v31, v28, v27).i64;
      }

      LODWORD(v19) = *v28.i64;
      if (*v28.i64 < 0.0)
      {
        v19 = --*v28.i64;
      }

      else
      {
        v19 = v19;
      }

      v13 = 0x100000000;
    }
  }

  *(*(this + 1) + 7268) = v13 | v6 | v19;
  return v2;
}

uint64_t BlueFin::GlReqSm::DistributeFixStatus(uint64_t a1, int a2, uint64_t a3, unsigned __int8 *a4)
{
  v7 = a1 + 31077;
  v70 = 0;
  v8 = (a1 + 10880);
  if (!BlueFin::GlPeReqBag::NeedInterpolation((a1 + 10880), &v70))
  {
    goto LABEL_65;
  }

  if (!a3)
  {
    DeviceFaultNotify("glreqsm.cpp", 2129, "InterpolateFixStatus", "potFixStatus != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glreqsm.cpp", 2129, "potFixStatus != nullptr");
  }

  v68 = v70;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  v9 = *(v7 + 471);
  if (v9 < 0x12E)
  {
LABEL_8:
    v11 = 0;
  }

  else
  {
    v10 = v9 / 0x12E - 1;
    while (!BlueFin::GlPeReqBag::ReadPreviousPosition(v8, v10, &v84) || (BYTE1(v84) & 1) == 0)
    {
      if (--v10 == -1)
      {
        goto LABEL_8;
      }
    }

    if (!*(a3 + 4048) || *(a3 + 4144) >= 50.0)
    {
      if (!v68)
      {
        BlueFin::GlPeReqBag::ResetInterpolation(v8);
      }

      goto LABEL_65;
    }

    v11 = 1;
  }

  BlueFin::GlPeReqBag::ResetInterpolation(v8);
  v82 = 0uLL;
  v83 = 0;
  v12 = *(a3 + 4072);
  v81 = *(a3 + 4088);
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  v79 = 0u;
  v80 = v12;
  v77 = 0u;
  v78 = 0u;
  v76 = 0u;
  v13 = *(v7 + 471);
  if (v13 >= 0x12E)
  {
    v66 = a3;
    v14 = 0;
    v15 = v13 / 0x12E - 1;
    while (1)
    {
      if (BlueFin::GlPeReqBag::ReadPreviousPosition(v8, v15, &v84))
      {
        v16 = *(a1 + 14132) + *a3 - DWORD2(v84);
        v17 = v16 / 0x3E8;
        v19 = v16 > 0x3E7 && v16 % 0x3E8 < 0x1F4;
        v14 = v17 - v19;
        if (!v11)
        {
LABEL_21:
          if (v14 - 20 < 0xFFFFFFED)
          {
            v20 = 1;
          }

          else
          {
            v20 = v11;
          }

          v21 = 0.0;
          v22 = 0.0;
          if (v20)
          {
            goto LABEL_65;
          }

LABEL_36:
          if (*(v7 + 1))
          {
            BYTE6(v76) = 1;
            v25 = *(v7 + 51);
            if (BYTE5(v84) == 1)
            {
              v25 = (v25 + *(&v88 + 2)) * 0.5;
            }

LABEL_41:
            *(&v79 + 2) = v25;
          }

          else if (BYTE5(v84))
          {
            BYTE6(v76) = 1;
            v25 = *(&v88 + 2);
            goto LABEL_41;
          }

          v65 = a4;
          if (*v7)
          {
            BYTE5(v76) = 1;
            v26 = *(v7 + 35);
            if (BYTE4(v84) == 1)
            {
              v67 = (*(v7 + 39) - *(&v87 + 3)) / v14;
              v27 = v88;
              v28 = (*(a1 + 31120) - v88) / v14;
              *(&v78 + 2) = (v26 + *(&v87 + 2)) * 0.5;
              HIDWORD(v78) = HIDWORD(v87);
            }

            else
            {
              v28 = 0;
              v67 = -v26;
              v29 = *(v7 + 39);
              DWORD2(v78) = *(v7 + 35);
              HIDWORD(v78) = v29;
              v27 = *(a1 + 31120);
            }

LABEL_48:
            *&v79 = v27;
          }

          else
          {
            if (BYTE4(v84))
            {
              v28 = 0;
              BYTE5(v76) = 1;
              v67 = *(&v87 + 2);
              *(&v78 + 1) = *(&v87 + 1);
              v27 = v88;
              goto LABEL_48;
            }

            v28 = 0;
            v67 = 0.0;
          }

          BlueFin::lla2ned(&v80, &v82, 0, &v73);
          v30 = (v14 + 1);
          v31 = v73 / v30;
          v32 = v74 / v30;
          v33 = (v7 + 947);
          v34 = BYTE2(v84) & BYTE3(v84);
          v35 = DWORD2(v84) + 1000;
          v36 = -1000 * v14;
          v37 = v75 / v30;
          v38 = 1.0;
          do
          {
            *(&v78 + 3) = v67 + *(&v78 + 3);
            *&v79 = v79 + v28;
            v39 = 1.0 / v38;
            if ((v34 & 1) == 0)
            {
              v39 = 0.0;
            }

            v73 = (v31 * (1.0 - v39) + v22 * v39) * v38;
            v74 = (v32 * (1.0 - v39) + v21 * v39) * v38;
            v75 = v37 * v38;
            BlueFin::ned2lla(&v82, &v73, &v71);
            v40 = *(a1 + 31800);
            v41 = v72;
            *(v40 + 4072) = v71;
            *(v40 + 4088) = v41;
            v42 = v36 + *v40;
            *v40 = v42;
            v43 = v42;
            if (v42 <= 0xFF9222FE)
            {
              v43 = v42;
            }

            BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(*(v40 + 7848), 2u, 1, v40 + 4, v43);
            BlueFin::GlPeReqBag::SetInterPolateFixStatus(v8, *(a1 + 31800));
            if (a2)
            {
              v44 = *(*(a1 + 6304) + 61032);
              if (v44)
              {
                LOBYTE(v44) = *(v44 + 1076);
              }

              *(a1 + 54026) = v44 & 1;
              BlueFin::GlReqSm::GenerateNMEA(a1);
              if (*(v7 + 963) == 1)
              {
                *(v7 + 963) = 0;
                *(v7 + 2059) = 0;
              }

              v45 = *v33;
              *v33 = 1;
              if (v45 != 1)
              {
                *(v7 + 963) = 1;
              }
            }

            v38 = v38 + 1.0;
            v35 += 1000;
            v36 += 1000;
            --v14;
          }

          while (v14);
          v46 = *(a1 + 31800);
          v47 = v81;
          *(v46 + 4072) = v80;
          *(v46 + 4088) = v47;
          v48 = *v46;
          if (*v46 <= 0xFF9222FE)
          {
            v48 = *v46;
          }

          BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(*(v46 + 7848), 2u, 1, v46 + 4, v48);
          a4 = v65;
          a3 = v66;
          goto LABEL_65;
        }

        if (BYTE1(v84) == 1)
        {
          break;
        }
      }

      if (--v15 == -1)
      {
        goto LABEL_21;
      }
    }

    v82 = v85;
    v83 = v86;
    v22 = 0.0;
    if (BYTE2(v84) == 1)
    {
      v21 = 0.0;
      if (BYTE3(v84) == 1)
      {
        v23 = *(&v86 + 1) / 1.9438445;
        v24 = __sincos_stret(*&v87 * 0.0174532925);
        v22 = v24.__cosval * v23;
        v21 = v24.__sinval * v23;
      }
    }

    else
    {
      v21 = 0.0;
    }

    if (v14 - 1 <= 0x12)
    {
      goto LABEL_36;
    }
  }

LABEL_65:
  result = BlueFin::GlPeReqBag::NeedInterpolation(v8, &v70);
  if ((result & 1) == 0)
  {
    if (a2)
    {
      v50 = *(*(a1 + 6304) + 61032);
      if (v50)
      {
        LOBYTE(v50) = *(v50 + 1076);
      }

      *(a1 + 54026) = v50 & 1;
      BlueFin::GlReqSm::GenerateNMEA(a1);
      if (*(v7 + 963) == 1)
      {
        *(v7 + 963) = 0;
        *(v7 + 2059) = 0;
      }

      v51 = *(v7 + 947);
      *(v7 + 947) = 1;
      if (v51 != 1)
      {
        *(v7 + 963) = 1;
      }
    }

    result = BlueFin::GlPeReqBag::SetFixStatus(v8, a3);
    if ((*(a1 + 12193) & 0x80) != 0)
    {
      result = GlCustomLog(14, "Active Request: GL_REQ_GNSS_MEAS_DATA\n");
      v54 = 0;
      v55 = *(v7 + 2115);
      while (1)
      {
        v56 = *(v8 + v54);
        if (v56)
        {
          if (*(*(v56 + 8) + 16) == 15)
          {
            break;
          }
        }

        v54 += 8;
        if (v54 == 576)
        {
          v57 = 0;
          goto LABEL_82;
        }
      }

      v57 = v56 + 64;
LABEL_82:
      v58 = *(v55 + 160);
      if (v58)
      {
        result = v58(*(v55 + 8), a3, v57);
      }
    }

    else
    {
      v52 = *(v7 + 2115);
      v53 = *(v52 + 160);
      if (v53)
      {
        result = v53(*(v52 + 8), a3, 0);
      }
    }

    v59 = *(v7 + 2115);
    v60 = *(v59 + 216);
    if (v60)
    {
      result = v60(*(v59 + 8), *(a1 + 6320) + 56136);
    }

    if (!**a4)
    {
      v61 = a4[8];
      if (v61 < 2)
      {
        return BlueFin::GlPeReqBag::InitializeReqIdReportingSet(v8, a3, a4);
      }

      else
      {
        v62 = v61 - 1;
        v63 = (*a4 + 4);
        while (!*v63++)
        {
          if (!--v62)
          {
            return BlueFin::GlPeReqBag::InitializeReqIdReportingSet(v8, a3, a4);
          }
        }
      }
    }
  }

  return result;
}

BOOL BlueFin::GlPeReqBag::NeedInterpolation(BlueFin::GlPeReqBag *this, BOOL *a2)
{
  v4 = 0;
  *a2 = 0;
  v5 = 1;
  while (1)
  {
    v6 = *(this + v4);
    if (v6)
    {
      if ((*(**(v6 + 8) + 496))(*(v6 + 8)))
      {
        break;
      }
    }

    v5 = v4++ < 0x47;
    if (v4 == 72)
    {
      return 0;
    }
  }

  v7 = *(*(this + v4) + 8);
  *a2 = (*(*v7 + 472))(v7);
  return v5;
}

uint64_t BlueFin::GlPeReqBag::GenerateNMEA(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x2A1C7C4A8](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = result;
  v47 = *MEMORY[0x29EDCA608];
  v19 = (result + 3233);
  v20 = *(result + 3233);
  *(result + 3233) = 0;
  if (!v3)
  {
    v4 = *(*(result + 20088) + 31800);
  }

  for (i = 0; i != 72; ++i)
  {
    v13 = *(v11 + 8 * i);
    if (v13)
    {
      v14 = *(v13[1] + 16);
      v15 = v14 > 0xD;
      v16 = (1 << v14) & 0x291F;
      if (!v15 && v16 != 0)
      {
        bzero(v21, 0x1CF8uLL);
        memset(&v21[7416], 248, 24);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v18 = (*(*v13 + 248))(v13, v21, v4);
        result = BlueFin::GlPeReqBag::GenerateNMEAForReqHdlr(v11, v18, v10, v8, v6, i);
      }
    }
  }

  *v19 = v20;
  return result;
}

uint64_t BlueFin::GlReqSm::GenerateNMEA(uint64_t a1)
{
  v2 = (a1 + 32024);
  v3 = *(*(a1 + 6304) + 61032);
  if (v3)
  {
    LOBYTE(v3) = *(v3 + 1076);
  }

  *(a1 + 54026) = v3 & 1;
  result = BlueFin::GlPeReqBag::GenerateNMEA(a1 + 10880, a1 + 31808);
  v5 = *(a1 + 6320) + 56096;
  *v5 = 0u;
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  if (*(v2 + 16) == 1)
  {
    *(v2 + 16) = 0;
    *(v2 + 139) = 0;
  }

  v6 = *v2;
  *v2 = 1;
  if (v6 != 1)
  {
    *(v2 + 16) = 1;
  }

  return result;
}

char *BlueFin::GlPeRqHdlrPosPeriodic::GetFixStatus(uint64_t a1, char *__dst, char *__src, double a4)
{
  if (__dst != __src)
  {
    memcpy(__dst, __src, 0x1CF8uLL);
    v7 = *(__src + 929);
    *(__dst + 7416) = *(__src + 7416);
    *(__dst + 929) = v7;
    memcpy(__dst + 7440, __src + 7440, 0x190uLL);
  }

  v8 = *(a1 + 168);
  __dst[4048] = v8;
  LODWORD(a4) = *(a1 + 72);
  *(__dst + 863) = *&a4;
  *(__dst + 1754) = *(a1 + 172);
  if (!v8)
  {
    __dst[4048] = 0;
    *(__dst + 4280) = 0u;
    *(__dst + 4296) = 0u;
    *(__dst + 4312) = 0u;
    *(__dst + 4328) = 0u;
    *(__dst + 4856) = 0u;
    *(__dst + 4872) = 0u;
    *(__dst + 4888) = 0u;
    *(__dst + 4904) = 0u;
    *(__dst + 4920) = 0u;
    *(__dst + 4936) = 0u;
    *(__dst + 4952) = 0u;
    *(__dst + 4968) = 0u;
    *(__dst + 4984) = 0u;
    *(__dst + 5000) = 0u;
    *(__dst + 5016) = 0u;
    *(__dst + 5032) = 0u;
    *(__dst + 5048) = 0u;
    *(__dst + 5064) = 0u;
    *(__dst + 5080) = 0u;
    *(__dst + 5096) = 0u;
    *(__dst + 5592) = 0u;
    *(__dst + 5608) = 0u;
    *(__dst + 5560) = 0u;
    *(__dst + 5576) = 0u;
    *(__dst + 5528) = 0u;
    *(__dst + 5544) = 0u;
    *(__dst + 5496) = 0u;
    *(__dst + 5512) = 0u;
    *(__dst + 5464) = 0u;
    *(__dst + 5480) = 0u;
    *(__dst + 5432) = 0u;
    *(__dst + 5448) = 0u;
    *(__dst + 5400) = 0u;
    *(__dst + 5416) = 0u;
    *(__dst + 5368) = 0u;
    *(__dst + 5384) = 0u;
  }

  return __dst;
}

uint64_t BlueFin::GlPeReqBag::GenerateNMEAForReqHdlr(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v80 = *MEMORY[0x29EDCA608];
  v57 = &unk_2A1F13AA0;
  v58 = (result + 3233);
  v59 = *(result + 3233);
  *(result + 3233) = 0;
  if (a6 <= 0x47)
  {
    v10 = result;
    v11 = *(result + 8 * a6);
    v12 = *(v11 + 24);
    result = (*(*v11[1] + 512))(v11[1]);
    if (result & 1) != 0 || BlueFin::GlUtils::m_ucEnabled && (result = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x14), (result))
    {
      *(v10 + 1344) = 1;
      *(v10 + 1348) = 0;
      *(v10 + 1672) = 0;
      *(v10 + 1674) = 0;
      v15 = (v10 + 3104);
      *(v10 + 3216) = 0;
      *(v10 + 3104) = 0;
      *(v10 + 3107) = 0;
      BlueFin::GlPeNmeaGen::FormatTimeTag((v10 + 1344), *a2, v13, v14);
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      *__s = 0u;
      v61 = 0u;
      v17 = BlueFin::GlPeNmeaGen::FormatNmea((v10 + 1344), a2, __s, 0x140, 0, v16);
      v18 = strlen(__s);
      if (((*v11)[5])(v11, v17, a2, __s, v18))
      {
        GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
      }

      BlueFin::GlPeNmeaGen::FormatNmeaSTA(v10 + 1344, a2, *(v10 + 576), __s, 320);
      v19 = strlen(__s);
      if (((*v11)[5])(v11, 0, a2, __s, v19))
      {
        GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
      }

      if ((*(v10 + 20700) & 1) == 0)
      {
        v20 = *(v10 + 600);
        if (*(v20 + 2816) != -1 && *(v20 + 2832) != 4294967300.0)
        {
          LODWORD(v54) = *(v20 + 2552);
          *v55 = *(v20 + 2856);
          v21.f64[0] = *(v20 + 2848);
          v21.f64[1] = *(v20 + 2864);
          v22 = vmulq_f64(v21, xmmword_298A44A70);
          *&v55[8] = v22;
          LODWORD(v22.f64[0]) = *(v20 + 2872);
          LODWORD(v56) = (*&v22.f64[0] * 0.001);
          BlueFin::GlPeNmeaGen::FormatNmeaRTC(v10 + 1344, &v54, __s, 0x140);
          v23 = strlen(__s);
          if (((*v11)[5])(v11, 0, a2, __s, v23))
          {
            GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
          }

          *(v10 + 20700) = 1;
        }
      }

      BlueFin::GlPeNmeaGen::FormatNmeaUNC(v10 + 1344, a2, *(v10 + 600), __s, 320);
      v24 = strlen(__s);
      if (((*v11)[5])(v11, 0, a2, __s, v24))
      {
        GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
      }

      while ((*(v10 + 1674) & 1) == 0)
      {
        BlueFin::GlPeNmeaGen::FormatNmeaSAT(v10 + 1344, a2, __s, 320);
        v25 = strlen(__s);
        if (((*v11)[5])(v11, 0, a2, __s, v25))
        {
          GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
        }
      }

      while (*v15 != 7)
      {
        BlueFin::GlPeNmeaGen::FormatNmeaSVC(v10 + 1344, a2, __s, 0x140);
        if (strlen(__s) >= 1 && ((*v11)[5])(v11, 0, a2, __s))
        {
          GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
        }
      }

      BlueFin::GlPeNmeaGen::FormatNmeaGLO((v10 + 1344), a2, __s, 0x140);
      if (strlen(__s) >= 1 && ((*v11)[5])(v11, 0, a2, __s))
      {
        GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
      }

      BlueFin::GlPeNmeaGen::FormatNmeaSIO(a3, __s, 0x140, v26);
      v27 = strlen(__s);
      if (((*v11)[5])(v11, 0, a2, __s, v27))
      {
        GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
      }

      if (*(*(v10 + 584) + 54026) == 1)
      {
        BlueFin::GlPeNmeaGen::FormatNmeaHLA(v10 + 1344, a2, __s, 0x140);
        v28 = strlen(__s);
        if (((*v11)[5])(v11, 0, a2, __s, v28))
        {
          GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
        }
      }

      v29 = *(v10 + 20016) + 61440;
      v30 = *(*(v10 + 20016) + 61544);
      v31 = *(*(v10 + 20016) + 61528);
      v32 = *(*(v10 + 20016) + 61520);
      *(v29 + 88) = 0;
      *(v29 + 96) = 0;
      *(v29 + 80) = 0;
      *(v29 + 104) = 0;
      v33 = *(*(v10 + 20016) + 57432);
      v54 = v32;
      *v55 = v31;
      v55[16] = v30;
      v56 = v33;
      if (v32 || *(v33 + 16))
      {
        BlueFin::GlPeNmeaGen::FormatNmeaCTX(v10 + 1344, a2, __s, 0x140, &v54);
        v34 = strlen(__s);
        if (((*v11)[5])(v11, 0, a2, __s, v34))
        {
          GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
        }
      }

      BlueFin::GlPeNmeaGen::FormatNmeaLSQ((v10 + 1344), a2, __s, 0x140);
      if (strlen(__s) >= 1 && ((*v11)[5])(v11, 0, a2, __s))
      {
        GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
      }

      BlueFin::GlPeNmeaGen::FormatNmeaPWR(v10 + 1344, (a4 + 56016), *a2, __s, 320);
      if (strlen(__s) >= 1 && ((*v11)[5])(v11, 0, a2, __s))
      {
        GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
      }

      if (*(a3 + 232) == 1)
      {
        BlueFin::GlPeNmeaGen::FormatNmeaPFM((v10 + 1344), a3, __s, 0x140);
        v35 = strlen(__s);
        if (((*v11)[5])(v11, 0, a2, __s, v35))
        {
          GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
        }
      }

      if (*(*(v10 + 584) + 54559) == 1)
      {
        BlueFin::GlPeNmeaGen::FormatNmeaSyncin(v10 + 1344, a2, __s, 0x140);
        v36 = strlen(__s);
        if (((*v11)[5])(v11, 0, a2, __s, v36))
        {
          GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
        }

        *(*(v10 + 584) + 54559) = 0;
      }

      if ((**(a5 + 160) & 2) != 0)
      {
        v37 = *(a3 + 1240);
        if (v37)
        {
          BlueFin::GlPeNmeaGen::FormatNmeaSVD((v10 + 1344), v37, __s, 0x140);
          v38 = strlen(__s);
          if (((*v11)[5])(v11, 0, a2, __s, v38))
          {
            GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
          }
        }
      }

      if (*(*(v10 + 584) + 54025) == 1)
      {
        BlueFin::GlPeNmeaGen::FormatNmeaPPS(v10 + 1344, a2, __s, 0x140);
        if (strlen(__s) >= 1)
        {
          if (((*v11)[5])(v11, 0, a2, __s))
          {
            GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
          }
        }
      }

      BlueFin::GlPeNmeaGen::FormatNmeaAGC(v10 + 1344, a3, a2, __s, 320);
      v39 = strlen(__s);
      result = ((*v11)[5])(v11, 0, a2, __s, v39);
      if (result)
      {
        result = GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
      }

      v42 = *(a3 + 1240);
      if (v42)
      {
        v43 = (v42 + 804);
        v44 = 4;
        do
        {
          if (*v43 == 1)
          {
            BlueFin::GlPeNmeaGen::FormatNmeaCN0(v10 + 1344, v43, __s, 320);
            v45 = strlen(__s);
            result = ((*v11)[5])(v11, 0, a2, __s, v45);
            if (result)
            {
              result = GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
            }
          }

          v43 += 20;
          --v44;
        }

        while (v44);
      }

      v46 = *(v10 + 608);
      v47 = *(v46 + 12);
      if (v47 != -1)
      {
        v48 = *(v46 + 8);
        result = ((*v11)[42])(v11);
        if (result)
        {
          if (BlueFin::GlPeTimeManager::GetSleepTimeSec(*(v10 + 20008), v40, *v41.i64, v49, v50) >= 0x259 && (*(*(v10 + 608) + 8) & 4) == 0)
          {
            v47 &= ~4u;
          }

          if (*(*(v10 + 20080) + 10) >= 302 && (*(*(v10 + 608) + 8) & 0x10) == 0)
          {
            v47 &= ~0x10u;
          }

          if (*(*(v10 + 20112) + 31))
          {
            v51 = v47 | 2;
          }

          else
          {
            v51 = v47;
          }

          BlueFin::GlPeNmeaGen::FormatNmeaNVM((v10 + 1344), __s, 320, v48, v51);
          v52 = strlen(__s);
          (*(*v11[1] + 504))(v11[1], __s, v52);
          result = GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
        }
      }

      if ((*(v10 + 3110) & 1) == 0)
      {
        do
        {
          v53 = BlueFin::GlPeNmeaGen::FormatNmea((v10 + 1344), a2, __s, 0x140, *v40.i8, v41);
          result = strlen(__s);
          if (result >= 1)
          {
            result = ((*v11)[5])(v11, v53, a2, __s);
            if (result)
            {
              result = GlCustomLog(20, "GL_NMEA[%d][%s", v12, __s);
            }
          }
        }

        while (*(v10 + 3110) != 1);
      }
    }
  }

  *v58 = v59;
  return result;
}

uint64_t BlueFin::GlPeNmeaGen::FormatTimeTag(BlueFin::GlPeNmeaGen *this, unsigned int a2, uint64_t a3, const char *a4)
{
  v5 = *(this + 230);
  if (*(v5 + 644))
  {
    *v8.i64 = BlueFin::GlPeTimeManager::GetUtcTime(&v32, v5, a2);
    v8.i32[0] = v33;
    *v8.i64 = floor(v8.u64[0] * 2.32830644e-10 * 100.0 + 0.5) * 0.01;
    if (*v8.i64 >= 1.0)
    {
      v9 = v34 + *v8.i64;
      v34 = v9;
      v10 = trunc(*v8.i64);
      v11 = BlueFin::GlWeekTowTime::m_ucNextLs;
      if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
      {
        v12 = v9 == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLs - 1 >= v9)
      {
        v11 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
      }

      v14 = v9 - ((BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs) & v13) - v11 + 432000;
      v15 = v14 % 0x7861F80;
      v16 = v14 % 0x7861F80 / 0x15180;
      if (v14 % 0x7861F80 > 0x5A4EBFF)
      {
        v17 = 3;
      }

      else if (v15 <= 0x3C3B87F)
      {
        v17 = v15 > 0x1E284FF;
      }

      else
      {
        v17 = 2;
      }

      *v7.i64 = *v8.i64 - v10;
      v19.f64[0] = NAN;
      v19.f64[1] = NAN;
      v20 = v17;
      v21 = &BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v17];
      if (v16 >= v21[9])
      {
        v22 = 9;
      }

      else if (v16 >= v21[6])
      {
        v22 = 6;
      }

      else if (v16 >= v21[3])
      {
        v22 = 3;
      }

      else
      {
        v22 = 0;
      }

      v23 = vnegq_f64(v19);
      v35 = (v20 | (4 * (v14 / 0x7861F80))) + 1980;
      v36 = v16 - *v21 + 1;
      if (v16 >= BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v20 + v22 + 2])
      {
        v24 = 3;
      }

      else if (v16 < BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v20 + v22 + 1])
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      v8.i64[0] = vbslq_s8(v23, v7, v8).u64[0];
      v25 = v24 + v22;
      v37 = v25;
      v38 = v16 - BlueFin::GlWeekTowTime::s_aausSub4AndMonth2Nt[12 * v20 + v25 - 1] + 1;
      LOBYTE(v16) = 60;
      if (((BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs) & v13) != 0)
      {
        LOBYTE(v26) = 59;
        LOBYTE(v27) = 23;
      }

      else
      {
        v27 = (1193047 * (v14 % 0x15180)) >> 32;
        v26 = (2185 * (v14 % 0xE10)) >> 17;
        v16 = v14 % 0x3C;
      }

      v39 = v27;
      v40 = v26;
      v41 = v16;
    }

    if (*v8.i64 < 0.0 || *v8.i64 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 260, "setFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 260, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v29 = *v8.i64 * 4294967300.0 + 0.5;
    v30 = v29;
    if (v29 >= 4294967300.0)
    {
      v30 = -1;
    }

    v33 = v30;
    LOBYTE(v29) = v41;
    BlueFin::GlFormat::glsnprintf((this + 1767), 0x20, "%02hd%02hd%05.2lf", v6, v39, v40, v30 * 2.32830644e-10 + *&v29);
    return BlueFin::GlFormat::glsnprintf((this + 1799), 0x20, "%02hd%02hd%02hd", v31, v38, v37, v35 % 0x64u);
  }

  else
  {
    result = BlueFin::GlFormat::glsnprintf((this + 1767), 0x20, "%02d%02d%02d.00", a4, a2 / 0x36EE80uLL, (2185 * (a2 / 0x3E8 - 3600 * (((2386093 * (a2 / 0x3E8)) >> 32) >> 1))) >> 17, (a2 / 0x3E8 - 60 * ((71582789 * (a2 / 0x3E8)) >> 32)));
    *(this + 1799) = 0;
  }

  return result;
}

unint64_t BlueFin::GlFormat::gl_output_num(BlueFin::GlFormat *this, char *a2, int a3, __int16 a4, int a5, unint64_t a6, char a7)
{
  v35 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    return 0;
  }

  v7 = a4;
  v9 = this;
  v34[39] = 0;
  LODWORD(v10) = 0;
  v11 = (a3 - 88);
  if ((a4 & 0x800) != 0)
  {
    if (v11 > 0x20)
    {
      goto LABEL_40;
    }

    if (((1 << (a3 - 88)) & 0x20021000) != 0)
    {
      v12 = 0;
      do
      {
        v34[v12-- + 38] = (a6 % 0xA) | 0x30;
        v29 = a6 >= 0xA;
        a6 /= 0xAuLL;
      }

      while (v29);
    }

    else if (((1 << (a3 - 88)) & 0x100000001) != 0)
    {
      v12 = 0;
      if (a3 == 88)
      {
        v16 = 65;
      }

      else
      {
        v16 = 97;
      }

      do
      {
        if ((a6 & 0xF) >= 0xA)
        {
          v17 = (a6 & 0xF) + v16 - 10;
        }

        else
        {
          v17 = a6 & 0xF | 0x30;
        }

        v34[v12-- + 38] = v17;
        v29 = a6 >= 0x10;
        a6 >>= 4;
      }

      while (v29);
    }

    else
    {
      if (v11 != 23)
      {
        goto LABEL_40;
      }

      v12 = 0;
      do
      {
        v34[v12-- + 38] = a6 & 7 | 0x30;
        v29 = a6 >= 8;
        a6 >>= 3;
      }

      while (v29);
    }
  }

  else
  {
    if (v11 > 0x20)
    {
      goto LABEL_40;
    }

    if (((1 << (a3 - 88)) & 0x20021000) != 0)
    {
      v12 = 0;
      do
      {
        v34[v12-- + 38] = (a6 % 0xA) | 0x30;
        v29 = a6 >= 0xA;
        LODWORD(a6) = a6 / 0xA;
      }

      while (v29);
    }

    else if (((1 << (a3 - 88)) & 0x100000001) != 0)
    {
      v12 = 0;
      if (a3 == 88)
      {
        v13 = 65;
      }

      else
      {
        v13 = 97;
      }

      do
      {
        if ((a6 & 0xF) >= 0xA)
        {
          v14 = (a6 & 0xF) + v13 - 10;
        }

        else
        {
          v14 = a6 & 0xF | 0x30;
        }

        v34[v12-- + 38] = v14;
        v29 = a6 >= 0x10;
        LODWORD(a6) = a6 >> 4;
      }

      while (v29);
    }

    else
    {
      if (v11 != 23)
      {
        goto LABEL_40;
      }

      v12 = 0;
      do
      {
        v34[v12-- + 38] = a6 & 7 | 0x30;
        v29 = a6 >= 8;
        LODWORD(a6) = a6 >> 3;
      }

      while (v29);
    }
  }

  v10 = -v12;
  if (v10 >= 40)
  {
    DeviceFaultNotify("glutl_str_format.cpp", 1041, "gl_output_num", "len < 40");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_str_format.cpp", 1041, "len < 40");
  }

LABEL_40:
  v18 = (39 - v10);
  v19 = a5 - v10;
  if ((a3 - 100) <= 0x11 && ((1 << (a3 - 100)) & 0x20021) != 0)
  {
    if ((a7 & 1) == 0)
    {
      v20 = 45;
      goto LABEL_50;
    }

    if ((a4 & 0x10) != 0)
    {
      v20 = 43;
      goto LABEL_50;
    }

    if ((a4 & 8) != 0)
    {
      v20 = 32;
LABEL_50:
      *this = v20;
      v9 = (this + 1);
      --v19;
LABEL_51:
      v15 = 1;
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  if ((a4 & 1) == 0)
  {
LABEL_48:
    v15 = 0;
    goto LABEL_52;
  }

  if (a3 == 111)
  {
    if (v34[v18] != 48)
    {
      *this = 48;
      v9 = (this + 1);
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  *this = 48;
  if (a2 == 1)
  {
    v15 = 1;
    v9 = (this + 1);
  }

  else
  {
    *(this + 1) = a3;
    v9 = (this + 2);
    v15 = 2;
  }

LABEL_52:
  v21 = v19 & ~(v19 >> 31);
  if ((a4 & 4) == 0 && v19 >= 1)
  {
    v22 = v21 - 1;
    if ((a4 & 2) != 0)
    {
      if (v15 < a2)
      {
        if (&a2[~v15] >= v22)
        {
          v23 = (v21 - 1);
        }

        else
        {
          v23 = &a2[~v15];
        }

        v24 = v23 + 1;
        v25 = v9;
        v26 = 48;
        goto LABEL_65;
      }
    }

    else if (v15 < a2)
    {
      if (&a2[~v15] >= v22)
      {
        v23 = (v21 - 1);
      }

      else
      {
        v23 = &a2[~v15];
      }

      v24 = v23 + 1;
      v25 = v9;
      v26 = 32;
LABEL_65:
      memset(v25, v26, v24);
      v9 = (v9 + v24);
      v21 = v21 - v23 - 2;
      v15 = (v15 + v23 + 1);
      goto LABEL_67;
    }

    --v21;
  }

LABEL_67:
  v27 = v34[v18];
  v28 = v15;
  if (v27)
  {
    v29 = v15 >= a2;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v30 = &v34[v18 + 1];
    LODWORD(v28) = v15;
    do
    {
      *v9 = v27;
      v9 = (v9 + 1);
      v28 = (v28 + 1);
      v31 = *v30++;
      v27 = v31;
      if (v31)
      {
        v32 = v28 >= a2;
      }

      else
      {
        v32 = 1;
      }

      v15 = v28;
    }

    while (!v32);
  }

  if ((v7 & 4) != 0 && v21 >= 1 && v28 < a2)
  {
    do
    {
      *v9 = 32;
      v9 = (v9 + 1);
      v15 = (v15 + 1);
      if (v21 < 2)
      {
        break;
      }

      --v21;
    }

    while (v15 < a2);
  }

  return v15;
}

uint64_t BlueFin::GlPeNmeaGen::FormatNmea(int *a1, uint64_t a2, BlueFin::GlFormat *a3, const char *a4, uint8x8_t a5, uint32x4_t a6)
{
  if (*(*(a1 + 229) + 26256) == 1)
  {
    word_2A13C1718 = 73;
    a5 = *&__const__ZN7BlueFin11GlPeNmeaGen10FormatNmeaEPKNS_13GL_FIX_STATUSEPcs_acTalkerCodesv411;
    BlueFin::GlPeNmeaGen::m_acTalkerCodes = __const__ZN7BlueFin11GlPeNmeaGen10FormatNmeaEPKNS_13GL_FIX_STATUSEPcs_acTalkerCodesv411;
    v7 = *a1;
    if (*a1)
    {
      BlueFin::GlPeNmeaGen::FormatNmeaGNS(a1, a2, a3, a4);
LABEL_10:
      result = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v7 = *a1;
    if (*a1)
    {
      BlueFin::GlPeNmeaGen::FormatNmeaGGA(a1, a2, a3, a4);
      goto LABEL_10;
    }
  }

  if ((v7 & 8) != 0)
  {
    BlueFin::GlPeNmeaGen::FormatNmeaRMC(a1, a2, a3, a4);
    result = 8;
  }

  else if ((v7 & 4) != 0)
  {
    v9 = BlueFin::GlPeNmeaGen::FormatNmeaGSA(a1, a2, a3, a4);
    result = 4;
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else if ((v7 & 2) != 0)
  {
    v10 = BlueFin::GlPeNmeaGen::FormatNmeaGSV(a1, a2, a3, a4, a5, a6);
    result = 2;
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = 0;
  }

LABEL_12:
  *a1 *= 2;
LABEL_13:
  *(a1 + 1766) = (*a1 & 0xF) == 0;
  return result;
}

char *BlueFin::GlPeNmeaGen::FormatNmeaGGA(uint64_t a1, uint64_t a2, BlueFin::GlFormat *this, const char *a4)
{
  v6 = this + a4 - 1;
  *this = 0;
  v7 = *(a2 + 4274);
  if (!*(a2 + 4048) || (*(a2 + 4068) & 8) != 0)
  {
    if (v6 > this)
    {
      v20 = a4;
    }

    else
    {
      v20 = 0;
    }

    v21 = (this + BlueFin::GlFormat::glsnprintf(this, v20, "$GPGGA,%s,", a4, a1 + 1767));
    if (v6 > v21)
    {
      v23 = (v6 - v21 + 1);
    }

    else
    {
      v23 = 0;
    }

    if (*(a2 + 4049))
    {
      BlueFin::GlFormat::glsnprintf(v21, v23, ",,,,%d,%02d,%.1f,%.1f,M,%.1f,M,,", v22, 0, v7, *(a2 + 4144) / 10.0, *(a2 + 4096), *(a2 + 4112));
    }

    else
    {
      BlueFin::GlFormat::glsnprintf(v21, v23, ",,,,%d,%02d,%.1f,,M,,M,,", v22, 0, v7, *(a2 + 4144) / 10.0);
    }
  }

  else
  {
    v8 = *(a2 + 4072);
    v9 = fabs(v8);
    v10 = fabs(*(a2 + 4080));
    v11 = v9;
    v12 = v10;
    v13 = (v9 - v11) * 60.0;
    v14 = v13;
    v15 = (v10 - v12) * 60.0;
    v16 = v15;
    v17 = (v13 - v14) * 1000000.0;
    v18 = (v15 - v16) * 1000000.0;
    if (v7 < 1)
    {
      v19 = 6;
    }

    else if (*(a2 + 5624))
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    v25 = v18;
    v26 = *(a2 + 4060);
    if (v26 == 7 || v26 == 4)
    {
      v19 = 7;
    }

    if (v6 > this)
    {
      v27 = a4;
    }

    else
    {
      v27 = 0;
    }

    v43 = v11;
    v28 = 83;
    if (v8 >= 0.0)
    {
      v28 = 78;
    }

    v29 = BlueFin::GlFormat::glsnprintf(this, v27, "$GPGGA,%s,%02d%02d.%06d,%c,", a4, a1 + 1767, v43, v14, v17, v28);
    v31 = this + v29;
    v32 = v6 + 1;
    if (v6 <= v31)
    {
      v33 = 0;
    }

    else
    {
      v33 = (v6 + 1 - v31);
    }

    v34 = 87;
    if (*(a2 + 4080) >= 0.0)
    {
      v34 = 69;
    }

    v36 = &v31[BlueFin::GlFormat::glsnprintf((this + v29), v33, "%03d%02d.%06d,%c,%d,%02d,", v30, v12, v16, v25, v34, v19, v7)];
    if (v6 <= v36)
    {
      v37 = 0;
    }

    else
    {
      v37 = (v32 - v36);
    }

    v38 = (v36 + BlueFin::GlFormat::glsnprintf(v36, v37, "%.1f,%.1f,M,%.1f,M,", v35, *(a2 + 4144) / 10.0, *(a2 + 4096), *(a2 + 4112)));
    if (v6 <= v38)
    {
      v40 = 0;
    }

    else
    {
      v40 = (v32 - v38);
    }

    if (v19 == 2)
    {
      BlueFin::GlFormat::glsnprintf(v38, v40, "%.1f,%04d", v39, *(a2 + 7300), *(a2 + 7296), v45, v46, v47);
    }

    else
    {
      BlueFin::GlFormat::glsnprintf(v38, v40, ",", v39, v42, v44, v45, v46, v47);
    }
  }

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v6, v24);
}

char *BlueFin::GlPeNmeaGen::nmeaAddChksum(BlueFin::GlPeNmeaGen *this, char *a2, char *a3)
{
  *a2 = 0;
  v3 = this + 1;
  v4 = *(this + 1);
  if (*(this + 1))
  {
    v5 = 0;
    do
    {
      v6 = *++v3;
      v5 ^= v4;
      v4 = v6;
    }

    while (v6);
  }

  else
  {
    v5 = 0;
  }

  if (v3 <= a2)
  {
    *v3++ = 42;
  }

  if (v3 <= a2)
  {
    v7 = (v5 >> 4) + 55;
    if (v5 < 0xA0)
    {
      LOBYTE(v7) = (v5 >> 4) | 0x30;
    }

    *v3++ = v7;
  }

  if (v3 <= a2)
  {
    v8 = v5 & 0xF;
    v9 = v5 & 0xF | 0x30;
    v10 = (v5 & 0xF) + 55;
    if (v8 < 0xA)
    {
      v10 = v9;
    }

    *v3++ = v10;
  }

  if (v3 <= a2)
  {
    *v3++ = 13;
  }

  if (v3 <= a2)
  {
    *v3++ = 10;
  }

  if (v3 > a2)
  {
    GlCustomLog(19, "GlPeNmeaGen::nmeaAddChksum:  Buffer overflow while trying to output NMEA message $%c%c%c%c%c\n", *(this + 1), *(this + 2), *(this + 3), *(this + 4), *(this + 5));
    DeviceFaultNotify("glpe_nmeagen.cpp", 308, "nmeaAddChksum", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nmeagen.cpp", 308, "0");
  }

  *v3 = 0;
  return v3;
}

uint64_t BlueFin::GlPeRqHdlrPosPeriodic::SetNmeaSentence(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = v2;
  v19 = *MEMORY[0x29EDCA608];
  if (strstr(v5, "$PGLOR,"))
  {
    if (strstr(v6, ",FIN,") || strstr(v6, ",PFM,"))
    {
      v12 = 1;
      goto LABEL_10;
    }

    v12 = strstr(v6, ",PFA,") != 0;
  }

  else
  {
    v12 = 0;
  }

  if (*(v11 + 20) == 1 && !v12)
  {
    return 0;
  }

LABEL_10:
  memcpy(v17, v8, sizeof(v17));
  memcpy(v18, (v8 + 7440), sizeof(v18));
  LOBYTE(v17[506]) = *(v11 + 168);
  v14 = LOBYTE(v17[506]);
  LODWORD(v15) = *(v11 + 72);
  v17[863] = v15;
  LODWORD(v17[877]) = *(v11 + 172);
  if (!LOBYTE(v17[506]))
  {
    LOBYTE(v17[506]) = 0;
    memset(&v17[535], 0, 64);
    memset(&v17[607], 0, 256);
    memset(&v17[671], 0, 256);
  }

  if (!BlueFin::GlPeRqHdlrPosPeriodic::IsPeriodExpired(v11) && !v12)
  {
    return 0;
  }

  if (v10 == 8)
  {
    if (v14)
    {
      BlueFin::GlPeRqHdlrPosPeriodic::SendPglorFix(v11, v17);
    }
  }

  return BlueFin::GlPeRqHdlr::SetNmeaSentence(v11, v10, v17, v6, v4);
}

BOOL BlueFin::GlPeRqHdlrPosPeriodic::IsPeriodExpired(uint64_t a1)
{
  if (*(a1 + 20))
  {
    return 0;
  }

  if (*(a1 + 80) == 1 && *(a1 + 168))
  {
    return 1;
  }

  v2 = *(a1 + 68) + *(a1 + 42);
  return v2 > (*(**(a1 + 8) + 184))(*(a1 + 8));
}

uint64_t BlueFin::GlPeRqHdlr::SetNmeaSentence(BlueFin::GlPeRqHdlr *this, uint64_t a2, uint64_t a3, char *a4, __int16 a5)
{
  v7 = a2;
  v14 = *MEMORY[0x29EDCA608];
  if ((*(this + 16) & 1) == 0)
  {
    *(this + 16) = 1;
    BlueFin::GlPeNmeaGen::FormatNmeaRID(**(this + 7), __s, 80, a4);
    GlCustomLog(20, "GL_NMEA[%d][%s", *(this + 24), __s);
    v9 = strlen(__s);
    BlueFin::GlPeRqHdlr::OnNmea(this, __s, v9, v10);
  }

  if (v7 != 2)
  {
    if (v7 == 1)
    {
      v11 = ++*(this + 20);
      if (v11 == (*(**(this + 1) + 520))(*(this + 1), a2, a3))
      {
        *(this + 20) = 0;
      }
    }

    goto LABEL_8;
  }

  if (!*(this + 20))
  {
LABEL_8:
    BlueFin::GlPeRqHdlr::OnNmea(this, a4, a5, a4);
  }

  return 1;
}

uint64_t BlueFin::GlPeRqHdlr::OnNmea(BlueFin::GlPeRqHdlr *this, char *a2, __int16 a3, const char *a4)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(*(*(this + 7) + 56) + 11569) == 1)
  {
    v5 = BlueFin::GlFormat::glsnprintf(v8, 0xB4, "GL_NMEA[%d][%s", a4, *(*(this + 1) + 24), a2);
    return (*(**(this + 1) + 504))(*(this + 1), v8, v5);
  }

  else
  {
    v7 = *(**(this + 1) + 504);

    return v7();
  }
}

uint64_t BlueFin::GlRequestImplNmea::OnNmea(uint64_t this, char *a2)
{
  v2 = *(this + 72);
  if (v2)
  {
    return v2();
  }

  return this;
}

uint64_t BlueFin::GlDbgProxyGlReqOnNmea(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = (*(*a1 + 112))(a1);
  v6 = *(v5 + 8);

  return BlueFin::GlDbgProxy::HalGlReqOnNmea(v6, v5, a2, a3);
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnNmea(BlueFin::GlDbgProxy *this, uint64_t (**a2)(BlueFin::GlDbgRequest *, const char *, uint64_t), char *a3, uint64_t a4)
{
  v12 = a4;
  result = BlueFin::GlDbgRequest::Id(a2, 0);
  v11 = result;
  if (!*(this + 101))
  {
    *(this + 580) = 1;
    if (*(this + 144) == 1)
    {
      BlueFin::GlDbgCodec::WriteStart(this, 542);
      if ((*(*this + 120))(this))
      {
        BlueFin::GlDbgCodec::Write(this, &v11);
      }

      BlueFin::GlDbgCodec::WriteArray(this, a3, &v12);
      result = (*(*this + 32))(this, 1);
    }

    v9 = a2[4];
    if (v9)
    {
      result = v9(a2, a3, a4);
    }

    *(this + 580) = 1;
    if (*(this + 144) == 1)
    {
      BlueFin::GlDbgCodec::WriteFinal(this, 542);
      if ((*(*this + 120))(this))
      {
        BlueFin::GlDbgCodec::Write(this, &v11);
      }

      v10 = *(*this + 32);

      return v10(this, 1);
    }
  }

  return result;
}

uint64_t std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_1,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_1>,void ()(char const*,short)>::operator()(uint64_t result, const void **a2, __int16 *a3)
{
  if (*(*(result + 8) + 216))
  {
    memset(v3, 0, sizeof(v3));
    v4.__end_cap_.__value_ = v3;
    operator new();
  }

  return result;
}

void sub_29883EA38(_Unwind_Exception *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__split_buffer<std::string> *a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14)
{
  std::__split_buffer<std::string>::~__split_buffer(&a14);
  a13 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void FireCallback::GlReqOnNmea(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (FireCallback::pInstance)
  {
    v4 = *(FireCallback::pInstance + 216);
    if (v4)
    {
      v7 = a2;
      v6 = a3;
      (*(*v4 + 48))(v4, &v7, &v6);
      return;
    }

    v5 = "fcb,fReqOnNmeaCb,nullptr";
  }

  else
  {
    v5 = "fcb,GlReqOnNmea,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v5, a3);
}

uint64_t *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_29883EB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, a2);
  }

  std::vector<GnssHal::ExtensionsFire::RecoveryPoint>::__throw_length_error[abi:ne200100]();
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

char *BlueFin::GlPeNmeaGen::FormatNmeaSTA(uint64_t a1, double *a2, uint64_t a3, BlueFin::GlFormat *this, int a5)
{
  v8 = (a2 + 512);
  v9 = this + a5 - 1;
  v10 = aDfshwtf[a2[864] & 7];
  v11 = *(a2 + 22);
  if (v11 <= 10)
  {
    v12 = 10;
  }

  else
  {
    v12 = *(a2 + 22);
  }

  if (v12 >= *(a3 + 272))
  {
    v12 = *(a3 + 272);
  }

  v13 = 9 * v12 / 10;
  v14 = *(a2 + 1820);
  if (v11 < 1)
  {
    v16 = *(a2 + 1820);
  }

  else
  {
    v15 = a2 + 49;
    v16 = *(a2 + 1820);
    do
    {
      v18 = *v15;
      v15 += 40;
      v17 = v18;
      if (*(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v18) - 33 <= 0x12)
      {
        if (*(a2 + v17 + 1534))
        {
          v19 = v16 <= 0;
        }

        else
        {
          v19 = 1;
        }

        v20 = !v19;
        v16 -= v20;
      }

      --v11;
    }

    while (v11);
  }

  v21 = this + a5;
  if (v9 <= this)
  {
    v22 = 0;
  }

  else
  {
    v22 = a5;
  }

  HIDWORD(v23) = 1062232653;
  LODWORD(v23) = *(a2 + 1043);
  v24 = v23 * 0.000001;
  v83 = v14;
  v25 = 70;
  if (!*(v8 + 3180))
  {
    v25 = 102;
  }

  v19 = v13 <= v16;
  v26 = 69;
  if (!v19)
  {
    v26 = 101;
  }

  v27 = 80;
  if (!*(v8 + 3181))
  {
    v27 = 112;
  }

  v82 = v26;
  v28 = 84;
  if (!*(v8 + 3182))
  {
    v28 = 116;
  }

  v29 = BlueFin::GlFormat::glsnprintf(this, v22, "$PGLOR,%d,STA,%s,%4.3f,%4.3f,%hd,%hu,%d,%d,P,%c,L,%u,C,%1d,S,%08X,%d,%hd,R,%08X,%c%c%c%c,%d,%u,", *(v8 + 3181), 15, a1 + 1767, *(a2 + 1042) * 0.001, *&v24, *(a2 + 1056), *(a2 + 2128), a2[518], *(a2 + 1017) & 3, v10, (*(a2 + 1017) >> 2) & 1, *(a2 + 1753), *(a2 + 1752), *(a2 + 1754), *(a2 + 20), *(a2 + 1787), v28, v27, v82, v25, v83, *a2);
  v31 = this + v29;
  if (*(a2 + 4052))
  {
    if (v9 <= v31)
    {
      v32 = 0;
    }

    else
    {
      v32 = (v21 - v31);
    }

    if (*(a2 + 1014))
    {
      v33 = BlueFin::GlFormat::glsnprintf((this + v29), v32, "LC,%+d,", v30, *(a2 + 1014));
      goto LABEL_42;
    }

    v73 = 0;
    v35 = "LC,%d,";
  }

  else
  {
    if (v9 <= v31)
    {
      v32 = 0;
    }

    else
    {
      v32 = (v21 - v31);
    }

    v35 = "LC,,";
  }

  v33 = BlueFin::GlFormat::glsnprintf((this + v29), v32, v35, v30, v73);
LABEL_42:
  v36 = &v31[v33];
  if (*(v8 + 3216))
  {
    if (v9 <= v36)
    {
      v37 = 0;
    }

    else
    {
      v37 = (v21 - v36);
    }

    v38 = BlueFin::GlFormat::glsnprintf(v36, v37, "%x,", v34, *(v8 + 3216));
  }

  else
  {
    if (v9 <= v36)
    {
      v40 = 0;
    }

    else
    {
      v40 = (v21 - v36);
    }

    v38 = BlueFin::GlFormat::glsnprintf(v36, v40, ",", v34, v74);
  }

  v41 = (v36 + v38);
  if (v9 <= v41)
  {
    v42 = 0;
  }

  else
  {
    v42 = (v21 - v41);
  }

  v44 = (v41 + BlueFin::GlFormat::glsnprintf(v41, v42, "DR,%d,", v39, *(v8 + 3254)));
  v45 = *(a2 + 1839);
  if (v45 >= 0.0)
  {
    if (v9 <= v44)
    {
      v46 = 0;
    }

    else
    {
      v46 = (v21 - v44);
    }

    v78 = *(a2 + 1838);
    v81 = v45;
    v75 = (*(v8 + 3264) << 8) | (*(a2 + 1017) >> 9) & 7u;
    v47 = "%x,%.1f,%.1f,";
  }

  else
  {
    if (v9 <= v44)
    {
      v46 = 0;
    }

    else
    {
      v46 = (v21 - v44);
    }

    v47 = ",,,";
  }

  v48 = (v44 + BlueFin::GlFormat::glsnprintf(v44, v46, v47, v43, v75, *&v78, *&v81));
  if (v9 <= v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = (v21 - v48);
  }

  v50 = a2[517];
  HasAny = BlueFin::GnssConstellationMaskHelper::HasAny(a2 + 671, 4u);
  v53 = 102;
  if (HasAny)
  {
    v53 = 70;
  }

  v54 = 116;
  if (v50 < 99.0)
  {
    v54 = 84;
  }

  v55 = (v48 + BlueFin::GlFormat::glsnprintf(v48, v49, "%c%c,", v52, v54, v53));
  RtcCurTimeEstimate = BlueFin::GlPeTimeManager::GetRtcCurTimeEstimate(*(a1 + 1840), &v85);
  if (v9 <= v55)
  {
    v59 = 0;
  }

  else
  {
    v59 = (v21 - v55);
  }

  if (RtcCurTimeEstimate)
  {
    v60 = 1.0;
    if (v86 >= 1.0)
    {
      v60 = v86;
    }

    v61 = BlueFin::GlFormat::glsnprintf(v55, v59, "%.0f,%.0f,", v57, v85 * 1000.0, v85 * 1000.0, *&v60);
  }

  else
  {
    v61 = BlueFin::GlFormat::glsnprintf(v55, v59, ",,", v57, v58, v76, v79);
  }

  v62 = (v55 + v61);
  RtcCurFreqEstimate = BlueFin::GlPeTimeManager::GetRtcCurFreqEstimate(*(a1 + 1840), v84);
  if (v9 <= v62)
  {
    v65 = 0;
  }

  else
  {
    v65 = (v21 - v62);
  }

  if (RtcCurFreqEstimate)
  {
    v66 = BlueFin::GlFormat::glsnprintf(v62, v65, "%.0f,%.0f,", v64, *&v84[0], *&v84[1]);
  }

  else
  {
    v66 = BlueFin::GlFormat::glsnprintf(v62, v65, ",,", v64, v77, v80);
  }

  v68 = (v62 + v66);
  if (v9 <= v68)
  {
    v69 = 0;
  }

  else
  {
    v69 = (v21 - v68);
  }

  v70 = 84;
  if (!*(v8 + 3312))
  {
    v70 = 70;
  }

  BlueFin::GlFormat::glsnprintf(v68, v69, "%c,%1d,", v67, v70, *(v8 + 3313));

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v9, v71);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaGLO(char *result, uint64_t a2, BlueFin::GlFormat *this, const char *a4)
{
  if (*(result + 231) == *(a2 + 7416) && *(result + 232) == *(a2 + 7424) && *(result + 233) == *(a2 + 7432))
  {
    *this = 0;
  }

  else
  {
    v7 = this + a4 - 1;
    v8 = result + 1848;
    v9 = *(a2 + 7416);
    *(result + 233) = *(a2 + 7432);
    *(result + 1848) = v9;
    if (a4 != 1 && v7 >= this)
    {
      v10 = a4;
    }

    else
    {
      v10 = 0;
    }

    v11 = 0;
    v13 = (this + BlueFin::GlFormat::glsnprintf(this, v10, "$PGLOR,%d,GLO", a4, 1));
    do
    {
      if (v7 <= v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = (v7 + 1 - v13);
      }

      v13 = (v13 + BlueFin::GlFormat::glsnprintf(v13, v14, ",%+d", v12, v8[v11++]));
    }

    while (v11 != 24);

    return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v7, v15);
  }

  return result;
}

BOOL BlueFin::GlPeRqHdlr::SendNvMemInfo(BlueFin::GlPeRqHdlr *this)
{
  v1 = *(this + 17);
  *(this + 17) = 1;
  return (v1 & 1) == 0;
}

BOOL BlueFin::GlPeNmeaGen::FormatNmeaGSV(uint64_t a1, uint64_t a2, BlueFin::GlPeNmeaGen *a3, int a4, uint8x8_t a5, uint32x4_t a6)
{
  v7 = a2;
  v111 = *MEMORY[0x29EDCA608];
  *a3 = 0;
  if (*(a1 + 4))
  {
    v9 = a3;
    v10 = 0;
    v11 = 0;
    do
    {
      a5.i32[0] = *(*(a1 + 320) + v10);
      a5 = vmovl_u8(a5).u64[0];
      v11 += vaddv_s16(a5);
      v10 += 48;
    }

    while (v10 != 288);
  }

  else
  {
    for (i = 0; i != 288; i += 48)
    {
      v77 = *(a1 + 320) + i;
      *(v77 + 16) = 0;
      *v77 = 0;
      *(v77 + 7) = 0;
      bzero(*(v77 + 24), ((4 * *(v77 + 32) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    }

    v78 = 0;
    v11 = 0;
    v7 = a2;
    v79 = (a2 + 50);
    do
    {
      if (v78 >= *(a2 + 44))
      {
        break;
      }

      v80 = v79[1];
      v106 = BlueFin::GlImplGnss::m_aucImplGnssTable[*v79];
      LOBYTE(v107) = v80;
      LODWORD(v109) = 0;
      if (BlueFin::GlPeNmeaGen::ToNmeaId(a1, &v106, &v109, &v104))
      {
        v81 = v79[32];
        if (v81 <= 3)
        {
          v82 = *(a1 + 320) + 48 * v109;
          ++*(v82 + v81);
        }

        if (v81 < 4)
        {
          ++v11;
        }
      }

      ++v78;
      v79 += 40;
    }

    while (v78 != 100);
    v9 = a3;
    if (BlueFin::GlUtils::m_ucEnabled && (BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0xF) & 1) != 0)
    {
      v98 = a4;
      GlCustomLog(15, "GlPeNmeaGen::FormatNmeaGSV  TotalSats:%d ", v11);
      v83 = 0;
      v84 = 0;
      v85 = BlueFin::GlPeNmeaGen::FormatNmeaGSV(BlueFin::GL_FIX_STATUS const*,char *,short)::acTalker2String;
      do
      {
        v86 = 0;
        v87 = v83;
        do
        {
          v88 = v85[v86];
          if (!strstr(v88, "NA"))
          {
            GlCustomLog(15, "%s %d ", v88, *(*(a1 + 320) + v87));
          }

          ++v87;
          ++v86;
        }

        while (v86 != 4);
        ++v84;
        v83 += 48;
        v85 += 4;
      }

      while (v84 != 6);
      GlCustomLog(15, "\n");
      v9 = a3;
      v7 = a2;
      a4 = v98;
    }
  }

  v12 = 0;
  v13 = v9 + a4 - 1;
  v109 = 0uLL;
  v110 = 0;
  v14 = *(a1 + 320);
  v15.i64[0] = 0x300000003;
  v15.i64[1] = 0x300000003;
  v16 = v14;
  do
  {
    v17 = *v16;
    v16 += 12;
    a6.i32[0] = v17;
    a6 = vshrq_n_u32(vaddw_u16(v15, *&vmovl_u8(*a6.i8)), 2uLL);
    a6.i32[0] = vaddvq_s32(a6);
    *(&v109 + v12) = a6.i32[0];
    v12 += 4;
  }

  while (v12 != 24);
  v18 = 0;
  v19 = 0;
  v106 = 0;
  v20 = v109;
  v107 = v109;
  v108 = v110;
  v21 = *(a1 + 4);
  v22 = -1;
  do
  {
    v23 = &v106 + v19;
    v24 = v23[1] + v18;
    if (v24 > v21 && v18 <= v21)
    {
      v22 = v19;
    }

    v23[1] = v24;
    v18 = v24;
    ++v19;
  }

  while (v19 != 6);
  result = 1;
  if (v22 == -1)
  {
    v75 = 0;
    goto LABEL_94;
  }

  v27 = v22;
  BlueFin::GlPeNmeaGsvSatsNum::Update(&v14[12 * v22], v20, a6);
  v91 = HIDWORD(v108);
  if (v13 > v9)
  {
    v30 = (v13 - v9 + 1);
  }

  else
  {
    v30 = 0;
  }

  v29.i32[0] = *(*(a1 + 320) + 48 * v22);
  v31 = BlueFin::GlFormat::glsnprintf(v9, v30, "$%sGSV,%01d,%01d,%02d", v28, &BlueFin::GlPeNmeaGen::m_acTalkerCodes + 3 * v22, *(&v109 + v22), *(a1 + 4) - *(&v106 + v22) + 1, vaddv_s16(*&vmovl_u8(v29)));
  v32 = 0;
  v33 = 0;
  v97 = v13;
  v99 = (v9 + v31);
  v95 = v13 + 1;
  v34 = v11;
  v35 = -4000;
  v92 = v11;
  while (v32 < v34 && v33 < 4)
  {
    v36 = (v7 + v35);
    v37 = BlueFin::GlImplGnss::m_aucImplGnssTable[*(v7 + v35 + 4050)];
    v38 = *(v7 + v35 + 4051);
    v103 = 0;
    v104 = v37;
    v105 = v38;
    v102 = 0;
    v31 = BlueFin::GlPeNmeaGen::ToNmeaId(a1, &v104, &v103, &v102);
    if (v103 == v22)
    {
      v40 = v31;
    }

    else
    {
      v40 = 0;
    }

    if (v40 != 1)
    {
      goto LABEL_64;
    }

    v41 = *(a1 + 320) + 48 * v27;
    if (*(v41 + 14) != *(v7 + v35 + 4082))
    {
      goto LABEL_64;
    }

    v42 = *(v41 + 16);
    *(v41 + 16) = v42 - 1;
    if (v42 > 0)
    {
      goto LABEL_64;
    }

    v93 = v33;
    v44 = v97;
    v43 = v99;
    if (v97 <= v99)
    {
      v45 = 0;
    }

    else
    {
      v45 = (v95 - v99);
    }

    v46 = BlueFin::GlFormat::glsnprintf(v99, v45, ",%02d", v39, v102);
    v48 = (v99 + v46);
    v49 = v36[4050];
    if (v49 >= 7)
    {
      v50 = -1;
    }

    else
    {
      v50 = 0xFFFFFFFFFF1FFFuLL >> (8 * v49);
    }

    v51 = v50 + v36[4051];
    v100 = v51 >> 5;
    v94 = v51 & 0x1F;
    if ((*(*(*(a1 + 320) + 48 * v27 + 24) + 4 * (v51 >> 5)) >> (v51 & 0x1F)))
    {
      if (v97 <= v48)
      {
        v52 = 0;
      }

      else
      {
        v52 = (v95 - v48);
      }

      v53 = (v43 + v46);
      v54 = BlueFin::GlFormat::glsnprintf(v53, v52, ",,", v47);
      v56 = v95;
      v57 = v93;
    }

    else
    {
      v58 = *(v7 + v35 + 4052);
      v57 = v93;
      if (v58 <= 0)
      {
        v59 = *(v7 + v35 + 4054) > 0;
      }

      else
      {
        v59 = v58 != 1 || *(v7 + v35 + 4054) != 0;
      }

      v60 = *(v7 + v35 + 4056);
      v61 = *(v7 + v35 + 4060);
      v62 = fmaxf(v60, v61) <= 0.0;
      if (v59 && v62)
      {
        v60 = v58;
        v61 = *(v7 + v35 + 4054);
      }

      else if (v62)
      {
        if (v97 <= v48)
        {
          v63 = 0;
        }

        else
        {
          v63 = (v95 - v48);
        }

        v53 = v48;
        if (v59)
        {
          v54 = BlueFin::GlFormat::glsnprintf(v48, v63, ",%02d,%03d", v47, *(v7 + v35 + 4052), *(v7 + v35 + 4054));
        }

        else
        {
          v54 = BlueFin::GlFormat::glsnprintf(v48, v63, ",,", v47, v89, v90);
        }

        v44 = v97;
        v56 = v95;
        goto LABEL_57;
      }

      v44 = v97;
      if (v97 <= v48)
      {
        v64 = 0;
      }

      else
      {
        v64 = (v95 - v48);
      }

      v53 = v48;
      v54 = BlueFin::GlFormat::glsnprintf(v48, v64, ",%04.1f,%05.1f", v47, v60, v61);
      v56 = v95;
    }

LABEL_57:
    v65 = v53 + v54;
    v66 = (v56 - v65);
    if (v44 <= v65)
    {
      v67 = 0;
    }

    else
    {
      v67 = v66;
    }

    if (v36[4048])
    {
      v31 = BlueFin::GlFormat::glsnprintf((v53 + v54), v67, ",%04.1f", v55, *(v7 + v35 + 4064));
    }

    else
    {
      v31 = BlueFin::GlFormat::glsnprintf((v53 + v54), v67, ",", v55, v89);
    }

    v27 = v22;
    v68 = *(*(a1 + 320) + 48 * v22 + 24);
    *(v68 + 4 * v100) |= 1 << v94;
    v99 = &v65[v31];
    v33 = v57 + 1;
    v34 = v92;
LABEL_64:
    ++v32;
    v35 += 40;
    if (!v35)
    {
      break;
    }
  }

  v69 = *(a1 + 320) + 48 * v27;
  ++*(v69 + 13);
  NmeaSignalID = BlueFin::GlPeNmeaGsvSatsNum::GetNmeaSignalID(v31, *(v69 + 20), *(v69 + 14));
  if ((*(*(a1 + 1832) + 26256) & 1) != 0 || BlueFin::GlPeNmeaGsvSatsNum::OutputNmeaSignalID(v69, NmeaSignalID))
  {
    if (v97 <= v99)
    {
      v73 = 0;
    }

    else
    {
      v73 = (v95 - v99);
    }

    BlueFin::GlFormat::glsnprintf(v99, v73, ",%01d", v70, NmeaSignalID);
  }

  BlueFin::GlPeNmeaGen::nmeaAddChksum(a3, v97, v72);
  v74 = *(a1 + 4);
  result = v91 <= (v74 + 1);
  if (v91 > (v74 + 1))
  {
    v75 = v74 + 1;
  }

  else
  {
    v75 = 0;
  }

LABEL_94:
  *(a1 + 4) = v75;
  return result;
}

BOOL BlueFin::GlPeNmeaGen::FormatNmeaGSA(uint64_t a1, uint64_t a2, BlueFin::GlFormat *a3, int a4)
{
  v5 = a3 + a4 - 1;
  *a3 = 0;
  if (*(*(a1 + 1832) + 26256) == 1)
  {
    qword_2A13C172A = 0x100010001;
    BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::abTalkerHasGNGSA = xmmword_298A44942;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = &BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::abTalkerHasXXGSA;
  v10 = &BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::abTalkerHasGNGSA;
  do
  {
    v11 = *(a1 + 320) + 48 * v6;
    *(v11 + 16) = 0;
    *v11 = 0;
    *(v11 + 7) = 0;
    bzero(*(v11 + 24), ((4 * *(v11 + 32) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    v12 = 0;
    v13 = *(a1 + 1832);
    v14 = *(v13 + 26256);
    do
    {
      if ((v14 & 1) == 0)
      {
        v8 += v9[v12];
      }

      v7 += *(v10 + v12++);
    }

    while (v12 != 4);
    ++v6;
    v9 += 4;
    v10 = (v10 + 4);
  }

  while (v6 != 6);
  v15 = *(a1 + 328);
  v16 = v8 + v7;
  if (v16 <= v15)
  {
    v32 = "m_ucGsaMsgCnt < (ucNumGNGSA + ucNumXXGSA)";
    DeviceFaultNotify("glpe_nmeagen.cpp", 1303, "FormatNmeaGSA", "m_ucGsaMsgCnt < (ucNumGNGSA + ucNumXXGSA)");
    v33 = 1303;
LABEL_85:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nmeagen.cpp", v33, v32);
  }

  strcpy(v85, "GN");
  if (v14)
  {
    v17 = 0;
    v18 = 7;
    v19 = -1;
    LODWORD(v20) = 6;
    v21 = -1;
    v22 = &BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::abTalkerHasGNGSA;
    do
    {
      v23 = 0;
      while (*(v22 + v23) != 1 || ++v19 != v15)
      {
        if (++v23 == 4)
        {
          goto LABEL_18;
        }
      }

      v18 = BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::aePrimaryGnss[v17];
      v21 = v23;
      v19 = v15;
      LODWORD(v20) = v17;
LABEL_18:
      ++v17;
      v22 = (v22 + 4);
    }

    while (v17 != 6);
    v24 = v85;
    goto LABEL_38;
  }

  if (v15 >= v8)
  {
    v20 = 0;
    v29 = -1;
    v30 = &BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::abTalkerHasGNGSA;
    while (1)
    {
      v31 = *v30;
      v30 = (v30 + 4);
      if (v31 == 1 && ++v29 == v15 - v8)
      {
        break;
      }

      if (++v20 == 6)
      {
        goto LABEL_34;
      }
    }

    v21 = 0;
    v18 = BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::aePrimaryGnss[v20];
    v24 = v85;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    v18 = 7;
    v26 = -1;
    LODWORD(v20) = 6;
    v27 = &BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::abTalkerHasXXGSA;
    v21 = -1;
    do
    {
      v28 = 0;
      while (v27[v28] != 1 || ++v26 != v15)
      {
        if (++v28 == 4)
        {
          goto LABEL_28;
        }
      }

      v24 = &BlueFin::GlPeNmeaGen::m_acTalkerCodes + 3 * v25;
      v18 = BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::aePrimaryGnss[v25];
      v21 = v28;
      v26 = v15;
      LODWORD(v20) = v25;
LABEL_28:
      ++v25;
      v27 += 4;
    }

    while (v25 != 6);
  }

  if (!v24 || v20 == 6)
  {
LABEL_34:
    v32 = "pacCurGsaTalker != 0 && eOutputTalker != INVALID_TALKER";
    DeviceFaultNotify("glpe_nmeagen.cpp", 1381, "FormatNmeaGSA", "pacCurGsaTalker != 0 && eOutputTalker != INVALID_TALKER");
    v33 = 1381;
    goto LABEL_85;
  }

LABEL_38:
  if (!BlueFin::GlPeNmeaGen::IsGnssSupportedForReport(v13, BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::aePrimaryGnss[v20]))
  {
    goto LABEL_80;
  }

  v65 = v18;
  v66 = v16;
  if (v5 > a3)
  {
    v35 = (v5 - a3 + 1);
  }

  else
  {
    v35 = 0;
  }

  v36 = 3;
  if (!*(a2 + 4048))
  {
    v36 = 1;
  }

  v64 = v24;
  v37 = v20;
  v38 = 0;
  v39 = 0;
  v40 = (a3 + BlueFin::GlFormat::glsnprintf(a3, v35, "$%sGSA,A,%d", v34, v64, v36));
  v70 = v37;
  v71 = &BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::abTalkerHasGNGSA + 4 * v37;
  v41 = v5 + 1;
  v69 = &BlueFin::GlPeNmeaGen::FormatNmeaGSA(BlueFin::GL_FIX_STATUS const*,char *,short)::abTalkerHasXXGSA + 4 * v37;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      v82 = 0;
      v83 = v38;
      v84 = 1;
      v81 = 0;
      if (BlueFin::GlPeNmeaGen::ToNmeaId(a1, &v83, &v82, &v81) && v82 == v37 && ((v71[v21] & 1) != 0 || v69[v21] == 1) && v21 == i)
      {
        v44 = *(a2 + (v21 << 6) + 4344 + 8 * BlueFin::GlImplGnss::m_aucEnabledGnssTable[v38]);
        BlueFin::GlGnssIdSet::GlGnssIdSet(&v79, v44 >> 31, 2 * v44);
        v74 = v80;
        memcpy(v78, v79, 4 * v80);
        v76 = 0;
        v75 = 0;
        v77 = v78[0];
        BlueFin::GlSetIterator::operator++(&v74);
        if (v75 != v74)
        {
          v45 = v39;
          if (v39 <= 0xB)
          {
            do
            {
              v72 = v38;
              v73 = v76;
              v85[1] = 0;
              HIBYTE(v85[0]) = 0;
              BlueFin::GlPeNmeaGen::ToNmeaId(a1, &v72, &v85[1], v85 + 3);
              if (v5 <= v40)
              {
                v47 = 0;
              }

              else
              {
                v47 = (v41 - v40);
              }

              v40 = (v40 + BlueFin::GlFormat::glsnprintf(v40, v47, ",%02d", v46, HIBYTE(v85[0])));
              v39 = v45 + 1;
              BlueFin::GlSetIterator::operator++(&v74);
              if (v75 == v74)
              {
                break;
              }
            }

            while (v45++ <= 0xA);
          }
        }

        LODWORD(v37) = v70;
      }
    }

    ++v38;
  }

  while (v38 != 7);
  if (v39 <= 0xB)
  {
    v49 = v39 - 12;
    do
    {
      if (v5 <= v40)
      {
        v50 = 0;
      }

      else
      {
        v50 = (v41 - v40);
      }

      v40 = (v40 + BlueFin::GlFormat::glsnprintf(v40, v50, ",", v43));
    }

    while (!__CFADD__(v49++, 1));
  }

  v52 = *(a2 + 4128);
  v53 = sqrt(v52 * v52 + *(a2 + 4120) * *(a2 + 4120));
  if (v5 <= v40)
  {
    v54 = 0;
  }

  else
  {
    v54 = (v41 - v40);
  }

  v55 = BlueFin::GlFormat::glsnprintf(v40, v54, ",%02.1lf,%02.1lf,%02.1lf", v43, *&v53, *(a2 + 4120), *&v52);
  v56 = (*(a1 + 320) + 48 * v70);
  if (*(*(a1 + 1832) + 26256) == 1)
  {
    NmeaSystemID = BlueFin::GlPeNmeaGsvSatsNum::GetNmeaSystemID(*(a1 + 320) + 48 * v70, v65);
LABEL_75:
    v60 = (v40 + v55);
    if (v5 <= v60)
    {
      v61 = 0;
    }

    else
    {
      v61 = (v41 - v60);
    }

    BlueFin::GlFormat::glsnprintf(v60, v61, ",%01d", v57, NmeaSystemID);
    goto LABEL_79;
  }

  NmeaSystemID = BlueFin::GlPeNmeaGsvSatsNum::GetNmeaSignalID(*(a1 + 320) + 48 * v70, v65, v21);
  if (BlueFin::GlPeNmeaGsvSatsNum::OutputNmeaSignalID(v56, NmeaSystemID))
  {
    goto LABEL_75;
  }

LABEL_79:
  BlueFin::GlPeNmeaGen::nmeaAddChksum(a3, v5, v59);
  LOBYTE(v15) = *(a1 + 328);
  v16 = v66;
LABEL_80:
  result = v16 == (v15 + 1);
  if (v16 == (v15 + 1))
  {
    v63 = 0;
  }

  else
  {
    v63 = v15 + 1;
  }

  *(a1 + 328) = v63;
  return result;
}