uint64_t BlueFin::GlPeEphemerisMgr::IsVerified(uint64_t a1)
{
  v1 = *(*(*(*a1 + 368))(a1) + 184);

  return v1();
}

uint64_t *BlueFin::GlWeekTowTime::resolveTowAmbiguity@<X0>(uint64_t *__return_ptr a1@<X8>, BlueFin::GlWeekTowTime *this@<X0>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>)
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
  BlueFin::GlTimePoint::resolveAmbiguity(&v15, v14, 0x93A80u);
  result = (*(*this + 24))(this, v16);
  *a1 = v15;
  *(a1 + 1) = result;
  return result;
}

uint64_t BlueFin::GlPeNicUtcModelData::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v14 = *MEMORY[0x29EDCA608];
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (v4 >= 2)
  {
    DeviceFaultNotify("glpe_nictimemgr.cpp", 143, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nictimemgr.cpp", 143, "ucVersion == 1");
  }

  v6 = v3;
  v7 = v2;
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v10 = 107;
    v11 = v5;
    v12 = 0x1000000000000;
    v9 = &unk_2A1F092C0;
    v13 = v5;
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v2 + 8));
    BlueFin::GlSysLogEntry::PutU16(&v9, *(v7 + 12));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v7 + 16));
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v7 + 22));
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v7 + 20));
    BlueFin::GlSysLogEntry::PutS8(&v9, *(v7 + 24));
    BlueFin::GlSysLogEntry::PutS8(&v9, *(v7 + 25));
    BlueFin::GlSysLogEntry::PutU16(&v9, *(v7 + 26));
    BlueFin::GlSysLogEntry::PutU16(&v9, *(v7 + 28));
    BlueFin::GlSysLogEntry::PutU16(&v9, *(v7 + 30));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v7 + 32));
    BlueFin::GlSysLogEntry::PutS8(&v9, *(v7 + 33));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v9, v6, 4);
  }

  return 1;
}

uint64_t BlueFin::GlPeNicUtcModelData::Deserialize(BlueFin::GlPeNicUtcModelData *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 107 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    *(this + 2) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 6) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 4) = BlueFin::GlSysLogEntry::GetU32(a2);
    *(this + 11) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + 10) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + 24) = BlueFin::GlSysLogEntry::GetS8(a2);
    *(this + 25) = BlueFin::GlSysLogEntry::GetS8(a2);
    *(this + 13) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 14) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 15) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 32) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 33) = BlueFin::GlSysLogEntry::GetS8(a2);
    BlueFin::GlSysLogEntry::CheckConsumed(a2, 190);
  }

  return v3;
}

BOOL BlueFin::GlPeNicGpsOffsetData::ModelValid(BlueFin::GlPeNicGpsOffsetData *this)
{
  if (!*(this + 2))
  {
    return 0;
  }

  if (*(this + 10) == -1 && *(this + 11) == -1 && *(this + 24) == 255 && *(this + 13) == -1)
  {
    return *(this + 14) != 1023;
  }

  return 1;
}

uint64_t BlueFin::GlPeNicGpsOffsetData::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v14 = *MEMORY[0x29EDCA608];
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (v4 >= 2)
  {
    DeviceFaultNotify("glpe_nictimemgr.cpp", 276, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nictimemgr.cpp", 276, "ucVersion == 1");
  }

  v6 = v3;
  v7 = v2;
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v10 = 108;
    v11 = v5;
    v12 = 0x1000000000000;
    v9 = &unk_2A1F092C0;
    v13 = v5;
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v2 + 8));
    BlueFin::GlSysLogEntry::PutU16(&v9, *(v7 + 12));
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v7 + 16));
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v7 + 20));
    BlueFin::GlSysLogEntry::PutS16(&v9, *(v7 + 22));
    BlueFin::GlSysLogEntry::PutS8(&v9, *(v7 + 24));
    BlueFin::GlSysLogEntry::PutU16(&v9, *(v7 + 26));
    BlueFin::GlSysLogEntry::PutU16(&v9, *(v7 + 28));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v7 + 30));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v7 + 31));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v9, v6, 4);
  }

  return 1;
}

uint64_t BlueFin::GlPeNicGpsOffsetData::Deserialize(BlueFin::GlPeNicGpsOffsetData *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 108 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    *(this + 2) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 6) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 4) = BlueFin::GlSysLogEntry::GetU32(a2);
    *(this + 10) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + 11) = BlueFin::GlSysLogEntry::GetS16(a2);
    *(this + 24) = BlueFin::GlSysLogEntry::GetS8(a2);
    *(this + 13) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 14) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 30) = BlueFin::GlSysLogEntry::GetU8(a2);
    *(this + 31) = BlueFin::GlSysLogEntry::GetU8(a2);
    BlueFin::GlSysLogEntry::CheckConsumed(a2, 321);
  }

  return v3;
}

double BlueFin::GlPeNicTimeMgr::ResetMgr(BlueFin::GlPeNicTimeMgr *this)
{
  *(this + 8) = 0;
  *(this + 5) = 0;
  *&result = 4287767295;
  *(this + 12) = 4287767295;
  return result;
}

uint64_t BlueFin::GlPeNicTimeMgr::ResetModels(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 36) = 0;
  *(this + 40) = 0;
  *(this + 44) = 0;
  *(this + 50) = 0;
  *(this + 80) = 0;
  *(this + 84) = 0;
  *(this + 88) = 0;
  *(this + 92) = 0;
  *(this + 100) = 0;
  *(this + 64) = 0;
  *(this + 104) = 0;
  return this;
}

uint64_t BlueFin::GlPeNicTimeMgr::SetDataSubFrmMeas(BlueFin::GlPeNicTimeMgr *this, const BlueFin::GlDataSubFrmMeas *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  if (*(a2 + 8) - 175 >= 0xE)
  {
    DeviceFaultNotify("glpe_nictimemgr.cpp", 373, "SetDataSubFrmMeas", "rtSubframe.otSvId.IsNavic()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nictimemgr.cpp", 373, "rtSubframe.otSvId.IsNavic()");
  }

  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v26[0] = v32;
  v26[1] = 0;
  v27 = 0;
  v30 = 0;
  v29 = 0;
  v28 = vdup_n_s32(0x140u);
  v31 = 0;
  result = BlueFin::GlBitBuffer::PutU(v26, 0, 1u);
  v5 = 20;
  while (1)
  {
    v6 = *(a2 + v5);
    if (v6 >> 30)
    {
      break;
    }

    result = BlueFin::GlBitBuffer::PutU(v26, v6, 0x1Eu);
    v5 += 4;
    if (v5 == 60)
    {
      v7 = *(a2 + 9);
      if ((v7 - 3) >= 2)
      {
        if (v7 == 1)
        {
          BlueFin::GlBitBuffer::Position(v26, 9u);
          v15 = BlueFin::GlBitBuffer::GetU(v26, 0x11u);
          BlueFin::GlBitBuffer::Position(v26, 0x1Fu);
          v16 = BlueFin::GlBitBuffer::GetU(v26, 0xAu);
          BlueFin::GlBitBuffer::Position(v26, 0x1Au);
          result = BlueFin::GlBitBuffer::GetU(v26, 1u);
          if ((12 * v15) <= 0x93A7F && !result)
          {
            *(this + 5) = v16;
            *(this + 3) = *(a2 + 15);
            *(this + 4) = 12 * v15;
            *(this + 8) = 1;
          }
        }
      }

      else
      {
        BlueFin::GlBitBuffer::Position(v26, 0x1Fu);
        result = BlueFin::GlBitBuffer::GetU(v26, 6u);
        if (result == 26 || result == 9)
        {
          v21 = &unk_2A1F0E018;
          v24 = 0uLL;
          v25 = 0;
          v22 = 1;
          v23 = *(this + 5);
          LODWORD(v24) = 1000 * *(this + 4);
          *(&v24 + 4) = BlueFin::GlBitBuffer::GetU(v26, 0x10u);
          v8 = BlueFin::GlBitBuffer::GetU(v26, 0xDu);
          if ((v8 & 0xFFFFF000) == 0x1000)
          {
            v9 = -8192;
          }

          else
          {
            v9 = 0;
          }

          WORD3(v24) = v9 + v8;
          v10 = BlueFin::GlBitBuffer::GetU(v26, 7u);
          BYTE8(v24) = v10 + (((v10 & 0xFFFFFFC0) == 64) << 7);
          BYTE9(v24) = BlueFin::GlBitBuffer::GetU(v26, 8u);
          WORD5(v24) = BlueFin::GlBitBuffer::GetU(v26, 0x10u);
          WORD6(v24) = BlueFin::GlBitBuffer::GetU(v26, 0xAu);
          HIWORD(v24) = BlueFin::GlBitBuffer::GetU(v26, 0xAu);
          LOBYTE(v25) = BlueFin::GlBitBuffer::GetU(v26, 4u);
          HIBYTE(v25) = BlueFin::GlBitBuffer::GetU(v26, 8u);
          v17 = &unk_2A1F0E048;
          v20 = 0uLL;
          v18 = 1;
          v19 = *(this + 5);
          LODWORD(v20) = 1000 * *(this + 4);
          *(&v20 + 4) = BlueFin::GlBitBuffer::GetU(v26, 0x10u);
          v11 = BlueFin::GlBitBuffer::GetU(v26, 0xDu);
          if ((v11 & 0xFFFFF000) == 0x1000)
          {
            v12 = -8192;
          }

          else
          {
            v12 = 0;
          }

          WORD3(v20) = v12 + v11;
          v13 = BlueFin::GlBitBuffer::GetU(v26, 7u);
          BYTE8(v20) = v13 + (((v13 & 0xFFFFFFC0) == 64) << 7);
          WORD5(v20) = BlueFin::GlBitBuffer::GetU(v26, 0x10u);
          WORD6(v20) = BlueFin::GlBitBuffer::GetU(v26, 0xAu);
          BYTE14(v20) = BlueFin::GlBitBuffer::GetU(v26, 3u);
          BlueFin::GlBitBuffer::Position(v26, 0x101u);
          result = BlueFin::GlBitBuffer::GetU(v26, 6u);
          HIBYTE(v20) = result;
          v14 = v25 - 8;
          if (WORD5(v24) > 0x93A7u || v14 < 0xFFFFFFF9 || WORD5(v20) >= 0x93A8u)
          {
            if (WORD5(v24) >= 0x93A8u)
            {
              result = GlCustomLog(14, "GlPeNicTimeMgr(SvId: %d)[%u]: Tot out of range (%u). Bad decode.\n", *(a2 + 8), *(a2 + 15), 16 * WORD5(v24));
            }

            if (v14 <= 0xFFFFFFF8)
            {
              result = GlCustomLog(14, "GlPeNicTimeMgr(SvId: %d)[%u]: Dn out of range (%u). Bad decode.\n", *(a2 + 8), *(a2 + 15), v25);
            }

            if (WORD5(v20) >= 0x93A8u)
            {
              return GlCustomLog(14, "GlPeNicTimeMgr(SvId: %d)[%u]: Togps out of range (%u). Bad decode.\n", *(a2 + 8), *(a2 + 15), 16 * WORD5(v20));
            }
          }

          else
          {
            result = BlueFin::GlPeNicTimeMgr::SetUtcModel(this, &v21);
            if (result && BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
            {
              result = (*(*(this + 3) + 24))(this + 24, 0, 0);
            }

            if (!BYTE14(v20))
            {
              result = BlueFin::GlPeNicTimeMgr::SetGpsOffset(this, &v17);
              if (result)
              {
                if (BlueFin::GlUtils::m_pInstance)
                {
                  if (*(BlueFin::GlUtils::m_pInstance + 1122) == 1)
                  {
                    return (*(v21 + 3))(&v21, 0, 0);
                  }
                }
              }
            }
          }
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeNicTimeMgr::SetUtcModel(BlueFin::GlPeNicTimeMgr *this, const BlueFin::GlPeNicUtcModelData *a2)
{
  v2 = *(a2 + 6);
  v3 = *(a2 + 4);
  v4 = *(this + 8);
  v5 = *(a2 + 2);
  if (v4)
  {
    v6 = v5 < v4;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && v3 / 0x3E8 + 604800 * v2 <= *(this + 10) / 0x3E8u + 604800 * *(this + 18))
  {
    return 0;
  }

  v10 = (this + 24);
  if (BlueFin::GlPeNicUtcModelData::operator==(this + 24, a2))
  {
    return 0;
  }

  if (v10 != a2)
  {
    *(this + 8) = v5;
    *(this + 18) = v2;
    *(this + 10) = v3;
    v12 = *(a2 + 20);
    *(this + 50) = *(a2 + 26);
    *(this + 44) = v12;
  }

  result = 1;
  *(this + 64) = 1;
  return result;
}

BOOL BlueFin::GlPeNicTimeMgr::SetGpsOffset(BlueFin::GlPeNicTimeMgr *this, const BlueFin::GlPeNicGpsOffsetData *a2)
{
  result = BlueFin::GlPeNicGpsOffsetData::ModelValid(a2);
  if (result)
  {
    v5 = *(a2 + 6);
    v6 = *(a2 + 4);
    v7 = *(this + 20);
    v8 = *(a2 + 2);
    if (v7 && v8 >= v7 && v6 / 0x3E8 + 604800 * v5 <= *(this + 22) / 0x3E8u + 604800 * *(this + 42) || BlueFin::GlPeNicGpsOffsetData::operator==(this + 72, a2))
    {
      return 0;
    }

    else
    {
      if ((this + 72) != a2)
      {
        *(this + 20) = v8;
        *(this + 42) = v5;
        *(this + 22) = v6;
        v9 = *(a2 + 20);
        *(this + 25) = *(a2 + 7);
        *(this + 92) = v9;
      }

      result = 1;
      *(this + 104) = 1;
    }
  }

  return result;
}

double BlueFin::GlPeNicTimeMgr::GetNic2GpsSysOffsetS(BlueFin::GlPeNicTimeMgr *this, const BlueFin::GlNicTime *a2)
{
  v2 = 0.0;
  if (*(this + 20))
  {
    if (BlueFin::GlPeNicGpsOffsetData::ModelValid((this + 72)))
    {
      *v5.i64 = *(this + 46);
      v2 = *v5.i64 * -2.91038305e-11;
      if (a2)
      {
        if (*(this + 47))
        {
          v5.i16[0] = *(this + 49);
          *v5.i64 = v5.u64[0] * 16.0;
          *v6.i64 = *v5.i64 - trunc(*v5.i64);
          v7.f64[0] = NAN;
          v7.f64[1] = NAN;
          v6.i64[0] = vbslq_s8(vnegq_f64(v7), v6, v5).i64[0];
          if (*v6.i64 < 0.0 || *v6.i64 >= 1.0)
          {
            DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
          }

          v9 = *v6.i64 * 4294967300.0 + 0.5;
          v10 = v9;
          if (v9 >= 4294967300.0)
          {
            v10 = -1;
          }

          v11 = *v5.i64 + 604800 * *(this + 50);
          v25 = v10;
          v26 = v11;
          v12 = (*(*a2 + 32))(a2);
          v24[0] = *(a2 + 2);
          v24[1] = v12;
          BlueFin::GlTimePoint::resolveAmbiguity(&v25, v24, 0x24EA0000u);
          v13 = (*(*a2 + 24))(a2, v26);
          v14 = *(a2 + 2);
          v15 = *(a2 + 3);
          v16 = v13 | v25;
          if (v13 | v25)
          {
            v17 = v15 - v13;
            if (__PAIR64__(v15, v14) < __PAIR64__(v13, v25))
            {
              v20 = v13 - v15;
              v18 = v25 >= v14;
              v14 = v25 - v14;
              v21 = !v18;
              v15 = v20 - v21;
              v16 = 1;
            }

            else
            {
              v16 = 0;
              v18 = v14 >= v25;
              v14 -= v25;
              v19 = !v18;
              v15 = v17 - v19;
            }
          }

          v22 = v14 * 2.32830644e-10 + v15;
          if ((v16 & ((v15 | v14) != 0)) != 0)
          {
            v22 = -v22;
          }

          return v2 + *(this + 47) * -4.4408921e-16 * v22;
        }
      }
    }
  }

  return v2;
}

double BlueFin::GlPeNicTimeMgr::GetNic2UtcSysOffsetS(BlueFin::GlPeNicTimeMgr *this, const BlueFin::GlNicTime *a2, int8x16_t a3, int8x16_t a4)
{
  if (!*(this + 8))
  {
    return 0.0;
  }

  *a3.i64 = *(this + 22);
  v6 = *a3.i64 * -2.91038305e-11;
  if (a2 && *(this + 23))
  {
    a3.i16[0] = *(this + 25);
    *a3.i64 = a3.u64[0] * 16.0;
    *a4.i64 = *a3.i64 - trunc(*a3.i64);
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    a4.i64[0] = vbslq_s8(vnegq_f64(v7), a4, a3).i64[0];
    if (*a4.i64 < 0.0 || *a4.i64 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v9 = *a4.i64 * 4294967300.0 + 0.5;
    v10 = v9;
    if (v9 >= 4294967300.0)
    {
      v10 = -1;
    }

    v11 = *a3.i64 + 604800 * *(this + 26);
    v25 = v10;
    v26 = v11;
    v12 = (*(*a2 + 32))(a2);
    v24[0] = *(a2 + 2);
    v24[1] = v12;
    BlueFin::GlTimePoint::resolveAmbiguity(&v25, v24, 0x93A8000u);
    v13 = (*(*a2 + 24))(a2, v26);
    v14 = *(a2 + 2);
    v15 = *(a2 + 3);
    v16 = v13 | v25;
    if (v13 | v25)
    {
      v17 = v15 - v13;
      if (__PAIR64__(v15, v14) < __PAIR64__(v13, v25))
      {
        v20 = v13 - v15;
        v18 = v25 >= v14;
        v14 = v25 - v14;
        v21 = !v18;
        v15 = v20 - v21;
        v16 = 1;
      }

      else
      {
        v16 = 0;
        v18 = v14 >= v25;
        v14 -= v25;
        v19 = !v18;
        v15 = v17 - v19;
      }
    }

    v22 = v14 * 2.32830644e-10 + v15;
    if ((v16 & ((v15 | v14) != 0)) != 0)
    {
      v22 = -v22;
    }

    return v6 + *(this + 23) * -4.4408921e-16 * v22;
  }

  return v6;
}

uint64_t BlueFin::GlPeNicTimeMgr::Serialize(uint64_t this, BlueFin::GlPeEngineCallBacks *a2)
{
  v3 = this;
  if ((*(this + 32) | 4) != 4)
  {
    this = (*(*(this + 24) + 24))();
  }

  if ((*(v3 + 80) | 4) != 4)
  {
    v4 = *(*(v3 + 72) + 24);

    return v4(v3 + 72, a2, 0);
  }

  return this;
}

uint64_t BlueFin::GlPeNicTimeMgr::GetFctOfFutureLS(BlueFin::GlPeNicTimeMgr *this, const BlueFin::GlNicTime *a2, unsigned int *a3, int8x16_t a4, int8x16_t a5)
{
  *a3 = 0;
  if (!*(this + 8))
  {
    return 0;
  }

  if (BlueFin::GlPeNicTimeMgr::isExpired(this, a2, a4, a5) || !*(this + 56))
  {
    return 0;
  }

  v8 = (*(*a2 + 32))(a2) / 0x93A80;
  v9 = (((*(*a2 + 32))(a2) / 0x93A80) - *(this + 27));
  if (v9 >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = -v9;
  }

  v11 = v9 + 256;
  if (v9 >= -127)
  {
    v11 = v9;
  }

  if (v9 >= 128)
  {
    v12 = v9 - 256;
  }

  else
  {
    v12 = v11;
  }

  if (v10 == 128)
  {
    v12 = 0;
  }

  *a3 = *(this + 57) + 86400 * *(this + 56) + 604800 * (v8 - v12);
  return 1;
}

BOOL BlueFin::GlPeNicTimeMgr::isExpired(BlueFin::GlPeNicTimeMgr *this, const BlueFin::GlNicTime *a2, int8x16_t a3, int8x16_t a4)
{
  v4 = *(this + 8);
  if (!v4)
  {
    return 1;
  }

  if (v4 == 4)
  {
    return 0;
  }

  v7 = *(this + 18);
  a3.i32[0] = *(this + 10);
  *a3.i64 = a3.u64[0] * 0.001;
  v30 = &off_2A1F0DFC8;
  *a4.i64 = *a3.i64 - trunc(*a3.i64);
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  a4.i64[0] = vbslq_s8(vnegq_f64(v8), a4, a3).i64[0];
  if (*a4.i64 < 0.0 || *a4.i64 >= 1.0)
  {
LABEL_32:
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v11 = *a4.i64 * 4294967300.0 + 0.5;
  v12 = v11;
  if (v11 >= 4294967300.0)
  {
    v12 = -1;
  }

  v13 = *a3.i64 + 604800 * v7;
  v31 = v12;
  v32 = v13 + 619315200;
  v30 = &off_2A1F0DFC8;
  if (v13 < 0x93A80)
  {
    v14 = (*(*a2 + 32))(a2);
    v17 = ((v14 / 0x93A80) - *(this + 26));
    if (v17 >= 0)
    {
      v18 = ((v14 / 0x93A80) - *(this + 26));
    }

    else
    {
      v18 = -v17;
    }

    v19 = v17 + 256;
    if (v17 >= -127)
    {
      v19 = ((v14 / 0x93A80) - *(this + 26));
    }

    if (v17 >= 128)
    {
      v20 = v17 - 256;
    }

    else
    {
      v20 = v19;
    }

    if (v18 == 128)
    {
      v20 = 0;
    }

    if (*(this + 8))
    {
      *v15.i64 = (16 * *(this + 25));
    }

    else
    {
      v15.i64[0] = 0;
    }

    *v16.i64 = *v15.i64 - trunc(*v15.i64);
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v16.i64[0] = vbslq_s8(vnegq_f64(v21), v16, v15).i64[0];
    if (*v16.i64 >= 1.0)
    {
      goto LABEL_32;
    }

    v22 = v14 / 0x93A80 - v20;
    v23 = *v16.i64 * 4294967300.0 + 0.5;
    v24 = v23;
    if (v23 >= 4294967300.0)
    {
      v24 = -1;
    }

    v31 = v24;
    v32 = *v15.i64 + 604800 * v22 + 619315200;
  }

  v25 = (*(*a2 + 32))(a2);
  LODWORD(v26) = *(a2 + 2);
  v27 = v26 * 2.32830644e-10 + v25;
  v28 = (v30[4])(&v30);
  LODWORD(v29) = v31;
  return vabdd_f64(v27, v29 * 2.32830644e-10 + v28) > 4838400.0;
}

uint64_t BlueFin::GlPeNicTimeMgr::GetFutureLS(BlueFin::GlPeNicTimeMgr *this, const BlueFin::GlNicTime *a2, signed __int8 *a3, int8x16_t a4, int8x16_t a5)
{
  if (!*(this + 8))
  {
    return 0;
  }

  if (BlueFin::GlPeNicTimeMgr::isExpired(this, a2, a4, a5))
  {
    return 0;
  }

  v21 = 0;
  result = BlueFin::GlPeNicTimeMgr::GetFctOfFutureLS(this, a2, &v21, v8, v9);
  if (result)
  {
    v11 = v21;
    v15 = (*(*a2 + 32))(a2);
    LODWORD(v14) = *(a2 + 2);
    *v15.i64 = v14 * 2.32830644e-10 + v13;
    *v16.i64 = *v15.i64 + trunc(*v15.i64 * 2.32830644e-10) * -4294967300.0;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v18 = vnegq_f64(v17);
    *&v19 = vbslq_s8(v18, v16, v15).u64[0];
    if (*v15.i64 > 4294967300.0)
    {
      *v15.i64 = v19;
    }

    if (*v15.i64 < -4294967300.0)
    {
      *v12.i64 = -*v15.i64;
      *v15.i64 = -(*v15.i64 - trunc(*v15.i64 * -2.32830644e-10) * -4294967300.0);
      *v15.i64 = -*vbslq_s8(v18, v15, v12).i64;
    }

    if (*v15.i64 < 0.0)
    {
      v20 = --*v15.i64;
    }

    else
    {
      v20 = *v15.i64;
    }

    if (v11 < v20)
    {
      return 0;
    }

    *a3 = *(this + 57);
    return 1;
  }

  return result;
}

double BlueFin::GlSignalId::GetSecPerEpoch(BlueFin::GlSignalId *this)
{
  if (*(this + 4) >= 0x23Fu)
  {
    v2 = "IsValid()";
    DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
    v3 = 679;
    goto LABEL_6;
  }

  if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(this + 1) - *(this + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*this]])
  {
    v2 = "ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
    v3 = 686;
LABEL_6:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v3, v2);
  }

  return BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(this + 1) - *(this + 1) + BlueFin::GlSvId::s_aucSvId2gnss[*this]] * 0.001;
}

uint64_t BlueFin::GlMeClkMod::Deserialize(BlueFin::GlMeClkMod *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 70)
  {
    return 0;
  }

  v3 = *(a2 + 12);
  if (v3 > 5)
  {
    return 0;
  }

  if (v3 <= 2)
  {
    BlueFin::GlSysLogEntry::GetGlSet64BitsObsolete(&v12, a2);
    v11 = *(this + 2) & BlueFin::GlSetBase::GetULong(&v12, 0);
    *(this + 2) = v11;
    if (*(a2 + 12) == 1)
    {
      *(this + 2) = 2 * v11;
    }
  }

  else
  {
    v12 = this + 8;
    v13 = 1;
    BlueFin::GlSysLogEntry::GetGlSet(a2, &v12);
  }

  *(this + 3) = BlueFin::GlSysLogEntry::GetU32(a2);
  D64 = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 4) = D64;
  v7 = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 5) = v7;
  *(this + 3) = BlueFin::GlSysLogEntry::GetD64(a2);
  v8 = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 8) = v8;
  if (*(a2 + 12) < 5u)
  {
    *(this + 5) = 0;
    *(this + 12) = 2139095039;
    v10 = 0.000005;
  }

  else
  {
    *(this + 5) = BlueFin::GlSysLogEntry::GetD64(a2);
    v9 = BlueFin::GlSysLogEntry::GetD64(a2);
    *(this + 12) = v9;
    v10 = BlueFin::GlSysLogEntry::GetD64(a2);
  }

  *(this + 17) = v10;
  if (*(a2 + 11) != *(a2 + 10))
  {
    DeviceFaultNotify("glme_clkmodmgr.cpp", 1355, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_clkmodmgr.cpp", 1355, "otEntry.DataSize() == otEntry.ReadIdx()");
  }

  return 1;
}

uint64_t BlueFin::GlMeClkMod::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v20 = *MEMORY[0x29EDCA608];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 5;
  }

  if (v5 >= 6)
  {
    DeviceFaultNotify("glme_clkmodmgr.cpp", 1373, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 5");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_clkmodmgr.cpp", 1373, "ucVersion >= 1 && ucVersion <= 5");
  }

  v6 = v2;
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v16 = 70;
    v17 = v5;
    v18 = 0x1000000000000;
    v15 = &unk_2A1F09520;
    v19 = v5;
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        v8 = (v2 + 8);
        BlueFin::GlSysLogEntry::PutU32(&v15, *(v2 + 8));
        BlueFin::GlSysLogEntry::PutU32(&v15, *v8);
        BlueFin::GlSysLogEntry::PutU32(&v15, *v8);
      }

      else
      {
        v9 = *(v2 + 8);
        v11 = &v13;
        v12 = 3;
        v13 = v9;
        v14 = 0;
        BlueFin::GlSysLogEntry::PutGlSet(&v15, &v11);
      }
    }

    else
    {
      v7 = *(v2 + 8) >> (v5 == 1);
      BlueFin::GlSysLogEntry::PutU32(&v15, v7);
      BlueFin::GlSysLogEntry::PutU32(&v15, v7);
    }

    BlueFin::GlSysLogEntry::PutU32(&v15, *(v6 + 12));
    BlueFin::GlSysLogEntry::PutD64(&v15, *(v6 + 16));
    BlueFin::GlSysLogEntry::PutD64(&v15, *(v6 + 20));
    BlueFin::GlSysLogEntry::PutD64(&v15, *(v6 + 24));
    BlueFin::GlSysLogEntry::PutD64(&v15, *(v6 + 32));
    if (v5 == 5)
    {
      BlueFin::GlSysLogEntry::PutD64(&v15, *(v6 + 40));
      BlueFin::GlSysLogEntry::PutD64(&v15, *(v6 + 48));
      BlueFin::GlSysLogEntry::PutD64(&v15, *(v6 + 68));
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v15, 0, 4);
  }

  return 1;
}

uint64_t BlueFin::GlMeMicroKF::SetCntinFrq(uint64_t this, double a2, unsigned __int16 a3, unsigned int a4)
{
  *(this + 40) = a2;
  v4 = *(this + 52) + 1;
  *(this + 52) = v4;
  v5 = *(this + 56);
  if (v4 >= 2u && a4 > v5)
  {
    v9 = (a2 - *(this + 32)) * 1000.0 / (a4 - v5);
    v10 = fabs(v9 * 1000000000.0);
    if (v4 == 2)
    {
      if (v10 >= 50.0)
      {
        v4 = 1;
        *(this + 52) = 1;
      }

      else
      {
        v11 = *(this + 24) * 0.699999988 + v9 * 0.300000012;
        *(this + 24) = v11;
        if (fabs(v11 * 1000000000.0) > 5.0)
        {
          ++*(this + 54);
        }

        v4 = 2;
      }
    }

    else if (v10 < 50.0)
    {
      v12 = *(this + 24) * 0.699999988 + v9 * 0.300000012;
      *(this + 24) = v12;
      if (fabs(v12 * 1000000000.0) > 5.0)
      {
        ++*(this + 54);
      }
    }
  }

  v7 = v5 + 10000 >= a4 || v5 == 0;
  if (v7 && v4 <= 0x3Cu)
  {
    v8 = *(this + 54);
  }

  else
  {
    v8 = 0;
    *(this + 52) = 0;
  }

  *(this + 32) = a2;
  *(this + 56) = a4;
  *(this + 4) = v8;
  return this;
}

double BlueFin::GlMeSkfCbDot::Init(BlueFin::GlMeSkfCbDot *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = *(this + 7);
  *(this + 4) = 0;
  *(this + 12) = 0;
  *(this + 52) = 1;
  result = *(this + 10);
  *(this + 5) = result;
  *(this + 22) = 0;
  return result;
}

uint64_t BlueFin::GlMeMiniKF::mskfOverrideCbDotKF(uint64_t this, int a2, double a3, double a4)
{
  *(this + 24) = a3;
  *(this + 40) = a4;
  *(this + 64) = a2;
  *(this + 68) = 0;
  return this;
}

uint64_t BlueFin::GlMeMiniKF::UpdateCbFromSyncIn(BlueFin::GlMeMiniKF *this, double a2)
{
  v12 = 58;
  v9[0] = 1;
  v10 = 0;
  v11 = 0;
  v8 = ceil(a2 / 1000.0) + a2 * -0.001;
  SubBitAndEpochTime = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v8, v9, 1u);
  if (a2 <= 0.0)
  {
    if (a2 >= 0.0)
    {
      v6 = 0;
    }

    else
    {
      v6 = (a2 + -0.5);
    }

    LOBYTE(v8) = 1;
    BlueFin::GlMeSkfCb::NewMsmt(this + 112, v6, &v12, &v8, SubBitAndEpochTime, 1.0e-12);
    BlueFin::GlMeMiniKF::GenerateClockModFlags(&v8, this, v6);
    if (a2 >= 0.0)
    {
      v5 = 0;
    }

    else
    {
      v5 = (a2 + -0.5);
    }
  }

  else
  {
    v5 = (a2 + 0.5);
    LOBYTE(v8) = 1;
    BlueFin::GlMeSkfCb::NewMsmt(this + 112, (a2 + 0.5), &v12, &v8, SubBitAndEpochTime, 1.0e-12);
    BlueFin::GlMeMiniKF::GenerateClockModFlags(&v8, this, (a2 + 0.5));
  }

  return (*(*this + 32))(this, v5, LODWORD(v8));
}

uint64_t BlueFin::GlMeOscAidingInfo::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v14 = *MEMORY[0x29EDCA608];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  if (v5 >= 3)
  {
    DeviceFaultNotify("glme_oscaiding_info.cpp", 47, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 2");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_oscaiding_info.cpp", 47, "ucVersion >= 1 && ucVersion <= 2");
  }

  v6 = v3;
  v7 = v2;
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v10 = 24;
    v11 = v5;
    v12 = 0x1000000000000;
    v9 = &unk_2A1F092C0;
    v13 = v5;
    BlueFin::GlSysLogEntry::PutU32(&v9, *(v2 + 8));
    BlueFin::GlSysLogEntry::PutD64(&v9, *(v7 + 16));
    BlueFin::GlSysLogEntry::PutD64(&v9, *(v7 + 24));
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v7 + 32));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v9, v6, 4);
  }

  return 1;
}

uint64_t BlueFin::GlMeOscAidingInfo::Deserialize(BlueFin::GlMeOscAidingInfo *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 24 || *(a2 + 12) - 3 < 0xFFFFFFFE)
  {
    return 0;
  }

  *(this + 2) = BlueFin::GlSysLogEntry::GetU32(a2);
  *(this + 2) = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 3) = BlueFin::GlSysLogEntry::GetD64(a2);
  v5 = *(a2 + 12) >= 2u && BlueFin::GlSysLogEntry::GetU8(a2) != 0;
  *(this + 32) = v5;
  if (*(a2 + 11) != *(a2 + 10))
  {
    DeviceFaultNotify("glme_oscaiding_info.cpp", 88, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_oscaiding_info.cpp", 88, "otEntry.DataSize() == otEntry.ReadIdx()");
  }

  return 1;
}

double BlueFin::GlMeSkfCore::NoMsmtAvail(BlueFin::GlMeSkfCore *this, unsigned int a2, double a3, double a4)
{
  LODWORD(a4) = *(this + 12);
  v4 = (a2 - *&a4) / 1000.0;
  v5 = *(this + 3);
  v6 = sqrtf(v5);
  *&v4 = v4;
  *&v4 = fabsf(*&v4);
  result = (v6 + *&v4 * 0.000000005) * (v6 + *&v4 * 0.000000005);
  *(this + 3) = result;
  *(this + 12) = a2;
  return result;
}

void BlueFin::GlMeUserDynamic::~GlMeUserDynamic(BlueFin::GlMeUserDynamic *this)
{
  *this = &unk_2A1F0E368;
}

{
  *this = &unk_2A1F0E368;
  JUMPOUT(0x29C292F70);
}

uint64_t BlueFin::GlMeWinMgr::mskfGetCbGoodQuality(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  v4 = 0x3FF0000000000000;
  v5 = 0;
  return BlueFin::GlMeMiniKF::mskfGetCbGoodQuality(a1 + 9312, a2, &v5, a3, &v4, 0);
}

void BlueFin::GlMeWinMgr::SetTMDecodeInfo(uint64_t a1, unsigned __int8 *a2, char a3, double a4)
{
  v7 = a4 * 1000.0;
  BlueFin::GlMeSatAidMgr::GetSatAid(a1 + 320, a2, 0, a4 * 1000.0);
  if (v8 && *(v8 + 40) < 0.001 && *(v8 + 12) != 4)
  {
    *(a1 + 9808) = *a2;
    *(a1 + 9816) = v7;
    *(a1 + 9824) = a3;
  }
}

void BlueFin::GlMeWinMgr::SetGalSecDecodeInfo(uint64_t a1, unsigned __int8 *a2, char a3, double a4)
{
  v7 = a4 * 1000.0;
  BlueFin::GlMeSatAidMgr::GetSatAid(a1 + 320, a2, 0, a4 * 1000.0);
  if (v8 && *(v8 + 40) < 0.001 && *(v8 + 12) != 4)
  {
    *(a1 + 9832) = *a2;
    *(a1 + 9840) = v7;
    *(a1 + 9848) = a3;
  }
}

BOOL BlueFin::GlMeWinMgr::GetLeapSecondFromSatAid(BlueFin::GlMeWinMgr *this, unsigned int a2, int *a3, double a4, double a5, double a6)
{
  result = *(this + 84) <= 12000.0 && *(this + 88) <= 11000.0;
  if (result)
  {
    LODWORD(a6) = *(this + 89);
    v8 = (a2 - *&a6) / 1000.0;
    v9 = *(this + 43) + v8;
    if (v9 < 0.0)
    {
      v9 = v9 + 86400.0;
    }

    if (v9 >= 86400.0)
    {
      v9 = v9 + -86400.0;
    }

    v10 = *(this + 41) + v8;
    if (v10 < 0.0)
    {
      v10 = v10 + 604800.0;
    }

    if (v10 >= 604800.0)
    {
      v10 = v10 + -604800.0;
    }

    v11 = v10 + floor(v10 / 86400.0) * -86400.0 + 10800.0 - v9;
    v12 = 0.5;
    if (v11 <= 0.0 && (v12 = -0.5, v11 >= 0.0))
    {
      v13 = 0;
    }

    else
    {
      v13 = (v11 + v12);
      if (v13 > 86399)
      {
        v13 -= 86400;
      }
    }

    *a3 = v13;
  }

  return result;
}

