void raven::RavenPNTEstimator::InflatePositionUncertainty(const char **this, double a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_1EE053AB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AB8))
  {
    v18 = 0x300000001;
    v16 = &unk_1F4CDF0C8;
    v19 = &v20;
    v17 = xmmword_1D0E7F310;
    v20 = 0x100000000;
    v21 = 2;
    sub_1D0D2CF48(&v16, v8);
    v11 = 0x300000001;
    v9 = &unk_1F4CDF0C8;
    v12 = &v13;
    v10 = xmmword_1D0E7F310;
    v13 = 0x1500000014;
    v14 = 22;
    sub_1D0D2CF48(&v9, v15);
    sub_1D0D74958(&unk_1EE0540F0, v8, v15);
    __cxa_atexit(sub_1D0D749E4, &unk_1EE0540F0, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AB8);
  }

  sub_1D0D95F6C(v8, &unk_1EE0540F0);
  sub_1D0B751F4(&v16, "InflatePositionUncertainty");
  raven::RavenPNTEstimator::InflateUncertainties(this, v8, &v16, a3, a2);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }

  LOWORD(v16) = 12;
  v15[0] = 2;
  v8[0] = *(this + 5);
  v6 = cnprint::CNLogFormatter::FormatGeneral((this + 339), v8, "Inflating estimator variance of position error states,factor,%.2lf", a2);
  if (*(this + 2735) >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = this[339];
  }

  cnprint::CNPrinter::Print(&v16, v15, "%s", v7);
}

uint64_t sub_1D0D6B7A8(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0D6B7F8(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0D6B848(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0D6B8A0(uint64_t a1, uint64_t a2, void *lpsrc, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!lpsrc || (v11 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CE09D8, 0)) == 0)
  {
    *v46 = 12;
    v70[0] = 4;
LABEL_21:
    cnprint::CNPrinter::Print(v46, v70, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6);
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

  if (!v14 || !v13 || v15 != 26 || ((v17 = *(a2 + 8), v16 = *(a2 + 12), v17 <= v16) ? (v18 = *(a2 + 12)) : (v18 = *(a2 + 8)), !v17 || !v16 || v18 != 1))
  {
    *v46 = 12;
    v70[0] = 4;
    goto LABEL_21;
  }

  v72 = *(v11 + 40);
  v19 = *(v11 + 9);
  v71 = **(v11 + 8);
  sub_1D0D96A9C(v70, v19);
  v20 = **(v12 + 10);
  v67 = 0x10000001CLL;
  v66 = xmmword_1D0E843A0;
  v65 = &unk_1F4CE0A20;
  v68 = &v69;
  if (v20)
  {
    if (v20 != 1)
    {
      if (v20 == 2)
      {
        __assert_rtn("h_UserSpeed_RavenPNT", "ravenmeasurementfunctions.h", 6935, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
      }

      goto LABEL_36;
    }

    if (!sub_1D0D9046C(&v72, &v71, v70, *(v12 + 7), *(v12 + 11), 1, 1, 1, &v65))
    {
      goto LABEL_36;
    }

    *v46 = 12;
    LOBYTE(v41) = 4;
    cnprint::CNPrinter::Print(v46, &v41, "time,%.3lf,h-function failure on line %d: %s() %s", v22, v23, v24);
    return 0xFFFFFFFFLL;
  }

  v43 = 0x100000007;
  v41 = &unk_1F4CE0BB0;
  v42 = xmmword_1D0E84420;
  v44 = v45;
  if (sub_1D0C50CB8(&v72, &v71, v70, 0, &v41))
  {
    *v46 = 12;
    LOBYTE(v60) = 4;
    cnprint::CNPrinter::Print(v46, &v60, "time,%.3lf,h-function failure on line %d: %s() %s", v25, v26, v27);
    return 0xFFFFFFFFLL;
  }

  *&v46[24] = 0x700000001;
  *v46 = &unk_1F4CE23C0;
  *&v47 = &v47 + 8;
  *&v46[8] = xmmword_1D0E84430;
  v28 = xmmword_1D0E84440;
  v29 = xmmword_1D0E7DD30;
  v30 = v48 + 1;
  v31 = 13;
  v32 = vdupq_n_s64(7uLL);
  v33 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v32, v29)), *v28.i8).u8[0])
    {
      *(v30 - 3) = v31 + 8;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v29)), *&v28).i8[2])
    {
      *(v30 - 2) = v31 + 9;
    }

    if (vuzp1_s16(*&v28, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v28))).i32[1])
    {
      *(v30 - 1) = v31 + 10;
      *v30 = v31 + 11;
    }

    v28 = vaddq_s64(v28, v33);
    v29 = vaddq_s64(v29, v33);
    v31 += 4;
    v30 += 4;
  }

  while (v31 != 21);
  sub_1D0D772C0(&v60, v46);
  sub_1D0D867B8(v46, &v65, &v60);
  sub_1D0D8644C(v46, DWORD2(v42), v44);
LABEL_36:
  v62 = 0x100000007;
  v61 = xmmword_1D0E84420;
  v60 = &unk_1F4CE0BB0;
  v63 = &v64;
  *v46 = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v46[16] = *v46;
  v47 = *v46;
  v48[0] = *v46;
  v48[1] = *v46;
  v48[2] = *v46;
  v48[3] = *v46;
  v48[4] = *v46;
  v48[5] = *v46;
  v48[6] = *v46;
  v48[7] = *v46;
  v48[8] = *v46;
  v48[9] = *v46;
  v48[10] = *v46;
  v48[11] = *v46;
  v48[12] = *v46;
  v48[13] = *v46;
  v48[14] = *v46;
  v48[15] = *v46;
  v48[16] = *v46;
  v48[17] = *v46;
  v48[18] = *v46;
  v48[19] = *v46;
  v48[20] = *v46;
  v48[21] = *v46;
  v49 = *v46;
  v50 = *v46;
  v51 = *v46;
  v52 = *v46;
  v53 = *v46;
  v54 = *v46;
  v55 = *v46;
  v56 = *v46;
  v57 = *v46;
  v58 = *v46;
  v59 = 0x7FF8000000000000;
  LOBYTE(v41) = 0;
  if (sub_1D0D88874(&v65, a1, v20, &v60, v46, &v41, 0.000000015))
  {
    LOWORD(v41) = 12;
    v73 = 4;
    cnprint::CNPrinter::Print(&v41, &v73, "time,%.3lf,h-function failure on line %d: %s() %s", v34, v35, v36);
    return 0xFFFFFFFFLL;
  }

  *&v37 = 0x100000001;
  *(&v37 + 1) = 0x100000001;
  *(a4 + 8) = v37;
  **(a4 + 32) = v63[3] + **(a2 + 32);
  v43 = 0x1A00000001;
  v41 = &unk_1F4CE1048;
  v44 = v45;
  v42 = xmmword_1D0E84580;
  memset(v45, 0, sizeof(v45));
  sub_1D0B894B0(a5, &v41);
  v38 = *(a5 + 20);
  v39 = *(a5 + 32);
  *(v39 + 184 * v38) = v49;
  *(v39 + 192 * v38) = *(&v49 + 1);
  *(v39 + 200 * v38) = v50;
  v43 = 0x100000001;
  v41 = &unk_1F4CDF418;
  *&v40 = 0x100000001;
  *(&v40 + 1) = 0x100000001;
  v42 = v40;
  v44 = v45;
  *&v45[0] = 0x3FF0000000000000;
  sub_1D0B894B0(a6, &v41);
  return 0;
}

uint64_t sub_1D0D6BF40(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[4] = *MEMORY[0x1E69E9840];
  v6 = *(a4 + 8);
  if ((v6 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  v19 = 0x100000003;
  v14 = &unk_1F4CDEB28;
  v10 = v21;
  v20 = v21;
  v15 = v6;
  v16 = 1;
  v17 = v6;
  v18 = v6;
  if (v6 > 3)
  {
    v11 = &v21[v6];
    bzero(v21, 16 * ((v6 - 1) >> 1));
    *(v11 - 2) = 0;
    *(v11 - 1) = 0;
  }

  else if (v6)
  {
    bzero(v21, 8 * v6);
  }

  if (*a1)
  {
    if (*(a1 + 5936) == 174)
    {
      LOWORD(v23[0]) = 2;
      v22 = 2;
      cnprint::CNPrinter::Print(v23, &v22, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", a2[1] + *a2);
    }

    else if (*(a1 + 1) == 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(v10) <= 1)
      {
        LOWORD(v23[0]) = 2;
        v22 = 1;
        cnprint::CNPrinter::Print(v23, &v22, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", a2[1] + *a2);
      }
    }

    else
    {
      v12 = sub_1D0B7C8AC(a2, (a1 + 8));
      if (!v12)
      {
        v23[0] = 0;
        v23[1] = 0;
        sub_1D0D93244(v23, a6);
      }

      if (cnprint::CNPrinter::GetLogLevel(v12) <= 1)
      {
        LOWORD(v23[0]) = 2;
        v22 = 1;
        cnprint::CNPrinter::Print(v23, &v22, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", a2[1] + *a2, *(a1 + 16) + *(a1 + 8));
      }
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(v10) <= 1)
  {
    LOWORD(v23[0]) = 2;
    v22 = 1;
    cnprint::CNPrinter::Print(v23, &v22, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", a2[1] + *a2);
  }

  return 0xFFFFFFFFLL;
}

void sub_1D0D6C388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D6C3B4(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenPNTEstimator::Initialize(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 57) == 1)
  {
    if (*(a1 + 58) == 1)
    {
      LOWORD(v21) = 12;
      LOBYTE(v19) = 4;
      v4 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a1 + 80, "Attempting to initialize an already initialized estimator");
      if (*(a1 + 2735) >= 0)
      {
        v5 = v4;
      }

      else
      {
        v5 = *(a1 + 2712);
      }

      cnprint::CNPrinter::Print(&v21, &v19, "%s", v5);
    }

    *(a1 + 64) = *a2;
    *(a1 + 80) = *a2;
    *(a1 + 96) = *a2;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    sub_1D0BAAEBC(a1 + 61736);
    sub_1D0BADC18(a1 + 61736, a2);
    *(a1 + 14824) = *a2;
    v23 = 0x10000001CLL;
    v21 = &unk_1F4CE0A20;
    v24 = &v25;
    v22 = xmmword_1D0E843A0;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    memset(v28, 0, sizeof(v28));
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    sub_1D0B894B0(a1 + 14840, &v21);
    *(a1 + 2760) = 0;
    *(a1 + 2768) = *a2;
    v46 = 0x100000013;
    v44 = &unk_1F4CE40B8;
    v47 = v48;
    v6 = *(a2 + 32);
    v48[0] = *(a2 + 16);
    v48[1] = v6;
    v7 = *(a2 + 64);
    v48[2] = *(a2 + 48);
    v48[3] = v7;
    v8 = *(a2 + 96);
    v48[4] = *(a2 + 80);
    v48[5] = v8;
    v9 = *(a2 + 128);
    v48[6] = *(a2 + 112);
    v45 = xmmword_1D0E844F0;
    v48[7] = v9;
    v49 = *(a2 + 144);
    v10.i64[1] = *(&v49 + 1);
    v50 = *(a2 + 160);
    v10.i64[0] = v50;
    if (!sub_1D0D752EC(a1 + 2920, a2, &v44, v10, v9))
    {
      v12 = xmmword_1D0E84440;
      v13 = xmmword_1D0E7DD30;
      v14 = &v25 + 3;
      v15 = 13;
      v16 = vdupq_n_s64(0x13uLL);
      v17 = vdupq_n_s64(4uLL);
      while (1)
      {
        if (vuzp1_s16(vmovn_s64(vcgtq_u64(v16, v13)), *v12.i8).u8[0])
        {
          *(v14 - 3) = v15 - 13;
        }

        if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v13)), *&v12).i8[2])
        {
          *(v14 - 2) = v15 - 12;
        }

        if (vuzp1_s16(*&v12, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v12))).i32[1])
        {
          *(v14 - 1) = v15 - 11;
          *v14 = v15 - 10;
        }

        v12 = vaddq_s64(v12, v17);
        v13 = vaddq_s64(v13, v17);
        v15 += 4;
        v14 += 4;
        if (v15 == 33)
        {
          v40 = 0x10000001CLL;
          v39 = xmmword_1D0E844F0;
          v42[1] = v26;
          v42[2] = v27;
          v38 = &unk_1F4CE1250;
          v41 = v42;
          v43[0] = v28[0];
          *(v43 + 12) = *(v28 + 12);
          v42[0] = v25;
          sub_1D0D8C698(&v21, a1 + 14840, &v38);
          sub_1D0D75408(&v21, DWORD2(v45), v47);
          v18 = *(a1 + 14872);
          v18[19] = *(a2 + 168);
          v18[20] = *(a2 + 176);
          v18[21] = *(a2 + 184);
          v18[22] = *(a2 + 192);
          v18[23] = *(a2 + 200);
          v18[24] = *(a2 + 208);
          v18[25] = *(a2 + 216);
          v18[26] = *(a2 + 224);
          v18[27] = *(a2 + 232);
          v23 = 0x10000001ALL;
          v21 = &unk_1F4CE3E48;
          v24 = &v25;
          v22 = xmmword_1D0E843B0;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          memset(v28, 0, sizeof(v28));
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          sub_1D0D87E2C(v20, a2 + 240);
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_1D0D6C8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  sub_1D0D857FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D6C914(uint64_t a1, uint64_t a2, void *lpsrc, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!lpsrc || (v11 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CE1CC8, 0)) == 0)
  {
    LOWORD(v47) = 12;
    v58.i8[0] = 4;
    cnprint::CNPrinter::Print(&v47, &v58, "time,%.3lf,h-function failure on line %d: %s() %s", MEMORY[0x30] + MEMORY[0x28], 3073, "h_DeviceUserPositionDifference_RavenPNT", "dynamic_cast failed");
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

  if (!v14 || !v13 || v15 != 26 || ((v17 = *(a2 + 8), v16 = *(a2 + 12), v17 <= v16) ? (v18 = *(a2 + 12)) : (v18 = *(a2 + 8)), !v17 || !v16 || v18 != 3))
  {
    LOWORD(v47) = 12;
    v58.i8[0] = 4;
    cnprint::CNPrinter::Print(&v47, &v58, "time,%.3lf,h-function failure on line %d: %s() %s", *(v11 + 6) + *(v11 + 5), 3086, "h_DeviceUserPositionDifference_RavenPNT", "inadequate matrices");
    return 0xFFFFFFFFLL;
  }

  if (!*(v11 + 7))
  {
    LOWORD(v47) = 12;
    v58.i8[0] = 4;
    cnprint::CNPrinter::Print(&v47, &v58, "time,%.3lf,h-function failure on line %d: %s() %s", *(v11 + 6) + *(v11 + 5), 3092, "h_DeviceUserPositionDifference_RavenPNT", "invalid numerical integrator");
    return 0xFFFFFFFFLL;
  }

  v106 = *(v11 + 40);
  v19 = *(v11 + 9);
  v105 = **(v11 + 8);
  sub_1D0D96A9C(v104, v19);
  v20 = **(v12 + 10);
  if (**(v12 + 10))
  {
    if (v20 != 1)
    {
      if (v20 == 2)
      {
        __assert_rtn("h_DeviceUserPositionDifference_RavenPNT", "ravenmeasurementfunctions.h", 3186, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
      }

      goto LABEL_43;
    }

    v96 = 0x100000007;
    v95 = xmmword_1D0E84420;
    v94 = &unk_1F4CE0BB0;
    v97 = v98;
    if (sub_1D0C50CB8(&v106, &v105, v104, 1, &v94))
    {
      LOWORD(v47) = 12;
      v58.i8[0] = 4;
      cnprint::CNPrinter::Print(&v47, &v58, "time,%.3lf,h-function failure on line %d: %s() %s", *(v12 + 6) + *(v12 + 5), 3153, "h_DeviceUserPositionDifference_RavenPNT", "could not integrate user states");
      return 0xFFFFFFFFLL;
    }

    v49 = 0x700000001;
    v47 = &unk_1F4CE23C0;
    v50 = &v51;
    v48 = xmmword_1D0E84430;
    v23 = xmmword_1D0E84440;
    v24 = xmmword_1D0E7DD30;
    v25 = &v52 + 1;
    v26 = 13;
    v27 = vdupq_n_s64(7uLL);
    v28 = vdupq_n_s64(4uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v27, v24)), *v23.i8).u8[0])
      {
        *(v25 - 3) = v26 + 8;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v24)), *&v23).i8[2])
      {
        *(v25 - 2) = v26 + 9;
      }

      if (vuzp1_s16(*&v23, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v23))).i32[1])
      {
        *(v25 - 1) = v26 + 10;
        *v25 = v26 + 11;
      }

      v23 = vaddq_s64(v23, v28);
      v24 = vaddq_s64(v24, v28);
      v26 += 4;
      v25 += 4;
    }

    while (v26 != 21);
    sub_1D0D772C0(v46, &v47);
    v101 = 0x10000001CLL;
    v100 = xmmword_1D0E843A0;
    v99 = &unk_1F4CE0A20;
    v102 = v103;
    sub_1D0D867B8(&v47, &v99, v46);
    sub_1D0D8644C(&v47, DWORD2(v95), v97);
    v43 = 0x100000007;
    v41 = &unk_1F4CE0BB0;
    v42 = xmmword_1D0E84420;
    v44 = &v45;
    v58 = vdupq_n_s64(0x7FF8000000000000uLL);
    v59 = v58;
    v60 = v58;
    v61 = v58;
    v62 = v58;
    v63 = v58;
    v64 = v58;
    v65 = v58;
    v66 = v58;
    v67 = v58;
    v68 = v58;
    v69 = v58;
    v70 = v58;
    v71 = v58;
    v72 = v58;
    v73 = v58;
    v74 = v58;
    v75 = v58;
    v76 = v58;
    v77 = v58;
    v78 = v58;
    v79 = v58;
    v80 = v58;
    v81 = v58;
    v82 = v58;
    v83 = v58;
    v84 = v58;
    v85 = v58;
    v86 = v58;
    v87 = v58;
    v88 = v58;
    v89 = v58;
    v90 = v58;
    v91 = v58;
    v92 = v58;
    v93 = 0x7FF8000000000000;
    LOBYTE(v47) = 0;
    if (sub_1D0D88874(&v99, a1, 0, &v41, &v58, &v47, 0.000000015))
    {
      sub_1D0D85A30((v12 + 40), "could not correct states", "h_DeviceUserPositionDifference_RavenPNT", 3166);
      return 0xFFFFFFFFLL;
    }

    *(a4 + 8) = xmmword_1D0E7DCC0;
    v36 = v44;
    v37 = *(a2 + 32);
    v38 = *(a4 + 32);
    *v38 = *v37 - *v44;
    v38[1] = v37[1] - v36[1];
    v38[2] = v37[2] - v36[2];
    sub_1D0D8601C(&v47, 26);
    sub_1D0B894B0(a5, &v47);
    v39 = *(a5 + 20);
    v40 = *(a5 + 32);
    *(v40 + 160 * v39) = -*&v74.i64[1];
    *(v40 + 168 * v39 + 8) = -*&v78.i64[1];
    v34 = -*&v82.i64[1];
    v35 = (v40 + 176 * v39);
  }

  else
  {
    v22 = *(v12 + 7);
    v101 = 0x10000001CLL;
    v100 = xmmword_1D0E843A0;
    v99 = &unk_1F4CE0A20;
    v102 = v103;
    if (sub_1D0D9046C(&v106, &v105, v104, v22, *(v12 + 11), 0, 1, 1, &v99))
    {
      LOWORD(v47) = 12;
      v58.i8[0] = 4;
      cnprint::CNPrinter::Print(&v47, &v58, "time,%.3lf,h-function failure on line %d: %s() %s", *(v12 + 6) + *(v12 + 5), 3113, "h_DeviceUserPositionDifference_RavenPNT", "could not integrate full states");
      return 0xFFFFFFFFLL;
    }

    v96 = 0x10000001CLL;
    v95 = xmmword_1D0E843A0;
    v94 = &unk_1F4CE0A20;
    v97 = v98;
    v58 = vdupq_n_s64(0x7FF8000000000000uLL);
    v59 = v58;
    v60 = v58;
    v61 = v58;
    v62 = v58;
    v63 = v58;
    v64 = v58;
    v65 = v58;
    v66 = v58;
    v67 = v58;
    v68 = v58;
    v69 = v58;
    v70 = v58;
    v71 = v58;
    v72 = v58;
    v73 = v58;
    v74 = v58;
    v75 = v58;
    v76 = v58;
    v77 = v58;
    v78 = v58;
    v79 = v58;
    v80 = v58;
    v81 = v58;
    v82 = v58;
    v83 = v58;
    v84 = v58;
    v85 = v58;
    v86 = v58;
    v87 = v58;
    v88 = v58;
    v89 = v58;
    v90 = v58;
    v91 = v58;
    v92 = v58;
    v93 = 0x7FF8000000000000;
    LOBYTE(v47) = 0;
    if (sub_1D0D8825C(&v99, a1, 0, 1, 1, &v94, &v58, &v47, 0.000000015))
    {
      sub_1D0D85A30((v12 + 40), "could not correct states", "h_DeviceUserPositionDifference_RavenPNT", 3122);
      return 0xFFFFFFFFLL;
    }

    *(a4 + 8) = xmmword_1D0E7DCC0;
    v29 = v97;
    v30 = *(a2 + 32);
    v31 = *(a4 + 32);
    *v31 = *v97 - v97[21] + *v30;
    v31[1] = v29[1] - v29[22] + v30[1];
    v31[2] = v29[2] - v29[23] + v30[2];
    sub_1D0D8601C(&v47, 26);
    sub_1D0B894B0(a5, &v47);
    v32 = *(a5 + 32);
    *v32 = v58.i64[0];
    v33 = *(a5 + 20);
    v32[v33 + 1] = v58.i64[1];
    v32[2 * v33 + 2] = v59.i64[0];
    *&v32[20 * v33] = -*&v74.i64[1];
    *&v32[21 * v33 + 1] = -*&v78.i64[1];
    v34 = -*&v82.i64[1];
    v35 = &v32[22 * v33];
  }

  v35[2] = v34;
LABEL_43:
  v49 = 0x300000003;
  v47 = &unk_1F4CD5DD0;
  v48 = xmmword_1D0E76C10;
  v52 = 0u;
  v53 = 0;
  v55 = 0u;
  v50 = &v51;
  v51 = 0x3FF0000000000000;
  v54 = 0x3FF0000000000000;
  v56 = 0;
  v57 = 0x3FF0000000000000;
  sub_1D0B894B0(a6, &v47);
  return 0;
}

