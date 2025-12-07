uint64_t sub_1D0BE0C9C(uint64_t result, int a2, int a3)
{
  *(result + 24) = 0x100000057;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE0470;
  if (a2 < 0)
  {
    v3 = "nr >= 0";
    v4 = 419;
    goto LABEL_6;
  }

  if (a3 < 0)
  {
    v3 = "nc >= 0";
    v4 = 420;
LABEL_6:
    __assert_rtn("CNMatrix", "cnmatrix.h", v4, v3);
  }

  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = a3 * a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

uint64_t *sub_1D0BE0D60(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    v5 = v4 - 16;
    v6 = *(v4 - 8);
    if (v6)
    {
      v7 = v6 << 6;
      v8 = v4 - 64;
      do
      {
        *(v8 + v7) = &unk_1F4CD5E28;
        v7 -= 64;
      }

      while (v7);
    }

    MEMORY[0x1D387EC80](v5, 0x1081C8052DD7B27);
  }

  return a1;
}

__n128 sub_1D0BE0DE8(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x300000003;
  *(a1 + 24) = 0x300000003;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CD5DD0;
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
  if (v4 > 3)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 4)
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

void raven::RavenPNTEstimator::GetInitializationArgs(uint64_t a1@<X0>, int8x16_t *a2@<X1>, _BYTE *a3@<X8>, int8x16_t a4@<Q1>)
{
  v5 = (a1 + 19656);
  *a3 = 0;
  a3[296] = 0;
  v63 = a1;
  v6 = *a2;
  v64[0] = *a2;
  if ((*(a1 + 19888) & 1) == 0)
  {
    v13 = sub_1D0B751F4(__p, "no previous solution");
    if (cnprint::CNPrinter::GetLogLevel(v13) > 1)
    {
      goto LABEL_71;
    }

    LOWORD(v51) = 12;
    LOBYTE(v54) = 1;
    v14 = __p;
    if (v56 < 0)
    {
      v14 = __p[0];
    }

    v15 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v64, "Could not initialize - %s", v14);
    if (*(a1 + 2735) >= 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = *(a1 + 2712);
    }

LABEL_53:
    cnprint::CNPrinter::Print(&v51, &v54, "%s", v16);
    goto LABEL_71;
  }

  v7 = CNTimeSpan::operator-(a2, (a1 + 21064), v6, a4);
  __p[0] = v7;
  __p[1] = v8;
  if (v7 < 0 || (v11 = *&v8, *&v8 < 0.0))
  {
    v12 = CNTimeSpan::operator-(__p, v9, v10);
    v11 = v17;
  }

  else
  {
    v12 = v7;
  }

  v18 = *(a1 + 1168);
  v9.i64[0] = *(v18 + 896);
  v51 = 0;
  v52 = 0.0;
  *v19.i64 = CNTimeSpan::SetTimeSpan(&v51, 0, v9, v10);
  if (v12 || (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (!v51)
    {
      *v19.i64 = v52;
      if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        goto LABEL_18;
      }
    }

    v21 = v12 <= v51;
    if (v12 != v51)
    {
      goto LABEL_19;
    }
  }

  *v19.i64 = v52;
LABEL_18:
  v21 = v11 <= *v19.i64;
LABEL_19:
  if (!v21)
  {
    v22 = sub_1D0B751F4(__p, "solution too old");
    if (cnprint::CNPrinter::GetLogLevel(v22) > 1)
    {
      goto LABEL_71;
    }

    LOWORD(v51) = 12;
    LOBYTE(v54) = 1;
    v23 = __p;
    if (v56 < 0)
    {
      v23 = __p[0];
    }

    v24 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v64, "Could not initialize - %s", v23);
    if (*(a1 + 2735) >= 0)
    {
      v16 = v24;
    }

    else
    {
      v16 = *(a1 + 2712);
    }

    goto LABEL_53;
  }

  if (v5[449] != 2)
  {
    v30 = sub_1D0B751F4(__p, "previous solution unhealthy");
    if (cnprint::CNPrinter::GetLogLevel(v30) > 1)
    {
      goto LABEL_71;
    }

    LOWORD(v51) = 12;
    LOBYTE(v54) = 1;
    v31 = __p;
    if (v56 < 0)
    {
      v31 = __p[0];
    }

    v32 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v64, "Could not initialize - %s", v31);
    if (*(a1 + 2735) >= 0)
    {
      v16 = v32;
    }

    else
    {
      v16 = *(a1 + 2712);
    }

    goto LABEL_53;
  }

  if (!v5[448])
  {
    v36 = sub_1D0B751F4(__p, "previous solution uninitialized");
    if (cnprint::CNPrinter::GetLogLevel(v36) > 1)
    {
      goto LABEL_71;
    }

    LOWORD(v51) = 12;
    LOBYTE(v54) = 1;
    v37 = __p;
    if (v56 < 0)
    {
      v37 = __p[0];
    }

    v38 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v64, "Could not initialize - %s", v37);
    if (*(a1 + 2735) >= 0)
    {
      v16 = v38;
    }

    else
    {
      v16 = *(a1 + 2712);
    }

    goto LABEL_53;
  }

  if (!v5[1704] || (v5[1784] & 1) == 0)
  {
    v33 = sub_1D0B751F4(__p, "previous solution missing device pos/vel");
    if (cnprint::CNPrinter::GetLogLevel(v33) > 1)
    {
      goto LABEL_71;
    }

    LOWORD(v51) = 12;
    LOBYTE(v54) = 1;
    v34 = __p;
    if (v56 < 0)
    {
      v34 = __p[0];
    }

    v35 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v64, "Could not initialize - %s", v34);
    if (*(a1 + 2735) >= 0)
    {
      v16 = v35;
    }

    else
    {
      v16 = *(a1 + 2712);
    }

    goto LABEL_53;
  }

  if (v5[1864])
  {
    goto LABEL_31;
  }

  if ((*v5 & 1) == 0)
  {
    sub_1D0B751F4(__p, "previous solution missing attitude");
    sub_1D0BF638C(&v63, __p);
    goto LABEL_71;
  }

  v39 = CNTimeSpan::operator-((a1 + 21064), (a1 + 19672), v19, v20);
  __p[0] = v39;
  __p[1] = v40;
  if (v39 < 0 || (v43 = *&v40, *&v40 < 0.0))
  {
    v44 = CNTimeSpan::operator-(__p, v41, v42);
    v43 = v45;
  }

  else
  {
    v44 = v39;
  }

  v41.i64[0] = *(v18 + 904);
  v51 = 0;
  v52 = 0.0;
  CNTimeSpan::SetTimeSpan(&v51, 0, v41, v42);
  if (v44 || (*&v43 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (!v51)
    {
      v46 = v52;
      if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        goto LABEL_68;
      }
    }

    v47 = v44 <= v51;
    if (v44 != v51)
    {
      goto LABEL_69;
    }
  }

  v46 = v52;
LABEL_68:
  v47 = v43 <= v46;
LABEL_69:
  if (!v47)
  {
    sub_1D0B751F4(__p, "previous solution information out of synch");
    sub_1D0BF638C(&v63, __p);
LABEL_71:
    if (v56 < 0)
    {
      operator delete(__p[0]);
    }

    return;
  }

LABEL_31:
  if (*(a1 + 28048) != 350)
  {
    sub_1D0B751F4(__p, "accelerometer cache not yet full");
    sub_1D0BF638C(&v63, __p);
    goto LABEL_71;
  }

  if (*(a1 + 44896) != 350)
  {
    sub_1D0B751F4(__p, "gyro cache not yet full");
    sub_1D0BF638C(&v63, __p);
    goto LABEL_71;
  }

  v62 = *(a1 + 21064);
  v61[1] = 0;
  v61[2] = 0;
  v61[0] = &unk_1F4CEF628;
  v58[0] = &unk_1F4CEF658;
  v58[1] = 0;
  v59 = vdupq_n_s64(0x7FF8000000000000uLL);
  v58[2] = 0;
  v60 = 0x7FF8000000000000;
  v25 = sub_1D0B87CF0(a1 + 44888, &v62, v58, *v59.i64, v20);
  v28 = sub_1D0D54164(a1 + 28040, &v62, v61, v26, v27);
  if (!(v25 | v28))
  {
    sub_1D0D54BC4(v57, v29);
  }

  sub_1D0BC2944(__p);
  v48 = sub_1D0BCD7C4(__p, "missing sensor data at desired initialization time,gyro,", 56);
  v49 = MEMORY[0x1D387E9C0](v48, v25 == 0);
  v50 = sub_1D0BCD7C4(v49, ",accel,", 7);
  MEMORY[0x1D387E9C0](v50, v28 == 0);
  sub_1D0BC2E5C(&v51, &__p[1]);
  sub_1D0BF638C(&v63, &v51);
  if (v53 < 0)
  {
    operator delete(v51);
  }

  sub_1D0D36324(__p);
}

void sub_1D0BE2124(_Unwind_Exception *a1)
{
  sub_1D0D857FC(&STACK[0x4F0]);
  sub_1D0D857FC(&STACK[0x530]);
  if (*(v1 + 296) == 1)
  {
    sub_1D0D857FC((v1 + 240));
  }

  _Unwind_Resume(a1);
}

uint64_t *raven::RavenPNTEstimator::GetRavenStatus@<X0>(uint64_t *__return_ptr a1@<X8>, raven::RavenPNTEstimator *this@<X0>)
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
  if (*(this + 58))
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    *(a1 + 5) = 0u;
    v7 = v50;
    *(a1 + 7) = v49;
    *(a1 + 9) = v7;
    *(a1 + 1) = *(this + 14824);
    *(a1 + 3) = 0u;
    a1[11] = 0;
    a1[12] = 0x7FF8000000000000;
    v8 = sub_1D0BADDDC(a1, v6, 1.0);
    if (*(this + 58) && (v8 = sub_1D0D755EC(this + 15256), v8) && (v8 = raven::RavenPNTEstimator::IsSane(this), v8) && (!*(this + 58) || *(this + (*(this + 4902) != 0) + 2449) < *(*(this + 146) + 1464)))
    {
      v11 = 2;
    }

    else
    {
      LogLevel = cnprint::CNPrinter::GetLogLevel(v8);
      v11 = 1;
      if (LogLevel <= 1)
      {
        v46[0] = 12;
        v45 = 1;
        if (*(this + 58))
        {
          v15 = sub_1D0D755EC(this + 15256);
        }

        else
        {
          v15 = 0;
        }

        IsSane = raven::RavenPNTEstimator::IsSane(this);
        if (*(this + 58))
        {
          v17 = *(this + (*(this + 4902) != 0) + 2449) < *(*(this + 146) + 1464);
        }

        else
        {
          v17 = 1;
        }

        cnprint::CNLogFormatter::FormatGeneral(this + 339, "Estimator unhealthy,observable,%d,sane,%d,consistent,%d", v15, IsSane, v17);
        if (*(this + 2735) >= 0)
        {
          v18 = this + 2712;
        }

        else
        {
          v18 = *(this + 339);
        }

        cnprint::CNPrinter::Print(v46, &v45, "%s", v18);
        v11 = 1;
      }
    }

    *(a1 + 105) = v11;
    v10.i64[0] = 1.0;
    *v9.i64 = 1.0 - *(this + (*(this + 4902) != 0) + 2449);
    a1[14] = v9.i64[0];
    a1[15] = CNTimeSpan::operator-(this + 10, this + 8, v9, v10);
    a1[16] = v19;
    *(a1 + 17) = *(this + 16);
    a1[19] = *(this + 34);
    v20 = *(this + 440);
    *(v4 + 6) = *(this + 424);
    *(v4 + 7) = v20;
    *(v4 + 32) = *(this + 114);
    v21 = *(this + 376);
    *(v4 + 2) = *(this + 360);
    *(v4 + 3) = v21;
    v22 = *(this + 408);
    *(v4 + 4) = *(this + 392);
    *(v4 + 5) = v22;
    v23 = *(this + 344);
    *v4 = *(this + 328);
    *(v4 + 1) = v23;
    v24 = *(this + 572);
    *(a1 + 49) = *(this + 556);
    *(a1 + 51) = v24;
    *(a1 + 106) = *(this + 147);
    v25 = *(this + 508);
    *(a1 + 41) = *(this + 492);
    *(a1 + 43) = v25;
    v26 = *(this + 540);
    *(a1 + 45) = *(this + 524);
    *(a1 + 47) = v26;
    v27 = *(this + 476);
    *(a1 + 37) = *(this + 460);
    *(a1 + 39) = v27;
    v28 = *(this + 44);
    *(a1 + 524) = *(this + 43);
    *(a1 + 540) = v28;
    *(a1 + 139) = *(this + 180);
    v29 = *(this + 40);
    *(a1 + 460) = *(this + 39);
    *(a1 + 476) = v29;
    v30 = *(this + 42);
    *(a1 + 492) = *(this + 41);
    *(a1 + 508) = v30;
    v31 = *(this + 38);
    *(a1 + 428) = *(this + 37);
    *(a1 + 444) = v31;
    v32 = *(this + 836);
    *(a1 + 41) = *(this + 820);
    *(a1 + 42) = v32;
    *(a1 + 172) = *(this + 213);
    v33 = *(this + 772);
    *(a1 + 37) = *(this + 756);
    *(a1 + 38) = v33;
    v34 = *(this + 804);
    *(a1 + 39) = *(this + 788);
    *(a1 + 40) = v34;
    v35 = *(this + 740);
    *(a1 + 35) = *(this + 724);
    *(a1 + 36) = v35;
    v36 = *(this + 968);
    *(a1 + 788) = *(this + 952);
    *(a1 + 804) = v36;
    *(a1 + 205) = *(this + 246);
    v37 = *(this + 904);
    *(a1 + 724) = *(this + 888);
    *(a1 + 740) = v37;
    v38 = *(this + 936);
    *(a1 + 756) = *(this + 920);
    *(a1 + 772) = v38;
    v39 = *(this + 872);
    *(a1 + 692) = *(this + 856);
    *(a1 + 708) = v39;
    v40 = *(this + 1100);
    *(a1 + 115) = *(this + 1084);
    *(a1 + 117) = v40;
    *(a1 + 238) = *(this + 279);
    v41 = *(this + 1036);
    *(a1 + 107) = *(this + 1020);
    *(a1 + 109) = v41;
    v42 = *(this + 1068);
    *(a1 + 111) = *(this + 1052);
    *(a1 + 113) = v42;
    v43 = *(this + 1004);
    *(a1 + 103) = *(this + 988);
    *(a1 + 105) = v43;
    *(a1 + 80) = 0;
    *(a1 + 124) = raven::RavenEstimator::GetPriorWeight(this);
    *(a1 + 125) = raven::RavenEstimator::GetGNSSWeight(this);
    *(a1 + 126) = raven::RavenEstimator::GetWiFiWeight(this);
    *(a1 + 127) = raven::RavenEstimator::GetCellWeight(this);
    *(a1 + 128) = raven::RavenEstimator::GetIndoorWeight(this);
    *(a1 + 129) = raven::RavenEstimator::GetAccessoryWeight(this);
    v5.i64[0] = *(this + 40);
    a1[122] = *(this + 39);
    a1[123] = v5.i64[0];
    v13.i64[0] = *(this + 2432);
    a1[121] = v13.i64[0];
    v12 = this + 136;
  }

  else
  {
    v12 = this + 136;
    *(a1 + 5) = *(this + 168);
    *(a1 + 7) = *(this + 184);
    *(a1 + 9) = *(this + 200);
    *(a1 + 11) = *(this + 216);
    *(a1 + 1) = *(this + 136);
    v13 = *(this + 152);
    *(a1 + 3) = v13;
  }

  return raven::PopulateAllTimeFields((a1 + 1), v12, v13, v5);
}

uint64_t *raven::RavenPNTEstimator::GetRavenSolution@<X0>(uint64_t *__return_ptr a1@<X8>, raven::RavenPNTEstimator *this@<X0>)
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
  *(a1 + 73) = v6;
  *(a1 + 75) = v6;
  *(a1 + 77) = v6;
  *(a1 + 79) = v6;
  a1[81] = 0x7FF8000000000000;
  *(a1 + 656) = 0;
  *(a1 + 83) = v6;
  *(a1 + 85) = v6;
  *(a1 + 87) = v6;
  *(a1 + 89) = v6;
  a1[91] = 0x7FF8000000000000;
  *(a1 + 736) = 0;
  *(a1 + 93) = v6;
  *(a1 + 95) = v6;
  *(a1 + 97) = v6;
  *(a1 + 99) = v6;
  a1[101] = 0x7FF8000000000000;
  *(a1 + 816) = 0;
  *(a1 + 103) = v6;
  *(a1 + 105) = v6;
  a1[107] = 0x7FF8000000000000;
  if (*(this + 58) == 1)
  {
    v13 = v6;
    v7 = sub_1D0D755EC(this + 15256);
    v4 = 0uLL;
    v6 = v13;
    if (v7)
    {
      v19[14] = *(this + 14824);
      v17 = 0x10000001CLL;
      v15 = &unk_1F4CE0A20;
      v16 = xmmword_1D0E843A0;
      v18 = v19;
      sub_1D0D881B0(v14, 28, 28);
    }
  }

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
  v8 = *(this + 152);
  *a1 = *(this + 136);
  *(a1 + 1) = v8;
  v9 = *(this + 216);
  *(a1 + 4) = *(this + 200);
  *(a1 + 5) = v9;
  v10 = *(this + 184);
  v11 = *(this + 168);
  *(a1 + 2) = v11;
  *(a1 + 3) = v10;

  return raven::PopulateAllTimeFields(a1, this + 136, v10, v11);
}

void sub_1D0BE37A4(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1EE053A68);
  sub_1D0D855A8(&STACK[0x3C8]);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0BE3854(uint64_t a1, uint64_t a2, int8x16_t a3, int8x16_t a4)
{
  raven::PopulateAllTimeFields(a1 + 8, a2, a3, a4);
  raven::PopulateAllTimeFields(a1 + 1168, a2, v6, v7);
  raven::PopulateAllTimeFields(a1 + 112, a2, v8, v9);

  return raven::PopulateAllTimeFields(a1 + 2032, a2, v10, v11);
}

BOOL raven::RavenIonosphereEstimator::GetEstimatorPredictAndUpdateArguments(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, double a5, int8x16_t a6)
{
  v10 = *a3;
  *a4 = *a3;
  v11 = CNTimeSpan::operator-(a3, a2, v10, a6);
  v13 = v12 + v11;
  *(a4 + 16) = v13;
  if (v13 < 0.0)
  {
    v29 = 12;
    v28 = 2;
    v25 = cnprint::CNLogFormatter::FormatGeneral(a1 + 4040, a3, "Prediction time is negative,dt,%.2lf,current_estimator_time,%.1lf", v13, *(a2 + 8) + *a2);
    if (*(a1 + 4063) >= 0)
    {
      v26 = v25;
    }

    else
    {
      v26 = *(a1 + 4040);
    }

    cnprint::CNPrinter::Print(&v29, &v28, "%s", v26);
  }

  else
  {
    v14 = (*(a1 + 4032) + 2744);
    *(a4 + 24) = *v14;
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    *(a4 + 88) = v14[4];
    *(a4 + 72) = v17;
    *(a4 + 56) = v16;
    *(a4 + 40) = v15;
    v18 = (*(a1 + 4032) + 2824);
    *(a4 + 104) = *v18;
    v19 = v18[1];
    v20 = v18[2];
    v21 = v18[3];
    *(a4 + 168) = v18[4];
    *(a4 + 152) = v21;
    *(a4 + 136) = v20;
    *(a4 + 120) = v19;
    v22 = *(a1 + 200);
    v23 = *(a1 + 216);
    v24 = *(a1 + 232);
    *(a4 + 200) = *(a1 + 184);
    *(a4 + 248) = v24;
    *(a4 + 232) = v23;
    *(a4 + 216) = v22;
    *(a4 + 184) = *(a1 + 168);
  }

  return v13 >= 0.0;
}

uint64_t raven::RavenIonosphereEstimator::PredictAndUpdate(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9) != 1)
  {
    return 32;
  }

  v4 = (a1 + 8456);
  v146[0] = *a2;
  v5 = *(a2 + 16);
  if (v5 < 0.0)
  {
    sub_1D0BF0D88(a1 + 8456, (a1 + 32));
    *v4 = 0;
    sub_1D0BADC18(v4, (a1 + 32));
    return 64;
  }

  if (v5 <= 0.0)
  {
    return 0;
  }

  if (sub_1D0B9D420(v146[0].n128_f64, (a1 + 8464)))
  {
    *v142 = 2;
    LOBYTE(v121) = 4;
    cnprint::CNPrinter::Print(v142, &v121, "WARNING: MeasurementAccumulator.LockAccumulator() called with bad t_end.");
    goto LABEL_53;
  }

  v9 = v146[0];
  *(a1 + 8480) = v146[0];
  v10 = CNTimeSpan::operator-((a1 + 8480), (a1 + 8464), v9, v8);
  v13 = *(a1 + 11640);
  if (v13 >= 1)
  {
    v14 = 0;
    *v12.i64 = v10;
    v15 = v11 + v10;
    v16 = *(a1 + 8552);
    while (1)
    {
      *v142 = *v16;
      *v12.i64 = CNTimeSpan::operator-(v142, (a1 + 8464), *v142, v12);
      v18 = (v17 + *v12.i64) / v15;
      if (v18 < 0.0)
      {
        break;
      }

      *(*(a1 + 10392) + v14) = v18;
      v14 += 8;
      ++v16;
      if (8 * v13 == v14)
      {
        goto LABEL_14;
      }
    }

    LOWORD(v121) = 2;
    LOBYTE(v95) = 2;
    cnprint::CNPrinter::Print(&v121, &v95, "WARNING: MeasurementAccumulator.LockAccumulator() called with bad t_end.");
LABEL_53:
    sub_1D0BF0D88(v4, (a1 + 32));
    *v4 = 0;
    *&v41 = sub_1D0BADC18(v4, (a1 + 32)).n128_u64[0];
    *v142 = 12;
    LOBYTE(v121) = 4;
    v42 = cnprint::CNLogFormatter::FormatGeneral((a1 + 4040), "PredictAndUpdate(), could not lock accumulator", v41);
    if (*(a1 + 4063) >= 0)
    {
      v43 = v42;
    }

    else
    {
      v43 = *(a1 + 4040);
    }

    cnprint::CNPrinter::Print(v142, &v121, "%s", v43);
    return 128;
  }

LABEL_14:
  *(a1 + 21160) = 44;
  *(a1 + 13144) = xmmword_1D0EA1270;
  *(a1 + 13888) = xmmword_1D0EA1270;
  *(a1 + 14104) = xmmword_1D0EA1270;
  *(a1 + 14496) = xmmword_1D0EA1270;
  *(a1 + 16648) = xmmword_1D0EA1270;
  *(a1 + 16864) = xmmword_1D0EA1270;
  *(a1 + 19016) = xmmword_1D0EA1270;
  *(a1 + 21176) = xmmword_1D0EA1270;
  *(a1 + 21568) = xmmword_1D0EA1270;
  *&v142[16] = 0;
  *&v142[8] = 0;
  *v142 = &v142[8];
  if (v13 < 1)
  {
    v20 = 0;
    goto LABEL_60;
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  do
  {
    if (*(*(a1 + 10392) + 8 * v19) > 1.0)
    {
      goto LABEL_48;
    }

    ++v22;
    v23 = *(*(a1 + 10000) + 4 * v19);
    v24 = v23 + v21;
    if (v20 <= 43 && v24 < 45)
    {
      v75 = v21;
      v73 = v22;
      v25 = v20;
      goto LABEL_20;
    }

    v95 = 0.0;
    v32 = *v142;
    if (*v142 == &v142[8])
    {
      goto LABEL_75;
    }

    v33 = 0;
    v34 = -1;
    do
    {
      v35 = *(v32 + 10);
      if (v35 > v34)
      {
        v33 = *(v32 + 4);
        v95 = *&v33;
        v34 = v35;
      }

      v36 = *(v32 + 1);
      if (v36)
      {
        do
        {
          v37 = v36;
          v36 = *v36;
        }

        while (v36);
      }

      else
      {
        do
        {
          v37 = *(v32 + 2);
          v38 = *v37 == v32;
          v32 = v37;
        }

        while (!v38);
      }

      v32 = v37;
    }

    while (v37 != &v142[8]);
    if (!v33)
    {
LABEL_75:
      LOWORD(v121) = 2;
      LOBYTE(v137) = 4;
      cnprint::CNPrinter::Print(&v121, &v137, "MeasurementAccumulator.LockAccumulator() most_common_measurement_type == nullptr");
      goto LABEL_58;
    }

    if (*(*(a1 + 11680) + 8 * v19) != v33)
    {
      v25 = v20 - 1;
      if (v20 < 1)
      {
LABEL_57:
        LOWORD(v121) = 2;
        LOBYTE(v137) = 4;
        cnprint::CNPrinter::Print(&v121, &v137, "MeasurementAccumulator.LockAccumulator() found_idx == false");
LABEL_58:
        sub_1D0B99218(*&v142[8]);
        goto LABEL_53;
      }

      v39 = v20;
      while (*(*(a1 + 21200) + 8 * --v39) != v33)
      {
        if (v39 <= 0)
        {
          goto LABEL_57;
        }
      }

      if (v24 - *(*(a1 + 13912) + 4 * v39) <= 44)
      {
        v76 = v21;
        v73 = v22;
        v121 = COERCE_DOUBLE(&v95);
        v40 = sub_1D0BBCAA4(v142, v33, &v121);
        --*(v40 + 10);
        v75 = v76 - *(*(a1 + 13912) + 4 * v39);
        v20 = v39;
LABEL_20:
        *(*(a1 + 13168) + 16 * v20) = *(*(a1 + 8552) + 16 * v19);
        *(*(a1 + 13912) + 4 * v20) = v23;
        *(*(a1 + 14128) + 8 * v20) = *(*(a1 + 10392) + 8 * v19);
        sub_1D0B894B0(*(a1 + 14520) + 48 * v20, *(a1 + 11136) + 48 * v19);
        *(*(a1 + 16672) + 4 * v20) = *(*(a1 + 11184) + 4 * v19);
        sub_1D0B894B0(*(a1 + 16888) + 48 * v20, *(a1 + 11576) + 48 * v19);
        sub_1D0B894B0(*(a1 + 19040) + 48 * v20, *(a1 + 11624) + 48 * v19);
        *(*(a1 + 21200) + 8 * v20) = *(*(a1 + 11680) + 8 * v19);
        *(*(a1 + 21592) + 8 * v20) = *(*(a1 + 12424) + 8 * v19);
        v26 = *&v142[8];
        v27 = *(*(a1 + 11680) + 8 * v19);
        if (!*&v142[8])
        {
          goto LABEL_28;
        }

        v28 = &v142[8];
        do
        {
          v29 = *(v26 + 32);
          v30 = v29 >= v27;
          v31 = v29 < v27;
          if (v30)
          {
            v28 = v26;
          }

          v26 = *(v26 + 8 * v31);
        }

        while (v26);
        if (v28 != &v142[8] && v27 >= *(v28 + 4))
        {
          ++*(v28 + 10);
        }

        else
        {
LABEL_28:
          *&v121 = *(a1 + 11680) + 8 * v19;
          *(sub_1D0BBCAA4(v142, v27, &v121) + 10) = 1;
        }

        v22 = v73;
        v20 = v25 + 1;
        v21 = v75 + v23;
        LODWORD(v13) = *(a1 + 11640);
      }
    }

LABEL_48:
    ++v19;
  }

  while (v19 < v13);
  if (v22 > v20)
  {
    LOWORD(v121) = 2;
    LOBYTE(v95) = 2;
    cnprint::CNPrinter::Print(&v121, &v95, "t,%.3lf,WARNING: MeasurementAccumulator.LockAccumulator() truncating measurements,nh,%d,eligible,%d,num_truncated,%d", v146[0].n128_f64[1] + v146[0].n128_i64[0], v20, v22, v22 - v20);
  }

LABEL_60:
  *(a1 + 21160) = v20;
  *(a1 + 13144) = v20;
  *(a1 + 13148) = 1;
  *(a1 + 13152) = v20;
  *(a1 + 13156) = v20;
  *(a1 + 13888) = v20;
  *(a1 + 13892) = 1;
  *(a1 + 13896) = v20;
  *(a1 + 13900) = v20;
  *(a1 + 14104) = v20;
  *(a1 + 14108) = 1;
  *(a1 + 14112) = v20;
  *(a1 + 14116) = v20;
  *(a1 + 14496) = v20;
  *(a1 + 14500) = 1;
  *(a1 + 14504) = v20;
  *(a1 + 14508) = v20;
  *(a1 + 16648) = v20;
  *(a1 + 16652) = 1;
  *(a1 + 16656) = v20;
  *(a1 + 16660) = v20;
  *(a1 + 16864) = v20;
  *(a1 + 16868) = 1;
  *(a1 + 16872) = v20;
  *(a1 + 16876) = v20;
  *(a1 + 19016) = v20;
  *(a1 + 19020) = 1;
  *(a1 + 19024) = v20;
  *(a1 + 19028) = v20;
  *(a1 + 21176) = v20;
  *(a1 + 21180) = 1;
  *(a1 + 21184) = v20;
  *(a1 + 21188) = v20;
  *(a1 + 21568) = v20;
  *(a1 + 21572) = 1;
  *(a1 + 21576) = v20;
  *(a1 + 21580) = v20;
  v4[1] = 1;
  sub_1D0B99218(*&v142[8]);
  if (!cnprint::CNPrinter::GetLogLevel(v44))
  {
    *v142 = 12;
    LOBYTE(v121) = 0;
    v45 = v146[0].n128_f64[1] + v146[0].n128_i64[0];
    v46 = sub_1D0BE51B8(v4);
    cnprint::CNLogFormatter::FormatGeneral((a1 + 4040), "Predict,%.2lf,dt,%.3lf,meas_types,%d", v45, v5, v46);
    if (*(a1 + 4063) >= 0)
    {
      v47 = (a1 + 4040);
    }

    else
    {
      v47 = *(a1 + 4040);
    }

    cnprint::CNPrinter::Print(v142, &v121, "%s", v47);
  }

  v143 = 0xA0000000ALL;
  *v142 = &unk_1F4CE2180;
  v144 = v145;
  *&v142[8] = xmmword_1D0E84630;
  bzero(v145, 0x320uLL);
  if (!sub_1D0BE486C(a1))
  {
    v139 = 0x200000001;
    v138 = xmmword_1D0E84500;
    v137 = &unk_1F4CE2060;
    v140 = &v141;
    v141 = 0xA0000000ALL;
    v134 = 0x100000001;
    *&v51 = 0x100000001;
    *(&v51 + 1) = 0x100000001;
    v133 = v51;
    v132 = &unk_1F4CED2C0;
    v135 = &v136;
    v136 = sub_1D0BEBAAC;
    v121 = v5;
    v128 = *(a2 + 120);
    v129 = *(a2 + 136);
    v130 = *(a2 + 152);
    v131 = *(a2 + 168);
    v127 = *(a2 + 104);
    v123 = *(a2 + 200);
    v124 = *(a2 + 216);
    v125 = *(a2 + 232);
    v126 = *(a2 + 248);
    v122 = *(a2 + 184);
    v118 = 0x100000001;
    v117 = v51;
    v116 = &unk_1F4CED348;
    v119 = &v120;
    v120 = &v121;
    v113 = 0x100000001;
    v112 = v51;
    v111 = &unk_1F4CDF158;
    v114 = &v115;
    v115 = 10;
    v108 = 0x100000001;
    v107 = v51;
    v106 = &unk_1F4CED390;
    v109 = &v110;
    v110 = sub_1D0BEC350;
    v95 = v5;
    v102 = *(a2 + 120);
    v103 = *(a2 + 136);
    v104 = *(a2 + 152);
    v105 = *(a2 + 168);
    v101 = *(a2 + 104);
    v97 = *(a2 + 200);
    v98 = *(a2 + 216);
    v99 = *(a2 + 232);
    v100 = *(a2 + 248);
    v96 = *(a2 + 184);
    v92 = 0x100000001;
    v90 = &unk_1F4CED348;
    v91 = v51;
    v93 = &v94;
    v94 = &v95;
    v89 = v5;
    if ((v4[1] & 1) == 0)
    {
      sub_1D0BF1450(v4, (a1 + 32));
      return 512;
    }

    v77 = sub_1D0BE51B8(v4);
    if (v77)
    {
      v52 = sub_1D0BE4CB8(a1 + 4088, v142, a1 + 14096, a1 + 14488, a1 + 19008, &v137, &v132, &v116, a1 + 21168, a1 + 21560, &v111, &v106, &v90);
      v6 = 10;
    }

    else
    {
      v52 = sub_1D0E15AF0(a1 + 4088);
      v6 = 2;
    }

    v86 = 0;
    v87 = 0;
    v88 = 0;
    sub_1D0BA5D5C(&v86, *(a1 + 6384), *(a1 + 6392), (*(a1 + 6392) - *(a1 + 6384)) >> 5);
    v83 = 0;
    v84 = 0;
    v85 = 0;
    sub_1D0BA5D5C(&v83, *(a1 + 6360), *(a1 + 6368), (*(a1 + 6368) - *(a1 + 6360)) >> 5);
    v80 = 0;
    v81 = 0;
    v82 = 0;
    sub_1D0BA5D5C(&v80, *(a1 + 6408), *(a1 + 6416), (*(a1 + 6416) - *(a1 + 6408)) >> 5);
    v54 = v86;
    v53 = v87;
    v55 = (v87 - v86) >> 5;
    v56 = v83;
    v72 = v84;
    v57 = (v84 - v83) >> 5;
    v74 = (v81 - v80) >> 5;
    if (v77)
    {
      *(a1 + 3216) += v55;
      raven::RavenIonosphereEstimator::AddToAcceptedMeasurementTypeCount(a1, &v86);
      *(a1 + 3224) += v57;
      raven::RavenIonosphereEstimator::AddToRejectedMeasurementTypeCount(a1, &v83);
      *(a1 + 3232) += v74;
      raven::RavenIonosphereEstimator::AddToUnusedMeasurementTypeCount(a1, &v80);
    }

    if (v52 <= 0x16)
    {
      if (((1 << v52) & 0x440408) != 0)
      {
        goto LABEL_102;
      }

      if (((1 << v52) & 0x301) != 0)
      {
        v58 = sub_1D0BAA7A4(a1 + 8384, &v89);
        if (!v77)
        {
          goto LABEL_115;
        }

        if (v53 != v54)
        {
          v59 = 1;
          do
          {
            v58 = sub_1D0BF0650(a1 + 8384);
            v60 = v55 > v59++;
          }

          while (v60);
        }

        if (v72 != v56)
        {
          v61 = 1;
          do
          {
            v58 = sub_1D0C51528(a1 + 8384);
            v60 = v57 > v61++;
          }

          while (v60);
        }

        if (v55 <= v57)
        {
          if (cnprint::CNPrinter::GetLogLevel(v58) > 1)
          {
            goto LABEL_115;
          }

          LOWORD(v78) = 12;
          v79 = 1;
          v71 = cnprint::CNLogFormatter::FormatGeneral(a1 + 4040, v146, "accepted_meas,%zu,rejected_meas,%zu,unused_meas,%zu", v55, v57, v74);
          if (*(a1 + 4063) >= 0)
          {
            v63 = v71;
          }

          else
          {
            v63 = *(a1 + 4040);
          }
        }

        else
        {
          if (cnprint::CNPrinter::GetLogLevel(v58))
          {
            goto LABEL_115;
          }

          LOWORD(v78) = 12;
          v79 = 0;
          v62 = cnprint::CNLogFormatter::FormatGeneral(a1 + 4040, v146, "accepted_meas,%zu,rejected_meas,%zu,unused_meas,%zu", v55, v57, v74);
          if (*(a1 + 4063) >= 0)
          {
            v63 = v62;
          }

          else
          {
            v63 = *(a1 + 4040);
          }
        }

        cnprint::CNPrinter::Print(&v78, &v79, "%s", v63);
LABEL_115:
        *(a1 + 32) = v146[0];
        v78 = 0uLL;
        if (!sub_1D0BF08D4(v4, &v78))
        {
          *(a1 + 48) = v78;
        }

        goto LABEL_117;
      }

      if (((1 << v52) & 0x300000) != 0)
      {
        LOWORD(v78) = 12;
        v79 = 4;
        v64 = cnprint::CNLogFormatter::FormatGeneral(a1 + 4040, v146, "Resetting due to prediction error code %d", v52);
        if (*(a1 + 4063) >= 0)
        {
          v65 = v64;
        }

        else
        {
          v65 = *(a1 + 4040);
        }

        cnprint::CNPrinter::Print(&v78, &v79, "%s", v65);
        v6 |= 6uLL;
LABEL_117:
        sub_1D0BF1450(v4, v146);
        *&v78 = &v80;
        sub_1D0BA5F70(&v78);
        v80 = &v83;
        sub_1D0BA5F70(&v80);
        v83 = &v86;
        sub_1D0BA5F70(&v83);
        return v6;
      }
    }

    v6 |= 1uLL;
LABEL_102:
    LOWORD(v78) = 12;
    v79 = 4;
    v66 = cnprint::CNLogFormatter::FormatGeneral(a1 + 4040, v146, "Unexpected predict and update return code %d", v52);
    if (*(a1 + 4063) >= 0)
    {
      v67 = v66;
    }

    else
    {
      v67 = *(a1 + 4040);
    }

    cnprint::CNPrinter::Print(&v78, &v79, "%s", v67);
    if ((v6 & 8) != 0)
    {
      sub_1D0BF0D88(v4, v146);
      v68 = raven::RavenIonosphereEstimator::PredictAndUpdate(a1, a2);
      v69 = v57 + v55 + v74;
      if (v69)
      {
        v70 = 1;
        do
        {
          sub_1D0C51528(a1 + 8384);
          v60 = v69 > v70++;
        }

        while (v60);
      }

      v6 |= v68 | 0x18;
    }

    goto LABEL_117;
  }

  sub_1D0BF0D88(v4, (a1 + 32));
  *v4 = 0;
  *&v48 = sub_1D0BADC18(v4, (a1 + 32)).n128_u64[0];
  LOWORD(v121) = 12;
  LOBYTE(v95) = 4;
  v49 = cnprint::CNLogFormatter::FormatGeneral((a1 + 4040), "GetProcessNoiseInformationMatrix(),failed", v48);
  if (*(a1 + 4063) >= 0)
  {
    v50 = v49;
  }

  else
  {
    v50 = *(a1 + 4040);
  }

  cnprint::CNPrinter::Print(&v121, &v95, "%s", v50);
  return 256;
}

