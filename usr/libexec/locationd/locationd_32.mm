uint64_t sub_100218038(uint64_t result, int a2, double a3, double a4)
{
  v4 = *(result + 8);
  if (v4 == -1 || vabdd_f64(*(result + 16), a4) >= 5400.0 || (fabs(*result) > 2.22044605e-16 ? (v5 = a2 == 1) : (v5 = 0), v5 ? (v6 = v4 == 2) : (v6 = 0), !v6))
  {
    *result = a3;
    *(result + 8) = a2;
    *(result + 16) = a4;
  }

  return result;
}

uint64_t sub_10021808C(uint64_t a1, int32x2_t *a2, __n128 a3, __n128 a4)
{
  if (*(a1 + 4296) == 1 && (v4 = *(a1 + 4288)) != 0)
  {
    return sub_100214D30(v4, a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

BOOL sub_1002180B0(_BOOL8 result, uint64_t a2, double a3)
{
  v5 = result;
  v6 = *(a2 + 96);
  if ((v6 & 0xFFFFFFF7) == 1)
  {
    sub_1002B0140(result, a2);
    *(v5 + 224) = a3;
    if (sub_1002B03E0(v5, a2))
    {
      *(v5 + 216) = a3;
      if (qword_1025D4600 != -1)
      {
        sub_101A85004();
      }

      v7 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(v5 + 184);
        v9 = *(v5 + 216);
        v12[0] = 67240448;
        v12[1] = v8;
        v13 = 2050;
        v14 = v9;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#CLProactiveLoc,active,%{public}d,feedLocation,fixConvergedMCT,%{public}0.2f", v12, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A86648();
      }

      sub_1002B0884(v5, 7);
    }

    result = sub_1002B0B44(a2);
    if (result)
    {
      a3 = *(a2 + 44) * 3.6;
    }

    else
    {
      a3 = 0.0;
    }

    v11 = 1024;
    goto LABEL_21;
  }

  if (v6 == 11 || v6 == 4)
  {
    result = sub_100072814(a2);
    if (result)
    {
      v11 = 240;
LABEL_21:
      *(v5 + v11) = a3;
    }
  }

  return result;
}

double sub_100218244(uint64_t a1, uint64_t a2, _BYTE *a3, double *a4)
{
  *a3 = 0;
  *a4 = -1.0;
  result = *(a2 + 44);
  if (result >= 0.0)
  {
    v5 = *(a2 + 96);
    v6 = v5 > 9;
    v7 = (1 << v5) & 0x20A;
    if (!v6 && v7 != 0)
    {
      *(a1 + 32) = result;
      v9 = *(a2 + 76);
      *(a1 + 40) = v9;
      result = vabdd_f64(v9, *(a1 + 24));
      if (result < 1.5)
      {
        *a3 = 1;
        *a1 = *(a1 + 32);
        result = *(a2 + 44);
        *a4 = result;
      }
    }
  }

  return result;
}

uint64_t sub_1002182BC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_100212DE4((a1 + 16), (a2 + 16));
  v4 = *(a2 + 72);
  v5 = *(a2 + 88);
  v6 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v6;
  *(a1 + 88) = v5;
  *(a1 + 72) = v4;
  v7 = *(a2 + 136);
  v8 = *(a2 + 152);
  v9 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v9;
  *(a1 + 152) = v8;
  *(a1 + 136) = v7;
  memcpy((a1 + 192), (a2 + 192), 0x161uLL);
  *(a1 + 552) = *(a2 + 552);
  v10 = *(a2 + 700);
  v11 = *(a2 + 716);
  v12 = *(a2 + 732);
  *(a1 + 744) = *(a2 + 744);
  *(a1 + 716) = v11;
  *(a1 + 732) = v12;
  *(a1 + 700) = v10;
  v13 = *(a2 + 636);
  v14 = *(a2 + 652);
  v15 = *(a2 + 684);
  *(a1 + 668) = *(a2 + 668);
  *(a1 + 684) = v15;
  *(a1 + 636) = v13;
  *(a1 + 652) = v14;
  v16 = *(a2 + 572);
  v17 = *(a2 + 588);
  v18 = *(a2 + 620);
  *(a1 + 604) = *(a2 + 604);
  *(a1 + 620) = v18;
  *(a1 + 572) = v16;
  *(a1 + 588) = v17;
  *(a1 + 556) = *(a2 + 556);
  v19 = *(a2 + 760);
  v20 = *(a2 + 768);
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 760) = v19;
  v21 = *(a1 + 768);
  *(a1 + 768) = v20;
  if (v21)
  {
    sub_100008080(v21);
  }

  v22 = *(a2 + 792);
  *(a1 + 776) = *(a2 + 776);
  *(a1 + 792) = v22;
  v24 = *(a2 + 856);
  v23 = *(a2 + 872);
  v25 = *(a2 + 840);
  *(a1 + 884) = *(a2 + 884);
  *(a1 + 856) = v24;
  *(a1 + 872) = v23;
  *(a1 + 840) = v25;
  v26 = *(a2 + 824);
  *(a1 + 808) = *(a2 + 808);
  *(a1 + 824) = v26;
  return a1;
}

void sub_1002183F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 312);
  v8 = *(a4 + 316);
  v9 = fabs(v8);
  if ((v7 - 1) <= 0xFFFFFFFD && v9 > 2.22044605e-16)
  {
    sub_100218038(*(a1 + 592), v7, v8, *(a3 + 76));
    sub_100214CE0(*(a1 + 592), (a1 + 192), (a1 + 200), *(a3 + 76));
  }

  sub_100214948(a1, a2, a3);
}

uint64_t sub_100218494(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10007048C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_10023E224(a1, i + 2, i + 2);
  }

  return a1;
}

uint64_t sub_100218524(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 12);
  if (v2 >= *(result + 245))
  {
    v2 = *(result + 245);
  }

  *(result + 245) = v2;
  v3 = *(result + 249);
  if (v3 <= *(a2 + 16))
  {
    v3 = *(a2 + 16);
  }

  *(result + 249) = v3;
  v4 = *(a2 + 4);
  if (v4 >= *(result + 237))
  {
    v4 = *(result + 237);
  }

  *(result + 237) = v4;
  v5 = *(result + 241);
  if (v5 < *(a2 + 8))
  {
    v5 = *(a2 + 8);
  }

  *(result + 241) = v5;
  return result;
}

uint64_t sub_100218578(uint64_t a1, unsigned int *a2, double a3, double a4, double a5, double a6, double a7)
{
  v12 = *a2;
  if (v12 > 0xA)
  {
    v13 = 18000.0;
  }

  else
  {
    v13 = dbl_101C89708[v12];
  }

  if (a3 <= 0.0 || (a4 >= -500.0 ? (v14 = v13 < a4) : (v14 = 1), v14))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v15 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 134350081;
      v38 = a3;
      v39 = 2049;
      v40 = a4;
      v41 = 2050;
      v42 = a5;
      v43 = 2050;
      v44 = a6;
      v45 = 2050;
      v46 = a7;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "KFCV:#Error,invalid altitude,time_mct,%{public}.3f,alt,%{private}.2f,altUnc,%{public}.2f,altRate,%{public}.2f,altRateUnc,%{public}.2f", buf, 0x34u);
    }

    if (!sub_10000A100(121, 0))
    {
      return 0;
    }

    sub_101912E28(buf);
    v27 = 134350081;
    v28 = a3;
    v29 = 2049;
    v30 = a4;
    v31 = 2050;
    v32 = a5;
    v33 = 2050;
    v34 = a6;
    v35 = 2050;
    v36 = a7;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "KFCV:#Error,invalid altitude,time_mct,%{public}.3f,alt,%{private}.2f,altUnc,%{public}.2f,altRate,%{public}.2f,altRateUnc,%{public}.2f", &v27, 52);
    v21 = v26;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::LCFusionAltitudePropagator::initialize(const CFTimeInterval, const double, const double, const double, const double, const LCFusionDynamicsMode &)", "%s\n", v26);
    goto LABEL_41;
  }

  if (a7 <= 0.0)
  {
    goto LABEL_21;
  }

  v18 = 4.0;
  if ((v12 - 1) <= 9)
  {
    v18 = dbl_101C89760[(v12 - 1)];
  }

  if (v18 < a7)
  {
LABEL_21:
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v19 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134350081;
      v38 = a3;
      v39 = 2049;
      v40 = a4;
      v41 = 2050;
      v42 = a5;
      v43 = 2050;
      v44 = a6;
      v45 = 2050;
      v46 = a7;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "KFCV:invalid altRateUnc,time_mct,%{public}.3f,alt,%{private}.2f,altUnc,%{public}.2f,altRate,%{public}.2f,altRateUnc,%{public}.2f", buf, 0x34u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    sub_101912E28(buf);
    v27 = 134350081;
    v28 = a3;
    v29 = 2049;
    v30 = a4;
    v31 = 2050;
    v32 = a5;
    v33 = 2050;
    v34 = a6;
    v35 = 2050;
    v36 = a7;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:invalid altRateUnc,time_mct,%{public}.3f,alt,%{private}.2f,altUnc,%{public}.2f,altRate,%{public}.2f,altRateUnc,%{public}.2f", &v27, 52);
    v21 = v20;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::LCFusionAltitudePropagator::initialize(const CFTimeInterval, const double, const double, const double, const double, const LCFusionDynamicsMode &)", "%s\n", v20);
LABEL_41:
    if (v21 != buf)
    {
      free(v21);
    }

    return 0;
  }

  v22 = v12 - 1;
  if (v22 > 9)
  {
    v23 = 1600.0;
  }

  else
  {
    v23 = dbl_101C897B0[v22];
  }

  if (a6 * a6 > v23)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v24 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134350081;
      v38 = a3;
      v39 = 2049;
      v40 = a4;
      v41 = 2050;
      v42 = a5;
      v43 = 2050;
      v44 = a6;
      v45 = 2050;
      v46 = a7;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "KFCV:invalid altRate,time_mct,%{public}.3f,alt,%{private}.2f,altUnc,%{public}.2f,altRate,%{public}.2f,altRateUnc,%{public}.2f", buf, 0x34u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 0;
    }

    sub_101912E28(buf);
    v27 = 134350081;
    v28 = a3;
    v29 = 2049;
    v30 = a4;
    v31 = 2050;
    v32 = a5;
    v33 = 2050;
    v34 = a6;
    v35 = 2050;
    v36 = a7;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:invalid altRate,time_mct,%{public}.3f,alt,%{private}.2f,altUnc,%{public}.2f,altRate,%{public}.2f,altRateUnc,%{public}.2f", &v27, 52);
    v21 = v25;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::LCFusionAltitudePropagator::initialize(const CFTimeInterval, const double, const double, const double, const double, const LCFusionDynamicsMode &)", "%s\n", v25);
    goto LABEL_41;
  }

  *a1 = a4;
  *(a1 + 8) = a5 * a5;
  *(a1 + 16) = a6;
  *(a1 + 24) = a7 * a7;
  *(a1 + 32) = 0;
  *(a1 + 40) = a6;
  *(a1 + 48) = a3;
  if (a5 < 1.0)
  {
    *(a1 + 8) = 0x3FF0000000000000;
  }

  v16 = 1;
  *(a1 + 56) = 1;
  return v16;
}

void sub_100218AD8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_100218AE4(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  *(a3 + 8) = *a3;
  *(a4 + 8) = *a4;
  v4 = *(a1 + 248);
  if (v4)
  {
    v5 = a2;
    v6 = a2[5];
    if (v6 > 0.0)
    {
      __asm { FMOV            V1.2D, #-1.0 }

      v15 = xmmword_101C75BF0;
      v43 = _Q1;
      do
      {
        v45 = off_1024DE5F8;
        v46 = _Q1;
        v47 = v15;
        v48 = v15;
        v49 = _Q1;
        v50 = _Q1;
        v51 = 0xBFF0000000000000;
        v52 = 0;
        v53 = 0;
        if (*(v4 + 214))
        {
          v16 = v4[8];
          if (v16)
          {
            if (*(*(v4[4] + 8 * ((v16 + v4[7] - 1) / 0x1AuLL)) + 152 * ((v16 + v4[7] - 1) % 0x1AuLL) + 148) == 1)
            {
              v17 = sub_10002A8E4((v4 + 25), v6, &v45);
              v15 = xmmword_101C75BF0;
              _Q1 = v43;
              if (v17)
              {
                v6 = *&v47;
                if (*&v47 > 0.0)
                {
                  v44 = 0.0;
                  if (sub_100218DFC(a1, v5, &v45, &v44))
                  {
                    v18 = v47;
                    v20 = *(a3 + 8);
                    v19 = *(a3 + 16);
                    if (v20 >= v19)
                    {
                      v22 = (v20 - *a3) >> 4;
                      v23 = v22 + 1;
                      if ((v22 + 1) >> 60)
                      {
                        goto LABEL_40;
                      }

                      v24 = v19 - *a3;
                      if (v24 >> 3 > v23)
                      {
                        v23 = v24 >> 3;
                      }

                      if (v24 >= 0x7FFFFFFFFFFFFFF0)
                      {
                        v25 = 0xFFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v25 = v23;
                      }

                      if (v25)
                      {
                        sub_1003E5FE8(a3, v25);
                      }

                      v26 = (16 * v22);
                      *v26 = v44;
                      *(v26 + 1) = v18;
                      v21 = 16 * v22 + 16;
                      v27 = *(a3 + 8) - *a3;
                      v28 = 16 * v22 - v27;
                      memcpy(v26 - v27, *a3, v27);
                      v29 = *a3;
                      *a3 = v28;
                      *(a3 + 8) = v21;
                      *(a3 + 16) = 0;
                      if (v29)
                      {
                        operator delete(v29);
                      }

                      v5 = a2;
                    }

                    else
                    {
                      *v20 = v44;
                      *(v20 + 1) = v18;
                      v21 = (v20 + 2);
                    }

                    *(a3 + 8) = v21;
                  }

                  sub_1002190E4(a1, v5, &v45);
                  v44 = v6;
                  v30 = v47;
                  v32 = *(a4 + 8);
                  v31 = *(a4 + 16);
                  if (v32 >= v31)
                  {
                    v34 = (v32 - *a4) >> 4;
                    v35 = v34 + 1;
                    if ((v34 + 1) >> 60)
                    {
LABEL_40:
                      sub_10028C64C();
                    }

                    v36 = v31 - *a4;
                    if (v36 >> 3 > v35)
                    {
                      v35 = v36 >> 3;
                    }

                    if (v36 >= 0x7FFFFFFFFFFFFFF0)
                    {
                      v37 = 0xFFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v37 = v35;
                    }

                    if (v37)
                    {
                      sub_1003E5FE8(a4, v37);
                    }

                    v38 = 16 * v34;
                    *v38 = v6;
                    *(v38 + 8) = v30;
                    v33 = 16 * v34 + 16;
                    v39 = *(a4 + 8) - *a4;
                    v40 = 16 * v34 - v39;
                    memcpy((v38 - v39), *a4, v39);
                    v41 = *a4;
                    *a4 = v40;
                    *(a4 + 8) = v33;
                    *(a4 + 16) = 0;
                    if (v41)
                    {
                      operator delete(v41);
                    }

                    v5 = a2;
                    v15 = xmmword_101C75BF0;
                    _Q1 = v43;
                  }

                  else
                  {
                    *v32 = v6;
                    *(v32 + 8) = v30;
                    v33 = v32 + 16;
                    v15 = xmmword_101C75BF0;
                    _Q1 = v43;
                  }

                  *(a4 + 8) = v33;
                }
              }
            }
          }
        }

        v4 = *v4;
      }

      while (v4);
    }
  }
}

uint64_t sub_100218DFC(float64x2_t *a1, double *a2, double *a3, double *a4)
{
  v29 = 0.0;
  v30 = 0.0;
  if (a2[7] <= 0.0)
  {
    v7 = a3;
  }

  else
  {
    v7 = a2;
  }

  if (sub_100208760(a1 + 149, &v30, &v29, a2[3], v7[6]))
  {
    v12 = a2[3];
    v13 = a3[3];
    *v11.i64 = a2[4] * 0.0174532925;
    *v9.i64 = a3[4] * 0.0174532925;
    v10.i64[0] = 0x400921FB54442D18;
    v26 = v10;
    if (fabs(*v11.i64) > 3.14159265)
    {
      v14.f64[0] = NAN;
      v14.f64[1] = NAN;
      v22 = *vbslq_s8(vnegq_f64(v14), v10, v11).i64;
      v24 = v9;
      *v8.i64 = fmod(*v11.i64 + v22, 6.28318531);
      v9 = v24;
      v10 = v26;
      *v11.i64 = *v8.i64 - v22;
    }

    if (fabs(*v9.i64) > *v10.i64)
    {
      v15.f64[0] = NAN;
      v15.f64[1] = NAN;
      v23 = *vbslq_s8(vnegq_f64(v15), v10, v9).i64;
      v25 = v11.i64[0];
      *v8.i64 = fmod(*v9.i64 + v23, 6.28318531);
      v11.i64[0] = v25;
      v10 = v26;
      *v9.i64 = *v8.i64 - v23;
    }

    *v8.i64 = *v11.i64 - *v9.i64;
    if (vabdd_f64(*v11.i64, *v9.i64) > *v10.i64)
    {
      v16.f64[0] = NAN;
      v16.f64[1] = NAN;
      v27 = *vbslq_s8(vnegq_f64(v16), v10, v8).i64;
      *v8.i64 = fmod(*v8.i64 + v27, 6.28318531) - v27;
    }

    v17 = a2[5] * a2[5] * 0.5 + a3[5] * a3[5] * 0.5;
    if (v17 != 0.0)
    {
      *a4 = sqrt(1.0 / v17 * ((v12 - v13) * 0.0174532925 * v30 * ((v12 - v13) * 0.0174532925 * v30)) + *v8.i64 * 57.2957795 * 0.0174532925 * v29 * (*v8.i64 * 57.2957795 * 0.0174532925 * v29) * (1.0 / v17));
      return 1;
    }

    return 0;
  }

  if (qword_1025D4770 != -1)
  {
    sub_100224830();
  }

  v19 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "#Error, calc_dNdE failed.", buf, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101A7B5F4(buf);
    v28[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "#Error, calc_dNdE failed.", v28, 2);
    v21 = v20;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::computeInterHypothesisMahalanobisDistance(const LCFusionProviderLocation &, const LCFusionProviderLocation &, double &)", "%s\n", v20);
    if (v21 != buf)
    {
      free(v21);
    }

    return 0;
  }

  return result;
}

void sub_1002190D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100219110(uint64_t result, double **a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v3 = *(result + 24);
    v4 = result + 56;
    do
    {
      if (*(v2 + 28) >= v3)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 28) < v3));
    }

    while (v2);
    if (v4 != result + 56 && v3 >= *(v4 + 28))
    {
      v5 = *a2;
      v6 = a2[1];
      if (*a2 != v6)
      {
        v7 = *result;
        do
        {
          v8 = *v5;
          v9 = *v5 <= 0.0 || v8 > v7;
          v10 = (v4 + 280);
          if (v9)
          {
            v11 = *(result + 8);
            v12 = v8 <= v7 || v8 > v11;
            v10 = (v4 + 284);
            if (v12)
            {
              if (v8 <= v11 || (v10 = (v4 + 288), v8 > *(result + 16)))
              {
                v10 = (v4 + 292);
              }
            }
          }

          ++*v10;
          v5 += 2;
        }

        while (v5 != v6);
        *(v4 + 32) = 1;
      }
    }
  }

  return result;
}

uint64_t sub_1002191D8(uint64_t result, double **a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v3 = *(result + 24);
    v4 = result + 56;
    do
    {
      if (*(v2 + 28) >= v3)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 28) < v3));
    }

    while (v2);
    if (v4 != result + 56 && v3 >= *(v4 + 28))
    {
      v5 = *a2;
      v6 = a2[1];
      if (*a2 != v6)
      {
        result = 240;
        do
        {
          v7 = v5[1];
          if (v7 > 0.0)
          {
            v8 = *v5;
            if (v7 <= 50.0)
            {
              v10 = v8 <= 0.0 || v8 > 50.0;
              v9 = (v4 + 232);
              if (v10)
              {
                v11 = v8 <= 50.0 || v8 > 100.0;
                v9 = (v4 + 236);
                if (v11)
                {
                  if (v8 > 200.0 || v8 <= 100.0)
                  {
                    v13 = 244;
                  }

                  else
                  {
                    v13 = 240;
                  }

                  v9 = (v4 + v13);
                }
              }
            }

            else
            {
              v9 = (v4 + 196);
              if (v8 <= 500.0)
              {
                goto LABEL_32;
              }
            }

            ++*v9;
            *(v4 + 32) = 1;
          }

LABEL_32:
          v5 += 2;
        }

        while (v5 != v6);
      }
    }
  }

  return result;
}

void sub_1002192F8(uint64_t result, int *a2, __int128 *a3)
{
  v5 = *a2;
  if (*a2 > 0x16)
  {
LABEL_9:
    if (*(result + 520) > 0.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018754D8();
      }

      v16 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v17 = *a2;
        v24[0] = 67240192;
        v24[1] = v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,wifi,unhandled notification,%{public}d", v24, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101875710(a2);
      }
    }

    return;
  }

  if (((1 << v5) & 0x1B) != 0)
  {
    v7 = sub_10018E7E0(a3);
    v8 = *(a3 + 63);
    if (!v7)
    {
      v8 = -1.0;
    }

    *(result + 64) = v8;
    v9 = a3[6];
    v10 = a3[7];
    v11 = a3[8];
    *(result + 292) = *(a3 + 140);
    *(result + 264) = v10;
    *(result + 280) = v11;
    *(result + 248) = v9;
    v12 = a3[2];
    v13 = a3[3];
    v14 = a3[4];
    *(result + 232) = a3[5];
    *(result + 216) = v14;
    *(result + 200) = v13;
    *(result + 184) = v12;
    v15 = *a3;
    *(result + 168) = a3[1];
    *(result + 152) = v15;
    return;
  }

  if (v5 != 9)
  {
    if (v5 == 22)
    {
      return;
    }

    goto LABEL_9;
  }

  *(result + 152) = 0xFFFF;
  *(result + 164) = 0;
  *(result + 156) = 0;
  *(result + 172) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(result + 188) = _Q0;
  *(result + 204) = _Q0;
  *(result + 220) = _Q0;
  *(result + 236) = 0;
  *(result + 248) = 0;
  *(result + 256) = 0;
  *(result + 240) = 0xBFF0000000000000;
  *(result + 264) = 0;
  *(result + 268) = 0xBFF0000000000000;
  *(result + 276) = 0x7FFFFFFF;
  *(result + 288) = 0;
  *(result + 296) = 0;
  *(result + 280) = 0;
  *(result + 304) = 0;
  *&_Q0 = *(result + 520);
  *(result + 64) = 0xBFF0000000000000;
  if (*&_Q0 > 0.0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018754D8();
    }

    v23 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v24[0]) = 0;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,wifi,unavailable", v24, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101875634();
    }
  }
}

double *sub_100219604(double *result, double *a2, double a3, double a4)
{
  if (a4 <= 0.0)
  {
    a3 = *result;
  }

  *result = a3;
  v4 = *a2;
  if (a4 > 0.0)
  {
    v4 = a4;
  }

  *a2 = v4;
  return result;
}