uint64_t sub_1D0D6D23C(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0D6D28C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v3 && (v4 = v2, v5 = v1, (v6 = __dynamic_cast(v3, &unk_1F4CE42A0, &unk_1F4CE1D28, 0)) != 0))
  {
    v8 = v6;
    v10 = *(v5 + 8);
    v9 = *(v5 + 12);
    if (v10 <= v9)
    {
      v11 = *(v5 + 12);
    }

    else
    {
      v11 = *(v5 + 8);
    }

    if (v10 && v9 && v11 == 26 && ((v13 = *(v4 + 8), v12 = *(v4 + 12), v13 <= v12) ? (v14 = *(v4 + 12)) : (v14 = *(v4 + 8)), v13 && v12 && v14 == 3))
    {
      if (*(v6 + 7))
      {
        v93[0] = *(v6 + 40);
        v15.i64[1] = *(&v93[0] + 1);
        v15.i64[0] = *(v6 + 12);
        *&v71 = 0;
        v70 = 0;
        *v16.i64 = CNTimeSpan::SetTimeSpan(&v70, 0, v15, v7);
        *&v92 = CNTimeSpan::operator-(v93, &v70, v16, v17);
        *(&v92 + 1) = v18;
        v19 = *(v8 + 9);
        v91 = **(v8 + 8);
        sub_1D0D96A9C(v90, v19);
        if (**(v8 + 10))
        {
          LOWORD(v70) = 12;
          LOBYTE(v58) = 4;
          cnprint::CNPrinter::Print(&v70, &v58, "time,%.3lf,h-function failure on line %d: %s() %s", *(v8 + 6) + *(v8 + 5), 3966, "h_DeviceUserVelocityDifferenceMountedWithNHC_RavenPNT", "device - user velocity difference measurement with NHC used in non-Earth-fixed parameterization");
        }

        else
        {
          v21 = *(v8 + 7);
          if ((atomic_load_explicit(&qword_1EE053BC0, memory_order_acquire) & 1) == 0)
          {
            v56 = v21;
            v24 = __cxa_guard_acquire(&qword_1EE053BC0);
            v21 = v56;
            if (v24)
            {
              v72 = 0x1300000001;
              v70 = &unk_1F4CE2330;
              v73 = &v74;
              v71 = xmmword_1D0E844E0;
              v25 = xmmword_1D0E84440;
              v26 = xmmword_1D0E7DD30;
              v27 = v76;
              v28 = 13;
              v29 = vdupq_n_s64(0x13uLL);
              v30 = vdupq_n_s64(4uLL);
              do
              {
                if (vuzp1_s16(vmovn_s64(vcgtq_u64(v29, v26)), *v25.i8).u8[0])
                {
                  *(v27 - 3) = v28 - 13;
                }

                if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v26)), *&v25).i8[2])
                {
                  *(v27 - 2) = v28 - 12;
                }

                if (vuzp1_s16(*&v25, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v25))).i32[1])
                {
                  *(v27 - 1) = v28 - 11;
                  *v27 = v28 - 10;
                }

                v25 = vaddq_s64(v25, v30);
                v26 = vaddq_s64(v26, v30);
                v28 += 4;
                v27 += 4;
              }

              while (v28 != 33);
              sub_1D0D77214(&unk_1EE054568, &v70);
              __cxa_atexit(sub_1D0D7B720, &unk_1EE054568, &dword_1D0B71000);
              __cxa_guard_release(&qword_1EE053BC0);
              v21 = v56;
            }
          }

          if ((atomic_load_explicit(&qword_1EE053BC8, memory_order_acquire) & 1) == 0)
          {
            v31 = v21;
            v32 = __cxa_guard_acquire(&qword_1EE053BC8);
            v21 = v31;
            if (v32)
            {
              v33 = 0;
              v72 = 0x1A00000001;
              v70 = &unk_1F4CE1FD0;
              v73 = &v74;
              v71 = xmmword_1D0E844D0;
              v34 = xmmword_1D0E7DD30;
              v35 = vdupq_n_s64(2uLL);
              v36 = vdupq_n_s64(0x12uLL);
              do
              {
                v37 = &v70 + 4 * v33;
                if (vmovn_s64(vcgtq_u64(v36, v34)).u8[0])
                {
                  *(v37 + 10) = v33;
                }

                if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x12uLL), *&v34)).i32[1])
                {
                  *(v37 + 11) = v33 + 1;
                }

                v33 += 2;
                v34 = vaddq_s64(v34, v35);
              }

              while (v33 != 18);
              sub_1D0D741B0(&unk_1EC5FB5F0, &v70);
              __cxa_atexit(sub_1D0D73024, &unk_1EC5FB5F0, &dword_1D0B71000);
              __cxa_guard_release(&qword_1EE053BC8);
              v21 = v31;
            }
          }

          if ((atomic_load_explicit(&qword_1EE053BD0, memory_order_acquire) & 1) == 0)
          {
            v57 = v21;
            v38 = __cxa_guard_acquire(&qword_1EE053BD0);
            v21 = v57;
            if (v38)
            {
              v72 = 0x700000001;
              v70 = &unk_1F4CE23C0;
              v73 = &v74;
              v71 = xmmword_1D0E84430;
              v39 = xmmword_1D0E84440;
              v40 = xmmword_1D0E7DD30;
              v41 = v76;
              v42 = 13;
              v43 = vdupq_n_s64(7uLL);
              v44 = vdupq_n_s64(4uLL);
              do
              {
                if (vuzp1_s16(vmovn_s64(vcgtq_u64(v43, v40)), *v39.i8).u8[0])
                {
                  *(v41 - 3) = v42 + 8;
                }

                if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v40)), *&v39).i8[2])
                {
                  *(v41 - 2) = v42 + 9;
                }

                if (vuzp1_s16(*&v39, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v39))).i32[1])
                {
                  *(v41 - 1) = v42 + 10;
                  *v41 = v42 + 11;
                }

                v39 = vaddq_s64(v39, v44);
                v40 = vaddq_s64(v40, v44);
                v42 += 4;
                v41 += 4;
              }

              while (v42 != 21);
              sub_1D0D772C0(&unk_1EE054170, &v70);
              __cxa_atexit(sub_1D0D7B700, &unk_1EE054170, &dword_1D0B71000);
              __cxa_guard_release(&qword_1EE053BD0);
              v21 = v57;
            }
          }

          if ((atomic_load_explicit(&qword_1EE053BD8, memory_order_acquire) & 1) == 0)
          {
            v45 = v21;
            v46 = __cxa_guard_acquire(&qword_1EE053BD8);
            v21 = v45;
            if (v46)
            {
              v60 = 0x600000001;
              v58 = &unk_1F4CE1988;
              v61 = &v62;
              v59 = xmmword_1D0E84600;
              v47 = xmmword_1D0E7DD30;
              v48 = &v62 + 1;
              v49 = -6;
              v50 = vdupq_n_s64(6uLL);
              v51 = vdupq_n_s64(2uLL);
              do
              {
                if (vmovn_s64(vcgtq_u64(v50, v47)).u8[0])
                {
                  *(v48 - 1) = v49 + 26;
                }

                if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v47)).i32[1])
                {
                  *v48 = v49 + 27;
                }

                v47 = vaddq_s64(v47, v51);
                v48 += 2;
                v49 += 2;
              }

              while (v49);
              sub_1D0D90B60(&v70, &v58);
              sub_1D0D95F6C(&unk_1EC5FB680, &v70);
              __cxa_atexit(sub_1D0D73024, &unk_1EC5FB680, &dword_1D0B71000);
              __cxa_guard_release(&qword_1EE053BD8);
              v21 = v45;
            }
          }

          if ((atomic_load_explicit(&qword_1EE053BE0, memory_order_acquire) & 1) == 0)
          {
            v52 = v21;
            v53 = __cxa_guard_acquire(&qword_1EE053BE0);
            v21 = v52;
            if (v53)
            {
              v72 = 0x300000001;
              v70 = &unk_1F4CDF0C8;
              v73 = &v74;
              v71 = xmmword_1D0E7F310;
              v74 = 0x400000003;
              v75 = 5;
              sub_1D0D2CF48(&v70, &unk_1EE053F68);
              __cxa_atexit(sub_1D0D26840, &unk_1EE053F68, &dword_1D0B71000);
              __cxa_guard_release(&qword_1EE053BE0);
              v21 = v52;
            }
          }

          if ((atomic_load_explicit(&qword_1EE053BE8, memory_order_acquire) & 1) == 0)
          {
            v54 = v21;
            v55 = __cxa_guard_acquire(&qword_1EE053BE8);
            v21 = v54;
            if (v55)
            {
              v72 = 0x300000001;
              v70 = &unk_1F4CDF0C8;
              v73 = &v74;
              v71 = xmmword_1D0E7F310;
              v74 = 0x1800000017;
              v75 = 25;
              sub_1D0D2CF48(&v70, &unk_1EE053FA0);
              __cxa_atexit(sub_1D0D26840, &unk_1EE053FA0, &dword_1D0B71000);
              __cxa_guard_release(&qword_1EE053BE8);
              v21 = v54;
            }
          }

          v87 = 0x10000001CLL;
          v86 = xmmword_1D0E844F0;
          v85 = &unk_1F4CE0A20;
          v88 = &v89;
          v22 = v21;
          if (!sub_1D0D85A88(v93, &v91, v90[4], v21, *(v8 + 11), &v85))
          {
            sub_1D0D752A8(v84);
            sub_1D0D98740(&v70, v84, &unk_1EE054568);
            sub_1D0D8874C(&v70, DWORD2(v86), v88);
            v81 = 0x100000013;
            v79 = &unk_1F4CE40B8;
            v80 = xmmword_1D0E844F0;
            v82 = &v83;
            v77[0] = vdupq_n_s64(0x7FF8000000000000uLL);
            v77[1] = v77[0];
            v77[2] = v77[0];
            v77[3] = v77[0];
            v77[4] = v77[0];
            v77[5] = v77[0];
            v77[6] = v77[0];
            v77[7] = v77[0];
            v77[8] = v77[0];
            v77[9] = v77[0];
            v77[10] = v77[0];
            v77[11] = v77[0];
            v77[12] = v77[0];
            v77[13] = v77[0];
            v77[14] = v77[0];
            v77[15] = v77[0];
            v77[16] = v77[0];
            v77[17] = v77[0];
            v77[18] = v77[0];
            v77[19] = v77[0];
            v77[20] = v77[0];
            v77[21] = v77[0];
            v77[22] = v77[0];
            v77[23] = v77[0];
            v77[24] = v77[0];
            v77[25] = v77[0];
            v77[26] = v77[0];
            v77[27] = v77[0];
            v77[28] = v77[0];
            v77[29] = v77[0];
            v77[30] = v77[0];
            v77[31] = v77[0];
            v77[32] = v77[0];
            v77[33] = v77[0];
            v77[34] = v77[0];
            v78 = 0x7FF8000000000000;
            sub_1D0D85CD4(v84, v5, &v79, v77);
            sub_1D0D91854(&v70, v22);
            v68[28] = &v70;
            v68[29] = v93;
            v23 = *(v8 + 11);
            v68[30] = &v85;
            v68[31] = v23;
            v69 = v92;
            sub_1D0D8A47C(v68, 15);
            v65 = 0x10000001ALL;
            v63[6] = &unk_1F4CE3E48;
            v64 = xmmword_1D0E843B0;
            v66 = &v67;
            sub_1D0D87FCC(v63);
          }

          LOWORD(v70) = 12;
          LOBYTE(v58) = 4;
          cnprint::CNPrinter::Print(&v70, &v58, "time,%.3lf,h-function failure on line %d: %s() %s", *(v8 + 6) + *(v8 + 5), 4026, "h_DeviceUserVelocityDifferenceMountedWithNHC_RavenPNT", "could not integrate kinematic states");
        }
      }

      else
      {
        LOWORD(v70) = 12;
        LOBYTE(v58) = 4;
        cnprint::CNPrinter::Print(&v70, &v58, "time,%.3lf,h-function failure on line %d: %s() %s", *(v6 + 6) + *(v6 + 5), 3949, "h_DeviceUserVelocityDifferenceMountedWithNHC_RavenPNT", "invalid numerical integrator");
      }
    }

    else
    {
      LOWORD(v70) = 12;
      LOBYTE(v58) = 4;
      cnprint::CNPrinter::Print(&v70, &v58, "time,%.3lf,h-function failure on line %d: %s() %s", *(v6 + 6) + *(v6 + 5), 3943, "h_DeviceUserVelocityDifferenceMountedWithNHC_RavenPNT", "inadequate matrices");
    }
  }

  else
  {
    LOWORD(v70) = 12;
    LOBYTE(v58) = 4;
    cnprint::CNPrinter::Print(&v70, &v58, "time,%.3lf,h-function failure on line %d: %s() %s", MEMORY[0x30] + MEMORY[0x28], 3930, "h_DeviceUserVelocityDifferenceMountedWithNHC_RavenPNT", "dynamic_cast failed");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0D6F0B8(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
        sub_1D0D94374(v22, a5);
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

void sub_1D0D6F508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D6F534(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

double sub_1D0D6F584@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x100000003;
  *a3 = &unk_1F4CDEB28;
  *(a3 + 8) = xmmword_1D0E7DCC0;
  *(a3 + 32) = a3 + 40;
  *&result = *&sub_1D0B88838(a1, a2, a3);
  return result;
}

double sub_1D0D6F608(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 12);
  *&result = 0x100000003;
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  v5 = (v3 * v2);
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v5;
  *(a1 + 20) = v2;
  if (v5 >= 1)
  {
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7++;
      result = fabs(v8);
      *v6++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1D0D6F66C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v257 = *MEMORY[0x1E69E9840];
  if (!v3 || (v7 = v6, v8 = v5, v9 = v4, v10 = v2, v11 = v1, (v12 = __dynamic_cast(v3, &unk_1F4CE42A0, &unk_1F4CE0978, 0)) == 0))
  {
    LOWORD(v251) = 12;
    v202.i8[0] = 4;
    cnprint::CNPrinter::Print(&v251, &v202, "time,%.3lf,h-function failure on line %d: %s() %s", MEMORY[0x30] + MEMORY[0x28], 3583, "h_DeviceUserVelocityDifference_RavenPNT", "dynamic_cast failed");
    return 0xFFFFFFFFLL;
  }

  v13 = v12;
  v15 = *(v11 + 8);
  v14 = *(v11 + 12);
  if (v15 <= v14)
  {
    v16 = *(v11 + 12);
  }

  else
  {
    v16 = *(v11 + 8);
  }

  if (!v15 || !v14 || v16 != 26 || ((v18 = *(v10 + 8), v17 = *(v10 + 12), v18 <= v17) ? (v19 = *(v10 + 12)) : (v19 = *(v10 + 8)), !v18 || !v17 || v19 != 3))
  {
    LOWORD(v251) = 12;
    v202.i8[0] = 4;
    cnprint::CNPrinter::Print(&v251, &v202, "time,%.3lf,h-function failure on line %d: %s() %s", *(v12 + 6) + *(v12 + 5), 3596, "h_DeviceUserVelocityDifference_RavenPNT", "inadequate matrices");
    return 0xFFFFFFFFLL;
  }

  if (!*(v12 + 7))
  {
    LOWORD(v251) = 12;
    v202.i8[0] = 4;
    cnprint::CNPrinter::Print(&v251, &v202, "time,%.3lf,h-function failure on line %d: %s() %s", *(v12 + 6) + *(v12 + 5), 3602, "h_DeviceUserVelocityDifference_RavenPNT", "invalid numerical integrator");
    return 0xFFFFFFFFLL;
  }

  if ((*(v12 + 15) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(v12 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(v12 + 17) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    snprintf(&v251, 0x80uLL, "invalid rate gyro measurement %lg,%lg,%lg", *(v12 + 15), *(v12 + 16), *(v12 + 17));
    v202.i16[0] = 12;
    LOBYTE(v152[0]) = 4;
    cnprint::CNPrinter::Print(&v202, v152, "time,%.3lf,h-function failure on line %d: %s() %s", *(v13 + 6) + *(v13 + 5), 3610, "h_DeviceUserVelocityDifference_RavenPNT", &v251);
    return 0xFFFFFFFFLL;
  }

  v250 = *(v12 + 40);
  v20 = *(v12 + 9);
  v249 = **(v12 + 8);
  sub_1D0D96A9C(v248, v20);
  v21 = *(v13 + 11);
  v22 = **(v13 + 10);
  v23 = *(v13 + 15);
  v24 = *(v13 + 16);
  v25 = *(v13 + 17);
  v26 = *(v13 + 7);
  v245 = 0x10000001CLL;
  v244 = xmmword_1D0E843A0;
  v243 = &unk_1F4CE0A20;
  v246 = &v247;
  if (sub_1D0D9046C(&v250, &v249, v248, v26, v21, v22, 1, 1, &v243))
  {
    sub_1D0D85A30((v13 + 40), "could not integrate full states", "h_DeviceUserVelocityDifference_RavenPNT", 3628);
    return 0xFFFFFFFFLL;
  }

  v240 = 0x10000001CLL;
  v238 = &unk_1F4CE0A20;
  v239 = xmmword_1D0E843A0;
  v241 = &v242;
  v202 = vdupq_n_s64(0x7FF8000000000000uLL);
  v203 = v202;
  v204 = v202;
  v205 = v202;
  v206 = v202;
  v207 = v202;
  v208 = v202;
  v209 = v202;
  v210 = v202;
  v211 = v202;
  v212 = v202;
  v213 = v202;
  v214 = v202;
  v215 = v202;
  v216 = v202;
  v217 = v202;
  v218 = v202;
  v219 = v202;
  v220 = v202;
  v221 = v202;
  v222 = v202;
  v223 = v202;
  v224 = v202;
  v225 = v202;
  v226 = v202;
  v227 = v202;
  v228 = v202;
  v229 = v202;
  v230 = v202;
  v231 = v202;
  v232 = v202;
  v233 = v202;
  v234 = v202;
  v235 = v202;
  v236 = v202;
  v237 = NAN;
  LOBYTE(v251) = 0;
  if (sub_1D0D8825C(&v243, v11, v22, 1, 1, &v238, &v202, &v251, 0.000000015))
  {
    sub_1D0D85A30((v13 + 40), "could not correct states", "h_DeviceUserVelocityDifference_RavenPNT", 3637);
    return 0xFFFFFFFFLL;
  }

  v29 = v241;
  *&_Q2 = v241[24];
  _Q19 = *(v241 + 25);
  v31 = *(v241 + 27);
  if (v22)
  {
    if (v22 == 1)
    {
      v91 = _Q2;
      v32 = *(v241 + 6);
      v33 = *(v241 + 7);
      v34 = *(v241 + 8);
      v35 = *(v241 + 9);
      v36 = sqrt(v33 * v33 + v32 * v32 + v34 * v34 + v35 * v35);
      v37 = 1.0;
      v38 = 0.0;
      v39 = 0.0;
      v40 = 0.0;
      v41 = 0.0;
      v42 = 1.0;
      if (fabs(v36) >= 2.22044605e-16)
      {
        v39 = v32 / v36;
        v40 = v33 / v36;
        v41 = v34 / v36;
        v42 = v35 / v36;
      }

      v93 = *(v241 + 25);
      v43 = sqrt(v40 * v40 + v39 * v39 + v41 * v41 + v42 * v42);
      v44 = 0.0;
      v45 = 0.0;
      if (fabs(v43) >= 2.22044605e-16)
      {
        v38 = -v39 / v43;
        v44 = -v40 / v43;
        v45 = -v41 / v43;
        v37 = v42 / v43;
      }

      v199.f64[0] = v38;
      v199.f64[1] = v44;
      v200 = v45;
      v201 = v37;
      cnrotation::CNRotation::RotationMatrix(v198, &v199);
      v195 = 0x100000003;
      v194 = xmmword_1D0E7DCC0;
      v193 = &unk_1F4CDEB28;
      v196 = v197;
      v197[0] = v241[3];
      v197[1] = v241[4];
      v197[2] = v241[5];
      v189 = 0x100000003;
      v188 = xmmword_1D0E7DCC0;
      v187 = &unk_1F4CDEB28;
      v190 = &v191;
      v191 = vmulq_n_f64(v93, *&v91);
      v192 = *&v91 * v31;
      v46 = v23 - *(v241 + 10);
      v47 = v24 - *(v241 + 11);
      v48 = v25 - *(v241 + 12);
      v184 = 0x100000003;
      v183 = xmmword_1D0E7DCC0;
      v182[9] = &unk_1F4CDEB28;
      v185 = v186;
      *v186 = v46;
      *&v186[1] = v47;
      *&v186[2] = v48;
      v180 = 0x300000003;
      v179 = xmmword_1D0E76C10;
      v178 = &unk_1F4CD5DD0;
      v181 = v182;
      v182[0] = 0;
      *&v182[3] = -v48;
      v182[4] = 0;
      *&v182[7] = -v46;
      *&v182[1] = v48;
      *&v182[2] = -v47;
      *&v182[6] = v47;
      *&v182[5] = v46;
      v182[8] = 0;
      v175 = 0x100000007;
      v174 = xmmword_1D0E84420;
      v173 = &unk_1F4CE0BB0;
      v176 = &v177;
      v152[0] = vdupq_n_s64(0x7FF8000000000000uLL);
      v152[1] = v152[0];
      v152[2] = v152[0];
      v152[3] = v152[0];
      v152[4] = v152[0];
      v152[5] = v152[0];
      v152[6] = v152[0];
      v152[7] = v152[0];
      v152[8] = v152[0];
      v152[9] = v152[0];
      v152[10] = v152[0];
      v152[11] = v152[0];
      v152[12] = v152[0];
      v152[13] = v152[0];
      v152[14] = v152[0];
      v152[15] = v152[0];
      v153 = v152[0];
      v154 = v152[0];
      v155 = v152[0];
      v156 = v152[0];
      v157 = v152[0];
      v158 = v152[0];
      v159 = v152[0];
      v160 = v152[0];
      v161 = v152[0];
      v162 = v152[0];
      v163 = v152[0];
      v164 = v152[0];
      v165 = v152[0];
      v166 = v152[0];
      v167 = v152[0];
      v168 = v152[0];
      v169 = v152[0];
      v170 = v152[0];
      v171 = v152[0];
      v172 = 0x7FF8000000000000;
      LOBYTE(v251) = 0;
      if (sub_1D0D88874(&v243, v11, 0, &v173, v152, &v251, 0.000000015))
      {
        sub_1D0D85A30((v13 + 40), "could not correct user states", "h_DeviceUserVelocityDifference_RavenPNT", 3738);
        return 0xFFFFFFFFLL;
      }

      v68 = *v176;
      v69 = v176[1];
      v70 = -*v176;
      v71 = v176[2];
      v149 = 0x100000003;
      v147 = &unk_1F4CDEB28;
      v148 = xmmword_1D0E7DCC0;
      v150 = v151;
      *v151 = v70;
      *&v151[1] = -v69;
      *&v151[2] = -v71;
      sub_1D0D5625C(&v178, &v147, v146);
      sub_1D0D5625C(v198, v146, &v251);
      sub_1D0D6F584(&v187, &v251, v145);
      sub_1D0C4E2D8(&v193, v145, v142);
      sub_1D0D6F584(v142, v10, &v251);
      sub_1D0B894B0(v9, &v251);
      if ((atomic_load_explicit(&qword_1EE053BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053BF0))
      {
        v253 = 0x300000001;
        v251 = &unk_1F4CDF0C8;
        v254 = &v255;
        v252 = xmmword_1D0E7F310;
        v255 = 0x400000003;
        v256 = 5;
        sub_1D0D2CF48(&v251, &unk_1EE053FD8);
        __cxa_atexit(sub_1D0D26840, &unk_1EE053FD8, &dword_1D0B71000);
        __cxa_guard_release(&qword_1EE053BF0);
      }

      if ((atomic_load_explicit(&qword_1EE053BF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053BF8))
      {
        v253 = 0x300000001;
        v251 = &unk_1F4CDF0C8;
        v254 = &v255;
        v252 = xmmword_1D0E7F310;
        v255 = 0x700000006;
        v256 = 8;
        sub_1D0D2CF48(&v251, &unk_1EE054010);
        __cxa_atexit(sub_1D0D26840, &unk_1EE054010, &dword_1D0B71000);
        __cxa_guard_release(&qword_1EE053BF8);
      }

      if ((atomic_load_explicit(&qword_1EE053C00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053C00))
      {
        v253 = 0x300000001;
        v251 = &unk_1F4CDF0C8;
        v254 = &v255;
        v252 = xmmword_1D0E7F310;
        v255 = 0xA00000009;
        v256 = 11;
        sub_1D0D2CF48(&v251, &unk_1EE054048);
        __cxa_atexit(sub_1D0D26840, &unk_1EE054048, &dword_1D0B71000);
        __cxa_guard_release(&qword_1EE053C00);
      }

      if ((atomic_load_explicit(&qword_1EE053C08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053C08))
      {
        v253 = 0x300000001;
        v251 = &unk_1F4CDF0C8;
        v254 = &v255;
        v252 = xmmword_1D0E7F310;
        v255 = 0x1500000014;
        v256 = 22;
        sub_1D0D2CF48(&v251, &unk_1EE054080);
        __cxa_atexit(sub_1D0D26840, &unk_1EE054080, &dword_1D0B71000);
        __cxa_guard_release(&qword_1EE053C08);
      }

      if ((atomic_load_explicit(&qword_1EE053C10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053C10))
      {
        v253 = 0x300000001;
        v251 = &unk_1F4CDF0C8;
        v254 = &v255;
        v252 = xmmword_1D0E7F310;
        v255 = 0x1800000017;
        v256 = 25;
        sub_1D0D2CF48(&v251, &unk_1EE0540B8);
        __cxa_atexit(sub_1D0D26840, &unk_1EE0540B8, &dword_1D0B71000);
        __cxa_guard_release(&qword_1EE053C10);
      }

      sub_1D0D7B8EC(3u, 3u, v142);
      v72 = v144;
      *v144 = v203.i64[1];
      v73 = v143;
      v72[v143 + 1] = v204.i64[0];
      v72[2 * v73 + 2] = v204.i64[1];
      v138 = 0x100000003;
      v137 = xmmword_1D0E7DCC0;
      v136 = &unk_1F4CDEB28;
      v139 = &v140;
      v140 = vnegq_f64(v93);
      v141 = -v31;
      v132 = 0x300000001;
      v131 = xmmword_1D0E7F310;
      v130 = &unk_1F4CDF248;
      v133 = &v134;
      v134 = v227;
      v135 = v228.i64[0];
      sub_1D0D76BD4(3, 1, &v119);
      v74.f64[1] = *(&v91 + 1);
      v74.f64[0] = -*&v91;
      sub_1D0C51FB4(&v119, &v124, v74);
      sub_1D0D9455C(&v251, &v124);
      sub_1D0B88DB0(v129, &v251);
      v126 = 0x300000003;
      v125 = xmmword_1D0E76C10;
      v124 = &unk_1F4CD5DD0;
      v127 = v128;
      v128[0] = v228.i64[1];
      v128[1] = v231.i64[1];
      v128[6] = v229.i64[1];
      v128[7] = v232.i64[1];
      v128[3] = v229.i64[0];
      v128[2] = v234.i64[1];
      v128[4] = v232.i64[0];
      v128[8] = v235.i64[1];
      v128[5] = v235.i64[0];
      v121 = 0x300000003;
      v120 = xmmword_1D0E76C10;
      v119 = &unk_1F4CD5DD0;
      v122 = v123;
      v123[0] = v230.i64[0];
      v123[1] = v233.i64[0];
      v123[6] = v231.i64[0];
      v123[7] = v234.i64[0];
      v123[3] = v230.i64[1];
      v123[2] = v236.i64[0];
      v123[4] = v233.i64[1];
      v123[5] = v236.i64[1];
      *&v123[8] = v237;
      cnrotation::CNRotation::dRdq1(&v199, v118);
      cnrotation::CNRotation::dRdq2(&v199, v117);
      cnrotation::CNRotation::dRdq3(&v199, v116);
      cnrotation::CNRotation::dRdq4(&v199, v115);
      *&v75.f64[0] = v205.i64[0];
      sub_1D0D7B844(v112, v118, v75);
      *&v76.f64[0] = v206.i64[1];
      sub_1D0D7B844(v111, v117, v76);
      sub_1D0D4C358(v112, v111, v113);
      *&v77.f64[0] = v208.i64[0];
      sub_1D0D7B844(&v106, v116, v77);
      sub_1D0D4C358(v113, &v106, &v251);
      *&v78.f64[0] = v209.i64[1];
      sub_1D0D7B844(v105, v115, v78);
      sub_1D0D4C358(&v251, v105, v114);
      *&v79.f64[0] = v205.i64[1];
      sub_1D0D7B844(v111, v118, v79);
      *&v80.f64[0] = v207.i64[0];
      sub_1D0D7B844(&v106, v117, v80);
      sub_1D0D4C358(v111, &v106, v112);
      *&v81.f64[0] = v208.i64[1];
      sub_1D0D7B844(v105, v116, v81);
      sub_1D0D4C358(v112, v105, &v251);
      *&v82.f64[0] = v210.i64[0];
      sub_1D0D7B844(v102, v115, v82);
      sub_1D0D4C358(&v251, v102, v113);
      *&v83.f64[0] = v206.i64[0];
      sub_1D0D7B844(&v106, v118, v83);
      *&v84.f64[0] = v207.i64[1];
      sub_1D0D7B844(v105, v117, v84);
      sub_1D0D4C358(&v106, v105, v111);
      *&v85.f64[0] = v209.i64[0];
      sub_1D0D7B844(v102, v116, v85);
      sub_1D0D4C358(v111, v102, &v251);
      *&v86.f64[0] = v210.i64[1];
      sub_1D0D7B844(v101, v115, v86);
      sub_1D0D4C358(&v251, v101, v112);
      sub_1D0D5625C(v114, v146, v105);
      sub_1D0D5625C(v113, v146, v102);
      sub_1D0D5625C(v112, v146, v101);
      sub_1D0D9462C(&v106, v102, v101);
      sub_1D0D945A4(&v251, v105, &v106);
      sub_1D0D7B9D8(&v251, v111);
      v108 = 0x300000003;
      v106 = &unk_1F4CD5DD0;
      v107 = xmmword_1D0E76C10;
      v109 = v110;
      v110[0] = 0;
      *&v110[3] = v71;
      v110[4] = 0;
      *&v110[7] = v68;
      *&v110[1] = -v71;
      *&v110[2] = v69;
      *&v110[6] = -v69;
      *&v110[5] = v70;
      v110[8] = 0;
      sub_1D0C1B688(v198, &v106, v105);
      sub_1D0BFA9C4(3, 3, v102);
      v87 = v104;
      *v104 = -*v211.i64;
      v88 = v103;
      v87[v103 + 1] = -*&v211.i64[1];
      v87[2 * v88 + 2] = -*v212.i64;
      sub_1D0D7B9D8(v198, &v251);
      sub_1D0C1B688(&v251, &v178, v101);
      sub_1D0D7B8EC(3u, 3u, v98);
      v89 = v100;
      *v100 = -*(&v153 + 1);
      v90 = v99;
      v89[v99 + 1] = -*(&v157 + 1);
      v89[2 * v90 + 2] = -*(&v161 + 1);
      sub_1D0D8601C(&v251, 26);
      sub_1D0B894B0(v8, &v251);
      sub_1D0D93E34(&v251, v8, &unk_1EE053FD8);
      sub_1D0D2CFF0(&v251, v142);
      sub_1D0C1B688(v129, &v124, v96);
      sub_1D0D4C358(v96, v111, v97);
      sub_1D0D93E34(&v251, v8, &unk_1EE054010);
      sub_1D0D2CFF0(&v251, v97);
      sub_1D0C1B688(v105, v102, v97);
      sub_1D0D93E34(&v251, v8, &unk_1EE054048);
      sub_1D0D2CFF0(&v251, v97);
      sub_1D0C1B688(v101, v98, v97);
      sub_1D0D93E34(&v251, v8, &unk_1EE054080);
      sub_1D0D2CFF0(&v251, v97);
      sub_1D0D946D8(&v136, &v130, v96);
      sub_1D0C1B688(v129, &v119, v95);
      sub_1D0D4C358(v96, v95, v97);
      sub_1D0D93E34(&v251, v8, &unk_1EE0540B8);
      sub_1D0D2CFF0(&v251, v97);
    }

    else if (v22 == 2)
    {
      __assert_rtn("h_DeviceUserVelocityDifference_RavenPNT", "ravenmeasurementfunctions.h", 3862, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
    }
  }

  else
  {
    *(v9 + 8) = xmmword_1D0E7DCC0;
    v49 = *(v10 + 32);
    v50 = *(v9 + 32);
    *v50 = v29[3] - *&_Q19 * *&_Q2 + *v49;
    __asm { FMLS            D0, D2, V19.D[1] }

    v50[1] = _D0 + v49[1];
    v50[2] = v29[5] - *&_Q2 * v31 + v49[2];
    v92 = *&_Q2;
    v94 = _Q19;
    sub_1D0D8601C(&v251, 26);
    sub_1D0B894B0(v8, &v251);
    v56 = *(v8 + 20);
    v57 = 3 * v56;
    v58 = *(v8 + 32);
    *(v58 + 8 * v57) = v203.i64[1];
    *(v58 + 8 * ((4 * v56) | 1)) = v204.i64[0];
    *(v58 + 40 * v56 + 16) = v204.i64[1];
    _V3.D[1] = *(&v94 + 1);
    v60 = v58 + 184 * v56;
    *v60 = -(v92 * *v230.i64) - *v227.i64 * *&v94;
    *(v58 + 192 * v56) = -(v92 * *&v230.i64[1]) - *&v227.i64[1] * *&v94;
    v61 = v58 + 200 * v56;
    *v61 = -(v92 * *v231.i64) - *v228.i64 * *&v94;
    _D0 = v227.i64[0];
    __asm { FMLS            D1, D0, V3.D[1] }

    *(v60 + 8) = _D1;
    _D0 = v227.i64[1];
    __asm { FMLS            D1, D0, V3.D[1] }

    *(v58 + 8 * ((8 * v57) | 1)) = _D1;
    _D0 = v228.i64[0];
    __asm { FMLS            D1, D0, V3.D[1] }

    *(v61 + 8) = _D1;
    *(v60 + 16) = -(v92 * *v236.i64) - v31 * *v227.i64;
    *(v58 + 8 * ((8 * v57) | 2)) = -(v92 * *&v236.i64[1]) - v31 * *&v227.i64[1];
    *(v61 + 16) = -(v92 * v237) - v31 * *v228.i64;
  }

  sub_1D0D7B8EC(3u, 3u, &v251);
  sub_1D0B894B0(v7, &v251);
  return 0;
}

uint64_t sub_1D0D70D1C(uint64_t a1)
{
  *(a1 + 96) = &unk_1F4CE36E0;
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0D70D8C(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23[4] = *MEMORY[0x1E69E9840];
  v6 = *(a4 + 8);
  if ((v6 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  v19 = 0x100000003;
  v14 = &unk_1F4CDEB28;
  v10 = v21;
  v20 = v21;
  v15 = v6;
  v16 = 1;
  v17 = v6;
  v18 = v6;
  if (v6 > 3)
  {
    v11 = &v21[v6];
    bzero(v21, 16 * ((v6 - 1) >> 1));
    *(v11 - 2) = 0;
    *(v11 - 1) = 0;
  }

  else if (v6)
  {
    bzero(v21, 8 * v6);
  }

  if (*a1)
  {
    if (*(a1 + 5936) == 174)
    {
      LOWORD(v23[0]) = 2;
      v22 = 2;
      cnprint::CNPrinter::Print(v23, &v22, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", a2[1] + *a2);
    }

    else if (*(a1 + 1) == 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(v10) <= 1)
      {
        LOWORD(v23[0]) = 2;
        v22 = 1;
        cnprint::CNPrinter::Print(v23, &v22, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", a2[1] + *a2);
      }
    }

    else
    {
      v12 = sub_1D0B7C8AC(a2, (a1 + 8));
      if (!v12)
      {
        v23[0] = 0;
        v23[1] = 0;
        sub_1D0D94830(v23, a6);
      }

      if (cnprint::CNPrinter::GetLogLevel(v12) <= 1)
      {
        LOWORD(v23[0]) = 2;
        v22 = 1;
        cnprint::CNPrinter::Print(v23, &v22, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", a2[1] + *a2, *(a1 + 16) + *(a1 + 8));
      }
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(v10) <= 1)
  {
    LOWORD(v23[0]) = 2;
    v22 = 1;
    cnprint::CNPrinter::Print(v23, &v22, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", a2[1] + *a2);
  }

  return 0xFFFFFFFFLL;
}

void sub_1D0D711D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenPNTEstimator::PredictAndUpdate(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 58) != 1)
  {
    return 32;
  }

  v3 = a1 + 61736;
  v82 = *a2;
  v4 = *(a2 + 16);
  if (v4 < 0.0)
  {
    sub_1D0D7B1D0((a1 + 61736));
    *v3 = 0;
    sub_1D0BADC18(v3, (a1 + 80));
    return 64;
  }

  if (v4 <= 0.0)
  {
    return 0;
  }

  if (sub_1D0B9D420(v82.i64, (a1 + 61744)))
  {
    v62.i16[0] = 2;
    LOBYTE(v61[0]) = 4;
    cnprint::CNPrinter::Print(&v62, v61, "WARNING: MeasurementAccumulator.LockAccumulator() called with bad t_end.");
    goto LABEL_53;
  }

  v8 = v82;
  *(a1 + 61760) = v82;
  v9 = CNTimeSpan::operator-((a1 + 61760), (a1 + 61744), v8, v7);
  v12 = *(a1 + 67672);
  if (v12 >= 1)
  {
    v13 = 0;
    *v11.i64 = v9;
    v14 = v10 + v9;
    v15 = *(v3 + 96);
    do
    {
      v62 = *v15;
      *v11.i64 = CNTimeSpan::operator-(&v62, (a1 + 61744), v62, v11);
      v17 = (v16 + *v11.i64) / v14;
      if (v17 < 0.0)
      {
        LOWORD(v61[0]) = 2;
        LOBYTE(v59) = 2;
        cnprint::CNPrinter::Print(v61, &v59, "WARNING: MeasurementAccumulator.LockAccumulator() called with bad t_end.");
        goto LABEL_53;
      }

      *(*(v3 + 3656) + v13) = v17;
      v13 += 8;
      ++v15;
    }

    while (8 * v12 != v13);
  }

  *(a1 + 73640) = 87;
  *(a1 + 70552) = xmmword_1D0E84400;
  *(a1 + 71984) = xmmword_1D0E84400;
  *(a1 + 72376) = xmmword_1D0E84400;
  *(a1 + 73112) = xmmword_1D0E84400;
  *(a1 + 73160) = xmmword_1D0E84400;
  *(a1 + 73552) = xmmword_1D0E84400;
  *(a1 + 73600) = xmmword_1D0E84400;
  *(a1 + 73656) = xmmword_1D0E84400;
  *(a1 + 74392) = xmmword_1D0E84400;
  v62.i64[1] = 0;
  v63 = 0;
  v62.i64[0] = &v62.i64[1];
  if (v12 < 1)
  {
    v19 = 0;
    goto LABEL_57;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  while (*(*(v3 + 3656) + 8 * v18) > 1.0)
  {
LABEL_48:
    if (++v18 >= v12)
    {
      if (v21 > v19)
      {
        LOWORD(v61[0]) = 2;
        LOBYTE(v59) = 2;
        cnprint::CNPrinter::Print(v61, &v59, "t,%.3lf,WARNING: MeasurementAccumulator.LockAccumulator() truncating measurements,nh,%d,eligible,%d,num_truncated,%d", *&v82.i64[1] + v82.i64[0], v19, v21, v21 - v19);
      }

LABEL_57:
      *(a1 + 73640) = v19;
      *(a1 + 70552) = v19;
      *(a1 + 70556) = 1;
      *(a1 + 70560) = v19;
      *(a1 + 70564) = v19;
      *(a1 + 71984) = v19;
      *(a1 + 71988) = 1;
      *(a1 + 71992) = v19;
      *(a1 + 71996) = v19;
      *(a1 + 72376) = v19;
      *(a1 + 72380) = 1;
      *(a1 + 72384) = v19;
      *(a1 + 72388) = v19;
      *(a1 + 73112) = v19;
      *(a1 + 73116) = 1;
      *(a1 + 73120) = v19;
      *(a1 + 73124) = v19;
      *(a1 + 73160) = v19;
      *(a1 + 73164) = 1;
      *(a1 + 73168) = v19;
      *(a1 + 73172) = v19;
      *(a1 + 73552) = v19;
      *(a1 + 73556) = 1;
      *(a1 + 73560) = v19;
      *(a1 + 73564) = v19;
      *(a1 + 73600) = v19;
      *(a1 + 73604) = 1;
      *(a1 + 73608) = v19;
      *(a1 + 73612) = v19;
      *(a1 + 73656) = v19;
      *(a1 + 73660) = 1;
      *(a1 + 73664) = v19;
      *(a1 + 73668) = v19;
      *(a1 + 74392) = v19;
      *(a1 + 74396) = 1;
      *(a1 + 74400) = v19;
      *(a1 + 74404) = v19;
      *(v3 + 1) = 1;
      sub_1D0B99218(v62.i64[1]);
      if (!cnprint::CNPrinter::GetLogLevel(v41))
      {
        v62.i16[0] = 12;
        LOBYTE(v61[0]) = 0;
        v42 = *&v82.i64[1] + v82.i64[0];
        v43 = sub_1D0B9D490(v3);
        cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a1 + 80, "Predict,%.2lf,dt,%.3lf,meas_types,%d", v42, v4, v43);
        if (*(a1 + 2735) >= 0)
        {
          v44 = (a1 + 2712);
        }

        else
        {
          v44 = *(a1 + 2712);
        }

        cnprint::CNPrinter::Print(&v62, v61, "%s", v44);
      }

      v45 = xmmword_1D0E84440;
      v46 = xmmword_1D0E7DD30;
      v47 = v64 + 3;
      v48 = 13;
      v49 = vdupq_n_s64(0x13uLL);
      v50 = vdupq_n_s64(4uLL);
      while (1)
      {
        if (vuzp1_s16(vmovn_s64(vcgtq_u64(v49, v46)), *v45.i8).u8[0])
        {
          *(v47 - 3) = v48 - 13;
        }

        if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v46)), *&v45).i8[2])
        {
          *(v47 - 2) = v48 - 12;
        }

        if (vuzp1_s16(*&v45, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v45))).i32[1])
        {
          *(v47 - 1) = v48 - 11;
          *v47 = v48 - 10;
        }

        v45 = vaddq_s64(v45, v50);
        v46 = vaddq_s64(v46, v50);
        v48 += 4;
        v47 += 4;
        if (v48 == 33)
        {
          v78 = 0x100000013;
          v76[1] = &unk_1F4CE2378;
          v79 = v80;
          v77 = xmmword_1D0E844F0;
          v80[2] = v64[2];
          v81[0] = v65[0];
          *(v81 + 12) = *(v65 + 12);
          v80[0] = v64[0];
          v80[1] = v64[1];
          *&v64[0] = 0x1400000013;
          v74 = 0x100000002;
          v72 = &unk_1F4CE0EA8;
          v73 = xmmword_1D0E83F60;
          v75 = v76;
          v76[0] = 0x1400000013;
          v51 = xmmword_1D0E84440;
          v52 = xmmword_1D0E7DD30;
          v53 = v64 + 3;
          v54 = 13;
          v55 = vdupq_n_s64(7uLL);
          v56 = vdupq_n_s64(4uLL);
          while (1)
          {
            if (vuzp1_s16(vmovn_s64(vcgtq_u64(v55, v52)), *v51.i8).u8[0])
            {
              *(v53 - 3) = v54 + 8;
            }

            if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v52)), *&v51).i8[2])
            {
              *(v53 - 2) = v54 + 9;
            }

            if (vuzp1_s16(*&v51, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v51))).i32[1])
            {
              *(v53 - 1) = v54 + 10;
              *v53 = v54 + 11;
            }

            v51 = vaddq_s64(v51, v56);
            v52 = vaddq_s64(v52, v56);
            v54 += 4;
            v53 += 4;
            if (v54 == 21)
            {
              v69 = 0x100000007;
              v67 = &unk_1F4CE0C88;
              v70 = v71;
              v68 = xmmword_1D0E84420;
              v71[0] = v64[0];
              *(v71 + 12) = *(v64 + 12);
              sub_1D0D97464(v66);
            }
          }
        }
      }
    }
  }

  ++v21;
  v22 = *(*(v3 + 2920) + 4 * v18);
  v23 = v22 + v20;
  if (v19 <= 86 && v23 < 88)
  {
    v24 = v20;
    v58 = v21;
    v57 = v19;
LABEL_20:
    *(*(a1 + 70576) + 16 * v19) = *(*(v3 + 96) + 16 * v18);
    *(*(a1 + 72008) + 4 * v19) = v22;
    *(*(a1 + 72400) + 8 * v19) = *(*(v3 + 3656) + 8 * v18);
    sub_1D0B894B0(*(a1 + 73136) + (v19 << 6), *(a1 + 66824) + (v18 << 6));
    *(*(a1 + 73184) + 4 * v19) = *(*(a1 + 66872) + 4 * v18);
    sub_1D0B894B0(*(a1 + 73576) + (v19 << 6), *(a1 + 67608) + (v18 << 6));
    sub_1D0B894B0(*(a1 + 73624) + 112 * v19, *(a1 + 67656) + 112 * v18);
    *(*(a1 + 73680) + 8 * v19) = *(*(a1 + 67712) + 8 * v18);
    *(*(a1 + 74416) + 8 * v19) = *(*(a1 + 69144) + 8 * v18);
    v25 = v62.i64[1];
    v26 = *(*(a1 + 67712) + 8 * v18);
    if (!v62.i64[1])
    {
      goto LABEL_28;
    }

    v27 = &v62.u64[1];
    do
    {
      v28 = *(v25 + 32);
      v29 = v28 >= v26;
      v30 = v28 < v26;
      if (v29)
      {
        v27 = v25;
      }

      v25 = *(v25 + 8 * v30);
    }

    while (v25);
    if (v27 != &v62.u64[1] && v26 >= v27[2].i64[0])
    {
      ++v27[2].i32[2];
    }

    else
    {
LABEL_28:
      v61[0] = (*(a1 + 67712) + 8 * v18);
      *(sub_1D0BBCAA4(&v62, v26, v61) + 10) = 1;
    }

    v21 = v58;
    v19 = v57 + 1;
    v20 = v24 + v22;
    LODWORD(v12) = *(a1 + 67672);
    goto LABEL_48;
  }

  v59 = 0;
  v31 = v62.i64[0];
  if (v62.i64[0] != &v62.u64[1])
  {
    v32 = 0;
    v33 = -1;
    do
    {
      v34 = *(v31 + 40);
      if (v34 > v33)
      {
        v32 = *(v31 + 32);
        v59 = v32;
        v33 = v34;
      }

      v35 = *(v31 + 8);
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = v35->i64[0];
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = *(v31 + 16);
          v37 = v36->i64[0] == v31;
          v31 = v36;
        }

        while (!v37);
      }

      v31 = v36;
    }

    while (v36 != &v62.u64[1]);
    if (v32)
    {
      if (*(*(a1 + 67712) + 8 * v18) == v32)
      {
        goto LABEL_48;
      }

      if (v19 < 1)
      {
LABEL_54:
        LOWORD(v61[0]) = 2;
        LOBYTE(v60[0]) = 4;
        cnprint::CNPrinter::Print(v61, v60, "MeasurementAccumulator.LockAccumulator() found_idx == false");
        goto LABEL_55;
      }

      v38 = v19;
      while (*(*(a1 + 73680) + 8 * --v38) != v32)
      {
        if (v38 <= 0)
        {
          goto LABEL_54;
        }
      }

      if (v23 - *(*(a1 + 72008) + 4 * v38) > 87)
      {
        goto LABEL_48;
      }

      v57 = v19 - 1;
      v39 = v20;
      v58 = v21;
      v61[0] = &v59;
      v40 = sub_1D0BBCAA4(&v62, v32, v61);
      --*(v40 + 10);
      v24 = v39 - *(*(a1 + 72008) + 4 * v38);
      v19 = v38;
      goto LABEL_20;
    }
  }

  LOWORD(v61[0]) = 2;
  LOBYTE(v60[0]) = 4;
  cnprint::CNPrinter::Print(v61, v60, "MeasurementAccumulator.LockAccumulator() most_common_measurement_type == nullptr");
LABEL_55:
  sub_1D0B99218(v62.i64[1]);
LABEL_53:
  sub_1D0D7B1D0(v3);
  *v3 = 0;
  sub_1D0BADC18(v3, (a1 + 80));
  return 128;
}

void sub_1D0D72888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x580] = &a25;
  sub_1D0BA5F70(&STACK[0x580]);
  STACK[0x580] = &a28;
  sub_1D0BA5F70(&STACK[0x580]);
  STACK[0x580] = &a31;
  sub_1D0BA5F70(&STACK[0x580]);
  sub_1D0D857FC(&a65);
  sub_1D0D85624(&STACK[0x840]);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::VelocityEvent *a2)
{
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 58) != 1 || *(a2 + 280) == 0)
  {
    return 0;
  }

  else
  {
    return raven::RavenPNTEstimator::AddDeviceVelocityMeasurement(this, a2);
  }
}