BOOL BlueFin::GlMeWinMgr::SetTMDecodeInfoFromGps(uint64_t a1, unsigned __int8 *a2, double a3, uint64_t a4, char a5)
{
  BlueFin::GlMeSatAidMgr::GetSatAid(a1 + 320, a2, 0, a3);
  v13 = v12;
  if (a3 <= 0.0)
  {
    if (a3 >= 0.0)
    {
      v15 = 0;
      goto LABEL_7;
    }

    v14 = -0.5;
  }

  else
  {
    v14 = 0.5;
  }

  v9 = a3 + v14;
  v15 = v9;
LABEL_7:
  v19 = 0;
  result = BlueFin::GlMeWinMgr::GetLeapSecondFromSatAid(a1, v15, &v19, v9, v10, v11);
  if (v13 && *(v13 + 40) < 0.001 && *(v13 + 12) != 4 && result)
  {
    if (v19 >= 0)
    {
      v18 = v19 & 1;
    }

    else
    {
      v18 = -(v19 & 1);
    }

    *(a1 + 9808) = *a2;
    *(a1 + 9816) = a3 - (1000 * v18);
    *(a1 + 9824) = a5;
  }

  return result;
}

uint64_t BlueFin::GlMeAcqWin::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v21 = *MEMORY[0x29EDCA608];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 8;
  }

  if (v5 - 9 <= 0xFFFFFFFB)
  {
    DeviceFaultNotify("glme_windmgr.cpp", 1184, "SerializeImpl", "ucVersion >= 5 && ucVersion <= 8");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_windmgr.cpp", 1184, "ucVersion >= 5 && ucVersion <= 8");
  }

  v6 = v3;
  v7 = v2;
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v17 = 72;
    v18 = v5;
    v19 = 0x1000000000000;
    v16 = &unk_2A1F09520;
    v20 = v5;
    BlueFin::GlSysLogEntry::PutD64(&v16, *(v2 + 24));
    if (*(v7 + 8) - 1 >= 0xBC)
    {
      BlueFin::GlSysLogEntry::PutU16(&v16, 0xFFFF);
      if (v5 > 6)
      {
        LOBYTE(v8) = 0;
        goto LABEL_16;
      }
    }

    else
    {
      BlueFin::GlSysLogEntry::PutU16(&v16, *(&BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + *(v7 + 8)));
      if (v5 == 7)
      {
        LOBYTE(v8) = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * *(v7 + 12) - *(v7 + 12) + BlueFin::GlSvId::s_aucSvId2gnss[*(v7 + 8)]];
LABEL_16:
        BlueFin::GlSysLogEntry::PutU8(&v16, v8);
        goto LABEL_17;
      }

      if (v5 >= 8)
      {
        v8 = *(v7 + 12);
        goto LABEL_16;
      }
    }

LABEL_17:
    v9 = *(v7 + 32);
    v12 = &v14;
    v13 = 3;
    v14 = v9;
    v15 = 0;
    BlueFin::GlSysLogEntry::PutGlSet(&v16, &v12);
    v10 = *(v7 + 36);
    if (v5 < 6)
    {
      v10 = v10 + -174.0;
    }

    BlueFin::GlSysLogEntry::PutF32(&v16, v10);
    BlueFin::GlSysLogEntry::PutD64(&v16, *(v7 + 40));
    BlueFin::GlSysLogEntry::PutD64(&v16, *(v7 + 44));
    BlueFin::GlSysLogEntry::PutD64(&v16, *(v7 + 56));
    BlueFin::GlSysLogEntry::PutD64(&v16, *(v7 + 64));
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v16, v6, 4);
  }

  return 1;
}

uint64_t BlueFin::GlMeAcqWin::Deserialize(BlueFin::GlMeAcqWin *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 72 || *(a2 + 12) - 9 < 0xFFFFFFFC)
  {
    return 0;
  }

  *(this + 3) = BlueFin::GlSysLogEntry::GetD64(a2);
  U16 = BlueFin::GlSysLogEntry::GetU16(a2);
  if (U16 != 0xFFFF)
  {
    if (U16 >= 0x100)
    {
      v21 = "ucImplSvId == usImplSvId";
      DeviceFaultNotify("glme_windmgr.cpp", 1376, "Deserialize", "ucImplSvId == usImplSvId");
      v22 = 1376;
    }

    else
    {
      v6 = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + U16);
      if ((v6 - 1) < 0xBC)
      {
        v7 = *(a2 + 12);
        if (v7 <= 6)
        {
          v8 = BlueFin::GlSvId::s_aucSvId2gnss[v6];
          if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v8] == 255)
          {
            v10 = 575;
            v9 = -1;
          }

          else
          {
            v9 = 0;
            v10 = BlueFin::GlSignalId::s_ausGnss2signalId[v8] + v6 - BlueFin::GlSvId::s_aucGnss2minSvId[v8];
          }

          *(this + 8) = v6;
          *(this + 3) = v9;
          *(this + 8) = v10;
          goto LABEL_21;
        }

        U8 = BlueFin::GlSysLogEntry::GetU8(a2);
        v13 = BlueFin::GlSvId::s_aucSvId2gnss[v6];
        v14 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * U8 - U8 + v13];
        if (v7 == 7)
        {
          if (v14 == 255)
          {
            v15 = 575;
            U8 = -1;
LABEL_20:
            *(this + 8) = v6;
            *(this + 3) = U8;
            *(this + 8) = v15;
            goto LABEL_21;
          }
        }

        else if (v14 == 255)
        {
          U8 = -1;
          v15 = 575;
          goto LABEL_20;
        }

        v15 = BlueFin::GlSignalId::s_ausGnss2signalId[v13] + v6 - BlueFin::GlSvId::s_aucGnss2minSvId[v13] + BlueFin::GlSvId::s_aucGnss2numSvId[v13] * U8;
        goto LABEL_20;
      }

      v21 = "0";
      DeviceFaultNotify("glme_windmgr.cpp", 1381, "Deserialize", "0");
      v22 = 1381;
    }

LABEL_35:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glme_windmgr.cpp", v22, v21);
  }

  *(this + 8) = 0;
  *(this + 3) = -1;
  *(this + 8) = 575;
  v11 = *(a2 + 12);
  if (v11 < 7)
  {
    goto LABEL_22;
  }

  BlueFin::GlSysLogEntry::GetU8(a2);
LABEL_21:
  v11 = *(a2 + 12);
LABEL_22:
  if (v11 <= 2)
  {
    BlueFin::GlSysLogEntry::GetGlSet64BitsObsolete(&v23, a2);
    *(this + 8) &= BlueFin::GlSetBase::GetULong(&v23, 0);
  }

  else
  {
    v23 = this + 32;
    v24 = 1;
    BlueFin::GlSysLogEntry::GetGlSet(a2, &v23);
  }

  v16 = *(a2 + 12);
  F32 = BlueFin::GlSysLogEntry::GetF32(a2);
  if (v16 < 6)
  {
    F32 = F32 + 174.0;
  }

  *(this + 9) = F32;
  D64 = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 10) = D64;
  v19 = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 11) = v19;
  if (*(a2 + 12) <= 4u)
  {
    BlueFin::GlSysLogEntry::GetF32(a2);
  }

  *(this + 7) = BlueFin::GlSysLogEntry::GetD64(a2);
  v20 = BlueFin::GlSysLogEntry::GetD64(a2);
  *(this + 16) = v20;
  if (*(a2 + 12) == 1)
  {
    *(this + 8) *= 2;
  }

  if (*(a2 + 11) != *(a2 + 10))
  {
    v21 = "otEntry.DataSize() == otEntry.ReadIdx()";
    DeviceFaultNotify("glme_windmgr.cpp", 1438, "Deserialize", "otEntry.DataSize() == otEntry.ReadIdx()");
    v22 = 1438;
    goto LABEL_35;
  }

  return 1;
}

uint64_t BlueFin::GlMeAcqWin::OverrideAcqWinWithDspMeas(uint64_t this, const BlueFin::GlMeDSPMeas *a2, int a3)
{
  v3 = *(a2 + 21);
  if ((v3 & 0x10) != 0)
  {
    *(this + 56) = *(a2 + 3);
    v4 = *(a2 + 54);
    if (a3)
    {
      if (v4 >= 0x23F)
      {
LABEL_4:
        v5 = "IsValid()";
        DeviceFaultNotify("glsignalid.h", 792, "GetSecondsPerChip", "IsValid()");
        v6 = 792;
        goto LABEL_24;
      }

      goto LABEL_11;
    }

    if (v4 >= 0x23F)
    {
      v5 = "IsValid()";
      DeviceFaultNotify("glsignalid.h", 679, "GetMsPerEpoch", "IsValid()");
      v6 = 679;
      goto LABEL_24;
    }

    if (!BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 26) - *(a2 + 26) + BlueFin::GlSvId::s_aucSvId2gnss[*(a2 + 100)]])
    {
      v5 = "ucMsPerEpoch != 0";
      DeviceFaultNotify("glsignalid.h", 686, "GetMsPerEpoch", "ucMsPerEpoch != 0");
      v6 = 686;
      goto LABEL_24;
    }

    v7 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * *(a2 + 26) - *(a2 + 26) + BlueFin::GlSvId::s_aucSvId2gnss[*(a2 + 100)]] * 0.001;
    *(this + 64) = v7;
  }

  if ((v3 & 0x20) != 0 && (a3 & 1) == 0)
  {
    *(this + 56) = *(this + 56) + *(a2 + 16);
    if (*(a2 + 54) >= 0x23Fu)
    {
      goto LABEL_4;
    }

LABEL_11:
    v8 = BlueFin::GlSvId::s_aucSvId2gnss[*(a2 + 100)];
    v9 = *(a2 + 26);
    v10 = BlueFin::GlSignalId::s_aulSignalIndexAndGnss2chipsPerEpoch[7 * v9 + v8];
    v11 = BlueFin::GlSignalId::s_aucSignalIndexAndGnss2msPerEpoch[8 * v9 - v9 + v8];
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = v11 / (1000 * v10) * 0.5;
      *(this + 64) = v13;
      *(this + 32) |= 0x200u;
      v3 = *(a2 + 21);
      goto LABEL_16;
    }

    v5 = "ulChipsPerEpoch != 0 && ucMsPerEpoch != 0";
    DeviceFaultNotify("glsignalid.h", 800, "GetSecondsPerChip", "ulChipsPerEpoch != 0 && ucMsPerEpoch != 0");
    v6 = 800;
LABEL_24:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", v6, v5);
  }

LABEL_16:
  if ((v3 & 0x40) != 0)
  {
    v14 = *(a2 + 14);
    *(this + 40) = *(a2 + 8);
    *(this + 44) = v14;
  }

  if ((~v3 & 0x418) == 0)
  {
    *(this + 32) |= 0x12u;
  }

  return this;
}

void BlueFin::GlMeWinMgr::~GlMeWinMgr(BlueFin::GlMeWinMgr *this)
{
  *this = &unk_2A1F0E3F8;
  *(this + 2) = &unk_2A1F0E368;
}

{
  JUMPOUT(0x29C292F60);
}

double BlueFin::GlPeNavSatAidMgr::Remove(uint64_t a1, unsigned __int8 a2)
{
  if (((*(*(a1 + 2568) + 4 * (a2 >> 5)) >> (a2 & 0x1F)) & 1) != 0 && *(a1 + 2560))
  {
    v3 = 0;
    while (1)
    {
      v4 = (*(a1 + 2552) + 28 * v3);
      if (*v4 == a2)
      {
        break;
      }

      if (*(a1 + 2560) <= ++v3)
      {
        return result;
      }
    }

    BlueFin::GlSetBase::Remove(a1 + 2568, a2);
    v5 = *(a1 + 2560) - 1;
    *(a1 + 2560) = v5;
    if (v5)
    {
      v6 = *(a1 + 2552) + 28 * v5;
      *v4 = *v6;
      v7 = *(v6 + 4);
      *(v4 + 20) = *(v6 + 20);
      *(v4 + 4) = v7;
      v8 = *(a1 + 2560);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(a1 + 2552) + 28 * v8;
    *(v9 + 4) = 0x400000001;
    *v9 = 0;
    *(v9 + 24) = -1;
    result = NAN;
    *(v9 + 16) = 0xFFFFFFFF00000000;
  }

  return result;
}

double BlueFin::GlPeNavSatAidMgr::Add(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 2568);
  v3 = *(v2 + 4 * (a2 >> 5));
  if (((v3 >> (a2 & 0x1F)) & 1) == 0)
  {
    v4 = *(a1 + 2560);
    if (v4 < 0x5B)
    {
      *(v2 + 4 * (a2 >> 5)) = v3 | (1 << (a2 & 0x1F));
      v6 = *(a1 + 2552) + 28 * v4;
      *v6 = a2;
      *(v6 + 4) = 0x400000002;
      *(v6 + 24) = -1;
      result = NAN;
      *(v6 + 16) = 0xFFFFFFFF00000000;
      *(a1 + 2560) = v4 + 1;
    }

    else
    {
      GlCustomLog(11, "GlPeNavSatAidMgr::Add(%hu) no room %u > %d\n", a2, v4, 91);
    }
  }

  return result;
}

uint64_t BlueFin::NonGeoMsgProcess::RegisterListener(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  return result;
}

{
  *(result + 24) = a2;
  return result;
}

{
  *(result + 32) = a2;
  return result;
}

{
  *(result + 40) = a2;
  return result;
}

{
  *(result + 48) = a2;
  return result;
}

{
  *(result + 56) = a2;
  return result;
}

{
  *(result + 64) = a2;
  return result;
}

{
  *(result + 72) = a2;
  return result;
}

uint64_t BlueFin::NonGeoMsgProcess::SetPackedData(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  BlueFin::BdNavMsgMgr::ProcessAlm(a1 + 8, a2, v5);
  v12 = *(a2 + 24);
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 16))(result, v5, a2);
  }

  return result;
}

{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))(result, 1, a2, 1);
  }

  return result;
}

uint64_t BlueFin::NonGeoMsgProcess::SetPackedData(uint64_t a1, unsigned int *a2)
{
  v2 = bswap32(a2[1]);
  v4[0] = bswap32(*a2);
  v4[1] = v2;
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 16))(result, v4, a2);
  }

  return result;
}

{
  v2 = *a2;
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = (v2 >> 14) >> 2;
  v6[4] = v3;
  v6[5] = (v3 >> 14) >> 2;
  v4 = a2[2];
  v6[2] = v4;
  v6[3] = (v4 >> 14) >> 2;
  result = *(a1 + 48);
  if (result)
  {
    return (*(*result + 16))(result, v6, a2);
  }

  return result;
}

uint64_t BlueFin::NonGeoMsgProcess::SetPackedData(uint64_t a1, int *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = *a2;
  v6[0] = v2 >> 8;
  v6[1] = v3;
  v10 = BYTE1(v4);
  v7 = BYTE2(v4);
  v8 = v4;
  v9 = v2;
  result = *(a1 + 40);
  if (result)
  {
    return (*(*result + 16))(result, v6, a2);
  }

  return result;
}

uint64_t BlueFin::NonGeoMsgProcess::SetPackedData(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v26 = 0;
  a24 = *MEMORY[0x29EDCA608];
  LOBYTE(v30) = 0;
  a19 = &a9;
  do
  {
    v27 = &v30 + v26;
    v27[32] = 0;
    *(v27 + 17) = 0;
    v26 += 4;
  }

  while (v26 != 76);
  BlueFin::BdNavMsgMgr::ProcessHealth(a1 + 8, 1, a2, &v30, 0);
  v28 = *(a1 + 72);
  if (v28)
  {
    (*(*v28 + 16))(v28, &v30, a2);
  }

  BlueFin::BdNavMsgMgr::ProcessHealth(a1 + 8, 2, a2, &v30, 0);
  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 16))(result, &v30, a2);
  }

  return result;
}

void BlueFin::NonGeoMsgProcess::SetDataSubFrmMeas(uint64_t result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, char a15, char a16, uint64_t a17, int a18, uint64_t a19, signed int a20, uint64_t a21, int a22, uint64_t a23, unsigned __int32 a24, unint64_t a25, __int128 a26, __int128 a27, __int128 a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  a52 = *MEMORY[0x29EDCA608];
  BYTE1(v117) = *a2;
  BYTE2(v117) = -1;
  LOBYTE(v117) = 0;
  if ((BYTE1(v117) - 6) < 0xFBu)
  {
    return;
  }

  v55 = result + 8;
  v56 = (*(*result + 136))(result);
  BlueFin::BdNavMsgMgr::FillRawNavSubframe(v55, a2, &v117, v56);
  v58 = BYTE1(v117) == 1 && v117 == 1;
  if (v58 && (v119 & 0x20000) == 0)
  {
    v59 = (v120 >> 17) & 0x1FFF;
    v60 = *(result + 56);
    if (v60)
    {
      (*(*v60 + 16))(v60, *(result + 220), (v120 >> 17) & 0x1FFF, a3);
    }

    v61 = *(result + 40);
    if (v61)
    {
      v62 = *(a3 + 4);
      *(v61 + 8) = v59;
      *(v61 + 12) = v62;
    }

    v63 = *(result + 48);
    if (v63)
    {
      v64 = *(a3 + 4);
      *(v63 + 8) = v59;
      *(v63 + 12) = v64;
    }
  }

  v65 = 0;
  a47 = &a37;
  LOWORD(a26) = 0;
  v66.i64[1] = 0;
  *(&a26 + 4) = 0u;
  *(&a27 + 4) = 0u;
  *(&a28 + 4) = 0u;
  *(&a29 + 4) = 0u;
  *(&a30 + 4) = 0u;
  *(&a31 + 4) = 0u;
  a32 = 0u;
  a25 = 0;
  LOBYTE(a33) = 0;
  do
  {
    v67 = &a33 + v65;
    v67[32] = 0;
    *(v67 + 17) = 0;
    v65 += 4;
  }

  while (v65 != 76);
  a24 = 0;
  a23 = 0;
  a22 = 0;
  a21 = 0;
  a20 = 0;
  a19 = 0;
  a18 = 0;
  a17 = 0;
  if (v117 != 1)
  {
    return;
  }

  v68 = BYTE1(v117);
  if (BYTE1(v117) > 3u)
  {
    if ((BYTE1(v117) & 0xFE) != 4)
    {
      return;
    }

    v87 = (v119 >> 10) & 0x7F;
    if (!v87)
    {
      return;
    }

    if (BYTE1(v117) == 5)
    {
      v87 += 24;
    }

    if (v87 > 0x1E)
    {
      if (v87 > 0x22)
      {
        return;
      }

      vars0 = 0u;
      if (v87 == 33)
      {
        LODWORD(a23) = (v121 << 6) & 0x3FFFC000 | HIWORD(v122) & 0x3FFF;
        HIDWORD(a23) = (v122 << 14) & 0x3FC00000 | (v123 >> 8) & 0x3FFFFF;
        a24 = v124 & 0x3FFFFF00 | (v125 >> 22);
        LOWORD(a21) = (v121 << 6) & 0xC000 | HIWORD(v122) & 0x3FFF;
        WORD1(a21) = (v121 >> 8) >> 2;
        LOWORD(a22) = v123 >> 8;
        HIWORD(a22) = (HIDWORD(a23) >> 14) >> 2;
        WORD2(a21) = v124 & 0xFF00 | (v125 >> 22);
        HIWORD(a21) = (v124 >> 14) >> 2;
        v110 = *(result + 48);
        if (v110)
        {
          v111 = (v118 << 8) & 0xFF000 | (v119 >> 18) & 0xFFF;
          if (v111 < 0x93A80)
          {
            v110[4] = v111;
          }

          (*(*v110 + 16))(v110, &a21, &a23);
        }

        return;
      }

      if (v87 != 32)
      {
        if (v87 == 31)
        {
          BlueFin::BdNavMsgMgr::HealthPacked(v55, 1, &v117, &vars0);
          BlueFin::BdNavMsgMgr::ProcessHealth(v55, 1, &vars0, &a33, 0);
          v108 = *(result + 72);
          if (v108)
          {
            (*(*v108 + 16))(v108, &a33, &vars0);
          }
        }

        else
        {
          LODWORD(a19) = (v119 << 14) & 0xC00000 | (v120 >> 8) & 0x3FFFFF;
          HIDWORD(a19) = (4 * v121) & 0xFFFFFC00 | (v122 >> 20) & 0x3FF;
          a20 = (v122 << 12) & 0xFFF00000 | (v123 >> 10) & 0xFFFFF;
          LODWORD(a17) = a20 >> 8;
          HIDWORD(a17) = HIDWORD(a19);
          HIBYTE(a18) = BYTE2(v120);
          LOBYTE(a18) = BYTE2(a19);
          BYTE1(a18) = BYTE1(v120);
          BYTE2(a18) = v123 >> 10;
          v112 = *(result + 40);
          if (v112)
          {
            v113 = (v118 << 8) & 0xFF000 | (v119 >> 18) & 0xFFF;
            if (v113 < 0x93A80)
            {
              v112[4] = v113;
            }

            (*(*v112 + 16))(v112, &a17, &a19);
          }
        }

        return;
      }

      BlueFin::BdNavMsgMgr::HealthPacked(v55, 2, &v117, &vars0);
      BlueFin::BdNavMsgMgr::ProcessHealth(v55, 2, &vars0, &a33, (result + 221));
      v109 = *(result + 72);
      if (v109)
      {
        (*(*v109 + 16))(v109, &a33, &vars0);
      }
    }

    else
    {
      v88 = *(result + 224);
      if (v88 >= 0x1E)
      {
        v88 = 0;
        *(result + 224) = 0;
      }

      BlueFin::BdNavMsgMgr::AlmPacked(v55, &v117, (*(result + 1096) + 28 * v88), v68 == 5);
      ++*(result + 224);
      if (*(result + 223) != 1)
      {
        return;
      }
    }

    BlueFin::NonGeoMsgProcess::PublishAlm(result);
    return;
  }

  switch(BYTE1(v117))
  {
    case 1u:
      v79 = 0;
      v93 = v121;
      v92 = v122;
      v94 = v123;
      v95 = v124;
      *(result + 1172) = (v122 << 8) & 0xFFFF0000 | (v123 >> 14);
      v96 = (v94 << 18) & 0xFC000000 | (v95 >> 4) & 0x3FFFFFF;
      v78 = &v125;
      v70 = v126;
      v97 = (HIBYTE(v92) | (v126 << 19)) & 0xF800003F | (HIDWORD(v126) >> 3) & 0x7FFFC00 | (v93 >> 2) & 0x3C0;
      v69 = v119;
      v98 = (v93 >> 7) & 0x7FFFE0 | (HIDWORD(v126) >> 8) & 0x1F | ((v120 >> 8) << 23);
      v99 = v119 >> 8;
      v100 = (v125 << 6) & 0xFFE00000 | (v120 >> 17) & 0x1FFF;
      *(result + 1176) = v96 & 0xFFFFFFF0 | (v125 >> 26) & 0xF;
      *(result + 1104) = v97;
      v101 = v100 & 0xFFE1FFFF | ((v99 & 0xF) << 17);
      v80 = 252;
      v81 = 10;
      v82 = 33554176;
      *(result + 1108) = v98;
      *(result + 1112) = v101;
      v83 = 5;
      v84 = -33554432;
      v85 = 17;
      v86 = 1116;
      break;
    case 2u:
      v69 = HIDWORD(v126);
      v70 = v121;
      v89 = (4 * v125) & 0xFFFFFC00 | (v126 >> 20) & 0x3FF;
      v90.i64[0] = __PAIR64__(v122, v126);
      v90.i64[1] = __PAIR64__(v119, v121);
      v91.i64[0] = __PAIR64__(v123, HIDWORD(v126));
      v91.i64[1] = __PAIR64__(v120, v122);
      v78 = &v124;
      v79 = 1;
      v80 = 192;
      v82 = 768;
      v83 = 20;
      *(result + 1120) = vbslq_s8(xmmword_298A3AEF0, vshlq_u32(v91, xmmword_298A3AEE0), vshlq_u32(v90, xmmword_298A3AED0));
      *(result + 1136) = v89;
      v84 = -1024;
      v85 = 2;
      v86 = 1140;
      v81 = 2;
      break;
    case 3u:
      v66.i64[0] = v126;
      v69 = v123;
      v70 = v120;
      v57.i32[0] = v125;
      v71 = vzip1q_s32(v57, v66);
      v71.i32[2] = v124;
      v72 = vshlq_u32(v71, xmmword_298A3AE90);
      v71.i32[3] = v120;
      v73 = vshlq_u32(v71, xmmword_298A3AE80);
      v73.i32[2] = v72.i32[2];
      v66.i32[2] = v123 << 15;
      v72.i64[0] = 0x7F0000007FLL;
      v72.i64[1] = 0x7F0000007FLL;
      v74 = vandq_s8(v66, v72);
      v66.i32[3] = v121;
      v75 = xmmword_298A3AEC0;
      v76 = vandq_s8(vshlq_u32(v66, xmmword_298A3AEB0), xmmword_298A3AEC0);
      v75.i32[2] = (v125 >> 29) & 1;
      v76.i32[2] = vorrq_s8(v74, v75).i32[2];
      v77 = (v122 >> 5) & 0x1FFFFF8 | (BYTE1(v121) << 25);
      v78 = &v119;
      v79 = 2;
      v80 = 131056;
      v81 = 13;
      v82 = 4063232;
      *(result + 1144) = vorrq_s8(v76, vandq_s8(v73, xmmword_298A3AEA0));
      *(result + 1160) = v77;
      v83 = 8;
      v84 = -4194304;
      v85 = 14;
      v86 = 1164;
      break;
    default:
      v102 = *(result + 88);
      goto LABEL_35;
  }

  *(result + v86) = (v70 >> v83) & v82 | (v69 >> v81) & v80 | (*v78 << v85) & v84;
  v102 = *(result + 88) | (1 << v79);
  *(result + 88) = v102;
LABEL_35:
  if ((~v102 & 7) == 0)
  {
    v103 = *(result + 82);
    if ((v103 & 0x1C) == 0xC)
    {
      v104 = 0;
      v105 = (result + 104);
      do
      {
        *(&a15 + v104++) = (1193047 * ((*v105 >> 18) & 0xFF0 | ((*(v105 - 1) >> 4) << 12))) >> 32;
        v105 += 10;
      }

      while (v104 != 3);
      v106 = 0;
      while (v106 > 1)
      {
LABEL_44:
        if (++v106 == 3)
        {
          BlueFin::NonGeoMsgProcess::ProcessEph(result + 1104, &a26, *(result + 220));
          if (a26)
          {
            LOBYTE(vars0) = 1;
            WORD1(vars0) = 1;
            *(result + 1180) = 1;
            *(result + 80) = 0;
            (*(*result + 152))(result);
          }

          else
          {
            *(result + 82) = v103 & 0xFFE3 | 0x10;
            LOBYTE(vars0) = 0;
            WORD1(vars0) = 0;
            *(result + 1180) = 0;
          }

          v114 = *(result + 64);
          if (v114)
          {
            (*(*v114 + 16))(v114, &vars0, result + 1180);
          }

          v115 = *(result + 24);
          if (v115)
          {
            (*(*v115 + 16))(v115, 1, result + 1104, 0);
          }

          a25 = __PAIR64__(bswap32(*(result + 1176)), bswap32(*(result + 1172)));
          v116 = *(result + 32);
          if (v116)
          {
            if (!vars0)
            {
              (*(*v116 + 16))(v116, &a25, result + 1172);
            }
          }

          goto LABEL_71;
        }
      }

      v107 = v106;
      while (*(&a15 + v106) == *(&a16 + v107))
      {
        if (++v107 == 2)
        {
          goto LABEL_44;
        }
      }

LABEL_71:
      *(result + 80) = 0;
      (*(*result + 152))(result);
    }
  }
}

double BlueFin::NonGeoMsgProcess::ResetSfState(BlueFin::NonGeoMsgProcess *this)
{
  if (*(this + 80) != 1)
  {
    *(this + 80) = 1;
    result = 0.0;
    *(this + 81) = 0u;
    *(this + 97) = 0u;
    *(this + 113) = 0u;
    *(this + 129) = 0u;
    *(this + 145) = 0u;
    *(this + 161) = 0u;
    *(this + 177) = 0u;
    *(this + 193) = 0u;
    *(this + 204) = 0u;
  }

  return result;
}

double non-virtual thunk toBlueFin::NonGeoMsgProcess::ResetSfState(BlueFin::NonGeoMsgProcess *this)
{
  if (*(this + 72) != 1)
  {
    *(this + 72) = 1;
    result = 0.0;
    *(this + 73) = 0u;
    *(this + 89) = 0u;
    *(this + 105) = 0u;
    *(this + 121) = 0u;
    *(this + 137) = 0u;
    *(this + 153) = 0u;
    *(this + 169) = 0u;
    *(this + 185) = 0u;
    *(this + 196) = 0u;
  }

  return result;
}

uint64_t BlueFin::NonGeoMsgProcess::EbwRestoreSFWords(_DWORD *a1, uint64_t a2, _WORD *a3)
{
  result = (*(*a1 + 136))(a1, *(a2 + 1), *(a2 + 2));
  v7 = *(a2 + 1);
  if (v7 <= 3)
  {
    if (!*(a2 + 1))
    {
      DeviceFaultNotify("bd_msg_process.cpp", 230, "EbwRestoreSFWords", "word >=0 && word < BD_NONGEO_NUM_EPH_SFM");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "bd_msg_process.cpp", 230, "word >=0 && word < BD_NONGEO_NUM_EPH_SFM");
    }

    v8 = 0;
    v9 = 10 * v7 - 10;
    v10 = &a1[10 * *(a2 + 1) + 15];
    v11 = v9;
    do
    {
      if ((a1[23] >> v11))
      {
        *(a2 + 4 + v8 * 4) = v10[v8];
      }

      ++v8;
      ++v11;
    }

    while (v8 != 10);
    *a3 = result & (a1[23] >> v9);
  }

  return result;
}

uint64_t BlueFin::NonGeoMsgProcess::EphUpdateProcess(uint64_t result, uint64_t a2, _WORD *a3)
{
  v3 = *(a2 + 1);
  v4 = v3 - 1;
  if ((v3 - 1) > 2)
  {
    return result;
  }

  v5 = *a3;
  v6 = *(result + 81);
  if (v3 == 3 && (v5 & 2) != 0)
  {
    v8 = *(a2 + 8) & 0x3FF00;
    v9 = v8 - 3584 * ((1198373 * v8) >> 32);
    if (v9 > 0x7FF || v8 >= 0xE000 && !v9)
    {
      goto LABEL_16;
    }

    if (v6 == 3)
    {
      if (v8 == *(result + 84))
      {
        goto LABEL_16;
      }
    }

    else if (v6 == 1)
    {
      *(result + 81) = 3;
      *(result + 84) = v8;
      goto LABEL_16;
    }

    *(result + 81) = 3;
    *(result + 84) = v8;
    goto LABEL_15;
  }

  if (!*(result + 81))
  {
    *(result + 81) = 1;
LABEL_15:
    *(result + 96) = 0;
    *(result + 88) = 0;
    *(result + 82) = 4;
    *(result + 100) = 0u;
    *(result + 116) = 0u;
    *(result + 132) = 0u;
    *(result + 148) = 0u;
    *(result + 164) = 0u;
    *(result + 180) = 0u;
    *(result + 196) = 0u;
    *(result + 212) = 0;
    v5 = *a3;
  }

LABEL_16:
  v10 = 0;
  v11 = a2 + 4;
  v12 = ~(1 << v4);
  v13 = result + 40 * v4 + 100;
  v14 = 10 * v3 - 10;
  do
  {
    if (((1 << v10) & v5) != 0)
    {
      v15 = 1 << (v14 + v10);
      v16 = *(result + 96);
      if ((v16 & v15) == 0)
      {
        v17 = *(result + 92);
        if ((v17 & v15) != 0)
        {
          if (v10 - 2 >= 8)
          {
            if (v10 == 1)
            {
              if (((*(v11 + 4 * v10) ^ *(v13 + 4 * v10)) & 0x3FF00) != 0)
              {
                goto LABEL_22;
              }
            }

            else if (((*(v11 + 4 * v10) ^ *(v13 + 4 * v10)) & 0x3FFFF000) != 0)
            {
LABEL_22:
              *a3 = v5 & ~(1 << v10);
              *(result + 82) = 4;
              *(result + 88) &= v12;
              *(result + 92) = v17 & ~v15;
              v5 = *a3;
              goto LABEL_27;
            }
          }

          else if (((*(v11 + 4 * v10) ^ *(v13 + 4 * v10)) & 0x3FFFFFFF) != 0)
          {
            goto LABEL_22;
          }

          *(result + 96) = v16 | v15;
        }

        *(v13 + 4 * v10) = *(v11 + 4 * v10);
        *(result + 92) = v17 | v15;
      }
    }

LABEL_27:
    ++v10;
  }

  while (v10 != 10);
  v18 = *(result + 82);
  v19 = v18 & 0x1C;
  if (v19 != 16 && *(result + 92) == 0x3FFFFFFF)
  {
    if (v19 != 12)
    {
      v18 |= 8u;
      if (v19 != 4)
      {
        v18 = 8;
      }

      *(result + 82) = v18;
    }

    if (*(result + 96) == 0x3FFFFFFF && (v18 & 0x1C) == 0xC)
    {
      *(result + 82) = v18 & 0xFFE3 | 0x10;
    }
  }

  return result;
}

uint64_t BlueFin::NonGeoMsgProcess::EbwCheckSfOk(uint64_t result, int a2, _BYTE *a3)
{
  v3 = a3[1];
  *a3 = 0;
  if ((v3 - 6) >= 0xFBu)
  {
    v6 = result;
    result = (*(*result + 136))(result, v3, a3[2]);
    if ((v3 - 1) > 2)
    {
      if (result != a2)
      {
        return result;
      }
    }

    else if ((result & ~(*(v6 + 92) >> (10 * v3 - 10))) != 0)
    {
      return result;
    }

    *a3 = 1;
  }

  return result;
}

uint64_t BlueFin::NonGeoMsgProcess::ProcessEph(uint64_t a1, _DWORD *a2, int a3)
{
  a2[3] = (*(a1 + 12) >> 7) & 1;
  a2[2] = *(a1 + 4) & 0x1F;
  a2[4] = (*(a1 + 8) >> 13) & 0xF;
  a2[1] = (*(a1 + 12) >> 2) & 0x1F;
  a2[6] = *(a1 + 8) & 0x1FFF;
  a2[5] = *(a1 + 4) >> 15;
  a2[8] = *a1 >> 10;
  a2[7] = *(a1 + 8) >> 21;
  a2[9] = *(a1 + 12) >> 8;
  a2[10] = (*(a1 + 4) << 17) >> 22;
  a2[11] = (*a1 << 22) >> 22;
  a2[22] = (*(a1 + 36) << 9) & 0x18000 | (*(a1 + 60) >> 17);
  a2[21] = *(a1 + 16);
  a2[20] = *(a1 + 20);
  a2[13] = *(a1 + 24);
  a2[12] = *(a1 + 30);
  a2[17] = ((*(a1 + 36) << 6) & 0xC000 | (*(a1 + 28) << 16)) >> 14;
  a2[15] = ((*(a1 + 32) >> 4) & 0xFFFFFFF | ((*(a1 + 36) >> 10) << 28)) >> 14;
  a2[14] = (*(a1 + 32) << 14) >> 14;
  a2[16] = *(a1 + 36) >> 14;
  a2[23] = *(a1 + 40);
  a2[25] = *(a1 + 44);
  a2[18] = *(a1 + 48) >> 14;
  a2[27] = (*(a1 + 48) << 18) >> 18;
  a2[24] = *(a1 + 52);
  a2[19] = *(a1 + 56) >> 14;
  a2[26] = ((*(a1 + 56) << 18) & 0xFFE00000 | (((*(a1 + 60) >> 4) & 0x1FFF) << 8)) >> 8;
  v5 = (a3 - 1) < 5 || (a3 - 59) < 5;
  result = BlueFin::BdNavMsgMgr::EphRangeCheck(a2, v5);
  *a2 = result;
  return result;
}

