uint64_t sub_1D0D50244(uint64_t a1, uint64_t a2, void *lpsrc, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!lpsrc || (v11 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CE0AC0, 0)) == 0)
  {
    LOWORD(v28) = 12;
    v39.i8[0] = 4;
    cnprint::CNPrinter::Print(&v28, &v39, "time,%.3lf,h-function failure on line %d: %s() %s", MEMORY[0x30] + MEMORY[0x28], 4380, "h_DeviceVelocity_RavenPNT", "dynamic_cast failed");
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
    LOWORD(v28) = 12;
    v39.i8[0] = 4;
    cnprint::CNPrinter::Print(&v28, &v39, "time,%.3lf,h-function failure on line %d: %s() %s", *(v11 + 6) + *(v11 + 5), 4393, "h_DeviceVelocity_RavenPNT", "inadequate matrices");
    return 0xFFFFFFFFLL;
  }

  if (!*(v11 + 7))
  {
    LOWORD(v28) = 12;
    v39.i8[0] = 4;
    cnprint::CNPrinter::Print(&v28, &v39, "time,%.3lf,h-function failure on line %d: %s() %s", *(v11 + 6) + *(v11 + 5), 4399, "h_DeviceVelocity_RavenPNT", "invalid numerical integrator");
    return 0xFFFFFFFFLL;
  }

  v88 = *(v11 + 40);
  v19 = *(v11 + 9);
  v87 = **(v11 + 8);
  sub_1D0D96A9C(v85, v19);
  v20 = *(v12 + 7);
  v82 = 0x10000001CLL;
  v81 = xmmword_1D0E843A0;
  v80 = &unk_1F4CE0A20;
  v83 = &v84;
  if (sub_1D0D85A88(&v88, &v87, v86, v20, *(v12 + 11), &v80))
  {
    LOWORD(v28) = 12;
    v39.i8[0] = 4;
    cnprint::CNPrinter::Print(&v28, &v39, "time,%.3lf,h-function failure on line %d: %s() %s", *(v12 + 6) + *(v12 + 5), 4413, "h_DeviceVelocity_RavenPNT", "could not integrate full states");
    return 0xFFFFFFFFLL;
  }

  v81 = xmmword_1D0E843A0;
  v77 = 0x10000001CLL;
  v75 = &unk_1F4CE0A20;
  v76 = xmmword_1D0E843A0;
  v78 = &v79;
  v39 = vdupq_n_s64(0x7FF8000000000000uLL);
  v40 = v39;
  v41 = v39;
  v42 = v39;
  v43 = v39;
  v44 = v39;
  v45 = v39;
  v46 = v39;
  v47 = v39;
  v48 = v39;
  v49 = v39;
  v50 = v39;
  v51 = v39;
  v52 = v39;
  v53 = v39;
  v54 = v39;
  v55 = v39;
  v56 = v39;
  v57 = v39;
  v58 = v39;
  v59 = v39;
  v60 = v39;
  v61 = v39;
  v62 = v39;
  v63 = v39;
  v64 = v39;
  v65 = v39;
  v66 = v39;
  v67 = v39;
  v68 = v39;
  v69 = v39;
  v70 = v39;
  v71 = v39;
  v72 = v39;
  v73 = v39;
  v74 = 0x7FF8000000000000;
  sub_1D0D85CD4(&v80, a1, &v75, &v39);
  *(a4 + 8) = xmmword_1D0E7DCC0;
  v22 = v78;
  v23 = *(a2 + 32);
  v24 = *(a4 + 32);
  *v24 = v78[3] + *v23;
  v24[1] = v22[4] + v23[1];
  v24[2] = v22[5] + v23[2];
  v30 = 0x1A00000003;
  v28 = &unk_1F4CE0B08;
  v31 = &v32;
  v29 = xmmword_1D0E84410;
  bzero(&v32, 0x270uLL);
  sub_1D0B894B0(a5, &v28);
  v25 = *(a5 + 20);
  v26 = *(a5 + 32);
  v27 = v41.i64[0];
  *(v26 + 24 * v25) = v40.i64[1];
  *(v26 + 8 * ((4 * v25) | 1)) = v27;
  *(v26 + 40 * v25 + 16) = v41.i64[1];
  v30 = 0x300000003;
  v28 = &unk_1F4CD5DD0;
  v29 = xmmword_1D0E76C10;
  v34 = 0;
  v33 = 0u;
  v36 = 0u;
  v31 = &v32;
  v32 = 0x3FF0000000000000;
  v35 = 0x3FF0000000000000;
  v37 = 0;
  v38 = 0x3FF0000000000000;
  sub_1D0B894B0(a6, &v28);
  return 0;
}

uint64_t sub_1D0D5069C(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenPNTEstimator::AddUserVelocityMeasurement(raven::RavenPNTEstimator *this, const raven::VelocityEvent *a2)
{
  v49[4] = *MEMORY[0x1E69E9840];
  if (*(a2 + 280))
  {
    v37 = 0x100000003;
    v36 = xmmword_1D0E7DCC0;
    v35 = &unk_1F4CDEB28;
    v38 = &v39;
    v39 = *(a2 + 18);
    v40 = *(a2 + 38);
    v28 = 0x300000003;
    v27 = xmmword_1D0E76C10;
    v29 = v30;
    v5 = *(a2 + 41);
    v6 = *(a2 + 42);
    v30[0] = *(a2 + 312);
    *(&v4 + 1) = *(&v30[0] + 1);
    *&v4 = v5;
    v30[1] = v4;
    v7 = *(a2 + 344);
    v31 = v6;
    v32 = v7;
    v33 = v5;
    v34 = v7;
    v8 = *(a2 + 13);
    v9 = *(a2 + 14);
    *&v25 = v8;
    *(&v25 + 1) = v9;
    v26 = &unk_1F4CD5DD0;
    sub_1D0BA002C(v17, 27);
    v17[0] = &unk_1F4CE0CD0;
    v19 = v25;
    v20 = this + 2920;
    v21 = this + 14824;
    v22 = this + 14840;
    v23 = this + 2760;
    v24 = this + 2800;
    if ((v27 & 0x80000000) != 0)
    {
      __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
    }

    v45 = 0x100000003;
    v41 = &unk_1F4CDEB28;
    v10 = v47;
    v46 = v47;
    v42 = v27 | 0x100000000;
    v43 = v27;
    v44 = v27;
    if (v27 > 3)
    {
      v11 = &v47[v27];
      bzero(v47, 16 * ((v27 - 1) >> 1));
      *(v11 - 2) = 0;
      *(v11 - 1) = 0;
    }

    else if (v27)
    {
      bzero(v47, 8 * v27);
    }

    if (*(this + 61736))
    {
      if (*(this + 16918) == 174)
      {
        LOWORD(v49[0]) = 2;
        v48 = 2;
        cnprint::CNPrinter::Print(v49, &v48, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v9 + v8);
      }

      else if (*(this + 61737) == 1)
      {
        if (cnprint::CNPrinter::GetLogLevel(v10) <= 1)
        {
          LOWORD(v49[0]) = 2;
          v48 = 1;
          cnprint::CNPrinter::Print(v49, &v48, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v9 + v8);
        }
      }

      else
      {
        v12 = sub_1D0B7C8AC(&v25, this + 7718);
        if (!v12)
        {
          v49[0] = 0;
          v49[1] = 0;
          sub_1D0D86A58(v49, v17);
        }

        if (cnprint::CNPrinter::GetLogLevel(v12) <= 1)
        {
          LOWORD(v49[0]) = 2;
          v48 = 1;
          cnprint::CNPrinter::Print(v49, &v48, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", *(&v25 + 1) + v25, *(this + 7719) + *(this + 7718));
        }
      }
    }

    else if (cnprint::CNPrinter::GetLogLevel(v10) <= 1)
    {
      LOWORD(v49[0]) = 2;
      v48 = 1;
      cnprint::CNPrinter::Print(v49, &v48, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v9 + v8);
    }

    LOWORD(v49[0]) = 12;
    v48 = 4;
    v41 = (*(*a2 + 16))(a2);
    v42 = v13;
    v14 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v41, "Could not add measurement - user velocity");
    if (*(this + 2735) >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = *(this + 339);
    }

    cnprint::CNPrinter::Print(v49, &v48, "%s", v15);
    v17[0] = &unk_1F4CE4300;
    if (v18 < 0)
    {
      operator delete(v17[2]);
    }
  }

  return 0xFFFFFFFFLL;
}

void sub_1D0D50D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D50D78(uint64_t a1, uint64_t a2, void *lpsrc, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!lpsrc || (v11 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CE0B68, 0)) == 0)
  {
    LOWORD(v49) = 12;
    v60[0] = 4;
LABEL_23:
    cnprint::CNPrinter::Print(&v49, v60, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6);
    return 0xFFFFFFFFLL;
  }

  v12 = v11;
  if (!*(v11 + 7))
  {
    LOWORD(v49) = 12;
    v60[0] = 4;
    goto LABEL_23;
  }

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
    LOWORD(v49) = 12;
    v60[0] = 4;
    goto LABEL_23;
  }

  v85 = *(v11 + 40);
  v19 = *(v11 + 9);
  v84 = **(v11 + 8);
  sub_1D0D96A9C(v83, v19);
  v20 = **(v12 + 10);
  v80 = 0x10000001CLL;
  v79 = xmmword_1D0E843A0;
  v78 = &unk_1F4CE0A20;
  v81 = &v82;
  if (v20)
  {
    if (v20 != 1)
    {
      if (v20 == 2)
      {
        __assert_rtn("h_UserVelocity_RavenPNT", "ravenmeasurementfunctions.h", 7073, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
      }

      goto LABEL_38;
    }

    if (!sub_1D0D9046C(&v85, &v84, v83, *(v12 + 7), *(v12 + 11), 1, 1, 1, &v78))
    {
      goto LABEL_38;
    }

    LOWORD(v49) = 12;
    v60[0] = 4;
    goto LABEL_23;
  }

  *&v60[24] = 0x100000007;
  *&v60[8] = xmmword_1D0E84420;
  *v60 = &unk_1F4CE0BB0;
  *&v61[0] = v61 + 8;
  if (sub_1D0C50CB8(&v85, &v84, v83, 0, v60))
  {
    LOWORD(v49) = 12;
    LOBYTE(v73) = 4;
    cnprint::CNPrinter::Print(&v49, &v73, "time,%.3lf,h-function failure on line %d: %s() %s", v22, v23, v24);
    return 0xFFFFFFFFLL;
  }

  v51 = 0x700000001;
  v49 = &unk_1F4CE23C0;
  v52 = &v53;
  v50 = xmmword_1D0E84430;
  v25 = xmmword_1D0E84440;
  v26 = xmmword_1D0E7DD30;
  v27 = &v54 + 1;
  v28 = 13;
  v29 = vdupq_n_s64(7uLL);
  v30 = vdupq_n_s64(4uLL);
  do
  {
    if (vuzp1_s16(vmovn_s64(vcgtq_u64(v29, v26)), *v25.i8).u8[0])
    {
      *(v27 - 3) = v28 + 8;
    }

    if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v26)), *&v25).i8[2])
    {
      *(v27 - 2) = v28 + 9;
    }

    if (vuzp1_s16(*&v25, vmovn_s64(vcgtq_u64(vdupq_n_s64(7uLL), *&v25))).i32[1])
    {
      *(v27 - 1) = v28 + 10;
      *v27 = v28 + 11;
    }

    v25 = vaddq_s64(v25, v30);
    v26 = vaddq_s64(v26, v30);
    v28 += 4;
    v27 += 4;
  }

  while (v28 != 21);
  sub_1D0D772C0(&v73, &v49);
  sub_1D0D867B8(&v49, &v78, &v73);
  sub_1D0D8644C(&v49, *&v60[16], *&v61[0]);
LABEL_38:
  v75 = 0x100000007;
  v74 = xmmword_1D0E84420;
  v73 = &unk_1F4CE0BB0;
  v76 = &v77;
  *v60 = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v60[16] = *v60;
  v61[0] = *v60;
  v61[1] = *v60;
  v61[2] = *v60;
  v61[3] = *v60;
  v61[4] = *v60;
  v61[5] = *v60;
  v61[6] = *v60;
  v61[7] = *v60;
  v61[8] = *v60;
  v61[9] = *v60;
  v61[10] = *v60;
  v61[11] = *v60;
  v61[12] = *v60;
  v61[13] = *v60;
  v61[14] = *v60;
  v61[15] = *v60;
  v61[16] = *v60;
  v61[17] = *v60;
  v61[18] = *v60;
  v61[19] = *v60;
  v61[20] = *v60;
  v61[21] = *v60;
  v61[22] = *v60;
  v62 = *v60;
  v63 = *v60;
  v64 = *v60;
  v65 = *v60;
  v66 = *v60;
  v67 = *v60;
  v68 = *v60;
  v69 = *v60;
  v70 = *v60;
  v71 = *v60;
  v72 = NAN;
  LOBYTE(v49) = 0;
  if (sub_1D0D88874(&v78, a1, v20, &v73, v60, &v49, 0.000000015))
  {
    LOWORD(v49) = 12;
    v86 = 4;
    cnprint::CNPrinter::Print(&v49, &v86, "time,%.3lf,h-function failure on line %d: %s() %s", v31, v32, v33);
    return 0xFFFFFFFFLL;
  }

  *(a4 + 8) = xmmword_1D0E7DCC0;
  v34 = v76[3];
  v35 = v76[4];
  v37 = v76[5];
  v36 = v76[6];
  v38 = *(a2 + 32);
  v39 = *(a4 + 32);
  *v39 = *v38 + v34 * v35;
  v39[1] = v38[1] + v34 * v37;
  v39[2] = v38[2] + v34 * v36;
  v51 = 0x1A00000003;
  v49 = &unk_1F4CE0B08;
  v52 = &v53;
  v50 = xmmword_1D0E84410;
  bzero(&v53, 0x270uLL);
  sub_1D0B894B0(a5, &v49);
  v40 = *(a5 + 20);
  v41 = 3 * v40;
  v42 = *(a5 + 32);
  v43 = (v42 + 48 * v40);
  *v43 = v34 * *(&v63 + 1);
  v44 = (v42 + 56 * v40);
  *v44 = v34 * *&v64;
  v45 = 8 * v40;
  *(v42 + (v40 << 6)) = v34 * *(&v64 + 1);
  v46 = (v42 + 184 * v40);
  *v46 = v34 * *&v65 + v35 * *&v62;
  *(v42 + 192 * v40) = v34 * *(&v65 + 1) + v35 * *(&v62 + 1);
  v47 = (v42 + 200 * v40);
  *v47 = v34 * *&v66 + v35 * *&v63;
  *(v42 + 8 * ((2 * v41) | 1)) = v34 * *(&v66 + 1);
  v44[1] = v34 * *&v67;
  v48 = v42 + 8 * v45;
  *(v48 + 8) = v34 * *(&v67 + 1);
  v46[1] = v34 * *&v68 + v37 * *&v62;
  *(v42 + 8 * ((8 * v41) | 1)) = v34 * *(&v68 + 1) + v37 * *(&v62 + 1);
  v47[1] = v34 * *&v69 + v37 * *&v63;
  v43[2] = v34 * *(&v69 + 1);
  v44[2] = v34 * *&v70;
  *(v48 + 16) = v34 * *(&v70 + 1);
  v46[2] = v34 * *&v71 + v36 * *&v62;
  *(v42 + 8 * ((8 * v41) | 2)) = v34 * *(&v71 + 1) + v36 * *(&v62 + 1);
  v47[2] = v34 * v72 + v36 * *&v63;
  v51 = 0x300000003;
  v49 = &unk_1F4CD5DD0;
  v50 = xmmword_1D0E76C10;
  v55 = 0;
  v54 = 0u;
  v57 = 0u;
  v52 = &v53;
  v53 = 0x3FF0000000000000;
  v56 = 0x3FF0000000000000;
  v58 = 0;
  v59 = 0x3FF0000000000000;
  sub_1D0B894B0(a6, &v49);
  return 0;
}

uint64_t sub_1D0D515B0(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenPNTEstimator::AdjustClockOffset(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a1 + 58) != 1)
  {
    return 1;
  }

  v18 = v3;
  v19 = v4;
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    v9 = a3 * 1000000.0;
    v10 = *(a1 + 14872);
    v11 = v9 + *(v10 + 152);
    *(v10 + 152) = v11;
    v15 = 12;
    v14 = 2;
    v12 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a2, "adjusted clock offset by %.3lf us to %.3lf us", v9, v11);
    if (*(a1 + 2735) >= 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(&v15, &v14, "%s", v13);
    return 1;
  }

  else
  {
    v17 = 12;
    v16 = 4;
    v6 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a2, "invalid clock correction %.3lf s", a3);
    if (*(a1 + 2735) >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(&v17, &v16, "%s", v7);
    return 0;
  }
}

uint64_t raven::RavenPNTEstimator::Configure(raven::RavenPNTEstimator *this, uint64_t *a2, int8x16_t a3, int8x16_t a4)
{
  if (*(this + 57) == 1)
  {
    LOWORD(__p) = 12;
    LOBYTE(v24) = 2;
    v5 = cnprint::CNLogFormatter::FormatWarning((this + 2712), "Configure() called more than once");
LABEL_16:
    if (*(this + 2735) >= 0)
    {
      v18 = v5;
    }

    else
    {
      v18 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&__p, &v24, "%s", v18);
    return 0xFFFFFFFFLL;
  }

  v6 = *a2;
  if (!*a2)
  {
    LOWORD(__p) = 12;
    LOBYTE(v24) = 4;
    v5 = cnprint::CNLogFormatter::FormatGeneral(this + 339, "Configure() called with null raven parameters");
    goto LABEL_16;
  }

  if ((*(v6 + 33) & 1) == 0)
  {
    LOWORD(__p) = 12;
    LOBYTE(v24) = 4;
    v5 = cnprint::CNLogFormatter::FormatGeneral(this + 339, "Configure() called with uninitialized raven parameters");
    goto LABEL_16;
  }

  v7 = raven::RavenPNTEstimator::UseHighAccelerationParameters(this, a3, a4);
  *(this + 351) = this + 28040;
  *(this + 350) = this + 44888;
  *(this + 352) = this + 25304;
  *(this + 354) = *(v6 + 664);
  v8 = 672;
  if (v7)
  {
    v8 = 680;
  }

  *(this + 353) = *(v6 + v8);
  v9 = 688;
  if (v7)
  {
    v9 = 696;
  }

  *(this + 355) = *(v6 + v9);
  *(this + 180) = 0u;
  *(this + 179) = 0u;
  *(this + 178) = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 181) = _Q0;
  *(this + 364) = 0x3FF0000000000000;
  v38 = 0x100000013;
  v35 = &unk_1F4CE40B8;
  v36 = 0;
  v37 = 0;
  v39 = v40;
  v40[22] = 0x100000013;
  v40[19] = &unk_1F4CE40B8;
  v40[20] = 0;
  v40[21] = 0;
  v40[23] = v41;
  v41[152] = 1;
  __p = 0xF00000013;
  __p_8[0] = sub_1D0D522D0;
  v15 = *(v6 + 1248);
  __p_8[1] = 0x400000004;
  v32 = v15;
  v33 = *&v15;
  v34 = 0;
  v42 = v15 * 0.5;
  if (!sub_1D0D53D5C(this + 2920, &__p))
  {
    *(this + 7620) = 1;
    *(this + 1894) = 0x100000000;
    *(this + 7592) = 257;
    *(this + 1899) = *(v6 + 912);
    *(this + 1902) = *(v6 + 920);
    *(this + 1061) = *(this + 952);
    *(this + 1057) = *(this + 948);
    *(this + 1056) = *(this + 947);
    *(this + 2124) = *(this + 1906);
    v20 = *(this + 950);
    *(this + 1059) = v20;
    v21 = *(this + 949);
    *(this + 1058) = v21;
    v22 = *(this + 951);
    *(this + 1060) = v22;
    *(this + 2056) = *(this + 1904);
    *(this + 1027) = v22;
    *(this + 1026) = v20;
    *(this + 1025) = v21;
    v23 = *(this + 947);
    *(this + 1024) = *(this + 948);
    *(this + 1023) = v23;
    *(this + 16360) = 0;
    v26 = 0x10000001ALL;
    v24 = &unk_1F4CE3E48;
    v27 = v28;
    v25 = xmmword_1D0E843B0;
    memset(v28, 0, sizeof(v28));
    sub_1D0D96660(&__p, &v24);
    *__p_8 = xmmword_1D0E843B0;
    sub_1D0B894B0(this + 15264, &__p);
    sub_1D0D87C2C(&__p, 26, 26);
  }

  LOWORD(v24) = 12;
  v29 = 4;
  v16 = cnprint::CNLogFormatter::FormatGeneral(this + 339, "Configure() failed to initialize full state dynamics integrator");
  if (*(this + 2735) >= 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = *(this + 339);
  }

  cnprint::CNPrinter::Print(&v24, &v29, "%s", v17);
  return 0xFFFFFFFFLL;
}

void sub_1D0D52124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL raven::RavenPNTEstimator::UseHighAccelerationParameters(raven::RavenPNTEstimator *this, int8x16_t a2, int8x16_t a3)
{
  v3 = *(this + 146);
  if (!v3)
  {
    return 1;
  }

  a2.i64[0] = *(v3 + 848);
  v14 = 0;
  v15 = 0.0;
  *v5.i64 = CNTimeSpan::SetTimeSpan(&v14, 0, a2, a3);
  v7 = CNTimeSpan::operator-(this + 10, this + 8, v5, v6);
  if (!v7 && (*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_7;
  }

  if (!v14)
  {
    v9 = v15;
    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
LABEL_8:
      if (v9 >= v8)
      {
        return 1;
      }

      goto LABEL_12;
    }
  }

  if (v7 == v14)
  {
LABEL_7:
    v9 = v15;
    goto LABEL_8;
  }

  if (v7 < v14)
  {
    return 1;
  }

LABEL_12:
  if (*(this + 1208) != 1)
  {
    return 1;
  }

  v11 = *(this + 1320);
  if (v11 < 8 && ((0xDFu >> v11) & 1) != 0)
  {
    return 1;
  }

  if (*(this + 1848) != 1)
  {
    return 1;
  }

  v12 = *(this + 1960);
  return v12 == 3 || v12 == 0;
}

double sub_1D0D5224C(uint64_t a1)
{
  *(a1 + 25) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 0x100000013;
  *(a1 + 72) = 0x100000013;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = &unk_1F4CE40B8;
  *(a1 + 80) = a1 + 88;
  *(a1 + 264) = 0x100000013;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = &unk_1F4CE40B8;
  *(a1 + 272) = a1 + 280;
  *(a1 + 432) = 1;
  *(a1 + 440) = 0;
  return result;
}