void sub_1D0BE47DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void ****a18, uint64_t a19, uint64_t a20, void ***a21, uint64_t a22, uint64_t a23, void **a24, uint64_t a25, uint64_t a26, char a27)
{
  a18 = &a21;
  sub_1D0BA5F70(&a18);
  a21 = &a24;
  sub_1D0BA5F70(&a21);
  a24 = &a27;
  sub_1D0BA5F70(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0BE486C(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v6 = v5;
  v7 = v1;
  v8 = 0;
  v9 = (v5 + 104);
  do
  {
    v10 = *&v9[v8];
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
    v12 = ((v10 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
    if (v10 >= 0)
    {
      v12 = 0;
      v11 = 0;
    }

    v13 = v10 & 0x7FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v11 = 1;
    }

    v14 = v13 <= 0x7FF0000000000000;
    v15 = v13 == 0x7FF0000000000000 || v11;
    if (!v14)
    {
      v15 = 1;
    }

    if ((v15 | v12) == 1)
    {
      LOWORD(v61) = 12;
      LOBYTE(v56) = 4;
      v31 = cnprint::CNLogFormatter::FormatGeneral((v1 + 4040), "GetProcessNoiseInformationMatrix,non-positive correlation time constant specified", v2);
      if (*(v7 + 4063) >= 0)
      {
        v32 = v31;
      }

      else
      {
        v32 = *(v7 + 4040);
      }

      cnprint::CNPrinter::Print(&v61, &v56, "%s", v32);
      return 0xFFFFFFFFLL;
    }

    ++v8;
  }

  while (v8 != 10);
  v58 = 0xA0000000ALL;
  v56 = &unk_1F4CE2180;
  v59 = v60;
  v57 = xmmword_1D0E84630;
  bzero(v60, 0x320uLL);
  v16 = *(v6 + 16);
  for (i = 40; i != 920; i += 88)
  {
    v18 = v16 / *v9;
    v19 = exp(-v18);
    v20 = 1.0 - v19 * v19;
    if (v18 <= 0.00000001)
    {
      v20 = v18 + v18;
    }

    *(&v56 + i) = *(v9 - 10) * *(v9 - 10) * v20;
    ++v9;
  }

  v35 = 0xA0000000ALL;
  v33 = &unk_1F4CE2180;
  v34 = xmmword_1D0E84630;
  v36 = &v37;
  LOBYTE(v61) = 0;
  sub_1D0B9F748(&v56, &v33, &v61);
  v40 = 0xA0000000ALL;
  v38 = &unk_1F4CE2180;
  v39 = xmmword_1D0E84630;
  v41 = &v42;
  v53 = 0x10000000ALL;
  v52 = xmmword_1D0E87BE0;
  v51 = &unk_1F4CED1E8;
  v54 = v55;
  v63 = 0x100000028;
  v62 = xmmword_1D0EA1280;
  v61 = &unk_1F4CED230;
  v64 = v65;
  sub_1D0B9F868(&v33, &v51, &v61, &v38);
  v21 = DWORD1(v39);
  v22 = v39;
  v48 = 0xA0000000ALL;
  v43 = &unk_1F4CE2180;
  v49 = v50;
  v44 = DWORD1(v39);
  v45 = v39;
  v46 = v39 * DWORD1(v39);
  v47 = DWORD1(v39);
  if (DWORD1(v39))
  {
    v23 = 0;
    v24 = 0;
    v25 = HIDWORD(v39);
    v26 = v41;
    do
    {
      v27 = v23;
      v28 = v24;
      for (j = v22; j; --j)
      {
        v50[v28] = v26[v27];
        v28 += v21;
        ++v27;
      }

      ++v24;
      v23 += v25;
    }

    while (v24 != v21);
  }

  v68 = 0x10000000ALL;
  v66 = &unk_1F4CEAE48;
  v67 = xmmword_1D0E87BE0;
  v69 = &v70;
  v63 = 0xA0000000ALL;
  v62 = xmmword_1D0E84630;
  v61 = &unk_1F4CE2180;
  v64 = v65;
  v53 = 0xA0000000ALL;
  v52 = xmmword_1D0E84630;
  v51 = &unk_1F4CE2180;
  v54 = v55;
  sub_1D0B9FACC(&v43, &v66, &v61, &v51);
  sub_1D0B894B0(v4, &v51);
  return 0;
}

uint64_t sub_1D0BE4CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v101 = 0x10000000ALL;
  v99 = &unk_1F4CEAE48;
  v100 = xmmword_1D0E87BE0;
  v102 = &v103;
  v96 = 0xA0000000ALL;
  v95 = xmmword_1D0E84630;
  v94 = &unk_1F4CE2180;
  v97 = &v98;
  v91 = 0x10000000ALL;
  v21 = *(a1 + 2180) == 0;
  v90 = xmmword_1D0E87BE0;
  v89 = &unk_1F4CEAE48;
  v92 = &v93;
  v22 = 8;
  if (v21)
  {
    v23 = 128;
  }

  else
  {
    v22 = 1088;
    v23 = 1208;
  }

  if (v21)
  {
    v24 = 968;
  }

  else
  {
    v24 = 2048;
  }

  sub_1D0B894B0(&v99, a1 + v22);
  sub_1D0B894B0(&v94, a1 + v23);
  sub_1D0B894B0(&v89, a1 + v24);
  if (v100 <= DWORD1(v100))
  {
    v25 = DWORD1(v100);
  }

  else
  {
    v25 = v100;
  }

  if (DWORD1(v100))
  {
    v26 = v100 == 0;
  }

  else
  {
    v26 = 1;
  }

  if (v26)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  v28 = *(a2 + 8);
  if ((v28 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  v29 = a9;
  v86 = 0x10000000ALL;
  v81 = &unk_1F4CEAE48;
  v87 = v88;
  v82 = v28;
  v83 = 1;
  v84 = v28;
  v85 = v28;
  v64 = a7;
  v63 = a8;
  v61 = v27;
  if (v28 > 3)
  {
    v30 = &v88[v28];
    bzero(v88, 16 * ((v28 - 1) >> 1));
    *(v30 - 2) = 0;
    *(v30 - 1) = 0;
    v29 = a9;
  }

  else if (v28)
  {
    bzero(v88, 8 * v28);
  }

  v62 = v28;
  v31 = *(v29 + 8);
  v32 = *(v29 + 12);
  v60 = v29;
  if (v31 <= v32)
  {
    v33 = *(v29 + 12);
  }

  else
  {
    v33 = *(v29 + 8);
  }

  if (v32)
  {
    v34 = v31 == 0;
  }

  else
  {
    v34 = 1;
  }

  if (v34)
  {
    v35 = 0;
  }

  else
  {
    v35 = v33;
  }

  sub_1D0BE5350(v79, v35);
  v65 = a2;
  if (v35 < 1)
  {
    sub_1D0BE5350(v77, v35);
    sub_1D0BE5400(v73, v35, v47);
  }

  else
  {
    v36 = 0;
    v37 = 0;
    do
    {
      sub_1D0BE520C(v73, *(a4 + 32) + v37);
      if (v74 <= v75)
      {
        v38 = v75;
      }

      else
      {
        v38 = v74;
      }

      if (v75)
      {
        v39 = v74 == 0;
      }

      else
      {
        v39 = 1;
      }

      if (v39)
      {
        v40 = 0;
      }

      else
      {
        v40 = v38;
      }

      *(v80 + v36) = v40;
      v37 += 48;
      v36 += 4;
    }

    while (48 * v35 != v37);
    sub_1D0BE5350(v77, v35);
    sub_1D0BE5400(v73, v35, v41);
    v42 = 0;
    v43 = 0;
    do
    {
      sub_1D0BE520C(&v66, *(a5 + 32) + v42);
      v44 = v78;
      *(v78 + v43) = v67;
      v45 = *(v44 + v43);
      if ((v45 & 0x80000000) != 0)
      {
        __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
      }

      v71[0] = 0x100000001;
      v66 = &unk_1F4CDF418;
      v71[1] = &v72;
      v67 = v45;
      v68 = 1;
      v69 = v45;
      v70 = v45;
      if (v45 > 3)
      {
        bzero(&v72, 16 * ((v45 - 1) >> 1));
        v46 = &v71[v45];
        *v46 = 0;
        v46[1] = 0;
      }

      else if (v45)
      {
        bzero(&v72, 8 * v45);
      }

      sub_1D0B894B0(v76 + v42, &v66);
      v43 += 4;
      v42 += 48;
    }

    while (4 * v35 != v43);
  }

  v48 = *(v64 + 8);
  v49 = *(v64 + 12);
  if (v48 <= v49)
  {
    v50 = *(v64 + 12);
  }

  else
  {
    v50 = *(v64 + 8);
  }

  if (v49)
  {
    v51 = v48 == 0;
  }

  else
  {
    v51 = 1;
  }

  if (v51)
  {
    v52 = 0;
  }

  else
  {
    v52 = v50;
  }

  v53 = *(a12 + 8);
  v54 = *(a12 + 12);
  if (v53 <= v54)
  {
    v55 = *(a12 + 12);
  }

  else
  {
    v55 = *(a12 + 8);
  }

  if (v54)
  {
    v56 = v53 == 0;
  }

  else
  {
    v56 = 1;
  }

  if (v56)
  {
    v57 = 0;
  }

  else
  {
    v57 = v55;
  }

  result = sub_1D0BE555C(a1, v61, &v99, &v94, &v89, v62, &v81, v65, v79, a3, a4, v77, v73, a5, v52, a6, v64, v63, v35, v60, a10, v57, a11, a12, a13, a1 + 4192);
  for (i = 2104; i != -8; i -= 48)
  {
    *&v73[i] = &unk_1F4CD5E28;
  }

  return result;
}

void sub_1D0BE5178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  for (i = 2104; i != -8; i -= 48)
  {
    *(&a43 + i) = &unk_1F4CD5E28;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0BE51B8(uint64_t a1)
{
  if (*(a1 + 1))
  {
    return *(a1 + 12704);
  }

  v6 = v1;
  v7 = v2;
  v5 = 2;
  v4 = 2;
  cnprint::CNPrinter::Print(&v5, &v4, "WARNING: MeasurementAccumulator.NumberLocked() called on unlocked accumulator.");
  return 0;
}

__n128 sub_1D0BE520C(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000001;
  *(a1 + 24) = 0x100000001;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CDF418;
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

  if (v3 >= 2)
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

uint64_t sub_1D0BE5350(uint64_t result, int a2)
{
  *(result + 24) = 0x10000002CLL;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CECE00;
  if (a2 < 0)
  {
    __assert_rtn("CNMatrix", "cnmatrix.h", 419, "nr >= 0");
  }

  *(result + 8) = a2;
  *(result + 12) = 1;
  *(result + 16) = a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

uint64_t sub_1D0BE5400(uint64_t a1, int a2, __n128 a3)
{
  v4 = 0;
  *(a1 + 24) = 0x10000002CLL;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CECD78;
  a3.n128_u64[0] = 0x100000001;
  *&v5 = 0x100000001;
  *(&v5 + 1) = 0x100000001;
  do
  {
    v6 = a1 + v4;
    *(v6 + 64) = 0x100000001;
    *(v6 + 40) = &unk_1F4CDF418;
    *(v6 + 48) = v5;
    *(v6 + 72) = a1 + v4 + 80;
    v4 += 48;
  }

  while (v4 != 2112);
  if (a2 < 0)
  {
    __assert_rtn("CNMatrix", "cnmatrix.h", 419, "nr >= 0");
  }

  *(a1 + 8) = a2;
  *(a1 + 12) = 1;
  *(a1 + 16) = a2;
  *(a1 + 20) = a2;
  (*(*a1 + 16))(a1, a3);
  return a1;
}

void sub_1D0BE5500(_Unwind_Exception *a1)
{
  for (i = 263; i != -1; i -= 6)
  {
    v1[i] = &unk_1F4CD5E28;
  }

  *v1 = &unk_1F4CECDD0;
  _Unwind_Resume(a1);
}

uint64_t sub_1D0BE555C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  MEMORY[0x1EEE9AC00](a1);
  v240 = v27;
  v241 = v26;
  v251 = v28;
  v30 = v29;
  v252 = v31;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  if (a19 >= 1)
  {
    v38 = 0;
    do
    {
      sub_1D0BE520C(&v350, *(a11 + 32) + v38);
      v38 += 48;
    }

    while (48 * a19 != v38);
    v39 = 0;
    do
    {
      sub_1D0BE520C(&v350, *(a13 + 32) + v39);
      sub_1D0BE520C(&v350, *(a14 + 32) + v39);
      sub_1D0BE520C(&v350, *(a14 + 32) + v39);
      v39 += 48;
    }

    while (48 * a19 != v39);
  }

  sub_1D0BEB970(&__p, a16, 0);
  HIDWORD(v351.__r_.__value_.__r.__words[2]) = 1;
  v352 = v353;
  v40 = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  LODWORD(v351.__r_.__value_.__l.__data_) = 1;
  HIDWORD(v351.__r_.__value_.__r.__words[0]) = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  LODWORD(v351.__r_.__value_.__r.__words[1]) = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  *(&v351.__r_.__value_.__r.__words[1] + 4) = 0x100000001;
  if (HIDWORD(__p.__r_.__value_.__r.__words[1]))
  {
    v41 = 0;
    v42 = v348;
    v43 = __p.__r_.__value_.__r.__words[1];
    v44 = LODWORD(__p.__r_.__value_.__r.__words[1]) - 1;
    v45 = 1;
    do
    {
      v46 = v42[v43 * v41];
      v47 = v45;
      v48 = v44;
      if (v43 >= 2)
      {
        do
        {
          v46 += v42[v47++];
          --v48;
        }

        while (v48);
      }

      v353[v41++] = v46;
      v45 += v43;
    }

    while (v41 != v40);
  }

  sub_1D0BEB970(&__p, a16, 1);
  HIDWORD(v351.__r_.__value_.__r.__words[2]) = 1;
  v352 = v353;
  v49 = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  LODWORD(v351.__r_.__value_.__l.__data_) = 1;
  HIDWORD(v351.__r_.__value_.__r.__words[0]) = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  LODWORD(v351.__r_.__value_.__r.__words[1]) = HIDWORD(__p.__r_.__value_.__r.__words[1]);
  *(&v351.__r_.__value_.__r.__words[1] + 4) = 0x100000001;
  if (HIDWORD(__p.__r_.__value_.__r.__words[1]))
  {
    v50 = 0;
    v51 = v348;
    v52 = __p.__r_.__value_.__r.__words[1];
    v53 = LODWORD(__p.__r_.__value_.__r.__words[1]) - 1;
    v54 = 1;
    do
    {
      v55 = v51[v52 * v50];
      v56 = v54;
      v57 = v53;
      if (v52 >= 2)
      {
        do
        {
          v55 += v51[v56++];
          --v57;
        }

        while (v57);
      }

      v353[v50++] = v55;
      v54 += v52;
    }

    while (v50 != v49);
  }

  v253 = v35;
  v249 = v30;
  v250 = v37;
  v351.__r_.__value_.__r.__words[2] = 0x100000001;
  *&v58 = 0x100000001;
  *(&v58 + 1) = 0x100000001;
  *&v351.__r_.__value_.__l.__data_ = v58;
  v350 = &unk_1F4CDF158;
  v352 = v353;
  LogLevel = sub_1D0BBCB88(a23, 1, &v350);
  v247 = *(a26 + 64);
  v242 = *(a26 + 32);
  v239 = *(a26 + 33);
  if (a19 >= 1)
  {
    v60 = 0;
    do
    {
      v61 = *(*(a9 + 32) + 4 * v60);
      v62 = *(*(a12 + 32) + 4 * v60);
      if (v61 <= v62)
      {
        ++v60;
      }

      else
      {
        LOWORD(v350) = 2;
        __p.__r_.__value_.__s.__data_[0] = 2;
        cnprint::CNLogFormatter::FormatWarning((v37 + 2344), "%d measurements > %d noise sources in measurement function %d.", v61, v62, ++v60);
        if (*(v37 + 2367) >= 0)
        {
          v63 = (v37 + 2344);
        }

        else
        {
          v63 = *(v37 + 2344);
        }

        cnprint::CNPrinter::Print(&v350, &__p, "%s", v63);
      }
    }

    while (v60 != a19);
  }

  if (*a26)
  {
    LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
    if (LogLevel <= 1)
    {
      LOWORD(v350) = 2;
      __p.__r_.__value_.__s.__data_[0] = 1;
      v64 = cnprint::CNLogFormatter::FormatWarning((v37 + 2344), "PredictAndUpdate is only compatible with NewtonRaphson solver.");
      if (*(v37 + 2367) >= 0)
      {
        v65 = v64;
      }

      else
      {
        v65 = *(v37 + 2344);
      }

      cnprint::CNPrinter::Print(&v350, &__p, "%s", v65);
    }
  }

  if (*(a26 + 4) >= 2 && cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
  {
    LOWORD(v350) = 2;
    __p.__r_.__value_.__s.__data_[0] = 1;
    v66 = cnprint::CNLogFormatter::FormatWarning((v37 + 2344), "PredictAndUpdate is only compatible with single-iteration least squares solutions.");
    if (*(v37 + 2367) >= 0)
    {
      v67 = v66;
    }

    else
    {
      v67 = *(v37 + 2344);
    }

    cnprint::CNPrinter::Print(&v350, &__p, "%s", v67);
  }

  v68 = *(a26 + 8);
  v351.__r_.__value_.__r.__words[2] = 0x10000002CLL;
  *&v351.__r_.__value_.__l.__data_ = xmmword_1D0EA1270;
  v350 = &unk_1F4CECE00;
  v352 = v353;
  v69 = sub_1D0BBCB88(a9, 1, &v350);
  v70 = v35;
  if (v68 < *v352)
  {
    v69 = cnprint::CNPrinter::GetLogLevel(v69);
    if (v69 <= 1)
    {
      LOWORD(v350) = 2;
      __p.__r_.__value_.__s.__data_[0] = 1;
      v71 = cnprint::CNLogFormatter::FormatWarning((v37 + 2344), "PredictAndUpdate is only compatible with QR factorizations of unconstrained size.");
      if (*(v37 + 2367) >= 0)
      {
        v72 = v71;
      }

      else
      {
        v72 = *(v37 + 2344);
      }

      cnprint::CNPrinter::Print(&v350, &__p, "%s", v72);
    }
  }

  v73 = v30;
  if (*(a26 + 89) == 1)
  {
    v69 = cnprint::CNPrinter::GetLogLevel(v69);
    if (v69 <= 1)
    {
      LOWORD(v350) = 2;
      __p.__r_.__value_.__s.__data_[0] = 1;
      v74 = cnprint::CNLogFormatter::FormatWarning((v37 + 2344), "PredictAndUpdate is only compatible with dense prediction.");
      if (*(v37 + 2367) >= 0)
      {
        v75 = v74;
      }

      else
      {
        v75 = *(v37 + 2344);
      }

      cnprint::CNPrinter::Print(&v350, &__p, "%s", v75);
    }
  }

  if ((v242 & 1) == 0 && v239 && cnprint::CNPrinter::GetLogLevel(v69) <= 1)
  {
    LOWORD(v350) = 2;
    __p.__r_.__value_.__s.__data_[0] = 1;
    v76 = cnprint::CNLogFormatter::FormatWarning((v37 + 2344), "Local hypothesis testing implies global hypothesis testing.  Global hypothesis testing will be enabled.");
    if (*(v37 + 2367) >= 0)
    {
      v77 = v76;
    }

    else
    {
      v77 = *(v37 + 2344);
    }

    cnprint::CNPrinter::Print(&v350, &__p, "%s", v77);
  }

  if (*(v33 + 8) && *(v33 + 12))
  {
    v78 = v37 + 8;
    v79 = v33;
  }

  else
  {
    if ((v253 & 0x80000000) != 0)
    {
      __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
    }

    v351.__r_.__value_.__r.__words[2] = 0x10000000ALL;
    v350 = &unk_1F4CEAE48;
    v352 = v353;
    v351.__r_.__value_.__r.__words[0] = v253 | 0x100000000;
    LODWORD(v351.__r_.__value_.__r.__words[1]) = v253;
    HIDWORD(v351.__r_.__value_.__r.__words[1]) = v253;
    if (v253 > 3)
    {
      v80 = &v353[2 * v253];
      bzero(v353, 16 * ((v253 - 1) >> 1));
      *(v80 - 2) = 0;
      *(v80 - 1) = 0;
    }

    else if (v253)
    {
      bzero(v353, 8 * v253);
    }

    v78 = v37 + 8;
    v79 = &v350;
  }

  sub_1D0B894B0(v78, v79);
  if (*(v241 + 8) && *(v241 + 12))
  {
    v81 = v37 + 128;
    v82 = v241;
  }

  else
  {
    if ((v253 & 0x80000000) != 0)
    {
      __assert_rtn("Zeros", "cnmatrix.h", 3056, "n >= 0");
    }

    v351.__r_.__value_.__r.__words[2] = 0xA0000000ALL;
    v350 = &unk_1F4CE2180;
    v352 = v353;
    v83 = v253 * v253;
    LODWORD(v351.__r_.__value_.__l.__data_) = v253;
    HIDWORD(v351.__r_.__value_.__r.__words[0]) = v253;
    LODWORD(v351.__r_.__value_.__r.__words[1]) = v253 * v253;
    HIDWORD(v351.__r_.__value_.__r.__words[1]) = v253;
    if ((v253 * v253) > 3)
    {
      v84 = &v353[2 * v83];
      bzero(v353, 16 * ((v83 - 1) >> 1));
      *(v84 - 2) = 0;
      *(v84 - 1) = 0;
    }

    else if (v83 >= 1)
    {
      bzero(v353, 8 * v253 * v253);
    }

    v81 = v37 + 128;
    v82 = &v350;
  }

  sub_1D0B894B0(v81, v82);
  if (!*(v252 + 8) || !*(v252 + 12))
  {
    v351.__r_.__value_.__r.__words[2] = 0x10000000ALL;
    *&v351.__r_.__value_.__l.__data_ = xmmword_1D0E87BE0;
    v350 = &unk_1F4CEAE48;
    v352 = v353;
    sub_1D0B89390(v37 + 128, v37 + 8, &v350);
    sub_1D0B894B0(v37 + 968, &v350);
  }

  if ((v253 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3099, "nc >= 0");
  }

  v351.__r_.__value_.__r.__words[2] = 0xA0000000ALL;
  v350 = &unk_1F4CE2180;
  v352 = v353;
  v85 = v30 * v253;
  v351.__r_.__value_.__r.__words[0] = __PAIR64__(v253, v30);
  LODWORD(v351.__r_.__value_.__r.__words[1]) = v30 * v253;
  HIDWORD(v351.__r_.__value_.__r.__words[1]) = v30;
  if ((v30 * v253) > 3)
  {
    v86 = &v353[2 * v85];
    bzero(v353, 16 * ((v85 - 1) >> 1));
    *(v86 - 2) = 0;
    *(v86 - 1) = 0;
  }

  else if (v85 >= 1)
  {
    bzero(v353, 8 * v30 * v253);
  }

  sub_1D0B894B0(v37 + 2392, &v350);
  v351.__r_.__value_.__r.__words[2] = 0x10000000ALL;
  v350 = &unk_1F4CEAE48;
  v352 = v353;
  v351.__r_.__value_.__r.__words[0] = v30 | 0x100000000;
  LODWORD(v351.__r_.__value_.__r.__words[1]) = v30;
  HIDWORD(v351.__r_.__value_.__r.__words[1]) = v30;
  if (v30 > 3)
  {
    v87 = &v353[2 * v30];
    bzero(v353, 16 * ((v30 - 1) >> 1));
    *(v87 - 2) = 0;
    *(v87 - 1) = 0;
  }

  else if (v30)
  {
    bzero(v353, 8 * v30);
  }

  sub_1D0B894B0(v37 + 3232, &v350);
  sub_1D0B894B0(v37 + 3352, v240);
  *(v37 + 2180) = 0;
  *(v37 + 2176) = 0;
  v351.__r_.__value_.__r.__words[2] = 0x10000002CLL;
  *&v351.__r_.__value_.__l.__data_ = xmmword_1D0EA1270;
  v350 = &unk_1F4CECE00;
  v352 = v353;
  sub_1D0BBCB88(a9, 1, &v350);
  v88 = *v352;
  if (*v352 < 0x2D)
  {
    v238 = *v352;
    v93 = *(a21 + 8);
    v92 = *(a21 + 12);
    if (v93 <= v92)
    {
      v94 = *(a21 + 12);
    }

    else
    {
      v94 = *(a21 + 8);
    }

    if (v93 && v92 && v94)
    {
      v96 = *(a9 + 8);
      v95 = *(a9 + 12);
      v97 = v96 <= v95 ? *(a9 + 12) : *(a9 + 8);
      if (!v96 || !v95 || v97 <= v94)
      {
        v351.__r_.__value_.__r.__words[2] = 0x10000002CLL;
        *&v351.__r_.__value_.__l.__data_ = xmmword_1D0EA1270;
        v350 = &unk_1F4CECE00;
        v352 = v353;
        sub_1D0BBCB88(a9, 1, &v350);
        sub_1D0BA196C((v37 + 2320));
        v217 = *(a9 + 8);
        if (v217)
        {
          v218 = *(a9 + 12);
          if (v218)
          {
            if (v218 | v217)
            {
              v219 = 0;
              v220 = *(a9 + 32);
              do
              {
                v221 = v219;
                if (*(v220 + 4 * v219) >= 1)
                {
                  v222 = 0;
                  do
                  {
                    v223 = *(*(a21 + 32) + 8 * v221);
                    LODWORD(v350) = *(v223 + 8);
                    if (*(v223 + 39) < 0)
                    {
                      sub_1D0BC39B4(&v351, *(v223 + 16), *(v223 + 24));
                      v220 = *(a9 + 32);
                    }

                    else
                    {
                      v224 = *(v223 + 16);
                      v351.__r_.__value_.__r.__words[2] = *(v223 + 32);
                      *&v351.__r_.__value_.__l.__data_ = v224;
                    }

                    if (*(v220 + 4 * v221) >= 2)
                    {
                      std::to_string(&__p, v222);
                      v225 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
                      v226 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
                      std::string::append(&v351, v225, v226);
                      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__p.__r_.__value_.__l.__data_);
                      }
                    }

                    sub_1D0BBCC94(v250 + 2320, &v350);
                    if (SHIBYTE(v351.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v351.__r_.__value_.__l.__data_);
                    }

                    ++v222;
                    v220 = *(a9 + 32);
                  }

                  while (v222 < *(v220 + 4 * v221));
                  v217 = *(a9 + 8);
                  v218 = *(a9 + 12);
                  v73 = v30;
                }

                if (v217 <= v218)
                {
                  v227 = v218;
                }

                else
                {
                  v227 = v217;
                }

                if (!v217)
                {
                  break;
                }

                if (!v218)
                {
                  break;
                }

                v219 = v221 + 1;
              }

              while (v227 > v221 + 1);
            }
          }
        }
      }
    }

    sub_1D0BA196C((v250 + 2296));
    sub_1D0BA196C((v250 + 2272));
    sub_1D0B94CA4(v414, v33);
    sub_1D0B94CA4(&v413, v252);
    sub_1D0B94CA4(v412, v251);
    v409 = 0x10000000ALL;
    v405 = v253;
    v406 = 1;
    v407 = v253;
    v408 = v253;
    v404 = &unk_1F4CEAE48;
    v410 = &v411;
    v401 = 0xA0000000ALL;
    v98 = v253 * v253;
    v396 = &unk_1F4CE2180;
    v402 = v403;
    v397 = v253;
    v398 = v253;
    v399 = v253 * v253;
    v400 = v253;
    if ((v253 * v253) > 3)
    {
      v99 = &v403[v98];
      bzero(v403, 16 * ((v98 - 1) >> 1));
      *(v99 - 2) = 0;
      *(v99 - 1) = 0;
    }

    else if (v98 >= 1)
    {
      bzero(v403, 8 * v253 * v253);
    }

    v393 = 0xA0000000ALL;
    v388 = &unk_1F4CE2180;
    v394 = v395;
    v389 = v253;
    v390 = v253;
    v391 = v253 * v253;
    v392 = v253;
    if (v98 > 3)
    {
      v100 = &v395[v98];
      bzero(v395, 16 * ((v98 - 1) >> 1));
      *(v100 - 2) = 0;
      *(v100 - 1) = 0;
    }

    else if (v98 >= 1)
    {
      bzero(v395, 8 * v253 * v253);
    }

    v385 = 0xA0000000ALL;
    v380 = &unk_1F4CE2180;
    v386 = v387;
    v381 = v253;
    v382 = v73;
    v383 = v85;
    v384 = v253;
    if (v85 > 3)
    {
      v101 = &v387[v85];
      bzero(v387, 16 * ((v85 - 1) >> 1));
      *(v101 - 2) = 0;
      *(v101 - 1) = 0;
    }

    else if (v85 >= 1)
    {
      bzero(v387, 8 * v85);
    }

    v377 = 0x10000000ALL;
    v376 = xmmword_1D0E87BE0;
    v375 = &unk_1F4CED1E8;
    v378 = &v379;
    v372 = 0x10000000ALL;
    v371 = xmmword_1D0E87BE0;
    v370 = &unk_1F4CED1E8;
    v373 = &v374;
    v102 = 1.0;
    v103 = 1.0;
    if (a15 < 1)
    {
LABEL_168:
      v367 = 0x10000002CLL;
      v150 = v238;
      v363 = v238;
      v364 = 1;
      v365 = v238;
      v366 = v238;
      v362 = &unk_1F4CECE48;
      v368 = &v369;
      v359 = 0x10000002CLL;
      v355 = v238;
      v356 = 1;
      v357 = v238;
      v358 = v238;
      v354 = &unk_1F4CECE48;
      v360 = &v361;
      v351.__r_.__value_.__r.__words[2] = 0xA0000002CLL;
      v351.__r_.__value_.__r.__words[0] = __PAIR64__(v70, v238);
      LODWORD(v351.__r_.__value_.__r.__words[1]) = v238 * v70;
      HIDWORD(v351.__r_.__value_.__r.__words[1]) = v238;
      v350 = &unk_1F4CED4F0;
      v352 = v353;
      v347 = 0xA0000002CLL;
      __p.__r_.__value_.__r.__words[0] = &unk_1F4CED4F0;
      __p.__r_.__value_.__l.__size_ = __PAIR64__(v73, v238);
      LODWORD(__p.__r_.__value_.__r.__words[2]) = v238 * v73;
      HIDWORD(__p.__r_.__value_.__r.__words[2]) = v238;
      v348 = v349;
      if (a19 < 1)
      {
LABEL_236:
        v332 = 0x1400000040;
        v327 = &unk_1F4CED5C8;
        v334 = 0;
        v333 = 0;
        v328 = v150 + v249 + v70;
        v329 = v249 + v70;
        v330 = v328 * (v249 + v70);
        v331 = v328;
        sub_1D0BEDEDC(&v327);
      }

      v151 = 0;
      v245 = 0;
      v236 = &v326[v70];
      v232 = 8 * v70;
      v237 = 8 * v98;
      v234 = &v258[v237];
      v235 = &v297[v237 / 8];
      v233 = 16 * ((v70 - 1) >> 1);
      v244 = 16 * ((v98 - 1) >> 1);
      v246 = vdupq_n_s64(4uLL);
      while (1)
      {
        v324 = 0x10000000ALL;
        v319 = &unk_1F4CEAE48;
        v325 = v326;
        v320 = v70;
        v321 = 1;
        v322 = v70;
        v323 = v70;
        if (v70 >= 4)
        {
          bzero(v326, v233);
          *(v236 - 2) = 0;
          *(v236 - 1) = 0;
        }

        else if (v70)
        {
          bzero(v326, v232);
        }

        v295 = 0xA0000000ALL;
        v293 = &unk_1F4CE2180;
        v296 = v297;
        LODWORD(v294) = v253;
        *(&v294 + 4) = __PAIR64__(v98, v253);
        HIDWORD(v294) = v253;
        if (v98 >= 4)
        {
          bzero(v297, v244);
          *(v235 - 2) = 0;
          *(v235 - 1) = 0;
        }

        else if (v98 >= 1)
        {
          bzero(v297, v237);
        }

        v256 = 0xA0000000ALL;
        v254 = &unk_1F4CE2180;
        v257 = v258;
        LODWORD(v255) = v253;
        *(&v255 + 4) = __PAIR64__(v98, v253);
        HIDWORD(v255) = v253;
        if (v98 >= 4)
        {
          bzero(v258, v244);
          *(v234 - 2) = 0;
          *(v234 - 1) = 0;
        }

        else if (v98 >= 1)
        {
          bzero(v258, v237);
        }

        *&v152 = 0x100000001;
        *(&v152 + 1) = 0x100000001;
        v153 = v246;
        if (a22 >= 1)
        {
          break;
        }

LABEL_205:
        v305 = 0x100000001;
        v304 = v152;
        v303 = &unk_1F4CDF418;
        v306 = &v307;
        v337 = 0xA00000001;
        v336 = xmmword_1D0EA12E0;
        v335 = &unk_1F4CED1A0;
        v338 = v339;
        v300 = 0x100000001;
        v299 = v152;
        v298 = &unk_1F4CDF418;
        v301 = &v302;
        v173 = *(*(a20 + 32) + 8 * v151);
        v174 = sub_1D0BE520C(&v313, *(a13 + 32) + 48 * v151);
        if (v173(&v319, &v313, *(*(a21 + 32) + 8 * v151), &v303, &v335, &v298, v174))
        {
          return 3;
        }

        v342 = 0xA0000000ALL;
        v341 = xmmword_1D0E84630;
        v340 = &unk_1F4CE2180;
        v343 = &v344;
        sub_1D0B89390(&v254, &v396, &v340);
        v315 = 0xA0000000ALL;
        v314 = xmmword_1D0E84630;
        v313 = &unk_1F4CE2180;
        v316 = &v317;
        sub_1D0B88838(&v293, &v340, &v313);
        v272 = 0xA00000001;
        v271 = xmmword_1D0EA12E0;
        v270 = &unk_1F4CED1A0;
        v273 = &v274;
        sub_1D0B89390(&v335, &v313, &v270);
        v315 = 0xA0000000ALL;
        v314 = xmmword_1D0E84630;
        v313 = &unk_1F4CE2180;
        v316 = &v317;
        sub_1D0B89390(&v254, &v380, &v313);
        v342 = 0xA00000001;
        v341 = xmmword_1D0EA12E0;
        v340 = &unk_1F4CED1A0;
        v343 = &v344;
        sub_1D0B89390(&v335, &v313, &v340);
        v175 = v245 + *(*(a9 + 32) + 4 * v151) - 1;
        v315 = 0x100000001;
        v313 = &unk_1F4CDF158;
        v316 = &v317;
        v176 = (v175 - v245);
        *&v177 = 0x100000001;
        *(&v177 + 1) = 0x100000001;
        if (v175 == v245)
        {
          v178 = 0;
          v314 = v177;
          LODWORD(v317) = v245;
          v179 = 1;
          v180 = 1;
        }

        else if (v175 - v245 < 0)
        {
          v179 = 0;
          v180 = 0;
          v314 = 0uLL;
          v178 = 1;
        }

        else
        {
          v180 = v176 + 1;
          LODWORD(v314) = 1;
          DWORD1(v314) = v176 + 1;
          DWORD2(v314) = v176 + 1;
          HIDWORD(v314) = 1;
          v181 = (4 * ~(v176 >> 2)) | 0xFFFFFFFF80000000;
          v182 = vdupq_n_s64(v176);
          v183 = v318;
          v184 = 13;
          v185 = xmmword_1D0E7DD30;
          v186 = xmmword_1D0E84440;
          do
          {
            v187 = vmovn_s64(vcgeq_u64(v182, v185));
            if (vuzp1_s16(v187, *v182.i8).u8[0])
            {
              *(v183 - 3) = v245 + v184 - 13;
            }

            if (vuzp1_s16(v187, *&v182).i8[2])
            {
              *(v183 - 2) = v245 + v184 - 12;
            }

            if (vuzp1_s16(*&v182, vmovn_s64(vcgeq_u64(v182, *&v186))).i32[1])
            {
              *(v183 - 1) = v245 + v184 - 11;
              *v183 = v245 + v184 - 10;
            }

            v188 = vdupq_n_s64(4uLL);
            v186 = vaddq_s64(v186, v188);
            v185 = vaddq_s64(v185, v188);
            v184 += 4;
            v183 += 4;
          }

          while (v181 + v184 != 13);
          v178 = 0;
          v179 = 1;
        }

        v290 = 0x100000001;
        v285 = &unk_1F4CDF158;
        v291 = v292;
        v286 = v180;
        v287 = v179;
        v288 = v180 * v179;
        v289 = v180;
        if (v180)
        {
          v189 = 0;
          for (i = 0; i != v180; ++i)
          {
            if ((v178 & 1) == 0)
            {
              v191 = 0;
              do
              {
                v292[i + v289 * v191] = *&v318[4 * v189 - 4 + 4 * v191];
                ++v191;
              }

              while (v179 != v191);
            }

            v189 += v179;
          }
        }

        sub_1D0BE520C(&v259, *(a14 + 32) + 48 * v151);
        v262 = 0x100000001;
        *&v192 = 0x100000001;
        *(&v192 + 1) = 0x100000001;
        v261 = v192;
        v260 = &unk_1F4CDF418;
        v263 = &v264;
        sub_1D0B89390(&v298, &v259, &v260);
        v193 = DWORD1(v299);
        v194 = v299;
        v332 = 0x100000001;
        v327 = &unk_1F4CDF418;
        v333 = &v334;
        v328 = DWORD1(v299);
        v329 = v299;
        v330 = v299 * DWORD1(v299);
        v331 = DWORD1(v299);
        *&v195 = 0x100000001;
        *(&v195 + 1) = 0x100000001;
        if (DWORD1(v299))
        {
          v196 = 0;
          v197 = 0;
          v198 = HIDWORD(v299);
          v199 = v301;
          do
          {
            v200 = v196;
            v201 = v197;
            for (j = v194; j; --j)
            {
              *(&v334 + v201) = v199[v200];
              v201 += v193;
              ++v200;
            }

            ++v197;
            v196 += v198;
          }

          while (v197 != v193);
        }

        v267 = 0x100000001;
        v266 = v195;
        v265 = &unk_1F4CDF418;
        v268 = &v269;
        sub_1D0B89390(&v260, &v327, &v265);
        v282 = 0x100000001;
        *&v203 = 0x100000001;
        *(&v203 + 1) = 0x100000001;
        v281 = v203;
        v280 = &unk_1F4CDF418;
        v283 = &v284;
        LOBYTE(v313) = 0;
        sub_1D0B9F748(&v265, &v280, &v313);
        v277 = 0x100000001;
        *&v204 = 0x100000001;
        *(&v204 + 1) = 0x100000001;
        v276 = v204;
        v275 = &unk_1F4CDF418;
        v278 = &v279;
        v310 = 0x100000001;
        v309 = v204;
        v308 = &unk_1F4CDF158;
        v311 = v312;
        v315 = 0x100000004;
        v314 = xmmword_1D0E7DCE0;
        v313 = &unk_1F4CDEBB8;
        v316 = &v317;
        sub_1D0B9F868(&v280, &v308, &v313, &v275);
        v310 = 0x200000002;
        v309 = xmmword_1D0E83F70;
        v308 = &unk_1F4CE0268;
        v311 = v312;
        sub_1D0BED87C(&v275, 0, &v308);
        v205 = DWORD1(v309);
        v98 = v253 * v253;
        v150 = v238;
        if (DWORD1(v309))
        {
          v206 = 0;
          v207 = v309;
          v208 = v311;
          v209 = v309 - 1;
          v210 = 1;
          do
          {
            v211 = v208[v207 * v206];
            v212 = v210;
            v213 = v209;
            if (v207 >= 2)
            {
              do
              {
                v211 = v211 * v208[v212++];
                --v213;
              }

              while (v213);
            }

            *&v318[8 * v206++ - 4] = v211;
            v210 += v207;
          }

          while (v206 != v205);
        }

        v214 = v317;
        sub_1D0BE520C(&v280, *(a11 + 32) + 48 * v151);
        v310 = 0x100000001;
        *&v215 = 0x100000001;
        *(&v215 + 1) = 0x100000001;
        v309 = v215;
        v308 = &unk_1F4CDF418;
        v311 = v312;
        sub_1D0B89390(&v275, &v280, &v308);
        sub_1D0BED9C8(&v313, &v362, &v285);
        sub_1D0BEDA98(&v313, DWORD2(v309), v311);
        v310 = 0x100000001;
        *&v216 = 0x100000001;
        *(&v216 + 1) = 0x100000001;
        v309 = v216;
        v308 = &unk_1F4CDF418;
        v311 = v312;
        sub_1D0B89390(&v275, &v303, &v308);
        sub_1D0BED9C8(&v313, &v354, &v285);
        sub_1D0BEDA98(&v313, DWORD2(v309), v311);
        v310 = 0xA00000001;
        v309 = xmmword_1D0EA12E0;
        v308 = &unk_1F4CED1A0;
        v311 = v312;
        sub_1D0B89390(&v275, &v270, &v308);
        sub_1D0BEDB0C(&v313, &v350, &v285);
        sub_1D0BEDDF0(&v313, &v308);
        v310 = 0xA00000001;
        v309 = xmmword_1D0EA12E0;
        v308 = &unk_1F4CED1A0;
        v311 = v312;
        sub_1D0B89390(&v275, &v340, &v308);
        sub_1D0BEDB0C(&v313, &__p, &v285);
        sub_1D0BEDDF0(&v313, &v308);
        v102 = v102 * v214;
        v245 += *(*(a9 + 32) + 4 * v151++);
        v70 = v253;
        if (v151 == a19)
        {
          goto LABEL_236;
        }
      }

      v154 = 0;
      v155 = 0;
      v156 = *(a23 + 32);
      while (1)
      {
        v157 = v155 + *(v156 + 4 * v154) - 1;
        v342 = 0xA00000001;
        v340 = &unk_1F4CED418;
        v343 = &v344;
        v158 = (v157 - v155);
        if (v157 == v155)
        {
          v159 = 0;
          v341 = v152;
          LODWORD(v344) = v155;
          v160 = 1;
          v161 = 1;
        }

        else if (v157 - v155 < 0)
        {
          v160 = 0;
          v161 = 0;
          v341 = 0uLL;
          v159 = 1;
        }

        else
        {
          v161 = v158 + 1;
          LODWORD(v341) = 1;
          DWORD1(v341) = v158 + 1;
          DWORD2(v341) = v158 + 1;
          HIDWORD(v341) = 1;
          v162 = (4 * ~(v158 >> 2)) | 0xFFFFFFFF80000000;
          v163 = vdupq_n_s64(v158);
          v164 = &v345;
          v165 = 13;
          v166 = xmmword_1D0E7DD30;
          v167 = xmmword_1D0E84440;
          do
          {
            v168 = vmovn_s64(vcgeq_u64(v163, v166));
            if (vuzp1_s16(v168, *v163.i8).u8[0])
            {
              *(v164 - 3) = v155 + v165 - 13;
            }

            if (vuzp1_s16(v168, *&v163).i8[2])
            {
              *(v164 - 2) = v155 + v165 - 12;
            }

            if (vuzp1_s16(*&v163, vmovn_s64(vcgeq_u64(v163, *&v167))).i32[1])
            {
              *(v164 - 1) = v155 + v165 - 11;
              *v164 = v155 + v165 - 10;
            }

            v167 = vaddq_s64(v167, v153);
            v166 = vaddq_s64(v166, v153);
            v165 += 4;
            v164 += 4;
          }

          while (v162 + v165 != 13);
          v159 = 0;
          v160 = 1;
        }

        v315 = 0x10000000ALL;
        v313 = &unk_1F4CED1E8;
        v316 = &v317;
        *&v314 = __PAIR64__(v160, v161);
        DWORD2(v314) = v161 * v160;
        HIDWORD(v314) = v161;
        if (v161)
        {
          v169 = 0;
          for (k = 0; k != v161; ++k)
          {
            if ((v159 & 1) == 0)
            {
              v171 = 0;
              do
              {
                *&v318[4 * k - 4 + 4 * HIDWORD(v314) * v171] = *(&v344 + v169 + v171);
                ++v171;
              }

              while (v160 != v171);
            }

            v169 += v160;
          }
        }

        sub_1D0B9F5D4(&v375, &v313);
        v310 = 0x10000000ALL;
        v309 = xmmword_1D0E87BE0;
        v308 = &unk_1F4CEAE48;
        v311 = v312;
        v342 = 0xA0000000ALL;
        v341 = xmmword_1D0E84630;
        v340 = &unk_1F4CE2180;
        v343 = &v344;
        v337 = 0xA0000000ALL;
        v336 = xmmword_1D0E84630;
        v335 = &unk_1F4CE2180;
        v338 = v339;
        v172 = *(*(a24 + 32) + 8 * v154);
        sub_1D0BEB9D4(&v313, v414, &v375);
        sub_1D0BEB9D4(&v270, &v404, &v375);
        if (v172(&v313, &v270, *(*(a25 + 32) + 8 * v154), &v308, &v340, &v335, *(*(a10 + 32) + 8 * v151)))
        {
          return 22;
        }

        sub_1D0BEB9D4(&v313, &v319, &v375);
        sub_1D0BEC078(&v313, DWORD2(v309), v311);
        sub_1D0BEBF0C(&v313, &v293, &v375, &v375);
        sub_1D0BEC0EC(&v313, &v340);
        sub_1D0BEBF0C(&v313, &v254, &v375, &v375);
        sub_1D0BEC0EC(&v313, &v335);
        v156 = *(a23 + 32);
        v155 += *(v156 + 4 * v154++);
        *&v152 = 0x100000001;
        *(&v152 + 1) = 0x100000001;
        v153 = v246;
        if (v154 == a22)
        {
          goto LABEL_205;
        }
      }
    }

    else
    {
      v104 = 0;
      v105 = 0;
      v106 = 0;
      v107 = *(a16 + 32);
      v108 = 1;
      v243 = vdupq_n_s64(4uLL);
      do
      {
        v109 = *(v107 + 4 * v104);
        v315 = 0xA00000001;
        v313 = &unk_1F4CED418;
        v316 = &v317;
        v248 = v108;
        if (v109 == 1)
        {
          v110 = 0;
          *&v111 = 0x100000001;
          *(&v111 + 1) = 0x100000001;
          v314 = v111;
          LODWORD(v317) = 0;
          v112 = 1;
          LODWORD(v109) = 1;
        }

        else if (v109 <= 0)
        {
          v112 = 0;
          LODWORD(v109) = 0;
          v314 = 0uLL;
          v110 = 1;
        }

        else
        {
          v113 = 0;
          LODWORD(v314) = 1;
          DWORD1(v314) = v109;
          *(&v314 + 1) = v109 | 0x100000000;
          v114 = v318;
          v115 = xmmword_1D0E7DD30;
          v116 = xmmword_1D0E84440;
          v117 = vdupq_n_s64(v109 - 1);
          do
          {
            v118 = vmovn_s64(vcgeq_u64(v117, v115));
            if (vuzp1_s16(v118, *v115.i8).u8[0])
            {
              *(v114 - 3) = v113;
            }

            if (vuzp1_s16(v118, *&v115).i8[2])
            {
              *(v114 - 2) = v113 + 1;
            }

            if (vuzp1_s16(*&v115, vmovn_s64(vcgeq_u64(v117, *&v116))).i32[1])
            {
              *(v114 - 1) = v113 + 2;
              *v114 = v113 + 3;
            }

            v113 += 4;
            v119 = vdupq_n_s64(4uLL);
            v116 = vaddq_s64(v116, v119);
            v115 = vaddq_s64(v115, v119);
            v114 += 4;
          }

          while (((v109 + 3) & 0xFFFFFFFC) != v113);
          v110 = 0;
          v112 = 1;
        }

        v347 = 0x10000000ALL;
        __p.__r_.__value_.__r.__words[0] = &unk_1F4CED1E8;
        v348 = v349;
        __p.__r_.__value_.__l.__size_ = __PAIR64__(v112, v109);
        LODWORD(__p.__r_.__value_.__r.__words[2]) = v109 * v112;
        HIDWORD(__p.__r_.__value_.__r.__words[2]) = v109;
        if (v109)
        {
          v120 = 0;
          v121 = 0;
          do
          {
            if ((v110 & 1) == 0)
            {
              v122 = 0;
              do
              {
                v349[v121 + HIDWORD(__p.__r_.__value_.__r.__words[2]) * v122] = *&v318[4 * v120 - 4 + 4 * v122];
                ++v122;
              }

              while (v112 != v122);
            }

            ++v121;
            v120 += v112;
          }

          while (v121 != v109);
          v123 = __p.__r_.__value_.__r.__words[1];
          v112 = HIDWORD(__p.__r_.__value_.__r.__words[1]);
        }

        else
        {
          v123 = 0;
        }

        v351.__r_.__value_.__r.__words[2] = 0x10000000ALL;
        v350 = &unk_1F4CED1E8;
        v352 = v353;
        v351.__r_.__value_.__r.__words[0] = __PAIR64__(v112, v123);
        v124 = v123 * v112;
        v351.__r_.__value_.__l.__size_ = __PAIR64__(v123, v124);
        if (v124 >= 1)
        {
          v125 = v349;
          v126 = v353;
          do
          {
            v127 = *v125++;
            *v126++ = v127 + v105;
            --v124;
          }

          while (v124);
        }

        sub_1D0B9F5D4(&v375, &v350);
        v128 = *(*(a16 + 32) + 4 * (*(a16 + 20) + v104));
        v315 = 0xA00000001;
        v313 = &unk_1F4CED418;
        v316 = &v317;
        if (v128 == 1)
        {
          v129 = 0;
          *&v130 = 0x100000001;
          *(&v130 + 1) = 0x100000001;
          v314 = v130;
          LODWORD(v317) = 0;
          v131 = 1;
          LODWORD(v128) = 1;
        }

        else if (v128 <= 0)
        {
          v131 = 0;
          LODWORD(v128) = 0;
          v314 = 0uLL;
          v129 = 1;
        }

        else
        {
          v132 = 0;
          LODWORD(v314) = 1;
          DWORD1(v314) = v128;
          *(&v314 + 1) = v128 | 0x100000000;
          v133 = v318;
          v134 = xmmword_1D0E7DD30;
          v135 = xmmword_1D0E84440;
          v136 = vdupq_n_s64(v128 - 1);
          do
          {
            v137 = vmovn_s64(vcgeq_u64(v136, v134));
            if (vuzp1_s16(v137, *v134.i8).u8[0])
            {
              *(v133 - 3) = v132;
            }

            if (vuzp1_s16(v137, *&v134).i8[2])
            {
              *(v133 - 2) = v132 + 1;
            }

            if (vuzp1_s16(*&v134, vmovn_s64(vcgeq_u64(v136, *&v135))).i32[1])
            {
              *(v133 - 1) = v132 + 2;
              *v133 = v132 + 3;
            }

            v132 += 4;
            v135 = vaddq_s64(v135, v243);
            v134 = vaddq_s64(v134, v243);
            v133 += 4;
          }

          while (((v128 + 3) & 0xFFFFFFFC) != v132);
          v129 = 0;
          v131 = 1;
        }

        v347 = 0x10000000ALL;
        __p.__r_.__value_.__r.__words[0] = &unk_1F4CED1E8;
        v348 = v349;
        __p.__r_.__value_.__l.__size_ = __PAIR64__(v131, v128);
        LODWORD(__p.__r_.__value_.__r.__words[2]) = v128 * v131;
        HIDWORD(__p.__r_.__value_.__r.__words[2]) = v128;
        if (v128)
        {
          v138 = 0;
          v139 = 0;
          do
          {
            if ((v129 & 1) == 0)
            {
              v140 = 0;
              do
              {
                v349[v139 + HIDWORD(__p.__r_.__value_.__r.__words[2]) * v140] = *&v318[4 * v138 - 4 + 4 * v140];
                ++v140;
              }

              while (v131 != v140);
            }

            ++v139;
            v138 += v131;
          }

          while (v139 != v128);
          v141 = __p.__r_.__value_.__r.__words[1];
          v131 = HIDWORD(__p.__r_.__value_.__r.__words[1]);
        }

        else
        {
          v141 = 0;
        }

        v351.__r_.__value_.__r.__words[2] = 0x10000000ALL;
        v350 = &unk_1F4CED1E8;
        v352 = v353;
        v351.__r_.__value_.__r.__words[0] = __PAIR64__(v131, v141);
        v142 = v141 * v131;
        v351.__r_.__value_.__l.__size_ = __PAIR64__(v141, v142);
        if (v142 >= 1)
        {
          v143 = v349;
          v144 = v353;
          do
          {
            v145 = *v143++;
            *v144++ = v145 + v106;
            --v142;
          }

          while (v142);
        }

        sub_1D0B9F5D4(&v370, &v350);
        v256 = 0x10000000ALL;
        v254 = &unk_1F4CEAE48;
        v255 = xmmword_1D0E87BE0;
        v257 = v258;
        v347 = 0xA0000000ALL;
        *&__p.__r_.__value_.__r.__words[1] = xmmword_1D0E84630;
        __p.__r_.__value_.__r.__words[0] = &unk_1F4CE2180;
        v348 = v349;
        v315 = 0xA0000000ALL;
        v314 = xmmword_1D0E84630;
        v313 = &unk_1F4CE2180;
        v316 = &v317;
        v146 = v104;
        v147 = *(*(a17 + 32) + 8 * v104);
        sub_1D0BEB9D4(&v350, v414, &v375);
        sub_1D0BEB9D4(&v293, v412, &v370);
        if (v147(&v350, &v293, *(*(a18 + 32) + 8 * v146), &v254, &__p, &v313))
        {
          return 20;
        }

        sub_1D0BEB9D4(&v350, &v404, &v375);
        sub_1D0BEC078(&v350, DWORD2(v255), v257);
        sub_1D0BEBF0C(&v350, &v396, &v375, &v375);
        sub_1D0BEC0EC(&v350, &__p);
        v295 = 0x10000000ALL;
        v294 = xmmword_1D0E87BE0;
        v293 = &unk_1F4CED1E8;
        v296 = v297;
        v351.__r_.__value_.__r.__words[2] = 0xA0000000ALL;
        *&v351.__r_.__value_.__l.__data_ = xmmword_1D0E84630;
        v350 = &unk_1F4CE2180;
        v352 = v353;
        v148 = sub_1D0BEC1D8(&__p, &v293, &v350);
        v295 = 0xA0000000ALL;
        v294 = xmmword_1D0E84630;
        v293 = &unk_1F4CE2180;
        v296 = v297;
        v342 = 0x10000000ALL;
        v341 = xmmword_1D0E87BE0;
        v340 = &unk_1F4CED1E8;
        v343 = &v344;
        v337 = 0x10000000ALL;
        v336 = xmmword_1D0E87BE0;
        v335 = &unk_1F4CED1E8;
        v338 = v339;
        v351.__r_.__value_.__r.__words[2] = 0x100000028;
        *&v351.__r_.__value_.__l.__data_ = xmmword_1D0EA1280;
        v350 = &unk_1F4CED230;
        v352 = v353;
        v149 = sub_1D0BA5174(&__p, &v340, &v335, &v350, &v293);
        sub_1D0BEBF0C(&v350, &v388, &v375, &v375);
        sub_1D0BEC0EC(&v350, &v293);
        sub_1D0BEBF0C(&v350, &v380, &v375, &v370);
        sub_1D0BEC0EC(&v350, &v313);
        v103 = v103 * v148;
        v108 = (v149 <= v247) & v248;
        v107 = *(a16 + 32);
        v105 += *(v107 + 4 * v146);
        v106 += *(v107 + 4 * (*(a16 + 20) + v146));
        v104 = v146 + 1;
      }

      while (v146 + 1 != a15);
      v73 = v249;
      v70 = v253;
      v102 = 1.0;
      v98 = v253 * v253;
      if (((v149 <= v247) & v248) != 0)
      {
        goto LABEL_168;
      }

      LOWORD(v350) = 2;
      __p.__r_.__value_.__s.__data_[0] = 2;
      v228 = cnprint::CNLogFormatter::FormatWarning((v250 + 2344), "PredictAndUpdate state Jacobian matrix is not invertible.");
      if (*(v250 + 2367) >= 0)
      {
        v229 = v228;
      }

      else
      {
        v229 = *(v250 + 2344);
      }

      cnprint::CNPrinter::Print(&v350, &__p, "%s", v229);
      sub_1D0B894B0(v250 + 1088, &v404);
      sub_1D0B894B0(v250 + 1208, v241);
      v351.__r_.__value_.__r.__words[2] = 0x10000000ALL;
      *&v351.__r_.__value_.__l.__data_ = xmmword_1D0E87BE0;
      v350 = &unk_1F4CEAE48;
      v352 = v353;
      sub_1D0B89390(v250 + 1208, &v404, &v350);
      sub_1D0B894B0(v250 + 2048, &v350);
      v351.__r_.__value_.__r.__words[2] = 0xA0000000ALL;
      v350 = &unk_1F4CE2180;
      v352 = v353;
      v351.__r_.__value_.__r.__words[0] = __PAIR64__(v253, v249);
      v351.__r_.__value_.__l.__size_ = __PAIR64__(v249, v85);
      if (v85 > 3)
      {
        v230 = &v353[2 * v85];
        bzero(v353, 16 * ((v85 - 1) >> 1));
        *(v230 - 2) = 0;
        *(v230 - 1) = 0;
      }

      else if (v85 >= 1)
      {
        bzero(v353, 8 * v85);
      }

      sub_1D0B894B0(v250 + 2392, &v350);
      v347 = 0x10000000ALL;
      *&__p.__r_.__value_.__r.__words[1] = xmmword_1D0E87BE0;
      __p.__r_.__value_.__r.__words[0] = &unk_1F4CEAE48;
      v348 = v349;
      sub_1D0B89390(v240, v412, &__p);
      v315 = 0x10000000ALL;
      v314 = xmmword_1D0E87BE0;
      v313 = &unk_1F4CEAE48;
      v316 = &v317;
      sub_1D0B89390(v250 + 2392, &v404, &v313);
      v351.__r_.__value_.__r.__words[2] = 0x10000000ALL;
      *&v351.__r_.__value_.__l.__data_ = xmmword_1D0E87BE0;
      v350 = &unk_1F4CEAE48;
      v352 = v353;
      sub_1D0B88838(&__p, &v313, &v350);
      sub_1D0B894B0(v250 + 3232, &v350);
      sub_1D0B894B0(v250 + 3352, v240);
      *(v250 + 2180) = 1;
      return 21;
    }
  }

  else
  {
    v89 = 2;
    LOWORD(v350) = 2;
    __p.__r_.__value_.__s.__data_[0] = 5;
    v90 = cnprint::CNLogFormatter::FormatGeneral((v37 + 2344), "SquareRootInformationFilter::PredictAndUpdate called with %u measurements vs. maximum %u", v88, 44);
    if (*(v37 + 2367) >= 0)
    {
      v91 = v90;
    }

    else
    {
      v91 = *(v37 + 2344);
    }

    cnprint::CNPrinter::Print(&v350, &__p, "%s", v91);
  }

  return v89;
}

void sub_1D0BEB710(_Unwind_Exception *a1)
{
  sub_1D0E1D72C(&STACK[0xF98]);
  sub_1D0E1DDB8(&STACK[0x1010]);
  sub_1D0E1DDB8(&STACK[0x1088]);
  sub_1D0BEFE04(&STACK[0x28F0]);
  sub_1D0BEFE04(&STACK[0x3930]);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0BEB970(uint64_t result, uint64_t a2, int a3)
{
  v3 = *(a2 + 8);
  *(result + 24) = 0x100000001;
  *result = &unk_1F4CDF158;
  *(result + 8) = v3;
  *(result + 12) = 1;
  *(result + 16) = v3;
  *(result + 20) = v3;
  v4 = (result + 40);
  *(result + 32) = result + 40;
  if (v3)
  {
    v5 = *(a2 + 20) * a3;
    v6 = *(a2 + 32);
    do
    {
      *v4++ = *(v6 + 4 * v5++);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D0BEB9D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x10000000ALL;
  *(a1 + 8) = xmmword_1D0E87BE0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CED460;
  *(a1 + 120) = a2;
  *(a1 + 152) = 0x10000000ALL;
  *(a1 + 128) = &unk_1F4CED1E8;
  *(a1 + 136) = xmmword_1D0E87BE0;
  *(a1 + 160) = a1 + 168;
  sub_1D0B9F5D4(a1 + 128, a3);
  v6 = *(a1 + 136);
  v5 = *(a1 + 140);
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  v7 = (v5 * v6);
  *(a1 + 16) = v7;
  *(a1 + 20) = v6;
  if (v7 >= 1)
  {
    v8 = *(a1 + 160);
    v9 = *(a2 + 32);
    v10 = *(a1 + 32);
    do
    {
      v11 = *v8++;
      *v10++ = *(v9 + 8 * v11);
      --v7;
    }

    while (v7);
  }

  return a1;
}

uint64_t sub_1D0BEBAAC(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  v10 = !v9 && v8 == 10;
  if (v10 && ((v12 = *(a2 + 8), v13 = *(a2 + 12), v12 <= v13) ? (v14 = *(a2 + 12)) : (v14 = *(a2 + 8)), v12 ? (v15 = v13 == 0) : (v15 = 1), !v15 ? (v16 = v14 == 10) : (v16 = 0), v16))
  {
    v22 = 0;
    v23 = a3 + 11;
    v24 = *a3;
    do
    {
      v25 = *&v23[v22];
      v26 = (v25 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v27 = ((v25 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (v25 >= 0)
      {
        v27 = 0;
        v26 = 0;
      }

      v28 = v25 & 0x7FFFFFFFFFFFFFFFLL;
      if (!v28)
      {
        v26 = 1;
      }

      v29 = v28 <= 0x7FF0000000000000;
      v30 = v28 == 0x7FF0000000000000 || v26;
      if (!v29)
      {
        v30 = 1;
      }

      if ((v30 | v27) == 1)
      {
        LOWORD(v68) = 12;
        LOBYTE(v63) = 4;
        cnprint::CNPrinter::Print(&v68, &v63, "f_TenStateGaussMarkov, non-positive time constant specified", a4, a5, a6);
        return 0xFFFFFFFFLL;
      }

      ++v22;
    }

    while (v22 != 10);
    v70 = 0xA0000000ALL;
    v68 = &unk_1F4CE2180;
    v71 = v72;
    v69 = xmmword_1D0E84630;
    bzero(v72, 0x320uLL);
    for (i = 40; i != 920; i += 88)
    {
      *(&v68 + i) = 0x3FF0000000000000;
    }

    v65 = 0xA0000000ALL;
    v63 = &unk_1F4CE2180;
    v66 = v67;
    v64 = xmmword_1D0E84630;
    bzero(v67, 0x320uLL);
    for (j = 40; j != 920; j += 88)
    {
      *(&v63 + j) = 0x3FF0000000000000;
    }

    v60 = 0x10000000ALL;
    v58 = &unk_1F4CEAE48;
    v61 = v62;
    v59 = xmmword_1D0E87BE0;
    memset(v62, 0, sizeof(v62));
    v33 = 40;
    for (k = 40; k != 920; k += 88)
    {
      v35 = v24 / *v23;
      if (v35 <= 1.0e-12)
      {
        v36 = 1.0 - v35;
      }

      else
      {
        v36 = exp(-v35);
      }

      *(&v68 + k) = v36;
      *(&v58 + v33) = *(v23 - 10);
      v33 += 8;
      ++v23;
    }

    v45 = 0x10000000ALL;
    v44 = xmmword_1D0E87BE0;
    v43 = &unk_1F4CEAE48;
    v46 = &v47;
    sub_1D0BA5A78(a1, &v58, &v43);
    v50 = 0x10000000ALL;
    v49 = xmmword_1D0E87BE0;
    v48 = &unk_1F4CEAE48;
    v51 = &v52;
    sub_1D0B89390(&v68, &v43, &v48);
    v55 = 0x10000000ALL;
    v54 = xmmword_1D0E87BE0;
    v53 = &unk_1F4CEAE48;
    v56 = &v57;
    sub_1D0B88838(&v58, &v48, &v53);
    v40 = 0x10000000ALL;
    v38 = &unk_1F4CEAE48;
    v39 = xmmword_1D0E87BE0;
    v41 = v42;
    sub_1D0B88838(&v53, a2, &v38);
    sub_1D0B894B0(a4, &v38);
    sub_1D0B894B0(a5, &v68);
    v40 = 0xA0000000ALL;
    v38 = &unk_1F4CE2180;
    v41 = v42;
    v39 = xmmword_1D0E84630;
    bzero(v42, 0x320uLL);
    for (m = 40; m != 920; m += 88)
    {
      *(&v38 + m) = 0x3FF0000000000000;
    }

    sub_1D0B894B0(a6, &v38);
    return 0;
  }

  else
  {
    LOWORD(v68) = 12;
    LOBYTE(v63) = 4;
    cnprint::CNPrinter::Print(&v68, &v63, "f_TenStateGaussMarkov called with inadequate matrices", a4, a5, a6);
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1D0BEBF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 24) = 0xA0000000ALL;
  *(a1 + 8) = xmmword_1D0E84630;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CED4A8;
  *(a1 + 840) = a2;
  *(a1 + 872) = 0x10000000ALL;
  *(a1 + 848) = &unk_1F4CED1E8;
  *(a1 + 856) = xmmword_1D0E87BE0;
  *(a1 + 880) = a1 + 888;
  *(a1 + 952) = 0x10000000ALL;
  *(a1 + 928) = &unk_1F4CED1E8;
  *(a1 + 936) = xmmword_1D0E87BE0;
  *(a1 + 960) = a1 + 968;
  sub_1D0B9F5D4(a1 + 848, a3);
  sub_1D0B9F5D4(a1 + 928, a4);
  v7 = *(a1 + 864);
  v8 = *(a1 + 944);
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
        v13 = *(a1 + 880);
        v14 = *(*(a1 + 960) + 4 * v10) * v11;
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

double sub_1D0BEC078(uint64_t a1, unsigned int a2, double *a3)
{
  if (*(a1 + 16) != a2)
  {
    __assert_rtn("operator=", "cnsubvector.h", 347, "this->num_elements_ == A.num_elements_");
  }

  if (a2 >= 1)
  {
    v3 = *(a1 + 160);
    v4 = *(*(a1 + 120) + 32);
    v5 = *(a1 + 32);
    v6 = a2;
    do
    {
      v7 = *a3++;
      result = v7;
      v9 = *v3++;
      *(v4 + 8 * v9) = result;
      *v5++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_1D0BEC0EC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 376, "this->num_rows_ == A.num_rows_");
  }

  v3 = *(result + 12);
  if (v3 != *(a2 + 12))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 377, "this->num_cols_ == A.num_cols_");
  }

  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 32);
    do
    {
      if (v2)
      {
        v7 = *(result + 840);
        v8 = *(result + 880);
        v9 = *(v7 + 20) * *(*(result + 960) + 4 * v5);
        v10 = *(v7 + 32);
        v11 = *(result + 32);
        v12 = *(result + 20) * v5;
        v13 = v4;
        v14 = v2;
        do
        {
          v15 = *(v6 + 8 * v13);
          v16 = *v8++;
          *(v10 + 8 * (v16 + v9)) = v15;
          *(v11 + 8 * v12++) = v15;
          ++v13;
          --v14;
        }

        while (v14);
      }

      ++v5;
      v4 += v2;
    }

    while (v5 != v3);
  }

  return result;
}

double sub_1D0BEC1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D0B894B0(a3, a1);
  v5 = *(a3 + 8);
  v6 = *(a3 + 12);
  v7 = *(a2 + 32);
  v18 = *(a3 + 12);
  v19 = v5;
  if (v5 < 1)
  {
    v11 = -1;
  }

  else
  {
    v8 = 4 * v5;
    v9 = operator new[](4 * v5, MEMORY[0x1E69E5398]);
    if (v9)
    {
      v10 = v9;
      dgetrf_NEWLAPACK();
      memcpy(v7, v10, v8);
      MEMORY[0x1D387EC80](v10, 0x1000C8052888210);
      goto LABEL_7;
    }

    v11 = -5;
  }

  LOWORD(v19) = 4;
  LOBYTE(v18) = 5;
  cnprint::CNPrinter::Print(&v19, &v18, "Error using Det: input argument %d invalid in getrf.", -v11);
LABEL_7:
  v12 = *(a3 + 32);
  result = *v12;
  if (v6 >= 2)
  {
    v14 = v6 - 1;
    v15 = v6 + 1;
    do
    {
      result = result * v12[v15];
      v15 += v6 + 1;
      --v14;
    }

    while (v14);
  }

  if (v6 >= 1)
  {
    v16 = 0;
    do
    {
      if (v6 != *(*(a2 + 32) - 4 + 4 * v6))
      {
        ++v16;
      }
    }

    while (v6-- > 1);
    if (v16)
    {
      return -result;
    }
  }

  return result;
}

uint64_t sub_1D0BEC350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
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

  v11 = !v10 && v9 == 10;
  if (!v11 || ((v12 = *(a2 + 8), v13 = *(a2 + 12), v12 <= v13) ? (v14 = *(a2 + 12)) : (v14 = *(a2 + 8)), v12 ? (v15 = v13 == 0) : (v15 = 1), !v15 ? (v16 = v14 == 10) : (v16 = 0), !v16))
  {
    LOWORD(v31) = 12;
    LOBYTE(v26) = 4;
    cnprint::CNPrinter::Print(&v31, &v26, "in_TenStateGaussMarkov called with inadequate matrices", a4, a5, a6, a7);
    return 0xFFFFFFFFLL;
  }

  v46 = *a3 * a7;
  v53 = *(a3 + 104);
  v54 = *(a3 + 120);
  v55 = *(a3 + 136);
  v56 = *(a3 + 152);
  v52 = *(a3 + 88);
  v48 = *(a3 + 24);
  v49 = *(a3 + 40);
  v50 = *(a3 + 56);
  v51 = *(a3 + 72);
  v47 = *(a3 + 8);
  v43 = 0x10000000ALL;
  v41 = &unk_1F4CEAE48;
  v44 = v45;
  v42 = xmmword_1D0E87BE0;
  memset(v45, 0, sizeof(v45));
  v38 = 0x10000000ALL;
  v37 = xmmword_1D0E87BE0;
  v36 = &unk_1F4CEAE48;
  v39 = &v40;
  v33 = 0xA0000000ALL;
  v31 = &unk_1F4CE2180;
  v32 = xmmword_1D0E84630;
  v34 = &v35;
  v28 = 0xA0000000ALL;
  v26 = &unk_1F4CE2180;
  v27 = xmmword_1D0E84630;
  v29 = &v30;
  if (sub_1D0BEBAAC(a1, &v41, &v46, &v36, &v31, &v26))
  {
    return 0xFFFFFFFFLL;
  }

  sub_1D0B894B0(a4, &v36);
  sub_1D0B894B0(a5, &v31);
  v23 = 0xA0000000ALL;
  v21 = &unk_1F4CE2180;
  v24 = v25;
  v22 = xmmword_1D0E84630;
  bzero(v25, 0x320uLL);
  sub_1D0B894B0(a6, &v21);
  return 0;
}

uint64_t sub_1D0BEC5D0(uint64_t a1, uint64_t a2, void *lpsrc, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v128 = *MEMORY[0x1E69E9840];
  if (!lpsrc || (v11 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CED158, 0)) == 0)
  {
    LOWORD(v101[0]) = 12;
    LOBYTE(v103) = 4;
    cnprint::CNPrinter::Print(v101, &v103, "time,%.3lf,h-function failure on line %d: %s() %s", MEMORY[0x30] + MEMORY[0x28], 1070, "h_GnssGeometryFreePsr_RavenIonosphere", "dynamic_cast failed");
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

  if (!v14 || !v13 || v15 != 10 || ((v17 = *(a2 + 8), v16 = *(a2 + 12), v17 <= v16) ? (v18 = *(a2 + 12)) : (v18 = *(a2 + 8)), !v17 || !v16 || v18 != 1))
  {
    LOWORD(v101[0]) = 12;
    LOBYTE(v103) = 4;
    cnprint::CNPrinter::Print(v101, &v103, "time,%.3lf,h-function failure on line %d: %s() %s", *(v11 + 6) + *(v11 + 5), 1084, "h_GnssGeometryFreePsr_RavenIonosphere", "inadequate matrix allocation, numStates or Length(w) check failed");
    return 0xFFFFFFFFLL;
  }

  if ((v11[128] & 1) == 0)
  {
    LOWORD(v101[0]) = 12;
    LOBYTE(v103) = 4;
    cnprint::CNPrinter::Print(v101, &v103, "time,%.3lf,h-function failure on line %d: %s() %s", *(v11 + 6) + *(v11 + 5), 1090, "h_GnssGeometryFreePsr_RavenIonosphere", "invalid time");
    LOWORD(v101[0]) = 12;
    LOBYTE(v103) = 4;
    v21 = *(v12 + 12) + *(v12 + 11);
    v22 = sub_1D0BCFAB8((v12 + 56));
    cnprint::CNPrinter::Print(v101, &v103, "t,%.3lf,%s,TAI time invalid", v21, v22);
    return 0xFFFFFFFFLL;
  }

  v19 = *(v11 + 24);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v23 = *(v11 + 50), (*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) || v19 <= 0.0 || v23 <= 0.0 || v19 == v23)
  {
    LOWORD(v101[0]) = 12;
    LOBYTE(v103) = 4;
    cnprint::CNPrinter::Print(v101, &v103, "time,%.3lf,h-function failure on line %d: %s() %s", *(v11 + 6) + *(v11 + 5), 1101, "h_GnssGeometryFreePsr_RavenIonosphere", "invalid or matching nominal carrier frequencies");
    LOWORD(v101[0]) = 12;
    LOBYTE(v103) = 4;
    cnprint::CNPrinter::Print(v101, &v103, "t,%.3lf,obs1,%.31f,obs2,%.31f", *(v12 + 12) + *(v12 + 11), *(v12 + 24), *(v12 + 50));
    return 0xFFFFFFFFLL;
  }

  v116 = 0;
  v117 = 0u;
  v118 = 0u;
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  *v101 = *(v11 + 136);
  result = sub_1D0BBB868((v11 + 504), v101, &v116, &v114, v113, v112);
  if (result)
  {
    return result;
  }

  v24 = **(a1 + 32);
  v103 = 1;
  v104 = v24;
  v105 = 0u;
  v106 = 0u;
  v25 = *(v12 + 45);
  v107 = 0u;
  v108 = v25;
  v26 = *(v12 + 92);
  v110 = v114;
  v109 = v26;
  v111 = v115;
  if (cnnavigation::details::IonospherePiercePoint::ComputeIonospherePiercePointCoordinates(&v103))
  {
    sub_1D0D85A30((v12 + 40), "could not compute expected measurement", "h_GnssGeometryFreePsr_RavenIonosphere", 1129);
    if (cnprint::CNPrinter::GetLogLevel(v27) <= 1)
    {
      LOWORD(v101[0]) = 12;
      LOBYTE(v126.f64[0]) = 1;
      v28 = *(v12 + 11);
      v29 = *(v12 + 12);
      v30 = sub_1D0BCFAB8((v12 + 56));
      cnprint::CNPrinter::Print(v101, &v126, "t,%.3lf,%s,h_GnssGeometryFreePsr_RavenIonosphere returned != 0", v29 + v28, v30);
    }

    return 0xFFFFFFFFLL;
  }

  v126 = *(v12 + 45);
  v127 = *(v12 + 92);
  v123 = 0.0;
  v124 = 0.0;
  v125 = 0;
  v31 = cnnavigation::ECEFToLLA(&v126, 1, &v123, 0, v101);
  if (v31)
  {
    LOWORD(v101[0]) = 12;
    v102 = 4;
    cnprint::CNPrinter::Print(v101, &v102, "t,%.3lf,h_GnssGeometryFreePsr_RavenIonosphere, conversion of current position from ECEF to LLA failed", *(v12 + 12) + *(v12 + 11));
    return 0xFFFFFFFFLL;
  }

  v33 = *(&v106 + 1);
  v32 = *&v107;
  v35 = v123;
  v34 = v124;
  LogLevel = cnprint::CNPrinter::GetLogLevel(v31);
  if (!LogLevel)
  {
    LOWORD(v101[0]) = 12;
    v102 = 0;
    cnprint::CNPrinter::Print(v101, &v102, "t,%.3lf,h_GnssGeometryFreePsr_RavenIonosphere,ipp,thin_shell_height_km_,%.5lf,sv_zenith_angle_at_rx_rad_,%.5lf,sv_zenith_angle_at_ipp_rad_,%.5lf,sv_azimuth_at_rx_rad_,%.5lf,latitude_ipp_rad_,%.5lf,longitude_ipp_rad_,%.5lf,receiver_radius_km_,%.5lf,rx_lat,%.5lf,rx_lon,%.5lf", *(v12 + 12) + *(v12 + 11), v104, *&v105, *(&v105 + 1), *&v106, *(&v106 + 1), *&v107, *(&v107 + 1), v35, v34);
  }

  v37 = v32 - v34;
  if (fabs(v37) > 3.14159265)
  {
    v37 = fmod(v37, 6.28318531);
    if (v37 <= 3.14159265)
    {
      if (v37 < -3.14159265)
      {
        v37 = v37 + 6.28318531;
      }
    }

    else
    {
      v37 = v37 + -6.28318531;
    }
  }

  if (*(&v105 + 1) >= 1.57079633 || *(&v105 + 1) < 0.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
    {
      LOWORD(v101[0]) = 12;
      v102 = 1;
      cnprint::CNPrinter::Print(v101, &v102, "t,%.3lf,WARNING: h_GnssGeometryFreePsr_RavenIonosphere,sv_zenith_angle_at_ipp_rad is invalid. Cannot proceed.", *(v12 + 12) + *(v12 + 11));
    }

    return 0xFFFFFFFFLL;
  }

  v100 = v35;
  v38 = *(a1 + 32);
  v40 = v38[1];
  v39 = v38[2];
  v42 = v38[3];
  v41 = v38[4];
  v43 = v38[5];
  v98 = v38[6];
  v45 = cos(*(&v105 + 1));
  v46 = v12[80];
  if (v46 > 2)
  {
    if (v46 - 5 >= 2)
    {
      if (v46 == 3)
      {
        v48 = 8;
      }

      else
      {
        v47 = v46 == 4;
        v48 = 0;
        if (v47)
        {
          v48 = 9;
        }
      }

      goto LABEL_57;
    }

LABEL_54:
    LOWORD(v101[0]) = 12;
    v102 = 4;
    cnprint::CNPrinter::Print(v101, &v102, "t,%.3lf,h_GnssGeometryFreePsr_RavenIonosphere, unexpected constellation", *(v12 + 12) + *(v12 + 11));
    return 0xFFFFFFFFLL;
  }

  if (!v12[80])
  {
    goto LABEL_54;
  }

  if (v46 == 1)
  {
    v48 = 7;
    goto LABEL_57;
  }

  v47 = v46 == 2;
  v48 = 0;
  if (v47)
  {
    goto LABEL_54;
  }

LABEL_57:
  v49 = v40 + v39 * (v33 - v100) + v42 * v37 + (v33 - v100) * (v41 * 0.5) * (v33 - v100);
  v50 = v33 - v100;
  v51 = v49 + (v33 - v100) * v43 * v37 + v37 * (v98 * 0.5) * v37;
  v99 = v48;
  v52 = (*(v12 + 24) * *(v12 + 24) - *(v12 + 50) * *(v12 + 50)) * (4.0308193e17 / (*(v12 + 50) * (*(v12 + 24) * *(v12 + 24) * *(v12 + 50))));
  v53 = v38[v48] * -0.299792458 + v52 * (1.0 / v45 * v51);
  *&v54 = 0x100000001;
  *(&v54 + 1) = 0x100000001;
  *(a4 + 8) = v54;
  **(a4 + 32) = v53 + **(a2 + 32);
  if (!cnprint::CNPrinter::GetLogLevel(v44))
  {
    LOWORD(v101[0]) = 12;
    v102 = 0;
    cnprint::CNPrinter::Print(v101, &v102, "t,%.3lf,h_GnssGeometryFreePsr_RavenIonosphere,z,%.5lf", *(v12 + 12) + *(v12 + 11), **(a4 + 32));
  }

  v55 = *(&v105 + 1);
  if (*(&v105 + 1) >= 1.57079633)
  {
    goto LABEL_72;
  }

  v93 = *(v12 + 91);
  v94 = *(v12 + 90);
  v92 = *(v12 + 92);
  v95 = v106;
  v56 = *&v105;
  v97 = sin(*(&v105 + 1));
  v57 = *(a1 + 32);
  v58 = *v57 + 6371.009;
  if (fabs(v58) < 2.22044605e-16)
  {
    LOWORD(v101[0]) = 12;
    v102 = 4;
    cnprint::CNPrinter::Print(v101, &v102, "t,%.3lf,h_GnssGeometryFreePsr_RavenIonosphere,Rekm_plus_x_hmax==0,cannot proceed", *(v12 + 12) + *(v12 + 11));
    return 0xFFFFFFFFLL;
  }

  v59 = 1.0 - v97 * v97;
  v91 = sin(v56);
  v90 = pow(v59, -1.5);
  if (fabs(v59) < 2.22044605e-16)
  {
    LOWORD(v101[0]) = 12;
    v102 = 4;
    cnprint::CNPrinter::Print(v101, &v102, "t,%.3lf,h_GnssGeometryFreePsr_RavenIonosphere,alpha==1.0,cannot proceed", *(v12 + 12) + *(v12 + 11));
    return 0xFFFFFFFFLL;
  }

  v60 = v56 - v55;
  v88 = sin(*(&v95 + 1));
  v89 = cos(v60);
  if (fabs(v88 * v88 + -1.0) < 2.22044605e-16)
  {
    LOWORD(v101[0]) = 12;
    v102 = 2;
    cnprint::CNPrinter::Print(v101, &v102, "Warning: t,%.3lf,h_GnssGeometryFreePsr_RavenIonosphere,beta==1.0,IPP is at one of the poles,cannot proceed", *(v12 + 12) + *(v12 + 11));
    return 0xFFFFFFFFLL;
  }

  v87 = cos(*&v95);
  v61 = __sincos_stret(v100);
  v86 = sin(v60);
  v62 = cos(*(&v95 + 1));
  if (fabs(v62) < 2.22044605e-16)
  {
    LOWORD(v101[0]) = 12;
    v102 = 2;
    cnprint::CNPrinter::Print(v101, &v102, "Warning: t,%.3lf,h_GnssGeometryFreePsr_RavenIonosphere,cos_theta_pp==0.0,IPP is at one of the poles,cannot proceed", *(v12 + 12) + *(v12 + 11));
    return 0xFFFFFFFFLL;
  }

  __x = sin(*&v95);
  v63 = sin(v37);
  if (fabs(v63 * v63 + -1.0) < 2.22044605e-16)
  {
    LOWORD(v101[0]) = 12;
    v102 = 2;
    cnprint::CNPrinter::Print(v101, &v102, "t,%.3lf,h_GnssGeometryFreePsr_RavenIonosphere,gamma==1.0,cannot proceed", *(v12 + 12) + *(v12 + 11));
    return 0xFFFFFFFFLL;
  }

  v64 = cos(v55);
  if (fabs(v64) < 2.22044605e-16)
  {
LABEL_72:
    LOWORD(v101[0]) = 12;
    v102 = 4;
    cnprint::CNPrinter::Print(v101, &v102, "t,%.3lf,h_GnssGeometryFreePsr_RavenIonosphere,zenith angle at IPP is too large,cannot proceed", *(v12 + 12) + *(v12 + 11));
    return 0xFFFFFFFFLL;
  }

  v65 = v91 * (-sqrt(v93 * 0.001 * (v93 * 0.001) + v94 * 0.001 * (v94 * 0.001) + v92 * 0.001 * (v92 * 0.001)) / (v58 * v58));
  v66 = v90 * -0.5 * (v97 * -2.0 * v65);
  v67 = -1.0 / sqrt(1.0 - v97 * v97) * v65;
  v68 = 1.0 / sqrt(1.0 - v88 * v88) * (v87 * (v61.__cosval * v89) * v67 + -(v86 * v61.__sinval) * v67);
  v69 = 1.0 / sqrt(1.0 - v63 * v63) * (__x * -v86 / (v62 * v62) * -v88 * v68 + __x * v89 / v62 * v67);
  v70 = v50;
  v71 = 1.0 / v64;
  v72 = v52 * (v71 * (v69 * v57[3] + v57[2] * v68 + v57[4] * 0.5 * ((v50 + v50) * v68) + v68 * v57[5] * v37 + v50 * v57[5] * v69 + v57[6] * 0.5 * ((v37 + v37) * v69)) + v66 * v51);
  v73 = v52 * v71;
  v74 = v70 * v71;
  v75 = v52 * (v70 * v71);
  v76 = v52 * (v37 * v71);
  v77 = v71 * 0.5;
  v78 = v52 * (v70 * (v70 * v77));
  v79 = v52 * (v37 * v74);
  v80 = v52 * (v37 * (v37 * v77));
  sub_1D0BED838(v101);
  sub_1D0B894B0(a5, v101);
  v81 = *(a5 + 32);
  *v81 = v72;
  v82 = *(a5 + 20);
  v81[v82] = v73;
  v81[2 * v82] = v75;
  v81[3 * v82] = v76;
  v81[4 * v82] = v78;
  v81[5 * v82] = v79;
  v81[6 * v82] = v80;
  v81[(v82 * v99)] = -0.299792458;
  if (!cnprint::CNPrinter::GetLogLevel(v83))
  {
    LOWORD(v101[0]) = 12;
    v102 = 0;
    v84 = *(a5 + 32);
    v85 = *(a5 + 20);
    cnprint::CNPrinter::Print(v101, &v102, "t,%.3lf,h_GnssGeometryFreePsr_RavenIonosphere,J0,%.5lf,J1,%.5lf,J2,%.5lf,J3,%.5lf,J4,%.10lf,J5,%.5lf,J6,%.5lf,J7,%.5lf,J8,%.5lf,J9,%.5lf", *(v12 + 12) + *(v12 + 11), *v84, v84[v85], v84[2 * v85], v84[3 * v85], v84[4 * v85], v84[5 * v85], v84[6 * v85], v84[7 * v85], v84[8 * v85], v84[9 * v85]);
  }

  sub_1D0BBBC94(1u, 1u, v101);
  sub_1D0B894B0(a6, v101);
  return 0;
}

uint64_t cnnavigation::details::IonospherePiercePoint::ComputeIonospherePiercePointCoordinates(cnnavigation::details::IonospherePiercePoint *this)
{
  v37 = *MEMORY[0x1E69E9840];
  v32 = *(this + 4);
  v33 = *(this + 10);
  v30 = *(this + 88);
  v31 = *(this + 13);
  v27 = 0.0;
  v28 = 0.0;
  v29 = 0;
  v2 = *this;
  if (cnnavigation::ECEFToLLA(&v32, *this, &v27, 0, &v34))
  {
    LOWORD(v34) = 5;
    LOBYTE(v26) = 4;
    cnprint::CNPrinter::Print(&v34, &v26, "ComputeIonospherePiercePointCoordinates, conversion of current position from ECEF to LLA failed");
    return 0xFFFFFFFFLL;
  }

  v34 = 0.0;
  v35 = 0.0;
  __x = 0.0;
  cnnavigation::ECEFToENU(&v30, v2, 0, &v32, 0, &v34);
  if (v3)
  {
    v26 = 5;
    v25 = 4;
    cnprint::CNPrinter::Print(&v26, &v25, "ComputeIonospherePiercePointCoordinates, conversion of current position from ECEF to ENU failed");
    return 0xFFFFFFFFLL;
  }

  v4 = v34;
  v5 = v35;
  v6 = v5 * v5 + v4 * v4;
  if (fabs(v6) >= 2.22044605e-16)
  {
    v8 = atan2(sqrt(v6), __x);
    *(this + 2) = v8;
    v7 = atan2(v4, v5);
    *(this + 4) = v7;
    if (v7 < 0.0)
    {
      v7 = v7 + 6.28318531;
      *(this + 4) = v7;
    }
  }

  else
  {
    v26 = 5;
    v25 = 2;
    cnprint::CNPrinter::Print(&v26, &v25, "ComputeIonospherePiercePointCoordinates,WARNING: east_north_vector_length_squared is zero");
    *(this + 2) = 0;
    *(this + 4) = 0;
    v7 = 0.0;
    v8 = 0.0;
  }

  v9 = sqrt(*(this + 9) * 0.001 * (*(this + 9) * 0.001) + *(this + 8) * 0.001 * (*(this + 8) * 0.001) + *(this + 10) * 0.001 * (*(this + 10) * 0.001));
  *(this + 7) = v9;
  v10 = *(this + 1);
  if (v10 < 0.0 || (v11 = v10 + 6371.009, v11 < v9))
  {
    v26 = 5;
    v25 = 4;
    cnprint::CNPrinter::Print(&v26, &v25, "ComputeIonospherePiercePointCoordinates,this->thin_shell_height_km < 0 or (Re_km + this->thin_shell_height_km) < this->receiver_radius_km_");
    return 0xFFFFFFFFLL;
  }

  v13 = v9 / v11;
  v14 = sin(v8);
  v15 = asin(v14 * v13);
  *(this + 3) = v15;
  v16 = v27;
  v17 = __sincos_stret(v8 - v15);
  v18 = __sincos_stret(v16);
  v19 = cos(v7);
  v20 = asin(v19 * (v17.__sinval * v18.__cosval) + v18.__sinval * v17.__cosval);
  *(this + 5) = v20;
  v21 = v28;
  if (fabs(fabs(v20) + -1.57079633) <= 0.000000015)
  {
    result = 0;
    *(this + 6) = v28;
  }

  else
  {
    v22 = sin(v7) * v17.__sinval;
    v23 = cos(v20);
    v24 = asin(v22 / v23);
    result = 0;
    *(this + 6) = v21 + v24;
  }

  return result;
}

double cnnavigation::ECEFToENU(float64x2_t *a1, int a2, int a3, float64x2_t *a4, int a5, uint64_t a6, uint64_t a7, double result)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3 == 1)
  {
    v17 = *a4;
    v18 = a4[1].f64[0];
    if (cnnavigation::LLAToECEF(v17.f64, a2, v19.f64, 0, &v15))
    {
      return result;
    }
  }

  else
  {
    if (a3)
    {
      return result;
    }

    v19 = *a4;
    v20 = a4[1].f64[0];
    if (cnnavigation::ECEFToLLA(&v19, a2, &v17, 0, &v15))
    {
      return result;
    }
  }

  if (a5 == 1)
  {
    v15 = *a1;
    v12 = a1[1].f64[0];
    goto LABEL_11;
  }

  if (!a5)
  {
    v15 = vsubq_f64(*a1, v19);
    v12 = a1[1].f64[0] - v20;
LABEL_11:
    v16 = v12;
    (*(*a7 + 16))(a7, v17.f64[0], v17.f64[1]);
    sub_1D0BED7A0(a7, v15.f64, &v13);
    *a6 = v13;
    result = v14;
    *(a6 + 16) = v14;
  }

  return result;
}

double cnnavigation::ECEFToENU(float64x2_t *a1, int a2, int a3, float64x2_t *a4, int a5, uint64_t a6)
{
  v8 = 0;
  v11 = 0x300000003;
  v9 = &unk_1F4CD5DD0;
  v10 = xmmword_1D0E76C10;
  v12 = &v13;
  v7 = &unk_1F4CD5D50;
  return cnnavigation::ECEFToENU(a1, a2, a3, a4, a5, a6, &v7, COERCE_DOUBLE(0x300000003));
}

double sub_1D0BED7A0(uint64_t a1, double *a2, double *a3)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 36);
    v5 = &v3[v4];
    v6 = &v3[2 * v4];
    *a3 = *v5 * a2[1] + *v3 * *a2 + *v6 * a2[2];
    a3[1] = v5[1] * a2[1] + v3[1] * *a2 + v3[((2 * v4) | 1)] * a2[2];
    result = v5[2] * a2[1] + v3[2] * *a2 + v6[2] * a2[2];
    a3[2] = result;
  }

  return result;
}