void BlueFin::NonGeoMsgProcess::PublishAlm(_BYTE *this)
{
  if (this[223] == 1)
  {
    v15 = v1;
    v16 = v2;
    for (i = this[224]; i; this[224] = i)
    {
      v9[0] = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      memset(v14, 0, sizeof(v14));
      v13 = 0;
      v5 = *(this + 137);
      v6 = i - 1;
      BlueFin::BdNavMsgMgr::ProcessAlm((this + 8), (v5 + 28 * v6), v9);
      if (this[221] == v11)
      {
        v7 = this[222];
        *(v5 + 28 * v6 + 24) = v7;
        v14[6] = v7;
        v8 = *(this + 2);
        if (v8)
        {
          (*(*v8 + 16))(v8, v9, v5 + 28 * v6);
          i = this[224];
        }
      }

      --i;
    }
  }
}

uint64_t BlueFin::GeoMsgProcess::RegisterListener(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  return result;
}

{
  *(result + 24) = a2;
  return result;
}

{
  *(result + 32) = a2;
  return result;
}

{
  *(result + 40) = a2;
  return result;
}

{
  *(result + 48) = a2;
  return result;
}

{
  *(result + 56) = a2;
  return result;
}

{
  *(result + 64) = a2;
  return result;
}

{
  *(result + 72) = a2;
  return result;
}

uint64_t BlueFin::GeoMsgProcess::SetPackedData(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  BlueFin::BdNavMsgMgr::ProcessAlm(a1 + 8, a2, v5);
  v12 = *(a2 + 24);
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 16))(result, v5, a2);
  }

  return result;
}

{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))(result, 0, a2, 1);
  }

  return result;
}

uint64_t BlueFin::GeoMsgProcess::SetPackedData(uint64_t a1, unsigned int *a2)
{
  v2 = bswap32(a2[1]);
  v4[0] = bswap32(*a2);
  v4[1] = v2;
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 16))(result, v4, a2);
  }

  return result;
}

{
  v2 = *a2;
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = (v2 >> 14) >> 2;
  v6[4] = v3;
  v6[5] = (v3 >> 14) >> 2;
  v4 = a2[2];
  v6[2] = v4;
  v6[3] = (v4 >> 14) >> 2;
  result = *(a1 + 48);
  if (result)
  {
    return (*(*result + 16))(result, v6, a2);
  }

  return result;
}

uint64_t BlueFin::GeoMsgProcess::SetPackedData(uint64_t a1, int *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  v4 = *a2;
  v6[0] = v2 >> 8;
  v6[1] = v3;
  v10 = BYTE1(v4);
  v7 = BYTE2(v4);
  v8 = v4;
  v9 = v2;
  result = *(a1 + 40);
  if (result)
  {
    return (*(*result + 16))(result, v6, a2);
  }

  return result;
}

uint64_t BlueFin::GeoMsgProcess::SetPackedData(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v26 = 0;
  a24 = *MEMORY[0x29EDCA608];
  LOBYTE(v30) = 0;
  a19 = &a9;
  do
  {
    v27 = &v30 + v26;
    v27[32] = 0;
    *(v27 + 17) = 0;
    v26 += 4;
  }

  while (v26 != 76);
  BlueFin::BdNavMsgMgr::ProcessHealth(a1 + 8, 1, a2, &v30, 0);
  v28 = *(a1 + 72);
  if (v28)
  {
    (*(*v28 + 16))(v28, &v30, a2);
  }

  BlueFin::BdNavMsgMgr::ProcessHealth(a1 + 8, 2, a2, &v30, 0);
  result = *(a1 + 72);
  if (result)
  {
    return (*(*result + 16))(result, &v30, a2);
  }

  return result;
}

void BlueFin::GeoMsgProcess::SetDataSubFrmMeas(_DWORD *result, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, signed int a11, uint64_t a12, int a13, uint64_t a14, unsigned int a15, __int16 a16, __int16 a17, unint64_t a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  a49 = *MEMORY[0x29EDCA608];
  BYTE2(v96) = -1;
  v50 = *a2;
  BYTE1(v96) = v50;
  LOBYTE(v96) = 0;
  if ((v50 - 6) < 0xFBu)
  {
    return;
  }

  if (v50 == 1)
  {
    BYTE2(v96) = *(a3 + 4) / 3u - 10 * (((1717986919 * (*(a3 + 4) / 3u)) >> 32) >> 2) + 1;
  }

  v53 = (*(*result + 136))(result);
  BlueFin::BdNavMsgMgr::FillRawNavSubframe((result + 2), a2, &v96, v53);
  if (BYTE1(v96) == 1 && v96 == 1 && (v98 & 0x3E000) == 0x4000)
  {
    v54 = (v99 >> 13) & 0x1FFF;
    v55 = *(result + 7);
    if (v55)
    {
      (*(*v55 + 16))(v55, *(result + 308), (v99 >> 13) & 0x1FFF, a3);
    }

    v56 = *(result + 5);
    if (v56)
    {
      v57 = *(a3 + 4);
      *(v56 + 8) = v54;
      *(v56 + 12) = v57;
    }

    v58 = *(result + 6);
    if (v58)
    {
      v59 = *(a3 + 4);
      *(v58 + 8) = v54;
      *(v58 + 12) = v59;
    }
  }

  v60 = 0;
  a44 = &a34;
  LOWORD(a19) = 0;
  *(&a19 + 4) = 0u;
  *(&a20 + 4) = 0u;
  *(&a21 + 4) = 0u;
  *(&a22 + 4) = 0u;
  *(&a23 + 4) = 0u;
  *(&a24 + 4) = 0u;
  a25 = 0u;
  a18 = 0;
  LOBYTE(a30) = 0;
  do
  {
    v61 = &a30 + v60;
    v61[32] = 0;
    *(v61 + 17) = 0;
    v60 += 4;
  }

  while (v60 != 76);
  a15 = 0;
  a14 = 0;
  a13 = 0;
  a12 = 0;
  a11 = 0;
  a10 = 0;
  vars8 = 0;
  if (v96 != 1)
  {
    return;
  }

  if (BYTE1(v96) == 5)
  {
    v66 = (v98 >> 10) & 0x7F;
    if ((v66 - 121) < 0xFFFFFF88)
    {
      return;
    }

    if ((v66 - 37) >= 0x18 && (v66 - 95) > 5)
    {
      a28 = 0;
      a26 = 0u;
      a27 = 0u;
      if (((v98 >> 10) & 0x7F) > 0x64)
      {
        if (v66 == 101)
        {
          LODWORD(a14) = (v100 << 6) & 0x3FFFC000 | HIWORD(v101) & 0x3FFF;
          HIDWORD(a14) = (v101 << 14) & 0x3FC00000 | (v102 >> 8) & 0x3FFFFF;
          a15 = v103 & 0x3FFFFF00 | (v104 >> 22);
          LOWORD(a12) = (v100 << 6) & 0xC000 | HIWORD(v101) & 0x3FFF;
          WORD1(a12) = (v100 >> 8) >> 2;
          LOWORD(a13) = v102 >> 8;
          HIWORD(a13) = (HIDWORD(a14) >> 14) >> 2;
          WORD2(a12) = v103 & 0xFF00 | (v104 >> 22);
          HIWORD(a12) = (v103 >> 14) >> 2;
          v75 = *(result + 6);
          if (v75)
          {
            v76 = (v97 << 8) & 0xFF000 | (v98 >> 18) & 0xFFF;
            if (v76 < 0x93A80)
            {
              v75[4] = v76;
            }

            (*(*v75 + 16))(v75, &a12, &a14);
          }
        }

        else if (v66 == 102)
        {
          LODWORD(a10) = (v98 << 14) & 0xC00000 | (v99 >> 8) & 0x3FFFFF;
          HIDWORD(a10) = (4 * v100) & 0xFFFFFC00 | (v101 >> 20) & 0x3FF;
          a11 = (v101 << 12) & 0xFFF00000 | (v102 >> 10) & 0xFFFFF;
          LODWORD(vars8) = a11 >> 8;
          HIDWORD(vars8) = HIDWORD(a10);
          v70 = *(result + 5);
          if (v70)
          {
            v71 = (v97 << 8) & 0xFF000 | (v98 >> 18) & 0xFFF;
            if (v71 < 0x93A80)
            {
              v70[4] = v71;
            }

            (*(*v70 + 16))(v70, &vars8, &a10);
          }
        }

        return;
      }

      if (v66 == 35)
      {
        BlueFin::BdNavMsgMgr::HealthPacked((result + 2), 1, &v96, &a26);
        BlueFin::BdNavMsgMgr::ProcessHealth((result + 2), 1, &a26, &a30, 0);
        v74 = *(result + 9);
        if (v74)
        {
          (*(*v74 + 16))(v74, &a30, &a26);
        }

        return;
      }

      if (v66 != 36)
      {
        return;
      }

      BlueFin::BdNavMsgMgr::HealthPacked((result + 2), 2, &v96, &a26);
      BlueFin::BdNavMsgMgr::ProcessHealth((result + 2), 2, &a26, &a30, result + 309);
      v69 = *(result + 9);
      if (v69)
      {
        (*(*v69 + 16))(v69, &a30, &a26);
      }
    }

    else
    {
      v68 = *(result + 312);
      if (v68 >= 0x1E)
      {
        v68 = 0;
        *(result + 312) = 0;
      }

      BlueFin::BdNavMsgMgr::AlmPacked((result + 2), &v96, (*(result + 145) + 28 * v68), 0);
      ++*(result + 312);
      if (*(result + 311) != 1)
      {
        return;
      }
    }

    BlueFin::GeoMsgProcess::PublishAlm(result);
    return;
  }

  if (BYTE1(v96) != 1)
  {
    return;
  }

  v62 = v98;
  v63 = (v98 >> 14) & 0xF;
  if ((v63 - 11) < 0xFFFFFFF6)
  {
    return;
  }

  BYTE2(v96) = (v98 >> 14) & 0xF;
  if (((v98 >> 14) & 0xF) <= 5)
  {
    if (((v98 >> 14) & 0xF) > 2)
    {
      if (v63 == 3)
      {
        result[294] = (v100 << 8) & 0xFFF0000 | (v101 >> 14);
      }

      else if (v63 == 4)
      {
        v83 = v100;
        result[295] = (v98 << 18) & 0xFC000000 | (v99 >> 4) & 0x3FFFFF0 | (v100 >> 26) & 0xF;
        result[296] = (v83 << 6) & 0xFFFFC000 | HIWORD(v101) & 0x3FFF;
      }

      else
      {
        v65 = v99;
        v64 = v100;
        result[297] = (v98 << 18) & 0xF0000000 | (v100 << 6) & 0xFFFC000 | HIWORD(v101) & 0x3FFF;
        result[298] = ((v64 >> 22) | (v62 << 22)) & 0xC00000FF | (((v65 >> 8) & 0x3FFFFF) << 8);
      }

      goto LABEL_66;
    }

    if (v63 == 1)
    {
      v77 = HIWORD(v100);
      v78 = v99 >> 8;
      result[292] = (v99 >> 4) & 0x3C00000 | (BYTE1(v98) << 26) | (((v100 >> 8) & 0x3FF) << 12) | (v101 >> 18) & 0xFFC;
      result[293] = v77 & 0x3FFC | (v78 << 14);
      goto LABEL_66;
    }

    if (v63 == 2)
    {
      v72 = v100;
      result[309] = (v98 << 18) & 0xFC000000 | (v99 >> 4) & 0x3FFFFF0 | (v100 >> 26) & 0xF;
      result[310] = (v72 << 6) & 0xFFFFC000 | HIWORD(v101) & 0x3FFF;
      goto LABEL_66;
    }

LABEL_79:
    v86 = result[22];
    goto LABEL_67;
  }

  if (((v98 >> 14) & 0xF) <= 7)
  {
    if (v63 == 6)
    {
      v79 = v99;
      v80 = v100;
      v81 = v101;
      result[299] = (v98 << 18) & 0xFC000000 | (v99 >> 4) & 0x3FFFC00 | HIWORD(v101) & 0x3FF;
      result[300] = ((v81 >> 26) | (v79 << 18)) & 0xFC00000F | (16 * ((v80 >> 8) & 0x3FFFFF));
    }

    else
    {
      v73 = v100;
      result[301] = (v98 << 18) & 0xFC000000 | (v99 >> 4) & 0x3FFFFF0 | (v100 >> 26) & 0xF;
      result[302] = (v73 << 6) & 0xFFFFC000 | HIWORD(v101) & 0x3FFF;
    }

    goto LABEL_66;
  }

  if (v63 == 8)
  {
    v82 = v100;
    result[303] = (v98 << 20) & 0xF0000000 | (v99 >> 2) & 0xFFFFFC0 | HIBYTE(v100) & 0x3F;
    result[304] = (v82 << 8) & 0xFFFF0000 | (v101 >> 14);
    result[308] = (v62 >> 12) & 3;
    goto LABEL_66;
  }

  if (v63 == 9)
  {
    v85 = v99;
    v84 = v100;
    result[305] = (v98 << 18) & 0xF8000000 | (v100 << 6) & 0x7FFC000 | HIWORD(v101) & 0x3FFF;
    result[306] = ((v84 >> 21) | (v62 << 23)) & 0x800001FF | (((v85 >> 8) & 0x3FFFFF) << 9);
    goto LABEL_66;
  }

  if (v63 != 10)
  {
    goto LABEL_79;
  }

  result[307] = (v99 >> 15) & 0x7FFC | (((v98 >> 8) & 0x3F) << 15);
LABEL_66:
  v86 = result[22] | (1 << (v63 - 1));
  result[22] = v86;
LABEL_67:
  if ((~v86 & 0x3FF) == 0)
  {
    v87 = *(result + 41);
    if ((v87 & 0x1C) == 0xC)
    {
      v88 = 0;
      v89 = result + 28;
      do
      {
        *(&a26 + v88++) = (1193047 * ((*v89 >> 18) & 0xFF0 | ((*(v89 - 1) >> 4) << 12))) >> 32;
        v89 += 5;
      }

      while (v88 != 10);
      v90 = 0;
      v91 = 1;
      while (v90 > 8)
      {
LABEL_76:
        ++v90;
        ++v91;
        if (v90 == 10)
        {
          BlueFin::GeoMsgProcess::ProcessEph((result + 292), &a19, *(result + 308));
          if (a19)
          {
            LOBYTE(a16) = 1;
            a17 = 1;
            result[311] = 1;
            *(result + 80) = 0;
            (*(*result + 152))(result);
          }

          else
          {
            *(result + 41) = v87 & 0xFFE3 | 0x10;
            LOBYTE(a16) = 0;
            a17 = 0;
            result[311] = 0;
          }

          v93 = *(result + 8);
          if (v93)
          {
            (*(*v93 + 16))(v93, &a16, result + 311);
          }

          v94 = *(result + 3);
          if (v94)
          {
            (*(*v94 + 16))(v94, 0, result + 292, 0);
          }

          a18 = __PAIR64__(bswap32(result[310]), bswap32(result[309]));
          v95 = *(result + 4);
          if (v95)
          {
            if (!a16)
            {
              (*(*v95 + 16))(v95, &a18, result + 309);
            }
          }

          goto LABEL_88;
        }
      }

      v92 = v91;
      while (*(&a26 + v90) == *(&a26 + v92))
      {
        if (++v92 == 10)
        {
          goto LABEL_76;
        }
      }

LABEL_88:
      *(result + 80) = 0;
      (*(*result + 152))(result);
    }
  }
}

uint64_t BlueFin::GeoMsgProcess::ResetSfState(uint64_t this)
{
  if (*(this + 80) != 1)
  {
    *(this + 81) = 0u;
    this += 81;
    *(this - 1) = 1;
    *(this + 16) = 0u;
    *(this + 32) = 0u;
    *(this + 48) = 0u;
    *(this + 64) = 0u;
    *(this + 80) = 0u;
    *(this + 96) = 0u;
    *(this + 112) = 0u;
    *(this + 128) = 0u;
    *(this + 144) = 0u;
    *(this + 160) = 0u;
    *(this + 176) = 0u;
    *(this + 192) = 0u;
    *(this + 208) = 0u;
    *(this + 223) = 0;
  }

  return this;
}

uint64_t non-virtual thunk toBlueFin::GeoMsgProcess::ResetSfState(uint64_t this)
{
  if (*(this + 72) != 1)
  {
    *(this + 73) = 0u;
    this += 73;
    *(this - 1) = 1;
    *(this + 16) = 0u;
    *(this + 32) = 0u;
    *(this + 48) = 0u;
    *(this + 64) = 0u;
    *(this + 80) = 0u;
    *(this + 96) = 0u;
    *(this + 112) = 0u;
    *(this + 128) = 0u;
    *(this + 144) = 0u;
    *(this + 160) = 0u;
    *(this + 176) = 0u;
    *(this + 192) = 0u;
    *(this + 208) = 0u;
    *(this + 223) = 0;
  }

  return this;
}

uint64_t BlueFin::GeoMsgProcess::EbwRestoreSFWords(uint64_t result, uint64_t a2, _WORD *a3)
{
  if (*(a2 + 1) == 1)
  {
    v5 = result;
    result = (*(*result + 136))(result, 1, *(a2 + 2));
    v6 = *(a2 + 2);
    v7 = v6 - 1;
    v8 = 5 * v6;
    if ((v6 - 1) > 4)
    {
      if ((v6 - 6) > 4)
      {
        return result;
      }

      v14 = 0;
      v10 = (v5 + 92);
      v15 = v8 - 30;
      v16 = v5 + 20 * v7 + 108;
      do
      {
        if ((*v10 >> v15))
        {
          *(a2 + 4 + v14) = *(v16 + v14);
        }

        v14 += 4;
        ++v15;
      }

      while (v14 != 20);
      v13 = -30;
    }

    else
    {
      v9 = 0;
      v10 = (v5 + 96);
      v11 = 5 * v7;
      v12 = v5 + 20 * v7 + 108;
      do
      {
        if ((*v10 >> v11))
        {
          *(a2 + 4 + v9) = *(v12 + v9);
        }

        v9 += 4;
        ++v11;
      }

      while (v9 != 20);
      v13 = -5;
    }

    *a3 = result & (*v10 >> (v13 + v8));
  }

  return result;
}

uint64_t BlueFin::GeoMsgProcess::EphUpdateProcess(uint64_t result, uint64_t a2, _WORD *a3)
{
  if (*(a2 + 1) == 1)
  {
    v3 = *a3;
    if ((v3 & 2) != 0)
    {
      if (((*(a2 + 8) >> 14) & 0xFu) - 11 < 0xFFFFFFF6)
      {
        v4 = -1;
      }

      else
      {
        v4 = (*(a2 + 8) >> 14) & 0xF;
      }
    }

    else
    {
      v4 = *(a2 + 2);
    }

    if ((v4 - 11) >= 0xF6u)
    {
      v5 = *(result + 81);
      if ((v3 & 8) != 0 && v4 == 7)
      {
        v6 = (*(a2 + 16) >> 12) & 0x3FFF8;
        HIDWORD(v7) = -2023406815 * v6;
        LODWORD(v7) = -2023406815 * v6;
        if ((v7 >> 4) >= 0x123457)
        {
          HIDWORD(v8) = -2023406815 * (v6 - 656);
          LODWORD(v8) = HIDWORD(v8);
          if ((v8 >> 4) >= 0x123457)
          {
            HIDWORD(v9) = -2023406815 * (v6 - 1312);
            LODWORD(v9) = HIDWORD(v9);
            if ((v9 >> 4) > 0x123456)
            {
              goto LABEL_19;
            }
          }
        }

        if (v5 == 3)
        {
          if (v6 == *(result + 84))
          {
            goto LABEL_19;
          }
        }

        else if (v5 == 1)
        {
          *(result + 81) = 3;
          *(result + 84) = v6;
          goto LABEL_19;
        }

        *(result + 81) = 3;
        *(result + 84) = v6;
      }

      else
      {
        if (*(result + 81))
        {
LABEL_19:
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v13 = v4;
          *(a2 + 2) = v4;
          v14 = a2 + 4;
          v15 = ~(1 << (v4 - 1));
          v16 = result + 20 * (v4 - 1) + 108;
          v17 = 5 * v4;
          v18 = 5 * v4 - 5;
          v19 = v17 - 30;
          while (1)
          {
            v20 = 1 << v10;
            if (v13 <= 5)
            {
              v11 = 1 << (v18 + v10);
            }

            else
            {
              v12 = 1 << (v19 + v10);
            }

            if ((v20 & v3) == 0)
            {
              goto LABEL_35;
            }

            v21 = *(result + 100);
            if ((v21 & v12) != 0)
            {
              goto LABEL_35;
            }

            v22 = *(result + 104);
            if ((v22 & v11) != 0)
            {
              goto LABEL_35;
            }

            v23 = *(result + 92);
            if ((v23 & v12) == 0)
            {
              v24 = *(result + 96);
              if ((v24 & v11) == 0)
              {
                goto LABEL_34;
              }
            }

            if (v10 - 2 >= 3)
            {
              if (v10 == 1)
              {
                if (((*(v14 + 4 * v10) ^ *(v16 + 4 * v10)) & 0x3FF00) == 0)
                {
                  goto LABEL_33;
                }
              }

              else if (((*(v14 + 4 * v10) ^ *(v16 + 4 * v10)) & 0x3FFFF000) == 0)
              {
LABEL_33:
                *(result + 100) = v21 | v12;
                *(result + 104) = v22 | v11;
                v24 = *(result + 96);
LABEL_34:
                *(v16 + 4 * v10) = *(v14 + 4 * v10);
                *(result + 92) = v23 | v12;
                *(result + 96) = v24 | v11;
                goto LABEL_35;
              }
            }

            else if (((*(v14 + 4 * v10) ^ *(v16 + 4 * v10)) & 0x3FFFFFFF) == 0)
            {
              goto LABEL_33;
            }

            v25 = *(result + 96);
            *a3 = v3 & ~v20;
            *(result + 92) = v23 & ~v12;
            *(result + 96) = v25 & ~v11;
            *(result + 82) = 4;
            *(result + 88) &= v15;
            v3 = *a3;
LABEL_35:
            if (++v10 == 5)
            {
              goto LABEL_39;
            }
          }
        }

        *(result + 81) = 1;
      }

      *(result + 108) = 0u;
      *(result + 96) = 0;
      *(result + 88) = 0;
      *(result + 104) = 0;
      *(result + 82) = 4;
      *(result + 124) = 0u;
      *(result + 140) = 0u;
      *(result + 156) = 0u;
      *(result + 172) = 0u;
      *(result + 188) = 0u;
      *(result + 204) = 0u;
      *(result + 220) = 0u;
      *(result + 236) = 0u;
      *(result + 252) = 0u;
      *(result + 268) = 0u;
      *(result + 284) = 0u;
      *(result + 300) = 0;
      v3 = *a3;
      goto LABEL_19;
    }

LABEL_39:
    v26 = *(result + 82);
    v27 = v26 & 0x1C;
    if (v27 != 16 && *(result + 92) == 0x1FFFFFF && *(result + 96) == 0x1FFFFFF)
    {
      if (v27 != 12)
      {
        v26 |= 8u;
        if (v27 != 4)
        {
          v26 = 8;
        }

        *(result + 82) = v26;
      }

      if (*(result + 100) == 0x1FFFFFF && *(result + 104) == 0x1FFFFFF && (v26 & 0x1C) == 0xC)
      {
        *(result + 82) = v26 & 0xFFE3 | 0x10;
      }
    }
  }

  return result;
}

uint64_t BlueFin::GeoMsgProcess::EbwCheckSfOk(_DWORD *a1, int a2, _BYTE *a3)
{
  v6 = a3[2];
  *a3 = 0;
  result = (*(*a1 + 136))(a1, a3[1], v6);
  v8 = a3[1];
  if ((v8 - 2) < 4)
  {
    if (result != a2)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v8 == 1)
  {
    if ((v6 - 1) > 4)
    {
      if ((v6 - 6) > 4)
      {
        return result;
      }

      v9 = a1[23];
      v10 = 5 * v6 - 30;
    }

    else
    {
      v9 = a1[24];
      v10 = 5 * v6 - 5;
    }

    if ((result & ~(v9 >> v10)) == 0)
    {
LABEL_3:
      *a3 = 1;
    }
  }

  return result;
}

uint64_t BlueFin::GeoMsgProcess::ProcessEph(uint64_t a1, _DWORD *a2, int a3)
{
  a2[4] = (*a1 >> 22) & 0xF;
  a2[1] = (*a1 >> 26) & 0x1F;
  a2[3] = *a1 >> 31;
  HIDWORD(v4) = *(a1 + 12);
  LODWORD(v4) = *(a1 + 16);
  a2[2] = (v4 >> 30) & 0x1F;
  a2[6] = *(a1 + 4) >> 19;
  a2[5] = (*(a1 + 4) >> 2) & 0x1FFFF;
  HIDWORD(v4) = *(a1 + 8);
  LODWORD(v4) = *(a1 + 12);
  a2[8] = (v4 >> 4) >> 10;
  a2[7] = (*(a1 + 12) << 18) >> 21;
  a2[9] = (*(a1 + 8) >> 4);
  a2[10] = (*a1 << 10) >> 22;
  a2[11] = (*a1 << 20) >> 22;
  HIDWORD(v4) = *(a1 + 36);
  LODWORD(v4) = *(a1 + 40);
  a2[22] = (v4 >> 6) >> 15;
  a2[21] = *(a1 + 32);
  HIDWORD(v4) = *(a1 + 20);
  LODWORD(v4) = *(a1 + 28);
  a2[20] = v4 >> 10;
  a2[13] = *(a1 + 24);
  a2[12] = (*(a1 + 16) >> 14);
  HIDWORD(v4) = *(a1 + 16);
  LODWORD(v4) = *(a1 + 20);
  a2[17] = (v4 >> 14) >> 14;
  a2[15] = (*(a1 + 44) << 9) >> 14;
  HIDWORD(v4) = *(a1 + 44);
  LODWORD(v4) = *(a1 + 48);
  a2[14] = (v4 >> 5) >> 14;
  a2[16] = (16 * *(a1 + 20)) >> 14;
  a2[23] = *(a1 + 56);
  a2[25] = *(a1 + 62) & 0x1F | (32 * *(a1 + 52));
  a2[18] = (*(a1 + 36) << 8) >> 14;
  a2[27] = (*(a1 + 60) << 16) >> 18;
  a2[24] = (*(a1 + 40) << 11) | ((*(a1 + 64) & 3) << 9) | (*(a1 + 44) >> 23);
  HIDWORD(v4) = *(a1 + 28);
  LODWORD(v4) = *(a1 + 36);
  a2[19] = (v4 >> 10) >> 14;
  HIDWORD(v4) = *(a1 + 48);
  LODWORD(v4) = *(a1 + 52);
  a2[26] = (v4 >> 19) >> 8;
  v6 = (a3 - 1) < 5 || (a3 - 59) < 5;
  result = BlueFin::BdNavMsgMgr::EphRangeCheck(a2, v6);
  *a2 = result;
  return result;
}

void BlueFin::GeoMsgProcess::PublishAlm(_BYTE *this)
{
  if (this[311] == 1)
  {
    v13[6] = v1;
    v13[7] = v2;
    v8[0] = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    memset(v13, 0, 14);
    for (i = this[312]; i; this[312] = i)
    {
      v5 = *(this + 145);
      BlueFin::BdNavMsgMgr::ProcessAlm((this + 8), (v5 + 28 * (i - 1)), v8);
      if (this[309] == v10)
      {
        v6 = this[310];
        *(v5 + 28 * i - 4) = v6;
        WORD2(v13[1]) = v6;
        v7 = *(this + 2);
        if (v7)
        {
          (*(*v7 + 16))(v7, v8, v5 + 28 * (i - 1));
          i = this[312];
        }
      }

      --i;
    }
  }
}

uint64_t BlueFin::GeoMsgProcess::GetSFWordMask(BlueFin::GeoMsgProcess *this, int a2, int a3)
{
  if (a3 == 10)
  {
    v3 = 7;
  }

  else
  {
    v3 = 31;
  }

  if (a2 == 1)
  {
    return v3;
  }

  else
  {
    return 1023;
  }
}

void BlueFin::NonGeoMsgProcess::Reset(BlueFin::NonGeoMsgProcess *this)
{
  *(this + 80) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 221) = 0;
  *(this + 69) = 0u;
  *(this + 70) = 0u;
  *(this + 71) = 0u;
  *(this + 72) = 0u;
  *(this + 73) = 0u;
  bzero(*(this + 137), 0x348uLL);
}

void BlueFin::GeoMsgProcess::Reset(BlueFin::GeoMsgProcess *this)
{
  *(this + 80) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 309) = 0;
  *(this + 73) = 0u;
  *(this + 74) = 0u;
  *(this + 75) = 0u;
  *(this + 76) = 0u;
  *(this + 77) = 0u;
  bzero(*(this + 145), 0x348uLL);
}

unsigned int *BlueFin::BdWordParity::BCHDecodeWordProcess(unsigned int *this, unsigned int *a2)
{
  v2 = *this;
  if (a2)
  {
    v3 = (v2 & 0xC0000000);
    v4 = 0uLL;
    v5 = xmmword_298A3AF90;
    v6 = vdupq_n_s32(v2);
    v7 = xmmword_298A3A490;
    v8 = -4;
    v9.i64[0] = 0x100000001;
    v9.i64[1] = 0x100000001;
    v10.i64[0] = 0x200000002;
    v10.i64[1] = 0x200000002;
    v11.i64[0] = 0x400000004;
    v11.i64[1] = 0x400000004;
    v12.i64[0] = 0x800000008;
    v12.i64[1] = 0x800000008;
    do
    {
      v13 = v3;
      v14 = v4;
      v3 = vorrq_s8(vshlq_u32(vandq_s8(vshlq_u32(v9, v5), v6), vsubq_s32(v9, v7)), v3);
      v4 = vorrq_s8(vshlq_u32(vandq_s8(vshlq_u32(v10, v5), v6), vnegq_s32(v7)), v4);
      v7 = vaddq_s32(v7, v11);
      v5 = vaddq_s32(v5, v12);
      v8 += 4;
    }

    while (v8 != 12);
    v15.i64[0] = 0xF0000000FLL;
    v15.i64[1] = 0xF0000000FLL;
    v16 = vcgtq_u32(v15, vorrq_s8(vdupq_n_s32(0xCu), xmmword_298A397C0));
    v17 = vbslq_s8(v16, v3, v13);
    v18 = vbslq_s8(v16, v4, v14);
    *v18.i8 = vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
    *v17.i8 = vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL));
    v2 = (v17.i32[0] | v17.i32[1]) & 0xC000000F | ((((v17.i32[0] | v17.i32[1]) >> 4) & 0x7FF) << 8) & 0xC007FFFF | (16 * ((v18.i8[0] | v18.i8[4]) & 0xF)) | ((((v18.i32[0] | v18.i32[1]) >> 4) & 0x7FF) << 19);
  }

  *this = v2 | 0x40000000;
  return this;
}

BOOL BlueFin::BdWordParity::ParityCheck(unint64_t this, unsigned int *a2)
{
  v2 = a2;
  v9 = this;
  if ((this & 0x40000000) == 0)
  {
    BlueFin::BdWordParity::BCHDecodeWordProcess(&v9, a2);
    this = v9;
  }

  if (v2)
  {
    v3 = BlueFin::BCHTab9_12;
    v4 = BlueFin::BCHTab1_4[(this >> 15) & 0xF] ^ (16 * (BlueFin::BCHTab5_8[(this >> 22) & 0xF] ^ BlueFin::BCHTab1_4[(this >> 26) & 0xF] ^ BlueFin::BCHTab9_12[(this >> 18) & 0xELL])) ^ BlueFin::BCHTab5_8[(this >> 11) & 0xF];
    v5 = 14;
    v6 = 7;
    v7 = this;
  }

  else
  {
    v7 = this & 0xF;
    v4 = BlueFin::BCHTab5_8[(this >> 7) & 0xF] ^ BlueFin::BCHTab9_12[(this >> 3) & 0xELL];
    v3 = BlueFin::BCHTab1_4;
    v5 = 15;
    v6 = 11;
  }

  return v7 == (v3[(this >> v6) & v5] ^ v4);
}