uint64_t sub_1D0D522D0(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v230[3] = *MEMORY[0x1E69E9840];
  v9 = fabs(*v2);
  v10 = *(v3 + 8);
  v10.i64[1] = *(v4 + 8);
  v11 = vaddvq_s32(vbicq_s8(xmmword_1D0E84470, vceqq_s32(v10, xmmword_1D0E84460))) & 0xF;
  if (fmin(fabs(v9 + -1.0), v9) >= 2.22044605e-16 || v11 != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v8;
  v14 = v7;
  v15 = v6;
  v16 = v5;
  v17 = v4;
  v18 = v3;
  v19 = v2;
  v20 = v1;
  v225[0] = &unk_1F4CEF658;
  v225[1] = 0;
  v226 = vdupq_n_s64(0x7FF8000000000000uLL);
  v225[2] = 0;
  *&v227 = NAN;
  v21 = (*(**v5 + 48))(*v5, v1, v225);
  if (v21)
  {
    if (cnprint::CNPrinter::GetLogLevel(v21) <= 1)
    {
      LOWORD(v162) = 12;
      v161[0] = 1;
      cnprint::CNPrinter::Print(&v162, v161, "dyn_SixDOF, Could not get rategyro measurement at t, %.3lf", *(v20 + 8) + *v20);
    }

    return 0xFFFFFFFFLL;
  }

  v221[2] = 0;
  v221[0] = &unk_1F4CEF628;
  v221[1] = 0;
  v22 = (*(**(v16 + 1) + 48))(*(v16 + 1), v20, v221);
  if (v22)
  {
    if (cnprint::CNPrinter::GetLogLevel(v22) <= 1)
    {
      LOWORD(v162) = 12;
      v161[0] = 1;
      cnprint::CNPrinter::Print(&v162, v161, "dyn_SixDOF, Could not get accelerometer measurement at t, %.3lf", *(v20 + 8) + *v20);
    }

    return 0xFFFFFFFFLL;
  }

  v23 = v16[3];
  if (v23 <= 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v16[4] <= 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  v24 = v16[5];
  if (v24 <= 0.0)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v16[6] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v16[7] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v16[8] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v16[9] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v16[10] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v16[11] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v16[12] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  v115 = v16[11];
  v116 = v16[12];
  v113 = v16[9];
  v114 = v16[10];
  v111 = v16[7];
  v112 = v16[8];
  v109 = v16[4];
  v110 = v16[6];
  v25 = v16[13];
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  v108 = v16[14];
  if ((*&v108 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  v26 = *(v18 + 32);
  v28 = v26[6];
  v27 = v26[7];
  v30 = v26[8];
  v29 = v26[9];
  v31 = sqrt(v27 * v27 + v28 * v28 + v30 * v30 + v29 * v29);
  if (fabs(v31) <= 0.000000015)
  {
    return 0xFFFFFFFFLL;
  }

  v32 = *(v16 + 2);
  v33 = *(v26 + 2);
  v96 = *(v26 + 4);
  v97 = *(v26 + 3);
  v95 = *(v26 + 5);
  v98 = v26[10];
  v99 = v26[11];
  v100 = v26[12];
  v101 = v26[13];
  v102 = v26[14];
  v103 = v26[15];
  v104 = v26[16];
  v105 = v26[17];
  v106 = v26[18];
  v93 = *(v26 + 1);
  v94 = *v26;
  *v230 = *v26;
  v230[1] = v93;
  v92 = v33;
  v230[2] = v33;
  if ((*(*v32 + 48))(v32, v230, &v228, v220))
  {
    return 0xFFFFFFFFLL;
  }

  v35 = v28 / v31;
  v36 = v27 / v31;
  v37 = v30 / v31;
  v38 = v29 / v31;
  v39 = sqrt(v36 * v36 + v35 * v35 + v37 * v37 + v38 * v38);
  if (fabs(v39) >= 2.22044605e-16)
  {
    v41 = v35 / v39;
    v42 = v36 / v39;
    v43 = v37 / v39;
    v40 = v38 / v39;
  }

  else
  {
    v40 = 1.0;
    v41 = 0.0;
    v42 = 0.0;
    v43 = 0.0;
  }

  v217.f64[0] = v41;
  v217.f64[1] = v42;
  v218 = v43;
  v219 = v40;
  v214 = 0x100000004;
  v213 = xmmword_1D0E7DCE0;
  v212 = &unk_1F4CDEBB8;
  v215 = v216;
  v216[0] = v28 / v31;
  v216[1] = v27 / v31;
  v216[2] = v30 / v31;
  v216[3] = v29 / v31;
  cnrotation::CNRotation::RotationMatrix(v211, &v217);
  sub_1D0C1B708(v211, v210);
  v44 = *(v17 + 32);
  v86 = *v44;
  v87 = v44[1];
  v78 = v44[3];
  v79 = v44[4];
  v90 = v44[7];
  v91 = v44[6];
  v88 = v44[2];
  v89 = v44[8];
  v80 = v44[9];
  v81 = v44[5];
  v82 = v44[10];
  v83 = v44[11];
  v84 = v44[12];
  v85 = v44[13];
  v45 = v44[14];
  v164 = 0x300000001;
  v162 = &unk_1F4CDF0C8;
  v165 = v166;
  v163 = xmmword_1D0E7F310;
  *&v166[0] = 0x100000000;
  DWORD2(v166[0]) = 2;
  sub_1D0D2CF48(&v162, v209);
  v164 = 0x300000001;
  v162 = &unk_1F4CDF0C8;
  v165 = v166;
  v163 = xmmword_1D0E7F310;
  *&v166[0] = 0x400000003;
  DWORD2(v166[0]) = 5;
  sub_1D0D2CF48(&v162, v208);
  v164 = 0x400000001;
  v162 = &unk_1F4CE0CF8;
  v165 = v166;
  v163 = xmmword_1D0E84480;
  v166[0] = xmmword_1D0E84490;
  sub_1D0D86C38(v207, &v162);
  v164 = 0x300000001;
  v162 = &unk_1F4CDF0C8;
  v165 = v166;
  v163 = xmmword_1D0E7F310;
  *&v166[0] = 0xB0000000ALL;
  DWORD2(v166[0]) = 12;
  sub_1D0D2CF48(&v162, v206);
  v164 = 0x300000001;
  v162 = &unk_1F4CDF0C8;
  v165 = v166;
  v163 = xmmword_1D0E7F310;
  *&v166[0] = 0xE0000000DLL;
  DWORD2(v166[0]) = 15;
  sub_1D0D2CF48(&v162, v205);
  v164 = 0x300000001;
  v162 = &unk_1F4CDF0C8;
  v165 = v166;
  v163 = xmmword_1D0E7F310;
  *&v166[0] = 0x1100000010;
  DWORD2(v166[0]) = 18;
  sub_1D0D2CF48(&v162, v204);
  v164 = 0x300000001;
  v162 = &unk_1F4CDF0C8;
  v165 = v166;
  v163 = xmmword_1D0E7F310;
  *&v166[0] = 0x100000000;
  DWORD2(v166[0]) = 2;
  sub_1D0D2CF48(&v162, v203);
  v164 = 0x300000001;
  v162 = &unk_1F4CDF0C8;
  v165 = v166;
  v163 = xmmword_1D0E7F310;
  *&v166[0] = 0x400000003;
  DWORD2(v166[0]) = 5;
  sub_1D0D2CF48(&v162, v202);
  v164 = 0x300000001;
  v162 = &unk_1F4CDF0C8;
  v165 = v166;
  v163 = xmmword_1D0E7F310;
  *&v166[0] = 0x700000006;
  DWORD2(v166[0]) = 8;
  sub_1D0D2CF48(&v162, v201);
  v164 = 0x300000001;
  v162 = &unk_1F4CDF0C8;
  v165 = v166;
  v163 = xmmword_1D0E7F310;
  *&v166[0] = 0xA00000009;
  DWORD2(v166[0]) = 11;
  sub_1D0D2CF48(&v162, v200);
  v164 = 0x300000001;
  v162 = &unk_1F4CDF0C8;
  v165 = v166;
  v163 = xmmword_1D0E7F310;
  *&v166[0] = 0xD0000000CLL;
  DWORD2(v166[0]) = 14;
  sub_1D0D2CF48(&v162, v199);
  v77 = v226;
  v107 = *&v227;
  v46 = v222;
  v47 = v223;
  v48 = v224;
  sub_1D0D86CE4(v197);
  v49 = v198;
  *v198 = v97;
  *(v49 + 8) = v96;
  *(v49 + 16) = v95;
  v194 = 0x100000003;
  v193 = xmmword_1D0E7DCC0;
  v192 = &unk_1F4CDEB28;
  v195 = v196;
  v196[0] = -(v101 - v104 * v46) - v91;
  v196[1] = -(v102 - v105 * v47) - v90;
  v196[2] = -(v103 - v106 * v48) - v89;
  v188 = 0x100000003;
  v187 = xmmword_1D0E7DCC0;
  v186 = &unk_1F4CDEB28;
  v189 = &v190;
  v190 = v228;
  v191 = v229;
  v183 = 0x100000003;
  v182 = xmmword_1D0E7DCC0;
  v181 = &unk_1F4CDEB28;
  v184 = v185;
  *v185 = v94;
  v185[1] = v93;
  v185[2] = v92;
  v178 = 0x100000003;
  v177 = xmmword_1D0E7DCC0;
  v176 = &unk_1F4CDEB28;
  v179 = v180;
  v180[0] = v97;
  v180[1] = v96;
  v180[2] = v95;
  sub_1D0C51578(3, 1, v175);
  *(v175[4] + 16) = 0x3F131DA7D7CB8D5BLL;
  sub_1D0D5625C(v210, &v192, v141);
  sub_1D0D6F584(v141, &v186, v117);
  sub_1D0D562E0(v139, v175, &v181);
  sub_1D0D562E0(v140, v175, v139);
  sub_1D0C4E2D8(v117, v140, v125);
  sub_1D0D562E0(v122, v175, &v176);
  v50.f64[0] = 2.0;
  sub_1D0C51FB4(v122, v138, v50);
  sub_1D0C4E2D8(v125, v138, v161);
  sub_1D0BFA8EC(&v162, v197, v208);
  sub_1D0BFB134(&v162, v161);
  v172 = 0x100000003;
  v171 = xmmword_1D0E7DCC0;
  v170 = &unk_1F4CDEB28;
  v173 = v174;
  v174[0] = *v77.i64 - v98 - v86;
  v174[1] = *&v77.i64[1] - v99 - v87;
  v174[2] = v107 - v100 - v88;
  sub_1D0D5625C(v211, v175, &v162);
  sub_1D0C4E2D8(&v170, &v162, &v168);
  cnrotation::CNRotation::RotationDerivativeQuaternion(v167, &v217, *v169, v169[1], v169[2]);
  v51 = v198;
  v52 = v167[1];
  *(v198 + 48) = v167[0];
  *(v51 + 64) = v52;
  *&v52 = -*v19;
  v53 = *&v52 / v23;
  v54 = *&v52 / v109;
  *(v51 + 80) = v78 + v53 * (v98 - v110);
  *(v51 + 88) = v79 + v53 * (v99 - v111);
  *(v51 + 96) = v81 + v53 * (v100 - v112);
  *(v51 + 104) = v80 + *&v52 / v109 * (v101 - v113);
  *(v51 + 112) = v82 + *&v52 / v109 * (v102 - v114);
  *(v51 + 120) = v83 + *&v52 / v109 * (v103 - v115);
  v55 = *&v52 / v24;
  *(v51 + 128) = v84 + v55 * (v104 - v116);
  *(v51 + 136) = v85 + v55 * (v105 - v25);
  *(v51 + 144) = v45 + v55 * (v106 - v108);
  sub_1D0B894B0(v15, v197);
  sub_1D0D86D28(&v162);
  sub_1D0D86D68(v161);
  v56 = HIDWORD(v163);
  v57 = v165;
  *(v165 + 3 * HIDWORD(v163)) = 0x3FF0000000000000;
  *(v57 + ((4 * v56) | 1)) = 0x3FF0000000000000;
  *(v57 + 5 * v56 + 2) = 0x3FF0000000000000;
  v158 = 0x300000003;
  v157 = xmmword_1D0E76C10;
  v160[0] = v220[0];
  v160[1] = v220[3];
  v160[6] = v220[2];
  v160[7] = v220[5];
  v160[3] = v220[1];
  v160[2] = v220[6];
  v156 = &unk_1F4CD5DD0;
  v159 = v160;
  v160[4] = v220[4];
  v160[5] = v220[7];
  v160[8] = v220[8];
  sub_1D0C517F8(3, v153);
  v58 = v155;
  *v155 = 0xBE36D6A597D265B0;
  v58[v154 + 1] = 0xBE36D6A597D265B0;
  sub_1D0D86DAC(&v156, v153, v117);
  sub_1D0BADC74(v125, &v162, v208, v209);
  sub_1D0D2CFF0(v125, v117);
  sub_1D0C517F8(3, v150);
  v59 = v152;
  *(v152 + 8 * v151) = 0xBF231DA7D7CB8D5BLL;
  *(v59 + 8) = 0x3F231DA7D7CB8D5BLL;
  sub_1D0D7B9D8(v150, v117);
  sub_1D0BADC74(v125, &v162, v208, v208);
  sub_1D0D2CFF0(v125, v117);
  cnrotation::CNRotation::dRdq1(&v217, v125);
  sub_1D0C1B708(v125, v149);
  cnrotation::CNRotation::dRdq2(&v217, v125);
  sub_1D0C1B708(v125, v148);
  cnrotation::CNRotation::dRdq3(&v217, v125);
  sub_1D0C1B708(v125, v147);
  cnrotation::CNRotation::dRdq4(&v217, v125);
  sub_1D0C1B708(v125, v146);
  sub_1D0D5625C(v149, &v192, v117);
  sub_1D0D7B88C(v125, &v162, v208, 6);
  sub_1D0D2D13C(v125, v117);
  sub_1D0D5625C(v148, &v192, v117);
  sub_1D0D7B88C(v125, &v162, v208, 7);
  sub_1D0D2D13C(v125, v117);
  sub_1D0D5625C(v147, &v192, v117);
  sub_1D0D7B88C(v125, &v162, v208, 8);
  sub_1D0D2D13C(v125, v117);
  sub_1D0D5625C(v146, &v192, v117);
  sub_1D0D7B88C(v125, &v162, v208, 9);
  sub_1D0D2D13C(v125, v117);
  sub_1D0D7B8EC(3u, 3u, v125);
  sub_1D0D7B9D8(v125, v145);
  sub_1D0C1B688(v210, v145, v117);
  sub_1D0BADC74(v125, &v162, v208, v205);
  sub_1D0D2CFF0(v125, v117);
  sub_1D0D7B8EC(3u, 3u, v142);
  v60 = v144;
  *v144 = v222;
  v61 = v143;
  *&v60[v143 + 1] = v223;
  *&v60[2 * v61 + 2] = v224;
  sub_1D0C1B688(v210, v142, v117);
  sub_1D0BADC74(v125, &v162, v208, v204);
  sub_1D0D2CFF0(v125, v117);
  v62.f64[0] = *v169;
  cnrotation::CNRotation::Q(v62, v169[1], v169[2], v141);
  cnrotation::CNRotation::dQdwx(v140);
  cnrotation::CNRotation::dQdwy(v139);
  cnrotation::CNRotation::dQdwz(v138);
  sub_1D0C1B708(v149, v137);
  sub_1D0C1B708(v148, v136);
  sub_1D0C1B708(v147, v135);
  sub_1D0C1B708(v146, v134);
  sub_1D0D7B9D8(v137, v125);
  sub_1D0D5625C(v125, v175, v132);
  sub_1D0D7B9D8(v136, v125);
  sub_1D0D5625C(v125, v175, v130);
  sub_1D0D7B9D8(v135, v125);
  sub_1D0D5625C(v125, v175, v128);
  sub_1D0D7B9D8(v134, v125);
  sub_1D0D5625C(v125, v175, v126);
  sub_1D0D87694(v125, &v162, v207, v207);
  sub_1D0D86DEC(v125, v141);
  sub_1D0D86FC4(v125, &v162, v207, 6);
  v63.f64[0] = *v133;
  sub_1D0D87128(v120, v140, v63);
  v64.f64[0] = v133[1];
  sub_1D0D87128(v119, v139, v64);
  sub_1D0D870A8(v120, v119, v121);
  v65.f64[0] = v133[2];
  sub_1D0D87128(v118, v138, v65);
  sub_1D0D870A8(v121, v118, v122);
  sub_1D0D87024(v122, &v212, v123);
  sub_1D0D86F38(v124, v125, v123);
  sub_1D0D86FC4(v117, &v162, v207, 6);
  sub_1D0D87170(v117, v124);
  sub_1D0D86FC4(v125, &v162, v207, 7);
  v66.f64[0] = *v131;
  sub_1D0D87128(v120, v140, v66);
  v67.f64[0] = v131[1];
  sub_1D0D87128(v119, v139, v67);
  sub_1D0D870A8(v120, v119, v121);
  v68.f64[0] = v131[2];
  sub_1D0D87128(v118, v138, v68);
  sub_1D0D870A8(v121, v118, v122);
  sub_1D0D87024(v122, &v212, v123);
  sub_1D0D86F38(v124, v125, v123);
  sub_1D0D86FC4(v117, &v162, v207, 7);
  sub_1D0D87170(v117, v124);
  sub_1D0D86FC4(v125, &v162, v207, 8);
  v69.f64[0] = *v129;
  sub_1D0D87128(v120, v140, v69);
  v70.f64[0] = v129[1];
  sub_1D0D87128(v119, v139, v70);
  sub_1D0D870A8(v120, v119, v121);
  v71.f64[0] = v129[2];
  sub_1D0D87128(v118, v138, v71);
  sub_1D0D870A8(v121, v118, v122);
  sub_1D0D87024(v122, &v212, v123);
  sub_1D0D86F38(v124, v125, v123);
  sub_1D0D86FC4(v117, &v162, v207, 8);
  sub_1D0D87170(v117, v124);
  sub_1D0D86FC4(v125, &v162, v207, 9);
  v72.f64[0] = *v127;
  sub_1D0D87128(v120, v140, v72);
  v73.f64[0] = v127[1];
  sub_1D0D87128(v119, v139, v73);
  sub_1D0D870A8(v120, v119, v121);
  v74.f64[0] = v127[2];
  sub_1D0D87128(v118, v138, v74);
  sub_1D0D870A8(v121, v118, v122);
  sub_1D0D87024(v122, &v212, v123);
  sub_1D0D86F38(v124, v125, v123);
  sub_1D0D86FC4(v117, &v162, v207, 9);
  sub_1D0D87170(v117, v124);
  sub_1D0D872BC(v117, v140);
  sub_1D0D87024(v117, &v212, v122);
  sub_1D0D86FC4(v125, &v162, v207, 10);
  sub_1D0D87170(v125, v122);
  sub_1D0D872BC(v117, v139);
  sub_1D0D87024(v117, &v212, v122);
  sub_1D0D86FC4(v125, &v162, v207, 11);
  sub_1D0D87170(v125, v122);
  sub_1D0D872BC(v117, v138);
  sub_1D0D87024(v117, &v212, v122);
  sub_1D0D86FC4(v125, &v162, v207, 12);
  sub_1D0D87170(v125, v122);
  v75 = SHIDWORD(v163);
  v76 = v165;
  *&v165[5 * HIDWORD(v163) + 5] = v53;
  v76[11 * v75 + 11] = v53;
  v76[12 * v75 + 12] = v53;
  v76[13 * v75 + 13] = v54;
  v76[14 * v75 + 14] = v54;
  v76[15 * v75 + 15] = v54;
  v76[16 * v75 + 16] = v55;
  v76[17 * v75 + 17] = v55;
  v76[18 * v75 + 18] = v55;
  sub_1D0B894B0(v14, &v162);
  sub_1D0D87A40(v125, &v162, v207, v206);
  sub_1D0D87A40(v117, v161, v207, v203);
  sub_1D0D87304(v117, v125);
  sub_1D0D7B8EC(3u, 3u, v117);
  sub_1D0BADC74(v125, v161, v206, v202);
  sub_1D0D2CFF0(v125, v117);
  sub_1D0BADC74(v125, &v162, v208, v205);
  sub_1D0BADC74(v117, v161, v208, v201);
  sub_1D0D87450(v117, v125);
  sub_1D0D7B8EC(3u, 3u, v117);
  sub_1D0BADC74(v125, v161, v205, v200);
  sub_1D0D2CFF0(v125, v117);
  sub_1D0D7B8EC(3u, 3u, v117);
  sub_1D0BADC74(v125, v161, v204, v199);
  sub_1D0D2CFF0(v125, v117);
  sub_1D0B894B0(v13, v161);
  return 0;
}

uint64_t sub_1D0D53D5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 440);
  v3 = v2 & 0x7FFFFFFFFFFFFFFFLL;
  v4 = (v2 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v5 = v2 < 0;
  v6 = v2 < 0 && ((v2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (!v5)
  {
    v4 = 0;
  }

  v7 = v3 <= 0x7FF0000000000000;
  v8 = v3 == 0x7FF0000000000000 || v4;
  if (!v7)
  {
    v8 = 1;
  }

  if ((v8 | v6))
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 5944) = *(a2 + 440);
  if (*(a2 + 16) != 0x400000004 || (*(a2 + 40) & 1) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return sub_1D0D7F694(a1, a2);
  }
}

uint64_t sub_1D0D53DE0(uint64_t a1)
{
  *(a1 + 24) = 0x10000001ALL;
  *a1 = &unk_1F4CE3E48;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E843B0;
  return sub_1D0BBBC00(a1, 0.0);
}

uint64_t sub_1D0D53E44(uint64_t a1, char *__filename)
{
  *(a1 + 8) = 0;
  v3 = fopen(__filename, "r");
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  *(a1 + 8) = 1;
  v5 = -504;
  v6 = 40;
  while (fscanf(v4, "%u %u %lg %lg %lg %lg\n", a1 + v6, a1 + v6 + 252, a1 + v5 + 1048, a1 + v5 + 1552, a1 + v5 + 2056, a1 + v5 + 2560) == 6)
  {
    v6 += 4;
    v5 += 8;
    if (!v5)
    {
      v7 = 0;
      goto LABEL_8;
    }
  }

  *(a1 + 8) = 0;
  v7 = 0xFFFFFFFFLL;
LABEL_8:
  fclose(v4);
  return v7;
}

uint64_t sub_1D0D53F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 0;
  v8 = 2;
  v9 = 3;
  while (2)
  {
    v10 = 0;
    v11 = v7;
    if (v7 >= 0x3F)
    {
      v12 = 63;
    }

    else
    {
      v12 = v7;
    }

    v13 = -v12;
    v14 = (a1 + 1048 + 8 * v7);
    v15 = v13 + 63;
    v16 = a1 + 8 * v7;
    v17 = (a1 + 292 + 4 * v7);
    v18 = a7 + 8 * v7;
    v19 = a6 + 8 * v7;
    v20 = a5 + 8 * v7;
    v21 = a4 + 8 * v7;
    v22 = a3 + 4 * v7;
    v23 = a2 + 4 * v7;
    do
    {
      if (v15 == v10)
      {
        return 0xFFFFFFFFLL;
      }

      if (*(v23 + 4 * v10) != v8)
      {
        return 0xFFFFFFFFLL;
      }

      if (v10 != *(v22 + 4 * v10))
      {
        return 0xFFFFFFFFLL;
      }

      v24 = *(v21 + 8 * v10);
      if ((v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(v20 + 8 * v10) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(v19 + 8 * v10) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        return 0xFFFFFFFFLL;
      }

      v25 = 0xFFFFFFFFLL;
      if ((*(v18 + 8 * v10) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *(v19 + 8 * v10) < 0.0 || *(v18 + 8 * v10) < 0.0)
      {
        return v25;
      }

      *(v17 - 63) = v8;
      *(v16 + 8 * v10 + 544) = v24;
      v26 = *(v22 + 4 * v10);
      *v14 = *(v20 + 8 * v10);
      v14[63] = *(v19 + 8 * v10);
      v27 = *(v18 + 8 * v10);
      *v17++ = v26;
      v14[126] = v27;
      ++v10;
      ++v14;
    }

    while (v9 != v10);
    v7 = v11 + v10;
    ++v8;
    if (++v9 != 12)
    {
      continue;
    }

    break;
  }

  v25 = 0;
  *(a1 + 8) = 1;
  return v25;
}

__n128 sub_1D0D54090(uint64_t a1, double *a2)
{
  v5[0] = 0.0;
  v5[1] = 0.0;
  if (!sub_1D0B7C8AC(a2, v5))
  {
    result = *a2;
    *(a1 + 16) = *a2;
  }

  return result;
}

__n128 sub_1D0D540E4(uint64_t a1, double *a2)
{
  v5[0] = 0.0;
  v5[1] = 0.0;
  if (!sub_1D0B7C8AC(a2, v5))
  {
    result = *a2;
    *(a1 + 16) = *a2;
  }

  return result;
}

uint64_t sub_1D0D54164(uint64_t a1, double *a2, uint64_t a3, double a4, int8x16_t a5)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 == 1)
  {
    v9 = a1 + 48 * *(a1 + 40);
    v122 = *(v9 + 56);
    v123 = *(v9 + 72);
    v10 = *(v9 + 88);
    v121 = &unk_1F4CEF628;
    v124 = v10;
    *v117 = v122;
    v11 = CNTimeSpan::operator-(v117, a2, v122, a5);
    v120.i64[0] = v11;
    *&v120.i64[1] = v12;
    if (v11 < 0 || (*v13.i64 = v12, v12 < 0.0))
    {
      v11 = CNTimeSpan::operator-(v120.i64, v13, v14);
    }

    v113[0] = v11;
    *&v113[1] = v12;
    if (!sub_1D0B7CF88(v113, (a1 + 16)))
    {
      result = 0;
      *(a3 + 8) = v122;
      *(a3 + 24) = v123;
      *(a3 + 40) = v124;
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  v16 = a1 + 48;
  v17 = a1 + 48 + 48 * *(a1 + 40);
  v121 = (*(*v17 + 16))(v17, a4, a5);
  v122.i64[0] = v18;
  v21 = CNTimeSpan::operator-(a2, &v121, v19, v20);
  v23.i64[0] = *(a1 + 32);
  v24 = llround(*v23.i64 * (v22 + v21));
  v25 = v24 & ~(v24 >> 31);
  v26 = *(a1 + 8);
  v27 = v26 - 1;
  if (v25 < v26 - 1)
  {
    v27 = v25;
  }

  v28 = *(a1 + 40);
  v29 = (v27 + v28) % 0x15E;
  v30 = v16 + 48 * v29;
  v122 = *(v30 + 8);
  v123 = *(v30 + 24);
  v31 = *(v30 + 40);
  v121 = &unk_1F4CEF628;
  v124 = v31;
  *&v117[8] = 0;
  *&v117[16] = 0;
  *v117 = &unk_1F4CEF628;
  v109 = a3;
  if (v29 == v28)
  {
    v32 = (v28 + 1) % v26;
    goto LABEL_20;
  }

  if (v29 == *(a1 + 44))
  {
    if (v29)
    {
      v26 = v29;
    }

LABEL_19:
    v32 = v26 - 1;
    goto LABEL_20;
  }

  *v113 = v122;
  if (sub_1D0B7CF88(v113, a2) || v29 == *(a1 + 44))
  {
    v26 = v29;
    if (!v29)
    {
      v26 = *(a1 + 8);
    }

    goto LABEL_19;
  }

  v32 = (v29 + 1) % *(a1 + 8);
LABEL_20:
  v110 = a1 + 48;
  v106 = v32;
  v33 = v16 + 48 * v32;
  *&v117[8] = *(v33 + 8);
  v118 = *(v33 + 24);
  v119 = *(v33 + 40);
  v120 = v122;
  v116 = *&v117[8];
  v34 = CNTimeSpan::operator-(a2, &v120, *&v117[8], v23);
  v36 = v35;
  v115.i64[0] = v34;
  *&v115.i64[1] = v35;
  v37 = a2;
  v40 = CNTimeSpan::operator-(a2, &v116, v38, v39);
  v44 = v40;
  v45 = v36;
  v47 = v36 < 0.0 || v34 < 0;
  v114.i64[0] = v40;
  *&v114.i64[1] = v41;
  v48 = v41;
  v49 = v34;
  v50 = v45;
  if (v47)
  {
    v49 = CNTimeSpan::operator-(v115.i64, v42, v43);
    v50 = v51;
  }

  v53 = v48 < 0.0 || v44 < 0;
  v111 = v44;
  v54 = v48;
  if (v53)
  {
    v111 = CNTimeSpan::operator-(v114.i64, v42, v43);
    v54 = v55;
  }

  v56 = v34;
  v57 = v45;
  if (v47)
  {
    v56 = CNTimeSpan::operator-(v115.i64, v42, v43);
    v57 = v58;
  }

  v59 = v44;
  *v42.i64 = v48;
  if (v53)
  {
    v59 = CNTimeSpan::operator-(v114.i64, v42, v43);
    v42.i64[0] = v60;
  }

  v61 = v37;
  if (!v56 && (*&v57 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || !v59 && (v42.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v62 = v56 <= v59, v56 == v59))
  {
    v62 = v57 <= *v42.i64;
  }

  if (!v62)
  {
    *&v113[1] = v122;
    v63 = v122;
    *&v113[3] = v123;
    v64 = v123;
    v113[5] = v124;
    v65 = v124;
    v122 = *(v33 + 8);
    v123 = *(v33 + 24);
    v124 = *(v33 + 40);
    v119 = v65;
    v118 = v64;
    *&v117[8] = v63;
    v120 = v122;
    v43 = v114;
    v66 = v115;
    v112 = v115;
    v114 = v115;
    v115 = v43;
    v45 = *&v43.i64[1];
    v34 = v43.i64[0];
    if (v43.i64[0] < 0 || (v50 = *&v43.i64[1], v49 = v43.i64[0], *&v43.i64[1] < 0.0))
    {
      v49 = CNTimeSpan::operator-(v115.i64, v66, v43);
      v50 = v67;
    }

    v48 = *&v114.i64[1];
    v44 = v114.i64[0];
    if (v114.i64[0] < 0 || (v54 = *&v114.i64[1], v111 = v114.i64[0], *&v114.i64[1] < 0.0))
    {
      v111 = CNTimeSpan::operator-(v114.i64, v66, v43);
      v54 = v68;
    }

    v29 = v106;
  }

  if (v29 != *(a1 + 44))
  {
    if (v34)
    {
      if (v34 < 1)
      {
        goto LABEL_55;
      }
    }

    else if (v45 <= 0.0)
    {
      goto LABEL_55;
    }

    if (v44)
    {
      if (v44 < 1)
      {
        goto LABEL_55;
      }
    }

    else if (v48 <= 0.0)
    {
      goto LABEL_55;
    }

    v69 = (v29 + 1) % 0x15E;
    v70 = v120.i64[1];
    v107 = v120.i64[0];
    while (1)
    {
      v71 = v110 + 48 * v69;
      v112.i64[0] = (*(*v71 + 16))(v71);
      v112.i64[1] = v72;
      v75 = CNTimeSpan::operator-(v61, &v112, v73, v74);
      v78 = v75;
      v113[0] = v75;
      *&v113[1] = v76;
      v79 = v76;
      if (v75 < 0 || (*v77.i64 = v76, v76 < 0.0))
      {
        v75 = CNTimeSpan::operator-(v113, v77, v43);
        v77.i64[0] = v80;
      }

      if (!v75 && (v77.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if ((v49 || (*&v50 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v75 != v49)
      {
        if (v75 < v49)
        {
LABEL_82:
          *&v117[8] = v122;
          v118 = v123;
          v119 = v124;
          v122 = *(v71 + 8);
          v123 = *(v71 + 24);
          v124 = *(v71 + 40);
          v70 = v122.i64[1];
          v107 = v122.i64[0];
          v81 = &v115;
          v111 = v49;
          v43.i64[1] = v115.i64[1];
          v54 = v50;
          v49 = v75;
          v50 = *v77.i64;
          v114 = v115;
          goto LABEL_95;
        }
      }

      else if (*v77.i64 < v50)
      {
        goto LABEL_82;
      }

      if (!v111 && (*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v75 == v111)
      {
        goto LABEL_87;
      }

      if (v75 >= v111)
      {
LABEL_88:
        if (v78)
        {
          if ((v78 & 0x8000000000000000) == 0)
          {
            goto LABEL_99;
          }
        }

        else if (v79 >= 0.0)
        {
          goto LABEL_99;
        }
      }

LABEL_94:
      *&v117[8] = *(v71 + 8);
      v43 = *(v71 + 24);
      v118 = v43;
      v119 = *(v71 + 40);
      v81 = &v114;
      v111 = v75;
      v54 = *v77.i64;
LABEL_95:
      *v81 = *v113;
      if (v78)
      {
        if (v78 < 0)
        {
          goto LABEL_103;
        }
      }

      else if (v79 < 0.0)
      {
        goto LABEL_103;
      }

LABEL_99:
      if (v69 == 349)
      {
        v69 = 0;
      }

      else
      {
        ++v69;
      }

      if (v69 == *(a1 + 44))
      {
LABEL_103:
        v120.i64[0] = v107;
        v120.i64[1] = v70;
        goto LABEL_146;
      }
    }

    if (*v77.i64 < v50)
    {
      goto LABEL_82;
    }

LABEL_87:
    if (*v77.i64 >= v54)
    {
      goto LABEL_88;
    }

    goto LABEL_94;
  }

LABEL_55:
  if (v29 == *(a1 + 40))
  {
    goto LABEL_146;
  }

  if (v34)
  {
    if ((v34 & 0x8000000000000000) == 0)
    {
      goto LABEL_146;
    }

    goto LABEL_105;
  }

  if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    if (v45 >= 0.0)
    {
      v94 = 0;
      goto LABEL_147;
    }

LABEL_105:
    if (v44)
    {
      if ((v44 & 0x8000000000000000) == 0)
      {
        goto LABEL_146;
      }
    }

    else if (v48 >= 0.0)
    {
      goto LABEL_146;
    }

    if (v29)
    {
      v82 = v29 - 1;
    }

    else
    {
      v82 = 349;
    }

    v105 = v120.i64[1];
    v108 = v120.i64[0];
    while (1)
    {
      v83 = v110 + 48 * v82;
      v112.i64[0] = (*(*v83 + 16))(v83);
      v112.i64[1] = v84;
      v87 = CNTimeSpan::operator-(v61, &v112, v85, v86);
      v90 = v87;
      v113[0] = v87;
      *&v113[1] = v88;
      v91 = v88;
      if (v87 < 0 || (*v89.i64 = v88, v88 < 0.0))
      {
        v87 = CNTimeSpan::operator-(v113, v89, v43);
        v89.i64[0] = v92;
      }

      if (v87 || (v89.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if ((v49 || (*&v50 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v87 != v49)
        {
          if (v87 >= v49)
          {
LABEL_126:
            if ((v111 || (*&v54 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v87 != v111)
            {
              if (v87 >= v111)
              {
                goto LABEL_130;
              }
            }

            else
            {
LABEL_129:
              if (*v89.i64 >= v54)
              {
LABEL_130:
                if (v90)
                {
                  if (v90 < 1)
                  {
                    goto LABEL_141;
                  }
                }

                else if (v91 <= 0.0)
                {
                  goto LABEL_140;
                }
              }
            }

            *&v117[8] = *(v83 + 8);
            v43 = *(v83 + 24);
            v118 = v43;
            v119 = *(v83 + 40);
            v93 = &v114;
            v111 = v87;
            v54 = *v89.i64;
            goto LABEL_137;
          }
        }

        else if (*v89.i64 >= v50)
        {
          goto LABEL_126;
        }
      }

      else if (*v89.i64 >= v50)
      {
        goto LABEL_129;
      }

      *&v117[8] = v122;
      v118 = v123;
      v119 = v124;
      v122 = *(v83 + 8);
      v123 = *(v83 + 24);
      v124 = *(v83 + 40);
      v105 = v122.i64[1];
      v108 = v122.i64[0];
      v93 = &v115;
      v111 = v49;
      v43.i64[1] = v115.i64[1];
      v54 = v50;
      v49 = v87;
      v50 = *v89.i64;
      v114 = v115;
LABEL_137:
      *v93 = *v113;
      if (!v90)
      {
LABEL_140:
        if (v91 > 0.0)
        {
          goto LABEL_145;
        }

        goto LABEL_141;
      }

      if (v90 > 0)
      {
        goto LABEL_145;
      }

LABEL_141:
      if (v82)
      {
        --v82;
      }

      else
      {
        v82 = 349;
      }

      if (v82 == *(a1 + 44))
      {
LABEL_145:
        v120.i64[0] = v108;
        v120.i64[1] = v105;
        goto LABEL_146;
      }
    }
  }

  if (v45 < 0.0)
  {
    goto LABEL_105;
  }

LABEL_146:
  v45 = *&v115.i64[1];
  v94 = v115.i64[0];
LABEL_147:
  v43.i64[0] = 0x3CB0000000000000;
  if (fabs(v45 + v94) >= 2.22044605e-16)
  {
    if ((*(*v109 + 24))(v109, v61, &v121, v117))
    {
      return 0xFFFFFFFFLL;
    }

    if (v94 < 0 || v45 < 0.0)
    {
      v94 = CNTimeSpan::operator-(v115.i64, v97, v98);
    }

    else
    {
      v99 = v45;
    }

    v113[0] = v94;
    *&v113[1] = v99;
    if (sub_1D0B7CF88(v113, (a1 + 16)))
    {
      return 0xFFFFFFFFLL;
    }

    v103 = v114.i64[0];
    if (v114.i64[0] < 0 || (v101.i64[0] = v114.i64[1], *&v114.i64[1] < 0.0))
    {
      v103 = CNTimeSpan::operator-(v114.i64, v101, v102);
    }

    else
    {
      v104 = v114.i64[1];
    }

    v112.i64[0] = v103;
    v112.i64[1] = v104;
    v100 = &v112;
  }

  else
  {
    *(v109 + 8) = v122;
    v95 = v123;
    *(v109 + 24) = v123;
    *(v109 + 40) = v124;
    if (v94 < 0 || v45 < 0.0)
    {
      v94 = CNTimeSpan::operator-(v115.i64, v95, v43);
    }

    else
    {
      v96 = v45;
    }

    v113[0] = v94;
    *&v113[1] = v96;
    v100 = v113;
  }

  if (!sub_1D0B7CF88(v100, (a1 + 16)))
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0D54C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 12);
  *(a2 + 24) = 0x400000003;
  *a2 = &unk_1F4CDEC48;
  *(a2 + 8) = v3;
  *(a2 + 12) = v4;
  *(a2 + 16) = v4 * v3;
  *(a2 + 20) = v3;
  *(a2 + 32) = a2 + 40;
  return sub_1D0BD2018(a1, a2);
}

uint64_t sub_1D0D54C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x300000003;
  *a3 = &unk_1F4CD5DD0;
  *(a3 + 8) = xmmword_1D0E76C10;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(a1, a2, a3);
}

uint64_t sub_1D0D54D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x400000003;
  *a3 = &unk_1F4CDEC48;
  *(a3 + 8) = xmmword_1D0E7DD10;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(a1, a2, a3);
}

uint64_t sub_1D0D54D90(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x300000004;
  *a1 = &unk_1F4CDEC00;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0BD2018(a2, a1);
}

uint64_t sub_1D0D54E1C(uint64_t a1)
{
  *(a1 + 24) = 0x400000003;
  *a1 = &unk_1F4CDEC48;
  *(a1 + 32) = a1 + 40;
  *(a1 + 8) = xmmword_1D0E7DD10;
  return sub_1D0BBBC00(a1, 0.0);
}

void sub_1D0D54E60(uint64_t a1, uint64_t a2)
{
  v5 = 0x10000001ALL;
  v3 = &unk_1F4CE3E48;
  v4 = xmmword_1D0E843B0;
  v6 = &v7;
  sub_1D0D87FCC(v2);
}

void sub_1D0D54F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D0D857FC(v3);
  sub_1D0D857FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D550B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 296);
  *a1 = *a2;
  v5 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v5;
  v6 = *(a2 + 96);
  v8 = *(a2 + 48);
  v7 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v7;
  v9 = *(a2 + 160);
  v11 = *(a2 + 112);
  v10 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v9;
  *(a1 + 112) = v11;
  *(a1 + 128) = v10;
  v12 = *(a2 + 224);
  v14 = *(a2 + 176);
  v13 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v12;
  *(a1 + 176) = v14;
  *(a1 + 192) = v13;
  v15 = a1 + 240;
  v16 = a2 + 240;
  if (v4 != 1)
  {
    sub_1D0D87E2C(v15, v16);
  }

  sub_1D0B894B0(v15, v16);
  *(a1 + 288) = *(a2 + 288);
  return a1;
}

std::string *raven::RavenPNTEstimator::SetLogPrefix(uint64_t a1, const std::string *a2)
{
  std::string::operator=((a1 + 2736), a2);

  return std::string::operator=((a1 + 16552), a2);
}

BOOL raven::RavenPNTEstimator::GetEstimatorPredictAndUpdateArguments(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, double a5, int8x16_t a6)
{
  v10 = *a3;
  *a4 = *a3;
  v11 = CNTimeSpan::operator-(a3, a2, v10, a6);
  *v14.i64 = v13;
  v15 = v13 + v11;
  *(a4 + 16) = v15;
  if (v15 >= 0.0)
  {
    *v12.i64 = v11;
    v16 = raven::RavenPNTEstimator::UseHighAccelerationParameters(a1, v14, v12);
    v18 = *(a1 + 1168);
    *(a4 + 56) = *(v18 + 712);
    v19 = 760;
    if (v16)
    {
      v19 = 752;
    }

    v20 = 736;
    if (v16)
    {
      v20 = 728;
    }

    v21 = 784;
    if (v16)
    {
      v21 = 776;
    }

    v22 = 672;
    if (v16)
    {
      v22 = 680;
    }

    v23 = 688;
    if (v16)
    {
      v23 = 696;
    }

    *(a4 + 64) = *(v18 + v19);
    *(a4 + 72) = *(v18 + 704);
    *(a4 + 80) = *(v18 + v20);
    *(a4 + 88) = *(v18 + v21);
    v24 = *(v18 + 664);
    v17.i64[0] = *(v18 + v22);
    *(a4 + 96) = v17.i64[0];
    *(a4 + 104) = v24;
    *(a4 + 112) = *(v18 + v23);
    *(a4 + 120) = *(v18 + 656);
    *(a4 + 128) = *(v18 + 648);
    *(a4 + 24) = *(v18 + 792);
    v25 = *(v18 + 808);
    *(a4 + 40) = v25;
    v26 = *(v18 + 344);
    ComfortableAcceleration = raven::RavenPNTEstimator::GetComfortableAcceleration(a1, v25, v17);
    v28 = *(*(a1 + 1168) + 872);
    v29 = ComfortableAcceleration * v28;
    *v30.i64 = fabs(*(*(a1 + 14872) + 192));
    v31.i64[0] = v30.i64[0];
    v32 = fmax(*v30.i64, 0.000000015);
    *v33.i64 = raven::RavenPNTEstimator::GetMaximumComfortableTurningRate(a1, v31, v30);
    *v34.i64 = ComfortableAcceleration / v32;
    if (ComfortableAcceleration / v32 < *v33.i64)
    {
      *v33.i64 = ComfortableAcceleration / v32;
    }

    v35 = *(a1 + 1168);
    v36 = *(v35 + 872);
    v37 = *v33.i64 * v36;
    if (*(a1 + 1208) == 1)
    {
      v38 = *(a1 + 1368);
      v73 = *(a1 + 1352);
      v74 = v38;
      v75 = *(a1 + 1384);
      v39 = *(a1 + 1304);
      v69 = *(a1 + 1288);
      v70 = v39;
      v40 = *(a1 + 1336);
      v71 = *(a1 + 1320);
      v72 = v40;
      v41 = *(a1 + 1240);
      v65 = *(a1 + 1224);
      v66 = v41;
      v33 = *(a1 + 1256);
      v34 = *(a1 + 1272);
      v67 = v33;
      v64 = &unk_1F4CEF688;
      v76 = *(a1 + 1400);
      v68 = v34;
      if (v71 == 5)
      {
        v42 = fmax(v32, 0.1) / 5.0 * v36;
        *v34.i64 = v42;
        if (v42 >= v37)
        {
          v42 = v37;
        }

        v37 = v42;
        v33.i64[0] = *(v35 + 3288);
        if (v32 <= *v33.i64)
        {
          *v33.i64 = raven::RavenPNTEstimator::GetTurnStateBasedDeltaHeadingRateConstraint(a1, v33, v34);
          v35 = *(a1 + 1168);
          v36 = *(v35 + 872);
          *v33.i64 = *v33.i64 * v36;
          if (v37 >= *v33.i64)
          {
            v37 = *v33.i64;
          }
        }
      }
    }

    v43 = v26 * v26;
    v44 = *(a1 + 80);
    v45 = *(a1 + 88);
    v64 = v44;
    *&v65 = v45;
    v46 = CNTimeSpan::operator-(&v64, (a1 + 2768), v33, v34);
    if ((v46 || (*&v47 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v46 != 30)
    {
      v48.i64[0] = 10.0;
      if (v46 < 30)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v48.i64[0] = 10.0;
      if (v47 <= 0.0)
      {
LABEL_39:
        v54 = v29 * v29 / v28;
        v55 = *v48.i64 * (*(v35 + 352) * *(v35 + 352));
        *(a4 + 136) = v43;
        v56 = 1.0;
        if (*(a1 + 1408) == 1 && (v57 = *(a1 + 1520), v57 >= 7))
        {
          v58 = 1.0;
          if (v57 != 9)
          {
            if (v57 == 8)
            {
              v60 = 512;
              v61 = 504;
            }

            else
            {
              v60 = 528;
              v61 = 520;
            }

            v56 = *(v35 + v61);
            v58 = *(v35 + v60);
          }
        }

        else
        {
          v58 = 1.0;
        }

        *(a4 + 144) = v54 * v56;
        *(a4 + 152) = v37 * v37 / v36 * v58;
        *(a4 + 160) = v54;
        *(a4 + 168) = v55;
        *(a4 + 176) = v54 + v54 * 2.0;
        return v15 >= 0.0;
      }
    }

    v63[0] = v44;
    v63[1] = v45;
    v62 = *(a1 + 112);
    v51 = CNTimeSpan::operator-(v63, &v62, v62, v48);
    if ((v51 || (*&v52 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v51 != 30)
    {
      v53 = v51 < 30;
    }

    else
    {
      v53 = v52 <= 0.0;
    }

    v48.i64[0] = 10.0;
    if (!v53)
    {
      *v48.i64 = 1.0;
    }

    goto LABEL_39;
  }

  if (!cnprint::CNPrinter::GetLogLevel(v11))
  {
    LOWORD(v64) = 12;
    LOBYTE(v63[0]) = 0;
    v49 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a3, "Prediction time is negative,dt,%.2lf,current_estimator_time,%.1lf", *(a4 + 16), *(a2 + 8) + *a2);
    if (*(a1 + 2735) >= 0)
    {
      v50 = v49;
    }

    else
    {
      v50 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(&v64, v63, "%s", v50);
  }

  return v15 >= 0.0;
}

double raven::RavenPNTEstimator::GetComfortableAcceleration(raven::RavenPNTEstimator *this, int8x16_t a2, int8x16_t a3)
{
  v4 = *(this + 146);
  if (v4 && (*(v4 + 33) & 1) != 0)
  {
    if (raven::RavenPNTEstimator::UseHighAccelerationParameters(this, a2, a3))
    {
      return *(v4 + 312);
    }

    else if (*(this + 2760) == 1)
    {
      return *(v4 + 320);
    }

    else
    {
      return *(v4 + 304);
    }
  }

  else
  {
    v9 = 12;
    v8 = 2;
    v6 = cnprint::CNLogFormatter::FormatWarning((this + 2712), "GetComfortableAcceleration() called before parameters were initialized", *a2.i64, *a3.i64);
    if (*(this + 2735) >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v9, &v8, "%s", v7);
    return 0.0;
  }
}

double raven::RavenPNTEstimator::GetMaximumComfortableTurningRate(raven::RavenPNTEstimator *this, int8x16_t a2, int8x16_t a3)
{
  v4 = *(this + 146);
  if (v4 && (*(v4 + 33) & 1) != 0)
  {
    v5 = raven::RavenPNTEstimator::UseHighAccelerationParameters(this, a2, a3);
    v6 = 328;
    if (v5)
    {
      v6 = 336;
    }

    return *(v4 + v6) * 0.0174532925;
  }

  else
  {
    v11 = 12;
    v10 = 2;
    v8 = cnprint::CNLogFormatter::FormatWarning((this + 2712), "GetMaximumComfortableTurningRate() called before parameters were initialized", *a2.i64, *a3.i64);
    if (*(this + 2735) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v11, &v10, "%s", v9);
    return 0.0;
  }
}

double raven::RavenPNTEstimator::GetTurnStateBasedDeltaHeadingRateConstraint(raven::RavenPNTEstimator *this, int8x16_t a2, int8x16_t a3)
{
  v4 = *(this + 146);
  v5 = v4[410];
  if (*(this + 2288) != 1)
  {
    LogLevel = cnprint::CNPrinter::GetLogLevel(this);
    if (LogLevel > 1)
    {
      goto LABEL_16;
    }

    v25 = 12;
    v24 = 1;
    v26 = *(this + 5);
    v16 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v26, "GetTurnStateBasedDeltaHeadingRateConstraint,last_turn_state_event,unavailable,assuming high turn rate,turning_rate_dps,%.2lf", v5);
    if (*(this + 2735) >= 0)
    {
      v15 = v16;
    }

    else
    {
      v15 = *(this + 339);
    }

    goto LABEL_15;
  }

  LogLevel = CNTimeSpan::operator-(this + 288, this + 10, a2, a3);
  v26.i64[0] = LogLevel;
  *&v26.i64[1] = v7;
  if (LogLevel < 0 || (*v8.i64 = v7, v7 < 0.0))
  {
    LogLevel = CNTimeSpan::operator-(v26.i64, v8, v9);
    v8.i64[0] = v10;
  }

  if (*v8.i64 + LogLevel > 1.0)
  {
    LogLevel = cnprint::CNPrinter::GetLogLevel(LogLevel);
    if (LogLevel > 1)
    {
      goto LABEL_16;
    }

    v25 = 12;
    v24 = 1;
    v12 = *(this + 5);
    v26 = v12;
    if ((*(this + 2288) & 1) == 0)
    {
      __assert_rtn("operator->", "optional.hpp", 1221, "this->is_initialized()");
    }

    v13 = CNTimeSpan::operator-(this + 10, this + 288, v12, v11);
    cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v26, "GetTurnStateBasedDeltaHeadingRateConstraint,last_turn_state_event,too stale,age,%.2lf,assuming high turn rate,turning_rate_dps,%.2lf", v14 + v13, v5);
    if (*(this + 2735) >= 0)
    {
      v15 = this + 2712;
    }

    else
    {
      v15 = *(this + 339);
    }

LABEL_15:
    cnprint::CNPrinter::Print(&v25, &v24, "%s", v15);
    goto LABEL_16;
  }

  v20 = *(this + 2400);
  if (v20 == 2)
  {
    v22 = *(this + 303);
    if (v22 <= 0.9 && v22 > 0.5)
    {
      v5 = v4[409];
    }
  }

  else if (v20 == 1)
  {
    v21 = *(this + 302);
    if (v21 <= 0.9)
    {
      if (v21 > 0.5)
      {
        v5 = v4[407];
      }
    }

    else
    {
      v5 = v4[408];
    }
  }

LABEL_16:
  if (!cnprint::CNPrinter::GetLogLevel(LogLevel))
  {
    v25 = 12;
    v24 = 0;
    v26 = *(this + 5);
    v17 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v26, "GetTurnStateBasedDeltaHeadingRateConstraint,turning_rate_dps,%.2lf", v5);
    if (*(this + 2735) >= 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v25, &v24, "%s", v18);
  }

  return v5 * 0.0174532925;
}

BOOL raven::RavenPNTEstimator::GetSimplifiedEightStateEstimatorPredictArgs(uint64_t a1, uint64_t a2, int8x16_t *a3, uint64_t a4, double a5, int8x16_t a6)
{
  v10 = *a3;
  *a4 = *a3;
  v11 = CNTimeSpan::operator-(a3, a2, v10, a6);
  v13 = v12 + v11;
  *(a4 + 16) = v13;
  if (v13 < 0.0)
  {
    if (!cnprint::CNPrinter::GetLogLevel(v11))
    {
      v28 = 12;
      v27 = 0;
      v24 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a3, "Prediction time is negative,dt,%.2lf,current_estimator_time,%.1lf", *(a4 + 16), *(a2 + 8) + *a2);
      if (*(a1 + 2735) >= 0)
      {
        v25 = v24;
      }

      else
      {
        v25 = *(a1 + 2712);
      }

      cnprint::CNPrinter::Print(&v28, &v27, "%s", v25);
    }
  }

  else
  {
    v14 = *(a1 + 1168);
    v15 = *(v14 + 216);
    _Q1 = *(v14 + 224);
    v17 = *(v14 + 240);
    *(a4 + 72) = _Q1;
    *(a4 + 56) = vdupq_lane_s64(v15, 0);
    *(a4 + 88) = *(&_Q1 + 1);
    _D3 = 2.0;
    *(a4 + 96) = v17;
    *(a4 + 104) = *&_Q1 + *&v15 * 2.0;
    __asm { FMLA            D2, D3, V1.D[1] }

    *(a4 + 112) = _D2;
    *(a4 + 24) = *(v14 + 792);
    *(a4 + 40) = *(v14 + 808);
  }

  return v13 >= 0.0;
}

void raven::RavenPNTEstimator::FillZUPTEvent(raven::RavenPNTEstimator *this, const raven::MovingStateEvent *a2, raven::VelocityEvent *a3)
{
  raven::RavenEstimator::FillZUPTEvent(this, a2, a3);
  if (!v5 && *(this + 2760) == 1)
  {
    *(a3 + 39) = fmax(*(a3 + 39), 0.25);
    *(a3 + 42) = fmax(*(a3 + 42), 0.25);
    *(a3 + 44) = fmax(*(a3 + 44), 0.25);
  }
}

uint64_t raven::RavenPNTEstimator::IsObservable(raven::RavenPNTEstimator *this)
{
  if (*(this + 58))
  {
    return sub_1D0D755EC(this + 15256);
  }

  else
  {
    return 0;
  }
}

void sub_1D0D561B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_1D0D857FC(va);
  sub_1D0D857FC(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D5625C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0x100000003;
  *a3 = &unk_1F4CDEB28;
  *(a3 + 8) = xmmword_1D0E7DCC0;
  *(a3 + 32) = a3 + 40;
  return sub_1D0B89390(a1, a2, a3);
}

double sub_1D0D562E0@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  *(a1 + 24) = 0x100000003;
  *a1 = &unk_1F4CDEB28;
  *(a1 + 8) = xmmword_1D0E7DCC0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D8A3AC(a2, a3, a1);
}

uint64_t raven::RavenPNTEstimator::IsSane(raven::RavenPNTEstimator *this)
{
  v68 = *MEMORY[0x1E69E9840];
  if (!*(this + 58))
  {
    return 0;
  }

  v60 = 0x10000001ALL;
  v58 = &unk_1F4CE3E48;
  v61 = v62;
  v59 = xmmword_1D0E843B0;
  memset(v62, 0, sizeof(v62));
  v55 = 0x10000001CLL;
  v53 = &unk_1F4CE0A20;
  v54 = xmmword_1D0E843A0;
  v56 = &v57;
  v51[0] = vdupq_n_s64(0x7FF8000000000000uLL);
  v51[1] = v51[0];
  v51[2] = v51[0];
  v51[3] = v51[0];
  v51[4] = v51[0];
  v51[5] = v51[0];
  v51[6] = v51[0];
  v51[7] = v51[0];
  v51[8] = v51[0];
  v51[9] = v51[0];
  v51[10] = v51[0];
  v51[11] = v51[0];
  v51[12] = v51[0];
  v51[13] = v51[0];
  v51[14] = v51[0];
  v51[15] = v51[0];
  v51[16] = v51[0];
  v51[17] = v51[0];
  v51[18] = v51[0];
  v51[19] = v51[0];
  v51[20] = v51[0];
  v51[21] = v51[0];
  v51[22] = v51[0];
  v51[23] = v51[0];
  v51[24] = v51[0];
  v51[25] = v51[0];
  v51[26] = v51[0];
  v51[27] = v51[0];
  v51[28] = v51[0];
  v51[29] = v51[0];
  v51[30] = v51[0];
  v51[31] = v51[0];
  v51[32] = v51[0];
  v51[33] = v51[0];
  v51[34] = v51[0];
  v52 = 0x7FF8000000000000;
  v2 = *(this + 2760);
  LOBYTE(v63[0]) = 0;
  v3 = sub_1D0D8825C(this + 14840, &v58, v2, 1, 1, &v53, v51, v63, 0.000000015);
  if (v3)
  {
    return 0;
  }

  v7 = *v56;
  v8 = v56[1];
  v9 = v56[2];
  v10 = sqrt((v8 - v56[22]) * (v8 - v56[22]) + (*v56 - v56[21]) * (*v56 - v56[21]) + (v9 - v56[23]) * (v9 - v56[23]));
  v11 = *(this + 146);
  v12 = 170;
  if (*(this + 2760) == 1)
  {
    v12 = 171;
  }

  v13 = v11[v12];
  if (v10 > v13)
  {
    if (cnprint::CNPrinter::GetLogLevel(v3) <= 1)
    {
      v63[0] = 12;
      LOBYTE(v66.f64[0]) = 1;
      v33 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, this + 80, "Sanity failure,user-device dist,%.1lf > %.1lf", v10, v13);
      if (*(this + 2735) >= 0)
      {
        v32 = v33;
      }

      else
      {
        v32 = *v33;
      }

      goto LABEL_36;
    }

    return 0;
  }

  v42 = v56[4];
  v43 = v56[5];
  v44 = v56[3];
  v48 = v56[15];
  v49 = v56[14];
  v5.i64[0] = v56[16];
  v46 = v56[17];
  v47 = *v5.i64;
  v4.i64[0] = v56[18];
  v45 = *v4.i64;
  v14 = v56[12];
  v15 = v56[13];
  v16 = v56[10];
  v17 = v56[11];
  v18 = raven::RavenPNTEstimator::UseHighAccelerationParameters(this, v4, v5);
  v19 = 93;
  if (v18)
  {
    v19 = 94;
  }

  v20 = v11[176] * v11[v19];
  v21 = fabs(v16);
  v22 = fabs(v17);
  v23 = fabs(v14);
  if (v21 > v20 || v22 > v20 || v23 > v20)
  {
    if (cnprint::CNPrinter::GetLogLevel(v18) <= 1)
    {
      v63[0] = 12;
      LOBYTE(v66.f64[0]) = 1;
      v34 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, this + 80, "Sanity failure,gyro bias,x_dps,%.2lf,y_dps,%.2lf,z_dps,%.2lf,max_dps,%.1lf)", v21 * 57.2957795, v22 * 57.2957795, v23 * 57.2957795, v20 * 57.2957795);
      if (*(this + 2735) >= 0)
      {
        v32 = v34;
      }

      else
      {
        v32 = *v34;
      }

      goto LABEL_36;
    }

    return 0;
  }

  v24 = v11[174] * v11[91];
  v25 = fabs(v15);
  v26 = fabs(v49);
  v27 = fabs(v48);
  if (v25 > v24 || v26 > v24 || v27 > v24)
  {
    if (cnprint::CNPrinter::GetLogLevel(v18) <= 1)
    {
      v63[0] = 12;
      LOBYTE(v66.f64[0]) = 1;
      v35 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, this + 80, "Sanity failure,accel bias,x_mg,%.2lf,y_mg,%.2lf,z_mg,%.2lf,max_mg,%.1lf)", v25 * 101.971621, v26 * 101.971621, v27 * 101.971621, v24 * 101.971621);
      if (*(this + 2735) >= 0)
      {
        v32 = v35;
      }

      else
      {
        v32 = *v35;
      }

      goto LABEL_36;
    }

    return 0;
  }

  v28 = 96;
  if (v18)
  {
    v28 = 97;
  }

  v29 = v11[175] * v11[v28];
  v30 = fabs(v47 + -1.0);
  if (v30 > v29 || fabs(v46 + -1.0) > v29 || fabs(v45 + -1.0) > v29)
  {
    if (cnprint::CNPrinter::GetLogLevel(v18) <= 1)
    {
      v63[0] = 12;
      LOBYTE(v66.f64[0]) = 1;
      v31 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, this + 80, "Sanity failure,accel scale,x_ppm,%.2lf,y_ppm,%.2lf,z_ppm,%.2lf,max_ppm,%.1lf)", v30 * 1000000.0, fabs(v46 + -1.0) * 1000000.0, fabs(v45 + -1.0) * 1000000.0, v29 * 1000000.0);
      if (*(this + 2735) >= 0)
      {
        v32 = v31;
      }

      else
      {
        v32 = *v31;
      }

LABEL_36:
      cnprint::CNPrinter::Print(v63, &v66, "%s", v32);
      return 0;
    }

    return 0;
  }

  v66.f64[0] = v7;
  v66.f64[1] = v8;
  v67 = v9;
  v36 = cnnavigation::ECEFToLLA(&v66, 1, v64, 0, v63);
  if (v36)
  {
    return 0;
  }

  v37 = v65;
  if (v65 > 18000.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v36) > 1)
    {
      return 0;
    }

    v63[0] = 12;
    v50 = 1;
    v38 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, this + 80, "Sanity failure,altitude,%.1lf > %.1lf", v37, 18000.0);
    if (*(this + 2735) >= 0)
    {
      v39 = v38;
    }

    else
    {
      v39 = *v38;
    }

LABEL_43:
    cnprint::CNPrinter::Print(v63, &v50, "%s", v39);
    return 0;
  }

  v40 = sqrt(v42 * v42 + v44 * v44 + v43 * v43);
  if (v40 > 600.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v36) > 1)
    {
      return 0;
    }

    v63[0] = 12;
    v50 = 1;
    v41 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, this + 80, "Sanity failure,speed,%.1lf > %.1lf", v40, 600.0);
    if (*(this + 2735) >= 0)
    {
      v39 = v41;
    }

    else
    {
      v39 = *v41;
    }

    goto LABEL_43;
  }

  return 1;
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::AccessoryVehicleSpeedEvent *a2)
{
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 58) == 1)
  {
    v4 = *(a2 + 56);
    v51 = *(a2 + 40);
    v52 = v4;
    v5 = *(a2 + 88);
    v53 = *(a2 + 72);
    v54 = v5;
    v6 = *(a2 + 24);
    v49 = *(a2 + 8);
    v50 = v6;
    v7 = raven::PopulateAllTimeFields(&v49, this + 136, v49, v6);
    if (!*(a2 + 51) || *(a2 + 30) == *(a2 + 29))
    {
      if (cnprint::CNPrinter::GetLogLevel(v7) <= 1)
      {
        LOWORD(v32) = 12;
        LOBYTE(v35) = 1;
        v36 = (*(*a2 + 16))(a2);
        *&v37 = v15;
        cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v36, "AccessoryVehicleSpeed,rejected,0 speed samples,iOSTime,%.2lf", *&v51 + v50.i64[1]);
        if (*(this + 2735) >= 0)
        {
          v16 = this + 2712;
        }

        else
        {
          v16 = *(this + 339);
        }

        cnprint::CNPrinter::Print(&v32, &v35, "%s", v16);
      }
    }

    else if (*(this + 1848) == 1 && ((v9 = *(this + 1960), v9 > 3) || v9 == 1) && *(this + 1208) == 1 && ((*(this + 1320) - 4) & 0xFA) == 0 && raven::RavenEstimator::IsZUPTAppropriate(this, a2))
    {
      v20 = sub_1D0D83BDC(&v36);
      v22 = sub_1D0D56F20(a2, &v36, v20, v21);
      if (v22)
      {
        if (cnprint::CNPrinter::GetLogLevel(v22) > 1)
        {
          return 0xFFFFFFFFLL;
        }

        v35 = 12;
        v34 = 1;
        v32 = (*(*a2 + 16))(a2);
        v33 = v23;
        v24 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v32, "AccessoryVehicleSpeed,rejected,unable to add ZUPT 2,iOSTime,%.2lf", *&v51 + v50.i64[1]);
        if (*(this + 2735) >= 0)
        {
          v13 = v24;
        }

        else
        {
          v13 = *(this + 339);
        }

        goto LABEL_13;
      }

      v25 = raven::RavenPNTEstimator::AddUserVelocityMeasurement(this, &v36);
      if (v25)
      {
        if (cnprint::CNPrinter::GetLogLevel(v25) > 1)
        {
          return 0xFFFFFFFFLL;
        }

        v35 = 12;
        v34 = 1;
        v32 = (*(*a2 + 16))(a2);
        v33 = v26;
        v27 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v32, "AccessoryVehicleSpeed,rejected,unable to add ZUPT 1,iOSTime,%.2lf", *&v51 + v50.i64[1]);
        if (*(this + 2735) >= 0)
        {
          v13 = v27;
        }

        else
        {
          v13 = *(this + 339);
        }

        goto LABEL_13;
      }

      v28 = *(this + 232);
      *(this + 15) = v37;
      if ((v28 & 1) == 0)
      {
        *(this + 232) = 1;
      }

      if (cnprint::CNPrinter::GetLogLevel(v25) <= 1)
      {
        v35 = 12;
        v34 = 1;
        v32 = (*(*a2 + 16))(a2);
        v33 = v29;
        v30 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v32, "AccessoryVehicleSpeed,accepted,ZUPT,iOSTime,%.2lf,speed,%.2lf", *&v51 + v50.i64[1], *(*(a2 + 30) - 8));
        if (*(this + 2735) >= 0)
        {
          v31 = v30;
        }

        else
        {
          v31 = *(this + 339);
        }

        cnprint::CNPrinter::Print(&v35, &v34, "%s", v31);
      }
    }

    else
    {
      v37 = 0uLL;
      v36 = &unk_1F4CEF718;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v47 = vdupq_n_s64(0x7FF8000000000000uLL);
      v48 = NAN;
      v10 = sub_1D0D57094(a2, &v36, v47, v8);
      if (v10)
      {
        if (cnprint::CNPrinter::GetLogLevel(v10) > 1)
        {
          return 0xFFFFFFFFLL;
        }

        v35 = 12;
        v34 = 1;
        v32 = (*(*a2 + 16))(a2);
        v33 = v11;
        v12 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v32, "AccessoryVehicleSpeed,rejected,unable to add USPD,iOSTime,%.2lf", *&v51 + v50.i64[1]);
        if (*(this + 2735) >= 0)
        {
          v13 = v12;
        }

        else
        {
          v13 = *(this + 339);
        }

LABEL_13:
        cnprint::CNPrinter::Print(&v35, &v34, "%s", v13);
        return 0xFFFFFFFFLL;
      }

      if (cnprint::CNPrinter::GetLogLevel(v10) <= 1)
      {
        v35 = 12;
        v34 = 1;
        v32 = (*(*a2 + 16))(a2);
        v33 = v17;
        v18 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v32, "AccessoryVehicleSpeed,accepted,USPD,iOSTime,%.2lf,speed,%.2lf,speedUnc,%.2lf", *&v51 + v50.i64[1], *&v47.i64[1], v48);
        if (*(this + 2735) >= 0)
        {
          v19 = v18;
        }

        else
        {
          v19 = *(this + 339);
        }

        cnprint::CNPrinter::Print(&v35, &v34, "%s", v19);
      }

      raven::RavenPNTEstimator::HandleEvent(this, &v36);
    }
  }

  return 0;
}

