void raven::MinnesotaRfModelCompensator::FeedVendorCorrections(uint64_t a1, uint64_t a2, int8x16_t *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  v11 = *(a2 + 8);
  v9 = a2 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  v13 = v10;
  do
  {
    v14 = *(v13 + 32);
    v15 = v14 >= 2;
    v16 = v14 < 2;
    if (v15)
    {
      v12 = v13;
    }

    v13 = *(v13 + 8 * v16);
  }

  while (v13);
  if (v12 == v9 || *(v12 + 32) >= 3u)
  {
LABEL_9:
    v12 = v9;
  }

  if (!v10)
  {
    goto LABEL_18;
  }

  v17 = v9;
  v18 = v10;
  do
  {
    v19 = *(v18 + 32);
    v15 = v19 >= 7;
    v20 = v19 < 7;
    if (v15)
    {
      v17 = v18;
    }

    v18 = *(v18 + 8 * v20);
  }

  while (v18);
  if (v17 == v9 || *(v17 + 32) >= 8u)
  {
LABEL_18:
    v17 = v9;
  }

  if (v10)
  {
    v21 = v9;
    do
    {
      v22 = *(v10 + 32);
      v15 = v22 >= 8;
      v23 = v22 < 8;
      if (v15)
      {
        v21 = v10;
      }

      v10 = *(v10 + 8 * v23);
    }

    while (v10);
    if (v21 != v9)
    {
      v24 = *(v21 + 32) > 8u || v12 == v9;
      if (!v24 && v17 != v9)
      {
        v26 = *(v12 + 56);
        if (fabsf(v26) < 0.00000011921 || ((v27 = sqrtf((*(v21 + 56) * *(v21 + 56)) - (*(v17 + 56) * *(v17 + 56))), v28 = fabsf(v27), (LODWORD(v27) & 0x7FFFFFFFu) <= 0x7F7FFFFF) ? (v29 = (LODWORD(v26) & 0x7FFFFFFFu) >= 0x7F800000) : (v29 = 1), !v29 ? (v30 = v28 < 0.00000011921) : (v30 = 1), v30))
        {
          v43.i16[0] = 12;
          LOBYTE(v45) = 4;
          cnprint::CNPrinter::Print(&v43, &v45, "#rxbc,component estimate with zero uncertainty");
        }

        else
        {
          v31 = *(a1 + 80);
          v32 = *(v12 + 48) - v31;
          v33 = *(a1 + 72) + *(v21 + 48) - *(v17 + 48) - v31;
          v34 = 1.0 / (v26 * v26);
          v35 = 1.0 / (v27 * v27);
          v43.i8[0] = 2;
          *&v43.i64[1] = (v33 * v35 + v32 * v34) / (v34 + v35);
          *&v34 = sqrt(1.0 / (v34 + v35));
          v44 = LODWORD(v34);
          v45 = &v43;
          v36 = sub_1D0C34AEC(a1, &v43, &std::piecewise_construct, &v45);
          v38 = v43;
          *(v36 + 5) = v43;
          *(v36 + 14) = v44;
          v39 = raven::GnssReceiverBandCorrectionsFilter::TickFilterAndOverwriteCorrections((a1 + 24), a1, a3, a4, a5, v38, v37);
          if (cnprint::CNPrinter::GetLogLevel(v39) <= 1)
          {
            v42 = 12;
            v41 = 1;
            v45 = &v43;
            sub_1D0C34AEC(a1, &v43, &std::piecewise_construct, &v45);
            v45 = &v43;
            v40 = *(sub_1D0C34AEC(a1, &v43, &std::piecewise_construct, &v45) + 14);
            cnprint::CNPrinter::Print(&v42, &v41, "#rxbc,local rxbc estimate for GPS/GAL cohort,gps,%.1f,unc,%.1f,gal,%.1f,unc,%.1f,combined,%.1f,unc,%.1f,filtered,%.1f,unc,%.1f", v40);
          }
        }
      }
    }
  }
}

void raven::MinnesotaRfModelCompensator::OverwriteWithInternalEstimate(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  if (v4 == 2 || v4 == 8)
  {
    if (*(a1 + 88) == 1)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        v7 = a1 + 8;
        do
        {
          v8 = *(v6 + 32);
          v9 = v8 >= 2;
          v10 = v8 < 2;
          if (v9)
          {
            v7 = v6;
          }

          v6 = *(v6 + 8 * v10);
        }

        while (v6);
        if (v7 != a1 + 8 && *(v7 + 32) <= 2u)
        {
          v11 = *(v7 + 48) + *(a1 + 80);
          v12 = *(a2 + 4);
          v13 = vabdd_f64(v11, *(a2 + 1));
          v15 = hypotf(v12, v12);
          v16 = v15 > 0.0 && v13 / v15 <= 5.0;
          if (cnprint::CNPrinter::GetLogLevel(v14) <= 1)
          {
            v18 = 12;
            v17 = 1;
            cnprint::CNPrinter::Print(&v18, &v17, "#rxbc,local rxbc estimate,band,%d,mismatch ns,%.1f,is_used,%d,vendor,%.1f,unc,%.1f,estimate,%.1f,unc,%.1f", *a2, v13, v16, *(a2 + 1), *(a2 + 4), v11, v12);
          }

          if (v16)
          {
            *a2 = v4;
            *(a2 + 1) = v11;
            *(a2 + 4) = v12;
          }
        }
      }
    }
  }

  else if (v4 == 7)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      v20 = 12;
      v19 = 1;
      cnprint::CNPrinter::Print(&v20, &v19, "#rxbc,fixed E1 band correction,vendor,%.1f,unc,%.1f,fixed value,%.1f", *(a2 + 1), *(a2 + 4), *(a1 + 72));
    }

    *(a2 + 1) = *(a1 + 72);
    *(a2 + 4) = 0;
  }
}

uint64_t sub_1D0DE2F74(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1D0BCB594(result);

    JUMPOUT(0x1D387ECA0);
  }

  return result;
}

uint64_t *sub_1D0DE2FC0(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_1D0BCB594(v2 + 24);
    sub_1D0BCB540(v2, *(v2 + 8));

    JUMPOUT(0x1D387ECA0);
  }

  return result;
}

uint64_t raven::ConvertProtobufToAccessoryVehicleSpeedEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification *a2, raven::AccessoryVehicleSpeedEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(this + 80) & 1) == 0)
  {
    return 0;
  }

  v8 = *(this + 1);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v8, a2 + 8, 0, a4, a5);
  if (result)
  {
    if ((*(this + 80) & 2) == 0)
    {
      return 0;
    }

    v11 = *(this + 2);
    if (!v11)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::default_instance_ + 16);
    }

    result = raven::ConvertProtobufToRavenTime(v11, a2 + 104, 0, v9, v10);
    if (result)
    {
      *(a2 + 256) = 0;
      v12 = *(this + 7) - 1;
      if (v12 <= 3)
      {
        *(a2 + 256) = 0x4010203u >> (8 * v12);
      }

      v13 = *(this + 18);
      if (v13 <= 1)
      {
        *(a2 + 257) = v13;
      }

      *(a2 + 200) = *(this + 52);
      v14 = *(this + 12);
      *(a2 + 51) = v14;
      sub_1D0C4E048(a2 + 26, v14);
      sub_1D0C4E048(a2 + 29, *(a2 + 51));
      if (*(this + 12) < 1)
      {
        return 1;
      }

      v15 = 0;
      do
      {
        if (v15 >= *(this + 10))
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
        }

        v22[0] = *(*(this + 4) + 8 * v15);
        sub_1D0C4E0E8(a2 + 26, v22);
        if (v15 >= *(this + 16))
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
        }

        v22[0] = *(*(this + 7) + 8 * v15);
        sub_1D0C4E0E8(a2 + 29, v22);
        ++v15;
        v18 = *(this + 12);
      }

      while (v15 < v18);
      if (v18 <= 0)
      {
        return 1;
      }

      else
      {
        v16.i64[0] = *(*(a2 + 27) - 8);
        v22[0] = 0;
        v22[1] = 0;
        *v19.i64 = CNTimeSpan::SetTimeSpan(v22, 0, v16, v17);
        *(a2 + 1) = CNTimeSpan::operator+(a2 + 13, v22, v19, v20);
        *(a2 + 2) = v21;
        *(a2 + 24) = 0u;
        *(a2 + 40) = 0u;
        *(a2 + 56) = 0u;
        *(a2 + 72) = 0u;
        result = 1;
        *(a2 + 11) = 0;
        *(a2 + 12) = 0x7FF8000000000000;
      }
    }
  }

  return result;
}

void sub_1D0DE3270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t raven::ConvertProtobufToActivityInputEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionState *a2, raven::ActivityInputEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(this + 32) & 1) == 0)
  {
    return 0;
  }

  v8 = *(this + 1);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v8, a2 + 8, 0, a4, a5);
  if (result)
  {
    if ((*(this + 32) & 4) == 0)
    {
      return 0;
    }

    v9 = *(this + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
    }

    if ((*(v9 + 92) & 1) == 0)
    {
      return 0;
    }

    v10 = *(this + 2);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
    }

    if ((*(v10 + 92) & 2) == 0)
    {
      return 0;
    }

    v11 = *(this + 2);
    if (!v11)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
    }

    v12 = *(v11 + 8);
    if (v12 <= 11804)
    {
      if (v12 <= 63)
      {
        if (v12 <= 8)
        {
          v13 = 0;
          if (v12 > 3)
          {
            if (v12 > 5)
            {
              if (v12 != 6)
              {
                if (v12 != 7)
                {
                  goto LABEL_111;
                }

LABEL_116:
                *(a2 + 104) = v13;
                goto LABEL_117;
              }

LABEL_67:
              v13 = 4;
              goto LABEL_116;
            }

            if (v12 != 4)
            {
LABEL_106:
              v13 = 5;
              goto LABEL_116;
            }

LABEL_107:
            v13 = 2;
            goto LABEL_116;
          }

          if (v12 < 3)
          {
            goto LABEL_116;
          }

          if (v12 != 3)
          {
            goto LABEL_117;
          }

          goto LABEL_115;
        }

        if (v12 <= 55)
        {
          if (v12 > 40)
          {
            if (v12 != 41)
            {
              if (v12 != 52)
              {
                goto LABEL_117;
              }

              goto LABEL_106;
            }

            goto LABEL_107;
          }

          if ((v12 - 10) < 2)
          {
            goto LABEL_106;
          }

          if (v12 != 9)
          {
LABEL_117:
            *(a2 + 105) = 0;
            v19 = *(this + 2);
            if (!v19)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
              v19 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
            }

            v20 = *(v19 + 12);
            if (v20 > 1)
            {
              if (v20 != 3 && v20 != 2)
              {
                return 1;
              }
            }

            else
            {
              if (!v20)
              {
                return 0;
              }

              if (v20 != 1)
              {
                return 1;
              }
            }

            *(a2 + 105) = v20;
            return 1;
          }

LABEL_115:
          v13 = 1;
          goto LABEL_116;
        }

        if (v12 <= 61)
        {
          if (v12 == 56)
          {
            goto LABEL_106;
          }

          if (v12 != 61)
          {
            goto LABEL_117;
          }

          goto LABEL_115;
        }

        if (v12 != 62)
        {
          goto LABEL_115;
        }

LABEL_97:
        v13 = 9;
        goto LABEL_116;
      }

      if (v12 > 2100)
      {
        if (v12 > 3014)
        {
          if ((v12 - 3015) >= 2)
          {
            goto LABEL_117;
          }

          goto LABEL_115;
        }

        if (v12 != 2101)
        {
          if (v12 != 2105 && v12 != 2150)
          {
            goto LABEL_117;
          }

          goto LABEL_115;
        }

        goto LABEL_97;
      }

      if (v12 > 2009)
      {
        v15 = (v12 - 2010);
        if (v15 > 0x3D)
        {
          goto LABEL_117;
        }

        if (((1 << v15) & 0x2488004000000400) != 0)
        {
          goto LABEL_115;
        }

        if (((1 << v15) & 0x5000) == 0)
        {
          if (!v15)
          {
            goto LABEL_67;
          }

          goto LABEL_117;
        }

        goto LABEL_97;
      }

      if ((v12 - 64) >= 2)
      {
        if (v12 != 66)
        {
          if (v12 != 100)
          {
            goto LABEL_117;
          }

          goto LABEL_67;
        }

        goto LABEL_115;
      }

LABEL_111:
      v13 = 3;
      goto LABEL_116;
    }

    if (v12 <= 15651)
    {
      if (v12 > 15254)
      {
        if (v12 <= 15459)
        {
          if (v12 > 15349)
          {
            if (v12 == 15350)
            {
              goto LABEL_111;
            }

            v17 = 15360;
          }

          else
          {
            if (v12 == 15255)
            {
              goto LABEL_115;
            }

            v17 = 15330;
          }
        }

        else
        {
          if (v12 <= 15591)
          {
            if (v12 == 15460)
            {
              goto LABEL_111;
            }

            v14 = 15562;
            goto LABEL_110;
          }

          if (v12 == 15592)
          {
            goto LABEL_115;
          }

          if (v12 == 15610)
          {
            goto LABEL_111;
          }

          v17 = 15620;
        }
      }

      else
      {
        if (v12 > 15099)
        {
          if ((v12 - 15100) <= 0x32 && ((1 << (v12 + 4)) & 0x4000000000401) != 0)
          {
            goto LABEL_115;
          }

          if (v12 == 15230)
          {
            goto LABEL_111;
          }

          v14 = 15240;
LABEL_110:
          if (v12 != v14)
          {
            goto LABEL_117;
          }

          goto LABEL_111;
        }

        if (v12 <= 15029)
        {
          if (v12 != 11805)
          {
            v14 = 12150;
            goto LABEL_110;
          }

LABEL_127:
          v13 = 7;
          goto LABEL_116;
        }

        if (v12 == 15030)
        {
          goto LABEL_115;
        }

        v17 = 15055;
      }

LABEL_114:
      if (v12 != v17)
      {
        goto LABEL_117;
      }

      goto LABEL_115;
    }

    if (v12 > 18224)
    {
      if (v12 > 19149)
      {
        if (v12 <= 90602)
        {
          if (v12 == 19150)
          {
            goto LABEL_115;
          }

          v17 = 19160;
        }

        else
        {
          if (v12 == 90603)
          {
            goto LABEL_127;
          }

          if (v12 == 515652)
          {
            goto LABEL_115;
          }

          v17 = 515621;
        }

        goto LABEL_114;
      }

      if (v12 > 19029)
      {
        if (v12 == 19030)
        {
          goto LABEL_115;
        }

        v17 = 19090;
        goto LABEL_114;
      }

      if (v12 == 18225)
      {
        goto LABEL_115;
      }

      v18 = 18240;
    }

    else
    {
      if (v12 <= 15732)
      {
        v16 = v12 - 15652;
        if (v16 > 0x3A || ((1 << v16) & 0x400000000840101) == 0)
        {
          goto LABEL_117;
        }

        goto LABEL_115;
      }

      if (v12 <= 18069)
      {
        if (v12 != 15733)
        {
          if (v12 == 17150)
          {
            goto LABEL_107;
          }

          goto LABEL_117;
        }

        goto LABEL_115;
      }

      if (v12 == 18070)
      {
        goto LABEL_115;
      }

      v18 = 18200;
    }

    if (v12 != v18)
    {
      goto LABEL_117;
    }

    v13 = 6;
    goto LABEL_116;
  }

  return result;
}

uint64_t raven::ConvertProtobufToFitnessSessionEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver *a2, raven::FitnessSessionEvent *a3)
{
  v43 = 12;
  v42 = 3;
  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_5;
  }

  v5 = *(this + 2);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
  }

  if (*(v5 + 36))
  {
    v7 = *(this + 2);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
    }

    v6 = *(v7 + 16);
  }

  else
  {
LABEL_5:
    v6 = -1;
  }

  v8 = -1.0;
  v9 = -1.0;
  if ((*(this + 32) & 4) != 0)
  {
    v10 = *(this + 2);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
    }

    if ((*(v10 + 36) & 4) != 0)
    {
      v11 = *(this + 2);
      if (!v11)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
      }

      v12 = *(v11 + 24);
      if (!v12)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::default_instance_ + 24);
      }

      v9 = *(v12 + 8);
    }
  }

  if (*(this + 32))
  {
    v13 = *(this + 1);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 8);
    }

    v8 = *(v13 + 8);
  }

  cnprint::CNPrinter::Print(&v43, &v42, "#rwo,observer,activity_type,%d,start_time,%.6f,applicability_time,%.6f", v6, v9, v8);
  if ((*(this + 32) & 1) == 0)
  {
    return 0;
  }

  v17 = *(this + 1);
  if (!v17)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v17, a2 + 8, 0, v14, v15);
  if (result)
  {
    if ((*(this + 32) & 4) == 0)
    {
      return 0;
    }

    v18 = *(this + 2);
    if (!v18)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
    }

    if ((*(v18 + 36) & 1) == 0)
    {
      return 0;
    }

    v19 = *(this + 2);
    if (!v19)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v19 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
    }

    if ((*(v19 + 36) & 4) == 0)
    {
      return 0;
    }

    *(a2 + 424) = 0;
    v20 = *(a2 + 312);
    *(a2 + 248) = *(a2 + 40);
    v21 = *(a2 + 72);
    *(a2 + 264) = *(a2 + 56);
    *(a2 + 280) = v21;
    *(a2 + 296) = *(a2 + 88);
    *(a2 + 216) = *(a2 + 8);
    *(a2 + 232) = *(a2 + 24);
    if ((v20 & 1) == 0)
    {
      *(a2 + 312) = 1;
    }

    v22 = *(this + 2);
    if (!v22)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v22 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
    }

    if ((*(v22 + 36) & 4) != 0)
    {
      v23 = 0uLL;
      *(a2 + 7) = 0u;
      v24 = *(a2 + 208);
      *(a2 + 8) = 0u;
      *(a2 + 9) = 0u;
      *(a2 + 10) = 0u;
      *(a2 + 11) = 0u;
      *(a2 + 24) = 0;
      *(a2 + 25) = 0x7FF8000000000000;
      if ((v24 & 1) == 0)
      {
        *(a2 + 208) = 1;
      }

      v25 = *(this + 2);
      if (!v25)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
      }

      v26 = *(v25 + 24);
      if (!v26)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
        v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutUpdate::default_instance_ + 24);
      }

      if ((*(a2 + 208) & 1) == 0)
      {
        sub_1D0C42F28();
      }

      result = raven::ConvertProtobufToRavenTime(v26, a2 + 112, 1, v23, v21);
    }

    v27 = *(this + 2);
    if (!v27)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v27 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_ + 16);
    }

    v28 = *(v27 + 16);
    v29 = 2;
    if (v28 <= 15229)
    {
      if (v28 <= 2100)
      {
        if (v28 > 2009)
        {
          v33 = (v28 - 2010);
          if (v33 > 0x3D)
          {
            goto LABEL_128;
          }

          if (((1 << v33) & 0x2488004000005400) != 0)
          {
            goto LABEL_125;
          }

          if (v33)
          {
            goto LABEL_128;
          }

          goto LABEL_98;
        }

        if (v28 > 40)
        {
          v30 = (v28 - 61);
          if (v30 > 0x27)
          {
            goto LABEL_57;
          }

          if (((1 << (v28 - 61)) & 0x27) == 0)
          {
            if (((1 << (v28 - 61)) & 0x18) == 0)
            {
              if (v30 != 39)
              {
LABEL_57:
                if (v28 != 41)
                {
                  goto LABEL_128;
                }

                goto LABEL_126;
              }

              goto LABEL_98;
            }

LABEL_121:
            v29 = 7;
            goto LABEL_126;
          }

LABEL_125:
          v29 = 9;
          goto LABEL_126;
        }

        if (v28 != 4)
        {
          if (v28 != 6)
          {
            if (v28 == 8)
            {
              goto LABEL_94;
            }

LABEL_128:
            *(a2 + 52) = 513;
            v39 = *(a2 + 296);
            *(a2 + 24) = *(a2 + 280);
            *(a2 + 25) = v39;
            *(a2 + 416) = *(a2 + 312);
            v40 = *(a2 + 232);
            *(a2 + 20) = *(a2 + 216);
            *(a2 + 21) = v40;
            v41 = *(a2 + 264);
            result = 1;
            *(a2 + 22) = *(a2 + 248);
            *(a2 + 23) = v41;
            return result;
          }

LABEL_98:
          v29 = 4;
        }

LABEL_126:
        *(a2 + 104) = v29;
        result = 1;
        *(a2 + 105) = 1;
        return result;
      }

      if (v28 <= 12149)
      {
        if ((v28 - 2101) <= 0x31 && ((1 << (v28 - 53)) & 0x2000000000011) != 0 || (v28 - 3015) < 2)
        {
          goto LABEL_125;
        }

        v32 = 11805;
        goto LABEL_74;
      }

      if (v28 <= 15099)
      {
        if (v28 == 12150)
        {
LABEL_94:
          v29 = 3;
          goto LABEL_126;
        }

        if (v28 == 15030)
        {
          goto LABEL_125;
        }

        v37 = 15055;
        goto LABEL_124;
      }

      v38 = v28 - 15100;
      if (v38 > 0x32)
      {
        goto LABEL_128;
      }

      v35 = 1 << v38;
      v36 = 0x4000000000401;
LABEL_103:
      if ((v35 & v36) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_125;
    }

    if (v28 > 15732)
    {
      if (v28 > 19029)
      {
        if (v28 <= 19159)
        {
          if (v28 == 19030 || v28 == 19090)
          {
            goto LABEL_125;
          }

          if (v28 != 19150)
          {
            goto LABEL_128;
          }
        }

        else
        {
          if (v28 > 515620)
          {
            if (v28 == 515621)
            {
              goto LABEL_125;
            }

            v37 = 515652;
            goto LABEL_124;
          }

          if (v28 != 19160)
          {
            v32 = 90603;
LABEL_74:
            if (v28 != v32)
            {
              goto LABEL_128;
            }

            v29 = 6;
            goto LABEL_126;
          }
        }

        v29 = 8;
        goto LABEL_126;
      }

      if (v28 > 18199)
      {
        switch(v28)
        {
          case 18200:
            goto LABEL_115;
          case 18225:
            goto LABEL_125;
          case 18240:
LABEL_115:
            v29 = 5;
            goto LABEL_126;
        }

        goto LABEL_128;
      }

      if (v28 == 15733)
      {
        goto LABEL_125;
      }

      if (v28 == 17150)
      {
        goto LABEL_126;
      }

      v37 = 18070;
    }

    else if (v28 > 15591)
    {
      if (v28 > 15651)
      {
        v34 = v28 - 15652;
        if (v34 > 0x3A)
        {
          goto LABEL_128;
        }

        v35 = 1 << v34;
        v36 = 0x400000000840101;
        goto LABEL_103;
      }

      if (v28 == 15592)
      {
        goto LABEL_125;
      }

      if (v28 == 15610)
      {
        goto LABEL_121;
      }

      v37 = 15620;
    }

    else if (v28 > 15349)
    {
      if (v28 > 15459)
      {
        if (v28 == 15460)
        {
          goto LABEL_121;
        }

        v31 = 15562;
LABEL_120:
        if (v28 == v31)
        {
          goto LABEL_121;
        }

        goto LABEL_128;
      }

      if (v28 == 15350)
      {
        goto LABEL_121;
      }

      v37 = 15360;
    }

    else
    {
      if (v28 <= 15254)
      {
        if (v28 == 15230)
        {
          goto LABEL_121;
        }

        v31 = 15240;
        goto LABEL_120;
      }

      if (v28 == 15255)
      {
        goto LABEL_125;
      }

      v37 = 15330;
    }

LABEL_124:
    if (v28 == v37)
    {
      goto LABEL_125;
    }

    goto LABEL_128;
  }

  return result;
}

uint64_t raven::ConvertProtobufToFitnessSessionEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator *a2, raven::FitnessSessionEvent *a3)
{
  v52 = 12;
  v51 = 3;
  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_5;
  }

  v5 = *(this + 2);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
  }

  if ((*(v5 + 48) & 4) != 0)
  {
    v7 = *(this + 2);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    v6 = *(v7 + 40);
  }

  else
  {
LABEL_5:
    v6 = -1;
  }

  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_18;
  }

  v8 = *(this + 2);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
  }

  if ((*(v8 + 48) & 0x10) == 0)
  {
    goto LABEL_18;
  }

  v9 = *(this + 2);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
  }

  v10 = *(v9 + 32);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 32);
  }

  if ((*(v10 + 40) & 4) != 0)
  {
    v47 = *(this + 2);
    if (!v47)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v47 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    v48 = *(v47 + 32);
    if (!v48)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v48 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 32);
    }

    v11 = *(v48 + 24);
  }

  else
  {
LABEL_18:
    v11 = -1;
  }

  v12 = -1.0;
  v13 = -1.0;
  if ((*(this + 32) & 4) != 0)
  {
    v14 = *(this + 2);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    if ((*(v14 + 48) & 8) != 0)
    {
      v15 = *(this + 2);
      if (!v15)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
      }

      v16 = *(v15 + 24);
      if (!v16)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 24);
      }

      v13 = *(v16 + 8);
    }
  }

  if (*(this + 32))
  {
    v17 = *(this + 1);
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 8);
    }

    v12 = *(v17 + 8);
  }

  cnprint::CNPrinter::Print(&v52, &v51, "#rwo,mediator,event_type,%d,workout_type,%d,event_time,%.6f,applicability_time,%.6f", v6, v11, v13, v12);
  if ((*(this + 32) & 1) == 0)
  {
    return 0;
  }

  v21 = *(this + 1);
  if (!v21)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v21, a2 + 8, 0, v18, v19);
  if (result)
  {
    if ((*(this + 32) & 4) == 0)
    {
      return 0;
    }

    v23 = *(this + 2);
    if (!v23)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    if ((*(v23 + 48) & 4) == 0)
    {
      return 0;
    }

    v24 = *(this + 2);
    if (!v24)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v24 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    if ((*(v24 + 48) & 1) == 0)
    {
      return 0;
    }

    v25 = *(this + 2);
    if (!v25)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    if ((*(v25 + 48) & 0x10) == 0)
    {
      return 0;
    }

    v26 = *(this + 2);
    if (!v26)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    v27 = *(v26 + 32);
    if (!v27)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v27 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 32);
    }

    if ((*(v27 + 40) & 4) == 0)
    {
      return 0;
    }

    v28 = *(this + 2);
    if (!v28)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v28 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    if ((*(v28 + 48) & 8) != 0)
    {
      v29 = 0uLL;
      *(a2 + 216) = 0u;
      v30 = *(a2 + 312);
      *(a2 + 232) = 0u;
      *(a2 + 248) = 0u;
      *(a2 + 264) = 0u;
      *(a2 + 280) = 0u;
      *(a2 + 37) = 0;
      *(a2 + 38) = 0x7FF8000000000000;
      if ((v30 & 1) == 0)
      {
        *(a2 + 312) = 1;
      }

      v31 = *(this + 2);
      if (!v31)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v31 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
      }

      v32 = *(v31 + 24);
      if (!v32)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
        v32 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 24);
      }

      if ((*(a2 + 312) & 1) == 0)
      {
        goto LABEL_125;
      }

      result = raven::ConvertProtobufToRavenTime(v32, a2 + 216, 1, v29, v22);
    }

    v33 = *(this + 2);
    if (!v33)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v33 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    if (*(v33 + 48))
    {
      v34 = 0uLL;
      *(a2 + 7) = 0u;
      v35 = *(a2 + 208);
      *(a2 + 8) = 0u;
      *(a2 + 9) = 0u;
      *(a2 + 10) = 0u;
      *(a2 + 11) = 0u;
      *(a2 + 24) = 0;
      *(a2 + 25) = 0x7FF8000000000000;
      if ((v35 & 1) == 0)
      {
        *(a2 + 208) = 1;
      }

      v36 = *(this + 2);
      if (!v36)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v36 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
      }

      v37 = *(v36 + 8);
      if (!v37)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
        v37 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 8);
      }

      if ((*(a2 + 208) & 1) == 0)
      {
        goto LABEL_125;
      }

      result = raven::ConvertProtobufToRavenTime(v37, a2 + 112, 1, v34, v22);
    }

    v38 = *(this + 2);
    if (!v38)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v38 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    if ((*(v38 + 48) & 2) == 0)
    {
LABEL_85:
      *(a2 + 424) = 1;
      v43 = *(this + 2);
      if (!v43)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v43 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
      }

      v44 = *(v43 + 32);
      if (!v44)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v44 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 32);
      }

      v45 = *(v44 + 24);
      if (v45 > 0x3E)
      {
        v46 = 9;
      }

      else
      {
        v46 = byte_1D0E9C8DE[v45];
      }

      *(a2 + 104) = v46;
      v49 = *(this + 2);
      if (!v49)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v49 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
      }

      result = 0;
      v50 = *(v49 + 40);
      if (v50 > 12)
      {
        if (v50 > 15)
        {
          switch(v50)
          {
            case 16:
              LOBYTE(v50) = 3;
              break;
            case 17:
              LOBYTE(v50) = 4;
              break;
            case 18:
              return result;
            default:
              goto LABEL_117;
          }

LABEL_122:
          *(a2 + 105) = v50;
          return 1;
        }

        if (v50 != 13 && v50 != 14)
        {
          *(a2 + 105) = 2;
LABEL_118:
          result = 1;
          *(a2 + 104) = 1;
          return result;
        }
      }

      else
      {
        if (v50 > 2)
        {
          if ((v50 - 5) < 8)
          {
            return result;
          }

          if (v50 != 3 && v50 != 4)
          {
LABEL_117:
            if (*(a2 + 105) == 2)
            {
              goto LABEL_118;
            }

            return 1;
          }

          goto LABEL_122;
        }

        if (!v50)
        {
          *(a2 + 105) = 0;
          return 1;
        }

        if (v50 != 1)
        {
          if (v50 == 2)
          {
            return result;
          }

          goto LABEL_117;
        }
      }

      result = 1;
      *(a2 + 105) = 1;
      return result;
    }

    v39 = *(a2 + 416);
    v40 = 0uLL;
    *(a2 + 20) = 0u;
    *(a2 + 21) = 0u;
    *(a2 + 22) = 0u;
    *(a2 + 23) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 50) = 0;
    *(a2 + 51) = 0x7FF8000000000000;
    if ((v39 & 1) == 0)
    {
      *(a2 + 416) = 1;
    }

    v41 = *(this + 2);
    if (!v41)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v41 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_ + 16);
    }

    v42 = *(v41 + 16);
    if (!v42)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v42 = *(CoreNavigation::CLP::LogEntry::PrivateData::WorkoutEvent::default_instance_ + 16);
    }

    if (*(a2 + 416))
    {
      result = raven::ConvertProtobufToRavenTime(v42, a2 + 320, 1, v40, v22);
      goto LABEL_85;
    }