uint64_t sub_1D0BED838(uint64_t a1)
{
  *(a1 + 24) = 0xA00000001;
  *a1 = &unk_1F4CED1A0;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0EA12E0;
  return sub_1D0BBBC00(a1, 0.0);
}

double sub_1D0BED87C(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v6 = *(a1 + 12);
  if (v7 == 1 || v6 == 1)
  {
    v9 = *(a1 + 16);
    if (a2 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = -a2;
    }

    v11 = v9 + v10;
    *(a3 + 8) = v11;
    *(a3 + 12) = v11;
    *(a3 + 16) = v11 * v11;
    *(a3 + 20) = v11;
    sub_1D0BBBC00(a3, 0.0);
    if (v9 >= 1)
    {
      v13 = *(a1 + 32);
      if (a2 >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = -a2;
      }

      v15 = v9 + v14;
      v16 = (*(a3 + 32) + 8 * (v15 * (a2 & ~(a2 >> 31)) - (a2 & (a2 >> 31))));
      do
      {
        v17 = *v13++;
        result = v17;
        *v16 = v17;
        v16 += v15 + 1;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    if (v6 >= v7)
    {
      v18 = *(a1 + 8);
    }

    else
    {
      v18 = *(a1 + 12);
    }

    if (v6 - v7 <= a2)
    {
      v19 = *(a1 + 12);
    }

    else
    {
      v19 = v7 + a2;
    }

    v20 = v6 - v7;
    if (v6 >= v7)
    {
      v19 = v7 + a2;
    }

    if (a2 >= 0)
    {
      v19 = v18;
    }

    v21 = v18 - a2;
    v22 = v20 < a2;
    v23 = v20 - a2 + v18;
    if (v22)
    {
      v18 = v23;
    }

    if (v6 > v7)
    {
      LODWORD(v24) = v18;
    }

    else
    {
      LODWORD(v24) = v21;
    }

    if (a2 >= 1)
    {
      v24 = v24;
    }

    else
    {
      v24 = v19;
    }

    v25 = v24 & ~(v24 >> 31);
    *(a3 + 8) = v25;
    *(a3 + 12) = 1;
    *(a3 + 16) = v25;
    *(a3 + 20) = v25;
    if (v24 >= 1)
    {
      v26 = v7 + 1;
      v27 = v7 * (a2 & ~(a2 >> 31)) - (a2 & (a2 >> 31));
      v28 = *(a3 + 32);
      v29 = (*(a1 + 32) + 8 * v27);
      v30 = 8 * v26;
      do
      {
        result = *v29;
        *v28++ = *v29;
        v29 = (v29 + v30);
        --v24;
      }

      while (v24);
    }
  }

  return result;
}

uint64_t sub_1D0BED9C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000001;
  *&v5 = 0x100000001;
  *(&v5 + 1) = 0x100000001;
  *(a1 + 8) = v5;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CED538;
  *(a1 + 48) = a2;
  *(a1 + 80) = 0x100000001;
  *(a1 + 56) = &unk_1F4CDF158;
  *(a1 + 64) = v5;
  *(a1 + 88) = a1 + 96;
  sub_1D0B9F5D4(a1 + 56, a3);
  v7 = *(a1 + 64);
  v6 = *(a1 + 68);
  *(a1 + 8) = v7;
  *(a1 + 12) = v6;
  v8 = (v6 * v7);
  *(a1 + 16) = v8;
  *(a1 + 20) = v7;
  if (v8 >= 1)
  {
    v9 = *(a1 + 88);
    v10 = *(a2 + 32);
    v11 = *(a1 + 32);
    do
    {
      v12 = *v9++;
      *v11++ = *(v10 + 8 * v12);
      --v8;
    }

    while (v8);
  }

  return a1;
}

double sub_1D0BEDA98(uint64_t a1, unsigned int a2, double *a3)
{
  if (*(a1 + 16) != a2)
  {
    __assert_rtn("operator=", "cnsubvector.h", 347, "this->num_elements_ == A.num_elements_");
  }

  if (a2 >= 1)
  {
    v3 = *(a1 + 88);
    v4 = *(*(a1 + 48) + 32);
    v5 = *(a1 + 32);
    v6 = a2;
    do
    {
      v7 = *a3++;
      result = v7;
      v9 = *v3++;
      *(v4 + 8 * v9) = result;
      *v5++ = result;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_1D0BEDB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 12);
  sub_1D0BEDD40(v27, *(a2 + 12));
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = vdupq_n_s64(v6 - 1);
    v9 = xmmword_1D0E84440;
    v10 = xmmword_1D0E7DD30;
    v11 = (v27[4] + 8);
    v12 = vdupq_n_s64(4uLL);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v8, v10));
      if (vuzp1_s16(v13, *v8.i8).u8[0])
      {
        *(v11 - 2) = v7;
      }

      if (vuzp1_s16(v13, *&v8).i8[2])
      {
        *(v11 - 1) = v7 + 1;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v9))).i32[1])
      {
        *v11 = v7 + 2;
        v11[1] = v7 + 3;
      }

      v7 += 4;
      v9 = vaddq_s64(v9, v12);
      v10 = vaddq_s64(v10, v12);
      v11 += 4;
    }

    while (((v6 + 3) & 0xFFFFFFFC) != v7);
  }

  *(a1 + 24) = 0xA00000001;
  *(a1 + 8) = xmmword_1D0EA12E0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CED580;
  *(a1 + 152) = 0x100000001;
  *(a1 + 120) = a2;
  *(a1 + 128) = &unk_1F4CDF158;
  *&v14 = 0x100000001;
  *(&v14 + 1) = 0x100000001;
  *(a1 + 136) = v14;
  *(a1 + 160) = a1 + 168;
  *(a1 + 200) = 0x10000000ALL;
  *(a1 + 176) = &unk_1F4CED1E8;
  *(a1 + 184) = xmmword_1D0E87BE0;
  *(a1 + 208) = a1 + 216;
  sub_1D0B9F5D4(a1 + 128, a3);
  result = sub_1D0B9F5D4(a1 + 176, v27);
  v16 = *(a1 + 144);
  v17 = *(a1 + 192);
  *(a1 + 8) = v16;
  *(a1 + 12) = v17;
  *(a1 + 16) = v17 * v16;
  *(a1 + 20) = v16;
  if (v17)
  {
    v18 = 0;
    v19 = 0;
    v20 = *(a2 + 20);
    v21 = *(a2 + 32);
    do
    {
      if (v16)
      {
        v22 = *(a1 + 160);
        v23 = *(*(a1 + 208) + 4 * v19) * v20;
        v24 = *(a1 + 32);
        v25 = v18;
        result = v16;
        do
        {
          v26 = *v22++;
          *(v24 + 8 * v25++) = *(v21 + 8 * (v26 + v23));
          --result;
        }

        while (result);
      }

      ++v19;
      v18 += v16;
    }

    while (v19 != v17);
  }

  return result;
}