uint64_t sub_1D0D56F20(uint64_t a1, uint64_t a2, int8x16_t a3, int8x16_t a4)
{
  if (!*(a1 + 204) || (v5 = *(a1 + 240), v5 == *(a1 + 232)))
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      LOWORD(v14[0]) = 12;
      v15 = 1;
      v12 = (*(*a1 + 16))(a1);
      cnprint::CNPrinter::Print(v14, &v15, "t,%.2lf,AccessoryVehicleSpeed,rejected,0 speed samples", v13 + v12);
    }
  }

  else
  {
    a4.i64[0] = 0x3F847AE147AE147BLL;
    if (*(v5 - 8) <= 0.01)
    {
      a3.i64[0] = *(*(a1 + 216) - 8);
      v14[0] = 0;
      v14[1] = 0;
      *v7.i64 = CNTimeSpan::SetTimeSpan(v14, 0, a3, a4);
      v9 = CNTimeSpan::operator+((a1 + 104), v14, v7, v8);
      result = 0;
      *(a2 + 8) = v9;
      *(a2 + 16) = v11;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 72) = 0u;
      *(a2 + 88) = 0;
      *(a2 + 96) = 0x7FF8000000000000;
      *(a2 + 136) = *(a2 + 40);
      *(a2 + 152) = *(a2 + 56);
      *(a2 + 168) = *(a2 + 72);
      *(a2 + 184) = *(a2 + 88);
      *(a2 + 104) = *(a2 + 8);
      *(a2 + 120) = *(a2 + 24);
      *(a2 + 288) = 0;
      *(a2 + 296) = 0;
      *(a2 + 304) = 0;
      *(a2 + 312) = 0x3F1A36E2EB1C432DLL;
      *(a2 + 320) = 0;
      *(a2 + 328) = 0;
      *(a2 + 336) = xmmword_1D0E844C0;
      *(a2 + 352) = 0x3F1A36E2EB1C432DLL;
      *(a2 + 280) = 1;
      return result;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0D57094(uint64_t a1, uint64_t a2, int8x16_t a3, int8x16_t a4)
{
  if (!*(a1 + 204) || *(a1 + 240) == *(a1 + 232))
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      LOWORD(__y[0]) = 12;
      v18 = 1;
      v15 = (*(*a1 + 16))(a1);
      cnprint::CNPrinter::Print(__y, &v18, "t,%.2lf,AccessoryVehicleSpeed,rejected,0 speed samples", v16 + v15);
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    a3.i64[0] = *(*(a1 + 216) - 8);
    __y[0] = 0.0;
    __y[1] = 0.0;
    *v6.i64 = CNTimeSpan::SetTimeSpan(__y, 0, a3, a4);
    *(a2 + 8) = CNTimeSpan::operator+((a1 + 104), __y, v6, v7);
    *(a2 + 16) = v8;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0x7FF8000000000000;
    v9 = *(*(a1 + 240) - 8);
    v10 = fmin(fmax(v9 * 0.1, 0.5), 10.0);
    *(a2 + 104) = v9;
    *(a2 + 112) = v10;
    if (v9 <= 0.01)
    {
      return 0;
    }

    v11 = modf(v9, __y);
    result = 0;
    if (v10 < 1.0 && v11 >= 0.0 && v11 <= 0.0)
    {
      *(a2 + 112) = v10 + 1.0;
      if (cnprint::CNPrinter::GetLogLevel(0) <= 1)
      {
        LOWORD(__y[0]) = 12;
        v18 = 1;
        v13 = (*(*a1 + 16))(a1);
        cnprint::CNPrinter::Print(__y, &v18, "t,%.2lf,AccessoryVehicleSpeed,accepted, speed unc increased", v14 + v13);
      }

      return 0;
    }
  }

  return result;
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::UserSpeedEvent *a2)
{
  if (*(this + 57) != 1 || *(this + 58) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v29 = 0x100000003;
  *&v4 = 0x100000001;
  *(&v4 + 1) = 0x100000001;
  v28 = v4;
  v27 = &unk_1F4CDEB28;
  v30 = &v31;
  v31 = *(a2 + 13);
  v24 = 0x300000003;
  v23 = v4;
  v22 = &unk_1F4CD5DD0;
  v25 = &v26;
  v26 = *(a2 + 14) * *(a2 + 14);
  v21 = *(a2 + 8);
  sub_1D0BA002C(v13, 26);
  v13[0] = &unk_1F4CE09C0;
  v15 = v21;
  v16 = this + 2920;
  v17 = this + 14824;
  v18 = this + 14840;
  v19 = this + 2760;
  v20 = this + 2800;
  if (sub_1D0D6BF40(this + 61736, &v21, &v27, &v22, sub_1D0D6B8A0, v13))
  {
    v12 = 12;
    v11 = 4;
    v10[0] = (*(*a2 + 16))(a2);
    v10[1] = v5;
    v6 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v10, "Could not add measurement - user speed");
    if (*(this + 2735) >= 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s", v7);
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
  }

  v13[0] = &unk_1F4CE4300;
  if (v14 < 0)
  {
    operator delete(v13[2]);
  }

  return v8;
}

void sub_1D0D5749C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenPNTEstimator::SetStateParameterization(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v5 = *v2;
  if ((*(*(v1 + 1168) + 3839) & 1) == 0 && v5 == 1)
  {
    return 0;
  }

  v29[0].i16[0] = 12;
  v25[0].i8[0] = 2;
  cnprint::CNLogFormatter::FormatGeneral(v1 + 2712, v1 + 80, "SetStateParameterization() attempting to update state parameterization from %hu to %hu.", *(v1 + 2760), v5);
  v6 = *(v4 + 2735) >= 0 ? (v4 + 2712) : *(v4 + 2712);
  cnprint::CNPrinter::Print(v29, v25, "%s", v6);
  if (*(v4 + 2760) == *v3)
  {
    return 0;
  }

  if (*(v4 + 58))
  {
    sub_1D0D98D1C(v121, v4 + 14840);
    v118 = 0x10000001ALL;
    v117 = xmmword_1D0E843B0;
    v116 = &unk_1F4CE3E48;
    v119 = &v120;
    v8 = 552;
    if (!*(v4 + 16364))
    {
      v8 = 8;
    }

    sub_1D0B894B0(&v116, v4 + 15256 + v8);
    v112 = 0x100000003;
    v110 = &unk_1F4CDEAA0;
    v113 = &v114;
    v111 = xmmword_1D0E7DCC0;
    v115 = 2;
    v114 = 0x100000000;
    v106 = 0x100000003;
    v104 = &unk_1F4CDEAA0;
    v107 = &v108;
    v105 = xmmword_1D0E7DCC0;
    v109 = 23;
    v108 = 0x1600000015;
    v100 = 0x100000003;
    v98 = &unk_1F4CDEAA0;
    v101 = &v102;
    v99 = xmmword_1D0E7DCC0;
    v103 = 27;
    v102 = 0x1A00000019;
    v94 = 0x100000003;
    v92 = &unk_1F4CDEAA0;
    v95 = &v96;
    v93 = xmmword_1D0E7DCC0;
    v97 = 2;
    v96 = 0x100000000;
    v88 = 0x100000003;
    v86 = &unk_1F4CDEAA0;
    v89 = &v90;
    v87 = xmmword_1D0E7DCC0;
    v91 = 22;
    v90 = 0x1500000014;
    v30.i64[1] = 0x1800000017;
    v82 = 0x100000003;
    v80 = &unk_1F4CDEAA0;
    v83 = &v84;
    v81 = xmmword_1D0E7DCC0;
    v85 = 25;
    v84 = 0x1800000017;
    v9 = v122[6];
    v10 = v122[7];
    v11 = v122[8];
    v12 = v122[9];
    v13 = sqrt(v10 * v10 + v9 * v9 + v11 * v11 + v12 * v12);
    v14 = 1.0;
    v15 = 0.0;
    v16 = 0.0;
    v17 = 0.0;
    v18 = 0.0;
    v19 = 1.0;
    if (fabs(v13) >= 2.22044605e-16)
    {
      v16 = v9 / v13;
      v17 = v10 / v13;
      v18 = v11 / v13;
      v19 = v12 / v13;
    }

    *&v79[12] = v16;
    *&v79[13] = v17;
    *&v79[14] = v18;
    *&v79[15] = v19;
    v20 = sqrt(v17 * v17 + v16 * v16 + v18 * v18 + v19 * v19);
    v21 = 0.0;
    v22 = 0.0;
    if (fabs(v20) >= 2.22044605e-16)
    {
      v15 = -v16 / v20;
      v21 = -v17 / v20;
      v22 = -v18 / v20;
      v14 = v19 / v20;
    }

    *&v79[8] = v15;
    *&v79[9] = v21;
    *&v79[10] = v22;
    *&v79[11] = v14;
    sub_1D0D7B740(v79, v121, &v110);
    sub_1D0D7B740(&v78, v121, &v104);
    sub_1D0D7B740(&v77, v121, &v98);
    v23 = v119;
    sub_1D0D7B7A4(&v76, v119, &v92);
    sub_1D0D7B7A4(&v75, v23, &v86);
    sub_1D0D7B7A4(&v74, v23, &v80);
    v71 = 0x10000001ALL;
    v69 = &unk_1F4CE3E48;
    v72 = v73;
    v70 = xmmword_1D0E843B0;
    memset(v73, 0, sizeof(v73));
    v66 = 0x10000001CLL;
    v64 = &unk_1F4CE0A20;
    v65 = xmmword_1D0E843A0;
    v67 = &v68;
    v29[0] = vdupq_n_s64(0x7FF8000000000000uLL);
    v29[1] = v29[0];
    v30 = v29[0];
    v31 = v29[0];
    v32 = v29[0];
    v33 = v29[0];
    v34 = v29[0];
    v35 = v29[0];
    v36 = v29[0];
    v37 = v29[0];
    v38 = v29[0];
    v39 = v29[0];
    v40 = v29[0];
    v41 = v29[0];
    v42 = v29[0];
    v43 = v29[0];
    v44 = v29[0];
    v45 = v29[0];
    v46 = v29[0];
    v47 = v29[0];
    v48 = v29[0];
    v49 = v29[0];
    v50 = v29[0];
    v51 = v29[0];
    v52 = v29[0];
    v53 = v29[0];
    v54 = v29[0];
    v55 = v29[0];
    v56 = v29[0];
    v57 = v29[0];
    v58 = v29[0];
    v59 = v29[0];
    v60 = v29[0];
    v61 = v29[0];
    v62 = v29[0];
    v63 = 0x7FF8000000000000;
    v25[0].i8[0] = 0;
    if (!sub_1D0D8825C(v121, &v69, 0, 1, 1, &v64, v29, v25[0].i8, 0.000000015))
    {
      sub_1D0D98D1C(v28, v4 + 14840);
      sub_1D0D96660(v27, &v116);
      sub_1D0D87C2C(v26, 26, 26);
    }

    v25[0].i16[0] = 12;
    v28[0] = 4;
    cnprint::CNLogFormatter::FormatGeneral(v4 + 2712, v4 + 80, "SetStateParameterization() failed; pre-transformation GetFullStateEstimate() failed.");
    cnprint::CNPrinter::Print(v25, v28, "%s");
  }

  else
  {
    v29[0].i16[0] = 12;
    v25[0].i8[0] = 4;
    cnprint::CNLogFormatter::FormatGeneral(v4 + 2712, v4 + 80, "SetStateParameterization() failed; estimator not initialized.");
    cnprint::CNPrinter::Print(v29, v25, "%s");
  }

  return 0xFFFFFFFFLL;
}

void sub_1D0D58BD4(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1EE053B10);
  sub_1D0D89DFC(&STACK[0x7C0]);
  sub_1D0D857FC(&STACK[0x830]);
  sub_1D0D89DFC(&STACK[0x8A0]);
  sub_1D0D857FC(&STACK[0x910]);
  sub_1D0D857FC(&STACK[0x980]);
  sub_1D0D857FC(&STACK[0x9F0]);
  sub_1D0D857FC(&STACK[0xA60]);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D58ED4(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v66[276] = *MEMORY[0x1E69E9840];
  if (v3 && (v4 = v2, v5 = v1, (v6 = __dynamic_cast(v3, &unk_1F4CE42A0, &unk_1F4CE0F70, 0)) != 0))
  {
    v7 = v6;
    v9 = *(v5 + 8);
    v8 = *(v5 + 12);
    if (v9 <= v8)
    {
      v10 = *(v5 + 12);
    }

    else
    {
      v10 = *(v5 + 8);
    }

    if (v9 && v8 && v10 == 26 && ((v12 = *(v4 + 8), v11 = *(v4 + 12), v12 <= v11) ? (v13 = *(v4 + 12)) : (v13 = *(v4 + 8)), v12 && v11 && v13 == 1))
    {
      if (*(v6 + 7))
      {
        v61 = *(v6 + 40);
        v14 = *(v6 + 9);
        v60 = **(v6 + 8);
        sub_1D0D96A9C(&v58, v14);
        v15 = *(v7 + 7);
        v55 = 0x10000001CLL;
        v54 = xmmword_1D0E843A0;
        v53 = &unk_1F4CE0A20;
        v56 = &v57;
        if (sub_1D0D85A88(&v61, &v60, v59, v15, *(v7 + 11), &v53))
        {
          LOWORD(v43[0]) = 12;
          LOBYTE(v62) = 4;
          cnprint::CNPrinter::Print(v43, &v62, "time,%.3lf,h-function failure on line %d: %s() %s", *(v7 + 6) + *(v7 + 5), 2207, "h_DeviceAltitudeChange_RavenPNT", "could not integrate full states");
        }

        else
        {
          v16.i64[0] = *(v7 + 12);
          if (*v16.i64 <= 0.0)
          {
            sub_1D0D85A30((v7 + 40), "invalid time interval", "h_DeviceAltitudeChange_RavenPNT", 2229);
          }

          else
          {
            v43[1] = 0;
            v43[0] = 0;
            *v19.i64 = CNTimeSpan::SetTimeSpan(v43, 0, v16, v17);
            *&v52 = CNTimeSpan::operator-(&v61, v43, v19, v20);
            *(&v52 + 1) = v21;
            v49 = 0x10000001CLL;
            v47 = &unk_1F4CE0A20;
            v48 = xmmword_1D0E843A0;
            v50 = &v51;
            if (sub_1D0D85A88(&v52, &v60, v59, v15, *(v7 + 11), &v47))
            {
              sub_1D0D85A30((v7 + 40), "could not integrate full states", "h_DeviceAltitudeChange_RavenPNT", 2238);
            }

            else
            {
              sub_1D0D7CFF0(v43);
              v44 = 0;
              v43[0] = &unk_1F4CE3F68;
              v45 = 0u;
              v46 = 0u;
              sub_1D0D5224C(v42);
              if (sub_1D0D8A408(v15, v42))
              {
                v22 = 2250;
                v23 = "could not get integrator configuration";
              }

              else
              {
                if (!sub_1D0D53D5C(v43, v42))
                {
                  v24 = 0;
                  v37 = v43;
                  v38 = &v61;
                  v25 = *(v7 + 11);
                  v39 = &v53;
                  v40 = v25;
                  v41 = v52;
                  v64 = 0x1A00000001;
                  v62 = &unk_1F4CE1FD0;
                  v65 = v66;
                  v63 = xmmword_1D0E844D0;
                  v26 = xmmword_1D0E7DD30;
                  v27 = vdupq_n_s64(2uLL);
                  v28 = vdupq_n_s64(0x12uLL);
                  while (1)
                  {
                    if (vmovn_s64(vcgtq_u64(v28, v26)).u8[0])
                    {
                      LODWORD(v66[v24]) = v24 * 2;
                    }

                    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x12uLL), *&v26)).i32[1])
                    {
                      HIDWORD(v66[v24]) = v24 * 2 + 1;
                    }

                    ++v24;
                    v26 = vaddq_s64(v26, v27);
                    if (v24 == 9)
                    {
                      sub_1D0D741B0(v36, &v62);
                      sub_1D0D8A47C(v35, 15);
                      v32 = 0x10000001ALL;
                      v30 = &unk_1F4CE3E48;
                      v31 = xmmword_1D0E843B0;
                      v33 = &v34;
                      sub_1D0D87FCC(v29);
                    }
                  }
                }

                v22 = 2255;
                v23 = "could not set integrator configuration";
              }

              sub_1D0D85A30((v7 + 40), v23, "h_DeviceAltitudeChange_RavenPNT", v22);
              sub_1D0D4F978(v43);
            }
          }
        }
      }

      else
      {
        LOWORD(v43[0]) = 12;
        LOBYTE(v62) = 4;
        cnprint::CNPrinter::Print(v43, &v62, "time,%.3lf,h-function failure on line %d: %s() %s", *(v6 + 6) + *(v6 + 5), 2193, "h_DeviceAltitudeChange_RavenPNT", "invalid numerical integrator");
      }
    }

    else
    {
      LOWORD(v43[0]) = 12;
      LOBYTE(v62) = 4;
      cnprint::CNPrinter::Print(v43, &v62, "time,%.3lf,h-function failure on line %d: %s() %s", *(v6 + 6) + *(v6 + 5), 2187, "h_DeviceAltitudeChange_RavenPNT", "inadequate matrices");
    }
  }

  else
  {
    LOWORD(v43[0]) = 12;
    LOBYTE(v62) = 4;
    cnprint::CNPrinter::Print(v43, &v62, "time,%.3lf,h-function failure on line %d: %s() %s", MEMORY[0x30] + MEMORY[0x28], 2174, "h_DeviceAltitudeChange_RavenPNT", "dynamic_cast failed");
  }

  return 0xFFFFFFFFLL;
}

