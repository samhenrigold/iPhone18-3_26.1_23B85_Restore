uint64_t **sub_1D0C160E0(float *a1, unsigned __int8 a2, _BYTE **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % *(a1 + 1);
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 16) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::~NrEstimatorHealth(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *this)
{
  *this = &unk_1F4CD6978;
  CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::SharedDtor(this);
  sub_1D0B8CD0C(this + 14);
  sub_1D0B8CD0C(this + 11);
  sub_1D0B8CD0C(this + 8);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::~NrEstimatorHealth(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::SharedDtor(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *this)
{
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenOutput_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t raven::RavenSupervisor::GetRavenSolution(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (COERCE__INT64(fabs(*(a2 + 8) + *a2)) < 0x7FF0000000000000)
  {
    v5 = a1 + 168872;

    return raven::RavenSolutionActiveObject::GetRavenSolution(v5, a2, a3);
  }

  else
  {
    sub_1D0BAE168(a3);
    return 0xFFFFFFFFLL;
  }
}

uint64_t raven::RavenSolutionActiveObject::GetRavenSolution(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (COERCE__INT64(fabs(*(a2 + 8) + *a2)) < 0x7FF0000000000000)
  {
    std::mutex::lock((a1 + 11320));
    if (raven::RavenPredictor::Predict(a1 + 3008, a2, a3, v7, v8))
    {
      memcpy((a3 + 8), (a1 + 360), 0xA51uLL);
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
      raven::RavenSolutionActiveObject::WriteRavenSolutionToProtobuf(a1, a3);
      v4 = 0;
    }

    std::mutex::unlock((a1 + 11320));
  }

  else
  {
    sub_1D0BAE168(a3);
    return 0xFFFFFFFFLL;
  }

  return v4;
}

uint64_t raven::RavenPredictor::Predict(uint64_t a1, int8x16_t *a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  if ((*a1 & 1) == 0)
  {
    LOWORD(v48) = 12;
    v57.i8[0] = 4;
    cnprint::CNPrinter::Print(&v48, &v57, "RavenPredictor::Predict() failed. Predictor is not configured.");
    return 0xFFFFFFFFLL;
  }

  if ((*(a1 + 1) & 1) == 0)
  {
    LOWORD(v48) = 12;
    v57.i8[0] = 2;
    cnprint::CNPrinter::Print(&v48, &v57, "RavenPredictor::Predict() failed. Predictor is not initialized.");
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 5688))
  {
    LOWORD(v48) = 12;
    v57.i8[0] = 4;
    cnprint::CNPrinter::Print(&v48, &v57, "RavenPredictor::Predict() failed. Current raven estimator type is not initialized.");
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 5689) != 2)
  {
    LOWORD(v48) = 12;
    v57.i8[0] = 2;
    cnprint::CNPrinter::Print(&v48, &v57, "RavenPredictor::Predict() failed. Current raven solution is not healthy.");
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 5688) != 4)
  {
    LOWORD(v48) = 12;
    v57.i8[0] = 4;
    cnprint::CNPrinter::Print(&v48, &v57, "RavenPredictor::Predict() failed. Expected raven estimator type %u, but received %u.");
    return 0xFFFFFFFFLL;
  }

  if ((*(a1 + 6744) & 1) == 0)
  {
    LOWORD(v48) = 12;
    v57.i8[0] = 4;
    cnprint::CNPrinter::Print(&v48, &v57, "RavenPredictor::Predict() failed. Current user position is not valid.");
    return 0xFFFFFFFFLL;
  }

  v8 = CNTimeSpan::operator-(a2, (a1 + 6648), a4, a5);
  v12 = v8;
  v63[0] = v8;
  *&v63[1] = v9;
  v13 = v9;
  v15 = v9 < 0.0 || v8 < 0;
  *v10.i64 = v9;
  if (v15)
  {
    v8 = CNTimeSpan::operator-(v63, v10, v11);
    v10.i64[0] = v16;
  }

  *v10.i64 = *v10.i64 + v8;
  *v11.i64 = fabs(*(*(a1 + 8) + 3488));
  if (*v10.i64 > *v11.i64)
  {
    LOWORD(v48) = 12;
    v57.i8[0] = 4;
    cnprint::CNPrinter::Print(&v48, &v57, "RavenPredictor::Predict() failed. Exceeded maximum prediction duration. Given input time: %.3lf (s). Current raven solution time: %.3lf (s)");
    return 0xFFFFFFFFLL;
  }

  if (v15)
  {
    v12 = CNTimeSpan::operator-(v63, v10, v11);
    v13 = v18;
  }

  if (fabs(v13 + v12) < 2.22044605e-16)
  {
    memcpy((a3 + 8), (a1 + 5488), 0xA51uLL);
    return 0;
  }

  sub_1D0BAE168(a3);
  memcpy((a3 + 104), (a1 + 5584), 0x428uLL);
  memcpy((a3 + 2032), (a1 + 7512), 0x269uLL);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  *&v62 = 0;
  *(&v62 + 1) = 0x7FF8000000000000;
  v19 = *a2;
  v57 = *a2;
  v58 = 0u;
  if (*(a1 + 7464) != 1)
  {
    goto LABEL_31;
  }

  v50 = 0x10000001CLL;
  v49 = xmmword_1D0E843A0;
  v48 = &unk_1F4CE0A20;
  v51 = v52;
  v41 = 0x100000002;
  v39 = &unk_1F4CE0220;
  v40 = xmmword_1D0E83F60;
  v42 = v43;
  v47 = *(a1 + 6648);
  *&v52[152] = *(a1 + 7472);
  if (sub_1D0C16DB8(a2, &v47, &v48, &v39))
  {
    v45.i16[0] = 12;
    v44.i8[0] = 2;
    cnprint::CNPrinter::Print(&v45, &v44, "RavenPNTEstimatorHelper::IntegrateDeviceOscillatorStateEstimate failed to predict clock states in RavenPredictor::Predict().");
LABEL_31:
    *(a3 + 1992) = *(a1 + 7472);
    v21 = *(a1 + 7488);
    *(a3 + 2008) = v21;
    v21.i64[0] = *(a1 + 7504);
    *(a3 + 2024) = v21.i64[0];
    raven::PopulateAllTimeFields(&v57, a1 + 8144, v21, v19);
    goto LABEL_32;
  }

  v35 = v42;
  v20.i64[0] = *v42;
  *(a3 + 1992) = *v42;
  *(a3 + 2000) = v35[1];
  v36 = *(a1 + 7488);
  *(a3 + 2008) = v36;
  *(a3 + 2024) = *(a1 + 7504);
  *v36.i64 = sqrt(*v36.i64);
  v46 = v36.i64[0];
  v44 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v44, 0, v20, v36);
  v45 = v44;
  raven::PopulateAllTimeFields(&v57, a1 + 8144, &v45, &v46, v44, v37);
LABEL_32:
  v22 = *(a1 + 6824);
  if (v22 == 1 && *(a1 + 6825) == 1)
  {
    v50 = 0x10000001CLL;
    v49 = xmmword_1D0E843A0;
    v48 = &unk_1F4CE0A20;
    v51 = v52;
    v41 = 0x100000007;
    v39 = &unk_1F4CE0BB0;
    v40 = xmmword_1D0E84420;
    v42 = v43;
    v47 = *(a1 + 6648);
    v53 = *(a1 + 6752);
    v54 = *(a1 + 6768);
    v55 = *(a1 + 6832);
    v56 = *(a1 + 6848);
    if (sub_1D0C50CB8(a2, &v47, &v48, 0, &v39))
    {
      v45.i16[0] = 12;
      v44.i8[0] = 2;
      cnprint::CNPrinter::Print(&v45, &v44, "RavenPNTEstimatorHelper::IntegrateUserStateEstimate failed to predict user states in RavenPredictor::Predict().");
      return 0xFFFFFFFFLL;
    }

    *(a3 + 1264) = 1;
    *(a3 + 1344) = 257;
    v38 = v42;
    *(a3 + 1272) = *v42;
    *(a3 + 1280) = v38[1];
    *(a3 + 1288) = v38[2];
    *(a3 + 1296) = *(a1 + 6776);
    *(a3 + 1312) = *(a1 + 6792);
    *(a3 + 1328) = *(a1 + 6808);
    *(a3 + 1352) = v38[3];
    *(a3 + 1360) = v38[4];
    *(a3 + 1368) = v38[5];
    *(a3 + 1376) = v38[6];
    *(a3 + 1384) = *(a1 + 6864);
    *(a3 + 1400) = *(a1 + 6880);
    *(a3 + 1416) = *(a1 + 6896);
    *(a3 + 1432) = *(a1 + 6912);
    *(a3 + 1448) = *(a1 + 6928);
  }

  else
  {
    *(a3 + 1264) = 1;
    *(a3 + 1272) = *(a1 + 6752);
    *(a3 + 1288) = *(a1 + 6768);
    *(a3 + 1304) = *(a1 + 6784);
    *(a3 + 1320) = *(a1 + 6800);
    *(a3 + 1336) = *(a1 + 6816);
    if (v22)
    {
      *(a3 + 1344) = 1;
      *(a3 + 1352) = *(a1 + 6832);
      *(a3 + 1384) = *(a1 + 6864);
    }
  }

  result = 0;
  v23 = v59;
  v24 = v60;
  v25 = v59;
  v26 = v60;
  *(a3 + 40) = v59;
  *(a3 + 56) = v24;
  v28 = v61;
  v27 = v62;
  *(a3 + 72) = v61;
  *(a3 + 1232) = v28;
  v29 = v61;
  v30 = v62;
  *(a3 + 88) = v27;
  *(a3 + 1200) = v23;
  *(a3 + 1216) = v24;
  v32 = v57;
  v31 = v58;
  *(a3 + 8) = v57;
  *(a3 + 1248) = v27;
  *(a3 + 1168) = v32;
  v33 = v57;
  v34 = v58;
  *(a3 + 24) = v31;
  *(a3 + 1184) = v31;
  *(a3 + 208) = 5;
  *(a3 + 144) = v25;
  *(a3 + 160) = v26;
  *(a3 + 176) = v29;
  *(a3 + 192) = v30;
  *(a3 + 112) = v33;
  *(a3 + 128) = v34;
  return result;
}

uint64_t sub_1D0C16DB8(void *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v26 = 0x1400000013;
  v35 = 0x100000002;
  v33 = &unk_1F4CE0EA8;
  v34 = xmmword_1D0E83F60;
  v36 = &v37;
  v37 = 0x1400000013;
  v32 = *a2;
  v6.i64[1] = *(&v32 + 1);
  v29 = 0x100000002;
  v28 = xmmword_1D0E83F60;
  v27 = &unk_1F4CE0220;
  v30 = &v31;
  v6.i64[0] = 0x200000002;
  v24 = 0x200000002;
  v23 = xmmword_1D0E83F70;
  v22 = &unk_1F4CE0268;
  v25 = &v26;
  v19 = 0x200000002;
  v18 = xmmword_1D0E83F70;
  v17 = &unk_1F4CE0268;
  v20 = &v21;
  v7 = CNTimeSpan::operator-(a1, &v32, v6, xmmword_1D0E83F70);
  v16 = v8 + v7;
  sub_1D0C17188(a3, &v33, v15);
  v12 = 0x100000002;
  v10 = &unk_1F4CE0220;
  v11 = xmmword_1D0E83F60;
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  if (sub_1D0C16F88(v15, &v10, &v16, &v27, &v22, &v17))
  {
    return 0xFFFFFFFFLL;
  }

  sub_1D0B894B0(a4, &v27);
  return 0;
}

uint64_t sub_1D0C16F88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  if (v6 <= v7)
  {
    v8 = *(a1 + 12);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9 && v8 == 2;
  if (v10 && ((v12 = *(a2 + 8), v13 = *(a2 + 12), v12 <= v13) ? (v14 = *(a2 + 12)) : (v14 = *(a2 + 8)), v12 ? (v15 = v13 == 0) : (v15 = 1), !v15 ? (v16 = v14 == 2) : (v16 = 0), v16))
  {
    v21 = *a3;
    v34 = 0x200000002;
    v32 = &unk_1F4CE0268;
    v33 = xmmword_1D0E83F70;
    v35 = v36;
    v36[0] = 0x3FF0000000000000;
    v36[1] = 0;
    v36[3] = 0x3FF0000000000000;
    v36[2] = v21;
    v29 = 0x100000002;
    v27 = &unk_1F4CE0220;
    v28 = xmmword_1D0E83F60;
    v30 = &v31;
    sub_1D0B89390(&v32, a1, &v27);
    v24 = 0x100000002;
    v22 = &unk_1F4CE0220;
    v23 = xmmword_1D0E83F60;
    v25 = v26;
    sub_1D0B88838(&v27, a2, &v22);
    sub_1D0B894B0(a4, &v22);
    sub_1D0B894B0(a5, &v32);
    v24 = 0x200000002;
    v22 = &unk_1F4CE0268;
    v23 = xmmword_1D0E83F70;
    v26[1] = 0;
    v26[2] = 0;
    v25 = v26;
    v26[0] = 0x3FF0000000000000;
    v26[3] = 0x3FF0000000000000;
    sub_1D0B894B0(a6, &v22);
    return 0;
  }

  else
  {
    LOWORD(v32) = 12;
    LOBYTE(v22) = 4;
    cnprint::CNPrinter::Print(&v32, &v22, "f_TwoStateOscillator called with inadequate matrices.", a4, a5, a6);
    return 0xFFFFFFFFLL;
  }
}

double sub_1D0C17188@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 12);
  v5 = (v4 * v3);
  *&result = 0x100000002;
  *(a3 + 24) = 0x100000002;
  *a3 = &unk_1F4CE0220;
  *(a3 + 8) = v3;
  *(a3 + 12) = v4;
  *(a3 + 16) = v5;
  *(a3 + 20) = v3;
  v7 = (a3 + 40);
  *(a3 + 32) = a3 + 40;
  if (v5)
  {
    v8 = *(a2 + 32);
    v9 = *(a1 + 32);
    do
    {
      v10 = *v8++;
      result = *(v9 + 8 * v10);
      *v7++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
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
      if (TagFallback >> 3 > 4)
      {
        if (TagFallback >> 3 > 6)
        {
          if (v7 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v15 = *(a2 + 1);
              v11 = *(a2 + 2);
              goto LABEL_69;
            }
          }

          else if (v7 == 8 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_77;
          }
        }

        else if (v7 == 5)
        {
          if (v8 == 5)
          {
            goto LABEL_61;
          }
        }

        else if (v7 == 6 && v8 == 5)
        {
          goto LABEL_65;
        }

        goto LABEL_34;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if (v8 == 5)
          {
            goto LABEL_53;
          }
        }

        else if (v7 == 4 && v8 == 5)
        {
          goto LABEL_57;
        }

        goto LABEL_34;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_34;
      }

      v28 = 0;
      v13 = *(a2 + 1);
      if (v13 >= *(a2 + 2) || (v14 = *v13, (v14 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
        if (!result)
        {
          return result;
        }

        v14 = v28;
      }

      else
      {
        *(a2 + 1) = v13 + 1;
      }

      if (v14 <= 6)
      {
        *(this + 10) |= 1u;
        *(this + 2) = v14;
      }

      v17 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v17 < v9 && *v17 == 16)
      {
        v10 = v17 + 1;
        *(a2 + 1) = v10;
LABEL_45:
        v28 = 0;
        if (v10 >= v9 || (v18 = *v10, (v18 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
          if (!result)
          {
            return result;
          }

          v18 = v28;
          v19 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v19 = v10 + 1;
          *(a2 + 1) = v19;
        }

        *(this + 3) = v18;
        *(this + 10) |= 2u;
        if (v19 < v9 && *v19 == 29)
        {
          *(a2 + 1) = v19 + 1;
LABEL_53:
          v28 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v28) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = v28;
          *(this + 10) |= 4u;
          v20 = *(a2 + 1);
          if (v20 < *(a2 + 2) && *v20 == 37)
          {
            *(a2 + 1) = v20 + 1;
LABEL_57:
            v28 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v28) & 1) == 0)
            {
              return 0;
            }

            *(this + 5) = v28;
            *(this + 10) |= 8u;
            v21 = *(a2 + 1);
            if (v21 < *(a2 + 2) && *v21 == 45)
            {
              *(a2 + 1) = v21 + 1;
LABEL_61:
              v28 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v28) & 1) == 0)
              {
                return 0;
              }

              *(this + 6) = v28;
              *(this + 10) |= 0x10u;
              v22 = *(a2 + 1);
              if (v22 < *(a2 + 2) && *v22 == 53)
              {
                *(a2 + 1) = v22 + 1;
LABEL_65:
                v28 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v28) & 1) == 0)
                {
                  return 0;
                }

                *(this + 7) = v28;
                *(this + 10) |= 0x20u;
                v23 = *(a2 + 1);
                v11 = *(a2 + 2);
                if (v23 < v11 && *v23 == 56)
                {
                  v15 = v23 + 1;
                  *(a2 + 1) = v15;
LABEL_69:
                  v28 = 0;
                  if (v15 >= v11 || (v24 = *v15, (v24 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
                    if (!result)
                    {
                      return result;
                    }

                    v24 = v28;
                    v25 = *(a2 + 1);
                    v11 = *(a2 + 2);
                  }

                  else
                  {
                    v25 = v15 + 1;
                    *(a2 + 1) = v25;
                  }

                  *(this + 32) = v24 != 0;
                  *(this + 10) |= 0x40u;
                  if (v25 < v11 && *v25 == 64)
                  {
                    v12 = v25 + 1;
                    *(a2 + 1) = v12;
LABEL_77:
                    v28 = 0;
                    if (v12 >= v11 || (v26 = *v12, (v26 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28);
                      if (!result)
                      {
                        return result;
                      }

                      v26 = v28;
                      v27 = *(a2 + 1);
                      v11 = *(a2 + 2);
                    }

                    else
                    {
                      v27 = v12 + 1;
                      *(a2 + 1) = v27;
                    }

                    *(this + 33) = v26 != 0;
                    *(this + 10) |= 0x80u;
                    if (v27 == v11 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
          }
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_45;
    }

LABEL_34:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

BOOL raven::RavenSolutionPostprocessor::Update_EHE_Floor_Filter(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = (a1 + 1352);
  v9 = *(a2 + 104);
  v30 = v9 - *(a1 + 1352);
  v10 = *(a2 + 112);
  v31 = vsubq_f64(v10, *(a1 + 1360));
  sub_1D0BD2CA4(v29, v9, v10.f64[0], v10.f64[1]);
  v11 = sub_1D0BED7A0(v29, &v30, v28.f64);
  if (v12)
  {
    v13 = sqrt(vaddvq_f64(vmulq_f64(v28, v28)));
    if (fabs(*(a3 + 1040) + -1.0) >= 2.22044605e-16)
    {
      v15 = *(a2 + 120);
      *v8 = *(a2 + 104);
      *(a1 + 1368) = v15;
      v16 = *(a1 + 1344);
      v17 = sqrt(a4);
      if (v16)
      {
        v18 = *(a1 + 1336);
        if (v17 < 100.0 || v16 < 5 || v18 >= 40.0)
        {
          v21 = v13 + -6.0;
          if (v21 >= 0.0)
          {
            v22 = v21;
          }

          else
          {
            v22 = 0.0;
          }

          v23 = v22 * 0.0714285714 * (v16 + -1.0) + 1.0;
          if (v16 + 1 < 0x14)
          {
            v24 = v16 + 1;
          }

          else
          {
            v24 = 20;
          }

          v25 = v23 / v24;
          if (v25 > 1.0)
          {
            v25 = 1.0;
          }

          *(a1 + 1336) = v18 + v25 * (v17 - v18);
          *(a1 + 1344) = vcvtad_u64_f64(1.0 / v25);
        }

        return 1;
      }

      else if (v17 <= 100.0)
      {
        result = 1;
        *(a1 + 1344) = 1;
        *(a1 + 1336) = v17;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return *(a1 + 1344) != 0;
    }
  }

  else
  {
    v27 = 12;
    v26 = 4;
    cnprint::CNPrinter::Print(&v27, &v26, "Update_EHE_Floor_Filter: Failed to rotate delta_ECEF vector from last RavenSolution.", v11);
    result = 0;
    *(a1 + 1336) = 0x7FF8000000000000;
    *(a1 + 1344) = 0;
    *v8 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 1368) = 0x7FF8000000000000;
  }

  return result;
}

void raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::Location *a2, raven::PositionEvent *a3, double a4, int8x16_t a5)
{
  v45[1] = 0;
  v45[2] = 0;
  v45[0] = &unk_1F4CEF748;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v56 = 0;
  v57 = 0;
  v55 = 0x7FF8000000000000;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v63 = 0;
  v62 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v67 = 0x7FF8000000000000;
  v68 = 0;
  v69 = 0;
  v70 = vdupq_n_s64(0x7FF8000000000000uLL);
  v71 = v70;
  v72 = v70;
  v73 = v70;
  v74 = 0x7FF8000000000000;
  v75 = 0;
  v76 = v70;
  v77 = v70;
  v78 = v70;
  v79 = v70;
  v9 = v70;
  v80 = 0x7FF8000000000000;
  if (raven::ConvertProtobufToPositionEvent(a2, v45, a3, v70, a5))
  {
    sub_1D0C185C4(this);
  }

  v10[1] = 0;
  v10[2] = 0;
  v10[0] = &unk_1F4CEF6E8;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0x7FF8000000000000;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0x7FF8000000000000;
  v33 = 0;
  v34 = v9;
  v35 = v9;
  v36 = v9;
  v37 = v9;
  v38 = 0x7FF8000000000000;
  v39 = 0;
  v40 = v9;
  v41 = v9;
  v42 = v9;
  v43 = v9;
  v44 = 0x7FF8000000000000;
  if (raven::ConvertProtobufToVelocityEvent(a2, v45, v10, v7, v9, v8))
  {
    sub_1D0C1B78C(&v81, v10);
  }
}

void sub_1D0C179FC(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 56);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  if (v1)
  {
    sub_1D0B7CAB8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::ConvertProtobufToPositionEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::Location *a2, raven::PositionEvent *a3, int8x16_t a4, int8x16_t a5)
{
  v50[0] = 0;
  v50[1] = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0x7FF8000000000000;
  if ((*(this + 100) & 1) == 0)
  {
    goto LABEL_25;
  }

  v7 = *(this + 1);
  if (!v7)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 8);
  }

  v8 = raven::ConvertProtobufToRavenTime(v7, v50, 0, a4, a5);
  if (!v8)
  {
    goto LABEL_25;
  }

  v11 = *(this + 3);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v8);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
  }

  if ((*(v11 + 366) & 0x10) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v8) <= 1)
    {
      v48.i16[0] = 12;
      v49 = 1;
      cnprint::CNPrinter::Print(&v48, &v49, "location private does not have mach continuous time for position event");
    }