uint64_t sub_1D0BEDD40(uint64_t result, int a2)
{
  *(result + 24) = 0x10000000ALL;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CED1E8;
  if (a2 < 0)
  {
    __assert_rtn("CNMatrix", "cnmatrix.h", 419, "nr >= 0");
  }

  *(result + 8) = a2;
  *(result + 12) = 1;
  *(result + 16) = a2;
  *(result + 20) = a2;
  *(result + 32) = result + 40;
  return result;
}

uint64_t sub_1D0BEDDF0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != *(a2 + 8))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 376, "this->num_rows_ == A.num_rows_");
  }

  v3 = *(result + 12);
  if (v3 != *(a2 + 12))
  {
    __assert_rtn("operator=", "cnsubmatrix.h", 377, "this->num_cols_ == A.num_cols_");
  }

  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 32);
    do
    {
      if (v2)
      {
        v7 = *(result + 120);
        v8 = *(result + 160);
        v9 = *(v7 + 20) * *(*(result + 208) + 4 * v5);
        v10 = *(v7 + 32);
        v11 = *(result + 32);
        v12 = *(result + 20) * v5;
        v13 = v4;
        v14 = v2;
        do
        {
          v15 = *(v6 + 8 * v13);
          v16 = *v8++;
          *(v10 + 8 * (v16 + v9)) = v15;
          *(v11 + 8 * v12++) = v15;
          ++v13;
          --v14;
        }

        while (v14);
      }

      ++v5;
      v4 += v2;
    }

    while (v5 != v3);
  }

  return result;
}

