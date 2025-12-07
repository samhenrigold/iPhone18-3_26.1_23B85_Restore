uint64_t BlueFin::GlPeLtoMgr::deserializeLtoGnssAltNav(BlueFin::GlPeLtoMgr *this, BlueFin::GlSysLogEntry *a2)
{
  v11 = &unk_2A1F105F8;
  v12 = 7;
  v13[0] = -1;
  v14 = -1;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v15 = 0;
  v18[0] = -1;
  v19 = 0;
  v20 = 0;
  v21[0] = -1;
  v22 = -1;
  v24 = 0;
  v23 = 0;
  v25 = 0;
  v4 = BlueFin::GlPeLtoGnssAltNavInterface::Deserialize(&v11, a2);
  result = 0;
  if (v4)
  {
    result = 0;
    if (v12 > 3)
    {
      if (v12 == 4)
      {
        v6 = v18;
        BlueFin::GlPeLtoMgr::UpdateBdsClkErrTgd(this, v18, 0, 1);
      }

      else
      {
        if (v12 != 5)
        {
          return result;
        }

        v6 = v21;
        BlueFin::GlPeLtoMgr::UpdateNonL1ClkErrTgd(this, v3, v21, 0, 1);
      }
    }

    else
    {
      v6 = v13;
      if (v12)
      {
        if (v12 != 3)
        {
          return result;
        }

        if (v14 == 1)
        {
          v7 = v13;
        }

        else
        {
          v7 = 0;
        }

        BlueFin::GlPeLtoMgr::UpdateQzsNonL1ClkErrTgd(this, v3, v7, 0, 1);
      }

      else
      {
        if (v14 == 1)
        {
          v8 = v13;
        }

        else
        {
          v8 = 0;
        }

        BlueFin::GlPeLtoMgr::UpdateNonL1ClkErrTgd(this, v3, v8, 0, 1);
      }
    }

    v9 = *v6 + 1;
    AbbrevGnssName = BlueFin::GlGnss::GetAbbrevGnssName(v12);
    GlCustomLog(14, "LtoMgr: read LTO (%s %d) AltNav Info from NVMEM!\n", AbbrevGnssName, v9);
    return 1;
  }

  return result;
}

uint64_t BlueFin::GlPeBdsEphMgr::SetLtoAltNavData(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 > 0x3E)
  {
    return 0;
  }

  v5 = *(a2 + 1);
  v6 = a1 + 20 * *a2;
  if (v5 == 2)
  {
    v7 = 17436;
  }

  else
  {
    v7 = 16176;
  }

  v8 = v6 + v7;
  result = BlueFin::GlPeBdsAltNavData::IsBetterThan(a2, (v6 + v7));
  if (result)
  {
    if (v8 != a2)
    {
      *v8 = v2;
      *(v8 + 4) = v5;
      *(v8 + 8) = *(a2 + 1);
    }

    *(v8 + 16) = a2[16];
    return 1;
  }

  return result;
}

uint64_t BlueFin::GlPeLtoMgr::UpdateBdsClkErrTgd(uint64_t result, unsigned __int8 *a2, char a3, int a4)
{
  v50 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v6 = a2;
    v7 = result;
    v8 = 0;
    v34 = result + 1648;
    v35 = off_2A1F10790;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v36 = vnegq_f64(v9);
    while (1)
    {
      v10 = *v6;
      if (v10 != 255 && *(v6 + 1) && v10 <= 0x3E)
      {
        break;
      }

LABEL_31:
      if (v8 <= 0x3D)
      {
        ++v8;
        v6 += 16;
        if (!a4)
        {
          continue;
        }
      }

      return result;
    }

    v44 = &unk_2A1F10778;
    v45 = 6;
    v48 = 0;
    *&v47[15] = 0;
    v49 = 0;
    *v47 = *v6;
    v46 = a3;
    if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      (v35)(&v44, 0, 0);
    }

    if ((a3 & 1) == 0)
    {
      v11 = *v6;
      if (v11 <= 0x3E)
      {
        v12 = *(v6 + 1);
        if (v12 == 1)
        {
          v13 = 22;
          v14 = 21676;
LABEL_15:
          v15 = v34 + v14 + 16 * v11;
          *(v7 + 26464) |= 1 << v13;
          if (v6 != v15)
          {
            *v15 = v11;
            *(v15 + 4) = v12;
            *(v15 + 8) = *(v6 + 1);
          }

          goto LABEL_17;
        }

        if (v12 == 2)
        {
          v13 = 23;
          v14 = 22684;
          goto LABEL_15;
        }
      }
    }

LABEL_17:
    v16 = *(v7 + 88);
    if (!*(v16 + 644))
    {
      goto LABEL_28;
    }

    BlueFin::GlPeTimeManager::GetTime(v16, 1, &v37);
    v39 = &off_2A1F0E4D0;
    v40 = 0;
    BlueFin::GlPeGnssTime::GetBds(&v37, &v39);
    v17 = *(v6 + 7);
    v18 = 300 * *(v6 + 4);
    *v19.i64 = v18;
    v37.n128_u64[0] = &off_2A1F0E4D0;
    *v20.i64 = v18 - trunc(v18);
    v21 = *vbslq_s8(v36, v20, v19).i64;
    if (v21 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v22 = v21 * 4294967300.0 + 0.5;
    v23 = v22;
    if (v22 >= 4294967300.0)
    {
      v23 = -1;
    }

    v24 = v18 + 604800 * v17;
    v37.n128_u32[2] = v23;
    v37.n128_u32[3] = v24 + 820108814;
    v37.n128_u64[0] = &off_2A1F0E4D0;
    v42 = v23;
    v43 = v24;
    v25 = (v39[4])(&v39);
    v41[0] = v40;
    v41[1] = v25;
    BlueFin::GlTimePoint::resolveAmbiguity(&v42, v41, 0x27500000u);
    result = (v39[3])(&v39, v43);
    v26 = v40;
    v27 = HIDWORD(v40);
    v28 = result | v42;
    if (result | v42)
    {
      if (v40 < __PAIR64__(result, v42))
      {
        v27 = (__PAIR64__(result - HIDWORD(v40), v42) - v40) >> 32;
        v26 = v42 - v40;
        v28 = 1;
      }

      else
      {
        v28 = 0;
        v27 = (v40 - __PAIR64__(result, v42)) >> 32;
        v26 = v40 - v42;
      }
    }

    v29 = v26 * 2.32830644e-10 + v27;
    if ((v28 & ((v27 | v26) != 0)) != 0)
    {
      v29 = -v29;
    }

    if (v29 <= 604800.0)
    {
LABEL_28:
      v30 = (v10 + 76);
      v37.n128_u8[0] = *v6;
      v37.n128_u32[1] = *(v6 + 1);
      v37.n128_u64[1] = *(v6 + 1);
      v38 = a3;
      BlueFin::GlPeBdsEphMgr::SetLtoAltNavData(*(*(v7 + 80) + 7384), &v37);
      v33 = "BDS_B1C";
      if (*(v6 + 1) == 1)
      {
        v33 = "BDS_B2A";
      }

      v32 = *(v6 + 5) * 5.82076609e-11 * 299792458.0;
      v31 = *(v6 + 6) * 5.82076609e-11 * 299792458.0;
      result = GlCustomLog(14, "Update %s: SVID:%d (TGD: %e(m) ISC: %e(m)) \n", v33, v30, v32, v31);
    }

    goto LABEL_31;
  }

  return result;
}

uint64_t BlueFin::GlPeLtoGpsQzsL1CaIscAltNavInterface::Deserialize(BlueFin::GlPeLtoGpsQzsL1CaIscAltNavInterface *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 129 || *(a2 + 12) != 1)
  {
    return 0;
  }

  v6 = BlueFin::GlImplGnss::m_aucImplGnssTable[BlueFin::GlSysLogEntry::GetU8(a2)];
  *(this + 2) = v6;
  if (v6 != 3 && v6 != 0)
  {
    return 0;
  }

  *(this + 12) = BlueFin::GlSysLogEntry::GetU8(a2);
  *(this + 7) = BlueFin::GlSysLogEntry::GetS16(a2);
  return 1;
}

uint64_t BlueFin::GlPeLtoMgr::UpdateQzsNonL1ClkErrTgd(uint64_t result, uint64_t a2, unsigned __int8 *a3, char a4, int a5)
{
  v40 = *MEMORY[0x29EDCA608];
  if (a3)
  {
    v7 = a3;
    v8 = result;
    v9 = 0;
    v26 = off_2A1F10790;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v27 = vnegq_f64(v10);
    do
    {
      if (*v7 <= 9u && *(v7 + 1) == 1)
      {
        v35 = &unk_2A1F10778;
        v36 = 3;
        v11 = *(v7 + 1);
        v38 = *v7;
        v39 = v11;
        v37 = a4;
        if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          v26(&v35, 0);
        }

        if ((a4 & 1) == 0)
        {
          BlueFin::GlPeLtoFileContentStorageMgr::UpdateLtoToStore(v8 + 1648, 3, v7);
        }

        result = *(v8 + 88);
        if (!*(result + 2576))
        {
          goto LABEL_21;
        }

        BlueFin::GlPeTimeManager::GetTime(result, 1, &v28);
        v31 = &off_2A1F0B5F0;
        v32 = 0;
        BlueFin::GlPeGnssTime::GetGps(&v28, &v31);
        v12 = *(v7 + 15);
        v13 = 300 * *(v7 + 10);
        *v14.i64 = v13;
        v28.n128_u64[0] = &off_2A1F0B5F0;
        *v15.i64 = v13 - trunc(v13);
        v16 = *vbslq_s8(v27, v15, v14).i64;
        if (v16 >= 1.0)
        {
          DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
        }

        v17 = v16 * 4294967300.0 + 0.5;
        v18 = v17;
        if (v17 >= 4294967300.0)
        {
          v18 = -1;
        }

        v28.n128_u32[2] = v18;
        v28.n128_u32[3] = v13 + 604800 * v12;
        v28.n128_u64[0] = &off_2A1F0B5F0;
        v34 = __PAIR64__(v28.n128_u32[3], v18);
        v19 = (v31[4])(&v31);
        v33[0] = v32;
        v33[1] = v19;
        BlueFin::GlTimePoint::resolveAmbiguity(&v34, v33, 0x24EA0000u);
        result = (v31[3])(&v31, HIDWORD(v34));
        v20 = v32;
        v21 = HIDWORD(v32);
        v22 = result | v34;
        if (result | v34)
        {
          if (v32 < __PAIR64__(result, v34))
          {
            v21 = (__PAIR64__(result - HIDWORD(v32), v34) - v32) >> 32;
            v20 = v34 - v32;
            v22 = 1;
          }

          else
          {
            v22 = 0;
            v21 = (v32 - __PAIR64__(result, v34)) >> 32;
            v20 = v32 - v34;
          }
        }

        v23 = v20 * 2.32830644e-10 + v21;
        if ((v22 & ((v21 | v20) != 0)) != 0)
        {
          v23 = -v23;
        }

        if (v23 <= 604800.0)
        {
LABEL_21:
          v24 = *(v7 + 1);
          v28 = *v7;
          v29 = v24;
          LOBYTE(v30) = a4;
          HIBYTE(v30) = 1;
          if (v28.n128_u8[0] <= 9uLL)
          {
            v25 = *(*(v8 + 80) + 7376) + 36 * v28.n128_u8[0] + 2072;
            result = BlueFin::GlPeGpsQzssAltNavData::IsBetterThan(&v28, v25);
            if (result)
            {
              *v25 = v28;
              *(v25 + 16) = v29;
              *(v25 + 32) = v30;
            }
          }
        }
      }

      if (v9 > 8)
      {
        break;
      }

      ++v9;
      v7 += 32;
    }

    while (!a5);
  }

  return result;
}

uint64_t BlueFin::GlPeLtoMgr::deserializeLtoGnssL5HealthInfo(BlueFin::GlPeLtoMgr *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 127 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    U32 = BlueFin::GlSysLogEntry::GetU32(a2);
    GlCustomLog(14, "LtoMgr: read LTO L5Health Info from NVMEM!\n", &unk_2A1F105B0);
    v5 = U32;
    if (!U32)
    {
      for (i = 0; i != 28; i += 4)
      {
        if (v5 <= *(this + i + 988))
        {
          v5 = *(this + i + 988);
        }
      }
    }

    v7 = *(this + 15);
    if ((v7 + 2272) != (this + 1600))
    {
      *(v7 + 2272) = *(this + 100);
    }

    *(this + 5452) = v5;
    *(v7 + 2288) = v5;
    *(this + 6616) |= 0x8000u;
  }

  return v3;
}

uint64_t *BlueFin::GlPeTimeManager::GetTime@<X0>(uint64_t *__return_ptr a1@<X8>, BlueFin::GlPeTimeManager *this@<X0>, const BlueFin::GlGalTime *a3@<X1>, int a4@<W2>)
{
  v10 = 0.0;
  v9 = *(a3 + 1);
  BlueFin::GlPeTimeManager::dateTimeToLms(this, 3, &v9, &v10);
  v7 = v10;

  return BlueFin::GlPeTimeManager::commonGnssToLms(this, v7, a4, a1);
}

uint64_t BlueFin::GlPeLtoMgr::deserializeLtoGnssL5Health(BlueFin::GlPeLtoMgr *this, BlueFin::GlSysLogEntry *a2)
{
  v6 = &unk_2A1F10568;
  v7 = 7;
  v8[0] = -1;
  v9 = 0xFFFFFFFFLL;
  v3 = BlueFin::GlPeLtoGnssL5HealthDataInterface::Deserialize(&v6, a2);
  if (v3)
  {
    AbbrevGnssName = BlueFin::GlGnss::GetAbbrevGnssName(v7);
    GlCustomLog(14, "LtoMgr: read LTO (%s %d) L5Health from NVMEM!\n", AbbrevGnssName, v8[0] + 1);
    BlueFin::GlPeLtoMgr::UpdateGnssL5Health(this, v7, v8, 1, 1);
  }

  return v3;
}

uint64_t BlueFin::GlPeLtoGnssL5HealthDataInterface::Deserialize(BlueFin::GlPeLtoGnssL5HealthDataInterface *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 126 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    *(this + 2) = BlueFin::GlImplGnss::m_aucImplGnssTable[BlueFin::GlSysLogEntry::GetU8(a2)];
    *(this + 12) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 4) = BlueFin::GlSysLogEntry::GetS8(a2);
    *(this + 10) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 11) = BlueFin::GlSysLogEntry::GetU16(a2);
  }

  return v3;
}

uint64_t BlueFin::GlPeTimeManager::SetUncmprsdSystemOffset(_DWORD *a1, unsigned int *a2)
{
  v2 = a2[1];
  if (*a2 == -1 || v2 == -1)
  {
    return 0;
  }

  v6 = &a1[5 * v2 + 1171];
  if (v6 != a2)
  {
    *v6 = *a2;
    a1[5 * v2 + 1172] = v2;
    LOWORD(a1[5 * v2 + 1173]) = *(a2 + 4);
    *&a1[5 * v2 + 1174] = *(a2 + 3);
  }

  if (!a1[644])
  {
    result = 0;
    *(a1 + a2[1] + 3100) = 1;
    return result;
  }

  v7 = "<->";
  v8 = *a2;
  if (v8 >= 4)
  {
    if (v8 == 5)
    {
      v11 = "NIC";
    }

    else
    {
      v11 = "<->";
    }

    if (v8 == 4)
    {
      v9 = "BDS";
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v9 = off_29EEB4488[v8];
  }

  v12 = a2[1];
  if (v12 >= 4)
  {
    if (v12 == 5)
    {
      v7 = "NIC";
    }

    if (v12 == 4)
    {
      v7 = "BDS";
    }
  }

  else
  {
    v7 = off_29EEB4488[v12];
  }

  GlCustomLog(14, "GlPeTimeManager::SetUncmprsdSystemOffset(%u): Received UncmprsdSystemOffset:  From:%s  To:%s  GpsToa: [%d %u]  A0(ns):%.2lf\n", a1[642], v9, v7, *(a2 + 4), a2[3], a2[4] * 0.01);
  BlueFin::GlPeTimeManager::GetTime(a1, 1, v64);
  v65 = &off_2A1F0B5F0;
  v66 = 0;
  BlueFin::GlPeGnssTime::GetGps(v64, &v65);
  v13 = a2[3];
  *v14.i64 = v13;
  v15 = *(a2 + 4);
  v61 = &off_2A1F0B5F0;
  *v16.i64 = v13 - trunc(v13);
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  v18 = *vbslq_s8(vnegq_f64(v17), v16, v14).i64;
  if (v18 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v19 = v18 * 4294967300.0 + 0.5;
  v20 = v19;
  if (v19 >= 4294967300.0)
  {
    v20 = -1;
  }

  v62 = v20;
  v63 = v13 + 604800 * v15;
  v61 = &off_2A1F0B5F0;
  v64[0].n128_u64[0] = __PAIR64__(v63, v20);
  v21 = (v65[4])(&v65);
  v51 = __PAIR64__(v21, v66);
  BlueFin::GlTimePoint::resolveAmbiguity(v64, &v51, 0x24EA0000u);
  v22 = (v65[3])(&v65, v64[0].n128_u32[1]);
  v62 = v64[0].n128_u32[0];
  v63 = v22;
  v23 = v66;
  v24 = HIDWORD(v66);
  v25 = v22 | v64[0].n128_u8[0];
  if (__PAIR64__(v64[0].n128_u32[0], v22))
  {
    if (v66 < __PAIR64__(v22, v64[0].n128_u32[0]))
    {
      v24 = (__PAIR64__(v22 - HIDWORD(v66), v64[0].n128_u32[0]) - v66) >> 32;
      v23 = v64[0].n128_u32[0] - v66;
      v25 = 1;
    }

    else
    {
      v25 = 0;
      v24 = (v66 - __PAIR64__(v22, v64[0].n128_u32[0])) >> 32;
      v23 = v66 - v64[0].n128_u32[0];
    }
  }

  v26 = v23 * 2.32830644e-10 + v24;
  if ((v25 & ((v24 | v23) != 0)) != 0)
  {
    v26 = -v26;
  }

  if (v26 > 1512000.0)
  {
    GlCustomLog(13, "GlPeTimeManager::SetUncmprsdSystemOffset(%u): data too old:  AgeWk:%.0lf  ThreshWk:%.1lf\n");
    return 0;
  }

  v27 = *a2;
  if (v27 >= 6 || ((0x3Bu >> v27) & 1) == 0)
  {
    GlCustomLog(13, "GlPeTimeManager::SetUncmprsdSystemOffset(%u): From Time system is not supported by the build\n");
    return 0;
  }

  v28 = a2[1];
  if (v28 >= 6 || ((0x3Bu >> v28) & 1) == 0)
  {
    GlCustomLog(13, "GlPeTimeManager::SetUncmprsdSystemOffset(%u): To Time system is not supported by the build\n");
    return 0;
  }

  v29 = qword_298A45EC0[v27];
  v30 = qword_298A45EC0[v28];
  v31 = a2[4];
  BlueFin::GlPeTimeManager::GetTime(a1, &v61, 1, v64);
  result = 0;
  v32 = *a2;
  if (*a2 > 2)
  {
    switch(v32)
    {
      case 3u:
        v51 = &off_2A1F0E480;
        v52 = 0;
        Gal = BlueFin::GlPeGnssTime::GetGal(v64, &v51);
        v34 = (v51[4])(&v51, Gal);
        break;
      case 4u:
        v51 = &off_2A1F0E4D0;
        v52 = 0;
        Bds = BlueFin::GlPeGnssTime::GetBds(v64, &v51);
        v35 = (v51[4])(&v51, Bds);
        break;
      case 5u:
        v51 = &off_2A1F0DFC8;
        v52 = 0;
        Nic = BlueFin::GlPeGnssTime::GetNic(v64, &v51);
        v34 = (v51[4])(&v51, Nic);
        break;
      default:
        return result;
    }
  }

  else if (v32)
  {
    if (v32 == 1)
    {
      v51 = &off_2A1F0E430;
      v52 = 0;
      Glns = BlueFin::GlPeGnssTime::GetGlns(v64, &v51);
      v34 = (v51[4])(&v51, Glns);
    }

    else
    {
      if (v32 != 2)
      {
        return result;
      }

      Utc = BlueFin::GlPeGnssTime::GetUtc(v64, &v51);
      v34 = (v51[4])(&v51, Utc);
    }
  }

  else
  {
    v51 = &off_2A1F0B5F0;
    v52 = 0;
    Gps = BlueFin::GlPeGnssTime::GetGps(v64, &v51);
    v34 = (v51[4])(&v51, Gps);
  }

  LODWORD(v36) = v52;
  *v35.i64 = v36 * 2.32830644e-10 + v34;
  *v38.i64 = *v35.i64 + trunc(*v35.i64 * 2.32830644e-10) * -4294967300.0;
  v44.f64[0] = NAN;
  v44.f64[1] = NAN;
  v45 = vnegq_f64(v44);
  v46 = vbslq_s8(v45, v38, v35);
  if (*v35.i64 > 4294967300.0)
  {
    v35.i64[0] = v46.i64[0];
  }

  if (*v35.i64 < -4294967300.0)
  {
    *v37.i64 = -*v35.i64;
    *v35.i64 = -(*v35.i64 - trunc(*v35.i64 * -2.32830644e-10) * -4294967300.0);
    v35 = vbslq_s8(v45, v35, v37);
    *v35.i64 = -*v35.i64;
  }

  if (*v35.i64 < 0.0)
  {
    v47 = --*v35.i64;
  }

  else
  {
    v47 = *v35.i64;
  }

  v53[0] = BlueFin::GlImplGnss::m_aucEnabledGnssTable[v29];
  v58 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[v30];
  v59 = v47 / 0x93A80;
  v54 = (v47 % 0x93A80) >> 4;
  *v35.i64 = v31 * -1.0e-11 / 2.91038305e-11;
  *v46.i64 = *v35.i64 + trunc(*v35.i64 * 2.32830644e-10) * -4294967300.0;
  v48.f64[0] = NAN;
  v48.f64[1] = NAN;
  v49 = vnegq_f64(v48);
  v46.i64[0] = vbslq_s8(v49, v46, v35).u64[0];
  if (*v35.i64 > 4294967300.0)
  {
    v35.i64[0] = v46.i64[0];
  }

  if (*v35.i64 < -4294967300.0)
  {
    *v37.i64 = -*v35.i64;
    *v35.i64 = -(*v35.i64 - trunc(*v35.i64 * -2.32830644e-10) * -4294967300.0);
    *v35.i64 = -*vbslq_s8(v49, v35, v37).i64;
  }

  if (*v35.i64 < 0.0)
  {
    v50 = --*v35.i64;
  }

  else
  {
    v50 = *v35.i64;
  }

  v55 = v50;
  v56 = 0;
  v57 = 0;
  v60 = 0x80;
  return BlueFin::GlPeTimeManager::SetGnssTimeModel(a1, v53, 0.0005);
}

uint64_t BlueFin::GlPeLtoMgr::UpdateGnssGpsTimeOffsetsJavd(uint64_t a1, unsigned __int16 *a2, char a3)
{
  result = *(a1 + 88);
  if (*(result + 2576))
  {
    BlueFin::GlPeTimeManager::GetTime(result, 1, v23);
    v24 = &off_2A1F0B5F0;
    v25 = 0;
    BlueFin::GlPeGnssTime::GetGps(v23, &v24);
    v7 = *a2;
    v8 = *(a2 + 1);
    *v9.i64 = v8;
    v23[0].n128_u64[0] = &off_2A1F0B5F0;
    *v10.i64 = v8 - trunc(v8);
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v12 = *vbslq_s8(vnegq_f64(v11), v10, v9).i64;
    if (v12 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v13 = v12 * 4294967300.0 + 0.5;
    v14 = v13;
    if (v13 >= 4294967300.0)
    {
      v14 = -1;
    }

    v23[0].n128_u32[2] = v14;
    v23[0].n128_u32[3] = v8 + 604800 * v7;
    v23[0].n128_u64[0] = &off_2A1F0B5F0;
    v27 = __PAIR64__(v23[0].n128_u32[3], v14);
    v15 = (v24[4])(&v24);
    v26[0] = v25;
    v26[1] = v15;
    BlueFin::GlTimePoint::resolveAmbiguity(&v27, v26, 0x24EA0000u);
    result = (v24[3])(&v24, HIDWORD(v27));
    v16 = v25;
    v17 = HIDWORD(v25);
    v18 = result | v27;
    if (result | v27)
    {
      if (v25 < __PAIR64__(result, v27))
      {
        v17 = (__PAIR64__(result - HIDWORD(v25), v27) - v25) >> 32;
        v16 = v27 - v25;
        v18 = 1;
      }

      else
      {
        v18 = 0;
        v17 = (v25 - __PAIR64__(result, v27)) >> 32;
        v16 = v25 - v27;
      }
    }

    v19 = v16 * 2.32830644e-10 + v17;
    if ((v18 & ((v17 | v16) != 0)) != 0)
    {
      v19 = -v19;
    }

    if (v19 <= 1512000.0)
    {
      v20 = *(a2 + 2) / 100.0;
      v21 = *(a1 + 112);
      *(v21 + 920) = 1;
      *(v21 + 996) = v20;
    }
  }

  if ((a3 & 1) == 0)
  {
    v22 = *a2;
    *(a1 + 20100) = *(a2 + 2);
    *(a1 + 20092) = v22;
    *(a1 + 26464) |= 0x200u;
  }

  return result;
}

uint64_t BlueFin::GlPeLtoMgr::deserializeLtoGnssGpsTimeoffs(BlueFin::GlPeLtoMgr *this, BlueFin::GlSysLogEntry *a2)
{
  v14 = &unk_2A1F10520;
  v15 = 7;
  v16 = 0;
  v17 = 0;
  result = BlueFin::GlPeLtoGnssGpsTimeoffsDataInterface::Deserialize(&v14, a2);
  if (result)
  {
    switch(v15)
    {
      case 3u:
        *v18 = v16;
        *&v18[4] = v17;
        BlueFin::GlPeLtoMgr::UpdateGnssGpsTimeOffsetsJavd(this, v18, 0);
        goto LABEL_9;
      case 4u:
        v9 = v16;
        v10 = v17;
        v11 = HIDWORD(v17);
        v12 = *(this + 11);
        *v18 = 0x400000000;
        *&v18[8] = v16;
        v19 = v17;
        BlueFin::GlPeTimeManager::SetUncmprsdSystemOffset(v12, v18);
        *(this + 10052) = v9;
        *(this + 5027) = v10;
        *(this + 5028) = v11;
        v8 = *(this + 6616) | 0x400;
        goto LABEL_7;
      case 5u:
        v4 = v16;
        v5 = v17;
        v6 = HIDWORD(v17);
        v7 = *(this + 11);
        *v18 = 0x300000000;
        *&v18[8] = v16;
        v19 = v17;
        BlueFin::GlPeTimeManager::SetUncmprsdSystemOffset(v7, v18);
        *(this + 10040) = v4;
        *(this + 5021) = v5;
        *(this + 5022) = v6;
        v8 = *(this + 6616) | 0x100;
LABEL_7:
        *(this + 6616) = v8;
LABEL_9:
        AbbrevGnssName = BlueFin::GlGnss::GetAbbrevGnssName(v15);
        GlCustomLog(14, "LtoMgr: read LTO %s to GPS Timeoffsets from NVMEM!\n", AbbrevGnssName);
        return 1;
    }

    return 0;
  }

  return result;
}

uint64_t BlueFin::GlPeTimeManager::SetGnssTimeModel(BlueFin::GlPeTimeManager *this, unsigned __int8 *a2, float a3)
{
  v85[0] = &unk_2A1F18678;
  v88 = 4295000000.0;
  v87 = 0uLL;
  v85[1] = &off_2A1F0B5F0;
  v86 = 0;
  if (*(this + 644))
  {
    BlueFin::GlPeTimeManager::GetTime(this, 1, v84);
    v69 = &off_2A1F0B5F0;
    v70 = 0;
    BlueFin::GlPeGnssTime::GetGps(v84, &v69);
    v86 = v70;
  }

  v87 = *a2;
  v88 = a3;
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    (*(v85[0] + 24))(v85, 0, 0);
  }

  result = 0;
  v7 = *a2;
  if (v7 != 4 && v7 != 8)
  {
    v8 = a2[11];
    if (v8 != 4 && v8 != 8)
    {
      v9 = BlueFin::GlImplGnss::m_aucImplGnssTable[a2[11]];
      v10 = BlueFin::GlPeGnssTime::Gnss2TimeSystem(BlueFin::GlImplGnss::m_aucImplGnssTable[*a2]);
      v11 = BlueFin::GlPeGnssTime::Gnss2TimeSystem(v9);
      if (v11 == v10)
      {
        return 0;
      }

      v12 = v11;
      if (!*(this + 644))
      {
        result = 1;
        *(this + v12 + 3100) = 1;
        *(this + 16 * v12 + 3108) = *a2;
        return result;
      }

      v13 = *(a2 + 1);
      v14 = *(a2 + 4);
      v15 = a2[10];
      Time = BlueFin::GlPeTimeManager::GetTime(this, 1, v84);
      v17 = *(a2 + 6);
      v18 = 16 * *(a2 + 1);
      Time.n128_f64[0] = v18;
      __x = Time;
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v69 = &off_2A1F0E480;
          v70 = 0;
          BlueFin::GlPeGnssTime::GetGal(v84, &v69);
          v78 = &off_2A1F0E480;
          *v37.i64 = *__x.i64 - trunc(*__x.i64);
          v38.f64[0] = NAN;
          v38.f64[1] = NAN;
          v39 = *vbslq_s8(vnegq_f64(v38), v37, __x).i64;
          if (v39 >= 1.0)
          {
            DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
          }

          v40 = v39 * 4294967300.0 + 0.5;
          v41 = v40;
          if (v40 >= 4294967300.0)
          {
            v41 = -1;
          }

          v79 = v41;
          v80 = v18 + 604800 * v17 + 619315200;
          v78 = &off_2A1F0E480;
          v91 = v41;
          v92 = v18 + 604800 * v17;
          v42 = (v69[4])(&v69);
          v89 = v70;
          v90 = v42;
          BlueFin::GlTimePoint::resolveAmbiguity(&v91, &v89, 0x93A80000);
          v43 = (v69[3])(&v69, v92);
          v82 = v91;
          v83 = v43;
          v81 = &off_2A1F0E480;
          v21 = (v69[4])(&v69);
          v22 = (v81[4])(&v81);
        }

        else if (v10 == 4)
        {
          v69 = &off_2A1F0E4D0;
          v70 = 0;
          BlueFin::GlPeGnssTime::GetBds(v84, &v69);
          v78 = &off_2A1F0E4D0;
          *v23.i64 = *__x.i64 - trunc(*__x.i64);
          v24.f64[0] = NAN;
          v24.f64[1] = NAN;
          v25 = *vbslq_s8(vnegq_f64(v24), v23, __x).i64;
          if (v25 >= 1.0)
          {
            DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
          }

          v26 = v25 * 4294967300.0 + 0.5;
          v27 = v26;
          if (v26 >= 4294967300.0)
          {
            v27 = -1;
          }

          v79 = v27;
          v80 = v18 + 604800 * v17 + 820108814;
          v78 = &off_2A1F0E4D0;
          v91 = v27;
          v92 = v18 + 604800 * v17;
          v28 = (v69[4])(&v69);
          v89 = v70;
          v90 = v28;
          BlueFin::GlTimePoint::resolveAmbiguity(&v91, &v89, 0x27500000u);
          v29 = (v69[3])(&v69, v92);
          v82 = v91;
          v83 = v29;
          v81 = &off_2A1F0E4D0;
          v21 = (v69[4])(&v69);
          v22 = (v81[4])(&v81);
        }

        else
        {
          v69 = &off_2A1F0DFC8;
          v70 = 0;
          BlueFin::GlPeGnssTime::GetNic(v84, &v69);
          v78 = &off_2A1F0DFC8;
          *v49.i64 = *__x.i64 - trunc(*__x.i64);
          v50.f64[0] = NAN;
          v50.f64[1] = NAN;
          v51 = *vbslq_s8(vnegq_f64(v50), v49, __x).i64;
          if (v51 >= 1.0)
          {
            DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
          }

          v52 = v51 * 4294967300.0 + 0.5;
          v53 = v52;
          if (v52 >= 4294967300.0)
          {
            v53 = -1;
          }

          v79 = v53;
          v80 = v18 + 604800 * v17 + 619315200;
          v78 = &off_2A1F0DFC8;
          v91 = v53;
          v92 = v18 + 604800 * v17;
          v54 = (v69[4])(&v69);
          v89 = v70;
          v90 = v54;
          BlueFin::GlTimePoint::resolveAmbiguity(&v91, &v89, 0x24EA0000u);
          v55 = (v69[3])(&v69, v92);
          v82 = v91;
          v83 = v55;
          v81 = &off_2A1F0DFC8;
          v21 = (v69[4])(&v69);
          v22 = (v81[4])(&v81);
        }
      }

      else if (v10)
      {
        if (v10 != 1)
        {
          v69 = &unk_2A1F11310;
          v70 = 0;
          v44 = 432000 - BlueFin::GlWeekTowTime::m_ucCurrentLs;
          v71 = 1980;
          v72 = v44 / 0x15180 + 1;
          v73 = 1;
          v74 = v44 / 0x15180 + 1;
          v75 = v44 % 0x15180 / 0xE10;
          v76 = (2185 * (v44 - 3600 * ((1193047 * v44) >> 32))) >> 17;
          v77 = v44 - 60 * ((71582789 * v44) >> 32);
          Utc = BlueFin::GlPeGnssTime::GetUtc(v84, &v69);
          v46 = (v69[4])(&v69, Utc);
          LODWORD(v47) = v70;
          v48 = (v47 * 2.32830644e-10 + v46 - (*__x.i64 + v17 * 604800.0));
LABEL_38:
          v56 = v15 * 3.38813179e-21;
          if (v48 >= 0)
          {
            v57 = v48;
          }

          else
          {
            v57 = -v48;
          }

          v58 = 5.0;
          if (v57 < 0x15180)
          {
            v58 = 2.0;
          }

          if (a3 != 4295000000.0)
          {
            v58 = a3 * 1000.0;
          }

          v59 = v13 * 2.91038305e-11 + v14 * 4.4408921e-16 * v48;
          v60 = (v48 * v48);
          v61 = v59 + v56 * v60;
          if (v12 >= v10)
          {
            v62 = v10;
          }

          else
          {
            v62 = v12;
          }

          if (v12 <= v10)
          {
            v63 = v10;
          }

          else
          {
            v63 = v12;
          }

          v64 = -(v59 + v56 * v60);
          if (v12 < v10)
          {
            v64 = v61;
          }

          v65 = v63 + ~v62 + (((11 - v62) * v62) >> 1);
          *(this + v65 + 401) = v64;
          v66 = "<->";
          *(this + v65 + 832) = v58 * 0.001;
          if (v10 >= 4)
          {
            if (v10 == 5)
            {
              v67 = "NIC";
            }

            else
            {
              v67 = "<->";
            }

            if (v10 == 4)
            {
              v67 = "BDS";
            }
          }

          else
          {
            v67 = off_29EEB4488[v10];
          }

          if (v12 >= 4)
          {
            if (v12 == 5)
            {
              v66 = "NIC";
            }

            if (v12 == 4)
            {
              v66 = "BDS";
            }
          }

          else
          {
            v66 = off_29EEB4488[v12];
          }

          GlCustomLog(14, "GlPeTimeManager::SetGnssTimeModel(%u): Accepted time model  from:%s  to:%s  A0(ns):%.1lf  A0_unc(ns):%.0f\n", *(this + 642), v67, v66, v64 * 1000000000.0, ((v58 * 0.001) * 1000.0));
          BlueFin::GlPeTimeManager::updateConversionTable(this);
          return 1;
        }

        v69 = &off_2A1F0E430;
        v70 = 0;
        BlueFin::GlPeGnssTime::GetGlns(v84, &v69);
        v19 = (((795365 * v18) >> 32) >> 4) - v17 + 8 * v17;
        v20 = fmod(*__x.i64, 86400.0);
        BlueFin::GlGlnsTime::GlGlnsTime(&v81, (v19 / 0x5B5 + 1), (v19 % 0x5B5 + 1), v20);
        v21 = (v69[4])(&v69);
        v22 = (v81[4])(&v81);
      }

      else
      {
        v69 = &off_2A1F0B5F0;
        v70 = 0;
        BlueFin::GlPeGnssTime::GetGps(v84, &v69);
        v78 = &off_2A1F0B5F0;
        *v30.i64 = *__x.i64 - trunc(*__x.i64);
        v31.f64[0] = NAN;
        v31.f64[1] = NAN;
        v32 = *vbslq_s8(vnegq_f64(v31), v30, __x).i64;
        if (v32 >= 1.0)
        {
          DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
        }

        v33 = v32 * 4294967300.0 + 0.5;
        v34 = v33;
        if (v33 >= 4294967300.0)
        {
          v34 = -1;
        }

        v79 = v34;
        v80 = v18 + 604800 * v17;
        v78 = &off_2A1F0B5F0;
        v91 = v34;
        v92 = v80;
        v35 = (v69[4])(&v69);
        v89 = v70;
        v90 = v35;
        BlueFin::GlTimePoint::resolveAmbiguity(&v91, &v89, 0x24EA0000u);
        v36 = (v69[3])(&v69, v92);
        v82 = v91;
        v83 = v36;
        v81 = &off_2A1F0B5F0;
        v21 = (v69[4])(&v69);
        v22 = (v81[4])(&v81);
      }

      v48 = v21 - v22;
      goto LABEL_38;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeLtoMgr::deserializeLtoIono(BlueFin::GlPeLtoMgr *this, BlueFin::GlSysLogEntry *a2)
{
  v8 = &unk_2A1F104D8;
  v9 = 7;
  v10 = 0;
  result = BlueFin::GlPeLtoIonoDataInterface::Deserialize(&v8, a2);
  if (result)
  {
    AbbrevGnssName = BlueFin::GlGnss::GetAbbrevGnssName(v9);
    GlCustomLog(14, "LtoMgr: read LTO (%s) IONO from NVMEM!\n", AbbrevGnssName);
    if (v9 == 5)
    {
      v7 = HIDWORD(v9);
      GlCustomLog(15, "GAL IONO(%s): ", "LTO");
      GlCustomLog(15, "%d, %d, %d\n", v10, SWORD1(v10), SWORD2(v10));
      *(this + 5017) = v10;
      *(this + 10036) = WORD2(v10);
      *(this + 5019) = v7;
      v6 = 128;
      goto LABEL_6;
    }

    if (!v9)
    {
      v5 = HIDWORD(v9);
      BlueFin::GlPeIonoMgr::SetLtoIono(*(this + 10) + 71232, &v10, HIDWORD(v9), 0);
      *(this + 2507) = v10;
      *(this + 5016) = v5;
      v6 = 64;
LABEL_6:
      *(this + 6616) |= v6;
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t BlueFin::GlPeLtoIonoDataInterface::Deserialize(BlueFin::GlPeLtoIonoDataInterface *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 124 || *(a2 + 12) != 1)
  {
    return 0;
  }

  *(this + 2) = BlueFin::GlImplGnss::m_aucImplGnssTable[BlueFin::GlSysLogEntry::GetU8(a2)];
  *(this + 3) = BlueFin::GlSysLogEntry::GetU32(a2);
  v6 = *(this + 2);
  if (v6 == 5)
  {
    *(this + 8) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + 9) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + 10) = BlueFin::GlSysLogEntry::GetS16(a2);
    return 1;
  }

  if (!v6)
  {
    *(this + 16) = BlueFin::GlSysLogEntry::GetS8(a2);
    *(this + 17) = BlueFin::GlSysLogEntry::GetS8(a2);
    *(this + 18) = BlueFin::GlSysLogEntry::GetS8(a2);
    *(this + 19) = BlueFin::GlSysLogEntry::GetS8(a2);
    *(this + 20) = BlueFin::GlSysLogEntry::GetS8(a2);
    *(this + 21) = BlueFin::GlSysLogEntry::GetS8(a2);
    *(this + 22) = BlueFin::GlSysLogEntry::GetS8(a2);
    *(this + 23) = BlueFin::GlSysLogEntry::GetS8(a2);
    return 1;
  }

  return 0;
}

void BlueFin::GlPeTimeManager::SetGalGpsSystemOffset(BlueFin::GlPeTimeManager *this, const BlueFin::GlPeGalGpsOffsetData *a2, int a3)
{
  BlueFin::GlPeGalTimeMgr::SetGpsOffset((this + 2336), a2);
  v6 = *(this + 2432);
  *(this + 2432) = 0;
  if (v6 == 1)
  {
    BlueFin::GlPeTimeManager::updateConversionTable(this);
    if ((a3 & 1) == 0 && BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      (*(*a2 + 24))(a2, 0, 0);
    }
  }

  v7 = *(a2 + 2);
  if (v7)
  {
    v8 = *(a2 + 10);
    v9 = *(a2 + 11);
    v10 = *(a2 + 24);
    v11 = v8 == 0xFFFF && v9 == 0xFFFF;
    if (!v11 || v10 != 255 || *(a2 + 25) != 63)
    {
      v12 = *(this + 642);
      if (v12 == -7200001)
      {
        v12 = 0;
      }

      v13 = BlueFin::GlPeTimeManager::m_acNavDataSourceImage[v7];
      v16 = v9 * 4.4408921e-16 * 1000000000.0;
      v14 = 78;
      if (a3)
      {
        v15 = 89;
      }

      else
      {
        v15 = 78;
      }

      if (v6)
      {
        v14 = 89;
      }

      GlCustomLog(15, "GlPeTimeManager::SetGalGpsSystemOffset(%u): Updated:%c  FromNvMem:%c  Source:%s  GalWeek:%d  GalTowS:%u  GPS{A0(ns):%.1lf  A1(ns/s):%.1lf  WN:%d  Tog(s):%.0lf}\n", v12, v14, v15, v13, *(a2 + 6), *(a2 + 4) / 0x3E8u, v8 * 2.91038305e-11 * 1000000000.0, v16, *(a2 + 25), v10 * 3600.0);
    }
  }
}

void BlueFin::GlPeLtoMgr::UpdateGalSysTimeOffsets(uint64_t a1, int *a2, _DWORD *a3)
{
  v17 = &unk_2A1F18450;
  v19 = 0;
  v6 = *a2;
  v20 = 0;
  v21 = v6;
  v22 = *(a2 + 2);
  v18 = 3;
  v19 = (*(*a3 + 32))(a3) / 0x93A80;
  v10 = (*(*a3 + 32))(a3);
  LODWORD(v9) = a3[2];
  *v10.i64 = (v9 * 2.32830644e-10 + (v8 % 0x93A80)) * 1000.0;
  *v11.i64 = *v10.i64 + trunc(*v10.i64 * 2.32830644e-10) * -4294967300.0;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = vnegq_f64(v12);
  *&v14 = vbslq_s8(v13, v11, v10).u64[0];
  if (*v10.i64 > 4294967300.0)
  {
    *v10.i64 = v14;
  }

  if (*v10.i64 < -4294967300.0)
  {
    *v7.i64 = -*v10.i64;
    *v10.i64 = -(*v10.i64 - trunc(*v10.i64 * -2.32830644e-10) * -4294967300.0);
    *v10.i64 = -*vbslq_s8(v13, v10, v7).i64;
  }

  if (*v10.i64 < 0.0)
  {
    v15 = --*v10.i64;
  }

  else
  {
    v15 = *v10.i64;
  }

  v20 = v15;
  BlueFin::GlPeTimeManager::SetGalGpsSystemOffset(*(a1 + 88), &v17, 0);
  v16 = *a2;
  *(a1 + 20040) = *(a2 + 2);
  *(a1 + 20036) = v16;
  *(a1 + 26464) |= 8u;
}

uint64_t BlueFin::GlPeTimeManager::SetBdsSystemOffsets(int8x8_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5, char a6)
{
  if (a2 == 4)
  {
    return GlCustomLog(15, "GlPeTimeManager::SetBdsSystemOffsets(%u): Hardcoded values disallowed. GPS_A0(ns):%.1lf  GLO_A0(ns):%.1lf\n", a3, a4);
  }

  v12 = &unk_2A1F18320;
  v16 = 0;
  v17 = 0;
  v13 = a3;
  v14 = a4;
  v15 = a2;
  if (&v16 != a5)
  {
    v16 = *a5;
    v17 = *(a5 + 2);
  }

  BlueFin::GlPeBdsTimeMgr::SetSystemOffsets(a1 + 268, &v12);
  v11 = a1[269].i32[1];
  a1[269].i32[1] = v11 & 0xFFFFFFE3;
  if ((v11 & 0x1C) != 0)
  {
    BlueFin::GlPeTimeManager::updateConversionTable(a1);
    if ((a6 & 1) == 0)
    {
      if (BlueFin::GlUtils::m_pInstance)
      {
        if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          (*(v12 + 3))(&v12, 0, 0);
        }
      }
    }
  }

  return GlCustomLog(15, "GlPeTimeManager::SetBdsSystemOffsets(%u): Updated:%c  FromNvMem:%c  Source:%s  BdsWeek:%d  BdsFctS:%u  GPS{A0(ns):%.1lf  A1(ns/s):%.1lf}  GLO{A0(ns):%.1lf  A1(ns/s):%.1lf}  GAL{A0(ns):%.1lf  A1(ns/s):%.1lf}\n", v9, v10);
}

BOOL BlueFin::GlPeBdsTimeMgr::SetSystemOffset(int8x8_t *this, int8x8_t *a2)
{
  v4 = BlueFin::GlPeBdsTimeMgr::acceptSystemOffsetUpdate(this, a2);
  v5 = v4;
  if (v4)
  {
    v6 = a2[1].i32[0];
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        if (&this[14] == a2)
        {
          v15 = 3;
          goto LABEL_16;
        }

        v7 = 18;
        v8 = 17;
        v9 = 33;
        v10 = 16;
        v11 = 62;
        v12 = 15;
        goto LABEL_15;
      }

      if (v6 != 4)
      {
        goto LABEL_22;
      }

      if (&this[19] == a2)
      {
        v15 = 4;
        goto LABEL_16;
      }

      v7 = 23;
      v8 = 22;
      v9 = 43;
      v10 = 21;
      v11 = 82;
      v12 = 20;
    }

    else
    {
      if (v6 != 1)
      {
        if (v6 == 2)
        {
          if (&this[9] == a2)
          {
            v15 = 2;
            goto LABEL_16;
          }

          v7 = 13;
          v8 = 12;
          v9 = 23;
          v10 = 11;
          v11 = 42;
          v12 = 10;
          goto LABEL_15;
        }

LABEL_22:
        DeviceFaultNotify("glpe_bdstimemgr.cpp", 646, "SetSystemOffset", "false");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdstimemgr.cpp", 646, "false");
      }

      if (&this[4] == a2)
      {
        v15 = 1;
        goto LABEL_16;
      }

      v7 = 8;
      v8 = 7;
      v9 = 13;
      v10 = 6;
      v11 = 22;
      v12 = 5;
    }

LABEL_15:
    this[v12].i32[0] = v6;
    this->i16[v11] = a2[1].i16[2];
    v13 = a2[2].i32[1];
    this[v10].i32[0] = a2[2].i32[0];
    this->i32[v9] = v13;
    v14 = a2[4];
    this[v8] = a2[3];
    this[v7] = v14;
    v15 = a2[1].i32[0];
LABEL_16:
    this[1] = vorr_s8(this[1], vdup_n_s32(1 << BlueFin::GlPeBdsTimeMgr::timeSystemToDataType(v4, v15)));
  }

  return v5;
}