void raven::RavenPNTEstimator::InflateUncertainties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a5 < 1.0 || (*&a5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    LOWORD(v13) = 12;
    v12[0] = 4;
    *v18 = *(a1 + 80);
    v10 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v18, "%s failed, invalid inflation factor, %.6lf.", a4);
  }

  else
  {
    v15 = 0x10000001ALL;
    v14 = xmmword_1D0E843B0;
    v13 = &unk_1F4CE3E90;
    v16 = v17;
    v19 = 0x10000001ALL;
    *&v18[8] = xmmword_1D0E843B0;
    *v18 = &unk_1F4CE1E70;
    v20 = v21;
    sub_1D0D94A44(a2, &v13, v18);
    v7 = *v16;
    v15 = 0x10000001ALL;
    v14 = xmmword_1D0E843B0;
    v13 = &unk_1F4CE3E90;
    v16 = v17;
    v19 = 0x10000001ALL;
    *&v18[8] = xmmword_1D0E843B0;
    *v18 = &unk_1F4CE1E70;
    v20 = v21;
    sub_1D0D94D8C(a2, &v13, v18);
    if (v7 <= 0x19 && *v16 < 0x1A)
    {
      *(a1 + 112) = *(a1 + 80);
      v15 = 0x10000001ALL;
      v14 = xmmword_1D0E843B0;
      v13 = &unk_1F4CE3E48;
      v16 = v17;
      v9 = 552;
      if (!*(a1 + 16364))
      {
        v9 = 8;
      }

      sub_1D0B894B0(&v13, a1 + 15256 + v9);
      sub_1D0D55F8C();
    }

    LOWORD(v13) = 12;
    v12[0] = 4;
    *v18 = *(a1 + 80);
    v10 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v18, "%s failed, invalid specified states, min state %d, max state %d.", v8);
  }

  if (*(a1 + 2735) >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(a1 + 2712);
  }

  cnprint::CNPrinter::Print(&v13, v12, "%s", v11);
}

void sub_1D0D72F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  sub_1D0D857FC(&a45);
  sub_1D0D857FC(&STACK[0x248]);
  _Unwind_Resume(a1);
}

double sub_1D0D73044@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x10000001ALL;
  *a2 = &unk_1F4CE3E48;
  *(a2 + 8) = xmmword_1D0E843B0;
  *(a2 + 32) = a2 + 40;
  v2 = 552;
  if (!*(a1 + 1108))
  {
    v2 = 8;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

double sub_1D0D730A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 12);
  v5 = (v4 * v3);
  *&result = 0x10000001ALL;
  *(a1 + 24) = 0x10000001ALL;
  *a1 = &unk_1F4CE3E48;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v7 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v5)
  {
    v8 = *(a3 + 32);
    do
    {
      v9 = *v8++;
      result = *(a2 + 8 * v9);
      *v7++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1D0D73100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 12);
  v59 = 0x10000001ALL;
  v57 = &unk_1F4CE3E48;
  v58 = xmmword_1D0E843B0;
  v60 = &v61;
  sub_1D0B89390(a4, a3, &v57);
  if (v6 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v7)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  if (!*(a1 + 1108))
  {
    sub_1D0B894B0(a1 + 552, a1 + 8);
    sub_1D0B894B0(a1 + 800, a1 + 256);
    *&v8 = sub_1D0B894B0(a1 + 848, a1 + 304).n128_u64[0];
  }

  *(a1 + 1108) = 1;
  if (*(a2 + 8) && *(a2 + 12))
  {
    *(a1 + 1104) = 0;
    v12 = *(a1 + 560);
    v13 = *(a1 + 564);
    if (v12 <= v13)
    {
      v14 = *(a1 + 564);
    }

    else
    {
      v14 = *(a1 + 560);
    }

    if (v13)
    {
      v15 = v12 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    if (v11 >= 1)
    {
      v17 = 0;
      do
      {
        v18 = *(*(a2 + 32) + v17);
        if (v18 < 0 || v18 >= v16)
        {
          LOWORD(v62) = 2;
          LOBYTE(v78) = 4;
          cnprint::CNLogFormatter::FormatGeneral((a1 + 1272), "ResetStates(): states must contain valid indices into x, Rxx, and zx.", v8);
          if (*(a1 + 1295) >= 0)
          {
            v19 = (a1 + 1272);
          }

          else
          {
            v19 = *(a1 + 1272);
          }

          cnprint::CNPrinter::Print(&v62, &v78, "%s", v19);
        }

        v17 += 4;
      }

      while (4 * v11 != v17);
    }

    v64 = 0x1A00000001;
    v62 = &unk_1F4CE1FD0;
    v65 = v66;
    if (v16 == 1)
    {
      v28 = 0;
      *&v31 = 0x100000001;
      *(&v31 + 1) = 0x100000001;
      v63 = v31;
      v66[0] = 0;
      v29 = 1;
      v30 = 1;
      v20 = v11;
    }

    else
    {
      v20 = v11;
      if (v16 <= 0)
      {
        v29 = 0;
        v30 = 0;
        v63 = 0uLL;
        v28 = 1;
      }

      else
      {
        v21 = 0;
        *(&v63 + 1) = v16 | 0x100000000;
        v22 = vdupq_n_s64(v16 - 1);
        v23 = xmmword_1D0E84440;
        v24 = xmmword_1D0E7DD30;
        v25 = vdupq_n_s64(4uLL);
        v26 = v67;
        LODWORD(v63) = 1;
        DWORD1(v63) = v16;
        do
        {
          v27 = vmovn_s64(vcgeq_u64(v22, v24));
          if (vuzp1_s16(v27, *v22.i8).u8[0])
          {
            *(v26 - 3) = v21;
          }

          if (vuzp1_s16(v27, *&v22).i8[2])
          {
            *(v26 - 2) = v21 + 1;
          }

          if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, *&v23))).i32[1])
          {
            *(v26 - 1) = v21 + 2;
            *v26 = v21 + 3;
          }

          v21 += 4;
          v23 = vaddq_s64(v23, v25);
          v24 = vaddq_s64(v24, v25);
          v26 += 4;
        }

        while (((v16 + 3) & 0xFFFFFFFC) != v21);
        v28 = 0;
        v29 = 1;
        v30 = v16;
      }
    }

    v83 = 0x10000001ALL;
    v78 = &unk_1F4CE3E90;
    v84 = v85;
    v79 = v30;
    v80 = v29;
    v81 = v30 * v29;
    v82 = v30;
    if (v30)
    {
      v32 = 0;
      for (i = 0; i != v30; ++i)
      {
        if ((v28 & 1) == 0)
        {
          v34 = 0;
          do
          {
            v85[i + v82 * v34] = v66[v32 + v34];
            ++v34;
          }

          while (v29 != v34);
        }

        v32 += v29;
      }
    }

    if (v20 >= 1)
    {
      v35 = *(a2 + 32);
      v36 = v20;
      do
      {
        v37 = *v35++;
        v85[v37] = -1;
        --v36;
      }

      while (v36);
    }

    sub_1D0D95644(v76, v16);
    v64 = 0x1A00000001;
    v62 = &unk_1F4CE1FD0;
    v65 = v66;
    if (v20 == 1)
    {
      v38 = 0;
      *&v39 = 0x100000001;
      *(&v39 + 1) = 0x100000001;
      v63 = v39;
      v66[0] = 0;
      v40 = 1;
      v41 = 1;
    }

    else if (v20 <= 0)
    {
      v40 = 0;
      v41 = 0;
      v63 = 0uLL;
      v38 = 1;
    }

    else
    {
      v42 = 0;
      *(&v63 + 1) = v20 | 0x100000000;
      v43 = vdupq_n_s64(v20 - 1);
      v44 = xmmword_1D0E84440;
      v45 = xmmword_1D0E7DD30;
      v46 = vdupq_n_s64(4uLL);
      v47 = v67;
      LODWORD(v63) = 1;
      DWORD1(v63) = v20;
      do
      {
        v48 = vmovn_s64(vcgeq_u64(v43, v45));
        if (vuzp1_s16(v48, *v43.i8).u8[0])
        {
          *(v47 - 3) = v42;
        }

        if (vuzp1_s16(v48, *&v43).i8[2])
        {
          *(v47 - 2) = v42 + 1;
        }

        if (vuzp1_s16(*&v43, vmovn_s64(vcgeq_u64(v43, *&v44))).i32[1])
        {
          *(v47 - 1) = v42 + 2;
          *v47 = v42 + 3;
        }

        v42 += 4;
        v44 = vaddq_s64(v44, v46);
        v45 = vaddq_s64(v45, v46);
        v47 += 4;
      }

      while (((v20 + 3) & 0xFFFFFFFC) != v42);
      v38 = 0;
      v40 = 1;
      v41 = v20;
    }

    v73 = 0x10000001ALL;
    v68 = &unk_1F4CE3E90;
    v74 = v75;
    v69 = v41;
    v70 = v40;
    v71 = v41 * v40;
    v72 = v41;
    if (v41)
    {
      v49 = 0;
      for (j = 0; j != v41; ++j)
      {
        if ((v38 & 1) == 0)
        {
          v51 = 0;
          do
          {
            v75[j + v72 * v51] = v66[v49 + v51];
            ++v51;
          }

          while (v40 != v51);
        }

        v49 += v40;
      }
    }

    sub_1D0D956F4(&v62, v76, &v68);
    sub_1D0D94F80(&v62, *(a2 + 16), *(a2 + 32));
    if (v16 > v20)
    {
      LODWORD(v52) = 0;
      v53 = v84;
      v54 = v77;
      v55 = v20;
      do
      {
        v52 = v52;
        do
        {
          v56 = v53[v52++];
        }

        while (v56 == -1);
        *(v54 + 4 * v55++) = v56;
      }

      while (v55 != v16);
    }

    sub_1D0D95034(a1, v16, v76);
  }

  sub_1D0B894B0(a1 + 8, a1 + 552);
  sub_1D0B894B0(a1 + 256, a1 + 800);
  sub_1D0B894B0(a1 + 304, a1 + 848);
  *(a1 + 1108) = 1;
}

void raven::RavenPNTEstimator::InflateUncertainty(raven::RavenPNTEstimator *this, double a2, int a3, int a4)
{
  if (*(this + 58))
  {
    if (a2 >= 1.0 && (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      *(this + 7) = *(this + 5);
      v11 = 0x10000001ALL;
      v10 = xmmword_1D0E843B0;
      v9 = &unk_1F4CE3E48;
      v12 = &v13;
      v5 = 552;
      if (!*(this + 4091))
      {
        v5 = 8;
      }

      sub_1D0B894B0(&v9, this + v5 + 15256);
      sub_1D0D87FCC(v8);
    }

    LOWORD(v9) = 12;
    LOBYTE(v15) = 4;
    *v14 = *(this + 5);
    v6 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v14, "InflateUncertainty failed, invalid inflation factor, %.6lf.");
  }

  else
  {
    LOWORD(v9) = 12;
    LOBYTE(v15) = 2;
    *v14 = *(this + 5);
    v6 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v14, "InflateUncertainty called on uninitialized estimator");
  }

  if (*(this + 2735) >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(this + 339);
  }

  cnprint::CNPrinter::Print(&v9, &v15, "%s", v7);
}

void sub_1D0D740FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  __cxa_guard_abort(&qword_1EE053A90);
  sub_1D0D857FC(&a38);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D741B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x10000001ALL;
  *a1 = &unk_1F4CE3E90;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D2EF0C(a2, a1);
}

void raven::RavenPNTEstimator::InflateDevicePositionUncertainty(raven::RavenPNTEstimator *this, double a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_1EE053AA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AA0))
  {
    v12 = 0x300000001;
    *v11 = &unk_1F4CDF0C8;
    v13 = &v14;
    *&v11[8] = xmmword_1D0E7F310;
    v14 = 0x100000000;
    v15 = 2;
    sub_1D0D2CF48(v11, &unk_1EE053D38);
    __cxa_atexit(sub_1D0D26840, &unk_1EE053D38, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AA0);
  }

  sub_1D0D95F6C(v11, &unk_1EE053D38);
  sub_1D0B751F4(__p, "InflateDevicePositionUncertainty");
  raven::RavenPNTEstimator::InflateUncertainties(this, v11, __p, a3, a2);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  LOWORD(__p[0]) = 12;
  v8 = 2;
  *v11 = *(this + 5);
  v6 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v11, "Inflating estimator variance of device (only) position error states,factor,%.2lf", a2);
  if (*(this + 2735) >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(this + 339);
  }

  cnprint::CNPrinter::Print(__p, &v8, "%s", v7);
}

void raven::RavenPNTEstimator::InflateDeviceVelocityUncertainty(raven::RavenPNTEstimator *this, double a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_1EE053AA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AA8))
  {
    v12 = 0x300000001;
    *v11 = &unk_1F4CDF0C8;
    v13 = &v14;
    *&v11[8] = xmmword_1D0E7F310;
    v14 = 0x400000003;
    v15 = 5;
    sub_1D0D2CF48(v11, &unk_1EE053D70);
    __cxa_atexit(sub_1D0D26840, &unk_1EE053D70, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AA8);
  }

  sub_1D0D95F6C(v11, &unk_1EE053D70);
  sub_1D0B751F4(__p, "InflateDeviceVelocityUncertainty");
  raven::RavenPNTEstimator::InflateUncertainties(this, v11, __p, a3, a2);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  LOWORD(__p[0]) = 12;
  v8 = 2;
  *v11 = *(this + 5);
  v6 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v11, "Inflating estimator variance of device (only) velocity error states,factor,%.2lf", a2);
  if (*(this + 2735) >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(this + 339);
  }

  cnprint::CNPrinter::Print(__p, &v8, "%s", v7);
}

void raven::RavenPNTEstimator::InflateInsUncertainty(raven::RavenPNTEstimator *this, double a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_1EE053AB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AB0))
  {
    v25 = 0x300000001;
    v23 = &unk_1F4CDF0C8;
    v26 = &v27;
    v24 = xmmword_1D0E7F310;
    v27 = 0xA00000009;
    v28 = 11;
    sub_1D0D2CF48(&v23, v29);
    v18 = 0x300000001;
    v16 = &unk_1F4CDF0C8;
    v19 = &v20;
    v17 = xmmword_1D0E7F310;
    v20 = 0xD0000000CLL;
    v21 = 14;
    sub_1D0D2CF48(&v16, v22);
    sub_1D0D74958(v8, v29, v22);
    v11 = 0x300000001;
    v9 = &unk_1F4CDF0C8;
    v12 = &v13;
    v10 = xmmword_1D0E7F310;
    v13 = 0x100000000FLL;
    v14 = 17;
    sub_1D0D2CF48(&v9, v15);
    sub_1D0D748D0(v8, v15);
    __cxa_atexit(sub_1D0D74A04, &qword_1EE0541B8, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AB0);
  }

  sub_1D0D95F6C(v8, &qword_1EE0541B8);
  sub_1D0B751F4(v29, "InflateInsUncertainty");
  raven::RavenPNTEstimator::InflateUncertainties(this, v8, v29, a3, a2);
  if (v30 < 0)
  {
    operator delete(v29[0]);
  }

  LOWORD(v29[0]) = 12;
  LOBYTE(v23) = 2;
  v8[0] = *(this + 5);
  v6 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v8, "Inflating estimator variance of ins sensor error states,factor,%.2lf", a2);
  if (*(this + 2735) >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(this + 339);
  }

  cnprint::CNPrinter::Print(v29, &v23, "%s", v7);
}

uint64_t sub_1D0D748D0(uint64_t a1, uint64_t a2)
{
  qword_1EE0541D0 = 0x100000009;
  qword_1EE0541B8 = &unk_1F4CE2018;
  unk_1EE0541C0 = xmmword_1D0E84620;
  qword_1EE0541D8 = &unk_1EE0541E0;
  return sub_1D0D8C29C(a1, a2, &qword_1EE0541B8);
}

uint64_t sub_1D0D74958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000006;
  *a1 = &unk_1F4CE1400;
  *(a1 + 8) = xmmword_1D0E84530;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D8C29C(a2, a3, a1);
}

void raven::RavenPNTEstimator::InflateUserPositionUncertainty(raven::RavenPNTEstimator *this, double a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_1EE053AC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AC0))
  {
    v12 = 0x300000001;
    *v11 = &unk_1F4CDF0C8;
    v13 = &v14;
    *&v11[8] = xmmword_1D0E7F310;
    v14 = 0x1500000014;
    v15 = 22;
    sub_1D0D2CF48(v11, &unk_1EE053DA8);
    __cxa_atexit(sub_1D0D26840, &unk_1EE053DA8, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AC0);
  }

  sub_1D0D95F6C(v11, &unk_1EE053DA8);
  sub_1D0B751F4(__p, "InflateUserPositionUncertainty");
  raven::RavenPNTEstimator::InflateUncertainties(this, v11, __p, a3, a2);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  LOWORD(__p[0]) = 12;
  v8 = 2;
  *v11 = *(this + 5);
  v6 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v11, "Inflating estimator variance of user position error states,factor,%.2lf", a2);
  if (*(this + 2735) >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(this + 339);
  }

  cnprint::CNPrinter::Print(__p, &v8, "%s", v7);
}

void raven::RavenPNTEstimator::InflateUserVelocityUncertainty(raven::RavenPNTEstimator *this, double a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_1EE053AC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AC8))
  {
    v12 = 0x300000001;
    *v11 = &unk_1F4CDF0C8;
    v13 = &v14;
    *&v11[8] = xmmword_1D0E7F310;
    v14 = 0x1800000017;
    v15 = 25;
    sub_1D0D2CF48(v11, &unk_1EE053DE0);
    __cxa_atexit(sub_1D0D26840, &unk_1EE053DE0, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AC8);
  }

  sub_1D0D95F6C(v11, &unk_1EE053DE0);
  sub_1D0B751F4(__p, "InflateUserVelocityUncertainty");
  raven::RavenPNTEstimator::InflateUncertainties(this, v11, __p, a3, a2);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  LOWORD(__p[0]) = 12;
  v8 = 2;
  *v11 = *(this + 5);
  v6 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v11, "Inflating estimator variance of user velocity error states,factor,%.2lf", a2);
  if (*(this + 2735) >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(this + 339);
  }

  cnprint::CNPrinter::Print(__p, &v8, "%s", v7);
}

void raven::RavenPNTEstimator::InflateVelocityUncertainty(raven::RavenPNTEstimator *this, double a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_1EE053AD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AD0))
  {
    v18 = 0x300000001;
    v16 = &unk_1F4CDF0C8;
    v19 = &v20;
    v17 = xmmword_1D0E7F310;
    v20 = 0x400000003;
    v21 = 5;
    sub_1D0D2CF48(&v16, v8);
    v11 = 0x300000001;
    v9 = &unk_1F4CDF0C8;
    v12 = &v13;
    v10 = xmmword_1D0E7F310;
    v13 = 0x1800000017;
    v14 = 25;
    sub_1D0D2CF48(&v9, v15);
    sub_1D0D74958(&unk_1EE054130, v8, v15);
    __cxa_atexit(sub_1D0D749E4, &unk_1EE054130, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AD0);
  }

  sub_1D0D95F6C(v8, &unk_1EE054130);
  sub_1D0B751F4(&v16, "InflateVelocityUncertainty");
  raven::RavenPNTEstimator::InflateUncertainties(this, v8, &v16, a3, a2);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }

  LOWORD(v16) = 12;
  v15[0] = 2;
  v8[0] = *(this + 5);
  v6 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v8, "Inflating estimator variance of velocity error states,factor,%.2lf", a2);
  if (*(this + 2735) >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(this + 339);
  }

  cnprint::CNPrinter::Print(&v16, v15, "%s", v7);
}

void raven::RavenPNTEstimator::InflateXOUncertainty(raven::RavenPNTEstimator *this, double a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_1EE053AD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AD8))
  {
    v12 = 0x200000001;
    *v11 = &unk_1F4CE2060;
    v13 = &v14;
    *&v11[8] = xmmword_1D0E84500;
    v14 = 0x1300000012;
    sub_1D0D751D4(v11, qword_1EE053C38);
    __cxa_atexit(sub_1D0D7527C, qword_1EE053C38, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AD8);
  }

  sub_1D0D95F6C(v11, qword_1EE053C38);
  sub_1D0B751F4(__p, "InflateXOUncertainty");
  raven::RavenPNTEstimator::InflateUncertainties(this, v11, __p, a3, a2);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  LOWORD(__p[0]) = 12;
  v8 = 2;
  *v11 = *(this + 5);
  v6 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v11, "Inflating estimator variance of xo error states,factor,%.2lf", a2);
  if (*(this + 2735) >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(this + 339);
  }

  cnprint::CNPrinter::Print(__p, &v8, "%s", v7);
}

uint64_t sub_1D0D751D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 12);
  *(a2 + 24) = 0x100000002;
  *a2 = &unk_1F4CE0EA8;
  *(a2 + 8) = v3;
  *(a2 + 12) = v4;
  *(a2 + 16) = v4 * v3;
  *(a2 + 20) = v3;
  *(a2 + 32) = a2 + 40;
  return sub_1D0D2EF0C(a1, a2);
}

