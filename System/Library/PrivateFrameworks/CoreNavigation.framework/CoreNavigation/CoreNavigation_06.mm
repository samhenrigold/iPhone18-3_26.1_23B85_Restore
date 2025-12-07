uint64_t *sub_1D0BCAD10(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v8 = *v5;
      v7 = v5[1];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = a4[1];
      *a4 = v8;
      a4[1] = v7;
      if (v9)
      {
        sub_1D0B7CAB8(v9);
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t raven::RavenConvergenceEstimator::UpdateClockOffsetEstimateIfNecessary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) == 1 && *(a2 + 24) == 1)
  {
    v5 = *(a2 + 16);
    if (vabdd_f64(*a2, v5) >= 2.22044605e-16)
    {
      v6 = *a2 - v5;
      if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
      {
        LOWORD(v18) = 12;
        LOBYTE(v17) = 1;
        v7 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a3, "clock jump detected");
        if (*(a1 + 2735) >= 0)
        {
          v8 = v7;
        }

        else
        {
          v8 = *(a1 + 2712);
        }

        cnprint::CNPrinter::Print(&v18, &v17, "%s", v8);
      }

      return raven::RavenConvergenceEstimator::AdjustClockOffset(a1, a3, v6);
    }

    return 1;
  }

  v10 = 768;
  if (!*(a1 + 4404))
  {
    v10 = 8;
  }

  v20 = 0x100000008;
  v18 = &unk_1F4CE4320;
  v19 = xmmword_1D0E84520;
  v21 = &v22;
  sub_1D0B894B0(&v18, a1 + v10 + 2864);
  v12 = v21[6] * 0.001;
  v13 = round(v12);
  if (fabs(v13) < 2.22044605e-16)
  {
    return 1;
  }

  if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
  {
    v17 = 12;
    v16 = 1;
    v14 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a3, "clock offset exceeds 0.5 ms,%.3lf ms", v12);
    if (*(a1 + 2735) >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(&v17, &v16, "%s", v15);
  }

  return raven::RavenConvergenceEstimator::AdjustClockOffset(a1, a3, v13 * -0.001);
}

uint64_t sub_1D0BCAF88(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4CEAB60;
  v4 = a1 + 112;
  sub_1D0BA1824(a1 + 8, a2 + 8);
  sub_1D0BA57FC(v4, a2 + 112);
  sub_1D0BA1824(a1 + 664, a2 + 664);
  sub_1D0BA1824(a1 + 768, a2 + 768);
  sub_1D0BA57FC(a1 + 872, a2 + 872);
  sub_1D0BA1824(a1 + 1424, a2 + 1424);
  v5 = *(a2 + 1528);
  v6 = *(a2 + 1560);
  *(a1 + 1544) = *(a2 + 1544);
  *(a1 + 1560) = v6;
  *(a1 + 1528) = v5;
  v7 = *(a2 + 1576);
  v8 = *(a2 + 1592);
  v9 = *(a2 + 1608);
  *(a1 + 1624) = *(a2 + 1624);
  *(a1 + 1592) = v8;
  *(a1 + 1608) = v9;
  *(a1 + 1576) = v7;
  *(a1 + 1632) = 0;
  *(a1 + 1648) = 0;
  *(a1 + 1640) = 0;
  sub_1D0BA5D5C((a1 + 1632), *(a2 + 1632), *(a2 + 1640), (*(a2 + 1640) - *(a2 + 1632)) >> 5);
  *(a1 + 1672) = 0;
  *(a1 + 1656) = 0u;
  sub_1D0BA5D5C((a1 + 1656), *(a2 + 1656), *(a2 + 1664), (*(a2 + 1664) - *(a2 + 1656)) >> 5);
  *(a1 + 1696) = 0;
  *(a1 + 1680) = 0u;
  sub_1D0BA5D5C((a1 + 1680), *(a2 + 1680), *(a2 + 1688), (*(a2 + 1688) - *(a2 + 1680)) >> 5);
  if (*(a2 + 1727) < 0)
  {
    sub_1D0BC39B4((a1 + 1704), *(a2 + 1704), *(a2 + 1712));
  }

  else
  {
    v10 = *(a2 + 1704);
    *(a1 + 1720) = *(a2 + 1720);
    *(a1 + 1704) = v10;
  }

  v11 = (a1 + 1728);
  if (*(a2 + 1751) < 0)
  {
    sub_1D0BC39B4(v11, *(a2 + 1728), *(a2 + 1736));
  }

  else
  {
    v12 = *(a2 + 1728);
    *(a1 + 1744) = *(a2 + 1744);
    *v11 = v12;
  }

  *a1 = &unk_1F4CEAAF8;
  sub_1D0BA57FC(a1 + 1752, a2 + 1752);
  sub_1D0BA1824(a1 + 2304, a2 + 2304);
  sub_1D0BA57FC(a1 + 2408, a2 + 2408);
  v13 = *(a2 + 2960);
  v14 = *(a2 + 2976);
  *(a1 + 2992) = *(a2 + 2992);
  *(a1 + 2976) = v14;
  *(a1 + 2960) = v13;
  v15 = *(a2 + 3008);
  v16 = *(a2 + 3024);
  v17 = *(a2 + 3040);
  *(a1 + 3056) = *(a2 + 3056);
  *(a1 + 3040) = v17;
  *(a1 + 3024) = v16;
  *(a1 + 3008) = v15;
  return a1;
}

void sub_1D0BCB1E8(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, ...)
{
  va_start(va, a7);
  if (*(v8 + 1727) < 0)
  {
    operator delete(*v9);
  }

  sub_1D0BA5F70(va);
  sub_1D0BA5F70(va);
  sub_1D0BA5F70(va);
  *v12 = &unk_1F4CD5E28;
  *v11 = &unk_1F4CD5E28;
  *v10 = &unk_1F4CD5E28;
  *a6 = &unk_1F4CD5E28;
  *v7 = &unk_1F4CD5E28;
  *a7 = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

void raven::RavenSequentialGNSSMeasurementSelector::ResetEpochSpecificMembers(raven::RavenSequentialGNSSMeasurementSelector *this)
{
  *(this + 1) = 0;
  if (*(this + 32) == 1)
  {
    *(this + 32) = 0;
  }

  *(this + 40) = 0;
  *(this + 306) = 0x7FF8000000000000;
  *(this + 304) = 0x7FF8000000000000;
  if (*(this + 80) == 1)
  {
    *(this + 80) = 0;
  }

  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 6) = 0u;
  *(this + 22) = 0;
  *(this + 23) = 0x7FF8000000000000;
  *(this + 264) = 0u;
  *(this + 23) = 0u;
  v4 = 0x100000008;
  v2 = &unk_1F4CE4320;
  v5 = v6;
  v3 = xmmword_1D0E84520;
  memset(v6, 0, sizeof(v6));
  sub_1D0B894B0(this + 912, &v2);
  *(this + 1016) = 0;
  *(this + 128) = 0;
  *(this + 129) = 0x3FF0000000000000;
  *(this + 65) = 0u;
  *(this + 66) = 0u;
  *(this + 67) = 0u;
  *(this + 68) = 0u;
  *(this + 69) = 0u;
  *(this + 140) = 0x3FF0000000000000;
  *(this + 1128) = 0u;
  *(this + 1144) = 0u;
  *(this + 145) = 0x3FF0000000000000;
  *(this + 146) = 0;
  *(this + 1176) = 0u;
  *(this + 88) = 1;
  *(this + 305) = 0;
  *(this + 260) = 0;
  *(this + 522) = 0;
  sub_1D0BCB540(this + 1200, *(this + 151));
  *(this + 150) = this + 1208;
  *(this + 1208) = 0u;
  *(this + 306) = 0x7FF8000000000000;
  sub_1D0BCB540(this + 1224, *(this + 154));
  *(this + 153) = this + 1232;
  *(this + 77) = 0u;
  sub_1D0BCB540(this + 1248, *(this + 157));
  *(this + 156) = this + 1256;
  *(this + 1256) = 0u;
  *(this + 80) = 0u;
  *(this + 81) = 0u;
  *(this + 82) = 0u;
  *(this + 83) = 0u;
  sub_1D0BBDB14(this + 1344);
  sub_1D0BBDB14(this + 1384);
  sub_1D0BCB624(this + 1424);
  sub_1D0BCB624(this + 1464);
  *(this + 752) = 0;
}