LABEL_25:
    v22 = 0;
    return v22 & 1;
  }

  v12 = *(this + 3);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v8);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
  }

  v9.i64[0] = *(v12 + 128);
  v48 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v48, 0, v9, v10);
  v13 = v48;
  *(a2 + 8) = v48;
  v15 = raven::PopulateAllTimeFields(a2 + 8, v50, v13, v14);
  v16 = *(this + 2);
  if (!v16)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
    v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
  }

  if ((*(v16 + 153) & 0x10) != 0)
  {
    v18 = *(this + 2);
    if (!v18)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v15 = raven::ConvertProtobufToLocationType(*(v18 + 104));
    *(a2 + 200) = v15;
    if ((v15 - 12) < 2)
    {
      goto LABEL_25;
    }

    if (v15 != 9 && v15 != 1)
    {
      goto LABEL_24;
    }

    v21 = *(this + 3);
    if (!v21)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
    }

    if ((*(v21 + 364) & 8) != 0)
    {
      v24 = *(this + 3);
      if (!v24)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
        v24 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
      }

      v19.i64[0] = *(v24 + 32);
      v48 = 0uLL;
      CNTimeSpan::SetTimeSpan(&v48, 0, v19, v20);
      *(a2 + 2) = v48;
      v17 = 1;
    }

    else
    {
LABEL_24:
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
    *(a2 + 200) = 0;
  }

  *(a2 + 24) = v17;
  *(a2 + 104) = *(a2 + 8);
  *(a2 + 120) = *(a2 + 24);
  *(a2 + 184) = *(a2 + 88);
  *(a2 + 168) = *(a2 + 72);
  *(a2 + 152) = *(a2 + 56);
  *(a2 + 136) = *(a2 + 40);
  v25 = *(this + 2);
  if (!v25)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
    v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
  }

  if (*(v25 + 16) <= 0.0)
  {
    goto LABEL_36;
  }

  v26 = *(this + 2);
  if (!v26)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
    v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
  }

  if ((*(v26 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_36:
    *(a2 + 201) = 0;
    *(a2 + 26) = 0;
    *(a2 + 27) = 0;
    goto LABEL_37;
  }

  v36 = *(this + 2);
  if (!v36)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
    v36 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
  }

  v37 = *(v36 + 8);
  if (!v37)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
    v37 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 8);
  }

  if (fabs(*(v37 + 8)) >= 2.22044605e-16)
  {
    *(a2 + 26) = 0;
    v41 = (a2 + 208);
    *(a2 + 201) = 1;
    *(a2 + 27) = 0;
LABEL_67:
    v42 = *(this + 2);
    if (!v42)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v42 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v43 = *(v42 + 8);
    if (!v43)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v43 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 8);
    }

    *v41 = *(v43 + 8) * 0.0174532925;
    v44 = *(this + 2);
    if (!v44)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v44 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v45 = *(v44 + 8);
    if (!v45)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v45 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 8);
    }

    *(a2 + 27) = *(v45 + 16) * 0.0174532925;
    v46 = *(this + 2);
    if (!v46)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v46 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v47 = *(v46 + 16) * *(v46 + 16) * 0.5;
    *(a2 + 29) = v47;
    *(a2 + 32) = v47;
    *(a2 + 30) = 0;
    goto LABEL_37;
  }

  v38 = *(this + 2);
  if (!v38)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
    v38 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
  }

  v39 = *(v38 + 8);
  if (!v39)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
    v39 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 8);
  }

  v40 = fabs(*(v39 + 16));
  *(a2 + 26) = 0;
  v41 = (a2 + 208);
  *(a2 + 201) = v40 >= 2.22044605e-16;
  *(a2 + 27) = 0;
  if (v40 >= 2.22044605e-16)
  {
    goto LABEL_67;
  }

LABEL_37:
  v27 = *(this + 2);
  if (!v27)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
    v27 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
  }

  if (*(v27 + 32) <= 0.0)
  {
    *(a2 + 202) = 0;
    v34 = 0.0;
    v35 = 224;
  }

  else
  {
    v28 = *(this + 2);
    if (!v28)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v28 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v29 = *(v28 + 32) & 0x7FFFFFFFFFFFFFFFLL;
    *(a2 + 202) = v29 < 0x7FF0000000000000;
    *(a2 + 28) = 0;
    if (v29 > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_52;
    }

    v30 = *(this + 2);
    if (!v30)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v30 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v31 = *(v30 + 24);
    v32 = *(this + 3);
    if (!v32)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v32 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
    }

    *(a2 + 28) = v31 + *(v32 + 100);
    *(a2 + 31) = 0;
    *(a2 + 33) = 0;
    v33 = *(this + 2);
    if (!v33)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v15);
      v33 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v34 = *(v33 + 32) * *(v33 + 32);
    v35 = 272;
  }

  *(a2 + v35) = v34;
LABEL_52:
  if (sub_1D0C17F90(a2))
  {
    sub_1D0C182A4(a2);
  }

  v22 = *(a2 + 201) | *(a2 + 280);
  return v22 & 1;
}

uint64_t raven::ConvertProtobufToLocationType(unsigned int a1)
{
  if (a1 >= 0xE)
  {
    return 1;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_1D0C17F90(uint64_t a1)
{
  v60 = *MEMORY[0x1E69E9840];
  if (*(a1 + 280))
  {
    return 1;
  }

  if (*(a1 + 201) != 1)
  {
    return 0;
  }

  if (*(a1 + 202) != 1)
  {
    return 0;
  }

  v58 = 0uLL;
  v59 = 0;
  v3 = *(a1 + 208);
  v56 = v3;
  v21 = *(a1 + 216);
  v57 = v21;
  if (cnnavigation::LLAToECEF(&v56, 1, &v58, 0, v40))
  {
    return 0;
  }

  *(a1 + 288) = v58;
  *(a1 + 304) = v59;
  v49 = 0x300000003;
  v48 = xmmword_1D0E76C10;
  v47 = &unk_1F4CD5DD0;
  v50 = v51;
  v5 = *(a1 + 248);
  v6 = *(a1 + 256);
  v51[0] = *(a1 + 232);
  *(&v4 + 1) = *(&v51[0] + 1);
  *&v4 = v5;
  v51[1] = v4;
  v7 = *(a1 + 264);
  v52 = v6;
  v53 = v7;
  v54 = v5;
  v55 = v7;
  v44 = 0x300000003;
  v43 = xmmword_1D0E76C10;
  v42 = &unk_1F4CD5DD0;
  v45 = &v46;
  sub_1D0C09230(v40, v3, *&v21);
  if (v40[8] == 1)
  {
    sub_1D0B894B0(&v42, &v41);
  }

  v32 = 0x300000003;
  v30 = &unk_1F4CD5DD0;
  v31 = xmmword_1D0E76C10;
  v33 = &v34;
  sub_1D0B89390(&v42, &v47, &v30);
  v8 = DWORD1(v43);
  v9 = v43;
  v27 = 0x300000003;
  v22 = &unk_1F4CD5DD0;
  v28 = v29;
  v23 = DWORD1(v43);
  v24 = v43;
  v25 = v43 * DWORD1(v43);
  v26 = DWORD1(v43);
  if (DWORD1(v43))
  {
    v10 = 0;
    v11 = 0;
    v12 = HIDWORD(v43);
    v13 = v45;
    do
    {
      v14 = v10;
      v15 = v11;
      for (i = v9; i; --i)
      {
        v29[v15] = v13[v14];
        v15 += v8;
        ++v14;
      }

      ++v11;
      v10 += v12;
    }

    while (v11 != v8);
  }

  v37 = 0x300000003;
  v36 = xmmword_1D0E76C10;
  v35 = &unk_1F4CD5DD0;
  v38 = &v39;
  sub_1D0B89390(&v30, &v22, &v35);
  v17 = v38;
  *(a1 + 312) = *v38;
  v18 = SHIDWORD(v36);
  v19 = &v17[SHIDWORD(v36)];
  *(a1 + 320) = *v19;
  v20 = &v17[2 * v18];
  *(a1 + 328) = *v20;
  *(a1 + 336) = v19[1];
  result = 1;
  *(a1 + 344) = v17[((2 * v18) | 1)];
  *(a1 + 352) = v20[2];
  *(a1 + 280) = 1;
  return result;
}

uint64_t sub_1D0C182A4(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 201);
  if (v2 == 1)
  {
    v3 = *(a1 + 202);
    if (v3)
    {
      return v3 & 1;
    }

    if ((*(a1 + 280) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (*(a1 + 280) != 1)
  {
    goto LABEL_9;
  }

  v60 = *(a1 + 288);
  v61 = *(a1 + 304);
  v58 = 0.0;
  v59 = 0uLL;
  if (cnnavigation::ECEFToLLA(&v60, 1, &v58, 0, v42))
  {
    if (v2)
    {
      v3 = *(a1 + 202);
      return v3 & 1;
    }

LABEL_9:
    v3 = 0;
    return v3 & 1;
  }

  v4 = v58;
  *(a1 + 208) = v58;
  v5 = *&v59;
  *(a1 + 216) = v59;
  v51 = 0x300000003;
  v50 = xmmword_1D0E76C10;
  v49 = &unk_1F4CD5DD0;
  v52 = v53;
  v7 = *(a1 + 328);
  v8 = *(a1 + 336);
  v53[0] = *(a1 + 312);
  *(&v6 + 1) = *(&v53[0] + 1);
  *&v6 = v7;
  v53[1] = v6;
  v9 = *(a1 + 344);
  v54 = v8;
  v55 = v9;
  v56 = v7;
  v57 = v9;
  v46 = 0x300000003;
  v45 = xmmword_1D0E76C10;
  v44 = &unk_1F4CD5DD0;
  v47 = &v48;
  sub_1D0BFE48C(v42, v4, v5);
  if (v42[8] == 1)
  {
    sub_1D0B894B0(&v44, &v43);
  }

  v34 = 0x300000003;
  v32 = &unk_1F4CD5DD0;
  v33 = xmmword_1D0E76C10;
  v35 = &v36;
  sub_1D0B89390(&v44, &v49, &v32);
  v10 = DWORD1(v45);
  v11 = v45;
  v29 = 0x300000003;
  v24 = &unk_1F4CD5DD0;
  v30 = v31;
  v25 = DWORD1(v45);
  v26 = v45;
  v27 = v45 * DWORD1(v45);
  v28 = DWORD1(v45);
  if (DWORD1(v45))
  {
    v12 = 0;
    v13 = 0;
    v14 = HIDWORD(v45);
    v15 = v47;
    do
    {
      v16 = v12;
      v17 = v13;
      for (i = v11; i; --i)
      {
        v31[v17] = v15[v16];
        v17 += v10;
        ++v16;
      }

      ++v13;
      v12 += v14;
    }

    while (v13 != v10);
  }

  v39 = 0x300000003;
  v38 = xmmword_1D0E76C10;
  v37 = &unk_1F4CD5DD0;
  v40 = &v41;
  sub_1D0B89390(&v32, &v24, &v37);
  v19 = v40;
  *(a1 + 232) = *v40;
  v20 = SHIDWORD(v38);
  v21 = &v19[SHIDWORD(v38)];
  *(a1 + 240) = *v21;
  v22 = &v19[2 * v20];
  *(a1 + 248) = *v22;
  *(a1 + 256) = v21[1];
  v3 = 1;
  *(a1 + 264) = v19[((2 * v20) | 1)];
  *(a1 + 272) = v22[2];
  *(a1 + 201) = 257;
  return v3 & 1;
}

void sub_1D0C18638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
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

void sub_1D0C186C8(uint64_t a1, uint64_t *a2)
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
  sub_1D0C188B8(v4, a2);
}

void sub_1D0C18804(_Unwind_Exception *exception_object)
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

void sub_1D0C1885C(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F4CDF5E0;
  sub_1D0C186C8((a1 + 3), a2);
}

void sub_1D0C1899C(double *a1, double *a2)
{
  v3 = *a1;
  v8 = a1[1];
  v2 = v8;
  if ((*&v8 <= -1 || ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v8 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    v6 = "Scale parameter is %1%, but must be > 0 !";
    goto LABEL_11;
  }

  v8 = v3;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v6 = "Location parameter is %1%, but must be finite!";
    goto LABEL_11;
  }

  v7 = *a2;
  if (fabs(*a2) != INFINITY)
  {
    v8 = *a2;
    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v6 = "Random variate x is %1%, but must be finite!";
LABEL_11:
      sub_1D0D26D6C("boost::math::cdf(const normal_distribution<%1%>&, %1%)", v6, &v8);
    }

    if (fabs(sub_1D0BEE5E0(1, (v7 - v3) / (v2 * -1.41421356))) > 1.79769313e308)
    {
      sub_1D0D27B28("boost::math::erfc<%1%>(%1%, %1%)", "numeric overflow");
    }
  }
}

double cnstatistics::NormalCDF(cnstatistics *this, double a2, double a3, double a4)
{
  v12 = a2;
  if (a4 < 0.0)
  {
    return NAN;
  }

  if (fabs(a2) == INFINITY)
  {
    v5 = fabs(a4) == INFINITY;
    v4 = NAN;
    if (a2 != a3 && !v5)
    {
      v6 = a2 <= 0.0;
      goto LABEL_11;
    }
  }

  else if (fabs(a3) == INFINITY)
  {
    v7 = fabs(a4) == INFINITY;
    v4 = NAN;
    if (a2 != a3 && !v7)
    {
      v6 = a2 <= a3;
LABEL_11:
      if (v6)
      {
        return 0.0;
      }

      else
      {
        return 1.0;
      }
    }
  }

  else
  {
    v8 = fabs(a4);
    if (v8 >= 2.22044605e-16)
    {
      v4 = 0.5;
      if (v8 != INFINITY)
      {
        sub_1D0C1902C(v11, a3, a4);
        sub_1D0C1899C(v11, &v12);
        return v9;
      }
    }

    else if (a2 >= a3)
    {
      return 1.0;
    }

    else
    {
      return 0.0;
    }
  }

  return v4;
}

void sub_1D0C18C38(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BCA45C(v11, a3);
  if (*(v3 + 224) == 1)
  {
    v16 = *(v3 + 112);
    raven::GnssMeasurementPreprocessor::UpdateCurrentFrameworkTime((v3 + 232), &v16);
    if (raven::GnssMeasurementPreprocessor::HandleEvent((v3 + 232), v11))
    {
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      memset(v59, 0, sizeof(v59));
      v60 = 0;
      v50[1] = 0;
      v50[2] = 0;
      v50[0] = &unk_1F4CEF598;
      v51 = 0;
      if (raven::GnssMeasurementPreprocessor::GetPreprocessedGnssMeasurements((v3 + 232), v50))
      {
        sub_1D0C4499C(v3, v50);
      }

      v32[2] = 0;
      v32[0] = &unk_1F4CEE9A8;
      v32[1] = 0;
      v33 = 0;
      v35 = 0;
      v34 = 0;
      v36 = 0;
      v38 = 0;
      v37 = 0;
      v39 = 0;
      v41 = 0;
      v40 = 0;
      v42 = 0x7FF8000000000000;
      v43 = 0;
      v44 = 0u;
      v45 = 0u;
      v46 = 0;
      v49 = 0;
      v47 = 0;
      v48 = 0;
      if (raven::GnssMeasurementPreprocessor::GetGpsUTCParametersEvent((v3 + 232), v32))
      {
        sub_1D0B9B7B4(v3, v32);
      }

      *(&v16 + 1) = 0;
      v17 = 0.0;
      *&v16 = &unk_1F4CEE030;
      LOBYTE(v18) = 0;
      *(&v18 + 1) = 0;
      *&v19 = 0;
      BYTE8(v19) = 0;
      v20 = 0uLL;
      LOBYTE(v21) = 0;
      *(&v21 + 1) = 0;
      v22 = 0;
      v23 = 0x7FF8000000000000;
      v24 = 0;
      v25 = 0;
      v26 = &unk_1F4CD5A50;
      v27 = 0u;
      v28 = 0u;
      v29 = xmmword_1D0E76640;
      v30 = xmmword_1D0E76650;
      v31 = 0;
      if (raven::GnssMeasurementPreprocessor::GetKlobucharParametersEvent((v3 + 232), &v16))
      {
        v5 = *(v3 + 112);
        v4 = *(v3 + 120);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        *(&v16 + 1) = v5;
        v17 = v4;
        v22 = 0;
        v23 = 0x7FF8000000000000;
        v15 = 12;
        v14 = 2;
        sub_1D0B751F4(__p, "KlobucharParametersEvent");
        if (v13 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        cnprint::CNPrinter::Print(&v15, &v14, "t,%.3lf,RavenGnssPreprocessorActiveObject, Raising event - %s.", v5 + v4, v6);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        sub_1D0C47D0C(v3, &v16);
      }

      v50[0] = &unk_1F4CEF598;
      *&v16 = &v59[4];
      sub_1D0BBBD80(&v16);
    }

    else
    {
      LOWORD(v32[0]) = 12;
      LOBYTE(v50[0]) = 2;
      v7 = (*(v11[0] + 16))(v11);
      v9 = v8 + v7;
      (*(v11[0] + 24))(&v16, v11);
      if (v17 >= 0.0)
      {
        v10 = &v16;
      }

      else
      {
        v10 = v16;
      }

      cnprint::CNPrinter::Print(v32, v50, "t,%.3lf,RavenGnssPreprocessorActiveObject Failed to handle event - %s.", v9, v10);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16);
      }
    }
  }
}

void sub_1D0C18FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  *(v65 - 184) = v64;
  a64 = (v65 - 88);
  sub_1D0BBBD80(&a64);
  _Unwind_Resume(a1);
}

double *sub_1D0C1902C(double *result, double a2, double a3)
{
  *result = a2;
  result[1] = a3;
  v5 = a3;
  if ((*&a3 <= -1 || ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&a3 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    sub_1D0D26D6C("boost::math::normal_distribution<%1%>::normal_distribution", "Scale parameter is %1%, but must be > 0 !", &v5);
  }

  v5 = a2;
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    sub_1D0D26D6C("boost::math::normal_distribution<%1%>::normal_distribution", "Location parameter is %1%, but must be finite!", &v5);
  }

  return result;
}

uint64_t raven::GnssMeasurementPreprocessor::HandleEvent(raven::GnssMeasurementPreprocessor *this, const raven::PositionEvent *a2)
{
  if ((*this & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      LOWORD(v14) = 12;
      LOBYTE(v13) = 1;
      cnprint::CNPrinter::Print(&v14, &v13, "#gmp,HandleEvent(pos),not configured");
    }

    return 0;
  }

  v4 = *(a2 + 200);
  if (v4 < 0x11 && ((0x13DE9u >> v4) & 1) != 0)
  {
    return 1;
  }

  if (*(a2 + 201) == 1)
  {
    if ((*(a2 + 202) & 1) == 0)
    {
      LOWORD(v14) = 12;
      LOBYTE(v13) = 2;
      v5 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v14, &v13, "#gmp,HandleEvent(pos),ignoring 2D Horizontal PositionEvent,t,%.3lf,type,%u", v6 + v5, *(a2 + 200));
      return 1;
    }
  }

  else if ((*(a2 + 280) & 1) == 0)
  {
    LOWORD(v14) = 12;
    LOBYTE(v13) = 3;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v14, &v13, "#gmp,HandleEvent(pos),Failed to handle PositionEvent,t,%.3lf,type,%u");
    return 0;
  }

  v14 = &unk_1F4CEF748;
  memcpy(v15, a2 + 8, sizeof(v15));
  if (sub_1D0C17F90(&v14))
  {
    LogLevel = sub_1D0C182A4(&v14);
    if (LogLevel)
    {
      v8 = *(this + 1);
      if (*(v8 + 2561) == 1)
      {
        v9 = fabs(v15[25]);
        if (v9 <= 1.30899694)
        {
          if (v9 <= 1.04719755)
          {
            if (v9 <= 1.04545222)
            {
              *(this + 2336) = 1;
              *(this + 291) = *(v8 + 3128);
              if (!cnprint::CNPrinter::GetLogLevel(LogLevel))
              {
                v13 = 12;
                v12 = 0;
                *(this + 2336) = 1;
                cnprint::CNPrinter::Print(&v13, &v12, "#gmp,Operate normally,elevation,%.2lf,use_model,%d");
              }
            }

            else if (!cnprint::CNPrinter::GetLogLevel(LogLevel))
            {
              v13 = 12;
              v12 = 0;
              *(this + 2336) = 1;
              cnprint::CNPrinter::Print(&v13, &v12, "#gmp,Maintain current state,elevation,%.2lf,use_model,%d");
            }
          }

          else
          {
            if (v9 <= 1.30725161 && (*(this + 2336) & 1) == 0)
            {
              LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
              if (!LogLevel)
              {
                v13 = 12;
                v12 = 0;
                cnprint::CNPrinter::Print(&v13, &v12, "#gmp,Below cutoff and below hysteresis region; use local model");
              }

              *(this + 2336) = 1;
              v8 = *(this + 1);
            }

            v11 = *(v8 + 3128);
            if (v11 < 15.0)
            {
              v11 = 15.0;
            }

            *(this + 291) = v11;
            if (!cnprint::CNPrinter::GetLogLevel(LogLevel))
            {
              v13 = 12;
              v12 = 0;
              *(this + 2336) = 1;
              cnprint::CNPrinter::Print(&v13, &v12, "#gmp,Adjusting elevation threshold,elevation,%.2lf,use_model,%d");
            }
          }

          goto LABEL_17;
        }

        if (!cnprint::CNPrinter::GetLogLevel(LogLevel))
        {
          v13 = 12;
          v12 = 0;
          cnprint::CNPrinter::Print(&v13, &v12, "#gmp,Above cutoff; do not use local model");
        }
      }

      *(this + 2336) = 0;
LABEL_17:
      memcpy(this + 536, v15, 0x160uLL);
      return 1;
    }
  }

  v13 = 12;
  v12 = 4;
  (*(*a2 + 16))(a2);
  cnprint::CNPrinter::Print(&v13, &v12, "#gmp,Could not fill in LLA/ECEF for incoming position,t,%.3lf");
  return 0;
}