BOOL BlueFin::GlPeBdsTimeMgr::SetSystemOffsets(int8x8_t *this, const BlueFin::GlPeBdsSysOffsetsData *a2)
{
  v9 = &unk_2A1F18350;
  v4 = *(a2 + 12);
  v11 = *(a2 + 4);
  v10 = 2;
  v5 = *(a2 + 11) * 1.0e-10;
  v12 = v4;
  v13 = v5;
  v14 = *(a2 + 10) * 1.0e-10;
  BlueFin::GlPeBdsTimeMgr::SetSystemOffset(this, &v9);
  v10 = 3;
  v6 = *(a2 + 12);
  v13 = *(a2 + 13) * 1.0e-10;
  v14 = v6 * 1.0e-10;
  BlueFin::GlPeBdsTimeMgr::SetSystemOffset(this, &v9);
  v10 = 4;
  v7 = *(a2 + 14);
  v13 = *(a2 + 15) * 1.0e-10;
  v14 = v7 * 1.0e-10;
  return BlueFin::GlPeBdsTimeMgr::SetSystemOffset(this, &v9);
}

double BlueFin::GlPeLtoMgr::UpdateBdsSysTimeOffsets(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v7 = a1 + 20042;
  BlueFin::GlPeTimeManager::SetBdsSystemOffsets(*(a1 + 88), 3, a2, a3, a4, 0);
  v8 = *(a4 + 8);
  v9 = *(a4 + 10);
  result = *a4;
  *v7 = *a4;
  *(v7 + 8) = v8;
  *(v7 + 10) = v9;
  *(v7 + 12) = v5;
  *(a1 + 26464) |= 0x10u;
  return result;
}

uint64_t BlueFin::GlPeLtoMgr::deserializeLtoSysTime(BlueFin::GlPeLtoMgr *this, BlueFin::GlSysLogEntry *a2)
{
  v3 = this + 24576;
  v4 = *(this + 6615);
  v17 = &unk_2A1F10490;
  v18 = 7;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  result = BlueFin::GlPeLtoSysTimeDataInterface::Deserialize(&v17, a2);
  if (!result)
  {
    return result;
  }

  AbbrevGnssName = BlueFin::GlGnss::GetAbbrevGnssName(v18);
  GlCustomLog(14, "LtoMgr: read LTO SysTime (%s) from NVMEM!\n", AbbrevGnssName);
  switch(v18)
  {
    case 5u:
      v10 = v4 % 0x93A80;
      *v7.i64 = v10;
      v14 = &off_2A1F0E480;
      *v8.i64 = v10 - trunc(v10);
      v11.f64[0] = NAN;
      v11.f64[1] = NAN;
      v7.i64[0] = vbslq_s8(vnegq_f64(v11), v8, v7).i64[0];
      if (*v7.i64 < 1.0)
      {
        v12 = *v7.i64 * 4294967300.0 + 0.5;
        v13 = v12;
        if (v12 >= 4294967300.0)
        {
          v13 = -1;
        }

        v15 = v13;
        v16 = v10 + 604800 * (v4 / 0x93A80 - 1024) + 619315200;
        v14 = &off_2A1F0E480;
        BlueFin::GlPeLtoMgr::UpdateGalSysTimeOffsets(this, &v20 + 1, &v14);
        return 1;
      }

      goto LABEL_15;
    case 4u:
      *v7.i64 = v4;
      *v8.i64 = v4 - trunc(v4);
      v9.f64[0] = NAN;
      v9.f64[1] = NAN;
      if (*vbslq_s8(vnegq_f64(v9), v8, v7).i64 < 1.0)
      {
        BlueFin::GlPeLtoMgr::UpdateBdsSysTimeOffsets(this, HIWORD(v21), v4 - 820108814, &v20 + 10);
        return 1;
      }

LABEL_15:
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    case 2u:
      BlueFin::GlPeTimeManager::SetGlnsAsst(*(this + 11), 3, &v19);
      *(this + 1251) = v19;
      *(this + 5008) = v20;
      *(v3 + 472) |= 0x20u;
      return 1;
  }

  return 0;
}

uint64_t BlueFin::GlPeTimeManager::SetGlnsAsst(BlueFin::GlPeTimeManager *a1, uint64_t a2, char *a3)
{
  BlueFin::GlPeGlnTimeMgr::SetAsst(a1 + 192, a2, a3);
  if (*(a1 + 435) == 1)
  {
    BlueFin::GlPeTimeManager::updateLeapSecFromGlnsKp(a1);
  }

  BlueFin::GlPeTimeManager::updateConversionTable(a1);
  return 1;
}

uint64_t BlueFin::GlPeGlnTimeMgr::stTauMgr::Update(uint64_t result, int a2, int a3, double a4)
{
  v5 = result;
  if (!a2)
  {
    *result = 768;
    *(result + 16) = 257;
    *(result + 8) = a4;
    *(result + 24) = a4;
    *(result + 32) = a3;
    return GlCustomLog(15, "GlPeGlnTimeMgr::UpdateTau%s:  Set from assistance   Tau%s:%.1fns\n", (result + 36), (result + 36), a4 * 1000000000.0);
  }

  v6 = *(result + 16);
  if ((*result & 1) == 0)
  {
    v8 = *(result + 8);
    if (vabdd_f64(a4, v8) * 1000000000.0 <= 50.0)
    {
      v8 = a4 * 0.3 + v8 * 0.7;
      *(result + 8) = v8;
      v10 = *(result + 1);
      if (v10 <= 2)
      {
        *(result + 1) = v10 + 1;
      }
    }

    else if (!*(result + 1) || (v9 = *(result + 1) - 1, (*(result + 1) = v9) == 0))
    {
      *(result + 8) = a4;
      *(result + 16) = 0;
      return result;
    }

    *(result + 16) = 1;
    if (!v6)
    {
      goto LABEL_15;
    }

LABEL_14:
    if (vabdd_f64(*(v5 + 24), v8) * 1000000000.0 < 5.0)
    {
      return result;
    }

    goto LABEL_15;
  }

  *(result + 1) = 0;
  *(result + 8) = a4;
  result = GlCustomLog(15, "GlPeGlnTimeMgr::UpdateTau%s:  Initialized  Tau%s:%.1fns\n", (result + 36), (result + 36), a4 * 1000000000.0);
  *v5 = 0;
  v7 = *(v5 + 1);
  *(v5 + 16) = *(v5 + 1) != 0;
  if (!v7)
  {
    return result;
  }

  v8 = *(v5 + 8);
  if (v6)
  {
    goto LABEL_14;
  }

LABEL_15:
  *(v5 + 17) = 1;
  *(v5 + 24) = v8;
  *(v5 + 32) = a3;
  return result;
}

uint64_t BlueFin::GlPeGlnTimeMgr::TauGpsMgr::Update(uint64_t result, unsigned int a2, int a3, double a4)
{
  if (*(result + 46))
  {

    return BlueFin::GlPeGlnTimeMgr::stTauMgr::Update(result, a2, a3, a4);
  }

  else if (a2 <= 2)
  {
    v5 = (a4 * 1000000000.0);
    *(result + 46) = 1;
    *(result + 48) = v5;
    v6 = v5 * 0.000000001;
    *result = 768;
    *(result + 8) = v6;
    *(result + 16) = 257;
    *(result + 24) = v6;
    *(result + 32) = a3;
    return GlCustomLog(15, "GlPeGlnTimeMgr::Update TauGps initialized  InitialValue:%.1fns\n", v6 * 1000000000.0);
  }

  return result;
}

void BlueFin::GlPeGlnTimeMgr::SetAsst(uint64_t a1, int a2, char *a3)
{
  v8 = &unk_2A1F18508;
  v12 = 0;
  v13 = 0.0;
  v14 = 0;
  v16 = 0.0;
  v17 = 0.0;
  memset(v15, 0, sizeof(v15));
  v9 = *a3;
  v10 = *(a3 + 1);
  v11 = a2;
  v3 = *(a3 + 1);
  if (v3 != 0x7FFFFFFF)
  {
    v12 = 1;
    v13 = vcvtd_n_f64_s32(v3, 0x1FuLL);
  }

  v4 = *(a3 + 2);
  if (v4 != 0x7FFFFFFF)
  {
    v14 = 1;
    *v15 = vcvtd_n_f64_s32(v4, 0x1EuLL);
  }

  if (a3[12])
  {
    v15[8] = 1;
    v15[9] = a3[13];
  }

  if (a3[14])
  {
    v15[10] = 1;
    v5 = vcvtd_n_f64_s32(*(a3 + 8), 0xAuLL);
    v6 = vcvtd_n_f64_s32(*(a3 + 9), 0x10uLL);
    v16 = v5;
    v17 = v6;
  }

  v7 = BlueFin::GlPeGlnTimeMgr::initializeTimeData(a1, &v8, 0);
  if (BlueFin::GlUtils::m_pInstance)
  {
    if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      (*(v8 + 3))(&v8, 0, 0, v7);
    }
  }
}

uint64_t BlueFin::GlPeTimeManager::SetBdsUtcModel(BlueFin::GlPeTimeManager *a1, int a2, int a3, uint64_t *a4, int a5)
{
  v16 = &unk_2A1F182F0;
  v19 = 0;
  v20 = 0;
  v17 = a3;
  v18 = a2;
  if (&v19 != a4)
  {
    v19 = *a4;
    v20 = *(a4 + 2);
  }

  BlueFin::GlPeBdsTimeMgr::SetUtcModel(a1 + 2144, &v16);
  v10 = *(a1 + 539);
  *(a1 + 539) = v10 & 0xFFFFFF9F;
  if ((v10 & 0x20) != 0)
  {
    BlueFin::GlPeTimeManager::updateConversionTable(a1);
    if ((a5 & 1) == 0 && BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      (*(v16 + 3))(&v16, 0, 0);
    }

    v11 = 89;
  }

  else
  {
    v11 = 78;
  }

  v12 = *(a1 + 642);
  if (v12 == -7200001)
  {
    v12 = 0;
  }

  v15 = vcvtd_n_f64_s32(*(a4 + 1), 0x1EuLL) * 1000000000.0;
  v13 = 78;
  if (a5)
  {
    v13 = 89;
  }

  return GlCustomLog(15, "GlPeTimeManager::SetBdsUtcModel(%u): Updated:%c  FromNvMem:%c  Source:%s  BdsWeek:%d  A0(ns):%.1lf  A1(ns/s):%.1lf  DeltaTls:%d  DeltaTlsf:%d  DN:%d  WNlsf:%d\n", v12, v11, v13, BlueFin::GlPeTimeManager::m_acNavDataSourceImage[a2], a3, v15, *a4 * 8.8817842e-16 * 1000000000.0, *(a4 + 8), *(a4 + 11), *(a4 + 10), *(a4 + 9));
}

double BlueFin::GlPeLtoMgr::UpdateBdsUtcModel(uint64_t a1, int a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1 + 19992;
  BlueFin::GlPeTimeManager::SetBdsUtcModel(*(a1 + 88), 3, a2, a3, 0);
  result = *a3;
  *(a1 + 19984) = *a3;
  *v6 = *(a3 + 8);
  *(v6 + 4) = v4;
  *(a1 + 26464) |= 4u;
  return result;
}

uint64_t BlueFin::GlPeLtoUtcDataInterface::Deserialize(BlueFin::GlPeLtoUtcDataInterface *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 122 || *(a2 + 12) != 1)
  {
    return 0;
  }

  v6 = BlueFin::GlImplGnss::m_aucImplGnssTable[BlueFin::GlSysLogEntry::GetU8(a2)];
  *(this + 2) = v6;
  switch(v6)
  {
    case 5:
      goto LABEL_9;
    case 4:
      *(this + 7) = BlueFin::GlSysLogEntry::GetS32(a2);
      *(this + 8) = BlueFin::GlSysLogEntry::GetS32(a2);
      *(this + 36) = BlueFin::GlSysLogEntry::GetS8(a2);
      *(this + 37) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 38) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 39) = BlueFin::GlSysLogEntry::GetS8(a2);
      *(this + 20) = BlueFin::GlSysLogEntry::GetU16(a2);
      return 1;
    case 0:
LABEL_9:
      *(this + 3) = BlueFin::GlSysLogEntry::GetS32(a2);
      *(this + 4) = BlueFin::GlSysLogEntry::GetS32(a2);
      *(this + 20) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 21) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 22) = BlueFin::GlSysLogEntry::GetS8(a2);
      *(this + 23) = BlueFin::GlSysLogEntry::GetU8(a2);
      *(this + 24) = BlueFin::GlSysLogEntry::GetS8(a2);
      *(this + 25) = BlueFin::GlSysLogEntry::GetS8(a2);
      return 1;
  }

  return 0;
}

uint64_t BlueFin::GlPeGpsTimeMgr::GetFctOfFutureLS(BlueFin::GlPeGpsTimeMgr *this, const BlueFin::GlGpsTime *a2)
{
  if (!*(this + 18))
  {
    return 0;
  }

  if (BlueFin::GlPeGpsTimeMgr::isExpired(this, a2) || !*(this + 108))
  {
    return 0;
  }

  v4 = (*(*a2 + 32))(a2) / 0x93A80;
  v5 = v4 - *(this + 107);
  if (v5 >= 0)
  {
    v6 = v4 - *(this + 107);
  }

  else
  {
    v6 = *(this + 107) - v4;
  }

  v7 = v5 + 256;
  if (v5 >= -127)
  {
    v7 = v4 - *(this + 107);
  }

  if (v5 >= 128)
  {
    v8 = v5 - 256;
  }

  else
  {
    v8 = v7;
  }

  if (v6 == 128)
  {
    v8 = 0;
  }

  return *(this + 109) + 86400 * *(this + 108) + 604800 * (v4 - v8);
}

uint64_t BlueFin::GlPeGpsTimeMgr::GetDeltaUTCSec(BlueFin::GlPeGpsTimeMgr *this, const BlueFin::GlGpsTime *a2, int *a3)
{
  v14 = 0.0;
  UtcTime = BlueFin::GlPeGpsTimeMgr::getUtcTime(this, a2, &v14);
  if (UtcTime)
  {
    v6 = (*(*a2 + 32))(a2);
    LODWORD(v7) = *(a2 + 2);
    v8 = fmod(v7 * 2.32830644e-10 + (v6 % 0x93A80), 86400.0);
    v9 = v8 - v14;
    v10 = 0.5;
    if (v9 <= 0.0)
    {
      v10 = -0.5;
      if (v9 >= 0.0)
      {
        v12 = 0;
        goto LABEL_9;
      }
    }

    v11 = (v9 + v10);
    *a3 = v11;
    if (v11 >= 43201)
    {
      v12 = v11 - 86400;
LABEL_9:
      *a3 = v12;
      return UtcTime;
    }

    if (v11 <= -43201)
    {
      v12 = v11 + 86400;
      goto LABEL_9;
    }
  }

  return UtcTime;
}

uint64_t BlueFin::GlPeGpsUtcModel::computeUtcSysOffsetS(BlueFin::GlPeGpsUtcModel *this, const BlueFin::GlGpsTime *a2)
{
  if (a2)
  {
    (*(*a2 + 32))(a2);
    return (*(*a2 + 32))(a2);
  }

  return result;
}

uint64_t BlueFin::GlPeGpsTimeMgr::getUtcTime(BlueFin::GlPeGpsTimeMgr *this, const BlueFin::GlGpsTime *a2, double *a3)
{
  if (!*(this + 18))
  {
    return 0;
  }

  if (BlueFin::GlPeGpsTimeMgr::isExpired(this, a2) || !*(this + 108))
  {
    return 0;
  }

  v6 = ((*(*a2 + 32))(a2) / 0x93A80) - *(this + 107);
  if (v6 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = -v6;
  }

  v8 = v6 + 256;
  if (v6 >= -127)
  {
    v8 = v6;
  }

  if (v6 >= 128)
  {
    v9 = v6 - 256;
  }

  else
  {
    v9 = v8;
  }

  if (v7 == 128)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v11 = (*(*a2 + 32))(a2);
  LODWORD(v12) = *(a2 + 2);
  v13 = v12 * 2.32830644e-10 + (v11 % 0x93A80);
  v14 = v13;
  if (v10 > 0)
  {
    v16 = v14 < 21600 && *(this + 108) == 7 && v10 == 1;
    v17 = this + 106;
    v18 = this + 109;
    if (!v16)
    {
      v20 = 0;
      v21 = this + 109;
      goto LABEL_36;
    }

    v20 = 1;
    goto LABEL_35;
  }

  if (v10)
  {
    v20 = 0;
    v17 = this + 106;
    v18 = this + 109;
LABEL_35:
    v21 = v17;
    goto LABEL_36;
  }

  v22 = 86400 * *(this + 108);
  v23 = __OFSUB__(v14, v22);
  v24 = v14 - v22;
  if ((v24 < 0) ^ v23 | (v24 == 0))
  {
    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  if (v24 < 0)
  {
    v24 = -v24;
  }

  v20 = v24 >> 5 < 0x2A3;
  v17 = this + 106;
  v18 = this + 109;
  v21 = this + 109;
  if ((v25 | v20))
  {
    goto LABEL_35;
  }

LABEL_36:
  v26 = *v21;
  BlueFin::GlPeGpsUtcModel::computeUtcSysOffsetS((this + 64), a2);
  v28 = v27 + v26;
  if (v20)
  {
    v29 = *v18 + 86400 - *v17;
    v30 = fmod(v13 - v28 + -43200.0, 86400.0);
    if (v30 < 0.0)
    {
      v30 = v30 + 86400.0;
    }

    v31 = fmod(v30 + 43200.0, v29);
    goto LABEL_42;
  }

  v32 = fmod(v13 - v28, 86400.0);
  *a3 = v32;
  if (v32 < 0.0)
  {
    v31 = v32 + 86400.0;
LABEL_42:
    *a3 = v31;
  }

  return 1;
}

uint64_t BlueFin::GlPeTimeManager::UpdateLeapSecFromGpsUtcModel(BlueFin::GlPeTimeManager *this)
{
  if (!*(this + 644))
  {
    return 0;
  }

  BlueFin::GlPeTimeManager::GetTime(this, 1, v5);
  v6[0] = &off_2A1F0B5F0;
  v6[1] = 0;
  BlueFin::GlPeGnssTime::GetGps(v5, v6);
  v5[0].n128_u32[0] = 0;
  DeltaUTCSec = BlueFin::GlPeGpsTimeMgr::GetDeltaUTCSec((this + 64), v6, v5);
  result = 0;
  if (DeltaUTCSec)
  {
    v4 = 0x80;
    BlueFin::GlPeGpsTimeMgr::GetFutureLS((this + 64), v6, &v4);
    return BlueFin::GlPeTimeManager::updateLeapSeconds(this, v5[0].n128_i8[0], 4, 0, v4);
  }

  return result;
}

uint64_t BlueFin::GlPeTimeManager::SetGpsUtcModel(int8x16_t *this, int8x16_t *a2, double a3, int8x16_t a4)
{
  result = BlueFin::GlPeGpsTimeMgr::updateModelIfBetter(this + 4, a2, 0, a3, a4);
  v6 = this[11].u8[0];
  this[11].i8[0] = 0;
  if (v6 == 1)
  {

    return BlueFin::GlPeTimeManager::UpdateLeapSecFromGpsUtcModel(this);
  }

  return result;
}

BOOL BlueFin::GlPeAlmMgr::SetAsstAlm(BlueFin::GlPeAlmMgr *this, const BlueFin::GlPeAlmanac *a2)
{
  v5 = *(a2 + 23);
  if (*(*(this + 56) + 2576))
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v32 = 7;
    v33 = 0;
    LODWORD(v26) = -65536;
    v27 = 0;
    LODWORD(v28) = 0;
    memset(v29, 0, 66);
    *&v29[68] = -1;
    LOBYTE(v30) = 0;
    if (BlueFin::GlPeAlmMgr::GetAlm(this, *(a2 + 26), *(a2 + 108), &v26, 1, 1))
    {
      BlueFin::GlPeTimeManager::GetTime(*(this + 56), 1, v38);
      v39[0] = &off_2A1F0B5F0;
      v39[1] = 0;
      *v7.i64 = BlueFin::GlPeGnssTime::GetGps(v38, v39);
      BlueFin::GlPeAlmanac::GetToa(v38, &v26, v39, v7, v8);
      v9 = (*(v38[0].n128_u64[0] + 32))(v38);
      LODWORD(v2) = v38[0].n128_u32[2];
      BlueFin::GlPeAlmanac::GetToa(&v36, a2, v39, v10, v11);
      v12 = (*(v36 + 32))(&v36);
      if (v2 * 2.32830644e-10 + v9 > (v37 | 0x3DEFFFFF00000000uLL) * 2.32830644e-10 + v12)
      {
        return 0;
      }
    }

    v5 = *(a2 + 23);
  }

  v26 = &unk_2A1F0E890;
  v13 = *(a2 + 26);
  v34 = v13;
  v14 = *(a2 + 108);
  v35 = *(a2 + 108);
  LODWORD(v27) = *a2;
  v28 = *(a2 + 1);
  *v29 = *(a2 + 4);
  v15 = *(a2 + 40);
  *&v29[8] = *(a2 + 24);
  *&v29[24] = v15;
  v16 = *(a2 + 72);
  *&v29[40] = *(a2 + 56);
  *&v29[56] = v16;
  v30 = *(a2 + 44);
  v31 = v5;
  LOBYTE(v32) = *(a2 + 96);
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    BlueFin::GlPeAlmanacData::SerializeImpl(&v26, 0);
    v13 = *(a2 + 26);
    v14 = *(a2 + 108);
  }

  AlmReference = BlueFin::GlPeAlmMgr::getAlmReference(this, v13, v14);
  v18 = *(a2 + 5) * *(a2 + 5);
  v19 = v18 >= 7078137.0;
  if (v18 < 7078137.0)
  {
    v22 = BlueFin::GNSS2STR(*(a2 + 26));
    v23 = *(a2 + 23);
    if (v23 > 4)
    {
      v24 = "INV";
    }

    else
    {
      v24 = BlueFin::GlPeAlmanac::GetSourceStr(void)const::aacSourceStr[v23];
    }

    GlCustomLog(11, "GlPeAlmMgr::SetAsstAlm:Rejected Alm %s %02d  Source:%s  Reason:Invalid ASqrt(%.0lf)\n", v22, *(a2 + 108), v24, *(a2 + 5));
  }

  else
  {
    BlueFin::GlPeAlmanac::operator=(AlmReference, a2);
    v20 = *(a2 + 108);
    if ((v20 - 64) <= 0xFFFFFFC0)
    {
      DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.h", 115, "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
    }

    v21 = *(this + 54) + 48 * *(a2 + 26);
    *(*(v21 + 24) + ((v20 >> 3) & 0x1C)) |= 1 << v20;
    BlueFin::GlSetBase::Remove(v21, v20);
    *(this + 36712) = 0;
  }

  return v19;
}

BOOL BlueFin::GlPeLtoMgr::UpdateSbasAlmanac(BlueFin::GlPeLtoMgr *this, __int16 a2, int a3, double a4)
{
  v23 = 1;
  v24 = a3 - 119;
  v10[0] = a3;
  v10[1] = 0;
  v11 = 0;
  v12 = 0;
  v13 = xmmword_298A404C0;
  v15 = 0;
  v16 = 0;
  v14 = 0x40B95D8000000000;
  v17 = a4 * -0.0174532925;
  v18 = 0;
  v19 = 0;
  v20 = a2;
  v21 = 4;
  v22 = 0;
  result = BlueFin::GlPeAlmMgr::SetAsstAlm((*(this + 10) + 34112), v10);
  if ((a3 - 120) <= 0x3E)
  {
    v8 = (this + 12 * (a3 - 120) + 19740);
    *v8 = a3;
    v9 = a4;
    v8[1] = v9;
  }

  return result;
}

uint64_t *BlueFin::GlPeTimeManager::GetTime@<X0>(uint64_t *__return_ptr a1@<X8>, BlueFin::GlPeTimeManager *this@<X0>, const BlueFin::GlGlnsTime *a3@<X1>, int a4@<W2>)
{
  v10 = 0.0;
  v9 = *(a3 + 1);
  BlueFin::GlPeTimeManager::dateTimeToLms(this, 1, &v9, &v10);
  v7 = v10;

  return BlueFin::GlPeTimeManager::commonGnssToLms(this, v7, a4, a1);
}

BOOL BlueFin::GlPeAlmMgr::SetAsstAlm(uint64_t a1, unsigned __int16 *a2, int a3)
{
  v14 = &off_2A1F0E430;
  v15 = 0;
  if (BlueFin::GlPeTimeManager::TimeKnown(*(a1 + 448), 1, 0x3938700u))
  {
    BlueFin::GlPeTimeManager::GetTime(*(a1 + 448), 1, v11);
    v12 = &off_2A1F0E430;
    v13 = 0;
    BlueFin::GlPeGnssTime::GetGlns(v11, &v12);
    v7.i64[0] = v13;
  }

  else
  {
    v8 = *(a1 + 448);
    if (*(v8 + 248) != 1)
    {
      return 0;
    }

    BlueFin::GlGlnsTime::GlGlnsTime(v11, *(v8 + 249), *(v8 + 250), 0.0);
    v7.i64[0] = v11[0].n128_i64[1];
  }

  v15 = v7.i64[0];
  if (a3)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  return BlueFin::GlPeAlmMgr::ApplyDecodedGlonassAlmanac(a1, &v14, a2, v9, v7, v6);
}

