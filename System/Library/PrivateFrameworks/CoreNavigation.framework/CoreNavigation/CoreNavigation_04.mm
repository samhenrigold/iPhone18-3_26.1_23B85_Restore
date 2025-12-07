uint64_t raven::RavenIonosphereEstimator::HandleEvent(raven::RavenIonosphereEstimator *this, const raven::RavenSolutionEvent *a2)
{
  if (*(this + 8))
  {
    if (*(a2 + 209) == 2 && *(a2 + 208) != 0 && *(this + 448) == 1)
    {
      if (*(a2 + 1464))
      {
        memcpy(this + 568, a2 + 8, 0xA51uLL);
        if ((*(this + 9) & 1) == 0)
        {
          if (*(this + 80) != 1)
          {
            goto LABEL_14;
          }

          v7 = CNTimeSpan::operator-(this + 58, this + 8, v5, v6);
          *&v48 = v7;
          *(&v48 + 1) = v8;
          if (v7 < 0 || (*v9.i64 = v8, v8 < 0.0))
          {
            v7 = CNTimeSpan::operator-(&v48, v9, v10);
            v9.i64[0] = v11;
          }

          if (*v9.i64 + v7 >= *(*(this + 504) + 3136))
          {
LABEL_14:
            updated = raven::RavenIonosphereEstimator::UpdateEstimatorParametersViaPolyfitToKlobucharModel(this);
            if (updated && cnprint::CNPrinter::GetLogLevel(updated) <= 1)
            {
              LOWORD(v48) = 12;
              LOBYTE(v43) = 1;
              v13 = cnprint::CNLogFormatter::FormatGeneral(this + 505, "Warning: UpdateEstimatorParametersViaPolyfitToKlobucharModel failed, continuing without updating parameters");
              if (*(this + 4063) >= 0)
              {
                v14 = v13;
              }

              else
              {
                v14 = *(this + 505);
              }

              cnprint::CNPrinter::Print(&v48, &v43, "%s", v14);
            }
          }

          v48 = 0u;
          v49 = vdupq_n_s64(0x7FF8000000000000uLL);
          v50 = v49;
          v51 = v49;
          v52 = v49;
          v53 = v49;
          v56 = 0xA0000000ALL;
          v55 = xmmword_1D0E84630;
          v54 = &unk_1F4CE2180;
          v57 = &v58;
          v15 = *(this + 504);
          if (*(v15 + 2736) == 1)
          {
            *(v15 + 2728) = 0x3EB0C6F7A0B5ED8DLL;
          }

          if (*(v15 + 2656) > 0.0 && *(v15 + 2664) > 0.0 && *(v15 + 2672) > 0.0 && *(v15 + 2680) > 0.0 && *(v15 + 2688) > 0.0 && *(v15 + 2696) > 0.0 && *(v15 + 2704) > 0.0 && *(v15 + 2712) > 0.0 && *(v15 + 2720) > 0.0 && *(v15 + 2728) > 0.0)
          {
            v45 = 0xA0000000ALL;
            v43 = &unk_1F4CE2180;
            v44 = xmmword_1D0E84630;
            v46 = &v47;
            sub_1D0E156DC(v42);
            sub_1D0B894B0(&v43, v42);
            v16 = *(this + 504);
            v17 = v46;
            v18 = 1.0;
            *v46 = 1.0 / v16[332];
            v19 = SHIDWORD(v44);
            v17[SHIDWORD(v44) + 1] = 1.0 / v16[333];
            v17[2 * v19 + 2] = 1.0 / v16[334];
            v17[3 * v19 + 3] = 1.0 / v16[335];
            v17[4 * v19 + 4] = 1.0 / v16[336];
            v17[5 * v19 + 5] = 1.0 / v16[337];
            v17[6 * v19 + 6] = 1.0 / v16[338];
            v17[7 * v19 + 7] = 1.0 / v16[339];
            v17[8 * v19 + 8] = 1.0 / v16[340];
            v17[9 * v19 + 9] = 1.0 / v16[341];
            v20 = *(a2 + 146);
            v21 = *(a2 + 147);
            v39 = *(this + 12);
            v40 = *(this + 11);
            v22 = *(this + 14);
            v38 = *(this + 13);
            v23 = *(this + 15);
            v24 = *(this + 16);
            v25 = *(this + 17);
            v26 = *(this + 18);
            v27 = *(this + 19);
            v28 = *(this + 20);
            sub_1D0E1A968(v41, &v43);
            if (*(a2 + 209) != 2)
            {
              v18 = *(*(this + 504) + 2520);
            }

            raven::RavenIonosphereEstimatorInitArgs::Fill(&v48, v20, v21, v41, v40, v39, v38, v22, v23, v24, v25, v26, v29, v30, v31, v32, v27, v28, v18);
            v41[0] = &unk_1F4CD5E28;
            return raven::RavenIonosphereEstimator::Initialize(this, &v48);
          }

          LOWORD(v43) = 12;
          v42[0] = 4;
          v36 = cnprint::CNLogFormatter::FormatGeneral(this + 505, "RavenIonosphereEstimator::HandleEvent(const RavenSolutionEvent& evt), One or more initial state standard deviation values are negative");
          if (*(this + 4063) >= 0)
          {
            v37 = v36;
          }

          else
          {
            v37 = *(this + 505);
          }

          cnprint::CNPrinter::Print(&v43, v42, "%s", v37);
        }
      }
    }

    return 0;
  }

  LOWORD(v48) = 12;
  LOBYTE(v43) = 2;
  v34 = cnprint::CNLogFormatter::FormatWarning((this + 4040), "RavenSolutionEvent received, but estimator is not configured");
  if (*(this + 4063) >= 0)
  {
    v35 = v34;
  }

  else
  {
    v35 = *(this + 505);
  }

  cnprint::CNPrinter::Print(&v48, &v43, "%s", v35);
  return 0xFFFFFFFFLL;
}

void CoreNavigation::CLP::LogEntry::PrivateData::Accel::~Accel(CoreNavigation::CLP::LogEntry::PrivateData::Accel *this)
{
  *this = &unk_1F4CD9618;
  CoreNavigation::CLP::LogEntry::PrivateData::Accel::SharedDtor(this);
  sub_1D0B8CD0C(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::Accel::~Accel(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Accel::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::Accel *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::Accel::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Gyro::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Gyro *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v7 != 2)
      {
        goto LABEL_15;
      }

      *(this + 11) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v29 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29))
        {
          return 0;
        }
      }

      else
      {
        v29 = *v9;
        *(a2 + 1) = v9 + 1;
      }

      v10 = *(a2 + 14);
      v11 = *(a2 + 15);
      *(a2 + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v8, a2, v12) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v13 = *(a2 + 14);
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v15 < 0 == v14)
      {
        *(a2 + 14) = v15;
      }

      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 18)
      {
        do
        {
          *(a2 + 1) = v16 + 1;
LABEL_27:
          v17 = *(this + 7);
          v18 = *(this + 6);
          if (v18 >= v17)
          {
            if (v17 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
              v17 = *(this + 7);
            }

            *(this + 7) = v17 + 1;
            operator new();
          }

          v19 = *(this + 2);
          *(this + 6) = v18 + 1;
          v20 = *(v19 + 8 * v18);
          v30 = 0;
          v21 = *(a2 + 1);
          if (v21 >= *(a2 + 2) || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
            {
              return 0;
            }
          }

          else
          {
            v30 = *v21;
            *(a2 + 1) = v21 + 1;
          }

          v22 = *(a2 + 14);
          v23 = *(a2 + 15);
          *(a2 + 14) = v22 + 1;
          if (v22 >= v23)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::MergePartialFromCodedStream(v20, a2, v24) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v25 = *(a2 + 14);
          v14 = __OFSUB__(v25, 1);
          v26 = v25 - 1;
          if (v26 < 0 == v14)
          {
            *(a2 + 14) = v26;
          }

          v16 = *(a2 + 1);
          v27 = *(a2 + 2);
        }

        while (v16 < v27 && *v16 == 18);
        if (v16 == v27 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 2)
    {
      goto LABEL_27;
    }

LABEL_15:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GyroSample *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 5)
          {
            goto LABEL_22;
          }

LABEL_38:
          v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v21;
          *(this + 8) |= 4u;
          v19 = *(a2 + 1);
          if (v19 < *(a2 + 2) && *v19 == 37)
          {
            *(a2 + 1) = v19 + 1;
            goto LABEL_42;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 5)
          {
            goto LABEL_22;
          }

LABEL_42:
          v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v21;
          *(this + 8) |= 8u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2 && v8 == 5)
      {
        goto LABEL_34;
      }

LABEL_22:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (v8 != 2)
    {
      goto LABEL_22;
    }

    *(this + 8) |= 1u;
    v9 = *(this + 1);
    if (!v9)
    {
      operator new();
    }

    v21 = 0;
    v10 = *(a2 + 1);
    if (v10 >= *(a2 + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v21))
      {
        return 0;
      }
    }

    else
    {
      v21 = *v10;
      *(a2 + 1) = v10 + 1;
    }

    v11 = *(a2 + 14);
    v12 = *(a2 + 15);
    *(a2 + 14) = v11 + 1;
    if (v11 >= v12)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v9, a2, v13) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v14 = *(a2 + 14);
    v15 = __OFSUB__(v14, 1);
    v16 = v14 - 1;
    if (v16 < 0 == v15)
    {
      *(a2 + 14) = v16;
    }

    v17 = *(a2 + 1);
    if (v17 < *(a2 + 2) && *v17 == 21)
    {
      *(a2 + 1) = v17 + 1;
LABEL_34:
      v21 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = v21;
      *(this + 8) |= 2u;
      v18 = *(a2 + 1);
      if (v18 < *(a2 + 2) && *v18 == 29)
      {
        *(a2 + 1) = v18 + 1;
        goto LABEL_38;
      }
    }
  }
}

int64x2_t sub_1D0BA7F04(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    LOWORD(v19.__vftable) = 3;
    LOBYTE(v17) = 5;
    cnprint::CNPrinter::Print(&v19, &v17, "Attempted to access type of uninitialized GenericEvent.");
    v4 = MEMORY[0x1E69E54A8];
  }

  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = (*(*v5 + 16))(v5);
    }

    else
    {
      v6 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CEF208 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v9, (off_1F4CEF208 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v19.__vftable = 0;
        std::bad_cast::bad_cast(&v19);
        v19.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C(&v19);
      }
    }

    v10 = *(a2 + 16);
    *a1 = &unk_1F4CEF1E0;
    *(a1 + 8) = *(v10 + 16);
    v11 = *(v10 + 64);
    v12 = *(v10 + 80);
    v13 = *(v10 + 48);
    *(a1 + 24) = *(v10 + 32);
    *(a1 + 72) = v12;
    *(a1 + 56) = v11;
    *(a1 + 40) = v13;
    v14 = *(v10 + 112);
    result = *(v10 + 128);
    v15 = *(v10 + 138);
    *(a1 + 88) = *(v10 + 96);
    *(a1 + 130) = v15;
    *(a1 + 120) = result;
    *(a1 + 104) = v14;
  }

  else
  {
    v17 = 3;
    v16 = 5;
    if (*(a2 + 8) == 1)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      LOWORD(v19.__vftable) = 3;
      v18 = 5;
      cnprint::CNPrinter::Print(&v19, &v18, "Attempted to access type of uninitialized GenericEvent.");
      v7 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v17, &v16, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEF208 & 0x7FFFFFFFFFFFFFFFLL));
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF1E0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    result = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 96) = result;
    *(a1 + 112) = result;
    *(a1 + 136) = 0x7FF8000000000000;
    *(a1 + 145) = 0;
  }

  return result;
}