uint64_t sub_1D0C19498(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BCA45C(v5, a3);
  *(v3 + 256) = *(v3 + 112);
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = &unk_1F4CEF748;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0x7FF8000000000000;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v24 = 0;
  v23 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0x7FF8000000000000;
  v29 = 0;
  v30 = 0;
  v31 = vdupq_n_s64(0x7FF8000000000000uLL);
  v32 = v31;
  v33 = v31;
  v34 = v31;
  v35 = 0x7FF8000000000000;
  v36 = 0;
  v37 = v31;
  v38 = v31;
  v39 = v31;
  v40 = v31;
  v41 = 0x7FF8000000000000;
  result = raven::RavenIntegrityEstimator::HandleEvent((v3 + 240), v5, v6);
  if (!result)
  {
    sub_1D0DD58CC(v3, v6);
  }

  return result;
}

uint64_t raven::PositionChecker::HandleEvent(raven::PositionChecker *this, const raven::PositionEvent *a2, raven::PositionEvent *a3)
{
  if ((*(this + 8) & 1) == 0)
  {
    LOWORD(v136) = 12;
    LOBYTE(v128) = 4;
    v34 = (*(*a2 + 16))(a2, a2, a3);
    v122 = v35 + v34;
    v36 = "t,%.3lf,PositionChecker, not configured";
    v37 = &v136;
    v38 = &v128;
LABEL_50:
    cnprint::CNPrinter::Print(v37, v38, v36, *&v122, *&v123);
    return 0xFFFFFFFFLL;
  }

  memcpy(a3 + 8, a2 + 8, 0x160uLL);
  if (*(a3 + 200) == 4)
  {
    v6 = *(a3 + 201) == 1 && *(a3 + 202) == 0;
    if (v6 && *(this + 26) == 1 && raven::PositionChecker::Supplement2DWiFiWithAltitudeAssistance(this, a3))
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (sub_1D0C17F90(a3))
  {
    sub_1D0C182A4(a3);
  }

  if (*(a3 + 280) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a3 + 36);
  v8 = *(a3 + 37);
  v9 = *(a3 + 38);
  result = 0xFFFFFFFFLL;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a3 + 37) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*(a3 + 38) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || sqrt(v8 * v8 + v7 * v7 + v9 * v9) <= 3185504.5)
  {
    return result;
  }

  v11 = *(a3 + 39);
  v12 = v11 < 0 || ((v11 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  if (v12 && (v11 - 1) > 0xFFFFFFFFFFFFELL)
  {
    return result;
  }

  v14 = *(a3 + 42);
  v15 = v14 < 0 || ((v14 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  if (v15 && (v14 - 1) > 0xFFFFFFFFFFFFELL)
  {
    return result;
  }

  v17 = *(a3 + 44);
  v18 = v17 < 0 || ((v17 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  v19 = v18 && (v17 - 1) > 0xFFFFFFFFFFFFELL;
  if (v19 || (*(a3 + 40) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a3 + 41) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a3 + 43) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return result;
  }

  v138 = 0x300000003;
  v137 = xmmword_1D0E76C10;
  v136 = &unk_1F4CD5DD0;
  v139 = &v140;
  if (!sub_1D0C1A564(a3, &v136) || sub_1D0C1A5F8(&v136) > *(this + 5))
  {
    return 0xFFFFFFFFLL;
  }

  v21 = *(this + 2);
  if ((*(v21 + 656) & 1) == 0 && *(v21 + 658) != 1)
  {
    goto LABEL_59;
  }

  if (*(v21 + 1568))
  {
    v22 = *(this + 2);
    v131 = (*(*a2 + 16))(a2);
    *&v132 = v23;
    v24 = *(this + 2);
    v27 = CNTimeSpan::operator-(&v131, (v24 + 1544), v25, v26);
    v31 = v27;
    v128 = v27;
    v129 = v28;
    v32 = v28;
    if (v27 < 0 || v28 < 0.0)
    {
      v27 = CNTimeSpan::operator-(&v128, v29, v30);
      v33 = v39;
    }

    else
    {
      v33 = v28;
    }

    if (v33 + v27 <= 2.0 && *(v24 + 1560) >= 3u)
    {
      LogLevel = cnprint::CNPrinter::GetLogLevel(v27);
      if (LogLevel <= 1)
      {
        LOWORD(v131) = 12;
        LOBYTE(v125[0]) = 1;
        v40 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&v131, v125, "t,%.3lf, Overriding inside-tunnel / close-to-tunnel status due to GNSS availability: age=%.3lf, num_satellites_tracked=%u", v41 + v40, v32 + v31, *(*(this + 2) + 1560));
      }

LABEL_59:
      v42 = 0;
      goto LABEL_69;
    }

    v21 = v22;
  }

  v131 = (*(*a2 + 16))(a2);
  *&v132 = v43;
  v125[0] = (*(*(v21 + 432) + 16))(v21 + 432);
  v125[1] = v44;
  LogLevel = CNTimeSpan::operator-(&v131, v125, v45, v46);
  v128 = LogLevel;
  v129 = v47;
  if (LogLevel < 0 || (*v48.i64 = v47, v47 < 0.0))
  {
    LogLevel = CNTimeSpan::operator-(&v128, v48, v49);
    v48.i64[0] = v50;
  }

  v51 = *v48.i64 + LogLevel;
  v42 = v51 < 30.0;
  if (v51 < 30.0)
  {
    v52 = *(a3 + 200);
    if (v52 == 16 || v52 == 4)
    {
      LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
      if (LogLevel <= 1)
      {
        LOWORD(v131) = 12;
        LOBYTE(v125[0]) = 1;
        v53 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&v131, v125, "t,%.3lf, CPI is rejected at tunnel,is_tunnel,%d,is_close_to_tunnel,%d", v54 + v53, *(v21 + 658), *(v21 + 656));
      }
    }
  }

LABEL_69:
  v55 = *(a3 + 200);
  if (v55 > 8)
  {
    if (v55 != 9)
    {
      if (v55 != 16)
      {
        goto LABEL_79;
      }

      goto LABEL_75;
    }
  }

  else if (v55 != 1)
  {
    if (v55 != 4)
    {
LABEL_79:
      if (v55 - 16 < 0xFFFFFFFE)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_80;
    }

LABEL_75:
    if (!v42)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  if (*(this + 48))
  {
    return 0xFFFFFFFFLL;
  }

LABEL_80:
  if (*(this + 9) != 1)
  {
    return 0;
  }

  if (v55 != 16)
  {
    if (v55 == 14)
    {
      v67 = *(this + 2);
      if (*(v67 + 272) == 1 && *(v67 + 384) != 2)
      {
        if (cnprint::CNPrinter::GetLogLevel(LogLevel) > 1)
        {
          return 0xFFFFFFFFLL;
        }

        LOWORD(v128) = 12;
        LOBYTE(v131) = 1;
        v108 = (*(*a3 + 16))(a3);
        v122 = v109 + v108;
        v36 = "t,%.3lf,PositionChecker: ARSession is not in running state, VL localization position dropped";
        goto LABEL_122;
      }

      v68 = raven::PositionChecker::VLPositionTestingAndReweighting(this, a3);
      if ((v68 & 1) == 0)
      {
        if (cnprint::CNPrinter::GetLogLevel(v68) > 1)
        {
          return 0xFFFFFFFFLL;
        }

        LOWORD(v128) = 12;
        LOBYTE(v131) = 1;
        v69 = (*(*a3 + 16))(a3);
        v122 = v70 + v69;
        v36 = "t,%.3lf,PositionChecker: VL localization position dropped, consistency check returned failure";
        goto LABEL_122;
      }

      goto LABEL_106;
    }

    if (v55 != 4)
    {
      goto LABEL_106;
    }
  }

  if (*(this + 25) == 1)
  {
    v56 = raven::PositionChecker::TestInnovationAndReweight(this, a3);
    switch(v56)
    {
      case 1:
        LOWORD(v128) = 12;
        LOBYTE(v131) = 4;
        v112 = (*(*a3 + 16))(a3);
        v122 = v113 + v112;
        v36 = "t,%.3lf error in position measurement innovation testing";
        goto LABEL_122;
      case 3:
        if (cnprint::CNPrinter::GetLogLevel(v56))
        {
          return 0xFFFFFFFFLL;
        }

        LOWORD(v128) = 12;
        LOBYTE(v131) = 0;
        v110 = (*(*a3 + 16))(a3);
        v122 = v111 + v110;
        v36 = "t,%.3lf Innovation test failed: Position-Measurement rejected";
        goto LABEL_122;
      case 2:
        LOWORD(v128) = 12;
        LOBYTE(v131) = 4;
        v57 = (*(*a3 + 16))(a3);
        v122 = v58 + v57;
        v36 = "t,%.3lf unexpected innovation test result";
LABEL_122:
        v37 = &v128;
        v38 = &v131;
        goto LABEL_50;
    }
  }

  if (*(this + 120) == 1)
  {
    v131 = (*(*a3 + 16))(a3);
    *&v132 = v59;
    if ((*(this + 120) & 1) == 0)
    {
      __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
    }

    v62 = CNTimeSpan::operator-(&v131, this + 17, v60, v61);
    v128 = v62;
    v129 = v63;
    if (v62 < 0 || (*v64.i64 = v63, v63 < 0.0))
    {
      v62 = CNTimeSpan::operator-(&v128, v64, v65);
      v64.i64[0] = v66;
    }

    if (*v64.i64 + v62 < 30.0 && fabs(sqrt((v8 - *(this + 53)) * (v8 - *(this + 53)) + (v7 - *(this + 52)) * (v7 - *(this + 52)) + (v9 - *(this + 54)) * (v9 - *(this + 54)))) <= 0.01)
    {
      if (cnprint::CNPrinter::GetLogLevel(v62) > 1)
      {
        return 0xFFFFFFFFLL;
      }

      LOWORD(v128) = 12;
      LOBYTE(v131) = 1;
      v116 = (*(*a2 + 16))(a2);
      v122 = v117 + v116;
      v36 = "t,%.3lf,PositionChecker: duplicate PositionEvent,returning check failed";
      goto LABEL_122;
    }

    memcpy(this + 136, a3 + 8, 0x160uLL);
  }

  else
  {
    *(this + 16) = &unk_1F4CEF748;
    memcpy(this + 136, a3 + 8, 0x160uLL);
    *(this + 120) = 1;
  }

  if (sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EC0A90))
  {
    if (*(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90) + 1344) == 1)
    {
      v71 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90);
      v72 = v71[169];
      if (v72 > 13.4112)
      {
        if (cnprint::CNPrinter::GetLogLevel(v71) > 1)
        {
          return 0xFFFFFFFFLL;
        }

        LOWORD(v128) = 12;
        LOBYTE(v131) = 1;
        v114 = (*(*a2 + 16))(a2);
        v122 = v115 + v114;
        v123 = v72;
        v36 = "t,%.3lf,PositionChecker: Speed too large,returning check failed,%.3lf";
        goto LABEL_122;
      }
    }
  }

LABEL_106:
  result = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EC0A90);
  if (result)
  {
    if (*(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90) + 1464) == 1)
    {
      v73 = *(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90) + 184);
      v74 = *(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90) + 185);
      v75 = *(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90) + 186);
      if (!sub_1D0C1A564(a3, &v136))
      {
        return 0xFFFFFFFFLL;
      }

      v76 = *v139;
      v77 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90);
      v78 = v139;
      *v139 = v76 + *(v77 + 187);
      v79 = v78[SHIDWORD(v137)];
      v80 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90);
      v81 = SHIDWORD(v137);
      v82 = v139;
      v139[SHIDWORD(v137)] = v79 + *(v80 + 188);
      v83 = v82[2 * v81];
      v84 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90);
      v85 = v139;
      v139[2 * SHIDWORD(v137)] = v83 + *(v84 + 189);
      v86 = v85[1];
      v87 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90);
      v88 = v139;
      v139[1] = v86 + *(v87 + 188);
      v89 = v88[SHIDWORD(v137) + 1];
      v90 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90);
      v91 = SHIDWORD(v137);
      v92 = v139;
      v139[SHIDWORD(v137) + 1] = v89 + *(v90 + 190);
      v93 = v92[2 * v91 + 1];
      v94 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90);
      v95 = v139;
      v139[2 * SHIDWORD(v137) + 1] = v93 + *(v94 + 191);
      v96 = v95[2];
      v97 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90);
      v98 = v139;
      v139[2] = v96 + *(v97 + 189);
      v99 = v98[SHIDWORD(v137) + 2];
      v100 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90);
      v101 = SHIDWORD(v137);
      v102 = v139;
      v139[SHIDWORD(v137) + 2] = v99 + *(v100 + 191);
      v103 = v102[2 * v101 + 2];
      v104 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0EC0A90);
      v139[2 * SHIDWORD(v137) + 2] = v103 + *(v104 + 192);
      v133 = 0x100000003;
      v132 = xmmword_1D0E7DCC0;
      v134 = v135;
      v135[0] = v7 - v73;
      v135[1] = v8 - v74;
      v135[2] = v9 - v75;
      v130 = INFINITY;
      v131 = &unk_1F4CDEB28;
      sub_1D0D4BAFC(&v136, &v130, &v128);
      if ((*&v130 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v130 > *(this + 5))
      {
        if (cnprint::CNPrinter::GetLogLevel(v105) <= 1)
        {
          LOWORD(v125[0]) = 12;
          LOBYTE(v124[0]) = 1;
          v106 = (*(*a2 + 16))(a2);
          cnprint::CNPrinter::Print(v125, v124, "t,%.3lf,PositionChecker: Poorly conditioned joint covariance matrix,returning check failed", v107 + v106);
        }

        return 0xFFFFFFFFLL;
      }

      sub_1D0D4BC50(&v131, v124);
      sub_1D0BFB8FC(v124, &v128, v125);
      v118 = sub_1D0BFC678(v125, &v131, v126);
      v119 = sqrt(*v127);
      if (fabs(v119) > *(this + 4) || (*(this + 8) & 1) == 0)
      {
        if (cnprint::CNPrinter::GetLogLevel(v118) <= 1)
        {
          LOWORD(v125[0]) = 12;
          LOBYTE(v124[0]) = 1;
          v120 = (*(*a2 + 16))(a2);
          cnprint::CNPrinter::Print(v125, v124, "t,%.3lf,PositionChecker: failed sigma sanity test, %.2lf > %.2lf, returning check failed, src,%d", v121 + v120, v119, *(this + 4), *(a2 + 200));
        }

        return 0xFFFFFFFFLL;
      }
    }

    return 0;
  }

  return result;
}

uint64_t raven::RavenIntegrityEstimator::HandleEvent(raven::PositionChecker **this, const raven::PositionEvent *a2, raven::PositionEvent *a3)
{
  v5 = raven::PositionChecker::HandleEvent(this[210], a2, a3);
  if (v5)
  {
    return v5;
  }

  v7 = *(a3 + 200);
  if (v7 <= 0xD)
  {
    if (v7 != 4 && v7 != 11)
    {
      return v5;
    }

    goto LABEL_11;
  }

  if (v7 != 14)
  {
    if (v7 != 16)
    {
      return v5;
    }

LABEL_11:
    if (*(a3 + 202) == 1)
    {
      if (*(this + 1168) == 1)
      {
        memcpy(this + 148, a3 + 8, 0x160uLL);
      }

      else
      {
        this[147] = &unk_1F4CEF748;
        memcpy(this + 148, a3 + 8, 0x160uLL);
        *(this + 1168) = 1;
      }

      if (*(a3 + 200) == 16)
      {
        return 0xFFFFFFFFLL;
      }
    }

    return v5;
  }

  if (*(this + 288) == 1 && *(this + 400) == 2)
  {
    if (*(this + 800) == 1)
    {
      memcpy(this + 102, a3 + 8, 0x160uLL);
    }

    else
    {
      this[101] = &unk_1F4CEF748;
      memcpy(this + 102, a3 + 8, 0x160uLL);
      *(this + 800) = 1;
    }
  }

  return v5;
}

uint64_t sub_1D0C1A564(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 280) & 1) != 0 || (result = sub_1D0C17F90(a1), result))
  {
    *(a2 + 8) = xmmword_1D0E76C10;
    v5 = *(a2 + 32);
    *v5 = *(a1 + 312);
    v5[3] = *(a1 + 320);
    v5[6] = *(a1 + 328);
    v5[1] = *(a1 + 320);
    v5[4] = *(a1 + 336);
    v5[7] = *(a1 + 344);
    v5[2] = *(a1 + 328);
    v5[5] = *(a1 + 344);
    v5[8] = *(a1 + 352);
    return 1;
  }

  return result;
}

double sub_1D0C1A5F8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v25 = 0x300000003;
  v24 = xmmword_1D0E76C10;
  v23 = &unk_1F4CD5DD0;
  v26 = &v27;
  v20 = 0x300000003;
  v19 = xmmword_1D0E76C10;
  v18 = &unk_1F4CD5DD0;
  v21 = &v22;
  v15 = 0x100000003;
  v14 = xmmword_1D0E7DCC0;
  v13 = &unk_1F4CDEAA0;
  v16 = &v17;
  v10 = 0x1000001E6;
  v8 = &unk_1F4CDFFB0;
  v9 = xmmword_1D0E83DC0;
  v11 = &v12;
  v5 = 0x100000003;
  v3 = &unk_1F4CDEB28;
  v4 = xmmword_1D0E7DCC0;
  v6 = &v7;
  return sub_1D0C1A8F0(v1, &v23, &v18, &v13, &v8, &v3, "2");
}

void sub_1D0C1A774(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 12);
  v9 = *(a3 + 28) * *(a3 + 24);
  sub_1D0B894B0(a2, a1);
  v10 = *(a2 + 8);
  v11 = *(a2 + 12);
  v20 = 78;
  v19 = 78;
  v17 = v11;
  v18 = v10;
  v12 = dgesvd_NEWLAPACK();
  v13 = **(a3 + 32);
  if (v9 < v13 && cnprint::CNPrinter::GetLogLevel(v12) <= 1)
  {
    LOWORD(v18) = 4;
    LOBYTE(v17) = 1;
    cnprint::CNPrinter::Print(&v18, &v17, "Warning: Svd optimal workspace size %u is greater than provided workspace size %u; performance may suffer.", v13, v9);
  }

  if (v8 >= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = v8;
  }

  v15 = *(a3 + 24);
  v16 = *(a3 + 28);
  *(a3 + 8) = v15;
  *(a3 + 12) = v16;
  *(a3 + 16) = v16 * v15;
  *(a3 + 20) = v15;
  a4[2] = v14;
  a4[3] = 1;
  a4[4] = v14;
  a4[5] = v14;
}

double sub_1D0C1A8F0(_DWORD *a1, uint64_t a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *__s1)
{
  v7 = 0.0;
  if (!a1[4])
  {
    return v7;
  }

  v15 = a1[2];
  v16 = a1[3];
  v17 = *__s1;
  if (v17 != 50)
  {
    if (v17 == 49 && !__s1[1])
    {
LABEL_12:
      if (v15 == v16)
      {
        sub_1D0BFB1AC(a1, a2, a5, a6, __s1);
        v19 = v18;
        sub_1D0B9F868(a1, a4, a5, a3);
        sub_1D0BFB1AC(a3, a2, a5, a6, __s1);
        return v19 * v20;
      }

      else
      {
        v26 = 4;
        v25 = 5;
        cnprint::CNPrinter::Print(&v26, &v25, "Error using Cond: condition numbers for non-square matrices cannot be computed based on the %s-norm.", __s1);
      }

      return v7;
    }

    goto LABEL_7;
  }

  if (__s1[1])
  {
LABEL_7:
    if (strcmp(__s1, "inf") && strcmp(__s1, "fro"))
    {
      v28 = 4;
      v27 = 5;
      cnprint::CNPrinter::Print(&v28, &v27, "Error using Cond: condition number based on invalid %s-norm was requested.", __s1);
      v17 = *__s1;
    }

    if (v17 != 50 || __s1[1])
    {
      goto LABEL_12;
    }
  }

  sub_1D0C1A774(a1, a2, a5, a6);
  v21 = *(a6 + 32);
  if (v15 >= v16)
  {
    v22 = v16;
  }

  else
  {
    v22 = v15;
  }

  v23 = v21[v22 - 1];
  if (v23 <= 0.0)
  {
    return INFINITY;
  }

  else
  {
    return *v21 / v23;
  }
}