BOOL BlueFin::GlPeAlmMgr::SetAsstAlm(BlueFin::GlPeTimeManager **a1, unsigned __int8 *a2, unsigned int a3, double a4, double a5, int8x16_t a6, int8x16_t a7)
{
  v7.i64[1] = 0;
  v68 = 0u;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v70 = -1;
  v71 = 0;
  v72 = 5;
  v8 = *a2;
  v9 = v8 + 1;
  v73 = v8 + 1;
  if (v8 >= 0x24)
  {
    v47 = "IS_GALILEO_GNSSID(ucGnssId)";
    DeviceFaultNotify("glpe_almmgr.cpp", 495, "Import", "IS_GALILEO_GNSSID(ucGnssId)");
    v48 = "glpe_almmgr.cpp";
    v49 = 495;
    goto LABEL_39;
  }

  v11 = *(a2 + 5) * 0.001953125 + 5440.7074;
  v12 = *(a2 + 2);
  *v7.i64 = v11 * v11;
  v13 = v11 >= 8192.0;
  if (v11 * v11 < 7078137.0)
  {
    v13 = 1;
  }

  v14 = *(a2 + 9);
  if (v12 > 0x3FF || v13 || (v14 - 4096) < 0xE000u)
  {
    if (v12 <= 0x3FF)
    {
      v40 = "";
    }

    else
    {
      v40 = "toa ";
    }

    if (v13)
    {
      v41 = "Asqrt ";
    }

    else
    {
      v41 = "";
    }

    if ((v14 - 4096) >= 0xE000u)
    {
      v42 = "";
    }

    else
    {
      v42 = "a_f1 ";
    }

    GlCustomLog(14, "Reject GAL Alm %d [ %s%s%s%s%s%s%s%s]\n", v9, "", v40, v41, "", "", "", "", v42);
    return 0;
  }

  v17 = 4 * (a3 != 0);
  v62[0] = v9;
  v18 = a2[22] & 3;
  v69 = a2[22] & 3;
  v62[1] = a2[23];
  v7.i16[0] = *(a2 + 1);
  v63 = v7.u64[0] * 0.0000152587891 + 0.0;
  *v7.i64 = v12 * 600.0;
  *a7.i64 = *v7.i64 + trunc(*v7.i64 * 2.32830644e-10) * -4294967300.0;
  v19.f64[0] = NAN;
  v19.f64[1] = NAN;
  v20 = vnegq_f64(v19);
  a7.i64[0] = vbslq_s8(v20, a7, v7).u64[0];
  if (*v7.i64 > 4294967300.0)
  {
    v7.i64[0] = a7.i64[0];
  }

  if (*v7.i64 < -4294967300.0)
  {
    *a6.i64 = -*v7.i64;
    *v7.i64 = -(*v7.i64 - trunc(*v7.i64 * -2.32830644e-10) * -4294967300.0);
    *v7.i64 = -*vbslq_s8(v20, v7, a6).i64;
  }

  if (*v7.i64 < 0.0)
  {
    v21 = --*v7.i64;
  }

  else
  {
    v21 = *v7.i64;
  }

  v64 = v21;
  *v22.i64 = BlueFin::GlPeAlmanac::deltaI_semicircles_to_i0_rad(v62, vcvtd_n_f64_s32(*(a2 + 3), 0xEuLL));
  *v23.i64 = *(a2 + 4) * 3.6572952e-10;
  *&v65 = v22.i64[0];
  *(&v65 + 1) = v23.i64[0];
  *v22.i64 = *(a2 + 6) * 0.0000958737992;
  *&v66 = v11;
  *(&v66 + 1) = v22.i64[0];
  *v23.i64 = *(a2 + 8) * 0.0000958737992;
  v24 = vcvtd_n_f64_s32(*(a2 + 10), 0x13uLL);
  *&v67 = *(a2 + 7) * 0.0000958737992;
  *(&v67 + 1) = v23.i64[0];
  *&v68 = v24;
  *(&v68 + 1) = v14 * 3.63797881e-12;
  v70 = v17;
  v71 = 0;
  v60 = &off_2A1F0B5F0;
  v61 = 0;
  v25 = a1[56];
  v26 = *(v25 + 644);
  v27 = v26 != 0;
  if (v26)
  {
    *v22.i64 = v21;
    v57 = &off_2A1F0E480;
    *v23.i64 = v21 - trunc(v21);
    v28.f64[0] = NAN;
    v28.f64[1] = NAN;
    v29 = vbslq_s8(vnegq_f64(v28), v23, v22);
    if (*v29.i64 < 1.0)
    {
      v30 = *v29.i64 * 4294967300.0 + 0.5;
      if (v30 >= 4294967300.0)
      {
        v31 = -1;
      }

      else
      {
        v31 = v30;
      }

      v58 = v31;
      v59 = v21 + 604800 * v18 + 619315200;
      v56 = 0;
      v57 = &off_2A1F0E480;
      v55 = &off_2A1F0E480;
      if (a3)
      {
        *v29.i64 = (a3 % 0x93A80);
        v53 = &off_2A1F0B5F0;
        *v23.i64 = *v29.i64 - trunc(*v29.i64);
        v32.f64[0] = NAN;
        v32.f64[1] = NAN;
        v29.i64[0] = vbslq_s8(vnegq_f64(v32), v23, v29).i64[0];
        if (*v29.i64 >= 1.0)
        {
          DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
        }

        v33 = *v29.i64 * 4294967300.0 + 0.5;
        v34 = v33;
        if (v33 >= 4294967300.0)
        {
          v34 = -1;
        }

        v54 = __PAIR64__(a3, v34);
        v53 = &off_2A1F0B5F0;
        BlueFin::GlPeTimeManager::GetTime(v25, &v53, 1, v50);
        v51 = &off_2A1F0E480;
        v52 = 0;
        Gal = BlueFin::GlPeGnssTime::GetGal(v50, &v51);
        v36 = (v57[4])(&v57, Gal);
        v75 = v58;
        v76 = v36;
        v37 = (v51[4])(&v51);
        v74[0] = v52;
        v74[1] = v37;
        BlueFin::GlTimePoint::resolveAmbiguity(&v75, v74, 0x24EA00u);
        v38 = (v51[3])(&v51, v76);
        v39 = v75;
      }

      else
      {
        BlueFin::GlPeTimeManager::GetTime(v25, 1, v50);
        v53 = &off_2A1F0E480;
        v54 = 0;
        v43 = BlueFin::GlPeGnssTime::GetGal(v50, &v53);
        v44 = (v57[4])(&v57, v43);
        v51 = __PAIR64__(v44, v58);
        v45 = (v53[4])(&v53);
        v75 = v54;
        v76 = v45;
        BlueFin::GlTimePoint::resolveAmbiguity(&v51, &v75, 0x24EA00u);
        v38 = (v53[3])(&v53, HIDWORD(v51));
        v39 = v51;
      }

      v56 = __PAIR64__(v38, v39);
      BlueFin::GlPeTimeManager::GetTime(v50, a1[56], &v55, 1);
      v53 = &off_2A1F0B5F0;
      v54 = 0;
      BlueFin::GlPeGnssTime::GetGps(v50, &v53);
      v61 = v54;
      v69 = ((v60[4])(&v60) / 0x93A80);
      v64 = (v60[4])(&v60) % 0x93A80;
      BlueFin::GlPeAlmMgr::SetAsstAlm(a1, v62);
      return v27;
    }

    v47 = "dFracSec >= 0.0 && dFracSec < 1.0";
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    v48 = "glpe_timepoint.h";
    v49 = 173;
LABEL_39:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v48, v49, v47);
  }

  return v27;
}

int8x16_t BlueFin::GlPeLtoMgr::UpdateBdsAlmanac(uint64_t a1, unsigned __int8 *a2, int8x16_t result, double a4, int8x16_t a5, int8x16_t a6, double a7, int8x16_t a8)
{
  if (*(*(a1 + 88) + 2576))
  {
    v40 = 7;
    v41 = 0;
    v30 = -65536;
    v31 = 0;
    v32 = 0;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
    v38 = -1;
    v39 = 0;
    if (BlueFin::GlPeAlmanac::Import(&v30, a2, 4, 4, 0, a4, a5, a6, a7, a8))
    {
      *result.i64 = v32;
      v27 = &off_2A1F0E4D0;
      *v10.i64 = v32 - trunc(v32);
      v11.f64[0] = NAN;
      v11.f64[1] = NAN;
      result.i64[0] = vbslq_s8(vnegq_f64(v11), v10, result).i64[0];
      if (*result.i64 >= 1.0)
      {
        DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
      }

      v12 = *result.i64 * 4294967300.0 + 0.5;
      v13 = v12;
      if (v12 >= 4294967300.0)
      {
        v13 = -1;
      }

      v28 = v13;
      v29 = v32 + 604800 * v37 + 820108814;
      v27 = &off_2A1F0E4D0;
      BlueFin::GlPeTimeManager::GetTime(*(a1 + 88), 1, v21);
      v22 = &off_2A1F0E4D0;
      v23 = 0;
      Bds = BlueFin::GlPeGnssTime::GetBds(v21, &v22);
      v15 = (v27[4])(&v27, Bds);
      v43 = v28;
      v44 = v15;
      v16 = (v22[4])(&v22);
      v42[0] = v23;
      v42[1] = v16;
      BlueFin::GlTimePoint::resolveAmbiguity(&v43, v42, 0x93A8000u);
      v17 = (v22[3])(&v22, v44);
      v25 = v43;
      v26 = v17;
      v24 = &off_2A1F0E4D0;
      BlueFin::GlPeTimeManager::GetTime(v21, *(a1 + 88), &v24, 1);
      v22 = &off_2A1F0B5F0;
      v23 = 0;
      Gps = BlueFin::GlPeGnssTime::GetGps(v21, &v22);
      v37 = ((v22[4])(&v22, Gps) / 0x93A80);
      v32 = (v22[4])(&v22) % 0x93A80;
      BlueFin::GlPeAlmMgr::SetAsstAlm((*(a1 + 80) + 34112), &v30);
      if (*a2 <= 0x3EuLL)
      {
        v19 = a1 + 36 * *a2;
        v20 = *(a2 + 8);
        result = *a2;
        *(v19 + 16624) = *(a2 + 1);
        *(v19 + 16608) = result;
        *(v19 + 16640) = v20;
      }
    }
  }

  return result;
}

uint64_t *BlueFin::GlPeTimeManager::GetTime@<X0>(uint64_t *__return_ptr a1@<X8>, BlueFin::GlPeTimeManager *this@<X0>, const BlueFin::GlBdsTime *a3@<X1>, int a4@<W2>)
{
  v10 = 0.0;
  v9 = *(a3 + 1);
  BlueFin::GlPeTimeManager::dateTimeToLms(this, 4, &v9, &v10);
  v7 = v10;

  return BlueFin::GlPeTimeManager::commonGnssToLms(this, v7, a4, a1);
}

__n128 BlueFin::GlPeLtoMgr::UpdateQzssAlmanac(uint64_t a1, unsigned __int8 *a2, double a3, double a4, int8x16_t a5, int8x16_t a6, double a7, int8x16_t a8)
{
  v23 = 7;
  v24 = 0;
  v13 = -65536;
  v14 = 0;
  v15 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v21 = -1;
  v22 = 0;
  if (BlueFin::GlPeAlmanac::Import(&v13, a2, 3, 4, 0, a4, a5, a6, a7, a8))
  {
    BlueFin::GlPeAlmMgr::SetAsstAlm((*(a1 + 80) + 34112), &v13);
  }

  if (*a2 <= 0x3EuLL)
  {
    v11 = a1 + 36 * *a2;
    result = *a2;
    v12 = *(a2 + 1);
    *(v11 + 16280) = *(a2 + 8);
    *(v11 + 16248) = result;
    *(v11 + 16264) = v12;
  }

  return result;
}

__n128 BlueFin::GlPeLtoMgr::UpdateGpsAlmanac(uint64_t a1, unsigned __int8 *a2, double a3, double a4, int8x16_t a5, int8x16_t a6, double a7, int8x16_t a8)
{
  v23 = 7;
  v24 = 0;
  v13 = -65536;
  v14 = 0;
  v15 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v21 = -1;
  v22 = 0;
  if (BlueFin::GlPeAlmanac::Import(&v13, a2, 0, 4, 0, a4, a5, a6, a7, a8))
  {
    BlueFin::GlPeAlmMgr::SetAsstAlm((*(a1 + 80) + 34112), &v13);
  }

  if (*a2 <= 0x3EuLL)
  {
    v11 = a1 + 36 * *a2;
    result = *a2;
    v12 = *(a2 + 1);
    *(v11 + 14360) = *(a2 + 8);
    *(v11 + 14328) = result;
    *(v11 + 14344) = v12;
  }

  return result;
}

uint64_t BlueFin::GlPeAlmanac::Import(BlueFin::GlPeAlmanac *this, unsigned __int8 *a2, int a3, int a4, int8x16_t a5, double a6, int8x16_t a7, int8x16_t a8, double a9, int8x16_t a10)
{
  v12 = 0;
  v13 = 7078137;
  *(this + 26) = a3;
  v14 = *a2;
  *(this + 108) = v14 + 1;
  v15 = 10000;
  if (a3 >= 3)
  {
    if (a3 > 3)
    {
      if (a3 == 4)
      {
        if (v14 <= 0x3E)
        {
          *this = (v14 + 1);
          a5.i16[0] = *(a2 + 1);
          *a5.i64 = a5.u64[0] * 0.000000476837158 + 0.0;
          v16 = *a5.i64 <= 0.0625 && *a5.i64 >= 0.0;
          v15 = 0x2000;
          v12 = 1;
          goto LABEL_27;
        }

        return 0;
      }

      if (a3 == 5)
      {
        DeviceFaultNotify("glpe_almmgr.cpp", 429, "Import", "0");
        v18 = 429;
      }

      else
      {
        v16 = 0;
        if (a3 != 6)
        {
          goto LABEL_27;
        }

        DeviceFaultNotify("glpe_almmgr.cpp", 434, "Import", "0");
        v18 = 434;
      }

LABEL_81:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_almmgr.cpp", v18, "0");
    }

    if (v14 > 9)
    {
      return 0;
    }

    goto LABEL_14;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      v16 = 0;
      if (a3 != 2)
      {
        goto LABEL_27;
      }

      DeviceFaultNotify("glpe_almmgr.cpp", 394, "Import", "0");
      v18 = 394;
      goto LABEL_81;
    }

    if (v14 > 0x12)
    {
      return 0;
    }

LABEL_14:
    *this = (v14 - 63);
    v15 = 10000;
    v12 = 1;
    v16 = 1;
    goto LABEL_27;
  }

  if (v14 > 0x1F)
  {
    return 0;
  }

  v13 = 6400900;
  *this = (v14 + 1);
  a5.i16[0] = *(a2 + 1);
  *a5.i64 = a5.u64[0] * 0.000000476837158 + 0.0;
  v16 = *a5.i64 <= 0.03 && *a5.i64 >= 0.0;
  v17 = *(a2 + 4) * 1.14290475e-11;
  v12 = v17 >= -0.00000198862815 && v17 <= 0.0;
  v15 = 0x2000;
LABEL_27:
  *a10.i64 = vcvtd_n_f64_u32(*(a2 + 3), 0xBuLL);
  *a5.i64 = *a10.i64 + trunc(*a10.i64 * 2.32830644e-10) * -4294967300.0;
  v19.f64[0] = NAN;
  v19.f64[1] = NAN;
  v20 = vnegq_f64(v19);
  v21 = vbslq_s8(v20, a5, a10);
  if (*a10.i64 <= 4294967300.0)
  {
    v21.i64[0] = a10.i64[0];
  }

  if (*v21.i64 < -4294967300.0)
  {
    *a7.i64 = -*v21.i64;
    *v21.i64 = -(*v21.i64 - trunc(*v21.i64 * -2.32830644e-10) * -4294967300.0);
    v21 = vbslq_s8(v20, v21, a7);
    *v21.i64 = -*v21.i64;
  }

  if (*v21.i64 < 0.0)
  {
    v22 = --*v21.i64;
  }

  else
  {
    v22 = *v21.i64;
  }

  v23 = v22 + 1;
  v24 = a2[4];
  v26 = v23 > v15 || v13 > v23 * v23;
  v27 = *(a2 + 2);
  v28 = (v27 - 0x800000) >> 24;
  v29 = (HIDWORD(v27) - 0x800000) >> 24;
  v30 = *(a2 + 6);
  v31 = *(a2 + 15);
  v32 = *(a2 + 14);
  v33 = (v30 - 0x800000) >> 24;
  v34 = (v31 - 1024) >> 11;
  v35 = (v32 - 1024) >> 11;
  if (v24 > 0x93 || v28 != 255 || v29 != 255 || v26 || (v30 - 0x800000) >> 24 != 255 || v34 < 0x1F || v35 < 0x1F || !v16 || !v12)
  {
    if ((a2[4] > 0x93u || v28 != 255 || (HIDWORD(v27) - 0x800000) >> 24 != 255 || v26) && a2[4] > 0x93u)
    {
      v47 = "toa ";
    }

    else
    {
      v47 = "";
    }

    v61 = v47;
    v48 = v12;
    v49 = v16;
    v50 = BlueFin::GNSS2STR(a3);
    v51 = "Asqrt ";
    if (!v26)
    {
      v51 = "";
    }

    v52 = "omega0 ";
    if (v28 >= 0xFF)
    {
      v52 = "";
    }

    v53 = "omega ";
    if (v29 >= 0xFF)
    {
      v53 = "";
    }

    v54 = "M0 ";
    if (v33 >= 0xFF)
    {
      v54 = "";
    }

    v55 = "a_f0 ";
    if (v34 >= 0x1F)
    {
      v55 = "";
    }

    v56 = "a_f1 ";
    if (v35 >= 0x1F)
    {
      v56 = "";
    }

    v57 = "e ";
    if (v49)
    {
      v57 = "";
    }

    v58 = "omega_dot ";
    if (v48)
    {
      v58 = "";
    }

    GlCustomLog(14, "Reject Alm %s %d [ %s%s%s%s%s%s%s%s%s]\n", v50, *(this + 108), v61, v51, v52, v53, v54, v55, v56, v57, v58);
    return 0;
  }

  *(this + 44) = a2[32];
  *(this + 1) = *(a2 + 17);
  v21.i16[0] = *(a2 + 1);
  *v21.i64 = v21.u64[0];
  v36 = 0.06;
  if (v14 - 5 < 5)
  {
    v36 = 0.0;
  }

  if (a3 != 3)
  {
    v36 = 0.0;
  }

  *(this + 1) = v36 + *v21.i64 * 0.000000476837158;
  *v21.i64 = v24 * 4096.0;
  *a8.i64 = *v21.i64 + trunc(*v21.i64 * 2.32830644e-10) * -4294967300.0;
  v37.f64[0] = NAN;
  v37.f64[1] = NAN;
  v38 = vnegq_f64(v37);
  a8.i64[0] = vbslq_s8(v38, a8, v21).u64[0];
  if (*v21.i64 > 4294967300.0)
  {
    v21.i64[0] = a8.i64[0];
  }

  v60 = a10.i64[0];
  v59 = v27;
  v39 = v32;
  if (*v21.i64 < -4294967300.0)
  {
    *a7.i64 = -*v21.i64;
    *v21.i64 = -(*v21.i64 - trunc(*v21.i64 * -2.32830644e-10) * -4294967300.0);
    *v21.i64 = -*vbslq_s8(v38, v21, a7).i64;
  }

  if (*v21.i64 < 0.0)
  {
    v41 = --*v21.i64;
  }

  else
  {
    v41 = *v21.i64;
  }

  *(this + 4) = v41;
  v42 = BlueFin::GlPeAlmanac::deltaI_semicircles_to_i0_rad(this, vcvtd_n_f64_s32(*(a2 + 3), 0x13uLL));
  v43.i64[0] = v59;
  v43.i64[1] = SHIDWORD(v59);
  v44.f64[0] = v30;
  v45 = *(a2 + 4) * 1.14290475e-11;
  *(this + 3) = v42;
  *(this + 4) = v45;
  *(this + 5) = v60;
  v44.f64[1] = v31;
  *(this + 3) = vmulq_f64(vcvtq_f64_s64(v43), vdupq_n_s64(0x3E9921FB54442D19uLL));
  *(this + 4) = vmulq_f64(v44, xmmword_298A3B2D0);
  *(this + 10) = v39 * 3.63797881e-12;
  *(this + 23) = a4;
  *(this + 96) = 0;
  return 1;
}

uint64_t BlueFin::GlPeLtoMgr::deserializeLtoSlice(BlueFin::GlPeLtoMgr *this, BlueFin::GlSysLogEntry *a2)
{
  v86 = *MEMORY[0x29EDCA608];
  if (*(a2 + 2) != 119)
  {
    goto LABEL_28;
  }

  v3 = (this + 1648);
  v78 = &unk_2A1F106E8;
  memset(v81, 0, 76);
  v4 = *(this + 412);
  if (v4 == 2)
  {
    goto LABEL_28;
  }

  if (v4 != 1)
  {
    if (v4)
    {
      goto LABEL_72;
    }

    v5 = BlueFin::GlPeLtoSliceInterface::Deserialize(&v78, a2);
    if (v79)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    if (v6 == 1)
    {
      if (HIDWORD(v79) < 6 && ((0x3Du >> SBYTE4(v79)) & 1) != 0)
      {
        v7 = v3 + qword_298A40708[HIDWORD(v79)];
        *(this + 207) = v7;
        if (v80)
        {
          v8 = BYTE4(v80);
          v9 = *(v7 + 2);
          v10 = v9 >= 7 ? 0 : 0xE243F0A181320uLL >> (8 * v9);
          if ((v10 & 0x3Fu) >= BYTE4(v80))
          {
            *v7 = v80;
            v7[4] = v8;
            v7[5] = 0;
            v11 = 1;
            *v3 = 1;
            goto LABEL_29;
          }
        }
      }

      else
      {
        *(this + 207) = 0;
      }
    }

    goto LABEL_28;
  }

  v12 = BlueFin::GlPeLtoSliceInterface::Deserialize(&v78, a2);
  if (v79 == 1)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if ((v13 & 1) == 0)
  {
    *(this + 412) = 0;
    v22 = *(this + 207);
    if (v22)
    {
      BlueFin::GlPeLtoSlice::Clear(v22);
    }

    goto LABEL_28;
  }

  v14 = *(this + 207);
  if (!v14 || (v15 = *(v14 + 5), v16 = *(v14 + 4), v15 >= v16))
  {
LABEL_28:
    v11 = 0;
    goto LABEL_29;
  }

  v17 = *(v14 + 16) + 76 * *(v14 + 5);
  if (v17 == v81)
  {
    v21 = *(this + 207);
  }

  else
  {
    *v17 = *v81;
    v18 = *&v81[16];
    v19 = *&v81[32];
    v20 = *&v81[48];
    *(v17 + 60) = *&v81[60];
    *(v17 + 32) = v19;
    *(v17 + 48) = v20;
    *(v17 + 16) = v18;
    LOBYTE(v15) = *(v14 + 5);
    v21 = *(this + 207);
    v16 = *(v21 + 4);
  }

  *(v14 + 5) = v15 + 1;
  if (*(v21 + 5) < v16)
  {
    goto LABEL_72;
  }

  *(this + 207) = 0;
  *(this + 412) = 0;
  BlueFin::GlPeTimeManager::GetTime(*(this + 11), 1, v82);
  v78 = &off_2A1F0B5F0;
  v79 = 0;
  Gps = BlueFin::GlPeGnssTime::GetGps(v82, &v78);
  v30 = (v78[4])(&v78, Gps);
  LODWORD(v29) = v79;
  *v30.i64 = v29 * 2.32830644e-10 + v28;
  *v31.i64 = *v30.i64 + trunc(*v30.i64 * 2.32830644e-10) * -4294967300.0;
  v32.f64[0] = NAN;
  v32.f64[1] = NAN;
  v33 = vnegq_f64(v32);
  *&v34 = vbslq_s8(v33, v31, v30).u64[0];
  if (*v30.i64 > 4294967300.0)
  {
    *v30.i64 = v34;
  }

  if (*v30.i64 < -4294967300.0)
  {
    *v27.i64 = -*v30.i64;
    *v30.i64 = -(*v30.i64 - trunc(*v30.i64 * -2.32830644e-10) * -4294967300.0);
    *v30.i64 = -*vbslq_s8(v33, v30, v27).i64;
  }

  if (*v30.i64 < 0.0)
  {
    v35 = --*v30.i64;
  }

  else
  {
    v35 = *v30.i64;
  }

  v36 = v21[2];
  LOBYTE(v79) = (16 * v36) | 2;
  BYTE1(v79) = 19;
  v80 = &v81[8];
  *v81 = vdup_n_s32(0xFF9222FF);
  memset(&v81[8], 0, 76);
  v78 = &unk_2A1F0F470;
  v37 = *v21;
  if (!*(v21 + 4))
  {
    *(this + v36 + 240) = v37;
    v67 = *v21;
    goto LABEL_69;
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  v69 = v35 - v37;
  v70 = v35;
  v41.f64[0] = NAN;
  v41.f64[1] = NAN;
  v68 = vnegq_f64(v41);
  do
  {
    v42 = BYTE1(v79);
    if (BYTE1(v79))
    {
      v43 = v80;
      v44 = (*(v21 + 2) + v38);
      do
      {
        v45 = *v44++;
        *v43++ = v45;
        --v42;
      }

      while (v42);
    }

    v46 = v36;
    v47 = v36 == 0;
    v48 = v79;
    (v78[17])(v77, &v78);
    v76 = v48 >> 4;
    CmpUnsignedField = BlueFin::GlPeGpsEphemerisBase::GetCmpUnsignedField(&v78, 28);
    v50 = (v78[24])(&v78, 18);
    v51 = (v78[29])(&v78, 18);
    updated = BlueFin::GlPeLtoMgr::UpdateEphemeris(this, &v78, v47, v70, v69);
    v53 = v51 * v50;
    if (updated)
    {
      BlueFin::GlGnssSet::Remove(this + 26496, &v76);
      AbbrevGnssName = BlueFin::GlGnss::GetAbbrevGnssName(v76);
      GlCustomLog(14, "LtoMgr: read LTO (%s %d) from NVMEM! Trunc Wn: %d Toe: %ds\n", AbbrevGnssName, v77[0], CmpUnsignedField, v51 * v50);
      goto LABEL_60;
    }

    v57 = BlueFin::GlPeEphemeris::TimeToExpirationS(&v78, v82);
    if (v76 == 5 && (v77[0] == 18 || v77[0] == 14))
    {
      if (BlueFin::GlPeLtoEphemeris::GetCurveFitIntervalS(&v78) >> 5 <= 0x2A2 || v57 != 0)
      {
        goto LABEL_58;
      }
    }

    else if (v57)
    {
LABEL_58:
      v58 = 70;
      goto LABEL_59;
    }

    BlueFin::GlGnssSet::Add(this + 26496, &v76);
    v58 = 84;
LABEL_59:
    v59 = BlueFin::GlGnss::GetAbbrevGnssName(v76);
    GlCustomLog(14, "LtoMgr: read LTO (%s %d) from NVMEM, but rejected by EphMgr! Exp: %c\n", v59, v77[0], v58);
LABEL_60:
    if (!v40)
    {
      *v55.i64 = v53;
      v73 = &off_2A1F0B5F0;
      *v56.i64 = v53 - trunc(v53);
      v55.i64[0] = vbslq_s8(v68, v56, v55).i64[0];
      if (*v55.i64 >= 1.0)
      {
        DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
      }

      v60 = *v55.i64 * 4294967300.0 + 0.5;
      v61 = v60;
      if (v60 >= 4294967300.0)
      {
        v61 = -1;
      }

      v74 = v61;
      v75 = v53 + 604800 * CmpUnsignedField;
      v72 = 0;
      v73 = &off_2A1F0B5F0;
      v71 = &off_2A1F0B5F0;
      v62 = BlueFin::GlPeGnssTime::GetGps(v82, &v71);
      v63 = (v73[4])(&v73, v62);
      v84 = v74;
      v85 = v63;
      v64 = (v71[4])(&v71);
      v83[0] = v72;
      v83[1] = v64;
      BlueFin::GlTimePoint::resolveAmbiguity(&v84, v83, 0x24EA0000u);
      v65 = (v71[3])(&v71, v85);
      v65.n128_u32[0] = v84;
      v40 = (v65.n128_u64[0] * 2.32830644e-10 + v66);
    }

    BlueFin::GlGnssSet::Add(this + 1216, &v76);
    ++v39;
    v38 += 76;
    v36 = v46;
  }

  while (v39 < *(v21 + 4));
  v36 = v21[2];
  v67 = *v21;
  *(this + v36 + 240) = *v21;
  if (!v40)
  {
LABEL_69:
    v40 = v67 + 10800;
  }

  if (*(this + v36 + 247) < v40)
  {
    *(this + v36 + 247) = v40;
  }

LABEL_72:
  v11 = 1;
LABEL_29:
  v23 = (this + 26443);
  if (*(this + 26443) != 0 && (*v23 != *(this + 200) || *(this + 26451) != *(this + 201)))
  {
    BlueFin::GlPeLtoMgr::SetLtoDigest(this, v23, 0);
    BlueFin::GlPeLtoMgr::UpdateDigest(this);
    *(this + 410) = *(this + 6615);
  }

  return v11;
}

uint64_t BlueFin::GlGnssSet::Remove(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 > 6 || (v4 = *(a2 + 4), (v4 - 1) >= 0x3F))
  {
    DeviceFaultNotify("glgnss.cpp", 279, "Remove", "rtGnss.isValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.cpp", 279, "rtGnss.isValid()");
  }

  v5 = *(a1 + 168) + 24 * v3;

  return BlueFin::GlSetBase::Remove(v5, v4);
}

BOOL BlueFin::GlPeGloEphMgr::processCandidateEphemeris(BlueFin::GlPeGloEphMgr *this, const BlueFin::GlPeEphemeris *a2, char a3)
{
  v5 = BlueFin::GlPeEphemerisMgr::processCandidateEphemeris(this, a2, a3);
  if (v5 && *(this + 68))
  {
    (*(*a2 + 136))(&v12, a2);
    v6 = v12;
    v7 = *(a2 + 8) & 0xF;
    if (v7 == 1)
    {
      v8 = 4;
    }

    else
    {
      if (v7 != 2 || !(*(*a2 + 192))(a2, 35))
      {
        return v5;
      }

      v8 = 36;
    }

    v9 = (*(*a2 + 208))(a2, v8);
    if (v9 != 248)
    {
      v10 = *(this + 68);
      *(v10 + 20 * v9 + 572) = -7200001;
      *(v10 + 16 * v6 + 700) = -7200001;
    }
  }

  return v5;
}

uint64_t BlueFin::GlPeLtoEphemeris::GetOrbitType(BlueFin::GlPeLtoEphemeris *this)
{
  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(this, 22);
  if (BlueFin::GlPeEphemeris::GetScaledFloatingField(this, 17) <= 6000.0)
  {
    return 2;
  }

  else
  {
    return ScaledFloatingField > 0.314159265;
  }
}

uint64_t BlueFin::GlPeEphemerisMgr::CompareLtoBeGeometricRange(uint64_t a1, unsigned __int8 *a2, double *a3, double *a4)
{
  v19 = 0;
  if (!BlueFin::GlPeLtoMgr::GetLtoDataAgeS(*(a1 + 32), *(a1 + 12), *(*(a1 + 16) + 2568), &v19) || v19 < 604800)
  {
    return 2;
  }

  v9 = *(a1 + 24);
  if (*(v9 + 44) == -1)
  {
    return 2;
  }

  v10 = *(v9 + 88);
  v11 = *(v9 + 96);
  v12 = *(v9 + 104);
  v13 = ((v19 / 0xA8C0u) & 0x1FFFE);
  v14 = vabdd_f64(sqrt((a3[1] - v11) * (a3[1] - v11) + (*a3 - v10) * (*a3 - v10) + (a3[2] - v12) * (a3[2] - v12)), sqrt((a4[1] - v11) * (a4[1] - v11) + (*a4 - v10) * (*a4 - v10) + (a4[2] - v12) * (a4[2] - v12)));
  v15 = v14 >= v13;
  if (v14 < v13)
  {
    v16 = "<";
  }

  else
  {
    v16 = ">=";
  }

  v17 = BlueFin::GNSS2STR(*(a1 + 12));
  GlCustomLog(14, "CompareLtoBEGeoRng(%s,%d): deltaRng:%.1f m %s %.1f m\n", v17, *a2, v14, v16, v13);
  return v15;
}

uint64_t BlueFin::GlPeEphemerisMgr::validateLtoWithBE(BlueFin::GlPeEphemerisMgr *this, const BlueFin::GlPeEphemeris *a2, const BlueFin::GlPeEphemeris *a3)
{
  v6 = (*(*a2 + 144))(a2);
  v7 = (*(*a3 + 144))(a3);
  if ((v6 == 2) == (v7 == 2))
  {
    v15 = "bEphA_is_LTO != bEphB_is_LTO";
    DeviceFaultNotify("glpe_ephmgr.cpp", 2238, "validateLtoWithBE", "bEphA_is_LTO != bEphB_is_LTO");
    v16 = 2238;
    goto LABEL_37;
  }

  v8 = v7;
  if (v6 == 2)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
  }

  if (v7 == 2)
  {
    v10 = a2;
  }

  else
  {
    v10 = a3;
  }

  if ((*(v10 + 8) & 0xF) != 1)
  {
    v15 = "rotBE.GetFormat() == GlPeEphemeris::FORMAT_NATIVE";
    DeviceFaultNotify("glpe_ephmgr.cpp", 2243, "validateLtoWithBE", "rotBE.GetFormat() == GlPeEphemeris::FORMAT_NATIVE");
    v16 = 2243;
LABEL_37:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", v16, v15);
  }

  result = (*(*v9 + 40))(v9);
  if (!result)
  {
    return result;
  }

  result = (*(*v10 + 40))(v10);
  if (!result || (*(v10 + 8) & 0xF0) == 0x20 && *(*(this + 2) + 2589))
  {
    return result;
  }

  (*(*v9 + 136))(&v28 + 1, v9);
  result = (*(*v10 + 136))(&v28, v10);
  if (BYTE1(v28) != v28)
  {
    return result;
  }

  BlueFin::GlPeTimeManager::GetTime(*(this + 2), 1, v27);
  result = BlueFin::GlPeEphemeris::isExpired(v10, v27);
  if (result)
  {
    return result;
  }

  result = BlueFin::GlPeEphemeris::isExpired(v9, v27);
  if (result)
  {
    return result;
  }

  if (v6 == 2)
  {
    result = (*(*a3 + 184))(a3);
    if (!result)
    {
      return result;
    }
  }

  if (v8 == 2)
  {
    result = (*(*a2 + 184))(a2);
    if (!result)
    {
      return result;
    }
  }

  v26 = 0;
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  v23 = 0;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  result = (*(*v10 + 112))(v10, v27, v21, 0.0);
  if (!result)
  {
    return result;
  }

  result = (*(*v9 + 112))(v9, v27, v24, 0.0);
  if (!result)
  {
    return result;
  }

  v12 = (*(*this + 400))(this, &v28 + 1, v24, v21);
  if (v12 != 1)
  {
    if (!v12)
    {
      BlueFin::GlPeLtoMgr::GetBadSvSet(*(this + 4), 0, v20, *(this + 3));
      if ((*(*v20 + ((BYTE1(v28) >> 3) & 0x1C)) >> (BYTE1(v28) & 0x1F)))
      {
        BlueFin::GlPeLtoMgr::RemoveSvFromBadSet(*(this + 4), *(this + 3), BYTE1(v28), 0);
        BlueFin::GNSS2STR(*(this + 3));
        GlCustomLog(14, "rehabilitate the suspected LTO(%s,%d)!\n");
      }
    }

    goto LABEL_40;
  }

  BlueFin::GlPeLtoMgr::GetBadSvSet(*(this + 4), 1, v20, *(this + 3));
  if (((*(*v20 + ((BYTE1(v28) >> 3) & 0x1C)) >> (BYTE1(v28) & 0x1F)) & 1) == 0)
  {
    v13 = *(this + 4);
    v14 = *(this + 3);
    if ((*(v13 + 1636) & 4) != 0)
    {
      goto LABEL_30;
    }

    LOBYTE(v20[0]) = BYTE1(v28);
    BlueFin::GlGnssSet::Add(v13 + 576, v14, v20);
  }

  v14 = *(this + 3);
LABEL_30:
  if (v14 == 4)
  {
    (*(*this + 288))(this, &v28 + 1, 0);
    BlueFin::GNSS2STR(*(this + 3));
    GlCustomLog(14, "SuspectBE did not match Lto (%s,%d), mark Lto Bad, suspected bad decode BE.\n");
  }

  else
  {
    if ((*(*v10 + 184))(v10))
    {
      BlueFin::GNSS2STR(*(this + 3));
      GlCustomLog(14, "suspected Lto (%s,%d)\n");
    }

    else
    {
      BlueFin::GlGnssIdSet::Add(this + 48, &v28 + 1);
      BlueFin::GlGnssIdSet::Add(this + 54, &v28 + 1);
      BlueFin::GNSS2STR(*(this + 3));
      GlCustomLog(14, "SuspectBE did not match Lto (%s,%d), mark Lto Bad, requiring verification of BE.\n");
    }

    BlueFin::GlPeRangeAidGen::RemoveSvFromEph(*(this + 10), *(this + 3), BYTE1(v28));
  }

LABEL_40:
  result = (*(*this + 408))(this, &v28 + 1, v24, v21);
  if (result == 1)
  {
    BlueFin::GlPeLtoMgr::GetBadSvSet(*(this + 4), 1, v20, *(this + 3));
    if (((*(*v20 + ((BYTE1(v28) >> 3) & 0x1C)) >> (BYTE1(v28) & 0x1F)) & 1) == 0)
    {
      v17 = *(this + 4);
      if ((*(v17 + 1636) & 4) == 0)
      {
        v18 = *(this + 3);
        LOBYTE(v20[0]) = BYTE1(v28);
        BlueFin::GlGnssSet::Add(v17 + 576, v18, v20);
      }
    }

    v19 = BlueFin::GNSS2STR(*(this + 3));
    return GlCustomLog(14, "suspected Lto (%s,%d) because range exceeds limit\n", v19, BYTE1(v28));
  }

  return result;
}

BOOL BlueFin::GlPeEphemerisMgr::CompareLtoBEPos(uint64_t a1, unsigned __int8 *a2, double *a3, double *a4)
{
  v5 = a3[1] - a4[1];
  v6 = a3[2] - a4[2];
  v7 = v5 * v5 + (*a3 - *a4) * (*a3 - *a4) + v6 * v6;
  v8 = vabdd_f64(a3[6], a4[6]) * 299792458.0;
  v9 = v8 >= 70.0 || v7 >= 40000.0;
  v10 = BlueFin::GNSS2STR(*(a1 + 12));
  GlCustomLog(14, "CompareLtoBEPos(%s,%d): deltaPos:%.1f m  deltaClk:%.1f m\n", v10, *a2, sqrt(v7), v8);
  return v9;
}