uint64_t BlueFin::BdNavMsgMgr::FillRawNavSubframe(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v13 = 0;
  (*(*a1 + 16))(a1);
  v8 = (*(*a1 + 24))(a1, a3, &v13);
  result = BlueFin::BdNavMsgMgr::SfSaveRecvWords(v8, (a2 + 4), (a3 + 4), &v13);
  if ((a4 & ~v13) != 0 || (v13 & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = (*(a3 + 4) >> 12) & 7;
  v11 = v10 - 1;
  if ((v10 - 1) >= 5)
  {
    v10 = 255;
  }

  if (v11 <= 4 && v10 == *(a3 + 1))
  {
    (*(*a1 + 32))(a1, a3, &v13);
    return (*(*a1 + 40))(a1, v13, a3);
  }

  else
  {
LABEL_9:
    *a3 = 0;
  }

  return result;
}

BOOL BlueFin::BdNavMsgMgr::SfSaveRecvWords(BlueFin::BdNavMsgMgr *this, const unsigned int *a2, unsigned int *a3, unsigned __int16 *a4)
{
  v7 = 0;
  v8 = *a4;
  do
  {
    v9 = a2[v7];
    result = BlueFin::BdWordParity::ParityCheck(v9, v7);
    if (result)
    {
      a3[v7] = v9;
      v8 |= 1 << v7;
    }

    else
    {
      v8 &= ~(1 << v7);
    }

    ++v7;
  }

  while (v7 != 10);
  *a4 = v8;
  return result;
}

void BlueFin::BdNavMsgMgr::AlmPacked(uint64_t a1, _DWORD *a2, int *a3, int a4)
{
  v4 = a2[2] << 14;
  v5 = v4 & 0x7F000000;
  if (a4)
  {
    v5 = (v4 & 0x7F000000) + 402653184;
  }

  *a3 = v4 & 0xC00000 | (a2[3] >> 8) & 0x3FFFFF | v5;
  a3[1] = (2 * a2[4]) & 0x7FFFFE00 | (a2[6] >> 11) & 0x1FF;
  a3[2] = (4 * a2[5]) & 0xFFFFFC00 | (a2[6] >> 20) & 0x3FF;
  a3[3] = (a2[6] << 21) & 0xE0000000 | (a2[7] >> 1) & 0x1FFFFF80 | (a2[8] >> 23) & 0x7F;
  a3[4] = (4 * a2[8]) & 0x1FFFC00 | (a2[9] >> 20) & 0x3FF;
  a3[5] = (a2[9] << 12) & 0xFFF00000 | (a2[10] >> 10) & 0xFFFFF;
}

void BlueFin::BdNavMsgMgr::HealthPacked(uint64_t a1, int a2, _DWORD *a3, int *a4)
{
  if (a2 == 2)
  {
    v6 = (a3[2] << 17) & 0x6000000 | (a3[3] >> 5) & 0x1FFFFF8 | (a3[4] >> 27) & 7;
    a4[6] = v6;
    a4[6] = a3[8] & 0x38000000 | ((a3[7] >> 13) << 30) | v6;
    a4[7] = (32 * a3[4]) & 0xFFFFE000 | (a3[5] >> 17) & 0x1FFF;
    a4[8] = (a3[6] >> 7) & 0x7FFFFE | ((a3[5] >> 8) << 23);
    v4 = ((a3[7] >> 15) | (a3[7] << 19)) & 0xF8007FFF;
    v5 = 9;
  }

  else
  {
    if (a2 != 1)
    {
      return;
    }

    *a4 = (a3[2] << 17) & 0x6000000 | (a3[3] >> 5) & 0x1FFFFF8 | (a3[4] >> 27) & 7;
    a4[1] = (32 * a3[4]) & 0xFFFFE000 | (a3[5] >> 17) & 0x1FFF;
    a4[2] = (a3[6] >> 7) & 0x7FFFFE | ((a3[5] >> 8) << 23);
    a4[3] = (4 * a3[7]) & 0xFFFFFC00 | (a3[8] >> 20) & 0x3FF;
    a4[4] = (a3[8] << 12) & 0xFFF00000 | (a3[9] >> 10) & 0xFFFFF;
    v4 = a3[10] & 0x3FFF8000 | (BYTE1(a3[9]) << 30);
    v5 = 5;
  }

  a4[v5] = v4;
}

void BlueFin::BdNavMsgMgr::ProcessAlm(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = HIBYTE(*a2) & 0x7F;
  if (v4 - 1 < 0x1E)
  {
    v5 = -1;
LABEL_7:
    *a3 = v5 + v4;
    goto LABEL_8;
  }

  if (v4 - 37 < 0x18)
  {
    v5 = -37;
    goto LABEL_7;
  }

  if (v4 - 95 <= 5)
  {
    v5 = -71;
    goto LABEL_7;
  }

LABEL_8:
  *(a3 + 20) = v3 & 0xFFFFFF;
  *(a3 + 4) = ((a2[2] << 24) | ((a2[1] & 0x1FF) << 15)) >> 15;
  v6 = a2[1];
  v7 = a2[2];
  *(a3 + 36) = (v6 >> 15) >> 5;
  *(a3 + 38) = (v6 >> 4) >> 5;
  *(a3 + 24) = v7 >> 8;
  *(a3 + 12) = *(a2 + 7);
  *(a3 + 8) = *(a2 + 13);
  *(a3 + 32) = (a2[5] << 8) >> 8;
  HIDWORD(v8) = a2[4];
  LODWORD(v8) = a2[5];
  *(a3 + 28) = (v8 >> 16) >> 8;
  *(a3 + 16) = ((a2[4] >> 1) | (a2[3] << 24)) >> 15;
}

void BlueFin::BdNavMsgMgr::ProcessHealth(uint64_t a1, int a2, unsigned int *a3, uint64_t a4, _BYTE *a5)
{
  if (a2 == 2)
  {
    v12 = *(a4 + 112);
    *v12 = 20;
    v13 = a3[6];
    v14 = a3[7];
    *(v12 + 2) = (v13 >> 18) & 0x1FF;
    *(v12 + 4) = 21;
    *(v12 + 6) = (v13 >> 9) & 0x1FF;
    *(v12 + 8) = 22;
    *(v12 + 10) = v13 & 0x1FF;
    *(v12 + 12) = 23;
    *(v12 + 14) = v14 >> 23;
    *(v12 + 16) = 24;
    *(v12 + 18) = (v14 >> 14) & 0x1FF;
    *(v12 + 20) = 25;
    *(v12 + 22) = (v14 >> 5) & 0x1FF;
    *(v12 + 24) = 26;
    v16 = a3[8];
    v15 = a3[9];
    *(v12 + 26) = (__PAIR64__(v14, v16) >> 28) & 0x1FF;
    *(v12 + 28) = 27;
    *(v12 + 30) = (v16 >> 19) & 0x1FF;
    *(v12 + 32) = 28;
    *(v12 + 34) = (v16 >> 10) & 0x1FF;
    *(v12 + 36) = 29;
    *(v12 + 38) = (v16 >> 1) & 0x1FF;
    *(v12 + 40) = 30;
    *(v12 + 42) = (v15 >> 6) & 0x1FF;
    *a4 = 11;
    if (a5)
    {
      *a5 = HIBYTE(v15) & 0xF8 | (v13 >> 27) & 7;
      a5[1] = __PAIR64__(v15, v13) >> 30;
      a5[2] = 1;
    }
  }

  else if (a2 == 1)
  {
    v5 = *(a4 + 112);
    *v5 = 1;
    v6 = *a3;
    v7 = a3[1];
    *(v5 + 2) = (*a3 >> 18) & 0x1FF;
    *(v5 + 4) = 2;
    *(v5 + 6) = (v6 >> 9) & 0x1FF;
    *(v5 + 8) = 3;
    *(v5 + 10) = v6 & 0x1FF;
    *(v5 + 12) = 4;
    *(v5 + 14) = v7 >> 23;
    *(v5 + 16) = 5;
    *(v5 + 18) = (v7 >> 14) & 0x1FF;
    *(v5 + 20) = 6;
    *(v5 + 22) = (v7 >> 5) & 0x1FF;
    *(v5 + 24) = 7;
    v8 = a3[2];
    v9 = a3[3];
    *(v5 + 26) = (__PAIR64__(v7, v8) >> 28) & 0x1FF;
    *(v5 + 28) = 8;
    *(v5 + 30) = (v8 >> 19) & 0x1FF;
    *(v5 + 32) = 9;
    *(v5 + 34) = (v8 >> 10) & 0x1FF;
    *(v5 + 36) = 10;
    *(v5 + 38) = (v8 >> 1) & 0x1FF;
    *(v5 + 40) = 11;
    *(v5 + 42) = v9 >> 23;
    *(v5 + 44) = 12;
    *(v5 + 46) = (v9 >> 14) & 0x1FF;
    *(v5 + 48) = 13;
    *(v5 + 50) = (v9 >> 5) & 0x1FF;
    *(v5 + 52) = 14;
    v10 = a3[4];
    v11 = a3[5];
    *(v5 + 54) = (__PAIR64__(v9, v10) >> 28) & 0x1FF;
    *(v5 + 56) = 15;
    *(v5 + 58) = (v10 >> 19) & 0x1FF;
    *(v5 + 60) = 16;
    *(v5 + 62) = (v10 >> 10) & 0x1FF;
    *(v5 + 64) = 17;
    *(v5 + 66) = (v10 >> 1) & 0x1FF;
    *(v5 + 68) = 18;
    *(v5 + 70) = (__PAIR64__(v10, v11) >> 24) & 0x1FF;
    *(v5 + 72) = 19;
    *(v5 + 74) = (v11 >> 15) & 0x1FF;
    *a4 = 19;
  }
}

uint64_t BlueFin::BdNavMsgMgr::svd_computeSvClock(uint64_t a1, unint64_t *a2, double *a3, double *a4)
{
  v7 = *a2;
  v8 = *a2 / 1000.0;
  LODWORD(v7) = *(a1 + 8);
  v9 = v8 - v7;
  v10 = v9 + 604800.0;
  if (v9 >= -302400.0)
  {
    v10 = v9;
  }

  if (v9 <= 302400.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9 + -604800.0;
  }

  v32 = v11;
  BlueFin::BdNavMsgMgr::setEphemerisConstants(v40, a1);
  v38 = v44;
  v39 = v42;
  v34 = v45;
  v35 = v43;
  v33 = v47;
  v36 = v48;
  v37 = v46;
  v29 = v51;
  v30 = v49;
  v26 = v52;
  v27 = v50;
  v12 = v54;
  v28 = v53;
  v13 = v55;
  HIDWORD(v14) = HIDWORD(v56);
  v31 = v56;
  v15 = *(a1 + 64);
  LODWORD(v14) = *(a1 + 12);
  v16 = v8 - v14;
  v17 = v16 + 604800.0;
  if (v16 >= -302400.0)
  {
    v17 = v16;
  }

  if (v16 <= 302400.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16 + -604800.0;
  }

  v19 = v41;
  v20 = __sincos_stret(*(a1 + 88) + v41 * v32);
  v21 = v20.__sinval * (v20.__sinval * v20.__sinval);
  v22 = v20.__sinval * (v20.__sinval * v21);
  v23 = v20.__cosval + v30 * (v20.__sinval * v20.__sinval) + v20.__sinval * v20.__sinval * v27 * v20.__cosval + v29 * (v20.__sinval * v21) + v20.__sinval * v21 * v26 * v20.__cosval + v28 * (v20.__sinval * v22) + v20.__sinval * v22 * v12 * v20.__cosval;
  v24 = v31 / (v15 * v23 + 1.0);
  *a3 = v13 * (v20.__cosval * (v35 * v20.__sinval) + v39 * v20.__sinval + v38 * v21 + v34 * v21 * v20.__cosval + v37 * v22 + v33 * v22 * v20.__cosval + v36 * (v20.__sinval * (v20.__sinval * v22))) * (v13 * v24) + *(a1 + 16) + v18 * (*(a1 + 24) + v18 * *(a1 + 32));
  *a4 = (v15 + v23) * (v19 * v24) + *(a1 + 24) + (*(a1 + 32) + *(a1 + 32)) * v18;
  return 1;
}

double BlueFin::BdNavMsgMgr::svd_computeSVSatate_D2(uint64_t a1, unint64_t *a2, double *a3)
{
  v5 = *a2;
  v6 = *a2 / 1000.0;
  LODWORD(v5) = *(a1 + 8);
  v7 = v6 - v5;
  v8 = v7 + 604800.0;
  if (v7 >= -302400.0)
  {
    v8 = v7;
  }

  if (v7 <= 302400.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7 + -604800.0;
  }

  v70 = v9;
  BlueFin::BdNavMsgMgr::setEphemerisConstants(&v89, a1);
  v82 = v93;
  v84 = v91;
  v74 = v94;
  v76 = v92;
  v72 = v96;
  v78 = v97;
  v80 = v95;
  v10 = v101;
  v65 = v100;
  v66 = v98;
  v11 = v103;
  v61 = v99;
  v63 = v102;
  v88 = v105;
  HIDWORD(v12) = HIDWORD(v110);
  v68 = v110;
  v13 = *(a1 + 64);
  LODWORD(v12) = *(a1 + 12);
  v14 = v6 - v12;
  v15 = v14 + 604800.0;
  if (v14 >= -302400.0)
  {
    v15 = v14;
  }

  if (v14 <= 302400.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14 + -604800.0;
  }

  v17 = v90;
  v86 = v90;
  v18 = __sincos_stret(*(a1 + 88) + v90 * v70);
  v19 = v18.__sinval * (v18.__sinval * v18.__sinval);
  v20 = v18.__sinval * (v18.__sinval * v19);
  v21 = v18.__cosval + v66 * (v18.__sinval * v18.__sinval) + v18.__sinval * v18.__sinval * v61 * v18.__cosval + v65 * (v18.__sinval * v19) + v18.__sinval * v19 * v10 * v18.__cosval + v63 * (v18.__sinval * v20) + v18.__sinval * v20 * v11 * v18.__cosval;
  v87 = v13;
  v22 = v68 / (v13 * v21 + 1.0);
  v23 = v13 * v21 + 1.0;
  v60 = v23;
  v24 = v88 * (v18.__cosval * (v76 * v18.__sinval) + v84 * v18.__sinval + v82 * v19 + v74 * v19 * v18.__cosval + v80 * v20 + v72 * v20 * v18.__cosval + v78 * (v18.__sinval * (v18.__sinval * v20)));
  v25 = *(a1 + 24);
  v26 = *(a1 + 32);
  v27 = *(a1 + 40);
  v28 = v24 * (v88 * v22) + *(a1 + 16) + v16 * (v25 + v16 * v26);
  a3[6] = v28;
  a3[7] = (v13 + v21) * (v17 * v22) + v25 + (v26 + v26) * v16;
  v29 = v70 - (v28 - v27);
  v30 = v21 * v107 + v24 * v108;
  v31 = v21 * v108 - v24 * v107;
  v32 = v31 * (v30 + v30);
  v33 = v31 * v31 - v30 * v30;
  v83 = *(a1 + 136);
  v85 = v24;
  v81 = *(a1 + 128);
  v34 = v81 * v33 + v83 * v32;
  v35 = v34 * v34 * -0.5 + 1.0;
  v75 = v31 * v35 - v30 * v34;
  v77 = v31 * v34 + v30 * v35;
  v62 = *(a1 + 144);
  v64 = *(a1 + 152);
  v36 = v104 / v23 + v33 * v62 + v64 * v32;
  v37 = v36 * v75;
  v38 = v36 * v77;
  v73 = *(a1 + 168);
  v69 = *(a1 + 160);
  v71 = *(a1 + 120);
  v59 = v29;
  v39 = *(a1 + 112) + v33 * v69 + v73 * v32 + v71 * v29;
  v79 = *(a1 + 104);
  v40 = __sincos_stret(*(a1 + 96) + v79 * v29 - v109);
  v41 = __sincos_stret(v39);
  v67 = v37 * v40.__cosval - v38 * v41.__cosval * v40.__sinval;
  v42 = v38 * v41.__cosval * v40.__cosval + v37 * v40.__sinval;
  v43 = __sincos_stret(v59 * 0.00007292115);
  v44 = v60 * (v86 * v60) / v106;
  v45 = v44 + v44;
  v46 = (v64 * v33 - v62 * v32) * (v44 + v44) + v86 * (v87 * v89) / v88 * v85;
  v47 = v44 + (v44 + v44) * (v83 * v33 - v81 * v32);
  v48 = v46 * v75 - v38 * v47;
  v49 = v37 * v47 + v46 * v77;
  v50 = v71 + v45 * (v73 * v33 - v69 * v32);
  v51 = v38 * v41.__sinval * 0.996194698 + v42 * 0.0871557427;
  v52 = v49 * v41.__cosval - v51 * v50 + v37 * v79;
  v53 = v48 + -(v38 * v79) * v41.__cosval;
  v54 = v53 * v40.__cosval - v52 * v40.__sinval;
  v55 = v40.__cosval * v52 + v53 * v40.__sinval;
  v56 = v41.__cosval * (v38 * v50) + v49 * v41.__sinval;
  v57 = v43.__cosval * (v38 * v41.__sinval);
  result = v43.__cosval * v54 + -(v43.__sinval * v67) * 0.00007292115 + (v43.__sinval * v55 + v43.__cosval * v42 * 0.00007292115) * 0.996194698 + (v43.__sinval * v56 + v57 * 0.00007292115) * -0.0871557427;
  *a3 = v43.__cosval * v67 + v43.__sinval * v42 * 0.996194698 + v43.__sinval * (v38 * v41.__sinval) * -0.0871557427;
  a3[1] = v43.__cosval * v42 * 0.996194698 - v43.__sinval * v67 + v57 * -0.0871557427;
  a3[2] = v51;
  a3[3] = result;
  a3[4] = (v43.__cosval * v56 - v43.__sinval * (v38 * v41.__sinval) * 0.00007292115) * -0.0871557427 - (v43.__sinval * v54 + v43.__cosval * v67 * 0.00007292115 - (v43.__cosval * v55 - v43.__sinval * v42 * 0.00007292115) * 0.996194698);
  a3[5] = v56 * 0.996194698 + v55 * 0.0871557427;
  return result;
}

uint64_t BlueFin::BdSFDemod::RegisterListener(uint64_t result, uint64_t a2)
{
  *(result + 8) = a2;
  return result;
}

{
  *(result + 16) = a2;
  return result;
}

uint64_t BlueFin::BdSFDemod::Update(uint64_t result, unsigned __int16 *a2)
{
  v2 = result;
  v3 = *a2;
  v83 = v3 & 0x1F;
  if (*(result + 58) == 1)
  {
    *(result + 48) = 0;
    *(result + 24) = 0;
    *(result + 58) = 0;
    v4 = *(result + 36) % 300;
    *(result + 54) = v4 / 0x1Eu;
    *(result + 56) = v4 % 0x1Eu;
  }

  v5 = 0;
  v6 = 0;
  v84 = a2 + 4;
  v85 = (v3 >> 5);
  v90 = (result + 84);
  do
  {
    v92 = *&v84[2 * v5];
    v88 = v5;
    if (v5 == v85)
    {
      if (!v83)
      {
        return result;
      }

      v7 = 1 << (v83 - 1);
      v92 >>= 32 - v83;
    }

    else
    {
      v7 = 0x80000000;
    }

    v8 = 2 * v6 - 118;
    v9 = 20 * v6 - 1180;
    do
    {
      v10 = *(v2 + 36);
      v11 = v10 + 1;
      *(v2 + 36) = v10 + 1;
      v13 = *(v2 + 24);
      v12 = *(v2 + 28);
      v14 = ((v7 & v92) != 0) | (2 * v13);
      v15 = 2 * v12;
      v16 = (2 * v12) | (v13 >> 28) & 1;
      *(v2 + 24) = v14;
      *(v2 + 28) = v16;
      v17 = *(v2 + 48);
      if (v17)
      {
        v18 = ++*(v2 + 56);
        if (v18 < 0x1E)
        {
          goto LABEL_100;
        }

        v19 = *(v2 + 54);
        v91 = v19 + 1;
        *(v2 + 54) = v19 + 1;
        if (v17 == 4)
        {
          v20 = v19 + 1;
          goto LABEL_13;
        }

        v32 = 2 * v13;
        if (*(v2 + 64))
        {
          if (v19)
          {
            if (v19 == 1)
            {
              v33 = v12 & 0x7FFFFFFF;
              if ((v12 & 0x3FF80000) == 0x7680000)
              {
                v33 = ~v33;
                v34 = ~v14;
              }

              else
              {
                v34 = v14;
              }

              v94 = v34;
              v86 = v33;
              v35 = v33 | 0x40000000u;
              BlueFin::BdWordParity::BCHDecodeWordProcess(&v94, 1);
              *v90 = v35;
              if (BlueFin::BdWordParity::ParityCheck(v35, 0))
              {
                v36 = v94;
                if (BlueFin::BdWordParity::ParityCheck(v94, 1))
                {
                  v37 = (v86 >> 12) & 7;
                  if (v37 - 6 >= 0xFFFFFFFB)
                  {
                    v38 = (1431655766 * ((v86 << 8) & 0xFF000 | (v36 >> 18) & 0xFFF)) >> 32;
                    v39 = 5 * v38 + v37;
                    if (v39 <= 0xF6180)
                    {
                      if (v37 == 1)
                      {
                        v40 = v38 - 10 * ((429496730 * v38) >> 32) + 1;
                        v41 = (v36 >> 14) & 0xF;
                      }

                      else if (v37 >= 5)
                      {
                        v40 = v38 - 120 * ((35791395 * v38) >> 32) + 1;
                        v41 = (v36 >> 10) & 0x7F;
                      }

                      else
                      {
                        if (v37 != 2)
                        {
                          goto LABEL_81;
                        }

                        v40 = v38 - 6 * ((715827883 * v38) >> 32) + 1;
                        v41 = (v36 >> 13) & 0xF;
                      }

                      if (v40 == v41)
                      {
                        *(v2 + 52) = 0;
                        if (v17 != 3)
                        {
                          v20 = v91;
                          if (v17 != 2)
                          {
                            if (v17 == 1)
                            {
                              if (v39)
                              {
                                v68 = v39 - 1;
                              }

                              else
                              {
                                v68 = 1007999;
                              }

                              v11 = 300 * v68 + 60;
                              *(v2 + 36) = v11;
                              *(v2 + 40) = v68;
                              v52 = *(v2 + 32);
                              v53 = 302399999;
                              if (v52 > 302399999)
                              {
                                v54 = -302400000;
                                goto LABEL_127;
                              }

                              goto LABEL_125;
                            }

                            goto LABEL_86;
                          }

                          v75 = *(v2 + 40);
                          if (v75 != v39 - 2 && v75 != v39 + 1007998)
                          {
                            goto LABEL_131;
                          }

                          v70 = 300 * v75 + 360;
                          v82 = *(v2 + 32) + v70 - v11;
                          if (v82 > 302399999)
                          {
                            v82 -= 302400000;
                          }

                          *(v2 + 32) = v82 + (v82 < 0 ? 0x12064200 : 0);
                          *(v2 + 36) = v70;
                          v17 = 3;
                          *(v2 + 48) = 3;
                          v72 = *(v2 + 60) & 0xF5F7;
                          goto LABEL_148;
                        }

                        if (v39)
                        {
                          v76 = v39 - 1;
                        }

                        else
                        {
                          v76 = 1007999;
                        }

                        *(v2 + 40) = v76;
                        v77 = 300 * v76;
                        v78 = v77 + 59;
                        v79 = v77 + 302400059;
                        if (v10 == v78 || v10 == v79)
                        {
                          v17 = 4;
                          *(v2 + 48) = 4;
                          *(v2 + 60) |= 0x200u;
                        }

                        else
                        {
                          v17 = 0;
                          *(v2 + 60) = (*(v2 + 60) << 8) & 0x800 | *(v2 + 60) & 0xFDF7;
                          *(v2 + 48) = 0;
                        }

LABEL_85:
                        v20 = v91;
                        goto LABEL_86;
                      }
                    }
                  }
                }
              }

LABEL_81:
              v60 = ++*(v2 + 52);
              if (v60 >= 5)
              {
                v17 = 0;
                *(v2 + 60) = (*(v2 + 60) << 8) & 0x800 | *(v2 + 60) & 0xFDF7;
                goto LABEL_83;
              }

              goto LABEL_102;
            }

            v57 = *(v2 + 52);
LABEL_80:
            if (v57 < 5u)
            {
              goto LABEL_85;
            }

            goto LABEL_81;
          }

          v55 = ((v7 & v92) != 0) | (2 * v13);
          v20 = 1;
          if ((v32 & 0x3FF80000) != 0x38900000)
          {
            if ((v32 & 0x3FF80000) != 0x7680000)
            {
LABEL_79:
              v57 = *(v2 + 52) + 1;
              *(v2 + 52) = v57;
              goto LABEL_80;
            }

            v55 = (((v7 & v92) != 0) | (2 * v13) & 0x7FFFF) ^ 0xB897FFFF;
          }

          v56 = v55 | 0x40000000;
          if (BlueFin::BdWordParity::ParityCheck(v55 | 0x40000000, 0))
          {
            *(v2 + 84) = v56;
            *(v2 + 52) = 0;
            goto LABEL_86;
          }

          goto LABEL_79;
        }

        if (v19)
        {
          if (v19 == 1)
          {
            v45 = v12 & 0x7FFFFFFF;
            if ((v12 & 0x3FF80000) == 0x7680000)
            {
              v45 = ~v45;
              v46 = ~v14;
            }

            else
            {
              v46 = v14;
            }

            v93 = v46;
            v87 = v45;
            v47 = v45 | 0x40000000u;
            BlueFin::BdWordParity::BCHDecodeWordProcess(&v93, 1);
            *v90 = v47;
            if (BlueFin::BdWordParity::ParityCheck(v47, 0))
            {
              v48 = v93;
              if (BlueFin::BdWordParity::ParityCheck(v93, 1))
              {
                v49 = (v48 >> 18) & 0xFFE | ((v87 >> 4) << 12);
                if (v49 <= 0x93A67)
                {
                  v50 = (715827883 * v49) >> 32;
                  v51 = v50 + 5;
                  if (v51 - 5 * ((858993460 * v51) >> 32) + 1 == ((v87 >> 12) & 7))
                  {
                    *(v2 + 52) = 0;
                    if (v17 == 3)
                    {
                      *(v2 + 40) = v50;
                      if (v10 == 300 * v51 - 1441)
                      {
                        v73 = *(v2 + 60);
                        v20 = v91;
                      }

                      else
                      {
                        v81 = 300 * v50 + 30240059;
                        v73 = *(v2 + 60);
                        v24 = v10 == v81;
                        v20 = v91;
                        if (!v24)
                        {
                          v17 = 0;
                          *(v2 + 60) = (v73 << 8) & 0x800 | v73 & 0xFDF7;
                          goto LABEL_149;
                        }
                      }

                      v17 = 4;
                      *(v2 + 48) = 4;
                      v74 = v73 | 0x200;
                      goto LABEL_144;
                    }

                    if (v17 != 2)
                    {
                      v20 = v91;
                      if (v17 == 1)
                      {
                        v11 = 300 * v50 + 60;
                        *(v2 + 36) = v11;
                        *(v2 + 40) = v50;
                        v52 = *(v2 + 32);
                        v53 = 30239999;
                        if (v52 > 30239999)
                        {
                          v54 = -30240000;
                          goto LABEL_127;
                        }

LABEL_125:
                        if ((v52 & 0x80000000) == 0)
                        {
LABEL_128:
                          v17 = 3;
                          *(v2 + 48) = 3;
                          v74 = *(v2 + 60) & 0xF5F7 | 8;
LABEL_144:
                          *(v2 + 60) = v74;
                          goto LABEL_86;
                        }

                        v54 = v53 + 1;
LABEL_127:
                        *(v2 + 32) = v54 + v52;
                        goto LABEL_128;
                      }

LABEL_86:
                      if ((*(v2 + 60) & 8) == 0 && v17 <= 0)
                      {
                        v43 = 0;
                        goto LABEL_89;
                      }

LABEL_13:
                      if (v20 != 2)
                      {
LABEL_44:
                        v43 = v17 == 4;
                        if (v17 == 4 && v20 == 1)
                        {
                          if ((v14 & 0x3FF80000) == 0x7680000)
                          {
                            v44 = ~v14 | 0x80000000;
                          }

                          else
                          {
                            v44 = v14 & 0x3FFFFFFF;
                          }

                          *v90 = v44 | 0x40000000;
                          v20 = 1;
                          v43 = 1;
                        }

LABEL_89:
                        v95 = (v14 ^ (*v90 >> 31)) & 0x7FFFFFFF;
                        BlueFin::BdWordParity::BCHDecodeWordProcess(&v95, (v20 - 1));
                        v61 = 1 << (v20 - 1);
                        v62 = v95;
                        result = BlueFin::BdWordParity::ParityCheck(v95, (v20 - 1));
                        if (result)
                        {
                          *(v2 + 62) = 0;
                          *(v2 + 44) |= v61;
                          *(v2 + 46) &= ~v61;
                        }

                        else
                        {
                          *(v2 + 46) |= v61;
                          *(v2 + 44) &= ~v61;
                          if (v43)
                          {
                            v63 = ++*(v2 + 62);
                            if (v63 >= 5)
                            {
                              *(v2 + 62) = 0;
                              *(v2 + 48) = 3;
                            }
                          }
                        }

                        if (v20 == 1 || (v90[v20 - 1] = v62, v20 != 10))
                        {
                          *(v2 + 56) = 0;
                        }

                        else
                        {
                          *(v2 + 80) = (*(v2 + 84) >> 12) & 7;
                          result = *(v2 + 8);
                          if (!result)
                          {
                            v31 = 0;
                            v30 = 0;
                            *(v2 + 44) = 0;
                            *&v67 = 0x100000001;
                            *(&v67 + 1) = 0x100000001;
                            *(v2 + 84) = v67;
                            *(v2 + 100) = v67;
                            *(v2 + 116) = 0x100000001;
                            goto LABEL_27;
                          }

                          result = (*(*result + 16))(result, v2 + 80, v2 + 72);
                          v30 = 0;
                          v64 = *(v2 + 54);
                          *(v2 + 44) = 0;
                          *&v65 = 0x100000001;
                          *(&v65 + 1) = 0x100000001;
                          *(v2 + 84) = v65;
                          *(v2 + 100) = v65;
                          *(v2 + 116) = 0x100000001;
                          *(v2 + 56) = 0;
                          if (v64 == 10)
                          {
                            goto LABEL_28;
                          }
                        }

                        goto LABEL_100;
                      }

                      if (*(v2 + 64) == 1)
                      {
                        *(v2 + 36) = v11 % 302400000;
                        if ((-858993459 * (v11 % 302400000 / 300) + 429496729) > 0x33333332)
                        {
                          goto LABEL_50;
                        }

                        v21 = 3 * (v11 % 302400000 / 1500);
                        v22 = v8 + *(a2 + 1);
                      }

                      else
                      {
                        *(v2 + 36) = v11 % 30240000;
                        v21 = 6 * (v11 % 30240000 / 300);
                        v22 = v9 + *(a2 + 1);
                      }

                      *(v2 + 72) = v22;
                      *(v2 + 76) = v21;
                      v42 = *(v2 + 16);
                      if (v42)
                      {
                        (*(*v42 + 16))(v42, *(v2 + 68), v2 + 72);
                        v17 = *(v2 + 48);
                        v20 = *(v2 + 54);
                        v14 = *(v2 + 24);
                        goto LABEL_44;
                      }

LABEL_50:
                      v43 = v17 == 4;
                      v20 = 2;
                      goto LABEL_89;
                    }

                    v69 = *(v2 + 40);
                    v20 = v91;
                    if (v69 != v50 - 1 && v69 != v50 + 100799)
                    {
LABEL_131:
                      v17 = 0;
LABEL_149:
                      *(v2 + 48) = 0;
                      goto LABEL_86;
                    }

                    v70 = 300 * v69 + 360;
                    v71 = *(v2 + 32) + v70 - v11;
                    if (v71 > 30239999)
                    {
                      v71 -= 30240000;
                    }

                    *(v2 + 32) = v71 + (v71 < 0 ? 0x1CD6D00 : 0);
                    *(v2 + 36) = v70;
                    v17 = 3;
                    *(v2 + 48) = 3;
                    v72 = *(v2 + 60) & 0xFDFF;
LABEL_148:
                    *(v2 + 60) = v72 | 8;
                    v11 = v70;
                    goto LABEL_86;
                  }
                }
              }
            }

            goto LABEL_77;
          }

          v58 = *(v2 + 52);
        }

        else
        {
          if (BlueFin::BdWordParity::ParityCheck(v14 | 0x40000000u, 0) && ((v32 & 0x3FF80000) == 0x7680000 || (v32 & 0x3FF80000) == 0x38900000))
          {
            goto LABEL_84;
          }

          v58 = *(v2 + 52) + 1;
          *(v2 + 52) = v58;
        }

        if (v58 < 5u)
        {
          goto LABEL_85;
        }

LABEL_77:
        v59 = ++*(v2 + 52);
        if (v59 >= 5)
        {
          v17 = 0;
LABEL_83:
          *(v2 + 48) = 0;
LABEL_84:
          *(v2 + 52) = 0;
          goto LABEL_85;
        }

LABEL_102:
        v20 = v91;
        if (v17 == 2)
        {
          ++*(v2 + 40);
        }

        goto LABEL_86;
      }

      v23 = v15 & 0x3FF80000;
      v24 = (v15 & 0x3FF80000) == 0x38900000 || v23 == 124256256;
      if (v24)
      {
        v25 = v16 & 0x3FFFFFFF;
        v26 = ~v16 | 0x80000000;
        v27 = v23 == 124256256 ? v26 : v25;
        v28 = v27 | 0x40000000;
        result = BlueFin::BdWordParity::ParityCheck(v27 | 0x40000000, 0);
        if (result)
        {
          *&v29 = 0x100000001;
          *(&v29 + 1) = 0x100000001;
          *(v2 + 88) = v29;
          *(v2 + 104) = v29;
          v30 = 1;
          *(v2 + 120) = 1;
          *(v2 + 84) = v28;
          v31 = 29;
          *(v2 + 44) = 0x100000001;
LABEL_27:
          *(v2 + 56) = v31;
LABEL_28:
          *(v2 + 54) = v30;
        }
      }

LABEL_100:
      v8 += 2;
      v9 += 20;
      ++v6;
      v66 = v7 > 1;
      v7 >>= 1;
    }

    while (v66);
    v5 = v88 + 1;
  }

  while (v88 + 1 != v85 + 1);
  return result;
}

double BlueFin::BdSFDemod::Reset(BlueFin::BdSFDemod *this)
{
  *(this + 9) = 0;
  *(this + 54) = 0x100000000;
  *(this + 31) = 0;
  *(this + 52) = 0;
  *&result = 0x100000001;
  *(this + 3) = 0x100000001;
  *(this + 9) = 0;
  *(this + 44) = 0;
  *&v2 = 0x100000001;
  *(&v2 + 1) = 0x100000001;
  *(this + 84) = v2;
  *(this + 100) = v2;
  *(this + 116) = 0x100000001;
  return result;
}

double BlueFin::GlPeAlmanac::Export(uint64_t a1, int32x2_t *a2, double a3, int8x16_t a4, int8x16_t a5, int8x16_t a6)
{
  v6 = *(a1 + 108);
  a2->i8[0] = v6 - 1;
  a2[4].i16[0] = *(a1 + 88);
  a2[4].i16[1] = *(a1 + 2);
  v7 = *(a1 + 8);
  v8 = *(a1 + 104);
  if (v8 == 3)
  {
    v9 = 0;
    v10 = 0.06;
    if ((v6 - 6) < 5)
    {
      v10 = 0.0;
    }

    v7 = v7 - v10;
    a4.i64[0] = 0x3EA0000000000000;
  }

  else
  {
    v9 = v8 == 5;
    a4.i64[0] = 0x3EA0000000000000;
    if (v8 == 5)
    {
      *a4.i64 = 0.0000152587891;
    }
  }

  *a4.i64 = v7 / *a4.i64;
  *a6.i64 = *a4.i64 + trunc(*a4.i64 * 2.32830644e-10) * -4294967300.0;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = vnegq_f64(v11);
  v13 = vbslq_s8(v12, a6, a4);
  if (*a4.i64 > 4294967300.0)
  {
    a4.i64[0] = v13.i64[0];
  }

  if (*a4.i64 < -4294967300.0)
  {
    *a5.i64 = -*a4.i64;
    *a4.i64 = -(*a4.i64 - trunc(*a4.i64 * -2.32830644e-10) * -4294967300.0);
    a4 = vbslq_s8(v12, a4, a5);
    *a4.i64 = -*a4.i64;
  }

  if (*a4.i64 < 0.0)
  {
    v14 = --*a4.i64;
  }

  else
  {
    LOWORD(v14) = *a4.i64;
  }

  a2->i16[1] = v14;
  a4.i32[0] = *(a1 + 16);
  *a4.i64 = a4.u64[0];
  a5.i64[0] = 0x40B0000000000000;
  if (v9)
  {
    *a5.i64 = 600.0;
  }

  *a4.i64 = *a4.i64 / *a5.i64;
  *a5.i64 = *a4.i64 - trunc(*a4.i64 * 2.32830644e-10) * 4294967300.0;
  v15 = vbslq_s8(v12, a5, a4);
  if (*a4.i64 <= 4294967300.0)
  {
    v15.i64[0] = a4.i64[0];
  }

  a2->i8[4] = *v15.i64;
  v16 = 0.0;
  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 == 2)
      {
        v16 = 0.35;
      }
    }

    else
    {
      v16 = 0.3;
    }
  }

  else
  {
    if (v8 == 3)
    {
      v17 = (v6 - 6) >= 5;
      v16 = 0.25;
    }

    else
    {
      if (v8 != 4)
      {
        if (v8 == 5)
        {
          v16 = 0.311111111;
        }

        goto LABEL_35;
      }

      v17 = (v6 - 59) >= 5u && (v6 - 1) >= 5u;
      v16 = 0.3;
    }

    if (!v17)
    {
      v16 = 0.0;
    }
  }

LABEL_35:
  *v15.i64 = (*(a1 + 24) - v16) / 3.14159265;
  v18 = 524288.0;
  if (v9)
  {
    v18 = 16384.0;
  }

  v19 = 1.14290475e-11;
  if (v9)
  {
    v19 = 3.6572952e-10;
  }

  v13.i64[0] = 0x3F40000000000000;
  if (v9)
  {
    *v13.i64 = 0.001953125;
  }

  v20 = *(a1 + 40);
  v21 = (*(a1 + 32) / v19);
  a2->i16[3] = (v18 * *v15.i64);
  a2[1].i16[0] = v21;
  *v15.i64 = v20 / *v13.i64;
  *v13.i64 = v20 / *v13.i64 + trunc(v20 / *v13.i64 * 2.32830644e-10) * -4294967300.0;
  v22.f64[0] = NAN;
  v22.f64[1] = NAN;
  v23 = vnegq_f64(v22);
  v13.i64[0] = vbslq_s8(v23, v13, v15).u64[0];
  if (*v15.i64 > 4294967300.0)
  {
    v15.i64[0] = v13.i64[0];
  }

  if (*v15.i64 < -4294967300.0)
  {
    *a5.i64 = -*v15.i64;
    *v15.i64 = -(*v15.i64 - trunc(*v15.i64 * -2.32830644e-10) * -4294967300.0);
    *v15.i64 = -*vbslq_s8(v23, v15, a5).i64;
  }

  if (*v15.i64 < 0.0)
  {
    v24 = --*v15.i64;
  }

  else
  {
    v24 = *v15.i64;
  }

  a2[1].i32[1] = v24;
  v25 = 0.000000374507028;
  if (v9)
  {
    v25 = 0.0000958737992;
  }

  v26 = 1048576.0;
  if (v9)
  {
    v26 = 524288.0;
  }

  v27 = (v26 * *(a1 + 72));
  v28 = (*(a1 + 64) / v25);
  a2[2] = vmovn_s64(vcvtq_s64_f64(vdivq_f64(*(a1 + 48), vdupq_lane_s64(*&v25, 0))));
  a2[3].i32[0] = v28;
  a2[3].i16[3] = v27;
  result = *(a1 + 80) * 2.74877907e11;
  a2[3].i16[2] = result;
  return result;
}

void *BlueFin::GlGnssIdSet::Add(void *result, unsigned __int8 *a2)
{
  v2 = *a2;
  if ((v2 - 64) <= 0xFFFFFFC0)
  {
    DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.h", 115, "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
  }

  *(*result + ((v2 >> 3) & 0x1C)) |= 1 << v2;
  return result;
}

uint64_t BlueFin::GlPeAlmMgr::Serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = &unk_2A1F0E890;
  v18 = 7;
  v19 = 0;
  v8 = -65536;
  v9 = 0;
  v10 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  v16 = -1;
  v17 = 0;
  result = BlueFin::GlPeAlmMgr::GetAlm(a1, *a2, *(a2 + 4), &v8, 0, 0);
  if (result && (!a3 || v16 != 2) && (a3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1))
  {
    result = v7[3](&v7, a3, 0);
    if (a3)
    {
      v6 = BlueFin::GNSS2STR(*a2);
      return GlCustomLog(14, "Write NVMEM Almanac %s %d\n", v6, *(a2 + 4));
    }
  }

  return result;
}

