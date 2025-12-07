double BlueFin::GlPeAlmanac::deltaI_semicircles_to_i0_rad(BlueFin::GlPeAlmanac *this, double a2)
{
  v2 = *(this + 26);
  v3 = 0.0;
  if (v2 <= 2)
  {
    if (v2)
    {
      if (v2 == 2)
      {
        v3 = 0.35;
      }
    }

    else
    {
      v3 = 0.3;
    }
  }

  else
  {
    if (v2 == 3)
    {
      v4 = *(this + 108) - 6 >= 5;
      v3 = 0.25;
    }

    else
    {
      if (v2 != 4)
      {
        if (v2 == 5)
        {
          v3 = 0.311111111;
        }

        return (v3 + a2) * 3.14159265;
      }

      v5 = *(this + 108);
      v4 = (v5 - 59) >= 5 && (v5 - 1) >= 5;
      v3 = 0.3;
    }

    if (!v4)
    {
      v3 = 0.0;
    }
  }

  return (v3 + a2) * 3.14159265;
}

uint64_t BlueFin::GlPeLtoSliceInterface::ExpectedSize(int a1, unsigned int a2)
{
  if (a2 >= 2)
  {
    DeviceFaultNotify("glpe_ltomgr.cpp", 328, "ExpectedSize", "ucVersion == 1");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ltomgr.cpp", 328, "ucVersion == 1");
  }

  if (a1 == 1)
  {
    v2 = 77;
  }

  else
  {
    v2 = 0;
  }

  if (a1)
  {
    return v2;
  }

  else
  {
    return 7;
  }
}

uint64_t BlueFin::GlPeRtiRequestHelper::OnRtiFromNvMem(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 10))
  {
    goto LABEL_14;
  }

  *(a1 + 10) = 1;
  if (a3 == -1 || (v3 = *(a2 + 144), __CFADD__(v3, a3)) || (v5 = v3 + a3, *(a1 + 24) == 1) && v5 >= *(a1 + 176))
  {
    v4 = 0;
  }

  else
  {
    *(a1 + 40) = *(a2 + 8);
    v6 = *(a2 + 24);
    v7 = *(a2 + 40);
    v8 = *(a2 + 56);
    *(a1 + 104) = *(a2 + 72);
    *(a1 + 88) = v8;
    *(a1 + 72) = v7;
    *(a1 + 56) = v6;
    v9 = *(a2 + 88);
    v10 = *(a2 + 104);
    v11 = *(a2 + 120);
    *(a1 + 168) = *(a2 + 136);
    *(a1 + 152) = v11;
    *(a1 + 136) = v10;
    *(a1 + 120) = v9;
    *(a1 + 176) = v5;
    v4 = 1;
    *(a1 + 24) = 1;
  }

  *(a1 + 9) = 1;
  if (*(a1 + 24) != 1 || *(a1 + 176) >= *(a1 + 184))
  {
    *(a1 + 8) = 1;
  }

  if (!v4)
  {
LABEL_14:
    v12 = 0;
  }

  else
  {
    v12 = *(a1 + 8) ^ 1;
  }

  return v12 & 1;
}

__n128 BlueFin::GlPeGnssL5HealthData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = (a1 + 8);
    v3 = (a2 + 8);
    v4 = 32;
    do
    {
      *(v2 - 1) = *(v3 - 1);
      v5 = *v3;
      v3 += 3;
      *v2 = v5;
      v2 += 3;
      --v4;
    }

    while (v4);
    v6 = (a1 + 392);
    v7 = (a2 + 392);
    v8 = 10;
    do
    {
      *(v6 - 1) = *(v7 - 1);
      v9 = *v7;
      v7 += 3;
      *v6 = v9;
      v6 += 3;
      --v8;
    }

    while (v8);
    v10 = (a1 + 512);
    v11 = (a2 + 512);
    v12 = 63;
    do
    {
      *(v10 - 1) = *(v11 - 1);
      v13 = *v11;
      v11 += 3;
      *v10 = v13;
      v10 += 3;
      --v12;
    }

    while (v12);
    v14 = 36;
    v15 = a2 + 1260;
    v16 = a1 + 1260;
    do
    {
      *v16 = *v15;
      *(v16 + 8) = *(v15 + 8);
      v16 += 12;
      v15 += 12;
      --v14;
    }

    while (v14);
    v17 = a2 + 1692;
    v18 = a1 + 1692;
    v19 = 14;
    do
    {
      *v18 = *v17;
      *(v18 + 8) = *(v17 + 8);
      v18 += 12;
      v17 += 12;
      --v19;
    }

    while (v19);
    result = *(a2 + 1860);
    *(a1 + 1860) = result;
    *(a1 + 1876) = *(a2 + 1876);
  }

  return result;
}

uint64_t BlueFin::GlPeBdsTimeMgr::timeSystemToDataType(uint64_t a1, int a2)
{
  if ((a2 - 1) >= 4)
  {
    DeviceFaultNotify("glpe_bdstimemgr.cpp", 1134, "timeSystemToDataType", "false");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdstimemgr.cpp", 1134, "false");
  }

  return dword_298A45A90[a2 - 1];
}

uint64_t BlueFin::GlPeBdsTimeMgr::SetUtcModel(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3.i64[0] = v2;
  v3.i64[1] = SHIDWORD(v2);
  v4 = vmulq_f64(vcvtq_f64_s64(v3), xmmword_298A44D00);
  v5 = *(result + 8);
  if ((v5 & 0x20) == 0 || *&v4.i64[1] != *(result + 56) || *v4.i64 != *(result + 64))
  {
    *(result + 52) = *(a2 + 12);
    *(result + 44) = *(a2 + 8);
    *(result + 56) = vextq_s8(v4, v4, 8uLL);
    v5 |= 0x20u;
    v6 = *(result + 12) | 0x20;
    *(result + 8) = v5;
    *(result + 12) = v6;
  }

  v7 = *(a2 + 24);
  v8 = *(a2 + 27);
  v9 = v7 != *(result + 24) || v8 != *(result + 27) || *(a2 + 26) != *(result + 26) || *(a2 + 25) != *(result + 25);
  if (*(a2 + 24))
  {
    if (*(a2 + 27))
    {
      v10 = *(a2 + 26);
      if (v10)
      {
        if ((v5 & 0x40) == 0 || v9)
        {
          v11 = *(a2 + 25);
          if (v11)
          {
            *(result + 24) = v7;
            *(result + 27) = v8;
            *(result + 26) = v10;
            *(result + 25) = v11;
            *(result + 28) = *(a2 + 8);
            v12 = *(result + 12) | 0x40;
            *(result + 8) = v5 | 0x40;
            *(result + 12) = v12;
          }
        }
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlWeekTowTime::operator-@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 12);
  v6 = *(a2 + 8);
  v5 = *(a2 + 12);
  if (*(a2 + 8))
  {
    v8 = v4 - v5;
    if (v4 > v5 || (v4 == v5 ? (v9 = v3 >= v6) : (v9 = 0), v9))
    {
      v7 = 0;
      v9 = v3 >= v6;
      v3 -= v6;
      v12 = !v9;
      v4 = v8 - v12;
    }

    else
    {
      v10 = v5 - v4;
      v9 = v6 >= v3;
      v3 = v6 - v3;
      v11 = !v9;
      v4 = v10 - v11;
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  *a3 = v3;
  *(a3 + 4) = v4;
  if (v4 | v3)
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  *(a3 + 8) = v13;
  return result;
}

uint64_t BlueFin::GlGlnsTime::GlGlnsTime(uint64_t this, int a2, unsigned int a3, double a4)
{
  *this = &off_2A1F0E430;
  v4 = a4 - floor(a4);
  if (v4 < 0.0 || v4 >= 1.0)
  {
    v10 = "dFracSec >= 0.0 && dFracSec < 1.0";
    DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
    v11 = "glpe_timepoint.h";
    v12 = 173;
    goto LABEL_22;
  }

  v6 = v4 * 4294967300.0 + 0.5;
  v7 = v6;
  if (v6 >= 4294967300.0)
  {
    v7 = -1;
  }

  v8 = 86400 * a3 + 126230400 * a2 + a4 + 378162000;
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent - 1 >= v8 + BlueFin::GlWeekTowTime::m_ucCurrentLs)
  {
    v9 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
  }

  else
  {
    v9 = BlueFin::GlWeekTowTime::m_ucNextLs;
  }

  *(this + 8) = v7;
  *(this + 12) = v8 + v9;
  *this = &off_2A1F0E430;
  if (!a2)
  {
    v10 = "ucN4 >= 1";
    DeviceFaultNotify("glpe_datetime.h", 676, "GlGlnsTime", "ucN4 >= 1");
    v11 = "glpe_datetime.h";
    v12 = 676;
    goto LABEL_22;
  }

  if (!a3)
  {
    v10 = "usNt >= 1";
    DeviceFaultNotify("glpe_datetime.h", 677, "GlGlnsTime", "usNt >= 1");
    v11 = "glpe_datetime.h";
    v12 = 677;
    goto LABEL_22;
  }

  if (a3 >= 0x5B6)
  {
    v10 = "usNt <= 1461";
    DeviceFaultNotify("glpe_datetime.h", 678, "GlGlnsTime", "usNt <= 1461");
    v11 = "glpe_datetime.h";
    v12 = 678;
    goto LABEL_22;
  }

  if (a4 < 0.0)
  {
    v10 = "dTodS >= 0.0";
    DeviceFaultNotify("glpe_datetime.h", 679, "GlGlnsTime", "dTodS >= 0.0");
    v11 = "glpe_datetime.h";
    v12 = 679;
    goto LABEL_22;
  }

  if (a4 >= 86400.0)
  {
    v10 = "dTodS < 86400.0";
    DeviceFaultNotify("glpe_datetime.h", 680, "GlGlnsTime", "dTodS < 86400.0");
    v11 = "glpe_datetime.h";
    v12 = 680;
LABEL_22:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v11, v12, v10);
  }

  return this;
}

uint64_t BlueFin::GlPeGloEphMgr::MakeEphemerisObj(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    v3 = &unk_2A1F0FED0;
    *(a2 + 32) = 0u;
    v4 = a2 + 32;
    *(a2 + 8) = 33;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0;
    *(a2 + 72) = a1 + 5856;
    v5 = 10;
  }

  else
  {
    v6 = *(a1 + 12);
    v3 = &unk_2A1F0F470;
    *(a2 + 32) = 0u;
    v4 = a2 + 32;
    *(a2 + 8) = (16 * v6) | 2;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 92) = 0u;
    v5 = 19;
  }

  *(a2 + 9) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = vdup_n_s32(0xFF9222FF);
  *a2 = v3;
  return a2;
}

uint64_t BlueFin::GlSettingsImpl::SetBdsSignalType(uint64_t this, const unsigned __int8 *a2, int a3)
{
  if (a3 != 63)
  {
    DeviceFaultNotify("glsettings.cpp", 1146, "SetBdsSignalType", "ucNumPrns == NUM_BEIDOU_PRNS");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsettings.cpp", 1146, "ucNumPrns == NUM_BEIDOU_PRNS");
  }

  v3 = 0;
  *(this + 925) = 1;
  do
  {
    *(this + 1040 + v3) = a2[v3];
    ++v3;
  }

  while (v3 != 63);
  return this;
}

uint64_t BlueFin::GlPeGpsQzssAltNavData::IsBetterThan(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == 255)
  {
    goto LABEL_14;
  }

  if (*a2 != 255)
  {
    v2 = *(a2 + 15);
    v3 = *(a1 + 15);
    v4 = v2 > v3 || v2 == v3 && *(a2 + 10) > *(a1 + 10);
    if (v2 == v3)
    {
      v5 = *(a2 + 10) != *(a1 + 10);
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v5 = 1;
      if (!v4)
      {
LABEL_10:
        if ((a1[32] & 1) == 0)
        {
          v6 = a2[32] ^ 1 | v5;
          return v6 & 1;
        }

        goto LABEL_11;
      }
    }

    if ((a2[32] & 1) == 0)
    {
      v6 = a1[32];
      return v6 & 1;
    }

LABEL_14:
    v6 = 0;
    return v6 & 1;
  }

LABEL_11:
  v6 = 1;
  return v6 & 1;
}

__n128 BlueFin::GlPeLtoFileContentStorageMgr::UpdateLtoToStore(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = *a3;
  if (v3 <= 0x3E)
  {
    v11[0] = a1 + 20164;
    v11[1] = 0x1000000000;
    v4 = 1;
    v12 = 1;
    v13[0] = a1 + 21316;
    result.n128_u64[0] = 0x1300000003;
    v13[1] = 0x1300000003;
    v14 = 1;
    v6 = v11;
    while (1)
    {
      v7 = v4;
      if (*(v6 + 2) == a2 && *(v6 + 4) == *(a3 + 1))
      {
        break;
      }

      v4 = 0;
      v6 = v13;
      if ((v7 & 1) == 0)
      {
        return result;
      }
    }

    v8 = *v6;
    *(a1 + 24816) |= 1 << *(v6 + 6);
    if (v8)
    {
      result = *a3;
      v9 = *(a3 + 1);
      v10 = (v8 + 32 * v3);
      *v10 = *a3;
      v10[1] = v9;
    }
  }

  return result;
}

void BlueFin::GlPeLtoMgr::SetLtoDigest(BlueFin::GlPeLtoMgr *this, void *a2, int a3)
{
  v6 = (this + 1600);
  v7 = *(this + 200) | *(this + 201);
  if (*(this + 100) != 0)
  {
    if (*v6 == *a2 && *(this + 201) == a2[1])
    {
      LOBYTE(v7) = 0;
    }

    else
    {
      BlueFin::GlPeLtoMgr::Clear(this, 0);
      LOBYTE(v7) = 1;
    }
  }

  *(this + 1616) = v7;
  if (v6 != a2)
  {
    *v6 = *a2;
  }

  if (a3)
  {
    if ((this + 26443) != a2)
    {
      *(this + 26443) = *a2;
    }
  }
}

uint64_t BlueFin::GlPeTimeManager::CheckForElapsedTimeConsistency(uint64_t this, double a2, double a3, double a4)
{
  v4 = *(this + 4680);
  if (v4)
  {
    LODWORD(a2) = *(this + 4676);
    LODWORD(a4) = *(this + 2568);
    v5 = *&a2 - (v4 + *&a4 * 0.001);
    v6 = *(this + 2552) * 0.001;
    if (vabdd_f64(v5, v6) > 100.0)
    {
      return GlCustomLog(11, "GlPeTimeManager::CheckForElapsedTimeConsistency: Discrepancy in elapsed time recovered from NVRAM. Delta of elapsed time from Machtime Vs RTC is %.0lf sec ElapsedTimeBasedOnMachTimeInfo %.0lf sec RTC Sleep time %.0lf sec\n", v5 - v6, v5, v6);
    }
  }

  return this;
}

uint64_t BlueFin::GlGlnsTime::fct2CtFctS(BlueFin::GlGlnsTime *this, int a2)
{
  if (BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent - 1 >= a2 + 504478800 + BlueFin::GlWeekTowTime::m_ucCurrentLs)
  {
    v2 = BlueFin::GlWeekTowTime::m_ucCurrentLs;
  }

  else
  {
    v2 = BlueFin::GlWeekTowTime::m_ucNextLs;
  }

  return a2 + 504478800 + v2;
}