void sub_1D0BA8170(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BA7F04(v7, a3);
  if (raven::RavenPNTEstimator::HandleEvent((v3 + 288), v7))
  {
    v12 = 12;
    v11 = 2;
    v10[0] = (*(v7[0] + 16))(v7);
    v10[1] = v4;
    (*(v7[0] + 24))(v8, v7);
    if (v9 >= 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, v10, "Failed to handle event - %s.", v5);
    if (*(v3 + 263) >= 0)
    {
      v6 = (v3 + 240);
    }

    else
    {
      v6 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v6);
    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_1D0BA8290(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::RateGyroEvent *a2)
{
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = v2;
  v19 = v3;
  v14 = 0;
  v15 = 0;
  v13 = &unk_1F4CEF658;
  v16 = vdupq_n_s64(0x7FF8000000000000uLL);
  v17 = 0x7FF8000000000000;
  v14 = (*(*a2 + 16))(a2);
  v15 = v6;
  v16 = *(a2 + 104);
  v17 = *(a2 + 15);
  result = sub_1D0BA8400(this + 44888, &v13);
  if (result)
  {
    v12 = 12;
    v11 = 4;
    v10[0] = (*(*a2 + 16))(a2);
    v10[1] = v8;
    cnprint::CNLogFormatter::FormatGeneral(this + 2712, v10, "Could not add measurement - rotation rates");
    if (*(this + 2735) >= 0)
    {
      v9 = this + 2712;
    }

    else
    {
      v9 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v9);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1D0BA8400(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    if (v4 == 350 && sub_1D0BA862C(a1))
    {
      return 0xFFFFFFFFLL;
    }

    v6 = (*(*a2 + 16))(a2);
    v8 = v7;
    v9 = *(a1 + 44);
    v10 = a1 + 48;
    v26 = v6;
    if (v6)
    {
      v11 = 1;
    }

    else
    {
      v11 = (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
    }

    v12 = !v11;
    while (1)
    {
      v13 = v10 + 48 * v9;
      v14 = (*(*v13 + 16))(v13);
      if (v12 || (!v14 ? (v16 = (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) : (v16 = 1), !v16 || v26 == v14))
      {
        if (v8 >= v15)
        {
          goto LABEL_26;
        }
      }

      else if (v26 >= v14)
      {
LABEL_26:
        v20 = v10 + 48 * ((v9 + 1) % 0x15E) + 8;
        goto LABEL_29;
      }

      v17 = v10 + 48 * ((v9 + 1) % 0x15E);
      v18 = *(v13 + 8);
      v19 = *(v13 + 24);
      *(v17 + 40) = *(v13 + 40);
      *(v17 + 24) = v19;
      *(v17 + 8) = v18;
      if (v9 == *(a1 + 40))
      {
        break;
      }

      if (v9)
      {
        --v9;
      }

      else
      {
        v9 = 349;
      }

      if (v9 == *(a1 + 44))
      {
        goto LABEL_30;
      }
    }

    v20 = v13 + 8;
LABEL_29:
    v23 = *(a2 + 8);
    v24 = *(a2 + 24);
    *(v20 + 32) = *(a2 + 40);
    *v20 = v23;
    *(v20 + 16) = v24;
    v9 = *(a1 + 44);
LABEL_30:
    ++*(a1 + 8);
    if (v9 == 349)
    {
      v25 = 0;
    }

    else
    {
      v25 = v9 + 1;
    }

    *(a1 + 44) = v25;
  }

  else
  {
    *(a1 + 8) = 1;
    *(a1 + 40) = 0;
    v21 = *(a2 + 8);
    v22 = *(a2 + 24);
    *(a1 + 88) = *(a2 + 40);
    *(a1 + 72) = v22;
    *(a1 + 56) = v21;
  }

  sub_1D0BA8678(a1);
  return 0;
}

uint64_t sub_1D0BA862C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v1 - 1;
  v2 = *(a1 + 40);
  if (v2 == 349)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2 + 1;
  }

  *(a1 + 40) = v3;
  sub_1D0BA8678(a1);
  return 0;
}

uint64_t sub_1D0BA8678(uint64_t result)
{
  v1 = result;
  v2 = 0.0;
  if (*(result + 8) >= 2u)
  {
    v3 = result + 48 + 48 * *(result + 44);
    v12[0] = (*(*v3 + 16))(v3);
    v12[1] = v4;
    v5 = v1 + 48 + 48 * *(v1 + 40);
    v11[0] = (*(*v5 + 16))(v5);
    v11[1] = v6;
    result = CNTimeSpan::operator-(v12, v11, v7, v8);
    v10 = v9 + result;
    if (fabs(v10) >= 2.22044605e-16)
    {
      v2 = (*(v1 + 8) - 1) / v10;
    }
  }

  *(v1 + 32) = v2;
  return result;
}

void sub_1D0BA8780(uint64_t a1, const void ***a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B9FD10(v4, a3);
  raven::RavenIonosphereEstimatorActiveObject::HandleEvent(v3, v4);
}

void CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::~AccelSample(CoreNavigation::CLP::LogEntry::PrivateData::AccelSample *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::~AccelSample(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD95A0;
  CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::AccelSample *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t raven::ConvertProtobufToRateGyroEvent(float32x2_t *this, const CoreNavigation::CLP::LogEntry::PrivateData::GyroSample *a2, raven::RateGyroEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((this[4].i8[0] & 1) == 0)
  {
    return 0;
  }

  v8 = this[1];
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v8, a2 + 8, 0, a4, a5);
  if (result)
  {
    *(a2 + 104) = vcvtq_f64_f32(this[2]);
    *(a2 + 15) = this[3].f32[0];
    return 1;
  }

  return result;
}

uint64_t raven::RavenSupervisor::RaiseEventsFrom(uint64_t this, const CoreNavigation::CLP::LogEntry::PrivateData::Gyro *a2, raven::RateGyroEvent *a3, double a4, int8x16_t a5)
{
  LODWORD(v5) = *(a2 + 6);
  if (v5 >= 1)
  {
    v7 = this;
    v8 = 0;
    v10 = vdupq_n_s64(0x7FF8000000000000uLL);
    do
    {
      v11[0] = &unk_1F4CEF1E0;
      v11[1] = 0;
      v11[2] = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v9 = v10;
      v21 = v10;
      v22 = v10;
      v23 = 0;
      v24 = 0x7FF8000000000000;
      v25 = 0;
      if (v8 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v26);
      }

      this = raven::ConvertProtobufToRateGyroEvent(*(*(a2 + 2) + 8 * v8), v11, a3, v9, a5);
      if (this)
      {
        sub_1D0BA8B4C(v7, v11);
      }

      ++v8;
      v5 = *(a2 + 6);
    }

    while (v8 < v5);
  }

  return this;
}

void sub_1D0BA8BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
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

void sub_1D0BA8BE4(uint64_t a1, uint64_t *a2)
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
  sub_1D0BA8DD4(v4, a2);
}

void sub_1D0BA8D20(_Unwind_Exception *exception_object)
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

void sub_1D0BA8D78(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0BA8BE4((a1 + 3), a2);
}

void sub_1D0BA8EEC(uint64_t a1, _BYTE **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BA7F04(v9, a3);
  if (v3[224] == 1)
  {
    v16 = &unk_1F4CEF658;
    v17 = 0;
    v19 = vdupq_n_s64(0x7FF8000000000000uLL);
    v18 = 0;
    v20 = 0x7FF8000000000000;
    v17 = (*(v9[0] + 16))(v9);
    v18 = v4;
    v19 = v10;
    v20 = v11;
    if (sub_1D0BA8400((v3 + 240), &v16))
    {
      (*(*v3 + 16))(v14, v3);
      v5 = v15;
      v6 = v14[0];
      (*(v9[0] + 24))(v12, v9);
      if (v5 >= 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v6;
      }

      if (v13 >= 0)
      {
        v8 = v12;
      }

      else
      {
        v8 = v12[0];
      }

      printf("Warning: %s failed to handle event of type %s.\n", v7, v8);
      if (v13 < 0)
      {
        operator delete(v12[0]);
      }

      if (v15 < 0)
      {
        operator delete(v14[0]);
      }
    }
  }
}

void sub_1D0BA9074(_Unwind_Exception *exception_object)
{
  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BA9094(uint64_t a1, raven::RavenIMUPreprocessorActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BA7F04(v4, a3);
  raven::RavenIMUPreprocessorActiveObject::HandleEvent(v3, v4);
}

void raven::RavenIMUPreprocessorActiveObject::HandleEvent(raven::RavenIMUPreprocessorActiveObject *this, const raven::RateGyroEvent *a2)
{
  if (*(this + 224) != 1)
  {
    return;
  }

  if (!*(this + 44))
  {
    goto LABEL_28;
  }

  __p = (*(*a2 + 16))(a2);
  *&v63 = v4;
  v5 = *(*(this + 40) + 8 * (*(this + 43) / 0x1AuLL)) + 152 * (*(this + 43) % 0x1AuLL);
  v73[0] = (*(*v5 + 16))(v5);
  v73[1] = v6;
  v9 = CNTimeSpan::operator-(&__p, v73, v7, v8);
  v74 = v9;
  v75 = v10;
  if (v9)
  {
    if (v9 < 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (!sub_1D0B8E6A8(&v74, this + 30))
    {
      goto LABEL_28;
    }

    goto LABEL_8;
  }

  v11.n128_f64[0] = v10;
  if (v10 >= 0.0)
  {
    goto LABEL_7;
  }

LABEL_8:
  LOWORD(v73[0]) = 12;
  v72 = 3;
  v12 = (*(*a2 + 16))(a2, v11);
  v14 = v13 + v12;
  (*(*this + 16))(&__p, this);
  if (v63 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  cnprint::CNPrinter::Print(v73, &v72, "Warning: time,%.3lf,%s emptying history,gyro,dt,%.3lf", v14, p_p, v75 + v74);
  if (SHIBYTE(v63) < 0)
  {
    operator delete(__p);
  }

  v16 = *(this + 40);
  v17 = *(this + 41);
  if (v17 == v16)
  {
    v17 = *(this + 40);
  }

  else
  {
    v18 = *(this + 43);
    v19 = &v16[v18 / 0x1A];
    v20 = v16[(*(this + 44) + v18) / 0x1A] + 152 * ((*(this + 44) + v18) % 0x1A);
    if (*v19 + 152 * (v18 % 0x1A) != v20)
    {
      v21 = (*v19 + 152 * (v18 % 0x1A));
      do
      {
        v22 = *v21;
        v21 += 19;
        (*v22)();
        if (v21 - *v19 == 3952)
        {
          v23 = v19[1];
          ++v19;
          v21 = v23;
        }
      }

      while (v21 != v20);
      v16 = *(this + 40);
      v17 = *(this + 41);
    }
  }

  *(this + 44) = 0;
  v24 = v17 - v16;
  if (v24 >= 3)
  {
    do
    {
      operator delete(*v16);
      v25 = *(this + 41);
      v16 = (*(this + 40) + 8);
      *(this + 40) = v16;
      v24 = (v25 - v16) >> 3;
    }

    while (v24 > 2);
  }

  if (v24 == 1)
  {
    v26 = 13;
  }

  else
  {
    if (v24 != 2)
    {
      goto LABEL_28;
    }

    v26 = 26;
  }

  *(this + 43) = v26;
LABEL_28:
  sub_1D0B93B8C((this + 312), a2);
  v27 = *(this + 44);
  if (v27 == *(this + 38))
  {
    v63 = 0uLL;
    __p = &unk_1F4CEF1E0;
    LOBYTE(v64) = 0;
    *(&v64 + 1) = 0;
    *&v65 = 0;
    BYTE8(v65) = 0;
    v66 = 0uLL;
    LOBYTE(v67) = 0;
    *(&v67 + 1) = 0;
    *v68 = 0;
    *&v68[8] = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v68[24] = *&v68[8];
    v69 = 0;
    v70 = 0x7FF8000000000000;
    v71 = 0;
    v28 = *(this + 64);
    if (v27 > v28)
    {
      v29 = *(this + 43);
      v30 = v29 + v28;
      v31 = *(this + 40);
      v32 = *(v31 + 8 * (v30 / 0x1A)) + 152 * (v30 % 0x1A);
      v33 = *(v32 + 8);
      v64 = *(v32 + 24);
      v63 = v33;
      v34 = *(v32 + 40);
      v35 = *(v32 + 56);
      v36 = *(v32 + 72);
      *v68 = *(v32 + 88);
      v67 = v36;
      v66 = v35;
      v65 = v34;
      memset(&v68[16], 0, 24);
      v37 = *(this + 37);
      v38 = *(this + 34);
      v39 = *(this + 35);
      v40 = (v38 + 8 * (v37 >> 9));
      if (v39 == v38)
      {
        v41 = 0;
      }

      else
      {
        v41 = (*v40 + 8 * (*(this + 37) & 0x1FFLL));
      }

      v42 = (v31 + 8 * (v29 / 0x1A));
      v43 = *(this + 41);
      if (v43 == v31)
      {
        v44 = 0;
      }

      else
      {
        v44 = *v42 + 152 * (v29 % 0x1A);
      }

      v45 = (v29 + v27) % 0x1A;
      v46 = v37 + v27;
      v47 = (v37 + v27) >> 9;
      v48 = v46 & 0x1FF;
      v49 = 0uLL;
      v35.n128_u64[0] = 0;
      while (1)
      {
        v50 = v44 - 3952;
        do
        {
          if (v39 == v38)
          {
            v51 = 0;
          }

          else
          {
            v51 = *(v38 + 8 * v47) + 8 * v48;
          }

          if (v41 == v51 || (v43 == v31 ? (v52 = 0) : (v52 = *(v31 + 8 * ((v29 + v27) / 0x1A)) + 152 * v45), v44 == v52))
          {
            v56 = (*(v31 + 8 * ((v27 + v29 - 1) / 0x1A)) + 152 * ((v27 + v29 - 1) % 0x1A));
            (**v56)(v56, v45, v49, v35);
            v57 = *(this + 41);
            v58 = v57 == *(this + 40);
            v59 = 26 * ((v57 - *(this + 40)) >> 3) - 1;
            v61 = *(this + 43);
            v60 = *(this + 44);
            *(this + 44) = v60 - 1;
            if (v58)
            {
              v59 = 0;
            }

            if ((v59 - (v60 + v61) - 51) <= 0xFFFFFFFFFFFFFFCBLL)
            {
              operator delete(*(v57 - 8));
              *(this + 41) -= 8;
            }

            sub_1D0BA96A0(this, &__p);
          }

          v53 = *v41++;
          v49 = vmlaq_n_f64(v49, *(v44 + 104), v53);
          *&v68[16] = v49;
          v35.n128_f64[0] = v35.n128_f64[0] + v53 * *(v44 + 120);
          *&v68[32] = v35.n128_u64[0];
          if ((v41 - *v40) == 4096)
          {
            v54 = v40[1];
            ++v40;
            v41 = v54;
          }

          v50 += 152;
          v44 += 152;
        }

        while (*v42 != v50);
        v55 = v42[1];
        ++v42;
        v44 = v55;
      }
    }

    sub_1D0C543A8("deque");
  }
}

void sub_1D0BA9678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BA9734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
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

void sub_1D0BA9758(uint64_t a1, raven::RavenDeviceAttitudeActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BA7F04(v4, a3);
  raven::RavenDeviceAttitudeActiveObject::HandleEvent(v3, v4);
}

uint64_t sub_1D0BA97B8(uint64_t *a1, uint64_t a2, double *a3, unint64_t a4)
{
  v8 = sub_1D0B937E8(a1, a2);
  if (a1[5])
  {
    for (i = 1; ; i = 0)
    {
      v19[0] = (*(*a2 + 16))(a2, v8);
      v19[1] = v10;
      v11 = *(a1[1] + 8 * (a1[4] / 0x1AuLL)) + 152 * (a1[4] % 0x1AuLL);
      v18[0] = (*(*v11 + 16))(v11);
      v18[1] = v12;
      *&v20[0] = CNTimeSpan::operator-(v19, v18, v13, v14);
      v20[1] = v15;
      if (!sub_1D0B7CF88(v20, a3) && a1[5] <= a4)
      {
        break;
      }

      sub_1D0B9A458(a1);
      v16 = 0;
      if (!a1[5])
      {
        return v16 & 1;
      }
    }

    v16 = i;
  }

  else
  {
    v16 = 1;
  }

  return v16 & 1;
}

void raven::RavenDeviceAttitudeActiveObject::HandleEvent(raven::RavenDeviceAttitudeActiveObject *this, const raven::RateGyroEvent *a2)
{
  if (*(this + 224))
  {
    __p = 2;
    v23 = 0;
    v4 = sub_1D0BA97B8(this + 964, a2, &__p, *(this + 910));
    if ((v4 & 1) == 0 && !cnprint::CNPrinter::GetLogLevel(v4))
    {
      LOWORD(__p) = 12;
      LOBYTE(v26) = 0;
      v5 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&__p, &v26, "DevAtt,Gyro stationary detection queue overflowed at %.3lf", v6 + v5);
    }

    __p = 3;
    v23 = 0x3FE0000000000000;
    v7 = sub_1D0BA97B8(this + 940, a2, &__p, *(this + 911));
    if ((v7 & 1) == 0)
    {
      if (!cnprint::CNPrinter::GetLogLevel(v7))
      {
        LOWORD(__p) = 12;
        LOBYTE(v26) = 0;
        v8 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&__p, &v26, "DevAtt,Gyro down sampling queue overflowed at %.3lf", v9 + v8);
      }

      v10 = *(this + 832);
      v11 = *(this + 833);
      if (v11 == v10)
      {
        v14 = (this + 6688);
        v11 = *(this + 832);
      }

      else
      {
        v12 = *(this + 835);
        v13 = &v10[v12 / 0x1A];
        v14 = (this + 6688);
        v15 = v10[(*(this + 836) + v12) / 0x1A] + 152 * ((*(this + 836) + v12) % 0x1A);
        if (*v13 + 152 * (v12 % 0x1A) != v15)
        {
          v16 = (*v13 + 152 * (v12 % 0x1A));
          do
          {
            v17 = *v16;
            v16 += 19;
            (*v17)();
            if (v16 - *v13 == 3952)
            {
              v18 = v13[1];
              ++v13;
              v16 = v18;
            }
          }

          while (v16 != v15);
          v11 = *(this + 833);
          v10 = *(this + 832);
        }
      }

      *v14 = 0;
      v20 = v11 - v10;
      if (v20 >= 3)
      {
        do
        {
          operator delete(*v10);
          v10 = (*(this + 832) + 8);
          *(this + 832) = v10;
          v20 = (*(this + 833) - v10) >> 3;
        }

        while (v20 > 2);
      }

      if (v20 == 1)
      {
        v21 = 13;
      }

      else
      {
        if (v20 != 2)
        {
          return;
        }

        v21 = 26;
      }

      *(this + 835) = v21;
    }
  }

  else
  {
    v26 = 12;
    v25 = 3;
    (*(*this + 16))(&__p, this, a2);
    if (v24 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    cnprint::CNPrinter::Print(&v26, &v25, "Warning: %s is not configured yet.", p_p);
    if (v24 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1D0BA9BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BA9C08(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BA7F04(v4, a3);
  *(v3 + 256) = *(v3 + 112);
  sub_1D0BA96A0(v3, v4);
}

void sub_1D0BA9C50(uint64_t a1, raven::RavenMapVectorActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  v4 = sub_1D0BA7F04(v6, a3);
  raven::RavenMapVectorActiveObject::HandleEvent(v3, v6, v4, v5);
}

void raven::RavenMapVectorActiveObject::HandleEvent(raven::RavenMapVectorActiveObject *this, const raven::RateGyroEvent *a2, int8x16_t a3, int8x16_t a4)
{
  if (*(this + 440))
  {
    v6 = CNTimeSpan::operator-(a2 + 1, this + 57, a3, a4);
    v98 = v6;
    *&v99 = v7;
    if (v6 < 0 || (*v8.i64 = v7, v7 < 0.0))
    {
      v6 = CNTimeSpan::operator-(&v98, v8, v9);
      v8.i64[0] = v10;
    }

    if (*v8.i64 + v6 > 1.0)
    {
      if (cnprint::CNPrinter::GetLogLevel(v6) > 1)
      {
        goto LABEL_12;
      }

      LOWORD(v92) = 12;
      LOBYTE(v89[0]) = 1;
      v11 = (*(*a2 + 16))(a2);
      if (*(this + 440))
      {
        *v13.i64 = v12;
        *v14.i64 = v11;
        v15 = v12 + v11;
        v16 = CNTimeSpan::operator-(a2 + 1, this + 57, v13, v14);
        v98 = v16;
        *&v99 = v17;
        if (v16 < 0 || (*v18.i64 = v17, v17 < 0.0))
        {
          v16 = CNTimeSpan::operator-(&v98, v18, v19);
          v18.i64[0] = v20;
        }

        cnprint::CNPrinter::Print(&v92, v89, "t,%.3lf,MapVectorAO: Time delta between RateGyroEvent and DecomposedAccelerationEvent is too large, %.2lf. Clearing map vector information, vertical rotation rate queue, and DecomposedAccelerationEvent,", v15, *v18.i64 + v16);
LABEL_12:
        v21 = *(this + 518);
        v22 = *(this + 519);
        *(this + 522) = 0;
        v23 = (v22 - v21) >> 3;
        if (v23 >= 3)
        {
          do
          {
            operator delete(*v21);
            v21 = (*(this + 518) + 8);
            *(this + 518) = v21;
            v23 = (*(this + 519) - v21) >> 3;
          }

          while (v23 > 2);
        }

        if (v23 == 1)
        {
          v24 = 256;
        }

        else
        {
          if (v23 != 2)
          {
            goto LABEL_35;
          }

          v24 = 512;
        }

        *(this + 521) = v24;
LABEL_35:
        *(this + 4184) = 0u;
        *(this + 525) = 0x7FF8000000000000;
        if (*(this + 440) == 1)
        {
          *(this + 440) = 0;
        }

        goto LABEL_38;
      }

LABEL_63:
      __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
    }

    if (*(this + 648) != 1)
    {
      goto LABEL_41;
    }

    v27 = *(this + 69);
    _Q3 = *(this + 35);
    _Q0 = vmulq_f64(_Q3, _Q3);
    _D11 = *(this + 71);
    __asm { FMLA            D0, D11, V3.D[1] }

    v35 = sqrt(*_Q0.i64);
    if (fabs(v35) <= 0.000000015 || (*&v35 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      LOWORD(v98) = 12;
      LOBYTE(v92) = 4;
      v87 = v35;
      v49 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v98, &v92, "t,%.3lf,MapVectorAO: Gravity vector has invalid magnitude, %.3lf. Clearing cached map vector information.", v50 + v49, v87);
LABEL_38:
      if (*(this + 808) == 1)
      {
        *(this + 808) = 0;
      }

      *(this + 513) = 0x7FF0000000000000;
      *(this + 514) = 0;
      *(this + 515) = 0x7FF8000000000000;
      *(this + 4128) = 0;
      goto LABEL_41;
    }

    v9.i64[0] = *(a2 + 15);
    *_Q0.i64 = (_Q3.f64[0] * *(a2 + 14) + *(a2 + 13) * v27 + *v9.i64 * _D11) * 57.2957795;
    v36 = *_Q0.i64 / v35;
    if (*(this + 1272) != 1 || *(this + 3024) != 1)
    {
      goto LABEL_44;
    }

    v85 = *(this + 35);
    *&v86 = v35;
    v37 = CNTimeSpan::operator-(a2 + 1, this + 161, _Q0, v9);
    v98 = v37;
    *&v99 = v38;
    if (v37 < 0 || (*_Q0.i64 = v38, v38 < 0.0))
    {
      v37 = CNTimeSpan::operator-(&v98, _Q0, v9);
      _Q0.i64[0] = v39;
    }

    *_Q0.i64 = *_Q0.i64 + v37;
    v9.i64[0] = 10.0;
    if (*_Q0.i64 < 10.0)
    {
      v40 = (v85.f64[0] * *(this + 380) + *(this + 379) * v27 + *(this + 381) * _D11) * 57.2957795;
      v100 = 0x300000003;
      v99 = xmmword_1D0E76C10;
      v98 = &unk_1F4CD5DD0;
      v101 = v102;
      v94 = 0x100000003;
      v93 = xmmword_1D0E7DCC0;
      v92 = &unk_1F4CDEB28;
      v95 = &v96;
      v96 = v27 / *&v86;
      v97 = vdivq_f64(v85, vdupq_lane_s64(v86, 0));
      v42 = *(this + 384);
      v43 = *(this + 385);
      v102[0] = *(this + 191);
      *(&v41 + 1) = *(&v102[0] + 1);
      *&v41 = v42;
      v102[1] = v41;
      v44 = *(this + 193);
      v45 = v40 / *&v86;
      v103 = v43;
      v104 = v44;
      v105 = v42;
      v106 = v44;
      sub_1D0D4BC50(&v92, v88);
      sub_1D0BFB8FC(v88, &v98, v89);
      v46 = sub_1D0BFC678(v89, &v92, v90);
      *(this + 512) = sqrt(*v91) * 57.2957795;
      *(this + 4088) = 1;
      if (!cnprint::CNPrinter::GetLogLevel(v46))
      {
        LOWORD(v89[0]) = 12;
        LOBYTE(v88[0]) = 0;
        v47 = (*(*a2 + 16))(a2);
        if ((*(this + 4088) & 1) == 0)
        {
          __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
        }

        cnprint::CNPrinter::Print(v89, v88, "t,%.3lf,MapVectorAO: vertical_rotation_bias_dps,%.2lf,vertical_rotation_rate_bias_uncertainty_dps,%.2lf,vertical_rotation_rate_dps,%.2lf", v48 + v47, v45, *(this + 512), v36);
      }

      if ((*(this + 648) & 1) == 0)
      {
        goto LABEL_63;
      }

      v36 = v36 - v45;
    }

    else
    {
LABEL_44:
      *(this + 4088) = 0;
    }

    v63 = CNTimeSpan::operator-(a2 + 1, this + 83, _Q0, v9);
    v98 = v63;
    *&v99 = v64;
    if (v63 < 0 || (*v65.i64 = v64, v64 < 0.0))
    {
      v63 = CNTimeSpan::operator-(&v98, v65, v66);
      v65.i64[0] = v67;
    }

    v68 = *v65.i64 + v63;
    if (v68 <= 1.0)
    {
      *(this + 513) = *(this + 513) + v36 * v68;
      *(this + 514) = (*(*a2 + 16))(a2);
      *(this + 515) = v72;
      HIDWORD(v69) = 0;
      *(this + 4128) = 1;
    }

    else
    {
      if (*(this + 808) == 1)
      {
        *(this + 808) = 0;
      }

      *(this + 513) = 0x7FF0000000000000;
      *(this + 514) = 0;
      *(this + 515) = 0x7FF8000000000000;
      *(this + 4128) = 0;
      if (cnprint::CNPrinter::GetLogLevel(v63) <= 1)
      {
        LOWORD(v92) = 12;
        LOBYTE(v89[0]) = 1;
        v70 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&v92, v89, "t,%.3lf,MapVectorAO: Too much time between rate gyro events, %.2lf. Cannot accumulate device rotation with high fidelity,", v71 + v70, v68);
      }
    }

    LODWORD(v69) = vcvtpd_u64_f64(*(*(this + 29) + 3248) / *(*(this + 29) + 656));
    *(this + 526) = v69;
    v73 = *(this + 522);
    if (v73)
    {
      while (v73 >= v69)
      {
        v74 = *(this + 521);
        *(this + 523) = *(this + 523) - *(*(*(this + 518) + ((v74 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v74 & 0x1FF));
        *(this + 522) = v73 - 1;
        *(this + 521) = v74 + 1;
        sub_1D0B90D48(this + 4136, 1);
        v73 = *(this + 522);
        if (!v73)
        {
          break;
        }

        v69 = *(this + 526);
      }
    }

    v75 = *(this + 519);
    v76 = *(this + 518);
    v77 = ((v75 - v76) << 6) - 1;
    if (v75 == v76)
    {
      v77 = 0;
    }

    v78 = v73 + *(this + 521);
    if (v77 == v78)
    {
      sub_1D0C1245C(this + 517);
      v73 = *(this + 522);
      v76 = *(this + 518);
      v78 = *(this + 521) + v73;
    }

    *(*(v76 + ((v78 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v78 & 0x1FF)) = v36;
    *(this + 522) = v73 + 1;
    *(this + 523) = v36 + *(this + 523);
    v92 = (*(*a2 + 16))(a2);
    *&v93 = v79;
    v80.i64[0] = 0.5;
    *v81.i64 = *(*(this + 29) + 656) * *(this + 522) * 0.5;
    v89[0] = 0;
    v89[1] = 0;
    *v82.i64 = CNTimeSpan::SetTimeSpan(v89, 0, v81, v80);
    *(this + 524) = CNTimeSpan::operator-(&v92, v89, v82, v83);
    *(this + 525) = v84;
  }

  else if (!cnprint::CNPrinter::GetLogLevel(this))
  {
    LOWORD(v98) = 12;
    LOBYTE(v92) = 0;
    v25 = (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v98, &v92, "t,%.3lf,MapVectorAO: Waiting for decomposed acceleration event,", v26 + v25);
  }

LABEL_41:
  if (*(this + 648) == 1)
  {
    *(this + 664) = *(a2 + 8);
    v51 = *(a2 + 24);
    v52 = *(a2 + 40);
    v53 = *(a2 + 72);
    *(this + 712) = *(a2 + 56);
    *(this + 728) = v53;
    *(this + 680) = v51;
    *(this + 696) = v52;
    v54 = *(a2 + 88);
    v55 = *(a2 + 104);
    v56 = *(a2 + 120);
    *(this + 786) = *(a2 + 130);
    *(this + 760) = v55;
    *(this + 776) = v56;
    *(this + 744) = v54;
  }

  else
  {
    *(this + 82) = &unk_1F4CEF1E0;
    *(this + 664) = *(a2 + 8);
    v57 = *(a2 + 24);
    v58 = *(a2 + 40);
    v59 = *(a2 + 72);
    *(this + 712) = *(a2 + 56);
    *(this + 728) = v59;
    *(this + 680) = v57;
    *(this + 696) = v58;
    v60 = *(a2 + 88);
    v61 = *(a2 + 104);
    v62 = *(a2 + 120);
    *(this + 786) = *(a2 + 130);
    *(this + 760) = v61;
    *(this + 776) = v62;
    *(this + 744) = v60;
    *(this + 648) = 1;
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::Gyro::~Gyro(CoreNavigation::CLP::LogEntry::PrivateData::Gyro *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::Gyro::~Gyro(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD9708;
  CoreNavigation::CLP::LogEntry::PrivateData::Gyro::SharedDtor(this);
  sub_1D0B8CD0C(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Gyro::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::Gyro *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::Gyro::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::~GyroSample(CoreNavigation::CLP::LogEntry::PrivateData::GyroSample *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::~GyroSample(this);

  JUMPOUT(0x1D387ECA0);
}

{
  *this = &unk_1F4CD9690;
  CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::GyroSample *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t sub_1D0BAA7A4(uint64_t a1, double *a2)
{
  v12 = *a2;
  if (*a2 < 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  if (fabs(v12) < 2.22044605e-16)
  {
    return 0;
  }

  v48[1] = v11;
  v48[2] = v10;
  v48[3] = v9;
  v48[4] = v8;
  v48[5] = v7;
  v48[6] = v6;
  v48[7] = v5;
  v48[8] = v4;
  v48[11] = v2;
  v48[12] = v3;
  v15 = *(a1 + 40);
  v16 = v12 / *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = 1.0 - v15;
  v19 = 1.0 - v17;
  v20 = sqrt((v17 * v15 - (1.0 - v15) * (1.0 - v17)) * -4.0 + (v17 + v15) * (v17 + v15));
  v21 = (v17 + v15 + v20) * 0.5;
  v22 = (v17 + v15 - v20) * 0.5;
  v23 = v17 + 1.0 - v15;
  v24 = 1.0 - v17 + v15;
  v25 = (1.0 - v17) / (v21 - v15);
  v26 = (v21 - v15) / (1.0 - v17);
  if (1.0 - v17 > vabdd_f64(v21, v15))
  {
    v25 = 1.0;
  }

  else
  {
    v26 = 1.0;
  }

  v27 = v22 - v15;
  v28 = v19 <= vabdd_f64(v22, v15);
  v29 = v19 / (v22 - v15);
  v30 = v27 / v19;
  if (v28)
  {
    v30 = 1.0;
  }

  else
  {
    v29 = 1.0;
  }

  v31 = v18 / (v21 - v17);
  v32 = (v21 - v17) / v18;
  if (v18 <= vabdd_f64(v21, v17))
  {
    v32 = 1.0;
  }

  else
  {
    v31 = 1.0;
  }

  v33 = v22 - v17;
  v28 = v18 <= vabdd_f64(v22, v17);
  v34 = v18 / (v22 - v17);
  v35 = v33 / v18;
  if (v28)
  {
    v35 = 1.0;
  }

  else
  {
    v34 = 1.0;
  }

  if (v23 <= v24)
  {
    v34 = v30;
    v36 = v26;
  }

  else
  {
    v29 = v35;
    v36 = v31;
  }

  if (v23 > v24)
  {
    v37 = v32;
  }

  else
  {
    v37 = v25;
  }

  v38 = sqrt(v37 * v37 + v36 * v36);
  v39 = v36 / v38;
  v40 = v37 / v38;
  v41 = sqrt(v29 * v29 + v34 * v34);
  v42 = v34 / v41;
  v43 = v29 / v41;
  v44 = v39 * (v29 / v41) - v37 / v38 * (v34 / v41);
  v45 = pow(v21, v16);
  v46 = pow(v22, v16) * v42;
  v47 = (v46 * v39 + -(v45 * v39) * v42) / v44;
  v48[0] = (v45 * v39 * v43 - v46 * v40) / v44;
  if (!*(a1 + 24))
  {
    *(a1 + 16) = *(a1 + 8);
  }

  return sub_1D0BAD938(a1 + 8, (a1 + 16), v48, &v47);
}

double sub_1D0BAA988(_BYTE *a1, __n128 *a2)
{
  sub_1D0BAA9CC(a1);
  *a1 = 0;

  *&result = sub_1D0BADC18(a1, a2).n128_u64[0];
  return result;
}

double sub_1D0BAA9CC(uint64_t a1)
{
  result = MEMORY[0x1EEE9AC00](a1);
  if (*v1 == 1)
  {
    v4 = v2;
    v5 = v1;
    if (*(v1 + 1) == 1)
    {
      *(v1 + 1) = 0;
    }

    if (*(v1 + 5936))
    {
      if (!sub_1D0B9D420(v2, (v1 + 8)))
      {
        v6 = *(v5 + 5936);
        sub_1D0C01A20(v14, *(v5 + 5936), 1);
        v7 = 0;
        if (v6 >= 1)
        {
          v8 = *(v5 + 48);
          if (v8 != (v5 + 40))
          {
            v9 = 0;
            v7 = 0;
            v10 = 1;
            do
            {
              if (sub_1D0B7CF88((*(v5 + 96) + v9), v4->n128_f64))
              {
                *(v19 + 4 * v7) = v10 - 1;
                v8 = v8[1];
                ++v7;
              }

              else
              {
                v11 = *v8;
                v12 = v8[1];
                v11[1] = v12;
                *v12 = v11;
                --*(v5 + 56);
                sub_1D0B9FF7C(v8 + 2);
                operator delete(v8);
                v8 = v12;
              }

              if (v10 >= v6)
              {
                break;
              }

              ++v10;
              v9 += 16;
            }

            while (v8 != (v5 + 40));
          }
        }

        v15 = v7;
        v16 = 1;
        v17 = v7;
        v18 = v7;
        *(v5 + 5936) = v7;
        sub_1D0C01C70(v13, v5 + 64, v14);
        sub_1D0BF181C(v5 + 64, v13);
        sub_1D0C01E74(v13, v5 + 2888, v14);
        sub_1D0B9F5D4(v5 + 2888, v13);
        sub_1D0C01F50(v13, v5 + 3624, v14);
        sub_1D0B894B0(v5 + 3624, v13);
        sub_1D0C02030(v13, v5 + 5056, v14);
      }
    }

    else
    {
      *v13 = *(v1 + 8);
      sub_1D0BAAEBC(v1);
      sub_1D0BADC18(v5, v4);
      *v5 = 0;
      *&result = sub_1D0BADC18(v5, v13).n128_u64[0];
    }
  }

  return result;
}

double sub_1D0BAAEBC(uint64_t a1)
{
  *a1 = 0;
  sub_1D0BAAF58((a1 + 40));
  *(a1 + 5936) = 0;
  *(a1 + 11904) = 0;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 2896) = 0u;
  *(a1 + 3632) = 0u;
  *(a1 + 5064) = 0u;
  *(a1 + 5112) = 0u;
  *(a1 + 5848) = 0u;
  *(a1 + 5896) = 0u;
  *(a1 + 5952) = 0u;
  *(a1 + 7384) = 0u;
  *(a1 + 10248) = 0u;
  *(a1 + 8816) = 0u;
  *(a1 + 10640) = 0u;
  *(a1 + 11376) = 0u;
  *(a1 + 11816) = 0u;
  *(a1 + 11424) = 0u;
  *(a1 + 11864) = 0u;
  *(a1 + 11920) = 0u;
  *(a1 + 12656) = 0u;
  return result;
}

void sub_1D0BAAF58(void *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_1D0B9FF7C(v2 + 2);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t sub_1D0BAAFCC(void *a1)
{
  if ((atomic_load_explicit(&qword_1EC5FB3D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EC5FB3D8))
  {
    sub_1D0D847D4(&qword_1EC5FB3D0, "11111111110101", 0xFFFFFFFFFFFFFFFFLL, 48, 49);
    __cxa_guard_release(&qword_1EC5FB3D8);
  }

  v2 = qword_1EC5FB3D0 & *a1;
  v4 = 0;
  v5 = v2;
  return sub_1D0BAED18(&v5, 0, &v5, 0xEu, &v4) ^ 1;
}

uint64_t *raven::RavenConvergenceEstimator::GetRavenSolution@<X0>(uint64_t *__return_ptr a1@<X8>, raven::RavenConvergenceEstimator *this@<X0>)
{
  v4 = 0uLL;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  v5 = a1 + 33;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  a1[10] = 0;
  a1[11] = 0x7FF8000000000000;
  *(a1 + 96) = 0;
  v6 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 13) = v6;
  *(a1 + 15) = v6;
  *(a1 + 17) = v6;
  *(a1 + 19) = v6;
  a1[21] = 0x7FF8000000000000;
  *(a1 + 88) = 0;
  *(a1 + 23) = v6;
  *(a1 + 25) = v6;
  *(a1 + 27) = v6;
  *(a1 + 29) = v6;
  *(a1 + 31) = v6;
  *(a1 + 33) = v6;
  *(a1 + 35) = v6;
  *(a1 + 296) = 0;
  *(a1 + 19) = v6;
  *(a1 + 20) = v6;
  *(a1 + 21) = v6;
  *(a1 + 22) = v6;
  a1[46] = 0x7FF8000000000000;
  *(a1 + 376) = 0;
  *(a1 + 24) = v6;
  *(a1 + 25) = v6;
  *(a1 + 26) = v6;
  *(a1 + 27) = v6;
  a1[56] = 0x7FF8000000000000;
  *(a1 + 456) = 0;
  *(a1 + 29) = v6;
  *(a1 + 30) = v6;
  *(a1 + 31) = v6;
  *(a1 + 32) = v6;
  *(a1 + 33) = v6;
  *(a1 + 34) = v6;
  *(a1 + 35) = v6;
  *(a1 + 576) = 0;
  a1[73] = 0x7FF8000000000000;
  *(a1 + 37) = v6;
  *(a1 + 38) = v6;
  *(a1 + 39) = v6;
  *(a1 + 40) = v6;
  *(a1 + 656) = 0;
  a1[83] = 0x7FF8000000000000;
  *(a1 + 42) = v6;
  *(a1 + 43) = v6;
  *(a1 + 44) = v6;
  *(a1 + 45) = v6;
  *(a1 + 736) = 0;
  a1[93] = 0x7FF8000000000000;
  *(a1 + 47) = v6;
  *(a1 + 48) = v6;
  *(a1 + 49) = v6;
  *(a1 + 50) = v6;
  *(a1 + 816) = 0;
  *(a1 + 103) = v6;
  *(a1 + 105) = v6;
  a1[107] = 0x7FF8000000000000;
  if (*(this + 58) == 1 && (v64 = v6, v7 = (*(*this + 144))(this), v4 = 0uLL, v6 = v64, (v7 & 1) != 0))
  {
    v106 = 0x100000008;
    v104 = &unk_1F4CE4320;
    v105 = xmmword_1D0E84520;
    v107 = &v108;
    v8 = 768;
    if (!*(this + 1101))
    {
      v8 = 8;
    }

    sub_1D0B894B0(&v104, this + v8 + 2864);
    sub_1D0BA5FC4(this + 2864, v101);
    v15.i64[1] = 0;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    v16 = *(this + 5);
    *a1 = v16;
    a1[10] = 0;
    a1[11] = 0x7FF8000000000000;
    *(a1 + 96) = 1;
    v9 = v107;
    a1[13] = *v107;
    a1[14] = v9[1];
    a1[15] = v9[2];
    v10 = v103;
    a1[16] = *v103;
    v11 = v102;
    v12 = &v10[v102];
    a1[17] = *v12;
    v13 = 2 * v11;
    v14 = &v10[2 * v11];
    a1[18] = *v14;
    a1[19] = v12[1];
    a1[20] = v10[(v13 | 1)];
    a1[21] = v14[2];
    v15.i64[0] = v9[3];
    v16.i64[0] = v9[4];
    v17 = *(v9 + 5);
    v18 = sqrt(*v16.i64 * *v16.i64 + *v15.i64 * *v15.i64 + v17 * v17);
    if (fabs(v18) <= 0.000000015)
    {
      v41 = v11;
      v42 = (v13 | 1);
      *(a1 + 176) = 1;
      a1[23] = 0;
      v43 = 3 * v11;
      v44 = 4 * v11;
      v45 = 5 * v11;
      *(a1 + 27) = *&v10[3 * v11 + 3] + *&v10[4 * v11 + 4] + *&v10[5 * v11 + 5];
    }

    else
    {
      v19 = 1.0 / v18;
      v20 = *v15.i64 * (1.0 / v18);
      v21 = *v16.i64 * (1.0 / v18);
      v22 = v17 * (1.0 / v18);
      v98 = 0x300000001;
      v97 = xmmword_1D0E7F310;
      v96 = &unk_1F4CDF248;
      v99 = v100;
      v100[0] = v20;
      v100[1] = v21;
      v100[2] = v22;
      v89 = 0x400000003;
      v92 = 0x100000003;
      v90 = &unk_1F4CDEAA0;
      v93 = &v94;
      v91 = xmmword_1D0E7DCC0;
      v95 = 5;
      v94 = 0x400000003;
      sub_1D0BADC74(v88, v101, &v90, &v90);
      v80 = 0x300000001;
      v79 = xmmword_1D0E7F310;
      v78 = &unk_1F4CDF248;
      v81 = v82;
      sub_1D0B89390(&v96, v88, &v78);
      v23 = DWORD1(v97);
      v24 = v97;
      v85 = 0x100000003;
      v83 = &unk_1F4CDEB28;
      v86 = v87;
      *&v84 = __PAIR64__(v97, DWORD1(v97));
      DWORD2(v84) = v97 * DWORD1(v97);
      HIDWORD(v84) = DWORD1(v97);
      if (DWORD1(v97))
      {
        v25 = 0;
        v26 = 0;
        v27 = HIDWORD(v97);
        v28 = v99;
        do
        {
          v29 = v25;
          v30 = v26;
          for (i = v24; i; --i)
          {
            v87[v30] = *&v28[v29];
            v30 += v23;
            ++v29;
          }

          ++v26;
          v25 += v27;
        }

        while (v26 != v23);
      }

      v75 = 0x100000001;
      *&v32 = 0x100000001;
      *(&v32 + 1) = 0x100000001;
      v74 = v32;
      v73 = &unk_1F4CDF418;
      v76 = v77;
      v33 = sub_1D0B89390(&v78, &v83, &v73);
      v34 = *v76;
      if (*(this + 1208) == 1 && *(this + 1320) - 1 <= 6)
      {
        v35 = qword_1D0E9D630[(*(this + 1320) - 1)];
      }

      else
      {
        v35 = 928;
      }

      *v15.i64 = cnstatistics::InverseNormal(v33, 1.0 - *(*(this + 146) + v35), 0.0, sqrt(v34));
      *(a1 + 176) = 1;
      if (v18 >= *v15.i64)
      {
        *(a1 + 177) = 1;
        *(a1 + 23) = v18;
        *(a1 + 24) = v20;
        *(a1 + 25) = v21;
        *(a1 + 26) = v22;
        v85 = 0x300000004;
        v83 = &unk_1F4CDEC00;
        v86 = v87;
        v84 = xmmword_1D0E7DCF0;
        *v87 = v20;
        *&v87[1] = v19 * (1.0 - v20 * v20);
        *&v87[4] = v21;
        *&v87[5] = v19 * -(v20 * v21);
        *&v87[8] = v22;
        *&v87[9] = v19 * -(v20 * v22);
        *&v87[2] = v19 * -(v21 * v20);
        *&v87[3] = v19 * -(v22 * v20);
        *&v87[6] = v19 * (1.0 - v21 * v21);
        *&v87[7] = v19 * -(v22 * v21);
        *&v87[10] = v19 * -(v21 * v22);
        *&v87[11] = v19 * (1.0 - v22 * v22);
        sub_1D0BADC74(v88, v101, &v90, &v90);
        v75 = 0x300000004;
        v74 = xmmword_1D0E7DCF0;
        v73 = &unk_1F4CDEC00;
        v76 = v77;
        sub_1D0B89390(&v83, v88, &v73);
        v46 = DWORD1(v84);
        v47 = v84;
        v70 = 0x400000003;
        v65 = &unk_1F4CDEC48;
        v71 = v72;
        v66 = DWORD1(v84);
        v67 = v84;
        v68 = v84 * DWORD1(v84);
        v69 = DWORD1(v84);
        if (DWORD1(v84))
        {
          v48 = 0;
          v49 = 0;
          v50 = HIDWORD(v84);
          v51 = v86;
          do
          {
            v52 = v48;
            v53 = v49;
            for (j = v47; j; --j)
            {
              v72[v53] = v51[v52];
              v53 += v46;
              ++v52;
            }

            ++v49;
            v48 += v50;
          }

          while (v49 != v46);
        }

        v80 = 0x400000004;
        v79 = xmmword_1D0E7DCD0;
        v78 = &unk_1F4CDEB70;
        v81 = v82;
        sub_1D0B89390(&v73, &v65, &v78);
        v55 = v81;
        a1[27] = *v81;
        v56 = SHIDWORD(v79);
        v57 = &v55[SHIDWORD(v79)];
        a1[28] = *v57;
        v58 = &v55[2 * v56];
        a1[29] = *v58;
        v59 = &v55[3 * v56];
        a1[30] = *v59;
        a1[31] = v57[1];
        a1[32] = v55[((2 * v56) | 1)];
        a1[33] = v59[1];
        a1[34] = v58[2];
        a1[35] = v59[2];
        a1[36] = v59[3];
      }

      else
      {
        *(a1 + 23) = v18;
        *(a1 + 27) = v34;
      }

      v9 = v107;
      v11 = v102;
      v41 = v102;
      v13 = 2 * v102;
      v10 = v103;
      v42 = (v13 | 1);
      v43 = 3 * v102;
      v44 = 4 * v102;
      v45 = 5 * v102;
    }

    *(a1 + 296) = 1;
    a1[38] = *v9;
    a1[39] = v9[1];
    a1[40] = v9[2];
    a1[41] = *v10;
    v60 = &v10[v41];
    a1[42] = *v60;
    v61 = &v10[v13];
    a1[43] = *v61;
    a1[44] = v60[1];
    a1[45] = v10[v42];
    a1[46] = v61[2];
    *(a1 + 376) = 1;
    a1[48] = v9[3];
    a1[49] = v9[4];
    a1[50] = v9[5];
    a1[51] = v10[v43 + 3];
    a1[52] = v10[(v44 | 3)];
    v62 = &v10[v45];
    a1[53] = v62[3];
    a1[54] = v10[v44 + 4];
    a1[55] = v62[4];
    a1[56] = v62[5];
    *(a1 + 456) = 0;
    *(a1 + 816) = 1;
    *(a1 + 103) = *(v9 + 6) * 0.000001;
    *(a1 + 104) = *(v9 + 7) * 0.000001;
    v16.i64[0] = 0x3D719799812DEA11;
    *(a1 + 105) = *&v10[6 * v11 + 6] * 1.0e-12;
    v63 = &v10[7 * v11];
    *(a1 + 106) = *(v63 + 6) * 1.0e-12;
    *v15.i64 = *(v63 + 7) * 1.0e-12;
    a1[107] = v15.i64[0];
    *(a1 + 576) = 0;
    *(a1 + 656) = 0;
    *(a1 + 736) = 0;
    return raven::PopulateAllTimeFields(a1, this + 136, v15, v16);
  }

  else
  {
    *(a1 + 25) = 0;
    *(a1 + 97) = 0;
    *(a1 + 178) = 0;
    *(a1 + 91) = 0;
    *(a1 + 75) = 0;
    *(a1 + 297) = 0;
    *(a1 + 95) = 0;
    *(a1 + 377) = 0;
    *(a1 + 115) = 0;
    *(a1 + 457) = 0;
    *(a1 + 145) = 0;
    *(a1 + 577) = 0;
    *(a1 + 165) = 0;
    *(a1 + 657) = 0;
    *(a1 + 185) = 0;
    *(a1 + 737) = 0;
    *(a1 + 205) = 0;
    *(a1 + 817) = 0;
    *(a1 + 3) = v4;
    *(a1 + 4) = v4;
    *(a1 + 1) = v4;
    *(a1 + 2) = v4;
    *a1 = v4;
    a1[10] = 0;
    a1[11] = 0x7FF8000000000000;
    *(a1 + 96) = 0;
    *(a1 + 13) = v6;
    *(a1 + 15) = v6;
    *(a1 + 17) = v6;
    *(a1 + 19) = v6;
    a1[21] = 0x7FF8000000000000;
    *(a1 + 88) = 0;
    *(a1 + 23) = v6;
    *(a1 + 25) = v6;
    *(a1 + 27) = v6;
    *(a1 + 29) = v6;
    *(a1 + 31) = v6;
    *v5 = v6;
    *(v5 + 1) = v6;
    *(a1 + 296) = 0;
    *(a1 + 19) = v6;
    *(a1 + 20) = v6;
    *(a1 + 21) = v6;
    *(a1 + 22) = v6;
    a1[46] = 0x7FF8000000000000;
    *(a1 + 376) = 0;
    *(a1 + 24) = v6;
    *(a1 + 25) = v6;
    *(a1 + 26) = v6;
    *(a1 + 27) = v6;
    a1[56] = 0x7FF8000000000000;
    *(a1 + 456) = 0;
    *(a1 + 29) = v6;
    *(a1 + 30) = v6;
    *(a1 + 31) = v6;
    *(a1 + 32) = v6;
    *(a1 + 33) = v6;
    *(a1 + 34) = v6;
    *(a1 + 35) = v6;
    *(a1 + 576) = 0;
    *(v5 + 20) = v6;
    *(v5 + 21) = v6;
    *(v5 + 22) = v6;
    *(v5 + 23) = v6;
    a1[81] = 0x7FF8000000000000;
    *(a1 + 656) = 0;
    *(v5 + 25) = v6;
    *(v5 + 26) = v6;
    *(v5 + 27) = v6;
    *(v5 + 28) = v6;
    a1[91] = 0x7FF8000000000000;
    *(a1 + 736) = 0;
    *(v5 + 30) = v6;
    *(v5 + 31) = v6;
    *(v5 + 32) = v6;
    *(v5 + 33) = v6;
    a1[101] = 0x7FF8000000000000;
    *(a1 + 816) = 0;
    *(v5 + 35) = v6;
    *(v5 + 36) = v6;
    a1[107] = 0x7FF8000000000000;
    v36 = *(this + 152);
    *a1 = *(this + 136);
    *(a1 + 1) = v36;
    v37 = *(this + 216);
    *(a1 + 4) = *(this + 200);
    *(a1 + 5) = v37;
    v38 = *(this + 184);
    v39 = *(this + 168);
    *(a1 + 2) = v39;
    *(a1 + 3) = v38;

    return raven::PopulateAllTimeFields(a1, this + 136, v38, v39);
  }
}

uint64_t raven::RavenConvergenceEstimator::IsObservable(raven::RavenConvergenceEstimator *this)
{
  if (*(this + 58))
  {
    v2 = this + 4096;
    v3 = *(this + 4400);
    if (v3 == 2)
    {
      return 1;
    }

    if (v3 != 1)
    {
      if (!*(this + 4400))
      {
        (*(*(this + 358) + 40))(v7);
        v25 = 0x800000008;
        v23 = &unk_1F4CE43B0;
        v24 = xmmword_1D0E84510;
        v26 = &v27;
        v20 = 0x800000008;
        v19 = xmmword_1D0E84510;
        v18 = &unk_1F4CE43B0;
        v21 = &v22;
        v15 = 0x100000008;
        v14 = xmmword_1D0E84520;
        v13 = &unk_1F4CE43F8;
        v16 = &v17;
        v10 = 0x100000650;
        v12 = 0;
        v8 = &unk_1F4CEBB00;
        v11 = 0;
        v9 = xmmword_1D0E9CC10;
        sub_1D0DFA500(&v8);
      }

      LOWORD(v23) = 2;
      LOBYTE(v18) = 5;
      v5 = cnprint::CNLogFormatter::FormatGeneral(this + 571, "LeastSquaresEstimator::IsObservable called with unexpected observability state %hhu", v3);
      if (v2[495] >= 0)
      {
        v6 = v5;
      }

      else
      {
        v6 = *(this + 571);
      }

      cnprint::CNPrinter::Print(&v23, &v18, "%s", v6);
    }
  }

  return 0;
}

double cnstatistics::InverseNormal(cnstatistics *this, double a2, double a3, double a4)
{
  if (a4 <= 0.0)
  {
    return NAN;
  }

  v4 = NAN;
  if (a2 >= 0.0 && a2 <= 1.0)
  {
    if (fabs(a2) < 2.22044605e-16)
    {
      v7 = a3 == INFINITY;
      v8 = -INFINITY;
      goto LABEL_9;
    }

    if (fabs(a2 + -1.0) < 2.22044605e-16)
    {
      v7 = a3 == -INFINITY;
      v8 = INFINITY;
LABEL_9:
      v4 = NAN;
      if (!v7)
      {
        return v8;
      }

      return v4;
    }

    v10 = fabs(a4);
    if (fabs(a3) != INFINITY || v10 != INFINITY)
    {
      v11 = 0x7FF0000000000000;
      if (v10 != INFINITY)
      {
        sub_1D0BABF68(a2 + a2);
        return a3 + a4 * (v12 * -1.41421356);
      }

      if (a2 >= 0.5)
      {
        if (a2 <= 0.5)
        {
LABEL_28:
          v11 = 0x7FF8000000000000;
        }

        return *&v11;
      }

LABEL_19:
      v11 = 0xFFF0000000000000;
      return *&v11;
    }

    if (a2 < 0.5)
    {
      if (a3 > 0.0)
      {
        goto LABEL_28;
      }

      goto LABEL_19;
    }

    v13 = a3 < 0.0 || a2 <= 0.5;
    v4 = NAN;
    if (!v13)
    {
      return INFINITY;
    }
  }

  return v4;
}

void sub_1D0BABF68(double a1)
{
  v7 = a1;
  if (a1 < 0.0 || a1 > 2.0)
  {
    sub_1D0D26D6C(qword_1EC5FB3E0, "Argument outside range [0,2] in inverse erfc function (got p=%1%).", &v7);
  }

  if (a1 == 0.0)
  {
    sub_1D0D27B28(qword_1EC5FB3E0, "Overflow Error");
  }

  if (a1 == 2.0)
  {
    sub_1D0D27B28(qword_1EC5FB3E0, "Overflow Error");
  }

  v3 = 2.0 - a1;
  if (a1 <= 1.0)
  {
    v3 = a1;
  }

  v5 = v3;
  v6 = 1.0 - v3;
  sub_1D0BAC07C(&v6, &v5);
  if (fabs(v4) > 1.79769313e308)
  {
    sub_1D0D27B28(qword_1EC5FB3E0, "numeric overflow");
  }
}

void sub_1D0BAC07C(double *a1, long double *a2)
{
  if (*a1 > 0.5)
  {
    v2 = *a2;
    v3 = log(*a2);
    if (v2 < 0.25)
    {
      v4 = sqrt(-v3);
      if (v4 >= 3.0 && v4 >= 6.0 && v4 >= 18.0)
      {
        if (v4 >= 44.0)
        {
          v5 = v4 + -44.0;
          sub_1D0D283A4(xmmword_1D0E7E658, &v5);
          sub_1D0C4E35C(dbl_1D0E7E698, &v5);
        }

        else
        {
          v5 = v4 + -18.0;
          sub_1D0D283A4(xmmword_1D0E7E5E0, &v5);
          sub_1D0C4E35C(dbl_1D0E7E620, &v5);
        }
      }
    }
  }
}

uint64_t *raven::RavenConvergenceEstimator::GetRavenStatus@<X0>(uint64_t *__return_ptr a1@<X8>, raven::RavenConvergenceEstimator *this@<X0>)
{
  a1[132] = 0;
  *(a1 + 65) = 0u;
  *(a1 + 63) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 62) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 60) = vdupq_n_s64(0x7FF8000000000000uLL);
  a1[122] = 0;
  a1[123] = 0x7FF8000000000000;
  v4 = a1 + 164;
  bzero(a1 + 164, 0x318uLL);
  *a1 = *(this + 280);
  v6 = *(this + 56);
  *(a1 + 52) = v6;
  if (*(this + 58) == 1)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    *(a1 + 1) = *(this + 5);
    v7 = v46;
    *(a1 + 5) = v47;
    v8 = v49;
    *(a1 + 7) = v48;
    *(a1 + 9) = v8;
    *(a1 + 3) = v7;
    a1[11] = 0;
    a1[12] = 0x7FF8000000000000;
    sub_1D0BADDDC(a1, v6, 1.0);
    *(a1 + 17) = *(this + 16);
    a1[19] = *(this + 34);
    v9 = *(this + 440);
    *(v4 + 6) = *(this + 424);
    *(v4 + 7) = v9;
    *(v4 + 32) = *(this + 114);
    v10 = *(this + 376);
    *(v4 + 2) = *(this + 360);
    *(v4 + 3) = v10;
    v11 = *(this + 408);
    *(v4 + 4) = *(this + 392);
    *(v4 + 5) = v11;
    v12 = *(this + 344);
    *v4 = *(this + 328);
    *(v4 + 1) = v12;
    v13 = *(this + 572);
    *(a1 + 49) = *(this + 556);
    *(a1 + 51) = v13;
    *(a1 + 106) = *(this + 147);
    v14 = *(this + 508);
    *(a1 + 41) = *(this + 492);
    *(a1 + 43) = v14;
    v15 = *(this + 540);
    *(a1 + 45) = *(this + 524);
    *(a1 + 47) = v15;
    v16 = *(this + 476);
    *(a1 + 37) = *(this + 460);
    *(a1 + 39) = v16;
    v17 = *(this + 44);
    *(a1 + 524) = *(this + 43);
    *(a1 + 540) = v17;
    *(a1 + 139) = *(this + 180);
    v18 = *(this + 40);
    *(a1 + 460) = *(this + 39);
    *(a1 + 476) = v18;
    v19 = *(this + 42);
    *(a1 + 492) = *(this + 41);
    *(a1 + 508) = v19;
    v20 = *(this + 38);
    *(a1 + 428) = *(this + 37);
    *(a1 + 444) = v20;
    v21 = *(this + 836);
    *(a1 + 41) = *(this + 820);
    *(a1 + 42) = v21;
    *(a1 + 172) = *(this + 213);
    v22 = *(this + 772);
    *(a1 + 37) = *(this + 756);
    *(a1 + 38) = v22;
    v23 = *(this + 804);
    *(a1 + 39) = *(this + 788);
    *(a1 + 40) = v23;
    v24 = *(this + 740);
    *(a1 + 35) = *(this + 724);
    *(a1 + 36) = v24;
    v25 = *(this + 968);
    *(a1 + 788) = *(this + 952);
    *(a1 + 804) = v25;
    *(a1 + 205) = *(this + 246);
    v26 = *(this + 904);
    *(a1 + 724) = *(this + 888);
    *(a1 + 740) = v26;
    v27 = *(this + 936);
    *(a1 + 756) = *(this + 920);
    *(a1 + 772) = v27;
    v28 = *(this + 872);
    *(a1 + 692) = *(this + 856);
    *(a1 + 708) = v28;
    v29 = *(this + 1100);
    *(a1 + 115) = *(this + 1084);
    *(a1 + 117) = v29;
    *(a1 + 238) = *(this + 279);
    v30 = *(this + 1036);
    *(a1 + 107) = *(this + 1020);
    *(a1 + 109) = v30;
    v31 = *(this + 1068);
    *(a1 + 111) = *(this + 1052);
    *(a1 + 113) = v31;
    v33 = *(this + 988);
    v32 = *(this + 1004);
    *(a1 + 103) = v33;
    *(a1 + 105) = v32;
    a1[15] = CNTimeSpan::operator-(this + 10, this + 8, v32, v33);
    a1[16] = v34;
    v35 = (*(*this + 152))(this);
    v36 = (*(*this + 144))(this);
    v37 = (*(*this + 136))(this);
    v38 = v37;
    if (v36 && v35 && (v37 & 1) != 0)
    {
      v39 = 2;
    }

    else
    {
      v39 = 1;
      if (cnprint::CNPrinter::GetLogLevel(v37) <= 1)
      {
        v45[0] = 12;
        v44 = 1;
        v41 = cnprint::CNLogFormatter::FormatGeneral(this + 339, "Estimator unhealthy,observable,%d,sane,%d,consistent,%d", v36, v35, v38);
        if (*(this + 2735) >= 0)
        {
          v42 = v41;
        }

        else
        {
          v42 = *(this + 339);
        }

        cnprint::CNPrinter::Print(v45, &v44, "%s", v42);
      }
    }

    *(a1 + 105) = v39;
    *(a1 + 14) = 1.0 - (*(*this + 56))(this);
    *(a1 + 80) = 0;
    *(a1 + 124) = raven::RavenEstimator::GetPriorWeight(this);
    *(a1 + 125) = raven::RavenEstimator::GetGNSSWeight(this);
    *(a1 + 126) = raven::RavenEstimator::GetWiFiWeight(this);
    *(a1 + 127) = raven::RavenEstimator::GetCellWeight(this);
    *(a1 + 128) = raven::RavenEstimator::GetIndoorWeight(this);
    *(a1 + 129) = raven::RavenEstimator::GetAccessoryWeight(this);
    v5.i64[0] = *(this + 40);
    a1[122] = *(this + 39);
    a1[121] = *(this + 1045);
    v40.i64[0] = *(this + 1047);
    a1[120] = v40.i64[0];
    a1[123] = v5.i64[0];
  }

  else
  {
    *(a1 + 5) = *(this + 168);
    *(a1 + 7) = *(this + 184);
    *(a1 + 9) = *(this + 200);
    *(a1 + 11) = *(this + 216);
    *(a1 + 1) = *(this + 136);
    v40 = *(this + 152);
    *(a1 + 3) = v40;
  }

  return raven::PopulateAllTimeFields((a1 + 1), this + 136, v40, v5);
}

uint64_t raven::RavenConvergenceEstimator::IsSane(raven::RavenConvergenceEstimator *this)
{
  v124 = *MEMORY[0x1E69E9840];
  if (!*(this + 58))
  {
    return 0;
  }

  v2 = this + 80;
  v118 = *(this + 5);
  v3 = 768;
  if (!*(this + 1101))
  {
    v3 = 8;
  }

  v115 = 0x100000008;
  v113 = &unk_1F4CE4320;
  v114 = xmmword_1D0E84520;
  v116 = &v117;
  sub_1D0B894B0(&v113, this + v3 + 2864);
  v5 = v116[3];
  v6 = v116[4];
  v7 = v116[5];
  v8 = sqrt(v6 * v6 + v5 * v5 + v7 * v7);
  if (v8 > *(*(this + 146) + 1376))
  {
    if (cnprint::CNPrinter::GetLogLevel(v4) <= 1)
    {
      v92 = 12;
      LOBYTE(v32[0]) = 1;
      v9 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v2, "Sanity failure,speed,%.1lf > %.1lf", v8, *(*(this + 146) + 1376));
      if (*(this + 2735) >= 0)
      {
        v10 = v9;
      }

      else
      {
        v10 = *v9;
      }

      cnprint::CNPrinter::Print(&v92, v32, "%s", v10);
    }

    return 0;
  }

  v29 = *v116;
  v11 = *(v116 + 2);
  LOBYTE(v92) = 0;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0;
  v99 = 0x7FF8000000000000;
  v100 = 0;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v112 = 0;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0;
  v30 = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v105[796] = v30;
  v106 = 0;
  v107 = 0x7FF8000000000000;
  bzero(v105, 0x318uLL);
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v34 = 0x7FF8000000000000;
  v35 = 0;
  v36 = v30;
  v37 = v30;
  v38 = v30;
  v39 = v30;
  v40 = 0x7FF8000000000000;
  v41 = 0;
  v42 = v30;
  v43 = v30;
  v44 = v30;
  v45 = v30;
  v46 = v30;
  v47 = 0x7FF8000000000000;
  v48 = v30;
  v49 = 0x7FF8000000000000;
  v50 = 0;
  v51 = v30;
  v52 = v30;
  v53 = v30;
  v54 = v30;
  v55 = 0x7FF8000000000000;
  v56 = 0;
  v57 = v30;
  v58 = v30;
  v59 = v30;
  v60 = v30;
  v61 = 0x7FF8000000000000;
  v62 = 0;
  v63 = v30;
  v64 = v30;
  v65 = v30;
  v66 = v30;
  v67 = v30;
  v68 = v30;
  v69 = v30;
  v70 = 0;
  v71 = 0x7FF8000000000000;
  v72 = v30;
  v73 = v30;
  v74 = v30;
  v75 = v30;
  v76 = 0;
  v77 = 0x7FF8000000000000;
  v78 = v30;
  v79 = v30;
  v80 = v30;
  v81 = v30;
  v82 = 0;
  v83 = 0x7FF8000000000000;
  v84 = v30;
  v85 = v30;
  v86 = v30;
  v87 = v30;
  v88 = 0;
  v89 = 0x7FF8000000000000;
  v90 = v30;
  v91 = v30;
  if (!raven::RavenEstimator::GetValidHistoricalSolution(this, &v92, v32, *v30.i64, v12) && HIBYTE(v100) == 2 && v56 == 1)
  {
    v14 = v32[0];
    v119[0] = v32[0];
    v15 = v57;
    v16 = *v58.i64;
    if (v118 || (v14.i64[0] = *(&v118 + 1), (*(&v118 + 1) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000))
    {
      if (!*&v119[0])
      {
        v14.i64[0] = *(&v119[0] + 1);
        if ((*(&v119[0] + 1) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v13.i64[0] = *(&v118 + 1);
          v17 = *(&v118 + 1) <= *(v119 + 1);
LABEL_21:
          if (!v17)
          {
            v18 = CNTimeSpan::operator-(&v118, v119, v14, v13);
            v20 = sqrt((v6 - *&v15.i64[1]) * (v6 - *&v15.i64[1]) + (v5 - *v15.i64) * (v5 - *v15.i64) + (v7 - v16) * (v7 - v16)) / (v19 + v18);
            if (v20 > *(*(this + 146) + 1384))
            {
              if (cnprint::CNPrinter::GetLogLevel(v18) <= 1)
              {
                LOWORD(v122.f64[0]) = 12;
                v120[0] = 1;
                v27 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v2, "Sanity failure,acceleration,%.1lf > %.1lf", v20, *(*(this + 146) + 1384));
                if (*(this + 2735) >= 0)
                {
                  v28 = v27;
                }

                else
                {
                  v28 = *(this + 339);
                }

                cnprint::CNPrinter::Print(&v122, v120, "%s", v28);
              }

              return 0;
            }
          }

          goto LABEL_23;
        }
      }

      v17 = v118 <= *&v119[0];
      if (v118 != *&v119[0])
      {
        goto LABEL_21;
      }

      v14.i64[0] = *(&v118 + 1);
    }

    v13.i64[0] = *(&v119[0] + 1);
    v17 = *v14.i64 <= *(v119 + 1);
    goto LABEL_21;
  }

LABEL_23:
  v122 = v29;
  v123 = v11;
  v21 = cnnavigation::ECEFToLLA(&v122, 1, v120, 0, v119);
  if (v21)
  {
    return 0;
  }

  v23 = v121;
  if (v121 > 18000.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v21) > 1)
    {
      return 0;
    }

    LOWORD(v119[0]) = 12;
    v31 = 1;
    v24 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v2, "Sanity failure,altitude,%.1lf > %.1lf", v23, 18000.0);
    if (*(this + 2735) >= 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = *(this + 339);
    }

LABEL_30:
    cnprint::CNPrinter::Print(v119, &v31, "%s", v25);
    return 0;
  }

  if (v8 > 600.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v21) > 1)
    {
      return 0;
    }

    LOWORD(v119[0]) = 12;
    v31 = 1;
    v26 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v2, "Sanity failure,speed,%.1lf > %.1lf", v8, 600.0);
    if (*(this + 2735) >= 0)
    {
      v25 = v26;
    }

    else
    {
      v25 = *(this + 339);
    }

    goto LABEL_30;
  }

  return 1;
}

uint64_t raven::RavenConvergenceEstimator::IsConsistent(raven::RavenConvergenceEstimator *this)
{
  if (!*(this + 58))
  {
    return 1;
  }

  v2 = this + 8496;
  if (*(this + (*(this + 2128) != 0) + 1062) < *(*(this + 146) + 1464))
  {
    return 1;
  }

  if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v7 = 12;
    v6 = 1;
    v4 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, this + 80, "consistency failure,%.1lf > %.1lf", *&v2[8 * (*(this + 2128) != 0)], *(*(this + 146) + 1464));
    if (*(this + 2735) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v7, &v6, "%s", v5);
  }

  return 0;
}

double raven::RavenEstimator::GetGNSSWeight(raven::RavenEstimator *this)
{
  result = 0.0;
  if (*(this + 58) == 1)
  {
    v2 = *(this + 141);
    if (fabs(v2) >= 2.22044605e-16)
    {
      return v2 / (v2 + *(this + 140) + *(this + 142) + *(this + 143) + *(this + 144) + *(this + 145));
    }
  }

  return result;
}

double raven::RavenEstimator::GetWiFiWeight(raven::RavenEstimator *this)
{
  result = 0.0;
  if (*(this + 58) == 1)
  {
    v2 = *(this + 142);
    if (fabs(v2) >= 2.22044605e-16)
    {
      return v2 / (*(this + 145) + *(this + 144) + *(this + 143) + v2 + *(this + 140) + *(this + 141));
    }
  }

  return result;
}

uint64_t sub_1D0BAD0C8(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CEF7A8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0x7FF8000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0x7FF8000000000000;
  *(a1 + 208) = 0;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1160) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 1064) = 0x7FF8000000000000;
  *(a1 + 1072) = 0x7FF8000000000000;
  *(a1 + 1080) = 0;
  *(a1 + 1088) = 0x7FF8000000000000;
  bzero((a1 + 268), 0x318uLL);
  *(a1 + 1248) = 0;
  *(a1 + 1232) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1256) = 0x7FF8000000000000;
  *(a1 + 1264) = 0;
  *(a1 + 1272) = 0x7FF8000000000000;
  v2 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 1280) = v2;
  *(a1 + 1296) = v2;
  *(a1 + 1312) = v2;
  *(a1 + 1328) = v2;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x7FF8000000000000;
  *(a1 + 1360) = v2;
  *(a1 + 1376) = v2;
  *(a1 + 1392) = v2;
  *(a1 + 1408) = v2;
  *(a1 + 1424) = v2;
  *(a1 + 1440) = v2;
  *(a1 + 1456) = 0x7FF8000000000000;
  *(a1 + 1464) = 0;
  *(a1 + 1472) = v2;
  *(a1 + 1488) = v2;
  *(a1 + 1504) = v2;
  *(a1 + 1520) = v2;
  *(a1 + 1536) = 0x7FF8000000000000;
  *(a1 + 1544) = 0;
  *(a1 + 1552) = v2;
  *(a1 + 1568) = v2;
  *(a1 + 1584) = v2;
  *(a1 + 1600) = v2;
  *(a1 + 1616) = 0x7FF8000000000000;
  *(a1 + 1624) = 0;
  *(a1 + 1632) = v2;
  *(a1 + 1648) = v2;
  *(a1 + 1664) = v2;
  *(a1 + 1680) = v2;
  *(a1 + 1696) = v2;
  *(a1 + 1712) = v2;
  *(a1 + 1728) = v2;
  *(a1 + 1744) = 0;
  *(a1 + 1752) = 0x7FF8000000000000;
  *(a1 + 1760) = v2;
  *(a1 + 1776) = v2;
  *(a1 + 1792) = v2;
  *(a1 + 1808) = v2;
  *(a1 + 1824) = 0;
  *(a1 + 1832) = 0x7FF8000000000000;
  *(a1 + 1840) = v2;
  *(a1 + 1856) = v2;
  *(a1 + 1872) = v2;
  *(a1 + 1888) = v2;
  *(a1 + 1904) = 0;
  *(a1 + 1912) = 0x7FF8000000000000;
  *(a1 + 1920) = v2;
  *(a1 + 1936) = v2;
  *(a1 + 1952) = v2;
  *(a1 + 1968) = v2;
  *(a1 + 1984) = 0;
  *(a1 + 1992) = 0x7FF8000000000000;
  *(a1 + 2000) = v2;
  *(a1 + 2016) = v2;
  *(a1 + 2112) = 0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2120) = 0x7FF8000000000000;
  *(a1 + 2128) = 0;
  *(a1 + 2136) = 0x3FF0000000000000;
  *(a1 + 2544) = 0;
  *(a1 + 2144) = 0u;
  *(a1 + 2160) = 0u;
  *(a1 + 2176) = 0u;
  *(a1 + 2192) = 0u;
  *(a1 + 2208) = 0u;
  *(a1 + 2224) = 0u;
  *(a1 + 2240) = 0u;
  *(a1 + 2256) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2288) = 0u;
  *(a1 + 2304) = 0u;
  *(a1 + 2320) = 0u;
  *(a1 + 2336) = 0u;
  *(a1 + 2352) = 0u;
  *(a1 + 2368) = 0u;
  *(a1 + 2384) = 0u;
  *(a1 + 2400) = 0u;
  *(a1 + 2416) = 0u;
  *(a1 + 2432) = 0u;
  *(a1 + 2448) = 0u;
  *(a1 + 2464) = 0u;
  *(a1 + 2480) = 0u;
  *(a1 + 2496) = 0u;
  *(a1 + 2512) = 0u;
  *(a1 + 2521) = 0u;
  *(a1 + 2552) = 0x3FF0000000000000;
  *(a1 + 2560) = 0u;
  *(a1 + 2576) = 0u;
  *(a1 + 2592) = 0x3FF0000000000000;
  *(a1 + 2600) = 0u;
  *(a1 + 2616) = 0u;
  *(a1 + 2632) = 0x3FE0000000000000;
  *(a1 + 2640) = 0x3FE0000000000000;
  *(a1 + 2648) = 0;
  sub_1D0BAE168(a1);
  return a1;
}