BOOL BlueFin::GlPeAlmMgr::GetAsstAlm(uint64_t a1, signed int a2, unsigned int a3, int32x2_t *a4)
{
  v5 = 0;
  if (a2 >= 3)
  {
    if (a2 <= 3)
    {
      if ((a3 - 11) <= 0xF5u)
      {
        v6 = "IS_QZSS_GNSSID(ucGnssId)";
        DeviceFaultNotify("glpe_almmgr.cpp", 939, "GetAsstAlm", "IS_QZSS_GNSSID(ucGnssId)");
        v7 = 939;
        goto LABEL_26;
      }

      v5 = a3 | 0xC0;
    }

    else
    {
      switch(a2)
      {
        case 4:
          v5 = a3;
          if ((a3 - 64) <= 0xC0u)
          {
            v6 = "IS_BEIDOU_GNSSID(ucGnssId)";
            DeviceFaultNotify("glpe_almmgr.cpp", 943, "GetAsstAlm", "IS_BEIDOU_GNSSID(ucGnssId)");
            v7 = 943;
            goto LABEL_26;
          }

          break;
        case 5:
          v6 = "0";
          DeviceFaultNotify("glpe_almmgr.cpp", 947, "GetAsstAlm", "0");
          v7 = 947;
          goto LABEL_26;
        case 6:
          v6 = "0";
          DeviceFaultNotify("glpe_almmgr.cpp", 950, "GetAsstAlm", "0");
          v7 = 950;
          goto LABEL_26;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      if ((a3 - 20) <= 0xECu)
      {
        v6 = "IS_SBAS_GNSSID(ucGnssId)";
        DeviceFaultNotify("glpe_almmgr.cpp", 931, "GetAsstAlm", "IS_SBAS_GNSSID(ucGnssId)");
        v7 = 931;
        goto LABEL_26;
      }

      v5 = a3 + 119;
    }

    else if (a2 == 2)
    {
      v5 = a3;
      if ((a3 - 25) <= 0xE7u)
      {
        v6 = "IS_GLONASS_GNSSID(ucGnssId)";
        DeviceFaultNotify("glpe_almmgr.cpp", 935, "GetAsstAlm", "IS_GLONASS_GNSSID(ucGnssId)");
        v7 = 935;
        goto LABEL_26;
      }
    }
  }

  else
  {
    v5 = a3;
    if ((a3 - 33) <= 0xDFu)
    {
      v6 = "IS_GPS_GNSSID(ucGnssId)";
      DeviceFaultNotify("glpe_almmgr.cpp", 927, "GetAsstAlm", "IS_GPS_GNSSID(ucGnssId)");
      v7 = 927;
      goto LABEL_26;
    }
  }

  v8 = (1 << (a3 & 0x1F)) & *(*(*(a1 + 432) + 48 * a2 + 24) + 4 * (a3 >> 5));
  if (v8)
  {
    AlmReference = BlueFin::GlPeAlmMgr::getAlmReference(a1, a2, a3);
    if (*AlmReference == v5)
    {
      BlueFin::GlPeAlmanac::Export(AlmReference, a4, v10, v11, v12, v13);
      return v8 != 0;
    }

    v6 = "ucId == rotAlm.id";
    DeviceFaultNotify("glpe_almmgr.cpp", 964, "GetAsstAlm", "ucId == rotAlm.id");
    v7 = 964;
LABEL_26:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_almmgr.cpp", v7, v6);
  }

  return v8 != 0;
}

_WORD *BlueFin::GlPeAlmMgr::GetDefaultAlmSatPos(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = BlueFin::GlPeAlmMgr::GetDefaultAlm(a2);
  if (result)
  {
    v9 = result;
    v10 = *(a1 + 448);
    if (v10[644])
    {
      v23 = *v9;
      v24 = *(v9 + 1);
      v25 = *(v9 + 4);
      v26 = *(v9 + 12);
      v27 = *(v9 + 20);
      v28 = *(v9 + 28);
      v29 = *(v9 + 36);
      v30 = v9[44];
      v31 = *(v9 + 23);
      v32 = *(v9 + 96);
      v33 = *a2;
      v11 = a3;
      if (a3 <= 0xFF9222FE)
      {
        v11 = a3;
      }

      v34 = *(a2 + 4);
      BlueFin::GlPeTimeManager::GetTime(v10, v11, 0, &v19);
      v21 = &off_2A1F0B5F0;
      v22 = 0;
      *v12.i64 = BlueFin::GlPeGnssTime::GetGps(&v19, &v21);
      Toa = BlueFin::GlPeAlmanac::GetToa(&v19, &v23, &v21, v12, v13);
      v15 = v22;
      v16 = HIDWORD(v22);
      if (v20)
      {
        if (v22 < v20)
        {
          v16 = (__PAIR64__(HIDWORD(v20) - HIDWORD(v22), v20) - v22) >> 32;
          v15 = v20 - v22;
          v17 = 1;
        }

        else
        {
          v17 = 0;
          v16 = (v22 - v20) >> 32;
          v15 = v22 - v20;
        }
      }

      else
      {
        v17 = 0;
      }

      v18 = v15 * 2.32830644e-10 + v16;
      if ((v17 & ((v16 | v15) != 0)) != 0)
      {
        v18 = -v18;
      }

      return BlueFin::GlPeAlmMgr::GetSatPos(v18, Toa, &v23, a4, 1u);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeAlmMgr::SetDataSubFrmMeas(uint64_t this, BlueFin::GlDataSubFrmMeas *a2)
{
  if (!a2)
  {
    v17 = "pDataSubFrmMeas";
    DeviceFaultNotify("glpe_almmgr.cpp", 1458, "SetDataSubFrmMeas", "pDataSubFrmMeas");
    v18 = 1458;
    goto LABEL_49;
  }

  v2 = BlueFin::GlSvId::s_aucSvId2gnss[*(a2 + 8)];
  if (v2 == 7)
  {
    v17 = "eGnss != GNSS_INVALID";
    DeviceFaultNotify("glpe_almmgr.cpp", 1462, "SetDataSubFrmMeas", "eGnss != GNSS_INVALID");
    v18 = 1462;
    goto LABEL_49;
  }

  if (BlueFin::GlSvId::s_aucSvId2gnss[*(a2 + 8)])
  {
    v3 = v2 == 3;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v17 = "eGnss == GNSS_GPS INC_QZS(|| eGnss == GNSS_QZSS)";
    DeviceFaultNotify("glpe_almmgr.cpp", 1463, "SetDataSubFrmMeas", "eGnss == GNSS_GPS INC_QZS(|| eGnss == GNSS_QZSS)");
    v18 = 1463;
    goto LABEL_49;
  }

  if (*(a2 + 9) - 6 < 0xFFFFFFFE)
  {
    v17 = "pDataSubFrmMeas->ucSubFrmId == 4 || pDataSubFrmMeas->ucSubFrmId == 5";
    DeviceFaultNotify("glpe_almmgr.cpp", 1464, "SetDataSubFrmMeas", "pDataSubFrmMeas->ucSubFrmId == 4 || pDataSubFrmMeas->ucSubFrmId == 5");
    v18 = 1464;
LABEL_49:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_almmgr.cpp", v18, v17);
  }

  v4 = this;
  for (i = 0; i != 32; i += 4)
  {
    if (*(a2 + i + 28) >> 30)
    {
      return this;
    }
  }

  v7 = (a2 + 28);
  v6 = *(a2 + 7);
  v8 = (v6 >> 28) & 3;
  if (BlueFin::GlSvId::s_aucSvId2gnss[*(a2 + 8)])
  {
    if (v8)
    {
      v9 = v8 == 3;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      return this;
    }

    v10 = (v6 >> 22) & 0x3F;
    if (v2 != 3 || v8 || (v11 = v6 & 0xFC00000, (v6 & 0xFC00000) == 0))
    {
      if (v2 != 3 || v8 != 3 || (v10 - 1) > 4)
      {
        return this;
      }

      goto LABEL_34;
    }

LABEL_33:
    if (v11 >> 22 >= 0x21)
    {
      return this;
    }

LABEL_34:
    if (v8)
    {
      v14 = 0;
    }

    else
    {
      v14 = v2 == 3;
    }

    if (v14 || v2 == 0)
    {
      v16 = 0;
    }

    else
    {
      v16 = 3;
    }

    v19 = v16;
    v20 = v10;
    this = BlueFin::GlPeAlmMgr::IsFresh(this, &v19);
    if ((this & 1) == 0)
    {
      return BlueFin::GlPeAlmMgr::ApplyDecodedAlmanac(v4, &v19, v7);
    }

    return this;
  }

  v11 = v6 & 0xFC00000;
  if ((v6 & 0x30000000) == 0x10000000 && v8 == 1 && v11 != 0)
  {
    v10 = (v6 >> 22) & 0x3F;
    goto LABEL_33;
  }

  return this;
}

uint64_t BlueFin::GlPeAlmMgr::ApplyDecodedAlmanac(uint64_t a1, unsigned int *a2, int32x2_t *a3)
{
  v4 = *a2;
  if (v4)
  {
    v5 = v4 == 3;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v45 = "rotGnss.eGnss == GNSS_GPS INC_QZS(|| rotGnss.eGnss == GNSS_QZSS)";
    DeviceFaultNotify("glpe_almmgr.cpp", 2396, "ApplyDecodedAlmanac", "rotGnss.eGnss == GNSS_GPS INC_QZS(|| rotGnss.eGnss == GNSS_QZSS)");
    v46 = "glpe_almmgr.cpp";
    v47 = 2396;
    goto LABEL_31;
  }

  AlmReference = BlueFin::GlPeAlmMgr::getAlmReference(a1, v4, *(a2 + 4));
  v11 = *a2;
  *(AlmReference + 104) = *a2;
  v12 = *(a2 + 4);
  *(AlmReference + 108) = v12;
  v13 = a3->i32[1];
  if (v11 == 5)
  {
    v14 = 600;
  }

  else
  {
    v14 = 4096;
  }

  v15 = (v13 >> 22) * v14;
  *v10.i64 = v15;
  v54 = &off_2A1F0B5F0;
  *v9.i64 = v15 - trunc(v15);
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v9.i64[0] = vbslq_s8(vnegq_f64(v16), v9, v10).i64[0];
  if (*v9.i64 >= 1.0)
  {
    v45 = "dFracSec >= 0.0 && dFracSec < 1.0";
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    v46 = "glpe_timepoint.h";
    v47 = 173;
    goto LABEL_31;
  }

  v17 = *v9.i64 * 4294967300.0 + 0.5;
  v18 = v17;
  if (v17 >= 4294967300.0)
  {
    v18 = -1;
  }

  LODWORD(v55) = v18;
  HIDWORD(v55) = (v13 >> 22) * v14;
  v54 = &off_2A1F0B5F0;
  v19 = *(a1 + 448);
  v51 = a1;
  if (*(v19 + 644))
  {
    v49 = v10;
    BlueFin::GlPeTimeManager::GetTime(v19, 1, v52);
    v53[0] = &off_2A1F0B5F0;
    v53[1] = 0;
    BlueFin::GlPeGnssTime::GetGps(v52, v53);
    BlueFin::GlWeekTowTime::resolveTowAmbiguity(v52, v53, v49, v20);
    v55 = v52[0].n128_u64[0];
    v13 = a3->i32[1];
    v11 = *(AlmReference + 104);
    v12 = *(AlmReference + 108);
  }

  v21 = (a3->i32[0] >> 6);
  v22 = (v13 >> 6);
  v23 = a3[1].i32[0];
  v50 = (a3[1].i32[1] >> 6) & 0xFFFFFF;
  v24 = vshr_n_s32(vshl_n_s32(a3[2], 2uLL), 8uLL);
  v25 = a3[3].u32[1];
  v26 = (a3[3].i32[0] >> 6);
  v27 = ((4 * v25) >> 21) & 0xFFFFFFF8 | (v25 >> 8) & 7;
  v28 = (v25 << 10) >> 21;
  *AlmReference = BlueFin::GlPeAlmanacPlainOldData::Gnss2almId(v11, v12);
  *(AlmReference + 2) = (v23 >> 6);
  v29 = *(AlmReference + 104);
  if (v29 == 5)
  {
    v30 = v21 * 0.0000152587891 + 0.0;
    v31 = 0.0000610351562;
    v32 = 3.6572952e-10;
    v33 = 0.001953125;
    v48 = 0.0000958737992;
    v34 = 0x3EC0000000000000;
  }

  else
  {
    v35 = 0.06;
    if (*(AlmReference + 108) - 6 < 5)
    {
      v35 = 0.0;
    }

    if (v29 != 3)
    {
      v35 = 0.0;
    }

    v30 = v35 + v21 * 0.000000476837158;
    v31 = 0.00000190734863;
    v32 = 1.14290475e-11;
    v33 = 0.00048828125;
    v48 = 0.000000374507028;
    v34 = 0x3EB0000000000000;
  }

  v36 = *&v34;
  *(AlmReference + 8) = v30;
  *(AlmReference + 16) = v15;
  *(AlmReference + 24) = BlueFin::GlPeAlmanac::deltaI_semicircles_to_i0_rad(AlmReference, v31 * v22);
  *(AlmReference + 32) = v32 * (v23 >> 14);
  *(AlmReference + 40) = v33 * v50;
  v37.i64[0] = v24.i32[0];
  v37.i64[1] = v24.i32[1];
  *(AlmReference + 48) = vmulq_n_f64(vcvtq_f64_s64(v37), v48);
  *(AlmReference + 64) = v48 * v26;
  *(AlmReference + 72) = v36 * v27;
  *(AlmReference + 80) = v28 * 3.63797881e-12;
  *(AlmReference + 88) = ((v54[4])(&v54) / 0x93A80);
  *(AlmReference + 92) = 1;
  v38 = *(AlmReference + 40);
  if (v38 >= 2530.0 && v38 <= 8192.0 && *(AlmReference + 16) <= 0x93000u)
  {
    v40 = (v54[4])(&v54);
    v41 = *(a2 + 4);
    v42 = v41 - 64;
    if (v40 >= 0x93A80)
    {
      if (v42 > 0xFFFFFFC0)
      {
        v44 = *(*(v51 + 432) + 48 * *a2 + 24);
        *(v44 + ((v41 >> 3) & 0x1C)) |= 1 << v41;
        BlueFin::GlPeAlmMgr::Serialize(v51, a2, 0);
        goto LABEL_22;
      }
    }

    else if (v42 > 0xFFFFFFC0)
    {
      v43 = *(*(v51 + 432) + 48 * *a2);
      *(v43 + ((v41 >> 3) & 0x1C)) |= 1 << v41;
      goto LABEL_22;
    }

    v45 = "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID";
    DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
    v46 = "glgnss.h";
    v47 = 115;
LABEL_31:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v46, v47, v45);
  }

LABEL_22:
  *(v51 + 36712) = 0;
  return 1;
}

BlueFin::GlPeTimeManager *BlueFin::GlPeAlmMgr::PublishDcdGlnAlm(BlueFin::GlPeAlmMgr *this, int a2, int a3, int a4)
{
  result = *(this + 56);
  if (*(result + 644))
  {
    v6 = *(this + 24 * a2 + a4 + 3720);
    v7 = ((v6 >> 3) & (v6 >> 6) & (v6 >> 9) & 7) != 0 && (~*(this + 24 * a2 + a4 + 3720) & 6) == 0;
    if (v7 && (v6 & 1) != 0)
    {
      v8 = 2 * (a4 % 5);
      v9 = 99 * a3 + 7948;
      v10 = this + 495 * a2 + v9;
      v11 = &v10[9 * (v8 | 1)];
      v12 = 9 * v8;
      v13 = &v10[v12];
      v14 = a2;
      v15 = 4 * a4 + 14880;
      v16 = v12 + 99 * a3;
      v17 = v16 + 7957;
      v18 = v16 + 7966;
      v19 = 1;
      v20 = 14;
      do
      {
        if (v14)
        {
          v21 = *(this + v15);
          v22 = ((v21 >> 3) & (v21 >> 6) & (v21 >> 9) & 7) != 0 && (~*(this + v15) & 6) == 0;
          if (v22 && (v21 & 1) != 0 && *v10 == *(this + v9) && (*(this + v9 + 1) ^ v10[1]) <= 0x1F && ((*(this + v9 + 5) ^ v10[5]) & 0xF) == 0 && ((*(this + v9 + 6) ^ v10[6]) & 0x80) == 0 && *v11 == *(this + v17) && v11[8] == *(this + v17 + 8))
          {
            v25 = *(v13 + 18) != *(this + v18) || v13[26] != *(this + v18 + 8);
            v19 &= v25;
          }
        }

        v15 += 96;
        --v14;
        v9 += 495;
        v17 += 495;
        v18 += 495;
        --v20;
      }

      while (v20);
      if (v19)
      {
        v26 = (*v10 << 24) | (v10[1] << 16);
        v27 = (v10[5] << 28) | (v10[6] << 20);
        v28 = *v11;
        v29 = v11[1];
        v30 = v29;
        v31 = v11[3] | (v11[2] << 8);
        v32 = (v11[2] << 8) | (v29 << 16);
        v33 = v11[4];
        v34 = v11[7];
        v35 = ((v11[6] << 8) | (v11[5] << 16)) & 0xFFFFFF | (v33 << 24) | v34;
        v36 = v11[8];
        v37 = v13[18];
        v38 = v13[19];
        v39 = v13[20];
        v40 = v13[21];
        v41 = v13[22];
        v42 = v13[25];
        v43 = (v41 << 24) | (v13[23] << 16) | (v13[24] << 8) | v42;
        v44 = v13[26];
        v45 = v26 >> 21;
        v60 = v45;
        v71 = v28 >> 7;
        v73 = (v28 >> 5) & 3;
        v46 = v28 & 0x1F;
        v72 = 1;
        v47 = v32 >> 14;
        v61 = v46;
        v48 = (v32 >> 14) & 0x1FF;
        if (v30 < 0)
        {
          v47 = -v48;
        }

        v70 = v47;
        v49 = __PAIR64__(v31, v33 << 24) >> 14;
        v50 = v49 >> 11;
        if (v49 < 0)
        {
          v50 = -((v49 >> 11) & 0xFFFFF);
        }

        v51 = (v35 >> 7) & 0x3FFFF;
        if (v33)
        {
          v51 = -((v35 >> 7) & 0x1FFFF);
        }

        v52 = v36 & 0xFFFF80FF | ((v34 & 0x7F) << 8);
        v68 = v52;
        LOWORD(v53) = v38 | (v37 << 8);
        if ((v37 & 0x80u) != 0)
        {
          v53 = -(v53 & 0x7FFF);
        }

        v69 = v53;
        v63 = v50;
        v64 = ((v39 << 24) | (v40 << 16) | (v41 << 8)) >> 11;
        v54 = (v43 >> 5) & 0x3FFFFF;
        if ((v41 & 4) != 0)
        {
          v54 = -((v43 >> 5) & 0x1FFFFF);
        }

        v65 = v51;
        v66 = v54;
        if ((v42 & 0x10) != 0)
        {
          v55 = -((((v42 << 27) | (v44 << 19)) >> 25) & 0x3F);
        }

        else
        {
          LOBYTE(v55) = ((v42 << 27) | (v44 << 19)) >> 25;
        }

        v67 = v55;
        v62 = (v44 >> 1) & 0x1F;
        if (v27 >> 27 && v45 - 1462 >= 0xFFFFFA4B && (v46 - 25) >= 0xFFFFFFE8 && vcvtd_n_f64_u32(((v39 << 24) | (v40 << 16) | (v41 << 8)) >> 11, 5uLL) <= 44100.0 && fabs(vcvtd_n_f64_s32(v51, 0x14uLL)) <= 0.067 && fabs(vcvtd_n_f64_s32(v54, 9uLL)) <= 3600.0 && vcvtd_n_f64_u32(v52, 0x14uLL) <= 0.03)
        {
          BlueFin::GlPeTimeManager::GetTime(result, 1, v58);
          v59[0] = &off_2A1F0E430;
          v59[1] = 0;
          *v56.i64 = BlueFin::GlPeGnssTime::GetGlns(v58, v59);
          return BlueFin::GlPeAlmMgr::ApplyDecodedGlonassAlmanac(this, v59, &v60, 1, v56, v57);
        }

        else
        {
          return GlCustomLog(14, "Reject Alm GLO %d\n", v46);
        }
      }
    }
  }

  return result;
}

void BlueFin::GlPeAlmMgr::SetGalileoDataPage(BlueFin::GlPeAlmMgr *this, BlueFin::GlGalileoINavPage *a2, int8x16_t a3, int8x16_t a4)
{
  v86 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 10);
  if (v4 != 5 && (v4 - 7) > 0xFFFFFFFA)
  {
    return;
  }

  v8 = *(this + 55);
  v82 = 7;
  LOBYTE(v83) = 0;
  BlueFin::GlPeSvIdConverter::SvId2Gnss((v8 + 119744), a2 + 8, &v82, a3, a4);
  if (v83 - 1 >= 0x3F)
  {
    v77 = "m_pAsstMgr->SvId2Gnss(rGalileoDataPage.otSvId, otGnssl)";
    DeviceFaultNotify("glpe_almmgr.cpp", 2162, "SetGalileoDataPage", "m_pAsstMgr->SvId2Gnss(rGalileoDataPage.otSvId, otGnssl)");
    v78 = "glpe_almmgr.cpp";
    v79 = 2162;
    goto LABEL_69;
  }

  v9 = 0;
  v10 = *(a2 + 5);
  do
  {
    v11 = *(a2 + v9 + 24);
    *(&v82 + v9) = __PAIR64__(v10, v11) >> 30;
    v9 += 4;
    v10 = v11;
  }

  while (v9 != 12);
  HIDWORD(v13) = *(a2 + 8);
  LODWORD(v13) = *(a2 + 9);
  v12 = v13 >> 30;
  v14 = v12 & 0xFFFF0000 | ((v13 >> 30) << 8);
  v15 = v14 | (v13 >> 22);
  v85 = v15;
  v16 = *(a2 + 10);
  if (v16 <= 7)
  {
    if (v16 != 1)
    {
      if (v16 == 5)
      {
        *(this + 17356) = (v84 >> 11) & 0xFFF;
        *(this + 34653) = 1;
      }

      else if (v16 == 7)
      {
        v17 = v82;
        v18 = (v82 >> 4) & 0x3F;
        if ((v18 - 1) > 0x23)
        {
          return;
        }

        v19 = *(this + 4329) + 112 * (v18 - 1);
        *(v19 + 104) = 5;
        *(v19 + 88) = (v17 >> 20) & 3;
        *(v19 + 16) = 600 * ((v17 >> 10) & 0x3FF);
        v20 = v83;
        v21 = v84;
        v22 = vcvtd_n_f64_s32((__PAIR64__(v17, v83) >> 4) >> 19, 9uLL);
        v23 = vcvtd_n_f64_u32((v83 >> 12) & 0x7FF, 0x10uLL);
        *(v19 + 108) = v18;
        *v19 = v18;
        *(v19 + 40) = v22;
        *(v19 + 8) = v23;
        *(v19 + 56) = ((__PAIR64__(v20, v21) >> 12) >> 16) * 3.14159265 * 0.0000305175781;
        v24 = BlueFin::GlPeAlmanac::deltaI_semicircles_to_i0_rad(v19, vcvtd_n_f64_s32((16 * v21) >> 21, 0xEuLL));
        *(v19 + 48) = (v21 >> 1) * 3.14159265 * 0.0000305175781;
        *(v19 + 24) = v24;
        *(v19 + 32) = ((__PAIR64__(v21, v12) >> 1) >> 21) * 3.14159265 * 1.16415322e-10;
        *(v19 + 64) = (v15 >> 6) * 3.14159265 * 0.0000305175781;
        *(v19 + 96) = 0;
        *(v19 + 92) = 1;
        *(this + 17320) = (v17 >> 22) & 0xF;
        *(this + 34649) = v18;
        *(this + 34654) = 1;
        *(this + 8665) = *(a2 + 13);
      }

LABEL_34:
      if (*(this + 34652) != 1 || *(this + 34653) != 1)
      {
        return;
      }

      if (*(this + 34654))
      {
        if (*(this + 34655))
        {
          if (*(this + 17320) == *(this + 17321))
          {
            v55 = *(this + 8666);
            v56 = *(this + 8665);
            v57 = v55 >= v56;
            v58 = v55 - v56;
            if (v58 != 0 && v57 && v58 <= 0xBB7)
            {
              v59 = *(this + 4329) + 112 * *(this + 34649);
              *(v59 - 72) = *(this + 4335) + *(v59 - 72);
              *(v59 - 24) = (*(this + 17356) & 0xFFFC | *(v59 - 24) & 3) + 1024;
              AlmReference = BlueFin::GlPeAlmMgr::getAlmReference(this, 5u, *(v59 - 4));
              v61 = (*(this + 4329) + 112 * *(this + 34649) - 112);
              if (!BlueFin::GlPeAlmanac::operator==(v61, AlmReference))
              {
                BlueFin::GlPeAlmanac::operator=(AlmReference, v61);
                v62 = *(AlmReference + 108);
                v80 = 5;
                v81[0] = v62;
                BlueFin::GlGnssIdSet::Add((*(this + 54) + 264), v81);
                BlueFin::GlSetBase::Remove(*(this + 54) + 240, v81[0]);
                BlueFin::GlPeAlmMgr::Serialize(this, &v80, 0);
              }

              *(this + 34654) = 0;
              if ((*(this + 34655) & 1) == 0)
              {
                goto LABEL_58;
              }
            }
          }

          goto LABEL_48;
        }
      }

      else if (*(this + 34655))
      {
        if ((*(this + 34656) & 1) == 0)
        {
          return;
        }

LABEL_48:
        if (*(this + 34656) == 1 && *(this + 17321) == *(this + 17322))
        {
          v63 = *(this + 8667);
          v64 = *(this + 8666);
          v57 = v63 >= v64;
          v65 = v63 - v64;
          if (v65 != 0 && v57 && v65 >> 4 <= 0x752)
          {
            v66 = *(this + 4329) + 112 * *(this + 34650);
            *(v66 - 72) = *(this + 4335) + *(v66 - 72);
            *(v66 - 24) = (*(this + 17356) & 0xFFFC | *(v66 - 24) & 3) + 1024;
            v67 = BlueFin::GlPeAlmMgr::getAlmReference(this, 5u, *(v66 - 4));
            v68 = (*(this + 4329) + 112 * *(this + 34650) - 112);
            if (!BlueFin::GlPeAlmanac::operator==(v68, v67))
            {
              BlueFin::GlPeAlmanac::operator=(v67, v68);
              v69 = *(v67 + 108);
              v80 = 5;
              v81[0] = v69;
              BlueFin::GlGnssIdSet::Add((*(this + 54) + 264), v81);
              BlueFin::GlSetBase::Remove(*(this + 54) + 240, v81[0]);
              BlueFin::GlPeAlmMgr::Serialize(this, &v80, 0);
            }

            *(this + 34655) = 0;
          }
        }

LABEL_58:
        if (*(this + 34656) == 1 && *(this + 34657) == 1 && *(this + 17322) == *(this + 17323))
        {
          v70 = *(this + 8668);
          v71 = *(this + 8667);
          v57 = v70 >= v71;
          v72 = v70 - v71;
          if (v72 != 0 && v57 && v72 <= 0xBB7)
          {
            v73 = *(this + 4329) + 112 * *(this + 34651);
            *(v73 - 72) = *(this + 4335) + *(v73 - 72);
            *(v73 - 24) = (*(this + 17356) & 0xFFFC | *(v73 - 24) & 3) + 1024;
            v74 = BlueFin::GlPeAlmMgr::getAlmReference(this, 5u, *(v73 - 4));
            v75 = (*(this + 4329) + 112 * *(this + 34651) - 112);
            if (!BlueFin::GlPeAlmanac::operator==(v75, v74))
            {
              BlueFin::GlPeAlmanac::operator=(v74, v75);
              v76 = *(v74 + 108);
              v80 = 5;
              v81[0] = v76;
              BlueFin::GlGnssIdSet::Add((*(this + 54) + 264), v81);
              BlueFin::GlSetBase::Remove(*(this + 54) + 240, v81[0]);
              BlueFin::GlPeAlmMgr::Serialize(this, &v80, 0);
            }

            *(this + 17328) = 0;
          }
        }

        return;
      }

      if ((*(this + 34656) & 1) == 0 || (*(this + 34657) & 1) == 0)
      {
        return;
      }

      goto LABEL_58;
    }

    *(this + 4335) = vcvtd_n_f64_u32(__PAIR64__(v84, v15) >> 2, 0x13uLL);
    *(this + 34652) = 1;
    v32 = *(a2 + 8);
    *(this + 34648) = v32 + 118;
    if ((v32 + 54) > 0xC0u)
    {
      *(*(this + 4336) + 4 * ((v32 + 118) >> 5)) |= 1 << (v32 + 118);
      goto LABEL_34;
    }

    v77 = "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID";
    DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
    v78 = "glgnss.h";
    v79 = 115;
LABEL_69:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v78, v79, v77);
  }

  if (v16 == 8)
  {
    v33 = v82;
    v34 = (v82 >> 22) & 0xF;
    *(this + 17321) = (v82 >> 22) & 0xF;
    if (*(this + 34654) == 1 && *(this + 17320) == v34)
    {
      v35.i32[0] = v33 << 10;
      v36 = v83;
      v35.i32[1] = __PAIR64__(v33, v83) >> 6;
      v37 = *(this + 4329) + 112 * *(this + 34649);
      v38 = vshl_s32(v35, 0xFFFFFFEDFFFFFFF0);
      v39.i64[0] = v38.i32[0];
      v39.i64[1] = v38.i32[1];
      *(v37 - 40) = vmulq_f64(vcvtq_f64_s64(v39), xmmword_298A3B2F0);
      *(v37 - 110) = (v36 >> 21) & 3;
    }

    v40 = v83;
    v41 = (v83 >> 15) & 0x3F;
    if ((v41 - 1) <= 0x23)
    {
      v42 = *(this + 4329) + 112 * (v41 - 1);
      *(v42 + 104) = 5;
      *(v42 + 108) = v41;
      *v42 = v41;
      *(v42 + 40) = vcvtd_n_f64_s32(v40 << 17 >> 19, 9uLL);
      v43 = v84;
      *(v42 + 8) = vcvtd_n_f64_u32((__PAIR64__(v40, v84) >> 2) >> 21, 0x10uLL);
      *(v42 + 56) = (v43 >> 7) * 3.14159265 * 0.0000305175781;
      v44 = BlueFin::GlPeAlmanac::deltaI_semicircles_to_i0_rad(v42, vcvtd_n_f64_s32((__PAIR64__(v43, v12) >> 7) >> 21, 0xEuLL));
      *(v42 + 48) = (v14 >> 12) * 3.14159265 * 0.0000305175781;
      *(v42 + 24) = v44;
      *(v42 + 32) = (v15 << 20 >> 21) * 3.14159265 * 1.16415322e-10;
      *(v42 + 96) = 0;
      *(v42 + 92) = 1;
      *(this + 34650) = v41;
      *(this + 34655) = 1;
      *(this + 8666) = *(a2 + 13);
      goto LABEL_34;
    }
  }

  else
  {
    if (v16 != 9)
    {
      if (v16 == 10)
      {
        v25 = v82;
        v26 = (v82 >> 22) & 0xF;
        *(this + 17323) = (v82 >> 22) & 0xF;
        if (*(this + 34656) == 1 && *(this + 17322) == v26)
        {
          v27 = *(this + 4329) + 112 * *(this + 34651);
          v28 = v83;
          v29 = v84;
          v30 = ((__PAIR64__(v25, v83) >> 6) >> 21);
          *(v27 - 64) = (v25 >> 6) * 3.14159265 * 0.0000305175781;
          *(v27 - 80) = v30 * 3.14159265 * 1.16415322e-10;
          v31.f64[0] = (v28 >> 11) * 3.14159265;
          v31.f64[1] = ((__PAIR64__(v28, v29) >> 11) >> 16);
          *(v27 - 48) = vmulq_f64(v31, xmmword_298A3B2E0);
          *(v27 - 32) = ((32 * v29) >> 19) * 3.63797881e-12;
          *(v27 - 110) = (v29 >> 10) & 3;
        }

        *(this + 34657) = 1;
        *(this + 8668) = *(a2 + 13);
      }

      goto LABEL_34;
    }

    v45 = v82;
    v46 = (v82 >> 22) & 0xF;
    *(this + 17322) = (v82 >> 22) & 0xF;
    if (*(this + 34655) == 1 && *(this + 17321) == v46)
    {
      v47 = *(this + 4329) + 112 * *(this + 34650);
      *(v47 - 24) = (v45 >> 20) & 3;
      v48 = v83;
      v49 = v84;
      v50.f64[0] = ((__PAIR64__(v45, v83) >> 10) >> 16) * 3.14159265;
      v51 = (v83 >> 10);
      *(v47 - 96) = 600 * ((v45 >> 10) & 0x3FF);
      v50.f64[1] = v51;
      *(v47 - 48) = vmulq_f64(v50, xmmword_298A3B2E0);
      *(v47 - 32) = ((__PAIR64__(v48, v49) >> 10) >> 19) * 3.63797881e-12;
      *(v47 - 110) = (v49 >> 25) & 3;
    }

    v52 = v84;
    v53 = (v84 >> 19) & 0x3F;
    if ((v53 - 1) <= 0x23)
    {
      v54 = *(this + 4329) + 112 * (v53 - 1);
      *(v54 + 104) = 5;
      *(v54 + 108) = v53;
      *v54 = v53;
      *(v54 + 88) = (v45 >> 20) & 3;
      *(v54 + 16) = 600 * ((v45 >> 10) & 0x3FF);
      *(v54 + 40) = vcvtd_n_f64_s32((v52 << 13) >> 19, 9uLL);
      *(v54 + 8) = vcvtd_n_f64_u32((__PAIR64__(v52, v12) >> 6) >> 21, 0x10uLL);
      *(v54 + 56) = (v14 >> 11) * 3.14159265 * 0.0000305175781;
      *(v54 + 24) = BlueFin::GlPeAlmanac::deltaI_semicircles_to_i0_rad(v54, vcvtd_n_f64_s32(v15 << 21 >> 21, 0xEuLL));
      *(v54 + 96) = 0;
      *(v54 + 92) = 1;
      *(this + 34651) = v53;
      *(this + 34656) = 1;
      *(this + 8667) = *(a2 + 13);
      goto LABEL_34;
    }
  }
}

unsigned __int8 *BlueFin::GlPeAlmMgr::SerializeAll(BlueFin::GlPeAlmMgr *this, BlueFin::GlPeEngineCallBacks *a2)
{
  for (i = 0; i != 7; ++i)
  {
    v5 = *(this + 54) + 48 * i;
    v9 = *(v5 + 32);
    memcpy(v13, *(v5 + 24), 4 * v9);
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

      v7 = i;
      v8 = v11;
      BlueFin::GlPeAlmMgr::Serialize(this, &v7, a2);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeAlmanacData::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v15 = *MEMORY[0x29EDCA608];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 3;
  }

  if (v5 >= 4)
  {
    DeviceFaultNotify("glpe_almmgr.cpp", 2521, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 3");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_almmgr.cpp", 2521, "ucVersion >= 1 && ucVersion <= 3");
  }

  v6 = v3;
  v7 = v2;
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v11 = 40;
    v12 = v5;
    v13 = 0x1000000000000;
    v10 = &unk_2A1F092C0;
    v14 = v5;
    v8 = *(v2 + 112);
    if (v5 < 2)
    {
      if (v8)
      {
        return 0;
      }
    }

    else
    {
      BlueFin::GlSysLogEntry::PutU8(&v10, BlueFin::GlImplGnss::m_aucEnabledGnssTable[v8]);
    }

    BlueFin::GlSysLogEntry::PutS16(&v10, *(v7 + 116));
    BlueFin::GlSysLogEntry::PutS16(&v10, *(v7 + 10));
    BlueFin::GlSysLogEntry::PutD64(&v10, *(v7 + 16));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(v7 + 24));
    BlueFin::GlSysLogEntry::PutD64(&v10, *(v7 + 32));
    BlueFin::GlSysLogEntry::PutD64(&v10, *(v7 + 40));
    BlueFin::GlSysLogEntry::PutD64(&v10, *(v7 + 48));
    BlueFin::GlSysLogEntry::PutD64(&v10, *(v7 + 56));
    BlueFin::GlSysLogEntry::PutD64(&v10, *(v7 + 64));
    BlueFin::GlSysLogEntry::PutD64(&v10, *(v7 + 72));
    BlueFin::GlSysLogEntry::PutD64(&v10, *(v7 + 80));
    BlueFin::GlSysLogEntry::PutD64(&v10, *(v7 + 88));
    BlueFin::GlSysLogEntry::PutU16(&v10, *(v7 + 96));
    BlueFin::GlSysLogEntry::PutU32(&v10, *(v7 + 100));
    if (v5 == 3)
    {
      BlueFin::GlSysLogEntry::PutS8(&v10, *(v7 + 104));
    }

    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v10, v6, 4);
  }

  return 1;
}