uint64_t BlueFin::GlPeLtoReaderBase::processBlock(uint64_t this, uint64_t a2, uint64_t a3, char *a4)
{
  j = this;
  v480 = this + 0x2000;
  v539 = *MEMORY[0x29EDCA608];
  v495 = (this + 9740);
  v496 = (this + 10120);
  __dst = (this + 16);
  v490 = (this + 9976);
  v478 = this + 10272;
  v479 = this + 10328;
  v498 = this;
  while (2)
  {
    v5 = *(j + 8);
    switch(v5)
    {
      case 0:
        if (*v495 < 0x1Cu)
        {
          return this;
        }

        *v502 = *(j + 28);
        if (*__dst == 14600959 && *(j + 24) == 1)
        {
          *(j + 9752) = *(j + 20);
          *(j + 9960) = *(j + 28);
          v201 = *(j + 10184);
          if (v201)
          {
            *v201 = 1;
            *(v201 + 4) = *v502;
            ***(j + 10768) |= 0x1000u;
          }

          *(j + 9744) = 28;
          v202 = 8;
        }

        else
        {
          GlCustomLog(11, "%s error code %d.%d (%s)\n", "LTO", 0, 2225, "header");
          BlueFin::GlSetBase::Remove(*(j + 10768), 11);
          *(j + 8) = 65;
          v324 = *(j + 10792);
          if (v324)
          {
            *v324 = 1;
          }

          v202 = 10808;
        }

        *(j + v202) = 1;
        v523 = 0u;
        v524 = 0u;
        v521 = 0u;
        v522 = 0u;
        memset(v520, 0, sizeof(v520));
        v326 = BlueFin::GlFormat::glsnprintf(v520, 0x80, "LTO file id=0x", a4);
        if (v326 <= 0x7E)
        {
          v358 = 0;
          do
          {
            v359 = BlueFin::GlFormat::glsnprintf((v520 + v326), (128 - v326), "%02x", v325, *(v502 + v358));
            if (v358 > 0xE)
            {
              break;
            }

            v326 += v359;
            ++v358;
          }

          while (v326 < 0x7F);
        }

        this = GlCustomLog(14, "%s\n", v520);
        j = v498;
        continue;
      case 1:
        v6 = *(j + 9744);
        v7 = (*v495 - v6);
        if (v7 <= 7)
        {
          goto LABEL_878;
        }

        *(j + 9756) = *&__dst[(v6 + 4)];
        v200 = *&__dst[v6];
        if (v200 > 12320511)
        {
          if (v200 > 286357366)
          {
            if (v200 > 806727328)
            {
              if (v200 > 1343598240)
              {
                switch(v200)
                {
                  case 1343598241:
                    *(j + 12) = 7;
                    v456 = *(j + 10704);
LABEL_827:
                    v369 = v456 == 0;
                    v370 = 50;
LABEL_828:
                    if (v369)
                    {
                      v337 = 64;
                    }

                    else
                    {
                      v337 = v370;
                    }

                    goto LABEL_831;
                  case 1438362197:
                    v369 = *(j + 10408) == 0;
                    v370 = 10;
                    goto LABEL_828;
                  case 1537563557:
                    v369 = *(j + 10400) == 0;
                    v370 = 12;
                    goto LABEL_828;
                }
              }

              else
              {
                switch(v200)
                {
                  case 806727329:
                    *(j + 12) = 5;
                    v456 = *(j + 10688);
                    goto LABEL_827;
                  case 1075162785:
                    *(j + 12) = 6;
                    v456 = *(j + 10696);
                    goto LABEL_827;
                  case 1128756537:
                    v369 = *(j + 10664) == 0;
                    v370 = 49;
                    goto LABEL_828;
                }
              }
            }

            else if (v200 > 447584623)
            {
              switch(v200)
              {
                case 447584624:
                  v369 = *(j + 10480) == 0;
                  v370 = 43;
                  goto LABEL_828;
                case 447592816:
                  v369 = *(j + 10456) == 0;
                  v370 = 45;
                  goto LABEL_828;
                case 538291873:
                  *(j + 12) = 3;
                  v456 = *(j + 10680);
                  goto LABEL_827;
              }
            }

            else
            {
              switch(v200)
              {
                case 286357367:
                  v369 = *(j + 10464) == 0;
                  v370 = 28;
                  goto LABEL_828;
                case 286361736:
                  v369 = *(j + 10472) == 0;
                  v370 = 29;
                  goto LABEL_828;
                case 447547760:
                  v369 = *(j + 10312) == 0;
                  v370 = 44;
                  goto LABEL_828;
              }
            }

            goto LABEL_832;
          }

          if (v200 > 269592555)
          {
            if (v200 > 286344259)
            {
              switch(v200)
              {
                case 286344260:
                  v369 = *(j + 10432) == 0;
                  v370 = 18;
                  goto LABEL_828;
                case 286348629:
                  v369 = *(j + 10440) == 0;
                  v370 = 23;
                  goto LABEL_828;
                case 286352998:
                  v369 = *(j + 10448) == 0;
                  v370 = 24;
                  goto LABEL_828;
              }
            }

            else
            {
              switch(v200)
              {
                case 269592556:
                  goto LABEL_776;
                case 269856417:
                  *(j + 12) = 0;
                  v456 = *(j + 10672);
                  goto LABEL_827;
                case 286339891:
                  v369 = *(j + 10424) == 0;
                  v370 = 19;
                  goto LABEL_828;
              }
            }

            goto LABEL_832;
          }

          if (v200 > 269549935)
          {
            switch(v200)
            {
              case 269549936:
                v369 = *(j + 10712) == 0;
                v370 = 51;
                goto LABEL_828;
              case 269551596:
LABEL_776:
                *(j + 10504) = 0;
                *(v480 + 2336) = v200 == 269592556;
                v369 = *(j + 10536) == 0;
                v370 = 46;
                goto LABEL_828;
              case 269552033:
                v369 = *(j + 10720) == 0;
                v370 = 53;
                goto LABEL_828;
            }

            goto LABEL_832;
          }

          if (v200 != 12320512 && v200 != 12320546)
          {
            if (v200 == 123342309)
            {
              v337 = 15;
              goto LABEL_831;
            }

LABEL_832:
            this = BlueFin::GlPeLtoReaderBase::isDcb(j, v200, (j + 10544));
            if (this)
            {
              v337 = 52;
              goto LABEL_831;
            }

            if (BlueFin::GlPeRtoReader::IsRtoEphSection((j + 10832), v200))
            {
              this = BlueFin::GlPeRtoReader::CheckRtoEnabled((j + 10832), v200);
              v469 = this == 0;
              v470 = 54;
              goto LABEL_875;
            }

            this = BlueFin::GlPeRtoReader::IsRtoSystSection((j + 10832), v200);
            if (this)
            {
              this = BlueFin::GlPeRtoReader::CheckRtoEnabled((j + 10832), v200);
              v469 = this == 0;
              v470 = 57;
              goto LABEL_875;
            }

            v337 = 64;
            if (v200 > 352366240)
            {
              if (v200 <= 355708576)
              {
                if (v200 != 352366241)
                {
                  v471 = 354594465;
                  goto LABEL_873;
                }
              }

              else if (v200 != 355708577 && v200 != 356822689)
              {
                v471 = 357936801;
LABEL_873:
                if (v200 != v471)
                {
                  goto LABEL_831;
                }
              }

              this = BlueFin::GlPeRtoReader::CheckRtoEnabled((j + 10832), v200);
              v469 = this == 0;
              v470 = 62;
LABEL_875:
              if (v469)
              {
                v337 = 64;
              }

              else
              {
                v337 = v470;
              }

              goto LABEL_831;
            }

            if (v200 <= 13417243)
            {
              if (v200 == 13406805 || v200 == 13417146)
              {
LABEL_870:
                this = BlueFin::GlPeRtoReader::CheckRtoEnabled((j + 10832), v200);
                v469 = this == 0;
                v470 = 61;
                goto LABEL_875;
              }
            }

            else
            {
              if (v200 == 13417244 || v200 == 13417258)
              {
                goto LABEL_870;
              }

              if (v200 == 269552240)
              {
                this = BlueFin::GlPeRtoReader::CheckRtoEnabled((j + 10832), 269552240);
                if (this)
                {
                  v337 = 63;
                }

                else
                {
                  v337 = 64;
                }
              }
            }

            goto LABEL_831;
          }

          v337 = 5;
          *(j + 12) = 5;
          this = BlueFin::GlPeLtoReaderBase::IsLtoEphEnabledAndRequested(j);
          if ((this & 1) == 0)
          {
            v338 = *(j + 10192);
            v337 = 64;
            if (v338)
            {
              v339 = *v338 == 4;
              goto LABEL_848;
            }
          }
        }

        else
        {
          if (v200 <= -1144210661)
          {
            if (v200 > -1441682741)
            {
              if (v200 > -1144221100)
              {
                switch(v200)
                {
                  case -1144221099:
                    v369 = *(j + 10296) == 0;
                    v370 = 38;
                    goto LABEL_828;
                  case -1144214356:
                    v369 = *(j + 10760) == 0;
                    v370 = 35;
                    goto LABEL_828;
                  case -1144210758:
                    v369 = *(j + 10216) == 0;
                    v370 = 36;
                    goto LABEL_828;
                }
              }

              else
              {
                switch(v200)
                {
                  case -1441682740:
                    v369 = *(j + 10208) == 0;
                    v370 = 3;
                    goto LABEL_828;
                  case -1440568645:
                    goto LABEL_734;
                  case -1160651099:
                    v369 = *(j + 10744) == 0;
                    v370 = 33;
                    goto LABEL_828;
                }
              }
            }

            else if (v200 > -1581604423)
            {
              switch(v200)
              {
                case -1581604422:
                  v369 = *(j + 10384) == 0;
                  v370 = 26;
                  goto LABEL_828;
                case -1581407811:
LABEL_777:
                  v369 = *(j + 10352) == 0;
                  v370 = 21;
                  goto LABEL_828;
                case -1441682757:
LABEL_734:
                  v369 = *(j + 10264) == 0;
                  v370 = 25;
                  goto LABEL_828;
              }
            }

            else
            {
              switch(v200)
              {
                case -1860394660:
                  v369 = *(j + 10304) == 0;
                  v370 = 42;
                  goto LABEL_828;
                case -1582521940:
                  v369 = *(j + 10240) == 0;
                  v370 = 20;
                  goto LABEL_828;
                case -1582128718:
                  goto LABEL_777;
              }
            }

            goto LABEL_832;
          }

          if (v200 <= -3342389)
          {
            if (v200 > -1144200732)
            {
              switch(v200)
              {
                case -1144200731:
                  v369 = *(j + 10392) == 0;
                  v370 = 37;
                  goto LABEL_828;
                case -569374191:
                  v369 = *(j + 10496) == 0;
                  v370 = 32;
                  goto LABEL_828;
                case -245624374:
                  v369 = *(j + 10224) == 0;
                  v370 = 41;
                  goto LABEL_828;
              }
            }

            else
            {
              switch(v200)
              {
                case -1144210660:
                  v369 = *(j + 10368) == 0;
                  v370 = 40;
                  goto LABEL_828;
                case -1144210646:
                  v369 = *(j + 10360) == 0;
                  v370 = 39;
                  goto LABEL_828;
                case -1144206646:
                  v369 = *(j + 10752) == 0;
                  v370 = 34;
                  goto LABEL_828;
              }
            }

            goto LABEL_832;
          }

          if (v200 <= 12311807)
          {
            switch(v200)
            {
              case -3342388:
                v337 = 4;
                goto LABEL_831;
              case 12298752:
                *(j + 12) = 6;
                this = BlueFin::GlPeLtoReaderBase::IsLtoEphEnabledAndRequested(j);
                if (this)
                {
                  goto LABEL_825;
                }

                v463 = *(j + 10192);
                v337 = 64;
                if (!v463)
                {
                  goto LABEL_831;
                }

                v464 = *v463;
                v339 = v464 == 5;
                goto LABEL_849;
              case 12307456:
                *(j + 12) = 0;
                this = BlueFin::GlPeLtoReaderBase::IsLtoEphEnabledAndRequested(j);
                if (this)
                {
                  goto LABEL_825;
                }

                v418 = *(j + 10192);
                v337 = 64;
                if (!v418)
                {
                  goto LABEL_831;
                }

                v339 = *v418 == 0;
LABEL_848:
                v464 = 5;
LABEL_849:
                if (v339)
                {
                  v337 = v464;
                }

                else
                {
                  v337 = 64;
                }

                goto LABEL_831;
            }

            goto LABEL_832;
          }

          if (v200 != 12311808)
          {
            if (v200 == 12316160 || v200 == 12316194)
            {
              *(j + 12) = 3;
              this = BlueFin::GlPeLtoReaderBase::IsLtoEphEnabledAndRequested(j);
              if (this)
              {
                goto LABEL_825;
              }

              v458 = *(j + 10192);
              v337 = 64;
              if (!v458)
              {
                goto LABEL_831;
              }

              v339 = *v458 == 3;
              goto LABEL_848;
            }

            goto LABEL_832;
          }

          *(j + 12) = 2;
          this = BlueFin::GlPeLtoReaderBase::IsLtoEphEnabledAndRequested(j);
          if (this)
          {
LABEL_825:
            v337 = 5;
            goto LABEL_831;
          }

          v468 = *(j + 10192);
          v337 = 64;
          if (v468)
          {
            v339 = *v468 == 2;
            goto LABEL_848;
          }
        }

LABEL_831:
        *(j + 8) = v337;
        *(j + 9744) += 8;
        continue;
      case 3:
      case 25:
        v6 = *(j + 9744);
        v7 = (*v495 - v6);
        if (v7 < 4)
        {
          goto LABEL_878;
        }

        v8 = &__dst[v6];
        v9 = bswap32(*&__dst[v6]) + 4;
        if (v7 < v9)
        {
          goto LABEL_878;
        }

        *&v502[2] = &__dst[v6];
        *&v503 = 0;
        v502[0] = 0;
        if (v5 == 25)
        {
          v10 = 10264;
        }

        else
        {
          v10 = 10208;
        }

        if (!*(j + v10))
        {
          goto LABEL_35;
        }

        LODWORD(v503) = BlueFin::GlPeBitReader::getword(v502);
        *&v502[2] = v8 + 4;
        v11 = BlueFin::GlPeBitReader::uint(v502, 0x10u);
        DWORD1(v503) = 32 * (DWORD1(v503) == 32);
        v12 = BlueFin::GlPeBitReader::uint(v502, 8u);
        this = BlueFin::GlPeBitReader::uint(v502, 6u);
        v13 = this;
        DWORD1(v503) = 32 * (DWORD1(v503) == 32);
        v14 = this + 1 > 32 && v5 != 25;
        v15 = this + 1 > 10 && v5 == 25;
        j = v498;
        if (v11 != 4 || v14 || v15)
        {
          goto LABEL_35;
        }

        if (this > 0x7FFFFFFE)
        {
          goto LABEL_31;
        }

        v16 = 0;
        if (v5 == 25)
        {
          v17 = 10;
        }

        else
        {
          v17 = 32;
        }

        while (1)
        {
          for (i = 0; i != 12; ++i)
          {
            v19 = BlueFin::GlPeLtoReaderBase::almanac_elements[i * 4];
            v20 = (v19 & 1) == 0;
            v21 = v19 >> 1;
            this = BlueFin::GlPeBitReader::uint(v502, v19 >> 1);
            v22 = (this << -v21) >> -v21;
            if (v20)
            {
              v22 = this;
            }

            v520[i] = v22;
          }

          v23 = v520[1];
          v24 = v520[2];
          v25 = v520[3];
          v26 = v520[4];
          v27 = v520[5];
          v28 = *&v520[6];
          v29 = v520[10];
          v30 = v520[11];
          DWORD1(v503) = 32 * (DWORD1(v503) == 32);
          j = v498;
          if (v17 <= LOBYTE(v520[0]))
          {
            break;
          }

          v31 = *(v498 + v10);
          if (v31)
          {
            v32 = v31 + 36 * LOBYTE(v520[0]);
            *v32 = v520[0];
            *(v32 + 2) = v23;
            *(v32 + 4) = v24;
            *(v32 + 6) = v25;
            *(v32 + 8) = v26;
            *(v32 + 12) = v28;
            *(v32 + 28) = v30;
            *(v32 + 30) = v29;
            *(v32 + 32) = v12;
            *(v32 + 34) = v27;
          }

          v75 = v16++ == v13;
          if (v75)
          {
LABEL_31:
            if (v5 == 25)
            {
              v33 = 0x40000;
            }

            else
            {
              v33 = 0x4000;
            }

            ***(j + 10768) |= v33;
            break;
          }
        }

LABEL_35:
        *(j + 9744) += v9;
        v34 = *(j + 9760) + v9;
        goto LABEL_454;
      case 4:
        v6 = *(j + 9744);
        v7 = (*v495 - v6);
        if (v7 <= 3)
        {
          goto LABEL_878;
        }

        v175 = *&__dst[v6];
        *(j + 9812) = v175;
        v176 = *(j + 9800);
        v177 = v176 - v175;
        v269 = v175 >= v176;
        v178 = v175 - v176;
        if (!v269)
        {
          v178 = v177;
        }

        *(j + 9808) = v178;
        v121 = v6 + 4;
        v122 = 1;
        goto LABEL_237;
      case 5:
        v6 = *(j + 9744);
        v7 = (*v495 - v6);
        if (v7 <= 0xF)
        {
          goto LABEL_878;
        }

        *(j + 9764) = *&__dst[v6];
        v203 = *&__dst[(v6 + 4)];
        *(j + 9768) = v203;
        if (v203)
        {
          v204 = v6 + 8;
          v205 = 9772;
          if (*(j + 12))
          {
            v205 = 9788;
          }

          v206 = 9776;
          if (*(j + 12))
          {
            v206 = 9792;
            v207 = 7;
          }

          else
          {
            v207 = 6;
          }

          v208 = 12;
        }

        else
        {
          v204 = v6 + 12;
          v208 = 16;
          v207 = 7;
          v206 = 9792;
          v205 = 9788;
        }

        *(j + v205) = *&__dst[v204];
        *(j + v206) = 0;
        *(j + 8) = v207;
        *(j + 9744) = v208 + v6;
        *(j + 9760) += v208;
        BlueFin::GlSetBase::Remove(*(j + 10768), 7);
        *(j + 9804) = -1;
        goto LABEL_559;
      case 6:
        v6 = *(j + 9744);
        v7 = (*v495 - v6);
        if (v7 < 0xC)
        {
          goto LABEL_878;
        }

        if (*&__dst[v6] == 10)
        {
          *(j + 9780) = *&__dst[(v6 + 4)];
        }

        *(j + 9744) = v6 + 8;
        v130 = *(j + 9760);
        *(j + 9760) = v130 + 8;
        v131 = *(j + 9772);
        v132 = *(j + 9776) + 1;
        *(j + 9776) = v132;
        if (v131 != v132)
        {
          continue;
        }

        *(j + 9776) = 0;
        *(j + 9788) = *&__dst[(v6 + 8)];
        *(j + 9744) = v6 + 12;
        *(j + 9760) = v130 + 12;
        v108 = 7;
        goto LABEL_461;
      case 7:
        v6 = *(j + 9744);
        v7 = (*v495 - v6);
        if (v7 < 8)
        {
          goto LABEL_878;
        }

        v153 = *&__dst[v6];
        v154 = *(j + 9800);
        if (v154 <= v153)
        {
          v155 = v153;
        }

        else
        {
          v155 = *(j + 9800);
        }

        if (v153 < v154)
        {
          v154 = v153;
        }

        v156 = v155 - v154;
        v157 = (v154 ^ 0x80000000) - (v155 ^ 0x80000000);
        if (v156 >= v157)
        {
          v158 = v157;
        }

        else
        {
          v158 = v156;
        }

        this = BlueFin::GlPeLtoReaderBase::ltoSectionGnssToGnss(*(j + 12));
        v159 = this;
        v160 = *(j + 10192);
        if (v160)
        {
          if (*v160 == this)
          {
            v161 = *(v160 + 4);
            if (v161 <= 0x95)
            {
              *(v160 + 4 * v161 + 8) = v153;
              *(v160 + 4) = v161 + 1;
            }
          }
        }

        v162 = **(j + 10768);
        v163 = *v162;
        if ((*v162 & 0x400) == 0)
        {
          *v162 = v163 | 0x400;
          v164 = BlueFin::GNSS2STR(this);
          this = GlCustomLog(12, "%s LTO age %d.%dd (%us)\n", v164, (v158 + 4320) / 0x15180, (v158 + 4320) / 0x21C0 - 10 * ((429496730 * ((v158 + 4320) / 0x21C0)) >> 32), v158);
          v162 = **(j + 10768);
          v163 = *v162;
        }

        if ((v163 & 0x80) != 0 || v159 == 7)
        {
          if (v159 == 7)
          {
            goto LABEL_493;
          }

          v165 = *(j + 10776);
          if (v165)
          {
LABEL_489:
            if (*(v165 + 988 + 4 * v159) < v153)
            {
              *(v165 + 988 + 4 * v159) = v153;
            }
          }
        }

        else
        {
          v165 = *(j + 10776);
          if (v165)
          {
            *(v165 + 4 * v159 + 960) = v153;
            v163 = *v162;
          }

          *v162 = v163 | 0x80;
          v166 = *(j + 10728);
          if (v166)
          {
            *(v166 + 4 * v159) = v153;
          }

          if (v165)
          {
            goto LABEL_489;
          }
        }

        v329 = *(j + 10736);
        if (v329)
        {
          *(v329 + 4 * v159) = v153;
        }

LABEL_493:
        v330 = *(j + 9804);
        v331 = *(j + 9744);
        if (v158 < v330)
        {
          *(j + 9804) = v158;
          *(j + 9796) = *&__dst[v331 + 4];
          v330 = v158;
        }

        *(j + 9744) = v331 + 8;
        *(j + 9760) += 8;
        v332 = *(j + 9788);
        v333 = *(j + 9792) + 1;
        *(j + 9792) = v333;
        if (v332 == v333)
        {
          *(j + 9792) = 0;
          if (v330 < 0x2A31)
          {
            if (*(j + 9768) == 1 && !*(j + 12))
            {
              v367 = 8;
            }

            else
            {
              v367 = 9;
            }

            *(j + 8) = v367;
          }

          else
          {
            GlCustomLog(11, "%s error code %d.%d (%s)\n", "LTO", *(j + 8), 3139, "expired");
            BlueFin::GlSetBase::Remove(*(j + 10768), 11);
            v334 = *(j + 10792);
            if (v334)
            {
              *v334 = 2;
            }

            *(j + 10808) = 2;
            *(j + 8) = 64;
            v335 = BlueFin::GNSS2STR(v159);
            this = GlCustomLog(12, "%s LTO expired (required %ds, min delta %ds)\n", v335, 10800, *(j + 9804));
          }

          v368 = *(j + 10192);
          if (v368 && *(v368 + 4))
          {
            ***(j + 10768) |= 0x800000u;
          }
        }

        continue;
      case 8:
        v6 = *(j + 9744);
        v7 = (*v495 - v6);
        this = __dst;
        if (v7 < 4)
        {
          goto LABEL_879;
        }

        v241 = *&__dst[v6];
        v242 = v241 + 4;
        if (v7 < v241 + 4)
        {
          goto LABEL_879;
        }

        v243 = *(j + 9760);
        if ((*(v480 + 1524) & 1) != 0 || *(j + 9780) != v243)
        {
          goto LABEL_331;
        }

        v499 = 0;
        BlueFin::GlCryptoDes::des_set_key(qword_298A3B0CC, &v534, v7, a4);
        v537 = 0x5B61B6B36832FBFBLL;
        v538 = 0;
        BlueFin::GlCryptoDes::decrypt_update(&v534, v502, &v499, &unk_298A3B0E0, 0x118u);
        v499 -= *(v502 + v499 - 1);
        BlueFin::GlCryptoRsa::bin2key(v520, v502, 0x118u);
        this = BlueFin::GlCryptoRsa::decrypt(v520, v500, &v499, &__dst[*(v498 + 2436) + 4], v241);
        v519 = 0;
        v517 = 0u;
        v518 = 0u;
        v515 = 0u;
        v516 = 0u;
        v513 = 0u;
        v514 = 0u;
        v511 = 0u;
        v512 = 0u;
        v509 = 0u;
        v510 = 0u;
        v507 = 0u;
        v508 = 0u;
        v505 = 0u;
        v506 = 0u;
        v503 = 0u;
        v504 = 0u;
        *v502 = 0u;
        v532 = 0u;
        memset(v533, 0, sizeof(v533));
        v530 = 0u;
        v531 = 0u;
        v528 = 0u;
        v529 = 0u;
        v526 = 0u;
        v527 = 0u;
        v524 = 0u;
        v525 = 0u;
        v522 = 0u;
        v523 = 0u;
        v521 = 0u;
        memset(v520, 0, sizeof(v520));
        if (v499 != 16)
        {
          GlCustomLog(11, "%s error code %d.%d (%s)\n", "LTO", *(v498 + 2), 3215, "license");
          this = BlueFin::GlSetBase::Remove(*(v498 + 1346), 11);
          goto LABEL_680;
        }

        j = v498;
        *(v498 + 9717) = *v500;
        *(v480 + 1524) = 1;
        LODWORD(v6) = *(v498 + 2436);
        v243 = *(v498 + 2440);
LABEL_331:
        *(j + 9744) = v6 + v242;
        *(j + 9760) = v243 + v242;
        v244 = *(j + 9772);
        v245 = *(j + 9776) + 1;
        *(j + 9776) = v245;
        if (v244 == v245)
        {
          v108 = 9;
          goto LABEL_461;
        }

        continue;
      case 9:
        v258 = *(j + 9744);
        v7 = (*v495 - v258);
        v259 = __dst;
        if (v7 < 4)
        {
          goto LABEL_883;
        }

        v260 = *&__dst[v258];
        v261 = v260 + 4;
        if (v7 < v260 + 4)
        {
          goto LABEL_883;
        }

        v262 = *(j + 9764);
        if (v262 == 2)
        {
          goto LABEL_587;
        }

        if (v262 == 3)
        {
          if (*(j + 12) != 5)
          {
            goto LABEL_588;
          }
        }

        else if (v262 != 4 || *(j + 12) != 6)
        {
          goto LABEL_588;
        }

LABEL_587:
        if (!*(j + 9792))
        {
          goto LABEL_589;
        }

LABEL_588:
        v371 = *(j + 9760);
        if (*(j + 9796) != v371)
        {
          goto LABEL_843;
        }

LABEL_589:
        v499 = 0;
        if (*(j + 9768) == 1)
        {
          BlueFin::GlCryptoDes::des_set_key((j + 9717), v520, v7, a4);
          *&v525 = *(j + 9725);
          LOBYTE(v526) = 0;
          v372 = &__dst[(v258 + 4)];
          BlueFin::GlCryptoDes::decrypt_update(v520, v372, &v499, v372, v260);
          v499 -= v372[v499 - 1];
          if (v260 < v499 || v260 - v499 >= 9)
          {
            v270 = *(j + 8);
            v271 = 3305;
            goto LABEL_596;
          }

          LODWORD(v258) = *(j + 9744);
          v262 = *(j + 9764);
        }

        else
        {
          v499 = v260;
        }

        v535 = &__dst[(v258 + 4)];
        v536 = 0;
        v534 = 1;
        if (v262 == 2)
        {
          goto LABEL_685;
        }

        if (v262 == 3)
        {
          if (*(j + 12) != 5)
          {
            goto LABEL_715;
          }
        }

        else if (v262 != 4 || *(j + 12) != 6)
        {
          goto LABEL_715;
        }

LABEL_685:
        if (*(j + 9792))
        {
          if (!BlueFin::GlPeLtoReaderBase::IsLtoEphEnabledAndRequested(j))
          {
            v454 = j;
            v455 = 3320;
            goto LABEL_796;
          }

          v421 = BlueFin::GlPeBitReader::uint(&v534, 5u);
          v422 = BlueFin::GlPeBitReader::uint(&v534, 0x1Bu);
          j = v498;
          this = BlueFin::GlPeLtoReaderBase::ltoSectionGnssToGnss(*(v498 + 3));
          if (this == 7)
          {
            goto LABEL_840;
          }

          v423 = this;
          v424 = v421 + v422;
          *v500 = &v500[12];
          v500[8] = 2;
          *&v500[12] = 0;
          if (v424 < 0)
          {
LABEL_712:
            if (v423 == 3)
            {
              BlueFin::GlSetBase::operator|=(v500, v478);
              LOBYTE(v448) = 10;
            }

            else if (v423 == 4)
            {
              BlueFin::GlSetBase::operator|=(v500, v479);
              LOBYTE(v448) = 63;
            }

            else
            {
              v448 = qword_298A40A68[v423];
            }

            ULong = BlueFin::GlSetBase::GetULong(v500, 1u);
            v466 = (2 * ~(-1 << v448)) & ~((ULong << 32) | BlueFin::GlSetBase::GetULong(v500, 0));
            BlueFin::GlGnssIdSet::GlGnssIdSet(v502, SBYTE4(v466), v466);
            LOBYTE(v520[0]) = v502[2];
            memcpy(&v520[2], *v502, 4 * LOBYTE(v502[2]));
            HIWORD(v520[0]) = 0;
            BYTE1(v520[0]) = 0;
            v520[1] = v520[2];
            this = BlueFin::GlSetIterator::operator++(v520);
            for (j = v498; BYTE1(v520[0]) != LOBYTE(v520[0]); this = BlueFin::GlSetIterator::operator++(v520))
            {
              LtoUncmprsdEphBuffer = BlueFin::GlPeLtoReaderBase::getLtoUncmprsdEphBuffer(v498, v423, BYTE2(v520[0]));
              if (LtoUncmprsdEphBuffer)
              {
                *LtoUncmprsdEphBuffer = 255;
              }
            }

            goto LABEL_840;
          }

          v425 = 0;
          while (2)
          {
            for (k = 0; k != 144; k += 4)
            {
              BlueFin::GlPeLtoReaderBase::uncompress_field(v490[k / 2], &v534, &v520[k / 4]);
            }

            v486 = *&v520[8];
            v489 = *&v520[4];
            v483 = *&v520[12];
            v476 = v522;
            v477 = v521;
            v474 = v524;
            v475 = v523;
            v427 = v525;
            v428 = DWORD2(v525);
            v429 = WORD6(v525);
            v494 = *v520;
            v430 = v520[0];
            v431 = LOBYTE(v520[0]) + 1;
            v432 = v498;
            v433 = *(v498 + 1347);
            if (!v433 || (v434 = BlueFin::GlGnssSet::operator()(v433 + 1024, v423), BlueFin::GlSetBase::GlSetBase(v520, &v520[3], 2u, v434), v435 = 1 << (v431 & 0x1F), (v435 & *(*v520 + 4 * (v431 >> 5))) == 0) && (BlueFin::GlPeLtoMgr::GetBadSvSet(*(v498 + 1347), 0, v502, v423), (v435 & *(*v502 + 4 * (v431 >> 5))) == 0) && (v436 = BlueFin::GlAidMask::AllowSV(*(v498 + 1347), v423, v431), v432 = v498, v436))
            {
              v437 = BlueFin::GlPeLtoReaderBase::getLtoUncmprsdEphBuffer(v432, v423, v431);
              if (v437)
              {
                if (*v437 != 255)
                {
                  if (v430 >= 0x3Fu)
                  {
                    DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
                    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.h", 115, "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
                  }

                  *(*v500 + 4 * (v431 >> 5)) |= 1 << v431;
                  v438 = v479;
                  if (v423 == 4)
                  {
LABEL_702:
                    *(*v438 + 4 * (v431 >> 5)) |= 1 << v431;
                  }

                  else if (v423 == 3)
                  {
                    v438 = v478;
                    goto LABEL_702;
                  }

                  v439 = 0;
                  v440 = *(v437 + 16);
                  *v520 = *v437;
                  *&v520[4] = v440;
                  v441 = *(v437 + 48);
                  *&v520[8] = *(v437 + 32);
                  *&v520[12] = v441;
                  v442 = *(v437 + 80);
                  v521 = *(v437 + 64);
                  v522 = v442;
                  v443 = *(v437 + 112);
                  v523 = *(v437 + 96);
                  v524 = v443;
                  v444 = *(v437 + 128);
                  v445 = *(v437 + 140);
                  DWORD2(v525) = *(v437 + 136);
                  HIDWORD(v525) = v445;
                  *&v525 = v444;
                  *v502 = v494;
                  v503 = v489;
                  v504 = v486;
                  v505 = v483;
                  v506 = v477;
                  v507 = v476;
                  v508 = v475;
                  v509 = v474;
                  *&v510 = v427;
                  *(&v510 + 1) = __PAIR64__(v429, v428);
                  do
                  {
                    v446 = v490[v439 / 2];
                    if (v446)
                    {
                      v447 = v502[v439 / 4];
                      if ((v446 & 2) != 0)
                      {
                        v447 += v520[v439 / 4];
                      }

                      v520[v439 / 4] = v447;
                    }

                    v439 += 4;
                  }

                  while (v439 != 144);
                  BlueFin::GlPeLtoReaderBase::eph_element_array_to_structure(v520, v437);
                }
              }
            }

            v75 = v425++ == v424;
            if (v75)
            {
              goto LABEL_712;
            }

            continue;
          }
        }

LABEL_715:
        if (!BlueFin::GlPeLtoReaderBase::IsLtoEphEnabledAndRequested(j))
        {
          goto LABEL_720;
        }

        v449 = BlueFin::GlPeBitReader::uint(&v534, 5u);
        this = BlueFin::GlPeBitReader::uint(&v534, 0x1Bu);
        v450 = this;
        if (v449 < 0)
        {
          j = v498;
        }

        else
        {
          v451 = 0;
          v452 = v449 + 1;
          j = v498;
          do
          {
            this = BlueFin::GlPeLtoReaderBase::parseNavModelSat(j, v520, &v534);
            v451 |= this == 0;
            --v452;
            j = v498;
          }

          while (v452);
          if (v451)
          {
LABEL_720:
            GlCustomLog(11, "%s error code %d.%d (%s)\n", "LTO", *(j + 8), 3331, "internal");
            goto LABEL_721;
          }
        }

        v459 = *(j + 9764);
        if (v459 == 2)
        {
          goto LABEL_788;
        }

        if (v459 == 3)
        {
          if (*(j + 12) != 5)
          {
            goto LABEL_773;
          }
        }

        else if (v459 != 4 || *(j + 12) != 6)
        {
LABEL_773:
          if (!v450)
          {
            goto LABEL_840;
          }

          BlueFin::GlPeLtoReaderBase::readDynamicRange(&v534, v490, 36);
          j = v498;
          goto LABEL_791;
        }

LABEL_788:
        if (*(j + 9796) == *(j + 9760) && !v450)
        {
          goto LABEL_840;
        }

        this = BlueFin::GlPeLtoReaderBase::readDynamicRange(&v534, v490, 36);
        j = v498;
        if (!v450)
        {
          goto LABEL_840;
        }

LABEL_791:
        if (!BlueFin::GlPeLtoReaderBase::IsLtoEphEnabledAndRequested(j))
        {
          goto LABEL_795;
        }

        v462 = 0;
        HIDWORD(v536) = 32 * (HIDWORD(v536) == 32);
        v524 = 0u;
        v525 = 0u;
        v522 = 0u;
        v523 = 0u;
        v521 = 0u;
        memset(v520, 0, sizeof(v520));
        do
        {
          this = BlueFin::GlPeLtoReaderBase::parseNavModelSat(j, v520, &v534);
          v462 |= this == 0;
          --v450;
          j = v498;
        }

        while (v450);
        if (v462)
        {
LABEL_795:
          v454 = j;
          v455 = 3345;
LABEL_796:
          this = BlueFin::GlPeLtoReaderBase::reportError(v454, v455, v420);
LABEL_722:
          v453 = *(j + 10792);
          if (v453)
          {
            *v453 = 4;
          }

          v239 = 4;
LABEL_725:
          *(j + 10808) = v239;
LABEL_726:
          v108 = 64;
LABEL_461:
          *(j + 8) = v108;
          continue;
        }

LABEL_840:
        v371 = *(j + 9760);
        if (*(j + 9796) == v371)
        {
          this = BlueFin::GlPeLtoReaderBase::updateGetEphFlags(j, *(j + 12));
          v371 = *(j + 9760);
        }

        LODWORD(v258) = *(j + 9744);
LABEL_843:
        *(j + 9744) = v258 + v261;
        *(j + 9760) = v371 + v261;
        v249 = *(j + 9788);
        v250 = *(j + 9792) + 1;
        *(j + 9792) = v250;
LABEL_844:
        if (v249 == v250)
        {
          goto LABEL_460;
        }

        continue;
      case 10:
        v6 = *(j + 9744);
        v7 = (*v495 - v6);
        if (v7 <= 3)
        {
          goto LABEL_878;
        }

        *(v480 + 1632) = *&__dst[v6];
        v121 = v6 + 4;
        v122 = 11;
        goto LABEL_237;
      case 11:
        v6 = *(j + 9744);
        v7 = (*(v480 + 1548) - v6);
        v219 = *(v480 + 1634);
        if (v7 < 4 * v219)
        {
          goto LABEL_878;
        }

        if (!*(v480 + 1634))
        {
          goto LABEL_460;
        }

        v220 = 0;
        v221 = *(j + 10408);
        v222 = v219 - 1;
        v223 = 4 * v219;
        do
        {
          if (v221)
          {
            *(v221 + v220) = *&__dst[(v220 + *(j + 9744))];
          }

          v220 += 4;
        }

        while (v223 != v220);
        v224 = *(j + 9744) + 4 * v222 + 4;
        goto LABEL_459;
      case 12:
        v6 = *(j + 9744);
        v7 = (*v495 - v6);
        if (v7 <= 7)
        {
          goto LABEL_878;
        }

        *(j + 9828) = *&__dst[v6];
        *(j + 9832) = *&__dst[(v6 + 4)];
        *(j + 9836) = 0;
        *(j + 8) = 13;
        v253 = v6 + 8;
        v254 = *(j + 9760) + 8;
        goto LABEL_464;
      case 13:
        v6 = *(j + 9744);
        v7 = (*v495 - v6);
        if (v7 < 8)
        {
          goto LABEL_878;
        }

        v225 = *&__dst[v6];
        v226 = *(j + 9844);
        if (v226 <= v225)
        {
          v227 = v225;
        }

        else
        {
          v227 = *(j + 9844);
        }

        if (v225 < v226)
        {
          v226 = v225;
        }

        v228 = v227 - v226;
        v229 = (v226 ^ 0x80000000) - (v227 ^ 0x80000000);
        if (v228 < v229)
        {
          v229 = v228;
        }

        v230 = **(j + 10768);
        v231 = *v230;
        v232 = *(j + 10776);
        if ((*v230 & 0x100) == 0)
        {
          if (v232)
          {
            *(v232 + 964) = v225;
            v231 = *v230;
          }

          *v230 = v231 | 0x100;
          if (*(j + 10736))
          {
            *(*(j + 10728) + 4) = v225;
          }
        }

        if (v232 && *(v232 + 992) < v225)
        {
          *(v232 + 992) = v225;
        }

        v233 = *(j + 10736);
        if (v233)
        {
          *(v233 + 4) = v225;
        }

        v234 = *(j + 9848);
        v235 = *(j + 9744);
        if (v229 < v234)
        {
          *(j + 9848) = v229;
          *(j + 9840) = *&__dst[v235 + 4];
          v234 = v229;
        }

        *(j + 9744) = v235 + 8;
        *(j + 9760) += 8;
        v236 = *(j + 9832);
        v237 = *(j + 9836) + 1;
        *(j + 9836) = v237;
        if (v236 != v237)
        {
          continue;
        }

        *(j + 9836) = 0;
        if (v234 < 0xE11)
        {
          v108 = 14;
          goto LABEL_461;
        }

        GlCustomLog(11, "%s error code %d.%d (%s)\n", "LTO", 13, 3737, "expired");
        this = BlueFin::GlSetBase::Remove(*(j + 10768), 11);
        v238 = *(j + 10792);
        if (v238)
        {
          *v238 = 2;
        }

        v239 = 2;
        goto LABEL_725;
      case 14:
        v258 = *(j + 9744);
        v7 = (*v495 - v258);
        v259 = __dst;
        if (v7 < 4 || (v264 = *&__dst[v258], v265 = v264 + 4, v7 < v264 + 4))
        {
LABEL_883:
          v472 = (v259 + v258);
          this = v259;
          goto LABEL_880;
        }

        v266 = *(j + 9828);
        if (v266 != 2 || *(j + 9836))
        {
          v267 = *(j + 9760);
          if (*(j + 9840) != v267)
          {
            goto LABEL_786;
          }
        }

        v499 = 0;
        if (*(j + 9772))
        {
          BlueFin::GlCryptoDes::des_set_key((j + 9717), v520, v7, a4);
          *&v525 = *(j + 9725);
          LOBYTE(v526) = 0;
          v268 = &__dst[(v258 + 4)];
          BlueFin::GlCryptoDes::decrypt_update(v520, v268, &v499, v268, v264);
          v499 -= v268[v499 - 1];
          v269 = v264 < v499 || v264 - v499 >= 9;
          if (v269)
          {
            v270 = *(j + 8);
            v271 = 3783;
LABEL_596:
            GlCustomLog(11, "%s error code %d.%d (%s)\n", "LTO", v270, v271, "license");
            this = BlueFin::GlSetBase::Remove(*(j + 10768), 11);
LABEL_681:
            v419 = *(j + 10792);
            if (v419)
            {
              *v419 = 3;
            }

            v239 = 3;
            goto LABEL_725;
          }

          LODWORD(v258) = *(j + 9744);
          v266 = *(j + 9828);
        }

        else
        {
          v499 = v264;
        }

        v535 = &__dst[(v258 + 4)];
        v536 = 0;
        v534 = 1;
        if (v266 != 2)
        {
          v383 = *(j + 10400);
LABEL_631:
          if (!v383)
          {
            goto LABEL_650;
          }

          this = BlueFin::GlPeBitReader::uint(&v534, 5u);
          HIDWORD(v536) = 32 * (HIDWORD(v536) == 32);
          if ((this & 0x8000) == 0)
          {
            v400 = 0;
            v401 = this;
            while (1)
            {
              for (m = 0; m != 15; ++m)
              {
                v403 = BlueFin::GlPeLtoReaderBase::sbaseph_elements[m * 4];
                v404 = (v403 & 1) == 0;
                v405 = v403 >> 1;
                this = BlueFin::GlPeBitReader::uint(&v534, v403 >> 1);
                v406 = (this << -v405) >> -v405;
                if (v404)
                {
                  v406 = this;
                }

                v520[m] = v406;
              }

              v407 = LOBYTE(v520[0]) - 33;
              v408 = v520[1];
              v409 = v520[2];
              v410 = *&v520[4];
              v411 = *&v520[8];
              v412 = *&v520[12];
              v413 = v520[3];
              v414 = v520[14];
              j = v498;
              v415 = HIDWORD(v536) == 32 || *(v498 + 2457) == 2;
              v416 = v415 ? HIDWORD(v536) : 0;
              HIDWORD(v536) = v416;
              if (v407 > 0x12)
              {
                break;
              }

              v417 = *(v498 + 1300) + 56 * (LOBYTE(v520[0]) - 33);
              *v417 = v407;
              *(v417 + 2) = v408;
              *(v417 + 4) = v409;
              *(v417 + 8) = v413;
              *(v417 + 12) = v410;
              *(v417 + 28) = v411;
              *(v417 + 44) = v412;
              *(v417 + 52) = v414;
              v75 = v400++ == v401;
              if (v75)
              {
                goto LABEL_647;
              }
            }

LABEL_650:
            GlCustomLog(11, "%s error code %d.%d (%s)\n", "LTO", *(j + 8), 3808, "internal");
            this = BlueFin::GlSetBase::Remove(*(j + 10768), 11);
            goto LABEL_726;
          }

LABEL_647:
          j = v498;
          if (*(v498 + 2457) == 2 && *(v498 + 2460) != *(v498 + 2440))
          {
            this = BlueFin::GlPeLtoReaderBase::readDynamicRange(&v534, v496, 15);
            j = v498;
          }

          goto LABEL_785;
        }

        v383 = *(j + 10400);
        if (!*(j + 9836))
        {
          goto LABEL_631;
        }

        if (!v383)
        {
          goto LABEL_784;
        }

        this = BlueFin::GlPeBitReader::uint(&v534, 5u);
        HIDWORD(v536) = 32 * (HIDWORD(v536) == 32);
        *v500 = &v500[12];
        v500[8] = 3;
        *&v500[12] = 0;
        v501 = 0;
        if ((this & 0x8000) != 0)
        {
          v399 = 0;
          v388 = 0;
        }

        else
        {
          v384 = 0;
          v385 = this;
          do
          {
            for (n = 0; n != 60; n += 4)
            {
              this = BlueFin::GlPeLtoReaderBase::uncompress_field(v496[n / 2], &v534, &v520[n / 4]);
            }

            v387 = *v520;
            v388 = (LOBYTE(v520[0]) - 33) > 0x12u;
            if ((LOBYTE(v520[0]) - 33) > 0x12u)
            {
              break;
            }

            v389 = *(v498 + 1300);
            if (*(v389 + 56 * (LOBYTE(v520[0]) - 33)) != 255)
            {
              v390 = 0;
              v391 = v520[2];
              v392 = LOBYTE(v520[3]);
              v393 = *&v520[4];
              v394 = *&v520[8];
              v395 = *&v520[12];
              v396 = v520[14];
              v520[0] = (*(v389 - 56) + 33);
              v520[1] = *(v389 - 54);
              v520[2] = *(v389 - 52);
              v520[3] = *(v389 - 48);
              *&v520[4] = *(v389 - 44);
              *&v520[8] = *(v389 - 28);
              *&v520[12] = *(v389 - 12);
              v520[14] = *(v389 - 4);
              *v502 = vand_s8(v387, 0xFFFF000000FFLL);
              v502[2] = v391;
              v502[3] = v392;
              v503 = v393;
              v504 = v394;
              *&v505 = v395;
              DWORD2(v505) = v396;
              do
              {
                v397 = v496[v390 / 2];
                if (v397)
                {
                  v398 = v502[v390 / 4];
                  if ((v397 & 2) != 0)
                  {
                    v398 += v520[v390 / 4];
                  }

                  v520[v390 / 4] = v398;
                }

                v390 += 4;
              }

              while (v390 != 60);
              *(v389 - 56) = LOBYTE(v520[0]) - 33;
              *(v389 - 54) = v520[1];
              *(v389 - 52) = v520[2];
              *(v389 - 48) = v520[3];
              *(v389 - 44) = *&v520[4];
              *(v389 - 28) = *&v520[8];
              *(v389 - 12) = *&v520[12];
              *(v389 - 4) = v520[14];
              *(*v500 + 0x3FFFFFFFCLL) |= 0x80000000;
            }

            v75 = v384++ == v385;
          }

          while (!v75);
          v399 = **v500;
        }

        j = v498;
        v460 = 0;
        v461 = 0;
        do
        {
          if (((v399 >> v461) & 1) == 0)
          {
            *(*(v498 + 1300) + v460) = -1;
          }

          ++v461;
          v460 += 56;
        }

        while (v460 != 1064);
        if (v388)
        {
LABEL_784:
          this = BlueFin::GlPeLtoReaderBase::reportError(j, 3798, v7);
          j = v498;
          goto LABEL_722;
        }

LABEL_785:
        LODWORD(v258) = *(j + 9744);
        v267 = *(j + 9760);
LABEL_786:
        *(j + 9744) = v258 + v265;
        *(j + 9760) = v267 + v265;
        v249 = *(j + 9832);
        v250 = *(j + 9836) + 1;
        *(j + 9836) = v250;
        goto LABEL_844;
      case 15:
        v6 = *(j + 9744);
        v7 = (*v495 - v6);
        if (v7 <= 3)
        {
          goto LABEL_878;
        }

        *(j + 9772) = *&__dst[v6];
        *(j + 9776) = 0;
        *(j + 8) = 16;
        v253 = v6 + 4;
        v254 = *(j + 9760) + 4;
        goto LABEL_464;
      case 16:
        v6 = *(j + 9744);
        v7 = (*v495 - v6);
        if (v7 < 0xC)
        {
          goto LABEL_878;
        }

        if (*&__dst[v6] == 10)
        {
          *(j + 9784) = *&__dst[(v6 + 4)];
        }

        *(j + 9744) = v6 + 8;
        *(j + 9760) += 8;
        v106 = *(j + 9772);
        v107 = *(j + 9776) + 1;
        *(j + 9776) = v107;
        if (v106 != v107)
        {
          continue;
        }

        *(j + 9776) = 0;
        v108 = 17;
        goto LABEL_461;
      case 17:
        v6 = *(j + 9744);
        v7 = (*v495 - v6);
        this = __dst;
        if (v7 < 4)
        {
          goto LABEL_879;
        }

        v246 = *&__dst[v6];
        v247 = v246 + 4;
        if (v7 < v246 + 4)
        {
          goto LABEL_879;
        }

        v248 = *(j + 9760);
        if ((*(v480 + 1524) & 1) != 0 || *(j + 9784) != v248)
        {
          goto LABEL_339;
        }

        v499 = 0;
        BlueFin::GlCryptoDes::des_set_key(qword_298A3B0CC, &v534, v7, a4);
        v537 = 0x5B61B6B36832FBFBLL;
        v538 = 0;
        BlueFin::GlCryptoDes::decrypt_update(&v534, v502, &v499, &unk_298A3B0E0, 0x118u);
        v499 -= *(v502 + v499 - 1);
        BlueFin::GlCryptoRsa::bin2key(v520, v502, 0x118u);
        this = BlueFin::GlCryptoRsa::decrypt(v520, v500, &v499, &__dst[*(v498 + 2436) + 4], v246);
        v519 = 0;
        v517 = 0u;
        v518 = 0u;
        v515 = 0u;
        v516 = 0u;
        v513 = 0u;
        v514 = 0u;
        v511 = 0u;
        v512 = 0u;
        v509 = 0u;
        v510 = 0u;
        v507 = 0u;
        v508 = 0u;
        v505 = 0u;
        v506 = 0u;
        v503 = 0u;
        v504 = 0u;
        *v502 = 0u;
        v532 = 0u;
        memset(v533, 0, sizeof(v533));
        v530 = 0u;
        v531 = 0u;
        v528 = 0u;
        v529 = 0u;
        v526 = 0u;
        v527 = 0u;
        v524 = 0u;
        v525 = 0u;
        v522 = 0u;
        v523 = 0u;
        v521 = 0u;
        memset(v520, 0, sizeof(v520));
        if (v499 == 16)
        {
          j = v498;
          *(v498 + 9717) = *v500;
          *(v480 + 1524) = 1;
          LODWORD(v6) = *(v498 + 2436);
          v248 = *(v498 + 2440);
LABEL_339:
          *(j + 9744) = v6 + v247;
          *(j + 9760) = v248 + v247;
          v249 = *(j + 9772);
          v250 = *(j + 9776) + 1;
          *(j + 9776) = v250;
          goto LABEL_844;
        }

        GlCustomLog(11, "%s error code %d.%d (%s)\n", "LTO", *(v498 + 2), 4252, "license");
        this = BlueFin::GlSetBase::Remove(*(v498 + 1346), 11);
LABEL_680:
        j = v498;
        goto LABEL_681;
      case 18:
        v110 = *(j + 9744);
        v7 = (*(j + 9740) - v110);
        v111 = *(j + 9756);
        if (v7 >= v111)
        {
          if (*(j + 10432))
          {
            *&v520[2] = &__dst[v110];
            *&v520[4] = 0;
            v520[0] = 0;
            ***(j + 10768) |= 2u;
            **(v498 + 1304) = BlueFin::GlPeBitReader::uint(v520, 5u);
            *(*(v498 + 1304) + 2) = BlueFin::GlPeBitReader::uint(v520, 0xBu);
            v112 = BlueFin::GlPeBitReader::uint(v520, 0x16u);
            v113 = *(v498 + 1304);
            *(v113 + 8) = v112 << 10 >> 10;
            *(v113 + 12) = 1;
            this = BlueFin::GlPeBitReader::uint(v520, 2u);
            j = v498;
            v110 = *(v498 + 1304);
            *(v110 + 13) = (this << 30) >> 30;
            v111 = *(v498 + 2439);
            if (v111 < 6)
            {
              *(v110 + 4) = 0;
            }

            else
            {
              this = BlueFin::GlPeBitReader::uint(v520, 0x20u);
              j = v498;
              v110 = *(v498 + 1304);
              *(v110 + 4) = this;
              v111 = *(v498 + 2439);
            }

            *(v110 + 14) = 0;
            *(v110 + 16) = 0;
            LODWORD(v110) = *(j + 9744);
          }

          v224 = v111 + v110;
LABEL_459:
          *(j + 9744) = v224;
LABEL_460:
          v108 = 1;
          goto LABEL_461;
        }

        this = __dst;
        v472 = &__dst[v110];
        goto LABEL_880;
      case 19:
        v6 = *(j + 9744);
        v7 = (*v495 - v6);
        if (v7 <= 0xC)
        {
          goto LABEL_878;
        }

        if (*(j + 10424))
        {
          *&v520[2] = &__dst[v6];
          *&v520[4] = 0;
          v520[0] = 0;
          ***(j + 10768) |= 4u;
          **(v498 + 1303) = (BlueFin::GlPeBitReader::uint(v520, 0x18u) << 8) >> 8;
          *(*(v498 + 1303) + 4) = BlueFin::GlPeBitReader::uint(v520, 0x20u);
          *(*(v498 + 1303) + 10) = BlueFin::GlPeBitReader::uint(v520, 8u);
          *(*(v498 + 1303) + 8) = BlueFin::GlPeBitReader::uint(v520, 8u);
          *(*(v498 + 1303) + 9) = BlueFin::GlPeBitReader::uint(v520, 8u);
          *(*(v498 + 1303) + 11) = BlueFin::GlPeBitReader::uint(v520, 8u);
          *(*(v498 + 1303) + 12) = BlueFin::GlPeBitReader::uint(v520, 8u);
          this = BlueFin::GlPeBitReader::uint(v520, 8u);
          j = v498;
          *(*(v498 + 1303) + 13) = this;
          LODWORD(v6) = *(v498 + 2436);
        }

        v224 = v6 + 13;
        goto LABEL_459;
      case 20:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        *&v502[2] = &__dst[v6];
        *&v503 = 0;
        v502[0] = 0;
        if (!*(j + 10240))
        {
          goto LABEL_453;
        }

        this = BlueFin::GlPeBitReader::uint(v502, 8u);
        v134 = this;
        if (this >= 1)
        {
          v135 = 0;
          do
          {
            for (ii = 0; ii != 14; ++ii)
            {
              v137 = BlueFin::GlPeLtoReaderBase::glns_almanac_elements[ii * 4];
              v138 = (v137 & 1) == 0;
              v139 = v137 >> 1;
              this = BlueFin::GlPeBitReader::uint(v502, v137 >> 1);
              v140 = (this << -v139) >> -v139;
              if (v138)
              {
                v140 = this;
              }

              v520[ii] = v140;
            }

            v141 = v520[1];
            v142 = LOBYTE(v520[1]) - 1;
            if (v142 <= 0x17)
            {
              v143 = v520[2];
              v144 = SLOBYTE(v520[2]);
              if ((v520[2] & 0xF0) != 0)
              {
                v144 = SLOBYTE(v520[2]) - 32;
              }

              if ((v144 + 7) <= 0xD)
              {
                v145 = *&v520[3];
                v146 = v520[7];
                v147 = v520[8];
                v148 = v520[9];
                v149 = v520[10];
                v150 = v520[11];
                v151 = v520[12];
                this = *(v498 + 1280);
                v152 = this + 32 * v142;
                *v152 = v520[0];
                *(v152 + 2) = v141;
                *(v152 + 3) = v143;
                *(v152 + 4) = v145;
                *(v152 + 20) = v146;
                *(v152 + 22) = v147;
                *(v152 + 24) = v148;
                *(v152 + 26) = v150;
                *(v152 + 28) = v151;
                *(v152 + 29) = 1;
                *(v152 + 30) = v149;
              }
            }

            ++v135;
          }

          while (v135 != v134);
        }

        j = v498;
        v47 = **(v498 + 1346);
        v48 = *v47 | 0x10000;
        goto LABEL_424;
      case 21:
        v6 = *(j + 9744);
        v7 = (*v495 - v6);
        if (v7 <= 3)
        {
          goto LABEL_878;
        }

        v133 = *&__dst[v6];
        *(v480 + 1624) = v133;
        *(v480 + 1626) = HIWORD(v133) + 1;
        v121 = v6 + 4;
        v122 = 22;
        goto LABEL_237;
      case 22:
        v251 = *(v480 + 1626);
        v6 = *(j + 9744);
        v7 = (*(v480 + 1548) - v6);
        if (v7 < 24 * v251)
        {
          goto LABEL_878;
        }

        v180 = 24 * v251;
        *&v502[2] = &__dst[v6];
        *&v503 = 0;
        v502[0] = 0;
        if (v251 > 0x3F || *(j + 10352) == 0)
        {
          goto LABEL_346;
        }

        if (!v251)
        {
          goto LABEL_519;
        }

        v340 = 0;
        while (1)
        {
          for (jj = 0; jj != 13; ++jj)
          {
            v342 = BlueFin::GlPeLtoReaderBase::bds_almanac_elements[jj * 4];
            v343 = (v342 & 1) == 0;
            v344 = v342 >> 1;
            this = BlueFin::GlPeBitReader::uint(v502, v342 >> 1);
            v345 = (this << -v344) >> -v344;
            if (v343)
            {
              v345 = this;
            }

            v520[jj] = v345;
          }

          v346 = v520[1];
          v347 = v520[2];
          v348 = v520[3];
          v349 = v520[4];
          v350 = *&v520[5];
          DWORD1(v503) = 32 * (DWORD1(v503) == 32);
          j = v498;
          if (LOBYTE(v520[0]) > 0x3Eu)
          {
            goto LABEL_521;
          }

          v351 = vmovn_s32(*&v520[9]);
          v352 = *(v498 + 1294) + 36 * (v520[0] & 0x3F);
          *v352 = v520[0];
          *(v352 + 2) = v346;
          *(v352 + 4) = v347;
          *(v352 + 6) = v348;
          *(v352 + 8) = v349;
          *(v352 + 12) = v350;
          LODWORD(v353) = vrev32_s16(v351).u32[0];
          HIDWORD(v353) = v351.i32[1];
          *(v352 + 28) = v353;
          if (++v340 == v251)
          {
LABEL_519:
            v195 = **(j + 10768);
            v196 = *v195 | 0x100000;
LABEL_520:
            *v195 = v196;
            goto LABEL_521;
          }
        }

      case 23:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v83 = *(j + 9756);
        if (v7 < v83)
        {
          goto LABEL_878;
        }

        if (!*(j + 10440))
        {
          goto LABEL_430;
        }

        *&v520[2] = &__dst[v6];
        *&v520[4] = 0;
        v520[0] = 0;
        ***(j + 10768) |= 8u;
        **(v498 + 1305) = (BlueFin::GlPeBitReader::uint(v520, 0x18u) << 8) >> 8;
        v273 = BlueFin::GlPeBitReader::uint(v520, 8u);
        *(*(v498 + 1305) + 4) = BlueFin::GlPeBitReader::uint(v520, 0x20u);
        *(*(v498 + 1305) + 8) = BlueFin::GlPeBitReader::uint(v520, 8u);
        *(*(v498 + 1305) + 9) = BlueFin::GlPeBitReader::uint(v520, 8u);
        *(*(v498 + 1305) + 10) = BlueFin::GlPeBitReader::uint(v520, 8u);
        this = BlueFin::GlPeBitReader::uint(v520, 8u);
        j = v498;
        *(*(v498 + 1305) + 11) = this;
        if (!v273)
        {
          goto LABEL_429;
        }

        this = BlueFin::GlPeBitReader::uint(v520, 0xDu);
        j = v498;
        v109 = *(v498 + 1305);
LABEL_398:
        *(v109 + 12) = this;
        goto LABEL_429;
      case 24:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v83 = *(j + 9756);
        if (v7 < v83)
        {
          goto LABEL_878;
        }

        if (!*(j + 10448))
        {
          goto LABEL_430;
        }

        *&v520[2] = &__dst[v6];
        *&v520[4] = 0;
        v520[0] = 0;
        ***(j + 10768) |= 0x10u;
        **(v498 + 1306) = BlueFin::GlPeBitReader::uint(v520, 0x10u);
        *(*(v498 + 1306) + 2) = (4 * BlueFin::GlPeBitReader::uint(v520, 0xEu)) >> 2;
        v520[5] = 32 * (v520[5] == 32);
        *(*(v498 + 1306) + 4) = BlueFin::GlPeBitReader::uint(v520, 0x10u);
        *(*(v498 + 1306) + 6) = (4 * BlueFin::GlPeBitReader::uint(v520, 0xEu)) >> 2;
        v520[5] = 32 * (v520[5] == 32);
        *(*(v498 + 1306) + 8) = BlueFin::GlPeBitReader::uint(v520, 0x10u);
        *(*(v498 + 1306) + 10) = (4 * BlueFin::GlPeBitReader::uint(v520, 0xEu)) >> 2;
        v520[5] = 32 * (v520[5] == 32);
        this = BlueFin::GlPeBitReader::uint(v520, 0xDu);
        j = v498;
        v109 = *(v498 + 1306);
        goto LABEL_398;
      case 26:
        v6 = *(j + 9744);
        v7 = (*v495 - v6);
        if (v7 <= 3)
        {
          goto LABEL_878;
        }

        v120 = *&__dst[v6];
        *(v480 + 1628) = v120;
        *(v480 + 1630) = HIWORD(v120) + 1;
        v121 = v6 + 4;
        v122 = 27;
LABEL_237:
        *(j + 8) = v122;
        *(j + 9744) = v121;
        continue;
      case 27:
        v179 = *(v480 + 1630);
        v6 = *(j + 9744);
        v7 = (*(v480 + 1548) - v6);
        if (v7 < 20 * v179)
        {
          goto LABEL_878;
        }

        v180 = 20 * v179;
        *&v502[2] = &__dst[v6];
        *&v503 = 0;
        v502[0] = 0;
        if (v179 > 0x24 || *(j + 10384) == 0)
        {
LABEL_346:
          v224 = v6 + v180;
        }

        else
        {
          if (!v179)
          {
LABEL_251:
            v195 = **(j + 10768);
            v196 = *v195 | 0x400000;
            goto LABEL_520;
          }

          v182 = 0;
          while (1)
          {
            for (kk = 0; kk != 13; ++kk)
            {
              v184 = BlueFin::GlPeLtoReaderBase::gal_almanac_elements[kk * 4];
              v185 = (v184 & 1) == 0;
              v186 = v184 >> 1;
              this = BlueFin::GlPeBitReader::uint(v502, v184 >> 1);
              v187 = (this << -v186) >> -v186;
              if (v185)
              {
                v187 = this;
              }

              v520[kk] = v187;
            }

            v188 = v520[9];
            v189 = *&v520[5];
            v190 = *&v520[1];
            v191 = v520[10];
            v192 = v520[11];
            v193 = v520[12];
            DWORD1(v503) = 32 * (DWORD1(v503) == 32);
            j = v498;
            if (LOBYTE(v520[0]) > 0x23u)
            {
              break;
            }

            v194 = *(v498 + 1298) + 24 * (v520[0] & 0x3F);
            *v194 = v520[0];
            *(v194 + 2) = vuzp1q_s16(v190, v189);
            *(v194 + 18) = v191;
            *(v194 + 20) = v188;
            *(v194 + 22) = v192;
            *(v194 + 23) = v193;
            if (++v182 == v179)
            {
              goto LABEL_251;
            }
          }

LABEL_521:
          v224 = *(j + 9744) + v180;
        }

        goto LABEL_459;
      case 28:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v83 = *(j + 9756);
        if (v7 < v83)
        {
          goto LABEL_878;
        }

        if (!*(j + 10464))
        {
          goto LABEL_430;
        }

        *&v520[2] = &__dst[v6];
        *&v520[4] = 0;
        v520[0] = 0;
        ***(j + 10768) |= 0x20u;
        **(v498 + 1308) = (BlueFin::GlPeBitReader::uint(v520, 0x18u) << 8) >> 8;
        BlueFin::GlPeBitReader::uint(v520, 8u);
        *(*(v498 + 1308) + 4) = BlueFin::GlPeBitReader::uint(v520, 0x20u);
        *(*(v498 + 1308) + 10) = BlueFin::GlPeBitReader::uint(v520, 8u);
        *(*(v498 + 1308) + 11) = BlueFin::GlPeBitReader::uint(v520, 8u);
        *(*(v498 + 1308) + 12) = BlueFin::GlPeBitReader::uint(v520, 3u);
        *(*(v498 + 1308) + 13) = BlueFin::GlPeBitReader::uint(v520, 8u);
        v520[5] = 32 * (v520[5] == 32);
        *(*(v498 + 1308) + 8) = BlueFin::GlPeBitReader::uint(v520, 8u);
        this = BlueFin::GlPeBitReader::uint(v520, 8u);
        j = v498;
        *(*(v498 + 1308) + 9) = this;
        goto LABEL_429;
      case 29:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v83 = *(j + 9756);
        if (v7 < v83)
        {
          goto LABEL_878;
        }

        if (!*(j + 10472))
        {
          goto LABEL_430;
        }

        *&v520[2] = &__dst[v6];
        *&v520[4] = 0;
        v520[0] = 0;
        ***(j + 10768) |= 0x40u;
        *(*(v498 + 1309) + 2) = (16 * BlueFin::GlPeBitReader::uint(v520, 0xCu)) >> 4;
        **(v498 + 1309) = BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v520[5] = 32 * (v520[5] == 32);
        *(*(v498 + 1309) + 4) = BlueFin::GlPeBitReader::uint(v520, 8u);
        this = BlueFin::GlPeBitReader::uint(v520, 6u);
        j = v498;
        *(*(v498 + 1309) + 5) = this;
        goto LABEL_429;
      case 32:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v83 = *(j + 9756);
        if (v7 < v83)
        {
          goto LABEL_878;
        }

        if (!*(j + 10496))
        {
          goto LABEL_430;
        }

        *&v520[2] = &__dst[v6];
        *&v520[4] = 0;
        v520[0] = 0;
        **(v498 + 1312) = BlueFin::GlPeBitReader::uint(v520, 0x20u);
        *(*(v498 + 1312) + 4) = BlueFin::GlPeBitReader::uint(v520, 0x20u);
        this = BlueFin::GlPeBitReader::uint(v520, 0x20u);
        j = v498;
        *(*(v498 + 1312) + 8) = this;
        goto LABEL_429;
      case 33:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v83 = *(j + 9756);
        if (v7 < v83)
        {
          goto LABEL_878;
        }

        if (!*(j + 10744))
        {
          goto LABEL_430;
        }

        *&v520[2] = &__dst[v6];
        *&v520[4] = 0;
        v520[0] = 0;
        ***(j + 10768) |= 0x200u;
        **(v498 + 1343) = BlueFin::GlPeBitReader::uint(v520, 0x20u);
        *(*(v498 + 1343) + 4) = BlueFin::GlPeBitReader::uint(v520, 0x20u);
        *(*(v498 + 1343) + 8) = BlueFin::GlPeBitReader::uint(v520, 0x20u);
        this = BlueFin::GlPeBitReader::uint(v520, 0x20u);
        j = v498;
        *(*(v498 + 1343) + 12) = this;
LABEL_429:
        v83 = *(j + 9756);
        LODWORD(v6) = *(j + 9744);
LABEL_430:
        v224 = v83 + v6;
        goto LABEL_459;
      case 34:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10752))
        {
          goto LABEL_453;
        }

        *&v520[2] = &__dst[v6];
        *&v520[4] = 0;
        v520[0] = 0;
        BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v240 = 0;
        v520[5] = 32 * (v520[5] == 32);
        do
        {
          this = BlueFin::GlPeBitReader::uint(v520, 4u);
          *(*(v498 + 1344) + v240++) = this;
        }

        while (v240 != 32);
        j = v498;
        v47 = **(v498 + 1346);
        v48 = *v47 | 0x1000000;
        goto LABEL_424;
      case 35:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10760))
        {
          goto LABEL_453;
        }

        *&v520[2] = &__dst[v6];
        *&v520[4] = 0;
        v520[0] = 0;
        BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v46 = 0;
        v520[5] = 32 * (v520[5] == 32);
        do
        {
          this = BlueFin::GlPeBitReader::uint(v520, 4u);
          *(*(v498 + 1345) + v46++) = this;
        }

        while (v46 != 63);
        j = v498;
        v47 = **(v498 + 1346);
        v48 = *v47 | 0x2000000;
        goto LABEL_424;
      case 36:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10216))
        {
          goto LABEL_453;
        }

        *&v520[2] = &__dst[v6];
        *&v520[4] = 0;
        v520[0] = 0;
        v279 = BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v482 = BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v280 = 0;
        v488 = 0;
        v485 = v279 & 0xFFFE;
        do
        {
          v281 = BlueFin::GlPeBitReader::uint(v520, 6u);
          v282 = BlueFin::GlPeBitReader::uint(v520, 1u);
          v493 = BlueFin::GlPeBitReader::uint(v520, 0x1Au);
          v283 = BlueFin::GlPeBitReader::uint(v520, 0x14u);
          v284 = BlueFin::GlPeBitReader::uint(v520, 0xAu);
          v285 = BlueFin::GlPeBitReader::uint(v520, 0xBu);
          v286 = BlueFin::GlPeBitReader::uint(v520, 0xDu);
          v287 = BlueFin::GlPeBitReader::uint(v520, 0xDu);
          this = BlueFin::GlPeBitReader::uint(v520, 0xAu);
          v288 = this;
          if (v485)
          {
            this = BlueFin::GlPeBitReader::uint(v520, 0xDu);
            v289 = (this << 19) >> 19;
            v290 = 1;
          }

          else
          {
            v290 = 0;
            LOWORD(v289) = 0;
          }

          v520[5] = 32 * (v520[5] == 32);
          v291 = *(v498 + 1277);
          if (v282 != 1)
          {
            v291 = 0;
          }

          if (v281 <= 0x1Fu && v291)
          {
            v292 = v291 + 32 * (v281 & 0x1F);
            *v292 = v281;
            *(v292 + 4) = v282;
            *(v292 + 8) = v493 << 6 >> 6;
            *(v292 + 12) = v283 << 12 >> 12;
            *(v292 + 16) = v284 << 22 >> 22;
            *(v292 + 20) = v285;
            *(v292 + 22) = (8 * v286) >> 3;
            *(v292 + 24) = (8 * v287) >> 3;
            *(v292 + 26) = v290;
            *(v292 + 28) = v289;
            ++v488;
            *(v292 + 30) = v288;
          }

          ++v280;
        }

        while (v280 <= v482);
        j = v498;
        if (!v488)
        {
          goto LABEL_425;
        }

        v47 = **(v498 + 1346);
        v48 = *v47 | 0x4000000;
        goto LABEL_424;
      case 37:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10392))
        {
          goto LABEL_453;
        }

        *&v520[2] = &__dst[v6];
        *&v520[4] = 0;
        v520[0] = 0;
        BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v84 = BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v85 = 0;
        v492 = 0;
        do
        {
          v86 = BlueFin::GlPeBitReader::uint(v520, 6u);
          v87 = BlueFin::GlPeBitReader::uint(v520, 1u);
          v88 = BlueFin::GlPeBitReader::uint(v520, 0x1Fu);
          v89 = BlueFin::GlPeBitReader::uint(v520, 0x15u);
          v90 = BlueFin::GlPeBitReader::uint(v520, 6u);
          v91 = BlueFin::GlPeBitReader::uint(v520, 0xEu);
          v92 = BlueFin::GlPeBitReader::uint(v520, 0xAu);
          v93 = BlueFin::GlPeBitReader::uint(v520, 0xAu);
          this = BlueFin::GlPeBitReader::uint(v520, 0xCu);
          v520[5] = 32 * (v520[5] == 32);
          v94 = *(v498 + 1299);
          if (v87 != 1)
          {
            v94 = 0;
          }

          if (v86 <= 0x23u && v94)
          {
            v95 = v94 + 28 * (v86 & 0x3F);
            *v95 = v86;
            *(v95 + 4) = v87;
            *(v95 + 8) = (2 * v88) >> 1;
            *(v95 + 12) = v89 << 11 >> 11;
            *(v95 + 16) = v90 << 26 >> 26;
            *(v95 + 20) = v91;
            *(v95 + 22) = (v92 << 6) >> 6;
            *(v95 + 24) = (v93 << 6) >> 6;
            *(v95 + 26) = this;
            ++v492;
          }

          ++v85;
        }

        while (v85 <= v84);
        j = v498;
        if (!v492)
        {
          goto LABEL_425;
        }

        v47 = **(v498 + 1346);
        v48 = *v47 | 0x8000000;
        goto LABEL_424;
      case 38:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10296))
        {
          goto LABEL_453;
        }

        *&v520[2] = &__dst[v6];
        *&v520[4] = 0;
        v520[0] = 0;
        v49 = BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v481 = BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v50 = 0;
        v487 = 0;
        v484 = v49 & 0xFFFE;
        do
        {
          v51 = BlueFin::GlPeBitReader::uint(v520, 6u);
          v52 = BlueFin::GlPeBitReader::uint(v520, 1u);
          v491 = BlueFin::GlPeBitReader::uint(v520, 0x1Au);
          v53 = BlueFin::GlPeBitReader::uint(v520, 0x14u);
          v54 = BlueFin::GlPeBitReader::uint(v520, 0xAu);
          v55 = BlueFin::GlPeBitReader::uint(v520, 0xBu);
          v56 = BlueFin::GlPeBitReader::uint(v520, 0xDu);
          v57 = BlueFin::GlPeBitReader::uint(v520, 0xDu);
          this = BlueFin::GlPeBitReader::uint(v520, 0xAu);
          v58 = this;
          if (v484)
          {
            this = BlueFin::GlPeBitReader::uint(v520, 0xDu);
            v59 = (this << 19) >> 19;
            v60 = 1;
          }

          else
          {
            v60 = 0;
            LOWORD(v59) = 0;
          }

          v520[5] = 32 * (v520[5] == 32);
          v61 = *(v498 + 1287);
          if (v52 != 1)
          {
            v61 = 0;
          }

          if (v51 <= 9u && v61)
          {
            v62 = v61 + 32 * (v51 & 0xF);
            *v62 = v51;
            *(v62 + 4) = v52;
            *(v62 + 8) = v491 << 6 >> 6;
            *(v62 + 12) = v53 << 12 >> 12;
            *(v62 + 16) = v54 << 22 >> 22;
            *(v62 + 20) = v55;
            *(v62 + 22) = (8 * v56) >> 3;
            *(v62 + 24) = (8 * v57) >> 3;
            *(v62 + 26) = v60;
            *(v62 + 28) = v59;
            ++v487;
            *(v62 + 30) = v58;
          }

          ++v50;
        }

        while (v50 <= v481);
        j = v498;
        if (!v487)
        {
          goto LABEL_425;
        }

        v47 = **(v498 + 1346);
        v48 = *v47 | 0x10000000;
        goto LABEL_424;
      case 39:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10360))
        {
          goto LABEL_453;
        }

        *&v520[2] = &__dst[v6];
        *&v520[4] = 0;
        v520[0] = 0;
        BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v96 = BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v97 = 0;
        v98 = 0;
        do
        {
          v99 = BlueFin::GlPeBitReader::uint(v520, 6u);
          v100 = BlueFin::GlPeBitReader::uint(v520, 3u);
          v101 = BlueFin::GlPeBitReader::uint(v520, 0xBu);
          v102 = BlueFin::GlPeBitReader::uint(v520, 0xCu);
          v103 = BlueFin::GlPeBitReader::uint(v520, 0xCu);
          this = BlueFin::GlPeBitReader::uint(v520, 0xDu);
          v520[5] = 32 * (v520[5] == 32);
          if (v100 == 1 && v99 <= 0x3Eu)
          {
            v104 = *(v498 + 1295);
            if (v104)
            {
              v105 = v104 + 16 * (v99 & 0x3F);
              *v105 = v99;
              *(v105 + 4) = 1;
              *(v105 + 8) = v101;
              *(v105 + 10) = (16 * v102) >> 4;
              *(v105 + 12) = (16 * v103) >> 4;
              *(v105 + 14) = this;
              ++v98;
            }
          }

          ++v97;
        }

        while (v97 <= v96);
        j = v498;
        if (!v98)
        {
          goto LABEL_425;
        }

        v47 = **(v498 + 1346);
        v48 = *v47 | 0x20000000;
        goto LABEL_424;
      case 40:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10368))
        {
          goto LABEL_453;
        }

        *&v520[2] = &__dst[v6];
        *&v520[4] = 0;
        v520[0] = 0;
        BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v209 = BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v210 = 0;
        v211 = 0;
        do
        {
          v212 = BlueFin::GlPeBitReader::uint(v520, 6u);
          v213 = BlueFin::GlPeBitReader::uint(v520, 3u);
          v214 = BlueFin::GlPeBitReader::uint(v520, 0xBu);
          v215 = BlueFin::GlPeBitReader::uint(v520, 0xCu);
          v216 = BlueFin::GlPeBitReader::uint(v520, 0xCu);
          this = BlueFin::GlPeBitReader::uint(v520, 0xDu);
          v520[5] = 32 * (v520[5] == 32);
          if (v213 == 2 && v212 <= 0x3Eu)
          {
            v217 = *(v498 + 1296);
            if (v217)
            {
              v218 = v217 + 16 * (v212 & 0x3F);
              *v218 = v212;
              *(v218 + 4) = 2;
              *(v218 + 8) = v214;
              *(v218 + 10) = (16 * v215) >> 4;
              *(v218 + 12) = (16 * v216) >> 4;
              *(v218 + 14) = this;
              ++v211;
            }
          }

          ++v210;
        }

        while (v210 <= v209);
        j = v498;
        if (!v211)
        {
          goto LABEL_425;
        }

        v47 = **(v498 + 1346);
        v48 = *v47 | 0x40000000;
        goto LABEL_424;
      case 41:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10224))
        {
          goto LABEL_453;
        }

        *&v520[2] = &__dst[v6];
        *&v520[4] = 0;
        v520[0] = 0;
        BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v274 = BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v275 = 0;
        v276 = 0;
        do
        {
          v277 = BlueFin::GlPeBitReader::uint(v520, 6u);
          this = BlueFin::GlPeBitReader::uint(v520, 0xDu);
          v520[5] = 32 * (v520[5] == 32);
          if (v277 <= 0x1Fu)
          {
            v278 = *(v498 + 1278) + 4 * (v277 & 0x1F);
            *v278 = v277;
            *(v278 + 2) = (8 * this) >> 3;
            ++v276;
          }

          ++v275;
        }

        while (v275 <= v274);
        j = v498;
        if (!v276)
        {
          goto LABEL_425;
        }

        v47 = **(v498 + 1346);
        v48 = *v47 | 0x80000000;
