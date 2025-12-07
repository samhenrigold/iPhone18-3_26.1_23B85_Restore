uint64_t sub_1D0DF1F70(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0DF1FC0(uint64_t a1, uint64_t a2, void *lpsrc, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!lpsrc || (v11 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CEB650, 0)) == 0)
  {
    v38 = 12;
    LOBYTE(v33) = 4;
    cnprint::CNPrinter::Print(&v38, &v33, "time,%.3lf,h-function failure on line %d: %s() %s", MEMORY[0x30] + MEMORY[0x28], 1854, "h_MapVector_Velocity_RavenConvergence", "dynamic_cast failed");
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
    v38 = 12;
    LOBYTE(v33) = 4;
    cnprint::CNPrinter::Print(&v38, &v33, "time,%.3lf,h-function failure on line %d: %s() %s", v11[6] + *(v11 + 5), 1868, "h_MapVector_Velocity_RavenConvergence", "inadequate matrices");
    return 0xFFFFFFFFLL;
  }

  v19 = *(a1 + 32);
  v41 = *(v19 + 24);
  v42 = *(v19 + 40);
  sub_1D0BFE48C(&v38, v11[19] * 0.0174532925, v11[20] * 0.0174532925);
  sub_1D0BED7A0(&v38, &v41, v43);
  v35 = 0x300000003;
  v33 = &unk_1F4CD5DD0;
  v34 = xmmword_1D0E76C10;
  v36 = &v37;
  if (v39 == 1)
  {
    sub_1D0B894B0(&v33, &v40);
  }

  v20 = __sincos_stret(v12[26] * 0.0174532925);
  *&v21 = 0x100000001;
  *(&v21 + 1) = 0x100000001;
  *(a4 + 8) = v21;
  **(a4 + 32) = v20.__sinval * v43[1] - v20.__cosval * v43[0] + **(a2 + 32);
  v30 = 0x800000001;
  v28 = &unk_1F4CEC348;
  v31 = v32;
  v29 = xmmword_1D0E9CBE0;
  memset(v32, 0, sizeof(v32));
  sub_1D0B894B0(a5, &v28);
  v22 = v36;
  v23 = *(a5 + 20);
  v24 = *(a5 + 32);
  *(v24 + 24 * v23) = v20.__sinval * v36[1] - v20.__cosval * *v36;
  v25 = SHIDWORD(v34);
  *(v24 + 32 * v23) = v20.__sinval * v22[SHIDWORD(v34) + 1] - v20.__cosval * v22[SHIDWORD(v34)];
  *(v24 + 40 * v23) = v20.__sinval * v22[((2 * v25) | 1)] - v20.__cosval * v22[2 * v25];
  v30 = 0x100000001;
  v28 = &unk_1F4CDF418;
  *&v26 = 0x100000001;
  *(&v26 + 1) = 0x100000001;
  v29 = v26;
  v31 = v32;
  *&v32[0] = 0x3FF0000000000000;
  sub_1D0B894B0(a6, &v28);
  return 0;
}

uint64_t sub_1D0DF2310(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::OdometerEvent *a2)
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
  sub_1D0BA002C(v25, 19);
  v25[0] = &unk_1F4CEB888;
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
        sub_1D0DF8384(v49, v25);
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
  v20 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v41, "Could not add measurement - horizontal distance");
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

void sub_1D0DF2A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0DF2A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  v10 = !v9 && v8 == 8;
  if (!v10 || ((v14 = *(a2 + 8), v13 = *(a2 + 12), v14 <= v13) ? (v15 = *(a2 + 12)) : (v15 = *(a2 + 8)), !v14 || !v13 || v15 != 1))
  {
    LOWORD(v115) = 12;
    LOBYTE(v110) = 4;
LABEL_12:
    cnprint::CNPrinter::Print(&v115, &v110, "time,%.3lf,h-function failure on line %d: %s() %s");
    return 0xFFFFFFFFLL;
  }

  if (*(a3 + 56) <= 0.0)
  {
    LOWORD(v115) = 12;
    LOBYTE(v110) = 4;
    goto LABEL_12;
  }

  v20 = 0;
  v130 = *(a3 + 56);
  v127 = 0x100000006;
  v125 = &unk_1F4CE0BF8;
  v128 = v129;
  v126 = xmmword_1D0E84530;
  memset(v129, 0, sizeof(v129));
  v122 = 0x100000006;
  v121 = xmmword_1D0E84530;
  v120 = &unk_1F4CE0BF8;
  v123 = &v124;
  v117 = 0x600000006;
  v115 = &unk_1F4CDF278;
  v116 = xmmword_1D0E7F320;
  v118 = &v119;
  v112 = 0x600000006;
  v111 = xmmword_1D0E7F320;
  v110 = &unk_1F4CDF278;
  v113 = &v114;
  v21 = xmmword_1D0E7DD30;
  v22 = &v68 + 1;
  v23 = vdupq_n_s64(2uLL);
  v24 = vdupq_n_s64(6uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v24, v21)).u8[0])
    {
      *(v22 - 1) = v20;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v21)).i32[1])
    {
      *v22 = v20 + 1;
    }

    v20 += 2;
    v21 = vaddq_s64(v21, v23);
    v22 += 2;
  }

  while (v20 != 6);
  v106 = 0x100000006;
  v104 = &unk_1F4CE1400;
  v107 = &v108;
  v105 = xmmword_1D0E84530;
  v108 = v68;
  v109 = v69;
  v25 = *(a1 + 32);
  sub_1D0BFD4AC(v103, v25, &v104);
  sub_1D0BFD4AC(&v64, v25, &v104);
  if (sub_1D0BFCF2C(&v64, &v125, &v130, &v120, &v115, &v110))
  {
    LOWORD(v64) = 12;
    LOBYTE(v39) = 4;
LABEL_34:
    cnprint::CNPrinter::Print(&v64, &v39, "time,%.3lf,h-function failure on line %d: %s() %s");
    return 0xFFFFFFFFLL;
  }

  sub_1D0BD2CA4(v101, **(a1 + 32), *(*(a1 + 32) + 8), *(*(a1 + 32) + 16));
  if ((v101[8] & 1) == 0)
  {
    LOWORD(v64) = 12;
    LOBYTE(v39) = 4;
    goto LABEL_34;
  }

  v98 = 0x300000003;
  v97 = xmmword_1D0E76C10;
  v96 = &unk_1F4CD5DD0;
  v99 = &v100;
  sub_1D0B894B0(&v96, &v102);
  v72 = 0x600000003;
  v70 = &unk_1F4CEB7D0;
  v73 = &v74;
  v71 = xmmword_1D0E9CBF0;
  v75 = 0u;
  v76 = 0;
  v78 = 0u;
  v79 = 0;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0;
  v74 = 0x3FF0000000000000;
  v77 = 0x3FF0000000000000;
  v80 = 0x3FF0000000000000;
  v88 = 0x600000003;
  v87 = xmmword_1D0E9CBF0;
  v86 = &unk_1F4CEB7D0;
  v89 = v90;
  sub_1D0B89390(&v96, &v70, &v86);
  v41 = 0x600000006;
  v39 = &unk_1F4CDF278;
  v40 = xmmword_1D0E7F320;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v42 = &v43;
  v43 = 0x3FF0000000000000;
  v47 = 0x3FF0000000000000uLL;
  v51 = 0x3FF0000000000000;
  v55 = 0x3FF0000000000000uLL;
  v59 = 0x3FF0000000000000;
  v66 = 0x600000006;
  v65 = xmmword_1D0E7F320;
  v63 = 0x3FF0000000000000;
  v64 = &unk_1F4CDF278;
  v67 = &v68;
  sub_1D0BA5A78(&v39, &v115, &v64);
  v93 = 0x600000003;
  v92 = xmmword_1D0E9CBF0;
  v91 = &unk_1F4CEB7D0;
  v94 = &v95;
  sub_1D0B89390(&v86, &v64, &v91);
  v41 = 0x100000003;
  v39 = &unk_1F4CDEB28;
  v40 = xmmword_1D0E7DCC0;
  v42 = &v43;
  sub_1D0B89390(&v91, v103, &v39);
  v26 = *v42;
  v27 = v42->f64[1];
  v28 = sqrt(vmuld_lane_f64(v27, *v42, 1) + v26.f64[0] * v26.f64[0]);
  *&v29 = 0x100000001;
  *(&v29 + 1) = 0x100000001;
  *(a4 + 8) = v29;
  **(a4 + 32) = v28 + **(a2 + 32);
  v88 = 0x300000001;
  v87 = xmmword_1D0E7F310;
  v30 = v90;
  v86 = &unk_1F4CDF248;
  v89 = v90;
  if (fabs(v28) <= 0.000000015)
  {
    if ((atomic_load_explicit(&qword_1EE054A80, memory_order_acquire) & 1) == 0)
    {
      v38 = v26;
      v37 = __cxa_guard_acquire(&qword_1EE054A80);
      v26 = v38;
      if (v37)
      {
        qword_1EE054A78 = 0x3FE6A09E667F3BCDLL;
        __cxa_guard_release(&qword_1EE054A80);
        v26 = v38;
      }
    }

    v31 = 1.0;
    if (v26.f64[0] <= 0.0)
    {
      v31 = 0.0;
      if (v26.f64[0] < 0.0)
      {
        v31 = -1.0;
      }
    }

    v30 = v89;
    *v89 = *&qword_1EE054A78 * v31;
    v32 = qword_1EE054A78;
    v33 = 1.0;
    if (v27 <= 0.0)
    {
      v33 = 0.0;
      if (v27 < 0.0)
      {
        v33 = -1.0;
      }
    }

    v30[1] = *&qword_1EE054A78 * v33;
    v34 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3CB0000000000000uLL), vabsq_f64(v26)));
    if ((v34.i32[0] | v34.i32[1]))
    {
      *v30 = v32;
      *(v30 + 1) = qword_1EE054A78;
    }
  }

  else
  {
    v90[0] = vdivq_f64(v26, vdupq_lane_s64(*&v28, 0));
  }

  v30[2] = 0.0;
  v66 = 0x600000001;
  v65 = xmmword_1D0E84600;
  v64 = &unk_1F4CEB818;
  v67 = &v68;
  sub_1D0B89390(&v86, &v91, &v64);
  sub_1D0B894B0(a5, &v64);
  result = 0;
  *(a5 + 8) = xmmword_1D0E9CBE0;
  v35 = *(a5 + 32);
  *(v35 + 48) = 0;
  *(v35 + 56) = 0;
  *&v36 = 0x100000001;
  *(&v36 + 1) = 0x100000001;
  *(a6 + 8) = v36;
  **(a6 + 32) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1D0DF32A4(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::PositionChangeEvent *a2)
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

  v45 = 0x100000003;
  *&v44[8] = xmmword_1D0E7DCC0;
  *v44 = &unk_1F4CDEB28;
  v46 = v47;
  v41 = 0x100000134;
  v39 = &unk_1F4CDEC90;
  v40 = xmmword_1D0E7DD20;
  v42 = v43;
  v36 = 0x100000003;
  v34 = &unk_1F4CDEB28;
  v35 = xmmword_1D0E7DCC0;
  v37 = v38;
  sub_1D0BFB1AC(a2 + 200, v44, &v39, &v34, "2");
  v5 = v4;
  v6 = *(a2 + 68);
  if (v6 < 1)
  {
    v8 = 0.0;
  }

  else
  {
    v7 = 0;
    v8 = 0.0;
    do
    {
      v8 = v8 + *(*(a2 + 37) + 8 * v7);
      v7 += *(a2 + 71) + 1;
      --v6;
    }

    while (v6);
  }

  v39 = (*(*a2 + 16))(a2);
  *&v40 = v10;
  *v44 = *(a2 + 104);
  v12 = CNTimeSpan::operator-(&v39, v44, *v44, v11);
  v14 = v13;
  v36 = 0x100000001;
  v34 = &unk_1F4CDF418;
  *&v15 = 0x100000001;
  *(&v15 + 1) = 0x100000001;
  v35 = v15;
  v37 = v38;
  v38[0] = v5;
  v31 = 0x100000001;
  v29 = &unk_1F4CDF418;
  v30 = v15;
  v32 = &v33;
  v33 = v8;
  sub_1D0BA002C(v44, 0);
  *v44 = &unk_1F4CEB928;
  v48 = 0.0;
  v47[0] = (*(*a2 + 16))(a2);
  v47[1] = v16;
  v48 = v14 + v12;
  v17 = (*(*a2 + 16))(a2);
  v19 = v18;
  v27 = v17;
  v28 = v18;
  if ((v30 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  v41 = 0x100000003;
  v39 = &unk_1F4CDEB28;
  v20 = v43;
  v42 = v43;
  *&v40 = v30 | 0x100000000;
  DWORD2(v40) = v30;
  HIDWORD(v40) = v30;
  if (v30 > 3)
  {
    v21 = &v43[v30];
    bzero(v43, 16 * ((v30 - 1) >> 1));
    *(v21 - 2) = 0;
    *(v21 - 1) = 0;
  }

  else if (v30)
  {
    bzero(v43, 8 * v30);
  }

  if (*(this + 8560))
  {
    if (*(this + 3624) == 174)
    {
      LOWORD(v50[0]) = 2;
      v49 = 2;
      cnprint::CNPrinter::Print(v50, &v49, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", v19 + v17);
    }

    else if (*(this + 8561) == 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(v20) <= 1)
      {
        LOWORD(v50[0]) = 2;
        v49 = 1;
        cnprint::CNPrinter::Print(v50, &v49, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", v19 + v17);
      }
    }

    else
    {
      v22 = sub_1D0B7C8AC(&v27, this + 1071);
      if (!v22)
      {
        v50[0] = 0;
        v50[1] = 0;
        sub_1D0DF8A74(v50, v44);
      }

      if (cnprint::CNPrinter::GetLogLevel(v22) <= 1)
      {
        LOWORD(v50[0]) = 2;
        v49 = 1;
        cnprint::CNPrinter::Print(v50, &v49, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", v28 + v27, *(this + 1072) + *(this + 1071));
      }
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(v20) <= 1)
  {
    LOWORD(v50[0]) = 2;
    v49 = 1;
    cnprint::CNPrinter::Print(v50, &v49, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", v19 + v17);
  }

  LOWORD(v50[0]) = 12;
  v49 = 4;
  v39 = (*(*a2 + 16))(a2);
  *&v40 = v23;
  v24 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v39, "Could not add measurement - 3D distance traveled from delta-position");
  if (*(this + 2735) >= 0)
  {
    v25 = v24;
  }

  else
  {
    v25 = *(this + 339);
  }

  cnprint::CNPrinter::Print(v50, &v49, "%s", v25);
  v9 = 0xFFFFFFFFLL;
  *v44 = &unk_1F4CE4300;
  if (SHIBYTE(v46) < 0)
  {
    operator delete(*&v44[16]);
  }

  return v9;
}

void sub_1D0DF3A9C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1D0DF3B08(uint64_t a1, uint64_t a2, void *lpsrc, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!lpsrc || (v11 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CEB8B8, 0)) == 0)
  {
    LOWORD(v86) = 12;
    LOBYTE(v81) = 4;
LABEL_26:
    cnprint::CNPrinter::Print(&v86, &v81, "time,%.3lf,h-function failure on line %d: %s() %s");
    return result;
  }

  v13 = *(a1 + 8);
  v12 = *(a1 + 12);
  if (v13 <= v12)
  {
    v14 = *(a1 + 12);
  }

  else
  {
    v14 = *(a1 + 8);
  }

  if (!v13 || !v12 || v14 != 8 || ((v16 = *(a2 + 8), v15 = *(a2 + 12), v16 <= v15) ? (v17 = *(a2 + 12)) : (v17 = *(a2 + 8)), !v16 || !v15 || v17 != 1))
  {
    LOWORD(v86) = 12;
    LOBYTE(v81) = 4;
    goto LABEL_26;
  }

  if (v11[7] <= 0.0)
  {
    LOWORD(v86) = 12;
    LOBYTE(v81) = 4;
    goto LABEL_26;
  }

  v18 = 0;
  v101 = *(v11 + 7);
  v98 = 0x100000006;
  v96 = &unk_1F4CE0BF8;
  v99 = v100;
  v97 = xmmword_1D0E84530;
  memset(v100, 0, sizeof(v100));
  v93 = 0x100000006;
  v92 = xmmword_1D0E84530;
  v91 = &unk_1F4CE0BF8;
  v94 = &v95;
  v88 = 0x600000006;
  v86 = &unk_1F4CDF278;
  v87 = xmmword_1D0E7F320;
  v89 = &v90;
  v83 = 0x600000006;
  v82 = xmmword_1D0E7F320;
  v81 = &unk_1F4CDF278;
  v84 = &v85;
  v19 = xmmword_1D0E7DD30;
  v20 = &v65 + 1;
  v21 = vdupq_n_s64(2uLL);
  v22 = vdupq_n_s64(6uLL);
  do
  {
    if (vmovn_s64(vcgtq_u64(v22, v19)).u8[0])
    {
      *(v20 - 1) = v18;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v19)).i32[1])
    {
      *v20 = v18 + 1;
    }

    v18 += 2;
    v19 = vaddq_s64(v19, v21);
    v20 += 2;
  }

  while (v18 != 6);
  v77 = 0x100000006;
  v75 = &unk_1F4CE1400;
  v78 = &v79;
  v76 = xmmword_1D0E84530;
  v79 = v65;
  v80 = v66;
  v23 = *(a1 + 32);
  sub_1D0BFD4AC(v74, v23, &v75);
  sub_1D0BFD4AC(&v61, v23, &v75);
  if (sub_1D0BFCF2C(&v61, &v96, &v101, &v91, &v86, &v81))
  {
    LOWORD(v61) = 12;
    LOBYTE(v36) = 4;
    cnprint::CNPrinter::Print(&v61, &v36, "time,%.3lf,h-function failure on line %d: %s() %s");
  }

  else
  {
    if ((atomic_load_explicit(&qword_1EE054A88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054A88))
    {
      v63 = 0x300000001;
      v61 = &unk_1F4CDF0C8;
      v64 = &v65;
      v62 = xmmword_1D0E7F310;
      *&v65 = 0x100000000;
      DWORD2(v65) = 2;
      sub_1D0D2CF48(&v61, &unk_1EE054B30);
      __cxa_atexit(sub_1D0D26840, &unk_1EE054B30, &dword_1D0B71000);
      __cxa_guard_release(&qword_1EE054A88);
    }

    v38 = 0x600000006;
    v36 = &unk_1F4CDF278;
    v37 = xmmword_1D0E7F320;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v39 = &v40;
    v40 = 0x3FF0000000000000;
    v44 = 0x3FF0000000000000uLL;
    v48 = 0x3FF0000000000000;
    v52 = 0x3FF0000000000000uLL;
    v56 = 0x3FF0000000000000;
    v63 = 0x600000006;
    v62 = xmmword_1D0E7F320;
    v60 = 0x3FF0000000000000;
    v61 = &unk_1F4CDF278;
    v64 = &v65;
    sub_1D0BA5A78(&v36, &v86, &v61);
    sub_1D0DF855C(&v67, &v61);
    sub_1D0DF88BC(v73, &v67);
    v38 = 0x100000003;
    v36 = &unk_1F4CDEB28;
    v37 = xmmword_1D0E7DCC0;
    v39 = &v40;
    sub_1D0B89390(v73, v74, &v36);
    v25 = *v39;
    v26 = v39[1].f64[0];
    v27 = v39->f64[1];
    v28 = sqrt(vmuld_lane_f64(v27, *v39, 1) + v25.f64[0] * v25.f64[0] + v26 * v26);
    *&v29 = 0x100000001;
    *(&v29 + 1) = 0x100000001;
    *(a4 + 8) = v29;
    **(a4 + 32) = v28 + **(a2 + 32);
    v69 = 0x300000001;
    v68 = xmmword_1D0E7F310;
    v67 = &unk_1F4CDF248;
    v70 = &v71;
    if (fabs(v28) <= 0.000000015)
    {
      if (v25.f64[0] <= 0.0)
      {
        v30 = -0.577350269;
        if (v25.f64[0] >= 0.0)
        {
          v30 = 0.0;
        }
      }

      else
      {
        v30 = 0.577350269;
      }

      v71.f64[0] = v30;
      v31 = v27 < 0.0;
      if (v27 <= 0.0)
      {
        v32 = -0.577350269;
        if (!v31)
        {
          v32 = 0.0;
        }
      }

      else
      {
        v32 = 0.577350269;
      }

      v71.f64[1] = v32;
      if (v26 <= 0.0)
      {
        v33 = -0.577350269;
        if (v26 >= 0.0)
        {
          v33 = 0.0;
        }
      }

      else
      {
        v33 = 0.577350269;
      }

      v72 = v33;
      if (fabs(v25.f64[0]) < 2.22044605e-16)
      {
        v25.f64[0] = v26;
        v34 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3CB0000000000000uLL), vabsq_f64(v25)));
        if (v34.i8[4] & 1) != 0 && (v34.i8[0])
        {
          v71 = vdupq_n_s64(0x3FE279A74590331CuLL);
          v72 = 0.577350269;
        }
      }
    }

    else
    {
      v71 = vdivq_f64(v25, vdupq_lane_s64(*&v28, 0));
      v72 = v26 / v28;
    }

    v63 = 0x600000001;
    v62 = xmmword_1D0E84600;
    v61 = &unk_1F4CEB818;
    v64 = &v65;
    sub_1D0B89390(&v67, v73, &v61);
    sub_1D0B894B0(a5, &v61);
    *(a5 + 8) = xmmword_1D0E9CBE0;
    v35 = *(a5 + 32);
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    result.n128_u64[0] = 0x100000001;
    result.n128_u64[1] = 0x100000001;
    *(a6 + 8) = result;
    **(a6 + 32) = 0x3FF0000000000000;
  }

  return result;
}

uint64_t sub_1D0DF4338(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::PositionEvent *a2)
{
  v61[9] = *MEMORY[0x1E69E9840];
  if (*(this + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 58) != 1)
  {
    return 0;
  }

  IsPositionMeasurementUsable = raven::RavenEstimator::IsPositionMeasurementUsable(this, a2);
  if (!IsPositionMeasurementUsable)
  {
    if (cnprint::CNPrinter::GetLogLevel(IsPositionMeasurementUsable) <= 1)
    {
      LOWORD(v55) = 12;
      LOBYTE(v50) = 1;
      *&v29 = (*(*a2 + 16))(a2);
      *(&v29 + 1) = v15;
      cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v29, "WiFi position measurement not used in non-dense urban fitness case");
      if (*(this + 2735) >= 0)
      {
        v16 = this + 2712;
      }

      else
      {
        v16 = *(this + 339);
      }

      cnprint::CNPrinter::Print(&v55, &v50, "%s", v16);
    }

    return 0;
  }

  v55 = &unk_1F4CEF748;
  memcpy(v56, a2 + 8, sizeof(v56));
  v52 = 0x300000003;
  v51 = xmmword_1D0E76C10;
  v50 = &unk_1F4CD5DD0;
  v53 = &v54;
  if (!sub_1D0C1A564(&v55, &v50))
  {
    return 0xFFFFFFFFLL;
  }

  v46 = 0x100000003;
  v45 = xmmword_1D0E7DCC0;
  v44 = &unk_1F4CDEB28;
  v47 = &v48;
  v48 = *(&v56[17] + 8);
  v49 = *(&v56[18] + 1);
  v5 = v56[6];
  v43 = v56[6];
  sub_1D0BA002C(&v39, 24);
  v39 = &unk_1F4CEB678;
  v42 = v43;
  v6 = LOBYTE(v56[12]);
  if (LOBYTE(v56[12]) == 14)
  {
    if ((*(*this + 144))(this))
    {
      sub_1D0BBDAB8(this + 2864, v37);
      v34 = 0x100000003;
      v33 = xmmword_1D0E7DCC0;
      v32 = &unk_1F4CDEB28;
      v35 = v36;
      v36[0] = *v38;
      v36[1] = v38[1];
      v36[2] = v38[2];
      sub_1D0BA5FC4(this + 2864, &v29);
      v59 = 0x300000003;
      v57 = &unk_1F4CD5DD0;
      v58 = xmmword_1D0E76C10;
      v60 = v61;
      v61[0] = *__p.__r_.__value_.__r.__words[2];
      v7 = (__p.__r_.__value_.__r.__words[2] + 8 * SHIDWORD(__p.__r_.__value_.__r.__words[0]));
      v61[3] = *v7;
      v8 = (__p.__r_.__value_.__r.__words[2] + 16 * SHIDWORD(__p.__r_.__value_.__r.__words[0]));
      v61[6] = *v8;
      v61[1] = *v7;
      v61[4] = v7[1];
      v9 = (2 * HIDWORD(__p.__r_.__value_.__r.__words[0])) | 1;
      v61[7] = *(__p.__r_.__value_.__r.__words[2] + 8 * v9);
      v61[2] = *v8;
      v61[5] = *(__p.__r_.__value_.__r.__words[2] + 8 * v9);
      v61[8] = v8[2];
      v28 = 1.0;
      ShouldInflatePositionStateUncertaintyForVL = raven::RavenEstimator::ShouldInflatePositionStateUncertaintyForVL(this, &v44, &v50, &v32, &v57, &v28);
      if (ShouldInflatePositionStateUncertaintyForVL)
      {
        if (cnprint::CNPrinter::GetLogLevel(ShouldInflatePositionStateUncertaintyForVL) <= 1)
        {
          v27 = 12;
          v26 = 1;
          v23 = v56[0];
          v11 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v23, "kVLF Inflate Position State Uncertainty, sf,%.3lf", v28);
          if (*(this + 2735) >= 0)
          {
            v12 = v11;
          }

          else
          {
            v12 = *(this + 339);
          }

          cnprint::CNPrinter::Print(&v27, &v26, "%s", v12);
        }

        raven::RavenConvergenceEstimator::InflatePositionUncertainty(this, v28);
      }

      sub_1D0BA002C(&v23, 31);
      *&v23 = &unk_1F4CEB6B8;
      v40 = DWORD2(v23);
      std::string::operator=(&v41, &v24);
      v42 = v25;
      *&v23 = &unk_1F4CE4300;
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      v13 = v24.__r_.__value_.__r.__words[0];
      goto LABEL_28;
    }

    v6 = LOBYTE(v56[12]);
  }

  if (v6 == 15)
  {
    sub_1D0BA002C(&v29, 30);
    *&v29 = &unk_1F4CEB6F8;
    v40 = DWORD2(v29);
    std::string::operator=(&v41, &__p);
    v42 = v31[0];
    *&v29 = &unk_1F4CE4300;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_29:
      v42 = v43;
      goto LABEL_30;
    }

    v13 = __p.__r_.__value_.__r.__words[0];