void sub_1D0BCB540(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1D0BCB540(a1, *a2);
    sub_1D0BCB540(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t sub_1D0BCB594(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_1D0BCB5E0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1D0BCB594((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1D0BCB624(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1D0BCB5E0(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t sub_1D0BCB680(uint64_t a1)
{
  *a1 = &unk_1F4CEAAF8;
  *(a1 + 2408) = &unk_1F4CD5E28;
  *(a1 + 2304) = &unk_1F4CD5E28;
  *(a1 + 1752) = &unk_1F4CD5E28;
  return sub_1D0BC27EC(a1);
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::SelectMeasurements(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  sub_1D0BCC0B4(a3);
  if (*(a4 + 8) == 1)
  {
    *(a4 + 8) = 0;
  }

  if (*a1)
  {
    if (*(a1 + 1))
    {
      v7 = *(a1 + 192);
      v8 = *(v7 + 3769);
      v9 = *(v7 + 64);
      if (v9)
      {
        v47 = (*(*a2 + 16))(a2);
        v48 = *&v10;
        *v11.i64 = v10;
        *v12.i64 = v10 + v47;
        if (COERCE__INT64(fabs(*v12.i64)) < 0x7FF0000000000000)
        {
          v19 = *v9;
          v18 = v9[1];
          if (*v9 == v18)
          {
            LOWORD(v50) = 12;
            LOBYTE(v44) = 4;
            cnprint::CNPrinter::Print(&v50, &v44, "Cannot find GMAT data capture: GMAT data capture container is empty");
          }

          else
          {
            v20 = v9[3];
            if (v20 != v18)
            {
              if (sub_1D0B7CF88(v20, &v47))
              {
                v19 = *v9;
              }

              else
              {
                v19 = v9[3];
              }
            }

            v32 = v9[1];
            if (v19 != v32)
            {
              v33 = v19;
              do
              {
                v34 = CNTimeSpan::operator-(v19, &v47, v12, v11);
                v36 = v34;
                v50 = v34;
                v51 = *&v35;
                v37 = v35;
                if (v34 < 0 || (*v12.i64 = v35, v35 < 0.0))
                {
                  v34 = CNTimeSpan::operator-(&v50, v12, v11);
                  v12.i64[0] = v38;
                }

                if ((v34 || (v12.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v34)
                {
                  if (v34 < 0)
                  {
                    goto LABEL_67;
                  }
                }

                else if (*v12.i64 <= 0.5)
                {
LABEL_67:
                  v9[3] = v33;
                  goto LABEL_20;
                }

                if (v36)
                {
                  if (v36 > 0)
                  {
                    break;
                  }
                }

                else if (v37 > 0.5)
                {
                  break;
                }

                v19 += 18;
                v33 += 18;
              }

              while (v19 != v32);
            }
          }
        }

        else
        {
          LOWORD(v50) = 12;
          LOBYTE(v44) = 4;
          cnprint::CNPrinter::Print(&v50, &v44, "Cannot find GMAT data capture: Invalid desired time supplied");
        }
      }

      v19 = 0;
LABEL_20:
      raven::RavenSequentialGNSSMeasurementSelector::LogEpochHeader(a1, v19);
      v50 = &v50;
      v51 = &v50;
      v52 = 0;
      v47 = &v47;
      v48 = &v47;
      v49 = 0;
      raven::RavenSequentialGNSSMeasurementSelector::PrefilterGNSSMeasurementsAsUseOrNotUse(a1, a2, &v50, &v47, v19);
      raven::RavenSequentialGNSSMeasurementSelector::ComputeMeasurementFunctionOutput(a1, &v50);
      if ((*(*(a1 + 192) + 3835) & 1) == 0 && v49 && raven::RavenSequentialGNSSMeasurementSelector::ShouldLowPLOSMeasurementsBeConsideredInEstimator(a1, &v50))
      {
        raven::RavenSequentialGNSSMeasurementSelector::GetUsableLowPLOSMeasurements(a1, &v47, &v44);
        if (v46)
        {
          raven::RavenSequentialGNSSMeasurementSelector::ComputeMeasurementFunctionOutput(a1, &v44);
          v21 = v46;
          if (v46)
          {
            v23 = v44;
            v22 = v45;
            v24 = *(v44 + 8);
            v25 = *v45;
            *(v25 + 8) = v24;
            *v24 = v25;
            v26 = v50;
            *(v50 + 8) = v22;
            *v22 = v26;
            *(v23 + 8) = &v50;
            v50 = v23;
            v52 += v21;
            v46 = 0;
          }
        }

        sub_1D0BCC0B4(&v44);
      }

      if (v8)
      {
        raven::RavenSequentialGNSSMeasurementSelector::ComputeMeasurementFunctionOutput(a1, &v47);
      }

      raven::RavenSequentialGNSSMeasurementSelector::CheckForAndHandleGrossClockOffsetError(a1, &v50);
      v44 = &v44;
      v45 = &v44;
      v46 = 0;
      v43[0] = v43;
      v43[1] = v43;
      v43[2] = 0;
      v42[0] = v42;
      v42[1] = v42;
      v42[2] = 0;
      v41[0] = v41;
      v41[1] = v41;
      v41[2] = 0;
      v40[0] = v40;
      v40[1] = v40;
      v40[2] = 0;
      v39[0] = v39;
      v39[1] = v39;
      v39[2] = 0;
      v27 = v51;
      if (v51 != &v50)
      {
        v28 = v51[3];
        v29 = *(v28 + 189);
        v30 = *(v28 + 100);
        if (v30 <= 9 && ((1 << v30) & 0x2BB) != 0)
        {
          if (*(v51 + 200) == 1)
          {
            *(v51 + 112) = 6;
            sub_1D0BCD66C((v27 + 2));
          }

          if (v29 != 1 && (v30 != 5 || *(*(a1 + 192) + 640) != 1))
          {
            *(v51 + 112) = 2;
            sub_1D0BCD66C((v27 + 2));
          }

          *(v51 + 112) = 4;
          sub_1D0BCD66C((v27 + 2));
        }

        if (*(v51 + 200) == 1)
        {
          *(v51 + 112) = 5;
          sub_1D0BCD66C((v27 + 2));
        }

        if (v30 == 10)
        {
          *(v51 + 112) = 4;
          sub_1D0BCD66C((v27 + 2));
        }

        if (v29 == 1)
        {
          *(v51 + 112) = 3;
          sub_1D0BCD66C((v27 + 2));
        }

        *(v51 + 112) = 1;
        sub_1D0BCD66C((v27 + 2));
      }

      operator new();
    }

    LOWORD(v47) = 12;
    LOBYTE(v44) = 4;
    v13 = (a1 + 208);
    v50 = (*(*a2 + 16))(a2);
    v51 = v15;
    cnprint::CNLogFormatter::FormatGeneral(a1 + 208, &v50, "#MSR selector uninitialized");
  }

  else
  {
    LOWORD(v47) = 12;
    LOBYTE(v44) = 4;
    v13 = (a1 + 208);
    v50 = (*(*a2 + 16))(a2);
    v51 = v14;
    cnprint::CNLogFormatter::FormatGeneral(a1 + 208, &v50, "#MSR selector not configured");
  }

  if (*(a1 + 231) >= 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = *(a1 + 208);
  }

  cnprint::CNPrinter::Print(&v47, &v44, "%s", v16);
  return 0;
}

void sub_1D0BCC040(_Unwind_Exception *a1)
{
  sub_1D0BCC0B4((v1 - 176));
  sub_1D0BCC0B4((v1 - 152));
  sub_1D0BCC0B4((v1 - 128));
  _Unwind_Resume(a1);
}

void *sub_1D0BCC0B4(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void raven::RavenSequentialGNSSMeasurementSelector::LogEpochHeader(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 1) || !*(a1 + 1506))
  {
    return;
  }

  sub_1D0B751F4(&v69, "\n");
  if (*(a1 + 112) != 1 || (*v67 = *(a1 + 120), cnnavigation::iOSTimeToJulianTime(v67, v65)) || (cnnavigation::JulianTimeToGregorianTime(v65, &v72), v6))
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v9 = v72 & 0xFFFFFF00;
    v2 = *&v74;
    v8 = v72;
    v7 = 1;
  }

  if (*(a1 + 160) == 1)
  {
    *v67 = *(a1 + 168);
    LOWORD(v72) = 0;
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    cnnavigation::TAITime::ToGPSTime(v67, &v72);
  }

  else
  {
    if (*(a1 + 136) != 1)
    {
      v11 = 0;
      goto LABEL_13;
    }

    *v67 = *(a1 + 144);
    LOWORD(v72) = 0;
    v73 = 0u;
    v74 = 0u;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    cnnavigation::TAITime::ToGPSTime(v67, &v72);
  }

  v3 = v10;
  v11 = 1;
LABEL_13:
  v12 = (a1 + 1512);
  v13 = sub_1D0BCD7C4((a1 + 1512), "====================================================================================================\n\n", 102);
  *(v13 + *(*v13 - 24) + 16) = 3;
  v14 = sub_1D0BCD7C4(v13, "Time: ", 6);
  *(v14 + *(*v14 - 24) + 24) = 13;
  v15 = MEMORY[0x1D387E990](*(a1 + 104) + *(a1 + 96));
  v16 = sub_1D0BCD7C4(v15, "   ", 3);
  *(v16 + *(*v16 - 24) + 24) = 13;
  if (*(a1 + 112) == 1)
  {
    v17.n128_f64[0] = *(a1 + 128) + *(a1 + 120);
  }

  else
  {
    v17.n128_u64[0] = 0x7FF8000000000000;
  }

  MEMORY[0x1D387E990](v17);
  *(v12 + *(*v12 - 24) + 24) = 13;
  if (v11)
  {
    v18 = MEMORY[0x1D387E990](a1 + 1512, v3);
  }

  else
  {
    v18 = MEMORY[0x1D387E990](a1 + 1512, NAN);
  }

  v19 = sub_1D0BCD7C4(v18, "  ", 2);
  *(v19 + *(*v19 - 24) + 24) = 4;
  MEMORY[0x1D387E9C0]();
  sub_1D0BCD7C4((a1 + 1512), "   ", 3);
  if (v7)
  {
    sub_1D0E30940((a1 + 1512), 48);
    *(v12 + *(*v12 - 24) + 24) = 4;
    v20 = MEMORY[0x1D387E9C0](a1 + 1512, v9 | v8);
    v21 = sub_1D0BCD7C4(v20, "/", 1);
    *(v21 + *(*v21 - 24) + 24) = 2;
    v22 = MEMORY[0x1D387E9C0]();
    v23 = sub_1D0BCD7C4(v22, "/", 1);
    *(v23 + *(*v23 - 24) + 24) = 2;
    v24 = MEMORY[0x1D387E9C0]();
    v25 = sub_1D0BCD7C4(v24, " ", 1);
    *(v25 + *(*v25 - 24) + 24) = 2;
    v26 = MEMORY[0x1D387E9C0]();
    v27 = sub_1D0BCD7C4(v26, ":", 1);
    *(v27 + *(*v27 - 24) + 24) = 2;
    v28 = MEMORY[0x1D387E9C0]();
    v29 = sub_1D0BCD7C4(v28, ":", 1);
    *(v29 + *(*v29 - 24) + 24) = 6;
    v30 = MEMORY[0x1D387E990](v2);
    sub_1D0E30940(v30, 32);
  }

  else
  {
    *(v12 + *(*v12 - 24) + 24) = 13;
    MEMORY[0x1D387E990](a1 + 1512, NAN);
  }

  v31 = sub_1D0BCD7C4((a1 + 1512), "   EstAge: ", 11);
  *(v31 + *(*v31 - 24) + 24) = 13;
  if ((*(a1 + 2192) & 1) == 0)
  {
    sub_1D0C42F28();
  }

  v34 = CNTimeSpan::operator-((a1 + 96), (a1 + 2096), v32, v33);
  MEMORY[0x1D387E990](v31, v35 + v34);
  v36 = sub_1D0BCD7C4((a1 + 1512), "   SE: ", 7);
  sub_1D0B751F4(&v72, off_1E83D81C0[*(a1 + 1016)]);
  if (v73 >= 0)
  {
    v37 = &v72;
  }

  else
  {
    v37 = v72;
  }

  if (v73 >= 0)
  {
    v38 = HIBYTE(v73);
  }

  else
  {
    v38 = v73;
  }

  v39 = sub_1D0BCD7C4(v36, v37, v38);
  v40 = sub_1D0BCD7C4(v39, "   Act: ", 8);
  sub_1D0B751F4(v67, off_1E83D81F8[*(a1 + 1024)]);
  if ((v68 & 0x80u) == 0)
  {
    v41 = v67;
  }

  else
  {
    v41 = v67[0];
  }

  if ((v68 & 0x80u) == 0)
  {
    v42 = v68;
  }

  else
  {
    v42 = v67[1];
  }

  v43 = sub_1D0BCD7C4(v40, v41, v42);
  v44 = sub_1D0BCD7C4(v43, " ", 1);
  *(v44 + *(*v44 - 24) + 16) = 2;
  v45 = sub_1D0BBD090((a1 + 1024));
  v46 = MEMORY[0x1D387E990](v44, v45);
  v47 = sub_1D0BCD7C4(v46, "   Mnt: ", 8);
  sub_1D0B751F4(v65, off_1E83D8248[*(a1 + 1112)]);
  if ((v66 & 0x80u) == 0)
  {
    v48 = v65;
  }

  else
  {
    v48 = v65[0];
  }

  if ((v66 & 0x80u) == 0)
  {
    v49 = v66;
  }

  else
  {
    v49 = v65[1];
  }

  v50 = sub_1D0BCD7C4(v47, v48, v49);
  v51 = sub_1D0BCD7C4(v50, " ", 1);
  *(v51 + *(*v51 - 24) + 16) = 2;
  v52 = MEMORY[0x1D387E990](*(a1 + 1112 + 8 * *(a1 + 1112) + 8));
  v53 = sub_1D0BCD7C4(v52, "   Mov: ", 8);
  sub_1D0B751F4(__p, off_1E83D8268[*(a1 + 1152)]);
  if ((v64 & 0x80u) == 0)
  {
    v54 = __p;
  }

  else
  {
    v54 = __p[0];
  }

  if ((v64 & 0x80u) == 0)
  {
    v55 = v64;
  }

  else
  {
    v55 = __p[1];
  }

  v56 = sub_1D0BCD7C4(v53, v54, v55);
  v57 = sub_1D0BCD7C4(v56, " ", 1);
  *(v57 + *(*v57 - 24) + 16) = 2;
  MEMORY[0x1D387E990](*(a1 + 1152 + 8 * *(a1 + 1152) + 8));
  if (v64 < 0)
  {
    operator delete(__p[0]);
  }

  if (v66 < 0)
  {
    operator delete(v65[0]);
  }

  if (v68 < 0)
  {
    operator delete(v67[0]);
  }

  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72);
  }

  if ((v71 & 0x80u) == 0)
  {
    v58 = &v69;
  }

  else
  {
    v58 = v69;
  }

  if ((v71 & 0x80u) == 0)
  {
    v59 = v71;
  }

  else
  {
    v59 = v70;
  }

  v60 = sub_1D0BCD7C4((a1 + 1512), v58, v59);
  if ((v71 & 0x80u) == 0)
  {
    v61 = &v69;
  }

  else
  {
    v61 = v69;
  }

  if ((v71 & 0x80u) == 0)
  {
    v62 = v71;
  }

  else
  {
    v62 = v70;
  }

  sub_1D0BCD7C4(v60, v61, v62);
  raven::RavenSequentialGNSSMeasurementSelector::LogPVT(a1, 0, a2);
  if (v71 < 0)
  {
    operator delete(v69);
  }
}

void sub_1D0BCC8C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::PrefilterGNSSMeasurementsAsUseOrNotUse(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a1;
  v9 = *(a1 + 192);
  v69 = *(v9 + 3835);
  memset(v88, 0, 32);
  v88[8] = 1.0;
  v10 = *(a2 + 96);
  v67 = *(a2 + 104);
  if (v10 != v67)
  {
    v65 = 0;
    v66 = 0;
    v12 = 0.0;
    while (1)
    {
      v13 = *v10;
      if (*v10)
      {
        break;
      }

LABEL_50:
      v10 += 2;
      if (v10 == v67)
      {
        v9 = *(v8 + 192);
        v7 = a2;
        v33 = v65;
        v34 = v66;
        goto LABEL_53;
      }
    }

    if (*(v13 + 304))
    {
      v14 = *(v13 + 296);
      v15 = *(*(v8 + 192) + 2240);
      v16 = *(v13 + 312);
      v68 = v16 == 0;
      v17 = v14 < v15;
      if (v14 < v15 && v16 == 0)
      {
        a1 = sub_1D0BCD25C(v88, (v13 + 24));
        ++*(a1 + 4);
        ++v65;
        v68 = 1;
        v17 = 1;
        goto LABEL_13;
      }
    }

    else
    {
      v17 = 0;
      v68 = *(v13 + 312) == 0;
    }

    a1 = sub_1D0BCD25C(v88, (v13 + 24));
    ++*a1;
    ++v66;
LABEL_13:
    if (*(v13 + 304) == 1)
    {
      v19 = *(v13 + 296);
      if (v19 <= v12)
      {
        v19 = v12;
      }

      v12 = v19;
    }

    v20 = *(v13 + 328);
    v21 = *(v13 + 336);
    while (v20 != v21)
    {
      v22 = *(v20 + 200) - *(v20 + 192);
      v23 = (COERCE__INT64(fabs(v22)) - 0x10000000000000) >> 53;
      if (*&v22 > -1 && v23 < 0x3FF || (*&v22 - 1) < 0xFFFFFFFFFFFFFLL)
      {
        v75 = v13;
        v76 = v20;
        v26 = *(v20 + 104) + 0.5;
        LODWORD(v77[0].__locale_) = *(v13 + 28) + 1000 * *(v13 + 24);
        v77[1].__locale_ = v26;
        v78 = 0;
        v81[32] = 0;
        v81[40] = 0;
        v81[56] = 0;
        v84 = 0;
        v85 = 0;
        v86 = 0;
        v87 = 0;
        v83 = 0;
        v82 = 0;
        if (a5)
        {
          v27 = *(a5 + 16);
          v28 = *(a5 + 24);
          if (v27 == v28)
          {
LABEL_33:
            v27 = 0;
          }

          else
          {
            while (*(v27 + 48) != *(v13 + 24) || *(v27 + 52) != *(v13 + 28) || *(v27 + 8) != *(v20 + 100) || *(v27 + 16) != *(v20 + 96))
            {
              v27 += 56;
              if (v27 == v28)
              {
                goto LABEL_33;
              }
            }
          }

          v87 = v27;
        }

        if (v69 && *(v20 + 188) == 1)
        {
          sub_1D0BCD66C(&v75);
        }

        if (v17)
        {
          if (!v68 && *(v20 + 96) == 1)
          {
            sub_1D0BCD66C(&v75);
          }

          v82 = 0x100000002;
          sub_1D0BCD66C(&v75);
        }

        sub_1D0BCD66C(&v75);
      }

      LOWORD(v75) = 12;
      LOBYTE(__p[0]) = 4;
      v29 = sub_1D0BCFAB8(v13);
      v30 = *(v20 + 96) - 1;
      v31 = "UnknownType";
      if (v30 <= 4)
      {
        v31 = off_1E83D8358[v30];
      }

      cnprint::CNLogFormatter::FormatGeneral(v8 + 208, v8 + 96, "#MSR %s %s invalid meas interval,%3.lf", v29, v31, *(v20 + 200) - *(v20 + 192));
      if (*(v8 + 231) >= 0)
      {
        v32 = (v8 + 208);
      }

      else
      {
        v32 = *(v8 + 208);
      }

      cnprint::CNPrinter::Print(&v75, __p, "%s", v32);
      v20 += 208;
    }

    goto LABEL_50;
  }

  v34 = 0;
  v33 = 0;
  v12 = 0.0;
LABEL_53:
  if (v12 >= *(v9 + 2272))
  {
    v35 = *(v9 + 2280);
    *(v8 + 88) = v34 >= v35;
    if (v34 >= v35)
    {
      goto LABEL_71;
    }
  }

  else
  {
    *(v8 + 88) = 0;
  }

  if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    LOWORD(v75) = 12;
    LOBYTE(__p[0]) = 1;
    v36 = cnprint::CNLogFormatter::FormatGeneral(v8 + 208, v8 + 96, "#MSR LOS HMM unreliable, adding back low-P(LOS) measurements, best P(LOS) %5.3f, high-P(LOS) count %2d,  low-P(LOS) count %2d", v12, v34, v33);
    if (*(v8 + 231) >= 0)
    {
      v37 = v36;
    }

    else
    {
      v37 = *(v8 + 208);
    }

    cnprint::CNPrinter::Print(&v75, __p, "%s", v37);
  }

  v39 = *(v8 + 48);
  v38 = *(v8 + 56);
  while (v39 != v38)
  {
    v40 = sub_1D0BCD25C(v88, v39);
    *v40 = (*v40 + *(v40 + 4));
    ++v39;
  }

  if (!*(v8 + 1272) || (*(*(v8 + 192) + 2392) & 1) == 0)
  {
    v41 = a4[1];
    if (v41 != a4)
    {
      v42 = a4[1];
      do
      {
        v42[24] = 0;
        v42 = v42[1];
      }

      while (v42 != a4);
    }

    v43 = a4[2];
    if (v43)
    {
      v44 = *a4;
      v45 = *(*a4 + 8);
      v46 = *v41;
      *(v46 + 8) = v45;
      *v45 = v46;
      v47 = *a3;
      *(v47 + 8) = v41;
      *v41 = v47;
      *a3 = v44;
      *(v44 + 8) = a3;
      a3[2] += v43;
      a4[2] = 0;
    }
  }

LABEL_71:
  LOBYTE(v75) = 1;
  if (cnprint::CNPrinter::WillPrint(&v75))
  {
    sub_1D0BC2944(&v75);
    v48 = sub_1D0BCD7C4(&v75, "#MSR LOS HMM satellite counts (accept,reject)", 45);
    v50 = *(v8 + 48);
    for (i = *(v8 + 56); v50 != i; ++v50)
    {
      v51 = sub_1D0BCD25C(v88, v50);
      v52 = sub_1D0BCD7C4(&v75, ",", 1);
      sub_1D0B751F4(__p, off_1E83D8320[*v50]);
      if ((v74 & 0x80u) == 0)
      {
        v53 = __p;
      }

      else
      {
        v53 = __p[0];
      }

      if ((v74 & 0x80u) == 0)
      {
        v54 = v74;
      }

      else
      {
        v54 = __p[1];
      }

      v55 = sub_1D0BCD7C4(v52, v53, v54);
      v56 = sub_1D0BCD7C4(v55, ",", 1);
      v57 = MEMORY[0x1D387E9C0](v56, *v51);
      v58 = sub_1D0BCD7C4(v57, ",", 1);
      v48 = MEMORY[0x1D387E9C0](v58, v51[1]);
      if (v74 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (cnprint::CNPrinter::GetLogLevel(v48) <= 1)
    {
      v72 = 12;
      v71 = 1;
      v70[0] = (*(*v7 + 16))(v7);
      v70[1] = v59;
      sub_1D0BC2E5C(__p, &v76);
      v60 = (v74 & 0x80u) == 0 ? __p : __p[0];
      v61 = cnprint::CNLogFormatter::FormatGeneral(v8 + 208, v70, "%s", v60);
      v62 = *(v8 + 231) >= 0 ? v61 : *(v8 + 208);
      cnprint::CNPrinter::Print(&v72, &v71, "%s", v62);
      if (v74 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v75 = *MEMORY[0x1E69E54E8];
    *(&v75 + *(v75 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v76 = MEMORY[0x1E69E5548] + 16;
    if (v80 < 0)
    {
      operator delete(v79);
    }

    v76 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v77);
    std::ostream::~ostream();
    MEMORY[0x1D387EBF0](v81);
  }

  return sub_1D0BCB594(v88);
}

void sub_1D0BCD1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  sub_1D0D36324(&a27);
  sub_1D0BCB594(v27 - 176);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0BCD25C(float *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *(a1 + 2);
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *(a1 + 1);
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_17;
  }

  return v7 + 20;
}

void sub_1D0BCD71C(_Unwind_Exception *a1)
{
  if (v1[160] == 1)
  {
    *v2 = &unk_1F4CD5E28;
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t cnprint::CNPrinter::WillPrint(cnprint::CNPrinter *a1)
{
  cnprint::CNPrinter::GetCNPrinter(a1);
  v6 = dword_1EC5FB8D0;
  result = sub_1D0B7DED0(&stru_1EC5FB8D8, &v6);
  if (result)
  {
    v3 = byte_1EC5FB950;
    std::timed_mutex::unlock(&stru_1EC5FB8D8);
    v4 = *a1;
    return v4 >= v3 && v4 != 255;
  }

  return result;
}

void *sub_1D0BCD7C4(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1D387E950](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_1D0BC2C74(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1D387E960](v13);
  return a1;
}

void sub_1D0BCD904(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1D387E960](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1D0BCD8E4);
}

uint64_t sub_1D0BCD96C(uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

void raven::RavenSequentialGNSSMeasurementSelector::ComputeMeasurementFunctionOutput(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    v5 = a1 + 208;
    do
    {
      raven::RavenSequentialGNSSMeasurementSelector::ComputeMeasurementFunctionOutput(a1, *(v2 + 16), *(v2 + 24), &v12);
      if (*(v2 + 160) == v13[104])
      {
        if (!*(v2 + 160))
        {
          goto LABEL_9;
        }

        *(v2 + 48) = v12;
        sub_1D0B894B0(v2 + 56, v13);
        if ((*(v2 + 160) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        if (*(v2 + 160))
        {
          *(v2 + 56) = &unk_1F4CD5E28;
          *(v2 + 160) = 0;
LABEL_9:
          if (!cnprint::CNPrinter::GetLogLevel(v6))
          {
            LOWORD(v12) = 12;
            v11 = 0;
            v7 = sub_1D0BCFAB8(*(v2 + 16));
            v8 = *(*(v2 + 24) + 96) - 1;
            v9 = "UnknownType";
            if (v8 <= 4)
            {
              v9 = off_1E83D8358[v8];
            }

            cnprint::CNLogFormatter::FormatGeneral(v5, a1 + 96, "#MSR %s %s could not get h-function output", v7, v9);
            if (*(a1 + 231) >= 0)
            {
              v10 = v5;
            }

            else
            {
              v10 = *(a1 + 208);
            }

            cnprint::CNPrinter::Print(&v12, &v11, "%s", v10);
          }

          goto LABEL_17;
        }

        *(v2 + 48) = v12;
        sub_1D0BD08B4(v2 + 56, v13);
        *(v2 + 160) = 1;
      }

LABEL_17:
      v2 = *(v2 + 8);
    }

    while (v2 != a2);
  }
}

void raven::RavenSequentialGNSSMeasurementSelector::ComputeMeasurementFunctionOutput(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 112) = 0;
  v220 = 0x100000001;
  *&v8 = 0x100000001;
  *(&v8 + 1) = 0x100000001;
  v219 = v8;
  v218[1] = &unk_1F4CDF418;
  v221 = &v222;
  v216 = 0x100000001;
  v215 = v8;
  v214[1] = &unk_1F4CDF418;
  v217 = v218;
  v212 = 0x100000001;
  v211 = v8;
  v210[8] = &unk_1F4CDF418;
  v213 = v214;
  v208 = 0x800000001;
  v207 = xmmword_1D0E9CBE0;
  v206 = &unk_1F4CEC348;
  v209 = v210;
  v203 = 0x100000001;
  v202 = v8;
  v201 = &unk_1F4CDF418;
  v204 = &v205;
  if ((atomic_load_explicit(&qword_1EE054D50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054D50))
  {
    sub_1D0E2DF2C();
    __cxa_atexit(sub_1D0D2FD04, &qword_1EE054D68, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE054D50);
  }

  sub_1D0B751F4(&v175, &unk_1D0ED80C5);
  LOBYTE(v176) = 0;
  HIDWORD(v176) = -1;
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  *&v182 = 0;
  *(&v182 + 1) = 0x7FF8000000000000;
  LODWORD(v183) = 0;
  BYTE4(v183) = 0;
  *(&v183 + 1) = 0x7FF8000000000000;
  *&v184[8] = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v184[24] = *&v184[8];
  *&v184[40] = *&v184[8];
  *v184 = 2143289344;
  *&v184[56] = 2143289344;
  v184[60] = 0;
  LOBYTE(v185) = 0;
  BYTE4(v185) = 0;
  BYTE8(v185) = 0;
  WORD6(v185) = 0;
  BYTE14(v185) = 1;
  v186 = *&v184[8];
  v187 = &unk_1F4CDFE98;
  sub_1D0B751F4(&v188, &unk_1D0ED80C5);
  LOBYTE(v189) = 0;
  HIDWORD(v189) = -1;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  *&v9 = 0x100000001;
  *(&v9 + 1) = 0x100000001;
  v219 = v9;
  v215 = v9;
  *v221 = *(a3 + 15);
  *v217 = (*(a3 + 42) * *(a3 + 42));
  v10 = a3[3];
  v179 = a3[2];
  v180 = v10;
  v11 = a3[1];
  v177 = *a3;
  v178 = v11;
  v12 = a3[7];
  v183 = a3[6];
  *v184 = v12;
  v13 = a3[5];
  v181 = a3[4];
  v182 = v13;
  v14 = a3[12];
  v185 = a3[11];
  v186 = v14;
  v15 = a3[10];
  *&v184[32] = a3[9];
  *&v184[48] = v15;
  *&v184[16] = a3[8];
  std::string::operator=(&v175, a2);
  v176 = *(a2 + 24);
  std::string::operator=(&v188, (a2 + 40));
  v189 = *(a2 + 64);
  v16 = *(a2 + 184);
  v17 = *(a2 + 216);
  v198 = *(a2 + 200);
  v199 = v17;
  v200 = *(a2 + 232);
  v18 = *(a2 + 120);
  v19 = *(a2 + 152);
  v194 = *(a2 + 136);
  v195 = v19;
  v196 = *(a2 + 168);
  v197 = v16;
  v20 = *(a2 + 88);
  v190 = *(a2 + 72);
  v191 = v20;
  v192 = *(a2 + 104);
  v193 = v18;
  v21 = *(a3 + 24);
  if (v21 <= 2)
  {
    if (v21)
    {
      if (v21 == 1)
      {
        sub_1D0BCF90C(&src, &v175);
        *v248 = *(a1 + 96);
        v60 = v246[0];
        v61 = sub_1D0BCFAB8(&v175);
        sub_1D0B751F4(v173, v61);
        sub_1D0BA01A8(&src, v60, v173);
        if (v174 < 0)
        {
          operator delete(v173[0]);
        }

        v63 = *(a2 + 312);
        v62 = *(a2 + 320);
        if (v62)
        {
          atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v255 = v63;
        v64 = v256;
        v256 = v62;
        if (v64)
        {
          sub_1D0B7CAB8(v64);
        }

        v65 = __dynamic_cast(&src, &unk_1F4CE42A0, &unk_1F4CEC240, 0);
        if (v65)
        {
          v66 = v65;
          v67 = *(a1 + 264);
          v68 = *(a1 + 268);
          if (v67 <= v68)
          {
            v69 = *(a1 + 268);
          }

          else
          {
            v69 = *(a1 + 264);
          }

          if (v67 && v68 && v69 == 8 && (dword_1EE054D70 <= *algn_1EE054D74 ? (v70 = *algn_1EE054D74) : (v70 = dword_1EE054D70), dword_1EE054D70 && *algn_1EE054D74 && v70 == 1))
          {
            if (v65[128])
            {
              v71 = *(a1 + 288);
              v229 = *v71;
              v230 = *(v71 + 2);
              *&v225[0] = &unk_1F4CD5F20;
              v224[0] = &unk_1F4CD5BC8;
              v223[0] = 0;
              v72 = *(v71 + 6) * 0.000001;
              *v165 = 0u;
              v166[0] = 0u;
              v164 = 0u;
              v226 = *(v65 + 136);
              v73.i64[1] = *(&v226 + 1);
              v73.i64[0] = *(v65 + 24);
              LOWORD(v233) = 0;
              v234 = 0u;
              v235 = 0u;
              LODWORD(v236) = 0;
              *&v237 = 0;
              *(&v236 + 1) = 0;
              DWORD2(v237) = 0;
              if (!cnnavigation::GNSSPseudorange(&v226, &v233, &v229, (v65 + 296), v225, v224, v223, 1, v73, *&v72, &v164))
              {
                *&v126 = 0x100000001;
                *(&v126 + 1) = 0x100000001;
                v211 = v126;
                *&v235 = 0x800000001;
                v233 = &unk_1F4CEC348;
                *(&v235 + 1) = &v236;
                v234 = xmmword_1D0E9CBE0;
                v236 = 0u;
                v237 = 0u;
                v238 = 0u;
                v239 = 0u;
                sub_1D0B894B0(&v206, &v233);
                v127 = *(v66 + 64);
                v128 = *v223;
                if (v127)
                {
                  *v213 = *v223 + *v127 + *qword_1EE054D88;
                  v129 = *(v127 + 40);
                  v130 = v209;
                  *v209 = *v129;
                  v131 = *(v127 + 28);
                  v132 = HIDWORD(v207);
                  v130[SHIDWORD(v207)] = v129[v131];
                  v133 = &v129[2 * v131];
                  v134 = v132;
                }

                else
                {
                  *v213 = *v223 + *qword_1EE054D88;
                  v130 = v209;
                  *v209 = *v165;
                  v134 = HIDWORD(v207);
                  v130[SHIDWORD(v207)] = *&v165[1];
                  v133 = v166;
                }

                v130[2 * v134] = *v133;
                v130[6 * v134] = *(v166 + 1) * 0.000001;
                *&v235 = 0x100000001;
                v233 = &unk_1F4CDF418;
                *(&v235 + 1) = &v236;
                *&v148 = 0x100000001;
                *(&v148 + 1) = 0x100000001;
                v234 = v148;
                *&v236 = 0x3FF0000000000000;
                sub_1D0B894B0(&v201, &v233);
                if (!cnprint::CNPrinter::GetLogLevel(v149))
                {
                  LOWORD(v233) = 12;
                  LOBYTE(v226) = 0;
                  v150 = *(v66 + 11);
                  v151 = *(v66 + 12);
                  v152 = sub_1D0BCFAB8((v66 + 56));
                  cnprint::CNPrinter::Print(&v233, &v226, "t,%.3lf,%s,using PSR,predicted,%.3lf,diff,%.3lf,clockEstMtrs,%.2lf,std,%.2lf,multipath,%hhu,cno,%.1lf", v151 + v150, v152, v128, *(v66 + 26) - v128, v72 * 299792458.0, *(v66 + 64), v66[277], *(v66 + 50));
                }

                src = &unk_1F4CEC228;
                if (v256)
                {
                  sub_1D0B7CAB8(v256);
                }

                src = &unk_1F4CE4300;
                if (SHIBYTE(v247) < 0)
                {
                  operator delete(*&v246[8]);
                }

LABEL_149:
                v252 = &unk_1F4CDFE98;
                if (v254 < 0)
                {
                  operator delete(v253);
                }

                v252 = &unk_1F4CD5F70;
                if ((SHIBYTE(v249) & 0x80000000) == 0)
                {
                  goto LABEL_162;
                }

                v153 = *&v248[16];
                goto LABEL_153;
              }

              LOWORD(v233) = 12;
              LOBYTE(v226) = 4;
              cnprint::CNPrinter::Print(&v233, &v226, "time,%.3lf,h-function failure on line %d: %s() %s", *(v66 + 6) + *(v66 + 5), 1451, "h_GnssPsr_RavenConvergence", "could not compute expected measurement");
              if (cnprint::CNPrinter::GetLogLevel(v74) <= 1)
              {
                LOWORD(v233) = 12;
                LOBYTE(v226) = 1;
                v75 = *(v66 + 11);
                v76 = *(v66 + 12);
                v77 = sub_1D0BCFAB8((v66 + 56));
                cnprint::CNPrinter::Print(&v233, &v226, "t,%.3lf,%s,GNSSPseudorange returned != 0", v76 + v75, v77);
              }
            }

            else
            {
              LOWORD(v233) = 12;
              LOBYTE(v164.f64[0]) = 4;
              cnprint::CNPrinter::Print(&v233, &v164, "time,%.3lf,h-function failure on line %d: %s() %s", *(v65 + 6) + *(v65 + 5), 1422, "h_GnssPsr_RavenConvergence", "invalid time");
              LOWORD(v233) = 12;
              LOBYTE(v164.f64[0]) = 4;
              v107 = *(v66 + 11);
              v108 = *(v66 + 12);
              v109 = sub_1D0BCFAB8((v66 + 56));
              cnprint::CNPrinter::Print(&v233, &v164, "t,%.3lf,%s,TAI time invalid", v108 + v107, v109);
            }
          }

          else
          {
            LOWORD(v233) = 12;
            LOBYTE(v164.f64[0]) = 4;
            cnprint::CNPrinter::Print(&v233, &v164, "time,%.3lf,h-function failure on line %d: %s() %s", *(v65 + 6) + *(v65 + 5), 1415, "h_GnssPsr_RavenConvergence", "inadequate matrices");
          }
        }

        else
        {
          LOWORD(v233) = 12;
          LOBYTE(v164.f64[0]) = 4;
          cnprint::CNPrinter::Print(&v233, &v164, "time,%.3lf,h-function failure on line %d: %s() %s", MEMORY[0x30] + MEMORY[0x28], 1401, "h_GnssPsr_RavenConvergence", "dynamic_cast failed");
        }

        LOWORD(v233) = 12;
        LOBYTE(v164.f64[0]) = 4;
        v89 = sub_1D0BCFAB8(a2);
        v90 = *(a3 + 24) - 1;
        if (v90 > 4)
        {
          v91 = "UnknownType";
        }

        else
        {
          v91 = off_1E83D8358[v90];
        }

        v92 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR %s %s h-function failed", v89, v91);
        if (*(a1 + 231) >= 0)
        {
          v93 = v92;
        }

        else
        {
          v93 = *(a1 + 208);
        }

        cnprint::CNPrinter::Print(&v233, &v164, "%s", v93);
        src = &unk_1F4CEC228;
        if (v256)
        {
          sub_1D0B7CAB8(v256);
        }

        src = &unk_1F4CE4300;
        if (SHIBYTE(v247) < 0)
        {
          operator delete(*&v246[8]);
        }

LABEL_116:
        v252 = &unk_1F4CDFE98;
        if (v254 < 0)
        {
          operator delete(v253);
        }

        v252 = &unk_1F4CD5F70;
        if (SHIBYTE(v249) < 0)
        {
          v83 = *&v248[16];
          goto LABEL_120;
        }

        goto LABEL_170;
      }

      if (v21 == 2)
      {
        sub_1D0C4E8C4(&src, &v175);
        *v248 = *(a1 + 96);
        v22 = v246[0];
        v23 = sub_1D0BCFAB8(&v175);
        sub_1D0B751F4(__p, v23);
        sub_1D0BA01A8(&src, v22, __p);
        if (v172 < 0)
        {
          operator delete(__p[0]);
        }

        v24 = __dynamic_cast(&src, &unk_1F4CE42A0, &unk_1F4CEC2A0, 0);
        if (v24)
        {
          v26 = v24;
          v27 = *(a1 + 264);
          v28 = *(a1 + 268);
          if (v27 <= v28)
          {
            v29 = *(a1 + 268);
          }

          else
          {
            v29 = *(a1 + 264);
          }

          if (v27 && v28 && v29 == 8 && (dword_1EE054D70 <= *algn_1EE054D74 ? (v30 = *algn_1EE054D74) : (v30 = dword_1EE054D70), dword_1EE054D70 && *algn_1EE054D74 && v30 == 1))
          {
            if (v24[128])
            {
              v31 = *(a1 + 288);
              v229 = *v31;
              v230 = *(v31 + 2);
              v226 = *(v31 + 24);
              v227 = *(v31 + 5);
              v224[0] = &unk_1F4CD5F20;
              v223[0] = &unk_1F4CD5BC8;
              v257.f64[0] = 0.0;
              v167 = 0u;
              *v165 = 0u;
              memset(v166, 0, sizeof(v166));
              v164 = 0u;
              v225[0] = *(v24 + 136);
              v32.i64[1] = *(&v225[0] + 1);
              v32.i64[0] = *(v24 + 24);
              v33 = *(v31 + 7);
              *v25.i64 = *(v31 + 6) / 1000000.0;
              LOWORD(v233) = 0;
              v234 = 0u;
              v235 = 0u;
              LODWORD(v236) = 0;
              *&v237 = 0;
              *(&v236 + 1) = 0;
              DWORD2(v237) = 0;
              if (cnnavigation::GNSSDopplerShift(v225, &v233, &v229, &v226, (v24 + 296), v224, v223, 1, v32, v25, v33 / 1000000.0, v257.f64, 1u, &v164))
              {
                LOWORD(v233) = 12;
                LOBYTE(v225[0]) = 4;
                cnprint::CNPrinter::Print(&v233, v225, "time,%.3lf,h-function failure on line %d: %s() %s", *(v26 + 6) + *(v26 + 5), 989, "h_GnssDoppler_RavenConvergence", "could not compute expected measurement");
                if (cnprint::CNPrinter::GetLogLevel(v34) <= 1)
                {
                  LOWORD(v233) = 12;
                  LOBYTE(v225[0]) = 1;
                  v35 = *(v26 + 11);
                  v36 = *(v26 + 12);
                  v37 = sub_1D0BCFAB8((v26 + 56));
                  cnprint::CNPrinter::Print(&v233, v225, "t,%.3lf,%s,GNSSDopplerShift returned != 0", v36 + v35, v37);
                }

                goto LABEL_96;
              }

              v116 = 299792458.0 / *(v26 + 24);
              v117 = -(v116 * v257.f64[0]);
              *&v118 = 0x100000001;
              *(&v118 + 1) = 0x100000001;
              v211 = v118;
              *v213 = *qword_1EE054D88 - v116 * v257.f64[0];
              *&v235 = 0x800000001;
              v233 = &unk_1F4CEC348;
              *(&v235 + 1) = &v236;
              v234 = xmmword_1D0E9CBE0;
              v236 = 0u;
              v237 = 0u;
              v238 = 0u;
              v239 = 0u;
              sub_1D0B894B0(&v206, &v233);
              v119 = v209;
              *v209 = -(*v165 * v116);
              v120 = SHIDWORD(v207);
              v119[SHIDWORD(v207)] = -(*&v165[1] * v116);
              v119[2 * v120] = -(*v166 * v116);
              v119[3 * v120] = -(*(v166 + 1) * v116);
              v119[4 * v120] = -(*&v166[1] * v116);
              v119[5 * v120] = -(*(&v166[1] + 1) * v116);
              v119[6 * v120] = -(*&v167 * v116) / 1000000.0;
              v119[7 * v120] = -(*(&v167 + 1) * v116) / 1000000.0;
              *&v235 = 0x100000001;
              v233 = &unk_1F4CDF418;
              *(&v235 + 1) = &v236;
              *&v121 = 0x100000001;
              *(&v121 + 1) = 0x100000001;
              v234 = v121;
              *&v236 = 0x3FF0000000000000;
              sub_1D0B894B0(&v201, &v233);
              if (!cnprint::CNPrinter::GetLogLevel(v122))
              {
                LOWORD(v233) = 12;
                LOBYTE(v225[0]) = 0;
                v123 = *(v26 + 11);
                v124 = *(v26 + 12);
                v125 = sub_1D0BCFAB8((v26 + 56));
                cnprint::CNPrinter::Print(&v233, v225, "t,%.3lf,%s,using Doppler,predicted,%.3lf,obs,%.3lf,diff,%.3lf,clockEstMtrs,%.2lf,clockDriftMps,%.2lf,std,%.2lf,multipath,%hhu,cno,%.1lf", v124 + v123, v125, v117, *(v26 + 26), *(v26 + 26) - v117, *(*(a1 + 288) + 48) * 299.792458, *(*(a1 + 288) + 56) * 299.792458, *(v26 + 64), v26[277], *(v26 + 50));
              }

              src = &unk_1F4CE4300;
              if (SHIBYTE(v247) < 0)
              {
                operator delete(*&v246[8]);
              }

              goto LABEL_149;
            }

            LOWORD(v233) = 12;
            LOBYTE(v164.f64[0]) = 4;
            cnprint::CNPrinter::Print(&v233, &v164, "time,%.3lf,h-function failure on line %d: %s() %s", *(v24 + 6) + *(v24 + 5), 952, "h_GnssDoppler_RavenConvergence", "invalid time");
            LOWORD(v233) = 12;
            LOBYTE(v164.f64[0]) = 4;
            v104 = *(v26 + 11);
            v105 = *(v26 + 12);
            v106 = sub_1D0BCFAB8((v26 + 56));
            cnprint::CNPrinter::Print(&v233, &v164, "t,%.3lf,%s,TAI time invalid", v105 + v104, v106);
          }

          else
          {
            LOWORD(v233) = 12;
            LOBYTE(v164.f64[0]) = 4;
            cnprint::CNPrinter::Print(&v233, &v164, "time,%.3lf,h-function failure on line %d: %s() %s", *(v24 + 6) + *(v24 + 5), 945, "h_GnssDoppler_RavenConvergence", "inadequate matrices");
          }
        }

        else
        {
          LOWORD(v233) = 12;
          LOBYTE(v164.f64[0]) = 4;
          cnprint::CNPrinter::Print(&v233, &v164, "time,%.3lf,h-function failure on line %d: %s() %s", MEMORY[0x30] + MEMORY[0x28], 931, "h_GnssDoppler_RavenConvergence", "dynamic_cast failed");
        }

LABEL_96:
        LOWORD(v233) = 12;
        LOBYTE(v164.f64[0]) = 4;
        v84 = sub_1D0BCFAB8(a2);
        v85 = *(a3 + 24) - 1;
        if (v85 > 4)
        {
          v86 = "UnknownType";
        }

        else
        {
          v86 = off_1E83D8358[v85];
        }

        v87 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR %s %s h-function failed", v84, v86);
        if (*(a1 + 231) >= 0)
        {
          v88 = v87;
        }

        else
        {
          v88 = *(a1 + 208);
        }

        cnprint::CNPrinter::Print(&v233, &v164, "%s", v88);
        src = &unk_1F4CE4300;
        if (SHIBYTE(v247) < 0)
        {
          operator delete(*&v246[8]);
        }

        goto LABEL_116;
      }

LABEL_162:
      v158 = *v213;
      if ((*v213 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        LOWORD(src) = 12;
        LOBYTE(v233) = 4;
        v159 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR predicted measurement invalid,%.3lf,type,%d", v158, *(a3 + 24));
        if (*(a1 + 231) >= 0)
        {
          v160 = v159;
        }

        else
        {
          v160 = *(a1 + 208);
        }

        cnprint::CNPrinter::Print(&src, &v233, "%s", v160);
      }

      v251 = 0u;
      v250 = 0u;
      v249 = 0u;
      *&v248[8] = 0u;
      src = 0x7FF8000000000000;
      v247 = 0x800000001;
      *v246 = &unk_1F4CEC348;
      *&v246[8] = xmmword_1D0E9CBE0;
      *v248 = &v248[8];
      if (*(a4 + 112) == 1)
      {
        *(a4 + 8) = &unk_1F4CD5E28;
        *(a4 + 112) = 0;
      }

      *a4 = 0x7FF8000000000000;
      sub_1D0BD08B4(a4 + 8, v246);
      *(a4 + 112) = 1;
      *a4 = *v213;
      sub_1D0B894B0(v161, &v206);
      goto LABEL_170;
    }

LABEL_52:
    LOWORD(src) = 12;
    LOBYTE(v233) = 4;
    v57 = sub_1D0BCFAB8(a2);
    v58 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR %s unexpected meas type %d", v57, *(a3 + 24));
    if (*(a1 + 231) >= 0)
    {
      v59 = v58;
    }

    else
    {
      v59 = *(a1 + 208);
    }

    cnprint::CNPrinter::Print(&src, &v233, "%s", v59);
    goto LABEL_170;
  }

  if ((v21 - 3) >= 2)
  {
    if (v21 != 5)
    {
      goto LABEL_162;
    }

    goto LABEL_52;
  }

  sub_1D0BC3810(&v164, &v175);
  *(v166 + 8) = *(a1 + 96);
  v38 = LOBYTE(v164.f64[1]);
  v39 = sub_1D0BCFAB8(&v175);
  sub_1D0B751F4(v162, v39);
  sub_1D0BA01A8(&v164, v38, v162);
  if (v163 < 0)
  {
    operator delete(v162[0]);
  }

  v40 = __dynamic_cast(&v164, &unk_1F4CE42A0, &unk_1F4CEC300, 0);
  if (v40)
  {
    v42 = v40;
    v43 = *(a1 + 264);
    v44 = *(a1 + 268);
    if (v43 <= v44)
    {
      v45 = *(a1 + 268);
    }

    else
    {
      v45 = *(a1 + 264);
    }

    if (v43 && v44 && v45 == 8 && (dword_1EE054D70 <= *algn_1EE054D74 ? (v46 = *algn_1EE054D74) : (v46 = dword_1EE054D70), dword_1EE054D70 && *algn_1EE054D74 && v46 == 1))
    {
      if (v40[16])
      {
        v41.i64[0] = v40[35];
        v47 = v40[36] - *v41.i64;
        v48 = (COERCE__INT64(fabs(v47)) - 0x10000000000000) >> 53;
        if ((*&v47 <= -1 || v48 >= 0x3FF) && (*&v47 - 1) >= 0xFFFFFFFFFFFFFLL)
        {
          LOWORD(src) = 12;
          LOBYTE(v233) = 4;
          cnprint::CNPrinter::Print(&src, &v233, "time,%.3lf,h-function failure on line %d: %s() %s", v40[6] + *(v40 + 5), 724, "h_GnssAverageDoppler_RavenConvergence", "invalid measurement interval");
          LOWORD(src) = 12;
          LOBYTE(v233) = 4;
          v99 = *(v42 + 11);
          v100 = v42[12];
          v101 = sub_1D0BCFAB8((v42 + 7));
          v102 = *(v42 + 46) - 1;
          if (v102 > 4)
          {
            v103 = "UnknownType";
          }

          else
          {
            v103 = off_1E83D8358[v102];
          }

          cnprint::CNPrinter::Print(&src, &v233, "t,%.3lf,%s,%s,Invalid time interval,%.2lf", v100 + v99, v101, v103, v47);
        }

        else
        {
          v261[0] = a1 + 256;
          v261[1] = v40;
          v260 = 0.0;
          v258 = 0u;
          v259 = 0u;
          v257 = 0u;
          *&v246[16] = 0x800000008;
          *v246 = xmmword_1D0E84510;
          src = &unk_1F4CE43B0;
          v247 = v248;
          *&v234 = 0;
          v233 = 0;
          *v51.i64 = CNTimeSpan::SetTimeSpan(&v233, 0, v41, xmmword_1D0E84510);
          v244[0] = CNTimeSpan::operator+(v42 + 11, &v233, v51, v52);
          v244[1] = v53;
          if (sub_1D0BD09FC(v261, v244, &v260, &v257, &src, v54, v55))
          {
            LOWORD(v233) = 12;
            LOBYTE(v229) = 4;
            cnprint::CNPrinter::Print(&v233, &v229, "time,%.3lf,h-function failure on line %d: %s() %s", v42[6] + *(v42 + 5), 826, "h_GnssAverageDoppler_RavenConvergence", "could not compute expected carrier phase at start");
          }

          else
          {
            v243 = 0.0;
            v241 = 0u;
            v242 = 0u;
            v240 = 0u;
            *&v235 = 0x800000008;
            v110.i64[1] = 0x800000040;
            v234 = xmmword_1D0E84510;
            v233 = &unk_1F4CE43B0;
            *(&v235 + 1) = &v236;
            v110.i64[0] = v42[36];
            v229 = 0uLL;
            *v111.i64 = CNTimeSpan::SetTimeSpan(&v229, 0, v110, v56);
            v232[0] = CNTimeSpan::operator+(v42 + 11, &v229, v111, v112);
            v232[1] = v113;
            if (!sub_1D0BD09FC(v261, v232, &v243, &v240, &v233, v114, v115))
            {
              v135 = 1.0 / v47 * (299792458.0 / v42[24]);
              *&v136 = 0x100000001;
              *(&v136 + 1) = 0x100000001;
              v211 = v136;
              v137 = v243;
              v138 = v260;
              v139 = v243 - v260;
              *v213 = *qword_1EE054D88 + (v243 - v260) * v135;
              sub_1D0BD1400(1, 8, &v229);
              v140 = *(&v241 + 1);
              v141 = v231;
              *v231 = v135 * *&v241;
              v142 = SHIDWORD(v230);
              v141[SHIDWORD(v230)] = v135 * v140;
              v143 = *(&v242 + 1);
              v141[2 * v142] = v135 * *&v242;
              v141[6 * v142] = v135 * v143 * 0.000001;
              sub_1D0BD1400(1, 8, &v226);
              v144 = *(&v258 + 1);
              v145 = v228;
              *v228 = v135 * *&v258;
              v146 = SHIDWORD(v227);
              v145[SHIDWORD(v227)] = v135 * v144;
              v147 = *(&v259 + 1);
              v145[2 * v146] = v135 * *&v259;
              v145[6 * v146] = v135 * v147 * 0.000001;
              sub_1D0BD1400(1, 8, v225);
              sub_1D0B894B0(&v206, v225);
              if (fabs(v42[36]) <= 0.001)
              {
                sub_1D0BD1484(&v226, &src, v224);
                sub_1D0BD1508(&v229, v224, v225);
              }

              else
              {
                sub_1D0BD1484(&v229, &v233, v224);
                sub_1D0BD1484(&v226, &src, v223);
                sub_1D0BD1508(v224, v223, v225);
              }

              sub_1D0B894B0(&v206, v225);
              v209[7 * SHIDWORD(v207)] = v209[7 * SHIDWORD(v207)] + v135 * v139 * 0.000001;
              sub_1D0BBBC94(1u, 1u, v225);
              sub_1D0B894B0(&v201, v225);
              if (!cnprint::CNPrinter::GetLogLevel(v154))
              {
                LOWORD(v225[0]) = 12;
                LOBYTE(v224[0]) = 0;
                v155 = *(v42 + 11);
                v156 = v42[12];
                v157 = sub_1D0BCFAB8((v42 + 7));
                cnprint::CNPrinter::Print(v225, v224, "t,%.3lf,%s,using average Doppler,predictedCrnt,%.3lf,predictedPrev,%.3lf,diff,%.3lf,std,%.4lf,multipath,%hhu,cno,%.1lf", v156 + v155, v157, v137, v138, *v213, *(v42 + 64), *(v42 + 277), *(v42 + 50));
              }

              *&v164.f64[0] = &unk_1F4CE4300;
              if (SBYTE7(v166[0]) < 0)
              {
                operator delete(v165[0]);
              }

              v168 = &unk_1F4CDFE98;
              if (v170 < 0)
              {
                operator delete(v169);
              }

              v168 = &unk_1F4CD5F70;
              if ((SHIBYTE(v167) & 0x80000000) == 0)
              {
                goto LABEL_162;
              }

              v153 = *(&v166[1] + 1);
LABEL_153:
              operator delete(v153);
              goto LABEL_162;
            }

            sub_1D0D85A30((v42 + 5), "could not compute expected carrier phase at end", "h_GnssAverageDoppler_RavenConvergence", 836);
          }
        }
      }

      else
      {
        LOWORD(src) = 12;
        LOBYTE(v233) = 4;
        cnprint::CNPrinter::Print(&src, &v233, "time,%.3lf,h-function failure on line %d: %s() %s", v40[6] + *(v40 + 5), 716, "h_GnssAverageDoppler_RavenConvergence", "invalid time");
        LOWORD(src) = 12;
        LOBYTE(v233) = 4;
        v94 = *(v42 + 11);
        v95 = v42[12];
        v96 = sub_1D0BCFAB8((v42 + 7));
        v97 = *(v42 + 46) - 1;
        if (v97 > 4)
        {
          v98 = "UnknownType";
        }

        else
        {
          v98 = off_1E83D8358[v97];
        }

        cnprint::CNPrinter::Print(&src, &v233, "t,%.3lf,%s,%s,TAI time invalid", v95 + v94, v96, v98);
      }
    }

    else
    {
      LOWORD(src) = 12;
      LOBYTE(v233) = 4;
      cnprint::CNPrinter::Print(&src, &v233, "time,%.3lf,h-function failure on line %d: %s() %s", v40[6] + *(v40 + 5), 707, "h_GnssAverageDoppler_RavenConvergence", "inadequate matrices");
    }
  }

  else
  {
    LOWORD(src) = 12;
    LOBYTE(v233) = 4;
    cnprint::CNPrinter::Print(&src, &v233, "time,%.3lf,h-function failure on line %d: %s() %s", MEMORY[0x30] + MEMORY[0x28], 693, "h_GnssAverageDoppler_RavenConvergence", "dynamic_cast failed");
  }

  LOWORD(src) = 12;
  LOBYTE(v233) = 4;
  v78 = sub_1D0BCFAB8(a2);
  v79 = *(a3 + 24) - 1;
  if (v79 > 4)
  {
    v80 = "UnknownType";
  }

  else
  {
    v80 = off_1E83D8358[v79];
  }

  v81 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR %s %s h-function failed", v78, v80);
  if (*(a1 + 231) >= 0)
  {
    v82 = v81;
  }

  else
  {
    v82 = *(a1 + 208);
  }

  cnprint::CNPrinter::Print(&src, &v233, "%s", v82);
  *&v164.f64[0] = &unk_1F4CE4300;
  if (SBYTE7(v166[0]) < 0)
  {
    operator delete(v165[0]);
  }

  v168 = &unk_1F4CDFE98;
  if (v170 < 0)
  {
    operator delete(v169);
  }

  v168 = &unk_1F4CD5F70;
  if (SHIBYTE(v167) < 0)
  {
    v83 = *(&v166[1] + 1);
LABEL_120:
    operator delete(v83);
  }

LABEL_170:
  v187 = &unk_1F4CDFE98;
  if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v188.__r_.__value_.__l.__data_);
  }

  v187 = &unk_1F4CD5F70;
  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v175.__r_.__value_.__l.__data_);
  }
}

void sub_1D0BCF7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_1D0E30EA0(&a27);
  sub_1D0D840AC(&STACK[0x2C0]);
  if (*(v27 + 112) == 1)
  {
    *(v27 + 8) = &unk_1F4CD5E28;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0BCF90C(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1D0BC39B4((a1 + 56), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 72) = *(a2 + 2);
    *(a1 + 56) = v4;
  }

  *(a1 + 80) = *(a2 + 3);
  *(a1 + 88) = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  *(a1 + 152) = a2[6];
  *(a1 + 136) = v7;
  *(a1 + 120) = v6;
  *(a1 + 104) = v5;
  v8 = a2[7];
  v9 = a2[8];
  v10 = a2[9];
  *(a1 + 216) = a2[10];
  *(a1 + 200) = v10;
  *(a1 + 184) = v9;
  *(a1 + 168) = v8;
  v11 = a2[11];
  v12 = a2[12];
  v13 = a2[14];
  *(a1 + 264) = a2[13];
  *(a1 + 280) = v13;
  *(a1 + 248) = v12;
  *(a1 + 232) = v11;
  *(a1 + 296) = &unk_1F4CDFE98;
  if (*(a2 + 271) < 0)
  {
    sub_1D0BC39B4((a1 + 304), *(a2 + 31), *(a2 + 32));
  }

  else
  {
    v14 = *(a2 + 248);
    *(a1 + 320) = *(a2 + 33);
    *(a1 + 304) = v14;
  }

  *(a1 + 328) = *(a2 + 34);
  v15 = *(a2 + 280);
  v16 = *(a2 + 312);
  *(a1 + 352) = *(a2 + 296);
  *(a1 + 368) = v16;
  *(a1 + 336) = v15;
  v17 = *(a2 + 328);
  v18 = *(a2 + 344);
  v19 = *(a2 + 376);
  *(a1 + 416) = *(a2 + 360);
  *(a1 + 432) = v19;
  *(a1 + 384) = v17;
  *(a1 + 400) = v18;
  v20 = *(a2 + 392);
  v21 = *(a2 + 408);
  v22 = *(a2 + 440);
  *(a1 + 480) = *(a2 + 424);
  *(a1 + 496) = v22;
  *(a1 + 448) = v20;
  *(a1 + 464) = v21;
  sub_1D0BA002C(a1, 18);
  *a1 = &unk_1F4CEC228;
  *(a1 + 512) = 0u;
  return a1;
}

void sub_1D0BCFA70(_Unwind_Exception *exception_object)
{
  *(v1 + 296) = &unk_1F4CD5F70;
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  _Unwind_Resume(exception_object);
}

const char *sub_1D0BCFAB8(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    return "InvalidID";
  }

  v1 = a1;
  if (*(a1 + 28) == -1)
  {
    return "InvalidID";
  }

  sub_1D0BC2F00(v9);
  if (v1[24] - 1 >= 6)
  {
    v3 = "Unknown,";
    v4 = 8;
  }

  else
  {
    v2 = (v1[24] - 1);
    v3 = off_1E83D7E00[v2];
    v4 = qword_1D0E83D88[v2];
  }

  sub_1D0BCD7C4(&v10, v3, v4);
  MEMORY[0x1D387E9C0](&v10, *(v1 + 7));
  sub_1D0BC2E5C(&v7, &v11);
  if (v1[23] < 0)
  {
    operator delete(*v1);
  }

  *v1 = v7;
  *(v1 + 2) = v8;
  if (v1[23] < 0)
  {
    v1 = *v1;
  }

  v9[0] = *MEMORY[0x1E69E54D8];
  v5 = *(MEMORY[0x1E69E54D8] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v10 = v5;
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  MEMORY[0x1D387EBF0](&v14);
  return v1;
}

void sub_1D0BCFCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1D0C71960(&a12, MEMORY[0x1E69E54D8]);
  MEMORY[0x1D387EBF0](&a28);
  _Unwind_Resume(a1);
}

uint64_t cnnavigation::GNSSTimeOfFlight(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6, int a7, uint64_t *a8, int8x16_t a9, int8x16_t a10, double *a11, unsigned __int8 a12, uint64_t a13)
{
  v171[3] = *MEMORY[0x1E69E9840];
  if (a9.i64[0] >= 0 && ((a9.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (a9.i64[0] - 1) <= 0xFFFFFFFFFFFFELL)
  {
    v16 = a7;
    v22 = 0;
    v23 = a12;
    while ((*(a3 + v22) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v22 += 8;
      if (v22 == 24)
      {
        v25 = *(a3 + 8);
        v26 = *(a3 + 16);
        v171[0] = *a3;
        v24 = *v171;
        *&v171[1] = v25;
        *&v171[2] = v26;
        v27 = sqrt(v25 * v25 + v24 * v24 + v26 * v26);
        if (v27 < 6341752.3)
        {
          return 0xFFFFFFFFLL;
        }

        v120 = *a9.i64;
        *a11 = 0.0;
        v29 = 0.0;
        v30 = 11;
        v31 = INFINITY;
        a10.i64[0] = 0x3F131DA7D7CB8D5BLL;
        v133 = v27;
        v131 = v26;
        v132 = v24;
        while (1)
        {
          v32 = vabdd_f64(v29, v31);
          v33 = v32 < 3.33564095e-13 ? v23 : 0;
          if (v33 == 1)
          {
            v168 = 0;
            v169 = 0.0;
            *a9.i64 = v29;
            *v34.i64 = CNTimeSpan::SetTimeSpan(&v168, 0, a9, a10);
            *&v156.f64[0] = CNTimeSpan::operator-(a1, &v168, v34, v35);
            v156.f64[1] = v36;
            result = (*(*a4 + 56))(a4, &v156, a2, &v149, &v146, &v152);
          }

          else
          {
            v166 = 0uLL;
            *a9.i64 = v29;
            *v37.i64 = CNTimeSpan::SetTimeSpan(&v166, 0, a9, a10);
            v168 = CNTimeSpan::operator-(a1, &v166, v37, v38);
            v169 = v39;
            result = (*(*a4 + 56))(a4, &v168, a2, &v149, &v152, &v156);
          }

          if (result)
          {
            break;
          }

          v40 = *a11;
          v41 = __sincos_stret(*a11 * 0.0000729211515);
          v42 = v41.__sinval * v150 + v41.__cosval * v149;
          v43 = v41.__cosval * v150 - v41.__sinval * v149;
          v168 = *&v42;
          v169 = v43;
          v170 = v151;
          v44 = v42 - v24;
          v45 = v43 - v25;
          v46 = v151 - v26;
          v138 = v32;
          v140 = sqrt(v45 * v45 + v44 * v44 + v46 * v46);
          v47 = (v27 / v140 - (v25 * (v43 / v140) + v24 * (v42 / v140) + v26 * (v151 / v140))) / v140;
          v156 = 0uLL;
          v122 = v151 - v26;
          v123 = v43 - v25;
          v124 = v42 - v24;
          v135 = v40;
          if (v47 >= 0.0)
          {
            if (v47 <= 1.0)
            {
              v141.f64[0] = *a3 + v47 * v44;
              v141.f64[1] = *(a3 + 8) + v47 * v45;
              v156 = v141;
              v48 = *(a3 + 16) + v47 * v46;
            }

            else
            {
              v156.f64[0] = v41.__sinval * v150 + v41.__cosval * v149;
              v156.f64[1] = v41.__cosval * v150 - v41.__sinval * v149;
              v141 = v156;
              v48 = v151;
            }
          }

          else
          {
            v156.f64[0] = v24;
            v156.f64[1] = v25;
            v141.f64[0] = v24;
            v141.f64[1] = v25;
            v48 = v26;
          }

          v49 = sqrt(v43 * v43 + v42 * v42 + v151 * v151);
          *v157.i64 = v48;
          v144 = v49;
          v126 = v41.__sinval * v150 + v41.__cosval * v149;
          v127 = v41.__cosval * v150 - v41.__sinval * v149;
          v50 = v49 <= v27 ? v24 : v41.__sinval * v150 + v41.__cosval * v149;
          v51 = v49 <= v27 ? v25 : v41.__cosval * v150 - v41.__sinval * v149;
          v166.f64[0] = v50;
          v166.f64[1] = v51;
          v52 = v49 <= v27 ? v26 : v151;
          v167 = v52;
          v163 = 0;
          v164 = 0;
          v160 = 0.0;
          v161 = 0.0;
          v162 = 0.0;
          result = cnnavigation::ECEFToLLA(&v156, 1, &v163, 0, &v152);
          if (result)
          {
            break;
          }

          v165 = 0;
          result = cnnavigation::LLAToECEF(&v163, 1, &v160, 0, &v152);
          if (result)
          {
            break;
          }

          v53 = v25;
          v54 = v160;
          v55 = v161;
          v56 = v162;
          result = cnnavigation::ECEFToLLA(&v166, 1, &v163, 0, &v152);
          if (result)
          {
            break;
          }

          v165 = 0;
          result = cnnavigation::LLAToECEF(&v163, 1, &v160, 0, &v152);
          if (result)
          {
            break;
          }

          v57 = sqrt(v55 * v55 + v54 * v54 + v56 * v56);
          v58 = sqrt(v141.f64[1] * v141.f64[1] + v141.f64[0] * v141.f64[0] + v48 * v48);
          v59 = v58 - v57;
          v60 = v51 * v51;
          v61 = v59;
          v62 = sqrt(v60 + v50 * v50 + v52 * v52) - sqrt(v161 * v161 + v160 * v160 + v162 * v162);
          v160 = 0.0;
          a10 = 0uLL;
          v154 = 0u;
          v155 = 0u;
          v152 = 0u;
          v153 = 0u;
          v64 = v59 < 350000.0 && a5 != 0;
          if (v62 <= 350000.0)
          {
            v64 = 0;
          }

          v65 = 0.0;
          v143 = 0.0;
          v142 = v64;
          v25 = v53;
          v27 = v133;
          if (v64)
          {
            v66 = v58 < v144;
            if (v58 >= v133)
            {
              v66 = 0;
            }

            result = 0xFFFFFFFFLL;
            if (v144 < v133 || v66)
            {
              return result;
            }

            v143 = (350000.0 - v59) / (v144 - v133);
            *a10.i64 = v135;
            *a9.i64 = v135 * v143;
            v166 = 0uLL;
            *v67.i64 = CNTimeSpan::SetTimeSpan(&v166, 0, a9, a10);
            *&v156.f64[0] = CNTimeSpan::operator-(a1, &v166, v67, v68);
            v156.f64[1] = v69;
            v70 = cnnavigation::TAITime::ToGPSTime(&v156, a2);
            v72.n128_u64[0] = v71;
            v73 = *a6;
            result = v33 ? (*(v73 + 24))(a6, v70, v171, &v168, &v160, &v152, v72, v120) : (*(v73 + 16))(a6, v70, v171, &v168, &v160, v72, v120);
            a10 = 0uLL;
            if (result)
            {
              return result;
            }

            if (a5 == 2)
            {
              v160 = -v160;
            }
          }

          v145 = 0.0;
          v159 = 0.0;
          v157 = a10;
          v158 = a10;
          v156 = a10;
          v75 = v61 < 8500.0 && v16 != 0;
          v76 = v62 > 8500.0 && v75;
          v77 = 0.0;
          v24 = v132;
          if (v76)
          {
            v78 = v58 < v144;
            if (v58 >= v133)
            {
              v78 = 0;
            }

            result = 0xFFFFFFFFLL;
            if (v144 < v133 || v78)
            {
              return result;
            }

            *&v79 = (8500.0 - v61) / (v144 - v133);
            *a9.i64 = *&v79 * *a11;
            v163 = 0;
            v164 = 0;
            *v80.i64 = CNTimeSpan::SetTimeSpan(&v163, 0, a9, v79);
            *&v166.f64[0] = CNTimeSpan::operator-(a1, &v163, v80, v81);
            v166.f64[1] = v82;
            v83 = cnnavigation::TAITime::ToGPSTime(&v166, a2);
            v85.n128_u64[0] = v84;
            v86 = *a8;
            result = v33 ? (*(v86 + 24))(a8, v83, v171, &v168, &v145, &v156, v85) : (*(v86 + 16))(a8, v83, v171, &v168, &v145, v85);
            if (result)
            {
              return result;
            }

            v77 = (8500.0 - v61) / (v144 - v133);
            v65 = v145;
          }

          v31 = *a11;
          v29 = v65 + v140 / 299792458.0 + v160;
          *a11 = v29;
          if (v33)
          {
            if (fabs(v140) <= 0.000000015)
            {
              *(a13 + 32) = 0;
              *a13 = 0u;
              *(a13 + 16) = 0u;
            }

            else
            {
              v119 = v77;
              v121 = v124 / v140;
              v87 = v148;
              v128 = (v41.__cosval * v150 + -v41.__sinval * v149) * 0.0000729211515;
              v139 = v128 - v41.__cosval * v146 - v41.__sinval * v147;
              v125 = (v150 * -v41.__sinval - v41.__cosval * v149) * 0.0000729211515;
              v134 = v125 + v41.__sinval * v146 - v41.__cosval * v147;
              v136 = v41.__sinval * v147 + v41.__cosval * v146;
              v130 = v41.__cosval * v147 + -v41.__sinval * v146;
              IsValid = cnnavigation::GNSSUTCParameters::IsValid(a2);
              v89 = 1.0;
              if (IsValid)
              {
                v90 = a5;
                v91 = v122;
                if (*(a2 + 1) == 1)
                {
                  v89 = 1.0 / (1.0 - *(a2 + 16));
                }
              }

              else
              {
                v90 = a5;
                v91 = v122;
              }

              v92 = v91 / v140;
              v93 = -v87;
              v94 = v132 / v133;
              v95 = v25 / v133;
              v96 = v131 / v133;
              v97 = v126 / v144;
              v98 = v144 - v133;
              v99 = 0.0;
              v100 = 0.0;
              v101 = 0.0;
              v102 = 0.0;
              v103 = 0.0;
              v104 = 0.0;
              v105 = 0.0;
              v106 = v127 / v144;
              v107 = 0.0;
              if (v142)
              {
                if (v90 == 2)
                {
                  v107 = -1.0;
                }

                if (v90 == 1)
                {
                  v107 = 1.0;
                }

                v108 = -(350000.0 - v61) / (v98 * v98);
                v103 = *&v153 + *&v152 * (v94 * v108 * v29);
                v105 = v89 * (*&v152 + *(&v154 + 1) * v136 + *&v155 * v130 + *(&v155 + 1) * v87);
                v104 = v89 * -((v143 + (v106 * v108 * v125 + v97 * v108 * v128) * v29) * (*&v152 + *(&v154 + 1) * v139 + *&v155 * v134 + *(&v155 + 1) * v93));
                v100 = v89 * *(&v152 + 1);
                v102 = *(&v153 + 1) + *&v152 * (v95 * v108 * v29);
                v101 = *&v154 + *&v152 * (v96 * v108 * v29);
              }

              v109 = -v92;
              v110 = v123 / v140 * v134 + v121 * v139 - v92 * v87;
              v111 = v123 / v140 * v130 + v121 * v136 + v92 * v87;
              v112 = 0.0;
              v113 = 0.0;
              v114 = 0.0;
              v115 = 0.0;
              v116 = 0.0;
              if (v76)
              {
                if (a7 == 1)
                {
                  v99 = 1.0;
                }

                v117 = -(8500.0 - v61) / (v98 * v98);
                v112 = v89 * (v156.f64[0] + *v158.i64 * v136 + *&v158.i64[1] * v130 + v159 * v87);
                v113 = v89 * -((v119 + (v106 * v117 * v125 + v97 * v117 * v128) * v29) * (v156.f64[0] + *v158.i64 * v139 + *&v158.i64[1] * v134 + v159 * v93));
                v114 = v156.f64[1] + v156.f64[0] * (v94 * v117 * v29);
                v115 = *v157.i64 + v156.f64[0] * (v95 * v117 * v29);
                v116 = *&v157.i64[1] + v156.f64[0] * (v96 * v117 * v29);
              }

              v118 = 1.0 - (v104 * v107 + v110 * 0.00000000333564095 + v99 * v113);
              *a13 = (v105 * v107 + v111 * 0.00000000333564095 + v99 * v112) / v118;
              *(a13 + 8) = v100 * v107 / v118;
              *(a13 + 16) = (v103 * v107 + -v121 * 0.00000000333564095 + v99 * v114) / v118;
              *(a13 + 24) = (v102 * v107 + -(v123 / v140) * 0.00000000333564095 + v99 * v115) / v118;
              *(a13 + 32) = (v101 * v107 + v109 * 0.00000000333564095 + v99 * v116) / v118;
            }

            return 0;
          }

          v26 = v131;
          *a10.i64 = v138;
          if (v138 < 3.33564095e-13)
          {
            return 0;
          }

          --v30;
          v16 = a7;
          v23 = a12;
          if (!v30)
          {
            return 0xFFFFFFFFLL;
          }
        }

        return result;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t cnnavigation::TAITime::ToGPSTime(cnnavigation::TAITime *this, const cnnavigation::GNSSUTCParameters *a2)
{
  v3 = *this / 604800;
  v4 = *(this + 1) + (*this - 604800 * v3) + 561548.816;
  v5 = vcvtmd_s64_f64(v4 / 604800.0);
  v6 = v4 - v5 * 604800.0;
  v7 = v3 + v5 + 1042;
  if (cnnavigation::GNSSUTCParameters::IsValid(a2) && *(a2 + 1) == 1)
  {
    v17[0] = 0;
    v17[1] = 0;
    *v8.i64 = v6;
    *v10.i64 = CNTimeSpan::SetTimeSpan(v17, 604800 * v7, v8, v9);
    v11 = *(a2 + 1);
    v12 = *(a2 + 2);
    v14 = CNTimeSpan::operator-(v17, a2 + 3, v10, v13);
    v7 += vcvtmd_s64_f64((v6 + v11 + v12 * (v15 + v14)) / 604800.0);
  }

  return v7;
}

__n128 sub_1D0BD08B4(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x800000001;
  *(a1 + 24) = 0x800000001;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CEC348;
  if (a1 == a2)
  {
    v17 = "this != &(A)";
    v18 = 603;
    goto LABEL_16;
  }

  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 1)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 9)
  {
    v17 = "this->max_num_cols_ >= A.num_cols_";
    v18 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v18, v17);
  }

  v7 = *(a2 + 16);
  if (v7 > 3)
  {
    v10 = (v7 - 2);
    v11 = *(a2 + 32);
    v12 = (v7 - 1) >> 1;
    v13 = v11;
    v14 = (a1 + 40);
    do
    {
      v15 = *v13++;
      *v14++ = v15;
      --v12;
    }

    while (v12);
    v16 = v10;
    result = *(v11 + v16 * 8);
    *&v6[v16] = result;
  }

  else if (v5 >= 1)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = *v8++;
      result.n128_u64[0] = v9;
      *v6++ = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1D0BD09FC(uint64_t *a1, void *a2, double *a3, float64x2_t *a4, uint64_t a5, int8x16_t a6, int8x16_t a7)
{
  v11 = a1[1];
  v12 = CNTimeSpan::operator-(a2, (v11 + 88), a6, a7);
  v14 = *(*a1 + 32);
  v127 = *v14;
  v128 = *(v14 + 2);
  v15 = *(v14 + 6);
  *&v40 = 0x800000008;
  v38 = &unk_1F4CE43B0;
  *(&v40 + 1) = &v41;
  v39 = xmmword_1D0E84510;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v16 = 40;
  v54 = 0u;
  do
  {
    *(&v38 + v16) = 0x3FF0000000000000;
    v16 += 72;
  }

  while (v16 != 616);
  *&v17 = v13 + v12;
  v18 = sub_1D0B894B0(a5, &v38);
  v19.i64[0] = 0x3F50624DD2F1A9FCLL;
  if (fabs(*&v17) > 0.001)
  {
    v126 = v17;
    *&v41 = 0x700000006;
    v123 = 0x100000008;
    v121 = &unk_1F4CE43F8;
    v122 = xmmword_1D0E83F60;
    v124 = &v125;
    v125 = 0x700000006;
    v118 = 0x100000008;
    v116 = &unk_1F4CE4320;
    v119 = v120;
    v117 = xmmword_1D0E83F60;
    v120[1] = 0;
    v120[0] = 0;
    v113 = 0x100000008;
    v112 = xmmword_1D0E84520;
    v111 = &unk_1F4CE4320;
    v114 = &v115;
    v108 = 0x800000008;
    v106 = &unk_1F4CE43B0;
    v107 = xmmword_1D0E84510;
    v109 = &v110;
    v103 = 0x800000008;
    v101 = &unk_1F4CE43B0;
    v102 = xmmword_1D0E84510;
    v104 = &v105;
    sub_1D0BA4EA4(*a1, &v121, &v38);
    v20 = sub_1D0BA55E4(&v38, &v116, &v126, &v111, &v106, &v101);
    if (v20)
    {
      if (cnprint::CNPrinter::GetLogLevel(v20) <= 1)
      {
        LOWORD(v38) = 12;
        LOBYTE(v79) = 1;
        sub_1D0BCFAB8(a1[1] + 56);
        cnprint::CNPrinter::Print(&v38, &v79, "t,%.3lf,%s,f_TwoStateOscillator failed");
      }

      return 0xFFFFFFFFLL;
    }

    v21 = 0;
    v100 = v17;
    v22 = xmmword_1D0E7DD30;
    v23 = &v41 + 1;
    v24 = vdupq_n_s64(6uLL);
    v25 = vdupq_n_s64(2uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v24, v22)).u8[0])
      {
        *(v23 - 1) = v21;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v22)).i32[1])
      {
        *v23 = v21 + 1;
      }

      v21 += 2;
      v22 = vaddq_s64(v22, v25);
      v23 += 2;
    }

    while (v21 != 6);
    v96 = 0x100000008;
    v94 = &unk_1F4CE43F8;
    v97 = &v98;
    v95 = xmmword_1D0E84530;
    v98 = v41;
    v99 = v42;
    v91 = 0x100000008;
    v89 = &unk_1F4CE4320;
    v92 = v93;
    v90 = xmmword_1D0E84530;
    memset(v93, 0, 48);
    v86 = 0x100000008;
    v85 = xmmword_1D0E84520;
    v84 = &unk_1F4CE4320;
    v87 = &v88;
    v81 = 0x800000008;
    v79 = &unk_1F4CE43B0;
    v80 = xmmword_1D0E84510;
    v82 = &v83;
    v76 = 0x800000008;
    v74 = &unk_1F4CE43B0;
    v75 = xmmword_1D0E84510;
    v77 = &v78;
    sub_1D0BA4EA4(*a1, &v94, &v38);
    v26 = sub_1D0BA4C04(&v38, &v89, &v100, &v84, &v79, &v74);
    if (v26)
    {
      if (cnprint::CNPrinter::GetLogLevel(v26) <= 1)
      {
        LOWORD(v38) = 12;
        v73 = 1;
        v27 = *(v11 + 88);
        v28 = *(v11 + 96);
        v29 = sub_1D0BCFAB8(a1[1] + 56);
        cnprint::CNPrinter::Print(&v38, &v73, "t,%.3lf,%s,f_SixStateNearlyConstantVelocity failed", v28 + v27, v29);
      }

      return 0xFFFFFFFFLL;
    }

    v30 = v87[2];
    v127 = *v87;
    v128 = v30;
    v15 = *v114;
    sub_1D0BA16B8(&v38, a5, &v94, &v94);
    sub_1D0B9F65C(&v38, &v79);
    sub_1D0BA16B8(&v38, a5, &v121, &v121);
    sub_1D0B9F65C(&v38, &v106);
  }

  v31 = a1[1];
  v38 = 0;
  *&v39 = 0;
  v18.n128_u64[0] = v17;
  *v32.i64 = CNTimeSpan::SetTimeSpan(&v38, 0, v18, v19);
  v106 = CNTimeSpan::operator+((v31 + 136), &v38, v32, v33);
  *&v107 = v34;
  v35.i64[0] = *(v31 + 192);
  *v36.i64 = v15 * 0.000001;
  v101 = &unk_1F4CD5F20;
  v79 = &unk_1F4CD5BC8;
  LOWORD(v38) = 0;
  v39 = 0u;
  v40 = 0u;
  LODWORD(v41) = 0;
  *(&v41 + 1) = 0;
  *&v42 = 0;
  DWORD2(v42) = 0;
  result = cnnavigation::GNSSCarrierPhase(&v106, &v38, &v127, v31 + 296, &v101, &v79, a3, 1, v35, v36, 0.0, a4);
  if (!result)
  {
    return result;
  }

  if (cnprint::CNPrinter::GetLogLevel(result) <= 1)
  {
    LOWORD(v38) = 12;
    LOBYTE(v101) = 1;
    sub_1D0BCFAB8(a1[1] + 56);
    cnprint::CNPrinter::Print(&v38, &v101, "t,%.3lf,%s,GNSSCarrierPhase,start,returned != 0");
  }

  return 0xFFFFFFFFLL;
}

uint64_t cnnavigation::GNSSCarrierPhase(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, double *a7, int a8, int8x16_t a9, int8x16_t a10, double a11, float64x2_t *a12)
{
  if ((a9.i64[0] < 0 || ((a9.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (a9.i64[0] - 1) > 0xFFFFFFFFFFFFELL)
  {
    return 0xFFFFFFFFLL;
  }

  v67 = v17;
  v68 = v16;
  v69 = v15;
  v70 = v14;
  v71 = v12;
  v72 = v13;
  v27 = *a10.i64;
  for (i = 0; i != 24; i += 8)
  {
    if ((*(a3 + i) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      return 0xFFFFFFFFLL;
    }
  }

  result = 0xFFFFFFFFLL;
  if ((a10.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a11 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v54 = a9;
    v65 = 0;
    v66 = 0;
    a9.i64[0] = a10.i64[0];
    *v32.i64 = CNTimeSpan::SetTimeSpan(&v65, 0, a9, a10);
    v64[0] = CNTimeSpan::operator-(a1, &v65, v32, v33);
    v64[1] = v34;
    v62 = 0.0;
    v63 = 0;
    v60 = 0u;
    v61 = 0u;
    if (a8)
    {
      result = cnnavigation::GNSSTimeOfFlight(v64, a2, a3, a4, 2, a5, 1, a6, v54, v35, &v63, 1u, &v60);
      if (result)
      {
        return result;
      }

      v59 = 0.0;
      v38 = *&v63;
      v56 = 0;
      v57 = 0;
      v36.i64[0] = v63;
      *v39.i64 = CNTimeSpan::SetTimeSpan(&v56, 0, v36, v37);
      v65 = CNTimeSpan::operator-(v64, &v56, v39, v40);
      v66 = v41;
      result = (*(*a4 + 96))(a4, &v65, a2, &v59, 1, v58, v54);
    }

    else
    {
      result = cnnavigation::GNSSTimeOfFlight(v64, a2, a3, a4, 2, a5, 1, a6, v54, v35, &v63, 0, &v65);
      if (result)
      {
        return result;
      }

      v59 = 0.0;
      v38 = *&v63;
      v55[0] = 0;
      v55[1] = 0;
      v42.i64[0] = v63;
      *v44.i64 = CNTimeSpan::SetTimeSpan(v55, 0, v42, v43);
      v56 = CNTimeSpan::operator-(v64, v55, v44, v45);
      v57 = v46;
      result = (*(*a4 + 96))(a4, &v56, a2, &v59, 0, &v65, v54);
    }

    if (!result)
    {
      v47 = a11 + v54.n128_f64[0] * (v38 - v59 + v27);
      *a7 = v47;
      if (a8)
      {
        v48 = v58[0];
        v49 = -v58[0];
        v50 = *&v60;
        v51 = v62;
        v52 = v62 * v58[0];
        v53 = (v47 - a11) / v54.n128_f64[0] + v54.n128_f64[0] * *(&v60 + 1) - v54.n128_f64[0] * v58[1];
        a12->f64[0] = v54.n128_f64[0] * *&v60 - v54.n128_f64[0] * (v58[0] - v58[0] * *&v60);
        a12->f64[1] = v53;
        a12[1] = vmlaq_n_f64(vmulq_n_f64(vmulq_n_f64(v61, v49), -v54.n128_f64[0]), v61, v54.n128_f64[0]);
        a12[2].f64[0] = v52 * v54.n128_f64[0] + v54.n128_f64[0] * v51;
        a12[2].f64[1] = v48 * v54.n128_f64[0] - v54.n128_f64[0] * v50 + v54.n128_f64[0];
      }
    }
  }

  return result;
}

uint64_t sub_1D0BD1400@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3133, "nr >= 0");
  }

  *(a3 + 24) = 0x800000001;
  *a3 = &unk_1F4CEC348;
  *(a3 + 32) = a3 + 40;
  *(a3 + 8) = a1;
  *(a3 + 12) = a2;
  *(a3 + 16) = a2 * a1;
  *(a3 + 20) = a1;

  return sub_1D0BBBC00(a3, 0.0);
}

uint64_t sub_1D0BD1484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x800000001;
  *a3 = &unk_1F4CEC348;
  *(a3 + 8) = xmmword_1D0E9CBE0;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(a1, a2, a3);
}

double sub_1D0BD1508@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x800000001;
  *a3 = &unk_1F4CEC348;
  *(a3 + 8) = xmmword_1D0E9CBE0;
  *(a3 + 32) = a3 + 40;
  *&result = *&sub_1D0BA5A78(a1, a2, a3);
  return result;
}

double sub_1D0BD154C(unint64_t a1, double *a2, uint64_t a3, uint64_t a4, char a5, __n128 a6)
{
LABEL_1:
  v10 = a2 - 1;
  v88 = a2 - 3;
  v11 = a2 - 5;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 4;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return a6.n128_f64[0];
      }

      if (v15 == 2)
      {
        a6.n128_f64[0] = *(a2 - 1);
        if (a6.n128_f64[0] < *(v12 + 8))
        {
          v83 = *v12;
          *v12 = *(a2 - 2);
          *(a2 - 2) = v83;
          a6.n128_u64[0] = *(v12 + 8);
          *(v12 + 8) = *(a2 - 1);
          *(a2 - 1) = a6.n128_f64[0];
        }

        return a6.n128_f64[0];
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v69 = (v12 + 24);
      v70 = *(v12 + 24);
      v71 = (v12 + 8);
      v72 = *(v12 + 8);
      v73 = *(a2 - 1);
      if (v70 >= v72)
      {
        if (v73 >= v70)
        {
          return a6.n128_f64[0];
        }

        v84 = *(v12 + 16);
        *(v12 + 16) = *(a2 - 2);
        *(a2 - 2) = v84;
        v85 = *(v12 + 24);
        *(v12 + 24) = *(a2 - 1);
        *(a2 - 1) = v85;
        a6.n128_u64[0] = *(v12 + 24);
        if (a6.n128_f64[0] >= *(v12 + 8))
        {
          return a6.n128_f64[0];
        }

        v86 = *v12;
        *v12 = *(v12 + 16);
        *(v12 + 16) = v86;
      }

      else
      {
        a6.n128_u64[0] = *v12;
        if (v73 >= v70)
        {
          *v12 = *(v12 + 16);
          *(v12 + 8) = v70;
          *(v12 + 16) = a6.n128_u64[0];
          *(v12 + 24) = v72;
          if (*(a2 - 1) >= v72)
          {
            return a6.n128_f64[0];
          }

          *(v12 + 16) = *(a2 - 2);
          *(a2 - 2) = a6.n128_f64[0];
          v71 = (v12 + 24);
        }

        else
        {
          *v12 = *(a2 - 2);
          *(a2 - 2) = a6.n128_f64[0];
        }

        v69 = a2 - 1;
      }

      a6.n128_u64[0] = *v71;
      *v71 = *v69;
      *v69 = a6.n128_f64[0];
      return a6.n128_f64[0];
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {
      sub_1D0BD1E18(v12, (v12 + 16), (v12 + 32), (v12 + 48));
      a6.n128_f64[0] = *(a2 - 1);
      if (a6.n128_f64[0] < *(v12 + 56))
      {
        v74 = *(v12 + 48);
        *(v12 + 48) = *(a2 - 2);
        *(a2 - 2) = v74;
        v75 = *(v12 + 56);
        *(v12 + 56) = *(a2 - 1);
        *(a2 - 1) = v75;
        a6.n128_u64[0] = *(v12 + 56);
        v76 = *(v12 + 40);
        if (a6.n128_f64[0] < v76)
        {
          v77 = *(v12 + 48);
          v78 = *(v12 + 24);
          v79 = *(v12 + 32);
          *(v12 + 32) = v77;
          *(v12 + 40) = a6.n128_u64[0];
          *(v12 + 48) = v79;
          *(v12 + 56) = v76;
          if (a6.n128_f64[0] < v78)
          {
            v80 = *(v12 + 8);
            v81 = *(v12 + 16);
            *(v12 + 16) = v77;
            *(v12 + 24) = a6.n128_u64[0];
            *(v12 + 32) = v81;
            *(v12 + 40) = v78;
            if (a6.n128_f64[0] < v80)
            {
              v82 = *v12;
              *v12 = v77;
              *(v12 + 8) = a6.n128_u64[0];
              *(v12 + 16) = v82;
              *(v12 + 24) = v80;
            }
          }
        }
      }

      return a6.n128_f64[0];
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        sub_1D0BC437C(v12, a2);
      }

      else
      {

        sub_1D0C4DFE4(v12, a2);
      }

      return a6.n128_f64[0];
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        sub_1D0DCDEB8(v12, a2, a2, a3);
      }

      return a6.n128_f64[0];
    }

    v16 = v12 + 16 * (v15 >> 1);
    v17 = *v10;
    if (v15 < 0x81)
    {
      v23 = (v12 + 8);
      v24 = *(v12 + 8);
      v25 = (v16 + 8);
      v26 = *(v16 + 8);
      if (v24 >= v26)
      {
        if (v17 < v24)
        {
          v32 = *v12;
          *v12 = *(a2 - 2);
          *(a2 - 2) = v32;
          v33 = *(v12 + 8);
          *(v12 + 8) = *(a2 - 1);
          *(a2 - 1) = v33;
          if (*(v12 + 8) < *v25)
          {
            v34 = *v16;
            *v16 = *v12;
            *v12 = v34;
            goto LABEL_38;
          }
        }
      }

      else
      {
        v27 = *v16;
        if (v17 < v24)
        {
          *v16 = *(a2 - 2);
          *(a2 - 2) = v27;
          goto LABEL_37;
        }

        *v16 = *v12;
        *(v16 + 8) = v24;
        *v12 = v27;
        *(v12 + 8) = v26;
        if (*v10 < v26)
        {
          *v12 = *(a2 - 2);
          *(a2 - 2) = v27;
          v25 = (v12 + 8);
LABEL_37:
          v23 = a2 - 1;
LABEL_38:
          v47 = *v25;
          *v25 = *v23;
          *v23 = v47;
        }
      }

      if (a5)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    v18 = (v16 + 8);
    v19 = *(v16 + 8);
    v20 = (v12 + 8);
    v21 = *(v12 + 8);
    if (v19 < v21)
    {
      v22 = *v12;
      if (v17 >= v19)
      {
        *v12 = *v16;
        *(v12 + 8) = v19;
        *v16 = v22;
        *(v16 + 8) = v21;
        if (*v10 >= v21)
        {
          goto LABEL_29;
        }

        *v16 = *(a2 - 2);
        *(a2 - 2) = v22;
        v20 = (v16 + 8);
      }

      else
      {
        *v12 = *(a2 - 2);
        *(a2 - 2) = v22;
      }

      v31 = a2 - 1;
      goto LABEL_28;
    }

    if (v17 < v19)
    {
      v28 = *v16;
      *v16 = *(a2 - 2);
      *(a2 - 2) = v28;
      v29 = *(v16 + 8);
      *(v16 + 8) = *(a2 - 1);
      *(a2 - 1) = v29;
      if (*(v16 + 8) < *v20)
      {
        v30 = *v12;
        *v12 = *v16;
        *v16 = v30;
        v31 = (v16 + 8);
LABEL_28:
        v35 = *v20;
        *v20 = *v31;
        *v31 = v35;
      }
    }

LABEL_29:
    v36 = (v16 - 8);
    v37 = *(v16 - 8);
    v38 = (v16 - 16);
    v39 = (v12 + 24);
    v40 = *(v12 + 24);
    v41 = *v88;
    if (v37 < v40)
    {
      v42 = *(v12 + 16);
      if (v41 >= v37)
      {
        *(v12 + 16) = *v38;
        *(v12 + 24) = v37;
        *v38 = v42;
        *(v16 - 8) = v40;
        if (*v88 >= v40)
        {
          goto LABEL_45;
        }

        *v38 = *(a2 - 4);
        *(a2 - 4) = v42;
        v39 = (v16 - 8);
      }

      else
      {
        *(v12 + 16) = *(a2 - 4);
        *(a2 - 4) = v42;
      }

      v46 = a2 - 3;
      goto LABEL_44;
    }

    if (v41 < v37)
    {
      v43 = *v38;
      *v38 = *(a2 - 4);
      *(a2 - 4) = v43;
      v44 = *(v16 - 8);
      *(v16 - 8) = *(a2 - 3);
      *(a2 - 3) = v44;
      if (*(v16 - 8) < *v39)
      {
        v45 = *(v12 + 16);
        *(v12 + 16) = *v38;
        *v38 = v45;
        v46 = (v16 - 8);
LABEL_44:
        v48 = *v39;
        *v39 = *v46;
        *v46 = v48;
      }
    }

LABEL_45:
    v49 = *(v16 + 24);
    v50 = (v16 + 16);
    v51 = (v12 + 40);
    v52 = *(v12 + 40);
    v53 = *v11;
    if (v49 < v52)
    {
      v54 = *(v12 + 32);
      if (v53 >= v49)
      {
        *(v12 + 32) = *v50;
        *(v12 + 40) = v49;
        *v50 = v54;
        *(v16 + 24) = v52;
        v49 = v52;
        if (*v11 >= v52)
        {
          goto LABEL_55;
        }

        *v50 = *(a2 - 6);
        *(a2 - 6) = v54;
        v51 = (v16 + 24);
      }

      else
      {
        *(v12 + 32) = *(a2 - 6);
        *(a2 - 6) = v54;
      }

      v58 = a2 - 5;
      goto LABEL_54;
    }

    if (v53 < v49)
    {
      v55 = *v50;
      *v50 = *(a2 - 6);
      *(a2 - 6) = v55;
      v56 = *(v16 + 24);
      *(v16 + 24) = *(a2 - 5);
      *(a2 - 5) = v56;
      v49 = *(v16 + 24);
      if (v49 < *v51)
      {
        v57 = *(v12 + 32);
        *(v12 + 32) = *v50;
        *v50 = v57;
        v58 = (v16 + 24);
LABEL_54:
        v59 = *v51;
        *v51 = *v58;
        *v58 = v59;
        v49 = *(v16 + 24);
      }
    }

LABEL_55:
    v60 = *v18;
    v61 = *v36;
    if (*v18 >= *v36)
    {
      v62 = *v16;
      if (v49 >= v60)
      {
        goto LABEL_65;
      }

      v63 = *v50;
      *v16 = *v50;
      *(v16 + 8) = v49;
      *v50 = v62;
      *(v16 + 24) = v60;
      if (v49 < v61)
      {
        v64 = *v38;
        *v38 = v63;
        *v16 = v64;
LABEL_64:
        *v36 = v49;
        *v18 = v61;
        v62 = *v16;
        v60 = *(v16 + 8);
        goto LABEL_65;
      }

      v60 = v49;
      v62 = v63;
    }

    else
    {
      v62 = *v38;
      if (v49 < v60)
      {
        *v38 = *v50;
        *v50 = v62;
LABEL_63:
        v18 = (v16 + 24);
        goto LABEL_64;
      }

      *v38 = *v16;
      *(v16 - 8) = v60;
      *v16 = v62;
      *(v16 + 8) = v61;
      if (v49 < v61)
      {
        *v16 = *v50;
        *v50 = v62;
        v36 = (v16 + 8);
        goto LABEL_63;
      }

      v60 = v61;
    }

LABEL_65:
    v65 = *v12;
    *v12 = v62;
    *(v12 + 8) = v60;
    *v16 = v65;
    if (a5)
    {
      goto LABEL_67;
    }

LABEL_66:
    if (*(v12 - 8) >= *(v12 + 8))
    {
      v12 = sub_1D0DCDA94(v12, a2);
      goto LABEL_75;
    }

LABEL_67:
    v66 = sub_1D0BD1D30(v12, a2);
    if ((v67 & 1) == 0)
    {
      goto LABEL_73;
    }

    v68 = sub_1D0DCDB7C(v12, v66);
    v12 = (v66 + 2);
    if (sub_1D0DCDB7C((v66 + 2), a2))
    {
      a4 = -v14;
      a2 = v66;
      if (v68)
      {
        return a6.n128_f64[0];
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v68)
    {
LABEL_73:
      a6.n128_f64[0] = sub_1D0BD154C(a1, v66, a3, -v14, a5 & 1, a6);
      v12 = (v66 + 2);
LABEL_75:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  a6.n128_f64[0] = sub_1D0BD1E18(v12, (v12 + 16), (v12 + 32), a2 - 2);
  return a6.n128_f64[0];
}

double *sub_1D0BD1D30(double *a1, double *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  do
  {
    v5 = a1[v2 + 3];
    v2 += 2;
  }

  while (v5 < v4);
  v6 = &a1[v2];
  if (v2 == 2)
  {
    while (v6 < a2)
    {
      v7 = a2 - 2;
      v9 = *(a2 - 1);
      a2 -= 2;
      if (v9 < v4)
      {
        goto LABEL_9;
      }
    }

    v7 = a2;
  }

  else
  {
    do
    {
      v7 = a2 - 2;
      v8 = *(a2 - 1);
      a2 -= 2;
    }

    while (v8 >= v4);
  }

LABEL_9:
  v10 = &a1[v2];
  if (v6 < v7)
  {
    v11 = v7;
    do
    {
      v12 = *v10;
      *v10 = *v11;
      *v11 = v12;
      v13 = *(v10 + 1);
      v10[1] = v11[1];
      *(v11 + 1) = v13;
      do
      {
        v14 = v10[3];
        v10 += 2;
      }

      while (v14 < v4);
      do
      {
        v15 = *(v11 - 1);
        v11 -= 2;
      }

      while (v15 >= v4);
    }

    while (v10 < v11);
  }

  if (v10 - 2 != a1)
  {
    *a1 = *(v10 - 2);
    a1[1] = *(v10 - 1);
  }

  *(v10 - 2) = v3;
  *(v10 - 1) = v4;
  return v10 - 2;
}

double sub_1D0BD1E18(double *a1, double *a2, double *a3, double *a4)
{
  v4 = a2[1];
  v5 = a1 + 1;
  v6 = a3 + 1;
  result = a3[1];
  if (v4 >= a1[1])
  {
    if (result < v4)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      result = a2[1];
      a2[1] = a3[1];
      a3[1] = result;
      if (a2[1] < *v5)
      {
        v11 = *a1;
        *a1 = *a2;
        *a2 = v11;
        v9 = a1 + 1;
        v12 = a2 + 1;
LABEL_10:
        v15 = *v9;
        *v9 = *v12;
        *v12 = v15;
        result = *v6;
      }
    }
  }

  else
  {
    v8 = *a1;
    if (result < v4)
    {
      *a1 = *a3;
      *a3 = v8;
      v9 = a1 + 1;
LABEL_9:
      v12 = a3 + 1;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v8;
    v13 = a1[1];
    a1[1] = a2[1];
    a2[1] = v13;
    result = *v6;
    if (*v6 < v13)
    {
      v14 = *a2;
      *a2 = *a3;
      *a3 = v14;
      v9 = a2 + 1;
      goto LABEL_9;
    }
  }

  if (a4[1] < result)
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    v17 = *(a3 + 1);
    a3[1] = a4[1];
    *(a4 + 1) = v17;
    result = a3[1];
    if (result < a2[1])
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      v19 = *(a2 + 1);
      a2[1] = a3[1];
      *(a3 + 1) = v19;
      result = a2[1];
      if (result < *v5)
      {
        v20 = *a1;
        *a1 = *a2;
        *a2 = v20;
        result = a1[1];
        a1[1] = a2[1];
        a2[1] = result;
      }
    }
  }

  return result;
}

void *raven::RavenSequentialGNSSMeasurementSelector::ProcessMSRDataContainer(uint64_t a1, uint64_t *a2)
{
  result = raven::RavenSequentialGNSSMeasurementSelector::TestInnovationsAndUpdateEstimator(a1, a2, *(*(a1 + 192) + 2104), v5);
  if (v6 == 1)
  {
    result = raven::RavenSequentialGNSSMeasurementSelector::ReTestInnovationsAndUpdateEstimator(a1, v5, a2);
    if (v6)
    {
      return sub_1D0BCC0B4(v5);
    }
  }

  return result;
}

void sub_1D0BD1FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    sub_1D0BCC0B4(&a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0BD2018(uint64_t result, uint64_t a2)
{
  v3 = *(result + 8);
  v2 = *(result + 12);
  *(a2 + 8) = v2;
  *(a2 + 12) = v3;
  *(a2 + 16) = v3 * v2;
  *(a2 + 20) = v2;
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(result + 20);
    v7 = *(result + 32);
    v8 = *(a2 + 32);
    do
    {
      v9 = v4;
      v10 = v5;
      for (i = v3; i; --i)
      {
        *(v8 + 8 * v10) = *(v7 + 8 * v9);
        v10 += v2;
        ++v9;
      }

      ++v5;
      v4 += v6;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t *raven::RavenSequentialGNSSMeasurementSelector::UpdateTIVsForMeasurement(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 168) == 1 && *(*(a2 + 8) + 96) == 1)
  {
    v2 = *(a2 + 16);
    v3 = result[157];
    if (!v3)
    {
LABEL_14:
      operator new();
    }

    v4 = *(a2 + 24);
    while (1)
    {
      while (1)
      {
        v5 = v3;
        v6 = *(v3 + 32);
        v7 = v5[5];
        v8 = v7 > v4;
        if (v6 != v2)
        {
          v8 = v6 > v2;
        }

        if (!v8)
        {
          break;
        }

        v3 = *v5;
        if (!*v5)
        {
          goto LABEL_14;
        }
      }

      v9 = v7 < v4;
      v10 = v6 == v2;
      v11 = v6 < v2;
      if (v10)
      {
        v11 = v9;
      }

      if (!v11)
      {
        break;
      }

      v3 = v5[1];
      if (!v3)
      {
        goto LABEL_14;
      }
    }

    v5[6] = *(a2 + 152);
  }

  return result;
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::DetermineAndSetInnovationTestResult(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v10 = a4;
  v11 = a3;
  result = raven::RavenSequentialGNSSMeasurementSelector::TestInnovation(a1, a2, &v11, &v10);
  if (*(a2 + 184))
  {
    if ((result - 1) < 2)
    {
      *(a2 + 176) = result;
      return result;
    }

    if ((result - 4) >= 2)
    {
      v8 = 0x500000002;
      goto LABEL_17;
    }

    v7 = *(*(a2 + 8) + 96) - 1;
    if (v7 <= 2 && fabs(*(a2 + 152)) > *(*(a1 + 192) + qword_1D0EA3E40[v7]))
    {
      v8 = 0x400000002;
LABEL_17:
      *(a2 + 176) = v8;
      return result;
    }

    *(a2 + 176) = 4;
    if (result == 5)
    {
      v9 = 9;
LABEL_15:
      *(a2 + 180) = v9;
      return result;
    }

LABEL_13:
    v9 = 8;
    goto LABEL_15;
  }

  *(a2 + 176) = result;
  if (result == 3)
  {
    v9 = 6;
    goto LABEL_15;
  }

  if (result == 4)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::TestInnovation(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  if ((*(a2 + 168) & 1) == 0)
  {
    v20 = 12;
    v19 = 4;
    v11 = sub_1D0BCFAB8(*a2);
    v12 = *(*(a2 + 8) + 96) - 1;
    if (v12 > 4)
    {
      v13 = "UnknownType";
    }

    else
    {
      v13 = off_1E83D8358[v12];
    }

    cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR %s %s innovation data missing during testing", v11, v13);
    cnprint::CNPrinter::Print(&v20, &v19, "%s");
    return 1;
  }

  if ((*(a2 + 152) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || ((v6 = *(a2 + 160), v6 > -1) ? (v7 = ((v6 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) : (v7 = 1), v7 ? (v8 = (v6 - 1) >= 0xFFFFFFFFFFFFFLL) : (v8 = 0), v8))
  {
    v18 = 12;
    v17 = 4;
    v14 = sub_1D0BCFAB8(*a2);
    v15 = *(*(a2 + 8) + 96) - 1;
    if (v15 > 4)
    {
      v16 = "UnknownType";
    }

    else
    {
      v16 = off_1E83D8358[v15];
    }

    cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR %s %s innovation data invalid during testing", v14, v16);
    cnprint::CNPrinter::Print(&v18, &v17, "%s");
    return 1;
  }

  v9 = fabs(*(a2 + 152)) / sqrt(*(a2 + 160) + (*(*(a2 + 8) + 168) * *(*(a2 + 8) + 168)));
  if (v9 > fabs(*a3))
  {
    return 3;
  }

  if (v9 <= fabs(*a4))
  {
    return 5;
  }

  return 4;
}

uint64_t *raven::RavenSequentialGNSSMeasurementSelector::UpdateITRsForMeasurement(uint64_t *result, uint64_t a2)
{
  v2 = *(*(a2 + 8) + 96);
  if ((v2 - 2) >= 3)
  {
    if (v2 != 1)
    {
      return result;
    }

    v3 = *(a2 + 176);
    v4 = *(a2 + 16);
    v7 = (a2 + 16);
    v5 = *(a2 + 24);
    v6 = (result + 153);
  }

  else
  {
    v3 = *(a2 + 176);
    v4 = *(a2 + 16);
    v7 = (a2 + 16);
    v5 = *(a2 + 24);
    v6 = (result + 150);
  }

  result = sub_1D0BD2524(v6, v4, v5, &v7);
  *(result + 12) = v3;
  return result;
}

uint64_t *sub_1D0BD2524(uint64_t **a1, int a2, uint64_t a3, _OWORD **a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_11:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v4;
      v6 = *(v4 + 8);
      v7 = v5[5];
      v8 = v7 > a3;
      if (v6 != a2)
      {
        v8 = v6 > a2;
      }

      if (!v8)
      {
        break;
      }

      v4 = *v5;
      if (!*v5)
      {
        goto LABEL_11;
      }
    }

    v9 = v7 < a3;
    v10 = v6 == a2;
    v11 = v6 < a2;
    if (v10)
    {
      v11 = v9;
    }

    if (!v11)
    {
      return v5;
    }

    v4 = v5[1];
    if (!v4)
    {
      goto LABEL_11;
    }
  }
}

uint64_t sub_1D0BD2638(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return v3;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v9 = v7 == a2;
    v8 = v7 < a2;
    if (v9)
    {
      v8 = *(v4 + 40) < a3;
    }

    v9 = !v8;
    if (v8)
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v6 = v4;
    }

    v4 = *(v4 + v10);
  }

  while (v4);
  if (v6 == v3)
  {
    return v3;
  }

  v11 = *(v6 + 32);
  v9 = v11 == a2;
  v12 = v11 > a2;
  if (v9)
  {
    v12 = *(v6 + 40) > a3;
  }

  if (v12)
  {
    return v3;
  }

  return v6;
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::Count_L1_L5_PseudorangesWithSimilarITRAndPostFilter_L1_vs_L5_Measurements(uint64_t result, uint64_t a2)
{
  *(result + 2440) = 0;
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    v4 = result;
    while (1)
    {
      v5 = v2;
      v6 = v2 + 16;
      v7 = *(v2 + 16);
      v2 = *(v2 + 8);
      v8 = *(v7 + 24);
      if ((v8 - 3) < 4 || v8 == 1)
      {
        v10 = *(v5 + 192);
        if (v10 >= 3)
        {
          if (v10 == 3)
          {
            v11 = *(v5 + 24);
            if (*(v11 + 96) != 1)
            {
              goto LABEL_9;
            }

            v12 = 1;
          }

          else
          {
            v11 = *(v5 + 24);
            v12 = *(v11 + 96);
          }

          v13 = *(v11 + 100) - 2 > 8 ? 2 : byte_1D0EA3E63[(*(v11 + 100) - 2)];
          if (v2 != a2)
          {
            break;
          }
        }
      }

LABEL_9:
      if (v2 == a2)
      {
        return result;
      }
    }

    v14 = v12 - 2;
    if ((v12 - 2) < 3)
    {
      v12 = 2;
    }

    v15 = v2;
    while (1)
    {
      v16 = *(v15 + 192);
      if (v16 < 3 || v16 == 3 && *(*(v15 + 24) + 96) != 1)
      {
        goto LABEL_23;
      }

      v17 = *(v15 + 16);
      if (*(v17 + 24) != v8 || *(v17 + 28) != *(v7 + 28))
      {
        goto LABEL_23;
      }

      v18 = *(v15 + 24);
      v19 = *(v18 + 96);
      result = (v19 - 2);
      if (result < 3)
      {
        v19 = 2;
      }

      if (v19 != v12)
      {
        goto LABEL_23;
      }

      result = *(v18 + 100);
      v20 = 1;
      if (result <= 0xA)
      {
        if (((1 << result) & 0x544) != 0)
        {
          v20 = 2;
        }

        else if (!*(v18 + 100))
        {
          goto LABEL_23;
        }
      }

      if (v20 == v13)
      {
        if (v10 == 3 || v16 == 3)
        {
          if (v10 == 3 && v16 == 3)
          {
            ++*(v4 + 2444);
          }
        }

        else if ((*(v11 + 120) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *(v5 + 160) == 1 && (*(v18 + 120) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *(v15 + 160) == 1)
        {
          v21 = *(v4 + 192);
          if (v14 >= 3)
          {
            v22 = 2112;
          }

          else
          {
            v22 = 2120;
          }

          if (*(v21 + 3809) == 1 && (v23 = *(v11 + 120) - *(v5 + 48), v24 = *(v18 + 120) - *(v15 + 48), v25 = *(v21 + v22), vabdd_f64(v24, v23) > v25))
          {
            v26 = v25 * *(v21 + 2128);
            v27 = fabs(v24);
            v28 = fabs(v23);
            if (v27 <= v26 && v28 > v25)
            {
              *(v5 + 192) = 0x700000003;
              goto LABEL_70;
            }

            if (v27 <= v25 || v28 > v26)
            {
              *(v5 + 192) = 0x700000003;
              *(v15 + 192) = 0x700000003;
              raven::RavenSequentialGNSSMeasurementSelector::UpdateITRsForMeasurement(v4, v6);
            }

            else
            {
              *(v15 + 192) = 0x700000003;
            }

LABEL_69:
            v6 = v15 + 16;
LABEL_70:
            result = raven::RavenSequentialGNSSMeasurementSelector::UpdateITRsForMeasurement(v4, v6);
            v11 = *(v5 + 24);
          }

          else if (*(v21 + 3810) == 1 && *(v5 + 216) == 1 && *(v15 + 216) == 1)
          {
            v31 = *(v15 + 208);
            v32 = *(v4 + 1192);
            v33 = *(v5 + 208);
            if (v31 > v32 * v33)
            {
              *(v15 + 192) = 0x300000002;
              goto LABEL_69;
            }

            if (v33 > v31 * v32)
            {
              *(v5 + 192) = 0x300000002;
              goto LABEL_70;
            }
          }

          if (*(v11 + 96) == 1 && (*(v5 + 192) & 0xFFFFFFFE) == 4 && (*(v15 + 192) & 0xFFFFFFFE) == 4)
          {
            ++*(v4 + 2440);
          }

          goto LABEL_9;
        }
      }

LABEL_23:
      v15 = *(v15 + 8);
      if (v15 == a2)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

void raven::RavenSequentialGNSSMeasurementSelector::ReduceNumberOfLowPLOSMeasurementsForL5SupportingHardware(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 8);
    do
    {
      v7 = v6;
      v6 = *(v6 + 8);
      if ((*(v7 + 192) & 0xFFFFFFFE) == 4)
      {
        v8 = *(v7 + 24);
        v9 = *(v8 + 96);
        if (*(v7 + 200))
        {
          if (v9 == 4)
          {
            ++v5;
          }

          v10 = *(v7 + 16);
          v11 = *(v10 + 24);
          if ((v11 - 3) < 4 || v11 == 1)
          {
            v13 = *(v8 + 100);
            v14 = v13 - 2 > 8 ? 2 : byte_1D0EA3E63[(v13 - 2)];
            if (v6 != a2)
            {
              if ((v9 - 2) >= 3)
              {
                v15 = v9;
              }

              else
              {
                v15 = 2;
              }

              if (v9 == 4)
              {
                v16 = -1;
              }

              else
              {
                v16 = 0;
              }

              v17 = v6;
              do
              {
                v18 = *(v17 + 16);
                if (*(v18 + 24) == v11 && *(v18 + 28) == *(v10 + 28) && *(v17 + 200) == 1 && (*(v17 + 192) & 0xFFFFFFFE) == 4)
                {
                  v19 = *(v17 + 24);
                  v20 = *(v19 + 100);
                  v21 = 1;
                  if (v20 > 0xA)
                  {
                    goto LABEL_33;
                  }

                  if (((1 << v20) & 0x544) != 0)
                  {
                    v21 = 2;
LABEL_33:
                    if (v21 == v14)
                    {
                      v22 = *(v19 + 96);
                      if ((v22 - 2) < 3)
                      {
                        v22 = 2;
                      }

                      if (v22 == v15)
                      {
                        if (*(v7 + 200) == 1 && (v13 > 9 || ((1 << v13) & 0x2BB) == 0))
                        {
                          *(v17 + 192) = 0x100000002;
                          *(v17 + 200) = 0;
                        }

                        else
                        {
                          v23 = v20 > 9;
                          v24 = (1 << v20) & 0x2BB;
                          if (v23 || v24 == 0)
                          {
                            *(v7 + 192) = 0x100000002;
                            *(v7 + 200) = 0;
                            v5 += v16;
                          }
                        }
                      }
                    }

                    goto LABEL_47;
                  }

                  if (*(v19 + 100))
                  {
                    goto LABEL_33;
                  }
                }

LABEL_47:
                v17 = *(v17 + 8);
              }

              while (v17 != a2);
            }
          }
        }

        else if (v9 == 1)
        {
          ++v3;
        }

        else
        {
          ++v4;
        }
      }
    }

    while (v6 != a2);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      if (*(v2 + 200) != 1 || (*(v2 + 192) & 0xFFFFFFFE) != 4)
      {
        goto LABEL_66;
      }

      v29 = *(*(v2 + 24) + 96);
      if ((v29 - 2) < 2)
      {
        if ((++v28 + v5) <= 4 && (v28 + v5 + v4) < 0xB)
        {
          goto LABEL_66;
        }

LABEL_65:
        *(v2 + 192) = 0x100000002;
        *(v2 + 200) = 0;
        goto LABEL_66;
      }

      if (v29 == 4)
      {
        if (++v27 > 4)
        {
          goto LABEL_65;
        }

        v30 = v27 + v4;
      }

      else
      {
        if (v29 != 1)
        {
          goto LABEL_66;
        }

        if (++v26 > 4)
        {
          goto LABEL_65;
        }

        v30 = v26 + v3;
      }

      if (v30 > 0xA)
      {
        goto LABEL_65;
      }

LABEL_66:
      v2 = *(v2 + 8);
    }

    while (v2 != a2);
  }
}

uint64_t sub_1D0BD2CA4(uint64_t a1, float64_t a2, float64_t a3, double a4)
{
  *(a1 + 8) = 0;
  *(a1 + 40) = 0x300000003;
  *(a1 + 16) = &unk_1F4CD5DD0;
  *(a1 + 24) = xmmword_1D0E76C10;
  *(a1 + 48) = a1 + 56;
  *a1 = &unk_1F4CD5D50;
  sub_1D0B9F2DC(a1, a2, a3, a4);
  return a1;
}

void sub_1D0BD2D28(_Unwind_Exception *a1)
{
  *v1 = &unk_1F4CD5D18;
  v1[2] = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

char **sub_1D0BD2D64(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1D0BDFDC8(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1D0BD2DB0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1D0BCB594(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_1D0BD2DFC(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

float *sub_1D0BD2EB0(float *result, int a2, void *a3)
{
  v3 = *(result + 1);
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
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*result + 8 * v5);
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

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1D0BD30CC(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    sub_1D0C54BE8();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t *sub_1D0BD32D0(void *a1, int a2, _DWORD **a3)
{
  v3 = a1[1];
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
      v5 = a2 % v3;
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

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::LogEpochFooter(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 1))
  {
    v3 = result;
    if (*(result + 1506))
    {
      raven::RavenSequentialGNSSMeasurementSelector::LogPVT(result, 1, a3);
      if (*(*(v3 + 192) + 3770) == 1)
      {
        raven::RavenSequentialGNSSMeasurementSelector::LogPLOSBasedUsableMeasurementCount(v3, a2);
      }

      sub_1D0BCD7C4((v3 + 1512), "\n", 1);

      return std::ostream::flush();
    }
  }

  return result;
}

uint64_t *sub_1D0BD3584(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1D0BD3838(_Unwind_Exception *a1)
{
  sub_1D0D840AC(v1 + 56);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_1D0BD3890(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0BCA1D4(a3, a2[1]);
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
    *a3 = sub_1D0BD3890;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEC300;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEC300);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_GnssAverageDopplerArgs_RavenConvergence>::__id;
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

void raven::RavenSequentialGNSSMeasurementSelector::StringOfL1MeasurementCountsByConstellation(raven::RavenSequentialGNSSMeasurementSelector *this@<X0>, void *a2@<X8>)
{
  sub_1D0B751F4(__p, "L1");
  raven::RavenSequentialGNSSMeasurementSelector::StringOfMeasurementCountsByConstellationForFrequency(__p, this + 168, a2);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0BD39D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::StringOfMeasurementCountsByConstellationForFrequency@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  sub_1D0BC2944(&v73);
  v5 = sub_1D0BCD7C4(&v73, "#MSR GNSS measurement counts by constellation,", 46);
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = sub_1D0BCD7C4(v5, v7, v8);
  v10 = sub_1D0BCD7C4(v9, ",(type,used,rejected)", 21);
  v11 = 0;
  v53 = a2;
  do
  {
    v12 = a2[1];
    v13 = byte_1D0EA3DE8[v11];
    if (!*&v12)
    {
      goto LABEL_25;
    }

    v14 = vcnt_s8(v12);
    v14.i16[0] = vaddlv_u8(v14);
    if (v14.u32[0] > 1uLL)
    {
      v15 = byte_1D0EA3DE8[v11];
      if (*&v12 <= v13)
      {
        v15 = v13 % a2[1];
      }
    }

    else
    {
      v15 = (v12.i32[0] - 1) & v13;
    }

    v16 = *(*a2 + 8 * v15);
    if (v16)
    {
      for (i = *v16; i; i = *i)
      {
        v18 = i[1];
        if (v18 == v13)
        {
          if (*(i + 16) == v13)
          {
            LODWORD(__p[0]) = 3;
            v72 = 5;
            ITRCount = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v10, i + 3, __p, &v72);
            v31 = ITRCount;
            v70 = 4;
            v71 = 3;
            v32 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(ITRCount, i + 3, &v71, &v70);
            v33 = v32;
            v68 = 5;
            v69 = 2;
            v34 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v32, i + 3, &v69, &v68);
            v35 = v34;
            v66 = 4;
            v67 = 2;
            v36 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v34, i + 3, &v67, &v66);
            v59 = v36;
            v64 = 5;
            v65 = 4;
            v37 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v36, i + 3, &v65, &v64);
            v58 = v37;
            v57 = v35;
            v62 = 4;
            v63 = 4;
            v38 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v37, i + 3, &v63, &v62);
            v56 = v38;
            v55 = v33;
            LODWORD(__p[0]) = 3;
            v72 = 3;
            v39 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v38, i + 3, __p, &v72);
            v54 = v39;
            v70 = 3;
            v71 = 2;
            v40 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v39, i + 3, &v71, &v70);
            v41 = v40;
            v68 = 3;
            v69 = 4;
            v42 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v40, i + 3, &v69, &v68);
            v43 = v42;
            LODWORD(__p[0]) = 1;
            v72 = 5;
            v44 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v42, i + 3, __p, &v72);
            v45 = v44;
            v70 = 4;
            v71 = 1;
            v46 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v44, i + 3, &v71, &v70);
            v47 = v46;
            LODWORD(__p[0]) = 1;
            v72 = 3;
            i = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v46, i + 3, __p, &v72);
            v48 = (v55 + v31 + v57 + v59 + v58 + v56);
            v49 = (v41 + v54 + v43);
            v50 = (v47 + v45);
            a2 = v53;
            goto LABEL_26;
          }
        }

        else
        {
          if (v14.u32[0] > 1uLL)
          {
            if (v18 >= *&v12)
            {
              v18 %= *&v12;
            }
          }

          else
          {
            v18 &= *&v12 - 1;
          }

          if (v18 != v15)
          {
            goto LABEL_25;
          }
        }
      }

      v48 = 0;
      v49 = 0;
      v50 = 0;
    }

    else
    {
LABEL_25:
      v48 = 0;
      v49 = 0;
      v50 = 0;
      i = 0;
    }

LABEL_26:
    v19 = sub_1D0BCD7C4(&v73, ",", 1);
    sub_1D0B751F4(__p, off_1E83D8320[v13]);
    if ((v61 & 0x80u) == 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    if ((v61 & 0x80u) == 0)
    {
      v21 = v61;
    }

    else
    {
      v21 = __p[1];
    }

    v22 = sub_1D0BCD7C4(v19, v20, v21);
    v23 = sub_1D0BCD7C4(v22, ",pr,", 4);
    v24 = MEMORY[0x1D387E9D0](v23, v50);
    v25 = sub_1D0BCD7C4(v24, ",", 1);
    v26 = MEMORY[0x1D387E9D0](v25, i);
    v27 = sub_1D0BCD7C4(v26, ",dop,", 5);
    v28 = MEMORY[0x1D387E9D0](v27, v48);
    v29 = sub_1D0BCD7C4(v28, ",", 1);
    v10 = MEMORY[0x1D387E9D0](v29, v49);
    if (v61 < 0)
    {
      operator delete(__p[0]);
    }

    ++v11;
  }

  while (v11 != 5);
  sub_1D0BC2E5C(a3, &v74);
  v73 = *MEMORY[0x1E69E54E8];
  *(&v73 + *(v73 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v74 = MEMORY[0x1E69E5548] + 16;
  if (v76 < 0)
  {
    operator delete(v75[7].__locale_);
  }

  v74 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v75);
  std::ostream::~ostream();
  return MEMORY[0x1D387EBF0](&v77);
}

void raven::RavenSequentialGNSSMeasurementSelector::StringOfL5MeasurementCountsByConstellation(uint64_t *__return_ptr a1@<X8>, raven::RavenSequentialGNSSMeasurementSelector *this@<X0>)
{
  sub_1D0B751F4(__p, "L5");
  raven::RavenSequentialGNSSMeasurementSelector::StringOfMeasurementCountsByConstellationForFrequency(__p, this + 173, a1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0BD3FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *raven::RavenSequentialGNSSMeasurementSelector::StringOfOverallMeasurementSelectionCounts@<X0>(uint64_t *__return_ptr a1@<X8>, raven::RavenSequentialGNSSMeasurementSelector *this@<X0>)
{
  sub_1D0BC2944(&v41);
  sub_1D0BCD7C4(&v41, "#MSR Overall GNSS measurement counts (accept,reject,reweight)", 61);
  v40 = 1;
  v4 = sub_1D0BCD7C4(&v41, ",psr,", 5);
  v39 = 5;
  ITRCount = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v4, this + 183, &v40, &v39);
  v6 = MEMORY[0x1D387E9D0](v4, ITRCount);
  v7 = sub_1D0BCD7C4(v6, ",", 1);
  v38 = 3;
  v8 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v7, this + 183, &v40, &v38);
  v9 = MEMORY[0x1D387E9D0](v7, v8);
  v10 = sub_1D0BCD7C4(v9, ",", 1);
  v37 = 4;
  v11 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v10, this + 183, &v40, &v37);
  v12 = MEMORY[0x1D387E9D0](v10, v11);
  v39 = 5;
  v40 = 3;
  v13 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v12, this + 183, &v40, &v39);
  LODWORD(v10) = v13;
  v37 = 5;
  v38 = 4;
  v14 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v13, this + 183, &v38, &v37);
  v15 = v14;
  v39 = 3;
  v40 = 3;
  v16 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v14, this + 183, &v40, &v39);
  v17 = v16;
  v37 = 3;
  v38 = 4;
  v18 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v16, this + 183, &v38, &v37);
  v19 = v18;
  v39 = 4;
  v40 = 3;
  v20 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v18, this + 183, &v40, &v39);
  v21 = v20;
  v37 = 4;
  v38 = 4;
  v22 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v20, this + 183, &v38, &v37);
  v23 = sub_1D0BCD7C4(&v41, ",avg_doppler,", 13);
  v24 = MEMORY[0x1D387E9D0](v23, (v15 + v10));
  v25 = sub_1D0BCD7C4(v24, ",", 1);
  v26 = MEMORY[0x1D387E9D0](v25, (v19 + v17));
  v27 = sub_1D0BCD7C4(v26, ",", 1);
  MEMORY[0x1D387E9D0](v27, v22 + v21);
  v40 = 2;
  v28 = sub_1D0BCD7C4(&v41, ",inst_doppler,", 14);
  v39 = 5;
  v29 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v28, this + 183, &v40, &v39);
  v30 = MEMORY[0x1D387E9D0](v28, v29);
  v31 = sub_1D0BCD7C4(v30, ",", 1);
  v38 = 3;
  v32 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v31, this + 183, &v40, &v38);
  v33 = MEMORY[0x1D387E9D0](v31, v32);
  v34 = sub_1D0BCD7C4(v33, ",", 1);
  v37 = 4;
  v35 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v34, this + 183, &v40, &v37);
  MEMORY[0x1D387E9D0](v34, v35);
  sub_1D0BC2E5C(a1, &v42);
  v41 = *MEMORY[0x1E69E54E8];
  *(&v41 + *(v41 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v42 = MEMORY[0x1E69E5548] + 16;
  if (v44 < 0)
  {
    operator delete(v43[7].__locale_);
  }

  v42 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v43);
  std::ostream::~ostream();
  return MEMORY[0x1D387EBF0](&v45);
}

void sub_1D0BD439C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1D0D36324(va);
  _Unwind_Resume(a1);
}