uint64_t *BlueFin::GlPeLtoEphemeris::PutCmpUnsignedField(BlueFin::GlPeLtoEphemeris *this, signed int a2, unsigned int a3)
{
  v6 = *(this + 2);
  v7 = 4 * *(this + 9);
  v14 = 0;
  BlueFin::GlBitBuffer::Initialize(v13, v6, v7);
  if (a2 > 34)
  {
    if (a2 == 35)
    {
      v11 = 580;
LABEL_14:
      BlueFin::GlBitBuffer::Position(v13, v11);
      v8 = a3;
      v9 = 1;
      return BlueFin::GlBitBuffer::PutU(v13, v8, v9);
    }

    if (a2 != 36)
    {
      if (a2 == 37)
      {
        BlueFin::GlBitBuffer::Position(v13, 0x1DCu);
        v8 = a3;
        v9 = 23;
        return BlueFin::GlBitBuffer::PutU(v13, v8, v9);
      }

      return BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(this, a2, a3);
    }

    v10 = 581;
LABEL_16:
    BlueFin::GlBitBuffer::Position(v13, v10);
    v8 = a3;
    v9 = 4;
    return BlueFin::GlBitBuffer::PutU(v13, v8, v9);
  }

  if (a2 == 32)
  {
    v10 = 565;
    goto LABEL_16;
  }

  if (a2 == 33)
  {
    v11 = 569;
    goto LABEL_14;
  }

  if (a2 != 34)
  {
    return BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(this, a2, a3);
  }

  BlueFin::GlBitBuffer::Position(v13, 0x23Au);
  v8 = a3;
  v9 = 10;
  return BlueFin::GlBitBuffer::PutU(v13, v8, v9);
}

uint64_t BlueFin::GlPeClkCalibrateMgr::GetValidClkCalibrateParams(uint64_t a1, int a2, unsigned int a3)
{
  result = 0;
  v6 = a2;
  v7 = a3;
  if (!a2 && a3 - 1 <= 0x1F)
  {
    if (BlueFin::GlGnssSet::Has(a1 + 1152, &v6))
    {
      return *(a1 + 1120) + 32 * (a3 - 1);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeClkCalibrateMgr::ApplyClockCalibrationParameters(BlueFin::GlPeClkCalibrateMgr *this, BlueFin::GlPeLtoEphemeris *a2, unsigned int a3, unsigned int a4)
{
  v8 = *(a2 + 8) >> 4;
  (*(*a2 + 136))(&v49, a2);
  v52 = v8;
  v9 = v49;
  v53 = v49;
  ValidClkCalibrateParams = BlueFin::GlPeClkCalibrateMgr::GetValidClkCalibrateParams(this, v8, v49);
  if (!ValidClkCalibrateParams)
  {
    return 1;
  }

  *v11.i64 = (a3 % 0x93A80);
  v49 = &off_2A1F0B5F0;
  *v12.i64 = *v11.i64 - trunc(*v11.i64);
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = vnegq_f64(v14);
  v16 = vbslq_s8(v15, v12, v11);
  if (*v16.i64 >= 1.0)
  {
    goto LABEL_39;
  }

  v17 = ValidClkCalibrateParams;
  v18 = *v16.i64 * 4294967300.0 + 0.5;
  v19 = v18;
  if (v18 >= 4294967300.0)
  {
    v19 = -1;
  }

  v50 = v19;
  v51 = a3;
  v49 = &off_2A1F0B5F0;
  v20 = *(ValidClkCalibrateParams + 28);
  v21 = *(ValidClkCalibrateParams + 24);
  *v16.i64 = v21;
  *v13.i64 = v21 - trunc(v21);
  v22 = *vbslq_s8(v15, v13, v16).i64;
  if (v22 >= 1.0)
  {
LABEL_39:
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v23 = v22 * 4294967300.0 + 0.5;
  v24 = v23;
  if (v23 >= 4294967300.0)
  {
    v24 = -1;
  }

  LODWORD(v46) = v24;
  HIDWORD(v46) = v21 + 604800 * v20;
  v54[0] = v19;
  v54[1] = a3;
  BlueFin::GlTimePoint::resolveAmbiguity(&v46, v54, 0x24EA0000u);
  v28 = (v49[3])(&v49, HIDWORD(v46));
  v47 = v46;
  v48 = v26;
  v27 = v46;
  v46 = &off_2A1F0B5F0;
  *v28.i64 = v27 * 2.32830644e-10 + v26;
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
    *v25.i64 = -*v28.i64;
    *v28.i64 = -(*v28.i64 - trunc(*v28.i64 * -2.32830644e-10) * -4294967300.0);
    *v28.i64 = -*vbslq_s8(v31, v28, v25).i64;
  }

  if (*v28.i64 < 0.0)
  {
    v33 = --*v28.i64;
  }

  else
  {
    v33 = *v28.i64;
  }

  v34 = a3 - v33;
  if ((a3 - v33) > 604800)
  {
    return 2;
  }

  if (v34 > a4)
  {
    return 3;
  }

  if (v34 < -7200)
  {
    return 4;
  }

  if (a4 >> 8 < 0x2A3)
  {
    return 5;
  }

  v36 = (*(*a2 + 192))(a2, 4);
  result = 6;
  if (v36 >= 0xF)
  {
    v37 = 6;
  }

  else
  {
    v37 = 0;
  }

  if (v36 <= 0xE)
  {
    (*(*a2 + 224))(a2, 10, v17[4]);
    (*(*a2 + 224))(a2, 9, v17[5]);
    v38 = (v46[4])(&v46);
    (*(*a2 + 216))(a2, 34, v38 / 0x93A80uLL);
    v39 = v17[6];
    v40 = (*(*a2 + 232))(a2, 7);
    (*(*a2 + 216))(a2, 7, v39 / v40);
    (*(*a2 + 216))(a2, 33, 1);
    v41 = (v34 * 4.0) / 86400.0;
    if (v41 >= 0.0)
    {
      v43 = 0;
      while (BlueFin::GlPeGpsEphemerisBase::GetUraM(unsigned char)::afUraTbl[v43] < v41)
      {
        if (++v43 == 15)
        {
          LOBYTE(v43) = 2;
          break;
        }
      }

      if (v43 >= 6u)
      {
        v42 = 6;
      }

      else
      {
        v42 = v43;
      }
    }

    else
    {
      v42 = 2;
    }

    (*(*a2 + 216))(a2, 4, v42);
    BlueFin::GlGnssSet::Add(this + 1344, &v52);
    v44 = BlueFin::GNSS2STR(v8);
    v45 = (v46[4])(&v46);
    GlCustomLog(14, "ApplyCalibrationParameters LTO (%s,%d)(%d,%d)\n", v44, v9, v45 / 0x93A80, v17[6]);
    return v37;
  }

  return result;
}

uint64_t BlueFin::GlPeLtoFileContentStorageMgr::DeserializeLtoInfo(BlueFin::GlPeLtoFileContentStorageMgr *this, BlueFin::GlSysLogEntry *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v10 = 0uLL;
  v9 = &unk_2A1F10730;
  v3 = BlueFin::GlPeLtoInfoInterface::Deserialize(&v9, a2);
  if (v3)
  {
    v5 = &v7;
    v6 = 3;
    v7 = -1;
    v8 = -1;
    BlueFin::GlPeLtoFileContentStorageMgr::Clear(this, &v5);
    if ((this + 24795) != &v10)
    {
      *(this + 24795) = v10;
    }

    *(this + 6203) = v11;
  }

  return v3;
}

uint64_t BlueFin::GlPeLtoInfoInterface::Deserialize(BlueFin::GlPeLtoInfoInterface *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 120 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    BlueFin::GlSysLogEntry::GetBuffer(a2, this + 8, 0x10u);
    *(this + 6) = BlueFin::GlSysLogEntry::GetU32(a2);
    BlueFin::GlSysLogEntry::CheckConsumed(a2, 382);
  }

  return v3;
}

BlueFin::stTimeOfAsstPos *BlueFin::stTimeOfAsstPos::stTimeOfAsstPos(BlueFin::stTimeOfAsstPos *this, BlueFin::GlPeTimeManager *a2, const BlueFin::GlGpsTime *a3, unsigned int a4)
{
  *this = 0;
  *(this + 1) = 0xC15B773FC0000000;
  *(this + 2) = &off_2A1F0B5F0;
  *(this + 3) = 0;
  if ((*(*a3 + 32))(a3) < 0x93A80 || (v8 = (*(*a3 + 32))(a3), v9 = *(a3 + 2), v9 * 2.32830644e-10 + (v8 % 0x93A80) == 0.0))
  {
    *(this + 1) = 0;
    if ((*(*a3 + 32))(a3) < 0x93A80 && (v11 = (*(*a3 + 32))(a3), LODWORD(v12) = *(a3 + 2), v12 * 2.32830644e-10 + (v11 % 0x93A80) == 0.0) && (v13 = *(a2 + 642), v13 != -7200001))
    {
      v10 = v13;
      if (v13 <= 0xFF9222FE)
      {
        v10 = v13;
      }
    }

    else
    {
      v14 = (*(*a3 + 32))(a3);
      LODWORD(v15) = *(a3 + 2);
      v10 = *(this + 1) + (v15 * 2.32830644e-10 + v14) * 1000.0;
    }
  }

  else
  {
    if (!*(a2 + 644))
    {
      v17 = *(a3 + 3);
      *(this + 6) = v9;
      *(this + 7) = v17;
      *this = 1;
      v10 = *(this + 1);
      goto LABEL_10;
    }

    BlueFin::GlPeTimeManager::GetTime(a2, a3, 1, v18);
    v10 = *&v18[2];
  }

  *this = 2;
LABEL_10:
  *(this + 1) = v10 - (1000 * a4);
  return this;
}

uint64_t BlueFin::GlPeAsstPosData::Deserialize(BlueFin::GlPeAsstPosData *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 45)
  {
    return 0;
  }

  v3 = *(a2 + 12);
  if (v3 - 9 < 0xFFFFFFF8)
  {
    return 0;
  }

  if (v3 >= 7)
  {
    BlueFin::GlSysLogEntry::GetU32(a2);
  }

  *(this + 1) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 2) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 3) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 4) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 5) = BlueFin::GlSysLogEntry::GetD64(a2);
  S32 = BlueFin::GlSysLogEntry::GetS32(a2);
  U32 = BlueFin::GlSysLogEntry::GetU32(a2);
  if (BlueFin::GlSysLogEntry::GetU32(a2) - 1 <= 0x3FE)
  {
    v15 = "ulGpsWeekMod == 0 || ulGpsWeekMod >= 1024";
    DeviceFaultNotify("glpe_asstposmgr.cpp", 188, "Deserialize", "ulGpsWeekMod == 0 || ulGpsWeekMod >= 1024");
    v16 = "glpe_asstposmgr.cpp";
    v17 = 188;
    goto LABEL_23;
  }

  *v8.i64 = U32 * 0.001;
  *v9.i64 = *v8.i64 - trunc(*v8.i64);
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v9.i64[0] = vbslq_s8(vnegq_f64(v10), v9, v8).i64[0];
  if (*v9.i64 < 0.0 || *v9.i64 >= 1.0)
  {
    v15 = "dFracSec >= 0.0 && dFracSec < 1.0";
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    v16 = "glpe_timepoint.h";
    v17 = 173;
    goto LABEL_23;
  }

  v12 = *v9.i64 * 4294967300.0 + 0.5;
  v13 = v12;
  if (v12 >= 4294967300.0)
  {
    v13 = -1;
  }

  *(this + 14) = v13;
  *(this + 60) = *v8.i64 + 604800 * S32;
  if (*(a2 + 12) < 3u || (*(this + 16) = BlueFin::GlSysLogEntry::GetU16(a2), *(a2 + 12) <= 3u))
  {
    *(this + 17) = 1;
    *(this + 72) = 0;
  }

  else
  {
    *(this + 17) = BlueFin::GlSysLogEntry::GetU16(a2);
    v14 = *(a2 + 12);
    *(this + 72) = 0;
    if (v14 >= 8)
    {
      *(this + 72) = BlueFin::GlSysLogEntry::GetU16(a2) != 0;
    }
  }

  if (*(a2 + 11) != *(a2 + 10))
  {
    v15 = "otEntry.DataSize() == otEntry.ReadIdx()";
    DeviceFaultNotify("glpe_asstposmgr.cpp", 215, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    v16 = "glpe_asstposmgr.cpp";
    v17 = 215;
LABEL_23:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v16, v17, v15);
  }

  return 1;
}

uint64_t BlueFin::GlPeAsstPosMgr::Deserialize(BlueFin::GlPeTimeManager **this, BlueFin::GlSysLogEntry *a2, int a3, uint64_t a4)
{
  v4 = a4;
  v18 = &unk_2A1F0E928;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  v22 = &off_2A1F0B5F0;
  v23 = xmmword_298A3B550;
  v24 = 0;
  if ((BlueFin::GlPeAsstPosData::Deserialize(&v18, a2) & 1) == 0)
  {
    DeviceFaultNotify("glpe_asstposmgr.cpp", 601, "Deserialize", "otAsstPosData.Deserialize(rtEntry)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_asstposmgr.cpp", 601, "otAsstPosData.Deserialize(rtEntry)");
  }

  BlueFin::stTimeOfAsstPos::stTimeOfAsstPos(v17, this[37], &v22, 0);
  if (a3 && (*(this + 313) & 1) == 0)
  {
    GlCustomLog(14, "GlPeAsstPosMgr:: Calling addRandomPosError from Deserialize\n");
    v10 = &unk_2A1F0E928;
    v11 = v19;
    v12 = v20;
    v13 = v21;
    v14 = &off_2A1F0B5F0;
    v15 = v23;
    v16 = v24;
    return BlueFin::GlPeAsstPosMgr::addRandomPosError(this, &v10, v4, 1);
  }

  else
  {
    if (v4)
    {
      BlueFin::stTimeOfAsstPos::operator+=(v17, -v4);
      GlCustomLog(14, "GlPeAsstPosMgr::processAssistance - forced age %u seconds\n", v4);
    }

    return BlueFin::GlPeAsstPosMgr::processAssistance(this, &v19, SDWORD2(v23), SHIDWORD(v23), v17, 1, v24, v7, v8);
  }
}

BOOL BlueFin::GlPeReqBag::IsEnhancedEmergencyReqReallyExpiring(BlueFin::GlPeReqBag *this)
{
  v2 = 0;
  v14 = this + 3233;
  v15 = *(this + 3233);
  *(this + 3233) = 0;
  v3 = 1;
  do
  {
    v4 = *(this + v2);
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5[4] == 1)
      {
        if ((*(*v5 + 400))(v5))
        {
          v6 = *(this + v2);
          v7 = *(v6 + 36);
          v8 = *(v6 + 8);
          if (v7 == -1)
          {
            v12 = 1001;
          }

          else
          {
            v9 = *(v8 + 28);
            v10 = *(v6 + 32) + v7;
            v11 = v10 >= v9;
            v12 = v10 - v9 + 1000;
            if (!v11)
            {
              v12 = 1001;
            }
          }

          if (v12 > 1000 * *(v8 + 22))
          {
            break;
          }
        }
      }
    }

    v3 = v2++ < 0x47;
  }

  while (v2 != 72);
  *v14 = v15;
  return v3;
}