uint64_t sub_1D0D752A8(uint64_t a1)
{
  *(a1 + 24) = 0x10000001CLL;
  *a1 = &unk_1F4CE0A20;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E843A0;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t sub_1D0D752EC(uint64_t a1, void *a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v8 = *(a1 + 5928);
  v9 = *(a1 + 5920);
  if (v8 != v9)
  {
    v10 = CNTimeSpan::operator-(a2, v9, a4, a5);
    if (fabs(v11 + v10) >= 2.22044605e-16)
    {
      v12 = v8 - 290;
      v13 = v8 - 680;
      do
      {
        *v12 = &unk_1F4CD5E28;
        *(v12 - 366) = &unk_1F4CD5E28;
        *(v12 - 390) = &unk_1F4CD5E28;
        v14 = v12 - 392;
        v12 -= 682;
        v13 -= 682;
      }

      while (v14 != v9);
      *(a1 + 5928) = v9;
    }
  }

  return sub_1D0D7D150(a1, a2, a3);
}

double sub_1D0D75408(uint64_t a1, unsigned int a2, double *a3)
{
  if (*(a1 + 16) != a2)
  {
    __assert_rtn("operator=", "cnsubvector.h", 347, "this->num_elements_ == A.num_elements_");
  }

  if (a2 >= 1)
  {
    v3 = *(a1 + 304);
    v4 = *(*(a1 + 264) + 32);
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

void sub_1D0D7547C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  sub_1D0D96660(v8, a2);
  v9 = v7;
  v10 = 1;
  v11 = v7;
  v12 = v7;
  sub_1D0B894B0(a1 + 8, v8);
  sub_1D0B894B0(a1 + 256, a3);
  sub_1D0D96660(v8, a4);
  v9 = v7;
  v10 = 1;
  v11 = v7;
  v12 = v7;
  sub_1D0B894B0(a1 + 304, v8);
  sub_1D0B894B0(a1 + 552, a1 + 8);
  sub_1D0B894B0(a1 + 800, a1 + 256);
  sub_1D0B894B0(a1 + 848, a1 + 304);
  *(a1 + 1096) = 0x3FF0000000000000;
  *(a1 + 1104) = 0;
  *(a1 + 1108) = 1;
}

uint64_t sub_1D0D75540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x10000001ALL;
  *a1 = &unk_1F4CE3E48;
  *(a1 + 8) = xmmword_1D0E843B0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0B89390(a2, a3, a1);
}

uint64_t sub_1D0D755EC(uint64_t a1)
{
  v1 = *(a1 + 1104);
  if (v1 == 2)
  {
    return 1;
  }

  if (v1 != 1)
  {
    if (!*(a1 + 1104))
    {
      (*(*a1 + 40))(v6, a1);
      sub_1D0D87FCC(v9);
    }

    LOWORD(v7) = 2;
    LOBYTE(v8) = 5;
    v4 = cnprint::CNLogFormatter::FormatGeneral((a1 + 1272), "LeastSquaresEstimator::IsObservable called with unexpected observability state %hhu", v1);
    if (*(a1 + 1295) >= 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = *(a1 + 1272);
    }

    cnprint::CNPrinter::Print(&v7, &v8, "%s", v5);
  }

  return 0;
}

void sub_1D0D757CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  sub_1D0D96490(va);
  sub_1D0D857FC((v50 - 128));
  sub_1D0D857FC((v50 - 80));
  sub_1D0D857FC(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D75810(uint64_t result)
{
  v1 = *(result + 5928);
  v2 = *(result + 5920);
  if (v1 != v2)
  {
    v3 = v1 - 290;
    v4 = v1 - 680;
    do
    {
      *v3 = &unk_1F4CD5E28;
      *(v3 - 366) = &unk_1F4CD5E28;
      *(v3 - 390) = &unk_1F4CD5E28;
      v5 = v3 - 392;
      v3 -= 682;
      v4 -= 682;
    }

    while (v5 != v2);
  }

  *(result + 5928) = v2;
  *(result + 456) = 0;
  return result;
}

uint64_t sub_1D0D758B4(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t sub_1D0D758C0(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

void raven::RavenPNTEstimator::ResetSubStates(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = 0x10000001CLL;
  v21 = xmmword_1D0E843A0;
  v20 = &unk_1F4CE1250;
  v23 = v24;
  v26 = 0x10000001CLL;
  *&v25[8] = xmmword_1D0E843A0;
  *v25 = &unk_1F4CE20F0;
  v27 = v28;
  sub_1D0D94A44(a2, &v20, v25);
  v11 = *v23;
  v22 = 0x10000001CLL;
  v21 = xmmword_1D0E843A0;
  v20 = &unk_1F4CE1250;
  v23 = v24;
  v26 = 0x10000001CLL;
  *&v25[8] = xmmword_1D0E843A0;
  *v25 = &unk_1F4CE20F0;
  v27 = v28;
  sub_1D0D94D8C(a2, &v20, v25);
  if (v11 > 0x1B || *v23 >= 0x1C)
  {
    LOWORD(v20) = 12;
    LOBYTE(v29) = 4;
    *v25 = *(a1 + 80);
    v14 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v25, "%s failed, invalid specified full states, min state %d, max state %d.");
LABEL_11:
    v15 = *(a1 + 2735);
    v16 = *(a1 + 2712);
    goto LABEL_15;
  }

  v22 = 0x10000001ALL;
  v21 = xmmword_1D0E843B0;
  v20 = &unk_1F4CE3E90;
  v23 = v24;
  v26 = 0x10000001ALL;
  *&v25[8] = xmmword_1D0E843B0;
  *v25 = &unk_1F4CE1E70;
  v27 = v28;
  sub_1D0D94A44(a4, &v20, v25);
  v12 = *v23;
  v22 = 0x10000001ALL;
  v21 = xmmword_1D0E843B0;
  v20 = &unk_1F4CE3E90;
  v23 = v24;
  v26 = 0x10000001ALL;
  *&v25[8] = xmmword_1D0E843B0;
  *v25 = &unk_1F4CE1E70;
  v27 = v28;
  sub_1D0D94D8C(a4, &v20, v25);
  if (v12 > 0x19 || *v23 >= 0x1A)
  {
    LOWORD(v20) = 12;
    LOBYTE(v29) = 4;
    *v25 = *(a1 + 80);
    v14 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v25, "%s failed, invalid specified error states, min state %d, max state %d.");
  }

  else
  {
    if (*(a3 + 8) == *(a2 + 8))
    {
      v13 = *(a4 + 8);
      if (*(a5 + 8) == v13 && *(a6 + 8) == v13 && *(a6 + 12) == v13)
      {
        sub_1D0D87FCC(v25);
      }

      LOWORD(v20) = 12;
      LOBYTE(v29) = 4;
      *v25 = *(a1 + 80);
      v14 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v25, "%s failed, size mismatch, error state size,%u, inital error value size,%u, init covariance matrix size, %u, %u");
      goto LABEL_11;
    }

    LOWORD(v20) = 12;
    LOBYTE(v29) = 4;
    *v25 = *(a1 + 80);
    v14 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, v25, "%s failed, size mismatch, full state size,%u, initial value size,%u");
  }

  v15 = *(a1 + 2735);
  v16 = *(a1 + 2712);
LABEL_15:
  if (v15 >= 0)
  {
    v17 = v14;
  }

  else
  {
    v17 = v16;
  }

  cnprint::CNPrinter::Print(&v20, &v29, "%s", v17);
}

void sub_1D0D76030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_1D0D857FC(&a38);
  sub_1D0D857FC((v38 - 256));
  sub_1D0D857FC(&a32);
  sub_1D0D857FC(&a26);
  sub_1D0D857FC(&a20);
  _Unwind_Resume(a1);
}

void raven::RavenPNTEstimator::ResetInsStates(const char **this, int8x16_t a2, int8x16_t a3)
{
  if ((atomic_load_explicit(&qword_1EE053AE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AE0))
  {
    v22 = 0x300000001;
    v20 = &unk_1F4CDF0C8;
    v23 = &v24;
    v21 = xmmword_1D0E7F310;
    v24 = 0xB0000000ALL;
    v25 = 12;
    sub_1D0D2CF48(&v20, v66);
    v28 = 0x300000001;
    v26 = &unk_1F4CDF0C8;
    v29 = &v30;
    v27 = xmmword_1D0E7F310;
    v30 = 0xE0000000DLL;
    v31 = 15;
    sub_1D0D2CF48(&v26, &v32);
    v54 = 0x300000001;
    __p = &unk_1F4CDF0C8;
    v55 = &v56;
    v53 = xmmword_1D0E7F310;
    v56 = 0x1100000010;
    v57 = 18;
    sub_1D0D2CF48(&__p, &v58);
    sub_1D0D74958(v63, &v32, &v58);
    sub_1D0D76A34(&unk_1EE054208, v66, v63);
    __cxa_atexit(sub_1D0D74A04, &unk_1EE054208, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AE0);
  }

  if ((atomic_load_explicit(&qword_1EE053AE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AE8))
  {
    sub_1D0C51578(3, 1, v66);
    sub_1D0C51578(3, 1, &v20);
    sub_1D0D76BD4(3, 1, &v32);
    sub_1D0D76B48(v63, &v20, &v32);
    sub_1D0D76AC0(v66, v63);
    __cxa_atexit(sub_1D0D76CA4, &qword_1EE0542A8, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AE8);
  }

  v4 = raven::RavenPNTEstimator::UseHighAccelerationParameters(this, a2, a3);
  v5 = this[146];
  v6 = 744;
  if (v4)
  {
    v6 = 752;
  }

  v7 = 768;
  if (v4)
  {
    v7 = 776;
  }

  v8 = *&v5[v6];
  v9 = *(v5 + 91);
  v10 = *&v5[v7];
  if ((atomic_load_explicit(&qword_1EE053AF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AF0))
  {
    v22 = 0x300000001;
    v20 = &unk_1F4CDF0C8;
    v23 = &v24;
    v21 = xmmword_1D0E7F310;
    v24 = 0xA00000009;
    v25 = 11;
    sub_1D0D2CF48(&v20, v66);
    v28 = 0x300000001;
    v26 = &unk_1F4CDF0C8;
    v29 = &v30;
    v27 = xmmword_1D0E7F310;
    v30 = 0xD0000000CLL;
    v31 = 14;
    sub_1D0D2CF48(&v26, &v32);
    v54 = 0x300000001;
    __p = &unk_1F4CDF0C8;
    v55 = &v56;
    v53 = xmmword_1D0E7F310;
    v56 = 0x100000000FLL;
    v57 = 17;
    sub_1D0D2CF48(&__p, &v58);
    sub_1D0D74958(v63, &v32, &v58);
    sub_1D0D76A34(&unk_1EE054258, v66, v63);
    __cxa_atexit(sub_1D0D74A04, &unk_1EE054258, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AF0);
  }

  if ((atomic_load_explicit(&qword_1EE053AF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053AF8))
  {
    sub_1D0D76CC4();
    __cxa_atexit(sub_1D0D76CA4, &qword_1EE054318, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053AF8);
  }

  v60 = 0x100000003;
  v58 = &unk_1F4CDEB28;
  v61 = v62;
  v59 = xmmword_1D0E7DCC0;
  memset_pattern16(v62, &unk_1D0E7F4B0, 0x18uLL);
  v11.f64[0] = v8 * v8;
  v28 = 0x100000003;
  v27 = xmmword_1D0E7DCC0;
  v26 = &unk_1F4CDEB28;
  v29 = &v30;
  sub_1D0BC5ED4(&v58, &v26, v11);
  v49 = 0x100000003;
  v47 = &unk_1F4CDEB28;
  v50 = v51;
  v48 = xmmword_1D0E7DCC0;
  memset_pattern16(v51, &unk_1D0E7F4B0, 0x18uLL);
  v12.f64[0] = v9 * v9;
  v54 = 0x100000003;
  v53 = xmmword_1D0E7DCC0;
  __p = &unk_1F4CDEB28;
  v55 = &v56;
  sub_1D0BC5ED4(&v47, &__p, v12);
  v39 = 0x100000003;
  v37 = &unk_1F4CDEB28;
  v40 = v41;
  v38 = xmmword_1D0E7DCC0;
  memset_pattern16(v41, &unk_1D0E7F4B0, 0x18uLL);
  v13.f64[0] = v10 * v10;
  v44 = 0x100000003;
  v43 = xmmword_1D0E7DCC0;
  v42 = &unk_1F4CDEB28;
  v45 = &v46;
  sub_1D0BC5ED4(&v37, &v42, v13);
  v34 = 0x100000006;
  v33 = xmmword_1D0E84530;
  v32 = &unk_1F4CE0BF8;
  v35 = &v36;
  sub_1D0BA59C4(&__p, &v42, &v32);
  v22 = 0x100000009;
  v20 = &unk_1F4CE2138;
  v21 = xmmword_1D0E84620;
  v23 = &v24;
  sub_1D0BA59C4(&v26, &v32, &v20);
  v63[3] = 0xA0000000ALL;
  *&v63[1] = xmmword_1D0E84630;
  v63[0] = &unk_1F4CE2180;
  v64 = &v65;
  sub_1D0BED87C(&v20, 0, v63);
  v69 = 0x900000009;
  v66[0] = &unk_1F4CE21C8;
  v66[1] = v63[1];
  v14 = (HIDWORD(v63[1]) * LODWORD(v63[1]));
  v67 = HIDWORD(v63[1]) * LODWORD(v63[1]);
  v68 = v63[1];
  v15 = v71;
  v70 = v71;
  if (LODWORD(v63[1]) > 9)
  {
    v18 = "this->max_num_rows_ >= A.NumRows()";
    v19 = 567;
  }

  else
  {
    if (HIDWORD(v63[1]) <= 9)
    {
      if (v14 >= 1)
      {
        v16 = v64;
        do
        {
          v17 = *v16++;
          *v15++ = v17;
          --v14;
        }

        while (v14);
      }

      sub_1D0D8C5B0(&v32, &unk_1EE054208);
      sub_1D0D96A9C(v63, &qword_1EE0542A8);
      sub_1D0D95F6C(&v26, &unk_1EE054258);
      sub_1D0D96B84(&v20, &qword_1EE054318);
      sub_1D0D96C6C(&v58, v66);
    }

    v18 = "this->max_num_cols_ >= A.NumCols()";
    v19 = 568;
  }

  __assert_rtn("CNMatrix", "cnmatrix.h", v19, v18);
}

uint64_t sub_1D0D76A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000009;
  *a1 = &unk_1F4CE2018;
  *(a1 + 8) = xmmword_1D0E84620;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D8C29C(a2, a3, a1);
}

uint64_t sub_1D0D76AC0(uint64_t a1, uint64_t a2)
{
  qword_1EE0542C0 = 0x100000009;
  qword_1EE0542A8 = &unk_1F4CE2138;
  *algn_1EE0542B0 = xmmword_1D0E84620;
  qword_1EE0542C8 = &unk_1EE0542D0;
  return sub_1D0BA59C4(a1, a2, &qword_1EE0542A8);
}

uint64_t sub_1D0D76B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000006;
  *a1 = &unk_1F4CE0BF8;
  *(a1 + 8) = xmmword_1D0E84530;
  *(a1 + 32) = a1 + 40;
  return sub_1D0BA59C4(a2, a3, a1);
}

uint64_t sub_1D0D76BD4@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __assert_rtn("Ones", "cnmatrix.h", 2317, "nr >= 0");
  }

  if (a2 < 0)
  {
    __assert_rtn("Ones", "cnmatrix.h", 2318, "nc >= 0");
  }

  *(a3 + 24) = 0x100000003;
  *a3 = &unk_1F4CDEB28;
  *(a3 + 32) = a3 + 40;
  *(a3 + 8) = a1;
  *(a3 + 12) = a2;
  *(a3 + 16) = a2 * a1;
  *(a3 + 20) = a1;

  return sub_1D0BBBC00(a3, 1.0);
}

uint64_t sub_1D0D76CC4()
{
  qword_1EE054330 = 0x100000009;
  qword_1EE054318 = &unk_1F4CE2138;
  qword_1EE054338 = &unk_1EE054340;
  unk_1EE054320 = xmmword_1D0E84620;
  return sub_1D0BBBC00(&qword_1EE054318, 0.0);
}

double sub_1D0D76D10(uint64_t a1, uint64_t a2, float64x2_t a3)
{
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = xmmword_1D0E7DCC0;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0BC5ED4(a2, a1, a3);
  return result;
}

void *sub_1D0D76D9C(void *result)
{
  result[64] = &unk_1F4CDEAF8;
  result[58] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void *sub_1D0D76E1C(void *result)
{
  result[76] = &unk_1F4CDEAF8;
  result[58] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void sub_1D0D76E9C(uint64_t a1, uint64_t a2)
{
  v9 = 0x100000002;
  v7 = &unk_1F4CE0220;
  v8 = xmmword_1D0E83F60;
  v10 = &v11;
  v4 = 0x200000002;
  v2 = &unk_1F4CE0268;
  v3 = xmmword_1D0E83F70;
  v5 = &v6;
  *(a1 + 24) = 0x200000002;
  *a1 = &unk_1F4CE0268;
  *(a1 + 8) = xmmword_1D0E83F70;
  *(a1 + 32) = a1 + 40;
  sub_1D0B9FACC(a2, &v7, &v2, a1);
}

uint64_t sub_1D0D76FA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x200000002;
  *a1 = &unk_1F4CE0268;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0BD2018(a2, a1);
}

void sub_1D0D7702C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x200000002;
  *a2 = &unk_1F4CE0268;
  *(a2 + 8) = xmmword_1D0E83F70;
  *(a2 + 32) = a2 + 40;
  v9 = 0x100000002;
  v7 = &unk_1F4CE0EA8;
  v8 = xmmword_1D0E83F60;
  v10 = &v11;
  v4 = 0x100000008;
  v2 = &unk_1F4CE4320;
  v3 = xmmword_1D0E84520;
  v5 = &v6;
  sub_1D0B9F868(a1, &v7, &v2, a2);
}

void sub_1D0D7713C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0x200000002;
  *a1 = &unk_1F4CE0268;
  *(a1 + 8) = xmmword_1D0E83F70;
  *(a1 + 32) = a1 + 40;
  v2 = 0;
  sub_1D0B9F748(a2, a1, &v2);
}

double sub_1D0D771D0(_BYTE *a1, __n128 *a2)
{
  sub_1D0D7B1D0(a1);
  *a1 = 0;

  *&result = sub_1D0BADC18(a1, a2).n128_u64[0];
  return result;
}

uint64_t sub_1D0D77214(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x100000013;
  *a1 = &unk_1F4CE2378;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D2EF0C(a2, a1);
}

uint64_t sub_1D0D772C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x100000007;
  *a1 = &unk_1F4CE0C88;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D2EF0C(a2, a1);
}