void sub_1D0BEDF5C(uint64_t a1)
{
  *(a1 + 24) = 0x1400000040;
  *a1 = &unk_1F4CED5C8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0EA1350;
  sub_1D0BEDEDC(a1);
}

void sub_1D0BEDFC4(_Unwind_Exception *exception_object)
{
  v3 = v1[5];
  v1[5] = 0;
  if (v3)
  {
    MEMORY[0x1D387EC80](v3, 0x1000C8000313F17);
  }

  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0BEE00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x10000002CLL;
  *(a1 + 8) = xmmword_1D0EA1270;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CED6A0;
  *(a1 + 392) = a2;
  *(a1 + 424) = 0x10000002CLL;
  *(a1 + 400) = &unk_1F4CECE00;
  *(a1 + 408) = xmmword_1D0EA1270;
  *(a1 + 432) = a1 + 440;
  sub_1D0B9F5D4(a1 + 400, a3);
  v5 = *(a1 + 408);
  v6 = *(a1 + 412);
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  v7 = (v6 * v5);
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  if (v7 >= 1)
  {
    v8 = *(a1 + 432);
    v9 = *(a2 + 32);
    v10 = *(a1 + 32);
    do
    {
      v11 = *v8++;
      *v10++ = *(v9 + 8 * v11);
      --v7;
    }

    while (v7);
  }

  return a1;
}

void cnstatistics::InverseChi2(cnstatistics *this, double a2, double a3)
{
  if (a3 >= 0.0 && a2 >= 0.0 && a2 <= 1.0 && fabs(a2) >= 2.22044605e-16)
  {
    v4 = fabs(a3);
    if (fabs(a2 + -1.0) >= 2.22044605e-16 && v4 != INFINITY && v4 >= 2.22044605e-16)
    {
      cnstatistics::InverseGamma(this, a2, a3 * 0.5, 2.0);
    }
  }
}

void cnstatistics::InverseGamma(cnstatistics *this, double a2, double a3, double a4)
{
  if (a3 >= 0.0)
  {
    v47[1] = v13;
    v47[2] = v12;
    v47[3] = v11;
    v47[4] = v10;
    v47[5] = v9;
    v47[6] = v8;
    v47[7] = v7;
    v47[8] = v6;
    v47[19] = v4;
    v47[20] = v5;
    v17 = fabs(a3);
    if (v17 != INFINITY && a4 > 0.0 && a2 >= 0.0 && a2 <= 1.0 && fabs(a2) >= 2.22044605e-16 && fabs(a2 + -1.0) >= 2.22044605e-16 && v17 >= 2.22044605e-16 && fabs(a4) != INFINITY)
    {
      v47[0] = a3;
      v18 = ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF || a3 < 0.0;
      v19 = !v18;
      if (v18)
      {
        sub_1D0D26D6C("boost::math::gamma_distribution<%1%>::gamma_distribution", "Shape parameter is %1%, but must be > 0 !", v47);
      }

      v20 = log(a3);
      v21 = log(a3 + 1.0) - v20;
      v22 = v20 + v21 * -0.5;
      v23 = sqrt(v21 + v21);
      sub_1D0BABF68(a2 + a2);
      v25.n128_u64[0] = exp(v22 - v23 * v24);
      v32 = 500;
      v46 = v25.n128_f64[0];
      while (1)
      {
        v47[0] = a3;
        if (!v19)
        {
          sub_1D0D26D6C("boost::math::cdf(const gamma_distribution<%1%>&, %1%)", "Shape parameter is %1%, but must be > 0 !", v47);
        }

        if ((v25.n128_i64[0] <= -1 || ((v25.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) - 0x10000000000000) >> 53 >= 0x3FF) && v25.n128_u64[0] - 1 >= 0xFFFFFFFFFFFFFLL && (v25.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          sub_1D0D26D6C("boost::math::cdf(const gamma_distribution<%1%>&, %1%)", "Random variate is %1% but must be >= 0 !", &v46);
        }

        v36 = sub_1D0BEEA20(1, 0, v47, 0, a3, v25, v26, v27, v28, v29, v30, v31);
        if (fabs(v36) > 1.79769313e308)
        {
          sub_1D0D27B28("gamma_p<%1%>(%1%, %1%)", "numeric overflow");
        }

        v37 = a2 - v36;
        if ((*&v46 <= -1 || ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v46 - 1) >= 0xFFFFFFFFFFFFFLL && (*&v46 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          sub_1D0D26D6C("boost::math::pdf(const gamma_distribution<%1%>&, %1%)", "Random variate is %1% but must be >= 0 !", &v46);
        }

        v41 = 0.0;
        if (v46 != 0.0)
        {
          sub_1D0BEF464(v47, a3, v46);
          v41 = v42;
          if (fabs(v42) > 1.79769313e308)
          {
            sub_1D0D27B28("boost::math::gamma_p_derivative<%1%>(%1%, %1%)", "numeric overflow");
          }
        }

        v43 = v37 / fmax(v41, 2.22507386e-308);
        if (fabs(v43) <= 1.8189894e-12)
        {
          break;
        }

        v26 = v46 * 0.1;
        v27 = v46 * 10.0;
        v44 = v43 + v46;
        v28 = v46 * 10.0;
        if (v46 * 10.0 < v44)
        {
          v44 = v46 * 10.0;
        }

        if (v26 > v44)
        {
          v44 = v46 * 0.1;
        }

        v25.n128_f64[0] = v44;
        v46 = v44;
        if (!--v32)
        {
          LOWORD(v47[0]) = 10;
          v45 = 4;
          cnprint::CNPrinter::Print(v47, &v45, "Error: InverseGamma failed to converge for p=%lg, a=%lg, b=%lg.", a2, a3, a4);
          return;
        }
      }
    }
  }
}

double sub_1D0BEE5E0(int a1, double a2)
{
  v3 = a1;
  if (a2 < 0.0)
  {
    if ((a1 & 1) == 0)
    {
      return -sub_1D0BEE5E0(0, -a2);
    }

    v4 = -a2;
    if (a2 >= -0.5)
    {
      return sub_1D0BEE5E0(0, v4) + 1.0;
    }

    else
    {
      return 2.0 - sub_1D0BEE5E0(1, v4);
    }
  }

  if (a2 < 0.5)
  {
    if (a2 >= 1.0e-10)
    {
      v8 = vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D0E7E350, xmmword_1D0E7E340, a2 * a2 * (a2 * a2)), a2 * a2), vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D0E7E330, xmmword_1D0E7E320, a2 * a2 * (a2 * a2)), a2 * a2 * (a2 * a2)), xmmword_1D0E7E360));
      v6 = (vdivq_f64(v8, vdupq_laneq_s64(v8, 1)).f64[0] + 1.04494858) * a2;
    }

    else
    {
      v6 = 0.0;
      if (a2 != 0.0)
      {
        v6 = a2 * 0.0033791671 + a2 * 1.125;
      }
    }

    goto LABEL_25;
  }

  if (a1)
  {
    v7 = 28.0;
  }

  else
  {
    v7 = 5.92999983;
  }

  v3 = a1 ^ 1;
  if (a2 >= v7)
  {
    v6 = 0.0;
    goto LABEL_25;
  }

  if (a2 < 1.5)
  {
    v9 = a2 + -0.5;
    v10.f64[0] = v9 * v9 * 0.0195049001 + 0.191003696;
    v10.f64[1] = v9 * v9 * (v9 * v9 * 0.00000337511472 + 0.123850975) + 1.42628005;
    v11 = vaddq_f64(vaddq_f64(vmulq_n_f64(v10, v9 * v9), xmmword_1D0E7E310), vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D0E7E2F0, xmmword_1D0E7E2E0, v9 * v9), v9 * v9), xmmword_1D0E7E300), a2 + -0.5));
    v6 = exp(-(a2 * a2)) / a2 * (vdivq_f64(v11, vdupq_laneq_s64(v11, 1)).f64[0] + 0.405935764);
    goto LABEL_25;
  }

  if (a2 < 2.5)
  {
    v12 = a2 + -1.5;
    v13 = vaddq_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D0E7E2B0, xmmword_1D0E7E2A0, v12 * v12), v12 * v12), xmmword_1D0E7E2D0), vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D0E7E290, xmmword_1D0E7E280, v12 * v12), v12 * v12), xmmword_1D0E7E2C0), a2 + -1.5));
    v14 = vdivq_f64(v13, vdupq_laneq_s64(v13, 1)).f64[0] + 0.506728172;
    v15 = frexp(a2, &__e);
    v16 = __e;
LABEL_23:
    v19 = ldexp(v15, 26);
    v20 = ldexp(floor(v19), v16 - 26);
    v21 = a2 - v20;
    v22 = v20 * v20 - a2 * a2 + (v20 + v20) * (a2 - v20);
    v23 = exp(-(a2 * a2));
    v6 = v14 * (v23 * exp(-(v22 + v21 * v21)) / a2);
    goto LABEL_25;
  }

  if (a2 < 4.5)
  {
    v17 = a2 + -3.5;
    v18 = vaddq_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D0E7E250, xmmword_1D0E7E240, v17 * v17), v17 * v17), xmmword_1D0E7E270), vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(xmmword_1D0E7E230, xmmword_1D0E7E220, v17 * v17), v17 * v17), xmmword_1D0E7E260), a2 + -3.5));
    v14 = vdivq_f64(v18, vdupq_laneq_s64(v18, 1)).f64[0] + 0.540575027;
    v15 = frexp(a2, &v35);
    v16 = v35;
    goto LABEL_23;
  }

  v38 = 1.0 / a2;
  v24 = sub_1D0C4E35C(dbl_1D0E7E570, &v38);
  v37 = 1.0 / a2;
  v25 = v24 / sub_1D0C4E35C(dbl_1D0E7E5A8, &v37) + 0.557909012;
  v26 = frexp(a2, &v36);
  v27 = v36;
  v28 = ldexp(v26, 26);
  v29 = ldexp(floor(v28), v27 - 26);
  v30 = a2 - v29;
  v31 = v29 * v29 - a2 * a2 + (v29 + v29) * (a2 - v29);
  v32 = exp(-(a2 * a2));
  v6 = v32 * exp(-(v31 + v30 * v30)) / a2 * v25;
LABEL_25:
  if (v3)
  {
    return 1.0 - v6;
  }

  else
  {
    return v6;
  }
}

long double sub_1D0BEEA20(int a1, int a2, uint64_t a3, double *a4, double a5, __n128 a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v80 = a6.n128_f64[0];
  v81 = a5;
  if (a5 <= 0.0)
  {
    sub_1D0C50B00(qword_1EC5FB400, "Argument a to the incomplete gamma function must be greater than zero (got a=%1%).", &v81, a4);
  }

  v12 = a6.n128_f64[0];
  if (a6.n128_f64[0] < 0.0)
  {
    sub_1D0C50B00(qword_1EC5FB400, "Argument x to the incomplete gamma function must be >= 0 (got x=%1%).", &v80, a4);
  }

  v16 = a2;
  v18 = a5;
  if (a5 < 170.0 || (a1 & 1) != 0)
  {
    if (a4 && (a1 & 1) == 0)
    {
      __assert_rtn("gamma_incomplete_imp", "gamma.hpp", 1221, "(p_derivative == 0) || normalised");
    }

    a6.n128_f64[0] = a6.n128_f64[0] + 1.0;
    v24 = 30.0;
    if (v12 < 709.0 && a5 < 30.0 && a6.n128_f64[0] >= a5)
    {
      v27 = floor(a5);
      if (v27 == a5)
      {
        a6.n128_u64[0] = 0x3FE3333333333333;
        if (v12 > 0.6)
        {
          v35 = sub_1D0C00AD0(a5, v12, a3, a4);
          if ((a1 & 1) == 0)
          {
            v36 = v35 * sub_1D0D2A640(v18, v28, v29, v30, v31, v32, v33, v34);
            if (v16)
            {
              goto LABEL_162;
            }

            goto LABEL_159;
          }

          goto LABEL_152;
        }
      }

      else
      {
        a6.n128_f64[0] = vabdd_f64(v27, a5);
        v24 = 0.5;
        if (v12 > 0.2 && a6.n128_f64[0] == 0.5)
        {
          v35 = sub_1D0BEF33C(a4, a5, v12);
          if ((a1 & 1) == 0)
          {
            v35 = v35 * sub_1D0D2A640(v18, v28, v29, v30, v31, v32, v33, v34);
          }

          if (!a4 || *a4 != 0.0)
          {
            v16 ^= 1u;
            goto LABEL_153;
          }

          v54 = sub_1D0BEF5BC(a3, &v79, v18, v12);
          *a4 = v54;
          v28.n128_u64[0] = 1.0;
          if ((a1 & (v35 > 1.0)) != 0)
          {
            v36 = 1.0;
          }

          else
          {
            v36 = v35;
          }

          if (v16)
          {
            goto LABEL_164;
          }

          goto LABEL_157;
        }
      }
    }

    if (a5 > 1.0 && v12 < 0.0000000149011612)
    {
      if (a1)
      {
        sub_1D0C3BB74(&v79, &v84, a5 + 1.0, a6, v24, a8, a9, a10, a11, a12);
        if (fabs(v51) > 1.79769313e308)
        {
          sub_1D0D28B48("boost::math::tgamma<%1%>(%1%)", "numeric overflow");
        }

        v29 = pow(v12, v18) / v51;
      }

      else
      {
        v29 = pow(v12, a5) / a5;
      }

      v28.n128_f64[0] = v80;
      v31 = v81 + 1.0;
      v30 = 1.0 - v81 * v80 / (v81 + 1.0);
      v35 = v29 * v30;
      if (a4)
      {
        v54 = sub_1D0BEF5BC(a3, &v83, v81, v80);
        *a4 = v54;
        if ((a1 & (v35 > 1.0)) != 0)
        {
          v36 = 1.0;
        }

        else
        {
          v36 = v35;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_164;
        }

        goto LABEL_157;
      }

LABEL_153:
      if ((a1 & (v35 > 1.0)) != 0)
      {
        v36 = 1.0;
      }

      else
      {
        v36 = v35;
      }

      if (!v16)
      {
        goto LABEL_162;
      }

      goto LABEL_157;
    }

    if (v12 > 1000.0 && (a5 < v12 || fabs(a5 + -50.0) / v12 < 1.0))
    {
      if (a1)
      {
        v52 = sub_1D0BEF5BC(a3, &v79, a5, v12);
      }

      else
      {
        sub_1D0D2A6A0(a5, v12);
      }

      if (a4)
      {
        *a4 = v52;
      }

      v28.n128_f64[0] = v80;
      v35 = v52 / v80;
      if (v52 / v80 != 0.0)
      {
        v65 = sub_1D0D2AEF4(&v81, &v80);
        goto LABEL_105;
      }

      goto LABEL_152;
    }

    if (v12 < 0.5)
    {
      v53 = -0.4 / log(v12);
      goto LABEL_86;
    }

    if (v12 < 1.1)
    {
      v53 = v12 * 0.75;
LABEL_86:
      if (v53 >= v18)
      {
        v79 = 0.0;
        a6.n128_f64[0] = v12;
        sub_1D0D2A7E0(a3, &v79, v16 ^ 1, a4, v18, a6, v24, a8, a9, a10, a11, a12);
        if (a1)
        {
          v64 = v64 / v79;
        }

        goto LABEL_134;
      }

LABEL_87:
      if (a1)
      {
        v63 = sub_1D0BEF5BC(a3, &v79, v18, v12);
      }

      else
      {
        sub_1D0D2A6A0(v18, v12);
      }

      v35 = v63;
      if (a4)
      {
        *a4 = v63;
      }

      if (v63 == 0.0)
      {
        goto LABEL_153;
      }

      if (v16)
      {
        if (a1)
        {
          v69 = v81;
          v70 = 1.0 / v35;
        }

        else
        {
          v73 = sub_1D0D2A640(v81, v28, v29, v30, v31, v32, v33, v34);
          v71 = 0.0;
          v69 = v81;
          if (v35 < 1.0 && v35 * 1.79769313e308 <= v73 || (v70 = v73 / v35, v81 >= 1.0) && 1.79769313e308 / v81 <= v70)
          {
            v72 = 0;
            goto LABEL_132;
          }
        }

        v71 = -(v69 * v70);
        v72 = 1;
      }

      else
      {
        v72 = 0;
        v71 = 0.0;
        v69 = v81;
      }

LABEL_132:
      v74 = sub_1D0D2A59C(v69, v80, v71);
      v28.n128_f64[0] = v81;
      v75 = v74 / v81;
      if ((v72 & 1) == 0)
      {
        v35 = v35 * v75;
        goto LABEL_153;
      }

      v64 = -(v35 * v75);
LABEL_134:
      if ((a1 & (v64 > 1.0)) != 0)
      {
        v36 = 1.0;
      }

      else
      {
        v36 = v64;
      }

      goto LABEL_162;
    }

    if (a5 > 20.0 && a1)
    {
      v67 = (v12 - a5) / a5;
      if (v18 > 200.0)
      {
        if (20.0 / v18 <= v67 * v67)
        {
          goto LABEL_114;
        }

        goto LABEL_139;
      }

      if (fabs(v67) < 0.4)
      {
LABEL_139:
        v35 = sub_1D0D2A97C(v18, v12);
        if (v12 >= v18)
        {
          v16 ^= 1u;
        }

        if (!a4)
        {
          goto LABEL_153;
        }

        v54 = sub_1D0BEF5BC(a3, &v79, v18, v12);
        *a4 = v54;
        v28.n128_u64[0] = 1.0;
        if (v35 <= 1.0)
        {
          v36 = v35;
        }

        else
        {
          v36 = 1.0;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_164;
        }

LABEL_157:
        v76 = 1.0;
        if (a1)
        {
LABEL_161:
          v36 = v76 - v36;
LABEL_162:
          if (!a4)
          {
            return v36;
          }

          v54 = *a4;
LABEL_164:
          v78 = v80;
          if (v80 < 1.0 && v80 * 1.79769313e308 < v54)
          {
            *a4 = 8.98846567e307;
            v54 = 8.98846567e307;
          }

          *a4 = v54 / v78;
          return v36;
        }

        v18 = v81;
LABEL_159:
        sub_1D0C3BB74(&v83, &v82, v18, v28, v29, v30, v31, v32, v33, v34);
        v76 = v77;
        if (fabs(v77) > 1.79769313e308)
        {
          sub_1D0D28B48("boost::math::tgamma<%1%>(%1%)", "numeric overflow");
        }

        goto LABEL_161;
      }
    }

LABEL_114:
    if (v12 + -1.0 / (v12 * 3.0) >= v18)
    {
      if (a1)
      {
        v68 = sub_1D0BEF5BC(a3, &v79, v18, v12);
      }

      else
      {
        sub_1D0D2A6A0(v18, v12);
      }

      v35 = v68;
      if (a4)
      {
        *a4 = v68;
      }

      if (v68 != 0.0)
      {
        v65 = sub_1D0D2A4F0(v81, v80, 2.22044605e-16);
LABEL_105:
        v66 = v35 * v65;
        v28.n128_u64[0] = 1.0;
        if ((a1 & (v66 > 1.0)) != 0)
        {
          v36 = 1.0;
        }

        else
        {
          v36 = v66;
        }

        if (v16)
        {
          goto LABEL_162;
        }

        goto LABEL_157;
      }

LABEL_152:
      v16 ^= 1u;
      goto LABEL_153;
    }

    goto LABEL_87;
  }

  if (a5 * 4.0 >= a6.n128_f64[0] || a2 == 0)
  {
    if (a2)
    {
      v20 = sub_1D0BEEA20(1, 1, a3, a4, a5, a6);
      if (v20 == 0.0)
      {
        v21 = log(1.0 / (v18 * 12.0) + 1.0 + 1.0 / (v18 * 288.0 * v18)) - v18;
        v22 = v21 + (v18 + -0.5) * log(v18) + 0.918938533;
        if (a4)
        {
          v23 = log(v12);
          *a4 = exp(-(v12 - v18 * v23));
        }

        goto LABEL_54;
      }
    }

    else if (a6.n128_f64[0] * 4.0 < a5 || (v20 = sub_1D0BEEA20(1, 0, a3, a4, a5, a6), v20 == 0.0))
    {
      v49 = log(v12);
      v38 = -(v12 - v18 * v49);
      if (a4)
      {
        *a4 = exp(-(v12 - v18 * v49));
      }

      v48 = sub_1D0D2A59C(v18, v12, 0.0) / v18;
      goto LABEL_53;
    }

    v55 = log(v20);
    v22 = v55 + sub_1D0D2A48C(0, v18, v56, v57, v58, v59, v60, v61, v62);
    goto LABEL_54;
  }

  v37 = log(a6.n128_f64[0]);
  v38 = -(v12 - v18 * v37);
  if (a4)
  {
    *a4 = exp(-(v12 - v18 * v37));
  }

  v39 = v12 - v18 + 1.0;
  v40 = v39 + 2.0;
  if (v39 + 2.0 == 0.0)
  {
    v41 = 3.56011817e-307;
  }

  else
  {
    v41 = v39 + 2.0;
  }

  v42 = 0.0;
  v43 = 2;
  v44 = v41;
  do
  {
    v40 = v40 + 2.0;
    v45 = (v18 - v43) * v43;
    v46 = v40 + v45 * v42;
    v44 = v40 + v45 / v44;
    if (v44 == 0.0)
    {
      v44 = 3.56011817e-307;
    }

    if (v46 == 0.0)
    {
      v42 = 2.80889552e306;
    }

    else
    {
      v42 = 1.0 / v46;
    }

    v41 = v41 * (v42 * v44);
  }

  while (fabs(v42 * v44 + -1.0) > 2.22044605e-16 && v43++ != 0);
  v48 = 1.0 / (v39 + (v18 + -1.0) / v41);
LABEL_53:
  v22 = v38 + log(v48);
LABEL_54:
  if (v22 > 709.0)
  {
    sub_1D0D28B48(qword_1EC5FB400, "Overflow Error");
  }

  return exp(v22);
}