LABEL_424:
        *v47 = v48;
        goto LABEL_425;
      case 42:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10304))
        {
          goto LABEL_453;
        }

        *&v520[2] = &__dst[v6];
        *&v520[4] = 0;
        v520[0] = 0;
        BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v123 = BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v124 = 0;
        v125 = 0;
        do
        {
          v126 = BlueFin::GlPeBitReader::uint(v520, 6u);
          this = BlueFin::GlPeBitReader::uint(v520, 0xDu);
          v520[5] = 32 * (v520[5] == 32);
          if (v126 <= 9u)
          {
            v127 = *(v498 + 1288) + 4 * (v126 & 0xF);
            *v127 = v126;
            *(v127 + 2) = (8 * this) >> 3;
            ++v125;
          }

          ++v124;
        }

        while (v124 <= v123);
        j = v498;
        if (!v125)
        {
          goto LABEL_425;
        }

        v128 = **(v498 + 1346);
        v129 = *(v128 + 4) | 1;
        goto LABEL_729;
      case 43:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10480))
        {
          goto LABEL_453;
        }

        *&v520[2] = &__dst[v6];
        *&v520[4] = 0;
        v520[0] = 0;
        BlueFin::GlPeBitReader::uint(v520, 0x10u);
        **(v498 + 1310) = BlueFin::GlPeBitReader::uint(v520, 0x10u);
        *(*(v498 + 1310) + 4) = BlueFin::GlPeBitReader::uint(v520, 0x20u);
        this = BlueFin::GlPeBitReader::uint(v520, 0x20u);
        j = v498;
        v263 = *(v498 + 1310);
        *(v263 + 8) = this;
        if (*(v480 + 2888) == 1)
        {
          *(v263 + 8) = -this;
        }

        v6 = **(v498 + 1346);
        v45 = *(v6 + 4) | 2;
        goto LABEL_452;
      case 44:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10312))
        {
          goto LABEL_453;
        }

        *&v520[2] = &__dst[v6];
        *&v520[4] = 0;
        v520[0] = 0;
        BlueFin::GlPeBitReader::uint(v520, 0x10u);
        **(v498 + 1289) = BlueFin::GlPeBitReader::uint(v520, 0x10u);
        *(*(v498 + 1289) + 4) = BlueFin::GlPeBitReader::uint(v520, 0x20u);
        this = BlueFin::GlPeBitReader::uint(v520, 0x20u);
        j = v498;
        v272 = *(v498 + 1289);
        *(v272 + 8) = this;
        if (*(v480 + 2888) == 1)
        {
          *(v272 + 8) = -this;
        }

        v6 = **(v498 + 1346);
        v45 = *(v6 + 4) | 4;
        goto LABEL_452;
      case 45:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10456))
        {
          goto LABEL_453;
        }

        *&v520[2] = &__dst[v6];
        *&v520[4] = 0;
        v520[0] = 0;
        BlueFin::GlPeBitReader::uint(v520, 0x10u);
        **(v498 + 1307) = BlueFin::GlPeBitReader::uint(v520, 0x10u);
        *(*(v498 + 1307) + 4) = BlueFin::GlPeBitReader::uint(v520, 0x20u);
        this = BlueFin::GlPeBitReader::uint(v520, 0x20u);
        j = v498;
        v307 = *(v498 + 1307);
        *(v307 + 8) = this;
        if (*(v480 + 2888) == 1)
        {
          *(v307 + 8) = -this;
        }

        v6 = **(v498 + 1346);
        v45 = *(v6 + 4) | 8;
        goto LABEL_452;
      case 46:
        v6 = *(j + 9744);
        v7 = (*v495 - v6);
        if (v7 <= 7)
        {
          goto LABEL_878;
        }

        *(j + 10508) = *&__dst[v6];
        *(j + 10512) = *&__dst[(v6 + 4)];
        *(j + 10516) = 0;
        if (!*(j + 10504))
        {
          *(v480 + 2338) = 0;
        }

        *(j + 10520) = vdup_n_s32(0xFEEDBEEF);
        *(j + 8) = 47;
        *(j + 9744) = v6 + 8;
        *(j + 9760) += 8;
        continue;
      case 47:
        v6 = *(j + 9744);
        v7 = (*v495 - v6);
        if (v7 < 8)
        {
          goto LABEL_878;
        }

        v294 = *&__dst[(v6 + 4)];
        v295 = *(j + 10524);
        if (*&__dst[v6] <= *(j + 9800))
        {
          if (v295 == -17973521)
          {
            *(j + 10520) = v294;
            v296 = 1;
            goto LABEL_525;
          }

LABEL_524:
          v296 = 0;
          goto LABEL_525;
        }

        if (v295 != -17973521)
        {
          goto LABEL_524;
        }

        if (*(j + 10520) != -17973521)
        {
          v294 = *(j + 10520);
        }

        *(j + 10524) = v294;
        v296 = v294 == -17973521;