uint64_t *raven::RavenEstimator::GetRavenActivity@<X0>(uint64_t *__return_ptr a1@<X8>, raven::RavenEstimator *this@<X0>)
{
  a1[12] = 0;
  a1[13] = 0x3FF0000000000000;
  v4 = a1 + 12;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 14) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 21) = 0u;
  *(a1 + 22) = 0u;
  *(a1 + 23) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 25) = 0u;
  *(a1 + 26) = 0u;
  *(a1 + 27) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 29) = 0u;
  *(a1 + 30) = 0u;
  *(a1 + 489) = 0u;
  a1[64] = 0;
  a1[65] = 0x3FF0000000000000;
  *(a1 + 33) = 0u;
  *(a1 + 34) = 0u;
  a1[70] = 0x3FF0000000000000;
  *(a1 + 71) = 0u;
  *(a1 + 73) = 0u;
  a1[75] = 0x3FE0000000000000;
  a1[76] = 0x3FE0000000000000;
  *(a1 + 616) = 0;
  if (*(this + 58))
  {
    *(a1 + 2) = 0uLL;
    *(a1 + 3) = 0uLL;
    *(a1 + 4) = 0uLL;
    v5 = *(this + 5);
    *a1 = v5;
    *(a1 + 1) = 0uLL;
    a1[10] = 0;
    a1[11] = 0x7FF8000000000000;
    result = raven::PopulateAllTimeFields(a1, this + 136, v5, 0);
    if (*(this + 1208) == 1)
    {
      v4[10] = *(this + 175);
      v7 = *(this + 1368);
      *(v4 + 2) = *(this + 1352);
      *(v4 + 3) = v7;
      *(v4 + 4) = *(this + 1384);
      v8 = *(this + 1336);
      *v4 = *(this + 1320);
      *(v4 + 1) = v8;
    }

    if (*(this + 1408) == 1)
    {
      result = memcpy(a1 + 23, this + 1520, 0x141uLL);
    }

    if (*(this + 2000) == 1)
    {
      v9 = *(this + 133);
      *(v4 + 26) = *(this + 132);
      *(v4 + 27) = v9;
      v4[56] = *(this + 268);
    }

    if (*(this + 1848) == 1)
    {
      a1[73] = *(this + 249);
      v10 = *(this + 1976);
      *(a1 + 69) = *(this + 1960);
      *(a1 + 71) = v10;
    }

    if (*(this + 2152) == 1)
    {
      a1[76] = *(this + 285);
      *(a1 + 37) = *(this + 2264);
    }

    if (*(this + 2592) == 1)
    {
      *(a1 + 616) = *(this + 2704);
    }
  }

  else
  {
    v11 = *(this + 184);
    *(a1 + 2) = *(this + 168);
    *(a1 + 3) = v11;
    v12 = *(this + 216);
    *(a1 + 4) = *(this + 200);
    *(a1 + 5) = v12;
    v13 = *(this + 136);
    v14 = *(this + 152);
    *a1 = v13;
    *(a1 + 1) = v14;

    return raven::PopulateAllTimeFields(a1, this + 136, v13, v14);
  }

  return result;
}