double sub_1D0BEF33C(double *a1, double a2, double a3)
{
  v6 = sqrt(a3);
  v7 = sub_1D0BEE5E0(1, v6);
  if (fabs(v7) > 1.79769313e308)
  {
    sub_1D0D28B48("boost::math::erfc<%1%>(%1%, %1%)", "numeric overflow");
  }

  if (a2 <= 1.0 || v7 == 0.0)
  {
    if (!a1)
    {
      return v7;
    }

    v14 = v6 * exp(-a3) / 1.77245385;
LABEL_12:
    *a1 = v14;
    return v7;
  }

  v8 = exp(-a3);
  v9 = sqrt(a3 * 3.14159265);
  v10 = v8 / v9 * a3 + v8 / v9 * a3;
  v11 = 2.0;
  if (a2 > 2.0)
  {
    v12 = 3;
    v13 = v10;
    do
    {
      v13 = v13 / (v11 + -0.5) * a3;
      v10 = v10 + v13;
      v11 = v12++;
    }

    while (v11 < a2);
  }

  v7 = v7 + v10;
  v14 = 0.0;
  if (a1)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_1D0BEF464(uint64_t a1, double a2, long double a3)
{
  v17 = a3;
  v18 = a2;
  if (a2 <= 0.0)
  {
    sub_1D0C50B00("boost::math::gamma_p_derivative<%1%>(%1%, %1%)", "Argument a to the incomplete gamma function must be greater than zero (got a=%1%).", &v18);
  }

  if (a3 < 0.0)
  {
    sub_1D0C50B00("boost::math::gamma_p_derivative<%1%>(%1%, %1%)", "Argument x to the incomplete gamma function must be >= 0 (got x=%1%).", &v17);
  }

  if (a3 == 0.0)
  {
    if (a2 >= 1.0)
    {
      return;
    }

LABEL_18:
    sub_1D0D28B48("boost::math::gamma_p_derivative<%1%>(%1%, %1%)", "Overflow Error");
  }

  v5 = sub_1D0BEF5BC(a1, &v20, a2, a3);
  if (a3 < 1.0 && a3 * 1.79769313e308 < v5)
  {
    goto LABEL_18;
  }

  if (v5 == 0.0)
  {
    v7 = log(a3);
    v8 = -(a3 - a2 * v7);
    v16 = sub_1D0D28C80(&v20, &v19, 0, a2, v9, v10, v11, v12, v13, v14, v15);
    if (fabs(v16) > 1.79769313e308)
    {
      sub_1D0D28B48("boost::math::lgamma<%1%>(%1%)", "numeric overflow");
    }

    exp(v8 - v16 - v7);
  }
}

long double sub_1D0BEF5BC(uint64_t a1, uint64_t a2, double a3, long double a4)
{
  v62 = a3;
  result = 0.0;
  if (a4 >= 1.79769313e308)
  {
    return result;
  }

  if (a3 >= 1.0)
  {
    v20 = a3 + 6.02468004 + -0.5;
    if (a3 > 150.0)
    {
      v21 = (a4 - a3 + -6.02468004 + 0.5) / v20;
      if (fabs(v21 * v21 * a3) <= 100.0)
      {
        v63 = (a4 - a3 + -6.02468004 + 0.5) / v20;
        if (v21 < -1.0)
        {
          sub_1D0C50B00(qword_1EC5FB3F8, "log1pmx(x) requires x > -1, but got x = %1%.", &v63);
        }

        if (v21 == -1.0)
        {
          sub_1D0D28B48(qword_1EC5FB3F8, "Overflow Error");
        }

        v56 = fabs(v21);
        if (v56 <= 0.949999988)
        {
          v58 = -v21;
          if (v56 >= 2.22044605e-16)
          {
            v57 = 0.0;
            v59 = 2;
            v60 = 1000000;
            do
            {
              v21 = v21 * v58;
              v61 = v21 / v59;
              v57 = v57 + v61;
              if (fabs(v57 * 2.22044605e-16) >= fabs(v61))
              {
                break;
              }

              ++v59;
              --v60;
            }

            while (v60);
            if ((1000000 - v60) >= 0xF4240)
            {
              v64 = (1000000 - v60);
              sub_1D0D29B54(qword_1EC5FB3F8, "Series evaluation exceeded %1% iterations, giving up now.", &v64);
            }
          }

          else
          {
            v57 = v21 * v58 * 0.5;
          }
        }

        else
        {
          v57 = log(v21 + 1.0) - v21;
        }

        v52 = a4 * -5.52468004 / v20 + a3 * v57;
        goto LABEL_38;
      }
    }

    v22 = a4 / v20;
    v23 = log(a4 / v20);
    v24 = v23 * a3;
    v25 = a3 - a4;
    if (a3 - a4 >= v23 * a3)
    {
      v26 = v23 * a3;
    }

    else
    {
      v26 = a3 - a4;
    }

    if (v26 <= -708.0 || (v24 >= v25 ? (v27 = v24) : (v27 = a3 - a4), v27 >= 709.0))
    {
      if (v26 * 0.5 <= -708.0 || (v24 >= v25 ? (v46 = v24) : (v46 = a3 - a4), v46 * 0.5 >= 709.0))
      {
        if (v26 * 0.25 <= -708.0 || (v24 >= v25 ? (v49 = v24) : (v49 = a3 - a4), a3 >= a4 || v49 * 0.25 >= 709.0))
        {
          v54 = v25 / a3;
          if (v25 / a3 > -708.0 && v54 < 709.0)
          {
            v55 = exp(v54);
            v53 = pow(v55 * a4 / v20, a3);
            goto LABEL_39;
          }

          v52 = v25 + v24;
LABEL_38:
          v53 = exp(v52);
LABEL_39:
          v36 = v53;
          return v36 * (sqrt(v20 / 2.71828183) / sub_1D0BEF9DC(dbl_1D0E7F258, dword_1D0E7F2C0, &v62, v20 / 2.71828183, v29, v30, v31, v32, v33, v34, v35));
        }

        v50 = pow(v22, a3 * 0.25);
        v51 = exp(v25 * 0.25);
        v48 = v50 * v51 * (v50 * v51);
      }

      else
      {
        v47 = pow(v22, a3 * 0.5);
        v48 = v47 * exp(v25 * 0.5);
      }

      v36 = v48 * v48;
    }

    else
    {
      v28 = pow(a4 / v20, a3);
      v36 = exp(v25) * v28;
    }

    return v36 * (sqrt(v20 / 2.71828183) / sub_1D0BEF9DC(dbl_1D0E7F258, dword_1D0E7F2C0, &v62, v20 / 2.71828183, v29, v30, v31, v32, v33, v34, v35));
  }

  v9 = -a4;
  if (a4 <= -708.0)
  {
    v37 = a3 * log(a4) - a4;
    v45 = v37 - sub_1D0D28C80(a1, a2, 0, a3, v38, v39, v40, v41, v42, v43, v44);

    return exp(v45);
  }

  else
  {
    v10 = pow(a4, a3);
    v11 = v10 * exp(v9);
    sub_1D0C3BB74(a1, a2, a3, v12, v13, v14, v15, v16, v17, v18);
    return v11 / v19;
  }
}

double sub_1D0BEF9DC(float64_t *a1, _DWORD *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  v21 = *a3;
  if (*a3 <= 1.0)
  {
    v41 = v21 * v21;
    v23.f64[0] = a1[11];
    v24.f64[0] = a1[12];
    LODWORD(a10) = a2[11];
    LODWORD(a9) = a2[12];
    v27 = *&a9;
    LODWORD(a11) = a2[9];
    LODWORD(a9) = a2[10];
    v28 = *&a9;
    v29 = *&a10;
    v30 = *&a11;
    v26.f64[0] = a1[9];
    v25.f64[0] = a1[10];
    LODWORD(v14) = a2[7];
    LODWORD(a11) = a2[8];
    v33 = *&a11;
    v34 = v14;
    v32.f64[0] = a1[7];
    v31.f64[0] = a1[8];
    LODWORD(v16) = a2[5];
    LODWORD(v15) = a2[6];
    v37 = v15;
    v38 = v16;
    v36.f64[0] = a1[5];
    v35.f64[0] = a1[6];
    LODWORD(v19) = a2[3];
    LODWORD(v17) = a2[4];
    v42 = v17;
    v43 = v19;
    v40.f64[0] = a1[3];
    v39.f64[0] = a1[4];
    LODWORD(v11) = a2[1];
    LODWORD(v20) = a2[2];
    v46 = v20;
    v47 = v11;
    v45.f64[0] = a1[1];
    v44.f64[0] = a1[2];
    v48.f64[0] = *a1;
  }

  else
  {
    *&v22 = v21 * v21;
    v21 = 1.0 / v21;
    v24.f64[0] = *a1;
    v23.f64[0] = a1[1];
    v25.f64[0] = a1[2];
    v26.f64[0] = a1[3];
    LODWORD(a10) = *a2;
    LODWORD(a11) = a2[1];
    v27 = *&a10;
    LODWORD(a10) = a2[2];
    LODWORD(v14) = a2[3];
    v28 = *&a10;
    v29 = *&a11;
    v30 = v14;
    v31.f64[0] = a1[4];
    v32.f64[0] = a1[5];
    LODWORD(v14) = a2[4];
    LODWORD(v15) = a2[5];
    v33 = v14;
    v34 = v15;
    v35.f64[0] = a1[6];
    v36.f64[0] = a1[7];
    LODWORD(v16) = a2[6];
    LODWORD(v18) = a2[7];
    v37 = v16;
    v38 = v18;
    v39.f64[0] = a1[8];
    v40.f64[0] = a1[9];
    v41 = 1.0 / *&v22;
    LODWORD(v22) = a2[8];
    LODWORD(v20) = a2[9];
    v42 = v22;
    v43 = v20;
    v44.f64[0] = a1[10];
    v45.f64[0] = a1[11];
    LODWORD(v11) = a2[10];
    LODWORD(v12) = a2[11];
    v46 = v11;
    v47 = v12;
    v48.f64[0] = a1[12];
    a2 += 12;
  }

  LODWORD(v13) = *a2;
  v24.f64[1] = v27;
  v25.f64[1] = v28;
  v23.f64[1] = v29;
  v26.f64[1] = v30;
  v31.f64[1] = v33;
  v32.f64[1] = v34;
  v35.f64[1] = v37;
  v36.f64[1] = v38;
  v39.f64[1] = v42;
  v40.f64[1] = v43;
  v44.f64[1] = v46;
  v45.f64[1] = v47;
  v48.f64[1] = v13;
  v49 = vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(v26, v23, v41), v41), v32), v41), v36), v41), v40), v41), v45), v21), vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmlaq_n_f64(v25, v24, v41), v41), v31), v41), v35), v41), v39), v41), v44), v41), v48));
  *&result = *&vdivq_f64(v49, vdupq_laneq_s64(v49, 1));
  return result;
}

uint64_t sub_1D0BEFB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x10000000ALL;
  *a1 = &unk_1F4CEAE48;
  *(a1 + 8) = xmmword_1D0E87BE0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0BEFC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = *(a4 + 8);
    do
    {
      v8 = *(a4 + 16);
      if (v7 >= v8)
      {
        v10 = (v7 - *a4) >> 5;
        if ((v10 + 1) >> 59)
        {
          sub_1D0C5663C();
        }

        v11 = v8 - *a4;
        v12 = v11 >> 4;
        if (v11 >> 4 <= (v10 + 1))
        {
          v12 = v10 + 1;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFE0)
        {
          v13 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        v21[4] = a4;
        if (v13)
        {
          sub_1D0BA5DE4(a4, v13);
        }

        v14 = 32 * v10;
        *v14 = *v5;
        v15 = *(v5 + 8);
        *(v14 + 24) = *(v5 + 24);
        *(v14 + 8) = v15;
        *(v5 + 16) = 0;
        *(v5 + 24) = 0;
        *(v5 + 8) = 0;
        v7 = 32 * v10 + 32;
        v16 = *(a4 + 8) - *a4;
        v17 = 32 * v10 - v16;
        memcpy((v14 - v16), *a4, v16);
        v18 = *a4;
        *a4 = v17;
        v21[0] = v18;
        v21[1] = v18;
        *(a4 + 8) = v7;
        v21[2] = v18;
        v19 = *(a4 + 16);
        *(a4 + 16) = 0;
        v21[3] = v19;
        sub_1D0DA1008(v21);
      }

      else
      {
        *v7 = *v5;
        v9 = *(v5 + 8);
        *(v7 + 24) = *(v5 + 24);
        *(v7 + 8) = v9;
        *(v5 + 16) = 0;
        *(v5 + 24) = 0;
        *(v5 + 8) = 0;
        v7 += 32;
      }

      *(a4 + 8) = v7;
      v5 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

const void **sub_1D0BEFD68(const void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      sub_1D0BA5DE4(result, a2);
    }

    sub_1D0C5663C();
  }

  return result;
}

void *sub_1D0BEFE04(void *a1)
{
  *a1 = &unk_1F4CED5C8;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void raven::RavenIonosphereEstimator::AddToAcceptedMeasurementTypeCount(cnprint::CNPrinter *a1, unsigned int **a2)
{
  sub_1D0B751F4(__p, "Accepted");
  raven::RavenIonosphereEstimator::UpdateMeasurementTypeCount(a1, __p, a2, a1 + 3240, a1 + 3636);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0BEFEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenIonosphereEstimator::UpdateMeasurementTypeCount(cnprint::CNPrinter *a1, uint64_t a2, unsigned int **a3, uint64_t a4, uint64_t a5)
{
  v61[2] = *MEMORY[0x1E69E9840];
  v5 = a3[1];
  v6 = *a3;
  if (*a3 != v5)
  {
    do
    {
      ++*(a4 + 4 * *v6);
      v11 = *v6;
      v6 += 8;
      ++*(a5 + 4 * v11);
    }

    while (v6 != v5);
    LogLevel = cnprint::CNPrinter::GetLogLevel(a1);
    if (!LogLevel)
    {
      v52 = a1;
      if (*(a2 + 23) < 0)
      {
        LogLevel = sub_1D0BC39B4(&__dst, *a2, *(a2 + 8));
      }

      else
      {
        __dst = *a2;
      }

      for (i = 0; i != 33; ++i)
      {
        v14 = *(a4 + 4 * i);
        if (v14)
        {
          v15 = "UnknownMeas";
          if (i <= 0x20)
          {
            v15 = off_1E83D8040[i];
          }

          sub_1D0B751F4(&__p, v15);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __dst.__r_.__value_.__l.__size_;
          }

          sub_1D0BBB710(&v54, size + 1);
          if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v17 = &v54;
          }

          else
          {
            v17 = v54.__r_.__value_.__r.__words[0];
          }

          if (size)
          {
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            memmove(v17, p_dst, size);
          }

          *(&v17->__r_.__value_.__l.__data_ + size) = 44;
          if ((v59 & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if ((v59 & 0x80u) == 0)
          {
            v20 = v59;
          }

          else
          {
            v20 = v58;
          }

          v21 = std::string::append(&v54, p_p, v20);
          v22 = *&v21->__r_.__value_.__l.__data_;
          v55.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
          *&v55.__r_.__value_.__l.__data_ = v22;
          v21->__r_.__value_.__l.__size_ = 0;
          v21->__r_.__value_.__r.__words[2] = 0;
          v21->__r_.__value_.__r.__words[0] = 0;
          v23 = std::string::append(&v55, ",", 1uLL);
          v24 = *&v23->__r_.__value_.__l.__data_;
          v56.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
          *&v56.__r_.__value_.__l.__data_ = v24;
          v23->__r_.__value_.__l.__size_ = 0;
          v23->__r_.__value_.__r.__words[2] = 0;
          v23->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v53, v14);
          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &v53;
          }

          else
          {
            v25 = v53.__r_.__value_.__r.__words[0];
          }

          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v26 = v53.__r_.__value_.__l.__size_;
          }

          LogLevel = std::string::append(&v56, v25, v26);
          v27 = *LogLevel;
          v61[0] = LogLevel[1];
          *(v61 + 7) = *(LogLevel + 15);
          v28 = *(LogLevel + 23);
          LogLevel[1] = 0;
          LogLevel[2] = 0;
          *LogLevel = 0;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          __dst.__r_.__value_.__r.__words[0] = v27;
          __dst.__r_.__value_.__l.__size_ = v61[0];
          *(&__dst.__r_.__value_.__r.__words[1] + 7) = *(v61 + 7);
          *(&__dst.__r_.__value_.__s + 23) = v28;
          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v56.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          if (v59 < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (!cnprint::CNPrinter::GetLogLevel(LogLevel))
      {
        LOWORD(__p) = 12;
        v56.__r_.__value_.__s.__data_[0] = 0;
        v29 = &__dst;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v29 = __dst.__r_.__value_.__r.__words[0];
        }

        v30 = cnprint::CNLogFormatter::FormatGeneral(v52 + 4040, v52 + 32, "count_per_update,%s", v29);
        if (*(v52 + 4063) >= 0)
        {
          v31 = v30;
        }

        else
        {
          v31 = *(v52 + 505);
        }

        cnprint::CNPrinter::Print(&__p, &v56, "%s", v31);
      }

      v32 = std::string::operator=(&__dst, a2);
      for (j = 0; j != 33; ++j)
      {
        v34 = *(a5 + 4 * j);
        if (v34)
        {
          v35 = "UnknownMeas";
          if (j <= 0x20)
          {
            v35 = off_1E83D8040[j];
          }

          sub_1D0B751F4(&__p, v35);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v36 = __dst.__r_.__value_.__l.__size_;
          }

          sub_1D0BBB710(&v54, v36 + 1);
          if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v37 = &v54;
          }

          else
          {
            v37 = v54.__r_.__value_.__r.__words[0];
          }

          if (v36)
          {
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &__dst;
            }

            else
            {
              v38 = __dst.__r_.__value_.__r.__words[0];
            }

            memmove(v37, v38, v36);
          }

          *(&v37->__r_.__value_.__l.__data_ + v36) = 44;
          if ((v59 & 0x80u) == 0)
          {
            v39 = &__p;
          }

          else
          {
            v39 = __p;
          }

          if ((v59 & 0x80u) == 0)
          {
            v40 = v59;
          }

          else
          {
            v40 = v58;
          }

          v41 = std::string::append(&v54, v39, v40);
          v42 = *&v41->__r_.__value_.__l.__data_;
          v55.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
          *&v55.__r_.__value_.__l.__data_ = v42;
          v41->__r_.__value_.__l.__size_ = 0;
          v41->__r_.__value_.__r.__words[2] = 0;
          v41->__r_.__value_.__r.__words[0] = 0;
          v43 = std::string::append(&v55, ",", 1uLL);
          v44 = *&v43->__r_.__value_.__l.__data_;
          v56.__r_.__value_.__r.__words[2] = v43->__r_.__value_.__r.__words[2];
          *&v56.__r_.__value_.__l.__data_ = v44;
          v43->__r_.__value_.__l.__size_ = 0;
          v43->__r_.__value_.__r.__words[2] = 0;
          v43->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v53, v34);
          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v45 = &v53;
          }

          else
          {
            v45 = v53.__r_.__value_.__r.__words[0];
          }

          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v46 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v46 = v53.__r_.__value_.__l.__size_;
          }

          v32 = std::string::append(&v56, v45, v46);
          v47 = v32->__r_.__value_.__r.__words[0];
          v61[0] = v32->__r_.__value_.__l.__size_;
          *(v61 + 7) = *(&v32->__r_.__value_.__r.__words[1] + 7);
          v48 = HIBYTE(v32->__r_.__value_.__r.__words[2]);
          v32->__r_.__value_.__l.__size_ = 0;
          v32->__r_.__value_.__r.__words[2] = 0;
          v32->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          __dst.__r_.__value_.__r.__words[0] = v47;
          __dst.__r_.__value_.__l.__size_ = v61[0];
          *(&__dst.__r_.__value_.__r.__words[1] + 7) = *(v61 + 7);
          *(&__dst.__r_.__value_.__s + 23) = v48;
          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v56.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          if (v59 < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (!cnprint::CNPrinter::GetLogLevel(v32))
      {
        LOWORD(__p) = 12;
        v56.__r_.__value_.__s.__data_[0] = 0;
        v49 = &__dst;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v49 = __dst.__r_.__value_.__r.__words[0];
        }

        v50 = cnprint::CNLogFormatter::FormatGeneral(v52 + 4040, v52 + 32, "count_cumulative,%s", v49);
        if (*(v52 + 4063) >= 0)
        {
          v51 = v50;
        }

        else
        {
          v51 = *(v52 + 505);
        }

        cnprint::CNPrinter::Print(&__p, &v56, "%s", v51);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }
  }
}

void raven::RavenIonosphereEstimator::AddToRejectedMeasurementTypeCount(cnprint::CNPrinter *a1, unsigned int **a2)
{
  sub_1D0B751F4(__p, "Rejected");
  raven::RavenIonosphereEstimator::UpdateMeasurementTypeCount(a1, __p, a2, a1 + 3372, a1 + 3768);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0BF05B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenIonosphereEstimator::AddToUnusedMeasurementTypeCount(cnprint::CNPrinter *a1, unsigned int **a2)
{
  sub_1D0B751F4(__p, "Unused");
  raven::RavenIonosphereEstimator::UpdateMeasurementTypeCount(a1, __p, a2, a1 + 3504, a1 + 3900);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1D0BF0634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0BF0650(uint64_t a1)
{
  v1 = 1.0 - *(a1 + 56);
  v3 = 1.0 - *(a1 + 64);
  v4 = v1;
  if (*(a1 + 24) == 1)
  {
    *(a1 + 8) = *(a1 + 16);
  }

  return sub_1D0BF06AC(a1 + 8, (a1 + 8), &v4, &v3);
}

uint64_t sub_1D0BF06AC(uint64_t a1, double *a2, double *a3, double *a4)
{
  v4 = *a2;
  if (*a2 < 0.0 || v4 > 1.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      v31 = 2;
      v30 = 1;
      cnprint::CNPrinter::Print(&v31, &v30, "WARNING: DiscreteEventDetector::Update called with bad xbar %.3lf.");
    }

    return 0xFFFFFFFFLL;
  }

  v8 = fabs(*a4);
  if (fabs(*a3) < 2.22044605e-16 && v8 < 2.22044605e-16)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      v29 = 2;
      v28 = 1;
      cnprint::CNPrinter::Print(&v29, &v28, "WARNING: DiscreteEventDetector::Update called with bad pzgx,%.3lf,pzgnx,%.3lf.");
    }

    return 0xFFFFFFFFLL;
  }

  *a1 = v4;
  v11 = 0.0;
  v12 = fmax(1.0 - v4, 0.0);
  v13 = fabs(*a3);
  v14 = fabs(v4) < 2.22044605e-16 || v13 < 2.22044605e-16;
  v15 = 0.0;
  if (!v14)
  {
    v16 = log(*a3);
    v17 = log(v4);
    v15 = exp(v17 + v16);
  }

  v18 = fabs(*a4);
  if (v12 >= 2.22044605e-16 && v18 >= 2.22044605e-16)
  {
    v20 = log(*a4);
    v21 = log(v12);
    v11 = exp(v21 + v20);
  }

  *(a1 + 8) = 0;
  v22 = 0.0;
  if (fabs(v15) >= 2.22044605e-16)
  {
    v23 = v15 + v11;
    if (fabs(v23) >= 2.22044605e-16)
    {
      v24 = log(*a3);
      v25 = log(v4) + v24;
      v26 = log(v23);
      v22 = exp(v25 - v26);
    }
  }

  result = 0;
  *(a1 + 8) = fmin(v22, 1.0);
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_1D0BF08D4(uint64_t a1, _OWORD *a2)
{
  if (*(a1 + 1))
  {
    if (*(a1 + 12704))
    {
      sub_1D0BF09AC(v5);
      v9 = 0x10000002CLL;
      v7 = &unk_1F4CEDCB8;
      v8 = xmmword_1D0EA1270;
      v10 = &v11;
      sub_1D0BF0AB0(a1 + 4680, v5, &v7);
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

uint64_t sub_1D0BF09AC(uint64_t a1)
{
  *(a1 + 24) = 0x10000002CLL;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CECE90;
  for (i = 40; i != 744; i += 16)
  {
    v3 = (a1 + i);
    *v3 = 0;
    v3[1] = 0;
  }

  if (!*(a1 + 24))
  {
    v5 = "this->max_num_rows_ > 0";
    v6 = 394;
    goto LABEL_8;
  }

  if (!*(a1 + 28))
  {
    v5 = "this->max_num_cols_ > 0";
    v6 = 395;
LABEL_8:
    __assert_rtn("CNMatrix", "cnmatrix.h", v6, v5);
  }

  *(a1 + 8) = xmmword_1D0EA1270;
  (*(*a1 + 16))(a1);
  return a1;
}

__n128 sub_1D0BF0AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D0BF0B5C(a1, 1, a2, a3);
  if (*(a1 + 8) == 1 || *(a1 + 12) == 1)
  {
    if (*(a2 + 16) >= 2)
    {
      v8 = 1;
      v9 = 16;
      do
      {
        if (sub_1D0B7CF88((*(a2 + 32) + v9), *(a2 + 32)))
        {
          **(a2 + 32) = *(*(a2 + 32) + v9);
          **(a3 + 32) = *(*(a3 + 32) + 4 * v8);
        }

        ++v8;
        v9 += 16;
      }

      while (v8 < *(a2 + 16));
    }

    result.n128_u64[0] = 0x100000001;
    result.n128_u64[1] = 0x100000001;
    *(a2 + 8) = result;
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t sub_1D0BF0B5C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  if (a2 == 1)
  {
    v7 = *(result + 12);
    *(a3 + 8) = 1;
    *(a3 + 12) = v7;
    *(a3 + 16) = v7;
    *(a3 + 20) = 1;
    *(a4 + 8) = 1;
    *(a4 + 12) = v7;
    *(a4 + 16) = v7;
    *(a4 + 20) = 1;
    if (v7)
    {
      v8 = 0;
      v9 = *(result + 32);
      v10 = *(a3 + 32);
      v11 = *(a4 + 32);
      while (1)
      {
        v12 = *(v6 + 8);
        v13 = v9 + 16 * (v12 * v8);
        v14 = *v13;
        v15 = *(v13 + 8);
        if (v12 >= 2)
        {
          break;
        }

        v16 = 0;
LABEL_22:
        v22 = v10 + 16 * v8;
        *v22 = v14;
        *(v22 + 8) = v15;
        *(v11 + 4 * v8++) = v16;
        if (v8 >= *(v6 + 12))
        {
          return result;
        }
      }

      v16 = 0;
      v17 = 1;
      while (1)
      {
        v18 = v9 + 16 * (v12 * v8 + v17);
        result = *v18;
        v19 = *(v18 + 8);
        if (*v18)
        {
          v20 = 1;
        }

        else
        {
          v20 = (*&v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
        }

        if (!v20)
        {
          goto LABEL_16;
        }

        if (v14 || (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v19 > v15)
        {
          goto LABEL_18;
        }

        v14 = 0;
LABEL_19:
        if (v12 == ++v17)
        {
          goto LABEL_22;
        }
      }

      v21 = result <= v14;
      if (result == v14)
      {
LABEL_16:
        v21 = v19 <= v15;
      }

      if (!v21)
      {
LABEL_18:
        v14 = *v18;
        v15 = v19;
        v16 = v17;
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v23 = *(result + 8);
    *(a3 + 8) = v23;
    *(a3 + 12) = 1;
    *(a3 + 16) = v23;
    *(a3 + 20) = v23;
    *(a4 + 8) = v23;
    *(a4 + 12) = 1;
    *(a4 + 16) = v23;
    *(a4 + 20) = v23;
    if (v23)
    {
      v24 = 0;
      v25 = 0;
      do
      {
        *(*(a3 + 32) + v24) = *(*(result + 32) + v24);
        *(*(a4 + 32) + 4 * v25++) = 0;
        v24 += 16;
      }

      while (v25 < *(result + 8));
    }

    v26 = *(result + 12);
    if (v26 >= 2)
    {
      LODWORD(v27) = *(result + 8);
      for (i = 1; i < v26; ++i)
      {
        if (v27)
        {
          v29 = 0;
          v30 = 0;
          v31 = v27 * i;
          do
          {
            v32 = *(*(v6 + 32) + 16 * (v31 + v30));
            result = sub_1D0B7CF88(&v32, (*(a3 + 32) + v29));
            if (result)
            {
              *(*(a3 + 32) + v29) = v32;
              *(*(a4 + 32) + 4 * v30) = i;
            }

            ++v30;
            v27 = *(v6 + 8);
            v29 += 16;
          }

          while (v30 < v27);
          v26 = *(v6 + 12);
        }
      }
    }
  }

  return result;
}

void sub_1D0BF0D88(uint64_t a1, __n128 *a2)
{
  if (*a1 == 1)
  {
    if (*(a1 + 1) == 1)
    {
      *(a1 + 1) = 0;
    }

    if (*(a1 + 3184))
    {
      if (!sub_1D0B9D420(a2->n128_f64, (a1 + 8)))
      {
        v4 = *(a1 + 3184);
        v36 = 0x100000058;
        v37 = 0;
        v35 = 0;
        v34 = 0;
        v33 = &unk_1F4CECFB0;
        if ((v4 & 0x80000000) == 0)
        {
          v5 = 0;
          v34 = v4 | 0x100000000;
          LODWORD(v35) = v4;
          HIDWORD(v35) = v4;
          v37 = &v38;
          if (v4)
          {
            v6 = *(a1 + 48);
            if (v6 != (a1 + 40))
            {
              v7 = 0;
              v5 = 0;
              v8 = 1;
              do
              {
                if (sub_1D0B7CF88((*(a1 + 96) + v7), a2->n128_f64))
                {
                  *(v37 + v5) = v8 - 1;
                  v6 = v6[1];
                  ++v5;
                }

                else
                {
                  v9 = *v6;
                  v10 = v6[1];
                  v9[1] = v10;
                  *v10 = v9;
                  --*(a1 + 56);
                  sub_1D0B9FF7C(v6 + 2);
                  operator delete(v6);
                  v6 = v10;
                }

                if (v8 >= v4)
                {
                  break;
                }

                ++v8;
                v7 += 16;
              }

              while (v6 != (a1 + 40));
            }
          }

          v34 = v5 | 0x100000000;
          LODWORD(v35) = v5;
          HIDWORD(v35) = v5;
          *(a1 + 3184) = v5;
          sub_1D0BF162C(v19);
          *v19 = &unk_1F4CEDD00;
          v27[82] = a1 + 64;
          v30 = 0x100000058;
          v28 = &unk_1F4CECFB0;
          v29 = xmmword_1D0EA1260;
          v31 = &v32;
          sub_1D0B9F5D4(&v28, &v33);
          *&v19[8] = v29;
          *&v19[16] = DWORD1(v29) * v29;
          *&v19[20] = v29;
          if (DWORD1(v29) * v29 >= 1)
          {
            v11 = 0;
            v12 = 0;
            v13 = 4 * (DWORD1(v29) * v29);
            do
            {
              *&v21[v11] = *(*(a1 + 96) + 16 * *(v31 + v12));
              v12 += 4;
              v11 += 2;
            }

            while (v13 != v12);
          }

          sub_1D0BF181C(a1 + 64, v19);
          sub_1D0BF173C(v19, a1 + 1512, &v33);
          sub_1D0B9F5D4(a1 + 1512, v19);
          v20 = 0x100000058;
          *&v19[8] = xmmword_1D0EA1260;
          v21 = v22;
          *v19 = &unk_1F4CEDD90;
          v22[88] = a1 + 1904;
          v25 = 0x100000058;
          v23 = &unk_1F4CECFB0;
          v24 = xmmword_1D0EA1260;
          v26 = v27;
          sub_1D0B9F5D4(&v23, &v33);
          *&v19[8] = v24;
          v14 = (DWORD1(v24) * v24);
          *&v19[16] = v14;
          *&v19[20] = v24;
          if (v14 >= 1)
          {
            v15 = *(a1 + 1936);
            v16 = v26;
            v17 = v21;
            do
            {
              v18 = *v16++;
              *v17++ = *(v15 + 8 * v18);
              --v14;
            }

            while (v14);
          }

          sub_1D0B894B0(a1 + 1904, v19);
          sub_1D0BF18AC(v19, a1 + 2648, &v33);
        }

        __assert_rtn("CNMatrix", "cnmatrix.h", 419, "nr >= 0");
      }
    }

    else
    {
      *v19 = *(a1 + 8);
      sub_1D0E15A54(a1);
      sub_1D0BADC18(a1, a2);
      *a1 = 0;
      sub_1D0BADC18(a1, v19);
    }
  }
}

double sub_1D0BF1450(_BYTE *a1, __n128 *a2)
{
  sub_1D0BF0D88(a1, a2);
  *a1 = 0;

  *&result = sub_1D0BADC18(a1, a2).n128_u64[0];
  return result;
}

void *sub_1D0BF1494(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0C05A00(a3, a2[1]);
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
    *a3 = sub_1D0BF1494;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CED158;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CED158);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_GnssGeometryFreePsrArgs_RavenIonosphere>::__id;
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

uint64_t sub_1D0BF1580(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 504) = &unk_1F4CDFE98;
  if (*(a1 + 535) < 0)
  {
    operator delete(*(a1 + 512));
  }

  *(a1 + 504) = &unk_1F4CD5F70;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  return a1;
}

uint64_t sub_1D0BF162C(uint64_t a1)
{
  *(a1 + 24) = 0x100000058;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CED040;
  for (i = 40; i != 1448; i += 16)
  {
    v3 = (a1 + i);
    *v3 = 0;
    v3[1] = 0;
  }

  if (!*(a1 + 24))
  {
    v5 = "this->max_num_rows_ > 0";
    v6 = 394;
    goto LABEL_8;
  }

  if (!*(a1 + 28))
  {
    v5 = "this->max_num_cols_ > 0";
    v6 = 395;
LABEL_8:
    __assert_rtn("CNMatrix", "cnmatrix.h", v6, v5);
  }

  *(a1 + 8) = xmmword_1D0EA1260;
  (*(*a1 + 16))(a1);
  return a1;
}

uint64_t sub_1D0BF173C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000058;
  *(a1 + 8) = xmmword_1D0EA1260;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CEDD48;
  *(a1 + 392) = a2;
  *(a1 + 424) = 0x100000058;
  *(a1 + 400) = &unk_1F4CECFB0;
  *(a1 + 408) = xmmword_1D0EA1260;
  *(a1 + 432) = a1 + 440;
  sub_1D0B9F5D4(a1 + 400, a3);
  v5 = *(a1 + 408);
  v6 = *(a1 + 412);
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  v7 = (v6 * v5);
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  if (v7 >= 1)
  {
    v8 = *(a1 + 432);
    v9 = *(a2 + 32);
    v10 = *(a1 + 32);
    do
    {
      v11 = *v8++;
      *v10++ = *(v9 + 4 * v11);
      --v7;
    }

    while (v7);
  }

  return a1;
}

__n128 sub_1D0BF181C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    v2 = *(a2 + 12);
    *(a1 + 8) = v3;
    *(a1 + 12) = v2;
    v4 = v2 * v3;
    *(a1 + 16) = v4;
    *(a1 + 20) = v3;
    v5 = *(a2 + 16);
    if (v5 > 3)
    {
      v9 = (v5 - 1);
      v10 = *(a1 + 32);
      v11 = *(a2 + 32);
      v12 = v11;
      v13 = v10;
      v14 = v9;
      do
      {
        v15 = *v12++;
        *v13++ = v15;
        --v14;
      }

      while (v14);
      result = v11[v9];
      v10[v9] = result;
    }

    else if (v4 >= 1)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        result = *(*(a2 + 32) + v6);
        *(*(a1 + 32) + v6) = result;
        ++v7;
        v6 += 16;
      }

      while (v7 < *(a1 + 16));
    }
  }

  return result;
}

void sub_1D0BF19DC(_Unwind_Exception *a1)
{
  v1[7] = &unk_1F4CDEAF8;
  *v1 = &unk_1F4CECF68;
  sub_1D0BF1BF8(v2);
  *v1 = &unk_1F4CECDD0;
  _Unwind_Resume(a1);
}

void sub_1D0BF1B4C(uint64_t a1)
{
  *(a1 + 24) = 0x100000058;
  *a1 = &unk_1F4CECF68;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = xmmword_1D0EA1260;
  sub_1D0BF1A44(a1);
}

void sub_1D0BF1BC4(_Unwind_Exception *a1)
{
  sub_1D0BF1BF8(v2);
  *v1 = &unk_1F4CECDD0;
  _Unwind_Resume(a1);
}

uint64_t *sub_1D0BF1BF8(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = 48 * v4;
      v6 = v2 - 48;
      do
      {
        *(v6 + v5) = &unk_1F4CD5E28;
        v5 -= 48;
      }

      while (v5);
    }

    MEMORY[0x1D387EC80](v3, 0x1081C80E86CE3EELL);
  }

  return a1;
}