void sub_1D0C1AAC4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BCA45C(v7, a3);
  if ((v14 | 8) == 9 && v9 == 1 && COERCE__INT64(fabs(*&v10 + *(&v9 + 1))) <= 0x7FEFFFFFFFFFFFFFLL && COERCE__INT64(fabs(*(&v8 + 1) + v8)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v4 = *(v3 + 224);
    v5 = v11;
    *(v3 + 264) = v10;
    *(v3 + 280) = v5;
    v6 = v13;
    *(v3 + 296) = v12;
    *(v3 + 312) = v6;
    *(v3 + 232) = v8;
    *(v3 + 248) = v9;
    if ((v4 & 1) == 0)
    {
      *(v3 + 224) = 1;
    }
  }
}

uint64_t raven::ConvertProtobufToVelocityEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::Location *a2, const raven::PositionEvent *a3, raven::VelocityEvent *a4, int8x16_t a5, int8x16_t a6)
{
  v108 = *MEMORY[0x1E69E9840];
  v92[1] = 0;
  v92[0] = 0;
  v93 = 0;
  v95 = 0;
  v94 = 0;
  v96 = 0;
  v98 = 0;
  v97 = 0;
  v99 = 0;
  v101 = 0;
  v100 = 0;
  v102 = 0x7FF8000000000000;
  if ((*(this + 100) & 1) == 0)
  {
    goto LABEL_10;
  }

  v9 = *(this + 1);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 8);
  }

  v10 = raven::ConvertProtobufToRavenTime(v9, v92, 0, a5, a6);
  if (!v10)
  {
    goto LABEL_10;
  }

  v13 = *(this + 3);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v10);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
  }

  if ((*(v13 + 366) & 0x10) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v10) <= 1)
    {
      v86.i16[0] = 12;
      LOBYTE(v81) = 1;
      cnprint::CNPrinter::Print(&v86, &v81, "location private does not have mach continuous time for velocity event");
    }

LABEL_10:
    v14 = 0;
    return v14 & 1;
  }

  v16 = *(this + 3);
  if (!v16)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v10);
    v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
  }

  v11.i64[0] = *(v16 + 128);
  v86 = 0uLL;
  CNTimeSpan::SetTimeSpan(&v86, 0, v11, v12);
  v17 = v86;
  *(a3 + 8) = v86;
  LogLevel = raven::PopulateAllTimeFields(a3 + 8, v92, v17, v18);
  v20 = *(this + 2);
  if (!v20)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
    v20 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
  }

  if ((*(v20 + 153) & 0x10) != 0)
  {
    v22 = *(this + 2);
    if (!v22)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
      v22 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    LogLevel = raven::ConvertProtobufToLocationType(*(v22 + 104));
    *(a3 + 200) = LogLevel;
    if ((LogLevel | 8) != 9)
    {
      goto LABEL_24;
    }

    v25 = *(this + 3);
    if (!v25)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
      v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
    }

    if ((*(v25 + 364) & 8) != 0)
    {
      v26 = *(this + 3);
      if (!v26)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
        v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
      }

      v23.i64[0] = *(v26 + 32);
      v86 = 0uLL;
      CNTimeSpan::SetTimeSpan(&v86, 0, v23, v24);
      *(a3 + 2) = v86;
      v21 = 1;
    }

    else
    {
LABEL_24:
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
    *(a3 + 200) = 0;
  }

  *(a3 + 24) = v21;
  *(a3 + 104) = *(a3 + 8);
  *(a3 + 120) = *(a3 + 24);
  *(a3 + 184) = *(a3 + 88);
  *(a3 + 168) = *(a3 + 72);
  *(a3 + 152) = *(a3 + 56);
  *(a3 + 136) = *(a3 + 40);
  v27 = *(this + 2);
  v28 = v27;
  if (!v27)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
    v28 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    v27 = *(this + 2);
  }

  if (*(v28 + 40) < 0.0)
  {
    goto LABEL_40;
  }

  v29 = v27;
  if (!v27)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
    v29 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    v27 = *(this + 2);
  }

  if ((*(v29 + 40) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_40;
  }

  v30 = v27;
  if (!v27)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
    v30 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    v27 = *(this + 2);
  }

  if (*(v30 + 56) <= 0.0)
  {
LABEL_40:
    v32 = 0;
  }

  else
  {
    v31 = v27;
    if (!v27)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
      v31 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
      v27 = *(this + 2);
    }

    v32 = (*(v31 + 56) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  }

  *(a3 + 201) = v32;
  if (v27)
  {
    *(a3 + 26) = *(v27 + 40);
LABEL_44:
    v33 = *(v27 + 72);
    goto LABEL_45;
  }

  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
  v27 = *(this + 2);
  *(a3 + 26) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16) + 40);
  if (v27)
  {
    goto LABEL_44;
  }

  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
  v27 = *(this + 2);
  v33 = *(*(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16) + 72);
  if (!v27)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
    v27 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
  }

LABEL_45:
  if (*(v27 + 64) >= 0.0)
  {
    v35 = *(this + 2);
    if (!v35)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
      v35 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v34 = 0;
    if (*(v35 + 64) < 360.0 && v33 > 0.0)
    {
      v34 = (*&v33 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
    }
  }

  else
  {
    v34 = 0;
  }

  *(a3 + 203) = v34;
  v36 = *(this + 2);
  if (!v36)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
    v36 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
  }

  *(a3 + 28) = *(v36 + 64) * 0.0174532925;
  if (*(a3 + 201) != 1 || (*(a3 + 203) & 1) != 0 || *(a3 + 26) >= 1.0)
  {
    goto LABEL_66;
  }

  LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
  if (LogLevel <= 1)
  {
    v86.i16[0] = 12;
    LOBYTE(v81) = 1;
    v37 = *(this + 2);
    if (v37)
    {
      v38 = v37[8];
      v39 = *(a3 + 201);
    }

    else
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
      v37 = *(this + 2);
      v38 = *(*(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16) + 64);
      v39 = *(a3 + 201);
      if (!v37)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v40);
        v37 = *(this + 2);
        v41 = *(*(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16) + 40);
        if (!v37)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v62);
          v37 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
        }

        goto LABEL_64;
      }
    }

    v41 = v37[5];
LABEL_64:
    cnprint::CNPrinter::Print(&v86, &v81, "Filling dummy course at low speed,course,%.3f,acc,%.3f,spd valid,%d,speed,%.3f,acc,%.3f", v38, v33, v39, v41, v37[7]);
  }

  *(a3 + 203) = 1;
  *(a3 + 28) = 0;
  v33 = 180.0;
LABEL_66:
  v42 = *(this + 2);
  if (!v42)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(LogLevel);
    v42 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
  }

  *(a3 + 29) = *(v42 + 56) * *(v42 + 56);
  *(a3 + 34) = v33 * 0.0174532925 * (v33 * 0.0174532925);
  *(a3 + 202) = 1;
  *(a3 + 27) = 0;
  *(a3 + 30) = 0;
  *(a3 + 31) = 0;
  *(a3 + 16) = xmmword_1D0E9C870;
  *(a3 + 280) = 0;
  if (((*(a2 + 201) & 1) != 0 || *(a2 + 280) == 1) && *(a3 + 201) == 1 && *(a3 + 203) == 1)
  {
    v43 = *(a3 + 26);
    v44 = __sincos_stret(*(a3 + 28));
    *&v106 = v43 * v44.__sinval;
    *(&v106 + 1) = v43 * v44.__cosval;
    v107 = 0;
    v103 = 0uLL;
    v104 = 0;
    if (*(a2 + 280) == 1)
    {
      v45 = 0;
      v46 = a2 + 288;
      v47 = a2 + 296;
      v48 = *(a2 + 38);
    }

    else
    {
      v46 = a2 + 208;
      v47 = a2 + 216;
      v48 = *(a2 + 28);
      if (!*(a2 + 202))
      {
        v48 = 0.0;
      }

      v45 = 1;
    }

    v49 = *v47;
    v105[0] = *v46;
    v105[1] = v49;
    *&v105[2] = v48;
    v86.i8[8] = 0;
    v89 = 0x300000003;
    v88 = xmmword_1D0E76C10;
    v87 = &unk_1F4CD5DD0;
    v90 = &v91;
    v86.i64[0] = &unk_1F4CD5D90;
    if (!cnnavigation::ENUToECEF(&v106, 1, v45, v105, 1, &v103, &v86))
    {
      *(a3 + 280) = 1;
      *(a3 + 18) = v103;
      *(a3 + 38) = v104;
      v83 = 0x300000003;
      v82 = xmmword_1D0E76C10;
      v81 = &unk_1F4CD5DD0;
      v84 = &v85;
      if (v86.u8[8] == 1)
      {
        sub_1D0B894B0(&v81, &v87);
      }

      v50 = *(a3 + 29);
      v51 = *(a3 + 34);
      sub_1D0BFA9C4(3, 3, v78);
      v52 = sqrt(v50);
      v53 = sqrt(v51);
      if (v43 < v52 * 5.0 || v53 >= 0.261799388)
      {
        if (v53 >= 0.261799388)
        {
          v61 = (v43 + v52 * 3.0) / 3.0 * ((v43 + v52 * 3.0) / 3.0);
        }

        else
        {
          v61 = *(a3 + 29);
        }

        v63 = v80;
        *v80 = v61;
        v64 = v79;
        v63[v79 + 1] = v61;
        v63[2 * v64 + 2] = *(a3 + 32);
      }

      else
      {
        sub_1D0BFA9C4(3, 3, v75);
        v54 = v77;
        *v77 = *(a3 + 29);
        v55 = v76;
        v56 = &v54[v76];
        *v56 = *(a3 + 31);
        v57 = &v54[2 * v55];
        *v57 = *(a3 + 30);
        v54[1] = *(a3 + 31);
        v56[1] = *(a3 + 34);
        v54[((2 * v55) | 1)] = *(a3 + 33);
        v54[2] = *(a3 + 30);
        v56[2] = *(a3 + 33);
        v57[2] = *(a3 + 32);
        sub_1D0BFA9C4(3, 3, v72);
        v58 = v74;
        *v74 = v44.__sinval;
        v59 = v73;
        v60 = &v58[v73];
        *v60 = v43 * v44.__cosval;
        v58[1] = v44.__cosval;
        v60[1] = -(v43 * v44.__sinval);
        v58[2 * v59 + 2] = 1.0;
        sub_1D0C1B688(v72, v75, v70);
        sub_1D0C1B708(v72, v69);
        sub_1D0C1B688(v70, v69, v71);
        sub_1D0B894B0(v78, v71);
      }

      sub_1D0C1B688(&v81, v78, v72);
      sub_1D0C1B708(&v81, v71);
      sub_1D0C1B688(v72, v71, v75);
      v65 = v77;
      *(a3 + 39) = *v77;
      v66 = v76;
      v67 = &v65[v76];
      *(a3 + 40) = *v67;
      v68 = &v65[2 * v66];
      *(a3 + 41) = *v68;
      *(a3 + 42) = v67[1];
      *(a3 + 43) = v65[((2 * v66) | 1)];
      *(a3 + 44) = v68[2];
    }
  }

  if (*(a3 + 201) == 1 && *(a3 + 203) == 1 && (*(a3 + 202) & 1) != 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = *(a3 + 280);
  }

  return v14 & 1;
}

uint64_t cnnavigation::ENUToECEF(__int128 *a1, int a2, int a3, uint64_t a4, int a5, float64x2_t *a6, uint64_t a7)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    v12 = *a4;
    v20 = *a4;
    v15 = *(a4 + 8);
    v21 = v15;
    if (cnnavigation::LLAToECEF(&v20, a2, v22.f64, 0, &v18))
    {
      return 0xFFFFFFFFLL;
    }

    v11 = v15;
  }

  else
  {
    if (a3)
    {
      return 0xFFFFFFFFLL;
    }

    v22 = *a4;
    v23 = *(a4 + 16);
    if (cnnavigation::ECEFToLLA(&v22, a2, &v20, 0, &v18))
    {
      return 0xFFFFFFFFLL;
    }

    v12 = v20;
    v11.n128_u64[0] = v21.n128_u64[0];
  }

  (*(*a7 + 16))(a7, v12, v11);
  v16 = *a1;
  v17 = *(a1 + 2);
  sub_1D0BED7A0(a7, &v16, v18.f64);
  if (a5 == 1)
  {
    *a6 = v18;
    v13 = v19;
    goto LABEL_12;
  }

  if (a5)
  {
    return 0xFFFFFFFFLL;
  }

  *a6 = vaddq_f64(v18, v22);
  v13 = v19 + v23;
LABEL_12:
  result = 0;
  a6[1].f64[0] = v13;
  return result;
}

uint64_t sub_1D0C1B688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x300000003;
  *a3 = &unk_1F4CD5DD0;
  *(a3 + 8) = xmmword_1D0E76C10;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(a1, a2, a3);
}

uint64_t sub_1D0C1B708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 12);
  *(a2 + 24) = 0x300000003;
  *a2 = &unk_1F4CD5DD0;
  *(a2 + 8) = v3;
  *(a2 + 12) = v4;
  *(a2 + 16) = v4 * v3;
  *(a2 + 20) = v3;
  *(a2 + 32) = a2 + 40;
  return sub_1D0BD2018(a1, a2);
}

void sub_1D0C1B994(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  v3 = *(v1 + 40);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_1D0C1BA34(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0C050F4(v4, a3);
  *(v3 + 256) = *(v3 + 112);
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = &unk_1F4CEF6E8;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0x7FF8000000000000;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v23 = 0;
  v22 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0x7FF8000000000000;
  v28 = 0;
  v29 = vdupq_n_s64(0x7FF8000000000000uLL);
  v30 = v29;
  v31 = v29;
  v32 = v29;
  v33 = 0x7FF8000000000000;
  v34 = 0;
  v35 = v29;
  v36 = v29;
  v37 = v29;
  v38 = v29;
  v39 = 0x7FF8000000000000;
  if (!raven::VelocityChecker::HandleEvent(*(v3 + 1952), v4, v5))
  {
    sub_1D0C1B78C(&v40, v5);
  }
}

void sub_1D0C1BB88(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 56);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  if (v1)
  {
    sub_1D0B7CAB8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::VelocityChecker::HandleEvent(raven::VelocityChecker *this, const raven::VelocityEvent *a2, raven::VelocityEvent *a3)
{
  if (*(this + 8))
  {
    v4 = *(a2 + 200);
    v8 = v4 > 0xD;
    v5 = (1 << v4) & 0x3808;
    v6 = v8 || v5 == 0;
    if (v6 && (*(a2 + 36) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a2 + 37) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a2 + 38) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v7 = *(a2 + 39);
      v8 = v7 < 0 || ((v7 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
      if (!v8 || (v7 - 1) <= 0xFFFFFFFFFFFFELL)
      {
        v10 = *(a2 + 42);
        v11 = v10 < 0 || ((v10 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
        if (!v11 || (v10 - 1) <= 0xFFFFFFFFFFFFELL)
        {
          v13 = *(a2 + 44);
          v14 = v13 < 0 || ((v13 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
          if ((!v14 || (v13 - 1) <= 0xFFFFFFFFFFFFELL) && (*(a2 + 40) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a2 + 41) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a2 + 43) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v54 = *(a2 + 37);
            v55 = *(a2 + 38);
            v53 = *(a2 + 36);
            v69 = 0x300000003;
            v68 = xmmword_1D0E76C10;
            v67 = &unk_1F4CD5DD0;
            v70 = &v71;
            if (sub_1D0C1C13C(a2, &v67))
            {
              if (sub_1D0C1A5F8(&v67) <= *(this + 4) && ((*(a2 + 200) | 8) != 9 || (*(this + 40) & 1) == 0))
              {
                memcpy(a3 + 8, a2 + 8, 0x160uLL);
                if (*(this + 9) != 1)
                {
                  return 0;
                }

                result = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0E83DF0);
                if (!result)
                {
                  return result;
                }

                if (*(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0) + 1544) != 1)
                {
                  return 0;
                }

                v19 = *(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0) + 194);
                v20 = *(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0) + 195);
                v21 = *(sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0) + 196);
                v22 = *v70;
                v23 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0);
                v24 = v70;
                *v70 = v22 + *(v23 + 197);
                v25 = v24[SHIDWORD(v68)];
                v26 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0);
                v27 = SHIDWORD(v68);
                v28 = v70;
                v70[SHIDWORD(v68)] = v25 + *(v26 + 198);
                v29 = v28[2 * v27];
                v30 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0);
                v31 = v70;
                v70[2 * SHIDWORD(v68)] = v29 + *(v30 + 199);
                v32 = v31[1];
                v33 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0);
                v34 = v70;
                v70[1] = v32 + *(v33 + 198);
                v35 = v34[SHIDWORD(v68) + 1];
                v36 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0);
                v37 = SHIDWORD(v68);
                v38 = v70;
                v70[SHIDWORD(v68) + 1] = v35 + *(v36 + 200);
                v39 = v38[2 * v37 + 1];
                v40 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0);
                v41 = v70;
                v70[2 * SHIDWORD(v68) + 1] = v39 + *(v40 + 201);
                v42 = v41[2];
                v43 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0);
                v44 = v70;
                v70[2] = v42 + *(v43 + 199);
                v45 = v44[SHIDWORD(v68) + 2];
                v46 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0);
                v47 = SHIDWORD(v68);
                v48 = v70;
                v70[SHIDWORD(v68) + 2] = v45 + *(v46 + 201);
                v49 = v48[2 * v47 + 2];
                v50 = sub_1D0BF4B10((*(this + 2) + 16), &unk_1D0E83DF0);
                v70[2 * SHIDWORD(v68) + 2] = v49 + *(v50 + 202);
                v64 = 0x100000003;
                v63 = xmmword_1D0E7DCC0;
                v62 = &unk_1F4CDEB28;
                v65 = v66;
                v66[0] = v53 - v19;
                v66[1] = v54 - v20;
                v66[2] = v55 - v21;
                v61 = INFINITY;
                sub_1D0D4BAFC(&v67, &v61, v60);
                if ((*&v61 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v61 <= *(this + 4))
                {
                  sub_1D0D4BC50(&v62, v56);
                  sub_1D0BFB8FC(v56, v60, v57);
                  sub_1D0BFC678(v57, &v62, v58);
                  return (((fabs(sqrt(*v59)) > *(this + 3)) | ~*(this + 8)) << 31 >> 31);
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    LOWORD(v67) = 12;
    LOBYTE(v60[0]) = 4;
    v51 = (*(*a2 + 16))(a2, a2, a3);
    cnprint::CNPrinter::Print(&v67, v60, "t,%.3lf,VelocityChecker, not configured", v52 + v51);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0C1C13C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 3 && *(a2 + 12) == 3)
  {
    v3 = *(a1 + 280);
  }

  else
  {
    v3 = 0;
  }

  if (v3 == 1)
  {
    v4 = *(a2 + 32);
    *v4 = *(a1 + 312);
    v5 = *(a2 + 20);
    v6 = &v4[v5];
    *v6 = *(a1 + 320);
    v7 = &v4[2 * v5];
    *v7 = *(a1 + 328);
    v4[1] = *(a1 + 320);
    v6[1] = *(a1 + 336);
    v4[((2 * v5) | 1)] = *(a1 + 344);
    v4[2] = *(a1 + 328);
    v6[2] = *(a1 + 344);
    v7[2] = *(a1 + 352);
  }

  return v3;
}

void sub_1D0C1C1C4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0C050F4(v7, a3);
  if ((v14 | 8) == 9 && v9 == 1 && COERCE__INT64(fabs(*&v10 + *(&v9 + 1))) <= 0x7FEFFFFFFFFFFFFFLL && COERCE__INT64(fabs(*(&v8 + 1) + v8)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v4 = *(v3 + 224);
    v5 = v11;
    *(v3 + 264) = v10;
    *(v3 + 280) = v5;
    v6 = v13;
    *(v3 + 296) = v12;
    *(v3 + 312) = v6;
    *(v3 + 232) = v8;
    *(v3 + 248) = v9;
    if ((v4 & 1) == 0)
    {
      *(v3 + 224) = 1;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::LogEntry::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::LogEntry *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

      *(this + 7) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v25 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25))
        {
          return 0;
        }
      }

      else
      {
        v25 = *v9;
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
      if (!CoreNavigation::CLP::LogEntry::Raven::RavenOutput::MergePartialFromCodedStream(v8, a2, v12) || *(a2 + 36) != 1)
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
        *(a2 + 1) = v16 + 1;
LABEL_27:
        *(this + 7) |= 2u;
        v17 = *(this + 2);
        if (!v17)
        {
          operator new();
        }

        v26 = 0;
        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26))
          {
            return 0;
          }
        }

        else
        {
          v26 = *v18;
          *(a2 + 1) = v18 + 1;
        }

        v19 = *(a2 + 14);
        v20 = *(a2 + 15);
        *(a2 + 14) = v19 + 1;
        if (v19 >= v20)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Raven::RavenPlatformInfo::MergePartialFromCodedStream(v17, a2, v21) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v22 = *(a2 + 14);
        v14 = __OFSUB__(v22, 1);
        v23 = v22 - 1;
        if (v23 < 0 == v14)
        {
          *(a2 + 14) = v23;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t CoreNavigation::CLP::LogEntry::Raven::RavenOutput::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::RavenOutput *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
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
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 == 4)
          {
            if (v8 == 2)
            {
              goto LABEL_68;
            }

            goto LABEL_28;
          }

          if (v7 == 5)
          {
            if (v8 != 2)
            {
              goto LABEL_28;
            }

LABEL_82:
            *(this + 15) |= 0x10u;
            v42 = *(this + 5);
            if (!v42)
            {
              operator new();
            }

            v58 = 0;
            v43 = *(a2 + 1);
            if (v43 >= *(a2 + 2) || *v43 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v58))
              {
                return 0;
              }
            }

            else
            {
              v58 = *v43;
              *(a2 + 1) = v43 + 1;
            }

            v44 = *(a2 + 14);
            v45 = *(a2 + 15);
            *(a2 + 14) = v44 + 1;
            if (v44 >= v45)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::Raven::NrBiases::MergePartialFromCodedStream(v42, a2, v46) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v47 = *(a2 + 14);
            v15 = __OFSUB__(v47, 1);
            v48 = v47 - 1;
            if (v48 < 0 == v15)
            {
              *(a2 + 14) = v48;
            }

            v49 = *(a2 + 1);
            if (v49 < *(a2 + 2) && *v49 == 50)
            {
              *(a2 + 1) = v49 + 1;
              goto LABEL_96;
            }
          }

          else
          {
            if (v7 != 6 || v8 != 2)
            {
              goto LABEL_28;
            }

LABEL_96:
            *(this + 15) |= 0x20u;
            v50 = *(this + 6);
            if (!v50)
            {
              operator new();
            }

            v58 = 0;
            v51 = *(a2 + 1);
            if (v51 >= *(a2 + 2) || *v51 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v58))
              {
                return 0;
              }
            }

            else
            {
              v58 = *v51;
              *(a2 + 1) = v51 + 1;
            }

            v52 = *(a2 + 14);
            v53 = *(a2 + 15);
            *(a2 + 14) = v52 + 1;
            if (v52 >= v53)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::MergePartialFromCodedStream(v50, a2, v54) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v55 = *(a2 + 14);
            v15 = __OFSUB__(v55, 1);
            v56 = v55 - 1;
            if (v56 < 0 == v15)
            {
              *(a2 + 14) = v56;
            }

            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_28;
        }

        *(this + 15) |= 1u;
        v9 = *(this + 1);
        if (!v9)
        {
          operator new();
        }

        v58 = 0;
        v10 = *(a2 + 1);
        if (v10 >= *(a2 + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v58))
          {
            return 0;
          }
        }

        else
        {
          v58 = *v10;
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
        if (!CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::MergePartialFromCodedStream(v9, a2, v13) || *(a2 + 36) != 1)
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
        if (v17 < *(a2 + 2) && *v17 == 18)
        {
          *(a2 + 1) = v17 + 1;
          goto LABEL_40;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_28;
      }

LABEL_40:
      *(this + 15) |= 2u;
      v18 = *(this + 2);
      if (!v18)
      {
        operator new();
      }

      v58 = 0;
      v19 = *(a2 + 1);
      if (v19 >= *(a2 + 2) || *v19 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v58))
        {
          return 0;
        }
      }

      else
      {
        v58 = *v19;
        *(a2 + 1) = v19 + 1;
      }

      v20 = *(a2 + 14);
      v21 = *(a2 + 15);
      *(a2 + 14) = v20 + 1;
      if (v20 >= v21)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::MergePartialFromCodedStream(v18, a2, v22) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v23 = *(a2 + 14);
      v15 = __OFSUB__(v23, 1);
      v24 = v23 - 1;
      if (v24 < 0 == v15)
      {
        *(a2 + 14) = v24;
      }

      v25 = *(a2 + 1);
      if (v25 < *(a2 + 2) && *v25 == 26)
      {
        *(a2 + 1) = v25 + 1;
LABEL_54:
        *(this + 15) |= 4u;
        v26 = *(this + 3);
        if (!v26)
        {
          operator new();
        }

        v58 = 0;
        v27 = *(a2 + 1);
        if (v27 >= *(a2 + 2) || *v27 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v58))
          {
            return 0;
          }
        }

        else
        {
          v58 = *v27;
          *(a2 + 1) = v27 + 1;
        }

        v28 = *(a2 + 14);
        v29 = *(a2 + 15);
        *(a2 + 14) = v28 + 1;
        if (v28 >= v29)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Raven::EstimatorState::MergePartialFromCodedStream(v26, a2, v30) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v31 = *(a2 + 14);
        v15 = __OFSUB__(v31, 1);
        v32 = v31 - 1;
        if (v32 < 0 == v15)
        {
          *(a2 + 14) = v32;
        }

        v33 = *(a2 + 1);
        if (v33 < *(a2 + 2) && *v33 == 34)
        {
          *(a2 + 1) = v33 + 1;
LABEL_68:
          *(this + 15) |= 8u;
          v34 = *(this + 4);
          if (!v34)
          {
            operator new();
          }

          v58 = 0;
          v35 = *(a2 + 1);
          if (v35 >= *(a2 + 2) || *v35 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v58))
            {
              return 0;
            }
          }

          else
          {
            v58 = *v35;
            *(a2 + 1) = v35 + 1;
          }

          v36 = *(a2 + 14);
          v37 = *(a2 + 15);
          *(a2 + 14) = v36 + 1;
          if (v36 >= v37)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Raven::NrParameters::MergePartialFromCodedStream(v34, a2, v38) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v39 = *(a2 + 14);
          v15 = __OFSUB__(v39, 1);
          v40 = v39 - 1;
          if (v40 < 0 == v15)
          {
            *(a2 + 14) = v40;
          }

          v41 = *(a2 + 1);
          if (v41 < *(a2 + 2) && *v41 == 42)
          {
            *(a2 + 1) = v41 + 1;
            goto LABEL_82;
          }
        }
      }
    }

    if (v7 == 3 && v8 == 2)
    {
      goto LABEL_54;
    }