LABEL_525:
        *(j + 9744) = v6 + 8;
        *(j + 9760) += 8;
        v354 = *(j + 10512);
        v355 = *(j + 10516) + 1;
        *(j + 10516) = v355;
        if (v354 != v355)
        {
          continue;
        }

        *(j + 10516) = 0;
        if (!v296)
        {
          v108 = 48;
          goto LABEL_461;
        }

        if (*(v480 + 2336))
        {
          v356 = "RTO";
        }

        else
        {
          v356 = "LTO";
        }

        v473 = 5382;
        v357 = 47;
LABEL_556:
        GlCustomLog(11, "%s error code %d.%d (%s)\n", v356, v357, v473, "internal");
        goto LABEL_721;
      case 48:
        v6 = *(j + 9744);
        v7 = (*v495 - v6);
        this = __dst;
        if (v7 < 4)
        {
          goto LABEL_879;
        }

        v114 = *&__dst[v6] + 4;
        if (v7 < v114)
        {
          goto LABEL_879;
        }

        v115 = *(j + 9760);
        if (v115 < *(j + 10524))
        {
          goto LABEL_146;
        }

        if (*(j + 10504))
        {
          v520[0] = *(v480 + 2336);
LABEL_553:
          v356 = "LTO";
          if (*(v480 + 2336))
          {
            v356 = "RTO";
          }

          j = v498;
          v357 = *(v498 + 2);
          v473 = 5422;
          goto LABEL_556;
        }

        v374 = *(v480 + 2338);
        if (v374 <= 3)
        {
          v375 = *(v480 + 2336);
          *&v520[2] = &__dst[(v6 + 4)];
          *&v520[4] = 0;
          v520[0] = v375;
          v376 = *(j + 10536);
          if (!v376)
          {
            goto LABEL_553;
          }

          v377 = v376 + 11520 * v374;
          *(v377 + 64) = 0;
          *v377 = BlueFin::GlPeBitReader::uint(v520, 0x20u);
          *(v377 + 56) = BlueFin::GlPeBitReader::uint(v520, 0x20u) * 0.1;
          *(v377 + 8) = BlueFin::GlPeBitReader::uint(v520, 0x20u) * 0.1;
          *(v377 + 16) = BlueFin::GlPeBitReader::uint(v520, 0x20u) * 0.1;
          *(v377 + 24) = BlueFin::GlPeBitReader::uint(v520, 0x20u) * 0.1;
          *(v377 + 32) = BlueFin::GlPeBitReader::uint(v520, 0x20u) * 0.1;
          *(v377 + 40) = BlueFin::GlPeBitReader::uint(v520, 0x20u) * 0.1;
          *(v377 + 48) = BlueFin::GlPeBitReader::uint(v520, 0x20u) * 0.1;
          v378 = BlueFin::GlPeBitReader::uint(v520, 0x20u);
          *(v377 + 68) = v378;
          if ((v378 - 57) < 0xFFFFFFC6)
          {
            goto LABEL_553;
          }

          v379 = 0;
          do
          {
            v380 = *(v377 + 11496) + 200 * v379;
            *v380 = BlueFin::GlPeBitReader::uint(v520, 0x20u) * 0.1;
            *(v380 + 8) = BlueFin::GlPeBitReader::uint(v520, 0x20u) * 0.1;
            *(v380 + 16) = BlueFin::GlPeBitReader::uint(v520, 0x20u) * 0.1;
            *(v380 + 24) = BlueFin::GlPeBitReader::uint(v520, 0x20u) * 0.1;
            *(v380 + 32) = BlueFin::GlPeBitReader::uint(v520, 0x10u);
            v381 = BlueFin::GlPeBitReader::uint(v520, 0x10u);
            *(v380 + 34) = v381;
            if ((v381 & 0xFFF0u) > 0x4F)
            {
              goto LABEL_553;
            }

            v382 = 0;
            do
            {
              this = BlueFin::GlPeBitReader::uint(v520, 0x10u);
              *(v380 + 36 + 2 * v382++) = this;
            }

            while (*(v380 + 34) >= v382);
            v520[5] = 32 * (v520[5] == 32);
            ++v379;
          }

          while (v379 <= *(v377 + 68));
          j = v498;
          if (!*(v498 + 2626))
          {
            ++*(v480 + 2338);
          }

          LODWORD(v6) = *(v498 + 2436);
          v115 = *(v498 + 2440);
        }

LABEL_146:
        *(j + 9744) = v6 + v114;
        *(j + 9760) = v115 + v114;
        v116 = *(j + 10512);
        v117 = *(j + 10516) + 1;
        *(j + 10516) = v117;
        if (v116 != v117)
        {
          continue;
        }

        if (!*(j + 10504) && *(v480 + 2338))
        {
          v118 = 4;
          if (*(v480 + 2336))
          {
            v118 = 8;
            v119 = 0x80000;
          }

          else
          {
            v119 = 16;
          }

          *(**(j + 10768) + v118) |= v119;
        }

        goto LABEL_460;
      case 49:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10664))
        {
          goto LABEL_453;
        }

        v167 = *&__dst[(v6 + 8)];
        v168 = v6 + 12;
        if (!*&__dst[(v6 + 4)])
        {
          goto LABEL_223;
        }

        v502[0] = 0;
        BlueFin::GlCryptoDes::des_set_key((j + 9717), v520, v7, a4);
        *&v525 = *(j + 9725);
        LOBYTE(v526) = 0;
        this = BlueFin::GlCryptoDes::decrypt_update(v520, &__dst[v168], v502, &__dst[v168], v167);
        v169 = &__dst[v168];
        v170 = v502[0] - v169[v502[0] - 1];
        if (v167 < v170 || v167 - v170 > 8)
        {
          goto LABEL_726;
        }

        v167 = v502[0] - v169[v502[0] - 1];
LABEL_223:
        if (v167 >= 0x41)
        {
          goto LABEL_726;
        }

        *&v520[2] = &__dst[v168];
        *&v520[4] = 0;
        v520[0] = 0;
        if (v167)
        {
          v172 = 0;
          v173 = v167;
          do
          {
            this = BlueFin::GlPeBitReader::uint(v520, 8u);
            j = v498;
            *(*(v498 + 1333) + v172++) = this;
          }

          while (v167 != v172);
        }

        else
        {
          v173 = 0;
        }

        *(*(j + 10664) + v173) = 0;
        v128 = **(j + 10768);
        v129 = *(v128 + 4) | 0x40;
LABEL_729:
        *(v128 + 4) = v129;
        goto LABEL_425;
      case 50:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        v297 = *(j + 12);
        if (v297 > 7)
        {
          goto LABEL_453;
        }

        if (((0xE9u >> v297) & 1) == 0)
        {
          goto LABEL_453;
        }

        v298 = *(j + qword_298A40AA0[v297]);
        if (!v298)
        {
          goto LABEL_453;
        }

        v299 = asc_298A40810[v297];
        *&v520[2] = &__dst[v6];
        *&v520[4] = 0;
        v520[0] = 0;
        BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v300 = BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v301 = 0;
        v302 = 0;
        do
        {
          v303 = BlueFin::GlPeBitReader::uint(v520, 6u);
          v304 = BlueFin::GlPeBitReader::uint(v520, 2u);
          v305 = BlueFin::GlPeBitReader::uint(v520, 0xBu);
          this = BlueFin::GlPeBitReader::uint(v520, 0xDu);
          v520[5] = 32 * (v520[5] == 32);
          if (v299 > v303)
          {
            v306 = v298 + 12 * v303;
            *v306 = v303;
            *(v306 + 4) = v304 != 0;
            *(v306 + 8) = v305;
            *(v306 + 10) = this;
            ++v302;
          }

          ++v301;
        }

        while (v301 <= v300);
        j = v498;
        if (!v302)
        {
          goto LABEL_425;
        }

        v128 = **(v498 + 1346);
        v129 = *(v128 + 4) | 0x80;
        goto LABEL_729;
      case 51:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10712))
        {
          goto LABEL_453;
        }

        *&v520[2] = &__dst[v6];
        *&v520[4] = 0;
        v520[0] = 0;
        BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v42 = BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v43 = BlueFin::GlPeBitReader::uint(v520, 0x20u);
        **(v498 + 1339) = BlueFin::GlPeBitReader::uint(v520, 8u);
        *(*(v498 + 1339) + 1) = BlueFin::GlPeBitReader::uint(v520, 8u);
        *(*(v498 + 1339) + 2) = BlueFin::GlPeBitReader::uint(v520, 8u);
        *(*(v498 + 1339) + 3) = BlueFin::GlPeBitReader::uint(v520, 8u);
        *(*(v498 + 1339) + 4) = BlueFin::GlPeBitReader::uint(v520, 8u);
        *(*(v498 + 1339) + 5) = BlueFin::GlPeBitReader::uint(v520, 8u);
        *(*(v498 + 1339) + 6) = BlueFin::GlPeBitReader::uint(v520, 8u);
        this = BlueFin::GlPeBitReader::uint(v520, 8u);
        j = v498;
        v44 = *(v498 + 1339);
        *(v44 + 7) = this;
        *(v44 + 8) = v43 + 604800 * v42;
        v6 = **(v498 + 1346);
        v45 = *(v6 + 4) | 0x100;
        goto LABEL_452;
      case 52:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        if (v7 < *(j + 9756))
        {
          goto LABEL_878;
        }

        v63 = *&__dst[(v6 + 4)];
        *&v502[2] = &__dst[(v6 + 8)];
        *&v503 = 0;
        v502[0] = 0;
        v64 = BlueFin::GlPeBitReader::uint(v502, 6u);
        v65 = 0;
        DWORD1(v503) = 32 * (DWORD1(v503) == 32);
        do
        {
          v66 = BlueFin::GlPeBitReader::uint(v502, 6u);
          v67 = BlueFin::GlPeBitReader::uint(v502, 0xCu);
          v68 = BlueFin::GlPeBitReader::uint(v502, 1u);
          v69 = 0;
          v70 = v66 + 1;
          v71 = v67 << 20;
          v72 = BlueFin::GlPeBitReader::uint(v502, 0xCu) << 20;
          DWORD1(v503) = 32 * (DWORD1(v503) == 32);
          v73 = *(v498 + 2636);
          while (1)
          {
            v520[4] = -1;
            v520[6] = 7;
            v74 = v69;
            if (BlueFin::GlPeLtoReaderBase::getGnssDcbInfo(v498, v520, v69) && v520[4] == v73)
            {
              v75 = v520[6] > 6 || v70 == 0;
              if (!v75 && ((0xE243F0A181320uLL >> (8 * LOBYTE(v520[6]))) & 0x3F) >= v70)
              {
                break;
              }
            }

            ++v69;
            if (v74 >= 0xD)
            {
              goto LABEL_74;
            }
          }

          switch(v73)
          {
            case 0:
              v76 = *(v498 + 1319);
              if (v76)
              {
                goto LABEL_94;
              }

              break;
            case 1:
              v76 = *(v498 + 1320);
              if (v76)
              {
                goto LABEL_94;
              }

              break;
            case 2:
              v76 = *(v498 + 1321);
              if (v76)
              {
                goto LABEL_94;
              }

              break;
            case 3:
              v76 = *(v498 + 1322);
              if (v76)
              {
LABEL_94:
                v81 = *(v76 + 224);
                goto LABEL_105;
              }

              break;
            case 4:
              v78 = *(v498 + 1323);
              if (v78)
              {
                goto LABEL_96;
              }

              break;
            case 5:
              v78 = *(v498 + 1324);
              if (v78)
              {
LABEL_96:
                v81 = *(v78 + 176);
                goto LABEL_105;
              }

              break;
            case 6:
              v80 = *(v498 + 1325);
              if (v80)
              {
                goto LABEL_104;
              }

              break;
            case 7:
              v80 = *(v498 + 1326);
              if (v80)
              {
                goto LABEL_104;
              }

              break;
            case 8:
              v80 = *(v498 + 1327);
              if (v80)
              {
LABEL_104:
                v81 = *(v80 + 96);
                goto LABEL_105;
              }

              break;
            case 9:
              v77 = *(v498 + 1328);
              if (v77)
              {
                goto LABEL_102;
              }

              break;
            case 10:
              v77 = *(v498 + 1329);
              if (v77)
              {
                goto LABEL_102;
              }

              break;
            case 11:
              v77 = *(v498 + 1330);
              if (v77)
              {
LABEL_102:
                v81 = *(v77 + 416);
                goto LABEL_105;
              }

              break;
            case 12:
              v79 = *(v498 + 1331);
              if (v79)
              {
                goto LABEL_98;
              }

              break;
            case 13:
              v79 = *(v498 + 1332);
              if (v79)
              {
LABEL_98:
                v81 = *(v79 + 248);
LABEL_105:
                v82 = v81 + 6 * (v70 - 1);
                if (v82)
                {
                  *v82 = v71 >> 20;
                  *(v82 + 2) = v68;
                  *(v82 + 4) = v72 >> 20;
                }
              }

              break;
            default:
              break;
          }

LABEL_74:
          ++v65;
        }

        while (v65 <= v64);
        v322 = 0;
        j = v498;
        while (1)
        {
          *&v520[2] = 0;
          *&v520[4] = 0x54FFFFFFFFLL;
          v323 = v322;
          this = BlueFin::GlPeLtoReaderBase::getGnssDcbInfo(v498, v520, v322);
          if (this)
          {
            if (v520[4] == v73)
            {
              break;
            }
          }

          ++v322;
          if (v323 >= 0xD)
          {
            goto LABEL_425;
          }
        }

        v327 = *&v520[2];
        if (*&v520[2])
        {
          v328 = v520[5];
          **&v520[2] = v63;
          *(v327 + 4) = v73;
          *(**(v498 + 1346) + 4 * (v328 >> 5)) |= 1 << v328;
        }

LABEL_425:
        v293 = *(j + 9756);
        *(j + 9744) += v293;
        v34 = *(j + 9760) + v293;
LABEL_454:
        *(j + 9760) = v34;
        goto LABEL_460;
      case 53:
        v6 = *(j + 9744);
        v7 = (*(j + 9740) - v6);
        v41 = *(j + 9756);
        if (v7 < v41)
        {
          goto LABEL_878;
        }

        if (!*(j + 10720))
        {
          goto LABEL_453;
        }

        *&v520[2] = &__dst[v6];
        *&v520[4] = 0;
        v520[0] = 0;
        BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v197 = BlueFin::GlPeBitReader::uint(v520, 0x10u);
        v198 = BlueFin::GlPeBitReader::uint(v520, 0x20u);
        **(v498 + 1340) = BlueFin::GlPeBitReader::uint(v520, 0xBu);
        *(*(v498 + 1340) + 2) = (32 * BlueFin::GlPeBitReader::uint(v520, 0xBu)) >> 5;
        this = BlueFin::GlPeBitReader::uint(v520, 0xEu);
        j = v498;
        v199 = *(v498 + 1340);
        *(v199 + 4) = (4 * this) >> 2;
        *(v199 + 8) = v198 + 604800 * v197;
        v6 = **(v498 + 1346);
        v45 = *(v6 + 4) | 0x800000;
LABEL_452:
        *(v6 + 4) = v45;
        v41 = *(j + 9756);
        LODWORD(v6) = *(j + 9744);
LABEL_453:
        *(j + 9744) = v41 + v6;
        v34 = *(j + 9760) + v41;
        goto LABEL_454;
      case 54:
        v6 = *(j + 9744);
        v7 = (*v495 - v6);
        if (v7 > 0xB)
        {
          *(j + 11032) = *&__dst[v6];
          *(j + 11036) = *&__dst[(v6 + 4)];
          *(j + 11040) = *&__dst[(v6 + 8)];
          *(j + 11044) = 0;
          *(j + 11056) = -1;
          *(j + 9744) = v6 + 12;
          *(j + 9760) += 12;
          *(j + 8) = 55;
          BlueFin::GlSetBase::Remove(*(j + 10768), 7);
LABEL_559:
          this = BlueFin::GlSetBase::Remove(*(j + 10768), 10);
          continue;
        }

LABEL_878:
        this = __dst;
LABEL_879:
        v472 = (this + v6);
LABEL_880:
        this = memmove(this, v472, v7);
        *v495 -= *(j + 9744);
        *(j + 9744) = 0;
        return this;
      case 55:
        v35 = *(j + 9744);
        v36 = (*v495 - v35);
        if (v36 <= 0xB)
        {
          goto LABEL_882;
        }

        v520[0] = 0;
        v502[0] = 0;
        v500[0] = 0;
        v312 = BlueFin::GlPeRtoReader::ParseEphFctTbl((j + 10832), __dst, v35, v520, v502, v500);
        j = v498;
        this = BlueFin::GlPeLtoReaderBase::ltoSectionGnssToGnss(*(v498 + 2709));
        v313 = this;
        v314 = **(v498 + 1346);
        v315 = *v314;
        if ((*v314 & 0x400) == 0)
        {
          *v314 = v315 | 0x400;
          v316 = v502[0];
          v317 = v502[0] + 4320;
          v318 = (v502[0] + 4320) / 0x21C0;
          v319 = BlueFin::GNSS2STR(this);
          this = GlCustomLog(12, "%s RTO age %d.%dd (%us)\n", v319, v317 / 0x15180, v318 - 10 * ((429496730 * v318) >> 32), v316);
          v314 = **(v498 + 1346);
          v315 = *v314;
        }

        if ((v315 & 0x80) != 0 || v313 == 7)
        {
          if (v313 == 7)
          {
            goto LABEL_541;
          }

          v320 = *(v498 + 1347);
          if (v320)
          {
LABEL_537:
            v360 = v320 + 988;
            if (*(v360 + 4 * v313) < v520[0])
            {
              *(v360 + 4 * v313) = v520[0];
            }
          }
        }

        else
        {
          v320 = *(v498 + 1347);
          if (v320)
          {
            *(v320 + 4 * v313 + 960) = v520[0];
            v315 = *v314;
          }

          *v314 = v315 | 0x80;
          v321 = *(v498 + 1341);
          if (v321)
          {
            *(v321 + 4 * v313) = v520[0];
          }

          if (v320)
          {
            goto LABEL_537;
          }
        }

        v361 = *(v498 + 1342);
        if (v361)
        {
          *(v361 + 4 * v313) = v520[0];
        }

LABEL_541:
        if (v500[0] == 1)
        {
          if (*(v498 + 2709) == 2)
          {
            v362 = 2500;
          }

          else
          {
            v362 = 7200;
          }

          if (v362 >= *(v498 + 2764))
          {
            *(v498 + 2) = 56;
          }

          else
          {
            GlCustomLog(11, "%s error code %d.%d (%s)\n", "RTO", *(v498 + 2), 6280, "expired");
            BlueFin::GlSetBase::Remove(*(v498 + 1346), 11);
            v363 = *(v498 + 1349);
            if (v363)
            {
              *v363 = 2;
            }

            *(v498 + 2702) = 2;
            *(v498 + 2) = 64;
            v364 = BlueFin::GlPeLtoReaderBase::ltoSectionGnssToGnss(*(v498 + 2709));
            v365 = BlueFin::GNSS2STR(v364);
            v366 = 7200;
            if (*(v498 + 2709) == 2)
            {
              v366 = 2500;
            }

            this = GlCustomLog(12, "%s RTO expired (required %ds, min delta %ds)\n", v365, v366, *(v498 + 2764));
          }
        }

        *(v498 + 2436) += v312;
        *(v498 + 2440) += v312;
        continue;
      case 56:
        v255 = *(j + 9744);
        v7 = (*v495 - v255);
        if (v7 < 4 || (a4 = *&__dst[v255], v256 = a4 + 8, v7 < a4 + 8))
        {
          v472 = &__dst[v255];
          this = __dst;
          goto LABEL_880;
        }

        v257 = *(j + 9760);
        if (*(j + 11048) != v257)
        {
          goto LABEL_358;
        }

        v520[0] = 0;
        if (!BlueFin::GlPeRtoReader::ParseEph((j + 10832), __dst, v255 + 4, a4, v520))
        {
          j = v498;
          GlCustomLog(11, "%s error code %d.%d (%s)\n", "RTO", *(v498 + 2), 6324, "internal");
LABEL_721:
          this = BlueFin::GlSetBase::Remove(*(j + 10768), 11);
          goto LABEL_722;
        }

        j = v498;
        *(**(v498 + 1346) + 4 * (SLOWORD(v520[0]) >> 5)) |= 1 << SLOBYTE(v520[0]);
        this = BlueFin::GlPeLtoReaderBase::updateGetEphFlags(j, *(j + 10836));
        LODWORD(v255) = *(v498 + 2436);
        v257 = *(v498 + 2440);
LABEL_358:
        *(j + 9744) = v255 + v256;
        *(j + 9760) = v257 + v256;
        v249 = *(j + 11040);
        v250 = *(j + 11044) + 1;
        *(j + 11044) = v250;
        goto LABEL_844;
      case 57:
        v35 = *(j + 9744);
        v36 = (*(j + 9740) - v35);
        v308 = *(j + 9756);
        if (v36 < v308)
        {
          goto LABEL_882;
        }

        this = BlueFin::GlPeRtoReader::ParseSyst((j + 10832), __dst, v35, v308);
        if (this != 84)
        {
          *(**(j + 10768) + 4 * (this >> 5)) |= 1 << this;
        }

        goto LABEL_458;
      case 58:
      case 59:
      case 60:
        continue;
      case 61:
        v35 = *(j + 9744);
        v36 = (*(j + 9740) - v35);
        v37 = *(j + 9756);
        if (v36 < v37)
        {
          goto LABEL_882;
        }

        this = BlueFin::GlPeRtoReader::ParseClkErrTgd((j + 10832), __dst, v35, v37);
        goto LABEL_230;
      case 62:
        v35 = *(j + 9744);
        v36 = (*(j + 9740) - v35);
        v174 = *(j + 9756);
        if (v36 < v174)
        {
          goto LABEL_882;
        }

        this = BlueFin::GlPeRtoReader::ParseL5Health((j + 10832), __dst, v35, v174);
LABEL_230:
        if (this == 84)
        {
          goto LABEL_458;
        }

        v39 = *(j + 10768);
        v40 = 1 << this;
        goto LABEL_232;
      case 63:
        v35 = *(j + 9744);
        v36 = (*(j + 9740) - v35);
        v38 = *(j + 9756);
        if (v36 < v38)
        {
LABEL_882:
          this = __dst;
          v472 = &__dst[v35];
          v7 = v36;
          goto LABEL_880;
        }

        this = BlueFin::GlPeRtoReader::ParseGpsIonoModel((j + 10832), __dst, v35, v38);
        if (this != 84)
        {
          v39 = *(j + 10768);
          v40 = 1 << (this & 0x17);
LABEL_232:
          *(*v39 + 8) |= v40;
        }

LABEL_458:
        v224 = *(j + 9744) + *(j + 9756);
        goto LABEL_459;
      case 64:
        v309 = *(j + 9744);
        v310 = *(j + 9740) - v309;
        v254 = *(j + 9756);
        v311 = *(j + 9760);
        if (v310 < v254 - v311)
        {
          *(j + 9760) = v311 + v310;
          *v495 = 0;
          return this;
        }

        *(j + 8) = 1;
        v253 = v254 - v311 + v309;
LABEL_464:
        *(j + 9760) = v254;
        *(j + 9744) = v253;
        continue;
      default:
        return this;
    }
  }
}

BOOL BlueFin::GlPeLtoReaderBase::isDcb(void *a1, int a2, int *a3)
{
  for (i = 0; ; ++i)
  {
    v9 = 0;
    v10 = 0;
    v11 = -1;
    v7 = i;
    if (BlueFin::GlPeLtoReaderBase::getGnssDcbInfo(a1, &v9, i) && v9 == a2)
    {
      break;
    }

    if (v7 >= 0xD)
    {
      return 0;
    }
  }

  if (a3)
  {
    *a3 = v11;
  }

  return v10 != 0;
}

BOOL BlueFin::GlPeLtoReaderBase::getGnssDcbInfo(void *a1, uint64_t a2, unsigned int a3)
{
  v75 = *MEMORY[0x29EDCA608];
  v3 = a1[1319];
  v19[0] = 269487563;
  v20 = v3;
  v21 = 0x2900000000;
  v4 = a1[1320];
  v22 = 0;
  v23 = 269557195;
  v24 = v4;
  v25 = 0x2A00000001;
  v5 = a1[1321];
  v26 = 0;
  v27 = 269626827;
  v28 = v5;
  v29 = 0x2B00000002;
  v6 = a1[1322];
  v30 = 0;
  v31 = 269696459;
  v32 = v6;
  v33 = 0x2C00000003;
  v7 = a1[1323];
  v34 = 0;
  v35 = 538971595;
  v36 = v7;
  v37 = 0x2D00000004;
  v8 = a1[1324];
  v38 = 2;
  v39 = 539041227;
  v40 = v8;
  v41 = 0x2E00000005;
  v9 = a1[1325];
  v42 = 2;
  v43 = 808455627;
  v44 = v9;
  v45 = 0x2F00000006;
  v10 = a1[1326];
  v46 = 3;
  v47 = 808525259;
  v48 = v10;
  v49 = 0x3000000007;
  v11 = a1[1327];
  v50 = 3;
  v51 = 808594891;
  v52 = v11;
  v53 = 0x3100000008;
  v54 = 3;
  v12 = a1[1328];
  v55 = 1077939659;
  v56 = v12;
  v57 = 0x3200000009;
  v58 = 4;
  v13 = a1[1329];
  v59 = 1078009291;
  v60 = v13;
  v61 = 0x330000000ALL;
  v62 = 4;
  v14 = a1[1330];
  v63 = 1078078923;
  v64 = v14;
  v65 = 0x340000000BLL;
  v66 = 4;
  v15 = a1[1331];
  v67 = 1347423691;
  v68 = v15;
  v69 = 0x350000000CLL;
  v70 = 5;
  v16 = a1[1332];
  v71 = 1347493323;
  v72 = v16;
  v73 = 0x360000000DLL;
  v74 = 5;
  if (a3 <= 0xD)
  {
    v17 = &v19[8 * a3];
    if (v17 != a2)
    {
      *a2 = *v17;
      *(a2 + 8) = *(v17 + 1);
      *(a2 + 16) = *(v17 + 2);
      *(a2 + 24) = v17[6];
    }
  }

  return a3 < 0xE;
}

uint64_t BlueFin::GlPeRtoReader::IsRtoEphSection(BlueFin::GlPeRtoReader *this, int a2)
{
  result = 1;
  if (a2 <= 12316349)
  {
    if (a2 > 12307645)
    {
      if (a2 == 12307646)
      {
        return result;
      }

      v3 = -8770;
    }

    else
    {
      if (a2 == 12284350)
      {
        return result;
      }

      v3 = -21826;
    }

    goto LABEL_10;
  }

  if (a2 <= 582741693)
  {
    if (a2 == 12316350)
    {
      return result;
    }

    v3 = -66;
LABEL_10:
    v4 = v3 | 0xBB0000;
    goto LABEL_13;
  }

  if (a2 == 582741694)
  {
    return result;
  }

  v4 = 582746046;
LABEL_13:
  if (a2 != v4)
  {
    return 0;
  }

  return result;
}

BOOL BlueFin::GlPeRtoReader::isRtoEphEnabledAndRequested(BlueFin::GlPeRtoReader *this)
{
  v2 = BlueFin::GlPeLtoReaderBase::ltoSectionGnssToGnss(*(this + 1));
  if (v2 == 7)
  {
    return 0;
  }

  v4 = v2;
  v5 = 1;
  return BlueFin::GlPeRtoReader::getRtoUncmprsdEphBuffer(this, &v4) != 0;
}

uint64_t BlueFin::GlPeRtoReader::CheckRtoEnabled(BlueFin::GlPeRtoReader *this, int a2)
{
  result = 0;
  if (a2 > 286344381)
  {
    if (a2 > 447547837)
    {
      if (a2 > 447592893)
      {
        if (a2 == 447592894)
        {
          if (*(this + 11))
          {
            goto LABEL_61;
          }

          return 0;
        }

        if (a2 != 582741694)
        {
          v5 = 582746046;
          goto LABEL_43;
        }

LABEL_45:
        v6 = 3;
LABEL_59:
        *(this + 1) = v6;
        goto LABEL_60;
      }

      if (a2 == 447547838)
      {
        if (*(this + 10))
        {
          goto LABEL_61;
        }

        return 0;
      }

      if (a2 != 447574462)
      {
        if (a2 != 447584702)
        {
          return result;
        }

        if (*(this + 9))
        {
          goto LABEL_61;
        }

        return 0;
      }

      if (!*(this + 12))
      {
        return 0;
      }
    }

    else if (a2 > 355708576)
    {
      if (a2 == 355708577)
      {
        if (*(this + 21))
        {
          goto LABEL_61;
        }

        return 0;
      }

      if (a2 != 356822689)
      {
        if (a2 != 357936801)
        {
          return result;
        }

        if (*(this + 23))
        {
          goto LABEL_61;
        }

        return 0;
      }

      if (!*(this + 22))
      {
        return 0;
      }
    }

    else
    {
      if (a2 == 286344382)
      {
        if (*(this + 8))
        {
          goto LABEL_61;
        }

        return 0;
      }

      if (a2 != 352366241)
      {
        if (a2 != 354594465)
        {
          return result;
        }

        if (*(this + 20))
        {
          goto LABEL_61;
        }

        return 0;
      }

      if (!*(this + 19))
      {
        return 0;
      }
    }

LABEL_61:
    *this = a2;
    return 1;
  }

  if (a2 > 13406804)
  {
    if (a2 <= 13417257)
    {
      switch(a2)
      {
        case 13406805:
          if (*(this + 15) || *(this + 16))
          {
            goto LABEL_61;
          }

          break;
        case 13417146:
          if (*(this + 13) || *(this + 14))
          {
            goto LABEL_61;
          }

          break;
        case 13417244:
          if (*(this + 18))
          {
            goto LABEL_61;
          }

          break;
        default:
          return result;
      }

      return 0;
    }

    if (a2 == 13417258)
    {
      if (*(this + 17))
      {
        goto LABEL_61;
      }

      return 0;
    }

    if (a2 != 269552240)
    {
      if (a2 != 286340030)
      {
        return result;
      }

      if (*(this + 7))
      {
        goto LABEL_61;
      }

      return 0;
    }

    if (!*(this + 24))
    {
      return 0;
    }

    goto LABEL_61;
  }

  if (a2 > 12311997)
  {
    if (a2 == 12311998)
    {
      *(this + 1) = 2;
      if (*(this + 2))
      {
        goto LABEL_61;
      }

      return 0;
    }

    if (a2 != 12316350)
    {
      v5 = 12320702;
LABEL_43:
      if (a2 != v5)
      {
        return result;
      }

      v6 = 5;
      goto LABEL_59;
    }

    goto LABEL_45;
  }

  if (a2 == 12284350)
  {
    v6 = 7;
    goto LABEL_59;
  }

  if (a2 == 12298942)
  {
    v6 = 6;
    goto LABEL_59;
  }

  if (a2 != 12307646)
  {
    return result;
  }

  *(this + 1) = 0;
LABEL_60:
  if (BlueFin::GlPeRtoReader::isRtoEphEnabledAndRequested(this))
  {
    goto LABEL_61;
  }

  return 0;
}