uint64_t sub_1D0BF1C7C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = *(a2 + 8);
    v4 = *(a2 + 12);
    *(a1 + 8) = v5;
    *(a1 + 12) = v4;
    v6 = v4 * v5;
    *(a1 + 16) = v6;
    *(a1 + 20) = v5;
    v7 = *(a2 + 16);
    if (v7 > 3)
    {
      v10 = v7 - 1;
      v11 = *(a1 + 32);
      v12 = *(a2 + 32);
      v13 = v11 + 48 * (v7 - 1);
      v14 = v12;
      v15 = (v7 - 1);
      do
      {
        sub_1D0B894B0(v11, v14);
        v11 += 48;
        v14 += 48;
        --v15;
      }

      while (v15);
      sub_1D0B894B0(v13, v12 + 48 * v10);
    }

    else if (v6 >= 1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        sub_1D0B894B0(*(a1 + 32) + v8, *(a2 + 32) + v8);
        ++v9;
        v8 += 48;
      }

      while (v9 < *(a1 + 16));
    }
  }

  return a1;
}

uint64_t sub_1D0BF1D64(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 12);
    *(result + 8) = v2;
    *(result + 12) = v3;
    v4 = v3 * v2;
    *(result + 16) = v4;
    *(result + 20) = v2;
    v5 = *(a2 + 16);
    if (v5 > 3)
    {
      v8 = (v5 - 1);
      v9 = *(result + 32);
      v10 = *(a2 + 32);
      v11 = v10;
      v12 = v9;
      v13 = v8;
      do
      {
        v14 = *v11++;
        *v12++ = v14;
        --v13;
      }

      while (v13);
      v9[v8] = v10[v8];
    }

    else if (v4 >= 1)
    {
      v6 = 0;
      v7 = 8 * v4;
      do
      {
        *(*(result + 32) + v6) = *(*(a2 + 32) + v6);
        v6 += 8;
      }

      while (v7 != v6);
    }
  }

  return result;
}

uint64_t raven::RavenIonosphereEstimator::PopulateEvent(int8x16_t *this, raven::ThinShellIonosphereParametersEvent *a2)
{
  IsConsistent = raven::RavenIonosphereEstimator::IsConsistent(this);
  if ((this->i8[9] & 1) == 0)
  {
    raven::RavenIonosphereEstimator::IsSane(this);
    v26.i16[0] = 12;
    LOBYTE(__src[0]) = 2;
    v9 = cnprint::CNLogFormatter::FormatWarning(&this[252].u64[1], "RavenIonosphereEstimator::PopulateEvent(ThinShellIonosphereParametersEvent& evt), Estimator initialized,%d");
LABEL_29:
    if (this[253].i8[15] >= 0)
    {
      v23 = v9;
    }

    else
    {
      v23 = this[252].i64[1];
    }

    cnprint::CNPrinter::Print(&v26, __src, "%s", v23);
    return 0xFFFFFFFFLL;
  }

  v5 = IsConsistent;
  v6 = sub_1D0BF656C(&this[255].i64[1]);
  IsSane = raven::RavenIonosphereEstimator::IsSane(this);
  if ((v6 & 1) == 0)
  {
    v26.i16[0] = 12;
    LOBYTE(__src[0]) = 2;
    v9 = cnprint::CNLogFormatter::FormatWarning(&this[252].u64[1], "RavenIonosphereEstimator::PopulateEvent(ThinShellIonosphereParametersEvent& evt), Estimator observable,%d");
    goto LABEL_29;
  }

  if ((v5 & 1) == 0)
  {
    v26.i16[0] = 12;
    LOBYTE(__src[0]) = 2;
    v9 = cnprint::CNLogFormatter::FormatWarning(&this[252].u64[1], "RavenIonosphereEstimator::PopulateEvent(ThinShellIonosphereParametersEvent& evt), Estimator consistent,%d");
    goto LABEL_29;
  }

  if ((IsSane & 1) == 0)
  {
    v26.i16[0] = 12;
    LOBYTE(__src[0]) = 2;
    v9 = cnprint::CNLogFormatter::FormatWarning(&this[252].u64[1], "RavenIonosphereEstimator::PopulateEvent(ThinShellIonosphereParametersEvent& evt), Estimator sane,%d");
    goto LABEL_29;
  }

  v36 = 0u;
  v37 = 0u;
  v34[1] = 0u;
  v35 = 0u;
  v38 = 0;
  v39 = 0x7FF8000000000000;
  v34[0] = this[2];
  raven::PopulateAllTimeFields(v34, &this[35].i64[1], 0, v34[0]);
  if (v37)
  {
    v8 = (&v37 + 8);
  }

  else
  {
    if ((BYTE8(v35) & 1) == 0)
    {
      v26.i16[0] = 12;
      LOBYTE(__src[0]) = 3;
      v9 = cnprint::CNLogFormatter::FormatWarning(&this[252].u64[1], "RavenIonosphereEstimator::PopulateEvent(ThinShellIonosphereParametersEvent& evt), cannot set applicable_time");
      goto LABEL_29;
    }

    v8 = &v36;
  }

  *(a2 + 152) = *v8;
  *(a2 + 104) = 1;
  *(a2 + 105) = raven::RavenIonosphereEstimator::IsConverged(this);
  v26 = this[2];
  *(a2 + 14) = CNTimeSpan::operator-(&v26, this[1].i64, v26, v10);
  *(a2 + 15) = v11;
  if ((this[126].i8[8] & 1) == 0)
  {
    v26.i16[0] = 12;
    LOBYTE(__src[0]) = 2;
    v9 = cnprint::CNLogFormatter::FormatWarning(&this[252].u64[1], "RavenIonosphereEstimator::PopulateEvent(ThinShellIonosphereParametersEvent& evt),device position invalid");
    goto LABEL_29;
  }

  *(a2 + 8) = this[127];
  *(a2 + 18) = this[128].i64[0];
  v31 = 0x10000000ALL;
  v29 = &unk_1F4CEAE48;
  v30 = xmmword_1D0E87BE0;
  v32 = &v33;
  v12 = 136;
  if (!this[391].i32[3])
  {
    v12 = 1;
  }

  sub_1D0B894B0(&v29, &this[255].i64[v12 + 1]);
  v13 = sub_1D0BF22F0(&this[255].i64[1], &v26);
  v14 = v32;
  *(a2 + 21) = *v32;
  *(a2 + 22) = v14[1];
  *(a2 + 23) = v14[2];
  *(a2 + 24) = v14[3];
  *(a2 + 25) = v14[4];
  *(a2 + 26) = v14[5];
  *(a2 + 27) = v14[6];
  LogLevel = cnprint::CNPrinter::GetLogLevel(v13);
  if (LogLevel <= 1)
  {
    LOWORD(__src[0]) = 12;
    v25 = 1;
    v16 = cnprint::CNLogFormatter::FormatGeneral(&this[252].i64[1], this[29].i64, "#iono,hmax,%.3lf,vtec0,%.3lf,dvtec_dtheta,%.3lf,dvtec_dphi,%.3lf,d2vtec_dtheta2,%.3lf,d2vtec_dthetadphi,%.3lf,d2vtec_dphi2,%.3lf,converged,%d", *(a2 + 21), *(a2 + 22), *(a2 + 23), *(a2 + 24), *(a2 + 25), *(a2 + 26), *(a2 + 27), *(a2 + 105));
    if (this[253].i8[15] >= 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = this[252].i64[1];
    }

    cnprint::CNPrinter::Print(__src, &v25, "%s", v17);
  }

  v18 = v28;
  *(a2 + 28) = *v28;
  v19 = v27;
  *(a2 + 29) = v18[v27 + 1];
  *(a2 + 30) = v18[2 * v19 + 2];
  *(a2 + 31) = v18[3 * v19 + 3];
  *(a2 + 32) = v18[4 * v19 + 4];
  *(a2 + 33) = v18[5 * v19 + 5];
  *(a2 + 34) = v18[6 * v19 + 6];
  if (!cnprint::CNPrinter::GetLogLevel(LogLevel))
  {
    LOWORD(__src[0]) = 12;
    v25 = 0;
    v20 = cnprint::CNLogFormatter::FormatGeneral(&this[252].i64[1], this[29].i64, "#iono,phmax_hmax,%.3lf,pvtec0_vtec0,%.3lf,pdvtec_dtheta_dvtec_dtheta,%.3lf,pdvtec_dphi_dvtec_dphi,%.3lf,pd2vtec_dtheta2_d2vtec_dtheta2,%.3lf,pd2vtec_dthetadphi_d2vtec_dthetadphi,%.3lf,pd2vtec_dphi2_d2vtec_dphi2,%.3lf", *(a2 + 28), *(a2 + 29), *(a2 + 30), *(a2 + 31), *(a2 + 32), *(a2 + 33), *(a2 + 34));
    if (this[253].i8[15] >= 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = this[252].i64[1];
    }

    cnprint::CNPrinter::Print(__src, &v25, "%s", v21);
  }

  raven::RavenIonosphereEstimator::GetEstimatorStatus(__src, this);
  memcpy(a2 + 280, __src, 0x224uLL);
  return 0;
}

uint64_t raven::RavenIonosphereEstimator::IsConsistent(raven::RavenIonosphereEstimator *this)
{
  if (!*(this + 9))
  {
    return 1;
  }

  v2 = this + 8392;
  if (*(this + (*(this + 2102) != 0) + 1049) < *(*(this + 504) + 3064))
  {
    return 1;
  }

  if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v7 = 12;
    v6 = 1;
    v4 = cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 32, "consistency failure,%.1lf > %.1lf", *&v2[8 * (*(this + 2102) != 0)], *(*(this + 504) + 3064));
    if (*(this + 4063) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *(this + 505);
    }

    cnprint::CNPrinter::Print(&v7, &v6, "%s", v5);
  }

  return 0;
}

uint64_t sub_1D0BF22F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = 0xA0000000ALL;
  v19 = &unk_1F4CE2180;
  v20 = xmmword_1D0E84630;
  v22 = &v23;
  if (*(a1 + 2180))
  {
    v16 = 0xA0000000ALL;
    v14 = &unk_1F4CE2180;
    v15 = xmmword_1D0E84630;
    v17 = v18;
    v31 = 0x10000000ALL;
    v30 = xmmword_1D0E87BE0;
    v29 = &unk_1F4CED1E8;
    v32 = v33;
    v26 = 0x100000028;
    v25 = xmmword_1D0EA1280;
    v24 = &unk_1F4CED230;
    v27 = v28;
    v3 = a1 + 1208;
  }

  else
  {
    v16 = 0xA0000000ALL;
    v14 = &unk_1F4CE2180;
    v15 = xmmword_1D0E84630;
    v17 = v18;
    v31 = 0x10000000ALL;
    v30 = xmmword_1D0E87BE0;
    v29 = &unk_1F4CED1E8;
    v32 = v33;
    v26 = 0x100000028;
    v25 = xmmword_1D0EA1280;
    v24 = &unk_1F4CED230;
    v27 = v28;
    v3 = a1 + 128;
  }

  sub_1D0B9F868(v3, &v29, &v24, &v14);
  sub_1D0B894B0(&v19, &v14);
  v4 = DWORD1(v20);
  v5 = v20;
  v16 = 0xA0000000ALL;
  v14 = &unk_1F4CE2180;
  v17 = v18;
  *&v15 = __PAIR64__(v20, DWORD1(v20));
  DWORD2(v15) = v20 * DWORD1(v20);
  HIDWORD(v15) = DWORD1(v20);
  if (DWORD1(v20))
  {
    v6 = 0;
    v7 = 0;
    v8 = HIDWORD(v20);
    v9 = v22;
    do
    {
      v10 = v6;
      v11 = v7;
      for (i = v5; i; --i)
      {
        v18[v11] = v9[v10];
        v11 += v4;
        ++v10;
      }

      ++v7;
      v6 += v8;
    }

    while (v7 != v4);
  }

  *(a2 + 24) = 0xA0000000ALL;
  *a2 = &unk_1F4CE2180;
  *(a2 + 8) = xmmword_1D0E84630;
  *(a2 + 32) = a2 + 40;
  return sub_1D0B89390(&v19, &v14, a2);
}

__n128 raven::RavenIonosphereEstimator::GetEstimatorStatus@<Q0>(uint64_t *__return_ptr a1@<X8>, raven::RavenIonosphereEstimator *this@<X0>)
{
  *(a1 + 96) = 0;
  *(a1 + 13) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 17) = 0u;
  if (*(this + 9))
  {
    *(a1 + 3) = 0uLL;
    *(a1 + 4) = 0uLL;
    *(a1 + 1) = 0uLL;
    *(a1 + 2) = 0uLL;
    v4 = *(this + 2);
    *a1 = v4;
    a1[10] = 0;
    a1[11] = 0x7FF8000000000000;
    raven::PopulateAllTimeFields(a1, this + 464, 0, v4);
    if (*(this + 9))
    {
      v5 = sub_1D0BF656C(this + 4088);
    }

    else
    {
      v5 = 0;
    }

    IsSane = raven::RavenIonosphereEstimator::IsSane(this);
    IsConsistent = raven::RavenIonosphereEstimator::IsConsistent(this);
    v14 = IsConsistent;
    if (v5 && IsSane && (IsConsistent & 1) != 0)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
      if (cnprint::CNPrinter::GetLogLevel(IsConsistent) <= 1)
      {
        v31.i16[0] = 12;
        v32 = 1;
        v16 = cnprint::CNLogFormatter::FormatGeneral(this + 505, "Estimator unhealthy,observable,%d,sane,%d,consistent,%d", v5, IsSane, v14);
        if (*(this + 4063) >= 0)
        {
          v17 = v16;
        }

        else
        {
          v17 = *(this + 505);
        }

        cnprint::CNPrinter::Print(&v31, &v32, "%s", v17);
      }
    }

    *(a1 + 96) = v15;
    v13.i64[0] = 1.0;
    *(a1 + 13) = 1.0 - *(this + (*(this + 2102) != 0) + 1049);
    v31 = *(this + 2);
    v18 = CNTimeSpan::operator-(&v31, this + 2, v31, v13);
    v19 = *(this + 3732);
    *(a1 + 33) = *(this + 3748);
    *(a1 + 8) = *(this + 201);
    v20 = *(this + 3700);
    *(a1 + 29) = *(this + 3716);
    *(a1 + 31) = v19;
    v21 = *(this + 3636);
    *(a1 + 21) = *(this + 3652);
    v22 = *(this + 3684);
    *(a1 + 23) = *(this + 3668);
    *(a1 + 25) = v22;
    a1[14] = v18;
    a1[15] = v23;
    a1[18] = *(this + 404);
    *(a1 + 70) = *(this + 941);
    *(a1 + 27) = v20;
    *(a1 + 19) = v21;
    v24 = *(this + 3880);
    *(a1 + 380) = *(this + 3864);
    *(a1 + 396) = v24;
    *(a1 + 103) = *(this + 974);
    v25 = *(this + 3816);
    *(a1 + 316) = *(this + 3800);
    *(a1 + 332) = v25;
    v26 = *(this + 3848);
    *(a1 + 348) = *(this + 3832);
    *(a1 + 364) = v26;
    v27 = *(this + 3784);
    *(a1 + 284) = *(this + 3768);
    *(a1 + 300) = v27;
    v28 = *(this + 4012);
    *(a1 + 32) = *(this + 3996);
    *(a1 + 33) = v28;
    *(a1 + 136) = *(this + 1007);
    v29 = *(this + 3948);
    *(a1 + 28) = *(this + 3932);
    *(a1 + 29) = v29;
    v30 = *(this + 3980);
    *(a1 + 30) = *(this + 3964);
    *(a1 + 31) = v30;
    result = *(this + 3916);
    *(a1 + 26) = *(this + 3900);
    *(a1 + 27) = result;
  }

  else
  {
    v6 = *(this + 32);
    *(a1 + 2) = *(this + 31);
    *(a1 + 3) = v6;
    v7 = *(this + 34);
    *(a1 + 4) = *(this + 33);
    *(a1 + 5) = v7;
    v8 = *(this + 29);
    v9 = *(this + 30);
    *a1 = v8;
    *(a1 + 1) = v9;

    raven::PopulateAllTimeFields(a1, this + 464, v8, v9);
  }

  return result;
}

void sub_1D0BF2854(uint64_t a1, raven::RavenSolutionActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BF69A8(v4, a3);
  raven::RavenSolutionActiveObject::WriteThinShellIonosphereParametersToProtobuf(v3, v4);
}

void raven::RavenSolutionActiveObject::WriteThinShellIonosphereParametersToProtobuf(raven::RavenSolutionActiveObject *this, const raven::ThinShellIonosphereParametersEvent *a2)
{
  if (*(*(this + 42) + 3708) == 1 && *(this + 1406))
  {
    CoreNavigation::CLP::LogEntry::LogEntry::LogEntry(v17);
    v19 |= 2u;
    v4 = v18;
    if (!v18)
    {
      operator new();
    }

    *(v18 + 320) |= 2u;
    v5 = *(v4 + 272);
    if (!v5)
    {
      operator new();
    }

    v6 = *(v5 + 8);
    *(v5 + 28) |= 1u;
    if (!v6)
    {
      operator new();
    }

    v7 = *(this + 18);
    v13 = *(this + 17);
    v14 = v7;
    v8 = *(this + 20);
    v15 = *(this + 19);
    v16 = v8;
    v9 = *(this + 16);
    v11 = *(this + 15);
    v10 = &unk_1F4CEF4D8;
    v12 = v9;
    raven::ConvertThinShellIonosphereParametersEventToProtobuf(a2, v6, &v10);
    cnlogging::ProtobufOutputStream::append(*(this + 1406), v17);
    cnlogging::ProtobufOutputStream::flush(*(this + 1406));
    CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(v17);
  }
}

uint64_t raven::RavenIonosphereEstimator::PopulateEvent(raven::RavenIonosphereEstimator *this, raven::ReceiverDifferentialCodeBiasesEvent *a2)
{
  IsConsistent = raven::RavenIonosphereEstimator::IsConsistent(this);
  if ((*(this + 9) & 1) == 0)
  {
    raven::RavenIonosphereEstimator::IsSane(this);
    v22[0] = 12;
    LOBYTE(__src[0]) = 2;
    v18 = cnprint::CNLogFormatter::FormatWarning((this + 4040), "RavenIonosphereEstimator::PopulateEvent(ReceiverDifferentialCodeBiasesEvent& evt), Estimator initialized,%d");
LABEL_17:
    if (*(this + 4063) >= 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = *(this + 505);
    }

    cnprint::CNPrinter::Print(v22, __src, "%s", v19);
    return 0xFFFFFFFFLL;
  }

  v5 = IsConsistent;
  v6 = sub_1D0BF656C(this + 4088);
  IsSane = raven::RavenIonosphereEstimator::IsSane(this);
  if ((v6 & 1) == 0)
  {
    v22[0] = 12;
    LOBYTE(__src[0]) = 2;
    v18 = cnprint::CNLogFormatter::FormatWarning((this + 4040), "RavenIonosphereEstimator::PopulateEvent(ReceiverDifferentialCodeBiasesEvent& evt), Estimator observable,%d");
    goto LABEL_17;
  }

  if ((v5 & 1) == 0)
  {
    v22[0] = 12;
    LOBYTE(__src[0]) = 2;
    v18 = cnprint::CNLogFormatter::FormatWarning((this + 4040), "RavenIonosphereEstimator::PopulateEvent(ReceiverDifferentialCodeBiasesEvent& evt), Estimator consistent,%d");
    goto LABEL_17;
  }

  if ((IsSane & 1) == 0)
  {
    v22[0] = 12;
    LOBYTE(__src[0]) = 2;
    v18 = cnprint::CNLogFormatter::FormatWarning((this + 4040), "RavenIonosphereEstimator::PopulateEvent(ReceiverDifferentialCodeBiasesEvent& evt), Estimator sane,%d");
    goto LABEL_17;
  }

  v27 = 0x10000000ALL;
  v25 = &unk_1F4CEAE48;
  v26 = xmmword_1D0E87BE0;
  v28 = &v29;
  v8 = 1088;
  if (!*(this + 1567))
  {
    v8 = 8;
  }

  sub_1D0B894B0(&v25, this + v8 + 4088);
  sub_1D0BF22F0(this + 4088, v22);
  *(a2 + 104) = 1;
  *(a2 + 105) = raven::RavenIonosphereEstimator::IsConverged(this);
  *(a2 + 7) = *(this + 2);
  *(a2 + 10) = 0u;
  *(a2 + 11) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 9) = 0u;
  *(a2 + 24) = 0;
  *(a2 + 25) = 0x7FF8000000000000;
  v10 = raven::PopulateAllTimeFields(a2 + 112, this + 464, 0, v9);
  v11 = v28;
  *(a2 + 26) = v28[7];
  *(a2 + 28) = v11[9];
  *(a2 + 27) = v11[8];
  v12 = v23;
  v13 = v24;
  *(a2 + 29) = *(v24 + 56 * v23 + 56);
  *(a2 + 30) = *(v13 + 8 * ((8 * v12) | 7));
  v14 = (v13 + 72 * v12);
  *(a2 + 31) = v14[7];
  *(a2 + 32) = *(v13 + (v12 << 6) + 64);
  *(a2 + 33) = v14[8];
  *(a2 + 34) = v14[9];
  if (cnprint::CNPrinter::GetLogLevel(v10) <= 1)
  {
    LOWORD(__src[0]) = 12;
    v21 = 1;
    v15 = cnprint::CNLogFormatter::FormatGeneral(this + 4040, this + 464, "#iono,DCBs,gps,%.2lf,gal,%.2lf,bds,%.2lf,gps_var,%.2lf,gal_var,%.2lf,bds_var,%.2lf", *(a2 + 26), *(a2 + 27), *(a2 + 28), *(a2 + 29), *(a2 + 32), *(a2 + 34));
    if (*(this + 4063) >= 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = *(this + 505);
    }

    cnprint::CNPrinter::Print(__src, &v21, "%s", v16);
  }

  raven::RavenIonosphereEstimator::GetEstimatorStatus(__src, this);
  memcpy(a2 + 280, __src, 0x224uLL);
  return 0;
}

void sub_1D0BF2DF0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) == 1)
  {
    v4 = *(a2 + 24);
  }

  else
  {
    LOWORD(v14.__vftable) = 3;
    LOBYTE(v12) = 5;
    cnprint::CNPrinter::Print(&v14, &v12, "Attempted to access type of uninitialized GenericEvent.");
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
    if (v9 != (off_1F4CEE970 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CEE970 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v14.__vftable = 0;
      std::bad_cast::bad_cast(&v14);
      v14.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(&v14);
    }

    v10 = *(a2 + 16);
    *a1 = &unk_1F4CEE948;

    memcpy((a1 + 8), (v10 + 16), 0x334uLL);
  }

  else
  {
    v12 = 3;
    v11 = 5;
    if (*(a2 + 8) == 1)
    {
      v7 = *(a2 + 24);
    }

    else
    {
      LOWORD(v14.__vftable) = 3;
      v13 = 5;
      cnprint::CNPrinter::Print(&v14, &v13, "Attempted to access type of uninitialized GenericEvent.");
      v7 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v12, &v11, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEE970 & 0x7FFFFFFFFFFFFFFFLL));
    bzero((a1 + 24), 0x328uLL);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEE948;
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
    *(a1 + 105) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 152) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 192) = 0;
    v8 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 200) = v8;
    *(a1 + 216) = v8;
    *(a1 + 232) = v8;
    *(a1 + 248) = v8;
    *(a1 + 264) = 0x7FF8000000000000;
    *(a1 + 272) = 0x7FF8000000000000;
    *(a1 + 280) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 360) = 0;
    *(a1 + 368) = 0x7FF8000000000000;
    *(a1 + 400) = 0u;
    *(a1 + 416) = 0u;
    *(a1 + 384) = 0u;
  }
}

void sub_1D0BF3080(uint64_t a1, cnlogging::ProtobufOutputStream ***a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BF2DF0(v4, a3);
  raven::RavenSolutionActiveObject::WriteReceiverDifferentialCodeBiasesToProtobuf(v3, v4);
}

void raven::RavenSolutionActiveObject::WriteReceiverDifferentialCodeBiasesToProtobuf(cnlogging::ProtobufOutputStream **this, const raven::ReceiverDifferentialCodeBiasesEvent *a2)
{
  if (*(this[42] + 3708) == 1 && this[1406])
  {
    CoreNavigation::CLP::LogEntry::LogEntry::LogEntry(v8);
    v10 |= 2u;
    v5 = v9;
    if (!v9)
    {
      operator new();
    }

    *(v9 + 320) |= 2u;
    v6 = *(v5 + 272);
    if (!v6)
    {
      operator new();
    }

    v7 = *(v6 + 8);
    *(v6 + 28) |= 1u;
    if (!v7)
    {
      operator new();
    }

    raven::ConvertReceiverDifferentialCodeBiasesEventToProtobuf(a2, v7, v4);
    cnlogging::ProtobufOutputStream::append(this[1406], v8);
    cnlogging::ProtobufOutputStream::flush(this[1406]);
    CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(v8);
  }
}

void sub_1D0BF32B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(va);
  _Unwind_Resume(a1);
}

void sub_1D0BF32D0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B99264(v9, a3);
  v4 = raven::RavenPNTEstimator::HandleEvent((v3 + 288), v9);
  if (v5)
  {
    v14 = 12;
    v13 = 2;
    v12[0] = (*(v9[0] + 16))(v9, v4);
    v12[1] = v6;
    (*(v9[0] + 24))(v10, v9);
    if (v11 >= 0)
    {
      v7 = v10;
    }

    else
    {
      v7 = v10[0];
    }

    cnprint::CNLogFormatter::FormatWarning(v3 + 240, v12, "Failed to handle event - %s.", v7);
    if (*(v3 + 263) >= 0)
    {
      v8 = (v3 + 240);
    }

    else
    {
      v8 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(&v14, &v13, "%s", v8);
    if (v11 < 0)
    {
      operator delete(v10[0]);
    }
  }
}

void sub_1D0BF33F0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

double raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::ActivityStateEvent *a2)
{
  v4 = *(this + 2760);
  if (v4 == 1)
  {
    v5 = *(a2 + 104);
    if (((v5 - 4) & 0xFA) != 0 || (v5 <= 7 ? (v6 = v5 == 5) : (v6 = 1), !v6))
    {
      raven::RavenPNTEstimator::SetStateParameterization(this);
    }
  }

  else if (v4 == 2)
  {
    __assert_rtn("HandleEvent", "ravenpntestimator.cpp", 1885, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
  }

  *&result = raven::RavenEstimator::HandleActivityStateEvent(this, a2).n128_u64[0];
  return result;
}

void sub_1D0BF34DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BF69A8(v11, a3);
  if (*(v3 + 224) == 1)
  {
    *v16 = *(v3 + 112);
    raven::GnssMeasurementPreprocessor::UpdateCurrentFrameworkTime((v3 + 232), v16);
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

      v17 = 0.0;
      v16[0] = &unk_1F4CEE030;
      v16[1] = 0;
      LOBYTE(v18) = 0;
      *&v19 = 0;
      *(&v18 + 1) = 0;
      BYTE8(v19) = 0;
      v20 = 0uLL;
      LOBYTE(v21) = 0;
      v22 = 0;
      *(&v21 + 1) = 0;
      v23 = 0x7FF8000000000000;
      v24 = 0;
      v25 = 0;
      v26 = &unk_1F4CD5A50;
      v27 = 0u;
      v28 = 0u;
      v29 = xmmword_1D0E76640;
      v30 = xmmword_1D0E76650;
      v31 = 0;
      if (raven::GnssMeasurementPreprocessor::GetKlobucharParametersEvent((v3 + 232), v16))
      {
        v5 = *(v3 + 112);
        v4 = *(v3 + 120);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v16[1] = v5;
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

        sub_1D0C47D0C(v3, v16);
      }

      v50[0] = &unk_1F4CEF598;
      v16[0] = &v59[4];
      sub_1D0BBBD80(v16);
    }

    else
    {
      LOWORD(v32[0]) = 12;
      LOBYTE(v50[0]) = 2;
      v7 = (*(v11[0] + 16))(v11);
      v9 = v8 + v7;
      (*(v11[0] + 24))(v16, v11);
      if (v17 >= 0.0)
      {
        v10 = v16;
      }

      else
      {
        v10 = v16[0];
      }

      cnprint::CNPrinter::Print(v32, v50, "t,%.3lf,RavenGnssPreprocessorActiveObject Failed to handle event - %s.", v9, v10);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }
    }
  }
}

void sub_1D0BF3884(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x367]) < 0)
  {
    operator delete(STACK[0x350]);
  }

  *(v2 - 184) = v1;
  STACK[0x370] = v2 - 88;
  sub_1D0BBBD80(&STACK[0x370]);
  _Unwind_Resume(a1);
}

uint64_t raven::GnssMeasurementPreprocessor::HandleEvent(raven::GnssMeasurementPreprocessor *this, const raven::ThinShellIonosphereParametersEvent *a2)
{
  v3 = *this;
  if (v3)
  {
    v4 = *(a2 + 104);
    v5 = *(a2 + 120);
    *(this + 149) = *(a2 + 136);
    *(this + 148) = v5;
    *(this + 147) = v4;
    v6 = *(a2 + 152);
    v7 = *(a2 + 168);
    v8 = *(a2 + 184);
    *(this + 153) = *(a2 + 200);
    *(this + 152) = v8;
    *(this + 151) = v7;
    *(this + 150) = v6;
    v9 = *(a2 + 216);
    v10 = *(a2 + 232);
    v11 = *(a2 + 248);
    *(this + 157) = *(a2 + 264);
    *(this + 156) = v11;
    *(this + 155) = v10;
    *(this + 154) = v9;
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v16 = 12;
    v15 = 1;
    v12 = (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v16, &v15, "#gmp,t,%.3lf,GNSS pre-processor not configured, failed to handle ThinShellIonosphereParametersEvent", v13 + v12);
  }

  return v3;
}

uint64_t raven::GnssMeasurementPreprocessor::HandleEvent(raven::GnssMeasurementPreprocessor *this, const raven::ReceiverDifferentialCodeBiasesEvent *a2)
{
  v3 = *this;
  if (v3)
  {
    if (*(this + 2160) == 1)
    {
      memcpy(this + 1336, a2 + 8, 0x334uLL);
    }

    else
    {
      *(this + 166) = &unk_1F4CEE948;
      memcpy(this + 1336, a2 + 8, 0x334uLL);
      *(this + 2160) = 1;
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    v9 = 12;
    v8 = 1;
    v5 = (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v9, &v8, "#gmp,t,%.3lf,GNSS pre-processor not configured, failed to handle ReceiverDifferentialCodeBiasesEvent", v6 + v5);
  }

  return v3;
}

void sub_1D0BF3B28(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = *v1;
  sub_1D0B9FD10(v9, v3);
  *(v2 + 256) = *(v2 + 112);
  sub_1D0BAD0C8(&v24);
  v4 = raven::RavenIntegrityEstimator::HandleEvent((v2 + 240), v9, &v24);
  if (v4)
  {
    if (v12 + v11 >= *(*(v2 + 232) + 1576))
    {
      __p = &unk_1F4CEEBA0;
      v18 = v27;
      v19 = v28;
      v20 = v29;
      v21 = v30;
      v16 = v25;
      v17 = v26;
      v22 = v10;
      v23 = 6;
      if (cnprint::CNPrinter::GetLogLevel(v4) <= 1)
      {
        v14 = 12;
        v13 = 1;
        v7 = v25;
        (*(*v2 + 16))(&v32, v2);
        v8 = v33 >= 0 ? &v32 : v32;
        cnprint::CNPrinter::Print(&v14, &v13, "t, %.3lf, %s, Integrity check on RavenSolutionEvent failed. Initiating error recovery action, %u, on estimator type, %u", *(&v7 + 1) + v7, v8, v23, v22);
        if (SHIBYTE(v33) < 0)
        {
          operator delete(v32);
        }
      }

      operator new();
    }

    if (cnprint::CNPrinter::GetLogLevel(v4) <= 1)
    {
      LOWORD(v32) = 12;
      LOBYTE(v14) = 1;
      v5 = v25;
      (*(*v2 + 16))(&__p, v2);
      if (v16 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      cnprint::CNPrinter::Print(&v32, &v14, "t, %.3lf, %s, Integrity check on RavenSolutionEvent failed. However, estimator activity duration is not large enough to raise an error recovery event on estimator type, %u", *(&v5 + 1) + v5, p_p, v10);
      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p);
      }
    }

    v31 = 1;
  }

  sub_1D0BAE448(v2, &v24);
}

void sub_1D0BF3F70(_Unwind_Exception *a1)
{
  if (*(v1 + 2791) < 0)
  {
    operator delete(*(v2 - 88));
  }

  _Unwind_Resume(a1);
}