void sub_100219660(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = *(a2 + 768);
  a1[1] = *(a2 + 768) != 0;
  v5 = *(a2 + 504);
  *(a1 + 2) = v5;
  if (v4)
  {
    *(a1 + 1) = v5;
    if (*a1)
    {
      v4 = 1;
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_101A67320();
      }

      v7 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v14) = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "LocationController,Associated WiFi location without association", &v14, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101A67334();
      }

      *a1 = 1;
      *(a1 + 3) = *(a2 + 504);
      v4 = a1[1];
    }
  }

  if (v3 == v4)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101A670F8();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v9 = *a1;
      v10 = a1[1];
      v14 = 67240448;
      v15 = v9;
      v16 = 1026;
      v17 = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "LocationController,WifiAssoc,%{public}d,AssocLoc,%{public}d,Location", &v14, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A67534();
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101A670F8();
    }

    v11 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *a1;
      v13 = a1[1];
      v14 = 67240448;
      v15 = v12;
      v16 = 1026;
      v17 = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "LocationController,WifiAssoc,%{public}d,AssocLoc,%{public}d,Location", &v14, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A67444();
    }
  }
}

void sub_1002198B0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1) == 1)
  {
    if (*(a1 + 8))
    {
      v4 = sub_100027FB4(a2);
      if (v4)
      {
        v6 = sub_10000B1F8(v4, v5);
        sub_10000AED4(v6, buf);
        v7 = *&v37[2];
        if (*&v37[2] - *(a1 + 80) >= 1.0 && *&v37[2] - *(a1 + 72) >= 1.0)
        {
          if (qword_1025D4600 != -1)
          {
            sub_10193CF9C();
          }

          v8 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#HST, Updating with Wifi location", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10193D0F8();
          }

          v10 = sub_100219BA8(a1, 4, a2);
          if (v10 > 0.0)
          {
            v12 = v10;
            v13 = v11;
            sub_100226DAC(a1, v9, v10, v11);
            *(a1 + 80) = v7;
            sub_100226E7C(a1);
            if (qword_1025D4600 != -1)
            {
              sub_10193CF9C();
            }

            v14 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              v15 = *(a1 + 3);
              v16 = *(a1 + 256);
              v17 = *(a1 + 258);
              *buf = 134219008;
              v35 = v12;
              v36 = 2048;
              *v37 = v13;
              *&v37[8] = 1024;
              v38 = v15;
              v39 = 1024;
              v40 = v16;
              v41 = 1024;
              v42 = v17;
              _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#HST,speed,%f,speedSigma,%f,source,Wifi,isHighSpeedTransit,%d,isAboveAutomobileSpeed,%d,isSmoothTrajectory,%d", buf, 0x28u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4600 != -1)
              {
                sub_10193CF9C();
              }

              v18 = *(a1 + 3);
              v19 = *(a1 + 256);
              v20 = *(a1 + 258);
              v24 = 134219008;
              v25 = v12;
              v26 = 2048;
              v27 = v13;
              v28 = 1024;
              v29 = v18;
              v30 = 1024;
              v31 = v19;
              v32 = 1024;
              v33 = v20;
              LODWORD(v23) = 40;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "#HST,speed,%f,speedSigma,%f,source,Wifi,isHighSpeedTransit,%d,isAboveAutomobileSpeed,%d,isSmoothTrajectory,%d", COERCE_DOUBLE(&v24), v23);
              v22 = v21;
              sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerHighSpeedTransitDetector::updateWithWifiLocation(const CLLocationProvider_Type::NotificationData &)", "%s\n", v21);
              if (v22 != buf)
              {
                free(v22);
              }
            }
          }
        }
      }
    }
  }
}

double sub_100219BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return -1.0;
  }

  sub_1001E45DC(a2, &v12, *(a3 + 76) + -300.0, *(a3 + 76) + -60.0, *(a1 + 8));
  v4 = v12;
  v5 = v13;
  if (v13 != v12)
  {
    v6 = 1.79769313e308;
    v7 = -1.0;
    while (1)
    {
      v5 -= 156;
      sub_100226CA0(v4, v5, a3);
      if (v7 == -1.0 || v9 < v6)
      {
        v7 = v8;
        if (v9 < 10.0)
        {
          v4 = v12;
          if (v12)
          {
            goto LABEL_16;
          }

          return v7;
        }

        v6 = v9;
      }

      v4 = v12;
      if (v5 == v12)
      {
        if (v12)
        {
          goto LABEL_16;
        }

        return v7;
      }
    }
  }

  v7 = -1.0;
  if (v12)
  {
LABEL_16:
    v13 = v4;
    operator delete(v4);
  }

  return v7;
}

void sub_100219CB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100219CD0(uint64_t a1)
{
  if (qword_1025D4640 != -1)
  {
    sub_101A4014C();
  }

  v2 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 2658);
    v6[0] = 67240192;
    v6[1] = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Stop emergency acquisition, %{public}d", v6, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A41190(a1);
  }

  if (*(a1 + 2658) == 1)
  {
    *(a1 + 2658) = 0;
    if (_os_feature_enabled_impl())
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A40160();
      }

      v4 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v6[0]) = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Stopped emergency acquisition", v6, 2u);
      }

      if (sub_10000A100(121, 2))
      {
LABEL_20:
        sub_101A4127C();
      }
    }

    else
    {
      [*(*(a1 + 2224) + 16) unregister:*(*(a1 + 2224) + 8) forNotification:0];
      if (qword_1025D4640 != -1)
      {
        sub_101A40160();
      }

      v5 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v6[0]) = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Stopped emergency acquisition", v6, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        goto LABEL_20;
      }
    }
  }
}

uint64_t sub_100219EB8(uint64_t a1)
{
  if (*(a1 + 2368))
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4014C();
    }

    v2 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Fence: cancelLocationWatchdog", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A42C88();
    }

    [*(a1 + 2368) setNextFireDelay:1.79769313e308];
    *(a1 + 2656) = 0;
    if (*(a1 + 3032))
    {
      sub_10000AED0();
      Current = CFAbsoluteTimeGetCurrent();
      sub_10000EC00(&__p, "NoLocationWatchdog");
      sub_100220CA4(&__p, 3u, buf, Current, -1.0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_10021CB90(*(a1 + 3032), buf);
      sub_10000CE1C(buf);
    }
  }

  else
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4014C();
    }

    v4 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Fence: cancelLocationWatchdog, ignore, shutdown?", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A42D6C();
    }
  }

  result = (*(*a1 + 408))(a1);
  if (result)
  {
    v6.n128_f64[0] = CFAbsoluteTimeGetCurrent();
    result = sub_100CBF338(a1 + 120, v6);
  }

  if (*(a1 + 2448) >= 1)
  {
    return sub_10026ED10(a1 + 2440);
  }

  return result;
}

void sub_10021A094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10000CE1C(&a16);
  _Unwind_Resume(a1);
}

void sub_10021A0C4(uint64_t a1, double a2)
{
  if (*(a1 + 752))
  {
    if (*(a1 + 612) == 1 && (*(a1 + 730) != 1 || (*(a1 + 731) & 1) != 0))
    {
      if (sub_10021D1B8(a1))
      {
        if (*(a1 + 623))
        {
          v4 = vabdd_f64(a2, *(a1 + 744));
          v5 = *(a1 + 736) - v4 * 45.0;
          if (v4 >= 1800.0)
          {
            v5 = 0.0;
          }

          if (v5 > 0.0)
          {
            v6 = v5;
          }

          else
          {
            v6 = 0.0;
          }

          v7 = fmin(fmax(v6 / 45.0 * 0.5, *(a1 + 720)), 3600.0);
          v21 = v7;
          if (qword_1025D4640 != -1)
          {
            sub_101A4C9EC();
          }

          v8 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            v9 = *(a1 + 736);
            *buf = 134284033;
            *v29 = v7;
            *&v29[8] = 2049;
            v30 = v9;
            v31 = 2049;
            v32 = v6;
            _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "scheduleNextTrackingWake, next wake in, %{private}.1lf, seconds, fMinDistanceToFence, %{private}.1lf, minDistanceToFence, %{private}.1lf", buf, 0x20u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v18 = *(a1 + 736);
            v22 = 134284033;
            v23 = v7;
            v24 = 2049;
            v25 = v18;
            v26 = 2049;
            v27 = v6;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "scheduleNextTrackingWake, next wake in, %{private}.1lf, seconds, fMinDistanceToFence, %{private}.1lf, minDistanceToFence, %{private}.1lf", &v22, 32);
            v20 = v19;
            sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::scheduleNextTrackingWake(const CFAbsoluteTime)", "%s\n", v19);
            if (v20 != buf)
            {
              free(v20);
            }
          }

          v10 = vabdd_f64(v7 + a2, *(a1 + 624));
          if (v10 >= 30.0)
          {
            *(a1 + 624) = (*(**(a1 + 1768) + 152))(*(a1 + 1768), &v21);
            sub_100312400(a1 + 1312);
          }

          else
          {
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v11 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134283521;
              *v29 = v10;
              _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "scheduleNextTrackingWake, intervalSinceLastDate is too low, %{private}.1lf", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A50CE8();
            }
          }
        }

        else
        {
          *(a1 + 624) = (*(**(a1 + 1768) + 144))(*(a1 + 1768));
          if (qword_1025D4640 != -1)
          {
            sub_101A4C9EC();
          }

          v17 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "Fence: scheduleNextTrackingWake, continous tracking is disabled", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A50C0C();
          }
        }
      }

      else
      {
        *(a1 + 624) = (*(**(a1 + 1768) + 144))(*(a1 + 1768));
        if (qword_1025D4640 != -1)
        {
          sub_101A4C9EC();
        }

        v16 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "Fence: scheduleNextTrackingWake, all fences are low power ones", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A50B30();
        }
      }
    }

    else
    {
      *(a1 + 624) = (*(**(a1 + 1768) + 144))(*(a1 + 1768));
      if (qword_1025D4640 != -1)
      {
        sub_101A4C9EC();
      }

      v13 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(a1 + 728);
        v15 = *(a1 + 730);
        *buf = 67240448;
        *v29 = v14;
        *&v29[4] = 1026;
        *&v29[6] = v15;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Fence: scheduleNextTrackingWake, location services not enabled, airplane, %{public}d, cConnected, %{public}d", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A50A34();
      }
    }
  }

  else
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C9EC();
    }

    v12 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Fence: scheduleNextTrackingWake - disabled", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A50958();
    }
  }
}

void sub_10021A660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A5A37C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLSignalEnvironmentProvider::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A5A390();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLSignalEnvironmentProvider::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10021A824(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10021A824(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 20);
  if (v4 < 0.0 || v4 > 2500.0 || !sub_100020608(*(a4 + 4), *(a4 + 12)))
  {
    return;
  }

  v7 = *(result + 128);
  if (!v7)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101A5A204();
    }

    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "#Error,CLSE,onLocationNotification,null CSE pointer", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A5A69C();
    }

    return;
  }

  v35 = 0;
  v9 = *(result + 120);
  v8 = *(result + 124);
  v10 = *(a4 + 4);
  v11 = *(a4 + 12);
  if (*(result + 479) < 0)
  {
    sub_100007244(__p, *(result + 456), *(result + 464));
  }

  else
  {
    *__p = *(result + 456);
    v34 = *(result + 472);
  }

  *(result + 120) = sub_10021AEBC(v7, __p, (result + 156), v10, v11);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  *(result + 124) = 1;
  sub_10021BB98(result);
  if (*(result + 488) != 1 || *(a4 + 20) >= 50.0 || *(result + 120) != 3)
  {
LABEL_23:
    v15 = 0;
    v16 = *(result + 492);
    if (v16 > 2)
    {
      if (v16 != 3 && v16 != 4 && v16 != 6)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v16 == -1)
      {
        goto LABEL_33;
      }

      if (v16 != 1 && v16 != 2)
      {
LABEL_32:
        *(result + 120) = v15;
LABEL_33:
        v17 = *(result + 496);
        if (v17 > 0)
        {
          if (v17 == 1 || v17 == 2)
          {
            *(result + 124) = v17;
LABEL_43:
            if (v9 != *(result + 120) || v8 != v17)
            {
              LODWORD(v35) = *(result + 120);
              HIDWORD(v35) = v17;
              if (qword_1025D4650 != -1)
              {
                sub_101A5A310();
              }

              v18 = qword_1025D4658;
              if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
              {
                v19 = *(result + 120);
                v20 = *(result + 124);
                *buf = 67240960;
                v45 = v9;
                v46 = 1026;
                v47 = v19;
                v48 = 1026;
                v49 = v8;
                v50 = 1026;
                v51 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "CLSE,fromSignalEnv,%{public}d,toSignalEnv,%{public}d,fromSignalEnvFidelityLevel,%{public}d,toSignalEnvFidelityLevel,%{public}d", buf, 0x1Au);
              }

              if (!sub_10000A100(121, 2))
              {
                goto LABEL_50;
              }

              bzero(buf, 0x65CuLL);
              if (qword_1025D4650 != -1)
              {
                sub_101A5A310();
              }

              v26 = *(result + 120);
              v27 = *(result + 124);
              v36 = 67240960;
              v37 = v9;
              v38 = 1026;
              v39 = v26;
              v40 = 1026;
              v41 = v8;
              v42 = 1026;
              v43 = v27;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "CLSE,fromSignalEnv,%{public}d,toSignalEnv,%{public}d,fromSignalEnvFidelityLevel,%{public}d,toSignalEnvFidelityLevel,%{public}d", &v36, 26);
              v29 = v28;
              sub_100152C7C("Generic", 1, 0, 2, "void CLSignalEnvironmentProvider::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v28);
              if (v29 == buf)
              {
                goto LABEL_50;
              }

              goto LABEL_69;
            }

            return;
          }
        }

        else
        {
          if (v17 == -1)
          {
            v17 = *(result + 124);
            goto LABEL_43;
          }

          if (!v17)
          {
            goto LABEL_41;
          }
        }

        v17 = 0;
LABEL_41:
        *(result + 124) = 0;
        goto LABEL_43;
      }
    }

    v15 = *(result + 492);
    goto LABEL_32;
  }

  v13 = *(result + 480);
  if (v13)
  {
    v14 = sub_1002D6398(v13, *(a4 + 4), *(a4 + 12));
    if (v14)
    {
      *(result + 120) = v14;
      *(result + 124) = 2;
    }

    sub_1002D7F8C(*(result + 480), a4, 1);
    goto LABEL_23;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101A5A310();
  }

  v21 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "#Error,CLSE,onLocationNotification,null HRSE pointer", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101A5A5B0();
  }

  v22 = *(result + 124);
  if (v9 != *(result + 120) || v8 != v22)
  {
    LODWORD(v35) = *(result + 120);
    HIDWORD(v35) = v22;
    if (qword_1025D4650 != -1)
    {
      sub_101A5A310();
    }

    v23 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v24 = *(result + 120);
      v25 = *(result + 124);
      *buf = 67240960;
      v45 = v9;
      v46 = 1026;
      v47 = v24;
      v48 = 1026;
      v49 = v8;
      v50 = 1026;
      v51 = v25;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "CLSE,fromSignalEnv,%{public}d,toSignalEnv,%{public}d,fromSignalEnvFidelityLevel,%{public}d,toSignalEnvFidelityLevel,%{public}d", buf, 0x1Au);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_50;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101A5A310();
    }

    v30 = *(result + 120);
    v31 = *(result + 124);
    v36 = 67240960;
    v37 = v9;
    v38 = 1026;
    v39 = v30;
    v40 = 1026;
    v41 = v8;
    v42 = 1026;
    v43 = v31;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "CLSE,fromSignalEnv,%{public}d,toSignalEnv,%{public}d,fromSignalEnvFidelityLevel,%{public}d,toSignalEnvFidelityLevel,%{public}d", &v36, 26);
    v29 = v32;
    sub_100152C7C("Generic", 1, 0, 2, "void CLSignalEnvironmentProvider::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v32);
    if (v29 == buf)
    {
      goto LABEL_50;
    }

LABEL_69:
    free(v29);
LABEL_50:
    *buf = 0;
    (*(*result + 152))(result, buf, &v35, 1, 0xFFFFFFFFLL, 0);
  }
}

void sub_10021AE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10021AEBC(uint64_t a1, const char *a2, _BYTE *a3, double a4, long double a5)
{
  v11 = a1 + 8;
  v10 = *(a1 + 8);
  v56 = a1 + 8;
  (*(v10 + 16))(a1 + 8);
  v57 = 256;
  sub_1001D08A4(a5);
  v12 = (a4 + 90.0) * 20.0;
  v14 = v13 * 20.0;
  v15 = *a1;
  if ((*a1 & 0x80000000) == 0)
  {
    v16 = *(a1 + 4);
    if ((v16 & 0x80000000) == 0 && v14 - (v16 + 1) < 0.005 && v16 - v14 < 0.005 && v12 - (v15 + 1) < 0.005 && v15 - v12 < 0.005)
    {
      *a3 = 0;
      v17 = *(a1 + 24);
      goto LABEL_70;
    }
  }

  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  memset(v62, 0, sizeof(v62));
  v66 = 0;
  v67 = 0;
  *a3 = 1;
  if (qword_1025D4650 != -1)
  {
    sub_101B72618();
  }

  v18 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v19 = a2;
    if (a2[23] < 0)
    {
      v19 = *a2;
    }

    *buf = 136446210;
    v61 = *&v19;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "CLSE,getSignalEnvironment,opening,%{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101B7262C();
    }

    v48 = a2;
    if (a2[23] < 0)
    {
      v48 = *a2;
    }

    v58 = 136446210;
    v59 = *&v48;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "CLSE,getSignalEnvironment,opening,%{public}s", &v58, 12);
    v50 = v49;
    sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLCoarseSignalEnvironmentDataManager::getSignalEnvironment(double, double, std::string, BOOL &)", "%s\n", v49);
    if (v50 != buf)
    {
      free(v50);
    }
  }

  v20 = a2;
  if (a2[23] < 0)
  {
    v20 = *a2;
  }

  v66 = fopen(v20, "rb");
  if (!v66)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B7262C();
    }

    v27 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v28 = a2;
      if (a2[23] < 0)
      {
        v28 = *a2;
      }

      *buf = 136446210;
      v61 = *&v28;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_INFO, "#Warning,CLSE,getSignalEnvironment,could not open,%{public}s", buf, 0xCu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_67;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101B7262C();
    }

    if (a2[23] < 0)
    {
      a2 = *a2;
    }

    v58 = 136446210;
    v59 = *&a2;
    LODWORD(v54) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "#Warning,CLSE,getSignalEnvironment,could not open,%{public}s", &v58, v54);
    v30 = v29;
    sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLCoarseSignalEnvironmentDataManager::getSignalEnvironment(double, double, std::string, BOOL &)", "%s\n", v29);
    goto LABEL_102;
  }

  if ((sub_101212424(v62) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B7262C();
    }

    v31 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v32 = a2;
      if (a2[23] < 0)
      {
        v32 = *a2;
      }

      *buf = 136446210;
      v61 = *&v32;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_INFO, "#Warning,CLSE,getSignalEnvironment,could not read,%{public}s", buf, 0xCu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_67;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101B7262C();
    }

    if (a2[23] < 0)
    {
      a2 = *a2;
    }

    v58 = 136446210;
    v59 = *&a2;
    LODWORD(v54) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "#Warning,CLSE,getSignalEnvironment,could not read,%{public}s", &v58, v54);
    v30 = v33;
    sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLCoarseSignalEnvironmentDataManager::getSignalEnvironment(double, double, std::string, BOOL &)", "%s\n", v33);
    goto LABEL_102;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v22 = *&v64;
  v23 = DWORD2(v64);
  if (Current <= v22 + v23 + (random() % 86400))
  {
    *a3 = 0;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B7262C();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "CLSE,getSignalEnvironment,file has expired - redownload", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B72654(buf);
      LOWORD(v58) = 0;
      LODWORD(v54) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "CLSE,getSignalEnvironment,file has expired - redownload", &v58, v54);
      v26 = v25;
      sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLCoarseSignalEnvironmentDataManager::getSignalEnvironment(double, double, std::string, BOOL &)", "%s\n", v25);
      if (v26 != buf)
      {
        free(v26);
      }
    }
  }

  if (BYTE8(v63) != 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B7262C();
    }

    v39 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "CLSE,getSignalEnvironment,file version does not match expected", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_67;
    }

    sub_101B72654(buf);
    LOWORD(v58) = 0;
    LODWORD(v54) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "CLSE,getSignalEnvironment,file version does not match expected", &v58, v54);
    v30 = v51;
    sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLCoarseSignalEnvironmentDataManager::getSignalEnvironment(double, double, std::string, BOOL &)", "%s\n", v51);
    goto LABEL_102;
  }

  v34 = v14;
  v35 = v12;
  if (SBYTE10(v63) > a4 || SBYTE11(v63) <= a4)
  {
    *a1 = v35;
    *(a1 + 4) = v34;
    *(a1 + 24) = 0;
    if (qword_1025D4650 != -1)
    {
      sub_101B7262C();
    }

    v41 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 134545665;
      v61 = a4;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_INFO, "#Warning,CLSE,getSignalEnvironment,latitude,%{sensitive}.9lf,out of range", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B72654(buf);
      v58 = 134545665;
      v59 = a4;
      LODWORD(v54) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "#Warning,CLSE,getSignalEnvironment,latitude,%{sensitive}.9lf,out of range", &v58, v54);
      v53 = v52;
      sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLCoarseSignalEnvironmentDataManager::getSignalEnvironment(double, double, std::string, BOOL &)", "%s\n", v52);
      if (v53 != buf)
      {
        free(v53);
      }
    }

    v17 = *(a1 + 24);
    goto LABEL_68;
  }

  v36 = (v34 + 7200 * (v35 - 20 * SBYTE10(v63) - 1800)) / 2;
  __ptr = 0;
  if (v36 >= HIDWORD(v64))
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B7262C();
    }

    v42 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 67240192;
      LODWORD(v61) = v36;
      _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_INFO, "#Warning,CLSE,getSignalEnvironment,byte index,%{public}d,is larger than the data available in the coarse signal environment binary file", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_67;
    }

    sub_101B72654(buf);
    v58 = 67240192;
    LODWORD(v59) = v36;
    LODWORD(v54) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "#Warning,CLSE,getSignalEnvironment,byte index,%{public}d,is larger than the data available in the coarse signal environment binary file", &v58, v54);
    v30 = v43;
    sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLCoarseSignalEnvironmentDataManager::getSignalEnvironment(double, double, std::string, BOOL &)", "%s\n", v43);
    goto LABEL_102;
  }

  v37 = v66;
  fseek(v66, v36, 1);
  if (fread(&__ptr, 1uLL, 1uLL, v37) != 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101B7262C();
    }

    v44 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_INFO, "#Warning,CLSE,getSignalEnvironment,invalid coarse signal environment file - unable to get data byte", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_67;
    }

    sub_101B72654(buf);
    LOWORD(v58) = 0;
    LODWORD(v54) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "#Warning,CLSE,getSignalEnvironment,invalid coarse signal environment file - unable to get data byte", &v58, v54);
    v30 = v45;
    sub_100152C7C("Generic", 1, 0, 2, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLCoarseSignalEnvironmentDataManager::getSignalEnvironment(double, double, std::string, BOOL &)", "%s\n", v45);
    goto LABEL_102;
  }

  v38 = __ptr >> 4;
  if ((v34 & 1) == 0)
  {
    v38 = __ptr & 0xF;
  }

  if (v38 < 7 && ((0x4Fu >> v38) & 1) != 0)
  {
    v17 = dword_101D24D68[v38];
    *(a1 + 24) = v17;
    *a1 = v35;
    *(a1 + 4) = v34;
    goto LABEL_68;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101B7262C();
  }

  v46 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_ERROR, "#Error,CLSE,getSignalEnvironment,unexpected case,potential file corruption", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101B72654(buf);
    LOWORD(v58) = 0;
    LODWORD(v54) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 16, "#Error,CLSE,getSignalEnvironment,unexpected case,potential file corruption", &v58, v54);
    v30 = v47;
    sub_100152C7C("Generic", 1, 0, 0, "CLSignalEnvironmentProvider_Type::SignalEnvironmentType CLCoarseSignalEnvironmentDataManager::getSignalEnvironment(double, double, std::string, BOOL &)", "%s\n", v47);
