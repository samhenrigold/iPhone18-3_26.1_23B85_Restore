double raven::RavenPNTEstimator::HandleEvent(raven::RavenPNTEstimator *this, const raven::MountStateEvent *a2, int8x16_t a3, int8x16_t a4)
{
  if (*(this + 58) == 1 && *(this + 1848) == 1)
  {
    v6 = *(this + 1960);
    if (v6 > 3 || v6 == 1)
    {
      v18 = *(a2 + 104);
      v19 = v18 > 3 || v18 == 1;
      if (!v19 && *(this + 1208) == 1 && ((*(this + 1320) - 4) & 0xFA) == 0)
      {
        v20 = *(this + 146);
        v21 = v20[118];
        v22 = raven::RavenPNTEstimator::UseHighAccelerationParameters(this, a3, a4);
        v23 = v22 ? 752 : 744;
        v24 = v22 ? 776 : 768;
        v25 = *(this + 3781);
        v26 = *(this + 1892);
        if (*(v26 + 48 * v25 + 48) < v21 && *(v26 + 56 * v25 + 56) < v21 && *(v26 + (v25 << 6) + 64) < v21 && *(v26 + 72 * v25 + 72) < v21)
        {
          v27 = *(v20 + v23) * *(v20 + v23);
          if (*(v26 + 80 * v25 + 80) < v27 && *(v26 + 88 * v25 + 88) < v27 && *(v26 + 96 * v25 + 96) < v27)
          {
            v28 = v20[91] * v20[91];
            if (*(v26 + 104 * v25 + 104) < v28 && *(v26 + 112 * v25 + 112) < v28 && *(v26 + 120 * v25 + 120) < v28)
            {
              v29 = *(v20 + v24) * *(v20 + v24);
              if (*(v26 + (v25 << 7) + 128) < v29 && *(v26 + 136 * v25 + 136) < v29 && *(v26 + 144 * v25 + 144) < v29)
              {
                raven::RavenPNTEstimator::InflateAttitudeUncertainty(this, v20[178] + v20[178], 0);
                raven::RavenPNTEstimator::InflateInsUncertainty(this, *(*(this + 146) + 1432), 0);
                v30 = *(*(this + 146) + 1448);
                if (*(this + 2760) == 1)
                {
                  raven::RavenPNTEstimator::InflateDeviceVelocityUncertainty(this, v30, 0);
                  raven::RavenPNTEstimator::InflateUserVelocityUncertainty(this, *(*(this + 146) + 1448), 0);
                  raven::RavenPNTEstimator::InflateUserPositionUncertainty(this, *(*(this + 146) + 1440), 0);
                }

                else
                {
                  raven::RavenPNTEstimator::InflateVelocityUncertainty(this, v30, 0);
                }

                if (raven::RavenPNTEstimator::UpdateFullStateEstimate(this))
                {
                  v36 = 12;
                  v35 = 4;
                  v34[0] = (*(*a2 + 16))(a2);
                  v34[1] = v32;
                  cnprint::CNLogFormatter::FormatGeneral(this + 2712, v34, "Could not update full states after dismount");
                  if (*(this + 2735) >= 0)
                  {
                    v33 = this + 2712;
                  }

                  else
                  {
                    v33 = *(this + 339);
                  }

                  cnprint::CNPrinter::Print(&v36, &v35, "%s", v33);
                  raven::RavenPNTEstimator::Reset(this);
                }
              }
            }
          }
        }
      }
    }
  }

  v8 = *(this + 2760);
  if (*(this + 2760))
  {
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        __assert_rtn("HandleEvent", "ravenpntestimator.cpp", 2851, "false && Unexpected case RavenPNTEstimatorStateParameterization::ParameterizationCount");
      }

      goto LABEL_27;
    }

    v9 = *(a2 + 104);
    if (v9 > 3 || v9 == 1)
    {
      goto LABEL_27;
    }

    LOBYTE(v34[0]) = 0;
LABEL_16:
    raven::RavenPNTEstimator::SetStateParameterization(this);
    goto LABEL_27;
  }

  v11 = *(this + 3781);
  v12 = *(this + 1892);
  v13 = (*(this + 58) & 1) == 0 || sqrt(*(v12 + 200 * v11 + 200) + *(v12 + 208 * v11 + 208) + *(v12 + 216 * v11 + 216)) * 57.2957795 >= 10.0;
  a3.i64[0] = *(v12 + (v11 << 7) + 128);
  a4.i64[0] = *(v12 + 136 * v11 + 136);
  if (*a4.i64 <= *(v12 + 144 * v11 + 144))
  {
    a4.i64[0] = *(v12 + 144 * v11 + 144);
  }

  if (*a3.i64 <= *a4.i64)
  {
    a3.i64[0] = a4.i64[0];
  }

  v14 = *a3.i64;
  if (*(this + 58))
  {
    v15 = *(*(this + 146) + 784);
    v16 = *(a2 + 104);
    if ((v16 > 3 || v16 == 1) && *(this + 1848) == 1)
    {
      v31 = *(this + 1960);
      if ((v31 > 3 || v31 == 1) && *(this + 1208) == 1 && ((*(this + 1320) - 4) & 0xFA) == 0 && !raven::RavenPNTEstimator::UseHighAccelerationParameters(this, a3, a4) && !v13 && sqrt(v14) <= v15 * 20.0)
      {
        LOBYTE(v34[0]) = 1;
        goto LABEL_16;
      }
    }
  }

LABEL_27:

  *&result = raven::RavenEstimator::HandleMountStateEvent(this, a2).n128_u64[0];
  return result;
}

void raven::RavenMovingStateEstimatorActiveObject::HandleEvent(raven::RavenMovingStateEstimatorActiveObject *this, const raven::TimeMarkEvent *a2)
{
  if ((*(this + 224) & 1) == 0)
  {
    LOWORD(v10) = 12;
    LOBYTE(__p) = 2;
    v5 = this + 232;
    v11 = (*(*a2 + 16))(a2);
    *&v12 = v7;
    cnprint::CNLogFormatter::FormatGeneral(v5, &v11, "RavenMovingStateEstimatorActiveObject is not configured.");
LABEL_6:
    if (*(this + 255) >= 0)
    {
      v8 = v5;
    }

    else
    {
      v8 = *(this + 29);
    }

    cnprint::CNPrinter::Print(&v10, &__p, "%s", v8);
    return;
  }

  v4 = raven::RavenMovingStateEstimator::HandleEvent((this + 280), a2);
  if (v4)
  {
    if (cnprint::CNPrinter::GetLogLevel(v4) > 1)
    {
      return;
    }

    LOWORD(v10) = 12;
    LOBYTE(__p) = 1;
    v5 = this + 232;
    v11 = (*(*a2 + 16))(a2);
    *&v12 = v6;
    cnprint::CNLogFormatter::FormatGeneral(this + 232, &v11, "RavenMovingStateEstimatorActiveObject,failed to handle TimeMarkEvent in moving state estimator");
    goto LABEL_6;
  }

  v11 = &unk_1F4CEF778;
  v18 = 0;
  v19 = 0x3FF0000000000000;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v14 = *(a2 + 40);
  v15 = *(a2 + 56);
  v16 = *(a2 + 72);
  v17 = *(a2 + 88);
  v12 = *(a2 + 8);
  v13 = *(a2 + 24);
  if (raven::RavenMovingStateEstimator::GetMovingStateEvent((this + 280), &v11))
  {
    sub_1D0BB7A20(this, &v11);
  }
}

void sub_1D0BB99FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenMovingStateEstimator::Predict(uint64_t a1, __int128 *a2)
{
  if ((*(a1 + 217) & 1) == 0)
  {
    LOWORD(v30) = 12;
    LOBYTE(v45) = 4;
    cnprint::CNLogFormatter::FormatGeneral(a1 + 4384, a2, "failed to predict, Unconfigured");
LABEL_7:
    cnprint::CNPrinter::Print(&v30, &v45, "%s");
    return 0xFFFFFFFFLL;
  }

  if ((*(a1 + 216) & 1) == 0)
  {
    LOWORD(v30) = 12;
    LOBYTE(v45) = 4;
    cnprint::CNLogFormatter::FormatGeneral(a1 + 4384, a2, "failed to predict, Uninitialized");
    goto LABEL_7;
  }

  v33 = 0x300000003;
  v31 = &unk_1F4CD5DD0;
  v34 = &v35;
  memset(v37, 0, sizeof(v37));
  v30 = *a2;
  v32 = xmmword_1D0E76C10;
  if (*(a1 + 1040))
  {
    v4 = v37;
    v5 = xmmword_1D0E7F460;
    v6 = 0.25;
  }

  else
  {
    *&v37[0] = 0x3FA999999999999ALL;
    v5 = xmmword_1D0E7F470;
    v4 = &v37[1] + 1;
    v6 = 0.2;
  }

  *v4 = 0x3FA999999999999ALL;
  v35 = v5;
  v38 = v6;
  v36 = 0x3FD6666666666666;
  *(v37 + 8) = xmmword_1D0E7F480;
  v39 = 0x3FE8000000000000;
  if (!*(a1 + 4352))
  {
    sub_1D0B894B0(a1 + 4288, a1 + 4224);
  }

  v8 = *(a1 + 4296);
  v9 = *(a1 + 4300);
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v8 <= v9)
  {
    v12 = *(a1 + 4300);
  }

  else
  {
    v12 = *(a1 + 4296);
  }

  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  if (v11 == 1)
  {
    v52 = 0x100000003;
    v50 = &unk_1F4CDEB28;
    v53 = v54;
    v51 = xmmword_1D0E7F490;
    v47 = 0x100000003;
    *&v14.f64[1] = 0x300000003;
    v46 = xmmword_1D0E7DCC0;
    v45 = &unk_1F4CDEB28;
    v48 = v49;
    v14.f64[0] = INFINITY;
    v15 = &v50;
LABEL_31:
    sub_1D0B8930C(v15, &v45, v14);
    goto LABEL_34;
  }

  v16 = *(a1 + 4360);
  v47 = 0x100000003;
  v46 = xmmword_1D0E7DCC0;
  v45 = &unk_1F4CDEB28;
  v48 = v49;
  v17 = sub_1D0B94BA0(a1 + 4288, 1, &v45);
  v18 = *v48;
  if (fabs(*v48 + -1.0) > v16)
  {
    if (cnprint::CNPrinter::GetLogLevel(v17) <= 1)
    {
      LOWORD(v45) = 2;
      LOBYTE(v50) = 1;
      cnprint::CNPrinter::Print(&v45, &v50, "WARNING: HMM prediction passed a non-normalized probability vector.");
    }

    if ((v12 & 0x80000000) == 0)
    {
      sub_1D0BBA094(&v50, a1 + 4288);
      *&v51 = v12 | 0x100000000;
      DWORD2(v51) = v12;
      HIDWORD(v51) = v12;
      v47 = 0x100000003;
      *&v14.f64[1] = 0x300000003;
      v46 = xmmword_1D0E7DCC0;
      v45 = &unk_1F4CDEB28;
      v48 = v49;
      v14.f64[0] = 1.0 / v18;
      goto LABEL_31;
    }

LABEL_53:
    __assert_rtn("Reshape", "cnmatrix.h", 2936, "nr >= 0");
  }

  if ((v12 & 0x80000000) != 0)
  {
    goto LABEL_53;
  }

  sub_1D0BBA094(&v45, a1 + 4288);
  *&v46 = v12 | 0x100000000;
  DWORD2(v46) = v12;
  HIDWORD(v46) = v12;
LABEL_34:
  sub_1D0B894B0(a1 + 4288, &v45);
  *(a1 + 4352) = 1;
  v47 = 0x300000003;
  v46 = xmmword_1D0E76C10;
  v45 = &unk_1F4CD5DD0;
  v48 = v49;
  v19 = sub_1D0BBA1DC(&v30, &v45);
  if (v19)
  {
    LOWORD(v50) = 2;
    LOBYTE(v40) = 4;
    cnprint::CNPrinter::Print(&v50, &v40, "ERROR: HMM transition probability function failed.");
    v20 = 27;
LABEL_36:
    LOWORD(v45) = 12;
    LOBYTE(v50) = 4;
    cnprint::CNLogFormatter::FormatGeneral(a1 + 4384, a1 + 4368, "failed to predict,code,%d", v20);
    cnprint::CNPrinter::Print(&v45, &v50, "%s");
    return 0xFFFFFFFFLL;
  }

  if (v13)
  {
    v21 = 0;
    v22 = 0;
    v23 = v48;
LABEL_39:
    v24 = 0.0;
    v25 = v23;
    v26 = v13;
    while (1)
    {
      v27 = *v25;
      if (*v25 < 0.0 || v27 > 1.0)
      {
        break;
      }

      v24 = v24 + v27;
      ++v25;
      if (!--v26)
      {
        if (fabs(v24 + -1.0) <= *(a1 + 4360))
        {
          ++v21;
          v23 += SHIDWORD(v46);
          v22 = v21 >= v13;
          if (v21 != v13)
          {
            goto LABEL_39;
          }
        }

        break;
      }
    }

    if (!v22)
    {
      if (cnprint::CNPrinter::GetLogLevel(v19) <= 1)
      {
        LOWORD(v50) = 2;
        LOBYTE(v40) = 1;
        cnprint::CNPrinter::Print(&v50, &v40, "ERROR: HMM transition probability matrix is invalid.");
      }

      v20 = 28;
      goto LABEL_36;
    }
  }

  v52 = 0x100000003;
  v51 = xmmword_1D0E7DCC0;
  v50 = &unk_1F4CDEB28;
  v53 = v54;
  sub_1D0B89390(&v45, a1 + 4288, &v50);
  sub_1D0B894B0(a1 + 4224, &v50);
  v42 = 0x100000003;
  v41 = xmmword_1D0E7DCC0;
  v40 = &unk_1F4CDEB28;
  v43 = &v44;
  sub_1D0B94BA0(a1 + 4224, 1, &v40);
  v29.f64[0] = 1.0 / *v43;
  v52 = 0x100000003;
  v51 = xmmword_1D0E7DCC0;
  v50 = &unk_1F4CDEB28;
  v53 = v54;
  sub_1D0B8930C(a1 + 4224, &v50, v29);
  sub_1D0B894B0(a1 + 4224, &v50);
  result = 0;
  *(a1 + 4352) = 0;
  *(a1 + 4368) = *a2;
  return result;
}