uint64_t *raven::RavenSequentialGNSSMeasurementSelector::StringOfOverallMeasurementSelectionCountsForRayTracedMeasurements@<X0>(uint64_t *__return_ptr a1@<X8>, raven::RavenSequentialGNSSMeasurementSelector *this@<X0>)
{
  sub_1D0BC2944(&v41);
  sub_1D0BCD7C4(&v41, "#MSR ray traced GNSS measurement counts (accept,reject,reweight)", 64);
  v40 = 1;
  v4 = sub_1D0BCD7C4(&v41, ",psr,", 5);
  v39 = 5;
  ITRCount = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v4, this + 178, &v40, &v39);
  v6 = MEMORY[0x1D387E9D0](v4, ITRCount);
  v7 = sub_1D0BCD7C4(v6, ",", 1);
  v38 = 3;
  v8 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v7, this + 178, &v40, &v38);
  v9 = MEMORY[0x1D387E9D0](v7, v8);
  v10 = sub_1D0BCD7C4(v9, ",", 1);
  v37 = 4;
  v11 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v10, this + 178, &v40, &v37);
  v12 = MEMORY[0x1D387E9D0](v10, v11);
  v39 = 5;
  v40 = 3;
  v13 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v12, this + 178, &v40, &v39);
  LODWORD(v10) = v13;
  v37 = 5;
  v38 = 4;
  v14 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v13, this + 178, &v38, &v37);
  v15 = v14;
  v39 = 3;
  v40 = 3;
  v16 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v14, this + 178, &v40, &v39);
  v17 = v16;
  v37 = 3;
  v38 = 4;
  v18 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v16, this + 178, &v38, &v37);
  v19 = v18;
  v39 = 4;
  v40 = 3;
  v20 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v18, this + 178, &v40, &v39);
  v21 = v20;
  v37 = 4;
  v38 = 4;
  v22 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v20, this + 178, &v38, &v37);
  v23 = sub_1D0BCD7C4(&v41, ",avg_doppler,", 13);
  v24 = MEMORY[0x1D387E9D0](v23, (v15 + v10));
  v25 = sub_1D0BCD7C4(v24, ",", 1);
  v26 = MEMORY[0x1D387E9D0](v25, (v19 + v17));
  v27 = sub_1D0BCD7C4(v26, ",", 1);
  MEMORY[0x1D387E9D0](v27, v22 + v21);
  v40 = 2;
  v28 = sub_1D0BCD7C4(&v41, ",inst_doppler,", 14);
  v39 = 5;
  v29 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v28, this + 178, &v40, &v39);
  v30 = MEMORY[0x1D387E9D0](v28, v29);
  v31 = sub_1D0BCD7C4(v30, ",", 1);
  v38 = 3;
  v32 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v31, this + 178, &v40, &v38);
  v33 = MEMORY[0x1D387E9D0](v31, v32);
  v34 = sub_1D0BCD7C4(v33, ",", 1);
  v37 = 4;
  v35 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v34, this + 178, &v40, &v37);
  MEMORY[0x1D387E9D0](v34, v35);
  sub_1D0BC2E5C(a1, &v42);
  v41 = *MEMORY[0x1E69E54E8];
  *(&v41 + *(v41 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v42 = MEMORY[0x1E69E5548] + 16;
  if (v44 < 0)
  {
    operator delete(v43[7].__locale_);
  }

  v42 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v43);
  std::ostream::~ostream();
  return MEMORY[0x1D387EBF0](&v45);
}