void sub_1D0D59870(_Unwind_Exception *a1)
{
  sub_1D0D8B128(&STACK[0x480]);
  sub_1D0D857FC(&STACK[0x4B0]);
  sub_1D0D4F978(&STACK[0x938]);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D59904(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::AltitudeEvent *a2)
{
  v41[4] = *MEMORY[0x1E69E9840];
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 58) != 1 || *(this + 2760) == 1 && *(this + 2000) == 1 && *(this + 2112) - 1 < 2)
  {
    return 0;
  }

  v30 = 0x100000003;
  *&v5 = 0x100000001;
  *(&v5 + 1) = 0x100000001;
  v29 = v5;
  *&v28[9] = &unk_1F4CDEB28;
  v31 = &v32;
  v32 = *(a2 + 13);
  v26 = 0x300000003;
  v25 = v5;
  v24 = &unk_1F4CD5DD0;
  v27 = v28;
  v28[0] = *(a2 + 14) * *(a2 + 14);
  v6 = (*(*a2 + 16))(a2);
  v8 = v7;
  *&v23 = v6;
  *(&v23 + 1) = v7;
  sub_1D0BA002C(v16, 25);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v16[0] = &unk_1F4CE1138;
  v18 = v23;
  v22 = *(*(this + 146) + 80);
  *&v19 = this + 2920;
  *(&v19 + 1) = this + 14824;
  *&v20 = this + 14840;
  *(&v20 + 1) = this + 2760;
  v21 = this + 2800;
  if ((v25 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  v37 = 0x100000003;
  v33 = &unk_1F4CDEB28;
  v9 = v39;
  v38 = v39;
  v34 = v25 | 0x100000000;
  v35 = v25;
  v36 = v25;
  if (v25 > 3)
  {
    v10 = &v39[v25];
    bzero(v39, 16 * ((v25 - 1) >> 1));
    *(v10 - 2) = 0;
    *(v10 - 1) = 0;
  }

  else if (v25)
  {
    bzero(v39, 8 * v25);
  }

  if (*(this + 61736))
  {
    if (*(this + 16918) == 174)
    {
      LOWORD(v41[0]) = 2;
      v40 = 2;
      cnprint::CNPrinter::Print(v41, &v40, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v8 + v6);
    }

    else if (*(this + 61737) == 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
      {
        LOWORD(v41[0]) = 2;
        v40 = 1;
        cnprint::CNPrinter::Print(v41, &v40, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v8 + v6);
      }
    }

    else
    {
      v11 = sub_1D0B7C8AC(&v23, this + 7718);
      if (!v11)
      {
        v41[0] = 0;
        v41[1] = 0;
        sub_1D0D8B46C(v41, v16);
      }

      if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
      {
        LOWORD(v41[0]) = 2;
        v40 = 1;
        cnprint::CNPrinter::Print(v41, &v40, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", *(&v23 + 1) + v23, *(this + 7719) + *(this + 7718));
      }
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(v9) <= 1)
  {
    LOWORD(v41[0]) = 2;
    v40 = 1;
    cnprint::CNPrinter::Print(v41, &v40, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v8 + v6);
  }

  LOWORD(v41[0]) = 12;
  v40 = 4;
  v33 = (*(*a2 + 16))(a2);
  v34 = v12;
  v13 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v33, "Could not add measurement - user altitude");
  if (*(this + 2735) >= 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(this + 339);
  }

  cnprint::CNPrinter::Print(v41, &v40, "%s", v14);
  v4 = 0xFFFFFFFFLL;
  v16[0] = &unk_1F4CE4300;
  if (v17 < 0)
  {
    operator delete(v16[2]);
  }

  return v4;
}

void sub_1D0D59FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D5A03C(uint64_t a1, uint64_t a2, void *lpsrc, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v86 = *MEMORY[0x1E69E9840];
  if (!lpsrc || (v11 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CE10F0, 0)) == 0)
  {
    *v44 = 12;
    v79[0] = 4;
    cnprint::CNPrinter::Print(v44, v79, "time,%.3lf,h-function failure on line %d: %s() %s", MEMORY[0x30] + MEMORY[0x28], 6719, "h_UserAltitude_RavenPNT", "dynamic_cast failed");
    return 0xFFFFFFFFLL;
  }

  v12 = v11;
  if (!*(v11 + 7))
  {
    *v44 = 12;
    v79[0] = 4;
    cnprint::CNPrinter::Print(v44, v79, "time,%.3lf,h-function failure on line %d: %s() %s", *(v11 + 6) + *(v11 + 5), 6725, "h_UserAltitude_RavenPNT", "invalid numerical integrator");
    return 0xFFFFFFFFLL;
  }

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
    *v44 = 12;
    v79[0] = 4;
    cnprint::CNPrinter::Print(v44, v79, "time,%.3lf,h-function failure on line %d: %s() %s", *(v11 + 6) + *(v11 + 5), 6738, "h_UserAltitude_RavenPNT", "inadequate matrices");
    return 0xFFFFFFFFLL;
  }

  v81 = *(v11 + 40);
  v19 = *(v11 + 9);
  v80 = **(v11 + 8);
  sub_1D0D96A9C(v79, v19);
  v20 = **(v12 + 10);
  v21 = *(v12 + 12);
  v76 = 0x10000001CLL;
  v75 = xmmword_1D0E843A0;
  v74 = &unk_1F4CE0A20;
  v77 = &v78;
  if (v20)
  {
    if (v20 != 1)
    {
      if (v20 == 2)
      {
        __assert_rtn("h_UserAltitude_RavenPNT", "ravenmeasurementfunctions.h", 6786, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
      }

      goto LABEL_37;
    }

    if (!sub_1D0D9046C(&v81, &v80, v79, *(v12 + 7), *(v12 + 11), 1, 1, 1, &v74))
    {
      goto LABEL_37;
    }

    *v44 = 12;
    LOBYTE(v35) = 4;
    cnprint::CNPrinter::Print(v44, &v35, "time,%.3lf,h-function failure on line %d: %s() %s", *(v12 + 6) + *(v12 + 5), 6777, "h_UserAltitude_RavenPNT", "could not integrate full states");
    return 0xFFFFFFFFLL;
  }

  v37 = 0x100000007;
  v35 = &unk_1F4CE0BB0;
  v36 = xmmword_1D0E84420;
  v38 = &v39;
  if (sub_1D0C50CB8(&v81, &v80, v79, 0, &v35))
  {
    *v44 = 12;
    LOBYTE(v69) = 4;
    cnprint::CNPrinter::Print(v44, &v69, "time,%.3lf,h-function failure on line %d: %s() %s", *(v12 + 6) + *(v12 + 5), 6760, "h_UserAltitude_RavenPNT", "could not integrate user states");
    return 0xFFFFFFFFLL;
  }

  *&v44[24] = 0x700000001;
  *v44 = &unk_1F4CE23C0;
  *&v45 = &v45 + 8;
  *&v44[8] = xmmword_1D0E84430;
  v23 = xmmword_1D0E84440;
  v24 = xmmword_1D0E7DD30;
  v25 = v46 + 1;
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
  sub_1D0D772C0(&v69, v44);
  sub_1D0D867B8(v44, &v74, &v69);
  sub_1D0D8644C(v44, DWORD2(v36), v38);
LABEL_37:
  v71 = 0x100000007;
  v70 = xmmword_1D0E84420;
  v69 = &unk_1F4CE0BB0;
  v72 = &v73;
  *v44 = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v44[16] = *v44;
  v45 = *v44;
  v46[0] = *v44;
  v46[1] = *v44;
  v46[2] = *v44;
  v46[3] = *v44;
  v46[4] = *v44;
  v46[5] = *v44;
  v46[6] = *v44;
  v46[7] = *v44;
  v46[8] = *v44;
  v46[9] = *v44;
  v46[10] = *v44;
  v47 = *v44;
  v48 = *v44;
  v49 = *v44;
  v50 = *v44;
  v51 = *v44;
  v52 = *v44;
  v53 = *v44;
  v54 = *v44;
  v55 = *v44;
  v56 = *v44;
  v57 = *v44;
  v58 = *v44;
  v59 = *v44;
  v60 = *v44;
  v61 = *v44;
  v62 = *v44;
  v63 = *v44;
  v64 = *v44;
  v65 = *v44;
  v66 = *v44;
  v67 = *v44;
  v68 = 0x7FF8000000000000;
  LOBYTE(v35) = 0;
  if (sub_1D0D88874(&v74, a1, v20, &v69, v44, &v35, 0.000000015))
  {
    LOWORD(v35) = 12;
    v40[0] = 4;
    cnprint::CNPrinter::Print(&v35, v40, "time,%.3lf,h-function failure on line %d: %s() %s", *(v12 + 6) + *(v12 + 5), 6797, "h_UserAltitude_RavenPNT", "could not correct states");
    return 0xFFFFFFFFLL;
  }

  v84 = *v72;
  v85 = v72[1].f64[0];
  if (cnnavigation::ECEFToLLA(&v84, 1, v82, 1, v40))
  {
    sub_1D0D85A30((v12 + 40), "coordinate conversion error", "h_UserAltitude_RavenPNT", 6810);
    return 0xFFFFFFFFLL;
  }

  *&v29 = 0x100000001;
  *(&v29 + 1) = 0x100000001;
  *(a4 + 8) = v29;
  **(a4 + 32) = v83 - v21 + **(a2 + 32);
  sub_1D0D8A93C(&v35);
  sub_1D0B894B0(a5, &v35);
  v30 = v41;
  v31 = v42;
  v32 = *(a5 + 32);
  *v32 = v41 * *(&v47 + 1);
  v33 = *(a5 + 20);
  v32[v33] = v31 * *&v51;
  v34 = v43;
  v32[2 * v33] = v43 * *(&v54 + 1);
  v32[6 * v33] = v31 * *(&v51 + 1) + v30 * *&v48 + v34 * *&v55;
  v32[7 * v33] = v31 * *&v52 + v30 * *(&v48 + 1) + v34 * *(&v55 + 1);
  v32[8 * v33] = v31 * *(&v52 + 1) + v30 * *&v49 + v34 * *&v56;
  v32[20 * v33] = v31 * *&v53 + v30 * *(&v49 + 1) + v34 * *(&v56 + 1);
  v32[21 * v33] = v31 * *(&v53 + 1) + v30 * *&v50 + v34 * *&v57;
  v32[22 * v33] = v31 * *&v54 + v30 * *(&v50 + 1) + v34 * *(&v57 + 1);
  sub_1D0BBBC94(1u, 1u, &v35);
  sub_1D0B894B0(a6, &v35);
  return 0;
}

uint64_t sub_1D0D5A850(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::AttitudeChangeEvent *a2)
{
  v50[4] = *MEMORY[0x1E69E9840];
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 58) != 1)
  {
    return 0;
  }

  v39 = 0x100000003;
  v38 = xmmword_1D0E7DCC0;
  v37 = &unk_1F4CDEB28;
  v40 = &v41;
  v41 = *(a2 + 200);
  v42 = *(a2 + 27);
  v30 = 0x100000000;
  v33 = 0x100000003;
  v31 = &unk_1F4CDEAA0;
  v32 = xmmword_1D0E7DCC0;
  v36 = 2;
  v34 = &v35;
  v35 = 0x100000000;
  sub_1D0D2D730(a2 + 232, &v31, &v31, v28);
  v4 = (*(*a2 + 16))(a2);
  v6 = v5;
  *&v27 = v4;
  *(&v27 + 1) = v5;
  sub_1D0BA002C(v18, 5);
  v18[0] = &unk_1F4CE11E0;
  v20 = v27;
  v43 = *(a2 + 104);
  v8 = CNTimeSpan::operator-(&v27, &v43, v43, v7);
  v26 = v9 + v8;
  v21 = this + 2920;
  v22 = this + 14824;
  v23 = this + 14840;
  v24 = this + 2760;
  v25 = this + 2800;
  if ((v29 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  v46 = 0x100000003;
  v43.i64[0] = &unk_1F4CDEB28;
  v10 = v48;
  v47 = v48;
  v43.i64[1] = v29 | 0x100000000;
  v44 = v29;
  v45 = v29;
  if (v29 > 3)
  {
    v12 = &v48[v29];
    bzero(v48, 16 * ((v29 - 1) >> 1));
    *(v12 - 2) = 0;
    *(v12 - 1) = 0;
  }

  else if (v29)
  {
    bzero(v48, 8 * v29);
  }

  if (*(this + 61736))
  {
    if (*(this + 16918) == 174)
    {
      LOWORD(v50[0]) = 2;
      v49 = 2;
      cnprint::CNPrinter::Print(v50, &v49, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v6 + v4);
    }

    else if (*(this + 61737) == 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(v10) <= 1)
      {
        LOWORD(v50[0]) = 2;
        v49 = 1;
        cnprint::CNPrinter::Print(v50, &v49, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v6 + v4);
      }
    }

    else
    {
      v13 = sub_1D0B7C8AC(&v27, this + 7718);
      if (!v13)
      {
        v50[0] = 0;
        v50[1] = 0;
        sub_1D0D8BA8C(v50, v18);
      }

      if (cnprint::CNPrinter::GetLogLevel(v13) <= 1)
      {
        LOWORD(v50[0]) = 2;
        v49 = 1;
        cnprint::CNPrinter::Print(v50, &v49, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", *(&v27 + 1) + v27, *(this + 7719) + *(this + 7718));
      }
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(v10) <= 1)
  {
    LOWORD(v50[0]) = 2;
    v49 = 1;
    cnprint::CNPrinter::Print(v50, &v49, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v6 + v4);
  }

  LOWORD(v50[0]) = 12;
  v49 = 4;
  v43.i64[0] = (*(*a2 + 16))(a2);
  v43.i64[1] = v14;
  v15 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v43, "Could not add measurement - device attitude-change");
  if (*(this + 2735) >= 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = *(this + 339);
  }

  cnprint::CNPrinter::Print(v50, &v49, "%s", v16);
  v11 = 0xFFFFFFFFLL;
  v18[0] = &unk_1F4CE4300;
  if (v19 < 0)
  {
    operator delete(v18[2]);
  }

  return v11;
}

void sub_1D0D5AF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D5AF90(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  if ((atomic_load_explicit(&qword_1EE053B30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053B30))
  {
    v48 = 0x1300000001;
    v46 = &unk_1F4CE2330;
    v49 = &v50;
    v47 = xmmword_1D0E844E0;
    v27 = xmmword_1D0E84440;
    v28 = xmmword_1D0E7DD30;
    v29 = v52;
    v30 = 13;
    v31 = vdupq_n_s64(0x13uLL);
    v32 = vdupq_n_s64(4uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v31, v28)), *v27.i8).u8[0])
      {
        *(v29 - 3) = v30 - 13;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v28)), *&v27).i8[2])
      {
        *(v29 - 2) = v30 - 12;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v27))).i32[1])
      {
        *(v29 - 1) = v30 - 11;
        *v29 = v30 - 10;
      }

      v27 = vaddq_s64(v27, v32);
      v28 = vaddq_s64(v28, v32);
      v30 += 4;
      v29 += 4;
    }

    while (v30 != 33);
    sub_1D0D77214(&unk_1EE054388, &v46);
    __cxa_atexit(sub_1D0D7B720, &unk_1EE054388, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053B30);
  }

  if ((atomic_load_explicit(&qword_1EE053B38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053B38))
  {
    v33 = 0;
    v48 = 0x1A00000001;
    v46 = &unk_1F4CE1FD0;
    v49 = &v50;
    v47 = xmmword_1D0E844D0;
    v34 = xmmword_1D0E7DD30;
    v35 = vdupq_n_s64(2uLL);
    v36 = vdupq_n_s64(0x12uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v36, v34)).u8[0])
      {
        *(&v50 + v33) = v33;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x12uLL), *&v34)).i32[1])
      {
        *(&v50 + v33 + 1) = v33 + 1;
      }

      v33 += 2;
      v34 = vaddq_s64(v34, v35);
    }

    while (v33 != 18);
    sub_1D0D741B0(&unk_1EE054700, &v46);
    __cxa_atexit(sub_1D0D73024, &unk_1EE054700, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053B38);
  }

  if ((atomic_load_explicit(&qword_1EE053B40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053B40))
  {
    v48 = 0x1A00000001;
    v46 = &unk_1F4CE1FD0;
    v49 = &v50;
    v47 = xmmword_1D0E7F310;
    v50 = 0x700000006;
    v51 = 8;
    sub_1D0D741B0(&unk_1EE054790, &v46);
    __cxa_atexit(sub_1D0D73024, &unk_1EE054790, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053B40);
  }

  if ((atomic_load_explicit(&qword_1EE053B48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053B48))
  {
    v48 = 0x300000001;
    v46 = &unk_1F4CDF0C8;
    v49 = &v50;
    v47 = xmmword_1D0E7F310;
    v50 = 0x100000000;
    v51 = 2;
    sub_1D0D2CF48(&v46, &unk_1EE053EC0);
    __cxa_atexit(sub_1D0D26840, &unk_1EE053EC0, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053B48);
  }

  if (v2 && (v7 = __dynamic_cast(v2, &unk_1F4CE42A0, &unk_1F4CE1150, 0)) != 0)
  {
    v9 = v7;
    v11 = *(v6 + 8);
    v10 = *(v6 + 12);
    if (v11 <= v10)
    {
      v12 = *(v6 + 12);
    }

    else
    {
      v12 = *(v6 + 8);
    }

    if (v11 && v10 && v12 == 26 && ((v14 = *(v4 + 8), v13 = *(v4 + 12), v14 <= v13) ? (v15 = *(v4 + 12)) : (v15 = *(v4 + 8)), v14 && v13 && v15 == 3))
    {
      if (*(v7 + 7))
      {
        v8.i64[0] = *(v7 + 12);
        if ((v8.i64[0] <= -1 || ((v8.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v8.i64[0] - 1) >= 0xFFFFFFFFFFFFFLL)
        {
          LOWORD(v46) = 12;
          LOBYTE(v37[0]) = 4;
          cnprint::CNPrinter::Print(&v46, v37, "time,%.3lf,h-function failure on line %d: %s() %s", *(v7 + 6) + *(v7 + 5), 2433, "h_DeviceAttitudeChange_RavenPNT", "invalid time interval");
        }

        else
        {
          v77[0] = *(v7 + 40);
          *&v47 = 0;
          v46 = 0;
          *v18.i64 = CNTimeSpan::SetTimeSpan(&v46, 0, v8, v77[0]);
          *&v76 = CNTimeSpan::operator-(v77, &v46, v18, v19);
          *(&v76 + 1) = v20;
          v21 = v9[9];
          v75 = *v9[8];
          sub_1D0D96A9C(&v73, v21);
          v22 = v9[7];
          v70 = 0x10000001CLL;
          v69 = xmmword_1D0E844F0;
          v68 = &unk_1F4CE0A20;
          v71 = &v72;
          if (sub_1D0D85A88(v77, &v75, v74, v22, v9[11], &v68))
          {
            sub_1D0D85A30((v9 + 5), "could not integrate full states", "h_DeviceAttitudeChange_RavenPNT", 2456);
          }

          else
          {
            sub_1D0D752A8(v67);
            sub_1D0D98740(&v46, v67, &unk_1EE054388);
            sub_1D0D8874C(&v46, DWORD2(v69), v71);
            v64 = 0x100000013;
            v62 = &unk_1F4CE40B8;
            v63 = xmmword_1D0E844F0;
            v65 = &v66;
            v60[0] = vdupq_n_s64(0x7FF8000000000000uLL);
            v60[1] = v60[0];
            v60[2] = v60[0];
            v60[3] = v60[0];
            v60[4] = v60[0];
            v60[5] = v60[0];
            v60[6] = v60[0];
            v60[7] = v60[0];
            v60[8] = v60[0];
            v60[9] = v60[0];
            v60[10] = v60[0];
            v60[11] = v60[0];
            v60[12] = v60[0];
            v60[13] = v60[0];
            v60[14] = v60[0];
            v60[15] = v60[0];
            v60[16] = v60[0];
            v60[17] = v60[0];
            v60[18] = v60[0];
            v60[19] = v60[0];
            v60[20] = v60[0];
            v60[21] = v60[0];
            v60[22] = v60[0];
            v60[23] = v60[0];
            v60[24] = v60[0];
            v60[25] = v60[0];
            v60[26] = v60[0];
            v60[27] = v60[0];
            v60[28] = v60[0];
            v60[29] = v60[0];
            v60[30] = v60[0];
            v60[31] = v60[0];
            v60[32] = v60[0];
            v60[33] = v60[0];
            v60[34] = v60[0];
            v61 = 0x7FF8000000000000;
            sub_1D0D85CD4(v67, v6, &v62, v60);
            v57 = 0x10000001CLL;
            v55 = &unk_1F4CE0A20;
            v56 = xmmword_1D0E844F0;
            v58 = &v59;
            if (sub_1D0D85A88(&v76, &v75, v74, v22, v9[11], &v55))
            {
              sub_1D0D85A30((v9 + 5), "could not integrate full states", "h_DeviceAttitudeChange_RavenPNT", 2481);
            }

            else
            {
              sub_1D0D7CFF0(&v46);
              v52[404] = 0;
              v46 = &unk_1F4CE3F68;
              v53 = 0u;
              v54 = 0u;
              sub_1D0D5224C(v45);
              if (sub_1D0D8A408(v22, v45))
              {
                v24 = 2495;
                v25 = "could not get integrator configuration";
              }

              else
              {
                if (!sub_1D0D53D5C(&v46, v45))
                {
                  v43[28] = &v46;
                  v43[29] = v77;
                  v26 = v9[11];
                  v43[30] = &v68;
                  v43[31] = v26;
                  v44 = v76;
                  sub_1D0D8A47C(v43, 15);
                  v40 = 0x10000001ALL;
                  v38[6] = &unk_1F4CE3E48;
                  v39 = xmmword_1D0E843B0;
                  v41 = &v42;
                  sub_1D0D87FCC(v38);
                }

                v24 = 2500;
                v25 = "could not set integrator configuration";
              }

              sub_1D0D85A30((v9 + 5), v25, "h_DeviceAttitudeChange_RavenPNT", v24);
              sub_1D0D4F978(&v46);
            }
          }
        }
      }

      else
      {
        LOWORD(v46) = 12;
        LOBYTE(v37[0]) = 4;
        cnprint::CNPrinter::Print(&v46, v37, "time,%.3lf,h-function failure on line %d: %s() %s", *(v7 + 6) + *(v7 + 5), 2426, "h_DeviceAttitudeChange_RavenPNT", "invalid numerical integrator");
      }
    }

    else
    {
      LOWORD(v46) = 12;
      LOBYTE(v37[0]) = 4;
      cnprint::CNPrinter::Print(&v46, v37, "time,%.3lf,h-function failure on line %d: %s() %s", *(v7 + 6) + *(v7 + 5), 2420, "h_DeviceAttitudeChange_RavenPNT", "inadequate matrices");
    }
  }

  else
  {
    LOWORD(v46) = 12;
    LOBYTE(v37[0]) = 4;
    cnprint::CNPrinter::Print(&v46, v37, "time,%.3lf,h-function failure on line %d: %s() %s", MEMORY[0x30] + MEMORY[0x28], 2407, "h_DeviceAttitudeChange_RavenPNT", "dynamic_cast failed");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0D5BFA8(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::AttitudeEvent *a2)
{
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v2;
  v13 = v3;
  if (*(a2 + 217) == 1)
  {
    sub_1D0D8BC74(this + 19656, a2);
    return 0;
  }

  else
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      v11 = 12;
      v10 = 1;
      v9[0] = (*(*a2 + 16))(a2);
      v9[1] = v7;
      cnprint::CNLogFormatter::FormatGeneral(this + 2712, v9, "Unexpected attitude rotation type,%d", *(a2 + 217));
      if (*(this + 2735) >= 0)
      {
        v8 = this + 2712;
      }

      else
      {
        v8 = *(this + 339);
      }

      cnprint::CNPrinter::Print(&v11, &v10, "%s", v8);
    }

    return 0xFFFFFFFFLL;
  }
}

void raven::RavenPNTEstimator::ResetOscillatorStates(raven::RavenPNTEstimator *this)
{
  *(this + 7) = *(this + 5);
  v197 = 0x200000002;
  v195 = &unk_1F4CE0268;
  v198 = v199;
  v196 = xmmword_1D0E83F70;
  v199[2] = 0.0;
  v199[1] = 0.0;
  v2 = *(this + 146);
  v3 = *(v2 + 1256) * *(v2 + 1256);
  v4 = *(v2 + 1264) * *(v2 + 1264);
  v199[0] = v3;
  v199[3] = v4;
  v5 = *(this + 1859);
  *(v5 + 152) = 0;
  *(v5 + 160) = 0;
  if ((atomic_load_explicit(&qword_1EE053B00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053B00))
  {
    v145 = 0x200000001;
    *v144 = &unk_1F4CE2060;
    v146 = &v147;
    *&v144[8] = xmmword_1D0E84500;
    v147 = 0x1300000012;
    sub_1D0D751D4(v144, qword_1EE053C68);
    __cxa_atexit(sub_1D0D7527C, qword_1EE053C68, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053B00);
  }

  if ((atomic_load_explicit(&qword_1EE053B08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053B08))
  {
    v145 = 0x1A00000001;
    *v144 = &unk_1F4CE1FD0;
    v146 = &v147;
    *&v144[8] = xmmword_1D0E84580;
    v124 = xmmword_1D0E84440;
    v125 = xmmword_1D0E7DD30;
    v126 = v148;
    v127 = 13;
    v128 = vdupq_n_s64(0x1AuLL);
    v129 = vdupq_n_s64(4uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v128, v125)), *v124.i8).u8[0])
      {
        *(v126 - 3) = v127 - 13;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1AuLL), *&v125)), *&v124).i8[2])
      {
        *(v126 - 2) = v127 - 12;
      }

      if (vuzp1_s16(*&v124, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1AuLL), *&v124))).i32[1])
      {
        *(v126 - 1) = v127 - 11;
        *v126 = v127 - 10;
      }

      v124 = vaddq_s64(v124, v129);
      v125 = vaddq_s64(v125, v129);
      v127 += 4;
      v126 += 4;
    }

    while (v127 != 41);
    sub_1D0D741B0(&unk_1EE054670, v144);
    __cxa_atexit(sub_1D0D73024, &unk_1EE054670, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053B08);
  }

  v167 = 0x1A00000002;
  v165 = &unk_1F4CE2270;
  v168 = &v169;
  v166 = xmmword_1D0E84590;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v145 = 0x1A00000002;
  *&v144[8] = xmmword_1D0E84590;
  v146 = &v147;
  *v144 = &unk_1F4CE2210;
  v149 = this + 15104;
  v152 = 0x100000002;
  v151 = xmmword_1D0E83F60;
  v150 = &unk_1F4CE0EA8;
  v153 = &v154;
  v157 = 0x10000001ALL;
  v155 = &unk_1F4CE3E90;
  v156 = xmmword_1D0E843B0;
  v158 = &v159;
  sub_1D0B9F5D4(&v150, qword_1EE053C68);
  sub_1D0B9F5D4(&v155, &unk_1EE054670);
  v6 = DWORD2(v151);
  v7 = DWORD2(v156);
  *&v144[8] = DWORD2(v151);
  *&v144[12] = DWORD2(v156);
  *&v144[16] = DWORD2(v156) * DWORD2(v151);
  *&v144[20] = DWORD2(v151);
  if (DWORD2(v156))
  {
    v8 = 0;
    v9 = 0;
    v10 = *(this + 3781);
    v11 = *(this + 1892);
    v12 = v158;
    v13 = v153;
    v14 = v146;
    do
    {
      if (v6)
      {
        v15 = *(v12 + v9) * v10;
        v16 = v13;
        v17 = v8;
        v18 = v6;
        do
        {
          v19 = *v16++;
          v14[v17++] = *(v11 + 8 * (v19 + v15));
          --v18;
        }

        while (v18);
      }

      ++v9;
      v8 += v6;
    }

    while (v9 != v7);
  }

  if (v6 != v166)
  {
    goto LABEL_119;
  }

  if (v7 != DWORD1(v166))
  {
    goto LABEL_120;
  }

  if (v7)
  {
    v20 = 0;
    v21 = 0;
    v22 = v168;
    v23 = v153;
    v24 = v158;
    v25 = v149;
    v26 = v146;
    do
    {
      if (v6)
      {
        v27 = *(v25 + 5) * *(v24 + v21);
        v28 = *(v25 + 4);
        v29 = v20;
        v30 = v23;
        v31 = v6;
        do
        {
          v32 = *(v22 + v29);
          v33 = *v30++;
          *(v28 + 8 * (v33 + v27)) = v32;
          v26[v29++] = v32;
          --v31;
        }

        while (v31);
      }

      ++v21;
      v20 += v6;
    }

    while (v21 != v7);
  }

  v167 = 0x20000001ALL;
  v165 = &unk_1F4CE2300;
  v168 = &v169;
  v166 = xmmword_1D0E845A0;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v145 = 0x20000001ALL;
  *&v144[8] = xmmword_1D0E845A0;
  v146 = &v147;
  *v144 = &unk_1F4CE22A0;
  v149 = this + 15104;
  v152 = 0x10000001ALL;
  v151 = xmmword_1D0E843B0;
  v150 = &unk_1F4CE3E90;
  v153 = &v154;
  v162 = 0x100000002;
  v160 = &unk_1F4CE0EA8;
  v161 = xmmword_1D0E83F60;
  v163 = &v164;
  sub_1D0B9F5D4(&v150, &unk_1EE054670);
  sub_1D0B9F5D4(&v160, qword_1EE053C68);
  v34 = DWORD2(v151);
  v35 = DWORD2(v161);
  *&v144[8] = DWORD2(v151);
  *&v144[12] = DWORD2(v161);
  *&v144[16] = DWORD2(v161) * DWORD2(v151);
  *&v144[20] = DWORD2(v151);
  if (DWORD2(v161))
  {
    v36 = 0;
    v37 = 0;
    v38 = *(this + 3781);
    v39 = *(this + 1892);
    v40 = v163;
    v41 = v153;
    v42 = v146;
    do
    {
      if (v34)
      {
        v43 = *(v40 + v37) * v38;
        v44 = v41;
        v45 = v36;
        v46 = v34;
        do
        {
          v47 = *v44++;
          v42[v45++] = *(v39 + 8 * (v47 + v43));
          --v46;
        }

        while (v46);
      }

      ++v37;
      v36 += v34;
    }

    while (v37 != v35);
  }

  if (v34 != v166)
  {
LABEL_119:
    __assert_rtn("operator=", "cnsubmatrix.h", 376, "this->num_rows_ == A.num_rows_");
  }

  if (v35 != DWORD1(v166))
  {
LABEL_120:
    __assert_rtn("operator=", "cnsubmatrix.h", 377, "this->num_cols_ == A.num_cols_");
  }

  if (v35)
  {
    v48 = 0;
    v49 = 0;
    v50 = v168;
    v51 = v153;
    v52 = v163;
    v53 = v149;
    v54 = v146;
    do
    {
      if (v34)
      {
        v55 = *(v53 + 5) * *(v52 + v49);
        v56 = *(v53 + 4);
        v57 = v48;
        v58 = v51;
        v59 = v34;
        do
        {
          v60 = *(v50 + v57);
          v61 = *v58++;
          *(v56 + 8 * (v61 + v55)) = v60;
          v54[v57++] = v60;
          --v59;
        }

        while (v59);
      }

      ++v49;
      v48 += v34;
    }

    while (v49 != v35);
  }

  v62 = *(this + 3781);
  v63 = *(this + 1892);
  *(v63 + 152 * v62 + 152) = v3;
  *(v63 + 160 * v62 + 160) = v4;
  v147 = 0x1300000012;
  v141 = 0x100000002;
  v139[1] = 0;
  v139[2] = &unk_1F4CE0EA8;
  v140 = xmmword_1D0E83F60;
  v142 = &v143;
  v143 = 0x1300000012;
  v137 = 0x100000002;
  v135 = &unk_1F4CE0220;
  v136 = xmmword_1D0E83F60;
  v138 = v139;
  v139[0] = 0;
  v207 = 0x200000002;
  v206 = xmmword_1D0E83F70;
  v205 = &unk_1F4CE0268;
  v208 = &v209;
  v144[0] = 0;
  sub_1D0B9F748(&v195, &v205, v144);
  v212 = 0x200000002;
  v210 = &unk_1F4CE0268;
  v211 = xmmword_1D0E83F70;
  v213 = v214;
  v202 = 0x100000002;
  v201 = xmmword_1D0E83F60;
  v200 = &unk_1F4CE0EA8;
  v203 = &v204;
  v145 = 0x100000008;
  *&v144[8] = xmmword_1D0E84520;
  *v144 = &unk_1F4CE4320;
  v146 = &v147;
  sub_1D0B9F868(&v205, &v200, v144, &v210);
  v64 = DWORD1(v211);
  v65 = v211;
  v167 = 0x200000002;
  v165 = &unk_1F4CE0268;
  v168 = &v169;
  *&v166 = __PAIR64__(v211, DWORD1(v211));
  DWORD2(v166) = v211 * DWORD1(v211);
  HIDWORD(v166) = DWORD1(v211);
  if (DWORD1(v211))
  {
    v66 = 0;
    v67 = 0;
    v68 = HIDWORD(v211);
    v69 = v213;
    do
    {
      v70 = v66;
      v71 = v67;
      for (i = v65; i; --i)
      {
        *(&v169 + v71) = *&v69[2 * v70];
        v71 += v64;
        ++v70;
      }

      ++v67;
      v66 += v68;
    }

    while (v67 != v64);
  }

  v202 = 0x100000002;
  v201 = xmmword_1D0E83F60;
  v200 = &unk_1F4CE0220;
  v203 = &v204;
  v145 = 0x200000002;
  *&v144[8] = xmmword_1D0E83F70;
  *v144 = &unk_1F4CE0268;
  v146 = &v147;
  v132 = 0x200000002;
  v130 = &unk_1F4CE0268;
  v131 = xmmword_1D0E83F70;
  v133 = &v134;
  sub_1D0B9FACC(&v165, &v200, v144, &v130);
  if (v140 <= DWORD1(v140))
  {
    v73 = DWORD1(v140);
  }

  else
  {
    v73 = v140;
  }

  if (DWORD1(v140))
  {
    v74 = v140 == 0;
  }

  else
  {
    v74 = 1;
  }

  if (v74)
  {
    v75 = 0;
  }

  else
  {
    v75 = v73;
  }

  v145 = 0x100000002;
  *&v144[8] = xmmword_1D0E83F60;
  *v144 = &unk_1F4CE0220;
  v146 = &v147;
  sub_1D0B89390(&v130, &v135, v144);
  v76 = sub_1D0D96B84(&v165, v144);
  if (!*(this + 4091))
  {
    sub_1D0B894B0(this + 15808, this + 15264);
    sub_1D0B894B0(this + 16056, this + 15512);
    *&v76 = sub_1D0B894B0(this + 16104, this + 15560).n128_u64[0];
  }

  *(this + 4091) = 1;
  if (v140 && DWORD1(v140))
  {
    *(this + 16360) = 0;
    v77 = *(this + 3954);
    v78 = *(this + 3955);
    if (v77 <= v78)
    {
      v79 = *(this + 3955);
    }

    else
    {
      v79 = *(this + 3954);
    }

    if (v78)
    {
      v80 = v77 == 0;
    }

    else
    {
      v80 = 1;
    }

    if (v80)
    {
      v81 = 0;
    }

    else
    {
      v81 = v79;
    }

    if (v75 >= 1)
    {
      v82 = 0;
      v83 = (this + 16528);
      do
      {
        v84 = *(v142 + v82);
        if (v84 < 0 || v84 >= v81)
        {
          *v144 = 2;
          LOBYTE(v210) = 4;
          cnprint::CNLogFormatter::FormatGeneral(v83, "ResetStates(): states must contain valid indices into x, Rxx, and zx.", v76);
          if (*(this + 16551) >= 0)
          {
            v85 = this + 16528;
          }

          else
          {
            v85 = *v83;
          }

          cnprint::CNPrinter::Print(v144, &v210, "%s", v85);
        }

        v82 += 4;
      }

      while (4 * v75 != v82);
    }

    v145 = 0x1A00000001;
    *v144 = &unk_1F4CE1FD0;
    v146 = &v147;
    if (v81 == 1)
    {
      v93 = 0;
      *&v96 = 0x100000001;
      *(&v96 + 1) = 0x100000001;
      *&v144[8] = v96;
      LODWORD(v147) = 0;
      v94 = 1;
      v95 = 1;
    }

    else if (v81 <= 0)
    {
      v94 = 0;
      v95 = 0;
      *&v144[8] = 0;
      *&v144[16] = 0;
      v93 = 1;
    }

    else
    {
      v86 = 0;
      *&v144[12] = v81;
      *&v144[16] = v81;
      *&v144[20] = 1;
      v87 = vdupq_n_s64(v81 - 1);
      v88 = xmmword_1D0E84440;
      v89 = xmmword_1D0E7DD30;
      v90 = vdupq_n_s64(4uLL);
      v91 = v148;
      *&v144[8] = 1;
      do
      {
        v92 = vmovn_s64(vcgeq_u64(v87, v89));
        if (vuzp1_s16(v92, *v87.i8).u8[0])
        {
          *(v91 - 3) = v86;
        }

        if (vuzp1_s16(v92, *&v87).i8[2])
        {
          *(v91 - 2) = v86 + 1;
        }

        if (vuzp1_s16(*&v87, vmovn_s64(vcgeq_u64(v87, *&v88))).i32[1])
        {
          *(v91 - 1) = v86 + 2;
          *v91 = v86 + 3;
        }

        v86 += 4;
        v88 = vaddq_s64(v88, v90);
        v89 = vaddq_s64(v89, v90);
        v91 += 4;
      }

      while (((v81 + 3) & 0xFFFFFFFC) != v86);
      v93 = 0;
      v94 = 1;
      v95 = v81;
    }

    v212 = 0x10000001ALL;
    v210 = &unk_1F4CE3E90;
    v213 = v214;
    *&v211 = __PAIR64__(v94, v95);
    DWORD2(v211) = v95 * v94;
    HIDWORD(v211) = v95;
    if (v95)
    {
      v97 = 0;
      for (j = 0; j != v95; ++j)
      {
        if ((v93 & 1) == 0)
        {
          v99 = 0;
          do
          {
            v214[j + HIDWORD(v211) * v99] = *&v148[4 * v97 - 4 + 4 * v99];
            ++v99;
          }

          while (v94 != v99);
        }

        v97 += v94;
      }
    }

    if (v75 >= 1)
    {
      v100 = v142;
      v101 = v75;
      do
      {
        v102 = *v100++;
        v214[v102] = -1;
        --v101;
      }

      while (v101);
    }

    sub_1D0D95644(&v205, v81);
    v145 = 0x1A00000001;
    *v144 = &unk_1F4CE1FD0;
    v146 = &v147;
    if (v75 == 1)
    {
      v103 = 0;
      *&v104 = 0x100000001;
      *(&v104 + 1) = 0x100000001;
      *&v144[8] = v104;
      LODWORD(v147) = 0;
      v105 = 1;
      v106 = 1;
    }

    else if (v75 <= 0)
    {
      v105 = 0;
      v106 = 0;
      *&v144[8] = 0;
      *&v144[16] = 0;
      v103 = 1;
    }

    else
    {
      v107 = 0;
      *&v144[12] = v75;
      *&v144[16] = v75;
      *&v144[20] = 1;
      v108 = vdupq_n_s64(v75 - 1);
      v109 = xmmword_1D0E84440;
      v110 = xmmword_1D0E7DD30;
      v111 = vdupq_n_s64(4uLL);
      v112 = v148;
      *&v144[8] = 1;
      do
      {
        v113 = vmovn_s64(vcgeq_u64(v108, v110));
        if (vuzp1_s16(v113, *v108.i8).u8[0])
        {
          *(v112 - 3) = v107;
        }

        if (vuzp1_s16(v113, *&v108).i8[2])
        {
          *(v112 - 2) = v107 + 1;
        }

        if (vuzp1_s16(*&v108, vmovn_s64(vcgeq_u64(v108, *&v109))).i32[1])
        {
          *(v112 - 1) = v107 + 2;
          *v112 = v107 + 3;
        }

        v107 += 4;
        v109 = vaddq_s64(v109, v111);
        v110 = vaddq_s64(v110, v111);
        v112 += 4;
      }

      while (((v75 + 3) & 0xFFFFFFFC) != v107);
      v103 = 0;
      v105 = 1;
      v106 = v75;
    }

    v202 = 0x10000001ALL;
    v200 = &unk_1F4CE3E90;
    v203 = &v204;
    *&v201 = __PAIR64__(v105, v106);
    DWORD2(v201) = v106 * v105;
    HIDWORD(v201) = v106;
    if (v106)
    {
      v114 = 0;
      for (k = 0; k != v106; ++k)
      {
        if ((v103 & 1) == 0)
        {
          v116 = 0;
          do
          {
            *(&v204 + k + HIDWORD(v201) * v116) = *&v148[4 * v114 - 4 + 4 * v116];
            ++v116;
          }

          while (v105 != v116);
        }

        v114 += v105;
      }
    }

    sub_1D0D956F4(v144, &v205, &v200);
    sub_1D0D94F80(v144, DWORD2(v140), v142);
    if (v81 > v75)
    {
      LODWORD(v117) = 0;
      v118 = v213;
      v119 = v208;
      v120 = v75;
      do
      {
        v117 = v117;
        do
        {
          v121 = v118[v117++];
        }

        while (v121 == -1);
        *(v119 + v120++) = v121;
      }

      while (v120 != v81);
    }

    sub_1D0D95034(this + 15256, v81, &v205);
  }

  sub_1D0B894B0(this + 15264, this + 15808);
  sub_1D0B894B0(this + 15512, this + 16056);
  sub_1D0B894B0(this + 15560, this + 16104);
  *(this + 4091) = 1;
  LOWORD(v165) = 12;
  LOBYTE(v210) = 2;
  *v144 = *(this + 5);
  v122 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v144, "Resetting estimator oscillator states.");
  if (*(this + 2735) >= 0)
  {
    v123 = v122;
  }

  else
  {
    v123 = *(this + 339);
  }

  cnprint::CNPrinter::Print(&v165, &v210, "%s", v123);
}