LABEL_28:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::EstimatorHealth *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
LABEL_1:
    v5 = *(a2 + 1);
    if (v5 < *(a2 + 2))
    {
      TagFallback = *v5;
      if ((TagFallback & 0x80000000) == 0)
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }

        goto LABEL_6;
      }
    }

    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
    *(a2 + 8) = TagFallback;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_6:
    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 2)
        {
          goto LABEL_58;
        }

        *(this + 73) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v117[0] = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v117))
          {
            return 0;
          }
        }

        else
        {
          v117[0] = *v9;
          *(a2 + 1) = v9 + 1;
        }

        v20 = *(a2 + 14);
        v21 = *(a2 + 15);
        *(a2 + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergePartialFromCodedStream(v8, a2, v22) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v23 = *(a2 + 14);
        v24 = __OFSUB__(v23, 1);
        v25 = v23 - 1;
        if (v25 < 0 == v24)
        {
          *(a2 + 14) = v25;
        }

        v26 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v26 >= v14 || *v26 != 16)
        {
          continue;
        }

        v15 = v26 + 1;
        *(a2 + 1) = v15;
        goto LABEL_70;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
LABEL_70:
        v117[0] = 0;
        if (v15 >= v14 || (v27 = *v15, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v117);
          if (!result)
          {
            return result;
          }

          v27 = v117[0];
        }

        else
        {
          *(a2 + 1) = v15 + 1;
        }

        if (v27 <= 6)
        {
          *(this + 73) |= 2u;
          *(this + 4) = v27;
        }

        v29 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v29 >= v10 || *v29 != 24)
        {
          continue;
        }

        v11 = v29 + 1;
        *(a2 + 1) = v11;
LABEL_80:
        v117[0] = 0;
        if (v11 >= v10 || (v30 = *v11, (v30 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v117);
          if (!result)
          {
            return result;
          }

          v30 = v117[0];
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v30 <= 3)
        {
          *(this + 73) |= 4u;
          *(this + 5) = v30;
        }

        v31 = *(a2 + 1);
        if (v31 >= *(a2 + 2) || *v31 != 33)
        {
          continue;
        }

        *(a2 + 1) = v31 + 1;
LABEL_90:
        *v117 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v117) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v117;
        *(this + 73) |= 8u;
        v32 = *(a2 + 1);
        if (v32 >= *(a2 + 2) || *v32 != 41)
        {
          continue;
        }

        *(a2 + 1) = v32 + 1;
LABEL_94:
        *v117 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v117) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v117;
        *(this + 73) |= 0x10u;
        v33 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v33 >= v12 || *v33 != 48)
        {
          continue;
        }

        v16 = v33 + 1;
        *(a2 + 1) = v16;
LABEL_98:
        if (v16 >= v12 || (v34 = *v16, v34 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v35 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v34;
          v35 = v16 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 73) |= 0x20u;
        if (v35 >= v12 || *v35 != 56)
        {
          continue;
        }

        v17 = v35 + 1;
        *(a2 + 1) = v17;
LABEL_106:
        if (v17 >= v12 || (v36 = *v17, v36 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v37 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v36;
          v37 = v17 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 73) |= 0x40u;
        if (v37 >= v12 || *v37 != 64)
        {
          continue;
        }

        v13 = v37 + 1;
        *(a2 + 1) = v13;
LABEL_114:
        if (v13 >= v12 || (v38 = *v13, v38 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v39 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v38;
          v39 = v13 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 73) |= 0x80u;
        if (v39 >= v12 || *v39 != 73)
        {
          continue;
        }

        *(a2 + 1) = v39 + 1;
LABEL_122:
        *v117 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v117) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = *v117;
        *(this + 73) |= 0x100u;
        v40 = *(a2 + 1);
        if (v40 >= *(a2 + 2) || *v40 != 81)
        {
          continue;
        }

        *(a2 + 1) = v40 + 1;
LABEL_126:
        *v117 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v117) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v117;
        *(this + 73) |= 0x200u;
        v41 = *(a2 + 1);
        if (v41 >= *(a2 + 2) || *v41 != 89)
        {
          continue;
        }

        *(a2 + 1) = v41 + 1;
LABEL_130:
        *v117 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v117) & 1) == 0)
        {
          return 0;
        }

        *(this + 10) = *v117;
        *(this + 73) |= 0x400u;
        v42 = *(a2 + 1);
        if (v42 >= *(a2 + 2) || *v42 != 97)
        {
          continue;
        }

        *(a2 + 1) = v42 + 1;
LABEL_134:
        *v117 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v117) & 1) == 0)
        {
          return 0;
        }

        *(this + 11) = *v117;
        *(this + 73) |= 0x800u;
        v43 = *(a2 + 1);
        if (v43 >= *(a2 + 2) || *v43 != 105)
        {
          continue;
        }

        *(a2 + 1) = v43 + 1;
LABEL_138:
        *v117 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v117) & 1) == 0)
        {
          return 0;
        }

        *(this + 12) = *v117;
        *(this + 73) |= 0x1000u;
        v44 = *(a2 + 1);
        if (v44 >= *(a2 + 2) || *v44 != 113)
        {
          continue;
        }

        *(a2 + 1) = v44 + 1;
LABEL_142:
        *v117 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v117) & 1) == 0)
        {
          return 0;
        }

        *(this + 13) = *v117;
        *(this + 73) |= 0x2000u;
        v45 = *(a2 + 1);
        if (v45 >= *(a2 + 2) || *v45 != 122)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v45 + 1;
LABEL_146:
          v46 = *(this + 31);
          v47 = *(this + 30);
          if (v47 >= v46)
          {
            if (v46 == *(this + 32))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 112));
              v46 = *(this + 31);
            }

            *(this + 31) = v46 + 1;
            operator new();
          }

          v48 = *(this + 14);
          *(this + 30) = v47 + 1;
          v49 = *(v48 + 8 * v47);
          v117[0] = 0;
          v50 = *(a2 + 1);
          if (v50 >= *(a2 + 2) || *v50 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v117))
            {
              return 0;
            }
          }

          else
          {
            v117[0] = *v50;
            *(a2 + 1) = v50 + 1;
          }

          v51 = *(a2 + 14);
          v52 = *(a2 + 15);
          *(a2 + 14) = v51 + 1;
          if (v51 >= v52)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergePartialFromCodedStream(v49, a2, v53) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v54 = *(a2 + 14);
          v24 = __OFSUB__(v54, 1);
          v55 = v54 - 1;
          if (v55 < 0 == v24)
          {
            *(a2 + 14) = v55;
          }

          v45 = *(a2 + 1);
          v56 = *(a2 + 2);
        }

        while (v45 < v56 && *v45 == 122);
        if (v56 - v45 < 2)
        {
          continue;
        }

        v57 = *v45;
        do
        {
          if (v57 != 130 || v45[1] != 1)
          {
            goto LABEL_1;
          }

          *(a2 + 1) = v45 + 2;
LABEL_167:
          v58 = *(this + 37);
          v59 = *(this + 36);
          if (v59 >= v58)
          {
            if (v58 == *(this + 38))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 136));
              v58 = *(this + 37);
            }

            *(this + 37) = v58 + 1;
            operator new();
          }

          v60 = *(this + 17);
          *(this + 36) = v59 + 1;
          v61 = *(v60 + 8 * v59);
          v117[0] = 0;
          v62 = *(a2 + 1);
          if (v62 >= *(a2 + 2) || *v62 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v117))
            {
              return 0;
            }
          }

          else
          {
            v117[0] = *v62;
            *(a2 + 1) = v62 + 1;
          }

          v63 = *(a2 + 14);
          v64 = *(a2 + 15);
          *(a2 + 14) = v63 + 1;
          if (v63 >= v64)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergePartialFromCodedStream(v61, a2, v65) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v66 = *(a2 + 14);
          v24 = __OFSUB__(v66, 1);
          v67 = v66 - 1;
          if (v67 < 0 == v24)
          {
            *(a2 + 14) = v67;
          }

          v45 = *(a2 + 1);
          if (*(a2 + 4) - v45 <= 1)
          {
            goto LABEL_1;
          }

          v57 = *v45;
        }

        while (v57 != 137);
        if (v45[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v45 + 2;
LABEL_185:
        *v117 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v117) & 1) == 0)
        {
          return 0;
        }

        *(this + 20) = *v117;
        *(this + 73) |= 0x10000u;
        v68 = *(a2 + 1);
        if (*(a2 + 4) - v68 < 2 || *v68 != 145 || v68[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v68 + 2;
LABEL_190:
        *v117 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v117) & 1) == 0)
        {
          return 0;
        }

        *(this + 21) = *v117;
        *(this + 73) |= 0x20000u;
        v69 = *(a2 + 1);
        if (*(a2 + 4) - v69 < 2 || *v69 != 153 || v69[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v69 + 2;
LABEL_195:
        *v117 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v117) & 1) == 0)
        {
          return 0;
        }

        *(this + 22) = *v117;
        *(this + 73) |= 0x40000u;
        v70 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v19 - v70 >= 2 && *v70 == 160 && v70[1] == 1)
        {
          v18 = (v70 + 2);
          *(a2 + 1) = v18;
LABEL_200:
          if (v18 >= v19 || (v71 = *v18, v71 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 23);
            if (!result)
            {
              return result;
            }

            v72 = *(a2 + 1);
            v19 = *(a2 + 2);
          }

          else
          {
            *(this + 23) = v71;
            v72 = (v18 + 1);
            *(a2 + 1) = v72;
          }

          *(this + 73) |= 0x80000u;
          if (v19 - v72 >= 2)
          {
            v73 = *v72;
            do
            {
              if (v73 != 170 || v72[1] != 1)
              {
                goto LABEL_1;
              }

              *(a2 + 1) = v72 + 2;
LABEL_210:
              v74 = *(this + 51);
              v75 = *(this + 50);
              if (v75 >= v74)
              {
                if (v74 == *(this + 52))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 192));
                  v74 = *(this + 51);
                }

                *(this + 51) = v74 + 1;
                operator new();
              }

              v76 = *(this + 24);
              *(this + 50) = v75 + 1;
              v77 = *(v76 + 8 * v75);
              v117[0] = 0;
              v78 = *(a2 + 1);
              if (v78 >= *(a2 + 2) || *v78 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v117))
                {
                  return 0;
                }
              }

              else
              {
                v117[0] = *v78;
                *(a2 + 1) = v78 + 1;
              }

              v79 = *(a2 + 14);
              v80 = *(a2 + 15);
              *(a2 + 14) = v79 + 1;
              if (v79 >= v80)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergePartialFromCodedStream(v77, a2, v81) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v82 = *(a2 + 14);
              v24 = __OFSUB__(v82, 1);
              v83 = v82 - 1;
              if (v83 < 0 == v24)
              {
                *(a2 + 14) = v83;
              }

              v72 = *(a2 + 1);
              if (*(a2 + 4) - v72 <= 1)
              {
                goto LABEL_1;
              }

              v73 = *v72;
            }

            while (v73 != 178);
            while (1)
            {
              if (v72[1] != 1)
              {
                goto LABEL_1;
              }

              *(a2 + 1) = v72 + 2;
LABEL_228:
              v84 = *(this + 57);
              v85 = *(this + 56);
              if (v85 >= v84)
              {
                if (v84 == *(this + 58))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 216));
                  v84 = *(this + 57);
                }

                *(this + 57) = v84 + 1;
                operator new();
              }

              v86 = *(this + 27);
              *(this + 56) = v85 + 1;
              v87 = *(v86 + 8 * v85);
              v117[0] = 0;
              v88 = *(a2 + 1);
              if (v88 >= *(a2 + 2) || *v88 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v117))
                {
                  return 0;
                }
              }

              else
              {
                v117[0] = *v88;
                *(a2 + 1) = v88 + 1;
              }

              v89 = *(a2 + 14);
              v90 = *(a2 + 15);
              *(a2 + 14) = v89 + 1;
              if (v89 >= v90)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergePartialFromCodedStream(v87, a2, v91) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v92 = *(a2 + 14);
              v24 = __OFSUB__(v92, 1);
              v93 = v92 - 1;
              if (v93 < 0 == v24)
              {
                *(a2 + 14) = v93;
              }

              v72 = *(a2 + 1);
              if (*(a2 + 4) - v72 <= 1)
              {
                goto LABEL_1;
              }

              v94 = *v72;
              if (v94 == 186)
              {
                break;
              }

              if (v94 != 178)
              {
                goto LABEL_1;
              }
            }

            while (1)
            {
              if (v72[1] != 1)
              {
                goto LABEL_1;
              }

              *(a2 + 1) = v72 + 2;
LABEL_248:
              v95 = *(this + 63);
              v96 = *(this + 62);
              if (v96 >= v95)
              {
                if (v95 == *(this + 64))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 240));
                  v95 = *(this + 63);
                }

                *(this + 63) = v95 + 1;
                operator new();
              }

              v97 = *(this + 30);
              *(this + 62) = v96 + 1;
              v98 = *(v97 + 8 * v96);
              v117[0] = 0;
              v99 = *(a2 + 1);
              if (v99 >= *(a2 + 2) || *v99 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v117))
                {
                  return 0;
                }
              }

              else
              {
                v117[0] = *v99;
                *(a2 + 1) = v99 + 1;
              }

              v100 = *(a2 + 14);
              v101 = *(a2 + 15);
              *(a2 + 14) = v100 + 1;
              if (v100 >= v101)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergePartialFromCodedStream(v98, a2, v102) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v103 = *(a2 + 14);
              v24 = __OFSUB__(v103, 1);
              v104 = v103 - 1;
              if (v104 < 0 == v24)
              {
                *(a2 + 14) = v104;
              }

              v72 = *(a2 + 1);
              if (*(a2 + 4) - v72 <= 1)
              {
                goto LABEL_1;
              }

              v105 = *v72;
              if (v105 == 194)
              {
                break;
              }

              if (v105 != 186)
              {
                goto LABEL_1;
              }
            }

            if (v72[1] == 1)
            {
              do
              {
                *(a2 + 1) = v72 + 2;
LABEL_268:
                v106 = *(this + 68);
                v107 = *(this + 69);
                if (v106 >= v107)
                {
                  if (v107 == *(this + 70))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 264));
                    v107 = *(this + 69);
                  }

                  *(this + 69) = v107 + 1;
                  operator new();
                }

                v108 = *(this + 33);
                *(this + 68) = v106 + 1;
                v109 = *(v108 + 8 * v106);
                v117[0] = 0;
                v110 = *(a2 + 1);
                if (v110 >= *(a2 + 2) || *v110 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v117))
                  {
                    return 0;
                  }
                }

                else
                {
                  v117[0] = *v110;
                  *(a2 + 1) = v110 + 1;
                }

                v111 = *(a2 + 14);
                v112 = *(a2 + 15);
                *(a2 + 14) = v111 + 1;
                if (v111 >= v112)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                if (!CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergePartialFromCodedStream(v109, a2, v113) || *(a2 + 36) != 1)
                {
                  return 0;
                }

                wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                v114 = *(a2 + 14);
                v24 = __OFSUB__(v114, 1);
                v115 = v114 - 1;
                if (v115 < 0 == v24)
                {
                  *(a2 + 14) = v115;
                }

                v72 = *(a2 + 1);
                v116 = *(a2 + 2);
              }

              while (v116 - v72 > 1 && *v72 == 194 && v72[1] == 1);
              if (v72 == v116 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }
            }
          }
        }

        break;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_80;
      case 4u:
        if (v7 == 1)
        {
          goto LABEL_90;
        }

        goto LABEL_58;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_94;
        }

        goto LABEL_58;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v16 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_98;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v17 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_106;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_114;
      case 9u:
        if (v7 == 1)
        {
          goto LABEL_122;
        }

        goto LABEL_58;
      case 0xAu:
        if (v7 == 1)
        {
          goto LABEL_126;
        }

        goto LABEL_58;
      case 0xBu:
        if (v7 == 1)
        {
          goto LABEL_130;
        }

        goto LABEL_58;
      case 0xCu:
        if (v7 == 1)
        {
          goto LABEL_134;
        }

        goto LABEL_58;
      case 0xDu:
        if (v7 == 1)
        {
          goto LABEL_138;
        }

        goto LABEL_58;
      case 0xEu:
        if (v7 == 1)
        {
          goto LABEL_142;
        }

        goto LABEL_58;
      case 0xFu:
        if (v7 == 2)
        {
          goto LABEL_146;
        }

        goto LABEL_58;
      case 0x10u:
        if (v7 == 2)
        {
          goto LABEL_167;
        }

        goto LABEL_58;
      case 0x11u:
        if (v7 == 1)
        {
          goto LABEL_185;
        }

        goto LABEL_58;
      case 0x12u:
        if (v7 == 1)
        {
          goto LABEL_190;
        }

        goto LABEL_58;
      case 0x13u:
        if (v7 == 1)
        {
          goto LABEL_195;
        }

        goto LABEL_58;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_58;
        }

        v18 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_200;
      case 0x15u:
        if (v7 == 2)
        {
          goto LABEL_210;
        }

        goto LABEL_58;
      case 0x16u:
        if (v7 == 2)
        {
          goto LABEL_228;
        }

        goto LABEL_58;
      case 0x17u:
        if (v7 == 2)
        {
          goto LABEL_248;
        }

        goto LABEL_58;
      case 0x18u:
        if (v7 != 2)
        {
          goto LABEL_58;
        }

        goto LABEL_268;
      default:
