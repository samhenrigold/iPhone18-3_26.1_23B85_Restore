uint64_t BlueFin::GlPeNmeaGen::IsGnssSupportedForReport(uint64_t a1, unsigned int a2)
{
  if (*(a1 + a2 + 276))
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = *(a1 + 26012);
    if (a2 > 3)
    {
      if (a2 == 4)
      {
        v2 = (v2 >> 3) & 1;
        return v2 & 1;
      }

      v3 = (v2 >> 2) & 1;
      v2 = (v2 >> 4) & 1;
      if (a2 != 6)
      {
        LOBYTE(v2) = 0;
      }

      v4 = a2 == 5;
    }

    else
    {
      if (!a2)
      {
        return v2 & 1;
      }

      v3 = (v2 >> 1) & 1;
      v2 = (v2 >> 5) & 1;
      if (a2 != 3)
      {
        LOBYTE(v2) = 0;
      }

      v4 = a2 == 2;
    }

    if (v4)
    {
      LOBYTE(v2) = v3;
    }
  }

  return v2 & 1;
}

BOOL BlueFin::GlPeNmeaGsvSatsNum::OutputNmeaSignalID(BlueFin::GlPeNmeaGsvSatsNum *this, int a2)
{
  v2 = *(this + 5);
  v3 = a2 != 7;
  v4 = a2 != 5;
  if (v2 != 6)
  {
    v4 = 1;
  }

  if (v2 != 5)
  {
    v3 = v4;
  }

  v5 = a2 != 1;
  v6 = v5;
  if (v2 != 4)
  {
    v6 = 1;
  }

  if (v2 != 3)
  {
    v5 = v6;
  }

  if (v2 <= 4)
  {
    v3 = v5;
  }

  v7 = v2 != 2 || a2 != 1;
  if (v2 == 1)
  {
    v7 = a2 != 1;
  }

  if (!v2)
  {
    v7 = a2 != 1;
  }

  if (v2 <= 2)
  {
    return v7;
  }

  else
  {
    return v3;
  }
}

char *BlueFin::GlPeNmeaGen::FormatNmeaRMC(uint64_t a1, uint64_t a2, BlueFin::GlFormat *this, const char *a4)
{
  v7 = this + a4;
  v8 = v7 - 1;
  *this = 0;
  if (v7 - 1 <= this)
  {
    v9 = 0;
  }

  else
  {
    v9 = a4;
  }

  if (*(*(a1 + 1832) + 26256))
  {
    v10 = "$GNRMC,%s,";
  }

  else
  {
    v10 = "$GPRMC,%s,";
  }

  v11 = BlueFin::GlFormat::glsnprintf(this, v9, v10, a4, a1 + 1767);
  v13 = (this + v11);
  if (!*(a2 + 4048) || (*(a2 + 4068) & 8) != 0)
  {
    v32 = "V,,,,,,,%s,,,%c";
    v33 = 78;
  }

  else
  {
    v14 = *(a2 + 4072);
    v15 = *(a2 + 4080);
    v16 = fabs(v14);
    v17 = fabs(v15);
    v18 = v16;
    v19 = v17;
    v20 = (v16 - v18) * 60.0;
    v21 = v20;
    v22 = ((v20 - v21) * 1000000.0);
    v23 = (v17 - v19) * 60.0;
    v24 = v23;
    v25 = (v23 - v24) * 1000000.0;
    if (v8 <= v13)
    {
      v26 = 0;
    }

    else
    {
      v26 = (v7 - v13);
    }

    v43 = v18;
    v27 = 87;
    if (v15 >= 0.0)
    {
      v27 = 69;
    }

    v44 = v27;
    v28 = 83;
    if (v14 >= 0.0)
    {
      v28 = 78;
    }

    v29 = (v13 + BlueFin::GlFormat::glsnprintf((this + v11), v26, "A,%02d%02d.%06d,%c,%03d%02d.%06d,%c,", v12, v43, v21, v22, v28, v19, v24, v25, v44));
    if (*(a2 + 4192))
    {
      if (v8 <= v29)
      {
        v30 = 0;
      }

      else
      {
        v30 = (v7 - v29);
      }

      v31 = (v29 + BlueFin::GlFormat::glsnprintf(v29, v30, "%05.1f,", v12, *(a2 + 4200)));
    }

    else
    {
      *v29 = 44;
      v31 = (v29 + 1);
    }

    if (*(a2 + 4208))
    {
      if (v8 <= v31)
      {
        v34 = 0;
      }

      else
      {
        v34 = (v7 - v31);
      }

      v13 = (v31 + BlueFin::GlFormat::glsnprintf(v31, v34, "%05.1f,", v12, *(a2 + 4216)));
    }

    else
    {
      *v31 = 44;
      v13 = (v31 + 1);
    }

    if (*(a2 + 4274) <= 0)
    {
      v33 = 69;
    }

    else
    {
      v33 = 65;
    }

    v32 = "%s,,,%c";
  }

  v35 = *(a2 + 4060);
  if (v35 == 7 || v35 == 4)
  {
    v33 = 77;
  }

  if (*(*(a1 + 1832) + 26256) == 1)
  {
    if (*(a2 + 5624))
    {
      v33 = 68;
    }

    else
    {
      v33 = v33;
    }
  }

  if (v8 <= v13)
  {
    v36 = 0;
  }

  else
  {
    v36 = (v7 - v13);
  }

  v37 = BlueFin::GlFormat::glsnprintf(v13, v36, v32, v12, a1 + 1799, v33);
  if (*(*(a1 + 1832) + 26256) == 1)
  {
    v40 = (v13 + v37);
    if (v8 <= v40)
    {
      v41 = 0;
    }

    else
    {
      v41 = (v7 - v40);
    }

    BlueFin::GlFormat::glsnprintf(v40, v41, ",%c", v39, 86);
  }

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v7 - 1, v38);
}

uint64_t BlueFin::GlPeRqHdlrPosPeriodic::SendPglorFix(uint64_t result, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if ((*(result + 20) & 1) == 0)
  {
    v3 = result;
    v4 = *(result + 104);
    if (v4 == -1)
    {
      v7 = *(result + 36);
      if (v7 == -1)
      {
        v9 = *(result + 32);
        v6 = 1;
      }

      else
      {
        v8 = *(*(result + 8) + 28);
        v9 = *(result + 32);
        v10 = v9 + v7;
        v11 = v10 >= v8;
        v12 = v10 - v8;
        if (v11)
        {
          v6 = v12;
        }

        else
        {
          v6 = 1;
        }
      }

      v5 = v9 - *(result + 28);
    }

    else
    {
      v5 = *a2 - v4;
      v6 = v5;
    }

    BlueFin::GlPeNmeaGen::FormatNmeaFIX(**(result + 56), v6, v5, __s, 80);
    GlCustomLog(20, "GL_NMEA[%d][%s", *(v3 + 48), __s);
    v13 = strlen(__s);
    result = BlueFin::GlPeRqHdlr::OnNmea(v3, __s, v13, v14);
    *(v3 + 104) = *a2;
    if (!*(v3 + 80))
    {
      GlCustomLog(13, "\tTTFF=%u:%02u.%01u\n", (v6 + 50) / 0xEA60u, (v6 + 50) / 0x3E8u - 60 * ((71582789 * ((v6 + 50) / 0x3E8u)) >> 32), (v6 + 50) / 0x64u - 10 * ((429496730 * ((v6 + 50) / 0x64u)) >> 32));
      return GlCustomLog(14, "TTFF @ <gps_time WeekNum=%hu TowMs=%u/>\n", *(a2 + 24), *(a2 + 28));
    }
  }

  return result;
}

uint64_t BlueFin::GlPeRqHdlrPosPeriodic::SetFixStatus(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x2A1C7C4A8](a1, a2);
  v18 = *MEMORY[0x29EDCA608];
  if (v3)
  {
    v4 = result;
    if ((*(result + 20) & 1) == 0)
    {
      v5 = v3;
      result = BlueFin::GlPeRqHdlrPosPeriodic::IsPeriodExpired(result);
      if (result)
      {
        ++*(v4 + 76);
        bzero(__dst, 0x1CF8uLL);
        memset(&__dst[927], 248, 24);
        HIDWORD(v6) = 0;
        memset(v17, 0, sizeof(v17));
        if (__dst != v5)
        {
          memcpy(__dst, v5, sizeof(__dst));
          memcpy(v17, v5 + 930, sizeof(v17));
        }

        v7 = *(v4 + 168);
        LODWORD(v6) = *(v4 + 72);
        __dst[863] = v6;
        LODWORD(__dst[877]) = *(v4 + 172);
        if (v7)
        {
          ++*(v4 + 80);
          *(v4 + 64) = 0;
          *(v4 + 42) = 300;
          *(*(*(v4 + 56) + 16) + 61488) = 0;
          LOBYTE(v7) = 1;
        }

        else
        {
          memset(&__dst[535], 0, 64);
          memset(&__dst[607], 0, 256);
          memset(&__dst[671], 0, 256);
        }

        LOBYTE(__dst[506]) = v7;
        if ((*(**(v4 + 8) + 168))(*(v4 + 8)) < 1)
        {
          v9 = 0;
        }

        else
        {
          v8 = *(v4 + 76);
          v9 = v8 >= (*(**(v4 + 8) + 168))(*(v4 + 8));
        }

        if ((*(**(v4 + 8) + 160))(*(v4 + 8)) < 1)
        {
          v11 = 0;
        }

        else
        {
          v10 = *(v4 + 80);
          v11 = v10 >= (*(**(v4 + 8) + 160))(*(v4 + 8));
        }

        result = *(v4 + 8);
        v12 = *(result + 48);
        if (v12)
        {
          result = v12();
        }

        if (v9 || v11)
        {
          if (!*(v4 + 80))
          {
            BlueFin::GlPeRqHdlrPosPeriodic::SendPglorFix(v4, v5);
          }

          v13 = 70;
          if (*(v4 + 23))
          {
            v14 = 84;
          }

          else
          {
            v14 = 70;
          }

          if (v11)
          {
            v15 = 84;
          }

          else
          {
            v15 = 70;
          }

          if (v9)
          {
            v13 = 84;
          }

          GlCustomLog(13, "REQ Complete: TF=%c VF=%c TOUT=%c\n", v13, v15, v14);
          *(v4 + 24) = 1;
          result = (*(*v4 + 272))(v4, *(v4 + 160), *(v4 + 164));
        }

        *(v4 + 84) = *v5;
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlDbgProxyGlReqOnResponse(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 112))(a1);
  v4 = *(v3 + 8);

  return BlueFin::GlDbgProxy::HalGlReqOnResponse(v4, v3, a2);
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnResponse(uint64_t a1, uint64_t (**this)(BlueFin::GlDbgRequest *, uint64_t), uint64_t a3)
{
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v9 = result;
  if (!*(a1 + 808))
  {
    *(a1 + 580) = 1;
    if (*(a1 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteStart(a1, 543);
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

    v7 = this[8];
    if (v7)
    {
      result = v7(this, a3);
    }

    *(a1 + 580) = 1;
    if (*(a1 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteFinal(a1, 543);
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

void FireCallback::GlReqOnFixStatus(uint64_t a1, uint64_t a2)
{
  if (FireCallback::pInstance)
  {
    v3 = *(FireCallback::pInstance + 88);
    if (v3)
    {
      v5 = a2;
      (*(*v3 + 48))(v3, &v5);
      return;
    }

    v4 = "fcb,fReqOnFixStatusCb,nullptr";
  }

  else
  {
    v4 = "fcb,GlReqOnFixStatus,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v4);
}

void std::vector<gnss::SvInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 17;
        std::allocator_traits<std::allocator<gnss::SvInfo>>::destroy[abi:ne200100]<gnss::SvInfo,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t **std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    v2[4] = 0;
    if (v3)
    {
      MEMORY[0x29C292F70](v3, 0x1000C4095D96C66);
    }

    v4 = v2[3];
    v2[3] = 0;
    if (v4)
    {
      MEMORY[0x29C292F70](v4, 0x1000C4095D96C66);
    }

    v5 = v2[2];
    v2[2] = 0;
    if (v5)
    {
      MEMORY[0x29C292F70](v5, 0x1000C4095D96C66);
    }

    v6 = v2[1];
    v2[1] = 0;
    if (v6)
    {
      MEMORY[0x29C292F70](v6, 0x1000C40D315E998);
    }

    v7 = *v2;
    *v2 = 0;
    if (v7)
    {
      MEMORY[0x29C292F70](v7, 0x1000C4079AA8B5ELL);
    }

    JUMPOUT(0x29C292F70);
  }

  return result;
}

uint64_t *std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 112);
    if (v3)
    {
      v4 = *(v2 + 120);
      v5 = *(v2 + 112);
      if (v4 != v3)
      {
        do
        {
          v6 = v4 - 176;
          std::unique_ptr<gnss::MeasurementExtension>::reset[abi:ne200100]((v4 - 16), 0);
          v4 = v6;
        }

        while (v6 != v3);
        v5 = *(v2 + 112);
      }

      *(v2 + 120) = v3;
      operator delete(v5);
    }

    JUMPOUT(0x29C292F70);
  }

  return result;
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnGnssSvInfoData(uint64_t a1, uint64_t (**this)(BlueFin::GlDbgRequest *, uint64_t, uint64_t), uint64_t a3, unsigned __int16 *a4)
{
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v11 = result;
  if (!*(a1 + 808))
  {
    *(a1 + 580) = 1;
    if (*(a1 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteStart(a1, 563);
      if ((*(*a1 + 120))(a1))
      {
        BlueFin::GlDbgCodec::Write(a1, &v11);
      }

      if ((*(*a1 + 120))(a1))
      {
        *(a1 + 572) = 2;
        BlueFin::GlDbgCodec::Rvw(a1, a3);
      }

      if ((*(*a1 + 120))(a1))
      {
        *(a1 + 572) = 2;
        BlueFin::GlDbgCodec::Rvw(a1, a4);
      }

      result = (*(*a1 + 32))(a1, 1);
    }

    v9 = this[7];
    if (v9)
    {
      result = v9(this, a3, a4);
    }

    *(a1 + 580) = 1;
    if (*(a1 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteFinal(a1, 563);
      if ((*(*a1 + 120))(a1))
      {
        BlueFin::GlDbgCodec::Write(a1, &v11);
      }

      v10 = *(*a1 + 32);

      return v10(a1, 1);
    }
  }

  return result;
}

uint64_t BlueFin::GlDbgProxyGlReqOnGnssSvInfoData(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v5 = (*(*a1 + 112))(a1);
  v6 = *(v5 + 8);

  return BlueFin::GlDbgProxy::HalGlReqOnGnssSvInfoData(v6, v5, a2, a3);
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnGnssAgcInfoData(uint64_t a1, uint64_t (**this)(BlueFin::GlDbgRequest *, uint64_t), unsigned int *a3)
{
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v9 = result;
  if (!*(a1 + 808))
  {
    *(a1 + 580) = 1;
    if (*(a1 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteStart(a1, 570);
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

    v7 = this[15];
    if (v7)
    {
      result = v7(this, a3);
    }

    *(a1 + 580) = 1;
    if (*(a1 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteFinal(a1, 570);
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

BOOL BlueFin::GlPeReqBag::IsEnhancedEmergencyReqPresent(BlueFin::GlPeReqBag *this)
{
  v2 = 0;
  v7 = this + 3233;
  v8 = *(this + 3233);
  *(this + 3233) = 0;
  v3 = 1;
  do
  {
    v4 = *(this + v2);
    if (v4)
    {
      v5 = *(v4 + 8);
      if (v5[4] == 1 && ((*(*v5 + 400))(v5) & 1) != 0)
      {
        break;
      }
    }

    v3 = v2++ < 0x47;
  }

  while (v2 != 72);
  *v7 = v8;
  return v3;
}

BOOL BlueFin::GlPeReqBag::IsEnhancedEmergencyReqExpiring(BlueFin::GlPeReqBag *this)
{
  v2 = 0;
  v15 = this + 3233;
  v16 = *(this + 3233);
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
          v6 = *(*(this + v2) + 8);
          if (!(*(*v6 + 416))(v6))
          {
            break;
          }

          v7 = *(this + v2);
          v8 = *(v7 + 36);
          v9 = *(v7 + 8);
          if (v8 == -1)
          {
            v13 = 1001;
          }

          else
          {
            v10 = *(v9 + 28);
            v11 = *(v7 + 32) + v8;
            v12 = v11 >= v10;
            v13 = v11 - v10 + 1000;
            if (!v12)
            {
              v13 = 1001;
            }
          }

          if (v13 > 1000 * *(v9 + 22))
          {
            break;
          }
        }
      }
    }

    v3 = v2++ < 0x47;
  }

  while (v2 != 72);
  *v15 = v16;
  return v3;
}

uint64_t BlueFin::GlPeNavMeasUtil::processNewMeas(_DWORD **a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  *(v6 + 18800) = 0;
  v7 = *v6;
  BlueFin::GlSetBase::GlSetBase(&__src, v276, 0x13u, (v6 + 8));
  BlueFin::GlSetBase::GlSetBase(&v272, v273, 0x13u, *a1 + 7030);
  BlueFin::GlSignalIdSet::GetPrimarySignalSvIdSet(v271, &__src);
  BlueFin::GlSignalIdSet::GetSecondarySignalSvIdSet(v270, &__src);
  BlueFin::GlSetBase::GlSetBase(v268, v269, 0x13u, &__src);
  v263 = v275;
  memcpy(v267, __src, 4 * v275);
  v265 = 0;
  v264 = 0;
  v266 = v267[0];
  BlueFin::GlSetIterator::operator++(&v263);
  v222 = v7;
  if (v264 == v263)
  {
    v8 = 0;
    v9 = 0;
    v221 = 1;
    goto LABEL_315;
  }

  v215 = 0;
  v10 = v7;
  v214 = (a3 + 8);
  v217 = -10.0;
  v11 = vdup_n_s32(0xFF9222FF);
  v12 = 299792458.0;
  v13 = -1000.0;
  v221 = 1;
  v220 = a3;
  v216 = v11;
  do
  {
    if (v265 >= 0x23FuLL)
    {
      goto LABEL_340;
    }

    v14 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v265;
    v15 = *v14;
    LODWORD(v14) = v14[1];
    v260[0] = v15;
    v261 = v14;
    v262 = v265;
    if ((v15 - 175) < 0xFFFFFFDC || (*(a2 + 190) & 4) == 0)
    {
      v16 = (1 << (v265 & 0x1F)) & *(*a2 + ((v265 >> 3) & 0x1FFC));
      if (v16)
      {
        v17 = *(a3 + 24);
        v18 = *(a2 + 188);
        MeMeas = BlueFin::GlPeMsmtMgr::GetMeMeas(*a1, v260, 0, 0);
        if (MeMeas)
        {
          if ((MeMeas[13] & 0x40) != 0 && ((v18 & 2) != 0 || *(MeMeas + 29) > 12.0))
          {
            *(*v17 + ((v260[0] >> 3) & 0x1C)) |= 1 << v260[0];
          }
        }
      }

      v20 = BlueFin::GlPeMsmtMgr::GetMeMeas(*a1, v260, 0, 0);
      if (!v20)
      {
        v211 = "potMeSigMeas";
        DeviceFaultNotify("glpe_navgnssmeasutil.cpp", 140, "processNewMeas", "potMeSigMeas");
        v212 = "glpe_navgnssmeasutil.cpp";
        v213 = 140;
        goto LABEL_341;
      }

      v248[0] = *v20;
      v21 = *(v20 + 1);
      v250 = *(v20 + 4);
      v249 = v21;
      v251 = *(v20 + 3);
      v22 = *(v20 + 4);
      v24 = *(v20 + 1);
      v23 = *(v20 + 2);
      v254 = *(v20 + 3);
      v255 = v22;
      v252 = v24;
      v253 = v23;
      v25 = *(v20 + 8);
      v27 = *(v20 + 5);
      v26 = *(v20 + 6);
      v258 = *(v20 + 7);
      v259 = v25;
      v256 = v27;
      v257 = v26;
      PeMeas = BlueFin::GlPeMsmtMgr::GetPeMeas(*a1, v260, 0);
      v29 = *PeMeas;
      v30 = *(PeMeas + 16);
      v240 = *(PeMeas + 32);
      v238 = v29;
      v239 = v30;
      v241 = *(PeMeas + 40);
      v31 = *(PeMeas + 44);
      v243 = *(PeMeas + 48);
      v242 = v31;
      v32 = *(PeMeas + 80);
      v33 = *(PeMeas + 68);
      v244 = *(PeMeas + 52);
      *v245 = v33;
      *&v245[12] = v32;
      v246 = *(PeMeas + 96);
      v34 = *(PeMeas + 100);
      *&v247[14] = *(PeMeas + 114);
      *v247 = v34;
      v224[0] = 0;
      v225 = -1;
      v226 = 575;
      *v227 = 0;
      v227[4] = 0;
      v236 = v11;
      v237 = 1176256512;
      if ((*(v272 + 4 * (v262 >> 5)) >> (v262 & 0x1F)))
      {
        v35 = BlueFin::GlSignalIdArray::Get(*(*a1 + 7041), v260);
        if (!v35)
        {
          v211 = "potGridMeas";
          DeviceFaultNotify("glpe_navgnssmeasutil.cpp", 149, "processNewMeas", "potGridMeas");
          v212 = "glpe_navgnssmeasutil.cpp";
          v213 = 149;
          goto LABEL_341;
        }

        if (v224 != v35)
        {
          v224[0] = *v35;
          v225 = *(v35 + 4);
          v226 = *(v35 + 8);
        }

        v36 = *(v35 + 12);
        v37 = *(v35 + 28);
        v228 = *(v35 + 44);
        *&v227[16] = v37;
        *v227 = v36;
        v38 = *(v35 + 60);
        v39 = *(v35 + 76);
        v40 = *(v35 + 92);
        v232 = *(v35 + 108);
        v231 = v40;
        v230 = v39;
        v229 = v38;
        v41 = *(v35 + 124);
        v42 = *(v35 + 140);
        v43 = *(v35 + 156);
        *&v235[12] = *(v35 + 168);
        *v235 = v43;
        v234 = v42;
        v233 = v41;
        v44 = *(v35 + 184);
        v237 = *(v35 + 200);
        v236 = v44;
      }

      v223 = v16;
      v247[12] = 0;
      if ((v251 & 2) == 0)
      {
        BlueFin::GlSetBase::Remove(v268, v262);
      }

      v45 = v248[0] >> 5;
      v46 = 1;
      v47 = 1 << (v248[0] & 0x1F);
      if ((v47 & *(v271[0] + 4 * v45)) != 0)
      {
        v46 = (v47 & *(v270[0] + 4 * v45)) == 0;
      }

      v48 = *(a2 + 188);
      if ((v48 & 1) != 0 && v260[0] - 52 > 0xFFFFFFEC)
      {
        v49 = 7;
LABEL_29:
        v247[28] = v49;
        v247[29] = v49;
LABEL_30:
        v50 = BlueFin::GlSignalIdArray::Get(*(*a1 + 2349), v260);
        if (v50)
        {
          *(v50 + 272) = v49;
        }

        v51 = v247[29];
        v52 = BlueFin::GlSignalIdArray::Get(*(*a1 + 2349), v260);
        if (v52)
        {
          *(v52 + 273) = v51;
        }

        goto LABEL_34;
      }

      if ((v48 & 4) == 0 && (v251 & 0x40000) != 0)
      {
        v49 = 45;
        goto LABEL_29;
      }

      if ((v251 & 2) != 0)
      {
        v53 = (~v48 & 0x280) == 0;
      }

      else
      {
        *&v247[28] = 2056;
        v53 = (v48 & 0x280) == 640;
        if ((v48 & 2) == 0 && (v48 & 0x280) != 0x280)
        {
          v49 = 8;
          if ((v48 & 4) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_57;
        }

        if ((v251 & 0x4000) == 0 || *(&v258 + 1) < 9.0)
        {
          if ((v251 & 0x4000) != 0)
          {
            v49 = 12;
          }

          else
          {
            v49 = 10;
          }

          v247[28] = v49;
          v247[29] = v49;
          if ((v48 & 4) == 0)
          {
            goto LABEL_30;
          }

LABEL_57:
          if ((v251 & 0x4000) == 0)
          {
            v49 = 10;
            goto LABEL_29;
          }

LABEL_59:
          v56 = v10 + *&v255 * v13;
          *&v238 = v56 - floor(v56);
          *&v245[16] = v7;
          *&v245[24] = -1;
          *v247 = v254;
          LOBYTE(v279[0]) = 0;
          LOBYTE(v282) = 0;
          BlueFin::GlPeBitMon::CheckBitValidity((a1 + 4), v248, v7, v279, &v282);
          if ((v48 & 4) != 0 && (v251 & 0x100) != 0)
          {
            v57 = 1;
          }

          else
          {
            if ((v279[0] & 1) == 0 && v282 != 1)
            {
              goto LABEL_80;
            }

            v57 = 0;
          }

          if (v248[0] >= 0x34u)
          {
            if (v248[0] > 0x41u)
            {
              if (v248[0] - 139 <= 0x23 && !v249)
              {
                v59 = v56 + floor(v56 * 0.25) * -4.0;
                goto LABEL_74;
              }
            }

            else if (LOBYTE(v279[0]) != 1)
            {
              v58 = 10.0;
LABEL_73:
              v59 = v56 - floor(v56 / v58) * v58;
LABEL_74:
              *&v245[24] = v59;
              if (v57)
              {
                if (v248[0] - 139 > 0x23 || v249)
                {
                  v60 = v56 - floor(v56 / 20.0) * 20.0;
                }

                else
                {
                  v60 = v56 + floor(v56 * 0.25) * -4.0;
                }

                *&v245[24] = v60;
              }

LABEL_80:
              if (*(&v257 + 3) >= 0.0000000149999995)
              {
                v61 = DWORD2(v257);
                v62 = *(&v259 + 1);
                v247[29] = 17;
              }

              else
              {
                v246 |= 0x30u;
                v61 = DWORD2(v257);
                v62 = *(&v259 + 1);
              }

              *(&v244 + 1) = __PAIR64__(HIDWORD(v257), v61);
              *v245 = v62;
              v63 = *(a3 + 48);
              if (v63)
              {
                v64 = v63 + 72 * v262;
              }

              else
              {
                v64 = 0;
              }

              v288[0] = v248[0];
              v289 = v249;
              v290 = v250;
              v65 = *(a2 + 180);
              v66 = BlueFin::GlPeMsmtMgr::GetPeMeas(*a1, v288, 0);
              v67 = v66;
              v68 = *(&v256 + 1);
              v69 = (*(&v238 + 1) - *(&v256 + 1)) * 0.00000190734863;
              if (v69 <= 0.0)
              {
                if (v69 >= 0.0)
                {
                  v71 = 0;
                  goto LABEL_92;
                }

                v70 = -0.5;
              }

              else
              {
                v70 = 0.5;
              }

              v71 = (v69 + v70);
LABEL_92:
              v72 = *(&v256 + 1) + v71 * 524288.0;
              v73 = v72 - *(v66 + 8);
              *&v245[8] = 0;
              v74 = *(a2 + 188);
              if ((v74 & 0x10) != 0)
              {
                v75 = -v73;
              }

              else
              {
                v75 = v73;
              }

              *(&v238 + 1) = v72;
              *&v239 = v75;
              v247[10] = 0;
              if (v64 && (v74 & 4) != 0)
              {
                *v64 = v222;
                *(v64 + 40) = v75;
                *(v64 + 48) = v68;
              }

              v76 = v251;
              if (*(v66 + 108) == 1 && (v251 & 0x10000) != 0 && *(&v257 + 3) < 0.0000000144999995 && *(v66 + 64) < 0.0000000144999995 && (v77 = *(v66 + 84), v84 = v222 >= v77, v78 = v222 - v77, v78 != 0 && v84) && v78 <= v65 + 1)
              {
                v168 = *(v66 + 60);
                v79 = *(&v257 + 2);
                if (fabsf((v168 - *(&v257 + 2)) * 1000000000.0) < 10.0)
                {
                  v81 = 0;
                  v80 = (v168 + *(&v257 + 2)) * 0.5;
LABEL_107:
                  v82 = (v251 >> 6) & 1 | *(v66 + 113);
                  v83 = 24.0;
                  if ((**(a2 + 168) - 1) < 2)
                  {
                    v83 = 30.0;
                  }

                  v84 = v288[0] - 134 >= 5 && v288[0] - 76 >= 5;
                  if (v84)
                  {
                    v85 = v83;
                  }

                  else
                  {
                    v85 = 35.0;
                  }

                  if ((v82 & (*(a2 + 156) != 0)) == 1)
                  {
                    v86 = v81;
                    v219 = v65;
                    v285 = v287;
                    LOBYTE(v286) = 19;
                    memset(v287, 0, 76);
                    v87 = 1;
                    v287[v290 >> 5] |= 1 << v290;
                    v218 = *a1;
                    BlueFin::GlPeNavGnssState::GlPeNavGnssState(&v284);
                    v282 = &off_2A1F12F90;
                    v284 = &unk_2A1F12FC8;
                    v283 = v218;
                    v277 = *(a2 + 88);
                    v278 = *(a2 + 104);
                    BlueFin::GlPeNavUtil::ComputeRrateResidVec(&v282, &v285);
                    v74 = *(a2 + 188);
                    if (*(a2 + 156) >= 0xBu)
                    {
                      v87 = (fabs(*(*&v279[0] + 8)) < 5.0) & (v74 >> 5);
                    }

                    v88 = 0;
                    if ((v87 | (v74 >> 2)))
                    {
                      LOWORD(v65) = v219;
                      if (*(&v258 + 1) > v85)
                      {
                        v88 = v254 > 0x1388;
                      }
                    }

                    else
                    {
                      LOWORD(v65) = v219;
                    }

                    v89 = HIBYTE(v76) & 1 & ~v86 & v88;
                  }

                  else
                  {
                    v89 = 0;
                  }

                  v90 = *(v67 + 84);
                  if ((v74 & 0x200) != 0)
                  {
                    v91 = DWORD1(v252) == 4 && *&v245[12] == 0;
                  }

                  else
                  {
                    v91 = 0;
                    if (DWORD1(v252) <= 4 && ((1 << SBYTE4(v252)) & 0x19) != 0)
                    {
                      v91 = *&v245[12] < 2;
                    }
                  }

                  if ((v74 & 4) == 0 && v91 || ((v82 ^ 1 | v89) & 1) == 0 || (v93 = v222 - v90, (v222 - v90) > v65 + 1) || v254 < *(v67 + 100) || (v76 & 0x100) == 0)
                  {
                    v94 = *&v257 * v12;
                    *&v244 = v94;
                    *(&v244 + 1) = v94;
                    *(&v239 + 1) = *&v238 * 299792.458;
                    *(&v238 + 1) = *(&v256 + 1);
                    *&v245[12] = 0;
                    v95 = v251;
                    v247[13] = (v251 & 0x40) != 0;
                    HIDWORD(v244) = HIDWORD(v257);
                    v247[8] = BYTE2(v251) & 1;
                    a3 = v220;
                    v7 = v222;
                    goto LABEL_138;
                  }

                  v95 = v251;
                  if ((v82 & 1 & ((v251 & 0x1000) == 0)) != 0)
                  {
                    v75 = v80 * 0.299792458 * 1000000.0 * v93;
                  }

                  v7 = v222;
                  if (v222 == v90)
                  {
                    v100 = 1;
                  }

                  else
                  {
                    v100 = v222 - v90;
                  }

                  v101 = v75 - v80 * 0.299792458 * 1000000.0 * v93;
                  v102 = v100 * 0.001;
                  if (v82)
                  {
                    goto LABEL_260;
                  }

                  v103 = 10.0;
                  if ((*&v74 & 0x100000) == 0)
                  {
                    v103 = 3.0;
                  }

                  v104 = v101 / v102 * 3.33564095;
                  v246 |= 0x100u;
                  v105 = v104;
                  *&v245[8] = v105;
                  if (fabs(v104) <= v103)
                  {
LABEL_260:
                    v106 = 0;
                  }

                  else
                  {
                    v106 = 1;
                  }

                  a3 = v220;
                  if (fabs(v101) > 3.0)
                  {
                    goto LABEL_264;
                  }

                  if ((v106 | (*(a2 + 156) > 9u) & ~BlueFin::stPeSigMeasKF::IsRRValidForNav(&v238)) == 1)
                  {
                    v95 = v251;
LABEL_264:
                    v164 = *&v257 * v12;
                    *&v244 = v164;
                    *(&v244 + 1) = v164;
                    *(&v239 + 1) = *&v238 * 299792.458;
                    *(&v238 + 1) = *(&v256 + 1);
                    *&v245[12] = 0;
                    v247[13] = (v95 & 0x40) != 0;
                    HIDWORD(v244) = HIDWORD(v257);
                    v247[8] = BYTE2(v95) & 1;
                    goto LABEL_138;
                  }

                  v169 = *(&v244 + 1) * *(&v244 + 1);
                  if (v82)
                  {
                    v170 = v102 * (*(&v257 + 3) * v12) * (v102 * (*(&v257 + 3) * v12));
                    v169 = v169 + v170;
                    v171 = 0.95;
                  }

                  else
                  {
                    v170 = 0.00012;
                    v171 = 0.99;
                    if (*(&v257 + 1) != 3.4028e38)
                    {
                      v169 = v169 + (*(&v257 + 1) * *(&v257 + 1));
                    }
                  }

                  if (v169 >= v170)
                  {
                    v170 = v169;
                  }

                  v172 = *(&v239 + 1) - v75;
                  v173 = *&v238 * 299792.458;
                  if (vabdd_f64(*(&v239 + 1) - v75, *&v238 * 299792.458) <= 149896.229)
                  {
                    v176 = *&v238 * 299792.458;
                  }

                  else
                  {
                    v174 = v172 / 299792.458;
                    if (v172 / 299792.458 <= 0.0)
                    {
                      v175 = 0.0;
                      if (v172 / 299792.458 < 0.0)
                      {
                        v175 = ceil(v174 + -0.5);
                      }
                    }

                    else
                    {
                      v175 = floor(v174 + 0.5);
                    }

                    v172 = v172 - v175 * 299792.458;
                    v177 = v173 / 299792.458;
                    v178 = ceil(v173 / 299792.458 + -0.5);
                    if (v173 / 299792.458 >= 0.0)
                    {
                      v178 = 0.0;
                    }

                    v179 = floor(v177 + 0.5);
                    if (v177 > 0.0)
                    {
                      v180 = v179;
                    }

                    else
                    {
                      v180 = v178;
                    }

                    v176 = v173 + v180 * -299792.458;
                  }

                  v181 = *&v257 * v12;
                  if (v181 * v181 / (v181 * v181 + v170) <= v171)
                  {
                    v171 = v181 * v181 / (v181 * v181 + v170);
                  }

                  v182 = (1.0 - v171) * v176 + v171 * v172;
                  if (v182 < 0.0 || v182 > 299792.458)
                  {
                    v182 = v182 - floor(v182 / 299792.458) * 299792.458;
                  }

                  *(&v239 + 1) = v182;
                  v183 = -(v182 - *&v238 * 299792.458);
                  if (fabs(v183) <= 149896.229)
                  {
LABEL_303:
                    v187 = sqrt(v181 * v181 * ((1.0 - v171) * (1.0 - v171)) + v171 * v171 * v170);
                    *(&v244 + 1) = v187;
                    v188 = *(a2 + 188);
                    if ((v188 & 8) != 0 && v288[0] >= 0x34u && v288[0] <= 0x41u && v187 < 0.5)
                    {
                      DWORD1(v244) = 1056964608;
                    }

                    v189 = v181;
                    *&v244 = v189;
                    if (fabs(v183) > 90.0)
                    {
                      if (v183 <= -v181)
                      {
                        if ((v188 & 4) == 0)
                        {
                          *(&v244 + 1) = v181;
                          *(&v239 + 1) = *&v238 * 299792.458;
                          *(&v238 + 1) = *(&v256 + 1);
                          *&v245[12] = 0;
                        }
                      }

                      else if ((v188 & 4) == 0)
                      {
                        DWORD1(v252) = 4;
                      }
                    }

                    v95 = v251;
                    v247[13] = (v251 & 0x40) != 0;
                    v247[10] = (v251 & 0x1000) != 0;
                    HIDWORD(v244) = HIDWORD(v257);
                    v247[8] = BYTE2(v251) & 1;
                    ++*&v245[12];
LABEL_138:
                    if ((v95 & 0x100000) == 0)
                    {
                      v247[9] = 0;
                      v247[11] = 0;
                      v96 = *(a2 + 188);
                      goto LABEL_167;
                    }

                    LOBYTE(v279[0]) = v248[0];
                    DWORD1(v279[0]) = v249;
                    WORD4(v279[0]) = v250;
                    v97 = BlueFin::GlPeMsmtMgr::GetPeMeas(*a1, v279, 0);
                    v98 = (v240 - *&v259) * 0.00000190734863;
                    if (v98 <= 0.0)
                    {
                      if (v98 >= 0.0)
                      {
                        v107 = 0;
LABEL_158:
                        v108 = *&v259 + v107 * 524288.0 - *(v97 + 32);
                        v240 = *&v259 + v107 * 524288.0;
                        v96 = *(a2 + 188);
                        v109 = -v108;
                        if ((v96 & 0x10) == 0)
                        {
                          v109 = v108;
                        }

                        v247[11] = 0;
                        if (*(v97 + 109) == 1)
                        {
                          v110 = *(v97 + 84);
                          v84 = v7 >= v110;
                          v111 = v7 - v110;
                          if (v111 != 0 && v84 && v111 <= *(a2 + 180) + 1 && (v247[10] & 1) == 0)
                          {
                            *&v239 = v109;
                            v247[11] = 1;
                          }
                        }

                        v247[9] = 1;
LABEL_167:
                        if ((v96 & 0x20000) != 0 && !v46 && v261 == 2)
                        {
                          LOBYTE(v279[0]) = v260[0];
                          BlueFin::GlSignalIdSet::GetSignalIdSetForSv(&__src, v279, &v282);
                          BlueFin::GlSetBase::Remove(&v282, v262);
                          LOBYTE(v285) = v283;
                          memcpy(&v286, v282, 4 * v283);
                          WORD1(v285) = 0;
                          BYTE1(v285) = 0;
                          HIDWORD(v285) = v286;
                          while (1)
                          {
                            while (1)
                            {
                              BlueFin::GlSetIterator::operator++(&v285);
                              if (BYTE1(v285) == v285)
                              {
                                goto LABEL_189;
                              }

                              if ((v251 & 2) != 0 && *&v245[20] != -1 && (DWORD1(v252) - 1) <= 1)
                              {
                                if (WORD1(v285) >= 0x23FuLL)
                                {
                                  goto LABEL_340;
                                }

                                v112 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v285);
                                v113 = *v112;
                                LODWORD(v112) = v112[1];
                                LOBYTE(v277) = v113;
                                DWORD1(v277) = v112;
                                WORD4(v277) = WORD1(v285);
                                v114 = BlueFin::GlPeMsmtMgr::GetPeMeas(*a1, &v277, 0);
                                v115 = *v114;
                                v116 = *(v114 + 16);
                                *&v279[2] = *(v114 + 32);
                                v279[1] = v116;
                                v279[0] = v115;
                                BYTE8(v279[2]) = *(v114 + 40);
                                v117 = *(v114 + 44);
                                LOWORD(v279[3]) = *(v114 + 48);
                                HIDWORD(v279[2]) = v117;
                                v118 = *(v114 + 80);
                                v119 = *(v114 + 68);
                                *(&v279[3] + 4) = *(v114 + 52);
                                *(&v279[4] + 4) = v119;
                                v279[5] = v118;
                                v280 = *(v114 + 96);
                                v120 = *(v114 + 100);
                                *&v281[14] = *(v114 + 114);
                                *v281 = v120;
                                if (DWORD2(v279[5]) != -1)
                                {
                                  v121 = BlueFin::GlPeMsmtMgr::GetMeMeas(*a1, &v277, 0, 0);
                                  if ((v121[12] & 2) != 0 && (*(v121 + 5) - 1) <= 1)
                                  {
                                    break;
                                  }
                                }
                              }
                            }

                            v122 = v12;
                            v123 = v13;
                            v124 = v10;
                            v125 = *(v121 + 24);
                            v126 = DWORD2(v279[5]);
                            v127 = *v279;
                            v128 = (*(*a1[1] + 80))(a1[1], &v277);
                            v129 = *&v245[20];
                            v130 = *&v238;
                            v131 = (*(*a1[1] + 80))(a1[1], v260);
                            (*(*a1[1] + 88))(a1[1], v260, 0);
                            if (WORD4(v277) >= 0x23Fu)
                            {
                              break;
                            }

                            v133 = BlueFin::GlSvId::s_aucSvId2gnss[v277];
                            v134 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * SDWORD1(v277) - SDWORD1(v277) + v133]];
                            if (v133 == 2)
                            {
                              v135 = (v277 - 59);
                              if (v277 - 52 >= 0xE)
                              {
                                v135 = -8.0;
                              }

                              v134 = v134 + v135 * 562500.0;
                            }

                            if (v262 >= 0x23Fu)
                            {
                              break;
                            }

                            v136 = BlueFin::GlSvId::s_aucSvId2gnss[v260[0]];
                            v137 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v261 - v261 + v136]];
                            if (v136 == 2)
                            {
                              v138 = (v260[0] - 59);
                              if (v260[0] - 52 >= 0xE)
                              {
                                v138 = -8.0;
                              }

                              v137 = v137 + v138 * 562500.0;
                            }

                            v139 = v134 * v134;
                            v140 = v137 * v137;
                            v141 = v139 - v140;
                            v142 = v139 / (v139 - v140);
                            v143 = v140 / v141;
                            v144 = v142 * (v127 + v126 - v128 / 299792.458) - v143 * (v130 + v129 - v131 / 299792.458 + v132 / 299792.458);
                            *&v245[20] = vcvtmd_s64_f64(v144);
                            *&v238 = v144 - *&v245[20];
                            *&v144 = sqrt(v143 * v143 * *&v257 * *&v257 + v142 * v142 * v125 * v125);
                            LODWORD(v257) = LODWORD(v144);
                            v247[12] = 1;
                            v281[12] = 1;
                            BlueFin::GlPeMsmtMgr::SetPeMeas(*a1, v279, 0);
                            v10 = v124;
                            v13 = v123;
                            v12 = v122;
                            v11 = v216;
                          }

                          v211 = "IsValid()";
                          DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
                          v212 = "glsignalid.h";
                          v213 = 651;
                          goto LABEL_341;
                        }

LABEL_189:
                        if (v249 == 3 || v249 == 0)
                        {
                          v146 = a3;
                          if ((v251 & 0x20) != 0 || (v146 = v214, (v251 & 0x10) != 0))
                          {
                            *(**v146 + ((v15 >> 3) & 0x1C)) |= 1 << v15;
                          }
                        }

                        if (!v223)
                        {
                          goto LABEL_253;
                        }

                        v147 = *(a2 + 188);
                        v148 = **(a2 + 168);
                        v149 = v246 | 0x86;
                        if (*(&v257 + 3) <= 0.0000000158999995)
                        {
                          v149 = v246 & 0xFFFFFF79 | 6;
                        }

                        v246 = v149;
                        if (v148 != 10 && (v147 & 0x44) == 0 && (v147 & 2) == 0 && *(&v257 + 3) > 0.0000000158999995 && *(&v258 + 1) < 16.0)
                        {
                          v149 &= 0xFFFFFFF9;
                          v246 = v149;
                          v247[28] = 13;
                        }

                        if (v248[0] - 33 <= 0x12)
                        {
                          DWORD1(v252) = 2 * (*(&v258 + 1) >= 35.0);
                        }

                        v153 = 0;
                        v154 = a1[2] + 1160;
                        v155 = 0x3FFFFFFFFFFFFFB0;
                        while (LOBYTE(v154[v153]) != v248[0])
                        {
                          v153 += 3;
                          v155 += 2;
                          if (!(v155 * 4))
                          {
                            goto LABEL_222;
                          }
                        }

                        if (*&v154[v155] == 0.0)
                        {
                          v156 = 4;
LABEL_228:
                          DWORD1(v252) = v156;
                          goto LABEL_229;
                        }

LABEL_222:
                        v157 = 0;
                        v158 = 0x3FFFFFFFFFFFFFB0;
                        while (LOBYTE(v154[v157]) != v248[0])
                        {
                          v157 += 3;
                          v158 += 2;
                          if (!(v158 * 4))
                          {
                            goto LABEL_229;
                          }
                        }

                        if (*&v154[v158] == 1.0)
                        {
                          v156 = 2;
                          goto LABEL_228;
                        }

LABEL_229:
                        if ((v147 & 0x2000) != 0 && v241 - 76 <= 0x3E)
                        {
                          v159 = *(&v244 + 2) * 1000000000.0;
                          v160 = -v159;
                          if (v159 >= 0.0)
                          {
                            v160 = *(&v244 + 2) * 1000000000.0;
                          }

                          if (v160 < 150.0 && *&v245[12] <= 9)
                          {
                            v149 &= 0xFFFFFFF9;
                            v246 = v149;
                          }
                        }

                        if ((v147 & 0x4000) != 0)
                        {
                          if (!v249)
                          {
                            if ((v147 & 0x8000) == 0)
                            {
LABEL_247:
                              if ((v251 & 0xC) != 0 || v249 >= 1)
                              {
                                v221 = 0;
                                *(a1 + 88) = v7;
                              }

                              else if (*(&v258 + 1) >= v217)
                              {
                                v215 = v260[0];
                                v217 = *(&v258 + 1);
                              }

                              BlueFin::GlPeMsmtMgr::ValidatePeMeas(*a1, v260);
LABEL_253:
                              BlueFin::GlPeMsmtMgr::SetPeMeas(*a1, &v238, 0);
                              BlueFin::GlPeMsmtMgr::SetMeMeas(*a1, v248);
                              if (*(a2 + 188) & 4) == 0 && ((*(v272 + 4 * (v262 >> 5)) >> (v262 & 0x1F)))
                              {
                                if (v227[4] >= 2u)
                                {
                                  v162 = (*(&v229 + 4) - *&v227[12]) * v12;
                                  if (DWORD1(v236) == -7200001)
                                  {
                                    *(&v236 + 1) = LODWORD(v162);
                                    v163 = v236;
                                  }

                                  else
                                  {
                                    v163 = v236;
                                    if ((v236 - DWORD1(v236)) < 0x1389)
                                    {
                                      v165 = (v236 - DWORD1(v236)) * 0.001;
                                      v166 = *(&v236 + 2) + (v165 * *(&v236 + 3));
                                      v167 = v162 - v166;
                                      *(&v236 + 2) = v166 + (v167 * 0.5);
                                      *(&v236 + 3) = *(&v236 + 3) + ((0.2 / v165) * v167);
                                    }

                                    else
                                    {
                                      *(&v236 + 1) = LODWORD(v162);
                                    }
                                  }

                                  DWORD1(v236) = v163;
                                  v237 = 1120403456;
                                }

                                BlueFin::GlPeMsmtMgr::SetPeGridMeas(*a1, v224);
                              }

                              goto LABEL_34;
                            }

LABEL_246:
                            v246 = v149 & 0xFFFFFFC9;
                            goto LABEL_247;
                          }

                          if ((BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v249 - v249 + BlueFin::GlSvId::s_aucSvId2gnss[v248[0]]] - 13) >= 2)
                          {
                            v149 &= 0xFFFFFFC9;
                            v246 = v149;
                          }
                        }

                        if ((v147 & 0x8000) == 0 || v249 && (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[8 * v249 - v249 + BlueFin::GlSvId::s_aucSvId2gnss[v248[0]]] - 13) > 1)
                        {
                          goto LABEL_247;
                        }

                        goto LABEL_246;
                      }

                      v99 = -0.5;
                    }

                    else
                    {
                      v99 = 0.5;
                    }

                    v107 = (v98 + v99);
                    goto LABEL_158;
                  }

                  v184 = v183 / 299792.458;
                  if (v183 / 299792.458 <= 0.0)
                  {
                    if (v183 / 299792.458 >= 0.0)
                    {
                      v186 = 0;
LABEL_302:
                      *(&v239 + 1) = v182 + v186 * 299792.458;
                      v183 = -(*(&v239 + 1) - *&v238 * 299792.458);
                      goto LABEL_303;
                    }

                    v185 = -0.5;
                  }

                  else
                  {
                    v185 = 0.5;
                  }

                  v186 = (v184 + v185);
                  goto LABEL_302;
                }
              }

              else
              {
                v79 = *(&v257 + 2);
              }

              v80 = v79;
              v81 = 1;
              goto LABEL_107;
            }
          }

          v58 = 20.0;
          goto LABEL_73;
        }
      }

      if ((*(a1 + 28) & 1) == 0)
      {
        v54 = *&v257 * v12 < 600.0 && (v251 & 0x8002) == 2;
        v55 = v54 || v53;
        if (v55 == 1)
        {
          *(a1 + 28) = 1;
          *(a1 + 6) = **a1;
        }
      }

      goto LABEL_59;
    }

LABEL_34:
    BlueFin::GlSetIterator::operator++(&v263);
  }

  while (v264 != v263);
  v9 = v217 > 30.0;
  v8 = v215;
LABEL_315:
  *&v279[0] = v279 + 12;
  BYTE8(v279[0]) = 19;
  memset(v279 + 12, 0, 32);
  memset(&v279[2] + 12, 0, 32);
  *(&v279[4] + 8) = 0u;
  v190 = *a1;
  LOBYTE(v282) = *(*a1 + 16);
  memcpy(&v283, *(v190 + 8), 4 * v282);
  WORD1(v282) = 0;
  BYTE1(v282) = 0;
  HIDWORD(v282) = v283;
  BlueFin::GlSetIterator::operator++(&v282);
  if (BYTE1(v282) == v282)
  {
    v191 = 0;
    v192 = 0.0;
    v193 = 0.0;
  }

  else
  {
    v194 = 0;
    v195 = 0;
    v193 = 0.0;
    v192 = 0.0;
    do
    {
      if (WORD1(v282) >= 0x23FuLL)
      {
        goto LABEL_340;
      }

      v196 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v282);
      v197 = *v196;
      LODWORD(v196) = v196[1];
      v224[0] = v197;
      v225 = v196;
      v226 = WORD1(v282);
      v198 = BlueFin::GlPeMsmtMgr::GetPeMeas(*a1, v224, 0);
      if (*(v198 + 97))
      {
        v199 = *(v198 + 76);
        ++v194;
        if (v199 != 0.0)
        {
          *(*&v279[0] + 4 * (v226 >> 5)) |= 1 << v226;
          ++v195;
          v200 = v199;
          v201 = v200 - v192;
          v192 = v192 + (v200 - v192) / v195;
          v193 = v193 + (v200 - v192) * v201;
        }
      }

      BlueFin::GlSetIterator::operator++(&v282);
    }

    while (BYTE1(v282) != v282);
    if (v195 <= ((v194 & 0xFFFE) >> 1))
    {
      v191 = 0;
    }

    else
    {
      v193 = sqrt(v193 / v195);
      v191 = 1;
    }
  }

  LOBYTE(v282) = BYTE8(v279[0]);
  memcpy(&v283, *&v279[0], 4 * BYTE8(v279[0]));
  WORD1(v282) = 0;
  BYTE1(v282) = 0;
  HIDWORD(v282) = v283;
  BlueFin::GlSetIterator::operator++(&v282);
  if (BYTE1(v282) != v282)
  {
    v202 = v193 + v193;
    while (WORD1(v282) < 0x23FuLL)
    {
      v203 = *a1;
      v204 = &BlueFin::GlSignalId::s_aotIndex2signalId + 2 * WORD1(v282);
      v205 = *v204;
      LODWORD(v204) = v204[1];
      v224[0] = v205;
      v225 = v204;
      v226 = WORD1(v282);
      v206 = BlueFin::GlPeMsmtMgr::AccessPeMeas(v203, v224, 0);
      if (!v191 || vabdd_f64(*(v206 + 76), v192) > v202)
      {
        *(v206 + 96) &= ~0x20u;
        *(v206 + 129) = 18;
      }

      BlueFin::GlSetIterator::operator++(&v282);
      if (BYTE1(v282) == v282)
      {
        goto LABEL_333;
      }
    }

LABEL_340:
    v211 = "usIndex < NUM_SIGNAL_IDS";
    DeviceFaultNotify("glsignalid.h", 578, "GetSignalIdFromIndex", "usIndex < NUM_SIGNAL_IDS");
    v212 = "glsignalid.h";
    v213 = 578;
LABEL_341:
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, v212, v213, v211);
  }

LABEL_333:
  (*(*a1[1] + 120))(a1[1], *a1 + 46, a2 + 88, *(a2 + 152), v222, *(a2 + 136));
  if ((((v8 - 1) < 0xBC) & v221 & v9) != 0)
  {
    v207 = *(a1 + 88);
    if (v207 == -1 || (v84 = v222 >= v207, v208 = v222 - v207, v208 != 0 && v84) && v208 >= 0x249F1)
    {
      **(a3 + 40) = v8;
    }
  }

  v209 = *a1;
  result = BlueFin::GlSignalIdSet::CntSecondarySignalSvIdSet(v268, 2);
  *(v209 + 56217) = result;
  return result;
}

uint64_t *BlueFin::GlSignalIdSet::GetSecondarySignalSvIdSet@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
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

    v6 = v4 - 1;
    v7 = v3 + 1;
    while (!*v7++)
    {
      if (!--v6)
      {
        return this;
      }
    }
  }

  v9 = *(this + 8);
  memcpy(v13, v3, 4 * v4);
  v11 = 0;
  v10 = 0;
  v12 = v13[0];
  for (this = BlueFin::GlSetIterator::operator++(&v9); v10 != v9; this = BlueFin::GlSetIterator::operator++(&v9))
  {
    if (v11 >= 0x23FuLL)
    {
      DeviceFaultNotify("glsignalid.h", 594, "GetSignalIndexFromIndex", "usIndex < NUM_SIGNAL_IDS");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 594, "usIndex < NUM_SIGNAL_IDS");
    }

    if ((*(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v11 + 1) - 1) <= 1)
    {
      v5 = *(&BlueFin::GlSignalId::s_aotIndex2signalId + 2 * v11);
      *&v2[(v5 >> 3) & 0x1C] |= 1 << v5;
    }
  }

  return this;
}