uint64_t raven::RavenPNTEstimator::UpdateClockOffsetEstimateIfNecessary(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 8) != 1 || *(a2 + 24) != 1)
  {
    v11 = *(*(a1 + 14872) + 152) * 0.001;
    v12 = round(v11);
    if (fabs(v12) >= 2.22044605e-16)
    {
      if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
      {
        v17 = 12;
        v16 = 1;
        v14 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a3, "clock offset exceeds 0.5 ms,%.3lf ms", v11);
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

      v10 = v12 * -0.001;
      v9 = a1;
      goto LABEL_18;
    }

    return 1;
  }

  v5 = *(a2 + 16);
  if (vabdd_f64(*a2, v5) < 2.22044605e-16)
  {
    return 1;
  }

  v6 = *a2 - v5;
  if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    v19 = 12;
    v18 = 1;
    v7 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a3, "clock jump detected");
    if (*(a1 + 2735) >= 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(&v19, &v18, "%s", v8);
  }

  v9 = a1;
  v10 = v6;
LABEL_18:

  return raven::RavenPNTEstimator::AdjustClockOffset(v9, a3, v10);
}

uint64_t sub_1D0D5D83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000054;
  *a1 = &unk_1F4CE12E0;
  *(a1 + 8) = xmmword_1D0E845B0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D8C29C(a2, a3, a1);
}

uint64_t sub_1D0D5D8C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x10000001CLL;
  *a1 = &unk_1F4CE1250;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D2EF0C(a2, a1);
}

uint64_t sub_1D0D5D954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000038;
  *a1 = &unk_1F4CE1298;
  *(a1 + 8) = xmmword_1D0E845C0;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D8C29C(a2, a3, a1);
}

void *sub_1D0D5DA60(void *result)
{
  result[34] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void *sub_1D0D5DAA0(void *a1, __n128 a2)
{
  *a1 = &unk_1F4CE1370;
  a1[26] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  return sub_1D0D855A8(a1);
}

void sub_1D0D5DB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  sub_1D0BA1824(&v25, a2);
  *&v26 = v5 | 0x100000000;
  DWORD2(v26) = v5;
  HIDWORD(v26) = v5;
  sub_1D0B894B0(a1 + 8, &v25);
  v17 = 0x800000008;
  v15 = &unk_1F4CE43B0;
  v16 = xmmword_1D0E84510;
  v18 = v19;
  LOBYTE(v25) = 0;
  sub_1D0B9F748(a3, &v15, &v25);
  v27 = 0x800000008;
  v26 = xmmword_1D0E84510;
  v25 = &unk_1F4CE43B0;
  v28 = v29;
  v32 = 0x100000008;
  v31 = xmmword_1D0E84520;
  v30 = &unk_1F4CE43F8;
  v33 = v34;
  v22 = 0x100000020;
  v20 = &unk_1F4CE3988;
  v21 = xmmword_1D0E84540;
  v23 = v24;
  sub_1D0B9F868(&v15, &v30, &v20, &v25);
  v6 = DWORD1(v26);
  v7 = v26;
  v22 = 0x800000008;
  v20 = &unk_1F4CE43B0;
  v23 = v24;
  *&v21 = __PAIR64__(v26, DWORD1(v26));
  DWORD2(v21) = v26 * DWORD1(v26);
  HIDWORD(v21) = DWORD1(v26);
  if (DWORD1(v26))
  {
    v8 = 0;
    v9 = 0;
    v10 = HIDWORD(v26);
    v11 = v28;
    do
    {
      v12 = v8;
      v13 = v9;
      for (i = v7; i; --i)
      {
        v24[v13] = *&v11[8 * v12];
        v13 += v6;
        ++v12;
      }

      ++v9;
      v8 += v10;
    }

    while (v9 != v6);
  }

  v32 = 0x100000008;
  v31 = xmmword_1D0E84520;
  v30 = &unk_1F4CE4320;
  v33 = v34;
  v27 = 0x800000008;
  v26 = xmmword_1D0E84510;
  v25 = &unk_1F4CE43B0;
  v28 = v29;
  v17 = 0x800000008;
  v15 = &unk_1F4CE43B0;
  v16 = xmmword_1D0E84510;
  v18 = v19;
  sub_1D0B9FACC(&v20, &v30, &v25, &v15);
  sub_1D0B894B0(a1 + 112, &v15);
  v27 = 0x100000008;
  v26 = xmmword_1D0E84520;
  v25 = &unk_1F4CE4320;
  v28 = v29;
  sub_1D0B89390(a1 + 112, a1 + 8, &v25);
  sub_1D0B894B0(a1 + 664, &v25);
  sub_1D0B894B0(a1 + 768, a1 + 8);
  sub_1D0B894B0(a1 + 872, a1 + 112);
  sub_1D0B894B0(a1 + 1424, a1 + 664);
  *(a1 + 1528) = 0x3FF0000000000000;
  *(a1 + 1536) = 0;
  *(a1 + 1540) = 1;
}

double sub_1D0D5DE90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x100000008;
  *a2 = &unk_1F4CE4320;
  *(a2 + 8) = xmmword_1D0E84520;
  *(a2 + 32) = a2 + 40;
  v2 = 768;
  if (!*(a1 + 1540))
  {
    v2 = 8;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

uint64_t sub_1D0D5DF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = 0x800000008;
  v19 = &unk_1F4CE43B0;
  v20 = xmmword_1D0E84510;
  v22 = &v23;
  if (*(a1 + 1540))
  {
    v16 = 0x800000008;
    v14 = &unk_1F4CE43B0;
    v15 = xmmword_1D0E84510;
    v17 = v18;
    v31 = 0x100000008;
    v30 = xmmword_1D0E84520;
    v29 = &unk_1F4CE43F8;
    v32 = v33;
    v26 = 0x100000020;
    v25 = xmmword_1D0E84540;
    v24 = &unk_1F4CE3988;
    v27 = v28;
    v3 = a1 + 872;
  }

  else
  {
    v16 = 0x800000008;
    v14 = &unk_1F4CE43B0;
    v15 = xmmword_1D0E84510;
    v17 = v18;
    v31 = 0x100000008;
    v30 = xmmword_1D0E84520;
    v29 = &unk_1F4CE43F8;
    v32 = v33;
    v26 = 0x100000020;
    v25 = xmmword_1D0E84540;
    v24 = &unk_1F4CE3988;
    v27 = v28;
    v3 = a1 + 112;
  }

  sub_1D0B9F868(v3, &v29, &v24, &v14);
  sub_1D0B894B0(&v19, &v14);
  v4 = DWORD1(v20);
  v5 = v20;
  v16 = 0x800000008;
  v14 = &unk_1F4CE43B0;
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

  *(a2 + 24) = 0x800000008;
  *a2 = &unk_1F4CE43B0;
  *(a2 + 8) = xmmword_1D0E84510;
  *(a2 + 32) = a2 + 40;
  return sub_1D0B89390(&v19, &v14, a2);
}

uint64_t sub_1D0D5E230(uint64_t a1)
{
  *a1 = &unk_1F4CE07C8;
  *(a1 + 2408) = &unk_1F4CD5E28;
  *(a1 + 2304) = &unk_1F4CD5E28;
  *(a1 + 1752) = &unk_1F4CD5E28;
  return sub_1D0D83C64(a1);
}

uint64_t sub_1D0D5E2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  v11 = !v10 && v9 == 26;
  if (!v11 || ((v13 = *(a2 + 8), v14 = *(a2 + 12), v13 <= v14) ? (v15 = *(a2 + 12)) : (v15 = *(a2 + 8)), v13 ? (v16 = v14 == 0) : (v16 = 1), !v16 ? (v17 = v15 == 1) : (v17 = 0), !v17))
  {
    v68.i16[0] = 12;
    v103[0] = 4;
LABEL_23:
    cnprint::CNPrinter::Print(&v68, v103, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6);
    return 0xFFFFFFFFLL;
  }

  if (!*(a3 + 512))
  {
    v68.i16[0] = 12;
    v103[0] = 4;
    goto LABEL_23;
  }

  if ((*(a3 + 128) & 1) == 0)
  {
    v68.i16[0] = 12;
    v103[0] = 4;
    cnprint::CNPrinter::Print(&v68, v103, "time,%.3lf,h-function failure on line %d: %s() %s", *(a3 + 48) + *(a3 + 40), 5649, "h_GnssPsr_RavenPNT", "invalid time");
    v68.i16[0] = 12;
    v103[0] = 4;
    sub_1D0BCFAB8(a3 + 56);
    cnprint::CNPrinter::Print(&v68, v103, "t,%.3lf,%s,TAI time invalid", v28, v29, v30);
    return 0xFFFFFFFFLL;
  }

  v105 = *(a3 + 40);
  v104 = **(a3 + 520);
  sub_1D0D96A9C(v103, *(a3 + 528));
  v23 = **(a3 + 536);
  v24 = *(a3 + 512);
  v100 = 0x10000001CLL;
  v99 = xmmword_1D0E843A0;
  v98 = &unk_1F4CE0A20;
  v101 = &v102;
  if (sub_1D0D9046C(&v105, &v104, v103, v24, *(a3 + 544), v23, 1, 1, &v98))
  {
    v68.i16[0] = 12;
    LOBYTE(v93) = 4;
    cnprint::CNPrinter::Print(&v68, &v93, "time,%.3lf,h-function failure on line %d: %s() %s", v25, v26, v27);
    return 0xFFFFFFFFLL;
  }

  v99 = xmmword_1D0E843A0;
  v95 = 0x10000001CLL;
  v93 = &unk_1F4CE0A20;
  v94 = xmmword_1D0E843A0;
  v96 = &v97;
  v68 = vdupq_n_s64(0x7FF8000000000000uLL);
  v69[0] = v68;
  v69[1] = v68;
  v69[2] = v68;
  v69[3] = v68;
  v69[4] = v68;
  v69[5] = v68;
  v69[6] = v68;
  v69[7] = v68;
  v69[8] = v68;
  v69[9] = v68;
  v69[10] = v68;
  v69[11] = v68;
  v70 = v68;
  v71 = v68;
  v72 = v68;
  v73 = v68;
  v74 = v68;
  v75 = v68;
  v76 = v68;
  v77 = v68;
  v78 = v68;
  v79 = v68;
  v80 = v68;
  v81 = v68;
  v82 = v68;
  v83 = v68;
  v84 = v68;
  v85 = v68;
  v86 = v68;
  v87 = v68;
  v88 = v68;
  v89 = v68;
  v90 = v68;
  v91 = v68;
  v92 = 0x7FF8000000000000;
  LOBYTE(v52) = 0;
  if (sub_1D0D8825C(&v98, a1, 0, 1, 1, &v93, &v68, &v52, 0.000000015))
  {
    sub_1D0D85A30(a3 + 40, "could not correct states", "h_GnssPsr_RavenPNT", 5677);
    return 0xFFFFFFFFLL;
  }

  v66 = *v96;
  v67 = *(v96 + 2);
  v65 = &unk_1F4CD5F20;
  v63 = 0.0;
  v64 = &unk_1F4CD5BC8;
  v31 = v96[19] * 0.000001;
  v61 = 0u;
  v62 = 0u;
  v59 = *(a3 + 136);
  v32.i64[1] = *(&v59 + 1);
  v60 = 0u;
  v32.i64[0] = *(a3 + 192);
  v52 = 0;
  v53 = 0u;
  v54 = 0u;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v33 = cnnavigation::GNSSPseudorange(&v59, &v52, &v66, a3 + 296, &v65, &v64, &v63, 1, v32, *&v31, &v60);
  if (v33)
  {
    sub_1D0D85A30(a3 + 40, "could not compute expected measurement", "h_GnssPsr_RavenPNT", 5706);
    if (cnprint::CNPrinter::GetLogLevel(v34) <= 1)
    {
      v52 = 12;
      LOBYTE(v59) = 1;
      sub_1D0BCFAB8(a3 + 56);
      cnprint::CNPrinter::Print(&v52, &v59, "t,%.3lf,%s,GNSSPseudorange returned != 0", v35, v36, v37);
    }

    return 0xFFFFFFFFLL;
  }

  if (cnprint::CNPrinter::GetLogLevel(v33))
  {
    v38 = v63;
  }

  else
  {
    v52 = 12;
    LOBYTE(v59) = 0;
    v40 = *(a3 + 88);
    v39 = *(a3 + 96);
    v41 = sub_1D0BCFAB8(a3 + 56);
    v42 = v39 + v40;
    v38 = v63;
    cnprint::CNPrinter::Print(&v52, &v59, "t,%.3lf,%s,using PSR,predicted,%.3lf,diff,%.3lf,clockEstMtrs,%.2lf,std,%.2lf,multipath,%hhu,cno,%.1lf", v42, v41, v63, *(a3 + 208) - v63, v31 * 299792458.0, *(a3 + 256), *(a3 + 277), *(a3 + 200));
  }

  *&v43 = 0x100000001;
  *(&v43 + 1) = 0x100000001;
  *(a4 + 8) = v43;
  sub_1D0D8A93C(&v52);
  sub_1D0B894B0(a5, &v52);
  v44 = *(a3 + 552);
  if (v44)
  {
    v45 = v69;
    **(a4 + 32) = v38 + *v44 + **(a2 + 32);
    v46 = *(v44 + 40);
    v47 = *(a5 + 32);
    *v47 = *v46 * *v68.i64;
    v50 = *(v44 + 28);
    v48 = *(a5 + 20);
    v47[v48] = v46[v50] * *&v68.i64[1];
    v49 = v46[2 * v50];
    LODWORD(v50) = v48;
  }

  else
  {
    **(a4 + 32) = v38 + **(a2 + 32);
    v51 = *(&v61 + 1);
    v47 = *(a5 + 32);
    *v47 = *v68.i64 * *&v61;
    v50 = *(a5 + 20);
    v47[v50] = *&v68.i64[1] * v51;
    v49 = *v69[0].i64;
    v45 = &v62;
  }

  v47[2 * v50] = v49 * *v45->i64;
  v47[18 * v50] = *&v70.i64[1] * *(&v62 + 1) * 0.000001;
  sub_1D0BBBC94(1u, 1u, &v52);
  sub_1D0B894B0(a6, &v52);
  return 0;
}

uint64_t sub_1D0D5E914(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
        sub_1D0D8E75C(v22, a5);
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

void sub_1D0D5ED64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D5ED90(uint64_t a1)
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

  return a1;
}