LABEL_58:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::TimeStamp *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
          if (v8 != 2)
          {
            goto LABEL_21;
          }

          goto LABEL_52;
        }

        if (v7 == 4)
        {
          if (v8 != 2)
          {
            goto LABEL_21;
          }

LABEL_66:
          *(this + 13) |= 8u;
          v34 = *(this + 4);
          if (!v34)
          {
            operator new();
          }

          v43[0] = 0;
          v35 = *(a2 + 1);
          if (v35 >= *(a2 + 2) || *v35 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v43))
            {
              return 0;
            }
          }

          else
          {
            v43[0] = *v35;
            *(a2 + 1) = v35 + 1;
          }

          v36 = *(a2 + 14);
          v37 = *(a2 + 15);
          *(a2 + 14) = v36 + 1;
          if (v36 >= v37)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Raven::TimeStruct::MergePartialFromCodedStream(v34, a2, v38) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v39 = *(a2 + 14);
          v15 = __OFSUB__(v39, 1);
          v40 = v39 - 1;
          if (v40 < 0 == v15)
          {
            *(a2 + 14) = v40;
          }

          v41 = *(a2 + 1);
          if (v41 < *(a2 + 2) && *v41 == 41)
          {
            *(a2 + 1) = v41 + 1;
            goto LABEL_80;
          }
        }

        else
        {
          if (v7 != 5 || v8 != 1)
          {
            goto LABEL_21;
          }

LABEL_80:
          *v43 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v43) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = *v43;
          *(this + 13) |= 0x10u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_21;
      }

      *(this + 13) |= 1u;
      v9 = *(this + 1);
      if (!v9)
      {
        operator new();
      }

      v43[0] = 0;
      v10 = *(a2 + 1);
      if (v10 >= *(a2 + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v43))
        {
          return 0;
        }
      }

      else
      {
        v43[0] = *v10;
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
      if (!CoreNavigation::CLP::LogEntry::Raven::TimeStruct::MergePartialFromCodedStream(v9, a2, v13) || *(a2 + 36) != 1)
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
      if (v17 < *(a2 + 2) && *v17 == 18)
      {
        *(a2 + 1) = v17 + 1;
LABEL_38:
        *(this + 13) |= 2u;
        v18 = *(this + 2);
        if (!v18)
        {
          operator new();
        }

        v43[0] = 0;
        v19 = *(a2 + 1);
        if (v19 >= *(a2 + 2) || *v19 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v43))
          {
            return 0;
          }
        }

        else
        {
          v43[0] = *v19;
          *(a2 + 1) = v19 + 1;
        }

        v20 = *(a2 + 14);
        v21 = *(a2 + 15);
        *(a2 + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Raven::TimeStruct::MergePartialFromCodedStream(v18, a2, v22) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v23 = *(a2 + 14);
        v15 = __OFSUB__(v23, 1);
        v24 = v23 - 1;
        if (v24 < 0 == v15)
        {
          *(a2 + 14) = v24;
        }

        v25 = *(a2 + 1);
        if (v25 < *(a2 + 2) && *v25 == 26)
        {
          *(a2 + 1) = v25 + 1;
LABEL_52:
          *(this + 13) |= 4u;
          v26 = *(this + 3);
          if (!v26)
          {
            operator new();
          }

          v43[0] = 0;
          v27 = *(a2 + 1);
          if (v27 >= *(a2 + 2) || *v27 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v43))
            {
              return 0;
            }
          }

          else
          {
            v43[0] = *v27;
            *(a2 + 1) = v27 + 1;
          }

          v28 = *(a2 + 14);
          v29 = *(a2 + 15);
          *(a2 + 14) = v28 + 1;
          if (v28 >= v29)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Raven::TimeStruct::MergePartialFromCodedStream(v26, a2, v30) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v31 = *(a2 + 14);
          v15 = __OFSUB__(v31, 1);
          v32 = v31 - 1;
          if (v32 < 0 == v15)
          {
            *(a2 + 14) = v32;
          }

          v33 = *(a2 + 1);
          if (v33 < *(a2 + 2) && *v33 == 34)
          {
            *(a2 + 1) = v33 + 1;
            goto LABEL_66;
          }
        }
      }
    }

    if (v7 == 2 && v8 == 2)
    {
      goto LABEL_38;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::TimeStruct::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::TimeStruct *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v13 = 0;
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, (v10 & 0x8000000000000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v13);
        if (!result)
        {
          return result;
        }

        v10 = v13;
        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 1) = v10;
      *(this + 7) |= 1u;
      if (v11 < v8 && *v11 == 17)
      {
        *(a2 + 1) = v11 + 1;
LABEL_21:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v13;
        *(this + 7) |= 2u;
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
      goto LABEL_21;
    }

LABEL_13:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v15 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_37;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_47;
        }

        goto LABEL_20;
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v12 >= v8 || (v13 = *v12, v13 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v14 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v13;
        v14 = v12 + 1;
        *(a2 + 1) = v14;
      }

      *(this + 10) |= 1u;
      if (v14 < v8 && *v14 == 16)
      {
        v9 = v14 + 1;
        *(a2 + 1) = v9;
LABEL_29:
        if (v9 >= v8 || (v16 = *v9, v16 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v16;
          v17 = v9 + 1;
          *(a2 + 1) = v17;
        }

        *(this + 10) |= 2u;
        if (v17 < v8 && *v17 == 24)
        {
          v15 = v17 + 1;
          *(a2 + 1) = v15;
LABEL_37:
          v23 = 0;
          if (v15 >= v8 || (v18 = *v15, (v18 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23);
            if (!result)
            {
              return result;
            }

            v18 = v23;
          }

          else
          {
            *(a2 + 1) = v15 + 1;
          }

          if (v18 <= 0x23)
          {
            *(this + 10) |= 4u;
            *(this + 8) = v18;
          }

          v19 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v19 < v10 && *v19 == 32)
          {
            v11 = v19 + 1;
            *(a2 + 1) = v11;
LABEL_47:
            if (v11 >= v10 || (v20 = *v11, v20 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v21 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v20;
              v21 = v11 + 1;
              *(a2 + 1) = v21;
            }

            *(this + 10) |= 8u;
            if (v21 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_29;
    }

LABEL_20:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::EstimatorActivity *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (2)
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
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 2)
        {
          goto LABEL_71;
        }

        *(this + 57) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v64[0] = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v64))
          {
            return 0;
          }
        }

        else
        {
          v64[0] = *v9;
          *(a2 + 1) = v9 + 1;
        }

        v22 = *(a2 + 14);
        v23 = *(a2 + 15);
        *(a2 + 14) = v22 + 1;
        if (v22 >= v23)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergePartialFromCodedStream(v8, a2, v24) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v25 = *(a2 + 14);
        v26 = __OFSUB__(v25, 1);
        v27 = v25 - 1;
        if (v27 < 0 == v26)
        {
          *(a2 + 14) = v27;
        }

        v28 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v28 >= v14 || *v28 != 16)
        {
          continue;
        }

        v15 = v28 + 1;
        *(a2 + 1) = v15;
        goto LABEL_83;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_71;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
LABEL_83:
        v64[0] = 0;
        if (v15 >= v14 || (v29 = *v15, (v29 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v64);
          if (!result)
          {
            return result;
          }

          v29 = v64[0];
        }

        else
        {
          *(a2 + 1) = v15 + 1;
        }

        if (v29 <= 9)
        {
          *(this + 57) |= 2u;
          *(this + 6) = v29;
        }

        v31 = *(a2 + 1);
        if (v31 >= *(a2 + 2) || *v31 != 25)
        {
          continue;
        }

        *(a2 + 1) = v31 + 1;
LABEL_93:
        *v64 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v64;
        *(this + 57) |= 4u;
        v32 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v32 >= v20 || *v32 != 32)
        {
          continue;
        }

        v21 = v32 + 1;
        *(a2 + 1) = v21;
LABEL_97:
        v64[0] = 0;
        if (v21 >= v20 || (v33 = *v21, (v33 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v64);
          if (!result)
          {
            return result;
          }

          v33 = v64[0];
        }

        else
        {
          *(a2 + 1) = v21 + 1;
        }

        if (v33 <= 3)
        {
          *(this + 57) |= 8u;
          *(this + 7) = v33;
        }

        v34 = *(a2 + 1);
        if (v34 >= *(a2 + 2) || *v34 != 41)
        {
          continue;
        }

        *(a2 + 1) = v34 + 1;
LABEL_107:
        *v64 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v64;
        *(this + 57) |= 0x10u;
        v35 = *(a2 + 1);
        if (v35 >= *(a2 + 2) || *v35 != 49)
        {
          continue;
        }

        *(a2 + 1) = v35 + 1;
LABEL_111:
        *v64 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = *v64;
        *(this + 57) |= 0x20u;
        v36 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v36 >= v18 || *v36 != 56)
        {
          continue;
        }

        v19 = v36 + 1;
        *(a2 + 1) = v19;
LABEL_115:
        v64[0] = 0;
        if (v19 >= v18 || (v37 = *v19, (v37 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v64);
          if (!result)
          {
            return result;
          }

          v37 = v64[0];
        }

        else
        {
          *(a2 + 1) = v19 + 1;
        }

        if (v37 <= 9)
        {
          *(this + 57) |= 0x40u;
          *(this + 12) = v37;
        }

        v38 = *(a2 + 1);
        v16 = *(a2 + 2);
        if (v38 >= v16 || *v38 != 64)
        {
          continue;
        }

        v17 = v38 + 1;
        *(a2 + 1) = v17;
LABEL_125:
        v64[0] = 0;
        if (v17 >= v16 || (v39 = *v17, (v39 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v64);
          if (!result)
          {
            return result;
          }

          v39 = v64[0];
        }

        else
        {
          *(a2 + 1) = v17 + 1;
        }

        if (v39 <= 3)
        {
          *(this + 57) |= 0x80u;
          *(this + 13) = v39;
        }

        v40 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v40 >= v12 || *v40 != 72)
        {
          continue;
        }

        v13 = v40 + 1;
        *(a2 + 1) = v13;
LABEL_135:
        v64[0] = 0;
        if (v13 >= v12 || (v41 = *v13, (v41 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v64);
          if (!result)
          {
            return result;
          }

          v41 = v64[0];
        }

        else
        {
          *(a2 + 1) = v13 + 1;
        }

        if (v41 <= 2)
        {
          *(this + 57) |= 0x100u;
          *(this + 34) = v41;
        }

        v42 = *(a2 + 1);
        if (*(a2 + 4) - v42 < 2 || *v42 != 161 || v42[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v42 + 2;
LABEL_146:
        *v64 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64) & 1) == 0)
        {
          return 0;
        }

        *(this + 7) = *v64;
        *(this + 57) |= 0x200u;
        v43 = *(a2 + 1);
        if (*(a2 + 4) - v43 < 2 || *v43 != 169 || v43[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v43 + 2;
LABEL_151:
        *v64 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = *v64;
        *(this + 57) |= 0x400u;
        v44 = *(a2 + 1);
        if (*(a2 + 4) - v44 < 2 || *v44 != 177 || v44[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v44 + 2;
LABEL_156:
        *v64 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v64;
        *(this + 57) |= 0x800u;
        v45 = *(a2 + 1);
        if (*(a2 + 4) - v45 < 2 || *v45 != 185 || v45[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v45 + 2;
LABEL_161:
        *v64 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64) & 1) == 0)
        {
          return 0;
        }

        *(this + 10) = *v64;
        *(this + 57) |= 0x1000u;
        v46 = *(a2 + 1);
        if (*(a2 + 4) - v46 < 2 || *v46 != 193 || v46[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v46 + 2;
LABEL_166:
        *v64 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64) & 1) == 0)
        {
          return 0;
        }

        *(this + 11) = *v64;
        *(this + 57) |= 0x2000u;
        v47 = *(a2 + 1);
        if (*(a2 + 4) - v47 < 2 || *v47 != 201 || v47[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v47 + 2;
LABEL_171:
        *v64 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64) & 1) == 0)
        {
          return 0;
        }

        *(this + 12) = *v64;
        *(this + 57) |= 0x4000u;
        v48 = *(a2 + 1);
        if (*(a2 + 4) - v48 < 2 || *v48 != 209 || v48[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v48 + 2;
LABEL_176:
        *v64 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64) & 1) == 0)
        {
          return 0;
        }

        *(this + 13) = *v64;
        *(this + 57) |= 0x8000u;
        v49 = *(a2 + 1);
        if (*(a2 + 4) - v49 < 2 || *v49 != 217 || v49[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v49 + 2;
LABEL_181:
        *v64 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64) & 1) == 0)
        {
          return 0;
        }

        *(this + 14) = *v64;
        *(this + 57) |= 0x10000u;
        v50 = *(a2 + 1);
        if (*(a2 + 4) - v50 < 2 || *v50 != 225 || v50[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v50 + 2;
LABEL_186:
        *v64 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64) & 1) == 0)
        {
          return 0;
        }

        *(this + 15) = *v64;
        *(this + 57) |= 0x20000u;
        v51 = *(a2 + 1);
        if (*(a2 + 4) - v51 < 2 || *v51 != 233 || v51[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v51 + 2;
LABEL_191:
        *v64 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64) & 1) == 0)
        {
          return 0;
        }

        *(this + 16) = *v64;
        *(this + 57) |= 0x40000u;
        v52 = *(a2 + 1);
        if (*(a2 + 4) - v52 < 2 || *v52 != 145 || v52[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v52 + 2;
LABEL_196:
        *v64 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64) & 1) == 0)
        {
          return 0;
        }

        *(this + 18) = *v64;
        *(this + 57) |= 0x80000u;
        v53 = *(a2 + 1);
        if (*(a2 + 4) - v53 < 2 || *v53 != 153 || v53[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v53 + 2;
LABEL_201:
        *v64 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64) & 1) == 0)
        {
          return 0;
        }

        *(this + 19) = *v64;
        *(this + 57) |= 0x100000u;
        v54 = *(a2 + 1);
        if (*(a2 + 4) - v54 < 2 || *v54 != 161 || v54[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v54 + 2;
LABEL_206:
        *v64 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64) & 1) == 0)
        {
          return 0;
        }

        *(this + 20) = *v64;
        *(this + 57) |= 0x200000u;
        v55 = *(a2 + 1);
        if (*(a2 + 4) - v55 < 2 || *v55 != 169 || v55[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v55 + 2;
LABEL_211:
        *v64 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64) & 1) == 0)
        {
          return 0;
        }

        *(this + 21) = *v64;
        *(this + 57) |= 0x400000u;
        v56 = *(a2 + 1);
        if (*(a2 + 4) - v56 < 2 || *v56 != 225 || v56[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v56 + 2;
LABEL_216:
        *v64 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64) & 1) == 0)
        {
          return 0;
        }

        *(this + 22) = *v64;
        *(this + 57) |= 0x800000u;
        v57 = *(a2 + 1);
        if (*(a2 + 4) - v57 < 2 || *v57 != 233 || v57[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v57 + 2;
LABEL_221:
        *v64 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64) & 1) == 0)
        {
          return 0;
        }

        *(this + 23) = *v64;
        *(this + 57) |= 0x1000000u;
        v58 = *(a2 + 1);
        if (*(a2 + 4) - v58 < 2 || *v58 != 241 || v58[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v58 + 2;
LABEL_226:
        *v64 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64) & 1) == 0)
        {
          return 0;
        }

        *(this + 24) = *v64;
        *(this + 57) |= 0x2000000u;
        v59 = *(a2 + 1);
        if (*(a2 + 4) - v59 < 2 || *v59 != 249 || v59[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v59 + 2;
LABEL_231:
        *v64 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64) & 1) == 0)
        {
          return 0;
        }

        *(this + 25) = *v64;
        *(this + 57) |= 0x4000000u;
        v60 = *(a2 + 1);
        if (*(a2 + 4) - v60 < 2 || *v60 != 177 || v60[1] != 4)
        {
          continue;
        }

        *(a2 + 1) = v60 + 2;
LABEL_236:
        *v64 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64) & 1) == 0)
        {
          return 0;
        }

        *(this + 26) = *v64;
        *(this + 57) |= 0x8000000u;
        v61 = *(a2 + 1);
        if (*(a2 + 4) - v61 < 2 || *v61 != 185 || v61[1] != 4)
        {
          continue;
        }

        *(a2 + 1) = v61 + 2;