LABEL_102:
    if (v30 != buf)
    {
      free(v30);
    }
  }

LABEL_67:
  v17 = 0;
LABEL_68:
  if (v66)
  {
    fclose(v66);
  }

LABEL_70:
  (*(*v11 + 24))(v11);
  return v17;
}

void sub_10021BB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v9 = *(v7 + 136);
  if (v9)
  {
    fclose(v9);
  }

  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_10021BB98(uint64_t a1)
{
  if (*(a1 + 156) == 1 && vabdd_f64(CFAbsoluteTimeGetCurrent(), *(a1 + 144)) > *(a1 + 152) * 21.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101A5A204();
    }

    v2 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 408);
      if (*(a1 + 431) < 0)
      {
        v3 = *v3;
      }

      v4 = (a1 + 432);
      if (*(a1 + 455) < 0)
      {
        v4 = *v4;
      }

      *buf = 136446722;
      *&buf[4] = v3;
      v11 = 2082;
      v12 = v4;
      v13 = 2050;
      v14 = 0x4035000000000000;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLSE,download request,url,%{public}s,storeTo,%{public}s,retryInterval,%{public}.1lf", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A5A788(a1);
    }

    *(a1 + 144) = CFAbsoluteTimeGetCurrent();
    *buf = 0x404E000000000000;
    v5 = (a1 + 408);
    if (*(a1 + 431) < 0)
    {
      v5 = *v5;
    }

    v6 = (a1 + 432);
    if (*(a1 + 455) < 0)
    {
      v6 = *v6;
    }

    if (sub_1005DCFEC(a1 + 160, v5, v6, buf))
    {
      v9[0] = 3628799.0;
      if (sub_100254C0C(a1 + 160, &dbl_101CF74B8, v9))
      {
        v9[0] = CFAbsoluteTimeGetCurrent() + 21.0 + -0.5;
        sub_1005DD610(a1 + 160, v9);
        return;
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101A5A310();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v9[0]) = 0;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLSE,could not setUpdateSource AVL file updater", v9, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A5A8C8();
      }
    }

    if (qword_1025D4650 != -1)
    {
      sub_101A5A310();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLSE,could not setUpdateRate AVl file updater", v9, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A5A9AC();
    }
  }
}

BOOL sub_10021BE40(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v2 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 840);
      v5[0] = 67240192;
      v5[1] = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#fusion,purging,fused hypothesis with empty buffer is erased,hID,%{public}d", v5, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7BBB0(a1);
    }
  }

  return *(a1 + 56) == 0;
}

uint64_t sub_10021BF2C(uint64_t result, double **a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v3 = *(result + 24);
    v4 = result + 56;
    do
    {
      if (*(v2 + 28) >= v3)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 28) < v3));
    }

    while (v2);
    if (v4 != result + 56 && v3 >= *(v4 + 28))
    {
      v5 = a2[1];
      v6 = *a2;
      if (*a2 != v5)
      {
        *(v4 + 32) = 1;
        v7 = *(v4 + 248);
        v8 = *(v4 + 252);
        v9 = *(v4 + 256);
        v10 = *(v4 + 260);
        v11 = v6;
        v12 = *result;
        do
        {
          v13 = *v11;
          if (*v11 <= 0.0 || v13 > v12)
          {
            v15 = *(result + 8);
            if (v13 <= v12 || v13 > v15)
            {
              if (v13 > v15 && v13 <= *(result + 16))
              {
                *(v4 + 256) = ++v9;
              }

              else
              {
                *(v4 + 260) = ++v10;
              }
            }

            else
            {
              *(v4 + 252) = ++v8;
            }
          }

          else
          {
            *(v4 + 248) = ++v7;
          }

          ++v11;
        }

        while (v11 != v5);
        v17 = v6 + 1;
        if (v6 + 1 != v5)
        {
          v18 = *v6;
          v19 = v6 + 1;
          do
          {
            v20 = *v19++;
            v21 = v20;
            if (v18 < v20)
            {
              v18 = v21;
              v6 = v17;
            }

            v17 = v19;
          }

          while (v19 != v5);
        }

        v22 = *v6;
        if (*(v4 + 56) < v22)
        {
          *(v4 + 56) = v22;
        }
      }
    }
  }

  return result;
}

id sub_10021C064(uint64_t a1, _OWORD *a2)
{
  v4 = [CLLocation alloc];
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v11[0] = a2[8];
  *(v11 + 12) = *(a2 + 140);
  v6 = a2[3];
  v10[2] = a2[2];
  v10[3] = v6;
  v7 = a2[5];
  v10[4] = a2[4];
  v10[5] = v7;
  v8 = a2[1];
  v10[0] = *a2;
  v10[1] = v8;
  return [*(a1 + 1096) updateCurrentLocation:{objc_msgSend(v4, "initWithClientLocation:", v10)}];
}

BOOL sub_10021C0E4(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v2 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 840);
      v5[0] = 67240192;
      v5[1] = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#fusion,purging,merged hypothesis with empty buffer is erased,hID,%{public}d", v5, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7BCA0(a1);
    }
  }

  return *(a1 + 56) == 0;
}

void sub_10021C1D0(uint64_t a1, uint64_t a2, double *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 512) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101745F84();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLBarometricAltimeter::onLocationDerivedNotificationBaro", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101745F98();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLBarometricAltimeter::onLocationDerivedNotificationBaro, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10021C394(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10021C394(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  if (sub_10001CF04(a1, a2))
  {
    v6 = a4[117];
    v7 = a4[119];
    v8 = a4[118];
    Current = CFAbsoluteTimeGetCurrent();
    if (qword_1025D4600 != -1)
    {
      sub_10023A174();
    }

    v11 = v6;
    v12 = v7;
    v10 = Current - v8;
    v13 = fabsf(v10);
    v14 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 1332);
      *buf = 67241472;
      v35 = v15;
      v36 = 2050;
      v37 = v11;
      v38 = 2050;
      v39 = v12;
      v40 = 2050;
      v41 = v8;
      v42 = 2050;
      v43 = Current;
      v44 = 2050;
      v45 = v13;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "BaroAlt,received WSB update, activity type,%{public}u,speed,%{public}.3lf,Unc,%{public}.3lf,timestamp,%{public}.3lf,curTime,%{public}.3lf,ageOfEstimation,%{public}.3lf", buf, 0x3Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_100312410();
      }

      v20 = *(a1 + 1332);
      v23[0] = 67241472;
      v23[1] = v20;
      v24 = 2050;
      v25 = v11;
      v26 = 2050;
      v27 = v12;
      v28 = 2050;
      v29 = v8;
      v30 = 2050;
      v31 = Current;
      v32 = 2050;
      v33 = v13;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "BaroAlt,received WSB update, activity type,%{public}u,speed,%{public}.3lf,Unc,%{public}.3lf,timestamp,%{public}.3lf,curTime,%{public}.3lf,ageOfEstimation,%{public}.3lf", v23, 58);
      v22 = v21;
      sub_100152C7C("Generic", 1, 0, 2, "void CLBarometricAltimeter::onLocationDerivedNotificationBaro(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v21);
      if (v22 != buf)
      {
        free(v22);
      }
    }

    v16 = *(a1 + 1332);
    if (v16 <= 0x38 && ((1 << v16) & 0x110000000000C20) != 0 && (*(a1 + 1336) - 1) <= 1 && *(a1 + 3577) == 1 && v13 <= 180.0 && v11 >= 0.0 && v11 <= 13.0 && v12 > 0.0 && v12 < 4.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_100312410();
      }

      v17 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "BaroAlt,received WSB update, turn GPS ON", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10174B610();
      }

      if (sub_10173EDB0(a1, Current))
      {
        sub_10173F59C(a1, 1, Current);
      }

      else
      {
        if (qword_1025D4600 != -1)
        {
          sub_100312410();
        }

        v19 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "BaroAlt,#Warning,no power budget to turn GPS ON", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10174B6EC();
        }
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_10023A174();
    }

    v18 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "BaroAlt,#Warning,ALS is not supported on legacy HW", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10174B534();
    }
  }
}

void sub_10021C7BC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 24) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B75BF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLHarvestControllerExternal::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B75C08();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "activity";
      v19 = 2050;
      v20 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLHarvestControllerExternal::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v12 = 0;
  }

  v10 = *a2;
  if (*a2 == 12)
  {
    *(a4 + 288) = *(a3 + 832);
  }

  sub_10022F398(*(a4 + 40), v7, v10, a3);
  if (v12 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_10021C9A8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 32);
  v4 = sub_1000183C0(*a2);
  sub_10021CA28(v3, v4);
  v5 = *(**a2 + 24);

  return v5();
}

void sub_10021CA28(uint64_t a1, int a2)
{
  sub_1000408C8(a2, __p);
  v3 = v8;
  v4 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v3 = __p[1];
  }

  if (v3)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018C5650();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v6 = __p;
      if ((v8 & 0x80u) != 0)
      {
        v6 = __p[0];
      }

      *buf = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:markReceivingLocationInformation, Client:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    (*(**(a1 + 48) + 64))(*(a1 + 48), __p);
    v4 = v8;
  }

  if ((v4 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10021CB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10021CB90(uint64_t a1, uint64_t a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - *(a1 + 8) > 43200.0)
  {
    if (qword_1025D4640 != -1)
    {
      sub_101886CBC();
    }

    v5 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (Current - *(a1 + 8));
      v7[0] = 67240192;
      v7[1] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "Fence: Output CLFenceLogEntrySerializer log opened for %{public}d seconds, re-opening", v7, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101886DD0((a1 + 8), Current);
    }

    sub_1004651F0(a1);
  }

  sub_100220FB8(*(a1 + 16), a2);
}

uint64_t sub_10021CCC0(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_35;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    LODWORD(v4) = 0;
    if ((*(a1 + 36) & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_13:
    v6 = *(a1 + 8);
    v7 = *(v6 + 23);
    v8 = v7;
    v9 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v10 = *(v6 + 23);
    }

    else
    {
      v10 = v9;
    }

    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
      v3 = *(a1 + 36);
      v8 = *(v6 + 23);
    }

    else
    {
      v11 = 1;
    }

    if (v8 < 0)
    {
      v7 = v9;
    }

    LODWORD(v4) = v4 + v11 + v7 + 1;
    goto LABEL_22;
  }

  v5 = *(a1 + 16);
  if ((v5 & 0x80000000) != 0)
  {
    LODWORD(v4) = 11;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (v5 >= 0x80)
    {
      LODWORD(v4) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 36);
      if ((v3 & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_13;
    }

    LODWORD(v4) = 2;
    if ((v3 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_22:
  if ((v3 & 4) != 0)
  {
    v4 = (v4 + 5);
  }

  else
  {
    v4 = v4;
  }

  if ((v3 & 8) != 0)
  {
    v12 = *(a1 + 24);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v4 = (v4 + v17 + v13 + 1);
  }

LABEL_35:
  *(a1 + 32) = v4;
  return v4;
}

uint64_t sub_10021CDFC(uint64_t result, uint64_t a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = a2;
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 16), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, v4, *(v5 + 20), a3);
      if ((*(v5 + 36) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_9:

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

void sub_10021CEA4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102480C38;
  sub_1002211C8(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10021CF0C(uint64_t result, unsigned int *a2, char a3, double a4)
{
  v4 = *a2;
  if (*a2 > 0xD)
  {
    return;
  }

  if (((1 << v4) & 0x2C1E) != 0)
  {
    goto LABEL_3;
  }

  if (((1 << v4) & 0x240) != 0)
  {
    if ((a3 & 1) == 0)
    {
      return;
    }

LABEL_3:

    sub_10021A0C4(result, a4);
    return;
  }

  if (v4 == 5)
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C9EC();
    }

    v5 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "false";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:skyhook is no longer supported, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4640 != -1)
      {
        goto LABEL_21;
      }
    }

    while (1)
    {
      v6 = off_1025D4648;
      if (os_signpost_enabled(off_1025D4648))
      {
        *buf = 68289539;
        v9 = 0;
        v10 = 2082;
        v11 = "";
        v12 = 2082;
        v13 = "assert";
        v14 = 2081;
        v15 = "false";
        _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "skyhook is no longer supported", "{msg%{public}.0s:skyhook is no longer supported, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D4640 != -1)
        {
          sub_101A4C980();
        }
      }

      v7 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v9 = 0;
        v10 = 2082;
        v11 = "";
        v12 = 2082;
        v13 = "assert";
        v14 = 2081;
        v15 = "false";
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:skyhook is no longer supported, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/Fence/CLFenceMonitor.mm", 3545, "checkPostponeContinuousTracking");
LABEL_21:
      sub_101A4C980();
    }
  }
}

BOOL sub_10021D1B8(uint64_t a1)
{
  v1 = *(a1 + 240);
  v2 = (a1 + 248);
  if (v1 == (a1 + 248))
  {
    return 0;
  }

  do
  {
    result = (v1[24] & 0x20) == 0;
    if ((v1[24] & 0x20) == 0)
    {
      break;
    }

    v4 = v1[1];
    if (v4)
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        v5 = v1[2];
        v6 = *v5 == v1;
        v1 = v5;
      }

      while (!v6);
    }

    v1 = v5;
  }

  while (v5 != v2);
  return result;
}

double sub_10021D21C(uint64_t a1)
{
  if (*(a1 + 2360))
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4014C();
    }

    v2 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Fence: cancelTrackingWake", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A42F34();
    }

    sub_10021D3CC(*(a1 + 2360));
    if (*(a1 + 3032))
    {
      sub_10000AED0();
      Current = CFAbsoluteTimeGetCurrent();
      sub_10022127C(*(a1 + 2360), &__p);
      sub_100220CA4(&__p, 3u, buf, Current, -1.0);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_10021CB90(*(a1 + 3032), buf);
      sub_10000CE1C(buf);
    }
  }

  else
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4014C();
    }

    v4 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Fence: ignoring, cancelTrackingWake, shutdown?", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A43018();
    }
  }

  return 0.0;
}

void sub_10021D39C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10000CE1C(&a16);
  _Unwind_Resume(a1);
}

id sub_10021D3CC(id *a1)
{
  [a1[3] assertInside];
  if (qword_1025D4870 != -1)
  {
    sub_10197ABFC();
  }

  v2 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1 + 4;
    if (*(a1 + 55) < 0)
    {
      v3 = *v3;
    }

    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Invalidate, %s", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10197B7AC(a1);
  }

  return [*a1 invalidate];
}

__n128 sub_10021D4C0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 2896);
  v3 = *(a1 + 2928);
  *(a2 + 96) = *(a1 + 2912);
  *(a2 + 112) = v3;
  *(a2 + 128) = *(a1 + 2944);
  v4 = *(a1 + 2832);
  v5 = *(a1 + 2864);
  *(a2 + 32) = *(a1 + 2848);
  *(a2 + 48) = v5;
  *(a2 + 64) = *(a1 + 2880);
  *(a2 + 80) = v2;
  result = *(a1 + 2816);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

double sub_10021D4FC(uint64_t a1, uint64_t a2, _DWORD *a3, char a4, int a5)
{
  v5 = *(a1 + 20);
  v27 = v5;
  if (v5 < 0.0)
  {
    return v5;
  }

  v10 = *(a1 + 96);
  v11 = 1;
  if (v10 <= 6)
  {
    if (v10 <= 3)
    {
      if ((v10 - 1) < 3)
      {
LABEL_5:
        if (a4)
        {
LABEL_6:
          v11 = 0;
          goto LABEL_41;
        }

        if (*sub_100226B68() == 1)
        {
          v15 = 0;
          if (sub_100226B68()[417] == 1 && !*a3)
          {
            v15 = sub_100302FAC(a1, a2, &v27);
          }

          if (*(a1 + 96) == 9)
          {
            v16 = 0;
          }

          else
          {
            v17 = v27;
            v16 = v17 <= *(sub_100226B68() + 31);
          }

          if ((v15 | v16))
          {
            goto LABEL_6;
          }

          v5 = v27;
        }

        v11 = 0;
        v13 = *(sub_100226B68() + 32) * v5;
LABEL_40:
        v27 = v13;
        goto LABEL_41;
      }

      if (v10)
      {
        goto LABEL_41;
      }

LABEL_53:
      if (qword_1025D4600 != -1)
      {
        sub_1019EC004();
      }

      v21 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
      {
        v22 = *(a1 + 96);
        *buf = 68289795;
        v29 = 0;
        v30 = 2082;
        v31 = "";
        v32 = 2049;
        v33 = v22;
        v34 = 2082;
        v35 = "assert";
        v36 = 2081;
        v37 = "false";
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:unsupported location type, type:%{private, location:CLLocationType}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        if (qword_1025D4600 != -1)
        {
          sub_1019EC018();
        }
      }

      v23 = qword_1025D4608;
      if (os_signpost_enabled(qword_1025D4608))
      {
        v24 = *(a1 + 96);
        *buf = 68289795;
        v29 = 0;
        v30 = 2082;
        v31 = "";
        v32 = 2049;
        v33 = v24;
        v34 = 2082;
        v35 = "assert";
        v36 = 2081;
        v37 = "false";
        _os_signpost_emit_with_name_impl(dword_100000000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "unsupported location type", "{msg%{public}.0s:unsupported location type, type:%{private, location:CLLocationType}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
        if (qword_1025D4600 != -1)
        {
          sub_1019EC018();
        }
      }

      v25 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        v26 = *(a1 + 96);
        *buf = 68289795;
        v29 = 0;
        v30 = 2082;
        v31 = "";
        v32 = 2049;
        v33 = v26;
        v34 = 2082;
        v35 = "assert";
        v36 = 2081;
        v37 = "false";
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_INFO, "{msg%{public}.0s:unsupported location type, type:%{private, location:CLLocationType}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/Fence/CLFenceMonitorLogic.mm", 264, "calcAdjustedHorizontalAccuracy");
    }

    if (v10 != 4)
    {
      if (v10 != 6)
      {
        goto LABEL_53;
      }

      v5 = v5 * *(sub_100226B68() + 34);
      v27 = v5;
LABEL_32:
      if (v5 >= *(sub_100226B68() + 40))
      {
        goto LABEL_41;
      }

      v13 = *(sub_100226B68() + 40);
      goto LABEL_40;
    }

LABEL_15:
    if ((a4 & 1) == 0)
    {
      if (*sub_100226B68())
      {
        goto LABEL_41;
      }

      if (*a3)
      {
        v14 = *(a1 + 20);
        if (v14 <= *(sub_100226B68() + 39))
        {
          v27 = *(sub_100226B68() + 37);
        }
      }
    }

    v12 = *(a1 + 20);
    if (v12 < *(sub_100226B68() + 37))
    {
      v13 = *(sub_100226B68() + 37);
      goto LABEL_40;
    }

    goto LABEL_41;
  }

  if (v10 <= 11)
  {
    if ((v10 - 10) < 2)
    {
      if (a4)
      {
        goto LABEL_41;
      }

      v13 = v5 * *(sub_100226B68() + 33);
      goto LABEL_40;
    }

    if (v10 != 7)
    {
      if (v10 != 9)
      {
        goto LABEL_41;
      }

      goto LABEL_5;
    }

    goto LABEL_32;
  }

  if (v10 == 13)
  {
    goto LABEL_15;
  }

  if (v10 == 12 || v10 == 14)
  {
    goto LABEL_53;
  }

LABEL_41:
  v18 = sub_100226B68();
  if (!a5 || (*v18 & 1) != 0)
  {
    return v27;
  }

  if (*a3 == 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v11;
  }

  v5 = v27;
  if ((v19 & 1) == 0 && v5 <= *(sub_100226B68() + 38))
  {
    return *(sub_100226B68() + 38);
  }

  return v5;
}

uint64_t sub_10021D984(uint64_t a1, double a2)
{
  v15 = *(a1 + 712) * (*(a1 + 708) + 1.0);
  v16 = a2;
  v2 = vdupq_lane_s64(*&a2, 0);
  v3 = vabdq_f64(v2, *(a1 + 864));
  v4 = vabdq_f64(v2, *(a1 + 848));
  v5 = vdupq_lane_s64(*&v15, 0);
  v6 = vabdd_f64(a2, *(a1 + 840)) <= v15;
  v7 = vmovn_s64(vcgeq_f64(v5, v4));
  v8 = vmovn_s64(vcgeq_f64(v5, v3));
  v9 = vabdd_f64(a2, *(a1 + 880)) <= v15;
  v10 = vabdd_f64(a2, *(a1 + 888)) <= v15;
  v11 = (vabdd_f64(a2, *(a1 + 896)) <= v15) << 12;
  v12 = sub_10021DB6C((a1 + 904), &v16, &v15);
  v13 = vorr_s8(vand_s8(v7, 0x2000000002), vand_s8(v8, 0x20000000040));
  return v13.i32[0] | v13.i32[1] | (v9 << 10) | v11 | (v10 << 11) | v12 | v6;
}

std::string *sub_10021DA88@<X0>(char a1@<W0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (a1)
  {
    v4 = "L";
  }

  else
  {
    v4 = ".";
  }

  std::string::append(a2, v4, 1uLL);
  if ((a1 & 2) != 0)
  {
    v5 = "C";
  }

  else
  {
    v5 = ".";
  }

  std::string::append(a2, v5, 1uLL);
  if ((a1 & 4) != 0)
  {
    v6 = "W";
  }

  else
  {
    v6 = ".";
  }

  std::string::append(a2, v6, 1uLL);
  if ((a1 & 8) != 0)
  {
    v7 = "P";
  }

  else
  {
    v7 = ".";
  }

  std::string::append(a2, v7, 1uLL);
  if ((a1 & 0x10) != 0)
  {
    v8 = "S";
  }

  else
  {
    v8 = ".";
  }

  return std::string::append(a2, v8, 1uLL);
}

void sub_10021DB50(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10021DB6C(float64x2_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = vdupq_lane_s64(*a2, 0);
  v4 = vabdq_f64(v3, a1[24]);
  v5 = vabdq_f64(v3, a1[23]);
  v6 = vdupq_lane_s64(*a3, 0);
  v7 = vorr_s8(vand_s8(vmovn_s64(vcgeq_f64(v6, v5)), 0x8000000004), vand_s8(vmovn_s64(vcgeq_f64(v6, v4)), 0x800000100));
  return v7.i32[0] | v7.i32[1] | (16 * (vabdd_f64(*a2, a1[25].f64[0]) <= *a3));
}

uint64_t sub_10021DBD8(uint64_t a1, double a2)
{
  v4 = *(a1 + 297);
  v5 = *(a1 + 304);
  if (qword_1025D4640 != -1)
  {
    sub_101A57534();
  }

  v6 = a2 - v5;
  v7 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 298);
    *buf = 67175169;
    v20 = v4;
    v21 = 1025;
    v22 = v8;
    v23 = 2049;
    v24 = v6;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "isRecalculate, %{private}d, fIsRecalculationPending, %{private}d, sinceLastRecalculationTrigger, %{private}.1lf", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4640 != -1)
    {
      sub_101A57EC0();
    }

    v11 = *(a1 + 298);
    v14[0] = 67175169;
    v14[1] = v4;
    v15 = 1025;
    v16 = v11;
    v17 = 2049;
    v18 = v6;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "isRecalculate, %{private}d, fIsRecalculationPending, %{private}d, sinceLastRecalculationTrigger, %{private}.1lf", v14, 24);
    v13 = v12;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLFenceMonitorWifi::recalculateIfNeeded(const CFAbsoluteTime)", "%s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  if (v4)
  {
    sub_100CD14E8(a1);
    *(a1 + 304) = a2;
  }

  else if ((*(a1 + 298) & 1) == 0 && (*(**a1 + 80))())
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A57EC0();
    }

    v9 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Fence: power assertion no longer needed", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A57EE8();
    }

    (*(**a1 + 72))();
  }

  return v4;
}