LABEL_125:
    sub_1D0C42F28();
  }

  return result;
}

uint64_t raven::ConvertProtobufToAltitudeEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel *a2, raven::AltitudeEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(this + 52) & 1) == 0)
  {
    return 0;
  }

  v8 = *(this + 1);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v8, a2 + 8, 0, a4, a5);
  if (result)
  {
    if ((~*(this + 13) & 6) != 0)
    {
      return 0;
    }

    v9 = *(this + 3);
    v10 = v9 < 0 || ((v9 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
    if (v10 && (v9 - 1) > 0xFFFFFFFFFFFFELL)
    {
      return 0;
    }

    else
    {
      *(a2 + 13) = *(this + 2);
      *(a2 + 14) = v9;
      return 1;
    }
  }

  return result;
}

uint64_t raven::ConvertProtobufToGEOMapBuildingDataEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData *a2, raven::GEOMapBuildingDataEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(this + 68) & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = *(this + 1);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 8);
  }

  v8 = raven::ConvertProtobufToRavenTime(v7, a2 + 8, 0, a4, a5);
  if ((v8 & 1) == 0)
  {
LABEL_12:
    LOWORD(__p[0]) = 12;
    LOBYTE(v56) = 4;
    cnprint::CNPrinter::Print(__p, &v56, "ConvertProtobufToGEOMapBuildingDataEvent, Missing / error in time-tag of GEOMapBuildingData message");
    return 0;
  }

  v9 = *(this + 7);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v8);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 56);
  }

  if ((*(v9 + 28) & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = *(this + 7);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v8);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 56);
  }

  if ((*(v10 + 28) & 2) == 0)
  {
LABEL_11:
    LOWORD(__p[0]) = 12;
    LOBYTE(v56) = 4;
    cnprint::CNPrinter::Print(__p, &v56, "ConvertProtobufToGEOMapBuildingDataEvent, Missing query location in GEOMapBuildingData message");
    return 0;
  }

  v12 = *(this + 7);
  v13 = v12;
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v8);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 56);
    v12 = *(this + 7);
  }

  if (fabs(*(v13 + 8)) > 90.0)
  {
    goto LABEL_20;
  }

  v14 = v12;
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v8);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 56);
    v12 = *(this + 7);
  }

  if (fabs(*(v14 + 16)) > 180.0)
  {
LABEL_20:
    LOWORD(__p[0]) = 12;
    LOBYTE(v56) = 4;
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v8);
      if (!*(this + 7))
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      }
    }

    cnprint::CNPrinter::Print(__p, &v56, "ConvertProtobufToGEOMapBuildingDataEvent, Invalid latitude or longitude value of query location,lat_deg,%.9lf,lon_deg,%.9lf");
    return 0;
  }

  if (v12)
  {
    *(a2 + 16) = *(v12 + 8) * 0.0174532925;
  }

  else
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v8);
    v12 = *(this + 7);
    *(a2 + 16) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 56) + 8) * 0.0174532925;
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v16);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_ + 56);
    }
  }

  *(a2 + 17) = *(v12 + 16) * 0.0174532925;
  sub_1D0DE4F58(a2 + 13);
  v43 = (a2 + 104);
  LogLevel = sub_1D0DE4FB8(a2 + 13, *(this + 6));
  if (*(this + 6) >= 1)
  {
    v18 = 0;
    v46 = vdupq_n_s64(0x7FF8000000000000uLL);
    v44 = a2;
    do
    {
      v19 = *(*(this + 2) + 8 * v18);
      v20 = *(v19 + 16);
      if (!v20)
      {
        LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
        if (LogLevel <= 1)
        {
          LOWORD(__p[0]) = 12;
          LOBYTE(v56) = 1;
          cnprint::CNPrinter::Print(__p, &v56, "ConvertProtobufToGEOMapBuildingDataEvent, Building with no sections, building is skipped.");
        }

        goto LABEL_82;
      }

      v21 = *(v19 + 52);
      if ((v21 & 4) != 0 && v20 == 1 && *(v19 + 40) >> 5 <= 0xC34uLL && *(**(v19 + 8) + 16) == 3)
      {
        LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
        if (LogLevel <= 1)
        {
          LOWORD(__p[0]) = 12;
          LOBYTE(v56) = 1;
          cnprint::CNPrinter::Print(__p, &v56, "ConvertProtobufToGEOMapBuildingDataEvent, skipped V2 Tiles ghost building, id, %llu");
        }

        goto LABEL_82;
      }

      v55 = 0;
      v53 = 0u;
      v54 = 0u;
      v22 = *(v19 + 16);
      if (v22)
      {
        if ((v22 & 0x80000000) == 0)
        {
          v49.i64[1] = &v54;
          sub_1D0DDCF38(&v54, v22);
        }

        sub_1D0C5663C();
      }

      if ((v21 & 2) != 0)
      {
        v23 = *(v19 + 32);
      }

      else
      {
        v23 = 0;
      }

      *&v53 = v23;
      if ((v21 & 4) != 0)
      {
        v24 = *(v19 + 40);
      }

      else
      {
        v24 = 0;
      }

      *(&v53 + 1) = v24;
      if (v23)
      {
        v45 = v18;
        if (*(v19 + 16) >= 1)
        {
          v25 = 0;
          while (1)
          {
            v26 = *(*(v19 + 8) + 8 * v25);
            if (!*(v26 + 16))
            {
              LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
              if (LogLevel <= 1)
              {
                LOWORD(__p[0]) = 12;
                LOBYTE(v56) = 1;
                cnprint::CNPrinter::Print(__p, &v56, "ConvertProtobufToGEOMapBuildingDataEvent, Building's section with missing coordinate data, section is skipped.");
              }

              goto LABEL_65;
            }

            v27 = *(v26 + 88);
            if ((v21 & 4) != 0)
            {
              break;
            }

            if ((~v27 & 6) == 0)
            {
              goto LABEL_59;
            }

            LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
            if (LogLevel <= 1)
            {
              LOWORD(__p[0]) = 12;
              LOBYTE(v56) = 1;
              cnprint::CNPrinter::Print(__p, &v56, "ConvertProtobufToGEOMapBuildingDataEvent, V1 Building's section with missing data, section is skipped.");
            }

LABEL_65:
            if (++v25 >= *(v19 + 16))
            {
              goto LABEL_66;
            }
          }

          if ((~v27 & 0xF8) != 0)
          {
            LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
            if (LogLevel <= 1)
            {
              LOWORD(__p[0]) = 12;
              LOBYTE(v56) = 1;
              cnprint::CNPrinter::Print(__p, &v56, "ConvertProtobufToGEOMapBuildingDataEvent, V2 Building's section with missing data, section is skipped.");
            }

            goto LABEL_65;
          }

LABEL_59:
          __p[1] = 0;
          v48 = 0;
          __p[0] = 0;
          v49 = v46;
          v50 = 0;
          v51 = v46;
          v52 = v46;
          v28 = *(v26 + 16);
          if (v28)
          {
            if ((v28 & 0x80000000) == 0)
            {
              sub_1D0BC40DC(__p, v28);
            }

            sub_1D0C5663C();
          }

          LogLevel = __p[0];
          goto LABEL_65;
        }

LABEL_66:
        a2 = v44;
        v18 = v45;
        if (v54 != *(&v54 + 1))
        {
          v29 = *(v44 + 14);
          v30 = *(v44 + 15);
          if (v29 >= v30)
          {
            v32 = 0xCCCCCCCCCCCCCCCDLL * ((v29 - *v43) >> 3);
            v33 = v32 + 1;
            if (v32 + 1 > 0x666666666666666)
            {
              sub_1D0C5663C();
            }

            v34 = 0xCCCCCCCCCCCCCCCDLL * ((v30 - *v43) >> 3);
            if (2 * v34 > v33)
            {
              v33 = 2 * v34;
            }

            if (v34 >= 0x333333333333333)
            {
              v35 = 0x666666666666666;
            }

            else
            {
              v35 = v33;
            }

            v49.i64[1] = v43;
            if (v35)
            {
              sub_1D0DDCEE0(v43, v35);
            }

            v36 = 40 * v32;
            *v36 = v53;
            *(v36 + 24) = 0;
            *(v36 + 32) = 0;
            *(v36 + 16) = 0;
            *(v36 + 16) = v54;
            *(v36 + 32) = v55;
            v54 = 0uLL;
            v55 = 0;
            v31 = 40 * v32 + 40;
            v37 = *(v44 + 13);
            v38 = *(v44 + 14);
            v39 = v36 + v37 - v38;
            sub_1D0DE9E48(v43, v37, v38, v39);
            v40 = *(v44 + 13);
            *(v44 + 13) = v39;
            *(v44 + 14) = v31;
            v41 = *(v44 + 15);
            *(v44 + 15) = 0;
            v48 = v40;
            v49.i64[0] = v41;
            __p[0] = v40;
            __p[1] = v40;
            sub_1D0DE9F0C(__p);
          }

          else
          {
            *v29 = v53;
            *(v29 + 24) = 0;
            *(v29 + 32) = 0;
            *(v29 + 16) = 0;
            *(v29 + 16) = v54;
            *(v29 + 32) = v55;
            v54 = 0uLL;
            v55 = 0;
            v31 = v29 + 40;
          }

          *(v44 + 14) = v31;
        }
      }

      else if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v56) = 1;
        cnprint::CNPrinter::Print(__p, &v56, "ConvertProtobufToGEOMapBuildingDataEvent, no building hash is given, building is skipped.");
      }

      __p[0] = &v54;
      sub_1D0DDD018(__p);
LABEL_82:
      ++v18;
    }

    while (v18 < *(this + 6));
  }

  if (*(this + 12) < 1)
  {
    return 1;
  }

  v42 = 0;
  do
  {
    __p[0] = *(*(this + 5) + 8 * v42);
    sub_1D0DEA3B0(a2 + 18, __p, __p);
    ++v42;
    result = 1;
  }

  while (v42 < *(this + 12));
  return result;
}

void sub_1D0DE4EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  *(v24 - 152) = a17;
  sub_1D0DDD018((v24 - 152));
  _Unwind_Resume(a1);
}

void sub_1D0DE4F58(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    do
    {
      v4 = v2 - 40;
      v5 = (v2 - 24);
      sub_1D0DDD018(&v5);
      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t *sub_1D0DE4FB8(uint64_t *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      sub_1D0DDCEE0(result, a2);
    }

    sub_1D0C5663C();
  }

  return result;
}

uint64_t raven::ConvertProtobufToBodyMetricsEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry *a2, raven::BodyMetricsEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(this + 32) & 1) == 0)
  {
    return 0;
  }

  v8 = *(this + 1);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v8, a2 + 8, 0, a4, a5);
  if (result)
  {
    if ((*(this + 32) & 4) != 0)
    {
      v9 = *(this + 2);
      if (!v9)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::default_instance_ + 16);
      }

      v10 = *(v9 + 44);
      if (v10 <= 7)
      {
        *(a2 + 104) = v10;
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t raven::ConvertProtobufToDeviceMotionAccelerationEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample *a2, raven::AccelerometerEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(this + 56) & 1) == 0)
  {
    return 0;
  }

  v8 = *(this + 1);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v8, a2 + 8, 0, a4, a5);
  if (result)
  {
    v9 = *(this + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
    }

    if ((*(v9 + 56) & 1) == 0)
    {
      return 0;
    }

    v10 = *(this + 2);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
    }

    if ((*(v10 + 56) & 2) != 0)
    {
      v11 = *(this + 2);
      if (!v11)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v12 = *(v11 + 8);
      if (!v12)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 8);
      }

      v13 = *(v12 + 16);
      v14 = *(this + 2);
      if (!v14)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v15 = *(v14 + 8);
      if (!v15)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 8);
      }

      v16 = *(v15 + 24);
      v17 = *(this + 2);
      if (!v17)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v18 = *(v17 + 8);
      if (!v18)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 8);
      }

      v19 = *(v18 + 32);
      v20 = *(this + 2);
      if (!v20)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v20 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v21 = *(v20 + 8);
      if (!v21)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 8);
      }

      v22 = *(v21 + 8);
      v23 = v19 + v19;
      v24 = *(this + 2);
      if (!v24)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v24 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v25 = v13 + v13;
      v26 = *(v24 + 16);
      if (!v26)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 16);
      }

      *(a2 + 13) = (v13 * v23 - v22 * (v16 + v16) - *(v26 + 8)) * 9.80665;
      v27 = *(this + 2);
      if (!v27)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v27 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v28 = v25 * v22 + v16 * v23;
      v29 = *(v27 + 16);
      if (!v29)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v29 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 16);
      }

      v30 = 1.0 - v13 * v25;
      *(a2 + 14) = (v28 - *(v29 + 12)) * 9.80665;
      v31 = *(this + 2);
      if (!v31)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v31 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v32 = v30 - v16 * (v16 + v16);
      v33 = *(v31 + 16);
      if (!v33)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v33 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 16);
      }

      *(a2 + 15) = (v32 - *(v33 + 16)) * 9.80665;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t raven::ConvertProtobufToDeviceMotionAttitudeEvent(uint64_t a1, uint64_t a2, signed int a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    return 0;
  }

  v52 = v10;
  v53 = v9;
  v54 = v8;
  v55 = v7;
  v56 = v5;
  v57 = v6;
  v15 = *(a1 + 8);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v15, a2 + 8, 0, a4, a5);
  if (result)
  {
    v16 = *(a1 + 16);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
    }

    if (*(v16 + 46) != 1)
    {
      return 0;
    }

    v17 = *(a1 + 16);
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
    }

    if ((*(v17 + 56) & 1) == 0 || (*(a1 + 56) & 0x40) == 0)
    {
      return 0;
    }

    v18 = *(a1 + 16);
    if (!v18)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
    }

    if ((*(v18 + 56) & 0x10) == 0)
    {
      return 0;
    }

    v19 = *(a1 + 16);
    if (!v19)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v19 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
    }

    v20 = *(v19 + 40);
    if (v20 >= 6)
    {
      result = cnprint::CNPrinter::GetLogLevel(result);
      if (result <= 1)
      {
        v51 = 12;
        v50 = 1;
        v21 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&v51, &v50, "t,%.3lf,WARNING: Device Motion, unknown mag calibration level", v22 + v21);
      }

      v20 = -1;
    }

    if (v20 >= a3)
    {
      v23 = *(a1 + 16);
      if (!v23)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v24 = *(v23 + 8);
      if (!v24)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v24 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 8);
      }

      v25 = *(v24 + 16);
      v26 = *(a1 + 16);
      if (!v26)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v27 = *(v26 + 8);
      if (!v27)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v27 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 8);
      }

      v28 = *(v27 + 24);
      v29 = *(a1 + 16);
      if (!v29)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v29 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v30 = *(v29 + 8);
      if (!v30)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v30 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 8);
      }

      v31 = *(v30 + 32);
      v32 = *(a1 + 16);
      if (!v32)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v32 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v33 = *(v32 + 8);
      if (!v33)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v33 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 8);
      }

      v34 = *(v33 + 8);
      v35 = sqrt(v28 * v28 + v25 * v25 + v31 * v31 + v34 * v34);
      if (fabs(v35) >= 2.22044605e-16)
      {
        v37 = v25 / v35;
        v38 = v28 / v35;
        v39 = v31 / v35;
        v36 = v34 / v35;
      }

      else
      {
        v36 = 1.0;
        v37 = 0.0;
        v38 = 0.0;
        v39 = 0.0;
      }

      *(a2 + 104) = v37;
      *(a2 + 112) = v38;
      *(a2 + 120) = v39;
      *(a2 + 128) = v36;
      v40 = *(a1 + 44) < 20.0;
      v41 = *(a1 + 16);
      if (!v41)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v41 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v42 = dbl_1D0E9C850[v40];
      v43 = *(v41 + 40);
      if (v43 >= 6)
      {
        if (cnprint::CNPrinter::GetLogLevel(result) <= 1)
        {
          v49 = 12;
          v48 = 1;
          v45 = (*(*a2 + 16))(a2);
          cnprint::CNPrinter::Print(&v49, &v48, "t,%.3lf,WARNING: Device Motion, unknown mag calibration level", v46 + v45);
        }

        v44 = 100.0;
      }

      else
      {
        v44 = dbl_1D0E9C920[v43];
      }

      v47 = v42 + v44;
      *(a2 + 136) = v47;
      *(a2 + 152) = 0;
      *(a2 + 160) = 0;
      *(a2 + 144) = 0;
      *(a2 + 168) = v47;
      *(a2 + 176) = 0;
      *(a2 + 184) = 0;
      *(a2 + 192) = v47;
      *(a2 + 200) = 0;
      *(a2 + 208) = v47;
      *(a2 + 216) = 513;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t raven::ConvertProtobufToDeviceMotionRotationRateEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample *a2, raven::RateGyroEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(this + 56) & 1) == 0)
  {
    return 0;
  }

  v8 = *(this + 1);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v8, a2 + 8, 0, a4, a5);
  if (result)
  {
    v9 = *(this + 2);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
    }

    if ((*(v9 + 56) & 4) != 0)
    {
      v10 = *(this + 2);
      if (!v10)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v11 = *(v10 + 24);
      if (!v11)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 24);
      }

      *(a2 + 13) = *(v11 + 8);
      v12 = *(this + 2);
      if (!v12)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v13 = *(v12 + 24);
      if (!v13)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 24);
      }

      *(a2 + 14) = *(v13 + 12);
      v14 = *(this + 2);
      if (!v14)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_ + 16);
      }

      v15 = *(v14 + 24);
      if (!v15)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionTypeDeviceMotion::default_instance_ + 24);
      }

      *(a2 + 15) = *(v15 + 16);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t raven::ConvertProtobufToMagnetometerEvent(float32x2_t *a1, uint64_t a2, int8x16_t a3, int8x16_t a4)
{
  if ((a1[4].i8[0] & 1) == 0)
  {
    return 0;
  }

  v7 = a1[1];
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::MagSample::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v7, a2 + 8, 0, a3, a4);
  if (result)
  {
    *(a2 + 104) = vcvtq_f64_f32(a1[2]);
    *(a2 + 120) = a1[3].f32[0];
    result = 1;
    *(a2 + 128) = 1;
  }

  return result;
}

uint64_t raven::ConvertProtobufToMapVectorEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::MapVector *a2, raven::MapVectorEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(this + 32) & 1) == 0)
  {
    return 0;
  }

  v8 = *(this + 1);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v8, a2 + 8, 0, a4, a5);
  if (result)
  {
    if ((*(this + 32) & 4) == 0)
    {
      return 0;
    }

    v11 = *(this + 2);
    if (!v11)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16);
    }

    if ((*(v11 + 96) & 1) == 0)
    {
      return 0;
    }

    v12 = *(this + 2);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16);
    }

    v13 = *(v12 + 8);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::DirectionOfTravel::default_instance_ + 8);
    }

    result = raven::ConvertProtobufToRavenTime(v13, a2 + 104, 0, v9, v10);
    if (result)
    {
      v14 = *(this + 2);
      if (v14)
      {
        *(a2 + 25) = *(v14 + 16);
      }

      else
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v14 = *(this + 2);
        *(a2 + 25) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 16);
        if (!v14)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
          v14 = *(this + 2);
          *(a2 + 26) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 24);
          if (!v14)
          {
            CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v16);
            v14 = *(this + 2);
            *(a2 + 32) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 32);
            if (!v14)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v17);
              v14 = *(this + 2);
              *(a2 + 33) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 40);
              if (!v14)
              {
                CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v18);
                v14 = *(this + 2);
                *(a2 + 27) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 80);
                if (!v14)
                {
                  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v19);
                  v14 = *(this + 2);
                  *(a2 + 28) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 56);
                  if (!v14)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v20);
                    v14 = *(this + 2);
                    *(a2 + 29) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 64);
                    if (!v14)
                    {
                      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v21);
                      v14 = *(this + 2);
                      *(a2 + 30) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 48);
                      if (!v14)
                      {
                        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v22);
                        v14 = *(this + 2);
                        *(a2 + 31) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 72);
                        if (!v14)
                        {
                          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v23);
                          v14 = *(this + 2);
                          *(a2 + 272) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 88);
                          if (!v14)
                          {
                            CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v24);
                            v14 = *(this + 2);
                            *(a2 + 273) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 89);
                            if (!v14)
                            {
                              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
                              v14 = *(this + 2);
                              *(a2 + 274) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16) + 90);
                              if (!v14)
                              {
                                CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v26);
                                v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_ + 16);
                              }

                              goto LABEL_31;
                            }

LABEL_30:
                            *(a2 + 274) = *(v14 + 90);
LABEL_31:
                            *(a2 + 275) = *(v14 + 91);
                            return 1;
                          }

LABEL_29:
                          *(a2 + 273) = *(v14 + 89);
                          goto LABEL_30;
                        }

LABEL_28:
                        *(a2 + 272) = *(v14 + 88);
                        goto LABEL_29;
                      }

LABEL_27:
                      *(a2 + 31) = *(v14 + 72);
                      goto LABEL_28;
                    }

LABEL_26:
                    *(a2 + 30) = *(v14 + 48);
                    goto LABEL_27;
                  }

LABEL_25:
                  *(a2 + 29) = *(v14 + 64);
                  goto LABEL_26;
                }

LABEL_24:
                *(a2 + 28) = *(v14 + 56);
                goto LABEL_25;
              }

LABEL_23:
              *(a2 + 27) = *(v14 + 80);
              goto LABEL_24;
            }

LABEL_22:
            *(a2 + 33) = *(v14 + 40);
            goto LABEL_23;
          }

LABEL_21:
          *(a2 + 32) = *(v14 + 32);
          goto LABEL_22;
        }
      }

      *(a2 + 26) = *(v14 + 24);
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t raven::ConvertProtobufToMountStateEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionState *a2, raven::MountStateEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(this + 32) & 1) == 0)
  {
    return 0;
  }

  v8 = *(this + 1);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v8, a2 + 8, 0, a4, a5);
  if (!result)
  {
    return result;
  }

  if ((*(this + 32) & 4) == 0)
  {
    return 0;
  }

  v9 = *(this + 2);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
  }

  if ((*(v9 + 92) & 4) == 0)
  {
    return 0;
  }

  v10 = *(this + 2);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
  }

  if ((*(v10 + 92) & 8) == 0)
  {
    return 0;
  }

  v11 = *(this + 2);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
  }

  v12 = *(v11 + 20);
  v13 = 0.0;
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = 0.5;
    }

    else if (v12 == 3)
    {
      v13 = 1.0;
    }
  }

  else
  {
    if (!v12)
    {
      return 0;
    }

    if (v12 == 1)
    {
      v13 = 0.25;
    }
  }

  v14 = *(this + 2);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
  }

  v15 = *(v14 + 16);
  result = 1;
  switch(v15)
  {
    case 2:
      *(a2 + 104) = 1;
      *(a2 + 15) = v13;
      goto LABEL_33;
    case 1:
      *(a2 + 104) = 3;
      *(a2 + 17) = v13;
LABEL_33:
      v16 = 1.0 - v13;
      goto LABEL_34;
    case 0:
      *(a2 + 104) = 0;
      v16 = 1.0;
LABEL_34:
      *(a2 + 14) = v16;
      break;
  }

  return result;
}

uint64_t raven::ConvertProtobufToMovingStateEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::MotionState *a2, raven::MovingStateEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(this + 32) & 1) == 0)
  {
    return 0;
  }

  v8 = *(this + 1);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v8, a2 + 8, 0, a4, a5);
  if (!result)
  {
    return result;
  }

  if ((*(this + 32) & 4) == 0)
  {
    return 0;
  }

  v9 = *(this + 2);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
  }

  if ((*(v9 + 92) & 1) == 0)
  {
    return 0;
  }

  v10 = *(this + 2);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
  }

  if ((*(v10 + 92) & 2) == 0)
  {
    return 0;
  }

  v11 = *(this + 2);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
  }

  v12 = *(v11 + 12);
  v13 = 0.0;
  if (v12 > 1)
  {
    if (v12 == 2 || v12 == 3)
    {
      v13 = 0.95;
    }
  }

  else
  {
    if (!v12)
    {
      return 0;
    }

    if (v12 == 1)
    {
      v13 = 0.8;
    }
  }

  v14 = *(this + 2);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_ + 16);
  }

  v15 = *(v14 + 8);
  result = 1;
  if (v15 > 11804)
  {
    if (v15 > 15651)
    {
      if (v15 <= 18199)
      {
        if (v15 <= 15732)
        {
          v18 = (v15 - 15652);
          if (v18 > 0x3A)
          {
            return result;
          }

          if (((1 << v18) & 0x400000000800101) != 0)
          {
            goto LABEL_89;
          }

          if (v18 != 18)
          {
            return result;
          }

          goto LABEL_86;
        }

        if (v15 == 15733 || v15 == 17150)
        {
          goto LABEL_89;
        }

        v17 = 18070;
      }

      else if (v15 > 19149)
      {
        if (v15 <= 90602)
        {
          if (v15 == 19150)
          {
            goto LABEL_89;
          }

          v17 = 19160;
        }

        else
        {
          if (v15 == 90603 || v15 == 515621)
          {
            goto LABEL_89;
          }

          v17 = 515652;
        }
      }

      else
      {
        if ((v15 - 18200) <= 0x28 && ((1 << (v15 - 24)) & 0x10002000001) != 0 || v15 == 19030)
        {
          goto LABEL_89;
        }

        v17 = 19090;
      }
    }

    else if (v15 > 15329)
    {
      if ((v15 - 15562) <= 0x3A && ((1 << (v15 + 54)) & 0x401000040000001) != 0 || (v15 - 15330) <= 0x1E && ((1 << (v15 + 30)) & 0x40100001) != 0)
      {
        goto LABEL_89;
      }

      v17 = 15460;
    }

    else if (v15 <= 15054)
    {
      if (v15 == 11805 || v15 == 12150)
      {
        goto LABEL_89;
      }

      v17 = 15030;
    }

    else
    {
      if ((v15 - 15100) <= 0x32 && ((1 << (v15 + 4)) & 0x4000000000401) != 0 || (v15 - 15230) <= 0x19 && ((1 << (v15 - 126)) & 0x2000401) != 0)
      {
        goto LABEL_89;
      }

      v17 = 15055;
    }

    if (v15 == v17)
    {
      goto LABEL_89;
    }

    return result;
  }

  if (v15 <= 2009)
  {
    if (v15 > 0x38)
    {
      goto LABEL_88;
    }

    if (((1 << v15) & 0x110020000000378) != 0)
    {
      goto LABEL_89;
    }

    if (((1 << v15) & 0xC06) != 0)
    {
      *(a2 + 104) = 1;
      *(a2 + 15) = v13;
LABEL_90:
      v19 = 1.0 - v13;
      goto LABEL_91;
    }

    if (v15 != 7)
    {
LABEL_88:
      if ((v15 - 61) > 0x27 || ((1 << (v15 - 61)) & 0x800000003FLL) == 0)
      {
        if (v15)
        {
          return result;
        }

        *(a2 + 104) = 0;
        v19 = 1.0;
LABEL_91:
        *(a2 + 14) = v19;
        return result;
      }

      goto LABEL_89;
    }

    goto LABEL_86;
  }

  if (v15 <= 2100)
  {
    v16 = v15 - 2010;
    if (v16 > 0x3D)
    {
      return result;
    }

    if (((1 << v16) & 0x2480000000005400) == 0)
    {
      if (((1 << v16) & 0x8004000000001) == 0)
      {
        return result;
      }

      goto LABEL_86;
    }

LABEL_89:
    *(a2 + 104) = 3;
    *(a2 + 17) = v13;
    goto LABEL_90;
  }

  if (v15 <= 2149)
  {
    if (v15 == 2101)
    {
      goto LABEL_89;
    }

    if (v15 != 2105)
    {
      return result;
    }

LABEL_86:
    *(a2 + 104) = 2;
    *(a2 + 16) = v13;
    goto LABEL_90;
  }

  if (v15 == 2150 || v15 == 3015)
  {
    goto LABEL_86;
  }

  if (v15 == 3016)
  {
    goto LABEL_89;
  }

  return result;
}

BOOL raven::ConvertProtobufToRavenPlatformInfoObject(raven *this, const CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo *a2, raven::RavenPlatformInfo *a3)
{
  CNPlatformInfo::CNPlatformInfo(&v9, this);
  *a2 = v9;
  *(a2 + 2) = v10;
  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 1));
  }

  *(a2 + 8) = __p;
  *(a2 + 3) = v12;
  HIBYTE(v12) = 0;
  LOBYTE(__p) = 0;
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 4));
    v6 = SHIBYTE(v12);
    *(a2 + 2) = v13;
    v7 = v14;
    v5 = v15;
    HIBYTE(v14) = 0;
    LOBYTE(v13) = 0;
    *(a2 + 6) = v7;
    *(a2 + 7) = v5;
    if (v6 < 0)
    {
      operator delete(__p);
      LODWORD(v5) = *(a2 + 14);
    }
  }

  else
  {
    *(a2 + 2) = v13;
    v4 = v15;
    *(a2 + 6) = v14;
    *(a2 + 7) = v4;
    LODWORD(v5) = v4;
  }

  result = 0;
  if (*a2 >= 2u)
  {
    if (v5)
    {
      return *(a2 + 15) != 0;
    }
  }

  return result;
}

uint64_t raven::ConvertProtobufToSignalEnvironmentEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment *a2, raven::SignalEnvironmentEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(this + 32) & 1) == 0)
  {
    return 0;
  }

  v21 = v5;
  v22 = v6;
  v10 = *(this + 1);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v10, a2 + 8, 0, a4, a5);
  if (result)
  {
    v11 = *(this + 8);
    if ((v11 & 6) == 0)
    {
      v20 = 12;
      v19 = 4;
      v13 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v20, &v19, "t,%.3lf,No signal environment", v14 + v13);
      return 0;
    }

    if ((v11 & 4) != 0)
    {
      v18 = *(this + 5);
      v15 = raven::ConvertProtobufToSignalEnvironmentType(&v18);
      if ((v11 & 2) == 0 || v15)
      {
        goto LABEL_14;
      }

      v17 = *(this + 4);
      v12 = &v17;
    }

    else
    {
      v16 = *(this + 4);
      v12 = &v16;
    }

    LOBYTE(v15) = raven::ConvertProtobufToSignalEnvironmentType(v12);
LABEL_14:
    *(a2 + 104) = v15;
    return 1;
  }

  return result;
}

uint64_t raven::ConvertProtobufToSignalEnvironmentType(unsigned int *a1)
{
  v1 = *a1;
  if (*a1 >= 7)
  {
    LOBYTE(v1) = 0;
  }

  return v1;
}

uint64_t raven::ConvertProtobufToStepCountEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::StepCount *a2, raven::StepCountEvent *a3)
{
  if ((*(this + 32) & 4) != 0)
  {
    v5 = *(this + 2);
    if (!v5)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCount::default_instance_ + 16);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::StepCountEntry(v25, v5);
    if ((v33 & 1) == 0)
    {
      goto LABEL_31;
    }

    v8 = v26;
    if (!v26)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 8);
    }

    v9 = raven::ConvertProtobufToRavenTime(v8, a2 + 8, 0, v6, v7);
    if ((v9 & 1) == 0)
    {
      goto LABEL_31;
    }

    if ((v33 & 0x8000) == 0)
    {
LABEL_22:
      if (!v32)
      {
        goto LABEL_25;
      }

      if (v32 <= 3)
      {
        *(a2 + 104) = v32;
LABEL_25:
        v14 = v33;
        if ((v33 & 0x10000) != 0)
        {
          *(a2 + 34) = v30;
          if ((v14 & 0x20) == 0)
          {
LABEL_27:
            if ((v14 & 0x800) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_36;
          }
        }

        else if ((v33 & 0x20) == 0)
        {
          goto LABEL_27;
        }

        *(a2 + 18) = v28;
        if ((v14 & 0x800) == 0)
        {
LABEL_28:
          if ((v14 & 8) == 0)
          {
LABEL_30:
            v3 = 1;
LABEL_32:
            CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::~StepCountEntry(v25);
            return v3;
          }

LABEL_29:
          *(a2 + 39) = v27;
          goto LABEL_30;
        }

LABEL_36:
        *(a2 + 38) = v29;
        if ((v14 & 8) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_29;
      }

LABEL_31:
      v3 = 0;
      goto LABEL_32;
    }

    v10 = v31;
    if (!v31)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v9);
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::default_instance_ + 104);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::AccelerometerPace(&v20, v10);
    v11 = v24;
    if (v24)
    {
      v16 = ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF && (*&v21 & 0x7FFFFFFFFFFFFFFFuLL) - 1 >= 0xFFFFFFFFFFFFFLL;
      v17 = 0.0;
      if (!v16)
      {
        v17 = 1.0 / v21;
      }

      *(a2 + 14) = v17;
      if ((v11 & 4) == 0)
      {
LABEL_14:
        if ((v11 & 2) == 0)
        {
LABEL_21:
          CoreNavigation::CLP::LogEntry::PrivateData::AccelerometerPace::~AccelerometerPace(&v20);
          goto LABEL_22;
        }

LABEL_15:
        v12 = ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF && (*&v22 & 0x7FFFFFFFFFFFFFFFuLL) - 1 >= 0xFFFFFFFFFFFFFLL;
        v13 = 0.0;
        if (!v12)
        {
          v13 = 1.0 / v22;
        }

        *(a2 + 16) = v13;
        goto LABEL_21;
      }
    }

    else if ((v24 & 4) == 0)
    {
      goto LABEL_14;
    }

    v18 = ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF && (*&v23 & 0x7FFFFFFFFFFFFFFFuLL) - 1 >= 0xFFFFFFFFFFFFFLL;
    v19 = 0.0;
    if (!v18)
    {
      v19 = 1.0 / v23;
    }

    *(a2 + 15) = v19;
    if ((v11 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  return 0;
}

void sub_1D0DE66C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  CoreNavigation::CLP::LogEntry::PrivateData::StepCountEntry::~StepCountEntry(va);
  _Unwind_Resume(a1);
}

uint64_t raven::ConvertProtobufToTunnelBridgeNotificationEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification *a2, raven::TunnelBridgeNotificationEvent *a3, int8x16_t a4, int8x16_t a5)
{
  v7 = *(this + 1);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v7, a2 + 8, 0, a4, a5);
  if (result)
  {
    if ((*(this + 32) & 4) == 0)
    {
      return 0;
    }

    v11 = *(this + 2);
    if (!v11)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
    }

    v12 = *(v11 + 8);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeAssistance::default_instance_ + 8);
    }

    result = raven::ConvertProtobufToRavenTime(v12, a2 + 104, 0, v9, v10);
    if (result)
    {
      v13 = *(this + 2);
      if (!v13)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
      }

      if ((*(v13 + 48) & 8) == 0)
      {
        return 0;
      }

      v14 = *(this + 2);
      if (!v14)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
      }

      if ((*(v14 + 48) & 2) == 0)
      {
        return 0;
      }

      v15 = *(this + 2);
      if (!v15)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
      }

      if ((*(v15 + 48) & 4) == 0)
      {
        return 0;
      }

      v16 = *(this + 2);
      if (!v16)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
      }

      if ((*(v16 + 48) & 0x20) == 0)
      {
        return 0;
      }

      v17 = *(this + 2);
      if (!v17)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
      }

      if ((*(v17 + 48) & 0x10) == 0)
      {
        return 0;
      }

      v18 = *(this + 2);
      if (!v18)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
      }

      if ((*(v18 + 48) & 0x40) == 0)
      {
        return 0;
      }

      v19 = *(this + 2);
      if (!v19)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v19 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
      }

      if ((*(v19 + 48) & 0x80) == 0)
      {
        return 0;
      }

      v20 = *(this + 2);
      if (v20)
      {
        *(a2 + 27) = *(v20 + 32);
      }

      else
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
        v20 = *(this + 2);
        *(a2 + 27) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16) + 32);
        if (!v20)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v21);
          v20 = *(this + 2);
          *(a2 + 25) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16) + 16);
          if (!v20)
          {
            CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v22);
            v20 = *(this + 2);
            *(a2 + 26) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16) + 24);
            if (!v20)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v23);
              v20 = *(this + 2);
              *(a2 + 225) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16) + 41);
              if (!v20)
              {
                CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v24);
                v20 = *(this + 2);
                *(a2 + 224) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16) + 40);
                if (!v20)
                {
                  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
                  v20 = *(this + 2);
                  *(a2 + 226) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16) + 42);
                  if (!v20)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v26);
                    v20 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_ + 16);
                  }

                  goto LABEL_40;
                }

LABEL_39:
                *(a2 + 226) = *(v20 + 42);
LABEL_40:
                *(a2 + 227) = *(v20 + 43);
                return 1;
              }

LABEL_38:
              *(a2 + 224) = *(v20 + 40);
              goto LABEL_39;
            }

LABEL_37:
            *(a2 + 225) = *(v20 + 41);
            goto LABEL_38;
          }

LABEL_36:
          *(a2 + 26) = *(v20 + 24);
          goto LABEL_37;
        }
      }

      *(a2 + 25) = *(v20 + 16);
      goto LABEL_36;
    }
  }

  return result;
}

uint64_t raven::ConvertProtobufFrameTypeToClientLocationReferenceFrameType(_DWORD *a1)
{
  if (*a1 == 2)
  {
    return 2;
  }

  else
  {
    return *a1 == 1;
  }
}

uint64_t raven::ConvertProtobufToTunnelEndPointAssistanceEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint *a2, raven::TunnelEndPointAssistanceEvent *a3, int8x16_t a4, int8x16_t a5)
{
  v7 = *(this + 1);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v7, a2 + 8, 0, a4, a5);
  if (result)
  {
    if ((*(this + 32) & 4) == 0)
    {
      return 0;
    }

    v11 = *(this + 2);
    if (!v11)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(result);
      v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::default_instance_ + 16);
    }

    v12 = *(v11 + 8);
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPointAssistance::default_instance_ + 8);
    }

    result = raven::ConvertProtobufToRavenTime(v12, a2 + 104, 0, v9, v10);
    if (result)
    {
      if ((~*(v11 + 124) & 0x7E) != 0)
      {
        if (cnprint::CNPrinter::GetLogLevel(result) <= 1)
        {
          v16 = 12;
          v15 = 1;
          cnprint::CNPrinter::Print(&v16, &v15, "tunnel end position assistance does not contain all required data");
        }

        return 0;
      }

      *(a2 + 200) = *(v11 + 16);
      *(a2 + 216) = *(v11 + 32);
      *(a2 + 29) = *(v11 + 48);
      v13 = *(v11 + 72);
      if (v13 == 2)
      {
        v14 = 2;
      }

      else
      {
        v14 = v13 == 1;
      }

      *(a2 + 240) = v14;
      return 1;
    }
  }

  return result;
}

uint64_t raven::ConvertProtobufToVelocityEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::Location *a2, raven::VelocityEvent *a3, raven::VelocityEvent *a4, double a5, int8x16_t a6)
{
  v7[1] = 0;
  v7[2] = 0;
  v7[0] = &unk_1F4CEF748;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0x7FF8000000000000;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0x7FF8000000000000;
  v30 = 0;
  v32 = vdupq_n_s64(0x7FF8000000000000uLL);
  v33 = v32;
  v34 = v32;
  v35 = v32;
  v36 = 0x7FF8000000000000;
  v38 = v32;
  v39 = v32;
  v40 = v32;
  v41 = v32;
  v42 = 0x7FF8000000000000;
  v31 = 0;
  v37 = 0;
  return raven::ConvertProtobufToVelocityEvent(this, v7, a2, a4, v32, a6);
}

uint64_t raven::ConvertProtobufToARSessionStatusEvent(cnprint::CNPrinter *a1, uint64_t a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(a2 + 44) & 4) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      LOWORD(v12) = 12;
      v11 = 1;
      cnprint::CNPrinter::Print(&v12, &v11, "ConvertProtobufToARSessionStatusEvent, mach continuous time not present");
    }

    return 0;
  }

  a4.i64[0] = *(a2 + 24);
  v12 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v12, 0, a4, a5);
  *(a3 + 8) = v12;
  v9 = *a1;
  if (*a1 > 0)
  {
    if (v9 == 1)
    {
      v10 = 2;
    }

    else
    {
      if (v9 != 2)
      {
        goto LABEL_12;
      }

      v10 = 3;
    }

    *(a3 + 104) = v10;
  }

  else
  {
    if (v9 != -1)
    {
      if (!v9)
      {
        result = 1;
        *(a3 + 104) = 1;
        return result;
      }

LABEL_12:
      if (cnprint::CNPrinter::GetLogLevel(v8) <= 1)
      {
        LOWORD(v12) = 12;
        v11 = 1;
        cnprint::CNPrinter::Print(&v12, &v11, "ConvertProtobufToARSessionStatusEvent, Invalid vision AR Session Status, %u");
      }

      return 0;
    }

    *(a3 + 104) = 0;
  }

  return 1;
}

uint64_t raven::ConvertProtobufToVIOEstimateEvent(raven *this, const CoreNavigation::CLP::LogEntry::Vision::VIOEstimation *a2, raven::VIOEstimateEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(this + 88) & 4) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      *v141 = 12;
      __p[0] = 1;
      cnprint::CNPrinter::Print(v141, __p, "ConvertProtobufVIOEstimateEvent, VIO applicable mach continuous time not present");
    }

    return 0;
  }

  v7 = *(this + 2);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(this);
    v7 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 16);
  }

  a4.i64[0] = *(v7 + 24);
  *v141 = 0uLL;
  CNTimeSpan::SetTimeSpan(v141, 0, a4, a5);
  v10 = *v141;
  *(a2 + 104) = *v141;
  *(a2 + 8) = v10;
  if ((*(this + 88) & 2) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v8) <= 1)
    {
      *v141 = 12;
      __p[0] = 1;
      (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v141, __p, "ConvertProtobufVIOEstimateEvent, t, %.3lf, VIO session start mach continuous time not present");
    }

    return 0;
  }

  v11 = *(this + 1);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(v8);
    v11 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 8);
  }

  v10.i64[0] = *(v11 + 24);
  *v141 = 0uLL;
  CNTimeSpan::SetTimeSpan(v141, 0, v10, v9);
  *(a2 + 200) = *v141;
  v13 = *(this + 22);
  if ((v13 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v12) <= 1)
    {
      *v141 = 12;
      __p[0] = 1;
      (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v141, __p, "ConvertProtobufVIOEstimateEvent,t, %.3lf, VIO Tracking Status not present");
    }

    return 0;
  }

  v14 = *(this + 20) + 1;
  if (v14 >= 6)
  {
    if (cnprint::CNPrinter::GetLogLevel(v12) <= 1)
    {
      *v141 = 12;
      __p[0] = 1;
      (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v141, __p, "ConvertProtobufVIOEstimateEvent, t, %.3lf, Invalid VIO Tracking State, %u");
    }

    return 0;
  }

  *(a2 + 296) = v14;
  if ((~v13 & 0x78) != 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v12) <= 1)
    {
      *v141 = 12;
      __p[0] = 1;
      (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v141, __p, "ConvertProtobufVIOEstimateEvent, t, %.3lf, VIO State/Cov not present");
    }

    return 0;
  }

  v15 = *(this + 3);
  if (!v15)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(v12);
    v15 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 24);
  }

  v16 = *(v15 + 8);
  v17 = *(v15 + 16);
  if (v16 != 8 * v17 || (v18 = *(v15 + 24), v19 = *(v15 + 56), v19 + v18 + *(v15 + 48) + *(v15 + 32) + *(v15 + 40) != v17))
  {
    LogLevel = cnprint::CNPrinter::GetLogLevel(v12);
    if (LogLevel <= 1)
    {
      *v141 = 12;
      __p[0] = 1;
      cnprint::CNPrinter::Print(v141, __p, "ConvertProtobufVIOInertialState, VIO Inertial State Info Integrity failed.");
    }

    goto LABEL_44;
  }

  if (v16 > 0xA8 || !v17 || v19 != 3 || v18 != 9)
  {
    goto LABEL_47;
  }

  v20 = *(this + 4);
  v21 = *(v20 + 23);
  if (v21 < 0)
  {
    v21 = v20[1];
  }

  if (v21 != v16)
  {
LABEL_47:
    LogLevel = cnprint::CNPrinter::GetLogLevel(v12);
    if (LogLevel <= 1)
    {
      *v141 = 12;
      __p[0] = 1;
      cnprint::CNPrinter::Print(v141, __p, "ConvertProtobufVIOInertialState, VIO Inertial State Info Sensibility checks failed.");
    }

    goto LABEL_44;
  }

  v22 = *(v15 + 20);
  v23 = *(v15 + 52);
  sub_1D0DEA260(__dst, v17);
  v24 = *(v20 + 23);
  if ((v24 & 0x8000000000000000) != 0)
  {
    v25 = v20;
    v20 = *v20;
    v24 = v25[1];
  }

  if (v24)
  {
    memmove(__dst[0], v20, v24);
  }

  v142 = 0x300000003;
  *&v141[8] = xmmword_1D0E76C10;
  v26 = v144;
  *v141 = &unk_1F4CD5DD0;
  v143 = v144;
  if (v22 > 0xFFFFFFF6)
  {
    v32 = 3;
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = (v22 + 9) - v22;
    v30 = (__dst[0] + 8 * v22);
    do
    {
      v31 = *v30++;
      v144[3 * v28 + v27] = v31;
      if (v27 == 2)
      {
        ++v28;
        v27 = 0;
      }

      else
      {
        ++v27;
      }

      --v29;
    }

    while (v29);
    v32 = *&v141[20];
    v26 = v143;
  }

  v35 = 0;
  v108 = 0x300000003;
  v106 = &unk_1F4CD5DD0;
  v109 = &v110;
  v107 = xmmword_1D0E76C10;
  v36 = 8 * v32;
  v37 = 40;
  do
  {
    v38 = 0;
    v39 = v37;
    do
    {
      *(&v106 + v39) = v26[v38++];
      v39 += 24;
    }

    while (v38 != 3);
    ++v35;
    v37 += 8;
    v26 = (v26 + v36);
  }

  while (v35 != 3);
  v113 = 0x300000003;
  v112 = xmmword_1D0E76C10;
  v111 = &unk_1F4CD5DD0;
  v114 = &v115;
  sub_1D0B89390(&v106, v141, &v111);
  v97 = 0x300000003;
  v95 = &unk_1F4CD5DD0;
  v96 = xmmword_1D0E76C10;
  v100 = 0u;
  v101 = 0;
  v103 = 0u;
  v98 = &v99;
  v99 = 0x3FF0000000000000;
  v102 = 0x3FF0000000000000;
  v104 = 0;
  v105 = 0x3FF0000000000000;
  v118 = 0x300000003;
  v117 = xmmword_1D0E76C10;
  v116 = &unk_1F4CD5DD0;
  v119 = &v120;
  sub_1D0BA5A78(&v111, &v95, &v116);
  v124 = 0x300000003;
  v121[0] = &unk_1F4CD5DD0;
  v40 = (DWORD1(v117) * v117);
  v41 = v126;
  v125 = v126;
  v121[1] = v117;
  v122 = v40;
  v123 = v117;
  if (v40 >= 1)
  {
    v42 = v119;
    do
    {
      v43 = *v42++;
      *v41++ = fabs(v43);
      --v40;
    }

    while (v40);
  }

  v129 = 0x300000003;
  v128 = xmmword_1D0E76C10;
  v127 = &unk_1F4CD5DD0;
  v130 = &v131;
  v138 = 0x300000003;
  v137 = xmmword_1D0E76C10;
  v136 = &unk_1F4CDEA18;
  v139 = v140;
  sub_1D0BBAD9C(v121, &v127, &v136);
  *&__p[24] = 0x300000003;
  *&__p[8] = xmmword_1D0E76C10;
  *__p = &unk_1F4CD5DD0;
  v133 = v134;
  v138 = 0x300000003;
  v137 = xmmword_1D0E76C10;
  v136 = &unk_1F4CDEA18;
  v139 = v140;
  sub_1D0BBAD9C(&v127, __p, &v136);
  if (fabs(*v133) <= 0.00001 && fabs(sub_1D0DEA1BC(v141) + -1.0) <= 0.00001)
  {
    sub_1D0D260A4(__p, v141);
    if (a2 + 304 != __p)
    {
      v57 = *&__p[16];
      *(a2 + 19) = *__p;
      *(a2 + 20) = v57;
    }

    *&__p[24] = 0x100000003;
    *&__p[8] = xmmword_1D0E7DCC0;
    *__p = &unk_1F4CDEB28;
    v133 = v134;
    if (v23 <= 0xFFFFFFFC)
    {
      v58 = 0;
      v59 = __dst[0] + 8 * v23;
      do
      {
        *&v134[v58] = *&v59[v58];
        v58 += 8;
      }

      while (v58 != 24);
    }

    sub_1D0BFA800(__p);
    v45 = (v61 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
    if ((v61 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      sub_1D0B894B0(a2 + 336, __p);
    }

    else
    {
      v92 = cnprint::CNPrinter::GetLogLevel(v60);
      if (v92 <= 1)
      {
        LOWORD(v127) = 12;
        LOBYTE(v121[0]) = 1;
        cnprint::CNPrinter::Print(&v127, v121, "ConvertProtobufVIOInertialState, NOTE: VIO Position Vector failed the sensibility check.");
      }
    }
  }

  else
  {
    if (cnprint::CNPrinter::GetLogLevel(v44) <= 1)
    {
      *__p = 12;
      LOBYTE(v127) = 1;
      cnprint::CNPrinter::Print(__p, &v127, "ConvertProtobufVIOInertialState, NOTE: VIO imu2vio rotation matrix failed the orthogonality check.");
    }

    v45 = 0;
  }

  LogLevel = __dst[0];
  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

  if (!v45)
  {
LABEL_44:
    if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
    {
      *v141 = 12;
      __p[0] = 1;
      (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v141, __p, "ConvertProtobufVIOEstimateEvent, t, %.3lf, Parsing Error in VIO Inertial State");
    }

    return 0;
  }

  if ((~*(this + 22) & 0x60) != 0)
  {
    v56 = cnprint::CNPrinter::GetLogLevel(LogLevel);
    if (v56 <= 1)
    {
      *v141 = 12;
      __p[0] = 1;
      cnprint::CNPrinter::Print(v141, __p, "ConvertProtobufVIOInertialCovariance, VIO Inertial State Var-Covariance not present.");
    }

    goto LABEL_123;
  }

  v46 = *(this + 5);
  if (!v46)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(LogLevel);
    v46 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 40);
  }

  v47 = *(v46 + 8);
  v48 = *(v46 + 16);
  v49 = *(v46 + 24);
  v50 = *(v46 + 56);
  v51 = *(v46 + 40);
  v52 = *(v46 + 32);
  v53 = *(v46 + 48);
  v54 = v50 + v49 + v51 + v52 + v53;
  if (v47 != 8 * v48 || v48 != v54 * v54)
  {
    v56 = cnprint::CNPrinter::GetLogLevel(LogLevel);
    if (v56 <= 1)
    {
      *v141 = 12;
      __p[0] = 1;
      cnprint::CNPrinter::Print(v141, __p, "ConvertProtobufVIOInertialCovariance, VIO Inertial State Covariance Info Integrity failed.");
    }

LABEL_123:
    if (cnprint::CNPrinter::GetLogLevel(v56) <= 1)
    {
      *v141 = 12;
      __p[0] = 1;
      (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v141, __p, "ConvertProtobufVIOEstimateEvent, t, %.3lf, Parsing Error in VIO Inertial State Var-Cov");
    }

    return 0;
  }

  if (v47 > 0x708 || !v48 || v50 != 3 || v49 != 3)
  {
    goto LABEL_121;
  }

  v62 = *(this + 6);
  v63 = *(v62 + 23);
  if (v63 < 0)
  {
    v63 = v62[1];
  }

  if (v63 != v47)
  {
LABEL_121:
    v56 = cnprint::CNPrinter::GetLogLevel(LogLevel);
    if (v56 <= 1)
    {
      *v141 = 12;
      __p[0] = 1;
      cnprint::CNPrinter::Print(v141, __p, "ConvertProtobufVIOInertialCovariance, VIO Inertial State Covariance Info sensibility checks failed.");
    }

    goto LABEL_123;
  }

  v93 = *(v46 + 52);
  v94 = *(v46 + 20);
  sub_1D0DEA260(__p, v48);
  v64 = *(v62 + 23);
  if ((v64 & 0x8000000000000000) != 0)
  {
    v65 = v62;
    v62 = *v62;
    v64 = v65[1];
  }

  if (v64)
  {
    memmove(*__p, v62, v64);
  }

  v142 = 0x300000003;
  *&v141[8] = xmmword_1D0E76C10;
  *v141 = &unk_1F4CD5DD0;
  v143 = v144;
  if (v94 <= 0xFFFFFFFC)
  {
    v66 = 0;
    v67 = *__p;
    v68 = v94 + v94 * (v51 + v52 + 6 + v53);
    v69 = v141;
    do
    {
      v70 = 40;
      v71 = v68;
      do
      {
        *&v69[v70] = *(v67 + 8 * v71++);
        v70 += 24;
      }

      while (v70 != 112);
      ++v66;
      v68 += v54;
      v69 += 8;
    }

    while (v66 != 3);
  }

  v72 = cntransformation::CNRigidTransformation::SetPrr(a2 + 304, v141);
  if (!v72)
  {
    if (cnprint::CNPrinter::GetLogLevel(v72) <= 1)
    {
      LOWORD(v127) = 12;
      LOBYTE(v121[0]) = 1;
      cnprint::CNPrinter::Print(&v127, v121, "ConvertProtobufVIOInertialCovariance, Cannot set/store the Orientation Covariance");
    }

    goto LABEL_129;
  }

  if (v93 <= 0xFFFFFFFC)
  {
    v73 = 0;
    v74 = *__p;
    v75 = v143;
    v76 = 8 * *&v141[20];
    v77 = v93 + v93 * (v51 + 6 + v52 + v53);
    do
    {
      v78 = v77;
      v79 = v75;
      v80 = 3;
      do
      {
        *v79 = *(v74 + 8 * v78);
        v79 = (v79 + v76);
        ++v78;
        --v80;
      }

      while (v80);
      ++v73;
      ++v75;
      v77 += v54;
    }

    while (v73 != 3);
  }

  v81 = cntransformation::CNRigidTransformation::SetPpp(a2 + 304, v141);
  if (!v81)
  {
    if (cnprint::CNPrinter::GetLogLevel(v81) <= 1)
    {
      LOWORD(v127) = 12;
      LOBYTE(v121[0]) = 1;
      cnprint::CNPrinter::Print(&v127, v121, "ConvertProtobufVIOInertialCovariance, Cannot set/store the IMU Position Covariance");
    }

LABEL_129:
    v90 = 0;
    goto LABEL_130;
  }

  if (v94 <= 0xFFFFFFFC)
  {
    v82 = 0;
    v83 = *__p;
    v84 = v143;
    v85 = 8 * *&v141[20];
    v86 = v93 + v94 * v54;
    do
    {
      if (v93 <= 0xFFFFFFFC)
      {
        v87 = v86;
        v88 = v84;
        v89 = 3;
        do
        {
          *v88 = -*(v83 + 8 * v87);
          v88 = (v88 + v85);
          ++v87;
          --v89;
        }

        while (v89);
      }

      ++v82;
      ++v84;
      v86 += v54;
    }

    while (v82 != 3);
  }

  v90 = 1;
  if (*&v141[8] == 3 && *&v141[12] == 3)
  {
    sub_1D0B894B0(a2 + 624, v141);
    *(a2 + 736) = 1;
  }