__n128 sub_1D0BBA094(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000003;
  *(a1 + 24) = 0x100000003;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CDEB28;
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

uint64_t sub_1D0BBA1DC(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    LOWORD(v35) = 12;
    v32[0] = 4;
    cnprint::CNPrinter::Print(&v35, v32, "time,%.3lf,t-function failure on line %d: %s() %s", 0.0, 398, "t_MovingState", "NULL input arguments");
    return 0xFFFFFFFFLL;
  }

  if ((atomic_load_explicit(&qword_1EE053950, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE053950))
  {
    v37 = 0x300000001;
    v35 = &unk_1F4CDF0C8;
    v38 = &v39;
    v36 = xmmword_1D0E7F310;
    v39 = 0x100000000;
    v40 = 2;
    sub_1D0D2CF48(&v35, qword_1EE053958);
    __cxa_atexit(sub_1D0D26840, qword_1EE053958, &dword_1D0B71000);
    __cxa_guard_release(&qword_1EE053950);
  }

  sub_1D0BB77E0(&v35, a1 + 16, 0);
  v4 = v36;
  if (v36)
  {
    v5 = 0;
    v6 = 0.0;
    while (1)
    {
      v7 = *(v38 + (v5 >> 29));
      v8 = (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v9 = v7 < 0.0 && ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (v7 >= 0.0)
      {
        v8 = 0;
      }

      v10 = (*&v7 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v8;
      if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
      {
        v10 = 1;
      }

      if (((v10 | v9) & 1) != 0 || v7 > 1.0)
      {
        goto LABEL_58;
      }

      v6 = v6 + v7;
      v5 += 0x100000000;
      if (!--v4)
      {
        v11 = v6 + -1.0;
        goto LABEL_21;
      }
    }
  }

  v11 = -1.0;
LABEL_21:
  if (fabs(v11) >= 2.22044605e-16)
  {
    goto LABEL_58;
  }

  sub_1D0BB77E0(v32, a1 + 16, 1);
  v12 = v33;
  if (v33)
  {
    v13 = 0;
    v14 = 0.0;
    while (1)
    {
      v15 = *(v34 + (v13 >> 29));
      v16 = (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v17 = v15 < 0.0 && ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (v15 >= 0.0)
      {
        v16 = 0;
      }

      v18 = (*&v15 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v16;
      if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
      {
        v18 = 1;
      }

      if (((v18 | v17) & 1) != 0 || v15 > 1.0)
      {
        goto LABEL_58;
      }

      v14 = v14 + v15;
      v13 += 0x100000000;
      if (!--v12)
      {
        v19 = v14 + -1.0;
        goto LABEL_39;
      }
    }
  }

  v19 = -1.0;
LABEL_39:
  if (fabs(v19) >= 2.22044605e-16)
  {
    goto LABEL_58;
  }

  sub_1D0BB77E0(v29, a1 + 16, 2);
  v20 = v30;
  if (v30)
  {
    v21 = 0;
    v22 = 0.0;
    while (1)
    {
      v23 = *(v31 + (v21 >> 29));
      v24 = (*&v23 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
      v25 = v23 < 0.0 && ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
      if (v23 >= 0.0)
      {
        v24 = 0;
      }

      v26 = (*&v23 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v24;
      if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
      {
        v26 = 1;
      }

      if (((v26 | v25) & 1) != 0 || v23 > 1.0)
      {
        break;
      }

      v22 = v22 + v23;
      v21 += 0x100000000;
      if (!--v20)
      {
        v27 = v22 + -1.0;
        goto LABEL_57;
      }
    }

LABEL_58:
    LOWORD(v35) = 12;
    v32[0] = 4;
    cnprint::CNPrinter::Print(&v35, v32, "time,%.3lf,t-function failure on line %d: %s() %s", *(a1 + 8) + *a1, 432, "t_MovingState", "invalid transition probability");
    return 0xFFFFFFFFLL;
  }

  v27 = -1.0;
LABEL_57:
  if (fabs(v27) >= 2.22044605e-16)
  {
    goto LABEL_58;
  }

  *(a2 + 8) = xmmword_1D0E76C10;
  sub_1D0B894B0(a2, a1 + 16);
  return 0;
}

void sub_1D0BBA5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 136) == 1)
  {
    sub_1D0B894B0(a1 + 8, a1 + 72);
  }

  v58 = 0x100000001;
  v56[3] = &unk_1F4CDF2C0;
  *&v6 = 0x100000001;
  *(&v6 + 1) = 0x100000001;
  v57 = v6;
  v59 = &v60;
  v60 = a2;
  v54 = 0x100000003;
  v52 = &unk_1F4CDF348;
  v53 = v6;
  v55 = v56;
  v56[0] = a3;
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  sub_1D0B95DC8(v50, &v52);
  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    _ZF = v7 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v12 = *(a1 + 144);
  if (!*(a1 + 16) || !*(a1 + 20))
  {
    if ((v11 & 0x80000000) != 0)
    {
      __assert_rtn("Ones", "cnmatrix.h", 2317, "nr >= 0");
    }

    v69 = 0x100000003;
    v67 = &unk_1F4CDEB28;
    v70 = v71;
    *&v68 = v11 | 0x100000000;
    v15 = 1.0 / v11;
    DWORD2(v68) = v11;
    HIDWORD(v68) = v11;
    if (v11 > 3)
    {
      memset_pattern16(v71, &unk_1D0E7F4B0, 16 * ((v11 - 1) >> 1));
      __asm { FMOV            V0.2D, #1.0 }

      *(&v69 + v11) = _Q0;
    }

    else if (v11)
    {
      memset_pattern16(v71, &unk_1D0E7F4B0, (8 * v11));
    }

    v74 = 0x100000003;
    *&v17.f64[1] = 0x300000003;
    v73 = xmmword_1D0E7DCC0;
    v72 = &unk_1F4CDEB28;
    v75 = v76;
    v16 = &v67;
    goto LABEL_27;
  }

  v74 = 0x100000003;
  v73 = xmmword_1D0E7DCC0;
  v72 = &unk_1F4CDEB28;
  v75 = v76;
  v13 = sub_1D0B94BA0(a1 + 8, 1, &v72);
  v14 = *v75;
  if (fabs(*v75 + -1.0) <= v12)
  {
    if ((v11 & 0x80000000) == 0)
    {
      sub_1D0BBA094(&v72, a1 + 8);
      *&v73 = v11 | 0x100000000;
      DWORD2(v73) = v11;
      HIDWORD(v73) = v11;
      goto LABEL_28;
    }

LABEL_63:
    __assert_rtn("Reshape", "cnmatrix.h", 2936, "nr >= 0");
  }

  if (cnprint::CNPrinter::GetLogLevel(v13) <= 1)
  {
    LOWORD(v72) = 2;
    LOBYTE(v67) = 1;
    cnprint::CNPrinter::Print(&v72, &v67, "WARNING: HMM update passed a non-normalized probability vector.");
  }

  if ((v11 & 0x80000000) != 0)
  {
    goto LABEL_63;
  }

  v15 = 1.0 / v14;
  sub_1D0BBA094(&v67, a1 + 8);
  *&v68 = v11 | 0x100000000;
  DWORD2(v68) = v11;
  HIDWORD(v68) = v11;
  v74 = 0x100000003;
  *&v17.f64[1] = 0x300000003;
  v73 = xmmword_1D0E7DCC0;
  v72 = &unk_1F4CDEB28;
  v75 = v76;
LABEL_27:
  v17.f64[0] = v15;
  sub_1D0B8930C(v16, &v72, v17);
LABEL_28:
  sub_1D0B894B0(a1 + 8, &v72);
  sub_1D0BBA094(&v72, a1 + 8);
  v22 = *v59;
  v69 = 0x100000003;
  v67 = &unk_1F4CDEB28;
  v68 = xmmword_1D0E7DCC0;
  v70 = v71;
  v23 = v22(*v51, &v67);
  if (v23)
  {
    LOWORD(v61) = 2;
    v66 = 4;
    cnprint::CNPrinter::Print(&v61, &v66, "ERROR: HMM emission function failed.");
    return;
  }

  if (v11)
  {
    v25 = 0.0;
    v26 = v70;
    v27 = v70;
    v28 = v11;
    do
    {
      v29 = *v27;
      if (*v27 < 0.0 || v29 > 1.0)
      {
        LOWORD(v61) = 2;
        v66 = 4;
        cnprint::CNPrinter::Print(&v61, &v66, "ERROR: HMM emission probability matrix is invalid.");
        return;
      }

      v25 = v25 + v29;
      ++v27;
      --v28;
    }

    while (v28);
    if (fabs(v25) > v12)
    {
      v31 = v75;
      do
      {
        v32 = *v26++;
        v24.n128_f64[0] = v32 * *v31;
        *v31++ = v24.n128_f64[0];
        --v11;
      }

      while (v11);
      goto LABEL_43;
    }

LABEL_49:
    LOWORD(v61) = 2;
    v66 = 4;
    cnprint::CNPrinter::Print(&v61, &v66, "ERROR: HMM emission probability matrix is null matrix");
    return;
  }

  if (v12 >= 0.0)
  {
    goto LABEL_49;
  }

LABEL_43:
  v33 = DWORD1(v73);
  if (DWORD1(v73))
  {
    v34 = 0;
    v35 = v73;
    v36 = v75;
    v37 = 1;
    v38 = xmmword_1D0E7DCC0;
    do
    {
      v39 = v36[(v35 * v34)];
      v40 = v37;
      v41 = v35 - 1;
      if (v35 >= 2)
      {
        do
        {
          v39 = v39 + v36[v40++];
          --v41;
        }

        while (v41);
      }

      v65[v34++] = v39;
      v37 += v35;
    }

    while (v34 != v33);
    v24.n128_f64[0] = v65[0];
  }

  else
  {
    v38 = xmmword_1D0E7DCC0;
  }

  if (fabs(v24.n128_f64[0]) < 2.22044605e-16)
  {
    if (cnprint::CNPrinter::GetLogLevel(v23) <= 1)
    {
      LOWORD(v61) = 2;
      v66 = 1;
      cnprint::CNPrinter::Print(&v61, &v66, "HMM state is null vector after update; revert to input state");
    }

    v24 = sub_1D0B894B0(&v72, a1 + 8);
    v42 = DWORD1(v73);
    if (DWORD1(v73))
    {
      v43 = 0;
      v44 = v73;
      v45 = v75;
      v46 = 1;
      v38 = xmmword_1D0E7DCC0;
      do
      {
        v47 = v45[(v44 * v43)];
        v48 = v46;
        v49 = v44 - 1;
        if (v44 >= 2)
        {
          do
          {
            v47 = v47 + v45[v48++];
            --v49;
          }

          while (v49);
        }

        v65[v43++] = v47;
        v46 += v44;
      }

      while (v43 != v42);
      v24.n128_f64[0] = v65[0];
    }

    else
    {
      v38 = xmmword_1D0E7DCC0;
    }
  }

  v63 = 0x100000003;
  v62 = v38;
  v61 = &unk_1F4CDEB28;
  v64 = v65;
  v24.n128_f64[0] = 1.0 / v24.n128_f64[0];
  sub_1D0B8930C(&v72, &v61, v24);
  sub_1D0B894B0(&v72, &v61);
  sub_1D0B894B0(a1 + 72, &v72);
  *(a1 + 136) = 1;
}

uint64_t sub_1D0BBABC4(void *a1, uint64_t a2)
{
  v2 = a1[2];
  if ((v2 <= -1 || ((v2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v2 - 1) >= 0xFFFFFFFFFFFFFLL && (v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v18 = 12;
    v17 = 4;
    cnprint::CNPrinter::Print(&v18, &v17, "time,%.3lf,e-function failure on line %d: %s() %s");
    return 0xFFFFFFFFLL;
  }

  v6 = a1[3];
  if ((v6 <= -1 || ((v6 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v6 - 1) >= 0xFFFFFFFFFFFFFLL && (v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v20 = 12;
    v19 = 4;
    cnprint::CNPrinter::Print(&v20, &v19, "time,%.3lf,e-function failure on line %d: %s() %s");
    return 0xFFFFFFFFLL;
  }

  v10 = a1[4];
  if ((v10 <= -1 || ((v10 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (v10 - 1) >= 0xFFFFFFFFFFFFFLL && (v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v22 = 12;
    v21 = 4;
    cnprint::CNPrinter::Print(&v22, &v21, "time,%.3lf,e-function failure on line %d: %s() %s");
    return 0xFFFFFFFFLL;
  }

  v14 = 0;
  *(a2 + 8) = xmmword_1D0E7DCC0;
  v15 = *(a2 + 32);
  *v15 = v2;
  v15[1] = a1[3];
  v15[2] = a1[4];
  return v14;
}

__n128 sub_1D0BBAD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D0BB7860(a1, 1, a2, a3);
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
        if (v13 > v11)
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

void sub_1D0BBAE84(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B99264(&v14, a3);
  if (*(v3 + 432) == 1)
  {
    *(v3 + 424) = v26;
    *(v3 + 248) = v15;
    v4 = v23;
    v5 = v25;
    *(v3 + 392) = v24;
    *(v3 + 408) = v5;
    v6 = v19;
    v7 = v21;
    *(v3 + 328) = v20;
    *(v3 + 344) = v7;
    *(v3 + 360) = v22;
    *(v3 + 376) = v4;
    v8 = v17;
    *(v3 + 264) = v16;
    *(v3 + 280) = v8;
    *(v3 + 296) = v18;
    *(v3 + 312) = v6;
  }

  else
  {
    *(v3 + 240) = &unk_1F4CEF688;
    *(v3 + 424) = v26;
    *(v3 + 248) = v15;
    v9 = v23;
    v10 = v25;
    *(v3 + 392) = v24;
    *(v3 + 408) = v10;
    v11 = v19;
    v12 = v21;
    *(v3 + 328) = v20;
    *(v3 + 344) = v12;
    *(v3 + 360) = v22;
    *(v3 + 376) = v9;
    v13 = v17;
    *(v3 + 264) = v16;
    *(v3 + 280) = v13;
    *(v3 + 296) = v18;
    *(v3 + 312) = v11;
    *(v3 + 432) = 1;
  }

  if ((v21 & 0xFE) != 2 && *(v3 + 1320) == 1)
  {
    *(v3 + 1320) = 0;
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::Baro::~Baro(CoreNavigation::CLP::LogEntry::PrivateData::Baro *this)
{
  *this = &unk_1F4CD97F8;
  CoreNavigation::CLP::LogEntry::PrivateData::Baro::SharedDtor(this);
  sub_1D0B8CD0C(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::Baro::~Baro(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::Baro::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::Baro *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::Baro::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::BaroSample *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::~BaroSample(CoreNavigation::CLP::LogEntry::PrivateData::BaroSample *this)
{
  *this = &unk_1F4CD9780;
  CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::~BaroSample(this);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0BBB210(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B9356C(v4, a3);
  *(v3 + 256) = *(v3 + 112);
  v5[1] = 0;
  v5[2] = 0;
  v5[0] = &unk_1F4CEF538;
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
  if (!raven::MountStateChecker::HandleEvent(*(v3 + 1888), v4, v5))
  {
    sub_1D0B9E5C4(v3, v5);
  }
}

double sub_1D0BBB2E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B9356C(&v5, a3);
  if (*(v3 + 1120) == 1)
  {
    *(v3 + 1216) = v11;
    *(v3 + 1232) = v12;
    *(v3 + 1248) = v13;
    *(v3 + 1264) = v14;
    *(v3 + 1152) = v7;
    *(v3 + 1168) = v8;
    *(v3 + 1184) = v9;
    *(v3 + 1200) = v10;
    result = *&v6;
    *(v3 + 1136) = v6;
  }

  else
  {
    *(v3 + 1128) = &unk_1F4CEF538;
    *(v3 + 1216) = v11;
    *(v3 + 1232) = v12;
    *(v3 + 1248) = v13;
    *(v3 + 1264) = v14;
    *(v3 + 1152) = v7;
    *(v3 + 1168) = v8;
    *(v3 + 1184) = v9;
    *(v3 + 1200) = v10;
    result = *&v6;
    *(v3 + 1136) = v6;
    *(v3 + 1120) = 1;
  }

  return result;
}

uint64_t cnprint::CNLogFormatter::FormatGeneral(uint64_t a1, uint64_t a2, char *__format, ...)
{
  va_start(va, __format);
  cnprint::CNLogFormatter::FormatCore(a1, (a1 + 24), a2, 1, __format, va);
  return a1;
}

void cnprint::CNLogFormatter::FormatCore(uint64_t a1, const void **a2, uint64_t a3, int a4, char *__format, va_list a6)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(&__p, 0, sizeof(__p));
  if (a4 && snprintf(__str, 0x800uLL, "time,%.3lf,", *(a3 + 8) + *a3) >= 1)
  {
    sub_1D0BBB60C(&__p, __str);
  }

  if (vsnprintf(__str, 0x800uLL, __format, a6) < 0)
  {
    sub_1D0BBB79C(a2, &__p.__r_.__value_.__l.__data_, &v15);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = v15;
  }

  else
  {
    sub_1D0BBB79C(a2, &__p.__r_.__value_.__l.__data_, &v15);
    v10 = strlen(__str);
    v11 = std::string::append(&v15, __str, v10);
    v12 = v11->__r_.__value_.__r.__words[0];
    v17[0] = v11->__r_.__value_.__l.__size_;
    *(v17 + 7) = *(&v11->__r_.__value_.__r.__words[1] + 7);
    v13 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v14 = v17[0];
    *a1 = v12;
    *(a1 + 8) = v14;
    *(a1 + 15) = *(v17 + 7);
    *(a1 + 23) = v13;
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1D0BBB5D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1D0BBB60C(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_1D0BBB654(a1, __s, v4);
}

std::string *sub_1D0BBB654(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

uint64_t sub_1D0BBB710(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D0C537F0();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

char *sub_1D0BBB79C@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_1D0BBB710(a3, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

uint64_t sub_1D0BBB868(uint64_t a1, double *a2, uint64_t a3, double *a4, double *a5, double *a6)
{
  if (!*(a1 + 32))
  {
    return 0xFFFFFFFFLL;
  }

  if (!sub_1D0B7C8AC(a2, (a1 + 40)) && !sub_1D0B7CF88(a2, (a1 + 56)))
  {
    v13 = CNTimeSpan::operator-(a2, (a1 + 72), v11, v12);
    v15 = v14 + v13;
    if (fabs(v15) <= 2592000.0)
    {
      v17 = 0;
      v18 = 0;
      *a4 = 0.0;
      *a5 = 0.0;
      v19 = a1 + 88;
      v20 = 0.0;
      v21 = 1.0;
      *a6 = 0.0;
      v22 = 32;
      v23 = 0.0;
      do
      {
        v24 = v20;
        v20 = v21;
        *a4 = *a4 + *(v19 + 8 * v17) * v21;
        v25 = v17;
        *a5 = *a5 + *(v19 + 8 * v17) * v17 * v24;
        *a6 = *a6 + *(v19 + 8 * v17) * (v18 * v17) * v23;
        v21 = v15 * v21;
        ++v17;
        v18 = v25;
        v23 = v24;
        v22 -= 8;
      }

      while (v22);
      v26 = 0;
      v27 = 0;
      a4[1] = 0.0;
      a5[1] = 0.0;
      v28 = a1 + 120;
      v29 = 0.0;
      v30 = 1.0;
      a6[1] = 0.0;
      v31 = 32;
      v32 = 0.0;
      do
      {
        v33 = v29;
        v29 = v30;
        a4[1] = a4[1] + *(v28 + 8 * v26) * v30;
        v34 = v26;
        a5[1] = a5[1] + *(v28 + 8 * v26) * v26 * v33;
        a6[1] = a6[1] + *(v28 + 8 * v26) * (v27 * v26) * v32;
        v30 = v15 * v30;
        ++v26;
        v27 = v34;
        v32 = v33;
        v31 -= 8;
      }

      while (v31);
      v35 = 0;
      v36 = 0;
      a4[2] = 0.0;
      a5[2] = 0.0;
      v37 = a1 + 152;
      v38 = 0.0;
      v39 = 1.0;
      a6[2] = 0.0;
      v40 = 32;
      v41 = 0.0;
      do
      {
        v42 = v38;
        v38 = v39;
        a4[2] = a4[2] + *(v37 + 8 * v35) * v39;
        v43 = v35;
        a5[2] = a5[2] + *(v37 + 8 * v35) * v35 * v42;
        a6[2] = a6[2] + *(v37 + 8 * v35) * (v36 * v35) * v41;
        v39 = v15 * v39;
        ++v35;
        v36 = v43;
        v41 = v42;
        v40 -= 8;
      }

      while (v40);
      v44 = 0;
      v45 = 0.0;
      while ((*&a4[v44] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v45 = v45 + a4[v44] * a4[v44];
        if (++v44 == 3)
        {
          if (sqrt(v45) >= 6341752.3)
          {
            v46 = 0;
            while ((*&a5[v46] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (++v46 == 3)
              {
                v47 = 0;
                do
                {
                  v48 = a6[v47];
                }

                while ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v47++ != 2);
                if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  return 0;
                }

                else
                {
                  return 0xFFFFFFFFLL;
                }
              }
            }
          }

          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0BBBB60(uint64_t a1, double a2, double a3)
{
  v5 = __sincos_stret(a2);
  v6 = __sincos_stret(a3);
  v7 = *(a1 + 48);
  *v7 = -v6.__sinval;
  v8 = *(a1 + 36);
  v9 = &v7[v8];
  *v9 = v6.__cosval;
  v10 = &v7[2 * v8];
  *v10 = 0.0;
  v7[1] = -(v6.__cosval * v5.__sinval);
  v9[1] = -(v6.__sinval * v5.__sinval);
  v7[((2 * v8) | 1)] = v5.__cosval;
  v7[2] = v5.__cosval * v6.__cosval;
  v9[2] = v5.__cosval * v6.__sinval;
  v10[2] = v5.__sinval;
  *(a1 + 8) = 1;
  return 1;
}

uint64_t sub_1D0BBBC00(uint64_t result, double a2)
{
  v2 = *(result + 32);
  v3 = *(result + 16);
  if (v3 > 3)
  {
    v10 = (v2 + 8 * v3);
    v11 = (v3 - 1) >> 1;
    v12 = vdupq_lane_s64(*&a2, 0);
    do
    {
      *v2++ = v12;
      --v11;
    }

    while (v11);
    v10[-1] = v12;
  }

  else if (v3 >= 1)
  {
    v4 = (v3 + 1) & 0xFFFFFFFE;
    v5 = vdupq_n_s64(v3 - 1);
    v6 = xmmword_1D0E7DD30;
    v7 = &v2->i64[1];
    v8 = vdupq_n_s64(2uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v5, v6));
      if (v9.i8[0])
      {
        *(v7 - 1) = a2;
      }

      if (v9.i8[4])
      {
        *v7 = a2;
      }

      v6 = vaddq_s64(v6, v8);
      v7 += 2;
      v4 -= 2;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D0BBBC94@<X0>(unsigned int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if ((a1 & 0x80000000) != 0)
  {
    __assert_rtn("Eye", "cnmatrix.h", 2135, "nr >= 0");
  }

  if ((a2 & 0x80000000) != 0)
  {
    __assert_rtn("Eye", "cnmatrix.h", 2136, "nc >= 0");
  }

  *(a3 + 24) = 0x100000001;
  *a3 = &unk_1F4CDF418;
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

void sub_1D0BBBD80(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1D0BCA40C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1D0BBBDF8(uint64_t a1, raven::RavenIonosphereEstimatorActiveObject **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B94708(v4, a3);
  raven::RavenIonosphereEstimatorActiveObject::HandleEvent(v3, v4);
}

void raven::RavenIonosphereEstimatorActiveObject::HandleEvent(raven::RavenIonosphereEstimatorActiveObject *this, const raven::TimeMarkEvent *a2)
{
  if (*(this + 224))
  {
    if (*(this + 225))
    {
      std::mutex::lock((this + 1968));
      raven::RavenIonosphereEstimator::HandleEvent((this + 2032), a2);
      if (*(this + 1904) != 1 || (v55 = (*(*(this + 134) + 16))(this + 1072), v56 = v4, v53 = 1, v54 = 0, v20 = CNTimeSpan::operator+(&v55, &v53, v5, v6), *&v21 = v7, sub_1D0B8E6A8(a2 + 1, &v20)))
      {
        v20 = &unk_1F4CEF2B8;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = vdupq_n_s64(0x7FF8000000000000uLL);
        v31 = 0x7FF8000000000000;
        v32 = 0;
        v34 = v30;
        v35 = v30;
        v36 = v30;
        v37 = v30;
        v38 = v30;
        v39 = v30;
        v33 = 0;
        v40 = 0x7FF8000000000000;
        v41 = 0x7FF8000000000000;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0;
        v48 = 0x7FF8000000000000;
        v49 = 0;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v8 = *(a2 + 56);
        v23 = *(a2 + 40);
        v24 = v8;
        v9 = *(a2 + 88);
        v25 = *(a2 + 72);
        v26 = v9;
        v10 = *(a2 + 24);
        v21 = *(a2 + 8);
        v22 = v10;
        if (!raven::RavenIonosphereEstimator::PopulateEvent(this + 127, &v20))
        {
          operator new();
        }
      }

      if (*(this + 1064) != 1 || (v55 = (*(*(this + 29) + 16))(this + 232), v56 = v13, v53 = 1, v54 = 0, v20 = CNTimeSpan::operator+(&v55, &v53, v14, v15), *&v21 = v16, sub_1D0B8E6A8(a2 + 1, &v20)))
      {
        v20 = &unk_1F4CEE948;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30.i8[0] = 0;
        v30.i64[1] = 0;
        v31 = 0;
        LOBYTE(v32) = 0;
        v33 = 0;
        v34.i64[0] = 0;
        v34.i8[8] = 0;
        v35 = 0uLL;
        v36 = vdupq_n_s64(0x7FF8000000000000uLL);
        v37 = v36;
        v38 = v36;
        v39 = v36;
        v40 = 0x7FF8000000000000;
        v41 = 0x7FF8000000000000;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        v47 = 0;
        v48 = 0x7FF8000000000000;
        v49 = 0;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v17 = *(a2 + 56);
        v23 = *(a2 + 40);
        v24 = v17;
        v18 = *(a2 + 88);
        v25 = *(a2 + 72);
        v26 = v18;
        v19 = *(a2 + 24);
        v21 = *(a2 + 8);
        v22 = v19;
        if (!raven::RavenIonosphereEstimator::PopulateEvent((this + 2032), &v20))
        {
          operator new();
        }
      }

      std::mutex::unlock((this + 1968));
    }
  }

  else
  {
    LOWORD(v20) = 12;
    LOBYTE(v55) = 2;
    v11 = cnprint::CNLogFormatter::FormatGeneral(this + 239, "RavenIonosphereEstimatorActiveObject: not configured");
    if (*(this + 1935) >= 0)
    {
      v12 = v11;
    }

    else
    {
      v12 = *(this + 239);
    }

    cnprint::CNPrinter::Print(&v20, &v55, "%s", v12);
  }
}

void sub_1D0BBC634(_Unwind_Exception *a1)
{
  v5 = *(v3 - 96);
  if (v5)
  {
    sub_1D0B7CAB8(v5);
  }

  sub_1D0B7CAB8(v2);
  std::mutex::unlock((v1 + 1968));
  _Unwind_Resume(a1);
}

uint64_t raven::RavenIonosphereEstimator::HandleEvent(raven::RavenIonosphereEstimator *this, const raven::TimeMarkEvent *a2)
{
  v2 = *(a2 + 24);
  *(this + 29) = *(a2 + 8);
  *(this + 30) = v2;
  v3 = *(a2 + 40);
  v4 = *(a2 + 56);
  v5 = *(a2 + 88);
  *(this + 33) = *(a2 + 72);
  *(this + 34) = v5;
  *(this + 31) = v3;
  *(this + 32) = v4;
  if (*(this + 8) != 1)
  {
    return 32;
  }

  if (*(this + 9) != 1)
  {
    return 0;
  }

  v40.i64[0] = (*(*a2 + 16))(a2);
  v40.i64[1] = v8;
  v36 = *(this + 2);
  v10 = CNTimeSpan::operator-(&v40, &v36, v36, v9);
  *v13.i64 = v12 + v10;
  if (*v13.i64 >= 0.0)
  {
    v20 = *(this + 504);
    *v13.i64 = *v13.i64 / *(v20 + 2568);
    v11.i64[0] = 1.0;
    if (*v13.i64 > 1.0)
    {
      if (*(this + 80) != 1)
      {
        goto LABEL_19;
      }

      v22 = CNTimeSpan::operator-(this + 58, this + 8, v13, v11);
      v36.i64[0] = v22;
      *&v36.i64[1] = v23;
      if (v22 < 0 || (*v24.i64 = v23, v23 < 0.0))
      {
        v22 = CNTimeSpan::operator-(v36.i64, v24, v25);
        v24.i64[0] = v26;
      }

      if (*v24.i64 + v22 >= *(v20 + 3136))
      {
LABEL_19:
        updated = raven::RavenIonosphereEstimator::UpdateEstimatorParametersViaPolyfitToKlobucharModel(this);
        if (updated && cnprint::CNPrinter::GetLogLevel(updated) <= 1)
        {
          v36.i16[0] = 12;
          v39.i8[0] = 1;
          v28 = cnprint::CNLogFormatter::FormatGeneral(this + 505, "Warning: UpdateEstimatorParametersViaPolyfitToKlobucharModel failed, continuing without updating parameters");
          if (*(this + 4063) >= 0)
          {
            v29 = v28;
          }

          else
          {
            v29 = *(this + 505);
          }

          cnprint::CNPrinter::Print(&v36, &v39, "%s", v29);
        }
      }

      *(this + 3620) = 0u;
      *(this + 3592) = 0u;
      *(this + 3608) = 0u;
      *(this + 3560) = 0u;
      *(this + 3576) = 0u;
      *(this + 3528) = 0u;
      *(this + 3544) = 0u;
      *(this + 3496) = 0u;
      *(this + 3512) = 0u;
      *(this + 3464) = 0u;
      *(this + 3480) = 0u;
      *(this + 3432) = 0u;
      *(this + 3448) = 0u;
      *(this + 3400) = 0u;
      *(this + 3416) = 0u;
      *(this + 3368) = 0u;
      *(this + 3384) = 0u;
      *(this + 3336) = 0u;
      *(this + 3352) = 0u;
      *(this + 3304) = 0u;
      *(this + 3320) = 0u;
      *(this + 3272) = 0u;
      *(this + 3288) = 0u;
      *(this + 3240) = 0u;
      *(this + 3256) = 0u;
      v30 = *(this + 2);
      v38 = v40;
      v39 = v30;
      v36 = 0uLL;
      v37 = 0x7FF8000000000000;
      EstimatorPredictAndUpdateArguments = raven::RavenIonosphereEstimator::GetEstimatorPredictAndUpdateArguments(this, &v39, &v38, &v36, *v40.i64, v30);
      if (EstimatorPredictAndUpdateArguments)
      {
        v19 = raven::RavenIonosphereEstimator::PredictAndUpdate(this, &v36);
        v34 = v19;
        sub_1D0BAAFCC(&v34);
        return v19;
      }

      if (cnprint::CNPrinter::GetLogLevel(EstimatorPredictAndUpdateArguments) <= 1)
      {
        LOWORD(v34) = 12;
        v35 = 1;
        v32 = cnprint::CNLogFormatter::FormatGeneral(this + 4040, &v40, "Could not get predict and update arguments");
        if (*(this + 4063) >= 0)
        {
          v33 = v32;
        }

        else
        {
          v33 = *(this + 505);
        }

        cnprint::CNPrinter::Print(&v34, &v35, "%s", v33);
      }
    }

    return 0;
  }

  if (cnprint::CNPrinter::GetLogLevel(v10) <= 1)
  {
    v39.i16[0] = 12;
    v38.i8[0] = 1;
    v36.i64[0] = (*(*a2 + 16))(a2);
    v36.i64[1] = v14;
    v15 = *(this + 5) + *(this + 4);
    v16 = (*(*a2 + 16))(a2);
    cnprint::CNLogFormatter::FormatGeneral(this + 4040, &v36, "Estimator time is greater than event time,%.3lf > %.3lf", v15, v17 + v16);
    if (*(this + 4063) >= 0)
    {
      v18 = this + 4040;
    }

    else
    {
      v18 = *(this + 505);
    }

    cnprint::CNPrinter::Print(&v39, &v38, "%s", v18);
  }

  return 64;
}

uint64_t *sub_1D0BBCAA4(uint64_t **a1, unint64_t a2, void **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t sub_1D0BBCB88(uint64_t result, int a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v3 = *(result + 12);
    *(a3 + 8) = 1;
    *(a3 + 12) = v3;
    *(a3 + 16) = v3;
    *(a3 + 20) = 1;
    if (v3)
    {
      v4 = 0;
      v5 = *(result + 32);
      v6 = *(a3 + 32);
      do
      {
        v7 = *(result + 8);
        v8 = *(v5 + 4 * (v7 * v4));
        if (v7 >= 2)
        {
          v9 = v7 - 1;
          v10 = v7 * v4 + 1;
          do
          {
            v8 += *(v5 + 4 * v10++);
            --v9;
          }

          while (v9);
        }

        *(v6 + 4 * v4++) = v8;
      }

      while (v4 < *(result + 12));
    }
  }

  else
  {
    v11 = *(result + 8);
    *(a3 + 8) = v11;
    *(a3 + 12) = 1;
    *(a3 + 16) = v11;
    *(a3 + 20) = v11;
    if (v11)
    {
      v12 = 0;
      v13 = *(result + 32);
      v14 = *(a3 + 32);
      do
      {
        *(v14 + 4 * v12) = *(v13 + 4 * v12);
        ++v12;
      }

      while (v12 < *(result + 8));
    }

    v15 = *(result + 12);
    if (v15 >= 2)
    {
      v16 = *(result + 32);
      v17 = *(a3 + 32);
      v18 = 1;
      LODWORD(v19) = *(result + 8);
      do
      {
        if (v19)
        {
          v20 = 0;
          v21 = v19 * v18;
          do
          {
            *(v17 + 4 * v20) += *(v16 + 4 * (v21 + v20));
            ++v20;
            v19 = *(result + 8);
          }

          while (v20 < v19);
          v15 = *(result + 12);
        }

        ++v18;
      }

      while (v18 < v15);
    }
  }

  return result;
}

uint64_t sub_1D0BBCC94(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1D0DA0EE0(a1, a2);
  }

  else
  {
    sub_1D0BBCCD4(a1, a2);
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

_OWORD *sub_1D0BBCCD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = *a2;
  result = (v3 + 8);
  if (*(a2 + 31) < 0)
  {
    result = sub_1D0BC39B4(result, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *result = v5;
  }

  *(a1 + 8) = v3 + 32;
  return result;
}

void sub_1D0BBCD70(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = sub_1D0B99264(v8, a3);
  if (*(v3 + 224))
  {
    if (*(v3 + 497) == 1 && *(v3 + 496) == 1)
    {
      raven::RavenMovingStateEstimator::HandleEvent((v3 + 280), v8);
    }
  }

  else
  {
    v13 = 12;
    v12 = 2;
    v11[0] = (*(v8[0] + 16))(v8, v4);
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

    cnprint::CNLogFormatter::FormatWarning(v3 + 232, v11, "Failed to handle event - %s.", v6);
    if (*(v3 + 255) >= 0)
    {
      v7 = (v3 + 232);
    }

    else
    {
      v7 = *(v3 + 232);
    }

    cnprint::CNPrinter::Print(&v13, &v12, "%s", v7);
    if (v10 < 0)
    {
      operator delete(v9[0]);
    }
  }
}

void sub_1D0BBCEB0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

__n128 raven::RavenMovingStateEstimator::HandleEvent(__n128 *this, const raven::ActivityStateEvent *a2)
{
  v4 = a2 + 104;
  if (*(a2 + 104) == 5 && this[87].n128_u8[0] == 1)
  {
    v5 = this[84].n128_u8[8];
    if (v5 > 3)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v6 = 2u >> (v5 & 0xF);
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  this[65].n128_u8[0] = v6 & 1;
  if (sub_1D0BBD090(a2 + 104) > 0.95)
  {
    this[65].n128_u8[1] = (*v4 < 0xAuLL) & (0xCu >> *v4);
  }

  if (this[77].n128_u8[8] == 1)
  {
    v7 = *(a2 + 8);
    v8 = *(a2 + 24);
    v9 = *(a2 + 40);
    this[69] = *(a2 + 56);
    this[68] = v9;
    this[67] = v8;
    this[66] = v7;
    v10 = *(a2 + 72);
    v11 = *(a2 + 88);
    v12 = *(a2 + 104);
    this[73] = *(a2 + 120);
    this[72] = v12;
    this[71] = v11;
    this[70] = v10;
    result = *(a2 + 136);
    v14 = *(a2 + 152);
    v15 = *(a2 + 168);
    this[77].n128_u64[0] = *(a2 + 23);
    this[76] = v15;
    this[75] = v14;
    this[74] = result;
  }

  else
  {
    this[65].n128_u64[1] = &unk_1F4CEF688;
    v16 = *(a2 + 8);
    v17 = *(a2 + 24);
    v18 = *(a2 + 40);
    this[69] = *(a2 + 56);
    this[68] = v18;
    this[67] = v17;
    this[66] = v16;
    v19 = *(a2 + 72);
    v20 = *(a2 + 88);
    v21 = *(a2 + 104);
    this[73] = *(a2 + 120);
    this[72] = v21;
    this[71] = v20;
    this[70] = v19;
    result = *(a2 + 136);
    v22 = *(a2 + 152);
    v23 = *(a2 + 168);
    this[77].n128_u64[0] = *(a2 + 23);
    this[76] = v23;
    this[75] = v22;
    this[74] = result;
    this[77].n128_u8[8] = 1;
  }

  return result;
}

double sub_1D0BBD090(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 9)
  {
    return *&a1[8 * v1 + 8];
  }

  return result;
}

double sub_1D0BBD0B4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0B99264(&v15, a3);
  if (*(v3 + 432) == 1)
  {
    *(v3 + 424) = v27;
    *(v3 + 248) = v16;
    v4 = v24;
    v5 = v26;
    *(v3 + 392) = v25;
    *(v3 + 408) = v5;
    v6 = v20;
    v7 = v22;
    *(v3 + 328) = v21;
    *(v3 + 344) = v7;
    *(v3 + 360) = v23;
    *(v3 + 376) = v4;
    v8 = v18;
    *(v3 + 264) = v17;
    *(v3 + 280) = v8;
    result = *&v19;
    *(v3 + 296) = v19;
    *(v3 + 312) = v6;
  }

  else
  {
    *(v3 + 240) = &unk_1F4CEF688;
    *(v3 + 424) = v27;
    *(v3 + 248) = v16;
    v10 = v24;
    v11 = v26;
    *(v3 + 392) = v25;
    *(v3 + 408) = v11;
    v12 = v20;
    v13 = v22;
    *(v3 + 328) = v21;
    *(v3 + 344) = v13;
    *(v3 + 360) = v23;
    *(v3 + 376) = v10;
    v14 = v18;
    *(v3 + 264) = v17;
    *(v3 + 280) = v14;
    result = *&v19;
    *(v3 + 296) = v19;
    *(v3 + 312) = v12;
    *(v3 + 432) = 1;
  }

  return result;
}

uint64_t raven::GnssMeasurementPreprocessor::GetKlobucharParametersEvent(raven::GnssMeasurementPreprocessor *this, raven::KlobucharParametersEvent *a2)
{
  if ((*this & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      v10 = 12;
      v9 = 1;
      cnprint::CNPrinter::Print(&v10, &v9, "#gmp,KlobucharParametersEvent,not configured");
    }

    return 0;
  }

  if (*(this + 520) != 1)
  {
    return 0;
  }

  v3 = *(this + 328);
  v4 = *(this + 344);
  *(a2 + 40) = *(this + 360);
  *(a2 + 24) = v4;
  *(a2 + 8) = v3;
  v5 = *(this + 376);
  v6 = *(this + 392);
  v7 = *(this + 408);
  *(a2 + 104) = *(this + 424);
  *(a2 + 88) = v7;
  *(a2 + 72) = v6;
  *(a2 + 56) = v5;
  cnnavigation::KlobucharModelParameters::operator=(a2 + 120, this + 440);
  if (*(this + 520) == 1)
  {
    *(this + 40) = &unk_1F4CEE030;
    *(this + 520) = 0;
  }

  return 1;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::~GnssAvailabilityPrediction(CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *this)
{
  *this = &unk_1F4CDB6E8;
  CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::~GnssAvailabilityPrediction(this);

  JUMPOUT(0x1D387ECA0);
}

void sub_1D0BBD378(uint64_t a1, char **a2, uint64_t a3)
{
  v3 = *a2;
  sub_1D0BCA910(v11, a3);
  if ((*(*v3 + 88))(v3))
  {
    v4 = raven::RavenConvergenceEstimator::HandleEvent((v3 + 2968), v11);
    if (v4 && cnprint::CNPrinter::GetLogLevel(v4) <= 1)
    {
      v17[0] = 12;
      v16 = 1;
      v15[0] = (*(v11[0] + 16))(v11);
      v15[1] = v5;
      (*(v11[0] + 24))(v13, v11);
      if (v14 >= 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      v7 = cnprint::CNLogFormatter::FormatWarning(v3 + 240, v15, "Failed to handle event - %s.", v6);
      if (*(v3 + 263) >= 0)
      {
        v8 = v7;
      }

      else
      {
        v8 = *(v3 + 240);
      }

      cnprint::CNPrinter::Print(v17, &v16, "%s", v8);
      if (v14 < 0)
      {
        operator delete(v13[0]);
      }
    }
  }

  else
  {
    LOWORD(v13[0]) = 12;
    LOBYTE(v15[0]) = 2;
    v9 = cnprint::CNLogFormatter::FormatGeneral((v3 + 240), "Warning,RavenConvergenceEstimatorActiveObject is not configured");
    if (*(v3 + 263) >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = *(v3 + 240);
    }

    cnprint::CNPrinter::Print(v13, v15, "%s", v10);
  }

  v11[0] = &unk_1F4CEF598;
  v13[0] = &v12;
  sub_1D0BBBD80(v13);
}

void sub_1D0BBD554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (*(v23 - 65) < 0)
  {
    operator delete(*(v23 - 88));
  }

  *(v23 - 40) = &a23;
  sub_1D0BBBD80((v23 - 40));
  _Unwind_Resume(a1);
}

uint64_t *sub_1D0BBD5A4(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D0BBD62C(result, a4);
  }

  return result;
}

void sub_1D0BBD60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1D0BBBD80(&a9);
  _Unwind_Resume(a1);
}

void sub_1D0BBD62C(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_1D0BCAB88(a1, a2);
  }

  sub_1D0D31B50();
}

void sub_1D0BBD668(uint64_t **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    sub_1D0C448F0(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_1D0BBD62C(a1, v11);
    }

    sub_1D0D31B50();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    sub_1D0BCAD10(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          sub_1D0B7CAB8(v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    sub_1D0BCAD10(&v17, a2, (a2 + v12), v8);
    a1[1] = sub_1D0BC0038(a1, (a2 + v12), a3, a1[1]);
  }
}

uint64_t raven::RavenEstimator::HandleGnssPreprocessedMeasurementsEvent(raven::RavenEstimator *this, const raven::GnssPreprocessedMeasurementsEvent *a2)
{
  if (*(this + 57))
  {
    sub_1D0BCAC14(this + 2440, a2);
    return 0;
  }

  else
  {
    if (cnprint::CNPrinter::GetLogLevel(this) <= 1)
    {
      v9 = 12;
      v8 = 1;
      v7[0] = (*(*a2 + 16))(a2);
      v7[1] = v5;
      cnprint::CNLogFormatter::FormatWarning(this + 2712, v7, "Estimator not configured, failed to handle GnssPreprocessedMeasurementsEvent.");
      if (*(this + 2735) >= 0)
      {
        v6 = this + 2712;
      }

      else
      {
        v6 = *(this + 339);
      }

      cnprint::CNPrinter::Print(&v9, &v8, "%s", v6);
    }

    return 0xFFFFFFFFLL;
  }
}

BOOL raven::RavenEstimator::AreGnssMeasurementsAtSameTime(uint64_t a1, void *a2, _OWORD *a3, int8x16_t a4, int8x16_t a5)
{
  v6 = *a4.i64;
  LOBYTE(v44) = 0;
  *(&v44 + 1) = 0;
  *&v45 = 0;
  BYTE8(v45) = 0;
  v46 = 0uLL;
  LOBYTE(v47) = 0;
  *(&v47 + 1) = 0;
  *&v48 = 0;
  *(&v48 + 1) = 0x7FF8000000000000;
  *&v43 = 0;
  *(&v43 + 1) = 0x7FF0000000000000;
  LOBYTE(v38) = 0;
  *(&v38 + 1) = 0;
  v39.i64[0] = 0;
  v39.i8[8] = 0;
  v40 = 0uLL;
  LOBYTE(v41) = 0;
  *(&v41 + 1) = 0;
  *&v42 = 0;
  *(&v42 + 1) = 0x7FF8000000000000;
  *&v37 = 0;
  *(&v37 + 1) = 0xFFF0000000000000;
  v9 = a2[12];
  v10 = a2[13];
  while (v9 != v10)
  {
    v11 = *v9;
    if (*v9)
    {
      v12 = *(v11 + 328);
      v13 = *(v11 + 336);
      while (v12 != v13)
      {
        if (sub_1D0B7C8AC(v12, &v43))
        {
          v14 = *v12;
          v44 = *(v12 + 1);
          v43 = v14;
          v15 = *(v12 + 2);
          v16 = *(v12 + 3);
          v17 = *(v12 + 5);
          v47 = *(v12 + 4);
          v48 = v17;
          v45 = v15;
          v46 = v16;
        }

        if (sub_1D0B7CF88(v12, &v37))
        {
          v18 = *(v12 + 1);
          v37 = *v12;
          v38 = v18;
          a4 = *(v12 + 4);
          a5 = *(v12 + 6);
          v19 = *(v12 + 5);
          v41 = *(v12 + 4);
          v42 = v19;
          v39 = a4;
          v40 = a5;
        }

        v12 += 26;
      }
    }

    v9 += 2;
  }

  v20 = CNTimeSpan::operator-(&v37, &v43, a4, a5);
  v35 = v20;
  v36 = v21;
  if (v20 < 0 || (*v22.i64 = v21, v21 < 0.0))
  {
    v20 = CNTimeSpan::operator-(&v35, v22, v23);
    v22.i64[0] = v24;
  }

  v25 = fabs(*v22.i64 + v20);
  if (v25 > v6)
  {
    v34 = 12;
    v33 = 4;
    v35 = (*(*a2 + 16))(a2);
    v36 = v30;
    cnprint::CNLogFormatter::FormatGeneral(a1 + 2712, &v35, "GNSS measurements do not share a common time,min_time,%.3lf,max_time,%.3lf", *(&v43 + 1) + v43, *(&v37 + 1) + v37);
    if (*(a1 + 2735) >= 0)
    {
      v31 = (a1 + 2712);
    }

    else
    {
      v31 = *(a1 + 2712);
    }

    cnprint::CNPrinter::Print(&v34, &v33, "%s", v31);
  }

  else
  {
    v26 = v46;
    v27 = v47;
    v28 = v44;
    a3[2] = v45;
    a3[3] = v26;
    v29 = v48;
    a3[4] = v27;
    a3[5] = v29;
    *a3 = v43;
    a3[1] = v28;
  }

  return v25 <= v6;
}

double sub_1D0BBDAB8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void sub_1D0BBDB14(uint64_t result)
{
  if (*(result + 24))
  {
    sub_1D0BC27A8(result, *(result + 16));
    *(result + 16) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 24) = 0;
  }
}

void sub_1D0BBDB70(const void **a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 26 * ((v2 - v1) >> 3) - 1;
  }

  v5 = a1[4];
  if ((v4 - (a1[5] + v5)) < 0x1A)
  {
    v6 = a1[3];
    v7 = *a1;
    v8 = v6 - *a1;
    if (v3 < v8)
    {
      if (v1 != v7)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v10[4] = a1;
    sub_1D0C54E78(a1, v9);
  }

  a1[4] = (v5 + 26);
  v10[0] = *(v2 - 8);
  a1[2] = (v2 - 8);
  sub_1D0BA02E4(a1, v10);
}

void sub_1D0BBDD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *a2, raven::GnssAvailabilityEvent *a3, double a4, int8x16_t a5)
{
  v6 = 0uLL;
  v5 = &unk_1F4CEF048;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0uLL;
  v12 = 0;
  v13 = 0;
  v14[0] = 0;
  *&v14[1] = xmmword_1D0E83F80;
  v15 = 0;
  if (raven::ConvertProtobufToGnssAvailabilityEvent(a2, &v5, a3, xmmword_1D0E83F80, a5))
  {
    operator new();
  }
}

void sub_1D0BBE06C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 48);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  sub_1D0B7CAB8(v1);
  _Unwind_Resume(a1);
}

uint64_t raven::ConvertProtobufToGnssAvailabilityEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *a2, raven::GnssAvailabilityEvent *a3, int8x16_t a4, int8x16_t a5)
{
  if ((*(this + 36) & 1) == 0)
  {
    return 0;
  }

  v21 = v5;
  v22 = v6;
  v10 = *(this + 1);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v10, a2 + 8, 0, a4, a5);
  if (result)
  {
    *(a2 + 13) = *(this + 2);
    if ((*(this + 7) - 1) >= 3)
    {
      result = cnprint::CNPrinter::GetLogLevel(result);
      if (result <= 1)
      {
        v20 = 12;
        v19 = 1;
        v12 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&v20, &v19, "t,%.3lf,WARNING: Gnss Availability Prediction, unknown measurement source", v13 + v12);
      }

      v11 = 0;
    }

    else
    {
      v11 = *(this + 28);
    }

    *(a2 + 113) = v11;
    v14 = *(this + 6) - 1;
    if (v14 >= 3)
    {
      if (cnprint::CNPrinter::GetLogLevel(result) <= 1)
      {
        v18 = 12;
        v17 = 1;
        v15 = (*(*a2 + 16))(a2);
        cnprint::CNPrinter::Print(&v18, &v17, "t,%.3lf,WARNING: Gnss Availability Prediction, unknown state", v16 + v15);
      }

      LOBYTE(v14) = 0;
    }

    *(a2 + 112) = v14;
    return 1;
  }

  return result;
}

void sub_1D0BBE2A8(uint64_t a1, raven::RavenPositionContextEstimatorActiveObject **a2, uint64_t a3)
{
  v4 = *a2;
  if (*(a3 + 8) == 1)
  {
    v5 = *(a3 + 24);
  }

  else
  {
    LOWORD(v16.__vftable) = 3;
    LOBYTE(v24) = 5;
    cnprint::CNPrinter::Print(&v16, &v24, "Attempted to access type of uninitialized GenericEvent.");
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
    if (v9 != (off_1F4CEF070 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CEF070 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v16.__vftable = 0;
      std::bad_cast::bad_cast(&v16);
      v16.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(&v16);
    }

    v10 = *(a3 + 16);
    v16.__vftable = &unk_1F4CEF048;
    v12 = v10[2];
    v11 = v10[3];
    v17 = v10[1];
    v18 = v12;
    v19 = v11;
    v14 = v10[5];
    v13 = v10[6];
    v15 = *(v10 + 106);
    v20 = v10[4];
    *&v22[10] = v15;
    *v22 = v13;
    v21 = v14;
  }

  else
  {
    v24 = 3;
    v23 = 5;
    if (*(a3 + 8) == 1)
    {
      v8 = *(a3 + 24);
    }

    else
    {
      LOWORD(v16.__vftable) = 3;
      v25 = 5;
      cnprint::CNPrinter::Print(&v16, &v25, "Attempted to access type of uninitialized GenericEvent.");
      v8 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(&v24, &v23, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEF070 & 0x7FFFFFFFFFFFFFFFLL));
    v18 = 0uLL;
    v21 = 0uLL;
    *&v22[16] = 0u;
    v17 = 0uLL;
    v16.__vftable = &unk_1F4CEF048;
    v19 = 0uLL;
    v20 = 0uLL;
    *v22 = 0;
    *&v22[8] = 0x7FF8000000000000;
  }

  raven::RavenPositionContextEstimatorActiveObject::HandleEvent(v4, &v16);
}

void raven::RavenPositionContextEstimatorActiveObject::HandleEvent(raven::RavenPositionContextEstimatorActiveObject *this, const raven::GnssAvailabilityEvent *a2)
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

uint64_t raven::RavenPositionContextEstimator::HandleEvent(raven::RavenPositionContextEstimator *this, const raven::GnssAvailabilityEvent *a2)
{
  if (*this != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = v2;
  v15 = v3;
  v12 = (*(*a2 + 16))(a2);
  v13 = v6;
  v10 = *(a2 + 13);
  v7.i64[0] = v10;
  v11 = *(a2 + 112);
  raven::RavenPositionContextEstimator::HandleEvidence(this, &v10, v7, v8);
  return 0;
}

__n128 raven::RavenPositionContextEstimator::HmmPredictAndUpdate(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1) == 1)
  {
    v30 = v2;
    v31 = v3;
    if (*a1 == 1)
    {
      v6 = *(*(a1 + 8) + 2496);
      v29[0] = *(a2 + 16);
      v29[1] = v6;
      if (sub_1D0BBEAAC(a1 + 16, v29))
      {
        LOWORD(v14[0]) = 12;
        v13[0] = 4;
        v7 = (a1 + 424);
        cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),failed to predict,code,%d");
LABEL_5:
        if (*(a1 + 447) >= 0)
        {
          v8 = v7;
        }

        else
        {
          v8 = *(a1 + 424);
        }

LABEL_20:
        cnprint::CNPrinter::Print(v14, v13, "%s", v8);
        return result;
      }

      v26 = 0x100000001;
      *&v9 = 0x100000001;
      *(&v9 + 1) = 0x100000001;
      v25 = v9;
      v24 = &unk_1F4CE0380;
      v27 = &v28;
      v28 = sub_1D0BBF854;
      v21 = 0x100000001;
      v20 = v9;
      v19 = &unk_1F4CDF3D0;
      v22 = &v23;
      v16 = *(a2 + 16);
      v15 = -1.0;
      if (raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupGnssAvailabilityStateProbabilityGivenOutdoor(a1 + 472, (a2 + 8), &v15))
      {
        LOWORD(v14[0]) = 12;
        v13[0] = 4;
        v10 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupGnssAvailabilityStateProbabilityGivenOutdoor failed");
      }

      else if (v15 < 0.0 || v15 > 1.0 || (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        LOWORD(v14[0]) = 12;
        v13[0] = 4;
        v10 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupGnssAvailabilityStateProbabilityGivenOutdoor returned invalid probability");
      }

      else
      {
        v18 = v15;
        v15 = -1.0;
        if (raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupGnssAvailabilityStateProbabilityGivenIndoor(a1 + 472, (a2 + 8), &v15))
        {
          LOWORD(v14[0]) = 12;
          v13[0] = 4;
          v10 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupGnssAvailabilityStateProbabilityGivenIndoor failed");
        }

        else
        {
          if (v15 >= 0.0 && v15 <= 1.0 && (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
          {
            v17 = v15;
            *v22 = &v16;
            sub_1D0BBF10C(a1 + 16, v14);
            sub_1D0BBF168(v13, &v24);
            sub_1D0BBF75C(v12, &v19);
            if (!sub_1D0BBF260(a1 + 16, v14, 1, v13, v12))
            {
              result = *(a2 + 16);
              *(a1 + 152) = result;
              return result;
            }

            LOWORD(v14[0]) = 12;
            v13[0] = 4;
            v7 = (a1 + 424);
            cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),failed to update,code,%d");
            goto LABEL_5;
          }

          LOWORD(v14[0]) = 12;
          v13[0] = 4;
          v10 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupGnssAvailabilityStateProbabilityGivenIndoor returned invalid probability");
        }
      }

      if (*(a1 + 447) >= 0)
      {
        v8 = v10;
      }

      else
      {
        v8 = *(a1 + 424);
      }

      goto LABEL_20;
    }
  }

  return result;
}

{
  if (*(a1 + 1) == 1)
  {
    v39 = v2;
    v40 = v3;
    if (*a1 == 1)
    {
      v6 = *(*(a1 + 8) + 2496);
      v38[0] = *(a2 + 8);
      v38[1] = v6;
      v7 = sub_1D0BBEAAC(a1 + 16, v38);
      if (v7)
      {
        LOWORD(v33) = 12;
        LOBYTE(v28) = 4;
        cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),failed to predict,code,%d", v7);
        cnprint::CNPrinter::Print(&v33, &v28, "%s");
        return result;
      }

      v35 = 0x100000002;
      v34 = xmmword_1D0E83F60;
      v33 = &unk_1F4CE02B0;
      v36 = v37;
      v37[0] = sub_1D0BBF854;
      v37[1] = sub_1D0BBF854;
      v30 = 0x100000002;
      v29 = xmmword_1D0E83F60;
      v28 = &unk_1F4CE0338;
      v31 = &v32;
      __asm { FMOV            V0.2D, #-1.0 }

      v14 = *(a2 + 8);
      v24 = _Q0;
      v25 = v14;
      v23 = v14;
      v15 = 0.0;
      if (*a2 >= 0.0)
      {
        v15 = *a2;
      }

      v22 = v15;
      v21 = *(a1 + 288);
      v20 = -1.0;
      if (raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupMeanCn0ProbabilityGivenOutdoor(a1 + 472, &v22, &v21, &v20))
      {
        v19 = 4;
        cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupMeanCn0ProbabilityGivenOutdoor failed for signal environment,%hhu");
      }

      else if (v20 < 0.0 || v20 > 1.0 || (*&v20 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        LOWORD(v18[0]) = 12;
        v19 = 4;
        cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupMeanCn0ProbabilityGivenOutdoor returned invalid probability", v17, v18[0]);
      }

      else
      {
        v27 = v20;
        v20 = -1.0;
        if (raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupMeanCn0ProbabilityGivenIndoor((a1 + 472), &v22, &v20))
        {
          LOWORD(v18[0]) = 12;
          v19 = 4;
          cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupMeanCn0ProbabilityGivenIndoor failed", v17, v18[0]);
        }

        else if (v20 < 0.0 || v20 > 1.0 || (*&v20 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          LOWORD(v18[0]) = 12;
          v19 = 4;
          cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupMeanCn0ProbabilityGivenIndoor returned invalid probability", v17, v18[0]);
        }

        else
        {
          v26 = v20;
          *v31 = &v25;
          v22 = *(a2 + 4);
          v20 = -1.0;
          if (raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupNumSatsProbabilityGivenOutdoor(a1 + 472, &v22, &v21, &v20))
          {
            v19 = 4;
            cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupNumSatsProbabilityGivenOutdoor failed for signal environment,%hhu");
          }

          else if (v20 < 0.0 || v20 > 1.0 || (*&v20 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            LOWORD(v18[0]) = 12;
            v19 = 4;
            cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupNumSatsProbabilityGivenOutdoor returned invalid probability", v17, v18[0]);
          }

          else
          {
            *(&v24 + 1) = v20;
            v20 = -1.0;
            if (raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupNumSatsProbabilityGivenIndoor((a1 + 472), &v22, &v20))
            {
              LOWORD(v18[0]) = 12;
              v19 = 4;
              cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupNumSatsProbabilityGivenIndoor failed", v17, v18[0]);
            }

            else if (v20 < 0.0 || v20 > 1.0 || (*&v20 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
            {
              LOWORD(v18[0]) = 12;
              v19 = 4;
              cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupNumSatsProbabilityGivenIndoor returned invalid probability", v17, v18[0]);
            }

            else
            {
              *&v24 = v20;
              v31[1] = &v23;
              sub_1D0BBF10C(a1 + 16, v18);
              v16 = sub_1D0BBF260(a1 + 16, v18, 2, &v33, &v28);
              if (!v16)
              {
                result = *(a2 + 8);
                *(a1 + 152) = result;
                return result;
              }

              LOWORD(v18[0]) = 12;
              v19 = 4;
              cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),failed to update,code,%d", v16);
            }
          }
        }
      }

      cnprint::CNPrinter::Print(v18, &v19, "%s");
    }
  }

  return result;
}

{
  if (*(a1 + 1) == 1)
  {
    v31 = v2;
    v32 = v3;
    if (*a1 == 1)
    {
      v6 = *(*(a1 + 8) + 2496);
      v30[0] = *(a2 + 8);
      v30[1] = v6;
      if (sub_1D0BBEAAC(a1 + 16, v30))
      {
        v14[0] = 12;
        v13[0] = 4;
        v7 = (a1 + 424);
        cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),failed to predict,code,%d");
LABEL_5:
        if (*(a1 + 447) >= 0)
        {
          v8 = v7;
        }

        else
        {
          v8 = *(a1 + 424);
        }

LABEL_20:
        cnprint::CNPrinter::Print(v14, v13, "%s", v8);
        return result;
      }

      v27 = 0x100000001;
      *&v9 = 0x100000001;
      *(&v9 + 1) = 0x100000001;
      v26 = v9;
      v25 = &unk_1F4CE0380;
      v28 = &v29;
      v29 = sub_1D0BBF854;
      v22 = 0x100000001;
      v21 = v9;
      v20 = &unk_1F4CDF3D0;
      v23 = &v24;
      v17 = *(a2 + 8);
      v16 = *(a1 + 288);
      v15 = -1.0;
      if (raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupActivityStateProbabilityGivenOutdoor(a1 + 472, a2, &v16, &v15))
      {
        v14[0] = 12;
        v13[0] = 4;
        v10 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupActivityStateProbabilityGivenOutdoor failed");
      }

      else if (v15 < 0.0 || v15 > 1.0 || (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        v14[0] = 12;
        v13[0] = 4;
        v10 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupActivityStateProbabilityGivenOutdoor returned invalid probability");
      }

      else
      {
        v19 = v15;
        v15 = -1.0;
        if (raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupActivityStateProbabilityGivenIndoor(a1 + 472, a2, &v16, &v15))
        {
          v14[0] = 12;
          v13[0] = 4;
          v10 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupActivityStateProbabilityGivenIndoor failed");
        }

        else
        {
          if (v15 >= 0.0 && v15 <= 1.0 && (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
          {
            v18 = v15;
            *v23 = &v17;
            sub_1D0BBF10C(a1 + 16, v14);
            sub_1D0BBF168(v13, &v25);
            sub_1D0BBF75C(v12, &v20);
            if (!sub_1D0BBF260(a1 + 16, v14, 1, v13, v12))
            {
              result = *(a2 + 8);
              *(a1 + 152) = result;
              return result;
            }

            v14[0] = 12;
            v13[0] = 4;
            v7 = (a1 + 424);
            cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),failed to update,code,%d");
            goto LABEL_5;
          }

          v14[0] = 12;
          v13[0] = 4;
          v10 = cnprint::CNLogFormatter::FormatGeneral(a1 + 424, a1 + 152, "RavenPositionContextEstimator::HmmPredictAndUpdate(),LookupActivityStateProbabilityGivenIndoor returned invalid probability");
        }
      }

      if (*(a1 + 447) >= 0)
      {
        v8 = v10;
      }

      else
      {
        v8 = *(a1 + 424);
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_1D0BBEAAC(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 120))
  {
    sub_1D0B894B0(a1 + 64, a1 + 8);
  }

  v4 = *(a1 + 72);
  v5 = *(a1 + 76);
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  if (v4 <= v5)
  {
    v8 = *(a1 + 76);
  }

  else
  {
    v8 = *(a1 + 72);
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  if (v7 == 1)
  {
    v38 = 0x100000002;
    v36 = &unk_1F4CE0220;
    v39 = v40;
    v37 = xmmword_1D0E7F490;
    v33 = 0x100000002;
    v31 = &unk_1F4CE0220;
    *&v10.f64[1] = 0x200000002;
    v32 = xmmword_1D0E83F60;
    v34 = v35;
    v10.f64[0] = INFINITY;
    v11 = &v36;
LABEL_22:
    sub_1D0B8930C(v11, &v31, v10);
    goto LABEL_25;
  }

  v12 = *(a1 + 128);
  v33 = 0x100000002;
  v31 = &unk_1F4CE0220;
  v32 = xmmword_1D0E83F60;
  v34 = v35;
  v13 = sub_1D0B94BA0(a1 + 64, 1, &v31);
  v14 = *v34;
  if (fabs(*v34 + -1.0) > v12)
  {
    if (cnprint::CNPrinter::GetLogLevel(v13) <= 1)
    {
      LOWORD(v31) = 2;
      LOBYTE(v36) = 1;
      cnprint::CNPrinter::Print(&v31, &v36, "WARNING: HMM prediction passed a non-normalized probability vector.");
    }

    if ((v8 & 0x80000000) == 0)
    {
      sub_1D0BBEF48(&v36, a1 + 64);
      *&v37 = v8 | 0x100000000;
      DWORD2(v37) = v8;
      HIDWORD(v37) = v8;
      v33 = 0x100000002;
      v31 = &unk_1F4CE0220;
      *&v10.f64[1] = 0x200000002;
      v32 = xmmword_1D0E83F60;
      v34 = v35;
      v10.f64[0] = 1.0 / v14;
      goto LABEL_22;
    }

LABEL_43:
    __assert_rtn("Reshape", "cnmatrix.h", 2936, "nr >= 0");
  }

  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_43;
  }

  sub_1D0BBEF48(&v31, a1 + 64);
  *&v32 = v8 | 0x100000000;
  DWORD2(v32) = v8;
  HIDWORD(v32) = v8;
LABEL_25:
  sub_1D0B894B0(a1 + 64, &v31);
  *(a1 + 120) = 1;
  v33 = 0x200000002;
  v31 = &unk_1F4CE0268;
  v32 = xmmword_1D0E83F70;
  v34 = v35;
  v15 = sub_1D0BBFE0C(a2, &v31);
  if (v15)
  {
    LOWORD(v36) = 2;
    LOBYTE(v26) = 4;
    cnprint::CNPrinter::Print(&v36, &v26, "ERROR: HMM transition probability function failed.");
    return 27;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_39;
    }

    v17 = 0;
    v18 = 0;
    v19 = v34;
LABEL_29:
    v20 = 0.0;
    v21 = v19;
    v22 = v9;
    while (1)
    {
      v23 = *v21;
      if (*v21 < 0.0 || v23 > 1.0)
      {
        break;
      }

      v20 = v20 + v23;
      ++v21;
      if (!--v22)
      {
        if (fabs(v20 + -1.0) <= *(a1 + 128))
        {
          ++v17;
          v19 += SHIDWORD(v32);
          v18 = v17 >= v9;
          if (v17 != v9)
          {
            goto LABEL_29;
          }
        }

        break;
      }
    }

    if (!v18)
    {
      if (cnprint::CNPrinter::GetLogLevel(v15) <= 1)
      {
        LOWORD(v36) = 2;
        LOBYTE(v26) = 1;
        cnprint::CNPrinter::Print(&v36, &v26, "ERROR: HMM transition probability matrix is invalid.");
      }

      return 28;
    }

    else
    {
LABEL_39:
      v38 = 0x100000002;
      v37 = xmmword_1D0E83F60;
      v36 = &unk_1F4CE0220;
      v39 = v40;
      sub_1D0B89390(&v31, a1 + 64, &v36);
      sub_1D0B894B0(a1 + 8, &v36);
      v28 = 0x100000002;
      v26 = &unk_1F4CE0220;
      v27 = xmmword_1D0E83F60;
      v29 = &v30;
      sub_1D0B94BA0(a1 + 8, 1, &v26);
      v25.f64[0] = 1.0 / *v29;
      v38 = 0x100000002;
      v37 = xmmword_1D0E83F60;
      v36 = &unk_1F4CE0220;
      v39 = v40;
      sub_1D0B8930C(a1 + 8, &v36, v25);
      sub_1D0B894B0(a1 + 8, &v36);
      result = 0;
      *(a1 + 120) = 0;
    }
  }

  return result;
}

__n128 sub_1D0BBEF48(uint64_t a1, uint64_t a2)
{
  result.n128_u64[0] = 0x100000002;
  *(a1 + 24) = 0x100000002;
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F4CE0220;
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
  if (v4 > 2)
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

uint64_t raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupGnssAvailabilityStateProbabilityGivenOutdoor(uint64_t a1, unsigned __int8 *a2, double *a3)
{
  v4 = *a2;
  if (v4 < 4)
  {
    result = 0;
    v6 = dbl_1D0E82D30[v4];
  }

  else
  {
    v8 = 12;
    v7 = 4;
    cnprint::CNPrinter::Print(&v8, &v7, "LookupGnssAvailabilityStateProbabilityGivenOutdoor(),index out of bound,%lu", v4);
    result = 0xFFFFFFFFLL;
    v6 = -1.0;
  }

  *a3 = v6;
  return result;
}

double sub_1D0BBF10C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0x100000002;
  *a2 = &unk_1F4CE0220;
  *(a2 + 8) = xmmword_1D0E83F60;
  *(a2 + 32) = a2 + 40;
  v2 = 64;
  if (!*(a1 + 120))
  {
    v2 = 8;
  }

  *&result = sub_1D0B894B0(a2, a1 + v2).n128_u64[0];
  return result;
}

uint64_t sub_1D0BBF168(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0x100000002;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE02B0;
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(result + 8) = v3;
  *(result + 12) = v2;
  v4 = v2 * v3;
  *(result + 16) = v2 * v3;
  *(result + 20) = v3;
  *(result + 32) = result + 40;
  if (v3 > 2)
  {
    v7 = "this->max_num_rows_ >= A.NumRows()";
    v8 = 567;
    goto LABEL_9;
  }

  if (v2 > 1)
  {
    v7 = "this->max_num_cols_ >= A.NumCols()";
    v8 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v8, v7);
  }

  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 8 * v4;
    do
    {
      *(*(result + 32) + v5) = *(*(a2 + 32) + v5);
      v5 += 8;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t sub_1D0BBF260(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 128);
  if (*(a2 + 8))
  {
    v10 = *(a2 + 12) == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v56 = 0x100000002;
    v54 = &unk_1F4CE0220;
    v57 = v58;
    v55 = xmmword_1D0E83F60;
    memset_pattern16(v58, &unk_1D0E7F4B0, 0x10uLL);
    v61 = 0x100000002;
    *&v11.f64[1] = 0x200000002;
    v60 = xmmword_1D0E83F60;
    v59 = &unk_1F4CE0220;
    v62 = v63;
    v11.f64[0] = 0.5;
  }

  else
  {
    v61 = 0x100000002;
    v60 = xmmword_1D0E83F60;
    v59 = &unk_1F4CE0220;
    v62 = v63;
    v13 = sub_1D0B94BA0(a2, 1, &v59);
    v14 = *v62;
    if (fabs(*v62 + -1.0) <= v9)
    {
      sub_1D0BBEF48(&v59, a2);
      v60 = xmmword_1D0E83F60;
      goto LABEL_13;
    }

    if (cnprint::CNPrinter::GetLogLevel(v13) <= 1)
    {
      LOWORD(v59) = 2;
      LOBYTE(v54) = 1;
      cnprint::CNPrinter::Print(&v59, &v54, "WARNING: HMM update passed a non-normalized probability vector.");
    }

    sub_1D0BBEF48(&v54, a2);
    *&v11.f64[1] = 0x200000002;
    v55 = xmmword_1D0E83F60;
    v61 = 0x100000002;
    v60 = xmmword_1D0E83F60;
    v59 = &unk_1F4CE0220;
    v62 = v63;
    v11.f64[0] = 1.0 / v14;
  }

  sub_1D0B8930C(&v54, &v59, v11);
LABEL_13:
  sub_1D0B894B0(a1 + 8, &v59);
  sub_1D0BBEF48(&v59, a1 + 8);
  v15 = 0;
  v16 = xmmword_1D0E83F60;
  while (1)
  {
    v17 = *(*(a4 + 32) + 8 * v15);
    v56 = 0x100000002;
    v54 = &unk_1F4CE0220;
    v55 = v16;
    v57 = v58;
    v18 = v17(*(*(a5 + 32) + 8 * v15), &v54);
    if (v18)
    {
      break;
    }

    v20 = 0;
    v21 = 0;
    v22 = 0.0;
    v23 = v57;
    do
    {
      v24 = *&v57[8 * v21];
      if (v24 < 0.0 || v24 > 1.0)
      {
        LOWORD(v48) = 2;
        v53 = 4;
        cnprint::CNPrinter::Print(&v48, &v53, "ERROR: HMM emission probability matrix is invalid.", v22, 0x100000002, 0x200000002);
        return 30;
      }

      v26 = v20;
      v22 = v22 + v24;
      v20 = 1;
      v21 = 1;
    }

    while ((v26 & 1) == 0);
    v27 = fabs(v22);
    if (v27 <= v9)
    {
      LOWORD(v48) = 2;
      v53 = 4;
      cnprint::CNPrinter::Print(&v48, &v53, "ERROR: HMM emission probability matrix is null matrix", v27, 0x100000002, 0x200000002);
      return 30;
    }

    v28 = 0;
    v29 = v62;
    do
    {
      v29[v28] = *&v23[v28 * 8] * v29[v28];
      ++v28;
    }

    while (v28 != 2);
    v30 = DWORD1(v60);
    if (DWORD1(v60))
    {
      v31 = 0;
      v32 = v60;
      v33 = v60 - 1;
      v34 = 1;
      do
      {
        v35 = v29[v32 * v31];
        v36 = v34;
        v37 = v33;
        if (v32 >= 2)
        {
          do
          {
            v35 = v35 + v29[v36++];
            --v37;
          }

          while (v37);
        }

        v52[v31++] = v35;
        v34 += v32;
      }

      while (v31 != v30);
    }

    v19.n128_f64[0] = v52[0];
    if (fabs(v52[0]) < 2.22044605e-16)
    {
      if (cnprint::CNPrinter::GetLogLevel(v18) <= 1)
      {
        LOWORD(v48) = 2;
        v53 = 1;
        cnprint::CNPrinter::Print(&v48, &v53, "HMM state is null vector after update; revert to input state");
      }

      v19 = sub_1D0B894B0(&v59, a1 + 8);
      v38 = DWORD1(v60);
      if (DWORD1(v60))
      {
        v39 = 0;
        v40 = v60;
        v41 = v62;
        v42 = v60 - 1;
        v43 = 1;
        do
        {
          v44 = v41[v40 * v39];
          v45 = v43;
          v46 = v42;
          if (v40 >= 2)
          {
            do
            {
              v44 = v44 + v41[v45++];
              --v46;
            }

            while (v46);
          }

          v52[v39++] = v44;
          v43 += v40;
        }

        while (v39 != v38);
      }

      v19.n128_f64[0] = v52[0];
    }

    v50 = 0x100000002;
    v48 = &unk_1F4CE0220;
    v49 = xmmword_1D0E83F60;
    v51 = v52;
    v19.n128_f64[0] = 1.0 / v19.n128_f64[0];
    sub_1D0B8930C(&v59, &v48, v19);
    sub_1D0B894B0(&v59, &v48);
    v16 = xmmword_1D0E83F60;
    if (++v15 == a3)
    {
      sub_1D0B894B0(a1 + 64, &v59);
      result = 0;
      *(a1 + 120) = 1;
      return result;
    }
  }

  LOWORD(v48) = 2;
  v53 = 4;
  cnprint::CNPrinter::Print(&v48, &v53, "ERROR: HMM emission function failed.");
  return 29;
}

uint64_t sub_1D0BBF75C(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0x100000002;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_1F4CE0338;
  v3 = *(a2 + 8);
  v2 = *(a2 + 12);
  *(result + 8) = v3;
  *(result + 12) = v2;
  v4 = v2 * v3;
  *(result + 16) = v2 * v3;
  *(result + 20) = v3;
  *(result + 32) = result + 40;
  if (v3 > 2)
  {
    v7 = "this->max_num_rows_ >= A.NumRows()";
    v8 = 567;
    goto LABEL_9;
  }

  if (v2 > 1)
  {
    v7 = "this->max_num_cols_ >= A.NumCols()";
    v8 = 568;
LABEL_9:
    __assert_rtn("CNMatrix", "cnmatrix.h", v8, v7);
  }

  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 8 * v4;
    do
    {
      *(*(result + 32) + v5) = *(*(a2 + 32) + v5);
      v5 += 8;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t sub_1D0BBF854(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v2 >= 0.0 ? (v3 = v2 <= 1.0) : (v3 = 0), v3))
  {
    v6 = *(a1 + 24);
    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v6 >= 0.0 && v6 <= 1.0)
    {
      v4 = 0;
      *(a2 + 8) = xmmword_1D0E83F60;
      v8 = *(a2 + 32);
      *v8 = v2;
      *(v8 + 8) = *(a1 + 24);
      return v4;
    }

    v12 = 12;
    v11 = 4;
    cnprint::CNPrinter::Print(&v12, &v11, "time,%.3lf,e-function failure on line %d: %s() %s");
  }

  else
  {
    v10 = 12;
    v9 = 4;
    cnprint::CNPrinter::Print(&v10, &v9, "time,%.3lf,e-function failure on line %d: %s() %s");
  }

  return 0xFFFFFFFFLL;
}

void raven::RavenPositionContextEstimator::UpdatePositionContextStateEvent(raven::RavenPositionContextEstimator *this)
{
  *(this + 19) = *(this + 152);
  v6 = 0;
  StateProbability = raven::RavenPositionContextEstimator::GetStateProbability(this, &v6);
  v5 = 1;
  v3 = raven::RavenPositionContextEstimator::GetStateProbability(this, &v5);
  *(this + 51) = StateProbability;
  *(this + 52) = v3;
  v4 = 2 * (v3 >= 0.95);
  if (StateProbability >= 0.95)
  {
    v4 = 1;
  }

  *(this + 400) = v4;
}

double raven::RavenPositionContextEstimator::GetStateProbability(uint64_t a1, int *a2)
{
  if (*a1 != 1)
  {
    return NAN;
  }

  v11[4] = v2;
  v11[5] = v3;
  v5 = 64;
  if (!*(a1 + 136))
  {
    v5 = 8;
  }

  v9 = 0x100000002;
  v7 = &unk_1F4CE0220;
  v8 = xmmword_1D0E83F60;
  v10 = v11;
  sub_1D0B894B0(&v7, a1 + v5 + 16);
  return *&v10[*a2];
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
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

        if (v7 != 3)
        {
          if (v7 == 4 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_48;
          }

          goto LABEL_22;
        }

        if (v8 != 1)
        {
          goto LABEL_22;
        }

LABEL_44:
        *v27 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v27) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v27;
        *(this + 9) |= 4u;
        v25 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v25 < v11 && *v25 == 32)
        {
          v12 = v25 + 1;
          *(a2 + 1) = v12;
LABEL_48:
          v27[0] = 0;
          if (v12 >= v11 || (v26 = *v12, (v26 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v27);
            if (!result)
            {
              return result;
            }

            v26 = v27[0];
          }

          else
          {
            *(a2 + 1) = v12 + 1;
          }

          if (v26 <= 3)
          {
            *(this + 9) |= 8u;
            *(this + 7) = v26;
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

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2 && (TagFallback & 7) == 0)
      {
        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
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

    *(this + 9) |= 1u;
    v13 = *(this + 1);
    if (!v13)
    {
      operator new();
    }

    v27[0] = 0;
    v14 = *(a2 + 1);
    if (v14 >= *(a2 + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v27))
      {
        return 0;
      }
    }

    else
    {
      v27[0] = *v14;
      *(a2 + 1) = v14 + 1;
    }

    v15 = *(a2 + 14);
    v16 = *(a2 + 15);
    *(a2 + 14) = v15 + 1;
    if (v15 >= v16)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v13, a2, v17) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v18 = *(a2 + 14);
    v19 = __OFSUB__(v18, 1);
    v20 = v18 - 1;
    if (v20 < 0 == v19)
    {
      *(a2 + 14) = v20;
    }

    v21 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v21 < v9 && *v21 == 16)
    {
      v10 = v21 + 1;
      *(a2 + 1) = v10;
LABEL_34:
      v27[0] = 0;
      if (v10 >= v9 || (v22 = *v10, (v22 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v27);
        if (!result)
        {
          return result;
        }

        v22 = v27[0];
      }

      else
      {
        *(a2 + 1) = v10 + 1;
      }

      if (v22 <= 3)
      {
        *(this + 9) |= 2u;
        *(this + 6) = v22;
      }

      v24 = *(a2 + 1);
      if (v24 < *(a2 + 2) && *v24 == 25)
      {
        *(a2 + 1) = v24 + 1;
        goto LABEL_44;
      }
    }
  }
}

uint64_t sub_1D0BBFE0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v2 >= 0.0 ? (v3 = v2 <= 1.0) : (v3 = 0), v3))
  {
    v5 = *(a1 + 24);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v5 >= 0.0 && v5 <= 1.0)
    {
      result = 0;
      *(a2 + 8) = xmmword_1D0E83F70;
      v7 = *(a2 + 32);
      *v7 = v2;
      v7[1] = 1.0 - v2;
      v7[2] = 1.0 - v5;
      v7[3] = v5;
      return result;
    }

    v11 = 12;
    v10 = 4;
    cnprint::CNPrinter::Print(&v11, &v10, "time,%.3lf,t-function failure on line %d: %s() %s");
  }

  else
  {
    v9 = 12;
    v8 = 4;
    cnprint::CNPrinter::Print(&v9, &v8, "time,%.3lf,t-function failure on line %d: %s() %s");
  }

  return 0xFFFFFFFFLL;
}

uint64_t raven::RavenPositionContextStateLookupTables::PositionContextStateLookupTables::LookupGnssAvailabilityStateProbabilityGivenIndoor(uint64_t a1, unsigned __int8 *a2, double *a3)
{
  v4 = *a2;
  if (v4 < 4)
  {
    result = 0;
    v6 = dbl_1D0E82D48[v4];
  }

  else
  {
    v8 = 12;
    v7 = 4;
    cnprint::CNPrinter::Print(&v8, &v7, "LookupGnssAvailabilityStateProbabilityGivenIndoor(),index out of bound,%lu", v4);
    result = 0xFFFFFFFFLL;
    v6 = -1.0;
  }

  *a3 = v6;
  return result;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

void *sub_1D0BC0038(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  sub_1D0BCABDC(v7);
  return v4;
}

void sub_1D0BC00C0(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_1D0B7CAB8(v3);
    }

    v1 -= 16;
  }
}

uint64_t raven::RavenConvergenceEstimator::HandleEvent(raven::RavenConvergenceEstimator *this, const raven::GnssPreprocessedMeasurementsEvent *a2)
{
  MEMORY[0x1EEE9AC00](this);
  v236 = *MEMORY[0x1E69E9840];
  if (*(v2 + 57) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v2;
  if (*(v2 + 58) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v3;
  if (raven::RavenEstimator::HandleGnssPreprocessedMeasurementsEvent(v2, v3))
  {
    return 0xFFFFFFFFLL;
  }

  v195 = (*(*v5 + 16))(v5);
  v196 = v6;
  updated = raven::RavenConvergenceEstimator::UpdateClockOffsetEstimateIfNecessary(v4, (v5 + 6), &v195);
  if (!updated)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v5[22] & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(updated) <= 1)
    {
      LOWORD(v166.__r_.__value_.__l.__data_) = 12;
      LOBYTE(v149) = 1;
      v195 = (*(*v5 + 16))(v5);
      v196 = v10;
      cnprint::CNLogFormatter::FormatGeneral(v4 + 2712, &v195, "Encountered GnssPreprocessedMeasurementsEvent with no oscillator model.");
      if (*(v4 + 2735) >= 0)
      {
        v11 = (v4 + 2712);
      }

      else
      {
        v11 = *(v4 + 2712);
      }

      cnprint::CNPrinter::Print(&v166, &v149, "%s", v11);
    }

    raven::RavenConvergenceEstimator::ResetOscillatorStates(v4);
  }

  v221 = 0uLL;
  v222 = 0;
  v224 = 0;
  v223 = 0;
  v225 = 0;
  v227 = 0;
  v226 = 0;
  v228 = 0;
  v230 = 0;
  v229 = 0;
  v231 = 0x7FF8000000000000;
  if (*(*(v4 + 1168) + 3828) != 1 || (v8.i64[0] = 0x3EB0C6F7A0B5ED8DLL, !raven::RavenEstimator::AreGnssMeasurementsAtSameTime(v4, v5, &v221, v8, v9)))
  {
    v158 = &v158;
    v159 = &v158;
    v160 = 0;
    goto LABEL_22;
  }

  sub_1D0BCAF88(&v195, v4 + 2864);
  v217 = *(v4 + 8432);
  v218 = *(v4 + 8448);
  v219 = *(v4 + 8464);
  v220 = *(v4 + 8480);
  v214 = *(v4 + 8384);
  v215 = *(v4 + 8400);
  v216 = *(v4 + 8416);
  v210 = v216;
  v211 = v217;
  v212 = v218;
  v208 = v214;
  v209 = v215;
  v213 = *(v4 + 8464);
  v207 = 0;
  v12 = (v4 + 80);
  *&v166.__r_.__value_.__l.__data_ = *(v4 + 80);
  v13 = CNTimeSpan::operator-(&v221, &v166, *&v166.__r_.__value_.__l.__data_, v218);
  v17 = v13;
  v18 = v14;
  if (!v13 && (*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || !v13)
  {
    if (v14 >= 0.0)
    {
      goto LABEL_18;
    }

LABEL_122:
    if (cnprint::CNPrinter::GetLogLevel(v13) <= 1)
    {
      LOWORD(v149) = 12;
      v143[0] = 1;
      v166.__r_.__value_.__r.__words[0] = (*(*v5 + 16))(v5);
      v166.__r_.__value_.__l.__size_ = v80;
      v81 = cnprint::CNLogFormatter::FormatGeneral(v4 + 2712, &v166, "GNSS measurement selection: negative prediction interval,dt,%.3lf", v18 + v17);
      if (*(v4 + 2735) >= 0)
      {
        v82 = v81;
      }

      else
      {
        v82 = *(v4 + 2712);
      }

      cnprint::CNPrinter::Print(&v149, v143, "%s", v82);
    }

    v19 = 0;
    goto LABEL_128;
  }

  if (v13 < 0)
  {
    goto LABEL_122;
  }

LABEL_18:
  v19 = 1;
LABEL_128:
  v84 = *(v4 + 88);
  v166.__r_.__value_.__r.__words[0] = *(v4 + 80);
  v83 = v166.__r_.__value_.__r.__words[0];
  v166.__r_.__value_.__l.__size_ = v84;
  v85 = CNTimeSpan::operator-(&v221, &v166, v15, v16);
  v87 = v86;
  v88 = *(v4 + 1168);
  v89 = *(v88 + 872);
  *&v235[0] = v83;
  *(&v235[0] + 1) = v84;
  v159 = 0;
  v158 = 0;
  *v90.i64 = v89;
  CNTimeSpan::SetTimeSpan(&v158, 0, v90, v91);
  v92.i64[0] = *(v88 + 880);
  v194[1] = 0;
  v194[0] = 0;
  *v94.i64 = CNTimeSpan::SetTimeSpan(v194, 0, v92, v93);
  if (!v19)
  {
    goto LABEL_161;
  }

  *v95.i64 = v87;
  *v94.i64 = (v87 + v85) / v89;
  v96 = vcvtpd_s64_f64(*v94.i64);
  if (v96 < 1)
  {
    goto LABEL_161;
  }

  v133 = (v4 + 2712);
  v97 = 1;
  v136 = vdupq_n_s64(0x7FF8000000000000uLL);
  v94 = xmmword_1D0E83F60;
  while (1)
  {
    v193[0] = CNTimeSpan::operator+(v235, &v158, v94, v95);
    v193[1] = v98;
    v101 = CNTimeSpan::operator+(v193, v194, v99, v100);
    if (!v101 && (*&v102 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_136:
      v103.i64[0] = *(&v221 + 1);
LABEL_137:
      v104 = *v103.i64 <= v102;
      goto LABEL_139;
    }

    if (!v221)
    {
      v103.i64[0] = *(&v221 + 1);
      if ((*(&v221 + 1) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        goto LABEL_137;
      }
    }

    if (v101 == v221)
    {
      goto LABEL_136;
    }

    v104 = v101 > v221;
LABEL_139:
    v105 = v193;
    if (v104)
    {
      v105 = &v221;
    }

    v192 = *v105;
    v149 = 0uLL;
    *(v150 + 8) = v136;
    *(&v150[1] + 8) = v136;
    EstimatorPredictAndUpdateArguments = raven::RavenConvergenceEstimator::GetEstimatorPredictAndUpdateArguments(v4, v235, &v192, &v149, *v136.i64, v103);
    if (!EstimatorPredictAndUpdateArguments)
    {
      break;
    }

    data = 0x800000008;
    *&v166.__r_.__value_.__r.__words[1] = xmmword_1D0E84510;
    v166.__r_.__value_.__r.__words[0] = &unk_1F4CE43B0;
    *&v168 = &v168 + 8;
    if (sub_1D0B9E8C4(v4))
    {
      goto LABEL_159;
    }

    *&v143[24] = 0x200000002;
    *v143 = &unk_1F4CE14D8;
    *&v143[8] = xmmword_1D0E83F70;
    *&v143[32] = &v143[40];
    *&v143[40] = xmmword_1D0E84550;
    *&v232[24] = 0x100000002;
    *&v232[8] = xmmword_1D0E83F60;
    *v232 = &unk_1F4CE1520;
    v233 = v234;
    v234[0] = sub_1D0BA4C04;
    v234[1] = sub_1D0BA55E4;
    v165 = *&v150[0];
    v164 = *&v150[0];
    *&v146[24] = 0x100000002;
    *&v146[8] = xmmword_1D0E83F60;
    *v146 = &unk_1F4CE15A8;
    v147 = v148;
    v148[0] = &v165;
    v148[1] = &v164;
    v107 = sub_1D0BA19BC(&v195);
    if (v107)
    {
      v163 = 12;
      v162 = 4;
      v161[0] = (*(*v5 + 16))(v5);
      v161[1] = v111;
      cnprint::CNLogFormatter::FormatGeneral(v133, v161, "GNSS measurement selection: could not predict filter,code,%d", v107);
      if (*(v4 + 2735) >= 0)
      {
        v112 = (v4 + 2712);
      }

      else
      {
        v112 = *(v4 + 2712);
      }

      cnprint::CNPrinter::Print(&v163, &v162, "%s", v112);
LABEL_159:
      v19 = 0;
LABEL_160:
      v12 = (v4 + 80);
      goto LABEL_161;
    }

    v94 = v192;
    v235[0] = v192;
    v108 = v97++ >= v96 || v104;
    if (v108)
    {
      v19 = 1;
      goto LABEL_160;
    }
  }

  v12 = (v4 + 80);
  if (cnprint::CNPrinter::GetLogLevel(EstimatorPredictAndUpdateArguments) <= 1)
  {
    *v143 = 12;
    v232[0] = 1;
    v166.__r_.__value_.__r.__words[0] = (*(*v5 + 16))(v5);
    v166.__r_.__value_.__l.__size_ = v109;
    cnprint::CNLogFormatter::FormatGeneral(v133, &v166, "GNSS measurement selection: could not get predict and update arguments");
    if (*(v4 + 2735) >= 0)
    {
      v110 = (v4 + 2712);
    }

    else
    {
      v110 = *(v4 + 2712);
    }

    cnprint::CNPrinter::Print(v143, v232, "%s", v110);
  }

  v19 = 0;
LABEL_161:
  raven::PopulateAllTimeFields(&v221, v4 + 136, v94, v95);
  if (*(v4 + 1208) == 1)
  {
    v145 = *(v4 + 1400);
    v113 = *(v4 + 1368);
    *&v143[32] = *(v4 + 1352);
    *&v143[48] = v113;
    v144 = *(v4 + 1384);
    v114 = *(v4 + 1336);
    *v143 = *(v4 + 1320);
    *&v143[16] = v114;
  }

  else
  {
    *v143 = 0;
    *&v143[8] = 0x3FF0000000000000;
    memset(&v143[16], 0, 48);
    v144 = 0u;
    v145 = 0;
  }

  if (*(v4 + 2592) == 1)
  {
    v115 = *(v4 + 2704);
  }

  else
  {
    v115 = 0;
  }

  LOBYTE(v193[0]) = v115;
  if (*(v4 + 1848) == 1)
  {
    v233 = *(v4 + 1992);
    v116 = *(v4 + 1976);
    *v232 = *(v4 + 1960);
    *&v232[16] = v116;
  }

  else
  {
    *v232 = 0;
    *&v232[8] = 0x3FF0000000000000;
    *&v232[24] = 0;
    v233 = 0;
    *&v232[16] = 0;
  }

  if (*(v4 + 2000) == 1)
  {
    v117 = *(v4 + 2128);
    *v146 = *(v4 + 2112);
    *&v146[16] = v117;
    v147 = *(v4 + 2144);
  }

  else
  {
    *v146 = 0;
    *&v146[8] = 0x3FF0000000000000;
    *&v146[24] = 0;
    v147 = 0;
    *&v146[16] = 0;
  }

  if (v19)
  {
    sub_1D0BBDAB8(&v195, &v149);
    sub_1D0BA5FC4(&v195, &v166);
    v118 = sub_1D0BC1CEC(v4 + 5928, &v221, &v149, &v166, v143, v193, v232, v146);
  }

  else
  {
    v118 = 0;
  }

  sub_1D0BCB680(&v195);
  v158 = &v158;
  v159 = &v158;
  v160 = 0;
  if (!v118)
  {
    goto LABEL_22;
  }

  LOBYTE(v195) = 0;
  LOBYTE(v196) = 0;
  v119 = raven::RavenSequentialGNSSMeasurementSelector::SelectMeasurements(v4 + 5928, v5, &v158, &v195);
  v122 = v119;
  if ((v119 & 1) != 0 && v196 == 1)
  {
    v123 = v195;
    v166.__r_.__value_.__r.__words[0] = (*(*v5 + 16))(v5);
    v166.__r_.__value_.__l.__size_ = v124;
    v119 = raven::RavenConvergenceEstimator::AdjustClockOffset(v4, &v166, *&v123);
    if ((v119 & 1) == 0)
    {
LABEL_183:
      v20 = 0xFFFFFFFFLL;
      goto LABEL_184;
    }
  }

  if (*(*(v4 + 1168) + 3369) == 1 && *(v4 + 288) < 0x1Fu)
  {
    v166.__r_.__value_.__r.__words[0] = CNTimeSpan::operator-(v12, (v4 + 64), v120, v121);
    v166.__r_.__value_.__l.__size_ = v125;
    v119 = raven::RavenEstimator::UpdateAggressiveFlooringOfOutputUncertaintyData(v4, &v166, v4 + 2152, v5[23], v126, v127);
  }

  else
  {
    *(v4 + 8352) = 0;
    *(v4 + 280) = 0;
  }

  LODWORD(v166.__r_.__value_.__l.__data_) = 1;
  LODWORD(v149) = 5;
  ITRCount = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v119, (v4 + 7392), &v166, &v149);
  v129 = ITRCount;
  LODWORD(v166.__r_.__value_.__l.__data_) = 1;
  LODWORD(v149) = 4;
  v130 = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(ITRCount, (v4 + 7392), &v166, &v149);
  v131 = v130;
  v132 = v130 + v129;
  *(v4 + 312) = v132 - *(v4 + 8368);
  LODWORD(v166.__r_.__value_.__l.__data_) = 1;
  LODWORD(v149) = 3;
  UnprocessedMSRData = raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(v130, (v4 + 7392), &v166, &v149);
  *(v4 + 316) = UnprocessedMSRData - *(v4 + 8372);
  if (v132)
  {
    *(v4 + 320) = v131 / v132;
  }

  if ((v122 & 1) == 0)
  {
LABEL_22:
    UnprocessedMSRData = raven::RavenSequentialGNSSMeasurementSelector::GetUnprocessedMSRData(v4 + 5928, v5, &v158);
    if (UnprocessedMSRData)
    {
      goto LABEL_23;
    }

    goto LABEL_183;
  }

LABEL_23:
  v23 = v159;
  if (v159 != &v158)
  {
    v24 = 0;
    v135 = v4 + 2712;
    v134 = vdupq_n_s64(0x7FF8000000000000uLL);
    do
    {
      v25 = v23 + 2;
      v26 = v23[2];
      v27 = *(v23 + 48);
      if ((v27 - 1) >= 2)
      {
        if (v27 == 3)
        {
          ++v24;
        }

        else
        {
          raven::RavenSequentialGNSSMeasurementSelector::GetFinalGnssObservable(v4 + 5928, (v23 + 2), &v149);
          if (v157)
          {
            *&v146[24] = 0x100000003;
            *&v28 = 0x100000001;
            *(&v28 + 1) = 0x100000001;
            *&v146[8] = v28;
            *v146 = &unk_1F4CDEB28;
            v147 = v148;
            *&v143[24] = 0x300000003;
            *v143 = &unk_1F4CD5DD0;
            *&v143[8] = v28;
            *&v143[32] = &v143[40];
            sub_1D0B751F4(&v166, &unk_1D0ED80C5);
            LOBYTE(data) = 0;
            HIDWORD(data) = -1;
            v168 = 0u;
            v169 = 0u;
            v170 = 0u;
            v171 = 0u;
            v172 = 0u;
            *&v173 = 0;
            *(&v173 + 1) = 0x7FF8000000000000;
            LODWORD(v174) = 0;
            BYTE4(v174) = 0;
            *(&v174 + 1) = 0x7FF8000000000000;
            *&v175[8] = v134;
            *&v175[24] = v134;
            *&v175[40] = v134;
            *v175 = 2143289344;
            *&v175[56] = 2143289344;
            v175[60] = 0;
            LOBYTE(v176) = 0;
            BYTE4(v176) = 0;
            BYTE8(v176) = 0;
            WORD6(v176) = 0;
            BYTE14(v176) = 1;
            v177 = v134;
            v178 = &unk_1F4CDFE98;
            sub_1D0B751F4(&v179, &unk_1D0ED80C5);
            LOBYTE(v180) = 0;
            HIDWORD(v180) = -1;
            v181 = 0u;
            v182 = 0u;
            v183 = 0u;
            v184 = 0u;
            v185 = 0u;
            v186 = 0u;
            v187 = 0u;
            v188 = 0u;
            v189 = 0u;
            v190 = 0u;
            v191 = 0u;
            v29 = *v25;
            *&v30 = 0x100000001;
            *(&v30 + 1) = 0x100000001;
            *&v146[8] = v30;
            *&v143[8] = v30;
            *v147 = *(&v151 + 1);
            **&v143[32] = (*(&v154 + 2) * *(&v154 + 2));
            *&v175[48] = v154;
            v176 = v155;
            v177 = v156;
            v174 = v150[5];
            *v175 = v151;
            *&v175[16] = v152;
            *&v175[32] = v153;
            v170 = v150[1];
            v171 = v150[2];
            v172 = v150[3];
            v173 = v150[4];
            v168 = v149;
            v169 = v150[0];
            std::string::operator=(&v166, v26);
            data = v26[1].__r_.__value_.__l.__data_;
            UnprocessedMSRData = std::string::operator=(&v179, (v29 + 40));
            v180 = *(v29 + 64);
            v31 = *(v29 + 72);
            v32 = *(v29 + 104);
            v182 = *(v29 + 88);
            v183 = v32;
            v181 = v31;
            v33 = *(v29 + 120);
            v34 = *(v29 + 136);
            v35 = *(v29 + 168);
            v186 = *(v29 + 152);
            v187 = v35;
            v184 = v33;
            v185 = v34;
            v36 = *(v29 + 184);
            v37 = *(v29 + 200);
            v38 = *(v29 + 232);
            v190 = *(v29 + 216);
            v191 = v38;
            v188 = v36;
            v189 = v37;
            v39 = *(v23[3] + 96);
            if ((v39 - 3) < 2)
            {
              sub_1D0BC3810(&v195, &v166);
              v199 = *v23[3];
              v48 = v196;
              v49 = sub_1D0BCFAB8(v26);
              sub_1D0B751F4(v137, v49);
              sub_1D0BA01A8(&v195, v48, v137);
              if (v138 < 0)
              {
                operator delete(v137[0]);
              }

              v50 = *&v143[8];
              if ((*&v143[8] & 0x80000000) != 0)
              {
                __assert_rtn("Zeros", "cnmatrix.h", 3098, "nr >= 0");
              }

              *&v232[24] = 0x100000003;
              *v232 = &unk_1F4CDEB28;
              v51 = v234;
              v233 = v234;
              *&v232[8] = *&v143[8];
              *&v232[12] = 1;
              *&v232[16] = *&v143[8];
              *&v232[20] = *&v143[8];
              if (*&v143[8] > 3u)
              {
                bzero(v234, 16 * ((*&v143[8] - 1) >> 1));
                v57 = &v232[8 * v50 + 24];
                *v57 = 0;
                v57[1] = 0;
              }

              else if (*&v143[8])
              {
                bzero(v234, 8 * *&v143[8]);
              }

              if (*(v4 + 8560))
              {
                if (*(v4 + 14496) == 174)
                {
                  LOWORD(v235[0]) = 2;
                  LOBYTE(v194[0]) = 2;
                  cnprint::CNPrinter::Print(v235, v194, "MeasurementAccumulator::AddMeasurement() failed - Out of space,t_meas,%.3lf", *(&v199 + 1) + v199);
                }

                else if (*(v4 + 8561) == 1)
                {
                  if (cnprint::CNPrinter::GetLogLevel(v51) <= 1)
                  {
                    LOWORD(v235[0]) = 2;
                    LOBYTE(v194[0]) = 1;
                    cnprint::CNPrinter::Print(v235, v194, "MeasurementAccumulator::AddMeasurement() failed - Locked,t_meas,%.3lf", *(&v199 + 1) + v199);
                  }
                }

                else
                {
                  v58 = sub_1D0B7C8AC(&v199, (v4 + 8568));
                  if (!v58)
                  {
                    v235[0] = 0uLL;
                    sub_1D0BCA1D4(v235, &v195);
                  }

                  if (cnprint::CNPrinter::GetLogLevel(v58) <= 1)
                  {
                    LOWORD(v235[0]) = 2;
                    LOBYTE(v194[0]) = 1;
                    cnprint::CNPrinter::Print(v235, v194, "MeasurementAccumulator::AddMeasurement() failed - Measurement too old,t_meas,%.3lf,t_start,%.3lf", *(&v199 + 1) + v199, *(v4 + 8576) + *(v4 + 8568));
                  }
                }
              }

              else if (cnprint::CNPrinter::GetLogLevel(v51) <= 1)
              {
                LOWORD(v235[0]) = 2;
                LOBYTE(v194[0]) = 1;
                cnprint::CNPrinter::Print(v235, v194, "MeasurementAccumulator::AddMeasurement() failed - Not initialized,t_meas,%.3lf", *(&v199 + 1) + v199);
              }

              LOWORD(v235[0]) = 12;
              LOBYTE(v194[0]) = 4;
              *v232 = (*(*v5 + 16))(v5);
              *&v232[8] = v59;
              v60 = sub_1D0BCFAB8(v26);
              cnprint::CNLogFormatter::FormatGeneral(v135, v232, "Could not add measurement - average Doppler for %s", v60);
              v61 = (v4 + 2712);
              if (*(v4 + 2735) < 0)
              {
                v61 = *(v4 + 2712);
              }

              cnprint::CNPrinter::Print(v235, v194, "%s", v61);
              v195 = &unk_1F4CE4300;
              if (v198 < 0)
              {
                operator delete(v197);
              }

              v202 = &unk_1F4CDFE98;
              if (v204 < 0)
              {
                operator delete(v203);
              }

              v202 = &unk_1F4CD5F70;
              if (v201 < 0)
              {
                operator delete(v200);
              }
            }

            else if (v39 == 2)
            {
              sub_1D0C4E8C4(&v195, &v166);
              v199 = *v23[3];
              v52 = v196;
              v53 = sub_1D0BCFAB8(v26);
              sub_1D0B751F4(v139, v53);
              sub_1D0BA01A8(&v195, v52, v139);
              if (v140 < 0)
              {
                operator delete(v139[0]);
              }

              if (sub_1D0C4FD4C(v4 + 8560, &v199, v146, v143, &v195))
              {
                LOWORD(v235[0]) = 12;
                LOBYTE(v194[0]) = 4;
                *v232 = (*(*v5 + 16))(v5);
                *&v232[8] = v54;
                v55 = sub_1D0BCFAB8(v26);
                cnprint::CNLogFormatter::FormatGeneral(v135, v232, "Could not add measurement - Doppler for %s", v55);
                v56 = (v4 + 2712);
                if (*(v4 + 2735) < 0)
                {
                  v56 = *(v4 + 2712);
                }

                cnprint::CNPrinter::Print(v235, v194, "%s", v56);
              }

              UnprocessedMSRData = sub_1D0C504EC(&v195);
            }

            else if (v39 == 1)
            {
              sub_1D0BCF90C(&v195, &v166);
              v199 = *v23[3];
              v40 = v196;
              v41 = sub_1D0BCFAB8(v26);
              sub_1D0B751F4(__p, v41);
              sub_1D0BA01A8(&v195, v40, __p);
              if (v142 < 0)
              {
                operator delete(__p[0]);
              }

              v43 = *(*v25 + 312);
              v42 = *(*v25 + 320);
              if (v42)
              {
                atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v205 = v43;
              v44 = v206;
              v206 = v42;
              if (v44)
              {
                sub_1D0B7CAB8(v44);
              }

              if (sub_1D0BC9B98(v4 + 8560, &v199, v146, v143, &v195))
              {
                LOWORD(v235[0]) = 12;
                LOBYTE(v194[0]) = 4;
                *v232 = (*(*v5 + 16))(v5);
                *&v232[8] = v45;
                v46 = sub_1D0BCFAB8(v26);
                cnprint::CNLogFormatter::FormatGeneral(v135, v232, "Could not add measurement - PSR for %s", v46);
                v47 = (v4 + 2712);
                if (*(v4 + 2735) < 0)
                {
                  v47 = *(v4 + 2712);
                }

                cnprint::CNPrinter::Print(v235, v194, "%s", v47);
              }

              UnprocessedMSRData = sub_1D0BCA100(&v195);
            }

            v178 = &unk_1F4CDFE98;
            if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v179.__r_.__value_.__l.__data_);
            }

            v178 = &unk_1F4CD5F70;
            if (SHIBYTE(v166.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v166.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      v23 = v23[1];
    }

    while (v23 != &v158);
    if (v24)
    {
      v62 = 1;
      v63 = v24 / *(*(v4 + 1168) + 1472);
      do
      {
        UnprocessedMSRData = sub_1D0C51528(v4 + 8488);
        if (UnprocessedMSRData)
        {
          break;
        }
      }

      while (v63 > v62++);
    }
  }

  LogLevel = cnprint::CNPrinter::GetLogLevel(UnprocessedMSRData);
  if (LogLevel <= 1)
  {
    LOWORD(v149) = 12;
    v143[0] = 1;
    v166.__r_.__value_.__r.__words[0] = (*(*v5 + 16))(v5);
    v166.__r_.__value_.__l.__size_ = v66;
    raven::RavenSequentialGNSSMeasurementSelector::StringOfL1MeasurementCountsByConstellation((v4 + 5928), &v195);
    v67 = SHIBYTE(v197) >= 0 ? &v195 : v195;
    v68 = cnprint::CNLogFormatter::FormatGeneral(v4 + 2712, &v166, "%s", v67);
    v69 = *(v4 + 2735) >= 0 ? v68 : *(v4 + 2712);
    cnprint::CNPrinter::Print(&v149, v143, "%s", v69);
    if (SHIBYTE(v197) < 0)
    {
      operator delete(v195);
    }
  }

  if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
  {
    LOWORD(v149) = 12;
    v143[0] = 1;
    v166.__r_.__value_.__r.__words[0] = (*(*v5 + 16))(v5);
    v166.__r_.__value_.__l.__size_ = v70;
    raven::RavenSequentialGNSSMeasurementSelector::StringOfL5MeasurementCountsByConstellation(&v195, (v4 + 5928));
    v71 = SHIBYTE(v197) >= 0 ? &v195 : v195;
    v72 = cnprint::CNLogFormatter::FormatGeneral(v4 + 2712, &v166, "%s", v71);
    v73 = *(v4 + 2735) >= 0 ? v72 : *(v4 + 2712);
    cnprint::CNPrinter::Print(&v149, v143, "%s", v73);
    if (SHIBYTE(v197) < 0)
    {
      operator delete(v195);
    }
  }

  LOWORD(v149) = 12;
  v143[0] = 2;
  v166.__r_.__value_.__r.__words[0] = (*(*v5 + 16))(v5);
  v166.__r_.__value_.__l.__size_ = v74;
  raven::RavenSequentialGNSSMeasurementSelector::StringOfOverallMeasurementSelectionCounts(&v195, (v4 + 5928));
  if (SHIBYTE(v197) >= 0)
  {
    v75 = &v195;
  }

  else
  {
    v75 = v195;
  }

  cnprint::CNLogFormatter::FormatGeneral(v4 + 2712, &v166, "%s", v75);
  if (*(v4 + 2735) >= 0)
  {
    v76 = (v4 + 2712);
  }

  else
  {
    v76 = *(v4 + 2712);
  }

  cnprint::CNPrinter::Print(&v149, v143, "%s", v76);
  if (SHIBYTE(v197) < 0)
  {
    operator delete(v195);
  }

  LOWORD(v149) = 12;
  v143[0] = 2;
  v166.__r_.__value_.__r.__words[0] = (*(*v5 + 16))(v5);
  v166.__r_.__value_.__l.__size_ = v77;
  raven::RavenSequentialGNSSMeasurementSelector::StringOfOverallMeasurementSelectionCountsForRayTracedMeasurements(&v195, (v4 + 5928));
  if (SHIBYTE(v197) >= 0)
  {
    v78 = &v195;
  }

  else
  {
    v78 = v195;
  }

  cnprint::CNLogFormatter::FormatGeneral(v4 + 2712, &v166, "%s", v78);
  if (*(v4 + 2735) >= 0)
  {
    v79 = (v4 + 2712);
  }

  else
  {
    v79 = *(v4 + 2712);
  }

  cnprint::CNPrinter::Print(&v149, v143, "%s", v79);
  if (SHIBYTE(v197) < 0)
  {
    operator delete(v195);
  }

  v20 = 0;
LABEL_184:
  sub_1D0BCC0B4(&v158);
  return v20;
}

void sub_1D0BC1A74(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_1D0C537DC(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1D0BC1C3C(uint64_t a1)
{
  v2 = *(a1 + 352);
  if (v2)
  {
    *(a1 + 360) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 344);
  if (v3)
  {
    sub_1D0B7CAB8(v3);
  }

  *(a1 + 56) = &unk_1F4CDFE98;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *(a1 + 56) = &unk_1F4CD5F70;
  if (*(a1 + 47) < 0)
  {
    v4 = *(a1 + 24);

    operator delete(v4);
  }
}

BOOL sub_1D0BC1CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, unsigned __int8 *a6, __int128 *a7, __int128 *a8)
{
  if (COERCE__INT64(fabs(*(a2 + 8) + *a2)) > 0x7FEFFFFFFFFFFFFFLL || (v109 = 0, v110 = 0, sub_1D0B7C8AC(a2, &v109)))
  {
    LOWORD(v109) = 12;
    v112[0] = 4;
    v16 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "#MSR not initialized; invalid time");
LABEL_4:
    if (*(a1 + 231) >= 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = *(a1 + 208);
    }

    cnprint::CNPrinter::Print(&v109, v112, "%s", v17);
    return 0;
  }

  if ((*a1 & 1) == 0)
  {
    LOWORD(v109) = 12;
    v112[0] = 2;
    v16 = cnprint::CNLogFormatter::FormatWarning(a1 + 208, a2, "#MSR not initialized; not configured");
    goto LABEL_4;
  }

  v21 = *(a3 + 8);
  v20 = *(a3 + 12);
  if (v21 <= v20)
  {
    v22 = *(a3 + 12);
  }

  else
  {
    v22 = *(a3 + 8);
  }

  if (!v21 || !v20 || v22 != 8)
  {
    LOWORD(v109) = 12;
    v112[0] = 4;
    v16 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a2, "#MSR not initialized; state vector has incorrect size,nx,%u");
    goto LABEL_4;
  }

  if (*(a4 + 8) != 0x800000008)
  {
    LOWORD(v109) = 12;
    v112[0] = 4;
    v16 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a2, "#MSR not initialized; state covariance has incorrect size,rows,%u,cols,%u");
    goto LABEL_4;
  }

  for (i = 0; i != 8; ++i)
  {
    if ((*(*(a3 + 32) + 8 * i) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      LOWORD(v109) = 12;
      v112[0] = 4;
      v16 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a2, "#MSR not initialized; infinite value at index,%d");
      goto LABEL_4;
    }
  }

  v24 = *(a1 + 2192);
  if ((v24 & 1) == 0)
  {
    v25 = *(a2 + 16);
    *(a1 + 2096) = *a2;
    *(a1 + 2112) = v25;
    v26 = *(a2 + 32);
    v27 = *(a2 + 48);
    v28 = *(a2 + 80);
    *(a1 + 2160) = *(a2 + 64);
    *(a1 + 2176) = v28;
    *(a1 + 2128) = v26;
    *(a1 + 2144) = v27;
    *(a1 + 2192) = 1;
  }

  if (*(a1 + 2304))
  {
    v29 = v24 ^ 1;
  }

  else
  {
    sub_1D0BC2764(a1 + 2200, a3);
    v29 = 1;
  }

  if (*(a1 + 2416))
  {
    sub_1D0BC2764(a1 + 2312, a1 + 256);
  }

  else
  {
    sub_1D0BC2764(a1 + 2312, a3);
  }

  raven::RavenSequentialGNSSMeasurementSelector::ResetEpochSpecificMembers(a1);
  if (v29)
  {
    v30 = (a1 + 1512);
    sub_1D0B751F4(&v109, "\n");
    if ((v111 & 0x80u) == 0)
    {
      v31 = &v109;
    }

    else
    {
      v31 = v109;
    }

    if ((v111 & 0x80u) == 0)
    {
      v32 = v111;
    }

    else
    {
      v32 = v110;
    }

    v33 = sub_1D0BCD7C4((a1 + 1512), v31, v32);
    if ((v111 & 0x80u) == 0)
    {
      v34 = &v109;
    }

    else
    {
      v34 = v109;
    }

    if ((v111 & 0x80u) == 0)
    {
      v35 = v111;
    }

    else
    {
      v35 = v110;
    }

    v36 = sub_1D0BCD7C4(v33, v34, v35);
    if ((v111 & 0x80u) == 0)
    {
      v37 = &v109;
    }

    else
    {
      v37 = v109;
    }

    if ((v111 & 0x80u) == 0)
    {
      v38 = v111;
    }

    else
    {
      v38 = v110;
    }

    sub_1D0BCD7C4(v36, v37, v38);
    sub_1D0D8DF58((a1 + 1512));
    v39 = *v30;
    *(v30 + *(*v30 - 24) + 16) = 3;
    *(v30 + *(v39 - 24) + 24) = 27;
    v40 = sub_1D0BCD7C4((a1 + 1512), "Configured Start Time    : ", 27);
    *(v40 + *(*v40 - 24) + 24) = 15;
    if ((*(a1 + 2192) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    v41 = MEMORY[0x1D387E990](*(a1 + 2104) + *(a1 + 2096));
    *(v41 + *(*v41 - 24) + 24) = 15;
    if ((*(a1 + 2192) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    v42 = MEMORY[0x1D387E990](*(a1 + 2128) + *(a1 + 2120));
    if ((v111 & 0x80u) == 0)
    {
      v43 = &v109;
    }

    else
    {
      v43 = v109;
    }

    if ((v111 & 0x80u) == 0)
    {
      v44 = v111;
    }

    else
    {
      v44 = v110;
    }

    v45 = sub_1D0BCD7C4(v42, v43, v44);
    if ((v111 & 0x80u) == 0)
    {
      v46 = &v109;
    }

    else
    {
      v46 = v109;
    }

    if ((v111 & 0x80u) == 0)
    {
      v47 = v111;
    }

    else
    {
      v47 = v110;
    }

    sub_1D0BCD7C4(v45, v46, v47);
    v48 = *v30;
    *(v30 + *(*v30 - 24) + 16) = 3;
    *(v30 + *(v48 - 24) + 24) = 27;
    v49 = sub_1D0BCD7C4((a1 + 1512), "Start PVT XYZ [m or m/s] : ", 27);
    *(v49 + *(*v49 - 24) + 24) = 15;
    if ((*(a1 + 2304) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    v50 = MEMORY[0x1D387E990](**(a1 + 2232));
    *(v50 + *(*v50 - 24) + 24) = 15;
    if ((*(a1 + 2304) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    v51 = MEMORY[0x1D387E990](*(*(a1 + 2232) + 8));
    *(v51 + *(*v51 - 24) + 24) = 15;
    if ((*(a1 + 2304) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    v52 = MEMORY[0x1D387E990](*(*(a1 + 2232) + 16));
    *(v52 + *(*v52 - 24) + 24) = 15;
    if ((*(a1 + 2304) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    v53 = MEMORY[0x1D387E990](*(*(a1 + 2232) + 24));
    *(v53 + *(*v53 - 24) + 24) = 15;
    if ((*(a1 + 2304) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    v54 = MEMORY[0x1D387E990](*(*(a1 + 2232) + 32));
    *(v54 + *(*v54 - 24) + 24) = 15;
    if ((*(a1 + 2304) & 1) == 0)
    {
      sub_1D0C42F28();
    }

    v55 = MEMORY[0x1D387E990](*(*(a1 + 2232) + 40));
    if ((v111 & 0x80u) == 0)
    {
      v56 = &v109;
    }

    else
    {
      v56 = v109;
    }

    if ((v111 & 0x80u) == 0)
    {
      v57 = v111;
    }

    else
    {
      v57 = v110;
    }

    v58 = sub_1D0BCD7C4(v55, v56, v57);
    if ((v111 & 0x80u) == 0)
    {
      v59 = &v109;
    }

    else
    {
      v59 = v109;
    }

    if ((v111 & 0x80u) == 0)
    {
      v60 = v111;
    }

    else
    {
      v60 = v110;
    }

    v61 = sub_1D0BCD7C4(v58, v59, v60);
    if ((v111 & 0x80u) == 0)
    {
      v62 = &v109;
    }

    else
    {
      v62 = v109;
    }

    if ((v111 & 0x80u) == 0)
    {
      v63 = v111;
    }

    else
    {
      v63 = v110;
    }

    sub_1D0BCD7C4(v61, v62, v63);
    if (v111 < 0)
    {
      operator delete(v109);
    }
  }

  sub_1D0B894B0(a1 + 360, a4);
  v64 = 0;
  v65 = *(a1 + 380);
  v66 = *(a1 + 392);
  v67 = v65 + 1;
  v68 = 8 * v65;
  v69 = v66;
  while (2)
  {
    v70 = 0;
    v71 = v69;
    v72 = v69;
    do
    {
      v73 = *v71;
      if ((*v71 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
LABEL_104:
        LOWORD(v109) = 12;
        v112[0] = 4;
        v16 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a2, "#MSR not initialized; infinite input covariance,i,%u,j,%u");
        goto LABEL_4;
      }

      if (!v70 && v66[v67 * v64] <= 0.0)
      {
        LOWORD(v109) = 12;
        v112[0] = 4;
        v16 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a2, "#MSR not initialized; non-positive variance,i,%u");
        goto LABEL_4;
      }

      v74 = *v72;
      if ((*v72 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
      {
        goto LABEL_104;
      }

      if (vabdd_f64(v73, v74) > 0.000000015)
      {
        LOWORD(v109) = 12;
        v112[0] = 4;
        v16 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a2, "#MSR not initialized; covariance not symmetric,i,%u,j,%u,Pij,%.3e,Pji,%.3e");
        goto LABEL_4;
      }

      v75 = (v73 + v74) * 0.5;
      *v71 = v75;
      *v72++ = v75;
      --v70;
      v71 = (v71 + v68);
    }

    while (v64 - 8 != v70);
    ++v64;
    v69 = (v69 + v68 + 8);
    if (v64 != 8)
    {
      continue;
    }

    break;
  }

  v112[0] = 0;
  sub_1D0BDFE04(a1 + 360, v112, &v108);
  v108 = &unk_1F4CD5E28;
  v18 = v112[0];
  if (v112[0])
  {
    v76 = *a6;
    *(a1 + 1016) = v76;
    v77 = *a5;
    *(a1 + 1040) = *(a5 + 1);
    *(a1 + 1024) = v77;
    v78 = *(a5 + 2);
    v79 = *(a5 + 3);
    v80 = *(a5 + 4);
    *(a1 + 1104) = *(a5 + 10);
    *(a1 + 1088) = v80;
    *(a1 + 1072) = v79;
    *(a1 + 1056) = v78;
    v81 = *a7;
    v82 = a7[1];
    *(a1 + 1144) = *(a7 + 4);
    *(a1 + 1112) = v81;
    *(a1 + 1128) = v82;
    v83 = *a8;
    v84 = a8[1];
    *(a1 + 1184) = *(a8 + 4);
    *(a1 + 1168) = v84;
    *(a1 + 1152) = v83;
    if ((v76 - 3) > 1 || (v85 = *(a1 + 1024), v85 > 9))
    {
      LOBYTE(v86) = 0;
    }

    else
    {
      v86 = 0xCu >> v85;
    }

    *(a1 + 1272) = v86 & 1;
    v87 = *(a2 + 16);
    *(a1 + 96) = *a2;
    *(a1 + 112) = v87;
    v88 = *(a2 + 32);
    v89 = *(a2 + 48);
    v90 = *(a2 + 80);
    *(a1 + 160) = *(a2 + 64);
    *(a1 + 176) = v90;
    *(a1 + 128) = v88;
    *(a1 + 144) = v89;
    sub_1D0B894B0(a1 + 256, a3);
    v91 = *(a1 + 192);
    v92 = *(v91 + 1656);
    *(a1 + 1328) = *(v91 + 1672);
    *(a1 + 1312) = v92;
    v93 = *(v91 + 1688);
    *(a1 + 1296) = *(v91 + 1704);
    *(a1 + 1280) = v93;
    v94 = *a6;
    if (v94 > 6)
    {
      goto LABEL_126;
    }

    if (((1 << v94) & 0x26) != 0)
    {
      v95 = *a5;
      v96 = v95 - 2;
      if (v95 - 2) < 5 && ((0x1Bu >> v96))
      {
        v97 = &unk_1D0E87938;
        v98 = &unk_1D0E87910;
        goto LABEL_125;
      }
    }

    else if (((1 << v94) & 0x18) != 0)
    {
      v95 = *a5;
      v96 = v95 - 2;
      if (v95 - 2) < 5 && ((0x1Bu >> v96))
      {
        v97 = &unk_1D0E87988;
        v98 = &unk_1D0E87960;
LABEL_125:
        v101 = v97[v96];
        v102 = (v91 + v98[v96]);
        v103 = v102[1];
        *(a1 + 1312) = *v102;
        *(a1 + 1328) = v103;
        v104 = (v91 + v101);
        v105 = v104[1];
        *(a1 + 1280) = *v104;
        *(a1 + 1296) = v105;
        goto LABEL_126;
      }
    }

    else
    {
      if (v94 != 6)
      {
LABEL_126:
        v95 = *a5;
        goto LABEL_127;
      }

      v95 = *a5;
      v96 = v95 - 2;
      if (v95 - 2) < 5 && ((0x1Bu >> v96))
      {
        v97 = &unk_1D0E879D8;
        v98 = &unk_1D0E879B0;
        goto LABEL_125;
      }
    }

LABEL_127:
    if ((v95 - 2) > 4)
    {
      v106 = 2176;
    }

    else
    {
      v106 = qword_1D0E87A00[(v95 - 2)];
    }

    *(a1 + 1192) = *(v91 + v106) * *(v91 + v106);
    *(a1 + 40) = ((v95 - 4) & 0xFA) == 0;
    *(a1 + 1) = 1;
    return v18;
  }

  LOWORD(v109) = 12;
  v107 = 4;
  v99 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a2, "#MSR not initialized; covariance not positive definite");
  if (*(a1 + 231) >= 0)
  {
    v100 = v99;
  }

  else
  {
    v100 = *(a1 + 208);
  }

  cnprint::CNPrinter::Print(&v109, &v107, "%s", v100);
  return v18;
}

void sub_1D0BC2720(_Unwind_Exception *exception_object)
{
  if (*(v2 - 97) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0BC2764(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 104) == 1)
  {
    sub_1D0B894B0(a1, a2);
  }

  else
  {
    sub_1D0BA1824(a1, a2);
    *(a1 + 104) = 1;
  }

  return a1;
}

void sub_1D0BC27A8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1D0BDFDC8((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_1D0BC27EC(uint64_t a1)
{
  *a1 = &unk_1F4CEAB60;
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

uint64_t *sub_1D0BC2944(uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  sub_1D0BC2AB0((a1 + 1), 16);
  return a1;
}

void sub_1D0BC2A88(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1D387EBF0](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0BC2AB0(uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1D387EB80](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  sub_1D0BC2B6C(a1);
  return a1;
}

void sub_1D0BC2B44(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1D0BC2B6C(uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t sub_1D0BC2C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1D0C537F0();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1D0BC2E40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1D0BC2E5C@<X0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_1D0BCD96C(a2);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D0C537F0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  *(a1 + v5) = 0;
  return result;
}

uint64_t *sub_1D0BC2F00(uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  sub_1D0BC2AB0((a1 + 3), 24);
  return a1;
}

void sub_1D0BC317C(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1D387EBF0](v1);
  _Unwind_Resume(a1);
}

uint64_t cnnavigation::GNSSPseudorange(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, double *a7, int a8, int8x16_t a9, int8x16_t a10, float64x2_t *a11)
{
  v11 = *a9.i64;
  if (a9.i64[0] >= 0 && ((a9.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (a9.i64[0] - 1) <= 0xFFFFFFFFFFFFELL)
  {
    v20 = *a10.i64;
    v23 = 0;
    while ((*(a3 + v23) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v23 += 8;
      if (v23 == 24)
      {
        if ((a10.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          return 0xFFFFFFFFLL;
        }

        v62 = 0;
        v63 = 0;
        a9.i64[0] = a10.i64[0];
        *v25.i64 = CNTimeSpan::SetTimeSpan(&v62, 0, a9, a10);
        v61[0] = CNTimeSpan::operator-(a1, &v62, v25, v26);
        v61[1] = v27;
        v59 = 0.0;
        v60 = 0.0;
        v29.i64[1] = 0;
        v57 = 0u;
        v58 = 0u;
        if (a8)
        {
          *v29.i64 = v11;
          result = cnnavigation::GNSSTimeOfFlight(v61, a2, a3, a4, 1, a5, 1, a6, v29, v28, &v60, 1u, &v57);
          if (!result)
          {
            v56 = 0.0;
            v32 = v60;
            v53 = 0;
            v54 = 0;
            *v30.i64 = v60;
            *v33.i64 = CNTimeSpan::SetTimeSpan(&v53, 0, v30, v31);
            v62 = CNTimeSpan::operator-(v61, &v53, v33, v34);
            v63 = v35;
            result = (*(*a4 + 96))(a4, &v62, a2, &v56, 1, v55, v11);
            if (!result)
            {
              *a7 = (v32 - v56 + v20) * 299792458.0;
              v36 = v55[0];
              v37 = v59;
              v38 = v59 * v55[0];
              v39 = v57.f64[0];
              v40.f64[0] = v36 - v57.f64[0] * v36;
              v40.f64[1] = v55[1];
              v41 = vdupq_n_s64(0xC1B1DE784A000000);
              v42 = vmulq_f64(v40, v41);
              v43 = vmulq_f64(vmulq_n_f64(v58, -v55[0]), v41);
              v44 = vdupq_n_s64(0x41B1DE784A000000uLL);
              v45 = vmlaq_f64(v43, v44, v58);
              *a11 = vmlaq_f64(v42, v44, v57);
              a11[1] = v45;
              a11[2].f64[0] = v38 * 299792458.0 + v37 * 299792458.0;
              a11[2].f64[1] = v36 * 299792458.0 + v39 * -299792458.0 + 299792458.0;
            }
          }
        }

        else
        {
          *v29.i64 = v11;
          result = cnnavigation::GNSSTimeOfFlight(v61, a2, a3, a4, 1, a5, 1, a6, v29, v28, &v60, 0, &v62);
          if (!result)
          {
            v56 = 0.0;
            v48 = v60;
            v52[0] = 0;
            v52[1] = 0;
            *v46.i64 = v60;
            *v49.i64 = CNTimeSpan::SetTimeSpan(v52, 0, v46, v47);
            v53 = CNTimeSpan::operator-(v61, v52, v49, v50);
            v54 = v51;
            result = (*(*a4 + 96))(a4, &v53, a2, &v56, 0, &v62, v11);
            if (!result)
            {
              *a7 = (v48 - v56 + v20) * 299792458.0;
            }
          }
        }

        return result;
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t cnnavigation::LLAToECEF(double *a1, int a2, double *a3, int a4, uint64_t a5)
{
  v9 = a1[1];
  v10 = a1[2];
  v11 = __sincos_stret(*a1);
  v12 = __sincos_stret(v9);
  v13 = v11.__sinval * v12.__cosval;
  v14 = v11.__cosval * v12.__sinval;
  v15 = v11.__cosval * v12.__cosval;
  if (a2 == 1)
  {
    v19 = v11.__sinval * -0.00669437999 * v11.__sinval + 1.0;
    v20 = 6378137.0 / sqrt(v19);
    v21 = v10 + v20;
    v22 = v15 * (v10 + v20);
    *a3 = v22;
    a3[1] = v14 * v21;
    v23 = v21 + v20 * -0.00669437999;
    a3[2] = v11.__sinval * v23;
    if (a4)
    {
      v24 = v11.__cosval * (v11.__sinval * 42697.6727) * pow(v19, -1.5);
      *a5 = v24 * v15 - v21 * v13;
      *(a5 + 8) = -(v21 * v14);
      *(a5 + 16) = v15;
      *(a5 + 24) = v24 * v14 - v21 * (v11.__sinval * v12.__sinval);
      *(a5 + 32) = v22;
      *(a5 + 40) = v14;
      v18 = v11.__cosval * v23 + v24 * 0.99330562 * v11.__sinval;
      goto LABEL_7;
    }

    return 0;
  }

  if (!a2)
  {
    v16 = v10 + 6371009.0;
    v17 = (v10 + 6371009.0) * v15;
    *a3 = v17;
    a3[1] = (v10 + 6371009.0) * v14;
    a3[2] = v11.__sinval * (v10 + 6371009.0);
    if (a4)
    {
      *a5 = -(v16 * v13);
      *(a5 + 8) = -(v16 * v14);
      *(a5 + 16) = v15;
      *(a5 + 24) = -(v16 * (v11.__sinval * v12.__sinval));
      *(a5 + 32) = v17;
      *(a5 + 40) = v14;
      v18 = v11.__cosval * v16;
LABEL_7:
      result = 0;
      *(a5 + 48) = v18;
      *(a5 + 56) = 0;
      *(a5 + 64) = v11.__sinval;
      return result;
    }

    return 0;
  }

  return 2;
}

uint64_t cnnavigation::NullIonosphereModel::GetIonosphericDelay(cnnavigation::NullIonosphereModel *this, int a2, double a3, const double *a4, const double *a5, double a6, double *a7)
{
  result = 0xFFFFFFFFLL;
  if (a4)
  {
    if (a5)
    {
      result = 0;
      *a7 = 0.0;
    }
  }

  return result;
}

uint64_t cnnavigation::NullTroposphereModel::GetTroposphericDelay(cnnavigation::NullTroposphereModel *this, int a2, double a3, const double *a4, const double *a5, double *a6)
{
  result = 0xFFFFFFFFLL;
  if (a4)
  {
    if (a5)
    {
      result = 0;
      *a6 = 0.0;
    }
  }

  return result;
}

double cnnavigation::NullIonosphereModel::GetIonosphericDelay(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _OWORD *a6)
{
  if (a3)
  {
    if (a4)
    {
      *a5 = 0;
      result = 0.0;
      a6[2] = 0u;
      a6[3] = 0u;
      *a6 = 0u;
      a6[1] = 0u;
    }
  }

  return result;
}

double cnnavigation::NullTroposphereModel::GetTroposphericDelay(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a3)
  {
    if (a4)
    {
      *a5 = 0;
      *(a6 + 48) = 0;
      result = 0.0;
      *(a6 + 16) = 0u;
      *(a6 + 32) = 0u;
      *a6 = 0u;
    }
  }

  return result;
}

uint64_t sub_1D0BC36F8(uint64_t a1, double *a2, uint64_t a3, double *a4, uint64_t a5, double *a6)
{
  if (!*(a1 + 32))
  {
    return 0xFFFFFFFFLL;
  }

  if (sub_1D0B7C8AC(a2, (a1 + 40)))
  {
    return 0xFFFFFFFFLL;
  }

  if (sub_1D0B7CF88(a2, (a1 + 56)))
  {
    return 0xFFFFFFFFLL;
  }

  v12 = CNTimeSpan::operator-(a2, (a1 + 72), v10, v11);
  v14 = v13 + v12;
  if (fabs(v14) > 2592000.0)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = 0;
  *a4 = 0.0;
  v16 = a1 + 184;
  v17 = 1.0;
  v18 = 0.0;
  v19 = 32;
  *a6 = 0.0;
  a6[1] = 0.0;
  do
  {
    *a4 = *a4 + *(v16 + 8 * v15) * v17;
    v20 = *a6 + *(v16 + 8 * v15) * v15 * v18;
    *a6 = v20;
    v18 = v17;
    v17 = v14 * v17;
    ++v15;
    v19 -= 8;
  }

  while (v19);
  if ((*a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_1D0BC3810(uint64_t a1, __int128 *a2)
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
  sub_1D0BA002C(a1, 16);
  *a1 = &unk_1F4CEC2E8;
  return a1;
}

void sub_1D0BC396C(_Unwind_Exception *exception_object)
{
  *(v1 + 296) = &unk_1F4CD5F70;
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  _Unwind_Resume(exception_object);
}

void *sub_1D0BC39B4(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1D0C537F0();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void raven::RavenSequentialGNSSMeasurementSelector::ComputeAndStoreAprioriPseudorangeInnovationStatistics(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1))
  {
    if (*(a1 + 32) == 1)
    {
      *(a1 + 32) = 0;
    }

    __p = 0;
    v25 = 0;
    v26 = 0;
    v21[0] = 0;
    v22 = 0;
    v23 = 1;
    sub_1D0BC3E34(&__p);
    v27 = 1;
    v5 = *(a2 + 8);
    if (v5 == a2)
    {
LABEL_9:
      if (v21[0] == 1)
      {
        v7 = __p;
        if ((v25 - __p) < 0x21)
        {
          goto LABEL_22;
        }

        v4.n128_u64[0] = 25.0;
        sub_1D0BC4124(v21, v4);
        v9 = v8;
        v10.n128_u64[0] = 0x4049000000000000;
        sub_1D0BC4124(v21, v10);
        v12 = v11;
        v13.n128_u64[0] = 0x4052C00000000000;
        sub_1D0BC4124(v21, v13);
        v15 = v14;
        if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&v14 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v21[0] = 0;
          v22 = 0;
          v23 = 1;
          v25 = __p;
          sub_1D0BC3E34(&__p);
          v27 = 1;
          LOWORD(v20) = 12;
          v19 = 4;
          v17 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR pseudorange innovation quartiles invalid,%.1lf,%.1lf,%.1lf", v9, v12, v15);
          if (*(a1 + 231) >= 0)
          {
            v18 = v17;
          }

          else
          {
            v18 = *(a1 + 208);
          }

          cnprint::CNPrinter::Print(&v20, &v19, "%s", v18);
        }

        else
        {
          v16 = *(a1 + 32);
          *(a1 + 8) = v9;
          *(a1 + 16) = v12;
          *(a1 + 24) = v14;
          if ((v16 & 1) == 0)
          {
            *(a1 + 32) = 1;
          }
        }
      }
    }

    else
    {
      while (1)
      {
        v6 = *(v5 + 24);
        if (*(v6 + 96) == 1 && *(v5 + 160) == 1)
        {
          v20 = *(v6 + 120) - *(v5 + 48);
          if (sub_1D0BC3F08(v21, &v20, 1.0 / (*(v6 + 168) * *(v6 + 168))))
          {
            break;
          }
        }

        v5 = *(v5 + 8);
        if (v5 == a2)
        {
          goto LABEL_9;
        }
      }

      v21[0] = 0;
      v22 = 0;
      v23 = 1;
      v25 = __p;
      sub_1D0BC3E34(&__p);
      v27 = 1;
    }

    v7 = __p;
LABEL_22:
    if (v7)
    {
      v25 = v7;
      operator delete(v7);
    }
  }
}

void sub_1D0BC3CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::CheckForAndHandleGrossClockOffsetError(uint64_t a1, uint64_t a2)
{
  raven::RavenSequentialGNSSMeasurementSelector::ComputeAndStoreAprioriPseudorangeInnovationStatistics(a1, a2);
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = *(a1 + 8);
  if (vabdd_f64(v3, v4) <= 0.000000015)
  {
    return 0;
  }

  v5 = v3 - v4;
  v6 = *(a1 + 16);
  v7 = *(*(a1 + 392) + 48 * *(a1 + 380) + 48);
  v8 = sqrt((v3 - v6 + v5 * 0.2413) * (v3 - v6 + v5 * 0.2413) + v7 * 89875.5179);
  if (v6 >= 0.0)
  {
    if (v6 + v8 * -5.0 <= 0.0)
    {
      return 1;
    }
  }

  else if (v6 + v8 * 5.0 >= 0.0)
  {
    return 1;
  }

  v11 = v6 * 0.00333564095;
  *(a1 + 72) = v6 * 0.00333564095;
  v9 = 1;
  *(a1 + 80) = 1;
  *(*(a1 + 944) + 48) = v6 * 0.00333564095 + *(*(a1 + 944) + 48);
  raven::RavenSequentialGNSSMeasurementSelector::LogClockOffsetCorrection(a1, v6 * 0.00333564095);
  v15 = 12;
  v14 = 3;
  v12 = cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR gross clock error detected,%.3lf us,sigma,%.3lf us", v11, sqrt(v7));
  if (*(a1 + 231) >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = *(a1 + 208);
  }

  cnprint::CNPrinter::Print(&v15, &v14, "%s", v13);
  return v9;
}

void sub_1D0BC3E34(char **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      sub_1D0BC40DC(a1, v4 >> 4);
    }

    v6 = 0;
    if (v3 >> 4)
    {
      v7 = (16 * (v4 >> 4));
      v8 = (a1[1] - v2);
      v9 = (v7 - v8);
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t sub_1D0BC3F08(uint64_t a1, uint64_t *a2, double a3)
{
  if ((*a1 & 1) == 0)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 32) = *(a1 + 24);
    sub_1D0BC3E34((a1 + 24));
    *(a1 + 48) = 1;
  }

  v6 = (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v7 = ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (a3 >= 0.0)
  {
    v7 = 0;
    v6 = 0;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v6 = 1;
  }

  v8 = (*&a3 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v6;
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v8 = 1;
  }

  result = 0xFFFFFFFFLL;
  if (((v8 | v7) & 1) == 0)
  {
    v10 = *(a1 + 24);
    *(a1 + 8) = *(a1 + 8) + a3;
    v11 = *a2;
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    if (v13 >= v12)
    {
      v15 = (v13 - v10) >> 4;
      v16 = v15 + 1;
      if ((v15 + 1) >> 60)
      {
        sub_1D0C5663C();
      }

      v17 = v12 - v10;
      if (v17 >> 3 > v16)
      {
        v16 = v17 >> 3;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF0)
      {
        v18 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        sub_1D0BC40DC(a1 + 24, v18);
      }

      v19 = (v13 - v10) >> 4;
      v20 = 16 * v15;
      *v20 = a3;
      *(v20 + 8) = v11;
      v14 = 16 * v15 + 16;
      v21 = 16 * v15 - 16 * v19;
      memcpy((v20 - 16 * v19), v10, v13 - v10);
      v22 = *(a1 + 24);
      *(a1 + 24) = v21;
      *(a1 + 32) = v14;
      *(a1 + 40) = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    else
    {
      *v13 = a3;
      *(v13 + 1) = v11;
      v14 = (v13 + 16);
    }

    *(a1 + 32) = v14;
    if (v13 != v10)
    {
      v23 = *(a1 + 16);
      if (vabdd_f64(**(a1 + 24), a3) >= 2.22044605e-16)
      {
        v23 = 0;
      }

      *(a1 + 16) = v23;
      *(a1 + 48) = 0;
    }

    result = 0;
    *a1 = 1;
  }

  return result;
}

void sub_1D0BC40DC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0BC4124(uint64_t result, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v3 = (a2.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) < 0x7FF0000000000000;
  v4 = a2.n128_f64[0] < 0.0;
  a2.n128_u64[0] = 0x4059000000000000;
  if (!v4 && v2 <= 100.0 && v3 && *result == 1)
  {
    v8 = *(result + 24);
    v9 = *(result + 32);
    if ((v9 - v8) != 16)
    {
      v10 = (v9 - v8) >> 4;
      if ((*(result + 48) & 1) == 0)
      {
        v11 = 126 - 2 * __clz(v10);
        if (v9 == v8)
        {
          v12 = 0;
        }

        else
        {
          v12 = v11;
        }

        sub_1D0BD154C(v8, v9, &v25, v12, 1, a2);
        *(result + 48) = 1;
      }

      v13 = v2 / 100.0;
      if (*(result + 16) == 1)
      {
        v14 = v10 + 1.0;
        if (v13 > 1.0 / v14 && v13 < v10 / v14)
        {
          v15 = vcvtmd_u64_f64(v13 * v14);
          v16 = (*(result + 32) - *(result + 24)) >> 4;
          if (v16 <= v15 - 1 || v16 <= v15)
          {
            sub_1D0DCE19C();
          }
        }
      }

      else
      {
        v17 = *(result + 8);
        v18 = *(result + 24);
        v19 = *v18 * 0.5 / v17;
        if (v13 > v19)
        {
          v20 = *(result + 32);
          if (v13 < *(v20 - 2) * -0.5 / v17 + 1.0 && v18 != v20)
          {
            v21 = v19 + 0.0;
            v22 = v18 + 2;
            do
            {
              v23 = v22;
              if (v22 == v20)
              {
                break;
              }

              v24 = v21 + v19;
              v22 += 2;
              v19 = *v23 * 0.5 / v17;
              v21 = v24 + v19;
            }

            while (v21 < v13);
          }
        }
      }
    }
  }
}

void *sub_1D0BC437C(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = *(v4 + 3);
        v6 = *(v4 + 1);
        v4 = v2;
        if (v5 < v6)
        {
          v7 = *v2;
          v8 = v3;
          while (1)
          {
            v9 = result + v8;
            v10 = *(result + v8 + 8);
            *(v9 + 2) = *(result + v8);
            *(v9 + 3) = v10;
            if (!v8)
            {
              break;
            }

            v8 -= 16;
            if (v5 >= *(v9 - 1))
            {
              v11 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v7;
          v11[1] = v5;
        }

        v2 = v4 + 2;
        v3 += 16;
      }

      while (v4 + 2 != a2);
    }
  }

  return result;
}

void raven::RavenSequentialGNSSMeasurementSelector::EnsureFirstPseudorangeAprioriInnovationIsAnInlier(uint64_t a1, uint64_t ***a2)
{
  if (*(a1 + 32) == 1)
  {
    v5 = *a2;
    v6 = a2[1];
    if (*a2 != v6)
    {
      v29 = v2;
      v30 = v3;
      v31 = v4;
      v8 = 0;
      v9 = 0;
      v10 = *(a1 + 24);
      v11 = *(a1 + 8);
      v12 = v10 - v11;
      v13 = v11 - (v10 - v11);
      v14 = v10 + v12;
      while (2)
      {
        v15 = *v5;
        for (i = (*v5)[1]; i != v15; i = *(i + 8))
        {
          v17 = *(i + 24);
          if (*(v17 + 96) == 1)
          {
            if (*(i + 160) == 1)
            {
              v18 = *(v17 + 120) - *(i + 48);
              if (v18 >= v13 && v18 <= v14)
              {
                if (v8)
                {
                  if (v2 != i)
                  {
                    v20 = *(i + 8);
                    if (v20 != v2)
                    {
                      v21 = *i;
                      *(v21 + 8) = v20;
                      *v20 = v21;
                      v22 = *v2;
                      *(v22 + 8) = i;
                      *i = v22;
                      *v2 = i;
                      *(i + 8) = v2;
                      --v15[2];
                      ++v9[2];
                    }
                  }

                  v23 = raven::RavenSequentialGNSSMeasurementSelector::LogChangePseudorangeReordering(a1, *(i + 16), v2[2]);
                  if (cnprint::CNPrinter::GetLogLevel(v23) <= 1)
                  {
                    v28 = 12;
                    v27 = 1;
                    v24 = sub_1D0BCFAB8(v2[2]);
                    v25 = sub_1D0BCFAB8(*(i + 16));
                    cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR replacing %s with %s as first pseudorange", v24, v25);
                    if (*(a1 + 231) >= 0)
                    {
                      v26 = (a1 + 208);
                    }

                    else
                    {
                      v26 = *(a1 + 208);
                    }

                    cnprint::CNPrinter::Print(&v28, &v27, "%s", v26);
                  }
                }

                return;
              }
            }

            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v2 = i;
            }

            v8 = 1;
          }
        }

        if (++v5 != v6)
        {
          continue;
        }

        break;
      }
    }
  }
}

void *raven::RavenSequentialGNSSMeasurementSelector::TestInnovationsAndUpdateEstimator@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, _BYTE *a4@<X8>)
{
  v125 = &v125;
  v126 = &v125;
  v127 = 0;
  v8 = a2[1];
  if (v8 == a2)
  {
    goto LABEL_162;
  }

  v116 = a4;
  v11 = a1 + 208;
  v119 = (a1 + 1288);
  v120 = (a1 + 1280);
  v117 = (a1 + 1304);
  v118 = (a1 + 1296);
  v114 = (a1 + 1320);
  v115 = (a1 + 1312);
  v112 = (a1 + 1336);
  v113 = (a1 + 1328);
  do
  {
    v12 = *(v8 + 8);
    if ((*(v8 + 160) & 1) == 0)
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v124) = 4;
      v22 = sub_1D0BCFAB8(*(v8 + 16));
      v23 = *(*(v8 + 24) + 96) - 1;
      v24 = "UnknownType";
      if (v23 <= 4)
      {
        v24 = off_1E83D8358[v23];
      }

      cnprint::CNLogFormatter::FormatGeneral(v11, a1 + 96, "#MSR no measurement function data for %s %s", v22, v24);
      if (*(a1 + 231) >= 0)
      {
        v25 = v11;
      }

      else
      {
        v25 = *(a1 + 208);
      }

      goto LABEL_16;
    }

    if ((*(v8 + 192) & 0xFFFFFFFE) == 2)
    {
      goto LABEL_17;
    }

    v13 = *(a1 + 1504) + 1;
    *(a1 + 1504) = v13;
    *(v8 + 226) = v13;
    ShouldMeasurementBeUsedToUpdateEstimator = raven::RavenSequentialGNSSMeasurementSelector::ShouldMeasurementBeUsedToUpdateEstimator(a1, v8 + 16);
    if (!ShouldMeasurementBeUsedToUpdateEstimator)
    {
      if (!cnprint::CNPrinter::GetLogLevel(ShouldMeasurementBeUsedToUpdateEstimator))
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v124) = 0;
        v26 = sub_1D0BCFAB8(*(v8 + 16));
        v27 = *(*(v8 + 24) + 96) - 1;
        v28 = "UnknownType";
        if (v27 <= 4)
        {
          v28 = off_1E83D8358[v27];
        }

        cnprint::CNLogFormatter::FormatGeneral(v11, a1 + 96, "#MSR should not use %s %s", v26, v28);
        if (*(a1 + 231) >= 0)
        {
          v29 = v11;
        }

        else
        {
          v29 = *(a1 + 208);
        }

        cnprint::CNPrinter::Print(__p, &v124, "%s", v29);
      }

      *(v8 + 192) = 0x200000002;
      goto LABEL_17;
    }

    raven::RavenSequentialGNSSMeasurementSelector::ComputeInnovationData(a1, *(v8 + 24), v8 + 48, __p);
    *(v8 + 168) = *__p;
    v15 = __p[2];
    *(v8 + 184) = __p[2];
    if ((v15 & 1) == 0)
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v124) = 4;
      v30 = sub_1D0BCFAB8(*(v8 + 16));
      v31 = *(*(v8 + 24) + 96) - 1;
      v32 = "UnknownType";
      if (v31 <= 4)
      {
        v32 = off_1E83D8358[v31];
      }

      cnprint::CNLogFormatter::FormatGeneral(v11, a1 + 96, "#MSR could not compute innovations from %s %s", v30, v32);
      if (*(a1 + 231) >= 0)
      {
        v25 = v11;
      }

      else
      {
        v25 = *(a1 + 208);
      }

      goto LABEL_16;
    }

    updated = raven::RavenSequentialGNSSMeasurementSelector::UpdateTIVsForMeasurement(a1, v8 + 16);
    v17 = *(*(v8 + 24) + 96);
    if (v17 <= 1)
    {
      if (!v17)
      {
LABEL_44:
        if (!cnprint::CNPrinter::GetLogLevel(updated))
        {
          LOWORD(__p[0]) = 12;
          LOBYTE(v124) = 0;
          v41 = sub_1D0BCFAB8(*(v8 + 16));
          v42 = *(*(v8 + 24) + 96);
          v43 = "UnknownType";
          if ((v42 - 1) <= 4)
          {
            v43 = off_1E83D8358[v42 - 1];
          }

          cnprint::CNLogFormatter::FormatGeneral(v11, a1 + 96, "#MSR %s %s invalid measurement type, %d", v41, v43, v42);
          if (*(a1 + 231) >= 0)
          {
            v25 = v11;
          }

          else
          {
            v25 = *(a1 + 208);
          }

          goto LABEL_16;
        }

        goto LABEL_17;
      }

      v19 = v114;
      v18 = v115;
      v21 = v112;
      v20 = v113;
      if (v17 == 1)
      {
LABEL_34:
        v4 = *v18;
        v5 = *v19;
        v6 = *v20;
        v7 = *v21;
      }
    }

    else
    {
      v19 = v119;
      v18 = v120;
      v21 = v117;
      v20 = v118;
      if ((v17 - 2) < 3)
      {
        goto LABEL_34;
      }

      if (v17 == 5)
      {
        goto LABEL_44;
      }
    }

    MSRThresholdType = raven::RavenSequentialGNSSMeasurementSelector::GetMSRThresholdType(a1, v8 + 16);
    if (!MSRThresholdType)
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v124) = 4;
      v44 = sub_1D0BCFAB8(*(v8 + 16));
      v45 = *(*(v8 + 24) + 96) - 1;
      v46 = "UnknownType";
      if (v45 <= 4)
      {
        v46 = off_1E83D8358[v45];
      }

      cnprint::CNLogFormatter::FormatGeneral(v11, a1 + 96, "#MSR %s %s could not determine MSR threshold", v44, v46);
      if (*(a1 + 231) >= 0)
      {
        v25 = v11;
      }

      else
      {
        v25 = *(a1 + 208);
      }

      goto LABEL_16;
    }

    if (MSRThresholdType == 1)
    {
      LogLevel = cnprint::CNPrinter::GetLogLevel(MSRThresholdType);
      v35 = v7;
      v36 = v6;
      if (!LogLevel)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v124) = 0;
        v37 = sub_1D0BCFAB8(*(v8 + 16));
        v38 = *(*(v8 + 24) + 96) - 1;
        v39 = "UnknownType";
        if (v38 <= 4)
        {
          v39 = off_1E83D8358[v38];
        }

        cnprint::CNLogFormatter::FormatGeneral(v11, a1 + 96, "#MSR %s %s using positive-side thresholds,reweight,%.3lf,reject,%.3lf", v37, v39, v6, v7);
        if (*(a1 + 231) >= 0)
        {
          v40 = v11;
        }

        else
        {
          v40 = *(a1 + 208);
        }

        cnprint::CNPrinter::Print(__p, &v124, "%s", v40);
        v35 = v7;
        v36 = v6;
      }
    }

    else
    {
      LogLevel = cnprint::CNPrinter::GetLogLevel(MSRThresholdType);
      v35 = v4;
      v36 = v5;
      if (!LogLevel)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v124) = 0;
        v47 = sub_1D0BCFAB8(*(v8 + 16));
        v48 = *(*(v8 + 24) + 96) - 1;
        v49 = "UnknownType";
        if (v48 <= 4)
        {
          v49 = off_1E83D8358[v48];
        }

        cnprint::CNLogFormatter::FormatGeneral(v11, a1 + 96, "#MSR %s %s using negative-side thresholds,reweight,%.3lf,reject,%.3lf", v47, v49, v5, v4);
        if (*(a1 + 231) >= 0)
        {
          v50 = v11;
        }

        else
        {
          v50 = *(a1 + 208);
        }

        cnprint::CNPrinter::Print(__p, &v124, "%s", v50);
        v35 = v4;
        v36 = v5;
      }
    }

    if (*(*(a1 + 192) + 3829) != 1 || *(*(v8 + 24) + 188) != 1)
    {
      raven::RavenSequentialGNSSMeasurementSelector::DetermineAndSetInnovationTestResult(a1, v8 + 16, v35, v36);
      goto LABEL_73;
    }

    *(v8 + 192) = 5;
    if (cnprint::CNPrinter::GetLogLevel(LogLevel))
    {
      goto LABEL_73;
    }

    v124 = 12;
    v123 = 0;
    v51 = *(v8 + 24);
    v52 = sub_1D0BCFAB8(*(v8 + 16));
    v53 = *(v8 + 24);
    v54 = *(v53 + 96) - 1;
    v55 = "UnknownType";
    if (v54 <= 4)
    {
      v55 = off_1E83D8358[v54];
    }

    v56 = *(v53 + 100);
    memset(__p, 0, 24);
    if (v56 <= 4)
    {
      if (v56 <= 1)
      {
        HIBYTE(__p[2]) = 4;
        if (v56)
        {
          v57 = 1094922572;
        }

        else
        {
          v57 = 543911509;
        }
      }

      else if (v56 == 2)
      {
        HIBYTE(__p[2]) = 4;
        v57 = 538981708;
      }

      else
      {
        HIBYTE(__p[2]) = 4;
        if (v56 == 3)
        {
          v57 = 543568204;
        }

        else
        {
          v57 = 541667650;
        }
      }
    }

    else if (v56 > 7)
    {
      if (v56 == 8)
      {
        HIBYTE(__p[2]) = 4;
        v57 = 543241541;
      }

      else
      {
        if (v56 != 9)
        {
          if (v56 == 10)
          {
            HIBYTE(__p[2]) = 3;
            qmemcpy(__p, "NL5", 3);
          }

          goto LABEL_155;
        }

        HIBYTE(__p[2]) = 4;
        v57 = 1112748364;
      }
    }

    else if (v56 == 5)
    {
      HIBYTE(__p[2]) = 4;
      v57 = 541274434;
    }

    else
    {
      HIBYTE(__p[2]) = 4;
      if (v56 == 6)
      {
        v57 = 543240770;
      }

      else
      {
        v57 = 538980677;
      }
    }

    LODWORD(__p[0]) = v57;
LABEL_155:
    cnprint::CNLogFormatter::FormatGeneral(v11, v51, "#MSR Skip Innovation Testing for %s %s %s with externally set uncertainty %.2f", v52, v55, __p, *(v53 + 168));
    if (*(a1 + 231) >= 0)
    {
      v102 = v11;
    }

    else
    {
      v102 = *(a1 + 208);
    }

    cnprint::CNPrinter::Print(&v124, &v123, "%s", v102);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_73:
    v58 = raven::RavenSequentialGNSSMeasurementSelector::UpdateITRsForMeasurement(a1, v8 + 16);
    v59 = *(v8 + 192);
    if (v59 > 2)
    {
      if (v59 == 3)
      {
        if (!cnprint::CNPrinter::GetLogLevel(v58))
        {
          LOWORD(__p[0]) = 12;
          LOBYTE(v124) = 0;
          v75 = *(v8 + 24);
          v76 = sub_1D0BCFAB8(*(v8 + 16));
          v77 = *(*(v8 + 24) + 96) - 1;
          v78 = "UnknownType";
          if (v77 <= 4)
          {
            v78 = off_1E83D8358[v77];
          }

          cnprint::CNLogFormatter::FormatGeneral(v11, v75, "#MSR rejecting %s %s", v76, v78);
          if (*(a1 + 231) >= 0)
          {
            v25 = v11;
          }

          else
          {
            v25 = *(a1 + 208);
          }

          goto LABEL_16;
        }
      }

      else
      {
        if (v59 != 4)
        {
          if (v59 == 5)
          {
            v64 = *(*(v8 + 24) + 168);
            *(v8 + 208) = v64 * v64;
            *(v8 + 216) = 1;
          }

LABEL_87:
          __p[3] = 0x100000008;
          __p[0] = &unk_1F4CE4320;
          *&__p[1] = xmmword_1D0E84520;
          __p[4] = &v122;
          v65 = raven::RavenSequentialGNSSMeasurementSelector::UpdateEstimator(a1, (v8 + 16));
          if ((v65 & 1) == 0 && cnprint::CNPrinter::GetLogLevel(v65) <= 1)
          {
            v124 = 12;
            v123 = 1;
            v66 = *(v8 + 24);
            v67 = sub_1D0BCFAB8(*(v8 + 16));
            v68 = *(*(v8 + 24) + 96) - 1;
            v69 = "UnknownType";
            if (v68 <= 4)
            {
              v69 = off_1E83D8358[v68];
            }

            cnprint::CNLogFormatter::FormatGeneral(v11, v66, "#MSR %s %s could not be used to update estimator", v67, v69);
            if (*(a1 + 231) >= 0)
            {
              v70 = v11;
            }

            else
            {
              v70 = *(a1 + 208);
            }

            cnprint::CNPrinter::Print(&v124, &v123, "%s", v70);
          }

          goto LABEL_17;
        }

        if (!a3)
        {
          raven::RavenSequentialGNSSMeasurementSelector::ComputeReweightedMeasurementVariance(a1, v8 + 16);
          *(v8 + 208) = v91;
          *(v8 + 216) = v92;
          if ((v92 & 1) == 0)
          {
            LOWORD(__p[0]) = 12;
            LOBYTE(v124) = 4;
            v98 = *(v8 + 24);
            v99 = sub_1D0BCFAB8(*(v8 + 16));
            v100 = *(*(v8 + 24) + 96) - 1;
            v101 = "UnknownType";
            if (v100 <= 4)
            {
              v101 = off_1E83D8358[v100];
            }

            cnprint::CNLogFormatter::FormatGeneral(v11, v98, "#MSR %s %s could not be re-weighted", v99, v101);
            if (*(a1 + 231) >= 0)
            {
              v25 = v11;
            }

            else
            {
              v25 = *(a1 + 208);
            }

            goto LABEL_16;
          }

          if (!cnprint::CNPrinter::GetLogLevel(v91))
          {
            LOWORD(__p[0]) = 12;
            LOBYTE(v124) = 0;
            v93 = *(v8 + 24);
            v94 = sub_1D0BCFAB8(*(v8 + 16));
            v95 = *(*(v8 + 24) + 96) - 1;
            v96 = "UnknownType";
            if (v95 <= 4)
            {
              v96 = off_1E83D8358[v95];
            }

            cnprint::CNLogFormatter::FormatGeneral(v11, v93, "#MSR Re-weighting %s measurement from %s", v94, v96);
            if (*(a1 + 231) >= 0)
            {
              v97 = v11;
            }

            else
            {
              v97 = *(a1 + 208);
            }

            cnprint::CNPrinter::Print(__p, &v124, "%s", v97);
          }

          goto LABEL_87;
        }

        if (*(v8 + 184) == 1)
        {
          *(v8 + 184) = 0;
        }

        *(v8 + 192) = 0;
        v83 = raven::RavenSequentialGNSSMeasurementSelector::UpdateITRsForMeasurement(a1, v8 + 16);
        if (&v125 != v8)
        {
          v84 = *(v8 + 8);
          if (v84 != &v125)
          {
            v85 = *v8;
            *(v85 + 8) = v84;
            *v84 = v85;
            v86 = v125;
            *(v125 + 8) = v8;
            *v8 = v86;
            *(v8 + 8) = &v125;
            --a2[2];
            v125 = v8;
            ++v127;
          }
        }

        if (!cnprint::CNPrinter::GetLogLevel(v83))
        {
          LOWORD(__p[0]) = 12;
          LOBYTE(v124) = 0;
          v87 = *(v8 + 24);
          v88 = sub_1D0BCFAB8(*(v8 + 16));
          v89 = *(*(v8 + 24) + 96) - 1;
          v90 = "UnknownType";
          if (v89 <= 4)
          {
            v90 = off_1E83D8358[v89];
          }

          cnprint::CNLogFormatter::FormatGeneral(v11, v87, "#MSR %s %s delaying evaluation", v88, v90);
          if (*(a1 + 231) >= 0)
          {
            v25 = v11;
          }

          else
          {
            v25 = *(a1 + 208);
          }

          goto LABEL_16;
        }
      }
    }

    else if (v59)
    {
      if (v59 == 1)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v124) = 4;
        v79 = *(v8 + 24);
        v80 = sub_1D0BCFAB8(*(v8 + 16));
        v81 = *(*(v8 + 24) + 96) - 1;
        v82 = "UnknownType";
        if (v81 <= 4)
        {
          v82 = off_1E83D8358[v81];
        }

        cnprint::CNLogFormatter::FormatGeneral(v11, v79, "#MSR error for %s %s", v80, v82);
        if (*(a1 + 231) >= 0)
        {
          v25 = v11;
        }

        else
        {
          v25 = *(a1 + 208);
        }

        goto LABEL_16;
      }

      if (v59 != 2)
      {
        goto LABEL_87;
      }

      if (!cnprint::CNPrinter::GetLogLevel(v58))
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v124) = 0;
        v60 = *(v8 + 24);
        v61 = sub_1D0BCFAB8(*(v8 + 16));
        v62 = *(*(v8 + 24) + 96) - 1;
        v63 = "UnknownType";
        if (v62 <= 4)
        {
          v63 = off_1E83D8358[v62];
        }

        cnprint::CNLogFormatter::FormatGeneral(v11, v60, "#MSR ignoring %s %s", v61, v63);
        if (*(a1 + 231) >= 0)
        {
          v25 = v11;
        }

        else
        {
          v25 = *(a1 + 208);
        }

LABEL_16:
        cnprint::CNPrinter::Print(__p, &v124, "%s", v25);
      }
    }

    else if (!cnprint::CNPrinter::GetLogLevel(v58))
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v124) = 0;
      v71 = *(v8 + 24);
      v72 = sub_1D0BCFAB8(*(v8 + 16));
      v73 = *(*(v8 + 24) + 96) - 1;
      v74 = "UnknownType";
      if (v73 <= 4)
      {
        v74 = off_1E83D8358[v73];
      }

      cnprint::CNLogFormatter::FormatGeneral(v11, v71, "#MSR no decision for %s %s", v72, v74);
      if (*(a1 + 231) >= 0)
      {
        v25 = v11;
      }

      else
      {
        v25 = *(a1 + 208);
      }

      goto LABEL_16;
    }

LABEL_17:
    v8 = v12;
  }

  while (v12 != a2);
  v103 = v127;
  a4 = v116;
  if (!v127)
  {
LABEL_162:
    v109 = 0;
    *a4 = 0;
    goto LABEL_163;
  }

  *v116 = v116;
  *(v116 + 1) = v116;
  v105 = v125;
  v104 = v126;
  v106 = *(v125 + 8);
  v107 = *v126;
  *(v107 + 8) = v106;
  *v106 = v107;
  v108 = *v116;
  *(v108 + 8) = v104;
  *v104 = v108;
  *v116 = v105;
  *(v105 + 8) = v116;
  *(v116 + 2) = v103;
  v127 = 0;
  v109 = 1;
LABEL_163:
  a4[24] = v109;
  return sub_1D0BCC0B4(&v125);
}

BOOL raven::RavenSequentialGNSSMeasurementSelector::ShouldMeasurementBeUsedToUpdateEstimator(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 8) + 96);
  if ((v4 - 2) >= 3)
  {
    v9 = v4 == 5 || v4 == 0;
    if (v9 && !cnprint::CNPrinter::GetLogLevel(a1))
    {
      v24 = 12;
      v23 = 0;
      v10 = sub_1D0BCFAB8(*a2);
      cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR %s unexpected measurement type %d", v10, *(*(a2 + 8) + 96));
      if (*(a1 + 231) >= 0)
      {
        v11 = (a1 + 208);
      }

      else
      {
        v11 = *(a1 + 208);
      }

      cnprint::CNPrinter::Print(&v24, &v23, "%s", v11);
    }

    return 1;
  }

  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = sub_1D0BD2638(a1 + 1200, v5, v6);
  if (a1 + 1208 != v7 && (*(v7 + 48) & 0xFFFFFFFE) == 4)
  {
    return 0;
  }

  if (!*(a1 + 40))
  {
    return 1;
  }

  v12 = sub_1D0BD2638(a1 + 1224, v5, v6);
  if (a1 + 1232 == v12)
  {
    return *(*(a1 + 192) + 607) == 0;
  }

  v13 = *(v12 + 48);
  if (v13 < 4)
  {
    return *(*(a1 + 192) + 607) == 0;
  }

  if (v13 != 4)
  {
    return 1;
  }

  v14 = *(a1 + 1256);
  v15 = 999.0;
  if (v14)
  {
    v16 = a1 + 1256;
    do
    {
      v17 = *(v14 + 32);
      v9 = v17 == v5;
      v18 = v17 < v5;
      if (v9)
      {
        v18 = *(v14 + 40) < v6;
      }

      v19 = !v18;
      if (v18)
      {
        v20 = 8;
      }

      else
      {
        v20 = 0;
      }

      if (v19)
      {
        v16 = v14;
      }

      v14 = *(v14 + v20);
    }

    while (v14);
    if (v16 != a1 + 1256)
    {
      v21 = *(v16 + 32);
      v9 = v21 == v5;
      v22 = v21 > v5;
      if (v9)
      {
        v22 = *(v16 + 40) > v6;
      }

      if (!v22)
      {
        v15 = fabs(*(v16 + 48));
      }
    }
  }

  return v15 < *(*(a1 + 192) + 1648);
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::ComputeInnovationData@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 16) = 0;
  if (*(a3 + 112) == 1)
  {
    v6 = result;
    *(a4 + 8) = 0x7FF8000000000000;
    v7 = a3 + 8;
    v8 = *a3;
    *(a4 + 16) = 1;
    v9 = *(a2 + 120);
    v21 = 0x100000001;
    v19 = &unk_1F4CDF418;
    *&v10 = 0x100000001;
    *(&v10 + 1) = 0x100000001;
    v20 = v10;
    v22 = v23;
    sub_1D0B89390(a3 + 8, result + 912, &v19);
    v12 = (DWORD1(v20) * v20);
    if (v12 >= 1)
    {
      v13 = v22;
      v14 = v28;
      do
      {
        v15 = *v13++;
        *v14++ = v9 - v8 - v15;
        --v12;
      }

      while (v12);
      v11 = v28[0];
    }

    *a4 = v11;
    v26 = 0x800000001;
    v24 = &unk_1F4CEC348;
    v25 = xmmword_1D0E9CBE0;
    v27 = v28;
    sub_1D0B89390(v7, v6 + 360, &v24);
    v17 = *(a3 + 16);
    v16 = *(a3 + 20);
    v21 = 0x100000008;
    v19 = &unk_1F4CE4320;
    *&v20 = __PAIR64__(v17, v16);
    DWORD2(v20) = v17 * v16;
    HIDWORD(v20) = v16;
    v22 = v23;
    sub_1D0BD2018(v7, &v19);
    v31 = 0x100000001;
    v29 = &unk_1F4CDF418;
    *&v18 = 0x100000001;
    *(&v18 + 1) = 0x100000001;
    v30 = v18;
    v32 = &v33;
    result = sub_1D0B89390(&v24, &v19, &v29);
    *(a4 + 8) = *v32;
  }

  return result;
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::GetMSRThresholdType(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 144) != 1)
  {
    return 0;
  }

  v54[8] = v5;
  v54[9] = v4;
  v54[16] = v2;
  v54[17] = v3;
  if (*(a2 + 168) != 1)
  {
    return 0;
  }

  result = 0;
  v9 = *(a2 + 8);
  v10 = *(a2 + 160) + (*(v9 + 168) * *(v9 + 168));
  v11 = *(v9 + 96);
  if (v11 > 1)
  {
    if ((v11 - 2) < 3)
    {
      v13 = *(a2 + 48);
      v12 = *(a2 + 52);
      v42 = 0x100000008;
      v37 = &unk_1F4CE4320;
      v38 = v12;
      v39 = v13;
      v40 = v13 * v12;
      v41 = v12;
      v43 = &v44;
      sub_1D0BD2018(a2 + 40, &v37);
      v47 = 0x100000008;
      v45 = &unk_1F4CE4320;
      v46 = xmmword_1D0E84520;
      v48 = v49;
      sub_1D0B89390(a1 + 360, &v37, &v45);
      v52 = 0x100000008;
      v50 = &unk_1F4CE4320;
      v51 = xmmword_1D0E84520;
      v53 = v54;
      v14.f64[0] = 1.0 / v10;
      v15 = sub_1D0BC5ED4(&v45, &v50, v14);
      v15.f64[0] = *(a2 + 152);
      v47 = 0x100000008;
      v45 = &unk_1F4CE4320;
      v46 = xmmword_1D0E84520;
      v48 = v49;
      sub_1D0BC5ED4(&v50, &v45, v15);
      v16 = v48[3];
      v17 = v48[4];
      v18 = v48[5];
      v19 = *(a1 + 288);
      v20 = v19[3];
      v21 = v19[4];
      v22 = v19[5];
      v23 = v21 * v21 + v20 * v20 + v22 * v22;
      v24 = *(a1 + 380);
      v25 = *(a1 + 392);
      v26 = *(v25 + 24 * v24 + 24);
      v27 = *(v25 + 8 * ((4 * v24) | 3));
      v28 = (v25 + 40 * v24);
      v29 = *(v25 + 32 * v24 + 32);
      v30 = v28[3];
      v31 = v28[4];
      v32 = v28[5];
      v33 = ((v20 + v20) * v21 * v27 + v20 * v20 * v26 + (v20 + v20) * v22 * v30 + v21 * v21 * v29 + (v21 + v21) * v22 * v31 + v22 * v22 * v32) / v23;
      if (v23 < 0.000000015)
      {
        v33 = v26 + v27 * 2.0 + v30 * 2.0 + v29 + v31 * 2.0 + v32;
      }

      v34 = v23 < v33 * *(a1 + 200) || v23 < v17 * v17 + v16 * v16 + v18 * v18;
      if (v34 || v17 * v21 + v20 * v16 + v22 * v18 >= 0.0)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }

    if (v11 != 5)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (!v11)
  {
LABEL_20:
    LOWORD(v50) = 12;
    LOBYTE(v45) = 4;
    v35 = sub_1D0BCFAB8(*a2);
    cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR %s unexpected measurement type when selecting thresholds, %d", v35, *(*(a2 + 8) + 96));
    if (*(a1 + 231) >= 0)
    {
      v36 = (a1 + 208);
    }

    else
    {
      v36 = *(a1 + 208);
    }

    cnprint::CNPrinter::Print(&v50, &v45, "%s", v36);
    return 0;
  }

  if (v11 == 1)
  {
    if (*(a2 + 152) / sqrt(v10) >= 0.0)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t raven::RavenSequentialGNSSMeasurementSelector::UpdateEstimator(uint64_t a1, double *a2)
{
  if ((a2[18] & 1) == 0)
  {
    LOWORD(v35) = 12;
    LOBYTE(v30) = 4;
    v20 = a1 + 208;
    sub_1D0BCFAB8(*a2);
    cnprint::CNLogFormatter::FormatGeneral(v20, a1 + 96, "#MSR %s %s h-function data missing at update");
LABEL_13:
    if (*(a1 + 231) >= 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = *(a1 + 208);
    }

    cnprint::CNPrinter::Print(&v35, &v30, "%s", v21);
    return 0;
  }

  if ((a2[21] & 1) == 0)
  {
    LOWORD(v35) = 12;
    LOBYTE(v30) = 4;
    v20 = a1 + 208;
    sub_1D0BCFAB8(*a2);
    cnprint::CNLogFormatter::FormatGeneral(v20, a1 + 96, "#MSR %s %s innovation data missing at update");
    goto LABEL_13;
  }

  if ((a2[25] & 1) == 0)
  {
    LOWORD(v35) = 12;
    LOBYTE(v30) = 4;
    v20 = a1 + 208;
    sub_1D0BCFAB8(*a2);
    cnprint::CNLogFormatter::FormatGeneral(v20, a1 + 96, "#MSR %s %s recommended variance missing at update");
    goto LABEL_13;
  }

  v4 = a2[20];
  v5 = a2[24];
  v7 = *(a2 + 12);
  v6 = *(a2 + 13);
  v37 = 0x100000008;
  v35 = &unk_1F4CE4320;
  *&v36 = __PAIR64__(v7, v6);
  DWORD2(v36) = v7 * v6;
  HIDWORD(v36) = v6;
  v38 = v39;
  sub_1D0BD2018((a2 + 5), &v35);
  v52 = 0x100000008;
  v51 = xmmword_1D0E84520;
  v50 = &unk_1F4CE4320;
  v53 = &v54;
  sub_1D0B89390(a1 + 360, &v35, &v50);
  v47 = 0x100000008;
  v46 = xmmword_1D0E84520;
  v45 = &unk_1F4CE4320;
  v48 = &v49;
  v8.f64[0] = 1.0 / (v4 + v5);
  v9 = sub_1D0BC5ED4(&v50, &v45, v8);
  v9.f64[0] = a2[19];
  v42 = 0x100000008;
  v41 = xmmword_1D0E84520;
  v40 = &unk_1F4CE4320;
  v43 = &v44;
  sub_1D0BC5ED4(&v45, &v40, v9);
  v37 = 0x100000008;
  v36 = xmmword_1D0E84520;
  v35 = &unk_1F4CE4320;
  v38 = v39;
  sub_1D0B88838(a1 + 256, &v40, &v35);
  sub_1D0B894B0(a1 + 256, &v35);
  v11 = v51;
  v10 = DWORD1(v51);
  v27 = 0x800000001;
  v22 = &unk_1F4CEC348;
  v28 = v29;
  v23 = DWORD1(v51);
  v24 = v51;
  v25 = v51 * DWORD1(v51);
  v26 = DWORD1(v51);
  if (DWORD1(v51))
  {
    v12 = 0;
    v13 = 0;
    v14 = HIDWORD(v51);
    v15 = v53;
    do
    {
      v16 = v12;
      v17 = v13;
      for (i = v11; i; --i)
      {
        v29[v17] = v15[v16];
        v17 += v10;
        ++v16;
      }

      ++v13;
      v12 += v14;
    }

    while (v13 != v10);
  }

  v32 = 0x800000008;
  v30 = &unk_1F4CE43B0;
  v31 = xmmword_1D0E84510;
  v33 = &v34;
  sub_1D0B89390(&v45, &v22, &v30);
  v37 = 0x800000008;
  v36 = xmmword_1D0E84510;
  v35 = &unk_1F4CE43B0;
  v38 = v39;
  sub_1D0BA5A78(a1 + 360, &v30, &v35);
  sub_1D0B894B0(a1 + 360, &v35);
  v37 = 0x100000008;
  v36 = xmmword_1D0E84520;
  v35 = &unk_1F4CE4320;
  v38 = v39;
  sub_1D0B88838(a1 + 912, &v40, &v35);
  sub_1D0B894B0(a1 + 912, &v35);
  return 1;
}

float64x2_t sub_1D0BC5ED4(uint64_t a1, uint64_t a2, float64x2_t result)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  *(a2 + 8) = v3;
  *(a2 + 12) = v4;
  v5 = (v4 * v3);
  *(a2 + 16) = v5;
  *(a2 + 20) = v3;
  v6 = v5 - 1;
  if (v5 >= 1)
  {
    v7 = *(a1 + 32);
    v8 = *(a2 + 32);
    v9 = v7;
    v10 = v8;
    v11 = v5;
    do
    {
      v12 = *v9++;
      *v10++ = v12 * result.f64[0];
      --v11;
    }

    while (v11);
    if (v5 > 3)
    {
      v14 = (v5 - 2);
      v15 = (v7 + 8 * v14);
      v16 = v6 >> 1;
      v17 = v8;
      do
      {
        v18 = *v7++;
        *v17++ = vmulq_n_f64(v18, result.f64[0]);
        --v16;
      }

      while (v16);
      result = vmulq_n_f64(*v15, result.f64[0]);
      *&v8[v14] = result;
    }

    else
    {
      do
      {
        v13 = v7->f64[0];
        v7 = (v7 + 8);
        *v8++ = v13 * result.f64[0];
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

void raven::RavenSequentialGNSSMeasurementSelector::ComputeHorizontalPositionMisclosureAndHDOP(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_1D0BD2CA4(v57, **(a1 + 288), *(*(a1 + 288) + 8), *(*(a1 + 288) + 16));
    v54 = 0;
    __p = 0;
    v55 = 0;
    v50[0] = 0;
    v51 = 0;
    v52 = 1;
    sub_1D0BC3E34(&__p);
    v56 = 1;
    v47 = 0x400000004;
    v45 = &unk_1F4CDEB70;
    v48 = v49;
    v46 = xmmword_1D0E7DCD0;
    v4.n128_u64[1] = 0;
    memset(v49, 0, sizeof(v49));
    v5 = *(a2 + 8);
    if (v5 == a2)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v4.n128_u64[1] = 0x400000004;
      do
      {
        if (*(*(v5 + 24) + 96) == 1 && (*(v5 + 192) & 0xFFFFFFFE) == 4)
        {
          v7 = *(v5 + 16);
          v8 = *(v7 + 264);
          v9 = cos(v8);
          if (*(a1 + 2424) == 1)
          {
            v41 = 0x400000001;
            v40 = xmmword_1D0E84480;
            v39 = &unk_1F4CE4368;
            v42 = &v43;
            v10 = __sincos_stret(*(v7 + 272));
            *&v43 = -(v9 * v10.__sinval);
            *(&v43 + 1) = -(v9 * v10.__cosval);
            *&v44 = -sin(v8);
            *(&v44 + 1) = 0x3FF0000000000000;
            v31 = 0x100000004;
            v29 = &unk_1F4CDEBB8;
            v32 = v33;
            v30 = xmmword_1D0E7DCE0;
            v33[0] = v43;
            v33[1] = v44;
            v36 = 0x400000004;
            v34 = &unk_1F4CDEB70;
            v35 = xmmword_1D0E7DCD0;
            v37 = v38;
            sub_1D0B89390(&v29, &v39, &v34);
            v60 = 0x400000004;
            v59 = xmmword_1D0E7DCD0;
            v58 = COERCE_DOUBLE(&unk_1F4CDEB70);
            v61 = v62;
            sub_1D0B88838(&v45, &v34, &v58);
            v4 = sub_1D0B894B0(&v45, &v58);
            v8 = *(*(v5 + 16) + 264);
          }

          ++v6;
          if (v8 <= 1.3962634 && v8 >= 0.34906585)
          {
            v11 = *(*(v5 + 24) + 120);
            v12 = *(v5 + 48);
            v36 = 0x100000001;
            v34 = &unk_1F4CDF418;
            *&v13 = 0x100000001;
            *(&v13 + 1) = 0x100000001;
            v35 = v13;
            v37 = v38;
            sub_1D0B89390(v5 + 56, a1 + 912, &v34);
            v14 = (DWORD1(v35) * v35);
            if (v14 >= 1)
            {
              v15 = v37;
              v16 = v62;
              do
              {
                v17 = *v15++;
                *v16++ = v11 - v12 - v17;
                --v14;
              }

              while (v14);
            }

            v58 = fabs(v62[0]) / v9;
            sub_1D0BC3F08(v50, &v58, 1.0);
          }
        }

        v5 = *(v5 + 8);
      }

      while (v5 != a2);
    }

    v18 = *(a1 + 2440);
    if (v6 - v18 < 4)
    {
      goto LABEL_39;
    }

    if (v50[0])
    {
      v19 = (v54 - __p) >> 4;
    }

    else
    {
      v19 = 0;
    }

    if (v19 - v18 < 4)
    {
LABEL_31:
      if (*(a1 + 2424) == 1)
      {
        v36 = 0x400000004;
        v34 = &unk_1F4CDEB70;
        v35 = xmmword_1D0E7DCD0;
        v37 = v38;
        v41 = 0x100000004;
        v40 = xmmword_1D0E7DCE0;
        v39 = &unk_1F4CDFDB8;
        v42 = &v43;
        v31 = 0x100000004;
        v29 = &unk_1F4CDFDB8;
        v30 = xmmword_1D0E7DCE0;
        v32 = v33;
        v60 = 0x100000010;
        v59 = xmmword_1D0E83CB0;
        v58 = COERCE_DOUBLE(&unk_1F4CDFE00);
        v61 = v62;
        v25 = sub_1D0BA5174(&v45, &v39, &v29, &v58, &v34);
        if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v25 >= *(*(a1 + 192) + 920))
        {
          LOWORD(v58) = 12;
          LOBYTE(v39) = 4;
          v26 = cnprint::CNLogFormatter::FormatGeneral((a1 + 208), "t,%.3lf, pseudoinverse of design matrix is poorly conditioned, condition number, %.3lf", *(a1 + 104) + *(a1 + 96), v25);
          if (*(a1 + 231) >= 0)
          {
            v27 = v26;
          }

          else
          {
            v27 = *(a1 + 208);
          }

          cnprint::CNPrinter::Print(&v58, &v39, "%s", v27);
        }

        else
        {
          *(a1 + 2448) = sqrt(*v37 + v37[SHIDWORD(v35) + 1]);
        }
      }

LABEL_39:
      if (__p)
      {
        v54 = __p;
        operator delete(__p);
      }

      return;
    }

    v20 = *(a1 + 1024);
    if (v20 > 9)
    {
      goto LABEL_28;
    }

    v21 = 1 << v20;
    if ((v21 & 0x393) != 0)
    {
      v4.n128_u64[0] = 0x4052C00000000000;
LABEL_30:
      sub_1D0BC4124(v50, v4);
      *(a1 + 2432) = v24;
      goto LABEL_31;
    }

    if ((v21 & 0x4C) != 0)
    {
      v22 = *(a1 + 1016);
      if (v22 <= 6)
      {
        v4.n128_f64[0] = dbl_1D0EA3DF0[v22];
        goto LABEL_30;
      }
    }

    else
    {
LABEL_28:
      v23 = *(a1 + 1016);
      if ((v23 - 3) >= 2)
      {
        v28 = v23 == 6 || v23 == 0;
        v4.n128_u64[0] = 0x4041800000000000;
        if (v28)
        {
          v4.n128_u64[0] = 0x4052C00000000000;
        }

        goto LABEL_30;
      }
    }

    v4.n128_u64[0] = 0x4049000000000000;
    goto LABEL_30;
  }
}

void sub_1D0BC65A0(_Unwind_Exception *a1)
{
  v2 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void raven::RavenSequentialGNSSMeasurementSelector::UpdateITRCounts(cnprint::CNPrinter *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == a2)
  {
    return;
  }

  v4 = a1;
  v34 = a1 + 1384;
  v35 = a1 + 1344;
LABEL_3:
  v5 = *(v2 + 24);
  v6 = *(v5 + 100);
  v7 = v35;
  if (v6 > 0xA)
  {
    goto LABEL_6;
  }

  if (((1 << v6) & 0x544) != 0)
  {
    v7 = v34;
    goto LABEL_6;
  }

  v7 = v35;
  if (*(v5 + 100))
  {
LABEL_6:
    if (*(*(v2 + 16) + 312))
    {
      v8 = *(v5 + 96);
      v37 = (v5 + 96);
      v9 = sub_1D0BC6C68(v4 + 356, v8, &v37);
      v10 = *(v2 + 192);
      if (sub_1D0BD2DFC(v9 + 3, *(v2 + 192)))
      {
        v37 = (v2 + 192);
        v11 = sub_1D0BD32D0(v9 + 3, v10, &v37);
        ++*(v11 + 5);
      }

      else
      {
        v37 = (v10 | 0x100000000);
        sub_1D0BD2EB0(v9 + 6, v10, &v37);
      }
    }

    v12 = *(v2 + 16);
    v13 = *(v12 + 24);
    v14 = v7[1];
    if (!*&v14)
    {
      goto LABEL_26;
    }

    v15 = vcnt_s8(v14);
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] > 1uLL)
    {
      v16 = *(v12 + 24);
      if (*&v14 <= v13)
      {
        v16 = v13 % v7[1];
      }
    }

    else
    {
      v16 = (v14.i32[0] - 1) & v13;
    }

    v17 = *(*v7 + 8 * v16);
    if (!v17 || (v18 = *v17) == 0)
    {
LABEL_26:
      operator new();
    }

    while (1)
    {
      v19 = *(v18 + 1);
      if (v19 == v13)
      {
        if (*(v18 + 16) == v13)
        {
          v20 = *(v2 + 24);
          v21 = *(v20 + 96);
          v37 = (v20 + 96);
          v22 = sub_1D0BC6C68(v18 + 6, v21, &v37);
          v23 = *(v2 + 192);
          if (sub_1D0BD2DFC(v22 + 3, *(v2 + 192)))
          {
            v37 = (v2 + 192);
            v24 = sub_1D0BD32D0(v22 + 3, v23, &v37);
            ++*(v24 + 5);
          }

          else
          {
            v37 = (v23 | 0x100000000);
            sub_1D0BD2EB0(v22 + 6, v23, &v37);
          }

          v25 = *(v2 + 24);
          v26 = *(v25 + 96);
          v37 = (v25 + 96);
          v27 = sub_1D0BC6C68(v4 + 366, v26, &v37);
          v28 = *(v2 + 192);
          if (sub_1D0BD2DFC(v27 + 3, *(v2 + 192)))
          {
            v37 = (v2 + 192);
            a1 = sub_1D0BD32D0(v27 + 3, v28, &v37);
            ++*(a1 + 5);
          }

          else
          {
            v37 = (v28 | 0x100000000);
            a1 = sub_1D0BD2EB0(v27 + 6, v28, &v37);
          }

          v2 = *(v2 + 8);
          if (v2 == a2)
          {
            return;
          }

          goto LABEL_3;
        }
      }

      else
      {
        if (v15.u32[0] > 1uLL)
        {
          if (v19 >= *&v14)
          {
            v19 %= *&v14;
          }
        }

        else
        {
          v19 &= *&v14 - 1;
        }

        if (v19 != v16)
        {
          goto LABEL_26;
        }
      }

      v18 = *v18;
      if (!v18)
      {
        goto LABEL_26;
      }
    }
  }

  if (!cnprint::CNPrinter::GetLogLevel(a1))
  {
    LOWORD(v37) = 12;
    v36 = 0;
    v29 = sub_1D0BCFAB8(*(v2 + 16));
    v30 = *(v2 + 24);
    v31 = *(v30 + 96) - 1;
    if (v31 > 4)
    {
      v32 = "UnknownType";
    }

    else
    {
      v32 = off_1E83D8358[v31];
    }

    cnprint::CNLogFormatter::FormatGeneral(v4 + 208, v4 + 96, "#MSR %s %s unsupported band family, %d", v29, v32, *(v30 + 100));
    if (*(v4 + 231) >= 0)
    {
      v33 = v4 + 208;
    }

    else
    {
      v33 = *(v4 + 26);
    }

    cnprint::CNPrinter::Print(&v37, &v36, "%s", v33);
  }
}

void sub_1D0BC6C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1D0BD2D64(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1D0BC6C68(float *a1, int a2, _DWORD **a3)
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

void sub_1D0BC709C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1D0BD2DB0(va);
  _Unwind_Resume(a1);
}

void raven::RavenSequentialGNSSMeasurementSelector::LogMSRData(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1) && *(a1 + 1506))
  {
    v26 = 0x100000008;
    v24 = &unk_1F4CE4320;
    v25 = xmmword_1D0E84520;
    v27 = &v28;
    sub_1D0BA5A78(a1 + 256, a1 + 912, &v24);
    sub_1D0B751F4(&v23, "\n");
    v21 = 0;
    __src = 0;
    v22 = 0;
    v3 = *(a2 + 16);
    if (v3 >= 2)
    {
      if ((v3 & 0x8000000000000000) == 0)
      {
        sub_1D0D2FF2C(&__src, v3 >> 1);
      }

      sub_1D0C5663C();
    }

    memset(v19, 0, 32);
    v19[8] = 1.0;
    v16 = 0u;
    v17 = 0u;
    v18 = 1065353216;
    v4 = *(a2 + 8);
    if (v4 != a2)
    {
      v5 = *(*(v4 + 16) + 28) + 1000 * *(*(v4 + 16) + 24);
      LODWORD(v14.__r_.__value_.__l.__data_) = v5;
      v6 = __src;
      v7 = v21 - __src;
      v8 = (v21 - __src) >> 2;
      v9 = v8 + 1;
      if (!((v8 + 1) >> 62))
      {
        v10 = v22 - __src;
        if ((v22 - __src) >> 1 > v9)
        {
          v9 = v10 >> 1;
        }

        v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
        v12 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v11)
        {
          v12 = v9;
        }

        if (v12)
        {
          sub_1D0D2FF2C(&__src, v12);
        }

        *(4 * v8) = v5;
        memcpy(0, v6, v7);
        v13 = __src;
        __src = 0;
        v21 = 4 * v8 + 4;
        v22 = 0;
        if (v13)
        {
          operator delete(v13);
        }

        v21 = 4 * v8 + 4;
        __b.__r_.__value_.__r.__words[0] = &v14;
        sub_1D0E31160(v19, v14.__r_.__value_.__l.__data_, &__b);
        operator new();
      }

      sub_1D0C5663C();
    }

    operator new();
  }
}

void sub_1D0BC9638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, void *a63)
{
  operator delete(__p);
  sub_1D0E31100(&a65);
  sub_1D0E310A0(&STACK[0x200]);
  v66 = STACK[0x228];
  if (STACK[0x228])
  {
    STACK[0x230] = v66;
    operator delete(v66);
  }

  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  _Unwind_Resume(a1);
}

uint64_t *raven::RavenSequentialGNSSMeasurementSelector::GetITRCount(uint64_t a1, void *a2, int *a3, int *a4)
{
  result = sub_1D0BD3584(a2, a3);
  if (result)
  {
    result = sub_1D0BD3584(result + 3, a4);
    if (result)
    {
      return *(result + 5);
    }
  }

  return result;
}

void raven::RavenSequentialGNSSMeasurementSelector::GetFinalGnssObservable(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 176);
  if ((v4 - 1) >= 3)
  {
    if (!v4)
    {
      v7 = *(a2 + 8);
      v8 = v7[11];
      *(a3 + 160) = v7[10];
      *(a3 + 176) = v8;
      *(a3 + 192) = v7[12];
      v9 = v7[7];
      *(a3 + 96) = v7[6];
      *(a3 + 112) = v9;
      v10 = v7[9];
      *(a3 + 128) = v7[8];
      *(a3 + 144) = v10;
      v11 = v7[3];
      *(a3 + 32) = v7[2];
      *(a3 + 48) = v11;
      v12 = v7[5];
      *(a3 + 64) = v7[4];
      *(a3 + 80) = v12;
      v14 = *v7;
      v13 = v7[1];
      v5 = 1;
      *a3 = v14;
      *(a3 + 16) = v13;
      goto LABEL_7;
    }

    if (*(a2 + 200))
    {
      v15 = *(a2 + 8);
      v16 = *(v15 + 144);
      *(a3 + 128) = *(v15 + 128);
      *(a3 + 144) = v16;
      *(a3 + 160) = *(v15 + 160);
      v17 = *(v15 + 80);
      *(a3 + 64) = *(v15 + 64);
      *(a3 + 80) = v17;
      v18 = *(v15 + 112);
      *(a3 + 96) = *(v15 + 96);
      *(a3 + 112) = v18;
      v19 = *(v15 + 16);
      *a3 = *v15;
      *(a3 + 16) = v19;
      v20 = *(v15 + 48);
      *(a3 + 32) = *(v15 + 32);
      *(a3 + 48) = v20;
      *(a3 + 172) = *(v15 + 172);
      *(a3 + 188) = *(v15 + 188);
      *(a3 + 204) = *(v15 + 204);
      *&v20 = sqrt(*(a2 + 192));
      *(a3 + 168) = v20;
      v5 = 1;
      goto LABEL_7;
    }

    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      v27 = 12;
      v26 = 1;
      v22 = sub_1D0BCFAB8(*a2);
      v23 = *(*(a2 + 8) + 96) - 1;
      if (v23 > 4)
      {
        v24 = "UnknownType";
      }

      else
      {
        v24 = off_1E83D8358[v23];
      }

      cnprint::CNLogFormatter::FormatGeneral(a1 + 208, a1 + 96, "#MSR %s %s no recommended variance", v22, v24);
      if (*(a1 + 231) >= 0)
      {
        v25 = (a1 + 208);
      }

      else
      {
        v25 = *(a1 + 208);
      }

      cnprint::CNPrinter::Print(&v27, &v26, "%s", v25);
    }
  }

  v5 = 0;
  *a3 = 0;
LABEL_7:
  *(a3 + 208) = v5;
}

uint64_t sub_1D0BC9B98(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
        sub_1D0BD3638(v22, a5);
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

void sub_1D0BC9FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_1D0C537DC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1D0BCA014(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_1D0BD3638(a3, a2[1]);
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
    *a3 = sub_1D0BCA014;
    a3[1] = v9;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_1F4CEC240;
  }

  if (a4)
  {
    v6 = sub_1D0B7CA64(a4, &unk_1F4CEC240);
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<raven::h_GnssPsrArgs_RavenConvergence>::__id;
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

uint64_t sub_1D0BCA100(uint64_t a1)
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

  return a1;
}

void sub_1D0BCA3B4(_Unwind_Exception *a1)
{
  sub_1D0D840AC(v1 + 56);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1D0BCA40C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_1D0B7CAB8(v4);
    }
  }

  a1[1] = v2;
}

void sub_1D0BCA45C(uint64_t a1, uint64_t a2)
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
    if (v9 != (off_1F4CEE718 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v9, (off_1F4CEE718 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v14.__vftable = 0;
      std::bad_cast::bad_cast(&v14);
      v14.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(&v14);
    }

    v10 = *(a2 + 16);
    *a1 = &unk_1F4CEF748;

    memcpy((a1 + 8), (v10 + 16), 0x160uLL);
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

    cnprint::CNPrinter::Print(&v12, &v11, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEE718 & 0x7FFFFFFFFFFFFFFFLL));
    *(a1 + 280) = 0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
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
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 264) = 0u;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF748;
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
    *(a1 + 201) = 0;
    v8 = vdupq_n_s64(0x7FF8000000000000uLL);
    *(a1 + 208) = v8;
    *(a1 + 224) = v8;
    *(a1 + 240) = v8;
    *(a1 + 256) = v8;
    *(a1 + 272) = 0x7FF8000000000000;
    *(a1 + 288) = v8;
    *(a1 + 304) = v8;
    *(a1 + 320) = v8;
    *(a1 + 336) = v8;
    *(a1 + 352) = 0x7FF8000000000000;
  }
}

void raven::RavenDeviceAttitudeActiveObject::RaiseExternalAttitudeEvent(raven::RavenDeviceAttitudeActiveObject *this, const raven::TimeMarkEvent *a2)
{
  if (*(*(this + 29) + 3806) == 1 && *(this + 1176) == 1 && *(this + 1168) == 1)
  {
    sub_1D0DD3320(this);
  }
}

void raven::RavenDeviceAttitudeActiveObject::RemoveStaleSolutions(void *a1, void *a2, int8x16_t a3, int8x16_t a4)
{
  *a3.i64 = *(a1[29] + 1048) + *(a1[29] + 1048);
  v18[0] = 0;
  v18[1] = 0;
  *v6.i64 = CNTimeSpan::SetTimeSpan(v18, 0, a3, a4);
  v8 = CNTimeSpan::operator-(a2, v18, v6, v7);
  if (a1[951])
  {
    v10 = v8;
    v11 = v9;
    if (v8)
    {
      v12 = 1;
    }

    else
    {
      v12 = (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
    }

    v13 = !v12;
    do
    {
      v14 = *(a1[947] + ((a1[950] >> 1) & 0x7FFFFFFFFFFFFFF8)) + 2656 * (a1[950] & 0xFLL);
      v15 = (*(*v14 + 16))(v14);
      if (v15)
      {
        v17 = 1;
      }

      else
      {
        v17 = (*&v16 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL;
      }

      if (!v17 || v13 || v15 == v10)
      {
        if (v16 >= v11)
        {
          return;
        }
      }

      else if (v15 > v10)
      {
        return;
      }

      sub_1D0BAD890((a1 + 946));
    }

    while (a1[951]);
  }
}

void sub_1D0BCA910(uint64_t a1, uint64_t a2)
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

    v8 = (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v8 != (off_1F4CEE988 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v8, (off_1F4CEE988 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      v22.__vftable = 0;
      std::bad_cast::bad_cast(&v22);
      v22.__vftable = &unk_1F4CE4880;
      sub_1D0DC7F8C(&v22);
    }

    v9 = *(a2 + 16);
    *a1 = &unk_1F4CEF598;
    v10 = *(v9 + 48);
    v11 = *(v9 + 64);
    v12 = *(v9 + 80);
    v13 = *(v9 + 96);
    v14 = *(v9 + 16);
    v15 = *(v9 + 32);
    *(a1 + 96) = 0;
    v16 = (a1 + 96);
    *(v16 - 9) = v15;
    *(v16 - 11) = v14;
    *(v16 - 1) = v13;
    *(v16 - 3) = v12;
    *(v16 - 5) = v11;
    *(v16 - 7) = v10;
    v16[1] = 0;
    v16[2] = 0;
    v17 = *(v9 + 104);
    v18 = *(v9 + 112);

    sub_1D0BBD5A4(v16, v17, v18, (v18 - v17) >> 4);
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

    cnprint::CNPrinter::Print(&v20, &v19, "Attempted to cast a GenericEvent of type %s to type %s.", (*(v7 + 8) & 0x7FFFFFFFFFFFFFFFLL), (off_1F4CEE988 & 0x7FFFFFFFFFFFFFFFLL));
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0;
    *(a1 + 56) = 0;
    *(a1 + 72) = 0;
    *(a1 + 108) = 0;
    *(a1 + 100) = 0;
    *(a1 + 116) = 0;
    *(a1 + 92) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = &unk_1F4CEF598;
    *(a1 + 24) = 0;
  }
}

void sub_1D0BCAB88(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0BCABDC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1D0BC00C0(a1);
  }

  return a1;
}

void sub_1D0BCAC14(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v3 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 8);
    *(a1 + 32) = v3;
    v4 = *(a2 + 40);
    v5 = *(a2 + 56);
    v6 = *(a2 + 72);
    *(a1 + 96) = *(a2 + 88);
    *(a1 + 64) = v5;
    *(a1 + 80) = v6;
    *(a1 + 48) = v4;
    if (a1 + 8 != a2)
    {
      v7 = *(a2 + 104);
      v8 = (v7 - *(a2 + 96)) >> 4;
      v9 = (a1 + 104);
      v10 = *(a2 + 96);

      sub_1D0BBD668(v9, v10, v7, v8);
    }
  }

  else
  {
    *(a1 + 8) = &unk_1F4CEF598;
    v11 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 8);
    *(a1 + 32) = v11;
    v12 = *(a2 + 40);
    v13 = *(a2 + 56);
    v14 = *(a2 + 72);
    *(a1 + 96) = *(a2 + 88);
    *(a1 + 64) = v13;
    *(a1 + 80) = v14;
    *(a1 + 48) = v12;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 104) = 0;
    sub_1D0BBD5A4((a1 + 104), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 4);
    *a1 = 1;
  }
}