uint64_t BlueFin::GlPeAlmMgr::UseHardCodedDataSBAS(BlueFin::GlPeAlmMgr *this)
{
  v2 = BlueFin::GlPeAlmMgr::m_iDefaultAlmSbasArrayDim;
  if (BlueFin::GlPeAlmMgr::m_iDefaultAlmSbasArrayDim >= 1)
  {
    v3 = BlueFin::GlPeAlmMgr::m_potDefaultAlmSbasPlainOldData;
    do
    {
      v4 = *v3;
      if (*v3)
      {
        v5 = v4 - 119;
        AlmReference = BlueFin::GlPeAlmMgr::getAlmReference(this, 1u, (v4 - 119));
        if (((*(*(*(this + 54) + 72) + 4 * (v5 >> 5)) >> (v5 & 0x1F)) & 1) == 0)
        {
          BlueFin::GlPeAlmanac::operator=(AlmReference, v3);
          *(v7 + 104) = 1;
          *(v7 + 108) = v5;
          *(v7 + 88) = *(v7 + 88);
          if ((v4 + 73) <= 0xC0u)
          {
            DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.h", 115, "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
          }

          v8 = *(this + 54);
          *(*(v8 + 72) + 4 * ((v4 - 119) >> 5)) |= 1 << ((v4 - 119) & 0x1F);
          BlueFin::GlSetBase::Remove(v8 + 48, (v4 - 119));
        }
      }

      v3 += 52;
      --v2;
    }

    while (v2);
  }

  *(this + 36712) = 0;
  return 1;
}

uint64_t BlueFin::GlPeAlmMgr::Age(BlueFin::GlPeAlmMgr *this, const BlueFin::GlPeAlmanac *a2)
{
  v2 = *(this + 56);
  if (!*(v2 + 644))
  {
    return 0x7FFFFFFFLL;
  }

  BlueFin::GlPeTimeManager::GetTime(v2, 1, v19);
  v20 = &off_2A1F0B5F0;
  v21 = 0;
  BlueFin::GlPeGnssTime::GetGps(v19, &v20);
  v4 = *(a2 + 44);
  v5 = *(a2 + 4);
  *v6.i64 = v5;
  v19[0].n128_u64[0] = &off_2A1F0B5F0;
  *v7.i64 = v5 - trunc(v5);
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = *vbslq_s8(vnegq_f64(v8), v7, v6).i64;
  if (v9 >= 1.0)
  {
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
  }

  v10 = v9 * 4294967300.0 + 0.5;
  v11 = v10;
  if (v10 >= 4294967300.0)
  {
    v11 = -1;
  }

  v19[0].n128_u32[2] = v11;
  v19[0].n128_u32[3] = v5 + 604800 * v4;
  v19[0].n128_u64[0] = &off_2A1F0B5F0;
  v23 = __PAIR64__(v19[0].n128_u32[3], v11);
  v12 = (v20[4])(&v20);
  v22[0] = v21;
  v22[1] = v12;
  BlueFin::GlTimePoint::resolveAmbiguity(&v23, v22, 0x93A8000u);
  v13 = (v20[3])(&v20, HIDWORD(v23));
  v14 = v21;
  v15 = HIDWORD(v21);
  v16 = v13 | v23;
  if (v13 | v23)
  {
    if (v21 < __PAIR64__(v13, v23))
    {
      v15 = (__PAIR64__(v13 - HIDWORD(v21), v23) - v21) >> 32;
      v14 = v23 - v21;
      v16 = 1;
    }

    else
    {
      v16 = 0;
      v15 = (v21 - __PAIR64__(v13, v23)) >> 32;
      v14 = v21 - v23;
    }
  }

  v18 = v14 * 2.32830644e-10 + v15;
  if ((v16 & ((v15 | v14) != 0)) != 0)
  {
    v18 = -v18;
  }

  return (v18 + 302400);
}