unsigned __int8 *BlueFin::GlPeComputeZRH::RecomputeIntegers(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v43 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v2;
  *&v90[5550] = *MEMORY[0x29EDCA608];
  result = BlueFin::GlPeMsmtMgr::Init_IntPr(*(v2 + 4320));
  v12 = *v9;
  if (!**v9)
  {
    v17 = v9[8];
    if (v17 < 2)
    {
      return result;
    }

    v18 = v17 - 1;
    v19 = v12 + 1;
    while (!*v19++)
    {
      if (!--v18)
      {
        return result;
      }
    }
  }

  v13 = &v89;
  v14 = 5600;
  do
  {
    *(v13 - 8) = 0;
    *(v13 - 1) = -1;
    *v13 = 575;
    v13 += 7;
    v14 -= 56;
  }

  while (v14);
  v83 = &v85;
  v15 = 4;
  v84 = 4;
  v85 = 0uLL;
  LODWORD(v68) = v9[8];
  memcpy(&v69, v12, 4 * v68);
  HIDWORD(v68) = v69;
  BlueFin::GlSetIterator::operator++(&v68);
  if (BYTE1(v68) == v68)
  {
    v16 = &v85;
  }

  else
  {
    v21 = v90;
    do
    {
      if (WORD1(v68) >= 0x23FuLL)
      {
        goto LABEL_42;
      }

      v22 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v68);
      v23 = *v22;
      LODWORD(v22) = v22[1];
      LOBYTE(v71) = v23;
      HIDWORD(v71) = v22;
      LOWORD(v72) = WORD1(v68);
      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*(v10 + 4320), &v71, 0);
      *(v21 - 50) = 0;
      *(v21 - 42) = 0;
      *(v21 - 30) = 0xFFFFFFFF00000000;
      *(v21 - 1) = 0;
      *v21 = 0;
      *(v21 - 18) = 0;
      *(v21 - 14) = -1;
      *(v21 - 5) = 575;
      *(v21 - 34) = v43;
      if (v21 - 18 != &v71)
      {
        *(v21 - 18) = v71;
        *(v21 - 14) = HIDWORD(v71);
        *(v21 - 5) = v72;
      }

      *(v21 - 50) = *(PeMeas + 24);
      *(v21 - 6) = 0;
      *(v21 - 22) = *(PeMeas + 92);
      v66 = &v67[4];
      v67[0] = 4;
      *&v67[4] = 0;
      *&v67[12] = 0;
      BlueFin::GlSetBase::OperatorLeftShift(&v83, &v66, 1u);
      BlueFin::GlSetBase::operator=(&v83, &v66);
      v85 = *&v67[4];
      v16 = v83;
      *v83 |= 1u;
      BlueFin::GlSetIterator::operator++(&v68);
      v21 += 56;
    }

    while (BYTE1(v68) != v68);
    v15 = v84;
  }

  v81[1] = 0x700000007;
  memset(v82, 0, 32);
  v82[3] = 0u;
  v81[0] = v82;
  v82[2] = v5;
  v25 = **(v10 + 4336);
  v71 = v81;
  v72 = v7;
  v73 = 0;
  v74 = v25;
  v75 = 0x400C900000001;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0x4008000000000000;
  v68 = v70;
  v69 = 0x6400000000;
  bzero(v70, 0x328uLL);
  v66 = &v67[8];
  *v67 = 0x6400000000;
  bzero(&v67[8], 0x328uLL);
  v62 = &v63;
  v63 = v65;
  v64 = 8;
  memset(v65, 0, 32);
  v58[0] = &v68;
  v58[1] = &v66;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v26 = BlueFin::GlSetBase::Cnt(v9);
  v27 = 0;
  v28 = (v16 + 4 * v15 - 4);
  do
  {
    if (*v28)
    {
      v29 = *v28 - (((*v28 >> 1) & 0x5B6DB6DB) + ((*v28 >> 2) & 0x9249249));
      v27 = ((v29 + (v29 >> 3)) & 0xC71C71C7) + v27 - 63 * (((v29 + (v29 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    v28 = (v28 - 4);
  }

  while (v28 >= v16);
  if (v26 != v27)
  {
    v40 = "rotSignalIdSet.Cnt() == otIndexSet.Cnt()";
    DeviceFaultNotify("glpe_computezrh.cpp", 2440, "RecomputeIntegers", "rotSignalIdSet.Cnt() == otIndexSet.Cnt()");
    v41 = "glpe_computezrh.cpp";
    v42 = 2440;
    goto LABEL_43;
  }

  if ((BlueFin::GlSetBase::Highest(&v83) & 0xFFFFFFFCuLL) >= 0x64)
  {
    v40 = "(GlIntU32)otIndexSet.Highest() < _DIM(aotSkfMeas)";
    DeviceFaultNotify("glpe_computezrh.cpp", 2441, "RecomputeIntegers", "(GlIntU32)otIndexSet.Highest() < _DIM(aotSkfMeas)");
    v41 = "glpe_computezrh.cpp";
    v42 = 2441;
LABEL_43:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v41, v42, v40);
  }

  (*(*v10 + 16))(v10, &v71, v58, v86, &v83);
  BlueFin::GlSetBase::GlSetBase(&__src, v57, 0x13u, v9);
  if ((*&v63[(v88 >> 3) & 0x1C] >> (v88 & 0x1F)))
  {
    bzero(__src, ((4 * v56 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(v83, ((4 * v84 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    v50 = v9[8];
    memcpy(v54, *v9, 4 * v50);
    v52 = 0;
    v51 = 0;
    v53 = v54[0];
    BlueFin::GlSetIterator::operator++(&v50);
    if (v51 != v50)
    {
      v30 = v86;
      while (v52 < 0x23FuLL)
      {
        v31 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v52;
        v32 = *v31;
        LODWORD(v31) = v31[1];
        v47[0] = v32;
        v48 = v31;
        v49 = v52;
        if ((*&v63[(v32 >> 3) & 0x1C] >> (v32 & 0x1F)))
        {
          GlCustomLog(14, "Failed to calculate integer for svId %d\n", v32);
        }

        else
        {
          v33 = BlueFin::GlPeMsmtMgr::GetPeMeas(*(v10 + 4320), v47, 0);
          *v30 = 0u;
          *(v30 + 20) = 0xFFFFFFFF00000000;
          *(v30 + 24) = 0;
          v30[50] = 0;
          v30[32] = 0;
          *(v30 + 9) = -1;
          *(v30 + 20) = 575;
          *(v30 + 4) = v43;
          if (v30 + 32 != v47)
          {
            v30[32] = v47[0];
            *(v30 + 9) = v48;
            *(v30 + 20) = v49;
          }

          *v30 = *(v33 + 24);
          *(v30 + 11) = 0;
          *(v30 + 7) = *(v33 + 92);
          v44 = &v46;
          LOBYTE(v45) = 4;
          v46 = 0uLL;
          BlueFin::GlSetBase::OperatorLeftShift(&v83, &v44, 1u);
          BlueFin::GlSetBase::operator=(&v83, &v44);
          v85 = v46;
          *v83 |= 1u;
          v30 += 56;
          *(__src + (v49 >> 5)) |= 1 << v49;
        }

        BlueFin::GlSetIterator::operator++(&v50);
        if (v51 == v50)
        {
          goto LABEL_33;
        }
      }

      goto LABEL_42;
    }

LABEL_33:
    (*(*v10 + 16))(v10, &v71, v58, v86, &v83);
  }

  v50 = v56;
  memcpy(v54, __src, 4 * v56);
  v52 = 0;
  v51 = 0;
  v53 = v54[0];
  result = BlueFin::GlSetIterator::operator++(&v50);
  if (v51 != v50)
  {
    v34 = &v87;
    while (v52 < 0x23FuLL)
    {
      v35 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v52;
      v36 = *v35;
      if ((*&v63[(v36 >> 3) & 0x1C] >> (v36 & 0x1F)))
      {
        GlCustomLog(14, "Failed to calculate integer for svId %d\n", *v35);
      }

      else
      {
        v37 = v35[1];
        v38 = *v34;
        v39 = *(v10 + 4320);
        LOBYTE(v44) = v36;
        HIDWORD(v44) = v37;
        v45 = v52;
        *(BlueFin::GlPeMsmtMgr::AccessPeMeas(v39, &v44, 0) + 88) = v38;
      }

      result = BlueFin::GlSetIterator::operator++(&v50);
      v34 += 14;
      if (v51 == v50)
      {
        return result;
      }
    }

LABEL_42:
    v40 = "usIndex < NUM_SIGNAL_IDS";
    DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
    v41 = "glsignalid.h";
    v42 = 578;
    goto LABEL_43;
  }

  return result;
}

uint64_t BlueFin::GlPeLatLonRegionSet::disabledRegion(BlueFin::GlPeLatLonRegionSet *this, float a2, float a3)
{
  v6 = a2;
  if (a2 > 0.0)
  {
    v7 = 0.5;
LABEL_6:
    v8 = (v6 + v7);
    goto LABEL_7;
  }

  if (a2 < 0.0)
  {
    v7 = -0.5;
    goto LABEL_6;
  }

  v8 = 0;
LABEL_7:
  v9 = v8 - *(this + 10);
  if ((v9 & 0x8000) != 0)
  {
    return 0;
  }

  v10 = v9;
  if (v10 >= *(this + 6))
  {
    return 0;
  }

  v11 = *(*(*this + 40))(this, v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *((*(*this + 40))(this, v10) + 2);
  if (v12 <= (v11 - 1))
  {
    return 0;
  }

  v15 = (v11 - 1) + 1;
  for (i = (*(this + 2) + 12 * (v11 - 1) + 6); ; i += 6)
  {
    v17 = *(i - 3);
    v18 = *(i - 3);
    LOWORD(v13) = *(i - 2);
    *&v19 = LODWORD(v13);
    v20 = ((v17 >> 9) - 50) + (*&v19 * 0.0001);
    LOWORD(v19) = *i;
    v13 = v20 + (v19 * 0.0001);
    LOWORD(v14) = *(i - 1);
    v21 = LODWORD(v14);
    v22 = -(v18 + (v21 * 0.0001));
    if ((v17 & 0x100) == 0)
    {
      v22 = v18 + (v21 * 0.0001);
    }

    LOWORD(v21) = i[1];
    v14 = v22 + (LODWORD(v21) * 0.0001);
    v23 = v22 >= a3 || v14 <= a3;
    v24 = !v23 && v20 < a2;
    v25 = !v24 || v13 <= a2;
    if (!v25 && (~i[2] & 0xF) == 0)
    {
      break;
    }

    if (v12 == v15++)
    {
      return 0;
    }
  }

  return 1;
}

BOOL BlueFin::GlPeKF::IsDrEnabled(BlueFin::GlPeKF *this)
{
  BlueFin::GlPeKF::SensorMask(this, &v7);
  if (!*v7)
  {
    if (v8 < 2uLL)
    {
      return 0;
    }

    v4 = v8 - 1;
    v5 = v7 + 1;
    while (!*v5++)
    {
      if (!--v4)
      {
        return 0;
      }
    }
  }

  v2 = *(this + 579);
  return v2 && (v2 == 1 || (*(*(*(this + 7617) + 160) + 2) & 1) != 0);
}

BOOL BlueFin::GlPeExtLoc::GetExtLocMeasCount(BlueFin::GlPeExtLoc *this)
{
  v1 = *(this + 17);
  if (!v1)
  {
    return 0;
  }

  if (*(v1 + 3008) != 1)
  {
    return 0;
  }

  v2 = *(v1 + 3040);
  v3 = *(v1 + 3048);
  if (v2 * v2 + v3 * v3 >= 160000.0 || *(v1 + 3009) == 1 && *(this + 13) != 1)
  {
    return 0;
  }

  result = 0;
  if (v2 > 0.0 && v2 < 100000.0 && v3 > 0.0)
  {
    return v3 < 100000.0;
  }

  return result;
}

uint64_t BlueFin::GlPeNavGnssKF::IsExtLocAvailable(BlueFin::GlPeNavGnssKF *this, char a2)
{
  v4 = *(this + 282);
  v5 = (*(*this + 128))(this);
  v6 = (*(*this + 160))(this);
  if (BlueFin::GlPeExtLoc::IsPosLocMeasAvailable(v4, v5, v6, a2))
  {
    v7 = *(*(this + 282) + 136);
    if (v7)
    {
      v8 = *(v7 + 3009) ^ 1;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t BlueFin::stDops::stDops(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  BlueFin::GlSetBase::GlSetBase((a1 + 8), (a1 + 20), 8u, (a2 + 8));
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  return a1;
}

__n128 BlueFin::stInitPos::stInitPos(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = &off_2A1F0B5F0;
  result = *(a2 + 64);
  *(a1 + 64) = result;
  *(a1 + 80) = *(a2 + 80);
  return result;
}

uint64_t BlueFin::GlPeFirstFix::FirstFixMgr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, __int128 a18, __int128 a19, __int128 a20, __int128 a21, uint64_t a22, __int128 a23, __int128 a24, __int128 a25, uint64_t a26, __int128 a27, __int128 a28, __int128 a29, char *a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, int32x4_t a37, uint64_t a38, int a39, char *a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, __int128 a45, __int128 a46, __int128 a47, __int128 a48, __int16 a49, uint64_t a50, __int128 a51, char a52, char a53, __int16 a54, char a55, BlueFin::GlSignalIdSet *a56, __int128 a57)
{
  v57 = MEMORY[0x2A1C7C4A8](a1, a2);
  v526 = v59;
  v60 = v57;
  STACK[0x1658] = *MEMORY[0x29EDCA608];
  v61 = *v57;
  v62 = v57 + *(*v57 - 24);
  v63 = *v58;
  *(v62 + 8) = **v58;
  *(v62 + 24) = *(v63 + 2);
  *(v57 + *(v61 - 24) + 88) = v58[3];
  *(v57 + *(v61 - 24) + 96) = 1217552911;
  v64 = *(v57 + 8);
  LODWORD(v63) = *v64;
  *(v57 + *(v61 - 24) + 200) = *v64;
  *(v57 + 296) = v63;
  v65 = v58[1];
  if (*v65 == 1)
  {
    v66 = *(v65 + 7);
    v67 = *(v65 + 16);
    *(v57 + 128) = 0;
    v68 = *(v65 + 24);
    v69 = *(v65 + 40);
    *(v57 + 64) = *(v65 + 8);
    *(v57 + 80) = v68;
    *(v57 + 96) = v69;
    *(v57 + 112) = v66;
    *(v57 + 120) = v67;
    v70 = 1;
  }

  else
  {
    v70 = 0;
  }

  *(v57 + 56) = v70;
  *(v57 + 240) = *(v58 + 4);
  v71 = *(v58 + 11);
  *(v57 + 244) = v71 & 1;
  *(v57 + 245) = (v71 & 2) != 0;
  v72 = v71 & 8;
  *(v57 + 246) = v72 != 0;
  *(v57 + 247) = (v71 & 4) != 0;
  v73 = v71 & 0xF | *(v57 + 264) & 0xFFFFFF90;
  if (BlueFin::GlPeFirstFix::m_bReqTimeOutReached)
  {
    v74 = 64;
  }

  else
  {
    v74 = 0;
  }

  v75 = v73 | v74;
  *(v57 + 264) = v75 | 0x20;
  v76 = v75 & 0xFFFFFBDF | 0x20;
  v77 = v75 | 0x420;
  if ((*(v58 + 11) & 0x40) == 0)
  {
    v77 = v76;
  }

  v516 = (v57 + 56);
  *(v57 + 264) = v77;
  if ((*(v58 + 44) & 0x10) == 0)
  {
    *(v57 + 272) = 0;
  }

  if (!v72)
  {
    BlueFin::GlPeFirstFix::m_bReqTimeOutReached = 0;
  }

  *(v57 + 248) = 0;
  if ((*(v58 + 10) | 2) == 2)
  {
    *(v57 + 248) = 1;
  }

  *(v57 + 256) = v59 + 336;
  v523 = *v65;
  if (v523 == 1)
  {
    v78 = *(v65 + 4);
    *(v57 + 180) = 0;
    *(v57 + 176) = 0;
    *(v57 + 192) = 0u;
    *(v57 + 208) = 0u;
    *(v57 + 224) = 0;
    *(v57 + 208) = *(v65 + 8);
    *(v57 + 224) = *(v65 + 3);
    *(v57 + 192) = xmmword_298A43770;
    *(v57 + 180) = 1;
    *(v57 + 178) = 1;
    v79 = v58[1];
    v521 = (*(v79 + 64) & 0xFFFFFFFE) != 2;
  }

  else
  {
    *(v57 + 180) = 0;
    *(v57 + 176) = 0;
    *(v57 + 192) = 0u;
    *(v57 + 208) = 0u;
    *(v57 + 224) = 0;
    v79 = v58[1];
    v521 = 1;
    v78 = 0x412E848000000000;
  }

  *(v57 + 184) = v78;
  v518 = *v79 == 1 && *(v79 + 64) > 1;
  v524 = v58;
  v80 = *(v58 + 11);
  STACK[0x3E8] = &STACK[0x3F4];
  LOBYTE(STACK[0x3F0]) = 19;
  *&STACK[0x3F4] = 0u;
  *&STACK[0x404] = 0u;
  *&STACK[0x414] = 0u;
  *&STACK[0x424] = 0u;
  *&STACK[0x430] = 0u;
  STACK[0x340] = &STACK[0x34C];
  LOBYTE(STACK[0x348]) = 8;
  *&STACK[0x34C] = 0u;
  *&STACK[0x35C] = 0u;
  BlueFin::GlSetBase::GlSetBase(&STACK[0x870], &STACK[0x87C], 0x13u, (v64 + 184));
  v81 = LOBYTE(STACK[0x878]);
  LOBYTE(STACK[0x440]) = v81;
  memcpy(&STACK[0x448], STACK[0x870], 4 * v81);
  LOWORD(STACK[0x442]) = 0;
  LOBYTE(STACK[0x441]) = 0;
  LODWORD(STACK[0x444]) = STACK[0x448];
  BlueFin::GlSetIterator::operator++(&STACK[0x440]);
  if (LOBYTE(STACK[0x441]) != LOBYTE(STACK[0x440]))
  {
    while (1)
    {
      v83 = LOWORD(STACK[0x442]);
      if (v83 >= 0x23F)
      {
        DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
      }

      v84 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v83;
      v85 = *v84;
      LODWORD(v84) = v84[1];
      LOBYTE(STACK[0x780]) = v85;
      LODWORD(STACK[0x784]) = v84;
      LOWORD(STACK[0x788]) = v83;
      MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*(v60 + 8), &STACK[0x780], 0, 0);
      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*(v60 + 8), &STACK[0x780], 0);
      if (!BlueFin::GlPeFirstFix::IsMeasUsable(v60, MeMeas, v518 || (v80 & 0x20) != 0))
      {
        goto LABEL_46;
      }

      if (!BlueFin::stPeSigMeasKF::IsPRValid(PeMeas))
      {
        goto LABEL_46;
      }

      if ((*(PeMeas + 96) & 8) != 0)
      {
        goto LABEL_46;
      }

      vars0[0] = STACK[0x780];
      BlueFin::GlSignalIdSet::GetSignalIdSetForSv(&STACK[0x870], vars0, &STACK[0x1060]);
      if ((*(STACK[0x340] + ((LOBYTE(STACK[0x780]) >> 3) & 0x1C)) >> (STACK[0x780] & 0x1F)))
      {
        goto LABEL_46;
      }

      v88 = *(MeMeas + 24);
      BlueFin::GlSetBase::Remove(&STACK[0x1060], SLOWORD(STACK[0x788]));
      v89 = STACK[0x1060];
      v90 = LOBYTE(STACK[0x1068]);
      if (*STACK[0x1060])
      {
        goto LABEL_32;
      }

      if (v90 >= 2)
      {
        break;
      }

LABEL_45:
      *(STACK[0x340] + ((LOBYTE(STACK[0x780]) >> 3) & 0x1C)) |= 1 << LOBYTE(STACK[0x780]);
      *(STACK[0x3E8] + 4 * (SLOWORD(STACK[0x788]) >> 5)) |= 1 << LOWORD(STACK[0x788]);
LABEL_46:
      BlueFin::GlSetIterator::operator++(&STACK[0x440]);
      if (LOBYTE(STACK[0x441]) == LOBYTE(STACK[0x440]))
      {
        goto LABEL_22;
      }
    }

    v97 = v90 - 1;
    v98 = v89 + 1;
    while (!*v98++)
    {
      if (!--v97)
      {
        goto LABEL_45;
      }
    }

LABEL_32:
    vars0[0] = STACK[0x1068];
    memcpy(&vars0[8], v89, 4 * v90);
    *&vars0[2] = 0;
    vars0[1] = 0;
    *&vars0[4] = *&vars0[8];
    BlueFin::GlSetIterator::operator++(vars0);
    if (vars0[1] != vars0[0])
    {
      v91 = v88 * 299792458.0;
      while (1)
      {
        v92 = *&vars0[2];
        if (*&vars0[2] >= 0x23FuLL)
        {
          DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
        }

        v93 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * *&vars0[2];
        v94 = *v93;
        LODWORD(v93) = v93[1];
        LOBYTE(STACK[0x1000]) = v94;
        LODWORD(STACK[0x1004]) = v93;
        LOWORD(STACK[0x1008]) = v92;
        v95 = BlueFin::GlPeMsmtMgr::GetMeMeas(*(v60 + 8), &STACK[0x1000], 0, 0);
        v96 = BlueFin::GlPeMsmtMgr::AccessPeMeas(*(v60 + 8), &STACK[0x1000], 0);
        if (BlueFin::GlPeFirstFix::IsMeasUsable(v60, v95, v518 || (v80 & 0x20) != 0))
        {
          if ((*(v96 + 96) & 8) == 0 && v91 > *(v95 + 24) * 299792458.0 && *(MeMeas + 29) + -10.0 < *(v95 + 29))
          {
            break;
          }
        }

        BlueFin::GlSetIterator::operator++(vars0);
        if (vars0[1] == vars0[0])
        {
          goto LABEL_45;
        }
      }

      if (*(v95 + 1) < 1)
      {
        goto LABEL_46;
      }

      v100 = *v96 - *PeMeas;
      if (v100 <= 0.5)
      {
        if (v100 < -0.5)
        {
          v100 = v100 + 1.0;
        }
      }

      else
      {
        v100 = v100 + -1.0;
      }

      v101 = v100 * 299792.458;
      if (v101 <= 40.0)
      {
        goto LABEL_46;
      }

      v102 = v101;
      *(v96 + 52) = *(v96 + 52) + v102;
      BlueFin::GlPeMsmtMgr::SetPeMeas(*(v60 + 8), v96, 0);
    }

    goto LABEL_45;
  }

LABEL_22:
  if (!*STACK[0x3E8])
  {
    v103 = LOBYTE(STACK[0x3F0]);
    if (v103 < 2)
    {
      LODWORD(v82) = 0;
      goto LABEL_61;
    }

    v82 = v103 - 1;
    v104 = (STACK[0x3E8] + 4);
    while (!*v104++)
    {
      if (!--v82)
      {
        goto LABEL_61;
      }
    }
  }

  if (!*(v60 + 268))
  {
    *(v60 + 268) = *(v60 + *(*v60 - 24) + 200);
  }

  LODWORD(v82) = 1;
LABEL_61:
  v106 = 0;
  *(v60 + 300) = 0x42C8000000000000;
  *&STACK[0x340] = 0uLL;
  LOBYTE(STACK[0x360]) = 19;
  STACK[0x350] = 0;
  STACK[0x358] = &STACK[0x364];
  *&STACK[0x364] = 0u;
  *&STACK[0x374] = 0u;
  *&STACK[0x384] = 0u;
  *&STACK[0x394] = 0u;
  *&STACK[0x3A4] = 0u;
  v107 = vdupq_n_s32(0x43C80000u);
  *&STACK[0x3B0] = 0u;
  *&STACK[0x3C0] = v107;
  *&STACK[0x3D0] = v107;
  LOWORD(STACK[0x3E0]) = 0;
  if (!v82)
  {
    goto LABEL_507;
  }

  v108 = (*(**(v60 + 408) + 88))(*(v60 + 408));
  v510 = (*(**(v60 + 408) + 96))(*(v60 + 408));
  v109 = v108(29592);
  v110 = v109;
  if (!v109)
  {
    DeviceFaultNotify("glmemalloc.h", 74, "GlStackAlloc", "m_ptr != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmemalloc.h", 74, "m_ptr != nullptr");
  }

  v111 = 0;
  *v109 = v109 + 3;
  v109[1] = v109 + 3;
  v513 = v109 + 3;
  v511 = v109 + 3699;
  v109[2] = v109 + 3699;
  v112 = vdupq_n_s32(0x43C80000u);
  do
  {
    *(&v109[v111 + 7] + 4) = 0uLL;
    v113 = &v109[v111 + 7] + 4;
    *(v113 - 28) = 0;
    *(v113 - 36) = 0;
    *(v113 - 20) = 0;
    *(v113 - 12) = v113;
    *(v113 - 4) = 19;
    *(v113 + 16) = 0uLL;
    *(v113 + 32) = 0uLL;
    *(v113 + 48) = 0uLL;
    *(v113 + 64) = 0uLL;
    *(v113 + 76) = 0uLL;
    *(v113 + 92) = v112;
    *(v113 + 108) = v112;
    v111 += 21;
    *(v113 + 124) = 0;
  }

  while (v111 != 3696);
  if (*(v524 + 45))
  {
    BlueFin::GlSignalIdSet::GetSignalIdSet(&STACK[0x3E8], 4, &STACK[0x870]);
    BlueFin::GlSetBase::operator=(&STACK[0x3E8], &STACK[0x870]);
    v114 = *&STACK[0x88C];
    v115 = *&STACK[0x8AC];
    *&STACK[0x414] = *&STACK[0x89C];
    *&STACK[0x424] = v115;
    *&STACK[0x430] = *&STACK[0x8B8];
    *&STACK[0x3F4] = *&STACK[0x87C];
    *&STACK[0x404] = v114;
  }

  v522 = v110;
  STACK[0x1308] = &STACK[0x12A0];
  *&STACK[0x12A0] = 0u;
  *&STACK[0x12B0] = 0u;
  *&STACK[0x12C0] = 0u;
  *&STACK[0x12D0] = 0u;
  *&STACK[0x12E0] = 0u;
  *&STACK[0x12F0] = 0u;
  LODWORD(STACK[0x1300]) = 0;
  bzero(&STACK[0x1310], 0x320uLL);
  memset(&STACK[0x1060], 255, 0x23FuLL);
  v116 = 0;
  v117 = STACK[0x3E8];
  v118 = LOBYTE(STACK[0x3F0]);
  v119 = (STACK[0x3E8] + 4 * v118 - 4);
  do
  {
    if (*v119)
    {
      v120 = *v119 - (((*v119 >> 1) & 0x5B6DB6DB) + ((*v119 >> 2) & 0x9249249));
      v116 = ((v120 + (v120 >> 3)) & 0xC71C71C7) + v116 - 63 * (((v120 + (v120 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v119;
  }

  while (v119 >= v117);
  if (v116 >= 0x65u)
  {
    v503 = "rotAll.Cnt() <= GLPE_FIRSTFIX_MAX_RNGS_FROM_ME";
    v504 = 596;
    v505 = "glpe_firstfix.cpp";
    DeviceFaultNotify("glpe_firstfix.cpp", 596, "ComputeAzElInt", "rotAll.Cnt() <= GLPE_FIRSTFIX_MAX_RNGS_FROM_ME");
    goto LABEL_579;
  }

  if (*(v60 + 246))
  {
    v121 = 0;
  }

  else
  {
    v121 = 5;
  }

  LOBYTE(STACK[0x440]) = v118;
  memcpy(&STACK[0x448], v117, 4 * v118);
  LOWORD(STACK[0x442]) = 0;
  LOBYTE(STACK[0x441]) = 0;
  LODWORD(STACK[0x444]) = STACK[0x448];
  BlueFin::GlSetIterator::operator++(&STACK[0x440]);
  if (LOBYTE(STACK[0x441]) != LOBYTE(STACK[0x440]))
  {
    v122 = 0;
    while (1)
    {
      LODWORD(STACK[0x780]) = 0;
      LODWORD(STACK[0x1000]) = 0;
      v123 = LOWORD(STACK[0x442]);
      if (v123 > 0x23E)
      {
        break;
      }

      v124 = v60 + *(*v60 - 24);
      v125 = *(v124 + 88);
      STACK[0x870] = &STACK[0x87C];
      *&STACK[0x87C] = 0u;
      *&STACK[0x88C] = 0u;
      *&STACK[0x89C] = 0u;
      *&STACK[0x8AC] = 0u;
      *&STACK[0x8B8] = 0u;
      *(&STACK[0x87C] + (v123 >> 5)) |= 1 << v123;
      LOBYTE(STACK[0x878]) = 19;
      *vars0 = *(v124 + 8);
      v126 = BlueFin::GlPeNavUtil::ComputeBc(v60, &STACK[0x870], vars0, *(v60 + 240), 0, &STACK[0x1000], &STACK[0x780], 0);
      if (fabs(v125) < 1.0)
      {
        *(v60 + 88 + *(*v60 - 24)) = v126;
      }

      if ((*(STACK[0x870] + 4 * (v123 >> 5)) >> (v123 & 0x1F)))
      {
        v127 = *&STACK[0x780];
        v128 = *&STACK[0x780];
        v129 = (v128 + -0.5);
        if (*&STACK[0x780] >= 0.0)
        {
          v129 = 0;
        }

        if (v127 > 0.0)
        {
          v129 = (v128 + 0.5);
        }

        if (v129 < v121)
        {
          BlueFin::GlSetBase::Remove(&STACK[0x3E8], v123);
          v127 = *&STACK[0x780];
        }

        *(STACK[0x1308] + v122) = *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v123);
        *(&STACK[0x14A0] + v122) = v127;
        *(&STACK[0x1310] + v122) = STACK[0x1000];
        *(&STACK[0x1060] + v123) = v122++;
      }

      else
      {
        BlueFin::GlSetBase::Remove(&STACK[0x3E8], v123);
      }

      BlueFin::GlSetIterator::operator++(&STACK[0x440]);
      if (LOBYTE(STACK[0x441]) == LOBYTE(STACK[0x440]))
      {
        goto LABEL_90;
      }
    }

LABEL_578:
    v503 = "usIndex < NUM_SIGNAL_IDS";
    v504 = 578;
    v505 = "glsignalid.h";
    DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
LABEL_579:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v505, v504, v503);
  }

LABEL_90:
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  v130 = *v524;
  if (*(*v524 + 72) == 1 && *(v130 + 24) <= 3000.0)
  {
    v131 = *(v60 + 247);
    v132 = *(v60 + 244);
    v133 = *(v60 + 240);
    v134 = v60 + *(*v60 - 24);
    *&STACK[0x440] = *(v134 + 8);
    STACK[0x450] = *(v134 + 24);
    BlueFin::GlPeNavUtil::ComputeRangeResidVec(v60, &STACK[0x3E8], &STACK[0x440], v133, 0, 0, 0, 1, 0, 1);
    v138 = v132 - v131 + 5;
    v139 = LODWORD(STACK[0x878]);
    if (v139 >= v138)
    {
      if (!*(v130 + 64) || !*(v130 + 76))
      {
        goto LABEL_115;
      }

      BlueFin::GlPeTimeManager::GetTime(*(v60 + 24), 1, &STACK[0x440]);
      *vars0 = &off_2A1F0B5F0;
      *&vars0[8] = 0;
      BlueFin::GlPeGnssTime::GetGps(&STACK[0x440], vars0);
      v140 = *&vars0[8];
      v141 = *&vars0[12];
      v142 = *(v130 + 64);
      v143 = *(v130 + 68);
      if (*(v130 + 64))
      {
        if (*&vars0[8] < __PAIR64__(v143, v142))
        {
          v141 = (__PAIR64__(v143, v142) - *&vars0[8]) >> 32;
          v140 = v142 - *&vars0[8];
        }

        else
        {
          v141 = (*&vars0[8] - __PAIR64__(v143, v142)) >> 32;
          v140 = *&vars0[8] - v142;
        }
      }

      if (v141 <= 0x64 && (v141 != 100 || !v140))
      {
LABEL_115:
        if (*(v60 + 244) != 1)
        {
          goto LABEL_128;
        }

        v144 = 8;
        if (v139 >= 8)
        {
          v145 = 8;
        }

        else
        {
          v145 = v139;
        }

        LODWORD(STACK[0x44C]) = 8;
        LODWORD(STACK[0x448]) = v145;
        *&STACK[0x450] = 0u;
        *&STACK[0x460] = 0u;
        *&STACK[0x470] = 0u;
        *&STACK[0x480] = 0u;
        STACK[0x490] = 0;
        STACK[0x440] = &STACK[0x450];
        v146 = v145;
        if (v139 < 8)
        {
          v144 = v139;
        }

        v147 = 3;
        v148 = STACK[0x870];
        do
        {
          v149 = *(v148 + 8 * ((v139 * (v147 - 2)) / v146));
          if (v149 < 0.0)
          {
            v149 = -v149;
          }

          *(&STACK[0x440] + v147++) = v149;
          --v144;
        }

        while (v144);
        if (BlueFin::SKFVector::Median(&STACK[0x440], v135, v136, v137) <= 200.0)
        {
          goto LABEL_128;
        }

        v150 = *(v60 + 40);
        v151 = v60 + *(*v60 - 24);
        v152 = *(v151 + 88);
        v153 = *(v60 + 264);
        *vars0 = v522;
        *&vars0[8] = *(v60 + 8);
        *&a19 = 0;
        a18 = v150;
        DWORD2(a19) = v153;
        *&a20 = 0;
        *(&a20 + 8) = *(v151 + 8);
        *(&a21 + 1) = *(v151 + 24);
        a22 = v152;
        LODWORD(a23) = v133;
        *(&a23 + 1) = &a24 + 4;
        LOBYTE(a24) = 8;
        *(&a25 + 4) = 0u;
        *(&a24 + 4) = 0u;
        BlueFin::GlSetBase::GlSetBase(&STACK[0x780], &STACK[0x78C], 0x13u, &STACK[0x3E8]);
        v154 = 0;
        v155 = (STACK[0x780] + 4 * LOBYTE(STACK[0x788]) - 4);
        do
        {
          if (*v155)
          {
            v156 = *v155 - (((*v155 >> 2) & 0x9249249) + ((*v155 >> 1) & 0x5B6DB6DB));
            v154 = ((v156 + (v156 >> 3)) & 0xC71C71C7) + v154 - 63 * (((v156 + (v156 >> 3)) & 0xC71C71C7) / 0x3F);
          }

          --v155;
        }

        while (v155 >= STACK[0x780]);
        if (v154 >= 0x11u)
        {
          BlueFin::GlPeFirstFix::SelectBase(&STACK[0x440], v60, &STACK[0x1060], STACK[0x3E8], STACK[0x3F0], 0x10u, 1);
          BlueFin::GlSetBase::operator=(&STACK[0x780], &STACK[0x440]);
          *&STACK[0x79C] = *&STACK[0x45C];
          *&STACK[0x7AC] = *&STACK[0x46C];
          *&STACK[0x7BC] = *&STACK[0x47C];
          *&STACK[0x7C8] = *&STACK[0x488];
          *&STACK[0x78C] = *&STACK[0x44C];
        }

        v157 = BlueFin::GlPeLsqSubsets::RunLsqSubset(vars0, &STACK[0x780], 3, 1, *(v60 + 256), 0);
        v158 = BlueFin::GlPeSubsets::Find(v522, &STACK[0x780]);
        if (v158)
        {
          v159 = v157;
        }

        else
        {
          v159 = 0;
        }

        if (v159 == 1)
        {
          v160 = (*(v158 + 120) * 1000.0);
          if (*(v60 + 240) != v160)
          {
            v161 = v60 + *(*v60 - 24);
            *&STACK[0x1000] = *(v161 + 8);
            STACK[0x1010] = *(v161 + 24);
            BlueFin::GlPeNavUtil::ComputeRangeResidVec(v60, &STACK[0x3E8], &STACK[0x1000], v160, 0, 0, 0, 1, 0, 1);
            BlueFin::SKFVector::Clone(&STACK[0x870], &STACK[0x440]);
            LODWORD(v139) = STACK[0x878];
          }

LABEL_128:
          STACK[0x780] = &STACK[0x78C];
          LOBYTE(STACK[0x788]) = 19;
          *&STACK[0x78C] = 0u;
          *&STACK[0x79C] = 0u;
          *&STACK[0x7AC] = 0u;
          *&STACK[0x7BC] = 0u;
          *&STACK[0x7C8] = 0u;
          STACK[0x1000] = &STACK[0x100C];
          LOBYTE(STACK[0x1008]) = 19;
          *&STACK[0x100C] = 0u;
          *&STACK[0x101C] = 0u;
          *&STACK[0x102C] = 0u;
          *&STACK[0x103C] = 0u;
          *&STACK[0x1048] = 0u;
          STACK[0x440] = &STACK[0x450];
          STACK[0x448] = 0x6400000000;
          bzero(&STACK[0x450], 0x328uLL);
          v168 = BlueFin::SKFVector::Median(&STACK[0x870], v162, v163, v164);
          if (v139 >= 1)
          {
            v169 = (v139 + 1) - 1;
            v170 = (STACK[0x870] + 8);
            do
            {
              v171 = *v170 - v168;
              if (v171 < 0.0)
              {
                v171 = -v171;
              }

              *v170++ = v171;
              --v169;
            }

            while (v169);
          }

          v172 = BlueFin::SKFVector::Median(&STACK[0x870], v165, v166, v167);
          vars0[0] = STACK[0x3F0];
          memcpy(&vars0[8], STACK[0x3E8], 4 * vars0[0]);
          *&vars0[2] = 0;
          vars0[1] = 0;
          *&vars0[4] = *&vars0[8];
          BlueFin::GlSetIterator::operator++(vars0);
          if (vars0[1] != vars0[0])
          {
            v176 = fmax(v172 * 1.4826, 0.001);
            v177 = 8;
            do
            {
              v178 = *(STACK[0x870] + v177);
              BlueFin::SKFVector::AddLen(&STACK[0x440]);
              *(STACK[0x440] + 8 * SLODWORD(STACK[0x448])) = v178 / v176;
              if (v178 / v176 > 4.0)
              {
                v179 = *(STACK[0x870] + v177);
                if (v179 > 150.0)
                {
                  if (v178 / v176 <= 7.5 || v179 <= 400.0)
                  {
                    if (*&vars0[2] > 0x23Eu)
                    {
                      goto LABEL_578;
                    }

                    v181 = *&vars0[2] >> 5;
                    v182 = 1 << vars0[2];
                  }

                  else
                  {
                    if (*&vars0[2] > 0x23Eu)
                    {
                      goto LABEL_578;
                    }

                    v181 = *&vars0[2] >> 5;
                    v182 = 1 << vars0[2];
                    *(STACK[0x780] + 4 * v181) |= 1 << vars0[2];
                  }

                  *(STACK[0x1000] + 4 * v181) |= v182;
                }
              }

              BlueFin::GlSetIterator::operator++(vars0);
              v177 += 8;
            }

            while (vars0[1] != vars0[0]);
          }

          if (BlueFin::SKFVector::Median(&STACK[0x440], v173, v174, v175) < 1.0)
          {
            BlueFin::GlSetBase::GlSetBase(&STACK[0xFA0], &STACK[0xFAC], 0x13u, &STACK[0x1000]);
            *vars0 = &vars0[12];
            vars0[8] = 19;
            *&vars0[12] = 0u;
            *(&a18 + 4) = 0u;
            *(&a19 + 4) = 0u;
            *(&a20 + 4) = 0u;
            a21 = 0u;
            BlueFin::GlSetBase::OperatorBinaryInversion(&STACK[0xFA0], vars0);
            BlueFin::GlSetBase::operator=(&STACK[0xFA0], vars0);
            v183 = *&vars0[12];
            *&STACK[0xFBC] = *(&a18 + 4);
            v184 = *(&a20 + 4);
            *&STACK[0xFCC] = *(&a19 + 4);
            *&STACK[0xFDC] = v184;
            *&STACK[0xFE8] = a21;
            *&STACK[0xFAC] = v183;
            BlueFin::GlSignalIdSet::setSignalIdLimits(&STACK[0xFA0]);
            BlueFin::GlSetBase::operator&=(&STACK[0x3E8], &STACK[0xFA0]);
            BlueFin::GlPeRepeatedIsol::Submit((v60 + 272), STACK[0x780], STACK[0x788]);
          }
        }
      }
    }

    v185 = 0;
    *v522 = v513;
    *(v522 + 1) = v513;
    *(v522 + 2) = v511;
    v186 = vdupq_n_s32(0x43C80000u);
    do
    {
      *(v522 + v185 + 60) = 0uLL;
      v187 = v522 + v185 + 60;
      *(v187 - 28) = 0;
      *(v187 - 36) = 0;
      *(v187 - 20) = 0;
      *(v187 - 12) = v187;
      *(v187 - 4) = 19;
      *(v187 + 16) = 0uLL;
      *(v187 + 32) = 0uLL;
      *(v187 + 48) = 0uLL;
      *(v187 + 64) = 0uLL;
      *(v187 + 76) = 0uLL;
      *(v187 + 92) = v186;
      *(v187 + 108) = v186;
      v185 += 168;
      *(v187 + 124) = 0;
    }

    while (v185 != 29568);
  }

  v188 = *(v60 + 176);
  if (*(v60 + 248) == 1 && (v188 & 1) != 0)
  {
    v189 = 0;
    v190 = (STACK[0x3E8] + 4 * LOBYTE(STACK[0x3F0]) - 4);
    do
    {
      if (*v190)
      {
        v191 = *v190 - (((*v190 >> 1) & 0x5B6DB6DB) + ((*v190 >> 2) & 0x9249249));
        v189 = ((v191 + (v191 >> 3)) & 0xC71C71C7) + v189 - 63 * (((v191 + (v191 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v190;
    }

    while (v190 >= STACK[0x3E8]);
    if (*(v60 + 244))
    {
      v192 = 9;
    }

    else
    {
      v192 = 8;
    }

    if (v189 > 6u)
    {
      v193 = *(v60 + 244) ^ 1;
    }

    else
    {
      v193 = 0;
    }

    if (((v193 & 1) != 0 || v192 <= v189) && *(v60 + 177) == 1)
    {
      v188 = 0;
      *(v60 + 176) = 0;
    }

    else
    {
      v188 = 1;
    }
  }

  if (((v188 | v518) & 1) == 0)
  {
    goto LABEL_222;
  }

  *&STACK[0x440] = 0uLL;
  STACK[0x450] = 0;
  STACK[0x458] = &STACK[0x464];
  LOBYTE(STACK[0x460]) = 19;
  *&STACK[0x464] = 0u;
  *&STACK[0x474] = 0u;
  *&STACK[0x484] = 0u;
  *&STACK[0x494] = 0u;
  *&STACK[0x4A4] = 0u;
  v194 = vdupq_n_s32(0x43C80000u);
  *&STACK[0x4B0] = 0u;
  *&STACK[0x4C0] = v194;
  *&STACK[0x4D0] = v194;
  LOBYTE(STACK[0x4E0]) = 0;
  v195 = *(v60 + 40);
  v196 = v60 + *(*v60 - 24);
  v194.i64[0] = *(v196 + 88);
  v197 = *(v60 + 240);
  v198 = *(v60 + 264);
  *vars0 = v522;
  *&vars0[8] = *(v60 + 8);
  *&a19 = 0;
  a18 = v195;
  DWORD2(a19) = v198;
  *&a20 = 0;
  *(&a20 + 8) = *(v196 + 8);
  *(&a21 + 1) = *(v196 + 24);
  a22 = v194.i64[0];
  LODWORD(a23) = v197;
  *(&a23 + 1) = &a24 + 4;
  LOBYTE(a24) = 8;
  *(&a25 + 4) = 0u;
  *(&a24 + 4) = 0u;
  BlueFin::GlSetBase::GlSetBase(&STACK[0x780], &STACK[0x78C], 0x13u, &STACK[0x3E8]);
  if (*(v60 + 56) == 1)
  {
    if (*(v60 + 178) == 1)
    {
      v199 = LOBYTE(STACK[0x788]);
      v200 = STACK[0x780];
LABEL_183:
      v207 = *(v60 + 8);
      v208 = *(v60 + 88);
      v209 = *(v60 + 96);
      LOBYTE(STACK[0x870]) = v199;
      memcpy(&STACK[0x878], v200, 4 * v199);
      LOWORD(STACK[0x872]) = 0;
      LOBYTE(STACK[0x871]) = 0;
      LODWORD(STACK[0x874]) = STACK[0x878];
      BlueFin::GlSetIterator::operator++(&STACK[0x870]);
      v210 = 0.0;
      v211 = 1000.0;
      while (LOBYTE(STACK[0x871]) != LOBYTE(STACK[0x870]))
      {
        v212 = LOWORD(STACK[0x872]);
        if (v212 >= 0x23F)
        {
          DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 578, "usIndex < NUM_SIGNAL_IDS");
        }

        v213 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v212;
        v214 = *v213;
        LODWORD(v213) = v213[1];
        LOBYTE(STACK[0x1000]) = v214;
        LODWORD(STACK[0x1004]) = v213;
        LOWORD(STACK[0x1008]) = v212;
        if ((*(*(v207 + 8) + ((v212 >> 3) & 0x1FFC)) >> (v212 & 0x1F)))
        {
          v215 = BlueFin::GlPeMsmtMgr::GetPeMeas(v207, &STACK[0x1000], 0);
          v216 = *(v215 + 52);
          if (v210 < v216)
          {
            v210 = *(v215 + 52);
          }

          if (v211 > v216)
          {
            v211 = *(v215 + 52);
          }
        }

        BlueFin::GlSetIterator::operator++(&STACK[0x870]);
      }

      v217 = (v208 * v208 + v209 * v209) * 0.5;
      if (v217 < v211 * v211 * 0.5 || v217 > v210 * v210 + v210 * v210)
      {
        v219 = *(v60 + 264) | 0x100;
        *(v60 + 264) = v219;
        DWORD2(a19) = v219;
      }

      *&a20 = v516;
      v201 = *(v60 + 178);
      v202 = 13;
      goto LABEL_197;
    }

    v203 = 0;
    v200 = STACK[0x780];
    v199 = LOBYTE(STACK[0x788]);
    v204 = (STACK[0x780] + 4 * v199 - 4);
    do
    {
      if (*v204)
      {
        v205 = *v204 - (((*v204 >> 2) & 0x9249249) + ((*v204 >> 1) & 0x5B6DB6DB));
        v203 = ((v205 + (v205 >> 3)) & 0xC71C71C7) + v203 - 63 * (((v205 + (v205 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v204;
    }

    while (v204 >= v200);
    if (*(v60 + 244))
    {
      v206 = 16;
    }

    else
    {
      v206 = 8;
    }

    if (v206 > v203)
    {
      goto LABEL_183;
    }

    v201 = 0;
    *(v60 + 56) = 0;
    *(v60 + 128) = 0;
  }

  else
  {
    v201 = 0;
  }

  v202 = 16;
LABEL_197:
  v220 = 0;
  v221 = (STACK[0x780] + 4 * LOBYTE(STACK[0x788]) - 4);
  do
  {
    if (*v221)
    {
      v222 = *v221 - (((*v221 >> 2) & 0x9249249) + ((*v221 >> 1) & 0x5B6DB6DB));
      v220 = ((v222 + (v222 >> 3)) & 0xC71C71C7) + v220 - 63 * (((v222 + (v222 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v221;
  }

  while (v221 >= STACK[0x780]);
  if (v202 < v220)
  {
    BlueFin::GlPeFirstFix::SelectBase(&STACK[0x870], v60, &STACK[0x1060], STACK[0x3E8], STACK[0x3F0], v202, 1);
    BlueFin::GlSetBase::operator=(&STACK[0x780], &STACK[0x870]);
    *&STACK[0x79C] = *&STACK[0x88C];
    *&STACK[0x7AC] = *&STACK[0x89C];
    *&STACK[0x7BC] = *&STACK[0x8AC];
    *&STACK[0x7C8] = *&STACK[0x8B8];
    *&STACK[0x78C] = *&STACK[0x87C];
  }

  BlueFin::GlPeLsqSubsets::RunLsqSubsets(vars0, &STACK[0x780], 1, *(v60 + 256), 0);
  *(v60 + 264) &= ~0x100u;
  v223 = BlueFin::GlPeSubsets::Find(v522, &STACK[0x780]);
  v224 = v223;
  if (v223)
  {
    v225 = v60 + *(*v60 - 24);
    *(v225 + 8) = *v223;
    *(v225 + 24) = *(v223 + 16);
    if (*(v60 + 264))
    {
      *(v60 + 240) = (*(v223 + 120) * 1000.0);
    }

    *&STACK[0x880] = 0u;
    *&STACK[0x870] = 0u;
    *&STACK[0x890] = vdupq_n_s64(0x4079000000000000uLL);
    STACK[0x8A0] = 0x4079000000000000;
    STACK[0x8B0] = 0x6400000000;
    bzero(&STACK[0x8B8], 0x328uLL);
    STACK[0x8A8] = &STACK[0x8B8];
    STACK[0xBE8] = 0x6400000000;
    bzero(&STACK[0xBF0], 0x328uLL);
    STACK[0xBE0] = &STACK[0xBF0];
    LODWORD(STACK[0xF18]) = 0;
    LODWORD(STACK[0xF20]) = 0;
    STACK[0xF28] = &STACK[0xF34];
    LOBYTE(STACK[0xF30]) = 8;
    *&STACK[0xF34] = 0u;
    *&STACK[0xF44] = 0u;
    *&STACK[0xF58] = xmmword_298A41DA0;
    STACK[0xF68] = vdup_n_s32(0x42C60000u);
    LODWORD(STACK[0xF70]) = 1120272384;
    if (!*STACK[0x458])
    {
      v226 = LOBYTE(STACK[0x460]);
      if (v226 < 2)
      {
LABEL_211:
        if ((*v516 & v201 & 1) != 0 && BlueFin::GlPeFirstFix::ValidateExtLocWithLs(v60, v224, v516))
        {
          *&STACK[0x440] = *v224;
          STACK[0x450] = *(v224 + 16);
          BlueFin::GlSetBase::operator=(&STACK[0x458], v224 + 24);
          *&STACK[0x464] = *(v224 + 36);
          v230 = *(v224 + 52);
          v231 = *(v224 + 68);
          v232 = *(v224 + 84);
          v233 = *(v224 + 112);
          *&STACK[0x4A0] = *(v224 + 96);
          *&STACK[0x484] = v231;
          *&STACK[0x494] = v232;
          *&STACK[0x474] = v230;
          v234 = *(v224 + 128);
          v235 = *(v224 + 144);
          LOBYTE(STACK[0x4E0]) = *(v224 + 160);
          *&STACK[0x4D0] = v235;
          *&STACK[0x4B0] = v233;
          *&STACK[0x4C0] = v234;
        }
      }

      else
      {
        v227 = v226 - 1;
        v228 = (STACK[0x458] + 4);
        while (!*v228++)
        {
          if (!--v227)
          {
            goto LABEL_211;
          }
        }
      }
    }
  }

  else
  {
    BlueFin::GlSignalIdSet::Print(&STACK[0x780], 0x6Fu);
    if (*(v60 + 128) == 1)
    {
      *(v60 + 128) = 0;
    }
  }

  if (!*STACK[0x458])
  {
    v236 = LOBYTE(STACK[0x460]);
    if (v236 < 2)
    {
      goto LABEL_222;
    }

    v237 = v236 - 1;
    v238 = (STACK[0x458] + 4);
    while (!*v238++)
    {
      if (!--v237)
      {
        goto LABEL_222;
      }
    }
  }

  BlueFin::GlPeCand::Submit(&STACK[0x340], &STACK[0x440], 1);
LABEL_222:
  v240 = 0;
  v241 = STACK[0x3E8];
  v242 = LOBYTE(STACK[0x3F0]);
  v243 = (STACK[0x3E8] + 4 * v242 - 4);
  do
  {
    if (*v243)
    {
      v244 = *v243 - (((*v243 >> 1) & 0x5B6DB6DB) + ((*v243 >> 2) & 0x9249249));
      v240 = ((v244 + (v244 >> 3)) & 0xC71C71C7) + v240 - 63 * (((v244 + (v244 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v243;
  }

  while (v243 >= v241);
  if (*(v60 + 244))
  {
    v245 = 9;
  }

  else
  {
    v245 = 8;
  }

  if (v245 > v240 && (v240 < 7u || (*(v60 + 244) & 1) != 0 || (*(v60 + 248) & 1) == 0 || *(v60 + 176) != 1) || *STACK[0x358])
  {
    goto LABEL_256;
  }

  v246 = LOBYTE(STACK[0x360]);
  if (v246 < 2)
  {
LABEL_239:
    v250 = *(v60 + 40);
    v251 = v60 + *(*v60 - 24);
    v252 = *(v251 + 88);
    v253 = *(v60 + 240);
    v254 = *(v60 + 264);
    *vars0 = v522;
    *&vars0[8] = *(v60 + 8);
    *&a19 = 0;
    a18 = v250;
    DWORD2(a19) = v254;
    *(&a20 + 8) = *(v251 + 8);
    *(&a21 + 1) = *(v251 + 24);
    a22 = v252;
    LODWORD(a23) = v253;
    *(&a23 + 1) = &a24 + 4;
    LOBYTE(a24) = 8;
    *(&a25 + 4) = 0u;
    *(&a24 + 4) = 0u;
    *&a20 = v516;
    BlueFin::GlPeFirstFix::RunPreIsolationFixRanges(&STACK[0x440], v60, &STACK[0x3E8], v522, &STACK[0x1060], vars0);
    v255 = STACK[0x458];
    if (*STACK[0x458])
    {
      goto LABEL_240;
    }

    v256 = LOBYTE(STACK[0x460]);
    if (v256 >= 2)
    {
      v257 = 4 * v256;
      v258 = 4;
      while (!v255[v258 / 4])
      {
        v258 += 4;
        if (v257 == v258)
        {
          goto LABEL_247;
        }
      }

LABEL_240:
      if (!*v255)
      {
        v265 = LOBYTE(STACK[0x460]);
        if (v265 < 2)
        {
          goto LABEL_255;
        }

        v266 = v265 - 1;
        v267 = v255 + 1;
        while (!*v267++)
        {
          if (!--v266)
          {
            goto LABEL_255;
          }
        }
      }

      BlueFin::GlPeCand::Submit(&STACK[0x340], &STACK[0x440], 0);
LABEL_255:
      v241 = STACK[0x3E8];
      v242 = LOBYTE(STACK[0x3F0]);
      goto LABEL_256;
    }

LABEL_247:
    if (*v516 != 1)
    {
      goto LABEL_240;
    }

    v259 = *(v60 + 40);
    v260 = v60 + *(*v60 - 24);
    v261 = *(v260 + 88);
    v262 = *(v60 + 240);
    v263 = *(v60 + 264);
    *&STACK[0x788] = *(v60 + 8);
    STACK[0x780] = v522;
    STACK[0x798] = v259;
    STACK[0x7A8] = 0;
    STACK[0x7A0] = 0;
    LODWORD(STACK[0x7B0]) = v263;
    STACK[0x7B8] = 0;
    *&STACK[0x7C0] = *(v260 + 8);
    STACK[0x7D0] = *(v260 + 24);
    STACK[0x7D8] = v261;
    LODWORD(STACK[0x7E0]) = v262;
    STACK[0x7E8] = &STACK[0x7F4];
    LOBYTE(STACK[0x7F0]) = 8;
    *&STACK[0x804] = 0u;
    *&STACK[0x7F4] = 0u;
    BlueFin::GlPeFirstFix::RunPreIsolationFixRanges(&STACK[0x870], v60, &STACK[0x3E8], v522, &STACK[0x1060], &STACK[0x780]);
    if (!*STACK[0x888])
    {
      v499 = LOBYTE(STACK[0x890]);
      if (v499 < 2)
      {
LABEL_583:
        v255 = STACK[0x458];
        goto LABEL_240;
      }

      v500 = v499 - 1;
      v501 = (STACK[0x888] + 4);
      while (!*v501++)
      {
        if (!--v500)
        {
          goto LABEL_583;
        }
      }
    }

    if (*v516)
    {
      v264 = *(v60 + 80);
      *&STACK[0xFA0] = *(v60 + 64);
      STACK[0xFB0] = v264;
    }

    else
    {
      *&STACK[0xFA0] = 0uLL;
      STACK[0xFB0] = 0;
    }

    BlueFin::lla2ned(&STACK[0xFA0], &STACK[0x870], 0, &STACK[0x1000]);
    v506 = sqrt(*&STACK[0x1008] * *&STACK[0x1008] + *&STACK[0x1000] * *&STACK[0x1000]);
    if (v506 > 400.0)
    {
      *&STACK[0x440] = *&STACK[0x870];
      STACK[0x450] = STACK[0x880];
      BlueFin::GlSetBase::operator=(&STACK[0x458], &STACK[0x888]);
      *&STACK[0x474] = *&STACK[0x8A4];
      *&STACK[0x484] = *&STACK[0x8B4];
      *&STACK[0x494] = *&STACK[0x8C4];
      *&STACK[0x464] = *&STACK[0x894];
      v507 = *&STACK[0x8E0];
      *&STACK[0x4A0] = *&STACK[0x8D0];
      *&STACK[0x4B0] = v507;
      v508 = *&STACK[0x900];
      *&STACK[0x4C0] = *&STACK[0x8F0];
      *&STACK[0x4D0] = v508;
      LOBYTE(STACK[0x4E0]) = STACK[0x910];
    }

    goto LABEL_583;
  }

  v247 = v246 - 1;
  v248 = (STACK[0x358] + 4);
  while (!*v248++)
  {
    if (!--v247)
    {
      goto LABEL_239;
    }
  }

LABEL_256:
  v269 = 0;
  STACK[0x2E8] = &STACK[0x2F4];
  LOBYTE(STACK[0x2F0]) = 19;
  *&STACK[0x2F4] = 0u;
  *&STACK[0x304] = 0u;
  *&STACK[0x314] = 0u;
  *&STACK[0x324] = 0u;
  v270 = &v241[v242 - 1];
  *&STACK[0x330] = 0u;
  do
  {
    if (*v270)
    {
      v271 = *v270 - (((*v270 >> 1) & 0x5B6DB6DB) + ((*v270 >> 2) & 0x9249249));
      v269 = ((v271 + (v271 >> 3)) & 0xC71C71C7) + v269 - 63 * (((v271 + (v271 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v270;
  }

  while (v270 >= v241);
  if (*(v60 + 244))
  {
    v272 = 9;
  }

  else
  {
    v272 = 8;
  }

  if (v272 <= v269)
  {
    goto LABEL_271;
  }

  if (v269 <= 6u)
  {
    if ((*(v60 + 176) & 1) == 0)
    {
LABEL_271:
      if (v269 >= 0xAu)
      {
        v273 = 10;
      }

      else
      {
        v273 = v269;
      }

      for (i = 9; ; ++i)
      {
        BlueFin::GlPeFirstFix::SelectBase(&STACK[0x870], v60, &STACK[0x1060], v241, v242, i, 1);
        BlueFin::GlSetBase::operator=(&STACK[0x2E8], &STACK[0x870]);
        v275 = 0;
        v276 = *&STACK[0x88C];
        v277 = *&STACK[0x8AC];
        *&STACK[0x314] = *&STACK[0x89C];
        *&STACK[0x324] = v277;
        *&STACK[0x330] = *&STACK[0x8B8];
        *&STACK[0x2F4] = *&STACK[0x87C];
        *&STACK[0x304] = v276;
        v278 = (STACK[0x2E8] + 4 * LOBYTE(STACK[0x2F0]) - 4);
        do
        {
          if (*v278)
          {
            v279 = *v278 - (((*v278 >> 1) & 0x5B6DB6DB) + ((*v278 >> 2) & 0x9249249));
            v275 = ((v279 + (v279 >> 3)) & 0xC71C71C7) + v275 - 63 * (((v279 + (v279 >> 3)) & 0xC71C71C7) / 0x3F);
          }

          --v278;
        }

        while (v278 >= STACK[0x2E8]);
        BlueFin::GlSignalIdSet::GetSvIdSet(&STACK[0x440], &STACK[0x2E8]);
        BlueFin::GlPeNavUtil::ComputeDops(v60);
        if (fmaxf(*&STACK[0x8AC], *&STACK[0x8B8]) <= 2.0 || v273 <= v275)
        {
          break;
        }

        v241 = STACK[0x3E8];
        LOBYTE(v242) = STACK[0x3F0];
      }

      v280 = 0;
      *(v60 + 264) |= 0x800u;
      *v522 = v513;
      *(v522 + 1) = v513;
      *(v522 + 2) = v511;
      v281 = vdupq_n_s32(0x43C80000u);
      do
      {
        *(v522 + v280 + 60) = 0uLL;
        v282 = v522 + v280 + 60;
        *(v282 - 28) = 0;
        *(v282 - 36) = 0;
        *(v282 - 20) = 0;
        *(v282 - 12) = v282;
        *(v282 - 4) = 19;
        *(v282 + 16) = 0uLL;
        *(v282 + 32) = 0uLL;
        *(v282 + 48) = 0uLL;
        *(v282 + 64) = 0uLL;
        *(v282 + 76) = 0uLL;
        *(v282 + 92) = v281;
        *(v282 + 108) = v281;
        v280 += 168;
        *(v282 + 124) = 0;
      }

      while (v280 != 29568);
      v283 = *(v60 + 40);
      v284 = v60 + *(*v60 - 24);
      v285 = *(v284 + 88);
      v286 = *(v60 + 240);
      v287 = *(v60 + 264);
      *&STACK[0x878] = *(v60 + 8);
      STACK[0x870] = v522;
      STACK[0x888] = v283;
      *&STACK[0x890] = 0uLL;
      LODWORD(STACK[0x8A0]) = v287;
      STACK[0x8A8] = 0;
      *&STACK[0x8B0] = *(v284 + 8);
      STACK[0x8C0] = *(v284 + 24);
      STACK[0x8C8] = v285;
      LODWORD(STACK[0x8D0]) = v286;
      STACK[0x8D8] = &STACK[0x8E4];
      LOBYTE(STACK[0x8E0]) = 8;
      *&STACK[0x8F4] = 0u;
      *&STACK[0x8E4] = 0u;
      BlueFin::GlPeLsqSubsets::RunLsqSubsets(&STACK[0x870], &STACK[0x2E8], 3, *(v60 + 256), ((*(v524 + 11) & 0x80) == 0) & ~*(v60 + 246));
      *(v60 + 264) &= ~0x800u;
      v288 = BlueFin::GlPeSubsets::Find(v522, &STACK[0x2E8]);
      if (v288)
      {
        v289 = v60 + *(*v60 - 24);
        *(v289 + 8) = *v288;
        *(v289 + 24) = *(v288 + 16);
        if (*(v60 + 264))
        {
          *(v60 + 240) = (*(v288 + 120) * 1000.0);
        }
      }

      else if (BlueFin::GlUtils::m_ucEnabled)
      {
        BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
      }

      v241 = STACK[0x3E8];
      v242 = LOBYTE(STACK[0x3F0]);
      goto LABEL_290;
    }
  }

  else if (((*(v60 + 244) ^ 1) & *(v60 + 248) & 1) != 0 || (*(v60 + 176) & 1) == 0)
  {
    goto LABEL_271;
  }

  if (*(v60 + 177) == 1 && *(v60 + 179) == 1)
  {
    goto LABEL_271;
  }

LABEL_290:
  v290 = 0;
  v291 = &v241[v242 - 1];
  do
  {
    if (*v291)
    {
      v292 = *v291 - (((*v291 >> 1) & 0x5B6DB6DB) + ((*v291 >> 2) & 0x9249249));
      v290 = ((v292 + (v292 >> 3)) & 0xC71C71C7) + v290 - 63 * (((v292 + (v292 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v291;
  }

  while (v291 >= v241);
  if (*(v60 + 244))
  {
    v293 = 9;
  }

  else
  {
    v293 = 8;
  }

  if (v293 > v290 && (v290 < 7u || (*(v60 + 244) & 1) != 0 || (*(v60 + 248) & 1) == 0 || (*(v60 + 176) & 1) == 0) && !*STACK[0x358])
  {
    v294 = LOBYTE(STACK[0x360]);
    if (v294 >= 2)
    {
      v295 = v294 - 1;
      v296 = (STACK[0x358] + 4);
      do
      {
        if (*v296++)
        {
          goto LABEL_317;
        }
      }

      while (--v295);
    }

    if (*(v60 + 176) != 1 || *(v60 + 177) == 1 && *(v60 + 179) == 1)
    {
      BlueFin::GlPeFirstFix::ClassicFix(&STACK[0x870], v60, &STACK[0x2E8], v522, *(v524 + 32));
      if (!*STACK[0x888])
      {
        v298 = LOBYTE(STACK[0x890]);
        if (v298 < 2)
        {
          goto LABEL_316;
        }

        v299 = v298 - 1;
        v300 = (STACK[0x888] + 4);
        while (!*v300++)
        {
          if (!--v299)
          {
            goto LABEL_316;
          }
        }
      }

      BlueFin::GlPeCand::Submit(&STACK[0x340], &STACK[0x870], 0);
LABEL_316:
      v241 = STACK[0x3E8];
      v242 = LOBYTE(STACK[0x3F0]);
    }
  }

LABEL_317:
  v302 = 0;
  LOBYTE(a57) = 19;
  *(&a57 + 4) = 0u;
  *&STACK[0x2AC] = 0u;
  *&STACK[0x2BC] = 0u;
  *&STACK[0x2CC] = 0u;
  *&STACK[0x2D8] = 0u;
  v303 = &v241[v242 - 1];
  a56 = (&a57 + 4);
  do
  {
    if (*v303)
    {
      v304 = *v303 - (((*v303 >> 1) & 0x5B6DB6DB) + ((*v303 >> 2) & 0x9249249));
      v302 = ((v304 + (v304 >> 3)) & 0xC71C71C7) + v302 - 63 * (((v304 + (v304 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v303;
  }

  while (v303 >= v241);
  if (*(v60 + 244))
  {
    v305 = 9;
  }

  else
  {
    v305 = 8;
  }

  if (v305 > v302 && (v302 < 7u || (*(v60 + 244) & 1) != 0 || (*(v60 + 248) & 1) == 0 || *(v60 + 176) != 1))
  {
    goto LABEL_331;
  }

  BlueFin::GlPeFirstFix::IsolationFix(&STACK[0x870], v60, &STACK[0x2E8], v522);
  if (*STACK[0x888])
  {
LABEL_330:
    BlueFin::GlSetBase::GlSetBase(vars0, &vars0[12], 0x13u, &STACK[0x2E8]);
    STACK[0x440] = &STACK[0x44C];
    LOBYTE(STACK[0x448]) = 19;
    *&STACK[0x44C] = 0u;
    *&STACK[0x45C] = 0u;
    *&STACK[0x46C] = 0u;
    *&STACK[0x47C] = 0u;
    *&STACK[0x488] = 0u;
    BlueFin::GlSetBase::OperatorBinaryXor(vars0, &STACK[0x440], &STACK[0x888]);
    BlueFin::GlSetBase::operator=(vars0, &STACK[0x440]);
    v306 = *&STACK[0x44C];
    *(&a18 + 4) = *&STACK[0x45C];
    v307 = *&STACK[0x47C];
    *(&a19 + 4) = *&STACK[0x46C];
    *(&a20 + 4) = v307;
    a21 = *&STACK[0x488];
    *&vars0[12] = v306;
    BlueFin::GlSetBase::operator=(&a56, vars0);
    v308 = *(&a18 + 4);
    v309 = *(&a20 + 4);
    *&STACK[0x2BC] = *(&a19 + 4);
    *&STACK[0x2CC] = v309;
    *&STACK[0x2D8] = a21;
    *(&a57 + 4) = *&vars0[12];
    *&STACK[0x2AC] = v308;
    BlueFin::GlPeRepeatedIsol::Submit((v60 + 272), a56, a57);
    BlueFin::GlPeCand::Submit(&STACK[0x340], &STACK[0x870], 0);
    goto LABEL_331;
  }

  v325 = LOBYTE(STACK[0x890]);
  if (v325 >= 2)
  {
    v326 = v325 - 1;
    v327 = (STACK[0x888] + 4);
    do
    {
      if (*v327++)
      {
        goto LABEL_330;
      }
    }

    while (--v326);
  }

  memset_pattern16((v60 + 274), &memset_pattern_2, 6uLL);
  *(v60 + 282) = 0;
  *(v60 + 280) = 0;
  *(v60 + 284) = 0;
  *(v60 + 292) = 0;
  BlueFin::GlPeFirstFix::SelectBase(&STACK[0x780], v60, &STACK[0x1060], STACK[0x2E8], STACK[0x2F0], 0x10u, 0);
  BlueFin::GlSetBase::GlSetBase(vars0, &vars0[12], 0x13u, &STACK[0x780]);
  STACK[0x440] = &STACK[0x44C];
  LOBYTE(STACK[0x448]) = 19;
  *&STACK[0x44C] = 0u;
  *&STACK[0x45C] = 0u;
  *&STACK[0x46C] = 0u;
  *&STACK[0x47C] = 0u;
  *&STACK[0x488] = 0u;
  BlueFin::GlSetBase::OperatorBinaryXor(vars0, &STACK[0x440], &STACK[0x2E8]);
  BlueFin::GlSetBase::operator=(vars0, &STACK[0x440]);
  v329 = 0;
  v330 = *&STACK[0x44C];
  *(&a18 + 4) = *&STACK[0x45C];
  v331 = *&STACK[0x47C];
  *(&a19 + 4) = *&STACK[0x46C];
  *(&a20 + 4) = v331;
  a21 = *&STACK[0x488];
  *&vars0[12] = v330;
  v332 = (*vars0 + 4 * vars0[8] - 4);
  do
  {
    if (*v332)
    {
      v333 = *v332 - (((*v332 >> 1) & 0x5B6DB6DB) + ((*v332 >> 2) & 0x9249249));
      v329 = ((v333 + (v333 >> 3)) & 0xC71C71C7) + v329 - 63 * (((v333 + (v333 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v332;
  }

  while (v332 >= *vars0);
  if (!v329)
  {
    goto LABEL_331;
  }

  v334 = 0;
  *v522 = v513;
  *(v522 + 1) = v513;
  *(v522 + 2) = v511;
  v335 = vdupq_n_s32(0x43C80000u);
  do
  {
    *(v522 + v334 + 60) = 0uLL;
    v336 = v522 + v334 + 60;
    *(v336 - 28) = 0;
    *(v336 - 36) = 0;
    *(v336 - 20) = 0;
    *(v336 - 12) = v336;
    *(v336 - 4) = 19;
    *(v336 + 16) = 0uLL;
    *(v336 + 32) = 0uLL;
    *(v336 + 48) = 0uLL;
    *(v336 + 64) = 0uLL;
    *(v336 + 76) = 0uLL;
    *(v336 + 92) = v335;
    *(v336 + 108) = v335;
    v334 += 168;
    *(v336 + 124) = 0;
  }

  while (v334 != 29568);
  v337 = *(v60 + 40);
  v338 = v60 + *(*v60 - 24);
  v339 = *(v338 + 88);
  v340 = *(v60 + 240);
  v341 = *(v60 + 264);
  *vars0 = v522;
  *&vars0[8] = *(v60 + 8);
  *&a19 = 0;
  a18 = v337;
  DWORD2(a19) = v341;
  *&a20 = 0;
  *(&a20 + 8) = *(v338 + 8);
  *(&a21 + 1) = *(v338 + 24);
  a22 = v339;
  LODWORD(a23) = v340;
  *(&a23 + 1) = &a24 + 4;
  LOBYTE(a24) = 8;
  *(&a25 + 4) = 0u;
  *(&a24 + 4) = 0u;
  BlueFin::GlPeLsqSubsets::RunLsqSubsets(vars0, &STACK[0x2E8], 1, *(v60 + 256), (*(v60 + 246) & 1) == 0);
  v342 = 0;
  v343 = (STACK[0x780] + 4 * LOBYTE(STACK[0x788]) - 4);
  do
  {
    if (*v343)
    {
      v344 = *v343 - (((*v343 >> 1) & 0x5B6DB6DB) + ((*v343 >> 2) & 0x9249249));
      v342 = ((v344 + (v344 >> 3)) & 0xC71C71C7) + v342 - 63 * (((v344 + (v344 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v343;
  }

  while (v343 >= STACK[0x780]);
  if (*(v60 + 244))
  {
    v345 = 9;
  }

  else
  {
    v345 = 8;
  }

  if (v345 <= v342 || v342 >= 7u && (*(v60 + 244) & 1) == 0 && (*(v60 + 248) & 1) != 0 && *(v60 + 176) == 1)
  {
    BlueFin::GlPeFirstFix::IsolationFix(&STACK[0x440], v60, &STACK[0x780], v522);
    *&STACK[0x870] = *&STACK[0x440];
    STACK[0x880] = STACK[0x450];
    BlueFin::GlSetBase::operator=(&STACK[0x888], &STACK[0x458]);
    *&STACK[0x8A4] = *&STACK[0x474];
    *&STACK[0x8B4] = *&STACK[0x484];
    *&STACK[0x8C4] = *&STACK[0x494];
    *&STACK[0x894] = *&STACK[0x464];
    v346 = *&STACK[0x4B0];
    *&STACK[0x8D0] = *&STACK[0x4A0];
    *&STACK[0x8E0] = v346;
    v347 = *&STACK[0x4D0];
    *&STACK[0x8F0] = *&STACK[0x4C0];
    *&STACK[0x900] = v347;
    LOBYTE(STACK[0x910]) = STACK[0x4E0];
    if (!*STACK[0x888])
    {
      v481 = LOBYTE(STACK[0x890]);
      if (v481 < 2)
      {
        goto LABEL_556;
      }

      v482 = v481 - 1;
      v483 = (STACK[0x888] + 4);
      while (!*v483++)
      {
        if (!--v482)
        {
          goto LABEL_556;
        }
      }
    }

    BlueFin::GlSetBase::GlSetBase(&STACK[0x1000], &STACK[0x100C], 0x13u, &STACK[0x780]);
    STACK[0x440] = &STACK[0x44C];
    LOBYTE(STACK[0x448]) = 19;
    *&STACK[0x44C] = 0u;
    *&STACK[0x45C] = 0u;
    *&STACK[0x46C] = 0u;
    *&STACK[0x47C] = 0u;
    *&STACK[0x488] = 0u;
    BlueFin::GlSetBase::OperatorBinaryXor(&STACK[0x1000], &STACK[0x440], &STACK[0x888]);
    BlueFin::GlSetBase::operator=(&STACK[0x1000], &STACK[0x440]);
    v348 = *&STACK[0x44C];
    *&STACK[0x101C] = *&STACK[0x45C];
    v349 = *&STACK[0x47C];
    *&STACK[0x102C] = *&STACK[0x46C];
    *&STACK[0x103C] = v349;
    *&STACK[0x1048] = *&STACK[0x488];
    *&STACK[0x100C] = v348;
    BlueFin::GlSetBase::operator=(&a56, &STACK[0x1000]);
    v350 = *&STACK[0x101C];
    v351 = *&STACK[0x103C];
    *&STACK[0x2BC] = *&STACK[0x102C];
    *&STACK[0x2CC] = v351;
    *&STACK[0x2D8] = *&STACK[0x1048];
    *(&a57 + 4) = *&STACK[0x100C];
    *&STACK[0x2AC] = v350;
    BlueFin::GlPeRepeatedIsol::Submit((v60 + 272), a56, a57);
  }

LABEL_556:
  v485 = STACK[0x888];
  if (*STACK[0x888])
  {
LABEL_557:
    BlueFin::GlPeCand::Submit(&STACK[0x340], &STACK[0x870], 0);
    goto LABEL_331;
  }

  v486 = LOBYTE(STACK[0x890]);
  if (v486 < 2)
  {
LABEL_562:
    v489 = 0;
    v490 = (STACK[0x780] + 4 * LOBYTE(STACK[0x788]) - 4);
    do
    {
      if (*v490)
      {
        v491 = *v490 - (((*v490 >> 1) & 0x5B6DB6DB) + ((*v490 >> 2) & 0x9249249));
        v489 = ((v491 + (v491 >> 3)) & 0xC71C71C7) + v489 - 63 * (((v491 + (v491 >> 3)) & 0xC71C71C7) / 0x3F);
      }

      --v490;
    }

    while (v490 >= STACK[0x780]);
    v492 = *(v524 + 32);
    if (v492 < v489)
    {
      BlueFin::GlPeFirstFix::ClassicFix(&STACK[0x440], v60, &STACK[0x780], v522, v492);
      *&STACK[0x870] = *&STACK[0x440];
      STACK[0x880] = STACK[0x450];
      BlueFin::GlSetBase::operator=(&STACK[0x888], &STACK[0x458]);
      *&STACK[0x8A4] = *&STACK[0x474];
      *&STACK[0x8B4] = *&STACK[0x484];
      *&STACK[0x8C4] = *&STACK[0x494];
      *&STACK[0x894] = *&STACK[0x464];
      v493 = *&STACK[0x4B0];
      *&STACK[0x8D0] = *&STACK[0x4A0];
      *&STACK[0x8E0] = v493;
      v494 = *&STACK[0x4D0];
      *&STACK[0x8F0] = *&STACK[0x4C0];
      *&STACK[0x900] = v494;
      LOBYTE(STACK[0x910]) = STACK[0x4E0];
      v485 = STACK[0x888];
      if (*STACK[0x888])
      {
        goto LABEL_557;
      }
    }
  }

  else
  {
    v487 = 4 * v486;
    v488 = 4;
    while (!*(v485 + v488))
    {
      v488 += 4;
      if (v487 == v488)
      {
        goto LABEL_562;
      }
    }
  }

  v495 = LOBYTE(STACK[0x890]);
  if (v495 >= 2)
  {
    v496 = v495 - 1;
    v497 = (v485 + 4);
    do
    {
      if (*v497++)
      {
        goto LABEL_557;
      }
    }

    while (--v496);
  }

LABEL_331:
  if (!*STACK[0x358])
  {
    v321 = LOBYTE(STACK[0x360]);
    if (v321 < 2)
    {
      goto LABEL_503;
    }

    v322 = v321 - 1;
    v323 = (STACK[0x358] + 4);
    while (!*v323++)
    {
      if (!--v322)
      {
        goto LABEL_503;
      }
    }
  }

  v528 = BlueFin::GlPeFirstFix::ComputeNumDof(v60, v522, &STACK[0x340], &STACK[0x358]);
  v514 = *v524;
  v310 = LOBYTE(STACK[0x3E1]);
  *vars0 = 0uLL;
  *&a18 = &a18 + 12;
  BYTE8(a18) = 19;
  *(&a18 + 12) = 0u;
  *(&a19 + 12) = 0u;
  *(&a20 + 12) = 0u;
  *(&a21 + 12) = 0u;
  a23 = 0u;
  *&a24 = &a24 + 12;
  BYTE8(a24) = 19;
  *(&a24 + 12) = 0u;
  *(&a25 + 12) = 0u;
  *(&a27 + 4) = 0u;
  *(&a28 + 4) = 0u;
  a29 = 0u;
  a30 = &a31 + 4;
  LOBYTE(a31) = 19;
  *(&a34 + 4) = 0u;
  *(&a35 + 4) = 0u;
  *(&a31 + 4) = 0u;
  *(&a32 + 4) = 0u;
  *(&a33 + 4) = 0u;
  a36 = 0u;
  a37 = vdupq_n_s32(0x44480000u);
  a38 = 0x4270000044480000;
  a39 = 1137180672;
  a40 = &a41 + 4;
  LOBYTE(a41) = 19;
  *(&a41 + 4) = 0u;
  *(&a42 + 4) = 0u;
  *(&a43 + 4) = 0u;
  *(&a44 + 4) = 0u;
  *(&a45 + 4) = 0u;
  *(&a46 + 4) = 0u;
  *(&a47 + 4) = 0u;
  *(&a48 + 2) = 0u;
  a50 = 0x4974240000000000;
  LOBYTE(a51) = 0;
  *(&a51 + 4) = 0x4974240000000000;
  *(&a51 + 12) = 4294901760;
  a55 = 0;
  v519 = v310;
  if (v310 == 1 && *v516 != 1)
  {
    goto LABEL_390;
  }

  v311 = 0;
  STACK[0x870] = &STACK[0x888];
  STACK[0x878] = &STACK[0x888];
  *&STACK[0x880] = &STACK[0x930];
  *&STACK[0x890] = 0uLL;
  STACK[0x8A0] = &STACK[0x8AC];
  LOBYTE(STACK[0x8A8]) = 19;
  *&STACK[0x8AC] = 0uLL;
  *&STACK[0x8BC] = 0uLL;
  *&STACK[0x8CC] = 0uLL;
  *&STACK[0x8DC] = 0uLL;
  *&STACK[0x8EC] = 0uLL;
  *&STACK[0x8F8] = 0uLL;
  v312 = vdupq_n_s32(0x43C80000u);
  *&STACK[0x908] = v312;
  *&STACK[0x918] = v312;
  v313 = STACK[0x358];
  v314 = (STACK[0x358] + 4 * LOBYTE(STACK[0x360]) - 4);
  LOBYTE(STACK[0x928]) = 0;
  do
  {
    if (*v314)
    {
      v315 = *v314 - (((*v314 >> 1) & 0x5B6DB6DB) + ((*v314 >> 2) & 0x9249249));
      v311 = ((v315 + (v315 >> 3)) & 0xC71C71C7) + v311 - 63 * (((v315 + (v315 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v314;
  }

  while (v314 >= v313);
  if (v311 < 0xEu || (*v516 & 1) == 0)
  {
    *&STACK[0x440] = 0uLL;
    STACK[0x450] = 0;
    STACK[0x458] = vdup_n_s32(0x44FA0000u);
    LODWORD(STACK[0x460]) = -1;
    Fix = BlueFin::GlPeKFAltAsst::altAsstFirstFix(*(v60 + 32), &STACK[0x440], &STACK[0x340], 0x3E8u);
    v317 = *(v60 + 40);
    if (Fix)
    {
      v320 = *&STACK[0x458];
      if ((*(v317 + 48) & 1) == 0 || *(v317 + 8) > v320)
      {
        *(v317 + 48) = 1;
        *(v317 + 8) = v320;
        *v317 = STACK[0x450];
        *(v317 + 44) = 3;
      }
    }

    else if ((*(v317 + 48) & 1) == 0)
    {
      v316 = *(v60 + 264);
      goto LABEL_378;
    }

    v316 = *(v60 + 264) | 4;
LABEL_378:
    v318 = *v516;
    goto LABEL_379;
  }

  v316 = *(v60 + 264) & 0xFFFFFFFB;
  v317 = *(v60 + 40);
  v318 = 1;
LABEL_379:
  v352 = v316 | 0x300;
  *(v60 + 264) = v352;
  *&v353 = *&STACK[0x3BC];
  v354 = *(v60 + 240);
  *&STACK[0x448] = *(v60 + 8);
  STACK[0x440] = &STACK[0x870];
  STACK[0x458] = v317;
  *&STACK[0x460] = 0uLL;
  LODWORD(STACK[0x470]) = v352;
  STACK[0x478] = 0;
  *&STACK[0x480] = *&STACK[0x340];
  STACK[0x490] = STACK[0x350];
  STACK[0x498] = v353;
  LODWORD(STACK[0x4A0]) = v354;
  STACK[0x4A8] = &STACK[0x4B4];
  LOBYTE(STACK[0x4B0]) = 8;
  *&STACK[0x4C4] = 0u;
  *&STACK[0x4B4] = 0u;
  if ((v318 & 1) != 0 && *(v60 + 128) != 2 && BlueFin::GlPeFirstFix::ValidateExtLocWithLs(v60, &STACK[0x340], v516))
  {
    STACK[0x478] = v516;
    v355 = 1;
  }

  else
  {
    v355 = 0;
  }

  BlueFin::GlPeLsqSubsets::RunLsqSubset(&STACK[0x440], &STACK[0x358], 3, 0, *(v60 + 256), 1);
  v356 = BlueFin::GlPeSubsets::Find(&STACK[0x870], &STACK[0x358]);
  v357 = v356;
  *(v60 + 264) &= 0xFFFFFCFF;
  if (!v356)
  {
LABEL_390:
    v362 = 0;
    LOBYTE(v355) = 0;
    goto LABEL_391;
  }

  v358 = *(v356 + 152);
  if (!v355)
  {
    goto LABEL_388;
  }

  if (*(v60 + 128) == 2)
  {
    LOBYTE(v355) = 0;
    goto LABEL_388;
  }

  if (*v516)
  {
    v391 = *(v60 + 80);
    *&STACK[0x1000] = *(v60 + 64);
    STACK[0x1010] = v391;
  }

  else
  {
    *&STACK[0x1000] = 0uLL;
    STACK[0x1010] = 0;
  }

  BlueFin::lla2ned(v356, &STACK[0x1000], 0, &STACK[0x780]);
  v475 = sqrt(*&STACK[0x788] * *&STACK[0x788] + *&STACK[0x780] * *&STACK[0x780]);
  v476 = v475;
  if (v475 > 200.0)
  {
    GlCustomLog(14, "Reject WLSQ in GlPeFirstFix::Finalise %.2f\n", v475);
  }

  v477 = 1;
  if ((*(v60 + 120) & 0xFFFFFFFE) != 2 && v519 && *&STACK[0x3C0] + *&STACK[0x3C0] < *(v357 + 128))
  {
    GlCustomLog(14, "Reject WLSQ in GlPeFirstFix::Finalise due to large EA\n");
    v477 = 0;
  }

  if (v475 > 200.0)
  {
    LOBYTE(v355) = 0;
  }

  else
  {
    if ((*(v60 + 120) & 0xFFFFFFFE) == 2)
    {
      v478 = *&STACK[0x3C0];
      v479 = *&STACK[0x3C0];
      if (v475 > 30.0)
      {
        v476 = (v476 + -30.0) * v476 / (sqrt(vaddvq_f64(vmulq_f64(*(v60 + 88), *(v60 + 88)))) + v476) + 30.0;
      }

      v480 = v479 * 5.0;
      if (v476 < v479 * 5.0)
      {
        v480 = v476;
      }

      if (v480 >= v479)
      {
        v478 = v480;
      }

      *a37.i32 = v478;
      *&a37.i32[3] = v478 * 0.7;
      *&a37.i32[2] = v478 * 0.7;
      LOBYTE(v355) = 1;
      if ((v477 & 1) == 0)
      {
        goto LABEL_549;
      }

LABEL_388:
      v359 = 0;
      v360 = 0;
      *vars0 = *v357;
      v361 = *(v357 + 16);
      HIDWORD(a36) = *(v357 + 124);
      a17 = v361;
      *&a36 = *(v357 + 112);
      v362 = v358 > 400.0;
      if (v355)
      {
        goto LABEL_396;
      }

LABEL_395:
      a37.i32[0] = STACK[0x3C0];
      a37.i64[1] = STACK[0x3C8];
      v360 = v359;
      goto LABEL_396;
    }

    LOBYTE(v355) = 0;
    if (v477)
    {
      goto LABEL_388;
    }
  }

LABEL_549:
  v362 = v358 > 400.0;
LABEL_391:
  GlCustomLog(14, "Not WLSQ in GlPeFirstFix::Finalise\n");
  *vars0 = *&STACK[0x340];
  HIDWORD(a36) = STACK[0x3BC];
  a17 = *&STACK[0x350];
  *&a36 = STACK[0x3B0];
  v359 = *(v60 + 128);
  if (v359 == 1)
  {
    *(v60 + 128) = 0;
  }

  else
  {
    v359 = 1;
  }

  v360 = 1;
  if ((v355 & 1) == 0)
  {
    goto LABEL_395;
  }

LABEL_396:
  v363 = STACK[0x3D0];
  a37.i32[1] = STACK[0x3C4];
  LODWORD(a38) = v363;
  BlueFin::GlSetBase::operator=(&a18, &STACK[0x358]);
  v364 = *&STACK[0x394];
  *(&a20 + 12) = *&STACK[0x384];
  *(&a21 + 12) = v364;
  a23 = *&STACK[0x3A0];
  v365 = *&STACK[0x374];
  *(&a18 + 12) = *&STACK[0x364];
  *(&a19 + 12) = v365;
  STACK[0x870] = &STACK[0x87C];
  LOBYTE(STACK[0x878]) = 19;
  *&STACK[0x87C] = 0u;
  *&STACK[0x88C] = 0u;
  *&STACK[0x89C] = 0u;
  *&STACK[0x8AC] = 0u;
  *&STACK[0x8B8] = 0u;
  BlueFin::GlSetBase::operator=(&a30, &STACK[0x870]);
  v366 = *&STACK[0x8AC];
  *(&a33 + 4) = *&STACK[0x89C];
  *(&a34 + 4) = v366;
  a35 = *&STACK[0x8B8];
  v367 = *&STACK[0x88C];
  *(&a31 + 4) = *&STACK[0x87C];
  *(&a32 + 4) = v367;
  v368 = *&STACK[0x3B8];
  DWORD2(a36) = STACK[0x3B8];
  if (*(v60 + 244) == 1)
  {
    HIDWORD(a38) = fmaxf(*&STACK[0x3D4], 0.5);
  }

  if (*(v60 + 176) == 1 && (*(v60 + 179) & 1) == 0)
  {
    v369 = *(v60 + 177) ^ 1;
  }

  else
  {
    v369 = 0;
  }

  a53 = v369 & 1;
  HIWORD(a51) = v528;
  v370 = *(v60 + 48);
  v371 = *(v370 + 2);
  v372 = *(v370 + 10);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
    v368 = *(&a36 + 2);
  }

  *&v373 = *(&a36 + 3);
  STACK[0xF80] = vars0;
  STACK[0xF88] = v373;
  LODWORD(STACK[0xF90]) = (v368 * 1000.0);
  LOBYTE(STACK[0xF94]) = 12;
  LODWORD(STACK[0xF98]) = 133330;
  *&STACK[0x880] = 0u;
  *&STACK[0x870] = 0u;
  *&STACK[0x890] = vdupq_n_s64(0x4079000000000000uLL);
  STACK[0x8A0] = 0x4079000000000000;
  STACK[0x8B0] = 0x6400000000;
  bzero(&STACK[0x8B8], 0x328uLL);
  STACK[0x8A8] = &STACK[0x8B8];
  STACK[0xBE8] = 0x6400000000;
  bzero(&STACK[0xBF0], 0x328uLL);
  STACK[0xBE0] = &STACK[0xBF0];
  LODWORD(STACK[0xF18]) = 0;
  LODWORD(STACK[0xF20]) = 0;
  STACK[0xF28] = &STACK[0xF34];
  LOBYTE(STACK[0xF30]) = 8;
  *&STACK[0xF34] = 0u;
  *&STACK[0xF44] = 0u;
  *&STACK[0xF58] = xmmword_298A41DA0;
  STACK[0xF68] = vdup_n_s32(0x42C60000u);
  LODWORD(STACK[0xF70]) = 1120272384;
  v374 = v372 * 0.000000001;
  if (BlueFin::GlPeLsq::LsVel(v60 + 136, &STACK[0xF80]) && ((v375 = *&STACK[0x878], v376 = *&STACK[0x870], v377 = v375 * v375, v378 = v376 * v376, v379 = v375 * v375 + v376 * v376, v380 = sqrtf(v379), v381 = *&STACK[0x8A0], v382 = *&STACK[0x898], v383 = *&STACK[0x8A0] + *&STACK[0x898], (*(v60 + 264) & 2) != 0) || fmax(v380, 5.0) > fabs(*&STACK[0x880])) && v383 < 25.0)
  {
    BYTE12(a51) = 1;
    LOBYTE(a51) = 1;
    *(&a51 + 1) = v380;
    v384 = atan2(v375, v376);
    *&a50 = v384;
    *(&a51 + 2) = v383;
    v385 = (v381 * v378 + v382 * v377) / ((v380 * v380) * (v380 * v380));
    *(&a50 + 1) = v385;
    if (v374 * 1000000000.0 > 97.0 && v374 > sqrt(*&STACK[0x890]) * 3.33564095 * 0.000000001 && v380 < 25.0)
    {
      v386 = *&STACK[0x888] * 3.33564095 * 0.000000001;
      if (fabs(v386) < 0.00001)
      {
        BlueFin::GlPeOscMgr::SetOscOff(*(v60 + 48), v386, 0.000000098, 0);
      }
    }
  }

  else
  {
    if (*&STACK[0x890] >= 1000000.0)
    {
      v387.f64[0] = v371 * 0.000000001;
      v387.f64[1] = v374 * 1000000000.0;
      v388 = vmulq_f64(v387, xmmword_298A43780);
      v387.f64[1] = v388.f64[1];
      v387.f64[0] = 0.299792458;
      *&STACK[0x888] = vmulq_f64(v388, v387);
    }

    STACK[0x878] = 0;
    STACK[0x870] = 0;
    STACK[0x880] = 0;
  }

  if (*(v60 + 246))
  {
    goto LABEL_417;
  }

  v390 = *&STACK[0x3B0];
  if (*(v60 + 176) == 1 && (*(v60 + 179) & 1) == 0 && *(v60 + 178) != 1)
  {
    goto LABEL_430;
  }

  *&STACK[0x440] = 0uLL;
  STACK[0x450] = 0;
  STACK[0x458] = vdup_n_s32(0x44FA0000u);
  LODWORD(STACK[0x460]) = -1;
  if (BlueFin::GlPeKFAltAsst::altAsstFirstFix(*(v60 + 32), &STACK[0x440], &STACK[0x340], 0x3E8u))
  {
    v389 = 1;
    *(v60 + 308) = 1;
    *(v60 + 312) = *(v60 + *(*v60 - 24) + 200);
    goto LABEL_431;
  }

  if (*(v60 + 308) != 1)
  {
    if (v390 <= 10.0)
    {
      goto LABEL_417;
    }

LABEL_430:
    v389 = 1;
    goto LABEL_431;
  }

  if (v390 > 10.0 || (*(v60 + *(*v60 - 24) + 200) - *(v60 + 312)) >> 3 < 0x753)
  {
    goto LABEL_430;
  }

LABEL_417:
  v389 = 0;
LABEL_431:
  STACK[0x1000] = &STACK[0x100C];
  v392 = &a50;
  LOBYTE(STACK[0x1008]) = 19;
  *&STACK[0x100C] = 0u;
  *&STACK[0x101C] = 0u;
  *&STACK[0x102C] = 0u;
  *&STACK[0x103C] = 0u;
  v393 = 147;
  *&STACK[0x1048] = 0u;
  do
  {
    *(&STACK[0x100C] + (v393 >> 5)) |= 1 << v393;
    ++v393;
  }

  while (v393 != 161);
  BlueFin::GlSetBase::GlSetBase(&STACK[0x780], &STACK[0x78C], 0x13u, &STACK[0x1000]);
  STACK[0x440] = &STACK[0x44C];
  LOBYTE(STACK[0x448]) = 19;
  *&STACK[0x44C] = 0u;
  *&STACK[0x45C] = 0u;
  *&STACK[0x46C] = 0u;
  *&STACK[0x47C] = 0u;
  *&STACK[0x488] = 0u;
  BlueFin::GlSetBase::OperatorBinaryInversion(&STACK[0x780], &STACK[0x440]);
  BlueFin::GlSetBase::operator=(&STACK[0x780], &STACK[0x440]);
  v394 = *&STACK[0x44C];
  *&STACK[0x79C] = *&STACK[0x45C];
  v395 = *&STACK[0x47C];
  *&STACK[0x7AC] = *&STACK[0x46C];
  *&STACK[0x7BC] = v395;
  *&STACK[0x7C8] = *&STACK[0x488];
  *&STACK[0x78C] = v394;
  BlueFin::GlSignalIdSet::setSignalIdLimits(&STACK[0x780]);
  BlueFin::GlSetBase::GlSetBase(&STACK[0x818], &STACK[0x824], 0x13u, &STACK[0x358]);
  STACK[0x440] = &STACK[0x44C];
  LOBYTE(STACK[0x448]) = 19;
  *&STACK[0x44C] = 0u;
  *&STACK[0x45C] = 0u;
  *&STACK[0x46C] = 0u;
  *&STACK[0x47C] = 0u;
  *&STACK[0x488] = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&STACK[0x818], &STACK[0x440], &STACK[0x780]);
  BlueFin::GlSetBase::operator=(&STACK[0x818], &STACK[0x440]);
  v396 = *&STACK[0x44C];
  *&STACK[0x834] = *&STACK[0x45C];
  v397 = *&STACK[0x47C];
  *&STACK[0x844] = *&STACK[0x46C];
  *&STACK[0x854] = v397;
  *&STACK[0x860] = *&STACK[0x488];
  *&STACK[0x824] = v396;
  if (v519)
  {
    if (!*STACK[0x818])
    {
      v398 = LOBYTE(STACK[0x820]);
      if (v398 < 2)
      {
        goto LABEL_441;
      }

      v399 = v398 - 1;
      v400 = (STACK[0x818] + 4);
      while (!*v400++)
      {
        if (!--v399)
        {
          goto LABEL_441;
        }
      }
    }

    if (!v360)
    {
      goto LABEL_490;
    }
  }

LABEL_441:
  v402 = v389 ^ 1;
  v403 = 5.0;
  if (v528 > 1)
  {
    v402 = 1;
  }

  if ((v402 & 1) == 0)
  {
    if (v528 < 0)
    {
      v404 = *(*(v60 + 40) + 8);
      if (v404 < 100.0)
      {
        v404 = 100.0;
      }

      v403 = v404;
    }

    else if (v528)
    {
      v403 = 10.0;
    }

    else
    {
      v403 = 50.0;
    }
  }

  STACK[0xFA0] = &STACK[0xFAC];
  LOBYTE(STACK[0xFA8]) = 19;
  *&STACK[0xFAC] = 0u;
  *&STACK[0xFBC] = 0u;
  *&STACK[0xFCC] = 0u;
  *&STACK[0xFDC] = 0u;
  v405 = 147;
  *&STACK[0xFE8] = 0u;
  do
  {
    *(&STACK[0xFAC] + (v405 >> 5)) |= 1 << v405;
    ++v405;
  }

  while (v405 != 161);
  BlueFin::GlSetBase::GlSetBase(&STACK[0x1000], &STACK[0x100C], 0x13u, &STACK[0xFA0]);
  STACK[0x440] = &STACK[0x44C];
  LOBYTE(STACK[0x448]) = 19;
  *&STACK[0x44C] = 0u;
  *&STACK[0x45C] = 0u;
  *&STACK[0x46C] = 0u;
  *&STACK[0x47C] = 0u;
  *&STACK[0x488] = 0u;
  BlueFin::GlSetBase::OperatorBinaryInversion(&STACK[0x1000], &STACK[0x440]);
  BlueFin::GlSetBase::operator=(&STACK[0x1000], &STACK[0x440]);
  v406 = *&STACK[0x44C];
  *&STACK[0x101C] = *&STACK[0x45C];
  v407 = *&STACK[0x47C];
  *&STACK[0x102C] = *&STACK[0x46C];
  *&STACK[0x103C] = v407;
  *&STACK[0x1048] = *&STACK[0x488];
  *&STACK[0x100C] = v406;
  BlueFin::GlSignalIdSet::setSignalIdLimits(&STACK[0x1000]);
  BlueFin::GlSetBase::GlSetBase(&STACK[0x780], &STACK[0x78C], 0x13u, &STACK[0x358]);
  STACK[0x440] = &STACK[0x44C];
  LOBYTE(STACK[0x448]) = 19;
  *&STACK[0x44C] = 0u;
  *&STACK[0x45C] = 0u;
  *&STACK[0x46C] = 0u;
  *&STACK[0x47C] = 0u;
  *&STACK[0x488] = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&STACK[0x780], &STACK[0x440], &STACK[0x1000]);
  BlueFin::GlSetBase::operator=(&STACK[0x780], &STACK[0x440]);
  v408 = *&STACK[0x44C];
  *&STACK[0x79C] = *&STACK[0x45C];
  v409 = *&STACK[0x47C];
  *&STACK[0x7AC] = *&STACK[0x46C];
  *&STACK[0x7BC] = v409;
  *&STACK[0x7C8] = *&STACK[0x488];
  *&STACK[0x78C] = v408;
  v410 = v528;
  if (!*STACK[0x780])
  {
    v411 = LOBYTE(STACK[0x788]);
    if (v411 < 2)
    {
LABEL_458:
      v403 = v403 * 5.0;
    }

    else
    {
      v412 = v411 - 1;
      v413 = (STACK[0x780] + 4);
      while (!*v413++)
      {
        if (!--v412)
        {
          goto LABEL_458;
        }
      }
    }
  }

  v415 = *a37.i32;
  v416 = v403 * *&a36;
  if ((v403 * *&a36) < *a37.i32)
  {
    v416 = *a37.i32;
  }

  if (v362)
  {
    v416 = 400.0;
  }

  *a37.i32 = v416;
  if (v415 < 400.0 && (*(&a51 + 1) * *(&a51 + 1)) < *(&a51 + 2))
  {
    if (!*STACK[0x818])
    {
      v418 = LOBYTE(STACK[0x820]);
      if (v418 < 2)
      {
        goto LABEL_476;
      }

      v419 = v418 - 1;
      v420 = (STACK[0x818] + 4);
      while (!*v420++)
      {
        if (!--v419)
        {
          goto LABEL_476;
        }
      }
    }

    if ((BlueFin::GlPeFirstFix::m_bReqTimeOutReached & 1) == 0)
    {
      v417 = BlueFin::GlSetBase::operator==(v60 + 320, *(v60 + 8) + 184);
      v410 = v528;
      if (!v417)
      {
        goto LABEL_476;
      }

      v416 = *a37.i32;
    }

    if (v416 > 399.0)
    {
      v416 = 399.0;
    }

    *a37.i32 = v416;
  }

LABEL_476:
  if (!v410)
  {
    if (a17 <= 18288.0)
    {
      v423 = v514;
      if (*(v514 + 72) != 1 || *(v514 + 24) >= 4000.0 || (BlueFin::GlPeTimeManager::GetTime(*(v60 + 24), 1, &STACK[0x440]), STACK[0x788] = 0, STACK[0x780] = &off_2A1F0B5F0, BlueFin::GlPeGnssTime::GetGps(&STACK[0x440], &STACK[0x780]), v423 = v514, ((__PAIR64__(LODWORD(STACK[0x78C]) - *(v514 + 68), STACK[0x788]) - *(v514 + 64)) >> 32) > 0x257) || (BlueFin::lla2ned(v514, vars0, 0, &STACK[0x440]), v422 = sqrt(*&STACK[0x448] * *&STACK[0x448] + *&STACK[0x440] * *&STACK[0x440]), v423 = v514, v422 <= 4000.0))
      {
LABEL_482:
        if (*a37.i32 > *(v423 + 24))
        {
          v424 = *(v60 + 256);
          *(v424 + 12) = 0u;
          *v424 = v424 + 12;
          *(v424 + 8) = 19;
          *(v424 + 28) = 0u;
          *(v424 + 44) = 0u;
          *(v424 + 60) = 0u;
          *(v424 + 76) = 0u;
          *(v424 + 92) = 0u;
          *(v424 + 108) = 0u;
          *(v424 + 122) = 0u;
        }

        goto LABEL_484;
      }

      if (*a37.i32 > v422)
      {
        v422 = *a37.i32;
      }
    }

    else
    {
      v422 = a17;
      if (*a37.i32 > v422)
      {
        v422 = *a37.i32;
      }

      v423 = v514;
    }

    *a37.i32 = v422;
    goto LABEL_482;
  }

LABEL_484:
  v425 = BYTE12(a51) != 1 || *(&a51 + 1) <= 36.0;
  if (!v425 && (*(v60 + 264) & 3) == 1)
  {
    *&STACK[0x440] = 0uLL;
    STACK[0x450] = 0;
    STACK[0x458] = &STACK[0x464];
    LOBYTE(STACK[0x460]) = 19;
    *&STACK[0x464] = 0u;
    *&STACK[0x474] = 0u;
    *&STACK[0x484] = 0u;
    *&STACK[0x494] = 0u;
    *&STACK[0x4A0] = 0u;
    STACK[0x4B0] = &STACK[0x4BC];
    LOBYTE(STACK[0x4B8]) = 19;
    *&STACK[0x4BC] = 0u;
    *&STACK[0x4CC] = 0u;
    *&STACK[0x4DC] = 0u;
    *&STACK[0x4EC] = 0u;
    *&STACK[0x4F8] = 0u;
    STACK[0x508] = &STACK[0x514];
    LOBYTE(STACK[0x510]) = 19;
    *&STACK[0x544] = 0u;
    *&STACK[0x554] = 0u;
    *&STACK[0x534] = 0u;
    *&STACK[0x524] = 0u;
    *&STACK[0x514] = 0u;
    *&STACK[0x560] = 0u;
    *&STACK[0x570] = vdupq_n_s32(0x44480000u);
    STACK[0x580] = 0x4270000044480000;
    LODWORD(STACK[0x588]) = 1137180672;
    STACK[0x590] = &STACK[0x59C];
    LOBYTE(STACK[0x598]) = 19;
    *&STACK[0x59C] = 0u;
    *&STACK[0x5AC] = 0u;
    *&STACK[0x5BC] = 0u;
    *&STACK[0x5CC] = 0u;
    *&STACK[0x5DC] = 0u;
    *&STACK[0x5EC] = 0u;
    *&STACK[0x5FC] = 0u;
    *&STACK[0x60A] = 0u;
    STACK[0x620] = 0x4974240000000000;
    LOBYTE(STACK[0x628]) = 0;
    STACK[0x62C] = 0x4974240000000000;
    STACK[0x634] = 4294901760;
    LOBYTE(STACK[0x63C]) = 0;
    BlueFin::GlPeFirstFix::stFirstFixReturn::operator=(vars0, &STACK[0x440]);
    STACK[0x880] = 0;
    STACK[0x870] = 0;
    STACK[0x878] = 0;
  }

LABEL_490:
  if (BYTE12(a51) == 1)
  {
    v517 = *&STACK[0x888];
    v426 = sqrt(*&STACK[0x890]);
    v529 = a37.i32[0];
    v515 = 1.0;
    v520 = a37.i32[1];
    v427 = sqrtf(*(&a51 + 2));
  }

  else
  {
    v427 = *a37.i32;
    v517 = v371 * 0.000000001 * 1000000000.0 * 0.299792458;
    v426 = v374 * 1000000000.0 * 0.299792458;
    v520 = a37.i32[1];
    v515 = *&a37.i32[1];
    v529 = a37.i32[0];
  }

  v428 = *(*v60 - 24);
  v429 = **(v60 + 8);
  v430 = STACK[0x870];
  v431 = STACK[0x878];
  v432 = a38;
  v509 = STACK[0x880];
  if (a51 == 1)
  {
    v433 = sqrtf(*(&a50 + 1));
  }

  else
  {
    v392 = (v60 + v428 + 176);
    v433 = *(v60 + v428 + 184);
  }

  v512 = v433;
  v434 = *v392;
  v435 = v426;
  v436 = *(&a36 + 3);
  v437 = v60 + v428;
  *(v437 + 8) = *vars0;
  *(v437 + 24) = a17;
  v438 = *(v60 + v428 + 188);
  BlueFin::GlPeNavGnssState::NormalizePos((v60 + v428));
  *(v437 + 80) = v529;
  *(v437 + 84) = v520;
  *(v437 + 88) = v436;
  *(v437 + 96) = v432;
  *(v437 + 104) = v430;
  *(v437 + 112) = v431;
  *(v437 + 120) = v509;
  *(v437 + 128) = v427;
  *(v437 + 132) = v427;
  *(v437 + 136) = v427;
  *(v437 + 140) = v515;
  *(v437 + 152) = v517;
  *(v437 + 160) = v435;
  *(v437 + 168) = 0x3FF0000000000000;
  *(v437 + 200) = v429;
  *(v437 + 204) = 1;
  *(v437 + 176) = v434;
  *(v437 + 184) = v512;
  *(v437 + 188) = v438;
  *(v437 + 248) = v529;
  *(v437 + 252) = v520;
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  v439 = *(v60 + 256);
  BlueFin::GlSetBase::operator=(&a40, v439);
  *(&a41 + 4) = *(v439 + 12);
  v440 = *(v439 + 28);
  v441 = *(v439 + 44);
  v442 = *(v439 + 60);
  a45 = *(v439 + 72);
  *(&a43 + 4) = v441;
  *(&a44 + 4) = v442;
  *(&a42 + 4) = v440;
  a46 = *(v439 + 88);
  a47 = *(v439 + 104);
  a48 = *(v439 + 120);
  a49 = *(v439 + 136);
  BlueFin::GlPeFirstFix::stFirstFixReturn::operator=(v526, vars0);
  v443 = *(v526 + 304);
  v444 = 0.5;
  if (v443 <= 0.0 && (v444 = -0.5, v443 >= 0.0) || (v444 + v443) <= 399)
  {
    BlueFin::GlSetBase::operator=(v526 + 112, &a56);
    v445 = *(&a57 + 4);
    *(v526 + 140) = *&STACK[0x2AC];
    v446 = *&STACK[0x2CC];
    *(v526 + 156) = *&STACK[0x2BC];
    *(v526 + 172) = v446;
    *(v526 + 184) = *&STACK[0x2D8];
    *(v526 + 124) = v445;
    v447 = v523;
    if (v523)
    {
      v447 = *(v60 + 128);
      v448 = *(v60 + 129);
    }

    else
    {
      v448 = 0;
    }

    v449 = v522;
    *(v526 + 506) = v447;
    *(v526 + 507) = v448;
    v106 = 1;
    goto LABEL_506;
  }

LABEL_503:
  v106 = 0;
  v449 = v522;
LABEL_506:
  v510(v449);
LABEL_507:
  if (v523)
  {
    if (sqrt(vaddvq_f64(vmulq_f64(*(v524[1] + 32), *(v524[1] + 32)))) < *(v526 + 304))
    {
      v450 = v106;
    }

    else
    {
      v450 = 0;
    }

    if (!v521)
    {
      v451 = 0;
      v452 = v106 ^ 1;
      v453 = v106 ^ 1 | v450;
      goto LABEL_517;
    }
  }

  else if (*(v526 + 304) > 0.0)
  {
    LOBYTE(v450) = v106;
  }

  else
  {
    LOBYTE(v450) = 0;
  }

  v453 = 0;
  v451 = v523 ^ 1;
  v452 = v106 ^ 1;
LABEL_517:
  BlueFin::GlSignalIdSet::GetSvIdSet(&STACK[0x1060], &STACK[0x3E8]);
  BlueFin::GlPeNavUtil::ComputeDops(v60);
  if ((v451 | v452 | v521 | (*&STACK[0x8AC] >= 4.0)) & v453)
  {
    v454 = v524[1];
    v455 = *(v454 + 8);
    *v526 = v455;
    v456 = *(v454 + 16);
    *(v526 + 8) = v456;
    v457 = *(v454 + 24);
    *(v526 + 16) = v457;
    v458 = vcvt_f32_f64(*(v454 + 32));
    v530 = v458.i32[0];
    *(v526 + 312) = vrev64_s32(v458);
    *(v526 + 304) = v458.i32[0];
    v459 = *(v454 + 56);
    *(v526 + 308) = v459;
    v460 = 1;
    *(v526 + 504) = 1;
    *(v526 + 508) = v450;
    *(v526 + 506) = 1;
    v461 = v60 + *(*v60 - 24);
    v462 = **(v60 + 8);
    v463 = *(v461 + 136);
    v464 = *(v461 + 88);
    v465 = *(v461 + 96);
    v466 = *(v461 + 152);
    v467 = *(v461 + 160);
    v525 = *(v461 + 176);
    v527 = *(v461 + 192);
    *(v461 + 8) = v455;
    *(v461 + 16) = v456;
    *(v461 + 24) = v457;
    v468 = *(v461 + 128);
    v469 = *(v461 + 184);
    BlueFin::GlPeNavGnssState::NormalizePos(v461);
    *(v461 + 80) = v530;
    *(v461 + 84) = v459;
    *(v461 + 136) = v463;
    *(v461 + 88) = v464;
    *(v461 + 96) = v465;
    *(v461 + 128) = v468;
    *(v461 + 140) = 1065353216;
    *(v461 + 152) = v466;
    *(v461 + 160) = v467;
    *(v461 + 168) = 0x3FF0000000000000;
    *(v461 + 200) = v462;
    *(v461 + 204) = 1;
    *(v461 + 176) = v525;
    *(v461 + 184) = v469;
    *(v461 + 192) = v527;
    *(v461 + 248) = v530;
    *(v461 + 252) = v459;
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
    }
  }

  else if (v106)
  {
    v460 = 1;
  }

  else
  {
    v460 = 0;
    *(v526 + 296) = *(v60 + 300);
    *(v526 + 324) = *(v60 + 304);
  }

  v470 = *(v60 + 8);
  BlueFin::GlSetBase::operator=(v60 + 320, v470 + 184);
  *(v60 + 332) = *(v470 + 196);
  v471 = *(v470 + 212);
  v472 = *(v470 + 228);
  v473 = *(v470 + 244);
  *(v60 + 392) = v470[16];
  *(v60 + 364) = v472;
  *(v60 + 380) = v473;
  *(v60 + 348) = v471;
  return v460;
}

uint64_t *BlueFin::GlPeNavUtil::ComputeDops(BlueFin::GlPeNavUtil *this)
{
  v5 = *(this + 2);
  LODWORD(v9[0]) = 0;
  v9[1] = v11;
  v10 = 8;
  memset(v11, 0, 32);
  *&v11[9] = xmmword_298A41DA0;
  v12 = vdup_n_s32(0x42C60000u);
  v13 = 1120272384;
  BlueFin::stDops::stDops(v14, v9);
  v15 = v5;
  v6 = this + *(*this - 24);
  v7 = *(v6 + 50);
  v9[0] = *(v6 + 11);
  return BlueFin::GlPeDops::GetDops(v14, v7);
}

void BlueFin::lla2ned(double *a1@<X0>, double *a2@<X1>, int a3@<W2>, double *a4@<X8>)
{
  if (a3)
  {
    BlueFin::lla2ecef(a1, &v33);
    v7 = v33;
    v8 = v34;
    v9 = cosval;
    BlueFin::lla2ecef(a2, &v33);
    v10 = v33;
    v11 = v34;
    v12 = cosval;
    v46[0] = (v7 + v33) * 0.5;
    v46[1] = (v8 + v34) * 0.5;
    v46[2] = (v9 + cosval) * 0.5;
    v43 = 0.0;
    v44 = 0.0;
    v45 = 0;
    v13 = BlueFin::ecef2lla(v46, &v43);
    v14 = 0.0;
    v15 = 0.0;
    if (v13)
    {
      v30 = v7;
      v16 = v44 * 0.0174532925;
      v17 = __sincos_stret(v43 * 0.0174532925);
      v18 = __sincos_stret(v16);
      v33 = -(v17.__sinval * v18.__cosval);
      v34 = -(v17.__sinval * v18.__sinval);
      cosval = v17.__cosval;
      v36 = -v18.__sinval;
      v37 = v18.__cosval;
      v38 = 0;
      v39 = -(v17.__cosval * v18.__cosval);
      v40 = -(v17.__cosval * v18.__sinval);
      v42 = 0x300000003;
      v41 = -v17.__sinval;
      v32[0] = v30 - v10;
      v32[1] = v8 - v11;
      *&v32[16] = 0x300000001;
      v32[2] = v9 - v12;
      BlueFin::Matrix::mult(v31, &v33, 1, v32, v30 - v10);
      v15 = *v31;
      v14 = *&v31[4];
    }

    v19 = a1[2];
    v20 = a2[2];
  }

  else
  {
    v21 = *a1;
    v22 = a1[1];
    v23 = *a2;
    v24 = a2[1];
    v19 = a1[2];
    v20 = a2[2];
    v25 = ((v19 + v20) * 0.5 + 6367426.73) * 0.0174532925;
    v26 = cos((*a1 + *a2) * 0.5 * 0.0174532925) * v25;
    v27 = v22 - v24;
    if (vabdd_f64(v22, v24) > 180.0)
    {
      v28 = v27 / 360.0;
      if (v27 / 360.0 <= 0.0)
      {
        v29 = 0.0;
        if (v27 / 360.0 < 0.0)
        {
          v29 = ceil(v28 + -0.5);
        }
      }

      else
      {
        v29 = floor(v28 + 0.5);
      }

      v27 = v27 + v29 * -360.0;
    }

    v15 = (v21 - v23) * v25;
    v14 = v26 * v27;
  }

  *a4 = v15;
  a4[1] = v14;
  a4[2] = v20 - v19;
}

double BlueFin::Matrix::mult(BlueFin::Matrix *this, const BlueFin::Matrix *a2, BOOL a3, const BlueFin::Matrix *a4, double result)
{
  v5 = *(a2 + 33);
  if (v5 != *(a4 + 33))
  {
    DeviceFaultNotify("glpe_matrix_olympic.cpp", 61, "mult", "mLeft.m_NbCols == mRight.m_NbCols");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix_olympic.cpp", 61, "mLeft.m_NbCols == mRight.m_NbCols");
  }

  v6 = *(a2 + 32);
  v7 = *(a4 + 32);
  if (v5 == 3 && v6 == 1 && v7 == 3)
  {
    v19 = *(a2 + 1);
    v20 = *(a2 + 2);
    v21 = *a2 * *(a4 + 4) + *(a4 + 5) * v19;
    v22 = *a2 * *(a4 + 8) + *(a4 + 9) * v19;
    v23 = *a2 * *a4 + *(a4 + 1) * v19 + *(a4 + 2) * v20;
    v24 = v21 + *(a4 + 6) * v20;
    result = v22 + *(a4 + 10) * v20;
    *(this + 16) = 0x300000001;
    *this = v23;
    *(this + 1) = v24;
    *(this + 2) = result;
  }

  else
  {
    if (v6 >= 1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (v7 >= 1)
        {
          v11 = 0;
          v12 = a4;
          do
          {
            result = 0.0;
            if (v5 >= 1)
            {
              v13 = a2;
              v14 = v12;
              v15 = v5;
              do
              {
                v16 = *v13;
                v13 = (v13 + 8);
                v17 = v16;
                v18 = *v14++;
                result = result + v17 * v18;
                --v15;
              }

              while (v15);
            }

            *(this + 4 * i + v11++) = result;
            v12 = (v12 + 32);
          }

          while (v11 != v7);
        }

        a2 = (a2 + 32);
      }
    }

    *(this + 32) = v6;
    *(this + 33) = *(a4 + 32);
  }

  return result;
}

uint64_t BlueFin::Matrix::operator+=(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 132);
  if (v2 != *(result + 132) || (v3 = *(a2 + 128), v3 != *(result + 128)))
  {
    DeviceFaultNotify("glpe_matrix.cpp", 473, "operator+=", "otMatrix.m_NbCols == m_NbCols && otMatrix.m_NbRows == m_NbRows");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 473, "otMatrix.m_NbCols == m_NbCols && otMatrix.m_NbRows == m_NbRows");
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
          *v7 = v9 + *v7;
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

uint64_t BlueFin::Matrix::operator/=(uint64_t result, double a2)
{
  if (a2 == 0.0)
  {
    DeviceFaultNotify("glpe_matrix.cpp", 568, "operator/=", "dValue != 0.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 568, "dValue != 0.0");
  }

  v2 = *(result + 128);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(result + 132);
    v5 = result;
    v6 = 1.0 / a2;
    do
    {
      v7 = v5;
      v8 = v4;
      if (v4 >= 1)
      {
        do
        {
          *v7 = v6 * *v7;
          ++v7;
          --v8;
        }

        while (v8);
      }

      ++v3;
      v5 += 32;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t BlueFin::Matrix::operator*@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 132);
  if (v3 != *(a2 + 128))
  {
    DeviceFaultNotify("glpe_matrix.cpp", 285, "operator*", "bCond");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.cpp", 285, "bCond");
  }

  v4 = *(result + 128);
  v5 = *(a2 + 132);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      if (v5 >= 1)
      {
        v7 = 0;
        v8 = a2;
        do
        {
          v9 = 0.0;
          if (v3 >= 1)
          {
            v10 = result;
            v11 = v8;
            v12 = v3;
            do
            {
              v13 = *v10++;
              v14 = v13;
              v15 = *v11;
              v11 += 4;
              v9 = v9 + v14 * v15;
              --v12;
            }

            while (v12);
          }

          *(a3 + 32 * i + 8 * v7++) = v9;
          v8 += 8;
        }

        while (v7 != v5);
      }

      result += 32;
    }
  }

  *(a3 + 128) = v4;
  *(a3 + 132) = v5;
  return result;
}

uint64_t BlueFin::GlPeKfPool::GetSlowFilter(BlueFin::GlPeKfPool *this)
{
  return (*(**(this + 4656) + 200))();
}

{
  return (*(**(this + 4656) + 200))();
}

uint64_t BlueFin::GlPeNavGnssKF::GetSlowFilter(BlueFin::GlPeNavGnssKF *this)
{
  return this + 2640;
}

{
  return this + 2640;
}

BOOL BlueFin::GlPeNavGnssKF::IsAdrUsed(BlueFin::GlPeNavGnssKF *this)
{
  v1 = this + *(*this - 24);
  v2 = *(v1 + 55);
  if (*v2)
  {
    return 1;
  }

  v4 = v1[448];
  v5 = v4 >= 2;
  v6 = v4 - 2;
  if (!v5)
  {
    return 0;
  }

  v7 = v2 + 1;
  do
  {
    v8 = *v7++;
    result = v8 != 0;
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = v6 == 0;
    }

    --v6;
  }

  while (!v9);
  return result;
}

BOOL BlueFin::GlPeExtLoc::GetExtSensStatus(uint64_t a1, uint64_t a2, char a3, int a4, int a5)
{
  *(a2 + 112) = 0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v5 = *(a1 + 136);
  if (!v5)
  {
    return v5 != 0;
  }

  if ((*(v5 + 3008) == 1 && vaddvq_f64(vmulq_f64(*(v5 + 3040), *(v5 + 3040))) < 160000.0 || (v9 = *(a1 + 8), v9 == 4) || v9 == 2) && (a3 & 1) == 0)
  {
    *(a2 + 12) = *(v5 + 3072);
    v11 = *(v5 + 3032);
    v10 = 4;
    if (v11 > -990.0 && *(v5 + 3064) > 0.0)
    {
      *(a2 + 8) = 1;
      *(a2 + 10) = v11;
    }
  }

  else
  {
    v10 = 0;
  }

  if (*(v5 + 1161) == 1)
  {
    *(a2 + 40) = *(v5 + 1112);
    v10 |= 0x10u;
  }

  v12 = *(a1 + 144);
  if (*(v12 + 34) == 1 && *(v12 + 32) == 1)
  {
    v13 = (1.0 - pow(*v12 * 100.0 / *(v12 + 8), 0.190263)) * 44330.77;
    if (v13 <= 0.0)
    {
      if (v13 >= 0.0)
      {
        LOWORD(v16) = 0;
LABEL_21:
        *(a2 + 92) = v16;
        v10 |= 0x80000u;
        goto LABEL_22;
      }

      v14 = v13;
      v15 = -0.5;
    }

    else
    {
      v14 = v13;
      v15 = 0.5;
    }

    v16 = (v14 + v15);
    goto LABEL_21;
  }

LABEL_22:
  if (*(v5 + 2985) == 1)
  {
    v17 = *(v5 + 2944);
    if (v17 <= 0.0)
    {
      if (v17 >= 0.0)
      {
        LOWORD(v20) = 0;
LABEL_29:
        *(a2 + 44) = v20;
        *(a2 + 48) = 2;
        v10 |= 0x20u;
        goto LABEL_30;
      }

      v18 = v17;
      v19 = -0.5;
    }

    else
    {
      v18 = v17;
      v19 = 0.5;
    }

    v20 = (v18 + v19);
    goto LABEL_29;
  }

LABEL_30:
  if (*(v5 + 4224) == 1)
  {
    *(a2 + 52) = *(v5 + 4216);
    v10 |= 0x40u;
  }

  v21 = v10 | 0x180;
  if (a4)
  {
    *(a2 + 56) = 0x100000001;
    *a2 = v21;
  }

  else
  {
    *(a2 + 56) = 0;
    *a2 = v21;
    if (a5)
    {
      v22 = *(v5 + 2986);
      *(a2 + 60) = v22 & 1;
      if ((v22 & 2) != 0)
      {
        *(a2 + 56) = 1;
      }
    }
  }

  v23 = *(v5 + 188);
  *(a2 + 108) = v23;
  *(a2 + 112) = v23;
  if (*(v5 + 1225) == 1)
  {
    v24 = *(v5 + 1184);
    *(a2 + 64) = v24;
    *(a2 + 68) = 2;
    v21 = v10 | 0x380;
    *a2 = v10 | 0x380;
  }

  if (*(v5 + 1281) == 1)
  {
    v25 = *(v5 + 1240);
    *(a2 + 72) = v25;
    *(a2 + 76) = 2;
    v21 |= 0x400u;
    *a2 = v21;
  }

  if (*(v5 + 4204) == 1)
  {
    *(a2 + 80) = *(v5 + 4200);
    v21 |= 0x1000u;
    *a2 = v21;
  }

  if (*(v5 + 4177) == 1)
  {
    *(a2 + 84) = *(v5 + 4144);
    v21 |= 0x2000u;
    *a2 = v21;
  }

  v26 = *(v5 + 4272);
  *(a2 + 88) = v26;
  if (v26)
  {
    v21 |= 0x4000u;
    *a2 = v21;
  }

  v27 = *(v5 + 3231);
  *(a2 + 96) = v27;
  if (*(v5 + 3230) == 1)
  {
    v28 = *(v5 + 3228);
    if (*(v5 + 3228))
    {
      v29 = 2;
    }

    else
    {
      v29 = v27;
    }

    v30 = *(v5 + 3229);
    if (*(v5 + 3229))
    {
      v27 = 2;
    }

    *(a2 + 100) = v29;
    *(a2 + 104) = v27;
    if (v28 & 1) != 0 || (v30)
    {
      if (v28)
      {
        v31 = v21 | 0x20000;
      }

      else
      {
        v31 = v21;
      }

      if (v30)
      {
        v31 |= 0x40000u;
      }

      *a2 = v31;
    }
  }

  else
  {
    *(a2 + 100) = 0;
    *(a2 + 104) = 0;
  }

  return v5 != 0;
}

double BlueFin::GlPeNavUtil::AdjustBc(BlueFin::GlPeNavUtil *this, float a2)
{
  if (a2 <= -0.00000011921)
  {
    DeviceFaultNotify("glpe_navutil.cpp", 1116, "AdjustBc", "fMaxAbsBc > 0.0 - FLT_EPSILON");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_navutil.cpp", 1116, "fMaxAbsBc > 0.0 - FLT_EPSILON");
  }

  v2 = a2;
  v3 = (this + *(*this - 24));
  v4 = v3[11] / 299792.458;
  result = -a2;
  if (v4 < result || v4 >= v2)
  {
    if (v4 <= 0.0)
    {
      v7 = 0.0;
      if (v4 < 0.0)
      {
        v7 = ceil(v4 + -0.5);
      }
    }

    else
    {
      v7 = floor(v4 + 0.5);
    }

    result = (v4 - v7) * 299792.458;
    v3[11] = result;
  }

  return result;
}

void BlueFin::GlPeFixStatus::SetPosition(BlueFin::GlPeFixStatus *this, uint64_t a2, uint64_t a3, unsigned int a4, int a5, double a6, int8x16_t a7, double a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v127 = *MEMORY[0x29EDCA608];
  v13 = this + 4072;
  v14 = *(a2 + 8);
  *(this + 4048) = v14;
  *(this + 4049) = *(a2 + 9);
  *(this + 4050) = 0;
  *(this + 4192) = *(a2 + 80);
  *(this + 4208) = *(a2 + 68);
  *(this + 4088) = *(a2 + 32);
  *(this + 513) = *(a2 + 48);
  *(this + 1028) = *(a2 + 56);
  *(this + 259) = vcvtq_f64_f32(*(a2 + 780));
  *(this + 520) = *(a2 + 788);
  *(this + 515) = *(a2 + 764);
  v15 = vcvtq_f64_f32(*(a2 + 768));
  *(this + 258) = vextq_s8(v15, v15, 8uLL);
  v16 = *(a2 + 16);
  *(this + 4072) = v16;
  *(this + 525) = *(a2 + 72) * 1.9438445;
  *(this + 527) = *(a2 + 60) * 57.2957795 - floor(*(a2 + 60) * 57.2957795 / 360.0) * 360.0;
  v17 = *(this + 981);
  *(this + 4051) = *(v17 + 2589) == 0;
  *(this + 4176) = *(v17 + 2588);
  *(this + 7408) = *(a2 + 1364);
  if (v14 == 1)
  {
    *a7.i64 = *(a2 + 744) + *(a2 + 752) * 1000.0;
    *a9.i64 = floor(*a7.i64);
    *a11.i64 = *a9.i64 + trunc(*a9.i64 * 2.32830644e-10) * -4294967300.0;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v19 = vnegq_f64(v18);
    a11.i64[0] = vbslq_s8(v19, a11, a9).u64[0];
    if (*a9.i64 > 4294967300.0)
    {
      a9.i64[0] = a11.i64[0];
    }

    if (*a9.i64 < -4294967300.0)
    {
      *a10.i64 = -*a9.i64;
      *a9.i64 = -(*a9.i64 - trunc(*a9.i64 * -2.32830644e-10) * -4294967300.0);
      *a9.i64 = -*vbslq_s8(v19, a9, a10).i64;
    }

    if (*a9.i64 < 0.0)
    {
      v20 = --*a9.i64;
    }

    else
    {
      v20 = *a9.i64;
    }

    *(this + 1042) = v20;
    *v16.i64 = (*a7.i64 - v20) * 1000.0 + 0.5;
    *a7.i64 = *v16.i64 + trunc(*v16.i64 * 2.32830644e-10) * -4294967300.0;
    v21 = vbslq_s8(v19, a7, v16);
    if (*v16.i64 > 4294967300.0)
    {
      v16.i64[0] = v21.i64[0];
    }

    if (*v16.i64 < -4294967300.0)
    {
      *v21.i64 = -*v16.i64;
      *v16.i64 = -(*v16.i64 - trunc(*v16.i64 * -2.32830644e-10) * -4294967300.0);
      v22.f64[0] = NAN;
      v22.f64[1] = NAN;
      *v16.i64 = -*vbslq_s8(vnegq_f64(v22), v16, v21).i64;
    }

    if (*v16.i64 < 0.0)
    {
      v23 = --*v16.i64;
    }

    else
    {
      LOWORD(v23) = *v16.i64;
    }

    *(this + 3444) = v23;
    if (v23 == 1000)
    {
      *(this + 3444) = 0;
      *(this + 1042) = v20 + 1;
    }

    v24 = *(a2 + 748);
    if (v24 <= 1)
    {
      v24 = 1;
    }

    *(this + 1043) = v24;
  }

  *(this + 2137) = *(a2 + 106);
  *(this + 4052) = 0;
  *(this + 1014) = 0;
  *(this + 529) = *(a2 + 1024);
  *(this + 7312) = *(a2 + 1080);
  *(this + 7350) = *(a2 + 1081);
  if (a5)
  {
    *this = *(a2 + 12);
  }

  BlueFin::GlPeFixStatus::SetTime(this);
  LODWORD(v25) = *(this + 22);
  if (v25 >= 1)
  {
    v26 = 0;
    v27 = this + 51;
    do
    {
      v28 = *(v27 - 1);
      if (v28 != 4 && v28 != 8)
      {
        v30 = BlueFin::GlImplGnss::m_aucImplGnssTable[*(v27 - 1)];
        v31 = *v27;
        LODWORD(v126[0]) = v30;
        BYTE4(v126[0]) = v31;
        v32 = (v31 - 64) < 0xC1u || v28 == 8;
        if (!v32 && (Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(this + 1264) + 384), v30)) != 0 && (v34 = (*(*Mgr + 112))(Mgr, v126 + 4, 1)) != 0)
        {
          v35 = (*(*v34 + 152))(v34);
          if ((v35 - 1) >= 3)
          {
            LODWORD(v25) = 0;
          }

          else
          {
            LODWORD(v25) = v35;
          }
        }

        else
        {
          LODWORD(v25) = 0;
        }

        *(this + *(v27 - 2) + 1533) = v25;
        LOWORD(v25) = *(this + 22);
      }

      ++v26;
      v27 += 40;
    }

    while (v26 < v25);
  }

  v36 = 1.0;
  if (*(a2 + 792) >= 1.0 || !*(this + 4048))
  {
    v36 = *(a2 + 792);
  }

  *(this + 863) = v36;
  *(this + 523) = *(a2 + 752);
  v37 = *(this + 1017) & 0xFFFFFFF8 | *(a2 + 81) & 3;
  if (*(this + 518) >= 50.0 || (*(a2 + 92) & 1) != 0 || *(a2 + 93) == 1)
  {
    v37 |= 4u;
  }

  v38 = v37 & 0xFFFFFE07;
  if (*(a2 + 94))
  {
    v39 = 32;
  }

  else
  {
    v39 = 0;
  }

  if (*(a2 + 95))
  {
    v40 = 64;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40 | v39;
  if (*(a2 + 104))
  {
    v42 = 8;
  }

  else
  {
    v42 = 0;
  }

  v43 = v41 | v42 | v38;
  if (*(a2 + 1064))
  {
    v44 = 16;
  }

  else
  {
    v44 = 0;
  }

  v45 = v43 | v44;
  if (*(*(this + 1264) + 120012) == 1)
  {
    v45 |= 0x100u;
  }

  v46 = v45 & 0xFFFFF3FF;
  if (*(a2 + 1347))
  {
    v47 = 2048;
  }

  else
  {
    v47 = 0;
  }

  if (*(a2 + 1345))
  {
    v48 = 1024;
  }

  else
  {
    v48 = 0;
  }

  v49 = v46 | v47 | v48;
  *(this + 1017) = v49 & 0xFFFFFDFF;
  if (*(a2 + 1344) == 1)
  {
    *(this + 1017) = v49 | 0x200;
  }

  v50 = 0;
  *(this + 919) = *(a2 + 1352);
  v13[3288] = *(a2 + 1360);
  *(this + 1016) = *(a2 + 4);
  v51 = this + 4856;
  v52 = this + 5368;
  do
  {
    v53 = (this + v50 + 4856);
    v54 = *(a2 + v50 + 112);
    v55 = *(a2 + v50 + 128);
    v56 = *(a2 + v50 + 160);
    v53[2] = *(a2 + v50 + 144);
    v53[3] = v56;
    *v53 = v54;
    v53[1] = v55;
    v57 = (this + v50 + 5368);
    v58 = *(a2 + v50 + 368);
    v59 = *(a2 + v50 + 384);
    v60 = *(a2 + v50 + 416);
    v57[2] = *(a2 + v50 + 400);
    v57[3] = v60;
    *v57 = v58;
    v57[1] = v59;
    v50 += 64;
  }

  while (v50 != 256);
  v61 = *(a2 + 672);
  v62 = *(a2 + 688);
  v63 = *(a2 + 704);
  v64 = *(a2 + 720);
  *(this + 5656) = v63;
  *(this + 5672) = v64;
  *(this + 5624) = v61;
  *(this + 5640) = v62;
  *(this + 3648) = *(a2 + 736);
  *(this + 1825) = *(a2 + 740) * 0.001;
  if (*(this + 10152))
  {
    v65 = 2;
  }

  else
  {
    v65 = 3;
  }

  *(this + 1015) = v65;
  if ((*(a2 + 8) & 1) != 0 && !*(a2 + 106) && (*(a2 + 96) & 4) != 0)
  {
    *(this + 1015) = 7;
  }

  *(this + 2137) = 0;
  v66 = this + 4280;
  v13[3276] = 0;
  v67 = this + 4344;
  v68.i64[1] = 0;
  *(this + 4280) = 0u;
  *(this + 4296) = 0u;
  *(this + 4312) = 0u;
  *(this + 4328) = 0u;
  *(this + 4344) = 0u;
  *(this + 4360) = 0u;
  *(this + 4376) = 0u;
  *(this + 4392) = 0u;
  *(this + 4408) = 0u;
  *(this + 4424) = 0u;
  *(this + 4440) = 0u;
  *(this + 4456) = 0u;
  *(this + 4472) = 0u;
  *(this + 4488) = 0u;
  *(this + 4504) = 0u;
  *(this + 4520) = 0u;
  *(this + 4536) = 0u;
  *(this + 4552) = 0u;
  *(this + 4568) = 0u;
  *(this + 4584) = 0u;
  if (*(this + 4048) && v25 >= 1)
  {
    v69 = 0;
    v25 = v25;
    v70 = this + 49;
    do
    {
      v71 = v70[33];
      v72 = v70[1];
      v73 = 1 << (v70[2] - 1);
      if ((v73 & (*&v52[64 * v71 + 8 * v72] | *&v51[64 * v71 + 8 * v72])) != 0)
      {
        *(this + 2137) = ++v69;
        *&v66[8 * v72] |= v73;
        *&v67[64 * v71 + 8 * v72] |= v73;
        if (*(this + *v70 + 1533) == 2)
        {
          v13[3276] = 1;
        }
      }

      v70 += 40;
      --v25;
    }

    while (v25);
  }

  v74 = *(this + 982);
  v75 = *(v74 + 2);
  v76 = *(v74 + 10);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  *(this + 1056) = (v75 * 0.000000001 * 1000000000.0 + 0.5);
  *v68.i64 = v76 * 0.000000001 * 1000000000.0 + 0.5;
  *v64.i64 = *v68.i64 + trunc(*v68.i64 * 2.32830644e-10) * -4294967300.0;
  v77.f64[0] = NAN;
  v77.f64[1] = NAN;
  v78 = vnegq_f64(v77);
  v64.i64[0] = vbslq_s8(v78, v64, v68).u64[0];
  if (*v68.i64 > 4294967300.0)
  {
    v68.i64[0] = v64.i64[0];
  }

  if (*v68.i64 < -4294967300.0)
  {
    *v63.i64 = -*v68.i64;
    *v68.i64 = -(*v68.i64 - trunc(*v68.i64 * -2.32830644e-10) * -4294967300.0);
    *v68.i64 = -*vbslq_s8(v78, v68, v63).i64;
  }

  if (*v68.i64 < 0.0)
  {
    v79 = --*v68.i64;
  }

  else
  {
    LOWORD(v79) = *v68.i64;
  }

  *(this + 2128) = v79;
  v80 = *this;
  if (*this <= 0xFF9222FE)
  {
    v80 = *this;
  }

  BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(*(this + 981), 0, 1, this + 24, v80);
  v81 = *this;
  if (*this <= 0xFF9222FE)
  {
    v81 = *this;
  }

  BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(*(this + 981), 2u, 1, this + 4, v81);
  v82 = *(a2 + 780);
  *(this + 869) = v82;
  *(this + 870) = v82;
  *(this + 871) = 0;
  v83 = *(a2 + 1040);
  v84 = *(a2 + 1048);
  if (v83 >= 0.0001 || v84 >= 0.0001)
  {
    v85 = *(a2 + 1056);
    v86 = v83 + v84;
    v87 = (v83 + v84) * 0.5;
    v88 = sqrt(v85 * v85 + (v84 - v83) * 0.25 * (v84 - v83));
    v89 = sqrt(v87 + v88);
    v90 = atan2(v85, v84 - v89 * v89) * -57.2957795 + 90.0;
    if (v90 < 0.0)
    {
      v90 = v90 + 360.0;
    }

    if (v90 >= 180.0)
    {
      v90 = v90 + -180.0;
    }

    *(this + 871) = v90;
    v91 = 1.0;
    v92 = sqrt((v82 * v82) / v86);
    if (v86 >= 1.0e-12)
    {
      v91 = v92;
    }

    v93 = v89 * v91;
    v94 = sqrt(v87 - v88) * v91 * 1.49759996;
    *(this + 869) = v93 * 1.49759996;
    if (v87 <= v88)
    {
      v94 = 0.0;
    }

    *(this + 870) = v94;
  }

  *(this + 872) = fmin(sqrtf(*(a2 + 64)) * 57.2957795, 180.0);
  *(this + 873) = sqrtf(*(a2 + 76));
  v95 = (*(a2 + 744) + 1000 * *(a2 + 748));
  *(this + 874) = v95;
  if (v95 < 0.001)
  {
    v95 = 0.001;
  }

  *(this + 875) = v95;
  *(this + 876) = *(a2 + 96);
  v96 = *(a2 + 1076);
  *(this + 7284) = *(a2 + 1068);
  *(this + 1823) = v96;
  v98 = *(a2 + 880);
  v97 = *(a2 + 896);
  v99 = *(a2 + 912);
  *(this + 443) = *(a2 + 864);
  *(this + 892) = v99;
  *(this + 445) = v97;
  *(this + 444) = v98;
  v100 = *(a2 + 800);
  v101 = *(a2 + 816);
  v102 = *(a2 + 832);
  *(this + 442) = *(a2 + 848);
  *(this + 441) = v102;
  *(this + 440) = v101;
  *(this + 439) = v100;
  *(this + 1787) = *(a2 + 920);
  if (*(this + 4048))
  {
    if ((*(this + 10200) & 1) == 0)
    {
      BlueFin::GlPeFixStatus::UpdateAccumDist(this, this + 10160, a3, a4);
    }

    *(this + 529) = *(this + 2548);
  }

  v13[3080] = -1;
  v13[3112] = -1;
  v103 = *(a2 + 928);
  v104 = *(a2 + 968);
  if (v103 != 0 && v104 > 400.0)
  {
    v103 = 0;
    v105 = 0;
  }

  else
  {
    v105 = *(a2 + 960);
  }

  v13[3080] = v103;
  v13[3112] = v105;
  *(this + 895) = *(a2 + 936);
  *(this + 896) = *(a2 + 944);
  *(this + 897) = *(a2 + 952);
  *(this + 1798) = v104;
  *(this + 1799) = *(a2 + 972);
  *(this + 1797) = *(a2 + 964);
  v13[3128] = *(a2 + 976);
  *(this + 1801) = *(a2 + 980);
  *(this + 1802) = *(a2 + 984);
  v13[3140] = *(a2 + 988);
  *(this + 902) = *(a2 + 992);
  v13[3152] = *(a2 + 1000);
  *(this + 1807) = *(a2 + 1004);
  *(this + 1808) = *(a2 + 1008);
  *(this + 3618) = *(a2 + 1012);
  *(this + 905) = *(a2 + 1016);
  *(this + 913) = *(a2 + 84);
  memset(v126, 0, sizeof(v126));
  v106 = *(this + 22);
  if (v106 > 0)
  {
    v107 = 0;
    v108 = 40 * v106;
    v109 = 7440;
    do
    {
      v110 = this + v107;
      v111 = *(this + v107 + 52);
      if (v111 == 1)
      {
        v112 = 1 << (v110[51] - 1);
        if (*(v110 + 27))
        {
          goto LABEL_127;
        }
      }

      else
      {
        v112 = 1 << (v110[51] - 1);
        if (v111 < 5)
        {
          goto LABEL_127;
        }
      }

      if (*(this + v109) <= 7.0)
      {
LABEL_127:
        v110[48] = 0;
        v113 = this + v107;
        *(v113 + 68) = 0xFF38000000000000;
        *(v113 + 19) = 0;
        *(v113 + 40) = 0;
        v114 = *(this + v107 + 82);
        v115 = *(this + v107 + 50);
        *&v51[64 * v114 + 8 * v115] &= ~v112;
        *&v52[64 * v114 + 8 * v115] &= ~v112;
        *&v67[64 * v114 + 8 * v115] &= ~v112;
        goto LABEL_128;
      }

      *(v126 + *(this + v107 + 50)) |= v112;
LABEL_128:
      v107 += 40;
      v109 += 4;
    }

    while (v108 != v107);
  }

  for (i = 0; i != 4; ++i)
  {
    *&v66[i * 16] = vandq_s8(*&v66[i * 16], v126[i]);
  }

  v13[3337] = 0;
  if (*(*(this + 1265) + 26342) == 1 && (*(this + 10297) & 1) == 0)
  {
    if (*(this + 4048))
    {
      v117 = 0;
      v118 = *(this + 540);
      v119 = *(this + 535);
      v120 = 63;
      do
      {
        v117 += v118 & 1;
        v118 >>= 1;
        --v120;
      }

      while (v120);
      v121 = 0;
      v122 = 32;
      do
      {
        v121 += v119 & 1;
        v119 >>= 1;
        --v122;
      }

      while (v122);
      if ((v117 < v121 || *(this + 518) >= 10.1) && *this < 0x1D0D8u)
      {
        *(this + 4048) = 0;
        ++*(this + 10298);
      }

      else
      {
        *(this + 10297) = 1;
      }
    }

    v123 = *(this + 10298);
    if (v123 >= 3)
    {
      *(this + 10297) = 1;
    }

    v13[3337] = v123;
  }
}

uint64_t BlueFin::GlPeRqHdlrPosPeriodic::UpdateFixStatus(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a2 + 4048);
  *(a1 + 168) = v10;
  if (v10 || (*(a2 + 4068) & 0x10) != 0 && !*(a1 + 96))
  {
    v11 = (*(**(a1 + 8) + 152))(*(a1 + 8));
    v12 = v11;
    if (v11 <= 400)
    {
      v13 = 400;
    }

    else
    {
      v13 = v11;
    }

    *(a1 + 92) = v13;
    v14 = *(*(a1 + 8) + 22);
    v15 = *(a1 + 72);
    GllStartupType = BlueFin::GlPeKF::GetGllStartupType(*(*(a1 + 56) + 16));
    v17 = GllStartupType;
    if (a3)
    {
      DynamicAccyMask = 2000;
      GlCustomLog(14, "AccyMask[%hu]PER (server returned position)Periodic %s Current %dm\n", *(a1 + 48), off_29EEB41D0[GllStartupType], 2000);
    }

    else if (v12 == -1)
    {
      v38 = BlueFin::GlPeKF::GetGllStartupType(*(*(a1 + 56) + 16));
      v20 = *(*(*(a1 + 56) + 16) + 1608);
      if (v20 >= 0)
      {
        v21 = *(*(*(a1 + 56) + 16) + 1608);
      }

      else
      {
        v21 = -v20;
      }

      ReqSmartMaskAccyM_Startup = BlueFin::GlPeRqHdlr::GetReqSmartMaskAccyM_Startup(a1, &v38);
      DynamicAccyMask = ReqSmartMaskAccyM_Startup;
      v37 = -1;
      v23 = *(a1 + 96);
      v36 = *(a1 + 92);
      if (v23)
      {
        if (*(a1 + 108))
        {
          if ((*(a1 + 109) & 1) == 0)
          {
            *(a1 + 109) = 1;
            GlCustomLog(14, "AccyMask[%hu]PER SmartMask latched at %dm\n", *(a1 + 48), ReqSmartMaskAccyM_Startup);
          }
        }

        else
        {
          DynamicAccyMask = *(a1 + 112);
          GlCustomLog(14, "AccyMask[%hu]PER SmartMask not latched. Holding at %dm\n", *(a1 + 48), DynamicAccyMask);
        }
      }

      else
      {
        v36 = ReqSmartMaskAccyM_Startup;
        v25 = *(*(*(a1 + 56) + 16) + 16824);
        if (v25 != -7200001)
        {
          v26 = *(a1 + 36);
          if (v26 == -1)
          {
            v15 = 1;
          }

          else
          {
            v27 = *(*(a1 + 8) + 28);
            v28 = *(a1 + 32);
            v29 = v28 + v26;
            v30 = v29 >= v27;
            v31 = v29 - v27;
            if (!v30)
            {
              v31 = 1;
            }

            v32 = v28 - v25;
            if (v32 >= v31)
            {
              v15 = v31;
            }

            else
            {
              v15 = v32;
            }
          }
        }

        BlueFin::GlPeRqHdlr::GetDynAccyMask_ToutForSmartphoneFF(a1, &v38, v15, &v36, &v37);
        if (v37 == -1)
        {
          GlCustomLog(14, "AccyMask[%hu]PER before FF Smartphone %s Current %dm\n");
        }

        else
        {
          GlCustomLog(14, "AccyMask[%hu]PER before FF Smartphone %s Current %dm set at %hds\n");
        }

        *(a1 + 112) = DynamicAccyMask;
      }

      if (v21 > 0x5DC || (*(*a1 + 16))(a1, v37, v15, 0))
      {
        DynamicAccyMask = v36;
        *(a1 + 112) = v36;
      }

      if (DynamicAccyMask <= 100)
      {
        v33 = 100;
      }

      else
      {
        v33 = DynamicAccyMask;
      }

      if ((*(*(*(*(a1 + 56) + 16) + 60936) + 32) & 0x20000000) != 0)
      {
        DynamicAccyMask = v33;
      }
    }

    else if (v12)
    {
      v24 = *(a1 + 88);
      if (v24 != *(a1 + 92))
      {
        v24 = v12;
        if ((*(*a1 + 16))(a1, v14, v15, 0))
        {
          v24 = *(a1 + 92);
        }
      }

      GlCustomLog(14, "AccyMask[%hu]PER Periodic %s Current %dm\n", *(a1 + 48), off_29EEB41D0[v17], v24);
      DynamicAccyMask = v24;
    }

    else
    {
      DynamicAccyMask = *(a1 + 88);
      if (DynamicAccyMask != *(a1 + 92))
      {
        DynamicAccyMask = BlueFin::GlPeKF::GetDynamicAccyMask(*(*(a1 + 56) + 16), *(a1 + 88), v15, *(a1 + 96));
        if ((*(*a1 + 16))(a1, 30, v15, 0))
        {
          DynamicAccyMask = *(a1 + 92);
        }
      }

      GlCustomLog(14, "AccyMask[%hu]PER PND %s Current %dm\n", *(a1 + 48), off_29EEB41D0[v17], DynamicAccyMask);
    }

    if (*(a2 + 4144) >= DynamicAccyMask + 0.01)
    {
      v34 = 0;
      *(a1 + 168) = 0;
      *(a1 + 88) = DynamicAccyMask;
    }

    else
    {
      *(a1 + 168) = 1;
      ++*(a1 + 96);
      if ((a3 & 1) == 0)
      {
        ++*(a1 + 160);
        if (*(a2 + 6912) == 2)
        {
          ++*(a1 + 164);
        }
      }

      if (DynamicAccyMask == *(a1 + 92))
      {
        *(a1 + 88) = v12;
      }

      *(a1 + 100) = *a2;
      v35 = BlueFin::GlPeKF::GetGllStartupType(*(*(a1 + 56) + 16));
      if (*(a2 + 4144) < BlueFin::GlPeRqHdlr::GetReqSmartMaskAccyM_Startup(a1, &v35) + 0.01)
      {
        *(a1 + 108) = 1;
      }

      if ((*(*(*(*(a1 + 56) + 16) + 60960) + 10200) & 1) == 0)
      {
        BlueFin::GlPeFixStatus::UpdateAccumDist(a2, a1 + 120, a4, a5);
      }

      v34 = *(a1 + 168);
    }

    *(a1 + 172) = *(a1 + 152);
    return BlueFin::GlPeRqHdlr::LogGL007(a1, "PER", a2, DynamicAccyMask, v34);
  }

  else
  {
    result = BlueFin::GlPeRqHdlr::LogGL007(a1, "per", a2, *(a1 + 88), 0);
    *(a1 + 172) = *(a1 + 152);
  }

  return result;
}

double BlueFin::GlPeTimeManager::GetUtcTime@<D0>(double *__return_ptr a1@<X8>, BlueFin::GlPeTimeManager *this@<X0>, int a3@<W1>)
{
  v4 = *(this + 1201);
  if (v4 != -7200001 && v4 == a3)
  {
    result = *(this + 606);
    a1[1] = result;
    *a1 = &unk_2A1F11310;
    *(a1 + 4) = *(this + 1214);
    *(a1 + 5) = *(this + 1215);
    *(a1 + 24) = *(this + 4864);
  }

  else
  {
    BlueFin::GlPeTimeManager::GetTime(v7, this, a3, 1);
    *a1 = &unk_2A1F11310;
    a1[1] = 0.0;
    BlueFin::GlUtcTime::breakdownFct(a1);
    return BlueFin::GlPeGnssTime::GetUtc(v7, a1);
  }

  return result;
}

uint64_t BlueFin::GlPeRqHdlr::GetReqSmartMaskAccyM_Startup(uint64_t a1, _DWORD *a2)
{
  result = (*(**(a1 + 8) + 392))(*(a1 + 8), 1);
  if ((*a2 | 2) == 2)
  {
    v5 = *(**(a1 + 8) + 392);

    return v5();
  }

  return result;
}

uint64_t BlueFin::GlPeGnssTime::GetConversionTable(BlueFin::GlPeGnssTime *this)
{
  result = BlueFin::GlPeGnssTime::m_potConversionTable;
  if (!BlueFin::GlPeGnssTime::m_potConversionTable)
  {
    DeviceFaultNotify("glpe_timemgr.h", 194, "GetConversionTable", "m_potConversionTable != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timemgr.h", 194, "m_potConversionTable != nullptr");
  }

  return result;
}

BOOL BlueFin::GlPeAsstPosMgr::processAssistance(uint64_t a1, __int128 *a2, int a3, int a4, BlueFin::stTimeOfAsstPos *this, char a6, int a7, double a8, int8x16_t a9)
{
  v82 = *MEMORY[0x29EDCA608];
  v12.i64[1] = 0;
  memset(v56, 0, sizeof(v56));
  v60 = 0;
  v61 = 0xC15B773FC0000000;
  v62 = &off_2A1F0B5F0;
  v63 = 0;
  v64 = 0u;
  memset(v65, 0, sizeof(v65));
  if (v56 == a2)
  {
    v12.i64[0] = 0;
  }

  else
  {
    *&v56[16] = *(a2 + 2);
    *v56 = *a2;
    v12 = *(a2 + 24);
    *&v56[24] = v12;
  }

  v57 = a3;
  v58 = a4;
  v59 = a6;
  if (&v60 != this)
  {
    v60 = *this;
    a9.i64[0] = *(this + 1);
    v13 = *(this + 3);
    v61 = a9.i64[0];
    v63 = v13;
  }

  v66 = a7;
  if (a4 == 2 && (a6 & 1) == 0)
  {
    v74 = 0u;
    v75 = 0u;
    v73 = &unk_2A1F0E928;
    v78 = 0.0;
    v76 = 0;
    v77 = &off_2A1F0B5F0;
    v81 = 0;
    if (&v74 != a2)
    {
      v14 = a2[1];
      v74 = *a2;
      v75 = v14;
      v76 = *(a2 + 4);
    }

    v79 = a3;
    v80 = 2;
    BlueFin::stTimeOfAsstPos::GetTime(&v67, this, *(a1 + 296));
    v78 = v67.f64[1];
    v81 = a7;
    if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      (*(v73 + 3))(&v73, 0, 0);
    }

    v12.i64[0] = *&v56[24];
  }

  if (*(*(a1 + 296) + 2568) == -7200001)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(*(a1 + 296) + 2568);
  }

  if (*v12.i64 <= 0.0)
  {
    *&v56[24] = 0x40A7700000000000;
    GlCustomLog(12, "GlPeAsstPosMgr(%u): New position: Warning: Using default horizontal accuracy (%.1lfkm)\n", v15, 3.0);
  }

  v12.i64[0] = *&v56[32];
  if (*&v56[32] <= 0.0)
  {
    *&v56[32] = 0x4072C00000000000;
    GlCustomLog(12, "GlPeAsstPosMgr(%u): New position: Warning: Using default vertical accuracy (%.1lfkm)\n", v15, 0.3);
  }

  AgeS = BlueFin::stTimeOfAsstPos::GetAgeS(&v60, *(a1 + 296), v12, a9);
  v18 = AgeS;
  v19 = *&v56[24];
  if (AgeS != -1)
  {
    v20 = *&v56[24] + (25 * AgeS);
    *&v56[24] = v20;
    v19 = 540000.0;
    if (v20 <= 540000.0)
    {
      v19 = v20;
    }

    else
    {
      GlCustomLog(13, "GlPeAsstPosMgr(%u): New position: Aged HorAcc (%.1lfkm) being capped at %dkm\n", v15, v20 * 0.001, 540);
      *&v56[24] = 0x41207AC000000000;
    }

    v21 = *&v56[32] + (5 * v18);
    *&v56[32] = v21;
    if (v21 > 30000.0)
    {
      GlCustomLog(13, "GlPeAsstPosMgr(%u): New position: Aged VerAcc (%.1lfkm) being capped at %dkm\n", v15, v21 * 0.001, 30);
      *&v56[32] = 0x40DD4C0000000000;
      v19 = *&v56[24];
    }
  }

  *(v65 + 8) = *v56;
  *(&v65[1] + 1) = *&v56[16];
  v22 = v58;
  v24 = v19 >= 400.0 || v58 != 1;
  v25 = *(a1 + 44);
  v26 = 1;
  if (v25 != -1 && v24)
  {
    v26 = v19 <= *(a1 + 24);
  }

  if (v58 == 2 && (a6 & 1) == 0)
  {
    BlueFin::stProcessedAsstPos::operator=(a1 + 144, v56);
    v25 = *(a1 + 44);
  }

  if (v26)
  {
    if (v25 == -1)
    {
      v39 = "Accepted because this is the first position into the manager";
    }

    else
    {
      if (v25 == 2)
      {
        v27 = !v24;
        if (v22 == 2)
        {
          v27 = 1;
        }

        if ((v27 & 1) == 0)
        {
          BlueFin::lla2ned((a1 + 112), v65 + 1, 0, v67.f64);
          v29 = sqrt(vaddvq_f64(vmulq_f64(v67, v67)));
          v30 = *(a1 + 24);
          v31 = "Rejected";
          v32 = *&v56[24] + v29 <= v30;
          if (*&v56[24] + v29 <= v30)
          {
            v31 = "Accepted";
          }

          v33 = "outside";
          if (*&v56[24] + v29 <= v30)
          {
            v33 = "within";
          }

          BlueFin::GlFormat::glsnprintf(&v73, 0x78, "%s because new region is %s current AGNSS region (HorzDelta:%.1lfkm, CurHorAcc:%.1lfkm)", v28, v31, v33, v29 * 0.001, v30 * 0.001);
          goto LABEL_64;
        }
      }

      if (v24)
      {
        BlueFin::GlFormat::glsnprintf(&v73, 0x78, "Accepted because the HorAcc <= current HorAcc (%.1lfkm)", v17, *(a1 + 24) * 0.001);
LABEL_63:
        v32 = 1;
        goto LABEL_64;
      }

      v39 = "Accepted because position is from KF and HorAcc < 400m";
    }

    BlueFin::GlFormat::glsnprintf(&v73, 0x78, v39, v17);
    goto LABEL_63;
  }

  if (v22 != 2 || v25 == 2)
  {
    BlueFin::GlFormat::glsnprintf(&v73, 0x78, "Rejected because new HorAcc is not improved over current HorAcc (%.1lfkm)", v17, *(a1 + 24) * 0.001);
    v32 = 0;
  }

  else
  {
    BlueFin::lla2ned((a1 + 112), v65 + 1, 0, v67.f64);
    v35 = sqrt(vaddvq_f64(vmulq_f64(v67, v67)));
    v36 = *(a1 + 24);
    v37 = "Rejected";
    v32 = v36 + v35 > *&v56[24];
    if (v36 + v35 > *&v56[24])
    {
      v37 = "Accepted";
    }

    v38 = "within";
    if (v36 + v35 > *&v56[24])
    {
      v38 = "outside";
    }

    BlueFin::GlFormat::glsnprintf(&v73, 0x78, "%s because current region is %s new AGNSS region (HorzDelta:%.1lfkm, CurHorAcc:%.1lfkm)", v34, v37, v38, v35 * 0.001, v36 * 0.001);
  }

LABEL_64:
  if (*(*(a1 + 296) + 2568) == -7200001)
  {
    v40 = 0;
  }

  else
  {
    v40 = *(*(a1 + 296) + 2568);
  }

  GlCustomLog(14, "GlPeAsstPosMgr(%u): New position: LLA:[%+.5lf %+.5lf %.0lf]  HorzUnc:%.1lfkm  VertUnc:%.1lfkm\n", v40, *v56, *&v56[8], *&v56[16], *&v56[24] * 0.001, *&v56[32] * 0.001);
  v71 = &off_2A1F0B5F0;
  v72 = 0;
  if (v60 == 1)
  {
    v41 = v63;
  }

  else
  {
    v42 = *(a1 + 296);
    if (!v42[644])
    {
      goto LABEL_72;
    }

    BlueFin::GlPeTimeManager::GetTime(v42, -7199999.0, 1, &v67);
    v69 = &off_2A1F0B5F0;
    v70 = 0;
    BlueFin::GlPeGnssTime::GetGps(&v67, &v69);
    v41 = v70;
  }

  v72 = v41;
LABEL_72:
  GlCustomLog(14, "GlPeAsstPosMgr(%u): New position: TimeTagOfUpdate:[", v40);
  v43 = (v71[4])(&v71);
  LODWORD(v44) = v72;
  if (v44 * 2.32830644e-10 + v43 <= 0.0)
  {
    GlCustomLog(14, "GpsTime:<unknown>");
  }

  else
  {
    v45 = (v71[4])(&v71);
    v46 = (v71[4])(&v71);
    LODWORD(v47) = v72;
    GlCustomLog(14, "GpsWk:%d  GpsTowS:%.1lf", v45 / 0x93A80, v47 * 2.32830644e-10 + (v46 % 0x93A80));
  }

  GlCustomLog(14, "]");
  v50 = BlueFin::stTimeOfAsstPos::GetAgeS(&v60, *(a1 + 296), v48, v49);
  GlCustomLog(14, "  Age:");
  if (v50 == -1)
  {
    GlCustomLog(14, "<unknown>");
  }

  else if (v50 > 0xE0F)
  {
    if (v50 >> 7 >= 0x2A3)
    {
      GlCustomLog(14, "%.1fdays");
    }

    else
    {
      GlCustomLog(14, "%.1fhrs");
    }
  }

  else
  {
    GlCustomLog(14, "%us", v50);
  }

  GlCustomLog(14, "  UserDyn:%s  Src:%s\n", __const__ZN7BlueFin14GlPeAsstPosMgr10SetUserDynENS_9GlUserDynE_acUserDynImage[v57 + 1], off_29EEB3608[v58 + 1]);
  GlCustomLog(14, "GlPeAsstPosMgr(%u): New position: Result: %s\n", v40, &v73);
  BlueFin::lla2ecef(v65 + 1, &v67);
  v64 = v67;
  *&v65[0] = v68;
  if (a7)
  {
    if (v58 != 2)
    {
      DeviceFaultNotify("glpe_asstposmgr.cpp", 796, "processAssistance", "otNewPos.m_eSrc == GLPE_ASST_POS_SRC_ASST");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_asstposmgr.cpp", 796, "otNewPos.m_eSrc == GLPE_ASST_POS_SRC_ASST");
    }

    v51 = *(a1 + 288);
    if ((v51 + 57312) != v56)
    {
      v52 = *&v56[16];
      *(v51 + 57312) = *v56;
      *(v51 + 57328) = v52;
      *(v51 + 57344) = *&v56[32];
    }

    *(v51 + 57360) = v63;
    *(v51 + 57368) = v57;
    *(v51 + 57372) = 2;
    *(v51 + 57376) = v66;
  }

  if (v32)
  {
    v53 = BlueFin::stProcessedAsstPos::operator=(a1, v56);
    if (v58 != 1 && v58 != 4)
    {
      *(a1 + 312) = 1;
    }

    BlueFin::GlPeKF::SetAsstPos(*(a1 + 288), a1, v53, v54);
  }

  return v32;
}

void BlueFin::GlPeKF::SetAsstPos(uint64_t a1, uint64_t *a2, int8x16_t a3, int8x16_t a4)
{
  v6 = a1 + 60952;
  AgeS = BlueFin::stTimeOfAsstPos::GetAgeS((a2 + 7), *(a1 + 60968), a3, a4);
  BlueFin::stTimeOfAsstPos::GetTime(v34, (a2 + 7), *(v6 + 16));
  BlueFin::GlPeTimeManager::GetTime(*(v6 + 16), 1, v31);
  v32 = &off_2A1F0B5F0;
  v33 = 0;
  BlueFin::GlPeGnssTime::GetGps(v31, &v32);
  v11 = v33;
  v12 = HIDWORD(v33);
  v14 = *(a1 + 144);
  v13 = *(a1 + 148);
  if (*(a1 + 144))
  {
    v16 = HIDWORD(v33) - v13;
    if (v33 < __PAIR64__(v13, v14))
    {
      v12 = (__PAIR64__(v13 - HIDWORD(v33), v14) - v33) >> 32;
      v11 = v14 - v33;
      v15 = 1;
    }

    else
    {
      v15 = 0;
      v12 = (__PAIR64__(v16, v33) - v14) >> 32;
      v11 = v33 - v14;
    }
  }

  else
  {
    v15 = 0;
  }

  *v8.i64 = v11 * 2.32830644e-10 + v12;
  if ((v15 & ((v12 | v11) != 0)) != 0)
  {
    *v8.i64 = -*v8.i64;
  }

  *v10.i64 = *v8.i64 + trunc(*v8.i64 * 2.32830644e-10) * -4294967300.0;
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  v18 = vnegq_f64(v17);
  v10.i64[0] = vbslq_s8(v18, v10, v8).u64[0];
  if (*v8.i64 > 4294967300.0)
  {
    v8.i64[0] = v10.i64[0];
  }

  if (*v8.i64 < -4294967300.0)
  {
    *v9.i64 = -*v8.i64;
    *v8.i64 = -(*v8.i64 - trunc(*v8.i64 * -2.32830644e-10) * -4294967300.0);
    *v8.i64 = -*vbslq_s8(v18, v8, v9).i64;
  }

  if (*v8.i64 < 0.0)
  {
    v19 = --*v8.i64;
  }

  else
  {
    v19 = *v8.i64;
  }

  if (*(a1 + 160) != 1 || v19 >= 0x259)
  {
    if (AgeS <= 0xE0F)
    {
      if (*(a2 + 48) == 1)
      {
        *(v6 + 536) = 0;
      }

      else if (*(a2 + 11) == 2)
      {
        *(v6 + 537) = 1;
      }
    }

    v20 = *a2;
    v21 = a2[1];
    *(a1 + 80) = *a2;
    *(a1 + 88) = v21;
    v22 = a2[2];
    v23 = *(a2 + 3);
    *(a1 + 96) = v22;
    v24 = v23;
    if (v24 < 3000.0)
    {
      v24 = 3000.0;
    }

    *(a1 + 104) = v24;
    if (v24 >= 100000.0)
    {
      v25 = 0;
      v26 = *(a2 + 11);
      if (v26 == 1)
      {
        v27 = 2;
      }

      else
      {
        v27 = *(a2 + 11);
      }
    }

    else
    {
      if (AgeS < 0xE10)
      {
        v25 = 1;
      }

      else
      {
        v25 = 3;
      }

      v26 = *(a2 + 11);
      v27 = v26;
    }

    *(a1 + 160) = v27;
    *(a1 + 144) = v34[1];
    v28 = *(a2 + 10);
    *(a1 + 152) = v25;
    *(a1 + 156) = v28;
    *(a1 + 40) = v20;
    *(a1 + 48) = v21;
    *(a1 + 56) = v22;
    v29 = *(a2 + 4);
    if (v29 > 100.0)
    {
      v29 = 100.0;
    }

    *(a1 + 64) = v29;
    *(a1 + 72) = v26;
    if (v26 == 2)
    {
      BlueFin::GlPeKF::AdjustAltSigmaForSimulation(a1);
      v25 = *(a1 + 152);
    }

    *(a1 + 1086) = v25 != 1;
    v30 = *(*v6 + 40);
    *(a1 + 1098) = v30 == 2;
    *(a1 + 1090) = v30 == 3;
  }
}

void BlueFin::stTimeOfAsstPos::GetTime(uint64_t *__return_ptr a1@<X8>, BlueFin::stTimeOfAsstPos *this@<X0>, BlueFin::GlPeTimeManager *a3@<X1>)
{
  *a1 = &off_2A1F0B5F0;
  a1[1] = 0;
  if (*this == 1)
  {
    v4 = *(this + 3);
    goto LABEL_6;
  }

  if (*this != 2)
  {
    return;
  }

  if (*(a3 + 644))
  {
    BlueFin::GlPeTimeManager::GetTime(a3, *(this + 1), 1, v14);
    v15 = &off_2A1F0B5F0;
    v16 = 0;
    BlueFin::GlPeGnssTime::GetGps(v14, &v15);
    v4 = v16;
LABEL_6:
    a1[1] = v4;
    return;
  }

  v5 = *(this + 1);
  if (v5 < 604800000.0)
  {
    v6 = v5 * 0.001;
    v7 = fmod(v5 * 0.001, 604800.0);
    *v9.i64 = v7 + 604800.0;
    if (v7 >= 0.0)
    {
      *v9.i64 = v7;
    }

    v14[0] = &off_2A1F0B5F0;
    *v8.i64 = *v9.i64 - trunc(*v9.i64);
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v8.i64[0] = vbslq_s8(vnegq_f64(v10), v8, v9).i64[0];
    if (*v8.i64 < 0.0 || *v8.i64 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v12 = *v8.i64 * 4294967300.0 + 0.5;
    v13 = v12;
    if (v12 >= 4294967300.0)
    {
      v13 = -1;
    }

    *(a1 + 2) = v13;
    *(a1 + 3) = *v9.i64 + 604800 * ((v6 / 604800.0) - (v7 < 0.0));
  }
}

uint64_t BlueFin::GlPeLtoEphemeris::GetFcn(BlueFin::GlPeLtoEphemeris *this, signed __int8 *a2)
{
  if ((*(this + 8) & 0xF0) != 0x20)
  {
    return 0;
  }

  result = (*(*this + 192))(this, 35);
  if (result)
  {
    *a2 = (*(*this + 208))(this, 36);
    return 1;
  }

  return result;
}