LABEL_130:
  v56 = *__p;
  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  if ((v90 & 1) == 0)
  {
    goto LABEL_123;
  }

  *(a2 + 1185) = sub_1D0DE79EC(*(this + 7), *(this + 22), a2 + 104);
  result = 1;
  *(a2 + 1184) = 1;
  return result;
}

void sub_1D0DE7994(_Unwind_Exception *a1)
{
  v2 = STACK[0x2D0];
  if (STACK[0x2D0])
  {
    STACK[0x2D8] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0DE79EC(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 0x80) == 0)
  {
    return 1;
  }

  v5 = a1;
  if (!a1)
  {
    CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(0);
    v5 = *(CoreNavigation::CLP::LogEntry::Vision::VIOEstimation::default_instance_ + 56);
  }

  if (*(v5 + 16) == 4)
  {
    v6 = 0;
    v88 = 0x400000004;
    v87 = xmmword_1D0E7DCD0;
    v86 = &unk_1F4CDEB70;
    v89 = &v90;
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v70);
      }

      v7 = *(*(v5 + 8) + 8 * v6);
      if (*(v7 + 16) != 4)
      {
        break;
      }

      v8 = *(v7 + 8);
      v9 = &v89[HIDWORD(v87) * v6];
      *v9 = vcvtq_f64_f32(*v8);
      v9[1] = vcvtq_f64_f32(v8[1]);
      if (++v6 == 4)
      {
        v74[0] = 0x100000000;
        v82 = 0x100000003;
        v80 = &unk_1F4CDEAA0;
        v83 = &v84;
        v81 = xmmword_1D0E7DCC0;
        v85 = 2;
        v84 = 0x100000000;
        sub_1D0BADC74(&v70, &v86, &v80, &v80);
        sub_1D0BE0DE8(v75, &v70);
        v10 = v77;
        v11 = v76;
        v41 = 0x300000003;
        v36 = &unk_1F4CD5DD0;
        v42 = v43;
        v37 = v77;
        v38 = v76;
        v39 = v76 * v77;
        v40 = v77;
        if (v77)
        {
          v12 = 0;
          v13 = 0;
          v14 = v78;
          v15 = v79;
          do
          {
            v16 = v12;
            v17 = v13;
            for (i = v11; i; --i)
            {
              v43[v17] = *(v15 + 8 * v16);
              v17 += v10;
              ++v16;
            }

            ++v13;
            v12 += v14;
          }

          while (v13 != v10);
        }

        v46 = 0x300000003;
        v45 = xmmword_1D0E76C10;
        v44 = &unk_1F4CD5DD0;
        v47 = &v48;
        sub_1D0B89390(&v36, v75, &v44);
        v27 = 0x300000003;
        v25 = &unk_1F4CD5DD0;
        v26 = xmmword_1D0E76C10;
        v30 = 0u;
        v31 = 0;
        v33 = 0u;
        v28 = &v29;
        v29 = 0x3FF0000000000000;
        v32 = 0x3FF0000000000000;
        v34 = 0;
        v35 = 0x3FF0000000000000;
        v51 = 0x300000003;
        v50 = xmmword_1D0E76C10;
        v49 = &unk_1F4CD5DD0;
        v52 = &v53;
        sub_1D0BA5A78(&v44, &v25, &v49);
        v57 = 0x300000003;
        v54[0] = &unk_1F4CD5DD0;
        v19 = (DWORD1(v50) * v50);
        v20 = v59;
        v58 = v59;
        v54[1] = v50;
        v55 = v19;
        v56 = v50;
        if (v19 >= 1)
        {
          v21 = v52;
          do
          {
            v22 = *v21++;
            *v20++ = fabs(v22);
            --v19;
          }

          while (v19);
        }

        v62 = 0x300000003;
        v61 = xmmword_1D0E76C10;
        v60 = &unk_1F4CD5DD0;
        v63 = &v64;
        v72 = 0x300000003;
        v71 = xmmword_1D0E76C10;
        v70 = &unk_1F4CDEA18;
        v73 = v74;
        sub_1D0BBAD9C(v54, &v60, &v70);
        v67 = 0x300000003;
        v66 = xmmword_1D0E76C10;
        v65 = &unk_1F4CD5DD0;
        v68 = &v69;
        v72 = 0x300000003;
        v71 = xmmword_1D0E76C10;
        v70 = &unk_1F4CDEA18;
        v73 = v74;
        sub_1D0BBAD9C(&v60, &v65, &v70);
        if (fabs(*v68) <= 0.00001 && (v93 = 0x100000003, v92 = xmmword_1D0E7DCC0, v91 = &unk_1F4CDEAA0, v94 = &v95, v72 = 0x300000003, v71 = xmmword_1D0E76C10, v70 = &unk_1F4CD5DD0, v73 = v74, fabs(sub_1D0BEC1D8(v75, &v91, &v70) + -1.0) <= 0.00001))
        {
          v24 = cntransformation::CNRigidTransformation::SetTransformationMatrix(a3 + 640, &v86);
          if (v24)
          {
            return 1;
          }

          if (cnprint::CNPrinter::GetLogLevel(v24) <= 1)
          {
            LOWORD(v70) = 12;
            LOBYTE(v65) = 1;
            cnprint::CNPrinter::Print(&v70, &v65, "ConvertProtobufVIOCameraPose, Cannot set/store the vio2camARKit Transformation Matrix.");
          }
        }

        else if (cnprint::CNPrinter::GetLogLevel(v23) <= 1)
        {
          LOWORD(v70) = 12;
          LOBYTE(v65) = 1;
          cnprint::CNPrinter::Print(&v70, &v65, "ConvertProtobufVIOCameraPose, NOTE: ARKit camera pose rotation matrix failed the orthogonality check.");
        }

        return 0;
      }
    }
  }

  return 0;
}

uint64_t raven::ConvertProtobufToVLLocalizationEvent(raven *this, const CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult *a2, const CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *a3, raven::VLLocalizationEvent *a4, int8x16_t a5, int8x16_t a6)
{
  if ((*(a2 + 44) & 4) != 0)
  {
    a5.i64[0] = *(a2 + 3);
    *&v128[8] = 0;
    *v128 = 0;
    CNTimeSpan::SetTimeSpan(v128, 0, a5, a6);
    v10.i64[1] = *&v128[8];
    *(a3 + 8) = *v128;
    if (*(this + 56))
    {
      v11 = *(this + 1);
      if (!v11)
      {
        CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(v8);
        v11 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ + 8);
      }

      v10.i64[0] = *(v11 + 24);
      *&v128[8] = 0;
      *v128 = 0;
      CNTimeSpan::SetTimeSpan(v128, 0, v10, v9);
      *(a3 + 104) = *v128;
      v13 = *(this + 14);
      if ((v13 & 0x10) == 0 || ((v14 = *(this + 12), v14 >= 0.0) ? (v15 = v14 > 1.0) : (v15 = 1), v15))
      {
        if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
        {
          *v128 = 12;
          LOBYTE(v118) = 1;
          (*(*a3 + 16))(a3);
          cnprint::CNPrinter::Print(v128, &v118, "ConvertProtobufToVLLocalizationEvent, t, %.3lf, VL Estimation Confidence not present or wrong");
        }
      }

      else
      {
        *(a3 + 136) = v14;
        if ((v13 & 4) != 0)
        {
          v16 = *(this + 3);
          if (!v16)
          {
            CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(LogLevel);
            v16 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ + 24);
          }

          if (*(v16 + 16) == 4)
          {
            v17 = 0;
            v120 = 0x400000004;
            v119 = xmmword_1D0E7DCD0;
            v118 = &unk_1F4CDEB70;
            v121 = &v122;
            while (1)
            {
              if (v17 >= *(v16 + 16))
              {
                wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v128);
              }

              v18 = *(*(v16 + 8) + 8 * v17);
              if (*(v18 + 16) != 4)
              {
                break;
              }

              v19 = *(v18 + 8);
              v20 = &v121[HIDWORD(v119) * v17];
              *v20 = *v19;
              v20[1] = v19[1];
              v20[2] = v19[2];
              v20[3] = v19[3];
              if (++v17 == 4)
              {
                v131[0] = 0x100000000;
                v114 = 0x100000003;
                v112 = &unk_1F4CDEAA0;
                v115 = &v116;
                v113 = xmmword_1D0E7DCC0;
                v117 = 2;
                v116 = 0x100000000;
                sub_1D0BADC74(v128, &v118, &v112, &v112);
                sub_1D0BE0DE8(v73, v128);
                v22 = v74;
                v21 = v75;
                *(&v88 + 1) = 0x300000003;
                *&v87 = &unk_1F4CD5DD0;
                v89 = v90;
                *(&v87 + 1) = __PAIR64__(v74, v75);
                LODWORD(v88) = v74 * v75;
                DWORD1(v88) = v75;
                if (v75)
                {
                  v23 = 0;
                  v24 = 0;
                  v25 = v76;
                  v26 = v77;
                  do
                  {
                    v27 = v23;
                    v28 = v24;
                    for (i = v22; i; --i)
                    {
                      v90[v28] = v26[v27];
                      v28 += v21;
                      ++v27;
                    }

                    ++v24;
                    v23 += v25;
                  }

                  while (v24 != v21);
                }

                v93 = 0x300000003;
                v92 = xmmword_1D0E76C10;
                v91 = &unk_1F4CD5DD0;
                v94 = &v95;
                sub_1D0B89390(&v87, v73, &v91);
                *&v78[24] = 0x300000003;
                *v78 = &unk_1F4CD5DD0;
                *&v78[8] = xmmword_1D0E76C10;
                v81 = 0u;
                v82 = 0;
                v84 = 0u;
                v79 = &v80;
                v80 = 0x3FF0000000000000;
                v83 = 0x3FF0000000000000;
                v85 = 0;
                v86 = 0x3FF0000000000000;
                v98 = 0x300000003;
                v97 = xmmword_1D0E76C10;
                v96 = &unk_1F4CD5DD0;
                v99 = &v100;
                sub_1D0BA5A78(&v91, v78, &v96);
                v104 = 0x300000003;
                v101[0] = &unk_1F4CD5DD0;
                v30 = (DWORD1(v97) * v97);
                v31 = v106;
                v105 = v106;
                v101[1] = v97;
                v102 = v30;
                v103 = v97;
                if (v30 >= 1)
                {
                  v32 = v99;
                  do
                  {
                    v33 = *v32++;
                    *v31++ = fabs(v33);
                    --v30;
                  }

                  while (v30);
                }

                v109 = 0x300000003;
                v108 = xmmword_1D0E76C10;
                v107 = &unk_1F4CD5DD0;
                v110 = v111;
                v129 = 0x300000003;
                *&v128[8] = xmmword_1D0E76C10;
                *v128 = &unk_1F4CDEA18;
                v130 = v131;
                sub_1D0BBAD9C(v101, &v107, v128);
                v70 = 0x300000003;
                v68 = &unk_1F4CD5DD0;
                v69 = xmmword_1D0E76C10;
                v71 = v72;
                v129 = 0x300000003;
                *&v128[8] = xmmword_1D0E76C10;
                *v128 = &unk_1F4CDEA18;
                v130 = v131;
                sub_1D0BBAD9C(&v107, &v68, v128);
                if (fabs(*v71) > 0.00001 || (v125 = 0x100000003, v124 = xmmword_1D0E7DCC0, v123 = &unk_1F4CDEAA0, v126 = &v127, v129 = 0x300000003, *&v128[8] = xmmword_1D0E76C10, *v128 = &unk_1F4CD5DD0, v130 = v131, fabs(sub_1D0BEC1D8(v73, &v123, v128) + -1.0) > 0.00001))
                {
                  LogLevel = cnprint::CNPrinter::GetLogLevel(v34);
                  if (LogLevel <= 1)
                  {
                    *v128 = 12;
                    LOBYTE(v68) = 1;
                    cnprint::CNPrinter::Print(v128, &v68, "ConvertProtobufToVLLocalizationEvent, NOTE: VL rotation matrix failed the orthogonality check.");
                  }

                  break;
                }

                v70 = 0x100000001;
                v68 = &unk_1F4CDF158;
                *&v36 = 0x100000001;
                *(&v36 + 1) = 0x100000001;
                v69 = v36;
                v71 = v72;
                v72[0] = 3;
                sub_1D0C51DC8(v128, &v118, &v112, &v68);
                sub_1D0BBA094(v101, v128);
                v70 = 0x100000003;
                v68 = &unk_1F4CDEB28;
                v69 = xmmword_1D0E7DCC0;
                v71 = v72;
                v129 = 0x100000134;
                *&v128[8] = xmmword_1D0E7DD20;
                *v128 = &unk_1F4CDEC90;
                v130 = v131;
                v109 = 0x100000003;
                v108 = xmmword_1D0E7DCC0;
                v107 = &unk_1F4CDEB28;
                v110 = v111;
                sub_1D0BFB1AC(v101, &v68, v128, &v107, "2");
                if ((v38 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
                {
                  LogLevel = cnprint::CNPrinter::GetLogLevel(v37);
                  if (LogLevel <= 1)
                  {
                    *v128 = 12;
                    LOBYTE(v68) = 1;
                    cnprint::CNPrinter::Print(v128, &v68, "ConvertProtobufToVLLocalizationEvent, NOTE: VL Position Vector failed the sensibility check.");
                  }

                  break;
                }

                v39 = cntransformation::CNRigidTransformation::SetTransformationMatrix(a3 + 200, &v118);
                if ((v39 & 1) == 0)
                {
                  LogLevel = cnprint::CNPrinter::GetLogLevel(v39);
                  if (LogLevel <= 1)
                  {
                    *v128 = 12;
                    LOBYTE(v68) = 1;
                    cnprint::CNPrinter::Print(v128, &v68, "ConvertProtobufToVLLocalizationEvent, Cannot set/store the cam3DV2ecef Transformation Matrix.");
                  }

                  break;
                }

                v40 = sub_1D0DE8D2C(*(this + 4), *(this + 14), a3);
                if (v40)
                {
                  sub_1D0DE8F50(a3 + 640, a3 + 200);
                  sub_1D0BFA9C4(3, 3, &v107);
                  v41 = SHIDWORD(v108);
                  v42 = v110;
                  *&v110[16 * SHIDWORD(v108)] = 0xBFF0000000000000;
                  *&v42[8 * v41 + 8] = 0xBFF0000000000000;
                  *(v42 + 2) = 0xBFF0000000000000;
                  sub_1D0D260A4(&v91, &v107);
                  v87 = 0u;
                  v88 = 0u;
                  if (&v87 != (a3 + 640))
                  {
                    v43 = *(a3 + 41);
                    v87 = *(a3 + 40);
                    v88 = v43;
                  }

                  cnrotation::Cat(&v87, &v91, v78);
                  if (a3 + 640 != v78)
                  {
                    v44 = *&v78[16];
                    *(a3 + 40) = *v78;
                    *(a3 + 41) = v44;
                  }

                  cnrotation::CNRotation::drdq(v78, v73);
                  cnrotation::CNRotation::dqaqdqa(&v91, v128);
                  sub_1D0D54D0C(v73, v128, &v118);
                  cnrotation::CNRotation::dqdr(&v87, &v68);
                  sub_1D0D54C8C(&v118, &v68, v101);
                  sub_1D0BE0DE8(v128, a3 + 736);
                  sub_1D0BE0DE8(&v118, a3 + 960);
                  sub_1D0C1B688(v101, v128, &v68);
                  sub_1D0C1B708(v101, &v96);
                  sub_1D0C1B688(&v68, &v96, v73);
                  cntransformation::CNRigidTransformation::SetPrr(a3 + 640, v73);
                  sub_1D0C1B688(v101, &v118, v73);
                  if (v74 == 3 && v75 == 3)
                  {
                    sub_1D0B894B0(a3 + 960, v73);
                    *(a3 + 1072) = 1;
                  }

                  *(a3 + 1080) = 1;
                  sub_1D0BE0DE8(v73, a3 + 848);
                  sub_1D0BFA800(a3 + 672);
                  v48 = (*v77 < 0 || ((*v77 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*v77 - 1) > 0xFFFFFFFFFFFFELL;
                  v56 = !v48 && ((v49 = v77[v76 + 1], v49 >= 0) ? (v50 = ((v49 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) : (v50 = 1), v50 ? (v51 = (v49 - 1) > 0xFFFFFFFFFFFFELL) : (v51 = 0), !v51 && ((v52 = v77[2 * v76 + 2], v52 >= 0) ? (v53 = ((v52 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) : (v53 = 1), v53 ? (v54 = (v52 - 1) > 0xFFFFFFFFFFFFELL) : (v54 = 0), !v54)) && v46 > 3185504.5 && (*&v46 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
                  if (!cnprint::CNPrinter::GetLogLevel(v45))
                  {
                    LOWORD(v123) = 12;
                    LOBYTE(v112) = 0;
                    v57 = (*(*a3 + 16))(a3);
                    v59 = v58;
                    v60 = *(a3 + 14);
                    v68 = *(a3 + 13);
                    v61 = v68;
                    *&v69 = v60;
                    v62 = (*(*a3 + 16))(a3);
                    *v63.i64 = v59;
                    *v64.i64 = v57;
                    v96 = v62;
                    *&v97 = v65;
                    v66 = CNTimeSpan::operator-(&v68, &v96, v63, v64);
                    cnprint::CNPrinter::Print(&v123, &v112, "valid VLF data, t, %.3lf, applicability time,  %.3lf [dt %.3lf]", v59 + v57, v61 + v60, v67 + v66);
                  }

                  return v56 & *(a3 + 1080);
                }

                if (cnprint::CNPrinter::GetLogLevel(v40) <= 1)
                {
                  *v128 = 12;
                  LOBYTE(v118) = 1;
                  (*(*a3 + 16))(a3);
                  cnprint::CNPrinter::Print(v128, &v118, "ConvertProtobufToVLLocalizationEvent, t, %.3lf, Error in parsing the VL 6x6 Covariance Matrix");
                }

                return 0;
              }
            }
          }
        }

        if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
        {
          *v128 = 12;
          LOBYTE(v118) = 1;
          (*(*a3 + 16))(a3);
          cnprint::CNPrinter::Print(v128, &v118, "ConvertProtobufToVLLocalizationEvent, t, %.3lf, Error in parsing the VL 4x4 Transformation Matrix");
        }
      }
    }

    else if (cnprint::CNPrinter::GetLogLevel(v8) <= 1)
    {
      *v128 = 12;
      LOBYTE(v118) = 1;
      (*(*a3 + 16))(a3);
      cnprint::CNPrinter::Print(v128, &v118, "ConvertProtobufToVLLocalizationEvent, t, %.3lf, VL Validity mach continuous time not present");
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    *v128 = 12;
    LOBYTE(v118) = 1;
    cnprint::CNPrinter::Print(v128, &v118, "ConvertProtobufToVLLocalizationEvent, Event mach continuous time not present");
  }

  return 0;
}

uint64_t sub_1D0DE8D2C(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 8) != 0)
  {
    v4 = a1;
    if (!a1)
    {
      CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionEvent_2eproto(0);
      v4 = *(CoreNavigation::CLP::LogEntry::Vision::VLLocalizationResult::default_instance_ + 32);
    }

    if (*(v4 + 16) == 6)
    {
      v5 = 0;
      v13 = 0x600000006;
      v11 = &unk_1F4CDF278;
      v12 = xmmword_1D0E7F320;
      v14 = &v15;
      while (1)
      {
        if (v5 >= *(v4 + 16))
        {
          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
        }

        v6 = *(*(v4 + 8) + 8 * v5);
        if (*(v6 + 16) != 6)
        {
          break;
        }

        for (i = 0; i != 6; ++i)
        {
          if (i >= *(v6 + 16))
          {
            wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
            wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
            wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
            wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v17);
          }

          if (i < 3)
          {
            v8 = 3;
          }

          else
          {
            v8 = -3;
          }

          *&v14[((v5 + 3) % 6u + HIDWORD(v12) * (i + v8))] = *(*(v6 + 8) + 4 * i);
        }

        if (++v5 == 6)
        {
          v9 = cntransformation::CNRigidTransformation::SetCovarianceMatrix(a3 + 200, &v11);
          if (v9)
          {
            return 1;
          }

          if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
          {
            v17[0] = 12;
            v16 = 1;
            cnprint::CNPrinter::Print(v17, &v16, "ConvertProtobufToVLLocalizationEvent, Cannot set/store the cam3DV2ecef Transformation Matrix Covariance");
          }

          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1D0DE8F50(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  sub_1D0B894B0(a1 + 32, a2 + 32);
  sub_1D0B894B0(a1 + 96, a2 + 96);
  sub_1D0B894B0(a1 + 208, a2 + 208);
  sub_1D0B894B0(a1 + 320, a2 + 320);
  *(a1 + 432) = *(a2 + 432);
  return a1;
}

uint64_t raven::ConvertProtobufToRavenGnssAssistanceFileEvent(raven *this, const CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents *a2, const CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *a3, raven::RavenGnssAssistanceFileEvent *a4)
{
  MEMORY[0x1EEE9AC00](this);
  if ((*(v5 + 44) & 4) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v4) <= 1)
    {
      LOWORD(__src[0]) = 12;
      LOBYTE(v64) = 1;
      cnprint::CNPrinter::Print(__src, &v64, "#rof,ConvertProtobufToRavenGnssAssistanceFileEvent,mach continuous time not present");
    }

    return 0;
  }

  v9 = v6;
  v10 = v4;
  v7.i64[0] = *(v5 + 24);
  __src[0] = 0uLL;
  CNTimeSpan::SetTimeSpan(__src, 0, v7, v8);
  v13.i64[1] = *(&__src[0] + 1);
  *(v9 + 8) = __src[0];
  if ((*(v10 + 76) & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
    {
      LOWORD(__src[0]) = 12;
      LOBYTE(v64) = 1;
      cnprint::CNPrinter::Print(__src, &v64, "#rof,ConvertProtobufToRavenGnssAssistanceFileEvent,file creation time not present");
    }

    return 0;
  }

  v14 = *(v10 + 1);
  if (v14)
  {
    v15 = *(v14 + 8);
  }

  else
  {
    CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(v11);
    v14 = *(v10 + 1);
    v15 = *(*(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ + 8) + 8);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(v16);
      v14 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ + 8);
    }
  }

  *v13.i64 = *(v14 + 12) + -561548.816;
  __src[0] = 0uLL;
  CNTimeSpan::SetTimeSpan(__src, 604800 * (v15 - 1042), v13, v12);
  v18.i64[0] = *(&__src[0] + 1);
  *v19.i64 = *(__src + 1) + *&__src[0];
  if (COERCE__INT64(fabs(*v19.i64)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  *(v9 + 104) = *&__src[0];
  *(v9 + 112) = v18.i64[0];
  if ((*(v10 + 76) & 2) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v17) <= 1)
    {
      LOWORD(__src[0]) = 12;
      LOBYTE(v64) = 1;
      cnprint::CNPrinter::Print(__src, &v64, "#rof,ConvertProtobufToRavenGnssAssistanceFileEvent,ionosphere corrections not present");
    }

    return 0;
  }

  v22 = *(v10 + 2);
  if (!v22)
  {
    CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(v17);
    v22 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_ + 16);
  }

  if ((*(v22 + 52) & 1) == 0)
  {
    return 0;
  }

  v23 = *(v22 + 8);
  if (v23)
  {
    v24 = *(v23 + 8);
  }

  else
  {
    CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(v17);
    v23 = *(v22 + 8);
    v24 = *(*(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_ + 8) + 8);
    if (!v23)
    {
      CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(v25);
      v23 = *(CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::IonosphereCorrections::default_instance_ + 8);
    }
  }

  *v18.i64 = *(v23 + 12) + -561548.816;
  __src[0] = 0uLL;
  CNTimeSpan::SetTimeSpan(__src, 604800 * (v24 - 1042), v18, v19);
  v67 = __src[0];
  if (COERCE__INT64(fabs(*(__src + 1) + *&__src[0])) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v26 = *(v22 + 24);
  if (!v26)
  {
    return 1;
  }

  v27 = *(v22 + 16);
  v53 = &v27[v26];
  v28 = 0x7F01FC07F01FCLL;
  do
  {
    v29 = *v27;
    v20 = (*(*v27 + 64) & 0xF) == 15;
    if ((*(*v27 + 64) & 0xF) != 0xF)
    {
      break;
    }

    v54 = v27;
    v30 = v28;
    v31 = *(v29 + 16);
    v32 = *(v29 + 20);
    v33 = *(v29 + 12);
    v55 = *(v29 + 8);
    v64 = 0;
    v65 = 0;
    v66 = 0;
    sub_1D0C4E048(&v64, *(v29 + 32));
    v34 = *(v29 + 32);
    if (v34)
    {
      v35 = *(v29 + 24);
      v36 = 4 * v34;
      do
      {
        *__src = *v35;
        sub_1D0C4E0E8(&v64, __src);
        ++v35;
        v36 -= 4;
      }

      while (v36);
    }

    v61 = 0;
    v62 = 0;
    v63 = 0;
    sub_1D0C4E048(&v61, *(v29 + 48));
    v37 = *(v29 + 48);
    if (v37)
    {
      v38 = *(v29 + 40);
      v39 = 4 * v37;
      do
      {
        *__src = *v38;
        sub_1D0C4E0E8(&v61, __src);
        ++v38;
        v39 -= 4;
      }

      while (v39);
    }

    *&__src[0] = 0;
    sub_1D0DEA2D8(&v59, (v65 - v64) >> 3, __src);
    *&__src[0] = 0;
    sub_1D0DEA2D8(&v57, (v62 - v61) >> 3, __src);
    v28 = v30;
    cnnavigation::SphericalHarmonicsIonosphereParameters::SphericalHarmonicsIonosphereParameters(__src, v31, v32);
    if (cnnavigation::SphericalHarmonicsIonosphereParameters::LoadModelParameters(__src, &v67, v55, &v64, &v61, &v59, &v57, v33, 0.0))
    {
      if (v57)
      {
        v58 = v57;
        operator delete(v57);
      }

      if (v59)
      {
        v60 = v59;
        operator delete(v59);
      }

      if (v61)
      {
        v62 = v61;
        operator delete(v61);
      }

      if (v64)
      {
        v65 = v64;
        operator delete(v64);
      }

      return 0;
    }

    v41 = *(v9 + 128);
    v40 = *(v9 + 136);
    if (v41 >= v40)
    {
      v43 = *(v9 + 120);
      v44 = 0x80FE03F80FE03F81 * ((v41 - v43) >> 6);
      v45 = v44 + 1;
      if (v44 + 1 > v30)
      {
        sub_1D0C5663C();
      }

      v46 = 0x80FE03F80FE03F81 * ((v40 - v43) >> 6);
      if (2 * v46 > v45)
      {
        v45 = 2 * v46;
      }

      if (v46 >= 0x3F80FE03F80FELL)
      {
        v47 = v30;
      }

      else
      {
        v47 = v45;
      }

      if (v47)
      {
        sub_1D0DD0FDC(v9 + 120, v47);
      }

      v48 = 8256 * v44;
      memcpy(v48, __src, 0x2040uLL);
      v42 = v48 + 8256;
      v49 = *(v9 + 120);
      v50 = *(v9 + 128) - v49;
      v51 = (v48 - v50);
      memcpy(v51, v49, v50);
      v52 = *(v9 + 120);
      *(v9 + 120) = v51;
      *(v9 + 128) = v42;
      *(v9 + 136) = 0;
      if (v52)
      {
        operator delete(v52);
      }
    }

    else
    {
      memcpy(*(v9 + 128), __src, 0x2040uLL);
      v42 = v41 + 8256;
    }

    *(v9 + 128) = v42;
    if (v57)
    {
      v58 = v57;
      operator delete(v57);
    }

    if (v59)
    {
      v60 = v59;
      operator delete(v59);
    }

    if (v61)
    {
      v62 = v61;
      operator delete(v61);
    }

    if (v64)
    {
      v65 = v64;
      operator delete(v64);
    }

    v27 = v54 + 1;
  }

  while (v54 + 1 != v53);
  return v20;
}

void sub_1D0DE9524(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 224);
  if (v3)
  {
    *(v1 - 216) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 200);
  if (v4)
  {
    *(v1 - 192) = v4;
    operator delete(v4);
  }

  v5 = *(v1 - 176);
  if (v5)
  {
    *(v1 - 168) = v5;
    operator delete(v5);
  }

  v6 = *(v1 - 152);
  if (v6)
  {
    *(v1 - 144) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

__n128 raven::ConvertReceiverDifferentialCodeBiasesEventToProtobuf(raven *this, const raven::ReceiverDifferentialCodeBiasesEvent *a2, CoreNavigation::CLP::LogEntry::Raven::RavenOutput *a3)
{
  *(a2 + 15) |= 0x20u;
  v5 = *(a2 + 6);
  if (!v5)
  {
    operator new();
  }

  sub_1D0DE9770(this + 280, v5);
  *(a2 + 15) |= 0x10u;
  v6 = *(a2 + 5);
  if (!v6)
  {
    operator new();
  }

  v7 = *(v6 + 8);
  *(v6 + 96) |= 1u;
  if (!v7)
  {
    operator new();
  }

  sub_1D0C075F4(this + 14, v7);
  v8 = *(v6 + 96);
  *(v6 + 88) = *(this + 52);
  *(v6 + 16) = *(this + 13);
  *(v6 + 32) = *(this + 14);
  *(v6 + 48) = *(this + 15);
  *(v6 + 96) = v8 | 0xDFE;
  result = *(this + 264);
  *(v6 + 72) = result;
  return result;
}

void sub_1D0DE9770(uint64_t a1, uint64_t a2)
{
  *(a2 + 168) |= 1u;
  v4 = *(a2 + 8);
  if (!v4)
  {
    operator new();
  }

  sub_1D0C075F4(a1, v4);
  v5 = 0;
  v6 = *(a1 + 96);
  if (v6 == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (v6 == 2)
  {
    v8 = 3;
  }

  else
  {
    v8 = v7;
  }

  *(a2 + 56) = v8;
  v9 = *(a2 + 168);
  *(a2 + 16) = *(a1 + 104);
  *(a2 + 24) = *(a1 + 120) + *(a1 + 112);
  *(a2 + 32) = *(a1 + 128);
  *(a2 + 168) = v9 | 0x7E;
  *(a2 + 48) = *(a1 + 144);
  do
  {
    v10 = *(a1 + 152 + 4 * v5);
    if (v10)
    {
      v11 = *(a2 + 76);
      v12 = *(a2 + 72);
      if (v12 >= v11)
      {
        if (v11 == *(a2 + 80))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 64));
          v11 = *(a2 + 76);
        }

        *(a2 + 76) = v11 + 1;
        operator new();
      }

      v13 = *(a2 + 64);
      *(a2 + 72) = v12 + 1;
      v14 = *(v13 + 8 * v12);
      v15 = sub_1D0C07848(v5);
      v16 = *(v14 + 40);
      *(v14 + 32) = v15;
      *(v14 + 40) = v16 | 0xC;
      *(v14 + 24) = v10;
    }

    ++v5;
  }

  while (v5 != 33);
  for (i = 0; i != 33; ++i)
  {
    v18 = *(a1 + 284 + 4 * i);
    if (v18)
    {
      v19 = *(a2 + 100);
      v20 = *(a2 + 96);
      if (v20 >= v19)
      {
        if (v19 == *(a2 + 104))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 88));
          v19 = *(a2 + 100);
        }

        *(a2 + 100) = v19 + 1;
        operator new();
      }

      v21 = *(a2 + 88);
      *(a2 + 96) = v20 + 1;
      v22 = *(v21 + 8 * v20);
      v23 = sub_1D0C07848(i);
      v24 = *(v22 + 40);
      *(v22 + 32) = v23;
      *(v22 + 40) = v24 | 0xC;
      *(v22 + 24) = v18;
    }
  }

  v25 = 0;
  v26 = a1 + 416;
  do
  {
    v27 = *(v26 + 4 * v25);
    if (v27)
    {
      v28 = *(a2 + 124);
      v29 = *(a2 + 120);
      if (v29 >= v28)
      {
        if (v28 == *(a2 + 128))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 112));
          v28 = *(a2 + 124);
        }

        *(a2 + 124) = v28 + 1;
        operator new();
      }

      v30 = *(a2 + 112);
      *(a2 + 120) = v29 + 1;
      v31 = *(v30 + 8 * v29);
      v32 = sub_1D0C07848(v25);
      v33 = *(v31 + 40);
      *(v31 + 32) = v32;
      *(v31 + 40) = v33 | 0xC;
      *(v31 + 24) = v27;
    }

    ++v25;
  }

  while (v25 != 33);
}