uint64_t BlueFin::GlPeKF::IsVdrValid(BlueFin::GlPeKF *this)
{
  v1 = *(this + 579);
  if (!v1 || v1 != 1 && (*(*(*(this + 7617) + 160) + 2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(this + 7628);
  if (v2)
  {
    v3 = *(*(this + 7179) + 8);
    if ((v3 - 3) < 4 || v3 == 0)
    {
      return (*(*v2 + 40))(v2);
    }

    return 0;
  }

  v6 = *(this + *(*(this + 2148) - 24) + 17440);
  if ((v6 & 8) == 0)
  {
    return 0;
  }

  return (v6 >> 2) & 1;
}

BlueFin::SKFVector *BlueFin::SKFVectorDim<100>::SKFVectorDim(BlueFin::SKFVector *a1, const BlueFin::SKFVector *a2)
{
  v2 = *(a2 + 2);
  *a1 = a1 + 16;
  *(a1 + 2) = v2;
  *(a1 + 3) = 100;
  if (v2 >= 101)
  {
    DeviceFaultNotify("glpe_matrix.h", 510, "SKFVectorDim", "LEN >= rotSrc.GetLen()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.h", 510, "LEN >= rotSrc.GetLen()");
  }

  BlueFin::SKFVector::Clone(a1, a2);
  return a1;
}

{
  v2 = *(a2 + 2);
  *a1 = a1 + 16;
  *(a1 + 2) = v2;
  *(a1 + 3) = 100;
  if (v2 >= 101)
  {
    DeviceFaultNotify("glpe_matrix.h", 505, "SKFVectorDim", "LEN >= rotSrc.GetLen()");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_matrix.h", 505, "LEN >= rotSrc.GetLen()");
  }

  BlueFin::SKFVector::Clone(a1, a2);
  return a1;
}

uint64_t BlueFin::stSkfTestParam::GetDynModeOverride(uint64_t a1, int *a2)
{
  if (!strcmp((a1 + 1220), "DYN_AUTOMATIC"))
  {
    v5 = 0;
  }

  else if (!strcmp((a1 + 1220), "DYN_PEDESTRIAN"))
  {
    v5 = 1;
  }

  else if (!strcmp((a1 + 1220), "DYN_VEHICLE"))
  {
    v5 = 2;
  }

  else
  {
    if (strcmp((a1 + 1220), "DYN_CYCLING"))
    {
      return 0;
    }

    v5 = 3;
  }

  *a2 = v5;
  return 1;
}

uint64_t BlueFin::GlPeKF::InitializeKF(BlueFin::GlPeKF *this, int8x16_t a2, int8x16_t a3)
{
  *(this + 804) = 0;
  *(this + 14528) = 0;
  v4 = this + 57152;
  *(this + 28576) = 0;
  *(this + 57248) = 0;
  *(this + 74) = 0;
  *(this + 14289) = 0;
  *(this + 7149) = 0;
  *(this + 7150) = 0;
  *(this + 7148) = 0;
  *(this + 28604) = 0;
  BlueFin::GlPeKF::resetDtsIfGood(this, a2, a3);
  *(this + 193) = 0;
  result = BlueFin::GlPeMsmtMgr::Init_IntPr(*(v4 + 482));
  *(v4 + 1014) |= 8u;
  return result;
}

double BlueFin::GlPeTimeManager::lmsToLegacyGlStruct(unsigned int *a1, unsigned int a2, int a3, uint64_t a4, double a5)
{
  if (a2 == 2)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    v7 = 16;
  }

  else
  {
    if (a2 > 1)
    {
      DeviceFaultNotify("glpe_timemgr.cpp", 7490, "lmsToLegacyGlStruct", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_timemgr.cpp", 7490, "0");
    }

    *(a4 + 8) = 0;
    *a4 = 0;
    v7 = 12;
  }

  *(a4 + v7) = -1;
  BlueFin::GlPeTimeManager::GetTime(a1, a5, a3, v72);
  v71 = 0;
  v70 = &off_2A1F0B5F0;
  v69 = 0;
  v68 = &off_2A1F0E430;
  v63 = 0;
  v62 = &unk_2A1F11310;
  v8 = 432000 - BlueFin::GlWeekTowTime::m_ucCurrentLs;
  v64 = 1980;
  v65 = v8 / 0x15180 + 1;
  LOBYTE(v66) = 1;
  BYTE1(v66) = v8 / 0x15180 + 1;
  BYTE2(v66) = v8 % 0x15180 / 0xE10;
  HIBYTE(v66) = (2185 * (v8 - 3600 * ((1193047 * v8) >> 32))) >> 17;
  v67 = v8 - 60 * ((71582789 * v8) >> 32);
  if (!a2)
  {
    Gps = BlueFin::GlPeGnssTime::GetGps(v72, &v70);
    v10 = Gps;
    LODWORD(Gps) = v71;
    LODWORD(v71) = 0;
    *v19.i64 = *&Gps * 2.32830644e-10;
    *v61 = 0;
    v60 = 0;
    BlueFin::GlPeTimeMgrUtil::BreakDownFracSec(&v61[1], v19, v61, &v60, v20, 2.32830644e-10, v21, v22);
    if (v10 == 4294967300.0)
    {
      v17 = -1;
    }

    else if (v10 >= 0.5)
    {
      *v23.i64 = v10 + 0.5;
      *v24.i64 = v10 + 0.5 - trunc((v10 + 0.5) * 2.32830644e-10) * 4294967300.0;
      v46.f64[0] = NAN;
      v46.f64[1] = NAN;
      v24.i64[0] = vbslq_s8(vnegq_f64(v46), v24, v23).u64[0];
      if (v10 + 0.5 > 4294967300.0)
      {
        v23.i64[0] = v24.i64[0];
      }

      v17 = *v23.i64;
    }

    else
    {
      v17 = 1;
    }

    *a4 = (v70[4])(&v70) / 0x93A80;
    v47 = (v70[4])(&v70);
    LODWORD(v48) = v71;
    *v41.i64 = v48 * 2.32830644e-10 + (v47 % 0x93A80);
    goto LABEL_51;
  }

  if (a2 == 1)
  {
    Glns = BlueFin::GlPeGnssTime::GetGlns(v72, &v68);
    v10 = Glns;
    LODWORD(Glns) = v69;
    LODWORD(v69) = 0;
    *v11.i64 = *&Glns * 2.32830644e-10;
    *v61 = 0;
    v60 = 0;
    BlueFin::GlPeTimeMgrUtil::BreakDownFracSec(&v61[1], v11, v61, &v60, v12, 2.32830644e-10, v13, v14);
    if (v10 == 4294967300.0)
    {
      v17 = -1;
    }

    else if (v10 >= 0.5)
    {
      *v15.i64 = v10 + 0.5;
      *v16.i64 = v10 + 0.5 - trunc((v10 + 0.5) * 2.32830644e-10) * 4294967300.0;
      v32.f64[0] = NAN;
      v32.f64[1] = NAN;
      v16.i64[0] = vbslq_s8(vnegq_f64(v32), v16, v15).u64[0];
      if (v10 + 0.5 > 4294967300.0)
      {
        v15.i64[0] = v16.i64[0];
      }

      v17 = *v15.i64;
    }

    else
    {
      v17 = 1;
    }

    v35 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && HIDWORD(v69) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
    *a4 = ((v68[4])(&v68) - v35) / 0x7861F80 + 1;
    v38 = BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent != 0 && HIDWORD(v69) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
    v39 = 0;
    *(a4 + 2) = ((203613265 * (((v68[4])(&v68) - v38) % 0x7861F80)) >> 44) + 1;
    if (BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
    {
      v39 = HIDWORD(v69) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
    }

    v40 = (v68[4])(&v68);
    if (v39)
    {
      v45 = 10799.0;
    }

    else
    {
      v45 = (v40 % 0x15180);
    }

    LODWORD(v42) = v69;
    *v41.i64 = v45 + v42 * 2.32830644e-10;
LABEL_51:
    *v41.i64 = *v41.i64 * 1000.0 + 0.1;
    *v44.i64 = *v41.i64 + trunc(*v41.i64 * 2.32830644e-10) * -4294967300.0;
    v49.f64[0] = NAN;
    v49.f64[1] = NAN;
    v50 = vnegq_f64(v49);
    v44.i64[0] = vbslq_s8(v50, v44, v41).u64[0];
    if (*v41.i64 > 4294967300.0)
    {
      v41.i64[0] = v44.i64[0];
    }

    if (*v41.i64 < -4294967300.0)
    {
      *v43.i64 = -*v41.i64;
      *v41.i64 = -(*v41.i64 - trunc(*v41.i64 * -2.32830644e-10) * -4294967300.0);
      *v41.i64 = -*vbslq_s8(v50, v41, v43).i64;
    }

    if (*v41.i64 < 0.0)
    {
      v51 = --*v41.i64;
    }

    else
    {
      v51 = *v41.i64;
    }

    v52 = v51 + v61[1];
    v53 = &v60;
    *(a4 + 4) = v52;
    v54 = v61;
    v55 = 12;
    v56 = 10;
    v57 = 8;
    goto LABEL_63;
  }

  Utc = BlueFin::GlPeGnssTime::GetUtc(v72, &v62);
  v10 = Utc;
  LODWORD(Utc) = v63;
  *v61 = 0;
  *v26.i64 = *&Utc * 2.32830644e-10;
  v60 = 0;
  BlueFin::GlPeTimeMgrUtil::BreakDownFracSec(&v61[1], v26, v61, &v60, v27, 2.32830644e-10, v28, v29);
  v31.i32[1] = 1106247679;
  if (v10 == 4294967300.0)
  {
    v17 = -1;
  }

  else
  {
    v31.i64[0] = 0.5;
    if (v10 >= 0.5)
    {
      *v31.i64 = v10 + 0.5;
      *v30.i64 = v10 + 0.5 - trunc((v10 + 0.5) * 2.32830644e-10) * 4294967300.0;
      v58.f64[0] = NAN;
      v58.f64[1] = NAN;
      v30.i64[0] = vbslq_s8(vnegq_f64(v58), v30, v31).u64[0];
      if (v10 + 0.5 > 4294967300.0)
      {
        v31.i64[0] = v30.i64[0];
      }

      v17 = *v31.i64;
    }

    else
    {
      v17 = 1;
    }
  }

  *a4 = v64;
  v31.i32[0] = v66;
  *(a4 + 2) = vmovl_u8(*v31.i8).u64[0];
  v53 = v61;
  *(a4 + 10) = v67;
  v54 = &v61[1];
  v55 = 16;
  v56 = 14;
  v57 = 12;
LABEL_63:
  *(a4 + v57) = *v54;
  *(a4 + v56) = *v53;
  *(a4 + v55) = v17;
  return v10;
}

_WORD *BlueFin::GlPeTimeMgrUtil::BreakDownFracSec(_WORD *this, int8x16_t a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5, double a6, int8x16_t a7, int8x16_t a8)
{
  if (*a2.i64 >= 0.999999999)
  {
    v10 = 999999999;
  }

  else
  {
    *a2.i64 = *a2.i64 * 1000000000.0 + 0.5;
    *a8.i64 = *a2.i64 + trunc(*a2.i64 * 2.32830644e-10) * -4294967300.0;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v9 = vnegq_f64(v8);
    a8.i64[0] = vbslq_s8(v9, a8, a2).u64[0];
    if (*a2.i64 > 4294967300.0)
    {
      a2.i64[0] = a8.i64[0];
    }

    if (*a2.i64 < -4294967300.0)
    {
      *a7.i64 = -*a2.i64;
      *a2.i64 = -(*a2.i64 - trunc(*a2.i64 * -2.32830644e-10) * -4294967300.0);
      *a2.i64 = -*vbslq_s8(v9, a2, a7).i64;
    }

    if (*a2.i64 < 0.0)
    {
      v10 = --*a2.i64;
    }

    else
    {
      v10 = *a2.i64;
    }
  }

  *this = v10 / 0xF4240;
  v11 = v10 % 0xF4240;
  *a3 = v11 / 0x3E8;
  *a4 = v11 % 0x3E8;
  return this;
}

uint64_t BlueFin::GlPeRqHdlr::LogGL007(uint64_t a1, const char *a2, uint64_t a3, int a4, int a5)
{
  v8 = *(a1 + 48);
  v14 = *(a3 + 4072);
  v9 = *(a3 + 4088);
  v10 = *(a3 + 4144);
  v11 = (*(**(a1 + 8) + 152))(*(a1 + 8));
  v12 = "Valid";
  if (!a5)
  {
    v12 = "Invalid";
  }

  return GlCustomLog(14, "GL007[%hu]%s Lat=%10.6f Lon=%11.6f Alt=%3.0f EstAcc=%3.0f ReqAcc=%3d AccMask=%3u %s\n", v8, a2, *&v14, *(&v14 + 1), v9, v10, v11, a4, v12);
}

uint64_t BlueFin::GlPePlatfStatMgr::SetOscOff(uint64_t this, double a2, double a3)
{
  v3 = *(this + 1313);
  if (a2 >= 0.000000002)
  {
    v5 = 0;
  }

  else
  {
    if (*(this + 1313))
    {
      *(this + 1312) = 1;
      v4 = (a2 - *(this + 1320)) * (a2 - *(this + 1320)) * 0.5;
      if (v4 > *(this + 1328))
      {
        *(this + 1328) = v4;
      }
    }

    *(this + 1320) = a2;
    v5 = 1;
  }

  *(this + 1313) = v5;
  v6 = *(this + 1240);
  if (v6)
  {
    v7 = *(v6 + 80);
    *(this + 200) = v7;
    v8 = *(v6 + 221);
    if (*(this + 196) != v8)
    {
      *(this + 196) = v8;
      *(this + 232) = 1;
    }
  }

  if (v5 != v3)
  {
    *(this + 232) = 1;
  }

  return this;
}

uint64_t BlueFin::GlPeReqBag::SetPlatfStat(uint64_t a1, uint64_t a2)
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
      result = (*(*result + 144))(result, a2);
    }

    v4 += 8;
  }

  while (v4 != 576);
  *v6 = v7;
  return result;
}

uint64_t BlueFin::stTimeOfAsstPos::GetAgeS(BlueFin::stTimeOfAsstPos *this, BlueFin::GlPeTimeManager *a2, int8x16_t a3, int8x16_t a4)
{
  if (*this == 1)
  {
    if (*(a2 + 644))
    {
      BlueFin::GlPeTimeManager::GetTime(a2, 1, v15);
      v16 = &off_2A1F0B5F0;
      v17 = 0;
      BlueFin::GlPeGnssTime::GetGps(v15, &v16);
      v7 = v17;
      v8 = HIDWORD(v17);
      v10 = *(this + 6);
      v9 = *(this + 7);
      if (*(this + 3))
      {
        v13 = HIDWORD(v17) - v9;
        if (v17 < __PAIR64__(v9, v10))
        {
          v8 = (__PAIR64__(v9 - HIDWORD(v17), v10) - v17) >> 32;
          v7 = v10 - v17;
          v11 = 1;
        }

        else
        {
          v11 = 0;
          v8 = (__PAIR64__(v13, v17) - v10) >> 32;
          v7 = v17 - v10;
        }
      }

      else
      {
        v11 = 0;
      }

      *a3.i64 = v7 * 2.32830644e-10 + v8;
      if ((v11 & ((v8 | v7) != 0)) != 0)
      {
        *a3.i64 = -*a3.i64;
      }

      goto LABEL_16;
    }

    return 0xFFFFFFFFLL;
  }

  if (*this != 2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a2 + 642);
  if (v5 == -7200001)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v5;
  if (v5 <= 0xFF9222FE)
  {
    v6 = v5;
  }

  *a3.i64 = (v6 - *(this + 1)) * 0.001;
LABEL_16:
  if (*a3.i64 < 0.0)
  {
    return 0;
  }

  *a4.i64 = *a3.i64 - trunc(*a3.i64 * 2.32830644e-10) * 4294967300.0;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  a4.i64[0] = vbslq_s8(vnegq_f64(v14), a4, a3).u64[0];
  if (*a3.i64 > 4294967300.0)
  {
    a3.i64[0] = a4.i64[0];
  }

  return *a3.i64;
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::__function::__func<std::function<void ()(std::vector<std::string> &&)>,std::allocator<void ()(std::vector<std::string> &&)>,void ()(std::vector<std::string>)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

BOOL BlueFin::GnssConstellationMaskHelper::HasAny(void *a1, unsigned int a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  else if (*a1)
  {
    return 1;
  }

  else
  {
    v4 = 0;
    v5 = a1 + 1;
    v2 = 1;
    do
    {
      v6 = -1;
      v7 = v5;
      while (v6 != 6)
      {
        v8 = *v7++;
        ++v6;
        if (v8)
        {
          if (v6 <= 6)
          {
            return v2;
          }

          break;
        }
      }

      v2 = ++v4 < a2;
      if (v4 == a2)
      {
        break;
      }

      v5 += 8;
    }

    while (!a1[8 * v4]);
  }

  return v2;
}

uint64_t BlueFin::GlPeTimeManager::GetRtcCurTimeEstimate(BlueFin::GlPeTimeManager *this, uint64_t a2)
{
  if (!*(this + 644) || *(this + 704) == -1 || *(this + 354) == 4294967300.0)
  {
    return 0;
  }

  v4 = 1;
  BlueFin::GlPeTimeManager::GetTime(this, *(this + 353), 1, v9);
  BlueFin::GlPeTimeManager::GetTime(this, *(this + 353), 1, v8);
  v5 = BlueFin::GlPeGnssTime::operator-(v8, this + 2808);
  v6 = v10;
  *a2 = v5 * 1000.0;
  *(a2 + 8) = v6;
  return v4;
}

uint64_t BlueFin::GlPeTimeManager::GetRtcCurFreqEstimate(uint64_t a1, double *a2)
{
  if (*(a1 + 3652) == -7200001)
  {
    if (*(a1 + 3648))
    {
      return 0;
    }

    result = (*(*(a1 + 3656) + 32))();
    if (!result)
    {
      return result;
    }
  }

  v5 = *(a1 + 3680);
  if (v5 == 1.79769313e308 || (*(a1 + 3648) & 1) != 0)
  {
    return 0;
  }

  *a2 = *(a1 + 3672) * 1000000000.0;
  a2[1] = v5;
  return 1;
}

char *BlueFin::GlPeNmeaGen::FormatNmeaUNC(uint64_t a1, void *a2, uint64_t a3, BlueFin::GlFormat *this, int a5)
{
  if (*(a3 + 2576))
  {
    v6 = *(a3 + 2736);
    if (v6 == 4294967300.0)
    {
      v6 = *(a3 + 2632);
    }
  }

  else
  {
    v6 = 4294967300.0;
  }

  v7 = a5;
  v8 = this + a5 - 1;
  if (v8 <= this)
  {
    v7 = 0;
  }

  BlueFin::GlFormat::glsnprintf(this, v7, "$PGLOR,%d,UNC,%s,%.3lf,%.1lf,%.1lf,%.2lf,%.2lf,%.1lf,%.1lf,%.1lf", this, 1, a1 + 1767, *&v6, a2[518], a2[520], a2[873], a2[872], a2[869], a2[870], a2[871]);

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v8, v9);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaSAT(uint64_t a1, uint64_t a2, BlueFin::GlFormat *a3, int a4)
{
  v5 = *(a1 + 1736);
  if (*(a1 + 329))
  {
    v6 = 0;
    v7 = 7;
    do
    {
      v6 += BlueFin::GlSetBase::Cnt(v5);
      v5 = (v5 + 24);
      --v7;
    }

    while (v7);
    v9 = v6;
  }

  else
  {
    v11 = v5 + 8;
    v12 = 7;
    do
    {
      v13 = *(v11 - 1);
      v14 = *v11;
      v11 += 24;
      bzero(v13, ((4 * v14 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      --v12;
    }

    while (v12);
    v15 = *(a1 + 1552) + 4;
    v16 = 100;
    do
    {
      *(v15 - 4) = 8;
      *v15 = 0;
      *(v15 + 4) = 0;
      v15 += 12;
      --v16;
    }

    while (v16);
    if (*(a2 + 44) >= 1)
    {
      v9 = 0;
      v17 = 0;
      while (1)
      {
        v18 = v17;
        v19 = (a2 + 48 + 40 * v17);
        v20 = v19[2];
        if (v20 >= 8)
        {
          break;
        }

        v21 = v19[3];
        v22 = v21 - 1;
        v23 = BlueFin::GlImplGnss::m_aucImplGnssTable[v20];
        v67 = v23;
        v68 = v21;
        if (BlueFin::GlGnssSet::Has(a1 + 1568, &v67))
        {
          v26.i64[0] = 0x8000000080000000;
          v26.i64[1] = 0x8000000080000000;
          if (!v9)
          {
LABEL_77:
            v62 = "pSatsMsg";
            DeviceFaultNotify("glpe_nmeagen.cpp", 3778, "FormatNmeaSAT", "pSatsMsg");
            v63 = 3778;
LABEL_76:
            __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nmeagen.cpp", v63, v62);
          }

          v27 = 0;
          while (1)
          {
            v28 = (*(a1 + 1552) + 12 * v27);
            if (v23 == BlueFin::GlImplGnss::m_aucImplGnssTable[*v28] && v28[1] == v21)
            {
              break;
            }

            if (v9 <= ++v27)
            {
              goto LABEL_77;
            }
          }
        }

        else
        {
          BlueFin::GlGnssSet::Add(a1 + 1568, &v67);
          v28 = (*(a1 + 1552) + 12 * v9);
          *v28 = 8;
          v28[4] = 0;
          ++v9;
          *(v28 + 2) = (16 * (*(a2 + 6136 + 4 * v19[1] - 4) & 3)) & 0xBF | (((*(a2 + 5624 + 8 * v19[2]) >> v22) & 1) << 6);
          v26.i64[0] = 0x8000000080000000;
          v26.i64[1] = 0x8000000080000000;
        }

        v30 = v19[34];
        if (v30 == 3 || v30 == 0)
        {
          *v24.i32 = *(a2 + 7440 + 4 * v18) + 0.5;
          *v25.i32 = *v24.i32 + (truncf(*v24.i32 * 2.3283e-10) * -4295000000.0);
          v32 = vbslq_s8(v26, v25, v24);
          if (*v24.i32 > 4295000000.0)
          {
            v24.i32[0] = v32.i32[0];
          }

          if (*v24.i32 < -4295000000.0)
          {
            *v32.i32 = -*v24.i32;
            *v24.i32 = -(*v24.i32 - (truncf(*v24.i32 * -2.3283e-10) * -4295000000.0));
            *v24.i32 = -*vbslq_s8(v26, v24, v32).i32;
          }

          if (*v24.i32 < 0.0)
          {
            v33 = --*v24.i32;
          }

          else
          {
            LOWORD(v33) = *v24.i32;
          }

          *(v28 + 1) = v33;
        }

        v34 = v19[2];
        *v28 = v34;
        v28[1] = v19[3];
        v28[4] = *v19;
        v35 = byte_298A448F4[v30];
        *(v28 + 2) |= (((*(a2 + 5112 + (v30 << 6) + 8 * v34) >> v22) & 1) << (v35 + 1)) | (((*(a2 + 4600 + (v30 << 6) + 8 * v34) >> v22) & 1) << v35) | (((*(a2 + 5816 + (v30 << 6) + 8 * v34) >> v22) & 1) << (v30 + 15)) | (((*(a2 + 6072 + 8 * v34) >> v22) & 1) << 18) | (((*(a2 + 5368 + (v30 << 6) + 8 * v34) >> v22) & 1) << (v35 + 3)) | (((*(a2 + 4856 + (v30 << 6) + 8 * v34) >> v22) & 1) << (v35 + 2));
        v17 = v18 + 1;
        if (*(a2 + 44) <= (v18 + 1))
        {
          goto LABEL_38;
        }
      }

      v62 = "rotSvInfo.ucImplGnss < NUM_IMPL_GNSS";
      DeviceFaultNotify("glpe_nmeagen.cpp", 3748, "FormatNmeaSAT", "rotSvInfo.ucImplGnss < NUM_IMPL_GNSS");
      v63 = 3748;
      goto LABEL_76;
    }

    v9 = 0;
  }

LABEL_38:
  v36 = a3 + a4 - 1;
  v37 = a3 + a4;
  if (v36 <= a3)
  {
    v38 = 0;
  }

  else
  {
    v38 = a4;
  }

  v39 = BlueFin::GlFormat::glsnprintf(a3, v38, "$PGLOR,%d,SAT", v8, 2);
  v42 = (a3 + v39);
  v66 = ((v9 + 5) / 6);
  if (((v9 + 5) / 6))
  {
    if (v36 <= v42)
    {
      v43 = 0;
    }

    else
    {
      v43 = (v37 - v42);
    }

    v42 = (v42 + BlueFin::GlFormat::glsnprintf((a3 + v39), v43, ",%d,%d", v41, ((v9 + 5) / 6), *(a1 + 329) + 1));
  }

  v44 = 6 * *(a1 + 329);
  if (v9 > v44)
  {
    v45 = 0;
    do
    {
      v46 = (*(a1 + 1552) + 12 * v44);
      v47 = *v46;
      if (v47 > 7)
      {
        v48 = 120;
      }

      else
      {
        v48 = dword_298A449C8[v47];
      }

      if (v36 <= v42)
      {
        v49 = 0;
      }

      else
      {
        v49 = (v37 - v42);
      }

      v51 = (v42 + BlueFin::GlFormat::glsnprintf(v42, v49, ",%c%02d,", v41, v48, v46[1]));
      if (v46[4] && *(v46 + 1) >= 1)
      {
        if (v36 <= v51)
        {
          v52 = 0;
        }

        else
        {
          v52 = (v37 - v51);
        }

        v51 = (v51 + BlueFin::GlFormat::glsnprintf(v51, v52, "%02d", v50, *(v46 + 1)));
      }

      v53 = *(v46 + 2);
      if (v53 >> 15)
      {
        v54 = 3;
      }

      else if (v53 <= 0x7FF)
      {
        v54 = v53 > 0x7F;
      }

      else
      {
        v54 = 2;
      }

      if (v36 <= v51)
      {
        v55 = 0;
      }

      else
      {
        v55 = (v37 - v51);
      }

      v56 = BlueFin::GlFormat::glsnprintf(v51, v55, off_29EEB4170[v54], v50, *(v46 + 2));
      if (v9 <= ++v44)
      {
        break;
      }

      v42 = (v51 + v56);
    }

    while (v45++ < 5);
  }

  result = BlueFin::GlPeNmeaGen::nmeaAddChksum(a3, v36, v40);
  v59 = *(a1 + 329);
  v60 = v66 <= (v59 + 1);
  if (v66 > (v59 + 1))
  {
    v61 = v59 + 1;
  }

  else
  {
    v61 = 0;
  }

  *(a1 + 329) = v61;
  *(a1 + 330) = v60;
  return result;
}

uint64_t BlueFin::GlPeNmeaGen::FormatNmeaSVC(uint64_t result, uint64_t a2, BlueFin::GlFormat *this, const char *a4)
{
  v5 = result;
  v38[0] = 0;
  __src = v37;
  v36 = 8;
  memset(v37, 0, sizeof(v37));
  v6 = *(a2 + 44);
  if (v6 < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = (a2 + 84);
    v10 = &BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
    do
    {
      result = *(v9 - 34);
      if (result != 4 && result != 8)
      {
        result = BlueFin::GlImplGnss::m_aucImplGnssTable[*(v9 - 34)];
        if (*(v5 + 1760) == result)
        {
          result = *(v9 - 2);
          if (result == *(v5 + 1764))
          {
            result = *(v5 + 1765);
            if (result <= v7)
            {
              result = (result + 4);
              if (result > v7)
              {
                v12 = v10[*(v9 - 35)];
                *(v37 + ((v12 >> 3) & 0x1C)) |= 1 << v12;
                v13 = v8;
                *(v38 + v8 + 4) = *(v9 - 1);
                result = *v9;
                ++v8;
                *(v38 + v13) = result;
              }
            }

            ++v7;
          }
        }
      }

      v9 += 40;
      --v6;
    }

    while (v6);
    if (LODWORD(v37[0]))
    {
      goto LABEL_17;
    }
  }

  v27 = 0;
  while (!*(v37 + v27 + 4))
  {
    v27 += 4;
    if (v27 == 28)
    {
      if (*(v5 + 1760) || *(v5 + 1764))
      {
        *this = 0;
        goto LABEL_37;
      }

      break;
    }
  }

LABEL_17:
  v14 = this + a4;
  v15 = v14 - 1;
  if (v14 - 1 <= this)
  {
    v16 = 0;
  }

  else
  {
    v16 = a4;
  }

  v17 = (this + BlueFin::GlFormat::glsnprintf(this, v16, "$PGLOR,%d,SVC,", a4, 2));
  if (v15 <= v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = (v14 - v17);
  }

  v19 = BlueFin::GNSS2ABBREVSTR(*(v5 + 1760));
  v21 = BlueFin::GlFormat::glsnprintf(v17, v18, "%s,%d,%d,%d,%02d", v20, v19, *(v5 + 1764), (v7 + 3) >> 2, (*(v5 + 1765) >> 2) + 1, v7);
  v30 = v36;
  memcpy(v34, __src, 4 * v36);
  v32 = 0;
  v31 = 0;
  v33 = v34[0];
  BlueFin::GlSetIterator::operator++(&v30);
  if (v31 != v30)
  {
    v24 = 0;
    v25 = (v17 + v21);
    do
    {
      if (v15 <= v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = (v14 - v25);
      }

      v25 = (v25 + BlueFin::GlFormat::glsnprintf(v25, v26, ",%03d,%4s,%4s", v23, v32, BlueFin::stPeSigMeasKF::m_aacSvUseCodeImage[*(v38 + v24 + 4)], BlueFin::stPeSigMeasKF::m_aacSvUseCodeImage[*(v38 + v24)]));
      ++v24;
      BlueFin::GlSetIterator::operator++(&v30);
    }

    while (v31 != v30);
  }

  result = BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v14 - 1, v22);
LABEL_37:
  v28 = (*(v5 + 1765) + 4);
  *(v5 + 1765) += 4;
  if (v28 >= v7)
  {
    *(v5 + 1765) = 0;
    v29 = ++*(v5 + 1764);
    if (v29 >= 3)
    {
      *(v5 + 1760) = *(v5 + 1760) + 1;
      *(v5 + 1764) = 0;
    }
  }

  return result;
}

const char *BlueFin::GNSS2ABBREVSTR(unsigned int a1)
{
  if (a1 < 5)
  {
    return off_29EEB38C0[a1];
  }

  v2 = "<->";
  if (a1 == 6)
  {
    v2 = "NIC";
  }

  if (a1 == 5)
  {
    return "GAL";
  }

  else
  {
    return v2;
  }
}

char *BlueFin::GlPeNmeaGen::FormatNmeaSIO(BlueFin::GlPeNmeaGen *this, const BlueFin::GlPePlatfStat *a2, char *a3, const char *a4)
{
  v4 = a3;
  BlueFin::GlFormat::glsnprintf(a2, a3, "$PGLOR,%d,SIO,TxERR,%d,RxERR,%d,TxCNT,%u,RxCNT,%u,MLFRMPKT,%u,DTMS,%u,DTIN,%u,%u,DTOUT,%u,%u,HATMD,%d", a4, 2, *(this + 2), *(this + 3), *(this + 4), *(this + 5), *(this + 3), *(this + 6), *(this + 7), *(this + 9), *(this + 8), *(this + 10), *(this + 40));

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(a2, a2 + v4 - 1, v6);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaHLA(uint64_t a1, uint64_t a2, BlueFin::GlFormat *this, const char *a4)
{
  v6 = a2 + 4096;
  v7 = this + a4;
  v8 = v7 - 1;
  if (v7 - 1 <= this)
  {
    v9 = 0;
  }

  else
  {
    v9 = a4;
  }

  v10 = BlueFin::GlFormat::glsnprintf(this, v9, "$PGLOR,%d,HLA,%s,", a4, 2, a1 + 1767);
  v12 = this + v10;
  if ((*(a2 + 7024) & 4) != 0)
  {
    if (v8 <= v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = (v7 - v12);
    }

    if (*(v6 + 2936))
    {
      v15 = BlueFin::GlFormat::glsnprintf((this + v10), v13, "L,%1d,Al,%d,", v11, *(a2 + 7036), *(a2 + 7034));
      goto LABEL_16;
    }

    v78 = *(a2 + 7036);
    v14 = "L,%1d,Al,,";
  }

  else
  {
    if (v8 <= v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = (v7 - v12);
    }

    v14 = "L,,Al,,";
  }

  v15 = BlueFin::GlFormat::glsnprintf((this + v10), v13, v14, v11, v78, v90);
LABEL_16:
  v17 = &v12[v15];
  if (v8 <= v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = (v7 - v17);
  }

  if ((*(a2 + 7024) & 0x10) != 0)
  {
    v79 = *(a2 + 7064);
    v19 = "A,%d,";
  }

  else
  {
    v19 = "A,,";
  }

  v21 = (v17 + BlueFin::GlFormat::glsnprintf(v17, v18, v19, v16, v79));
  if ((*(a2 + 7024) & 0x20) != 0 && (v22 = *(a2 + 7072), v22 <= 2))
  {
    if (v8 <= v21)
    {
      v23 = 0;
    }

    else
    {
      v23 = (v7 - v21);
    }

    v24 = BlueFin::GlFormat::glsnprintf(v21, v23, "H,%d,%c,", v20, *(a2 + 7068), byte_298A449A7[v22]);
  }

  else
  {
    if (v8 <= v21)
    {
      v26 = 0;
    }

    else
    {
      v26 = (v7 - v21);
    }

    v24 = BlueFin::GlFormat::glsnprintf(v21, v26, "H,,,", v20, v80, v91);
  }

  v27 = (v21 + v24);
  if (v8 <= v27)
  {
    v28 = 0;
  }

  else
  {
    v28 = (v7 - v27);
  }

  if ((*(a2 + 7024) & 0x40) != 0)
  {
    v81 = *(a2 + 7076);
    v29 = "M,%1d,";
  }

  else
  {
    v29 = "M,,";
  }

  v31 = (v27 + BlueFin::GlFormat::glsnprintf(v27, v28, v29, v25, v81));
  if (v8 <= v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = (v7 - v31);
  }

  if ((*(a2 + 7024) & 0x80) != 0)
  {
    v82 = *(a2 + 7080);
    v33 = "Ac,%1d,";
  }

  else
  {
    v33 = "Ac,,";
  }

  v35 = (v31 + BlueFin::GlFormat::glsnprintf(v31, v32, v33, v30, v82));
  if (v8 <= v35)
  {
    v36 = 0;
  }

  else
  {
    v36 = (v7 - v35);
  }

  if (*(a2 + 7025))
  {
    v83 = *(a2 + 7084);
    v37 = "Gr,%1d,";
  }

  else
  {
    v37 = "Gr,,";
  }

  v39 = (v35 + BlueFin::GlFormat::glsnprintf(v35, v36, v37, v34, v83));
  if ((*(a2 + 7025) & 2) != 0 && (v40 = *(a2 + 7092), v40 <= 2))
  {
    if (v8 <= v39)
    {
      v41 = 0;
    }

    else
    {
      v41 = (v7 - v39);
    }

    v42 = BlueFin::GlFormat::glsnprintf(v39, v41, "S,%.1f,%c,", v38, *(a2 + 7088), byte_298A449A7[v40]);
  }

  else
  {
    if (v8 <= v39)
    {
      v44 = 0;
    }

    else
    {
      v44 = (v7 - v39);
    }

    v42 = BlueFin::GlFormat::glsnprintf(v39, v44, "S,,,", v38, v84, v92);
  }

  v45 = (v39 + v42);
  if ((*(a2 + 7025) & 4) != 0 && (v46 = *(a2 + 7100), v46 <= 2))
  {
    if (v8 <= v45)
    {
      v47 = 0;
    }

    else
    {
      v47 = (v7 - v45);
    }

    v48 = BlueFin::GlFormat::glsnprintf(v45, v47, "Sx,%.1f,%c,", v43, *(a2 + 7096), byte_298A449A7[v46]);
  }

  else
  {
    if (v8 <= v45)
    {
      v50 = 0;
    }

    else
    {
      v50 = (v7 - v45);
    }

    v48 = BlueFin::GlFormat::glsnprintf(v45, v50, "Sx,,,", v43, v85, v93);
  }

  v51 = (v45 + v48);
  if (v8 <= v51)
  {
    v52 = 0;
  }

  else
  {
    v52 = (v7 - v51);
  }

  if ((*(a2 + 7025) & 0x10) != 0)
  {
    v86 = *(a2 + 7104);
    v53 = "T,%1d,";
  }

  else
  {
    v53 = "T,,";
  }

  v55 = (v51 + BlueFin::GlFormat::glsnprintf(v51, v52, v53, v49, v86));
  if (v8 <= v55)
  {
    v56 = 0;
  }

  else
  {
    v56 = (v7 - v55);
  }

  if ((*(a2 + 7025) & 0x20) != 0)
  {
    v87 = *(a2 + 7108);
    v57 = "Tr,%d,";
  }

  else
  {
    v57 = "Tr,,";
  }

  v59 = (v55 + BlueFin::GlFormat::glsnprintf(v55, v56, v57, v54, v87));
  if (v8 <= v59)
  {
    v60 = 0;
  }

  else
  {
    v60 = (v7 - v59);
  }

  if ((*(a2 + 7025) & 0x40) != 0)
  {
    v88 = *(a2 + 7112);
    v61 = "Mn,%1d,";
  }

  else
  {
    v61 = "Mn,,";
  }

  v63 = (v59 + BlueFin::GlFormat::glsnprintf(v59, v60, v61, v58, v88));
  if (v8 <= v63)
  {
    v64 = 0;
  }

  else
  {
    v64 = (v7 - v63);
  }

  if ((*(a2 + 7026) & 8) != 0)
  {
    v89 = *(a2 + 7116);
    v65 = "Ap,%1d,";
  }

  else
  {
    v65 = "Ap,,";
  }

  v67 = (v63 + BlueFin::GlFormat::glsnprintf(v63, v64, v65, v62, v89));
  if (v8 <= v67)
  {
    v68 = 0;
  }

  else
  {
    v68 = (v7 - v67);
  }

  if (*(v6 + 3024))
  {
    v69 = BlueFin::GlFormat::glsnprintf(v67, v68, "Ta,%1d,%c,%c", v66, *(v6 + 3024), byte_298A449A7[*(a2 + 7124)], byte_298A449A7[*(a2 + 7128)]);
  }

  else
  {
    v69 = BlueFin::GlFormat::glsnprintf(v67, v68, "Ta,%1d,,", v66, 0, v94);
  }

  v71 = (v67 + v69);
  if (v8 <= v71)
  {
    v72 = 0;
  }

  else
  {
    v72 = (v7 - v71);
  }

  v73 = (v71 + BlueFin::GlFormat::glsnprintf(v71, v72, ",Aa,%1d,", v70, *(a2 + 7132)));
  if (v8 <= v73)
  {
    v75 = 0;
  }

  else
  {
    v75 = (v7 - v73);
  }

  BlueFin::GlFormat::glsnprintf(v73, v75, "Ga,%1d,", v74, *(a2 + 7136));

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v7 - 1, v76);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaCTX(uint64_t a1, int a2, BlueFin::GlFormat *this, const char *a4, unsigned int *a5)
{
  v7 = this + a4;
  v8 = v7 - 1;
  if (v7 - 1 <= this)
  {
    v9 = 0;
  }

  else
  {
    v9 = a4;
  }

  v10 = BlueFin::GlFormat::glsnprintf(this, v9, "$PGLOR,%d,CTX,%s,", a4, 3, a1 + 1767);
  v12 = this + v10;
  v13 = *(a5 + 4);
  LODWORD(v14) = v13[4];
  if (v14 == 7)
  {
    v14 = 1;
  }

  else
  {
    v14 = v14;
  }

  v15 = v13[2];
  v16 = v13[3];
  if (v8 <= v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = (v7 - v12);
  }

  v19 = &v12[BlueFin::GlFormat::glsnprintf((this + v10), v17, "E,%1d,%1d,", v11, v14, v13[5])];
  if (v8 <= v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = (v7 - v19);
  }

  if (*a5)
  {
    v21 = BlueFin::GlFormat::glsnprintf(v19, v20, "%1d,%1d,", v18, *a5, a5[1]);
  }

  else
  {
    v21 = BlueFin::GlFormat::glsnprintf(v19, v20, ",,", v18, v31, v33);
  }

  v23 = (v19 + v21);
  if (v8 <= v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = (v7 - v23);
  }

  v25 = (v23 + BlueFin::GlFormat::glsnprintf(v23, v24, "V,%1d,%1d,", v22, v15, v16));
  if (*(a5 + 24))
  {
    if (v8 <= v25)
    {
      v27 = 0;
    }

    else
    {
      v27 = (v7 - v25);
    }

    BlueFin::GlFormat::glsnprintf(v25, v27, "S,%f,%f,%d", v26, *(a5 + 1), *(a5 + 2), *(a5 + 24));
  }

  else
  {
    if (v8 <= v25)
    {
      v29 = 0;
    }

    else
    {
      v29 = (v7 - v25);
    }

    BlueFin::GlFormat::glsnprintf(v25, v29, "S,,,", v26, v32, v34);
  }

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v7 - 1, v28);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaLSQ(char *result, uint64_t a2, BlueFin::GlFormat *this, const char *a4)
{
  v5 = (a2 + 4096);
  v6 = a4 - 1;
  v7 = this + v6;
  if ((*(a2 + 7152) & 0x80000000) == 0)
  {
    if (v7 > this)
    {
      v9 = a4;
    }

    else
    {
      v9 = 0;
    }

    v10 = BlueFin::GlFormat::glsnprintf(this, v9, "$PGLOR,%d,LSQ,%s,", a4, 1, result + 1767);
    v12 = (this + v10);
    if (v5[3056])
    {
      v13 = fabs(*(a2 + 7160));
      v14 = fabs(*(a2 + 7168));
      v15 = v13;
      v16 = v14;
      v17 = (v13 - v15) * 60.0;
      v18 = v17;
      v19 = ((v17 - v18) * 1000000.0);
      v20 = (v14 - v16) * 60.0;
      v21 = v20;
      v22 = ((v20 - v21) * 1000000.0);
      v23 = v7 + 1;
      if (v7 <= v12)
      {
        v24 = 0;
      }

      else
      {
        v24 = (v7 + 1 - v12);
      }

      v25 = 83;
      if (*(a2 + 4072) >= 0.0)
      {
        v25 = 78;
      }

      v27 = (v12 + BlueFin::GlFormat::glsnprintf((this + v10), v24, "%02d%02d.%06d,%c,", v11, v15, v18, v19, v25));
      if (v7 <= v27)
      {
        v28 = 0;
      }

      else
      {
        v28 = (v23 - v27);
      }

      v29 = 87;
      if (*(a2 + 4080) >= 0.0)
      {
        v29 = 69;
      }

      v12 = (v27 + BlueFin::GlFormat::glsnprintf(v27, v28, "%03d%02d.%06d,%c,%.1f,%.1f,", v26, v16, v21, v22, v29, *(a2 + 7176), *(a2 + 7180)));
      if (v7 <= v12)
      {
        v30 = 0;
      }

      else
      {
        v30 = (v23 - v12);
      }

      if (v5[3088])
      {
        v31 = BlueFin::GlFormat::glsnprintf(v12, v30, "%.1f,%.1f,%.1f,", v11, *(a2 + 7188), *(a2 + 7192), *(a2 + 7196));
LABEL_31:
        v34 = (v12 + v31);
        if (v7 <= v34)
        {
          v35 = 0;
        }

        else
        {
          v35 = (v23 - v34);
        }

        if (v5[3116])
        {
          v36 = BlueFin::GlFormat::glsnprintf(v34, v35, "%.1f,%.1f,", v32, *(a2 + 7216), *(a2 + 7220));
        }

        else
        {
          v36 = BlueFin::GlFormat::glsnprintf(v34, v35, ",,", v32, v54, v59);
        }

        v38 = (v34 + v36);
        if (v7 <= v38)
        {
          v39 = 0;
        }

        else
        {
          v39 = (v23 - v38);
        }

        if (v5[3128])
        {
          v40 = BlueFin::GlFormat::glsnprintf(v38, v39, "%.1f,%.1f,", v37, *(a2 + 7228), *(a2 + 7232));
        }

        else
        {
          v40 = BlueFin::GlFormat::glsnprintf(v38, v39, ",,", v37, v55, v60);
        }

        v42 = (v38 + v40);
        if (v7 <= v42)
        {
          v43 = 0;
        }

        else
        {
          v43 = (v23 - v42);
        }

        if (v5[3104])
        {
          v44 = BlueFin::GlFormat::glsnprintf(v42, v43, "%.1f,%.1f,", v41, *(a2 + 7204), *(a2 + 7208));
        }

        else
        {
          v44 = BlueFin::GlFormat::glsnprintf(v42, v43, ",,", v41, v56, v61);
        }

        v46 = (v42 + v44);
        if (v7 <= v46)
        {
          v47 = 0;
        }

        else
        {
          v47 = (v23 - v46);
        }

        v48 = (v46 + BlueFin::GlFormat::glsnprintf(v46, v47, "%02d,", v45, *(a2 + 7236)));
        v50 = *(a2 + 7244);
        if (v7 <= v48)
        {
          v51 = 0;
        }

        else
        {
          v51 = (v23 - v48);
        }

        if (v50 == 0.0)
        {
          BlueFin::GlFormat::glsnprintf(v48, v51, ",", v49, v57, v62);
        }

        else
        {
          BlueFin::GlFormat::glsnprintf(v48, v51, "%.1f,%.1f", v49, *(a2 + 7240), v50);
        }

        return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v7, v52);
      }

      v33 = ",,,";
    }

    else
    {
      v23 = v7 + 1;
      if (v7 <= v12)
      {
        v30 = 0;
      }

      else
      {
        v30 = (v7 + 1 - v12);
      }

      v33 = ",,,,,,,,,";
    }

    v31 = BlueFin::GlFormat::glsnprintf(v12, v30, v33, v11, v53, v58, v63);
    goto LABEL_31;
  }

  if (v7 > this && (v6 & 0x8000000000000000) == 0)
  {
    *this = 0;
  }

  return result;
}

char *BlueFin::GlPeNmeaGen::FormatNmeaPWR(uint64_t a1, unsigned __int16 *a2, uint64_t a3, BlueFin::GlFormat *a4, int a5)
{
  v9 = *(*(a1 + 1832) + 140);
  v10 = *(a2 + 20);
  v11 = 0.0;
  if (v10)
  {
    v12 = v9 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    goto LABEL_15;
  }

  if (v9 == 805371913 || v9 == 1006829577)
  {
    v14 = *(a2 + 6);
    v15 = *(a2 + 25);
    v16 = 6097;
    v14.i32[1] = *(a2 + 26);
    v14.i64[1] = *(a2 + 42);
    v17 = vmulq_s32(v14, xmmword_298A44910);
    v18 = *(a2 + 23);
    v19 = 86;
LABEL_13:
    v21 = vaddvq_s32(v17) + v15 * v16 + v18 * v19;
LABEL_14:
    v11 = v21 / (v10 * 1000.0);
    goto LABEL_15;
  }

  if (v9 == 805502985)
  {
    v20 = *(a2 + 6);
    v15 = *(a2 + 25);
    v16 = 5795;
    v20.i32[1] = *(a2 + 26);
    v20.i64[1] = *(a2 + 42);
    v17 = vmulq_s32(v20, xmmword_298A44920);
    v18 = *(a2 + 23);
    v19 = 62;
    goto LABEL_13;
  }

  if ((v9 & 0xF000FFFE) == 0x30000010 || (v9 & 0xF000FFFE) == 805306382)
  {
    v21 = 2400 * *(a2 + 24) + 4100 * *(a2 + 25) + 10630 * *(a2 + 26) + 1000 * *(a2 + 21) + 100 * *(a2 + 23);
    goto LABEL_14;
  }

LABEL_15:
  GlCustomLog(14, "MCU_PWR: HwVersion 0x%x, %.3fmA, Total(%u), InIdle(%u) InLP(%u) InSl(%u) In26Mhz(%u) In52MHz(%u) In100MHz(%u)\n", v9, v11, v10, *(a2 + 21), *(a2 + 22), *(a2 + 23), *(a2 + 24), *(a2 + 25), *(a2 + 26));
  v22 = *(a2 + 3);
  if ((*(*(a1 + 1832) + 88) - 39) > 1)
  {
    BlueFin::GlFormat::glsnprintf(a4, a5, "$PGLOR,%d,PWR,mA,%.1f,RFTm,%u,OscTm,%u,MeasTm,%u,UTC,%s,GNSSmA,%.1f,CPUTm,%u,COPTm,%u,COPMargTm,%u,SrchTm,%u,TrkTm,%u,RpcTm,%u,McuTotalTm,%u,McuSleepTm,%u,McuIdleTm,%u,Mcu26Tm,%u,Mcu52Tm,%u,McuTurboTm,%u", *(a2 + 24), 6, (v11 + v22), *a2, a2[2], a2[5], a1 + 1767, v22, a2[4], a2[24], *(a2 + 108), a2[25], a2[26], a2[27], *(a2 + 20), *(a2 + 23), *(a2 + 21), *(a2 + 24), *(a2 + 25), *(a2 + 26));
  }

  else
  {
    BlueFin::GlFormat::glsnprintf(a4, a5, "$PGLOR,%d,PWR,mA_PMU,%.2f,RFTm,%u,OscTm,%u,MeasTm,%u,UTC,%s,CpuETm,%u,CpuLmTm,%u,Cop0Tm,%u,Cop1Tm,%u,COPMargTm,%u,SrchTm,%u,Trk0Tm,%u,Trk1Tm,%u,RpcTm,%u,CpuClk,%u,DspClk,%u,IdleClk,%u,Temp,%.1f,DspLoad,%.2f,SrchMcm,%u", a2[33], 9, v22, *a2, a2[2], a2[5], a1 + 1767, a2[4], a2[30], a2[24], a2[31], *(a2 + 108), a2[25], a2[26], a2[32], a2[27], a2[33], a2[34], a2[35], *(a2 + 18), *(a2 + 19), *(a2 + 28));
  }

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(a4, a4 + a5 - 1, v23);
}

char *BlueFin::GlPeNmeaGen::FormatNmeaAGC(uint64_t a1, uint64_t a2, uint64_t a3, BlueFin::GlFormat *this, int a5)
{
  v9 = this + a5;
  v10 = v9 - 1;
  if (v9 - 1 <= this)
  {
    v11 = 0;
  }

  else
  {
    v11 = a5;
  }

  v12 = BlueFin::GlFormat::glsnprintf(this, v11, "$PGLOR,%d,AGC", this, 3);
  v15 = this + v12;
  if (!*(a2 + 251))
  {
    v18 = *(a1 + 1832);
    v19 = *(v18 + 88);
    if ((v19 - 36) >= 5 && v19 != 34)
    {
      if (v10 <= v15)
      {
        v30 = 0;
      }

      else
      {
        v30 = (v9 - v15);
      }

      v60 = (*(a2 + 260) + *(a2 + 264));
      v61 = (*(a2 + 268) + *(a2 + 272));
      v56 = (*(a2 + 252) + *(a2 + 256));
      v31 = ",G,%.1lf,R,%.1lf,B,%.1lf,EA5,,AL1,,AL5,,LTE,,PM1,,PM5,";
      goto LABEL_33;
    }

    v20 = *(v18 + 48);
    if (v10 <= v15)
    {
      v21 = 0;
    }

    else
    {
      v21 = (v9 - v15);
    }

    v23 = &v15[BlueFin::GlFormat::glsnprintf((this + v12), v21, ",G,%.1lf", v14, (*(a2 + 252) + *(a2 + 256)))];
    if (v10 <= v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = (v9 - v23);
    }

    v26 = (v23 + BlueFin::GlFormat::glsnprintf(v23, v24, ",R,%.1lf", v22, (*(a2 + 260) + *(a2 + 264))));
    if (v20 <= 5 && ((1 << v20) & 0x26) != 0)
    {
      if (v10 <= v26)
      {
        v27 = 0;
      }

      else
      {
        v27 = (v9 - v26);
      }

      v28 = BlueFin::GlFormat::glsnprintf(v26, v27, ",B,%.1lf", v25, (*(a2 + 268) + *(a2 + 272)));
    }

    else
    {
      if (v10 <= v26)
      {
        v32 = 0;
      }

      else
      {
        v32 = (v9 - v26);
      }

      v28 = BlueFin::GlFormat::glsnprintf(v26, v32, ",B,", v25, v57);
    }

    v33 = (v26 + v28);
    if (v20 <= 8 && ((1 << v20) & 0x1B4) != 0)
    {
      if (v10 <= v33)
      {
        v34 = 0;
      }

      else
      {
        v34 = (v9 - v33);
      }

      v58 = (*(a2 + 276) + *(a2 + 280));
      v35 = ",E5A,%.1lf";
    }

    else
    {
      if (v10 <= v33)
      {
        v34 = 0;
      }

      else
      {
        v34 = (v9 - v33);
      }

      v35 = ",E5A,";
    }

    v37 = (v33 + BlueFin::GlFormat::glsnprintf(v33, v34, v35, v29, *&v58));
    if (v10 <= v37)
    {
      v38 = 0;
    }

    else
    {
      v38 = (v9 - v37);
    }

    v40 = (v37 + BlueFin::GlFormat::glsnprintf(v37, v38, ",AL1,%.1lf", v36, *(a2 + 252)));
    if (v20 <= 8 && ((1 << v20) & 0x1B4) != 0)
    {
      if (v10 <= v40)
      {
        v41 = 0;
      }

      else
      {
        v41 = (v9 - v40);
      }

      v59 = *(a2 + 276);
      v42 = ",AL5,%.1lf";
    }

    else
    {
      if (v10 <= v40)
      {
        v41 = 0;
      }

      else
      {
        v41 = (v9 - v40);
      }

      v42 = ",AL5,";
    }

    v43 = 0;
    v45 = (v40 + BlueFin::GlFormat::glsnprintf(v40, v41, v42, v39, *&v59));
    v46 = (a2 + 296);
    v47 = &byte_298A449A4;
    while (1)
    {
      v48 = *(a2 + 320);
      v49 = *v47++;
      if (v48 == v49)
      {
        v50 = 64665;
      }

      else if (v48 != 1 || (v53 = v46[3]) == 0 || (v50 = *v46 - v53, v50 < 1))
      {
        if (v10 <= v45)
        {
          v54 = 0;
        }

        else
        {
          v54 = (v9 - v45);
        }

        v52 = BlueFin::GlFormat::glsnprintf(v45, v54, ",%s,", v44, off_29EEB4158[v43], *&v60);
        goto LABEL_67;
      }

      if (v10 <= v45)
      {
        v51 = 0;
      }

      else
      {
        v51 = (v9 - v45);
      }

      v52 = BlueFin::GlFormat::glsnprintf(v45, v51, ",%s,%.1lf", v44, off_29EEB4158[v43], (v50 / 64.665));
LABEL_67:
      v45 = (v45 + v52);
      ++v43;
      ++v46;
      if (v43 == 3)
      {
        goto LABEL_68;
      }
    }
  }

  v16 = *(a3 + 49);
  if ((v16 - 1) < 0x20)
  {
    if (v10 <= v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = (v9 - v15);
    }

    BlueFin::GlFormat::glsnprintf((this + v12), v17, ",G,%.1lf", v14, (*(a2 + 252) + *(a2 + 256)));
    goto LABEL_68;
  }

  if ((v16 - 52) < 0xE)
  {
    if (v10 <= v15)
    {
      v30 = 0;
    }

    else
    {
      v30 = (v9 - v15);
    }

    v31 = ",R,";
LABEL_33:
    BlueFin::GlFormat::glsnprintf((this + v12), v30, v31, v14, *&v56, *&v60, *&v61);
  }

LABEL_68:

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(this, v9 - 1, v13);
}

BOOL BlueFin::GlPeNmeaGen::ToNmeaId(uint64_t a1, unsigned int *a2, _DWORD *a3, _BYTE *a4)
{
  *a3 = 6;
  *a4 = 0;
  v7 = *a2;
  v8 = *(a1 + 1832);
  IsGnssSupportedForReport = BlueFin::GlPeNmeaGen::IsGnssSupportedForReport(v8, *a2);
  result = 0;
  if (IsGnssSupportedForReport)
  {
    if (v7 >= 7)
    {
      DeviceFaultNotify("glpe_nmeagen.cpp", 922, "ToNmeaId", "0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_nmeagen.cpp", 922, "0");
    }

    v11 = *(a2 + 4);
    *a3 = dword_298A449AC[v7];
    if (*(v8 + 26256) == 1)
    {
      v12 = v11 + 64;
      if (v7 != 2)
      {
        v12 = v11;
      }

      v13 = v11 + 32;
      if (v7 != 1)
      {
        v13 = v12;
      }
    }

    else
    {
      v14 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[v7];
      v15 = v11 - 56;
      v16 = v11 + 64;
      v17 = v11 + 100;
      if (v7 != 5)
      {
        v17 = v11;
      }

      v13 = v11 + 32;
      if (v14 != 1)
      {
        v13 = v17;
      }

      if (v14 == 2)
      {
        v13 = v16;
      }

      if (v14 == 5)
      {
        v13 = v15;
      }
    }

    *a4 = v13;
    return *a3 != 6;
  }

  return result;
}

BlueFin::GlGnssIdSet *BlueFin::GlGnssIdSet::GlGnssIdSet(BlueFin::GlGnssIdSet *this, char a2, char a3)
{
  *(this + 12) = 0;
  *this = this + 12;
  *(this + 8) = 2;
  if (a3)
  {
    DeviceFaultNotify("glgnss.cpp", 60, "GlGnssIdSet", "(ulWord0 & 0x1) == 0");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glgnss.cpp", 60, "(ulWord0 & 0x1) == 0");
  }

  BlueFin::GlSetBase::SetULong(this, 0, a3);
  BlueFin::GlSetBase::SetULong(this, 1u, a2);
  return this;
}

uint64_t BlueFin::GlPeNmeaGsvSatsNum::GetNmeaSignalID(uint64_t a1, unsigned int a2, unsigned int a3)
{
  result = 0;
  v8 = 151520769;
  v7 = 1;
  v6 = 50659329;
  if (a2 <= 2)
  {
    if (a2 >= 2)
    {
      if (a2 != 2)
      {
        return result;
      }

      if (!a3)
      {
        v5 = &v7;
        return *v5;
      }

      return 0;
    }
  }

  else
  {
    if (a2 > 4)
    {
      if (a2 == 5)
      {
        if (a3 < 3)
        {
          v4 = &__const__ZN7BlueFin18GlPeNmeaGsvSatsNum15GetNmeaSignalIDENS_6teGNSSENS_13GlSignalIndexE_aucGalNmeaSigId;
          goto LABEL_18;
        }
      }

      else
      {
        if (a2 != 6)
        {
          return result;
        }

        if (a3 <= 2)
        {
          v4 = &__const__ZN7BlueFin18GlPeNmeaGsvSatsNum15GetNmeaSignalIDENS_6teGNSSENS_13GlSignalIndexE_aucNicNmeaSigId;
          goto LABEL_18;
        }
      }

      return 0;
    }

    if (a2 != 3)
    {
      if (a3 < 4)
      {
        v4 = &v6;
LABEL_18:
        v5 = v4 + a3;
        return *v5;
      }

      return 0;
    }
  }

  if (a3 < 4)
  {
    v4 = &v8;
    goto LABEL_18;
  }

  return 0;
}

char *BlueFin::GlPeNmeaGen::FormatNmeaFIX(BlueFin::GlPeNmeaGen *this, int a2, unsigned int a3, BlueFin::GlFormat *a4, int a5)
{
  BlueFin::GlFormat::glsnprintf(a4, a5, "$PGLOR,%d,FIX,%.1f,%.1f", a4, 1, (a2 + 10) * 0.001, a3 * 0.001);

  return BlueFin::GlPeNmeaGen::nmeaAddChksum(a4, a4 + a5 - 1, v7);
}

uint64_t BlueFin::GlPeReqBag::SetFixStatus(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x2A1C7C4A8](a1, a2);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v99 = *MEMORY[0x29EDCA608];
  v59 = v5 + 4096;
  v64 = &unk_2A1F13AA0;
  v65 = (v2 + 3233);
  v8 = v2 + 20128;
  v66 = *(v2 + 3233);
  *(v2 + 3233) = 0;
  bzero(v67, 0x1CF8uLL);
  v9 = 0;
  v10 = 0;
  memset(v73, 248, sizeof(v73));
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  do
  {
    v11 = *(v7 + v9);
    if (v11)
    {
      v12 = *(v11 + 8);
      if (*(v12 + 16) == 12)
      {
        v10 |= *(*v4 + 4 * (*(v12 + 24) >> 5)) >> (*(v12 + 24) & 0x1F);
      }
    }

    v9 += 8;
  }

  while (v9 != 576);
  for (i = 0; i != 72; ++i)
  {
    v14 = *(v7 + 8 * i);
    if (!v14)
    {
      continue;
    }

    v15 = v14[1];
    v16 = *v4;
    if (!**v4)
    {
      v17 = *(v4 + 8);
      if (v17 < 2)
      {
        goto LABEL_17;
      }

      v18 = v17 - 1;
      v19 = v16 + 1;
      while (!*v19++)
      {
        if (!--v18)
        {
          goto LABEL_17;
        }
      }
    }

    if (((v16[*(v15 + 24) >> 5] >> (*(v15 + 24) & 0x1F)) & 1) != 0 || (v10 & 1) != 0 && *(v15 + 16) == 12)
    {
LABEL_17:
      (*(*v14 + 24))(v14, v6);
    }

    if (*(v15 + 16) != 13)
    {
      continue;
    }

    (*(**(v7 + 8 * i) + 248))(*(v7 + 8 * i), v67, v6);
    v21 = *(v7 + 8 * i);
    v22 = *(v21[1] + 172);
    if (*(v8 + 128) != 1)
    {
      if ((v22 & 0x38) != 0)
      {
        continue;
      }

      goto LABEL_25;
    }

    if ((v22 & 8) != 0 || (v22 & 0x38) == 0)
    {
      if ((v22 & 8) != 0)
      {
        (*(*v21 + 72))(v21, v8, 0);
        continue;
      }

LABEL_25:
      v23 = *(v8 + 16);
      v60 = *v8;
      v61 = v23;
      v24 = *(v8 + 48);
      v62 = *(v8 + 32);
      v63 = v24;
      BYTE4(v60) = 0;
      v61 = 0uLL;
      *(&v60 + 1) = 0;
      LOWORD(v62) = -1;
      DWORD1(v62) = 0;
      (*(*v21 + 72))(v21, &v60, 0);
      continue;
    }
  }

  if (v6)
  {
    v25 = *(v8 + 540);
    if (*(v8 + 536) - v25 <= 0x12D)
    {
      BlueFin::GlBitBuffer::Limit(v7 + 20640, v25);
      BlueFin::GlBitBuffer::Position(v7 + 20640, 0x12Eu);
      v26 = *(v8 + 540);
      v27 = *(v8 + 548) + v26;
      *(v8 + 548) = v27;
      v28 = *(v8 + 532);
      v29 = v27 >= v28;
      v30 = v27 - v28;
      if (v29)
      {
        *(v8 + 548) = v30;
      }

      *(v8 + 540) = *(v8 + 536) - v26;
      *(v8 + 536) = v28;
      *(v8 + 552) = 0;
    }

    BlueFin::GlBitBuffer::PutU((v7 + 20640), 1u, 1u);
    BlueFin::GlBitBuffer::PutU((v7 + 20640), *(v6 + 4048), 1u);
    BlueFin::GlBitBuffer::PutU((v7 + 20640), *(v59 + 96), 1u);
    BlueFin::GlBitBuffer::PutU((v7 + 20640), *(v59 + 112), 1u);
    BlueFin::GlBitBuffer::PutU((v7 + 20640), *(v7 + 3252) + *v6, 0x20u);
    v31 = *(v6 + 4144);
    if (v31 > 0.0)
    {
      v32 = 0.5;
      goto LABEL_38;
    }

    if (v31 < 0.0)
    {
      v32 = -0.5;
LABEL_38:
      v33 = (v31 + v32);
    }

    else
    {
      v33 = 0;
    }

    BlueFin::GlBitBuffer::PutU((v7 + 20640), v33, 0x10u);
    v34 = *(v6 + 4072) * 23860929.0;
    if (v34 > 0.0)
    {
      v35 = 0.5;
      goto LABEL_44;
    }

    if (v34 < 0.0)
    {
      v35 = -0.5;
LABEL_44:
      v36 = (v34 + v35);
    }

    else
    {
      v36 = 0;
    }

    BlueFin::GlBitBuffer::PutU((v7 + 20640), v36, 0x20u);
    v37 = *(v6 + 4080) * 11930464.0;
    if (v37 > 0.0)
    {
      v38 = 0.5;
      goto LABEL_50;
    }

    if (v37 < 0.0)
    {
      v38 = -0.5;
LABEL_50:
      v39 = (v37 + v38);
    }

    else
    {
      v39 = 0;
    }

    BlueFin::GlBitBuffer::PutU((v7 + 20640), v39, 0x20u);
    v40 = *(v6 + 4088);
    if (v40 > 0.0)
    {
      v41 = 0.5;
      goto LABEL_56;
    }

    if (v40 < 0.0)
    {
      v41 = -0.5;
LABEL_56:
      v42 = (v40 + v41);
    }

    else
    {
      v42 = 0;
    }

    BlueFin::GlBitBuffer::PutU((v7 + 20640), v42 + 0x10000, 0x10u);
    v43 = *(v6 + 4200) * 63.0;
    if (v43 > 0.0)
    {
      v44 = 0.5;
      goto LABEL_62;
    }

    if (v43 < 0.0)
    {
      v44 = -0.5;
LABEL_62:
      v45 = (v43 + v44);
    }

    else
    {
      v45 = 0;
    }

    BlueFin::GlBitBuffer::PutU((v7 + 20640), v45, 0x10u);
    v46 = *(v6 + 4216) * 91.0;
    if (v46 > 0.0)
    {
      v47 = 0.5;
      goto LABEL_68;
    }

    if (v46 < 0.0)
    {
      v47 = -0.5;
LABEL_68:
      v48 = (v46 + v47);
    }

    else
    {
      v48 = 0;
    }

    BlueFin::GlBitBuffer::PutU((v7 + 20640), v48 + 0x10000, 0x10u);
    BlueFin::GlBitBuffer::PutU((v7 + 20640), *(v8 + 70), 1u);
    BlueFin::GlBitBuffer::PutU((v7 + 20640), *(v8 + 69), 1u);
    v49 = *(v8 + 104) * 100.0;
    v50 = v49;
    if (v49 > 0.0)
    {
      v51 = 0.5;
      goto LABEL_74;
    }

    if (v49 < 0.0)
    {
      v51 = -0.5;
LABEL_74:
      v52 = (v50 + v51);
    }

    else
    {
      v52 = 0;
    }

    BlueFin::GlBitBuffer::PutU((v7 + 20640), v52, 0x10u);
    BlueFin::GlBitBuffer::PutU((v7 + 20640), *(v8 + 108), 0x20u);
    BlueFin::GlBitBuffer::PutU((v7 + 20640), *(v7 + 20244), 0x20u);
    BlueFin::GlBitBuffer::PutU((v7 + 20640), *(v7 + 20240), 0x20u);
    v53 = *(v8 + 120) * 1000.0;
    v54 = v53;
    if (v53 > 0.0)
    {
      v55 = 0.5;
      goto LABEL_80;
    }

    if (v53 < 0.0)
    {
      v55 = -0.5;
LABEL_80:
      v56 = (v54 + v55);
    }

    else
    {
      v56 = 0;
    }

    BlueFin::GlBitBuffer::PutU((v7 + 20640), v56 + 2000000, 0x18u);
    GlCustomLog(15, "AppendPreviousPosition %d\n", *v6);
  }

  if (*(v8 + 128) == 1)
  {
    *(v8 + 32) = 0u;
    *(v8 + 48) = 0u;
    *v8 = 0u;
    *(v8 + 16) = 0u;
    *(v8 + 128) = 0;
  }

  *(v8 + 4) = v68 != 0;
  *(v7 + 20136) = v69;
  *(v7 + 20144) = v70;
  result = BlueFin::GlPeReqBag::GetAvgOfTop4Cn0(v67);
  *(v8 + 32) = result;
  *(v8 + 36) = 0;
  if (v71)
  {
    v58 = v72 / 1.9438445;
    *(v8 + 36) = v58;
  }

  *v8 = *(v7 + 3252) + v67[0];
  *(v8 + 128) = 1;
  *v65 = v66;
  return result;
}

void std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_0,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_0>,void ()(BlueFin::GL_FIX_STATUS const*)>::operator()(DeviceCommon *a1, unsigned int **a2)
{
  v2 = *a2;
  v3 = *a2 + 1018;
  v4 = *(a1 + 1);
  DeviceCommon::GetMachContinuousTime(a1);
  v6 = v5;
  if (!*(v2 + 4048))
  {
    FireDeviceLog::DeviceLogBase(6, "#fgd,no fix");
    goto LABEL_27;
  }

  v7 = (*(v2 + 7008) & 7) != 4;
  if ((*(v2 + 7008) & 7) == 4)
  {
    FireDeviceLog::DeviceLogBase(6, "#fgd,ParrotedHULA,NOGNSS,lat,%.8lf,lon.%.8lf,alt,%.1lf,discarded", *(v2 + 4072), *(v2 + 4080), *(v2 + 4088));
  }

  if (*(v2 + 4144) <= 0.0)
  {
    FireDeviceLog::DeviceLogBase(6, "#fgd,fix.bPosValid,%d,fix.dEstErr,%.3lf", *(v2 + 4048), *(v2 + 4144));
    v7 = 0;
  }

  if (*(v2 + 4160) <= 0.0)
  {
    FireDeviceLog::DeviceLogBase(6, "#fgd,fix.bPosValid,%d,fix.dEstErrAlt,%.3lf", *(v2 + 4048), *(v2 + 4160));
    v7 = 0;
  }

  if (*(v3 + 360) <= 0.0)
  {
    FireDeviceLog::DeviceLogBase(6, "#fgd,fix.bPosValid,%d,fix.dPosUncertaintySemiMajorAxis,%.3lf", *(v2 + 4048), *(v3 + 360));
    v7 = 0;
  }

  if (*(v2 + 6960) <= 0.0)
  {
    FireDeviceLog::DeviceLogBase(6, "#fgd,fix.bPosValid,%d,fix.dPosUncertaintySemiMinorAxis,%.3lf", *(v2 + 4048), *(v2 + 6960));
    v7 = 0;
  }

  v8 = *(v2 + 4072);
  v9 = *(v2 + 4080);
  v10 = fabs(v8);
  if (v10 < 0.0000001 && fabs(v9) < 0.0000001)
  {
    FireDeviceLog::DeviceLogBase(6, "#fgd,NullIsland,fix.dLat,%.7lf,fix.dLon,%.7lf", *(v2 + 4072), v9);
    v7 = 0;
    v8 = *(v2 + 4072);
    v9 = *(v2 + 4080);
    v10 = fabs(v8);
  }

  if (v9 < -180.0 || v10 > 90.0 || v9 > 180.0)
  {
    FireDeviceLog::DeviceLogBase(6, "#fgd,fix.dLat,%.7lf,fix.dLon,%.7lf", v8, v9);
    v12 = *(v2 + 4088);
    if (v12 > -500.0 && v12 < 1000000.0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v11 = *(v2 + 4088);
    if (v11 > -500.0 && v11 < 1000000.0)
    {
      if (v7)
      {
        if ((*(v2 + 7008) & 3) != 0)
        {
          *(v4 + 328) = v6;
          FireDeviceLog::DeviceLogBase(6, "#fgd,received GPS fix,fLastFixWithGnssContentTime,%f", v6);
          goto LABEL_30;
        }

        if (vabdd_f64(v6, *(v4 + 328)) <= 6.0)
        {
LABEL_30:
          operator new();
        }

        FireDeviceLog::DeviceLogBase(6, "#fgd,Drop DR fix, as its outside the propogation window,kFixProgationTime,%.2f,fLastFixWithGnssContentTime,%.2f,currentMct,%.2f");
      }

LABEL_27:
      operator new();
    }
  }

  FireDeviceLog::DeviceLogBase(6, "#fgd,fix.dAlt,%.3lf");
  goto LABEL_27;
}

void sub_298847AD0(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (v30)
  {
    MEMORY[0x29C292F70](v30, v29, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t convertGlTimeValidityToTtdataQuality(unsigned int a1, unsigned int *a2)
{
  result = 0;
  *a2 = 0;
  if (a1 <= 2)
  {
    if (a1 < 2)
    {
      return 1;
    }

    if (a1 != 2)
    {
      return result;
    }

LABEL_10:
    *a2 = a1;
    return 1;
  }

  if (a1 - 5 < 2)
  {
    a1 = 5;
    goto LABEL_10;
  }

  if (a1 == 3 || a1 == 4)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t BlueFin::GlPeRqHdlrGnssMeasData::SetFixStatus(uint64_t a1, unsigned int *a2)
{
  v4 = (a1 + 175744);
  v5 = *(a1 + 8);
  if (*(a1 + 175752))
  {
    v6 = *v4 + 300;
    result = (*(*v5 + 184))(*(a1 + 8));
    if (v6 <= result)
    {
      return result;
    }

    v8 = v4[2] + 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = *a2;
  v4[1] = *a2;
  v4[2] = v8;
  v10 = *(a1 + 68);
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      v12 = a1 + 72 + 392 * i;
      if (*(v12 + 10) == 3)
      {
        v13 = *(v12 + 8);
        v14 = a2 + 13;
        v15 = 100;
        while (*(v14 - 3) != (v13 - 41) || *v14 - 1 > 0x59)
        {
          v14 += 10;
          if (!--v15)
          {
            goto LABEL_14;
          }
        }

        *(v12 + 8) = v13 | (*(v14 - 1) << 8);
      }

LABEL_14:
      ;
    }
  }

  v16 = *(*(a1 + 56) + 8);
  if (v16[644])
  {
    v17 = (a1 + 39276);
    v28 = &off_2A1F0B5F0;
    v29 = 0;
    BlueFin::GlPeTimeManager::GetTime(v27, v16, v9, 1);
    Gps = BlueFin::GlPeGnssTime::GetGps(v27, &v28);
    v19 = (v28[4])(&v28) / 0x93A80uLL;
    v20 = (v28[4])(&v28);
    v20.n128_u32[0] = v29;
    v22 = 0x41CDCD6500000000;
    *(a1 + 39312) = 0;
    *(a1 + 39320) = Gps * 1000.0;
    v23 = -604800000000000 * v19 - 1000000000 * (v21 % 0x93A80) - (v20.n128_u64[0] * 2.32830644e-10 * 1000000000.0) + 1000000 * *a2;
    *(a1 + 39304) = v23;
    if (v23 >= 1)
    {
      DeviceFaultNotify("glpe_reqhdlr_gnss_meas_data.cpp", 1082, "SetFixStatus", "m_oMeasData.otClock.sllFullBiasNs<=0");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_gnss_meas_data.cpp", 1082, "m_oMeasData.otClock.sllFullBiasNs<=0");
    }

    *v17 = 28;
    if (*(a2 + 4272))
    {
      v24 = a2[1056];
      LOWORD(v22) = *(a2 + 2128);
      v25 = v22;
      *v17 = 124;
    }

    else
    {
      v24 = 0.0;
      v25 = 0.0;
    }

    *(a1 + 39328) = v24;
    *(a1 + 39336) = v25;
  }

  if (v5[12])
  {
    BlueFin::GlPeGnssSvsInfoMgr::Report((a1 + 108864));
  }

  if (BlueFin::GlPeRqHdlrGnssMeasData::UpdateAgcInfo(a1))
  {
    v26 = v5[13];
    if (v26)
    {
      v26(v5, a1 + 39808);
    }
  }

  return BlueFin::GlRequestImplGnssMeasData::OnMeasData(v5, a1 + 64);
}

void BlueFin::GlPeGnssSvsInfoMgr::Report(BlueFin::GlPeGnssSvsInfoMgr *this)
{
  v2 = *(this + 7);
  *v2 = 0;
  bzero(v2 + 2, 0xD7A0uLL);
  v3 = *(this + 7);
  *(v3 + 55208) = -1;
  *(v3 + 55216) = 0u;
  *(v3 + 55232) = 0u;
  *(v3 + 55248) = 0u;
  *(*(this + 7) + 55264) = 0;
  v4 = *(*(this + 8) + 60960);
  if (v4)
  {
    v5 = *(*(this + 9) + 26344);
    v6 = *(v4 + 4048);
    v7 = *(v4 + 4088);
    v60 = *(v4 + 4072);
    v61 = v7;
    BlueFin::lla2ecef(&v60, v59);
    v8 = 0;
    v46 = vdupq_n_s64(0x41CDCD6500000000uLL);
    v47 = vdupq_n_s64(0x41B1DE784A000000uLL);
LABEL_3:
    v48 = *(*(this + 5) + 2568);
    BlueFin::GlSetBase::GlSetBase(&__src, v58, 8u, (*(this + 8354) + 56 * v8));
    v51 = v57;
    memcpy(v55, __src, 4 * v57);
    v53 = 0;
    v52 = 0;
    v54 = v55[0];
    while (1)
    {
      BlueFin::GlSetIterator::operator++(&v51);
      if (v52 == v51)
      {
        if (++v8 == 10)
        {
          goto LABEL_46;
        }

        goto LABEL_3;
      }

      if ((*(*(this + 8275) + ((v53 >> 3) & 0x1C)) >> (v53 & 0x1F)))
      {
        v9 = v53;
        BlueFin::GlSetBase::Remove(this + 66200, v53);
        v10 = (*(this + 8274) + 368 * v9);
        if (*v10 != 8)
        {
          if (!v6 || (v64[0] = 0.0, v11 = *(v10 + 5), v49 = *(v10 + 6), v50 = v11, v12 = (*(*(*(this + 8) + 6856) + 48))(*(this + 8) + 6856), (*(*v12 + 80))(v12, &v49, v59, &v60, 0, 0, 0, v64), v5 <= v64[0]))
          {
            memcpy((*(this + 7) + 368 * **(this + 7) + 8), v10, 0x170uLL);
            v13 = *(this + 7);
            v14 = *v13;
            v15 = *(*(this + 8) + 60960);
            if (v15)
            {
              if (*(v15 + 4048))
              {
                if (*(v15 + 6952) < 40000.0)
                {
                  v16 = &v13[92 * v14];
                  v17 = *(v16 + 212);
                  if (v17)
                  {
                    v18 = 0;
                    v19 = &v13[92 * v14 + 58];
                    while (2)
                    {
                      if (BYTE4(v19[-1].f64[0]))
                      {
                        goto LABEL_28;
                      }

                      v20 = BlueFin::GlImplGnss::m_aucImplGnssTable[v16[2]];
                      LODWORD(v49) = v20;
                      BYTE4(v49) = *(v16 + 12);
                      v64[0] = 0.0;
                      if (!BlueFin::GlPeGnssSvsInfoMgr::getSvAzEl(*(*(this + 8) + 60960), v20, BYTE4(v49), v64, &v63) || v64[0] <= 0.0)
                      {
                        goto LABEL_28;
                      }

                      BlueFin::GlPeSvIdConverter::Gnss2SvId((*(this + 4) + 119744), &v49, &v62);
                      v21 = (*(*(*(this + 8) + 6856) + 112))(*(this + 8) + 6856, &v62);
                      if (v21)
                      {
                        v22 = v21;
                        v23 = *v21 ? (*(v21 + 20) * (v48 - *v21)) * 0.001 : 0.0;
                        v24 = *(v21 + 4);
                        if (v24)
                        {
                          if (*(v22 + 9) == 1)
                          {
                            v25 = *(v22 + 12);
                            v26 = *(v22 + 16);
                            v27 = LODWORD(v19[-1].f64[0]);
                            if (v27 > 0xA)
                            {
                              goto LABEL_33;
                            }

                            if (((1 << v27) & 0x548) != 0)
                            {
                              v28 = 1.79327032;
                              goto LABEL_26;
                            }

                            if (v27 == 4)
                            {
                              if ((v62 + 67) < 0x44u || (v30 = BlueFin::GlSvId::s_aucSvId2gnss[v62], v31 = BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v30], v31 == -1) || (BlueFin::GlSignalId::s_ausGnss2signalId[v30] + v62 - BlueFin::GlSvId::s_aucGnss2minSvId[v30]) >= 0x23Fu)
                              {
                                DeviceFaultNotify("glsignalid.h", 651, "GetRfCarrierFrqHz", "IsValid()");
                                __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glsignalid.h", 651, "IsValid()");
                              }

                              v32 = BlueFin::GlSignalId::s_adSignalType2ctrFreqHz[v31];
                              if (v30 == 2)
                              {
                                v33 = (v62 - 59);
                                if (v62 - 52 >= 0xE)
                                {
                                  v33 = -8.0;
                                }

                                v32 = v32 + v33 * 562500.0;
                              }

                              v28 = 2.48194818e18 / (v32 * v32);
                            }

                            else
                            {
                              if (v27 == 5)
                              {
                                v28 = 1.01843279;
                                goto LABEL_26;
                              }

LABEL_33:
                              v28 = 1.0;
                              if (v27 == 2)
                              {
                                v28 = 1.64694444;
                              }
                            }

LABEL_26:
                            v29.f64[0] = v25;
                            v29.f64[1] = v28 * (v23 + v26);
                            *v19 = vmulq_f64(vdivq_f64(v29, v47), v46);
                            LODWORD(v19[-1].f64[1]) = BlueFin::GlPeAtmosDelays::GlPeIonoSrc2GlGnssIonoDelaySrc(v24);
                            BYTE4(v19[-1].f64[0]) = 1;
                          }
                        }
                      }

                      v17 = *(v16 + 212);
LABEL_28:
                      ++v18;
                      v19 = (v19 + 40);
                      if (v18 >= v17)
                      {
                        v13 = *(this + 7);
                        v14 = *v13;
                        break;
                      }

                      continue;
                    }
                  }
                }
              }
            }

            v34 = v14 + 1;
            *v13 = v34;
            if (v34 >= 0x96)
            {
              break;
            }
          }
        }
      }
    }

    GlCustomLog(11, "GlPeGnssSvsInfoMgr reports SvInfo array full (%d >= %d), no more output.\n", v34, 150);
LABEL_46:
    v35 = *(this + 4);
    v36 = *(this + 7);
    v37 = v35[29935];
    if ((v37 & 8) != 0 && v35[17838])
    {
      v38 = v35 + 17824;
      v39 = 1;
    }

    else
    {
      v38 = v35 + 17808;
      if ((v37 & 0x40) != 0)
      {
        v40 = v35[17886];
        v41 = v40 == 0;
        v42 = v35 + 17872;
        v39 = 2 * (v40 != 0);
        if (!v41)
        {
          v38 = v42;
        }
      }

      else
      {
        v39 = 0;
      }
    }

    v43 = 0;
    *(v36 + 55208) = v39;
    do
    {
      *(v36 + 55216 + v43 * 4) = *&v38[v43 + 2];
      v43 += 2;
    }

    while (v43 != 8);
    for (i = 0; i != 4; ++i)
    {
      *(v36 + 55248 + i * 4) = v38[i + 10];
    }

    *(v36 + 55264) = 1000000000 * v38[15];
    v45 = *(*(this + 6) + 96);
    if (v45)
    {
      v45();
    }
  }
}

void std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_3,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_3>,void ()(BlueFin::GlGnssSvInfoData const*,BlueFin::GlTimeConversionInfo const*)>::operator()(uint64_t a1, int32x4_t **a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  if (*(v3 + 184) && (*(v3 + 153) & 1) != 0)
  {
    v81 = *a2;
    v79 = *a3;
    FireDeviceLog::DeviceLogBase(6, "handleSvInfoResponse");
    v5 = *(v3 + 128);
    for (i = *(v3 + 136); i != v5; std::allocator_traits<std::allocator<gnss::SvInfo>>::destroy[abi:ne200100]<gnss::SvInfo,0>(i))
    {
      i -= 17;
    }

    *(v3 + 136) = v5;
    if (*v81)
    {
      v6 = 0;
      v7 = (v81 + 12);
      v85 = v81 + 62;
      v80 = vdupq_n_s64(0x7FF8000000000000uLL);
      v84 = v3;
      while (1)
      {
        BYTE5(v86) = 0;
        BYTE6(v86) = 127;
        *(&v86 + 1) = 0x7FF8000000000000;
        v87 = 0;
        v89 = 0u;
        v88[0] = 0;
        *(&v91 + 1) = v80.i64[1];
        *__p = 0uLL;
        *(&v92 + 1) = 0;
        HIBYTE(v93) = 0;
        v83 = v6;
        v8 = &v81[92 * v6 + 2];
        v9 = *v8;
        if (*v8 > 4)
        {
          break;
        }

        if (!v9)
        {
          v10 = 0;
          v12 = 1;
          goto LABEL_26;
        }

        if (v9 == 2)
        {
          LODWORD(v86) = 2;
          BYTE4(v86) = *(v8 + 4);
          v13 = (*(v8 + 5) - 7);
          v10 = v13 < 0xF2;
          if (v13 >= 0xF2)
          {
            BYTE6(v86) = *(v8 + 5);
          }

          else
          {
            BYTE6(v86) = 0;
            FireDeviceLog::DeviceLogBase(2, "svinfo,forcing slot %d to unhealthy due to out-of-range FCN %d", *(v8 + 4), *(v8 + 5));
          }

          BYTE5(v86) = 1;
          goto LABEL_29;
        }

        if (v9 != 3)
        {
          goto LABEL_22;
        }

        v10 = 0;
        LODWORD(v86) = 16;
        v11 = *(v8 + 4) - 64;
LABEL_28:
        BYTE4(v86) = v11;
LABEL_29:
        v14 = *(v8 + 8);
        if (v14 <= 5)
        {
          v87 = 0x30004020100uLL >> (8 * v14);
        }

        v15 = 0;
        v82 = v7;
        v16 = 4;
        do
        {
          v17 = *(v7 - 2);
          v19 = *(v7 - 1);
          v18 = *v7;
          v20 = v88[0];
          v21 = v15 - v88[0];
          v22 = (v15 - v88[0]) >> 5;
          v23 = v22 + 1;
          if ((v22 + 1) >> 59)
          {
            std::vector<GnssHal::ExtensionsFire::RecoveryPoint>::__throw_length_error[abi:ne200100]();
          }

          if (-v88[0] >> 4 > v23)
          {
            v23 = -v88[0] >> 4;
          }

          if (-v88[0] >= 0x7FFFFFFFFFFFFFE0uLL)
          {
            v24 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v23;
          }

          if (v24)
          {
            if (!(v24 >> 59))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v25 = v22;
          v26 = 32 * v22;
          *v26 = *(v7 - 3) * 1000000000.0;
          *(v26 + 8) = v17;
          *(v26 + 16) = v19;
          *(v26 + 24) = v18;
          v15 = 32 * v22 + 32;
          v27 = (v26 - 32 * v25);
          memcpy(v27, v88[0], v21);
          v88[0] = v27;
          *&v89 = 0;
          if (v20)
          {
            operator delete(v20);
          }

          v88[1] = v15;
          v7 += 4;
          --v16;
        }

        while (v16);
        v90 = *(v8 + 144);
        *&v91 = *(v8 + 160);
        *&v92 = *(v8 + 168);
        v28 = *(v8 + 176);
        if (v28 == 2)
        {
          v29 = 2;
        }

        else
        {
          v29 = v28 == 1;
        }

        BYTE8(v92) = v29;
        v30 = *(v8 + 180);
        if (v30 == 2)
        {
          v31 = 2;
        }

        else
        {
          v31 = v30 == 1;
        }

        BYTE10(v92) = v31;
        v32 = *(v8 + 184);
        v33 = v32 == 1;
        if (v32 == 2)
        {
          v33 = 2;
        }

        BYTE12(v92) = v33;
        v34 = *(v8 + 188);
        if (v34 == 2)
        {
          v35 = 2;
        }

        else
        {
          v35 = v34 == 1;
        }

        BYTE14(v92) = v35;
        v36 = *(v8 + 192);
        if (v36 == 2)
        {
          v37 = 2;
        }

        else
        {
          v37 = v36 == 1;
        }

        LOBYTE(v93) = v37;
        if (*(v8 + 196))
        {
          v38 = v10;
        }

        else
        {
          v38 = 1;
        }

        if ((v38 & 1) == 0)
        {
          if (v32 != 2 || v86 == 32)
          {
            v40 = *(v8 + 200);
            if (v40 == 2)
            {
              v39 = 2;
            }

            else
            {
              v39 = v40 == 1;
            }
          }

          else
          {
            v39 = 2;
          }

          BYTE13(v92) = v39;
        }

        if (v10)
        {
          LOBYTE(v93) = 2;
        }

        if (*(v8 + 204))
        {
          v41 = 0;
          v42 = v85;
          do
          {
            v43 = *(v42 - 8);
            if (v43 > 5)
            {
              if (v43 <= 8)
              {
                if (v43 == 8)
                {
                  v44 = 9;
                }

                else
                {
                  v44 = 0;
                }

                if (v43 == 7)
                {
                  v44 = 8;
                }

                v45 = v43 == 6;
                v46 = 7;
LABEL_98:
                if (v45)
                {
                  v47 = v46;
                }

                else
                {
                  v47 = v44;
                }

                if (*(v42 - 28))
                {
                  v48 = *(v42 - 6);
                  if ((v48 - 3) < 6)
                  {
                    FireDeviceLog::DeviceLogBase(2, "svinfo,unexpected IonoSrc,%d", *(v42 - 6));
                    goto LABEL_104;
                  }

                  if ((v48 - 1) >= 2)
                  {
                    if (v48 == 9)
                    {
                      v49 = 2;
                    }

                    else
                    {
LABEL_104:
                      v49 = 0;
                    }
                  }

                  else
                  {
                    v49 = 1;
                  }

                  v50 = *(v42 - 2);
                  v51 = *(v42 - 1);
                }

                else
                {
                  v49 = 0;
                  v50 = 0x7FF8000000000000;
                  v51 = 0x7FF8000000000000;
                }

                v52 = *v42;
                v53 = __p[0];
                v54 = (__p[1] - __p[0]) >> 5;
                v55 = v54 + 1;
                if ((v54 + 1) >> 59)
                {
                  std::vector<GnssHal::ExtensionsFire::RecoveryPoint>::__throw_length_error[abi:ne200100]();
                }

                v56 = -__p[0];
                if (-__p[0] >> 4 > v55)
                {
                  v55 = v56 >> 4;
                }

                if (v56 >= 0x7FFFFFFFFFFFFFE0)
                {
                  v57 = 0x7FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v57 = v55;
                }

                if (v57)
                {
                  if (!(v57 >> 59))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v58 = 32 * v54;
                *v58 = v47;
                *(v58 + 4) = v49;
                *(v58 + 8) = v50;
                *(v58 + 16) = v51;
                *(v58 + 24) = v52;
                v59 = 32 * v54 + 32;
                v60 = (v58 - 32 * ((__p[1] - __p[0]) >> 5));
                memcpy(v60, __p[0], __p[1] - __p[0]);
                __p[0] = v60;
                if (v53)
                {
                  operator delete(v53);
                }

                __p[1] = v59;
                goto LABEL_124;
              }

              if (v43 != 9)
              {
                if (v43 == 11)
                {
                  v44 = 6;
                }

                else
                {
                  v44 = 0;
                }

                v45 = v43 == 10;
                v46 = 10;
                goto LABEL_98;
              }
            }

            else
            {
              if (v43 > 2)
              {
                if (v43 == 5)
                {
                  v44 = 5;
                }

                else
                {
                  v44 = 0;
                }

                if (v43 == 4)
                {
                  v44 = 4;
                }

                v45 = v43 == 3;
                v46 = 3;
                goto LABEL_98;
              }

              if (v43)
              {
                if (v43 == 2)
                {
                  v44 = 2;
                }

                else
                {
                  v44 = 0;
                }

                v45 = v43 == 1;
                v46 = 1;
                goto LABEL_98;
              }
            }

            FireDeviceLog::DeviceLogBase(3, "#Warning,sv band corr,unexpected band,%d", *(v42 - 8));
LABEL_124:
            ++v41;
            v42 += 10;
          }

          while (v41 < *(v8 + 204));
        }

        v62 = v84[17];
        v61 = v84[18];
        if (v62 >= v61)
        {
          v64 = v84[16];
          v65 = 0xF0F0F0F0F0F0F0F1 * ((v62 - v64) >> 3) + 1;
          if (v65 > 0x1E1E1E1E1E1E1E1)
          {
            std::vector<GnssHal::ExtensionsFire::RecoveryPoint>::__throw_length_error[abi:ne200100]();
          }

          v66 = 0xF0F0F0F0F0F0F0F1 * ((v61 - v64) >> 3);
          if (2 * v66 > v65)
          {
            v65 = 2 * v66;
          }

          if (v66 >= 0xF0F0F0F0F0F0F0)
          {
            v67 = 0x1E1E1E1E1E1E1E1;
          }

          else
          {
            v67 = v65;
          }

          if (v67)
          {
            if (v67 <= 0x1E1E1E1E1E1E1E1)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v68 = 8 * ((v62 - v64) >> 3);
          *v68 = v86;
          *(v68 + 16) = v87;
          *(v68 + 24) = *v88;
          v69 = v89;
          *(&v89 + 1) = 0;
          *(v68 + 40) = v69;
          *(v68 + 104) = v93;
          *(v68 + 88) = v92;
          *(v68 + 72) = v91;
          *(v68 + 56) = v90;
          *(v68 + 112) = *__p;
          *(v68 + 128) = 0;
          v70 = v68 - (v62 - v64);
          if (v64 != v62)
          {
            v71 = v64;
            v72 = 8 * ((v62 - v64) >> 3) - (v62 - v64);
            do
            {
              v73 = *v71;
              *(v72 + 16) = *(v71 + 16);
              *v72 = v73;
              *(v72 + 32) = 0;
              *(v72 + 40) = 0;
              *(v72 + 24) = 0;
              *(v72 + 24) = *(v71 + 3);
              *(v72 + 40) = v71[5];
              v71[3] = 0;
              v71[4] = 0;
              v74 = v71[6];
              v71[5] = 0;
              v71[6] = 0;
              *(v72 + 48) = v74;
              v75 = *(v71 + 7);
              v76 = *(v71 + 9);
              v77 = *(v71 + 11);
              *(v72 + 104) = *(v71 + 52);
              *(v72 + 88) = v77;
              *(v72 + 72) = v76;
              *(v72 + 56) = v75;
              *(v72 + 120) = 0;
              *(v72 + 128) = 0;
              *(v72 + 112) = 0;
              *(v72 + 112) = *(v71 + 7);
              *(v72 + 128) = v71[16];
              v71[14] = 0;
              v71[15] = 0;
              v71[16] = 0;
              v71 += 17;
              v72 += 136;
            }

            while (v71 != v62);
            do
            {
              std::allocator_traits<std::allocator<gnss::SvInfo>>::destroy[abi:ne200100]<gnss::SvInfo,0>(v64);
              v64 += 17;
            }

            while (v64 != v62);
            v64 = v84[16];
          }

          v63 = v68 + 136;
          v84[16] = v70;
          v84[17] = v68 + 136;
          v84[18] = 0;
          v7 = v82;
          if (v64)
          {
            operator delete(v64);
          }
        }

        else
        {
          *(v62 + 16) = v87;
          *v62 = v86;
          *(v62 + 32) = 0;
          *(v62 + 40) = 0;
          *(v62 + 24) = 0;
          *(v62 + 24) = *v88;
          *(v62 + 40) = 0;
          *(&v89 + 1) = 0;
          *(v62 + 48) = 0;
          *(v62 + 104) = v93;
          *(v62 + 88) = v92;
          *(v62 + 72) = v91;
          *(v62 + 56) = v90;
          *(v62 + 112) = 0;
          *(v62 + 120) = 0;
          *(v62 + 128) = 0;
          *(v62 + 112) = *__p;
          *(v62 + 128) = 0;
          v63 = v62 + 136;
          v84[17] = v62 + 136;
          v7 = v82;
        }

        v84[17] = v63;
LABEL_144:
        if (*(&v89 + 1))
        {
          MEMORY[0x29C292F70](*(&v89 + 1), 0x1000C40AC4F46D1);
        }

        v6 = v83 + 1;
        v7 += 46;
        v85 += 92;
        if (v83 + 1 >= *v81)
        {
          goto LABEL_150;
        }
      }

      if (v9 == 5)
      {
        v10 = 0;
        LODWORD(v86) = 4;
      }

      else
      {
        if (v9 == 6)
        {
          v10 = 0;
          v12 = 8;
        }

        else
        {
          if (v9 != 7)
          {
LABEL_22:
            FireDeviceLog::DeviceLogBase(2, "svinfo,unexpected constellation,%d", *v8);
            goto LABEL_144;
          }

          v10 = 0;
          v12 = 32;
        }

LABEL_26:
        LODWORD(v86) = v12;
      }

      v11 = *(v8 + 4);
      goto LABEL_28;
    }

LABEL_150:
    if (*v79)
    {
      operator new();
    }

    v78 = v81 + 13312;
    FireDeviceLog::DeviceLogBase(6, "klobuchar,%d,time,ns,%llu,alpha,%.3e,%.3e,%.3e,%.3e,beta,%d,%d,%d,%d", v78[490], *(v78 + 252), *(v78 + 246), *(v78 + 247), *(v78 + 248), *(v78 + 249), v78[500], v78[501], v78[502], v78[503]);
    if (v81[13802] - 1 <= 1)
    {
      operator new();
    }
  }

  else
  {

    FireDeviceLog::DeviceLogBase(2, "handleSvInfoResponse,null", a3);
  }
}

void sub_298849378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  gnss::SvInfo::~SvInfo(va);
  _Unwind_Resume(a1);
}

void FireCallback::GlReqOnGnssSvInfoData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (FireCallback::pInstance)
  {
    v4 = *(FireCallback::pInstance + 312);
    if (v4)
    {
      v6 = a3;
      v7 = a2;
      (*(*v4 + 48))(v4, &v7, &v6);
      return;
    }

    v5 = "fcb,fReqOnGnssSvInfoDataCb,nullptr";
  }

  else
  {
    v5 = "fcb,GlReqOnGnssSvInfoData,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v5, a3);
}

uint64_t BlueFin::GlDbgProxyGlReqOnGnssAgcInfoData(uint64_t a1, unsigned int *a2)
{
  v3 = (*(*a1 + 112))(a1);
  v4 = *(v3 + 8);

  return BlueFin::GlDbgProxy::HalGlReqOnGnssAgcInfoData(v4, v3, a2);
}

BOOL BlueFin::GlPeRqHdlrGnssMeasData::UpdateAgcInfo(BlueFin::GlPeRqHdlrGnssMeasData *this)
{
  v1 = (*(*(this + 7) + 88) + 28672);
  v2 = *(*(*(this + 7) + 88) + 32152);
  *(this + 9952) = 0;
  if (v2)
  {
    v3 = (v1[847] + v1[848]);
    *(this + 4978) = v3;
    *(this + 9954) = 0;
    v4 = (v1[853] + v1[854]);
    *(this + 4980) = v4;
    *(this + 9958) = 1;
    *(this + 4982) = (v1[849] + v1[850]);
    *(this + 9962) = 2;
    *(this + 4988) = (v1[851] + v1[852]);
    *(this + 9974) = 5;
    *(this + 4984) = v3;
    *(this + 9966) = 3;
    *(this + 4986) = v4;
    *(this + 9970) = 4;
    *(this + 4990) = v3;
    *(this + 9978) = 6;
    *(this + 4992) = v4;
    *(this + 9982) = 7;
    *(this + 9952) = 8;
  }

  return v2 != 0;
}

unsigned __int8 *BlueFin::GlPeFixStatus::UpdateSvAzEl(unsigned __int8 *this)
{
  if (*(this + 22) >= 1)
  {
    v12 = v1;
    v13 = v2;
    v3 = this;
    v4 = 0;
    v5 = *(this + 980);
    v6 = BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
    v7 = this + 54;
    do
    {
      v11 = *(&BlueFin::GlImplGnss::m_aucFromImplSvIdToEnabledSvId + 256 * v6 + *(v7 - 5));
      if (v11 - 1 <= 0xBB)
      {
        this = BlueFin::GlPeSatAidInfo::GetAidBySvId(v5 + 32, &v11);
        v6 = BlueFin::GlImplGnss::m_ucActiveSvIdMapVersion;
        if (this)
        {
          v8 = *(this + 37);
          *(v7 - 1) = v8;
          v9 = *(this + 36);
          if (v9 == 360)
          {
            v9 = 0;
          }

          *v7 = v9;
          if (v8 == 1 && v9 == 0)
          {
            *(v7 - 1) = 2;
          }
        }

        else
        {
          *(v7 - 2) = 1;
        }
      }

      ++v4;
      v7 += 40;
    }

    while (v4 < *(v3 + 22));
  }

  return this;
}

uint64_t BlueFin::GlPeRangeAidGen::update(uint64_t a1, unsigned int a2, void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, int a17, char a18, int a19, __int16 a20, char a21, char a22, double a23, double a24, void (**a25)(BlueFin::GlGlnsTime *__hidden this), uint64_t a26, void (**a27)(BlueFin::GlGpsTime *__hidden this), uint64_t a28, uint64_t a29, int a30, uint64_t a31, double a32, unsigned __int8 *__src, unsigned __int8 a34, unsigned int a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, char a59, int a60, char a61, uint64_t a62, uint64_t a63)
{
  STACK[0xFB8] = *MEMORY[0x29EDCA608];
  v77 = a1 + 18072;
  v78 = *(a1 + 19352);
  if (v78 > 1)
  {
    if (v78 == 2)
    {
      v83 = 1;
    }

    else
    {
      if (v78 != 3)
      {
        goto LABEL_12;
      }

      v83 = 0;
    }

    BlueFin::GlPeRangeAidGen::clear(a1, v83);
    goto LABEL_12;
  }

  if (!v78)
  {
    goto LABEL_13;
  }

  if (v78 == 1)
  {
    v79 = (*(a1 + 18248) + 8);
    v80 = 7;
    do
    {
      v81 = *(v79 - 1);
      v82 = *v79;
      v79 += 24;
      bzero(v81, ((4 * v82 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      --v80;
    }

    while (v80);
    BlueFin::GlPeSatAidInfo::Clear(a1 + 32, 1);
    bzero(*(a1 + 19032), ((4 * *(v77 + 968) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  }

LABEL_12:
  *(v77 + 1280) = 0;
LABEL_13:
  if ((*(v77 + 1013) & 1) == 0)
  {
    v84 = (*(a1 + 19272) + 8);
    v85 = 7;
    do
    {
      v86 = *(v84 - 1);
      v87 = *v84;
      v84 += 24;
      bzero(v86, ((4 * v87 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      --v85;
    }

    while (v85);
    BlueFin::GlSetBase::GlSetBase(&__src, &a35, 8u, (*(a1 + 18056) + 208));
    LOBYTE(a64) = a34;
    memcpy(&a64 + 8, __src, 4 * a34);
    WORD1(a64) = 0;
    BYTE1(a64) = 0;
    DWORD1(a64) = DWORD2(a64);
    BlueFin::GlSetIterator::operator++(&a64);
    while (BYTE1(a64) != a64)
    {
      v90 = BYTE2(a64);
      LOBYTE(STACK[0xD40]) = BYTE2(a64);
      if ((v90 - 52) >= 0xE)
      {
        v91 = *(a1 + 18048);
        LODWORD(STACK[0xEC0]) = 7;
        LOBYTE(STACK[0xEC4]) = 0;
        BlueFin::GlPeSvIdConverter::SvId2Gnss((v91 + 119744), &STACK[0xD40], &STACK[0xEC0], v88, v89);
        LODWORD(STACK[0xE00]) = STACK[0xEC0];
        v92 = LOBYTE(STACK[0xEC4]);
        LOBYTE(STACK[0xE04]) = v92;
        if ((v92 - 1) <= 0x3E)
        {
          BlueFin::GlPeSvIdConverter::Gnss2SvId((*(a1 + 18048) + 119744), &STACK[0xE00], &STACK[0xC80]);
          if (LOBYTE(STACK[0xC80]) == v90)
          {
            BlueFin::GlGnssSet::Add(a1 + 19104, &STACK[0xE00]);
          }
        }
      }

      BlueFin::GlSetIterator::operator++(&a64);
    }

    *&a64 = &a64 + 12;
    BYTE8(a64) = 8;
    *(&a64 + 12) = xmmword_298A3240C;
    *(&a65 + 12) = unk_298A3241C;
    v93 = 16;
    while (!*(&a64 + v93))
    {
      v93 += 4;
      if (v93 == 44)
      {
        goto LABEL_28;
      }
    }

    for (i = 1; i != 25; ++i)
    {
      LODWORD(a64) = 2;
      BYTE4(a64) = i;
      BlueFin::GlGnssSet::Add(a1 + 19104, &a64);
    }

LABEL_28:
    *(v77 + 1013) = 1;
  }

  v95 = *(a1 + 356);
  if (v95 == -7200001)
  {
    v96 = 0;
  }

  else
  {
    v96 = a2 - v95;
  }

  v97 = *a1;
  if (*(v77 + 1008) != *(*a1 + 2568))
  {
    bzero(*(a1 + 19032), ((4 * *(v77 + 968) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  }

  *(a1 + 356) = a2;
  BlueFin::GlPeTimeManager::GetTime(&a29, v97, a2, 1);
  if (a30 == -1 || a32 == 4294967300.0)
  {
    BlueFin::GlPeSatAidInfo::Clear(a1 + 32, 1);
    return 0;
  }

  a27 = &off_2A1F0B5F0;
  a28 = 0;
  Gps = BlueFin::GlPeGnssTime::GetGps(&a29, &a27);
  a25 = &off_2A1F0E430;
  a26 = 0;
  Glns = BlueFin::GlPeGnssTime::GetGlns(&a29, &a25);
  if (a32 == 4294967300.0)
  {
    v102 = (v77 + 952);
    v103 = *(v77 + 952);
    v104 = -1;
  }

  else
  {
    if (a32 >= 0.5)
    {
      *v99.i64 = a32 + 0.5;
      *v100.i64 = a32 + 0.5 - trunc((a32 + 0.5) * 2.32830644e-10) * 4294967300.0;
      v108.f64[0] = NAN;
      v108.f64[1] = NAN;
      v100.i64[0] = vbslq_s8(vnegq_f64(v108), v100, v99).u64[0];
      if (a32 + 0.5 > 4294967300.0)
      {
        v99.i64[0] = v100.i64[0];
      }

      v104 = *v99.i64;
    }

    else
    {
      v104 = 1;
    }

    v102 = (v77 + 952);
    v103 = *(v77 + 952);
    if (v104 != -1 && v103 == -1)
    {
      GlCustomLog(15, "GlPeRangeAidGen: recomputing aiding GPS due to 1st time update.  tUnc:%u(us)\n", v104);
      goto LABEL_54;
    }
  }

  v105 = *(*a1 + 2568);
  if ((v105 - *(v77 + 1224)) <= 0x16377 || (v105 - *(v77 + 1008)) <= 0x16377)
  {
    v107 = v103 - v104;
    if (v107 <= 100000 && (v104 >> 5 > 0xC34 || v107 < 15001))
    {
      goto LABEL_55;
    }

    GlCustomLog(15, "GlPeRangeAidGen: recomputing aiding GPS due to improvement in time.  NewUnc:%u(us)  PrevUnc:%u(us)\n", v104, v103);
  }

  else
  {
    GlCustomLog(15, "GlPeRangeAidGen: recomputing aiding due to aged aiding LastKfUpdate:%u(ms), LMS:%u(ms)", *(v77 + 1008), v105);
  }

LABEL_54:
  *(v77 + 1224) = *(*a1 + 2568);
  BlueFin::GlPeRangeAidGen::clear(a1, 1);
LABEL_55:
  *v102 = v104;
  v109 = (a27[4])(&a27);
  v110 = 0;
  LODWORD(v111) = a28;
  *(a1 + 328) = v111 * 2.32830644e-10 + (v109 % 0x93A80);
  v112 = Gps * 0.000001;
  *(a1 + 336) = v112;
  if (BlueFin::GlWeekTowTime::m_ucNextLs >= BlueFin::GlWeekTowTime::m_ucCurrentLs && BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent)
  {
    v110 = HIDWORD(a26) == BlueFin::GlWeekTowTime::m_ulCtFctOfNextLsEvent;
  }

  v113 = (a25[4])(&a25);
  if (v110)
  {
    v115 = 10799.0;
  }

  else
  {
    v115 = (v113 % 0x15180);
  }

  LODWORD(v114) = a26;
  *(a1 + 344) = v115 + v114 * 2.32830644e-10;
  v116 = Glns * 0.000001;
  *(a1 + 352) = v116;
  *(a1 + 9120) = a4;
  if (a2 <= 0xFF9222FE)
  {
    v117 = a2;
  }

  else
  {
    v117 = a2;
  }

  a23 = 0.0;
  a24 = 0.0;
  BlueFin::GlPeTimeManager::GetDtsS(*a1, v117, &a24, &a23, 0, 0);
  v257 = (a1 + 9190);
  v118 = *(v77 + 1008);
  if (v118)
  {
    v119 = *(*a1 + 2568);
    _CF = v119 >= v118;
    v121 = v119 - v118;
    if (v121 != 0 && _CF && v121 >= 0x927C1)
    {
      v122 = *(a1 + 336);
      if (v122 < 0.0015)
      {
        v122 = 0.0015;
      }

      *(a1 + 336) = v122;
      v123 = *(a1 + 352);
      if (v123 < 0.0015)
      {
        v123 = 0.0015;
      }

      *(a1 + 352) = v123;
    }
  }

  if (*(*(a1 + 18056) + 26216) == 1 && *(*(a1 + 18056) + 26212) == 1)
  {
    v124 = *(a1 + 336);
    if (v124 < 0.0015)
    {
      v124 = 0.0015;
    }

    *(a1 + 336) = v124;
    v125 = *(a1 + 352);
    if (v125 < 0.0015)
    {
      v125 = 0.0015;
    }

    *(a1 + 352) = v125;
  }

  v126 = a24;
  a22 = 0;
  v127 = *v257;
  v128 = *(a1 + 9191) + 1;
  v249 = v128;
  v250 = v127;
  if (v128 == v127)
  {
    vars8[0] = 0;
    v129 = 0x7FFFFFFF;
  }

  else
  {
    *&a64 = a1 + 9152;
    BYTE8(a64) = v128;
    if (v127 <= v128)
    {
      vars8[0] = 0;
      v130 = 0x7FFFFFFF;
    }

    else
    {
      vars8[0] = 0;
      v253 = v96 / 1000.0;
      v251 = vdupq_lane_s64(*&v253, 0);
      v130 = 0x7FFFFFFF;
      do
      {
        v131 = BlueFin::GlArrayIterator::Next(&a64);
        LOBYTE(__src) = v131;
        v132 = BlueFin::GlArray::Get((a1 + 9152), v131);
        v133 = *(v132 + 20) + v96;
        *(v132 + 20) = v133;
        v134 = v131 >> 5;
        if (v133 <= 91000 || ((*(*(a1 + 19032) + 4 * v134) >> (v131 & 0x1F)) & 1) != 0)
        {
          v135 = *(v132 + 74);
          if (v135 < 0)
          {
            BlueFin::GlPeSatAidInfo::Remove(a1 + 32, &__src);
            GlCustomLog(14, "Raidegen: removed due to setting: %d  elev:%d\n");
          }

          else
          {
            v136 = vars8[0];
            if (v130 > v135)
            {
              v136 = v131;
            }

            vars8[0] = v136;
            if (v130 >= v135)
            {
              v130 = *(v132 + 74);
            }

            if (*(v132 + 12) == 4)
            {
              v137 = 1 << (v131 & 0x1F);
              if ((v137 & *(*a3 + 4 * v134)) != 0)
              {
                *(a1 + 18272 + 4 * v131 - 4) = a2;
              }
            }

            else
            {
              v137 = 1 << (v131 & 0x1F);
            }

            if ((v137 & *(*(a1 + 19032) + 4 * v134)) == 0)
            {
              _Q1 = vcvtq_f64_f32(*(v132 + 40));
              _D4 = v96 / 1000.0;
              __asm { FMLA            D0, D4, V1.D[1] }

              v143 = vcvtq_f64_f32(*(v132 + 48));
              *(v132 + 32) = _D0 + v253 * vmuld_lane_f64(0.5, v143, 1) * v253;
              *(v132 + 40) = vcvt_f32_f64(vmlaq_f64(_Q1, v251, v143));
            }
          }
        }

        else
        {
          BlueFin::GlPeSatAidInfo::Remove(a1 + 32, &__src);
          GlCustomLog(14, "Raidegen: removed due to expired: %d  ageMs:%d\n");
        }
      }

      while (BYTE8(a64) < *(a64 + 38));
    }

    a22 = vars8[0];
    v129 = v130;
  }

  v144 = *(a1 + 18048);
  if (*(v144 + 100) != -1 && *(*a1 + 2576))
  {
    v145 = 0;
    v146 = v117 - v126;
    a19 = 70;
    STACK[0xF68] = &STACK[0xEC0];
    do
    {
      BlueFin::GlSetBase::GlSetBase((STACK[0xF68] + v145), (STACK[0xF68] + v145 + 12), 2u, (*(v144 + 120968) + v145));
      v145 += 24;
    }

    while (v145 != 168);
    for (j = 0; j != 168; j += 24)
    {
      BlueFin::GlSetBase::operator&=(STACK[0xF68] + j, *(a1 + 19272) + j);
    }

    BlueFin::GlGnssSet::operator^(&STACK[0xEC0], a1 + 18080, &STACK[0xE00]);
    BlueFin::GlGnssSet::operator&(&STACK[0xEC0], &STACK[0xE00], &STACK[0xD40]);
    v148 = 0;
    STACK[0xD28] = &STACK[0xC80];
    do
    {
      v149 = STACK[0xD28] + v148;
      *(v149 + 12) = 0;
      *v149 = v149 + 12;
      *(v149 + 8) = 2;
      v148 += 24;
    }

    while (v148 != 168);
    for (k = 0; k != 168; k += 24)
    {
      BlueFin::GlSetBase::operator&=(*(a1 + 18248) + k, STACK[0xF68] + k);
    }

    if ((*(v77 + 1284) & 1) == 0 && *(a1 + 9191) + 1 == *(a1 + 9190))
    {
      v151 = 0;
      v152 = STACK[0xDE8];
      v153 = 7;
      do
      {
        v151 += BlueFin::GlSetBase::Cnt(v152);
        v152 = (v152 + 24);
        --v153;
      }

      while (v153);
      if (v151)
      {
        *(v77 + 1284) = 1;
      }
    }

    if (!BlueFin::GlGnssSet::IsEmpty(&STACK[0xD40]))
    {
      v154 = 0;
      *&STACK[0xB80] = 0u;
      *&STACK[0xB90] = 0u;
      *&STACK[0xB60] = 0u;
      *&STACK[0xB70] = 0u;
      *&STACK[0xB40] = 0u;
      *&STACK[0xB50] = 0u;
      *&STACK[0xB20] = 0u;
      *&STACK[0xB30] = 0u;
      *&STACK[0xB00] = 0u;
      *&STACK[0xB10] = 0u;
      *&STACK[0xAE0] = 0u;
      *&STACK[0xAF0] = 0u;
      *&STACK[0xAC0] = 0u;
      *&STACK[0xAD0] = 0u;
      *&STACK[0xAA0] = 0u;
      *&STACK[0xAB0] = 0u;
      *&STACK[0xA80] = 0u;
      *&STACK[0xA90] = 0u;
      *&STACK[0xA60] = 0u;
      *&STACK[0xA70] = 0u;
      a74 = 0u;
      a75 = 0u;
      a72 = 0u;
      a73 = 0u;
      a70 = 0u;
      a71 = 0u;
      a68 = 0u;
      a69 = 0u;
      a66 = 0u;
      a67 = 0u;
      a64 = 0u;
      a65 = 0u;
      do
      {
        v155 = &a64 + v154;
        *v155 = 0;
        *(v155 + 1) = 0;
        v154 += 8;
      }

      while (v154 != 728);
      __src = (a1 + 9152);
      a34 = *(a1 + 9191) + 1;
      if (*v257 <= a34)
      {
        v157 = 0;
      }

      else
      {
        v156 = 0;
        v157 = 0;
        do
        {
          LOBYTE(STACK[0xF98]) = BlueFin::GlArrayIterator::Next(&__src);
          AidBySvId = BlueFin::GlPeSatAidInfo::GetAidBySvId(a1 + 32, &STACK[0xF98]);
          if (AidBySvId)
          {
            v159 = &a64 + 8 * v156;
            *v159 = *AidBySvId;
            *(v159 + 1) = *(AidBySvId + 37);
            v157 = (v157 + 1);
          }

          if (a34 >= __src[38])
          {
            break;
          }

          v156 = v157;
        }

        while (v157 < 0x5B);
      }

      BlueFin::GlGnssSetIterator::GlGnssSetIterator(&__src, &STACK[0xD40]);
      while (1)
      {
        v160 = a59;
        _ZF = a59 == 14 && a58 == 6;
        if (_ZF || v157 >= 0x5B)
        {
          break;
        }

        a60 = a58;
        a61 = a59;
        a17 = a58;
        a18 = a59;
        v162 = *(a1 + 18048);
        LODWORD(STACK[0xF98]) = a58;
        LOBYTE(STACK[0xF9C]) = v160;
        BlueFin::GlPeSvIdConverter::Gnss2SvId((v162 + 119744), &STACK[0xF98], &vars8[1] + 3);
        v165 = HIBYTE(vars8[1]);
        if (HIBYTE(vars8[1]) - 1 < 0xBC)
        {
          if (HIBYTE(vars8[1]) - 52 <= 0xD)
          {
            if (!BlueFin::GlPeRangeAidGen::SvIdIsConsistentWithGnss(*(a1 + 18048), &vars8[1] + 3, &a17, v163, v164))
            {
              goto LABEL_170;
            }

            v165 = HIBYTE(vars8[1]);
          }

          if (((*(*(a1 + 19032) + 4 * (v165 >> 5)) >> (v165 & 0x1F)) & 1) == 0)
          {
            v166 = BlueFin::GlPeSatAidInfo::GetAidBySvId(a1 + 32, &vars8[1] + 3);
            v167 = BlueFin::GlArray::Get((a1 + 9152), HIBYTE(vars8[1]));
            v173 = v167;
            if (v167 && *(v167 + 3) != 2)
            {
              v167 = BlueFin::GlPeSatAidInfo::Remove(a1 + 32, &vars8[1] + 3);
            }

            *v168.i64 = v146;
            v174 = BlueFin::GlPeTimeMgrUtil::DoubleToLms(v167, v168, v169, v170, v171, v172);
            *v178.i32 = BlueFin::GlPeAsstMgr::ComputeElevation(*(a1 + 18048), &vars8[1] + 3, &a19, v174, 0, v175, v176);
            *v179.i32 = *v178.i32 + (truncf(*v178.i32 * 2.3283e-10) * -4295000000.0);
            v180.i64[0] = 0x8000000080000000;
            v180.i64[1] = 0x8000000080000000;
            v181 = vbslq_s8(v180, v179, v178);
            if (*v178.i32 > 4295000000.0)
            {
              v178.i32[0] = v181.i32[0];
            }

            if (*v178.i32 < -4295000000.0)
            {
              *v181.i32 = -*v178.i32;
              *v178.i32 = -(*v178.i32 - (truncf(*v178.i32 * -2.3283e-10) * -4295000000.0));
              *v178.i32 = -*vbslq_s8(v180, v178, v181).i32;
            }

            if (*v178.i32 < 0.0)
            {
              v182 = --*v178.i32;
            }

            else
            {
              v182 = *v178.i32;
            }

            if (v182 < 0)
            {
              if (v182 != -90)
              {
                (*(**(a1 + 8) + 64))(*(a1 + 8), &vars8[1] + 3);
              }
            }

            else
            {
              if (*(a1 + 9191) == 255)
              {
                if (v157)
                {
                  BlueFin::GlStdLib::QsortImpl(&a64, v157, 8u, GlPeRngAidGen_SortSvIds, &STACK[0xF98], v177);
                  vars8[0] = a64;
                  a22 = a64;
                  v129 = DWORD1(a64);
                  if (SDWORD1(a64) < v182)
                  {
                    BlueFin::GlPeSatAidInfo::Remove(a1 + 32, &a22);
                    if (v157 < 2)
                    {
                      vars8[0] = 0;
                      v157 = 0;
                      a22 = 0;
                      v129 = 0x7FFFFFFF;
                    }

                    else
                    {
                      v183 = 0;
                      v157 = (v157 - 1);
                      v184 = (&a64 | 0xC);
                      do
                      {
                        v185 = &a64 + 8 * v183;
                        *v185 = *(v184 - 4);
                        v186 = *v184;
                        v184 += 2;
                        *(v185 + 1) = v186;
                        ++v183;
                      }

                      while (v157 > v183);
                      vars8[0] = a64;
                      a22 = a64;
                      v129 = DWORD1(a64);
                    }
                  }
                }
              }

              if (!v173)
              {
                BlueFin::GlPeRangeAidGen::AddRngAid(a1, &vars8[1] + 3, &a17, &a19, v146);
                if (v187)
                {
                  BlueFin::GlGnssSet::Add(&STACK[0xC80], &a17);
                  v188 = BlueFin::GlArray::Get((a1 + 9152), HIBYTE(vars8[1]));
                  if (v166)
                  {
                    v189 = *(v188 + 74);
                  }

                  else
                  {
                    v190 = &a64 + 8 * v157;
                    *v190 = *v188;
                    v189 = *(v188 + 74);
                    *(v190 + 1) = v189;
                    v157 = (v157 + 1);
                  }

                  if (v129 > v189)
                  {
                    vars8[0] = HIBYTE(vars8[1]);
                    a22 = HIBYTE(vars8[1]);
                    v129 = v189;
                  }
                }
              }
            }

            BlueFin::GlGnssSet::Add(a1 + 18080, &a17);
          }
        }

LABEL_170:
        BlueFin::GlGnssSetIterator::operator++(&__src);
      }
    }

    if (v249 == v250)
    {
      v191 = 0;
      *&STACK[0xB80] = 0u;
      *&STACK[0xB90] = 0u;
      *&STACK[0xB60] = 0u;
      *&STACK[0xB70] = 0u;
      *&STACK[0xB40] = 0u;
      *&STACK[0xB50] = 0u;
      *&STACK[0xB20] = 0u;
      *&STACK[0xB30] = 0u;
      *&STACK[0xB00] = 0u;
      *&STACK[0xB10] = 0u;
      *&STACK[0xAE0] = 0u;
      *&STACK[0xAF0] = 0u;
      *&STACK[0xAC0] = 0u;
      *&STACK[0xAD0] = 0u;
      *&STACK[0xAA0] = 0u;
      *&STACK[0xAB0] = 0u;
      *&STACK[0xA80] = 0u;
      *&STACK[0xA90] = 0u;
      *&STACK[0xA60] = 0u;
      *&STACK[0xA70] = 0u;
      a74 = 0u;
      a75 = 0u;
      a72 = 0u;
      a73 = 0u;
      a70 = 0u;
      a71 = 0u;
      a68 = 0u;
      a69 = 0u;
      a66 = 0u;
      a67 = 0u;
      a64 = 0u;
      a65 = 0u;
      do
      {
        v192 = &a64 + v191;
        *v192 = 0;
        *(v192 + 1) = 0;
        v191 += 8;
      }

      while (v191 != 728);
      __src = (a1 + 9152);
      a34 = *(a1 + 9191) + 1;
      if (*v257 <= a34)
      {
        v194 = 0;
      }

      else
      {
        v193 = 0;
        v194 = 0;
        do
        {
          LOBYTE(STACK[0xF98]) = BlueFin::GlArrayIterator::Next(&__src);
          v195 = BlueFin::GlPeSatAidInfo::GetAidBySvId(a1 + 32, &STACK[0xF98]);
          if (v195)
          {
            v196 = &a64 + 8 * v193;
            *v196 = *v195;
            *(v196 + 1) = *(v195 + 37);
            v194 = (v194 + 1);
          }

          if (a34 >= __src[38])
          {
            break;
          }

          v193 = v194;
        }

        while (v194 < 0x5B);
      }

      BlueFin::GlGnssSetIterator::GlGnssSetIterator(&__src, (a1 + 19104));
      while (1)
      {
        v197 = a59 == 14 && a58 == 6;
        if (v197 || v194 >= 0x5B)
        {
          break;
        }

        a60 = a58;
        a61 = a59;
        a17 = a58;
        a18 = a59;
        BlueFin::GlPeSvIdConverter::Gnss2SvId((*(a1 + 18048) + 119744), &a17, &vars8[1] + 3);
        if (HIBYTE(vars8[1]) - 1 < 0xBC && (HIBYTE(vars8[1]) - 52 > 0xD || BlueFin::GlPeRangeAidGen::SvIdIsConsistentWithGnss(*(a1 + 18048), &vars8[1] + 3, &a17, v198, v199)) && !BlueFin::GlPeSatAidInfo::GetAidBySvId(a1 + 32, &vars8[1] + 3))
        {
          *v200.i64 = v146;
          v205 = BlueFin::GlPeTimeMgrUtil::DoubleToLms(0, v200, v201, v202, v203, v204);
          *v209.i32 = BlueFin::GlPeAsstMgr::ComputeElevation(*(a1 + 18048), &vars8[1] + 3, &a19, v205, 0, v206, v207);
          *v210.i32 = *v209.i32 + (truncf(*v209.i32 * 2.3283e-10) * -4295000000.0);
          v211.i64[0] = 0x8000000080000000;
          v211.i64[1] = 0x8000000080000000;
          v212 = vbslq_s8(v211, v210, v209);
          if (*v209.i32 > 4295000000.0)
          {
            v209.i32[0] = v212.i32[0];
          }

          if (*v209.i32 < -4295000000.0)
          {
            *v212.i32 = -*v209.i32;
            *v209.i32 = -(*v209.i32 - (truncf(*v209.i32 * -2.3283e-10) * -4295000000.0));
            *v209.i32 = -*vbslq_s8(v211, v209, v212).i32;
          }

          if (*v209.i32 < 0.0)
          {
            v213 = --*v209.i32;
          }

          else
          {
            v213 = *v209.i32;
          }

          if (v213 < 0)
          {
            if (v213 != -90)
            {
              (*(**(a1 + 8) + 64))(*(a1 + 8), &vars8[1] + 3);
            }
          }

          else
          {
            if (*(a1 + 9191) == 255)
            {
              if (v194)
              {
                BlueFin::GlStdLib::QsortImpl(&a64, v194, 8u, GlPeRngAidGen_SortSvIds, &STACK[0xF98], v208);
                vars8[0] = a64;
                a22 = a64;
                v129 = DWORD1(a64);
                if (SDWORD1(a64) < v213)
                {
                  BlueFin::GlPeSatAidInfo::Remove(a1 + 32, &a22);
                  if (v194 < 2)
                  {
                    vars8[0] = 0;
                    v194 = 0;
                    a22 = 0;
                    v129 = 0x7FFFFFFF;
                  }

                  else
                  {
                    v214 = 0;
                    v194 = (v194 - 1);
                    v215 = (&a64 | 0xC);
                    do
                    {
                      v216 = &a64 + 8 * v214;
                      *v216 = *(v215 - 4);
                      v217 = *v215;
                      v215 += 2;
                      *(v216 + 1) = v217;
                      ++v214;
                    }

                    while (v194 > v214);
                    vars8[0] = a64;
                    a22 = a64;
                    v129 = DWORD1(a64);
                  }
                }
              }
            }

            BlueFin::GlPeRangeAidGen::AddRngAid(a1, &vars8[1] + 3, &a17, &a19, v146);
            if (v218)
            {
              BlueFin::GlGnssSet::Add(&STACK[0xC80], &a17);
              v219 = BlueFin::GlArray::Get((a1 + 9152), HIBYTE(vars8[1]));
              v220 = &a64 + 8 * v194;
              *v220 = *v219;
              v221 = *(v219 + 74);
              *(v220 + 1) = v221;
              v194 = (v194 + 1);
              if (v129 > v221)
              {
                vars8[0] = HIBYTE(vars8[1]);
                a22 = HIBYTE(vars8[1]);
                v129 = v221;
              }
            }
          }
        }

        BlueFin::GlGnssSetIterator::operator++(&__src);
      }
    }

    v222 = *v77;
    if (*v77 > 6 || (v223 = *(v77 + 4), (v223 - 1) >= 0x3F))
    {
      BlueFin::GlGnss::operator++(v77);
      v222 = *v77;
      v223 = *(v77 + 4);
    }

    v252 = v129;
    v254 = *(*(a1 + 18064) + 32) == 1 && BlueFin::GlSetBase::Cnt((a1 + 19032)) > 0xCu;
    v256 = 0;
    v224 = 0;
    while (1)
    {
      BlueFin::GlPeSvIdConverter::Gnss2SvId((*(a1 + 18048) + 119744), v77, &a64);
      if (a64 - 1 > 0xBB || !BlueFin::GlGnssSet::Has(a1 + 19104, v77) || !BlueFin::GlGnssSet::Missing(&STACK[0xC80], v77) || !BlueFin::GlPeRangeAidGen::SvIdIsConsistentWithGnss(*(a1 + 18048), &a64, v77, v225, v226))
      {
        goto LABEL_241;
      }

      v227 = BlueFin::GlArray::Get((a1 + 9152), a64);
      v233 = v227;
      if (((*(*(a1 + 19032) + ((a64 >> 3) & 0x1C)) >> (a64 & 0x1F)) & 1) != 0 && v227)
      {
        *(v227 + 20) = 0;
        v234 = *(v227 + 74);
        if ((v234 & 0x80000000) == 0)
        {
          goto LABEL_237;
        }
      }

      else
      {
        *v228.i64 = v146;
        v235 = BlueFin::GlPeTimeMgrUtil::DoubleToLms(v227, v228, v229, v230, v231, v232);
        v234 = BlueFin::GlPeAsstMgr::ComputeElevation(*(a1 + 18048), &a64, &a19, v235, 0, v236, v237);
        if ((v234 & 0x80000000) == 0)
        {
          if (!v233 || *(v233 + 12) != 2)
          {
            BlueFin::GlPeSatAidInfo::Remove(a1 + 32, &a64);
            if ((LOBYTE(vars8[0]) - 1) <= 0xBBu && *(a1 + 9191) == 255 && v252 < v234)
            {
              BlueFin::GlPeSatAidInfo::Remove(a1 + 32, &a22);
              vars8[0] = a64;
              a22 = a64;
              v252 = v234;
            }

            BlueFin::GlPeRangeAidGen::AddRngAid(a1, &a64, v77, &a19, v146);
            ++v256;
          }

LABEL_237:
          v238 = (a2 > 0x2BF20) & ~(*(**(a1 + 18056) + 1112))(*(a1 + 18056));
          if (v256 <= 1)
          {
            LOBYTE(v238) = 0;
          }

          v224 |= v254 | v238;
          goto LABEL_242;
        }
      }

      if (v234 != -90)
      {
        (*(**(a1 + 8) + 64))(*(a1 + 8), &a64);
        v224 = 0;
      }

      else
      {
LABEL_241:
        v224 = 0;
      }

LABEL_242:
      if (*v77 == 6 && *(v77 + 4) == 14)
      {
        *v77 = 7;
        *(v77 + 4) = 0;
      }

      BlueFin::GlGnss::operator++(v77);
      if (v222 == *v77)
      {
        if ((v223 == *(v77 + 4)) | v224 & 1)
        {
          break;
        }
      }

      else if (v224)
      {
        break;
      }
    }
  }

  *&a64 = a1 + 9152;
  BYTE8(a64) = *(a1 + 9191) + 1;
  if (*v257 > BYTE8(a64))
  {
    do
    {
      v239 = BlueFin::GlArrayIterator::Next(&a64);
      v240 = BlueFin::GlArray::Get((a1 + 9152), v239);
      v241 = *v240;
      if (((*(*(a1 + 19032) + ((v241 >> 3) & 0x1C)) >> (v241 & 0x1F)) & 1) == 0)
      {
        v242 = *(a1 + 18056);
        if (*(v242 + 26057) != 1 || ((v243 = *(v242 + 48), (v243 - 4) >= 5) ? (v244 = v243 == 2) : (v244 = 1), !v244))
        {
          if ((*(v242 + 26294) != 1 || (v241 - 76) > 0x3E || *(v242 + 88) <= 36) && *(v240 + 10) < 0.000004)
          {
            *(v240 + 10) = 914765757;
          }
        }
      }
    }

    while (BYTE8(a64) < *(a64 + 38));
  }

  if (*(v77 + 1012))
  {
    *&a64 = a1 + 9152;
    BYTE8(a64) = *(a1 + 9191) + 1;
    if (*v257 > BYTE8(a64))
    {
      do
      {
        v245 = BlueFin::GlArrayIterator::Next(&a64);
        v246 = BlueFin::GlArray::Get((a1 + 9152), v245);
        v247 = flt_298A40DE0[*v246 - 52 < 0xE];
        v248 = v246[10];
        if (v248 < v247)
        {
          v246[10] = v248 + v247;
        }
      }

      while (BYTE8(a64) < *(a64 + 38));
    }
  }

  return 1;
}

void FireConfig::LearnedL5GroupDelay::injectCurrentEstimate(FireConfig::LearnedL5GroupDelay *this, double a2, double a3, int a4)
{
  v7 = -662.517;
  if (a4)
  {
    v7 = -648.985;
  }

  v8 = a2 - v7;
  if (!FireResourceMgr::fInstance)
  {
    operator new();
  }

  v9 = (*(**(FireResourceMgr::fInstance + 40) + 72))(*(FireResourceMgr::fInstance + 40));
  FireDeviceLog::DeviceLogBase(4, "#nv_group_delay,incoming estimate,%.2f,%.2f,static,%.2f, L5 NF enabled,%d", v8, a3, v9, a4);
  if (a3 < 0.25 && a3 >= 0.0)
  {
    if (!FireResourceMgr::fInstance)
    {
      operator new();
    }

    v10 = (*(**(FireResourceMgr::fInstance + 8) + 40))(*(FireResourceMgr::fInstance + 8));
    FireDeviceLog::DeviceLogBase(6, "#ca,L5GD,update,%d,valid,%d,%d", *(this + 24), *(this + 2) > 0.0, a3 > 0.0);
    if ((*(this + 24) & 1) == 0 && a3 > 0.0 && *(this + 2) > 0.0)
    {
      v13 = *this;
      v12 = *(this + 1);
      v22 = v8;
      v23 = v12;
      LODWORD(v24) = (v10 - v13 + 0.5) & ~((v10 - v13 + 0.5) >> 31);
      if (!FireResourceMgr::fInstance)
      {
        operator new();
      }

      (*(**(FireResourceMgr::fInstance + 40) + 48))(*(FireResourceMgr::fInstance + 40), &v22);
      FireDeviceLog::DeviceLogBase(5, "#ca,L5GD,val,%.2f,recall,%.2f,m,age,%d,sec", v22, v23, LODWORD(v24));
      *(this + 24) = 1;
    }

    if ((FireConfig::LearnedL5GroupDelay::passesCrossCheckToCalibration(v11, v8, a3, v9) & 1) == 0)
    {
      FireDeviceLog::DeviceLogBase(4, "#nv_group_delay,estimate fails cross-check to calibration,estimate,%.2f,%.2f,calibration,%.2f", v8, a3, v9);
      return;
    }

    v14 = *(this + 2);
    v15 = -1.0;
    if (v14 <= 0.0)
    {
      goto LABEL_21;
    }

    v16 = v10 - *this;
    if (v16 < 0.0)
    {
      v16 = 0.0;
    }

    v15 = v16 / 3600.0;
    v17 = v14 + v16 / 3600.0 * 0.1;
    FireDeviceLog::DeviceLogBase(4, "#nv_group_delay,aged unc,%.2f,hrs,%.2f", v17, v16 / 3600.0);
    if (v17 > a3)
    {
      v14 = *(this + 2);
LABEL_21:
      FireDeviceLog::DeviceLogBase(4, "#nv_group_delay,updating store,old,%.2f,%.2f,%.2f,new,%.2f,%.2f,%.2f,oldAgeHours,%.3f", *(this + 1), v14, *this, v8, a3, v10, v15);
      *this = v10;
      *(this + 1) = v8;
      *(this + 2) = a3;
      if (a3 <= 0.0)
      {
        FireDeviceLog::DeviceLogBase(1, "#nv_group_delay,tried to store invalid data");
        DeviceFaultNotify("FireConfig.cpp", 456, "storeToNv", "#nv_group_delay,tried to store invalid data");
      }

      else
      {
        v27 = 0;
        v26 = 0u;
        v25 = 0u;
        v22 = v10;
        v23 = v8;
        v24 = a3;
        if (!FireResourceMgr::fInstance)
        {
          operator new();
        }

        v18 = *(FireResourceMgr::fInstance + 24);
        __p = 0;
        v20 = 0;
        v21 = 0;
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, &v22, &v28, 64);
        (*(*v18 + 32))(v18, 3, &__p);
        if (__p)
        {
          v20 = __p;
          operator delete(__p);
        }
      }
    }
  }
}

void sub_29884B0E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<gnss::ReceiverBandCorrections>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__tree<std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>,std::__map_value_compare<std::pair<gnss::SatelliteSystem,unsigned short>,std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>,std::less<std::pair<gnss::SatelliteSystem,unsigned short>>,true>,std::allocator<std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>,std::__map_value_compare<std::pair<gnss::SatelliteSystem,unsigned short>,std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>,std::less<std::pair<gnss::SatelliteSystem,unsigned short>>,true>,std::allocator<std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>,std::__map_value_compare<std::pair<gnss::SatelliteSystem,unsigned short>,std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>,std::less<std::pair<gnss::SatelliteSystem,unsigned short>>,true>,std::allocator<std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t BlueFin::GlBitBuffer::Limit(uint64_t this, unsigned int a2)
{
  if (*(this + 20) < a2)
  {
    DeviceFaultNotify("glutl_bitbuffer.cpp", 116, "Limit", "ulNewLimit <= m_ulCapacity");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_bitbuffer.cpp", 116, "ulNewLimit <= m_ulCapacity");
  }

  *(this + 24) = a2;
  v2 = *(this + 28);
  if (v2 > a2)
  {
    *(this + 28) = a2;
    v2 = a2;
  }

  v3 = *(this + 40) == 1 && *(this + 32) <= v2;
  *(this + 40) = v3;
  return this;
}

uint64_t BlueFin::GlDbgProxyGlReqOnGnssMeasData(uint64_t a1, unsigned int *a2)
{
  v3 = (*(*a1 + 112))(a1);
  v4 = *(v3 + 8);

  return BlueFin::GlDbgProxy::HalGlReqOnGnssMeasData(v4, v3, a2);
}

uint64_t BlueFin::GlRequestImplGnssMeasData::OnMeasData(uint64_t result, uint64_t a2)
{
  v3 = result;
  v5[0] = &unk_2A1F14500;
  v5[1] = a2;
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    result = off_2A1F14518(v5, 0, 0);
  }

  v4 = *(v3 + 80);
  if (v4)
  {
    return v4(v3, a2);
  }

  return result;
}

uint64_t BlueFin::GlDbgProxy::HalGlReqOnGnssMeasData(uint64_t a1, uint64_t (**this)(BlueFin::GlDbgRequest *, uint64_t), unsigned int *a3)
{
  result = BlueFin::GlDbgRequest::Id(this, 0);
  v9 = result;
  if (!*(a1 + 808))
  {
    *(a1 + 580) = 1;
    if (*(a1 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteStart(a1, 561);
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

    v7 = this[5];
    if (v7)
    {
      result = v7(this, a3);
    }

    *(a1 + 580) = 1;
    if (*(a1 + 576) == 1)
    {
      BlueFin::GlDbgCodec::WriteFinal(a1, 561);
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

void std::__function::__func<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_2,std::allocator<gnss::FireGnssDevice::FireGnssDevice(std::unique_ptr<GnssHal::Interfaces>,std::function<void ()(gnss::Result)>)::$_2>,void ()(BlueFin::GlGnssData const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (*(v2 + 184) && (*(v2 + 153) & 1) != 0)
  {
    FireDeviceLog::DeviceLogBase(6, "handleRawMeasResponse");
    operator new();
  }

  FireDeviceLog::DeviceLogBase(2, "handleRawMeasResponse,nullptr");
}

void sub_29884D4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t *a46, uint64_t a47)
{
  if (a45)
  {
    MEMORY[0x29C292F70](a45, 0x1000C400A747E1ELL, a3, a4, a5, a6, a7, a8);
  }

  std::unique_ptr<gnss::TimeConversionInfo>::reset[abi:ne200100](&a46, 0);
  std::unique_ptr<gnss::MeasurementReport>::reset[abi:ne200100]((v47 - 176), 0);
  v49 = a47;
  a47 = 0;
  if (v49)
  {
    MEMORY[0x29C292F70](v49, 0x1000C4043D32D5CLL);
  }

  std::__tree<std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>,std::__map_value_compare<std::pair<gnss::SatelliteSystem,unsigned short>,std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>,std::less<std::pair<gnss::SatelliteSystem,unsigned short>>,true>,std::allocator<std::__value_type<std::pair<gnss::SatelliteSystem,unsigned short>,gnss::FireGnssDevice::PhaseTrackingState>>>::destroy(*(v47 - 248));
  _Unwind_Resume(a1);
}

void FireCallback::GlReqOnGnssMeasData(uint64_t a1, uint64_t a2)
{
  if (FireCallback::pInstance)
  {
    v3 = *(FireCallback::pInstance + 248);
    if (v3)
    {
      v5 = a2;
      (*(*v3 + 48))(v3, &v5);
      return;
    }

    v4 = "fcb,fReqOnGnssMeasDataCb,nullptr";
  }

  else
  {
    v4 = "fcb,GlReqOnGnssMeasData,nullptr";
  }

  FireDeviceLog::DeviceLogBase(2, v4);
}

uint64_t BlueFin::GlPeReqBag::GetAvgOfTop4Cn0(uint64_t a1)
{
  v17[1] = *MEMORY[0x29EDCA608];
  v17[0] = -1;
  v1 = *(a1 + 44);
  v2 = v1 - 1;
  if (v1 >= 1)
  {
    v3 = 0;
    if (v2 >= 0x63)
    {
      v2 = 99;
    }

    else
    {
      v2 = v2;
    }

    v4 = v2 + 1;
    while (1)
    {
      v5 = a1 + 48 + 40 * v3;
      if (*(v5 + 2) <= 7u && *(v5 + 3) && *v5)
      {
        break;
      }

LABEL_22:
      if (++v3 == v4)
      {
        goto LABEL_23;
      }
    }

    v6 = *(v5 + 20);
    v7 = v6;
    if (v6 <= 0.0)
    {
      if (v6 >= 0.0)
      {
        LOWORD(v9) = 0;
        goto LABEL_15;
      }

      v8 = v7 + -0.5;
    }

    else
    {
      v8 = v7 + 0.5;
    }

    v9 = v8;
LABEL_15:
    for (i = 0; i != 4; ++i)
    {
      v11 = v17[0].i16[i];
      if (v9 <= v11)
      {
        v12 = v17[0].i16[i];
      }

      else
      {
        v12 = v9;
      }

      v17[0].i16[i] = v12;
      if (v9 >= v11)
      {
        LOWORD(v9) = v11;
      }
    }

    goto LABEL_22;
  }

LABEL_23:
  v13 = vcgtz_s16(v17[0]);
  if (vmaxv_u16(v13))
  {
    v14 = vcnt_s8((vaddv_s16(vand_s8(v13, 0x8000400020001)) & 0xF));
    v14.i16[0] = vaddlv_u8(v14);
    v15 = vaddv_s16(vmax_s16(v17[0], 0)) / v14.i32[0];
  }

  else
  {
    LOWORD(v15) = -1;
  }

  return v15;
}

uint64_t BlueFin::GlPeReqBag::InitializeReqIdReportingSet(uint64_t a1, uint64_t a2, uint64_t a3)
{
  bzero(*a3, ((4 * *(a3 + 8) + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
  for (i = 0; i != 576; i += 8)
  {
    result = *(a1 + i);
    if (result)
    {
      result = (*(*result + 344))(result, a2);
      if (result)
      {
        v8 = *(*(a1 + i) + 48);
        *(*a3 + 4 * (v8 >> 5)) |= 1 << v8;
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPeReqBag::Cleanup(uint64_t this)
{
  if (*(this + 3233) == 1)
  {
    v1 = this;
    v2 = 0;
    v3 = (this + 3233);
    v32 = *(this + 1312);
    v33 = (this + 3233);
    *(this + 3233) = 0;
    do
    {
      v4 = *(v1 + 8 * v2);
      if (v4)
      {
        (*(*v4 + 288))(v4);
        v35 = &unk_2A1F13AA0;
        v36 = v3;
        LOBYTE(v37) = *(v1 + 3233);
        *(v1 + 3233) = 0;
        v5 = *(v1 + 8 * v2);
        if (v5)
        {
          if ((*(*v5 + 296))(v5))
          {
            v6 = *(*(*(v1 + 8 * v2) + 8) + 16);
            BlueFin::GlSetBase::Remove(v1 + 624, v2);
            GlCustomLog(13, "RequestDone ");
            v7 = *(*(v1 + 8 * v2) + 8);
            (*(*v7 + 136))(v7, 13);
            v8 = *(v1 + 8 * v2);
            v9 = v8[1];
            v10 = v9[4];
            if (v10 == 1)
            {
              v11 = (*(*v9 + 400))(v8[1]);
              v8 = *(v1 + 8 * v2);
              if (v11)
              {
                (*(*v8[1] + 408))(v8[1]);
                v12 = 0;
                v8 = *(v1 + 8 * v2);
              }

              else
              {
                v12 = 0;
              }

              v13 = 1;
            }

            else
            {
              v13 = v10 == 2;
              v12 = v10 == 0;
            }

            if ((*(*v8 + 328))(v8))
            {
              *(v1 + 3264) = 0;
            }

            (***(v1 + 8 * v2))(*(v1 + 8 * v2));
            if (v6 == 12)
            {
              v14 = BlueFin::GlUtils::m_pInstance;
              ++*(BlueFin::GlUtils::m_pInstance + 1088);
              v15 = (*(**v14 + 48))();
              v14[273] = v15;
              *(v1 + 20688) = v15;
            }

            v16 = *(v1 + 8 * v2);
            v17 = (*(**(v1 + 616) + 96))(*(v1 + 616));
            if (v17)
            {
              v17(v16);
            }

            v18 = 0;
            *(v1 + 8 * v2) = 0;
            v19 = *(v1 + 1312);
            *(v1 + 1312) = v19 & ~(1 << v6);
            while (1)
            {
              v20 = *(v1 + v18);
              if (v20)
              {
                if (*(*(v20 + 8) + 16) == v6)
                {
                  break;
                }
              }

              v18 += 8;
              if (v18 == 576)
              {
                goto LABEL_25;
              }
            }

            *(v1 + 1312) = v19 | (1 << v6);
          }

          else
          {
            v13 = 0;
            v12 = 0;
          }

LABEL_25:
          BlueFin::GlPeReqBag::DetermineEarliestPositionRequestTimeout(v1);
          if (v13)
          {
            v34 = 45;
            v21 = *(v1 + 584);
            v22 = *(v21 + 32);
            v23 = *(v21 + 8);
            *(v21 + 32) = v23;
            do
            {
              v38 = 0;
              if (BlueFin::patch_dispatch(v23, v21, &v34, &v38))
              {
                v23 = v38;
              }

              else
              {
                v23 = (*(v21 + 32))(v21, &v34);
              }

              *(v21 + 32) = v23;
            }

            while (v23);
            *(v21 + 32) = v22;
          }

          if (v12)
          {
            v34 = 65;
            v24 = *(v1 + 584);
            v25 = *(v24 + 32);
            v26 = *(v24 + 8);
            *(v24 + 32) = v26;
            do
            {
              v38 = 0;
              if (BlueFin::patch_dispatch(v26, v24, &v34, &v38))
              {
                v26 = v38;
              }

              else
              {
                v26 = (*(v24 + 32))(v24, &v34);
              }

              *(v24 + 32) = v26;
            }

            while (v26);
            *(v24 + 32) = v25;
          }
        }

        *v36 = v37;
      }

      ++v2;
    }

    while (v2 != 72);
    this = (*(**(v1 + 576) + 1096))(*(v1 + 576));
    if (this)
    {
      this = (*(**(v1 + 576) + 1112))(*(v1 + 576));
      v27 = *(v1 + 1312);
      if ((this & 1) == 0)
      {
        v28 = (v27 & 0x2000) != 0 || (v27 & 0x1000) != 0;
LABEL_48:
        if ((v32 & 0xC) == 0 || (v27 & 4) != 0 || v28 | (v27 >> 3) & 1)
        {
          if (v32 == v27)
          {
            goto LABEL_59;
          }

          v35 = &v36 + 1;
          LOBYTE(v36) = 3;
          HIDWORD(v36) = v27;
          v37 = 0;
          BlueFin::GlSetBase::Remove(&v35, 12);
          this = BlueFin::GlSetBase::Remove(&v35, 13);
          if ((v32 & 1) == 0 || *v35)
          {
            goto LABEL_59;
          }

          if (v36 >= 2uLL)
          {
            v29 = v36 - 1;
            v30 = v35 + 1;
            do
            {
              if (*v30++)
              {
                goto LABEL_59;
              }
            }

            while (--v29);
          }
        }

        this = BlueFin::GlReqSm::StartWarmStandBy(*(v1 + 584));
LABEL_59:
        *v33 = 1;
        return this;
      }
    }

    else
    {
      v27 = *(v1 + 1312);
    }

    v28 = 1;
    goto LABEL_48;
  }

  return this;
}

uint64_t BlueFin::GlPeRqHdlrPosPeriodic::Cleanup(BlueFin::GlPeRqHdlrPosPeriodic *this)
{
  if ((*(this + 20) & 1) != 0 || *(this + 24) == 1)
  {
    *(this + 19) = 1;
    (*(*this + 272))(this, *(this + 40), *(this + 41));
    v3 = &unk_2A1F13C98;
    v4 = *(this + 24);
    if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
    {
      off_2A1F13CB0(&v3, 0, 0);
    }
  }

  return BlueFin::GlPeRqHdlr::Cleanup(this);
}

uint64_t BlueFin::GlPeRqHdlr::Cleanup(uint64_t this)
{
  v1 = this;
  v12 = *MEMORY[0x29EDCA608];
  if ((*(this + 20) & 1) != 0 || *(this + 19) == 1)
  {
    *(this + 19) = 1;
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    *__s = 0u;
    v6 = 0u;
    BlueFin::GlPeNmeaGen::FormatNmeaEND(**(this + 56), *(this + 8), *(BlueFin::GlUtils::m_pInstance + 1092) - *(*(this + 8) + 28), *(this + 32), *(this + 48), __s, 100);
    GlCustomLog(20, "GL_NMEA[%d][%s", *(v1 + 48), __s);
    v2 = strlen(__s);
    BlueFin::GlPeRqHdlr::OnNmea(v1, __s, v2, v3);
    this = *(v1 + 8);
    v4 = *(this + 56);
    if (v4)
    {
      this = v4();
    }

    BlueFin::GlPeFirstFix::m_bReqTimeOutReached = 0;
  }

  return this;
}

uint64_t BlueFin::GlPeReqBag::DetermineEarliestPositionRequestTimeout(uint64_t this)
{
  v1 = this;
  v2 = 0;
  v30 = (this + 3233);
  v31 = *(this + 3233);
  v3 = -1;
  *(this + 3233) = 0;
  *(this + 1316) = -1;
  v4 = -1;
  v5 = -1;
  do
  {
    v6 = *(v1 + 8 * v2);
    if (!v6)
    {
      goto LABEL_34;
    }

    this = *(v6 + 8);
    v7 = *(this + 16);
    if (v7 > 0xD)
    {
      goto LABEL_24;
    }

    v8 = 1 << v7;
    if ((v8 & 0x10F) != 0)
    {
      if (*(v1 + 3236) == 1 && *(v1 + 3252) == -1)
      {
        v23 = 1000 * *(this + 22);
        v24 = *(this + 28);
        v12 = v23 >= v24;
        v25 = v23 - v24;
        if (v12)
        {
          v18 = v25;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v9 = *(v6 + 36);
        if (v9 == -1)
        {
          v13 = -1;
        }

        else
        {
          v10 = *(this + 28);
          v11 = *(v6 + 32) + v9;
          v12 = v10 >= v11;
          v13 = v10 - v11;
          if (v13 != 0 && v12)
          {
            v13 = -1;
          }
        }

        v17 = v13 + 1000 * *(this + 22);
        v18 = v17 & ~(v17 >> 31);
      }

      if (v18 < v3)
      {
        *(v1 + 1316) = v2;
        this = (*(*this + 136))(this, 143);
        v3 = v18;
      }

      goto LABEL_34;
    }

    if ((v8 & 0x3000) != 0)
    {
      if (*(v1 + 3236) == 1 && *(v1 + 3252) == -1)
      {
        v27 = 1000 * *(this + 22);
        v28 = *(this + 28);
        v12 = v27 >= v28;
        v29 = v27 - v28;
        if (v12)
        {
          v15 = v29;
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v14 = *(this + 28) - *(BlueFin::GlUtils::m_pInstance + 1092) + 1000 * *(this + 22);
        v15 = v14 & ~(v14 >> 31);
      }

      if (v15 < v3 && v15 != 0)
      {
        *(v1 + 1316) = v2;
        this = (*(*this + 136))(this, 14);
        v3 = v15;
      }
    }

    else
    {
LABEL_24:
      v19 = *(v6 + 36);
      if (v19 == -1)
      {
        v22 = -1;
      }

      else
      {
        v20 = *(this + 28);
        v21 = *(v6 + 32) + v19;
        v12 = v20 >= v21;
        v22 = v20 - v21;
        if (v22 != 0 && v12)
        {
          v22 = -1;
        }
      }

      v26 = (v22 + 1000 * *(this + 22)) & ~((v22 + 1000 * *(this + 22)) >> 31);
      if (v26 < v5)
      {
        v5 = v26;
        v4 = v2;
      }
    }

LABEL_34:
    ++v2;
  }

  while (v2 != 72);
  if ((*(v1 + 1316) & 0x80000000) != 0 && v4 != -1)
  {
    *(v1 + 1316) = v4;
  }

  *v30 = v31;
  return this;
}

uint64_t BlueFin::GlPeRqHdlrGnssMeasData::Cleanup(uint64_t this)
{
  if ((*(this + 20) & 1) != 0 || *(this + 24) == 1)
  {
    *(this + 19) = 1;
  }

  return BlueFin::GlPeRqHdlr::Cleanup(this);
}

void sub_29884FF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  BlueFin::GlStackAlloc<BlueFin::GlSatAidInfo>::~GlStackAlloc(va);
  _Unwind_Resume(a1);
}

uint64_t BlueFin::GlSatAidInfo::operator=(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 8800) = *(a2 + 8800);
  v5 = 91;
  do
  {
    BlueFin::GlSatAid::operator=(*(a1 + 8808) + v4, *(a2 + 8808) + v4);
    v4 += 96;
    --v5;
  }

  while (v5);
  return a1;
}

BOOL BlueFin::GlPeEphemerisMgr::isEphemerisGoodForNav(unsigned int *a1, _BYTE *a2)
{
  v4 = (*(*a1 + 368))(a1);
  result = 0;
  if ((v4[8] & 0xF) != 0)
  {
    v5 = v4;
    if ((*(*v4 + 40))(v4))
    {
      if (((*(*(a1 + 48) + ((*a2 >> 3) & 0x1C)) >> (*a2 & 0x1F)) & 1) == 0 || (v6 = (*(*a1 + 368))(a1, a2), (*(*v6 + 184))(v6)))
      {
        if ((*(*v5 + 144))(v5) != 2)
        {
          return 1;
        }

        BlueFin::GlPeLtoMgr::GetBadSvSet(*(a1 + 4), 0, v8, a1[3]);
        if (((*(*v8 + ((*a2 >> 3) & 0x1C)) >> (*a2 & 0x1F)) & 1) == 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t BlueFin::GlPeLtoEphemeris::GetSrc(BlueFin::GlPeLtoEphemeris *this)
{
  if ((*(this + 8) & 0xF) == 2)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *BlueFin::GlPeElAzCache::Get(unsigned __int8 *result, unsigned __int8 *a2)
{
  v2 = *a2;
  if (((*(*(result + 152) + ((v2 >> 3) & 0x1C)) >> (v2 & 0x1F)) & 1) == 0)
  {
    return 0;
  }

  v3 = result[1264];
  if (!result[1264])
  {
    return 0;
  }

  while (*result != v2)
  {
    result += 12;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeTimeMgrUtil::DoubleToLms(BlueFin::GlPeTimeMgrUtil *this, int8x16_t a2, int8x16_t a3, int8x16_t a4, double a5, int8x16_t a6)
{
  result = 4287767294;
  if (*a2.i64 >= 0.0)
  {
    *a2.i64 = floor(*a2.i64 + 0.5);
    if (*a2.i64 <= 4287767290.0)
    {
      *a2.i64 = *a2.i64 + 0.1;
      *a3.i64 = *a2.i64 - trunc(*a2.i64 * 2.32830644e-10) * 4294967300.0;
      v7.f64[0] = NAN;
      v7.f64[1] = NAN;
      a3.i64[0] = vbslq_s8(vnegq_f64(v7), a3, a2).u64[0];
      if (*a2.i64 > 4294967300.0)
      {
        a2.i64[0] = a3.i64[0];
      }

      return *a2.i64;
    }
  }

  else
  {
    *a2.i64 = ceil(*a2.i64 + -0.5);
    if (*a2.i64 >= -7200000.0)
    {
      *a2.i64 = *a2.i64 + 4294967300.0 + 0.1;
      *a6.i64 = *a2.i64 + trunc(*a2.i64 * 2.32830644e-10) * -4294967300.0;
      v8.f64[0] = NAN;
      v8.f64[1] = NAN;
      v9 = vnegq_f64(v8);
      a6.i64[0] = vbslq_s8(v9, a6, a2).u64[0];
      if (*a2.i64 > 4294967300.0)
      {
        a2.i64[0] = a6.i64[0];
      }

      if (*a2.i64 < -4294967300.0)
      {
        *a4.i64 = -*a2.i64;
        *a2.i64 = -(*a2.i64 - trunc(*a2.i64 * -2.32830644e-10) * -4294967300.0);
        *a2.i64 = -*vbslq_s8(v9, a2, a4).i64;
      }

      if (*a2.i64 < 0.0)
      {
        return --*a2.i64;
      }

      else
      {
        return *a2.i64;
      }
    }

    else
    {
      return 4287767296;
    }
  }

  return result;
}

uint64_t BlueFin::GlPeGnssSvsInfoMgr::generate(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, __int128 __src, __int128 a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, int32x4_t a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, __int128 a37, __int128 a38, __int128 a39, uint64_t a40, double a41, uint64_t a42, __int128 a43, double a44, __n128 a45, __int128 a46, __int128 a47, __int128 a48, __int128 a49, __int128 a50)
{
  STACK[0x738] = *MEMORY[0x29EDCA608];
  result = BlueFin::GlPeGnssEphemerisMgr::GetMgr((*(a1 + 32) + 384), *a2);
  if (result)
  {
    v54 = a1 + 0x10000;
    v55 = (*(*result + 112))(result, a2 + 1, 0);
    if (!v55)
    {
      goto LABEL_46;
    }

    v56 = v55;
    if (BlueFin::GlGnssSet::Has(a1 + 96, a2))
    {
      return 0;
    }

    Index = BlueFin::GlPeGnssSvsInfoMgr::getIndex(a1, *a2, *(a2 + 4));
    if ((Index & 0x80000000) != 0)
    {
      return 0;
    }

    v58 = Index;
    v59 = *(a1 + 66832);
    v60 = (v59 + 56 * *(a1 + 288));
    v61 = v58 >> 5;
    v62 = *(*v60 + 4 * (v58 >> 5));
    v63 = 1 << (v58 & 0x1F);
    if ((v63 & v62) == 0)
    {
      v70 = 0;
      while ((v63 & *(*(v59 + v70) + 4 * v61)) == 0)
      {
        v70 += 56;
        if (v70 == 560)
        {
          if (BlueFin::GlSetBase::Cnt(v60) <= 0xE)
          {
            goto LABEL_6;
          }

          return 0;
        }
      }

      return 0;
    }

LABEL_6:
    a38 = 0u;
    a39 = 0u;
    a36 = 0u;
    a37 = 0u;
    a34 = 0u;
    a35 = 0u;
    a32 = 0u;
    a33 = 0u;
    a30 = 0u;
    a31 = 0u;
    a28 = 0u;
    a29 = 0u;
    a26 = 0u;
    a27 = 0u;
    a24 = 0u;
    a25 = 0u;
    a23 = 0u;
    a21 = 0u;
    a22 = 0u;
    a19 = 0u;
    a20 = 0u;
    __src = 0u;
    a18 = 0u;
    v64 = *a2;
    LODWORD(__src) = BlueFin::GlImplGnss::m_aucEnabledGnssTable[v64];
    v65 = *(a2 + 4);
    BYTE4(__src) = *(a2 + 4);
    BYTE5(__src) = -8;
    if (v64 == 2)
    {
      v66 = *(*(a1 + 32) + 48);
      if (!v66 || (v67 = BlueFin::GlPeGloFcnOsnMgr::OSN2FCN(v66, v65), BYTE5(__src) = v67, v67 == -8))
      {
LABEL_46:
        v103 = BlueFin::GlPeGnssSvsInfoMgr::getIndex(a1, *a2, *(a2 + 4));
        if ((v103 & 0x80000000) == 0)
        {
          v104 = v103;
          v105 = (*(v54 + 656) + 368 * v103);
          if (*v105 != 8)
          {
            *v105 = 8;
            v106 = *(v54 + 1296);
            v107 = 10;
            while (((1 << (v104 & 0x1F)) & *(*v106 + 4 * (v104 >> 5))) == 0)
            {
              v106 += 7;
              if (!--v107)
              {
                return 0;
              }
            }

            BlueFin::GlSetBase::Remove(v106, v104);
          }
        }

        return 0;
      }
    }

    v68 = (*(*v56 + 144))(v56);
    if (v68 > 3)
    {
      v69 = 0;
    }

    else
    {
      v69 = dword_298A44D30[v68];
    }

    DWORD2(__src) = v69;
    v71 = BlueFin::GlPeGnssSvsInfoMgr::getIndex(a1, *a2, *(a2 + 4));
    if ((v71 & 0x80000000) == 0)
    {
      v72 = *(a1 + 66192);
      if (v72)
      {
        v73 = v71;
        v74 = 0;
        v75 = v72 + 368 * v71;
        v76 = *(v75 + 8);
        if (!v76 || v69 != v76)
        {
LABEL_29:
          v83 = 0;
          LODWORD(v200) = *(a3 + 8);
          v197 = *(a1 + 288);
          v199 = *a3;
          vars0 = *(a3 + 16);
          *&STACK[0x700] = 0u;
          *&STACK[0x710] = 0u;
          *&STACK[0x6E0] = 0u;
          *&STACK[0x6F0] = 0u;
          *&STACK[0x6C0] = 0u;
          *&STACK[0x6D0] = 0u;
          *&STACK[0x6A0] = 0u;
          *&STACK[0x6B0] = 0u;
          *&STACK[0x680] = 0u;
          *&STACK[0x690] = 0u;
          *&STACK[0x660] = 0u;
          *&STACK[0x670] = 0u;
          *&STACK[0x640] = 0u;
          *&STACK[0x650] = 0u;
          a49 = 0u;
          a50 = 0u;
          a47 = 0u;
          a48 = 0u;
          a45 = 0u;
          a46 = 0u;
          do
          {
            v84 = &a45 + v83;
            *(v84 + 9) = 0;
            *v84 = 0uLL;
            *(v84 + 1) = 0uLL;
            *(v84 + 2) = 0uLL;
            *(v84 + 3) = 0uLL;
            v83 += 80;
            *(v84 + 16) = 0;
          }

          while (v83 != 320);
          v85 = (16 * v74) | (v74 << 6);
          v86 = &BlueFin::GlPeGnssSvsInfoMgr::getSvAnchorPos(BlueFin::GlPeEphemeris const&,BlueFin::GlPeGnssTime const&,BlueFin::GlGnssSvInfo &,BOOL)::adDeltaTimeS[v74];
          v87 = v86;
          while (1)
          {
            v88 = *v87;
            a41 = *&v199;
            LODWORD(a42) = v200;
            a43 = vars0;
            BlueFin::GlPeGnssTime::operator+=(&a41, v88);
            if (BlueFin::GlPeEphemeris::isExpired(v56, &a41) || ((*(*v56 + 112))(v56, &a41, &a45 + v85, 0.0) & 1) == 0)
            {
              break;
            }

            v85 += 80;
            ++v87;
            if (v85 == 320)
            {
              (*(*v56 + 144))(v56);
              v89 = 32 * v74;
              v90 = &a45 + 5 * v74 + 1;
              do
              {
                v91 = *(v56 + 8);
                v92 = *v86;
                a41 = *&v199;
                LODWORD(a42) = v200;
                a43 = vars0;
                BlueFin::GlPeGnssTime::operator+=(&a41, v92);
                if (!BlueFin::GlPeGnssSvsInfoMgr::getSvPosToa(v91 >> 4, &a41, (&__src + v89 + 16), &a44))
                {
                  goto LABEL_45;
                }

                v93 = &__src + v89;
                *(v93 + 24) = v90[-1];
                v94 = v90->n128_u64[0];
                v90 += 5;
                *(v93 + 5) = v94;
                v89 += 32;
                ++v86;
              }

              while (v89 != 128);
              if (__src == 8 || !BYTE4(__src))
              {
                break;
              }

              *&v95 = -4.44280763e-10;
              v96 = 3.986005e14;
              if (__src == 6)
              {
                v108 = DWORD2(__src) - 1;
                if ((DWORD2(__src) - 1) <= 4)
                {
                  v96 = dbl_298A44D98[v108];
                  v95 = qword_298A44DC0[v108];
                }
              }

              else if (__src == 2 && DWORD2(__src) <= 5 && ((1 << SBYTE8(__src)) & 0x26) != 0)
              {
                v97 = (*(*v56 + 64))(v56, &v199, 1, -4.44280763e-10);
                ScaledFloatingField = BlueFin::GlPeEphemeris::GetScaledFloatingField(v56, 12);
                v99 = BlueFin::GlPeEphemeris::GetScaledFloatingField(v56, 11);
                v100 = BlueFin::GlPeEphemeris::GetScaledFloatingField(v56, 11);
                v101 = v97 * v99 - ScaledFloatingField;
                v102 = 0.0;
                goto LABEL_58;
              }

              v194 = *&v95;
              v109 = (*(*v56 + 64))(v56, &v199, 0);
              v110 = (*(*v56 + 64))(v56, &v199, 1);
              v195 = BlueFin::GlPeEphemeris::GetScaledFloatingField(v56, 17);
              v111 = BlueFin::GlPeEphemeris::GetScaledFloatingField(v56, 12) + sqrt(v96 / (v195 * v195 * (v195 * v195 * (v195 * v195))));
              v112 = BlueFin::GlPeEphemeris::GetScaledFloatingField(v56, 13) + v111 * v110;
              a45.n128_f64[0] = v112;
              v113 = BlueFin::GlPeEphemeris::GetScaledFloatingField(v56, 15);
              a41 = v113;
              a44 = v112;
              BlueFin::GlPeEphemeris::Kepler(&a45, &a41, &a44, v114);
              v115 = __sincos_stret(a44);
              v116 = BlueFin::GlPeEphemeris::GetScaledFloatingField(v56, 10);
              v117 = BlueFin::GlPeEphemeris::GetScaledFloatingField(v56, 9);
              v118 = BlueFin::GlPeEphemeris::GetScaledFloatingField(v56, 8);
              v119 = BlueFin::GlPeEphemeris::GetScaledFloatingField(v56, 9);
              v120 = BlueFin::GlPeEphemeris::GetScaledFloatingField(v56, 8);
              v121 = BlueFin::GlPeEphemeris::GetScaledFloatingField(v56, 8);
              v122 = v195 * (v194 * v113);
              v101 = v116 + v117 * v109 + v109 * v118 * v109 + v122 * v115.__sinval;
              v100 = v119 + (v120 + v120) * v109 + v122 * v115.__cosval * v111;
              v102 = (v121 + v121) * 1000000000.0;
LABEL_58:
              *&a26 = v101 * 1000000000.0;
              *(&a26 + 1) = v100 * 1000000000.0;
              *&a27 = v102;
              v123 = (*(*v56 + 96))(v56) / 1.41421356;
              v124 = v123;
              *&v123 = v123 * 3.33564095;
              *(&a27 + 2) = v124;
              HIDWORD(a27) = LODWORD(v123);
              if ((DWORD2(__src) - 1) > 1)
              {
                LODWORD(STACK[0x648]) = 7;
                LOBYTE(STACK[0x64C]) = 0;
                a45.n128_u32[0] = -65536;
                a45.n128_u64[1] = 0;
                LODWORD(a46) = 0;
                *(&a46 + 8) = 0u;
                *(&a47 + 8) = 0u;
                *(&a48 + 8) = 0u;
                *(&a49 + 8) = 0u;
                WORD4(a50) = 0;
                HIDWORD(a50) = -1;
                LOBYTE(STACK[0x640]) = 0;
                if (BlueFin::GlPeAlmMgr::GetAlm(*(a1 + 32) + 34112, *a2, *(a2 + 4), &a45, 1, 1))
                {
                  v126 = LODWORD(STACK[0x648]);
                  if (v126 < 5 && ((0x1Du >> v126) & 1) != 0)
                  {
                    v127 = dword_298A44DE8[v126];
                  }

                  else if (v126 == 5)
                  {
                    LOWORD(v127) = 31;
                  }

                  else
                  {
                    LOWORD(v127) = 255;
                  }

                  if ((v127 & a45.n128_u16[1]) != 0)
                  {
                    v128 = 2;
                  }

                  else
                  {
                    v128 = 1;
                  }

                  a28.i32[1] = v128;
                }
              }

              else
              {
                if ((*(*v56 + 40))(v56))
                {
                  v125 = 1;
                }

                else
                {
                  v125 = 2;
                }

                a28.i32[0] = v125;
              }

              if (DWORD2(__src) == 5 || DWORD2(__src) == 3)
              {
                if ((*(*v56 + 40))(v56))
                {
                  v129 = 1;
                }

                else
                {
                  v129 = 2;
                }

                a28.i32[2] = v129;
              }

              if (BlueFin::GlPeSvHealthHelper::IsBadByRti(*(a1 + 80) + 32, a2))
              {
                v130 = 2;
              }

              else
              {
                v130 = 1;
              }

              LODWORD(a29) = v130;
              if (BlueFin::GlPeSvHealthData::GetState(*(a1 + 80) + 32, a2) == 3)
              {
                v131 = 2;
                goto LABEL_87;
              }

              if (BlueFin::GlPeSvHealthHelper::IsUsable(*(a1 + 80) + 32, a2))
              {
                v131 = 1;
LABEL_87:
                a28.i32[3] = v131;
              }

              LOBYTE(a44) = 0;
              v132 = *(a1 + 80);
              BlueFin::GlPeTimeManager::GetTime(*(a1 + 40), 1, &a45);
              a41 = COERCE_DOUBLE(&off_2A1F0B5F0);
              a42 = 0;
              Gps = BlueFin::GlPeGnssTime::GetGps(&a45, &a41);
              v137 = (*(*&a41 + 32))(&a41, Gps);
              LODWORD(v136) = a42;
              *v137.i64 = v136 * 2.32830644e-10 + v135;
              *v138.i64 = *v137.i64 + trunc(*v137.i64 * 2.32830644e-10) * -4294967300.0;
              v139.f64[0] = NAN;
              v139.f64[1] = NAN;
              v140 = vnegq_f64(v139);
              *&v141 = vbslq_s8(v140, v138, v137).u64[0];
              if (*v137.i64 > 4294967300.0)
              {
                *v137.i64 = v141;
              }

              if (*v137.i64 < -4294967300.0)
              {
                *v134.i64 = -*v137.i64;
                *v137.i64 = -(*v137.i64 - trunc(*v137.i64 * -2.32830644e-10) * -4294967300.0);
                *v137.i64 = -*vbslq_s8(v140, v137, v134).i64;
              }

              if (*v137.i64 < 0.0)
              {
                v142 = --*v137.i64;
              }

              else
              {
                v142 = *v137.i64;
              }

              GnssSvL5Health = BlueFin::GlPeSvHealthMgr::GetGnssSvL5Health(v132, a2, v142, &a44);
              BYTE4(a29) = GnssSvL5Health;
              if (*a2 == 6)
              {
                v144.i64[0] = 0x200000002;
                v144.i64[1] = 0x200000002;
                if ((vmaxv_u16(vmovn_s32(vceqq_s32(a28, v144))) & 1) != 0 || a29 == 2)
                {
                  BYTE4(a29) = 1;
                  v145 = 2;
                }

                else
                {
                  if ((vmaxv_u16(vmovn_s32(vtstq_s32(a28, a28))) & 1) == 0 && !a29)
                  {
                    GlCustomLog(15, "GlPeGnssSvsInfoMgr: Health info is not available for NavIC SV %d\n", BYTE4(__src));
                    BYTE4(a29) = 0;
LABEL_108:
                    BYTE12(a29) = 0;
                    v146 = *(a1 + 64);
                    v147 = *(v146 + 60960);
                    v196 = 0.0;
                    if (!v147 || !*(v147 + 4048) || *(v147 + 6952) >= 40000.0)
                    {
                      v153 = 0;
                      v151 = 0;
                      v152 = 0;
                      v149 = 0.0;
                      goto LABEL_120;
                    }

                    v148 = *(v147 + 44);
                    v149 = 0.0;
                    if (v148 < 1)
                    {
                      goto LABEL_116;
                    }

                    v150 = (v147 + 52);
                    while (BlueFin::GlImplGnss::m_aucEnabledGnssTable[*a2] != *(v150 - 2) || *(v150 - 1) != *(a2 + 4))
                    {
                      v150 += 20;
                      if (!--v148)
                      {
                        goto LABEL_116;
                      }
                    }

                    if (*v150 >= 1 && (BlueFin::GlPeSvIdConverter::Gnss2SvId((*(a1 + 32) + 119744), a2, &a45), (v175 = (*(*(v146 + 6856) + 112))(v146 + 6856, &a45)) != 0))
                    {
                      if (*v175)
                      {
                        v176 = (*(v175 + 20) * (*(*(a1 + 40) + 2568) - *v175)) * 0.001;
                      }

                      else
                      {
                        v176 = 0.0;
                      }

                      v151 = *(v175 + 4);
                      if (v151)
                      {
                        v196 = (v176 + *(v175 + 16));
                        if (*(v175 + 9) == 1)
                        {
                          v149 = *(v175 + 12);
                          v152 = 1;
                        }

                        else
                        {
                          v152 = 0;
                        }

LABEL_118:
                        v153 = BYTE12(a29);
LABEL_120:
                        v154 = *a2;
                        v155 = &a30 + 10 * v153;
                        if (v154 > 6)
                        {
                          v156 = 0;
                        }

                        else
                        {
                          v156 = dword_298A44DFC[v154];
                        }

                        *v155 = v156;
                        BlueFin::GlPeSvIdConverter::Gnss2SvId((*(a1 + 32) + 119744), a2, &v198 + 7);
                        v159 = HIBYTE(v198);
                        a45.n128_u8[0] = HIBYTE(v198);
                        a45.n128_u32[1] = 0;
                        a45.n128_u16[4] = 575;
                        v160 = HIBYTE(v198) - 189;
                        if (v160 >= 0xFFFFFF44)
                        {
                          v161 = BlueFin::GlSvId::s_aucSvId2gnss[HIBYTE(v198)];
                          if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v161] == 255)
                          {
                            a45.n128_u32[1] = -1;
                          }

                          else
                          {
                            a45.n128_u16[4] = BlueFin::GlSignalId::s_ausGnss2signalId[v161] + HIBYTE(v198) - BlueFin::GlSvId::s_aucGnss2minSvId[v161];
                          }
                        }

                        FullSatHwBiasM = BlueFin::GlPeGnssHwBiasMgr::GetFullSatHwBiasM(*(a1 + 88), &a45, v157, v158);
                        v163 = BYTE12(a29);
                        v164 = &a30 + 40 * BYTE12(a29);
                        v165.f64[0] = v196;
                        v165.f64[1] = FullSatHwBiasM;
                        v166 = vmulq_f64(vdivq_f64(v165, xmmword_298A3AE20), vdupq_n_s64(0x41CDCD6500000000uLL));
                        *(v164 + 24) = v166;
                        if (*v164 == 5)
                        {
                          *(v164 + 3) = 1.0184 * v166.f64[0];
                        }

                        v193 = v166.f64[0];
                        v167 = v149 / 299792458.0 * 1000000000.0;
                        v168 = &a30 + 5 * v163;
                        v168[2] = v167;
                        *(v168 + 4) = v152;
                        v169 = BlueFin::GlPeAtmosDelays::GlPeIonoSrc2GlGnssIonoDelaySrc(v151);
                        *(v168 + 2) = v169;
                        v170 = v163 + 1;
                        BYTE12(a29) = v163 + 1;
                        v171 = *(a1 + 72);
                        if (*(v171 + 26294) == 1 && (v159 - 76) <= 0x3E)
                        {
                          v54 = a1 + 0x10000;
                          if (*(v171 + 88) >= 37 && BlueFin::GlSettingsImpl::DoesSvSupportBand5(*(a1 + 72), &v198 + 7))
                          {
                            *(&a30 + 10 * v170) = 11;
                            LOBYTE(a41) = v159;
                            HIDWORD(a41) = 3;
                            LOWORD(a42) = 575;
                            if (v160 >= 0xFFFFFF44)
                            {
                              v174 = BlueFin::GlSvId::s_aucSvId2gnss[v159];
                              if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v174 + 21] == 255)
                              {
                                HIDWORD(a41) = -1;
                              }

                              else
                              {
                                LOWORD(a42) = BlueFin::GlSignalId::s_ausGnss2signalId[v174] + v159 - BlueFin::GlSvId::s_aucGnss2minSvId[v174] + 3 * BlueFin::GlSvId::s_aucGnss2numSvId[v174];
                              }
                            }

                            v177 = BlueFin::GlPeGnssHwBiasMgr::GetFullSatHwBiasM(*(a1 + 88), &a41, v172, v173);
                            v178 = BYTE12(a29);
                            v179 = &a30 + 5 * BYTE12(a29);
                            v179[3] = v193;
                            v179[4] = v177 / -299792458.0 * 1000000000.0;
                            v179[2] = v167;
                            *(v179 + 4) = v152;
                            *(v179 + 2) = v169;
                            v170 = v178 + 1;
                            BYTE12(a29) = v178 + 1;
                            v171 = *(a1 + 72);
                            goto LABEL_142;
                          }
                        }

                        else
                        {
LABEL_142:
                          v54 = a1 + 0x10000;
                        }

                        if (BlueFin::GlSettingsImpl::DoesSvSupportBand5(v171, &v198 + 7))
                        {
                          v182 = *a2;
                          if (v182 > 5)
                          {
                            v183 = 0;
                          }

                          else
                          {
                            v183 = dword_298A44E18[v182];
                          }

                          *(&a30 + 10 * v170) = v183;
                          LOBYTE(a41) = v159;
                          HIDWORD(a41) = 2;
                          LOWORD(a42) = 575;
                          if (v160 >= 0xFFFFFF44)
                          {
                            v184 = BlueFin::GlSvId::s_aucSvId2gnss[v159];
                            if (BlueFin::GlSignalId::s_aascSignalIndexAndGnss2signalType[v184 + 14] == 255)
                            {
                              HIDWORD(a41) = -1;
                            }

                            else
                            {
                              LOWORD(a42) = BlueFin::GlSignalId::s_ausGnss2signalId[v184] + v159 - BlueFin::GlSvId::s_aucGnss2minSvId[v184] + 2 * BlueFin::GlSvId::s_aucGnss2numSvId[v184];
                            }
                          }

                          v185 = BlueFin::GlPeGnssHwBiasMgr::GetFullSatHwBiasM(*(a1 + 88), &a41, v180, v181);
                          v186 = BYTE12(a29);
                          v187.f64[0] = v196 * 1.7933;
                          v187.f64[1] = v185;
                          v188 = &a30 + 40 * BYTE12(a29);
                          *(v188 + 24) = vmulq_f64(vdivq_f64(v187, xmmword_298A3AE20), vdupq_n_s64(0x41CDCD6500000000uLL));
                          *(v188 + 2) = v167;
                          v188[4] = v152;
                          *(v188 + 2) = v169;
                          BYTE12(a29) = v186 + 1;
                          v54 = a1 + 0x10000;
                        }

                        if (v197 <= 9 && __src != 8)
                        {
                          v189 = BlueFin::GlPeGnssSvsInfoMgr::getIndex(a1, BlueFin::GlImplGnss::m_aucImplGnssTable[__src], BYTE4(__src));
                          v190 = v189;
                          v54 = a1 + 0x10000;
                          if ((v189 & 0x80000000) == 0)
                          {
                            memcpy((*(a1 + 66192) + 368 * v189), &__src, 0x170uLL);
                            v191 = v190 >> 5;
                            result = 1;
                            v192 = *(*(a1 + 66832) + 56 * v197);
                            *(v192 + 4 * v191) |= 1 << v190;
                            *(*(a1 + 66200) + 4 * v191) = *(*(a1 + 66200) + 4 * (v190 >> 5)) | (1 << v190);
                            return result;
                          }
                        }

                        goto LABEL_46;
                      }
                    }

                    else
                    {
LABEL_116:
                      v151 = 0;
                    }

                    v152 = 0;
                    v196 = 0.0;
                    goto LABEL_118;
                  }

                  v145 = 1;
                  BYTE4(a29) = 1;
                }
              }

              else
              {
                if (!GnssSvL5Health)
                {
                  goto LABEL_108;
                }

                if (LOBYTE(a44))
                {
                  v145 = 1;
                }

                else
                {
                  v145 = 2;
                }
              }

              DWORD2(a29) = v145;
              goto LABEL_108;
            }
          }

LABEL_45:
          v54 = a1 + 0x10000;
          goto LABEL_46;
        }

        a45.n128_u64[0] = 0;
        if (BlueFin::GlPeGnssSvsInfoMgr::getSvPosToa(*(v56 + 8) >> 4, a3, a45.n128_f64, &a41))
        {
          v77 = *(v75 + 112) - a45.n128_f64[0];
          v78 = 0.5;
          if (v77 > 0.0 || (v78 = -0.5, v77 < 0.0))
          {
            if ((v77 + v78) == 5)
            {
              v79 = 0;
              v80 = v72 + 368 * v73 + 48;
              v74 = 3;
              do
              {
                v81 = (&a18 + v79);
                v82 = *(v80 + v79 + 16);
                *v81 = *(v80 + v79);
                v81[1] = v82;
                v79 += 32;
              }

              while (v79 != 96);
              goto LABEL_29;
            }
          }
        }
      }
    }

    v74 = 0;
    goto LABEL_29;
  }

  return result;
}

uint64_t BlueFin::GlPeGnssSvsInfoMgr::getIndex(unsigned int *a1, unsigned int a2, unsigned __int8 a3)
{
  v3 = BlueFin::GlImplGnss::m_aucEnabledGnssTable[a2];
  if ((*a1 >> v3))
  {
    if (a2 > 6 || !a3 || ((0xE243F0A181320uLL >> (8 * a2)) & 0x3F) < a3)
    {
      DeviceFaultNotify("glpe_reqhdlr_gnss_meas_svsinfo.cpp", 699, "getIndex", "(rotGnss.eGnss < NUM_GNSS) && (ucGnssId >= MIN_GNSS_ID && ucGnssId <= GlGnssId::MaxGnssId(rotGnss.eGnss))");
      __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glpe_reqhdlr_gnss_meas_svsinfo.cpp", 699, "(rotGnss.eGnss < NUM_GNSS) && (ucGnssId >= MIN_GNSS_ID && ucGnssId <= GlGnssId::MaxGnssId(rotGnss.eGnss))");
    }

    v4 = a1[BlueFin::GlPeGnssSvsInfoMgr::m_aeImplGnss2Supported[v3] + 1] + a3 - 1;
  }

  else
  {
    LOWORD(v4) = -1;
  }

  return v4;
}

uint64_t BlueFin::GlPeNmeaGsvSatsNum::Update(uint64_t this, uint8x8_t a2, uint16x8_t a3)
{
  v3 = 0;
  a2.i32[0] = *this;
  a3.i32[0] = 196611;
  a3.i16[2] = 3;
  a3.i16[3] = 3;
  v4 = vshr_n_u16(*&vaddw_u8(a3, a2), 2uLL);
  v4.i32[0] = vuzp1_s8(v4, v4).u32[0];
  *(this + 9) = v4.i32[0];
  *(this + 4) = 0;
  *(this + 5) = v4.i32[0];
  *(this + 14) = -1;
  do
  {
    v5 = *(this + v3 + 4);
    v6 = *(this + v3 + 5) + v5;
    *(this + v3 + 5) = v6;
    v7 = *(this + 13);
    if (v5 <= v7 && v7 < v6)
    {
      *(this + 14) = v3;
    }

    ++v3;
  }

  while (v3 != 4);
  *(this + 16) = 4 * (v7 - *(this + 4 + *(this + 14)));
  return this;
}

float BlueFin::GlSatAid::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 92) = *(a2 + 92);
  for (i = 56; i != 72; i += 4)
  {
    result = *(a2 + i);
    *(a1 + i) = result;
  }

  return result;
}

uint64_t BlueFin::GlReqSm::ConstellationAware(BlueFin::GlReqSm *this, ...)
{
  va_start(va, this);
  v1 = this + 53248;
  if (*(this + 54556))
  {
    v2 = 1;
  }

  else
  {
    v4 = 0;
    v5 = *(*(this + 786) + 120012);
    v6 = v5 == 1;
    v7 = v5 != 1;
    if (v6)
    {
      v8 = 10;
    }

    else
    {
      v8 = 22;
    }

    if (v6)
    {
      v9 = 10;
    }

    else
    {
      v9 = 30;
    }

    v10 = *(*(this + 784) + 278);
    v22[0] = v9;
    if (v10)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    v22[1] = 4 * v7;
    v22[2] = v11;
    v23 = 0;
    do
    {
      v12 = &v24 + v4;
      *(&v24 + v4 + 12) = 0;
      *v12 = &v24 + v4 + 12;
      v12[8] = 2;
      v4 += 24;
    }

    while (v4 != 168);
    for (i = 0; i != 7; ++i)
    {
      BlueFin::GlPeAlmMgr::GetValidity(*(this + 786) + 34112, i, 0, &v21);
      v14 = BlueFin::GlGnssSet::operator()(&v24, i);
      BlueFin::GlSetBase::operator|=(v14, &v21);
    }

    v15 = 0;
    v16 = *(this + 786);
    do
    {
      BlueFin::GlSetBase::operator|=(&v24 + v15, *(v16 + 120968) + v15);
      v15 += 24;
    }

    while (v15 != 168);
    v17 = 0;
    v1[1308] = 1;
    while (1)
    {
      v18 = BlueFin::GlGnssSet::operator()(&v24, v17);
      if (v22[v17] > BlueFin::GlSetBase::Cnt(v18))
      {
        break;
      }

      if (++v17 == 7)
      {
        goto LABEL_23;
      }
    }

    v1[1308] = 0;
LABEL_23:
    v19 = v9 <= BlueFin::GlSetBase::Cnt(&v24) && v11 <= BlueFin::GlSetBase::Cnt(va);
    v1[1309] = v19;
    v2 = v1[1308];
  }

  return v2 & 1;
}

uint64_t BlueFin::GlReqSm::sendMeSatAiding(BlueFin::GlReqSm *this, const BlueFin::GlSatAidInfo *a2)
{
  BlueFin::GlReqSm::AutoSelectSatForIQDump(this, a2);
  if (BlueFin::GlUtils::m_pInstance && *(BlueFin::GlUtils::m_pInstance + 1122) == 1)
  {
    (*(*a2 + 24))(a2, 0, 0);
  }

  v4 = *(**(this + 39) + 240);

  return v4();
}

uint64_t BlueFin::GlReqSm::AutoSelectSatForIQDump(uint64_t this, const BlueFin::GlSatAidInfo *a2)
{
  v40 = *MEMORY[0x29EDCA608];
  if (*(this + 54902) == 1)
  {
    v2 = 0;
    v32 = *(this + 6272);
    v3 = *(v32 + 48);
    v4 = (this + 33504);
    v5 = v3 >= 9;
    memset(&v39[80], 0, 44);
    v6 = 0x1F4u >> v3;
    v7 = !v5;
    v8 = v7 & v6;
    memset(v39, 0, 320);
    memset(v37, 0, 91);
    v9 = 91;
    v10 = *(a2 + 1101);
    do
    {
      if (*v10 && v2 <= 0x5A)
      {
        *(v37 + v2) = *v10;
        v39[v2++] = -*(v10 + 74);
      }

      v10 += 96;
      --v9;
    }

    while (v9);
    v38[0] = 0;
    v11 = v2;
    if (v2 >= 2)
    {
      for (i = 1; i != v2; v38[v15] = i++)
      {
        v13 = v39[i];
        v14 = i;
        while (1)
        {
          v15 = v14;
          v16 = v38[v14 - 1];
          if (v39[v16] <= v13)
          {
            break;
          }

          v38[v15] = v16;
          v14 = v15 - 1;
          if (v15 == 1)
          {
            v15 = 0;
            break;
          }
        }
      }
    }

    v31 = this;
    if (v2)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = v38;
      do
      {
        v22 = *v21++;
        v23 = *(v37 + v22);
        LOBYTE(v33) = *(v37 + v22);
        if (!v8 || BlueFin::GlSettingsImpl::DoesSvSupportBand5(v32, &v33))
        {
          if ((v23 - 1) <= 0x1F && v17 <= 2)
          {
            *(*v4 + ((v23 >> 3) & 0x1C)) |= 1 << v23;
            ++v17;
            goto LABEL_37;
          }

          if ((v23 - 81) <= 0x34 && v20 == 0)
          {
            v20 = 1;
            *(*v4 + 4 * (v23 >> 5)) |= 1 << v23;
LABEL_37:
            if (++v18 == 5)
            {
              break;
            }

            goto LABEL_38;
          }

          if ((v23 - 139) <= 0x23 && v19 == 0)
          {
            v19 = 1;
            *(*v4 + 4 * (v23 >> 5)) |= 1 << v23;
            goto LABEL_37;
          }
        }

LABEL_38:
        --v11;
      }

      while (v11);
    }

    if (!**v4)
    {
      v27 = v4[8];
      if (v27 < 2)
      {
        return GlCustomLog(126, "IQDUMP_LIST NO SVs selected\n");
      }

      v28 = v27 - 1;
      v29 = (*v4 + 4);
      while (!*v29++)
      {
        if (!--v28)
        {
          return GlCustomLog(126, "IQDUMP_LIST NO SVs selected\n");
        }
      }
    }

    GlCustomLog(126, "IQDUMP_LIST ");
    LOBYTE(v33) = v4[8];
    memcpy(&v34, *v4, 4 * v33);
    WORD1(v33) = 0;
    BYTE1(v33) = 0;
    HIDWORD(v33) = v34;
    BlueFin::GlSetIterator::operator++(&v33);
    while (BYTE1(v33) != v33)
    {
      GlCustomLog(126, " %3d   ", BYTE2(v33));
      BlueFin::GlSetIterator::operator++(&v33);
    }

    GlCustomLog(126, "\n");
    v33 = &v35;
    LOBYTE(v34) = 3;
    v35 = 0;
    v36 = 0;
    this = (*(**(v31 + 312) + 784))();
    *(v31 + 54902) = 0;
  }

  return this;
}

uint64_t BlueFin::GlDineCtrl::SetSatAiding(BlueFin::GlDineCtrl *this, const BlueFin::GlSatAidInfo *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, __int128 a14, __int128 a15, uint64_t a16, int *a17, __int128 a18, __int128 a19)
{
  v19 = MEMORY[0x2A1C7C4A8](this, a2);
  v21 = v20;
  v22 = v19;
  STACK[0x2338] = *MEMORY[0x29EDCA608];
  a13 = &a14 + 4;
  LOBYTE(a14) = 8;
  *(&a14 + 4) = 0u;
  *(&a15 + 4) = 0u;
  v23 = *(v20 + 1101);
  v24 = 91;
  do
  {
    v26 = *v23;
    v23 += 96;
    v25 = v26;
    if (v26)
    {
      *(&a14 + ((v25 >> 3) & 0x1C) + 4) |= 1 << v25;
    }

    --v24;
  }

  while (v24);
  BlueFin::GlMeSrdAidingMgr::GetAidIdSvIdSet(&vars0, v19 + 49392);
  BlueFin::GlSetBase::GlSetBase(&v49, v51, 8u, &a13);
  a17 = &a18 + 1;
  LOBYTE(a18) = 8;
  *(&a18 + 4) = 0u;
  *(&a19 + 4) = 0u;
  BlueFin::GlSetBase::OperatorBinaryAnd(&v49, &a17, &vars0);
  BlueFin::GlSetBase::operator=(&v49, &a17);
  v27 = 0;
  v51[0] = *(&a18 + 4);
  v51[1] = *(&a19 + 4);
  v28 = &vars0[vars8 - 1];
  do
  {
    if (*v28)
    {
      v29 = *v28 - (((*v28 >> 1) & 0x5B6DB6DB) + ((*v28 >> 2) & 0x9249249));
      v27 = ((v29 + (v29 >> 3)) & 0xC71C71C7) + v27 - 63 * (((v29 + (v29 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v28;
  }

  while (v28 >= vars0);
  v30 = 0;
  v31 = (v49 + 4 * v50 - 4);
  do
  {
    if (*v31)
    {
      v32 = *v31 - (((*v31 >> 1) & 0x5B6DB6DB) + ((*v31 >> 2) & 0x9249249));
      v30 = ((v32 + (v32 >> 3)) & 0xC71C71C7) + v30 - 63 * (((v32 + (v32 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    --v31;
  }

  while (v31 >= v49);
  v33 = 0;
  v34 = v30 - v27;
  v35 = &a13[4 * a14 - 4];
  do
  {
    if (*v35)
    {
      v36 = *v35 - (((*v35 >> 1) & 0x5B6DB6DB) + ((*v35 >> 2) & 0x9249249));
      v33 = ((v36 + (v36 >> 3)) & 0xC71C71C7) + v33 - 63 * (((v36 + (v36 >> 3)) & 0xC71C71C7) / 0x3F);
    }

    v35 -= 4;
  }

  while (v35 >= a13);
  v37 = (v34 + 91);
  if (v37 >= v33)
  {
    (*(*(v22 + 29176) + 24))(v22 + 29176, v21);
    return BlueFin::GlMeSrdCtrlSm::SetSatAiding((v22 + 75168), v21);
  }

  else
  {
    BlueFin::GlSatAidInfo::GlSatAidInfo(&a17, v21);
    v38 = 0;
    v39 = 0;
    v40 = 91;
    do
    {
      if (v39 < v37)
      {
        v41 = *(v21 + 1101);
        if (*(v41 + v38))
        {
          if ((*(v49 + ((*(v41 + v38) >> 3) & 0x1C)) >> (*(v41 + v38) & 0x1F)))
          {
            BlueFin::GlSatAid::operator=(STACK[0x2308] + 96 * v39++, v41 + v38);
          }
        }
      }

      v38 += 96;
      --v40;
    }

    while (v40);
    v42 = 0;
    v43 = 91;
    do
    {
      if (v39 < v37)
      {
        v44 = *(v21 + 1101);
        if (*(v44 + v42))
        {
          if (((*(v49 + ((*(v44 + v42) >> 3) & 0x1C)) >> (*(v44 + v42) & 0x1F)) & 1) == 0)
          {
            BlueFin::GlSatAid::operator=(STACK[0x2308] + 96 * v39++, v44 + v42);
          }
        }
      }

      v42 += 96;
      --v43;
    }

    while (v43);
    if (v39 <= 90)
    {
      v45 = v39 + 1;
      v46 = (STACK[0x2308] + 96 * v39);
      do
      {
        *v46 = 0;
        v46 += 96;
      }

      while (v45++ != 91);
    }

    (*(*(v22 + 29176) + 24))(v22 + 29176, &a17);
    return BlueFin::GlMeSrdCtrlSm::SetSatAiding((v22 + 75168), &a17);
  }
}

BOOL BlueFin::GlMeSrdAidingMgr::GetAidIdSvIdSet@<W0>(uint64_t *__return_ptr a1@<X8>, _BOOL8 this@<X0>)
{
  *(a1 + 12) = 0u;
  *a1 = a1 + 12;
  *(a1 + 8) = 8;
  *(a1 + 28) = 0u;
  v4 = (this + 2632);
  v5 = *(this + 2666) + 1;
  if (*(this + 2664) > v5)
  {
    do
    {
      this = BlueFin::GlSignalIdArrayIterator::Next(&v3, &v4);
      *(*a1 + ((v3 >> 3) & 0x1C)) |= 1 << v3;
    }

    while (v5 < *(v4 + 16));
  }

  return this;
}

BlueFin::GlMeClkModMgr *BlueFin::GlMeWinMgr::SetSatAidInfo(BlueFin::GlMeWinMgr *this, const BlueFin::GlSatAidInfo *a2)
{
  BlueFin::GlMeSatAidMgr::SetSatAidInfo((this + 320), a2);
  result = BlueFin::GlSetBase::Cnt((this + 9248));
  *(this + 9858) = result;
  v5 = *(a2 + 9);
  if (v5)
  {
    v13 = &unk_2A1F0E1A0;
    v14 = 0;
    v15 = 0x36A7C5AC00000000;
    SubBitAndEpochTime = 0.0;
    v17 = 3.4028e38;
    v18 = 0.0;
    v19 = 2139095039;
    v20 = 0;
    v21 = 0x36A7C5AC7F7FFFFFLL;
    v12 = *(a2 + 1) - v5 * 0.001;
    v9[0] = 1;
    v10 = 0;
    v11 = 0;
    SubBitAndEpochTime = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v12, v9, 1u);
    HIDWORD(v14) = *(a2 + 9);
    v17 = *(a2 + 4);
    v12 = *(a2 + 3) - HIDWORD(v14) * 0.001;
    v9[0] = 52;
    v10 = 0;
    v11 = 147;
    v18 = BlueFin::GlSystemTime::getSubBitAndEpochTime(&v12, v9, 1u);
    v6 = *(a2 + 9);
    HIDWORD(v14) = v6;
    v7 = *(a2 + 8);
    v19 = LODWORD(v7);
    if (v17 < 0.001)
    {
      LODWORD(v14) = v14 | 2;
    }

    if (v17 < 0.0005)
    {
      LODWORD(v14) = v14 | 4;
    }

    if (v17 < 0.00015152)
    {
      LODWORD(v14) = v14 | 8;
    }

    if (v7 < 0.001)
    {
      LODWORD(v14) = v14 | 0x20;
    }

    if (v7 < 0.0005)
    {
      LODWORD(v14) = v14 | 0x80;
    }

    if (v7 < 0.00030333)
    {
      LODWORD(v14) = v14 | 0x100;
    }

    if (v7 < 10.0)
    {
      v8 = v14;
      if ((v14 & 0x22) == 2)
      {
        v8 = v14 | 0x20;
        LODWORD(v14) = v14 | 0x20;
        v19 = 973279855;
      }

      if ((v8 & 0x108) == 8)
      {
        v8 |= 0x100u;
        LODWORD(v14) = v8;
        v19 = 973279855;
      }

      if ((v8 & 0x22) == 0x20)
      {
        v8 |= 2u;
        LODWORD(v14) = v8;
        v17 = 0.0005;
      }

      if ((v8 & 0x108) == 0x100)
      {
        LODWORD(v14) = v8 | 8;
        v17 = 0.0005;
      }
    }

    return BlueFin::GlMeClkModMgr::SetClkModFromPe((this + 144), v6, &v13);
  }

  return result;
}

BlueFin::GlMeClkModMgr *BlueFin::GlMeClkModMgr::SetClkModFromPe(BlueFin::GlMeClkModMgr *this, int a2, BlueFin::GlMeClkMod *a3)
{
  v4 = this;
  v5 = *(a3 + 2);
  if ((v5 & 0x10) != 0)
  {
    *(a3 + 2) = v5 & 0xFFFFFED5;
    this = BlueFin::GlMeClkModMgr::SetClkMod(this, a3, 0);
    if (*(a3 + 5) <= 0.000000025)
    {
      *(v4 + 96) = 1;
    }

    *(v4 + 25) = a2;
  }

  else if ((v5 & 0x12A) != 0)
  {

    return BlueFin::GlMeClkModMgr::SetClkMod(this, a3, 0);
  }

  return this;
}

uint64_t BlueFin::GlMeSrdAcqMgr::NewAidingAvailable(BlueFin::GlMeSrdAcqMgr *this)
{
  if ((*(this + 104) & 1) == 0)
  {
    DeviceFaultNotify("glmesrd_acq_mgr.cpp", 435, "NewAidingAvailable", "m_bAllocated");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glmesrd_acq_mgr.cpp", 435, "m_bAllocated");
  }

  v4 = 67;
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

unsigned __int8 *BlueFin::GlMeSrdSatMgr::GetSvidSetFromSatidSet@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 12) = 0u;
  *a3 = a3 + 12;
  *(a3 + 8) = 8;
  *(a3 + 28) = 0u;
  v7 = *(a2 + 8);
  memcpy(v11, *a2, 4 * v7);
  *v9 = 0;
  v8 = 0;
  v10 = v11[0];
  for (result = BlueFin::GlSetIterator::operator++(&v7); v8 != v7; result = BlueFin::GlSetIterator::operator++(&v7))
  {
    BlueFin::GlMeSrdSatMgr::GetSvid(&v6, a1, v9[0]);
    *(*a3 + ((v6 >> 3) & 0x1C)) |= 1 << v6;
  }

  return result;
}

uint64_t BlueFin::GlMeSrdAcqMgrSm::IsFirstFix(BlueFin::GlMeSrdAcqMgrSm *this)
{
  v1 = (this + 23160);
  if (*(this + 24997) == 1)
  {
    if (*v1 < 0x7531)
    {
      v3 = 1;
    }

    else
    {
      v14 = 0.0;
      (*(**(this + 5) + 48))(*(this + 5));
      v13 = 0.0;
      (*(**(this + 5) + 48))(*(this + 5), *v1, &v13, 1);
      v5[0] = &unk_2A1F0E1A0;
      v5[1] = 0;
      v6 = 0x36A7C5AC00000000;
      v7 = 0;
      v8 = 2139095039;
      v9 = 0;
      v10 = 2139095039;
      v11 = 0;
      v12 = 0x36A7C5AC7F7FFFFFLL;
      (*(**(this + 5) + 96))(*(this + 5), v5, *v1);
      if (fminf(v14, v13) >= 0.00000005 || *(&v6 + 1) >= 0.00000001)
      {
        v3 = *(v1 + 1837);
      }

      else
      {
        v3 = 0;
        *(v1 + 1837) = 0;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

unsigned __int8 *BlueFin::GlMeAcqWindowProvider::GetAidSvLstBySrc@<X0>(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 8);
  v5 = *a2;
  return BlueFin::GlMeSatAidMgr::GetAidSvLstBySrc(v3 + 352, &v5, a3);
}

uint64_t BlueFin::GlSetBase::OperatorBinaryXor(uint64_t this, int **a2, int **a3)
{
  v3 = *(this + 8);
  v4 = *(a3 + 8);
  if (v3 != v4 || *(a2 + 8) != v4)
  {
    DeviceFaultNotify("glutl_set.cpp", 517, "OperatorBinaryXor", "m_ucUlongSize == otRightOperand.m_ucUlongSize && otResult.m_ucUlongSize == otRightOperand.m_ucUlongSize");
    __assert_rtn(0xFFFFFFFFFFFFFFFFLL, "glutl_set.cpp", 517, "m_ucUlongSize == otRightOperand.m_ucUlongSize && otResult.m_ucUlongSize == otRightOperand.m_ucUlongSize");
  }

  if (*(this + 8))
  {
    v6 = *this;
    v7 = *a3;
    v8 = *a2;
    do
    {
      v10 = *v6++;
      v9 = v10;
      v11 = *v7++;
      *v8++ = v11 ^ v9;
      --v3;
    }

    while (v3);
  }

  return this;
}

double BlueFin::GlMeSatAidMgr::GetAidSysTm(uint64_t a1, _DWORD *a2, int a3, uint64_t a4, double a5, double a6, double a7)
{
  v7 = 8;
  if (a3)
  {
    v7 = 24;
  }

  v8 = *(a1 + v7);
  LODWORD(a7) = *(a1 + 36);
  v9 = *&a7;
  if (a2)
  {
    v10 = 16;
    if (a3)
    {
      v10 = 32;
    }

    *a2 = *(a1 + v10);
  }

  v11 = (a5 - v9) / 1000.0;
  if (a4 && *(a4 + 20) < 0.00000001)
  {
    v11 = v11 * (1.0 - *(a4 + 16));
  }

  result = v8 + v11;
  if (a3)
  {
    if (result < 0.0)
    {
      result = result + 86400.0;
    }

    if (result >= 86400.0)
    {
      v13 = -86400.0;
      return result + v13;
    }
  }

  else
  {
    if (result < 0.0)
    {
      result = result + 604800.0;
    }

    if (result >= 604800.0)
    {
      v13 = -604800.0;
      return result + v13;
    }
  }

  return result;
}