LABEL_241:
        *v64 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v64))
        {
          *(this + 27) = *v64;
          *(this + 57) |= 0x10000000u;
          v62 = *(a2 + 1);
          v10 = *(a2 + 2);
          if (v10 - v62 >= 2 && *v62 == 128 && v62[1] == 5)
          {
            v11 = (v62 + 2);
            *(a2 + 1) = v11;
LABEL_246:
            v64[0] = 0;
            if (v11 >= v10 || (v63 = *v11, (v63 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v64);
              if (!result)
              {
                return result;
              }

              v63 = v64[0];
            }

            else
            {
              *(a2 + 1) = v11 + 1;
            }

            if (v63 <= 7)
            {
              *(this + 57) |= 0x20000000u;
              *(this + 35) = v63;
            }

            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if (v7 == 1)
        {
          goto LABEL_93;
        }

        goto LABEL_71;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_71;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_97;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_107;
        }

        goto LABEL_71;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_111;
        }

        goto LABEL_71;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_71;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_115;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_71;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_125;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_71;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_135;
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
      case 0xFu:
      case 0x10u:
      case 0x11u:
      case 0x12u:
      case 0x13u:
      case 0x1Eu:
      case 0x1Fu:
      case 0x20u:
      case 0x21u:
      case 0x22u:
      case 0x23u:
      case 0x24u:
      case 0x25u:
      case 0x26u:
      case 0x27u:
      case 0x28u:
      case 0x29u:
      case 0x2Au:
      case 0x2Bu:
      case 0x2Cu:
      case 0x2Du:
      case 0x2Eu:
      case 0x2Fu:
      case 0x30u:
      case 0x31u:
      case 0x36u:
      case 0x37u:
      case 0x38u:
      case 0x39u:
      case 0x3Au:
      case 0x3Bu:
      case 0x40u:
      case 0x41u:
      case 0x42u:
      case 0x43u:
      case 0x44u:
      case 0x45u:
        goto LABEL_71;
      case 0x14u:
        if (v7 == 1)
        {
          goto LABEL_146;
        }

        goto LABEL_71;
      case 0x15u:
        if (v7 == 1)
        {
          goto LABEL_151;
        }

        goto LABEL_71;
      case 0x16u:
        if (v7 == 1)
        {
          goto LABEL_156;
        }

        goto LABEL_71;
      case 0x17u:
        if (v7 == 1)
        {
          goto LABEL_161;
        }

        goto LABEL_71;
      case 0x18u:
        if (v7 == 1)
        {
          goto LABEL_166;
        }

        goto LABEL_71;
      case 0x19u:
        if (v7 == 1)
        {
          goto LABEL_171;
        }

        goto LABEL_71;
      case 0x1Au:
        if (v7 == 1)
        {
          goto LABEL_176;
        }

        goto LABEL_71;
      case 0x1Bu:
        if (v7 == 1)
        {
          goto LABEL_181;
        }

        goto LABEL_71;
      case 0x1Cu:
        if (v7 == 1)
        {
          goto LABEL_186;
        }

        goto LABEL_71;
      case 0x1Du:
        if (v7 == 1)
        {
          goto LABEL_191;
        }

        goto LABEL_71;
      case 0x32u:
        if (v7 == 1)
        {
          goto LABEL_196;
        }

        goto LABEL_71;
      case 0x33u:
        if (v7 == 1)
        {
          goto LABEL_201;
        }

        goto LABEL_71;
      case 0x34u:
        if (v7 == 1)
        {
          goto LABEL_206;
        }

        goto LABEL_71;
      case 0x35u:
        if (v7 == 1)
        {
          goto LABEL_211;
        }

        goto LABEL_71;
      case 0x3Cu:
        if (v7 == 1)
        {
          goto LABEL_216;
        }

        goto LABEL_71;
      case 0x3Du:
        if (v7 == 1)
        {
          goto LABEL_221;
        }

        goto LABEL_71;
      case 0x3Eu:
        if (v7 != 1)
        {
          goto LABEL_71;
        }

        goto LABEL_226;
      case 0x3Fu:
        if (v7 == 1)
        {
          goto LABEL_231;
        }

        goto LABEL_71;
      case 0x46u:
        if (v7 == 1)
        {
          goto LABEL_236;
        }

        goto LABEL_71;
      case 0x47u:
        if (v7 == 1)
        {
          goto LABEL_241;
        }

        goto LABEL_71;
      default:
        if (TagFallback >> 3 == 80 && (TagFallback & 7) == 0)
        {
          v11 = *(a2 + 1);
          v10 = *(a2 + 2);
          goto LABEL_246;
        }

LABEL_71:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::EstimatorState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::EstimatorState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
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
          if (TagFallback >> 3 <= 5)
          {
            break;
          }

          if (TagFallback >> 3 <= 7)
          {
            if (v7 == 6)
            {
              if (v8 == 2)
              {
                goto LABEL_110;
              }
            }

            else if (v7 == 7 && v8 == 2)
            {
              goto LABEL_124;
            }

            goto LABEL_42;
          }

          if (v7 == 8)
          {
            if (v8 == 2)
            {
              goto LABEL_138;
            }

            goto LABEL_42;
          }

          if (v7 == 9)
          {
            if (v8 != 2)
            {
              goto LABEL_42;
            }

LABEL_152:
            *(this + 23) |= 0x100u;
            v74 = *(this + 9);
            if (!v74)
            {
              operator new();
            }

            v90 = 0;
            v75 = *(a2 + 1);
            if (v75 >= *(a2 + 2) || *v75 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v90))
              {
                return 0;
              }
            }

            else
            {
              v90 = *v75;
              *(a2 + 1) = v75 + 1;
            }

            v76 = *(a2 + 14);
            v77 = *(a2 + 15);
            *(a2 + 14) = v76 + 1;
            if (v76 >= v77)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerScaleFactor::MergePartialFromCodedStream(v74, a2, v78) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v79 = *(a2 + 14);
            v15 = __OFSUB__(v79, 1);
            v80 = v79 - 1;
            if (v80 < 0 == v15)
            {
              *(a2 + 14) = v80;
            }

            v81 = *(a2 + 1);
            if (v81 < *(a2 + 2) && *v81 == 82)
            {
              *(a2 + 1) = v81 + 1;
              goto LABEL_166;
            }
          }

          else
          {
            if (v7 != 10 || v8 != 2)
            {
              goto LABEL_42;
            }

LABEL_166:
            *(this + 23) |= 0x200u;
            v82 = *(this + 10);
            if (!v82)
            {
              operator new();
            }

            v90 = 0;
            v83 = *(a2 + 1);
            if (v83 >= *(a2 + 2) || *v83 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v90))
              {
                return 0;
              }
            }

            else
            {
              v90 = *v83;
              *(a2 + 1) = v83 + 1;
            }

            v84 = *(a2 + 14);
            v85 = *(a2 + 15);
            *(a2 + 14) = v84 + 1;
            if (v84 >= v85)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::MergePartialFromCodedStream(v82, a2, v86) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v87 = *(a2 + 14);
            v15 = __OFSUB__(v87, 1);
            v88 = v87 - 1;
            if (v88 < 0 == v15)
            {
              *(a2 + 14) = v88;
            }

            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }

        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v7 != 1)
        {
          if (v7 != 2 || v8 != 2)
          {
            goto LABEL_42;
          }

          goto LABEL_54;
        }

        if (v8 != 2)
        {
          goto LABEL_42;
        }

        *(this + 23) |= 1u;
        v9 = *(this + 1);
        if (!v9)
        {
          operator new();
        }

        v90 = 0;
        v10 = *(a2 + 1);
        if (v10 >= *(a2 + 2) || *v10 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v90))
          {
            return 0;
          }
        }

        else
        {
          v90 = *v10;
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
        if (!CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergePartialFromCodedStream(v9, a2, v13) || *(a2 + 36) != 1)
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
        if (v17 < *(a2 + 2) && *v17 == 18)
        {
          *(a2 + 1) = v17 + 1;
LABEL_54:
          *(this + 23) |= 2u;
          v18 = *(this + 2);
          if (!v18)
          {
            operator new();
          }

          v90 = 0;
          v19 = *(a2 + 1);
          if (v19 >= *(a2 + 2) || *v19 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v90))
            {
              return 0;
            }
          }

          else
          {
            v90 = *v19;
            *(a2 + 1) = v19 + 1;
          }

          v20 = *(a2 + 14);
          v21 = *(a2 + 15);
          *(a2 + 14) = v20 + 1;
          if (v20 >= v21)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Raven::UserPosition::MergePartialFromCodedStream(v18, a2, v22) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v23 = *(a2 + 14);
          v15 = __OFSUB__(v23, 1);
          v24 = v23 - 1;
          if (v24 < 0 == v15)
          {
            *(a2 + 14) = v24;
          }

          v25 = *(a2 + 1);
          if (v25 < *(a2 + 2) && *v25 == 26)
          {
            *(a2 + 1) = v25 + 1;
LABEL_68:
            *(this + 23) |= 4u;
            v26 = *(this + 3);
            if (!v26)
            {
              operator new();
            }

            v90 = 0;
            v27 = *(a2 + 1);
            if (v27 >= *(a2 + 2) || *v27 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v90))
              {
                return 0;
              }
            }

            else
            {
              v90 = *v27;
              *(a2 + 1) = v27 + 1;
            }

            v28 = *(a2 + 14);
            v29 = *(a2 + 15);
            *(a2 + 14) = v28 + 1;
            if (v28 >= v29)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::Raven::UserVelocity::MergePartialFromCodedStream(v26, a2, v30) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v31 = *(a2 + 14);
            v15 = __OFSUB__(v31, 1);
            v32 = v31 - 1;
            if (v32 < 0 == v15)
            {
              *(a2 + 14) = v32;
            }

            v33 = *(a2 + 1);
            if (v33 < *(a2 + 2) && *v33 == 34)
            {
              *(a2 + 1) = v33 + 1;
              goto LABEL_82;
            }
          }
        }
      }

      if (v7 == 3)
      {
        if (v8 != 2)
        {
          goto LABEL_42;
        }

        goto LABEL_68;
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_42;
      }

LABEL_82:
      *(this + 23) |= 8u;
      v34 = *(this + 4);
      if (!v34)
      {
        operator new();
      }

      v90 = 0;
      v35 = *(a2 + 1);
      if (v35 >= *(a2 + 2) || *v35 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v90))
        {
          return 0;
        }
      }

      else
      {
        v90 = *v35;
        *(a2 + 1) = v35 + 1;
      }

      v36 = *(a2 + 14);
      v37 = *(a2 + 15);
      *(a2 + 14) = v36 + 1;
      if (v36 >= v37)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::Raven::DevicePosition::MergePartialFromCodedStream(v34, a2, v38) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v39 = *(a2 + 14);
      v15 = __OFSUB__(v39, 1);
      v40 = v39 - 1;
      if (v40 < 0 == v15)
      {
        *(a2 + 14) = v40;
      }

      v41 = *(a2 + 1);
      if (v41 < *(a2 + 2) && *v41 == 42)
      {
        *(a2 + 1) = v41 + 1;
LABEL_96:
        *(this + 23) |= 0x10u;
        v42 = *(this + 5);
        if (!v42)
        {
          operator new();
        }

        v90 = 0;
        v43 = *(a2 + 1);
        if (v43 >= *(a2 + 2) || *v43 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v90))
          {
            return 0;
          }
        }

        else
        {
          v90 = *v43;
          *(a2 + 1) = v43 + 1;
        }

        v44 = *(a2 + 14);
        v45 = *(a2 + 15);
        *(a2 + 14) = v44 + 1;
        if (v44 >= v45)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::MergePartialFromCodedStream(v42, a2, v46) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v47 = *(a2 + 14);
        v15 = __OFSUB__(v47, 1);
        v48 = v47 - 1;
        if (v48 < 0 == v15)
        {
          *(a2 + 14) = v48;
        }

        v49 = *(a2 + 1);
        if (v49 < *(a2 + 2) && *v49 == 50)
        {
          *(a2 + 1) = v49 + 1;
LABEL_110:
          *(this + 23) |= 0x20u;
          v50 = *(this + 6);
          if (!v50)
          {
            operator new();
          }

          v90 = 0;
          v51 = *(a2 + 1);
          if (v51 >= *(a2 + 2) || *v51 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v90))
            {
              return 0;
            }
          }

          else
          {
            v90 = *v51;
            *(a2 + 1) = v51 + 1;
          }

          v52 = *(a2 + 14);
          v53 = *(a2 + 15);
          *(a2 + 14) = v52 + 1;
          if (v52 >= v53)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Raven::DeviceAttitude::MergePartialFromCodedStream(v50, a2, v54) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v55 = *(a2 + 14);
          v15 = __OFSUB__(v55, 1);
          v56 = v55 - 1;
          if (v56 < 0 == v15)
          {
            *(a2 + 14) = v56;
          }

          v57 = *(a2 + 1);
          if (v57 < *(a2 + 2) && *v57 == 58)
          {
            *(a2 + 1) = v57 + 1;
LABEL_124:
            *(this + 23) |= 0x40u;
            v58 = *(this + 7);
            if (!v58)
            {
              operator new();
            }

            v90 = 0;
            v59 = *(a2 + 1);
            if (v59 >= *(a2 + 2) || *v59 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v90))
              {
                return 0;
              }
            }

            else
            {
              v90 = *v59;
              *(a2 + 1) = v59 + 1;
            }

            v60 = *(a2 + 14);
            v61 = *(a2 + 15);
            *(a2 + 14) = v60 + 1;
            if (v60 >= v61)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::Raven::DeviceRateGyroBias::MergePartialFromCodedStream(v58, a2, v62) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v63 = *(a2 + 14);
            v15 = __OFSUB__(v63, 1);
            v64 = v63 - 1;
            if (v64 < 0 == v15)
            {
              *(a2 + 14) = v64;
            }

            v65 = *(a2 + 1);
            if (v65 < *(a2 + 2) && *v65 == 66)
            {
              *(a2 + 1) = v65 + 1;
LABEL_138:
              *(this + 23) |= 0x80u;
              v66 = *(this + 8);
              if (!v66)
              {
                operator new();
              }

              v90 = 0;
              v67 = *(a2 + 1);
              if (v67 >= *(a2 + 2) || *v67 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v90))
                {
                  return 0;
                }
              }

              else
              {
                v90 = *v67;
                *(a2 + 1) = v67 + 1;
              }

              v68 = *(a2 + 14);
              v69 = *(a2 + 15);
              *(a2 + 14) = v68 + 1;
              if (v68 >= v69)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::Raven::DeviceAccelerometerBias::MergePartialFromCodedStream(v66, a2, v70) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v71 = *(a2 + 14);
              v15 = __OFSUB__(v71, 1);
              v72 = v71 - 1;
              if (v72 < 0 == v15)
              {
                *(a2 + 14) = v72;
              }

              v73 = *(a2 + 1);
              if (v73 < *(a2 + 2) && *v73 == 74)
              {
                *(a2 + 1) = v73 + 1;
                goto LABEL_152;
              }
            }
          }
        }
      }
    }

    if (v7 == 5 && v8 == 2)
    {
      goto LABEL_96;
    }

LABEL_42:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::UserPosition::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::UserPosition *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 5)
        {
          break;
        }

        if (TagFallback >> 3 <= 7)
        {
          if (v7 == 6)
          {
            if (v8 == 1)
            {
              goto LABEL_70;
            }
          }

          else if (v7 == 7 && v8 == 1)
          {
            goto LABEL_74;
          }

          goto LABEL_42;
        }

        if (v7 == 8)
        {
          if (v8 == 1)
          {
            goto LABEL_78;
          }

          goto LABEL_42;
        }

        if (v7 == 9)
        {
          if (v8 != 1)
          {
            goto LABEL_42;
          }

LABEL_82:
          *v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
          {
            return 0;
          }

          *(this + 9) = *v27;
          *(this + 23) |= 0x100u;
          v25 = *(a2 + 1);
          if (v25 < *(a2 + 2) && *v25 == 81)
          {
            *(a2 + 1) = v25 + 1;
            goto LABEL_86;
          }
        }

        else
        {
          if (v7 != 10 || v8 != 1)
          {
            goto LABEL_42;
          }

LABEL_86:
          *v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
          {
            return 0;
          }

          *(this + 10) = *v27;
          *(this + 23) |= 0x200u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 <= 2)
      {
        break;
      }

      if (v7 == 3)
      {
        if (v8 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_58;
      }

      if (v7 == 4)
      {
        if (v8 != 1)
        {
          goto LABEL_42;
        }

LABEL_62:
        *v27 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v27;
        *(this + 23) |= 8u;
        v20 = *(a2 + 1);
        if (v20 < *(a2 + 2) && *v20 == 41)
        {
          *(a2 + 1) = v20 + 1;
LABEL_66:
          *v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = *v27;
          *(this + 23) |= 0x10u;
          v21 = *(a2 + 1);
          if (v21 < *(a2 + 2) && *v21 == 49)
          {
            *(a2 + 1) = v21 + 1;
LABEL_70:
            *v27 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
            {
              return 0;
            }

            *(this + 6) = *v27;
            *(this + 23) |= 0x20u;
            v22 = *(a2 + 1);
            if (v22 < *(a2 + 2) && *v22 == 57)
            {
              *(a2 + 1) = v22 + 1;
LABEL_74:
              *v27 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
              {
                return 0;
              }

              *(this + 7) = *v27;
              *(this + 23) |= 0x40u;
              v23 = *(a2 + 1);
              if (v23 < *(a2 + 2) && *v23 == 65)
              {
                *(a2 + 1) = v23 + 1;
LABEL_78:
                *v27 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
                {
                  return 0;
                }

                *(this + 8) = *v27;
                *(this + 23) |= 0x80u;
                v24 = *(a2 + 1);
                if (v24 < *(a2 + 2) && *v24 == 73)
                {
                  *(a2 + 1) = v24 + 1;
                  goto LABEL_82;
                }
              }
            }
          }
        }
      }

      else
      {
        if (v7 == 5 && v8 == 1)
        {
          goto LABEL_66;
        }

LABEL_42:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v7 != 1)
    {
      if (v7 != 2 || v8 != 1)
      {
        goto LABEL_42;
      }

      goto LABEL_54;
    }

    if (v8 != 2)
    {
      goto LABEL_42;
    }

    *(this + 23) |= 1u;
    v9 = *(this + 1);
    if (!v9)
    {
      operator new();
    }

    v27[0] = 0;
    v10 = *(a2 + 1);
    if (v10 >= *(a2 + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v27))
      {
        return 0;
      }
    }

    else
    {
      v27[0] = *v10;
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
    if (!CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergePartialFromCodedStream(v9, a2, v13) || *(a2 + 36) != 1)
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
    if (v17 < *(a2 + 2) && *v17 == 17)
    {
      *(a2 + 1) = v17 + 1;
LABEL_54:
      *v27 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = *v27;
      *(this + 23) |= 2u;
      v18 = *(a2 + 1);
      if (v18 < *(a2 + 2) && *v18 == 25)
      {
        *(a2 + 1) = v18 + 1;
LABEL_58:
        *v27 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v27;
        *(this + 23) |= 4u;
        v19 = *(a2 + 1);
        if (v19 < *(a2 + 2) && *v19 == 33)
        {
          *(a2 + 1) = v19 + 1;
          goto LABEL_62;
        }
      }
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::UserVelocity::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::UserVelocity *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (2)
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
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 2)
        {
          goto LABEL_40;
        }

        *(this + 33) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v31[0] = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v31))
          {
            return 0;
          }
        }

        else
        {
          v31[0] = *v9;
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
        if (!CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergePartialFromCodedStream(v8, a2, v12) || *(a2 + 36) != 1)
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
        if (v16 >= *(a2 + 2) || *v16 != 17)
        {
          continue;
        }

        *(a2 + 1) = v16 + 1;
        goto LABEL_52;
      case 2u:
        if (v7 != 1)
        {
          goto LABEL_40;
        }

LABEL_52:
        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v31;
        *(this + 33) |= 2u;
        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2) || *v17 != 25)
        {
          continue;
        }

        *(a2 + 1) = v17 + 1;
LABEL_56:
        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v31;
        *(this + 33) |= 4u;
        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2) || *v18 != 33)
        {
          continue;
        }

        *(a2 + 1) = v18 + 1;
LABEL_60:
        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v31;
        *(this + 33) |= 8u;
        v19 = *(a2 + 1);
        if (v19 >= *(a2 + 2) || *v19 != 41)
        {
          continue;
        }

        *(a2 + 1) = v19 + 1;
LABEL_64:
        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = *v31;
        *(this + 33) |= 0x10u;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 != 49)
        {
          continue;
        }

        *(a2 + 1) = v20 + 1;
LABEL_68:
        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v31;
        *(this + 33) |= 0x20u;
        v21 = *(a2 + 1);
        if (v21 >= *(a2 + 2) || *v21 != 57)
        {
          continue;
        }

        *(a2 + 1) = v21 + 1;
LABEL_72:
        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
        {
          return 0;
        }

        *(this + 7) = *v31;
        *(this + 33) |= 0x40u;
        v22 = *(a2 + 1);
        if (v22 >= *(a2 + 2) || *v22 != 65)
        {
          continue;
        }

        *(a2 + 1) = v22 + 1;
LABEL_76:
        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = *v31;
        *(this + 33) |= 0x80u;
        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2) || *v23 != 73)
        {
          continue;
        }

        *(a2 + 1) = v23 + 1;
LABEL_80:
        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v31;
        *(this + 33) |= 0x100u;
        v24 = *(a2 + 1);
        if (v24 >= *(a2 + 2) || *v24 != 81)
        {
          continue;
        }

        *(a2 + 1) = v24 + 1;
LABEL_84:
        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
        {
          return 0;
        }

        *(this + 10) = *v31;
        *(this + 33) |= 0x200u;
        v25 = *(a2 + 1);
        if (v25 >= *(a2 + 2) || *v25 != 89)
        {
          continue;
        }

        *(a2 + 1) = v25 + 1;
LABEL_88:
        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
        {
          return 0;
        }

        *(this + 11) = *v31;
        *(this + 33) |= 0x400u;
        v26 = *(a2 + 1);
        if (v26 >= *(a2 + 2) || *v26 != 97)
        {
          continue;
        }

        *(a2 + 1) = v26 + 1;
LABEL_92:
        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
        {
          return 0;
        }

        *(this + 12) = *v31;
        *(this + 33) |= 0x800u;
        v27 = *(a2 + 1);
        if (v27 >= *(a2 + 2) || *v27 != 105)
        {
          continue;
        }

        *(a2 + 1) = v27 + 1;
LABEL_96:
        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
        {
          return 0;
        }

        *(this + 13) = *v31;
        *(this + 33) |= 0x1000u;
        v28 = *(a2 + 1);
        if (v28 >= *(a2 + 2) || *v28 != 113)
        {
          continue;
        }

        *(a2 + 1) = v28 + 1;
LABEL_100:
        *v31 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31) & 1) == 0)
        {
          return 0;
        }

        *(this + 14) = *v31;
        *(this + 33) |= 0x2000u;
        v29 = *(a2 + 1);
        if (v29 >= *(a2 + 2) || *v29 != 121)
        {
          continue;
        }

        *(a2 + 1) = v29 + 1;
LABEL_104:
        *v31 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v31))
        {
          *(this + 15) = *v31;
          *(this + 33) |= 0x4000u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          continue;
        }

        return 0;
      case 3u:
        if (v7 == 1)
        {
          goto LABEL_56;
        }

        goto LABEL_40;
      case 4u:
        if (v7 == 1)
        {
          goto LABEL_60;
        }

        goto LABEL_40;
      case 5u:
        if (v7 == 1)
        {
          goto LABEL_64;
        }

        goto LABEL_40;
      case 6u:
        if (v7 == 1)
        {
          goto LABEL_68;
        }

        goto LABEL_40;
      case 7u:
        if (v7 == 1)
        {
          goto LABEL_72;
        }

        goto LABEL_40;
      case 8u:
        if (v7 == 1)
        {
          goto LABEL_76;
        }

        goto LABEL_40;
      case 9u:
        if (v7 != 1)
        {
          goto LABEL_40;
        }

        goto LABEL_80;
      case 0xAu:
        if (v7 == 1)
        {
          goto LABEL_84;
        }

        goto LABEL_40;
      case 0xBu:
        if (v7 == 1)
        {
          goto LABEL_88;
        }

        goto LABEL_40;
      case 0xCu:
        if (v7 == 1)
        {
          goto LABEL_92;
        }

        goto LABEL_40;
      case 0xDu:
        if (v7 == 1)
        {
          goto LABEL_96;
        }

        goto LABEL_40;
      case 0xEu:
        if (v7 == 1)
        {
          goto LABEL_100;
        }

        goto LABEL_40;
      case 0xFu:
        if (v7 == 1)
        {
          goto LABEL_104;
        }

        goto LABEL_40;
      default:
LABEL_40:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DevicePosition::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::DevicePosition *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 5)
        {
          break;
        }

        if (TagFallback >> 3 <= 7)
        {
          if (v7 == 6)
          {
            if (v8 == 1)
            {
              goto LABEL_70;
            }
          }

          else if (v7 == 7 && v8 == 1)
          {
            goto LABEL_74;
          }

          goto LABEL_42;
        }

        if (v7 == 8)
        {
          if (v8 == 1)
          {
            goto LABEL_78;
          }

          goto LABEL_42;
        }

        if (v7 == 9)
        {
          if (v8 != 1)
          {
            goto LABEL_42;
          }

LABEL_82:
          *v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
          {
            return 0;
          }

          *(this + 9) = *v27;
          *(this + 23) |= 0x100u;
          v25 = *(a2 + 1);
          if (v25 < *(a2 + 2) && *v25 == 81)
          {
            *(a2 + 1) = v25 + 1;
            goto LABEL_86;
          }
        }

        else
        {
          if (v7 != 10 || v8 != 1)
          {
            goto LABEL_42;
          }

LABEL_86:
          *v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
          {
            return 0;
          }

          *(this + 10) = *v27;
          *(this + 23) |= 0x200u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 <= 2)
      {
        break;
      }

      if (v7 == 3)
      {
        if (v8 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_58;
      }

      if (v7 == 4)
      {
        if (v8 != 1)
        {
          goto LABEL_42;
        }

LABEL_62:
        *v27 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v27;
        *(this + 23) |= 8u;
        v20 = *(a2 + 1);
        if (v20 < *(a2 + 2) && *v20 == 41)
        {
          *(a2 + 1) = v20 + 1;
LABEL_66:
          *v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = *v27;
          *(this + 23) |= 0x10u;
          v21 = *(a2 + 1);
          if (v21 < *(a2 + 2) && *v21 == 49)
          {
            *(a2 + 1) = v21 + 1;
LABEL_70:
            *v27 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
            {
              return 0;
            }

            *(this + 6) = *v27;
            *(this + 23) |= 0x20u;
            v22 = *(a2 + 1);
            if (v22 < *(a2 + 2) && *v22 == 57)
            {
              *(a2 + 1) = v22 + 1;
LABEL_74:
              *v27 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
              {
                return 0;
              }

              *(this + 7) = *v27;
              *(this + 23) |= 0x40u;
              v23 = *(a2 + 1);
              if (v23 < *(a2 + 2) && *v23 == 65)
              {
                *(a2 + 1) = v23 + 1;
LABEL_78:
                *v27 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
                {
                  return 0;
                }

                *(this + 8) = *v27;
                *(this + 23) |= 0x80u;
                v24 = *(a2 + 1);
                if (v24 < *(a2 + 2) && *v24 == 73)
                {
                  *(a2 + 1) = v24 + 1;
                  goto LABEL_82;
                }
              }
            }
          }
        }
      }

      else
      {
        if (v7 == 5 && v8 == 1)
        {
          goto LABEL_66;
        }

LABEL_42:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v7 != 1)
    {
      if (v7 != 2 || v8 != 1)
      {
        goto LABEL_42;
      }

      goto LABEL_54;
    }

    if (v8 != 2)
    {
      goto LABEL_42;
    }

    *(this + 23) |= 1u;
    v9 = *(this + 1);
    if (!v9)
    {
      operator new();
    }

    v27[0] = 0;
    v10 = *(a2 + 1);
    if (v10 >= *(a2 + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v27))
      {
        return 0;
      }
    }

    else
    {
      v27[0] = *v10;
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
    if (!CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergePartialFromCodedStream(v9, a2, v13) || *(a2 + 36) != 1)
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
    if (v17 < *(a2 + 2) && *v17 == 17)
    {
      *(a2 + 1) = v17 + 1;
LABEL_54:
      *v27 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = *v27;
      *(this + 23) |= 2u;
      v18 = *(a2 + 1);
      if (v18 < *(a2 + 2) && *v18 == 25)
      {
        *(a2 + 1) = v18 + 1;
LABEL_58:
        *v27 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v27;
        *(this + 23) |= 4u;
        v19 = *(a2 + 1);
        if (v19 < *(a2 + 2) && *v19 == 33)
        {
          *(a2 + 1) = v19 + 1;
          goto LABEL_62;
        }
      }
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::~ClientSatelliteInfo(CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo *this)
{
  *this = &unk_1F4CD9A50;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::~ClientSatelliteInfo(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::DeviceVelocity *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 5)
        {
          break;
        }

        if (TagFallback >> 3 <= 7)
        {
          if (v7 == 6)
          {
            if (v8 == 1)
            {
              goto LABEL_70;
            }
          }

          else if (v7 == 7 && v8 == 1)
          {
            goto LABEL_74;
          }

          goto LABEL_42;
        }

        if (v7 == 8)
        {
          if (v8 == 1)
          {
            goto LABEL_78;
          }

          goto LABEL_42;
        }

        if (v7 == 9)
        {
          if (v8 != 1)
          {
            goto LABEL_42;
          }

LABEL_82:
          *v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
          {
            return 0;
          }

          *(this + 9) = *v27;
          *(this + 23) |= 0x100u;
          v25 = *(a2 + 1);
          if (v25 < *(a2 + 2) && *v25 == 81)
          {
            *(a2 + 1) = v25 + 1;
            goto LABEL_86;
          }
        }

        else
        {
          if (v7 != 10 || v8 != 1)
          {
            goto LABEL_42;
          }

LABEL_86:
          *v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
          {
            return 0;
          }

          *(this + 10) = *v27;
          *(this + 23) |= 0x200u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 <= 2)
      {
        break;
      }

      if (v7 == 3)
      {
        if (v8 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_58;
      }

      if (v7 == 4)
      {
        if (v8 != 1)
        {
          goto LABEL_42;
        }

LABEL_62:
        *v27 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v27;
        *(this + 23) |= 8u;
        v20 = *(a2 + 1);
        if (v20 < *(a2 + 2) && *v20 == 41)
        {
          *(a2 + 1) = v20 + 1;
LABEL_66:
          *v27 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = *v27;
          *(this + 23) |= 0x10u;
          v21 = *(a2 + 1);
          if (v21 < *(a2 + 2) && *v21 == 49)
          {
            *(a2 + 1) = v21 + 1;
LABEL_70:
            *v27 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
            {
              return 0;
            }

            *(this + 6) = *v27;
            *(this + 23) |= 0x20u;
            v22 = *(a2 + 1);
            if (v22 < *(a2 + 2) && *v22 == 57)
            {
              *(a2 + 1) = v22 + 1;
LABEL_74:
              *v27 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
              {
                return 0;
              }

              *(this + 7) = *v27;
              *(this + 23) |= 0x40u;
              v23 = *(a2 + 1);
              if (v23 < *(a2 + 2) && *v23 == 65)
              {
                *(a2 + 1) = v23 + 1;
LABEL_78:
                *v27 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
                {
                  return 0;
                }

                *(this + 8) = *v27;
                *(this + 23) |= 0x80u;
                v24 = *(a2 + 1);
                if (v24 < *(a2 + 2) && *v24 == 73)
                {
                  *(a2 + 1) = v24 + 1;
                  goto LABEL_82;
                }
              }
            }
          }
        }
      }

      else
      {
        if (v7 == 5 && v8 == 1)
        {
          goto LABEL_66;
        }

LABEL_42:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v7 != 1)
    {
      if (v7 != 2 || v8 != 1)
      {
        goto LABEL_42;
      }

      goto LABEL_54;
    }

    if (v8 != 2)
    {
      goto LABEL_42;
    }

    *(this + 23) |= 1u;
    v9 = *(this + 1);
    if (!v9)
    {
      operator new();
    }

    v27[0] = 0;
    v10 = *(a2 + 1);
    if (v10 >= *(a2 + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v27))
      {
        return 0;
      }
    }

    else
    {
      v27[0] = *v10;
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
    if (!CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergePartialFromCodedStream(v9, a2, v13) || *(a2 + 36) != 1)
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
    if (v17 < *(a2 + 2) && *v17 == 17)
    {
      *(a2 + 1) = v17 + 1;
LABEL_54:
      *v27 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
      {
        return 0;
      }

      *(this + 2) = *v27;
      *(this + 23) |= 2u;
      v18 = *(a2 + 1);
      if (v18 < *(a2 + 2) && *v18 == 25)
      {
        *(a2 + 1) = v18 + 1;
LABEL_58:
        *v27 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v27;
        *(this + 23) |= 4u;
        v19 = *(a2 + 1);
        if (v19 < *(a2 + 2) && *v19 == 33)
        {
          *(a2 + 1) = v19 + 1;
          goto LABEL_62;
        }
      }
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::DeviceReceiverClockDiscrepancy *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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
        if (TagFallback >> 3 <= 6)
        {
          break;
        }

        if (v7 == 7)
        {
          if (v8 == 1)
          {
            goto LABEL_48;
          }

          goto LABEL_28;
        }

        if (v7 == 8)
        {
          if (v8 != 1)
          {
            goto LABEL_28;
          }

LABEL_52:
          *v23 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v23) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = *v23;
          *(this + 15) |= 0x10u;
          v21 = *(a2 + 1);
          if (v21 < *(a2 + 2) && *v21 == 73)
          {
            *(a2 + 1) = v21 + 1;
            goto LABEL_56;
          }
        }

        else
        {
          if (v7 != 9 || v8 != 1)
          {
            goto LABEL_28;
          }

LABEL_56:
          *v23 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v23) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = *v23;
          *(this + 15) |= 0x20u;
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

      if (v7 == 2)
      {
        if (v8 != 1)
        {
          goto LABEL_28;
        }

LABEL_40:
        *v23 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v23) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v23;
        *(this + 15) |= 2u;
        v18 = *(a2 + 1);
        if (v18 < *(a2 + 2) && *v18 == 49)
        {
          *(a2 + 1) = v18 + 1;
LABEL_44:
          *v23 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v23) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = *v23;
          *(this + 15) |= 4u;
          v19 = *(a2 + 1);
          if (v19 < *(a2 + 2) && *v19 == 57)
          {
            *(a2 + 1) = v19 + 1;
LABEL_48:
            *v23 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v23) & 1) == 0)
            {
              return 0;
            }

            *(this + 4) = *v23;
            *(this + 15) |= 8u;
            v20 = *(a2 + 1);
            if (v20 < *(a2 + 2) && *v20 == 65)
            {
              *(a2 + 1) = v20 + 1;
              goto LABEL_52;
            }
          }
        }
      }

      else
      {
        if (v7 == 6 && v8 == 1)
        {
          goto LABEL_44;
        }

LABEL_28:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    *(this + 15) |= 1u;
    v9 = *(this + 1);
    if (!v9)
    {
      operator new();
    }

    v23[0] = 0;
    v10 = *(a2 + 1);
    if (v10 >= *(a2 + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v23))
      {
        return 0;
      }
    }

    else
    {
      v23[0] = *v10;
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
    if (!CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergePartialFromCodedStream(v9, a2, v13) || *(a2 + 36) != 1)
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
    if (v17 < *(a2 + 2) && *v17 == 17)
    {
      *(a2 + 1) = v17 + 1;
      goto LABEL_40;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::Raven::NrEstimatorHealth *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
LABEL_1:
    v5 = *(a2 + 1);
    if (v5 < *(a2 + 2))
    {
      TagFallback = *v5;
      if ((TagFallback & 0x80000000) == 0)
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }

        goto LABEL_6;
      }
    }

    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
    *(a2 + 8) = TagFallback;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_6:
    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 2)
        {
          goto LABEL_40;
        }

        *(this + 42) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v76[0] = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v76))
          {
            return 0;
          }
        }

        else
        {
          v76[0] = *v9;
          *(a2 + 1) = v9 + 1;
        }

        v19 = *(a2 + 14);
        v20 = *(a2 + 15);
        *(a2 + 14) = v19 + 1;
        if (v19 >= v20)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Raven::TimeStamp::MergePartialFromCodedStream(v8, a2, v21) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v22 = *(a2 + 14);
        v23 = __OFSUB__(v22, 1);
        v24 = v22 - 1;
        if (v24 < 0 == v23)
        {
          *(a2 + 14) = v24;
        }

        v25 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v25 >= v14 || *v25 != 16)
        {
          continue;
        }

        v15 = v25 + 1;
        *(a2 + 1) = v15;
        goto LABEL_52;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
LABEL_52:
        v76[0] = 0;
        if (v15 >= v14 || (v26 = *v15, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v76);
          if (!result)
          {
            return result;
          }

          v26 = v76[0];
        }

        else
        {
          *(a2 + 1) = v15 + 1;
        }

        if (v26 <= 3)
        {
          *(this + 42) |= 2u;
          *(this + 14) = v26;
        }

        v28 = *(a2 + 1);
        if (v28 >= *(a2 + 2) || *v28 != 25)
        {
          continue;
        }

        *(a2 + 1) = v28 + 1;
LABEL_62:
        *v76 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v76) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v76;
        *(this + 42) |= 4u;
        v29 = *(a2 + 1);
        if (v29 >= *(a2 + 2) || *v29 != 33)
        {
          continue;
        }

        *(a2 + 1) = v29 + 1;
LABEL_66:
        *v76 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v76) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v76;
        *(this + 42) |= 8u;
        v30 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v30 >= v10 || *v30 != 40)
        {
          continue;
        }

        v11 = v30 + 1;
        *(a2 + 1) = v11;
LABEL_70:
        if (v11 >= v10 || (v31 = *v11, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v32 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v31;
          v32 = v11 + 1;
          *(a2 + 1) = v32;
        }

        *(this + 42) |= 0x10u;
        if (v32 >= v10 || *v32 != 48)
        {
          continue;
        }

        v16 = v32 + 1;
        *(a2 + 1) = v16;
LABEL_78:
        if (v16 >= v10 || (v33 = *v16, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v33;
          v34 = v16 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 42) |= 0x20u;
        if (v34 >= v10 || *v34 != 56)
        {
          continue;
        }

        v18 = v34 + 1;
        *(a2 + 1) = v18;
LABEL_86:
        if (v18 >= v10 || (v35 = *v18, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v10 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v35;
          v36 = v18 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 42) |= 0x40u;
        if (v36 >= v10 || *v36 != 66)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v36 + 1;
LABEL_94:
          v37 = *(this + 19);
          v38 = *(this + 18);
          if (v38 >= v37)
          {
            if (v37 == *(this + 20))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 64));
              v37 = *(this + 19);
            }

            *(this + 19) = v37 + 1;
            operator new();
          }

          v39 = *(this + 8);
          *(this + 18) = v38 + 1;
          v40 = *(v39 + 8 * v38);
          v76[0] = 0;
          v41 = *(a2 + 1);
          if (v41 >= *(a2 + 2) || *v41 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v76))
            {
              return 0;
            }
          }

          else
          {
            v76[0] = *v41;
            *(a2 + 1) = v41 + 1;
          }

          v42 = *(a2 + 14);
          v43 = *(a2 + 15);
          *(a2 + 14) = v42 + 1;
          if (v42 >= v43)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergePartialFromCodedStream(v40, a2, v44) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v45 = *(a2 + 14);
          v23 = __OFSUB__(v45, 1);
          v46 = v45 - 1;
          if (v46 < 0 == v23)
          {
            *(a2 + 14) = v46;
          }

          v36 = *(a2 + 1);
          if (v36 >= *(a2 + 2))
          {
            goto LABEL_1;
          }

          v47 = *v36;
        }

        while (v47 == 66);
        if (v47 != 74)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v36 + 1;
LABEL_112:
          v48 = *(this + 25);
          v49 = *(this + 24);
          if (v49 >= v48)
          {
            if (v48 == *(this + 26))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88));
              v48 = *(this + 25);
            }

            *(this + 25) = v48 + 1;
            operator new();
          }

          v50 = *(this + 11);
          *(this + 24) = v49 + 1;
          v51 = *(v50 + 8 * v49);
          v76[0] = 0;
          v52 = *(a2 + 1);
          if (v52 >= *(a2 + 2) || *v52 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v76))
            {
              return 0;
            }
          }

          else
          {
            v76[0] = *v52;
            *(a2 + 1) = v52 + 1;
          }

          v53 = *(a2 + 14);
          v54 = *(a2 + 15);
          *(a2 + 14) = v53 + 1;
          if (v53 >= v54)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergePartialFromCodedStream(v51, a2, v55) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v56 = *(a2 + 14);
          v23 = __OFSUB__(v56, 1);
          v57 = v56 - 1;
          if (v57 < 0 == v23)
          {
            *(a2 + 14) = v57;
          }

          v36 = *(a2 + 1);
          if (v36 >= *(a2 + 2))
          {
            goto LABEL_1;
          }

          v58 = *v36;
        }

        while (v58 == 74);
        if (v58 != 82)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v36 + 1;
LABEL_130:
          v59 = *(this + 31);
          v60 = *(this + 30);
          if (v60 >= v59)
          {
            if (v59 == *(this + 32))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 112));
              v59 = *(this + 31);
            }

            *(this + 31) = v59 + 1;
            operator new();
          }

          v61 = *(this + 14);
          *(this + 30) = v60 + 1;
          v62 = *(v61 + 8 * v60);
          v76[0] = 0;
          v63 = *(a2 + 1);
          if (v63 >= *(a2 + 2) || *v63 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v76))
            {
              return 0;
            }
          }

          else
          {
            v76[0] = *v63;
            *(a2 + 1) = v63 + 1;
          }

          v64 = *(a2 + 14);
          v65 = *(a2 + 15);
          *(a2 + 14) = v64 + 1;
          if (v64 >= v65)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Raven::MeasurementTypeCount::MergePartialFromCodedStream(v62, a2, v66) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v67 = *(a2 + 14);
          v23 = __OFSUB__(v67, 1);
          v68 = v67 - 1;
          if (v68 < 0 == v23)
          {
            *(a2 + 14) = v68;
          }

          v36 = *(a2 + 1);
          if (v36 >= *(a2 + 2))
          {
            goto LABEL_1;
          }

          v69 = *v36;
        }

        while (v69 == 82);
        if (v69 != 89)
        {
          continue;
        }

        *(a2 + 1) = v36 + 1;
LABEL_148:
        *v76 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v76) & 1) == 0)
        {
          return 0;
        }

        *(this + 17) = *v76;
        *(this + 42) |= 0x400u;
        v70 = *(a2 + 1);
        if (v70 >= *(a2 + 2) || *v70 != 97)
        {
          continue;
        }

        *(a2 + 1) = v70 + 1;
LABEL_152:
        *v76 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v76) & 1) == 0)
        {
          return 0;
        }

        *(this + 18) = *v76;
        *(this + 42) |= 0x800u;
        v71 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v71 >= v12 || *v71 != 104)
        {
          continue;
        }

        v13 = v71 + 1;
        *(a2 + 1) = v13;
LABEL_156:
        v76[0] = 0;
        if (v13 >= v12 || (v72 = *v13, (v72 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v76);
          if (!result)
          {
            return result;
          }

          v72 = v76[0];
          v73 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v73 = v13 + 1;
          *(a2 + 1) = v73;
        }

        *(this + 15) = v72;
        *(this + 42) |= 0x1000u;
        if (v73 >= v12 || *v73 != 112)
        {
          continue;
        }

        v17 = v73 + 1;
        *(a2 + 1) = v17;
LABEL_164:
        v76[0] = 0;
        if (v17 >= v12 || (v74 = *v17, (v74 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v76);
          if (!result)
          {
            return result;
          }

          v74 = v76[0];
          v75 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v75 = v17 + 1;
          *(a2 + 1) = v75;
        }

        *(this + 40) = v74;
        *(this + 42) |= 0x2000u;
        if (v75 >= v12 || *v75 != 121)
        {
          continue;
        }

        *(a2 + 1) = v75 + 1;
LABEL_172:
        *v76 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v76) & 1) == 0)
        {
          return 0;
        }

        *(this + 19) = *v76;
        *(this + 42) |= 0x4000u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }

        break;
      case 3u:
        if (v7 == 1)
        {
          goto LABEL_62;
        }

        goto LABEL_40;
      case 4u:
        if (v7 == 1)
        {
          goto LABEL_66;
        }

        goto LABEL_40;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_70;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v16 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_78;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v18 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_86;
      case 8u:
        if (v7 == 2)
        {
          goto LABEL_94;
        }

        goto LABEL_40;
      case 9u:
        if (v7 != 2)
        {
          goto LABEL_40;
        }

        goto LABEL_112;
      case 0xAu:
        if (v7 == 2)
        {
          goto LABEL_130;
        }

        goto LABEL_40;
      case 0xBu:
        if (v7 == 1)
        {
          goto LABEL_148;
        }

        goto LABEL_40;
      case 0xCu:
        if (v7 == 1)
        {
          goto LABEL_152;
        }

        goto LABEL_40;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_156;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_40;
        }

        v17 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_164;
      case 0xFu:
        if (v7 == 1)
        {
          goto LABEL_172;
        }

        goto LABEL_40;
      default:
LABEL_40:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}