uint64_t sub_1D0D7736C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v138 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 16);
  if (((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE && (*&v3 & 0x7FFFFFFFFFFFFFFFuLL) - 1 > 0xFFFFFFFFFFFFELL || (*(a2 + 56) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a2 + 80);
  result = 0xFFFFFFFFLL;
  if ((*(a2 + 64) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *(a2 + 56) > 0.0 && *(a2 + 64) > 0.0 && (*(a2 + 72) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v10 = *(a2 + 96);
    v11 = *(a2 + 104);
    if ((*(a2 + 88) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *(a2 + 72) > 0.0 && v9 > 0.0 && *(a2 + 88) > 0.0 && (*(a2 + 96) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*(a2 + 112) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v10 > 0.0 && v11 > 0.0 && *(a2 + 112) > 0.0 && (*(a2 + 120) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v12 = *(a2 + 144);
      v13.i64[0] = vdupq_laneq_s64(v12, 1).u64[0];
      v14 = vdupq_lane_s64(*&v12.f64[0], 0);
      v14.i64[0] = *(a2 + 128);
      v86 = *(a2 + 160);
      v13.i64[1] = v86;
      v15.f64[0] = NAN;
      v15.f64[1] = NAN;
      v16 = vnegq_f64(v15);
      v17 = vandq_s8(v14, v16);
      v18 = vandq_s8(v13, v16);
      v19 = vdupq_n_s64(0x7FF0000000000000uLL);
      if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgeq_s64(v17, v19), vcgeq_s64(v18, v19)))) & 1) == 0 && *(a2 + 120) > 0.0 && *(a2 + 128) > 0.0 && (*(a2 + 176) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v20.f64[0] = *(a2 + 160);
        v82 = *(a2 + 176);
        v20.f64[1] = v82;
        if ((vaddvq_s32(vandq_s8(vuzp1q_s32(vclezq_f64(v12), vclezq_f64(v20)), xmmword_1D0E84470)) & 0xF) == 0)
        {
          v81 = *(a2 + 144);
          v78 = *(a2 + 136);
          v77 = *(a2 + 168);
          v84 = fabs(v3);
          v85 = *(a2 + 112);
          exp(-v84 / v10);
          exp(-v84 / v11);
          exp(-v84 / v85);
          v124 = 0x200000002;
          v122 = &unk_1F4CE0268;
          v123 = xmmword_1D0E83F70;
          v125 = &v126;
          if (!sub_1D0BA10B0(a1, a2, &v122, COERCE_DOUBLE(0x200000002), v21))
          {
            sub_1D0D8CC70(v119);
            v24 = *(a1 + 2760);
            v25 = "N8cnmatrix8CNMatrixILj2ELj1EPFiPKvRNS0_ILj2ELj1EdEEEEE" + 48;
            if (*(a1 + 2760))
            {
              if (v24 == 1)
              {
                v26 = v84 * (v78 * *(a1 + 2792));
                v27 = v121;
                *v121 = v26;
                v28 = v120;
                v27[v120 + 1] = v26;
                v27[2 * v28 + 2] = v26;
                v128 = 0x300000001;
                *v127 = &unk_1F4CDF0C8;
                v129 = &v130;
                *&v127[8] = xmmword_1D0E7F310;
                v130 = 0x400000003;
                v131 = 5;
                sub_1D0D2CF48(v127, v111);
                *&v94 = 0x300000003;
                v92 = &unk_1F4CD5DD0;
                v93 = xmmword_1D0E76C10;
                *(&v94 + 1) = v95;
                v128 = 0x300000001;
                *v127 = &unk_1F4CDF0C8;
                v129 = &v130;
                *&v127[8] = xmmword_1D0E7F310;
                v130 = 0x1A00000019;
                v131 = 27;
                sub_1D0D2CF48(v127, v110);
                sub_1D0D7B740(&v135, a1 + 14840, v110);
                v107 = 0x100000001;
                v105 = &unk_1F4CDF418;
                *&v29 = 0x100000001;
                *(&v29 + 1) = 0x100000001;
                v106 = v29;
                v108 = &v109;
                v115 = 0x100000001;
                v113 = &unk_1F4CDF460;
                v114 = v29;
                v116 = &v117;
                sub_1D0D6F608(v127, &v135);
                sub_1D0D7FDEC(v127, &v105, &v113);
                v25 = "N8cnmatrix8CNMatrixILj2ELj1EPFiPKvRNS0_ILj2ELj1EdEEEEE" + 48;
                sub_1D0C51578(3, 1, &v132);
                v134[*v116] = 1.0;
                sub_1D0D562E0(&v87, &v132, &v135);
                sub_1D0BFA800(&v87);
                if (fabs(v30.f64[0]) <= 0.000000015)
                {
                  *v127 = 12;
                  v102[0] = 4;
                  v46 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a2, "GetProcessNoiseInformationMatrix unexpected zero vector arbitrary_1,%.3lf,%.3lf,%.3lf", *v90, v90[1], v90[2]);
                  if (*(a1 + 2735) >= 0)
                  {
                    v47 = v46;
                  }

                  else
                  {
                    v47 = *(a1 + 2712);
                  }

                  cnprint::CNPrinter::Print(v127, v102, "%s", v47);
                }

                else
                {
                  v30.f64[0] = 1.0 / v30.f64[0];
                  sub_1D0C51FB4(&v87, v127, v30);
                  sub_1D0B894B0(&v87, v127);
                }

                sub_1D0D562E0(v102, &v135, &v87);
                sub_1D0BFA800(v102);
                if (fabs(v48.f64[0]) <= 0.000000015)
                {
                  *v127 = 12;
                  LOBYTE(v97) = 4;
                  v49 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a2, "GetProcessNoiseInformationMatrix unexpected zero vector arbitrary_2,%.3lf,%.3lf,%.3lf", *v104, v104[1], v104[2]);
                  if (*(a1 + 2735) >= 0)
                  {
                    v50 = v49;
                  }

                  else
                  {
                    v50 = *(a1 + 2712);
                  }

                  cnprint::CNPrinter::Print(v127, &v97, "%s", v50);
                }

                else
                {
                  v48.f64[0] = 1.0 / v48.f64[0];
                  sub_1D0C51FB4(v102, v127, v48);
                  sub_1D0B894B0(v102, v127);
                }

                sub_1D0D4BC50(&v135, &v97);
                sub_1D0C4DE2C(&v92, 0, ":", v127);
                sub_1D0D2D288(v127, &v97);
                sub_1D0D4BC50(&v87, &v97);
                sub_1D0C4DE2C(&v92, 1, ":", v127);
                sub_1D0D2D288(v127, &v97);
                sub_1D0D4BC50(v102, &v97);
                sub_1D0C4DE2C(&v92, 2, ":", v127);
                sub_1D0D2D288(v127, &v97);
                if (*(*(a1 + 14872) + 192) * (v77 * *(*(a1 + 14872) + 192)) <= v78)
                {
                  v51 = v78;
                }

                else
                {
                  v51 = *(*(a1 + 14872) + 192) * (v77 * *(*(a1 + 14872) + 192));
                }

                v52 = *(a1 + 2784);
                v53 = *(a1 + 2792);
                sub_1D0BFA9C4(3, 3, &v135);
                v54 = v84 * (v53 * v51);
                v55 = v137;
                *v137 = v84 * (v52 * v81.f64[0]);
                v56 = SHIDWORD(v136);
                v55[SHIDWORD(v136) + 1] = v54;
                v55[2 * v56 + 2] = v54;
                sub_1D0C1B688(&v92, &v135, &v87);
                sub_1D0C1B708(&v92, v102);
                sub_1D0C1B688(&v87, v102, &v132);
                sub_1D0BADC74(v127, v119, v111, v111);
                sub_1D0D2CFF0(v127, &v132);
              }

              else if (v24 == 2)
              {
                __assert_rtn("GetProcessNoiseInformationMatrix", "ravenpntestimator.h", 806, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
              }
            }

            else
            {
              LOBYTE(v93) = 0;
              v95[0] = 0x300000003;
              *(&v93 + 1) = &unk_1F4CD5DD0;
              v94 = xmmword_1D0E76C10;
              v95[1] = &v96;
              v92 = &unk_1F4CD5D90;
              v31 = *(a1 + 14872);
              *v127 = *v31;
              *&v127[16] = *(v31 + 16);
              v135 = 0uLL;
              v136 = 0;
              v132 = 0uLL;
              v133 = 0;
              v32 = cnnavigation::ENUToECEF(&v135, 1, 0, v127, 1, &v132, &v92);
              v33 = v32;
              if (*(a1 + 1208) == 1 && *(a1 + 1320) - 1 <= 6)
              {
                v34 = qword_1D0E87A28[(*(a1 + 1320) - 1)];
              }

              else
              {
                v34 = 928;
              }

              v79 = cnstatistics::InverseNormal(v32, 1.0 - *(*(a1 + 1168) + v34), 0.0, sqrt(*(*(a1 + 15136) + 192 * *(a1 + 15124) + 192)));
              v35 = *(*(a1 + 14872) + 192);
              sub_1D0BFA9C4(3, 3, &v135);
              if (v33 || v35 <= v79)
              {
                v44 = v137;
                *v137 = v82;
                v45 = SHIDWORD(v136);
                v44[SHIDWORD(v136) + 1] = v82;
                v44[2 * v45 + 2] = v82;
              }

              else
              {
                sub_1D0BFA9C4(3, 3, &v132);
                v115 = 0x100000003;
                v113 = &unk_1F4CDEB28;
                v114 = xmmword_1D0E7DCC0;
                v116 = &v117;
                v36 = *(a1 + 14872);
                v117 = *(v36 + 200);
                v118 = *(v36 + 216);
                v89 = 0x300000003;
                v87 = &unk_1F4CD5DD0;
                v88 = xmmword_1D0E76C10;
                v90 = &v91;
                if (v93 == 1)
                {
                  sub_1D0B894B0(&v87, &v93 + 8);
                }

                sub_1D0C51CC8(&v87, ":", 0, v127);
                v37 = DWORD2(v114);
                if (SDWORD2(v114) < 1)
                {
                  v39 = 0.0;
                }

                else
                {
                  v38 = v116;
                  v39 = 0.0;
                  v40 = v129;
                  do
                  {
                    v41 = *v38++;
                    v42 = v41;
                    v43 = *v40++;
                    v39 = v39 + v42 * v43;
                    --v37;
                  }

                  while (v37);
                }

                sub_1D0C51CC8(&v87, ":", 1, v127);
                v57 = DWORD2(v114);
                if (SDWORD2(v114) < 1)
                {
                  v59 = 0.0;
                }

                else
                {
                  v58 = v116;
                  v59 = 0.0;
                  v60 = v129;
                  do
                  {
                    v61 = *v58++;
                    v62 = v61;
                    v63 = *v60++;
                    v59 = v59 + v62 * v63;
                    --v57;
                  }

                  while (v57);
                }

                v64 = sqrt(v59 * v59 + v39 * v39);
                if (fabs(v64) <= 0.000000015)
                {
                  v66 = v134;
                  *v134 = v82;
                  v67 = SHIDWORD(v133);
                  v66[SHIDWORD(v133) + 1] = v82;
                  *&v66[2 * v67 + 2] = v86;
                }

                else
                {
                  v80 = *(*(a1 + 14872) + 192);
                  v83 = v64;
                  sub_1D0D97510(v102);
                  v65 = v104;
                  *v104 = v81.f64[0];
                  v65[v103 + 1] = v80 * vmuld_lane_f64(v80, v81, 1);
                  v99 = 0x200000002;
                  v97 = &unk_1F4CE0268;
                  v98 = xmmword_1D0E83F70;
                  v100 = v101;
                  v101[0] = v39 / v83;
                  v101[1] = v59 / v83;
                  v101[2] = -(v59 / v83);
                  v101[3] = v39 / v83;
                  v128 = 0x200000001;
                  *v127 = &unk_1F4CE2060;
                  v129 = &v130;
                  *&v127[8] = xmmword_1D0E84500;
                  v130 = 0x100000000;
                  sub_1D0D751D4(v127, v112);
                  sub_1D0D97550(v110, &v97, v102);
                  sub_1D0D76FA4(&v105, &v97);
                  sub_1D0D97550(v111, v110, &v105);
                  sub_1D0D8D39C(v127, &v132, v112, v112);
                  sub_1D0D8CEA0(v127, v111);
                  *&v134[2 * SHIDWORD(v133) + 2] = v86;
                }

                sub_1D0C1B688(&v87, &v132, v102);
                sub_1D0C1B708(&v87, &v97);
                sub_1D0C1B688(v102, &v97, v127);
                sub_1D0B894B0(&v135, v127);
              }

              v128 = 0x300000001;
              *v127 = &unk_1F4CDF0C8;
              v129 = &v130;
              *&v127[8] = xmmword_1D0E7F310;
              v130 = 0x100000000;
              v131 = 2;
              sub_1D0D2CF48(v127, &v87);
              v128 = 0x300000001;
              *v127 = &unk_1F4CDF0C8;
              v129 = &v130;
              *&v127[8] = xmmword_1D0E7F310;
              v130 = 0x400000003;
              v131 = 5;
              sub_1D0D2CF48(v127, v102);
              v25 = "dEEEEE";
              v68.f64[0] = v3 * v3 * v84 * 0.333333333;
              sub_1D0D7B844(&v132, &v135, v68);
              sub_1D0BADC74(v127, v119, &v87, &v87);
              sub_1D0D2CFF0(v127, &v132);
              v69.f64[0] = v3 * v3 * 0.5;
              sub_1D0D7B844(&v132, &v135, v69);
              sub_1D0BADC74(v127, v119, &v87, v102);
              sub_1D0D2CFF0(v127, &v132);
              v70.f64[0] = v3 * v3 * 0.5;
              sub_1D0D7B844(&v132, &v135, v70);
              sub_1D0BADC74(v127, v119, v102, &v87);
              sub_1D0D2CFF0(v127, &v132);
              v71.f64[0] = v84;
              sub_1D0D7B844(&v132, &v135, v71);
              sub_1D0BADC74(v127, v119, v102, v102);
              sub_1D0D2CFF0(v127, &v132);
            }

            v128 = *(v25 + 55);
            *v127 = &unk_1F4CE2060;
            v129 = &v130;
            *&v127[8] = xmmword_1D0E84500;
            v130 = 0x100000000FLL;
            sub_1D0D751D4(v127, &v97);
            v128 = 0x600000001;
            *v127 = &unk_1F4CE1988;
            v129 = &v130;
            *&v127[8] = xmmword_1D0E84600;
            v72 = xmmword_1D0E7DD30;
            v73 = &v130 + 1;
            v74 = -6;
            v75 = vdupq_n_s64(6uLL);
            v76 = vdupq_n_s64(2uLL);
            while (1)
            {
              if (vmovn_s64(vcgtq_u64(v75, v72)).u8[0])
              {
                *(v73 - 1) = v74 + 23;
              }

              if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v72)).i32[1])
              {
                *v73 = v74 + 24;
              }

              v72 = vaddq_s64(v72, v76);
              v73 += 2;
              v74 += 2;
              if (!v74)
              {
                sub_1D0D90B60(v102, v127);
                sub_1D0D975D8(v127);
              }
            }
          }

          *v127 = 12;
          v119[0] = 4;
          v22 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a2, "RavenEstimator::GetOscillatorProcessNoiseCovarianceMatrix failed");
          if (*(a1 + 2735) >= 0)
          {
            v23 = v22;
          }

          else
          {
            v23 = *v22;
          }

          cnprint::CNPrinter::Print(v127, v119, "%s", v23);
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D0D78614(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = *(v1 + 8);
  v8 = *(v1 + 12);
  if (v7 <= v8)
  {
    v9 = *(v1 + 12);
  }

  else
  {
    v9 = *(v1 + 8);
  }

  if (v7)
  {
    _ZF = v8 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v11 = !_ZF && v9 == 18;
  if (!v11 || ((v13 = v2, v15 = *(v2 + 8), v14 = *(v2 + 12), v15 <= v14) ? (v16 = *(v2 + 12)) : (v16 = *(v2 + 8)), !v15 || !v14 || v16 != 15))
  {
    LOWORD(v147) = 12;
    v57[0] = 4;
    cnprint::CNPrinter::Print(&v147, v57, "f_SixDOFError called with inadequate matrices");
    return 0xFFFFFFFFLL;
  }

  v17 = v3;
  v18 = *v3;
  if (!*v3)
  {
    LOWORD(v147) = 12;
    v57[0] = 4;
    cnprint::CNPrinter::Print(&v147, v57, "f_SixDOFError called with invalid numerical integrator");
    return 0xFFFFFFFFLL;
  }

  v19 = v6;
  v20 = v5;
  v21 = v4;
  v22 = v1;
  v23 = v3[2];
  v159 = *v3[1];
  v24 = sub_1D0D81140(v158, v23);
  if ((*(*v18 + 56))(v18, &v159, v158, v24))
  {
    return 0xFFFFFFFFLL;
  }

  v157 = *(v17 + 2);
  v154 = 0x100000013;
  v153 = xmmword_1D0E844F0;
  v152 = &unk_1F4CE40B8;
  v155 = &v156;
  v149 = 0x1300000013;
  v147 = &unk_1F4CE4070;
  v148 = xmmword_1D0E84640;
  v150 = &v151;
  v144 = 0xF00000013;
  v143 = xmmword_1D0E84650;
  v142 = &unk_1F4CE4028;
  v145 = &v146;
  if ((*(*v18 + 88))(v18, &v157, v17[3], &v152, &v147, &v142))
  {
    return 0xFFFFFFFFLL;
  }

  v25 = v155;
  _Q1 = v155[4];
  _D3 = _Q1.f64[1];
  __asm { FMLA            D2, D3, V1.D[1] }

  v32 = sqrt(_D2);
  if (fabs(v32) <= 0.000000015)
  {
    return 0xFFFFFFFFLL;
  }

  v33 = vdupq_lane_s64(*&v32, 0);
  v155[3] = vdivq_f64(v155[3], v33);
  v25[4] = vdivq_f64(_Q1, v33);
  v139 = 0x100000013;
  v138 = xmmword_1D0E844F0;
  v137 = &unk_1F4CE40B8;
  v140 = &v141;
  v48 = vdupq_n_s64(0x7FF8000000000000uLL);
  v101 = v48;
  v102 = v48;
  v103 = v48;
  v104 = v48;
  v105 = v48;
  v106 = v48;
  v107 = v48;
  v108 = v48;
  v109 = v48;
  v110 = v48;
  v111 = v48;
  v112 = v48;
  v113 = v48;
  v114 = v48;
  v115 = v48;
  v116 = v48;
  v117 = v48;
  v118 = v48;
  v119 = v48;
  v120 = v48;
  v121 = v48;
  v122 = v48;
  v123 = v48;
  v124 = v48;
  v125 = v48;
  v126 = v48;
  v127 = v48;
  v128 = v48;
  v129 = v48;
  v130 = v48;
  v131 = v48;
  v132 = v48;
  v133 = v48;
  v134 = v48;
  v135 = v48;
  v136 = 0x7FF8000000000000;
  sub_1D0D85CD4(v158, v22, &v137, &v101);
  v98 = 0x100000013;
  v97 = xmmword_1D0E844F0;
  v96 = &unk_1F4CE40B8;
  v99 = &v100;
  v60 = v48;
  v61 = v48;
  v62 = v48;
  v63 = v48;
  v64 = v48;
  v65 = v48;
  v66 = v48;
  v67 = v48;
  v68 = v48;
  v69 = v48;
  v70 = v48;
  v71 = v48;
  v72 = v48;
  v73 = v48;
  v74 = v48;
  v75 = v48;
  v76 = v48;
  v77 = v48;
  v78 = v48;
  v79 = v48;
  v80 = v48;
  v81 = v48;
  v82 = v48;
  v83 = v48;
  v84 = v48;
  v85 = v48;
  v86 = v48;
  v87 = v48;
  v88 = v48;
  v89 = v48;
  v90 = v48;
  v91 = v48;
  v92 = v48;
  v93 = v48;
  v94 = v48;
  v95 = 0x7FF8000000000000;
  sub_1D0D97C6C(v57);
  sub_1D0D85CD4(&v152, v57, &v96, &v60);
  sub_1D0D97CD0(v57);
  v34 = v59;
  *v59 = v101.i64[0];
  v35 = v58;
  v36 = 8 * v58;
  v34[v58 + 1] = v101.i64[1];
  v34[2 * v35 + 2] = v102.i64[0];
  v34[3 * v35 + 3] = v102.i64[1];
  v34[4 * v35 + 4] = v103.i64[0];
  v34[5 * v35 + 5] = v103.i64[1];
  v37 = &v34[6 * v35];
  v37[6] = v104.i64[0];
  v38 = &v34[7 * v35];
  v38[6] = v104.i64[1];
  v39 = &v34[v36];
  v39[6] = v105.i64[0];
  v37[7] = v105.i64[1];
  v38[7] = v106.i64[0];
  v39[7] = v106.i64[1];
  v37[8] = v107.i64[0];
  v38[8] = v107.i64[1];
  v40 = &v34[8 * v35];
  v40[8] = v108.i64[0];
  v37[9] = v108.i64[1];
  v38[9] = v109.i64[0];
  v40[9] = v109.i64[1];
  v34[9 * v35 + 10] = v110.i64[0];
  v34[10 * v35 + 11] = v110.i64[1];
  v34[11 * v35 + 12] = v111.i64[0];
  v34[12 * v35 + 13] = v111.i64[1];
  v34[13 * v35 + 14] = v112.i64[0];
  v34[14 * v35 + 15] = v112.i64[1];
  v34[15 * v35 + 16] = v113.i64[0];
  v34[16 * v35 + 17] = v113.i64[1];
  v34[17 * v35 + 18] = v114.i64[0];
  sub_1D0D97D14(v54);
  v41 = v56;
  *v56 = 1.0 / *v60.i64;
  v42 = v55;
  v43 = 8 * v55;
  v41[v55 + 1] = 1.0 / *&v60.i64[1];
  v41[2 * v42 + 2] = 1.0 / *v61.i64;
  v41[3 * v42 + 3] = 1.0 / *&v61.i64[1];
  v41[4 * v42 + 4] = 1.0 / *v62.i64;
  v41[5 * v42 + 5] = 1.0 / *&v62.i64[1];
  v44 = &v41[6 * v42];
  v44[6] = *v63.i64;
  v45 = &v41[7 * v42];
  v45[6] = *&v64.i64[1];
  v46 = &v41[v43];
  v46[6] = *v66.i64;
  v47 = &v41[9 * v42];
  v47[6] = *&v67.i64[1];
  v44[7] = *&v63.i64[1];
  v45[7] = *v65.i64;
  v46[7] = *&v66.i64[1];
  v47[7] = *v68.i64;
  v44[8] = *v64.i64;
  v45[8] = *&v65.i64[1];
  v41[8 * v42 + 8] = *v67.i64;
  v47[8] = *&v68.i64[1];
  v41[10 * v42 + 9] = 1.0 / *v69.i64;
  v41[11 * v42 + 10] = 1.0 / *&v69.i64[1];
  v41[12 * v42 + 11] = 1.0 / *v70.i64;
  v41[13 * v42 + 12] = 1.0 / *&v70.i64[1];
  v41[14 * v42 + 13] = 1.0 / *v71.i64;
  v41[15 * v42 + 14] = 1.0 / *&v71.i64[1];
  v41[((16 * v42) | 0xF)] = 1.0 / *v72.i64;
  v41[17 * v42 + 16] = 1.0 / *&v72.i64[1];
  v41[18 * v42 + 17] = 1.0 / *v73.i64;
  sub_1D0D97DE0(v52, v54, &v147);
  sub_1D0D97D58(v53, v52, v57);
  sub_1D0D97E8C(v52, v54, &v142);
  sub_1D0D97FA4(v50, v53, v22);
  sub_1D0D98030(v49, v52, v13);
  sub_1D0D97F18(v51, v50, v49);
  sub_1D0B894B0(v21, v51);
  sub_1D0B894B0(v20, v53);
  sub_1D0B894B0(v19, v52);
  return 0;
}

uint64_t sub_1D0D78E5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  if (!v9 && v8 == 2)
  {
    v11 = *(a2 + 8);
    v12 = *(a2 + 12);
    if (v11 <= v12)
    {
      v13 = *(a2 + 12);
    }

    else
    {
      v13 = *(a2 + 8);
    }

    if (v11)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14 && v13 == 2)
    {
      v20 = 0x200000002;
      v18 = &unk_1F4CE0268;
      v19 = xmmword_1D0E83F70;
      v22[1] = 0;
      v22[2] = 0;
      v21 = v22;
      v22[0] = 0x3FF0000000000000;
      v22[3] = 0x3FF0000000000000;
      sub_1D0D96C6C(v23, &v18);
    }
  }

  LOWORD(v18) = 12;
  LOBYTE(v17) = 4;
  cnprint::CNPrinter::Print(&v18, &v17, "f_TwoStateOscillator called with inadequate matrices.", a4, a5, a6);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0D790A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  if (!v9 && v8 == 6)
  {
    v11 = *(a2 + 8);
    v12 = *(a2 + 12);
    if (v11 <= v12)
    {
      v13 = *(a2 + 12);
    }

    else
    {
      v13 = *(a2 + 8);
    }

    if (v11)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14 && v13 == 6)
    {
      v20 = 0x600000006;
      v18 = &unk_1F4CDF278;
      v19 = xmmword_1D0E7F320;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v21 = &v22;
      v22 = 0x3FF0000000000000;
      *&v26 = 0x3FF0000000000000;
      v30 = 0x3FF0000000000000;
      *&v34 = 0x3FF0000000000000;
      v38 = 0x3FF0000000000000;
      v42 = 0x3FF0000000000000;
      sub_1D0D96C6C(v43, &v18);
    }
  }

  LOWORD(v18) = 12;
  LOBYTE(v17) = 4;
  cnprint::CNPrinter::Print(&v18, &v17, "f_SixStateNearlyConstantVelocity called with inadequate matrices.", a4, a5, a6);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0D79370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  v10 = !v9 && v8 == 3;
  if (v10 && ((v11 = *(a2 + 8), v12 = *(a2 + 12), v11 <= v12) ? (v13 = *(a2 + 12)) : (v13 = *(a2 + 8)), v11 ? (v14 = v12 == 0) : (v14 = 1), !v14 ? (v15 = v13 == 3) : (v15 = 0), v15))
  {
    v22 = 0x10000001ALL;
    v20 = &unk_1F4CE3E48;
    v21 = xmmword_1D0E843B0;
    v23 = &v24;
    sub_1D0B88838(a1, a2, &v20);
    sub_1D0B894B0(a4, &v20);
    v22 = 0x300000003;
    v20 = &unk_1F4CD5DD0;
    v21 = xmmword_1D0E76C10;
    v25 = 0u;
    v26 = 0;
    v28 = 0u;
    v23 = &v24;
    v24 = 0x3FF0000000000000;
    v27 = 0x3FF0000000000000;
    v29 = 0;
    v30 = 0x3FF0000000000000;
    sub_1D0B894B0(a5, &v20);
    v22 = 0x300000003;
    v20 = &unk_1F4CD5DD0;
    v21 = xmmword_1D0E76C10;
    v25 = 0u;
    v26 = 0;
    v28 = 0u;
    v23 = &v24;
    v24 = 0x3FF0000000000000;
    v27 = 0x3FF0000000000000;
    v29 = 0;
    v30 = 0x3FF0000000000000;
    sub_1D0B894B0(a6, &v20);
    return 0;
  }

  else
  {
    LOWORD(v20) = 12;
    v31 = 4;
    cnprint::CNPrinter::Print(&v20, &v31, "f_ThreeStateNearlyConstant called with inadequate matrices.", a4, a5, a6);
    return 0xFFFFFFFFLL;
  }
}

void *sub_1D0D7951C(void *result)
{
  result[25] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0D7955C(uint64_t a1)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = *(v1 + 8);
  v7 = *(v1 + 12);
  if (v6 <= v7)
  {
    v8 = *(v1 + 12);
  }

  else
  {
    v8 = *(v1 + 8);
  }

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && v8 == 18)
  {
    v12 = *(v2 + 8);
    v11 = *(v2 + 12);
    if (v12 <= v11)
    {
      v13 = *(v2 + 12);
    }

    else
    {
      v13 = *(v2 + 8);
    }

    if (v12 && v11 && v13 == 18)
    {
      v14 = v4;
      v34 = **(v3 + 8);
      v33 = *(v3 + 32);
      *v15.i64 = CNTimeSpan::operator-(&v33, &v34, v33, v5);
      *v17.i64 = (v16 + *v15.i64) * v14;
      v21[0] = 0;
      v21[1] = 0;
      *v18.i64 = CNTimeSpan::SetTimeSpan(v21, 0, v17, v15);
      CNTimeSpan::operator+(&v34, v21, v18, v19);
      v29 = 0x10000000FLL;
      v27[26] = &unk_1F4CE4258;
      v30 = v31;
      v28 = xmmword_1D0E845F0;
      memset(v31, 0, sizeof(v31));
      v32 = 0;
      v25 = 0x10000001ALL;
      v23 = &unk_1F4CE3E48;
      v24 = xmmword_1D0E84660;
      v26 = v27;
      sub_1D0D98AA8(v22, 18, 18);
    }
  }

  LOWORD(v21[0]) = 12;
  LOBYTE(v35) = 4;
  cnprint::CNPrinter::Print(v21, &v35, "in_SixDOFError called with inadequate matrices.");
  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0D7A0A0(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
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

  if (!v10 && v9 == 2)
  {
    v12 = *(a2 + 8);
    v13 = *(a2 + 12);
    if (v12 <= v13)
    {
      v14 = *(a2 + 12);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    if (v12)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15 && v14 == 2)
    {
      v26 = 0x100000002;
      v24[26] = &unk_1F4CE0220;
      v27 = v28;
      v25 = xmmword_1D0E83F60;
      v28[1] = 0;
      v28[0] = 0;
      v22 = 0x10000001ALL;
      v20 = &unk_1F4CE3E48;
      v21 = xmmword_1D0E83F60;
      v23 = v24;
      sub_1D0D98AA8(v19, 2, 2);
    }
  }

  LOWORD(v18) = 12;
  LOBYTE(v29) = 4;
  cnprint::CNPrinter::Print(&v18, &v29, "in_TwoStateOscillator called with inadequate matrices.", a4, a5, a6, a7);
  return 0xFFFFFFFFLL;
}

void sub_1D0D7A484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1D0D857FC((v65 - 144));
  sub_1D0D857FC(&a65);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D7A4AC(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
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

  if (!v10 && v9 == 6)
  {
    v12 = *(a2 + 8);
    v13 = *(a2 + 12);
    if (v12 <= v13)
    {
      v14 = *(a2 + 12);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    if (v12)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15 && v14 == 6)
    {
      v27 = 0x100000006;
      v25[26] = &unk_1F4CE0BF8;
      v28 = v29;
      v26 = xmmword_1D0E84530;
      memset(v29, 0, sizeof(v29));
      v23 = 0x10000001ALL;
      v21 = &unk_1F4CE3E48;
      v22 = xmmword_1D0E84530;
      v24 = v25;
      sub_1D0D98AA8(v20, 6, 6);
    }
  }

  LOWORD(v19) = 12;
  LOBYTE(v18) = 4;
  cnprint::CNPrinter::Print(&v19, &v18, "in_SixStateNearlyConstantVelocity called with inadequate matrices.", a4, a5, a6, a7);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0D7A73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  if (!v9 && v8 == 3)
  {
    v11 = *(a2 + 8);
    v12 = *(a2 + 12);
    if (v11 <= v12)
    {
      v13 = *(a2 + 12);
    }

    else
    {
      v13 = *(a2 + 8);
    }

    if (v11)
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14 && v13 == 3)
    {
      v25 = 0x100000003;
      v23[26] = &unk_1F4CDEB28;
      v26 = v27;
      v24 = xmmword_1D0E7DCC0;
      memset(v27, 0, sizeof(v27));
      v21 = 0x10000001ALL;
      v19 = &unk_1F4CE3E48;
      v20 = xmmword_1D0E7DCC0;
      v22 = v23;
      sub_1D0D98AA8(v18, 3, 3);
    }
  }

  LOWORD(v17) = 12;
  LOBYTE(v28) = 4;
  cnprint::CNPrinter::Print(&v17, &v28, "in_ThreeStateNearlyConstant called with inadequate matrices.", a4, a5, a6);
  return 0xFFFFFFFFLL;
}

void sub_1D0D7AB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = 0x10000001ALL;
  v10 = &unk_1F4CE3E48;
  v11 = xmmword_1D0E843B0;
  v13 = &v14;
  sub_1D0D87FCC(v9);
}

void sub_1D0D7AFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  sub_1D0BD9B48(&a59);
  sub_1D0D857FC(&STACK[0x680]);
  _Unwind_Resume(a1);
}

void sub_1D0D7B048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a1 + 1108))
  {
    sub_1D0B894B0(a1 + 552, a1 + 8);
    sub_1D0B894B0(a1 + 800, a1 + 256);
    sub_1D0B894B0(a1 + 848, a1 + 304);
  }

  v10 = *(a2 + 8);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = *(a1 + 560);
    v12 = *(a1 + 564);
    v27 = 0x100000017;
    v22 = &unk_1F4CE0780;
    v28 = v29;
    v23 = v10;
    v24 = 1;
    v25 = v10;
    v26 = v10;
    if (v10 > 3)
    {
      v13 = &v29[v10];
      bzero(v29, 16 * ((v10 - 1) >> 1));
      *(v13 - 2) = 0;
      *(v13 - 1) = 0;
    }

    else if (v10)
    {
      bzero(v29, 8 * v10);
    }

    if (v11 <= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v11;
    }

    if (v12)
    {
      v15 = v11 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    v17 = *(a4 + 8);
    v18 = *(a4 + 12);
    if (v17 <= v18)
    {
      v19 = *(a4 + 12);
    }

    else
    {
      v19 = *(a4 + 8);
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

    sub_1D0DA4B70(a1, v16, a1 + 552, a1 + 800, a1 + 848, v10, &v22, a2, v21, a3, a4, a5, *(a1 + 1729));
  }

  __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
}

void sub_1D0D7B1D0(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v29 = v5;
    v30 = v6;
    v27 = v1;
    v28 = v2;
    v25 = v3;
    v26 = v4;
    MEMORY[0x1EEE9AC00](a1);
    v9 = v8;
    v10 = v7;
    if (*(v7 + 1) == 1)
    {
      *(v7 + 1) = 0;
    }

    if (*(v7 + 5936))
    {
      if (!sub_1D0B9D420(v8, (v7 + 8)))
      {
        v11 = *(v10 + 5936);
        sub_1D0C01A20(v19, *(v10 + 5936), 1);
        v12 = 0;
        if (v11 >= 1)
        {
          v13 = *(v10 + 48);
          if (v13 != (v10 + 40))
          {
            v14 = 0;
            v12 = 0;
            v15 = 1;
            do
            {
              if (sub_1D0B7CF88((*(v10 + 96) + v14), v9->n128_f64))
              {
                *(v24 + 4 * v12) = v15 - 1;
                v13 = v13[1];
                ++v12;
              }

              else
              {
                v16 = *v13;
                v17 = v13[1];
                v16[1] = v17;
                *v17 = v16;
                --*(v10 + 56);
                sub_1D0B9FF7C(v13 + 2);
                operator delete(v13);
                v13 = v17;
              }

              if (v15 >= v11)
              {
                break;
              }

              ++v15;
              v14 += 16;
            }

            while (v13 != (v10 + 40));
          }
        }

        v20 = v12;
        v21 = 1;
        v22 = v12;
        v23 = v12;
        *(v10 + 5936) = v12;
        sub_1D0C01C70(v18, v10 + 64, v19);
        sub_1D0BF181C(v10 + 64, v18);
        sub_1D0C01E74(v18, v10 + 2888, v19);
        sub_1D0B9F5D4(v10 + 2888, v18);
        sub_1D0C01F50(v18, v10 + 3624, v19);
        sub_1D0B894B0(v10 + 3624, v18);
        sub_1D0C02030(v18, v10 + 5056, v19);
      }
    }

    else
    {
      *v18 = *(v7 + 8);
      sub_1D0BAAEBC(v7);
      sub_1D0BADC18(v10, v9);
      *v10 = 0;
      sub_1D0BADC18(v10, v18);
    }
  }
}

double sub_1D0D7B740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 12);
  v5 = (v4 * v3);
  *&result = 0x100000003;
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v7 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v5)
  {
    v8 = *(a3 + 32);
    v9 = *(a2 + 32);
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

double sub_1D0D7B7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 12);
  v5 = (v4 * v3);
  *&result = 0x100000003;
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v7 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v5)
  {
    v8 = *(a3 + 32);
    do
    {
      v9 = *v8++;
      result = *(a2 + 8 * v9);
      *v7++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

void *sub_1D0D7B804(void *result)
{
  result[9] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

double sub_1D0D7B844(uint64_t a1, uint64_t a2, float64x2_t a3)
{
  *(a1 + 24) = 0x300000003;
  *a1 = &unk_1F4CD5DD0;
  *(a1 + 8) = xmmword_1D0E76C10;
  *(a1 + 32) = a1 + 40;
  *&result = *&sub_1D0BC5ED4(a2, a1, a3);
  return result;
}

uint64_t sub_1D0D7B88C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = 0x100000001;
  v6 = &unk_1F4CDF158;
  *&v4 = 0x100000001;
  *(&v4 + 1) = 0x100000001;
  v7 = v4;
  v9 = &v10;
  v10 = a4;
  return sub_1D0C51DC8(a1, a2, a3, &v6);
}

uint64_t sub_1D0D7B8EC@<X0>(unsigned int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if ((a1 & 0x80000000) != 0)
  {
    __assert_rtn("Eye", "cnmatrix.h", 2135, "nr >= 0");
  }

  if ((a2 & 0x80000000) != 0)
  {
    __assert_rtn("Eye", "cnmatrix.h", 2136, "nc >= 0");
  }

  *(a3 + 24) = 0x300000003;
  *a3 = &unk_1F4CD5DD0;
  *(a3 + 32) = a3 + 40;
  *(a3 + 8) = a1;
  *(a3 + 12) = a2;
  *(a3 + 16) = a2 * a1;
  *(a3 + 20) = a1;
  result = sub_1D0BBBC00(a3, 0.0);
  if (a1 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a1;
  }

  if (v7)
  {
    v8 = 0;
    v9 = *(a3 + 20) + 1;
    v10 = *(a3 + 32);
    do
    {
      *(v10 + 8 * v8) = 0x3FF0000000000000;
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  return result;
}

double sub_1D0D7B9D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x300000003;
  *a2 = &unk_1F4CD5DD0;
  *(a2 + 8) = xmmword_1D0E76C10;
  *(a2 + 32) = a2 + 40;
  *&result = *&sub_1D0BA5940(a1, a2);
  return result;
}

uint64_t sub_1D0D7BB94(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  sub_1D0D95644(v13, *(a2 + 12));
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = vdupq_n_s64(v4 - 1);
    v7 = xmmword_1D0E84440;
    v8 = xmmword_1D0E7DD30;
    v9 = (v13[4] + 8);
    v10 = vdupq_n_s64(4uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v6, v8));
      if (vuzp1_s16(v11, *v6.i8).u8[0])
      {
        *(v9 - 2) = v5;
      }

      if (vuzp1_s16(v11, *&v6).i8[2])
      {
        *(v9 - 1) = v5 + 1;
      }

      if (vuzp1_s16(*&v6, vmovn_s64(vcgeq_u64(v6, *&v7))).i32[1])
      {
        *v9 = v5 + 2;
        v9[1] = v5 + 3;
      }

      v5 += 4;
      v7 = vaddq_s64(v7, v10);
      v8 = vaddq_s64(v8, v10);
      v9 += 4;
    }

    while (((v4 + 3) & 0xFFFFFFFC) != v5);
  }

  return sub_1D0D8AF38(a1, a2, &unk_1EE053E50, v13);
}

uint64_t sub_1D0D7BCA0(uint64_t result, uint64_t a2)
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
        v7 = *(result + 664);
        v8 = *(result + 704);
        v9 = *(v7 + 20) * *(*(result + 760) + 4 * v5);
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

void *sub_1D0D7BD8C(void *result)
{
  result[91] = &unk_1F4CDEAF8;
  result[84] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0D7BE0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  v28 = 0x10000001CLL;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v25 = &unk_1F4CE1250;
  if ((v2 & 0x80000000) != 0)
  {
    __assert_rtn("CNMatrix", "cnmatrix.h", 419, "nr >= 0");
  }

  v26 = v2 | 0x100000000;
  LODWORD(v27) = v2;
  HIDWORD(v27) = v2;
  v29 = &v30;
  if (v2)
  {
    v5 = 0;
    v6 = (v2 + 3) & 0xFFFFFFFC;
    v7 = vdupq_n_s64(v2 - 1);
    v8 = xmmword_1D0E84440;
    v9 = xmmword_1D0E7DD30;
    v10 = &v31;
    v11 = vdupq_n_s64(4uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v7, v9));
      if (vuzp1_s16(v12, 0x10000001CLL).u8[0])
      {
        *(v10 - 3) = v5;
      }

      if (vuzp1_s16(v12, 0x10000001CLL).i8[2])
      {
        *(v10 - 2) = v5 + 1;
      }

      if (vuzp1_s16(0x10000001CLL, vmovn_s64(vcgeq_u64(v7, *&v8))).i32[1])
      {
        *(v10 - 1) = v5 + 2;
        *v10 = v5 + 3;
      }

      v5 += 4;
      v8 = vaddq_s64(v8, v11);
      v9 = vaddq_s64(v9, v11);
      v10 += 4;
    }

    while (v6 != v5);
  }

  *(a1 + 24) = 0x1C00000003;
  *(a1 + 8) = xmmword_1D0E845D0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE3590;
  *(a1 + 712) = a2;
  *(a1 + 744) = 0x100000003;
  *(a1 + 720) = &unk_1F4CDEAA0;
  *(a1 + 728) = xmmword_1D0E7DCC0;
  *(a1 + 752) = a1 + 760;
  *(a1 + 800) = 0x10000001CLL;
  *(a1 + 776) = &unk_1F4CE1250;
  *(a1 + 784) = xmmword_1D0E843A0;
  *(a1 + 808) = a1 + 816;
  sub_1D0B9F5D4(a1 + 720, &unk_1EE053E50);
  result = sub_1D0B9F5D4(a1 + 776, &v25);
  v14 = *(a1 + 736);
  v15 = *(a1 + 792);
  *(a1 + 8) = v14;
  *(a1 + 12) = v15;
  *(a1 + 16) = v15 * v14;
  *(a1 + 20) = v14;
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    v18 = *(a2 + 20);
    v19 = *(a2 + 32);
    do
    {
      if (v14)
      {
        v20 = *(a1 + 752);
        v21 = *(*(a1 + 808) + 4 * v17) * v18;
        v22 = *(a1 + 32);
        v23 = v16;
        result = v14;
        do
        {
          v24 = *v20++;
          *(v22 + 8 * v23++) = *(v19 + 8 * (v24 + v21));
          --result;
        }

        while (result);
      }

      ++v17;
      v16 += v14;
    }

    while (v17 != v15);
  }

  return result;
}