uint64_t sub_1D0D5EE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  v11 = !v10 && v9 == 26;
  if (!v11 || ((v13 = *(a2 + 8), v14 = *(a2 + 12), v13 <= v14) ? (v15 = *(a2 + 12)) : (v15 = *(a2 + 8)), v13 ? (v16 = v14 == 0) : (v16 = 1), !v16 ? (v17 = v15 == 1) : (v17 = 0), !v17))
  {
    v71.i16[0] = 12;
    v117[0] = 4;
LABEL_23:
    cnprint::CNPrinter::Print(&v71, v117, "time,%.3lf,h-function failure on line %d: %s() %s", a4, a5, a6);
    return 0xFFFFFFFFLL;
  }

  if (!*(a3 + 512))
  {
    v71.i16[0] = 12;
    v117[0] = 4;
    goto LABEL_23;
  }

  if ((*(a3 + 128) & 1) == 0)
  {
    v71.i16[0] = 12;
    v117[0] = 4;
    cnprint::CNPrinter::Print(&v71, v117, "time,%.3lf,h-function failure on line %d: %s() %s", *(a3 + 48) + *(a3 + 40), 5471, "h_GnssDoppler_RavenPNT", "invalid time");
    v71.i16[0] = 12;
    v117[0] = 4;
    sub_1D0BCFAB8(a3 + 56);
    cnprint::CNPrinter::Print(&v71, v117, "t,%.3lf,%s,TAI time invalid", v28, v29, v30);
    return 0xFFFFFFFFLL;
  }

  v119 = *(a3 + 40);
  v118 = **(a3 + 520);
  sub_1D0D96A9C(v117, *(a3 + 528));
  v23 = **(a3 + 536);
  v24 = *(a3 + 512);
  v114 = 0x10000001CLL;
  v113 = xmmword_1D0E843A0;
  v112 = &unk_1F4CE0A20;
  v115 = &v116;
  if (sub_1D0D9046C(&v119, &v118, v117, v24, *(a3 + 544), v23, 1, 1, &v112))
  {
    v71.i16[0] = 12;
    LOBYTE(v107) = 4;
    cnprint::CNPrinter::Print(&v71, &v107, "time,%.3lf,h-function failure on line %d: %s() %s", v25, v26, v27);
    return 0xFFFFFFFFLL;
  }

  v113 = xmmword_1D0E843A0;
  v109 = 0x10000001CLL;
  v107 = &unk_1F4CE0A20;
  v108 = xmmword_1D0E843A0;
  v110 = &v111;
  v71 = vdupq_n_s64(0x7FF8000000000000uLL);
  v72 = v71;
  v73 = v71;
  v74 = v71;
  v75 = v71;
  v76 = v71;
  v77 = v71;
  v78 = v71;
  v79 = v71;
  v80 = v71;
  v81 = v71;
  v82 = v71;
  v83 = v71;
  v84 = v71;
  v85 = v71;
  v86 = v71;
  v87 = v71;
  v88 = v71;
  v89 = v71;
  v90 = v71;
  v91 = v71;
  v92 = v71;
  v93 = v71;
  v94 = v71;
  v95 = v71;
  v96 = v71;
  v97 = v71;
  v98 = v71;
  v99 = v71;
  v100 = v71;
  v101 = v71;
  v102 = v71;
  v103 = v71;
  v104 = v71;
  v105 = v71;
  v106 = 0x7FF8000000000000;
  LOBYTE(v51) = 0;
  if (sub_1D0D8825C(&v112, a1, 0, 1, 1, &v107, &v71, &v51, 0.000000015))
  {
    sub_1D0D85A30(a3 + 40, "could not correct states", "h_GnssDoppler_RavenPNT", 5499);
    return 0xFFFFFFFFLL;
  }

  v69 = *v110;
  v70 = v110[2];
  v67 = *(v110 + 3);
  v68 = v110[5];
  v66 = &unk_1F4CD5F20;
  v64 = 0.0;
  v65 = &unk_1F4CD5BC8;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = *(a3 + 136);
  v32.i64[1] = *(&v58 + 1);
  v59 = 0u;
  v32.i64[0] = *(a3 + 192);
  v33 = *(v110 + 20);
  *v31.i64 = *(v110 + 19) / 1000000.0;
  v51 = 0;
  v52 = 0u;
  v53 = 0u;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v34 = cnnavigation::GNSSDopplerShift(&v58, &v51, &v69, &v67, a3 + 296, &v66, &v65, 1, v32, v31, v33 / 1000000.0, &v64, 1u, &v59);
  if (v34)
  {
    sub_1D0D85A30(a3 + 40, "could not compute expected measurement", "h_GnssDoppler_RavenPNT", 5536);
    if (cnprint::CNPrinter::GetLogLevel(v35) <= 1)
    {
      v51 = 12;
      LOBYTE(v58) = 1;
      sub_1D0BCFAB8(a3 + 56);
      cnprint::CNPrinter::Print(&v51, &v58, "t,%.3lf,%s,GNSSDopplerShift returned != 0", v36, v37, v38);
    }

    return 0xFFFFFFFFLL;
  }

  v39 = -299792458.0 / *(a3 + 192);
  v40 = v64 * v39;
  if (!cnprint::CNPrinter::GetLogLevel(v34))
  {
    v51 = 12;
    LOBYTE(v58) = 0;
    v42 = *(a3 + 88);
    v41 = *(a3 + 96);
    v43 = sub_1D0BCFAB8(a3 + 56);
    cnprint::CNPrinter::Print(&v51, &v58, "t,%.3lf,%s,using Doppler,predicted,%.3lf,diff,%.3lf,clockEstMtrs,%.2lf,clockDriftMps,%.2lf,std,%.2lf,multipath,%hhu,cno,%.1lf", v41 + v42, v43, v40, *(a3 + 208) - v40, *(v110 + 19) * 299.792458, *(v110 + 20) * 299.792458, *(a3 + 256), *(a3 + 277), *(a3 + 200));
  }

  *&v44 = 0x100000001;
  *(&v44 + 1) = 0x100000001;
  *(a4 + 8) = v44;
  **(a4 + 32) = v40 + **(a2 + 32);
  sub_1D0D8A93C(&v51);
  sub_1D0B894B0(a5, &v51);
  v45 = *(&v60 + 1);
  v46 = *(a5 + 32);
  *v46 = v39 * (*v71.i64 * *&v60);
  v47 = *(a5 + 20);
  v46[v47] = v39 * (*&v71.i64[1] * v45);
  v48 = *(&v61 + 1);
  v46[2 * v47] = v39 * (*v72.i64 * *&v61);
  v46[3 * v47] = v39 * (*&v72.i64[1] * v48);
  v49 = *(&v62 + 1);
  v46[4 * v47] = v39 * (*v73.i64 * *&v62);
  v46[5 * v47] = v39 * (*&v73.i64[1] * v49);
  v50 = *(&v63 + 1);
  v46[18 * v47] = v39 * (*&v84.i64[1] * *&v63) / 1000000.0;
  v46[19 * v47] = v39 * (*v85.i64 * v50) / 1000000.0;
  sub_1D0BBBC94(1u, 1u, &v51);
  sub_1D0B894B0(a6, &v51);
  return 0;
}

uint64_t sub_1D0D5F500(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
        sub_1D0D8ED88(v22, a5);
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

void sub_1D0D5F950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D5F97C(uint64_t a1)
{
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

  return a1;
}

uint64_t sub_1D0D5FA28(cnprint::CNPrinter *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int8x16_t a7, int8x16_t a8)
{
  v13 = a1;
  if ((atomic_load_explicit(&qword_1EE053B50, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE053B50);
    if (a1)
    {
      v90 = 0x1300000001;
      v88 = &unk_1F4CE2330;
      v91 = &v92;
      v89 = xmmword_1D0E844E0;
      v75 = xmmword_1D0E84440;
      v76 = xmmword_1D0E7DD30;
      v77 = &v93;
      v78 = 13;
      v79 = vdupq_n_s64(0x13uLL);
      v80 = vdupq_n_s64(4uLL);
      do
      {
        if (vuzp1_s16(vmovn_s64(vcgtq_u64(v79, v76)), *v75.i8).u8[0])
        {
          *(v77 - 3) = v78 - 13;
        }

        if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v76)), *&v75).i8[2])
        {
          *(v77 - 2) = v78 - 12;
        }

        if (vuzp1_s16(*&v75, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v75))).i32[1])
        {
          *(v77 - 1) = v78 - 11;
          *v77 = v78 - 10;
        }

        v75 = vaddq_s64(v75, v80);
        v76 = vaddq_s64(v76, v80);
        v78 += 4;
        v77 += 4;
      }

      while (v78 != 33);
      sub_1D0D77214(&unk_1EE054400, &v88);
      __cxa_atexit(sub_1D0D7B720, &unk_1EE054400, &dword_1D0B71000);
      __cxa_guard_release(&qword_1EE053B50);
    }
  }

  v14 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v14 <= v15)
  {
    v16 = *(v13 + 3);
  }

  else
  {
    v16 = *(v13 + 2);
  }

  if (v14)
  {
    v17 = v15 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = !v17 && v16 == 26;
  if (!v18 || ((v21 = *(a2 + 8), v20 = *(a2 + 12), v21 <= v20) ? (v22 = *(a2 + 12)) : (v22 = *(a2 + 8)), !v21 || !v20 || v22 != 1))
  {
    LOWORD(v88) = 12;
    LOBYTE(v84) = 4;
LABEL_13:
    cnprint::CNPrinter::Print(&v88, &v84, "time,%.3lf,h-function failure on line %d: %s() %s");
    return 0xFFFFFFFFLL;
  }

  if (!*(a3 + 552))
  {
    LOWORD(v88) = 12;
    LOBYTE(v84) = 4;
    goto LABEL_13;
  }

  if (!*(a3 + 512))
  {
    LOWORD(v88) = 12;
    LOBYTE(v84) = 4;
    goto LABEL_13;
  }

  if (!*(a3 + 560))
  {
    LOWORD(v88) = 12;
    LOBYTE(v84) = 4;
    goto LABEL_13;
  }

  v23 = *(a3 + 288) - *(a3 + 280);
  v24 = (COERCE__INT64(fabs(v23)) - 0x10000000000000) >> 53;
  if ((*&v23 <= -1 || v24 >= 0x3FF) && (*&v23 - 1) >= 0xFFFFFFFFFFFFFLL)
  {
    LOWORD(v88) = 12;
    LOBYTE(v84) = 4;
    goto LABEL_13;
  }

  v105[0] = v13;
  v105[1] = a3;
  if ((atomic_load_explicit(&qword_1EE053B58, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE053B58);
    if (a1)
    {
      qword_1EE053C28 = 0;
      dbl_1EE053C30 = 0.05;
      __cxa_guard_release(&qword_1EE053B58);
    }
  }

  v104 = *(a3 + 552);
  a8.i64[0] = 3.0;
  v27 = (dbl_1EE053C30 + qword_1EE053C28) * 3.0;
  if (v23 <= v27 && cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    LOWORD(v88) = 12;
    LOBYTE(v84) = 1;
    v28 = *(a3 + 96) + *(a3 + 88);
    v29 = sub_1D0BCFAB8(a3 + 56);
    cnprint::CNPrinter::Print(&v88, &v84, "t,%.3lf,%s, do not use carrier phase compuatation cache, vendor_meas_interval_sec, %.3lf", v28, v29, v23);
  }

  a7.i64[0] = *(a3 + 280);
  v85 = 0;
  v84 = 0;
  *v30.i64 = CNTimeSpan::SetTimeSpan(&v84, 0, a7, a8);
  v88 = CNTimeSpan::operator+((a3 + 88), &v84, v30, v31);
  *&v89 = v32;
  v35 = sub_1D0D8F1BC(&v104, &v88, v23 > v27, v33, v34);
  v103 = 0.0;
  v101 = 0u;
  v102 = 0u;
  v99 = *(v35 + 2);
  v100 = 0u;
  if (sub_1D0D8F594(v105, &v99, &v103, &v100, (v35 + 6), *&v99, 0))
  {
    v38 = "could not compute expected Doppler at start";
    v39 = a3 + 40;
    v40 = 5316;
LABEL_43:
    sub_1D0D85A30(v39, v38, "h_GnssAverageDoppler_RavenPNT", v40);
    return 0xFFFFFFFFLL;
  }

  v36.i64[0] = *(a3 + 288);
  v85 = 0;
  v84 = 0;
  *v41.i64 = CNTimeSpan::SetTimeSpan(&v84, 0, v36, v37);
  v88 = CNTimeSpan::operator+((a3 + 88), &v84, v41, v42);
  *&v89 = v43;
  v46 = sub_1D0D8F1BC(&v104, &v88, v23 > v27, v44, v45);
  v98 = 0.0;
  v96 = 0u;
  v97 = 0u;
  v95 = 0u;
  v94 = *(v46 + 2);
  if (sub_1D0D8F594(v105, &v94, &v98, &v95, (v46 + 6), *&v94, v47))
  {
    v38 = "could not compute expected Doppler at end";
    v39 = a3 + 40;
    v40 = 5326;
    goto LABEL_43;
  }

  v50 = CNTimeSpan::operator-(&v94, &v99, v48, v49);
  v52 = v51 + v50;
  if (v52 <= 0.0)
  {
    LOWORD(v88) = 12;
    LOBYTE(v84) = 4;
    sub_1D0BCFAB8(a3 + 56);
    cnprint::CNPrinter::Print(&v88, &v84, "t,%.3lf,%s,Invalid true averaging interval in raven time,%.3lf, vendor_meas_interval_sec, %.3lf");
    return 0xFFFFFFFFLL;
  }

  v53 = 1.0 / v52 * (299792458.0 / *(a3 + 192));
  v54 = v53 * (v98 - v103);
  if (!cnprint::CNPrinter::GetLogLevel(v50))
  {
    LOWORD(v88) = 12;
    LOBYTE(v84) = 0;
    v55 = *(a3 + 96) + *(a3 + 88);
    v56 = sub_1D0BCFAB8(a3 + 56);
    cnprint::CNPrinter::Print(&v88, &v84, "t,%.3lf,%s,using avg Doppler,predicted,%.3lf,diff,%.3lf,clockEstMtrs,%.2lf,std,%.2lf,multipath,%hhu,cno,%.1lf", v55, v56, v54, *(a3 + 208) - v54, *(v35[12] + 152) * 299.792458, *(a3 + 256), *(a3 + 277), *(a3 + 200));
  }

  *&v57 = 0x100000001;
  *(&v57 + 1) = 0x100000001;
  *(a4 + 8) = v57;
  **(a4 + 32) = v54 + **(a2 + 32);
  sub_1D0D8A93C(&v88);
  sub_1D0D8A93C(&v84);
  v58 = *(&v96 + 1);
  v59 = v91;
  *v91 = v53 * (*&v96 * *(v46 + 41));
  v60 = *(&v101 + 1);
  v61 = v87;
  *v87 = v53 * (*&v101 * *(v35 + 41));
  v62 = SHIDWORD(v89);
  v59[SHIDWORD(v89)] = v53 * (v58 * *(v46 + 42));
  v63 = v86;
  v61[v86] = v53 * (v60 * *(v35 + 42));
  v64 = *(&v97 + 1);
  v59[2 * v62] = v53 * (*&v97 * *(v46 + 43));
  v65 = *(&v102 + 1);
  v61[2 * v63] = v53 * (*&v102 * *(v35 + 43));
  v59[18 * v62] = v53 * (v64 * *(v46 + 68)) * 0.000001;
  v61[18 * v63] = v53 * (v65 * *(v35 + 68)) * 0.000001;
  sub_1D0D8A93C(v83);
  v66 = sub_1D0B894B0(a5, v83);
  v68 = CNTimeSpan::operator-(&v94, (a3 + 88), v66, v67);
  v83[0] = v68;
  *&v83[1] = v69;
  if (v68 < 0 || (*v70.i64 = v69, v69 < 0.0))
  {
    v68 = CNTimeSpan::operator-(v83, v70, v71);
    v70.i64[0] = v72;
  }

  if (*v70.i64 + v68 >= 0.001)
  {
    sub_1D0D90394(v82, &v88, (v46 + 114));
    sub_1D0D90394(v81, &v84, (v35 + 114));
    v73 = v82;
    v74 = v81;
  }

  else
  {
    sub_1D0D90394(v82, &v84, (v35 + 114));
    v73 = &v88;
    v74 = v82;
  }

  sub_1D0D90344(v83, v73, v74);
  sub_1D0B894B0(a5, v83);
  *(*(a5 + 32) + 152 * *(a5 + 20)) = *(*(a5 + 32) + 152 * *(a5 + 20)) + v54 * 0.000001 * *(v46 + 69);
  sub_1D0BBBC94(1u, 1u, v83);
  sub_1D0B894B0(a6, v83);
  return 0;
}

uint64_t sub_1D0D602D4(uint64_t a1)
{
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

  return a1;
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::HorizontalDOTInIMUFrameEvent *a2)
{
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 58) != 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = (a2 + 280);
  v6 = *(a2 + 7);
  v7 = v6 + 1;
  v8 = 8 * v6;
  v9 = *(a2 + 5);
  while (2)
  {
    if ((*(*(a2 + 31) + 8 * v4) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      LOWORD(v27) = 12;
      LOBYTE(v40) = 4;
      (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v27, &v40, "t,%.3lf, Invalid horizontal DOT at %d element = %.3lf");
      return 0xFFFFFFFFLL;
    }

    if (*(*(a2 + 5) + 8 * v7 * v4) <= 0.0)
    {
      LOWORD(v27) = 12;
      LOBYTE(v40) = 4;
      (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v27, &v40, "t,%.3lf, Invalid horizontal DOT covariance %d diagonal value = %.3lf");
      return 0xFFFFFFFFLL;
    }

    v10 = 0;
    v11 = v9;
    do
    {
      if ((*v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        LOWORD(v27) = 12;
        LOBYTE(v40) = 4;
        (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&v27, &v40, "t,%.3lf, Invalid horizontal DOT uncertainty at location (%d, %d) = %.3lf");
        return 0xFFFFFFFFLL;
      }

      ++v10;
      v11 = (v11 + v8);
    }

    while (v10 != 3);
    ++v4;
    ++v9;
    if (v4 != 3)
    {
      continue;
    }

    break;
  }

  v47 = 0x100000003;
  v45 = &unk_1F4CDEB28;
  *&v13.f64[1] = 0x300000003;
  v46 = xmmword_1D0E7DCC0;
  v48 = v49;
  memset(v49, 0, sizeof(v49));
  v42 = 0x300000003;
  v41 = xmmword_1D0E76C10;
  v40 = &unk_1F4CD5DD0;
  v43 = &v44;
  v12 = *(this + 1859);
  v13.f64[0] = *(v12 + 192);
  if (v13.f64[0] < 0.75)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      LOWORD(v39) = 12;
      LOBYTE(v24[0]) = 1;
      v27 = (*(*a2 + 16))(a2);
      __p[0] = v14;
      cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v27, "horizontal dot measurement ignored at low user speed of %.1lf", *(v12 + 192));
      if (*(this + 2735) >= 0)
      {
        v15 = this + 2712;
      }

      else
      {
        v15 = *(this + 339);
      }

      cnprint::CNPrinter::Print(&v39, v24, "%s", v15);
    }

    return 0;
  }

  v13.f64[0] = v13.f64[0] * v13.f64[0];
  v29 = 0x300000003;
  v27 = &unk_1F4CD5DD0;
  *__p = xmmword_1D0E76C10;
  v30 = &v31;
  sub_1D0B8930C(a2 + 8, &v27, v13);
  v18 = sub_1D0B894B0(&v40, &v27);
  *&v39 = (*(*a2 + 16))(a2, v18);
  *(&v39 + 1) = v19;
  sub_1D0D915A0(&v27);
  v31 = v39;
  sub_1D0B894B0(&v37, a2 + 216);
  if (v38 != v5)
  {
    v20 = v5[1];
    v38[0] = *v5;
    v38[1] = v20;
  }

  v32 = this + 2920;
  v33 = this + 14824;
  v34 = this + 14840;
  v35 = this + 2760;
  v36 = this + 2800;
  if (sub_1D0D61530(this + 61736, &v39, &v45, &v40, &v27))
  {
    v26 = 12;
    v25 = 4;
    v24[0] = (*(*a2 + 16))(a2);
    v24[1] = v21;
    v22 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v24, "Could not add measurement - horizontal DOT");
    if (*(this + 2735) >= 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v26, &v25, "%s", v23);
    v16 = 0xFFFFFFFFLL;
  }

  else
  {
    v16 = 0;
  }

  v37 = &unk_1F4CD5E28;
  v27 = &unk_1F4CE4300;
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[1]);
  }

  return v16;
}

void sub_1D0D608B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1D0D84220(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D608C8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v7 = v3;
  v133 = *(v3 + 40);
  v8 = *(v1 + 8);
  v9 = *(v1 + 12);
  if (v8 <= v9)
  {
    v10 = *(v1 + 12);
  }

  else
  {
    v10 = *(v1 + 8);
  }

  if (v8)
  {
    _ZF = v9 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v12 = !_ZF && v10 == 26;
  if (!v12 || ((v14 = v2, v16 = *(v2 + 8), v15 = *(v2 + 12), v16 <= v15) ? (v17 = *(v2 + 12)) : (v17 = *(v2 + 8)), !v16 || !v15 || v17 != 3))
  {
    LOWORD(v134) = 12;
    v86[0] = 4;
    cnprint::CNPrinter::Print(&v134, v86, "time,%.3lf,h-function failure on line %d: %s() %s", *(v3 + 48) + *(v3 + 40), 5843, "h_HorizontalVelocityInIMUFrame_RavenPNT", "inadequate matrices");
    if (cnprint::CNPrinter::GetLogLevel(v13) <= 1)
    {
      LOWORD(v134) = 12;
      v86[0] = 1;
      cnprint::CNPrinter::Print(&v134, v86, "t,%.3lf, Warning: h_HorizontalVelocityInIMUFrame_RavenPNT called with inadequate matrices");
    }

    return 0xFFFFFFFFLL;
  }

  if (!*(v3 + 56))
  {
    LOWORD(v134) = 12;
    v86[0] = 4;
LABEL_29:
    cnprint::CNPrinter::Print(&v134, v86, "time,%.3lf,h-function failure on line %d: %s() %s");
    return 0xFFFFFFFFLL;
  }

  v18 = v6;
  v19 = v5;
  v20 = v4;
  v21 = v1;
  v22 = *(v3 + 72);
  v132 = **(v3 + 64);
  sub_1D0D96A9C(v131, v22);
  for (i = 0; i != 24; i += 8)
  {
    if ((*(*(v7 + 128) + i) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      LOWORD(v134) = 12;
      v86[0] = 4;
      goto LABEL_29;
    }
  }

  *&v86[24] = 0x100000003;
  *&v86[8] = xmmword_1D0E7DCC0;
  *v86 = &unk_1F4CDEB28;
  *&v87 = &v87 + 8;
  v136 = 0x100000134;
  v135 = xmmword_1D0E7DD20;
  v134 = &unk_1F4CDEC90;
  v137 = &v138;
  v128 = 0x100000003;
  v127 = xmmword_1D0E7DCC0;
  v126 = &unk_1F4CDEB28;
  v129 = v130;
  sub_1D0BFB1AC(v7 + 96, v86, &v134, &v126, "2");
  if (fabs(v24) <= 0.000000015)
  {
    LOWORD(v134) = 12;
    v86[0] = 4;
    goto LABEL_29;
  }

  v25 = 1.0 / v24;
  v26 = *(v7 + 128);
  *v26 = vmulq_n_f64(*v26, v25);
  v26[1].f64[0] = v25 * v26[1].f64[0];
  if (**(v7 + 80))
  {
    LOWORD(v134) = 12;
    v86[0] = 4;
    goto LABEL_29;
  }

  v28 = *(v7 + 56);
  v128 = 0x10000001CLL;
  v127 = xmmword_1D0E843A0;
  v126 = &unk_1F4CE0A20;
  v129 = v130;
  if (sub_1D0D9046C(&v133, &v132, v131, v28, *(v7 + 88), 0, 0, 1, &v126))
  {
    sub_1D0D85A30(v7 + 40, "could not integrate full states", "h_HorizontalVelocityInIMUFrame_RavenPNT", 5912);
    return 0xFFFFFFFFLL;
  }

  v123 = 0x10000001CLL;
  v121 = &unk_1F4CE0A20;
  v122 = xmmword_1D0E843A0;
  v124 = &v125;
  *v86 = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v86[16] = *v86;
  v87 = *v86;
  v88 = *v86;
  v89 = *v86;
  v90 = *v86;
  v91 = *v86;
  v92 = *v86;
  v93 = *v86;
  v94 = *v86;
  v95 = *v86;
  v96 = *v86;
  v97 = *v86;
  v98 = *v86;
  v99 = *v86;
  v100 = *v86;
  v101 = *v86;
  v102 = *v86;
  v103 = *v86;
  v104 = *v86;
  v105 = *v86;
  v106 = *v86;
  v107 = *v86;
  v108 = *v86;
  v109 = *v86;
  v110 = *v86;
  v111 = *v86;
  v112 = *v86;
  v113 = *v86;
  v114 = *v86;
  v115 = *v86;
  v116 = *v86;
  v117 = *v86;
  v118 = *v86;
  v119 = *v86;
  v120 = 0x7FF8000000000000;
  v85 = 0;
  if (sub_1D0D8825C(&v126, v21, 0, 0, 1, &v121, v86, &v85, 0.0))
  {
    sub_1D0D85A30(v7 + 40, "could not correct states", "h_HorizontalVelocityInIMUFrame_RavenPNT", 5926);
    if (cnprint::CNPrinter::GetLogLevel(v29) <= 1)
    {
      LOWORD(v134) = 12;
      v81[0] = 1;
      cnprint::CNPrinter::Print(&v134, v81, "t,%.3lf, Error: h_HorizontalVelocityInIMUFrame_RavenPNT GetEarthFixedFullStateEstimate failed");
    }

    return 0xFFFFFFFFLL;
  }

  v30 = v124;
  _Q1 = v124[4];
  _D3 = _Q1.f64[1];
  __asm { FMLA            D2, D3, V1.D[1] }

  v37 = sqrt(_D2);
  if (fabs(v37) >= 2.22044605e-16)
  {
    v40 = vdupq_lane_s64(*&v37, 0);
    v38 = vdivq_f64(_Q1, v40);
    v39 = vdivq_f64(v124[3], v40);
  }

  else
  {
    v38 = xmmword_1D0E7DCB0;
    v39 = 0uLL;
  }

  v84[0] = v39;
  v84[1] = v38;
  v136 = 0x300000001;
  v134 = &unk_1F4CDF0C8;
  v137 = &v138;
  v135 = xmmword_1D0E7F310;
  v138 = 0x1A00000019;
  v139 = 27;
  sub_1D0D2CF48(&v134, v83);
  sub_1D0BD2CA4(v81, v124[10].f64[1], v124[11].f64[0], v124[11].f64[1]);
  if (v81[8] != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v78 = 0x300000003;
  v76 = &unk_1F4CD5DD0;
  v77 = xmmword_1D0E76C10;
  v79 = &v80;
  sub_1D0B894B0(&v76, &v82);
  sub_1D0D7B8EC(3u, 3u, v73);
  *(v75 + 16 * v74 + 16) = 0;
  sub_1D0D4C398(&v76, v71);
  sub_1D0C1B688(v71, v73, &v134);
  sub_1D0C1B688(&v134, &v76, v72);
  v41.f64[0] = v30[12].f64[0];
  sub_1D0C51778(v72, v71, v41);
  sub_1D0BFA8EC(&v134, &v121, v83);
  sub_1D0D91424(v70, v71, &v134);
  sub_1D0BFA800(v70);
  v43 = v42;
  cnrotation::Inv(&v134, (v7 + 160));
  cnrotation::Cat(v84[0].f64, &v134, v69);
  sub_1D0B88A54(v69, v7 + 96, v71);
  *(v20 + 8) = xmmword_1D0E7DCC0;
  sub_1D0B88A54(v84, v70, v67);
  v44.f64[0] = v43;
  sub_1D0C51778(v71, v66, v44);
  sub_1D0D86DAC(v67, v66, v68);
  sub_1D0D914B0(&v134, v68, v14);
  sub_1D0B894B0(v20, &v134);
  sub_1D0D8601C(&v134, 26);
  sub_1D0B894B0(v19, &v134);
  cnrotation::CNRotation::dRdq1(v84, v68);
  cnrotation::CNRotation::dRdq2(v84, v67);
  cnrotation::CNRotation::dRdq3(v84, v66);
  cnrotation::CNRotation::dRdq4(v84, v65);
  *&v45.f64[0] = v88;
  sub_1D0D7B844(v62, v68, v45);
  v46.f64[0] = *(&v89 + 1);
  sub_1D0D7B844(v61, v67, v46);
  sub_1D0D4C358(v62, v61, v63);
  *&v47.f64[0] = v91;
  sub_1D0D7B844(v60, v66, v47);
  sub_1D0D4C358(v63, v60, &v134);
  v48.f64[0] = *(&v92 + 1);
  sub_1D0D7B844(v59, v65, v48);
  sub_1D0D4C358(&v134, v59, v64);
  v49.f64[0] = *(&v88 + 1);
  sub_1D0D7B844(v61, v68, v49);
  *&v50.f64[0] = v90;
  sub_1D0D7B844(v60, v67, v50);
  sub_1D0D4C358(v61, v60, v62);
  v51.f64[0] = *(&v91 + 1);
  sub_1D0D7B844(v59, v66, v51);
  sub_1D0D4C358(v62, v59, &v134);
  *&v52.f64[0] = v93;
  sub_1D0D7B844(v58, v65, v52);
  sub_1D0D4C358(&v134, v58, v63);
  *&v53.f64[0] = v89;
  sub_1D0D7B844(v60, v68, v53);
  v54.f64[0] = *(&v90 + 1);
  sub_1D0D7B844(v59, v67, v54);
  sub_1D0D4C358(v60, v59, v61);
  *&v55.f64[0] = v92;
  sub_1D0D7B844(v58, v66, v55);
  sub_1D0D4C358(v61, v58, &v134);
  v56.f64[0] = *(&v93 + 1);
  sub_1D0D7B844(v57, v65, v56);
  sub_1D0D4C358(&v134, v57, v62);
  if ((atomic_load_explicit(&qword_1EE053B80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053B80))
  {
    v136 = 0x300000001;
    v134 = &unk_1F4CDF0C8;
    v137 = &v138;
    v135 = xmmword_1D0E7F310;
    v138 = 0x100000000;
    v139 = 2;
    sub_1D0D2CF48(&v134, &unk_1EE053EF8);
    __cxa_atexit(sub_1D0D26840, &unk_1EE053EF8, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053B80);
  }

  sub_1D0D5625C(v64, v70, v61);
  sub_1D0D91538(&v134, v19, 6);
  sub_1D0D2D13C(&v134, v61);
  sub_1D0D5625C(v63, v70, v61);
  sub_1D0D91538(&v134, v19, 7);
  sub_1D0D2D13C(&v134, v61);
  sub_1D0D5625C(v62, v70, v61);
  sub_1D0D91538(&v134, v19, 8);
  sub_1D0D2D13C(&v134, v61);
  if ((atomic_load_explicit(&qword_1EE053B88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053B88))
  {
    v136 = 0x300000001;
    v134 = &unk_1F4CDF0C8;
    v137 = &v138;
    v135 = xmmword_1D0E7F310;
    v138 = 0x1800000017;
    v139 = 25;
    sub_1D0D2CF48(&v134, &unk_1EE053F30);
    __cxa_atexit(sub_1D0D26840, &unk_1EE053F30, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053B88);
  }

  cnrotation::CNRotation::RotationMatrix(v60, v84);
  sub_1D0C1B688(v60, v72, v61);
  sub_1D0BADC74(&v134, v19, &unk_1EE053EF8, &unk_1EE053F30);
  sub_1D0D2CFF0(&v134, v61);
  sub_1D0D7B8EC(3u, 3u, &v134);
  sub_1D0B894B0(v18, &v134);
  return 0;
}

uint64_t sub_1D0D61530(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
        sub_1D0D91630(v22, a5);
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

void sub_1D0D61980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D619AC(uint64_t a1)
{
  *(a1 + 96) = &unk_1F4CD5E28;
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void raven::RavenPNTEstimator::InflateAttitudeUncertainty(const char **this, double a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_1EE053A98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053A98))
  {
    v12 = 0x300000001;
    *v11 = &unk_1F4CDF0C8;
    v13 = &v14;
    *&v11[8] = xmmword_1D0E7F310;
    v14 = 0x700000006;
    v15 = 8;
    sub_1D0D2CF48(v11, &unk_1EE053D00);
    __cxa_atexit(sub_1D0D26840, &unk_1EE053D00, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053A98);
  }

  sub_1D0D95F6C(v11, &unk_1EE053D00);
  sub_1D0B751F4(__p, "InflateAttitudeUncertainty");
  raven::RavenPNTEstimator::InflateUncertainties(this, v11, __p, a3, a2);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  LOWORD(__p[0]) = 12;
  v8 = 2;
  *v11 = *(this + 5);
  v6 = cnprint::CNLogFormatter::FormatGeneral((this + 339), v11, "Inflating estimator variance of attitude error states,factor,%.2lf", a2);
  if (*(this + 2735) >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = this[339];
  }

  cnprint::CNPrinter::Print(__p, &v8, "%s", v7);
}

uint64_t raven::RavenPNTEstimator::UpdateFullStateEstimate(raven::RavenPNTEstimator *this)
{
  MEMORY[0x1EEE9AC00](this);
  if (*(v1 + 58) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = v1;
  sub_1D0D98D1C(v37, v1 + 14840);
  if ((atomic_load_explicit(&qword_1EE053B18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053B18))
  {
    v41 = 0x1C00000001;
    v39 = &unk_1F4CE1208;
    v42 = &v43;
    v40 = xmmword_1D0E844E0;
    v24 = xmmword_1D0E84440;
    v25 = xmmword_1D0E7DD30;
    v26 = &v44;
    v27 = 13;
    v28 = vdupq_n_s64(0x13uLL);
    v29 = vdupq_n_s64(4uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v28, v25)), *v24.i8).u8[0])
      {
        *(v26 - 3) = v27 - 13;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v25)), *&v24).i8[2])
      {
        *(v26 - 2) = v27 - 12;
      }

      if (vuzp1_s16(*&v24, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v24))).i32[1])
      {
        *(v26 - 1) = v27 - 11;
        *v26 = v27 - 10;
      }

      v24 = vaddq_s64(v24, v29);
      v25 = vaddq_s64(v25, v29);
      v27 += 4;
      v26 += 4;
    }

    while (v27 != 33);
    sub_1D0D5D8C8(&unk_1EC5FB7A8, &v39);
    __cxa_atexit(sub_1D0D5DA20, &unk_1EC5FB7A8, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053B18);
  }

  if (*(v2 + 58) && (sub_1D0D755EC(v2 + 15256) & 1) != 0)
  {
    v34 = 0x10000001ALL;
    v32 = &unk_1F4CE3E48;
    v33 = xmmword_1D0E843B0;
    v35 = &v36;
    v3 = 552;
    if (!*(v2 + 16364))
    {
      v3 = 8;
    }

    sub_1D0B894B0(&v32, v2 + 15256 + v3);
    sub_1D0D55F8C();
  }

  sub_1D0D98D1C(&v30, v37);
  v4 = v38;
  _Q1 = v38[4];
  _D3 = _Q1.f64[1];
  __asm { FMLA            D2, D3, V1.D[1] }

  v12 = sqrt(_D2);
  if (fabs(v12) >= 2.22044605e-16)
  {
    v15 = vdupq_lane_s64(*&v12, 0);
    v14 = vdivq_f64(v38[3], v15);
    v13 = vdivq_f64(_Q1, v15);
  }

  else
  {
    v13 = xmmword_1D0E7DCB0;
    v14 = 0uLL;
  }

  v16 = v31;
  v31[3] = v14;
  v16[4] = v13;
  v17 = *(v4 + 200);
  v18 = v4[13].f64[1];
  v19 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v17, v17).f64[1]) + v17.f64[0] * v17.f64[0] + v18 * v18);
  if (fabs(v19) <= 0.000000015)
  {
    return 0xFFFFFFFFLL;
  }

  v16[12].f64[0] = v19 * v4[12].f64[0];
  *(v16 + 200) = vdivq_f64(v17, vdupq_lane_s64(*&v19, 0));
  v16[13].f64[1] = v18 / v19;
  sub_1D0D8C698(&v39, &v30, &unk_1EC5FB7A8);
  if (sub_1D0D752EC(v2 + 2920, (v2 + 14824), &v39, v20, v21))
  {
    return 0xFFFFFFFFLL;
  }

  sub_1D0B894B0(v2 + 14840, &v30);
  return 0;
}