__n128 raven::ConvertThinShellIonosphereParametersEventToProtobuf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a2 + 60) |= 0x20u;
  v6 = *(a2 + 48);
  if (!v6)
  {
    operator new();
  }

  sub_1D0DE9770(a1 + 280, v6);
  *(a2 + 60) |= 8u;
  v8 = *(a2 + 32);
  if (!v8)
  {
    operator new();
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0x7FF8000000000000;
  v27 = 0;
  v9 = *(a1 + 152);
  v26 = v9;
  v25 = 1;
  if (*(a3 + 48) == 1)
  {
    v18[0] = CNTimeSpan::operator-(&v26, (a3 + 56), v9, v7);
    v18[1] = v10;
    v19 = 1;
    if (*(a3 + 24) == 1)
    {
      v23 = CNTimeSpan::operator+((a3 + 32), v18, v11, v12);
      v24 = v13;
      v22 = 1;
    }

    v20 = CNTimeSpan::operator+((a3 + 8), v18, v11, v12);
    v21 = v14;
  }

  *(v8 + 160) |= 1u;
  v15 = *(v8 + 8);
  if (!v15)
  {
    operator new();
  }

  sub_1D0C075F4(&v20, v15);
  v16 = *(v8 + 160);
  *(v8 + 16) = *(a1 + 128);
  *(v8 + 32) = *(a1 + 144);
  *(v8 + 152) = *(a1 + 104);
  *(v8 + 40) = *(a1 + 168);
  *(v8 + 56) = *(a1 + 184);
  *(v8 + 72) = *(a1 + 200);
  *(v8 + 88) = *(a1 + 216);
  *(v8 + 104) = *(a1 + 232);
  *(v8 + 120) = *(a1 + 248);
  *(v8 + 160) = v16 | 0xFFFFE;
  result = *(a1 + 264);
  *(v8 + 136) = result;
  return result;
}

uint64_t raven::ConvertRavenFitnessSessionActivityToProtobuf(_BYTE *a1)
{
  if (*a1 - 1 > 8)
  {
    return 0;
  }

  else
  {
    return dword_1D0E9C964[(*a1 - 1)];
  }
}

uint64_t raven::ConvertRavenMountStateEnumToProtobuf(_BYTE *a1)
{
  if (*a1 - 1 < 3)
  {
    return (*a1 - 1) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t raven::ConvertRavenPositionContextStateEnumToProtobuf(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 2)
  {
    return 2;
  }

  else
  {
    return v1 == 1;
  }
}

uint64_t raven::ConvertRavenMovingStateEnumToProtobuf(_BYTE *a1)
{
  if (*a1 - 1 < 3)
  {
    return (*a1 - 1) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t raven::ConvertRavenEstimatorTypeToProtobuf(_BYTE *a1)
{
  if (*a1 - 1 >= 5)
  {
    return 1;
  }

  else
  {
    return (*a1 - 1) + 2;
  }
}

uint64_t raven::ConvertRavenHealthToProtobuf(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (v1 == 2)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t raven::ConvertRavenIonosphereEstimatorHealthToProtobuf(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (v1 == 2)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D0DE9E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      v6 += 40;
      a4 += 40;
    }

    while (v6 != a3);
    v11 = a4;
    v9 = 1;
    do
    {
      v12 = (v5 + 16);
      sub_1D0DDD018(&v12);
      v5 += 40;
    }

    while (v5 != a3);
  }

  return sub_1D0DDD0C4(v8);
}

uint64_t sub_1D0DE9F0C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    v5 = (i - 24);
    sub_1D0DDD018(&v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1D0DE9F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v14 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *v6 = 0;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v7 = *(v6 + 24);
      v8 = *(v6 + 40);
      v9 = *(v6 + 56);
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 56) = v9;
      *(a4 + 40) = v8;
      *(a4 + 24) = v7;
      v6 += 80;
      a4 += 80;
    }

    while (v6 != a3);
    v15 = a4;
    v13 = 1;
    do
    {
      v10 = *v5;
      if (*v5)
      {
        *(v5 + 8) = v10;
        operator delete(v10);
      }

      v5 += 80;
    }

    while (v5 != a3);
  }

  return sub_1D0DDCF90(v12);
}

uint64_t sub_1D0DEA04C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 80);
    *(a1 + 16) = v2 - 80;
    if (v4)
    {
      *(v2 - 72) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 80;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1D0DEA0B0(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 16);
  if ((v2 & 2) != 0)
  {
    a2[1] = *(result + 9);
    if ((v2 & 4) == 0)
    {
LABEL_3:
      if ((v2 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_3;
  }

  a2[2] = *(result + 10);
  if ((v2 & 1) == 0)
  {
LABEL_4:
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_9:
    a2[3] = *(result + 11);
    return result;
  }

LABEL_8:
  *a2 = *(result + 8);
  if ((v2 & 8) != 0)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_1D0DEA118(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4CEB2A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0DEA16C(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    *(a1 + 232) = v2;
    operator delete(v2);
  }

  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      *(a1 + 32) = v3;
      operator delete(v3);
    }
  }

  return a1;
}

double sub_1D0DEA1BC(uint64_t a1)
{
  v9 = 0x100000003;
  v7 = &unk_1F4CDEAA0;
  v8 = xmmword_1D0E7DCC0;
  v10 = &v11;
  v4 = 0x300000003;
  v2 = &unk_1F4CD5DD0;
  v3 = xmmword_1D0E76C10;
  v5 = &v6;
  return sub_1D0BEC1D8(a1, &v7, &v2);
}

uint64_t *sub_1D0DEA260(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_1D0C39994(a1, a2);
  }

  return a1;
}

void sub_1D0DEA2BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D0DEA2D8(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_1D0C39994(a1, a2);
  }

  return a1;
}

void sub_1D0DEA394(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1D0DEA3B0(uint64_t **a1, unint64_t *a2, uint64_t *a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t raven::RavenUserGaitTrackerActiveObject::RavenUserGaitTrackerActiveObject(uint64_t a1)
{
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 64) = 1065353216;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x7FF8000000000000;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FF8000000000000;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *a1 = &unk_1F4CEB3B0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  cnestimation::PeriodicityTracker::PeriodicityTracker((a1 + 240));
  *a1 = &unk_1F4CEB2F8;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 432) = &unk_1F4CEF688;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0x7FF8000000000000;
  *(a1 + 544) = 0x3FF0000000000000;
  *(a1 + 728) = 0;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 624) = &unk_1F4CEF778;
  *(a1 + 648) = 0;
  *(a1 + 632) = 0u;
  *(a1 + 672) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 696) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0x7FF8000000000000;
  *(a1 + 736) = 0x3FF0000000000000;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 856) = 0x7FF8000000000000;
  *(a1 + 776) = 0x7FF8000000000000;
  *(a1 + 864) = 0;
  *(a1 + 868) = 0;
  *(a1 + 872) = 0;
  *(a1 + 924) = 0;
  *(a1 + 892) = 0u;
  *(a1 + 908) = 0u;
  *(a1 + 876) = 0u;
  return a1;
}

void sub_1D0DEA654(raven::RavenCoarseOdometerActiveObject *a1)
{
  *a1 = &unk_1F4CEB3B0;
  sub_1D0C56E40(a1 + 48);
  sub_1D0C56D94(a1 + 42);

  raven::RavenCoarseOdometerActiveObject::~RavenCoarseOdometerActiveObject(a1);
}