LABEL_28:
    operator delete(v13);
    goto LABEL_29;
  }

LABEL_30:
  if ((v51 & 0x80000000) != 0)
  {
    __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
  }

  __p.__r_.__value_.__l.__size_ = 0x100000003;
  *&v29 = &unk_1F4CDEB28;
  v18 = v31;
  __p.__r_.__value_.__r.__words[2] = v31;
  *(&v29 + 1) = v51 | 0x100000000;
  LODWORD(__p.__r_.__value_.__l.__data_) = v51;
  HIDWORD(__p.__r_.__value_.__r.__words[0]) = v51;
  if (v51 > 3)
  {
    v19 = v31 + 8 * v51;
    bzero(v31, 16 * ((v51 - 1) >> 1));
    *(v19 - 2) = 0;
    *(v19 - 1) = 0;
  }

  else if (v51)
  {
    bzero(v31, 8 * v51);
  }

  if (*(this + 8560))
  {
    if (*(this + 3624) == 174)
    {
      LOWORD(v57) = 2;
      v37[0] = 2;
      cnprint::CNPrinter::Print(&v57, v37, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", *(&v5 + 1) + v5);
    }

    else if (*(this + 8561) == 1)
    {
      if (cnprint::CNPrinter::GetLogLevel(v18) <= 1)
      {
        LOWORD(v57) = 2;
        v37[0] = 1;
        cnprint::CNPrinter::Print(&v57, v37, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", *(&v5 + 1) + v5);
      }
    }

    else
    {
      v20 = sub_1D0B7C8AC(&v43, this + 1071);
      if (!v20)
      {
        v57 = 0;
        *&v58 = 0;
        sub_1D0DF8D98(&v57, &v39);
      }

      if (cnprint::CNPrinter::GetLogLevel(v20) <= 1)
      {
        LOWORD(v57) = 2;
        v37[0] = 1;
        cnprint::CNPrinter::Print(&v57, v37, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", *(&v43 + 1) + v43, *(this + 1072) + *(this + 1071));
      }
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(v18) <= 1)
  {
    LOWORD(v57) = 2;
    v37[0] = 1;
    cnprint::CNPrinter::Print(&v57, v37, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", *(&v5 + 1) + v5);
  }

  LOWORD(v57) = 12;
  v37[0] = 4;
  v29 = v56[0];
  v21 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, &v29, "Could not add measurement - position, src,%d", LOBYTE(v56[12]));
  if (*(this + 2735) >= 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = *(this + 339);
  }

  cnprint::CNPrinter::Print(&v57, v37, "%s", v22);
  v14 = 0xFFFFFFFFLL;
  v39 = &unk_1F4CE4300;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_1D0DF4D40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1D0C537DC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0DF4E2C(uint64_t a1, uint64_t a2, void *lpsrc, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (lpsrc && (v11 = __dynamic_cast(lpsrc, &unk_1F4CE42A0, &unk_1F4CEB690, 0)) != 0)
  {
    v13 = *(a1 + 8);
    v12 = *(a1 + 12);
    if (v13 <= v12)
    {
      v14 = *(a1 + 12);
    }

    else
    {
      v14 = *(a1 + 8);
    }

    if (v13 && v12 && v14 == 8)
    {
      v16 = *(a2 + 8);
      v15 = *(a2 + 12);
      v17 = v16 <= v15 ? *(a2 + 12) : *(a2 + 8);
      if (v16 && v15 && v17 == 3)
      {
        *(a4 + 8) = xmmword_1D0E7DCC0;
        v18 = *(a1 + 32);
        v19 = *(a2 + 32);
        v20 = *(a4 + 32);
        *v20 = *v18 + *v19;
        v20[1] = v18[1] + v19[1];
        v20[2] = v18[2] + v19[2];
        v26 = 0x800000003;
        v24 = &unk_1F4CEB950;
        v27 = v28;
        v25 = xmmword_1D0E9CC00;
        memset(v28, 0, sizeof(v28));
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        sub_1D0B894B0(a5, &v24);
        v21 = *(a5 + 32);
        *v21 = 0x3FF0000000000000;
        v22 = *(a5 + 20);
        v21[v22 + 1] = 0x3FF0000000000000;
        v21[2 * v22 + 2] = 0x3FF0000000000000;
        v26 = 0x300000003;
        v24 = &unk_1F4CD5DD0;
        v25 = xmmword_1D0E76C10;
        memset(v28 + 8, 0, 24);
        memset(&v28[2] + 8, 0, 24);
        v27 = v28;
        *&v28[0] = 0x3FF0000000000000;
        *&v28[2] = 0x3FF0000000000000;
        *&v29 = 0x3FF0000000000000;
        sub_1D0B894B0(a6, &v24);
        return 0;
      }
    }

    LOWORD(v24) = 12;
    v37 = 4;
    cnprint::CNPrinter::Print(&v24, &v37, "time,%.3lf,h-function failure on line %d: %s() %s", v11[6] + *(v11 + 5), 1952, "h_Position_RavenConvergence", "inadequate matrices");
  }

  else
  {
    LOWORD(v24) = 12;
    v37 = 4;
    cnprint::CNPrinter::Print(&v24, &v37, "time,%.3lf,h-function failure on line %d: %s() %s", MEMORY[0x30] + MEMORY[0x28], 1938, "h_Position_RavenConvergence", "dynamic_cast failed");
  }

  return 0xFFFFFFFFLL;
}

void raven::RavenConvergenceEstimator::InflatePositionUncertainty(const char **this, double a2)
{
  if ((atomic_load_explicit(&qword_1EE054A60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054A60))
  {
    v9 = 0x300000001;
    *v8 = &unk_1F4CDF0C8;
    v10 = &v11;
    *&v8[8] = xmmword_1D0E7F310;
    v11 = 0x100000000;
    v12 = 2;
    sub_1D0D2CF48(v8, &unk_1EE054AC0);
    __cxa_atexit(sub_1D0D26840, &unk_1EE054AC0, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE054A60);
  }

  sub_1D0DFA2A8(v8, &unk_1EE054AC0);
  sub_1D0B751F4(__p, "InflatePositionUncertainty");
  raven::RavenConvergenceEstimator::InflateUncertainties(this);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  LOWORD(__p[0]) = 12;
  v5 = 2;
  *v8 = *(this + 5);
  v3 = cnprint::CNLogFormatter::FormatGeneral((this + 339), v8, "Inflating estimator variance of position states.");
  if (*(this + 2735) >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = this[339];
  }

  cnprint::CNPrinter::Print(__p, &v5, "%s", v4);
}

uint64_t sub_1D0DF5294(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0DF52E4(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1D0DF5334(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

double sub_1D0DF5384(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 296) == 1)
  {
    if (*(a2 + 8) == 3 && *(a2 + 12) == 3)
    {
      v3 = *(a2 + 20);
    }

    else
    {
      *(a2 + 8) = xmmword_1D0E76C10;
      v3 = 3;
    }

    v4 = *(a2 + 32);
    *v4 = *(a1 + 328);
    v5 = &v4[v3];
    *v5 = *(a1 + 336);
    v6 = &v4[2 * v3];
    *v6 = *(a1 + 344);
    v4[1] = *(a1 + 336);
    v5[1] = *(a1 + 352);
    v4[(2 * v3) | 1] = *(a1 + 360);
    v4[2] = *(a1 + 344);
    v5[2] = *(a1 + 360);
    result = *(a1 + 368);
    v6[2] = result;
  }

  return result;
}

uint64_t sub_1D0DF5420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

  v10 = !v9 && v8 == 8;
  if (v10 && ((v11 = *(a2 + 8), v12 = *(a2 + 12), v11 <= v12) ? (v13 = *(a2 + 12)) : (v13 = *(a2 + 8)), v11 ? (v14 = v12 == 0) : (v14 = 1), !v14 ? (v15 = v13 == 1) : (v15 = 0), v15))
  {
    v19 = *(a1 + 32);
    v21 = v19[3];
    v20 = v19[4];
    v22 = v19[5];
    v23 = sqrt(v20 * v20 + v21 * v21 + v22 * v22);
    *&v24 = 0x100000001;
    *(&v24 + 1) = 0x100000001;
    *(a4 + 8) = v24;
    **(a4 + 32) = v23 + **(a2 + 32);
    v31 = 0x800000001;
    v29 = &unk_1F4CEC348;
    v32 = v33;
    v30 = xmmword_1D0E9CBE0;
    memset(v33, 0, sizeof(v33));
    sub_1D0B894B0(a5, &v29);
    v25 = *(a5 + 20);
    v26 = *(a5 + 32);
    if (fabs(v23) <= 0.000000015)
    {
      *(v26 + 24 * v25) = 0x3FE279A745904047;
      *(v26 + 32 * v25) = 0x3FE279A745904047;
      v27 = 0.577350269;
    }

    else
    {
      *(v26 + 24 * v25) = v21 / v23;
      *(v26 + 32 * v25) = v20 / v23;
      v27 = v22 / v23;
    }

    *(v26 + 40 * v25) = v27;
    v31 = 0x100000001;
    v29 = &unk_1F4CDF418;
    *&v28 = 0x100000001;
    *(&v28 + 1) = 0x100000001;
    v30 = v28;
    v32 = v33;
    *&v33[0] = 0x3FF0000000000000;
    sub_1D0B894B0(a6, &v29);
    return 0;
  }

  else
  {
    LOWORD(v29) = 12;
    v34 = 4;
    cnprint::CNPrinter::Print(&v29, &v34, "time,%.3lf,h-function failure on line %d: %s() %s", *(a3 + 48) + *(a3 + 40), 2019, "h_UserSpeed_RavenConvergence", "inadequate matrices");
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_1D0DF5644(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void raven::RavenConvergenceEstimator::InflateUncertainties(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v5 = v1;
  if (v3 < 1.0 || (*&v3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    LOWORD(v140) = 12;
    v134[0] = 4;
    *v145 = *(v1 + 80);
    v49 = cnprint::CNLogFormatter::FormatGeneral(v1 + 2712, v145, "%s failed, invalid inflation factor, %.6lf.");
LABEL_56:
    if (*(v5 + 2735) >= 0)
    {
      v50 = v49;
    }

    else
    {
      v50 = *(v5 + 2712);
    }

    cnprint::CNPrinter::Print(&v140, v134, "%s", v50);
    return;
  }

  v6 = v2;
  v142 = 0x100000008;
  v141 = xmmword_1D0E84520;
  v140 = &unk_1F4CE43F8;
  v143 = v144;
  v146 = 0x100000008;
  *&v145[8] = xmmword_1D0E84520;
  *v145 = &unk_1F4CEB998;
  v147 = v148;
  sub_1D0D94A44(v2, &v140, v145);
  v7 = *v143;
  v142 = 0x100000008;
  v141 = xmmword_1D0E84520;
  v140 = &unk_1F4CE43F8;
  v143 = v144;
  v146 = 0x100000008;
  *&v145[8] = xmmword_1D0E84520;
  *v145 = &unk_1F4CEB998;
  v147 = v148;
  sub_1D0D94D8C(v6, &v140, v145);
  if (v7 > 7 || *v143 >= 8)
  {
    LOWORD(v140) = 12;
    v134[0] = 4;
    *v145 = *(v5 + 80);
    v49 = cnprint::CNLogFormatter::FormatGeneral(v5 + 2712, v145, "%s failed, invalid specified states, min state %d, max state %d.");
    goto LABEL_56;
  }

  *(v5 + 112) = *(v5 + 80);
  v8 = *(v6 + 8);
  v137 = 0x100000008;
  v136 = xmmword_1D0E84520;
  v135 = &unk_1F4CE4320;
  v138 = &v139;
  v9 = 768;
  if (!*(v5 + 4404))
  {
    v9 = 8;
  }

  sub_1D0B894B0(&v135, v5 + 2864 + v9);
  sub_1D0BA5FC4(v5 + 2864, v134);
  sub_1D0BA4EA4(&v135, v6, v129);
  v130 = v8;
  v131 = 1;
  v132 = v8;
  v133 = v8;
  sub_1D0D8D744(v134, v6, v6, &v101);
  v111 = 0x800000008;
  v109 = &unk_1F4CE43B0;
  v110 = xmmword_1D0E84510;
  v112 = &v113;
  v145[0] = 0;
  sub_1D0B9F748(&v101, &v109, v145);
  v116 = 0x800000008;
  v114 = &unk_1F4CE43B0;
  v115 = xmmword_1D0E84510;
  v117 = v118;
  v142 = 0x100000008;
  v141 = xmmword_1D0E84520;
  v140 = &unk_1F4CE43F8;
  v143 = v144;
  v146 = 0x100000020;
  *&v145[8] = xmmword_1D0E84540;
  *v145 = &unk_1F4CE3988;
  v147 = v148;
  sub_1D0B9F868(&v109, &v140, v145, &v114);
  v10 = DWORD1(v115);
  v11 = v115;
  v121 = 0x800000008;
  v119 = &unk_1F4CE43B0;
  v122 = v123;
  *&v120 = __PAIR64__(v115, DWORD1(v115));
  DWORD2(v120) = v115 * DWORD1(v115);
  HIDWORD(v120) = DWORD1(v115);
  if (DWORD1(v115))
  {
    v12 = 0;
    v13 = 0;
    v14 = HIDWORD(v115);
    v15 = v117;
    do
    {
      v16 = v12;
      v17 = v13;
      for (i = v11; i; --i)
      {
        v123[v17] = *&v15[2 * v16];
        v17 += v10;
        ++v16;
      }

      ++v13;
      v12 += v14;
    }

    while (v13 != v10);
  }

  v126 = 0x100000008;
  v125 = xmmword_1D0E84520;
  v124 = &unk_1F4CE4320;
  v127 = v128;
  v146 = 0x800000008;
  *&v145[8] = xmmword_1D0E84510;
  *v145 = &unk_1F4CE43B0;
  v147 = v148;
  v142 = 0x800000008;
  v141 = xmmword_1D0E84510;
  v140 = &unk_1F4CE43B0;
  v143 = v144;
  sub_1D0B9FACC(&v119, &v124, v145, &v140);
  v126 = 0x800000008;
  v125 = xmmword_1D0E84510;
  v124 = &unk_1F4CE43B0;
  v127 = v128;
  v19.f64[0] = 1.0 / v4;
  sub_1D0BC5ED4(&v140, &v124, v19);
  LODWORD(v125) = v8;
  DWORD1(v125) = v8;
  DWORD2(v125) = v8 * v8;
  HIDWORD(v125) = v8;
  v20 = *(v6 + 8);
  v21 = *(v6 + 12);
  v121 = 0x100000008;
  v119 = &unk_1F4CE4320;
  v120 = xmmword_1D0E84520;
  v122 = v123;
  sub_1D0B89390(&v124, v129, &v119);
  if (v20 <= v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v20;
  }

  if (v21)
  {
    v24 = v20 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  if (!*(v5 + 4404))
  {
    sub_1D0B894B0(v5 + 3632, v5 + 2872);
    sub_1D0B894B0(v5 + 3736, v5 + 2976);
    *&v22 = sub_1D0B894B0(v5 + 4288, v5 + 3528).n128_u64[0];
  }

  *(v5 + 4404) = 1;
  if (!*(v6 + 8) || !*(v6 + 12))
  {
    sub_1D0B894B0(v5 + 2872, v5 + 3632);
    sub_1D0B894B0(v5 + 2976, v5 + 3736);
    sub_1D0B894B0(v5 + 3528, v5 + 4288);
    *(v5 + 4404) = 1;
    return;
  }

  *(v5 + 4400) = 0;
  v26 = *(v5 + 3640);
  v27 = *(v5 + 3644);
  if (v26 <= v27)
  {
    v28 = *(v5 + 3644);
  }

  else
  {
    v28 = *(v5 + 3640);
  }

  if (v27)
  {
    v29 = v26 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v28;
  }

  v100 = v25;
  if (v25 >= 1)
  {
    v31 = 0;
    v32 = (v5 + 4568);
    do
    {
      v33 = *(*(v6 + 32) + v31);
      if (v33 < 0 || v33 >= v30)
      {
        *v145 = 2;
        LOBYTE(v140) = 4;
        cnprint::CNLogFormatter::FormatGeneral(v32, "ResetStates(): states must contain valid indices into x, Rxx, and zx.", v22);
        if (*(v5 + 4591) >= 0)
        {
          v34 = (v5 + 4568);
        }

        else
        {
          v34 = *v32;
        }

        cnprint::CNPrinter::Print(v145, &v140, "%s", v34);
      }

      v31 += 4;
    }

    while (4 * v100 != v31);
  }

  v146 = 0x800000001;
  *v145 = &unk_1F4CE13B8;
  v147 = v148;
  v35 = v30 - 1;
  if (v30 == 1)
  {
    v46 = 0;
    *&v51 = 0x100000001;
    *(&v51 + 1) = 0x100000001;
    *&v145[8] = v51;
    v148[0] = 0;
    v47 = 1;
    v48 = 1;
    v37 = v5 + 2864;
    v36 = v5;
    v38 = v100;
  }

  else
  {
    v37 = v5 + 2864;
    v36 = v5;
    v38 = v100;
    if (v30 <= 0)
    {
      v47 = 0;
      v48 = 0;
      *&v145[8] = 0;
      *&v145[16] = 0;
      v46 = 1;
    }

    else
    {
      v39 = 0;
      *&v145[16] = v30;
      *&v145[20] = 1;
      v40 = vdupq_n_s64(v30 - 1);
      v41 = xmmword_1D0E84440;
      v42 = xmmword_1D0E7DD30;
      v43 = vdupq_n_s64(4uLL);
      v44 = v149;
      *&v145[8] = 1;
      *&v145[12] = v30;
      do
      {
        v45 = vmovn_s64(vcgeq_u64(v40, v42));
        if (vuzp1_s16(v45, *v40.i8).u8[0])
        {
          *(v44 - 3) = v39;
        }

        if (vuzp1_s16(v45, *&v40).i8[2])
        {
          *(v44 - 2) = v39 + 1;
        }

        if (vuzp1_s16(*&v40, vmovn_s64(vcgeq_u64(v40, *&v41))).i32[1])
        {
          *(v44 - 1) = v39 + 2;
          *v44 = v39 + 3;
        }

        v39 += 4;
        v41 = vaddq_s64(v41, v43);
        v42 = vaddq_s64(v42, v43);
        v44 += 4;
      }

      while (((v30 + 3) & 0xFFFFFFFC) != v39);
      v46 = 0;
      v47 = 1;
      v48 = v30;
    }
  }

  v116 = 0x100000008;
  v114 = &unk_1F4CE43F8;
  v117 = v118;
  *&v115 = __PAIR64__(v47, v48);
  DWORD2(v115) = v48 * v47;
  HIDWORD(v115) = v48;
  if (v48)
  {
    v52 = 0;
    for (j = 0; j != v48; ++j)
    {
      if ((v46 & 1) == 0)
      {
        v54 = 0;
        do
        {
          v118[j + HIDWORD(v115) * v54] = v148[v52 + v54];
          ++v54;
        }

        while (v47 != v54);
      }

      v52 += v47;
    }
  }

  if (v38 >= 1)
  {
    v55 = *(v6 + 32);
    v56 = v38;
    do
    {
      v57 = *v55++;
      v118[v57] = -1;
      --v56;
    }

    while (v56);
  }

  sub_1D0BFC4C8(&v109, v30, 1);
  v146 = 0x800000001;
  *v145 = &unk_1F4CE13B8;
  v147 = v148;
  if (v38 == 1)
  {
    v58 = 0;
    *&v59 = 0x100000001;
    *(&v59 + 1) = 0x100000001;
    *&v145[8] = v59;
    v148[0] = 0;
    v60 = 1;
    v61 = 1;
  }

  else if (v38 <= 0)
  {
    v60 = 0;
    v61 = 0;
    *&v145[8] = 0;
    *&v145[16] = 0;
    v58 = 1;
  }

  else
  {
    v62 = 0;
    *&v145[16] = v38;
    *&v145[20] = 1;
    v63 = vdupq_n_s64(v38 - 1);
    v64 = xmmword_1D0E84440;
    v65 = xmmword_1D0E7DD30;
    v66 = vdupq_n_s64(4uLL);
    v67 = v149;
    *&v145[8] = 1;
    *&v145[12] = v38;
    do
    {
      v68 = vmovn_s64(vcgeq_u64(v63, v65));
      if (vuzp1_s16(v68, *v63.i8).u8[0])
      {
        *(v67 - 3) = v62;
      }

      if (vuzp1_s16(v68, *&v63).i8[2])
      {
        *(v67 - 2) = v62 + 1;
      }

      if (vuzp1_s16(*&v63, vmovn_s64(vcgeq_u64(v63, *&v64))).i32[1])
      {
        *(v67 - 1) = v62 + 2;
        *v67 = v62 + 3;
      }

      v62 += 4;
      v64 = vaddq_s64(v64, v66);
      v65 = vaddq_s64(v65, v66);
      v67 += 4;
    }

    while (((v38 + 3) & 0xFFFFFFFC) != v62);
    v58 = 0;
    v60 = 1;
    v61 = v38;
  }

  v106 = 0x100000008;
  v101 = &unk_1F4CE43F8;
  v107 = v108;
  v102 = v61;
  v103 = v60;
  v104 = v61 * v60;
  v105 = v61;
  if (v61)
  {
    v69 = 0;
    for (k = 0; k != v61; ++k)
    {
      if ((v58 & 1) == 0)
      {
        v71 = 0;
        do
        {
          v108[k + v105 * v71] = v148[v69 + v71];
          ++v71;
        }

        while (v60 != v71);
      }

      v69 += v60;
    }
  }

  sub_1D0DF9968(v145, &v109, &v101);
  sub_1D0DF927C(v145, *(v6 + 16), *(v6 + 32));
  v72 = v30 - v38;
  if (v30 > v38)
  {
    LODWORD(v73) = 0;
    v74 = v117;
    v75 = v112;
    v76 = v38;
    do
    {
      v73 = v73;
      do
      {
        v77 = v74[v73++];
      }

      while (v77 == -1);
      *(v75 + v76++) = v77;
    }

    while (v76 != v30);
  }

  sub_1D0DF9330(v37, v30, &v109);
  sub_1D0DFA168(v158, &v101);
  v146 = 0x800000001;
  *v145 = &unk_1F4CE13B8;
  v147 = v148;
  v78 = (v35 - v38);
  if (v35 == v38)
  {
    *&v79 = 0x100000001;
    *(&v79 + 1) = 0x100000001;
    *&v145[8] = v79;
    v148[0] = v38;
    v80 = 1;
    v81 = 1;
  }

  else if (v35 - v38 < 0)
  {
    v80 = 0;
    v81 = 0;
    *&v145[8] = 0;
    *&v145[16] = 0;
    LOBYTE(v78) = 1;
  }

  else
  {
    v81 = v78 + 1;
    *&v145[8] = 1;
    *&v145[12] = v78 + 1;
    *&v145[16] = v78 + 1;
    *&v145[20] = 1;
    v82 = vdupq_n_s64(v78);
    v83 = v149;
    v84 = (4 * ~(v78 >> 2)) | 0xFFFFFFFF80000000;
    v85 = xmmword_1D0E84440;
    v86 = xmmword_1D0E7DD30;
    v87 = 13;
    v88 = vdupq_n_s64(4uLL);
    do
    {
      v89 = vmovn_s64(vcgeq_u64(v82, v86));
      if (vuzp1_s16(v89, *v82.i8).u8[0])
      {
        *(v83 - 3) = v38 + v87 - 13;
      }

      if (vuzp1_s16(v89, *&v82).i8[2])
      {
        *(v83 - 2) = v38 + v87 - 12;
      }

      if (vuzp1_s16(*&v82, vmovn_s64(vcgeq_u64(v82, *&v85))).i32[1])
      {
        *(v83 - 1) = v38 + v87 - 11;
        *v83 = v38 + v87 - 10;
      }

      v85 = vaddq_s64(v85, v88);
      v86 = vaddq_s64(v86, v88);
      v87 += 4;
      v83 += 4;
    }

    while (v84 + v87 != 13);
    LOBYTE(v78) = 0;
    v80 = 1;
  }

  v155 = 0x100000008;
  v150 = &unk_1F4CE43F8;
  v156 = v157;
  v151 = v81;
  v152 = v80;
  v153 = v81 * v80;
  v154 = v81;
  if (v81)
  {
    v90 = 0;
    for (m = 0; m != v81; ++m)
    {
      if ((v78 & 1) == 0)
      {
        v92 = 0;
        do
        {
          v157[m + v154 * v92] = v148[v90 + v92];
          ++v92;
        }

        while (v80 != v92);
      }

      v90 += v80;
    }
  }

  sub_1D0BA4B2C(v145, v36 + 3632, &v101);
  sub_1D0BA556C(v145, v129);
  sub_1D0BA16B8(v145, v36 + 3736, v158, v158);
  sub_1D0B9F65C(v145, &v124);
  if ((v38 & 0x80000000) != 0)
  {
    v98 = "nr >= 0";
    v99 = 3098;
    goto LABEL_127;
  }

  if (v72 < 0)
  {
    v98 = "nc >= 0";
    v99 = 3099;
LABEL_127:
    __assert_rtn("Zeros", "cnmatrix.h", v99, v98);
  }

  v142 = 0x800000008;
  v140 = &unk_1F4CE43B0;
  v143 = v144;
  v93 = v72 * v38;
  LODWORD(v141) = v38;
  DWORD1(v141) = v30 - v38;
  DWORD2(v141) = v72 * v38;
  HIDWORD(v141) = v38;
  if (v72 * v38 > 3)
  {
    v94 = &v144[v93];
    bzero(v144, 16 * ((v93 - 1) >> 1));
    *(v94 - 2) = 0;
    *(v94 - 1) = 0;
  }

  else if (v93 >= 1)
  {
    bzero(v144, 8 * (v72 * v38));
  }

  sub_1D0BA16B8(v145, v36 + 3736, v158, &v150);
  sub_1D0B9F65C(v145, &v140);
  sub_1D0BA4B2C(v145, v36 + 4288, &v101);
  sub_1D0BA556C(v145, &v119);
  sub_1D0BFC4C8(v145, v30, 1);
  if (v30 >= 1)
  {
    v95 = 0;
    v96 = v112;
    v97 = v147;
    do
    {
      v97[*(v96 + v95)] = v95;
      ++v95;
    }

    while (v30 != v95);
  }

  sub_1D0DF9330(v37, v30, v145);
}

uint64_t sub_1D0DF6610(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x800000008;
  *a1 = &unk_1F4CE43B0;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0BD2018(a2, a1);
}

void raven::RavenConvergenceEstimator::InflateVelocityUncertainty(raven::RavenConvergenceEstimator *this, double a2)
{
  if ((atomic_load_explicit(&qword_1EE054A68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054A68))
  {
    v9 = 0x300000001;
    *v8 = &unk_1F4CDF0C8;
    v10 = &v11;
    *&v8[8] = xmmword_1D0E7F310;
    v11 = 0x400000003;
    v12 = 5;
    sub_1D0D2CF48(v8, &unk_1EE054AF8);
    __cxa_atexit(sub_1D0D26840, &unk_1EE054AF8, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE054A68);
  }

  sub_1D0DFA2A8(v8, &unk_1EE054AF8);
  sub_1D0B751F4(__p, "InflateVelocityUncertainty");
  raven::RavenConvergenceEstimator::InflateUncertainties(this);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  LOWORD(__p[0]) = 12;
  v5 = 2;
  *v8 = *(this + 5);
  v3 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v8, "Inflating estimator variance of velocity states.");
  if (*(this + 2735) >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = *(this + 339);
  }

  cnprint::CNPrinter::Print(__p, &v5, "%s", v4);
}

void raven::RavenConvergenceEstimator::InflateXOUncertainty(raven::RavenConvergenceEstimator *this, double a2)
{
  if ((atomic_load_explicit(&qword_1EE054A70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054A70))
  {
    v9 = 0x200000001;
    *v8 = &unk_1F4CE2060;
    v10 = &v11;
    *&v8[8] = xmmword_1D0E84500;
    v11 = 0x700000006;
    sub_1D0D751D4(v8, &unk_1EE054A90);
    __cxa_atexit(sub_1D0D7527C, &unk_1EE054A90, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE054A70);
  }

  sub_1D0DFA2A8(v8, &unk_1EE054A90);
  sub_1D0B751F4(__p, "InflateXOUncertainty");
  raven::RavenConvergenceEstimator::InflateUncertainties(this);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  LOWORD(__p[0]) = 12;
  v5 = 2;
  *v8 = *(this + 5);
  v3 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, v8, "Inflating estimator variance of xo states.");
  if (*(this + 2735) >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = *(this + 339);
  }

  cnprint::CNPrinter::Print(__p, &v5, "%s", v4);
}

uint64_t raven::RavenConvergenceEstimator::Initialize(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v24 = v5;
  v25 = v4;
  v26 = v2;
  v27 = v3;
  if (*(a1 + 58) == 1)
  {
    v18[0] = 12;
    LOBYTE(v19) = 4;
    v8 = cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, a1 + 80, "Attempting to initialize an already initialized estimator");
    if (*(a1 + 2735) >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(v18, &v19, "%s", v9);
  }

  *(a1 + 64) = *a2;
  *(a1 + 80) = *a2;
  *(a1 + 96) = *a2;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  sub_1D0BAAEBC(a1 + 8560);
  sub_1D0BADC18(a1 + 8560, a2);
  *(a1 + 312) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0;
  *(a1 + 980) = 0;
  *(a1 + 948) = 0u;
  *(a1 + 964) = 0u;
  *(a1 + 916) = 0u;
  *(a1 + 932) = 0u;
  *(a1 + 884) = 0u;
  *(a1 + 900) = 0u;
  *(a1 + 852) = 0u;
  *(a1 + 868) = 0u;
  *(a1 + 820) = 0u;
  *(a1 + 836) = 0u;
  *(a1 + 788) = 0u;
  *(a1 + 804) = 0u;
  *(a1 + 756) = 0u;
  *(a1 + 772) = 0u;
  *(a1 + 724) = 0u;
  *(a1 + 740) = 0u;
  *(a1 + 320) = 0x7FF8000000000000;
  *(a1 + 272) = 0;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0;
  *(a1 + 988) = 0u;
  *(a1 + 1004) = 0u;
  *(a1 + 1020) = 0u;
  *(a1 + 1036) = 0u;
  *(a1 + 1052) = 0u;
  *(a1 + 1068) = 0u;
  *(a1 + 1084) = 0u;
  *(a1 + 1100) = 0u;
  *(a1 + 1116) = 0;
  v21 = 0x100000008;
  v19 = &unk_1F4CE4320;
  v22 = v23;
  v10 = *(a2 + 32);
  v23[0] = *(a2 + 16);
  v23[1] = v10;
  v11 = *(a2 + 64);
  v23[2] = *(a2 + 48);
  v20 = xmmword_1D0E84520;
  v23[3] = v11;
  sub_1D0BA57FC(v18, a2 + 80);
  v15 = 0x100000008;
  v13 = &unk_1F4CE4320;
  v14 = xmmword_1D0E84520;
  v16 = &v17;
  sub_1D0B89390(v18, &v19, &v13);
  sub_1D0DED3EC(a1 + 2864, &v19, v18, &v13);
  v13 = 0x3FE0000000000000;
  result = sub_1D0D87CD8(a1 + 8496, &v13);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 58) = 1;
  return result;
}

void raven::RavenConvergenceEstimator::Reset(raven::RavenConvergenceEstimator *this)
{
  v2 = this + 8120;
  v6 = 12;
  v5 = 2;
  v3 = cnprint::CNLogFormatter::FormatGeneral(this + 2712, this + 80, "Resetting estimator");
  if (*(this + 2735) >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = *(this + 339);
  }

  cnprint::CNPrinter::Print(&v6, &v5, "%s", v4);
  raven::RavenSequentialGNSSMeasurementSelector::ResetEpochSpecificMembers((this + 5928));
  if (*v2 == 1)
  {
    *v2 = 0;
  }

  if (v2[224] == 1)
  {
    *(this + 1030) = &unk_1F4CD5E28;
    v2[224] = 0;
  }

  v7 = 0x3FE0000000000000;
  sub_1D0D87CD8(this + 8496, &v7);
  sub_1D0BAAEBC(this + 8560);
  raven::RavenEstimator::Reset(this);
}

uint64_t sub_1D0DF6DA8(void *a1)
{
  *a1 = &unk_1F4CEC098;
  sub_1D0DC5674(a1 + 1070);
  a1[1061] = &unk_1F4CE3930;
  sub_1D0D83110((a1 + 741));
  a1[358] = &unk_1F4CEAAF8;
  a1[659] = &unk_1F4CD5E28;
  a1[646] = &unk_1F4CD5E28;
  a1[577] = &unk_1F4CD5E28;
  sub_1D0BC27EC((a1 + 358));

  return sub_1D0D4FA90(a1);
}

void sub_1D0DF6EC4(void *a1)
{
  *a1 = &unk_1F4CEC098;
  sub_1D0DC5674(a1 + 1070);
  a1[1061] = &unk_1F4CE3930;
  sub_1D0D83110((a1 + 741));
  a1[358] = &unk_1F4CEAAF8;
  a1[659] = &unk_1F4CD5E28;
  a1[646] = &unk_1F4CD5E28;
  a1[577] = &unk_1F4CD5E28;
  sub_1D0BC27EC((a1 + 358));
  sub_1D0D4FA90(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF7070(uint64_t a1)
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

void sub_1D0DF71A8(uint64_t a1)
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

void sub_1D0DF72AC(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF731C(uint64_t a1)
{
  *a1 = &unk_1F4CEC228;
  v2 = *(a1 + 520);
  if (v2)
  {
    sub_1D0B7CAB8(v2);
  }

  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
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

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF7410(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
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

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF74DC(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
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

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF7654(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF76C4(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF7734(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF77A4(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF7814(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF7884(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF78F4(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DF7A40(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0DF7964(a3, a2[1]);
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
    *a3 = sub_1D0DF7A40;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEB5D0;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEB5D0);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_AltitudeArgs_RavenConvergence>::__id;
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

void sub_1D0DF7BA8(uint64_t a1)
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

void sub_1D0DF7D00(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DF7D70(uint64_t a1, uint64_t a2, double *a3)
{
  *(a1 + 24) = 0x800000008;
  *a1 = &unk_1F4CE43B0;
  *(a1 + 8) = xmmword_1D0E84510;
  *(a1 + 32) = a1 + 40;
  v15 = 0x100000008;
  v14 = xmmword_1D0E84520;
  v13 = &unk_1F4CE43F8;
  v16 = &v17;
  v10 = 0x100000008;
  v9 = xmmword_1D0E84520;
  v8 = &unk_1F4CE43F8;
  v11 = &v12;
  v5 = 0x100000020;
  v3 = &unk_1F4CE3988;
  v4 = xmmword_1D0E84540;
  v6 = &v7;
  *a3 = sub_1D0BA5174(a2, &v13, &v8, &v3, a1);
}

void *sub_1D0DF8008(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0DF7ECC(a3, a2[1]);
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
    *a3 = sub_1D0DF8008;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEB610;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEB610);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_MapVectorPositionConstraintArgs_RavenConvergence>::__id;
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

void *sub_1D0DF8228(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0DF80F4(a3, a2[1]);
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
    *a3 = sub_1D0DF8228;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEB650;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEB650);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_MapVectorVelocityConstraintArgs_RavenConvergence>::__id;
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

void sub_1D0DF8314(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DF8470(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0DF8384(a3, a2[1]);
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
    *a3 = sub_1D0DF8470;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEB8A0;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEB8A0);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_HorizontalDistanceTraveledArgs_RavenConvergence<double>>::__id;
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

uint64_t sub_1D0DF855C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12);
  v28 = 0x100000006;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  v25 = &unk_1F4CE1400;
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
      if (vuzp1_s16(v12, 0x100000006).u8[0])
      {
        *(v10 - 3) = v5;
      }

      if (vuzp1_s16(v12, 0x100000006).i8[2])
      {
        *(v10 - 2) = v5 + 1;
      }

      if (vuzp1_s16(0x100000006, vmovn_s64(vcgeq_u64(v7, *&v8))).i32[1])
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

  *(a1 + 24) = 0x600000003;
  *(a1 + 8) = xmmword_1D0E9CBF0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CEB8E0;
  *(a1 + 216) = 0x100000003;
  *(a1 + 184) = a2;
  *(a1 + 192) = &unk_1F4CDEAA0;
  *(a1 + 200) = xmmword_1D0E7DCC0;
  *(a1 + 224) = a1 + 232;
  *(a1 + 272) = 0x100000006;
  *(a1 + 248) = &unk_1F4CE1400;
  *(a1 + 256) = xmmword_1D0E84530;
  *(a1 + 280) = a1 + 288;
  sub_1D0B9F5D4(a1 + 192, &unk_1EE054B30);
  result = sub_1D0B9F5D4(a1 + 248, &v25);
  v14 = *(a1 + 208);
  v15 = *(a1 + 264);
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
        v20 = *(a1 + 224);
        v21 = *(*(a1 + 280) + 4 * v17) * v18;
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

void *sub_1D0DF87EC(void *result)
{
  result[31] = &unk_1F4CDEAF8;
  result[24] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void sub_1D0DF884C(void *a1)
{
  a1[31] = &unk_1F4CDEAF8;
  a1[24] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

__n128 sub_1D0DF88BC(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x600000003;
  *(a1 + 24) = 0x600000003;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CEB7D0;
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

  if (v3 >= 7)
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

void sub_1D0DF8A04(uint64_t a1)
{
  *a1 = &unk_1F4CE4300;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DF8B58(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0DF8A74(a3, a2[1]);
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
    *a3 = sub_1D0DF8B58;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEB8B8;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEB8B8);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_3DDistanceTraveledArgs_RavenConvergence<double>>::__id;
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

void sub_1D0DF8CA0(uint64_t a1)
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

void *sub_1D0DF8E74(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0DF8D98(a3, a2[1]);
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
    *a3 = sub_1D0DF8E74;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEB690;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEB690);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_PositionArgs_RavenConvergence>::__id;
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

void *sub_1D0DF903C(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0DF8F60(a3, a2[1]);
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
    *a3 = sub_1D0DF903C;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEB750;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEB750);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_UserSpeedArgs_RavenConvergence>::__id;
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

void sub_1D0DF9184(uint64_t a1)
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
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
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

uint64_t sub_1D0DF927C(uint64_t result, unsigned int a2, int *a3)
{
  if (*(result + 16) != a2)
  {
    __assert_rtn("operator=", "cnsubvector.h", 347, "this->num_elements_ == A.num_elements_");
  }

  if (a2 >= 1)
  {
    v3 = *(result + 112);
    v4 = *(*(result + 72) + 32);
    v5 = *(result + 32);
    v6 = a2;
    do
    {
      v8 = *a3++;
      v7 = v8;
      v9 = *v3++;
      *(v4 + 4 * v9) = v7;
      *v5++ = v7;
      --v6;
    }

    while (v6);
  }

  return result;
}

void *sub_1D0DF92F0(void *result)
{
  result[10] = &unk_1F4CDEAF8;
  *result = &unk_1F4CDEAF8;
  return result;
}

void sub_1D0DF9330(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v96 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 1540))
  {
    sub_1D0B894B0(a1 + 768, a1 + 8);
    sub_1D0B894B0(a1 + 872, a1 + 112);
    sub_1D0B894B0(a1 + 1424, a1 + 664);
  }

  v6 = *(a1 + 776);
  v7 = *(a1 + 780);
  if (v6 <= v7)
  {
    v8 = *(a1 + 780);
  }

  else
  {
    v8 = *(a1 + 776);
  }

  if (v7)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  if (v10 != a2)
  {
    LOWORD(v81) = 2;
    LOBYTE(v72) = 4;
    v11 = cnprint::CNLogFormatter::FormatGeneral((a1 + 1704), "ReorderStates(): Length(order) != Length(x).");
    if (*(a1 + 1727) >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = *(a1 + 1704);
    }

    cnprint::CNPrinter::Print(&v81, &v72, "%s", v12);
  }

  v93 = 0x100000008;
  v94 = 0;
  v91 = 0;
  v92 = 0;
  v90[8] = &unk_1F4CEBA28;
  if ((a2 & 0x80000000) != 0)
  {
    __assert_rtn("CNMatrix", "cnmatrix.h", 419, "nr >= 0");
  }

  v91 = a2 | 0x100000000;
  LODWORD(v92) = a2;
  HIDWORD(v92) = a2;
  v13 = v95;
  v94 = v95;
  if (a2 > 3)
  {
    bzero(v95, a2 - 1);
    v95[a2 - 1] = 0;
    v66 = a2;
    v14 = a2;
  }

  else
  {
    if (!a2)
    {
      v17 = 0;
      goto LABEL_30;
    }

    v66 = a2;
    v14 = a2;
    bzero(v95, a2);
  }

  v15 = 0;
  v16 = *(a3 + 32);
  v17 = 1;
  do
  {
    v18 = *(v16 + 4 * v15);
    if (v13[v18] == 1)
    {
      LOWORD(v81) = 2;
      LOBYTE(v72) = 4;
      cnprint::CNLogFormatter::FormatGeneral((a1 + 1704), "ReorderStates(): order must reference each state once and only once.");
      if (*(a1 + 1727) >= 0)
      {
        v19 = (a1 + 1704);
      }

      else
      {
        v19 = *(a1 + 1704);
      }

      cnprint::CNPrinter::Print(&v81, &v72, "%s", v19);
      v16 = *(a3 + 32);
      v13 = v94;
      v18 = *(v16 + 4 * v15);
    }

    v13[v18] = 1;
    ++v15;
  }

  while (v14 != v15);
  a2 = v66;
LABEL_30:
  sub_1D0B894B0(a1 + 8, a1 + 768);
  sub_1D0B894B0(a1 + 112, a1 + 872);
  sub_1D0B894B0(a1 + 664, a1 + 1424);
  if (v17)
  {
    v20 = 0;
    v21 = a2;
    v22 = "this->num_rows_ == A.num_rows_";
    while (1)
    {
      v23 = *(*(a3 + 32) + 4 * v20);
      *(*(a1 + 800) + 8 * v20) = *(*(a1 + 40) + 8 * v23);
      sub_1D0DF9A90(&v81, a1 + 112, v23);
      sub_1D0DF9A90(&v72, a1 + 872, v20);
      v24 = v73;
      if (v73 != v82)
      {
        break;
      }

      v25 = DWORD1(v73);
      if (DWORD1(v73) != DWORD1(v82))
      {
        v64 = 437;
        v22 = "this->num_cols_ == A.num_cols_";
LABEL_57:
        __assert_rtn("operator=", "cnsubmatrix.h", v64, v22);
      }

      if (DWORD1(v73))
      {
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = v84;
        v30 = v78;
        v31 = v79;
        v32 = HIDWORD(v73);
        v33 = v77;
        v34 = v75;
        do
        {
          if (v24)
          {
            v35 = *(v33 + 20) * *(v31 + 4 * v28);
            v36 = *(v33 + 32);
            v37 = v26;
            v38 = v30;
            v39 = v27;
            v40 = v24;
            do
            {
              v41 = v29[v37];
              v42 = *v38++;
              *(v36 + 8 * (v42 + v35)) = v41;
              v34[v39++] = v41;
              ++v37;
              --v40;
            }

            while (v40);
          }

          ++v28;
          v27 += v32;
          v26 += v24;
        }

        while (v28 != v25);
      }

      *(*(a1 + 1456) + 8 * v20++) = *(*(a1 + 696) + 8 * v23);
      if (v20 == v21)
      {
        sub_1D0B894B0(a1 + 112, a1 + 872);
        v43 = 0;
        v44 = "this->num_rows_ == A.num_rows_";
        while (1)
        {
          sub_1D0DF9CE8(&v81, a1 + 112, *(*(a3 + 32) + 4 * v43));
          sub_1D0DF9CE8(&v72, a1 + 872, v43);
          v45 = v73;
          if (v73 != v82)
          {
            break;
          }

          v46 = DWORD1(v73);
          if (DWORD1(v73) != DWORD1(v82))
          {
            v65 = 437;
            v44 = "this->num_cols_ == A.num_cols_";
LABEL_60:
            __assert_rtn("operator=", "cnsubmatrix.h", v65, v44);
          }

          if (DWORD1(v73))
          {
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v50 = v84;
            v51 = v78;
            v52 = v80;
            v53 = HIDWORD(v73);
            v54 = v77;
            v55 = v75;
            do
            {
              if (v45)
              {
                v56 = *(v54 + 20) * *(v52 + 4 * v49);
                v57 = *(v54 + 32);
                v58 = v47;
                v59 = v51;
                v60 = v48;
                v61 = v45;
                do
                {
                  v62 = v50[v58];
                  v63 = *v59++;
                  *(v57 + 8 * (v63 + v56)) = v62;
                  v55[v60++] = v62;
                  ++v58;
                  --v61;
                }

                while (v61);
              }

              ++v49;
              v48 += v53;
              v47 += v45;
            }

            while (v49 != v46);
          }

          if (++v43 == v21)
          {
            goto LABEL_53;
          }
        }

        v65 = 436;
        goto LABEL_60;
      }
    }

    v64 = 436;
    goto LABEL_57;
  }

  sub_1D0B894B0(a1 + 112, a1 + 872);
LABEL_53:
  v74 = 0x800000008;
  v72 = &unk_1F4CE43B0;
  v73 = xmmword_1D0E84510;
  v75 = &v76;
  v69 = 0x100000008;
  v67 = &unk_1F4CE4320;
  v68 = xmmword_1D0E84520;
  v70 = &v71;
  v88 = 0x100000008;
  v86 = &unk_1F4CE4320;
  v87 = xmmword_1D0E84520;
  v89 = v90;
  v83 = 0x800000008;
  v81 = &unk_1F4CE43B0;
  v82 = xmmword_1D0E84510;
  v84 = &v85;
  sub_1D0BA5B14(a1 + 872, a1 + 1424, &v86, &v81, &v67, &v72);
  sub_1D0B894B0(a1 + 872, &v72);
  sub_1D0B894B0(a1 + 1424, &v67);
  sub_1D0B894B0(a1 + 8, a1 + 768);
  sub_1D0B894B0(a1 + 112, a1 + 872);
  sub_1D0B894B0(a1 + 664, a1 + 1424);
  *(a1 + 1540) = 1;
}

uint64_t sub_1D0DF9968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000008;
  *(a1 + 8) = xmmword_1D0E84520;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CEB9E0;
  *(a1 + 72) = a2;
  *(a1 + 104) = 0x100000008;
  *(a1 + 80) = &unk_1F4CE43F8;
  *(a1 + 88) = xmmword_1D0E84520;
  *(a1 + 112) = a1 + 120;
  sub_1D0B9F5D4(a1 + 80, a3);
  v6 = *(a1 + 88);
  v5 = *(a1 + 92);
  *(a1 + 8) = v6;
  *(a1 + 12) = v5;
  v7 = (v5 * v6);
  *(a1 + 16) = v7;
  *(a1 + 20) = v6;
  if (v7 >= 1)
  {
    v8 = *(a1 + 112);
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

void sub_1D0DF9A40(void *a1)
{
  a1[10] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CDEAF8;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0DF9A90(uint64_t a1, uint64_t a2, int a3)
{
  v30 = 0x100000001;
  v28 = &unk_1F4CDF158;
  *&v5 = 0x100000001;
  *(&v5 + 1) = 0x100000001;
  v29 = v5;
  v31 = &v32;
  v32 = a3;
  v6 = *(a2 + 12);
  v25 = 0x100000008;
  v20 = &unk_1F4CE43F8;
  v21 = v6;
  v22 = 1;
  v23 = v6;
  v24 = v6;
  v26 = v27;
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v27[i] = i;
    }
  }

  *(a1 + 24) = 0x800000001;
  *(a1 + 8) = xmmword_1D0E9CBE0;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CEBA70;
  *(a1 + 136) = 0x100000001;
  *(a1 + 104) = a2;
  *(a1 + 112) = &unk_1F4CDF158;
  *(a1 + 120) = v5;
  *(a1 + 144) = a1 + 152;
  *(a1 + 184) = 0x100000008;
  *(a1 + 160) = &unk_1F4CE43F8;
  *(a1 + 168) = xmmword_1D0E84520;
  *(a1 + 192) = a1 + 200;
  sub_1D0B9F5D4(a1 + 112, &v28);
  result = sub_1D0B9F5D4(a1 + 160, &v20);
  v9 = *(a1 + 128);
  v10 = *(a1 + 176);
  *(a1 + 8) = v9;
  *(a1 + 12) = v10;
  *(a1 + 16) = v10 * v9;
  *(a1 + 20) = v9;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = *(a2 + 20);
    v14 = *(a2 + 32);
    do
    {
      if (v9)
      {
        v15 = *(a1 + 144);
        v16 = *(*(a1 + 192) + 4 * v12) * v13;
        v17 = *(a1 + 32);
        v18 = v11;
        result = v9;
        do
        {
          v19 = *v15++;
          *(v17 + 8 * v18++) = *(v14 + 8 * (v19 + v16));
          --result;
        }

        while (result);
      }

      ++v12;
      v11 += v9;
    }

    while (v12 != v10);
  }

  return result;
}

void *sub_1D0DF9C88(void *result)
{
  result[20] = &unk_1F4CDEAF8;
  result[14] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0DF9CE8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 8);
  v30 = 0x100000008;
  v25 = &unk_1F4CE43F8;
  v26 = v5;
  v27 = 1;
  v28 = v5;
  v29 = v5;
  v31 = v32;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v32[i] = i;
    }
  }

  v22 = 0x100000001;
  v20 = &unk_1F4CDF158;
  *&v7 = 0x100000001;
  *(&v7 + 1) = 0x100000001;
  v21 = v7;
  v23 = &v24;
  v24 = a3;
  *(a1 + 24) = 0x100000008;
  *(a1 + 8) = xmmword_1D0E84520;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CEBAB8;
  *(a1 + 136) = 0x100000008;
  *(a1 + 104) = a2;
  *(a1 + 112) = &unk_1F4CE43F8;
  *(a1 + 120) = xmmword_1D0E84520;
  *(a1 + 144) = a1 + 152;
  *(a1 + 208) = 0x100000001;
  *(a1 + 184) = &unk_1F4CDF158;
  *(a1 + 192) = v7;
  *(a1 + 216) = a1 + 224;
  sub_1D0B9F5D4(a1 + 112, &v25);
  result = sub_1D0B9F5D4(a1 + 184, &v20);
  v9 = *(a1 + 128);
  v10 = *(a1 + 200);
  *(a1 + 8) = v9;
  *(a1 + 12) = v10;
  *(a1 + 16) = v10 * v9;
  *(a1 + 20) = v9;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = *(a2 + 20);
    v14 = *(a2 + 32);
    do
    {
      if (v9)
      {
        v15 = *(a1 + 144);
        v16 = *(*(a1 + 216) + 4 * v12) * v13;
        v17 = *(a1 + 32);
        v18 = v11;
        result = v9;
        do
        {
          v19 = *v15++;
          *(v17 + 8 * v18++) = *(v14 + 8 * (v19 + v16));
          --result;
        }

        while (result);
      }

      ++v12;
      v11 += v9;
    }

    while (v12 != v10);
  }

  return result;
}

void *sub_1D0DF9ED0(void *result)
{
  result[23] = &unk_1F4CDEAF8;
  result[14] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void sub_1D0DF9F8C(uint64_t a1)
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
            v10 = *(v7 + v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + v11);
              *(v7 + v11) = v10 & 1;
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

void sub_1D0DFA088(void *a1)
{
  a1[20] = &unk_1F4CDEAF8;
  a1[14] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DFA0F8(void *a1)
{
  a1[23] = &unk_1F4CDEAF8;
  a1[14] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0DFA168(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0x100000008;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE43F8;
  if (result == a2)
  {
    v15 = "this != &(A)";
    v16 = 603;
    goto LABEL_16;
  }

  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(result + 8) = v3;
  *(result + 12) = v2;
  v4 = v2 * v3;
  *(result + 16) = v4;
  *(result + 20) = v3;
  v5 = (result + 40);
  *(result + 32) = result + 40;
  if (v3 > 8)
  {
    v15 = "this->max_num_rows_ >= A.num_rows_";
    v16 = 616;
    goto LABEL_16;
  }

  if (v2 >= 2)
  {
    v15 = "this->max_num_cols_ >= A.num_cols_";
    v16 = 617;
LABEL_16:
    __assert_rtn("CNMatrix", "cnmatrix.h", v16, v15);
  }

  v6 = *(a2 + 16);
  if (v6 > 3)
  {
    v9 = (v6 - 1);
    v10 = *(a2 + 32);
    v11 = v10;
    v12 = (result + 40);
    v13 = v9;
    do
    {
      v14 = *v11++;
      *v12++ = v14;
      --v13;
    }

    while (v13);
    v5[v9] = v10[v9];
  }

  else if (v4 >= 1)
  {
    v7 = *(a2 + 32);
    do
    {
      v8 = *v7++;
      *v5++ = v8;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D0DFA2A8(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0x100000008;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE43F8;
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(result + 8) = v3;
  *(result + 12) = v2;
  v4 = v2 * v3;
  *(result + 16) = v4;
  *(result + 20) = v3;
  v5 = (result + 40);
  *(result + 32) = result + 40;
  if (v3 > 8)
  {
    v8 = "this->max_num_rows_ >= A.NumRows()";
    v9 = 567;
    goto LABEL_9;
  }

  if (v2 > 1)
  {
    v8 = "this->max_num_cols_ >= A.NumCols()";
    v9 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v9, v8);
  }

  if (v4 >= 1)
  {
    v6 = *(a2 + 32);
    do
    {
      v7 = *v6++;
      *v5++ = v7;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_1D0DFA394(void *a1)
{
  sub_1D0DFA580(a1);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DFA580(void *a1)
{
  *a1 = &unk_1F4CEBB00;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0DFA638(uint64_t a1)
{
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

void sub_1D0DFA76C(uint64_t a1)
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

void sub_1D0DFA8C0(uint64_t a1)
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

void *sub_1D0DFA9B8(void *result)
{
  result[37] = &unk_1F4CDEAF8;
  result[30] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

uint64_t sub_1D0DFAA1C(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v12 = 0x100000067;
  v10 = &unk_1F4CEBD38;
  v11 = xmmword_1D0E9CC30;
  v13 = &v14;
  v7 = 0x1000000010;
  v5 = &unk_1F4CE17D0;
  v6 = xmmword_1D0E84570;
  v8 = &v9;
  return sub_1D0BA5B14(a1, a2, &v10, &v5, a3, a4);
}

void sub_1D0DFAAD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x5700000008;
  *a1 = &unk_1F4CEBDC8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  sub_1D0BF8784(a1);
}

void sub_1D0DFABA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x5700000008;
  *a1 = &unk_1F4CEBDC8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = xmmword_1D0E9CC40;
  sub_1D0BF8784(a1);
}

void sub_1D0DFAC84(uint64_t a1, uint64_t a2)
{
  v4 = 0x10000005FLL;
  v2[6] = &unk_1F4CEBE10;
  v3 = xmmword_1D0E9CC50;
  v5 = &v6;
  sub_1D0DA2888(v2);
}

void sub_1D0DFAD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1D0DFC5BC(v9);
  sub_1D0DA2BF0(&a9);
  _Unwind_Resume(a1);
}

void sub_1D0DFADC4(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v3 = *(a2 + 8);
  v4 = *(a2 + 12);
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || (v4 | v3) == 0)
  {
LABEL_9:
    if ((a1 + 1680) != &v15)
    {
      sub_1D0DA3374((a1 + 1680), v15, v16, (v16 - v15) >> 5);
    }
  }

  else
  {
    v8 = 1;
    while (1)
    {
      v9 = *(*(a2 + 32) + 4 * (v8 - 1));
      v10 = *(a1 + 1680);
      if (v9 >= (*(a1 + 1688) - v10) >> 5)
      {
        break;
      }

      sub_1D0BBCC94(&v15, v10 + 32 * v9);
      v12 = *(a2 + 8);
      v11 = *(a2 + 12);
      if (v12 <= v11)
      {
        v13 = *(a2 + 12);
      }

      else
      {
        v13 = *(a2 + 8);
      }

      if (v12)
      {
        if (v11)
        {
          if (v13 > v8++)
          {
            continue;
          }
        }
      }

      goto LABEL_9;
    }
  }

  v18 = &v15;
  sub_1D0BA5F70(&v18);
}

void sub_1D0DFAEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1D0BA5F70(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0DFAEC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000067;
  *a1 = &unk_1F4CEBE58;
  *(a1 + 8) = xmmword_1D0E9CC30;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D8C29C(a2, a3, a1);
}

uint64_t sub_1D0DFAF4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(a1 + 24) = 0x100000010;
  *a1 = &unk_1F4CEBEA0;
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
  *(a1 + 16) = v3 * v2;
  *(a1 + 20) = v2;
  *(a1 + 32) = a1 + 40;
  return sub_1D0D2EF0C(a2, a1);
}

uint64_t sub_1D0DFAFD8(uint64_t result, unsigned int a2)
{
  *(result + 24) = 0x1000000001;
  *result = &unk_1F4CEBEE8;
  *(result + 32) = result + 40;
  if (a2)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *(result + 8) = 0;
      *(result + 16) = 0;
    }

    else
    {
      v2 = 0;
      *(result + 8) = 1;
      *(result + 12) = a2 + 1;
      *(result + 16) = a2 + 1;
      *(result + 20) = 1;
      v3 = vdupq_n_s64(a2);
      v4 = xmmword_1D0E84440;
      v5 = xmmword_1D0E7DD30;
      v6 = (result + 52);
      v7 = vdupq_n_s64(4uLL);
      do
      {
        v8 = vmovn_s64(vcgeq_u64(v3, v5));
        if (vuzp1_s16(v8, *v3.i8).u8[0])
        {
          *(v6 - 3) = v2;
        }

        if (vuzp1_s16(v8, *&v3).i8[2])
        {
          *(v6 - 2) = v2 + 1;
        }

        if (vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v4))).i32[1])
        {
          *(v6 - 1) = v2 + 2;
          *v6 = v2 + 3;
        }

        v2 += 4;
        v4 = vaddq_s64(v4, v7);
        v5 = vaddq_s64(v5, v7);
        v6 += 4;
      }

      while ((a2 & 0x7FFFFFFC) + 4 != v2);
    }
  }

  else
  {
    *&v9 = 0x100000001;
    *(&v9 + 1) = 0x100000001;
    *(result + 8) = v9;
    *(result + 40) = 0;
  }

  return result;
}

void sub_1D0DFB120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 12);
  sub_1D0DFC34C(v12, *(a2 + 12));
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = vdupq_n_s64(v4 - 1);
    v7 = xmmword_1D0E84440;
    v8 = xmmword_1D0E7DD30;
    v9 = (v13 + 8);
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

  sub_1D0BFF5EC(a1);
}

void sub_1D0DFB380(_Unwind_Exception *a1)
{
  v1[64] = &unk_1F4CDEAF8;
  v1[7] = &unk_1F4CDEAF8;
  sub_1D0C00CB0(v1);
  _Unwind_Resume(a1);
}

void *sub_1D0DFB3CC(void *a1)
{
  *a1 = &unk_1F4CEBF30;
  a1[64] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  return sub_1D0C00CB0(a1);
}

void *sub_1D0DFB42C(void *result)
{
  result[109] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void *sub_1D0DFB490(void *result)
{
  result[275] = &unk_1F4CDEAF8;
  result[262] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void *sub_1D0DFB4F0(void *result)
{
  result[22] = &unk_1F4CDEAF8;
  *result = &unk_1F4CD5E28;
  return result;
}

void sub_1D0DFB554(void *a1)
{
  sub_1D0BFF570(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DFB6C0(void *a1)
{
  a1[37] = &unk_1F4CDEAF8;
  a1[30] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DFB730(void *a1)
{
  sub_1D0C00CB0(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DFB8D8(uint64_t a1)
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

void sub_1D0DFB9D0(uint64_t a1, int a2, int a3)
{
  *(a1 + 24) = 0x570000005FLL;
  *a1 = &unk_1F4CEBD80;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a3 * a2;
  *(a1 + 20) = a2;
  sub_1D0DFBBEC(a1);
}

void sub_1D0DFBA38(_Unwind_Exception *exception_object)
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

void sub_1D0DFBA80(void *a1)
{
  sub_1D0DFC5BC(a1);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DFBC74(void *a1)
{
  sub_1D0DFBDE0(a1);

  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DFBDE0(void *a1)
{
  *a1 = &unk_1F4CEBDC8;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0DFBEB8(uint64_t a1)
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

void sub_1D0DFBFEC(uint64_t a1)
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
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
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

void sub_1D0DFC120(uint64_t a1)
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
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
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

void sub_1D0DFC254(uint64_t a1)
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
            v10 = *(v7 + 4 * v8);
            v11 = v8;
            do
            {
              v11 = (v11 * (v3 + v1 - v5)) % v6;
              v12 = *(v7 + 4 * v11);
              *(v7 + 4 * v11) = v10;
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

uint64_t sub_1D0DFC34C(uint64_t result, int a2)
{
  *(result + 24) = 0x100000010;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CEBEA0;
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

void sub_1D0DFC3FC(void *a1)
{
  *a1 = &unk_1F4CEBF30;
  a1[64] = &unk_1F4CDEAF8;
  a1[7] = &unk_1F4CDEAF8;
  sub_1D0C00CB0(a1);

  JUMPOUT(0x1D387ECA0);
}

uint64_t sub_1D0DFC490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = 0x100000067;
  *(a1 + 8) = xmmword_1D0E9CC30;
  *(a1 + 32) = a1 + 40;
  *a1 = &unk_1F4CEBF78;
  *(a1 + 864) = a2;
  *(a1 + 896) = 0x100000067;
  *(a1 + 872) = &unk_1F4CEBE58;
  *(a1 + 880) = xmmword_1D0E9CC30;
  *(a1 + 904) = a1 + 912;
  sub_1D0B9F5D4(a1 + 872, a3);
  v5 = *(a1 + 880);
  v6 = *(a1 + 884);
  *(a1 + 8) = v5;
  *(a1 + 12) = v6;
  v7 = (v6 * v5);
  *(a1 + 16) = v7;
  *(a1 + 20) = v5;
  if (v7 >= 1)
  {
    v8 = *(a1 + 904);
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

void sub_1D0DFC56C(void *a1)
{
  a1[109] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DFC5BC(void *a1)
{
  *a1 = &unk_1F4CEBD80;
  v2 = a1[5];
  a1[5] = 0;
  if (v2)
  {
    MEMORY[0x1D387EC80](v2, 0x1000C8000313F17);
  }

  *a1 = &unk_1F4CD5E28;
  return a1;
}

void sub_1D0DFC638(void *a1)
{
  a1[275] = &unk_1F4CDEAF8;
  a1[262] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void sub_1D0DFC6A8(void *a1)
{
  a1[22] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CD5E28;
  JUMPOUT(0x1D387ECA0);
}

void *sub_1D0DFC6F8(void *result)
{
  result[180] = &unk_1F4CDEAF8;
  *result = &unk_1F4CEAAC8;
  return result;
}

void sub_1D0DFC738(void *a1)
{
  a1[180] = &unk_1F4CDEAF8;
  *a1 = &unk_1F4CEAAC8;
  JUMPOUT(0x1D387ECA0);
}

void *raven::GNSSUncertaintyScaling::EurekaGNSSUncertaintyWrapper::Instance(raven::GNSSUncertaintyScaling::EurekaGNSSUncertaintyWrapper *this)
{
  result = qword_1EC5FB8B0;
  if (!qword_1EC5FB8B0)
  {
    operator new();
  }

  return result;
}

uint64_t raven::GNSSUncertaintyScaling::EurekaGNSSUncertaintyWrapper::GetUncertaintyScaleFactorCore(uint64_t a1, _DWORD *a2, _BYTE *a3, unsigned __int8 *a4, unsigned __int8 *a5, void *a6, float *a7, int a8)
{
  v13 = *a4;
  if (v13 > 6)
  {
    goto LABEL_36;
  }

  v14 = 1 << v13;
  if ((v14 & 0x27) == 0)
  {
    if ((v14 & 0x18) != 0)
    {
      v17 = *a5;
      v18 = v17 > 6;
      v19 = (1 << v17) & 0x4C;
      if (!v18 && v19 != 0)
      {
        switch(a8)
        {
          case 2:
            v21 = qword_1EE054BA8;
            if (!qword_1EE054BA8)
            {
              operator new();
            }

            v22 = qword_1EE054BB0;
            if (!qword_1EE054BB0)
            {
              operator new();
            }

            break;
          case 1:
            v21 = qword_1EE054B98;
            if (!qword_1EE054B98)
            {
              operator new();
            }

            v22 = qword_1EE054BA0;
            if (!qword_1EE054BA0)
            {
              operator new();
            }

            break;
          case 0:
            v21 = qword_1EE054B88;
            if (!qword_1EE054B88)
            {
              operator new();
            }

            v22 = qword_1EE054B90;
            if (!qword_1EE054B90)
            {
              operator new();
            }

            break;
          default:
LABEL_36:
            v22 = 0;
            v21 = 0;
            break;
        }

LABEL_37:
        v28 = *a3;
        if (v28 > 5)
        {
          if (*a3 <= 7u)
          {
            if (v28 == 7)
            {
              v30 = 2;
            }

            else
            {
              v30 = 0;
            }

            if (v28 == 6)
            {
              v29 = 1;
            }

            else
            {
              v29 = v30;
            }

            goto LABEL_60;
          }

          if (v28 == 8)
          {
            v29 = 3;
            goto LABEL_60;
          }

          if (v28 != 9)
          {
            v29 = 0;
            if (v28 != 10)
            {
              goto LABEL_60;
            }

            goto LABEL_49;
          }
        }

        else
        {
          if (*a3 > 1u)
          {
            if (v28 == 2)
            {
              v29 = 6;
              goto LABEL_60;
            }

            if (v28 == 3)
            {
              v29 = 4;
              goto LABEL_60;
            }

            v29 = 0;
            if (v28 != 5)
            {
LABEL_60:
              v31 = v29;
              if (*a2 == 1)
              {
                if (v21)
                {
                  v32 = v21 + 56 * v29;
                  v33 = a6[1];
                  v16 = 1.0;
                  if (*(v32 + 10 * *a6 + 2 * v33))
                  {
                    v34 = *(v32 + 52) * *(v32 + 10 * *a6 + 2 * v33);
                    if (a8 == 1)
                    {
                      v15 = 0x100000000;
                      v16 = v34;
                      return v15 | LODWORD(v16);
                    }

                    v16 = fmaxf(v34, 1.0);
                  }

LABEL_76:
                  v15 = 0x100000000;
                  return v15 | LODWORD(v16);
                }

                v43 = 12;
                v42 = 5;
                cnprint::CNPrinter::Print(&v43, &v42, "Invalid range unc scale pointer - activity_state = %d, signal_environment = %hhu, band_as_int = %d");
              }

              else
              {
                if (v22)
                {
                  v35 = 2;
                  if (*a7 <= 0.6)
                  {
                    v35 = 1;
                  }

                  if (*a7 <= 0.12)
                  {
                    v35 = 0;
                  }

                  v36 = v22 + 156 * v31;
                  v37 = *(v36 + 30 * *a6 + 6 * a6[1] + 2 * v35);
                  if (!v37)
                  {
                    v39 = *(v36 + 152);
                    v15 = 0x100000000;
                    v16 = v39 / flt_1D0E9D6B0[a8 == 0];
                    return v15 | LODWORD(v16);
                  }

                  v16 = *(v36 + 152) * v37;
                  if (a8 != 1)
                  {
                    v16 = fmaxf(v16, 4.0);
                  }

                  goto LABEL_76;
                }

                v41 = 12;
                v40 = 5;
                cnprint::CNPrinter::Print(&v41, &v40, "Invalid doppler unc scale pointer - activity_state = %d, signal_environment = %hhu, band_as_int = %d");
              }

LABEL_75:
              v16 = 1.0;
              goto LABEL_76;
            }

LABEL_49:
            v29 = 5;
            goto LABEL_60;
          }

          if (*a3)
          {
            goto LABEL_49;
          }
        }

        v45 = 12;
        v44 = 4;
        cnprint::CNPrinter::Print(&v45, &v44, "Unsupported GNSS Band type: GNSS uncertainty parameters not found for obs_type,%d,band,%d,se,%d,activity,%d");
        goto LABEL_75;
      }

      if (a8 == 2)
      {
        v21 = qword_1EE054BC8;
        if (!qword_1EE054BC8)
        {
          operator new();
        }

        v22 = qword_1EE054BD0;
        if (!qword_1EE054BD0)
        {
          operator new();
        }

        goto LABEL_37;
      }

      if (a8 == 1)
      {
        v21 = qword_1EE054BB8;
        if (!qword_1EE054BB8)
        {
          operator new();
        }

        v22 = qword_1EE054BC0;
        if (!qword_1EE054BC0)
        {
          operator new();
        }

        goto LABEL_37;
      }

      if (a8)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (a8)
      {
        goto LABEL_4;
      }

      v26 = *a5;
      if (v26 <= 6 && ((1 << v26) & 0x4C) != 0)
      {
        v21 = qword_1EE054BD8;
        if (!qword_1EE054BD8)
        {
          operator new();
        }

        v22 = qword_1EE054BE0;
        if (!qword_1EE054BE0)
        {
          operator new();
        }

        goto LABEL_37;
      }
    }

    sub_1D0DFE57C();
    v21 = v27;
    sub_1D0DFE6CC();
    goto LABEL_37;
  }

  if (!a8)
  {
    v23 = *a5;
    v18 = v23 > 6;
    v24 = (1 << v23) & 0x4C;
    if (v18 || v24 == 0)
    {
      v21 = qword_1EE054B78;
      if (!qword_1EE054B78)
      {
        operator new();
      }

      v22 = qword_1EE054B80;
      if (!qword_1EE054B80)
      {
        operator new();
      }
    }

    else
    {
      v21 = qword_1EE054B68;
      if (!qword_1EE054B68)
      {
        operator new();
      }

      v22 = qword_1EE054B70;
      if (!qword_1EE054B70)
      {
        operator new();
      }
    }

    goto LABEL_37;
  }

LABEL_4:
  v15 = 0;
  v16 = 0.0;
  return v15 | LODWORD(v16);
}

void sub_1D0DFE57C()
{
  if (!qword_1EC5FB840)
  {
    operator new();
  }
}

void sub_1D0DFE6CC()
{
  if (!qword_1EC5FB848)
  {
    operator new();
  }
}

uint64_t raven::GNSSUncertaintyScaling::EurekaGNSSUncertaintyWrapper::GetScaleFactorTableIndices(float a1, double a2, uint64_t a3, unint64_t *a4)
{
  v6 = 0;
  v7 = 16;
  while (flt_1D0E9D6B8[v6] < a1)
  {
    ++v6;
    v7 -= 4;
    if (!v7)
    {
      v6 = 4;
      break;
    }
  }

  v8 = 0;
  v9 = 32;
  while (dbl_1D0E9D6C8[v8] < a2)
  {
    ++v8;
    v9 -= 8;
    if (!v9)
    {
      v8 = 4;
      break;
    }
  }

  v15 = v4;
  v16 = v5;
  v10 = v6 >= 5 || v8 >= 5;
  v11 = !v10;
  if (v10)
  {
    v14 = 12;
    v13 = 5;
    cnprint::CNPrinter::Print(&v14, &v13, "invalid index found,cn0,%.3f,cn0_bin,%zu,elev,%.3lf,elev_bin,%zu,", a1, v6, a2, v8);
  }

  else
  {
    *a4 = v6;
    a4[1] = v8;
  }

  return v11;
}

uint64_t raven::UserSpeedChecker::Configure(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = a3;
  v3 = *(*a2 + 3304);
  v4 = *(*a2 + 3312);
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  if (v3 >= 0.0)
  {
    if (v4 >= 0.0)
    {
      v5 = 0;
      *(a1 + 8) = 1;
      return v5;
    }

    v8 = 12;
    v7 = 4;
    cnprint::CNPrinter::Print(&v8, &v7, "UserSpeedChecker: Cannot configure. Invalid max_dot_covariance_trace_dense_urban_: %.2lf");
  }

  else
  {
    v10 = 12;
    v9 = 4;
    cnprint::CNPrinter::Print(&v10, &v9, "UserSpeedChecker: Cannot configure. Invalid max_dot_covariance_trace_: %.2lf");
  }

  return 0xFFFFFFFFLL;
}

uint64_t raven::UserSpeedChecker::HandleEvent(raven::UserSpeedChecker *this, const raven::UserSpeedEvent *a2, raven::UserSpeedEvent *a3)
{
  if ((*(this + 8) & 1) == 0)
  {
    v30 = 12;
    v29 = 4;
    (*(*a2 + 16))(a2, a2, a3);
    cnprint::CNPrinter::Print(&v30, &v29, "t,%.3lf,UserSpeedChecker, not configured");
    return 0xFFFFFFFFLL;
  }

  if ((*(a2 + 13) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *(a2 + 13) <= 0.000000015)
  {
    if (!cnprint::CNPrinter::GetLogLevel(this))
    {
      v28 = 12;
      v27 = 0;
      (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v28, &v27, "t,%.3lf,UserSpeedChecker: Assistance rejected due to invalid user speed");
    }

    return 0xFFFFFFFFLL;
  }

  v4 = *(a2 + 14);
  v5 = v4 & 0x7FFFFFFFFFFFFFFFLL;
  v6 = (v4 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v7 = v4 < 0;
  v8 = v4 < 0 && ((v4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (!v7)
  {
    v6 = 0;
  }

  v9 = v5 <= 0x7FF0000000000000;
  v10 = v5 == 0x7FF0000000000000 || v6;
  if (!v9)
  {
    v10 = 1;
  }

  if ((v10 | v8) == 1)
  {
    if (!cnprint::CNPrinter::GetLogLevel(this))
    {
      v26 = 12;
      v25 = 0;
      (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v26, &v25, "t,%.3lf,UserSpeedChecker: Assistance rejected due to invalid user speed uncertainty");
    }

    return 0xFFFFFFFFLL;
  }

  v13 = *(a2 + 8);
  v14 = *(a2 + 24);
  *(a3 + 40) = *(a2 + 40);
  *(a3 + 24) = v14;
  *(a3 + 8) = v13;
  v15 = *(a2 + 56);
  v16 = *(a2 + 72);
  v17 = *(a2 + 88);
  *(a3 + 104) = *(a2 + 104);
  *(a3 + 88) = v17;
  *(a3 + 72) = v16;
  *(a3 + 56) = v15;
  if (*(this + 9) != 1)
  {
    return 0;
  }

  result = sub_1D0B9AF58((*(this + 2) + 16), &unk_1D0EA0A56);
  if (result)
  {
    v18 = result;
    if ((*(result + 1369) & 1) == 0)
    {
      if (!cnprint::CNPrinter::GetLogLevel(result))
      {
        v24 = 12;
        v23 = 0;
        (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&v24, &v23, "t,%.3lf,UserSpeedChecker: Assistance rejected due to invalid DOT");
      }

      return 0xFFFFFFFFLL;
    }

    v19 = *(this + 2);
    v20 = *(this + 3);
    if (*(v19 + 664) == 1)
    {
      result = sub_1D0DFEDD0((v19 + 664));
      if (*(result + 104) - 3 <= 1)
      {
        v20 = *(this + 4);
      }
    }

    if (v18[180] + v18[183] + v18[185] > v20)
    {
      if (!cnprint::CNPrinter::GetLogLevel(result))
      {
        v22 = 12;
        v21 = 0;
        (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&v22, &v21, "t,%.3lf,UserSpeedChecker: Assistance rejected due to large DOT covariance trace: %.3f exceeding threshold of: %.3f");
      }

      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  return result;
}

_BYTE *sub_1D0DFEDD0(_BYTE *a1)
{
  if (*a1 != 1)
  {
    std::logic_error::logic_error(&v2, "Attempted to access the value of an uninitialized optional object.");
    v2.__vftable = &unk_1F4CE0128;
    sub_1D0D4D114(&v2);
  }

  return a1 + 8;
}

uint64_t raven::RavenMovingStateEstimatorActiveObject::Configure(cnframework::ActiveObjectBase *a1, uint64_t a2)
{
  if (*(a1 + 224) == 1)
  {
    LOWORD(v12) = 12;
    LOBYTE(v11) = 2;
    (*(*a1 + 16))(__p, a1);
    v4 = v14 >= 0 ? __p : __p[0];
    cnprint::CNPrinter::Print(&v12, &v11, "Warning: %s configured more than once.", v4);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 224) = 0;
  if (!*a2 || (*(*a2 + 33) & 1) == 0)
  {
    LOWORD(v12) = 12;
    LOBYTE(v11) = 4;
    (*(*a1 + 16))(__p, a1);
    if (v14 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    cnprint::CNPrinter::Print(&v12, &v11, "%s could not be configured.", v6);
    goto LABEL_18;
  }

  v12 = *a2;
  if (raven::RavenMovingStateEstimator::Configure(a1 + 280, &v12))
  {
    v11 = 12;
    v10 = 4;
    (*(*a1 + 16))(__p, a1);
    if (v14 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    cnprint::CNPrinter::Print(&v11, &v10, "%s could not configure RavenMovingStateEstimator.", v5);
LABEL_18:
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    return 0xFFFFFFFFLL;
  }

  cnframework::ActiveObjectBase::SetEventQueueDelay(a1, 0.0);
  *(a1 + 224) = 1;
  v8 = (*(*a1 + 40))(a1);
  if (cnprint::CNPrinter::GetLogLevel(v8) <= 1)
  {
    v11 = 12;
    v10 = 1;
    (*(*a1 + 16))(__p, a1);
    v9 = v14 >= 0 ? __p : __p[0];
    cnprint::CNPrinter::Print(&v11, &v10, "%s configured successfully.", v9);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void sub_1D0DFF0FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void raven::RavenMovingStateEstimatorActiveObject::Reset(raven::RavenMovingStateEstimatorActiveObject *this)
{
  raven::RavenMovingStateEstimator::Reset((this + 280));
  *(this + 128) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0x7FF8000000000000;
  *(this + 19) = 0;
  *(this + 105) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0x7FF8000000000000;

  cnframework::ActiveObjectBase::ResetEventQueue(this);
}

void sub_1D0DFF1A8(void **a1)
{
  sub_1D0DC6F5C(a1);

  JUMPOUT(0x1D387ECA0);
}

void raven::RavenNLOSEngine::RavenNLOSEngine(int64x2_t *this)
{
  this->i64[0] = 0;
  this->i8[8] = 0;
  operator new();
}

void sub_1D0DFF308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = v10 + 3256;
  sub_1D0E09954(&a10);
  sub_1D0E099E0(v11);
  v13 = *(v10 + 32);
  *(v10 + 32) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(v10 + 24);
  if (v14)
  {
    sub_1D0B7CAB8(v14);
  }

  _Unwind_Resume(a1);
}

double raven::RavenNLOSEngine::Configure(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) == 1)
  {
    v37 = 12;
    v36 = 3;
    cnprint::CNPrinter::Print(&v37, &v36, "#nlos,Warning: RavenNLOSEngine configured more than once.");
  }

  *(a1 + 8) = 0;
  v4 = *a2;
  if (*a2 && (*(v4 + 33) & 1) != 0)
  {
    v5 = *(v4 + 3520);
    if ((v5 <= -1 || ((v5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v5 - 1) >= 0xFFFFFFFFFFFFFLL)
    {
      v37 = 12;
      v36 = 4;
      cnprint::CNPrinter::Print(&v37, &v36, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_building_data_query_radius_m_ is invalid: %.1lf");
    }

    else
    {
      v8 = *(v4 + 3528);
      v9 = (v8 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v10 = ((v8 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (v8 >= 0)
      {
        v10 = 0;
        v9 = 0;
      }

      if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
      {
        v9 = 1;
      }

      if ((v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
      {
        v9 = 1;
      }

      if (v9 || v10)
      {
        v37 = 12;
        v36 = 4;
        cnprint::CNPrinter::Print(&v37, &v36, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_distance_beyond_query_radius_to_keep_tiles_m_ is invalid: %.1lf");
      }

      else
      {
        v12 = *(v4 + 3544);
        if ((v12 <= -1 || ((v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v12 - 1) >= 0xFFFFFFFFFFFFFLL)
        {
          v37 = 12;
          v36 = 4;
          cnprint::CNPrinter::Print(&v37, &v36, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_max_allowable_distance_of_facet_from_point_m_ is invalid: %.1lf");
        }

        else
        {
          v15 = *(v4 + 3552);
          if ((v15 <= -1 || ((v15 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v15 - 1) >= 0xFFFFFFFFFFFFFLL)
          {
            v37 = 12;
            v36 = 4;
            cnprint::CNPrinter::Print(&v37, &v36, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_max_allowable_matrix_condition_number_ is invalid: %.1lf");
          }

          else
          {
            v18 = *(v4 + 3560);
            if (v18 < 6)
            {
              v19 = *(v4 + 3576);
              if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v19 < 0.0 || v19 > 360.0)
              {
                v37 = 12;
                v36 = 4;
                cnprint::CNPrinter::Print(&v37, &v36, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_azimuth_resolution_for_approximate_signal_path_search_deg_,%.2lf");
              }

              else
              {
                v20 = *(v4 + 3584);
                if ((v20 <= -1 || ((v20 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v20 - 1) >= 0xFFFFFFFFFFFFFLL)
                {
                  v37 = 12;
                  v36 = 4;
                  cnprint::CNPrinter::Print(&v37, &v36, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_max_reflection_point_shift_for_refined_path_convergence_m_,%.2lf");
                }

                else if (*(v4 + 3592))
                {
                  v23 = *(v4 + 3600);
                  v24 = v23 & 0x7FFFFFFFFFFFFFFFLL;
                  v25 = (v23 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
                  v26 = v23 < 0;
                  v27 = v23 < 0 && ((v23 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
                  if (!v26)
                  {
                    v25 = 0;
                  }

                  v28 = v24 <= 0x7FF0000000000000;
                  v29 = v24 == 0x7FF0000000000000 || v25;
                  if (!v28)
                  {
                    v29 = 1;
                  }

                  if ((v29 | v27) == 1)
                  {
                    v37 = 12;
                    v36 = 4;
                    cnprint::CNPrinter::Print(&v37, &v36, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_min_radius_for_candidate_point_search_m_ is invalid: %.1lf");
                  }

                  else if ((*(v4 + 3608) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *(v4 + 3608) < 1.0)
                  {
                    v37 = 12;
                    v36 = 4;
                    cnprint::CNPrinter::Print(&v37, &v36, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_error_ellipse_scale_factor_for_candidate_point_search_ is invalid: %.1lf");
                  }

                  else
                  {
                    v30 = *(v4 + 3616);
                    if ((v30 <= -1 || ((v30 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v30 - 1) >= 0xFFFFFFFFFFFFFLL)
                    {
                      v37 = 12;
                      v36 = 4;
                      cnprint::CNPrinter::Print(&v37, &v36, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_candidate_point_search_step_m_ is invalid: %.1lf");
                    }

                    else
                    {
                      v33 = *(v4 + 3632);
                      if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v33 < 0.0 || v33 > 1.0)
                      {
                        v37 = 12;
                        v36 = 4;
                        cnprint::CNPrinter::Print(&v37, &v36, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_max_probability_line_of_sight_ is invalid: %.1lf");
                      }

                      else
                      {
                        v34 = *(v4 + 3640);
                        if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v34 < 0.0 || v34 > 90.0)
                        {
                          v37 = 12;
                          v36 = 4;
                          cnprint::CNPrinter::Print(&v37, &v36, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_max_satellite_elevation_deg_ is invalid: %.1lf");
                        }

                        else
                        {
                          v35 = *(v4 + 3648);
                          if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v35 < 0.0 || v35 > 1.0)
                          {
                            v37 = 12;
                            v36 = 4;
                            cnprint::CNPrinter::Print(&v37, &v36, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_min_occurrence_rate_of_most_common_sequence_ is invalid: %.1lf");
                          }

                          else
                          {
                            result = *(v4 + 3544) * *(v4 + 3544);
                            *(a1 + 3376) = result;
                            *(a1 + 3384) = v18;
                            *a1 = v4;
                            *(a1 + 8) = 1;
                          }
                        }
                      }
                    }
                  }
                }

                else
                {
                  v37 = 12;
                  v36 = 4;
                  cnprint::CNPrinter::Print(&v37, &v36, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_max_iterations_to_converge_refined_path_ is zero");
                }
              }
            }

            else
            {
              v37 = 12;
              v36 = 4;
              cnprint::CNPrinter::Print(&v37, &v36, "#nlos,NLOS engine could not be configured: gnss_ray_tracing_max_reflections_ exceeds maximum allowed value: %llu vs %llu");
            }
          }
        }
      }
    }
  }

  else
  {
    v37 = 12;
    v36 = 4;
    cnprint::CNPrinter::Print(&v37, &v36, "#nlos,NLOS engine could not be configured: invalid RavenParameters");
  }

  return result;
}

uint64_t raven::RavenNLOSEngine::CopyBuildingSectionData(uint64_t a1, uint64_t *a2, uint64_t **a3, _DWORD *a4)
{
  v29 = a4;
  v5 = *a3;
  if (*a3)
  {
    v7 = a2[1];
    v8 = v7 - *a2;
    if (v7 == *a2)
    {
      LOWORD(v33) = 12;
      v36[0] = 4;
      cnprint::CNPrinter::Print(&v33, v36, "#nlos,input building section container is empty");
    }

    else
    {
      if (v8 != 80)
      {
        sub_1D0D4656C(v5 + 2, 0xCCCCCCCCCCCCCCCDLL * (v8 >> 4) + ((v5[3] - v5[2]) >> 3));
        v5 = *a3;
      }

      v9 = v5[12];
      v31 = v9;
      if (!v9)
      {
        v31 = v5[11];
      }

      v10 = *a2;
      v11 = a2[1];
      if (*a2 != v11)
      {
        v32 = 0;
        v28 = vdupq_n_s64(0xFFF0000000000000);
        v26 = vdupq_n_s64(0x7FF0000000000000uLL);
        v27 = xmmword_1D0EA0B90;
        v24 = a2[1];
        v25 = v5[12];
        while (1)
        {
          v12 = (*(v10 + 8) - *v10) >> 4;
          ++v32;
          if (v9)
          {
            v13 = *(v10 + 72);
            if (*(v10 + 40))
            {
              v14 = *(v10 + 64);
              if (v13 <= v14 || v14 < *(v10 + 56) || *(v10 + 48) > v14)
              {
LABEL_25:
                if (cnprint::CNPrinter::GetLogLevel(v5) <= 1)
                {
                  LOWORD(v33) = 12;
                  v36[0] = 1;
                  cnprint::CNPrinter::Print(&v33, v36, "#nlos, skipped V2 building's section with zero top height, building_id,%llu, has_terrain_elv,%d, terrain_elv,%5.2f, minBaseHght,%5.2f, maxBaseHght,%5.2f, topHght,%5.2f");
                }

                goto LABEL_31;
              }

              if (v12 >= 2)
              {
                goto LABEL_33;
              }
            }

            else
            {
              if (fabs(v13) < 2.22044605e-16)
              {
                goto LABEL_25;
              }

              if (v12 >= 2)
              {
LABEL_33:
                operator new();
              }
            }
          }

          else
          {
            if (fabs(*(v10 + 32)) < 2.22044605e-16)
            {
              if (cnprint::CNPrinter::GetLogLevel(v5) <= 1)
              {
                LOWORD(v33) = 12;
                v36[0] = 1;
                cnprint::CNPrinter::Print(&v33, v36, "#nlos, skipped V1 building's section with zero height above ground.", v18, v19, v20, v21, v22, v23, v24, v25, *&v26, v27, *&v28, v29);
              }

              goto LABEL_31;
            }

            if (v12 >= 2)
            {
              goto LABEL_33;
            }
          }

          LOWORD(v33) = 12;
          v36[0] = 4;
          cnprint::CNPrinter::Print(&v33, v36, "#nlos,section has fewer than two footprint coordinates,%u, skipped.");
LABEL_31:
          v33 = v31;
          v34 = 1;
          v35 = v32;
          *v36 = &v33;
          v5 = sub_1D0E0CFF8((a1 + 3440), &v33, v36);
          v5[6] = 0;
          v10 += 80;
          if (v10 == v11)
          {
            return 0;
          }
        }
      }
    }
  }

  else
  {
    LOWORD(v33) = 12;
    v36[0] = 4;
    cnprint::CNPrinter::Print(&v33, v36, "#nlos,null destination pointer");
  }

  return 0;
}

void sub_1D0E00134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27, std::__shared_weak_count *a28, uint64_t a29)
{
  v32 = *(v30 - 176);
  if (v32)
  {
    (*(*v32 + 8))(v32, a2, a3, a4, a5, a6, a7, a8);
  }

  if (v29)
  {
    sub_1D0B7CAB8(v29);
    if (a27)
    {
LABEL_5:
      sub_1D0B7CAB8(a28);
      if (!a29)
      {
        goto LABEL_10;
      }

LABEL_9:
      (*(*a29 + 8))(a29);
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (a27)
  {
    goto LABEL_5;
  }

  if (!a29)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_1D0E002F0(uint64_t *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v9 = *a2;
  v10 = *(a2 + 8);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a3;
  v12 = *(a3 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = a4 + a5;
  if (v9)
  {
    v14 = v11 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    LOWORD(v33[0]) = 1;
    v34 = 4;
    cnprint::CNPrinter::Print(v33, &v34, "#geo,extruded quadrilateral facet initialized with one or more null pointers");
    goto LABEL_21;
  }

  v15 = COERCE_UNSIGNED_INT64(fabs(a4 + a5)) < 0x7FF0000000000000;
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || !v15)
  {
    LOWORD(v33[0]) = 1;
    v34 = 4;
    cnprint::CNPrinter::Print(v33, &v34, "#geo,extruded quadrilateral facet initialized with one or more non-finite height values");
    goto LABEL_21;
  }

  v16 = v13 - a4;
  if (v13 - a4 <= 0.0)
  {
    LOWORD(v33[0]) = 1;
    v34 = 4;
    cnprint::CNPrinter::Print(v33, &v34, "#geo,extruded quadrilateral facet initialized with non-positive facet height", v16);
    goto LABEL_21;
  }

  v17 = *v9;
  if ((*v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v18 = v9[1], (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) || (v19 = *v11, (*v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) || (v20 = v11[1], (*&v20 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000))
  {
    LOWORD(v33[0]) = 1;
    v34 = 4;
    cnprint::CNPrinter::Print(v33, &v34, "#geo,extruded quadrilateral facet initialized with one or more non-finite footprint coordinates");
    goto LABEL_21;
  }

  v28 = vabdd_f64(v20, v18);
  if (vabdd_f64(v19, v17) < 2.22044605e-16 && v28 < 2.22044605e-16)
  {
    LOWORD(v33[0]) = 1;
    v34 = 4;
    cnprint::CNPrinter::Print(v33, &v34, "#geo,extruded quadrilateral facet initialized with duplicate footprint coordinates", v17, v18, v19, v20, 2.22044605e-16, v28);
LABEL_21:
    v21 = 0;
    v22 = 0.0;
    v23 = 0.0;
    if (!v12)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v30 = v19 - v17;
  v31 = v20 - v18;
  v32 = sqrt(v31 * v31 + v30 * v30);
  v23 = v31 / v32;
  v22 = -v30 / v32;
  v21 = 1;
  if (v12)
  {
LABEL_22:
    sub_1D0B7CAB8(v12);
  }

LABEL_23:
  if (v10)
  {
    sub_1D0B7CAB8(v10);
  }

  if (v21)
  {
    v25 = *a2;
    v24 = *(a2 + 8);
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    v27 = *a3;
    v26 = *(a3 + 8);
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    v33[0] = &unk_1F4CEC8A8;
    v33[1] = &unk_1F4CEC940;
    v33[2] = v25;
    v33[3] = v24;
    v33[4] = v27;
    v33[5] = v26;
    *&v33[6] = a4;
    *&v33[7] = v13;
    *&v33[8] = v23;
    *&v33[9] = v22;
    v33[10] = 0;
    operator new();
  }

  *a1 = 0;
}

void sub_1D0E0069C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    *&v6 = a1 + 16;
    v5 = *(a1 + 16);
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    v9 = v7 - v5;
    if (v8 >= v7)
    {
      v11 = v8 - v5;
      v12 = (v8 - v5) >> 3;
      v13 = v12 + 1;
      if ((v12 + 1) >> 61)
      {
        sub_1D0C5663C();
      }

      if (v9 >> 2 > v13)
      {
        v13 = v9 >> 2;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      v30 = v6;
      if (v14)
      {
        sub_1D0D46998(v14);
      }

      v15 = v12;
      v16 = (8 * v12);
      *a2 = 0;
      v17 = &v16[-v15];
      *v16 = v2;
      v10 = v16 + 1;
      memcpy(v17, v5, v11);
      v18 = *(a1 + 16);
      *(a1 + 16) = v17;
      *(a1 + 24) = v10;
      v19 = *(a1 + 32);
      *(a1 + 32) = 0;
      v28 = v18;
      v29 = v19;
      v26 = v18;
      v27 = v18;
      sub_1D0D469E0(&v26);
    }

    else
    {
      *a2 = 0;
      *v8 = v2;
      v10 = v8 + 8;
    }

    *(a1 + 24) = v10;
    (*(**(v10 - 1) + 24))(&v26);
    v20 = *(a1 + 64);
    if (v20 >= v29)
    {
      v20 = v29;
    }

    *(a1 + 64) = v20;
    v21 = *(a1 + 72);
    if (v21 >= v30)
    {
      v21 = v30;
    }

    *(a1 + 72) = v21;
    v22 = *(a1 + 80);
    if (v22 >= v31)
    {
      v22 = v31;
    }

    *(a1 + 80) = v22;
    v23 = v26;
    v24 = v27;
    if (*(a1 + 40) > v26)
    {
      v23 = *(a1 + 40);
    }

    if (*(a1 + 48) > v27)
    {
      v24 = *(a1 + 48);
    }

    *(a1 + 40) = v23;
    *(a1 + 48) = v24;
    v25 = *(a1 + 56);
    if (v25 <= v28)
    {
      v25 = v28;
    }

    *(a1 + 56) = v25;
    if (v9 >> 3 < ((*(a1 + 32) - *(a1 + 16)) >> 3))
    {
      LOWORD(v26) = 1;
      v32 = 4;
      cnprint::CNPrinter::Print(&v26, &v32, "#geo,composite building capacity expanded unexpectedly,%ul,%ul");
    }
  }

  else
  {
    LOWORD(v26) = 1;
    v32 = 4;
    cnprint::CNPrinter::Print(&v26, &v32, "#geo,trying to add nullptr to composite building data object");
  }
}

__n128 raven::RavenNLOSEngine::HandleEvent(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    if (*(a1 + 456) == 1)
    {
      v2 = *(a2 + 8);
      v3 = *(a2 + 24);
      v4 = *(a2 + 56);
      *(a1 + 304) = *(a2 + 40);
      *(a1 + 320) = v4;
      *(a1 + 272) = v2;
      *(a1 + 288) = v3;
      v5 = *(a2 + 72);
      v6 = *(a2 + 88);
      v7 = *(a2 + 120);
      *(a1 + 368) = *(a2 + 104);
      *(a1 + 384) = v7;
      *(a1 + 336) = v5;
      *(a1 + 352) = v6;
      result = *(a2 + 136);
      v9 = *(a2 + 152);
      v10 = *(a2 + 168);
      *(a1 + 448) = *(a2 + 184);
      *(a1 + 416) = v9;
      *(a1 + 432) = v10;
      *(a1 + 400) = result;
    }

    else
    {
      *(a1 + 264) = &unk_1F4CEF688;
      v11 = *(a2 + 8);
      v12 = *(a2 + 24);
      v13 = *(a2 + 56);
      *(a1 + 304) = *(a2 + 40);
      *(a1 + 320) = v13;
      *(a1 + 272) = v11;
      *(a1 + 288) = v12;
      v14 = *(a2 + 72);
      v15 = *(a2 + 88);
      v16 = *(a2 + 120);
      *(a1 + 368) = *(a2 + 104);
      *(a1 + 384) = v16;
      *(a1 + 336) = v14;
      *(a1 + 352) = v15;
      result = *(a2 + 136);
      v17 = *(a2 + 152);
      v18 = *(a2 + 168);
      *(a1 + 448) = *(a2 + 184);
      *(a1 + 416) = v17;
      *(a1 + 432) = v18;
      *(a1 + 400) = result;
      *(a1 + 456) = 1;
    }
  }

  return result;
}

{
  if (*(a1 + 8) == 1)
  {
    if (*(a1 + 3240) == 1)
    {
      v2 = *(a2 + 8);
      v3 = *(a2 + 24);
      *(a1 + 3168) = *(a2 + 40);
      *(a1 + 3152) = v3;
      *(a1 + 3136) = v2;
      result = *(a2 + 56);
      v5 = *(a2 + 72);
      v6 = *(a2 + 88);
      *(a1 + 3232) = *(a2 + 104);
      *(a1 + 3216) = v6;
      *(a1 + 3200) = v5;
      *(a1 + 3184) = result;
    }

    else
    {
      *(a1 + 3128) = &unk_1F4CEF5C8;
      v7 = *(a2 + 8);
      v8 = *(a2 + 24);
      *(a1 + 3168) = *(a2 + 40);
      *(a1 + 3152) = v8;
      *(a1 + 3136) = v7;
      result = *(a2 + 56);
      v9 = *(a2 + 72);
      v10 = *(a2 + 88);
      *(a1 + 3232) = *(a2 + 104);
      *(a1 + 3216) = v10;
      *(a1 + 3200) = v9;
      *(a1 + 3184) = result;
      *(a1 + 3240) = 1;
    }
  }

  return result;
}

void raven::RavenNLOSEngine::HandleEvent(raven::RavenNLOSEngine *this, const raven::GEOMapBuildingDataEvent *a2, double *a3)
{
  if (*(this + 8) != 1)
  {
    return;
  }

  v4 = *(a2 + 13) == *(a2 + 14) && *(a2 + 20) == 0;
  if (v4)
  {
    LOWORD(v78) = 12;
    LOBYTE(v70) = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v78, &v70, "#nlos,time,%.3lf,building event has no information to update building data hierarchy");
    return;
  }

  if (*(this + 64))
  {
    goto LABEL_7;
  }

  v29 = *(a2 + 16);
  v30 = *(a2 + 17);
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    LOWORD(v78) = 1;
    LOBYTE(v70) = 4;
    cnprint::CNPrinter::Print(&v78, &v70, "#geo,invalid geodetic LLA origin for building coordinate transform,%.3lf,%.3lf,%.3lf");
    goto LABEL_67;
  }

  if (v30 < -3.14159265)
  {
    LOWORD(v78) = 1;
    LOBYTE(v70) = 4;
    cnprint::CNPrinter::Print(&v78, &v70, "#geo,invalid geodetic longitude,lon_deg,%.9lf");
LABEL_67:
    LOWORD(v78) = 12;
    LOBYTE(v70) = 4;
    (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v78, &v70, "#nlos,time,%.3lf,cannot set the building coordinate transform's origin from query LLA, building data ignored");
    return;
  }

  if (fabs(v29) > 1.3962634)
  {
    LOWORD(v78) = 1;
    LOBYTE(v70) = 4;
    cnprint::CNPrinter::Print(&v78, &v70, "#geo,origin too close to poles,lat,%.9lf");
    goto LABEL_67;
  }

  *(this + 5) = v29;
  *(this + 6) = v30;
  *(this + 7) = 0;
  *(this + 64) = 1;
  if (v30 >= 6.28318531)
  {
    do
    {
      v30 = v30 + -6.28318531;
    }

    while (v30 >= 6.28318531);
    *(this + 6) = v30;
  }

  if (cnnavigation::GeodeticLatLonIncrementsToNorthEastMetersPerRadian((this + 208), v29, 0.0, this + 27, a3))
  {
    LOWORD(v78) = 1;
    LOBYTE(v70) = 4;
    cnprint::CNPrinter::Print(&v78, &v70, "#geo,error converting delta lat/lon to delta N/E,lat,%.9lf,hae,%.3f", *(this + 5) * 57.2957795, *(this + 7));
    *(this + 13) = vdupq_n_s64(0x7FF8000000000000uLL);
    if (*(this + 64) == 1)
    {
      *(this + 64) = 0;
    }

    if (*(this + 200) != 1)
    {
      goto LABEL_67;
    }

    goto LABEL_119;
  }

  if ((*(this + 64) & 1) == 0)
  {
    sub_1D0C42F28();
  }

  sub_1D0BFE48C(&v78, *(this + 5), *(this + 6));
  if (*(this + 200) == 1)
  {
    *(this + 80) = v79;
    sub_1D0B894B0(this + 88, v80);
  }

  else
  {
    *(this + 9) = &unk_1F4CD5D18;
    *(this + 80) = v79;
    sub_1D0BE0DE8(this + 88, v80);
    *(this + 9) = &unk_1F4CD5D50;
    *(this + 200) = 1;
  }

  if ((*(this + 80) & 1) == 0)
  {
    LOWORD(v78) = 1;
    LOBYTE(v70) = 4;
    cnprint::CNPrinter::Print(&v78, &v70, "#geo,error computing ECEF to ENU Jacobian,lat,%.3lf,lon,%.3f", *(this + 5) * 57.2957795, *(this + 6) * 57.2957795);
    *(this + 13) = vdupq_n_s64(0x7FF8000000000000uLL);
    if (*(this + 64) == 1)
    {
      *(this + 64) = 0;
    }

    if (*(this + 200) != 1)
    {
      goto LABEL_67;
    }

LABEL_119:
    *(this + 9) = &unk_1F4CD5D18;
    *(this + 11) = &unk_1F4CD5E28;
    *(this + 200) = 0;
    goto LABEL_67;
  }

LABEL_7:
  v6 = *(this + 4);
  if (!v6)
  {
    operator new();
  }

  v7 = 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 14) - *(a2 + 13)) >> 3);
  v8 = *(a2 + 20);
  v9 = v7 > v8;
  v10 = v7 - v8;
  if (v9)
  {
    sub_1D0D4656C((v6 + 16), v10 + ((*(v6 + 24) - *(v6 + 16)) >> 3));
    v6 = *(this + 4);
    v8 = *(a2 + 20);
  }

  v12 = *(v6 + 16);
  v11 = *(v6 + 24);
  v70 = &unk_1F4CEC558;
  LOBYTE(v71) = 0;
  v72 = 0;
  LOBYTE(v73) = 0;
  v74 = 0;
  v76 = 0;
  v77 = 0;
  v75 = &v76;
  v68 = v11 - v12;
  if (v11 == v12 || !v8)
  {
    goto LABEL_100;
  }

  v78 = &unk_1F4CEC730;
  v79 = v6;
  memset(v80, 0, sizeof(v80));
  v81 = 0;
  v82 = 1;
  sub_1D0E0B780(&v78);
  v13 = (this + 3440);
  v14 = (a2 + 152);
  v15 = (this + 3448);
  while (v81)
  {
    (*(**&v80[0] + 16))(*&v80[0], &v70);
    if (v72 == 1)
    {
      v16 = *v14;
      if (*v14)
      {
        v17 = (a2 + 152);
        do
        {
          v18 = *(v16 + 4);
          v19 = v18 >= v71;
          v20 = v18 < v71;
          if (v19)
          {
            v17 = v16;
          }

          v16 = *&v16[8 * v20];
        }

        while (v16);
        if (v17 != v14 && v71 >= v17[4])
        {
          if (v74)
          {
            v21 = v73;
          }

          else
          {
            v21 = v71;
          }

          v83 = v21;
          v84 = 65537;
          v22 = sub_1D0D4741C(this + 3440, &v83);
          if (v15 != v22)
          {
            do
            {
              if (v22[4] != v21)
              {
                break;
              }

              v23 = v22[1];
              v24 = v22;
              if (v23)
              {
                do
                {
                  v25 = v23;
                  v23 = *v23;
                }

                while (v23);
              }

              else
              {
                do
                {
                  v25 = v24[2];
                  v4 = *v25 == v24;
                  v24 = v25;
                }

                while (!v4);
              }

              if (*v13 == v22)
              {
                *v13 = v25;
              }

              --*(this + 432);
              sub_1D0D4B3C4(*(this + 431), v22);
              operator delete(v22);
              v22 = v25;
            }

            while (v15 != v25);
          }

          v26 = v76;
          if (!v76)
          {
LABEL_44:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v27 = v26;
              v28 = v26[4];
              if (v28 <= *&v80[0])
              {
                break;
              }

              v26 = *v27;
              if (!*v27)
              {
                goto LABEL_44;
              }
            }

            if (v28 >= *&v80[0])
            {
              break;
            }

            v26 = v27[1];
            if (!v26)
            {
              goto LABEL_44;
            }
          }
        }
      }
    }

    sub_1D0E0B884(&v78);
  }

  v32 = *(v6 + 16);
  v31 = *(v6 + 24);
  if (!v77)
  {
    v33 = *(v6 + 24);
    goto LABEL_95;
  }

  if (v32 == v31)
  {
    LOWORD(v83) = 1;
    LOBYTE(v69) = 4;
    cnprint::CNPrinter::Print(&v83, &v69, "#geo,existing building data hierarchy is empty while container of hashes to be removed is not empty");
    v33 = *(v6 + 24);
    goto LABEL_95;
  }

  v33 = *(v6 + 24);
  v34 = *(v6 + 16);
  while (1)
  {
    v35 = v76;
    if (!v76)
    {
      break;
    }

    v36 = *v34;
    v37 = &v76;
    do
    {
      v38 = v35[4];
      v19 = v38 >= v36;
      v39 = v38 < v36;
      if (v19)
      {
        v37 = v35;
      }

      v35 = v35[v39];
    }

    while (v35);
    if (v37 == &v76 || v36 < v37[4])
    {
      break;
    }

    *v34 = *(v33 - 1);
    *(v33 - 1) = v36;
    v40 = *(v6 + 24);
    v42 = *(v40 - 8);
    v33 = (v40 - 8);
    v41 = v42;
    *v33 = 0;
    if (v42)
    {
      (*(*v41 + 8))(v41);
    }

    *(v6 + 24) = v33;
    v34 = *(v6 + 16);
    if (v34 == v33)
    {
      goto LABEL_95;
    }
  }

  v43 = v34 + 1;
  if (v33 == v34 + 1)
  {
    goto LABEL_95;
  }

  while (1)
  {
    v44 = v76;
    if (!v76)
    {
      goto LABEL_84;
    }

    v45 = *v43;
    v46 = &v76;
    do
    {
      v47 = v44[4];
      v19 = v47 >= v45;
      v48 = v47 < v45;
      if (v19)
      {
        v46 = v44;
      }

      v44 = v44[v48];
    }

    while (v44);
    if (v46 == &v76 || v45 < v46[4])
    {
      goto LABEL_84;
    }

    v49 = v33 - 1;
    if (v43 == v33 - 1)
    {
      break;
    }

    *v43 = *v49;
    *v49 = v45;
    v50 = *(v6 + 24);
    v52 = *(v50 - 8);
    v33 = (v50 - 8);
    v51 = v52;
    *v33 = 0;
    if (v52)
    {
      (*(*v51 + 8))(v51);
    }

    *(v6 + 24) = v33;
    --v43;
LABEL_84:
    if (++v43 == v33)
    {
      goto LABEL_95;
    }
  }

  v67 = *--v33;
  v66 = v67;
  *v33 = 0;
  if (v67)
  {
    (*(*v66 + 8))(v66);
  }

  *(v6 + 24) = v33;
LABEL_95:
  v53 = ((v33 - *(v6 + 16)) >> 3) - ((v31 - v32) >> 3) + v77;
  if (v53)
  {
    LOWORD(v83) = 12;
    LOBYTE(v69) = 4;
    cnprint::CNPrinter::Print(&v83, &v69, "#nlos,%d,ghost building IDs sent in GeoMapsDataEvent for removal", v53);
  }

  if (v72 == 1)
  {
    v72 = 0;
  }

  v78 = &unk_1F4CEC730;
  sub_1D0E0BA98(v80 + 8);
LABEL_100:
  v69 = 0;
  v54 = *(a2 + 13);
  v55 = *(a2 + 14);
  if (v54 != v55)
  {
    v56 = v54 + 2;
    do
    {
      if (*v56 != v56[1])
      {
        operator new();
      }

      LOWORD(v78) = 12;
      LOBYTE(v83) = 4;
      v57 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v78, &v83, "#nlos,time,%.3lf,building has no sections", v58 + v57);
      v59 = v56 + 3;
      v56 += 5;
    }

    while (v59 != v55);
  }

  v60 = v68 >> 3;
  if (*(*(this + 4) + 24) == *(*(this + 4) + 16))
  {
    LOWORD(v78) = 12;
    LOBYTE(v83) = 3;
    v64 = (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(&v78, &v83, "#nlos,time,%.3lf,resetting NLOS engine as all of the %lu buildings got deleted", v65 + v64, v60);
    raven::RavenNLOSEngine::Reset(this);
  }

  else
  {
    raven::RavenFacetVisibilityData::ResetFacetVisibilityContainers((this + 3280));
    if (cnprint::CNPrinter::GetLogLevel(v61) <= 1)
    {
      LOWORD(v78) = 12;
      LOBYTE(v83) = 1;
      v62 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v78, &v83, "#nlos,time,%.3lf,preupdate_bldg_size,%lu,new_bldg_added,%d, num_bldg_removed,%lu,new_bldg_size,%lu,num_new_sections,%d,num_facets,%d", v63 + v62, v60, 0, *(a2 + 20), (*(*(this + 4) + 24) - *(*(this + 4) + 16)) >> 3, 0, v69);
    }
  }

  v70 = &unk_1F4CEC558;
  sub_1D0B99218(v76);
}

void sub_1D0E017CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_1D0E0BA98(&a37);
  sub_1D0B99218(a32);
  _Unwind_Resume(a1);
}

void raven::RavenNLOSEngine::Reset(int64x2_t *this)
{
  v2 = this[1].i64[1];
  v7 = this[1].i64[0];
  v8 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1D0E0981C(&this[2].i64[1], &v7);
  if (v8)
  {
    sub_1D0B7CAB8(v8);
  }

  v3 = this[2].i64[0];
  this[2].i64[0] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (this[16].i8[0] == 1)
  {
    this[16].i8[0] = 0;
  }

  if (this[28].i8[8] == 1)
  {
    this[28].i8[8] = 0;
  }

  if (this[195].i8[0] == 1)
  {
    this[195].i8[0] = 0;
  }

  if (this[202].i8[8] == 1)
  {
    this[202].i8[8] = 0;
  }

  this[203].i64[0] = 0;
  v4 = this[204].i64[0];
  v5 = this[203].i64[1];
  if (v4 != v5)
  {
    do
    {
      v6 = v4 - 56;
      sub_1D0E0B2FC(v4 - 24, *(v4 - 16));
      v4 = v6;
    }

    while (v6 != v5);
  }

  this[204].i64[0] = v5;
  raven::RavenFacetVisibilityData::Reset(this + 205);
}

void sub_1D0E01994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1D0B7CAB8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0E019AC(uint64_t a1)
{
  *a1 = &unk_1F4CEC558;
  sub_1D0B99218(*(a1 + 48));
  return a1;
}

void raven::RavenNLOSEngine::HandleEvent(raven::RavenNLOSEngine *this, raven::GnssPreprocessedMeasurementsEvent *a2)
{
  if ((*(this + 8) & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) > 1)
    {
      return;
    }

    LOWORD(v91) = 12;
    LOBYTE(v94) = 1;
    v32 = (*(*a2 + 16))(a2);
    v78 = v33 + v32;
    v31 = "#nlos,time,%.3lf,not configured";
    goto LABEL_42;
  }

  v3 = this;
  if (*(*this + 3536) == 1 && (*(this + 3240) != 1 || *(this + 3232) - 3 > 1))
  {
    return;
  }

  if (*(*this + 3537) && *(this + 456) == 1)
  {
    v4 = *(this + 368);
    v5 = (v4 & 0xFE) == 2 || v4 > 9;
    v6 = (1 << v4) & 0x370;
    if (!v5 && v6 != 0)
    {
      return;
    }
  }

  if ((*(this + 256) & 1) == 0)
  {
    this = (*(*a2 + 16))(a2);
    v8 = *(v3 + 256);
    *(v3 + 30) = this;
    *(v3 + 31) = v9;
    if ((v8 & 1) == 0)
    {
      *(v3 + 256) = 1;
    }
  }

  v10 = *(v3 + 4);
  v11 = v10 != 0;
  if (!v10)
  {
    ++*(v3 + 812);
  }

  if ((*(*v3 + 3664) & 1) == 0 && *(v3 + 426) == *(v3 + 427))
  {
    v11 = 0;
    ++*(v3 + 813);
  }

  if (*(v3 + 812) || *(v3 + 813))
  {
    v91 = (*(*a2 + 16))(a2);
    v92 = v12;
    if ((*(v3 + 256) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    this = CNTimeSpan::operator-(&v91, v3 + 30, v13, v14);
    v16 = v15 + this;
    if (v16 >= 60.0)
    {
      if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
      {
        LOWORD(v91) = 12;
        LOBYTE(v94) = 1;
        v17 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&v91, &v94, "#nlos,time,%.3lf,epoch count for no bldg data,%u,empty RT tile container,%u,in last %.0f seconds", v18 + v17, *(v3 + 812), *(v3 + 813), v16);
      }

      *(v3 + 406) = 0;
      this = (*(*a2 + 16))(a2);
      v19 = *(v3 + 256);
      *(v3 + 30) = this;
      *(v3 + 31) = v20;
      if ((v19 & 1) == 0)
      {
        *(v3 + 256) = 1;
      }
    }
  }

  if (!v11)
  {
    return;
  }

  if ((*(v3 + 64) & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) > 1)
    {
      return;
    }

    LOWORD(v91) = 12;
    LOBYTE(v94) = 1;
    v36 = (*(*a2 + 16))(a2);
    v78 = v37 + v36;
    v31 = "#nlos,time,%.3lf,no transformation";
    goto LABEL_42;
  }

  if ((*(v3 + 3120) & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) > 1)
    {
      return;
    }

    LOWORD(v91) = 12;
    LOBYTE(v94) = 1;
    v38 = (*(*a2 + 16))(a2);
    v78 = v39 + v38;
    v31 = "#nlos,time,%.3lf,no blended solution";
    goto LABEL_42;
  }

  v91 = (*(*a2 + 16))(a2);
  v92 = v21;
  v24 = CNTimeSpan::operator-(v3 + 204, &v91, v22, v23);
  v104[0] = v24;
  *&v104[1] = v25;
  if (v24 < 0 || (*v26.i64 = v25, v25 < 0.0))
  {
    v24 = CNTimeSpan::operator-(v104, v26, v27);
    v26.i64[0] = v28;
  }

  if (*v26.i64 + v24 > 2.0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v24) > 1)
    {
      return;
    }

    LOWORD(v91) = 12;
    LOBYTE(v94) = 1;
    v29 = (*(*a2 + 16))(a2);
    v78 = v30 + v29;
    v79 = *(v3 + 205) + *(v3 + 204);
    v31 = "#nlos,time,%.3lf,blended solution not time aligned to data,t_soln,%.3lf";
    goto LABEL_42;
  }

  v102 = *(v3 + 121);
  v103 = *(v3 + 244);
  sub_1D0E024FC(&v99, v3 + 40, &v102);
  if ((v101 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(v40) > 1)
    {
      return;
    }

    LOWORD(v91) = 12;
    LOBYTE(v94) = 1;
    v48 = (*(*a2 + 16))(a2);
    v78 = v49 + v48;
    v79 = *(v3 + 205) + *(v3 + 204);
    v31 = "#nlos,time,%.3lf,could not convert blended solution to ENU,t_soln,%.3lf";
LABEL_42:
    v34 = &v91;
    v35 = &v94;
LABEL_43:
    cnprint::CNPrinter::Print(v34, v35, v31, *&v78, *&v79, v80, v81);
    return;
  }

  if (*(*v3 + 3596) == 1)
  {
    v100 = *(*v3 + 80);
  }

  v96 = 0x300000003;
  v94 = &unk_1F4CD5DD0;
  v95 = xmmword_1D0E76C10;
  v97 = &v98;
  v41 = sub_1D0DF5384(v3 + 1632, &v94);
  if ((v42 & 1) == 0)
  {
    LOWORD(v91) = 12;
    LOBYTE(v87) = 4;
    (*(*a2 + 16))(a2, v41);
    cnprint::CNPrinter::Print(&v91, &v87, "#nlos,time,%.3lf,could not extract position covariance,t_soln,%.3lf");
    return;
  }

  sub_1D0E02574(&v91, v3 + 40, &v94);
  if ((v93 & 1) == 0)
  {
    LOWORD(v87) = 12;
    LOBYTE(v90.f64[0]) = 4;
    v50 = (*(*a2 + 16))(a2);
    v78 = v51 + v50;
    v79 = *(v3 + 205) + *(v3 + 204);
    v31 = "#nlos,time,%.3lf,could not convert position covariance to ENU,t_soln,%.3lf";
    goto LABEL_99;
  }

  v87 = v99;
  v88 = v100;
  updated = raven::RavenNLOSEngine::UpdateCandidatePointSearchSpace(v3, &v87, &v91, *(v3 + 4));
  if ((updated & 1) == 0)
  {
    LOWORD(v87) = 12;
    LOBYTE(v90.f64[0]) = 4;
    v52 = (*(*a2 + 16))(a2);
    v78 = v53 + v52;
    v79 = *(v3 + 205) + *(v3 + 204);
    v31 = "#nlos,time,%.3lf,could not compute candidate point search space,t_soln,%.3lf";
    goto LABEL_99;
  }

  v44 = *(v3 + 407);
  v45 = *(v3 + 408);
  if (v44 == v45)
  {
    LOWORD(v87) = 12;
    LOBYTE(v90.f64[0]) = 4;
    v54 = (*(*a2 + 16))(a2);
    v78 = v55 + v54;
    v79 = *(v3 + 205) + *(v3 + 204);
    v31 = "#nlos,time,%.3lf,empty candidate point search space,t_soln,%.3lf";
    goto LABEL_99;
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((v45 - v44) >> 3)) > *(*v3 + 3624))
  {
    LOWORD(v87) = 12;
    LOBYTE(v90.f64[0]) = 3;
    v46 = (*(*a2 + 16))(a2);
    v78 = v47 + v46;
    v79 = *(v3 + 205) + *(v3 + 204);
    v80 = 0x6DB6DB6DB6DB6DB7 * ((*(v3 + 408) - *(v3 + 407)) >> 3);
    v31 = "#nlos,time,%.3lf,no ray tracing: too many candidate points,t_soln,%.3lf,N,%zu";
LABEL_99:
    v34 = &v87;
    v35 = &v90;
    goto LABEL_43;
  }

  v57 = *(a2 + 12);
  v56 = *(a2 + 13);
  if (v57 == v56)
  {
    v82 = 0;
    v83 = 0;
    v58 = 0.0;
  }

  else
  {
    v58 = 0.0;
    v82 = 0;
    v83 = 0;
    while (1)
    {
      v59 = *v57;
      if (!*v57)
      {
        goto LABEL_92;
      }

      v60 = *v3;
      if (*(*v3 + 3656) <= LODWORD(v58))
      {
        break;
      }

      if (*(v59 + 264) <= *(v60 + 3640) * 0.0174532925)
      {
        v61 = 1.0;
        if (*(v59 + 304) == 1)
        {
          v61 = *(v59 + 296);
        }

        if (v61 <= *(v60 + 3632))
        {
          v62 = *(v59 + 328);
          if (*(v59 + 336) != v62)
          {
            v63 = 0;
            v64 = 0;
            do
            {
              if (*(v62 + v63 + 40))
              {
                v65 = *(v62 + v63 + 96) == 1;
              }

              else
              {
                v65 = 0;
              }

              if (v65)
              {
                v66 = *(v62 + v63 + 100);
                v5 = v66 > 9;
                v67 = (1 << v66) & 0x2BB;
                if (v5 || v67 == 0)
                {
                  v87 = *(v62 + v63 + 48);
                  updated = cnnavigation::GNSSEphemerides::GNSSFindSat(v59 + 32, &v87, &v90);
                  if (!updated)
                  {
                    v84 = v58;
                    v69 = sub_1D0E024FC(&v87, v3 + 40, &v90);
                    if (v89)
                    {
                      updated = raven::RavenNLOSEngine::ProcessSatellite(v3, v59, &v87, *(v3 + 4));
                      if (updated)
                      {
                        updated = raven::RavenNLOSEngine::AugmentMeasurementWithRayTracingResults(v3, v59);
                        v82 = (v82 + updated);
                        v83 = (v83 + 1);
                      }

                      *&v58 = (LODWORD(v58) + 1);
                      break;
                    }

                    v86 = 12;
                    v85 = 4;
                    v70 = (*(*a2 + 16))(a2, v69);
                    v72 = v71;
                    v73 = sub_1D0BCFAB8(v59);
                    cnprint::CNPrinter::Print(&v86, &v85, "#nlos,time,%.3lf,could not compute ENU coordinates for satellite %s", v72 + v70, v73);
                    v58 = v84;
                  }
                }
              }

              ++v64;
              v62 = *(v59 + 328);
              v63 += 208;
            }

            while (v64 < 0x4EC4EC4EC4EC4EC5 * ((*(v59 + 336) - v62) >> 4));
          }
        }
      }

LABEL_92:
      v57 += 2;
      if (v57 == v56)
      {
        goto LABEL_97;
      }
    }

    updated = cnprint::CNPrinter::GetLogLevel(updated);
    if (updated <= 1)
    {
      LOWORD(v87) = 12;
      LOBYTE(v90.f64[0]) = 1;
      v74 = (*(*a2 + 16))(a2);
      cnprint::CNPrinter::Print(&v87, &v90, "#nlos,time,%.3lf,maximum number of traced satellites reached,%u", v75 + v74, LODWORD(v58));
    }
  }

LABEL_97:
  if (cnprint::CNPrinter::GetLogLevel(updated) <= 1)
  {
    LOWORD(v87) = 12;
    LOBYTE(v90.f64[0]) = 1;
    v76 = (*(*a2 + 16))(a2);
    v80 = v83;
    v81 = v82;
    v79 = v58;
    v78 = v77 + v76;
    v31 = "#nlos,time,%.3lf,ray tracing satellite counts,attempted,%u,with nlos path,%u,forwarded,%u";
    goto LABEL_99;
  }
}

double sub_1D0E024FC(uint64_t a1, uint64_t a2, float64x2_t *a3)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v10 = v3;
    v11 = v4;
    result = cnnavigation::ECEFToENU(a3, 1, 1, a2, 0, &v8);
    if (!v7)
    {
      result = *&v8;
      *a1 = v8;
      *(a1 + 16) = v9;
      *(a1 + 24) = 1;
    }
  }

  return result;
}

void sub_1D0E02574(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 160))
  {
    v9 = 0x300000003;
    v7 = &unk_1F4CD5DD0;
    v8 = xmmword_1D0E76C10;
    v10 = &v11;
    if (sub_1D0BFE654(a2 + 32, a3, &v7))
    {
      sub_1D0BE0DE8(a1, &v7);
      v4 = 1;
    }

    else
    {
      v6 = 1;
      v5 = 4;
      cnprint::CNPrinter::Print(&v6, &v5, "#geo,could not convert ECEF covariance to ENU");
      v4 = 0;
      *a1 = 0;
    }

    a1[112] = v4;
  }

  else
  {
    *a1 = 0;
    a1[112] = 0;
  }
}

BOOL raven::RavenNLOSEngine::UpdateCandidatePointSearchSpace(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[408];
  v9 = a1[407];
  if (v8 != v9)
  {
    do
    {
      v10 = v8 - 56;
      sub_1D0E0B2FC(v8 - 24, *(v8 - 16));
      v8 = v10;
    }

    while (v10 != v9);
  }

  a1[408] = v9;
  v11 = *(*a1 + 3600);
  v12 = *(*a1 + 3608);
  v92 = *(*a1 + 3616);
  v13 = *(a3 + 32);
  v14 = sqrt(v13[*(a3 + 20) + 1]);
  v15 = v12 * sqrt(*v13);
  if (v15 <= v11)
  {
    v15 = *(*a1 + 3600);
  }

  v16 = v15;
  v17 = v12 * v14;
  if (v12 * v14 <= v11)
  {
    v17 = *(*a1 + 3600);
  }

  v18 = v17;
  if ((atomic_load_explicit(&qword_1EE054BE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE054BE8))
  {
    qword_1EE054C08 = 0x200000001;
    qword_1EE054BF0 = &unk_1F4CE2060;
    qword_1EE054C18 = 0x100000000;
    qword_1EE054C10 = &qword_1EE054C18;
    unk_1EE054BF8 = xmmword_1D0E84500;
    __cxa_atexit(sub_1D0D7525C, &qword_1EE054BF0, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE054BE8);
  }

  v19 = *(a3 + 20);
  v20 = *(a3 + 32);
  v21 = dword_1EE054C00;
  *&v115[16] = 0x200000002;
  v114 = &unk_1F4CE0268;
  *v115 = dword_1EE054C00;
  *&v115[4] = dword_1EE054C00;
  *&v115[8] = *v115 * *v115;
  *&v115[12] = dword_1EE054C00;
  *&v115[24] = &v115[32];
  if (dword_1EE054C00)
  {
    v22 = 0;
    v23 = 0;
    v24 = qword_1EE054C10;
    do
    {
      v25 = 0;
      v26 = *(v24 + 4 * v23) * v19;
      do
      {
        *&v115[8 * (v22 + v25) + 32] = *(v20 + 8 * (*(v24 + 4 * v25) + v26));
        ++v25;
      }

      while (v21 != v25);
      ++v23;
      v22 += v21;
    }

    while (v23 != v21);
  }

  v103 = 0x200000002;
  v102 = xmmword_1D0E83F70;
  v101 = &unk_1F4CE0268;
  v104 = &v105;
  v111 = 0x100000002;
  *&v110[8] = xmmword_1D0E83F60;
  *v110 = &unk_1F4CE0EA8;
  v112 = &v113;
  v107 = 0x100000002;
  *&v106[8] = xmmword_1D0E83F60;
  *v106 = &unk_1F4CE0EA8;
  v108 = &v109;
  __p[0] = 0x100000008;
  v93 = &unk_1F4CE4320;
  v94 = xmmword_1D0E84520;
  __p[1] = &__p[2];
  v27 = sub_1D0BA5174(&v114, v110, v106, &v93, &v101);
  if (v27 > *(*a1 + 3552))
  {
    LOWORD(v93) = 12;
    LOBYTE(v114) = 3;
    cnprint::CNPrinter::Print(&v93, &v114, "#nlos,location covariance condition number too large,cond,%.1f", v27);
    return 0;
  }

  v29 = vcvtpd_s64_f64(1.0 / v92 * v16);
  v30 = vcvtpd_s64_f64(1.0 / v92 * v18);
  v93 = &unk_1F4CEC6D0;
  v94 = 0u;
  memset(__p, 0, 25);
  v96 = &unk_1F4CEC730;
  v97 = 0u;
  memset(v98, 0, sizeof(v98));
  v99 = 0u;
  v100 = -1;
  *v110 = vmulq_f64(*(a1 + 13), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v31 = 4 * v29 * v30;
  v86 = v29;
  if (0x6DB6DB6DB6DB6DB7 * ((a1[409] - a1[407]) >> 3) < v31)
  {
    if (v31 <= 0x492492492492492)
    {
      *&v115[24] = a1 + 407;
      sub_1D0E0CCF4(v31);
    }

    sub_1D0C5663C();
  }

  if ((v29 & 0x8000000000000000) != 0)
  {
    v91 = 0;
    v28 = 1;
LABEL_84:
    if (cnprint::CNPrinter::GetLogLevel(v31) <= 1)
    {
      LOWORD(v114) = 12;
      v106[0] = 1;
      cnprint::CNPrinter::Print(&v114, v106, "#nlos,%zu candidate points identified (%u inside a building)", 0x6DB6DB6DB6DB6DB7 * ((a1[408] - a1[407]) >> 3), v91);
    }

    goto LABEL_86;
  }

  v85 = a1 + 407;
  v28 = 0;
  v91 = 0;
  v90 = v11 * v11;
  v89 = v12 * v12;
  v32 = *(a1 + 429) * 0.5;
  v33 = -v29;
  v81 = 4 * v29 * v30;
  v82 = vdupq_n_s64(0x7FF8000000000000uLL);
  v83 = a4;
  while (1)
  {
    v87 = v33;
    if ((v30 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_80:
    v28 = v87 >= v86;
    v33 = v87 + 1;
    if (v87 == v86)
    {
      goto LABEL_84;
    }
  }

  v84 = v28;
  v34 = v92 * v33;
  v35 = -v30;
  while (1)
  {
    v36 = v92 * v35;
    if (v34 * v34 + v36 * v36 > v90 && v36 * (v34 * v104[SHIDWORD(v102)]) + v36 * (v34 * v104[SHIDWORD(v102)]) + v34 * *v104 * v34 + v36 * v104[SHIDWORD(v102) + 1] * v36 > v89)
    {
      goto LABEL_78;
    }

    v37 = v34 + *a2;
    v38 = v36 + *(a2 + 8);
    *&v94 = v37;
    *(&v94 + 1) = v38;
    LOBYTE(__p[3]) = 0;
    __p[1] = __p[0];
    v114 = &unk_1F4CEC730;
    *v115 = a4;
    memset(&v115[8], 0, 48);
    v116 = 0;
    v117 = -1;
    v97 = *v115;
    sub_1D0E0BBF4(v98, &v115[16]);
    v100 = v117;
    v114 = &unk_1F4CEC730;
    sub_1D0E0BA98(&v115[16]);
    sub_1D0E0B780(&v96);
    while (*(&v99 + 1))
    {
      v31 = (*(**(&v97 + 1) + 16))(*(&v97 + 1), &v93);
      if (__p[3])
      {
        goto LABEL_29;
      }

      sub_1D0E0B884(&v96);
    }

    sub_1D0E0C46C(&v93, v39);
    if (LOBYTE(__p[3]) == 1)
    {
LABEL_29:
      ++v91;
      goto LABEL_78;
    }

    v88 = *(a2 + 16);
    if (*(*a1 + 3664) == 1)
    {
      v40 = a1[408];
      v41 = a1[409];
      if (v40 >= v41)
      {
        v55 = 0x6DB6DB6DB6DB6DB7 * ((v40 - *v85) >> 3);
        v56 = v55 + 1;
        if ((v55 + 1) > 0x492492492492492)
        {
          sub_1D0C5663C();
        }

        v57 = 0x6DB6DB6DB6DB6DB7 * ((v41 - *v85) >> 3);
        if (2 * v57 > v56)
        {
          v56 = 2 * v57;
        }

        if (v57 >= 0x249249249249249)
        {
          v58 = 0x492492492492492;
        }

        else
        {
          v58 = v56;
        }

        *&v115[24] = a1 + 407;
        if (v58)
        {
          sub_1D0E0CCF4(v58);
        }

        v72 = 56 * v55;
        *v72 = v37;
        *(v72 + 8) = v38;
        *(v72 + 16) = v88;
        *(v72 + 48) = 0;
        *(56 * v55 + 0x28) = 0;
        v73 = 56 * v55 + 40;
        *(v72 + 24) = 0;
LABEL_76:
        *(v72 + 32) = v73;
        v42 = v72 + 56;
        v74 = a1[408];
        v75 = a1[407];
        v76 = v72 + v75 - v74;
        sub_1D0E0CD50(v75, v74, v76);
        v77 = a1[407];
        a1[407] = v76;
        a1[408] = v42;
        v78 = a1[409];
        a1[409] = 0;
        *&v115[8] = v77;
        *&v115[16] = v78;
        v114 = v77;
        *v115 = v77;
        v31 = sub_1D0E0CDF8(&v114);
        goto LABEL_77;
      }

      *v40 = v37;
      *(v40 + 8) = v38;
      *(v40 + 16) = v88;
      *(v40 + 48) = 0;
      *(v40 + 40) = 0;
      v42 = v40 + 56;
      *(v40 + 24) = 0;
      *(v40 + 32) = v40 + 40;
      goto LABEL_77;
    }

    v43 = a1[416];
    v44 = a1[417];
    if (v43 != v44)
    {
      break;
    }

    v54 = 0;
    v53 = a1[416];
LABEL_53:
    if (v54 == (v43 - v53) >> 3)
    {
      *v106 = v82;
      if (*(a1 + 64) == 1)
      {
        v59 = *(a1 + 27);
        v60 = v37 / v59;
        v52 = v59 <= 0.0;
        v61 = 0.0;
        if (!v52)
        {
          v61 = v60;
        }

        v62.f64[1] = v61;
        v62.f64[0] = v38 / *(a1 + 26);
        *v106 = vaddq_f64(v62, *(a1 + 5));
      }

      v63 = (a1[418] - v53) >> 3;
      if (v63 <= v54)
      {
        v64 = v63 + v81;
        if (v63 < v63 + v81)
        {
          if (!(v64 >> 61))
          {
            *&v115[24] = a1 + 416;
            sub_1D0C54E78((a1 + 416), v64);
          }

          sub_1D0C5663C();
        }
      }

      v31 = raven::RavenFacetVisibilityData::ConstructPointToFacetVisibilityHierarchy(a1 + 410, v106, a1[4], v110);
      if (!v31)
      {
        goto LABEL_78;
      }

      v53 = a1[416];
      v54 = ((a1[417] - v53) >> 3) - 1;
    }

    v65 = *(v53 + 8 * v54);
    v66 = a1[408];
    v67 = a1[409];
    if (v66 >= v67)
    {
      v68 = 0x6DB6DB6DB6DB6DB7 * ((v66 - *v85) >> 3);
      v69 = v68 + 1;
      if ((v68 + 1) > 0x492492492492492)
      {
        sub_1D0C5663C();
      }

      v70 = 0x6DB6DB6DB6DB6DB7 * ((v67 - *v85) >> 3);
      if (2 * v70 > v69)
      {
        v69 = 2 * v70;
      }

      if (v70 >= 0x249249249249249)
      {
        v71 = 0x492492492492492;
      }

      else
      {
        v71 = v69;
      }

      *&v115[24] = a1 + 407;
      if (v71)
      {
        sub_1D0E0CCF4(v71);
      }

      v72 = 56 * v68;
      *v72 = v37;
      *(v72 + 8) = v38;
      *(v72 + 16) = v88;
      *(v72 + 48) = 0;
      *(56 * v68 + 0x28) = 0;
      v73 = 56 * v68 + 40;
      *(v72 + 24) = v65;
      goto LABEL_76;
    }

    *v66 = v37;
    *(v66 + 8) = v38;
    *(v66 + 16) = v88;
    *(v66 + 48) = 0;
    *(v66 + 40) = 0;
    v42 = v66 + 56;
    *(v66 + 24) = v65;
    *(v66 + 32) = v66 + 40;
LABEL_77:
    a1[408] = v42;
LABEL_78:
    if (v35++ == v30)
    {
      goto LABEL_80;
    }
  }

  v45 = 0;
  while (*(a1 + 64) == 1)
  {
    v46 = **v43;
    v47 = v46 * 0.000001;
    if (v47 > 180.0)
    {
      v47 = v47 + -360.0;
    }

    v48 = *(a1 + 5);
    v49 = *(a1 + 26);
    v50 = sub_1D0D46A58((a1 + 5), v47);
    v51 = vabdd_f64(v49 * -(v48 - (HIDWORD(v46) * 0.000001 + -90.0) * 0.0174532925), v38);
    v52 = vabdd_f64(v50, v37) <= v32 && v51 <= v32;
    if (!v52)
    {
      ++v45;
      if (++v43 != v44)
      {
        continue;
      }
    }

    v43 = a1[417];
    v53 = a1[416];
    v54 = v45;
    a4 = v83;
    goto LABEL_53;
  }

  LOWORD(v114) = 12;
  v106[0] = 4;
  cnprint::CNPrinter::Print(&v114, v106, "#nlos,Could not compute building data coordinates for tile point");
  v28 = v84;
LABEL_86:
  v93 = &unk_1F4CEC6D0;
  v96 = &unk_1F4CEC730;
  sub_1D0E0BA98(v98);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v28;
}

void sub_1D0E03208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  sub_1D0E0CE50(va);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenNLOSEngine::ProcessSatellite(cnprint::CNPrinter *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v89 = *MEMORY[0x1E69E9840];
  v8 = sub_1D0C460E0(a2);
  v86[0] = v8;
  *&v86[1] = v9;
  if (*(a1 + 8))
  {
    v79 = &v79;
    v80 = &v79;
    memset(v81, 0, sizeof(v81));
    v82[0] = v82;
    v82[1] = v82;
    v82[2] = 0;
    v83 = 0;
    *__p = 0u;
    memset(v85, 0, sizeof(v85));
    v76 = &v76;
    v77 = &v76;
    v78 = 0;
    v10 = *(a1 + 407);
    v52 = *(a1 + 408);
    if (v10 == v52)
    {
      v51 = 0;
      goto LABEL_56;
    }

    v51 = 0;
    while (1)
    {
      if (*(*a1 + 3664) == 1)
      {
        raven::RavenNLOSEngine::FindApproximatePathsUsingRayTracing(a1, v86, a2, v10, a3, a4, &v66);
        sub_1D0E09C08(&v76);
        v11 = v67;
        if (v67)
        {
          v12 = v66;
          v13 = *(v66 + 8);
          v14 = **(&v66 + 1);
          *(v14 + 8) = v13;
          *v13 = v14;
          v15 = v76;
          *(v76 + 8) = *(&v12 + 1);
          **(&v12 + 1) = v15;
          *(v12 + 8) = &v76;
          v76 = v12;
          v78 += v11;
          *&v67 = 0;
        }

        sub_1D0E09C08(&v66);
        v16 = v78;
      }

      else
      {
        v31 = *(v10 + 24);
        v32 = *(*a1 + 3560);
        __p[1] = __p[0];
        sub_1D0E09C08(&v79);
        sub_1D0E09C08(&v76);
        if (!a4)
        {
          goto LABEL_50;
        }

        if (!v31)
        {
          goto LABEL_50;
        }

        if (!v32)
        {
          goto LABEL_50;
        }

        v83 = v32;
        v33 = *v10;
        *(&v81[1] + 1) = *(v10 + 16);
        *(v81 + 8) = v33;
        *(v85 + 8) = *a3;
        *(&v85[1] + 1) = *(a3 + 16);
        *&v66 = &unk_1F4CEC5C8;
        v34 = vsubq_f64(*a3, *v10);
        v35 = *(a3 + 16) - *(v10 + 16);
        v36 = sqrt(COERCE_DOUBLE(*&vmulq_f64(v34, v34).f64[1]) + v34.f64[0] * v34.f64[0] + v35 * v35);
        if (fabs(v36) < 2.22044605e-16)
        {
          goto LABEL_50;
        }

        v37 = 1.0 / v36;
        v38 = v35 * v37;
        v87 = *v10;
        v88 = *(v10 + 16);
        v67 = v87;
        *v68 = v88;
        v50 = vmulq_n_f64(v34, v37);
        *&v68[8] = v50;
        v69 = v35 * v37;
        *(&v66 + 1) = a4;
        LODWORD(v70) = 0;
        BYTE4(v70) = 0;
        (*(*a4 + 16))(a4, &v66);
        if ((v70 & 0x100000000) == 0)
        {
          v53 = v87;
          v54 = v88;
          v55 = v50;
          v56 = v38;
          v57[0] = v57;
          v57[1] = v57;
          v58 = 0;
          sub_1D0E0CEC8(&v53);
        }

        for (i = *(v31 + 24); i; i = *i)
        {
          sub_1D0BCC0B4(v82);
          __p[1] = __p[0];
          sub_1D0E090D8(__p, (v83 + 1));
          sub_1D0E09C7C(&v79, i[2], a4);
        }

        v40 = *&v81[0];
        v16 = v78;
        if (*&v81[0])
        {
          v41 = v80;
          v42 = v79;
          v43 = *(v79 + 8);
          v44 = *v80;
          *(v44 + 8) = v43;
          *v43 = v44;
          v45 = v76;
          *(v76 + 8) = v41;
          *v41 = v45;
          *(v42 + 8) = &v76;
          v16 += v40;
          v76 = v42;
          v78 = v16;
          *&v81[0] = 0;
        }

        if (!v16)
        {
          goto LABEL_50;
        }
      }

      if (!v16)
      {
        goto LABEL_50;
      }

      LOBYTE(v66) = 0;
      v75 = 0;
      v17 = v77;
      if (v77 == &v76)
      {
        goto LABEL_50;
      }

      v18 = INFINITY;
      do
      {
        raven::RavenNLOSEngine::RefineApproximatePath(a1, (v17 + 2), v86, a2, a3, &v53);
        if ((v65 & 1) == 0)
        {
          goto LABEL_18;
        }

        if (v58)
        {
          v19 = v62 - sqrt((v60 - *(&v53 + 1)) * (v60 - *(&v53 + 1)) + (v59 - *&v53) * (v59 - *&v53) + (v61 - v54) * (v61 - v54));
        }

        else
        {
          v19 = 0.0;
        }

        if (v19 >= v18 || (sub_1D0E0A5AC(&v66, &v53), v18 = v19, (v65 & 1) != 0))
        {
          v64 = &unk_1F4CD5E28;
          v63 = &unk_1F4CD5E28;
          sub_1D0BCC0B4(v57);
LABEL_18:
          v19 = v18;
        }

        v17 = v17[1];
        v18 = v19;
      }

      while (v17 != &v76);
      if (v75)
      {
        v20 = v51;
        if (v70)
        {
          v20 = v51 + 1;
        }

        v51 = v20;
        v21 = *(v10 + 40);
        if (!v21)
        {
LABEL_47:
          operator new();
        }

        v22 = *(a2 + 24);
        v23 = *(a2 + 28);
        while (1)
        {
          while (1)
          {
            v24 = v21;
            v25 = *(v21 + 56);
            v26 = *(v24 + 15);
            v27 = v26 < v23;
            if (v25 != v22)
            {
              v27 = v25 < v22;
            }

            if (!v27)
            {
              break;
            }

            v21 = *v24;
            if (!*v24)
            {
              goto LABEL_47;
            }
          }

          v28 = v26 > v23;
          v29 = v25 == v22;
          v30 = v25 > v22;
          if (v29)
          {
            v30 = v28;
          }

          if (!v30)
          {
            break;
          }

          v21 = v24[1];
          if (!v21)
          {
            goto LABEL_47;
          }
        }

        v46 = v67;
        *(v24 + 4) = v66;
        *(v24 + 5) = v46;
        *(v24 + 6) = *v68;
        sub_1D0E0A498(v24 + 14, &v68[16]);
        *(v24 + 17) = v71;
        *(v24 + 19) = v72;
        sub_1D0B894B0((v24 + 21), &v73);
        sub_1D0B894B0((v24 + 29), &v74);
        if (v75)
        {
          v74 = &unk_1F4CD5E28;
          v73 = &unk_1F4CD5E28;
          sub_1D0BCC0B4(&v68[16]);
        }
      }

LABEL_50:
      v10 += 56;
      if (v10 == v52)
      {
LABEL_56:
        sub_1D0E09C08(&v76);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        sub_1D0BCC0B4(v82);
        sub_1D0E09C08(&v79);
        return v51;
      }
    }
  }

  v47 = v8;
  v48 = v9;
  if (cnprint::CNPrinter::GetLogLevel(v8) <= 1)
  {
    LOWORD(v66) = 12;
    LOBYTE(v53) = 1;
    cnprint::CNPrinter::Print(&v66, &v53, "#nlos,time,%.3lf,object not configured in %s", v48 + v47, "ProcessSatellite");
  }

  return 0;
}

uint64_t raven::RavenNLOSEngine::AugmentMeasurementWithRayTracingResults(uint64_t a1, uint64_t a2)
{
  LOBYTE(v91) = 0;
  v96 = 0;
  v101 = 0x300000003;
  v100 = xmmword_1D0E76C10;
  v99 = &unk_1F4CD5DD0;
  v102 = v103;
  if (*(a1 + 200) == 1 && *(a1 + 80) == 1)
  {
    sub_1D0B894B0(&v99, a1 + 88);
    sub_1D0BE0DE8(&v75, &v99);
    v84 = 1;
    sub_1D0BE0DE8(&v91, &v75);
    v96 = 1;
    v97[0] = 0;
    v98 = 0;
    sub_1D0BE0DE8(v97, &v91);
    v98 = 1;
    v4 = sub_1D0C460E0(a2);
    v64 = v4;
    v89 = 0;
    v90 = 0;
    v88 = &v89;
    v6 = *(a1 + 3256);
    v7 = *(a1 + 3264);
    if (v6 == v7)
    {
      goto LABEL_91;
    }

    v8 = 0;
    v9 = v5;
    do
    {
      v10 = *(v6 + 40);
      if (v10)
      {
        v11 = *(a2 + 24);
        v12 = *(a2 + 28);
        v13 = v6 + 40;
        do
        {
          v14 = *(v10 + 56);
          v16 = v14 == v11;
          v15 = v14 > v11;
          if (v16)
          {
            v15 = *(v10 + 60) > v12;
          }

          v16 = !v15;
          if (v15)
          {
            v17 = 8;
          }

          else
          {
            v17 = 0;
          }

          if (v16)
          {
            v13 = v10;
          }

          v10 = *(v10 + v17);
        }

        while (v10);
        if (v13 != v6 + 40)
        {
          v18 = *(v13 + 56);
          v19 = *(v13 + 60) < v12;
          v16 = v18 == v11;
          v20 = v18 < v11;
          if (v16)
          {
            v20 = v19;
          }

          if (!v20)
          {
            sub_1D0E0977C(&v75, v13 + 64);
            v21 = v89;
            if (!v89)
            {
LABEL_28:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v22 = v21;
                if ((sub_1D0E0ED6C(&v75, (v21 + 4)) & 0x80) == 0)
                {
                  break;
                }

                v21 = *v22;
                if (!*v22)
                {
                  goto LABEL_28;
                }
              }

              if ((sub_1D0E0ED6C((v22 + 4), &v75) & 0x80) == 0)
              {
                break;
              }

              v21 = v22[1];
              if (!v21)
              {
                goto LABEL_28;
              }
            }

            v4 = sub_1D0BCC0B4(&v75);
            v23 = *(v22 + 14);
            *(v22 + 14) = v23 + 1;
            if (v23 + 1 > v8)
            {
              v8 = v23 + 1;
            }
          }
        }
      }

      v6 += 56;
    }

    while (v6 != v7);
    if (!v90)
    {
      goto LABEL_91;
    }

    v24 = v88;
    if (v88 != &v89)
    {
      v25 = 0;
      do
      {
        sub_1D0E0B258(&v75, (v24 + 4));
        *&v76[16] = *(v24 + 14);
        v26 = *&v76[16];
        v4 = sub_1D0BCC0B4(&v75);
        if (v26 == v8)
        {
          ++v25;
        }

        v27 = v24[1];
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = v24[2];
            v16 = *v28 == v24;
            v24 = v28;
          }

          while (!v16);
        }

        v24 = v28;
      }

      while (v28 != &v89);
      if (v25 > 1)
      {
        if (cnprint::CNPrinter::GetLogLevel(v4) <= 1)
        {
          LOWORD(v75) = 12;
          LOBYTE(v91) = 1;
          v29 = sub_1D0BCFAB8(a2);
          cnprint::CNPrinter::Print(&v75, &v91, "#nlos,time,%.3lf,ray tracing results ignored for %s: multiple sequences occur most frequently, %lld", v9 + v64, v29, v25);
        }

LABEL_91:
        sub_1D0E0ED18(v89);
        return 0;
      }

      v24 = v88;
    }

    if (v24 != &v89)
    {
      while (1)
      {
        sub_1D0E0B258(&v75, (v24 + 4));
        *&v76[16] = *(v24 + 14);
        v34 = *&v76[16];
        v4 = sub_1D0BCC0B4(&v75);
        if (v34 == v8)
        {
          break;
        }

        v35 = v24[1];
        if (v35)
        {
          do
          {
            v36 = v35;
            v35 = *v35;
          }

          while (v35);
        }

        else
        {
          do
          {
            v36 = v24[2];
            v16 = *v36 == v24;
            v24 = v36;
          }

          while (!v16);
        }

        v24 = v36;
        if (v36 == &v89)
        {
          v24 = &v89;
          break;
        }
      }
    }

    if (!v24[6])
    {
      if (cnprint::CNPrinter::GetLogLevel(v4) <= 1)
      {
        LOWORD(v75) = 12;
        LOBYTE(v91) = 1;
        v59 = sub_1D0BCFAB8(a2);
        cnprint::CNPrinter::Print(&v75, &v91, "#nlos,time,%.3lf,ray tracing results ignored for %s: most common path is LOS", v9 + v64, v59);
      }

      goto LABEL_91;
    }

    v37 = v8;
    v38 = *(a1 + 3264);
    v39 = *(a1 + 3256);
    v40 = v8 / (0x6DB6DB6DB6DB6DB7 * ((v38 - v39) >> 3));
    if (v40 < *(*a1 + 3648))
    {
      if (cnprint::CNPrinter::GetLogLevel(v4) <= 1)
      {
        LOWORD(v75) = 12;
        LOBYTE(v91) = 1;
        v60 = sub_1D0BCFAB8(a2);
        cnprint::CNPrinter::Print(&v75, &v91, "#nlos,time,%.3lf,ray tracing results ignored for %s: low occurrence rate of %.1lf%% (N = %lu)", v9 + v64, v60, v40 * 100.0, v24[6]);
      }

      goto LABEL_91;
    }

    v85[0] = 0;
    v86 = 0u;
    memset(v87, 0, sizeof(v87));
    v93 = 0x300000001;
    v91 = &unk_1F4CDF248;
    v94 = v95;
    memset(v95, 0, 24);
    v41.n128_u64[1] = 0x100000003;
    v92 = xmmword_1D0E7F310;
    v101 = 0x300000001;
    v99 = &unk_1F4CDF248;
    v102 = v103;
    memset(v103, 0, 24);
    v100 = xmmword_1D0E7F310;
    if (v39 == v38)
    {
      v41.n128_u64[0] = 0;
LABEL_94:
      v77 = 0x300000001;
      *v76 = &unk_1F4CDF248;
      *&v76[8] = xmmword_1D0E7F310;
      v78 = &v79;
      v82 = 0x300000001;
      v80 = &unk_1F4CDF248;
      v81 = xmmword_1D0E7F310;
      v83 = &v84;
      v75 = v41.n128_f64[0];
      v67 = 0x300000001;
      v62 = 1.0 / v37;
      v65 = &unk_1F4CDF248;
      v66 = xmmword_1D0E7F310;
      v68 = v69;
      v41.n128_f64[0] = v62;
      sub_1D0B8930C(&v91, &v65, v41);
      if (v98)
      {
        v72 = 0x300000001;
        v70 = &unk_1F4CDF248;
        v71 = xmmword_1D0E7F310;
        v73 = v74;
        sub_1D0B89390(&v65, v97, &v70);
        sub_1D0B894B0(v76, &v70);
        v67 = 0x300000001;
        v65 = &unk_1F4CDF248;
        *&v63.f64[1] = 0x100000003;
        v66 = xmmword_1D0E7F310;
        v68 = v69;
        v63.f64[0] = v62;
        sub_1D0B8930C(&v99, &v65, v63);
        if (v98)
        {
          v72 = 0x300000001;
          v70 = &unk_1F4CDF248;
          v71 = xmmword_1D0E7F310;
          v73 = v74;
          sub_1D0B89390(&v65, v97, &v70);
          sub_1D0B894B0(&v80, &v70);
          operator new();
        }

        sub_1D0C42F28();
      }

      sub_1D0C42F28();
    }

    while (1)
    {
      v42 = *(v39 + 40);
      if (!v42)
      {
        goto LABEL_85;
      }

      v43 = *(a2 + 24);
      v44 = *(a2 + 28);
      v45 = v39 + 40;
      do
      {
        v46 = *(v42 + 56);
        v16 = v46 == v43;
        v47 = v46 > v43;
        if (v16)
        {
          v47 = *(v42 + 60) > v44;
        }

        v48 = !v47;
        if (v47)
        {
          v49 = 8;
        }

        else
        {
          v49 = 0;
        }

        if (v48)
        {
          v45 = v42;
        }

        v42 = *(v42 + v49);
      }

      while (v42);
      if (v45 == v39 + 40)
      {
        goto LABEL_85;
      }

      v50 = *(v45 + 56);
      v51 = *(v45 + 60) < v44;
      v16 = v50 == v43;
      v52 = v50 < v43;
      if (v16)
      {
        v52 = v51;
      }

      if (v52)
      {
        goto LABEL_85;
      }

      sub_1D0E0977C(&v75, v45 + 64);
      if (*&v76[8] == v24[6])
      {
        v53 = *v76;
        if (*v76 == &v75)
        {
LABEL_80:
          sub_1D0BCC0B4(&v75);
          if (*(v45 + 128))
          {
            v55 = *(v45 + 136) - *(v45 + 64);
            v56 = *(v45 + 144) - *(v45 + 72);
            v57 = *(v45 + 152) - *(v45 + 80);
            v58 = *(v45 + 160) - sqrt(v56 * v56 + v55 * v55 + v57 * v57);
          }

          else
          {
            v58 = 0.0;
          }

          v75 = v58;
          sub_1D0B8954C(v85, &v75, 1.0);
          *&v76[16] = 0x300000001;
          *v76 = xmmword_1D0E7F310;
          v75 = COERCE_DOUBLE(&unk_1F4CDF248);
          v77 = &v78;
          sub_1D0B88838(&v91, v45 + 168, &v75);
          sub_1D0B894B0(&v91, &v75);
          *&v76[16] = 0x300000001;
          *v76 = xmmword_1D0E7F310;
          v75 = COERCE_DOUBLE(&unk_1F4CDF248);
          v77 = &v78;
          sub_1D0B88838(&v91, v45 + 232, &v75);
          v41 = sub_1D0B894B0(&v99, &v75);
          goto LABEL_85;
        }

        v54 = v24 + 4;
        while (1)
        {
          v54 = v54[1];
          if (v53[2] != v54[2])
          {
            break;
          }

          v53 = v53[1];
          if (v53 == &v75)
          {
            goto LABEL_80;
          }
        }
      }

      sub_1D0BCC0B4(&v75);
LABEL_85:
      v39 += 56;
      if (v39 == v38)
      {
        v41.n128_u64[0] = *&v87[1];
        goto LABEL_94;
      }
    }
  }

  v97[0] = 0;
  v98 = 0;
  LOWORD(v75) = 12;
  LOBYTE(v91) = 4;
  v30 = sub_1D0C460E0(a2);
  v32 = v31;
  v33 = sub_1D0BCFAB8(a2);
  cnprint::CNPrinter::Print(&v75, &v91, "#nlos,time,%.3lf,%s could not get ECEF-to-ENU rotation matrix", v32 + v30, v33);
  return 0;
}

char *raven::RavenNLOSEngine::HandleEvent(char *this, const raven::RavenSolutionEvent *a2)
{
  if (this[8] == 1 && *(a2 + 209) == 2 && *(a2 + 208) == 4 && *(a2 + 1464) != 0 && *(a2 + 1264) != 0)
  {
    v6 = this;
    if (this[3120] == 1)
    {
      v7 = this + 472;
      v8 = a2 + 8;

      return memcpy(v7, v8, 0xA51uLL);
    }

    else
    {
      *(this + 58) = &unk_1F4CEF7A8;
      this = memcpy(this + 472, a2 + 8, 0xA51uLL);
      v6[3120] = 1;
    }
  }

  return this;
}

void raven::RavenNLOSEngine::HandleEvent(raven::RavenNLOSEngine *this, const raven::RayTracingTileEvent *a2)
{
  if (*(this + 8))
  {
    if ((*(*this + 3664) & 1) == 0)
    {
      CoreNavigation::CLP::LogEntry::LogEntry::LogEntry(v67);
      v4 = wireless_diagnostics::google::protobuf::MessageLite::ParseFromString();
      if (v4)
      {
        if ((v69 & 2) != 0)
        {
          v11 = v68;
          if (!v68)
          {
            operator new();
          }

          *(v68 + 320) |= 0x20u;
          v12 = *(v11 + 304);
          if (!v12)
          {
            operator new();
          }

          if ((*(v12 + 36) & 2) != 0)
          {
            v13 = *(v12 + 16);
            if (!v13)
            {
              CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(v4);
              v13 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::default_instance_ + 16);
            }

            if (*(v13 + 212))
            {
              v18 = *(v12 + 16);
              if (!v18)
              {
                CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(v4);
                v18 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::default_instance_ + 16);
              }

              v19 = *(v18 + 8);
              if (!v19)
              {
                CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(v4);
                v19 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::RayTracingTilePayload::default_instance_ + 8);
              }

              v20 = *(v19 + 72);
              if (v20)
              {
                v23 = *(v19 + 8);
                v24 = *(this + 420);
                if (!v24)
                {
                  goto LABEL_35;
                }

                v25 = (this + 3360);
                do
                {
                  v26 = v24[4];
                  v27 = v26 >= v23;
                  v28 = v26 < v23;
                  if (v27)
                  {
                    v25 = v24;
                  }

                  v24 = v24[v28];
                }

                while (v24);
                if (v25 != (this + 3360) && v23 >= v25[4])
                {
                  if (cnprint::CNPrinter::GetLogLevel(v4) <= 1)
                  {
                    LOWORD(v70[0]) = 12;
                    LOBYTE(v66) = 1;
                    v38 = (*(*a2 + 16))(a2);
                    cnprint::CNPrinter::Print(v70, &v66, "#nlos,time,%.3lf,RT tile already exist, skip the incoming, tile centroid ID,%llu", v39 + v38, *(v19 + 8));
                  }
                }

                else
                {
LABEL_35:
                  v29 = HIDWORD(v23) * 0.000001 + -90.0;
                  v30 = v23 * 0.000001;
                  if (v30 <= 180.0)
                  {
                    v31 = v23 * 0.000001;
                  }

                  else
                  {
                    v31 = v30 + -360.0;
                  }

                  if (v29 <= -90.0 || v29 > 90.0)
                  {
                    LOWORD(v70[0]) = 12;
                    LOBYTE(v66) = 4;
                    v34 = (*(*a2 + 16))(a2);
                    cnprint::CNPrinter::Print(v70, &v66, "#nlos,time,%.3lf,Cannot handle RT tile: Invalid tile centroid latitude,%12.7f, tile centroid ID,%llu", v35 + v34, v29, *(v19 + 8));
                  }

                  else if (v31 <= -180.0 || v31 > 180.0)
                  {
                    LOWORD(v70[0]) = 12;
                    LOBYTE(v66) = 4;
                    v36 = (*(*a2 + 16))(a2);
                    cnprint::CNPrinter::Print(v70, &v66, "#nlos,time,%.3lf,Cannot handle RT tile: Invalid tile centroid longitude,%12.7f, tile centroid ID,%llu", v37 + v36, v29, *(v19 + 8));
                  }

                  else if ((v20 & 4) != 0)
                  {
                    if ((v20 & 8) != 0)
                    {
                      if ((v20 & 0x20) != 0)
                      {
                        if ((v20 & 0x40) != 0)
                        {
                          if ((v20 & 0x80) != 0)
                          {
                            if ((v20 & 0x100) != 0 && *(v19 + 44))
                            {
                              if ((v20 & 0x200) != 0 && *(v19 + 48))
                              {
                                if ((v20 & 0x400) != 0 && *(v19 + 52))
                                {
                                  if ((v20 & 0x800) != 0 && *(v19 + 56))
                                  {
                                    if ((v20 & 0x1000) != 0 && *(v19 + 60))
                                    {
                                      if ((v20 & 0x2000) != 0 && *(v19 + 64))
                                      {
                                        if (fabs(*(v19 + 28) + -1000000.0) < 2.22044605e-16)
                                        {
                                          if (cnprint::CNPrinter::GetLogLevel(v4) <= 1)
                                          {
                                            LOWORD(v70[0]) = 12;
                                            LOBYTE(v66) = 1;
                                            v48 = (*(*a2 + 16))(a2);
                                            cnprint::CNPrinter::Print(v70, &v66, "#nlos,time,%.3lf,Added RT tile with hash ID,%llu, centroid %12.7f, %12.7f, number of tiles in database %zu", v49 + v48, *(v19 + 8), v29, v31, (*(this + 427) - *(this + 426)) >> 3);
                                          }

                                          v70[0] = *(v19 + 8);
                                          v50 = sub_1D0DEA3B0(this + 419, v70, v70);
                                          *(this + 429) = *(v19 + 32);
                                          v51 = *(v12 + 16);
                                          if (!v51)
                                          {
                                            CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(v50);
                                            v51 = *(CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::default_instance_ + 16);
                                          }

                                          sub_1D0E059AC(v70, v51);
                                        }

                                        LOWORD(v70[0]) = 12;
                                        LOBYTE(v66) = 4;
                                        v64 = (*(*a2 + 16))(a2);
                                        cnprint::CNPrinter::Print(v70, &v66, "#nlos,time,%.3lf,Cannot handle RT tile: mismatch in scale factor value used for generating GeoHashID, tile centroid ID,%llu", v65 + v64, *(v19 + 8));
                                      }

                                      else
                                      {
                                        LOWORD(v70[0]) = 12;
                                        LOBYTE(v66) = 4;
                                        v62 = (*(*a2 + 16))(a2);
                                        cnprint::CNPrinter::Print(v70, &v66, "#nlos,time,%.3lf,Cannot handle RT tile: number of bits corresponding to facet number, tile centroid ID,%llu", v63 + v62, *(v19 + 8));
                                      }
                                    }

                                    else
                                    {
                                      LOWORD(v70[0]) = 12;
                                      LOBYTE(v66) = 4;
                                      v60 = (*(*a2 + 16))(a2);
                                      cnprint::CNPrinter::Print(v70, &v66, "#nlos,time,%.3lf,Cannot handle RT tile: number of bits corresponding to section number, tile centroid ID,%llu", v61 + v60, *(v19 + 8));
                                    }
                                  }

                                  else
                                  {
                                    LOWORD(v70[0]) = 12;
                                    LOBYTE(v66) = 4;
                                    v58 = (*(*a2 + 16))(a2);
                                    cnprint::CNPrinter::Print(v70, &v66, "#nlos,time,%.3lf,Cannot handle RT tile: Missing or zero sample locations in tile, tile centroid ID,%llu", v59 + v58, *(v19 + 8));
                                  }
                                }

                                else
                                {
                                  LOWORD(v70[0]) = 12;
                                  LOBYTE(v66) = 4;
                                  v56 = (*(*a2 + 16))(a2);
                                  cnprint::CNPrinter::Print(v70, &v66, "#nlos,time,%.3lf,Cannot handle RT tile: Missing or zero visible facets in tile, tile centroid ID,%llu", v57 + v56, *(v19 + 8));
                                }
                              }

                              else
                              {
                                LOWORD(v70[0]) = 12;
                                LOBYTE(v66) = 4;
                                v54 = (*(*a2 + 16))(a2);
                                cnprint::CNPrinter::Print(v70, &v66, "#nlos,time,%.3lf,Cannot handle RT tile: Missing or zero visible building sections in tile, tile centroid ID,%llu", v55 + v54, *(v19 + 8));
                              }
                            }

                            else
                            {
                              LOWORD(v70[0]) = 12;
                              LOBYTE(v66) = 4;
                              v52 = (*(*a2 + 16))(a2);
                              cnprint::CNPrinter::Print(v70, &v66, "#nlos,time,%.3lf,Cannot handle RT tile: Missing or zero visible buildings in tile, tile centroid ID,%llu", v53 + v52, *(v19 + 8));
                            }
                          }

                          else
                          {
                            LOWORD(v70[0]) = 12;
                            LOBYTE(v66) = 4;
                            v46 = (*(*a2 + 16))(a2);
                            cnprint::CNPrinter::Print(v70, &v66, "#nlos,time,%.3lf,Cannot handle RT tile: Missing max reflection depth used for tile generation, tile centroid ID,%llu", v47 + v46, *(v19 + 8));
                          }
                        }

                        else
                        {
                          LOWORD(v70[0]) = 12;
                          LOBYTE(v66) = 4;
                          v44 = (*(*a2 + 16))(a2);
                          cnprint::CNPrinter::Print(v70, &v66, "#nlos,time,%.3lf,Cannot handle RT tile: Missing max distance used for facet visibility determination, tile centroid ID,%llu", v45 + v44, *(v19 + 8));
                        }
                      }

                      else
                      {
                        LOWORD(v70[0]) = 12;
                        LOBYTE(v66) = 4;
                        v42 = (*(*a2 + 16))(a2);
                        cnprint::CNPrinter::Print(v70, &v66, "#nlos,time,%.3lf,Cannot handle RT tile: Missing tile samples location spacing, tile centroid ID,%llu", v43 + v42, *(v19 + 8));
                      }
                    }

                    else
                    {
                      LOWORD(v70[0]) = 12;
                      LOBYTE(v66) = 4;
                      v40 = (*(*a2 + 16))(a2);
                      cnprint::CNPrinter::Print(v70, &v66, "#nlos,time,%.3lf,Cannot handle RT tile: Missing tile longitude span, tile centroid ID,%llu", v41 + v40, *(v19 + 8));
                    }
                  }

                  else
                  {
                    LOWORD(v70[0]) = 12;
                    LOBYTE(v66) = 4;
                    v32 = (*(*a2 + 16))(a2);
                    cnprint::CNPrinter::Print(v70, &v66, "#nlos,time,%.3lf,Cannot handle RT tile: Missing tile latitude span, tile centroid ID,%llu", v33 + v32, *(v19 + 8));
                  }
                }
              }

              else
              {
                LOWORD(v70[0]) = 12;
                LOBYTE(v66) = 4;
                v21 = (*(*a2 + 16))(a2);
                cnprint::CNPrinter::Print(v70, &v66, "#nlos,time,%.3lf,Cannot handle RT tile: Missing tile centroid geohash ID", v22 + v21);
              }
            }

            else
            {
              LOWORD(v70[0]) = 12;
              LOBYTE(v66) = 4;
              v14 = (*(*a2 + 16))(a2);
              cnprint::CNPrinter::Print(v70, &v66, "#nlos,time,%.3lf,Cannot handle RT tile: Missing RT tile Meta Data", v15 + v14);
            }
          }

          else
          {
            LOWORD(v70[0]) = 12;
            LOBYTE(v66) = 4;
            v16 = (*(*a2 + 16))(a2);
            cnprint::CNPrinter::Print(v70, &v66, "#nlos,time,%.3lf,Cannot handle RT tile: Missing RT tile payload data", v17 + v16);
          }
        }

        else
        {
          LOWORD(v70[0]) = 12;
          LOBYTE(v66) = 4;
          v5 = (*(*a2 + 16))(a2);
          cnprint::CNPrinter::Print(v70, &v66, "#nlos,time,%.3lf,cannot handle RT tile: Missing serialized RT tile data in the LogEntry", v6 + v5);
        }
      }

      else
      {
        LOWORD(v70[0]) = 12;
        LOBYTE(v66) = 4;
        v9 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(v70, &v66, "#nlos,time,%.3lf,cannot handle RT tile: Failed to parse incoming tile LogEntry", v10 + v9);
      }

      CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(v67);
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
  {
    LOWORD(v70[0]) = 12;
    v67[0] = 1;
    v7 = (*(*a2 + 16))(a2);
    cnprint::CNPrinter::Print(v70, v67, "#nlos,time,%.3lf, RavenNLOSEngine not configured", v8 + v7);
  }
}

void sub_1D0E057DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(va);
  _Unwind_Resume(a1);
}

const void **sub_1D0E058AC(const void **result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      sub_1D0C5663C();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v18[4] = result;
    if (v13)
    {
      sub_1D0D46B30(result, v13);
    }

    v14 = (8 * (v9 >> 3));
    v15 = *a2;
    *a2 = 0;
    *v14 = v15;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v16 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_1D0D46B78(v18);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 8;
  }

  v3[1] = v7;
  return result;
}

void *sub_1D0E05A1C(uint64_t a1, void *a2)
{
  v4 = a2 + 1;
  v5 = *(a1 + 8);
  if (a2 + 1 == v5)
  {
    v7 = a2;
  }

  else
  {
    do
    {
      v6 = *(v4 - 1);
      *(v4 - 1) = *v4;
      *v4 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      ++v4;
    }

    while (v4 != v5);
    v5 = *(a1 + 8);
    v7 = v4 - 1;
  }

  while (v5 != v7)
  {
    v9 = *--v5;
    v8 = v9;
    *v5 = 0;
    if (v9)
    {
      (*(*v8 + 8))(v8);
    }
  }

  *(a1 + 8) = v7;
  return a2;
}

void raven::RavenNLOSEngine::FindApproximatePathsUsingRayTracing(cnprint::CNPrinter *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X3>, double *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v63 = *MEMORY[0x1E69E9840];
  *a7 = a7;
  a7[1] = a7;
  a7[2] = 0;
  if (*(a1 + 8))
  {
    if (a6)
    {
      v12 = *a1;
      v13 = *(*a1 + 3576);
      v14 = *a5 - *a4;
      v15 = a5[1] - a4[1];
      v16 = a5[2] - a4[2];
      v17 = hypot(v14, v15);
      v18 = atan2(v16, v17);
      if (v18 >= 0.0)
      {
        *&v55[0] = &unk_1F4CEC5C8;
        memset(v55 + 8, 0, 56);
        v56 = 2;
        v57 = 0;
        v22 = sqrt(v15 * v15 + v14 * v14 + v16 * v16);
        if (fabs(v22) >= 2.22044605e-16)
        {
          v26 = *(v12 + 3560);
          v27 = 1.0 / v22;
          v28 = v14 * v27;
          v29 = v16 * v27;
          v58 = *a4;
          v59 = *(a4 + 2);
          v55[1] = v58;
          *&v55[2] = v59;
          v45 = v15 * v27;
          v46 = v28;
          *(&v55[2] + 1) = v28;
          *&v55[3] = v15 * v27;
          *(&v55[3] + 1) = v16 * v27;
          *(&v55[0] + 1) = a6;
          v56 = 0;
          v57 = 0;
          (*(*a6 + 16))(a6, v55);
          if ((v57 & 1) == 0)
          {
            v47 = v58;
            v48 = v59;
            v49 = v46;
            v50 = v45;
            v51 = v29;
            v52 = &v52;
            v53 = &v52;
            v54 = 0;
            sub_1D0E0CEC8(&v47);
          }

          v30 = __sincos_stret(v18);
          v31 = 0.0;
          do
          {
            v32 = __sincos_stret(v31);
            v58 = *a4;
            v59 = *(a4 + 2);
            v60 = v30.__cosval * v32.__sinval;
            v61 = v30.__cosval * v32.__cosval;
            sinval = v30.__sinval;
            sub_1D0E08D78(&v47, &v58, a6, v26, 0);
            v33 = v54;
            if (v54)
            {
              v34 = v52;
              v35 = *(v52 + 56);
              v36 = *(v52 + 64);
              v37 = sqrt((v45 * v45 + v46 * v46) * (v36 * v36 + v35 * v35));
              if (fabs(v37) >= 2.22044605e-16)
              {
                v38 = (v45 * v36 + v46 * v35) / v37;
                v39 = -3.14159265;
                if (fabs(v38 + 1.0) >= 2.22044605e-16)
                {
                  v39 = 0.0;
                  if (fabs(v38 + -1.0) >= 2.22044605e-16)
                  {
                    v39 = acos(v38);
                  }
                }

                if (v13 * 0.0174532925 * 0.5 >= v39)
                {
                  for (i = a7[1]; i != a7; i = i[1])
                  {
                    if (v33 == i[10])
                    {
                      if (v53 == &v52)
                      {
                        goto LABEL_30;
                      }

                      v41 = i + 9;
                      v42 = v53;
                      while (1)
                      {
                        v43 = *v41;
                        if (v42[2] != *(v43 + 16))
                        {
                          break;
                        }

                        v41 = (v43 + 8);
                        v42 = v42[1];
                        if (v42 == &v52)
                        {
                          goto LABEL_30;
                        }
                      }
                    }
                  }

                  if (v33 != v26 || (v44 = v34[3], v55[1] = v34[2], v55[2] = v44, v55[3] = v34[4], *(&v55[0] + 1) = a6, v56 = 0, v57 = 0, (*(*a6 + 16))(a6, v55), (v57 & 1) == 0))
                  {
                    operator new();
                  }
                }
              }
            }

LABEL_30:
            sub_1D0BCC0B4(&v52);
            v31 = v13 * 0.0174532925 + v31;
          }

          while (v31 <= 6.28318531);
        }

        else
        {
          LOWORD(v47) = 12;
          LOBYTE(v58) = 4;
          v23 = *a2;
          v24 = *(a2 + 8);
          v25 = sub_1D0BCFAB8(a3);
          cnprint::CNPrinter::Print(&v47, &v58, "#nlos,time,%.3lf,zero distance to %s", v24 + v23, v25);
        }
      }

      else
      {
        LOWORD(v55[0]) = 12;
        LOBYTE(v47) = 4;
        v19 = *a2;
        v20 = *(a2 + 8);
        v21 = sub_1D0BCFAB8(a3);
        cnprint::CNPrinter::Print(v55, &v47, "#nlos,time,%.3lf,%s satellite below horizon; elevation = %.1f deg", v20 + v19, v21, v18 * 57.2957795);
      }
    }

    else
    {
      LOWORD(v55[0]) = 12;
      LOBYTE(v47) = 4;
      cnprint::CNPrinter::Print(v55, &v47, "#nlos,time,%.3lf,building data pointer is null in %s", *(a2 + 8) + *a2, "FindApproximatePathsUsingRayTracing");
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    LOWORD(v55[0]) = 12;
    LOBYTE(v47) = 1;
    cnprint::CNPrinter::Print(v55, &v47, "#nlos,time,%.3lf,object not configured in %s", *(a2 + 8) + *a2, "FindApproximatePathsUsingRayTracing");
  }
}

void sub_1D0E06190(_Unwind_Exception *a1)
{
  sub_1D0BCC0B4(v2);
  sub_1D0E09C08(v1);
  _Unwind_Resume(a1);
}

void raven::RavenNLOSEngine::RefineApproximatePath(cnprint::CNPrinter *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X4>, uint64_t a6@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  *(a6 + 232) = 0;
  if (*(a1 + 8))
  {
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    v9 = *(a2 + 64);
    if (v9)
    {
      memset(v25, 0, sizeof(v25));
      sub_1D0E090D8(v25, v9 + 2);
      if (!(v9 >> 61))
      {
        sub_1D0D46998(v9);
      }

      sub_1D0C5663C();
    }

    v10 = *a5 - *a2;
    v11 = a5[1] - v7;
    v12 = a5[2] - v8;
    v13 = sqrt(v11 * v11 + v10 * v10 + v12 * v12);
    if (fabs(v13) >= 2.22044605e-16)
    {
      *&v26 = *a2;
      *(&v26 + 1) = v7;
      v17 = v10 * (1.0 / v13);
      v27 = v8;
      v28 = v17;
      v18 = v11 * (1.0 / v13);
      v19 = v12 * (1.0 / v13);
      v29 = v18;
      v30 = v19;
      v31[0] = v31;
      v31[1] = v31;
      v32 = *a5;
      v20 = *(a5 + 2);
      v31[2] = 0;
      v33 = v20;
      v34 = 0x7FF8000000000000;
      v37 = 0x300000001;
      v36 = xmmword_1D0E7F310;
      v35 = &unk_1F4CDF248;
      v38 = &v39;
      v42 = 0x300000001;
      v41 = xmmword_1D0E7F310;
      v40 = &unk_1F4CDF248;
      v43 = &v44;
      v45 = 1;
      sub_1D0E0A5AC(a6, &v26);
      if (v45 == 1)
      {
        v40 = &unk_1F4CD5E28;
        v35 = &unk_1F4CD5E28;
        sub_1D0BCC0B4(v31);
      }

      *(a6 + 96) = v13;
      *(a6 + 112) = xmmword_1D0E7F310;
      v21 = *(a6 + 136);
      *v21 = -v17;
      v21[1] = -v18;
      v21[2] = -v19;
      *(a6 + 176) = xmmword_1D0E7F310;
      v22 = *(a6 + 200);
      *v22 = v17;
      v22[1] = v18;
      v22[2] = v19;
    }

    else
    {
      LOWORD(v26) = 12;
      LOBYTE(v24) = 4;
      v14 = *a3;
      v15 = *(a3 + 8);
      v16 = sub_1D0BCFAB8(a4);
      cnprint::CNPrinter::Print(&v26, &v24, "#nlos,time,%.3lf,zero distance to %s", v15 + v14, v16);
    }
  }

  else if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
  {
    LOWORD(v26) = 12;
    LOBYTE(v24) = 1;
    cnprint::CNPrinter::Print(&v26, &v24, "#nlos,time,%.3lf,object not configured in %s", *(a3 + 8) + *a3, "RefineApproximatePath");
  }
}

void sub_1D0E089F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (LOBYTE(STACK[0x7E8]) == 1)
  {
    STACK[0x7A8] = &unk_1F4CD5E28;
    STACK[0x768] = &unk_1F4CD5E28;
    sub_1D0BCC0B4(&STACK[0x730]);
  }

  sub_1D0BCC0B4(v64);
  STACK[0x700] = &STACK[0x498];
  sub_1D0E0B0D8(&STACK[0x700]);
  STACK[0x700] = &STACK[0x4B0];
  sub_1D0E0B0D8(&STACK[0x700]);
  STACK[0x700] = &STACK[0x640];
  sub_1D0E0B0D8(&STACK[0x700]);
  STACK[0x5E8] = &STACK[0x658];
  sub_1D0E0B198(&STACK[0x5E8]);
  STACK[0x5E8] = &STACK[0x670];
  sub_1D0E0B0D8(&STACK[0x5E8]);
  if (STACK[0x688])
  {
    operator delete(STACK[0x688]);
  }

  if (STACK[0x6A0])
  {
    operator delete(STACK[0x6A0]);
  }

  if (a63)
  {
    operator delete(a63);
  }

  if (STACK[0x6B8])
  {
    operator delete(STACK[0x6B8]);
  }

  if (STACK[0x6D0])
  {
    operator delete(STACK[0x6D0]);
  }

  if (a64)
  {
    operator delete(a64);
  }

  if (STACK[0x6E8])
  {
    operator delete(STACK[0x6E8]);
  }

  if (*(a22 + 232) == 1)
  {
    *(a22 + 168) = &unk_1F4CD5E28;
    *(a22 + 104) = &unk_1F4CD5E28;
    sub_1D0BCC0B4((a22 + 48));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0E08D78(uint64_t result, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 1);
  *result = *a2;
  *(result + 16) = v5;
  *(result + 32) = *(a2 + 2);
  *(result + 48) = result + 48;
  *(result + 56) = result + 48;
  *(result + 64) = 0;
  if (a4)
  {
    v7[0] = &unk_1F4CECAA8;
    v6 = *(a2 + 1);
    v8 = *a2;
    v9 = v6;
    v10 = *(a2 + 2);
    v7[1] = a3;
    v14 = a5;
    v15 = &unk_1F4CEC730;
    v11 = 0;
    v12 = 0x7FF0000000000000;
    v13 = 0;
    v19 = -1;
    v20 = &unk_1F4CEC730;
    *v21 = a3;
    *&v21[8] = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    v25 = -1;
    v18 = 0u;
    v16 = *v21;
    memset(v17, 0, sizeof(v17));
    sub_1D0E0BBF4(v17, &v21[16]);
    v19 = v25;
    v20 = &unk_1F4CEC730;
    sub_1D0E0BA98(&v21[16]);
    sub_1D0E0B780(&v15);
    while (*(&v18 + 1))
    {
      (*(**(&v16 + 1) + 16))(*(&v16 + 1), v7);
      sub_1D0E0B884(&v15);
    }

    if (v13)
    {
      (*(*v13 + 88))(v13);
      operator new();
    }

    v7[0] = &unk_1F4CECAA8;
    v15 = &unk_1F4CEC730;
    return sub_1D0E0BA98(v17);
  }

  return result;
}

void sub_1D0E090A0(_Unwind_Exception *a1)
{
  sub_1D0E0BA98(v2 + 120);
  sub_1D0BCC0B4(v1);
  _Unwind_Resume(a1);
}

void sub_1D0E090D8(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_1D0E0AE9C(a2);
    }

    sub_1D0C5663C();
  }
}

void sub_1D0E0919C(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v3[24 * a2];
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        sub_1D0E0AE9C(v10);
      }

      sub_1D0C5663C();
    }

    v12 = 24 * ((24 * v6 - 24) / 0x18) + 24;
    bzero(a1[1], v12);
    v11 = &v4[v12];
  }

  a1[1] = v11;
}

uint64_t *sub_1D0E09310(uint64_t *result, unint64_t a2)
{
  v2 = result;
  v4 = *result;
  v3 = result[1];
  v5 = v3 - *result;
  v6 = 0x8E38E38E38E38E39 * (v5 >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      v12 = v4 + 72 * a2;
      if (v3 != v12)
      {
        v13 = (v3 - 72);
        v14 = v13;
        v15 = v13;
        do
        {
          v16 = *v15;
          v15 -= 9;
          result = (*v16)(v14);
          v13 -= 9;
          v17 = v14 == v12;
          v14 = v15;
        }

        while (!v17);
      }

      v2[1] = v12;
    }
  }

  else
  {
    v8 = result[2];
    if (0x8E38E38E38E38E39 * ((v8 - v3) >> 3) < v7)
    {
      if (a2 <= 0x38E38E38E38E38ELL)
      {
        v9 = 0x8E38E38E38E38E39 * ((v8 - v4) >> 3);
        v10 = 2 * v9;
        if (2 * v9 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x1C71C71C71C71C7)
        {
          v11 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v11 = v10;
        }

        if (v11 <= 0x38E38E38E38E38ELL)
        {
          operator new();
        }

        sub_1D0C54BE8();
      }

      sub_1D0C5663C();
    }

    v18 = v3 + 72 * v7;
    v19 = 72 * a2 - 8 * (v5 >> 3);
    v20 = v3 + 40;
    do
    {
      *(v20 - 16) = 0x200000002;
      *(v20 - 40) = &unk_1F4CE0268;
      *(v20 - 32) = xmmword_1D0E83F70;
      *(v20 - 8) = v20;
      v20 += 72;
      v3 += 72;
      v19 -= 72;
    }

    while (v19);
    result[1] = v18;
  }

  return result;
}