void sub_1D0BD47BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1D0D36324(va);
  _Unwind_Resume(a1);
}

void sub_1D0BD482C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BCA45C(v8, a3);
  v4 = raven::RavenPassThroughEstimator::HandleEvent((v3 + 288), v8);
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

void sub_1D0BD4958(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenPassThroughEstimator::HandleEvent(raven::RavenPassThroughEstimator *this, const raven::PositionEvent *a2)
{
  v3 = *(a2 + 200);
  if (v3 == 1)
  {
    ++*(this + 870);
LABEL_6:
    memcpy(this + 2768, a2 + 8, 0x160uLL);
    *(this + 3504) = raven::RavenPassThroughEstimator::IsPosVelValidAndTimeMatched(this, (this + 2760), (this + 3120));
    return 0;
  }

  if (v3 == 9 && *(this + 870))
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t raven::RavenPassThroughEstimator::IsPosVelValidAndTimeMatched(raven::RavenPassThroughEstimator *this, const raven::PositionEvent *a2, const raven::VelocityEvent *a3)
{
  v6 = *(a3 + 104);
  v16 = *(a2 + 104);
  v17 = v6;
  v7 = CNTimeSpan::operator-(&v17, &v16, v16, v6);
  if (fabs(v8 + v7) >= 0.001)
  {
    if (cnprint::CNPrinter::GetLogLevel(v7))
    {
      return 0;
    }

    v16.i16[0] = 12;
    v15 = 0;
    v10 = this + 2712;
    v17.i64[0] = (*(*a3 + 16))(a3);
    v17.i64[1] = v11;
    cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v17, "Position and velocity time difference too big");
LABEL_9:
    if (*(this + 2735) >= 0)
    {
      v13 = v10;
    }

    else
    {
      v13 = *(this + 339);
    }

    goto LABEL_12;
  }

  if ((*(a3 + 280) & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v7) > 1)
    {
      return 0;
    }

    v16.i16[0] = 12;
    v15 = 1;
    v10 = this + 2712;
    v17.i64[0] = (*(*a3 + 16))(a3);
    v17.i64[1] = v12;
    cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v17, "Invalid velocity");
    goto LABEL_9;
  }

  if (*(a2 + 280))
  {
    return 1;
  }

  if (cnprint::CNPrinter::GetLogLevel(v7) <= 1)
  {
    v16.i16[0] = 12;
    v15 = 1;
    v17.i64[0] = (*(*a2 + 16))(a2);
    v17.i64[1] = v14;
    cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v17, "Invalid position");
    if (*(this + 2735) >= 0)
    {
      v13 = this + 2712;
    }

    else
    {
      v13 = *(this + 339);
    }