void sub_10021DEC0(uint64_t a1, double a2)
{
  if (*sub_100229814() != 1)
  {
    return;
  }

  sub_10005FB68(v87);
  sub_10021FD3C(v83);
  v4 = sub_10021ED94(a1, v87, v83);
  v5 = v86;
  sub_10021FEA4(a1 + 48, a2);
  v6 = sub_1002230EC((a1 + 48));
  if (v6)
  {
    sub_100229878((a1 + 48), &v81);
    sub_100A2DEB4((v81 + 48), a1 + 288);
    v7 = sub_10095229C(a1 + 48, a2);
    if (v4)
    {
      sub_100A2DE74(v81 + 48, v5, a2);
      v8 = v5 < 2;
      v9 = v5 == 4;
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    if (qword_1025D4640 != -1)
    {
      sub_101A4C980();
    }

    v18 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      v19 = sub_10095223C((a1 + 48));
      if ((v20 & 1) == 0)
      {
        sub_100173BA0();
      }

      v21 = v19;
      v22 = (*(**(a1 + 1768) + 176))(*(a1 + 1768));
      *buf = 134219520;
      v112 = v21;
      v113 = 1024;
      *v114 = v7;
      *&v114[4] = 1024;
      *&v114[6] = v8;
      *v115 = 1024;
      *&v115[2] = v9;
      v116 = 1024;
      v117 = v5;
      v118 = 1024;
      v119 = v4;
      v120 = 1024;
      v121 = v22;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "converging state, evaluating ongoing, current attempt, %zu, expired, %d, exited area, %d, reached inside, %d, mostEnergeticProximityState, %d, wasProximityStateUpdated, %d, isConvergingStateGNSSInitialized, %d", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4C9A8(buf);
      v43 = off_1025D4648;
      v44 = sub_10095223C((a1 + 48));
      if ((v45 & 1) == 0)
      {
        sub_100173BA0();
      }

      v46 = v44;
      v47 = (*(**(a1 + 1768) + 176))(*(a1 + 1768));
      v100 = 134219520;
      v101 = v46;
      v102 = 1024;
      *v103 = v7;
      *&v103[4] = 1024;
      *&v103[6] = v8;
      *v104 = 1024;
      *&v104[2] = v9;
      v105 = 1024;
      v106 = v5;
      v107 = 1024;
      v108 = v4;
      v109 = 1024;
      v110 = v47;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v43, 0, "converging state, evaluating ongoing, current attempt, %zu, expired, %d, exited area, %d, reached inside, %d, mostEnergeticProximityState, %d, wasProximityStateUpdated, %d, isConvergingStateGNSSInitialized, %d", &v100, 48, v75, v76, v77, v78, v79);
      v49 = v48;
      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::evaluateConvergingState(const CFAbsoluteTime)", "%s\n", v48);
      if (v49 != buf)
      {
        free(v49);
      }
    }

    if (v7)
    {
      (*(**(a1 + 1768) + 208))(*(a1 + 1768), 3, a2);
    }

    else if (!v8 && !v9)
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v30 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
      {
        v31 = sub_10095223C((a1 + 48));
        if ((v32 & 1) == 0)
        {
          sub_100173BA0();
        }

        v33 = v31;
        sub_1009522F4(a1 + 48, a2);
        if ((v35 & 1) == 0)
        {
          sub_100173BA0();
        }

        *buf = 134218240;
        v112 = v33;
        v113 = 2048;
        *v114 = v34;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "converging state, current attempt, %zu, remaining time, %f, continuing", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A4C9A8(buf);
        v55 = off_1025D4648;
        v56 = sub_10095223C((a1 + 48));
        if ((v57 & 1) == 0)
        {
          sub_100173BA0();
        }

        v58 = v56;
        sub_1009522F4(a1 + 48, a2);
        if ((v60 & 1) == 0)
        {
          sub_100173BA0();
        }

        v100 = 134218240;
        v101 = v58;
        v102 = 2048;
        *v103 = v59;
        LODWORD(v74) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v55, 0, "converging state, current attempt, %zu, remaining time, %f, continuing", &v100, v74);
        v62 = v61;
        sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::evaluateConvergingState(const CFAbsoluteTime)", "%s\n", v61);
        if (v62 != buf)
        {
          free(v62);
        }
      }

      if (v4)
      {
        v36 = (*(**(a1 + 1768) + 176))(*(a1 + 1768));
        v37 = v86;
        if (v86 == 3)
        {
          v38 = 0;
        }

        else
        {
          v38 = v36;
        }

        if (v38 == 1)
        {
          if (qword_1025D4640 != -1)
          {
            sub_101A4C980();
          }

          v39 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEFAULT, "converging state, tearing down gnss session after exiting adjacent", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A4C9A8(buf);
            LOWORD(v100) = 0;
            LODWORD(v74) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 0, "converging state, tearing down gnss session after exiting adjacent", &v100, *&v74);
            v73 = v72;
            sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::evaluateConvergingState(const CFAbsoluteTime)", "%s\n", v72);
            if (v73 != buf)
            {
              free(v73);
            }
          }

          (*(**(a1 + 1768) + 192))(*(a1 + 1768));
          sub_100952120(v81, a2);
          v37 = v86;
        }

        sub_100CC35D8(a1, v37, a2, v84);
      }

      v12 = 0;
      goto LABEL_71;
    }

    if (qword_1025D4640 != -1)
    {
      sub_101A4C980();
    }

    v23 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      v24 = sub_10095223C((a1 + 48));
      if ((v25 & 1) == 0)
      {
        sub_100173BA0();
      }

      *buf = 134217984;
      v112 = v24;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "converging state, current attempt, %zu, ending", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4C9A8(buf);
      v50 = off_1025D4648;
      v51 = sub_10095223C((a1 + 48));
      if ((v52 & 1) == 0)
      {
        sub_100173BA0();
      }

      v100 = 134217984;
      v101 = v51;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v50, 0, "converging state, current attempt, %zu, ending", &v100);
      v54 = v53;
      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::evaluateConvergingState(const CFAbsoluteTime)", "%s\n", v53);
      if (v54 != buf)
      {
        free(v54);
      }
    }

    v26 = sub_100117154(v93, v94, *(a1 + 292), *(a1 + 300));
    *(v81 + 136) = v26;
    sub_100952684((a1 + 48), a2);
    if ((*(**(a1 + 1768) + 176))(*(a1 + 1768)))
    {
      (*(**(a1 + 1768) + 192))(*(a1 + 1768));
      sub_100952120(v81, a2);
    }

    v27 = (*(**(a1 + 1768) + 168))(*(a1 + 1768));
    v29 = sub_1008FA3C0(v27, v28);
    v75 = _NSConcreteStackBlock;
    v76 = 3321888768;
    v77 = sub_100CC34C8;
    v78 = &unk_1024A51F8;
    v79 = v81;
    v80 = v82;
    if (v82)
    {
      atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1008FA3F8(v29, @"com.apple.locationd.GeofenceConvergingState_v3", &v75);
    if (v7)
    {
      v12 = 4;
    }

    else if (v8)
    {
      (*(**(a1 + 1768) + 208))(*(a1 + 1768), 4, a2);
      v12 = 3;
    }

    else if (v9)
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    if (v80)
    {
      sub_100008080(v80);
    }

LABEL_71:
    if (v82)
    {
      sub_100008080(v82);
    }

    goto LABEL_73;
  }

  if (!v4)
  {
    v12 = 0;
    goto LABEL_73;
  }

  v10 = *(a1 + 128);
  v11 = sub_1002D7D88((a1 + 48));
  v12 = 0;
  if (v10 != 1 || (v5 & 0xFFFFFFFE) != 2)
  {
LABEL_73:
    if (!v12 && (v4 & v6) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  v13 = v11;
  if (v11 && (*(a1 + 729) & 1) == 0)
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C980();
    }

    v40 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v87[0];
      if (v88 >= 0)
      {
        v41 = v87;
      }

      v42 = v89;
      if (v90 < 0)
      {
        v42 = v89[0];
      }

      *buf = 136380931;
      v112 = v41;
      v113 = 2081;
      *v114 = v42;
      _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEFAULT, "converging state, starting new attempt. fence %{private}s/%{private}s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4C9A8(buf);
      v68 = v87[0];
      if (v88 >= 0)
      {
        v68 = v87;
      }

      v69 = v89;
      if (v90 < 0)
      {
        v69 = v89[0];
      }

      v100 = 136380931;
      v101 = v68;
      v102 = 2081;
      *v103 = v69;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 0, "converging state, starting new attempt. fence %{private}s/%{private}s", &v100, 22);
      v71 = v70;
      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::evaluateConvergingState(const CFAbsoluteTime)", "%s\n", v70);
      if (v71 != buf)
      {
        free(v71);
      }
    }

    sub_100952354((a1 + 48), v87, v89, a2);
    (*(**(a1 + 1768) + 208))(*(a1 + 1768), 1, a2);
    sub_100CC35D8(a1, v5, a2, v84);
    v12 = 1;
  }

  else
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C980();
    }

    v14 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v87[0];
      if (v88 >= 0)
      {
        v15 = v87;
      }

      v16 = v89;
      if (v90 < 0)
      {
        v16 = v89[0];
      }

      v17 = *(a1 + 729);
      *buf = 136381187;
      v112 = v15;
      v113 = 2081;
      *v114 = v16;
      *&v114[8] = 1024;
      *v115 = v17;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "converging state, out-of-budget, cannot start new attempt. fence %{private}s/%{private}s, lowPowerModeEnabled, %d", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4C9A8(buf);
      v63 = v87[0];
      if (v88 >= 0)
      {
        v63 = v87;
      }

      v64 = v89;
      if (v90 < 0)
      {
        v64 = v89[0];
      }

      v65 = *(a1 + 729);
      v100 = 136381187;
      v101 = v63;
      v102 = 2081;
      *v103 = v64;
      *&v103[8] = 1024;
      *v104 = v65;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 0, "converging state, out-of-budget, cannot start new attempt. fence %{private}s/%{private}s, lowPowerModeEnabled, %d", &v100, 28);
      v67 = v66;
      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::evaluateConvergingState(const CFAbsoluteTime)", "%s\n", v66);
      if (v67 != buf)
      {
        free(v67);
      }
    }

    v12 = 5;
    if (!v13)
    {
      (*(**(a1 + 1768) + 208))(*(a1 + 1768), 5, a2);
    }
  }

LABEL_75:
  (*(**(a1 + 1768) + 200))(*(a1 + 1768), v5, v12, v87);
LABEL_76:
  if (v4)
  {
    *(a1 + 128) = v5;
    *(a1 + 136) = v85;
  }

  if (__p)
  {
    v99 = __p;
    operator delete(__p);
  }

  if (v96 < 0)
  {
    operator delete(v95);
  }

  if (v92 < 0)
  {
    operator delete(v91);
  }

  if (v90 < 0)
  {
    operator delete(v89[0]);
  }

  if (v88 < 0)
  {
    operator delete(v87[0]);
  }
}

void sub_10021ECD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  if (a18)
  {
    sub_100008080(a18);
  }

  sub_1004BF9B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10021ED94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10005FB68(buf);
  sub_10021FD7C(a2, buf);
  if (__p)
  {
    v144 = __p;
    operator delete(__p);
  }

  if (v141 < 0)
  {
    operator delete(v140);
  }

  if (SBYTE7(v138) < 0)
  {
    operator delete(*&v137[16]);
  }

  if ((v137[15] & 0x80000000) != 0)
  {
    operator delete(*&buf[24]);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  sub_10021FD3C(buf);
  v6 = *&v137[16];
  *(a3 + 32) = *v137;
  *(a3 + 48) = v6;
  *(a3 + 64) = v138;
  *(a3 + 80) = v139;
  v7 = *&buf[16];
  *a3 = *buf;
  *(a3 + 16) = v7;
  if ((*sub_100229814() & 1) == 0 || (v8 = a1 + 240, v9 = *(a1 + 240), v10 = (a1 + 248), v9 == (a1 + 248)))
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      if ((v9[24] & 0xA0) == 0x80 && *(v9 + 16) <= 400.0 && (*(v9 + 220) & 1) == 0 && *(v9 + 53) != 2 && v9[33] == v9[32])
      {
        *v124 = v9[45];
        v12 = *(v9 + 41);
        v121 = *(v9 + 39);
        v122 = v12;
        v123 = *(v9 + 43);
        v13 = *(v9 + 37);
        v119 = *(v9 + 35);
        v120 = v13;
        sub_10005FB68(v107);
        __str = (v9 + 4);
        if (sub_1002D2820(a1, v9 + 2, v107))
        {
          if ((v113 & 1) == 0)
          {
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v14 = v8;
            v15 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
            {
              v16 = (v9 + 4);
              if (*(v9 + 55) < 0)
              {
                v16 = __str->__r_.__value_.__r.__words[0];
              }

              v17 = v9 + 7;
              if (*(v9 + 79) < 0)
              {
                v17 = *v17;
              }

              v18 = v107;
              if (v108 < 0)
              {
                v18 = v107[0];
              }

              v19 = v109;
              if (v110 < 0)
              {
                v19 = v109[0];
              }

              *buf = 136381443;
              *&buf[4] = v16;
              *&buf[12] = 2081;
              *&buf[14] = v17;
              *&buf[22] = 2081;
              *&buf[24] = v18;
              *v137 = 2081;
              *&v137[2] = v19;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "Fence %{private}s/%{private}s has helper fence %{private}s/%{private}s, but isHelperFence isn't set.", buf, 0x2Au);
            }

            v8 = v14;
            if (sub_10000A100(121, 0))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4640 != -1)
              {
                sub_101A4C980();
              }

              v71 = (v9 + 4);
              if (*(v9 + 55) < 0)
              {
                v71 = __str->__r_.__value_.__r.__words[0];
              }

              v72 = (v9 + 7);
              if (*(v9 + 79) < 0)
              {
                v72 = v72->isa;
              }

              v73 = v107;
              if (v108 < 0)
              {
                v73 = v107[0];
              }

              v74 = v109;
              if (v110 < 0)
              {
                v74 = v109[0];
              }

              *v125 = 136381443;
              *&v125[4] = v71;
              v126 = 2081;
              v127 = v72;
              v128 = 2081;
              v129 = v73;
              v130 = 2081;
              v131 = *&v74;
              LODWORD(v90) = 42;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 17, "Fence %{private}s/%{private}s has helper fence %{private}s/%{private}s, but isHelperFence isn't set.", v125, v90);
              v76 = v75;
              sub_100152C7C("Generic", 1, 0, 0, "BOOL CLFenceMonitor::getUpdatedProximityState(CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &) const", "%s\n", v75);
              if (v76 != buf)
              {
                free(v76);
              }

              v8 = v14;
            }
          }

          v20 = sub_100226C1C(v8, v107);
          if (v10 == v20)
          {
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v40 = v8;
            v41 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
            {
              v42 = (v9 + 4);
              if (*(v9 + 55) < 0)
              {
                v42 = __str->__r_.__value_.__r.__words[0];
              }

              v43 = v9 + 7;
              if (*(v9 + 79) < 0)
              {
                v43 = *v43;
              }

              v44 = v107;
              if (v108 < 0)
              {
                v44 = v107[0];
              }

              v45 = v109;
              if (v110 < 0)
              {
                v45 = v109[0];
              }

              *buf = 136315906;
              *&buf[4] = v42;
              *&buf[12] = 2080;
              *&buf[14] = v43;
              *&buf[22] = 2080;
              *&buf[24] = v44;
              *v137 = 2080;
              *&v137[2] = v45;
              _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_FAULT, "Fence %s/%s does not have monitoring status for helper fence %s/%s", buf, 0x2Au);
            }

            v8 = v40;
            if (sub_10000A100(121, 0))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4640 != -1)
              {
                sub_101A4C980();
              }

              v83 = (v9 + 4);
              if (*(v9 + 55) < 0)
              {
                v83 = __str->__r_.__value_.__r.__words[0];
              }

              v84 = (v9 + 7);
              if (*(v9 + 79) < 0)
              {
                v84 = v84->isa;
              }

              v85 = v107;
              if (v108 < 0)
              {
                v85 = v107[0];
              }

              v86 = v109;
              if (v110 < 0)
              {
                v86 = v109[0];
              }

              *v125 = 136315906;
              *&v125[4] = v83;
              v126 = 2080;
              v127 = v84;
              v128 = 2080;
              v129 = v85;
              v130 = 2080;
              v131 = *&v86;
              LODWORD(v90) = 42;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 17, "Fence %s/%s does not have monitoring status for helper fence %s/%s", v125, v90, v91, v92);
              v88 = v87;
              sub_100152C7C("Generic", 1, 0, 0, "BOOL CLFenceMonitor::getUpdatedProximityState(CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &) const", "%s\n", v87);
              if (v88 != buf)
              {
                free(v88);
              }

              v8 = v40;
            }
          }

          else
          {
            *v124 = *(v20 + 360);
            v21 = *(v20 + 328);
            v121 = *(v20 + 312);
            v122 = v21;
            v123 = *(v20 + 344);
            v22 = *(v20 + 296);
            v119 = *(v20 + 280);
            v120 = v22;
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v23 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
            {
              v24 = (v9 + 4);
              if (*(v9 + 55) < 0)
              {
                v24 = __str->__r_.__value_.__r.__words[0];
              }

              v25 = (v9 + 7);
              v99 = v8;
              v92 = v24;
              log = v23;
              if (*(v9 + 79) < 0)
              {
                v25 = *v25;
              }

              v91 = v25;
              v95 = a1;
              v97 = a2;
              if (v108 >= 0)
              {
                v26 = v107;
              }

              else
              {
                v26 = v107[0];
              }

              if (v110 >= 0)
              {
                v27 = v109;
              }

              else
              {
                v27 = v109[0];
              }

              sub_1002D7D58(v9 + 90, v125);
              v28 = SHIBYTE(v128);
              v29 = *v125;
              sub_1002D7D58(v124, v105);
              v30 = v125;
              if (v28 < 0)
              {
                v30 = v29;
              }

              v31 = v105;
              if (v106 < 0)
              {
                v31 = v105[0];
              }

              *buf = 136381955;
              *&buf[4] = v92;
              *&buf[12] = 2081;
              *&buf[14] = v91;
              *&buf[22] = 2081;
              *&buf[24] = v26;
              *v137 = 2081;
              *&v137[2] = v27;
              *&v137[10] = 2081;
              *&v137[12] = v30;
              *&v137[20] = 2081;
              *&v137[22] = v31;
              _os_log_impl(dword_100000000, log, OS_LOG_TYPE_DEBUG, "converging state, Fence %{private}s/%{private}s using monitoring status from helper fence %{private}s/%{private}s. Old proximity state: %{private}s, new proximity state: %{private}s", buf, 0x3Eu);
              if (v106 < 0)
              {
                operator delete(v105[0]);
              }

              a1 = v95;
              a2 = v97;
              v8 = v99;
              if (SHIBYTE(v128) < 0)
              {
                operator delete(*v125);
              }
            }

            if (sub_10000A100(121, 2))
            {
              v98 = a2;
              v100 = v8;
              v96 = a1;
              bzero(buf, 0x65CuLL);
              if (qword_1025D4640 != -1)
              {
                sub_101A4C980();
              }

              v91 = off_1025D4648;
              v92 = (v9 + 4);
              if (*(v9 + 55) < 0)
              {
                v92 = __str->__r_.__value_.__r.__words[0];
              }

              loga = (v9 + 7);
              if (*(v9 + 79) < 0)
              {
                loga = loga->isa;
              }

              if (v108 >= 0)
              {
                v32 = v107;
              }

              else
              {
                v32 = v107[0];
              }

              if (v110 >= 0)
              {
                v33 = v109;
              }

              else
              {
                v33 = v109[0];
              }

              sub_1002D7D58(v9 + 90, v105);
              v34 = v106;
              v35 = v105[0];
              sub_1002D7D58(v124, v103);
              v36 = v105;
              if (v34 < 0)
              {
                v36 = v35;
              }

              v37 = v103;
              if (v104 < 0)
              {
                v37 = v103[0];
              }

              *v125 = 136381955;
              *&v125[4] = v92;
              v126 = 2081;
              v127 = loga;
              v128 = 2081;
              v129 = v32;
              v130 = 2081;
              v131 = *&v33;
              v132 = 2081;
              v133 = v36;
              v134 = 2081;
              v135 = v37;
              LODWORD(v90) = 62;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v91, 2, "converging state, Fence %{private}s/%{private}s using monitoring status from helper fence %{private}s/%{private}s. Old proximity state: %{private}s, new proximity state: %{private}s", v125, v90);
              v39 = v38;
              if (v104 < 0)
              {
                operator delete(v103[0]);
              }

              if (v106 < 0)
              {
                operator delete(v105[0]);
              }

              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLFenceMonitor::getUpdatedProximityState(CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &) const", "%s\n", v39);
              if (v39 != buf)
              {
                free(v39);
              }

              a1 = v96;
              a2 = v98;
              v8 = v100;
            }
          }
        }

        if (*(&v123 + 1) <= *(a1 + 136))
        {
          if (qword_1025D4640 != -1)
          {
            sub_101A4C980();
          }

          v59 = v8;
          v60 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            v61 = (v9 + 4);
            if (*(v9 + 55) < 0)
            {
              v61 = __str->__r_.__value_.__r.__words[0];
            }

            v62 = v9 + 7;
            if (*(v9 + 79) < 0)
            {
              v62 = *v62;
            }

            v63 = *(a1 + 136) - *(&v123 + 1);
            *buf = 136381443;
            *&buf[4] = v61;
            *&buf[12] = 2081;
            *&buf[14] = v62;
            *&buf[22] = 2049;
            *&buf[24] = *(&v123 + 1);
            *v137 = 2049;
            *&v137[2] = v63;
            _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_DEBUG, "converging state, Fence %{private}s/%{private}s proximity state is stale. Last update timestamp: %{private}f (%{private}f seconds prior)", buf, 0x2Au);
          }

          v8 = v59;
          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            if (*(v9 + 55) < 0)
            {
              __str = __str->__r_.__value_.__r.__words[0];
            }

            v67 = (v9 + 7);
            if (*(v9 + 79) < 0)
            {
              v67 = v67->isa;
            }

            v68 = *(a1 + 136) - *(&v123 + 1);
            *v125 = 136381443;
            *&v125[4] = __str;
            v126 = 2081;
            v127 = v67;
            v128 = 2049;
            v129 = *(&v123 + 1);
            v130 = 2049;
            v131 = v68;
            LODWORD(v90) = 42;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "converging state, Fence %{private}s/%{private}s proximity state is stale. Last update timestamp: %{private}f (%{private}f seconds prior)", v125, v90);
            v70 = v69;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLFenceMonitor::getUpdatedProximityState(CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &) const", "%s\n", v69);
            if (v70 != buf)
            {
              free(v70);
            }

            v8 = v59;
          }
        }

        else if (v124[0] > *(a3 + 80))
        {
          v101 = v8;
          if (qword_1025D4640 != -1)
          {
            sub_101A4C980();
          }

          v46 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
          {
            v47 = (v9 + 4);
            if (*(v9 + 55) < 0)
            {
              v47 = __str->__r_.__value_.__r.__words[0];
            }

            v48 = v9 + 7;
            if (*(v9 + 79) < 0)
            {
              v48 = *v48;
            }

            sub_1002D7D58(v124, v125);
            v49 = v125;
            if (v128 < 0)
            {
              v49 = *v125;
            }

            *buf = 136381443;
            *&buf[4] = v47;
            *&buf[12] = 2081;
            *&buf[14] = v48;
            *&buf[22] = 2081;
            *&buf[24] = v49;
            *v137 = 2049;
            *&v137[2] = v120;
            _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEFAULT, "converging state, most energetic updated by fence %{private}s/%{private}s %{private}s. Distance: %{private}f", buf, 0x2Au);
            if (SHIBYTE(v128) < 0)
            {
              operator delete(*v125);
            }
          }

          v8 = v101;
          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v77 = off_1025D4648;
            v78 = (v9 + 4);
            if (*(v9 + 55) < 0)
            {
              v78 = __str->__r_.__value_.__r.__words[0];
            }

            v79 = (v9 + 7);
            if (*(v9 + 79) < 0)
            {
              v79 = v79->isa;
            }

            sub_1002D7D58(v124, v105);
            v80 = v105;
            if (v106 < 0)
            {
              v80 = v105[0];
            }

            *v125 = 136381443;
            *&v125[4] = v78;
            v126 = 2081;
            v127 = v79;
            v128 = 2081;
            v129 = v80;
            v130 = 2049;
            v131 = *&v120;
            LODWORD(v90) = 42;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v77, 0, "converging state, most energetic updated by fence %{private}s/%{private}s %{private}s. Distance: %{private}f", v125, v90);
            v82 = v81;
            if (v106 < 0)
            {
              operator delete(v105[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLFenceMonitor::getUpdatedProximityState(CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &) const", "%s\n", v82);
            if (v82 != buf)
            {
              free(v82);
            }

            v8 = v101;
          }

          v50 = v122;
          *(a3 + 32) = v121;
          *(a3 + 48) = v50;
          *(a3 + 64) = v123;
          *(a3 + 80) = *v124;
          v51 = v120;
          *a3 = v119;
          *(a3 + 16) = v51;
          std::string::operator=(a2, __str);
          std::string::operator=((a2 + 24), (v9 + 7));
          std::string::operator=((a2 + 48), (v9 + 10));
          v52 = *(v9 + 13);
          v53 = *(v9 + 15);
          v54 = *(v9 + 17);
          *(a2 + 120) = *(v9 + 19);
          *(a2 + 104) = v54;
          *(a2 + 88) = v53;
          *(a2 + 72) = v52;
          v55 = *(v9 + 21);
          v56 = *(v9 + 23);
          v57 = *(v9 + 25);
          *(a2 + 181) = *(v9 + 213);
          *(a2 + 168) = v57;
          *(a2 + 152) = v56;
          *(a2 + 136) = v55;
          std::string::operator=((a2 + 192), (v9 + 28));
          v58 = *(a2 + 216);
          *(a2 + 216) = v9[31];

          if (__str != a2)
          {
            sub_1006BA434((a2 + 224), v9[32], v9[33], (v9[33] - v9[32]) >> 4);
          }

          v11 = 1;
        }

        if (v117)
        {
          v118 = v117;
          operator delete(v117);
        }

        if (v115 < 0)
        {
          operator delete(v114);
        }

        if (v112 < 0)
        {
          operator delete(v111);
        }

        if (v110 < 0)
        {
          operator delete(v109[0]);
        }

        if (v108 < 0)
        {
          operator delete(v107[0]);
        }
      }

      v64 = v9[1];
      if (v64)
      {
        do
        {
          v65 = v64;
          v64 = *v64;
        }

        while (v64);
      }

      else
      {
        do
        {
          v65 = v9[2];
          v66 = *v65 == v9;
          v9 = v65;
        }

        while (!v66);
      }

      v9 = v65;
    }

    while (v65 != v10);
  }

  return v11 & 1;
}