void BlueFin::GlPeAlmMgr::Invisible(uint64_t a1, int a2, int a3, double *a4, uint64_t a5, void *a6, int a7, int a8, __int128 a9, __int128 a10, __int128 a11, int a12, uint64_t a13, uint64_t a14, unint64_t a15, int __src, uint64_t a17, int a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int16 a23, int a24, char a25, int a26, int a27, char a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, __int128 a37, __int128 a38, __int128 a39, __int128 a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, __int128 a45, __int128 a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  a50 = *MEMORY[0x29EDCA608];
  bzero(*a5, ((4 * *(a5 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  if (!a2)
  {
    v90 = a4;
    vars0 = 0u;
    memset(v97, 0, sizeof(v97));
    BlueFin::GlPeTimeManager::GetTime(&a31, *(a1 + 448), a3, 1);
    v95 = &off_2A1F0B5F0;
    v96 = 0;
    BlueFin::GlPeGnssTime::GetGps(&a31, &v95);
    v56 = 0;
    a45 = 0u;
    a46 = 0u;
    a43 = 0u;
    a44 = 0u;
    a41 = 0u;
    a42 = 0u;
    a39 = 0u;
    a40 = 0u;
    a37 = 0u;
    a38 = 0u;
    a35 = 0u;
    a36 = 0u;
    a33 = 0u;
    a34 = 0u;
    a31 = 0u;
    a32 = 0u;
    do
    {
      v57 = &a31 + v56;
      *v57 = 0;
      *(v57 + 1) = 0;
      v56 += 8;
    }

    while (v56 != 256);
    v58 = 0;
    a29 = 0u;
    a30 = 0u;
    v59 = 1;
    for (i = 1; i <= 0x20u; v59 = ++i)
    {
      v60 = &a31 + 8 * v59;
      *(v60 - 8) = 0;
      v61 = v60 - 8;
      *(v61 + 1) = 0;
      a27 = 7;
      a28 = 0;
      __src = -65536;
      a17 = 0;
      a19 = 0u;
      a20 = 0u;
      a21 = 0u;
      a22 = 0u;
      a23 = 0;
      a18 = 0;
      a24 = -1;
      a25 = 0;
      if (BlueFin::GlPeAlmMgr::GetAlm(a1, 0, v59, &__src, 1, 1))
      {
        BlueFin::GlPeAlmanac::GetToa(&a14, &__src, &v95, v63, v64);
        v67 = v96;
        v68 = HIDWORD(v96);
        if (a15)
        {
          if (v96 < a15)
          {
            v68 = (__PAIR64__(HIDWORD(a15) - HIDWORD(v96), a15) - v96) >> 32;
            v67 = a15 - v96;
            v69 = 1;
          }

          else
          {
            v69 = 0;
            v68 = (v96 - a15) >> 32;
            v67 = v96 - a15;
          }
        }

        else
        {
          v69 = 0;
        }

        *v65.i64 = v67 * 2.32830644e-10 + v68;
        if ((v69 & ((v68 | v67) != 0)) != 0)
        {
          v70 = -*v65.i64;
        }

        else
        {
          v70 = v67 * 2.32830644e-10 + v68;
        }

        v93 = 4;
        *v66.i64 = -*v65.i64;
        *v72.i32 = BlueFin::GlPeAsstMgr::ComputeElevation(*(a1 + 440), &i, &v93, a3, 0, v65, v66);
        *v73.i32 = *v72.i32 + (truncf(*v72.i32 * 2.3283e-10) * -4295000000.0);
        v74.i64[0] = 0x8000000080000000;
        v74.i64[1] = 0x8000000080000000;
        v75 = vbslq_s8(v74, v73, v72);
        if (*v72.i32 > 4295000000.0)
        {
          v72.i32[0] = v75.i32[0];
        }

        if (*v72.i32 < -4295000000.0)
        {
          *v75.i32 = -*v72.i32;
          *v72.i32 = -(*v72.i32 - (truncf(*v72.i32 * -2.3283e-10) * -4295000000.0));
          *v72.i32 = -*vbslq_s8(v74, v72, v75).i32;
        }

        if (*v72.i32 < 0.0)
        {
          v76 = --*v72.i32;
        }

        else
        {
          LOBYTE(v76) = *v72.i32;
        }

        if ((v76 & 0x80) != 0 && BlueFin::GlPeAlmMgr::GetSatPos(v70, v71, &__src, &vars0, 0) && BlueFin::ecef2lla(&vars0, v97))
        {
          v91 = 0.0;
          v92 = 0.0;
          BlueFin::greatCircleDistAndCourse(v90, v97, &v92, &v91);
          v77 = i;
          *v61 = i;
          v78 = v92 * 1000.0 < 0.0;
          if (v92 * 1000.0 == (v92 * 1000.0))
          {
            v78 = 0;
          }

          *(v61 + 1) = (v92 * 1000.0) - v78;
          v79 = v91 / 0.785398163 < 0.0;
          if (v91 / 0.785398163 == (v91 / 0.785398163))
          {
            v79 = 0;
          }

          v80 = (v91 / 0.785398163) - v79;
          if (v80 >= 7)
          {
            LOBYTE(v80) = 7;
          }

          *(&a29 + v77 - 1) = v80;
          ++v58;
        }
      }
    }

    BlueFin::GlStdLib::QsortImpl(&a31, 0x20, 8u, AlmMgr_SortSvIds, &__src, v62);
    a14 = 0;
    if (v58)
    {
      v81 = 0;
      v82 = 1;
      do
      {
        v83 = *a5;
        v84 = &a31 + 1;
        v85 = 32;
        do
        {
          v86 = *(v84 - 4);
          if ((v86 - 1) <= 0xBB)
          {
            if (*v84)
            {
              v87 = v83[v86 >> 5];
              if (((v87 >> (v86 & 0x1F)) & 1) == 0)
              {
                v88 = *(&a29 + v86 - 1);
                v89 = *(&a14 + v88);
                if (v89 < v82)
                {
                  v83[v86 >> 5] = v87 | (1 << (v86 & 0x1F));
                  *(&a14 + v88) = v89 + 1;
                  *(&__src + v81++) = v86;
                  if (v58 <= v81)
                  {
                    break;
                  }
                }
              }
            }
          }

          v84 += 2;
          --v85;
        }

        while (v85);
        if (v58 <= v81)
        {
          break;
        }

        ++v82;
      }

      while (v82 <= v58);
      if (v58 != v81)
      {
        DeviceFaultNotify("glpe_almmgr.cpp", 3925, "Invisible", "ucInvisibleSvIdCount == ucSatsAdded");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_almmgr.cpp", 3925, "ucInvisibleSvIdCount == ucSatsAdded");
      }

      if (a6)
      {
        memcpy(a6, &__src, v58);
      }
    }
  }
}

unsigned int *BlueFin::GlPeAsstMgr::DumpAsstEph(unsigned int *result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    v3 = v2 <= 4 ? BlueFin::AidSourceName[v2] : "GL_AID_SOURCE_unknown";
    GlCustomLog(13, "<glAid> %s[%d]", v3, *(result + 4));
    if (!*(v1 + 4))
    {
      goto LABEL_23;
    }

    v4 = v1 + 2;
    v5 = &v1[4 * *(v1 + 4) + 2];
    v6 = 8;
    v7 = 1;
    do
    {
      for (v4 += 4; ; v4 += 4)
      {
        if (!v7)
        {
          GlCustomLog(13, "<glAid> +");
        }

        v8 = v4 - 4;
        v9 = *(v4 - 16);
        if (v6 != v9)
        {
          break;
        }

        result = GlCustomLog(13, " %d", *(v4 - 15));
        if (v7 <= 14)
        {
          ++v7;
          goto LABEL_21;
        }

        result = GlCustomLog(13, "\n");
        v7 = 0;
        if ((v8 + 4) >= v5)
        {
          return result;
        }
      }

      if (v7 <= 7)
      {
        v10 = " ";
      }

      else
      {
        v10 = "\n<glAid> +";
      }

      v11 = "GL_GNSS_unknown";
      if (v9 <= 7)
      {
        v11 = BlueFin::IMPLGNSS2STR(*(v4 - 16));
      }

      GlCustomLog(13, "%s%s", v10, v11);
      result = GlCustomLog(13, " %d", *(v4 - 15));
      v7 = 3;
      v6 = v9;
LABEL_21:
      ;
    }

    while (v4 < v5);
    if (v7)
    {
LABEL_23:

      return GlCustomLog(13, "\n");
    }
  }

  return result;
}

uint64_t BlueFin::GlPeAsstMgr::DumpAidRequest(const char *a1, const char *a2, int *a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v16 = a3 + 38;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = *a3;
  v5 = 77;
  if ((*a3 & 0x10) == 0)
  {
    v5 = 109;
  }

  v14 = v5;
  v6 = 84;
  if ((v4 & 8) == 0)
  {
    v6 = 116;
  }

  v7 = 78;
  if ((v4 & 4) == 0)
  {
    v7 = 110;
  }

  v13 = v6;
  v8 = 80;
  if ((v4 & 2) == 0)
  {
    v8 = 112;
  }

  v9 = 65;
  if ((*a3 & 1) == 0)
  {
    v9 = 97;
  }

  GlCustomLog(13, "<glAid> REQUEST(%s,%s) {%c%c%c%c%c}\n", a1, a2, v9, v8, v7, v13, v14);
  v10 = BlueFin::GnssConstellationMaskPrinter::Print(&v16);
  GlCustomLog(13, "<glAid> need  %s\n", v10);
  GlCustomLog(13, "<glAid> OSC %d+/-%huppb\n", a3[54], *(a3 + 110));
  BlueFin::GlOrbitInfoValidityPrinter::FormatTime(v15, 0x40, a3[4], v11);
  GlCustomLog(13, "<glAid> LLA %.6f,%.6f,%.1f +/-%.1fm(H) %.1fm(V) %s\n", *(a3 + 3), *(a3 + 4), *(a3 + 5), *(a3 + 6), *(a3 + 7), v15);
  GlCustomLog(13, "<glAid> TIME %huw:%ums +/-%uus\n", *(a3 + 66), a3[34], a3[36]);
  BlueFin::GlPeAsstMgr::DumpAsstEph(a3 + 56);
  BlueFin::GlPeAsstMgr::DumpAsstEph(a3 + 1484);
  BlueFin::GlPeAsstMgr::DumpAsstEph(a3 + 2198);
  BlueFin::GlPeAsstMgr::DumpAsstEph(a3 + 770);
  return GlCustomLog(13, "</glAid>\n");
}

uint64_t BlueFin::GlPeAsstMgr::GetAsstStat(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a2;
  v131 = *MEMORY[0x29EDCA608];
  BlueFin::GlPeAsstMgr::InitAidRequest(a2, a3);
  if (!*(*a1 + 2576))
  {
    v76 = *v3 | 0xF;
    *v3 = v76;
    return GlCustomLog(14, "<glAid> REQUEST no time 0x%x\n", v76);
  }

  GlCustomLog(13, "<glAid> SRC  GNSS   ID      Age  Expires  [Calib]\n");
  HIDWORD(v95) = a1[25];
  v5 = *(*a1 + 2568);
  v6 = v5;
  if (v5 <= 0xFF9222FE)
  {
    v6 = v5;
  }

  BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(*a1, 0, 0, v3 + 132, v6);
  v17 = *(a1 + 8900);
  v18 = *(v17 + 2) * 0.000000001;
  v19 = *(v17 + 10) * 0.000000001;
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  *(v3 + 216) = (v18 * 1000000000.0);
  *v11.i64 = v19 * 1000000000.0;
  v12.i64[0] = 0xC1F0000000000000;
  *v13.i64 = v19 * 1000000000.0 + trunc(v19 * 1000000000.0 * 2.32830644e-10) * -4294967300.0;
  v20.f64[0] = NAN;
  v20.f64[1] = NAN;
  v21 = vnegq_f64(v20);
  v13.i64[0] = vbslq_s8(v21, v13, v11).u64[0];
  v22 = 4294967300.0;
  if (v19 * 1000000000.0 > 4294967300.0)
  {
    v11.i64[0] = v13.i64[0];
  }

  if (*v11.i64 < -4294967300.0)
  {
    *v12.i64 = -*v11.i64;
    *v13.i64 = trunc(*v11.i64 * -2.32830644e-10);
    v22 = -4294967300.0;
    *v11.i64 = -(*v11.i64 - *v13.i64 * -4294967300.0);
    *v11.i64 = -*vbslq_s8(v21, v11, v12).i64;
  }

  if (*v11.i64 < 0.0)
  {
    v23 = --*v11.i64;
  }

  else
  {
    LOWORD(v23) = *v11.i64;
  }

  *(v3 + 220) = v23;
  v24 = *(a1 + 2);
  v110 = a1;
  v111 = v3;
  if (*(v24 + 9191) + 1 == *(v24 + 9190))
  {
    if (*(v24 + 19352) <= 1)
    {
      *(v24 + 19352) = 2;
    }

    v25 = *(*v24 + 2568);
    v117[8] = 8;
    memset(&v117[12], 0, 32);
    BlueFin::GlPeRangeAidGen::update(v24, v25, v117, 0, v7, v8, v9, v10, 0.0, -*v11.i64, *v12.i64, *v13.i64, v22, v14, v15, v16, *v85, v85[4], v86, SWORD2(v86), SBYTE6(v86), SHIBYTE(v86), v87, v88, v89, v90, v91, v93, v95, v96, v98, v100, v102, v104, v105, v106, v108, a1, v3, v112.n128_i64[0], v112.n128_i64[1], v113, v114, v115, v116, &v117[12], *&v117[8], 0, *&v117[24], 0, *&v117[40], *&v117[48], v118, *(&v118 + 1), v119, *(&v119 + 1), v120, SDWORD2(v120), SBYTE12(v120), v121, SBYTE4(v121), *(&v121 + 1), v122);
    a1 = v110;
    v3 = v111;
  }

  v26 = 0;
  v92 = a1 + 14;
  v94 = v3 + 232;
  v107 = v3 + 68;
  v109 = (v3 + 152);
  v99 = 0;
  v101 = v3 + 3088;
  v27.f64[0] = NAN;
  v27.f64[1] = NAN;
  v103 = vnegq_f64(v27);
  do
  {
    Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr(a1 + 48, v26);
    if (Mgr)
    {
      v29 = Mgr;
      v30 = Mgr[3];
      if (v30 > 6)
      {
        v31 = 0;
      }

      else
      {
        v31 = 0xFFFFFFFFFFFFFFFFLL >> qword_298A3B490[v30];
      }

      v32 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[v30];
      *&v109[2 * v32] = v31;
      v33 = *(v111 + 228);
      v130[v26] = 0;
      v129[v26] = 0;
      Time = BlueFin::GlPeTimeManager::GetTime(*a1, 1, &v112);
      (*(*v29 + 304))(&v124, v29, Time);
      v35 = (v94 + 16 * v33);
      v117[0] = v125;
      memcpy(&v117[8], v124, 4 * v125);
      *&v117[2] = 0;
      v117[1] = 0;
      *&v117[4] = *&v117[8];
      BlueFin::GlSetIterator::operator++(v117);
      v97 = v35;
      while (v117[1] != v117[0])
      {
        LOBYTE(v128) = v117[2];
        v36 = (*(*v29 + 112))(v29, &v128, 1);
        v37 = v36;
        if (v36)
        {
          v38 = (*(*v36 + 152))(v36);
          if ((v38 - 1) <= 1)
          {
            *v35 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[v29[3]];
            v39 = v128;
            v35[1] = v128;
            if ((v39 - 1) >= 0x3F)
            {
              DeviceFaultNotify("glpe_asstmgr.cpp", 590, "GetEph", "ucGnssIdIndex < _DIM(rtAidRequest.ucIODE)");
              __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_asstmgr.cpp", 590, "ucGnssIdIndex < _DIM(rtAidRequest.ucIODE)");
            }

            v40 = (v39 - 1);
            *(v107 + v40) = (*(*v37 + 160))(v37);
            v41 = (*(*v37 + 248))(v37, &v112);
            if (v41)
            {
              *(v35 + 1) = v41;
              *(v35 + 2) = (*(*v37 + 88))(v37) - v41;
              if (*(v35 + 1) >= 0x3Du)
              {
                *&v109[2 * v32] &= ~(1 << v40);
              }

              v124 = v35;
              BlueFin::GlOrbitInfoValidityPrinter::Print(&v124, "BE", v42, v43);
              if (v38 == 2)
              {
                ++v129[v26];
              }

              v35 += 16;
              v44 = ++*(v111 + 228);
              if (v44 > 0xB1)
              {
                break;
              }
            }

            BlueFin::GlPeEphemeris::GetEphTime(&v124, v37, &v112);
            v126 = &off_2A1F0B5F0;
            v127 = 0;
            Gps = BlueFin::GlPeGnssTime::GetGps(&v124, &v126);
            v46 = (v126[4])(&v126, Gps);
            v49 = (v126[4])(&v126);
            LODWORD(v48) = v127;
            *v49.i64 = v48 * 2.32830644e-10 + (v47 % 0x93A80);
            *v50.i64 = *v49.i64 + trunc(*v49.i64 * 2.32830644e-10) * -4294967300.0;
            v51 = vbslq_s8(v103, v50, v49);
            if (*v49.i64 > 4294967300.0)
            {
              v49.i64[0] = v51.i64[0];
            }

            if (*v49.i64 < -4294967300.0)
            {
              *v51.i64 = -*v49.i64;
              *v49.i64 = -(*v49.i64 - trunc(*v49.i64 * -2.32830644e-10) * -4294967300.0);
              *v49.i64 = -*vbslq_s8(v103, v49, v51).i64;
            }

            v52 = v46 / 0x93A80;
            if (*v49.i64 < 0.0)
            {
              v53 = --*v49.i64;
            }

            else
            {
              v53 = *v49.i64;
            }

            v54 = (v53 + 1800) / 0xE10uLL;
            v55 = *(v111 + 64);
            if (v55 < v52 || v55 == v52 && *(v111 + 66) < v54)
            {
              *(v111 + 64) = v52;
              *(v111 + 66) = v54;
            }
          }
        }

        BlueFin::GlSetIterator::operator++(v117);
      }

      v56 = (v35 - v97) >> 4;
      v130[v26] = v56;
      v57 = *(v111 + 3084);
      if (v57 != 178 && v26 < 7)
      {
        v58 = qword_298A3B4C8[v26];
        v59 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[v26];
        v60 = 0;
        v61 = 1;
        v128 = 4;
        while (2)
        {
          v112.n128_u32[0] = v26;
          v112.n128_u8[4] = v61;
          LODWORD(v121) = 7;
          BYTE4(v121) = 0;
          *v117 = -65536;
          *&v117[8] = 0;
          memset(&v117[24], 0, 32);
          v118 = 0u;
          v119 = 0u;
          LOWORD(v120) = 0;
          *&v117[16] = 0;
          DWORD1(v120) = -1;
          BYTE8(v120) = 0;
          if (!BlueFin::GlPeAlmMgr::GetAlm((v110 + 8528), v26, v61, v117, 1, 0))
          {
            goto LABEL_62;
          }

          v64 = v101 + 16 * v57;
          *v64 = v59;
          *(v64 + 1) = v61;
          *(v64 + 12) = 0x7FFFFFFF;
          if (v26 == 1)
          {
            *(v64 + 8) = 604800;
            v65 = 15778463;
            goto LABEL_51;
          }

          v66 = BlueFin::GlPeAlmMgr::Age((v110 + 8528), v117);
          *(v64 + 8) = v66;
          v65 = 15778463 - v66;
          if (v66 < 15778463)
          {
LABEL_51:
            *(v64 + 4) = v65;
          }

          v124 = (v101 + 16 * v57);
          BlueFin::GlOrbitInfoValidityPrinter::Print(&v124, "ALM", v62, v63);
          if ((*&v109[2 * v59] & (1 << v60)) != 0 && HIDWORD(v95) != -1 && *(v64 + 8) != 0x7FFFFFFF)
          {
            LODWORD(v126) = -1028390912;
            v67 = BlueFin::GlPeAsstMgr::computeAzElCommon(v110, &v112, -7200001, 0, &v128, 0, &v126);
            v68 = *&v126 >= 0.0 ? v67 : 0;
            if ((v68 & 1) == 0)
            {
              *&v109[2 * v59] &= ~(1 << v60);
            }
          }

          LOBYTE(v57) = v57 + 1;
          if (v57 >= 0xB3u)
          {
            DeviceFaultNotify("glpe_asstmgr.cpp", 807, "GetAlm", "ucCurIdx <= _DIM(rtAlmOrbitInfo.otEphInfo)");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_asstmgr.cpp", 807, "ucCurIdx <= _DIM(rtAlmOrbitInfo.otEphInfo)");
          }

          if (v57 == 178)
          {
            break;
          }

LABEL_62:
          ++v61;
          ++v60;
          if (v58 == v61)
          {
            break;
          }

          continue;
        }
      }

      v99 += v56;
      a1 = v110;
    }

    ++v26;
  }

  while (v26 != 7);
  LODWORD(v124) = 0;
  if (a1[25] == -1)
  {
    v74 = 0;
    v72 = 0;
    v75 = 0;
    v78 = -1;
    v79 = 1;
    v73 = v111;
    goto LABEL_84;
  }

  memset(v117, 0, 40);
  *&v117[40] = -1;
  v117[48] = 0;
  LODWORD(v118) = 0;
  *(&v118 + 1) = 0xC15B773FC0000000;
  *&v119 = &off_2A1F0B5F0;
  *(&v119 + 1) = 0;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0;
  if (BlueFin::GlPeAsstPosMgr::GetLastAgnss(v92, v117, &v124))
  {
    AgeS = v124;
    v72 = v124 != -1;
    a1 = v110;
    v73 = v111;
    v74 = 0;
    if (v123)
    {
      v75 = 1;
    }

    else
    {
      v75 = *(*(v110 + 1) + 57376);
    }
  }

  else
  {
    a1 = v110;
    if (v117 != v92)
    {
      v69 = *(v110 + 14);
      v70 = *(v110 + 18);
      *v117 = v69;
      *&v117[16] = v70;
      v69.i64[0] = *(v110 + 11);
      *&v117[32] = v69.i64[0];
    }

    v78 = v110[25];
    AgeS = -1;
    LODWORD(v124) = -1;
    if (v78 == -1)
    {
      v72 = 0;
    }

    else
    {
      AgeS = BlueFin::stTimeOfAsstPos::GetAgeS((v110 + 28), *(v110 + 44), v69, v70);
      LODWORD(v124) = AgeS;
      v72 = AgeS != -1;
      a1 = v110;
    }

    v73 = v111;
    if (*(a1 + 104) != 1)
    {
      v74 = 0;
      v75 = 0;
      goto LABEL_83;
    }

    if (v78 != 2 || !v72)
    {
      v75 = 0;
      v74 = 1;
      goto LABEL_83;
    }

    v75 = 0;
    v74 = AgeS > 9;
    v72 = 1;
  }

  v78 = 2;
LABEL_83:
  v80 = *&v117[16];
  *(v73 + 24) = *v117;
  *(v73 + 40) = v80;
  *(v73 + 56) = *&v117[32];
  *(v73 + 16) = AgeS;
  v79 = AgeS < 0xE11;
LABEL_84:
  if (v130[0] < 6 || v130[2] <= 5 && v129[0] <= 5)
  {
    *v73 |= 4u;
  }

  if (v74 || (v78 - 1) > 1 || !((v78 != 2) | v75 & 1) || !v79 || !v72)
  {
    *v73 |= 2u;
  }

  BlueFin::GlSetBase::GlSetBase(&v112, &v112.n128_u32[3], 8u, (*(a1 + 2) + 19304));
  *v117 = &v117[12];
  v117[8] = 8;
  *&v117[12] = BlueFin::GlSvIdSet::csm_aulGlSvIdSet[0];
  *&v117[28] = *algn_298A323DC;
  BlueFin::GlSetBase::operator&=(&v112, v117);
  v81 = 0;
  v82 = (v112.n128_u64[0] + 4 * v112.n128_u8[8] - 4);
  do
  {
    if (*v82)
    {
      v83 = *v82 - (((*v82 >> 1) & 0x5B6DB6DB) + ((*v82 >> 2) & 0x9249249));
      v81 = ((v83 + (v83 >> 3)) & 0xC71C71C7) + v81 - 63 * (((v83 + (v83 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v82;
  }

  while (v82 >= v112.n128_u64[0]);
  v84 = *v111;
  if (v81 <= 4u && (v84 & 0xE) != 0 || (*(v110 + 120017) & 1) == 0)
  {
    v84 |= 1u;
    *v111 = v84;
  }

  return GlCustomLog(15, "<glAid> REQUEST NAV 0x%x  %d  0x%x AcqAsst(%u) Loc(%d, %u)\n", v84, v99, ~*v109, v81, v78, v124);
}

void BlueFin::GlPeAsstMgr::InitAidRequest(_DWORD *a1, int a2)
{
  v4 = a1 + 2913;
  v5 = a1 + 1485;
  bzero(a1, 0x38A8uLL);
  if (a2)
  {
    if ((a2 & 7) != 0)
    {
      *a1 = 2 * (a2 & 7);
    }

    GlCustomLog(14, "<glAid> WarmStart(need 0x%x) ulAidMask 0x%x\n", a2, 2 * (a2 & 7));
  }

  *(a1 + 67) = 2;
  *(a1 + 3) = vdupq_n_s64(0x4197D783FF99999AuLL);
  a1[4] = 0x7FFFFFFF;
  *(a1 + 38) = 0u;
  *(a1 + 42) = 0u;
  *(a1 + 46) = 0u;
  *(a1 + 50) = 0u;
  a1[56] = 0;
  *(a1 + 228) = 0;
  v6 = a1 + 58;
  v7 = 178;
  do
  {
    *v6 = 8;
    *(v6 + 1) = 0x8000000080000000;
    v6[3] = 0x7FFFFFFF;
    v6 += 4;
    --v7;
  }

  while (v7);
  a1[770] = 1;
  *(a1 + 3084) = 0;
  v8 = a1 + 772;
  v9 = 178;
  do
  {
    *v8 = 8;
    *(v8 + 1) = 0x8000000080000000;
    v8[3] = 0x7FFFFFFF;
    v8 += 4;
    --v9;
  }

  while (v9);
  a1[1484] = 2;
  *v5 = 0;
  v10 = v5 + 4;
  v11 = 178;
  do
  {
    *v10 = 8;
    *(v10 + 4) = 0x8000000080000000;
    *(v10 + 3) = 0x7FFFFFFF;
    v10 += 16;
    --v11;
  }

  while (v11);
  a1[2198] = 3;
  v5[2856] = 0;
  v12 = v5 + 2860;
  v13 = 178;
  do
  {
    *v12 = 8;
    *(v12 + 4) = 0x8000000080000000;
    *(v12 + 3) = 0x7FFFFFFF;
    v12 += 16;
    --v13;
  }

  while (v13);
  a1[2912] = 4;
  *v4 = 0;
  v14 = v4 + 4;
  v15 = 178;
  do
  {
    *v14 = 8;
    *(v14 + 4) = 0x8000000080000000;
    *(v14 + 3) = 0x7FFFFFFF;
    v14 += 16;
    --v15;
  }

  while (v15);
}

void BlueFin::GlPeAsstMgr::SetCoarseEstimatedPosition(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = a1 + 118784;
  *(a1 + 119960) = *a2;
  *(a1 + 119976) = *(a2 + 16);
  BlueFin::lla2ecef(a2, &v5);
  *(v4 + 1200) = v5;
  *(v4 + 1216) = v6;
  *(v4 + 1224) = a3;
  *(v4 + 1168) = a3 < 0x615299;
}

void *BlueFin::GlPeAsstMgr::SerializeAllEph(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; i != 7; ++i)
  {
    result = BlueFin::GlPeGnssEphemerisMgr::GetMgr((a1 + 384), i);
    if (result)
    {
      result = (*(*result + 208))(result, a2, a3, a4);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeAsstMgr::ClearSuspectedBadDecode(BlueFin::GlPeAsstMgr *this)
{
  v2 = 0;
  for (i = 0; i != 7; ++i)
  {
    v4 = v2;
    Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr(this + 48, i);
    v2 = (Mgr != 0) | v4;
    if (Mgr && (v4 & 1) == 0)
    {
      v2 = (*(*Mgr + 280))(Mgr);
    }
  }

  return v2 & 1;
}

void *BlueFin::GlPeAsstMgr::MarkSuspectedBadDecode(uint64_t a1, uint64_t a2)
{
  result = BlueFin::GlPeGnssEphemerisMgr::GetMgr((a1 + 384), *a2);
  if (result)
  {
    v4 = *(a2 + 4);
    return (*(*result + 288))(result, &v4, 0);
  }

  return result;
}

uint64_t BlueFin::GlPeAsstMgr::MarkUnverified(uint64_t a1, unsigned __int8 *a2, int8x16_t a3, int8x16_t a4)
{
  v8 = 7;
  v9 = 0;
  result = BlueFin::GlPeSvIdConverter::SvId2Gnss((a1 + 119744), a2, &v8, a3, a4);
  v6 = v9;
  if (v9 - 1 <= 0x3E)
  {
    result = BlueFin::GlPeGnssEphemerisMgr::GetMgr((a1 + 384), v8);
    if (result)
    {
      v7 = v6;
      return (*(*result + 296))(result, &v7);
    }
  }

  return result;
}

uint64_t *BlueFin::GlPeAsstMgr::GetUnhealthy@<X0>(uint64_t *__return_ptr a1@<X8>, BlueFin::GlPeAsstMgr *this@<X0>)
{
  v4 = 0;
  a1[21] = a1;
  do
  {
    v5 = a1[21] + v4;
    *(v5 + 12) = 0;
    *v5 = v5 + 12;
    *(v5 + 8) = 2;
    v4 += 24;
  }

  while (v4 != 168);
  for (i = 0; i != 7; ++i)
  {
    result = BlueFin::GlPeGnssEphemerisMgr::GetMgr(this + 48, i);
    if (result)
    {
      v8 = (*(*result + 144))(result);
      v9 = BlueFin::GlGnssSet::operator()(a1, i);
      result = BlueFin::GlSetBase::operator|=(v9, v8);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeAsstMgr::SvId2Gnss(BlueFin::GlPeGloFcnOsnMgr **this, const BlueFin::GlSvIdSet *a2, BlueFin::GlGnssSet *a3)
{
  v6 = (*(a3 + 21) + 8);
  v7 = 7;
  do
  {
    v8 = *(v6 - 1);
    v9 = *v6;
    v6 += 24;
    bzero(v8, ((4 * v9 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    --v7;
  }

  while (v7);
  v18 = *(a2 + 8);
  memcpy(v22, *a2, 4 * v18);
  v20 = 0;
  v19 = 0;
  v21 = v22[0];
  BlueFin::GlSetIterator::operator++(&v18);
  if (v19 == v18)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v13 = 1;
    do
    {
      v15 = v20;
      v23 = 7;
      v24 = 0;
      BlueFin::GlPeSvIdConverter::SvId2Gnss(this + 14968, &v15, &v23, v10, v11);
      v12 = 0;
      v16 = v23;
      v17 = v24;
      if (v24 - 1 <= 0x3E)
      {
        BlueFin::GlGnssSet::Add(a3, &v16);
        v12 = v13;
      }

      BlueFin::GlSetIterator::operator++(&v18);
      v13 = v12;
    }

    while (v19 != v18);
  }

  return v12 & 1;
}

uint64_t BlueFin::GlPeAsstPosData::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v24 = *MEMORY[0x29EDCA608];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 8;
  }

  if (v5 >= 9)
  {
    DeviceFaultNotify("glpe_asstposmgr.cpp", 133, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 8");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_asstposmgr.cpp", 133, "ucVersion >= 1 && ucVersion <= 8");
  }

  v6 = v3;
  v7 = v2;
  v20 = 45;
  v21 = v5;
  v22 = 0x1000000000000;
  v19 = &unk_2A1F092C0;
  v23 = v5;
  if (v5 >= 7)
  {
    BlueFin::GlSysLogEntry::PutU32(&v19, 0);
  }

  BlueFin::GlSysLogEntry::PutD64(&v19, *(v7 + 8));
  BlueFin::GlSysLogEntry::PutD64(&v19, *(v7 + 16));
  BlueFin::GlSysLogEntry::PutD64(&v19, *(v7 + 24));
  BlueFin::GlSysLogEntry::PutD64(&v19, *(v7 + 32));
  BlueFin::GlSysLogEntry::PutD64(&v19, *(v7 + 40));
  v8 = (*(*(v7 + 48) + 32))(v7 + 48);
  BlueFin::GlSysLogEntry::PutS32(&v19, v8 / 0x93A80);
  v12 = (*(*(v7 + 48) + 32))(v7 + 48);
  LODWORD(v11) = *(v7 + 56);
  *v12.i64 = (v11 * 2.32830644e-10 + (v10 % 0x93A80)) * 1000.0;
  *v13.i64 = *v12.i64 + trunc(*v12.i64 * 2.32830644e-10) * -4294967300.0;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = vnegq_f64(v14);
  *&v16 = vbslq_s8(v15, v13, v12).u64[0];
  if (*v12.i64 > 4294967300.0)
  {
    *v12.i64 = v16;
  }

  if (*v12.i64 < -4294967300.0)
  {
    *v9.i64 = -*v12.i64;
    *v12.i64 = -(*v12.i64 - trunc(*v12.i64 * -2.32830644e-10) * -4294967300.0);
    *v12.i64 = -*vbslq_s8(v15, v12, v9).i64;
  }

  if (*v12.i64 < 0.0)
  {
    v17 = --*v12.i64;
  }

  else
  {
    v17 = *v12.i64;
  }

  BlueFin::GlSysLogEntry::PutU32(&v19, v17);
  BlueFin::GlSysLogEntry::PutU32(&v19, 0);
  if (v21 >= 3u)
  {
    BlueFin::GlSysLogEntry::PutU16(&v19, *(v7 + 64));
    if (v21 >= 4u)
    {
      BlueFin::GlSysLogEntry::PutU16(&v19, *(v7 + 68));
      if (v21 >= 8u)
      {
        BlueFin::GlSysLogEntry::PutU16(&v19, *(v7 + 72));
      }
    }
  }

  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v19, v6, 4);
  return 1;
}

uint64_t BlueFin::stTimeOfAsstPos::operator+=(uint64_t result, double a2)
{
  if (*result == 1)
  {
    v2 = fabs(a2);
    v3 = v2 - trunc(v2);
    v4 = v3 * 4294967300.0 + 0.5;
    v5 = v4;
    if (v4 >= 4294967300.0)
    {
      v5 = -1;
    }

    if (v3 < 0.0 || v3 >= 1.0)
    {
      v15 = "dFracSec >= 0.0 && dFracSec < 1.0";
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      v16 = "glpe_timepoint.h";
      v17 = 173;
      goto LABEL_26;
    }

    v7 = v2;
    v8 = *(result + 24);
    v9 = *(result + 28);
    if (a2 < 0.0)
    {
      if (__PAIR64__(v9, v8) < __PAIR64__(v7, v5))
      {
        if (v7 - v9 != v8 > v5 || v5 != v8)
        {
          v15 = "!tDelta.isNegative()";
          DeviceFaultNotify("glpe_datetime.h", 425, "operator+=", "!tDelta.isNegative()");
          v16 = "glpe_datetime.h";
          v17 = 425;
LABEL_26:
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v16, v17, v15);
        }

        v11 = 0;
        LODWORD(v10) = 0;
      }

      else
      {
        v12 = v8 >= v5;
        LODWORD(v10) = v8 - v5;
        v13 = !v12;
        v11 = v9 - v7 - v13;
      }
    }

    else
    {
      v10 = v8 + v5;
      v11 = v9 + v7 + HIDWORD(v10);
    }

    *(result + 24) = v10;
    *(result + 28) = v11;
    return result;
  }

  if (*result == 2)
  {
    *(result + 8) = *(result + 8) + a2 * 1000.0;
  }

  return result;
}

uint64_t BlueFin::GlPeAsstPosMgr::SetAsstPos(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, unsigned int *a6, int a7)
{
  v37 = &off_2A1F0B5F0;
  v38 = 0;
  if (a5)
  {
    v38 = *(a5 + 8);
  }

  if (a6)
  {
    v12 = *a6;
  }

  else
  {
    v12 = 0;
  }

  BlueFin::stTimeOfAsstPos::stTimeOfAsstPos(v36, *(a1 + 296), &v37, v12);
  if (*(a1 + 314) != 1 || a3 != 2 || (*(a1 + 313) & 1) != 0)
  {
    return BlueFin::GlPeAsstPosMgr::processAssistance(a1, a2, a4, a3, v36, 0, a7, v13, v14);
  }

  GlCustomLog(14, "GlPeAsstPosMgr:: Calling addRandomPosError from SetAsstPos\n");
  v26 = &unk_2A1F0E928;
  v32 = 0;
  v30 = 0;
  v31 = &off_2A1F0B5F0;
  v28 = *(a2 + 16);
  v27 = *a2;
  v29 = *(a2 + 24);
  v33 = a4;
  v34 = 2;
  v35 = a7;
  v16 = &unk_2A1F0E928;
  v17 = v27;
  v18 = v28;
  v19 = v29;
  v22 = 0;
  v20 = 0;
  v21 = &off_2A1F0B5F0;
  v23 = a4;
  v24 = 2;
  v25 = a7;
  return BlueFin::GlPeAsstPosMgr::addRandomPosError(a1, &v16, v12, 0);
}

uint64_t BlueFin::GlPeAsstPosMgr::addRandomPosError(uint64_t a1, uint64_t a2, unsigned int a3, char a4)
{
  v7 = *(a1 + 304);
  v8 = *(v7 + 816);
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = *(v7 + 800) + 1;
  }

  v10 = BlueFin::stTimeOfAsstPos::stTimeOfAsstPos(v31, *(a1 + 296), (a2 + 48), v9);
  if (v9)
  {
    BlueFin::stTimeOfAsstPos::operator+=(v10, -v9);
    GlCustomLog(14, "GlPeAsstPosMgr::processAssistance - forced age %u seconds\n", v9);
  }

  v11 = fmod((*(a2 + 8) + *(a2 + 16) + *(a2 + 24)) * 1000000010.0, 32749.0);
  srand(v11);
  v12 = *(a2 + 24);
  *v30 = *(a2 + 8);
  *&v30[16] = v12;
  if (!v8)
  {
    v8 = (rand() * 3.0 * 4.65661287e-10) + 1;
  }

  switch(v8)
  {
    case 3:
      *(a2 + 8) = rand() * 180.0 / 2147483650.0 + -90.0;
      *(a2 + 16) = rand() * 360.0 / 2147483650.0 + -180.0;
      goto LABEL_19;
    case 2:
      v13 = ((rand() * 650000.0 * 4.65661287e-10) + 1) + 150000.0;
      break;
    case 1:
      v13 = ((rand() * 150000.0 * 4.65661287e-10) + 1);
      break;
    default:
LABEL_19:
      v18 = *(a2 + 24);
      v28 = *(a2 + 8);
      v29 = v18;
      BlueFin::lla2ned(v30, &v28, 0, &v26);
      v17 = vmulq_f64(v27, v27);
      v19 = v26 * v26 + *v17.i64;
      v17.i64[0] = v17.i64[1];
      v16 = v19 + *&v17.i64[1];
      v13 = sqrt(v16);
      goto LABEL_20;
  }

  if (v13 <= 0.0)
  {
    goto LABEL_19;
  }

  v14 = (v13 + v13) * rand() / 2147483650.0 - v13;
  *&v28 = v14;
  if (rand())
  {
    v15 = 1;
  }

  else
  {
    v15 = -1;
  }

  *(&v28 + 1) = sqrt(v13 * v13 - v14 * v14) * v15;
  v29 = 0;
  BlueFin::ned2lla(v30, &v28, &v26);
  v16 = v26;
  *v30 = v26;
  v17 = v27;
  *&v30[8] = v27;
  *(a2 + 8) = v26;
  *(a2 + 16) = v17.i64[0];
LABEL_20:
  *(a1 + 313) = 1;
  BlueFin::GlPeAsstPosMgr::processAssistance(a1, (a2 + 8), *(a2 + 64), *(a2 + 68), v31, a4, *(a2 + 72), v16, v17);
  if (v13 >= 150000.0)
  {
    if (v13 >= 800000.0)
    {
      v20 = "Far";
    }

    else
    {
      v20 = "Med";
    }
  }

  else
  {
    v20 = "Near";
  }

  v21 = v13 / 1000.0;
  if (v21 <= 0.0)
  {
    if (v21 >= 0.0)
    {
      goto LABEL_36;
    }

    v22 = ceil(v21 + -0.5);
  }

  else
  {
    v22 = floor(v21 + 0.5);
  }

  if (v22 > 2000.0)
  {
    if (v22 / 1000.0 > 0.0)
    {
      v22 = floor(v22 / 1000.0 + 0.5) * 1000.0;
      goto LABEL_35;
    }

LABEL_36:
    GlCustomLog(14, "\t%s %dkm\n");
    goto LABEL_38;
  }

  if (v22 > 200.0)
  {
    if (v22 / 100.0 <= 0.0)
    {
      goto LABEL_36;
    }

    v22 = floor(v22 / 100.0 + 0.5) * 100.0;
  }

LABEL_35:
  if (v22 < 1000.0)
  {
    goto LABEL_36;
  }

  GlCustomLog(14, "\t%s %d,%03dkm\n");
LABEL_38:
  if (v21 > 0.0)
  {
    v23 = 0.5;
LABEL_43:
    v24 = (v21 + v23);
    return GlCustomLog(13, "PosError: %s %dkm\n", v20, v24);
  }

  if (v21 < 0.0)
  {
    v23 = -0.5;
    goto LABEL_43;
  }

  v24 = 0;
  return GlCustomLog(13, "PosError: %s %dkm\n", v20, v24);
}

BOOL BlueFin::GlPeAsstPosMgr::GetLastAgnss(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = *(a1 + 188);
  if (v3 != -1)
  {
    v6 = BlueFin::stProcessedAsstPos::operator=(a2, a1 + 144);
    if (a3)
    {
      *a3 = BlueFin::stTimeOfAsstPos::GetAgeS((a1 + 200), *(a1 + 296), v6, v7);
    }
  }

  return v3 != -1;
}

uint64_t BlueFin::GlPeAsstPosMgr::Serialize(BlueFin::GlPeAsstPosMgr *this, BlueFin::GlPeEngineCallBacks *a2, uint64_t a3)
{
  if (*(this + 11) == -1)
  {

    return GlCustomLog(14, "GlPeAsstPosMgr::Serialize  returning because asst pos is invalid\n", a3);
  }

  else
  {
    v24 = v3;
    v25 = v4;
    v5 = a3;
    v17 = &unk_2A1F0E928;
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
    v21 = &off_2A1F0B5F0;
    v22 = xmmword_298A3B550;
    v23 = 0;
    if (&v18 != this)
    {
      v8 = *(this + 1);
      v18 = *this;
      v19 = v8;
      v20 = *(this + 4);
    }

    BlueFin::stTimeOfAsstPos::GetTime(&v15, (this + 56), *(this + 37));
    *&v10 = v16;
    *(&v10 + 1) = *(this + 5);
    v22 = v10;
    if (v5)
    {
      BlueFin::GlPeAsstPosMgr::ApplyPrivacyMask(&v17, v9);
    }

    result = v17[3](&v17, a2, 0);
    if (*(this + 47) != -1 && *(this + 11) != 2)
    {
      if (&v18 != (this + 144))
      {
        v12 = *(this + 10);
        v18 = *(this + 9);
        v19 = v12;
        v20 = *(this + 22);
      }

      BlueFin::stTimeOfAsstPos::GetTime(&v15, (this + 200), *(this + 37));
      *&v14 = v16;
      *(&v14 + 1) = *(this + 23);
      v22 = v14;
      if (v5)
      {
        BlueFin::GlPeAsstPosMgr::ApplyPrivacyMask(&v17, v13);
      }

      return v17[3](&v17, a2, 0);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeAsstPosMgr::ApplyPrivacyMask(BlueFin::GlPeAsstPosMgr *this, BlueFin::GlPeAsstPosData *a2)
{
  v2 = vdupq_n_s64(0x3FB99999A0000000uLL);
  v3 = vmulq_f64(vrndmq_f64(vdivq_f64(*(this + 8), v2)), v2);
  *(this + 8) = v3;
  v2.f64[0] = floor(*(this + 3) / 500.0) * 500.0;
  *(this + 3) = *&v2.f64[0];
  v4 = vcvtq_f64_f32(vmaxnm_f32(vcvt_f32_f64(*(this + 2)), 0x43FA0000462DA506));
  *(this + 2) = v4;
  return GlCustomLog(14, "GlPeAsstPosMgr::ApplyPrivacyMask Mask applied [%lf %lf %lf] (%lf,%lf).\n", v3.f64[0], v3.f64[1], v2.f64[0], v4.f64[0], v4.f64[1]);
}

uint64_t BlueFin::GlPeBdsEphemeris::GetFctS(BlueFin::GlPeBdsEphemeris *this, const BlueFin::GlPeGnssTime *a2)
{
  if ((*(*this + 80))(this))
  {
    v4 = 604800 * (*(*this + 192))(this, 28);
    v5 = (*(*this + 192))(this, 18);
    return v4 + (*(*this + 232))(this, 18) * v5;
  }

  else
  {
    BlueFin::GlPeEphemeris::GetEphTime(v18, this, a2);
    v16 = &off_2A1F0E4D0;
    v17 = 0;
    Bds = BlueFin::GlPeGnssTime::GetBds(v18, &v16);
    v11 = (v16[4])(&v16, Bds);
    LODWORD(v10) = v17;
    *v11.i64 = v10 * 2.32830644e-10 + v9;
    *v12.i64 = *v11.i64 + trunc(*v11.i64 * 2.32830644e-10) * -4294967300.0;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v14 = vnegq_f64(v13);
    *&v15 = vbslq_s8(v14, v12, v11).u64[0];
    if (*v11.i64 > 4294967300.0)
    {
      *v11.i64 = v15;
    }

    if (*v11.i64 < -4294967300.0)
    {
      *v8.i64 = -*v11.i64;
      *v11.i64 = -(*v11.i64 - trunc(*v11.i64 * -2.32830644e-10) * -4294967300.0);
      *v11.i64 = -*vbslq_s8(v14, v11, v8).i64;
    }

    if (*v11.i64 < 0.0)
    {
      return --*v11.i64;
    }

    else
    {
      return *v11.i64;
    }
  }
}

BOOL BlueFin::GlPeBdsEphemeris::isSimulated(BlueFin::GlPeBdsEphemeris *this)
{
  if ((*(*this + 192))(this, 3))
  {
    return 0;
  }

  v3 = (*(*this + 208))(this, 11);
  v4 = (*(*this + 208))(this, 23);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = v5;
  }

  if (!(*(*this + 208))(this, 21))
  {
    ++v6;
  }

  if (!(*(*this + 208))(this, 19))
  {
    ++v6;
  }

  if (!(*(*this + 208))(this, 14))
  {
    ++v6;
  }

  if (!(*(*this + 208))(this, 16))
  {
    ++v6;
  }

  if (!(*(*this + 208))(this, 26))
  {
    ++v6;
  }

  if ((*(*this + 208))(this, 25))
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 + 1;
  }

  return v7 > 5u;
}

uint64_t BlueFin::GlPeBdsEphemeris::GetSatClkInfo(BlueFin::GlPeBdsEphemeris *this, const BlueFin::GlPeGnssTime *a2, double *a3, double *a4)
{
  v19[0] = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  BlueFin::GlPeBdsEphemeris::GetBdUncmprsdEph(this, v19);
  BlueFin::BdNavMsgMgr::UnpackEphPara(v19, v17);
  result = 0;
  if (!v17[0])
  {
    v14 = &off_2A1F0E4D0;
    v15 = 0;
    Bds = BlueFin::GlPeGnssTime::GetBds(a2, &v14);
    v9 = (v14[4])(&v14, Bds);
    LODWORD(v10) = v15;
    v16 = (v10 * 2.32830644e-10 + (v9 % 0x93A80)) * 1000.0;
    v11 = v16 / 1000.0 - (v18 | 0x408F400000000000uLL);
    v12 = v11 + 604800.0;
    if (v11 >= -302400.0)
    {
      v12 = v16 / 1000.0 - (v18 | 0x408F400000000000uLL);
    }

    if (v11 <= 302400.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11 + -604800.0;
    }

    if (fabs(v13) > 7200.0)
    {
      return 0;
    }

    else
    {
      return BlueFin::BdNavMsgMgr::svd_computeSvClock(v17, &v16, a3, a4);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeBdsEphemeris::GetApproximateElevation(BlueFin::GlPeEphemeris *a1, uint64_t a2, double *a3)
{
  v5 = (*(*a1 + 64))(a1, a2, 1);
  ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 22);
  v7 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 17);
  BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 22);
  v8 = v7 <= 6400.0;
  v9 = dbl_298A3B5A0[v7 <= 6400.0];
  v10 = dbl_298A3B5B0[v8];
  v11 = dbl_298A3B5C0[v8];
  v12 = v9 + BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 12);
  v13 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 13) + v12 * v5;
  v14 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 24);
  v15 = __sincos_stret(v13 + v14);
  v16 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 20);
  v17 = BlueFin::GlPeEphemeris::GetScaledFloatingField(a1, 18);
  v18 = __sincos_stret(v16 + (v5 + v17) * -0.0000729211515);
  v19 = __sincos_stret(ScaledFloatingField);
  v20 = ((a3[1] * (v19.__cosval * (v11 * v15.__sinval) * v18.__cosval + v11 * v15.__cosval * v18.__sinval) + (v11 * v15.__cosval * v18.__cosval - v19.__cosval * (v11 * v15.__sinval) * v18.__sinval) * *a3 + v19.__sinval * (v11 * v15.__sinval) * a3[2]) / v10 + -0.24) * 90.0;
  if (v20 <= 0.0)
  {
    if (v20 >= 0.0)
    {
      v22 = 0;
      goto LABEL_7;
    }

    v21 = -0.5;
  }

  else
  {
    v21 = 0.5;
  }

  v22 = (v20 + v21);
LABEL_7:
  if (v22 <= -90)
  {
    v22 = -90;
  }

  if (v22 >= 90)
  {
    return 90;
  }

  else
  {
    return v22;
  }
}

uint64_t BlueFin::GlBdEphListener::Update(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3 - 64 <= 0xFFFFFFC0)
  {
    v24 = "IS_GNSS_ID(ucGnssId) && IS_BEIDOU_PRN(BEIDOU_GNSSID_TO_PRN(ucGnssId))";
    DeviceFaultNotify("glpe_bdephmgr.cpp", 1390, "Update", "IS_GNSS_ID(ucGnssId) && IS_BEIDOU_PRN(BEIDOU_GNSSID_TO_PRN(ucGnssId))");
    v25 = 1390;
    goto LABEL_17;
  }

  v6 = *(a1 + 16);
  v32 = *(a1 + 8);
  v7 = (*(*v6 + 368))(v6, &v32);
  v8 = (*(*v7 + 184))(v7);
  v27 = 4673;
  v28 = v30;
  v29 = vdup_n_s32(0xFF9222FF);
  memset(v30, 0, sizeof(v30));
  v31 = 0;
  v26 = &unk_2A1F0E970;
  v33[0] = v30;
  v33[1] = 0;
  v34 = 0;
  v37 = 0;
  v36 = 0;
  v35 = vdup_n_s32(0x240u);
  v38 = 0;
  v9 = BlueFin::GlBitBuffer::PutU(v33, v3, 8u);
  v10 = BlueFin::GlBitBuffer::PutU(v9, 0, 6u);
  v11 = BlueFin::GlBitBuffer::PutU(v10, 1u, 1u);
  BlueFin::GlBitBuffer::PutU(v11, a2, 1u);
  for (i = 0; i != 68; i += 4)
  {
    v13 = BlueFin::GlBitBuffer::PutU(v33, *(a3 + i), 0x20u);
  }

  v14 = BlueFin::GlBitBuffer::PutU(v13, 0, 1u);
  v15 = BlueFin::GlBitBuffer::PutU(v14, v8, 1u);
  BlueFin::GlBitBuffer::PutU(v15, 1u, 1u);
  result = (*(*v6 + 376))(v6, &v26, 0);
  if (result)
  {
    v17 = v26[24](&v26, 3);
    v18 = v32;
    if (v32 - 1 < 0x3F)
    {
      v19 = v17;
      v20 = v6[45];
      v21 = *(v20 + 4 * (v32 >> 5));
      if (((v17 & 1) == 0) == (((1 << (v32 & 0x1F)) & v21) != 0))
      {
        if (((1 << (v32 & 0x1F)) & v21) == 0)
        {
          *(v20 + 4 * (v32 >> 5)) = v21 | (1 << (v32 & 0x1F));
          if (v17)
          {
LABEL_10:
            v22 = v6[4];
            if ((*(v22 + 1636) & 4) == 0)
            {
              LOBYTE(v33[0]) = v18;
              BlueFin::GlGnssSet::Add(v22 + 576, 4u, v33);
              v18 = v32;
            }
          }

LABEL_13:
          v23 = v6[7];
          LODWORD(v33[0]) = 4;
          BYTE4(v33[0]) = v18;
          return BlueFin::GlPeSvHealthHelper::OnHealthStatusDecoded((v23 + 32), (v19 & 1) == 0, v33);
        }

        BlueFin::GlSetBase::Remove((v6 + 45), v32);
        v18 = v32;
      }

      if (v19)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    v24 = "IS_GNSS_ID(*rotGnssId) && IS_BEIDOU_PRN(BEIDOU_GNSSID_TO_PRN(*rotGnssId))";
    DeviceFaultNotify("glpe_bdephmgr.cpp", 1507, "UpdateHealth", "IS_GNSS_ID(*rotGnssId) && IS_BEIDOU_PRN(BEIDOU_GNSSID_TO_PRN(*rotGnssId))");
    v25 = 1507;
LABEL_17:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdephmgr.cpp", v25, v24);
  }

  return result;
}

uint64_t BlueFin::GlPeLegacyBdsEph::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v18 = *MEMORY[0x29EDCA608];
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (v4 >= 2)
  {
    DeviceFaultNotify("glpe_bdephmgr.cpp", 1060, "SerializeImpl", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdephmgr.cpp", 1060, "ucVersion == 1");
  }

  v6 = v3;
  v7 = v2;
  if (v3 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    v14 = 66;
    v15 = v5;
    v16 = 0x1000000000000;
    v13 = &unk_2A1F092C0;
    v17 = v5;
    v8 = *(v2 + 24);
    BlueFin::GlSysLogEntry::PutU8(&v13, *(v8 + 3));
    BlueFin::GlSysLogEntry::PutU8(&v13, *(v8 + 2));
    v9 = (v8 + 4);
    v10 = 17;
    do
    {
      HIDWORD(v11) = *(v9 - 1);
      LODWORD(v11) = *v9;
      BlueFin::GlSysLogEntry::PutU32(&v13, v11 >> 16);
      ++v9;
      --v10;
    }

    while (v10);
    BlueFin::GlSysLogEntry::PutU32(&v13, (*(*(v7 + 24) + 68) >> 13) & 2 | (*(*(v7 + 24) + 68) >> 11) & 4);
    BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v13, v6, 4);
  }

  return 1;
}

uint64_t BlueFin::GlPeLegacyBdsEph::Deserialize(BlueFin::GlPeLegacyBdsEph *this, BlueFin::GlSysLogEntry *a2)
{
  v2 = *(a2 + 2) == 66 && *(a2 + 12) == 1;
  v3 = v2;
  if (v2)
  {
    v5 = *(this + 3);
    v6 = 4 * *(this + 17);
    v14 = 0;
    BlueFin::GlBitBuffer::Initialize(v13, v5, v6);
    U8 = BlueFin::GlSysLogEntry::GetU8(a2);
    if (U8 - 64 <= 0xFFFFFFC0)
    {
      DeviceFaultNotify("glpe_bdephmgr.cpp", 1118, "Deserialize", "IS_GNSS_ID(ucGnssId)");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdephmgr.cpp", 1118, "IS_GNSS_ID(ucGnssId)");
    }

    BlueFin::GlBitBuffer::PutU(v13, U8, 8u);
    v8 = BlueFin::GlSysLogEntry::GetU8(a2);
    BlueFin::GlBitBuffer::PutU(v13, v8, 8u);
    v9 = 17;
    do
    {
      U32 = BlueFin::GlSysLogEntry::GetU32(a2);
      BlueFin::GlBitBuffer::PutU(v13, U32, 0x20u);
      --v9;
    }

    while (v9);
    v11 = BlueFin::GlSysLogEntry::GetU32(a2);
    BlueFin::GlBitBuffer::PutU(v13, 0, 1u);
    BlueFin::GlBitBuffer::PutU(v13, (v11 >> 1) & 1, 1u);
    BlueFin::GlBitBuffer::PutU(v13, (v11 >> 2) & 1, 1u);
    BlueFin::GlSysLogEntry::CheckConsumed(a2, 1138);
  }

  return v3;
}

BOOL BlueFin::GlPeBdsEphMgr::NewEphSet(BlueFin::GlPeBdsEphMgr *this, uint64_t a2, const BlueFin::GlPeBdsEphemeris *a3, const BlueFin::GlPeBdsEphemeris *a4)
{
  if ((this - 64) <= 0xFFFFFFC0)
  {
    DeviceFaultNotify("glpe_bdephmgr.cpp", 1586, "NewEphSet", "IS_GNSS_ID(ucGnssId) && IS_BEIDOU_PRN(BEIDOU_GNSSID_TO_PRN(ucGnssId))");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdephmgr.cpp", 1586, "IS_GNSS_ID(ucGnssId) && IS_BEIDOU_PRN(BEIDOU_GNSSID_TO_PRN(ucGnssId))");
  }

  v6 = (*(*a2 + 192))(a2, 28, a3, a4);
  if (v6 == (*(*a3 + 192))(a3, 28))
  {
    v7 = (*(*a2 + 192))(a2, 18);
    v8 = v7 != (*(*a3 + 192))(a3, 18);
  }

  else
  {
    v8 = 1;
  }

  v9 = (*(*a2 + 192))(a2, 5);
  v10 = (*(*a3 + 192))(a3, 5);
  v11 = (*(*a2 + 192))(a2, 29);
  v12 = (*(*a3 + 192))(a3, 29);
  v13 = (*(*a2 + 192))(a2, 3);
  v14 = (*(*a3 + 192))(a3, 3);
  v15 = (*(*a2 + 192))(a2, 7);
  v16 = (*(*a3 + 192))(a3, 7);
  result = 1;
  if (!v8 && v9 == v10 && v13 == v14)
  {
    return v11 != v12 || v15 != v16;
  }

  return result;
}

uint64_t BlueFin::GlPeBdIFMgr::SetDataSubFrmMeas(BlueFin::GlPeBdIFMgr *this, const BlueFin::GlDataSubFrmMeas *a2, int8x16_t a3, int8x16_t a4)
{
  v6 = *(this + 1);
  v48 = 7;
  v49 = 0;
  result = BlueFin::GlPeSvIdConverter::SvId2Gnss(v6, a2 + 8, &v48, a3, a4);
  if (v48 > 6 || (v8 = v49, v9 = v49 - 1, (v49 - 1) >= 0x3Fu))
  {
    v15 = "otGnss.isValid()";
    DeviceFaultNotify("glpe_bdifmgr.cpp", 97, "SetDataSubFrmMeas", "otGnss.isValid()");
    v16 = 97;
    goto LABEL_50;
  }

  if (v48 != 4)
  {
    v15 = "otGnss.eGnss == GNSS_BEIDOU";
    DeviceFaultNotify("glpe_bdifmgr.cpp", 98, "SetDataSubFrmMeas", "otGnss.eGnss == GNSS_BEIDOU");
    v16 = 98;
    goto LABEL_50;
  }

  v10 = v49 >> 5;
  if ((*(*(this + 2838) + 4 * v10) >> (v49 & 0x1F)))
  {
    v11 = *(this + 2970);
    if (!v11)
    {
      return result;
    }

    goto LABEL_24;
  }

  v12 = *(*this + 2568);
  BlueFin::GlArray::EnsureValidHandle(this + 40, v49);
  if (*(*(this + 7) + v8 - *(this + 76)) == 255 && *(this + 79) == 255)
  {
    *v45 = this + 40;
    v45[8] = 0;
    if (!*(this + 78))
    {
      return GlCustomLog(13, "EphMgr(BDS,%d)[%u]: No free decoders available!\n");
    }

    v36 = 0;
    v37 = 1;
    do
    {
      v38 = BlueFin::GlArrayIterator::Next(v45);
      v39 = *(BlueFin::GlArray::Get((this + 40), v38) + 1376);
      v40 = v12 - v39;
      if (v36 <= v12 - v39)
      {
        v41 = v38;
      }

      else
      {
        v41 = v37;
      }

      if (v36 > v40)
      {
        v40 = v36;
      }

      if (v12 > v39)
      {
        v37 = v41;
        v36 = v40;
      }
    }

    while (v45[8] < *(*v45 + 38));
    if (v36 <= 0xEA60)
    {
      return GlCustomLog(13, "EphMgr(BDS,%d)[%u]: No free decoders available!\n");
    }

    if ((*(*(this + 2838) + 4 * (v37 >> 5)) >> (v37 & 0x1F)))
    {
      v42 = (*(this + 2970) + 16 * (v37 - 1));
      (*(**v42 + 32))();
      (*(*v42[1] + 144))(v42[1]);
      BlueFin::GlSetBase::Remove(this + 22704, v37);
      v43 = *(this + 2970) + 16 * v37;
      *(v43 - 16) = 0;
      *(v43 - 8) = 0;
    }

    BlueFin::GlArray::Remove((this + 40), v37);
  }

  BlueFin::GlArray::EnsureValidHandle(this + 40, v8);
  v13 = (this + 40);
  if (*(*(this + 7) + v8 - *(this + 76)) == 255)
  {
    v17 = BlueFin::GlArray::Add(v13, v8);
    if (v17)
    {
      v14 = v17;
      bzero(v17, 0x564uLL);
      goto LABEL_14;
    }

    v15 = "pBuffer != nullptr";
    DeviceFaultNotify("glpe_bdifmgr.cpp", 295, "GetSfrmSync_NavPsrBuf", "pBuffer != nullptr");
    v16 = 295;
LABEL_50:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdifmgr.cpp", v16, v15);
  }

  v14 = BlueFin::GlArray::Get(v13, v8);
  if (!v14)
  {
    v15 = "potDecoder != nullptr";
    DeviceFaultNotify("glpe_bdifmgr.cpp", 301, "GetSfrmSync_NavPsrBuf", "potDecoder != nullptr");
    v16 = 301;
    goto LABEL_50;
  }

LABEL_14:
  *(v14 + 1376) = v12;
  *(v14 + 32) = 0;
  v18 = v9 >= 5u && (v8 - 59) >= 5;
  *(v14 + 40) = 0;
  v19 = !v18;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  *v14 = &unk_2A1F0E7D8;
  *(v14 + 64) = v19;
  *(v14 + 68) = v8;
  *(v14 + 84) = 0u;
  *(v14 + 100) = 0u;
  *(v14 + 116) = 0;
  *(v14 + 72) = 0;
  *(v14 + 80) = 0;
  BlueFin::BdSFDemod::Reset(v14);
  v20 = v14 + 128;
  if (v8 <= 0x3F && ((1 << v8) & 0xF80000000000003ELL) != 0)
  {
    v21 = &unk_2A1F0E628;
    *(v14 + 128) = &unk_2A1F0E628;
    v22 = 309;
    v23 = 1168;
    v24 = 320;
    v25 = 1160;
    v26 = 308;
    v27 = &unk_2A1F0E6F0;
  }

  else
  {
    v21 = &unk_2A1F0E520;
    *(v14 + 128) = &unk_2A1F0E520;
    v22 = 221;
    v23 = 1104;
    v24 = 256;
    v25 = 1096;
    v26 = 220;
    v27 = &unk_2A1F0E5E8;
  }

  *(v14 + 136) = v27;
  *(v20 + v26) = v8;
  *(v20 + v25) = v20 + v24;
  v28 = (v20 + v23);
  *(v14 + 176) = 0u;
  *(v14 + 192) = 0u;
  *(v14 + 144) = 0u;
  *(v14 + 160) = 0u;
  *(v14 + 208) = 0;
  *(v20 + v22) = 0;
  bzero((v20 + v24), 0x348uLL);
  v28[3] = 0u;
  v28[4] = 0u;
  v28[1] = 0u;
  v28[2] = 0u;
  *v28 = 0u;
  v21[4](v14 + 128, *(*(this + 2) + 7000) + 24 * (v8 - 1) + 7608);
  (*(*(v14 + 128) + 72))(v14 + 128, *(*(this + 2) + 7000) + 8 * (v8 - 1) + 9120);
  (*(*(v14 + 128) + 24))(v14 + 128, *(this + 4) + 26456);
  (*(*(v14 + 128) + 80))(v14 + 128, *(this + 4) + 26520);
  (*(*(v14 + 128) + 40))(v14 + 128, *(this + 3) + 48488);
  (*(*(v14 + 128) + 64))(v14 + 128, this + 23784);
  (*(*(v14 + 128) + 56))(v14 + 128, this + 23800);
  (*(*(v14 + 128) + 48))(v14 + 128, this + 23832);
  (*(*v14 + 24))(v14, this + 23768);
  (*(*v14 + 16))(v14, v14 + 128);
  *(*(this + 2838) + 4 * v10) |= 1 << (v8 & 0x1F);
  v11 = *(this + 2970);
  v29 = (v11 + 16 * (v8 - 1));
  *v29 = v14;
  v29[1] = v20;
LABEL_24:
  v30 = v11 + 16 * (v8 - 1);
  v32 = *(v30 + 8);
  v31 = (v30 + 8);
  result = v32;
  if (v32)
  {
    v47 = 0;
    v46 = 0u;
    *&v45[4] = 0u;
    v45[0] = *(a2 + 9);
    v33 = (*(*result + 136))(result);
    v34 = 0;
    while (1)
    {
      v35 = *(a2 + v34 + 5);
      if (v35 >> 30)
      {
        if ((v33 >> v34))
        {
          break;
        }
      }

      *&v45[4 * v34++ + 4] = v35 | 0x40000000;
      if (v34 == 10)
      {
        v44[0] = *(a2 + 3);
        v44[1] = (*&v45[4] << 8) & 0xFF000 | (*&v45[8] >> 18) & 0xFFF;
        return (*(**v31 + 16))(*v31, v45, v44);
      }
    }

    return GlCustomLog(14, "BDS(SvId: %02d) subframe%d rejected (word%d: 0x%08x err)\n");
  }

  return result;
}

BOOL BlueFin::GlPeBdSyncListener::SetTowMeas(_BOOL8 result, char a2, uint64_t a3)
{
  v3 = *(a3 + 4);
  if (v3 <= 0x93A7F)
  {
    return BlueFin::GlPeTimeManager::SetBdsTime(*(result + 8), a2, v3);
  }

  return result;
}

uint64_t BlueFin::GlPeBdWeekNumberListener::Update(uint64_t result, unsigned __int8 a2, unsigned __int16 a3, uint64_t a4)
{
  v4 = *(a4 + 4);
  if (v4 <= 0x93A7F)
  {
    return BlueFin::GlPeTimeManager::SetBdsTime(*(result + 8), a2, a3, v4);
  }

  return result;
}

uint64_t BlueFin::GlPeBdSysTimeDiffListener::Update(uint64_t result, uint64_t *a2, int8x16_t a3, int8x16_t a4)
{
  v4 = *(result + 16);
  if (v4 != -1)
  {
    v5 = result;
    v6 = *(result + 12);
    if (v6 != -1)
    {
      *a3.i64 = v6;
      v7 = *(result + 8);
      v20 = &off_2A1F0E4D0;
      *a4.i64 = v6 - trunc(v6);
      v8.f64[0] = NAN;
      v8.f64[1] = NAN;
      v9 = vnegq_f64(v8);
      v10 = vbslq_s8(v9, a4, a3);
      if (*v10.i64 >= 1.0)
      {
        DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
      }

      a4.i64[0] = 0.5;
      v12 = *v10.i64 * 4294967300.0 + 0.5;
      v13 = v12;
      if (v12 >= 4294967300.0)
      {
        v13 = -1;
      }

      v21 = v13;
      v22 = v6 + 604800 * v7 + 820108814;
      v20 = &off_2A1F0E4D0;
      *v10.i64 = v4;
      v19 = v9;
      BlueFin::GlWeekTowTime::resolveTowAmbiguity(&v23, &v20, v10, a4);
      *v14.i64 = v23 * 2.32830644e-10 + (HIDWORD(v23) - 820108814);
      *v15.i64 = *v14.i64 + trunc(*v14.i64 * 2.32830644e-10) * -4294967300.0;
      v16 = vbslq_s8(v19, v15, v14);
      if (*v14.i64 > 4294967300.0)
      {
        v14.i64[0] = v16.i64[0];
      }

      if (*v14.i64 < -4294967300.0)
      {
        *v16.i64 = -*v14.i64;
        *v14.i64 = -(*v14.i64 - trunc(*v14.i64 * -2.32830644e-10) * -4294967300.0);
        v17.f64[0] = NAN;
        v17.f64[1] = NAN;
        *v14.i64 = -*vbslq_s8(vnegq_f64(v17), v14, v16).i64;
      }

      if (*v14.i64 < 0.0)
      {
        v18 = --*v14.i64;
      }

      else
      {
        v18 = *v14.i64;
      }

      return BlueFin::GlPeTimeManager::SetBdsSystemOffsets(*(v5 + 24), 1, (HIDWORD(v23) - 820108814) / 0x93A80uLL, v18, a2, 0);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeBdUtcTimeDiffListener::Update(uint64_t result, uint64_t a2, int8x16_t a3, int8x16_t a4)
{
  v4 = *(result + 16);
  if (v4 != -1)
  {
    if (*(a2 + 10) < 7u)
    {
      v6 = result;
      v7 = *(result + 12);
      if (v7 != -1)
      {
        *a3.i64 = v7;
        v8 = *(result + 8);
        v13 = &off_2A1F0E4D0;
        *a4.i64 = v7 - trunc(v7);
        v9.f64[0] = NAN;
        v9.f64[1] = NAN;
        v10 = vbslq_s8(vnegq_f64(v9), a4, a3);
        if (*v10.i64 >= 1.0)
        {
          DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
        }

        a4.i64[0] = 0x41F0000000000000;
        v11 = *v10.i64 * 4294967300.0 + 0.5;
        v12 = v11;
        if (v11 >= 4294967300.0)
        {
          v12 = -1;
        }

        v14 = v12;
        v15 = v7 + 604800 * v8 + 820108814;
        v13 = &off_2A1F0E4D0;
        *v10.i64 = v4;
        BlueFin::GlWeekTowTime::resolveTowAmbiguity(&v16, &v13, v10, a4);
        return BlueFin::GlPeTimeManager::SetBdsUtcModel(*(v6 + 24), 1, (HIDWORD(v16) - 820108814) / 0x93A80u, a2, 0);
      }
    }

    else
    {
      return GlCustomLog(11, "GlPeBdUtcTimeDiffListener: UTC DN out of range (%u). Bad decode.\n", *(a2 + 10));
    }
  }

  return result;
}

uint64_t BlueFin::GlPeClkCalibrateMgr::SetClkCalibrateParams(uint64_t this, const BlueFin::stClkCalibrateParams *a2)
{
  v2 = *(a2 + 12);
  if (*(a2 + 2))
  {
    v3 = 1;
  }

  else
  {
    v3 = (v2 - 1) > 0x1F;
  }

  if (!v3)
  {
    v4 = *(this + 1120);
    if (v4)
    {
      if ((**(*(this + 88) + 160) & 8) != 0)
      {
        v5 = v4 + 32 * v2 - 32;
        *(v5 + 8) = 0;
        *(v5 + 12) = v2;
        *(v5 + 16) = *(a2 + 2);
        *(v5 + 24) = *(a2 + 6);
        *(v5 + 28) = *(a2 + 7);
        LOBYTE(v5) = *(a2 + 12);
        v6 = *(a2 + 2);
        v7 = v5;
        return BlueFin::GlGnssSet::Add(this + 1152, &v6);
      }

      else
      {
        return GlCustomLog(14, "LTOCalibrate(%s,%d) disabled\n", "GPS", v2);
      }
    }
  }

  return this;
}

uint64_t BlueFin::stClkCalibrateParams::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v5 = v3;
  v6 = v2;
  v14 = *MEMORY[0x29EDCA608];
  if (v4)
  {
    if (v4 >= 3)
    {
      DeviceFaultNotify("glpe_clkcalibratemgr.cpp", 205, "SerializeImpl", "ucVersion >= 1 && ucVersion <= 2");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_clkcalibratemgr.cpp", 205, "ucVersion >= 1 && ucVersion <= 2");
    }

    if (!v3)
    {
LABEL_6:
      if (!BlueFin::GlUtils::m_pInstance || *(BlueFin::GlUtils::m_pInstance + 1122) != 1)
      {
        return 1;
      }
    }
  }

  else
  {
    v4 = 2;
    if (!v3)
    {
      goto LABEL_6;
    }
  }

  v10 = 59;
  v11 = v4;
  v12 = 0x1000000000000;
  v9 = &unk_2A1F092C0;
  v13 = v4;
  v7 = *(v2 + 8);
  if (v4 == 1)
  {
    if (v7)
    {
      return 0;
    }

    BlueFin::GlSysLogEntry::PutU16(&v9, *(v2 + 12));
  }

  else
  {
    BlueFin::GlSysLogEntry::PutU8(&v9, BlueFin::GlImplGnss::m_aucEnabledGnssTable[v7]);
    BlueFin::GlSysLogEntry::PutU8(&v9, *(v6 + 12));
  }

  BlueFin::GlSysLogEntry::PutU16(&v9, *(v6 + 28));
  BlueFin::GlSysLogEntry::PutU32(&v9, *(v6 + 24));
  BlueFin::GlSysLogEntry::PutS32(&v9, *(v6 + 16));
  BlueFin::GlSysLogEntry::PutS32(&v9, *(v6 + 20));
  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v9, v5, 4);
  return 1;
}

uint64_t BlueFin::GlPeClkCalibrateMgr::SerializeAll(BlueFin::GlPeClkCalibrateMgr *this, BlueFin::GlPeEngineCallBacks *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, unsigned __int8 a28)
{
  result = BlueFin::GlGnssSetIterator::GlGnssSetIterator(&v36, (this + 1152));
  v31 = a27;
  for (i = a28; a27 != 6 || a28 != 14; i = a28)
  {
    if (!v31 && i - 1 <= 0x1F)
    {
      v34 = *(this + 140);
      if (v34)
      {
        if (a2 || BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          (*(*(v34 + 32 * i - 32) + 24))(v34 + 32 * i - 32, a2, 0);
        }
      }
    }

    result = BlueFin::GlGnssSetIterator::operator++(&v36);
    v31 = a27;
  }

  return result;
}

uint64_t BlueFin::stClkCalibrateParams::Deserialize(BlueFin::stClkCalibrateParams *this, BlueFin::GlSysLogEntry *a2)
{
  if (*(a2 + 2) != 59)
  {
    return 0;
  }

  v3 = *(a2 + 12);
  if ((v3 - 3) < 0xFFFFFFFE)
  {
    return 0;
  }

  if (v3 == 1)
  {
    *(this + 2) = 0;
    U16 = BlueFin::GlSysLogEntry::GetU16(a2);
LABEL_10:
    *(this + 12) = U16;
    *(this + 14) = BlueFin::GlSysLogEntry::GetU16(a2);
    *(this + 6) = BlueFin::GlSysLogEntry::GetU32(a2);
    *(this + 4) = BlueFin::GlSysLogEntry::GetS32(a2);
    *(this + 5) = BlueFin::GlSysLogEntry::GetS32(a2);
    BlueFin::GlSysLogEntry::CheckConsumed(a2, 296);
    return 1;
  }

  U8 = BlueFin::GlSysLogEntry::GetU8(a2);
  result = 0;
  *(this + 2) = BlueFin::GlImplGnss::m_aucImplGnssTable[U8];
  if (U8 != 4 && U8 != 8)
  {
    U16 = BlueFin::GlSysLogEntry::GetU8(a2);
    goto LABEL_10;
  }

  return result;
}

void BlueFin::GlPeClkCalibrateMgr::Deserialize(uint64_t a1, BlueFin::GlSysLogEntry *a2, unsigned __int32 *a3, unsigned __int8 *a4)
{
  if (a3)
  {
    *a3 = 7;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (!a2)
  {
    v35 = "pEntry";
    DeviceFaultNotify("glpe_clkcalibratemgr.cpp", 318, "Deserialize", "pEntry");
    v36 = "glpe_clkcalibratemgr.cpp";
    v37 = 318;
    goto LABEL_31;
  }

  v39 = &unk_2A1F0EE98;
  v40 = 7;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  if (!BlueFin::stClkCalibrateParams::Deserialize(&v39, a2))
  {
    return;
  }

  if (v40)
  {
    return;
  }

  v7 = v41;
  if ((v41 - 1) > 0x1Fu)
  {
    return;
  }

  v8 = *(a1 + 1120);
  if (!v8 || !BlueFin::GlAidMask::AllowSV(a1, 0, v41))
  {
    return;
  }

  v9 = v8 + 32 * v7 - 32;
  v10 = v40;
  *(v9 + 8) = v40;
  v11 = v41;
  *(v9 + 12) = v41;
  *(v9 + 16) = v42;
  *(v9 + 24) = v43;
  v47[0].n128_u32[0] = v10;
  v47[0].n128_u8[4] = v11;
  BlueFin::GlGnssSet::Add(a1 + 1152, v47);
  ValidClkCalibrateParams = BlueFin::GlPeClkCalibrateMgr::GetValidClkCalibrateParams(a1, v40, v41);
  if (ValidClkCalibrateParams)
  {
    v13 = ValidClkCalibrateParams;
    v14 = *(a1 + 80);
    if (*(v14 + 644))
    {
      BlueFin::GlPeTimeManager::GetTime(v14, 1, v47);
      v48 = &off_2A1F0B5F0;
      v49 = 0;
      BlueFin::GlPeGnssTime::GetGps(v47, &v48);
      v15 = *(v13 + 24);
      *v16.i64 = v15;
      v17 = *(v13 + 28);
      v44 = &off_2A1F0B5F0;
      *v18.i64 = v15 - trunc(v15);
      v19.f64[0] = NAN;
      v19.f64[1] = NAN;
      v38 = vnegq_f64(v19);
      v20 = *vbslq_s8(v38, v18, v16).i64;
      if (v20 < 1.0)
      {
        v21 = v20 * 4294967300.0 + 0.5;
        v22 = v21;
        if (v21 >= 4294967300.0)
        {
          v22 = -1;
        }

        v45 = v22;
        v46 = v15 + 604800 * v17;
        v44 = &off_2A1F0B5F0;
        v47[0].n128_u64[0] = __PAIR64__(v46, v22);
        v23 = (v48[4])(&v48);
        v50[0] = v49;
        v50[1] = v23;
        BlueFin::GlTimePoint::resolveAmbiguity(v47, v50, 0x24EA0000u);
        v24 = (v48[3])(&v48, v47[0].n128_u32[1]);
        v47[0].n128_u64[1] = __PAIR64__(v24, v47[0].n128_u32[0]);
        v47[0].n128_u64[0] = &off_2A1F0B5F0;
        v25 = (v48[4])(&v48);
        LODWORD(v26) = v49;
        v27 = v26 * 2.32830644e-10 + v25;
        v30 = (*(v47[0].n128_u64[0] + 32))(v47);
        LODWORD(v29) = v47[0].n128_u32[2];
        *v30.i64 = v27 - (v29 * 2.32830644e-10 + v28);
        *v31.i64 = *v30.i64 + trunc(*v30.i64 * 2.32830644e-10) * -4294967300.0;
        v32 = vbslq_s8(v38, v31, v30);
        if (*v30.i64 > 4294967300.0)
        {
          v30.i64[0] = v32.i64[0];
        }

        if (*v30.i64 < -4294967300.0)
        {
          *v32.i64 = -*v30.i64;
          *v30.i64 = -(*v30.i64 - trunc(*v30.i64 * -2.32830644e-10) * -4294967300.0);
          v33.f64[0] = NAN;
          v33.f64[1] = NAN;
          *v30.i64 = -*vbslq_s8(vnegq_f64(v33), v30, v32).i64;
        }

        if (*v30.i64 < 0.0)
        {
          v34 = --*v30.i64;
        }

        else
        {
          v34 = *v30.i64;
        }

        if (v34 <= 604800)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v35 = "dFracSec >= 0.0 && dFracSec < 1.0";
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      v36 = "glpe_timepoint.h";
      v37 = 173;
LABEL_31:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v36, v37, v35);
    }
  }

LABEL_24:
  v47[0].n128_u32[0] = v40;
  v47[0].n128_u8[4] = v41;
  BlueFin::GlGnssSet::Remove(a1 + 1152, v47);
LABEL_25:
  if (a3)
  {
    *a3 = v40;
  }

  if (a4)
  {
    *a4 = v41;
  }
}

uint64_t (*(*BlueFin::GlPeCntinMgr::wai4cntinStart(uint64_t a1, unsigned __int8 *a2, __n128 a3, __n128 a4))(void *a1, unsigned __int8 *a2, __n128 a3, __n128 a4))()
{
  v5 = *a2;
  if (v5 == 68)
  {
    v9 = *(a1 + 136);
    v10 = *(v9 + 2);
    if (v10 != 4)
    {
      if (v10 == 1)
      {
        v11 = "&GlPeCntinMgr::wai4cntinMeas";
        v12 = BlueFin::GlPeCntinMgr::wai4cntinMeas;
      }

      else
      {
        v19 = *(a1 + 120);
        v20 = *(v19 + 120);
        if (v20)
        {
          v20(*(v19 + 8), 5, a3, a4);
        }

        BlueFin::GlReqSm::SetCntinMeas(*(a1 + 128), 5, 0.0, 0.0);
        v11 = "&GlPeCntinMgr::idle";
        v12 = BlueFin::GlPeCntinMgr::idle;
      }

      BlueFin::QHsm::tran(a1, v12, v11);
      return 0;
    }

    v13 = *(a1 + 120);
    v14 = *(v13 + 120);
    if (v14)
    {
      v14(*(v13 + 8), 5, a3, a4);
    }

    v15 = *(v9 + 2);
    v16 = *(v9 + 4);
    v17 = v15 + ((v16 + 1) >> 1);
    if (v16 > 0x3E8)
    {
      v21 = 6;
      v18 = "too old";
    }

    else
    {
      if (v17 <= 0x1F4)
      {
        BlueFin::GlReqSm::SetCntinMeas(*(a1 + 128), 1, *v9 * 0.000000001, v17);
        BlueFin::GlReqSm::SetRefFreqStatus(*(a1 + 128), v9);
        v15 = *(v9 + 2);
        v16 = *(v9 + 4);
        v18 = "accepted";
LABEL_25:
        GlCustomLog(14, "GlPeCntinMgr::wai4cntinStart(REFCLKSTAT_OFFSET_KNOWN,%d,%hu,%u) Unc:%uppb %s\n", *v9, v15, v16, v17, v18);
        BlueFin::QHsm::tran(a1, BlueFin::GlPeCntinMgr::idle, "&GlPeCntinMgr::idle");
        result = 0;
        *(v9 + 2) = 0;
        return result;
      }

      v21 = 7;
      v18 = "too uncertain";
    }

    v22 = *(a1 + 128) + 28672;
    *(v22 + 3368) = 1;
    *(v22 + 3356) = 3;
    *(v22 + 3360) = v17;
    *(v22 + 3364) = v21;
    goto LABEL_25;
  }

  if (v5 == 3)
  {
    BlueFin::GlTimer::disarm((a1 + 224));
  }

  else
  {
    result = BlueFin::GlPeCntinMgr::on;
    if (v5 != 2)
    {
      return result;
    }

    v7 = *(a1 + 120);
    v8 = *(v7 + 120);
    if (v8)
    {
      v8(*(v7 + 8), 2, a3, a4);
      *(a1 + 256) = a1;
      BlueFin::GlTimer::arm((a1 + 224), 66, 0, 0x7D0u);
      result = 0;
      *(a1 + 248) = 1;
      return result;
    }

    BlueFin::GlQueue::putFIFO((a1 + 40), 66, 0);
  }

  return 0;
}

uint64_t (*(*BlueFin::GlPeCntinMgr::wai4cntinMeas(uint64_t a1, unsigned __int8 *a2, __n128 a3, __n128 a4))(void *a1, unsigned __int8 *a2, __n128 a3, __n128 a4))()
{
  v5 = *a2;
  result = BlueFin::GlPeCntinMgr::on;
  if (v5 <= 0x41)
  {
    if (v5 == 2)
    {
      v15 = *(a1 + 128);
      if ((*(v15 + 12193) & 1) != 0 && !BlueFin::GlPeReqBag::GetFactTestItem((v15 + 10880)))
      {
        v16 = 2000;
      }

      else
      {
        v16 = 4500;
      }

      *(a1 + 256) = a1;
      BlueFin::GlTimer::arm((a1 + 224), 66, 0, v16);
      *(a1 + 248) = 1;
      (*(**(*(a1 + 112) + 40) + 336))();
    }

    else
    {
      if (v5 != 3)
      {
        return result;
      }

      (*(**(*(a1 + 112) + 40) + 336))(*(*(a1 + 112) + 40), 0, a3, a4);
      BlueFin::GlTimer::disarm((a1 + 224));
    }
  }

  else
  {
    if (v5 == 66)
    {
      v10 = *(a1 + 120);
      v11 = *(v10 + 120);
      if (v11)
      {
        v11(*(v10 + 8), 5, a3, a4);
      }

      v12 = *(a1 + 128);
      v7 = 3;
      goto LABEL_24;
    }

    if (v5 != 68)
    {
      if (v5 != 70)
      {
        return result;
      }

      v7 = *(a1 + 144);
      if (v7 == 1)
      {
        v8 = "&GlPeCntinMgr::wai4cntinStop";
        v9 = BlueFin::GlPeCntinMgr::wai4cntinStop;
LABEL_25:
        BlueFin::QHsm::tran(a1, v9, v8);
        return 0;
      }

      v17 = *(a1 + 120);
      v18 = *(v17 + 120);
      if (v18)
      {
        v18(*(v17 + 8), 5, a3, a4);
        v7 = *(a1 + 144);
      }

      v12 = *(a1 + 128);
LABEL_24:
      BlueFin::GlReqSm::SetCntinMeas(v12, v7, 0.0, 0.0);
      v8 = "&GlPeCntinMgr::idle";
      v9 = BlueFin::GlPeCntinMgr::idle;
      goto LABEL_25;
    }

    if ((*(*(a1 + 136) + 12) & 6) != 0)
    {
      v13 = *(a1 + 120);
      v14 = *(v13 + 120);
      if (v14)
      {
        v14(*(v13 + 8), 5, a3, a4);
      }

      v12 = *(a1 + 128);
      v7 = 5;
      goto LABEL_24;
    }
  }

  return 0;
}

uint64_t (*(*BlueFin::GlPeCntinMgr::wai4cntinStop(uint64_t a1, unsigned __int8 *a2, __n128 a3, __n128 a4))(void *a1, unsigned __int8 *a2, __n128 a3, __n128 a4))()
{
  v5 = *a2;
  if (v5 == 68)
  {
    v9 = *(a1 + 136);
    if ((*(v9 + 12) & 7) != 0 || (*(v9 + 8) | 2) == 2)
    {
      BlueFin::GlReqSm::SetCntinMeas(*(a1 + 128), 5, 0.0, 0.0);
    }

    else
    {
      BlueFin::GlReqSm::SetCntinMeas(*(a1 + 128), 1, *(a1 + 152), *(a1 + 160));
      *(a1 + 144) = 0;
    }

    v10 = *(a1 + 120);
    v11 = *(v10 + 120);
    if (v11)
    {
      v11(*(v10 + 8), 5);
    }

    BlueFin::QHsm::tran(a1, BlueFin::GlPeCntinMgr::idle, "&GlPeCntinMgr::idle");
  }

  else if (v5 == 3)
  {
    BlueFin::GlTimer::disarm((a1 + 224));
  }

  else
  {
    result = BlueFin::GlPeCntinMgr::on;
    if (v5 != 2)
    {
      return result;
    }

    *(a1 + 256) = a1;
    BlueFin::GlTimer::arm((a1 + 224), 66, 0, 0x7D0u);
    *(a1 + 248) = 1;
    v7 = *(a1 + 120);
    v8 = *(v7 + 120);
    if (v8)
    {
      v8(*(v7 + 8), 4);
    }
  }

  return 0;
}

uint64_t BlueFin::GlPeCntinMgr::SetRefFreqStatus(void *a1, uint64_t a2)
{
  v5 = 68;
  a1[17] = a2;
  v3 = a1[4];
  result = a1[1];
  a1[4] = result;
  do
  {
    v6 = 0;
    if (BlueFin::patch_dispatch(result, a1, &v5, &v6))
    {
      result = v6;
    }

    else
    {
      result = (a1[4])(a1, &v5);
    }

    a1[4] = result;
  }

  while (result);
  a1[4] = v3;
  return result;
}

uint64_t BlueFin::GlPeCntinMgr::SetCntinMeas(uint64_t result, int a2, double a3, double a4)
{
  if (*(result + 144) != 1)
  {
    v9[3] = v4;
    v9[4] = v5;
    v6 = result;
    *(result + 144) = a2;
    *(result + 152) = a3;
    *(result + 160) = a4;
    v8 = 70;
    v7 = *(result + 32);
    result = *(result + 8);
    *(v6 + 32) = result;
    do
    {
      v9[0] = 0;
      if (BlueFin::patch_dispatch(result, v6, &v8, v9))
      {
        result = v9[0];
      }

      else
      {
        result = (*(v6 + 32))(v6, &v8);
      }

      *(v6 + 32) = result;
    }

    while (result);
    *(v6 + 32) = v7;
  }

  return result;
}

uint64_t BlueFin::GlPeCntinMgr::StartCntin(BlueFin::GlPeCntinMgr *this)
{
  v4 = 67;
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

uint64_t BlueFin::GlPeCntinMgr::StopCntin(BlueFin::GlPeCntinMgr *this)
{
  v4 = 69;
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

uint64_t BlueFin::GlPeEphemeris::PutScaledFloatingField(BlueFin::GlPeEphemeris *this, uint64_t a2, double a3)
{
  if ((*(*this + 200))(this))
  {
    v6 = (a3 / (*(*this + 240))(this, a2));
    v7 = *(*this + 224);
    v8 = this;
    v9 = a2;
  }

  else
  {
    if (a3 < 0.0)
    {
      DeviceFaultNotify("glpe_ephmgr.cpp", 182, "PutScaledFloatingField", "dValue >= 0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 182, "dValue >= 0");
    }

    v6 = (a3 / (*(*this + 240))(this, a2));
    v7 = *(*this + 216);
    v8 = this;
    v9 = a2;
  }

  return v7(v8, v9, v6);
}

BOOL BlueFin::GlPeEphemeris::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v20 = *MEMORY[0x29EDCA608];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 11;
  }

  if (v5 != 6 && (v5 & 0xFC) != 8)
  {
    DeviceFaultNotify("glpe_ephmgr.cpp", 493, "SerializeImpl", "ucVersion == 6 || (ucVersion >= 8 && ucVersion <= 11)");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 493, "ucVersion == 6 || (ucVersion >= 8 && ucVersion <= 11)");
  }

  v7 = v2;
  v8 = *(v2 + 8);
  v10 = v5 != 6 || *(v2 + 8) < 0x10u;
  if (v10)
  {
    v11 = v3;
    v16 = 35;
    v17 = v5;
    v18 = 0x1000000000000;
    v15 = &unk_2A1F092C0;
    v19 = v5;
    if (v5 >= 8)
    {
      BlueFin::GlSysLogEntry::PutU8(&v15, BlueFin::GlImplGnss::m_aucEnabledGnssTable[v8 >> 4]);
      if (v5 >= 0xB)
      {
        BlueFin::GlSysLogEntry::PutU8(&v15, *(v7 + 8) & 0xF);
        goto LABEL_21;
      }

      if (v5 != 8)
      {
LABEL_21:
        v12 = *(v7 + 9);
        BlueFin::GlSysLogEntry::PutU8(&v15, *(v7 + 9));
        if (!v12)
        {
LABEL_24:
          BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v15, v11, 4);
          return v10;
        }

LABEL_22:
        for (i = 0; i != v12; ++i)
        {
          BlueFin::GlSysLogEntry::PutU32(&v15, *(*(v7 + 16) + 4 * i));
        }

        goto LABEL_24;
      }
    }

    v12 = 18;
    goto LABEL_22;
  }

  return v10;
}

void *BlueFin::GlPeEphemeris::SaveToBuffer(uint64_t a1, _OWORD *a2)
{
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  *a2 = *(a1 + 8);
  return memcpy(a2 + 4, *(a1 + 16), 4 * *(a1 + 9));
}

BOOL BlueFin::GlPeEphBadDecode::Deserialize(BlueFin::GlPeEphBadDecode *this, BlueFin::GlSysLogEntry *a2)
{
  *(this + 2) = 7;
  *(this + 12) = 0;
  if (*(a2 + 2) != 36)
  {
    return 0;
  }

  v3 = *(a2 + 12);
  if (v3 > 2)
  {
    return 0;
  }

  if (v3 == 2)
  {
    *(this + 2) = BlueFin::GlImplGnss::m_aucImplGnssTable[BlueFin::GlSysLogEntry::GetU8(a2)];
    LOBYTE(v6) = BlueFin::GlSysLogEntry::GetU8(a2);
  }

  else
  {
    if (v3 != 1)
    {
      return *(this + 2) != 7;
    }

    v6 = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + BlueFin::GlSysLogEntry::GetU8(a2));
    if (!v6)
    {
      return *(this + 2) != 7;
    }

    if (v6 > 0x20)
    {
      if (v6 - 66 > 9)
      {
        return *(this + 2) != 7;
      }

      *(this + 2) = 3;
      LOBYTE(v6) = v6 - 65;
    }

    else
    {
      *(this + 2) = 0;
    }
  }

  *(this + 12) = v6;
  return *(this + 2) != 7;
}

uint64_t BlueFin::GlPeEphBadDecode::SerializeImpl(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v16 = *MEMORY[0x29EDCA608];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  if (v4 >= 3)
  {
    DeviceFaultNotify("glpe_ephmgr.cpp", 662, "SerializeImpl", "ucVersion == 1 || ucVersion == 2");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 662, "ucVersion == 1 || ucVersion == 2");
  }

  v5 = v2;
  if (v4 == 1)
  {
    v6 = *(v2 + 8);
    if (v6 != 3 && v6 != 0)
    {
      return 0;
    }

    v12 = 36;
    v13 = 1;
    v14 = 0x1000000000000;
    v11 = &unk_2A1F092C0;
    v15 = 1;
    if (v6 == 3)
    {
      v8 = *(v2 + 12) - 65;
    }

    else if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v2 + 12);
    }

    v9 = &BlueFin::GlImplGnss::m_aucFromEnabledSvIdToImplSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion + v8;
  }

  else
  {
    v12 = 36;
    v13 = v4;
    v14 = 0x1000000000000;
    v11 = &unk_2A1F092C0;
    v15 = v4;
    BlueFin::GlSysLogEntry::PutU8(&v11, BlueFin::GlImplGnss::m_aucEnabledGnssTable[*(v2 + 8)]);
    v9 = (v5 + 12);
  }

  BlueFin::GlSysLogEntry::PutU8(&v11, *v9);
  BlueFin::GlUtlGlSysLogEntryCodec::PrintEntry(&v11, 0, 4);
  return 1;
}

uint64_t BlueFin::GlPeGpsTypeEphemerisDecoder::Unpack(BlueFin::GlPeGpsTypeEphemerisDecoder *this, BlueFin::GlPeGpsEphemerisBase *a2)
{
  if (*(this + 16) != 7)
  {
    DeviceFaultNotify("glpe_ephmgr.cpp", 1027, "Unpack", "AllSubframesPresent()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 1027, "AllSubframesPresent()");
  }

  (*(*a2 + 216))(a2, 0, *(this + 4));
  (*(*a2 + 216))(a2, 28, *(this + 6) >> 22);
  (*(*a2 + 216))(a2, 4, (*(this + 6) >> 18) & 0xF);
  (*(*a2 + 216))(a2, 3, (*(this + 6) >> 12) & 0x3F);
  (*(*a2 + 216))(a2, 5, (*(this + 6) >> 2) & 0x3FF);
  HIDWORD(v4) = *(this + 6);
  LODWORD(v4) = *(this + 7);
  (*(*a2 + 216))(a2, 6, (v4 >> 2) >> 24);
  (*(*a2 + 216))(a2, 7, (*(this + 7) >> 10));
  (*(*a2 + 216))(a2, 8, (*(this + 7) >> 2));
  HIDWORD(v4) = *(this + 7);
  LODWORD(v4) = *(this + 8);
  (*(*a2 + 216))(a2, 9, (v4 >> 2) >> 16);
  HIDWORD(v4) = *(this + 8);
  LODWORD(v4) = *(this + 9);
  (*(*a2 + 216))(a2, 10, (v4 >> 18) >> 10);
  (*(*a2 + 216))(a2, 11, *(this + 41));
  HIDWORD(v4) = *(this + 10);
  LODWORD(v4) = *(this + 11);
  (*(*a2 + 216))(a2, 12, (v4 >> 8) >> 16);
  HIDWORD(v4) = *(this + 11);
  LODWORD(v4) = *(this + 12);
  (*(*a2 + 216))(a2, 13, (v4 >> 24));
  (*(*a2 + 216))(a2, 14, *(this + 49));
  HIDWORD(v4) = *(this + 12);
  LODWORD(v4) = *(this + 13);
  (*(*a2 + 216))(a2, 15, (v4 >> 8));
  HIDWORD(v4) = *(this + 13);
  LODWORD(v4) = *(this + 14);
  (*(*a2 + 216))(a2, 16, (v4 >> 8) >> 16);
  HIDWORD(v4) = *(this + 14);
  LODWORD(v4) = *(this + 15);
  (*(*a2 + 216))(a2, 17, (v4 >> 24));
  (*(*a2 + 216))(a2, 18, *(this + 61));
  (*(*a2 + 216))(a2, 30, (*(this + 15) >> 7) & 1);
  (*(*a2 + 216))(a2, 19, *(this + 33));
  HIDWORD(v4) = *(this + 16);
  LODWORD(v4) = *(this + 17);
  (*(*a2 + 216))(a2, 20, (v4 >> 16));
  (*(*a2 + 216))(a2, 21, *(this + 34));
  (*(*a2 + 216))(a2, 22, *(this + 18));
  (*(*a2 + 216))(a2, 23, *(this + 39));
  HIDWORD(v4) = *(this + 19);
  LODWORD(v4) = *(this + 20);
  (*(*a2 + 216))(a2, 24, (v4 >> 16));
  HIDWORD(v4) = *(this + 20);
  LODWORD(v4) = *(this + 21);
  (*(*a2 + 216))(a2, 25, (v4 >> 16) >> 8);
  (*(*a2 + 216))(a2, 26, *(this + 21) >> 2);
  v5 = (*(*a2 + 192))(a2, 18);
  v6 = (*(*a2 + 232))(a2, 18) * v5;
  v7 = (*(*a2 + 192))(a2, 28);
  v8 = (*(*a2 + 232))(a2, 28) * v7;
  v9 = *(this + 3);
  if (v6 + 302400 >= v9)
  {
    if (v9 + 302400 >= v6)
    {
      goto LABEL_7;
    }

    v10 = v8 - 1;
  }

  else
  {
    v10 = v8 + 1;
  }

  v8 = v10 & 0x3FF;
LABEL_7:
  (*(*a2 + 216))(a2, 27, 1);
  (*(*a2 + 216))(a2, 28, v8);
  (*(*a2 + 216))(a2, 2, *(this + 17) == 7);
  v11 = *(*a2 + 216);

  return v11(a2, 1, 0);
}

uint64_t BlueFin::GlPeEphemerisMgr::GetEphSrc(void *a1, __n128 a2)
{
  v2 = *(a1[2] + 2568);
  a2.n128_f64[0] = v2;
  if (v2 <= 0xFF9222FE)
  {
    a2.n128_f64[0] = v2;
  }

  return (*(*a1 + 96))(a2);
}

uint64_t BlueFin::GlPeEphemerisMgr::GetEphSrc(void *a1, unsigned __int8 *a2, __n128 a3)
{
  if (*a2 - 1 >= 0x3F)
  {
    DeviceFaultNotify("glpe_ephmgr.cpp", 1494, "GetEphSrc", "rotGnssId.isValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 1494, "rotGnssId.isValid()");
  }

  if (a3.n128_f64[0] == -7199999.0)
  {
    v5 = *(a1[2] + 2568);
    a3.n128_f64[0] = v5;
    if (v5 <= 0xFF9222FE)
    {
      a3.n128_f64[0] = v5;
    }
  }

  if ((*(*a1 + 64))(a1, a2, 1, a3))
  {
    return 0;
  }

  v7 = *(*(*(*a1 + 368))(a1, a2) + 152);

  return v7();
}

void BlueFin::GlPeEphemerisMgr::InvalidateEphemeris(uint64_t a1, _BYTE *a2)
{
  WritableEphemerisObj = BlueFin::GlPeEphemerisMgr::GetWritableEphemerisObj(a1, a2);
  *(WritableEphemerisObj + 8) &= 0xF0u;
  v3 = 4 * *(WritableEphemerisObj + 9);
  v4 = *(WritableEphemerisObj + 16);

  bzero(v4, v3);
}

uint64_t BlueFin::GlPeEphemerisMgr::GetEphIode(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  if (*a2 - 1 >= 0x3F)
  {
    DeviceFaultNotify("glpe_ephmgr.cpp", 1604, "GetEphIode", "rotGnssId.isValid()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 1604, "rotGnssId.isValid()");
  }

  v6 = (*(*a1 + 312))(a1);
  if (v6)
  {
    v7 = (*(*a1 + 368))(a1, a2);
    v8 = (*(*v7 + 192))(v7, 29);
    *a3 = (*(*v7 + 232))(v7, 29) * v8;
  }

  return v6;
}

uint64_t BlueFin::GlPeEphemerisMgr::IsFresh(void *a1, uint64_t a2)
{
  result = (*(*a1 + 312))(a1);
  if (result)
  {
    v5 = (*(*a1 + 368))(a1, a2);
    v6 = v5;
    v7 = *(a1[2] + 2568);
    if (v7 <= 0xFF9222FE)
    {
      v8 = v7;
    }

    else
    {
      v8 = v7;
    }

    v9 = (*(*v5 + 88))(v5);
    result = 0;
    if (!(*(*a1 + 72))(a1, v6, 1, v8 + (1000 * (v9 >> 1))))
    {
      v10 = (*(*v6 + 144))(v6);
      if ((v10 & 0xFFFFFFFD) == 1)
      {
        return 1;
      }

      if (!v10)
      {
        v11 = (*(*a1 + 368))(a1, a2);
        if ((*(*v11 + 184))(v11))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL BlueFin::GlPeEphemerisMgr::IsVisible(uint64_t a1, unsigned __int8 *a2, uint64_t a3, double a4)
{
  if (!(*(*a1 + 312))(a1))
  {
    return 0;
  }

  v8 = *(a1 + 472);
  if (v8 == 4294967300.0)
  {
    goto LABEL_7;
  }

  if (vabdd_f64(a4, v8) >= 1000.0)
  {
    bzero(*(a1 + 480), ((4 * *(a1 + 488) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
    bzero(*(a1 + 504), ((4 * *(a1 + 512) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
LABEL_7:
    *(a1 + 472) = a4;
    goto LABEL_8;
  }

  v9 = *a2;
  v10 = v9 >> 5;
  v11 = *(*(a1 + 480) + 4 * (v9 >> 5));
  v12 = 1 << (v9 & 0x1F);
  if ((v12 & v11) != 0)
  {
    return (v12 & *(*(a1 + 504) + 4 * v10)) != 0;
  }

LABEL_8:
  if (!BlueFin::GlPeTimeManager::TimeKnown(*(a1 + 16), 0, 0x3938700u))
  {
    return 0;
  }

  v14 = (*(*a1 + 368))(a1, a2);
  BlueFin::GlPeTimeManager::GetTime(*(a1 + 16), a4, 1, v17);
  v13 = !BlueFin::GlPeEphemeris::isExpired(v14, v17) && (*(*v14 + 128))(v14, v17, a3) >= 0;
  v16 = *a2;
  if ((v16 - 64) <= 0xFFFFFFC0)
  {
    DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.h", 115, "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
  }

  *(*(a1 + 480) + 4 * (v16 >> 5)) |= 1 << v16;
  if (v13)
  {
    *(*(a1 + 504) + 4 * (v16 >> 5)) |= 1 << v16;
  }

  else
  {
    BlueFin::GlSetBase::Remove(a1 + 504, v16);
  }

  return v13;
}

uint64_t BlueFin::GlPeEphemerisMgr::GetApproximateElevation(uint64_t *a1, uint64_t a2, uint64_t a3, double a4)
{
  result = BlueFin::GlPeTimeManager::TimeKnown(a1[2], 0, 0x3938700u);
  if (result)
  {
    v9 = (*(*a1 + 368))(a1, a2);
    BlueFin::GlPeTimeManager::GetTime(a1[2], a4, 1, v10);
    result = BlueFin::GlPeEphemeris::isExpired(v9, v10);
    if ((result & 1) == 0)
    {
      return (*(*v9 + 128))(v9, v10, a3);
    }
  }

  return result;
}