void raven::PopulateAllTimeFields(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, int8x16_t a5, int8x16_t a6)
{
  v22[0] = CNTimeSpan::operator-(a1, a2, a5, a6);
  v22[1] = v10;
  if (*(a2 + 16) == 1)
  {
    *(a1 + 24) = CNTimeSpan::operator+((a2 + 24), v22, v11, v12);
    *(a1 + 32) = v13;
    *(a1 + 16) = 1;
  }

  if (*(a2 + 40) == 1)
  {
    *(a1 + 48) = CNTimeSpan::operator+((a2 + 48), v22, v11, v12);
    *(a1 + 56) = v14;
    *(a1 + 40) = 1;
    v16.i64[0] = *a4;
    if ((*a4 <= -1 || ((*a4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*a4 - 1) >= 0xFFFFFFFFFFFFFLL)
    {
      v21 = 12;
      v20 = 4;
      cnprint::CNPrinter::Print(&v21, &v20, "t,%.3lf,invalid clock uncertainty,%.3lf", *(a1 + 8) + *a1, *v16.i64);
    }

    else
    {
      *(a1 + 72) = CNTimeSpan::operator-((a1 + 48), a3, v16, v15);
      *(a1 + 80) = v19;
      *(a1 + 64) = 1;
      *(a1 + 88) = *a4;
    }
  }
}

void raven::RavenDeviceAttitudeActiveObject::HandleEvent(raven::RavenDeviceAttitudeActiveObject *this, const raven::RavenSolutionEvent *a2)
{
  if (*(this + 224))
  {
    if (*(a2 + 209) == 2 && *(a2 + 1464) == 1 && *(a2 + 1544) == 1)
    {
      if (*(a2 + 208) == 3)
      {
        if (*(*(this + 29) + 3352) < *(a2 + 28) && *(a2 + 1624) == 1)
        {
          v3 = sub_1D0BAE770(this + 952, a2, this + 912, *(this + 914));
          if ((v3 & 1) == 0 && !cnprint::CNPrinter::GetLogLevel(v3))
          {
            LOWORD(__p[0]) = 12;
            LOBYTE(v9) = 0;
            (*(*a2 + 16))(a2);
            cnprint::CNPrinter::Print(__p, &v9, "DevAtt, Raven pnt solution queue overflowed at %.3lf");
          }
        }
      }

      else
      {
        v5 = sub_1D0BAE770(this + 946, a2, this + 912, *(this + 914));
        if ((v5 & 1) == 0 && !cnprint::CNPrinter::GetLogLevel(v5))
        {
          LOWORD(__p[0]) = 12;
          LOBYTE(v9) = 0;
          (*(*a2 + 16))(a2);
          cnprint::CNPrinter::Print(__p, &v9, "DevAtt, Raven solution queue overflowed at %.3lf");
        }
      }
    }
  }

  else
  {
    v9 = 12;
    v8 = 3;
    (*(*this + 16))(__p, this, a2);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    cnprint::CNPrinter::Print(&v9, &v8, "Warning: %s is not configured yet.", v4);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1D0BAD874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BAD890(uint64_t a1)
{
  v2 = (*(*(a1 + 8) + ((*(a1 + 32) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (*(a1 + 32) & 0xFLL));
  (**v2)(v2);
  v3 = vaddq_s64(*(a1 + 32), xmmword_1D0E76280);
  *(a1 + 32) = v3;
  if (v3.i64[0] >= 0x20uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 16;
  }
}

uint64_t sub_1D0BAD938(uint64_t a1, double *a2, long double *a3, double *a4)
{
  v4 = *a2;
  if (*a2 < 0.0 || v4 > 1.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      v23 = 2;
      v22 = 1;
      cnprint::CNPrinter::Print(&v23, &v22, "WARNING: DiscreteEventDetector::Predict called with bad x %.3lf.");
    }

    return 0xFFFFFFFFLL;
  }

  if (*a3 < 0.0 || *a3 > 1.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      v21 = 2;
      v20 = 1;
      cnprint::CNPrinter::Print(&v21, &v20, "WARNING: DiscreteEventDetector::Predict called with bad pxbargx %.3lf.");
    }

    return 0xFFFFFFFFLL;
  }

  if (*a4 < 0.0 || *a4 > 1.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      v19 = 2;
      v18 = 1;
      cnprint::CNPrinter::Print(&v19, &v18, "WARNING: DiscreteEventDetector::Predict called with bad pxbargnx %.3lf.");
    }

    return 0xFFFFFFFFLL;
  }

  *(a1 + 8) = v4;
  v9 = 0.0;
  v10 = fmax(1.0 - v4, 0.0);
  *a1 = 0;
  if (fabs(v4) >= 2.22044605e-16 && fabs(*a3) >= 2.22044605e-16)
  {
    v11 = log(*a3);
    v12 = log(v4);
    v9 = exp(v12 + v11);
    *a1 = v9;
  }

  v13 = fabs(*a4);
  if (v10 >= 2.22044605e-16 && v13 >= 2.22044605e-16)
  {
    v15 = log(*a4);
    v16 = log(v10);
    v9 = v9 + exp(v16 + v15);
  }

  result = 0;
  *a1 = fmin(v9, 1.0);
  *(a1 + 16) = 0;
  return result;
}

uint64_t sub_1D0BADB3C(uint64_t a1, _OWORD *a2)
{
  if (*(a1 + 1))
  {
    if (*(a1 + 11904))
    {
      sub_1D0C01910(v5);
      v9 = 0x100000057;
      v7 = &unk_1F4CE3308;
      v8 = xmmword_1D0E84400;
      v10 = &v11;
      sub_1D0BF0AB0(a1 + 8808, v5, &v7);
      result = 0;
      *a2 = *v6;
      return result;
    }
  }

  else
  {
    v5[0] = 2;
    LOBYTE(v7) = 2;
    cnprint::CNPrinter::Print(v5, &v7, "WARNING: MeasurementAccumulator.LatestLockedMeasurementTime() called on unlocked accumulator.");
  }

  return 0xFFFFFFFFLL;
}

__n128 sub_1D0BADC18(uint64_t a1, __n128 *a2)
{
  if (*a1)
  {
    v4 = 2;
    v3 = 2;
    cnprint::CNPrinter::Print(&v4, &v3, "WARNING: MeasurementAccumulator.InitializeTime() called twice.");
  }

  else
  {
    result = *a2;
    *(a1 + 8) = *a2;
    *a1 = 1;
  }

  return result;
}

uint64_t sub_1D0BADC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0x300000003;
  *(a1 + 8) = xmmword_1D0E76C10;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CDF110;
  *(a1 + 112) = a2;
  *(a1 + 144) = 0x100000003;
  *(a1 + 120) = &unk_1F4CDEAA0;
  *(a1 + 128) = xmmword_1D0E7DCC0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 200) = 0x100000003;
  *(a1 + 176) = &unk_1F4CDEAA0;
  *(a1 + 184) = xmmword_1D0E7DCC0;
  *(a1 + 208) = a1 + 216;
  sub_1D0B9F5D4(a1 + 120, a3);
  sub_1D0B9F5D4(a1 + 176, a4);
  v7 = *(a1 + 136);
  v8 = *(a1 + 192);
  *(a1 + 8) = v7;
  *(a1 + 12) = v8;
  *(a1 + 16) = v8 * v7;
  *(a1 + 20) = v7;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = *(a2 + 20);
    v12 = *(a2 + 32);
    do
    {
      if (v7)
      {
        v13 = *(a1 + 152);
        v14 = *(*(a1 + 208) + 4 * v10) * v11;
        v15 = *(a1 + 32);
        v16 = v9;
        v17 = v7;
        do
        {
          v18 = *v13++;
          *(v15 + 8 * v16++) = *(v12 + 8 * (v18 + v14));
          --v17;
        }

        while (v17);
      }

      ++v10;
      v9 += v7;
    }

    while (v10 != v8);
  }

  return a1;
}

uint64_t sub_1D0BADDDC(double *a1, int a2, double a3)
{
  switch(a2)
  {
    case 3:
      result = 0;
      a1[132] = a3;
      break;
    case 2:
      result = 0;
      a1[131] = a3;
      break;
    case 1:
      result = 0;
      a1[130] = a3;
      break;
    default:
      v9 = v3;
      v10 = v4;
      v8 = 12;
      v7 = 4;
      cnprint::CNPrinter::Print(&v8, &v7, "Error: Invalid raven estimator type, %d", a2);
      return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t raven::RavenEstimator::GetValidHistoricalSolution(uint64_t a1, void *a2, uint64_t a3, double a4, int8x16_t a5)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 57) != 1 || *(a1 + 58) != 1 || !*(a1 + 48))
  {
    return 0xFFFFFFFFLL;
  }

  __dst[0] = *(a1 + 80);
  v8.i64[1] = *(&__dst[0] + 1);
  v8.i64[0] = *(*(a1 + 1168) + 1416);
  v21[0] = 0;
  v21[1] = 0;
  *v9.i64 = CNTimeSpan::SetTimeSpan(v21, 0, v8, a5);
  v11 = CNTimeSpan::operator-(__dst, v21, v9, v10);
  v13 = v12;
  v14 = v12;
  v15 = *(*(a1 + 16) + ((*(a1 + 40) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1928 * (*(a1 + 40) & 0xFLL);
  v16 = *(v15 + 1064);
  v17 = *(v15 + 1072);
  memcpy(__dst, (v15 + 1080), sizeof(__dst));
  if (v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = (*&v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (!v18 || !v11 && (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v19 = v16 <= v11, v16 == v11))
  {
    v19 = v17 <= v14;
  }

  if (!v19)
  {
    return 0xFFFFFFFFLL;
  }

  memmove(a2, v15, 0x428uLL);
  *a3 = v16;
  *(a3 + 8) = v17;
  memcpy((a3 + 16), __dst, 0x350uLL);
  return 0;
}

double raven::RavenEstimator::GetPriorWeight(raven::RavenEstimator *this)
{
  result = 1.0;
  if (*(this + 58) == 1)
  {
    v2 = *(this + 140);
    result = 0.0;
    if (fabs(v2) >= 2.22044605e-16)
    {
      return v2 / (v2 + *(this + 141) + *(this + 142) + *(this + 143) + *(this + 144) + *(this + 145));
    }
  }

  return result;
}

double raven::RavenEstimator::GetCellWeight(raven::RavenEstimator *this)
{
  result = 0.0;
  if (*(this + 58) == 1)
  {
    v2 = *(this + 143);
    if (fabs(v2) >= 2.22044605e-16)
    {
      return v2 / (*(this + 145) + *(this + 144) + v2 + *(this + 140) + *(this + 141) + *(this + 142));
    }
  }

  return result;
}

double raven::RavenEstimator::GetIndoorWeight(raven::RavenEstimator *this)
{
  result = 0.0;
  if (*(this + 58) == 1)
  {
    v2 = *(this + 144);
    if (fabs(v2) >= 2.22044605e-16)
    {
      return v2 / (*(this + 145) + v2 + *(this + 140) + *(this + 141) + *(this + 142) + *(this + 143));
    }
  }

  return result;
}

double raven::RavenEstimator::GetAccessoryWeight(raven::RavenEstimator *this)
{
  result = 0.0;
  if (*(this + 58) == 1)
  {
    v2 = *(this + 145);
    if (fabs(v2) >= 2.22044605e-16)
    {
      return v2 / (v2 + *(this + 140) + *(this + 141) + *(this + 142) + *(this + 143) + *(this + 144));
    }
  }

  return result;
}

double sub_1D0BAE168(uint64_t a1)
{
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0x7FF8000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0x7FF8000000000000;
  *(a1 + 208) = 0;
  *(a1 + 1160) = 0;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 1064) = 0x7FF8000000000000;
  *(a1 + 1072) = 0x7FF8000000000000;
  *(a1 + 1080) = 0;
  *(a1 + 1088) = 0x7FF8000000000000;
  bzero((a1 + 268), 0x318uLL);
  *(a1 + 1248) = 0;
  *(a1 + 1232) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1200) = 0u;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1256) = 0x7FF8000000000000;
  *(a1 + 1264) = 0;
  *(a1 + 1272) = 0x7FF8000000000000;
  v2 = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 1280) = v2;
  *(a1 + 1296) = v2;
  *(a1 + 1312) = v2;
  *(a1 + 1328) = v2;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x7FF8000000000000;
  *(a1 + 1360) = v2;
  *(a1 + 1376) = v2;
  *(a1 + 1392) = v2;
  *(a1 + 1408) = v2;
  *(a1 + 1424) = v2;
  *(a1 + 1440) = v2;
  *(a1 + 1456) = 0x7FF8000000000000;
  *(a1 + 1464) = 0;
  *(a1 + 1472) = v2;
  *(a1 + 1488) = v2;
  *(a1 + 1504) = v2;
  *(a1 + 1520) = v2;
  *(a1 + 1536) = 0x7FF8000000000000;
  *(a1 + 1544) = 0;
  *(a1 + 1552) = v2;
  *(a1 + 1568) = v2;
  *(a1 + 1584) = v2;
  *(a1 + 1600) = v2;
  *(a1 + 1616) = 0x7FF8000000000000;
  *(a1 + 1624) = 0;
  *(a1 + 1632) = v2;
  *(a1 + 1648) = v2;
  *(a1 + 1664) = v2;
  *(a1 + 1680) = v2;
  *(a1 + 1696) = v2;
  *(a1 + 1712) = v2;
  *(a1 + 1728) = v2;
  *(a1 + 1744) = 0;
  *(a1 + 1752) = 0x7FF8000000000000;
  *(a1 + 1760) = v2;
  *(a1 + 1776) = v2;
  *(a1 + 1792) = v2;
  *(a1 + 1808) = v2;
  *(a1 + 1824) = 0;
  *(a1 + 1832) = 0x7FF8000000000000;
  *(a1 + 1840) = v2;
  *(a1 + 1856) = v2;
  *(a1 + 1872) = v2;
  *(a1 + 1888) = v2;
  *(a1 + 1904) = 0;
  *(a1 + 1912) = 0x7FF8000000000000;
  *(a1 + 1920) = v2;
  *(a1 + 1936) = v2;
  *(a1 + 1952) = v2;
  *(a1 + 1968) = v2;
  *(a1 + 1984) = 0;
  *(a1 + 1992) = 0x7FF8000000000000;
  *(a1 + 2000) = v2;
  *(a1 + 2016) = v2;
  *(a1 + 2112) = 0;
  result = 0.0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2120) = 0x7FF8000000000000;
  *(a1 + 2128) = 0;
  *(a1 + 2136) = 0x3FF0000000000000;
  *(a1 + 2544) = 0;
  *(a1 + 2144) = 0u;
  *(a1 + 2160) = 0u;
  *(a1 + 2176) = 0u;
  *(a1 + 2192) = 0u;
  *(a1 + 2208) = 0u;
  *(a1 + 2224) = 0u;
  *(a1 + 2240) = 0u;
  *(a1 + 2256) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2288) = 0u;
  *(a1 + 2304) = 0u;
  *(a1 + 2320) = 0u;
  *(a1 + 2336) = 0u;
  *(a1 + 2352) = 0u;
  *(a1 + 2368) = 0u;
  *(a1 + 2384) = 0u;
  *(a1 + 2400) = 0u;
  *(a1 + 2416) = 0u;
  *(a1 + 2432) = 0u;
  *(a1 + 2448) = 0u;
  *(a1 + 2464) = 0u;
  *(a1 + 2480) = 0u;
  *(a1 + 2496) = 0u;
  *(a1 + 2512) = 0u;
  *(a1 + 2521) = 0u;
  *(a1 + 2552) = 0x3FF0000000000000;
  *(a1 + 2560) = 0u;
  *(a1 + 2576) = 0u;
  *(a1 + 2592) = 0x3FF0000000000000;
  *(a1 + 2600) = 0u;
  *(a1 + 2616) = 0u;
  *(a1 + 2632) = 0x3FE0000000000000;
  *(a1 + 2640) = 0x3FE0000000000000;
  *(a1 + 2648) = 0;
  return result;
}

void sub_1D0BAE3C4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, int8x16_t a5, int8x16_t a6)
{
  raven::PopulateAllTimeFields(a1 + 8, a2, a3, a4, a5, a6);
  raven::PopulateAllTimeFields(a1 + 1168, a2, a3, a4, v10, v11);
  raven::PopulateAllTimeFields(a1 + 112, a2, a3, a4, v12, v13);

  raven::PopulateAllTimeFields(a1 + 2032, a2, a3, a4, v14, v15);
}

void sub_1D0BAE6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_1D0B7CAB8(a11);
  }

  sub_1D0B7CAB8(v11);
  _Unwind_Resume(a1);
}

void sub_1D0BAE730(uint64_t a1, raven::RavenDeviceAttitudeActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B9FD10(v4, a3);
  raven::RavenDeviceAttitudeActiveObject::HandleEvent(v3, v4);
}