double sub_10021FD3C(uint64_t a1)
{
  *a1 = -1;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 16) = xmmword_101CE6870;
  *(a1 + 32) = _Q1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xBFF0000000000000;
  result = 0.0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xBFF0000000000000;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_10021FD7C(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  v7 = *(a2 + 181);
  v8 = *(a2 + 168);
  v9 = *(a2 + 152);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = v9;
  *(a1 + 168) = v8;
  *(a1 + 181) = v7;
  v10 = *(a2 + 120);
  v11 = *(a2 + 104);
  v12 = *(a2 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v12;
  *(a1 + 104) = v11;
  *(a1 + 120) = v10;
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  v13 = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 192) = v13;
  *(a2 + 215) = 0;
  *(a2 + 192) = 0;
  v14 = *(a1 + 216);
  *(a1 + 216) = *(a2 + 27);
  *(a2 + 27) = 0;

  sub_10007057C(a1 + 224, a2 + 14);
  return a1;
}

void sub_10021FEA4(uint64_t a1, double a2)
{
  while (*(a1 + 64))
  {
    v4 = (*(*(a1 + 32) + ((*(a1 + 56) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a1 + 56));
    v5 = *v4;
    if (a2 - *(*v4 + 8) <= *(a1 + 8))
    {
      break;
    }

    v6 = v4[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (qword_1025D4640 != -1)
    {
      sub_101985BDC();
    }

    v7 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      if (*(v5 + 24) == 1)
      {
        v8 = *(v5 + 16);
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v5 + 8);
      *buf = 134218240;
      v20 = v9;
      v21 = 2048;
      v22 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "converging state, pruning previous attempt, startTime, %f, endTime, %f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4640 != -1)
      {
        sub_101985BDC();
      }

      v10 = *(v5 + 8);
      if (*(v5 + 24))
      {
        v11 = *(v5 + 16);
      }

      else
      {
        v11 = 0;
      }

      v15 = 134218240;
      v16 = v10;
      v17 = 2048;
      v18 = v11;
      LODWORD(v14) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "converging state, pruning previous attempt, startTime, %f, endTime, %f", COERCE_DOUBLE(&v15), v14);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceConvergenceStateBudget::pruneAttemptsPredatingTime(CFAbsoluteTime)", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    sub_1000143D4((a1 + 24));
    if (v6)
    {
      sub_100008080(v6);
    }
  }
}

void sub_10022012C(id *a1, void *a2)
{
  if (qword_1025D4640 != -1)
  {
    sub_101A4014C();
  }

  v4 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[333];
    v7 = 136380931;
    v8 = a2;
    v9 = 2049;
    v10 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Fence: releaseActivityAlarm, %{private}s, %{private}p", &v7, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A43C38(a2, a1);
  }

  v6 = a1[333];
  if (v6)
  {
    [v6 invalidate];

    a1[333] = 0;
  }
}

BOOL sub_100220238(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000206B4(a1, a2);
  v3 = off_10262F3D8;
  Current = CFAbsoluteTimeGetCurrent();
  return sub_100116D68(v2, v3, &Current);
}

double sub_100220284(uint64_t a1)
{
  *a1 = off_102452680;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 92) = 0;
  *(a1 + 84) = 0;
  *(a1 + 100) = 0;
  return result;
}

int8x16_t sub_1002202CC(int8x16_t *a1, uint64_t a2)
{
  *(a2 + 28) |= 3u;
  result = vextq_s8(*a1, *a1, 8uLL);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1002202E8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 100);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_53;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    v6 = *(qword_102636C98 + 8);
  }

  v7 = *(v6 + 36);
  if (*(v6 + 36))
  {
    v8 = (v7 << 31 >> 31) & 9;
    if ((v7 & 2) != 0)
    {
      v8 += 9;
    }

    if ((v7 & 4) != 0)
    {
      v7 = v8 + 9;
    }

    else
    {
      v7 = v8;
    }
  }

  *(v6 + 32) = v7;
  v4 = v7 + 2;
  v3 = *(a1 + 100);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v9 = *(a1 + 40);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 11;
    }

    else if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(a1 + 100);
    }

    else
    {
      v10 = 2;
    }

    v4 += v10;
  }

LABEL_21:
  if ((v3 & 4) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_23;
    }

LABEL_31:
    v15 = *(a1 + 24);
    if (!v15)
    {
      v15 = *(qword_102636C98 + 24);
    }

    v16 = sub_1001F4538(v15, a2);
    v17 = v16;
    if (v16 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
    }

    else
    {
      v18 = 1;
    }

    v4 += v17 + v18 + 1;
    v3 = *(a1 + 100);
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_37;
  }

  v11 = *(a1 + 16);
  if (!v11)
  {
    v11 = *(qword_102636C98 + 16);
  }

  v12 = sub_1001F4208(v11, a2);
  v13 = v12;
  if (v12 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
  }

  else
  {
    v14 = 1;
  }

  v4 += v13 + v14 + 1;
  v3 = *(a1 + 100);
  if ((v3 & 8) != 0)
  {
    goto LABEL_31;
  }

LABEL_23:
  if ((v3 & 0x10) != 0)
  {
LABEL_37:
    v19 = *(a1 + 32);
    if (!v19)
    {
      v19 = *(qword_102636C98 + 32);
    }

    v20 = sub_10010E6C8(v19, a2);
    v21 = v20;
    if (v20 >= 0x80)
    {
      v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2);
    }

    else
    {
      v22 = 1;
    }

    v4 += v21 + v22 + 1;
    v3 = *(a1 + 100);
  }

LABEL_43:
  v23 = ((v3 >> 4) & 2) + v4;
  if ((v3 & 0x40) != 0)
  {
    v5 = v23 + 9;
  }

  else
  {
    v5 = v23;
  }

  if ((v3 & 0x80) != 0)
  {
    v24 = *(a1 + 44);
    if ((v24 & 0x80000000) != 0)
    {
      v25 = 11;
    }

    else if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 1;
      v3 = *(a1 + 100);
    }

    else
    {
      v25 = 2;
    }

    v5 = (v25 + v5);
  }

LABEL_53:
  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v26 = *(a1 + 56);
      if (!v26)
      {
        v26 = *(qword_102636C98 + 56);
      }

      v27 = sub_1001F4C0C(v26);
      v28 = v27;
      if (v27 >= 0x80)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27, a2);
      }

      else
      {
        v29 = 1;
      }

      LODWORD(v5) = v5 + v28 + v29 + 1;
      v3 = *(a1 + 100);
      if ((v3 & 0x200) == 0)
      {
LABEL_56:
        if ((v3 & 0x400) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_74;
      }
    }

    else if ((v3 & 0x200) == 0)
    {
      goto LABEL_56;
    }

    v30 = *(a1 + 64);
    if (!v30)
    {
      v30 = *(qword_102636C98 + 64);
    }

    v31 = *(v30 + 28);
    v32 = (v31 << 31 >> 31) & 9;
    if ((v31 & 2) != 0)
    {
      v32 += 9;
    }

    if (*(v30 + 28))
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    *(v30 + 24) = v33;
    LODWORD(v5) = v5 + v33 + 2;
    v3 = *(a1 + 100);
    if ((v3 & 0x400) == 0)
    {
LABEL_57:
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_80;
    }

LABEL_74:
    v34 = *(a1 + 80);
    if (!v34)
    {
      v34 = *(qword_102636C98 + 80);
    }

    v35 = sub_1002AC9D0(v34, a2);
    v36 = v35;
    if (v35 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35, a2);
    }

    else
    {
      v37 = 1;
    }

    LODWORD(v5) = v5 + v36 + v37 + 1;
    v3 = *(a1 + 100);
    if ((v3 & 0x800) == 0)
    {
LABEL_58:
      if ((v3 & 0x1000) == 0)
      {
LABEL_95:
        v5 = ((v3 >> 12) & 2) + v5;
        goto LABEL_96;
      }

LABEL_86:
      v40 = *(a1 + 88);
      if (!v40)
      {
        v40 = *(qword_102636C98 + 88);
      }

      v41 = *(v40 + 36);
      if (*(v40 + 36))
      {
        v42 = (v41 << 31 >> 31) & 9;
        if ((v41 & 2) != 0)
        {
          v42 += 9;
        }

        if ((v41 & 4) != 0)
        {
          v41 = v42 + 9;
        }

        else
        {
          v41 = v42;
        }
      }

      *(v40 + 32) = v41;
      LODWORD(v5) = v5 + v41 + 2;
      v3 = *(a1 + 100);
      goto LABEL_95;
    }

LABEL_80:
    v38 = *(a1 + 76);
    if ((v38 & 0x80000000) != 0)
    {
      v39 = 11;
    }

    else if (v38 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v38, a2) + 1;
      v3 = *(a1 + 100);
    }

    else
    {
      v39 = 2;
    }

    LODWORD(v5) = v39 + v5;
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_95;
    }

    goto LABEL_86;
  }

LABEL_96:
  *(a1 + 96) = v5;
  return v5;
}

uint64_t sub_100220678(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 100);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102636C98 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 100);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 40), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_20:
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102636C98 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_23:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(qword_102636C98 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_26:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(qword_102636C98 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 72), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 48), a3);
  v6 = *(v5 + 100);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, *(v5 + 44), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_32:
  v11 = *(v5 + 56);
  if (!v11)
  {
    v11 = *(qword_102636C98 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v11, a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_35:
  v12 = *(v5 + 64);
  if (!v12)
  {
    v12 = *(qword_102636C98 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v12, a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_38:
  v13 = *(v5 + 80);
  if (!v13)
  {
    v13 = *(qword_102636C98 + 80);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v13, a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xC, *(v5 + 76), a2, a4);
  v6 = *(v5 + 100);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      return result;
    }

    goto LABEL_45;
  }

LABEL_42:
  v14 = *(v5 + 88);
  if (!v14)
  {
    v14 = *(qword_102636C98 + 88);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xD, v14, a2, a4);
  if ((*(v5 + 100) & 0x2000) != 0)
  {
LABEL_45:
    v15 = *(v5 + 73);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xE, v15, a2, a4);
  }

  return result;
}

void sub_1002208B8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452680;
  sub_100220920(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_100220920(void *result)
{
  if (qword_102636C98 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[7];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[8];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[10];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    result = v1[11];
    if (result)
    {
      v9 = *(*result + 8);

      return v9();
    }
  }

  return result;
}

void sub_100220AC8(uint64_t a1, unsigned int *a2, __int128 *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019E8ED4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLTilesManager::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019E8EE8();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLTilesManager::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100224224(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100220CA4(const std::string *a1, unsigned int a2, uint64_t a3, double a4, double a5)
{
  *(a3 + 52) |= 1u;
  v9 = *(a3 + 32);
  if (!v9)
  {
    operator new();
  }

  *(v9 + 44) |= 1u;
  *(v9 + 8) = a4;
  *(a3 + 52) |= 2u;
  v10 = *(a3 + 40);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 492) |= 0x4000000u;
  v11 = *(v10 + 464);
  if (!v11)
  {
    operator new();
  }

  if (a2 - 1 >= 3)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2;
  }

  if (!sub_10041ECF8(v12))
  {
    sub_101985574();
  }

  *(v11 + 36) |= 1u;
  *(v11 + 16) = v12;
  *(a3 + 52) |= 2u;
  v13 = *(a3 + 40);
  if (!v13)
  {
    operator new();
  }

  *(v13 + 492) |= 0x4000000u;
  v14 = *(v13 + 464);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 36) |= 2u;
  v15 = *(v14 + 8);
  if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v15, a1);
  if (a2 == 2)
  {
    *(a3 + 52) |= 2u;
    v16 = *(a3 + 40);
    if (!v16)
    {
      operator new();
    }

    *(v16 + 492) |= 0x4000000u;
    v17 = *(v16 + 464);
    if (!v17)
    {
      operator new();
    }

    v18 = a5;
    *(v17 + 36) |= 4u;
    *(v17 + 20) = v18;
  }
}

void *sub_100220F88(void *result)
{
  *result = off_102480C38;
  result[1] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  result[2] = 0;
  result[3] = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  result[4] = 0;
  return result;
}

void sub_100220FB8(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  if (wireless_diagnostics::google::protobuf::MessageLite::SerializeToString())
  {
    sub_1000145C0(a1, __p);
  }

  else
  {
    if (qword_1025D4730 != -1)
    {
      sub_1001F3464();
    }

    v3 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v4 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v4 = *v4;
      }

      *buf = 136446210;
      v13 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "ProtobufSerializer,%{public}s,serialize failed", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4730 != -1)
      {
        sub_1001F3464();
      }

      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v10 = 136446210;
      v11 = v5;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4738, 16, "ProtobufSerializer,%{public}s,serialize failed", &v10, 12);
      v7 = v6;
      sub_100152C7C("Generic", 1, 0, 0, "void CLProtobufSerializer::append(const ::google::protobuf::MessageLite &)", "%s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1002211A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002211C8(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  v3 = *(result + 24);
  if (v3 != &wireless_diagnostics::google::protobuf::internal::kEmptyString && v3 != 0)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  return result;
}

id sub_10022127C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = [*(a1 + 24) assertInside];
  if (*(a1 + 55) < 0)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return sub_100007244(a2, v5, v6);
  }

  else
  {
    *a2 = *(a1 + 32);
    *(a2 + 16) = *(a1 + 48);
  }

  return result;
}

__n128 sub_1002212E4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 128) = *(a1 + 2808);
  v2 = *(a1 + 2792);
  *(a2 + 96) = *(a1 + 2776);
  *(a2 + 112) = v2;
  v3 = *(a1 + 2728);
  *(a2 + 32) = *(a1 + 2712);
  *(a2 + 48) = v3;
  v4 = *(a1 + 2760);
  *(a2 + 64) = *(a1 + 2744);
  *(a2 + 80) = v4;
  result = *(a1 + 2696);
  *a2 = *(a1 + 2680);
  *(a2 + 16) = result;
  return result;
}

BOOL sub_100221314(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, int a5, uint64_t a6, double a7)
{
  v10 = *(a1 + 96);
  if (!v10)
  {
    if (qword_1025D4640 != -1)
    {
      sub_1019EC040();
    }

    v20 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_ERROR))
    {
      sub_100072AFC(a1, v202);
      v21 = v202[23] >= 0 ? v202 : *v202;
      LODWORD(buf.__r_.__value_.__l.__data_) = 136642819;
      *(buf.__r_.__value_.__r.__words + 4) = v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "Fence: location, why are you unknown?, %{sensitive}s", &buf, 0xCu);
      if ((v202[23] & 0x80000000) != 0)
      {
        operator delete(*v202);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019EC5E4(a1);
    }

    goto LABEL_36;
  }

  p_info = a3;
  v14 = *a4;
  v15 = 46;
  if (v10 > 7)
  {
    if (v10 <= 10)
    {
      if (v10 != 8)
      {
        if (v10 != 9)
        {
          v170 = 0;
          v18 = 0;
          v19 = 80;
          v17 = 46;
          v15 = 46;
          goto LABEL_35;
        }

        goto LABEL_29;
      }
    }

    else
    {
      if (v10 > 12)
      {
        if (v10 != 13)
        {
          v170 = 0;
          v18 = 0;
          v19 = 46;
          v17 = 46;
          if (v10 != 14)
          {
            goto LABEL_35;
          }

LABEL_76:
          p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
          if (qword_1025D4600 != -1)
          {
            sub_1019EC004();
          }

          v37 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
          {
            *v202 = 68289795;
            *&v202[8] = 2082;
            *&v202[10] = "";
            *&v202[18] = 2049;
            *&v202[20] = v10;
            *&v202[28] = 2082;
            v203 = "assert";
            *v204 = 2081;
            *&v204[2] = "false";
            _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:unsupported location type, type:%{private, location:CLLocationType}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v202, 0x30u);
            if (qword_1025D4600 != -1)
            {
              sub_1019EC018();
            }
          }

          v38 = qword_1025D4608;
          if (os_signpost_enabled(qword_1025D4608))
          {
            *v202 = 68289795;
            *&v202[8] = 2082;
            *&v202[10] = "";
            *&v202[18] = 2049;
            *&v202[20] = v10;
            *&v202[28] = 2082;
            v203 = "assert";
            *v204 = 2081;
            *&v204[2] = "false";
            _os_signpost_emit_with_name_impl(dword_100000000, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "unsupported location type", "{msg%{public}.0s:unsupported location type, type:%{private, location:CLLocationType}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v202, 0x30u);
            if (qword_1025D4600 != -1)
            {
              sub_1019EC018();
            }
          }

          a6 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
          {
            *v202 = 68289795;
            *&v202[8] = 2082;
            *&v202[10] = "";
            *&v202[18] = 2049;
            *&v202[20] = v10;
            *&v202[28] = 2082;
            v203 = "assert";
            *v204 = 2081;
            *&v204[2] = "false";
            _os_log_impl(dword_100000000, a6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:unsupported location type, type:%{private, location:CLLocationType}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v202, 0x30u);
          }

          abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/Fence/CLFenceMonitorLogic.mm", 797, "getStatusFromLocation");
          goto LABEL_364;
        }

LABEL_34:
        v170 = 0;
        v18 = 0;
        v19 = 46;
        v15 = 87;
        v17 = 46;
        goto LABEL_35;
      }

      if (v10 == 11)
      {
        goto LABEL_34;
      }
    }

    v18 = *a4;
    goto LABEL_37;
  }

  if (v10 <= 3)
  {
    v170 = 0;
    v18 = 0;
    v19 = 46;
    v17 = 46;
    if ((v10 - 1) >= 3)
    {
      goto LABEL_35;
    }

LABEL_29:
    v170 = 0;
    v18 = 0;
    v17 = 71;
    v19 = 46;
    goto LABEL_35;
  }

  if (v10 <= 5)
  {
    if (v10 != 4)
    {
      v18 = 0;
      goto LABEL_76;
    }

    goto LABEL_34;
  }

  v16 = v10 == 7;
  v17 = 46;
  if (v10 == 6)
  {
    v16 = 0;
  }

  v170 = v16;
  v18 = v10 == 6;
  v15 = 46;
  v19 = 46;
  if (v10 == 6)
  {
    v17 = 46;
  }