void *sub_1D0D7C0A4(void *result)
{
  result[97] = &unk_1F4CDEAF8;
  result[90] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0D7C124(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v23 = 0x10000001CLL;
  v18 = &unk_1F4CE1250;
  v19 = v4;
  v20 = 1;
  v21 = v4;
  v22 = v4;
  v24 = v25;
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v25[i] = i;
    }
  }

  *(a1 + 24) = 0x30000001CLL;
  *(a1 + 8) = xmmword_1D0E845E0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CE35D8;
  *(a1 + 712) = a2;
  *(a1 + 744) = 0x10000001CLL;
  *(a1 + 720) = &unk_1F4CE1250;
  *(a1 + 728) = xmmword_1D0E843A0;
  *(a1 + 752) = a1 + 760;
  *(a1 + 896) = 0x100000003;
  *(a1 + 872) = &unk_1F4CDEAA0;
  *(a1 + 880) = xmmword_1D0E7DCC0;
  *(a1 + 904) = a1 + 912;
  sub_1D0B9F5D4(a1 + 720, &v18);
  result = sub_1D0B9F5D4(a1 + 872, &unk_1EE053E50);
  v7 = *(a1 + 736);
  v8 = *(a1 + 888);
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
        v13 = *(a1 + 752);
        v14 = *(*(a1 + 904) + 4 * v10) * v11;
        v15 = *(a1 + 32);
        v16 = v9;
        result = v7;
        do
        {
          v17 = *v13++;
          *(v15 + 8 * v16++) = *(v12 + 8 * (v17 + v14));
          --result;
        }

        while (result);
      }

      ++v10;
      v9 += v7;
    }

    while (v10 != v8);
  }

  return result;
}

void *sub_1D0D7C2FC(void *result)
{
  result[109] = &unk_1F4CDEAF8;
  result[90] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void sub_1D0D7C380(uint64_t a1)
{
  sub_1D0D84A3C(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D7C3B8(void *a1)
{
  *a1 = &unk_1F4CE3F68;
  v3 = (a1 + 740);
  sub_1D0D83948(&v3);
  *a1 = &unk_1F4CE4100;
  a1[450] = &unk_1F4CD5E28;
  a1[84] = &unk_1F4CD5E28;
  a1[60] = &unk_1F4CD5E28;
  a1[32] = &unk_1F4CD5E28;
  a1[8] = &unk_1F4CD5E28;
  return MEMORY[0x1D387ECA0](a1, 0x10A1C40438F3BCFLL);
}

uint64_t sub_1D0D7C4E4(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  *(a2 + 25) = *(a1 + 41);
  *a2 = v4;
  *(a2 + 16) = v5;
  sub_1D0B894B0(a2 + 48, a1 + 64);
  sub_1D0B894B0(a2 + 240, a1 + 256);
  result = 0;
  *(a2 + 432) = *(a1 + 448);
  return result;
}

uint64_t sub_1D0D7C558(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16) == 4 && *(a2 + 20) == 4;
  if (v2 && (*(a2 + 40) & 1) == 0)
  {
    return sub_1D0D7F694(a1, a2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1D0D7C57C(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if (!*(a1 + 456))
  {
    return 0xFFFFFFFFLL;
  }

  *a2 = *(a1 + 464);
  sub_1D0B894B0(a3, a1 + 480);
  return 0;
}

uint64_t sub_1D0D7C5BC(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a1 + 456))
  {
    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 448))
  {
    return 0xFFFFFFFFLL;
  }

  *a2 = *(a1 + 464);
  sub_1D0B894B0(a3, a1 + 480);
  sub_1D0B894B0(a4, a1 + 672);
  sub_1D0B894B0(a5, a1 + 3600);
  return 0;
}

uint64_t sub_1D0D7C648(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (!(*(*v8 + 24))(v8, v1))
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v9[5];
  v28 = 0x10000000FLL;
  v23 = &unk_1F4CE4258;
  v29 = v30;
  v24 = v10;
  v25 = 1;
  v26 = v10;
  v27 = v10;
  if (v10 > 3)
  {
    v12 = &v30[v10];
    bzero(v30, 16 * ((v10 - 1) >> 1));
    *(v12 - 2) = 0;
    *(v12 - 1) = 0;
  }

  else if (v10 >= 1)
  {
    bzero(v30, 8 * v10);
  }

  v20 = 0x1300000013;
  v18 = &unk_1F4CE4070;
  v19 = xmmword_1D0E84640;
  v21 = &v22;
  v15 = 0xF00000013;
  v13 = &unk_1F4CE4028;
  v14 = xmmword_1D0E84650;
  v16 = &v17;
  return (*(*v9 + 96))(v9, v7, &v23, v5, v3, &v18, &v13);
}

uint64_t sub_1D0D7C810(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (!(*(*v10 + 24))(v10, v1))
  {
    return 0xFFFFFFFFLL;
  }

  v20 = 0x1300000013;
  v18 = &unk_1F4CE4070;
  v19 = xmmword_1D0E84640;
  v21 = &v22;
  v15 = 0xF00000013;
  v13 = &unk_1F4CE4028;
  v14 = xmmword_1D0E84650;
  v16 = &v17;
  return (*(*v11 + 96))(v11, v9, v7, v5, v3, &v18, &v13);
}

uint64_t sub_1D0D7C964(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!(*(*a1 + 24))(a1))
  {
    return 0xFFFFFFFFLL;
  }

  v12 = a1[5];
  v20 = 0x10000000FLL;
  v15 = &unk_1F4CE4258;
  v21 = v22;
  v16 = v12;
  v17 = 1;
  v18 = v12;
  v19 = v12;
  if (v12 > 3)
  {
    v14 = &v22[v12];
    bzero(v22, 16 * ((v12 - 1) >> 1));
    *(v14 - 2) = 0;
    *(v14 - 1) = 0;
  }

  else if (v12 >= 1)
  {
    bzero(v22, 8 * v12);
  }

  return (*(*a1 + 96))(a1, a2, &v15, a3, a4, a5, a6);
}

uint64_t sub_1D0D7CAA0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (!(*(*v10 + 24))(v10, v1) || !(*(*v11 + 64))(v11))
  {
    return 0xFFFFFFFFLL;
  }

  v14 = *(v11 + 5928);
  v15 = *(v11 + 5920);
  v47 = v5;
  if (v14 == v15)
  {
    v16 = *(v11 + 16);
    v17 = *(v11 + 20);
    v62 = 0x1300000013;
    v57 = &unk_1F4CE4070;
    v18 = v16 * v16;
    v63 = v64;
    v58 = v16;
    v59 = v16;
    v60 = v16 * v16;
    v61 = v16;
    if (v16 * v16 > 3)
    {
      v20 = v3;
      v21 = &v64[v18];
      bzero(v64, 16 * ((v18 - 1) >> 1));
      *(v21 - 2) = 0;
      *(v21 - 1) = 0;
      v3 = v20;
    }

    else if (v18 >= 1)
    {
      bzero(v64, 8 * (v16 * v16));
    }

    if (v16 >= 1)
    {
      v22 = 0;
      v23 = v63;
      v24 = v16;
      do
      {
        v23[v22] = 0x3FF0000000000000;
        v22 += v16 + 1;
        --v24;
      }

      while (v24);
    }

    v54 = 0xF00000013;
    v49 = &unk_1F4CE4028;
    v25 = v17 * v16;
    v55 = v56;
    v50 = v16;
    v51 = v17;
    v52 = v17 * v16;
    v53 = v16;
    if (v17 * v16 > 3)
    {
      v26 = &v56[v25];
      bzero(v56, 16 * ((v25 - 1) >> 1));
      *(v26 - 2) = 0;
      *(v26 - 1) = 0;
    }

    else if (v25 >= 1)
    {
      bzero(v56, 8 * (v17 * v16));
    }

    sub_1D0D80FE0(v65, (v11 + 464), v11 + 480, &v57, &v49);
    sub_1D0D809D4((v11 + 5920), v65);
    v14 = *(v11 + 5928);
    v15 = *(v11 + 5920);
  }

  if (0xCFF3FCFF3FCFF3FDLL * ((v14 - v15) >> 4) < 2)
  {
    if (v14 - v15 == 5456)
    {
      v44 = CNTimeSpan::operator-(v9, v15, v12, v13);
      if (fabs(v45 + v44) < 2.22044605e-16)
      {
        sub_1D0B894B0(v7, (v15 + 16));
        sub_1D0B894B0(v5, (v15 + 208));
        v43 = v15 + 3136;
        goto LABEL_42;
      }
    }
  }

  else if (v15 != v14)
  {
    v27 = 0;
    v28 = 0;
    v29 = INFINITY;
    v30 = -INFINITY;
    do
    {
      v31 = CNTimeSpan::operator-(v15, v9, v12, v13);
      *v12.i64 = v32 + v31;
      *v13.i64 = fabs(*v12.i64);
      if (*v13.i64 < 2.22044605e-16)
      {
        sub_1D0B894B0(v7, (v15 + 16));
        sub_1D0B894B0(v47, (v15 + 208));
        v43 = v15 + 3136;
        v46 = v3;
        goto LABEL_46;
      }

      if (*v12.i64 >= 0.0 || *v12.i64 <= v30)
      {
        if (*v12.i64 > 0.0 && *v12.i64 < v29)
        {
          v28 = v15;
          v29 = v32 + v31;
        }
      }

      else
      {
        v27 = v15;
        v30 = v32 + v31;
      }

      v15 += 5456;
    }

    while (v15 != v14);
    if (v27 && v28)
    {
      v34 = *(v11 + 5944);
      v35 = fabs(v29);
      if (fabs(v30) <= v34 && v35 <= v34)
      {
        *v12.i64 = v29 / (v29 - v30);
        if (*v12.i64 < 0.0)
        {
          *v12.i64 = 0.0;
        }

        v37 = fmin(*v12.i64, 1.0);
        *v12.i64 = v37;
        sub_1D0D80514((v27 + 16), &v57, v12);
        v38.f64[0] = 1.0 - v37;
        sub_1D0D80514((v28 + 16), &v49, v38);
        sub_1D0D80288(&v57, &v49, v65);
        v39 = sub_1D0B894B0(v7, v65);
        v39.n128_f64[0] = v37;
        sub_1D0D80598((v27 + 208), &v57, v39);
        v40.f64[0] = 1.0 - v37;
        sub_1D0D80598((v28 + 208), &v49, v40);
        sub_1D0D8030C(&v57, &v49, v65);
        v41 = sub_1D0B894B0(v47, v65);
        v41.n128_f64[0] = v37;
        sub_1D0D80618((v27 + 3136), &v57, v41);
        v42.f64[0] = 1.0 - v37;
        sub_1D0D80618((v28 + 3136), &v49, v42);
        sub_1D0D8038C(&v57, &v49, v65);
        v43 = v65;
LABEL_42:
        v46 = v3;
LABEL_46:
        sub_1D0B894B0(v46, v43);
        return 0;
      }
    }
  }

  result = sub_1D0D7D310(v11);
  if (!result)
  {
    sub_1D0D81140(v48, v7);
    sub_1D0D81228(&v57, v47);
    sub_1D0D8130C(&v49, v3);
    sub_1D0D81090(v65, v9, v48, &v57, &v49);
    sub_1D0D809D4((v11 + 5920), v65);
    return 0;
  }

  return result;
}

double sub_1D0D7CFF0(uint64_t a1)
{
  *a1 = &unk_1F4CE4100;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 88) = 0x100000013;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = &unk_1F4CE40B8;
  *(a1 + 96) = a1 + 104;
  *(a1 + 280) = 0x100000013;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = &unk_1F4CE40B8;
  *(a1 + 288) = a1 + 296;
  *(a1 + 448) = 1;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 504) = 0x100000013;
  *(a1 + 480) = &unk_1F4CE40B8;
  *(a1 + 488) = xmmword_1D0E844F0;
  *(a1 + 512) = a1 + 520;
  *(a1 + 696) = 0x1300000013;
  *(a1 + 672) = &unk_1F4CE4070;
  *(a1 + 680) = xmmword_1D0E84640;
  *(a1 + 704) = a1 + 712;
  *(a1 + 3624) = 0xF00000013;
  *(a1 + 3600) = &unk_1F4CE4028;
  *&result = 0xF00000013;
  *(a1 + 3608) = xmmword_1D0E84650;
  *(a1 + 3632) = a1 + 3640;
  *(a1 + 8) = 0;
  *(a1 + 456) = 0;
  return result;
}

uint64_t sub_1D0D7D150(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (v3)
  {
    v4 = *(a3 + 12) == 1;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 8) == 1)
  {
    if (v3 != *(a1 + 16))
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *(a1 + 16) = v3;
  }

  *(a1 + 464) = *a2;
  sub_1D0B894B0(a1 + 480, a3);
  v20 = 0x1300000013;
  v15 = &unk_1F4CE4070;
  v21 = v22;
  v7 = v3 * v3;
  v16 = v3;
  v17 = v3;
  v18 = v3 * v3;
  v19 = v3;
  if (v3 * v3 > 3)
  {
    v8 = &v22[v7];
    bzero(v22, 16 * ((v7 - 1) >> 1));
    *(v8 - 2) = 0;
    *(v8 - 1) = 0;
  }

  else if (v7 >= 1)
  {
    bzero(v22, 8 * (v3 * v3));
  }

  if (v3 >= 1)
  {
    v9 = 0;
    v10 = v21;
    v11 = v3;
    do
    {
      v10[v9] = 0x3FF0000000000000;
      v9 += v3 + 1;
      --v11;
    }

    while (v11);
  }

  sub_1D0B894B0(a1 + 672, &v15);
  if (*(a1 + 8) == 1)
  {
    v12 = *(a1 + 20);
    v20 = 0xF00000013;
    v15 = &unk_1F4CE4028;
    v13 = v12 * v3;
    v21 = v22;
    v16 = v3;
    v17 = v12;
    v18 = v12 * v3;
    v19 = v3;
    if (v12 * v3 > 3)
    {
      v14 = &v22[v13];
      bzero(v22, 16 * ((v13 - 1) >> 1));
      *(v14 - 2) = 0;
      *(v14 - 1) = 0;
    }

    else if (v13 >= 1)
    {
      bzero(v22, 8 * (v12 * v3));
    }

    sub_1D0B894B0(a1 + 3600, &v15);
  }

  result = 0;
  *(a1 + 456) = 1;
  return result;
}

uint64_t sub_1D0D7D310(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (!(*(*v14 + 24))(v14, v1) || !(*(*v15 + 64))(v15))
  {
    return 0xFFFFFFFFLL;
  }

  v18 = *(v15 + 20);
  result = 0xFFFFFFFFLL;
  if (*(v11 + 8) != v18 || *(v11 + 12) != 1)
  {
    return result;
  }

  v20 = v13;
  v21 = *(v15 + 16);
  v106 = *(v15 + 24);
  v22 = *(v15 + 448);
  v104 = v20;
  v23 = CNTimeSpan::operator-(v20, (v15 + 464), v16, v17);
  v25 = v24 + v23;
  if (fabs(v25) >= 2.22044605e-16)
  {
    v101 = v5;
    v103 = v7;
    v28 = 1.0;
    if (v25 <= 0.0)
    {
      v28 = -1.0;
    }

    v102 = v3;
    v344 = v28;
    v29 = vcvtpd_s64_f64(fabs(v25 / *(v15 + 48)));
    if (v29 <= 1)
    {
      v29 = 1;
    }

    v105 = v29;
    sub_1D0D8E430(v343, v15 + 480);
    v347 = 0x1300000013;
    v345 = &unk_1F4CE4070;
    v31 = "dEEEEE";
    v32 = v21 * v21;
    if (v22)
    {
      v348 = v349;
      LODWORD(v346) = v21;
      DWORD1(v346) = v21;
      DWORD2(v346) = v21 * v21;
      HIDWORD(v346) = v21;
      if (v32 > 3)
      {
        bzero(v349, 16 * ((v32 - 1) >> 1));
        v31 = "dEEEEE";
        v38 = &v349[v32];
        *(v38 - 2) = 0;
        *(v38 - 1) = 0;
      }

      else if (v32 >= 1)
      {
        bzero(v349, 8 * (v21 * v21));
        v31 = "N8cnmatrix8CNMatrixILj2ELj1EPFiPKvRNS0_ILj2ELj1EdEEEEE" + 48;
      }

      if (v21 >= 1)
      {
        v39 = 0;
        v40 = v348;
        v41 = v21;
        do
        {
          v40[v39] = 0x3FF0000000000000;
          v39 += v21 + 1;
          --v41;
        }

        while (v41);
      }

      v340 = *(v31 + 29);
      v338 = &unk_1F4CE4028;
      v42 = v18 * v21;
      v341 = v342;
      *&v339 = __PAIR64__(v18, v21);
      DWORD2(v339) = v18 * v21;
      HIDWORD(v339) = v21;
      if ((v18 * v21) > 3)
      {
        bzero(v342, 16 * ((v42 - 1) >> 1));
        v44 = &v342[v42];
        *(v44 - 2) = 0;
        *(v44 - 1) = 0;
      }

      else if (v42 >= 1)
      {
        bzero(v342, 8 * v18 * v21);
      }
    }

    else
    {
      v346 = xmmword_1D0E84640;
      v348 = v349;
      v340 = 0xF00000013;
      v338 = &unk_1F4CE4028;
      v339 = xmmword_1D0E84650;
      v341 = v342;
    }

    v335 = 0x100000013;
    v330 = &unk_1F4CE40B8;
    v336 = v337;
    v331 = v21;
    v332 = 1;
    v333 = v21;
    v334 = v21;
    if (v21 > 3)
    {
      v45 = &v337[v21];
      bzero(v337, 16 * ((v21 - 1) >> 1));
      *(v45 - 2) = 0;
      *(v45 - 1) = 0;
    }

    else if (v21 >= 1)
    {
      bzero(v337, 8 * v21);
    }

    v327 = 0x1300000013;
    v325 = &unk_1F4CE4070;
    v46 = v25 / v105;
    if (v22)
    {
      v328 = v329;
      LODWORD(v326) = v21;
      DWORD1(v326) = v21;
      DWORD2(v326) = v21 * v21;
      HIDWORD(v326) = v21;
      if (v32 > 3)
      {
        bzero(v329, 16 * ((v32 - 1) >> 1));
        v50 = &v329[v32];
        *(v50 - 2) = 0;
        *(v50 - 1) = 0;
      }

      else if (v32 >= 1)
      {
        bzero(v329, 8 * (v21 * v21));
      }

      v48 = "dEEEEE";
      v322 = 0xF00000013;
      v320 = &unk_1F4CE4028;
      v51 = v18 * v21;
      v323 = v324;
      *&v321 = __PAIR64__(v18, v21);
      DWORD2(v321) = v18 * v21;
      HIDWORD(v321) = v21;
      if ((v18 * v21) > 3)
      {
        bzero(v324, 16 * ((v51 - 1) >> 1));
        v48 = "dEEEEE";
        v52 = &v324[v51];
        *(v52 - 2) = 0;
        *(v52 - 1) = 0;
        v49 = "dEEEEE";
        v47 = "dEEEEE";
      }

      else
      {
        v49 = "N8cnmatrix8CNMatrixILj2ELj1EPFiPKvRNS0_ILj2ELj1EdEEEEE" + 48;
        v47 = "N8cnmatrix8CNMatrixILj2ELj1EPFiPKvRNS0_ILj2ELj1EdEEEEE" + 48;
        if (v51 >= 1)
        {
          bzero(v324, 8 * v18 * v21);
          v47 = "N8cnmatrix8CNMatrixILj2ELj1EPFiPKvRNS0_ILj2ELj1EdEEEEE" + 48;
          v48 = "N8cnmatrix8CNMatrixILj2ELj1EPFiPKvRNS0_ILj2ELj1EdEEEEE" + 48;
          v49 = "N8cnmatrix8CNMatrixILj2ELj1EPFiPKvRNS0_ILj2ELj1EdEEEEE" + 48;
        }
      }
    }

    else
    {
      v47 = "dEEEEE";
      v326 = xmmword_1D0E84640;
      v328 = v329;
      v48 = "dEEEEE";
      v322 = 0xF00000013;
      v320 = &unk_1F4CE4028;
      v49 = "dEEEEE";
      v321 = xmmword_1D0E84650;
      v323 = v324;
    }

    v53 = 0;
    v107 = *(v47 + 100);
    v54 = *(v48 + 29);
    v55 = *(v49 + 101);
    v108 = v55;
    while (1)
    {
      v55.n128_f64[0] = v46 * v53;
      *&v310 = 0;
      v309 = 0;
      *v56.i64 = CNTimeSpan::SetTimeSpan(&v309, 0, v55, v30);
      *&v319 = CNTimeSpan::operator+((v15 + 464), &v309, v56, v57);
      *(&v319 + 1) = v58;
      v316 = 0x100000013;
      v314 = &unk_1F4CE40B8;
      v315 = xmmword_1D0E844F0;
      v317 = &v318;
      sub_1D0B88838(v343, &v330, &v314);
      v311 = 0x1300000013;
      v309 = &unk_1F4CE4070;
      v310 = v107;
      v312 = v313;
      if (v22)
      {
        sub_1D0B88838(&v345, &v325, &v309);
        v306 = v54;
        v304 = &unk_1F4CE4028;
        v305 = v108;
        v307 = v308;
        sub_1D0B88838(&v338, &v320, &v304);
      }

      else
      {
        v306 = v54;
        v304 = &unk_1F4CE4028;
        v305 = v108;
        v307 = v308;
      }

      v303 = v319;
      sub_1D0D8E430(v302, &v314);
      if (v22)
      {
        sub_1D0D8069C(&v297, &v309);
        sub_1D0D807E0(&v292, &v304);
        v59 = v107;
        v60 = v108;
      }

      else
      {
        v299 = 0x1300000013;
        v297 = &unk_1F4CE4070;
        v59 = v107;
        v60 = v108;
        v298 = v107;
        v300 = &v301;
        v294 = v54;
        v292 = &unk_1F4CE4028;
        v293 = v108;
        v295 = &v296;
      }

      v289 = 0x100000013;
      v287 = &unk_1F4CE40B8;
      v288 = xmmword_1D0E844F0;
      v290 = &v291;
      v284 = 0x1300000013;
      v282 = &unk_1F4CE4070;
      v283 = v59;
      v285 = &v286;
      v279 = v54;
      v277 = &unk_1F4CE4028;
      v278 = v60;
      v280 = &v281;
      if (v106(&v303, &v344, v302, v11, v9, &v287, &v282, &v277))
      {
        break;
      }

      v274 = 0x1300000013;
      v272 = &unk_1F4CE4070;
      v273 = v107;
      v275 = &v276;
      if (v22)
      {
        sub_1D0B89390(&v282, &v297, &v272);
        v258 = v54;
        v256 = &unk_1F4CE4028;
        v257 = v108;
        v259 = v260;
        sub_1D0B89390(&v282, &v292, &v256);
        v269 = v54;
        v267 = &unk_1F4CE4028;
        v268 = v108;
        v270 = v271;
        v62 = sub_1D0B88838(&v256, &v277, &v267);
      }

      else
      {
        v269 = v54;
        v267 = &unk_1F4CE4028;
        v62.i64[1] = *(&v108 + 1);
        v268 = v108;
        v270 = v271;
      }

      v256 = 0;
      *&v257 = 0;
      *v62.i64 = v46 * 0.5;
      *v63.i64 = CNTimeSpan::SetTimeSpan(&v256, 0, v62, v61);
      v266[0] = CNTimeSpan::operator+(&v319, &v256, v63, v64);
      v266[1] = v65;
      v258 = 0x100000013;
      v256 = &unk_1F4CE40B8;
      *&v66.f64[1] = 0x1300000013;
      v257 = xmmword_1D0E844F0;
      v259 = v260;
      v66.f64[0] = v46 * 0.5;
      sub_1D0B8930C(&v287, &v256, v66);
      v263 = 0x100000013;
      v261 = &unk_1F4CE40B8;
      v262 = xmmword_1D0E844F0;
      v264 = &v265;
      sub_1D0B88838(&v314, &v256, &v261);
      if (v22)
      {
        v253 = 0x1300000013;
        v251 = &unk_1F4CE4070;
        v67.f64[1] = *(&v107 + 1);
        v252 = v107;
        v254 = v255;
        v67.f64[0] = v46 * 0.5;
        sub_1D0B8930C(&v272, &v251, v67);
        v258 = 0x1300000013;
        v256 = &unk_1F4CE4070;
        v257 = v107;
        v259 = v260;
        sub_1D0B88838(&v309, &v251, &v256);
        v253 = v54;
        v251 = &unk_1F4CE4028;
        v68.f64[1] = *(&v108 + 1);
        v252 = v108;
        v254 = v255;
        v68.f64[0] = v46 * 0.5;
        sub_1D0B8930C(&v267, &v251, v68);
        v248 = v54;
        v246 = &unk_1F4CE4028;
        v247 = v108;
        v249 = v250;
        sub_1D0B88838(&v304, &v251, &v246);
        v69 = v107;
        v70 = v108;
      }

      else
      {
        v258 = 0x1300000013;
        v256 = &unk_1F4CE4070;
        v69 = v107;
        v70 = v108;
        v257 = v107;
        v259 = v260;
        v248 = v54;
        v246 = &unk_1F4CE4028;
        v247 = v108;
        v249 = v250;
      }

      v243 = 0x100000013;
      v241 = &unk_1F4CE40B8;
      v242 = xmmword_1D0E844F0;
      v244 = &v245;
      v253 = 0x1300000013;
      v251 = &unk_1F4CE4070;
      v252 = v69;
      v254 = v255;
      v238 = v54;
      v236 = &unk_1F4CE4028;
      v237 = v70;
      v239 = &v240;
      if (v106(v266, &v344, &v261, v11, v9, &v241, &v251, &v236))
      {
        break;
      }

      v233 = 0x1300000013;
      v231 = &unk_1F4CE4070;
      v232 = v107;
      v234 = &v235;
      if (v22)
      {
        sub_1D0B89390(&v251, &v256, &v231);
        v217 = v54;
        v215 = &unk_1F4CE4028;
        v216 = v108;
        v218 = v219;
        sub_1D0B89390(&v251, &v246, &v215);
        v228 = v54;
        v226 = &unk_1F4CE4028;
        v227 = v108;
        v229 = v230;
        v72 = sub_1D0B88838(&v215, &v236, &v226);
      }

      else
      {
        v228 = v54;
        v226 = &unk_1F4CE4028;
        v72.i64[1] = *(&v108 + 1);
        v227 = v108;
        v229 = v230;
      }

      v215 = 0;
      *&v216 = 0;
      *v72.i64 = v46 * 0.5;
      *v73.i64 = CNTimeSpan::SetTimeSpan(&v215, 0, v72, v71);
      v225[0] = CNTimeSpan::operator+(&v319, &v215, v73, v74);
      v225[1] = v75;
      v217 = 0x100000013;
      v215 = &unk_1F4CE40B8;
      *&v76.f64[1] = 0x1300000013;
      v216 = xmmword_1D0E844F0;
      v218 = v219;
      v76.f64[0] = v46 * 0.5;
      sub_1D0B8930C(&v241, &v215, v76);
      v222 = 0x100000013;
      v220 = &unk_1F4CE40B8;
      v221 = xmmword_1D0E844F0;
      v223 = &v224;
      sub_1D0B88838(&v314, &v215, &v220);
      if (v22)
      {
        v212 = 0x1300000013;
        v210 = &unk_1F4CE4070;
        v77.f64[1] = *(&v107 + 1);
        v211 = v107;
        v213 = v214;
        v77.f64[0] = v46 * 0.5;
        sub_1D0B8930C(&v231, &v210, v77);
        v217 = 0x1300000013;
        v215 = &unk_1F4CE4070;
        v216 = v107;
        v218 = v219;
        sub_1D0B88838(&v309, &v210, &v215);
        v212 = v54;
        v210 = &unk_1F4CE4028;
        v78.f64[1] = *(&v108 + 1);
        v211 = v108;
        v213 = v214;
        v78.f64[0] = v46 * 0.5;
        sub_1D0B8930C(&v226, &v210, v78);
        v207 = v54;
        v205 = &unk_1F4CE4028;
        v206 = v108;
        v208 = v209;
        sub_1D0B88838(&v304, &v210, &v205);
        v79 = v107;
        v80 = v108;
      }

      else
      {
        v217 = 0x1300000013;
        v215 = &unk_1F4CE4070;
        v79 = v107;
        v80 = v108;
        v216 = v107;
        v218 = v219;
        v207 = v54;
        v205 = &unk_1F4CE4028;
        v206 = v108;
        v208 = v209;
      }

      v202 = 0x100000013;
      v200 = &unk_1F4CE40B8;
      v201 = xmmword_1D0E844F0;
      v203 = &v204;
      v212 = 0x1300000013;
      v210 = &unk_1F4CE4070;
      v211 = v79;
      v213 = v214;
      v197 = v54;
      v195 = &unk_1F4CE4028;
      v196 = v80;
      v198 = &v199;
      if (v106(v225, &v344, &v220, v11, v9, &v200, &v210, &v195))
      {
        break;
      }

      v192 = 0x1300000013;
      v190 = &unk_1F4CE4070;
      v191 = v107;
      v193 = &v194;
      if (v22)
      {
        sub_1D0B89390(&v210, &v215, &v190);
        v176 = v54;
        v174 = &unk_1F4CE4028;
        v175 = v108;
        v177 = v178;
        sub_1D0B89390(&v210, &v205, &v174);
        v187 = v54;
        v185 = &unk_1F4CE4028;
        v186 = v108;
        v188 = v189;
        v82 = sub_1D0B88838(&v174, &v195, &v185);
      }

      else
      {
        v187 = v54;
        v185 = &unk_1F4CE4028;
        v82.i64[1] = *(&v108 + 1);
        v186 = v108;
        v188 = v189;
      }

      v174 = 0;
      *&v175 = 0;
      *v82.i64 = v46;
      *v83.i64 = CNTimeSpan::SetTimeSpan(&v174, 0, v82, v81);
      v184[0] = CNTimeSpan::operator+(&v319, &v174, v83, v84);
      v184[1] = v85;
      v176 = 0x100000013;
      v174 = &unk_1F4CE40B8;
      *&v86.f64[1] = 0x1300000013;
      v175 = xmmword_1D0E844F0;
      v177 = v178;
      v86.f64[0] = v46;
      sub_1D0B8930C(&v200, &v174, v86);
      v181 = 0x100000013;
      v179 = &unk_1F4CE40B8;
      v180 = xmmword_1D0E844F0;
      v182 = &v183;
      sub_1D0B88838(&v314, &v174, &v179);
      if (v22)
      {
        v171 = 0x1300000013;
        v87.f64[1] = *(&v107 + 1);
        v170 = v107;
        v169 = &unk_1F4CE4070;
        v172 = v173;
        v87.f64[0] = v46;
        sub_1D0B8930C(&v190, &v169, v87);
        v176 = 0x1300000013;
        v174 = &unk_1F4CE4070;
        v175 = v107;
        v177 = v178;
        sub_1D0B88838(&v309, &v169, &v174);
        v171 = v54;
        v88.f64[1] = *(&v108 + 1);
        v170 = v108;
        v169 = &unk_1F4CE4028;
        v172 = v173;
        v88.f64[0] = v46;
        sub_1D0B8930C(&v185, &v169, v88);
        v166 = v54;
        v165 = v108;
        v164 = &unk_1F4CE4028;
        v167 = v168;
        sub_1D0B88838(&v304, &v169, &v164);
        v89 = v107;
        v90 = v108;
      }

      else
      {
        v176 = 0x1300000013;
        v174 = &unk_1F4CE4070;
        v89 = v107;
        v90 = v108;
        v175 = v107;
        v177 = v178;
        v166 = v54;
        v165 = v108;
        v164 = &unk_1F4CE4028;
        v167 = v168;
      }

      v161 = 0x100000013;
      v160 = xmmword_1D0E844F0;
      v159 = &unk_1F4CE40B8;
      v162 = &v163;
      v171 = 0x1300000013;
      v170 = v89;
      v169 = &unk_1F4CE4070;
      v172 = v173;
      v156 = v54;
      v154 = &unk_1F4CE4028;
      v155 = v90;
      v157 = &v158;
      if (v106(v184, &v344, &v179, v11, v9, &v159, &v169, &v154))
      {
        break;
      }

      if (v22)
      {
        sub_1D0D80410(&v169, &v174, &v149);
        sub_1D0D80490(&v169, &v164, &v139);
        sub_1D0D8038C(&v139, &v154, &v144);
      }

      else
      {
        v151 = 0x1300000013;
        v149 = &unk_1F4CE4070;
        v150 = v107;
        v152 = &v153;
        v146 = v54;
        v144 = &unk_1F4CE4028;
        v145 = v108;
        v147 = &v148;
      }

      v116 = 0x100000013;
      v114 = &unk_1F4CE40B8;
      *&v91.f64[1] = 0x1300000013;
      v115 = xmmword_1D0E844F0;
      v117 = &v118;
      v91.f64[0] = 2.0;
      sub_1D0B8930C(&v241, &v114, v91);
      v121 = 0x100000013;
      v119 = &unk_1F4CE40B8;
      v120 = xmmword_1D0E844F0;
      v122 = &v123;
      sub_1D0B88838(&v287, &v114, &v119);
      v111 = 0x100000013;
      v109 = &unk_1F4CE40B8;
      *&v92.f64[1] = 0x1300000013;
      v110 = xmmword_1D0E844F0;
      v112 = &v113;
      v92.f64[0] = 2.0;
      sub_1D0B8930C(&v200, &v109, v92);
      v126 = 0x100000013;
      v124 = &unk_1F4CE40B8;
      v125 = xmmword_1D0E844F0;
      v127 = &v128;
      sub_1D0B88838(&v119, &v109, &v124);
      v131 = 0x100000013;
      v129 = &unk_1F4CE40B8;
      v130 = xmmword_1D0E844F0;
      v132 = &v133;
      sub_1D0B88838(&v124, &v159, &v129);
      v136 = 0x100000013;
      v134 = &unk_1F4CE40B8;
      *&v93.f64[1] = 0x1300000013;
      v135 = xmmword_1D0E844F0;
      v137 = &v138;
      v93.f64[0] = v46 / 6.0;
      sub_1D0B8930C(&v129, &v134, v93);
      v141 = 0x100000013;
      v139 = &unk_1F4CE40B8;
      v140 = xmmword_1D0E844F0;
      v142 = &v143;
      sub_1D0B88838(&v330, &v134, &v139);
      v55 = sub_1D0B894B0(&v330, &v139);
      if (v22)
      {
        v55.n128_u64[0] = 2.0;
        sub_1D0D80598(&v231, &v114, v55);
        sub_1D0D8030C(&v272, &v114, &v119);
        v94.f64[0] = 2.0;
        sub_1D0D80598(&v190, &v109, v94);
        sub_1D0D8030C(&v119, &v109, &v124);
        sub_1D0D8030C(&v124, &v149, &v129);
        v95.f64[0] = v46 / 6.0;
        sub_1D0D80598(&v129, &v134, v95);
        sub_1D0D8030C(&v325, &v134, &v139);
        v96 = sub_1D0B894B0(&v325, &v139);
        v96.n128_u64[0] = 2.0;
        sub_1D0D80618(&v226, &v114, v96);
        sub_1D0D8038C(&v267, &v114, &v119);
        v97.f64[0] = 2.0;
        sub_1D0D80618(&v185, &v109, v97);
        sub_1D0D8038C(&v119, &v109, &v124);
        sub_1D0D8038C(&v124, &v144, &v129);
        v98.f64[0] = v46 / 6.0;
        sub_1D0D80618(&v129, &v134, v98);
        sub_1D0D8038C(&v320, &v134, &v139);
        v55 = sub_1D0B894B0(&v320, &v139);
      }

      if (v105 == ++v53)
      {
        *(v15 + 40) = v46;
        *(v15 + 464) = *v104;
        v311 = 0x100000013;
        v309 = &unk_1F4CE40B8;
        v310 = xmmword_1D0E844F0;
        v312 = v313;
        sub_1D0B88838(v15 + 480, &v330, &v309);
        sub_1D0B894B0(v15 + 480, &v309);
        if (v22)
        {
          sub_1D0D8030C(&v345, &v325, &v297);
          sub_1D0D80410(&v297, v15 + 672, &v309);
          sub_1D0B894B0(v15 + 672, &v309);
          sub_1D0D8030C(&v345, &v325, &v309);
          sub_1D0D80490(&v309, v15 + 3600, &v282);
          sub_1D0D8038C(&v338, &v320, &v272);
          sub_1D0D8038C(&v282, &v272, &v297);
          sub_1D0B894B0(v15 + 3600, &v297);
          sub_1D0B894B0(v103, v15 + 480);
          sub_1D0D8030C(&v345, &v325, &v309);
          sub_1D0B894B0(v101, &v309);
          sub_1D0D8038C(&v338, &v320, &v309);
          v99 = &v309;
          v100 = v102;
        }

        else
        {
          v99 = (v15 + 480);
          v100 = v103;
        }

        sub_1D0B894B0(v100, v99);
        return 0;
      }
    }

    return 0xFFFFFFFFLL;
  }

  sub_1D0B894B0(v7, v15 + 480);
  if (v22)
  {
    v26 = v5;
    v347 = 0x1300000013;
    v345 = &unk_1F4CE4070;
    v348 = v349;
    v27 = v21 * v21;
    LODWORD(v346) = v21;
    DWORD1(v346) = v21;
    DWORD2(v346) = v21 * v21;
    HIDWORD(v346) = v21;
    if (v21 * v21 > 3)
    {
      bzero(v349, 16 * ((v27 - 1) >> 1));
      v33 = &v349[v27];
      *(v33 - 2) = 0;
      *(v33 - 1) = 0;
    }

    else if (v27 >= 1)
    {
      bzero(v349, 8 * (v21 * v21));
    }

    if (v21 >= 1)
    {
      v34 = 0;
      v35 = v348;
      v36 = v21;
      do
      {
        v35[v34] = 0x3FF0000000000000;
        v34 += v21 + 1;
        --v36;
      }

      while (v36);
    }

    sub_1D0B894B0(v26, &v345);
    v347 = 0xF00000013;
    v345 = &unk_1F4CE4028;
    v37 = v18 * v21;
    v348 = v349;
    *&v346 = __PAIR64__(v18, v21);
    DWORD2(v346) = v18 * v21;
    HIDWORD(v346) = v21;
    if ((v18 * v21) > 3)
    {
      bzero(v349, 16 * ((v37 - 1) >> 1));
      v43 = &v349[v37];
      *(v43 - 2) = 0;
      *(v43 - 1) = 0;
    }

    else if (v37 >= 1)
    {
      bzero(v349, 8 * v18 * v21);
    }

    sub_1D0B894B0(v3, &v345);
  }

  result = 0;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_1D0D7F694(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (!*a2 || !*(a2 + 1))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = a2[5];
  if (a2[4] > v4 || v4 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a2 + 4);
  result = 0xFFFFFFFFLL;
  if (fabs(*(a2 + 3)) > v8 || v8 <= 0.0)
  {
    return result;
  }

  if (*(a2 + 40) == 1)
  {
    if (a2[62] != v2 || a2[63] != 1)
    {
      return result;
    }

    v25 = 0x100000013;
    v23 = &unk_1F4CE40B8;
    v24 = xmmword_1D0E844F0;
    v26 = &v27;
    v20 = 0x100000013;
    v18 = &unk_1F4CE4180;
    v19 = xmmword_1D0E844F0;
    v21 = &v22;
    sub_1D0D7FDEC((a2 + 60), &v23, &v18);
    if (*v26 < 0.0)
    {
      return 0xFFFFFFFFLL;
    }

    result = 0xFFFFFFFFLL;
    if (a2[14] != v2 || a2[15] != 1)
    {
      return result;
    }

    sub_1D0D7FB08((a2 + 12), &v23);
    if (*v26 < 0.0)
    {
      return 0xFFFFFFFFLL;
    }

    sub_1D0D7FD48((a2 + 60), (a2 + 12), v17);
    sub_1D0D7FC88(v17, 2, &v18);
    sub_1D0D7FBC8(&v18, &v23);
    if (*v26 <= 0.0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (*(a1 + 8) == 1)
  {
    v9 = *(a1 + 16) != *a2 || *(a1 + 20) != a2[1];
    v12 = *(a1 + 24);
    v13 = *(a2 + 1);
    v14 = *a2;
    v15 = *(a2 + 1);
    *(a1 + 41) = *(a2 + 25);
    *(a1 + 16) = v14;
    *(a1 + 32) = v15;
    sub_1D0B894B0(a1 + 64, (a2 + 12));
    v16 = sub_1D0B894B0(a1 + 256, (a2 + 60));
    *(a1 + 448) = *(a2 + 432);
    *(a1 + 8) = 1;
    if (v9 || v12 != v13)
    {
      (*(*a1 + 104))(a1, v16);
    }

    return 0;
  }

  else
  {
    v10 = *a2;
    v11 = *(a2 + 1);
    *(a1 + 41) = *(a2 + 25);
    *(a1 + 16) = v10;
    *(a1 + 32) = v11;
    sub_1D0B894B0(a1 + 64, (a2 + 12));
    sub_1D0B894B0(a1 + 256, (a2 + 60));
    result = 0;
    *(a1 + 448) = *(a2 + 432);
    *(a1 + 8) = 1;
  }

  return result;
}

double sub_1D0D7FB08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x100000013;
  *a2 = &unk_1F4CE40B8;
  *(a2 + 8) = xmmword_1D0E844F0;
  *(a2 + 32) = a2 + 40;
  v5 = 0x100000013;
  v3 = &unk_1F4CE4180;
  v4 = xmmword_1D0E844F0;
  v6 = &v7;
  *&result = sub_1D0D7FDEC(a1, a2, &v3).n128_u64[0];
  return result;
}

double sub_1D0D7FBC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x200000013;
  *a2 = &unk_1F4CE41C8;
  *(a2 + 8) = xmmword_1D0E84690;
  *(a2 + 32) = a2 + 40;
  v5 = 0x200000013;
  v3 = &unk_1F4CE4210;
  v4 = xmmword_1D0E84690;
  v6 = &v7;
  *&result = sub_1D0D7FDEC(a1, a2, &v3).n128_u64[0];
  return result;
}

uint64_t sub_1D0D7FC88@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x200000013;
  *a3 = &unk_1F4CE41C8;
  *(a3 + 8) = xmmword_1D0E84690;
  *(a3 + 32) = a3 + 40;
  v6 = 0x200000013;
  v4 = &unk_1F4CE4210;
  v5 = xmmword_1D0E84690;
  v7 = &v8;
  return sub_1D0BB7860(a1, a2, a3, &v4);
}