uint64_t sub_1D0BAE770(unint64_t *a1, uint64_t a2, double *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 2 * (v9 - v8) - 1;
  }

  v11 = a1[4];
  if (v10 == a1[5] + v11)
  {
    v12 = v11 >= 0x10;
    v13 = v11 - 16;
    if (!v12)
    {
      v14 = a1[3];
      v15 = v14 - *a1;
      if (v9 - v8 < v15)
      {
        operator new();
      }

      v16 = v15 >> 2;
      if (v14 == *a1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16;
      }

      sub_1D0C4E87C(v17);
    }

    a1[4] = v13;
    v32[0] = *v8;
    a1[1] = (v8 + 1);
    sub_1D0C149C4(a1, v32);
    v8 = a1[1];
    v9 = a1[2];
  }

  if (v9 == v8)
  {
    v19 = 0;
  }

  else
  {
    v18 = a1[5] + a1[4];
    v19 = (*(v8 + ((v18 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (v18 & 0xF));
  }

  *v19 = &unk_1F4CEF7A8;
  memcpy(v19 + 1, (a2 + 8), 0xA51uLL);
  v20 = a1[5];
  a1[5] = v20 + 1;
  if (v20 == -1)
  {
    v21 = 1;
  }

  else
  {
    for (i = 1; ; i = 0)
    {
      v31[0] = (*(*a2 + 16))(a2);
      v31[1] = v23;
      v24 = *(a1[1] + ((a1[4] >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (a1[4] & 0xF);
      v30[0] = (*(*v24 + 16))(v24);
      v30[1] = v25;
      *&v32[0] = CNTimeSpan::operator-(v31, v30, v26, v27);
      v32[1] = v28;
      if (!sub_1D0B7CF88(v32, a3) && a1[5] <= a4)
      {
        break;
      }

      sub_1D0BAD890(a1);
      v21 = 0;
      if (!a1[5])
      {
        return v21 & 1;
      }
    }

    v21 = i;
  }

  return v21 & 1;
}

void sub_1D0BAECE8(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0BAED18(void *a1, unsigned int a2, uint64_t a3, unsigned int a4, void *a5)
{
  v5 = a4 - a2 + 8 * (a3 - a1);
  if (v5 >= 1)
  {
    if (a2)
    {
      if (v5 >= (64 - a2))
      {
        v6 = 64 - a2;
      }

      else
      {
        v6 = a4 - a2 + 8 * (a3 - a1);
      }

      if (((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v6)) & (-1 << a2) & (*a1 ^ *a5)) != 0)
      {
        return 0;
      }

      v5 -= v6;
      ++a5;
      ++a1;
    }

    if (v5 >= 64)
    {
      while (*a5 == *a1)
      {
        v7 = v5 - 64;
        ++a1;
        ++a5;
        v8 = v5 <= 127;
        v5 -= 64;
        if (v8)
        {
          goto LABEL_14;
        }
      }

      return 0;
    }

    v7 = v5;
LABEL_14:
    if (v7 >= 1 && (*a1 ^ *a5) << -v7)
    {
      return 0;
    }
  }

  return 1;
}

void raven::RavenEstimator::StoreHistoricalSolution(raven::RavenEstimator *this)
{
  v2 = MEMORY[0x1EEE9AC00](this);
  v46[106] = *MEMORY[0x1E69E9840];
  if (v1[57] == 1)
  {
    v3 = v1;
    if (v1[58] == 1)
    {
      (*(*v1 + 40))(v44, v1, v2);
      (*(*v3 + 48))(v43, v3);
      if (BYTE1(v43[13]) == 2 && LOBYTE(v43[13]) != 0)
      {
        v5 = *(v3 + 6);
        if (!v5)
        {
          v19 = 0;
          goto LABEL_50;
        }

        if (!sub_1D0B7C8AC(v44, (*(*(v3 + 2) + (((v5 + *(v3 + 5) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1928 * ((v5 + *(v3 + 10) - 1) & 0xF) + 1064)))
        {
          __dst[0] = *(v3 + 5);
          v7.i64[1] = *(&__dst[0] + 1);
          v7.i64[0] = *(*(v3 + 146) + 1416);
          v46[1] = 0;
          v46[0] = 0;
          *v8.i64 = CNTimeSpan::SetTimeSpan(v46, 0, v7, v6);
          v41 = CNTimeSpan::operator-(__dst, v46, v8, v9);
          v42 = v10;
          v11 = (*(*(v3 + 2) + ((*(v3 + 5) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1928 * (*(v3 + 5) & 0xFLL));
          memcpy(__dst, v11, 0x428uLL);
          while (1)
          {
            v12 = *(v11 + 133);
            v13 = v11[134];
            memcpy(v46, v11 + 135, 0x350uLL);
            if (!v12 && (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              break;
            }

            if (!v41)
            {
              v15 = v42;
              if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
              {
                goto LABEL_19;
              }
            }

            if (v12 == v41)
            {
              break;
            }

            if (v12 >= v41)
            {
LABEL_29:
              v19 = *(v3 + 6);
              goto LABEL_50;
            }

LABEL_22:
            v16 = vaddq_s64(*(v3 + 40), xmmword_1D0E76280);
            *(v3 + 40) = v16;
            v17 = v16.i64[0];
            if (v16.i64[0] < 0x20uLL)
            {
              v18 = v16.i64[1];
            }

            else
            {
              operator delete(**(v3 + 2));
              *(v3 + 2) += 8;
              v18 = *(v3 + 6);
              v17 = *(v3 + 5) - 16;
              *(v3 + 5) = v17;
            }

            if (!v18)
            {
              goto LABEL_31;
            }

            v11 = (*(*(v3 + 2) + ((v17 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1928 * (v17 & 0xF));
            if (sub_1D0B7CF88(v11 + 133, &v41))
            {
              v17 = *(v3 + 5);
LABEL_31:
              v20 = *(v3 + 2);
              if (!v17)
              {
                v21 = *(v3 + 3);
                v22 = 2 * (v21 - v20) - 1;
                v23 = v21 - v20;
                if (v21 == v20)
                {
                  v22 = 0;
                }

                if ((v22 - *(v3 + 6)) < 0x10)
                {
                  v24 = *(v3 + 4);
                  v25 = *(v3 + 1);
                  if (v23 < v24 - v25)
                  {
                    if (v20 != v25)
                    {
                      operator new();
                    }

                    operator new();
                  }

                  if (v24 == v25)
                  {
                    v26 = 1;
                  }

                  else
                  {
                    v26 = (v24 - v25) >> 2;
                  }

                  v45[4] = v3 + 8;
                  sub_1D0C4E87C(v26);
                }

                *(v3 + 5) = 16;
                v45[0] = *(v21 - 8);
                *(v3 + 3) = v21 - 8;
                sub_1D0C15D70(v3 + 1, v45);
                v17 = *(v3 + 5);
                v20 = *(v3 + 2);
              }

              v27 = (v20 + 8 * (v17 >> 4));
              v28 = *v27 + 1928 * (v17 & 0xF);
              if (*(v3 + 3) == v20)
              {
                v29 = 0;
              }

              else
              {
                v29 = v28;
              }

              if (v29 == *v27)
              {
                v29 = *(v27 - 1) + 30848;
              }

              memcpy((v29 - 1928), __dst, 0x428uLL);
              *(v29 - 864) = v12;
              *(v29 - 856) = v13;
              memcpy((v29 - 848), v46, 0x350uLL);
              v30 = vaddq_s64(*(v3 + 40), xmmword_1D0E82EC0);
              *(v3 + 40) = v30;
              v19 = v30.i64[1];
LABEL_50:
              memcpy(__dst, v43, 0x428uLL);
              memcpy(&__dst[66] + 8, v44, 0x360uLL);
              v31 = *(v3 + 3);
              v32 = *(v3 + 2);
              v33 = v31 - v32;
              if (v31 == v32)
              {
                v34 = 0;
              }

              else
              {
                v34 = 2 * (v31 - v32) - 1;
              }

              v35 = *(v3 + 5);
              v36 = v19 + v35;
              if (v34 == v19 + v35)
              {
                if (v35 < 0x10)
                {
                  v37 = *(v3 + 4);
                  v38 = *(v3 + 1);
                  if (v33 < v37 - v38)
                  {
                    if (v37 != v31)
                    {
                      operator new();
                    }

                    operator new();
                  }

                  if (v37 == v38)
                  {
                    v39 = 1;
                  }

                  else
                  {
                    v39 = (v37 - v38) >> 2;
                  }

                  v46[4] = v3 + 8;
                  sub_1D0C4E87C(v39);
                }

                *(v3 + 5) = v35 - 16;
                v46[0] = *v32;
                *(v3 + 2) = v32 + 8;
                sub_1D0C149C4(v3 + 1, v46);
                v32 = *(v3 + 2);
                v36 = *(v3 + 6) + *(v3 + 5);
              }

              memcpy((*&v32[(v36 >> 1) & 0x7FFFFFFFFFFFFFF8] + 1928 * (v36 & 0xF)), __dst, 0x788uLL);
              ++*(v3 + 6);
              return;
            }

            memcpy(__dst, v11, 0x428uLL);
          }

          v15 = v42;
LABEL_19:
          if (v13 > v15)
          {
            goto LABEL_29;
          }

          goto LABEL_22;
        }
      }
    }
  }
}

void sub_1D0BAF678(_Unwind_Exception *a1)
{
  operator delete(v1);
  if (STACK[0xF40])
  {
    operator delete(STACK[0xF40]);
  }

  _Unwind_Resume(a1);
}

void sub_1D0BAF6FC(uint64_t a1, int8x16_t **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B92680(v7, a3);
  if (raven::RavenPNTEstimator::HandleEvent(v3 + 18, v7))
  {
    v12 = 12;
    v11 = 2;
    v10[0] = (*(v7[0] + 16))(v7);
    v10[1] = v4;
    (*(v7[0] + 24))(v8, v7);
    if (v9 >= 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3[15].i64, v10, "Failed to handle event - %s.", v5);
    if (v3[16].i8[7] >= 0)
    {
      i8 = v3[15].i8;
    }

    else
    {
      i8 = v3[15].i64[0];
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", i8);
    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_1D0BAF81C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1D0BAF858(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    LOWORD(v22.__vftable) = 3;
    LOBYTE(v20) = 5;
    cnprint::CNPrinter::Print(&v22, &v20, "Attempted to access type of uninitialized GenericEvent.");
    v4 = MEMORY[0x1E69E54A8];
  }

  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = (*(*v5 + 16))(v5);
    }

    else
    {
      v6 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CEE8F8 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v9, (off_1F4CEE8F8 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v22.__vftable = 0;
        std::bad_cast::bad_cast(&v22);
        v22.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C(&v22);
      }
    }

    v10 = *(a2 + 16);
    *a1 = &unk_1F4CEE8D0;
    *(a1 + 8) = *(v10 + 16);
    v11 = *(v10 + 64);
    v12 = *(v10 + 80);
    v13 = *(v10 + 48);
    *(a1 + 24) = *(v10 + 32);
    *(a1 + 72) = v12;
    *(a1 + 56) = v11;
    *(a1 + 40) = v13;
    v14 = *(v10 + 128);
    v15 = *(v10 + 144);
    v16 = *(v10 + 112);
    *(a1 + 88) = *(v10 + 96);
    *(a1 + 136) = v15;
    *(a1 + 120) = v14;
    *(a1 + 104) = v16;
    result = *(v10 + 192);
    v17 = *(v10 + 208);
    v18 = *(v10 + 176);
    *(a1 + 152) = *(v10 + 160);
    *(a1 + 200) = v17;
    *(a1 + 184) = result;
    *(a1 + 168) = v18;
  }

  else
  {
    v20 = 3;
    v19 = 5;
    if (*(a2 + 8) == 1)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      LOWORD(v22.__vftable) = 3;
      v21 = 5;
      cnprint::CNPrinter::Print(&v22, &v21, "Attempted to access type of uninitialized GenericEvent.");
      v7 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v20, &v19, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEE8F8 & 0x7FFFFFFFFFFFFFFFLL));
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEE8D0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0x7FF8000000000000;
  }

  return result;
}

void sub_1D0BAFAFC(uint64_t a1, char **a2, uint64_t a3)
{
  v3 = *a2;
  v4 = sub_1D0BAF858(v11, a3);
  if ((*(*v3 + 88))(v3, v4))
  {
    v5 = raven::RavenConvergenceEstimator::HandleEvent((v3 + 2968), v11);
    if (v5 && cnprint::CNPrinter::GetLogLevel(v5) <= 1)
    {
      v16 = 12;
      v15 = 1;
      v14[0] = (*(v11[0] + 16))(v11);
      v14[1] = v6;
      (*(v11[0] + 24))(v12, v11);
      if (v13 >= 0)
      {
        v7 = v12;
      }

      else
      {
        v7 = v12[0];
      }

      cnprint::CNLogFormatter::FormatWarning(v3 + 240, v14, "Failed to handle event - %s.", v7);
      if (*(v3 + 263) >= 0)
      {
        v8 = (v3 + 240);
      }

      else
      {
        v8 = *(v3 + 240);
      }

      cnprint::CNPrinter::Print(&v16, &v15, "%s", v8);
      if (v13 < 0)
      {
        operator delete(v12[0]);
      }
    }
  }

  else
  {
    LOWORD(v12[0]) = 12;
    LOBYTE(v14[0]) = 2;
    v9 = cnprint::CNLogFormatter::FormatGeneral((v3 + 240), "Warning,RavenConvergenceEstimatorActiveObject is not configured");
    if (*(v3 + 263) >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(v12, v14, "%s", v10);
  }
}

void sub_1D0BAFCA0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::AltitudeChangeEvent *a2)
{
  v49[4] = *MEMORY[0x1E69E9840];
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 58) != 1)
  {
    return 0;
  }

  v38 = 0x100000003;
  *&v36[9] = &unk_1F4CDEB28;
  *&v4 = 0x100000001;
  *(&v4 + 1) = 0x100000001;
  v37 = v4;
  v39 = &v40;
  v40 = *(a2 + 25);
  v34 = 0x300000003;
  v32 = &unk_1F4CD5DD0;
  v33 = v4;
  v35 = v36;
  v36[0] = *(a2 + 26) * *(a2 + 26);
  sub_1D0BA002C(v25, 3);
  v25[0] = &unk_1F4CEB860;
  v27 = (*(*a2 + 16))(a2);
  v28 = v5;
  v41 = (*(*a2 + 16))(a2);
  v42 = v6;
  v9 = CNTimeSpan::operator-(&v41, a2 + 13, v7, v8);
  v10 = *(*(this + 146) + 104);
  v29 = v11 + v9;
  v30 = v10;
  v31 = v10;
  v12 = (*(*a2 + 16))(a2);
  v14 = v13;
  v23 = v12;
  v24 = v13;
  if ((v33 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  v45 = 0x100000003;
  v41 = &unk_1F4CDEB28;
  v15 = v47;
  v46 = v47;
  v42 = v33 | 0x100000000;
  v43 = v33;
  v44 = v33;
  if (v33 > 3)
  {
    v17 = &v47[v33];
    bzero(v47, 16 * ((v33 - 1) >> 1));
    *(v17 - 2) = 0;
    *(v17 - 1) = 0;
  }

  else if (v33)
  {
    bzero(v47, 8 * v33);
  }

  if (*(this + 8560))
  {
    if (*(this + 3624) == 174)
    {
      LOWORD(v49[0]) = 2;
      v48 = 2;
      cnprint::CNPrinter::Print(v49, &v48, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v14 + v12);
    }

    else if (*(this + 8561) == 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(v15) <= 1)
      {
        LOWORD(v49[0]) = 2;
        v48 = 1;
        cnprint::CNPrinter::Print(v49, &v48, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v14 + v12);
      }
    }

    else
    {
      v18 = sub_1D0B7C8AC(&v23, this + 1071);
      if (!v18)
      {
        v49[0] = 0;
        v49[1] = 0;
        sub_1D0BB03E0(v49, v25);
      }

      if (cnprint::CNPrinter::GetLogLevel(v18) <= 1)
      {
        LOWORD(v49[0]) = 2;
        v48 = 1;
        cnprint::CNPrinter::Print(v49, &v48, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v24 + v23, *(this + 1072) + *(this + 1071));
      }
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(v15) <= 1)
  {
    LOWORD(v49[0]) = 2;
    v48 = 1;
    cnprint::CNPrinter::Print(v49, &v48, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v14 + v12);
  }

  LOWORD(v49[0]) = 12;
  v48 = 4;
  v41 = (*(*a2 + 16))(a2);
  v42 = v19;
  v20 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v41, "Could not add measurement - altitude change");
  if (*(this + 2735) >= 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = *(this + 339);
  }

  cnprint::CNPrinter::Print(v49, &v48, "%s", v21);
  v16 = 0xFFFFFFFFLL;
  v25[0] = &unk_1F4CE4300;
  if (v26 < 0)
  {
    operator delete(v25[2]);
  }

  return v16;
}

void sub_1D0BB0364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1D0BB04CC(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0BB03E0(a3, a2[1]);
      return 0;
    }

    v7 = a2[1];
    (**v7)(v7, a2, a3, a4, a5);
    operator delete(v7);
    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_1D0BB04CC;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEB7A8;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEB7A8);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_AltitudeChangeArgs_RavenConvergence<double>>::__id;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::AltitudeChangeEvent *a2)
{
  v49[4] = *MEMORY[0x1E69E9840];
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 58) != 1)
  {
    return 0;
  }

  v38 = 0x100000003;
  *&v4 = 0x100000001;
  *(&v4 + 1) = 0x100000001;
  v37 = v4;
  *&v36[9] = &unk_1F4CDEB28;
  v39 = &v40;
  v40 = *(a2 + 25);
  v34 = 0x300000003;
  v33 = v4;
  v32 = &unk_1F4CD5DD0;
  v35 = v36;
  v36[0] = *(a2 + 26) * *(a2 + 26);
  sub_1D0BA002C(v24, 4);
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v24[0] = &unk_1F4CE10D8;
  v26 = (*(*a2 + 16))(a2);
  v27 = v5;
  v41 = (*(*a2 + 16))(a2);
  v42 = v6;
  v9 = CNTimeSpan::operator-(&v41, a2 + 13, v7, v8);
  v31 = v10 + v9;
  *&v28 = this + 2920;
  *(&v28 + 1) = this + 14824;
  *&v29 = this + 14840;
  *(&v29 + 1) = this + 2760;
  v30 = this + 2800;
  v11 = (*(*a2 + 16))(a2);
  v13 = v12;
  v22 = v11;
  v23 = v12;
  if ((v33 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  v45 = 0x100000003;
  v41 = &unk_1F4CDEB28;
  v14 = v47;
  v46 = v47;
  v42 = v33 | 0x100000000;
  v43 = v33;
  v44 = v33;
  if (v33 > 3)
  {
    v16 = &v47[v33];
    bzero(v47, 16 * ((v33 - 1) >> 1));
    *(v16 - 2) = 0;
    *(v16 - 1) = 0;
  }

  else if (v33)
  {
    bzero(v47, 8 * v33);
  }

  if (*(this + 61736))
  {
    if (*(this + 16918) == 174)
    {
      LOWORD(v49[0]) = 2;
      v48 = 2;
      cnprint::CNPrinter::Print(v49, &v48, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v13 + v11);
    }

    else if (*(this + 61737) == 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(v14) <= 1)
      {
        LOWORD(v49[0]) = 2;
        v48 = 1;
        cnprint::CNPrinter::Print(v49, &v48, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v13 + v11);
      }
    }

    else
    {
      v17 = sub_1D0B7C8AC(&v22, this + 7718);
      if (!v17)
      {
        v49[0] = 0;
        v49[1] = 0;
        sub_1D0D8B214(v49, v24);
      }

      if (cnprint::CNPrinter::GetLogLevel(v17) <= 1)
      {
        LOWORD(v49[0]) = 2;
        v48 = 1;
        cnprint::CNPrinter::Print(v49, &v48, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v23 + v22, *(this + 7719) + *(this + 7718));
      }
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(v14) <= 1)
  {
    LOWORD(v49[0]) = 2;
    v48 = 1;
    cnprint::CNPrinter::Print(v49, &v48, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v13 + v11);
  }

  LOWORD(v49[0]) = 12;
  v48 = 4;
  v41 = (*(*a2 + 16))(a2);
  v42 = v18;
  v19 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v41, "Could not add measurement - device attitude change");
  if (*(this + 2735) >= 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = *(this + 339);
  }

  cnprint::CNPrinter::Print(v49, &v48, "%s", v20);
  v15 = 0xFFFFFFFFLL;
  v24[0] = &unk_1F4CE4300;
  if (v25 < 0)
  {
    operator delete(v24[2]);
  }

  return v15;
}

void sub_1D0BB0C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Baro::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Baro *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v7 != 2)
      {
        goto LABEL_15;
      }

      *(this + 11) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v29 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29))
        {
          return 0;
        }
      }

      else
      {
        v29 = *v9;
        *(a2 + 1) = v9 + 1;
      }

      v10 = *(a2 + 14);
      v11 = *(a2 + 15);
      *(a2 + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v8, a2, v12) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v13 = *(a2 + 14);
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v15 < 0 == v14)
      {
        *(a2 + 14) = v15;
      }

      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 18)
      {
        do
        {
          *(a2 + 1) = v16 + 1;
LABEL_27:
          v17 = *(this + 7);
          v18 = *(this + 6);
          if (v18 >= v17)
          {
            if (v17 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
              v17 = *(this + 7);
            }

            *(this + 7) = v17 + 1;
            operator new();
          }

          v19 = *(this + 2);
          *(this + 6) = v18 + 1;
          v20 = *(v19 + 8 * v18);
          v30 = 0;
          v21 = *(a2 + 1);
          if (v21 >= *(a2 + 2) || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v30))
            {
              return 0;
            }
          }

          else
          {
            v30 = *v21;
            *(a2 + 1) = v21 + 1;
          }

          v22 = *(a2 + 14);
          v23 = *(a2 + 15);
          *(a2 + 14) = v22 + 1;
          if (v22 >= v23)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::MergePartialFromCodedStream(v20, a2, v24) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v25 = *(a2 + 14);
          v14 = __OFSUB__(v25, 1);
          v26 = v25 - 1;
          if (v26 < 0 == v14)
          {
            *(a2 + 14) = v26;
          }

          v16 = *(a2 + 1);
          v27 = *(a2 + 2);
        }

        while (v16 < v27 && *v16 == 18);
        if (v16 == v27 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 2)
    {
      goto LABEL_27;
    }

LABEL_15:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::BaroSample *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v8 == 5)
        {
          goto LABEL_34;
        }

        goto LABEL_18;
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 == 5)
      {
        goto LABEL_30;
      }

LABEL_18:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 != 1 || v8 != 2)
    {
      goto LABEL_18;
    }

    *(this + 7) |= 1u;
    v9 = *(this + 1);
    if (!v9)
    {
      operator new();
    }

    v22 = 0;
    v10 = *(a2 + 1);
    if (v10 >= *(a2 + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
      {
        return 0;
      }
    }

    else
    {
      v22 = *v10;
      *(a2 + 1) = v10 + 1;
    }

    v11 = *(a2 + 14);
    v12 = *(a2 + 15);
    *(a2 + 14) = v11 + 1;
    if (v11 >= v12)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v9, a2, v13) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v14 = *(a2 + 14);
    v15 = __OFSUB__(v14, 1);
    v16 = v14 - 1;
    if (v16 < 0 == v15)
    {
      *(a2 + 14) = v16;
    }

    v17 = *(a2 + 1);
    if (v17 < *(a2 + 2) && *v17 == 21)
    {
      *(a2 + 1) = v17 + 1;
LABEL_30:
      v21 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v21) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = v21;
      *(this + 7) |= 2u;
      v18 = *(a2 + 1);
      if (v18 < *(a2 + 2) && *v18 == 29)
      {
        *(a2 + 1) = v18 + 1;
LABEL_34:
        v20 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v20) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = v20;
        *(this + 7) |= 4u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }
  }
}

void raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::Baro *a2, raven::BarometerEvent *a3, double a4, int8x16_t a5)
{
  LODWORD(v5) = *(a2 + 6);
  if (v5 >= 1)
  {
    v7 = 0;
    v10 = vdupq_n_s64(0x7FF8000000000000uLL);
    do
    {
      v11 = &unk_1F4CEEFA0;
      v12 = 0uLL;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0uLL;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v8 = v10;
      v21 = v10;
      v22 = 0;
      v23 = 0x7FF8000000000000;
      v24 = 0;
      if (v7 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(&v25);
      }

      raven::ConvertProtobufToBarometerEvent(*(*(a2 + 2) + 8 * v7), &v11, a3, v8, a5);
      if (v9)
      {
        operator new();
      }

      ++v7;
      v5 = *(a2 + 6);
    }

    while (v7 < v5);
  }
}

double raven::ConvertProtobufToBarometerEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::BaroSample *a2, raven::BarometerEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if (*(this + 28))
  {
    v7 = *(this + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::default_instance_ + 8);
    }

    if (raven::ConvertProtobufToRavenTime(v7, a2 + 8, 0, a4, a5))
    {
      v8 = *(this + 5);
      *(a2 + 13) = *(this + 4);
      *(a2 + 112) = 1;
      *a4.i64 = v8;
      *(a2 + 15) = v8;
      *(a2 + 64) = 257;
    }
  }

  return *a4.i64;
}

void sub_1D0BB17A0(uint64_t a1, raven::RavenPressurePrefilterActiveObject **a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v17.__vftable) = 3;
    LOBYTE(v25) = 5;
    cnprint::CNPrinter::Print(&v17, &v25, "Attempted to access type of uninitialized GenericEvent.");
    v5 = MEMORY[0x1E69E54A8];
  }

  {
    v6 = *(a3 + 16);
    if (v6)
    {
      v7 = (*(*v6 + 16))(v6);
    }

    else
    {
      v7 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CEEFC8 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CEEFC8 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v17.__vftable = 0;
      std::bad_cast::bad_cast(&v17);
      v17.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(&v17);
    }

    v10 = *(a3 + 16);
    v17.__vftable = &unk_1F4CEEFA0;
    v11 = v10[3];
    v12 = v10[4];
    v13 = v10[2];
    v18 = v10[1];
    v21 = v12;
    v20 = v11;
    v19 = v13;
    v15 = v10[6];
    v14 = v10[7];
    v16 = *(v10 + 122);
    v22 = v10[5];
    *&v23[26] = v16;
    *&v23[16] = v14;
    *v23 = v15;
  }

  else
  {
    v25 = 3;
    v24 = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v17.__vftable) = 3;
      v26 = 5;
      cnprint::CNPrinter::Print(&v17, &v26, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v25, &v24, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEEFC8 & 0x7FFFFFFFFFFFFFFFLL));
    v19 = 0uLL;
    v22 = 0uLL;
    *&v23[24] = 0;
    v18 = 0uLL;
    v17.__vftable = &unk_1F4CEEFA0;
    v20 = 0uLL;
    v21 = 0uLL;
    *v23 = 0;
    *&v23[8] = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v23[32] = 0x7FF8000000000000uLL;
  }

  raven::RavenPressurePrefilterActiveObject::HandleEvent(v4, &v17);
}

void raven::RavenPressurePrefilterActiveObject::HandleEvent(raven::RavenPressurePrefilterActiveObject *this, const raven::BarometerEvent *a2)
{
  if (*(this + 224) != 1)
  {
    return;
  }

  if (*(a2 + 128))
  {
    v3 = *(a2 + 129) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      LOWORD(__p) = 12;
      LOBYTE(v95[0]) = 1;
      (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&__p, v95, "t,%.3lf,Invalid barometer state,valid,%d,state,%d");
    }
  }

  else
  {
    v4 = *(a2 + 13);
    if (v4 >= 30.0 && v4 <= 110.0)
    {
      if (!*(this + 43))
      {
        goto LABEL_46;
      }

      __p = (*(*a2 + 16))(a2);
      *&v82 = v6;
      v7 = *(*(this + 39) + 8 * (*(this + 42) / 0x1EuLL)) + 136 * (*(this + 42) % 0x1EuLL);
      v95[0] = (*(*v7 + 16))(v7);
      v95[1] = v8;
      v11 = CNTimeSpan::operator-(&__p, v95, v9, v10);
      *&v94[0] = v11;
      v94[1] = v12;
      if (v11)
      {
        if (v11 < 0)
        {
          goto LABEL_20;
        }
      }

      else if (v12 < 0.0)
      {
LABEL_20:
        if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
        {
          v93 = 12;
          v92 = 1;
          (*(*this + 16))(&__p, this);
          v13 = SHIBYTE(v82);
          v14 = __p;
          (*(*a2 + 24))(v95, a2);
          if (v13 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = v14;
          }

          if (v96 >= 0)
          {
            v16 = v95;
          }

          else
          {
            v16 = v95[0];
          }

          cnprint::CNPrinter::Print(&v93, &v92, "WARNING: %s emptying event history of type %s", p_p, v16);
          if (v96 < 0)
          {
            operator delete(v95[0]);
          }

          if (SHIBYTE(v82) < 0)
          {
            operator delete(__p);
          }
        }

        v17 = *(this + 39);
        v18 = *(this + 40);
        if (v18 == v17)
        {
          v18 = *(this + 39);
        }

        else
        {
          v19 = *(this + 42);
          v20 = &v17[v19 / 0x1E];
          v21 = v17[(*(this + 43) + v19) / 0x1E] + 136 * ((*(this + 43) + v19) % 0x1E);
          if (*v20 + 136 * (v19 % 0x1E) != v21)
          {
            v22 = (*v20 + 136 * (v19 % 0x1E));
            do
            {
              v23 = *v22;
              v22 += 17;
              (*v23)();
              if (v22 - *v20 == 4080)
              {
                v24 = v20[1];
                ++v20;
                v22 = v24;
              }
            }

            while (v22 != v21);
            v17 = *(this + 39);
            v18 = *(this + 40);
          }
        }

        *(this + 43) = 0;
        v25 = v18 - v17;
        if (v25 >= 3)
        {
          do
          {
            operator delete(*v17);
            v26 = *(this + 40);
            v17 = (*(this + 39) + 8);
            *(this + 39) = v17;
            v25 = (v26 - v17) >> 3;
          }

          while (v25 > 2);
        }

        if (v25 == 1)
        {
          v27 = 15;
          goto LABEL_45;
        }

        if (v25 == 2)
        {
          v27 = 30;
LABEL_45:
          *(this + 42) = v27;
        }

LABEL_46:
        v28 = *(this + 42);
        if (!v28)
        {
          v30 = *(this + 39);
          v29 = *(this + 40);
          v31 = 30 * ((v29 - v30) >> 3) - 1;
          v32 = v29 - v30;
          if (v29 == v30)
          {
            v31 = 0;
          }

          if ((v31 - *(this + 43)) < 0x1E)
          {
            v33 = *(this + 41);
            v34 = *(this + 38);
            if (v32 < v33 - v34)
            {
              operator new();
            }

            if (v33 == v34)
            {
              v35 = 1;
            }

            else
            {
              v35 = (v33 - v34) >> 2;
            }

            sub_1D0C4E87C(v35);
          }

          *(this + 42) = 30;
          __p = *(v29 - 8);
          *(this + 40) = v29 - 8;
          sub_1D0C15D70(this + 38, &__p);
          v28 = *(this + 42);
        }

        v36 = *(this + 39);
        v37 = (v36 + 8 * (v28 / 0x1E));
        v38 = *v37 + 136 * (v28 % 0x1E);
        if (*(this + 40) == v36)
        {
          v38 = 0;
        }

        if (v38 == *v37)
        {
          v38 = *(v37 - 1) + 4080;
        }

        *(v38 - 136) = &unk_1F4CEEFA0;
        v39 = *(a2 + 8);
        v40 = *(a2 + 24);
        v41 = *(a2 + 56);
        *(v38 - 96) = *(a2 + 40);
        *(v38 - 80) = v41;
        *(v38 - 128) = v39;
        *(v38 - 112) = v40;
        v42 = *(a2 + 72);
        v43 = *(a2 + 88);
        v44 = *(a2 + 104);
        *(v38 - 22) = *(a2 + 114);
        *(v38 - 48) = v43;
        *(v38 - 32) = v44;
        *(v38 - 64) = v42;
        v45 = *(this + 42);
        v46 = *(this + 43);
        v47 = v45 - 1;
        v48 = v46 + 1;
        *(this + 42) = v45 - 1;
        *(this + 43) = v46 + 1;
        if (v46 + 1 == *(this + 37))
        {
          v49 = *(*(this + 29) + 1312);
          if (v48 > v49)
          {
            v50 = v47 + v49;
            v51 = *(this + 39);
            v52 = *(v51 + 8 * (v50 / 0x1E)) + 136 * (v50 % 0x1E);
            v82 = 0uLL;
            LOBYTE(v83) = 0;
            *(&v83 + 1) = 0;
            v84.n128_u64[0] = 0;
            v84.n128_u8[8] = 0;
            v85 = 0uLL;
            LOBYTE(v86) = 0;
            *(&v86 + 1) = 0;
            *v87 = 0;
            v53 = vdupq_n_s64(0x7FF8000000000000uLL);
            *&v87[8] = v53;
            v88 = 0;
            v89 = 0x7FF8000000000000;
            v90 = 0;
            __p = &unk_1F4CEF150;
            if (&__p != v52)
            {
              v54 = *(v52 + 8);
              v83 = *(v52 + 24);
              v82 = v54;
              v53 = *(v52 + 40);
              v55 = *(v52 + 56);
              v56 = *(v52 + 72);
              *v87 = *(v52 + 88);
              v86 = v56;
              v85 = v55;
              v84 = v53;
              *&v87[16] = *(v52 + 104);
              v88 = *(v52 + 112);
              v89 = *(v52 + 120);
              v90 = *(v52 + 128);
            }

            v91 = 0;
            v57 = *(this + 36);
            v58 = *(this + 33);
            v59 = *(this + 34);
            v60 = (v58 + 8 * (v57 >> 9));
            if (v59 == v58)
            {
              v61 = 0;
            }

            else
            {
              v61 = (*v60 + 8 * (*(this + 36) & 0x1FFLL));
            }

            v62 = (v51 + 8 * (v47 / 0x1E));
            v63 = *(this + 40);
            if (v63 == v51)
            {
              v64 = 0;
            }

            else
            {
              v64 = *v62 + 136 * (v47 % 0x1E);
            }

            v65 = v57 + v48;
            v66 = v65 >> 9;
            v67 = v65 & 0x1FF;
            v68 = v45 + v46;
            v69 = (v45 + v46) / 0x1EuLL;
            v53.n128_u64[0] = 0;
            while (1)
            {
              v70 = v64 - 4080;
              do
              {
                if (v59 == v58)
                {
                  v71 = 0;
                }

                else
                {
                  v71 = *(v58 + 8 * v66) + 8 * v67;
                }

                if (v61 == v71 || (v63 == v51 ? (v72 = 0) : (v72 = *(v51 + 8 * v69) + 136 * (v68 - 30 * v69)), v64 == v72))
                {
                  v76 = (*(v51 + 8 * ((v47 + v46) / 0x1E)) + 136 * ((v47 + v46) % 0x1E));
                  (**v76)(v76, v53);
                  v77 = *(this + 40);
                  v3 = v77 == *(this + 39);
                  v78 = 30 * ((v77 - *(this + 39)) >> 3) - 1;
                  v80 = *(this + 42);
                  v79 = *(this + 43);
                  *(this + 43) = v79 - 1;
                  if (v3)
                  {
                    v78 = 0;
                  }

                  if ((v78 - (v79 + v80) - 59) <= 0xFFFFFFFFFFFFFFC3)
                  {
                    operator delete(*(v77 - 8));
                    *(this + 40) -= 8;
                  }

                  operator new();
                }

                v73 = *v61++;
                v53.n128_f64[0] = v53.n128_f64[0] + v73 * *(v64 + 104);
                v91 = v53.n128_u64[0];
                if ((v61 - *v60) == 4096)
                {
                  v74 = v60[1];
                  ++v60;
                  v61 = v74;
                }

                v70 += 136;
                v64 += 136;
              }

              while (*v62 != v70);
              v75 = v62[1];
              ++v62;
              v64 = v75;
            }
          }

          sub_1D0C543A8("deque");
        }

        return;
      }

      v11 = sub_1D0B7CF88(v94, this + 30);
      if (!v11)
      {
        goto LABEL_46;
      }

      goto LABEL_20;
    }

    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      LOWORD(__p) = 12;
      LOBYTE(v95[0]) = 1;
      (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&__p, v95, "t,%.3lf,Invalid barometer data,%.6lf");
    }
  }
}

void sub_1D0BB27C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  operator delete(v19);
  if (v18)
  {
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_1D0BB28EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BAF858(v7, a3);
  if (raven::RavenPNTEstimator::HandleEvent((v3 + 288), v7))
  {
    v12 = 12;
    v11 = 2;
    v10[0] = (*(v7[0] + 16))(v7);
    v10[1] = v4;
    (*(v7[0] + 24))(v8, v7);
    if (v9 >= 0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v8[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, v10, "Failed to handle event - %s.", v5);
    if (*(v3 + 263) >= 0)
    {
      v6 = (v3 + 240);
    }

    else
    {
      v6 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v6);
    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_1D0BB2A0C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BB2A5C(uint64_t a1, raven::RavenPositionContextEstimatorActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BB2F1C(v4, a3);
  raven::RavenPositionContextEstimatorActiveObject::HandleEvent(v3, v4);
}

void raven::RavenPositionContextEstimatorActiveObject::HandleEvent(raven::RavenPositionContextEstimatorActiveObject *this, const raven::SignalEnvironmentEvent *a2)
{
  if (*(this + 224))
  {
    v3 = *(a2 + 8);
    v4 = *(a2 + 40);
    *(this + 33) = *(a2 + 24);
    *(this + 34) = v4;
    *(this + 32) = v3;
    v5 = *(a2 + 56);
    v6 = *(a2 + 72);
    v7 = *(a2 + 88);
    *(this + 608) = *(a2 + 104);
    *(this + 36) = v6;
    *(this + 37) = v7;
    *(this + 35) = v5;
  }

  else
  {
    v12 = 12;
    v11 = 2;
    v10[0] = (*(*a2 + 16))(a2);
    v10[1] = v8;
    cnprint::CNLogFormatter::FormatGeneral(this + 264, v10, "RavenPositionContextEstimatorActiveObject is not configured.");
    if (*(this + 287) >= 0)
    {
      v9 = this + 264;
    }

    else
    {
      v9 = *(this + 33);
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v9);
  }
}

void sub_1D0BB2C98(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0BB2D88((a1 + 3), a2);
}

void sub_1D0BB2D88(uint64_t a1, uint64_t a2)
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
  sub_1D0BB2BBC(v4, a2);
}

void sub_1D0BB2EC4(_Unwind_Exception *exception_object)
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

__n128 sub_1D0BB2F1C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    LOWORD(v18.__vftable) = 3;
    LOBYTE(v16) = 5;
    cnprint::CNPrinter::Print(&v18, &v16, "Attempted to access type of uninitialized GenericEvent.");
    v4 = MEMORY[0x1E69E54A8];
  }

  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = (*(*v5 + 16))(v5);
    }

    else
    {
      v6 = MEMORY[0x1E69E54A8];
    }

    v9 = (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v9 != (off_1F4CEF298 & 0x7FFFFFFFFFFFFFFFLL))
    {
      if (strcmp(v9, (off_1F4CEF298 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        v18.__vftable = 0;
        std::bad_cast::bad_cast(&v18);
        v18.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C(&v18);
      }
    }

    v10 = *(a2 + 16);
    *a1 = &unk_1F4CEF5C8;
    v12 = *(v10 + 32);
    v11 = *(v10 + 48);
    *(a1 + 8) = *(v10 + 16);
    *(a1 + 24) = v12;
    *(a1 + 40) = v11;
    v13 = *(v10 + 80);
    result = *(v10 + 96);
    v14 = *(v10 + 112);
    *(a1 + 56) = *(v10 + 64);
    *(a1 + 104) = v14;
    *(a1 + 88) = result;
    *(a1 + 72) = v13;
  }

  else
  {
    v16 = 3;
    v15 = 5;
    if (*(a2 + 8) == 1)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      LOWORD(v18.__vftable) = 3;
      v17 = 5;
      cnprint::CNPrinter::Print(&v18, &v17, "Attempted to access type of uninitialized GenericEvent.");
      v7 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v16, &v15, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEF298 & 0x7FFFFFFFFFFFFFFFLL));
    result.n128_u64[0] = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF5C8;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0x7FF8000000000000;
    *(a1 + 104) = 0;
  }

  return result;
}