uint64_t BlueFin::GlPeRtoReader::getRtoUncmprsdEphBuffer(void *a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (!*(a2 + 4))
  {
    return 0;
  }

  v3 = *a2;
  if (*a2 > 6u || v2 > ((0xE243F0A181320uLL >> (8 * v3)) & 0x3F))
  {
    return 0;
  }

  result = 0;
  LOBYTE(v2) = v2 - 1;
  if (v3 > 3)
  {
    switch(v3)
    {
      case 4:
        v6 = a1[4];
        break;
      case 5:
        v6 = a1[5];
        break;
      case 6:
        v6 = a1[6];
        break;
      default:
        return result;
    }
  }

  else if (v3)
  {
    if (v3 == 2)
    {
      v6 = a1[2];
      v2 = v2;
      v7 = 88;
      goto LABEL_19;
    }

    if (v3 != 3)
    {
      return result;
    }

    v6 = a1[3];
  }

  else
  {
    v6 = a1[1];
  }

  v2 = v2;
  v7 = 144;
LABEL_19:
  v8 = v6 + v2 * v7;
  if (v6)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t BlueFin::GlPeLtoReaderBase::ltoSectionGnssToGnss(unsigned int a1)
{
  if (a1 > 7)
  {
    return 7;
  }

  else
  {
    return dword_298A40A48[a1];
  }
}

uint64_t BlueFin::GlPeRtoReader::ParseEphFctTbl(BlueFin::GlPeRtoReader *this, unsigned __int8 *a2, int a3, unsigned int *a4, unsigned int *a5, BOOL *a6)
{
  *a6 = 0;
  v6 = *&a2[a3];
  *a4 = v6;
  v7 = *(this + 55);
  if (v7 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = *(this + 55);
  }

  if (v6 >= v7)
  {
    v6 = *(this + 55);
  }

  v9 = v8 - v6;
  v10 = (v6 ^ 0x80000000) - (v8 ^ 0x80000000);
  if (v9 < v10)
  {
    v10 = v9;
  }

  *a5 = v10;
  if (v10 < *(this + 56))
  {
    *(this + 56) = v10;
    *(this + 54) = *&a2[a3 + 4];
  }

  v11 = *(this + 52);
  v12 = *(this + 53) + 1;
  *(this + 53) = v12;
  if (v11 == v12)
  {
    *(this + 53) = 0;
    v13 = a3 + 12;
    *a6 = 1;
  }

  else
  {
    v13 = a3 + 8;
  }

  return (v13 - a3);
}

BOOL BlueFin::GlPeRtoReader::ParseEph(BlueFin::GlPeRtoReader *a1, uint64_t a2, unsigned int a3, int a4, _DWORD *a5)
{
  if (!a2)
  {
    DeviceFaultNotify("glpe_rtoreader.cpp", 1380, "ParseEph", "pucBuffer != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_rtoreader.cpp", 1380, "pucBuffer != nullptr");
  }

  if (a4 < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = (a2 + a3);
    do
    {
      v11 ^= *v12;
      v13 = 8;
      do
      {
        if (v11)
        {
          v11 = (v11 >> 1) ^ 0x48;
        }

        else
        {
          v11 >>= 1;
        }

        --v13;
      }

      while (v13);
      ++v12;
      ++v10;
    }

    while (v10 != a4);
  }

  v21 = 1;
  v22 = a2 + a3;
  v23 = 0;
  v14 = BlueFin::GlPeBitReader::uint(&v21, 5u);
  v15 = BlueFin::GlPeBitReader::uint(&v21, 0x1Bu);
  if (v15 + v14 >= 0)
  {
    v16 = v15 + v14 + 1;
    do
    {
      BlueFin::GlPeRtoReader::parseSatEph(a1, &v21);
      --v16;
    }

    while (v16);
  }

  v17 = *(a2 + a4 + a3);
  if (v11 == v17)
  {
    *a5 = BlueFin::GlPeRtoReader::getFlag(a1);
  }

  else
  {
    v18 = BlueFin::GlPeLtoReaderBase::ltoSectionGnssToGnss(*(a1 + 1));
    v19 = BlueFin::GNSS2STR(v18);
    GlCustomLog(11, "%s RTO eph section integrity check failure!\n", v19);
  }

  return v11 == v17;
}

uint64_t BlueFin::GlPeBitReader::uint(BlueFin::GlPeBitReader *this, unsigned int a2)
{
  v2 = a2;
  v4 = *(this + 5);
  if (v4)
  {
    v5 = a2 > v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v2 = a2 - v4;
    v6 = (*(this + 4) & (0xFFFFFFFF >> -v4)) << (a2 - v4);
    *(this + 5) = 0;
  }

  else
  {
    v6 = 0;
    result = 0;
    if (v4)
    {
      goto LABEL_9;
    }
  }

  v8 = BlueFin::GlPeBitReader::getword(this);
  *(this + 1) += 4;
  v4 = 32;
  *(this + 4) = v8;
  *(this + 5) = 32;
  result = v6;
LABEL_9:
  v9 = v4 - v2;
  if (v4 >= v2)
  {
    result = ((*(this + 4) & ((-1 << -v2) >> -v4)) >> v9) | result;
    *(this + 5) = v9;
  }

  return result;
}

uint64_t BlueFin::GlPeBitReader::getword(BlueFin::GlPeBitReader *this)
{
  if (*this == 1)
  {
    return **(this + 1);
  }

  if (*this)
  {
    DeviceFaultNotify("glpe_bitreader.cpp", 118, "getword", "false");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bitreader.cpp", 118, "false");
  }

  return bswap32(**(this + 1));
}

double BlueFin::GlPeRtoReader::parseSatEph(BlueFin::GlPeRtoReader *this, BlueFin::GlPeBitReader *a2)
{
  v4 = *(this + 1);
  if (v4 <= 7)
  {
    v19 = v2;
    v20 = v3;
    if (((1 << v4) & 0xE9) != 0)
    {
      memset(&v18[4], 0, 140);
      *v18 = 255;
      if (v4 == 3 || !v4)
      {
        BlueFin::GlPeRtoReader::load_rto_ephemeris_elements(this, v18, a2);
        v4 = *(this + 1);
      }

      if (v4 == 5)
      {
        BlueFin::GlPeRtoReader::load_rto_bdsephemeris_elements(this, v18, a2);
        v4 = *(this + 1);
      }

      if (v4 == 6)
      {
        BlueFin::GlPeRtoReader::load_rto_galephemeris_elements(this, v18, a2);
        v4 = *(this + 1);
      }

      if (v4 == 7)
      {
        BlueFin::GlPeRtoReader::load_rto_nicephemeris_elements(this, v18, a2);
      }

      v7 = v18[0];
      if ((BlueFin::GlPeRtoReader::isEphSatBad(this, *v18) & 1) == 0)
      {
        *&v18[12] = 0;
        *&v18[28] = xmmword_298A40B30;
        *&v18[44] = 51966;
        *&v18[104] = 49344;
        RtoUncmprsdEphBuffer = BlueFin::GlPeRtoReader::getRtoUncmprsdEphBuffer(this, v7);
        if (RtoUncmprsdEphBuffer)
        {
          v10 = *&v18[112];
          RtoUncmprsdEphBuffer[6] = *&v18[96];
          RtoUncmprsdEphBuffer[7] = v10;
          RtoUncmprsdEphBuffer[8] = *&v18[128];
          v11 = *&v18[48];
          RtoUncmprsdEphBuffer[2] = *&v18[32];
          RtoUncmprsdEphBuffer[3] = v11;
          v12 = *&v18[80];
          RtoUncmprsdEphBuffer[4] = *&v18[64];
          RtoUncmprsdEphBuffer[5] = v12;
          v8 = *&v18[16];
          *RtoUncmprsdEphBuffer = *v18;
          RtoUncmprsdEphBuffer[1] = v8;
        }
      }
    }

    else if (v4 == 2)
    {
      BlueFin::GlPeRtoReader::load_rto_gloephemeris_elements(this, v18, a2);
      v13 = v18[60];
      if ((BlueFin::GlPeRtoReader::isEphSatBad(this, v18[60]) & 1) == 0)
      {
        v14 = BlueFin::GlPeRtoReader::getRtoUncmprsdEphBuffer(this, v13);
        if (v14)
        {
          v15 = *&v18[48];
          *(v14 + 32) = *&v18[32];
          *(v14 + 48) = v15;
          *(v14 + 64) = *&v18[64];
          *(v14 + 80) = *&v18[80];
          *&v8 = *v18;
          v16 = *&v18[16];
          *v14 = *v18;
          *(v14 + 16) = v16;
        }
      }
    }
  }

  return *&v8;
}

void BlueFin::GlPeRtoReader::load_rto_ephemeris_elements(int a1, uint64_t a2, BlueFin::GlPeBitReader *this)
{
  v5 = 0;
  v11 = *MEMORY[0x29EDCA608];
  do
  {
    v6 = BlueFin::GlPeRtoReader::rto_ephemeris_elements[v5 * 4];
    v7 = BlueFin::GlPeBitReader::uint(this, v6 >> 1);
    v9 = (v7 << -(v6 >> 1)) >> -(v6 >> 1);
    if ((v6 & 1) == 0)
    {
      v9 = v7;
    }

    v10[v5++] = v9;
  }

  while (v5 != 30);
  BlueFin::GlPeRtoReader::rto_eph_element_array_to_structure(v7, v8, v10, a2);
}

uint64_t BlueFin::GlPeRtoReader::isEphSatBad(BlueFin::GlPeRtoReader *this, int a2)
{
  if (a2 == 255)
  {
    return 1;
  }

  v14 = v2;
  v15 = v3;
  v5 = a2;
  v7 = BlueFin::GlPeLtoReaderBase::ltoSectionGnssToGnss(*(this + 1));
  result = 1;
  if (v7 != 7)
  {
    v8 = *(this + 29);
    if (!v8)
    {
      return 0;
    }

    v9 = v7;
    v10 = v5 + 1;
    v11 = BlueFin::GlGnssSet::operator()(v8 + 1024, v7);
    BlueFin::GlSetBase::GlSetBase(&v12, v13, 2u, v11);
    if (((*(v12 + 4 * (v10 >> 5)) >> (v10 & 0x1F)) & 1) == 0)
    {
      if (BlueFin::GlAidMask::AllowSV(*(this + 29), v9, v10))
      {
        return 0;
      }
    }
  }

  return result;
}

void BlueFin::GlPeRtoReader::rto_eph_element_array_to_structure(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  *a4 = *a3;
  *(a4 + 4) = a3[1];
  *(a4 + 16) = a3[2];
  *(a4 + 20) = a3[3];
  *(a4 + 24) = a3[4];
  *(a4 + 48) = a3[5];
  *(a4 + 52) = a3[6];
  *(a4 + 56) = a3[7];
  *(a4 + 60) = a3[8];
  *(a4 + 64) = a3[9];
  *(a4 + 68) = a3[10];
  *(a4 + 72) = a3[11];
  *(a4 + 76) = a3[12];
  *(a4 + 80) = a3[13];
  *(a4 + 84) = a3[14];
  *(a4 + 88) = a3[15];
  *(a4 + 92) = a3[16];
  *(a4 + 96) = a3[17];
  *(a4 + 100) = a3[18];
  *(a4 + 108) = a3[19];
  *(a4 + 112) = a3[20];
  *(a4 + 116) = a3[21];
  *(a4 + 120) = a3[22];
  *(a4 + 124) = a3[23];
  *(a4 + 128) = a3[24];
  *(a4 + 132) = a3[25];
  *(a4 + 136) = a3[26];
  *(a4 + 140) = a3[27];
}

uint64_t BlueFin::GlPeRtoReader::getRtoUncmprsdEphBuffer(BlueFin::GlPeRtoReader *this, char a2)
{
  v4 = BlueFin::GlPeLtoReaderBase::ltoSectionGnssToGnss(*(this + 1));
  if (v4 == 7)
  {
    return 0;
  }

  v6 = v4;
  v7 = a2 + 1;
  return BlueFin::GlPeRtoReader::getRtoUncmprsdEphBuffer(this, &v6);
}

uint64_t BlueFin::GlAidMask::AllowSV(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 64) != 1)
  {
    return 1;
  }

  v3 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[a2];
  if (((*(a1 + 8 * v3) >> (a3 - 1)) & 1) == 0)
  {
    return 1;
  }

  GlCustomLog(14, "AidMask.%s: suppress %u %u\n", *(a1 + 72), v3, a3);
  return 0;
}

uint64_t BlueFin::GlPeLtoReaderBase::updateGetEphFlags(uint64_t a1, unsigned int a2)
{
  result = BlueFin::GlPeLtoReaderBase::ltoSectionGnssToGnss(a2);
  if (result <= 5 && ((0x3Du >> result) & 1) != 0)
  {
    ***(a1 + 10768) |= dword_298A40AE0[result];
  }

  return result;
}

uint64_t BlueFin::GlPeRtoReader::getFlag(BlueFin::GlPeRtoReader *this)
{
  v1 = *this;
  result = 84;
  if (v1 > 13406804)
  {
    if (v1 > 447547837)
    {
      if (v1 <= 447592893)
      {
        v3 = 447547838;
        v4 = 65;
        v5 = 447574462;
        v6 = 67;
        v7 = v1 == 447584702;
        v8 = 63;
        goto LABEL_8;
      }

      if (v1 == 447592894)
      {
        return 64;
      }

      if (v1 != 582741694)
      {
        v21 = 582746046;
LABEL_50:
        if (v1 == v21)
        {
          return 59;
        }

        return result;
      }

      return 58;
    }

    v10 = 13417257;
    if (v1 == 286344382)
    {
      v18 = 62;
    }

    else
    {
      v18 = 84;
    }

    if (v1 == 286340030)
    {
      v19 = 61;
    }

    else
    {
      v19 = v18;
    }

    if (v1 == 13417258)
    {
      v13 = 75;
    }

    else
    {
      v13 = v19;
    }

    v14 = 13406805;
    v15 = 74;
    v16 = v1 == 13417146;
    v17 = 73;
  }

  else
  {
    if (v1 > 12311832)
    {
      if (v1 <= 12316349)
      {
        v3 = 12311833;
        v4 = 69;
        v5 = 12311998;
        v6 = 57;
        v7 = v1 == 12316185;
        v8 = 70;
LABEL_8:
        if (!v7)
        {
          v8 = 84;
        }

        if (v1 == v5)
        {
          v9 = v6;
        }

        else
        {
          v9 = v8;
        }

        if (v1 == v3)
        {
          return v4;
        }

        else
        {
          return v9;
        }
      }

      if (v1 != 12316350)
      {
        if (v1 == 12320537)
        {
          return 71;
        }

        v21 = 12320702;
        goto LABEL_50;
      }

      return 58;
    }

    v10 = 12298941;
    if (v1 == 12307646)
    {
      v11 = 56;
    }

    else
    {
      v11 = 84;
    }

    if (v1 == 12307481)
    {
      v12 = 68;
    }

    else
    {
      v12 = v11;
    }

    if (v1 == 12298942)
    {
      v13 = 60;
    }

    else
    {
      v13 = v12;
    }

    v14 = 12284350;
    v15 = 66;
    v16 = v1 == 12298777;
    v17 = 72;
  }

  if (!v16)
  {
    v17 = 84;
  }

  if (v1 == v14)
  {
    v20 = v15;
  }

  else
  {
    v20 = v17;
  }

  if (v1 <= v10)
  {
    return v20;
  }

  else
  {
    return v13;
  }
}

void BlueFin::GlPeRtoReader::load_rto_bdsephemeris_elements(int a1, uint64_t a2, BlueFin::GlPeBitReader *this)
{
  v5 = 0;
  v11 = *MEMORY[0x29EDCA608];
  do
  {
    v6 = BlueFin::GlPeRtoReader::rto_bdsephemeris_elements[v5 * 4];
    v7 = BlueFin::GlPeBitReader::uint(this, v6 >> 1);
    v9 = (v7 << -(v6 >> 1)) >> -(v6 >> 1);
    if ((v6 & 1) == 0)
    {
      v9 = v7;
    }

    v10[v5++] = v9;
  }

  while (v5 != 30);
  BlueFin::GlPeRtoReader::rto_eph_element_array_to_structure(v7, v8, v10, a2);
}

void BlueFin::GlPeRtoReader::load_rto_galephemeris_elements(int a1, uint64_t a2, BlueFin::GlPeBitReader *this)
{
  v5 = 0;
  v11 = *MEMORY[0x29EDCA608];
  do
  {
    v6 = BlueFin::GlPeRtoReader::rto_galephemeris_elements[v5 * 4];
    v7 = BlueFin::GlPeBitReader::uint(this, v6 >> 1);
    v9 = (v7 << -(v6 >> 1)) >> -(v6 >> 1);
    if ((v6 & 1) == 0)
    {
      v9 = v7;
    }

    v10[v5++] = v9;
  }

  while (v5 != 30);
  BlueFin::GlPeRtoReader::rto_eph_element_array_to_structure(v7, v8, v10, a2);
}

void BlueFin::GlPeRtoReader::load_rto_nicephemeris_elements(int a1, uint64_t a2, BlueFin::GlPeBitReader *this)
{
  v5 = 0;
  v11 = *MEMORY[0x29EDCA608];
  do
  {
    v6 = BlueFin::GlPeRtoReader::rto_nicephemeris_elements[v5 * 4];
    v7 = BlueFin::GlPeBitReader::uint(this, v6 >> 1);
    v9 = (v7 << -(v6 >> 1)) >> -(v6 >> 1);
    if ((v6 & 1) == 0)
    {
      v9 = v7;
    }

    v10[v5++] = v9;
  }

  while (v5 != 30);
  BlueFin::GlPeRtoReader::rto_eph_element_array_to_structure(v7, v8, v10, a2);
}

uint64_t BlueFin::GlPeRtoReader::IsRtoSystSection(BlueFin::GlPeRtoReader *this, int a2)
{
  result = 1;
  if (a2 > 447574461)
  {
    if (a2 != 447574462 && a2 != 447584702)
    {
      v3 = -17986;
LABEL_8:
      if (a2 != (v3 | 0x1AAD0000))
      {
        return 0;
      }
    }
  }

  else if (a2 != 286340030 && a2 != 286344382)
  {
    v3 = 2494;
    goto LABEL_8;
  }

  return result;
}

uint64_t BlueFin::GlPeRtoReader::ParseSyst(BlueFin::GlPeRtoReader *this, unsigned __int8 *a2, int a3, int a4)
{
  if (!a2)
  {
    DeviceFaultNotify("glpe_rtoreader.cpp", 1721, "ParseSyst", "pucBuffer != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_rtoreader.cpp", 1721, "pucBuffer != nullptr");
  }

  v4 = &a2[a3];
  v12 = 1;
  v13 = v4;
  v14 = 0;
  if (a4 - 4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v6 ^= *v4;
      v7 = 8;
      do
      {
        if (v6)
        {
          v6 = (v6 >> 1) ^ 0x48;
        }

        else
        {
          v6 >>= 1;
        }

        --v7;
      }

      while (v7);
      ++v4;
      ++v5;
    }

    while (v5 != a4 - 4);
  }

  v8 = *this;
  v9 = 84;
  if (*this > 447574461)
  {
    switch(v8)
    {
      case 447574462:
        return BlueFin::GlPeRtoReader::parseNgto(this, &v12, v6);
      case 447584702:
        return BlueFin::GlPeRtoReader::parseGgto(this, &v12, v6);
      case 447592894:
        return BlueFin::GlPeRtoReader::parseBgto(this, &v12, v6);
    }
  }

  else
  {
    switch(v8)
    {
      case 286340030:
        return BlueFin::GlPeRtoReader::parseGpsUtc(this, &v12, v6);
      case 286344382:
        return BlueFin::GlPeRtoReader::parseGloSyst(this, &v12, v6);
      case 447547838:
        return BlueFin::GlPeRtoReader::parseQgto(this, &v12, v6);
    }
  }

  return v9;
}

uint64_t BlueFin::GlPeRtoReader::parseGpsUtc(BlueFin::GlPeRtoReader *this, BlueFin::GlPeBitReader *a2, int a3)
{
  if (!*(this + 7))
  {
    return 84;
  }

  BlueFin::GlPeBitReader::uint(a2, 0x20u);
  **(this + 7) = (BlueFin::GlPeBitReader::uint(a2, 0x18u) << 8) >> 8;
  *(*(this + 7) + 4) = BlueFin::GlPeBitReader::uint(a2, 0x20u);
  *(*(this + 7) + 10) = BlueFin::GlPeBitReader::uint(a2, 8u);
  *(*(this + 7) + 8) = BlueFin::GlPeBitReader::uint(a2, 8u);
  *(*(this + 7) + 9) = BlueFin::GlPeBitReader::uint(a2, 8u);
  *(*(this + 7) + 11) = BlueFin::GlPeBitReader::uint(a2, 8u);
  *(*(this + 7) + 12) = BlueFin::GlPeBitReader::uint(a2, 8u);
  *(*(this + 7) + 13) = BlueFin::GlPeBitReader::uint(a2, 8u);
  if (*(a2 + 5) != 32)
  {
    *(a2 + 5) = 0;
  }

  if (BlueFin::GlPeBitReader::uint(a2, 0x20u) == a3)
  {
    return 61;
  }

  GlCustomLog(11, "RTO Gps Utc section integrity check failure!\n");
  return 84;
}

uint64_t BlueFin::GlPeRtoReader::parseGloSyst(BlueFin::GlPeRtoReader *this, BlueFin::GlPeBitReader *a2, int a3)
{
  if (!*(this + 8))
  {
    return 84;
  }

  BlueFin::GlPeBitReader::uint(a2, 0x20u);
  **(this + 8) = BlueFin::GlPeBitReader::uint(a2, 5u);
  *(*(this + 8) + 2) = BlueFin::GlPeBitReader::uint(a2, 0xBu);
  v6 = BlueFin::GlPeBitReader::uint(a2, 0x16u);
  v7 = *(this + 8);
  *(v7 + 8) = v6 << 10 >> 10;
  *(v7 + 12) = 1;
  *(*(this + 8) + 13) = (BlueFin::GlPeBitReader::uint(a2, 2u) << 30) >> 30;
  v8 = BlueFin::GlPeBitReader::uint(a2, 0x20u);
  v9 = *(this + 8);
  *(v9 + 4) = v8;
  *(v9 + 14) = 1;
  *(*(this + 8) + 16) = (32 * BlueFin::GlPeBitReader::uint(a2, 0xBu)) >> 5;
  *(*(this + 8) + 18) = (BlueFin::GlPeBitReader::uint(a2, 0xAu) << 6) >> 6;
  if (*(a2 + 5) != 32)
  {
    *(a2 + 5) = 0;
  }

  if (BlueFin::GlPeBitReader::uint(a2, 0x20u) == a3)
  {
    return 62;
  }

  GlCustomLog(11, "RTO Glo Sys Time section integrity check failure!\n");
  return 84;
}

uint64_t BlueFin::GlPeRtoReader::parseQgto(BlueFin::GlPeRtoReader *this, BlueFin::GlPeBitReader *a2, int a3)
{
  if (!*(this + 10))
  {
    return 84;
  }

  BlueFin::GlPeBitReader::uint(a2, 0x10u);
  **(this + 10) = BlueFin::GlPeBitReader::uint(a2, 0x10u);
  *(*(this + 10) + 4) = BlueFin::GlPeBitReader::uint(a2, 0x20u);
  v6 = BlueFin::GlPeBitReader::uint(a2, 0x20u);
  v7 = *(this + 10);
  *(v7 + 8) = v6;
  if (*(this + 240) == 1)
  {
    *(v7 + 8) = -v6;
  }

  if (BlueFin::GlPeBitReader::uint(a2, 0x20u) == a3)
  {
    return 65;
  }

  GlCustomLog(11, "RTO Qzs Sys Time section integrity check failure!\n");
  return 84;
}

uint64_t BlueFin::GlPeRtoReader::parseBgto(BlueFin::GlPeRtoReader *this, BlueFin::GlPeBitReader *a2, int a3)
{
  if (!*(this + 11))
  {
    return 84;
  }

  BlueFin::GlPeBitReader::uint(a2, 0x10u);
  **(this + 11) = BlueFin::GlPeBitReader::uint(a2, 0x10u);
  *(*(this + 11) + 4) = BlueFin::GlPeBitReader::uint(a2, 0x20u);
  v6 = BlueFin::GlPeBitReader::uint(a2, 0x20u);
  v7 = *(this + 11);
  *(v7 + 8) = v6;
  if (*(this + 240) == 1)
  {
    *(v7 + 8) = -v6;
  }

  if (BlueFin::GlPeBitReader::uint(a2, 0x20u) == a3)
  {
    return 64;
  }

  GlCustomLog(11, "RTO Bds Sys Time section integrity check failure!\n");
  return 84;
}

uint64_t BlueFin::GlPeRtoReader::parseGgto(BlueFin::GlPeRtoReader *this, BlueFin::GlPeBitReader *a2, int a3)
{
  if (!*(this + 9))
  {
    return 84;
  }

  BlueFin::GlPeBitReader::uint(a2, 0x10u);
  **(this + 9) = BlueFin::GlPeBitReader::uint(a2, 0x10u);
  *(*(this + 9) + 4) = BlueFin::GlPeBitReader::uint(a2, 0x20u);
  v6 = BlueFin::GlPeBitReader::uint(a2, 0x20u);
  v7 = *(this + 9);
  *(v7 + 8) = v6;
  if (*(this + 240) == 1)
  {
    *(v7 + 8) = -v6;
  }

  if (BlueFin::GlPeBitReader::uint(a2, 0x20u) == a3)
  {
    return 63;
  }

  GlCustomLog(11, "RTO Gal Sys Time section integrity check failure!\n");
  return 84;
}

uint64_t BlueFin::GlPeRtoReader::parseNgto(BlueFin::GlPeRtoReader *this, BlueFin::GlPeBitReader *a2, int a3)
{
  if (!*(this + 12))
  {
    return 84;
  }

  BlueFin::GlPeBitReader::uint(a2, 0x10u);
  **(this + 12) = BlueFin::GlPeBitReader::uint(a2, 0x10u);
  *(*(this + 12) + 4) = BlueFin::GlPeBitReader::uint(a2, 0x20u);
  v6 = BlueFin::GlPeBitReader::uint(a2, 0x20u);
  v7 = *(this + 12);
  *(v7 + 8) = v6;
  if (*(this + 240) == 1)
  {
    *(v7 + 8) = -v6;
  }

  if (BlueFin::GlPeBitReader::uint(a2, 0x20u) == a3)
  {
    return 67;
  }

  GlCustomLog(11, "RTO Nic Sys Time section integrity check failure!\n");
  return 84;
}

uint64_t BlueFin::GlPeRtoReader::ParseClkErrTgd(BlueFin::GlPeRtoReader *this, unsigned __int8 *a2, int a3, int a4)
{
  if (!a2)
  {
    DeviceFaultNotify("glpe_rtoreader.cpp", 1932, "ParseClkErrTgd", "pucBuffer != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_rtoreader.cpp", 1932, "pucBuffer != nullptr");
  }

  v4 = &a2[a3];
  v13 = 1;
  v14 = v4;
  v15 = 0;
  if (a4 - 4 < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v6 ^= *v4;
      v7 = 8;
      do
      {
        if (v6)
        {
          v6 = (v6 >> 1) ^ 0x48;
        }

        else
        {
          v6 >>= 1;
        }

        --v7;
      }

      while (v7);
      ++v4;
      ++v5;
    }

    while (v5 != a4 - 4);
  }

  v8 = *this;
  v9 = 84;
  if (*this > 13417243)
  {
    if (v8 == 13417244)
    {
      v10 = !BlueFin::GlPeRtoReader::parseClkErrTgd(this, &v13, *(this + 18), v6, 0x3Fu);
      v11 = 76;
    }

    else
    {
      if (v8 != 13417258)
      {
        return v9;
      }

      v10 = !BlueFin::GlPeRtoReader::parseClkErrTgd(this, &v13, *(this + 17), v6, 0x3Fu);
      v11 = 75;
    }
  }

  else if (v8 == 13406805)
  {
    v10 = !BlueFin::GlPeRtoReader::parseClkErrTgd(this, &v13, *(this + 15), *(this + 16), v6, 0xAu);
    v11 = 74;
  }

  else
  {
    if (v8 != 13417146)
    {
      return v9;
    }

    v10 = !BlueFin::GlPeRtoReader::parseClkErrTgd(this, &v13, *(this + 13), *(this + 14), v6, 0x20u);
    v11 = 73;
  }

  if (v10)
  {
    return 84;
  }

  else
  {
    return v11;
  }
}

BOOL BlueFin::GlPeRtoReader::parseClkErrTgd(int a1, BlueFin::GlPeBitReader *this, uint64_t a3, uint64_t a4, int a5, unsigned int a6)
{
  if (!(a3 | a4))
  {
    return 0;
  }

  BlueFin::GlPeBitReader::uint(this, 0x10u);
  v23 = BlueFin::GlPeBitReader::uint(this, 0x10u);
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = BlueFin::GlPeBitReader::uint(this, 6u);
    v10 = BlueFin::GlPeBitReader::uint(this, 4u);
    v11 = v10;
    v30 = v7;
    if (v10 == 1)
    {
      goto LABEL_6;
    }

    if (!v10)
    {
      v11 = -1;
LABEL_6:
      v12 = v9;
      goto LABEL_8;
    }

    v11 = -1;
    v12 = -1;
LABEL_8:
    v26 = BlueFin::GlPeBitReader::uint(this, 0x1Au);
    v25 = BlueFin::GlPeBitReader::uint(this, 0x14u);
    v13 = BlueFin::GlPeBitReader::uint(this, 0xAu);
    v14 = BlueFin::GlPeBitReader::uint(this, 0xBu);
    v15 = BlueFin::GlPeBitReader::uint(this, 0xDu);
    v16 = BlueFin::GlPeBitReader::uint(this, 0xDu);
    v17 = BlueFin::GlPeBitReader::uint(this, 0xDu);
    v24 = BlueFin::GlPeBitReader::uint(this, 0xDu);
    v18 = BlueFin::GlPeBitReader::uint(this, 0xAu);
    if (*(this + 5) != 32)
    {
      *(this + 5) = 0;
    }

    if (a3 && v9 < a6)
    {
      v19 = a3 + 32 * v9;
      *v19 = v9;
      *(v19 + 4) = v11;
      *(v19 + 8) = v26 << 6 >> 6;
      *(v19 + 12) = v25 << 12 >> 12;
      *(v19 + 16) = v13 << 22 >> 22;
      *(v19 + 20) = v14;
      *(v19 + 22) = (8 * v15) >> 3;
      *(v19 + 24) = (8 * v16) >> 3;
      *(v19 + 26) = 1;
      *(v19 + 28) = (8 * v17) >> 3;
      *(v19 + 30) = v18;
      v7 = v30 + 1;
    }

    else
    {
      v7 = v30;
    }

    if (a4)
    {
      if (v12 < a6)
      {
        v20 = a4 + 4 * v12;
        *v20 = v12;
        *(v20 + 2) = (8 * v24) >> 3;
        ++v7;
      }
    }

    ++v8;
  }

  while (v8 <= v23);
  if (BlueFin::GlPeBitReader::uint(this, 0x20u) == a5)
  {
    return v7 != 0;
  }

  GlCustomLog(11, "RTO Clk Err TGD section integrity check failure!\n");
  return 0;
}