void sub_1D0D64518(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_1EE053B28);
  sub_1D0D89DFC(&STACK[0xF10]);
  sub_1D0D857FC(&STACK[0x1140]);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0D64788(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v3 && (v4 = v2, v5 = v1, (v6 = __dynamic_cast(v3, &unk_1F4CE42A0, &unk_1F4CE19C0, 0)) != 0))
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
        v65[0] = *(v6 + 40);
        v15.i64[1] = *(&v65[0] + 1);
        v15.i64[0] = *(v6 + 12);
        *&v45 = 0;
        v44 = 0;
        *v16.i64 = CNTimeSpan::SetTimeSpan(&v44, 0, v15, v7);
        *&v64 = CNTimeSpan::operator-(v65, &v44, v16, v17);
        *(&v64 + 1) = v18;
        v19 = *(v8 + 9);
        v63 = **(v8 + 8);
        sub_1D0D96A9C(v62, v19);
        v20 = *(v8 + 7);
        if ((atomic_load_explicit(&qword_1EE053B90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053B90))
        {
          v23 = 0;
          v46 = 0x1A00000001;
          v44 = &unk_1F4CE1FD0;
          v47 = &v48;
          v45 = xmmword_1D0E844D0;
          v24 = xmmword_1D0E7DD30;
          v25 = vdupq_n_s64(2uLL);
          v26 = vdupq_n_s64(0x12uLL);
          do
          {
            v27 = &v44 + 4 * v23;
            if (vmovn_s64(vcgtq_u64(v26, v24)).u8[0])
            {
              *(v27 + 10) = v23;
            }

            if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x12uLL), *&v24)).i32[1])
            {
              *(v27 + 11) = v23 + 1;
            }

            v23 += 2;
            v24 = vaddq_s64(v24, v25);
          }

          while (v23 != 18);
          sub_1D0D741B0(&unk_1EE054940, &v44);
          __cxa_atexit(sub_1D0D73024, &unk_1EE054940, &dword_1D0B71000);
          __cxa_guard_release(&qword_1EE053B90);
        }

        if ((atomic_load_explicit(&qword_1EE053B98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053B98))
        {
          v46 = 0x1A00000001;
          v44 = &unk_1F4CE1FD0;
          v47 = &v48;
          v45 = xmmword_1D0E7F310;
          v48 = 0x700000006;
          v49 = 8;
          sub_1D0D741B0(&unk_1EE0549D0, &v44);
          __cxa_atexit(sub_1D0D73024, &unk_1EE0549D0, &dword_1D0B71000);
          __cxa_guard_release(&qword_1EE053B98);
        }

        v59 = 0x10000001CLL;
        v58 = xmmword_1D0E844F0;
        v57 = &unk_1F4CE0A20;
        v60 = &v61;
        if (!sub_1D0D85A88(v65, &v63, v62[4], v20, *(v8 + 11), &v57))
        {
          v54 = 0x100000013;
          v53 = xmmword_1D0E844F0;
          v52 = &unk_1F4CE40B8;
          v55 = &v56;
          v50[0] = vdupq_n_s64(0x7FF8000000000000uLL);
          v50[1] = v50[0];
          v50[2] = v50[0];
          v50[3] = v50[0];
          v50[4] = v50[0];
          v50[5] = v50[0];
          v50[6] = v50[0];
          v50[7] = v50[0];
          v50[8] = v50[0];
          v50[9] = v50[0];
          v50[10] = v50[0];
          v50[11] = v50[0];
          v50[12] = v50[0];
          v50[13] = v50[0];
          v50[14] = v50[0];
          v50[15] = v50[0];
          v50[16] = v50[0];
          v50[17] = v50[0];
          v50[18] = v50[0];
          v50[19] = v50[0];
          v50[20] = v50[0];
          v50[21] = v50[0];
          v50[22] = v50[0];
          v50[23] = v50[0];
          v50[24] = v50[0];
          v50[25] = v50[0];
          v50[26] = v50[0];
          v50[27] = v50[0];
          v50[28] = v50[0];
          v50[29] = v50[0];
          v50[30] = v50[0];
          v50[31] = v50[0];
          v50[32] = v50[0];
          v50[33] = v50[0];
          v50[34] = v50[0];
          v51 = 0x7FF8000000000000;
          sub_1D0D85CD4(&v57, v5, &v52, v50);
          sub_1D0D91854(&v44, v20);
          v39 = &v44;
          v40 = v65;
          v22 = *(v8 + 11);
          v41 = &v57;
          v42 = v22;
          v43 = v64;
          v35 = 0x100000017;
          v33[26] = &unk_1F4CE0780;
          v36 = v37;
          v34 = xmmword_1D0E845F0;
          memset(v37, 0, sizeof(v37));
          v38 = 0;
          v31 = 0x10000001ALL;
          v29[6] = &unk_1F4CE3E48;
          v30 = xmmword_1D0E843B0;
          v32 = v33;
          sub_1D0D87FCC(v29);
        }

        LOWORD(v44) = 12;
        v28[0] = 4;
        cnprint::CNPrinter::Print(&v44, v28, "time,%.3lf,h-function failure on line %d: %s() %s", *(v8 + 6) + *(v8 + 5), 4573, "h_DeviceZeroAngularRate_RavenPNT", "could not integrate kinematic states");
      }

      else
      {
        LOWORD(v44) = 12;
        v28[0] = 4;
        cnprint::CNPrinter::Print(&v44, v28, "time,%.3lf,h-function failure on line %d: %s() %s", *(v6 + 6) + *(v6 + 5), 4514, "h_DeviceZeroAngularRate_RavenPNT", "invalid numerical integrator");
      }
    }

    else
    {
      LOWORD(v44) = 12;
      v28[0] = 4;
      cnprint::CNPrinter::Print(&v44, v28, "time,%.3lf,h-function failure on line %d: %s() %s", *(v6 + 6) + *(v6 + 5), 4507, "h_DeviceZeroAngularRate_RavenPNT", "inadequate matrices");
    }
  }

  else
  {
    LOWORD(v44) = 12;
    v28[0] = 4;
    cnprint::CNPrinter::Print(&v44, v28, "time,%.3lf,h-function failure on line %d: %s() %s", MEMORY[0x30] + MEMORY[0x28], 4493, "h_DeviceZeroAngularRate_RavenPNT", "dynamic_cast failed");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0D654BC(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
        sub_1D0D91AE8(v22, a5);
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

void sub_1D0D6590C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D65938(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::MapVectorEvent *a2)
{
  v102 = *MEMORY[0x1E69E9840];
  if (*(this + 57) != 1 || *(this + 58) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  *&v95 = (*(*a2 + 16))(a2);
  *(&v95 + 1) = v4;
  IsUserStationary = raven::RavenPNTEstimator::IsUserStationary(this);
  v92 = 0x10000001ALL;
  v90 = &unk_1F4CE3E48;
  v93 = v94;
  v91 = xmmword_1D0E843B0;
  memset(v94, 0, sizeof(v94));
  v87 = 0x100000007;
  v86 = xmmword_1D0E84420;
  v85 = &unk_1F4CE0BB0;
  v88 = v89;
  v51 = vdupq_n_s64(0x7FF8000000000000uLL);
  *__p = v51;
  *v53 = v51;
  *&v53[16] = v51;
  v54 = v51;
  v55 = v51;
  v56 = v51;
  v57 = v51;
  v58 = v51;
  v59 = v51;
  v60 = v51;
  v61 = v51;
  v62 = v51;
  v63 = v51;
  v64 = v51;
  *v65 = v51;
  *&v65[16] = v51;
  v66 = v51;
  v67 = v51;
  v68 = v51;
  v69 = v51;
  v70 = v51;
  v71 = v51;
  v72 = v51;
  v73 = v51;
  v74 = v51;
  v75 = v51;
  v76 = v51;
  v77 = v51;
  v78 = v51;
  v79 = v51;
  v80 = v51;
  v81 = v51;
  v82 = v51;
  v83 = v51;
  v84 = 0x7FF8000000000000;
  v6 = *(this + 2760);
  LOBYTE(v49.f64[0]) = 0;
  if (sub_1D0D88874(this + 14840, &v90, v6, &v85, &v51, &v49, 0.000000015))
  {
    LOWORD(v100.f64[0]) = 12;
    LOBYTE(v98.__sinval) = 4;
    *&v49.f64[0] = (*(*a2 + 16))(a2);
    v49.f64[1] = v7;
    v8 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v49, "Could not get user position for map vector measurement");
    if (*(this + 2735) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v100, &v98, "%s", v9);
    return 0xFFFFFFFFLL;
  }

  v49 = 0uLL;
  v50 = 0;
  v49 = *v88;
  v50 = *(v88 + 2);
  v11 = (a2 + 104);
  ShouldMapVectorConstraintBeApplied = raven::RavenEstimator::ShouldMapVectorConstraintBeApplied(this, &v49, (a2 + 104));
  v13 = ShouldMapVectorConstraintBeApplied == 0 && !IsUserStationary;
  v14 = ShouldMapVectorConstraintBeApplied != -2;
  if (*(this + 2760) != 1)
  {
    goto LABEL_24;
  }

  if (*(this + 2000) == 1)
  {
    v14 = *(this + 2112) - 3 < 0xFFFFFFFE && ShouldMapVectorConstraintBeApplied != -2;
  }

  if (*(this + 2288) == 1 && fabs(*(this + 304)) > 1.0)
  {
    v14 = 0;
    v13 = 0;
  }

  if (v13 || v14)
  {
    v100 = vmulq_f64(*(a2 + 14), vdupq_n_s64(0x3F91DF46A2529D39uLL));
    v101 = 0;
    v98 = __sincos_stret(*(a2 + 32) * 0.0174532925);
    v99 = 0;
    if (!cnnavigation::ENUToECEF(&v98, 1, 1, &v100, 1, &v96))
    {
      v33 = v88[5] * v96.f64[1] + v88[4] * v96.f64[0] + v88[6] * v97;
      v14 = (v33 >= 0.866025404) & v14;
      if (v33 >= 0.866025404 && v13)
      {
        goto LABEL_25;
      }

      goto LABEL_52;
    }

LABEL_24:
    if (v13)
    {
LABEL_25:
      sub_1D0BA002C(&v51, 21);
      v51.i64[0] = &unk_1F4CE1A30;
      *&v53[8] = v95;
      *&v53[24] = this + 2920;
      v54.i64[0] = this + 14824;
      v54.i64[1] = this + 14840;
      v55.i64[0] = this + 2760;
      v55.i64[1] = this + 2800;
      v17 = *(a2 + 248);
      v64 = *(a2 + 232);
      *v65 = v17;
      *&v65[12] = *(a2 + 260);
      v18 = *(a2 + 184);
      v60 = *(a2 + 168);
      v61 = v18;
      v19 = *(a2 + 216);
      v62 = *(a2 + 200);
      v63 = v19;
      v20 = *(a2 + 120);
      v56 = *v11;
      v57 = v20;
      v21 = *(a2 + 152);
      v58 = *(a2 + 136);
      v59 = v21;
      v22 = *(this + 1208);
      v23 = v22 == 1 && *(this + 1320) == 5 && *(this + 2592) == 1 && *(this + 2704) - 2 < 3;
      v66.i8[0] = v23;
      v92 = 0x100000003;
      *&v24 = 0x100000001;
      *(&v24 + 1) = 0x100000001;
      v91 = v24;
      v90 = &unk_1F4CDEB28;
      v93 = v94;
      v94[0] = 0;
      v87 = 0x100000001;
      v86 = v24;
      v85 = &unk_1F4CDF418;
      v88 = v89;
      v25 = *(*(this + 146) + 2528);
      if (v25 <= 0.0)
      {
        LOWORD(v100.f64[0]) = 12;
        LOBYTE(v98.__sinval) = 4;
        *&v49.f64[0] = (*(*a2 + 16))(a2);
        v49.f64[1] = v30;
        v31 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v49, "estimator_map_vector_number_of_cross_track_position_sigmas_in_road_width_ <= 0");
        if (*(this + 2735) >= 0)
        {
          v29 = v31;
        }

        else
        {
          v29 = *(this + 339);
        }
      }

      else
      {
        v26 = *(a2 + 30) / v25;
        if (v26 < 1.0 && v22 && *(this + 1320) != 5)
        {
          v26 = 1.0;
        }

        v89[0] = v26 * v26;
        if (!sub_1D0D66DB8(this + 61736, &v95, &v90, &v85, &v51))
        {
          v16 = 0;
LABEL_44:
          v51.i64[0] = &unk_1F4CE4300;
          if ((v53[7] & 0x80000000) != 0)
          {
            operator delete(__p[0]);
          }

          if ((v14 & 1) == 0)
          {
            goto LABEL_47;
          }

LABEL_53:
          sub_1D0BA002C(&v51, 22);
          v51.i64[0] = &unk_1F4CE1A90;
          *&v53[8] = v95;
          *&v53[24] = this + 2920;
          v54.i64[0] = this + 14824;
          v54.i64[1] = this + 14840;
          v55.i64[0] = this + 2760;
          v55.i64[1] = this + 2800;
          v35 = *(a2 + 248);
          v64 = *(a2 + 232);
          *v65 = v35;
          *&v65[12] = *(a2 + 260);
          v36 = *(a2 + 184);
          v60 = *(a2 + 168);
          v61 = v36;
          v37 = *(a2 + 216);
          v62 = *(a2 + 200);
          v63 = v37;
          v38 = *(a2 + 120);
          v56 = *v11;
          v57 = v38;
          v39 = *(a2 + 152);
          v58 = *(a2 + 136);
          v59 = v39;
          v92 = 0x100000003;
          *&v39 = 0x100000001;
          *(&v39 + 1) = 0x100000001;
          v91 = v39;
          v90 = &unk_1F4CDEB28;
          v93 = v94;
          v94[0] = 0x3FF0000000000000;
          v87 = 0x100000001;
          v86 = v39;
          v40 = *(*(this + 146) + 2536);
          v85 = &unk_1F4CDF418;
          v88 = v89;
          if (v40 <= 0.0)
          {
            LOWORD(v100.f64[0]) = 12;
            LOBYTE(v98.__sinval) = 4;
            *&v49.f64[0] = (*(*a2 + 16))(a2);
            v49.f64[1] = v47;
            v48 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v49, "estimator_map_vector_cross_track_velocity_sigma_ <= 0");
            if (*(this + 2735) >= 0)
            {
              v46 = v48;
            }

            else
            {
              v46 = *(this + 339);
            }
          }

          else
          {
            v41 = *(*(this + 1859) + 192);
            v42 = 1.0;
            if (fabs(v41) > 0.000000015)
            {
              v43 = v40 / v41;
              if (v43 <= 1.0)
              {
                v42 = 0.0174524064;
                if (v43 >= 0.0174524064)
                {
                  v42 = v43;
                }
              }
            }

            v89[0] = v42 * v42;
            if (!sub_1D0D6799C(this + 61736, &v95, &v90, &v85, &v51))
            {
              v32 = 0;
LABEL_66:
              v51.i64[0] = &unk_1F4CE4300;
              if ((v53[7] & 0x80000000) != 0)
              {
                operator delete(__p[0]);
              }

              return (v32 + v16);
            }

            LOWORD(v100.f64[0]) = 12;
            LOBYTE(v98.__sinval) = 4;
            *&v49.f64[0] = (*(*a2 + 16))(a2);
            v49.f64[1] = v44;
            v45 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v49, "Could not add measurement - map vector velocity");
            if (*(this + 2735) >= 0)
            {
              v46 = v45;
            }

            else
            {
              v46 = *(this + 339);
            }
          }

          cnprint::CNPrinter::Print(&v100, &v98, "%s", v46);
          v32 = -2;
          goto LABEL_66;
        }

        LOWORD(v100.f64[0]) = 12;
        LOBYTE(v98.__sinval) = 4;
        *&v49.f64[0] = (*(*a2 + 16))(a2);
        v49.f64[1] = v27;
        v28 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v49, "Could not add measurement - map vector position");
        if (*(this + 2735) >= 0)
        {
          v29 = v28;
        }

        else
        {
          v29 = *(this + 339);
        }
      }

      cnprint::CNPrinter::Print(&v100, &v98, "%s", v29);
      v16 = -1;
      goto LABEL_44;
    }

LABEL_52:
    v16 = 0;
    v32 = 0;
    if (!v14)
    {
      return (v32 + v16);
    }

    goto LABEL_53;
  }

  v16 = 0;
LABEL_47:
  v32 = 0;
  return (v32 + v16);
}

void sub_1D0D66310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL raven::RavenPNTEstimator::IsUserStationary(raven::RavenPNTEstimator *this)
{
  if (*(this + 58) != 1)
  {
    return 0;
  }

  if (*(this + 1208) == 1 && *(this + 1320) - 1 <= 6)
  {
    v1 = qword_1D0E87A28[(*(this + 1320) - 1)];
  }

  else
  {
    v1 = 928;
  }

  v3 = *(*(this + 1859) + 192);
  return v3 < cnstatistics::InverseNormal(this, 1.0 - *(*(this + 146) + v1), 0.0, sqrt(*(*(this + 1892) + 192 * *(this + 3781) + 192)));
}

uint64_t sub_1D0D66440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v108 = *MEMORY[0x1E69E9840];
  if (!*(a3 + 56))
  {
    *v65 = 12;
    v100[0] = 4;
    cnprint::CNPrinter::Print(v65, v100, "time,%.3lf,h-function failure on line %d: %s() %s", *(a3 + 48) + *(a3 + 40), 6129, "h_MapVector_Position_RavenPNT", "invalid numerical integrator");
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  if (v8 <= v9)
  {
    v10 = *(a1 + 12);
  }

  else
  {
    v10 = *(a1 + 8);
  }

  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11 && v10 == 26;
  if (!v12 || ((v16 = *(a2 + 8), v15 = *(a2 + 12), v16 <= v15) ? (v17 = *(a2 + 12)) : (v17 = *(a2 + 8)), !v16 || !v15 || v17 != 1))
  {
    *v65 = 12;
    v100[0] = 4;
    cnprint::CNPrinter::Print(v65, v100, "time,%.3lf,h-function failure on line %d: %s() %s", *(a3 + 48) + *(a3 + 40), 6142, "h_MapVector_Position_RavenPNT", "inadequate matrices");
    return 0xFFFFFFFFLL;
  }

  v102 = *(a3 + 40);
  v21 = *(a3 + 72);
  v101 = **(a3 + 64);
  sub_1D0D96A9C(v100, v21);
  v22 = **(a3 + 80);
  v97 = 0x10000001CLL;
  v96 = xmmword_1D0E843A0;
  v95 = &unk_1F4CE0A20;
  v98 = &v99;
  if (v22)
  {
    if (v22 != 1)
    {
      if (v22 == 2)
      {
        __assert_rtn("h_MapVector_Position_RavenPNT", "ravenmeasurementfunctions.h", 6187, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
      }

      goto LABEL_38;
    }

    if (!sub_1D0D9046C(&v102, &v101, v100, *(a3 + 56), *(a3 + 88), 1, 1, 1, &v95))
    {
      goto LABEL_38;
    }

    *v65 = 12;
    LOBYTE(v48) = 4;
    cnprint::CNPrinter::Print(v65, &v48, "time,%.3lf,h-function failure on line %d: %s() %s", *(a3 + 48) + *(a3 + 40), 6178, "h_MapVector_Position_RavenPNT", "could not integrate full states");
    return 0xFFFFFFFFLL;
  }

  v50 = 0x100000007;
  v48 = &unk_1F4CE0BB0;
  v49 = xmmword_1D0E84420;
  v51 = &v52;
  if (sub_1D0C50CB8(&v102, &v101, v100, 0, &v48))
  {
    *v65 = 12;
    LOBYTE(v58) = 4;
    cnprint::CNPrinter::Print(v65, &v58, "time,%.3lf,h-function failure on line %d: %s() %s", *(a3 + 48) + *(a3 + 40), 6161, "h_MapVector_Position_RavenPNT", "could not integrate user states");
    return 0xFFFFFFFFLL;
  }

  *&v65[24] = 0x700000001;
  *v65 = &unk_1F4CE23C0;
  *&v66 = &v66 + 8;
  *&v65[8] = xmmword_1D0E84430;
  v23 = xmmword_1D0E84440;
  v24 = xmmword_1D0E7DD30;
  v25 = v67 + 1;
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
  sub_1D0D772C0(&v58, v65);
  sub_1D0D867B8(v65, &v95, &v58);
  sub_1D0D8644C(v65, DWORD2(v49), v51);
LABEL_38:
  v92 = 0x100000007;
  v91 = xmmword_1D0E84420;
  v90 = &unk_1F4CE0BB0;
  v93 = &v94;
  *v65 = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v65[16] = *v65;
  v66 = *v65;
  v67[0] = *v65;
  v67[1] = *v65;
  v67[2] = *v65;
  v67[3] = *v65;
  v67[4] = *v65;
  v67[5] = *v65;
  v67[6] = *v65;
  v67[7] = *v65;
  v67[8] = *v65;
  v67[9] = *v65;
  v67[10] = *v65;
  v68 = *v65;
  v69 = *v65;
  v70 = *v65;
  v71 = *v65;
  v72 = *v65;
  v73 = *v65;
  v74 = *v65;
  v75 = *v65;
  v76 = *v65;
  v77 = *v65;
  v78 = *v65;
  v79 = *v65;
  v80 = *v65;
  v81 = *v65;
  v82 = *v65;
  v83 = *v65;
  v84 = *v65;
  v85 = *v65;
  v86 = *v65;
  v87 = *v65;
  v88 = *v65;
  v89 = 0x7FF8000000000000;
  LOBYTE(v48) = 0;
  if (sub_1D0D88874(&v95, a1, v22, &v90, v65, &v48, 0.000000015))
  {
    LOWORD(v48) = 12;
    LOBYTE(v58) = 4;
    cnprint::CNPrinter::Print(&v48, &v58, "time,%.3lf,h-function failure on line %d: %s() %s", *(a3 + 48) + *(a3 + 40), 6200, "h_MapVector_Position_RavenPNT", "could not correct states");
    return 0xFFFFFFFFLL;
  }

  v106 = *v93;
  v107 = v93[1].f64[0];
  v105 = 0;
  if (cnnavigation::ECEFToLLA(&v106, 1, &v104, 0, &v48))
  {
    LOWORD(v48) = 12;
    LOBYTE(v58) = 4;
    cnprint::CNPrinter::Print(&v48, &v58, "time,%.3lf,h-function failure on line %d: %s() %s", *(a3 + 48) + *(a3 + 40), 6216, "h_MapVector_Position_RavenPNT", "coordinate conversion error to LLA");
    return 0xFFFFFFFFLL;
  }

  v104 = vmulq_f64(*(a3 + 192), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v59 = 0;
  v62 = 0x300000003;
  v61 = xmmword_1D0E76C10;
  v60 = &unk_1F4CD5DD0;
  v63 = &v64;
  v58 = &unk_1F4CD5D50;
  cnnavigation::ECEFToENU(&v106, 1, 1, &v104, 0, v103, &v58, COERCE_DOUBLE(0x300000003));
  if (v29)
  {
    sub_1D0D85A30(a3 + 40, "coordinate conversion error to ENU", "h_MapVector_Position_RavenPNT", 6227);
    return 0xFFFFFFFFLL;
  }

  v55 = 0x300000003;
  v54 = xmmword_1D0E76C10;
  v53 = &unk_1F4CD5DD0;
  v56 = &v57;
  if ((v59 & 1) == 0)
  {
    sub_1D0D85A30(a3 + 40, "could not compute Jacobian", "h_MapVector_Position_RavenPNT", 6235);
    return 0xFFFFFFFFLL;
  }

  sub_1D0B894B0(&v53, &v60);
  v30 = __sincos_stret(*(a3 + 248) * 0.0174532925);
  *&v31 = 0x100000001;
  *(&v31 + 1) = 0x100000001;
  *(a4 + 8) = v31;
  v32 = -v30.__cosval;
  v33 = *(a4 + 32);
  v34 = v30.__sinval * v103[1] - v30.__cosval * v103[0] + **(a2 + 32);
  *v33 = v34;
  if ((*(a3 + 272) & 1) == 0)
  {
    v35 = *(a3 + 232);
    if (fabs(v34) > v35 * 0.5)
    {
      if (v34 >= 0.0)
      {
        v35 = -v35;
      }

      *v33 = v34 + v35 * 0.5;
    }
  }

  v36 = *v56;
  v37 = v56[1];
  v38 = &v56[SHIDWORD(v54)];
  v39 = *v38;
  v40 = v38[1];
  v41 = v56[2 * SHIDWORD(v54)];
  v42 = v56[(2 * HIDWORD(v54)) | 1];
  sub_1D0D8A93C(&v48);
  v43 = v30.__sinval * v42 + v32 * v41;
  v44 = v30.__sinval * v40 + v32 * v39;
  v45 = v30.__sinval * v37 + v32 * v36;
  sub_1D0B894B0(a5, &v48);
  v46 = *(a5 + 32);
  *v46 = v45 * *(&v68 + 1);
  v47 = *(a5 + 20);
  v46[v47] = v44 * *&v72;
  v46[2 * v47] = v43 * *(&v75 + 1);
  v46[6 * v47] = v44 * *(&v72 + 1) + v45 * *&v69 + v43 * *&v76;
  v46[7 * v47] = v44 * *&v73 + v45 * *(&v69 + 1) + v43 * *(&v76 + 1);
  v46[8 * v47] = v44 * *(&v73 + 1) + v45 * *&v70 + v43 * *&v77;
  v46[20 * v47] = v44 * *&v74 + v45 * *(&v70 + 1) + v43 * *(&v77 + 1);
  v46[21 * v47] = v44 * *(&v74 + 1) + v45 * *&v71 + v43 * *&v78;
  v46[22 * v47] = v44 * *&v75 + v45 * *(&v71 + 1) + v43 * *(&v78 + 1);
  sub_1D0BBBC94(1u, 1u, &v48);
  sub_1D0B894B0(a6, &v48);
  return 0;
}

uint64_t sub_1D0D66DB8(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
        sub_1D0D91D40(v22, a5);
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

void sub_1D0D67208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D67234(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0D67284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a3 + 56))
  {
    *v50 = 12;
    v73[0] = 4;
    goto LABEL_14;
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 12);
  if (v8 <= v9)
  {
    v10 = *(a1 + 12);
  }

  else
  {
    v10 = *(a1 + 8);
  }

  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11 && v10 == 26;
  if (!v12 || ((v16 = *(a2 + 8), v15 = *(a2 + 12), v16 <= v15) ? (v17 = *(a2 + 12)) : (v17 = *(a2 + 8)), !v16 || !v15 || v17 != 1))
  {
    *v50 = 12;
    v73[0] = 4;
LABEL_14:
    cnprint::CNPrinter::Print(v50, v73, "time,%.3lf,h-function failure on line %d: %s() %s");
    return 0xFFFFFFFFLL;
  }

  v75 = *(a3 + 40);
  v21 = *(a3 + 72);
  v74 = **(a3 + 64);
  sub_1D0D96A9C(v73, v21);
  v22 = **(a3 + 80);
  v70 = 0x10000001CLL;
  v69 = xmmword_1D0E843A0;
  v68 = &unk_1F4CE0A20;
  v71 = &v72;
  if (v22)
  {
    if (v22 != 1)
    {
      if (v22 == 2)
      {
        __assert_rtn("h_MapVector_Velocity_RavenPNT", "ravenmeasurementfunctions.h", 6395, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
      }

      goto LABEL_39;
    }

    if (!sub_1D0D9046C(&v75, &v74, v73, *(a3 + 56), *(a3 + 88), 1, 1, 1, &v68))
    {
      goto LABEL_39;
    }

    *v50 = 12;
    LOBYTE(v39) = 4;
    cnprint::CNPrinter::Print(v50, &v39, "time,%.3lf,h-function failure on line %d: %s() %s");
    return 0xFFFFFFFFLL;
  }

  v41 = 0x100000007;
  v39 = &unk_1F4CE0BB0;
  v40 = xmmword_1D0E84420;
  v42 = &v43;
  if (sub_1D0C50CB8(&v75, &v74, v73, 0, &v39))
  {
    *v50 = 12;
    v49[0] = 4;
    cnprint::CNPrinter::Print(v50, v49, "time,%.3lf,h-function failure on line %d: %s() %s", *(a3 + 48) + *(a3 + 40), 6369, "h_MapVector_Velocity_RavenPNT", "could not integrate user states");
    return 0xFFFFFFFFLL;
  }

  *&v50[24] = 0x700000001;
  *v50 = &unk_1F4CE23C0;
  *&v51 = &v51 + 8;
  *&v50[8] = xmmword_1D0E84430;
  v23 = xmmword_1D0E84440;
  v24 = xmmword_1D0E7DD30;
  v25 = v52 + 1;
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
  sub_1D0D772C0(v49, v50);
  sub_1D0D867B8(v50, &v68, v49);
  sub_1D0D8644C(v50, DWORD2(v40), v42);
LABEL_39:
  v65 = 0x100000007;
  v64 = xmmword_1D0E84420;
  v63 = &unk_1F4CE0BB0;
  v66 = &v67;
  *v50 = vdupq_n_s64(0x7FF8000000000000uLL);
  *&v50[16] = *v50;
  v51 = *v50;
  v52[0] = *v50;
  v52[1] = *v50;
  v52[2] = *v50;
  v52[3] = *v50;
  v52[4] = *v50;
  v52[5] = *v50;
  v52[6] = *v50;
  v52[7] = *v50;
  v52[8] = *v50;
  v52[9] = *v50;
  v52[10] = *v50;
  v52[11] = *v50;
  v52[12] = *v50;
  v52[13] = *v50;
  v52[14] = *v50;
  v52[15] = *v50;
  v52[16] = *v50;
  v52[17] = *v50;
  v52[18] = *v50;
  v52[19] = *v50;
  v52[20] = *v50;
  v52[21] = *v50;
  v52[22] = *v50;
  v53 = *v50;
  v54 = *v50;
  v55 = *v50;
  v56 = *v50;
  v57 = *v50;
  v58 = *v50;
  v59 = *v50;
  v60 = *v50;
  v61 = *v50;
  v62 = NAN;
  LOBYTE(v39) = 0;
  if (sub_1D0D88874(&v68, a1, v22, &v63, v50, &v39, 0.000000015))
  {
    LOWORD(v39) = 12;
    v49[0] = 4;
    cnprint::CNPrinter::Print(&v39, v49, "time,%.3lf,h-function failure on line %d: %s() %s", *(a3 + 48) + *(a3 + 40), 6408, "h_MapVector_Velocity_RavenPNT", "could not correct states");
    return 0xFFFFFFFFLL;
  }

  v29 = v66[4];
  v30 = v66[5];
  v31 = v66[6];
  sub_1D0C09230(v49, *(a3 + 192) * 0.0174532925, *(a3 + 200) * 0.0174532925);
  v47 = __sincos_stret(*(a3 + 248) * 0.0174532925);
  v48 = 0;
  sub_1D0BED7A0(v49, &v47.__sinval, &v44);
  if ((v32 & 1) == 0)
  {
    sub_1D0D85A30(a3 + 40, "could not compute DoT", "h_MapVector_Velocity_RavenPNT", 6431);
    return 0xFFFFFFFFLL;
  }

  *&v33 = 0x100000001;
  *(&v33 + 1) = 0x100000001;
  *(a4 + 8) = v33;
  **(a4 + 32) = v30 * v45 + v44 * v29 + v46 * v31 + **(a2 + 32);
  v34 = v44;
  v35 = v45;
  v36 = v46;
  sub_1D0D8A93C(&v39);
  sub_1D0B894B0(a5, &v39);
  v37 = *(a5 + 20);
  v38 = *(a5 + 32);
  *(v38 + 48 * v37) = v35 * *(&v56 + 1) + v34 * *(&v53 + 1) + v36 * *(&v59 + 1);
  *(v38 + 56 * v37) = v35 * *&v57 + v34 * *&v54 + v36 * *&v60;
  *(v38 + (v37 << 6)) = v35 * *(&v57 + 1) + v34 * *(&v54 + 1) + v36 * *(&v60 + 1);
  *(v38 + 184 * v37) = v35 * *&v58 + v34 * *&v55 + v36 * *&v61;
  *(v38 + 192 * v37) = v35 * *(&v58 + 1) + v34 * *(&v55 + 1) + v36 * *(&v61 + 1);
  *(v38 + 200 * v37) = v35 * *&v59 + v34 * *&v56 + v36 * v62;
  sub_1D0BBBC94(1u, 1u, &v39);
  sub_1D0B894B0(a6, &v39);
  return 0;
}

uint64_t sub_1D0D6799C(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
        sub_1D0D91FC8(v22, a5);
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

void sub_1D0D67DEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D67E18(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::NonHolonomicVelocityConstraintEvent *a2)
{
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 58) != 1)
  {
    return 0;
  }

  v4 = a2 + 104;
  if ((*(a2 + 13) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a2 + 14) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a2 + 15) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    LOWORD(v16[0]) = 12;
    LOBYTE(v27) = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(v16, &v27, "t,%.3lf, Invalid constraint axis");
    return 0xFFFFFFFFLL;
  }

  if (fabs(sqrt(*(a2 + 14) * *(a2 + 14) + *(a2 + 13) * *(a2 + 13) + *(a2 + 15) * *(a2 + 15))) <= 0.000000015)
  {
    LOWORD(v16[0]) = 12;
    LOBYTE(v27) = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(v16, &v27, "t,%.3lf, Constraint axis has zero magnitude");
    return 0xFFFFFFFFLL;
  }

  if ((*(a2 + 16) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    LOWORD(v16[0]) = 12;
    LOBYTE(v27) = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(v16, &v27, "t,%.3lf, Invalid angular uncertainty on constraint axis");
    return 0xFFFFFFFFLL;
  }

  sub_1D0C51578(1, 1, v32);
  v29 = 0x300000003;
  v27 = &unk_1F4CD5DD0;
  *&v7 = 0x100000001;
  *(&v7 + 1) = 0x100000001;
  v28 = v7;
  v30 = &v31;
  v8 = *(*(this + 1859) + 192) * *(a2 + 16);
  v31 = *(*(this + 146) + 296) * *(*(this + 146) + 296) + v8 * v8;
  *&v26 = (*(*a2 + 16))(a2);
  *(&v26 + 1) = v9;
  sub_1D0BA002C(v16, 23);
  v16[0] = &unk_1F4CE1B38;
  v18 = v26;
  v24 = *v4;
  v25 = *(v4 + 2);
  v19 = this + 2920;
  v20 = this + 14824;
  v21 = this + 14840;
  v22 = this + 2760;
  v23 = this + 2800;
  if (sub_1D0D689D4(this + 61736, &v26, v32, &v27, v16))
  {
    v15 = 12;
    v14 = 4;
    v13[0] = (*(*a2 + 16))(a2);
    v13[1] = v10;
    v11 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v13, "Could not add measurement - NHC velocity");
    if (*(this + 2735) >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = *(this + 339);
    }

    cnprint::CNPrinter::Print(&v15, &v14, "%s", v12);
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = 0;
  }

  v16[0] = &unk_1F4CE4300;
  if (v17 < 0)
  {
    operator delete(v16[2]);
  }

  return v5;
}