void sub_1D0BB3184(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B94708(&v24, a3);
  v40 = raven::RavenPNTEstimator::HandleTimeMarkEvent((v3 + 288), &v24);
  v4 = sub_1D0BAAFCC(&v40);
  if (v4)
  {
    if (cnprint::CNPrinter::GetLogLevel(v4) <= 1)
    {
      LOWORD(v26) = 12;
      LOBYTE(v27) = 1;
      *__src = (*(v24 + 16))(&v24);
      *&__src[8] = v5;
      (*(v24 + 24))(&__p, &v24);
      v6 = v30 >= 0 ? &__p : __p;
      v7 = cnprint::CNLogFormatter::FormatWarning(v3 + 240, __src, "Error handling event of type %s,code,%d", v6, v40);
      v8 = *(v3 + 263) >= 0 ? v7 : *(v3 + 240);
      cnprint::CNPrinter::Print(&v26, &v27, "%s", v8);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p);
      }
    }

    v9 = v40;
    v10 = v40;
    if ((v40 & 4) != 0)
    {
      *__src = 12;
      LOBYTE(v26) = 2;
      __p = (*(v24 + 16))(&v24);
      *&v30 = v11;
      cnprint::CNLogFormatter::FormatWarning(v3 + 240, &__p, "Resetting filter due to prediction error");
      if (*(v3 + 263) >= 0)
      {
        v12 = (v3 + 240);
      }

      else
      {
        v12 = *(v3 + 240);
      }

      cnprint::CNPrinter::Print(__src, &v26, "%s", v12);
      v10 = v40;
    }

    if ((v10 & 0x1C00) != 0)
    {
      *__src = 12;
      LOBYTE(v26) = 2;
      __p = (*(v24 + 16))(&v24);
      *&v30 = v13;
      cnprint::CNLogFormatter::FormatWarning(v3 + 240, &__p, "Resetting filter due to FSDI error");
      if (*(v3 + 263) >= 0)
      {
        v14 = (v3 + 240);
      }

      else
      {
        v14 = *(v3 + 240);
      }

      cnprint::CNPrinter::Print(__src, &v26, "%s", v14);
      LODWORD(v15) = 1;
    }

    else
    {
      v15 = (v9 >> 2) & 1;
    }
  }

  else
  {
    LODWORD(v15) = 0;
  }

  if (*(v3 + 346) == 1 && (v40 & 2) == 0)
  {
    if (v15)
    {
      raven::RavenPNTEstimator::Reset((v3 + 288));
    }

    return;
  }

  sub_1D0BAD0C8(&__p);
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = *(v3 + 112);
  v35 = 0;
  v36 = 0x7FF8000000000000;
  raven::RavenPNTEstimator::GetRavenStatus(__src, (v3 + 288));
  memcpy(v37, __src, sizeof(v37));
  if (v37[104] == *(v3 + 344))
  {
    raven::RavenPNTEstimator::GetRavenSolution(__src, (v3 + 288));
    memcpy(v38, __src, sizeof(v38));
    raven::RavenEstimator::GetRavenActivity(__src, (v3 + 288));
    memcpy(v39, __src, sizeof(v39));
    if (v37[105] == 1)
    {
      LOWORD(v26) = 12;
      LOBYTE(v27) = 2;
      *__src = (*(v24 + 16))(&v24);
      *&__src[8] = v18;
      v19 = cnprint::CNLogFormatter::FormatWarning(v3 + 240, __src, "Estimator unhealthy; resetting...");
      if (*(v3 + 263) >= 0)
      {
        v20 = v19;
      }

      else
      {
        v20 = *(v3 + 240);
      }

      cnprint::CNPrinter::Print(&v26, &v27, "%s", v20);
    }

    else if ((v15 & 1) == 0)
    {
      if (LOBYTE(v38[102]) == 1)
      {
        v22 = v38[105];
        if (v38[105] > 0.0)
        {
          *v16.i64 = v38[103];
          *__src = 0;
          *&__src[8] = 0;
          CNTimeSpan::SetTimeSpan(__src, 0, v16, v17);
          v27 = sqrt(v22);
          v26 = *__src;
          sub_1D0BAE3C4(&__p, v25, &v26, &v27, *__src, v23);
          goto LABEL_43;
        }
      }

      v21 = 0;
LABEL_41:
      sub_1D0BE3854(&__p, v25, v16, v17);
      if (v21)
      {
        v37[105] = 1;
        raven::RavenPNTEstimator::Reset((v3 + 288));
      }

LABEL_43:
      sub_1D0BAE448(v3, &__p);
    }

    v21 = 1;
    goto LABEL_41;
  }

  if (v15)
  {
    raven::RavenPNTEstimator::Reset((v3 + 288));
  }
}

uint64_t raven::RavenPNTEstimator::HandleTimeMarkEvent(raven::RavenPNTEstimator *this, const raven::TimeMarkEvent *a2)
{
  v325 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 8);
  *(this + 152) = *(a2 + 24);
  *(this + 136) = v2;
  v3 = *(a2 + 40);
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  *(this + 216) = *(a2 + 88);
  *(this + 200) = v5;
  *(this + 184) = v4;
  *(this + 168) = v3;
  if (*(this + 57) != 1)
  {
    return 32;
  }

  if (*(this + 58))
  {
    v8 = 0;
  }

  else
  {
    __p[0] = (*(*a2 + 16))(a2);
    __p[1] = v9;
    raven::RavenPNTEstimator::GetInitializationArgs(this, __p, v310, v10);
    if (v323 == 1)
    {
      if (raven::RavenPNTEstimator::Initialize(this, v310))
      {
        LOWORD(v300) = 12;
        LOBYTE(v279) = 4;
        __p[0] = (*(*a2 + 16))(a2);
        __p[1] = v11;
        v12 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, __p, "Failed to initialize");
        if (*(this + 2735) >= 0)
        {
          v13 = v12;
        }

        else
        {
          v13 = *(this + 339);
        }

        cnprint::CNPrinter::Print(&v300, &v279, "%s", v13);
        v14 = 0;
        v8 = 32;
      }

      else
      {
        if ((*(this + 19656) & 1) == 0)
        {
          __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
        }

        if ((*(this + 19880) & 1) == 0)
        {
          raven::RavenPNTEstimator::InflateDevicePositionUncertainty(this, *(*(this + 146) + 1440), 0);
          raven::RavenPNTEstimator::InflateDeviceVelocityUncertainty(this, *(*(this + 146) + 1448), 0);
          if (raven::RavenPNTEstimator::UpdateFullStateEstimate(this))
          {
            LOWORD(v300) = 12;
            LOBYTE(v279) = 4;
            __p[0] = (*(*a2 + 16))(a2);
            __p[1] = v19;
            v20 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, __p, "Could not update full states upon receipt of unreliable attitude event");
            if (*(this + 2735) >= 0)
            {
              v21 = v20;
            }

            else
            {
              v21 = *(this + 339);
            }

            cnprint::CNPrinter::Print(&v300, &v279, "%s", v21);
            raven::RavenPNTEstimator::Reset(this);
          }
        }

        LOWORD(v279) = 12;
        v324[0].i8[0] = 3;
        v300 = (*(*a2 + 16))(a2);
        *&v301 = v15;
        sub_1D0B751F4(__p, off_1E83D7F78[v322]);
        if (SHIBYTE(v242) >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        v17 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v300, "Estimator initialized from %s solution with validity time %.3lf", v16, *&v310[8] + *v310);
        if (*(this + 2735) >= 0)
        {
          v18 = v17;
        }

        else
        {
          v18 = *(this + 339);
        }

        cnprint::CNPrinter::Print(&v279, v324, "%s", v18);
        if (SHIBYTE(v242) < 0)
        {
          operator delete(__p[0]);
        }

        v8 = 0;
        v14 = 1;
      }
    }

    else
    {
      v8 = 0;
      v14 = 0;
    }

    if (v323 == 1)
    {
      sub_1D0D857FC(v321);
    }

    if ((v14 & 1) == 0)
    {
      return v8;
    }
  }

  v281 = 0x100000003;
  v279 = &unk_1F4CDEB28;
  v282 = &v283;
  v280 = xmmword_1D0E7DCC0;
  v284 = 0;
  v283 = 0uLL;
  v311.i64[0] = 0x300000003;
  *v310 = &unk_1F4CD5DD0;
  v311.i64[1] = &v312;
  *&v310[8] = xmmword_1D0E76C10;
  v312 = 0u;
  v313 = 0u;
  v314 = 0u;
  v315 = 0u;
  v316.i64[0] = 0;
  v22 = 72;
  if (*(this + 2760) == 1)
  {
    v22 = 1368;
  }

  *v312.i64 = *(*(this + 146) + v22) * *(*(this + 146) + v22);
  v314.i64[0] = v312.i64[0];
  v316.i64[0] = v312.i64[0];
  sub_1D0BA002C(__p, 8);
  v248 = 0;
  v247 = 0u;
  v246 = 0u;
  __p[0] = &unk_1F4CE1D10;
  v23 = this + 2760;
  v244 = (*(*a2 + 16))(a2);
  v245 = v24;
  *&v246 = this + 2920;
  *(&v246 + 1) = this + 14824;
  *&v247 = this + 14840;
  *(&v247 + 1) = this + 2760;
  v248 = this + 2800;
  *&v278[0] = (*(*a2 + 16))(a2);
  v278[1] = v25;
  if (*(this + 2760) != 1 || (v26 = *(this + 1859), sqrt(v26[22] * v26[22] + v26[21] * v26[21] + v26[23] * v26[23]) > *(*(this + 146) + 1360)) && !raven::RavenPNTEstimator::IsUserStationary(this))
  {
    if ((*&v310[8] & 0x80000000) != 0)
    {
      __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
    }

    v302 = 0x100000003;
    v300 = &unk_1F4CDEB28;
    v27 = v304;
    v303 = v304;
    *&v301 = *&v310[8] | 0x100000000;
    DWORD2(v301) = *&v310[8];
    HIDWORD(v301) = *&v310[8];
    if (*&v310[8] > 3u)
    {
      v28 = &v304[*&v310[8]];
      bzero(v304, 16 * ((*&v310[8] - 1) >> 1));
      *(v28 - 2) = 0;
      *(v28 - 1) = 0;
    }

    else if (*&v310[8])
    {
      bzero(v304, 8 * *&v310[8]);
    }

    if (*(this + 61736))
    {
      if (*(this + 16918) == 174)
      {
        v324[0].i16[0] = 2;
        v249[0] = 2;
        cnprint::CNPrinter::Print(v324, v249, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v278[1] + *&v278[0]);
      }

      else if (*(this + 61737) == 1)
      {
        if (cnprint::CNPrinter::GetLogLevel(v27) <= 1)
        {
          v324[0].i16[0] = 2;
          v249[0] = 1;
          cnprint::CNPrinter::Print(v324, v249, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v278[1] + *&v278[0]);
        }
      }

      else
      {
        v29 = sub_1D0B7C8AC(v278, this + 7718);
        if (!v29)
        {
          v324[0] = 0uLL;
          sub_1D0D93494(v324, __p);
        }

        if (cnprint::CNPrinter::GetLogLevel(v29) <= 1)
        {
          v324[0].i16[0] = 2;
          v249[0] = 1;
          cnprint::CNPrinter::Print(v324, v249, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v278[1] + *&v278[0], *(this + 7719) + *(this + 7718));
        }
      }
    }

    else if (cnprint::CNPrinter::GetLogLevel(v27) <= 1)
    {
      v324[0].i16[0] = 2;
      v249[0] = 1;
      cnprint::CNPrinter::Print(v324, v249, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v278[1] + *&v278[0]);
    }

    v324[0].i16[0] = 12;
    v249[0] = 4;
    v300 = (*(*a2 + 16))(a2);
    *&v301 = v30;
    v31 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v300, "Could not add measurement - device-to-user position");
    if (*(this + 2735) >= 0)
    {
      v32 = v31;
    }

    else
    {
      v32 = *(this + 339);
    }

    cnprint::CNPrinter::Print(v324, v249, "%s", v32);
  }

  __p[0] = &unk_1F4CE4300;
  if (SHIBYTE(v243) < 0)
  {
    operator delete(v242);
  }

  if (*(this + 1848) == 1)
  {
    v33 = *(this + 1960);
    if ((v33 > 3 || v33 == 1) && *(this + 1208) == 1 && ((*(this + 1320) - 4) & 0xFA) == 0)
    {
      *v310 = (*(*a2 + 16))(a2);
      *&v310[8] = v69;
      *__p = *(this + 5);
      v71 = CNTimeSpan::operator-(v310, __p, *__p, v70);
      v238 = v73;
      v239 = v71;
      v307 = 0x100000003;
      v305 = &unk_1F4CDEB28;
      v308 = v309;
      v306 = xmmword_1D0E7DCC0;
      memset(v309, 0, sizeof(v309));
      v302 = 0x300000003;
      v300 = &unk_1F4CD5DD0;
      v303 = v304;
      v301 = xmmword_1D0E76C10;
      v74 = 0uLL;
      memset(v304, 0, sizeof(v304));
      if ((*(this + 1208) & 1) == 0)
      {
        __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
      }

      if (*(this + 1320) != 5 || *(this + 2592) != 1 || *(this + 2704) - 3 > 1)
      {
        goto LABEL_102;
      }

      if (*v23 == 1)
      {
        goto LABEL_113;
      }

      if (raven::RavenPNTEstimator::IsUserStationary(this))
      {
LABEL_102:
        v75 = *v23;
        v76 = sub_1D0D6F66C;
        if (!*v23)
        {
          v82 = *(*(this + 1859) + 192);
          MaximumComfortableTurningRate = raven::RavenPNTEstimator::GetMaximumComfortableTurningRate(this, v74, v72);
          v84 = *(this + 146);
          v85 = *(v84 + 304) / fmax(fabs(v82), 0.000000015);
          if (v85 < MaximumComfortableTurningRate)
          {
            MaximumComfortableTurningRate = v85;
          }

          v86 = MaximumComfortableTurningRate * *(v84 + 72) * (MaximumComfortableTurningRate * *(v84 + 72));
          v87 = v303;
          *v303 = v86;
          v88 = SHIDWORD(v301);
          v87[SHIDWORD(v301) + 1] = v86;
          v87[2 * v88 + 2] = v86;
          goto LABEL_162;
        }

        if (v75 != 1)
        {
          if (v75 == 2)
          {
            __assert_rtn("HandleTimeMarkEvent", "ravenpntestimator.cpp", 4381, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
          }

          v77 = 1;
LABEL_159:
          v151 = v76;
          goto LABEL_163;
        }

LABEL_113:
        v81 = *(this + 2000) != 1 || *(this + 2112) - 3 < 0xFFFFFFFE;
        v296 = 0x100000003;
        v295 = xmmword_1D0E7DCC0;
        v294 = &unk_1F4CDEB28;
        v297 = &v298;
        v89 = *(this + 1859);
        v298 = *(v89 + 24);
        v299 = *(v89 + 40);
        v90 = *(v89 + 48);
        v91 = *(v89 + 56);
        v92 = *(v89 + 64);
        v93 = *(v89 + 72);
        v94 = sqrt(v91 * v91 + v90 * v90 + v92 * v92 + v93 * v93);
        v95 = 1.0;
        v96 = 0.0;
        v97 = 0.0;
        v98 = 0.0;
        v99 = 0.0;
        v100 = 1.0;
        if (fabs(v94) >= 2.22044605e-16)
        {
          v97 = v90 / v94;
          v98 = v91 / v94;
          v99 = v92 / v94;
          v100 = v93 / v94;
        }

        *v277 = v97;
        *&v277[1] = v98;
        *&v277[2] = v99;
        *&v277[3] = v100;
        v101 = sqrt(v98 * v98 + v97 * v97 + v99 * v99 + v100 * v100);
        v102 = 0.0;
        v103 = 0.0;
        if (fabs(v101) >= 2.22044605e-16)
        {
          v96 = -v97 / v101;
          v102 = -v98 / v101;
          v103 = -v99 / v101;
          v95 = v100 / v101;
        }

        *v276 = v96;
        *&v276[1] = v102;
        *&v276[2] = v103;
        *&v276[3] = v95;
        cnrotation::CNRotation::RotationMatrix(v310, v277);
        cnrotation::CNRotation::RotationMatrix(__p, v276);
        v290 = 0x100000003;
        v289 = xmmword_1D0E7DCC0;
        v288 = &unk_1F4CDEB28;
        v291 = &v292;
        v104 = *(this + 1859);
        v292 = *(v104 + 200);
        v105.f64[1] = *(&v292 + 1);
        v293 = *(v104 + 216);
        v105.f64[0] = *(v104 + 192);
        sub_1D0C51FB4(&v288, v285, v105);
        sub_1D0C51578(3, 1, v272);
        v269[0] = &unk_1F4CEF658;
        v269[1] = 0;
        v270 = vdupq_n_s64(0x7FF8000000000000uLL);
        v269[2] = 0;
        v271 = 0x7FF8000000000000;
        v279 = (*(*a2 + 16))(a2);
        *&v280 = v106;
        if (!sub_1D0B87CF0(this + 44888, &v279, v269, v107, v108))
        {
          v109 = v274.i64[1];
          *v274.i64[1] = v270;
          *(v109 + 16) = v271;
        }

        v265 = 0x100000003;
        v264 = xmmword_1D0E7DCC0;
        v263 = &unk_1F4CDEB28;
        v266 = &v267;
        v110 = *(this + 1859);
        v267 = *(v110 + 168);
        v268 = *(v110 + 184);
        sub_1D0D5625C(v310, &v294, v262);
        sub_1D0D562E0(v261, v272, &v263);
        sub_1D0D6F584(v285, v261, v260);
        sub_1D0C4E2D8(v262, v261, v257);
        sub_1D0C4E2D8(v262, v260, v256);
        sub_1D0D6F608(v254, v256);
        v111 = *(this + 146);
        v112 = v273;
        v113 = 0.0;
        v114 = 0.0;
        if (v273 >= 1)
        {
          v115 = v274.i64[1];
          do
          {
            v116 = *v115++;
            v114 = v114 + v116 * v116;
            --v112;
          }

          while (v112);
        }

        v117 = DWORD2(v264);
        if (SDWORD2(v264) >= 1)
        {
          v113 = 0.0;
          v118 = v266;
          do
          {
            v119 = *v118++;
            v113 = v113 + v119 * v119;
            --v117;
          }

          while (v117);
        }

        v120 = v111[45] * v111[45] + v111[46] * *(*(this + 1859) + 192) * (v111[46] * *(*(this + 1859) + 192)) + v114 * v113;
        if (v120 <= v111[47] * v111[47])
        {
          v120 = v111[47] * v111[47];
        }

        v121 = v120;
        sub_1D0BFA9C4(3, 3, &v279);
        v122 = v255;
        v123 = v282;
        *v282 = *v255 * *v255;
        v124 = SHIDWORD(v280);
        v125 = &v123[SHIDWORD(v280)];
        v125[1] = v122[1] * v122[1];
        v126 = v122[2] * v122[2];
        v127 = &v123[2 * v124];
        v127[2] = v126;
        v128 = *v123;
        if (*v123 <= v121)
        {
          v128 = v121;
        }

        *v123 = v128;
        v129 = v125[1];
        if (v129 <= v121)
        {
          v129 = v121;
        }

        v125[1] = v129;
        v130 = v127[2];
        if (v130 <= v121)
        {
          v130 = v121;
        }

        v127[2] = v130;
        sub_1D0C1B688(__p, &v279, v278);
        sub_1D0C1B708(__p, v249);
        sub_1D0C1B688(v278, v249, v324);
        sub_1D0B894B0(&v300, v324);
        sub_1D0BFA800(v257);
        v131 = v134.f64[0];
        v132 = *(*(this + 1859) + 192);
        v133 = vabdd_f64(v134.f64[0], v132);
        v134.f64[0] = (v133 + v133) * (v133 / fmax(v134.f64[0], 0.5)) * 10.0;
        v135 = 0.1;
        if (v134.f64[0] >= 0.1)
        {
          v135 = v134.f64[0];
        }

        if (v134.f64[0] <= 10.0)
        {
          v136 = v135;
        }

        else
        {
          v136 = 10.0;
        }

        *(this + 348) = v136;
        v137 = v258;
        if (v258 < 1)
        {
          v134.f64[0] = 0.0;
        }

        else
        {
          v138 = v259;
          v134.f64[0] = 0.0;
          v139 = v291;
          do
          {
            v140 = *v138++;
            v141 = v140;
            v142 = *v139++;
            v134.f64[0] = v134.f64[0] + v141 * v142;
            --v137;
          }

          while (v137);
        }

        sub_1D0C51FB4(&v288, v278, v134);
        sub_1D0C4E2D8(v257, v278, v324);
        sub_1D0BFA800(v324);
        v144 = v143;
        v145 = fmax(v131, 0.625);
        v146 = fmax(v131, 20.0);
        if ((atomic_load_explicit(&qword_1EE053A88, memory_order_acquire) & 1) == 0)
        {
          v236 = __cxa_guard_acquire(&qword_1EE053A88);
          if (v236)
          {
            cnstatistics::InverseGamma(v236, 0.95, 0.5, 2.0);
            qword_1EE053A80 = v237;
            __cxa_guard_release(&qword_1EE053A88);
          }
        }

        if (!v81)
        {
          *&v149 = 0x100000001;
          *(&v149 + 1) = 0x100000001;
          v306 = v149;
          if (*(this + 2000) != 1 || (v150 = 0.0, *(this + 2112) - 1 >= 2))
          {
            v150 = v131;
          }

          v77 = 0;
          *v308 = v150;
          v301 = v149;
          *v303 = fmax((v150 - v132) * (v150 - v132), 1.0);
          v76 = sub_1D0D6B8A0;
          goto LABEL_159;
        }

        v147 = *(this + 349);
        if (v144 * v144 / v121 >= *&qword_1EE053A80 || v144 / v145 >= 0.0874886635 || v133 / v146 >= 0.363970234)
        {
          v148 = fmin(v147 * 1.25892541, 100.0);
        }

        else
        {
          v148 = fmax(v147 * 0.977237221, 0.01);
        }

        *(this + 349) = v148;
LABEL_162:
        v151 = sub_1D0D6F66C;
        v77 = 1;
LABEL_163:
        sub_1D0D947B8(v310);
        v318.i32[2] = 0;
        if (v77)
        {
          sub_1D0D947B8(__p);
          sub_1D0D84320(v310, v310, __p);
          sub_1D0D70D1C(__p);
          if (v318.i32[2])
          {
            sub_1D0D845F0();
          }

          v312.i64[0] = (*(*a2 + 16))(a2);
          v312.i64[1] = v152;
          v313.i64[0] = this + 2920;
          v313.i64[1] = this + 14824;
          v314.i64[0] = this + 14840;
          v314.i64[1] = this + 2760;
          v315.i64[0] = this + 2800;
          __p[0] = (*(*a2 + 16))(a2);
          __p[1] = v153;
          v156 = sub_1D0B87CF0(this + 44888, __p, &v315.i64[1], v154, v155);
          if (v156)
          {
            if (cnprint::CNPrinter::GetLogLevel(v156) <= 1)
            {
              LOWORD(v279) = 12;
              v324[0].i8[0] = 1;
              __p[0] = (*(*a2 + 16))(a2);
              __p[1] = v157;
              v158 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, __p, "Could not get rate gyro measurements for device-user %s measurement", "velocity");
              if (*(this + 2735) >= 0)
              {
                v159 = v158;
              }

              else
              {
                v159 = *(this + 339);
              }

              cnprint::CNPrinter::Print(&v279, v324, "%s", v159);
            }

            sub_1D0D84488(v310);
            return v8;
          }
        }

        else
        {
          sub_1D0BA002C(__p, 26);
          v248 = 0;
          v247 = 0u;
          v246 = 0u;
          __p[0] = &unk_1F4CE09C0;
          v160 = sub_1D0D84640(v310, v310, __p);
          __p[0] = &unk_1F4CE4300;
          if (SHIBYTE(v243) < 0)
          {
            operator delete(v242);
          }

          if (v318.i32[2] != 1)
          {
            sub_1D0D845F0();
          }

          v312.i64[0] = (*(*a2 + 16))(a2, v160);
          v312.i64[1] = v161;
          v313.i64[0] = this + 2920;
          v313.i64[1] = this + 14824;
          v314.i64[0] = this + 14840;
          v314.i64[1] = this + 2760;
          v315.i64[0] = this + 2800;
        }

        __p[0] = (*(*a2 + 16))(a2);
        __p[1] = v162;
        if (v77)
        {
          if (v318.i32[2])
          {
            sub_1D0D845F0();
          }

          if (!sub_1D0D70D8C(this + 61736, __p, &v305, &v300, v151, v310))
          {
            goto LABEL_188;
          }

          v324[0].i16[0] = 12;
          LOBYTE(v278[0]) = 4;
          v279 = (*(*a2 + 16))(a2);
          *&v280 = v163;
          v164 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v279, "Could not add measurement - device-to-user velocity");
          if (*(this + 2735) >= 0)
          {
            v165 = v164;
          }

          else
          {
            v165 = *(this + 339);
          }
        }

        else
        {
          if (v318.i32[2] != 1)
          {
            sub_1D0D845F0();
          }

          if (!sub_1D0D6BF40(this + 61736, __p, &v305, &v300, v151, v310))
          {
            goto LABEL_188;
          }

          v324[0].i16[0] = 12;
          LOBYTE(v278[0]) = 4;
          v279 = (*(*a2 + 16))(a2);
          *&v280 = v166;
          v167 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v279, "Could not add measurement - user speed from device");
          if (*(this + 2735) >= 0)
          {
            v165 = v167;
          }

          else
          {
            v165 = *(this + 339);
          }
        }

        cnprint::CNPrinter::Print(v324, v278, "%s", v165);
LABEL_188:
        sub_1D0D84488(v310);
        goto LABEL_62;
      }

      sub_1D0BFA9C4(3, 3, __p);
      v250 = 0x100000003;
      *&v249[8] = xmmword_1D0E7DCC0;
      *v249 = &unk_1F4CDEB28;
      v251 = &v252;
      v168 = *(this + 1859);
      v252 = *(v168 + 200);
      v253 = *(v168 + 216);
      v311.i64[0] = 0x100000003;
      *&v310[8] = xmmword_1D0E7DCC0;
      *v310 = &unk_1F4CDEB28;
      v311.i64[1] = &v312;
      v281 = 0x100000003;
      v280 = xmmword_1D0E7DCC0;
      v279 = &unk_1F4CDEB28;
      v282 = &v283;
      sub_1D0C51578(3, 1, v324);
      sub_1D0B894B0(&v279, v324);
      *v282 = sqrt(*(*(this + 1892) + 200 * *(this + 3781) + 200));
      sub_1D0D562E0(v324, v249, &v279);
      sub_1D0B894B0(v310, v324);
      v169 = *&v310[16];
      v170 = 0.0;
      if (*&v310[16] >= 1)
      {
        v171 = v311.i64[1];
        do
        {
          v172 = *v171++;
          v170 = v170 + v172 * v172;
          --v169;
        }

        while (v169);
      }

      sub_1D0C51578(3, 1, v324);
      sub_1D0B894B0(&v279, v324);
      v282[1] = sqrt(*(*(this + 1892) + 208 * *(this + 3781) + 208));
      sub_1D0D562E0(v324, v249, &v279);
      sub_1D0B894B0(v310, v324);
      v173 = *&v310[16];
      v174 = 0.0;
      if (*&v310[16] >= 1)
      {
        v175 = v311.i64[1];
        do
        {
          v176 = *v175++;
          v174 = v174 + v176 * v176;
          --v173;
        }

        while (v173);
      }

      sub_1D0C51578(3, 1, v324);
      sub_1D0B894B0(&v279, v324);
      v282[2] = sqrt(*(*(this + 1892) + 216 * *(this + 3781) + 216));
      sub_1D0D562E0(v324, v249, &v279);
      v177 = v170 + v174;
      v179 = sub_1D0B894B0(v310, v324);
      v178 = *&v310[16];
      v179.n128_u64[0] = 0;
      if (*&v310[16] >= 1)
      {
        v180 = v311.i64[1];
        do
        {
          v181 = *v180++;
          v179.n128_f64[0] = v179.n128_f64[0] + v181 * v181;
          --v178;
        }

        while (v178);
      }

      v182 = fmin(sqrt(v177 + v179.n128_f64[0]), 1.57079633);
      v183 = *(this + 1859);
      v184 = *(v183 + 168);
      v179.n128_u64[0] = *(v183 + 184);
      v185 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v184, v184).f64[1]) + v184.f64[0] * v184.f64[0] + v179.n128_f64[0] * v179.n128_f64[0]);
      if (fabs(v185) < 2.22044605e-16)
      {
        LOWORD(v279) = 12;
        v324[0].i8[0] = 4;
        *v310 = (*(*a2 + 16))(a2);
        *&v310[8] = v186;
        v187 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v310, "Position vector has zero magnitude");
        if (*(this + 2735) >= 0)
        {
          v188 = v187;
        }

        else
        {
          v188 = *(this + 339);
        }