uint64_t raven::SolutionChecker::HandleEvent(raven::SolutionChecker *this, const raven::RavenSolutionEvent *a2, raven::RavenSolutionEvent *a3)
{
  if ((*(this + 8) & 1) == 0)
  {
    LOWORD(v78) = 12;
    v80[0].i8[0] = 4;
    v11 = (*(*a2 + 16))(a2, a2, a3);
    v66 = v12 + v11;
    v10 = "t,%.3lf,SolutionChecker, not configured";
    goto LABEL_10;
  }

  v6 = memcpy(a3 + 8, a2 + 8, 0xA51uLL);
  v7 = *(a3 + 208);
  if ((v7 - 1) >= 3)
  {
    if (v7 != 4)
    {
      LOWORD(v78) = 12;
      v80[0].i8[0] = 4;
      v15 = (*(*a2 + 16))(a2);
      v69 = v7;
      v67 = v16 + v15;
      v17 = "t,%.3lf,SolutionChecker: est, %u. Cannot handle received RavenSolutionEvent esimator type. Exiting with check passed return value.";
LABEL_17:
      v20 = v80;
LABEL_18:
      cnprint::CNPrinter::Print(&v78, v20, v17, *&v67, v69);
    }

    return 0;
  }

  if (*(a3 + 209) != 2)
  {
    if (cnprint::CNPrinter::GetLogLevel(v6) <= 1)
    {
      LOWORD(v78) = 12;
      v80[0].i8[0] = 1;
      v18 = (*(*a2 + 16))(a2);
      v69 = v7;
      v67 = v19 + v18;
      v17 = "t,%.3lf,SolutionChecker: est, %u. RavenSolutionEvent is unhealthy. Exiting with check passed return value.";
      goto LABEL_17;
    }

    return 0;
  }

  if ((*(a3 + 1264) & 1) == 0)
  {
    LOWORD(v78) = 12;
    v80[0].i8[0] = 4;
    v21 = (*(*a2 + 16))(a2);
    v68 = v7;
    v66 = v22 + v21;
    v10 = "t,%.3lf,SolutionChecker: est, %u. RavenSolutionEvent has an invalid user position. Exiting with check failed return value.";
    goto LABEL_10;
  }

  if ((*(a3 + 159) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a3 + 160) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a3 + 161) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    LOWORD(v78) = 12;
    v80[0].i8[0] = 4;
    v8 = (*(*a2 + 16))(a2);
    v68 = v7;
    v66 = v9 + v8;
    v10 = "t,%.3lf,SolutionChecker: est, %u. RavenSolutionEvent has a non-finite user position value.";
LABEL_10:
    v13 = v80;
LABEL_11:
    cnprint::CNPrinter::Print(&v78, v13, v10, *&v66, v68, v70, *&v71);
    return 0xFFFFFFFFLL;
  }

  v23 = sqrt(*(a3 + 160) * *(a3 + 160) + *(a3 + 159) * *(a3 + 159) + *(a3 + 161) * *(a3 + 161));
  if (v23 <= 3185504.5 || v23 >= 9556513.5)
  {
    LOWORD(v78) = 12;
    v80[0].i8[0] = 4;
    v31 = (*(*a2 + 16))(a2);
    *&v70 = v23;
    v68 = v7;
    v66 = v32 + v31;
    v10 = "t,%.3lf,SolutionChecker: est, %u. distance_from_earth_center checks failed, distance, %.2lf. Exiting with check failed return value.";
    goto LABEL_10;
  }

  v24 = *(a3 + 162);
  v25 = *(a3 + 165);
  v26 = *(a3 + 167);
  v28 = (v24 < 0 || ((v24 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (v24 - 1) > 0xFFFFFFFFFFFFELL;
  if (v28 || (*(a3 + 165) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || v25 <= 0.0 || (*(a3 + 167) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || v26 <= 0.0)
  {
    LOWORD(v78) = 12;
    v80[0].i8[0] = 4;
    v33 = (*(*a2 + 16))(a2);
    *(&v70 + 1) = v25;
    v71 = v26;
    *&v70 = v24;
    v68 = v7;
    v66 = v34 + v33;
    v10 = "t,%.3lf,SolutionChecker: est, %u. RavenSolutionEvent has a non-finite or non-positive user position covariance diagonal term, pxx, %.2lf, pyy, %.2lf, pzz, %.2lf. Exiting with check failed return value.";
    goto LABEL_10;
  }

  if ((*(a3 + 163) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a3 + 164) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a3 + 166) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    LOWORD(v78) = 12;
    v80[0].i8[0] = 4;
    v29 = (*(*a2 + 16))(a2);
    v71 = *(a3 + 166);
    v70 = *(a3 + 1304);
    v68 = v7;
    v66 = v30 + v29;
    v10 = "t,%.3lf,SolutionChecker: est, %u. RavenSolutionEvent has a non-finite user position covariance cross term, pxy, %.2lf, pxz, %.2lf, pyz, %.2lf. Exiting with check failed return value.";
    goto LABEL_10;
  }

  v35 = *(a2 + 73);
  v36 = *(a2 + 76);
  v80[2] = *(a2 + 75);
  v80[3] = v36;
  v37 = *(a2 + 78);
  v80[4] = *(a2 + 77);
  v80[5] = v37;
  v38 = *(a2 + 74);
  v80[0] = v35;
  v80[1] = v38;
  v39 = *&v35.i64[1] + v35.i64[0];
  if (*&v39 >> 52 >= 0x7FFuLL)
  {
    LOWORD(v78) = 12;
    LOBYTE(v77[0]) = 4;
    v46 = (*(*a2 + 16))(a2);
    *&v70 = v39;
    v68 = v7;
    v66 = v47 + v46;
    v10 = "t,%.3lf,SolutionChecker: est, %u. RavenSolutionEvent time is invalid, time, %.3lf. Exiting with check failed return value.";
    goto LABEL_45;
  }

  v40 = *(this + 2);
  v38.i64[0] = v40[1];
  *v35.i64 = *v40;
  if (COERCE_UNSIGNED_INT64(*v38.i64 + *v35.i64) >> 52 >= 0x7FF)
  {
    LOWORD(v78) = 12;
    LOBYTE(v77[0]) = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v78, v77, "t,%.3lf,SolutionChecker: est, %u. current_time time is invalid, time, %.3lf. Marking the RavenSolution as unhealthy. Exiting with check passed return value.");
  }

  else
  {
    v72 = *(this + 2);
    v41 = CNTimeSpan::operator-(v40, v80, v35, v38);
    v43 = v42 + v41;
    if (v43 > *(this + 12))
    {
      LOWORD(v78) = 12;
      LOBYTE(v77[0]) = 4;
      v44 = (*(*a2 + 16))(a2);
      *&v70 = v43;
      v68 = v7;
      v66 = v45 + v44;
      v10 = "t,%.3lf,SolutionChecker: est, %u. time_difference_from_current_time check failed. Time difference is greater than allowable tolerance, difference, %.3lf. Exiting with check failed return value.";
LABEL_45:
      v13 = v77;
      goto LABEL_11;
    }

    if (v43 < 0.0)
    {
      LOWORD(v78) = 12;
      LOBYTE(v77[0]) = 5;
      v48 = (*(*a2 + 16))(a2);
      *&v70 = v43;
      v68 = v7;
      v66 = v49 + v48;
      v10 = "t,%.3lf,SolutionChecker: est, %u. time_difference_from_current_time check failed. Time difference is negative, difference, %.3lf. Exiting with check failed return value.";
      goto LABEL_45;
    }

    if ((*(this + 9) & 1) == 0)
    {
      LOWORD(v78) = 12;
      LOBYTE(v77[0]) = 2;
      v52 = (*(*a2 + 16))(a2);
      v69 = v7;
      v67 = v53 + v52;
      v17 = "t,%.3lf,SolutionChecker: est, %u. is_active_ == false. Not cross checking with other information. Exiting with check passed return value.";
LABEL_56:
      v20 = v77;
      goto LABEL_18;
    }

    if (v7 == 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(v41))
      {
        return 0;
      }

      LOWORD(v78) = 12;
      LOBYTE(v77[0]) = 0;
      v50 = (*(*a2 + 16))(a2);
      v69 = v7;
      v67 = v51 + v50;
      v17 = "t,%.3lf,SolutionChecker: est, %u. Estimator type to be checked is PassThrough. Exiting with check passed return value.";
      goto LABEL_56;
    }

    LOBYTE(v78) = 1;
    if (sub_1D0B9AF58((v72 + 16), &v78))
    {
      v54 = *(this + 2);
      LOBYTE(v77[0]) = 1;
      v55 = sub_1D0BF4B10((v54 + 16), v77);
      v78 = &unk_1F4CEF7A8;
      memcpy(v79, v55 + 1, sizeof(v79));
      v59 = *(v55 + 73);
      v56 = *(v55 + 76);
      v77[2] = *(v55 + 75);
      v77[3] = v56;
      v57 = *(v55 + 78);
      v77[4] = *(v55 + 77);
      v77[5] = v57;
      v58 = *(v55 + 74);
      v77[0] = v59;
      v77[1] = v58;
      v58.i64[0] = v59.i64[1];
      *v59.i64 = *&v59.i64[1] + v59.i64[0];
      if (v59.i64[0] >> 52 < 0x7FF)
      {
        v60 = CNTimeSpan::operator-(v80, v77, v59, v58);
        v76[0] = v60;
        *&v76[1] = v61;
        if (v60 < 0 || (*v62.i64 = v61, v61 < 0.0))
        {
          v60 = CNTimeSpan::operator-(v76, v62, v63);
          v62.i64[0] = v64;
        }

        if (*v62.i64 + v60 <= *(this + 13))
        {
          v74 = 1;
          if (raven::SolutionChecker::PerformPositionCheck(this, a3, &v74))
          {
            return 0xFFFFFFFFLL;
          }

          if (v74)
          {
            v65 = raven::SolutionChecker::PerformSpeedCheck(this, a3, &v74);
            if (v65)
            {
              return 0xFFFFFFFFLL;
            }

            if (v74)
            {
              if (*(this + 3) < 180.0 || *(this + 4) < 180.0)
              {
                goto LABEL_80;
              }

              v65 = raven::SolutionChecker::PerformDirectionOfTravelCheck(this, a3, &v74);
              if (v65)
              {
                return 0xFFFFFFFFLL;
              }

              if (v74)
              {
LABEL_80:
                if (!cnprint::CNPrinter::GetLogLevel(v65))
                {
                  v75 = 12;
                  v73 = 0;
                  (*(*a2 + 16))(a2);
                  cnprint::CNPrinter::Print(&v75, &v73, "t,%.3lf,SolutionChecker: est, %u. All checks passed. Exiting with check passed return value.");
                }
              }
            }
          }
        }

        else
        {
          v75 = 12;
          v74 = 2;
          (*(*a2 + 16))(a2);
          cnprint::CNPrinter::Print(&v75, &v74, "t,%.3lf,SolutionChecker: est, %u. time_difference_from_passthrough check failed, difference, %.3lf. Exiting with check passed return value.");
        }

        return 0;
      }

      LOWORD(v76[0]) = 12;
      LOBYTE(v75) = 4;
      (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v76, &v75, "t,%.3lf,SolutionChecker: est, %u. Passthrough solution time is invalid, time, %.3lf. Marking the RavenSolution as unhealthy. Exiting with check passed return value.");
    }

    else if (cnprint::CNPrinter::GetLogLevel(0) <= 1)
    {
      LOWORD(v78) = 12;
      LOBYTE(v77[0]) = 1;
      (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v78, v77, "t,%.3lf,SolutionChecker: est, %u. A PassThrough solution has not yet been received to check against. Marking the RavenSolution as unhealthy. Exiting with check passed return value.");
    }
  }

  result = 0;
  *(a3 + 209) = 1;
  return result;
}

uint64_t ***sub_1D0BF4B10(void *a1, unsigned __int8 *a2)
{
  v2 = sub_1D0B9AF58(a1, a2);
  if (!v2)
  {
    sub_1D0C543A8("unordered_map::at: key not found");
  }

  return v2 + 3;
}

uint64_t raven::SolutionChecker::PerformPositionCheck(raven::SolutionChecker *this, raven::RavenSolutionEvent *a2, BOOL *a3)
{
  v6 = *(a2 + 208);
  v127 = *(a2 + 208);
  v7 = *(a2 + 162);
  v8 = *(a2 + 165);
  v9 = *(a2 + 167);
  v124 = 0;
  v125 = 0;
  v126 = 0;
  v10 = raven::SolutionChecker::GetListOfEstimatorsToCheckAgainst(this, &v127, &v124);
  if (v10)
  {
    if (cnprint::CNPrinter::GetLogLevel(v10) <= 1)
    {
      LOWORD(v122[0]) = 12;
      LOBYTE(__p) = 1;
      v11 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(v122, &__p, "t,%.3lf,SolutionChecker: Could not find any RavenSolutions to perform the position check against. Exiting with check passed return value.", v12 + v11);
    }

    v13 = 0;
    *a3 = 0;
    v14 = v124;
  }

  else
  {
    v14 = v124;
    v15 = v125;
    if (v124 == v125)
    {
      goto LABEL_86;
    }

    v112 = v7 + v8 + v9;
    v16 = v124;
    while (1)
    {
      v123 = *v16;
      v17 = *(a2 + 76);
      v122[2] = *(a2 + 75);
      v122[3] = v17;
      v18 = *(a2 + 78);
      v122[4] = *(a2 + 77);
      v122[5] = v18;
      v19 = *(a2 + 74);
      v122[0] = *(a2 + 73);
      v122[1] = v19;
      v20 = v122[0];
      v21 = sub_1D0B9AF58((*(this + 2) + 16), &v123);
      v24 = v21;
      if (!v21)
      {
        sub_1D0C543A8("unordered_map::at: key not found");
      }

      v23.i64[0] = v21[150];
      if (COERCE_UNSIGNED_INT64(*v23.i64 + v21[149]) >> 52 >= 0x7FF)
      {
        break;
      }

      *v22.i64 = *v23.i64 + v21[149];
      v25 = CNTimeSpan::operator-(v122, v21 + 149, v22, v23);
      v118[0] = v25;
      *&v118[1] = v26;
      if (v25 < 0 || (*v27.i64 = v26, v26 < 0.0))
      {
        v25 = CNTimeSpan::operator-(v118, v27, v28);
        v27.i64[0] = v29;
      }

      v30 = *v27.i64 + v25;
      if (v30 <= *(this + 13))
      {
        if ((v24[161] & 1) == 0)
        {
          LOWORD(v128[0]) = 12;
          LOBYTE(v117[0]) = 2;
          v83 = (*(*a2 + 16))(a2);
          v85 = v84;
          sub_1D0B751F4(&__p, off_1E83D7FA8[v123]);
          if (v121 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          cnprint::CNPrinter::Print(v128, v117, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against, %s, contains an invalid position. Exiting with check passed return value.", v85 + v83, v6, p_p);
          if (v121 < 0)
          {
            operator delete(__p);
          }

LABEL_86:
          v13 = 0;
          v91 = 1;
LABEL_87:
          *a3 = v91;
          goto LABEL_88;
        }

        v31 = *(v24 + 172);
        if (!*(v24 + 1368) || (*&v31 > -1 ? (v32 = ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) : (v32 = 1), v32 ? (v33 = (*&v31 - 1) >= 0xFFFFFFFFFFFFFLL) : (v33 = 0), v33 ? (v34 = (*&v31 & 0x7FFFFFFFFFFFFFFFLL) == 0) : (v34 = 1), !v34))
        {
          if (cnprint::CNPrinter::GetLogLevel(v25) <= 1)
          {
            LOWORD(v128[0]) = 12;
            LOBYTE(v117[0]) = 1;
            v79 = (*(*a2 + 16))(a2);
            v81 = v80;
            sub_1D0B751F4(&__p, off_1E83D7FA8[v123]);
            if (v121 >= 0)
            {
              v82 = &__p;
            }

            else
            {
              v82 = __p;
            }

            cnprint::CNPrinter::Print(v128, v117, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against, %s, has an invalid speed,validity,%d,speed,%.2lf. Cannot proceed with speed check or position check. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v81 + v79, v6, v82, *(v24 + 1368), v31);
LABEL_82:
            if (v121 < 0)
            {
              operator delete(__p);
            }
          }

          goto LABEL_84;
        }

        v35 = *(v24 + 165);
        v36 = *(v24 + 168);
        v37 = *(v24 + 170);
        v40 = (v35 < 0.0 || ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v35 - 1) > 0xFFFFFFFFFFFFELL || (v24[168] & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000;
        if (v40 || v36 <= 0.0 || (v24[170] & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000 || v37 <= 0.0)
        {
          LOWORD(v128[0]) = 12;
          LOBYTE(v117[0]) = 4;
          v87 = (*(*a2 + 16))(a2);
          v89 = v88;
          sub_1D0B751F4(&__p, off_1E83D7FA8[v123]);
          if (v121 >= 0)
          {
            v90 = &__p;
          }

          else
          {
            v90 = __p;
          }

          cnprint::CNPrinter::Print(v128, v117, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against, %s, has a non-finite or non-positive user position covariance diagonal term, pxx, %.2lf, pyy, %.2lf, pzz, %.2lf. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v89 + v87, v6, v90, v35, v36, v37);
          goto LABEL_82;
        }

        v115 = *(v24 + 168);
        v116 = *(v24 + 172);
        v114 = *(v24 + 170);
        v41 = *(a2 + 159);
        v42 = *(v24 + 162);
        v43 = *(a2 + 160);
        v44 = *(v24 + 163);
        v45 = *(a2 + 161);
        v46 = *(v24 + 164);
        v47 = (this + 48);
        if (v123 != 1)
        {
          v47 = (this + 40);
          if (v123 != 2)
          {
            LOWORD(__p) = 12;
            LOBYTE(v128[0]) = 4;
            v92 = (*(*a2 + 16))(a2);
            cnprint::CNPrinter::Print(&__p, v128, "t,%.3lf,SolutionChecker: invalid estimator to check against during position check, exiting with check passed return value and continuing other checks", v93 + v92);
            goto LABEL_86;
          }
        }

        v113 = *(v24 + 165);
        v48 = *v47;
        LogLevel = cnprint::CNPrinter::GetLogLevel(v25);
        v50 = sqrt((v43 - v44) * (v43 - v44) + (v41 - v42) * (v41 - v42) + (v45 - v46) * (v45 - v46));
        v51 = v48 + v116 * v30;
        if (!LogLevel)
        {
          LOWORD(v128[0]) = 12;
          LOBYTE(v117[0]) = 0;
          v52 = (*(*a2 + 16))(a2);
          v54 = v53;
          sub_1D0B751F4(&__p, off_1E83D7FA8[v123]);
          v55 = &__p;
          if (v121 < 0)
          {
            v55 = __p;
          }

          cnprint::CNPrinter::Print(v128, v117, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against, %s,position_difference_from_solution_to_check_against: %.2lf, position_difference_from_solution_to_check_against_tolerance_: %.2lf,position_tolerance_accounting_for_time_difference_and_speed: %.2lf, speed_of_solution_to_check_against: %.2lf,time_difference_from_solution_to_check_against: %.2lf", v54 + v52, v6, v55, v50, v48, v51, v116, v30);
          if (v121 < 0)
          {
            operator delete(__p);
          }
        }

        v56 = cnprint::CNPrinter::GetLogLevel(LogLevel);
        *v58.i64 = v114;
        v59 = v113 + v115 + v114;
        v60 = sqrt(v112 + v59);
        if (!v56)
        {
          LOWORD(v128[0]) = 12;
          LOBYTE(v117[0]) = 0;
          v61 = (*(*a2 + 16))(a2);
          v63 = v62;
          sub_1D0B751F4(&__p, off_1E83D7FA8[v123]);
          v64 = &__p;
          if (v121 < 0)
          {
            v64 = __p;
          }

          cnprint::CNPrinter::Print(v128, v117, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against, %s, Position difference, %.2lf,Position difference uncertainty, %.2lf, consistency, %.2lf, position_variance_of_solution_to_check_against, %.2f,position_variance_of_solution_under_test, %.2f", v63 + v61, v6, v64, v50, v60, v50 / v60, v59, v112);
          if (v121 < 0)
          {
            operator delete(__p);
          }
        }

        if (v50 > v51)
        {
          v57.i64[0] = *(this + 7);
          if (v50 / v60 > *v57.i64)
          {
            v95 = *(this + 2);
            if (*(v95 + 1520) == 1)
            {
              v56 = CNTimeSpan::operator-(a2 + 1, (v95 + 1528), v57, v58);
              __p = v56;
              v120 = v96;
              if (v56 < 0 || (*v97.i64 = v96, v96 < 0.0))
              {
                v56 = CNTimeSpan::operator-(&__p, v97, v98);
                v97.i64[0] = v99;
              }

              if (*v97.i64 + v56 < 10.0)
              {
                if (cnprint::CNPrinter::GetLogLevel(v56) <= 1)
                {
                  LOWORD(v128[0]) = 12;
                  LOBYTE(v117[0]) = 1;
                  v100 = (*(*a2 + 16))(a2);
                  v102 = v101;
                  sub_1D0DEC664(&v123, &__p);
                  if (v121 >= 0)
                  {
                    v103 = &__p;
                  }

                  else
                  {
                    v103 = __p;
                  }

                  cnprint::CNPrinter::Print(v128, v117, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against, %s,position_difference_from_solution_to_check_against check failed after recently exiting tunnel, difference, %.2lf, tolerance, %.2lf, consistency, %.2lf, threshold, %.2lf, solution_to_check_against_position_unc, %.2f, sol_position_unc, %.2f. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v102 + v100, v6, v103, v50, v51, v50 / v60, *(this + 7), sqrt(v59), sqrt(v112));
                  goto LABEL_82;
                }

                goto LABEL_84;
              }
            }

            if (cnprint::CNPrinter::GetLogLevel(v56) <= 1)
            {
              LOWORD(v128[0]) = 12;
              LOBYTE(v117[0]) = 1;
              v104 = (*(*a2 + 16))(a2);
              v106 = v105;
              sub_1D0DEC664(&v123, &__p);
              v107 = v121 >= 0 ? &__p : __p;
              cnprint::CNPrinter::Print(v128, v117, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against, %s,position_difference_from_solution_to_check_against check failed, difference, %.2lf, tolerance, %.2lf,consistency, %.2lf, threshold, %.2lf, solution_to_check_against_position_unc, %.2f, sol_position_unc, %.2f.Exiting with check failed return value.", v106 + v104, v6, v107, v50, v51, v50 / v60, *(this + 7), sqrt(v59), sqrt(v112));
              if (v121 < 0)
              {
                operator delete(__p);
              }
            }

            v91 = 0;
            v13 = 0xFFFFFFFFLL;
            goto LABEL_87;
          }

          if (v123 == 1)
          {
            v65 = *(this + 2);
            v117[0] = (*(*a2 + 16))(a2);
            v117[1] = v66;
            if (*(v65 + 656) & 1) != 0 || (*(v65 + 658))
            {
              v128[0] = (*(*(v65 + 432) + 16))();
              v128[1] = v67;
              v70 = CNTimeSpan::operator-(v117, v128, v68, v69);
              __p = v70;
              v120 = v71;
              if (v70 < 0 || (*v72.i64 = v71, v71 < 0.0))
              {
                v70 = CNTimeSpan::operator-(&__p, v72, v73);
                v72.i64[0] = v74;
              }

              if (*v72.i64 + v70 < 5.0)
              {
                if (cnprint::CNPrinter::GetLogLevel(v70) <= 1)
                {
                  LOWORD(v128[0]) = 12;
                  LOBYTE(v117[0]) = 1;
                  v108 = (*(*a2 + 16))(a2);
                  v110 = v109;
                  sub_1D0DEC664(&v123, &__p);
                  if (v121 >= 0)
                  {
                    v111 = &__p;
                  }

                  else
                  {
                    v111 = __p;
                  }

                  cnprint::CNPrinter::Print(v128, v117, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against, %s,position_difference_from_solution_under_check check failed while in tunnel, difference, %.2lf, tolerance, %.2lf,consistency, %.2lf, threshold, %.2lf, solution_to_check_against_position_unc, %.2f, sol_position_unc, %.2f.Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v110 + v108, v6, v111, v50, v51, v50 / v60, *(this + 7), sqrt(v59), sqrt(v112));
                  goto LABEL_82;
                }

LABEL_84:
                v91 = 0;
                v13 = 0;
                *(a2 + 209) = 1;
                goto LABEL_87;
              }
            }
          }
        }
      }

      if (++v16 == v15)
      {
        goto LABEL_86;
      }
    }

    LOWORD(v128[0]) = 12;
    LOBYTE(v118[0]) = 4;
    v75 = (*(*a2 + 16))(a2);
    v77 = v76;
    sub_1D0B751F4(&__p, off_1E83D7FA8[v123]);
    if (v121 >= 0)
    {
      v78 = &__p;
    }

    else
    {
      v78 = __p;
    }

    cnprint::CNPrinter::Print(v128, v118, "t,%.3lf,SolutionChecker: est, %u. solution_to_check_against, %s, solution time is invalid, time, %.3lf. Marking the RavenSolution as unhealthy. Exiting with check passed return value.", v77 + v75, v6, v78, *(&v20 + 1) + v20);
    if (v121 < 0)
    {
      operator delete(__p);
    }

    v13 = 0;
    *(a2 + 209) = 1;
    *a3 = 0;
  }

LABEL_88:
  if (v14)
  {
    operator delete(v14);
  }

  return v13;
}

void sub_1D0BF569C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  v37 = *(v35 - 200);
  if (v37)
  {
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ***sub_1D0BF5758(float *a1, unsigned __int8 *a2)
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
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    sub_1D0D305AC();
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 16) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_1D0BF5968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenDeltaVIOEstimateActiveObject::HandleEvent(raven::RavenDeltaVIOEstimateActiveObject *this, const raven::RavenSolutionEvent *a2, double a3, int8x16_t a4)
{
  if ((*(this + 224) & 1) == 0)
  {
    *v63 = 12;
    v58[0] = 2;
    (*(*this + 16))(__p, this, a2, a3, a4);
    if (v62 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    cnprint::CNPrinter::Print(v63, v58, "%s: not configured", v18);
    if ((SHIBYTE(v62) & 0x80000000) == 0)
    {
      return;
    }

    v19 = __p[0];
    goto LABEL_16;
  }

  v5 = *(this + 1265);
  if (!v5 || !*(this + 480))
  {
    return;
  }

  *__p = *(*(*(this + 1261) + (((v5 + *(this + 1264) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * ((v5 + *(this + 2528) - 1) & 0xF));
  v7 = CNTimeSpan::operator-(a2 + 1, __p, *__p, a4);
  if (v8 + v7 > 6.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v7) < 2)
    {
      *v58 = 12;
      LOBYTE(v52) = 1;
      (*(*this + 16))(__p, this);
      v9 = SHIBYTE(v62);
      v10 = __p[0];
      v12 = *(a2 + 1);
      v11 = *(a2 + 2);
      v13 = *(this + 1265) + *(this + 1264) - 1;
      *v63 = *(*(*(this + 1261) + ((v13 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (v13 & 0xF));
      v15 = CNTimeSpan::operator-(a2 + 1, v63, *v63, v14);
      if (v9 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = v10;
      }

      cnprint::CNPrinter::Print(v58, &v52, "%s: ravel_sol t,%.3lf VIO Buffer is flushed due to no VIO activity for %.3lf [s]", v17, v11 + v12, v16 + v15);
      if (SHIBYTE(v62) < 0)
      {
        operator delete(__p[0]);
      }
    }

    (*(*this + 40))(this);
    return;
  }

  if (*(a2 + 209) != 2 || *(a2 + 1464) != 1)
  {
    return;
  }

  v20 = *(a2 + 208);
  if ((v20 - 2) >= 2)
  {
    if (v20 == 1)
    {
      if (*(this + 5808) == 1)
      {

        memcpy(this + 3160, a2 + 8, 0xA51uLL);
      }

      else
      {
        *(this + 394) = &unk_1F4CEF7A8;
        memcpy(this + 3160, a2 + 8, 0xA51uLL);
        *(this + 5808) = 1;
      }
    }
  }

  else
  {
    if ((*(this + 3144) & 1) == 0)
    {
      *(this + 61) = &unk_1F4CEF7A8;
      memcpy(this + 496, a2 + 8, 0xA51uLL);
      *(this + 3144) = 1;
      return;
    }

    v21 = *(a2 + 73);
    v68 = *(this + 1656);
    v69 = v21;
    v22 = CNTimeSpan::operator-(&v69, &v68, v68, v21);
    if (v23 + v22 >= 3.0)
    {
      memcpy(this + 496, a2 + 8, 0xA51uLL);
      if (*(this + 264))
      {
        v64 = 0x100000003;
        *&v63[8] = xmmword_1D0E7DCC0;
        *v63 = &unk_1F4CDEB28;
        v65 = &v66;
        v66 = *(a2 + 92);
        v67 = *(a2 + 186);
        if (*(this + 476))
        {
          if (!*(this + 477))
          {
            return;
          }

          goto LABEL_37;
        }

        sub_1D0B894B0(this + 9784, v63);
        *(this + 476) = 1;
        sub_1D0BD2CA4(__p, *v65, v65[1], v65[2]);
        if (__p[1])
        {
          sub_1D0B894B0(this + 9912, &v62);
          *(this + 477) = 1;
LABEL_37:
          sub_1D0C4E2D8(v63, this + 9784, __p);
          sub_1D0D5625C(this + 9912, __p, v58);
          v24 = v60;
          v25 = hypot(*v60, v60[1]);
          *(this + 40) = v25;
          *(this + 328) = 1;
          if (v25 >= 1.0)
          {
            v26 = v24[1];
            if (fabs(*v24) > 0.005 || fabs(v26) > 0.005)
            {
              v27 = atan2(*v24, v26);
              *(this + 38) = v27;
              *(this + 312) = 1;
              if (v27 < 0.0)
              {
                *(this + 38) = v27 + 6.28318531;
              }
            }
          }

          if (*(this + 5808) == 1 && *(this + 4616) == 1)
          {
            v54 = 0x100000003;
            v53 = xmmword_1D0E7DCC0;
            v52 = &unk_1F4CDEB28;
            v55 = &v56;
            v56 = *(this + 289);
            v57 = *(this + 580);
            sub_1D0C4E2D8(&v52, this + 9784, v51);
            sub_1D0D5625C(this + 9912, v51, v49);
            v28 = *v50;
            v29 = v50[1];
            v30 = hypot(*v50, v29);
            if (v30 >= 1.0 && (fabs(v28) > 0.005 || fabs(v29) > 0.005))
            {
              v48 = v30;
              v31 = atan2(v28, v29);
              *(this + 34) = v31;
              *(this + 280) = 1;
              if (v31 < 0.0)
              {
                v31 = v31 + 6.28318531;
                *(this + 34) = v31;
              }

              *(this + 36) = v48;
              *(this + 296) = 1;
              if (*(this + 312) == 1)
              {
                v32 = vabdd_f64(*(this + 38), v31);
                if (6.28318531 - v32 >= v32)
                {
                  v33 = v32;
                }

                else
                {
                  v33 = 6.28318531 - v32;
                }

                *(this + 32) = v48 * v33;
              }
            }
          }

          v34 = *(this + 1261);
          v35 = *(this + 1264);
          v36 = (v34 + 8 * (v35 >> 4));
          if (*(this + 1262) == v34)
          {
            v37 = 0;
            v40 = 0;
            v39 = (v34 + 8 * ((*(this + 1265) + v35) >> 4));
          }

          else
          {
            v37 = (*v36 + 1088 * (*(this + 1264) & 0xFLL));
            v38 = *(this + 1265) + v35;
            v39 = (v34 + 8 * (v38 >> 4));
            v40 = (*v39 + 1088 * (v38 & 0xF));
          }

          v42 = sub_1D0E3FD90(v36, v37, v39, v40, a2 + 146);
          v43 = *(this + 1261);
          if (*(this + 1262) == v43)
          {
            v45 = 0;
          }

          else
          {
            v44 = *(this + 1265) + *(this + 1264);
            v45 = *(v43 + ((v44 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 1088 * (v44 & 0xF);
          }

          if (v45 != v42)
          {
            sub_1D0C4E2D8(v42 + 232, this + 376, &v52);
            v46 = v55;
            *(this + 55) = hypot(*v55, v55[1]);
            *(this + 448) = 1;
            v47 = atan2(*v46, v46[1]);
            *(this + 45) = v47;
            *(this + 368) = 1;
            if (v47 < 0.0)
            {
              *(this + 45) = v47 + 6.28318531;
            }
          }

          return;
        }

        LOWORD(v52) = 12;
        LOBYTE(v51[0]) = 2;
        (*(*this + 16))(v58, this);
        if (v59 >= 0)
        {
          v41 = v58;
        }

        else
        {
          v41 = *v58;
        }

        cnprint::CNPrinter::Print(&v52, v51, "%s, curr_ravel_sol,%.3lf Raven Solution position Jecef2enu computation failed.", v41, *&v69.i64[1] + v69.i64[0]);
        if ((v59 & 0x80000000) == 0)
        {
          return;
        }

        v19 = *v58;
LABEL_16:
        operator delete(v19);
      }
    }
  }
}