uint64_t sub_1D0D7FD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x200000013;
  *a3 = &unk_1F4CE41C8;
  *(a3 + 8) = xmmword_1D0E84690;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B8876C(a1, a2, a3);
}

__n128 sub_1D0D7FDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D0D7FF3C(a1, 1, a2, a3);
  if (*(a1 + 8) == 1 || *(a1 + 12) == 1)
  {
    v8 = *(a2 + 16);
    if (v8 >= 2)
    {
      v9 = *(a2 + 32);
      v10 = *(a3 + 32);
      v11 = *v9;
      for (i = 1; i < v8; ++i)
      {
        v13 = v9[i];
        if (v13 < v11)
        {
          *v9 = v13;
          *v10 = v10[i];
          v8 = *(a2 + 16);
          v11 = v13;
        }
      }
    }

    result.n128_u64[0] = 0x100000001;
    result.n128_u64[1] = 0x100000001;
    *(a2 + 8) = result;
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t sub_1D0D7FF3C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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
            if (*(v6 + 8 * (v12 + i)) < v10)
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
            if (v28 < *(v21 + 8 * v25))
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

void *sub_1D0D801C8(void *result)
{
  *result = &unk_1F4CE4100;
  result[450] = &unk_1F4CD5E28;
  result[84] = &unk_1F4CD5E28;
  result[60] = &unk_1F4CD5E28;
  result[32] = &unk_1F4CD5E28;
  result[8] = &unk_1F4CD5E28;
  return result;
}

double sub_1D0D80288@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x100000013;
  *a3 = &unk_1F4CE40B8;
  *(a3 + 8) = xmmword_1D0E844F0;
  *(a3 + 32) = a3 + 40;
  *&result = *&sub_1D0B88838(a1, a2, a3);
  return result;
}

double sub_1D0D8030C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x1300000013;
  *a3 = &unk_1F4CE4070;
  *(a3 + 8) = xmmword_1D0E84640;
  *(a3 + 32) = a3 + 40;
  *&result = *&sub_1D0B88838(a1, a2, a3);
  return result;
}

double sub_1D0D8038C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0xF00000013;
  *a3 = &unk_1F4CE4028;
  *(a3 + 8) = xmmword_1D0E84650;
  *(a3 + 32) = a3 + 40;
  *&result = *&sub_1D0B88838(a1, a2, a3);
  return result;
}

uint64_t sub_1D0D80410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x1300000013;
  *a3 = &unk_1F4CE4070;
  *(a3 + 8) = xmmword_1D0E84640;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(a1, a2, a3);
}

uint64_t sub_1D0D80490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0xF00000013;
  *a3 = &unk_1F4CE4028;
  *(a3 + 8) = xmmword_1D0E84650;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(a1, a2, a3);
}

double sub_1D0D80514@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float64x2_t a3@<Q0>)
{
  *(a2 + 24) = 0x100000013;
  *a2 = &unk_1F4CE40B8;
  *(a2 + 8) = xmmword_1D0E844F0;
  *(a2 + 32) = a2 + 40;
  *&result = *&sub_1D0B8930C(a1, a2, a3);
  return result;
}

double sub_1D0D80598@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float64x2_t a3@<Q0>)
{
  *(a2 + 24) = 0x1300000013;
  *a2 = &unk_1F4CE4070;
  *(a2 + 8) = xmmword_1D0E84640;
  *(a2 + 32) = a2 + 40;
  *&result = *&sub_1D0B8930C(a1, a2, a3);
  return result;
}

double sub_1D0D80618@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float64x2_t a3@<Q0>)
{
  *(a2 + 24) = 0xF00000013;
  *a2 = &unk_1F4CE4028;
  *(a2 + 8) = xmmword_1D0E84650;
  *(a2 + 32) = a2 + 40;
  *&result = *&sub_1D0B8930C(a1, a2, a3);
  return result;
}

__n128 sub_1D0D8069C(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x1300000013;
  *(a1 + 24) = 0x1300000013;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE4070;
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
  if (v4 > 0x13)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 0x14)
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

__n128 sub_1D0D807E0(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0xF00000013;
  *(a1 + 24) = 0xF00000013;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE4028;
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
  if (v4 > 0x13)
  {
    v17 = "this->max_num_rows_ >= A.num_rows_";
    v18 = 616;
    goto LABEL_16;
  }

  if (v3 >= 0x10)
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

uint64_t sub_1D0D809D4(unint64_t *a1, _OWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1D0D80A2C(a1, a2);
  }

  else
  {
    sub_1D0D80B78(a1[1], a2);
    result = v3 + 5456;
    a1[1] = v3 + 5456;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1D0D80A2C(unint64_t *a1, _OWORD *a2)
{
  v2 = 0xCFF3FCFF3FCFF3FDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0xC0300C0300C03)
  {
    sub_1D0C5663C();
  }

  if (0x9FE7F9FE7F9FE7FALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x9FE7F9FE7F9FE7FALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCFF3FCFF3FCFF3FDLL * ((a1[2] - *a1) >> 4) >= 0x6018060180601)
  {
    v6 = 0xC0300C0300C03;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1D0D80C18(a1, v6);
  }

  v13 = 0;
  v14 = 5456 * v2;
  sub_1D0D80B78((5456 * v2), a2);
  v15 = 5456 * v2 + 5456;
  v7 = a1[1];
  v8 = (5456 * v2 + *a1 - v7);
  sub_1D0D80C74(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1D0D80F10(&v13);
  return v12;
}

void sub_1D0D80B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1D0D80F10(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_1D0D80B78(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;
  sub_1D0D8E430((a1 + 1), (a2 + 1));
  sub_1D0D8069C((a1 + 13), (a2 + 13));
  sub_1D0D807E0((a1 + 196), (a2 + 196));
  return a1;
}

void sub_1D0D80BD8(_Unwind_Exception *a1)
{
  *v2 = &unk_1F4CD5E28;
  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

void sub_1D0D80C18(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xC0300C0300C04)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0D80C74(uint64_t a1, void *a2, void *a3, _OWORD *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      sub_1D0D80D98(a4, v6);
      v6 += 341;
      a4 = v12 + 341;
      v12 += 341;
    }

    while (v6 != a3);
    v10 = 1;
    v7 = v5 + 392;
    do
    {
      v5[392] = &unk_1F4CD5E28;
      v5[26] = &unk_1F4CD5E28;
      v5[2] = &unk_1F4CD5E28;
      v5 += 682;
      v7 += 682;
    }

    while (v5 != a3);
  }

  return sub_1D0D80E38(v9);
}

_OWORD *sub_1D0D80D98(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;
  sub_1D0D8E430((a1 + 1), (a2 + 1));
  sub_1D0D8069C((a1 + 13), (a2 + 13));
  sub_1D0D807E0((a1 + 196), (a2 + 196));
  return a1;
}

void sub_1D0D80DF8(_Unwind_Exception *a1)
{
  *v2 = &unk_1F4CD5E28;
  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D80E38(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1D0D80E70(a1);
  }

  return a1;
}

uint64_t sub_1D0D80E70(uint64_t result)
{
  v1 = **(result + 16);
  v2 = **(result + 8);
  if (v1 != v2)
  {
    v3 = v1 - 290;
    v4 = v1 - 680;
    do
    {
      *v3 = &unk_1F4CD5E28;
      *(v3 - 366) = &unk_1F4CD5E28;
      *(v3 - 390) = &unk_1F4CD5E28;
      v5 = v3 - 392;
      v3 -= 682;
      v4 -= 682;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_1D0D80F10(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    v4 = v3 - 290;
    v5 = v3 - 680;
    do
    {
      *v4 = &unk_1F4CD5E28;
      *(v4 - 366) = &unk_1F4CD5E28;
      *(v4 - 390) = &unk_1F4CD5E28;
      v6 = v4 - 682;
      v7 = v4 - 392;
      v5 -= 682;
      v4 -= 682;
    }

    while (v7 != v2);
    *(a1 + 16) = v6 + 290;
  }

  v8 = *a1;
  if (*a1)
  {
    operator delete(v8);
  }

  return a1;
}

_OWORD *sub_1D0D80FE0(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = *a2;
  sub_1D0D8E430((a1 + 1), a3);
  sub_1D0D8069C((a1 + 13), a4);
  sub_1D0D807E0((a1 + 196), a5);
  return a1;
}

void sub_1D0D81050(_Unwind_Exception *a1)
{
  *v2 = &unk_1F4CD5E28;
  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

_OWORD *sub_1D0D81090(_OWORD *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = *a2;
  sub_1D0D8E430((a1 + 1), a3);
  sub_1D0D8069C((a1 + 13), a4);
  sub_1D0D807E0((a1 + 196), a5);
  return a1;
}

void sub_1D0D81100(_Unwind_Exception *a1)
{
  *v2 = &unk_1F4CD5E28;
  *v1 = &unk_1F4CD5E28;
  _Unwind_Resume(a1);
}

double sub_1D0D81140(uint64_t a1, uint64_t a2)
{
  *&result = 0x100000013;
  *(a1 + 24) = 0x100000013;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE40B8;
  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 0x13)
  {
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
    goto LABEL_9;
  }

  if (v3 > 1)
  {
    v9 = "this->max_num_cols_ >= A.NumCols()";
    v10 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v10, v9);
  }

  if (v5 >= 1)
  {
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7++;
      result = v8;
      *v6++ = v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

double sub_1D0D81228(uint64_t a1, uint64_t a2)
{
  *&result = 0x1300000013;
  *(a1 + 24) = 0x1300000013;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE4070;
  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 0x13)
  {
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
    goto LABEL_9;
  }

  if (v3 > 0x13)
  {
    v9 = "this->max_num_cols_ >= A.NumCols()";
    v10 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v10, v9);
  }

  if (v5 >= 1)
  {
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7++;
      result = v8;
      *v6++ = v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

double sub_1D0D8130C(uint64_t a1, uint64_t a2)
{
  *&result = 0xF00000013;
  *(a1 + 24) = 0xF00000013;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE4028;
  v4 = *(a2 + 8);
  v3 = *(a2 + 12);
  *(a1 + 8) = v4;
  *(a1 + 12) = v3;
  v5 = v3 * v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v4;
  v6 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v4 > 0x13)
  {
    v9 = "this->max_num_rows_ >= A.NumRows()";
    v10 = 567;
    goto LABEL_9;
  }

  if (v3 > 0xF)
  {
    v9 = "this->max_num_cols_ >= A.NumCols()";
    v10 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v10, v9);
  }

  if (v5 >= 1)
  {
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7++;
      result = v8;
      *v6++ = v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1D0D813F4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 80) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0x7FF8000000000000;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0x4022000000000000;
  *(a1 + 208) = 0u;
  v2 = a1 + 208;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 280) = 0x100000008;
  *(a1 + 256) = &unk_1F4CE4320;
  *(a1 + 264) = xmmword_1D0E84520;
  *(a1 + 288) = a1 + 296;
  *(a1 + 384) = 0x800000008;
  *(a1 + 360) = &unk_1F4CE43B0;
  *(a1 + 368) = xmmword_1D0E84510;
  *(a1 + 392) = a1 + 400;
  *(a1 + 936) = 0x100000008;
  *(a1 + 912) = &unk_1F4CE4320;
  *(a1 + 920) = xmmword_1D0E84520;
  *(a1 + 944) = a1 + 952;
  *(a1 + 1016) = 0;
  *(a1 + 1024) = 0;
  *(a1 + 1032) = 0x3FF0000000000000;
  *(a1 + 1097) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1120) = 0x3FF0000000000000;
  *(a1 + 1152) = 0;
  *(a1 + 1144) = 0;
  *(a1 + 1128) = 0u;
  *(a1 + 1160) = 0x3FF0000000000000;
  *(a1 + 1184) = 0;
  *(a1 + 1168) = 0u;
  *(a1 + 1192) = 0x3FF0000000000000;
  *(a1 + 1208) = 0u;
  *(a1 + 1200) = a1 + 1208;
  *(a1 + 1232) = 0u;
  *(a1 + 1224) = a1 + 1232;
  *(a1 + 1256) = 0u;
  *(a1 + 1248) = a1 + 1256;
  *(a1 + 1272) = 0;
  *(a1 + 1360) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1328) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1376) = 1065353216;
  *(a1 + 1384) = 0u;
  *(a1 + 1400) = 0u;
  *(a1 + 1416) = 1065353216;
  *(a1 + 1440) = 0u;
  *(a1 + 1424) = 0u;
  *(a1 + 1456) = 1065353216;
  v3 = (a1 + 1512);
  v4 = (a1 + 1928);
  *(a1 + 1464) = 0u;
  *(a1 + 1480) = 0u;
  *(a1 + 1496) = 1065353216;
  *(a1 + 1504) = 0;
  *(a1 + 1506) = 0;
  *(a1 + 1976) = 0;
  v5 = MEMORY[0x1E69E5530] + 64;
  *(a1 + 1928) = MEMORY[0x1E69E5530] + 64;
  v6 = *(MEMORY[0x1E69E54D0] + 16);
  v7 = *(MEMORY[0x1E69E54D0] + 8);
  *(a1 + 1512) = v7;
  *(v3 + *(v7 - 24)) = v6;
  v8 = (a1 + 1512 + *(*(a1 + 1512) - 24));
  std::ios_base::init(v8, (a1 + 1520));
  v9 = MEMORY[0x1E69E5530] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  *v3 = v9;
  *v4 = v5;
  MEMORY[0x1D387E8B0](v2 + 1312);
  *(a1 + 2080) = 0;
  *(a1 + 2088) = 0;
  *(a1 + 2096) = 0;
  *(a1 + 2192) = 0;
  *(a1 + 2200) = 0;
  *(a1 + 2304) = 0;
  *(a1 + 2312) = 0;
  *(a1 + 2416) = 0;
  *(a1 + 2424) = 1;
  *(a1 + 2432) = 0x7FF8000000000000;
  *(a1 + 2440) = 0;
  *(a1 + 2448) = 0x7FF8000000000000;
  return a1;
}

void sub_1D0D81770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void *a11, void *a12, void *a13, void **a14)
{
  std::ostream::~ostream();
  MEMORY[0x1D387EBF0](v18);
  sub_1D0BDFDC8(v17);
  sub_1D0BDFDC8(v15 + 1216);
  sub_1D0D818EC(v16);
  sub_1D0D818EC(v15 + 1136);
  sub_1D0BCB540(v15 + 1040, *v19);
  sub_1D0BCB540(v15 + 1016, *a10);
  sub_1D0BCB540(v15 + 992, *v20);
  *a11 = &unk_1F4CD5E28;
  *a12 = &unk_1F4CD5E28;
  *a13 = &unk_1F4CD5E28;
  sub_1D0D41E0C(v15);
  v22 = *a14;
  if (*a14)
  {
    *(v14 + 56) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0D818EC(uint64_t a1)
{
  sub_1D0BC27A8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_1D0D81928(uint64_t *a1)
{
  a1[1581] = &unk_1F4CE3720;
  a1[1489] = &unk_1F4CE3C10;
  a1[1482] = &unk_1F4CE3750;
  sub_1D0C02C50(a1 + 1487);
  a1[1482] = &unk_1F4CE37A8;
  a1[1476] = &unk_1F4CE37D8;
  sub_1D0BD9B48(a1 + 1481);
  a1[1476] = &unk_1F4CE3830;
  a1[1427] = &unk_1F4CDEAF8;
  a1[1421] = &unk_1F4CE37D8;
  sub_1D0BD9B48(a1 + 1426);
  a1[1421] = &unk_1F4CE3830;
  a1[1329] = &unk_1F4CD5E28;
  a1[1280] = &unk_1F4CDEAF8;
  a1[1101] = &unk_1F4CE3870;
  a1[922] = &unk_1F4CE3720;
  a1[743] = &unk_1F4CE3C10;
  a1[736] = &unk_1F4CE38A0;
  sub_1D0C02C50(a1 + 741);
  a1[736] = &unk_1F4CE37A8;
  a1[730] = &unk_1F4CE38E8;
  sub_1D0BD9B48(a1 + 735);
  a1[730] = &unk_1F4CE3830;
  a1[638] = &unk_1F4CDEAF8;
  a1[632] = &unk_1F4CE38E8;
  sub_1D0BD9B48(a1 + 637);
  a1[632] = &unk_1F4CE3830;
  a1[453] = &unk_1F4CD5E28;
  a1[361] = &unk_1F4CDEAF8;
  a1[8] = &unk_1F4CE3870;
  sub_1D0BAAF58(a1 + 5);
  return a1;
}

void *sub_1D0D81D00(void *a1)
{
  *a1 = &unk_1F4CE3750;
  sub_1D0C02C50(a1 + 5);
  *a1 = &unk_1F4CE37A8;
  return a1;
}

void *sub_1D0D81D60(void *a1)
{
  *a1 = &unk_1F4CE37D8;
  sub_1D0BD9B48(a1 + 5);
  *a1 = &unk_1F4CE3830;
  return a1;
}

void *sub_1D0D81E60(void *a1)
{
  *a1 = &unk_1F4CE38A0;
  sub_1D0C02C50(a1 + 5);
  *a1 = &unk_1F4CE37A8;
  return a1;
}

void *sub_1D0D81EC0(void *a1)
{
  *a1 = &unk_1F4CE38E8;
  sub_1D0BD9B48(a1 + 5);
  *a1 = &unk_1F4CE3830;
  return a1;
}

void sub_1D0D82050(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = 1;
        do
        {
          v8 = &v13[v7];
          if ((v13[v7] & 1) == 0)
          {
            v9 = *(*(a1 + 32) + 8 * v7);
            v10 = v7;
            do
            {
              v10 = (v10 * (v3 + v1 - v5)) % v6;
              v11 = *(a1 + 32);
              v12 = *(v11 + 8 * v10);
              *(v11 + 8 * v10) = v9;
              *v8 = 1;
              v8 = &v13[v10];
              v9 = v12;
            }

            while (!*v8);
          }

          ++v7;
        }

        while (v7 != v6);
      }
    }
  }
}

void sub_1D0D82154(void *a1)
{
  *a1 = &unk_1F4CE3750;
  sub_1D0C02C50(a1 + 5);
  *a1 = &unk_1F4CE37A8;

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D82364(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 2)
  {
    v4 = *(a1 + 12);
    if (v4 >= 2)
    {
      v6 = *(a1 + 20);
      bzero(a2, *(a1 + 16));
      v7 = *(a1 + 16);
      if (v7 >= 3)
      {
        v8 = v4 + v2 - v6;
        v9 = (v7 - 1);
        v10 = 1;
        do
        {
          sub_1D0BE0DE8(v15, *(a1 + 32) + 112 * v10);
          v11 = &a2[v10];
          if ((a2[v10] & 1) == 0)
          {
            v12 = v10;
            do
            {
              v12 = v12 * v8 % v9;
              v13 = 112 * v12;
              sub_1D0BE0DE8(v14, *(a1 + 32) + v13);
              sub_1D0B894B0(*(a1 + 32) + v13, v15);
              *v11 = 1;
              sub_1D0B894B0(v15, v14);
              v11 = &a2[v12];
            }

            while (!*v11);
          }

          ++v10;
        }

        while (v10 != v9);
      }
    }
  }
}