LABEL_232:
        cnprint::CNPrinter::Print(&v279, v324, "%s", v188);
        return v8 | 1;
      }

      v296 = 0x100000003;
      v295 = xmmword_1D0E7DCC0;
      v294 = &unk_1F4CDEB28;
      v297 = &v298;
      v298 = vdivq_f64(v184, vdupq_lane_s64(*&v185, 0));
      v179.n128_f64[0] = v179.n128_f64[0] / v185;
      v299 = v179.n128_u64[0];
      v189 = raven::RavenPNTEstimator::GetMaximumComfortableTurningRate(this, v179, v298);
      v272[0] = &unk_1F4CEF658;
      v272[1] = 0;
      v274 = vdupq_n_s64(0x7FF8000000000000uLL);
      v273 = 0;
      v275 = 0x7FF8000000000000;
      *v310 = (*(*a2 + 16))(a2);
      *&v310[8] = v190;
      if (!sub_1D0B87CF0(this + 44888, v310, v272, v191, v192))
      {
        v281 = 0x100000003;
        v280 = xmmword_1D0E7DCC0;
        v279 = &unk_1F4CDEB28;
        v282 = &v283;
        v283 = v274;
        v284 = v275;
        v195 = *(this + 1859);
        _Q1 = v195[4];
        _D3 = _Q1.f64[1];
        __asm { FMLA            D2, D3, V1.D[1] }

        v203 = sqrt(_D2);
        if (fabs(v203) >= 2.22044605e-16)
        {
          v206 = vdupq_lane_s64(*&v203, 0);
          v204 = vdivq_f64(_Q1, v206);
          v205 = vdivq_f64(v195[3], v206);
        }

        else
        {
          v204 = xmmword_1D0E7DCB0;
          v205 = 0uLL;
        }

        v324[0] = v205;
        v324[1] = v204;
        sub_1D0B88A54(v324, &v294, v310);
        v207 = DWORD2(v280);
        if (SDWORD2(v280) < 1)
        {
          v189 = 0.0;
        }

        else
        {
          v208 = v282;
          v189 = 0.0;
          v209 = v311.i64[1];
          do
          {
            v210 = *v208++;
            v211 = v210;
            v212 = *v209++;
            v189 = v189 + v211 * v212;
            --v207;
          }

          while (v207);
        }
      }

      *v193.i64 = fabs(v189) * 3.28425;
      v194.i64[0] = 0x3FA999999999999ALL;
      v213 = fmax(*v193.i64, 0.05);
      v214 = v238 + v239;
      v215 = v214 * raven::RavenPNTEstimator::GetComfortableAcceleration(this, v193, v194);
      v216 = v182 * v215 * (v182 * v215);
      v217 = v243;
      *v243 = v216 + 0.0025 + v213 * v213;
      v218 = SHIDWORD(v242);
      v217[SHIDWORD(v242) + 1] = v215 * v215 + 0.0025;
      v217[2 * v218 + 2] = v216 * 0.0025 + 0.0025;
      if (!cnprint::CNPrinter::GetLogLevel(v219))
      {
        LOWORD(v279) = 12;
        v324[0].i8[0] = 0;
        *v310 = (*(*a2 + 16))(a2);
        *&v310[8] = v220;
        v221 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v310, "uesr-device vel,speed,%.3lf,dt,%.2f,across,%.3lf,along,%.3lf,up,%.3lf,omega,%.3lf,acc,%.2lf,vib,%.2lf,dot,%.2lf,turn,%.2lf", *(*(this + 1859) + 192), v214, sqrt(*v243), sqrt(v243[SHIDWORD(v242) + 1]), sqrt(v243[2 * SHIDWORD(v242) + 2]), v189 * 57.2957795, v215, 0.05, sqrt(v216), v213);
        if (*(this + 2735) >= 0)
        {
          v222 = v221;
        }

        else
        {
          v222 = *(this + 339);
        }

        cnprint::CNPrinter::Print(&v279, v324, "%s", v222);
      }

      sub_1D0BBA094(&v288, v249);
      sub_1D0D562E0(v285, &v288, &v294);
      v223 = v286;
      v224 = 0.0;
      if (v286 >= 1)
      {
        v225 = v287;
        do
        {
          v226 = *v225++;
          v224 = v224 + v226 * v226;
          --v223;
        }

        while (v223);
      }

      v227 = sqrt(v224);
      if (v227 < 0.000000015)
      {
        LOWORD(v279) = 12;
        v324[0].i8[0] = 4;
        *v310 = (*(*a2 + 16))(a2);
        *&v310[8] = v234;
        v235 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v310, "Cross product has zero magnitude");
        if (*(this + 2735) >= 0)
        {
          v188 = v235;
        }

        else
        {
          v188 = *(this + 339);
        }

        goto LABEL_232;
      }

      v228 = v287;
      *v287 = vdivq_f64(*v287, vdupq_lane_s64(*&v227, 0));
      v228[1].f64[0] = v228[1].f64[0] / v227;
      v281 = 0x300000003;
      v280 = xmmword_1D0E76C10;
      v279 = &unk_1F4CD5DD0;
      v282 = &v283;
      sub_1D0C51CC8(&v279, ":", 0, v310);
      sub_1D0D2D13C(v310, v285);
      sub_1D0C51CC8(&v279, ":", 1, v310);
      sub_1D0D2D13C(v310, &v288);
      sub_1D0C51CC8(&v279, ":", 2, v310);
      sub_1D0D2D13C(v310, &v294);
      sub_1D0C1B688(&v279, __p, v324);
      sub_1D0C1B708(&v279, v278);
      sub_1D0C1B688(v324, v278, v310);
      sub_1D0B894B0(&v300, v310);
      sub_1D0BA002C(v310, 11);
      v315 = 0uLL;
      v314 = 0u;
      v313 = 0u;
      *v310 = &unk_1F4CE1E00;
      v312.i64[0] = (*(*a2 + 16))(a2);
      v312.i64[1] = v229;
      v313.i64[0] = this + 2920;
      v313.i64[1] = this + 14824;
      v314.i64[0] = this + 14840;
      v314.i64[1] = this + 2760;
      v315.i64[0] = this + 2800;
      v324[0].i64[0] = (*(*a2 + 16))(a2);
      v324[0].i64[1] = v230;
      *&v315.i64[1] = v238 + v239;
      if (sub_1D0D6F0B8(this + 61736, v324[0].i64, &v305, &v300, v310))
      {
        LOWORD(v263) = 12;
        LOBYTE(v262[0]) = 4;
        *&v278[0] = (*(*a2 + 16))(a2);
        v278[1] = v231;
        v232 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v278, "Could not add measurement - device-to-user velocity");
        if (*(this + 2735) >= 0)
        {
          v233 = v232;
        }

        else
        {
          v233 = *(this + 339);
        }

        cnprint::CNPrinter::Print(&v263, v262, "%s", v233);
      }

      *v310 = &unk_1F4CE4300;
      if (v311.i8[15] < 0)
      {
        operator delete(*&v310[16]);
      }
    }
  }

LABEL_62:
  v34 = (*(*a2 + 16))(a2);
  v36 = *&v35;
  __p[0] = v34;
  __p[1] = v35;
  *v310 = *(this + 5);
  v38 = CNTimeSpan::operator-(__p, v310, *v310, v37);
  v41 = v40 + v38;
  if (v41 >= 0.0)
  {
    v49 = *(this + 146);
    v39.i64[0] = *(v49 + 872);
    v50 = vcvtpd_s64_f64(v41 / *v39.i64);
    *(this + 328) = 0u;
    *(this + 344) = 0u;
    *(this + 360) = 0u;
    *(this + 376) = 0u;
    *(this + 392) = 0u;
    *(this + 408) = 0u;
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
    *(this + 696) = 0u;
    *(this + 708) = 0u;
    v51 = *(v49 + 872);
    *&v301 = 0;
    v300 = 0;
    CNTimeSpan::SetTimeSpan(&v300, 0, v51, v39);
    v52.i64[0] = *(v49 + 880);
    *&v280 = 0;
    v279 = 0;
    CNTimeSpan::SetTimeSpan(&v279, 0, v52, v53);
    v55 = v50 - 1;
    if (v50 >= 1)
    {
      v56 = v36;
      if (v34)
      {
        v57 = 1;
      }

      else
      {
        v57 = (*&v36 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      }

      v58 = v57;
      v240 = vdupq_n_s64(0x7FF8000000000000uLL);
      while (1)
      {
        if ((v324[0] = *(this + 5), *&v278[0] = CNTimeSpan::operator+(v324, &v300, v324[0], v54), v278[1] = v59, (v62 = CNTimeSpan::operator+(v278, &v279, v60, v61)) != 0) || (*&v63 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (v58)
        {
          v65 = v62 == v34 ? v56 <= v63 : v62 > v34;
        }

        else
        {
          v65 = v56 <= v63;
        }

        v66 = v65 ? __p : v278;
        *v249 = *v66;
        *v310 = 0uLL;
        v311 = v240;
        v312 = v240;
        v313 = v240;
        v314 = v240;
        v315 = v240;
        v316 = v240;
        v317 = v240;
        v318 = v240;
        v319 = v240;
        v320 = v240;
        EstimatorPredictAndUpdateArguments = raven::RavenPNTEstimator::GetEstimatorPredictAndUpdateArguments(this, v324, v249, v310, *v240.i64, v64);
        if (!EstimatorPredictAndUpdateArguments)
        {
          break;
        }

        v305 = raven::RavenPNTEstimator::PredictAndUpdate(this, v310);
        v8 |= v305;
        if (sub_1D0BAAFCC(&v305))
        {
          return v8;
        }

        if (v55)
        {
          v68 = v65;
        }

        else
        {
          v68 = 1;
        }

        --v55;
        if (v68)
        {
          goto LABEL_111;
        }
      }

      if (cnprint::CNPrinter::GetLogLevel(EstimatorPredictAndUpdateArguments) <= 1)
      {
        LOWORD(v305) = 12;
        LOBYTE(v294) = 1;
        v78 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, __p, "Could not get predict and update arguments");
        if (*(this + 2735) >= 0)
        {
          v79 = v78;
        }

        else
        {
          v79 = *v78;
        }

        cnprint::CNPrinter::Print(&v305, &v294, "%s", v79);
      }
    }

LABEL_111:
    raven::RavenEstimator::StoreHistoricalSolution(this);
  }

  else
  {
    if (cnprint::CNPrinter::GetLogLevel(v38) <= 1)
    {
      LOWORD(v300) = 12;
      LOBYTE(v279) = 1;
      *v310 = (*(*a2 + 16))(a2);
      *&v310[8] = v42;
      v44 = *(this + 10);
      v43 = *(this + 11);
      v45 = (*(*a2 + 16))(a2);
      v47 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v310, "Estimator time is greater than event time,%.3lf > %.3lf", v43 + v44, v46 + v45);
      if (*(this + 2735) >= 0)
      {
        v48 = v47;
      }

      else
      {
        v48 = *v47;
      }

      cnprint::CNPrinter::Print(&v300, &v279, "%s", v48);
    }

    return v8 | 0x40;
  }

  return v8;
}

void raven::RavenSolutionActiveObject::HandleEvent(raven::RavenSolutionActiveObject *this, const raven::RavenSolutionEvent *a2)
{
  raven::RavenSolutionActiveObject::WriteRavenSolutionToProtobuf(this, a2);
  if (*(a2 + 208) == 4)
  {
    sub_1D0BAD0C8(v5);
    v10 = 0u;
    v9 = 0u;
    v8 = 0u;
    v7 = 0u;
    v6 = 0u;
    v11 = 0;
    v12 = 0x7FF8000000000000;
    v13 = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
    v20 = 0x7FF8000000000000;
    v21 = 0;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0;
    v25 = 0;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    *&v26[796] = 0x7FF8000000000000;
    v27 = 0x7FF8000000000000;
    v28 = 0;
    v29 = 0x7FF8000000000000;
    bzero(v26, 0x318uLL);
    v40 = 0;
    v39 = 0u;
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v41 = 0x7FF8000000000000;
    v42 = 0;
    v43 = 0x7FF8000000000000;
    v44 = vdupq_n_s64(0x7FF8000000000000uLL);
    v45 = v44;
    v46 = v44;
    v47 = v44;
    v48 = 0;
    v49 = 0x7FF8000000000000;
    v50 = v44;
    v51 = v44;
    v52 = v44;
    v53 = v44;
    v54 = v44;
    v55 = v44;
    v56 = 0x7FF8000000000000;
    v57 = 0;
    v58 = v44;
    v59 = v44;
    v60 = v44;
    v61 = v44;
    v62 = 0x7FF8000000000000;
    v63 = 0;
    v64 = v44;
    v65 = v44;
    v66 = v44;
    v67 = v44;
    v68 = 0x7FF8000000000000;
    v69 = 0;
    v70 = v44;
    v71 = v44;
    v72 = v44;
    v73 = v44;
    v74 = v44;
    v75 = v44;
    v76 = v44;
    v77 = 0;
    v78 = 0x7FF8000000000000;
    v79 = v44;
    v80 = v44;
    v81 = v44;
    v82 = v44;
    v83 = 0;
    v84 = 0x7FF8000000000000;
    v85 = v44;
    v86 = v44;
    v87 = v44;
    v88 = v44;
    v89 = 0;
    v90 = 0x7FF8000000000000;
    v91 = v44;
    v92 = v44;
    v93 = v44;
    v94 = v44;
    v95 = 0;
    v96 = 0x7FF8000000000000;
    v97 = v44;
    v98 = v44;
    v104 = 0;
    v103 = 0u;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v105 = 0x7FF8000000000000;
    v106 = 0;
    v107 = 0x3FF0000000000000;
    v132 = 0;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    memset(v131, 0, sizeof(v131));
    v133 = 0x3FF0000000000000;
    v134 = 0u;
    v135 = 0u;
    v136 = 0x3FF0000000000000;
    v137 = 0u;
    v138 = 0u;
    v139 = 0x3FE0000000000000;
    v140 = 0x3FE0000000000000;
    v141 = 0;
    if (*(*(this + 42) + 3736) == 1)
    {
      v4 = *(this + 7);
      raven::RavenSolutionActiveObject::GetRavenSolution(this, &v4, v5);
    }

    std::mutex::lock((this + 11320));
    if (*(a2 + 209) == 2)
    {
      if (!*(this + 344) || sub_1D0B8E6A8(a2 + 146, this + 190))
      {
        memcpy(this + 360, a2 + 8, 0xA51uLL);
      }

      *(this + 344) = 1;
    }

    raven::RavenPredictor::HandleEvent((this + 3008), a2);
    std::mutex::unlock((this + 11320));
  }
}

void raven::RavenSolutionActiveObject::WriteRavenSolutionToProtobuf(cnlogging::ProtobufOutputStream **this, const raven::RavenSolutionEvent *a2)
{
  if (*(this[42] + 3708) == 1 && this[1406])
  {
    CoreNavigation::CLP::LogEntry::LogEntry::LogEntry(v11);
    v14 |= 1u;
    v5 = v12;
    if (!v12)
    {
      operator new();
    }

    v6 = *(v12 + 44);
    *(v12 + 8) = *(a2 + 5) + *(a2 + 4);
    v7 = *(a2 + 2) + *(a2 + 1);
    *(v5 + 44) = v6 | 5;
    *(v5 + 24) = v7;
    v14 |= 2u;
    v8 = v13;
    if (!v13)
    {
      operator new();
    }

    *(v13 + 320) |= 2u;
    v9 = *(v8 + 272);
    if (!v9)
    {
      operator new();
    }

    v10 = *(v9 + 8);
    *(v9 + 28) |= 1u;
    if (!v10)
    {
      operator new();
    }

    raven::ConvertRavenSolutionEventToProtobuf(a2, v10, v4);
    cnlogging::ProtobufOutputStream::append(this[1406], v11);
    cnlogging::ProtobufOutputStream::flush(this[1406]);
    CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(v11);
  }
}