LABEL_12:
    cnprint::CNPrinter::Print(&v16, &v15, "%s", v13);
  }

  return 0;
}

void raven::RavenDeviceAttitudeActiveObject::DetectStationaryStatus(raven::RavenDeviceAttitudeActiveObject *this)
{
  v120[0] = 0;
  v121 = xmmword_1D0EA3180;
  v122 = xmmword_1D0EA3180;
  v123 = xmmword_1D0EA3180;
  v124 = xmmword_1D0EA3180;
  v125 = xmmword_1D0EA3180;
  v126 = xmmword_1D0EA3180;
  if (!*(this + 969) || !*(this + 963))
  {
    return;
  }

  v2 = *(*(this + 965) + 8 * (*(this + 968) / 0x1AuLL)) + 152 * (*(this + 968) % 0x1AuLL);
  v134[0] = (*(*v2 + 16))(v2);
  v134[1] = v3;
  v4 = *(this + 969) + *(this + 968) - 1;
  v5 = *(*(this + 965) + 8 * (v4 / 0x1A)) + 152 * (v4 % 0x1A);
  v6 = (*(*v5 + 16))(v5);
  v8 = v7;
  v9 = v7;
  v10 = *(*(this + 959) + 8 * (*(this + 962) / 0x1AuLL)) + 152 * (*(this + 962) % 0x1AuLL);
  v133[0] = (*(*v10 + 16))(v10);
  v133[1] = v11;
  v12 = *(this + 963) + *(this + 962) - 1;
  v13 = *(*(this + 959) + 8 * (v12 / 0x1A)) + 152 * (v12 % 0x1A);
  v14 = (*(*v13 + 16))(v13);
  v16 = v15;
  __p = 1;
  v117 = 0;
  v19 = CNTimeSpan::operator+(v134, &__p, v17, v18);
  *v22.i64 = v20;
  if (v6)
  {
    v23 = 1;
  }

  else
  {
    v23 = (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (!v23 || !v19 && (*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v24 = v6 <= v19, v6 == v19))
  {
    v24 = v9 <= v20;
  }

  if (!v24)
  {
    v130 = 1;
    v131 = 0;
    v25 = CNTimeSpan::operator+(v133, &v130, v22, v21);
    if (v14)
    {
      v27 = 1;
    }

    else
    {
      v27 = (*&v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
    }

    if (!v27 || !v25 && (*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v28 = v14 <= v25, v14 == v25))
    {
      v28 = v16 <= v26;
    }

    if (!v28)
    {
      __p = 0;
      v117 = 0;
      v118 = 0;
      sub_1D0C4E048(&__p, *(this + 963));
      v130 = 0;
      v131 = 0;
      v132 = 0;
      sub_1D0C4E048(&v130, *(this + 963));
      v127 = 0;
      v128 = 0;
      v129 = 0;
      sub_1D0C4E048(&v127, *(this + 963));
      v30 = *(this + 959);
      if (*(this + 960) != v30)
      {
        v31 = *(this + 962);
        v32 = (v30 + 8 * (v31 / 0x1A));
        v33 = (*v32 + 152 * (v31 % 0x1A));
        v34 = *(v30 + 8 * ((*(this + 963) + v31) / 0x1A)) + 152 * ((*(this + 963) + v31) % 0x1A);
        while (v33 != v34)
        {
          sub_1D0C4E0E8(&__p, v33 + 13);
          sub_1D0C4E0E8(&v130, v33 + 14);
          sub_1D0C4E0E8(&v127, v33 + 15);
          v33 += 19;
          if ((v33 - *v32) == 3952)
          {
            v35 = v32[1];
            ++v32;
            v33 = v35;
          }
        }
      }

      v36 = raven::RavenDeviceAttitudeActiveObject::ComputeMeanStdVector(v29, &__p);
      v38 = v37;
      *&v121 = v36;
      *(&v121 + 1) = v37;
      *&v122 = raven::RavenDeviceAttitudeActiveObject::ComputeMeanStdVector(v39, &v130);
      *(&v122 + 1) = v41;
      v45 = (v122 & 0x7FFFFFFFFFFFFFFFLL) < 0x7FF0000000000000 && (v41 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v36 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (v38 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      v120[0] = v45;
      v46 = raven::RavenDeviceAttitudeActiveObject::ComputeMeanStdVector(v40, &v127);
      v48 = v47;
      *&v123 = v46;
      *(&v123 + 1) = v47;
      v117 = __p;
      sub_1D0C4E048(&__p, *(this + 969));
      v131 = v130;
      sub_1D0C4E048(&v130, *(this + 969));
      v128 = v127;
      sub_1D0C4E048(&v127, *(this + 969));
      v50 = *(this + 965);
      if (*(this + 966) != v50)
      {
        v51 = *(this + 968);
        v52 = (v50 + 8 * (v51 / 0x1A));
        v53 = (*v52 + 152 * (v51 % 0x1A));
        v54 = *(v50 + 8 * ((*(this + 969) + v51) / 0x1A)) + 152 * ((*(this + 969) + v51) % 0x1A);
        while (v53 != v54)
        {
          sub_1D0C4E0E8(&__p, v53 + 13);
          sub_1D0C4E0E8(&v130, v53 + 14);
          sub_1D0C4E0E8(&v127, v53 + 15);
          v53 += 19;
          if ((v53 - *v52) == 3952)
          {
            v55 = v52[1];
            ++v52;
            v53 = v55;
          }
        }
      }

      v56 = raven::RavenDeviceAttitudeActiveObject::ComputeMeanStdVector(v49, &__p);
      v58 = v57;
      *&v124 = v56;
      *(&v124 + 1) = v57;
      v60 = raven::RavenDeviceAttitudeActiveObject::ComputeMeanStdVector(v59, &v130);
      v62 = v61;
      *&v125 = v60;
      *(&v125 + 1) = v61;
      v64 = raven::RavenDeviceAttitudeActiveObject::ComputeMeanStdVector(v63, &v127);
      v70 = (v48 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v46 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (v58 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v56 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (v62 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v60 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      *&v126 = v64;
      *(&v126 + 1) = v65;
      v73 = v70 && (v65 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v64 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && v45;
      v120[0] = v73;
      v74 = *(this + 965);
      v75 = *(this + 966);
      if (v75 == v74)
      {
        v75 = *(this + 965);
      }

      else
      {
        v76 = *(this + 968);
        v77 = &v74[v76 / 0x1A];
        v78 = v74[(*(this + 969) + v76) / 0x1A] + 152 * ((*(this + 969) + v76) % 0x1A);
        if (*v77 + 152 * (v76 % 0x1A) != v78)
        {
          v79 = (*v77 + 152 * (v76 % 0x1A));
          do
          {
            v80 = *v79;
            v79 += 19;
            (*v80)();
            if (v79 - *v77 == 3952)
            {
              v81 = v77[1];
              ++v77;
              v79 = v81;
            }
          }

          while (v79 != v78);
          v75 = *(this + 966);
          v74 = *(this + 965);
        }
      }

      *(this + 969) = 0;
      v82 = v75 - v74;
      if (v82 >= 3)
      {
        do
        {
          operator delete(*v74);
          v74 = (*(this + 965) + 8);
          *(this + 965) = v74;
          v82 = (*(this + 966) - v74) >> 3;
        }

        while (v82 > 2);
      }

      if (v82 == 1)
      {
        v83 = 13;
      }

      else
      {
        if (v82 != 2)
        {
          goto LABEL_84;
        }

        v83 = 26;
      }

      *(this + 968) = v83;
LABEL_84:
      v84 = *(this + 959);
      v85 = *(this + 960);
      if (v85 == v84)
      {
        v85 = *(this + 959);
      }

      else
      {
        v86 = *(this + 962);
        v87 = &v84[v86 / 0x1A];
        v88 = v84[(*(this + 963) + v86) / 0x1A] + 152 * ((*(this + 963) + v86) % 0x1A);
        if (*v87 + 152 * (v86 % 0x1A) != v88)
        {
          v89 = (*v87 + 152 * (v86 % 0x1A));
          do
          {
            v90 = *v89;
            v89 += 19;
            (*v90)();
            if (v89 - *v87 == 3952)
            {
              v91 = v87[1];
              ++v87;
              v89 = v91;
            }
          }

          while (v89 != v88);
          v85 = *(this + 960);
          v84 = *(this + 959);
        }
      }

      *(this + 963) = 0;
      v92 = v85 - v84;
      if (v92 >= 3)
      {
        do
        {
          operator delete(*v84);
          v84 = (*(this + 959) + 8);
          *(this + 959) = v84;
          v92 = (*(this + 960) - v84) >> 3;
        }

        while (v92 > 2);
      }

      if (v92 == 1)
      {
        v93 = 13;
      }

      else
      {
        if (v92 != 2)
        {
LABEL_99:
          if (v127)
          {
            v128 = v127;
            operator delete(v127);
          }

          if (v130)
          {
            v131 = v130;
            operator delete(v130);
          }

          if (__p)
          {
            v117 = __p;
            operator delete(__p);
          }

          goto LABEL_105;
        }

        v93 = 26;
      }

      *(this + 962) = v93;
      goto LABEL_99;
    }
  }

LABEL_105:
  if (v120[0])
  {
    v94 = *(this + 951);
    if (v94)
    {
      if (*(&v121 + 1) < *(this + 36) && *(&v122 + 1) < *(this + 37) && *(&v123 + 1) < *(this + 38) && *(&v124 + 1) < *(this + 837) && *(&v125 + 1) < *(this + 838) && *(&v126 + 1) < *(this + 839))
      {
        v95 = *(this + 982);
        v96 = v122;
        *v95 = v121;
        v95[1] = v96;
        v97 = v124;
        v95[2] = v123;
        v98 = *(this + 974);
        v99 = v125;
        v100 = v126;
        *v98 = v97;
        v98[1] = v99;
        v98[2] = v100;
        v101 = (*(*(this + 947) + (((v94 + *(this + 950) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * ((v94 + *(this + 1900) - 1) & 0xF));
        v102 = *(this + 990);
        *v102 = v101[184];
        v102[1] = v101[185];
        v102[2] = v101[186];
        *(this + 8144) = 1;
        raven::RavenDeviceAttitudeActiveObject::UpdateSensorStaticNoise(this, v120);
        if ((atomic_load_explicit(&qword_1EE054C50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054C50))
        {
          qword_1EE054CE8 = 0x100000003;
          qword_1EE054CD0 = &unk_1F4CDEB28;
          unk_1EE054CD8 = xmmword_1D0E7DCC0;
          qword_1EE054CF0 = &unk_1EE054CF8;
          __cxa_atexit(sub_1D0D24D20, &qword_1EE054CD0, &dword_1D0B71000);
          __cxa_guard_release(&qword_1EE054C50);
        }

        sub_1D0C4E2D8(this + 7888, &qword_1EE054CD0, &__p);
        sub_1D0BFA800(&__p);
        if (v104 > 30.0)
        {
          if (!cnprint::CNPrinter::GetLogLevel(v103))
          {
            LOWORD(__p) = 12;
            LOBYTE(v130) = 0;
            v105 = *(this + 951) + *(this + 950) - 1;
            v106 = *(*(this + 947) + ((v105 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (v105 & 0xF);
            v107 = (*(*v106 + 16))(v106);
            cnprint::CNPrinter::Print(&__p, &v130, "DevAtt,NewBodyStaionaryGravity,t,%lf,posx,%.3lf,posy,%.3lf,posz,%.3lf,ax,%.3lf,ay,%.3lf,az,%.3lf,gx,%.3lf,gy,%.3lf,gz,%.3lf", v108 + v107, **(this + 990), *(*(this + 990) + 8), *(*(this + 990) + 16), **(this + 982), *(*(this + 982) + 8), *(*(this + 982) + 16), **(this + 974), *(*(this + 974) + 8), *(*(this + 974) + 16));
          }

          sub_1D0B894B0(&qword_1EE054CD0, this + 7888);
          sub_1D0C51578(3, 1, &__p);
          *(v119 + 16) = 0x3FF0000000000000;
          v109 = *(*(this + 29) + 1160);
          v110 = *(this + 36);
          v111 = *(this + 37);
          v112 = *(this + 38);
          v113 = *(this + 951) + *(this + 950) - 1;
          v114 = *(*(this + 947) + ((v113 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (v113 & 0xF);
          v130 = (*(*v114 + 16))(v114);
          v131 = v115;
          raven::RavenDeviceAttitudeActiveObject::UpdateDeviceVehicleAttitude(this, this + 7824, &__p, &v130, 1, sqrt((v111 * v111 + v110 * v110 + v112 * v112) / 9.80665 / 9.80665 + v109 * 0.0174532925 * (v109 * 0.0174532925)));
        }
      }
    }
  }
}

void sub_1D0BD569C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  v23 = *(v21 - 192);
  if (v23)
  {
    *(v21 - 184) = v23;
    operator delete(v23);
  }

  v24 = *(v21 - 168);
  if (v24)
  {
    *(v21 - 160) = v24;
    operator delete(v24);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenDeviceAttitudeActiveObject::RaiseNonHolonomicEvent(uint64_t this, const raven::TimeMarkEvent *a2)
{
  if (*(this + 6721) == 1 && *(this + 6723) == 1)
  {
    v3 = this;
    v13 = 0x300000003;
    v11 = &unk_1F4CD5DD0;
    v12 = xmmword_1D0E76C10;
    v14 = &v15;
    sub_1D0B89390(this + 792, this + 536, &v11);
    v4 = v3[201];
    v5 = v3[200];
    v37 = 0x300000003;
    v32 = &unk_1F4CD5DD0;
    v33 = v4;
    v34 = v5;
    v35 = v5 * v4;
    v36 = v4;
    v38 = &v39;
    sub_1D0BD2018((v3 + 198), &v32);
    v18 = 0x300000003;
    v16 = &unk_1F4CD5DD0;
    v17 = xmmword_1D0E76C10;
    v19 = &v20;
    sub_1D0B89390(&v11, &v32, &v16);
    v6 = v17;
    if (v17 < 1)
    {
      v8 = 0.0;
    }

    else
    {
      v7 = 0;
      v8 = 0.0;
      do
      {
        v8 = v8 + *&v19[v7];
        v7 += HIDWORD(v17) + 1;
        --v6;
      }

      while (v6);
    }

    v9 = cnrotation::CNRotation::RotationMatrix(&v32, (v3 + 190));
    v17 = 0uLL;
    LOBYTE(v18) = 0;
    v16 = &unk_1F4CEF0F0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0x7FF8000000000000;
    *&v17 = (*(*a2 + 16))(a2, v9);
    *(&v17 + 1) = v10;
    v28 = *v38;
    v29 = v38[v36];
    v30 = v38[2 * v36];
    v31 = sqrt(v8);
    sub_1D0DD4E28(v3);
  }

  return this;
}

void raven::RavenDeviceAttitudeActiveObject::UpdateDeviceAttitudeByLinearAcceleration(raven::RavenDeviceAttitudeActiveObject *this, const raven::TimeMarkEvent *a2)
{
  MEMORY[0x1EEE9AC00](this);
  v4 = (v2 + 6720);
  if (*(v2 + 8144) == 1)
  {
    v5 = v3;
    v6 = v2;
    v7 = sub_1D0B9A2A4(v2, (v2 + 6648), 0.0);
    if (v7 && (v7 = sub_1D0B9A2A4(v6, (v6 + 240), 0.0)) && (v7 = sub_1D0BD685C(v6, (v6 + 7568))))
    {
      if (raven::RavenDeviceAttitudeActiveObject::IsMovementStraight(v6) && raven::RavenDeviceAttitudeActiveObject::IsDecelerationToStop(v6))
      {
        v165 = 0x100000003;
        v163 = &unk_1F4CDEB28;
        v9 = xmmword_1D0E7DCC0;
        v164 = xmmword_1D0E7DCC0;
        v166 = v167;
        v10 = *(v6 + 272);
        v11 = v10 + *(v6 + 280);
        v12 = *(v6 + 248);
        v13 = (*(v12 + 8 * ((v11 - 1) / 0x1A)) + 152 * ((v11 - 1) % 0x1A));
        v167[0] = v13[13];
        v167[1] = v13[14];
        v167[2] = v13[15];
        v161 = 0;
        v162 = 0;
        v158 = 0x100000003;
        v156 = &unk_1F4CDEB28;
        v157 = xmmword_1D0E7DCC0;
        v159 = &v160;
        v102 = v5;
        if (*(v6 + 256) == v12 || (v14 = (*(v12 + 8 * (v10 / 0x1A)) + 152 * (v10 % 0x1A)), v103 = *(v12 + 8 * (v11 / 0x1A)) + 152 * (v11 % 0x1A), v14 == v103))
        {
          v16 = -INFINITY;
        }

        else
        {
          v15 = (v12 + 8 * (v10 / 0x1A));
          v16 = -INFINITY;
          do
          {
            v17 = v159;
            *v159 = v14[13];
            v17[1] = v14[14];
            v17[2] = v14[15];
            v111 = 0x100000003;
            v109 = &unk_1F4CDEB28;
            v110 = v9;
            v112 = &v113;
            sub_1D0BA5A78(&v156, &v163, &v109);
            v106 = 0x100000003;
            *v105 = &unk_1F4CDEB28;
            *&v105[8] = xmmword_1D0E7DCC0;
            v107 = v108;
            *&v168[24] = 0x100000134;
            *v168 = &unk_1F4CDEC90;
            *&v168[8] = xmmword_1D0E7DD20;
            *&v168[32] = v169;
            v116 = 0x100000003;
            v114 = &unk_1F4CDEB28;
            v115 = xmmword_1D0E7DCC0;
            v117 = v118;
            sub_1D0BFB1AC(&v109, v105, v168, &v114, "2");
            v19 = v18;
            if (v18 > v16)
            {
              v161 = (*(*v14 + 16))(v14);
              v162 = v20;
              v16 = v19;
            }

            v14 += 19;
            v9 = xmmword_1D0E7DCC0;
            if ((v14 - *v15) == 3952)
            {
              v21 = v15[1];
              ++v15;
              v14 = v21;
            }
          }

          while (v14 != v103);
        }

        if (v16 >= *(*(v6 + 232) + 1064))
        {
          v104 = v9;
          if ((atomic_load_explicit(&qword_1EE054C58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054C58))
          {
            qword_1EE054C88 = 1;
            unk_1EE054C90 = 0;
            __cxa_guard_release(&qword_1EE054C58);
          }

          v153[0] = 0;
          v154 = 0u;
          memset(v155, 0, sizeof(v155));
          v150[0] = 0;
          v151 = 0u;
          memset(v152, 0, sizeof(v152));
          v147[0] = 0;
          v148 = 0u;
          memset(v149, 0, sizeof(v149));
          v28 = 0uLL;
          v29 = *(v6 + 248);
          if (*(v6 + 256) == v29)
          {
            v9.n128_u64[0] = 0;
            v8.n128_u64[0] = 0;
          }

          else
          {
            v30 = *(v6 + 272);
            v31 = (*(v29 + 8 * (v30 / 0x1A)) + 152 * (v30 % 0x1A));
            v32 = *(v29 + 8 * ((*(v6 + 280) + v30) / 0x1A)) + 152 * ((*(v6 + 280) + v30) % 0x1A);
            v9.n128_u64[0] = 0;
            v8.n128_u64[0] = 0;
            if (v31 != v32)
            {
              v33 = (v29 + 8 * (v30 / 0x1A));
              do
              {
                v114 = (*(*v31 + 16))(v31, v28, v9, v8);
                *&v115 = v34;
                *v37.i64 = CNTimeSpan::operator-(&v114, &v161, v35, v36);
                *v39.i64 = fabs(v38 + *v37.i64);
                *v168 = 0;
                *&v168[8] = 0;
                CNTimeSpan::SetTimeSpan(v168, 0, v39, v37);
                *v105 = *v168;
                if (sub_1D0B7C8AC(v105, &qword_1EE054C88))
                {
                  sub_1D0B8954C(v153, v31 + 13, 1.0);
                  sub_1D0B8954C(v150, v31 + 14, 1.0);
                  sub_1D0B8954C(v147, v31 + 15, 1.0);
                }

                v31 += 19;
                if ((v31 - *v33) == 3952)
                {
                  v40 = v33[1];
                  ++v33;
                  v31 = v40;
                }
              }

              while (v31 != v32);
              v8.n128_u64[0] = *&v155[1];
              v9.n128_u64[0] = *&v152[1];
              v28.n128_u64[0] = *&v149[1];
            }
          }

          v144 = 0x100000003;
          v142 = &unk_1F4CDEB28;
          v143 = v104;
          v145 = v146;
          v146[0] = v8.n128_u64[0];
          v146[1] = v9.n128_u64[0];
          v146[2] = v28.n128_u64[0];
          sub_1D0C4E2D8(&v142, &v163, v168);
          sub_1D0B894B0(&v142, v168);
          sub_1D0BFA800(&v142);
          v42 = v41;
          if (fabs(v41) > 0.000000015)
          {
            v139 = 0x100000003;
            v137 = &unk_1F4CDEB28;
            v138 = v104;
            v140 = &v141;
            v43 = *(v6 + 7576);
            if (*(v6 + 7584) == v43 || (v44 = *(v6 + 7600), v45 = (v43 + 8 * (v44 >> 4)), v46 = (*v45 + 2656 * (v44 & 0xF)), v47 = *(v43 + (((*(v6 + 7608) + v44) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * ((*(v6 + 7608) + v44) & 0xF), v46 == v47))
            {
              v48 = 0.0;
            }

            else
            {
              v48 = 0.0;
              v49 = -INFINITY;
              do
              {
                v50 = v46[194];
                v51 = v46[195] * v46[195] + v50 * v50 + v46[196] * v46[196];
                if (v49 < v51)
                {
                  v52 = v140;
                  *v140 = -v50;
                  v52[1] = -v46[195];
                  v52[2] = -v46[196];
                  if ((atomic_load_explicit(&qword_1EE054C68, memory_order_acquire) & 1) == 0)
                  {
                    v54 = v51;
                    v55 = __cxa_guard_acquire(&qword_1EE054C68);
                    v51 = v54;
                    if (v55)
                    {
                      *&qword_1EE054C60 = *(*(v6 + 232) + 1176) * 0.0174532925 * (*(*(v6 + 232) + 1176) * 0.0174532925);
                      __cxa_guard_release(&qword_1EE054C68);
                      v51 = v54;
                    }
                  }

                  if (*&qword_1EE054C60 >= (v46[197] + v46[200] + v46[202]) / v51)
                  {
                    v48 = (v46[197] + v46[200] + v46[202]) / v51;
                  }

                  else
                  {
                    v48 = *&qword_1EE054C60;
                  }

                  v49 = v51;
                }

                v46 += 332;
                if ((v46 - *v45) == 42496)
                {
                  v53 = v45[1];
                  ++v45;
                  v46 = v53;
                }
              }

              while (v46 != v47);
            }

            sub_1D0BFA800(&v137);
            v57 = v56;
            if (fabs(v56) > 0.000000015)
            {
              sub_1D0C51578(3, 1, v136);
              *(v136[4] + 8) = 0xBFF0000000000000;
              sub_1D0C51578(3, 1, v134);
              sub_1D0C51578(3, 1, v132);
              v131 = -1.0;
              sub_1D0C51578(3, 1, v129);
              v58 = *(v6 + 7608) + *(v6 + 7600) - 1;
              v59 = (*(*(v6 + 7576) + ((v58 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (v58 & 0xF));
              v60 = v130;
              *v130 = v59[184];
              v60[1] = v59[185];
              v60[2] = v59[186];
              if (raven::RavenDeviceAttitudeActiveObject::DeriveGravityVectorInEcefAndBody(v6, v129, v134, v132, &v131))
              {
                v61 = (*(*v102 + 16))(v102);
                v63 = v62;
                sub_1D0BFA800(v134);
                v65.f64[0] = 1.0 / v64;
                sub_1D0C51FB4(v134, v128, v65);
                v66.f64[0] = 1.0 / v57;
                sub_1D0C51FB4(&v137, &v125, v66);
                v67 = v126;
                if (v126 < 1)
                {
                  v69 = 0.0;
                }

                else
                {
                  v68 = v127;
                  v69 = 0.0;
                  v70 = v128[4];
                  do
                  {
                    v71 = *v68++;
                    v72 = v71;
                    v73 = *v70++;
                    v69 = v69 + v72 * v73;
                    --v67;
                  }

                  while (v67);
                }

                v74 = acos(v69);
                sub_1D0BFA800(v132);
                v76.f64[0] = 1.0 / v75;
                sub_1D0C51FB4(v132, v124, v76);
                v77.f64[0] = 1.0 / v42;
                sub_1D0C51FB4(&v142, &v121, v77);
                v78 = v122;
                if (v122 < 1)
                {
                  v80 = 0.0;
                }

                else
                {
                  v79 = v123;
                  v80 = 0.0;
                  v81 = v124[4];
                  do
                  {
                    v82 = *v79++;
                    v83 = v82;
                    v84 = *v81++;
                    v80 = v80 + v83 * v84;
                    --v78;
                  }

                  while (v78);
                }

                v85 = vabdd_f64(v74, acos(v80));
                v86 = sqrt(v48 + v85 * 0.5 * (v85 * 0.5));
                v119 = 0uLL;
                *&v120 = 0;
                *(&v120 + 1) = 0x3FF0000000000000;
                v116 = 0x300000003;
                v114 = &unk_1F4CD5DD0;
                v115 = xmmword_1D0E76C10;
                v117 = v118;
                v87 = v131;
                if (raven::RavenDeviceAttitudeActiveObject::AttitudeViaTwoVectors(v88))
                {
                  cnrotation::CNRotation::RotationMatrix(&v109, &v119);
                  if (cnprint::CNPrinter::GetLogLevel(v89) <= 1)
                  {
                    *v168 = 12;
                    v105[0] = 1;
                    v90 = &v112[v110.n128_i32[3]];
                    v91 = &v112[2 * v110.n128_i32[3]];
                    v92 = *v90;
                    v93 = v90[1];
                    v94 = v90[2];
                    v95 = &v117[SHIDWORD(v115)];
                    cnprint::CNPrinter::Print(v168, v105, "DevAtt,deviceEcefAttitude,t,%lf,type,%hu,Rb2e,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,Pb2e,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,%.6lf,aEcefX,%.3lf,aEcefY,%.3lf,aEcefZ,%.3lf,aBodyX,%.3lf,aBodyY,%.3lf,aBodyZ,%.3lf,aUnc,%.3lf,gEcefX,%.3lf,gEcefY,%.3lf,gEcefZ,%.3lf,gBodyX,%.3lf,gBodyY,%.3lf,gBodyZ,%.3lf,gUnc,%.3lf", v63 + v61, 0, *v112, v92, *v91, v112[1], v93, v112[(2 * v110.n128_u32[3]) | 1], v112[2], v94, v91[2], *v117, *v95, v117[2 * SHIDWORD(v115)], v117[1], v95[1], v117[(2 * HIDWORD(v115)) | 1], v117[2], v95[2], v117[2 * SHIDWORD(v115) + 2], *v140, v140[1], v140[2], *v145, v145[1], v145[2], v86, *v135, v135[1], v135[2], *v133, v133[1], v133[2], v87);
                  }

                  *v4 = 1;
                  if ((v6 + 312) != &v119)
                  {
                    v96 = v120;
                    *(v6 + 312) = v119;
                    *(v6 + 328) = v96;
                  }

                  sub_1D0B894B0(v6 + 344, &v114);
                  sub_1D0B894B0(v6 + 456, v129);
                  *(v6 + 520) = v61;
                  *(v6 + 528) = v63;
                  v106 = 0x400000004;
                  *v105 = &unk_1F4CDEB70;
                  *&v105[8] = xmmword_1D0E7DCD0;
                  v107 = v108;
                  *v168 = v119;
                  *&v168[16] = v120;
                  if (raven::RavenDeviceAttitudeActiveObject::convertRvVarToQuaternionVar(v97, v168, &v114, v105))
                  {
                    sub_1D0E29F10(v168);
                    memset(v169, 0, sizeof(v169));
                    *&v168[24] = 0u;
                    v172 = v119;
                    *&v168[8] = v61;
                    *&v168[16] = v63;
                    v170 = 0;
                    v171 = 0x7FF8000000000000;
                    v173 = v120;
                    v174 = *v107;
                    v98 = &v107[*&v105[20]];
                    v175 = *v98;
                    v99 = &v107[2 * *&v105[20]];
                    v176 = *v99;
                    v100 = &v107[3 * *&v105[20]];
                    v177 = *v100;
                    v178 = v98[1];
                    v179 = v107[(2 * *&v105[20]) | 1];
                    v180 = v100[1];
                    v181 = v99[2];
                    v182 = v100[2];
                    v183 = v100[3];
                    v184 = 1;
                    sub_1D0DD3320(v6);
                  }
                }

                *v168 = (*(*v102 + 16))(v102);
                *&v168[8] = v101;
                raven::RavenDeviceAttitudeActiveObject::UpdateDeviceVehicleAttitude(v6, &v142, v136, v168, 0, v86);
              }

              sub_1D0E29F7C((v6 + 240));
            }
          }
        }
      }
    }

    else if (cnprint::CNPrinter::GetLogLevel(v7) <= 1)
    {
      *v168 = 12;
      v105[0] = 1;
      v22 = (*(*v5 + 16))(v5);
      v24 = v23 + v22;
      v25 = sub_1D0B9A2A4(v6, (v6 + 6648), 0.0);
      v26 = sub_1D0B9A2A4(v6, (v6 + 240), 0.0);
      v27 = sub_1D0BD685C(v6, (v6 + 7568));
      cnprint::CNPrinter::Print(v168, v105, "DevAtt,IsManeuverDetectionBufferFull,t,%lf,%d,%d,%d", v24, v25, v26, v27);
    }
  }
}

BOOL sub_1D0BD685C(uint64_t a1, void *a2)
{
  v2 = a2[5];
  if (!v2)
  {
    return 0;
  }

  v5 = *(a2[1] + (((v2 + a2[4] - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * ((v2 + *(a2 + 8) - 1) & 0xF);
  v6 = (*(*v5 + 16))(v5);
  v8 = v7;
  v9 = v7;
  v10 = *(a2[1] + ((a2[4] >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (a2[4] & 0xFLL);
  v26[0] = (*(*v10 + 16))(v10);
  v26[1] = v11;
  v12.i64[0] = *(*(a1 + 232) + 1048);
  v24[0] = 0;
  v24[1] = 0;
  *v14.i64 = CNTimeSpan::SetTimeSpan(v24, 0, v12, v13);
  v25[0] = CNTimeSpan::operator+(v26, v24, v14, v15);
  v25[1] = v16;
  v23[0] = 0;
  v23[1] = 0;
  v19 = CNTimeSpan::operator+(v25, v23, v17, v18);
  if (v6)
  {
    v21 = 1;
  }

  else
  {
    v21 = (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
  }

  if (!v21 || !v19 && (*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return v9 > v20;
  }

  if (v6 == v19)
  {
    return v9 > v20;
  }

  return v6 > v19;
}

void raven::RavenDeviceAttitudeActiveObject::UpdateDeviceAttitudeByWahbaSolution(raven::RavenDeviceAttitudeActiveObject *this, const raven::TimeMarkEvent *a2)
{
  v256 = *MEMORY[0x1E69E9840];
  v2 = *(this + 951);
  if (v2)
  {
    v4 = (*(*(this + 947) + (((v2 + *(this + 950) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * ((v2 + *(this + 1900) - 1) & 0xF));
    if (v4[209] == 2 && v4[1464] == 1 && v4[1544] == 1)
    {
      v6 = this + 4096;
      *(this + 4044) = 1;
      *&v247 = (*(*a2 + 16))(a2);
      *(&v247 + 1) = v7;
      v8 = *(this + 951) + *(this + 950) - 1;
      v9 = *(*(this + 947) + ((v8 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (v8 & 0xF);
      v158 = CNTimeSpan::operator-(&v247, this + 906, v10, v11);
      v157 = v12;
      v13 = *(v9 + 1552);
      v14 = *(v9 + 1560);
      v15 = *(v9 + 1568);
      *&v16 = *(v9 + 1576) + *(v9 + 1600);
      v17 = *&v16 + *(v9 + 1616);
      v18 = *(this + 29);
      LODWORD(v16) = *(v18 + 984);
      v19 = vcvtpd_u64_f64(*(v18 + 648) * v16) + 1;
      v20 = *(this + 1017);
      if (v20 >= v19)
      {
        v21 = *(this + 1016);
        do
        {
          *(this + 1017) = --v20;
          *(this + 1016) = ++v21;
          if (v21 >= 0x100)
          {
            operator delete(**(this + 1013));
            *(this + 1013) += 8;
            v21 = *(this + 1016) - 128;
            *(this + 1016) = v21;
            v20 = *(this + 1017);
          }
        }

        while (v20 >= v19);
      }

      *&v246[0] = (*(*a2 + 16))(a2);
      v246[1] = v23;
      if (v17 > 0.0)
      {
        v24 = *(this + 1017);
        if (!v24 || sub_1D0B7CF88(v246, (*(*(this + 1013) + (((v24 + *(this + 1016) - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v24 + *(this + 1016) - 1) & 0x7F))))
        {
          v25 = (*(*a2 + 16))(a2);
          v154 = v26;
          v155 = v25;
          v6 = this + 4096;
          v27 = *(this + 1014);
          v28 = *(this + 1013);
          if (v27 == v28)
          {
            v29 = 0;
          }

          else
          {
            v29 = 16 * (v27 - v28) - 1;
          }

          v30 = *(this + 1016);
          v31 = *(this + 1017);
          v32 = v31 + v30;
          if (v29 == v31 + v30)
          {
            if (v30 < 0x80)
            {
              v33 = *(this + 1015);
              v34 = *(this + 1012);
              if (v27 - v28 < (v33 - v34))
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

            *(this + 1016) = v30 - 128;
            *v159 = *v28;
            *(this + 1013) = v28 + 8;
            sub_1D0C149C4(this + 1012, v159);
            v36 = v155;
            v28 = *(this + 1013);
            v31 = *(this + 1017);
            v32 = v31 + *(this + 1016);
            v6 = this + 4096;
          }

          else
          {
            v36 = v25;
          }

          v37 = *&v28[(v32 >> 4) & 0xFFFFFFFFFFFFFF8] + 32 * (v32 & 0x7F);
          *v37 = v36;
          *(v37 + 8) = v154;
          *(v37 + 16) = sqrt(v14 * v14 + v13 * v13 + v15 * v15);
          *(v37 + 24) = v17;
          *(this + 1017) = v31 + 1;
        }
      }

      v22.i64[0] = 0x3FEE666666666666;
      if (v157 + v158 >= 0.95)
      {
        v38 = *(this + 29);
        if (*(this + 1010) >= *(v38 + 984))
        {
          v39 = 1.0;
          v153 = v6;
          if (v6[2824] == 1 && ((v40 = *(this + 1017), v41 = v6[2736], v41 > 7) || v41 == 5) && v40 >= 3)
          {
            v113 = *(this + 1016);
            v114 = *(this + 1013);
            v115 = *(v114 + ((v113 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v113 & 0x7F);
            *v159 = *v115;
            v116 = *(v115 + 16);
            v117 = *(v114 + (((v113 + 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v113 + 1) & 0x7F);
            v118 = CNTimeSpan::operator-(v117, v115, *v159, v22);
            v120 = v119 + v118;
            v121 = (*(v117 + 16) - v116) / v120;
            *v122.i64 = *(v117 + 24) + *(v115 + 24);
            v123 = *v122.i64 / (v120 * v120);
            v124 = v40 - 2;
            v125 = v113 + 2;
            do
            {
              v126 = *(v114 + ((v125 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v125 & 0x7F);
              v253 = *v126;
              v127 = *(v126 + 16);
              v128 = *(v126 + 24);
              v129 = CNTimeSpan::operator-(&v253, v159, v253, v122);
              v131 = v130 + v129;
              *v122.i64 = v127 - (v116 + v131 * v121);
              v132 = v123 * v131 / (v128 + v123 * v131 * v131);
              v121 = v121 + v132 * *v122.i64;
              v123 = v123 + -(v132 * v131) * v123;
              ++v125;
              --v124;
            }

            while (v124);
            v133 = v40 - 1;
            v134 = v113 + 1;
            v135 = 0.0;
            do
            {
              v136 = *(v114 + ((v134 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v134 & 0x7F);
              v253 = *v136;
              v137 = *(v136 + 16);
              v138 = *(v136 + 24);
              v139 = CNTimeSpan::operator-(&v253, v159, v253, v122);
              *v122.i64 = v139;
              v141 = v137 - (v116 + (v140 + v139) * v121);
              v135 = v135 + v141 * v141 / v138;
              ++v134;
              --v133;
            }

            while (v133);
            cnstatistics::InverseChi2(v139, *(v38 + 912), (v40 - 2));
            v144 = v143;
            if (v135 <= v143)
            {
              if ((*&v121 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v123 >= 0.0 ? (v145 = ((*&v123 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) : (v145 = 1), v145 ? (v146 = (*&v123 - 1) > 0xFFFFFFFFFFFFELL) : (v146 = 0), v146))
              {
                v253.i16[0] = 12;
                LOBYTE(v248) = 4;
                cnprint::CNPrinter::Print(&v253, &v248, "GNSS-derived acceleration,x,%.3lf,P,%.3lf", v121, v123);
                v39 = 1.0;
              }

              else
              {
                v147 = 0.0;
                if (v121 < 0.0)
                {
                  v147 = -1.0;
                }

                if (v121 <= 0.0)
                {
                  v39 = v147;
                }

                else
                {
                  v39 = 1.0;
                }

                v148 = cnstatistics::InverseNormal(v142, (1.0 - *(*(this + 29) + 912)) * -0.5 + 1.0, 0.0, 1.0);
                v149 = sqrt(v123);
                v153[3992] = fabs(v121 / v149) > v148;
                if (!cnprint::CNPrinter::GetLogLevel(v150))
                {
                  v253.i16[0] = 12;
                  LOBYTE(v248) = 0;
                  cnprint::CNPrinter::Print(&v253, &v248, "GNSS-derived acceleration result,reliable,%d,x,%.3lf,std,%.3lf,thresh,%.3lf", v153[3992], v121, v149, v148);
                }
              }
            }

            else
            {
              v39 = 1.0;
              if (cnprint::CNPrinter::GetLogLevel(v142) <= 1)
              {
                v253.i16[0] = 12;
                LOBYTE(v248) = 1;
                cnprint::CNPrinter::Print(&v253, &v248, "Failed SOS test when estimating slope,sos,%.3lf,threshold,%.3lf,dof,%u", v135, v144, v40 - 2);
              }
            }

            v42 = 1;
          }

          else
          {
            v42 = 0;
          }

          v243 = 0x100000003;
          v242 = xmmword_1D0E7DCC0;
          v241 = &unk_1F4CDEB28;
          v244 = &v245;
          v253 = *(v9 + 1472);
          v254 = *(v9 + 1488);
          v208 = 0;
          v43 = sub_1D0BF9390(this + 3912) != 0;
          v44 = v244;
          *v244 = v248;
          *(v44 + 1) = v249;
          v238 = 0x100000003;
          v237 = xmmword_1D0E7DCC0;
          v236 = &unk_1F4CDEB28;
          v239 = v240;
          v45 = *(this + 1010) + *(this + 1009) - 1;
          v46 = (*(*(this + 1006) + 8 * (v45 / 0x14)) + 200 * (v45 % 0x14));
          v240[0] = -v46[13];
          v240[1] = -v46[14];
          v240[2] = -v46[15];
          v233 = 0x100000003;
          v232 = xmmword_1D0E7DCC0;
          v231 = &unk_1F4CDEB28;
          v234 = &v235;
          sub_1D0BFA9C4(3, 3, &v253);
          v47 = v234;
          *v234 = *(v9 + 1552);
          v47[1] = *(v9 + 1560);
          v47[2] = *(v9 + 1568);
          v48 = v255;
          *v255 = *(v9 + 1576);
          v49 = SHIDWORD(v254);
          v48[SHIDWORD(v254) + 1] = *(v9 + 1600);
          v48[2 * v49 + 2] = *(v9 + 1616);
          sub_1D0BFA800(&v231);
          v51 = v50;
          v52 = fabs(v50) <= 0.000000015 || v43;
          if (v52)
          {
            v53 = 0;
          }

          else
          {
            *&v160 = 0x300000001;
            *v159 = &unk_1F4CDF248;
            *&v159[8] = xmmword_1D0E7F310;
            *(&v160 + 1) = &v161;
            *&v161 = *v234 / v50;
            *(&v161 + 1) = v234[1] / v50;
            *&v162 = v234[2] / v50;
            sub_1D0BFB8FC(v159, &v253, &v248);
            sub_1D0BFB980(&v208, v159);
            v54 = sub_1D0BFC678(&v248, &v208, &v189);
            if (v153[2824] == 1 && v153[2736] - 1 <= 6)
            {
              v55 = qword_1D0EA3CB8[(v153[2736] - 1)];
            }

            else
            {
              v55 = 928;
            }

            v53 = v51 >= cnstatistics::InverseNormal(v54, 1.0 - *(*(this + 29) + v55), 0.0, sqrt(v192->f64[0]));
          }

          v228 = 0x100000003;
          v227 = xmmword_1D0E7DCC0;
          v226 = &unk_1F4CDEB28;
          v229 = &v230;
          if (v53)
          {
            v56 = *(this + 1010) + *(this + 1009) - 1;
            v57 = *(*(this + 1006) + 8 * (v56 / 0x14)) + 200 * (v56 % 0x14);
            v225 = 0u;
            v224 = 0u;
            if (&v224 != (v57 + 168))
            {
              v224 = *(v57 + 168);
              v225 = *(v57 + 184);
            }

            sub_1D0C51578(3, 1, v222);
            v58 = *(v57 + 104);
            v59 = *(v57 + 120);
            v60 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v58, v58).f64[1]) + v58.f64[0] * v58.f64[0] + v59 * v59);
            v61 = v60 > 0.000000015;
            if (v60 > 0.000000015)
            {
              v62 = v223;
              *v223 = vdivq_f64(vnegq_f64(v58), vdupq_lane_s64(*&v60, 0));
              v62[1].f64[0] = -v59 / v60;
            }

            sub_1D0C51578(3, 1, v219);
            sub_1D0BFA9C4(3, 3, &v248);
            v63 = *(this + 1006);
            if (*(this + 1007) != v63)
            {
              v64 = *(this + 1009);
              v65 = *(v63 + 8 * (v64 / 0x14)) + 200 * (v64 % 0x14);
              v156 = *(v63 + 8 * ((*(this + 1010) + v64) / 0x14)) + 200 * ((*(this + 1010) + v64) % 0x14);
              if (v65 != v156)
              {
                v152 = v61;
                v66 = 0.0;
                v67 = (v63 + 8 * (v64 / 0x14));
                do
                {
                  v191 = 0x100000003;
                  v189 = &unk_1F4CDEB28;
                  v190 = xmmword_1D0E7DCC0;
                  v192 = &v193;
                  v193 = *(v65 + 128);
                  v194 = *(v65 + 144);
                  cnrotation::Inv(v159, (v65 + 168));
                  cnrotation::Cat(&v224, v159, v218);
                  sub_1D0B88A54(v218, &v189, v159);
                  sub_1D0C51690(&v184, v159);
                  v69 = DWORD2(v185);
                  if (SDWORD2(v185) < 1)
                  {
                    v68.f64[0] = 0.0;
                  }

                  else
                  {
                    v70 = v187;
                    v68.f64[0] = 0.0;
                    v71 = v223;
                    do
                    {
                      v72 = *v70++;
                      v73 = v72;
                      v74 = *v71++;
                      v68.f64[0] = v68.f64[0] + v73 * v74;
                      --v69;
                    }

                    while (v69);
                  }

                  *&v160 = 0x100000003;
                  *v159 = &unk_1F4CDEB28;
                  *&v159[8] = xmmword_1D0E7DCC0;
                  *(&v160 + 1) = &v161;
                  sub_1D0B8930C(v222, v159, v68);
                  v181 = 0x100000003;
                  v180 = xmmword_1D0E7DCC0;
                  v179 = &unk_1F4CDEB28;
                  v182 = v183;
                  sub_1D0BA5A78(&v184, v159, &v179);
                  v215 = 0x100000003;
                  v213 = &unk_1F4CDEB28;
                  v214 = xmmword_1D0E7DCC0;
                  v216 = &v217;
                  sub_1D0BA5A78(&v179, v219, &v213);
                  v66 = v66 + 1.0;
                  v210 = 0x100000003;
                  *&v75.f64[1] = 0x300000003;
                  v209 = xmmword_1D0E7DCC0;
                  v208 = &unk_1F4CDEB28;
                  v211 = v212;
                  v75.f64[0] = 1.0 / v66;
                  sub_1D0B8930C(&v213, &v208, v75);
                  *&v160 = 0x100000003;
                  *v159 = &unk_1F4CDEB28;
                  *&v159[8] = xmmword_1D0E7DCC0;
                  *(&v160 + 1) = &v161;
                  sub_1D0B88838(v219, &v208, v159);
                  sub_1D0B894B0(v219, v159);
                  v197 = 0x100000003;
                  v196 = xmmword_1D0E7DCC0;
                  v195 = &unk_1F4CDEB28;
                  v198 = &v199;
                  sub_1D0BA5A78(&v179, v219, &v195);
                  v76 = DWORD1(v196);
                  v77 = v196;
                  v205 = 0x300000001;
                  v200 = &unk_1F4CDF248;
                  v206 = v207;
                  v201 = DWORD1(v196);
                  v202 = v196;
                  v203 = v196 * DWORD1(v196);
                  v204 = DWORD1(v196);
                  if (DWORD1(v196))
                  {
                    v78 = 0;
                    v79 = 0;
                    v80 = HIDWORD(v196);
                    v81 = v198;
                    do
                    {
                      v82 = v78;
                      v83 = v79;
                      for (i = v77; i; --i)
                      {
                        v207[v83] = v81[v82];
                        v83 += v76;
                        ++v82;
                      }

                      ++v79;
                      v78 += v80;
                    }

                    while (v79 != v76);
                  }

                  v210 = 0x300000003;
                  v209 = xmmword_1D0E76C10;
                  v208 = &unk_1F4CD5DD0;
                  v211 = v212;
                  sub_1D0B89390(&v213, &v200, &v208);
                  *&v160 = 0x300000003;
                  *v159 = &unk_1F4CD5DD0;
                  *&v159[8] = xmmword_1D0E76C10;
                  *(&v160 + 1) = &v161;
                  sub_1D0B88838(&v248, &v208, v159);
                  v85 = sub_1D0B894B0(&v248, v159);
                  v65 += 200;
                  if (v65 - *v67 == 4000)
                  {
                    v86 = v67[1];
                    ++v67;
                    v65 = v86;
                  }
                }

                while (v65 != v156);
                v87 = v152;
                if (v66 >= 4.0)
                {
                  v85.n128_f64[0] = 1.0 / (v66 + -1.0);
                  sub_1D0C51778(&v248, &v208, v85);
                  v191 = 0x300000003;
                  v190 = xmmword_1D0E76C10;
                  v189 = &unk_1F4CD5DD0;
                  v192 = &v193;
                  sub_1D0C517F8(3, &v184);
                  v181 = 0x300000003;
                  v180 = xmmword_1D0E76C10;
                  v179 = &unk_1F4CD5DD0;
                  v182 = v183;
                  sub_1D0C51AF8(&v208, &v189, &v184, &v179);
                  v88 = *v187;
                  v89 = v187[SHIDWORD(v185) + 1];
                  sub_1D0BFA800(v219);
                  v90 = *(this + 29);
                  if (v91 < v90[124] && sqrt(v88) < v90[125])
                  {
                    v87 = 0;
                  }

                  if (fabs(v88) < 2.22044605e-16 && fabs(v89) < 2.22044605e-16 || v88 / (v88 + v89) < v90[126])
                  {
                    v87 = 0;
                  }

                  sub_1D0C51CC8(&v179, ":", 0, v159);
                  v92 = v220;
                  if (v220 < 1)
                  {
                    goto LABEL_77;
                  }

                  v93 = v221;
                  v94 = 0.0;
                  v95 = *(&v160 + 1);
                  do
                  {
                    v96 = *v93++;
                    v97 = v96;
                    v98 = *v95++;
                    v94 = v94 + v97 * v98;
                    --v92;
                  }

                  while (v92);
                  if (v94 >= 0.0)
                  {
LABEL_77:
                    sub_1D0C51CC8(&v179, ":", 0, v159);
                    v100.f64[0] = v51;
                    sub_1D0C51F2C(&v213, v159, v100);
                  }

                  else
                  {
                    sub_1D0C51CC8(&v179, ":", 0, v159);
                    v99.f64[0] = -v51;
                    sub_1D0C51F2C(&v213, v159, v99);
                  }

                  v101 = sub_1D0B894B0(&v226, &v213);
                  if (v39 == 0.0)
                  {
                    v102 = 0;
                  }

                  else
                  {
                    v102 = v42;
                  }

                  if (v102 == 1)
                  {
                    v101.n128_f64[0] = v39;
                    sub_1D0C51FB4(&v226, v159, v101);
                    sub_1D0B894B0(&v226, v159);
                  }

                  if (v87)
                  {
                    v250 = 0x200000003;
                    v248 = &unk_1F4CE1E28;
                    v249 = xmmword_1D0E84740;
                    v251 = &v252;
                    v210 = 0x200000003;
                    v209 = xmmword_1D0E84740;
                    v208 = &unk_1F4CE1E28;
                    v211 = v212;
                    sub_1D0D93CC8(v159, &v248, 0);
                    sub_1D0D2D13C(v159, &v241);
                    sub_1D0D93CC8(v159, &v248, 1);
                    sub_1D0D2D13C(v159, &v231);
                    sub_1D0D93CC8(v159, &v208, 0);
                    sub_1D0D2D13C(v159, &v236);
                    sub_1D0D93CC8(v159, &v208, 1);
                    sub_1D0D2D13C(v159, &v226);
                    v186 = 0x100000002;
                    v185 = xmmword_1D0E83F60;
                    v184 = &unk_1F4CE0220;
                    v187 = &v188;
                    v188 = *(*(this + 29) + 1200);
                    if (!sub_1D0E2BA50(this + 7952))
                    {
                      v153[3993] = 1;
                      *(this + 453) = v247;
                      sub_1D0B87544(&v189, this + 7960);
                      sub_1D0E29F10(v159);
                      _Q1 = v192[1];
                      _D3 = _Q1.f64[1];
                      __asm { FMLA            D2, D3, V1.D[1] }

                      v110 = sqrt(_D2);
                      if (fabs(v110) >= 2.22044605e-16)
                      {
                        v151 = vdupq_lane_s64(*&v110, 0);
                        v111 = vdivq_f64(_Q1, v151);
                        v112 = vdivq_f64(*v192, v151);
                      }

                      else
                      {
                        v111 = xmmword_1D0E7DCB0;
                        v112 = 0uLL;
                      }

                      v165 = v112;
                      v166 = v111;
                      v161 = *(a2 + 40);
                      v162 = *(a2 + 56);
                      v163 = *(a2 + 72);
                      v164 = *(a2 + 88);
                      *&v159[8] = *(a2 + 8);
                      v160 = *(a2 + 24);
                      v167 = *(*(this + 29) + 944);
                      v168 = 0;
                      v169 = 0;
                      v170 = 0;
                      v171 = v167;
                      v172 = 0;
                      v173 = 0;
                      v174 = v167;
                      v175 = 0;
                      v176 = v167;
                      v177 = v153[3992];
                      v178 = 1;
                      sub_1D0DD3320(this);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D0BD81D8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v87.__vftable) = 3;
    LOBYTE(v116) = 5;
    cnprint::CNPrinter::Print(&v87, &v116, "Attempted to access type of uninitialized GenericEvent.");
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

    v9 = *(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (v9 != (off_1F4CEF178 & 0x7FFFFFFFFFFFFFFFLL))
    {
      v9 = strcmp(v9, (off_1F4CEF178 & 0x7FFFFFFFFFFFFFFFLL));
      if (v9)
      {
        v87.__vftable = 0;
        std::bad_cast::bad_cast(&v87);
        v87.__vftable = &unk_1F4CE4880;
        sub_1D0DC7F8C(&v87);
      }
    }

    v10 = *(a3 + 16);
    v83 = *(v10 + 64);
    v82 = *(v10 + 48);
    v81 = *(v10 + 32);
    v80 = *(v10 + 16);
    *&v85[26] = *(v10 + 122);
    *&v85[16] = *(v10 + 112);
    *v85 = *(v10 + 96);
    v84 = *(v10 + 80);
    v86 = *(v10 + 144);
  }

  else
  {
    v116 = 3;
    LOBYTE(v123) = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v87.__vftable) = 3;
      v113[0] = 5;
      cnprint::CNPrinter::Print(&v87, v113, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v116, &v123, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEF178 & 0x7FFFFFFFFFFFFFFFLL));
    *v85 = 0;
    *&v85[24] = 0;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    *&v85[8] = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v85[32] = 0x7FF8000000000000uLL;
    v86 = 0x7FF8000000000000;
  }

  v12 = *(v4 + 288);
  v11 = *(v4 + 296);
  if (v11 == v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 28 * (v11 - v12) - 1;
  }

  v14 = *(v4 + 312);
  if (v13 == *(v4 + 320) + v14)
  {
    v33 = v14 >= 0x1C;
    v15 = v14 - 28;
    if (!v33)
    {
      v16 = *(v4 + 304);
      v17 = *(v4 + 280);
      if (v11 - v12 < (v16 - v17))
      {
        operator new();
      }

      if (v16 == v17)
      {
        v18 = 1;
      }

      else
      {
        v18 = (v16 - v17) >> 2;
      }

      sub_1D0C4E87C(v18);
    }

    *(v4 + 312) = v15;
    v87.__vftable = *v12;
    *(v4 + 288) = v12 + 1;
    sub_1D0C149C4((v4 + 280), &v87);
    v12 = *(v4 + 288);
    v11 = *(v4 + 296);
  }

  if (v11 == v12)
  {
    v20 = 0;
  }

  else
  {
    v19 = *(v4 + 320) + *(v4 + 312);
    v20 = &v12[v19 / 0x1C][6 * (v19 % 0x1C)];
  }

  *v20 = &unk_1F4CEEFA0;
  *(v20 + 56) = v83;
  *(v20 + 40) = v82;
  *(v20 + 24) = v81;
  *(v20 + 8) = v80;
  *(v20 + 114) = *&v85[26];
  *(v20 + 104) = *&v85[16];
  *(v20 + 88) = *v85;
  *(v20 + 72) = v84;
  *v20 = &unk_1F4CEF150;
  *(v20 + 136) = v86;
  v21 = *(v4 + 320);
  *(v4 + 320) = v21 + 1;
  if (v21 == -1)
  {
    if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
    {
      LOWORD(v87.__vftable) = 12;
      LOBYTE(v116) = 1;
      cnprint::CNPrinter::Print(&v87, &v116, "#WARNING,Prefilted pressure is empty");
    }

    return;
  }

  v22 = *(*(v4 + 288) + 8 * ((*(v4 + 312) + v21) / 0x1CuLL)) + 144 * ((*(v4 + 312) + v21) % 0x1CuLL);
  v23 = (*(*v22 + 16))(v22);
  v25 = v24;
  *&v127 = v23;
  *(&v127 + 1) = v24;
  v26 = *(*(v4 + 288) + 8 * (*(v4 + 312) / 0x1CuLL)) + 144 * (*(v4 + 312) % 0x1CuLL);
  v126[0] = (*(*v26 + 16))(v26);
  v126[1] = v27;
  v29 = *(v4 + 320);
  v30.i64[0] = *(*(*(v4 + 288) + 8 * ((v29 + *(v4 + 312) - 1) / 0x1C)) + 144 * ((v29 + *(v4 + 312) - 1) % 0x1C) + 136);
  v31 = *v30.i64 * 1000.0;
  v32 = (COERCE__INT64(fabs(*v30.i64 * 1000.0)) - 0x10000000000000) >> 53;
  v33 = COERCE__INT64(*v30.i64 * 1000.0) <= -1 || v32 >= 0x3FF;
  v34 = v33 && (COERCE__INT64(*v30.i64 * 1000.0) - 1) >= 0xFFFFFFFFFFFFFLL;
  v35 = v25;
  if (v34)
  {
    LOWORD(v87.__vftable) = 12;
    LOBYTE(v116) = 4;
    cnprint::CNPrinter::Print(&v87, &v116, "time,%.3lf,Most recent pressure is invalid", v25 + v23);
    return;
  }

  if (*(v4 + 272))
  {
    v36 = CNTimeSpan::operator-(&v127, (v4 + 240), v30, v28);
    *v30.i64 = v37 + v36;
    v38 = *(v4 + 232);
    v28.i64[0] = *(v38 + 1336);
    if (*v30.i64 > *v28.i64)
    {
      *(v4 + 240) = 0;
      *(v4 + 248) = 0;
      v30 = vdupq_n_s64(0x7FF8000000000000uLL);
      *(v4 + 256) = v30;
      *(v4 + 272) = 0;
    }
  }

  else
  {
    v38 = *(v4 + 232);
  }

  v39 = CNTimeSpan::operator-(&v127, v126, v30, v28);
  if (v40 + v39 > *(v38 + 1344))
  {
    v123 = 0;
    v124 = 0;
    v125 = 0;
    sub_1D0C4D030(&v123, v29);
    v41 = *(v4 + 288);
    if (*(v4 + 296) != v41)
    {
      v42 = *(v4 + 312);
      v43 = (v41 + 8 * (v42 / 0x1C));
      v44 = *v43;
      v45 = *v43 + 144 * (v42 % 0x1C);
      v46 = *(v41 + 8 * ((*(v4 + 320) + v42) / 0x1C)) + 144 * ((*(v4 + 320) + v42) % 0x1C);
      if (v45 != v46)
      {
        v47 = v123;
        do
        {
          *v47 = vabdd_f64(*(v45 + 104), *(v45 + 136));
          v45 += 144;
          if (v45 - v44 == 4032)
          {
            v48 = v43[1];
            ++v43;
            v44 = v48;
            v45 = v48;
          }

          ++v47;
        }

        while (v45 != v46);
      }
    }

    v119 = 0;
    v120 = 0;
    v121 = 0;
    LOBYTE(v116) = 0;
    v117 = 0;
    v118 = 1;
    sub_1D0BC3E34(&v119);
    v122 = 1;
    v50 = v123;
    v51 = v124;
    while (v50 != v51)
    {
      if (sub_1D0BC3F08(&v116, v50, 1.0))
      {
        LOWORD(v87.__vftable) = 12;
        v113[0] = 4;
        cnprint::CNPrinter::Print(&v87, v113, "RavenDeltaAltitudeActiveObject failed to add noise sample %.3lf to OnlineRobustStatisticsEstimator", *v50);
        (*(*v4 + 40))(v4);
        goto LABEL_94;
      }

      ++v50;
    }

    v49.n128_u64[0] = 0x4049000000000000;
    sub_1D0BC4124(&v116, v49);
    v52 = *(v4 + 232);
    v53 = *(v4 + 288);
    v54 = *(v4 + 296);
    if (v55 < *(v52 + 1352))
    {
      if (v54 == v53)
      {
        v61 = v123;
      }

      else
      {
        v56 = *(v4 + 312);
        v57 = &v53[v56 / 0x1C];
        v58 = *v57;
        v59 = *v57 + 144 * (v56 % 0x1C);
        v60 = v53[(*(v4 + 320) + v56) / 0x1C] + 144 * ((*(v4 + 320) + v56) % 0x1C);
        v61 = v123;
        if (v59 != v60)
        {
          v62 = v123;
          do
          {
            *v62 = *(v59 + 104) - *(v59 + 136);
            v59 += 144;
            if (v59 - v58 == 4032)
            {
              v63 = v57[1];
              ++v57;
              v58 = v63;
              v59 = v63;
            }

            ++v62;
          }

          while (v59 != v60);
        }
      }

      v113[0] = 0;
      v114 = 0u;
      memset(v115, 0, sizeof(v115));
      v64 = v124;
      if (v61 != v124)
      {
        while (!sub_1D0B8954C(v113, v61, 1.0))
        {
          if (++v61 == v64)
          {
            v65 = *&v115[5];
            v52 = *(v4 + 232);
            goto LABEL_72;
          }
        }

        LOWORD(v87.__vftable) = 12;
        v112 = 4;
        cnprint::CNPrinter::Print(&v87, &v112, "RavenDeltaAltitudeActiveObject failed to add noise sample %.3lf to OnlineStatisticsEstimator", *v61);
        (*(*v4 + 40))(v4);
        goto LABEL_94;
      }

      v65 = 0.0;
LABEL_72:
      v66 = pow(v31 / 101325.0, 0.190263237);
      v67 = sqrt(v65) * 1000.0;
      if (v67 <= *(v52 + 720))
      {
        v67 = *(v52 + 720);
      }

      if (fabs(v67) < 2.22044605e-16)
      {
        LOWORD(v87.__vftable) = 12;
        v112 = 4;
        cnprint::CNPrinter::Print(&v87, &v112, "time,%.3lf,Most recent pressure is invalid", v35 + v23);
LABEL_94:
        if (v119)
        {
          v120 = v119;
          operator delete(v119);
        }

        if (v123)
        {
          v124 = v123;
          operator delete(v123);
        }

        return;
      }

      v68 = (v66 + -1.0) * -44330.7692;
      v69 = fabs((v68 + 44330.7692) * 0.190263237 / v31) * v67;
      if (*(v4 + 272) == 1)
      {
        v87.__vftable = &unk_1F4CEE8D0;
        v90 = 0;
        v91 = 0;
        v92 = 0;
        v93 = 0;
        v94 = 0;
        v95 = 0;
        v96 = 0;
        v97 = 0;
        v98 = 0x7FF8000000000000;
        v101 = 0;
        v102 = 0;
        v103 = 0;
        v104 = 0;
        v105 = 0;
        v106 = 0;
        v107 = 0;
        v108 = 0;
        v109 = 0x7FF8000000000000;
        v89 = 0;
        v88 = v127;
        v100 = 0;
        v99 = *(v4 + 240);
        v70 = sqrt(*(v4 + 264) * *(v4 + 264) + v69 * v69);
        v110 = v68 - *(v4 + 256);
        v111 = v70;
        sub_1D0C4D060(v4, &v87);
      }

      *(v4 + 240) = v127;
      *(v4 + 256) = v68;
      *(v4 + 264) = v69;
      *(v4 + 272) = 1;
      v53 = *(v4 + 288);
      v54 = *(v4 + 296);
    }

    if (v54 != v53)
    {
      v71 = *(v4 + 312);
      v72 = &v53[v71 / 0x1C];
      v73 = v53[(*(v4 + 320) + v71) / 0x1C] + 144 * ((*(v4 + 320) + v71) % 0x1C);
      if (*v72 + 144 * (v71 % 0x1C) != v73)
      {
        v74 = (*v72 + 144 * (v71 % 0x1C));
        do
        {
          v75 = *v74;
          v74 += 18;
          (*v75)();
          if (v74 - *v72 == 4032)
          {
            v76 = v72[1];
            ++v72;
            v74 = v76;
          }
        }

        while (v74 != v73);
        v53 = *(v4 + 288);
        v54 = *(v4 + 296);
      }
    }

    *(v4 + 320) = 0;
    v77 = v54 - v53;
    if (v77 >= 3)
    {
      do
      {
        operator delete(*v53);
        v78 = *(v4 + 296);
        v53 = (*(v4 + 288) + 8);
        *(v4 + 288) = v53;
        v77 = (v78 - v53) >> 3;
      }

      while (v77 > 2);
    }

    if (v77 == 1)
    {
      v79 = 14;
    }

    else
    {
      if (v77 != 2)
      {
        goto LABEL_94;
      }

      v79 = 28;
    }

    *(v4 + 312) = v79;
    goto LABEL_94;
  }
}

void sub_1D0BD9058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::exception a29)
{
  v31 = *(v29 - 216);
  if (v31)
  {
    *(v29 - 208) = v31;
    operator delete(v31);
  }

  v32 = *(v29 - 184);
  if (v32)
  {
    *(v29 - 176) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenDeviceAttitudeActiveObject::HandleEvent(raven::RavenDeviceAttitudeActiveObject *this, const raven::MountStateEvent *a2)
{
  if (*(this + 224))
  {
    if (*(this + 6920) != 1 || (*(this + 6832) & 0xFE) != 2)
    {
      v4 = *(a2 + 104);
      if (v4 > 3 || v4 == 1)
      {
        if ((*(this + 6723) & 1) == 0)
        {
          v10 = (*(*this + 40))(this);
          *(this + 6723) = 1;
          if (!cnprint::CNPrinter::GetLogLevel(v10))
          {
            LOWORD(__p[0]) = 12;
            LOBYTE(v16) = 0;
            v11 = (*(*a2 + 16))(a2);
            cnprint::CNPrinter::Print(__p, &v16, "DevAtt,t,%.3lf, Engaged for becoming mounted.", v12 + v11);
          }
        }
      }

      else if (*(this + 6723) == 1)
      {
        *(this + 6723) = 0;
        if (!cnprint::CNPrinter::GetLogLevel(this))
        {
          LOWORD(__p[0]) = 12;
          LOBYTE(v16) = 0;
          v6 = (*(*a2 + 16))(a2);
          cnprint::CNPrinter::Print(__p, &v16, "DevAtt,t,%.3lf, Reset because of not being mounted.", v7 + v6);
        }

        v8 = *(*this + 40);

        v8(this);
      }
    }
  }

  else
  {
    v16 = 12;
    v15 = 3;
    (*(*this + 16))(__p, this, a2);
    if (v14 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    cnprint::CNPrinter::Print(&v16, &v15, "Warning: %s is not configured yet.", v9);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1D0BD93A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::MovingStateChecker::HandleEvent(raven::MovingStateChecker *this, const raven::MovingStateEvent *a2, raven::MovingStateEvent *a3)
{
  if ((*(this + 8) & 1) == 0)
  {
    v23 = 12;
    v22 = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v23, &v22, "t,%.3lf,MovingStateChecker,Checker is not configured. Cannot perform checks");
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 104) >= 4u)
  {
    v21 = 12;
    v20 = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v21, &v20, "t,%.3lf, Warning: Invalid type detected in moving state integrity check.");
    return 0xFFFFFFFFLL;
  }

  v3 = *(a2 + 14);
  if (v3 < 0.0 || v3 > 1.0 || (*(a2 + 14) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a2 + 15);
  v7 = v6 < 0.0 || v6 > 1.0;
  if (v7 || (*(a2 + 15) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a2 + 16);
  v10 = v9 < 0.0 || v9 > 1.0;
  if (v10 || (*(a2 + 16) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = *(a2 + 17);
  result = 0xFFFFFFFFLL;
  if (v12 >= 0.0 && v12 <= 1.0 && (*(a2 + 17) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && fabs(v9 + v3 + v6 + v12 + -1.0) < 2.22044605e-16)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    v14 = *(a2 + 24);
    v15 = *(a2 + 40);
    v16 = *(a2 + 56);
    *(a3 + 72) = *(a2 + 72);
    *(a3 + 56) = v16;
    *(a3 + 40) = v15;
    *(a3 + 24) = v14;
    v17 = *(a2 + 88);
    v18 = *(a2 + 104);
    v19 = *(a2 + 120);
    *(a3 + 17) = *(a2 + 17);
    *(a3 + 120) = v19;
    *(a3 + 104) = v18;
    *(a3 + 88) = v17;
  }

  return result;
}

void sub_1D0BD9624(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v17.__vftable) = 3;
    LOBYTE(v15) = 5;
    cnprint::CNPrinter::Print(&v17, &v15, "Attempted to access type of uninitialized GenericEvent.");
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
    if (v9 != (off_1F4CEE9D0 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CEE9D0 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v17.__vftable = 0;
      std::bad_cast::bad_cast(&v17);
      v17.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(&v17);
    }

    v10 = *(a3 + 16);
    if ((*(v10 + 112) & 1) != 0 && fabs(*(v10 + 120)) < 0.000001 && fabs(*(v10 + 128)) < 0.000001)
    {
      v11 = *(v10 + 152);
      if ((v11 + 500) <= 0x3E8)
      {
        v12 = v11 - *(v10 + 176);
        if (v12 < 0)
        {
          v12 = -v12;
        }

        if (v12 <= 1 && *(v10 + 113) == 1)
        {

          memmove((v4 + 328), (v10 + 112), 0x44uLL);
        }
      }
    }
  }

  else
  {
    v15 = 3;
    v14 = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v17.__vftable) = 3;
      v16 = 5;
      cnprint::CNPrinter::Print(&v17, &v16, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v15, &v14, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEE9D0 & 0x7FFFFFFFFFFFFFFFLL));
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::Timer::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::Timer *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::Timer::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::Timer::~Timer(CoreNavigation::CLP::LogEntry::PrivateData::Timer *this)
{
  *this = &unk_1F4CDA4A0;
  CoreNavigation::CLP::LogEntry::PrivateData::Timer::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::Timer::~Timer(this);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0BD9994(uint64_t a1, int a2, int a3)
{
  *(a1 + 24) = 0x100000057;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE37D8;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  if (a2 < 0)
  {
    v3 = "nr >= 0";
    v4 = 419;
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      *(a1 + 8) = a2;
      *(a1 + 12) = a3;
      *(a1 + 16) = a3 * a2;
      *(a1 + 20) = a2;
      sub_1D0BD9A84(a1);
    }

    v3 = "nc >= 0";
    v4 = 420;
  }

  __assert_rtn("CNMatrix", "cnmatrix.h", v4, v3);
}

void sub_1D0BD9A50(_Unwind_Exception *a1)
{
  sub_1D0BD9B48(v2);
  *v1 = &unk_1F4CE3830;
  _Unwind_Resume(a1);
}

uint64_t *sub_1D0BD9B48(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v4 << 6;
      v6 = v2 - 64;
      do
      {
        *(v6 + v5) = &unk_1F4CD5E28;
        v5 -= 64;
      }

      while (v5);
    }

    MEMORY[0x1D387EC80](v3, 0x1081C8052DD7B27);
  }

  return a1;
}

uint64_t sub_1D0BD9BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, uint64_t a20, uint64_t a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  MEMORY[0x1EEE9AC00](a1);
  v163 = v27;
  v164 = v26;
  v168 = v28;
  v30 = v29;
  v170 = v31;
  v171 = v32;
  v172 = v33;
  v35 = v34;
  if (a19 >= 1)
  {
    v36 = 0;
    do
    {
      sub_1D0BBA094(&v179, *(a11 + 32) + v36);
      v36 += 64;
    }

    while (a19 << 6 != v36);
    v37 = 0;
    v38 = 0;
    do
    {
      sub_1D0BBA094(&v179, *(a13 + 32) + v38);
      sub_1D0BE0DE8(&v179, *(a14 + 32) + v37);
      sub_1D0BE0DE8(&v179, *(a14 + 32) + v37);
      v38 += 64;
      v37 += 112;
    }

    while (a19 << 6 != v38);
  }

  sub_1D0B9FC58(a16, ":", 0, &__p);
  v181 = v182;
  v39 = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  LODWORD(v180.__r_.__value_.__l.__data_) = 1;
  HIDWORD(v180.__r_.__value_.__r.__words[0]) = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  HIDWORD(v180.__r_.__value_.__r.__words[2]) = 1;
  LODWORD(v180.__r_.__value_.__r.__words[1]) = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  *(&v180.__r_.__value_.__r.__words[1] + 4) = 0x200000001;
  if (HIDWORD(__p.__r_.__value_.__r.__words[1]))
  {
    v40 = 0;
    v41 = v185;
    v42 = __p.__r_.__value_.__r.__words[1];
    v43 = LODWORD(__p.__r_.__value_.__r.__words[1]) - 1;
    v44 = 1;
    do
    {
      v45 = *(v41 + v42 * v40);
      v46 = v44;
      v47 = v43;
      if (v42 >= 2)
      {
        do
        {
          v45 += *(v41 + v46++);
          --v47;
        }

        while (v47);
      }

      v182[v40++] = v45;
      v44 += v42;
    }

    while (v40 != v39);
  }

  sub_1D0B9FC58(a16, ":", 1, &__p);
  v181 = v182;
  v48 = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  LODWORD(v180.__r_.__value_.__l.__data_) = 1;
  HIDWORD(v180.__r_.__value_.__r.__words[0]) = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  HIDWORD(v180.__r_.__value_.__r.__words[2]) = 1;
  LODWORD(v180.__r_.__value_.__r.__words[1]) = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  *(&v180.__r_.__value_.__r.__words[1] + 4) = 0x200000001;
  if (HIDWORD(__p.__r_.__value_.__r.__words[1]))
  {
    v49 = 0;
    v50 = v185;
    v51 = __p.__r_.__value_.__r.__words[1];
    v52 = LODWORD(__p.__r_.__value_.__r.__words[1]) - 1;
    v53 = 1;
    do
    {
      v54 = *(v50 + v51 * v49);
      v55 = v53;
      v56 = v52;
      if (v51 >= 2)
      {
        do
        {
          v54 += *(v50 + v55++);
          --v56;
        }

        while (v56);
      }

      v182[v49++] = v54;
      v53 += v51;
    }

    while (v49 != v48);
  }

  v180.__r_.__value_.__r.__words[2] = 0x100000002;
  *&v180.__r_.__value_.__l.__data_ = xmmword_1D0E83F60;
  v179 = &unk_1F4CE0EA8;
  v181 = v182;
  LogLevel = sub_1D0BBCB88(a23, 1, &v179);
  v58 = *(a26 + 64);
  v165 = *(a26 + 32);
  v162 = *(a26 + 33);
  if (a19 >= 1)
  {
    v59 = 0;
    do
    {
      v60 = *(*(a9 + 32) + 4 * v59);
      v61 = *(*(a12 + 32) + 4 * v59);
      if (v60 <= v61)
      {
        ++v59;
      }

      else
      {
        LOWORD(v179) = 2;
        __p.__r_.__value_.__s.__data_[0] = 2;
        cnprint::CNLogFormatter::FormatWarning((v35 + 1704), "%d measurements > %d noise sources in measurement function %d.", v60, v61, ++v59);
        if (*(v35 + 1727) >= 0)
        {
          v62 = (v35 + 1704);
        }

        else
        {
          v62 = *(v35 + 1704);
        }

        cnprint::CNPrinter::Print(&v179, &__p, "%s", v62);
      }
    }

    while (v59 != a19);
  }

  if (*a26)
  {
    LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
    if (LogLevel <= 1)
    {
      LOWORD(v179) = 2;
      __p.__r_.__value_.__s.__data_[0] = 1;
      v63 = cnprint::CNLogFormatter::FormatWarning((v35 + 1704), "PredictAndUpdate is only compatible with NewtonRaphson solver.");
      if (*(v35 + 1727) >= 0)
      {
        v64 = v63;
      }

      else
      {
        v64 = *(v35 + 1704);
      }

      cnprint::CNPrinter::Print(&v179, &__p, "%s", v64);
    }
  }

  v65 = v172;
  if (*(a26 + 4) >= 2 && cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
  {
    LOWORD(v179) = 2;
    __p.__r_.__value_.__s.__data_[0] = 1;
    v66 = cnprint::CNLogFormatter::FormatWarning((v35 + 1704), "PredictAndUpdate is only compatible with single-iteration least squares solutions.");
    if (*(v35 + 1727) >= 0)
    {
      v67 = v66;
    }

    else
    {
      v67 = *(v35 + 1704);
    }

    cnprint::CNPrinter::Print(&v179, &__p, "%s", v67);
  }

  v68 = *(a26 + 8);
  v180.__r_.__value_.__r.__words[2] = 0x100000057;
  *&v180.__r_.__value_.__l.__data_ = xmmword_1D0E84400;
  v179 = &unk_1F4CE0470;
  v181 = v182;
  v69 = sub_1D0BBCB88(a9, 1, &v179);
  if (v68 < *v181)
  {
    v69 = cnprint::CNPrinter::GetLogLevel(v69);
    if (v69 <= 1)
    {
      LOWORD(v179) = 2;
      __p.__r_.__value_.__s.__data_[0] = 1;
      v70 = cnprint::CNLogFormatter::FormatWarning((v35 + 1704), "PredictAndUpdate is only compatible with QR factorizations of unconstrained size.");
      if (*(v35 + 1727) >= 0)
      {
        v71 = v70;
      }

      else
      {
        v71 = *(v35 + 1704);
      }

      cnprint::CNPrinter::Print(&v179, &__p, "%s", v71);
    }
  }

  if (*(a26 + 89) == 1)
  {
    v69 = cnprint::CNPrinter::GetLogLevel(v69);
    if (v69 <= 1)
    {
      LOWORD(v179) = 2;
      __p.__r_.__value_.__s.__data_[0] = 1;
      v72 = cnprint::CNLogFormatter::FormatWarning((v35 + 1704), "PredictAndUpdate is only compatible with dense prediction.");
      if (*(v35 + 1727) >= 0)
      {
        v73 = v72;
      }

      else
      {
        v73 = *(v35 + 1704);
      }

      cnprint::CNPrinter::Print(&v179, &__p, "%s", v73);
    }
  }

  if ((v165 & 1) == 0 && v162 && cnprint::CNPrinter::GetLogLevel(v69) <= 1)
  {
    LOWORD(v179) = 2;
    __p.__r_.__value_.__s.__data_[0] = 1;
    v74 = cnprint::CNLogFormatter::FormatWarning((v35 + 1704), "Local hypothesis testing implies global hypothesis testing.  Global hypothesis testing will be enabled.");
    if (*(v35 + 1727) >= 0)
    {
      v75 = v74;
    }

    else
    {
      v75 = *(v35 + 1704);
    }

    cnprint::CNPrinter::Print(&v179, &__p, "%s", v75);
  }

  if (*(v171 + 8) && *(v171 + 12))
  {
    v76 = v35 + 8;
    v77 = v171;
  }

  else
  {
    if ((v172 & 0x80000000) != 0)
    {
      __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
    }

    v180.__r_.__value_.__r.__words[2] = 0x100000008;
    v179 = &unk_1F4CE4320;
    v181 = v182;
    v180.__r_.__value_.__r.__words[0] = v172 | 0x100000000;
    LODWORD(v180.__r_.__value_.__r.__words[1]) = v172;
    HIDWORD(v180.__r_.__value_.__r.__words[1]) = v172;
    if (v172 > 3)
    {
      v78 = &v182[2 * v172];
      bzero(v182, 16 * ((v172 - 1) >> 1));
      *(v78 - 2) = 0.0;
      *(v78 - 1) = 0.0;
    }

    else if (v172)
    {
      bzero(v182, 8 * v172);
    }

    v76 = v35 + 8;
    v77 = &v179;
  }

  sub_1D0B894B0(v76, v77);
  v79 = v164;
  if (*(v164 + 8) && *(v164 + 12))
  {
    v80 = v35 + 112;
  }

  else
  {
    if ((v172 & 0x80000000) != 0)
    {
      __assert_rtn("Zeros", "cnmatrix.h", 3056, "n >= 0");
    }

    v180.__r_.__value_.__r.__words[2] = 0x800000008;
    v179 = &unk_1F4CE43B0;
    v181 = v182;
    v81 = v172 * v172;
    LODWORD(v180.__r_.__value_.__l.__data_) = v172;
    HIDWORD(v180.__r_.__value_.__r.__words[0]) = v172;
    LODWORD(v180.__r_.__value_.__r.__words[1]) = v172 * v172;
    HIDWORD(v180.__r_.__value_.__r.__words[1]) = v172;
    if ((v172 * v172) > 3)
    {
      v82 = &v182[2 * v81];
      bzero(v182, 16 * ((v81 - 1) >> 1));
      *(v82 - 2) = 0.0;
      *(v82 - 1) = 0.0;
    }

    else if (v81 >= 1)
    {
      bzero(v182, 8 * v172 * v172);
    }

    v80 = v35 + 112;
    v79 = &v179;
  }

  sub_1D0B894B0(v80, v79);
  if (!*(v170 + 8) || !*(v170 + 12))
  {
    v180.__r_.__value_.__r.__words[2] = 0x100000008;
    *&v180.__r_.__value_.__l.__data_ = xmmword_1D0E84520;
    v179 = &unk_1F4CE4320;
    v181 = v182;
    sub_1D0B89390(v35 + 112, v35 + 8, &v179);
    sub_1D0B894B0(v35 + 664, &v179);
  }

  if ((v172 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3099, "nc >= 0");
  }

  v180.__r_.__value_.__r.__words[2] = 0x800000008;
  v179 = &unk_1F4CE43B0;
  v181 = v182;
  v83 = v30 * v172;
  v180.__r_.__value_.__r.__words[0] = __PAIR64__(v172, v30);
  LODWORD(v180.__r_.__value_.__r.__words[1]) = v30 * v172;
  HIDWORD(v180.__r_.__value_.__r.__words[1]) = v30;
  if ((v30 * v172) > 3)
  {
    v84 = &v182[2 * v83];
    bzero(v182, 16 * ((v83 - 1) >> 1));
    *(v84 - 2) = 0.0;
    *(v84 - 1) = 0.0;
  }

  else if (v83 >= 1)
  {
    bzero(v182, 8 * v30 * v172);
  }

  sub_1D0B894B0(v35 + 1752, &v179);
  v180.__r_.__value_.__r.__words[2] = 0x100000008;
  v179 = &unk_1F4CE4320;
  v181 = v182;
  v180.__r_.__value_.__r.__words[0] = v30 | 0x100000000;
  LODWORD(v180.__r_.__value_.__r.__words[1]) = v30;
  HIDWORD(v180.__r_.__value_.__r.__words[1]) = v30;
  if (v30 > 3)
  {
    v85 = &v182[2 * v30];
    bzero(v182, 16 * ((v30 - 1) >> 1));
    *(v85 - 2) = 0.0;
    *(v85 - 1) = 0.0;
  }

  else if (v30)
  {
    bzero(v182, 8 * v30);
  }

  sub_1D0B894B0(v35 + 2304, &v179);
  sub_1D0B894B0(v35 + 2408, v163);
  *(v35 + 1540) = 0;
  *(v35 + 1536) = 0;
  v180.__r_.__value_.__r.__words[2] = 0x100000057;
  *&v180.__r_.__value_.__l.__data_ = xmmword_1D0E84400;
  v179 = &unk_1F4CE0470;
  v181 = v182;
  sub_1D0BBCB88(a9, 1, &v179);
  v86 = *v181;
  if (*v181 < 0x58u)
  {
    v160 = v30 * v172;
    v161 = *v181;
    v91 = *(a21 + 8);
    v90 = *(a21 + 12);
    if (v91 <= v90)
    {
      v92 = *(a21 + 12);
    }

    else
    {
      v92 = *(a21 + 8);
    }

    if (v91 && v90 && v92)
    {
      v94 = *(a9 + 8);
      v93 = *(a9 + 12);
      v95 = v94 <= v93 ? *(a9 + 12) : *(a9 + 8);
      if (!v94 || !v93 || v95 <= v92)
      {
        v180.__r_.__value_.__r.__words[2] = 0x100000057;
        *&v180.__r_.__value_.__l.__data_ = xmmword_1D0E84400;
        v179 = &unk_1F4CE0470;
        v181 = v182;
        sub_1D0BBCB88(a9, 1, &v179);
        sub_1D0BA196C((v35 + 1680));
        v147 = *(a9 + 8);
        if (v147)
        {
          v148 = *(a9 + 12);
          if (v148)
          {
            if (v148 | v147)
            {
              v149 = 0;
              v150 = *(a9 + 32);
              do
              {
                v151 = v149;
                if (*(v150 + 4 * v149) >= 1)
                {
                  v152 = 0;
                  do
                  {
                    v153 = *(*(a21 + 32) + 8 * v151);
                    LODWORD(v179) = *(v153 + 8);
                    if (*(v153 + 39) < 0)
                    {
                      sub_1D0BC39B4(&v180, *(v153 + 16), *(v153 + 24));
                      v150 = *(a9 + 32);
                    }

                    else
                    {
                      v154 = *(v153 + 16);
                      v180.__r_.__value_.__r.__words[2] = *(v153 + 32);
                      *&v180.__r_.__value_.__l.__data_ = v154;
                    }

                    if (*(v150 + 4 * v151) >= 2)
                    {
                      std::to_string(&__p, v152);
                      v155 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                      v156 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
                      std::string::append(&v180, v155, v156);
                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }
                    }

                    sub_1D0BBCC94(v35 + 1680, &v179);
                    if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v180.__r_.__value_.__l.__data_);
                    }

                    ++v152;
                    v150 = *(a9 + 32);
                  }

                  while (v152 < *(v150 + 4 * v151));
                  v147 = *(a9 + 8);
                  v148 = *(a9 + 12);
                }

                if (v147 <= v148)
                {
                  v157 = v148;
                }

                else
                {
                  v157 = v147;
                }

                if (!v147)
                {
                  break;
                }

                if (!v148)
                {
                  break;
                }

                v149 = v151 + 1;
              }

              while (v157 > v151 + 1);
            }
          }
        }
      }
    }

    sub_1D0BA196C((v35 + 1656));
    sub_1D0BA196C((v35 + 1632));
    sub_1D0BA1824(v252, v171);
    sub_1D0BA1824(&v251, v170);
    sub_1D0BA1824(v250, v168);
    v247 = 0x100000008;
    v242 = &unk_1F4CE4320;
    v243 = v172;
    v244 = 1;
    v245 = v172;
    v246 = v172;
    v248 = &v249;
    v239 = 0x800000008;
    v234 = &unk_1F4CE43B0;
    v96 = v172 * v172;
    v240 = v241;
    v235 = v172;
    v236 = v172;
    v237 = v172 * v172;
    v238 = v172;
    if ((v172 * v172) > 3)
    {
      v98 = &v241[v96];
      bzero(v241, 16 * ((v96 - 1) >> 1));
      *(v98 - 2) = 0;
      *(v98 - 1) = 0;
      v97 = v30 * v172;
    }

    else
    {
      v97 = v30 * v172;
      if (v96 >= 1)
      {
        bzero(v241, 8 * v172 * v172);
      }
    }

    v231 = 0x800000008;
    v226 = &unk_1F4CE43B0;
    v232 = v233;
    v227 = v172;
    v228 = v172;
    v229 = v172 * v172;
    v230 = v172;
    if (v96 > 3)
    {
      v99 = &v233[v96];
      bzero(v233, 16 * ((v96 - 1) >> 1));
      *(v99 - 2) = 0;
      *(v99 - 1) = 0;
    }

    else if (v96 >= 1)
    {
      bzero(v233, 8 * v172 * v172);
    }

    v223 = 0x800000008;
    v218 = &unk_1F4CE43B0;
    v224 = v225;
    v219 = v172;
    v220 = v30;
    v221 = v97;
    v222 = v172;
    if (v97 > 3)
    {
      v100 = &v225[v97];
      bzero(v225, 16 * ((v97 - 1) >> 1));
      *(v100 - 2) = 0;
      *(v100 - 1) = 0;
    }

    else if (v97 >= 1)
    {
      bzero(v225, 8 * v97);
    }

    v215 = 0x100000008;
    v214 = xmmword_1D0E84520;
    v213 = &unk_1F4CE43F8;
    v216 = &v217;
    v210 = 0x100000008;
    v209 = xmmword_1D0E84520;
    v208 = &unk_1F4CE43F8;
    v211 = &v212;
    if (a15 < 1)
    {
      goto LABEL_174;
    }

    v101 = 0;
    v169 = 0;
    v102 = 0;
    v103 = *(a16 + 32);
    v104 = 1.0;
    v167 = 1;
    v166 = vdupq_n_s64(4uLL);
    do
    {
      v105 = *(v103 + 4 * v101);
      v175 = 0x800000001;
      v173 = &unk_1F4CE13B8;
      v176 = v177;
      if (v105 == 1)
      {
        v106 = 0;
        *&v107 = 0x100000001;
        *(&v107 + 1) = 0x100000001;
        v174 = v107;
        v177[0] = 0;
        v108 = 1;
        LODWORD(v105) = 1;
      }

      else if (v105 <= 0)
      {
        v108 = 0;
        LODWORD(v105) = 0;
        v174 = 0uLL;
        v106 = 1;
      }

      else
      {
        v109 = 0;
        LODWORD(v174) = 1;
        DWORD1(v174) = v105;
        *(&v174 + 1) = v105 | 0x100000000;
        v110 = v178;
        v111 = xmmword_1D0E7DD30;
        v112 = xmmword_1D0E84440;
        v113 = vdupq_n_s64(v105 - 1);
        do
        {
          v114 = vmovn_s64(vcgeq_u64(v113, v111));
          if (vuzp1_s16(v114, *v111.i8).u8[0])
          {
            *(v110 - 3) = v109;
          }

          if (vuzp1_s16(v114, *&v111).i8[2])
          {
            *(v110 - 2) = v109 + 1;
          }

          if (vuzp1_s16(*&v111, vmovn_s64(vcgeq_u64(v113, *&v112))).i32[1])
          {
            *(v110 - 1) = v109 + 2;
            *v110 = v109 + 3;
          }

          v109 += 4;
          v115 = vdupq_n_s64(4uLL);
          v112 = vaddq_s64(v112, v115);
          v111 = vaddq_s64(v111, v115);
          v110 += 4;
        }

        while (((v105 + 3) & 0xFFFFFFFC) != v109);
        v106 = 0;
        v108 = 1;
      }

      v184 = 0x100000008;
      __p.__r_.__value_.__r.__words[0] = &unk_1F4CE43F8;
      v185 = v186;
      __p.__r_.__value_.__l.__size_ = __PAIR64__(v108, v105);
      LODWORD(__p.__r_.__value_.__r.__words[2]) = v105 * v108;
      HIDWORD(__p.__r_.__value_.__r.__words[2]) = v105;
      if (v105)
      {
        v116 = 0;
        v117 = 0;
        do
        {
          if ((v106 & 1) == 0)
          {
            v118 = 0;
            do
            {
              v186[v117 + HIDWORD(__p.__r_.__value_.__r.__words[2]) * v118] = v177[v116 + v118];
              ++v118;
            }

            while (v108 != v118);
          }

          ++v117;
          v116 += v108;
        }

        while (v117 != v105);
        v119 = __p.__r_.__value_.__r.__words[1];
        v108 = HIDWORD(__p.__r_.__value_.__r.__words[1]);
      }

      else
      {
        v119 = 0;
      }

      v180.__r_.__value_.__r.__words[2] = 0x100000008;
      v179 = &unk_1F4CE43F8;
      v181 = v182;
      v180.__r_.__value_.__r.__words[0] = __PAIR64__(v108, v119);
      v120 = v119 * v108;
      v180.__r_.__value_.__l.__size_ = __PAIR64__(v119, v120);
      if (v120 >= 1)
      {
        v121 = v186;
        v122 = v182;
        do
        {
          v123 = *v121;
          v121 = (v121 + 4);
          *v122 = v123 + v169;
          v122 = (v122 + 4);
          --v120;
        }

        while (v120);
      }

      sub_1D0B9F5D4(&v213, &v179);
      v124 = *(*(a16 + 32) + 4 * (*(a16 + 20) + v101));
      v175 = 0x800000001;
      v173 = &unk_1F4CE13B8;
      v176 = v177;
      if (v124 == 1)
      {
        v125 = 0;
        *&v126 = 0x100000001;
        *(&v126 + 1) = 0x100000001;
        v174 = v126;
        v177[0] = 0;
        v127 = 1;
        LODWORD(v124) = 1;
      }

      else if (v124 <= 0)
      {
        v127 = 0;
        LODWORD(v124) = 0;
        v174 = 0uLL;
        v125 = 1;
      }

      else
      {
        v128 = 0;
        LODWORD(v174) = 1;
        DWORD1(v174) = v124;
        *(&v174 + 1) = v124 | 0x100000000;
        v129 = v178;
        v130 = xmmword_1D0E7DD30;
        v131 = xmmword_1D0E84440;
        v132 = vdupq_n_s64(v124 - 1);
        do
        {
          v133 = vmovn_s64(vcgeq_u64(v132, v130));
          if (vuzp1_s16(v133, *v130.i8).u8[0])
          {
            *(v129 - 3) = v128;
          }

          if (vuzp1_s16(v133, *&v130).i8[2])
          {
            *(v129 - 2) = v128 + 1;
          }

          if (vuzp1_s16(*&v130, vmovn_s64(vcgeq_u64(v132, *&v131))).i32[1])
          {
            *(v129 - 1) = v128 + 2;
            *v129 = v128 + 3;
          }

          v128 += 4;
          v131 = vaddq_s64(v131, v166);
          v130 = vaddq_s64(v130, v166);
          v129 += 4;
        }

        while (((v124 + 3) & 0xFFFFFFFC) != v128);
        v125 = 0;
        v127 = 1;
      }

      v184 = 0x100000008;
      __p.__r_.__value_.__r.__words[0] = &unk_1F4CE43F8;
      v185 = v186;
      __p.__r_.__value_.__l.__size_ = __PAIR64__(v127, v124);
      LODWORD(__p.__r_.__value_.__r.__words[2]) = v124 * v127;
      HIDWORD(__p.__r_.__value_.__r.__words[2]) = v124;
      if (v124)
      {
        v134 = 0;
        v135 = 0;
        do
        {
          if ((v125 & 1) == 0)
          {
            v136 = 0;
            do
            {
              v186[v135 + HIDWORD(__p.__r_.__value_.__r.__words[2]) * v136] = v177[v134 + v136];
              ++v136;
            }

            while (v127 != v136);
          }

          ++v135;
          v134 += v127;
        }

        while (v135 != v124);
        v137 = __p.__r_.__value_.__r.__words[1];
        v127 = HIDWORD(__p.__r_.__value_.__r.__words[1]);
      }

      else
      {
        v137 = 0;
      }

      v180.__r_.__value_.__r.__words[2] = 0x100000008;
      v179 = &unk_1F4CE43F8;
      v181 = v182;
      v180.__r_.__value_.__r.__words[0] = __PAIR64__(v127, v137);
      v138 = v137 * v127;
      v180.__r_.__value_.__l.__size_ = __PAIR64__(v137, v138);
      if (v138 >= 1)
      {
        v139 = v186;
        v140 = v182;
        do
        {
          v141 = *v139;
          v139 = (v139 + 4);
          *v140 = v141 + v102;
          v140 = (v140 + 4);
          --v138;
        }

        while (v138);
      }

      sub_1D0B9F5D4(&v208, &v179);
      v189 = 0x100000008;
      v188 = xmmword_1D0E84520;
      v187 = &unk_1F4CE4320;
      v190 = &v191;
      v184 = 0x800000008;
      *&__p.__r_.__value_.__r.__words[1] = xmmword_1D0E84510;
      __p.__r_.__value_.__r.__words[0] = &unk_1F4CE43B0;
      v185 = v186;
      v175 = 0x800000008;
      v173 = &unk_1F4CE43B0;
      v174 = xmmword_1D0E84510;
      v176 = v177;
      v142 = *(*(a17 + 32) + 8 * v101);
      sub_1D0BA4B2C(&v179, v252, &v213);
      sub_1D0BA4B2C(&v192, v250, &v208);
      if (v142(&v179, &v192, *(*(a18 + 32) + 8 * v101), &v187, &__p, &v173))
      {
        return 20;
      }

      sub_1D0BA4B2C(&v179, &v242, &v213);
      sub_1D0BA556C(&v179, &v187);
      sub_1D0BA16B8(&v179, &v234, &v213, &v213);
      sub_1D0B9F65C(&v179, &__p);
      v194 = 0x100000008;
      v193 = xmmword_1D0E84520;
      v192 = &unk_1F4CE43F8;
      v195 = v196;
      v180.__r_.__value_.__r.__words[2] = 0x800000008;
      *&v180.__r_.__value_.__l.__data_ = xmmword_1D0E84510;
      v179 = &unk_1F4CE43B0;
      v181 = v182;
      v143 = sub_1D0BEC1D8(&__p, &v192, &v179);
      v194 = 0x800000008;
      v193 = xmmword_1D0E84510;
      v192 = &unk_1F4CE43B0;
      v195 = v196;
      v205 = 0x100000008;
      v203 = &unk_1F4CE43F8;
      v204 = xmmword_1D0E84520;
      v206 = &v207;
      v200 = 0x100000008;
      v198 = &unk_1F4CE43F8;
      v199 = xmmword_1D0E84520;
      v201 = &v202;
      v180.__r_.__value_.__r.__words[2] = 0x100000020;
      *&v180.__r_.__value_.__l.__data_ = xmmword_1D0E84540;
      v179 = &unk_1F4CE3988;
      v181 = v182;
      v144 = sub_1D0BA5174(&__p, &v203, &v198, &v179, &v192);
      sub_1D0BA16B8(&v179, &v226, &v213, &v213);
      sub_1D0B9F65C(&v179, &v192);
      sub_1D0BA16B8(&v179, &v218, &v213, &v208);
      sub_1D0B9F65C(&v179, &v173);
      v104 = v104 * v143;
      v167 &= v144 <= v58;
      v103 = *(a16 + 32);
      v169 += *(v103 + 4 * v101);
      v102 += *(v103 + 4 * (*(a16 + 20) + v101++));
    }

    while (v101 != a15);
    v65 = v172;
    if (v167)
    {
LABEL_174:
      sub_1D0BF86BC(&v203, v161, 1);
      sub_1D0BF86BC(&v198, v161, 1);
      sub_1D0BF8804(&v197, v161, v65);
    }

    LOWORD(v179) = 2;
    __p.__r_.__value_.__s.__data_[0] = 2;
    v145 = cnprint::CNLogFormatter::FormatWarning((v35 + 1704), "PredictAndUpdate state Jacobian matrix is not invertible.");
    if (*(v35 + 1727) >= 0)
    {
      v146 = v145;
    }

    else
    {
      v146 = *(v35 + 1704);
    }

    cnprint::CNPrinter::Print(&v179, &__p, "%s", v146);
    sub_1D0B894B0(v35 + 768, &v242);
    sub_1D0B894B0(v35 + 872, v164);
    v180.__r_.__value_.__r.__words[2] = 0x100000008;
    *&v180.__r_.__value_.__l.__data_ = xmmword_1D0E84520;
    v179 = &unk_1F4CE4320;
    v181 = v182;
    sub_1D0B89390(v35 + 872, &v242, &v179);
    sub_1D0B894B0(v35 + 1424, &v179);
    v180.__r_.__value_.__r.__words[2] = 0x800000008;
    v179 = &unk_1F4CE43B0;
    v181 = v182;
    v180.__r_.__value_.__r.__words[0] = __PAIR64__(v172, v30);
    LODWORD(v180.__r_.__value_.__r.__words[1]) = v30 * v172;
    HIDWORD(v180.__r_.__value_.__r.__words[1]) = v30;
    if (v160 > 3)
    {
      v158 = &v182[2 * v160];
      bzero(v182, 16 * ((v160 - 1) >> 1));
      *(v158 - 2) = 0.0;
      *(v158 - 1) = 0.0;
    }

    else if (v160 >= 1)
    {
      bzero(v182, 8 * v160);
    }

    sub_1D0B894B0(v35 + 1752, &v179);
    v184 = 0x100000008;
    *&__p.__r_.__value_.__r.__words[1] = xmmword_1D0E84520;
    __p.__r_.__value_.__r.__words[0] = &unk_1F4CE4320;
    v185 = v186;
    sub_1D0B89390(v163, v250, &__p);
    v175 = 0x100000008;
    v173 = &unk_1F4CE4320;
    v174 = xmmword_1D0E84520;
    v176 = v177;
    sub_1D0B89390(v35 + 1752, &v242, &v173);
    v180.__r_.__value_.__r.__words[2] = 0x100000008;
    *&v180.__r_.__value_.__l.__data_ = xmmword_1D0E84520;
    v179 = &unk_1F4CE4320;
    v181 = v182;
    sub_1D0B88838(&__p, &v173, &v179);
    sub_1D0B894B0(v35 + 2304, &v179);
    sub_1D0B894B0(v35 + 2408, v163);
    *(v35 + 1540) = 1;
    return 21;
  }

  else
  {
    v87 = 2;
    LOWORD(v179) = 2;
    __p.__r_.__value_.__s.__data_[0] = 5;
    v88 = cnprint::CNLogFormatter::FormatGeneral((v35 + 1704), "SquareRootInformationFilter::PredictAndUpdate called with %u measurements vs. maximum %u", v86, 87);
    if (*(v35 + 1727) >= 0)
    {
      v89 = v88;
    }

    else
    {
      v89 = *(v35 + 1704);
    }

    cnprint::CNPrinter::Print(&v179, &__p, "%s", v89);
  }

  return v87;
}

void sub_1D0BDFA54(_Unwind_Exception *a1)
{
  sub_1D0DA2BF0(&STACK[0x1438]);
  sub_1D0DFC5BC(&STACK[0x1CC8]);
  sub_1D0DFC5BC(&STACK[0x32C8]);
  sub_1D0C00CB0(&STACK[0x2E90]);
  sub_1D0C00CB0(&STACK[0x3290]);
  sub_1D0BFF570(&STACK[0x3330]);
  sub_1D0BFF570(&STACK[0x3360]);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0BDFDC8(uint64_t a1)
{
  sub_1D0BCB5E0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1D0BDFE04(uint64_t a1@<X0>, BOOL *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x800000008;
  *a3 = &unk_1F4CE43B0;
  *(a3 + 8) = xmmword_1D0E84510;
  *(a3 + 32) = a3 + 40;
  sub_1D0B9F748(a1, a3, a2);
}

uint64_t raven::MountStateChecker::HandleEvent(raven::MountStateChecker *this, const raven::MountStateEvent *a2, raven::MountStateEvent *a3)
{
  if ((*(this + 8) & 1) == 0)
  {
    v23 = 12;
    v22 = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v23, &v22, "t,%.3lf,MountStateChecker, not configured");
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 104) >= 4u)
  {
    v21 = 12;
    v20 = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v21, &v20, "t,%.3lf, Warning: Invalid type detected in mount state integrity check.");
    return 0xFFFFFFFFLL;
  }

  v3 = *(a2 + 14);
  if (v3 < 0.0 || v3 > 1.0 || (*(a2 + 14) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a2 + 15);
  v7 = v6 < 0.0 || v6 > 1.0;
  if (v7 || (*(a2 + 15) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a2 + 16);
  v10 = v9 < 0.0 || v9 > 1.0;
  if (v10 || (*(a2 + 16) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = *(a2 + 17);
  result = 0xFFFFFFFFLL;
  if (v12 >= 0.0 && v12 <= 1.0 && (*(a2 + 17) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && fabs(v3 + v6 + v9 + v12 + -1.0) < 2.22044605e-16)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    v14 = *(a2 + 24);
    v15 = *(a2 + 40);
    v16 = *(a2 + 56);
    *(a3 + 72) = *(a2 + 72);
    *(a3 + 56) = v16;
    *(a3 + 40) = v15;
    *(a3 + 24) = v14;
    v17 = *(a2 + 88);
    v18 = *(a2 + 104);
    v19 = *(a2 + 120);
    *(a3 + 17) = *(a2 + 17);
    *(a3 + 120) = v19;
    *(a3 + 104) = v18;
    *(a3 + 88) = v17;
  }

  return result;
}

void sub_1D0BE00C8(uint64_t a1, raven::RavenDeviceAttitudeActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B9356C(v4, a3);
  raven::RavenDeviceAttitudeActiveObject::HandleEvent(v3, v4);
}

double sub_1D0BE012C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = sub_1D0B9356C(&v9, a3);
  if (*(v3 + 224))
  {
    if (*(v3 + 497) == 1 && *(v3 + 496) == 1)
    {
      if (*(v3 + 1672) == 1)
      {
        *(v3 + 1616) = v15;
        *(v3 + 1632) = v16;
        *(v3 + 1648) = v17;
        *(v3 + 1664) = v18;
        *(v3 + 1552) = v11;
        *(v3 + 1568) = v12;
        *(v3 + 1584) = v13;
        *(v3 + 1600) = v14;
        v4.n128_u64[0] = v10;
        *(v3 + 1536) = v10;
      }

      else
      {
        *(v3 + 1528) = &unk_1F4CEF538;
        *(v3 + 1616) = v15;
        *(v3 + 1632) = v16;
        *(v3 + 1648) = v17;
        *(v3 + 1664) = v18;
        *(v3 + 1552) = v11;
        *(v3 + 1568) = v12;
        *(v3 + 1584) = v13;
        *(v3 + 1600) = v14;
        v4.n128_u64[0] = v10;
        *(v3 + 1536) = v10;
        *(v3 + 1672) = 1;
      }
    }
  }

  else
  {
    v23 = 12;
    v22 = 2;
    v21[0] = (*(v9 + 16))(&v9, v4);
    v21[1] = v5;
    (*(v9 + 24))(v19, &v9);
    if (v20 >= 0)
    {
      v6 = v19;
    }

    else
    {
      v6 = v19[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 232, v21, "Failed to handle event - %s.", v6);
    if (*(v3 + 255) >= 0)
    {
      v7 = (v3 + 232);
    }

    else
    {
      v7 = *(v3 + 232);
    }

    cnprint::CNPrinter::Print(&v23, &v22, "%s", v7);
    if (v20 < 0)
    {
      operator delete(v19[0]);
    }
  }

  return v4.n128_f64[0];
}

void sub_1D0BE0328(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BE0368(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B92680(v4, a3);
  *(v3 + 256) = *(v3 + 112);
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = &unk_1F4CEF778;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0x7FF8000000000000;
  v16 = 0;
  v17 = 0x3FF0000000000000;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (!raven::MovingStateChecker::HandleEvent(*(v3 + 1896), v4, v5))
  {
    sub_1D0BB7A20(v3, v5);
  }
}

double sub_1D0BE0418(uint64_t a1, raven::RavenDeviceAttitudeActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B92680(v5, a3);
  *&result = raven::RavenDeviceAttitudeActiveObject::HandleEvent(v3, v5).n128_u64[0];
  return result;
}

__n128 raven::RavenDeviceAttitudeActiveObject::HandleEvent(raven::RavenDeviceAttitudeActiveObject *this, const raven::MovingStateEvent *a2)
{
  if (*(this + 224))
  {
    if (*(this + 7072) == 1)
    {
      result = *(a2 + 88);
      v3 = *(a2 + 104);
      v4 = *(a2 + 120);
      *(this + 883) = *(a2 + 17);
      *(this + 6936) = *(a2 + 8);
      v5 = *(a2 + 24);
      v6 = *(a2 + 40);
      v7 = *(a2 + 72);
      *(this + 6984) = *(a2 + 56);
      *(this + 7000) = v7;
      *(this + 6952) = v5;
      *(this + 6968) = v6;
      *(this + 7032) = v3;
      *(this + 7048) = v4;
      *(this + 7016) = result;
    }

    else
    {
      *(this + 866) = &unk_1F4CEF778;
      *(this + 6936) = *(a2 + 8);
      v9 = *(a2 + 24);
      v10 = *(a2 + 40);
      v11 = *(a2 + 72);
      *(this + 6984) = *(a2 + 56);
      *(this + 7000) = v11;
      *(this + 6952) = v9;
      *(this + 6968) = v10;
      result = *(a2 + 88);
      v12 = *(a2 + 104);
      v13 = *(a2 + 120);
      *(this + 883) = *(a2 + 17);
      *(this + 7032) = v12;
      *(this + 7048) = v13;
      *(this + 7016) = result;
      *(this + 7072) = 1;
    }
  }

  else
  {
    v17 = 12;
    v16 = 3;
    (*(*this + 16))(__p);
    if (v15 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    cnprint::CNPrinter::Print(&v17, &v16, "Warning: %s is not configured yet.", v8);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return result;
}

void sub_1D0BE05C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0BE0604(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B92680(&v12, a3);
  if (*(v3 + 1024) == 1)
  {
    *(v3 + 1016) = v21;
    v4 = v18;
    v5 = v20;
    *(v3 + 984) = v19;
    *(v3 + 1000) = v5;
    v6 = v14;
    v7 = v16;
    *(v3 + 920) = v15;
    *(v3 + 936) = v7;
    *(v3 + 952) = v17;
    *(v3 + 968) = v4;
    *(v3 + 888) = v13;
    *(v3 + 904) = v6;
  }

  else
  {
    *(v3 + 880) = &unk_1F4CEF778;
    *(v3 + 1016) = v21;
    v8 = v18;
    v9 = v20;
    *(v3 + 984) = v19;
    *(v3 + 1000) = v9;
    v10 = v14;
    v11 = v16;
    *(v3 + 920) = v15;
    *(v3 + 936) = v11;
    *(v3 + 952) = v17;
    *(v3 + 968) = v8;
    *(v3 + 888) = v13;
    *(v3 + 904) = v10;
    *(v3 + 1024) = 1;
  }

  if (v19 != 3 && *(v3 + 1320) == 1)
  {
    *(v3 + 1320) = 0;
  }
}

double sub_1D0BE0708(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B92680(&v9, a3);
  v4 = v15;
  v5 = v17;
  *(v3 + 728) = v16;
  *(v3 + 744) = v5;
  *(v3 + 760) = v18;
  v6 = v11;
  v7 = v13;
  *(v3 + 664) = v12;
  *(v3 + 680) = v7;
  *(v3 + 696) = v14;
  *(v3 + 712) = v4;
  result = *&v10;
  *(v3 + 632) = v10;
  *(v3 + 648) = v6;
  return result;
}

void sub_1D0BE0798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v58 = 0x100000008;
  v56 = &unk_1F4CE4320;
  v57 = xmmword_1D0E84520;
  v59 = &v60;
  v53 = 0x800000008;
  v52 = xmmword_1D0E84510;
  v51 = &unk_1F4CE43B0;
  v54 = &v55;
  v48 = 0x100000008;
  v16 = *(a1 + 1540) == 0;
  v47 = xmmword_1D0E84520;
  v46 = &unk_1F4CE4320;
  v49 = &v50;
  v17 = 8;
  if (v16)
  {
    v18 = 112;
  }

  else
  {
    v17 = 768;
    v18 = 872;
  }

  if (v16)
  {
    v19 = 664;
  }

  else
  {
    v19 = 1424;
  }

  sub_1D0B894B0(&v56, a1 + v17);
  sub_1D0B894B0(&v51, a1 + v18);
  sub_1D0B894B0(&v46, a1 + v19);
  v20 = *(a2 + 8);
  if ((v20 & 0x80000000) == 0)
  {
    v43 = 0x100000008;
    v38 = &unk_1F4CE4320;
    v44 = v45;
    v39 = v20;
    v40 = 1;
    v41 = v20;
    v42 = v20;
    if (v20 > 3)
    {
      v21 = &v45[v20];
      bzero(v45, 16 * ((v20 - 1) >> 1));
      *(v21 - 2) = 0;
      *(v21 - 1) = 0;
    }

    else if (v20)
    {
      bzero(v45, 8 * v20);
    }

    v22 = *(a9 + 8);
    v23 = *(a9 + 12);
    if (v22 <= v23)
    {
      v24 = *(a9 + 12);
    }

    else
    {
      v24 = *(a9 + 8);
    }

    if (v23)
    {
      v25 = v22 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      v26 = 0;
    }

    else
    {
      v26 = v24;
    }

    sub_1D0BE0C9C(v36, v26, 1);
    if (v26 >= 1)
    {
      v27 = 0;
      v28 = 0;
      while (1)
      {
        sub_1D0BBA094(v33, *(a4 + 32) + v28);
        if (v34 <= v35)
        {
          v29 = v35;
        }

        else
        {
          v29 = v34;
        }

        if (v35)
        {
          v30 = v34 == 0;
        }

        else
        {
          v30 = 1;
        }

        if (v30)
        {
          v31 = 0;
        }

        else
        {
          v31 = v29;
        }

        *(v37 + v27) = v31;
        v28 += 64;
        v27 += 4;
        if (v26 << 6 == v28)
        {
          sub_1D0BE0C9C(v33, v26, 1);
          sub_1D0BD9994(v32, v26, 1);
        }
      }
    }

    sub_1D0BE0C9C(v33, v26, 1);
    sub_1D0BD9994(v32, v26, 1);
  }

  __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
}