void sub_1D0D82474(void *a1)
{
  *a1 = &unk_1F4CE37D8;
  sub_1D0BD9B48(a1 + 5);
  *a1 = &unk_1F4CE3830;

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D825C4(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 2)
  {
    v4 = *(a1 + 12);
    if (v4 >= 2)
    {
      v6 = *(a1 + 20);
      bzero(a2, *(a1 + 16));
      v7 = *(a1 + 16);
      if (v7 >= 3)
      {
        v8 = v4 + v2 - v6;
        v9 = (v7 - 1);
        v10 = 1;
        do
        {
          sub_1D0BBA094(v14, *(a1 + 32) + (v10 << 6));
          v11 = &a2[v10];
          if ((a2[v10] & 1) == 0)
          {
            v12 = v10;
            do
            {
              v12 = v12 * v8 % v9;
              sub_1D0BBA094(v13, *(a1 + 32) + (v12 << 6));
              sub_1D0B894B0(*(a1 + 32) + (v12 << 6), v14);
              *v11 = 1;
              sub_1D0B894B0(v14, v13);
              v11 = &a2[v12];
            }

            while (!*v11);
          }

          ++v10;
        }

        while (v10 != v9);
      }
    }
  }
}

void sub_1D0D8286C(uint64_t a1, char *a2)
{
  v2 = *(a1 + 8);
  if (v2 >= 2)
  {
    v4 = *(a1 + 12);
    if (v4 >= 2)
    {
      v6 = *(a1 + 20);
      bzero(a2, *(a1 + 16));
      v7 = *(a1 + 16);
      if (v7 >= 3)
      {
        v8 = (v7 - 1);
        v9 = 1;
        do
        {
          v14 = *(*(a1 + 32) + 16 * v9);
          v10 = &a2[v9];
          if ((a2[v9] & 1) == 0)
          {
            v11 = v9;
            do
            {
              v11 = (v11 * (v4 + v2 - v6)) % v8;
              v12 = *(a1 + 32);
              v13 = *(v12 + 16 * v11);
              *(v12 + 16 * v11) = v14;
              *v10 = 1;
              v14 = v13;
              v10 = &a2[v11];
            }

            while (!*v10);
          }

          ++v9;
        }

        while (v9 != v8);
      }
    }
  }
}

void sub_1D0D82A0C(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = 1;
        do
        {
          v8 = &v13[v7];
          if ((v13[v7] & 1) == 0)
          {
            v9 = *(*(a1 + 32) + 8 * v7);
            v10 = v7;
            do
            {
              v10 = (v10 * (v3 + v1 - v5)) % v6;
              v11 = *(a1 + 32);
              v12 = *(v11 + 8 * v10);
              *(v11 + 8 * v10) = v9;
              *v8 = 1;
              v8 = &v13[v10];
              v9 = v12;
            }

            while (!*v8);
          }

          ++v7;
        }

        while (v7 != v6);
      }
    }
  }
}

void sub_1D0D82B10(void *a1)
{
  *a1 = &unk_1F4CE38A0;
  sub_1D0C02C50(a1 + 5);
  *a1 = &unk_1F4CE37A8;

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D82C60(void *a1)
{
  *a1 = &unk_1F4CE38E8;
  sub_1D0BD9B48(a1 + 5);
  *a1 = &unk_1F4CE3830;

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D82F48(void *a1)
{
  v1 = 2100;
  do
  {
    a1[v1] = &unk_1F4CE36E0;
    v1 -= 6;
  }

  while (v1 * 8);
  *a1 = &unk_1F4CE3698;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D82FA4(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v4 = a1 + 48 * *(a1 + 40);
  v5 = *(v4 + 56);
  v6 = *(v4 + 72);
  *(a2 + 40) = *(v4 + 88);
  *(a2 + 24) = v6;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D0D82FE4(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v4 = a1 + 48 * *(a1 + 44);
  v5 = *(v4 + 56);
  v6 = *(v4 + 72);
  *(a2 + 40) = *(v4 + 88);
  *(a2 + 24) = v6;
  *(a2 + 8) = v5;
  return result;
}

void sub_1D0D8302C(void *a1)
{
  v1 = 2100;
  do
  {
    a1[v1] = &unk_1F4CE3C98;
    v1 -= 6;
  }

  while (v1 * 8);
  *a1 = &unk_1F4CE3C50;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D83088(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v4 = a1 + 48 * *(a1 + 40);
  v5 = *(v4 + 56);
  v6 = *(v4 + 72);
  *(a2 + 40) = *(v4 + 88);
  *(a2 + 24) = v6;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D0D830C8(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v4 = a1 + 48 * *(a1 + 44);
  v5 = *(v4 + 56);
  v6 = *(v4 + 72);
  *(a2 + 40) = *(v4 + 88);
  *(a2 + 24) = v6;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D0D83110(uint64_t a1)
{
  if (*(a1 + 2416) == 1)
  {
    *(a1 + 2312) = &unk_1F4CD5E28;
  }

  if (*(a1 + 2304) == 1)
  {
    *(a1 + 2200) = &unk_1F4CD5E28;
  }

  v2 = MEMORY[0x1E69E54D0];
  v3 = *MEMORY[0x1E69E54D0];
  *(a1 + 1512) = *MEMORY[0x1E69E54D0];
  *(a1 + 1512 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x1D387E8C0](a1 + 1520);
  std::ostream::~ostream();
  MEMORY[0x1D387EBF0](a1 + 1928);
  sub_1D0BDFDC8(a1 + 1464);
  sub_1D0BDFDC8(a1 + 1424);
  sub_1D0D818EC(a1 + 1384);
  sub_1D0D818EC(a1 + 1344);
  sub_1D0BCB540(a1 + 1248, *(a1 + 1256));
  sub_1D0BCB540(a1 + 1224, *(a1 + 1232));
  sub_1D0BCB540(a1 + 1200, *(a1 + 1208));
  *(a1 + 912) = &unk_1F4CD5E28;
  *(a1 + 360) = &unk_1F4CD5E28;
  *(a1 + 256) = &unk_1F4CD5E28;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    *(a1 + 56) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1D0D83314(void *a1)
{
  *a1 = &unk_1F4CE3D10;
  sub_1D0D85624(a1 + 199);
  a1[171] = &unk_1F4CD5E28;
  sub_1D0D836A8(a1 + 165);

  return sub_1D0D833B8(a1);
}

uint64_t sub_1D0D833B8(uint64_t a1)
{
  *a1 = &unk_1F4CE3E08;
  if (*(a1 + 1319) < 0)
  {
    operator delete(*(a1 + 1296));
  }

  if (*(a1 + 1295) < 0)
  {
    operator delete(*(a1 + 1272));
  }

  v3 = (a1 + 1248);
  sub_1D0BA5F70(&v3);
  v3 = (a1 + 1224);
  sub_1D0BA5F70(&v3);
  v3 = (a1 + 1200);
  sub_1D0BA5F70(&v3);
  *(a1 + 848) = &unk_1F4CD5E28;
  sub_1D0D857FC((a1 + 800));
  *(a1 + 552) = &unk_1F4CD5E28;
  *(a1 + 304) = &unk_1F4CD5E28;
  sub_1D0D857FC((a1 + 256));
  *(a1 + 8) = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0D834E0(void *a1)
{
  sub_1D0D83314(a1);

  JUMPOUT(0x1D387ECA0);
}

double sub_1D0D83518@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x10000001ALL;
  *a2 = &unk_1F4CE3E48;
  *(a2 + 8) = xmmword_1D0E843B0;
  *(a2 + 32) = a2 + 40;
  v2 = 848;
  if (!*(a1 + 1108))
  {
    v2 = 304;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

void sub_1D0D835B0(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}

void *sub_1D0D836A8(void *a1)
{
  *a1 = &unk_1F4CE3DC0;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0D83724(void *a1)
{
  sub_1D0D836A8(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D83884(uint64_t a1)
{
  sub_1D0D833B8(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D83948(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    if (v3 != v2)
    {
      v4 = v3 - 2320;
      v5 = v3 - 5440;
      do
      {
        *v4 = &unk_1F4CD5E28;
        *(v4 - 366) = &unk_1F4CD5E28;
        *(v4 - 390) = &unk_1F4CD5E28;
        v6 = v4 - 3136;
        v4 -= 5456;
        v5 -= 5456;
      }

      while (v6 != v2);
    }

    v1[1] = v2;
    operator delete(v2);
  }
}

uint64_t sub_1D0D839F4(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1D0D83A44(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D83AB4(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1D0D83B04(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D83B84(int64x2_t *a1)
{
  *a1 = 0uLL;
  v1 = vdupq_n_s64(0x7FF8000000000000uLL);
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
  a1[4] = v1;
  a1[5] = v1;
  a1[6] = v1;
  a1[7] = v1;
  a1[8] = v1;
  a1[9] = v1;
  a1[10] = v1;
  a1[11] = v1;
  a1[12] = v1;
  a1[13] = v1;
  a1[14] = v1;
  sub_1D0D87FCC(a1[15].i64);
}

int64x2_t sub_1D0D83BDC(int64x2_t *a1)
{
  *(a1 + 8) = 0uLL;
  a1->i64[0] = &unk_1F4CEF6E8;
  a1[1].i8[8] = 0;
  a1[2] = 0uLL;
  a1[3].i8[0] = 0;
  *(&a1[3] + 8) = 0uLL;
  a1[4].i8[8] = 0;
  a1[5] = 0uLL;
  *(&a1[6] + 8) = 0uLL;
  a1[6].i64[0] = 0x7FF8000000000000;
  a1[7].i8[8] = 0;
  a1[9].i8[0] = 0;
  a1[8] = 0uLL;
  *(&a1[9] + 8) = 0uLL;
  a1[10].i8[8] = 0;
  a1[11] = 0uLL;
  a1[12].i64[0] = 0x7FF8000000000000;
  a1[12].i32[2] = 0;
  result = vdupq_n_s64(0x7FF8000000000000uLL);
  a1[13] = result;
  a1[14] = result;
  a1[15] = result;
  a1[16] = result;
  a1[17].i64[0] = 0x7FF8000000000000;
  a1[17].i8[8] = 0;
  a1[18] = result;
  a1[19] = result;
  a1[20] = result;
  a1[21] = result;
  a1[22].i64[0] = 0x7FF8000000000000;
  return result;
}

uint64_t sub_1D0D83C64(uint64_t a1)
{
  *a1 = &unk_1F4CE0830;
  if (*(a1 + 1751) < 0)
  {
    operator delete(*(a1 + 1728));
  }

  if (*(a1 + 1727) < 0)
  {
    operator delete(*(a1 + 1704));
  }

  v3 = (a1 + 1680);
  sub_1D0BA5F70(&v3);
  v3 = (a1 + 1656);
  sub_1D0BA5F70(&v3);
  v3 = (a1 + 1632);
  sub_1D0BA5F70(&v3);
  *(a1 + 1424) = &unk_1F4CD5E28;
  *(a1 + 872) = &unk_1F4CD5E28;
  *(a1 + 768) = &unk_1F4CD5E28;
  *(a1 + 664) = &unk_1F4CD5E28;
  *(a1 + 112) = &unk_1F4CD5E28;
  *(a1 + 8) = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0D83DBC(void *a1)
{
  *a1 = &unk_1F4CE07C8;
  a1[301] = &unk_1F4CD5E28;
  a1[288] = &unk_1F4CD5E28;
  a1[219] = &unk_1F4CD5E28;
  sub_1D0D83C64(a1);

  JUMPOUT(0x1D387ECA0);
}

double sub_1D0D83E70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x100000008;
  *a2 = &unk_1F4CE4320;
  *(a2 + 8) = xmmword_1D0E84520;
  *(a2 + 32) = a2 + 40;
  v2 = 1424;
  if (!*(a1 + 1540))
  {
    v2 = 664;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

double sub_1D0D83ECC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x800000008;
  *a2 = &unk_1F4CE43B0;
  *(a2 + 8) = xmmword_1D0E84510;
  *(a2 + 32) = a2 + 40;
  v2 = 872;
  if (!*(a1 + 1540))
  {
    v2 = 112;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

void sub_1D0D83F28(uint64_t a1)
{
  sub_1D0D83C64(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D83F60(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xC0300C0300C04)
  {
    sub_1D0D80C18(a1, a2);
  }

  sub_1D0C5663C();
}

_OWORD *sub_1D0D83FB0(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1D0D80D98(v4, v6);
      v6 += 341;
      v4 = v11 + 341;
      v11 += 341;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_1D0D80E38(v8);
  return v4;
}

double sub_1D0D84058(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;
  sub_1D0B894B0((a1 + 1), (a2 + 1));
  sub_1D0B894B0((a1 + 13), (a2 + 13));

  *&result = sub_1D0B894B0((a1 + 196), (a2 + 196)).n128_u64[0];
  return result;
}

uint64_t sub_1D0D840AC(uint64_t a1)
{
  *(a1 + 240) = &unk_1F4CDFE98;
  if (*(a1 + 271) < 0)
  {
    operator delete(*(a1 + 248));
  }

  *(a1 + 240) = &unk_1F4CD5F70;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1D0D8412C(uint64_t a1)
{
  *a1 = &unk_1F4CE0870;
  v2 = *(a1 + 560);
  if (v2)
  {
    sub_1D0B7CAB8(v2);
  }

  *(a1 + 296) = &unk_1F4CDFE98;
  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  *(a1 + 296) = &unk_1F4CD5F70;
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0D84220(uint64_t a1)
{
  *(a1 + 96) = &unk_1F4CD5E28;
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1D0D84290(uint64_t a1)
{
  *(a1 + 96) = &unk_1F4CD5E28;
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

__n128 sub_1D0D84320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 144))
  {
    sub_1D0D84488(a1);
    *a1 = &unk_1F4CE4300;
    *(a1 + 8) = *(a3 + 8);
    if (*(a3 + 39) < 0)
    {
      sub_1D0BC39B4((a1 + 16), *(a3 + 16), *(a3 + 24));
    }

    else
    {
      v5 = *(a3 + 16);
      *(a1 + 32) = *(a3 + 32);
      *(a1 + 16) = v5;
    }

    *a1 = &unk_1F4CE42D8;
    *(a1 + 40) = *(a3 + 40);
    v11 = *(a3 + 56);
    v12 = *(a3 + 88);
    *(a1 + 72) = *(a3 + 72);
    *(a1 + 56) = v11;
    *a1 = &unk_1F4CE0960;
    *(a1 + 88) = v12;
    *(a1 + 96) = &unk_1F4CEF658;
    result = *(a3 + 104);
    v13 = *(a3 + 120);
    *(a1 + 136) = *(a3 + 136);
    *(a1 + 120) = v13;
    *(a1 + 104) = result;
    *(a1 + 144) = 0;
  }

  else
  {
    *(a2 + 8) = *(a3 + 8);
    std::string::operator=((a2 + 16), (a3 + 16));
    *(a2 + 40) = *(a3 + 40);
    v7 = *(a3 + 72);
    v8 = *(a3 + 88);
    *(a2 + 56) = *(a3 + 56);
    *(a2 + 88) = v8;
    *(a2 + 72) = v7;
    result = *(a3 + 120);
    v10 = *(a3 + 104);
    *(a2 + 136) = *(a3 + 136);
    *(a2 + 104) = v10;
    *(a2 + 120) = result;
  }

  return result;
}

uint64_t sub_1D0D84488(uint64_t result)
{
  v1 = result;
  v2 = *(result + 144);
  if (v2 != -1)
  {
    result = (off_1F4CE0940[v2])(&v3, result);
  }

  *(v1 + 144) = -1;
  return result;
}

void sub_1D0D844E0(uint64_t a1, uint64_t a2)
{
  *(a2 + 96) = &unk_1F4CE36E0;
  *a2 = &unk_1F4CE4300;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void sub_1D0D84530(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F4CE4300;
  if (*(a2 + 39) < 0)
  {
    operator delete(*(a2 + 16));
  }
}

void sub_1D0D84560(uint64_t a1)
{
  *(a1 + 96) = &unk_1F4CE36E0;
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D845F0()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D0] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5410], std::exception::~exception);
}

__n128 sub_1D0D84640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 144) == 1)
  {
    *(a2 + 8) = *(a3 + 8);
    std::string::operator=((a2 + 16), (a3 + 16));
    *(a2 + 40) = *(a3 + 40);
    result = *(a3 + 56);
    v6 = *(a3 + 72);
    *(a2 + 88) = *(a3 + 88);
    *(a2 + 72) = v6;
    *(a2 + 56) = result;
  }

  else
  {
    sub_1D0D84488(a1);
    *a1 = &unk_1F4CE4300;
    *(a1 + 8) = *(a3 + 8);
    if (*(a3 + 39) < 0)
    {
      sub_1D0BC39B4((a1 + 16), *(a3 + 16), *(a3 + 24));
    }

    else
    {
      v8 = *(a3 + 16);
      *(a1 + 32) = *(a3 + 32);
      *(a1 + 16) = v8;
    }

    *a1 = &unk_1F4CE42D8;
    *(a1 + 40) = *(a3 + 40);
    result = *(a3 + 56);
    v9 = *(a3 + 72);
    *(a1 + 88) = *(a3 + 88);
    *(a1 + 72) = v9;
    *(a1 + 56) = result;
    *a1 = &unk_1F4CE09C0;
    *(a1 + 144) = 1;
  }

  return result;
}

void sub_1D0D84764(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

uint64_t *sub_1D0D847D4(uint64_t *a1, char *__s, size_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  *a1 = 0;
  v10 = strlen(__s);
  if (v10 >= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = v10;
  }

  sub_1D0D84840(a1, __s, v11, v6, v5);
  return a1;
}

void sub_1D0D84840(uint64_t *result, uint64_t a2, unint64_t a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v5 = 0;
  if (!a3)
  {
    goto LABEL_15;
  }

  do
  {
    v6 = *(a2 + v5);
    if (v6 != a4 && v6 != a5)
    {
      sub_1D0D848FC("bitset string ctor has invalid argument");
    }

    ++v5;
  }

  while (a3 != v5);
  v8 = 0;
  v5 = 14;
  if (a3 < 0xE)
  {
    v5 = a3;
  }

  v9 = *result;
  v10 = v5;
  do
  {
    v11 = v9 & ~(1 << v8);
    v9 |= 1 << v8;
    if (*(a2 - 1 + v10) != a5)
    {
      v9 = v11;
    }

    *result = v9;
    ++v8;
    --v10;
  }

  while (v10);
  if (a3 <= 0xD)
  {
LABEL_15:
    v12 = result;
    v13 = v5;
    sub_1D0D8498C(&v12, 14 - v5);
  }
}

void sub_1D0D848FC(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1D0D84958(exception, a1);
  __cxa_throw(exception, off_1E83D7D78, MEMORY[0x1E69E5298]);
}

std::logic_error *sub_1D0D84958(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55C8] + 16);
  return result;
}

void sub_1D0D8498C(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t sub_1D0D84A3C(uint64_t a1)
{
  v2 = (a1 + 61688);
  v3 = (a1 + 44840);
  v4 = (a1 + 19656);
  *a1 = &unk_1F4CE39D0;
  sub_1D0D81928((a1 + 61736));
  v5 = -16800;
  v6 = v2;
  do
  {
    *v6 = &unk_1F4CE36E0;
    v6 -= 6;
    v2 -= 6;
    v5 += 48;
  }

  while (v5);
  *(a1 + 44888) = &unk_1F4CE3698;
  v7 = a1 + 44840;
  v8 = -16800;
  do
  {
    *v3 = &unk_1F4CE3C98;
    v3 -= 6;
    v7 -= 48;
    v8 += 48;
  }

  while (v8);
  *(a1 + 28040) = &unk_1F4CE3C50;
  *(a1 + 25312) = &unk_1F4CDFD88;
  *(a1 + 27880) = &unk_1F4CD5B78;
  *(a1 + 25304) = &unk_1F4CD5B78;
  *(a1 + 22576) = &unk_1F4CDFD88;
  *(a1 + 25144) = &unk_1F4CD5B78;
  if (v4[2896] == 1)
  {
    v4[2896] = 0;
  }

  if (v4[232] == 1)
  {
    v4[232] = 0;
  }

  if (*v4 == 1)
  {
    *v4 = 0;
  }

  *(a1 + 19584) = &unk_1F4CE3930;
  sub_1D0D83110(a1 + 17024);
  sub_1D0D859D4(a1 + 17000, *(a1 + 17008));
  sub_1D0D83314((a1 + 15256));
  sub_1D0D855A8((a1 + 15104));
  *(a1 + 14840) = &unk_1F4CD5E28;
  *(a1 + 8872) = &unk_1F4CE3F68;
  v10 = (a1 + 14792);
  sub_1D0D83948(&v10);
  *(a1 + 8872) = &unk_1F4CE4100;
  *(a1 + 12472) = &unk_1F4CD5E28;
  *(a1 + 9544) = &unk_1F4CD5E28;
  *(a1 + 9352) = &unk_1F4CD5E28;
  *(a1 + 9128) = &unk_1F4CD5E28;
  *(a1 + 8936) = &unk_1F4CD5E28;
  *(a1 + 2920) = &unk_1F4CE3F68;
  v10 = (a1 + 8840);
  sub_1D0D83948(&v10);
  *(a1 + 2920) = &unk_1F4CE4100;
  *(a1 + 6520) = &unk_1F4CD5E28;
  *(a1 + 3592) = &unk_1F4CD5E28;
  *(a1 + 3400) = &unk_1F4CD5E28;
  *(a1 + 3176) = &unk_1F4CD5E28;
  *(a1 + 2984) = &unk_1F4CD5E28;
  return sub_1D0D4FA90(a1);
}

void sub_1D0D84F48(uint64_t a1)
{
  *(a1 + 24) = 0x1C0000001CLL;
  *a1 = &unk_1F4CE3F20;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0E846E0;
  sub_1D0D8505C(a1);
}

void sub_1D0D84FAC(_Unwind_Exception *exception_object)
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

void sub_1D0D84FF4(void *a1, __n128 a2)
{
  sub_1D0D855A8(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D85150(uint64_t a1)
{
  *(a1 + 24) = 0x1A00000017;
  *a1 = &unk_1F4CE3DC0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0E846F0;
  sub_1D0D8378C(a1);
}

void sub_1D0D851B8(_Unwind_Exception *exception_object)
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

void sub_1D0D852BC(void *a1)
{
  a1[1] = &unk_1F4CDFD88;
  a1[322] = &unk_1F4CD5B78;
  *a1 = &unk_1F4CD5B78;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D85450(uint64_t a1)
{
  *(a1 + 24) = 0x100000057;
  *a1 = &unk_1F4CE37D8;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = xmmword_1D0E84400;
  sub_1D0BD9A84(a1);
}

void sub_1D0D854C8(_Unwind_Exception *a1)
{
  sub_1D0BD9B48(v2);
  *v1 = &unk_1F4CE3830;
  _Unwind_Resume(a1);
}

void sub_1D0D854FC(uint64_t a1)
{
  *(a1 + 24) = 0x100000057;
  *a1 = &unk_1F4CE3750;
  *(a1 + 40) = 0;
  *(a1 + 32) = 0;
  *(a1 + 8) = xmmword_1D0E84400;
  sub_1D0D8220C(a1);
}

void sub_1D0D85574(_Unwind_Exception *a1)
{
  sub_1D0C02C50(v2);
  *v1 = &unk_1F4CE37A8;
  _Unwind_Resume(a1);
}

void *sub_1D0D855A8(void *a1)
{
  *a1 = &unk_1F4CE3F20;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void *sub_1D0D85624(void *a1)
{
  *a1 = &unk_1F4CE3D78;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0D856A0(void *a1)
{
  sub_1D0D85624(a1);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0D857FC(void *a1)
{
  *a1 = &unk_1F4CE3CC8;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0D85878(void *a1)
{
  sub_1D0D857FC(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0D859D4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1D0D859D4(a1, *a2);
    sub_1D0D859D4(a1, a2[1]);
    sub_1D0D857FC(a2 + 114);

    operator delete(a2);
  }
}

void sub_1D0D85A30(uint64_t a1, const char *a2, const char *a3, int a4)
{
  v5 = 12;
  v4 = 4;
  cnprint::CNPrinter::Print(&v5, &v4, "time,%.3lf,h-function failure on line %d: %s() %s", *(a1 + 8) + *a1, a4, a3, a2);
}

uint64_t sub_1D0D85A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = xmmword_1D0E84440;
  v12 = vdupq_n_s64(0x13uLL);
  v13 = xmmword_1D0E7DD30;
  v14 = v25 + 3;
  v15 = vdupq_n_s64(4uLL);
  for (i = 13; i != 33; i += 4)
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v12, v13)), *v11.i8).u8[0])
    {
      *(v14 - 3) = i - 13;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v13)), *&v11).i8[2])
    {
      *(v14 - 2) = i - 12;
    }

    if (vuzp1_s16(*&v11, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v11))).i32[1])
    {
      *(v14 - 1) = i - 11;
      *v14 = i - 10;
    }

    v11 = vaddq_s64(v11, v15);
    v13 = vaddq_s64(v13, v15);
    v14 += 4;
  }

  v29 = 0x100000013;
  v27 = &unk_1F4CE2378;
  v30 = v31;
  v28 = xmmword_1D0E844F0;
  v31[1] = v25[1];
  v31[2] = v25[2];
  v32[0] = v26[0];
  *(v32 + 12) = *(v26 + 12);
  v31[0] = v25[0];
  v17 = sub_1D0D86068(v24, a3, &v27);
  if ((*(*a4 + 56))(a4, a2, v24, v17))
  {
    return 0xFFFFFFFFLL;
  }

  v21 = 0x100000013;
  v19 = &unk_1F4CE40B8;
  v20 = xmmword_1D0E844F0;
  v22 = &v23;
  if ((*(*a4 + 72))(a4, a1, a5, &v19))
  {
    return 0xFFFFFFFFLL;
  }

  sub_1D0B894B0(a6, &v19);
  return 0;
}

double sub_1D0D85CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a3 + 8) = xmmword_1D0E844F0;
  v8 = *(a1 + 32);
  v9 = *(a2 + 32);
  v10 = *(a3 + 32);
  *v10 = v8->f64[0] + *v9;
  v10[1] = v8->f64[1] + v9[1];
  v10[2] = v8[1].f64[0] + v9[2];
  __asm { FMOV            V2.2D, #1.0 }

  *a4 = _Q2;
  *(a4 + 16) = 0x3FF0000000000000;
  v10[3] = v8[1].f64[1] + v9[3];
  v10[4] = v8[2].f64[0] + v9[4];
  v10[5] = v8[2].f64[1] + v9[5];
  v44 = _Q2;
  *(a4 + 24) = _Q2;
  *(a4 + 40) = 0x3FF0000000000000;
  v16 = v8[3];
  _Q1 = v8[4];
  _D5 = v9[6];
  _D6 = v9[7];
  _D4 = v9[8];
  v21 = _D6 * _D6 + _D5 * _D5 + _D4 * _D4;
  if (v21 <= 1.0)
  {
    _D7 = sqrt(1.0 - v21);
  }

  else
  {
    _D7 = 1.0 / sqrt(v21 + 1.0);
    _D5 = _D5 * _D7;
    _D6 = _D6 * _D7;
    _D4 = _D4 * _D7;
  }

  __asm
  {
    FMLA            D16, D5, V1.D[1]
    FMLA            D17, D6, V1.D[1]
    FMLA            D6, D4, V1.D[1]
    FMLA            D4, D7, V1.D[1]
  }

  v27 = sqrt(_D17 * _D17 + _D16 * _D16 + _D6 * _D6 + _D4 * _D4);
  if (fabs(v27) >= 2.22044605e-16)
  {
    v29 = _D16 / v27;
    v30 = _D17 / v27;
    v31 = _D6 / v27;
    v28 = _D4 / v27;
  }

  else
  {
    v28 = 1.0;
    v29 = 0.0;
    v30 = 0.0;
    v31 = 0.0;
  }

  v10[6] = v29;
  v10[7] = v30;
  v10[8] = v31;
  v10[9] = v28;
  v32 = sqrt(v16.f64[1] * v16.f64[1] + v16.f64[0] * v16.f64[0] + _Q1.f64[0] * _Q1.f64[0] + _Q1.f64[1] * _Q1.f64[1]);
  if (fabs(v32) >= 2.22044605e-16)
  {
    v35 = vdupq_lane_s64(*&v32, 0);
    v33 = vdivq_f64(_Q1, v35);
    v34 = vdivq_f64(v16, v35);
  }

  else
  {
    v33 = xmmword_1D0E7DCB0;
    v34 = 0uLL;
  }

  v45[0] = v34;
  v45[1] = v33;
  cnrotation::CNRotation::dqddq(&v46, v45);
  v36 = v48;
  *(a4 + 48) = *v48;
  v37 = v47;
  v38 = &v36[v47];
  *(a4 + 56) = *v38;
  v39 = &v36[2 * v37];
  *(a4 + 64) = *v39;
  *(a4 + 72) = v36[1];
  *(a4 + 80) = v38[1];
  *(a4 + 88) = v36[((2 * v37) | 1)];
  *(a4 + 96) = v36[2];
  *(a4 + 104) = v38[2];
  *(a4 + 112) = v39[2];
  *(a4 + 120) = v36[3];
  *(a4 + 128) = v38[3];
  *(a4 + 136) = v39[3];
  v40 = *(a1 + 32);
  v41 = *(a2 + 32);
  v42 = *(a3 + 32);
  v42[10] = v40[10] + v41[9];
  v42[11] = v40[11] + v41[10];
  v42[12] = v40[12] + v41[11];
  *(a4 + 144) = v44;
  *(a4 + 160) = 0x3FF0000000000000;
  v42[13] = v40[13] + v41[12];
  v42[14] = v40[14] + v41[13];
  v42[15] = v40[15] + v41[14];
  *(a4 + 168) = v44;
  *(a4 + 184) = 0x3FF0000000000000;
  v42[16] = v40[16] + v41[15];
  v42[17] = v40[17] + v41[16];
  result = v40[18] + v41[17];
  v42[18] = result;
  *(a4 + 192) = v44;
  *(a4 + 208) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1D0D8601C(uint64_t a1, int a2)
{
  *(a1 + 28) = 26;
  *a1 = &unk_1F4CE0B08;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = 3;
  *(a1 + 12) = a2;
  *(a1 + 16) = 3 * a2;
  *(a1 + 20) = 0x300000003;
  return sub_1D0BBBC00(a1, 0.0);
}

double sub_1D0D86068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(a3 + 12);
  v5 = (v4 * v3);
  *&result = 0x100000013;
  *(a1 + 24) = 0x100000013;
  *a1 = &unk_1F4CE40B8;
  *(a1 + 8) = v3;
  *(a1 + 12) = v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = v3;
  v7 = (a1 + 40);
  *(a1 + 32) = a1 + 40;
  if (v5)
  {
    v8 = *(a3 + 32);
    do
    {
      v9 = *v8++;
      result = *(a2 + 8 * v9);
      *v7++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

void sub_1D0D86104(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  if (v1 >= 2)
  {
    v3 = *(a1 + 12);
    if (v3 >= 2)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 20);
      bzero(v13, v4);
      if (v4 >= 3)
      {
        v6 = (v4 - 1);
        v7 = *(a1 + 32);
        v8 = 1;
        do
        {
          v9 = &v13[v8];
          if ((v13[v8] & 1) == 0)
          {
            v10 = *(v7 + 8 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 8 * v11);
              *(v7 + 8 * v11) = v10;
              *v9 = 1;
              v9 = &v13[v11];
              v10 = v12;
            }

            while (!*v9);
          }

          ++v8;
        }

        while (v8 != v6);
      }
    }
  }
}