LABEL_35:
  v168 = v17;
  v169 = v19;
  v22 = sub_10021D4FC(a1, a2, a4, (*(a3 + 160) & 0x10) != 0, a5);
  if (v22 < 0.0)
  {
LABEL_36:
    v18 = *a4;
    goto LABEL_37;
  }

  v167 = v18;
  v18 = p_info + 224;
  if (p_info[29] != p_info[28])
  {
    if ((p_info[20] & 0x10) != 0)
    {
      v25 = sub_100AF6C88((a1 + 4), p_info + 28, *(a1 + 20));
    }

    else
    {
      *v202 = *(a1 + 4);
      v24 = *(a1 + 20);
      if (v24 >= *(sub_100226B68() + 43) || (v25 = sub_100AF6BFC(v202, p_info + 28)) != 0)
      {
        v26 = *(a1 + 20);
        if (v26 >= *(sub_100226B68() + 43) || (v27 = sub_100AF6D04(v202, (p_info + 28), 0), v27 >= *(sub_100226B68() + 44) * *(a1 + 20)))
        {
          v32 = *(sub_100226B68() + 45);
          v33 = *(a1 + 20);
          v34 = sub_100226B68();
          if (sub_100AF6C88((a1 + 4), p_info + 28, *(v34 + 46) + v32 * v33) == 1)
          {
            v25 = 1;
          }

          else
          {
            v25 = -1;
          }
        }

        else
        {
          v25 = 0;
        }
      }
    }

    if (v25 == -1)
    {
      v18 = *a4;
    }

    else
    {
      v18 = v25;
    }

    if (!v14)
    {
      goto LABEL_253;
    }

    goto LABEL_225;
  }

  v28 = v22;
  v29 = sub_100226BC0(p_info);
  v30 = sub_100226BC0(p_info);
  if ((p_info[20] & 0x10) != 0)
  {
    v29 = v29 + *(sub_100226B68() + 41) - v28;
    v30 = v28 + v30 + *(sub_100226B68() + 41);
    goto LABEL_106;
  }

  v31 = *a4;
  if (*(p_info + 12) >= 7000.0)
  {
    if (v31 == 1)
    {
      v29 = v29 - (v28 + *(sub_100226B68() + 8));
      v30 = v30 - (v28 + *(sub_100226B68() + 7));
      goto LABEL_106;
    }

    if (v31)
    {
      v29 = v29 - v28;
      v30 = v30 - v28;
      goto LABEL_106;
    }

    v29 = v29 + v28 + *(sub_100226B68() + 8);
    v35 = *(sub_100226B68() + 7);
    goto LABEL_65;
  }

  if (v31 < 2)
  {
    if (v10 > 6)
    {
      if (v10 > 11)
      {
        if (v10 != 13)
        {
          goto LABEL_106;
        }

        goto LABEL_90;
      }

      if ((v10 - 10) >= 2)
      {
        if (v10 != 7)
        {
          if (v10 != 9)
          {
            goto LABEL_106;
          }

          v29 = v29 * *(sub_100226B68() + 15);
          v36 = *(sub_100226B68() + 14);
          goto LABEL_105;
        }

        v41 = sub_100226B68();
        if (a5)
        {
          v35 = *(v41 + 12);
        }

        else
        {
          v35 = *(v41 + 13);
        }

        goto LABEL_65;
      }

LABEL_95:
      v18 = *sub_100226B68();
      v40 = sub_100226B68();
      if (v18 == 1)
      {
        if (a5)
        {
          v36 = v40[19];
        }

        else
        {
          v36 = v40[20];
        }
      }

      else if (a5)
      {
        v36 = v40[17];
      }

      else
      {
        v36 = v40[18];
      }

      goto LABEL_105;
    }

    if (v10 <= 3)
    {
      if ((v10 - 1) < 3)
      {
        goto LABEL_95;
      }

LABEL_106:
      if (v29 > 0.0)
      {
        goto LABEL_108;
      }

      goto LABEL_107;
    }

    if (v10 == 4)
    {
LABEL_90:
      v36 = *(sub_100226B68() + 16);
      goto LABEL_105;
    }

    v39 = sub_100226B68();
    if (!a5)
    {
      v36 = *(v39 + 11);
      goto LABEL_105;
    }

    v35 = *(v39 + 10);
LABEL_65:
    v36 = v28 + v35;
LABEL_105:
    v30 = v30 + v36;
    goto LABEL_106;
  }

  if (!a5 || v10 > 9 || ((1 << v10) & 0x2C0) == 0)
  {
    goto LABEL_106;
  }

  v30 = v30 + v28 + *(sub_100226B68() + 9);
LABEL_107:
  v29 = 0.0;
LABEL_108:
  if (v30 <= 0.0)
  {
    v30 = 0.0;
  }

  v42 = *(p_info + 12) < 7000.0 && (p_info[20] & 0x10) == 0;
  v43 = a7;
  if (v42)
  {
    v44 = 1.0;
    if (v10 <= 5)
    {
      if ((v10 - 1) >= 4)
      {
        goto LABEL_129;
      }
    }

    else
    {
      if (v10 > 0xE)
      {
        goto LABEL_318;
      }

      if (((1 << v10) & 0x2C00) == 0)
      {
        if (v10 == 9)
        {
          v45 = 0;
LABEL_122:
          if (*a4 == 1)
          {
            v46 = sub_100226B68();
            v47 = !v45;
            v48 = 192;
            v49 = 176;
            goto LABEL_126;
          }

          if (!*a4)
          {
            v46 = sub_100226B68();
            v47 = !v45;
            v48 = 184;
            v49 = 168;
LABEL_126:
            if (!v47)
            {
              v48 = v49;
            }

            v44 = *&v46[v48];
          }

LABEL_129:
          if (v28 * v44 <= a7)
          {
            v43 = a7 - v44 * v28;
          }

          else
          {
            v43 = 0.0;
          }

          goto LABEL_132;
        }

        if (((1 << v10) & 0x5000) == 0)
        {
LABEL_318:
          if ((v10 - 6) < 2)
          {
            v43 = a7;
            if (a5)
            {
              goto LABEL_132;
            }
          }

          goto LABEL_129;
        }

        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        if (qword_1025D4600 != -1)
        {
          sub_1019EC004();
        }

        v158 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
        {
          *v202 = 68289795;
          *&v202[8] = 2082;
          *&v202[10] = "";
          *&v202[18] = 2049;
          *&v202[20] = v10;
          *&v202[28] = 2082;
          v203 = "assert";
          *v204 = 2081;
          *&v204[2] = "false";
          _os_log_impl(dword_100000000, v158, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:unsupported location type, type:%{private, location:CLLocationType}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v202, 0x30u);
          if (qword_1025D4600 != -1)
          {
            sub_1019EC018();
          }
        }

        v159 = qword_1025D4608;
        if (os_signpost_enabled(qword_1025D4608))
        {
          *v202 = 68289795;
          *&v202[8] = 2082;
          *&v202[10] = "";
          *&v202[18] = 2049;
          *&v202[20] = v10;
          *&v202[28] = 2082;
          v203 = "assert";
          *v204 = 2081;
          *&v204[2] = "false";
          _os_signpost_emit_with_name_impl(dword_100000000, v159, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "unsupported location type", "{msg%{public}.0s:unsupported location type, type:%{private, location:CLLocationType}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v202, 0x30u);
          if (qword_1025D4600 != -1)
          {
            sub_1019EC018();
          }
        }

        a6 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          *v202 = 68289795;
          *&v202[8] = 2082;
          *&v202[10] = "";
          *&v202[18] = 2049;
          *&v202[20] = v10;
          *&v202[28] = 2082;
          v203 = "assert";
          *v204 = 2081;
          *&v204[2] = "false";
          _os_log_impl(dword_100000000, a6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:unsupported location type, type:%{private, location:CLLocationType}lld, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v202, 0x30u);
        }

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/Fence/CLFenceMonitorLogic.mm", 470, "adjustDistanceToFenceCenter");
LABEL_364:
        __break(1u);
        goto LABEL_365;
      }
    }

    v45 = *(sub_100226B68() + 30) >= v28;
    goto LABEL_122;
  }

LABEL_132:
  v166 = v14;
  if (v14 && v43 < v29)
  {
    v18 = 0;
    goto LABEL_138;
  }

  v18 = *a4;
  if (v14 != 1 && v43 > v30)
  {
    v18 = 1;
LABEL_138:
    if (qword_1025D4640 != -1)
    {
      sub_1019EC040();
    }

    v50 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      log = v50;
      if (*(p_info + 23) >= 0)
      {
        v51 = *(p_info + 23);
      }

      else
      {
        v51 = p_info[1];
      }

      p_buf = &buf;
      sub_100070148(&buf, v51 + 1);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      if (v51)
      {
        if (*(p_info + 23) >= 0)
        {
          v53 = p_info;
        }

        else
        {
          v53 = *p_info;
        }

        memmove(p_buf, v53, v51);
      }

      *(&p_buf->__r_.__value_.__l.__data_ + v51) = 47;
      v54 = *(p_info + 47);
      if (v54 >= 0)
      {
        v55 = (p_info + 3);
      }

      else
      {
        v55 = p_info[3];
      }

      if (v54 >= 0)
      {
        v56 = *(p_info + 47);
      }

      else
      {
        v56 = p_info[4];
      }

      v57 = std::string::append(&buf, v55, v56);
      v58 = *&v57->__r_.__value_.__l.__data_;
      v227.__r_.__value_.__r.__words[2] = v57->__r_.__value_.__r.__words[2];
      *&v227.__r_.__value_.__l.__data_ = v58;
      v57->__r_.__value_.__l.__size_ = 0;
      v57->__r_.__value_.__r.__words[2] = 0;
      v57->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v59 = SHIBYTE(v227.__r_.__value_.__r.__words[2]);
      v60 = v227.__r_.__value_.__r.__words[0];
      v61 = sub_100226BC0(p_info);
      v62 = *(a1 + 20);
      v63 = &v227;
      if (v59 < 0)
      {
        v63 = v60;
      }

      v64 = p_info[9];
      v65 = p_info[10];
      if (v170)
      {
        v66 = 76;
      }

      else
      {
        v66 = 46;
      }

      v67 = *(a1 + 4);
      v68 = *(a1 + 12);
      if (v167)
      {
        v69 = 67;
      }

      else
      {
        v69 = 46;
      }

      *v202 = 136385027;
      *&v202[4] = v63;
      *&v202[12] = 1024;
      *&v202[14] = v168;
      *&v202[18] = 1024;
      *&v202[20] = v169;
      *&v202[24] = 1024;
      *&v202[26] = v15;
      LOWORD(v203) = 1024;
      *(&v203 + 2) = v69;
      HIWORD(v203) = 1024;
      *v204 = v66;
      *&v204[4] = 1026;
      *&v204[6] = a5;
      v205 = 2050;
      v206 = v61;
      v207 = 2050;
      v208 = a7;
      v209 = 2049;
      v210 = v29;
      v211 = 2049;
      v212 = v30;
      v213 = 2049;
      v214 = v43;
      v215 = 2049;
      v216 = v28;
      v217 = 2050;
      v218 = v62;
      v219 = 2053;
      v220 = v64;
      v221 = 2053;
      v222 = v65;
      v223 = 2053;
      v224 = v67;
      v225 = 2053;
      v226 = v68;
      _os_log_impl(dword_100000000, log, OS_LOG_TYPE_DEFAULT, "getStatusFromLocation, %{private}s, fix, %c%c%c%c%c, isWifiPowered, %{public}d,  effectiveDistance, %{public}.2lf, distance, %{public}.1f, entryRadius, %{private}.1f, exitRadius, %{private}.1f, adjDist, %{private}.1lf, adjHorAcc, %{private}.1lf, origHorAcc, %{public}.1lf, fenceCenter, %{sensitive}f, %{sensitive}f, currentLocation, %{sensitive}f, %{sensitive}f,", v202, 0x9Eu);
      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019EC38C(v202);
      loga = off_1025D4648;
      sub_1008C3CF8(p_info, &v227);
      v165 = a6;
      v70 = SHIBYTE(v227.__r_.__value_.__r.__words[2]);
      v71 = v227.__r_.__value_.__r.__words[0];
      v72 = sub_100226BC0(p_info);
      v73 = *(a1 + 20);
      v74 = &v227;
      if (v70 < 0)
      {
        v74 = v71;
      }

      v75 = p_info[9];
      v76 = p_info[10];
      if (v170)
      {
        v77 = 76;
      }

      else
      {
        v77 = 46;
      }

      v78 = *(a1 + 4);
      v79 = *(a1 + 12);
      if (v167)
      {
        v80 = 67;
      }

      else
      {
        v80 = 46;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136385027;
      *(buf.__r_.__value_.__r.__words + 4) = v74;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v168;
      WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
      HIDWORD(buf.__r_.__value_.__r.__words[2]) = v169;
      v172 = 1024;
      v173 = v15;
      v174 = 1024;
      v175 = v80;
      v176 = 1024;
      v177 = v77;
      v178 = 1026;
      v179 = a5;
      v180 = 2050;
      v181 = v72;
      v182 = 2050;
      v183 = a7;
      v184 = 2049;
      v185 = v29;
      v186 = 2049;
      v187 = v30;
      v188 = 2049;
      v189 = v43;
      v190 = 2049;
      v191 = v28;
      v192 = 2050;
      v193 = v73;
      v194 = 2053;
      v195 = v75;
      v196 = 2053;
      v197 = v76;
      v198 = 2053;
      v199 = v78;
      v200 = 2053;
      v201 = v79;
      _os_log_send_and_compose_impl(2, 0, v202, 1628, dword_100000000, loga, 0, "getStatusFromLocation, %{private}s, fix, %c%c%c%c%c, isWifiPowered, %{public}d,  effectiveDistance, %{public}.2lf, distance, %{public}.1f, entryRadius, %{private}.1f, exitRadius, %{private}.1f, adjDist, %{private}.1lf, adjHorAcc, %{private}.1lf, origHorAcc, %{public}.1lf, fenceCenter, %{sensitive}f, %{sensitive}f, currentLocation, %{sensitive}f, %{sensitive}f,", &buf, 158);
      v82 = v81;
      if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v227.__r_.__value_.__l.__data_);
      }

LABEL_350:
      sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLFenceMonitorLogic::getStatusFromLocation(const CLDaemonLocation &, const CLDaemonLocationPrivate &, const CLFenceManager_Type::Fence &, const CLFenceMonitorLogic::FenceMonitoringStatus &, const double, const BOOL, CLFenceMonitorLogic::FenceMonitorAnalytics &)", "%s\n", v82);
      if (v82 != v202)
      {
        free(v82);
      }

      a6 = v165;
      goto LABEL_213;
    }

    goto LABEL_213;
  }

  if (qword_1025D4640 != -1)
  {
    sub_1019EC040();
  }

  v83 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    logb = v83;
    if (*(p_info + 23) >= 0)
    {
      v84 = *(p_info + 23);
    }

    else
    {
      v84 = p_info[1];
    }

    v85 = &buf;
    sub_100070148(&buf, v84 + 1);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v85 = buf.__r_.__value_.__r.__words[0];
    }

    if (v84)
    {
      if (*(p_info + 23) >= 0)
      {
        v86 = p_info;
      }

      else
      {
        v86 = *p_info;
      }

      memmove(v85, v86, v84);
    }

    *(&v85->__r_.__value_.__l.__data_ + v84) = 47;
    v87 = *(p_info + 47);
    if (v87 >= 0)
    {
      v88 = (p_info + 3);
    }

    else
    {
      v88 = p_info[3];
    }

    if (v87 >= 0)
    {
      v89 = *(p_info + 47);
    }

    else
    {
      v89 = p_info[4];
    }

    v90 = std::string::append(&buf, v88, v89);
    v91 = *&v90->__r_.__value_.__l.__data_;
    v227.__r_.__value_.__r.__words[2] = v90->__r_.__value_.__r.__words[2];
    *&v227.__r_.__value_.__l.__data_ = v91;
    v90->__r_.__value_.__l.__size_ = 0;
    v90->__r_.__value_.__r.__words[2] = 0;
    v90->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v92 = SHIBYTE(v227.__r_.__value_.__r.__words[2]);
    v93 = v227.__r_.__value_.__r.__words[0];
    v94 = sub_100226BC0(p_info);
    v95 = *(a1 + 20);
    v96 = &v227;
    if (v92 < 0)
    {
      v96 = v93;
    }

    v97 = p_info[9];
    v98 = p_info[10];
    if (v170)
    {
      v99 = 76;
    }

    else
    {
      v99 = 46;
    }

    v100 = *(a1 + 4);
    v101 = *(a1 + 12);
    if (v167)
    {
      v102 = 67;
    }

    else
    {
      v102 = 46;
    }

    *v202 = 136385027;
    *&v202[4] = v96;
    *&v202[12] = 1024;
    *&v202[14] = v168;
    *&v202[18] = 1024;
    *&v202[20] = v169;
    *&v202[24] = 1024;
    *&v202[26] = v15;
    LOWORD(v203) = 1024;
    *(&v203 + 2) = v102;
    HIWORD(v203) = 1024;
    *v204 = v99;
    *&v204[4] = 1026;
    *&v204[6] = a5;
    v205 = 2050;
    v206 = v94;
    v207 = 2050;
    v208 = a7;
    v209 = 2049;
    v210 = v29;
    v211 = 2049;
    v212 = v30;
    v213 = 2049;
    v214 = v43;
    v215 = 2049;
    v216 = v28;
    v217 = 2050;
    v218 = v95;
    v219 = 2053;
    v220 = v97;
    v221 = 2053;
    v222 = v98;
    v223 = 2053;
    v224 = v100;
    v225 = 2053;
    v226 = v101;
    _os_log_impl(dword_100000000, logb, OS_LOG_TYPE_DEBUG, "getStatusFromLocation, %{private}s, fix, %c%c%c%c%c, isWifiPowered, %{public}d,  effectiveDistance, %{public}.2lf, distance, %{public}.1f, entryRadius, %{private}.1f, exitRadius, %{private}.1f, adjDist, %{private}.1lf, adjHorAcc, %{private}.1lf, origHorAcc, %{public}.1lf, fenceCenter, %{sensitive}f, %{sensitive}f, currentLocation, %{sensitive}f, %{sensitive}f,", v202, 0x9Eu);
    if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v227.__r_.__value_.__l.__data_);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019EC38C(v202);
    logc = off_1025D4648;
    sub_1008C3CF8(p_info, &v227);
    v165 = a6;
    v146 = SHIBYTE(v227.__r_.__value_.__r.__words[2]);
    v147 = v227.__r_.__value_.__r.__words[0];
    v148 = sub_100226BC0(p_info);
    v149 = *(a1 + 20);
    v150 = &v227;
    if (v146 < 0)
    {
      v150 = v147;
    }

    v151 = p_info[9];
    v152 = p_info[10];
    if (v170)
    {
      v153 = 76;
    }

    else
    {
      v153 = 46;
    }

    v154 = *(a1 + 4);
    v155 = *(a1 + 12);
    if (v167)
    {
      v156 = 67;
    }

    else
    {
      v156 = 46;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136385027;
    *(buf.__r_.__value_.__r.__words + 4) = v150;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v168;
    WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
    HIDWORD(buf.__r_.__value_.__r.__words[2]) = v169;
    v172 = 1024;
    v173 = v15;
    v174 = 1024;
    v175 = v156;
    v176 = 1024;
    v177 = v153;
    v178 = 1026;
    v179 = a5;
    v180 = 2050;
    v181 = v148;
    v182 = 2050;
    v183 = a7;
    v184 = 2049;
    v185 = v29;
    v186 = 2049;
    v187 = v30;
    v188 = 2049;
    v189 = v43;
    v190 = 2049;
    v191 = v28;
    v192 = 2050;
    v193 = v149;
    v194 = 2053;
    v195 = v151;
    v196 = 2053;
    v197 = v152;
    v198 = 2053;
    v199 = v154;
    v200 = 2053;
    v201 = v155;
    _os_log_send_and_compose_impl(2, 0, v202, 1628, dword_100000000, logc, 2, "getStatusFromLocation, %{private}s, fix, %c%c%c%c%c, isWifiPowered, %{public}d,  effectiveDistance, %{public}.2lf, distance, %{public}.1f, entryRadius, %{private}.1f, exitRadius, %{private}.1f, adjDist, %{private}.1lf, adjHorAcc, %{private}.1lf, origHorAcc, %{public}.1lf, fenceCenter, %{sensitive}f, %{sensitive}f, currentLocation, %{sensitive}f, %{sensitive}f,", &buf, 158);
    v82 = v157;
    if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v227.__r_.__value_.__l.__data_);
    }

    goto LABEL_350;
  }

LABEL_213:
  v14 = v166;
  if (v170 && (*(p_info + 12) >= 7000.0 || v166))
  {
    goto LABEL_222;
  }

  v103 = v167;
  if (v18)
  {
    v103 = 0;
  }

  if (v103 == 1)
  {
    if (*(p_info + 12) < 7000.0 && (v28 > v30 * 0.0 || sub_1004BE71C(p_info)))
    {
LABEL_222:
      v18 = *a4;
      goto LABEL_224;
    }

    v18 = 0;
  }

LABEL_224:
  *(a6 + 624) = v43;
  *(a6 + 632) = v28;
  *(a6 + 640) = v29;
  *(a6 + 648) = v30;
  *(a6 + 608) = *a4;
  *(a6 + 604) = v18;
  if (!v166)
  {
    goto LABEL_253;
  }

LABEL_225:
  if (!v18)
  {
    if (qword_1025D4640 != -1)
    {
      sub_1019EC264();
    }

    v104 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      if (*(p_info + 23) >= 0)
      {
        v105 = *(p_info + 23);
      }

      else
      {
        v105 = p_info[1];
      }

      v106 = v202;
      sub_100070148(v202, v105 + 1);
      if (v202[23] < 0)
      {
        v106 = *v202;
      }

      if (v105)
      {
        if (*(p_info + 23) >= 0)
        {
          v107 = p_info;
        }

        else
        {
          v107 = *p_info;
        }

        memmove(v106, v107, v105);
      }

      *&v106[v105] = 47;
      v108 = *(p_info + 47);
      if (v108 >= 0)
      {
        v109 = (p_info + 3);
      }

      else
      {
        v109 = p_info[3];
      }

      if (v108 >= 0)
      {
        v110 = *(p_info + 47);
      }

      else
      {
        v110 = p_info[4];
      }

      v111 = std::string::append(v202, v109, v110);
      v112 = *&v111->__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[2] = v111->__r_.__value_.__r.__words[2];
      *&buf.__r_.__value_.__l.__data_ = v112;
      v111->__r_.__value_.__l.__size_ = 0;
      v111->__r_.__value_.__r.__words[2] = 0;
      v111->__r_.__value_.__r.__words[0] = 0;
      if ((v202[23] & 0x80000000) != 0)
      {
        operator delete(*v202);
      }

      v113 = &buf;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v113 = buf.__r_.__value_.__r.__words[0];
      }

      *v202 = 134283779;
      *&v202[4] = a7;
      *&v202[12] = 2081;
      *&v202[14] = v113;
      _os_log_impl(dword_100000000, v104, OS_LOG_TYPE_DEBUG, "Fence status changed to Inside, distToCenter, %{private}.1lf, %{private}s", v202, 0x16u);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(v202, 0x65CuLL);
      if (qword_1025D4640 != -1)
      {
        sub_1019EC264();
      }

      v138 = off_1025D4648;
      sub_1008C3CF8(p_info, &buf);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v139 = &buf;
      }

      else
      {
        v139 = buf.__r_.__value_.__r.__words[0];
      }

      LODWORD(v227.__r_.__value_.__l.__data_) = 134283779;
      *(v227.__r_.__value_.__r.__words + 4) = a7;
      WORD2(v227.__r_.__value_.__r.__words[1]) = 2081;
      *(&v227.__r_.__value_.__r.__words[1] + 6) = v139;
      LODWORD(v160) = 22;
      _os_log_send_and_compose_impl(2, 0, v202, 1628, dword_100000000, v138, 2, "Fence status changed to Inside, distToCenter, %{private}.1lf, %{private}s", &v227, v160);
      v141 = v140;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLFenceMonitorLogic::getStatusFromLocation(const CLDaemonLocation &, const CLDaemonLocationPrivate &, const CLFenceManager_Type::Fence &, const CLFenceMonitorLogic::FenceMonitoringStatus &, const double, const BOOL, CLFenceMonitorLogic::FenceMonitorAnalytics &)", "%s\n", v141);
      if (v141 != v202)
      {
        free(v141);
      }
    }

    v18 = 0;
    goto LABEL_37;
  }