void sub_1D0D68230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D68270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v94 = *(a3 + 40);
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
    _ZF = v8 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v11 = !_ZF && v9 == 26;
  if (!v11 || ((v13 = *(a2 + 8), v14 = *(a2 + 12), v13 <= v14) ? (v15 = *(a2 + 12)) : (v15 = *(a2 + 8)), v13 ? (v16 = v14 == 0) : (v16 = 1), !v16 ? (v17 = v15 == 1) : (v17 = 0), !v17))
  {
    LOWORD(v79[0]) = 12;
    LOBYTE(v49) = 4;
    cnprint::CNPrinter::Print(v79, &v49, "time,%.3lf,h-function failure on line %d: %s() %s", *(a3 + 48) + *(a3 + 40), 6518, "h_NonHolonomicVelocityConstraint_RavenPNT", "inadequate matrices");
    if (cnprint::CNPrinter::GetLogLevel(v18) <= 1)
    {
      LOWORD(v79[0]) = 12;
      LOBYTE(v49) = 1;
      cnprint::CNPrinter::Print(v79, &v49, "t,%.3lf, Warning: h_NonHolonomicVelocityConstraint_RavenPNT called with inadequate matrices");
    }

    return 0xFFFFFFFFLL;
  }

  if (!*(a3 + 56))
  {
    LOWORD(v79[0]) = 12;
    LOBYTE(v49) = 4;
    goto LABEL_30;
  }

  v23 = *(a3 + 72);
  v93 = **(a3 + 64);
  sub_1D0D96A9C(v91, v23);
  if ((*(a3 + 96) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a3 + 104) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a3 + 112) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    LOWORD(v79[0]) = 12;
    LOBYTE(v49) = 4;
LABEL_30:
    cnprint::CNPrinter::Print(v79, &v49, "time,%.3lf,h-function failure on line %d: %s() %s");
    return 0xFFFFFFFFLL;
  }

  v26 = sqrt(*(a3 + 104) * *(a3 + 104) + *(a3 + 96) * *(a3 + 96) + *(a3 + 112) * *(a3 + 112));
  if (fabs(v26) <= 0.000000015)
  {
    sub_1D0D85A30(a3 + 40, "constraint axis has zero magnitude", "h_NonHolonomicVelocityConstraint_RavenPNT", 6553);
    return 0xFFFFFFFFLL;
  }

  if (vabdd_f64(1.0, v26) > 0.000000015)
  {
    *&v47 = v26;
    if (!cnprint::CNPrinter::GetLogLevel(v24))
    {
      LOWORD(v79[0]) = 12;
      LOBYTE(v49) = 0;
      cnprint::CNPrinter::Print(v79, &v49, "t,%.3lf, Normalizing constraint axis to unit magnitude", *(&v94 + 1) + v94);
    }

    *(a3 + 96) = vdivq_f64(*(a3 + 96), vdupq_lane_s64(v47, 0));
    *(a3 + 112) = *(a3 + 112) / *&v47;
  }

  v27 = *(a3 + 56);
  v88 = 0x10000001CLL;
  v87 = xmmword_1D0E843A0;
  v86 = &unk_1F4CE0A20;
  v89 = &v90;
  if (sub_1D0D85A88(&v94, &v93, v92, v27, *(a3 + 88), &v86))
  {
    sub_1D0D85A30(a3 + 40, "could not integrate full states", "h_NonHolonomicVelocityConstraint_RavenPNT", 6571);
    if (cnprint::CNPrinter::GetLogLevel(v28) <= 1)
    {
      LOWORD(v79[0]) = 12;
      LOBYTE(v49) = 1;
      cnprint::CNPrinter::Print(v79, &v49, "t,%.3lf, Error: h_NonHolonomicVelocityConstraint_RavenPNT IntegrateDeviceKinematicStateEstimate failed");
    }

    return 0xFFFFFFFFLL;
  }

  v87 = xmmword_1D0E843A0;
  v83 = 0x10000001CLL;
  v81 = &unk_1F4CE0A20;
  v82 = xmmword_1D0E843A0;
  v84 = &v85;
  v79[0] = vdupq_n_s64(0x7FF8000000000000uLL);
  v79[1] = v79[0];
  v79[2] = v79[0];
  v79[3] = v79[0];
  v79[4] = v79[0];
  v79[5] = v79[0];
  v79[6] = v79[0];
  v79[7] = v79[0];
  v79[8] = v79[0];
  v79[9] = v79[0];
  v79[10] = v79[0];
  v79[11] = v79[0];
  v79[12] = v79[0];
  v79[13] = v79[0];
  v79[14] = v79[0];
  v79[15] = v79[0];
  v79[16] = v79[0];
  v79[17] = v79[0];
  v79[18] = v79[0];
  v79[19] = v79[0];
  v79[20] = v79[0];
  v79[21] = v79[0];
  v79[22] = v79[0];
  v79[23] = v79[0];
  v79[24] = v79[0];
  v79[25] = v79[0];
  v79[26] = v79[0];
  v79[27] = v79[0];
  v79[28] = v79[0];
  v79[29] = v79[0];
  v79[30] = v79[0];
  v79[31] = v79[0];
  v79[32] = v79[0];
  v79[33] = v79[0];
  v79[34] = v79[0];
  v80 = 0x7FF8000000000000;
  sub_1D0D85CD4(&v86, a1, &v81, v79);
  v76 = 0x100000003;
  v75 = xmmword_1D0E7DCC0;
  v74 = &unk_1F4CDEB28;
  v77 = v78;
  v78[0] = *&v84[1].f64[1];
  v78[1] = *&v84[2].f64[0];
  v78[2] = *&v84[2].f64[1];
  _Q3 = v84[4];
  _D5 = _Q3.f64[1];
  __asm { FMLA            D4, D5, V3.D[1] }

  v35 = sqrt(_D4);
  if (fabs(v35) >= 2.22044605e-16)
  {
    v38 = vdupq_lane_s64(*&v35, 0);
    v36 = vdivq_f64(_Q3, v38);
    v37 = vdivq_f64(v84[3], v38);
  }

  else
  {
    v36 = xmmword_1D0E7DCB0;
    v37 = 0uLL;
  }

  v73[0] = v37;
  v73[1] = v36;
  v70 = 0x100000003;
  v69 = xmmword_1D0E7DCC0;
  v68 = &unk_1F4CDEB28;
  v71 = &v72;
  sub_1D0B88A54(v73, &v74, &v49);
  sub_1D0B894B0(&v68, &v49);
  v64 = 0x300000001;
  v63 = xmmword_1D0E7F310;
  v62 = &unk_1F4CDF248;
  v65 = &v66;
  v66 = *(a3 + 96);
  v67 = *(a3 + 112);
  cnrotation::CNRotation::RotationMatrix(v61, v73);
  cnrotation::CNRotation::dRotateVectordq(v73[0].f64, &v74, v60);
  sub_1D0D921D8(v59, v79);
  sub_1D0D8B654(v58, v79);
  sub_1D0D8A93C(&v49);
  sub_1D0B894B0(a5, &v49);
  v51 = 0x1A00000001;
  v49 = &unk_1F4CE1FD0;
  v52 = &v53;
  v50 = xmmword_1D0E7F310;
  v53 = 0x400000003;
  v54 = 5;
  sub_1D0D741B0(v57, &v49);
  v51 = 0x1A00000001;
  v49 = &unk_1F4CE1FD0;
  v52 = &v53;
  v50 = xmmword_1D0E7F310;
  v53 = 0x700000006;
  v54 = 8;
  sub_1D0D741B0(v56, &v49);
  sub_1D0BFB8FC(&v62, v61, v55);
  sub_1D0BFB8FC(v55, v59, v48);
  sub_1D0D92264(&v49, a5, v57);
  sub_1D0D922C8(&v49, v48);
  sub_1D0D924A0(v48, &v62, v60);
  sub_1D0D92414(v55, v48, v58);
  sub_1D0D92264(&v49, a5, v56);
  sub_1D0D922C8(&v49, v55);
  *&v39 = 0x100000001;
  *(&v39 + 1) = 0x100000001;
  *(a4 + 8) = v39;
  v40 = DWORD2(v63);
  if (SDWORD2(v63) < 1)
  {
    v42 = 0.0;
  }

  else
  {
    v41 = v65;
    v42 = 0.0;
    v43 = v71;
    do
    {
      v44 = *v41++;
      v45 = v44;
      v46 = *v43++;
      v42 = v42 + v45 * v46;
      --v40;
    }

    while (v40);
  }

  **(a4 + 32) = v42 + **(a2 + 32);
  sub_1D0D9254C(&v49);
  sub_1D0B894B0(a6, &v49);
  return 0;
}

uint64_t sub_1D0D689D4(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
        sub_1D0D9286C(v22, a5);
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

void sub_1D0D68E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D68E50(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::PositionChangeEvent *a2)
{
  v39[4] = *MEMORY[0x1E69E9840];
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 58) != 1)
  {
    return 0;
  }

  sub_1D0BBA094(v31, a2 + 200);
  v4 = sub_1D0BE0DE8(v29, a2 + 264);
  v5 = (*(*a2 + 16))(a2, v4);
  v7 = v6;
  *&v28 = v5;
  *(&v28 + 1) = v6;
  sub_1D0BA002C(v19, 7);
  v19[0] = &unk_1F4CE1BD0;
  v21 = v28;
  v32 = *(a2 + 104);
  v9 = CNTimeSpan::operator-(&v28, &v32, v32, v8);
  v27 = v10 + v9;
  v22 = this + 2920;
  v23 = this + 14824;
  v24 = this + 14840;
  v25 = this + 2760;
  v26 = this + 2800;
  if ((v30 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  v35 = 0x100000003;
  v32.i64[0] = &unk_1F4CDEB28;
  v11 = v37;
  v36 = v37;
  v32.i64[1] = v30 | 0x100000000;
  v33 = v30;
  v34 = v30;
  if (v30 > 3)
  {
    v13 = &v37[v30];
    bzero(v37, 16 * ((v30 - 1) >> 1));
    *(v13 - 2) = 0;
    *(v13 - 1) = 0;
  }

  else if (v30)
  {
    bzero(v37, 8 * v30);
  }

  if (*(this + 61736))
  {
    if (*(this + 16918) == 174)
    {
      LOWORD(v39[0]) = 2;
      v38 = 2;
      cnprint::CNPrinter::Print(v39, &v38, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v7 + v5);
    }

    else if (*(this + 61737) == 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
      {
        LOWORD(v39[0]) = 2;
        v38 = 1;
        cnprint::CNPrinter::Print(v39, &v38, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v7 + v5);
      }
    }

    else
    {
      v14 = sub_1D0B7C8AC(&v28, this + 7718);
      if (!v14)
      {
        v39[0] = 0;
        v39[1] = 0;
        sub_1D0D92D2C(v39, v19);
      }

      if (cnprint::CNPrinter::GetLogLevel(v14) <= 1)
      {
        LOWORD(v39[0]) = 2;
        v38 = 1;
        cnprint::CNPrinter::Print(v39, &v38, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", *(&v28 + 1) + v28, *(this + 7719) + *(this + 7718));
      }
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(v11) <= 1)
  {
    LOWORD(v39[0]) = 2;
    v38 = 1;
    cnprint::CNPrinter::Print(v39, &v38, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v7 + v5);
  }

  LOWORD(v39[0]) = 12;
  v38 = 4;
  v32.i64[0] = (*(*a2 + 16))(a2);
  v32.i64[1] = v15;
  v16 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v32, "Could not add measurement - device position-change");
  if (*(this + 2735) >= 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = *(this + 339);
  }

  cnprint::CNPrinter::Print(v39, &v38, "%s", v17);
  v12 = 0xFFFFFFFFLL;
  v19[0] = &unk_1F4CE4300;
  if (v20 < 0)
  {
    operator delete(v19[2]);
  }

  return v12;
}

void sub_1D0D6949C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0D69504(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  if ((atomic_load_explicit(&qword_1EE053BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053BA0))
  {
    v58 = 0x1300000001;
    v56 = &unk_1F4CE2330;
    v59 = &v60;
    v57 = xmmword_1D0E844E0;
    v37 = xmmword_1D0E84440;
    v38 = xmmword_1D0E7DD30;
    v39 = v62;
    v40 = 13;
    v41 = vdupq_n_s64(0x13uLL);
    v42 = vdupq_n_s64(4uLL);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v41, v38)), *v37.i8).u8[0])
      {
        *(v39 - 3) = v40 - 13;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v38)), *&v37).i8[2])
      {
        *(v39 - 2) = v40 - 12;
      }

      if (vuzp1_s16(*&v37, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x13uLL), *&v37))).i32[1])
      {
        *(v39 - 1) = v40 - 11;
        *v39 = v40 - 10;
      }

      v37 = vaddq_s64(v37, v42);
      v38 = vaddq_s64(v38, v42);
      v40 += 4;
      v39 += 4;
    }

    while (v40 != 33);
    sub_1D0D77214(&unk_1EE0544F0, &v56);
    __cxa_atexit(sub_1D0D7B720, &unk_1EE0544F0, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053BA0);
  }

  if ((atomic_load_explicit(&qword_1EE053BA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053BA8))
  {
    v43 = 0;
    v58 = 0x1A00000001;
    v56 = &unk_1F4CE1FD0;
    v59 = &v60;
    v57 = xmmword_1D0E844D0;
    v44 = xmmword_1D0E7DD30;
    v45 = vdupq_n_s64(2uLL);
    v46 = vdupq_n_s64(0x12uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v46, v44)).u8[0])
      {
        *(&v60 + v43) = v43;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0x12uLL), *&v44)).i32[1])
      {
        *(&v60 + v43 + 1) = v43 + 1;
      }

      v43 += 2;
      v44 = vaddq_s64(v44, v45);
    }

    while (v43 != 18);
    sub_1D0D741B0(&unk_1EC5FB440, &v56);
    __cxa_atexit(sub_1D0D73024, &unk_1EC5FB440, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053BA8);
  }

  if ((atomic_load_explicit(&qword_1EE053BB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053BB0))
  {
    v58 = 0x1A00000001;
    v56 = &unk_1F4CE1FD0;
    v59 = &v60;
    v57 = xmmword_1D0E7F310;
    v60 = 0x700000006;
    v61 = 8;
    sub_1D0D741B0(&unk_1EC5FB4D0, &v56);
    __cxa_atexit(sub_1D0D73024, &unk_1EC5FB4D0, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053BB0);
  }

  if ((atomic_load_explicit(&qword_1EE053BB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053BB8))
  {
    v58 = 0x1A00000001;
    v56 = &unk_1F4CE1FD0;
    v59 = &v60;
    v57 = xmmword_1D0E7F310;
    v60 = 0x100000000;
    v61 = 2;
    sub_1D0D741B0(&unk_1EC5FB560, &v56);
    __cxa_atexit(sub_1D0D73024, &unk_1EC5FB560, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053BB8);
  }

  if (v2 && (v7 = __dynamic_cast(v2, &unk_1F4CE42A0, &unk_1F4CE1B88, 0)) != 0)
  {
    v9 = v7;
    v11 = *(v6 + 8);
    v10 = *(v6 + 12);
    if (v11 <= v10)
    {
      v12 = *(v6 + 12);
    }

    else
    {
      v12 = *(v6 + 8);
    }

    if (v11 && v10 && v12 == 26 && ((v14 = *(v4 + 8), v13 = *(v4 + 12), v14 <= v13) ? (v15 = *(v4 + 12)) : (v15 = *(v4 + 8)), v14 && v13 && v15 == 3))
    {
      if (*(v7 + 7))
      {
        v8.i64[0] = *(v7 + 12);
        if ((v8.i64[0] <= -1 || ((v8.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v8.i64[0] - 1) >= 0xFFFFFFFFFFFFFLL)
        {
          LOWORD(v56) = 12;
          LOBYTE(v47[0]) = 4;
          cnprint::CNPrinter::Print(&v56, v47, "time,%.3lf,h-function failure on line %d: %s() %s", *(v7 + 6) + *(v7 + 5), 2857, "h_DevicePositionChange_RavenPNT", "invalid time interval");
        }

        else
        {
          v89 = *(v7 + 40);
          *&v57 = 0;
          v56 = 0;
          *v18.i64 = CNTimeSpan::SetTimeSpan(&v56, 0, v8, v89);
          *&v88 = CNTimeSpan::operator-(&v89, &v56, v18, v19);
          *(&v88 + 1) = v20;
          v21 = v9[9];
          v87 = *v9[8];
          sub_1D0D96A9C(&v85, v21);
          v22 = v9[7];
          v82 = 0x10000001CLL;
          v80 = &unk_1F4CE0A20;
          v81 = xmmword_1D0E844F0;
          v83 = &v84;
          if (sub_1D0D85A88(&v89, &v87, v86, v22, v9[11], &v80))
          {
            sub_1D0D85A30((v9 + 5), "could not integrate full states", "h_DevicePositionChange_RavenPNT", 2880);
          }

          else
          {
            sub_1D0D752A8(v79);
            sub_1D0D98740(&v56, v79, &unk_1EE0544F0);
            sub_1D0D8874C(&v56, DWORD2(v81), v83);
            v76 = 0x100000013;
            v74 = &unk_1F4CE40B8;
            v75 = xmmword_1D0E844F0;
            v77 = &v78;
            v72[0] = vdupq_n_s64(0x7FF8000000000000uLL);
            v72[1] = v72[0];
            v72[2] = v72[0];
            v72[3] = v72[0];
            v72[4] = v72[0];
            v72[5] = v72[0];
            v72[6] = v72[0];
            v72[7] = v72[0];
            v72[8] = v72[0];
            v72[9] = v72[0];
            v72[10] = v72[0];
            v72[11] = v72[0];
            v72[12] = v72[0];
            v72[13] = v72[0];
            v72[14] = v72[0];
            v72[15] = v72[0];
            v72[16] = v72[0];
            v72[17] = v72[0];
            v72[18] = v72[0];
            v72[19] = v72[0];
            v72[20] = v72[0];
            v72[21] = v72[0];
            v72[22] = v72[0];
            v72[23] = v72[0];
            v72[24] = v72[0];
            v72[25] = v72[0];
            v72[26] = v72[0];
            v72[27] = v72[0];
            v72[28] = v72[0];
            v72[29] = v72[0];
            v72[30] = v72[0];
            v72[31] = v72[0];
            v72[32] = v72[0];
            v72[33] = v72[0];
            v72[34] = v72[0];
            v73 = 0x7FF8000000000000;
            sub_1D0D85CD4(v79, v6, &v74, v72);
            _Q1 = v77[4];
            _D3 = _Q1.f64[1];
            __asm { FMLA            D2, D3, V1.D[1] }

            v30 = sqrt(_D2);
            if (fabs(v30) >= 2.22044605e-16)
            {
              v33 = vdupq_lane_s64(*&v30, 0);
              v31 = vdivq_f64(_Q1, v33);
              v32 = vdivq_f64(v77[3], v33);
            }

            else
            {
              v31 = xmmword_1D0E7DCB0;
              v32 = 0uLL;
            }

            v71[0] = v32;
            v71[1] = v31;
            cnrotation::CNRotation::RotationMatrix(v70, v71);
            v67 = 0x10000001CLL;
            v65 = &unk_1F4CE0A20;
            v66 = xmmword_1D0E844F0;
            v68 = &v69;
            if (sub_1D0D85A88(&v88, &v87, v86, v22, v9[11], &v65))
            {
              sub_1D0D85A30((v9 + 5), "could not integrate full states", "h_DevicePositionChange_RavenPNT", 2915);
            }

            else
            {
              sub_1D0D7CFF0(&v56);
              v62[404] = 0;
              v56 = &unk_1F4CE3F68;
              v63 = 0u;
              v64 = 0u;
              sub_1D0D5224C(v55);
              if (sub_1D0D8A408(v22, v55))
              {
                v34 = 2929;
                v35 = "could not get integrator configuration";
              }

              else
              {
                if (!sub_1D0D53D5C(&v56, v55))
                {
                  v53[28] = &v56;
                  v53[29] = &v89;
                  v36 = v9[11];
                  v53[30] = &v80;
                  v53[31] = v36;
                  v54 = v88;
                  sub_1D0D8A47C(v53, 15);
                  v50 = 0x10000001ALL;
                  v48[6] = &unk_1F4CE3E48;
                  v49 = xmmword_1D0E843B0;
                  v51 = &v52;
                  sub_1D0D87FCC(v48);
                }

                v34 = 2934;
                v35 = "could not set integrator configuration";
              }

              sub_1D0D85A30((v9 + 5), v35, "h_DevicePositionChange_RavenPNT", v34);
              sub_1D0D4F978(&v56);
            }
          }
        }
      }

      else
      {
        LOWORD(v56) = 12;
        LOBYTE(v47[0]) = 4;
        cnprint::CNPrinter::Print(&v56, v47, "time,%.3lf,h-function failure on line %d: %s() %s", *(v7 + 6) + *(v7 + 5), 2850, "h_DevicePositionChange_RavenPNT", "invalid numerical integrator");
      }
    }

    else
    {
      LOWORD(v56) = 12;
      LOBYTE(v47[0]) = 4;
      cnprint::CNPrinter::Print(&v56, v47, "time,%.3lf,h-function failure on line %d: %s() %s", *(v7 + 6) + *(v7 + 5), 2844, "h_DevicePositionChange_RavenPNT", "inadequate matrices");
    }
  }

  else
  {
    LOWORD(v56) = 12;
    LOBYTE(v47[0]) = 4;
    cnprint::CNPrinter::Print(&v56, v47, "time,%.3lf,h-function failure on line %d: %s() %s", MEMORY[0x30] + MEMORY[0x28], 2831, "h_DevicePositionChange_RavenPNT", "dynamic_cast failed");
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0D6A4AC(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::PositionEvent *a2)
{
  v60[14] = *MEMORY[0x1E69E9840];
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 58) != 1 || *(a2 + 280) == 0)
  {
    return 0;
  }

  IsPositionMeasurementUsable = raven::RavenEstimator::IsPositionMeasurementUsable(this, a2);
  if (!IsPositionMeasurementUsable)
  {
    if (cnprint::CNPrinter::GetLogLevel(IsPositionMeasurementUsable) <= 1)
    {
      LOWORD(v45) = 12;
      LOBYTE(v60[0]) = 1;
      v29 = (*(*a2 + 16))(a2);
      *&v30 = v17;
      cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v29, "WiFi position measurement not used in non-dense urban fitness case");
      if (*(this + 2735) >= 0)
      {
        v18 = this + 2712;
      }

      else
      {
        v18 = *(this + 339);
      }

      cnprint::CNPrinter::Print(&v45, v60, "%s", v18);
    }

    return 0;
  }

  if (*(this + 2760) == 1)
  {
    v8 = *(a2 + 200);
    if (v8 <= 0xB && ((1 << v8) & 0xC10) != 0 && raven::RavenPNTEstimator::IsUserStationary(this))
    {
      return 0;
    }
  }

  v56 = 0x100000003;
  v54 = &unk_1F4CDEB28;
  v55 = xmmword_1D0E7DCC0;
  v57 = &v58;
  v58 = *(a2 + 18);
  v59 = *(a2 + 38);
  v47 = 0x300000003;
  v45 = &unk_1F4CD5DD0;
  v46 = xmmword_1D0E76C10;
  v48 = v49;
  v10 = *(a2 + 41);
  v11 = *(a2 + 42);
  v49[0] = *(a2 + 312);
  *(&v9 + 1) = *(&v49[0] + 1);
  *&v9 = v10;
  v49[1] = v9;
  v12 = *(a2 + 344);
  v50 = v11;
  v51 = v12;
  v52 = v10;
  v53 = v12;
  v14 = *(a2 + 13);
  v13 = *(a2 + 14);
  *&v44 = v14;
  *(&v44 + 1) = v13;
  v26 = v13;
  sub_1D0BA002C(&v37, 6);
  v37 = &unk_1F4CE1C30;
  v40 = v44;
  *&v41 = this + 2920;
  *(&v41 + 1) = this + 14824;
  *&v42 = this + 14840;
  *(&v42 + 1) = this + 2760;
  v43 = this + 2800;
  v15 = *(a2 + 200);
  if (v15 != 14)
  {
LABEL_25:
    if (v15 == 15)
    {
      sub_1D0BA002C(&v29, 30);
      v36 = 0;
      v35 = 0u;
      v34 = 0u;
      v29 = &unk_1F4CE1C98;
      v38 = v30;
      std::string::operator=(&v39, (&v30 + 8));
      v40 = v33;
      v41 = v34;
      v42 = v35;
      v43 = v36;
      v29 = &unk_1F4CE4300;
      if (SHIBYTE(v32) < 0)
      {
        operator delete(*(&v30 + 1));
      }

      v40 = v44;
      *&v41 = this + 2920;
      *(&v41 + 1) = this + 14824;
      *&v42 = this + 14840;
      *(&v42 + 1) = this + 2760;
      v43 = this + 2800;
    }

    goto LABEL_29;
  }

  if (*(this + 58))
  {
    if (sub_1D0D755EC(this + 15256))
    {
      v31 = 0x10000001CLL;
      v29 = &unk_1F4CE0A20;
      v30 = xmmword_1D0E7DCC0;
      v32 = &v33;
      v16 = *(this + 1859);
      v33 = *v16;
      *&v34 = *(v16 + 2);
      sub_1D0D881B0(v28, 3, 3);
    }

    v15 = *(a2 + 200);
    goto LABEL_25;
  }

LABEL_29:
  if ((v46 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  v31 = 0x100000003;
  v29 = &unk_1F4CDEB28;
  v19 = &v33;
  v32 = &v33;
  *&v30 = v46 | 0x100000000;
  DWORD2(v30) = v46;
  HIDWORD(v30) = v46;
  if (v46 > 3)
  {
    v21 = &v33 + 8 * v46;
    bzero(&v33, 16 * ((v46 - 1) >> 1));
    *(v21 - 2) = 0;
    *(v21 - 1) = 0;
    v20 = v26;
  }

  else
  {
    v20 = v26;
    if (v46)
    {
      bzero(&v33, 8 * v46);
    }
  }

  if (*(this + 61736))
  {
    if (*(this + 16918) == 174)
    {
      LOWORD(v60[0]) = 2;
      v27[0] = 2;
      cnprint::CNPrinter::Print(v60, v27, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v20 + v14);
    }

    else if (*(this + 61737) == 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(v19) <= 1)
      {
        LOWORD(v60[0]) = 2;
        v27[0] = 1;
        cnprint::CNPrinter::Print(v60, v27, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v20 + v14);
      }
    }

    else
    {
      v22 = sub_1D0B7C8AC(&v44, this + 7718);
      if (!v22)
      {
        v60[0] = 0;
        v60[1] = 0;
        sub_1D0D93064(v60, &v37);
      }

      if (cnprint::CNPrinter::GetLogLevel(v22) <= 1)
      {
        LOWORD(v60[0]) = 2;
        v27[0] = 1;
        cnprint::CNPrinter::Print(v60, v27, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", *(&v44 + 1) + v44, *(this + 7719) + *(this + 7718));
      }
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(v19) <= 1)
  {
    LOWORD(v60[0]) = 2;
    v27[0] = 1;
    cnprint::CNPrinter::Print(v60, v27, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v20 + v14);
  }

  LOWORD(v60[0]) = 12;
  v27[0] = 4;
  v29 = (*(*a2 + 16))(a2);
  *&v30 = v23;
  v24 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v29, "Could not add measurement - position, src,%d", *(a2 + 200));
  if (*(this + 2735) >= 0)
  {
    v25 = v24;
  }

  else
  {
    v25 = *(this + 339);
  }

  cnprint::CNPrinter::Print(v60, v27, "%s", v25);
  v5 = 0xFFFFFFFFLL;
  v37 = &unk_1F4CE4300;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_1D0D6B00C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1D0C537DC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0D6B114(uint64_t a1, uint64_t a2, void *lpsrc, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!lpsrc || (v11 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CE1BE8, 0)) == 0)
  {
    LOWORD(v28) = 12;
    v39.i8[0] = 4;
    cnprint::CNPrinter::Print(&v28, &v39, "time,%.3lf,h-function failure on line %d: %s() %s", MEMORY[0x30] + MEMORY[0x28], 2697, "h_DevicePosition_RavenPNT", "dynamic_cast failed");
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
    LOWORD(v28) = 12;
    v39.i8[0] = 4;
    cnprint::CNPrinter::Print(&v28, &v39, "time,%.3lf,h-function failure on line %d: %s() %s", *(v11 + 6) + *(v11 + 5), 2710, "h_DevicePosition_RavenPNT", "inadequate matrices");
    return 0xFFFFFFFFLL;
  }

  if (!*(v11 + 7))
  {
    LOWORD(v28) = 12;
    v39.i8[0] = 4;
    cnprint::CNPrinter::Print(&v28, &v39, "time,%.3lf,h-function failure on line %d: %s() %s", *(v11 + 6) + *(v11 + 5), 2716, "h_DevicePosition_RavenPNT", "invalid numerical integrator");
    return 0xFFFFFFFFLL;
  }

  v88 = *(v11 + 40);
  v19 = *(v11 + 9);
  v87 = **(v11 + 8);
  sub_1D0D96A9C(v85, v19);
  v20 = *(v12 + 7);
  v82 = 0x10000001CLL;
  v81 = xmmword_1D0E843A0;
  v80 = &unk_1F4CE0A20;
  v83 = &v84;
  if (sub_1D0D85A88(&v88, &v87, v86, v20, *(v12 + 11), &v80))
  {
    LOWORD(v28) = 12;
    v39.i8[0] = 4;
    cnprint::CNPrinter::Print(&v28, &v39, "time,%.3lf,h-function failure on line %d: %s() %s", *(v12 + 6) + *(v12 + 5), 2730, "h_DevicePosition_RavenPNT", "could not integrate full states");
    return 0xFFFFFFFFLL;
  }

  v81 = xmmword_1D0E843A0;
  v77 = 0x10000001CLL;
  v75 = &unk_1F4CE0A20;
  v76 = xmmword_1D0E843A0;
  v78 = &v79;
  v39 = vdupq_n_s64(0x7FF8000000000000uLL);
  v40 = v39;
  v41 = v39;
  v42 = v39;
  v43 = v39;
  v44 = v39;
  v45 = v39;
  v46 = v39;
  v47 = v39;
  v48 = v39;
  v49 = v39;
  v50 = v39;
  v51 = v39;
  v52 = v39;
  v53 = v39;
  v54 = v39;
  v55 = v39;
  v56 = v39;
  v57 = v39;
  v58 = v39;
  v59 = v39;
  v60 = v39;
  v61 = v39;
  v62 = v39;
  v63 = v39;
  v64 = v39;
  v65 = v39;
  v66 = v39;
  v67 = v39;
  v68 = v39;
  v69 = v39;
  v70 = v39;
  v71 = v39;
  v72 = v39;
  v73 = v39;
  v74 = 0x7FF8000000000000;
  sub_1D0D85CD4(&v80, a1, &v75, &v39);
  *(a4 + 8) = xmmword_1D0E7DCC0;
  v22 = v78;
  v23 = *(a2 + 32);
  v24 = *(a4 + 32);
  *v24 = *v78 + *v23;
  v24[1] = v22[1] + v23[1];
  v24[2] = v22[2] + v23[2];
  v30 = 0x1A00000003;
  v28 = &unk_1F4CE0B08;
  v31 = &v32;
  v29 = xmmword_1D0E84410;
  bzero(&v32, 0x270uLL);
  sub_1D0B894B0(a5, &v28);
  v25 = *(a5 + 32);
  v26 = v39.i64[1];
  *v25 = v39.i64[0];
  v27 = *(a5 + 20);
  v25[v27 + 1] = v26;
  v25[2 * v27 + 2] = v40.i64[0];
  v30 = 0x300000003;
  v28 = &unk_1F4CD5DD0;
  v29 = xmmword_1D0E76C10;
  v34 = 0;
  v33 = 0u;
  v36 = 0u;
  v31 = &v32;
  v32 = 0x3FF0000000000000;
  v35 = 0x3FF0000000000000;
  v37 = 0;
  v38 = 0x3FF0000000000000;
  sub_1D0B894B0(a6, &v28);
  return 0;
}