BOOL BlueFin::GlPeRtoReader::parseClkErrTgd(int a1, BlueFin::GlPeBitReader *this, uint64_t a3, int a4, unsigned int a5)
{
  if (a3)
  {
    BlueFin::GlPeBitReader::uint(this, 0x10u);
    v7 = BlueFin::GlPeBitReader::uint(this, 0x10u);
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = BlueFin::GlPeBitReader::uint(this, 6u);
      v11 = BlueFin::GlPeBitReader::uint(this, 4u);
      if (v11)
      {
        v12 = 2 * (v11 == 1);
      }

      else
      {
        v12 = 1;
      }

      v13 = BlueFin::GlPeBitReader::uint(this, 0xBu);
      v14 = BlueFin::GlPeBitReader::uint(this, 0xCu);
      v15 = BlueFin::GlPeBitReader::uint(this, 0xCu);
      v16 = BlueFin::GlPeBitReader::uint(this, 0xDu);
      if (*(this + 5) != 32)
      {
        *(this + 5) = 0;
      }

      if (a5 > v10 && (v12 - 1) <= 1)
      {
        v17 = a3 + 16 * v10;
        *v17 = v10;
        *(v17 + 4) = v12;
        *(v17 + 8) = v13;
        *(v17 + 10) = (16 * v14) >> 4;
        *(v17 + 12) = (16 * v15) >> 4;
        *(v17 + 14) = v16;
        ++v8;
      }

      ++v9;
    }

    while (v9 <= v7);
    if (BlueFin::GlPeBitReader::uint(this, 0x20u) == a4)
    {
      return v8 != 0;
    }

    GlCustomLog(11, "RTO BDS Clk Err TGD section integrity check failure!\n");
  }

  return 0;
}

uint64_t BlueFin::GlPeRtoReader::ParseL5Health(BlueFin::GlPeRtoReader *this, unsigned __int8 *a2, int a3, int a4)
{
  if (!a2)
  {
    DeviceFaultNotify("glpe_rtoreader.cpp", 2030, "ParseL5Health", "pucBuffer != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_rtoreader.cpp", 2030, "pucBuffer != nullptr");
  }

  v4 = &a2[a3];
  v15 = 1;
  v16 = v4;
  v17 = 0;
  v5 = a4 - 4;
  if (a4 - 4 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v7 ^= *v4;
      v8 = 8;
      do
      {
        if (v7)
        {
          v7 = (v7 >> 1) ^ 0x48;
        }

        else
        {
          v7 >>= 1;
        }

        --v8;
      }

      while (v8);
      ++v4;
      ++v6;
    }

    while (v6 != v5);
  }

  v9 = *this;
  v10 = 84;
  if (*this <= 355708576)
  {
    if (v9 == 352366241)
    {
      v11 = 77;
      v12 = 32;
      v13 = 152;
    }

    else
    {
      if (v9 != 354594465)
      {
        return v10;
      }

      v11 = 78;
      v12 = 10;
      v13 = 160;
    }
  }

  else
  {
    switch(v9)
    {
      case 355708577:
        v11 = 79;
        v12 = 63;
        v13 = 168;
        break;
      case 356822689:
        v11 = 80;
        v12 = 36;
        v13 = 176;
        break;
      case 357936801:
        v11 = 81;
        v12 = 14;
        v13 = 184;
        break;
      default:
        return v10;
    }
  }

  if (BlueFin::GlPeRtoReader::parseL5Health(this, &v15, *(this + v13), v7, v12))
  {
    return v11;
  }

  else
  {
    return 84;
  }
}

BOOL BlueFin::GlPeRtoReader::parseL5Health(int a1, BlueFin::GlPeBitReader *this, uint64_t a3, int a4, unsigned int a5)
{
  if (!a3)
  {
    return 0;
  }

  BlueFin::GlPeBitReader::uint(this, 0x10u);
  v8 = BlueFin::GlPeBitReader::uint(this, 0x10u);
  v9 = 0;
  v10 = 0;
  do
  {
    v11 = BlueFin::GlPeBitReader::uint(this, 6u);
    v12 = BlueFin::GlPeBitReader::uint(this, 2u);
    v13 = BlueFin::GlPeBitReader::uint(this, 0xBu);
    v14 = BlueFin::GlPeBitReader::uint(this, 0xDu);
    if (*(this + 5) != 32)
    {
      *(this + 5) = 0;
    }

    if (a5 > v11)
    {
      v15 = a3 + 12 * v11;
      *v15 = v11;
      *(v15 + 4) = v12 != 0;
      *(v15 + 8) = v13;
      *(v15 + 10) = v14;
      ++v9;
    }

    ++v10;
  }

  while (v10 <= v8);
  if (BlueFin::GlPeBitReader::uint(this, 0x20u) == a4)
  {
    return v9 != 0;
  }

  GlCustomLog(11, "RTO L5 Health section integrity check failure!\n");
  return 0;
}

uint64_t BlueFin::GlPeRtoReader::ParseGpsIonoModel(BlueFin::GlPeRtoReader *this, unsigned __int8 *a2, int a3, int a4)
{
  if (!a2)
  {
    DeviceFaultNotify("glpe_rtoreader.cpp", 2074, "ParseGpsIonoModel", "pucBuffer != nullptr");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_rtoreader.cpp", 2074, "pucBuffer != nullptr");
  }

  v5 = &a2[a3];
  v14 = 1;
  v15 = v5;
  v16 = 0;
  if (a4 - 4 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v7 ^= *v5;
      v8 = 8;
      do
      {
        if (v7)
        {
          v7 = (v7 >> 1) ^ 0x48;
        }

        else
        {
          v7 >>= 1;
        }

        --v8;
      }

      while (v8);
      ++v5;
      ++v6;
    }

    while (v6 != a4 - 4);
  }

  if (*this == 269552240 && *(this + 24))
  {
    BlueFin::GlPeBitReader::uint(&v14, 0x10u);
    v9 = BlueFin::GlPeBitReader::uint(&v14, 0x10u);
    v10 = BlueFin::GlPeBitReader::uint(&v14, 0x20u);
    **(this + 24) = BlueFin::GlPeBitReader::uint(&v14, 8u);
    *(*(this + 24) + 1) = BlueFin::GlPeBitReader::uint(&v14, 8u);
    *(*(this + 24) + 2) = BlueFin::GlPeBitReader::uint(&v14, 8u);
    *(*(this + 24) + 3) = BlueFin::GlPeBitReader::uint(&v14, 8u);
    *(*(this + 24) + 4) = BlueFin::GlPeBitReader::uint(&v14, 8u);
    *(*(this + 24) + 5) = BlueFin::GlPeBitReader::uint(&v14, 8u);
    *(*(this + 24) + 6) = BlueFin::GlPeBitReader::uint(&v14, 8u);
    v11 = BlueFin::GlPeBitReader::uint(&v14, 8u);
    v12 = *(this + 24);
    *(v12 + 7) = v11;
    HIDWORD(v16) = 32 * (HIDWORD(v16) == 32);
    *(v12 + 8) = v10 + 604800 * v9;
    if (BlueFin::GlPeBitReader::uint(&v14, 0x20u) == v7)
    {
      return 82;
    }

    GlCustomLog(11, "RTO Gps IONO section integrity check failure!\n");
  }

  return 84;
}

void sub_2988951F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *BlueFin::GlStackAlloc<BlueFin::GlPeLtoReader>::~GlStackAlloc(void *a1)
{
  (*(**a1 + 24))(*a1);
  (a1[1])(*a1);
  return a1;
}

BOOL BlueFin::GlPeLtoReader::isRto(BlueFin::GlSetBase **this)
{
  v3 = &v5;
  v4 = 3;
  v5 = 0;
  v6 = 0;
  for (i = 56; i != 84; ++i)
  {
    *(&v5 + (i >> 5)) |= 1 << i;
  }

  return BlueFin::GlSetBase::HasAny(this[1346], &v3);
}

BOOL BlueFin::GlSetBase::HasAny(BlueFin::GlSetBase *this, const BlueFin::GlSetBase *a2)
{
  if (*(a2 + 8) >= *(this + 8))
  {
    v2 = *(this + 8);
  }

  else
  {
    v2 = *(a2 + 8);
  }

  if (!v2)
  {
    return 0;
  }

  if ((**a2 & **this) != 0)
  {
    return 1;
  }

  v4 = 1;
  do
  {
    v5 = v4;
    if (v2 == v4)
    {
      break;
    }

    v6 = *(*this + 4 * v4);
    v7 = *(*a2 + 4 * v4++);
  }

  while ((v7 & v6) == 0);
  return v5 < v2;
}

__n128 BlueFin::GlPeLtoMgr::SetRtoDigest(uint64_t a1, __n128 *a2)
{
  v2 = (a1 + 1617);
  v3 = *(a1 + 1617) | *(a1 + 1625);
  if (*(a1 + 1617) != 0)
  {
    LOBYTE(v3) = v2->n128_u64[0] != a2->n128_u64[0] || *(a1 + 1625) != a2->n128_u64[1];
  }

  *(a1 + 1633) = v3;
  if (v2 != a2)
  {
    result = *a2;
    *v2 = *a2;
  }

  return result;
}

uint64_t BlueFin::GlPeLtoMgr::UpdateEphemeris(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = a2 > 6 ? 0 : *&asc_298A406D0[8 * a2];
    if (v6 >= v8)
    {
      break;
    }

    if (*v3 != 255 && !*(v3 + 4))
    {
      v9 = BlueFin::GlPeEphemeris::ConstructFromGlUncmprsdEph(a2, v3, *(v3 + 140), v22);
      if (v9)
      {
        v10 = v9;
        (*(*v9 + 216))(v9, 1, 3);
        Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(a1 + 80) + 384), a2);
        if ((*(*Mgr + 32))(Mgr, v10))
        {
          v12 = v7 == 0;
        }

        else
        {
          v12 = 0;
        }

        if (v12)
        {
          Time = BlueFin::GlPeTimeManager::GetTime(*(a1 + 88), 1, v21);
          v14 = (*(*v10 + 64))(v10, v21, 1, Time);
          v19 = &off_2A1F0B5F0;
          v20 = 0;
          Gps = BlueFin::GlPeGnssTime::GetGps(v21, &v19);
          v16 = (v19[4])(&v19, Gps);
          LODWORD(v17) = v20;
          v7 = (v17 * 2.32830644e-10 + v16 - v14 + vcvtd_n_f64_u32((*(*v10 + 88))(v10), 1uLL));
        }
      }
    }

    ++v6;
    v3 += 144;
  }

  return v7;
}

int32x2_t *BlueFin::GlPeEphemeris::ConstructFromGlUncmprsdEph(uint64_t a1, int *a2, uint64_t a3, int32x2_t *a4)
{
  v5 = a1;
  if (a2[1])
  {
    return BlueFin::GlPeLtoEphemeris::GlPeLtoEphemeris(a4, a2, a3, a1);
  }

  result = 0;
  if (v5 <= 3)
  {
    if (v5 > 1)
    {
      if (v5 == 3)
      {
        v7 = &unk_2A1F0F338;
        goto LABEL_14;
      }

      DeviceFaultNotify("glpe_ephmgr.cpp", 586, "ConstructFromGlUncmprsdEph", "0");
      v9 = 586;
    }

    else
    {
      if (!v5)
      {
        v7 = &unk_2A1F0F200;
LABEL_14:
        v8 = v7;
        *a4 = v7;
        result = BlueFin::GlPeGpsEphemerisBase::GlPeGpsEphemerisBase(a4, a2, a3, v5, 0x12u, &a4[4]);
        *a4 = v8;
        return result;
      }

      if (v5 != 1)
      {
        return result;
      }

      DeviceFaultNotify("glpe_ephmgr.cpp", 585, "ConstructFromGlUncmprsdEph", "0");
      v9 = 585;
    }

    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", v9, "0");
  }

  switch(v5)
  {
    case 4:
      return BlueFin::GlPeBdsEphemeris::GlPeBdsEphemeris(a4, a2, a3);
    case 5:
      return BlueFin::GlPeGalEphemeris::GlPeGalEphemeris(a4, a2, a3);
    case 6:
      return BlueFin::GlPeNicEphemeris::GlPeNicEphemeris(a4, a2, a3);
  }

  return result;
}

int32x2_t *BlueFin::GlPeGpsEphemerisBase::GlPeGpsEphemerisBase(int32x2_t *a1, uint64_t a2, unsigned int a3, char a4, unsigned int a5, void *a6)
{
  if (*(a2 + 4))
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  a1[1].i8[0] = v9 | (16 * a4);
  a1[1].i8[1] = a5;
  a1[2] = a6;
  a1[3] = vdup_n_s32(0xFF9222FF);
  bzero(a6, 4 * a5);
  *a1 = &unk_2A1F0F0C8;
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 0, (*a2 + 1));
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 4u, *(a2 + 16));
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 3u, *(a2 + 20));
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 5u, *(a2 + 24));
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 6, *(a2 + 48));
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 7u, *(a2 + 52));
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 8, *(a2 + 56));
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 9, *(a2 + 60));
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 10, *(a2 + 64));
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 11, *(a2 + 68));
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 12, *(a2 + 72));
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 13, *(a2 + 76));
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 14, *(a2 + 80));
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 0xFu, *(a2 + 84));
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 16, *(a2 + 88));
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 0x11u, *(a2 + 92));
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 0x12u, *(a2 + 96));
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 0x1Eu, *(a2 + 100));
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 19, *(a2 + 108));
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 20, *(a2 + 112));
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 21, *(a2 + 116));
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 22, *(a2 + 120));
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 23, *(a2 + 124));
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 24, *(a2 + 128));
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 25, *(a2 + 132));
  BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(a1, 26, *(a2 + 136));
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 0x1Bu, a3 != 0);
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 0x1Cu, a3);
  if (*(a2 + 4))
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 1u, v10);
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 2u, 1u);
  BlueFin::GlPeGpsEphemerisBase::PutCmpUnsignedField(a1, 0x1Fu, 0);
  return a1;
}

uint64_t *BlueFin::GlPeGpsEphemerisBase::PutCmpSignedField(BlueFin::GlPeGpsEphemerisBase *this, int a2, int a3)
{
  v5 = *(this + 2);
  v6 = 4 * *(this + 9);
  v11 = 0;
  BlueFin::GlBitBuffer::Initialize(v10, v5, v6);
  if ((a2 - 6) >= 0x15 || ((0x1FE5FDu >> (a2 - 6)) & 1) == 0)
  {
    GlCustomLog(11, "GlPeGpsEphemerisBase::PutCmpSignedField: Illegal field index:%d\n", a2);
    DeviceFaultNotify("glpe_ephmgr.cpp", 3051, "PutCmpSignedField", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_ephmgr.cpp", 3051, "0");
  }

  v7 = (a2 - 6);
  v8 = byte_298A3BD2C[v7];
  BlueFin::GlBitBuffer::Position(v10, dword_298A3BCD8[v7]);
  return BlueFin::GlBitBuffer::PutU(v10, a3 + (0xFFFFFFFFuLL >> (32 - v8)) + 1, v8);
}

uint64_t BlueFin::GlPeBdsEphemeris::GlPeBdsEphemeris(uint64_t a1, int *a2, unsigned int a3)
{
  *(a1 + 8) = 65;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 32) = 0u;
  v15 = a2[14];
  v16 = a2[15];
  v19 = a2[17];
  v4 = a2[23];
  v21 = a2[20];
  v22 = a2[21];
  v23 = a2[22];
  v28 = a2[29];
  v5 = a2[6];
  v17 = a2[16];
  v18 = a2[18];
  v20 = a2[19];
  v29 = a2[31];
  v30 = a2[32];
  v25 = a2[27];
  v26 = a2[30];
  v27 = a2[28];
  v31 = a2[33];
  v32 = a2[34];
  v24 = a2[24];
  v6 = a2[12];
  v7 = a2[13];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a2;
  *(a1 + 8) = 4673;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = vdup_n_s32(0xFF9222FF);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *a1 = &unk_2A1F0E970;
  v11 = v10 + 1;
  v12 = vcvtd_n_f64_u32(v4, 0x13uLL) <= 6400.0;
  BlueFin::GlPeBdsEphemeris::PutCmpUnsignedField(a1, 32, 1u);
  v13 = v26 * 0.00000000146291808 > 0.2 || v12;
  (*(*a1 + 216))(a1, 33, v13);
  (*(*a1 + 216))(a1, 0, v11);
  (*(*a1 + 216))(a1, 4, v8);
  (*(*a1 + 216))(a1, 3, v9);
  (*(*a1 + 216))(a1, 5, v5 & 0x1F);
  (*(*a1 + 216))(a1, 29, (v5 >> 5) & 0x1F);
  (*(*a1 + 224))(a1, 6, v6);
  (*(*a1 + 216))(a1, 7, v7);
  (*(*a1 + 224))(a1, 8, v15);
  (*(*a1 + 224))(a1, 9, v16);
  (*(*a1 + 224))(a1, 10, v17);
  (*(*a1 + 224))(a1, 11, v19);
  (*(*a1 + 224))(a1, 12, v18);
  (*(*a1 + 224))(a1, 13, v20);
  (*(*a1 + 224))(a1, 14, v21);
  (*(*a1 + 216))(a1, 15, v22);
  (*(*a1 + 224))(a1, 16, v23);
  (*(*a1 + 216))(a1, 17, v4);
  (*(*a1 + 216))(a1, 18, v24);
  (*(*a1 + 224))(a1, 19, v25);
  (*(*a1 + 224))(a1, 20, v27);
  (*(*a1 + 224))(a1, 21, v28);
  (*(*a1 + 224))(a1, 22, v26);
  (*(*a1 + 224))(a1, 23, v29);
  (*(*a1 + 224))(a1, 24, v30);
  (*(*a1 + 224))(a1, 25, v31);
  (*(*a1 + 224))(a1, 26, v32);
  (*(*a1 + 216))(a1, 27, a3 != 0);
  (*(*a1 + 216))(a1, 28, a3);
  (*(*a1 + 216))(a1, 1, 1);
  (*(*a1 + 216))(a1, 2, 1);
  return a1;
}

uint64_t *BlueFin::GlPeBdsEphemeris::PutCmpSignedField(BlueFin::GlPeBdsEphemeris *this, int a2, int a3)
{
  v6 = *(this + 2);
  v7 = 4 * *(this + 9);
  v21 = 0;
  BlueFin::GlBitBuffer::Initialize(v20, v6, v7);
  if (BlueFin::GlPeBdsEphemeris::isD2Format(this))
  {
    switch(a2)
    {
      case 6:
        v8 = 26;
        goto LABEL_6;
      case 8:
        v15 = 130;
        goto LABEL_36;
      case 9:
        v17 = 108;
        goto LABEL_43;
      case 10:
        v14 = 84;
        goto LABEL_41;
      case 11:
        v12 = 395;
        goto LABEL_38;
      case 12:
        v16 = 146;
        goto LABEL_45;
      case 13:
        goto LABEL_7;
      case 14:
        v12 = 162;
        goto LABEL_38;
      case 16:
        v12 = 180;
        goto LABEL_38;
      case 19:
        BlueFin::GlBitBuffer::Position(v20, 0x106u);
        BlueFin::GlBitBuffer::PutU(v20, (a3 >> 8) + 1024, 0xAu);
        BlueFin::GlBitBuffer::Position(v20, 0x130u);
        v9 = a3;
        v10 = 8;
        return BlueFin::GlBitBuffer::PutU(v20, v9, v10);
      case 20:
        v11 = 464;
        goto LABEL_22;
      case 21:
        v12 = 312;
        goto LABEL_38;
      case 22:
        BlueFin::GlBitBuffer::Position(v20, 0x15Bu);
        BlueFin::GlBitBuffer::PutU(v20, (a3 >> 11) + 0x200000, 0x15u);
        BlueFin::GlBitBuffer::Position(v20, 0x22Eu);
        BlueFin::GlBitBuffer::PutU(v20, a3 >> 9, 2u);
        BlueFin::GlBitBuffer::Position(v20, 0x170u);
        v9 = a3;
        v10 = 9;
        return BlueFin::GlBitBuffer::PutU(v20, v9, v10);
      case 23:
        v12 = 377;
        goto LABEL_38;
      case 24:
        BlueFin::GlBitBuffer::Position(v20, 0x1B5u);
        BlueFin::GlBitBuffer::PutU(v20, (a3 >> 5) + 0x8000000, 0x1Bu);
        BlueFin::GlBitBuffer::Position(v20, 0x1FBu);
        v9 = a3;
        v10 = 5;
        return BlueFin::GlBitBuffer::PutU(v20, v9, v10);
      case 25:
        v14 = 413;
        goto LABEL_41;
      case 26:
        v13 = 512;
        goto LABEL_25;
      default:
        DeviceFaultNotify("glpe_bdephmgr.cpp", 805, "PutCmpSignedField", "0");
        v19 = 805;
        goto LABEL_49;
    }
  }

  switch(a2)
  {
    case 6:
      v8 = 65;
LABEL_6:
      BlueFin::GlBitBuffer::Position(v20, v8);
      v9 = a3 + 1024;
      v10 = 10;
      return BlueFin::GlBitBuffer::PutU(v20, v9, v10);
    case 8:
      v15 = 80;
LABEL_36:
      BlueFin::GlBitBuffer::Position(v20, v15);
      v9 = a3 + 2048;
      v10 = 11;
      return BlueFin::GlBitBuffer::PutU(v20, v9, v10);
    case 9:
      v17 = 16;
LABEL_43:
      BlueFin::GlBitBuffer::Position(v20, v17);
      v9 = a3 + 0x400000;
      v10 = 22;
      return BlueFin::GlBitBuffer::PutU(v20, v9, v10);
    case 10:
      v14 = 112;
LABEL_41:
      BlueFin::GlBitBuffer::Position(v20, v14);
      v9 = a3 + 0x1000000;
      v10 = 24;
      return BlueFin::GlBitBuffer::PutU(v20, v9, v10);
    case 11:
      v12 = 286;
      goto LABEL_38;
    case 12:
      v16 = 240;
LABEL_45:
      BlueFin::GlBitBuffer::Position(v20, v16);
      v9 = a3 + 0x10000;
      v10 = 16;
      return BlueFin::GlBitBuffer::PutU(v20, v9, v10);
    case 13:
LABEL_7:
      v11 = 208;
      goto LABEL_22;
    case 14:
      BlueFin::GlBitBuffer::Position(v20, 0x100u);
      BlueFin::GlBitBuffer::PutU(v20, (a3 >> 2) + 0x10000, 0x10u);
      BlueFin::GlBitBuffer::Position(v20, 0x146u);
      v9 = a3;
      v10 = 2;
      return BlueFin::GlBitBuffer::PutU(v20, v9, v10);
    case 16:
      v12 = 304;
      goto LABEL_38;
    case 19:
      v12 = 464;
      goto LABEL_38;
    case 20:
      v11 = 336;
      goto LABEL_22;
    case 21:
      v12 = 400;
LABEL_38:
      BlueFin::GlBitBuffer::Position(v20, v12);
      v9 = a3 + 0x40000;
      v10 = 18;
      return BlueFin::GlBitBuffer::PutU(v20, v9, v10);
    case 22:
      v11 = 432;
      goto LABEL_22;
    case 23:
      BlueFin::GlBitBuffer::Position(v20, 0x142u);
      BlueFin::GlBitBuffer::PutU(v20, (a3 >> 14) + 16, 4u);
      BlueFin::GlBitBuffer::Position(v20, 0x110u);
      v9 = a3;
      goto LABEL_26;
    case 24:
      v11 = 368;
LABEL_22:
      BlueFin::GlBitBuffer::Position(v20, v11);
      v9 = a3;
      v10 = 32;
      break;
    case 25:
      BlueFin::GlBitBuffer::Position(v20, 0x1E2u);
      BlueFin::GlBitBuffer::PutU(v20, (a3 >> 13) + 2048, 0xBu);
      BlueFin::GlBitBuffer::Position(v20, 0x1FFu);
      v9 = a3;
      v10 = 13;
      break;
    case 26:
      v13 = 418;
LABEL_25:
      BlueFin::GlBitBuffer::Position(v20, v13);
      v9 = a3 + 0x4000;
LABEL_26:
      v10 = 14;
      break;
    default:
      DeviceFaultNotify("glpe_bdephmgr.cpp", 830, "PutCmpSignedField", "0");
      v19 = 830;
LABEL_49:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_bdephmgr.cpp", v19, "0");
  }

  return BlueFin::GlBitBuffer::PutU(v20, v9, v10);
}

uint64_t BlueFin::GlPeGalEphemeris::GlPeGalEphemeris(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a1 + 32) = 0u;
  *(a1 + 8) = 4177;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = vdup_n_s32(0xFF9222FF);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *a1 = &unk_2A1F0FBD0;
  if (*(a2 + 4))
  {
    DeviceFaultNotify("glpe_galephmgr.cpp", 62, "GlPeGalEphemeris", "rotUncmprsdEph.ExtensionBit == 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_galephmgr.cpp", 62, "rotUncmprsdEph.ExtensionBit == 0");
  }

  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 0, (*a2 + 1));
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 4u, *(a2 + 16));
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 3u, *(a2 + 20));
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 5u, *(a2 + 24));
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 6, *(a2 + 48));
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 7u, *(a2 + 52));
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 8, *(a2 + 56));
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 9, *(a2 + 60));
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 10, *(a2 + 64));
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 11, *(a2 + 68));
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 12, *(a2 + 72));
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 13, *(a2 + 76));
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 14, *(a2 + 80));
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 0xFu, *(a2 + 84));
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 16, *(a2 + 88));
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 0x11u, *(a2 + 92));
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 0x12u, *(a2 + 96));
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 19, *(a2 + 108));
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 20, *(a2 + 112));
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 21, *(a2 + 116));
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 22, *(a2 + 120));
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 23, *(a2 + 124));
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 24, *(a2 + 128));
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 25, *(a2 + 132));
  BlueFin::GlPeGalEphemeris::PutCmpSignedField(a1, 26, *(a2 + 136));
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 0x1Bu, a3 != 0);
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 0x1Cu, a3);
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 1u, 1u);
  BlueFin::GlPeGalEphemeris::PutCmpUnsignedField(a1, 2u, 1u);
  return a1;
}

uint64_t *BlueFin::GlPeGalEphemeris::PutCmpSignedField(BlueFin::GlPeGalEphemeris *this, int a2, int a3)
{
  v5 = *(this + 2);
  v6 = 4 * *(this + 9);
  v11 = 0;
  BlueFin::GlBitBuffer::Initialize(v10, v5, v6);
  if ((a2 - 6) >= 0x15 || ((0x1FE5FDu >> (a2 - 6)) & 1) == 0)
  {
    DeviceFaultNotify("glpe_galephmgr.cpp", 707, "PutCmpSignedField", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_galephmgr.cpp", 707, "0");
  }

  v7 = (a2 - 6);
  v8 = byte_298A3C0B8[v7];
  BlueFin::GlBitBuffer::Position(v10, dword_298A3C064[v7]);
  return BlueFin::GlBitBuffer::PutU(v10, a3 + (0xFFFFFFFFuLL >> (32 - v8)) + 1, v8);
}

BOOL BlueFin::GlPeGalEphemeris::CompareEphSetFields(BlueFin::GlPeGalEphemeris *this, const BlueFin::GlPeGalEphemeris *a2)
{
  if ((*(*this + 192))(this, 27) && (*(*a2 + 192))(a2, 27) && (v4 = (*(*this + 192))(this, 28), v4 != (*(*a2 + 192))(a2, 28)))
  {
    v8 = 0;
  }

  else
  {
    v5 = (*(*this + 192))(this, 18);
    v6 = (*(*this + 232))(this, 18) * v5;
    v7 = (*(*a2 + 192))(a2, 18);
    v8 = v6 == (*(*a2 + 232))(a2, 18) * v7;
  }

  v9 = (*(*this + 192))(this, 5);
  v10 = (*(*a2 + 192))(a2, 5);
  v11 = (*(*this + 192))(this, 3);
  v12 = (*(*a2 + 192))(a2, 3);
  v13 = v9 == v10 && v8;
  return v11 == v12 && v13;
}

uint64_t BlueFin::GlPeNicEphemeris::GlPeNicEphemeris(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0u;
  *(a1 + 8) = 3937;
  *(a1 + 16) = a1 + 32;
  *(a1 + 24) = vdup_n_s32(0xFF9222FF);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 76) = 0u;
  *a1 = &unk_2A1F0DCC8;
  if (*(a2 + 4))
  {
    DeviceFaultNotify("glpe_nicephmgr.cpp", 436, "GlPeNicEphemeris", "rotUncmprsdEph.ExtensionBit == 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nicephmgr.cpp", 436, "rotUncmprsdEph.ExtensionBit == 0");
  }

  BlueFin::GlPeNicEphemeris::PutCmpUnsignedField(a1, 0, (*a2 + 1));
  (*(*a1 + 216))(a1, 4, *(a2 + 16));
  (*(*a1 + 216))(a1, 29, *(a2 + 24));
  (*(*a1 + 224))(a1, 6, *(a2 + 48));
  (*(*a1 + 216))(a1, 7, *(a2 + 52));
  (*(*a1 + 224))(a1, 8, *(a2 + 56));
  (*(*a1 + 224))(a1, 9, *(a2 + 60));
  (*(*a1 + 224))(a1, 10, *(a2 + 64));
  (*(*a1 + 224))(a1, 11, *(a2 + 68));
  (*(*a1 + 224))(a1, 12, *(a2 + 72));
  (*(*a1 + 224))(a1, 13, *(a2 + 76));
  (*(*a1 + 224))(a1, 14, *(a2 + 80));
  (*(*a1 + 216))(a1, 15, *(a2 + 84));
  (*(*a1 + 224))(a1, 16, *(a2 + 88));
  (*(*a1 + 216))(a1, 17, *(a2 + 92));
  (*(*a1 + 216))(a1, 18, *(a2 + 96));
  (*(*a1 + 224))(a1, 19, *(a2 + 108));
  (*(*a1 + 224))(a1, 20, *(a2 + 112));
  (*(*a1 + 224))(a1, 21, *(a2 + 116));
  (*(*a1 + 224))(a1, 22, *(a2 + 120));
  (*(*a1 + 224))(a1, 23, *(a2 + 124));
  (*(*a1 + 224))(a1, 24, *(a2 + 128));
  (*(*a1 + 224))(a1, 25, *(a2 + 132));
  (*(*a1 + 224))(a1, 26, *(a2 + 136));
  (*(*a1 + 216))(a1, 27, a3 != 0);
  (*(*a1 + 216))(a1, 28, a3);
  (*(*a1 + 216))(a1, 1, 1);
  (*(*a1 + 216))(a1, 2, 1);
  (*(*a1 + 216))(a1, 3, *(a2 + 20));
  return a1;
}

void std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_5,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_5>,void ()(BlueFin::GlEngine *,unsigned int,unsigned int,BlueFin::etReadLTOFileStat,BlueFin::GlPeLtoReadStat,BlueFin::etPredictionFileType,unsigned int)>::operator()(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int *a4, _DWORD *a5, unsigned int *a6, _DWORD *a7)
{
  v7 = *a3;
  v8 = *a4;
  v9 = *a6;
  v10 = *a7;
  v11 = *(a1 + 8);
  FireDeviceLog::DeviceLogBase(6, "#fgd,handleLtoTimeStampReport,type,%d,minFct,%u,maxFct,%u,contentStat,%d,fileStat,%d", *a7, *a3, *a4, *a6, *a5);
  v12 = *(v11 + 288);
  if (v12)
  {
    if (v10 == 1)
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }

    if (v10 == 2)
    {
      v13 = 4;
    }

    v14[0] = v13;
    v15 = v7;
    v16 = v8;
    v17 = (v9 < 5) & (0x1Du >> v9);
    (*(*v12 + 48))(v12, v14);
  }

  else
  {

    FireDeviceLog::DeviceLogBase(3, "#fgd,#warning,handleLtoTimeStampReport,fLtoTimeStampReportCb,nullptr");
  }
}

unsigned __int8 *BlueFin::GlPeAsstMgr::OnInitialTime(BlueFin::GlPeAsstMgr *this, const BlueFin::GlPeGnssTime *a2)
{
  for (i = 0; i != 7; ++i)
  {
    Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr(this + 48, i);
    if (Mgr)
    {
      (*(*Mgr + 40))(Mgr, a2);
    }
  }

  BlueFin::GlPeAsstMgr::UpdateEphValidityCache(this);

  return BlueFin::GlPeAlmMgr::OnInitialTime((this + 34112), a2);
}

unsigned __int8 *BlueFin::GlPeEphemerisMgr::OnInitialTime(BlueFin::GlPeEphemerisMgr *this, const BlueFin::GlPeGnssTime *a2)
{
  (*(*this + 304))(&__src);
  v8 = v7;
  memcpy(v12, __src, 4 * v7);
  v10 = 0;
  v9 = 0;
  v11 = v12[0];
  while (1)
  {
    result = BlueFin::GlSetIterator::operator++(&v8);
    if (v9 == v8)
    {
      break;
    }

    LOBYTE(__src) = v10;
    WritableEphemerisObj = BlueFin::GlPeEphemerisMgr::GetWritableEphemerisObj(this, &__src);
    (*(*WritableEphemerisObj + 72))(WritableEphemerisObj, a2);
  }

  return result;
}