LABEL_253:
  if (v14 != 1 && v18 == 1)
  {
    if (qword_1025D4640 != -1)
    {
      sub_1019EC264();
    }

    v114 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      if (*(p_info + 23) >= 0)
      {
        v115 = *(p_info + 23);
      }

      else
      {
        v115 = p_info[1];
      }

      v116 = v202;
      sub_100070148(v202, v115 + 1);
      if (v202[23] < 0)
      {
        v116 = *v202;
      }

      if (v115)
      {
        if (*(p_info + 23) >= 0)
        {
          v117 = p_info;
        }

        else
        {
          v117 = *p_info;
        }

        memmove(v116, v117, v115);
      }

      *&v116[v115] = 47;
      v118 = *(p_info + 47);
      if (v118 >= 0)
      {
        v119 = (p_info + 3);
      }

      else
      {
        v119 = p_info[3];
      }

      if (v118 >= 0)
      {
        v120 = *(p_info + 47);
      }

      else
      {
        v120 = p_info[4];
      }

      v121 = std::string::append(v202, v119, v120);
      v122 = *&v121->__r_.__value_.__l.__data_;
      buf.__r_.__value_.__r.__words[2] = v121->__r_.__value_.__r.__words[2];
      *&buf.__r_.__value_.__l.__data_ = v122;
      v121->__r_.__value_.__l.__size_ = 0;
      v121->__r_.__value_.__r.__words[2] = 0;
      v121->__r_.__value_.__r.__words[0] = 0;
      if ((v202[23] & 0x80000000) != 0)
      {
        operator delete(*v202);
      }

      v123 = &buf;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v123 = buf.__r_.__value_.__r.__words[0];
      }

      *v202 = 134283779;
      *&v202[4] = a7;
      *&v202[12] = 2081;
      *&v202[14] = v123;
      _os_log_impl(dword_100000000, v114, OS_LOG_TYPE_DEBUG, "Fence status changed to Outside, distToCenter, %{private}.1lf, %{private}s", v202, 0x16u);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(v202, 0x65CuLL);
      if (qword_1025D4640 != -1)
      {
        sub_1019EC264();
      }

      v142 = off_1025D4648;
      sub_1008C3CF8(p_info, &buf);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v143 = &buf;
      }

      else
      {
        v143 = buf.__r_.__value_.__r.__words[0];
      }

      LODWORD(v227.__r_.__value_.__l.__data_) = 134283779;
      *(v227.__r_.__value_.__r.__words + 4) = a7;
      WORD2(v227.__r_.__value_.__r.__words[1]) = 2081;
      *(&v227.__r_.__value_.__r.__words[1] + 6) = v143;
      LODWORD(v160) = 22;
      _os_log_send_and_compose_impl(2, 0, v202, 1628, dword_100000000, v142, 2, "Fence status changed to Outside, distToCenter, %{private}.1lf, %{private}s", &v227, v160);
      v145 = v144;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLFenceMonitorLogic::getStatusFromLocation(const CLDaemonLocation &, const CLDaemonLocationPrivate &, const CLFenceManager_Type::Fence &, const CLFenceMonitorLogic::FenceMonitoringStatus &, const double, const BOOL, CLFenceMonitorLogic::FenceMonitorAnalytics &)", "%s\n", v145);
      if (v145 != v202)
      {
        free(v145);
      }
    }

    v18 = 1;
    goto LABEL_37;
  }

  if (qword_1025D4640 != -1)
  {
    sub_1019EC264();
  }

  v15 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v124 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    if (*(p_info + 23) >= 0)
    {
      v125 = *(p_info + 23);
    }

    else
    {
      v125 = p_info[1];
    }

    v126 = v202;
    sub_100070148(v202, v125 + 1);
    if (v202[23] < 0)
    {
      v126 = *v202;
    }

    if (v125)
    {
      if (*(p_info + 23) >= 0)
      {
        v127 = p_info;
      }

      else
      {
        v127 = *p_info;
      }

      memmove(v126, v127, v125);
    }

    *&v126[v125] = 47;
    v128 = *(p_info + 47);
    if (v128 >= 0)
    {
      v129 = (p_info + 3);
    }

    else
    {
      v129 = p_info[3];
    }

    if (v128 >= 0)
    {
      v130 = *(p_info + 47);
    }

    else
    {
      v130 = p_info[4];
    }

    v131 = std::string::append(v202, v129, v130);
    v132 = *&v131->__r_.__value_.__l.__data_;
    buf.__r_.__value_.__r.__words[2] = v131->__r_.__value_.__r.__words[2];
    *&buf.__r_.__value_.__l.__data_ = v132;
    v131->__r_.__value_.__l.__size_ = 0;
    v131->__r_.__value_.__r.__words[2] = 0;
    v131->__r_.__value_.__r.__words[0] = 0;
    if ((v202[23] & 0x80000000) != 0)
    {
      operator delete(*v202);
    }

    v133 = &buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v133 = buf.__r_.__value_.__r.__words[0];
    }

    *v202 = 134283779;
    *&v202[4] = a7;
    *&v202[12] = 2081;
    *&v202[14] = v133;
    _os_log_impl(dword_100000000, v124, OS_LOG_TYPE_DEBUG, "Fence status remained unchanged, distToCenter, %{private}.1lf, %{private}s", v202, 0x16u);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(v202, 0x65CuLL);
    if (qword_1025D4640 == -1)
    {
LABEL_309:
      v134 = *(v15 + 1608);
      sub_1008C3CF8(p_info, &buf);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v135 = &buf;
      }

      else
      {
        v135 = buf.__r_.__value_.__r.__words[0];
      }

      LODWORD(v227.__r_.__value_.__l.__data_) = 134283779;
      *(v227.__r_.__value_.__r.__words + 4) = a7;
      WORD2(v227.__r_.__value_.__r.__words[1]) = 2081;
      *(&v227.__r_.__value_.__r.__words[1] + 6) = v135;
      LODWORD(v160) = 22;
      _os_log_send_and_compose_impl(2, 0, v202, 1628, dword_100000000, v134, 2, "Fence status remained unchanged, distToCenter, %{private}.1lf, %{private}s", &v227, v160);
      v137 = v136;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLFenceMonitorLogic::getStatusFromLocation(const CLDaemonLocation &, const CLDaemonLocationPrivate &, const CLFenceManager_Type::Fence &, const CLFenceMonitorLogic::FenceMonitoringStatus &, const double, const BOOL, CLFenceMonitorLogic::FenceMonitorAnalytics &)", "%s\n", v137);
      if (v137 != v202)
      {
        free(v137);
      }

      goto LABEL_37;
    }

LABEL_365:
    sub_1019EC264();
    goto LABEL_309;
  }

LABEL_37:
  result = v10 != 0;
  *a6 = v18;
  return result;
}

void sub_100223074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (*(v46 - 169) < 0)
  {
    operator delete(*(v45 + 1632));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002230EC(void *a1)
{
  v1 = a1[8];
  if (v1)
  {
    LOBYTE(v1) = *(*(*(a1[4] + (((v1 + a1[7] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v1 + *(a1 + 56) - 1)) + 24) ^ 1;
  }

  return v1 & 1;
}

void sub_10022312C(uint64_t a1, double a2)
{
  v4 = sub_1002235FC(a1 + 904);
  if (*(a1 + 612) == 1 && ((v5 = v4, *(a1 + 730) != 1) || (*(a1 + 731) & 1) != 0))
  {
    if (v4)
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A4C9EC();
      }

      v6 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Fence: FenceMonitorWifi needs tracking", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A4D39C();
      }
    }

    v7 = *(a1 + 256);
    v8 = sub_10021D1B8(a1);
    v9 = v8;
    if (v7 < 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v5;
    }

    if (v10)
    {
      v11 = v5;
    }

    else
    {
      v11 = v8 | v5;
    }

    if (qword_1025D4640 != -1)
    {
      sub_101A4C980();
    }

    v12 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240704;
      *v28 = v11 & 1;
      *&v28[4] = 1026;
      *&v28[6] = v7;
      v29 = 1026;
      v30 = v9;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Fence: engageContinuousTrackingIfNeeded, isEngageContinousTracking, %{public}d, numOfMonitoredFences, %{public}d, %{public}d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v22[0] = 67240704;
      v22[1] = v11 & 1;
      v23 = 1026;
      v24 = v7;
      v25 = 1026;
      v26 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "Fence: engageContinuousTrackingIfNeeded, isEngageContinousTracking, %{public}d, numOfMonitoredFences, %{public}d, %{public}d", v22, 20);
      v21 = v20;
      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::engageContinuousTrackingIfNeeded(const CFAbsoluteTime)", "%s\n", v20);
      if (v21 != buf)
      {
        free(v21);
      }
    }

    *(a1 + 623) = v11 & 1;
    if (v11)
    {
      v13 = *(a1 + 624);
      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v14 = v13 - a2;
      v15 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        *v28 = v14;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "engageContinuousTrackingIfNeeded, timeToNextTimer, %{public}lf", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A4D478();
      }

      if (v14 <= 0.0 || v14 >= *(a1 + 720) * 1.2)
      {
        sub_10021A0C4(a1, a2);
      }

      (*(**(a1 + 1768) + 320))(*(a1 + 1768), "engageContinuousTrackingIfNeeded");
    }

    else
    {
      *(a1 + 624) = (*(**(a1 + 1768) + 144))(*(a1 + 1768));
      (*(**(a1 + 1768) + 328))();
    }
  }

  else
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C9EC();
    }

    v16 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 612);
      v18 = *(a1 + 728);
      v19 = *(a1 + 730);
      *buf = 67240704;
      *v28 = v17;
      *&v28[4] = 1026;
      *&v28[6] = v18;
      v29 = 1026;
      v30 = v19;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "Fence: location services disabled, no continous tracking, %{public}d, isAirplaneMode, %{public}d, cConnected, %{public}d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4D294();
    }

    *(a1 + 623) = 0;
    *(a1 + 624) = (*(**(a1 + 1768) + 144))(*(a1 + 1768));
  }
}

uint64_t sub_100223604(uint64_t a1, const void *a2, const void *a3)
{
  v6 = a1 + 128;
  (*(*(a1 + 128) + 16))(a1 + 128);
  sub_10007041C(a1, a2, a3);
  return (*(*v6 + 24))(v6);
}

void sub_1002236B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002236C4(uint64_t result)
{
  if ((*(result + 24) & 1) == 0)
  {
    *(result + 24) = 1;
  }

  if (*(result + 32) == 0.0)
  {
    return (*(*result + 944))();
  }

  return result;
}

void sub_100223710(unsigned int *a1, int8x16_t *a2, uint64_t a3, double a4)
{
  *(a3 + 52) |= 1u;
  v6 = *(a3 + 32);
  if (!v6)
  {
    operator new();
  }

  *(v6 + 44) |= 1u;
  *(v6 + 8) = a4;
  *(a3 + 52) |= 2u;
  v7 = *(a3 + 40);
  if (!v7)
  {
    operator new();
  }

  *(v7 + 492) |= 0x800u;
  v8 = *(v7 + 352);
  if (!v8)
  {
    operator new();
  }

  *(v8 + 200) |= 0x10000u;
  v9 = *(v8 + 128);
  if (!v9)
  {
    operator new();
  }

  v10 = sub_100021DC4(a1);
  if (!sub_100DF8570(v10))
  {
    sub_1019CD190();
  }

  *(v9 + 36) |= 2u;
  *(v9 + 12) = v10;
  *(a3 + 52) |= 2u;
  v11 = *(a3 + 40);
  if (!v11)
  {
    operator new();
  }

  *(v11 + 488) |= 8u;
  v12 = *(v11 + 32);
  if (!v12)
  {
    operator new();
  }

  *(v12 + 100) |= 4u;
  v13 = *(v12 + 16);
  if (!v13)
  {
    operator new();
  }

  sub_1001F34E4(a2, v13);
  *(a3 + 52) |= 2u;
  v14 = *(a3 + 40);
  if (!v14)
  {
    operator new();
  }

  *(v14 + 488) |= 8u;
  v15 = *(v14 + 32);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 100) |= 8u;
  v16 = *(v15 + 24);
  if (!v16)
  {
    operator new();
  }

  sub_1001F3908(a2[10].i64, v16);
  v17 = a2[50].i64[1];
  if (v17)
  {
    *(a3 + 52) |= 2u;
    v18 = *(a3 + 40);
    if (!v18)
    {
      operator new();
    }

    *(v18 + 492) |= 0x800u;
    v19 = *(v18 + 352);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 200) |= 0x10000u;
    v20 = *(v19 + 128);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 36) |= 4u;
    v21 = *(v20 + 16);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 128) |= 4u;
    v22 = *(v21 + 24);
    if (!v22)
    {
      operator new();
    }

    sub_10030D574(v17, v22);
  }

  v23 = a2[51].i64[1];
  *(a3 + 52) |= 2u;
  v24 = *(a3 + 40);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 488) |= 8u;
  v25 = *(v24 + 32);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 100) |= 0x10u;
  v26 = *(v25 + 32);
  if (!v26)
  {
    operator new();
  }

  sub_10010E544(v23, v26);
  *(a3 + 52) |= 2u;
  v27 = *(a3 + 40);
  if (!v27)
  {
    operator new();
  }

  *(v27 + 488) |= 8u;
  v28 = *(v27 + 32);
  if (!v28)
  {
    operator new();
  }

  v29 = a2[52].i8[0];
  *(v28 + 100) |= 0x20u;
  *(v28 + 72) = v29;
  *(a3 + 52) |= 2u;
  *(v27 + 488) |= 8u;
  v30 = *(v27 + 32);
  if (!v30)
  {
    operator new();
  }

  v31 = a2[52].i64[1];
  *(v30 + 100) |= 0x40u;
  *(v30 + 48) = v31;
  *(a3 + 52) |= 2u;
  *(v27 + 488) |= 8u;
  v32 = *(v27 + 32);
  if (!v32)
  {
    operator new();
  }

  *(v32 + 100) |= 0x100u;
  v33 = *(v32 + 56);
  if (!v33)
  {
    operator new();
  }

  sub_1002241F4(a2[53].i64, v33);
  *(a3 + 52) |= 2u;
  v34 = *(a3 + 40);
  if (!v34)
  {
    operator new();
  }

  *(v34 + 488) |= 8u;
  v35 = *(v34 + 32);
  if (!v35)
  {
    operator new();
  }

  *(v35 + 100) |= 0x200u;
  v36 = *(v35 + 64);
  if (!v36)
  {
    operator new();
  }

  sub_1002202CC(a2 + 55, v36);
  *(a3 + 52) |= 2u;
  v37 = *(a3 + 40);
  if (!v37)
  {
    operator new();
  }

  *(v37 + 488) |= 8u;
  v38 = *(v37 + 32);
  if (!v38)
  {
    operator new();
  }

  v39 = sub_1001F40C8(&a2[58]);
  if (!sub_10041ECEC(v39))
  {
    sub_10188265C();
  }

  *(v38 + 100) |= 0x800u;
  *(v38 + 76) = v39;
  *(a3 + 52) |= 2u;
  v40 = *(a3 + 40);
  if (!v40)
  {
    operator new();
  }

  *(v40 + 488) |= 8u;
  v41 = *(v40 + 32);
  if (!v41)
  {
    operator new();
  }

  *(v41 + 100) |= 0x1000u;
  v42 = *(v41 + 88);
  if (!v42)
  {
    operator new();
  }

  v43 = a2[59].i64[0];
  *(v42 + 36) |= 1u;
  *(v42 + 8) = v43;
  *(a3 + 52) |= 2u;
  v44 = *(a3 + 40);
  if (!v44)
  {
    operator new();
  }

  *(v44 + 488) |= 8u;
  v45 = *(v44 + 32);
  if (!v45)
  {
    operator new();
  }

  *(v45 + 100) |= 0x1000u;
  v46 = *(v45 + 88);
  if (!v46)
  {
    operator new();
  }

  v47 = a2[58].i64[1];
  *(v46 + 36) |= 2u;
  *(v46 + 16) = v47;
  *(a3 + 52) |= 2u;
  v48 = *(a3 + 40);
  if (!v48)
  {
    operator new();
  }

  *(v48 + 488) |= 8u;
  v49 = *(v48 + 32);
  if (!v49)
  {
    operator new();
  }

  *(v49 + 100) |= 0x1000u;
  v50 = *(v49 + 88);
  if (!v50)
  {
    operator new();
  }

  v51 = a2[59].i64[1];
  *(v50 + 36) |= 4u;
  *(v50 + 24) = v51;
  v52 = a2[72].i64[1];
  if (v52)
  {
    *(a3 + 52) |= 2u;
    v53 = *(a3 + 40);
    if (!v53)
    {
      operator new();
    }

    *(v53 + 488) |= 0x1000u;
    v54 = *(v53 + 104);
    if (!v54)
    {
      operator new();
    }

    sub_1002B1A50(v52, v54);
  }
}

__n128 sub_1002241F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 44);
  *(a2 + 8) = vextq_s8(*a1, *a1, 8uLL);
  *(a2 + 44) = v2 | 0xF;
  result = *(a1 + 16);
  *(a2 + 24) = result;
  return result;
}

void sub_100224224(uint64_t a1, uint64_t a2, unsigned int *a3, __int128 *a4)
{
  if (*(a1 + 201))
  {
    if (*a3 == 5)
    {
      if (*(a1 + 428))
      {
        v7 = (*(**(a1 + 464) + 56))(*(a1 + 464), a2);
        v8 = *(a1 + 408);
        v9 = (a1 + 268);
        v10 = *(a1 + 268);
        v11 = v10 > *(a4 + 20) && v10 > 100.0;
        if (qword_1025D4600 != -1)
        {
          sub_1003110B8();
        }

        v12 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v14 = *(a1 + 408);
          v13 = *(a1 + 416);
          sub_100072AFC(a4, __p);
          v15 = (v55 & 0x80000000) == 0 ? __p : *__p;
          *buf = 134218755;
          *&buf[4] = v14;
          *&buf[12] = 1024;
          *&buf[14] = v11;
          *&buf[18] = 2048;
          *&buf[20] = v13;
          *&buf[28] = 2085;
          *&buf[30] = v15;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "TILE: onLocationNotification, fLastLocationDownloadCheckTimestamp, %.1lf, isForceLocationCheck, %d, fLastLocationProtectionCheckTimestamp, %.1f, leech location, %{sensitive}s", buf, 0x26u);
          if (SBYTE3(v55) < 0)
          {
            operator delete(*__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_101ABFEE4();
          }

          v43 = qword_1025D4608;
          v45 = *(a1 + 408);
          v44 = *(a1 + 416);
          sub_100072AFC(a4, v49);
          if (v50 >= 0)
          {
            v46 = v49;
          }

          else
          {
            v46 = v49[0];
          }

          *__p = 134218755;
          *&__p[4] = v45;
          v52 = 1024;
          v53 = v11;
          v54 = 2048;
          v55 = v44;
          v56 = 2085;
          v57 = v46;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v43, 2, "TILE: onLocationNotification, fLastLocationDownloadCheckTimestamp, %.1lf, isForceLocationCheck, %d, fLastLocationProtectionCheckTimestamp, %.1f, leech location, %{sensitive}s", __p, 38);
          v48 = v47;
          if (v50 < 0)
          {
            operator delete(v49[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLTilesManager::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v48);
          if (v48 != buf)
          {
            free(v48);
          }
        }

        v16 = a4[1];
        *(a1 + 248) = *a4;
        *(a1 + 264) = v16;
        v17 = a4[2];
        v18 = a4[3];
        v19 = a4[5];
        *(a1 + 312) = a4[4];
        *(a1 + 328) = v19;
        *(a1 + 280) = v17;
        *(a1 + 296) = v18;
        v20 = a4[6];
        v21 = a4[7];
        v22 = a4[8];
        *(a1 + 388) = *(a4 + 140);
        *(a1 + 360) = v21;
        *(a1 + 376) = v22;
        *(a1 + 344) = v20;
        if ((v7 - v8 >= 600.0 || v11) && *v9 >= 0.0 && *v9 <= 5000.0)
        {
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_10024CA30;
          *&buf[24] = &unk_1024BCD70;
          *&buf[32] = a1;
          v59 = a1 + 248;
          v60 = v7;
          sub_10024C7D0(a1, "predownloadTilesForLocation", buf);
          sub_100258C1C(a1, v7);
          sub_10025A784(a1, a1 + 248);
          *(a1 + 408) = v7;
        }

        if (*(a1 + 200) == 1 && (v7 - *(a1 + 416) >= 330.0 || v11))
        {
          v23 = a4[1];
          *(a1 + 248) = *a4;
          *(a1 + 264) = v23;
          v24 = a4[2];
          v25 = a4[3];
          v26 = a4[5];
          *(a1 + 312) = a4[4];
          *(a1 + 328) = v26;
          *(a1 + 280) = v24;
          *(a1 + 296) = v25;
          v27 = a4[6];
          v28 = a4[7];
          v29 = a4[8];
          *(a1 + 388) = *(a4 + 140);
          *(a1 + 360) = v28;
          *(a1 + 376) = v29;
          *(a1 + 344) = v27;
          sub_100EEE434(a1, "onLocationNotification", a1 + 248, 0);
          *(a1 + 416) = v7;
        }
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_101ABFB1C();
        }

        v42 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "TILE: onLocationNotification, ignore leech when LS off", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AC5C14();
        }
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_1003110B8();
      }

      v39 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v40 = *a3;
        v41 = sub_100048D98(*a3);
        *buf = 67109379;
        *&buf[4] = v40;
        *&buf[8] = 2085;
        *&buf[10] = v41;
        _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "TILE: onLocationNotification, unknown notification, %d, %{sensitive}s", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AC5B04(a3);
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1003110B8();
    }

    v30 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v31 = *(a1 + 200);
      *buf = 67109120;
      *&buf[4] = v31;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "TILE: onLocationNotification, index is not available until first unlock, fDataProtectionEnabled, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AC5A10(a1);
    }

    if (*a3 == 5)
    {
      v32 = *a4;
      *(a1 + 264) = a4[1];
      *(a1 + 248) = v32;
      v33 = a4[2];
      v34 = a4[3];
      v35 = a4[5];
      *(a1 + 312) = a4[4];
      *(a1 + 328) = v35;
      *(a1 + 280) = v33;
      *(a1 + 296) = v34;
      v36 = a4[6];
      v37 = a4[7];
      v38 = a4[8];
      *(a1 + 388) = *(a4 + 140);
      *(a1 + 360) = v37;
      *(a1 + 376) = v38;
      *(a1 + 344) = v36;
    }
  }
}