void sub_1D0BB6330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(va);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenPNTEstimator::HandleEvent(int8x16_t *this, const raven::MovingStateEvent *a2)
{
  if (this[3].i8[9] != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (this[3].i8[10] != 1)
  {
    return 0;
  }

  raven::RavenEstimator::HandleMovingStateEvent(this, a2);
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 104) != 1 || *(a2 + 15) < *(this[73].i64[0] + 248))
  {
    v6 = 0;
    if (this[1409].i8[8] == 1)
    {
      this[1409].i8[8] = 0;
    }

    goto LABEL_9;
  }

  if ((this[1409].i8[8] & 1) == 0)
  {
    v20 = (*(*a2 + 16))(a2);
    v21 = this[1409].i8[8];
    this[1410].i64[0] = v20;
    this[1410].i64[1] = v22;
    v6 = 1;
    if ((v21 & 1) == 0)
    {
      this[1409].i8[8] = 1;
    }

    goto LABEL_9;
  }

  v49 = (*(*a2 + 16))(a2);
  v50 = v7;
  if ((this[1409].i8[8] & 1) == 0)
  {
    __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
  }

  v10 = CNTimeSpan::operator-(&v49, this[1410].i64, v8, v9);
  v12 = v11;
  v13 = v11;
  v14.i64[0] = *(this[73].i64[0] + 280);
  v88 = 0;
  v89 = 0.0;
  CNTimeSpan::SetTimeSpan(&v88, 0, v14, v15);
  if (!v10 && (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (!v88)
  {
    v16 = v89;
    if ((*&v89 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
LABEL_21:
      if (v16 > v13)
      {
        goto LABEL_65;
      }

LABEL_40:
      v98.i64[0] = (*(*a2 + 16))(a2);
      v98.i64[1] = v32;
      sub_1D0C51578(3, 1, v97);
      sub_1D0BFA9C4(3, 3, &v49);
      v33 = *(this[73].i64[0] + 288) * 0.00872664626;
      v34 = v33 * v33;
      v35 = v53;
      *v53 = v34;
      v36 = SHIDWORD(v51);
      v35[SHIDWORD(v51) + 1] = v34;
      v35[2 * v36 + 2] = v34;
      sub_1D0BA002C(&v88, 13);
      v95 = 0;
      v96 = 0.0;
      v94 = 0u;
      v93 = 0u;
      v88 = &unk_1F4CE1A08;
      v92 = v98;
      if ((this[1409].i8[8] & 1) == 0)
      {
        __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
      }

      v38 = CNTimeSpan::operator-(&v98, this[1410].i64, v98, v37);
      v96 = v39 + v38;
      *&v93 = this + 2920;
      *(&v93 + 1) = this + 14824;
      *&v94 = this + 14840;
      *(&v94 + 1) = this + 2760;
      v95 = this + 175;
      v40 = this[73].i64[0];
      v41 = 350.0 / *(v40 + 648);
      if (v41 >= 350.0 / *(v40 + 656))
      {
        v41 = 350.0 / *(v40 + 656);
      }

      if (v39 + v38 <= v41)
      {
        v44 = sub_1D0D654BC(&this[3858].i64[1], v98.i64, v97, &v49, &v88);
        if (!v44)
        {
          if (cnprint::CNPrinter::GetLogLevel(v44) <= 1)
          {
            v87 = 12;
            v86 = 1;
            if ((this[1409].i8[8] & 1) == 0)
            {
              __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
            }

            v46 = cnprint::CNLogFormatter::FormatGeneral(&this[169].i64[1], &v98, "Added ZARU measurement,t_start,%.3lf,t_end,%.3lf", *&v98.i64[1] + v98.i64[0], *&this[1410].i64[1] + this[1410].i64[0]);
            if (this[170].i8[15] >= 0)
            {
              v47 = v46;
            }

            else
            {
              v47 = this[169].i64[1];
            }

            cnprint::CNPrinter::Print(&v87, &v86, "%s", v47);
          }

          v48 = this[1409].i8[8];
          this[1410] = v98;
          if ((v48 & 1) == 0)
          {
            this[1409].i8[8] = 1;
          }

          v88 = &unk_1F4CE4300;
          if (v91 < 0)
          {
            operator delete(__p);
          }

          goto LABEL_65;
        }

        v87 = 12;
        v86 = 4;
        v45 = cnprint::CNLogFormatter::FormatGeneral(&this[169].i64[1], &v98, "Could not add measurement - device ZARU");
        if (this[170].i8[15] >= 0)
        {
          v43 = v45;
        }

        else
        {
          v43 = this[169].i64[1];
        }
      }

      else
      {
        if (cnprint::CNPrinter::GetLogLevel(v38) > 1)
        {
          goto LABEL_53;
        }

        v87 = 12;
        v86 = 1;
        v42 = cnprint::CNLogFormatter::FormatWarning(&this[169].i64[1], &v98, "ZARU time interval too large, %.3lf", v96);
        if (this[170].i8[15] >= 0)
        {
          v43 = v42;
        }

        else
        {
          v43 = this[169].i64[1];
        }
      }

      cnprint::CNPrinter::Print(&v87, &v86, "%s", v43);
LABEL_53:
      v88 = &unk_1F4CE4300;
      if (v91 < 0)
      {
        operator delete(__p);
      }

      return 0xFFFFFFFFLL;
    }
  }

  if (v10 == v88)
  {
LABEL_20:
    v16 = v89;
    goto LABEL_21;
  }

  if (v10 > v88)
  {
    goto LABEL_40;
  }

LABEL_65:
  v6 = 1;
LABEL_9:
  result = raven::RavenEstimator::IsZUPTAppropriate(this, a2);
  if (!result)
  {
    return result;
  }

  v50 = 0;
  v51 = 0;
  v49 = &unk_1F4CEF6E8;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v62 = 0;
  v63 = 0;
  v61 = 0x7FF8000000000000;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0x7FF8000000000000;
  v74 = 0;
  v75 = vdupq_n_s64(0x7FF8000000000000uLL);
  v76 = v75;
  v77 = v75;
  v78 = v75;
  v79 = 0x7FF8000000000000;
  v80 = 0;
  v81 = v75;
  v82 = v75;
  v83 = v75;
  v84 = v75;
  v85 = 0x7FF8000000000000;
  if (!(*(this->i64[0] + 184))(this, a2, &v49))
  {
    if (v6)
    {
      v17 = raven::RavenPNTEstimator::AddDeviceVelocityMeasurement(this, &v49);
      if (v17)
      {
        if (cnprint::CNPrinter::GetLogLevel(v17) <= 1)
        {
          LOWORD(v88) = 12;
          LOBYTE(v97[0]) = 1;
          v18 = (*(*a2 + 16))(a2);
          cnprint::CNPrinter::Print(&v88, v97, "t,%.3lf, Could not add ZUPT measurement 1", v19 + v18);
        }

        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      v23 = raven::RavenPNTEstimator::AddUserVelocityMeasurement(this, &v49);
      if (v23)
      {
        if (cnprint::CNPrinter::GetLogLevel(v23) <= 1)
        {
          LOWORD(v88) = 12;
          LOBYTE(v97[0]) = 1;
          v24 = (*(*a2 + 16))(a2);
          cnprint::CNPrinter::Print(&v88, v97, "t,%.3lf, Could not add ZUPT measurement 2", v25 + v24);
        }

        return 0xFFFFFFFFLL;
      }
    }

    v26 = (*(*a2 + 16))(a2);
    v27 = this[14].i8[8];
    this[15].i64[0] = v26;
    this[15].i64[1] = v28;
    if ((v27 & 1) == 0)
    {
      this[14].i8[8] = 1;
    }

    if (cnprint::CNPrinter::GetLogLevel(v26) <= 1)
    {
      LOWORD(v97[0]) = 12;
      v98.i8[0] = 1;
      v88 = (*(*a2 + 16))(a2);
      v89 = v29;
      v30 = cnprint::CNLogFormatter::FormatGeneral(&this[169].i64[1], &v88, "Raising ZUPT velocity event");
      if (this[170].i8[15] >= 0)
      {
        v31 = v30;
      }

      else
      {
        v31 = this[169].i64[1];
      }

      cnprint::CNPrinter::Print(v97, &v98, "%s", v31);
    }
  }

  return 0;
}

void sub_1D0BB6B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, int a62, __int16 a63)
{
  if (a65 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_1D0BB6BCC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = sub_1D0BB2F1C(v7, a3);
  if (*(v3 + 1720))
  {
    if (*(v3 + 1600) == 1)
    {
      *(v3 + 1664) = v11;
      *(v3 + 1680) = v12;
      *(v3 + 1696) = v13;
      *(v3 + 1712) = v14;
      *(v3 + 1616) = v8;
      *(v3 + 1632) = v9;
      result = *&v10;
      *(v3 + 1648) = v10;
    }

    else
    {
      *(v3 + 1608) = &unk_1F4CEF5C8;
      *(v3 + 1664) = v11;
      *(v3 + 1680) = v12;
      *(v3 + 1696) = v13;
      *(v3 + 1712) = v14;
      *(v3 + 1616) = v8;
      *(v3 + 1632) = v9;
      result = *&v10;
      *(v3 + 1648) = v10;
      *(v3 + 1600) = 1;
    }
  }

  else
  {
    v18 = 12;
    v17 = 2;
    (*(*v3 + 16))(v15, v3, v4);
    if (v16 >= 0)
    {
      v6 = v15;
    }

    else
    {
      v6 = v15[0];
    }

    cnprint::CNPrinter::Print(&v18, &v17, "Warning: %s Active Object not configured", v6);
    if (v16 < 0)
    {
      operator delete(v15[0]);
    }
  }

  return result;
}

void sub_1D0BB6D2C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 25) < 0)
  {
    operator delete(*(v1 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BB6D48(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B92680(v8, a3);
  raven::RavenEstimator::HandleMovingStateEvent((v3 + 288), v8);
  if (v4 && cnprint::CNPrinter::GetLogLevel(v4) <= 1)
  {
    v13 = 12;
    v12 = 1;
    v11[0] = (*(v8[0] + 16))(v8);
    v11[1] = v5;
    (*(v8[0] + 24))(v9, v8);
    if (v10 >= 0)
    {
      v6 = v9;
    }

    else
    {
      v6 = v9[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, v11, "Failed to handle event - %s.", v6);
    if (*(v3 + 263) >= 0)
    {
      v7 = (v3 + 240);
    }

    else
    {
      v7 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v13, &v12, "%s", v7);
    if (v10 < 0)
    {
      operator delete(v9[0]);
    }
  }
}

void sub_1D0BB6E74(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BB6E94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B94708(&v10, a3);
  v4 = raven::RavenPassThroughEstimator::HandleEvent(v3 + 288, &v10);
  if (v4 && cnprint::CNPrinter::GetLogLevel(v4) <= 1)
  {
    v18 = 12;
    v17 = 1;
    __src[0] = (*(v10 + 16))(&v10);
    __src[1] = v5;
    (*(v10 + 24))(__p, &v10);
    v6 = __p[23] >= 0 ? __p : *__p;
    cnprint::CNLogFormatter::FormatWarning(v3 + 240, __src, "Failed to handle event - %s.", v6);
    v7 = *(v3 + 263) >= 0 ? (v3 + 240) : *(v3 + 240);
    cnprint::CNPrinter::Print(&v18, &v17, "%s", v7);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  if (*(v3 + 3792))
  {
    *__p = *(v3 + 3152);
    if (sub_1D0B7CF88(__p, (v3 + 3776)))
    {
      sub_1D0BAD0C8(__p);
      *&__p[8] = *(v3 + 112);
      raven::PopulateAllTimeFields(&__p[8], &v11, *&__p[8], v8);
      raven::RavenPassThroughEstimator::GetRavenSolution(__src, (v3 + 288));
      memcpy(v15, __src, sizeof(v15));
      raven::RavenPassThroughEstimator::GetRavenStatus(__src, (v3 + 288));
      memcpy(v14, __src, sizeof(v14));
      raven::RavenEstimator::GetRavenActivity(__src, (v3 + 288));
      memcpy(v16, __src, sizeof(v16));
      *(v3 + 3776) = (*(v10 + 16))(&v10);
      *(v3 + 3784) = v9;
      sub_1D0BAE448(v3, __p);
    }
  }
}

void sub_1D0BB70C0()
{
  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(STACK[0x4A0]);
  }

  JUMPOUT(0x1D0BB70B8);
}

uint64_t raven::RavenPassThroughEstimator::HandleEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *(a1 + 152) = *(a2 + 24);
  *(a1 + 136) = v3;
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  *(a1 + 216) = *(a2 + 88);
  *(a1 + 200) = v6;
  *(a1 + 184) = v5;
  *(a1 + 168) = v4;
  if (*(a1 + 3504) == 1)
  {
    v8 = *(a1 + 2768);
    if (sub_1D0B7CF88(&v8, (a1 + 80)))
    {
      *(a1 + 80) = *(a1 + 2768);
    }
  }

  if ((*(a1 + 58) & 1) == 0)
  {
    *(a1 + 58) = *(a1 + 3504);
  }

  return 0;
}

void sub_1D0BB7194(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B99264(v8, a3);
  raven::RavenEstimator::HandleActivityStateEvent((v3 + 288), v8);
  if (v4 && cnprint::CNPrinter::GetLogLevel(v4) <= 1)
  {
    v13 = 12;
    v12 = 1;
    v11[0] = (*(v8[0] + 16))(v8);
    v11[1] = v5;
    (*(v8[0] + 24))(v9, v8);
    if (v10 >= 0)
    {
      v6 = v9;
    }

    else
    {
      v6 = v9[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, v11, "Failed to handle event - %s.", v6);
    if (*(v3 + 263) >= 0)
    {
      v7 = (v3 + 240);
    }

    else
    {
      v7 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v13, &v12, "%s", v7);
    if (v10 < 0)
    {
      operator delete(v9[0]);
    }
  }
}

void sub_1D0BB72C0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BB72E0(uint64_t a1, raven::RavenSolutionActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B9FD10(v4, a3);
  raven::RavenSolutionActiveObject::HandleEvent(v3, v4);
}

void sub_1D0BB7340(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = sub_1D0B9356C(v11, a3);
  v6 = raven::RavenPNTEstimator::HandleEvent((v3 + 288), v11, v4, v5);
  if (v7)
  {
    v16 = 12;
    v15 = 2;
    v14[0] = (*(v11[0] + 16))(v11, v6);
    v14[1] = v8;
    (*(v11[0] + 24))(v12, v11);
    if (v13 >= 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = v12[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, v14, "Failed to handle event - %s.", v9);
    if (*(v3 + 263) >= 0)
    {
      v10 = (v3 + 240);
    }

    else
    {
      v10 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v16, &v15, "%s", v10);
    if (v13 < 0)
    {
      operator delete(v12[0]);
    }
  }
}

void sub_1D0BB7460(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BB7480(uint64_t a1, raven::RavenMovingStateEstimatorActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B94708(v4, a3);
  raven::RavenMovingStateEstimatorActiveObject::HandleEvent(v3, v4);
}

uint64_t raven::RavenMovingStateEstimator::HandleEvent(raven::RavenMovingStateEstimator *this, const raven::TimeMarkEvent *a2)
{
  if (*(this + 217) == 1)
  {
    if (*(this + 216) == 1 || (*&v29 = (*(*a2 + 16))(a2), *(&v29 + 1) = v4, !raven::RavenMovingStateEstimator::Initialize(this, &v29)))
    {
      v6 = (*(*a2 + 16))(a2);
      v9 = v5;
      if (v6)
      {
        v10 = 1;
      }

      else
      {
        v10 = (*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
      }

      v11 = !v10;
      while (1)
      {
        if ((*&v29 = 0, *(&v29 + 1) = 0x3FA999999999999ALL, v12 = CNTimeSpan::operator+(this + 546, &v29, v7, v8), *v15.i64 = v13, v11) || !v12 && (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v6 == v12)
        {
          if (v9 <= v13)
          {
            return 0;
          }
        }

        else if (v6 <= v12)
        {
          return 0;
        }

        v27 = 0;
        v28 = 0x3FB999999999999ALL;
        *&v29 = CNTimeSpan::operator+(this + 546, &v27, v15, v14);
        *(&v29 + 1) = v16;
        v17 = raven::RavenMovingStateEstimator::Predict(this, &v29);
        if (v17)
        {
          break;
        }

        if (*(this + 136) == 1)
        {
          if ((*(this + 1544) & 1) == 0)
          {
            sub_1D0C42F28();
          }

          if (*(this + 1504))
          {
            sub_1D0BBA5C4(this + 4216, *(this + 9), this + 80);
          }
        }

        if (*(this + 4208) == 1)
        {
          v27 = (*(*(this + 194) + 16))(this + 1552);
          v28 = v18;
          *v8.i64 = CNTimeSpan::operator-(&v29, &v27, v19, v20);
          *v7.i64 = v21 + *v8.i64;
          if (v21 + *v8.i64 >= 1.25)
          {
            if (*(this + 4208) == 1)
            {
              *(this + 4208) = 0;
            }

            if (*(this + 208) == 1)
            {
              *(this + 208) = 0;
            }
          }

          else if (*(this + 208) == 1)
          {
            sub_1D0BBA5C4(this + 4216, *(this + 18), this + 152);
          }
        }

        if (*(this + 64) == 1)
        {
          *v8.i64 = CNTimeSpan::operator-(&v29, this + 6, v7, v8);
          *v7.i64 = v22 + *v8.i64;
          if (v22 + *v8.i64 >= 0.5)
          {
            *(this + 64) = 0;
          }

          else
          {
            sub_1D0BBA5C4(this + 4216, *this, this + 8);
          }
        }
      }

      if (cnprint::CNPrinter::GetLogLevel(v17) <= 1)
      {
        LOWORD(v27) = 12;
        v26 = 1;
        v24 = cnprint::CNLogFormatter::FormatGeneral(this + 4384, &v29, "RavenMovingStateEstimator,failed to predict");
        if (*(this + 4407) >= 0)
        {
          v25 = v24;
        }

        else
        {
          v25 = *(this + 548);
        }

        cnprint::CNPrinter::Print(&v27, &v26, "%s", v25);
      }
    }
  }

  return 0xFFFFFFFFLL;
}

double sub_1D0BB77E0(uint64_t a1, uint64_t a2, int a3)
{
  v3 = dword_1EE053968;
  *&result = 0x100000003;
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = v3;
  *(a1 + 12) = 1;
  *(a1 + 16) = v3;
  *(a1 + 20) = v3;
  *(a1 + 32) = a1 + 40;
  if (v3)
  {
    v5 = 0;
    v6 = qword_1EE053978;
    v7 = *(a2 + 20) * a3;
    v8 = *(a2 + 32);
    do
    {
      result = *(v8 + 8 * (*(v6 + 4 * v5) + v7));
      *(a1 + 40 + 8 * v5++) = result;
    }

    while (v3 != v5);
  }

  return result;
}

uint64_t sub_1D0BB7860(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    v4 = *(result + 12);
    *(a3 + 8) = 1;
    *(a3 + 12) = v4;
    *(a3 + 16) = v4;
    *(a3 + 20) = 1;
    *(a4 + 8) = 1;
    *(a4 + 12) = v4;
    *(a4 + 16) = v4;
    *(a4 + 20) = 1;
    if (v4)
    {
      v5 = 0;
      v6 = *(result + 32);
      v7 = *(a3 + 32);
      v8 = *(a4 + 32);
      do
      {
        v9 = *(result + 8);
        v10 = *(v6 + 8 * (v9 * v5));
        if (v9 < 2)
        {
          v11 = 0;
        }

        else
        {
          v11 = 0;
          v12 = v9 * v5;
          for (i = 1; i != v9; ++i)
          {
            if (*(v6 + 8 * (v12 + i)) > v10)
            {
              v11 = i;
              v10 = *(v6 + 8 * (v12 + i));
            }
          }
        }

        *(v7 + 8 * v5) = v10;
        *(v8 + 4 * v5++) = v11;
      }

      while (v5 < *(result + 12));
    }
  }

  else
  {
    v14 = *(result + 8);
    *(a3 + 8) = v14;
    *(a3 + 12) = 1;
    *(a3 + 16) = v14;
    *(a3 + 20) = v14;
    *(a4 + 8) = v14;
    *(a4 + 12) = 1;
    *(a4 + 16) = v14;
    *(a4 + 20) = v14;
    if (v14)
    {
      v15 = 0;
      v16 = *(result + 32);
      v17 = *(a3 + 32);
      v18 = *(a4 + 32);
      do
      {
        *(v17 + 8 * v15) = *(v16 + 8 * v15);
        *(v18 + 4 * v15++) = 0;
      }

      while (v15 < *(result + 8));
    }

    v19 = *(result + 12);
    if (v19 >= 2)
    {
      v20 = *(result + 32);
      v21 = *(a3 + 32);
      v22 = *(result + 8);
      v23 = 1;
      v24 = v22;
      do
      {
        if (v24)
        {
          v25 = 0;
          v26 = *(a4 + 32);
          v27 = v24 * v23;
          do
          {
            v28 = *(v20 + 8 * (v27 + v25));
            if (v28 > *(v21 + 8 * v25))
            {
              *(v21 + 8 * v25) = v28;
              *(v26 + 4 * v25) = v23;
              v22 = *(result + 8);
            }

            ++v25;
          }

          while (v25 < v22);
          v19 = *(result + 12);
          v24 = v22;
        }

        ++v23;
      }

      while (v23 < v19);
    }
  }

  return result;
}

void sub_1D0BB7AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
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

void sub_1D0BB7AD8(uint64_t a1, uint64_t *a2)
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
  sub_1D0BB7CC8(v4, a2);
}

void sub_1D0BB7C14(_Unwind_Exception *exception_object)
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

void sub_1D0BB7C6C(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0BB7AD8((a1 + 3), a2);
}

void sub_1D0BB7DC0(uint64_t a1, raven::RavenPositionContextEstimatorActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B94708(v4, a3);
  raven::RavenPositionContextEstimatorActiveObject::HandleEvent(v3, v4);
}

void raven::RavenPositionContextEstimatorActiveObject::HandleEvent(raven::RavenPositionContextEstimatorActiveObject *this, const raven::TimeMarkEvent *a2)
{
  if (*(this + 224))
  {
    raven::RavenPositionContextEstimator::HandleEvent((this + 320), a2);
    v6 = CNTimeSpan::operator-(a2 + 1, this + 29, v4, v5);
    v29[0] = v6;
    *&v29[1] = v7;
    if (v6 < 0 || (*v8.i64 = v7, v7 < 0.0))
    {
      v6 = CNTimeSpan::operator-(v29, v8, v9);
    }

    v20 = v6;
    *&v21 = v7;
    if (sub_1D0B8E6A8(&v20, this + 31))
    {
      v20 = &unk_1F4CEF568;
      v27 = 0;
      __asm { FMOV            V0.2D, #0.5 }

      v28 = _Q0;
      v15 = *(a2 + 56);
      v23 = *(a2 + 40);
      v24 = v15;
      v16 = *(a2 + 88);
      v25 = *(a2 + 72);
      v26 = v16;
      v17 = *(a2 + 24);
      v21 = *(a2 + 8);
      v22 = v17;
      if (!raven::RavenPositionContextEstimator::PopulateEvent((this + 320), &v20))
      {
        operator new();
      }

      *(this + 232) = *(a2 + 8);
    }
  }

  else
  {
    LOWORD(v30) = 12;
    LOBYTE(v29[0]) = 2;
    v20 = (*(*a2 + 16))(a2);
    *&v21 = v18;
    cnprint::CNLogFormatter::FormatGeneral(this + 264, &v20, "RavenPositionContextEstimatorActiveObject is not configured.");
    if (*(this + 287) >= 0)
    {
      v19 = this + 264;
    }

    else
    {
      v19 = *(this + 33);
    }

    cnprint::CNPrinter::Print(&v30, v29, "%s", v19);
  }
}

void sub_1D0BB81D8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 64);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  sub_1D0B7CAB8(v1);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenPositionContextEstimator::HandleEvent(raven::RavenPositionContextEstimator *this, const raven::TimeMarkEvent *a2)
{
  if (*(this + 1) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7[4] = v2;
  v7[5] = v3;
  if (*this)
  {
    return 0;
  }

  v7[0] = (*(*a2 + 16))(a2);
  v7[1] = v5;
  if (!raven::RavenPositionContextEstimator::Initialize(this, v7))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_1D0BB82E8(uint64_t a1, raven::RavenSignalEnvironmentActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B94708(v4, a3);
  raven::RavenSignalEnvironmentActiveObject::HandleEvent(v3, v4);
}

void raven::RavenSignalEnvironmentActiveObject::HandleEvent(raven::RavenSignalEnvironmentActiveObject *this, const raven::TimeMarkEvent *a2)
{
  if (*(this + 352) == 1)
  {
    v4 = (this + 360);
    v5 = *(this + 376);
    if (v5 != 1)
    {
      goto LABEL_6;
    }

    v6 = *(*(this + 29) + 3168);
    v26 = (*(*a2 + 16))(a2);
    *&v27 = v7;
    if ((*(this + 376) & 1) == 0)
    {
LABEL_30:
      sub_1D0C42F28();
    }

    v10 = CNTimeSpan::operator-(&v26, v4, v8, v9);
    if (v11 + v10 >= v6)
    {
      if (*(this + 352))
      {
LABEL_6:
        v27 = *(this + 248);
        v12 = *(this + 312);
        v30 = *(this + 296);
        v31 = v12;
        v32 = *(this + 328);
        v13 = *(this + 280);
        v28 = *(this + 264);
        v26 = &unk_1F4CEF5C8;
        v33 = *(this + 344);
        v29 = v13;
        if (v33 <= 6u && ((1 << v33) & 0x59) != 0 || (*(this + 472) != 1 ? (v14 = 0) : (v14 = *(this + 58) < *(*(this + 29) + 3176)), *(this + 456) != 1 ? (v15 = 0) : (v15 = *(this + 56) < *(*(this + 29) + 3184)), !v14 && !v15))
        {
          v29 = *(a2 + 40);
          v30 = *(a2 + 56);
          v31 = *(a2 + 72);
          v32 = *(a2 + 88);
          v27 = *(a2 + 8);
          v28 = *(a2 + 24);
          *v4 = v27;
          if (v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          LOWORD(v34) = 12;
          v25 = 2;
          v16 = (*(*a2 + 16))(a2);
          v18 = v17;
          sub_1D0B751F4(&__p, off_1E83D7D98[v33]);
          if (v24 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          v20 = -1.0;
          v21 = -1.0;
          if (*(this + 472) == 1)
          {
            v21 = *(this + 58);
          }

          if (*(this + 456) == 1)
          {
            v20 = *(this + 56);
          }

          cnprint::CNPrinter::Print(&v34, &v25, "SE hysteresis,t,%.1f,promoting from %s to DenseUrban,distance from DUC,%.1f,DU,%.1f", v18 + v16, p_p, v21, v20);
          if (v24 < 0)
          {
            operator delete(__p);
          }

          v33 = 3;
          v22 = *(this + 376);
          v29 = *(a2 + 40);
          v30 = *(a2 + 56);
          v31 = *(a2 + 72);
          v32 = *(a2 + 88);
          v27 = *(a2 + 8);
          v28 = *(a2 + 24);
          *v4 = v27;
          if (v22)
          {
LABEL_10:
            sub_1D0BB2D1C();
          }
        }

        *(this + 376) = 1;
        goto LABEL_10;
      }

      goto LABEL_30;
    }
  }
}

void sub_1D0BB86A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1D0BB8710(uint64_t a1, raven::RavenSolutionActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B94708(v5, a3);
  *&result = raven::RavenSolutionActiveObject::HandleEvent(v3, v5).n128_u64[0];
  return result;
}

__n128 raven::RavenSolutionActiveObject::HandleEvent(raven::RavenSolutionActiveObject *this, const raven::TimeMarkEvent *a2)
{
  std::mutex::lock((this + 11320));
  if (raven::RavenPredictor::HandleEvent((this + 3008), a2))
  {
    v18 = 12;
    v17 = 2;
    (*(*this + 16))(v15, this);
    v4 = v16;
    v5 = v15[0];
    (*(*a2 + 24))(__p, a2);
    v6 = v15;
    if (v4 < 0)
    {
      v6 = v5;
    }

    if (v14 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    cnprint::CNPrinter::Print(&v18, &v17, "Warning: %s failed to handle event of type %s.", v6, v7);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }
  }

  v8 = *(a2 + 24);
  *(this + 15) = *(a2 + 8);
  *(this + 16) = v8;
  v9 = *(a2 + 40);
  v10 = *(a2 + 56);
  v11 = *(a2 + 88);
  *(this + 19) = *(a2 + 72);
  *(this + 20) = v11;
  *(this + 17) = v9;
  *(this + 18) = v10;
  std::mutex::unlock((this + 11320));
  return result;
}

void sub_1D0BB889C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  std::mutex::unlock((v23 + v24));
  _Unwind_Resume(a1);
}

uint64_t raven::RavenPredictor::HandleEvent(raven::RavenPredictor *this, const raven::TimeMarkEvent *a2)
{
  if (*this)
  {
    v3 = (this + 8144);
    result = sub_1D0B7CF88(a2 + 1, this + 1018);
    if (result)
    {
      result = 0;
      v5 = *(a2 + 24);
      *v3 = *(a2 + 8);
      v3[1] = v5;
      v6 = *(a2 + 40);
      v7 = *(a2 + 56);
      v8 = *(a2 + 88);
      v3[4] = *(a2 + 72);
      v3[5] = v8;
      v3[2] = v6;
      v3[3] = v7;
    }
  }

  else
  {
    v10 = 12;
    v9 = 4;
    cnprint::CNPrinter::Print(&v10, &v9, "Error: RavenPredictor::HandleEvent(TimeMarkEvent) failed. Predictor is not configured.");
    return 0xFFFFFFFFLL;
  }

  return result;
}

cnprint::CNPrinter *sub_1D0BB8984(uint64_t a1, raven::RavenUserSpeedActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B94708(v5, a3);
  return raven::RavenUserSpeedActiveObject::HandleEvent(v3, v5);
}

cnprint::CNPrinter *raven::RavenUserSpeedActiveObject::HandleEvent(raven::RavenUserSpeedActiveObject *this, const raven::TimeMarkEvent *a2)
{
  result = (*(*a2 + 16))(a2);
  *&v25 = result;
  *(&v25 + 1) = v5;
  if (*(this + 1320) == 1)
  {
    v17 = (*(*(this + 150) + 16))();
    *&v18 = v6;
    result = CNTimeSpan::operator-(&v25, &v17, v7, v8);
    v10 = v9 + result;
    if (v10 <= 3.56)
    {
      if (v10 >= 0.0)
      {
        if (*(this + 1320))
        {
          v16 = 0;
          v17 = &unk_1F4CEF718;
          v21 = *(this + 1256);
          v11 = *(this + 1288);
          v22 = *(this + 1272);
          v23 = v11;
          v24 = *(this + 1304);
          memset(&v15[1], 0, 64);
          v15[0] = v25;
          v18 = v25;
          v19 = 0u;
          v22 = 0u;
          v21 = 0u;
          v20 = 0u;
          *&v23 = 0;
          *(&v23 + 1) = 0x7FF8000000000000;
          if (!cnprint::CNPrinter::GetLogLevel(result))
          {
            LOWORD(v15[0]) = 12;
            v14 = 0;
            v12 = (*(*a2 + 16))(a2);
            cnprint::CNPrinter::Print(v15, &v14, "t,%.3lf,UserSpeedAO: UserSpeedEvent,age,%.2lf", v13 + v12, v10);
          }

          sub_1D0D48BB8(this);
        }

        sub_1D0C42F28();
      }
    }

    else if (*(this + 1320) == 1)
    {
      *(this + 1320) = 0;
    }
  }

  return result;
}

double sub_1D0BB8BAC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B99264(v10, a3);
  v4 = v19;
  *(v3 + 568) = v18;
  *(v3 + 584) = v4;
  *(v3 + 600) = v20;
  *(v3 + 616) = v21;
  v5 = v15;
  *(v3 + 504) = v14;
  *(v3 + 520) = v5;
  v6 = v17;
  *(v3 + 536) = v16;
  *(v3 + 552) = v6;
  v7 = v11;
  *(v3 + 440) = *&v10[8];
  *(v3 + 456) = v7;
  result = *&v12;
  v9 = v13;
  *(v3 + 472) = v12;
  *(v3 + 488) = v9;
  return result;
}

void sub_1D0BB8C34(uint64_t a1, raven::RavenPositionContextEstimatorActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B99264(v4, a3);
  raven::RavenPositionContextEstimatorActiveObject::HandleEvent(v3, v4);
}

uint64_t raven::RavenPositionContextEstimator::HandleEvent(raven::RavenPositionContextEstimator *this, const raven::ActivityStateEvent *a2)
{
  if (*this != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v2;
  v14 = v3;
  v11 = (*(*a2 + 16))(a2);
  v12 = v6;
  v10[0] = *(a2 + 104);
  raven::RavenPositionContextEstimator::HandleEvidence(this, v10, v7, v8);
  return 0;
}

void raven::RavenPositionContextEstimatorActiveObject::HandleEvent(raven::RavenPositionContextEstimatorActiveObject *this, const raven::ActivityStateEvent *a2)
{
  if (*(this + 224))
  {
    v3 = (this + 320);

    raven::RavenPositionContextEstimator::HandleEvent(v3, a2);
  }

  else
  {
    v8 = 12;
    v7 = 2;
    v6[0] = (*(*a2 + 16))(a2);
    v6[1] = v4;
    cnprint::CNLogFormatter::FormatGeneral(this + 264, v6, "RavenPositionContextEstimatorActiveObject is not configured.");
    if (*(this + 287) >= 0)
    {
      v5 = this + 264;
    }

    else
    {
      v5 = *(this + 33);
    }

    cnprint::CNPrinter::Print(&v8, &v7, "%s", v5);
  }
}

void raven::RavenPositionContextEstimator::HandleEvidence(uint64_t a1, uint64_t a2, int8x16_t a3, int8x16_t a4)
{
  v6 = CNTimeSpan::operator-((a2 + 8), (a1 + 152), a3, a4);
  v16[0] = v6;
  *&v16[1] = v7;
  if (v6 < 0 || (*v8.i64 = v7, v7 < 0.0))
  {
    v6 = CNTimeSpan::operator-(v16, v8, v9);
    v8.i64[0] = v10;
  }

  if ((v6 || (v8.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v6 != 10)
  {
    if (v6 < 11)
    {
      goto LABEL_16;
    }
  }

  else if (*v8.i64 <= 0.0)
  {
    goto LABEL_16;
  }

  if (cnprint::CNPrinter::GetLogLevel(v6) <= 1)
  {
    v15 = 12;
    v14 = 1;
    v11 = cnprint::CNLogFormatter::FormatGeneral((a1 + 424), "RavenPositionContextEstimator::HandleEvidence(ActivityStateEvidence),last estimate is too old, re-initialize the HMM");
    if (*(a1 + 447) >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = *(a1 + 424);
    }

    cnprint::CNPrinter::Print(&v15, &v14, "%s", v12);
  }

  *(a1 + 400) = 0;
  *(a1 + 408) = *(*(a1 + 8) + 2480);
  raven::RavenPositionContextEstimator::InitializeHiddenMarkovModel(a1);
LABEL_16:
  if (*a2 != 5 || *(a1 + 176) == 1 && *(a1 + 168) >= 5.0)
  {
    raven::RavenPositionContextEstimator::HmmPredictAndUpdate(a1, a2);
    if (!v13)
    {

      raven::RavenPositionContextEstimator::UpdatePositionContextStateEvent(a1);
    }
  }
}

{
  v6 = CNTimeSpan::operator-((a2 + 16), (a1 + 152), a3, a4);
  v16[0] = v6;
  *&v16[1] = v7;
  if (v6 < 0 || (*v8.i64 = v7, v7 < 0.0))
  {
    v6 = CNTimeSpan::operator-(v16, v8, v9);
    v8.i64[0] = v10;
  }

  if ((v6 || (v8.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v6 != 10)
  {
    if (v6 < 11)
    {
      goto LABEL_16;
    }
  }

  else if (*v8.i64 <= 0.0)
  {
    goto LABEL_16;
  }

  if (cnprint::CNPrinter::GetLogLevel(v6) <= 1)
  {
    v15 = 12;
    v14 = 1;
    v11 = cnprint::CNLogFormatter::FormatGeneral((a1 + 424), "RavenPositionContextEstimator::HandleEvidence(AvailabilityEvidence),last estimate is too old, re-initialize the HMM");
    if (*(a1 + 447) >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = *(a1 + 424);
    }

    cnprint::CNPrinter::Print(&v15, &v14, "%s", v12);
  }

  *(a1 + 400) = 0;
  *(a1 + 408) = *(*(a1 + 8) + 2480);
  raven::RavenPositionContextEstimator::InitializeHiddenMarkovModel(a1);
LABEL_16:
  raven::RavenPositionContextEstimator::HmmPredictAndUpdate(a1, a2);
  if (!v13)
  {

    raven::RavenPositionContextEstimator::UpdatePositionContextStateEvent(a1);
  }
}

{
  v6 = CNTimeSpan::operator-((a2 + 8), (a1 + 152), a3, a4);
  v16[0] = v6;
  *&v16[1] = v7;
  if (v6 < 0 || (*v8.i64 = v7, v7 < 0.0))
  {
    v6 = CNTimeSpan::operator-(v16, v8, v9);
    v8.i64[0] = v10;
  }

  if ((v6 || (v8.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v6 != 10)
  {
    if (v6 < 11)
    {
      goto LABEL_16;
    }
  }

  else if (*v8.i64 <= 0.0)
  {
    goto LABEL_16;
  }

  if (cnprint::CNPrinter::GetLogLevel(v6) <= 1)
  {
    v15 = 12;
    v14 = 1;
    v11 = cnprint::CNLogFormatter::FormatGeneral((a1 + 424), "RavenPositionContextEstimator::HandleEvidence(GnssEvidence),last estimate is too old, re-initialize the HMM");
    if (*(a1 + 447) >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = *(a1 + 424);
    }

    cnprint::CNPrinter::Print(&v15, &v14, "%s", v12);
  }

  *(a1 + 400) = 0;
  *(a1 + 408) = *(*(a1 + 8) + 2480);
  raven::RavenPositionContextEstimator::InitializeHiddenMarkovModel(a1);
LABEL_16:
  raven::RavenPositionContextEstimator::HmmPredictAndUpdate(a1, a2);
  if (!v13)
  {

    raven::RavenPositionContextEstimator::UpdatePositionContextStateEvent(a1);
  }
}

uint64_t raven::RavenMovingStateEstimator::GetMovingStateEvent(raven::RavenMovingStateEstimator *this, raven::MovingStateEvent *a2)
{
  if (*(this + 217) != 1 || *(this + 216) != 1)
  {
    return 0;
  }

  v42[5] = v2;
  v42[6] = v3;
  v5 = 72;
  if (!*(this + 1088))
  {
    v5 = 8;
  }

  v40 = 0x100000003;
  v38 = &unk_1F4CDEB28;
  v39 = xmmword_1D0E7DCC0;
  v41 = v42;
  sub_1D0B894B0(&v38, this + v5 + 4216);
  v6 = v41;
  v7 = *v41;
  if ((*v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v8 = v41[1];
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v9 = v41[2];
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v10 = 0.0;
  if (v7 <= 1.0)
  {
    v11 = *v41;
  }

  else
  {
    v11 = 1.0;
  }

  if (v7 >= 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  if (v8 <= 1.0)
  {
    v13 = v41[1];
  }

  else
  {
    v13 = 1.0;
  }

  if (v8 >= 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  *v41 = v12;
  v6[1] = v14;
  if (v9 >= 0.0)
  {
    v10 = 1.0;
    if (v9 <= 1.0)
    {
      v10 = v9;
    }
  }

  v6[2] = v10;
  v15 = DWORD1(v39);
  if (DWORD1(v39))
  {
    v16 = 0;
    v17 = v39;
    v18 = 1;
    do
    {
      v19 = v6[(v17 * v16)];
      v20 = v18;
      v21 = v17 - 1;
      if (v17 >= 2)
      {
        do
        {
          v19 = v19 + v6[v20++];
          --v21;
        }

        while (v21);
      }

      v37[v16++] = v19;
      v18 += v17;
    }

    while (v16 != v15);
    v22 = v37[0] + -1.0;
  }

  else
  {
    v22 = NAN;
  }

  if (fabs(v22) > 0.000000015)
  {
    return 0;
  }

  v35 = 0x100000001;
  v33 = &unk_1F4CDF418;
  *&v24 = 0x100000001;
  *(&v24 + 1) = 0x100000001;
  v34 = v24;
  v36 = v37;
  v30 = 0x100000001;
  v28 = &unk_1F4CDF460;
  v29 = v24;
  v31 = &v32;
  sub_1D0BBAD9C(&v38, &v33, &v28);
  if (*v31 <= 2u)
  {
    *(a2 + 104) = *v31 + 1;
  }

  v25 = v41;
  v26 = *v41;
  *(a2 + 15) = *v41;
  v27 = v25[1];
  *(a2 + 16) = v27;
  *(a2 + 17) = 1.0 - v26 - v27;
  *(a2 + 14) = 0;
  return 1;
}