uint64_t BlueFin::GlPeGpsEphemerisBase::SetEphTime(BlueFin::GlPeGpsEphemerisBase *this, const BlueFin::GlPeGnssTime *a2)
{
  result = (*(*this + 80))(this);
  if ((result & 1) == 0)
  {
    ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(this, 18);
    (*(*this + 216))(this, 27, 1);
    v8[0] = &off_2A1F0B5F0;
    v8[1] = 0;
    BlueFin::GlPeGnssTime::GetGps(a2, v8);
    *v6.i64 = ScaledFloatingField;
    BlueFin::GlWeekTowTime::resolveTowAmbiguity(&v9, v8, v6, v7);
    v8[3] = v9;
    v8[2] = &off_2A1F0B5F0;
    return (*(*this + 216))(this, 28, HIDWORD(v9) / 0x93A80uLL);
  }

  return result;
}

uint64_t *BlueFin::GlPeNicEphemeris::PutCmpSignedField(BlueFin::GlPeNicEphemeris *this, int a2, int a3)
{
  v5 = *(this + 2);
  v6 = 4 * *(this + 9);
  v11 = 0;
  BlueFin::GlBitBuffer::Initialize(v10, v5, v6);
  if ((a2 - 6) >= 0x15 || ((0x1FE5FDu >> (a2 - 6)) & 1) == 0)
  {
    DeviceFaultNotify("glpe_nicephmgr.cpp", 1117, "PutCmpSignedField", "0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nicephmgr.cpp", 1117, "0");
  }

  v7 = (a2 - 6);
  v8 = byte_298A3AA34[v7];
  BlueFin::GlBitBuffer::Position(v10, dword_298A3A9E0[v7]);
  return BlueFin::GlBitBuffer::PutU(v10, a3 + (0xFFFFFFFFuLL >> (32 - v8)) + 1, v8);
}

BOOL BlueFin::GlPeNicEphemeris::CompareEphSetFields(BlueFin::GlPeNicEphemeris *this, const BlueFin::GlPeNicEphemeris *a2)
{
  if ((*(*this + 192))(this, 27) && (*(*a2 + 192))(a2, 27) && (v4 = (*(*this + 192))(this, 28), v4 != (*(*a2 + 192))(a2, 28)))
  {
    v8 = 0;
  }

  else
  {
    v5 = (*(*this + 192))(this, 18);
    v6 = (*(*this + 232))(this, 18) * v5;
    v7 = (*(*a2 + 192))(a2, 18);
    v8 = v6 == (*(*a2 + 232))(a2, 18) * v7;
  }

  v9 = (*(*this + 192))(this, 29);
  v10 = (*(*a2 + 192))(a2, 29);
  v11 = (*(*this + 192))(this, 3);
  v12 = (*(*a2 + 192))(a2, 3);
  v13 = v9 == v10 && v8;
  return v11 == v12 && v13;
}

uint64_t *BlueFin::GlPeTimeManager::GetTime@<X0>(uint64_t *__return_ptr a1@<X8>, BlueFin::GlPeTimeManager *this@<X0>, const BlueFin::GlNicTime *a3@<X1>, int a4@<W2>)
{
  v25 = 0.0;
  if ((*(*a3 + 32))(a3) < 0x24EA0000)
  {
    v9 = (*(*a3 + 32))(a3);
    v10 = BlueFin::GlPeTimeManager::handleGps1023WeekRollovers(this, v9 / 0x93A80);
    v13 = (*(*a3 + 32))(a3);
    LODWORD(v12) = *(a3 + 2);
    *v13.i64 = v12 * 2.32830644e-10 + (v11 % 0x93A80);
    v22 = &off_2A1F0B5F0;
    *v14.i64 = *v13.i64 - trunc(*v13.i64);
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v16 = *vbslq_s8(vnegq_f64(v15), v14, v13).i64;
    if (v16 < 0.0 || v16 >= 1.0)
    {
      DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
    }

    v18 = v16 * 4294967300.0 + 0.5;
    v19 = v18;
    if (v18 >= 4294967300.0)
    {
      v19 = -1;
    }

    v23 = v19;
    v24 = *v13.i64 + 604800 * v10;
    v22 = &off_2A1F0B5F0;
    v21[0] = v19;
    v21[1] = v24;
    v8 = v21;
  }

  else
  {
    v22 = *(a3 + 1);
    v8 = &v22;
  }

  BlueFin::GlPeTimeManager::dateTimeToLms(this, 5, v8, &v25);
  return BlueFin::GlPeTimeManager::commonGnssToLms(this, v25, a4, a1);
}

uint64_t BlueFin::GlPeIONXMgr::SetIONXFromLto(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 - 1 < 4)
  {
    result = (a2 != 0) & *(a1 + 25);
  }

  else
  {
    result = 0;
  }

  if (result == 1)
  {
    if (!*(a2 + 64))
    {
      v7.f64[0] = *(a2 + 56);
      v8 = *(a2 + 11496);
      v7.f64[1] = *(v8 + 24);
      *(a1 + 72) = vmul_f32(vcvt_f32_f64(v7), vdup_n_s32(0x447A0000u));
      *(a1 + 68) = __exp10f(*(v8 + 32));
      *(a1 + 32) = a3;
      v9 = *(a2 + 68);
      v10 = *(v8 + 34);
      *(a1 + 36) = v9;
      *(a1 + 40) = v10;
      *(a1 + 28) = *(a2 + 11520) - *a2;
      v11.f64[0] = *(a2 + 8);
      v12 = *(a2 + 16);
      v11.f64[1] = v11.f64[0] + v12.f64[0] * v9;
      *(a1 + 44) = vcvt_hight_f32_f64(vcvt_f32_f64(v11), v12);
      v11.f64[0] = *(a2 + 32);
      v13 = v12.f64[1] + v11.f64[0] * v10;
      *v11.f64 = v11.f64[0];
      *&v13 = v13;
      *(a1 + 60) = LODWORD(v13);
      *(a1 + 64) = LODWORD(v11.f64[0]);
    }

    v14 = 0;
    v15 = a3;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v21 = vnegq_f64(v16);
    do
    {
      if (!*(a2 + v14 + 64))
      {
        BlueFin::stIonex::operator=(*(a1 + 46176) + v14, a2 + v14);
        if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
        {
          v17 = (*(*a1 + 24))(a1, 0, 0);
        }

        ++*(a1 + 46184);
        v19 = *(a1 + 46176);
        v20 = *(v19 + v14);
        *v17.i64 = (v20 % 0x93A80);
        *v18.i64 = *v17.i64 - trunc(*v17.i64);
        if (*vbslq_s8(v21, v18, v17).i64 >= 1.0)
        {
          DeviceFaultNotify("glpe_timepoint.h", 173, "GlTimeFracSec", "dFracSec >= 0.0 && dFracSec < 1.0");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timepoint.h", 173, "dFracSec >= 0.0 && dFracSec < 1.0");
        }

        GlCustomLog(14, "IONX::SetIONXFromLto TOW %u, StartLatDeg %.2f, DelLatDeg %.2f, EndLat %.2f, StartLonDeg %.2f, DelLonDeg %.2f, EndLon %.2f\n", v20 % 0x93A80, *(v19 + v14 + 8), *(v19 + v14 + 16), *(a1 + 48), *(v19 + v14 + 24), *(v19 + v14 + 32), *(a1 + 60));
      }

      v14 += 11520;
      --v15;
    }

    while (v15);
    *(a1 + 24) = 1;
    *(a1 + 46184) = 0;
    return 1;
  }

  return result;
}

void BlueFin::stIonex::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    BlueFin::stIonexHeader::operator=(result, a2);
    v4 = 0;
    v5 = 57;
    do
    {
      v6 = *(a2 + 11496);
      v7 = *(v3 + 11496);
      if (v7 != v6)
      {
        v8 = v6 + v4;
        v9 = v7 + v4;
        *v9 = *v8;
        *(v9 + 16) = *(v8 + 16);
        *(v9 + 32) = *(v8 + 32);
        v10 = *(v8 + 36);
        *(v9 + 52) = *(v8 + 52);
        *(v9 + 36) = v10;
        v11 = *(v8 + 68);
        v12 = *(v8 + 84);
        v13 = *(v8 + 100);
        *(v9 + 116) = *(v8 + 116);
        *(v9 + 100) = v13;
        *(v9 + 84) = v12;
        *(v9 + 68) = v11;
        v14 = *(v8 + 132);
        v15 = *(v8 + 148);
        v16 = *(v8 + 164);
        *(v9 + 180) = *(v8 + 180);
        *(v9 + 164) = v16;
        *(v9 + 148) = v15;
        *(v9 + 132) = v14;
      }

      v4 += 200;
      --v5;
    }

    while (v5);
  }
}

double BlueFin::stIonexHeader::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    result = *(a2 + 64);
    *(a1 + 64) = result;
  }

  return result;
}