void sub_100224858(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    do
    {
      v3 = *v2;
      v4 = v2[2];
      if (v4)
      {
        sub_100008080(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  *a1 = 0;
}

void sub_1002248AC(uint64_t a1, uint64_t a2)
{
  if (sub_100224C84(a1, a2))
  {
    if (sub_100073270(a2, a1 + 120))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101BDA6FC();
      }

      v4 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v30[0]) = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#GnssRefPosMaintenance,feedCachedReferenceLocation,repeated cached position ", v30, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BDD330();
      }
    }

    else
    {
      v6 = *(a2 + 16);
      *(a1 + 120) = *a2;
      *(a1 + 136) = v6;
      v7 = *(a2 + 32);
      v8 = *(a2 + 48);
      v9 = *(a2 + 80);
      *(a1 + 184) = *(a2 + 64);
      *(a1 + 200) = v9;
      *(a1 + 152) = v7;
      *(a1 + 168) = v8;
      v10 = *(a2 + 96);
      v11 = *(a2 + 112);
      v12 = *(a2 + 128);
      *(a1 + 260) = *(a2 + 140);
      *(a1 + 232) = v11;
      *(a1 + 248) = v12;
      *(a1 + 216) = v10;
      memcpy((a1 + 280), (a2 + 160), 0x201uLL);
      v13 = *(a2 + 680);
      v14 = *(a2 + 688);
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      *(a1 + 800) = v13;
      v15 = *(a1 + 808);
      *(a1 + 808) = v14;
      if (v15)
      {
        sub_100008080(v15);
      }

      v16 = *(a2 + 696);
      v17 = *(a2 + 728);
      *(a1 + 832) = *(a2 + 712);
      *(a1 + 848) = v17;
      *(a1 + 816) = v16;
      v18 = *(a2 + 744);
      v19 = *(a2 + 760);
      v20 = *(a2 + 776);
      *(a1 + 905) = *(a2 + 785);
      *(a1 + 880) = v19;
      *(a1 + 896) = v20;
      *(a1 + 864) = v18;
      if (qword_1025D4650 != -1)
      {
        sub_101BDA6FC();
      }

      v21 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 216);
        v23 = *(a1 + 124);
        v24 = *(a1 + 132);
        v25 = *(a1 + 148);
        v26 = *(a1 + 140);
        v27 = *(a1 + 156);
        v30[0] = 68290563;
        v30[1] = 0;
        v31 = 2082;
        v32 = "";
        v33 = 1026;
        v34 = v22;
        v35 = 2053;
        v36 = v23;
        v37 = 2053;
        v38 = v24;
        v39 = 2050;
        v40 = v25;
        v41 = 2050;
        v42 = v26;
        v43 = 2050;
        v44 = v27;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#GnssRefPosMaintenance,feedCachedReferenceLocation, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f}", v30, 0x4Au);
      }

      if ((*(a1 + 1148) - 3) <= 1 && sub_10139685C(a1))
      {
        if (*(a1 + 928) == 1)
        {
          if (qword_1025D4650 != -1)
          {
            sub_101BDA754();
          }

          v28 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v30[0]) = 0;
            _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "#GnssRefPosMaintenance,feedCachedReferenceLocation,Disabling WiFi/Cell location notification", v30, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101BDD178();
          }

          sub_101396E60(a1);
        }

        if (*(a1 + 929) == 1)
        {
          if (qword_1025D4650 != -1)
          {
            sub_101BDA754();
          }

          v29 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v30[0]) = 0;
            _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "#GnssRefPosMaintenance,feedCachedReferenceLocation,Disabling Gnss location notification", v30, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101BDD254();
          }

          sub_101397278(a1);
        }
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BDA6FC();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v30[0]) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#GnssRefPosMaintenance,feedCachedReferenceLocation,Invalid reference location", v30, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BDD09C();
    }
  }
}

BOOL sub_100224C84(_BOOL8 a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = v3 > 0.0;
  if (v3 <= 0.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BDA6FC();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a2 + 20);
      v18 = 68289282;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2050;
      v23 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssRefPosMaintenance,Warning invalid assistance location, horizontal accuracy:%{public}f}", &v18, 0x1Cu);
    }

    v3 = *(a2 + 20);
  }

  if (v3 > 200000.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BDA754();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a2 + 20);
      v18 = 68289538;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2050;
      v23 = v8;
      v24 = 2050;
      v25 = 0x41086A0000000000;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssRefPosMaintenance,Warning invalid assistance location, horizontalAccuracy:%{public}f, maximumAccuracy:%{public}f}", &v18, 0x26u);
    }

    v4 = 0;
  }

  if (sub_10002807C(*(a2 + 4), *(a2 + 12)))
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BDA754();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v18 = 68289026;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssRefPosMaintenance,Warning invalid assistance location,null island}", &v18, 0x12u);
    }

    v4 = 0;
  }

  if (fabs(*(a2 + 4)) > 90.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BDA754();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a2 + 4);
      v18 = 68289283;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2053;
      v23 = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssRefPosMaintenance,Warning invalid assistance location, latitude:%{sensitive}.7f}", &v18, 0x1Cu);
    }

    v4 = 0;
  }

  if (fabs(*(a2 + 12)) > 180.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BDA754();
    }

    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a2 + 12);
      v18 = 68289283;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2053;
      v23 = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssRefPosMaintenance,Warning invalid assistance location, longitude:%{sensitive}.7f}", &v18, 0x1Cu);
    }

    v4 = 0;
  }

  if (*(a2 + 36) > 0.0)
  {
    v14 = *(a2 + 28);
    if (v14 < -450.0 || v14 > 8850.0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101BDA754();
      }

      v15 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v16 = *(a2 + 28);
        v18 = 68289283;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 2053;
        v23 = v16;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssRefPosMaintenance,Warning invalid assistance location, altitude:%{sensitive}.2f}", &v18, 0x1Cu);
      }

      return 0;
    }
  }

  return v4;
}

void sub_10022509C(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B055EC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLCellTilesManager::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B05600();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLCellTilesManager::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100225278(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100225278(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  if (*a3 == 5)
  {
    v6 = a1 + 160;
    v7 = *(a1 + 180);
    v8 = *(a4 + 16);
    *(a1 + 160) = *a4;
    v9 = *(a4 + 80);
    v11 = *(a4 + 32);
    v10 = *(a4 + 48);
    *(a1 + 224) = *(a4 + 64);
    *(a1 + 240) = v9;
    *(a1 + 192) = v11;
    *(a1 + 208) = v10;
    v13 = *(a4 + 112);
    v12 = *(a4 + 128);
    v14 = *(a4 + 96);
    *(a1 + 300) = *(a4 + 140);
    *(a1 + 272) = v13;
    *(a1 + 288) = v12;
    *(a1 + 256) = v14;
    *(a1 + 176) = v8;
    if (*(a1 + 129))
    {
      v15 = (*(**(a1 + 352) + 16))(*(a1 + 352), a2);
      v16 = *(a1 + 320);
      v17 = v7 > *(a4 + 20) && v7 > 100.0;
      if (qword_1025D4620 != -1)
      {
        sub_101B1583C();
      }

      v18 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v20 = *(a1 + 320);
        v19 = *(a1 + 328);
        sub_100072AFC(a4, __p);
        v21 = (v41 & 0x80000000) == 0 ? __p : *__p;
        *buf = 134349827;
        *v45 = v20;
        *&v45[8] = 1026;
        *&v45[10] = v17;
        v46 = 2050;
        v47 = v19;
        v48 = 2085;
        v49 = v21;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "TileCell, kNotificationLocationLeech, fLastLocationDownloadCheckTimestamp, %{public}.1lf, isForceLocationCheck, %{public}d, fLastLocationProtectionCheckTimestamp, %{public}.1f, leech location, %{sensitive}s", buf, 0x26u);
        if (SBYTE3(v41) < 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4620 != -1)
        {
          sub_1000E1C54();
        }

        v29 = qword_1025D4628;
        v31 = *(a1 + 320);
        v30 = *(a1 + 328);
        sub_100072AFC(a4, v35);
        if (v36 >= 0)
        {
          v32 = v35;
        }

        else
        {
          v32 = v35[0];
        }

        *__p = 134349827;
        *&__p[4] = v31;
        v38 = 1026;
        v39 = v17;
        v40 = 2050;
        v41 = v30;
        v42 = 2085;
        v43 = v32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v29, 2, "TileCell, kNotificationLocationLeech, fLastLocationDownloadCheckTimestamp, %{public}.1lf, isForceLocationCheck, %{public}d, fLastLocationProtectionCheckTimestamp, %{public}.1f, leech location, %{sensitive}s", __p, 38);
        v34 = v33;
        if (v36 < 0)
        {
          operator delete(v35[0]);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLCellTilesManager::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v34);
        if (v34 != buf)
        {
          free(v34);
        }
      }

      if (v15 - v16 >= 600.0 || v17)
      {
        v22 = *(a1 + 180);
        if (v22 >= 0.0 && v22 <= 5000.0)
        {
          sub_10024F998(a1, v6);
          *(a1 + 320) = v15;
        }
      }

      if (*(a1 + 128) == 1 && (v15 - *(a1 + 328) >= 330.0 || v17))
      {
        sub_10108A7BC(a1, "onLocationNotification", v6, 0);
        *(a1 + 328) = v15;
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101B15F3C();
      }

      v27 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v28 = *(a1 + 128);
        *buf = 67109120;
        *v45 = v28;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "TILE: onLocationNotification, index is not available until first unlock, fDataProtectionEnabled, %d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B1688C(a1);
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B1583C();
    }

    v24 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *a3;
      v26 = sub_100048D98(*a3);
      *buf = 67240450;
      *v45 = v25;
      *&v45[4] = 2082;
      *&v45[6] = v26;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "TileCell, unexpected, location, %{public}d, %{public}s", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B16770(a3);
    }
  }
}

void sub_100225734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101B1B570();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLPipelineLocationProvider::onLocationControllerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101B1B584();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLPipelineLocationProvider::onLocationControllerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10022EFD8(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1002258F8(uint64_t a1, unsigned int *a2, uint64_t a3, void *a4)
{
  v5 = *a2;
  sub_100022008(v6, a3);
  [a4 onLocationNotification:v5 data:v6];

  if (v11)
  {
    sub_100008080(v11);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v8)
  {
    sub_100008080(v8);
  }

  if (v7)
  {
    sub_100008080(v7);
  }
}

void sub_100225988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_10022599C(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 64) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101960B48();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLTimeZoneManager::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101960B5C();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLTimeZoneManager::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100225B68(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100225B68(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v6 = *a3;
  if (*a3 > 8)
  {
    if (v6 == 9)
    {
      if (qword_1025D4800 != -1)
      {
        sub_101960B84();
      }

      v26 = qword_1025D4808;
      if (os_log_type_enabled(qword_1025D4808, OS_LOG_TYPE_INFO))
      {
        v57 = 68289026;
        v58 = 0;
        v59 = 2082;
        v60 = "";
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Got kNotificationLocationUnavailable}", &v57, 0x12u);
      }

      sub_1008B8D58(a1, 0);
      return;
    }

    if (v6 == 13)
    {
      if (qword_1025D4800 != -1)
      {
        sub_101960B84();
      }

      v24 = qword_1025D4808;
      if (os_log_type_enabled(qword_1025D4808, OS_LOG_TYPE_INFO))
      {
        v57 = 68289026;
        v58 = 0;
        v59 = 2082;
        v60 = "";
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Got kNotificationServiceAuthorization}", &v57, 0x12u);
      }

      sub_1008B65F8(a1);
      return;
    }

    goto LABEL_34;
  }

  if (v6 >= 2 && v6 != 4)
  {
LABEL_34:
    if (qword_1025D4800 != -1)
    {
      sub_101960B84();
    }

    v27 = qword_1025D4808;
    if (os_log_type_enabled(qword_1025D4808, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *a3;
      v57 = 68289282;
      v58 = 0;
      v59 = 2082;
      v60 = "";
      v61 = 1026;
      v62 = v28;
      v21 = "{msg%{public}.0s:#Warning Got unknown notification, notification:%{public}d}";
      v22 = v27;
      v23 = 24;
      goto LABEL_38;
    }

    return;
  }

  if (qword_1025D4800 != -1)
  {
    sub_101960B84();
  }

  v9 = qword_1025D4808;
  if (os_log_type_enabled(qword_1025D4808, OS_LOG_TYPE_INFO))
  {
    v10 = *a3;
    v57 = 68289282;
    v58 = 0;
    v59 = 2082;
    v60 = "";
    v61 = 1026;
    v62 = v10;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Got new time zone location, notification:%{public}d}", &v57, 0x18u);
  }

  v11 = *(a4 + 88);
  if (v11 < 0.0 || (v12 = v11 + *(a4 + 76) + *(a1 + 1784), v12 >= CFAbsoluteTimeGetCurrent()))
  {
    if (*(a1 + 1656) < 1)
    {
      sub_1008B6F84(a1, a4, a4 + 160, 0);
      return;
    }

    v25 = *(a4 + 20);
    if (v25 < 400.0)
    {
      goto LABEL_26;
    }

    if (v25 <= *(a1 + 1768))
    {
      sub_1001097CC((a1 + 1864), a4, a1 + 184);
      if (vabdd_f64(v36, *(a1 + 80)) >= *(a4 + 20))
      {
LABEL_26:
        sub_1008B6F84(a1, a4, a4 + 160, 1);
        if (*(a1 + 1656) >= 1)
        {
          sub_1008B8AB8(a1);
        }

        *(a1 + 1660) = 0;
        return;
      }

      if (qword_1025D4800 != -1)
      {
        sub_101960AF8();
      }

      v29 = qword_1025D4808;
      if (!os_log_type_enabled(qword_1025D4808, OS_LOG_TYPE_DEFAULT))
      {
LABEL_51:
        v42 = *(a4 + 16);
        *(a1 + 496) = *a4;
        *(a1 + 512) = v42;
        v43 = *(a4 + 32);
        v44 = *(a4 + 48);
        v45 = *(a4 + 80);
        *(a1 + 560) = *(a4 + 64);
        *(a1 + 576) = v45;
        *(a1 + 528) = v43;
        *(a1 + 544) = v44;
        v46 = *(a4 + 96);
        v47 = *(a4 + 112);
        v48 = *(a4 + 128);
        *(a1 + 636) = *(a4 + 140);
        *(a1 + 608) = v47;
        *(a1 + 624) = v48;
        *(a1 + 592) = v46;
        memcpy((a1 + 656), (a4 + 160), 0x201uLL);
        v49 = *(a4 + 680);
        v50 = *(a4 + 688);
        if (v50)
        {
          atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
        }

        *(a1 + 1176) = v49;
        v51 = *(a1 + 1184);
        *(a1 + 1184) = v50;
        if (v51)
        {
          sub_100008080(v51);
        }

        v52 = *(a4 + 696);
        v53 = *(a4 + 728);
        *(a1 + 1208) = *(a4 + 712);
        *(a1 + 1224) = v53;
        *(a1 + 1192) = v52;
        v54 = *(a4 + 744);
        v55 = *(a4 + 760);
        v56 = *(a4 + 776);
        *(a1 + 1281) = *(a4 + 785);
        *(a1 + 1256) = v55;
        *(a1 + 1272) = v56;
        *(a1 + 1240) = v54;
        return;
      }

      v37 = LocationLogEncryptionDataSize();
      v38 = LocationLogEncryptionEncryptData();
      v39 = LocationLogEncryptionDataSize();
      v40 = LocationLogEncryptionEncryptData();
      v41 = *(a4 + 20);
      v57 = 68290306;
      v58 = 0;
      v59 = 2082;
      v60 = "";
      v61 = 1040;
      v62 = v37;
      v63 = 2098;
      v64 = v38;
      v65 = 1040;
      v66 = v39;
      v67 = 2098;
      v68 = v40;
      v69 = 2050;
      v70 = v41;
      v35 = "{msg%{public}.0s:#Warning Ignoring borderline location, lat:%{public, location:Encrypted_latitude}.*P, long:%{public, location:Encrypted_longitude}.*P, acc:%{public}0.2f}";
    }

    else
    {
      if (qword_1025D4800 != -1)
      {
        sub_101960AF8();
      }

      v29 = qword_1025D4808;
      if (!os_log_type_enabled(qword_1025D4808, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_51;
      }

      v30 = LocationLogEncryptionDataSize();
      v31 = LocationLogEncryptionEncryptData();
      v32 = LocationLogEncryptionDataSize();
      v33 = LocationLogEncryptionEncryptData();
      v34 = *(a4 + 20);
      v57 = 68290306;
      v58 = 0;
      v59 = 2082;
      v60 = "";
      v61 = 1040;
      v62 = v30;
      v63 = 2098;
      v64 = v31;
      v65 = 1040;
      v66 = v32;
      v67 = 2098;
      v68 = v33;
      v69 = 2050;
      v70 = v34;
      v35 = "{msg%{public}.0s:#Warning Ignoring inaccurate location, lat:%{public, location:Encrypted_latitude}.*P, long:%{public, location:Encrypted_longitude}.*P, acc:%{public}0.2f}";
    }

    _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, v35, &v57, 0x3Cu);
    goto LABEL_51;
  }

  if (qword_1025D4800 != -1)
  {
    sub_101960AF8();
  }

  v13 = qword_1025D4808;
  if (os_log_type_enabled(qword_1025D4808, OS_LOG_TYPE_DEFAULT))
  {
    v14 = LocationLogEncryptionDataSize();
    v15 = LocationLogEncryptionEncryptData();
    v16 = LocationLogEncryptionDataSize();
    v17 = LocationLogEncryptionEncryptData();
    v18 = *(a4 + 20);
    v19 = *(a4 + 76);
    v20 = *(a4 + 88);
    v57 = 68290818;
    v58 = 0;
    v59 = 2082;
    v60 = "";
    v61 = 1040;
    v62 = v14;
    v63 = 2098;
    v64 = v15;
    v65 = 1040;
    v66 = v16;
    v67 = 2098;
    v68 = v17;
    v69 = 2050;
    v70 = v18;
    v71 = 2050;
    v72 = v19;
    v73 = 2050;
    v74 = v20;
    v21 = "{msg%{public}.0s:#Warning Ignoring expired location, lat:%{public, location:Encrypted_latitude}.*P, long:%{public, location:Encrypted_longitude}.*P, acc:%{public}0.2f, timestamp:%{public}0.2f, lifespan:%{public}0.2f}";
    v22 = v13;
    v23 = 80;
LABEL_38:
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, v21, &v57, v23);
  }
}

BOOL sub_100226220(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 20);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v4 <= 500.0 && v4 > 0.0)
  {
    v9 = sub_100CD49AC(a1, *(a2 + 4), *(a2 + 12));
    *a1 = v9;
    if (v3 != v9)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101A58D5C();
      }

      v10 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v11 = *a1;
        v12 = *(a2 + 4);
        v13 = *(a2 + 12);
        v14 = *(a2 + 96);
        v15 = *(a2 + 20);
        *buf = 67241217;
        v33 = v11;
        v34 = 2053;
        v35 = v12;
        v36 = 2053;
        v37 = v13;
        v38 = 1026;
        v39 = v14;
        v40 = 2050;
        v41 = v15;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "DEMDeweightAreaMonitor,state,%{public}d,lat,%{sensitive}0.3f,lon,%{sensitive}0.3f,type,%{public}d,accuracy,%{public}0.3f", buf, 0x2Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101A58D70();
        }

        v16 = *a1;
        v17 = *(a2 + 4);
        v18 = *(a2 + 12);
        v19 = *(a2 + 96);
        v20 = *(a2 + 20);
        v23[0] = 67241217;
        v23[1] = v16;
        v24 = 2053;
        v25 = v17;
        v26 = 2053;
        v27 = v18;
        v28 = 1026;
        v29 = v19;
        v30 = 2050;
        v31 = v20;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "DEMDeweightAreaMonitor,state,%{public}d,lat,%{sensitive}0.3f,lon,%{sensitive}0.3f,type,%{public}d,accuracy,%{public}0.3f", v23, 44);
        v22 = v21;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDEMDeweightAreaMonitor::didDEMDeweightAreaStatusChange(const CLDaemonLocation &)", "%s\n", v21);
        if (v22 != buf)
        {
          free(v22);
        }
      }
    }
  }

  if (qword_1025D4650 != -1)
  {
    sub_101A58D70();
  }

  v5 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    v6 = *a1;
    *buf = 67240448;
    v33 = v6;
    v34 = 1026;
    LODWORD(v35) = v3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "DEMDeweightAreaMonitor,state,fIsInDEMDeweightArea,%{public}d,previousIsInDEMDeweightArea,%{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A58D98(a1, v3);
  }

  return v3 != *a1;
}

BOOL sub_100226520(float64_t *a1, double *a2, _DWORD *a3)
{
  v3.f64[0] = *a1;
  v4 = *a1 >= 25.127422;
  if (*a2 < -123.496142)
  {
    v4 = 0;
  }

  if (v3.f64[0] > 48.309232)
  {
    v4 = 0;
  }

  result = *a2 <= -70.312522 && v4;
  if (!result)
  {
    v9 = 0;
    if (!a3)
    {
      return 0;
    }

    goto LABEL_17;
  }

  v6 = 0;
  v3.f64[1] = *a2;
  while (1)
  {
    v7 = xmmword_1026319C4[v6];
    v8.i32[0] = vuzp1_s16(vmovn_s64(vcgeq_f64(v3, vcvtq_f64_f32(*v7.f32))), *&v3.f64[0]).u32[0];
    v8.i32[1] = vuzp1_s16(*&v3, vmovn_s64(vcgeq_f64(vcvt_hight_f64_f32(v7), v3))).i32[1];
    if (vminv_u16(v8))
    {
      break;
    }

    if (++v6 == 50)
    {
      return 0;
    }
  }

  if (a3)
  {
    v9 = v6 + 1;
LABEL_17:
    *a3 = v9;
    return result;
  }

  return 1;
}

void sub_1002265EC(uint64_t a1, unsigned int *a2, int8x16_t *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 40) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A402D8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLFenceMonitorNotifier::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A402EC();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFenceMonitorNotifier::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100227404(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

double sub_1002267B8(uint64_t a1)
{
  *(a1 + 4) = *(a1 + 100);
  *(a1 + 132) = *(a1 + 136);
  result = *(a1 + 116);
  *(a1 + 60) = result;
  return result;
}

uint64_t sub_1002267D4(uint64_t a1, uint64_t a2, double a3)
{
  if ((*(a1 + 615) & 1) == 0 && sub_1002270A4(a2))
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C9EC();
    }

    v6 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Fence: handleLocation, Ignoring cell or LAC position as per defaults", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A52C58();
    }

    return 1;
  }

  if ((*(a1 + 616) & 1) == 0)
  {
    v7 = *(a2 + 96);
    if (v7 == 11 || v7 == 4)
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A4C9EC();
      }

      v9 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
      {
        *v23 = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Fence: handleLocation, Ignoring WiFi position as per defaults", v23, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A52D34();
      }

      return 1;
    }
  }

  v10 = *(a2 + 96);
  if ((*(a1 + 617) & 1) == 0 && (v10 & 0xFFFFFFF7) == 1)
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C9EC();
    }

    v11 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
    {
      *v22 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "Fence: handleLocation, Ignoring GPS position as per defaults", v22, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A52E10();
    }

    return 1;
  }

  if ((*(a1 + 618) & 1) == 0 && v10 == 10)
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C9EC();
    }

    v12 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Fence: handleLocation, Ignoring Pipeline position as per defaults", v21, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A52EEC();
    }

    return 1;
  }

  if (*(a2 + 76) == *(a1 + 672))
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C9EC();
    }

    v13 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
    {
      *v20 = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "Fence: handleLocation, Ignoring duplicate location", v20, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A52FC8();
    }

    return 1;
  }

  v15 = *(a1 + 684);
  v16 = (*(**(a1 + 1768) + 408))(*(a1 + 1768));
  v17 = (*(**(a1 + 1768) + 16))(*(a1 + 1768));
  v18 = sub_10022980C(a1 + 904);
  v19.n128_f64[0] = a3;
  return sub_100228E24((a1 + 664), (a1 + 680), a1 + 288, a1 + 448, a2, v15, v16, v17, v19, v18);
}