uint64_t raven::RavenUserGaitTrackerActiveObject::Configure(cnprint::CNPrinter *a1, uint64_t *a2)
{
  result = sub_1D0DEA834(a1, a2);
  if (!result)
  {
    v4 = *(a1 + 29);
    v5 = *(v4 + 472);
    if ((v5 <= -1 || ((v5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v5 - 1) >= 0xFFFFFFFFFFFFFLL)
    {
      v16 = 12;
      v15 = 4;
      sub_1D0B751F4(__p, "RavenUserGaitTrackerActiveObject");
      if (v14 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      cnprint::CNPrinter::Print(&v16, &v15, "%s could not be configured - invalid walk step freq,%.3lf", v11, *(*(a1 + 29) + 472));
    }

    else
    {
      v8 = *(v4 + 480);
      if (v8 > -1 && ((v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (v8 - 1) < 0xFFFFFFFFFFFFFLL)
      {
        return 0;
      }

      v16 = 12;
      v15 = 4;
      sub_1D0B751F4(__p, "RavenUserGaitTrackerActiveObject");
      if (v14 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      cnprint::CNPrinter::Print(&v16, &v15, "%s could not be configured - invalid run step freq,%.3lf", v12, *(*(a1 + 29) + 480));
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_1D0DEA814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DEA834(cnprint::CNPrinter *a1, uint64_t *a2)
{
  if (*(a1 + 224) == 1 && cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    LOWORD(v46[0]) = 12;
    LOBYTE(v49) = 1;
    (*(*a1 + 16))(&__p, a1);
    v4 = v51 >= 0 ? &__p : __p;
    cnprint::CNPrinter::Print(v46, &v49, "Warning: %s configured more than once", v4);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(__p);
    }
  }

  v5 = *a2;
  if (!*a2 || (*(v5 + 33) & 1) == 0)
  {
    LOWORD(v46[0]) = 12;
    LOBYTE(v49) = 4;
    (*(*a1 + 16))(&__p, a1);
    if (v51 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    cnprint::CNPrinter::Print(v46, &v49, "%s could not be configured", p_p);
    goto LABEL_68;
  }

  *(a1 + 29) = v5;
  v6 = *(v5 + 648);
  if ((*&v6 <= -1 || ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v6 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    LOWORD(v46[0]) = 12;
    LOBYTE(v49) = 4;
    (*(*a1 + 16))(&__p, a1);
    if (v51 >= 0)
    {
      v32 = &__p;
    }

    else
    {
      v32 = __p;
    }

    cnprint::CNPrinter::Print(v46, &v49, "%s could not be configured - invalid HW period,%.3lf", v32, *(*(a1 + 29) + 648));
    goto LABEL_68;
  }

  v9 = *(v5 + 384);
  if ((v9 <= -1 || ((v9 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v9 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    LOWORD(v46[0]) = 12;
    LOBYTE(v49) = 4;
    (*(*a1 + 16))(&__p, a1);
    if (v51 >= 0)
    {
      v33 = &__p;
    }

    else
    {
      v33 = __p;
    }

    cnprint::CNPrinter::Print(v46, &v49, "%s could not be configured - invalid window duration,%.3lf", v33, *(*(a1 + 29) + 384));
    goto LABEL_68;
  }

  v12 = *(v5 + 392);
  if ((v12 <= -1 || ((v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v12 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    LOWORD(v46[0]) = 12;
    LOBYTE(v49) = 4;
    (*(*a1 + 16))(&__p, a1);
    if (v51 >= 0)
    {
      v34 = &__p;
    }

    else
    {
      v34 = __p;
    }

    cnprint::CNPrinter::Print(v46, &v49, "%s could not be configured - invalid min frequency,%.3lf", v34, *(*(a1 + 29) + 392));
    goto LABEL_68;
  }

  v15 = *(v5 + 400);
  if ((v15 <= -1 || ((v15 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v15 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    LOWORD(v46[0]) = 12;
    LOBYTE(v49) = 4;
    (*(*a1 + 16))(&__p, a1);
    if (v51 >= 0)
    {
      v35 = &__p;
    }

    else
    {
      v35 = __p;
    }

    cnprint::CNPrinter::Print(v46, &v49, "%s could not be configured - invalid max frequency,%.3lf", v35, *(*(a1 + 29) + 400));
    goto LABEL_68;
  }

  v18 = *(v5 + 408);
  if ((*&v18 <= -1 || ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v18 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    LOWORD(v46[0]) = 12;
    LOBYTE(v49) = 4;
    (*(*a1 + 16))(&__p, a1);
    if (v51 >= 0)
    {
      v36 = &__p;
    }

    else
    {
      v36 = __p;
    }

    cnprint::CNPrinter::Print(v46, &v49, "%s could not be configured - invalid probability of false positive window,%.3lf", v36, *(*(a1 + 29) + 408));
    goto LABEL_68;
  }

  v21 = *(v5 + 704);
  if ((*&v21 <= -1 || ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v21 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    LOWORD(v46[0]) = 12;
    LOBYTE(v49) = 4;
    (*(*a1 + 16))(&__p, a1);
    if (v51 >= 0)
    {
      v37 = &__p;
    }

    else
    {
      v37 = __p;
    }

    cnprint::CNPrinter::Print(v46, &v49, "%s could not be configured - invalid accelerometer noise,%.3lf", v37, *(*(a1 + 29) + 704));
    goto LABEL_68;
  }

  v24 = *(v5 + 736);
  if ((*&v24 <= -1 || ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v24 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    LOWORD(v46[0]) = 12;
    LOBYTE(v49) = 4;
    (*(*a1 + 16))(&__p, a1);
    if (v51 >= 0)
    {
      v38 = &__p;
    }

    else
    {
      v38 = __p;
    }

    cnprint::CNPrinter::Print(v46, &v49, "%s could not be configured - invalid accelerometer bias sigma,%.3lf", v38, *(*(a1 + 29) + 736));
    goto LABEL_68;
  }

  v27 = *(v5 + 416);
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v27 < 0.0 || v27 > 1.0)
  {
    LOWORD(v46[0]) = 12;
    LOBYTE(v49) = 4;
    (*(*a1 + 16))(&__p, a1);
    if (v51 >= 0)
    {
      v28 = &__p;
    }

    else
    {
      v28 = __p;
    }

    cnprint::CNPrinter::Print(v46, &v49, "%s could not be configured - invalid probability of false positive,%.3lf", v28, *(*(a1 + 29) + 416));
    goto LABEL_68;
  }

  v39 = *(v5 + 424);
  if (!v39)
  {
    LOWORD(v46[0]) = 12;
    LOBYTE(v49) = 4;
    (*(*a1 + 16))(&__p, a1);
    if (v51 >= 0)
    {
      v43 = &__p;
    }

    else
    {
      v43 = __p;
    }

    cnprint::CNPrinter::Print(v46, &v49, "%s could not be configured - invalid periodicity feature,%d", v43, *(*(a1 + 29) + 424));
LABEL_68:
    if ((SHIBYTE(v51) & 0x80000000) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v30 = __p;
LABEL_70:
    operator delete(v30);
    return 0xFFFFFFFFLL;
  }

  *&__p = *(v5 + 648);
  *(&__p + 1) = v9;
  v51 = v12;
  v52 = v15;
  v40 = fmax(ceil(v18 / v6), 1.0);
  v41 = log(1.0 - v27);
  v53 = 1.0 - exp(v41 / v40);
  v54 = sqrt(v24 * v24 + v21 * v21);
  v55 = v39;
  if (cnestimation::PeriodicityTracker::Configure(a1 + 240, &__p))
  {
    v49 = 12;
    v48 = 4;
    (*(*a1 + 16))(v46, a1);
    if (v47 >= 0)
    {
      v42 = v46;
    }

    else
    {
      v42 = v46[0];
    }

    cnprint::CNPrinter::Print(&v49, &v48, "Error: %s could not be configured", v42);
    if ((v47 & 0x80000000) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v30 = v46[0];
    goto LABEL_70;
  }

  cnframework::ActiveObjectBase::SetEventQueueDelay(a1, 0.0);
  *(a1 + 224) = 1;
  v44 = (*(*a1 + 40))(a1);
  if (cnprint::CNPrinter::GetLogLevel(v44) <= 1)
  {
    LOWORD(v46[0]) = 12;
    LOBYTE(v49) = 1;
    (*(*a1 + 16))(&__p, a1);
    v45 = v51 >= 0 ? &__p : __p;
    cnprint::CNPrinter::Print(v46, &v49, "%s configured successfully", v45);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(__p);
    }
  }

  return 0;
}

void sub_1D0DEB0E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 raven::RavenUserGaitTrackerActiveObject::HandleEvent(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  v4 = *(a2 + 56);
  *(a1 + 472) = *(a2 + 40);
  *(a1 + 488) = v4;
  *(a1 + 440) = v2;
  *(a1 + 456) = v3;
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  v7 = *(a2 + 120);
  *(a1 + 536) = *(a2 + 104);
  *(a1 + 552) = v7;
  *(a1 + 504) = v5;
  *(a1 + 520) = v6;
  result = *(a2 + 136);
  v9 = *(a2 + 152);
  v10 = *(a2 + 168);
  *(a1 + 616) = *(a2 + 184);
  *(a1 + 584) = v9;
  *(a1 + 600) = v10;
  *(a1 + 568) = result;
  return result;
}

{
  *(a1 + 632) = *(a2 + 8);
  v2 = *(a2 + 24);
  v3 = *(a2 + 40);
  v4 = *(a2 + 72);
  *(a1 + 680) = *(a2 + 56);
  *(a1 + 696) = v4;
  *(a1 + 648) = v2;
  *(a1 + 664) = v3;
  result = *(a2 + 88);
  v6 = *(a2 + 104);
  v7 = *(a2 + 120);
  *(a1 + 760) = *(a2 + 136);
  *(a1 + 728) = v6;
  *(a1 + 744) = v7;
  *(a1 + 712) = result;
  return result;
}

void raven::RavenUserGaitTrackerActiveObject::InitializeGaitTracking(raven::RavenUserGaitTrackerActiveObject *this, unsigned int a2)
{
  *(this + 217) = a2;
  *(this + 872) = 1;
  *(this + 219) = 0;
  if (a2)
  {
    operator new();
  }

  v3 = *(this + 110);
  if (v3)
  {
    *(this + 111) = v3;
    operator delete(v3);
  }

  *(this + 110) = 0;
  *(this + 111) = 0;
  *(this + 112) = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = *(this + 113);
  if (v7)
  {
    *(this + 114) = v7;
    operator delete(v7);
    v6 = v8;
    v5 = v9;
    v4 = v10;
  }

  *(this + 113) = v6;
  *(this + 114) = v5;
  *(this + 115) = v4;
}

void sub_1D0DEB318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenUserGaitTrackerActiveObject::OnFailureToAddSampleToPeriodicityTracker(uint64_t this)
{
  if (*(this + 872) == 1)
  {
    *(this + 872) = 0;
  }

  *(this + 876) = 0;
  *(this + 888) = *(this + 880);
  *(this + 912) = *(this + 904);
  return this;
}

uint64_t raven::RavenUserGaitTrackerActiveObject::ResetGaitTracking(uint64_t this)
{
  if (*(this + 872) == 1)
  {
    *(this + 872) = 0;
  }

  *(this + 876) = 0;
  *(this + 888) = *(this + 880);
  *(this + 912) = *(this + 904);
  return this;
}

__n128 raven::RavenUserGaitTrackerActiveObject::PerformGaitTracking(raven::RavenUserGaitTrackerActiveObject *this, __n128 *a2, __n128 result)
{
  if (*(this + 240) != 1)
  {
    return result;
  }

  result.n128_f64[0] = *(this + 32) / *(this + 31);
  LODWORD(v4) = vcvtpd_u64_f64(result.n128_f64[0]);
  v4 = v4 <= 1 ? 1 : v4;
  if (*(this + 47) < v4)
  {
    return result;
  }

  if (*(this + 313) != 1)
  {
    goto LABEL_8;
  }

  result.n128_u64[0] = *(this + 40);
  if ((result.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  if (fabs(result.n128_f64[0]) < 2.22044605e-16)
  {
    goto LABEL_8;
  }

  if (result.n128_f64[0] < 0.0)
  {
    goto LABEL_8;
  }

  v5 = *(this + 536);
  if ((v5 & 0xFE) != 2 || *(this + 728) - 1 <= 1)
  {
    goto LABEL_8;
  }

  v12 = v5 == 2;
  v6 = 480;
  if (v12)
  {
    v6 = 472;
  }

  v7 = *(*(this + 29) + v6) * 0.5;
  v8 = fabs(v7);
  if (v7 >= 0.0 && v8 >= 2.22044605e-16)
  {
    result.n128_f64[0] = result.n128_f64[0] / v7;
    v11 = llround(result.n128_f64[0]);
    v12 = v11 > 4 || ((1 << v11) & 0x16) == 0;
    if (!v12)
    {
      if (*(this + 872) == 1)
      {
        if (*(this + 217) == v11)
        {
          v13 = *(this + 219);
          *(this + 219) = v13 + 1;
LABEL_31:
          v15 = v13 % *(this + 217);
          v16 = *(this + 113);
          v17 = *(this + 110) + 96 * v15;
          v18 = *(v16 + 4 * v15);
          *(v16 + 4 * v15) = v18 + 1;
          if ((v18 + 1) >= 2)
          {
            v25 = &unk_1F4CEF360;
            v19 = a2[3];
            v28 = a2[2];
            v29 = v19;
            v20 = a2[5];
            v30 = a2[4];
            v31 = v20;
            v21 = a2[1];
            v26 = *a2;
            v27 = v21;
            v32 = v26;
            v33 = *v17;
            v34 = v15;
            v35 = v18;
            sub_1D0DEB5D4(this, &v25);
          }

          v22 = a2[1];
          *v17 = *a2;
          *(v17 + 16) = v22;
          result = a2[2];
          v23 = a2[3];
          v24 = a2[5];
          *(v17 + 64) = a2[4];
          *(v17 + 80) = v24;
          *(v17 + 32) = result;
          *(v17 + 48) = v23;
          return result;
        }

        *(this + 872) = 0;
        *(this + 219) = 0;
        *(this + 111) = *(this + 110);
        *(this + 114) = *(this + 113);
      }

      raven::RavenUserGaitTrackerActiveObject::InitializeGaitTracking(this, v11);
      v14 = *(this + 872);
      v13 = *(this + 219);
      *(this + 219) = v13 + 1;
      if ((v14 & 1) == 0)
      {
        sub_1D0C42F28();
      }

      goto LABEL_31;
    }

LABEL_8:
    if (*(this + 872) == 1)
    {
      *(this + 872) = 0;
    }

    *(this + 219) = 0;
    *(this + 111) = *(this + 110);
    *(this + 114) = *(this + 113);
  }

  return result;
}

void sub_1D0DEB84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  sub_1D0B7CAB8(v11);
  _Unwind_Resume(a1);
}

void raven::RavenUserGaitTrackerActiveObject::Reset(raven::RavenUserGaitTrackerActiveObject *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *&v8 = 0;
  *(&v8 + 1) = 0x7FF8000000000000;
  *&v9 = 0;
  *(&v9 + 1) = 0x3FF0000000000000;
  *(this + 472) = 0uLL;
  *(this + 488) = 0uLL;
  *(this + 440) = 0uLL;
  *(this + 456) = 0uLL;
  *(this + 536) = v9;
  *(this + 552) = 0u;
  *(this + 504) = 0uLL;
  *(this + 520) = v8;
  *(this + 77) = 0;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 568) = 0u;
  *(&v8 + 1) = 0x7FF8000000000000;
  *&v9 = 0;
  *&v8 = 0;
  *(&v9 + 1) = 0x3FF0000000000000;
  *(this + 664) = 0uLL;
  *(this + 680) = 0uLL;
  *(this + 632) = 0uLL;
  *(this + 648) = 0uLL;
  *(this + 95) = 0;
  *(this + 728) = v9;
  *(this + 744) = 0uLL;
  *(this + 696) = 0uLL;
  *(this + 712) = v8;
  *(this + 864) = 0;
  if (*(this + 872) == 1)
  {
    *(this + 872) = 0;
  }

  *(this + 219) = 0;
  *(this + 111) = *(this + 110);
  *(this + 114) = *(this + 113);
  sub_1D0DEBA68(this);
}

void sub_1D0DEBA68(uint64_t a1)
{
  if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    v6 = 12;
    v5 = 1;
    (*(*a1 + 16))(__p, a1);
    if (v4 >= 0)
    {
      v2 = __p;
    }

    else
    {
      v2 = __p[0];
    }

    cnprint::CNPrinter::Print(&v6, &v5, "Resetting %s", v2);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0x7FF8000000000000;
  *(a1 + 152) = 0;
  *(a1 + 105) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0x7FF8000000000000;
  cnframework::ActiveObjectBase::ResetEventQueue(a1);
}

void sub_1D0DEBB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0DEBB54(raven::RavenCoarseOdometerActiveObject *a1)
{
  sub_1D0DEBBD8(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DEBB90(raven::RavenCoarseOdometerActiveObject *a1)
{
  sub_1D0DEA654(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DEBBD8(raven::RavenCoarseOdometerActiveObject *a1)
{
  *a1 = &unk_1F4CEB2F8;
  v2 = *(a1 + 113);
  if (v2)
  {
    *(a1 + 114) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 110);
  if (v3)
  {
    *(a1 + 111) = v3;
    operator delete(v3);
  }

  sub_1D0DEA654(a1);
}

void sub_1D0DEBCDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  if (a13)
  {
    sub_1D0B7CAB8(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0DEBD6C(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0DEBDC8((a1 + 3), a2);
}

void sub_1D0DEBDC8(uint64_t a1, uint64_t *a2)
{
  *a1 = &unk_1F4CD55D8;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 8) = 0;
  v5 = MEMORY[0x1E69E54A8];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = v5;
  sub_1D0B751F4((a1 + 48), &unk_1D0ED80C5);
  *(a1 + 8) = 1;
  sub_1D0DEBF5C(v4, a2);
}

void sub_1D0DEBF04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*v2)
  {
    (*(**v2 + 8))(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::SolutionChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  v3 = *(*a2 + 1584);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v3 >= 0.0 ? (v4 = v3 <= 1.0) : (v4 = 0), !v4))
  {
    v43 = 12;
    v42 = 4;
    cnprint::CNPrinter::Print(&v43, &v42, "t,%.3lf,SolutionChecker: Cannot configure. Invalid consistency_percentile_threshold: %.2lf");
    return 0xFFFFFFFFLL;
  }

  cnstatistics::InverseChi2(a1, v3, 3.0);
  *(a1 + 56) = sqrt(v8 * 0.333333333);
  cnstatistics::InverseChi2(v9, *(*a2 + 1584), 1.0);
  *(a1 + 64) = sqrt(v10);
  cnstatistics::InverseChi2(v11, *(*a2 + 1584), 1.0);
  *(a1 + 72) = sqrt(v12);
  v13 = *a2;
  v14 = *(*a2 + 1552);
  *(a1 + 24) = v14;
  v15 = (v14 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v16 = ((v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v14 >= 0)
  {
    v16 = 0;
    v15 = 0;
  }

  v17 = (v14 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v15;
  if ((v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v17 = 1;
  }

  if ((v17 | v16) == 1)
  {
    v43 = 12;
    v42 = 4;
    cnprint::CNPrinter::Print(&v43, &v42, "t,%.3lf,SolutionChecker: Cannot configure. Invalid direction_of_travel_difference_from_convergence_tolerance: %.2lf");
    return 0xFFFFFFFFLL;
  }

  v18 = v13[195];
  *(a1 + 32) = v18;
  v19 = (v18 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v20 = ((v18 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v18 >= 0)
  {
    v20 = 0;
    v19 = 0;
  }

  if ((v18 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v19 = 1;
  }

  if ((v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v19 = 1;
  }

  if (v19 || v20)
  {
    v43 = 12;
    v42 = 4;
    cnprint::CNPrinter::Print(&v43, &v42, "t,%.3lf,SolutionChecker: Cannot configure. Invalid direction_of_travel_difference_from_passthrough_tolerance: %.2lf");
    return 0xFFFFFFFFLL;
  }

  v21 = v13[199];
  *(a1 + 40) = v21;
  v22 = (v21 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v23 = ((v21 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v21 >= 0)
  {
    v23 = 0;
    v22 = 0;
  }

  v24 = (v21 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v22;
  if ((v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v24 = 1;
  }

  if ((v24 | v23) == 1)
  {
    v43 = 12;
    v42 = 4;
    cnprint::CNPrinter::Print(&v43, &v42, "t,%.3lf,SolutionChecker: Cannot configure. Invalid position_difference_from_convergence_tolerance_m_: %.2lf");
    return 0xFFFFFFFFLL;
  }

  v25 = v13[200];
  *(a1 + 48) = v25;
  v26 = (v25 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v27 = ((v25 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v25 >= 0)
  {
    v27 = 0;
    v26 = 0;
  }

  if ((v25 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v26 = 1;
  }

  if ((v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v26 = 1;
  }

  if (v26 || v27)
  {
    v43 = 12;
    v42 = 4;
    cnprint::CNPrinter::Print(&v43, &v42, "t,%.3lf,SolutionChecker: Cannot configure. Invalid position_difference_from_passthrough_tolerance: %.2lf");
    return 0xFFFFFFFFLL;
  }

  v28 = v13[201];
  *(a1 + 80) = v28;
  v29 = (v28 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v30 = ((v28 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v28 >= 0)
  {
    v30 = 0;
    v29 = 0;
  }

  v31 = (v28 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v29;
  if ((v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v31 = 1;
  }

  if ((v31 | v30) == 1)
  {
    v43 = 12;
    v42 = 4;
    cnprint::CNPrinter::Print(&v43, &v42, "t,%.3lf,SolutionChecker: Cannot configure. Invalid speed_difference_from_convergence_tolerance: %.2lf");
    return 0xFFFFFFFFLL;
  }

  v32 = v13[202];
  *(a1 + 88) = v32;
  v33 = (v32 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v34 = ((v32 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v32 >= 0)
  {
    v34 = 0;
    v33 = 0;
  }

  if ((v32 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v33 = 1;
  }

  if ((v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v33 = 1;
  }

  if (v33 || v34)
  {
    v43 = 12;
    v42 = 4;
    cnprint::CNPrinter::Print(&v43, &v42, "t,%.3lf,SolutionChecker: Cannot configure. Invalid speed_difference_from_passthrough_tolerance: %.2lf");
    return 0xFFFFFFFFLL;
  }

  v35 = v13[204];
  *(a1 + 96) = v35;
  v36 = (v35 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v37 = ((v35 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v35 >= 0)
  {
    v37 = 0;
    v36 = 0;
  }

  v38 = (v35 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v36;
  if ((v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v38 = 1;
  }

  if ((v38 | v37) == 1)
  {
    v43 = 12;
    v42 = 4;
    cnprint::CNPrinter::Print(&v43, &v42, "t,%.3lf,SolutionChecker: Cannot configure. Invalid time_difference_from_current_time_tolerance: %.2lf");
    return 0xFFFFFFFFLL;
  }

  v39 = v13[203];
  *(a1 + 104) = v39;
  v40 = (v39 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v41 = v39 < 0 && ((v39 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (v39 >= 0)
  {
    v40 = 0;
  }

  if ((v39 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v40 = 1;
  }

  if ((v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v40 = 1;
  }

  if (v40 || v41)
  {
    v43 = 12;
    v42 = 4;
    cnprint::CNPrinter::Print(&v43, &v42, "t,%.3lf,SolutionChecker: Cannot configure. Invalid time_difference_from_solution_to_check_against_tolerance_: %.2lf");
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 8) = 1;
  return result;
}

void raven::RavenConvergenceEstimator::RavenConvergenceEstimator(raven::RavenConvergenceEstimator *this)
{
  v2 = this + 4400;
  raven::RavenEstimator::RavenEstimator(this, 2);
  *v3 = &unk_1F4CEC098;
  *(v3 + 2760) = 0x100000000;
  *(v3 + 2768) = 0x7FFFFFFF;
  *(v3 + 2776) = 0x3E45798EE2308C3ALL;
  *(v3 + 2784) = 0x3E45798EE2308C3ALL;
  *(v3 + 2792) = 0;
  *(v3 + 2800) = 0x3FEE666666666666;
  *(v3 + 2808) = 0u;
  *(v3 + 2824) = 0x4197D78400000000;
  *(v3 + 2832) = 0u;
  *(v3 + 2848) = 1;
  *(v3 + 2856) = 0;
  *(v3 + 2896) = 0x100000008;
  *(v3 + 2872) = &unk_1F4CE4320;
  *(v3 + 2904) = v3 + 2912;
  *(v3 + 3000) = 0x800000008;
  *(v3 + 2976) = &unk_1F4CE43B0;
  *(v3 + 3008) = v3 + 3016;
  *(v3 + 3552) = 0x100000008;
  *(v3 + 3528) = &unk_1F4CE4320;
  *(v3 + 3560) = v3 + 3568;
  *(v3 + 3656) = 0x100000008;
  *(v3 + 3632) = &unk_1F4CE4320;
  *(v3 + 3664) = v3 + 3672;
  *(v3 + 3760) = 0x800000008;
  *(v3 + 3736) = &unk_1F4CE43B0;
  *(v3 + 3768) = v3 + 3776;
  *(v3 + 4312) = 0x100000008;
  *(v3 + 4288) = &unk_1F4CE4320;
  *(v3 + 4320) = v3 + 4328;
  *(v3 + 4408) = 0x100000000;
  *(v3 + 4416) = 0x7FFFFFFF;
  *(v3 + 4424) = 0x3E45798EE2308C3ALL;
  *(v3 + 4432) = 0x3E45798EE2308C3ALL;
  *(v3 + 4440) = 0;
  *(v3 + 4456) = 0u;
  *(v3 + 4448) = 0x3FEE666666666666;
  *(v3 + 4472) = 0x4197D78400000000;
  *(v3 + 4392) = 0;
  *v2 = 0;
  *(v3 + 2880) = 0u;
  *(v3 + 2984) = 0u;
  *(v3 + 3536) = 0u;
  *(v3 + 3640) = 0u;
  *(v3 + 3744) = 0u;
  *(v3 + 4296) = 0u;
  *(v3 + 4608) = 0;
  *(v3 + 4592) = 0u;
  *(v3 + 4576) = 0u;
  *(v3 + 4560) = 0u;
  *(v3 + 4544) = 0u;
  *(v3 + 4528) = 0u;
  *(v3 + 4512) = 0u;
  *(v3 + 4496) = 0u;
  *(v3 + 4480) = 0u;
  *(v3 + 4404) = 1;
  *(v3 + 2864) = &unk_1F4CEAAF8;
  *(v3 + 4640) = 0x800000008;
  *(v3 + 4616) = &unk_1F4CE43B0;
  *(v3 + 4648) = v3 + 4656;
  *(v3 + 5192) = 0x100000008;
  *(v3 + 5168) = &unk_1F4CE4320;
  *(v3 + 5200) = v3 + 5208;
  *(v3 + 5296) = 0x800000008;
  *(v3 + 5272) = &unk_1F4CE43B0;
  *(v3 + 5304) = v3 + 5312;
  *(v3 + 5824) = 0x100000000;
  *(v3 + 5832) = 0x7FFFFFFF;
  v9 = vdupq_n_s64(0x3E45798EE2308C3AuLL);
  *(v3 + 5840) = v9;
  *(v3 + 5856) = 0;
  *(v3 + 5864) = 0x3FEE666666666666;
  *(v3 + 5872) = 0u;
  *(v3 + 5888) = 0x4197D78400000000;
  *(v3 + 5896) = 0u;
  *(v3 + 5912) = 1;
  *(v3 + 5920) = 0;
  *(v3 + 4624) = 0u;
  *(v3 + 5176) = 0u;
  *(v3 + 5280) = 0u;
  sub_1D0D813F4(v3 + 5928);
  *(this + 1048) = 0x100000000;
  *(this + 2098) = 0x7FFFFFFF;
  *(this + 525) = v9;
  *(v2 + 2008) = 0;
  *(this + 1053) = 0x3FEE666666666666;
  *(this + 527) = 0u;
  *(this + 8456) = 0u;
  *(this + 1056) = 0x4197D78400000000;
  *(v2 + 2036) = 1;
  *(this + 1060) = 0;
  __asm { FMOV            V0.2D, #0.5 }

  *(this + 531) = _Q0;
  *(this + 2128) = 0;
  *(this + 1061) = &unk_1F4CE3930;
  *(this + 1065) = 0x3FE0000000000000;
  *(this + 533) = xmmword_1D0E9CBD0;
  *(this + 4280) = 0;
  *(this + 534) = _Q0;
  *(this + 8568) = 0u;
  *(this + 8584) = 0u;
  *(this + 1075) = this + 8600;
  *(this + 1076) = this + 8600;
  *(this + 1077) = 0;
  sub_1D0C01D64(this + 8624);
  *(this + 1434) = 0x1000000AELL;
  *(this + 1431) = &unk_1F4CE05D8;
  *(this + 716) = xmmword_1D0E843F0;
  *(this + 1435) = this + 11488;
  *(this + 1526) = 0x1000000AELL;
  *(this + 1523) = &unk_1F4CE0620;
  *(this + 762) = xmmword_1D0E843F0;
  *(this + 1527) = this + 12224;
  sub_1D0C02288(this + 13616);
}

void sub_1D0DECE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  sub_1D0DC5674((v20 + 8560));
  *a19 = a18;
  sub_1D0D83110(v20 + 5928);
  sub_1D0BCB680(a20);
  sub_1D0D4FA90(v20);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenConvergenceEstimator::AdjustClockOffset(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a1 + 58) != 1)
  {
    return 1;
  }

  v35[8] = v8;
  v35[9] = v7;
  v35[10] = v6;
  v35[11] = v5;
  v35[18] = v3;
  v35[19] = v4;
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v15 = a1 + 2864;
    v33 = 0x100000008;
    v31 = &unk_1F4CE4320;
    v32 = xmmword_1D0E84520;
    v34 = v35;
    v16 = 768;
    if (!*(a1 + 4404))
    {
      v16 = 8;
    }

    sub_1D0B894B0(&v31, v15 + v16);
    v28 = 0x800000008;
    v26 = &unk_1F4CE43B0;
    v27 = xmmword_1D0E84510;
    v29 = &v30;
    v17 = 872;
    if (!*(a1 + 4404))
    {
      v17 = 112;
    }

    sub_1D0B894B0(&v26, v15 + v17);
    v34[6] = v34[6] + a3 * 1000000.0;
    v23 = 0x100000008;
    v21 = &unk_1F4CE4320;
    v22 = xmmword_1D0E84520;
    v24 = &v25;
    sub_1D0B89390(&v26, &v31, &v21);
    sub_1D0DED3EC(a1 + 2864, &v31, &v26, &v21);
    LOWORD(v21) = 12;
    v20 = 2;
    v18 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a2, "adjusted clock offset by %.3lf us to %.3lf us", a3 * 1000000.0, v34[6]);
    if (*(a1 + 2735) >= 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(&v21, &v20, "%s", v19);
    return 1;
  }

  else
  {
    LOWORD(v26) = 12;
    LOBYTE(v31) = 4;
    v12 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a2, "invalid clock correction %.3lf s", a3);
    if (*(a1 + 2735) >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(&v26, &v31, "%s", v13);
    return 0;
  }
}

void sub_1D0DED3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  sub_1D0BA1824(v8, a2);
  v9 = v7;
  v10 = 1;
  v11 = v7;
  v12 = v7;
  sub_1D0B894B0(a1 + 8, v8);
  sub_1D0B894B0(a1 + 112, a3);
  sub_1D0BA1824(v8, a4);
  v9 = v7;
  v10 = 1;
  v11 = v7;
  v12 = v7;
  sub_1D0B894B0(a1 + 664, v8);
  sub_1D0B894B0(a1 + 768, a1 + 8);
  sub_1D0B894B0(a1 + 872, a1 + 112);
  sub_1D0B894B0(a1 + 1424, a1 + 664);
  *(a1 + 1528) = 0x3FF0000000000000;
  *(a1 + 1536) = 0;
  *(a1 + 1540) = 1;
}

void sub_1D0DED4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, float64_t a14)
{
  v95 = 0x800000008;
  v93 = &unk_1F4CE43B0;
  v96 = v97;
  v94 = xmmword_1D0E84510;
  memset(v97, 0, sizeof(v97));
  sub_1D0B894B0(a1 + 80, &v93);
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a6;
  *(a1 + 24) = a7;
  *(a1 + 32) = a8;
  *(a1 + 40) = a9;
  *(a1 + 48) = a10;
  *(a1 + 56) = a11;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v97[0] = 0x100000000;
  v89 = 0x100000003;
  v87 = &unk_1F4CDEAA0;
  v90 = &v91;
  v88 = xmmword_1D0E7DCC0;
  v92 = 2;
  v91 = 0x100000000;
  v69 = 0x300000003;
  v68 = xmmword_1D0E76C10;
  v67 = &unk_1F4CD5DD0;
  v70 = v71;
  LOBYTE(v93) = 0;
  sub_1D0B9F748(a4, &v67, &v93);
  v74 = 0x300000003;
  v73 = xmmword_1D0E76C10;
  v72 = &unk_1F4CD5DD0;
  v75 = v76;
  v57 = 0x100000003;
  v55 = &unk_1F4CDEAA0;
  v56 = xmmword_1D0E7DCC0;
  v58 = v59;
  v95 = 0x10000000CLL;
  v94 = xmmword_1D0E83DD0;
  v93 = &unk_1F4CDFFF8;
  v96 = v97;
  sub_1D0B9F868(&v67, &v55, &v93, &v72);
  v27 = DWORD1(v73);
  v28 = v73;
  v79 = 0x300000003;
  v77 = &unk_1F4CD5DD0;
  v80 = v81;
  *&v78 = __PAIR64__(v73, DWORD1(v73));
  DWORD2(v78) = v73 * DWORD1(v73);
  HIDWORD(v78) = DWORD1(v73);
  if (DWORD1(v73))
  {
    v29 = 0;
    v30 = 0;
    v31 = HIDWORD(v73);
    v32 = v75;
    do
    {
      v33 = v29;
      v34 = v30;
      for (i = v28; i; --i)
      {
        v81[v34] = v32[v33];
        v34 += v27;
        ++v33;
      }

      ++v30;
      v29 += v31;
    }

    while (v30 != v27);
  }

  v57 = 0x100000003;
  v55 = &unk_1F4CDEB28;
  v56 = xmmword_1D0E7DCC0;
  v58 = v59;
  v95 = 0x300000003;
  v94 = xmmword_1D0E76C10;
  v93 = &unk_1F4CD5DD0;
  v96 = v97;
  v84 = 0x300000003;
  v83 = xmmword_1D0E76C10;
  v82 = &unk_1F4CD5DD0;
  v85 = v86;
  sub_1D0B9FACC(&v77, &v55, &v93, &v82);
  sub_1D0BADC74(&v93, a1 + 80, &v87, &v87);
  sub_1D0D2CFF0(&v93, &v82);
  v97[0] = 0x400000003;
  v63 = 0x100000003;
  v61 = &unk_1F4CDEAA0;
  v62 = xmmword_1D0E7DCC0;
  v66 = 5;
  v64 = &v65;
  v65 = 0x400000003;
  v69 = 0x300000003;
  v68 = xmmword_1D0E76C10;
  v67 = &unk_1F4CD5DD0;
  v70 = v71;
  LOBYTE(v93) = 0;
  sub_1D0B9F748(a5, &v67, &v93);
  v74 = 0x300000003;
  v73 = xmmword_1D0E76C10;
  v72 = &unk_1F4CD5DD0;
  v75 = v76;
  v57 = 0x100000003;
  v55 = &unk_1F4CDEAA0;
  v56 = xmmword_1D0E7DCC0;
  v58 = v59;
  v95 = 0x10000000CLL;
  v94 = xmmword_1D0E83DD0;
  v93 = &unk_1F4CDFFF8;
  v96 = v97;
  sub_1D0B9F868(&v67, &v55, &v93, &v72);
  v36 = DWORD1(v73);
  v37 = v73;
  v79 = 0x300000003;
  v77 = &unk_1F4CD5DD0;
  v80 = v81;
  *&v78 = __PAIR64__(v73, DWORD1(v73));
  DWORD2(v78) = v73 * DWORD1(v73);
  HIDWORD(v78) = DWORD1(v73);
  if (DWORD1(v73))
  {
    v38 = 0;
    v39 = 0;
    v40 = HIDWORD(v73);
    v41 = v75;
    do
    {
      v42 = v38;
      v43 = v39;
      for (j = v37; j; --j)
      {
        v81[v43] = v41[v42];
        v43 += v36;
        ++v42;
      }

      ++v39;
      v38 += v40;
    }

    while (v39 != v36);
  }

  v57 = 0x100000003;
  v55 = &unk_1F4CDEB28;
  v56 = xmmword_1D0E7DCC0;
  v58 = v59;
  v95 = 0x300000003;
  v94 = xmmword_1D0E76C10;
  v93 = &unk_1F4CD5DD0;
  v96 = v97;
  v84 = 0x300000003;
  v83 = xmmword_1D0E76C10;
  v82 = &unk_1F4CD5DD0;
  v85 = v86;
  sub_1D0B9FACC(&v77, &v55, &v93, &v82);
  sub_1D0BADC74(&v93, a1 + 80, &v61, &v61);
  sub_1D0D2CFF0(&v93, &v82);
  v84 = 0x200000002;
  v82 = &unk_1F4CE0268;
  v85 = v86;
  v83 = xmmword_1D0E83F70;
  v86[2] = 0.0;
  v86[1] = 0.0;
  v86[0] = a12 * a12;
  v86[3] = a13 * a13;
  v79 = 0x300000001;
  v77 = &unk_1F4CDF0C8;
  v80 = v81;
  v78 = xmmword_1D0E84500;
  v81[0] = 0x700000006;
  v95 = 0x100000003;
  v93 = &unk_1F4CDEAA0;
  v96 = v97;
  v94 = xmmword_1D0E83F60;
  v97[0] = 0x700000006;
  sub_1D0D8D2B4(v60, &v93);
  v57 = 0x200000002;
  v55 = &unk_1F4CE0268;
  v56 = xmmword_1D0E83F70;
  v58 = v59;
  LOBYTE(v93) = 0;
  sub_1D0B9F748(&v82, &v55, &v93);
  v69 = 0x200000002;
  v68 = xmmword_1D0E83F70;
  v67 = &unk_1F4CE0268;
  v70 = v71;
  v100 = 0x100000002;
  v99 = xmmword_1D0E83F60;
  v98 = &unk_1F4CE0EA8;
  v101 = v102;
  v95 = 0x100000008;
  v94 = xmmword_1D0E84520;
  v93 = &unk_1F4CE4320;
  v96 = v97;
  sub_1D0B9F868(&v55, &v98, &v93, &v67);
  v45 = DWORD1(v68);
  v46 = v68;
  v74 = 0x200000002;
  v72 = &unk_1F4CE0268;
  v75 = v76;
  *&v73 = __PAIR64__(v68, DWORD1(v68));
  DWORD2(v73) = v68 * DWORD1(v68);
  HIDWORD(v73) = DWORD1(v68);
  if (DWORD1(v68))
  {
    v47 = 0;
    v48 = 0;
    v49 = HIDWORD(v68);
    v50 = v70;
    do
    {
      v51 = v47;
      v52 = v48;
      for (k = v46; k; --k)
      {
        v76[v52] = *&v50[8 * v51];
        v52 += v45;
        ++v51;
      }

      ++v48;
      v47 += v49;
    }

    while (v48 != v45);
  }

  v100 = 0x100000002;
  v99 = xmmword_1D0E83F60;
  v98 = &unk_1F4CE0220;
  v101 = v102;
  v95 = 0x200000002;
  v94 = xmmword_1D0E83F70;
  v93 = &unk_1F4CE0268;
  v96 = v97;
  v79 = 0x200000002;
  v78 = xmmword_1D0E83F70;
  v77 = &unk_1F4CE0268;
  v80 = v81;
  sub_1D0B9FACC(&v72, &v98, &v93, &v77);
  sub_1D0D8D39C(&v93, a1 + 80, v60, v60);
  sub_1D0D8CEA0(&v93, &v77);
  v54.f64[0] = a14;
  v95 = 0x800000008;
  v94 = xmmword_1D0E84510;
  v93 = &unk_1F4CE43B0;
  v96 = v97;
  sub_1D0B8930C(a1 + 80, &v93, v54);
  sub_1D0B894B0(a1 + 80, &v93);
}

uint64_t raven::RavenConvergenceEstimator::Configure(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 57) == 1)
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 12;
    LOBYTE(v32) = 2;
    v3 = cnprint::CNLogFormatter::FormatWarning((a1 + 2712), "Configure() called more than once");
    goto LABEL_22;
  }

  v5 = *a2;
  if (!*a2)
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 12;
    LOBYTE(v32) = 4;
    v3 = cnprint::CNLogFormatter::FormatGeneral((a1 + 2712), "Configure() called with null raven parameters");
    goto LABEL_22;
  }

  if ((*(v5 + 33) & 1) == 0)
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 12;
    LOBYTE(v32) = 4;
    v3 = cnprint::CNLogFormatter::FormatGeneral((a1 + 2712), "Configure() called with uninitialized raven parameters");
    goto LABEL_22;
  }

  v6 = *(v5 + 1016);
  v7 = v6 & 0x7FFFFFFFFFFFFFFFLL;
  v8 = (v6 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v9 = v6 < 0;
  v10 = v6 < 0 && ((v6 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (!v9)
  {
    v8 = 0;
  }

  v11 = v7 <= 0x7FF0000000000000;
  v12 = v7 == 0x7FF0000000000000 || v8;
  if (!v11)
  {
    v12 = 1;
  }

  if (((v12 | v10) & 1) != 0 || *(v5 + 1016) > 1.0)
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 12;
    LOBYTE(v32) = 4;
    v3 = cnprint::CNLogFormatter::FormatGeneral((a1 + 2712), "Configure() called with invalid probability speeds differ,%.3lf");
LABEL_22:
    if (*(a1 + 2735) >= 0)
    {
      v20 = v3;
    }

    else
    {
      v20 = *(a1 + 2712);
    }

LABEL_25:
    cnprint::CNPrinter::Print(&__p, &v32, "%s", v20);
    return 0xFFFFFFFFLL;
  }

  *(a1 + 2848) = 1;
  *(a1 + 2760) = 0x100000000;
  v13 = (a1 + 2760);
  *(a1 + 2792) = 257;
  *(a1 + 2800) = *(v5 + 912);
  *(a1 + 2824) = *(v5 + 920);
  v14 = *(a1 + 2792);
  *(a1 + 5872) = *(a1 + 2808);
  *(a1 + 5904) = *(a1 + 2840);
  *(a1 + 5920) = *(a1 + 2856);
  v15 = *(a1 + 2776);
  *(a1 + 5824) = *(a1 + 2760);
  v16 = *(a1 + 2760);
  v17 = *(a1 + 2776);
  *(a1 + 5840) = v15;
  v19 = *(a1 + 2808);
  v18 = *(a1 + 2824);
  *(a1 + 5888) = v18;
  *(a1 + 5856) = v14;
  *(a1 + 4408) = v16;
  *(a1 + 4424) = v17;
  *(a1 + 4488) = *(a1 + 2840);
  *(a1 + 4456) = v19;
  *(a1 + 4472) = v18;
  *(a1 + 4440) = v14;
  *(a1 + 4400) = 0;
  v34 = 0x100000008;
  v32 = &unk_1F4CE4320;
  v35 = v36;
  v33 = xmmword_1D0E84520;
  memset(v36, 0, sizeof(v36));
  sub_1D0BA1824(&__p, &v32);
  *&__p.__r_.__value_.__r.__words[1] = xmmword_1D0E84520;
  sub_1D0B894B0(a1 + 2872, &__p);
  v38 = 0x800000008;
  __p.__r_.__value_.__r.__words[0] = &unk_1F4CE43B0;
  v39 = v40;
  *&__p.__r_.__value_.__r.__words[1] = xmmword_1D0E84510;
  memset(v40, 0, 512);
  sub_1D0B894B0(a1 + 2976, &__p);
  v38 = 0x100000008;
  __p.__r_.__value_.__r.__words[0] = &unk_1F4CE4320;
  *&__p.__r_.__value_.__r.__words[1] = xmmword_1D0E84520;
  v39 = v40;
  sub_1D0B89390(a1 + 2976, a1 + 2872, &__p);
  sub_1D0B894B0(a1 + 3528, &__p);
  sub_1D0B894B0(a1 + 3632, a1 + 2872);
  sub_1D0B894B0(a1 + 3736, a1 + 2976);
  sub_1D0B894B0(a1 + 4288, a1 + 3528);
  *(a1 + 4392) = 0x3FF0000000000000;
  *(a1 + 4400) = 0;
  *(a1 + 4404) = 1;
  if (*(a1 + 2759) < 0)
  {
    sub_1D0BC39B4(&__p, *(a1 + 2736), *(a1 + 2744));
  }

  else
  {
    __p = *(a1 + 2736);
  }

  v22 = raven::RavenSequentialGNSSMeasurementSelector::Configure(a1 + 5928, v5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v22 & 1) == 0)
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 12;
    LOBYTE(v32) = 4;
    cnprint::CNLogFormatter::FormatGeneral((a1 + 2712), "Configure() failed to configure sequential GNSS measurement selector");
    goto LABEL_41;
  }

  if (*(v5 + 3769) == 1)
  {
    LOBYTE(v32) = *(a1 + 56);
    raven::RavenParameters::GetDebugMsrLoggingFilenameForEstimator(v5, &v32, &__p);
    raven::RavenSequentialGNSSMeasurementSelector::EnableLoggingToFile(a1 + 5928, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v23 = *(a1 + 2792);
  *(a1 + 8432) = *(a1 + 2808);
  v24 = *(a1 + 2840);
  *(a1 + 8448) = *(a1 + 2824);
  *(a1 + 8464) = v24;
  *(a1 + 8416) = v23;
  v25 = *(a1 + 2776);
  *(a1 + 8384) = *v13;
  *(a1 + 8480) = *(a1 + 2856);
  *(a1 + 8400) = v25;
  *(a1 + 8416) = 0;
  __p.__r_.__value_.__r.__words[0] = 0x3FE0000000000000;
  v26 = sub_1D0D87CD8(a1 + 8496, &__p);
  v27 = *(v5 + 1488);
  if (v27 < 0.0 || v27 > 1.0 || (v28 = *(v5 + 1496), v28 < 0.0) || v28 > 1.0 || (v29 = *(v5 + 1480), v29 < 0.0))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 12;
    LOBYTE(v32) = 4;
    cnprint::CNLogFormatter::FormatGeneral((a1 + 2712), "Configure() failed to set consistency monitor prediction parameters");
    goto LABEL_41;
  }

  *(a1 + 8536) = v29;
  *(a1 + 8520) = *(v5 + 1488);
  *(a1 + 8528) = *(v5 + 1496);
  v30 = 1.0 - fabs(cnstatistics::InverseNormal(v26, (1.0 - *(v5 + 912)) * 0.5, 0.0, 1.0)) / *(v5 + 1504);
  if (v30 < 0.0 || v30 > 1.0 || (v31 = 1.0 - *(v5 + 912), v31 < 0.0) || v31 > 1.0)
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 12;
    LOBYTE(v32) = 4;
    cnprint::CNLogFormatter::FormatGeneral((a1 + 2712), "Configure() failed to set consistency monitor update parameters");
LABEL_41:
    if (*(a1 + 2735) >= 0)
    {
      v20 = (a1 + 2712);
    }

    else
    {
      v20 = *(a1 + 2712);
    }

    goto LABEL_25;
  }

  *(a1 + 8544) = v30;
  *(a1 + 8552) = v31;
  if (*(a1 + 57) == 1)
  {
    puts("Warning: RavenEstimator::Configure() called more than once.");
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 1168) = *a2;
  *(a1 + 57) = 1;
  return result;
}

void sub_1D0DEE560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *raven::RavenConvergenceEstimator::SetLogPrefix(uint64_t a1, const std::string *a2)
{
  std::string::operator=((a1 + 2736), a2);

  return std::string::operator=((a1 + 4592), a2);
}

uint64_t raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::AccessoryVehicleSpeedEvent *a2)
{
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 58) != 1)
  {
    return 0;
  }

  v4 = *(a2 + 56);
  v70 = *(a2 + 40);
  v71 = v4;
  v5 = *(a2 + 88);
  v72 = *(a2 + 72);
  v73 = v5;
  v6 = *(a2 + 24);
  v68 = *(a2 + 8);
  v69 = v6;
  v7 = raven::PopulateAllTimeFields(&v68, this + 136, v68, v6);
  if (!*(a2 + 51) || *(a2 + 30) == *(a2 + 29))
  {
    if (cnprint::CNPrinter::GetLogLevel(v7) <= 1)
    {
      LOWORD(v29) = 12;
      LOBYTE(v32) = 1;
      v33 = (*(*a2 + 16))(a2);
      *&v34 = v13;
      cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v33, "AccessoryVehicleSpeed,rejected,0 speed samples,iOSTime,%.2lf", *&v70 + v69.i64[1]);
      if (*(this + 2735) >= 0)
      {
        v14 = this + 2712;
      }

      else
      {
        v14 = *(this + 339);
      }

      cnprint::CNPrinter::Print(&v29, &v32, "%s", v14);
    }

    return 0;
  }

  if (!raven::RavenEstimator::IsZUPTAppropriate(this, a2))
  {
    v34 = 0uLL;
    v33 = &unk_1F4CEF718;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = vdupq_n_s64(0x7FF8000000000000uLL);
    v45 = NAN;
    v16 = sub_1D0D57094(a2, &v33, v44, v8);
    if (v16)
    {
      if (cnprint::CNPrinter::GetLogLevel(v16) <= 1)
      {
        v32 = 12;
        v31 = 1;
        v29 = (*(*a2 + 16))(a2);
        v30 = v17;
        v18 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v29, "AccessoryVehicleSpeed,rejected,unable to add USPD,iOSTime,%.2lf", *&v70 + v69.i64[1]);
        if (*(this + 2735) >= 0)
        {
          v12 = v18;
        }

        else
        {
          v12 = *(this + 339);
        }

        goto LABEL_27;
      }

      return 0xFFFFFFFFLL;
    }

    if (cnprint::CNPrinter::GetLogLevel(v16) <= 1)
    {
      v32 = 12;
      v31 = 1;
      v29 = (*(*a2 + 16))(a2);
      v30 = v22;
      v23 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v29, "AccessoryVehicleSpeed,accepted,USPD,iOSTime,%.2lf,speed,%.2lf,speedUnc,%.2lf", *&v70 + v69.i64[1], *&v44.i64[1], v45);
      if (*(this + 2735) >= 0)
      {
        v24 = v23;
      }

      else
      {
        v24 = *(this + 339);
      }

      cnprint::CNPrinter::Print(&v32, &v31, "%s", v24);
    }

    raven::RavenConvergenceEstimator::HandleEvent(this, &v33);
    return 0;
  }

  v34 = 0uLL;
  v33 = &unk_1F4CEF6E8;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v45 = 0.0;
  v44 = 0x7FF8000000000000uLL;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0x7FF8000000000000;
  v56 = 0;
  v57 = vdupq_n_s64(0x7FF8000000000000uLL);
  v58 = v57;
  v59 = v57;
  v60 = v57;
  v61 = 0x7FF8000000000000;
  v62 = 0;
  v63 = v57;
  v64 = v57;
  v65 = v57;
  v66 = v57;
  v67 = 0x7FF8000000000000;
  v9 = sub_1D0D56F20(a2, &v33, v57, v8);
  if (v9)
  {
    if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
    {
      v32 = 12;
      v31 = 1;
      v29 = (*(*a2 + 16))(a2);
      v30 = v10;
      v11 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v29, "AccessoryVehicleSpeed,rejected,unable to add ZUPT 2,iOSTime,%.2lf", *&v70 + v69.i64[1]);
      if (*(this + 2735) >= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = *(this + 339);
      }

LABEL_27:
      cnprint::CNPrinter::Print(&v32, &v31, "%s", v12);
      return 0xFFFFFFFFLL;
    }

    return 0xFFFFFFFFLL;
  }

  v19 = (*(*this + 320))(this, &v33);
  if (!v19)
  {
    v25 = *(this + 232);
    *(this + 15) = v34;
    if ((v25 & 1) == 0)
    {
      *(this + 232) = 1;
    }

    if (cnprint::CNPrinter::GetLogLevel(v19) <= 1)
    {
      v32 = 12;
      v31 = 1;
      v29 = (*(*a2 + 16))(a2);
      v30 = v26;
      v27 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v29, "AccessoryVehicleSpeed,accepted,ZUPT,iOSTime,%.2lf,speed,%.2lf", *&v70 + v69.i64[1], *(*(a2 + 30) - 8));
      if (*(this + 2735) >= 0)
      {
        v28 = v27;
      }

      else
      {
        v28 = *(this + 339);
      }

      cnprint::CNPrinter::Print(&v32, &v31, "%s", v28);
    }

    return 0;
  }

  if (cnprint::CNPrinter::GetLogLevel(v19) <= 1)
  {
    v32 = 12;
    v31 = 1;
    v29 = (*(*a2 + 16))(a2);
    v30 = v20;
    v21 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v29, "AccessoryVehicleSpeed,rejected,unable to add ZUPT 1,iOSTime,%.2lf", *&v70 + v69.i64[1]);
    if (*(this + 2735) >= 0)
    {
      v12 = v21;
    }

    else
    {
      v12 = *(this + 339);
    }

    goto LABEL_27;
  }

  return 0xFFFFFFFFLL;
}

uint64_t raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::UserSpeedEvent *a2)
{
  v34[4] = *MEMORY[0x1E69E9840];
  if (*(this + 57) == 1 && *(this + 58) == 1)
  {
    v23 = 0x100000003;
    *&v21[9] = &unk_1F4CDEB28;
    *&v4 = 0x100000001;
    *(&v4 + 1) = 0x100000001;
    v22 = v4;
    v24 = &v25;
    v25 = *(a2 + 13);
    v19 = 0x300000003;
    v17 = &unk_1F4CD5DD0;
    v18 = v4;
    v20 = v21;
    v21[0] = *(a2 + 14) * *(a2 + 14);
    sub_1D0BA002C(v14, 26);
    v14[0] = &unk_1F4CEB738;
    *&v16 = (*(*a2 + 16))(a2);
    *(&v16 + 1) = v5;
    *v13 = v16;
    if ((v18 & 0x80000000) != 0)
    {
      __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
    }

    v30 = 0x100000003;
    v26 = &unk_1F4CDEB28;
    v6 = v32;
    v31 = v32;
    v27 = v18 | 0x100000000;
    v28 = v18;
    v29 = v18;
    if (v18 > 3)
    {
      v8 = &v32[v18];
      bzero(v32, 16 * ((v18 - 1) >> 1));
      *(v8 - 2) = 0;
      *(v8 - 1) = 0;
    }

    else if (v18)
    {
      bzero(v32, 8 * v18);
    }

    if (*(this + 8560))
    {
      if (*(this + 3624) == 174)
      {
        LOWORD(v34[0]) = 2;
        v33 = 2;
        cnprint::CNPrinter::Print(v34, &v33, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v13[1] + *&v13[0]);
      }

      else if (*(this + 8561) == 1)
      {
        if (cnprint::CNPrinter::GetLogLevel(v6) <= 1)
        {
          LOWORD(v34[0]) = 2;
          v33 = 1;
          cnprint::CNPrinter::Print(v34, &v33, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v13[1] + *&v13[0]);
        }
      }

      else
      {
        v9 = sub_1D0B7C8AC(v13, this + 1071);
        if (!v9)
        {
          v34[0] = 0;
          v34[1] = 0;
          sub_1D0DF8F60(v34, v14);
        }

        if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
        {
          LOWORD(v34[0]) = 2;
          v33 = 1;
          cnprint::CNPrinter::Print(v34, &v33, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v13[1] + *&v13[0], *(this + 1072) + *(this + 1071));
        }
      }
    }

    else if (cnprint::CNPrinter::GetLogLevel(v6) <= 1)
    {
      LOWORD(v34[0]) = 2;
      v33 = 1;
      cnprint::CNPrinter::Print(v34, &v33, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v13[1] + *&v13[0]);
    }

    LOWORD(v34[0]) = 12;
    v33 = 4;
    v26 = (*(*a2 + 16))(a2);
    v27 = v10;
    v11 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v26, "Could not add measurement - user speed");
    if (*(this + 2735) >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = *(this + 339);
    }

    cnprint::CNPrinter::Print(v34, &v33, "%s", v12);
    v14[0] = &unk_1F4CE4300;
    if (v15 < 0)
    {
      operator delete(v14[2]);
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_1D0DEF1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::AltitudeEvent *a2)
{
  v40[4] = *MEMORY[0x1E69E9840];
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 58) != 1)
  {
    return 0;
  }

  v29 = 0x100000003;
  *&v27[9] = &unk_1F4CDEB28;
  *&v4 = 0x100000001;
  *(&v4 + 1) = 0x100000001;
  v28 = v4;
  v30 = &v31;
  v31 = *(a2 + 13);
  v25 = 0x300000003;
  v23 = &unk_1F4CD5DD0;
  v24 = v4;
  v26 = v27;
  v27[0] = *(a2 + 14) * *(a2 + 14);
  sub_1D0BA002C(v19, 2);
  v19[0] = &unk_1F4CEB5B8;
  v21 = (*(*a2 + 16))(a2);
  v22 = v5;
  v6 = (*(*a2 + 16))(a2);
  v8 = v7;
  v17 = v6;
  v18 = v7;
  if ((v24 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  v36 = 0x100000003;
  v32 = &unk_1F4CDEB28;
  v9 = v38;
  v37 = v38;
  v33 = v24 | 0x100000000;
  v34 = v24;
  v35 = v24;
  if (v24 > 3)
  {
    v11 = &v38[v24];
    bzero(v38, 16 * ((v24 - 1) >> 1));
    *(v11 - 2) = 0;
    *(v11 - 1) = 0;
  }

  else if (v24)
  {
    bzero(v38, 8 * v24);
  }

  if (*(this + 8560))
  {
    if (*(this + 3624) == 174)
    {
      LOWORD(v40[0]) = 2;
      v39 = 2;
      cnprint::CNPrinter::Print(v40, &v39, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v8 + v6);
    }

    else if (*(this + 8561) == 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
      {
        LOWORD(v40[0]) = 2;
        v39 = 1;
        cnprint::CNPrinter::Print(v40, &v39, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v8 + v6);
      }
    }

    else
    {
      v12 = sub_1D0B7C8AC(&v17, this + 1071);
      if (!v12)
      {
        v40[0] = 0;
        v40[1] = 0;
        sub_1D0DF7964(v40, v19);
      }

      if (cnprint::CNPrinter::GetLogLevel(v12) <= 1)
      {
        LOWORD(v40[0]) = 2;
        v39 = 1;
        cnprint::CNPrinter::Print(v40, &v39, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v18 + v17, *(this + 1072) + *(this + 1071));
      }
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
  {
    LOWORD(v40[0]) = 2;
    v39 = 1;
    cnprint::CNPrinter::Print(v40, &v39, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v8 + v6);
  }

  LOWORD(v40[0]) = 12;
  v39 = 4;
  v32 = (*(*a2 + 16))(a2);
  v33 = v13;
  v14 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v32, "Could not add measurement - altitude");
  if (*(this + 2735) >= 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = *(this + 339);
  }

  cnprint::CNPrinter::Print(v40, &v39, "%s", v15);
  v10 = 0xFFFFFFFFLL;
  v19[0] = &unk_1F4CE4300;
  if (v20 < 0)
  {
    operator delete(v19[2]);
  }

  return v10;
}

void sub_1D0DEF86C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DEF8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  if (v7 <= v8)
  {
    v9 = *(a1 + 12);
  }

  else
  {
    v9 = *(a1 + 8);
  }

  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10 && v9 == 8;
  if (v11 && ((v13 = *(a2 + 8), v14 = *(a2 + 12), v13 <= v14) ? (v15 = *(a2 + 12)) : (v15 = *(a2 + 8)), v13 ? (v16 = v14 == 0) : (v16 = 1), !v16 ? (v17 = v15 == 1) : (v17 = 0), v17))
  {
    v22 = *(a1 + 32);
    v40 = *v22;
    v41 = *(v22 + 16);
    v38[0] = 0;
    v38[1] = 0;
    v39 = 0.0;
    if (!cnnavigation::ECEFToLLA(&v40, 1, v38, 1, v33))
    {
      *&v23 = 0x100000001;
      *(&v23 + 1) = 0x100000001;
      *(a4 + 8) = v23;
      **(a4 + 32) = v39 + **(a2 + 32);
      v30 = 0x800000001;
      v28 = &unk_1F4CEC348;
      v31 = v32;
      v29 = xmmword_1D0E9CBE0;
      memset(v32, 0, sizeof(v32));
      sub_1D0B894B0(a5, &v28);
      v24 = *(a5 + 32);
      v25 = v35;
      *v24 = v34;
      v26 = *(a5 + 20);
      v24[v26] = v25;
      v24[2 * v26] = v36;
      v30 = 0x100000001;
      v28 = &unk_1F4CDF418;
      *&v27 = 0x100000001;
      *(&v27 + 1) = 0x100000001;
      v29 = v27;
      v31 = v32;
      *&v32[0] = 0x3FF0000000000000;
      sub_1D0B894B0(a6, &v28);
      return 0;
    }

    LOWORD(v28) = 12;
    v37 = 4;
    cnprint::CNPrinter::Print(&v28, &v37, "time,%.3lf,h-function failure on line %d: %s() %s", *(a3 + 48) + *(a3 + 40), 255, "h_Altitude_RavenConvergence", "coordinate conversion error");
  }

  else
  {
    LOWORD(v28) = 12;
    v33[0] = 4;
    cnprint::CNPrinter::Print(&v28, v33, "time,%.3lf,h-function failure on line %d: %s() %s", *(a3 + 48) + *(a3 + 40), 245, "h_Altitude_RavenConvergence", "inadequate matrices");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0DEFB50(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void raven::RavenConvergenceEstimator::ResetOscillatorStates(raven::RavenConvergenceEstimator *this)
{
  *(this + 7) = *(this + 5);
  v104 = 0x200000002;
  v102 = &unk_1F4CE0268;
  v105 = v106;
  v103 = xmmword_1D0E83F70;
  v106[1] = 0.0;
  v106[2] = 0.0;
  v2 = *(this + 146);
  v3 = *(v2 + 1264) * *(v2 + 1264);
  v106[0] = *(v2 + 1256) * *(v2 + 1256);
  v106[3] = v3;
  v120 = 0x700000006;
  v99 = 0x100000002;
  v97[1] = 0;
  v97[2] = &unk_1F4CE0EA8;
  v98 = xmmword_1D0E83F60;
  v100 = &v101;
  v101 = 0x700000006;
  v95 = 0x100000002;
  v93 = &unk_1F4CE0220;
  v94 = xmmword_1D0E83F60;
  v96 = v97;
  v97[0] = 0;
  v146 = 0x200000002;
  v145 = xmmword_1D0E83F70;
  v144 = &unk_1F4CE0268;
  v147 = v148;
  v117[0] = 0;
  sub_1D0B9F748(&v102, &v144, v117);
  v109 = 0x200000002;
  v108 = xmmword_1D0E83F70;
  v107 = &unk_1F4CE0268;
  v110 = &v111;
  v114 = 0x100000002;
  v113 = xmmword_1D0E83F60;
  v112 = &unk_1F4CE0EA8;
  v115 = v116;
  v118 = 0x100000008;
  *&v117[8] = xmmword_1D0E84520;
  *v117 = &unk_1F4CE4320;
  v119 = &v120;
  sub_1D0B9F868(&v144, &v112, v117, &v107);
  v4 = DWORD1(v108);
  v5 = v108;
  v114 = 0x200000002;
  v112 = &unk_1F4CE0268;
  v115 = v116;
  *&v113 = __PAIR64__(v108, DWORD1(v108));
  DWORD2(v113) = v108 * DWORD1(v108);
  HIDWORD(v113) = DWORD1(v108);
  if (DWORD1(v108))
  {
    v6 = 0;
    v7 = 0;
    v8 = HIDWORD(v108);
    v9 = v110;
    do
    {
      v10 = v6;
      v11 = v7;
      for (i = v5; i; --i)
      {
        v116[v11] = v9[v10];
        v11 += v4;
        ++v10;
      }

      ++v7;
      v6 += v8;
    }

    while (v7 != v4);
  }

  v141 = 0x100000002;
  v140 = xmmword_1D0E83F60;
  v139 = &unk_1F4CE0220;
  v142 = &v143;
  v118 = 0x200000002;
  *&v117[8] = xmmword_1D0E83F70;
  *v117 = &unk_1F4CE0268;
  v119 = &v120;
  v90 = 0x200000002;
  v88 = &unk_1F4CE0268;
  v89 = xmmword_1D0E83F70;
  v91 = &v92;
  sub_1D0B9FACC(&v112, &v139, v117, &v88);
  if (v98 <= DWORD1(v98))
  {
    v13 = DWORD1(v98);
  }

  else
  {
    v13 = v98;
  }

  if (DWORD1(v98))
  {
    v14 = v98 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  v118 = 0x100000002;
  *&v117[8] = xmmword_1D0E83F60;
  *v117 = &unk_1F4CE0220;
  v119 = &v120;
  sub_1D0B89390(&v88, &v93, v117);
  v16 = sub_1D0D8C7C8(&v107, v117);
  if (!*(this + 1101))
  {
    sub_1D0B894B0(this + 3632, this + 2872);
    sub_1D0B894B0(this + 3736, this + 2976);
    *&v16 = sub_1D0B894B0(this + 4288, this + 3528).n128_u64[0];
  }

  *(this + 1101) = 1;
  if (!v98 || !DWORD1(v98))
  {
    sub_1D0B894B0(this + 2872, this + 3632);
    sub_1D0B894B0(this + 2976, this + 3736);
    sub_1D0B894B0(this + 3528, this + 4288);
    *(this + 1101) = 1;
    goto LABEL_113;
  }

  *(this + 4400) = 0;
  v17 = *(this + 910);
  v18 = *(this + 911);
  if (v17 <= v18)
  {
    v19 = *(this + 911);
  }

  else
  {
    v19 = *(this + 910);
  }

  if (v18)
  {
    v20 = v17 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  if (v15 >= 1)
  {
    v22 = 0;
    v23 = (this + 4568);
    do
    {
      v24 = *(v100 + v22);
      if (v24 < 0 || v24 >= v21)
      {
        *v117 = 2;
        LOBYTE(v112) = 4;
        cnprint::CNLogFormatter::FormatGeneral(v23, "ResetStates(): states must contain valid indices into x, Rxx, and zx.", v16);
        if (*(this + 4591) >= 0)
        {
          v25 = this + 4568;
        }

        else
        {
          v25 = *v23;
        }

        cnprint::CNPrinter::Print(v117, &v112, "%s", v25);
      }

      v22 += 4;
    }

    while (4 * v15 != v22);
  }

  v118 = 0x800000001;
  *v117 = &unk_1F4CE13B8;
  v119 = &v120;
  v26 = v21 - 1;
  if (v21 == 1)
  {
    v34 = 0;
    *&v37 = 0x100000001;
    *(&v37 + 1) = 0x100000001;
    *&v117[8] = v37;
    LODWORD(v120) = 0;
    v35 = 1;
    v36 = 1;
  }

  else if (v21 <= 0)
  {
    v35 = 0;
    v36 = 0;
    *&v117[8] = 0;
    *&v117[16] = 0;
    v34 = 1;
  }

  else
  {
    v27 = 0;
    *&v117[16] = v21;
    *&v117[20] = 1;
    v28 = vdupq_n_s64(v21 - 1);
    v29 = xmmword_1D0E84440;
    v30 = xmmword_1D0E7DD30;
    v31 = vdupq_n_s64(4uLL);
    v32 = v121;
    *&v117[8] = 1;
    *&v117[12] = v21;
    do
    {
      v33 = vmovn_s64(vcgeq_u64(v28, v30));
      if (vuzp1_s16(v33, *v28.i8).u8[0])
      {
        *(v32 - 3) = v27;
      }

      if (vuzp1_s16(v33, *&v28).i8[2])
      {
        *(v32 - 2) = v27 + 1;
      }

      if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, *&v29))).i32[1])
      {
        *(v32 - 1) = v27 + 2;
        *v32 = v27 + 3;
      }

      v27 += 4;
      v29 = vaddq_s64(v29, v31);
      v30 = vaddq_s64(v30, v31);
      v32 += 4;
    }

    while (((v21 + 3) & 0xFFFFFFFC) != v27);
    v34 = 0;
    v35 = 1;
    v36 = v21;
  }

  v146 = 0x100000008;
  v144 = &unk_1F4CE43F8;
  v147 = v148;
  *&v145 = __PAIR64__(v35, v36);
  DWORD2(v145) = v36 * v35;
  HIDWORD(v145) = v36;
  if (v36)
  {
    v38 = 0;
    for (j = 0; j != v36; ++j)
    {
      if ((v34 & 1) == 0)
      {
        v40 = 0;
        do
        {
          v148[j + HIDWORD(v145) * v40] = *&v121[4 * v38 - 4 + 4 * v40];
          ++v40;
        }

        while (v35 != v40);
      }

      v38 += v35;
    }
  }

  if (v15 >= 1)
  {
    v41 = v100;
    v42 = v15;
    do
    {
      v43 = *v41++;
      v148[v43] = -1;
      --v42;
    }

    while (v42);
  }

  sub_1D0BFC4C8(&v139, v21, 1);
  v118 = 0x800000001;
  *v117 = &unk_1F4CE13B8;
  v119 = &v120;
  if (v15 == 1)
  {
    v44 = 0;
    *&v45 = 0x100000001;
    *(&v45 + 1) = 0x100000001;
    *&v117[8] = v45;
    LODWORD(v120) = 0;
    v46 = 1;
    v47 = 1;
  }

  else if (v15 <= 0)
  {
    v46 = 0;
    v47 = 0;
    *&v117[8] = 0;
    *&v117[16] = 0;
    v44 = 1;
  }

  else
  {
    v48 = 0;
    *&v117[16] = v15;
    *&v117[20] = 1;
    v49 = vdupq_n_s64(v15 - 1);
    v50 = xmmword_1D0E84440;
    v51 = xmmword_1D0E7DD30;
    v52 = vdupq_n_s64(4uLL);
    v53 = v121;
    *&v117[8] = 1;
    *&v117[12] = v15;
    do
    {
      v54 = vmovn_s64(vcgeq_u64(v49, v51));
      if (vuzp1_s16(v54, *v49.i8).u8[0])
      {
        *(v53 - 3) = v48;
      }

      if (vuzp1_s16(v54, *&v49).i8[2])
      {
        *(v53 - 2) = v48 + 1;
      }

      if (vuzp1_s16(*&v49, vmovn_s64(vcgeq_u64(v49, *&v50))).i32[1])
      {
        *(v53 - 1) = v48 + 2;
        *v53 = v48 + 3;
      }

      v48 += 4;
      v50 = vaddq_s64(v50, v52);
      v51 = vaddq_s64(v51, v52);
      v53 += 4;
    }

    while (((v15 + 3) & 0xFFFFFFFC) != v48);
    v44 = 0;
    v46 = 1;
    v47 = v15;
  }

  v136 = 0x100000008;
  v131 = &unk_1F4CE43F8;
  v137 = v138;
  v132 = v47;
  v133 = v46;
  v134 = v47 * v46;
  v135 = v47;
  if (v47)
  {
    v55 = 0;
    for (k = 0; k != v47; ++k)
    {
      if ((v44 & 1) == 0)
      {
        v57 = 0;
        do
        {
          v138[k + v135 * v57] = *&v121[4 * v55 - 4 + 4 * v57];
          ++v57;
        }

        while (v46 != v57);
      }

      v55 += v46;
    }
  }

  sub_1D0DF9968(v117, &v139, &v131);
  sub_1D0DF927C(v117, DWORD2(v98), v100);
  v58 = v21 - v15;
  if (v21 > v15)
  {
    LODWORD(v59) = 0;
    v60 = v147;
    v61 = v142;
    v62 = v15;
    do
    {
      v59 = v59;
      do
      {
        v63 = v60[v59++];
      }

      while (v63 == -1);
      *(v61 + v62++) = v63;
    }

    while (v62 != v21);
  }

  sub_1D0DF9330(this + 2864, v21, &v139);
  sub_1D0DFA168(v130, &v131);
  v118 = 0x800000001;
  *v117 = &unk_1F4CE13B8;
  v119 = &v120;
  v64 = (v26 - v15);
  if (v26 == v15)
  {
    *&v65 = 0x100000001;
    *(&v65 + 1) = 0x100000001;
    *&v117[8] = v65;
    LODWORD(v120) = v15;
    v66 = 1;
    v67 = 1;
  }

  else if (v26 - v15 < 0)
  {
    v66 = 0;
    v67 = 0;
    *&v117[8] = 0;
    *&v117[16] = 0;
    LOBYTE(v64) = 1;
  }

  else
  {
    v67 = v64 + 1;
    *&v117[8] = 1;
    *&v117[12] = v64 + 1;
    *&v117[16] = v64 + 1;
    *&v117[20] = 1;
    v68 = vdupq_n_s64(v64);
    v69 = v121;
    v70 = (4 * ~(v64 >> 2)) | 0xFFFFFFFF80000000;
    v71 = xmmword_1D0E84440;
    v72 = xmmword_1D0E7DD30;
    v73 = 13;
    v74 = vdupq_n_s64(4uLL);
    do
    {
      v75 = vmovn_s64(vcgeq_u64(v68, v72));
      if (vuzp1_s16(v75, *v68.i8).u8[0])
      {
        *(v69 - 3) = v15 + v73 - 13;
      }

      if (vuzp1_s16(v75, *&v68).i8[2])
      {
        *(v69 - 2) = v15 + v73 - 12;
      }

      if (vuzp1_s16(*&v68, vmovn_s64(vcgeq_u64(v68, *&v71))).i32[1])
      {
        *(v69 - 1) = v15 + v73 - 11;
        *v69 = v15 + v73 - 10;
      }

      v71 = vaddq_s64(v71, v74);
      v72 = vaddq_s64(v72, v74);
      v73 += 4;
      v69 += 4;
    }

    while (v70 + v73 != 13);
    LOBYTE(v64) = 0;
    v66 = 1;
  }

  v127 = 0x100000008;
  v122 = &unk_1F4CE43F8;
  v128 = v129;
  v123 = v67;
  v124 = v66;
  v125 = v67 * v66;
  v126 = v67;
  if (v67)
  {
    v76 = 0;
    for (m = 0; m != v67; ++m)
    {
      if ((v64 & 1) == 0)
      {
        v78 = 0;
        do
        {
          v129[m + v126 * v78] = *&v121[4 * v76 - 4 + 4 * v78];
          ++v78;
        }

        while (v66 != v78);
      }

      v76 += v66;
    }
  }

  sub_1D0BA4B2C(v117, this + 3632, &v131);
  sub_1D0BA556C(v117, &v93);
  sub_1D0BA16B8(v117, this + 3736, v130, v130);
  sub_1D0B9F65C(v117, &v88);
  if ((v15 & 0x80000000) != 0)
  {
    v86 = "nr >= 0";
    v87 = 3098;
    goto LABEL_119;
  }

  if (v58 < 0)
  {
    v86 = "nc >= 0";
    v87 = 3099;
LABEL_119:
    __assert_rtn("Zeros", "cnmatrix.h", v87, v86);
  }

  v114 = 0x800000008;
  v112 = &unk_1F4CE43B0;
  v115 = v116;
  v79 = v58 * v15;
  LODWORD(v113) = v15;
  DWORD1(v113) = v21 - v15;
  DWORD2(v113) = v58 * v15;
  HIDWORD(v113) = v15;
  if (v58 * v15 > 3)
  {
    v80 = &v116[v79];
    bzero(v116, 16 * ((v79 - 1) >> 1));
    *(v80 - 2) = 0;
    *(v80 - 1) = 0;
  }

  else if (v79 >= 1)
  {
    bzero(v116, 8 * (v58 * v15));
  }

  sub_1D0BA16B8(v117, this + 3736, v130, &v122);
  sub_1D0B9F65C(v117, &v112);
  sub_1D0BA4B2C(v117, this + 4288, &v131);
  sub_1D0BA556C(v117, &v107);
  sub_1D0BFC4C8(v117, v21, 1);
  if (v21 >= 1)
  {
    v81 = 0;
    v82 = v142;
    v83 = v119;
    do
    {
      *(v83 + *(v82 + v81)) = v81;
      ++v81;
    }

    while (v21 != v81);
  }

  sub_1D0DF9330(this + 2864, v21, v117);
LABEL_113:
  LOWORD(v112) = 12;
  LOBYTE(v107) = 2;
  *v117 = *(this + 5);
  v84 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v117, "Resetting estimator oscillator states.");
  if (*(this + 2735) >= 0)
  {
    v85 = v84;
  }

  else
  {
    v85 = *(this + 339);
  }

  cnprint::CNPrinter::Print(&v112, &v107, "%s", v85);
}

uint64_t raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::MapVectorEvent *a2)
{
  v113[3] = *MEMORY[0x1E69E9840];
  if (*(this + 57) != 1 || *(this + 58) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a2 + 104;
  *&v108 = (*(*a2 + 16))(a2);
  *(&v108 + 1) = v5;
  v105 = 0x100000008;
  v103 = &unk_1F4CE4320;
  v104 = xmmword_1D0E84520;
  v106 = &v107;
  v6 = 768;
  if (!*(this + 1101))
  {
    v6 = 8;
  }

  sub_1D0B894B0(&v103, this + v6 + 2864);
  v7 = v106[4];
  v8 = v106[5];
  v101 = 0uLL;
  v102 = 0;
  v101 = *v106;
  v9 = v106[3];
  v102 = *(v106 + 2);
  ShouldMapVectorConstraintBeApplied = raven::RavenEstimator::ShouldMapVectorConstraintBeApplied(this, &v101, v4);
  if (ShouldMapVectorConstraintBeApplied == -2)
  {
    return 4294967293;
  }

  v13 = sqrt(v7 * v7 + v9 * v9 + v8 * v8);
  if (fabs(v13) > 0.000000015 && ShouldMapVectorConstraintBeApplied == 0)
  {
    sub_1D0BA5FC4(this + 2864, v88);
    v85 = 0x300000001;
    v83 = &unk_1F4CDF248;
    v84 = xmmword_1D0E7F310;
    v86 = v87;
    v87[0] = v9 * (1.0 / v13);
    v87[1] = v7 * (1.0 / v13);
    v87[2] = v8 * (1.0 / v13);
    *&v64[0] = 0x400000003;
    v79 = 0x100000003;
    v77 = &unk_1F4CDEAA0;
    v78 = xmmword_1D0E7DCC0;
    v82 = 5;
    v80 = &v81;
    v81 = 0x400000003;
    sub_1D0BADC74(&v60, v88, &v77, &v77);
    v69 = 0x300000001;
    v67 = &unk_1F4CDF248;
    v68 = xmmword_1D0E7F310;
    v70 = v71;
    sub_1D0B89390(&v83, &v60, &v67);
    v16 = v84;
    v15 = DWORD1(v84);
    v111 = 0x100000003;
    v109 = &unk_1F4CDEB28;
    v112 = v113;
    *&v110 = __PAIR64__(v84, DWORD1(v84));
    DWORD2(v110) = v84 * DWORD1(v84);
    HIDWORD(v110) = DWORD1(v84);
    if (DWORD1(v84))
    {
      v17 = 0;
      v18 = 0;
      v19 = HIDWORD(v84);
      v20 = v86;
      do
      {
        v21 = v17;
        v22 = v18;
        for (i = v16; i; --i)
        {
          v113[v22] = v20[v21];
          v22 += v15;
          ++v21;
        }

        ++v18;
        v17 += v19;
      }

      while (v18 != v15);
    }

    v74 = 0x100000001;
    v72 = &unk_1F4CDF418;
    *&v24 = 0x100000001;
    *(&v24 + 1) = 0x100000001;
    v73 = v24;
    v75 = &v76;
    v25 = sub_1D0B89390(&v67, &v109, &v72);
    if (*(this + 1208) == 1 && *(this + 1320) - 1 <= 6)
    {
      v26 = qword_1D0E9D630[(*(this + 1320) - 1)];
    }

    else
    {
      v26 = 928;
    }

    if (v13 >= cnstatistics::InverseNormal(v25, 1.0 - *(*(this + 146) + v26), 0.0, sqrt(*v75)))
    {
      sub_1D0BA002C(&v60, 21);
      v64[0] = v108;
      v39 = *(v4 + 6);
      v64[8] = *(v4 + 7);
      v40 = *(v4 + 9);
      v64[9] = *(v4 + 8);
      v65[0] = v40;
      *(v65 + 12) = *(v4 + 156);
      v41 = *(v4 + 2);
      v64[4] = *(v4 + 3);
      v42 = *(v4 + 5);
      v64[5] = *(v4 + 4);
      v64[6] = v42;
      v64[7] = v39;
      v43 = *(v4 + 1);
      v64[1] = *v4;
      v64[2] = v43;
      v60 = &unk_1F4CEB5F8;
      v64[3] = v41;
      v44 = *(this + 1208);
      v45 = v44 == 1 && *(this + 1320) == 5 && *(this + 2592) == 1 && *(this + 2704) - 2 < 3;
      v66 = v45;
      v69 = 0x100000003;
      v67 = &unk_1F4CDEB28;
      *&v46 = 0x100000001;
      *(&v46 + 1) = 0x100000001;
      v68 = v46;
      v70 = v71;
      v71[0] = 0.0;
      v111 = 0x100000001;
      v109 = &unk_1F4CDF418;
      v110 = v46;
      v112 = v113;
      v47 = *(*(this + 146) + 2528);
      if (v47 <= 0.0)
      {
        v59 = 12;
        v58 = 4;
        v72 = (*(*a2 + 16))(a2);
        *&v73 = v53;
        v54 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v72, "estimator_map_vector_number_of_cross_track_position_sigmas_in_road_width_ <= 0");
        if (*(this + 2735) >= 0)
        {
          v52 = v54;
        }

        else
        {
          v52 = *(this + 339);
        }
      }

      else
      {
        v48 = *(a2 + 30) / v47;
        v49 = v48 >= 1.0 || v44 == 0;
        if (!v49 && *(this + 1320) != 5)
        {
          v48 = 1.0;
        }

        v113[0] = v48 * v48;
        if (!sub_1D0DF1AF4(this + 8560, &v108, &v67, &v109, &v60))
        {
          v27 = 0;
LABEL_58:
          v60 = &unk_1F4CE4300;
          if (SHIBYTE(v63) < 0)
          {
            operator delete(__p[1]);
          }

          goto LABEL_25;
        }

        v59 = 12;
        v58 = 4;
        v72 = (*(*a2 + 16))(a2);
        *&v73 = v50;
        v51 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v72, "Could not add measurement - map vector position");
        if (*(this + 2735) >= 0)
        {
          v52 = v51;
        }

        else
        {
          v52 = *(this + 339);
        }
      }

      cnprint::CNPrinter::Print(&v59, &v58, "%s", v52);
      v27 = -1;
      goto LABEL_58;
    }
  }

  v27 = 0;
LABEL_25:
  v28 = sub_1D0BA002C(v88, 22);
  v90 = v108;
  v29 = *(v4 + 6);
  v98 = *(v4 + 7);
  v30 = *(v4 + 9);
  v99 = *(v4 + 8);
  v100[0] = v30;
  *(v100 + 12) = *(v4 + 156);
  v31 = *(v4 + 2);
  v94 = *(v4 + 3);
  v32 = *(v4 + 5);
  v95 = *(v4 + 4);
  v88[0] = &unk_1F4CEB638;
  v96 = v32;
  v97 = v29;
  v33 = *(v4 + 1);
  v91 = *v4;
  v92 = v33;
  v93 = v31;
  v85 = 0x100000003;
  v83 = &unk_1F4CDEB28;
  *&v34 = 0x100000001;
  *(&v34 + 1) = 0x100000001;
  v84 = v34;
  v86 = v87;
  v87[0] = 0.0;
  v69 = 0x100000001;
  v67 = &unk_1F4CDF418;
  v68 = v34;
  v35 = *(*(this + 146) + 2536);
  v70 = v71;
  if (v35 <= 0.0)
  {
    LOWORD(v109) = 12;
    LOBYTE(v77) = 4;
    v60 = (*(*a2 + 16))(a2);
    __p[0] = v36;
    v37 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v60, "estimator_map_vector_cross_track_velocity_sigma_ <= 0");
    if (*(this + 2735) >= 0)
    {
      v38 = v37;
    }

    else
    {
      v38 = *(this + 339);
    }
  }

  else
  {
    v71[0] = v35 * v35;
    v62 = 0x100000003;
    v60 = &unk_1F4CDEB28;
    *__p = v34;
    v63 = v64;
    *&v64[0] = 0;
    if (*(this + 8560))
    {
      if (*(this + 3624) == 174)
      {
        LOWORD(v109) = 2;
        LOBYTE(v77) = 2;
        cnprint::CNPrinter::Print(&v109, &v77, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", *(&v108 + 1) + v108);
      }

      else if (*(this + 8561) == 1)
      {
        if (cnprint::CNPrinter::GetLogLevel(v28) <= 1)
        {
          LOWORD(v109) = 2;
          LOBYTE(v77) = 1;
          cnprint::CNPrinter::Print(&v109, &v77, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", *(&v108 + 1) + v108);
        }
      }

      else
      {
        v55 = sub_1D0B7C8AC(&v108, this + 1071);
        if (!v55)
        {
          v109 = 0;
          *&v110 = 0;
          sub_1D0DF80F4(&v109, v88);
        }

        if (cnprint::CNPrinter::GetLogLevel(v55) <= 1)
        {
          LOWORD(v109) = 2;
          LOBYTE(v77) = 1;
          cnprint::CNPrinter::Print(&v109, &v77, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", *(&v108 + 1) + v108, *(this + 1072) + *(this + 1071));
        }
      }
    }

    else if (cnprint::CNPrinter::GetLogLevel(v28) <= 1)
    {
      LOWORD(v109) = 2;
      LOBYTE(v77) = 1;
      cnprint::CNPrinter::Print(&v109, &v77, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", *(&v108 + 1) + v108);
    }

    LOWORD(v109) = 12;
    LOBYTE(v77) = 4;
    v60 = (*(*a2 + 16))(a2);
    __p[0] = v56;
    v57 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v60, "Could not add measurement - map vector velocity");
    if (*(this + 2735) >= 0)
    {
      v38 = v57;
    }

    else
    {
      v38 = *(this + 339);
    }
  }

  cnprint::CNPrinter::Print(&v109, &v77, "%s", v38);
  v11 = (v27 - 2);
  v88[0] = &unk_1F4CE4300;
  if (v89 < 0)
  {
    operator delete(v88[2]);
  }

  return v11;
}

void sub_1D0DF1518(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1D0C537DC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0DF15DC(uint64_t a1, uint64_t a2, void *lpsrc, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!lpsrc || (v11 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CEB610, 0)) == 0)
  {
    LOWORD(v43) = 12;
    LOBYTE(v38) = 4;
    cnprint::CNPrinter::Print(&v43, &v38, "time,%.3lf,h-function failure on line %d: %s() %s", MEMORY[0x30] + MEMORY[0x28], 1726, "h_MapVector_Position_RavenConvergence", "dynamic_cast failed");
    return 0xFFFFFFFFLL;
  }

  v12 = v11;
  v14 = *(a1 + 8);
  v13 = *(a1 + 12);
  if (v14 <= v13)
  {
    v15 = *(a1 + 12);
  }

  else
  {
    v15 = *(a1 + 8);
  }

  if (!v14 || !v13 || v15 != 8 || ((v17 = *(a2 + 8), v16 = *(a2 + 12), v17 <= v16) ? (v18 = *(a2 + 12)) : (v18 = *(a2 + 8)), !v17 || !v16 || v18 != 1))
  {
    LOWORD(v43) = 12;
    LOBYTE(v38) = 4;
    cnprint::CNPrinter::Print(&v43, &v38, "time,%.3lf,h-function failure on line %d: %s() %s", v11[6] + *(v11 + 5), 1740, "h_MapVector_Position_RavenConvergence", "inadequate matrices");
    return 0xFFFFFFFFLL;
  }

  v19 = *(a1 + 32);
  v53 = *v19;
  v54 = *(v19 + 16);
  v52 = 0;
  if (cnnavigation::ECEFToLLA(&v53, 1, &v51, 0, &v43))
  {
    LOWORD(v43) = 12;
    LOBYTE(v38) = 4;
    cnprint::CNPrinter::Print(&v43, &v38, "time,%.3lf,h-function failure on line %d: %s() %s", v12[6] + *(v12 + 5), 1750, "h_MapVector_Position_RavenConvergence", "coordinate conversion error to LLA");
    return 0xFFFFFFFFLL;
  }

  v51 = vmulq_f64(*(v12 + 19), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v44 = 0;
  v47 = 0x300000003;
  v45 = &unk_1F4CD5DD0;
  v46 = xmmword_1D0E76C10;
  v48 = &v49;
  v43 = &unk_1F4CD5D50;
  cnnavigation::ECEFToENU(&v53, 1, 1, &v51, 0, v50, &v43, COERCE_DOUBLE(0x300000003));
  if (v21)
  {
    LOWORD(v38) = 12;
    LOBYTE(v33) = 4;
    cnprint::CNPrinter::Print(&v38, &v33, "time,%.3lf,h-function failure on line %d: %s() %s", v12[6] + *(v12 + 5), 1761, "h_MapVector_Position_RavenConvergence", "coordinate conversion error to ENU");
    return 0xFFFFFFFFLL;
  }

  v40 = 0x300000003;
  v38 = &unk_1F4CD5DD0;
  v39 = xmmword_1D0E76C10;
  v41 = &v42;
  if (v44 == 1)
  {
    sub_1D0B894B0(&v38, &v45);
  }

  v22 = __sincos_stret(v12[26] * 0.0174532925);
  *&v23 = 0x100000001;
  *(&v23 + 1) = 0x100000001;
  *(a4 + 8) = v23;
  v24 = -v22.__cosval;
  v25 = *(a4 + 32);
  v26 = v22.__sinval * v50[1] - v22.__cosval * v50[0] + **(a2 + 32);
  *v25 = v26;
  if ((v12[29] & 1) == 0)
  {
    v27 = v12[24];
    if (fabs(v26) > v27 * 0.5)
    {
      if (v26 >= 0.0)
      {
        v27 = -v27;
      }

      *v25 = v26 + v27 * 0.5;
    }
  }

  v35 = 0x800000001;
  v33 = &unk_1F4CEC348;
  v36 = v37;
  v34 = xmmword_1D0E9CBE0;
  memset(v37, 0, sizeof(v37));
  sub_1D0B894B0(a5, &v33);
  v28 = v41;
  v29 = *(a5 + 32);
  *v29 = v22.__sinval * v41[1] + v24 * *v41;
  v30 = SHIDWORD(v39);
  v31 = *(a5 + 20);
  v29[v31] = v22.__sinval * v28[SHIDWORD(v39) + 1] + v24 * v28[SHIDWORD(v39)];
  v29[2 * v31] = v22.__sinval * v28[((2 * v30) | 1)] + v24 * v28[2 * v30];
  v35 = 0x100000001;
  v33 = &unk_1F4CDF418;
  *&v32 = 0x100000001;
  *(&v32 + 1) = 0x100000001;
  v34 = v32;
  v36 = v37;
  *&v37[0] = 0x3FF0000000000000;
  sub_1D0B894B0(a6, &v33);
  return 0;
}

uint64_t sub_1D0DF1AF4(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v5 = *(a4 + 8);
  if ((v5 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  v18 = 0x100000003;
  v13 = &unk_1F4CDEB28;
  v9 = v20;
  v19 = v20;
  v14 = v5;
  v15 = 1;
  v16 = v5;
  v17 = v5;
  if (v5 > 3)
  {
    v10 = &v20[v5];
    bzero(v20, 16 * ((v5 - 1) >> 1));
    *(v10 - 2) = 0;
    *(v10 - 1) = 0;
  }

  else if (v5)
  {
    bzero(v20, 8 * v5);
  }

  if (*a1)
  {
    if (*(a1 + 5936) == 174)
    {
      LOWORD(v22[0]) = 2;
      v21 = 2;
      cnprint::CNPrinter::Print(v22, &v21, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", a2[1] + *a2);
    }

    else if (*(a1 + 1) == 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
      {
        LOWORD(v22[0]) = 2;
        v21 = 1;
        cnprint::CNPrinter::Print(v22, &v21, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", a2[1] + *a2);
      }
    }

    else
    {
      v11 = sub_1D0B7C8AC(a2, (a1 + 8));
      if (!v11)
      {
        v22[0] = 0;
        v22[1] = 0;
        sub_1D0DF7ECC(v22, a5);
      }

      if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
      {
        LOWORD(v22[0]) = 2;
        v21 = 1;
        cnprint::CNPrinter::Print(v22, &v21, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", a2[1] + *a2, *(a1 + 16) + *(a1 + 8));
      }
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
  {
    LOWORD(v22[0]) = 2;
    v21 = 1;
    cnprint::CNPrinter::Print(v22, &v21, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", a2[1] + *a2);
  }

  return 0xFFFFFFFFLL;
}

void sub_1D0DF1F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}