uint64_t BlueFin::GlPeLtoReader::UpdatePex(BlueFin::GlPeLtoReader *this, void *a2, uint64_t a3)
{
  if (!*(this + 1399))
  {
    return 0;
  }

  v3 = a3;
  if (*(this + 10784) == 1 && (*(this + 1245) != *a2 || *(this + 1246) != a2[1]))
  {
    v6 = *(this + 1349);
    if (v6)
    {
      *v6 = 5;
    }

    result = 0;
    *(this + 2702) = 5;
    return result;
  }

  v8 = *(this + 1347);
  if (v8)
  {
    v9 = (this + 9960);
    if (a3)
    {
      BlueFin::GlPeLtoMgr::SetRtoDigest(v8, v9);
    }

    else
    {
      BlueFin::GlPeLtoMgr::SetLtoDigest(v8, v9, 1);
    }
  }

  result = BlueFin::GlPeLtoReader::CheckExpiration(this, a2);
  if (result)
  {
    v10 = *(this + 25352);
    v11 = v10 & 0xFFFD;
    if (!v3)
    {
      v11 = *(this + 25352);
    }

    if ((v10 & 4) != 0)
    {
      v12 = v11 & 0xFFFB;
      BlueFin::GlPeLtoReader::SendToPex(this, 5u, v3, (v11 & 0xFFFB) == 0);
      v10 = *(this + 25352);
      v11 = v12;
      if ((v10 & 8) == 0)
      {
LABEL_20:
        if ((v10 & 0x20) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_29;
      }
    }

    else if ((v10 & 8) == 0)
    {
      goto LABEL_20;
    }

    v13 = v11 & 0xFFF7;
    BlueFin::GlPeLtoReader::SendToPex(this, 4u, v3, (v11 & 0xFFF7) == 0);
    v10 = *(this + 25352);
    v11 = v13;
    if ((v10 & 0x20) == 0)
    {
LABEL_21:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_30;
    }

LABEL_29:
    v14 = v11 & 0xFFDF;
    BlueFin::GlPeLtoReader::SendToPex(this, 3u, v3, (v11 & 0xFFDF) == 0);
    v10 = *(this + 25352);
    v11 = v14;
    if ((v10 & 0x10) == 0)
    {
LABEL_22:
      if ((v10 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_31;
    }

LABEL_30:
    v15 = v11 & 0xFFEF;
    BlueFin::GlPeLtoReader::SendToPex(this, 6u, v3, (v11 & 0xFFEF) == 0);
    v10 = *(this + 25352);
    v11 = v15;
    if ((v10 & 1) == 0)
    {
LABEL_23:
      if ((v10 & 2) == 0)
      {
        return 1;
      }

LABEL_24:
      BlueFin::GlPeLtoReader::SendToPex(this, 2u, v3, (v11 & 0xFFFD) == 0);
      return 1;
    }

LABEL_31:
    v16 = v11 & 0xFFFE;
    BlueFin::GlPeLtoReader::SendToPex(this, 0, v3, (v11 & 0xFFFE) == 0);
    v11 = v16;
    if ((*(this + 25352) & 2) == 0)
    {
      return 1;
    }

    goto LABEL_24;
  }

  return result;
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxyLtoFileGpsTimestampsReport(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = (*(*a1 + 656))(a1);

  return BlueFin::GlDbgProxy::HalLtoFileGpsTimestampsReport(v13, a2, a3, a4, a5, a6, a7);
}

BlueFin::GlDbgCodec *BlueFin::GlDbgProxy::HalLtoFileGpsTimestampsReport(BlueFin::GlDbgCodec *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a3;
  v19 = a2;
  v17 = a7;
  if (!*(result + 101))
  {
    v13 = result;
    BlueFin::GlDbgCodec::WriteStart(result, 564);
    if ((*(*v13 + 120))(v13))
    {
      BlueFin::GlDbgCodec::Write(v13, &v19);
    }

    if ((*(*v13 + 120))(v13))
    {
      BlueFin::GlDbgCodec::Write(v13, &v18);
    }

    v16 = a4;
    BlueFin::GlDbgCodec::Write(v13, &v16);
    v16 = a5;
    BlueFin::GlDbgCodec::Write(v13, &v16);
    v16 = a6;
    BlueFin::GlDbgCodec::Write(v13, &v16);
    if ((*(*v13 + 120))(v13))
    {
      BlueFin::GlDbgCodec::Write(v13, &v17);
    }

    (*(*v13 + 32))(v13, 1);
    v14 = *(v13 + 868);
    if (v14)
    {
      v14(v13 + 608, a2, a3, a4, a5, a6, a7);
    }

    BlueFin::GlDbgCodec::WriteFinal(v13, 564);
    v15 = *(*v13 + 32);

    return v15(v13, 1);
  }

  return result;
}

void FireCallback::GlLTOFileGpsPredictionTimestampReport(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (FireCallback::pInstance)
  {
    v9 = *(FireCallback::pInstance + 760);
    if (v9)
    {
      v17 = a1;
      v16 = a2;
      v14 = a4;
      v15 = a3;
      v12 = a6;
      v13 = a5;
      v11 = a7;
      (*(*v9 + 48))(v9, &v17, &v16, &v15, &v14, &v13, &v12, &v11);
      return;
    }

    v10 = "fcb,fLTOFileGpsPredictionTimestampReportCb,nullptr";
  }

  else
  {
    v10 = "fcb,GlLTOFileGpsPredictionTimestampReport,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v10, a3, a4, a5, a6, a7);
}

unsigned __int8 *BlueFin::GlPeGloEphMgr::OnInitialTime(BlueFin::GlPeGloEphMgr **this, const BlueFin::GlPeGnssTime *a2)
{
  BlueFin::GlPeEphemerisMgr::OnInitialTime(this, a2);
  (*(*this + 38))(&__src, this);
  v7 = v6;
  memcpy(v11, __src, 4 * v6);
  v9 = 0;
  v8 = 0;
  v10 = v11[0];
  while (1)
  {
    result = BlueFin::GlSetIterator::operator++(&v7);
    if (v8 == v7)
    {
      break;
    }

    LOBYTE(__src) = v9;
    v4 = (*(*this + 46))(this, &__src);
    if ((*(v4 + 8) & 0xF) == 1 && !BlueFin::GlPeGloEphMgr::quarterCheck(this[2], v4))
    {
      (*(*this + 42))(this, &__src);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeBdsEphemeris::SetEphTime(BlueFin::GlPeBdsEphemeris *this, const BlueFin::GlPeGnssTime *a2)
{
  result = (*(*this + 192))(this, 27);
  if (!result)
  {
    ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(this, 18);
    (*(*this + 216))(this, 27, 1);
    v8[0] = &off_2A1F0E4D0;
    v8[1] = 0;
    BlueFin::GlPeGnssTime::GetBds(a2, v8);
    *v6.i64 = ScaledFloatingField;
    BlueFin::GlWeekTowTime::resolveTowAmbiguity(&v9, v8, v6, v7);
    v8[3] = v9;
    v8[2] = &off_2A1F0E4D0;
    return (*(*this + 216))(this, 28, (HIDWORD(v9) - 820108814) / 0x93A80uLL);
  }

  return result;
}

uint64_t BlueFin::GlPeGalEphemeris::SetEphTime(BlueFin::GlPeGalEphemeris *this, const BlueFin::GlPeGnssTime *a2)
{
  result = (*(*this + 80))(this);
  if ((result & 1) == 0)
  {
    ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(this, 18);
    (*(*this + 216))(this, 27, 1);
    v8[0] = &off_2A1F0E480;
    v8[1] = 0;
    BlueFin::GlPeGnssTime::GetGal(a2, v8);
    *v6.i64 = ScaledFloatingField;
    BlueFin::GlWeekTowTime::resolveTowAmbiguity(&v9, v8, v6, v7);
    v8[3] = v9;
    v8[2] = &off_2A1F0E480;
    return (*(*this + 216))(this, 28, (HIDWORD(v9) - 619315200) / 0x93A80uLL);
  }

  return result;
}

uint64_t BlueFin::GlPeNicEphemeris::SetEphTime(BlueFin::GlPeNicEphemeris *this, const BlueFin::GlPeGnssTime *a2)
{
  result = (*(*this + 80))(this);
  if ((result & 1) == 0)
  {
    ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(this, 18);
    (*(*this + 216))(this, 27, 1);
    v8[0] = &off_2A1F0DFC8;
    v8[1] = 0;
    BlueFin::GlPeGnssTime::GetNic(a2, v8);
    *v6.i64 = ScaledFloatingField;
    BlueFin::GlWeekTowTime::resolveTowAmbiguity(&v9, v8, v6, v7);
    v8[3] = v9;
    v8[2] = &off_2A1F0DFC8;
    return (*(*this + 216))(this, 28, (HIDWORD(v9) - 619315200) / 0x93A80uLL);
  }

  return result;
}

unsigned __int8 *BlueFin::GlPeAlmMgr::OnInitialTime(BlueFin::GlPeAlmMgr *this, const BlueFin::GlPeGnssTime *a2)
{
  v18[0] = &off_2A1F0B5F0;
  v18[1] = 0;
  BlueFin::GlPeGnssTime::GetGps(a2, v18);
  for (i = 0; i != 7; ++i)
  {
    v4 = *(this + 54) + 48 * i;
    v13 = *(v4 + 8);
    memcpy(v17, *v4, 4 * v13);
    v15 = 0;
    v14 = 0;
    v16 = v17[0];
    while (1)
    {
      result = BlueFin::GlSetIterator::operator++(&v13);
      if (v14 == v13)
      {
        break;
      }

      v6 = v15;
      AlmReference = BlueFin::GlPeAlmMgr::getAlmReference(this, i, v15);
      LODWORD(v8) = *(AlmReference + 16);
      *v9.i64 = v8;
      BlueFin::GlWeekTowTime::resolveTowAmbiguity(&v19, v18, v9, v10);
      *(AlmReference + 88) = (HIDWORD(v19) / 0x93A80);
      if ((v6 - 64) <= 0xC0u)
      {
        DeviceFaultNotify("glgnss.h", 115, "Add", "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
        __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.h", 115, "rtGnssId.ucGnssId >= MIN_GNSS_ID && rtGnssId.ucGnssId <= MAX_GNSS_ID");
      }

      v11 = *(this + 54) + 48 * i;
      *(*(v11 + 24) + ((v6 >> 3) & 0x1C)) |= 1 << v6;
      BlueFin::GlSetBase::Remove(v11, v6);
      v12 = *(AlmReference + 108);
      LODWORD(v19) = *(AlmReference + 104);
      BYTE4(v19) = v12;
      BlueFin::GlPeAlmMgr::Serialize(this, &v19, 0);
    }
  }

  return result;
}

uint64_t BlueFin::GlPeStartupMgr::checkOsc(BlueFin::GlPeStartupMgr *this)
{
  v1 = *(this + 2);
  v2 = *(v1 + 10);
  if (BlueFin::GlUtils::m_ucEnabled)
  {
    BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
  }

  if (*(v1 + 40) != -7200001)
  {
    if (v2 * 0.000000001 < 0.00000599999976)
    {
      return 1;
    }

    GlCustomLog(14, "GLL_Startup oscUnc %f\n", v2 * 0.000000001);
  }

  return 0;
}

uint64_t BlueFin::GlPeStartupMgr::checkAll(BlueFin::GlPeStartupMgr *this, int8x16_t a2, int8x16_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, BlueFin::GlSetBase *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  *(this + 24) = BlueFin::GlPeStartupMgr::checkTime(this, a2, a3);
  *(this + 25) = BlueFin::GlPeStartupMgr::checkOsc(this);
  v43 = *(*this + 100);
  if (*(this + 12) == -7200001 && v43 != -1)
  {
    *(this + 12) = *(BlueFin::GlUtils::m_pInstance + 1092) - *(this + 10);
  }

  *(this + 26) = v43 != -1;

  return BlueFin::GlPeStartupMgr::checkAllEph(this, this + 27, this + 28, this + 31, v39, v40, v41, v42, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t BlueFin::GlPeStartupMgr::checkAllEph(BlueFin::GlPeStartupMgr *this, BOOL *a2, BOOL *a3, BOOL *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, BlueFin::GlSetBase *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v40 = 0;
  a36 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  *a3 = 0;
  *a4 = 0;
  v41 = *this;
  v42 = *(*this + 120200);
  v43 = 7;
  do
  {
    v40 += BlueFin::GlSetBase::Cnt(v42);
    v42 = (v42 + 24);
    --v43;
  }

  while (v43);
  if (v40 >= 4u)
  {
    *a2 = 1;
  }

  BlueFin::GlGnssSet::operator|(v41 + 120224, v41 + 120608, &a9);
  v44 = 0;
  v45 = a30;
  v46 = 7;
  do
  {
    v44 += BlueFin::GlSetBase::Cnt(v45);
    v45 = (v45 + 24);
    --v46;
  }

  while (v46);
  if (v44 >= 4u)
  {
    v47 = 0;
    v48 = 0;
    *a3 = 1;
    do
    {
      Mgr = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*this + 384), v48);
      if (Mgr)
      {
        v50 = Mgr;
        v51 = BlueFin::GlGnssSet::operator()(&a9, v48);
        v57 = *(v51 + 8);
        memcpy(&v61, *v51, 4 * v57);
        v59 = 0;
        v58 = 0;
        v60 = v61;
        while (1)
        {
          BlueFin::GlSetIterator::operator++(&v57);
          if (v58 == v57)
          {
            break;
          }

          v56 = v59;
          v47 += (*(*v50 + 264))(v50, &v56);
        }
      }

      ++v48;
    }

    while (v48 != 7);
    if (v47 > 3)
    {
      *(this + 29) = 1;
    }
  }

  v52 = 0;
  v53 = *(*this + 120584);
  v54 = 7;
  do
  {
    result = BlueFin::GlSetBase::Cnt(v53);
    v52 += result;
    v53 = (v53 + 24);
    --v54;
  }

  while (v54);
  if (v52 >= 4u)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t BlueFin::GlPeStartupMgr::checkTime(BlueFin::GlPeStartupMgr *this, int8x16_t a2, int8x16_t a3)
{
  v3 = *(this + 1);
  if (!*(v3 + 2576))
  {
    return 0;
  }

  a2.i64[0] = *(v3 + 2632);
  if (*a2.i64 == 4294967300.0)
  {
    v4 = -1;
LABEL_4:
    GlCustomLog(14, "GLL_Startup timeUnc %u\n", v4);
    return 0;
  }

  if (*a2.i64 >= 0.5)
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

    v4 = *a2.i64;
    if (*a2.i64 >= 0x3938700)
    {
      goto LABEL_4;
    }
  }

  if (*(this + 13) == -7200001)
  {
    *(this + 13) = *(BlueFin::GlUtils::m_pInstance + 1092) - *(this + 10);
  }

  return 1;
}

uint64_t BlueFin::GlPeStartupMgr::update(BlueFin::GlPeStartupMgr *this)
{
  v1 = *(this + 25);
  if (*(this + 24) == 1)
  {
    if (*(this + 25))
    {
      if ((*(this + 26) & 1) == 0)
      {
        *(this + 9) = 0;
        v7 = 70;
        v6 = "Cold";
        v2 = 84;
        v5 = 84;
        goto LABEL_28;
      }

      if (*(this + 27) & 1) != 0 || (v8 = *(this + 28), v8 == 1) && (*(this + 29))
      {
        v2 = 84;
        v3 = 3;
      }

      else
      {
        v3 = 1;
        if ((*(this + 30) & 1) == 0)
        {
          if ((*(this + 31) | v8))
          {
            v3 = 1;
          }

          else
          {
            v3 = 2;
          }
        }

        v2 = 84;
      }
    }

    else
    {
      if ((*(this + 26) & 1) == 0)
      {
        *(this + 9) = 0;
        v6 = "Cold";
        v5 = 84;
        v2 = 70;
        v7 = 70;
        goto LABEL_28;
      }

      if ((*(this + 27) & 1) != 0 || (*(this + 30) & 1) != 0 || (*(this + 31) & 1) != 0 || *(this + 28) == 1)
      {
        v2 = 70;
        v3 = 1;
      }

      else
      {
        v3 = 0;
        v2 = 70;
      }
    }

    *(this + 9) = v3;
    v6 = BlueFin::GlPeStartupMgr::update(void)::acStartTypeImage[v3];
    v5 = 84;
    goto LABEL_27;
  }

  v4 = *(this + 26);
  *(this + 9) = 0;
  v5 = 70;
  if (v1)
  {
    v2 = 84;
  }

  else
  {
    v2 = 70;
  }

  v6 = "Cold";
  v7 = 70;
  if (v4)
  {
LABEL_27:
    v7 = 84;
  }

LABEL_28:
  if (*(this + 28))
  {
    v9 = 84;
  }

  else
  {
    v9 = 70;
  }

  if (*(this + 31))
  {
    v10 = 84;
  }

  else
  {
    v10 = 70;
  }

  if (*(this + 30))
  {
    v11 = 84;
  }

  else
  {
    v11 = 70;
  }

  if (*(this + 27))
  {
    v12 = 84;
  }

  else
  {
    v12 = 70;
  }

  return GlCustomLog(12, "    GLL_Startup Type: %s,Tim[%c],Osc[%c],Pos[%c],Eph[%c],Cbee[%c],Lto[%c],AEph[%c]\n", v6, v5, v2, v7, v12, v11, v10, v9);
}

uint64_t BlueFin::GlReqSm::CreateMeJob(BlueFin::GlReqSm *this)
{
  v2 = this + 53672;
  *(this + 54571) = 1;
  BlueFin::GlReqSm::SetAsstFromPend(this, 1, 0);
  result = BlueFin::GlReqSm::CreateNewReqFromPend(this);
  v4 = *(this + 3048);
  if ((v4 & 0x800) != 0)
  {
    return result;
  }

  v5 = (this + 10880);
  if (*(*(this + 784) + 136) == 1)
  {
    v6 = *(*(this + 807) + 10);
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
    }

    v7 = v6 * 0.000000001;
    CWRequest = BlueFin::GlPeReqBag::GetCWRequest((this + 10880));
    if (CWRequest)
    {
      WORD6(v91) = 0;
      DWORD2(v91) = 0;
      *&v92 = 0xFFFF0100000000;
      memset(v89, 0, sizeof(v89));
      v90 = 0u;
      *&v91 = 0;
      (*(*CWRequest + 456))();
    }

    if (v7 <= *(*(this + 784) + 128) + -0.000000001)
    {
      goto LABEL_15;
    }

    if ((v4 & 0x100) != 0)
    {
      FactTestItem = BlueFin::GlPeReqBag::GetFactTestItem((this + 10880));
      v9 = v4 & 0x20;
      if ((v4 & 0x20) == 0 && !FactTestItem)
      {
        *(v2 + 1) = this;
        BlueFin::GlTimer::arm((this + 53648), 50, 0, 0x190u);
        *v2 = 1;
        GlCustomLog(14, "CW and CNTIN both requested\n");
LABEL_15:
        GlCustomLog(14, "CNTIN is in frq plan (%.1f, %.1f)\n", v7 * 1000000000.0, *(*(this + 784) + 128) * 1000000000.0);
        goto LABEL_16;
      }
    }

    else
    {
      v9 = v4 & 0x20;
    }

    if (!v9)
    {
      BlueFin::GlPeCntinMgr::StartCntin(*(this + 791));
    }

    goto LABEL_15;
  }

LABEL_16:
  if ((v4 & 0x100) != 0 && (result = BlueFin::GlPeReqBag::GetFactTestItem((this + 10880)), result == 1))
  {
    v11 = *(this + 807);
    v12 = *(v11 + 2);
    v13 = *(v11 + 10) * 0.000000001;
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      result = BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
    }

    if (v13 > 0.000000098 && v13 < 0.0000005)
    {
      v14 = v12 * 0.000000001;
      GlCustomLog(14, "OSC Fresh Override for FACTORY TEST\n");
      BlueFin::GlPeOscMgr::SetOscOff(*(this + 807), v14, 0.000000098, 0);
      result = (*(**(this + 39) + 320))(v14, 0.000000098);
    }
  }

  else
  {
    result = BlueFin::GlReqSm::SetOscOffsAiding(this, 0);
  }

  if ((v4 & 0xF05F) != 0)
  {
    *&v89[0] = v89 + 12;
    BYTE8(v89[0]) = 8;
    memset(v89 + 12, 0, 32);
    *(this + 2471) = 0;
    BlueFin::GlReqSm::GenerateInitialDopplerBasedAiding(this);
    result = BlueFin::GlReqSm::GenerateAiding(this, *(*(this + 785) + 2568), v89, 0, 1);
  }

  if ((v4 & 0x100) == 0)
  {
    goto LABEL_128;
  }

  *(this + 2471) = 0;
  result = BlueFin::GlPeReqBag::GetFactTestItem((this + 10880));
  v21 = result;
  if (!result)
  {
LABEL_119:
    BlueFin::GlReqSm::sendMeSignalAiding(this, (this + 4928), v15, v16, v17, v18, v19, v20, v68, v69, v70, v71, __n, v73, v74, v75, v76, v77, v79, v80, v81, *v82, *&v82[8], *&v82[16], *&v82[24], *&v82[32], v83, v84[0], v84[1], v84[2], v84[3], v84[4], v84[5], v84[6], v84[7], v85, v86, v87, v88, v89[0], v89[1], v89[2], v89[3], v89[4], v89[5], v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, vars0);
    v58 = *(*(this + 807) + 10);
    if (BlueFin::GlUtils::m_ucEnabled)
    {
      BlueFin::GlUtils::IsSysLogEnabledCompleteCheck(0x6F);
    }

    if (v21 != 4 && v58 * 0.000000001 < 0.0000004)
    {
      *(*(this + 807) + 14) = 1;
    }

    v81 = &v82[4];
    v82[0] = 8;
    memset(&v82[4], 0, 32);
    BlueFin::GlSignalIdSet::GlSignalIdSet(v89, &v81, 0);
    BlueFin::GlPeReqBag::GetFactTestSvIds(v5, v89);
    BYTE4(v83) = BYTE8(v89[0]);
    memcpy(v84 + 4, *&v89[0], 4 * BYTE8(v89[0]));
    HIWORD(v83) = 0;
    BYTE5(v83) = 0;
    LODWORD(v84[0]) = HIDWORD(v84[0]);
    BlueFin::GlSetIterator::operator++(&v83 + 4);
    if (BYTE5(v83) != BYTE4(v83))
    {
      while (HIWORD(v83) < 0x23FuLL)
      {
        v59 = *(this + 789);
        v60 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(v83);
        v61 = *v60;
        LODWORD(v60) = v60[1];
        LOBYTE(v79) = v61;
        LODWORD(v80) = v60;
        WORD2(v80) = HIWORD(v83);
        BlueFin::GlPeRangeAidGen::MakeFactoryAid(v59, &v79, v21);
        BlueFin::GlSetIterator::operator++(&v83 + 4);
        if (BYTE5(v83) == BYTE4(v83))
        {
          goto LABEL_127;
        }
      }

LABEL_141:
      v65 = "usIndex < NUM_SIGNAL_IDS";
      DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
      v66 = "glsignalid.h";
      v67 = 578;
LABEL_142:
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v66, v67, v65);
    }

LABEL_127:
    result = BlueFin::GlReqSm::sendMeSatAiding(this, (*(this + 789) + 320));
    goto LABEL_128;
  }

  if (result != 7)
  {
    if (result == 6)
    {
      if ((*(*(this + 784) + 88) - 29) > 1)
      {
        v21 = 6;
      }

      else
      {
        v2[882] = 1;
        (*(**(this + 39) + 560))(*(this + 39), 1);
        v21 = 3;
      }
    }

    goto LABEL_37;
  }

  if ((*(*(this + 784) + 88) - 29) > 1)
  {
    v21 = 7;
LABEL_37:
    v75 = v2;
    *&v89[0] = v89 + 12;
    BYTE8(v89[0]) = 19;
    memset(v89 + 12, 0, 64);
    *(&v89[4] + 8) = 0u;
    v71 = this + 10880;
    BlueFin::GlPeReqBag::GetFactTestSvIds((this + 10880), v89);
    HIDWORD(v83) = BYTE8(v89[0]);
    v73 = *&v89[0];
    v74 = BYTE8(v89[0]);
    __n = 4 * BYTE8(v89[0]);
    memcpy(v84 + 4, *&v89[0], __n);
    LODWORD(v84[0]) = HIDWORD(v84[0]);
    BlueFin::GlSetIterator::operator++(&v83 + 4);
    v24 = *(this + 2471);
    HIDWORD(v76) = 255;
    v78 = 255;
    v25 = 255;
    v26 = 255;
    v27 = 255;
    v28 = 255;
    if (v24 > 0x9F)
    {
LABEL_57:
      v35 = v78 == 255 || HIDWORD(v76) == 255 || v78 != HIDWORD(v76);
      v77 = v35;
      v38 = v25 != 255 && v26 != 255 && v25 == v26;
      v41 = v27 == 255 || v28 == 255 || v27 != v28;
      BYTE4(v83) = v74;
      memcpy(v84 + 4, v73, __n);
      HIWORD(v83) = 0;
      BYTE5(v83) = 0;
      LODWORD(v84[0]) = HIDWORD(v84[0]);
      BlueFin::GlSetIterator::operator++(&v83 + 4);
      if (v24 <= 0x9F)
      {
        while (1)
        {
          if (BYTE5(v83) == BYTE4(v83))
          {
            goto LABEL_118;
          }

          if (HIWORD(v83) >= 0x23FuLL)
          {
            goto LABEL_141;
          }

          v42 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(v83);
          v43 = *v42;
          v44 = v42[1];
          v45 = BlueFin::GlSvId::s_aucSvId2gnss[v43];
          v46 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v44 - v44 + BlueFin::GlSvId::s_aucSvId2gnss[v43]];
          if (!v46)
          {
            v52 = ((v45 != 0) | v77);
            v53 = v45 != 3;
            if ((v52 & 1) == 0 || !v53 && !v41)
            {
LABEL_97:
              v47 = v24;
              goto LABEL_112;
            }

            v47 = (v24 + 1);
            *(this + 2471) = v24 + 1;
            v54 = *(this + 618) + 8 * v24;
            *v54 = v43;
            v50 = *(v2 + 223) | 0x4100;
            *(v54 + 4) = v50;
            v51 = (v54 + 4);
            goto LABEL_107;
          }

          if (v46 == 11 && v38)
          {
            goto LABEL_97;
          }

          v47 = (v24 + 1);
          *(this + 2471) = v24 + 1;
          v48 = *(this + 618) + 8 * v24;
          *v48 = v43;
          v49 = *(v2 + 223);
          v50 = v49 | 0x4100;
          *(v48 + 4) = v49 | 0x4100;
          v51 = (v48 + 4);
          if (v46 <= 4)
          {
            break;
          }

          if (v46 > 7)
          {
            if (v46 == 8)
            {
              v50 = v49 | 0x4500;
              *v51 = v49 | 0x4500;
              v57 = *(this + 784);
              if (*(v57 + 26294) != 1 || *(v57 + 88) < 37 || (*(*(v57 + 26232) + 1) & 0x10) == 0)
              {
                goto LABEL_107;
              }

LABEL_105:
              v50 = v50 & 0xFFFEFEFF | 0x10000;
LABEL_106:
              *v51 = v50;
              goto LABEL_107;
            }

            if (v46 == 13)
            {
              goto LABEL_105;
            }
          }

          else
          {
            if (v46 == 5)
            {
              goto LABEL_100;
            }

            if (v46 == 6)
            {
              v50 = v49 | 0x104100;
              goto LABEL_106;
            }
          }

LABEL_107:
          v55 = *(v2 + 304);
          if (v55 == 2)
          {
            v56 = -17891585;
            goto LABEL_111;
          }

          if (v55 == 1)
          {
            v56 = -1025;
LABEL_111:
            *v51 = v56 & v50;
          }

LABEL_112:
          BlueFin::GlSetIterator::operator++(&v83 + 4);
          v24 = v47;
          if (v47 >= 0xA0)
          {
            goto LABEL_118;
          }
        }

        if (v46 == 1)
        {
          goto LABEL_102;
        }

        if (v46 == 2)
        {
LABEL_100:
          v50 = v49 | 0x4500;
          *v51 = v49 | 0x4500;
        }

        if (v46 == 4)
        {
LABEL_102:
          v50 |= 0x200u;
          goto LABEL_106;
        }

        goto LABEL_107;
      }

LABEL_118:
      v5 = (this + 10880);
      goto LABEL_119;
    }

    if (BYTE5(v83) == BYTE4(v83))
    {
      HIDWORD(v76) = 255;
      v78 = 255;
      goto LABEL_57;
    }

    HIDWORD(v76) = 255;
    v78 = 255;
    while (1)
    {
      if (HIWORD(v83) >= 0x23FuLL)
      {
        goto LABEL_141;
      }

      v29 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * HIWORD(v83);
      v30 = *v29;
      v31 = BlueFin::GlSvId::s_aucSvId2gnss[*v29];
      v32 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v29[1] - v29[1] + v31];
      if (v32 == 11)
      {
        break;
      }

      if (v32 != 2)
      {
        if (!v32)
        {
          if (v31)
          {
            v27 = v30;
            if (v31 != 3)
            {
              v65 = "0";
              DeviceFaultNotify("glreqsm.cpp", 5711, "CreateMeJob", "0");
              v66 = "glreqsm.cpp";
              v67 = 5711;
              goto LABEL_142;
            }
          }

          else
          {
            v78 = v30;
          }
        }

        goto LABEL_54;
      }

      if (v31)
      {
        v28 = v30;
        if (v31 != 3)
        {
          v65 = "0";
          DeviceFaultNotify("glreqsm.cpp", 5732, "CreateMeJob", "0");
          v66 = "glreqsm.cpp";
          v67 = 5732;
          goto LABEL_142;
        }
      }

      else
      {
        HIDWORD(v76) = v30;
      }

LABEL_56:
      BlueFin::GlSetIterator::operator++(&v83 + 4);
      if (BYTE5(v83) == BYTE4(v83))
      {
        goto LABEL_57;
      }
    }

    v25 = v30;
LABEL_54:
    if (v32 == 5)
    {
      v26 = v30;
    }

    goto LABEL_56;
  }

  v22 = *(this + 3049);
  if ((v22 & 0x80000000) != 0)
  {
    if (v22 == -1)
    {
      v64 = -1000;
      goto LABEL_140;
    }

    v23 = *(this + 7059);
  }

  else
  {
    v23 = *(*(*(v5 + v22) + 8) + 22);
  }

  if (v23 == 1)
  {
    goto LABEL_128;
  }

  v64 = 1000 * v23;
LABEL_140:
  result = (*(**(this + 39) + 584))(*(this + 39), v64);
LABEL_128:
  if (*(*(this + 784) + 26336) == 1)
  {
    v2[1229] = 0;
    result = GlCustomLog(14, "GPS_FIX_STA toggle LOW\n");
    v62 = *(this + 784);
    v63 = *(v62 + 88);
    if ((v63 - 37) >= 2)
    {
      if (v63 == 40)
      {
        (*(**(this + 39) + 568))(*(this + 39));
        return (*(**(this + 39) + 576))();
      }
    }

    else
    {
      result = *(*(this + 783) + 48);
      if (result)
      {
        return (*(*result + 112))(result, 1, *(v62 + 26337), 0);
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPeReqBag::AddNewRequest(BlueFin::GlPeReqBag *this, BlueFin::GlRequestImpl *a2, uint64_t a3, unsigned __int16 *a4, BOOL *a5)
{
  v7 = a3;
  v35 = this + 3233;
  v36 = *(this + 3233);
  *(this + 3233) = 0;
  if (a5)
  {
    *a5 = 0;
  }

  v10 = *(a2 + 4);
  if (v10 == 6)
  {
    if ((*(this + 1312) & 0x40) == 0)
    {
      goto LABEL_10;
    }
  }

  else if ((v10 & 0xFFFFFFFE) != 0xE || (*(this + 1313) & 0xC0) == 0)
  {
LABEL_10:
    if (*(this + 813) == -1 && (*(this + 3236) & 1) == 0)
    {
      v13 = 0;
      v14 = (*(BlueFin::GlUtils::m_pInstance + 1092) - a3);
      *v37 = this + 3233;
      v37[8] = *(this + 3233);
      *(this + 3233) = 0;
      *(this + 813) = v14;
      do
      {
        v15 = *(this + v13);
        if (v15)
        {
          (*(*v15 + 168))(v15, v14);
        }

        v13 += 8;
      }

      while (v13 != 576);
      **v37 = v37[8];
    }

    for (i = 0; i != 72; ++i)
    {
      if (!*(this + i))
      {
        v18 = *(this + 77);
        v19 = *(*v18 + 88);
        if ((*(a2 + 4) & 0xFFFFFFFE) == 0xE)
        {
          v20 = v19(v18);
          v21 = 175776;
          v22 = 46;
        }

        else
        {
          v20 = v19(v18);
          v21 = 512;
          v22 = 45;
        }

        Memory = BlueFin::GlMemAlloc::glAllocateMemory(v22, v21, v20);
        v24 = Memory;
        if (!Memory)
        {
          DeviceFaultNotify("glpe_reqbag.cpp", 464, "AddNewRequest", "pInPlaceMemBuff != nullptr");
          __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqbag.cpp", 464, "pInPlaceMemBuff != nullptr");
        }

        v25 = *(a2 + 12);
        if (v25 == 0xFFFF)
        {
          v26 = 0;
          v25 = *(this + 1617);
          *(a2 + 12) = v25;
          if (v25 == 95)
          {
            v27 = 0;
          }

          else
          {
            v27 = v25 + 1;
          }

          *(this + 1617) = v27;
          *&v37[4] = 0;
          v38 = 0;
          do
          {
            v28 = *(this + v26);
            if (v28)
            {
              v29 = *(v28 + 8);
              if (v29)
              {
                *&v37[4 * (*(v29 + 24) >> 5) + 4] |= 1 << *(v29 + 24);
              }
            }

            v26 += 8;
          }

          while (v26 != 576);
          if (*&v37[4] == -1 && *&v37[8] == -1 && v38 == -1)
          {
            DeviceFaultNotify("glpe_reqbag.cpp", 475, "AddNewRequest", "!otUsedReqIds.IsFull()");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqbag.cpp", 475, "!otUsedReqIds.IsFull()");
          }

          if ((*&v37[4 * (v27 >> 5) + 4] >> (v27 & 0x1F)))
          {
            do
            {
              if ((v27 + 1) == 96)
              {
                v27 = 0;
              }

              else
              {
                ++v27;
              }
            }

            while (((*&v37[4 * (v27 >> 5) + 4] >> (v27 & 0x1F)) & 1) != 0);
            *(this + 1617) = v27;
          }
        }

        switch(*(a2 + 4))
        {
          case 0:
            v32.n128_f64[0] = BlueFin::GlPeRqHdlrPosPeriodic::GlPeRqHdlrPosPeriodic(Memory, a2, v7, v25, this + 2500, 0);
            break;
          case 1:
            BlueFin::GlPeRqHdlrPosSigleShot::GlPeRqHdlrPosSigleShot(Memory, a2);
            break;
          case 2:
            BlueFin::GlPeRqHdlrMeas::GlPeRqHdlrMeas(Memory, a2, v7, v25, this + 2500, this + 3296);
            v33 = &unk_2A1F14BC8;
            goto LABEL_60;
          case 3:
            BlueFin::GlPeRqHdlrMeas::GlPeRqHdlrMeas(Memory, a2, v7, v25, this + 2500, this + 3296);
            *v24 = &unk_2A1F14A40;
            *(v24 + 80) = 1;
            *(v24 + 84) = v7;
            break;
          case 4:
            BlueFin::GlPeRqHdlr::GlPeRqHdlr(Memory, a2, v7, v25, this + 2500);
            *v24 = &unk_2A1F13FF0;
            *(v24 + 76) = 0;
            *(v24 + 64) = v24 + 76;
            *(v24 + 72) = 3;
            *(v24 + 81) = 0;
            *(v24 + 92) = v7 + 3700000;
            break;
          case 5:
            BlueFin::GlPeRqHdlr::GlPeRqHdlr(Memory, a2, v7, v25, this + 2500);
            v33 = &unk_2A1F13E68;
            goto LABEL_60;
          case 6:
            BlueFin::GlPeRqHdlr::GlPeRqHdlr(Memory, a2, v7, v25, this + 2500);
            *v24 = &unk_2A1F151E8;
            *(v24 + 64) = &unk_2A1F15358;
            *(v24 + 72) = 0;
            v32.n128_u64[0] = 0xFFFFFFFFLL;
            *(v24 + 80) = 0xFFFFFFFFLL;
            *(v24 + 88) = 0;
            *(v24 + 96) = 0;
            *(v24 + 104) = a2;
            *(v24 + 112) = 0;
            break;
          case 8:
            BlueFin::GlPeRqHdlrFactTest::GlPeRqHdlrFactTest(Memory, a2, v7, v25, this + 2500, this + 13120);
            v34 = (*(a2 + 58) >> 25) & 1;
            *(this + 3256) = (*(a2 + 58) & 0x2000000) != 0;
            *(this + 3257) = v34;
            break;
          case 9:
            BlueFin::GlPeRqHdlr::GlPeRqHdlr(Memory, a2, v7, v25, this + 2500);
            v33 = &unk_2A1F13CE0;
            goto LABEL_60;
          case 0xA:
            BlueFin::GlPeRqHdlr::GlPeRqHdlr(Memory, a2, v7, v25, this + 2500);
            v33 = &unk_2A1F14560;
            goto LABEL_60;
          case 0xB:
            BlueFin::GlPeRqHdlr::GlPeRqHdlr(Memory, a2, v7, v25, this + 2500);
            v33 = &unk_2A1F14D50;
LABEL_60:
            *v24 = v33;
            break;
          case 0xE:
            BlueFin::GlPeRqHdlr::GlPeRqHdlr(Memory, a2, v7, v25, this + 2500);
            *v24 = &unk_2A1F148B8;
            memset((v24 + 7848), 255, 0x2F0uLL);
            bzero((v24 + 64), 0x1E68uLL);
            bzero((v24 + 8600), 0xBC0uLL);
            break;
          case 0xF:
            BlueFin::GlPeRqHdlrGnssMeasData::GlPeRqHdlrGnssMeasData(Memory, a2, v7, v25, this + 2500);
            break;
          default:
            DeviceFaultNotify("glpe_reqbag.cpp", 568, "AddNewRequest", "0");
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqbag.cpp", 568, "0");
        }

        (*(*a2 + 136))(a2, 14, v32);
        *(this + i) = v24;
        if (*(this + 813) != -1)
        {
          (*(*v24 + 168))(v24);
        }

        *(this + 328) |= 1 << *(a2 + 8);
        *(*(this + 78) + 4 * (i >> 5)) |= 1 << i;
        if (*(v24 + 23) == 1)
        {
          if (a5)
          {
            *a5 = 1;
          }
        }

        else
        {
          BlueFin::GlPeRqHdlr::ToSlog(v24);
          BlueFin::GlPeReqBag::DetermineEarliestPositionRequestTimeout(this);
        }

        if (a4)
        {
          *a4 = *(a2 + 12);
        }

        result = 1;
        goto LABEL_70;
      }
    }

    v11 = *(a2 + 5);
    if (!v11)
    {
      goto LABEL_23;
    }

    v12 = 3;
    goto LABEL_22;
  }

  v11 = *(a2 + 5);
  if (v11)
  {
    v12 = 4;
LABEL_22:
    v11(a2, v12);
  }

LABEL_23:
  result = 0;
LABEL_70:
  *v35 = v36;
  return result;
}

uint64_t BlueFin::GlPeRqHdlr::GlPeRqHdlr(uint64_t a1, _DWORD *a2, int a3, __int16 a4, uint64_t *a5)
{
  v16 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A1F13AD0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = a3;
  *(a1 + 32) = a3;
  *(a1 + 36) = 0x3E80000FFFFFFFFLL;
  *(a1 + 44) = 0;
  *(a1 + 48) = a4;
  *(a1 + 56) = a5;
  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__s = 0u;
  v10 = 0u;
  BlueFin::GlPeNmeaGen::FormatNmeaNEW(*a5, a2, a4, __s, 100, (a5[11] + 54608), (*(a5[11] + 6336) + 11920), *(*(a5[11] + 6440) + 36));
  GlCustomLog(20, "GL_NMEA[%d][%s", *(a1 + 48), __s);
  v6 = strlen(__s);
  BlueFin::GlPeRqHdlr::OnNmea(a1, __s, v6, v7);
  return a1;
}

char *BlueFin::GlPeNmeaGen::FormatNmeaNEW(uint64_t a1, _DWORD *a2, int a3, BlueFin::GlFormat *a4, int a5, int *a6, int *a7, int a8)
{
  v56 = 0;
  v57 = 0;
  v54 = 0u;
  v55 = 0u;
  v52[0] = 1;
  v53 = a3;
  BlueFin::GlPeNmeaGen::GetRequestParams(a1, a2, &v57, v52);
  v14 = v57;
  if (!v57)
  {
    v49 = "acNmeaNewList";
    DeviceFaultNotify("glpe_nmeagen.cpp", 4780, "FormatNmeaNEW", "acNmeaNewList");
    v50 = 4780;
    goto LABEL_85;
  }

  v15 = a5;
  v16 = a4 + a5;
  v17 = v16 - 1;
  if (v16 - 1 <= a4)
  {
    v18 = 0;
  }

  else
  {
    v18 = v15;
  }

  v51 = a4;
  v20 = (a4 + BlueFin::GlFormat::glsnprintf(a4, v18, "$PGLOR,%d,NEW", v13, 2));
  if (v52[0])
  {
    v21 = 0;
    while (1)
    {
      v22 = *v14;
      if (!*v14)
      {
        break;
      }

      if (v17 <= v20)
      {
        v23 = 0;
      }

      else
      {
        v23 = (v16 - v20);
      }

      ++v14;
      v20 = (v20 + BlueFin::GlFormat::glsnprintf(v20, v23, ",%s,%d", v19, v22, *&v52[4 * v21++ + 4]));
      if (v21 >= v52[0])
      {
        goto LABEL_12;
      }
    }

    v49 = "*acNmeaNewList";
    DeviceFaultNotify("glpe_nmeagen.cpp", 4792, "FormatNmeaNEW", "*acNmeaNewList");
    v50 = 4792;
LABEL_85:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nmeagen.cpp", v50, v49);
  }

LABEL_12:
  v57 = v14;
  if ((a8 - 1) > 2)
  {
    v24 = "C";
  }

  else
  {
    v24 = off_29EEB4190[a8 - 1];
  }

  if (v17 <= v20)
  {
    v25 = 0;
  }

  else
  {
    v25 = (v16 - v20);
  }

  v26 = BlueFin::GlFormat::glsnprintf(v20, v25, ",%s,", v19, v24);
  v28 = (v20 + v26);
  v29 = *a7;
  if ((*a7 & 0x100) != 0)
  {
    if (v17 <= v28)
    {
      v30 = 0;
    }

    else
    {
      v30 = (v16 - v28);
    }

    v28 = (v28 + BlueFin::GlFormat::glsnprintf((v20 + v26), v30, "L", v27));
    v29 = *a7;
  }

  if ((v29 & 0x200) != 0)
  {
    if (v17 <= v28)
    {
      v40 = 0;
    }

    else
    {
      v40 = (v16 - v28);
    }

    v28 = (v28 + BlueFin::GlFormat::glsnprintf(v28, v40, "T", v27));
    v29 = *a7;
    if ((*a7 & 4) == 0)
    {
LABEL_25:
      if ((v29 & 0x400000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_54;
    }
  }

  else if ((v29 & 4) == 0)
  {
    goto LABEL_25;
  }

  if (v17 <= v28)
  {
    v41 = 0;
  }

  else
  {
    v41 = (v16 - v28);
  }

  v28 = (v28 + BlueFin::GlFormat::glsnprintf(v28, v41, "E", v27));
  v29 = *a7;
  if ((*a7 & 0x400000) == 0)
  {
LABEL_26:
    if ((v29 & 0x800) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_54:
  if (v17 <= v28)
  {
    v42 = 0;
  }

  else
  {
    v42 = (v16 - v28);
  }

  v28 = (v28 + BlueFin::GlFormat::glsnprintf(v28, v42, "e", v27));
  v29 = *a7;
  if ((*a7 & 0x800) == 0)
  {
LABEL_27:
    if ((v29 & 2) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

LABEL_58:
  if (v17 <= v28)
  {
    v43 = 0;
  }

  else
  {
    v43 = (v16 - v28);
  }

  v28 = (v28 + BlueFin::GlFormat::glsnprintf(v28, v43, "C", v27));
  if ((*a7 & 2) != 0)
  {
LABEL_28:
    if (v17 <= v28)
    {
      v31 = 0;
    }

    else
    {
      v31 = (v16 - v28);
    }

    v28 = (v28 + BlueFin::GlFormat::glsnprintf(v28, v31, "O", v27));
  }

LABEL_32:
  if (v17 <= v28)
  {
    v32 = 0;
  }

  else
  {
    v32 = (v16 - v28);
  }

  v33 = BlueFin::GlFormat::glsnprintf(v28, v32, ",", v27);
  v36 = (v28 + v33);
  v37 = *a6;
  if ((*a6 & 0x100) != 0)
  {
    if (v17 <= v36)
    {
      v44 = 0;
    }

    else
    {
      v44 = (v16 - v36);
    }

    v36 = (v36 + BlueFin::GlFormat::glsnprintf((v28 + v33), v44, "L", v35));
    v37 = *a6;
    if ((*a6 & 0x200) == 0)
    {
LABEL_37:
      if ((v37 & 4) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_71;
    }
  }

  else if ((v37 & 0x200) == 0)
  {
    goto LABEL_37;
  }

  if (v17 <= v36)
  {
    v45 = 0;
  }

  else
  {
    v45 = (v16 - v36);
  }

  v36 = (v36 + BlueFin::GlFormat::glsnprintf(v36, v45, "T", v35));
  v37 = *a6;
  if ((*a6 & 4) == 0)
  {
LABEL_38:
    if ((v37 & 0x800) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_75;
  }

LABEL_71:
  if (v17 <= v36)
  {
    v46 = 0;
  }

  else
  {
    v46 = (v16 - v36);
  }

  v36 = (v36 + BlueFin::GlFormat::glsnprintf(v36, v46, "E", v35));
  v37 = *a6;
  if ((*a6 & 0x800) == 0)
  {
LABEL_39:
    if ((v37 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_79;
  }

LABEL_75:
  if (v17 <= v36)
  {
    v47 = 0;
  }

  else
  {
    v47 = (v16 - v36);
  }

  v36 = (v36 + BlueFin::GlFormat::glsnprintf(v36, v47, "C", v35));
  v37 = *a6;
  if ((*a6 & 0x40) == 0)
  {
LABEL_40:
    if ((v37 & 2) == 0)
    {
      return BlueFin::GlPeNmeaGen::nmeaAddChksum(v51, v16 - 1, v34);
    }

    goto LABEL_41;
  }

LABEL_79:
  if (v17 <= v36)
  {
    v48 = 0;
  }

  else
  {
    v48 = (v16 - v36);
  }

  v36 = (v36 + BlueFin::GlFormat::glsnprintf(v36, v48, "A", v35));
  if ((*a6 & 2) != 0)
  {
LABEL_41:
    if (v17 <= v36)
    {
      v38 = 0;
    }

    else
    {
      v38 = (v16 - v36);
    }

    BlueFin::GlFormat::glsnprintf(v36, v38, "O", v35);
  }

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(v51, v16 - 1, v34);
}

double BlueFin::GlPeRqHdlrPosPeriodic::GlPeRqHdlrPosPeriodic(uint64_t a1, _DWORD *a2, int a3, __int16 a4, uint64_t *a5, uint64_t a6)
{
  v8 = BlueFin::GlPeRqHdlr::GlPeRqHdlr(a1, a2, a3, a4, a5);
  *v8 = &unk_2A1F14ED8;
  *(v8 + 64) = 0;
  *(v8 + 76) = 0;
  *(v8 + 68) = 0;
  *(v8 + 84) = a3;
  *&result = 0x19000000000;
  *(v8 + 88) = 0x19000000000;
  *(v8 + 96) = 0;
  *(v8 + 100) = a3;
  *(v8 + 104) = -1;
  *(v8 + 108) = 0;
  *(v8 + 112) = 50;
  *(v8 + 172) = 0;
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  *(v8 + 168) = 0;
  *(v8 + 176) = a6;
  *(v8 + 136) = 0;
  *(v8 + 144) = 0;
  *(v8 + 128) = 0;
  *(v8 + 120) = -7200001;
  return result;
}

void BlueFin::GlPeNmeaGen::GetRequestParams(uint64_t a1, _DWORD *a2, char ***a3, _BYTE *a4)
{
  v6 = a2[4];
  switch(v6)
  {
    case 0:
      *a3 = off_2A18BA620;
      v8 = (*(*a2 + 184))(a2);
      v9 = *a4;
      if (v9 <= 0xA)
      {
        *a4 = v9 + 1;
        *&a4[4 * v9 + 4] = v8;
      }

      v10 = (*(*a2 + 152))(a2);
      goto LABEL_26;
    case 1:
      *a3 = off_2A18BA640;
      v19 = *a4;
      if (v19 <= 0xA)
      {
        v20 = *(a2 + 11);
        *a4 = v19 + 1;
        *&a4[4 * v19 + 4] = v20;
      }

      v21 = (*(*a2 + 152))(a2);
      v22 = *a4;
      if (v22 <= 0xA)
      {
        *a4 = v22 + 1;
        *&a4[4 * v22 + 4] = v21;
      }

      v10 = (*(*a2 + 200))(a2);
      goto LABEL_26;
    case 2:
      v18 = off_2A18BA5C0;
      goto LABEL_29;
    case 3:
      *a3 = off_2A18BA5A8;
      v10 = (*(*a2 + 184))(a2);
LABEL_26:
      v23 = *a4;
      if (v23 <= 0xA)
      {
        *a4 = v23 + 1;
        *&a4[4 * v23 + 4] = v10;
      }

      return;
    case 4:
      v16 = &_MergedGlobals;
      goto LABEL_40;
    case 5:
      v16 = &off_2A18BA568;
      goto LABEL_40;
    case 6:
      v18 = off_2A18BA5D8;
LABEL_29:
      *a3 = v18;
      v24 = *a4;
      if (v24 > 0xA)
      {
        return;
      }

      v25 = *(a2 + 11);
      goto LABEL_38;
    case 8:
      v63 = 0;
      v62 = 0;
      v64 = 0xFFFF0100000000;
      memset(v55, 0, sizeof(v55));
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0;
      (*(*a2 + 456))(a2, v55);
      if ((*(*a2 + 360))(a2))
      {
        *a3 = off_2A18BA668;
        v26 = (*(*a2 + 320))(a2);
        v27 = *a4;
        if (v27 <= 0xA)
        {
          *a4 = v27 + 1;
          *&a4[4 * v27 + 4] = v26;
        }

        v28 = (*(*a2 + 360))(a2);
        v29 = *a4;
        if (v29 <= 0xA)
        {
          *a4 = v29 + 1;
          *&a4[4 * v29 + 4] = v28;
        }

        goto LABEL_69;
      }

      if ((v64 & 0x62) != 0)
      {
        GlCustomLog(20, "<FTCW> GlPeNmeaGen::GetRequestParams for SvId %d\n", BYTE4(v64));
        if ((v64 & 0x20) != 0)
        {
          v30 = BYTE4(v64) >= 0x34u && BYTE4(v64) < 0x42u;
        }

        else
        {
          v30 = 0;
        }

        if ((v64 & 0x40) != 0)
        {
          v42 = BYTE4(v64) >= 0x8Bu ? v30 : 2;
          if (BYTE4(v64) >= 0x4Cu)
          {
            v30 = v42;
          }
        }

        *a3 = off_2A18BA690;
        v43 = *a4;
        if (v43 <= 0xA)
        {
          v44 = v30;
          v45 = (v55 | (4 * v30));
          v46 = *v45;
          *a4 = v43 + 1;
          v47 = a4 + 4;
          *&a4[4 * v43 + 4] = v46;
          if (v43 != 10)
          {
            v48 = v45[10];
            *a4 = v43 + 2;
            *&v47[4 * v43 + 4] = v48;
            if (v43 <= 8)
            {
              v49 = *((v55 | (4 * v44)) + 0x50);
              *a4 = v43 + 3;
              *&v47[4 * v43 + 8] = v49;
              if (v43 != 8)
              {
                *a4 = v43 + 4;
                *&v47[4 * v43 + 12] = 1000;
                if (v43 <= 6)
                {
                  v50 = BYTE4(v64);
                  *a4 = v43 + 5;
                  *&v47[4 * v43 + 16] = v50;
                }
              }
            }
          }
        }

LABEL_69:
        v51 = (*(*a2 + 368))(a2);
        v52 = *a4;
        if (v52 >= 0xB)
        {
          return;
        }

        goto LABEL_70;
      }

      *a3 = off_2A18BA718;
      v31 = *a4;
      if (v31 <= 0xA)
      {
        v32 = v55[0];
        *a4 = v31 + 1;
        v33 = a4 + 4;
        *&a4[4 * v31 + 4] = v32;
        if (v31 != 10)
        {
          v34 = DWORD2(v56);
          *a4 = v31 + 2;
          *&v33[4 * v31 + 4] = v34;
          if (v31 <= 8)
          {
            v35 = v59;
            *a4 = v31 + 3;
            *&v33[4 * v31 + 8] = v35;
            if (v31 != 8)
            {
              v36 = BYTE4(v64);
              *a4 = v31 + 4;
              *&v33[4 * v31 + 12] = v36;
            }
          }
        }
      }

      v37 = (*(*a2 + 368))(a2);
      v38 = *a4;
      if (v38 <= 0xA)
      {
        v39 = &a4[4 * v38];
        LODWORD(v38) = v38 + 1;
        *a4 = v38;
        *(v39 + 1) = v37;
      }

      v40 = v62;
      if (v62)
      {
        v41 = 0xF4240 / v62;
      }

      else
      {
        v41 = 0;
      }

      if (v38 <= 0xA)
      {
        v53 = &a4[4 * v38];
        LODWORD(v38) = v38 + 1;
        *a4 = v38;
        *(v53 + 1) = v41;
      }

      v54 = v40 * v63;
      if (v54)
      {
        v54 = 0xF4240 / v54;
      }

      if (v38 <= 0xA)
      {
        v52 = v38 + 1;
        *a4 = v38 + 1;
        *&a4[4 * v38 + 4] = v54;
        if (v38 != 10)
        {
          v51 = (v64 >> 2) & 3;
LABEL_70:
          *a4 = v52 + 1;
          *&a4[4 * v52 + 4] = v51;
        }
      }

      return;
    case 9:
      v16 = &off_2A18BA578;
      goto LABEL_40;
    case 10:
      *a3 = off_2A18BA5F0;
      v24 = *a4;
      if (v24 > 0xA)
      {
        return;
      }

      v25 = a2[22];
LABEL_38:
      *a4 = v24 + 1;
      *&a4[4 * v24 + 4] = v25;
      return;
    case 11:
      v11 = (*(*a2 + 536))(a2);
      if (v11)
      {
        *a3 = off_2A18BA6D0;
        v12 = *a4;
        if (v12 <= 0xA)
        {
          v13 = *v11;
          v14 = &a4[4 * v12];
          LODWORD(v12) = v12 + 1;
          *a4 = v12;
          *(v14 + 1) = v13;
        }

        for (i = 1; i != 7; ++i)
        {
          if (v12 <= 0xA)
          {
            *&a4[4 * v12 + 4] = v11[i];
            LODWORD(v12) = v12 + 1;
            *a4 = v12;
          }
        }
      }

      return;
    case 12:
      v16 = &off_2A18BA588;
      goto LABEL_40;
    case 13:
      v16 = &off_2A18BA598;
LABEL_40:
      *a3 = v16;
      return;
    default:
      *a3 = off_2A18BA608;
      v17 = *a4;
      if (v17 <= 0xA)
      {
        *a4 = v17 + 1;
        *&a4[4 * v17 + 4] = v6;
      }

      return;
  }
}