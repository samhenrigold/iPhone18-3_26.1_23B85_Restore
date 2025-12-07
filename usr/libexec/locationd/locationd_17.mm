void sub_10011AC40(float *a1)
{
  if ((atomic_load_explicit(byte_10265C6C8, memory_order_acquire) & 1) == 0)
  {
    sub_1019EA904();
  }

  v2 = sub_10011E6AC(a1);
  if (v4 <= sqrtf((v3 * v3) + (v2 * v2)))
  {
    v5 = -1.0;
  }

  else
  {
    v5 = 1.0;
  }

  v21 = 0x3F80000000000000;
  v22 = 0;
  v6 = sub_10011E6AC(a1);
  v8 = v7;
  v9 = 0;
  v10 = (v7 * v7) + (v6 * v6);
  v12 = v11 * v5;
  v13 = (v11 * -0.0) + (v8 * v5);
  v14 = 0.0;
  v15 = (v11 * 0.0) - (v6 * v5);
  v16 = (v8 * -0.0) + (v6 * 0.0);
  *v20 = v13;
  *&v20[1] = v15;
  *&v20[2] = v16;
  do
  {
    v14 = v14 + (*&v20[v9] * *&v20[v9]);
    ++v9;
  }

  while (v9 != 3);
  v17 = sqrtf(v14);
  if (v17 > *&dword_10265C6BC)
  {
    v18 = -atan2f(sqrtf(v10), v12) / v17;
    v23[0] = v13 * v18;
    v23[1] = v15 * v18;
    v23[2] = v16 * v18;
    sub_10011AD94(&v19, v23);
    sub_10011AE4C(v19.f32, v23, -1.0);
    sub_10011FB70(v23, &v21);
  }
}

double sub_10011AD94(float32x4_t *a1, float *a2)
{
  v4 = 0;
  v5 = 0.0;
  do
  {
    v5 = v5 + (a2[v4] * a2[v4]);
    ++v4;
  }

  while (v4 != 3);
  v6 = sqrtf(v5);
  v7 = 0.5;
  v8 = v6 * 0.5;
  if ((v6 * 0.5) > 0.0)
  {
    v7 = (sinf(v6 * 0.5) / v8) * 0.5;
  }

  a1->f32[0] = v7 * *a2;
  a1->f32[1] = v7 * a2[1];
  a1->f32[2] = v7 * a2[2];
  v9.f32[0] = cosf(v8);
  a1->i32[3] = v9.i32[0];

  *&result = sub_10011E648(a1, v9).u64[0];
  return result;
}

float sub_10011AE4C@<S0>(float *a1@<X0>, float *a2@<X8>, float a3@<S0>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = v3 + v3;
  v6 = *a1;
  v7 = a1[1];
  v8 = v7 + v7;
  v9 = v3 * (v3 + v3);
  v10 = ((v7 + v7) * v7) + -1.0;
  v11 = ((v4 + v4) * v4) + -1.0;
  v12 = (v6 + v6) * v7;
  v13 = (v6 + v6) * v4;
  v14 = v3 * (v6 + v6);
  v15 = v8 * v4;
  v16 = v3 * v8;
  v17 = v5 * v4;
  v18 = v9 + (((v6 + v6) * v6) + -1.0);
  v19 = v12 - (v17 * a3);
  v20 = v13 + (v16 * a3);
  v21 = v12 + (v17 * a3);
  v22 = v9 + v10;
  v23 = v15 - (v14 * a3);
  v24 = v13 - (v16 * a3);
  result = v15 + (v14 * a3);
  *a2 = v18;
  a2[1] = v19;
  a2[2] = v20;
  a2[3] = v21;
  a2[4] = v22;
  a2[5] = v23;
  a2[6] = v24;
  a2[7] = result;
  a2[8] = v9 + v11;
  return result;
}

float sub_10011AECC(uint64_t a1, void *a2, unint64_t a3)
{
  if (a2 >= 3)
  {
    sub_101895A3C(a2);
  }

  if (a3 >= 3)
  {
    sub_101895B68(a3);
  }

  return *(a1 + 4 * (a2 + 3 * a3));
}

uint64_t sub_10011AF30(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    sub_101895910(a2);
  }

  return a1 + 4 * a2;
}

float sub_10011AF6C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    sub_101895EEC(a2);
  }

  return *(a1 + 4 * a2);
}

float sub_10011AFA8(float *a1, float a2, float a3, float a4)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  sub_10011AE4C(a1, v6, -1.0);
  return sub_10011FB70(v6, v5);
}

void sub_10011AFE4(uint64_t a1, int a2, double a3)
{
  if (qword_1025D4600 != -1)
  {
    sub_1003121A4();
  }

  v6 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 1105);
    if (v7 == 1)
    {
      v8 = *(a1 + 1056);
      v9 = *(a1 + 1064);
    }

    else
    {
      v8 = 0;
      v9 = 0xBFF0000000000000;
    }

    v10 = *(a1 + 1088);
    v11 = *(a1 + 1106);
    if (v11 == 1)
    {
      v12 = *(a1 + 1072);
      v13 = *(a1 + 1080);
    }

    else
    {
      v12 = 0;
      v13 = 0xBFF0000000000000;
    }

    *buf = 134351104;
    v42 = a3;
    v43 = 2050;
    v44 = v10;
    v45 = 1026;
    v46 = v7;
    v47 = 2050;
    v48 = v8;
    v49 = 2050;
    v50 = v9;
    v51 = 1026;
    v52 = v11;
    v53 = 2050;
    v54 = v12;
    v55 = 2050;
    v56 = v13;
    v57 = 1026;
    v58 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#pbio,course-filter,timestamp,%{public}.3f,fMachContinuousTimeOfFilterState,%{public}.3f,isCourseEstimateValid,%{public}d,course_rad,%{public}.3f,courseUnertainty_rad2,%{public}.3f,isDeltaCourseEstimateValid,%{public}d,deltaCourse_rad,%{public}.3f,deltaCourseUncertainty_rad2,%{public}.3f,didUpdate,%{public}d", buf, 0x50u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_1019DC4B0();
    }

    v14 = *(a1 + 1105);
    if (v14 == 1)
    {
      v15 = *(a1 + 1056);
      v16 = *(a1 + 1064);
    }

    else
    {
      v15 = 0;
      v16 = 0xBFF0000000000000;
    }

    v17 = *(a1 + 1088);
    v18 = *(a1 + 1106);
    if (v18 == 1)
    {
      v19 = *(a1 + 1072);
      v20 = *(a1 + 1080);
    }

    else
    {
      v19 = 0;
      v20 = 0xBFF0000000000000;
    }

    v23 = 134351104;
    v24 = a3;
    v25 = 2050;
    v26 = v17;
    v27 = 1026;
    v28 = v14;
    v29 = 2050;
    v30 = v15;
    v31 = 2050;
    v32 = v16;
    v33 = 1026;
    v34 = v18;
    v35 = 2050;
    v36 = v19;
    v37 = 2050;
    v38 = v20;
    v39 = 1026;
    v40 = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "#pbio,course-filter,timestamp,%{public}.3f,fMachContinuousTimeOfFilterState,%{public}.3f,isCourseEstimateValid,%{public}d,course_rad,%{public}.3f,courseUnertainty_rad2,%{public}.3f,isDeltaCourseEstimateValid,%{public}d,deltaCourse_rad,%{public}.3f,deltaCourseUncertainty_rad2,%{public}.3f,didUpdate,%{public}d", &v23, 80);
    v22 = v21;
    sub_100152C7C("Generic", 1, 0, 2, "void CLBackgroundInertialOdometryCalibrationEstimator::printCourseEstimate(const CFTimeInterval, const BOOL)", "%s\n", v21);
    if (v22 != buf)
    {
      free(v22);
    }
  }
}

void *sub_10011B29C(void *result, __int128 *a2)
{
  v2 = (result[6] + 112 * result[4]);
  v4 = a2[4];
  v3 = a2[5];
  v5 = a2[3];
  *(v2 + 95) = *(a2 + 95);
  v2[4] = v4;
  v2[5] = v3;
  v2[3] = v5;
  v6 = *a2;
  v7 = a2[2];
  v2[1] = a2[1];
  v2[2] = v7;
  *v2 = v6;
  v9 = result[6];
  v8 = result[7];
  v10 = v8 - v9;
  if (v8 == v9)
  {
    v14 = 0;
    v12 = result + 5;
    v17 = result[5];
    result[4] = 0;
    if (v17)
    {
      goto LABEL_10;
    }

    v16 = 0;
    goto LABEL_9;
  }

  v11 = 0x6DB6DB6DB6DB6DB7 * (v10 >> 4);
  v12 = result + 5;
  v13 = result[5];
  v14 = (result[4] + 1) % v11;
  result[4] = v14;
  if (v14 + 1 == v11)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14 + 1;
  }

  if (v15 == v13)
  {
    v16 = (v15 + 1) % v11;
LABEL_9:
    *v12 = v16;
  }

LABEL_10:
  v18 = *result;
  v19 = result[1];
  if (*result != v19)
  {
    v20 = (v14 + 1) % (0x6DB6DB6DB6DB6DB7 * (v10 >> 4));
    do
    {
      if (*(v18 + 56) == v14)
      {
        if (v8 == v9)
        {
          v21 = 0;
        }

        else
        {
          v21 = v20;
        }

        *(v18 + 56) = v21;
      }

      v18 += 64;
    }

    while (v18 != v19);
  }

  return result;
}

float64x2_t sub_10011B3A8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1107) == 1)
  {
    if (*(a1 + 1106))
    {
      v2 = 64;
    }

    else
    {
      v2 = 0;
    }

    v3 = *(a2 + 110) & 0x9F | v2;
    if (*(a1 + 1105))
    {
      v4 = 32;
    }

    else
    {
      v4 = 0;
    }

    *(a2 + 110) = v4 | v3;
    result = *(a1 + 1072);
    *(a2 + 88) = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 1056)), result);
  }

  return result;
}

void sub_10011B400(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_10011B45C(uint64_t a1, uint64_t *a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_1002F9794();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v5 = 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4);
    LODWORD(__p[0]) = 134349056;
    *(__p + 4) = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#pbio forwarding %{public}zu samples to consumers", __p, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AB3210(a2);
  }

  if (*(a1 + 48) == 1 && *(a1 + 64))
  {
    memset(__p, 0, sizeof(__p));
    sub_10011B644(__p, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4));
    v8 = __p[1];
    for (i = __p[0]; i != v8; i += 112)
    {
      sub_10011B710(*(a1 + 64), i, v6);
      sub_10011BAAC(i);
    }

    sub_10011B8FC(*(a1 + 8), __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    sub_10011B8FC(*(a1 + 8), a2);
  }
}

void sub_10011B5F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10011B61C(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t *sub_10011B644(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10011B6C0(result, a4);
  }

  return result;
}

void sub_10011B6A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10011B6C0(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    sub_10011B400(a1, a2);
  }

  sub_10028C64C();
}

void sub_10011B710(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = (a2 + 8);
  v6 = *(a2 + 8);
  if (*(a1 + 1000) == 1 && *(a1 + 1024) == 1 && *(a1 + 1040) <= v6 && *(a1 + 1048) >= v6)
  {
    v7 = *(a1 + 1032);
    v8 = *(a2 + 110);
    v9 = *(a1 + 968) + (v6 - v7) * *(a1 + 976);
    v10 = vabdd_f64(v6, v7);
    v11 = *(a1 + 984) + v10 * 0.001142;
    *(a2 + 68) = v9;
    *(a2 + 72) = v11;
    *(a2 + 110) = v8 | 0x18;
    v12 = *(a1 + 1008);
    *(a2 + 76) = v12;
    v14 = v10 * 0.016;
    if (v14 < -40.0)
    {
      v14 = -40.0;
    }

    if (v14 > 40.0)
    {
      v14 = 40.0;
    }

    v13 = *(a1 + 1016);
    v15 = __exp10(v14 / 10.0) + v13;
    *(a2 + 80) = v15;
    *(a2 + 16) = v7;
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1003121A4();
    }

    v16 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v17 = *v5;
      v18 = *(a1 + 1040);
      v19 = *(a1 + 1048);
      v20 = 134349568;
      v21 = v17;
      v22 = 2050;
      v23 = v18;
      v24 = 2050;
      v25 = v19;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment::SetCalibration, sample.timestamp, %{public}.3f, outside of calibration validity window, %{public}.3f, to , %{public}.3f. Not applying calibration.", &v20, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019DCAF0(v5, a1);
    }

    *(a2 + 110) &= 0xE7u;
  }
}

void sub_10011B8FC(uint64_t a1, uint64_t *a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_1002976C8();
  }

  v4 = qword_1025D4608;
  v5 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO);
  if (v5)
  {
    v7 = sub_10000B1F8(v5, v6);
    v20 = 1;
    v10 = sub_10001A6B0(v7, &v20);
    v11 = a2[1];
    v12 = 0x6DB6DB6DB6DB6DB7 * ((v11 - *a2) >> 4);
    if (v11 == *a2)
    {
      v13 = 0xBFF0000000000000;
    }

    else
    {
      v13 = *(v11 - 104);
    }

    v14 = sub_10000B1F8(v8, v9);
    v15 = sub_100125220(v14);
    v20 = 134349824;
    v21 = v10;
    v22 = 2050;
    v23 = v12;
    v24 = 2050;
    v25 = v13;
    v26 = 2050;
    v27 = v15;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "LocationController,got IO samples,now_mct,%{public}.3f,count,%{public}zu,last_sample_mct,%{public}.3f,propagation_us,%{public}.3f", &v20, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FBD88(a2);
  }

  v18 = *(a1 + 280);
  if (v18)
  {
    (*(*v18 + 520))(v18, a2);
  }

  v19 = *(a1 + 312);
  if (v19)
  {
    sub_100124B08(v19, a2, v16, v17);
  }

  sub_100124EAC(a1 + 800, a2);
}

BOOL sub_10011BAAC(uint64_t a1)
{
  v1 = *(a1 + 110) & 0x18;
  if (v1 == 24 && *(a1 + 104) == 1)
  {
    v3 = __sincosf_stret(*(a1 + 68));
    v4 = *(a1 + 76);
    v5 = *(a1 + 28);
    v6 = *(a1 + 32);
    *(a1 + 28) = v4 * ((v3.__cosval * v5) - (v3.__sinval * v6));
    *(a1 + 32) = v4 * ((v3.__cosval * v6) + (v3.__sinval * v5));
    *(a1 + 104) = 8;
  }

  return v1 == 24;
}

void sub_10011BB24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + 440);
  *(a2 + 8) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 24) = _Q0;
  *(a2 + 40) = _Q0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = _Q0;
  *(a2 + 88) = 0;
  v10 = *(a1 + 8);
  *a2 = v10;
  sub_100124394(a1, a2 + 8);
  sub_10011BC28(a1, a2 + 48);
  v11 = *(a1 + 456);
  *(a2 + 96) = *v4;
  *(a2 + 112) = v11;
  v12 = *(a1 + 392);
  *(a2 + 120) = *(a1 + 376);
  *(a2 + 136) = v12;
  *(a2 + 152) = *(a1 + 408);
  *(a2 + 160) = *(a1 + 432);
  *(a2 + 168) = v4[3];
  *(a2 + 200) = *(a1 + 520);
  *(a2 + 184) = *(a1 + 504);
  v13 = *(a1 + 544);
  *(a2 + 208) = *(a1 + 528);
  *(a2 + 224) = v13;
  v14 = *(a1 + 568);
  *(a2 + 240) = v14;
  v15 = *(a1 + 400);
  if (v15 <= 0.0)
  {
    v15 = 1.0;
  }

  *(a2 + 244) = *a1;
  *(a2 + 248) = v15;
  if (v10 < 0.0)
  {
    if (v14)
    {
      *a2 = *(a1 + 560);
    }
  }
}

double sub_10011BC28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0xBFF0000000000000;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 24) = _Q0;
  *(a2 + 40) = 0;
  result = *(a1 + 344);
  if (result >= 0.0 && *a1 == 8)
  {
    result = *(a1 + 400);
    if (result > 0.0)
    {
      v8 = 1.0 / result;
      v9 = v8 * *(a1 + 416);
      v10 = -(*(a1 + 424) * v8);
      v11 = *(a1 + 368);
      *a2 = *(a1 + 376);
      *(a2 + 8) = v10;
      *(a2 + 16) = v9;
      *(a2 + 24) = vdupq_n_s64(0x3FB70A3D70A3D70AuLL);
      result = 0.069;
      if (v11 >= 0.069)
      {
        result = v11;
      }

      *(a2 + 40) = result;
      if (*(a1 + 40) > 0.0)
      {
        v12 = *(a1 + 56);
        if (v12 >= 0.0)
        {
          v13 = *(a1 + 80);
          if (v13 <= 0.616850275 || v12 <= 5.0)
          {
            if (*(a1 + 608) == 1)
            {
              v14 = 1.0;
              if (*(a1 + 48) > 0.0)
              {
                v14 = *(a1 + 48);
              }

              result = *(a1 + 64) / v14 * (*(a1 + 64) / v14) + 0.09 + *(a1 + 72) / v14 * (*(a1 + 72) / v14);
              *(a2 + 24) = result;
              *(a2 + 32) = result;
            }
          }

          else
          {
            if (result < v13)
            {
              result = *(a1 + 80);
            }

            *(a2 + 40) = result;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10011BD44(uint64_t a1, uint64_t a2, double a3)
{
  if (*a2 > 0.0 && *(a2 + 240))
  {
    *v94 = *(a2 + 96);
    v95 = *(a2 + 112);
    if (*v94 <= 0.0 || v95 <= 0.0)
    {
      if (qword_1025D4770 != -1)
      {
        sub_1002F97A8();
      }

      v12 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349056;
        *&buf[4] = a3;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#fusion,InertialOdometry relative altimeter not available,inflating altitude unc,applicabilityTime,%{public}.3f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        *__p = 134349056;
        *&__p[4] = a3;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,InertialOdometry relative altimeter not available,inflating altitude unc,applicabilityTime,%{public}.3f", __p, 12);
        v72 = v71;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::applyIODerivedMeas(IODerivedMeas &, const CFTimeInterval)", "%s\n", v71);
        if (v72 != buf)
        {
          free(v72);
        }
      }
    }

    else
    {
      if (qword_1025D4770 != -1)
      {
        sub_1002F97A8();
      }

      v6 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134349825;
        *&buf[4] = v94[0];
        *&buf[12] = 2050;
        *&buf[14] = a3;
        *&buf[22] = 2049;
        *v102 = v94[1];
        *&v102[8] = 2050;
        *&v102[10] = v95;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#fusion,InertialOdometry relative altimeter meas update,IOTime_mct,%{public}.3f,applicabilityTime,%{public}.3f,VVel_mps,%{private}.2f,VVel_var,%{public}.2f", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        *__p = 134349825;
        *&__p[4] = v94[0];
        v97 = 2050;
        v98 = a3;
        v99 = 2049;
        *v100 = v94[1];
        *&v100[8] = 2050;
        *&v100[10] = v95;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,InertialOdometry relative altimeter meas update,IOTime_mct,%{public}.3f,applicabilityTime,%{public}.3f,VVel_mps,%{private}.2f,VVel_var,%{public}.2f", __p, 42);
        v74 = v73;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::applyIODerivedMeas(IODerivedMeas &, const CFTimeInterval)", "%s\n", v73);
        if (v74 != buf)
        {
          free(v74);
        }
      }

      v94[0] = *&a3;
    }

    for (i = *(a1 + 248); i; i = *i)
    {
      if (*v94 <= 0.0 || v95 <= 0.0)
      {
        v7.n128_u64[0] = *(a2 + 248);
        sub_1006ED108((i + 25), v7);
      }

      else
      {
        sub_1000AF298((i + 25), v94, v95);
      }
    }

    v14 = *(a1 + 224);
    if (v14 != (a1 + 232))
    {
      do
      {
        if (*v94 <= 0.0 || v95 <= 0.0)
        {
          v7.n128_u64[0] = *(a2 + 248);
          sub_1006ED108((v14 + 29), v7);
        }

        else
        {
          sub_1000AF298((v14 + 29), v94, v95);
        }

        v15 = v14[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v14[2];
            v17 = *v16 == v14;
            v14 = v16;
          }

          while (!v17);
        }

        v14 = v16;
      }

      while (v16 != (a1 + 232));
    }

    if (*(a1 + 1104))
    {
      if (*v94 <= 0.0 || v95 <= 0.0)
      {
        v7.n128_u64[0] = *(a2 + 248);
        sub_1006ED108(a1 + 448, v7);
      }

      else
      {
        v18 = *(a1 + 816);
        v19 = 1.5;
        if (v18 > *v94 && v18 - *v94 < 1.5)
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v21 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134349568;
            *&buf[4] = v18;
            *&buf[12] = 2050;
            *&buf[14] = v94[0];
            *&buf[22] = 2050;
            *v102 = v18 - *v94;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#fusion,adjust IO derived VVelMeas timestamp,latest selected hypothesis mct,%{public}.3f,is ahead of IO,mct,%{public}.3f,by dt_s,%{public}.3f", buf, 0x20u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            *__p = 134349568;
            *&__p[4] = v18;
            v97 = 2050;
            v98 = *v94;
            v99 = 2050;
            *v100 = v18 - *v94;
            LODWORD(v93) = 32;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,adjust IO derived VVelMeas timestamp,latest selected hypothesis mct,%{public}.3f,is ahead of IO,mct,%{public}.3f,by dt_s,%{public}.3f", __p, v93);
            v76 = v75;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::applyIODerivedMeas(IODerivedMeas &, const CFTimeInterval)", "%s\n", v75);
            if (v76 != buf)
            {
              free(v76);
            }
          }

          v19 = v18 + 0.001;
          *v94 = v18 + 0.001;
        }

        sub_1000AF298(a1 + 448, v94, v19);
      }
    }

    v22 = (sub_1001252CC(a1 + 2424, a3, 6.0) & 1) != 0 || sub_100125258(a1 + 2424, a3, 6.0) || sub_1001255A0(a1 + 2424, a3, 6.0) || sub_1001254F8(a1 + 2424);
    v23 = *(a1 + 2824);
    v24 = a3 - v23 < 300.0 && v23 > 0.0;
    if (!sub_10011D140(a1 + 2424, a3, 6.0))
    {
      v25 = *(a1 + 2448) - 1;
      if (v25 < 0xA && ((0x21Fu >> v25) & 1) != 0)
      {
        v26 = 0;
        if (!v22)
        {
LABEL_99:
          v38 = *(a2 + 240);
          if (v38 > 3)
          {
LABEL_100:
            if (!sub_1001253BC(a1 + 2424, a3, -1.0))
            {
              goto LABEL_185;
            }

            v39 = *(a1 + 2224);
            if (v39 < 0.0 || v39 <= a3 && a3 - v39 > 2.0)
            {
              goto LABEL_185;
            }

            if ((*(a1 + 2232) - 1) > 1)
            {
              goto LABEL_185;
            }

            if (qword_1025D4770 != -1)
            {
              sub_100224830();
            }

            v40 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              v41 = sub_100D6B9B0(*(a1 + 2232));
              sub_1001FCE40(a1 + 2424, __p);
              v42 = v99 >= 0 ? __p : *__p;
              *buf = 134349570;
              *&buf[4] = a3;
              *&buf[12] = 2082;
              *&buf[14] = v41;
              *&buf[22] = 2082;
              *v102 = v42;
              _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "#fusion,io_mct,%{public}.3f,override IO derived driving dynamics mode with moving-in-place,prevIO_contxt,%{public}s,motion activity,%{public}s", buf, 0x20u);
              if (SHIBYTE(v99) < 0)
              {
                operator delete(*__p);
              }
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4770 != -1)
              {
                sub_100224830();
              }

              v88 = qword_1025D4778;
              v89 = sub_100D6B9B0(*(a1 + 2232));
              sub_1001FCE40(a1 + 2424, v94);
              if (v95 >= 0.0)
              {
                v90 = v94;
              }

              else
              {
                v90 = v94[0];
              }

              *__p = 134349570;
              *&__p[4] = a3;
              v97 = 2082;
              v98 = *&v89;
              v99 = 2082;
              *v100 = v90;
              LODWORD(v93) = 32;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v88, 2, "#fusion,io_mct,%{public}.3f,override IO derived driving dynamics mode with moving-in-place,prevIO_contxt,%{public}s,motion activity,%{public}s", __p, v93);
              v92 = v91;
              if (SHIBYTE(v95) < 0)
              {
                operator delete(v94[0]);
              }

              sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::applyIODerivedMeas(IODerivedMeas &, const CFTimeInterval)", "%s\n", v92);
              if (v92 != buf)
              {
                free(v92);
              }
            }

            v43 = 2;
            goto LABEL_184;
          }

          if (v38 == 1)
          {
            goto LABEL_116;
          }

          v44 = *(a2 + 120);
          if (v44 <= 0.0 || (v45 = *(a2 + 144), v45 <= 0.0) || v44 <= a3 && a3 - v44 > 6.0)
          {
            if (qword_1025D4770 != -1)
            {
              sub_100224830();
            }

            v46 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              v47 = *(a2 + 120);
              v48 = sub_100D6B9B0(*(a2 + 240));
              *buf = 134349570;
              *&buf[4] = v47;
              *&buf[12] = 2050;
              *&buf[14] = a3;
              *&buf[22] = 2082;
              *v102 = v48;
              _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEBUG, "#fusion,IO ignored,expected valid IO derived GDistanceMove with mct,%{public}.3f,IO applicability time mct,%{public}.3f,IO_contxt,%{public}s", buf, 0x20u);
            }

            result = sub_10000A100(121, 2);
            if (!result)
            {
              goto LABEL_186;
            }

            sub_101A7B5F4(buf);
            v49 = qword_1025D4778;
            v50 = *(a2 + 120);
            v51 = sub_100D6B9B0(*(a2 + 240));
            *__p = 134349570;
            *&__p[4] = v50;
            v97 = 2050;
            v98 = a3;
            v99 = 2082;
            *v100 = v51;
            LODWORD(v93) = 32;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v49, 2, "#fusion,IO ignored,expected valid IO derived GDistanceMove with mct,%{public}.3f,IO applicability time mct,%{public}.3f,IO_contxt,%{public}s", __p, v93);
            v53 = v52;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::applyIODerivedMeas(IODerivedMeas &, const CFTimeInterval)", "%s\n", v52);
            goto LABEL_130;
          }

          v63 = *(a2 + 244);
          if (v63 != 1)
          {
            if (v44 <= 0.0)
            {
              if (v63 == 8)
              {
                goto LABEL_185;
              }

LABEL_189:
              if (qword_1025D4770 != -1)
              {
                sub_100224830();
              }

              v69 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
              {
                *buf = 134349056;
                *&buf[4] = a3;
                _os_log_impl(dword_100000000, v69, OS_LOG_TYPE_ERROR, "#fusion,#Error,IO derived meas not used,IO_mct,%{public}.3f", buf, 0xCu);
              }

              result = sub_10000A100(121, 0);
              if (!result)
              {
                goto LABEL_186;
              }

              sub_101A7B5F4(buf);
              *__p = 134349056;
              *&__p[4] = a3;
              LODWORD(v93) = 12;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "#fusion,#Error,IO derived meas not used,IO_mct,%{public}.3f", __p, v93);
              v53 = v70;
              sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::applyIODerivedMeas(IODerivedMeas &, const CFTimeInterval)", "%s\n", v70);
LABEL_130:
              if (v53 != buf)
              {
                free(v53);
              }

              result = 0;
              goto LABEL_186;
            }

            v64 = *(a2 + 128);
            if (v64 > 0.001)
            {
              if (v63 == 8)
              {
                if (v45 > 0.0 && v64 > 0.001)
                {
                  result = sub_100D6B9D4(a1, a2, a3);
LABEL_186:
                  *(a1 + 2232) = *(a2 + 240);
                  *(a1 + 2224) = *a2;
                  return result;
                }

LABEL_185:
                result = sub_10011D1C0(a1, a2, a3);
                goto LABEL_186;
              }

              goto LABEL_189;
            }
          }

LABEL_116:
          if (v24 || !v26 && (*(a2 + 184) <= 0.0 || *(a2 + 200) <= 0.0) && (*(a2 + 128) > 0.001 || !sub_100125608(a1 + 2424, a3, -1.0)) && ((v65 = *(a1 + 2224), v65 < 0.0) || v65 <= a3 && a3 - v65 > 2.0 || *(a1 + 2232) < 4u))
          {
            if (*(a2 + 240) < 4u)
            {
              goto LABEL_185;
            }

            goto LABEL_100;
          }

          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v54 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v55 = *(a2 + 240);
            v56 = v55 > 5 ? "" : (&off_1024AE190)[v55];
            v66 = *(a1 + 2232);
            v67 = v66 > 5 ? "" : (&off_1024AE190)[v66];
            sub_1001FCE40(a1 + 2424, __p);
            v68 = v99 >= 0 ? __p : *__p;
            *buf = 134350082;
            *&buf[4] = a3;
            *&buf[12] = 2082;
            *&buf[14] = v56;
            *&buf[22] = 2082;
            *v102 = v67;
            *&v102[8] = 1026;
            *&v102[10] = v26;
            *&v102[14] = 2082;
            *&v102[16] = v68;
            _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEBUG, "#fusion,io_mct,%{public}.3f,override IO derived non-driving dynamics mode with driving,IO_contxt,%{public}s,prevIO_contxt,%{public}s,isLikelyDriving,%{public}d,motion activity,%{public}s", buf, 0x30u);
            if (SHIBYTE(v99) < 0)
            {
              operator delete(*__p);
            }
          }

          if (!sub_10000A100(121, 2))
          {
LABEL_183:
            v43 = 5;
LABEL_184:
            *(a2 + 240) = v43;
            goto LABEL_185;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v83 = qword_1025D4778;
          v84 = sub_100D6B9B0(*(a2 + 240));
          v85 = sub_100D6B9B0(*(a1 + 2232));
          sub_1001FCE40(a1 + 2424, v94);
          if (v95 >= 0.0)
          {
            v86 = v94;
          }

          else
          {
            v86 = v94[0];
          }

          *__p = 134350082;
          *&__p[4] = a3;
          v97 = 2082;
          v98 = *&v84;
          v99 = 2082;
          *v100 = v85;
          *&v100[8] = 1026;
          *&v100[10] = v26;
          *&v100[14] = 2082;
          *&v100[16] = v86;
          LODWORD(v93) = 48;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v83, 2, "#fusion,io_mct,%{public}.3f,override IO derived non-driving dynamics mode with driving,IO_contxt,%{public}s,prevIO_contxt,%{public}s,isLikelyDriving,%{public}d,motion activity,%{public}s", __p, v93);
          v37 = v87;
          if (SHIBYTE(v95) < 0)
          {
            operator delete(v94[0]);
          }

LABEL_217:
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::applyIODerivedMeas(IODerivedMeas &, const CFTimeInterval)", "%s\n", v37);
          if (v37 != buf)
          {
            free(v37);
          }

          goto LABEL_183;
        }

LABEL_71:
        v27 = (a2 + 184);
        v28 = *(a2 + 184);
        if (v28 > 0.0 && *(a2 + 200) > 0.0 && v28 >= 0.0 && (*(a1 + 183) & 1) == 0 && (v28 > a3 || a3 - v28 <= 6.0))
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v57 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v58 = *v27;
            v59 = *(a1 + 2448);
            sub_1001FCE40(a1 + 2424, __p);
            v60 = v99 >= 0 ? __p : *__p;
            *buf = 134349826;
            *&buf[4] = v58;
            *&buf[12] = 2050;
            *&buf[14] = a3;
            *&buf[22] = 1026;
            *v102 = v59;
            *&v102[4] = 2082;
            *&v102[6] = v60;
            _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEBUG, "#fusion,applying course-aiding,driving or cycling motion activity with valid IO course estimate,io_mct,%{public}.3f,most recent filter update time mct,%{public}.3f,currentDynamicsLevel,%{public}d,motion activity,%{public}s", buf, 0x26u);
            if (SHIBYTE(v99) < 0)
            {
              operator delete(*__p);
            }
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4770 != -1)
            {
              sub_100224830();
            }

            v77 = qword_1025D4778;
            v78 = *v27;
            v79 = *(a1 + 2448);
            sub_1001FCE40(a1 + 2424, v94);
            if (v95 >= 0.0)
            {
              v80 = v94;
            }

            else
            {
              v80 = v94[0];
            }

            *__p = 134349826;
            *&__p[4] = v78;
            v97 = 2050;
            v98 = a3;
            v99 = 1026;
            *v100 = v79;
            *&v100[4] = 2082;
            *&v100[6] = v80;
            LODWORD(v93) = 38;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v77, 2, "#fusion,applying course-aiding,driving or cycling motion activity with valid IO course estimate,io_mct,%{public}.3f,most recent filter update time mct,%{public}.3f,currentDynamicsLevel,%{public}d,motion activity,%{public}s", __p, v93);
            v82 = v81;
            if (SHIBYTE(v95) < 0)
            {
              operator delete(v94[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::applyIODerivedMeas(IODerivedMeas &, const CFTimeInterval)", "%s\n", v82);
            if (v82 != buf)
            {
              free(v82);
            }
          }

          v61 = *(a1 + 2448);
          if ((v61 - 1) < 5 || v61 == 10)
          {
            sub_100125538(a1 + 2424, 7u, a3);
          }

          for (j = *(a1 + 248); j; j = *j)
          {
            *(j + 140) = 7;
          }

          if (*(a1 + 1104))
          {
            *(a1 + 808) = 7;
          }

          *buf = *v27;
          *&buf[16] = *(a2 + 200);
          *buf = a3;
          result = sub_1002A5A7C(a1, buf);
          goto LABEL_186;
        }

        if (*(a2 + 240) >= 4u || !v26)
        {
          goto LABEL_185;
        }

        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v30 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v31 = sub_100D6B9B0(*(a2 + 240));
          sub_1001FCE40(a1 + 2424, __p);
          v32 = v99 >= 0 ? __p : *__p;
          *buf = 134349826;
          *&buf[4] = a3;
          *&buf[12] = 2082;
          *&buf[14] = v31;
          *&buf[22] = 1026;
          *v102 = 1;
          *&v102[4] = 2082;
          *&v102[6] = v32;
          _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "#fusion,io_mct,%{public}.3f,override IO derived non-driving dynamics mode with driving,IO_contxt,%{public}s,isLikelyDriving,%{public}d,motion activity,%{public}s", buf, 0x26u);
          if (SHIBYTE(v99) < 0)
          {
            operator delete(*__p);
          }
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_183;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v33 = qword_1025D4778;
        v34 = sub_100D6B9B0(*(a2 + 240));
        sub_1001FCE40(a1 + 2424, v94);
        if (v95 >= 0.0)
        {
          v35 = v94;
        }

        else
        {
          v35 = v94[0];
        }

        *__p = 134349826;
        *&__p[4] = a3;
        v97 = 2082;
        v98 = *&v34;
        v99 = 1026;
        *v100 = 1;
        *&v100[4] = 2082;
        *&v100[6] = v35;
        LODWORD(v93) = 38;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v33, 2, "#fusion,io_mct,%{public}.3f,override IO derived non-driving dynamics mode with driving,IO_contxt,%{public}s,isLikelyDriving,%{public}d,motion activity,%{public}s", __p, v93);
        v37 = v36;
        if (SHIBYTE(v95) < 0)
        {
          operator delete(v94[0]);
        }

        goto LABEL_217;
      }

      if ((sub_1002F8B34(a1 + 2424, a3, -1.0) & 1) == 0)
      {
        v26 = sub_1002F8B84(a1 + 2424, a3, -1.0);
        if (!v22)
        {
          goto LABEL_99;
        }

        goto LABEL_71;
      }
    }

    v26 = 1;
    if (!v22)
    {
      goto LABEL_99;
    }

    goto LABEL_71;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1002F97A8();
  }

  v8 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#fusion,IO derived meas not used,unknown IO derived motion context", buf, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101A7B5F4(buf);
    *__p = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,IO derived meas not used,unknown IO derived motion context", __p, 2);
    v11 = v10;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::applyIODerivedMeas(IODerivedMeas &, const CFTimeInterval)", "%s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }

    return 0;
  }

  return result;
}

void sub_10011D134(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

BOOL sub_10011D140(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  result = 0;
  if (v3 >= 0.0)
  {
    v4 = a3 >= 0.0 && v3 <= a2;
    v5 = !v4 || a2 - v3 <= a3;
    if (v5 && CLMotionActivity::isDriving((a1 + 40)) && (CLMotionActivity::isStatic((a1 + 40)) & 1) == 0 && ((CLMotionActivity::isVehicularHighConfidence((a1 + 40)) & 1) != 0 || *(a1 + 44) > 0))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_10011D1C0(uint64_t a1, uint64_t a2, double a3)
{
  v79 = a3;
  if (*(a2 + 240))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v5 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#fusion,update with Uncalibrated IO", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      LOWORD(v80) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,update with Uncalibrated IO", &v80, 2);
      v62 = v61;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypothesesWithUnCalibratedIO(const IODerivedMeas &, const CFTimeInterval)", "%s\n", v61);
      if (v62 != buf)
      {
        free(v62);
      }
    }

    v6 = *a2;
    v78 = *a2;
    v7 = *(a2 + 240);
    if (v7 - 1 <= 1)
    {
      if (v7 == 2)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v9 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v10 = *(a1 + 2832);
        v11 = *(a2 + 240);
        v12 = *(a1 + 2448);
        v13 = sub_10011D140(a1 + 2424, *a2, 6.0);
        *buf = 134350592;
        v89 = v6;
        v90 = 2050;
        v91 = v79;
        v92 = 2050;
        *&v93 = v10;
        WORD4(v93) = 1026;
        *(&v93 + 10) = v11;
        HIWORD(v93) = 1026;
        *v94 = v8;
        *&v94[4] = 1026;
        *&v94[6] = v12;
        LOWORD(v95[0]) = 1026;
        *(v95 + 2) = v13;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#fusion,io_mct,%{public}.3f,io_applicableTime_mct,%{public}.3f,InertialOdometry derived zupt update,AccumStaticTime_s,%{public}.1f,IO_MotionState,%{public}d,IO_dynamicsMode,%{public}d,CM_dynamicsMode,%{public}d,CM_indicates_driving,%{public}d", buf, 0x38u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v63 = qword_1025D4778;
        v64 = *(a1 + 2832);
        v65 = *(a2 + 240);
        v66 = *(a1 + 2448);
        v67 = sub_10011D140(a1 + 2424, *a2, 6.0);
        v80 = 134350592;
        v81 = v6;
        v82 = 2050;
        v83 = v79;
        v84 = 2050;
        *&v85 = v64;
        WORD4(v85) = 1026;
        *(&v85 + 10) = v65;
        HIWORD(v85) = 1026;
        *v86 = v8;
        *&v86[4] = 1026;
        *&v86[6] = v66;
        LOWORD(v87[0]) = 1026;
        *(v87 + 2) = v67;
        LODWORD(v77) = 56;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v63, 2, "#fusion,io_mct,%{public}.3f,io_applicableTime_mct,%{public}.3f,InertialOdometry derived zupt update,AccumStaticTime_s,%{public}.1f,IO_MotionState,%{public}d,IO_dynamicsMode,%{public}d,CM_dynamicsMode,%{public}d,CM_indicates_driving,%{public}d", &v80, v77);
        v69 = v68;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypothesesWithUnCalibratedIO(const IODerivedMeas &, const CFTimeInterval)", "%s\n", v68);
        if (v69 != buf)
        {
          free(v69);
        }
      }

      *(a1 + 2832) = *(a2 + 248) + *(a1 + 2832);
      sub_100125538(a1 + 2424, v8, v79);
      v14 = *(a1 + 224);
      if (v14 != (a1 + 232))
      {
        do
        {
          *(v14 + 148) = v8;
          if (!sub_1000AE380((v14 + 29), &v79, -1.0))
          {
            if (qword_1025D4770 != -1)
            {
              sub_100224830();
            }

            v15 = qword_1025D4778;
            if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
            {
              v16 = *(v14 + 220);
              *buf = 134349312;
              v89 = v78;
              v90 = 1026;
              LODWORD(v91) = v16;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "#fusion,io_mct,%{public}.3f,provider hypothesis zupt failed,hID,%{public}d", buf, 0x12u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A7B5F4(buf);
              v20 = *(v14 + 220);
              v80 = 134349312;
              v81 = v78;
              v82 = 1026;
              LODWORD(v83) = v20;
              LODWORD(v77) = 18;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,io_mct,%{public}.3f,provider hypothesis zupt failed,hID,%{public}d", &v80, v77);
              v22 = v21;
              sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypothesesWithUnCalibratedIO(const IODerivedMeas &, const CFTimeInterval)", "%s\n", v21);
              if (v22 != buf)
              {
                free(v22);
              }
            }
          }

          v17 = v14[1];
          if (v17)
          {
            do
            {
              v18 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            do
            {
              v18 = v14[2];
              v19 = *v18 == v14;
              v14 = v18;
            }

            while (!v19);
          }

          v14 = v18;
        }

        while (v18 != (a1 + 232));
      }

      for (i = *(a1 + 248); i; i = *i)
      {
        *(i + 140) = v8;
        if (!sub_1000AE380((i + 25), &v79, -1.0))
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v41 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v42 = *(i + 212);
            *buf = 134349312;
            v89 = v78;
            v90 = 1026;
            LODWORD(v91) = v42;
            _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "#fusion,io_mct,%{public}.3f,fused hypothesis zupt failed,hID,%{public}d", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v43 = *(i + 212);
            v80 = 134349312;
            v81 = v78;
            v82 = 1026;
            LODWORD(v83) = v43;
            LODWORD(v77) = 18;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,io_mct,%{public}.3f,fused hypothesis zupt failed,hID,%{public}d", &v80, v77);
            v45 = v44;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypothesesWithUnCalibratedIO(const IODerivedMeas &, const CFTimeInterval)", "%s\n", v44);
            if (v45 != buf)
            {
              free(v45);
            }
          }
        }
      }

      if (*(a1 + 1104))
      {
        *(a1 + 808) = v8;
        if (!sub_1000AE380(a1 + 448, &v78, 1.5))
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v46 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v47 = *(a1 + 1096);
            *buf = 134349312;
            v89 = v78;
            v90 = 1026;
            LODWORD(v91) = v47;
            _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEBUG, "#fusion,io_mct,%{public}.3f,latest selected fused hypothesis zupt failed,hID,%{public}d", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v48 = *(a1 + 1096);
            v80 = 134349312;
            v81 = v78;
            v82 = 1026;
            LODWORD(v83) = v48;
            LODWORD(v77) = 18;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,io_mct,%{public}.3f,latest selected fused hypothesis zupt failed,hID,%{public}d", &v80, v77);
            v50 = v49;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypothesesWithUnCalibratedIO(const IODerivedMeas &, const CFTimeInterval)", "%s\n", v49);
            if (v50 != buf)
            {
              free(v50);
            }
          }
        }
      }

      return 1;
    }

    if ((v7 & 0xFFFFFFFA) != 0 && (*(a2 + 120) <= 0.0 || *(a2 + 144) <= 0.0 || *(a2 + 128) > 0.001))
    {
      if (*(a2 + 8) <= 0.0 || *(a2 + 24) <= 0.0 || *(a2 + 40) <= 0.0 || *(a2 + 16) >= 2.5)
      {
        v38 = v79;
        v37 = a1 + 2424;
        v39 = 5;
      }

      else
      {
        v38 = v79;
        v37 = a1 + 2424;
        v39 = 4;
      }
    }

    else
    {
      if (v7 <= 3 && (*(a2 + 128) >= 0.001 || sub_1001253BC(a1 + 2424, v6, 6.0) && *(a2 + 160) <= 0.3))
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v51 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v52 = *(a2 + 240);
          v53 = *(a2 + 128);
          v54 = *(a2 + 160);
          v55 = *(a1 + 2448);
          *buf = 134350336;
          v89 = v6;
          v90 = 2050;
          v91 = v79;
          v92 = 1026;
          LODWORD(v93) = v52;
          WORD2(v93) = 2050;
          *(&v93 + 6) = v53;
          HIWORD(v93) = 2050;
          *v94 = v54;
          *&v94[8] = 1026;
          v95[0] = v55;
          _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEBUG, "#fusion,io_mct,%{public}.3f,io_applicableTime_mct,%{public}.3f,uncalib IO data is not used,IOMotionState,%{public}d,GDisMoved_m,%{public}.3f,IOVVel,%{public}.3f,CM_dynamicsMode,%{public}d", buf, 0x36u);
        }

        result = sub_10000A100(121, 2);
        if (result)
        {
          sub_101A7B5F4(buf);
          v56 = *(a2 + 240);
          v57 = *(a2 + 128);
          v58 = *(a2 + 160);
          v59 = *(a1 + 2448);
          v80 = 134350336;
          v81 = v6;
          v82 = 2050;
          v83 = v79;
          v84 = 1026;
          LODWORD(v85) = v56;
          WORD2(v85) = 2050;
          *(&v85 + 6) = v57;
          HIWORD(v85) = 2050;
          *v86 = v58;
          *&v86[8] = 1026;
          v87[0] = v59;
          LODWORD(v77) = 54;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,io_mct,%{public}.3f,io_applicableTime_mct,%{public}.3f,uncalib IO data is not used,IOMotionState,%{public}d,GDisMoved_m,%{public}.3f,IOVVel,%{public}.3f,CM_dynamicsMode,%{public}d", &v80, v77);
          v26 = v60;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypothesesWithUnCalibratedIO(const IODerivedMeas &, const CFTimeInterval)", "%s\n", v60);
          goto LABEL_38;
        }

        return result;
      }

      v27 = *(a1 + 2448);
      v28 = v27 - 1;
      if ((((v27 - 1) < 0xA) & (0x21Fu >> (v27 - 1))) != 0)
      {
        v27 = 7;
      }

      if ((0x3BFu >> v28))
      {
        v29 = 6;
      }

      else
      {
        v29 = v27;
      }

      if (v28 <= 9)
      {
        v30 = v29;
      }

      else
      {
        v30 = v27;
      }

      if (*(a2 + 240) == 4)
      {
        v31 = v30;
      }

      else
      {
        v31 = v27;
      }

      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v32 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v33 = *(a1 + 2448);
        v34 = sub_1001253BC(a1 + 2424, v6, 6.0);
        v35 = *(a2 + 160);
        v36 = *(a2 + 240);
        *buf = 134350592;
        v89 = v6;
        v90 = 2050;
        v91 = v79;
        v92 = 1026;
        LODWORD(v93) = v31;
        WORD2(v93) = 1026;
        *(&v93 + 6) = v33;
        WORD5(v93) = 1026;
        HIDWORD(v93) = v34;
        *v94 = 2050;
        *&v94[2] = v35;
        LOWORD(v95[0]) = 1026;
        *(v95 + 2) = v36;
        _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "#fusion,io_mct,%{public}.3f,io_applicableTime_mct,%{public}.3f,InertialOdometry derived dynamics Mode update,dynamicsMode,%{public}d,CM_dynamicsMode,%{public}d,CM_indicatesStationary,%{public}d,IO_VerticalDistMoved_m,%{public}.3f,IO_dynamicsMode,%{public}d", buf, 0x38u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v70 = qword_1025D4778;
        v71 = *(a1 + 2448);
        v72 = sub_1001253BC(a1 + 2424, v6, 6.0);
        v73 = *(a2 + 160);
        v74 = *(a2 + 240);
        v80 = 134350592;
        v81 = v6;
        v82 = 2050;
        v83 = v79;
        v84 = 1026;
        LODWORD(v85) = v31;
        WORD2(v85) = 1026;
        *(&v85 + 6) = v71;
        WORD5(v85) = 1026;
        HIDWORD(v85) = v72;
        *v86 = 2050;
        *&v86[2] = v73;
        LOWORD(v87[0]) = 1026;
        *(v87 + 2) = v74;
        LODWORD(v77) = 56;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v70, 2, "#fusion,io_mct,%{public}.3f,io_applicableTime_mct,%{public}.3f,InertialOdometry derived dynamics Mode update,dynamicsMode,%{public}d,CM_dynamicsMode,%{public}d,CM_indicatesStationary,%{public}d,IO_VerticalDistMoved_m,%{public}.3f,IO_dynamicsMode,%{public}d", &v80, v77);
        v76 = v75;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypothesesWithUnCalibratedIO(const IODerivedMeas &, const CFTimeInterval)", "%s\n", v75);
        if (v76 != buf)
        {
          free(v76);
        }
      }

      v37 = a1 + 2424;
      v38 = v6;
      v39 = v31;
    }

    sub_100125538(v37, v39, v38);
    sub_1000D0BB8(a1, &v79);
    return 1;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1002F97A8();
  }

  v23 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "#fusion, unknown IO derived motion context skipped for uncalib IO", buf, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101A7B5F4(buf);
    LOWORD(v80) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion, unknown IO derived motion context skipped for uncalib IO", &v80, 2);
    v26 = v25;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::propagateHypothesesWithUnCalibratedIO(const IODerivedMeas &, const CFTimeInterval)", "%s\n", v25);
LABEL_38:
    if (v26 != buf)
    {
      free(v26);
    }

    return 0;
  }

  return result;
}

void sub_10011DEFC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10011DF14(uint64_t a1, char **a2)
{
  if (*(a1 + 1138) == 1)
  {
    v3 = *(a1 + 968) + *(a1 + 976);
    v4 = *(a1 + 944);
    v5 = (v4 + 8 * (v3 / 0x24));
    if (*(a1 + 952) == v4)
    {
      v6 = 0;
    }

    else
    {
      v6 = *v5 + 112 * (v3 % 0x24);
    }

    sub_1001244F0((a1 + 936), v5, v6, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4));
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10197D50C();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      v8 = (a1 + 1144);
      if (*(a1 + 1167) < 0)
      {
        v8 = *v8;
      }

      v10 = 136315138;
      v11 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "GPSODOM%s,CLIO,received IO samples despite usage being disallowed", &v10, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10197D848(a1);
    }
  }

  sub_100930CD0(a1, v9);
}

void sub_10011E08C(uint64_t a1, uint64_t *a2, double a3, __n128 a4)
{
  if (*(a1 + 16) == 1)
  {
    v5 = *a2;
    v6 = a2[1];
    a4.n128_u64[0] = 0;
    v7 = 0.0;
    while (v5 != v6)
    {
      if (*(v5 + 110))
      {
        v18 = a4;
        if (!sub_10011E37C(a1, v5))
        {
          return;
        }

        a4.n128_u64[1] = v18.n128_u64[1];
        a4.n128_u64[0] = vadd_f32(v18.n128_u64[0], *(v5 + 28));
        v7 = v7 + *(v5 + 36);
      }

      v5 += 112;
    }

    v19 = a4.n128_u64[0];
    *(a1 + 52) = vadd_f32(a4.n128_u64[0], *(a1 + 52));
    *(a1 + 60) = v7 + *(a1 + 60);
    if (qword_1025D4600 != -1)
    {
      sub_101B6824C();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 52);
      v10 = *(a1 + 56);
      v11 = *(a1 + 60);
      *buf = 134350336;
      v33 = *&v19;
      v34 = 2050;
      v35 = *(&v19 + 1);
      v36 = 2050;
      v37 = v7;
      v38 = 2050;
      v39 = v9;
      v40 = 2050;
      v41 = v10;
      v42 = 2050;
      v43 = v11;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#CLProactiveLoc,rvo,IO,d_X,%{public}0.1f,d_Y,%{public}0.1f,d_Z,%{public}0.1f,cumulativeX,%{public}0.1f,cumulativeY,%{public}0.1f,cumulativeZ,%{public}0.1f", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_101B67DC0();
      }

      v13 = *(a1 + 52);
      v14 = *(a1 + 56);
      v15 = *(a1 + 60);
      v20 = 134350336;
      v21 = *&v19;
      v22 = 2050;
      v23 = *(&v19 + 1);
      v24 = 2050;
      v25 = v7;
      v26 = 2050;
      v27 = v13;
      v28 = 2050;
      v29 = v14;
      v30 = 2050;
      v31 = v15;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "#CLProactiveLoc,rvo,IO,d_X,%{public}0.1f,d_Y,%{public}0.1f,d_Z,%{public}0.1f,cumulativeX,%{public}0.1f,cumulativeY,%{public}0.1f,cumulativeZ,%{public}0.1f", &v20, 62);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 2, "void CLProactiveLocationRoutineVisitOverride::feedIOSamples(const std::vector<CLPIOSample> &)", "%s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    if ((fabsf(*(a1 + 52)) > 50.0 || fabsf(*(a1 + 56)) > 50.0) && *(a1 + 16) == 1)
    {
      sub_100274E44(a1, v12);
    }
  }
}

uint64_t sub_10011E37C(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 64);
  v3 = *(a1 + 64);
  v4 = (a2 + 8);
  v5 = *(a2 + 8);
  if (v3 <= 0.0)
  {
    *v2 = v5;
    return 1;
  }

  v6 = v5 - v3;
  *v2 = v5;
  if (v5 - v3 > 0.0)
  {
    v7 = *(a2 + 28) / v6;
    v8 = *(a2 + 32) / v6;
    v9 = *(a2 + 36) / v6;
    if (v7 > 4.0 || v8 > 4.0 || v9 > 4.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_101B6824C();
      }

      v12 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349824;
        v28 = v7;
        v29 = 2050;
        v30 = v8;
        v31 = 2050;
        v32 = v9;
        v33 = 2050;
        v34 = v6;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "#CLProactiveLoc,rvo,IOError,velX,%{public}0.2f,velY,%{public}0.2f,velZ,%{public}0.2f,timeDeltaSec,%{public}0.2f", buf, 0x2Au);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_101B67DC0();
        }

        v19 = 134349824;
        v20 = v7;
        v21 = 2050;
        v22 = v8;
        v23 = 2050;
        v24 = v9;
        v25 = 2050;
        v26 = v6;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 16, "#CLProactiveLoc,rvo,IOError,velX,%{public}0.2f,velY,%{public}0.2f,velZ,%{public}0.2f,timeDeltaSec,%{public}0.2f", &v19, 42);
        v15 = v14;
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLProactiveLocationRoutineVisitOverride::shouldAcceptBIODeltaPositionSampleSet(const CLPIOSample &)", "%s\n", v14);
        if (v15 != buf)
        {
          free(v15);
        }

        return 0;
      }

      return result;
    }

    return 1;
  }

  if (qword_1025D4600 != -1)
  {
    sub_101B6824C();
  }

  v16 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
  {
    v17 = *v4;
    v18 = *v2;
    *buf = 134349312;
    v28 = v17;
    v29 = 2050;
    v30 = v18;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "#CLProactiveLoc,rvo,IOError,SampleSetRejected,SampleTimeError,currTime,%{public}0.2f,prevTime,%{public}0.2f", buf, 0x16u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101B68260(v4, v2);
    return 0;
  }

  return result;
}

float32x4_t sub_10011E648(float32x4_t *a1, float32x4_t result)
{
  result.f32[0] = sqrtf((((a1->f32[1] * a1->f32[1]) + (a1->f32[0] * a1->f32[0])) + (a1->f32[2] * a1->f32[2])) + (a1->f32[3] * a1->f32[3]));
  v2 = result.f32[0] + -1.0;
  if ((result.f32[0] + -1.0) <= 0.0)
  {
    v2 = -(result.f32[0] + -1.0);
  }

  if (v2 >= 0.00000011921)
  {
    if (result.f32[0] == 0.0)
    {
      a1->i64[0] = 0;
      a1->i64[1] = 0x3F80000000000000;
    }

    else
    {
      result = vdivq_f32(*a1, vdupq_lane_s32(*result.f32, 0));
      *a1 = result;
    }
  }

  return result;
}

float sub_10011E6AC(float *a1)
{
  v1 = 0;
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[1];
  result = ((v3 * v4) - (*a1 * v2)) + ((v3 * v4) - (*a1 * v2));
  v6 = -(v3 * *a1) - (v4 * v2);
  v7 = (((v4 * v4) + (*a1 * *a1)) * 2.0) + -1.0;
  *v11 = result;
  *&v11[1] = v6 + v6;
  *&v11[2] = v7;
  v8 = 0.0;
  do
  {
    v8 = v8 + (*&v11[v1] * *&v11[v1]);
    ++v1;
  }

  while (v1 != 3);
  if (sqrtf(v8) > 0.00000011921)
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v10 = v10 + (*&v11[v9] * *&v11[v9]);
      ++v9;
    }

    while (v9 != 3);
    return result / sqrtf(v10);
  }

  return result;
}

void sub_10011E75C(uint64_t a1, double *a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = sub_1000081AC();
  if (qword_1025D4790 != -1)
  {
    sub_1018B3DA8();
  }

  v6 = Current - v5;
  v7 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
  {
    v8 = *a2;
    v9 = *(a2 + 1);
    v10 = *(a2 + 2);
    v11 = CFAbsoluteTimeGetCurrent();
    v12 = *a2;
    v13 = a2[1];
    if (*a2 > 0.0)
    {
      v12 = v6 + *a2;
    }

    if (v13 > 0.0)
    {
      v13 = v6 + v13;
    }

    v14 = a2[2];
    buf = 134285057;
    if (v14 > 0.0)
    {
      v14 = v6 + v14;
    }

    *buf_4 = v8;
    *&buf_4[8] = 2049;
    *&buf_4[10] = v9;
    *&buf_4[18] = 2049;
    *&buf_4[20] = v10;
    *&buf_4[28] = 2049;
    v36 = v11;
    *v37 = 2049;
    *&v37[2] = v12;
    v38 = 2049;
    *v39 = v13;
    *&v39[8] = 2049;
    v40 = v14;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "#CLGNSSStateQueryAssertion,daemon,sendGnssStatusUpdateToClient,gnssStart,%{private}.3lf,gnssStop,%{private}.3lf,gnssYield,%{private}.3lf,absoluteTime,%{private}.3lf,AbsoluteTimeOfGnssStart,%{private}.3lf,AbsoluteTimeOfGnssStop,%{private}.3lf,AbsoluteTimeOfYieldStop,%{private}.3lf", &buf, 0x48u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B3FF0(a2, v6);
  }

  if (*(a1 + 8))
  {
    v15 = sub_1000081AC();
    v16 = *(a1 + 88);
    v17 = v15 - v16;
    v18 = v16 == 0.0 || v17 > *(a1 + 80) + -3.0;
    v21 = *a2;
    v20 = a2[1];
    v22 = a2[2];
    v23 = *(a1 + 48);
    v24 = v22 > *a2;
    v25 = *(a1 + 64);
    v26 = v25 > v23;
    if (qword_1025D4790 != -1)
    {
      sub_100249B74();
    }

    v27 = v24 ^ v26;
    v28 = v18 | v24 ^ v26;
    v29 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68290818;
      *buf_4 = 0;
      *&buf_4[4] = 2082;
      *&buf_4[6] = "";
      *&buf_4[14] = 2050;
      *&buf_4[16] = v17;
      *&buf_4[24] = 1026;
      *&buf_4[26] = v18;
      LOWORD(v36) = 1026;
      *(&v36 + 2) = v20 > v21;
      HIWORD(v36) = 1026;
      *v37 = v22 > v21;
      *&v37[4] = 1026;
      *&v37[6] = v25 > v23;
      v38 = 1026;
      *v39 = v27;
      *&v39[4] = 1026;
      *&v39[6] = v28 & 1;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLGNSSStateQueryAssertion,daemon,sendGnssStatusUpdateToClient, timeSinceLastUpdate:%{public}0.3f, isMinTimeLapsedBetween2UpdatesToClient:%{public}d, isLastSessionStopped:%{public}d, didLastSessionYield:%{public}d, didSessionYieldDuringLastUpdateToClient:%{public}d, isStatusChangedFromPreviousUpdateToClient:%{public}d, sendUpdateToCLient:%{public}d}", &buf, 0x40u);
    }

    if (v28)
    {
      v32[0] = @"kCLGNSSStateQueryAssertion_ResponseKey_LastGNSSStartKey";
      v33[0] = [NSNumber numberWithDouble:*a2];
      v32[1] = @"kCLGNSSStateQueryAssertion_ResponseKey_LastGNSSStopKey";
      v33[1] = [NSNumber numberWithDouble:a2[1]];
      v32[2] = @"kCLGNSSStateQueryAssertion_ResponseKey_LastGNSSYieldKey";
      v33[2] = [NSNumber numberWithDouble:a2[2]];
      v32[3] = @"kCLGNSSStateQueryAssertion_ResponseKey_PeriodicityKey";
      v33[3] = [NSNumber numberWithDouble:*(a1 + 80)];
      [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4];
      if (qword_1025D4790 != -1)
      {
        sub_100249B74();
      }

      v30 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "#CLGNSSStateQueryAssertion,daemon,sendGnssStatusUpdateToClient sent to client", &buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018B427C();
      }

      *(a1 + 88) = sub_1000081AC();
      *(a1 + 48) = *(a1 + 24);
      *(a1 + 64) = *(a1 + 40);
      [*(a1 + 96) setNextFireDelay:*(a1 + 80) interval:*(a1 + 80)];
      sub_100126974();
    }

    if (qword_1025D4790 != -1)
    {
      sub_100249B74();
    }

    v31 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "#CLGNSSStateQueryAssertion,daemon,sendGnssStatusUpdateToClient recently update sent to client", &buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B4198();
    }
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_100249B74();
    }

    v19 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "#CLGNSSStateQueryAssertion,daemon,sendGnssStatusUpdateToClient invalid connection", &buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018B4360();
    }
  }
}

void sub_10011EC78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (a22)
  {
    sub_100008080(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_10011ECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1016CC168();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLGnssPowerLogger::onGnssPowerLogNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1016CC17C();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssPowerLogger::onGnssPowerLogNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 8) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10011F144;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10011EED0(uint64_t a1)
{
  v2 = *(a1 + 16);
  Current = CFAbsoluteTimeGetCurrent();
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v4 == v5)
  {
    v9 = 0.0;
    v8 = 0.0;
    v7 = 0.0;
    v6 = 0.0;
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v10 = v4[2];
      v6 = v6 + v4[1];
      v9 = v9 + v10;
      v8 = v8 + v4[3] * v10;
      v7 = v7 + v4[4];
      v4 += 5;
    }

    while (v4 != v5);
  }

  v11 = *(a1 + 16);
  if (qword_1025D4650 != -1)
  {
    sub_1016CC064();
  }

  v12 = Current - v11;
  v13 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68290562;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2050;
    v21 = v2;
    v22 = 2050;
    v23 = v12;
    v24 = 2050;
    v25 = v9;
    v26 = 2050;
    v27 = v8 / v12;
    v28 = 2050;
    v29 = v7;
    v30 = 2050;
    v31 = v6;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:composite power log, start:%{public}f, epoch_sec:%{public}f, active_sec:%{public}f, avg_pwr_mW:%{public}f, activeL5IntervalSec:%{public}f, actualMeasuredIntervalAsReturnedByTheGPS_s:%{public}f}", buf, 0x4Eu);
  }

  v15[0] = [NSNumber numberWithDouble:v2, @"intervalStartTime"];
  v14[1] = @"measuredInterval";
  v15[1] = [NSNumber numberWithDouble:v12];
  v14[2] = @"activeInterval";
  v15[2] = [NSNumber numberWithDouble:v9];
  v14[3] = @"activeL5IntervalSec";
  v15[3] = [NSNumber numberWithDouble:v7];
  v14[4] = @"averagePower";
  v15[4] = [NSNumber numberWithDouble:v8 / v12];
  sub_10006FFF0([NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5], "GnssPowerMetric");
  [*a1 setNextFireDelay:*(a1 + 48)];
  *(a1 + 16) = CFAbsoluteTimeGetCurrent();
  *(a1 + 32) = *(a1 + 24);
}

void sub_10011F14C(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  a4[1] = 0;
  a4[2] = 0xBFF0000000000000;
  *(a4 + 3) = 0u;
  *(a4 + 5) = 0u;
  *(a4 + 7) = 0u;
  *(a4 + 9) = xmmword_101CE3F00;
  *(a4 + 11) = xmmword_101CE3F10;
  *(a4 + 52) = 257;
  *(a4 + 106) = 0;
  *(a4 + 110) = 0;
  *a4 = *a2;
  [a3 timestamp];
  a4[1] = v7;
  *(a4 + 6) = 1065353216;
  if ([a3 deltaPositionX] && objc_msgSend(a3, "deltaPositionY") && objc_msgSend(a3, "deltaPositionZ"))
  {
    *(a4 + 110) |= 1u;
    [objc_msgSend(a3 "deltaPositionX")];
    *(a4 + 7) = v8;
    [objc_msgSend(a3 "deltaPositionY")];
    *(a4 + 8) = v9;
    [objc_msgSend(a3 "deltaPositionZ")];
    *(a4 + 9) = v10;
  }

  if ([a3 deltaVelocityX] && objc_msgSend(a3, "deltaVelocityY") && objc_msgSend(a3, "deltaVelocityZ"))
  {
    *(a4 + 110) |= 2u;
    [objc_msgSend(a3 "deltaVelocityX")];
    *(a4 + 10) = v11;
    [objc_msgSend(a3 "deltaVelocityY")];
    *(a4 + 11) = v12;
    [objc_msgSend(a3 "deltaVelocityZ")];
    *(a4 + 12) = v13;
  }

  if ([a3 quaternionX] && objc_msgSend(a3, "quaternionY") && objc_msgSend(a3, "quaternionZ") && objc_msgSend(a3, "quaternionW"))
  {
    *(a4 + 110) |= 4u;
    [objc_msgSend(a3 "quaternionX")];
    *(a4 + 13) = v14;
    [objc_msgSend(a3 "quaternionY")];
    *(a4 + 14) = v15;
    [objc_msgSend(a3 "quaternionZ")];
    *(a4 + 15) = v16;
    [objc_msgSend(a3 "quaternionW")];
    *(a4 + 16) = v17;
    *(a4 + 105) = *(a1 + 49) ^ 1;
    *(a1 + 49) = 1;
  }

  else
  {
    *(a1 + 49) = 0;
  }

  [a3 rotationArbitraryToTrueNorth];
  *(a4 + 21) = v18;
  [a3 rotationArbitraryToTrueNorth];
  *(a4 + 110) = *(a4 + 110) & 0x7F | ((v19 != 0.0) << 7);
  if ([a3 referenceFrame] == 8)
  {
    v20 = 8;
  }

  else
  {
    v20 = 1;
  }

  *(a4 + 104) = v20;
  *(a4 + 106) = 0;
  v21 = [a3 staticFlag];
  if (v21 <= 2)
  {
    *(a4 + 106) = v21;
  }

  if ([a3 isZUPT])
  {
    v22 = 2;
  }

  else
  {
    v22 = 1;
  }

  *(a4 + 108) = v22;
  if ([a3 isDOTBiasChangePossible])
  {
    v23 = 2;
  }

  else
  {
    v23 = 1;
  }

  *(a4 + 109) = v23;
  if ([a3 isMounted])
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  *(a4 + 107) = v24;
  if (*(a1 + 50) == 1)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002F9794();
    }

    v25 = qword_1025D4608;
    v26 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG);
    if (v26)
    {
      v29 = *a4;
      v28 = a4[1];
      v75 = *(a4 + 8);
      v77 = *(a4 + 6);
      v79 = *(a4 + 9);
      v81 = *(a4 + 7);
      v30 = *(a4 + 10);
      v74 = *(a4 + 11);
      v31 = *(a4 + 12);
      v32 = *(a4 + 13);
      v33 = *(a4 + 14);
      v34 = *(a4 + 15);
      v35 = *(a4 + 16);
      v36 = *(a4 + 21);
      v37 = *(a4 + 105);
      v38 = *(a4 + 104);
      v39 = *(a4 + 106);
      v40 = *(a4 + 110);
      v41 = v40 & 1;
      v42 = (v40 >> 1) & 1;
      v83 = (v40 >> 2) & 1;
      v85 = v40 >> 7;
      v87 = *(a4 + 108);
      v89 = *(a4 + 109);
      v91 = *(a4 + 107);
      v43 = sub_10000B1F8(v26, v27);
      *buf = 0;
      v44 = sub_10001A6B0(v43, buf);
      v47 = sub_10000B1F8(v45, v46);
      *buf = 0;
      v48 = sub_10001A6B0(v47, buf) - *a4;
      *buf = 134355457;
      v146 = v29;
      v147 = 2050;
      v148 = v28;
      v149 = 2050;
      v150 = v77;
      v151 = 2049;
      v152 = v81;
      v153 = 2049;
      v154 = v75;
      v155 = 2049;
      v156 = v79;
      v157 = 2049;
      v158 = v30;
      v159 = 2049;
      v160 = v74;
      v161 = 2049;
      v162 = v31;
      v163 = 2049;
      v164 = v32;
      v165 = 2049;
      v166 = v33;
      v167 = 2049;
      v168 = v34;
      v169 = 2049;
      v170 = v35;
      v171 = 2049;
      v172 = v36;
      v173 = 258;
      v174 = v37;
      v175 = 258;
      v176 = v38;
      v177 = 258;
      v178 = v39;
      v179 = 1025;
      v180 = v41;
      v181 = 1025;
      v182 = v42;
      v183 = 1024;
      v184 = v83;
      v185 = 1025;
      v186 = v85;
      v187 = 257;
      v188 = v87;
      v189 = 257;
      v190 = v89;
      v191 = 257;
      v192 = v91;
      v193 = 2050;
      v194 = v44;
      v195 = 2050;
      v196 = v48;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "#pbio CLPIOSample, userCfAbsoluteTimestamp_s, %{public}.3f, machContinuousTimestamp_s, %{public}.3f, sampleInterval_s, %{public}.3f, dPosX_m, %{private}+.3f, dPosY_m, %{private}+.3f, dPosZ_m, %{private}+.3f, dVelX_mps, %{private}+.3f, dVelY_mps, %{private}+.3f, dVelZ_mps, %{private}+.3f, qX, %{private}+.3f, qY, %{private}+.3f, qZ, %{private}+.3f, qW, %{private}+.3f, rotationToTrueNorthFromMagnetometer_rad, %{private}+.3f, referenceFrameContinuity, %{public}d, referenceFrame, %{public}d, staticFlag, %{public}d, isDeltaPositionValid, %{private}d, isRotationToTrueNorthFromMagnetometerValid, %{private}d, isDeltaVelocityValid, %d, isAttitudeValid, %{private}d, zuptIndicator, %{private}d, dotChangeIndicator, %{private}d, mountState, %{private}d,now, %{public}.3f, diffNowMinusSample, %{public}.3f", buf, 0xCCu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_101AB30B4();
      }

      v92 = qword_1025D4608;
      v51 = *a4;
      v52 = a4[1];
      v76 = *(a4 + 8);
      v78 = *(a4 + 6);
      v80 = *(a4 + 9);
      v82 = *(a4 + 7);
      v53 = *(a4 + 10);
      v54 = *(a4 + 11);
      v55 = *(a4 + 12);
      v56 = *(a4 + 13);
      v57 = *(a4 + 14);
      v58 = *(a4 + 15);
      v59 = *(a4 + 16);
      v60 = *(a4 + 21);
      v61 = *(a4 + 105);
      v62 = *(a4 + 104);
      v63 = *(a4 + 106);
      v64 = *(a4 + 110);
      v65 = v64 & 1;
      v66 = (v64 >> 1) & 1;
      v67 = (v64 >> 2) & 1;
      v68 = v64 >> 7;
      v86 = *(a4 + 108);
      v88 = *(a4 + 109);
      v90 = *(a4 + 107);
      v84 = sub_1000281DC(v49, v50);
      v71 = sub_1000281DC(v69, v70) - *a4;
      v93 = 134355457;
      v94 = v51;
      v95 = 2050;
      v96 = v52;
      v97 = 2050;
      v98 = v78;
      v99 = 2049;
      v100 = v82;
      v101 = 2049;
      v102 = v76;
      v103 = 2049;
      v104 = v80;
      v105 = 2049;
      v106 = v53;
      v107 = 2049;
      v108 = v54;
      v109 = 2049;
      v110 = v55;
      v111 = 2049;
      v112 = v56;
      v113 = 2049;
      v114 = v57;
      v115 = 2049;
      v116 = v58;
      v117 = 2049;
      v118 = v59;
      v119 = 2049;
      v120 = v60;
      v121 = 258;
      v122 = v61;
      v123 = 258;
      v124 = v62;
      v125 = 258;
      v126 = v63;
      v127 = 1025;
      v128 = v65;
      v129 = 1025;
      v130 = v66;
      v131 = 1024;
      v132 = v67;
      v133 = 1025;
      v134 = v68;
      v135 = 257;
      v136 = v86;
      v137 = 257;
      v138 = v88;
      v139 = 257;
      v140 = v90;
      v141 = 2050;
      v142 = v84;
      v143 = 2050;
      v144 = v71;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v92, 2, "#pbio CLPIOSample, userCfAbsoluteTimestamp_s, %{public}.3f, machContinuousTimestamp_s, %{public}.3f, sampleInterval_s, %{public}.3f, dPosX_m, %{private}+.3f, dPosY_m, %{private}+.3f, dPosZ_m, %{private}+.3f, dVelX_mps, %{private}+.3f, dVelY_mps, %{private}+.3f, dVelZ_mps, %{private}+.3f, qX, %{private}+.3f, qY, %{private}+.3f, qZ, %{private}+.3f, qW, %{private}+.3f, rotationToTrueNorthFromMagnetometer_rad, %{private}+.3f, referenceFrameContinuity, %{public}d, referenceFrame, %{public}d, staticFlag, %{public}d, isDeltaPositionValid, %{private}d, isRotationToTrueNorthFromMagnetometerValid, %{private}d, isDeltaVelocityValid, %d, isAttitudeValid, %{private}d, zuptIndicator, %{private}d, dotChangeIndicator, %{private}d, mountState, %{private}d,now, %{public}.3f, diffNowMinusSample, %{public}.3f", &v93, 204);
      v73 = v72;
      sub_100152C7C("Generic", 1, 0, 2, "CLPIOSample CLProactiveInertialOdometryManager::createCLPIOSample(const CFAbsoluteTime &, const CMOdometry *)", "%s\n", v72);
      if (v73 != buf)
      {
        free(v73);
      }
    }
  }
}

void sub_10011F8F0(uint64_t a1, double *a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_1002F9794();
  }

  v4 = qword_1025D4608;
  v5 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO);
  if (v5)
  {
    v7 = *(a2 + 1);
    v8 = sub_10000B1F8(v5, v6);
    v11 = 1;
    v9 = sub_10001A6B0(v8, &v11) - a2[1];
    v11 = 134218240;
    v12 = v7;
    v13 = 1026;
    v14 = v9 < 2.0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#pbio CLProactiveInertialOdometryManager::onCLPIOSample, machContinuousTimestamp_s, %.3f, isPromptSample, %{public}d", &v11, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AB3514(a2);
  }

  sub_10011FAE0(*(a1 + 64), a2);
  sub_10011B29C(*(a1 + 32), a2);
  sub_10002492C(a1, v10);
}

void sub_10011FA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 110) & 4) != 0 && (*(a3 + 110) & 4) != 0)
  {
    v16 = *(a2 + 52);
    sub_10011E648(&v16, v16);
    v15 = *(a3 + 52);
    sub_10011E648(&v15, v15);
    sub_10011AC40(v16.f32);
    v7 = sub_10011AFA8(v16.f32, v4, v5, v6);
    v9 = v8;
    sub_10011AC40(v15.f32);
    v13 = sub_10011AFA8(v15.f32, v10, v11, v12);
    atan2(((v13 * v9) - (v7 * v14)), ((v9 * v14) + (v13 * v7)));
  }
}

double sub_10011FAE0(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 744);
  *(a1 + 840) = *(a1 + 728);
  *(a1 + 856) = v4;
  *(a1 + 871) = *(a1 + 759);
  v5 = *(a1 + 680);
  *(a1 + 776) = *(a1 + 664);
  *(a1 + 792) = v5;
  v6 = *(a1 + 712);
  *(a1 + 808) = *(a1 + 696);
  *(a1 + 824) = v6;
  v8 = a2[4];
  v7 = a2[5];
  v9 = a2[3];
  *(a1 + 759) = *(a2 + 95);
  *(a1 + 728) = v8;
  *(a1 + 744) = v7;
  *(a1 + 712) = v9;
  v11 = a2[1];
  v10 = a2[2];
  *(a1 + 664) = *a2;
  *(a1 + 680) = v11;
  *(a1 + 696) = v10;
  sub_10011AA80(a1);

  *&result = *&sub_10011B3A8(a1, a2);
  return result;
}

float sub_10011FB70(uint64_t a1, float *a2)
{
  v4 = 0;
  do
  {
    v5 = sub_10011AECC(a1, v4, 0) * *a2;
    *sub_10011AF30(&v11, v4) = v5;
    for (i = 1; i != 3; ++i)
    {
      v7 = sub_10011AECC(a1, v4, i);
      v8 = sub_10011AF6C(a2, i);
      v9 = sub_10011AF30(&v11, v4);
      *v9 = *v9 + (v7 * v8);
    }

    ++v4;
  }

  while (v4 != 3);
  return v11;
}

uint64_t sub_10011FC38(unsigned __int8 *a1, uint64_t a2)
{
  *(a1 + 52) = 0;
  *(a1 + 53) = 0;
  *(a1 + 43) = 0xBFF0000000000000;
  v4 = a1 + 376;
  *(a1 + 376) = xmmword_101C75BF0;
  *(a1 + 50) = 0;
  *(a1 + 51) = 0;
  *(a1 + 49) = 0xBFF0000000000000;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 27) = _Q1;
  *(a1 + 28) = xmmword_101C76220;
  *(a1 + 142) = 0;
  *(a1 + 61) = 0;
  *(a1 + 62) = 0;
  *(a1 + 504) = xmmword_101C75BF0;
  *(a1 + 520) = _Q1;
  *(a1 + 536) = xmmword_101C76220;
  *(a1 + 552) = xmmword_101C76220;
  sub_1001233D0(a1, a2);
  if ((*(a2 + 110) & 3) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_10025BA60();
    }

    v42 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v43 = *(a2 + 8);
      *buf = 134349056;
      v358 = v43;
      _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "InertialOdometry,skipped IO sample with invalid PDR and VDR data,IO mct,%{public}.3f", buf, 0xCu);
    }

    v40 = sub_10000A100(121, 2);
    if (!v40)
    {
      goto LABEL_42;
    }

    sub_1018D54AC(buf);
    v196 = *(a2 + 8);
    *__p = 134349056;
    *&__p[4] = v196;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "InertialOdometry,skipped IO sample with invalid PDR and VDR data,IO mct,%{public}.3f", __p, 12);
    v195 = v197;
    v40 = sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v197);
    if (v195 == buf)
    {
      goto LABEL_42;
    }

LABEL_233:
    free(v195);
LABEL_42:
    v44 = sub_10000B1F8(v40, v41);
    *buf = 1;
    v45 = sub_10001A6B0(v44, buf);
    v46 = 1.0;
LABEL_43:
    v47 = a1;
LABEL_44:
    sub_1005BFEEC(v47, v45, v46);
    return 0;
  }

  v12 = *(a2 + 24);
  if (v12 <= 0.0 || v12 > 6.0 || *(a2 + 8) <= 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_10025BA60();
    }

    v37 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v38 = *(a2 + 8);
      v39 = *(a2 + 24);
      *buf = 134349312;
      v358 = v38;
      v359 = 2050;
      *v360 = v39;
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "InertialOdometry,skipped IO sample with invalid sample interval/timestamp,IO mct,%{public}.3f,sampleInterval_s,%{public}.3f", buf, 0x16u);
    }

    v40 = sub_10000A100(121, 2);
    if (!v40)
    {
      goto LABEL_42;
    }

    sub_1018D54AC(buf);
    v192 = *(a2 + 8);
    v193 = *(a2 + 24);
    *__p = 134349312;
    *&__p[4] = v192;
    v344 = 2050;
    *v345 = v193;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "InertialOdometry,skipped IO sample with invalid sample interval/timestamp,IO mct,%{public}.3f,sampleInterval_s,%{public}.3f", __p, 22);
    v195 = v194;
    v40 = sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v194);
    if (v195 == buf)
    {
      goto LABEL_42;
    }

    goto LABEL_233;
  }

  v13 = sub_10000B1F8(v10, v11);
  *buf = 1;
  v14 = sub_10001A6B0(v13, buf);
  v15 = v14;
  v16 = *(a2 + 8);
  if (v14 > 0.0 && (v14 - v16 < 0.0 || v14 - v16 > 1800.0))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1018D5484();
    }

    v60 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 134349568;
      v358 = v15;
      v359 = 2050;
      *v360 = v16;
      *&v360[8] = 2050;
      *&v360[10] = v15 - v16;
      _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_ERROR, "InertialOdometry,#Error,ignoring IO data,unexpected MCT time-tag of IO data,current mct,%{public}.3f,IO mct,%{public}.3f,IOMCTDeltaToCurrentMCT,%{public}.3f", buf, 0x20u);
    }

    v61 = sub_10000A100(121, 0);
    if (v61)
    {
      sub_1018D54AC(buf);
      *__p = 134349568;
      *&__p[4] = v15;
      v344 = 2050;
      *v345 = v16;
      *&v345[8] = 2050;
      *&v345[10] = v15 - v16;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "InertialOdometry,#Error,ignoring IO data,unexpected MCT time-tag of IO data,current mct,%{public}.3f,IO mct,%{public}.3f,IOMCTDeltaToCurrentMCT,%{public}.3f", __p, 32);
      v206 = v205;
      v61 = sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v205);
      if (v206 != buf)
      {
        free(v206);
      }
    }

    v63 = sub_10000B1F8(v61, v62);
    *buf = 1;
    v45 = sub_10001A6B0(v63, buf);
    v46 = *(a2 + 24);
    goto LABEL_43;
  }

  v17 = *(a1 + 1);
  if (v17 > 0.0)
  {
    if (v17 >= v16)
    {
      if (qword_1025D4770 != -1)
      {
        sub_1018D5484();
      }

      v64 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v65 = *(a1 + 1);
        *buf = 134349568;
        v358 = v65;
        v359 = 2050;
        *v360 = v16;
        *&v360[8] = 2050;
        *&v360[10] = v16 - v65;
        _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_DEBUG, "InertialOdometry,ignoring received overlapping IO data,prev IO mct,%{public}.3f,curr IO mct,%{public}.3f,dTime,%{public}.3f", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D54AC(buf);
        v207 = *(a1 + 1);
        *__p = 134349568;
        *&__p[4] = v207;
        v344 = 2050;
        *v345 = v16;
        *&v345[8] = 2050;
        *&v345[10] = v16 - v207;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "InertialOdometry,ignoring received overlapping IO data,prev IO mct,%{public}.3f,curr IO mct,%{public}.3f,dTime,%{public}.3f", __p, 32);
        v209 = v208;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v208);
        if (v209 != buf)
        {
          free(v209);
        }
      }

LABEL_73:
      v46 = *(a2 + 24);
      v47 = a1;
      v45 = v16;
      goto LABEL_44;
    }

    if ((!sub_1001253BC(*(a1 + 73), *(a2 + 8), 6.0) || !*(a2 + 106)) && vabdd_f64(v16, *(a1 + 1)) > 300.0)
    {
      if (qword_1025D4770 != -1)
      {
        sub_1018D5484();
      }

      v18 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a1 + 1);
        *buf = 134349568;
        v358 = v19;
        v359 = 2050;
        *v360 = v16;
        *&v360[8] = 2050;
        *&v360[10] = vabdd_f64(v16, v19);
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "InertialOdometry,large gap in IO data while not static,resetting,prev IO mct,%{public}.3f,curr IO mct,%{public}.3f,dTime,%{public}.3f", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D54AC(buf);
        v256 = *(a1 + 1);
        *__p = 134349568;
        *&__p[4] = v256;
        v344 = 2050;
        *v345 = v16;
        *&v345[8] = 2050;
        *&v345[10] = vabdd_f64(v16, v256);
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "InertialOdometry,large gap in IO data while not static,resetting,prev IO mct,%{public}.3f,curr IO mct,%{public}.3f,dTime,%{public}.3f", __p, 32);
        v258 = v257;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v257);
        if (v258 != buf)
        {
          free(v258);
        }
      }

      ++*(a1 + 150);
      sub_1005C0018(a1);
      sub_1005BF61C((a1 + 16), v20, v16);
      sub_1005C0070(a1, v21, v16);
    }

    if (*(a2 + 105) || *(a2 + 104) != *a1)
    {
      if (qword_1025D4770 != -1)
      {
        sub_1018D5484();
      }

      v22 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v23 = *(a1 + 1);
        v24 = *a1;
        v25 = *(a2 + 104);
        v26 = *(a2 + 105);
        *buf = 134350080;
        v358 = v23;
        v359 = 2050;
        *v360 = v16;
        *&v360[8] = 1026;
        *&v360[10] = v24;
        *&v360[14] = 1026;
        *&v360[16] = v25;
        *&v360[20] = 1026;
        *&v360[22] = v26;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "InertialOdometry,IO reference frame discontinuity detected,prev IO mct,%{public}.3f,curr IO mct,%{public}.3f,prevRefF,%{public}d,currRefF,%{public}d,RefFrameContinuity,%{public}d", buf, 0x28u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D54AC(buf);
        v210 = *(a1 + 1);
        v211 = *a1;
        v212 = *(a2 + 104);
        v213 = *(a2 + 105);
        *__p = 134350080;
        *&__p[4] = v210;
        v344 = 2050;
        *v345 = v16;
        *&v345[8] = 1026;
        *&v345[10] = v211;
        *&v345[14] = 1026;
        *&v345[16] = v212;
        *&v345[20] = 1026;
        *&v345[22] = v213;
        LODWORD(v316) = 40;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "InertialOdometry,IO reference frame discontinuity detected,prev IO mct,%{public}.3f,curr IO mct,%{public}.3f,prevRefF,%{public}d,currRefF,%{public}d,RefFrameContinuity,%{public}d", __p, v316);
        v215 = v214;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v214);
        if (v215 != buf)
        {
          free(v215);
        }
      }

      sub_1005C0018(a1);
      sub_1005BF61C((a1 + 16), v27, v16);
      sub_1005C0070(a1, v28, v16);
      *(a1 + 44) = 0xBFF0000000000000;
      *a1 = *(a2 + 104);
    }
  }

  *(a1 + 1) = v16;
  v29 = *(a2 + 24);
  v30 = 1.0;
  v31 = v29;
  if (v29 > 0.0)
  {
    v30 = 1.0 / v31;
  }

  LOBYTE(v32) = *(a2 + 110);
  if ((v32 & 1) == 0)
  {
    sub_1005BFEEC(a1, v16, v31);
    LOBYTE(v32) = *(a2 + 110);
    v33 = 0.0;
    v34 = 0.0;
    v35 = 0.0;
    v36 = 0.0;
    goto LABEL_52;
  }

  v33 = hypotf(*(a2 + 28), *(a2 + 32));
  v34 = *(a2 + 36);
  v35 = v30 * v33;
  v36 = v30 * v34;
  *(a1 + 54) = v34;
  *(a1 + 55) = v16;
  *(a1 + 56) = v30 * v34;
  *(a1 + 57) = 0x3FB70A3D70A3D70ALL;
  if (v30 * v33 > 9.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1018D5484();
    }

    v49 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v50 = *(a1 + 1);
      v51 = *(a2 + 104);
      v52 = *(a2 + 110);
      v53 = *(a2 + 24);
      v54 = *(a2 + 28);
      v55 = *(a2 + 32);
      *buf = 134351104;
      v358 = v50;
      v359 = 2050;
      *v360 = v16;
      *&v360[8] = 1026;
      *&v360[10] = v51;
      *&v360[14] = 1026;
      *&v360[16] = v52 & 1;
      *&v360[20] = 2050;
      *&v360[22] = v53;
      *&v360[30] = 2050;
      *&v360[32] = v54;
      *&v360[40] = 2050;
      *&v360[42] = v55;
      *&v360[50] = 2050;
      *&v360[52] = v33;
      *&v360[60] = 1026;
      *&v360[62] = (v52 >> 5) & 1;
      _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEBUG, "InertialOdometry,PDR,rejected dPos invalid/outlier sample;prev IO mct,%{public}.3f,curr IO mct,%{public}.3f,RefF,%{public}d,isValidDeltaPos,%{public}d,sampleInterval,%{public}.1f,dPosX_m,%{public}+.3f,dPosY_m,%{public}+.3f,dPosXYnorm,%{public}.3f,isCourseValid,%{public}d", buf, 0x50u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D54AC(buf);
      v216 = *(a1 + 1);
      v217 = *(a2 + 104);
      v218 = *(a2 + 110);
      v219 = *(a2 + 24);
      v220 = *(a2 + 28);
      v221 = *(a2 + 32);
      *__p = 134351104;
      *&__p[4] = v216;
      v344 = 2050;
      *v345 = v16;
      *&v345[8] = 1026;
      *&v345[10] = v217;
      *&v345[14] = 1026;
      *&v345[16] = v218 & 1;
      *&v345[20] = 2050;
      *&v345[22] = v219;
      *&v345[30] = 2050;
      *&v345[32] = v220;
      *&v345[40] = 2050;
      *&v345[42] = v221;
      *&v345[50] = 2050;
      *&v345[52] = v33;
      *&v345[60] = 1026;
      *&v345[62] = (v218 >> 5) & 1;
      LODWORD(v316) = 80;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "InertialOdometry,PDR,rejected dPos invalid/outlier sample;prev IO mct,%{public}.3f,curr IO mct,%{public}.3f,RefF,%{public}d,isValidDeltaPos,%{public}d,sampleInterval,%{public}.1f,dPosX_m,%{public}+.3f,dPosY_m,%{public}+.3f,dPosXYnorm,%{public}.3f,isCourseValid,%{public}d", __p, v316);
      v223 = v222;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v222);
      if (v223 != buf)
      {
        free(v223);
      }
    }

    ++*(a1 + 151);
    v32 = *(a2 + 110);
    if ((~v32 & 0x24) != 0)
    {
      goto LABEL_73;
    }
  }

LABEL_52:
  v58 = v30 * hypotf(*(a2 + 40), *(a2 + 44));
  if ((v32 & 2) == 0)
  {
    goto LABEL_82;
  }

  *(a1 + 62) = v58;
  if ((v32 & 4) == 0)
  {
    goto LABEL_82;
  }

  if (*(a2 + 107) != 2)
  {
    v59 = sub_100125258(*(a1 + 73), v16, 6.0);
    LOBYTE(v32) = *(a2 + 110);
    if (!v59 && ((*(a2 + 110) & 1) == 0 || v33 > 0.001))
    {
      goto LABEL_82;
    }
  }

  if ((v32 & 0x20) == 0)
  {
    if ((v32 & 0x40) == 0)
    {
      goto LABEL_60;
    }

LABEL_79:
    *(a1 + 66) = v16;
    *v56.i64 = *(a2 + 96);
    v57.i64[0] = 0x400921FB54442D18;
    if (fabs(*v56.i64) > 3.14159265)
    {
      v67.f64[0] = NAN;
      v67.f64[1] = NAN;
      v336 = *vbslq_s8(vnegq_f64(v67), v57, v56).i64;
      *v56.i64 = fmod(v336 + *v56.i64, 6.28318531) - v336;
    }

    *(a1 + 67) = v56.i64[0];
    *(a1 + 68) = *(a2 + 100);
    *(a1 + 69) = *(a2 + 24);
    if ((v32 & 0x20) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_131;
  }

  *(v4 + 16) = v16;
  v66 = *(a2 + 88);
  *v56.i64 = v66;
  if (v66 < 0.0 || *v56.i64 >= 6.28318531)
  {
    *v56.i64 = fmod(*v56.i64, 6.28318531);
    if (*v56.i64 < 0.0)
    {
      *v56.i64 = *v56.i64 + 6.28318531;
    }
  }

  *(a1 + 64) = v56.i64[0];
  *(a1 + 65) = *(a2 + 92);
  if ((v32 & 0x40) != 0)
  {
    goto LABEL_79;
  }

LABEL_60:
  if ((v32 & 0x20) == 0)
  {
    goto LABEL_82;
  }

LABEL_131:
  if (v58 > 0.3 || (v32 & 1) != 0 && v33 <= 0.001 || *(a2 + 107) == 2 && sub_10011D140(*(a1 + 73), v16, 6.0))
  {
    *(a1 + 142) = 5;
    *(a1 + 70) = v16;
    *(a1 + 72) = v16;
    if (qword_1025D4770 != -1)
    {
      sub_1018D5484();
    }

    v97 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v332 = *(a2 + 104);
      v98 = *(a2 + 110);
      v337 = v98 & 1;
      v324 = *(a2 + 36);
      v328 = *(a2 + 28);
      v99 = (v98 >> 1) & 1;
      v317 = *(a2 + 24);
      v318 = *(a2 + 40);
      v320 = *(a2 + 32);
      v322 = *(a2 + 44);
      v100 = *(a2 + 88) * 57.2957795;
      v101 = sqrtf(*(a2 + 92)) * 57.2957795;
      v102 = *(a2 + 96) * 57.2957795;
      v103 = *(a2 + 48);
      v104 = (v98 >> 5) & 1;
      v105 = (v98 >> 6) & 1;
      v106 = *(a2 + 100);
      v107 = *(a2 + 107) - 1;
      v108 = __p;
      sub_1001FCE40(*(a1 + 73), __p);
      if (v345[9] < 0)
      {
        v108 = *__p;
      }

      v109 = sub_1005C01DC(*(a1 + 142));
      *buf = 134354434;
      v358 = v16;
      v359 = 1026;
      *v360 = v332;
      *&v360[4] = 2050;
      *&v360[6] = v317;
      *&v360[14] = 1026;
      *&v360[16] = v337;
      *&v360[20] = 2050;
      *&v360[22] = v328;
      *&v360[30] = 2050;
      *&v360[32] = v320;
      *&v360[40] = 2050;
      *&v360[42] = v324;
      *&v360[50] = 1026;
      *&v360[52] = v99;
      *&v360[56] = 2050;
      *&v360[58] = v318;
      *&v360[66] = 2050;
      *v361 = v322;
      *&v361[8] = 2050;
      *v362 = v103;
      *&v362[8] = 2050;
      *v363 = v33;
      *&v363[8] = 2050;
      *v364 = v58;
      *&v364[8] = 1026;
      *&v364[10] = v104;
      *&v364[14] = 2050;
      *&v364[16] = v100;
      v365 = 2050;
      *v366 = v101;
      *&v366[8] = 1026;
      *&v366[10] = v105;
      *&v366[14] = 2050;
      *&v366[16] = v102;
      v367 = 2050;
      *v368 = v106;
      *&v368[8] = 1026;
      *v369 = v107;
      *&v369[4] = 2082;
      *&v369[6] = v108;
      v370 = 2082;
      *v371 = v109;
      _os_log_impl(dword_100000000, v97, OS_LOG_TYPE_DEBUG, "InertialOdometry,consumed IO sample VDR,mct,%{public}.3f,RefF,%{public}d,sampleInterval_s,%{public}.1f,isPDRValid,%{public}d,dPosXYZ_m,%{public}+.3f,%{public}+.3f,%{public}+.3f,isVDRValid,%{public}d,dVelXYZ_mps,%{public}+.3f,%{public}+.3f,%{public}+.3f,GDisMoved,%{public}.3f,GSpeedRate,%{public}+.3f,isIOCourseValid,%{public}d,Course_deg,%{public}.3f,CourseUnc_deg,%{public}.3f,isIOdtCourseValid,%{public}d,dtCourse_deg,%{public}.3f,dtCourseVar_rad2,%{public}.3f,IO_MountState,%{public}d,CM_Activity,%{public}s,IO_Context,%{public}s", buf, 0xC6u);
      if ((v345[9] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4770 != -1)
      {
        sub_1018D5484();
      }

      v340 = qword_1025D4778;
      v259 = *(a2 + 104);
      v260 = *(a2 + 110);
      v261 = v260 & 1;
      v331 = *(a2 + 36);
      v335 = *(a2 + 28);
      v262 = (v260 >> 1) & 1;
      v319 = *(a2 + 24);
      v321 = *(a2 + 40);
      v323 = *(a2 + 32);
      v327 = *(a2 + 44);
      v263 = *(a2 + 88) * 57.2957795;
      v264 = sqrtf(*(a2 + 92)) * 57.2957795;
      v265 = *(a2 + 96) * 57.2957795;
      v266 = *(a2 + 48);
      v267 = (v260 >> 5) & 1;
      v268 = (v260 >> 6) & 1;
      v269 = *(a2 + 100);
      v270 = *(a2 + 107) - 1;
      v271 = v341;
      sub_1001FCE40(*(a1 + 73), v341);
      if (v342 < 0)
      {
        v271 = v341[0];
      }

      v272 = sub_1005C01DC(*(a1 + 142));
      *__p = 134354434;
      *&__p[4] = v16;
      v344 = 1026;
      *v345 = v259;
      *&v345[4] = 2050;
      *&v345[6] = v319;
      *&v345[14] = 1026;
      *&v345[16] = v261;
      *&v345[20] = 2050;
      *&v345[22] = v335;
      *&v345[30] = 2050;
      *&v345[32] = v323;
      *&v345[40] = 2050;
      *&v345[42] = v331;
      *&v345[50] = 1026;
      *&v345[52] = v262;
      *&v345[56] = 2050;
      *&v345[58] = v321;
      *&v345[66] = 2050;
      *v346 = v327;
      *&v346[8] = 2050;
      *v347 = v266;
      *&v347[8] = 2050;
      *v348 = v33;
      *&v348[8] = 2050;
      *v349 = v58;
      *&v349[8] = 1026;
      *&v349[10] = v267;
      *&v349[14] = 2050;
      *&v349[16] = v263;
      v350 = 2050;
      *v351 = v264;
      *&v351[8] = 1026;
      *&v351[10] = v268;
      *&v351[14] = 2050;
      *&v351[16] = v265;
      v352 = 2050;
      *v353 = v269;
      *&v353[8] = 1026;
      *v354 = v270;
      *&v354[4] = 2082;
      *&v354[6] = v271;
      v355 = 2082;
      *v356 = v272;
      LODWORD(v316) = 198;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v340, 2, "InertialOdometry,consumed IO sample VDR,mct,%{public}.3f,RefF,%{public}d,sampleInterval_s,%{public}.1f,isPDRValid,%{public}d,dPosXYZ_m,%{public}+.3f,%{public}+.3f,%{public}+.3f,isVDRValid,%{public}d,dVelXYZ_mps,%{public}+.3f,%{public}+.3f,%{public}+.3f,GDisMoved,%{public}.3f,GSpeedRate,%{public}+.3f,isIOCourseValid,%{public}d,Course_deg,%{public}.3f,CourseUnc_deg,%{public}.3f,isIOdtCourseValid,%{public}d,dtCourse_deg,%{public}.3f,dtCourseVar_rad2,%{public}.3f,IO_MountState,%{public}d,CM_Activity,%{public}s,IO_Context,%{public}s", __p, v316);
      v274 = v273;
      if (v342 < 0)
      {
        operator delete(v341[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v274);
      if (v274 != buf)
      {
        free(v274);
      }
    }

    sub_10028735C(a1, a2);
    return 1;
  }

LABEL_82:
  if (!sub_100125424(*(a1 + 73), v16, 6.0) && !sub_1001254F8(*(a1 + 73)))
  {
    if ((*(a2 + 110) & 1) == 0)
    {
      goto LABEL_111;
    }

    if ((*(a2 + 110) & 0x20) != 0 && *(a2 + 107) == 2 && sub_10011D140(*(a1 + 73), v16, 6.0))
    {
      if (*(a2 + 110))
      {
        sub_10028735C(a1, a2);
LABEL_218:
        *(a1 + 29) = *(a1 + 440);
        *(a1 + 60) = *(a1 + 57);
        return 1;
      }

LABEL_111:
      if (sub_100125608(*(a1 + 73), v16, 6.0) || sub_10020C700(*(a1 + 73)))
      {
        v91 = 3;
      }

      else
      {
        if (!sub_1001253BC(*(a1 + 73), v16, 6.0))
        {
          if (*(a1 + 62) > 0.3 || *(a2 + 107) == 2 || (*(a2 + 110) & 0x20) != 0 && !sub_1001253BC(*(a1 + 73), v16, 6.0) && (sub_1002F8B34(*(a1 + 73), v16, 6.0) & 1) == 0)
          {
            v191 = 5;
          }

          else
          {
            if (!sub_1002F8B34(*(a1 + 73), v16, 6.0))
            {
              *(a1 + 70) = 0xBFF0000000000000;
              *(a1 + 142) = 0;
              goto LABEL_115;
            }

            *(a1 + 142) = 3;
            if (*(a1 + 62) <= 0.1)
            {
LABEL_115:
              if (qword_1025D4770 != -1)
              {
                sub_1018D5484();
              }

              v92 = qword_1025D4778;
              if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
              {
                v93 = *(a1 + 62);
                v94 = __p;
                sub_1001FCE40(*(a1 + 73), __p);
                if (v345[9] < 0)
                {
                  v94 = *__p;
                }

                v95 = sub_1005C01DC(*(a1 + 142));
                *buf = 134349570;
                v358 = v93;
                v359 = 2082;
                *v360 = v94;
                *&v360[8] = 2082;
                *&v360[10] = v95;
                _os_log_impl(dword_100000000, v92, OS_LOG_TYPE_DEBUG, "InertialOdometry,PDR invalid,set motion state based on Motion Activity and/or IO delta-velocity,horizSpeedRate_mps2,%{public}.3f,CM_MotionActivity,%{public}s,IO_Context,%{public}s", buf, 0x20u);
                if ((v345[9] & 0x80000000) != 0)
                {
                  operator delete(*__p);
                }
              }

              if (sub_10000A100(121, 2))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D4770 != -1)
                {
                  sub_1018D5484();
                }

                v284 = qword_1025D4778;
                v285 = *(a1 + 62);
                v286 = v341;
                sub_1001FCE40(*(a1 + 73), v341);
                if (v342 < 0)
                {
                  v286 = v341[0];
                }

                v287 = sub_1005C01DC(*(a1 + 142));
                *__p = 134349570;
                *&__p[4] = v285;
                v344 = 2082;
                *v345 = v286;
                *&v345[8] = 2082;
                *&v345[10] = v287;
                LODWORD(v316) = 32;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v284, 2, "InertialOdometry,PDR invalid,set motion state based on Motion Activity and/or IO delta-velocity,horizSpeedRate_mps2,%{public}.3f,CM_MotionActivity,%{public}s,IO_Context,%{public}s", __p, v316);
                v289 = v288;
                if (v342 < 0)
                {
                  operator delete(v341[0]);
                }

                sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v289);
                if (v289 != buf)
                {
                  free(v289);
                }
              }

              *(a1 + 70) = v16;
              goto LABEL_218;
            }

            v191 = 4;
          }

          *(a1 + 142) = v191;
          *(a1 + 72) = v16;
          goto LABEL_115;
        }

        v91 = 2;
      }

      *(a1 + 142) = v91;
      goto LABEL_115;
    }

    *(a1 + 43) = v35;
    *(a1 + 26) = vcvtq_f64_f32(*(a2 + 28));
    *(a1 + 47) = v16;
    *(a1 + 48) = v33;
    *(a1 + 49) = 0x3FC70A3D70A3D70ALL;
    *(a1 + 50) = *(a2 + 24);
    *(a1 + 51) = 1;
    sub_100123544(a1 + 2, a2);
    v110 = *(a1 + 38);
    if (*(a1 + 39) != v110)
    {
      v111 = *(a1 + 41);
      v112 = (v110 + 8 * (v111 >> 8));
      v113 = *v112 + 16 * v111;
      v114 = *(v110 + (((*(a1 + 42) + v111) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (a1[336] + v111);
      while (v113 != v114)
      {
        v115 = *v113;
        v116 = *(v113 + 8);
        if (v116)
        {
          atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v115)
        {
          sub_100123544(v115, a2);
        }

        if (v116)
        {
          sub_100008080(v116);
        }

        v113 += 16;
        if (v113 - *v112 == 4096)
        {
          v117 = v112[1];
          ++v112;
          v113 = v117;
        }
      }
    }

    if ((*(a2 + 110) & 8) != 0)
    {
      if (qword_1025D4770 != -1)
      {
        sub_1018D5484();
      }

      v157 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v158 = *(a2 + 104);
        v159 = *(a2 + 110);
        v160 = *(a2 + 24);
        v161 = *(a2 + 28);
        v162 = *(a2 + 32);
        v163 = *(a2 + 36);
        v164 = *(a2 + 40);
        v165 = *(a2 + 44);
        v166 = *(a2 + 48);
        v167 = *(a2 + 16);
        v168 = *(a2 + 68) * 57.2957795;
        v169 = *(a2 + 80);
        v170 = *(a2 + 107);
        v171 = *(a2 + 108);
        v172 = sqrtf(*(a2 + 72));
        v173 = *(a2 + 76);
        v174 = *(a2 + 109);
        *buf = 134354688;
        v358 = v16;
        v359 = 1026;
        *v360 = v158;
        *&v360[4] = 2050;
        *&v360[6] = v160;
        *&v360[14] = 1026;
        *&v360[16] = v159 & 1;
        *&v360[20] = 2050;
        *&v360[22] = v161;
        *&v360[30] = 2050;
        *&v360[32] = v162;
        *&v360[40] = 2050;
        *&v360[42] = v163;
        *&v360[50] = 1026;
        *&v360[52] = (v159 >> 1) & 1;
        *&v360[56] = 2050;
        *&v360[58] = v164;
        *&v360[66] = 2050;
        *v361 = v165;
        *&v361[8] = 2050;
        *v362 = v166;
        *&v362[8] = 2050;
        *v363 = v35;
        *&v363[8] = 2050;
        *v364 = v58;
        *&v364[8] = 2050;
        *&v364[10] = v167;
        *&v364[18] = 1026;
        *&v364[20] = (v159 >> 3) & 1;
        v365 = 1026;
        *v366 = (v159 >> 4) & 1;
        *&v366[4] = 2050;
        *&v366[6] = v168;
        *&v366[14] = 2050;
        *&v366[16] = v172 * 57.2957795;
        v367 = 2050;
        *v368 = v173;
        *&v368[8] = 2050;
        *v369 = sqrtf(v169);
        *&v369[8] = 1026;
        *&v369[10] = v170 - 1;
        v370 = 1026;
        *v371 = v171 - 1;
        *&v371[4] = 1026;
        *&v371[6] = v174 - 1;
        _os_log_impl(dword_100000000, v157, OS_LOG_TYPE_DEBUG, "InertialOdometry,consumed IO sample PDR,mct,%{public}.3f,RefF,%{public}d,sampleInterval_s,%{public}.1f,isPDRValid,%{public}d,dPosXYZ_m,%{public}+.3f,%{public}+.3f,%{public}+.3f,isVDRValid,%{public}d,dVelXYZ_mps,%{public}+.3f,%{public}+.3f,%{public}+.3f,GDis,%{public}.3f,GSpeedRate,%{public}+.3f,CalibApplicabilityMCT,%{public}.3f,yawCorrValid,%{public}d,SFValid,%{public}d,yawCorrDeg,%{public}+.2f,yawCorrUncDeg,%{public}.2f,SF,%{public}.3f,SF_unc,%{public}.3f,IO_MountState,%{public}d,IO_zuptFlag,%{public}d,IO_DOTBiasChangeFlag,%{public}d", buf, 0xC8u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_187;
      }

      sub_1018D54AC(buf);
      v290 = *(a2 + 104);
      v291 = *(a2 + 110);
      v292 = *(a2 + 24);
      v293 = *(a2 + 28);
      v294 = *(a2 + 32);
      v295 = *(a2 + 36);
      v296 = *(a2 + 40);
      v297 = *(a2 + 44);
      v298 = *(a2 + 48);
      v299 = *(a2 + 16);
      v300 = *(a2 + 68) * 57.2957795;
      v301 = *(a2 + 80);
      v302 = *(a2 + 107);
      v303 = sqrtf(*(a2 + 72));
      v304 = *(a2 + 76);
      v305 = *(a2 + 108);
      v306 = *(a2 + 109);
      *__p = 134354688;
      *&__p[4] = v16;
      v344 = 1026;
      *v345 = v290;
      *&v345[4] = 2050;
      *&v345[6] = v292;
      *&v345[14] = 1026;
      *&v345[16] = v291 & 1;
      *&v345[20] = 2050;
      *&v345[22] = v293;
      *&v345[30] = 2050;
      *&v345[32] = v294;
      *&v345[40] = 2050;
      *&v345[42] = v295;
      *&v345[50] = 1026;
      *&v345[52] = (v291 >> 1) & 1;
      *&v345[56] = 2050;
      *&v345[58] = v296;
      *&v345[66] = 2050;
      *v346 = v297;
      *&v346[8] = 2050;
      *v347 = v298;
      *&v347[8] = 2050;
      *v348 = v35;
      *&v348[8] = 2050;
      *v349 = v58;
      *&v349[8] = 2050;
      *&v349[10] = v299;
      *&v349[18] = 1026;
      *&v349[20] = (v291 >> 3) & 1;
      v350 = 1026;
      *v351 = (v291 >> 4) & 1;
      *&v351[4] = 2050;
      *&v351[6] = v300;
      *&v351[14] = 2050;
      *&v351[16] = v303 * 57.2957795;
      v352 = 2050;
      *v353 = v304;
      *&v353[8] = 2050;
      *v354 = sqrtf(v301);
      *&v354[8] = 1026;
      *&v354[10] = v302 - 1;
      v355 = 1026;
      *v356 = v305 - 1;
      *&v356[4] = 1026;
      *&v356[6] = v306 - 1;
      LODWORD(v316) = 200;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "InertialOdometry,consumed IO sample PDR,mct,%{public}.3f,RefF,%{public}d,sampleInterval_s,%{public}.1f,isPDRValid,%{public}d,dPosXYZ_m,%{public}+.3f,%{public}+.3f,%{public}+.3f,isVDRValid,%{public}d,dVelXYZ_mps,%{public}+.3f,%{public}+.3f,%{public}+.3f,GDis,%{public}.3f,GSpeedRate,%{public}+.3f,CalibApplicabilityMCT,%{public}.3f,yawCorrValid,%{public}d,SFValid,%{public}d,yawCorrDeg,%{public}+.2f,yawCorrUncDeg,%{public}.2f,SF,%{public}.3f,SF_unc,%{public}.3f,IO_MountState,%{public}d,IO_zuptFlag,%{public}d,IO_DOTBiasChangeFlag,%{public}d", __p, v316);
      v138 = v307;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v307);
      if (v138 == buf)
      {
        goto LABEL_187;
      }
    }

    else
    {
      if (qword_1025D4770 != -1)
      {
        sub_1018D5484();
      }

      v118 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v119 = *(a2 + 104);
        v120 = *(a2 + 110);
        v121 = *(a2 + 24);
        v122 = *(a2 + 28);
        v123 = *(a2 + 32);
        v124 = *(a2 + 36);
        v125 = *(a2 + 40);
        v126 = *(a2 + 44);
        v127 = *(a2 + 48);
        *buf = 134352128;
        v358 = v16;
        v359 = 1026;
        *v360 = v119;
        *&v360[4] = 2050;
        *&v360[6] = v121;
        *&v360[14] = 1026;
        *&v360[16] = v120 & 1;
        *&v360[20] = 2050;
        *&v360[22] = v122;
        *&v360[30] = 2050;
        *&v360[32] = v123;
        *&v360[40] = 2050;
        *&v360[42] = v124;
        *&v360[50] = 1026;
        *&v360[52] = (v120 >> 1) & 1;
        *&v360[56] = 2050;
        *&v360[58] = v125;
        *&v360[66] = 2050;
        *v361 = v126;
        *&v361[8] = 2050;
        *v362 = v127;
        *&v362[8] = 2050;
        *v363 = v35;
        *&v363[8] = 2050;
        *v364 = v58;
        _os_log_impl(dword_100000000, v118, OS_LOG_TYPE_DEBUG, "InertialOdometry,consumed IO sample PDR,mct,%{public}.3f,RefF,%{public}d,sampleInterval_s,%{public}.1f,isPDRValid,%{public}d,dPosXYZ_m,%{public}+.3f,%{public}+.3f,%{public}+.3f,isVDRValid,%{public}d,dVelXYZ_mps,%{public}+.3f,%{public}+.3f,%{public}+.3f,GDis,%{public}.3f,GSpeedRate,%{public}+.3f", buf, 0x78u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_187;
      }

      sub_1018D54AC(buf);
      v128 = *(a2 + 104);
      v129 = *(a2 + 110);
      v130 = *(a2 + 24);
      v131 = *(a2 + 28);
      v132 = *(a2 + 32);
      v133 = *(a2 + 36);
      v134 = *(a2 + 40);
      v135 = *(a2 + 44);
      v136 = *(a2 + 48);
      *__p = 134352128;
      *&__p[4] = v16;
      v344 = 1026;
      *v345 = v128;
      *&v345[4] = 2050;
      *&v345[6] = v130;
      *&v345[14] = 1026;
      *&v345[16] = v129 & 1;
      *&v345[20] = 2050;
      *&v345[22] = v131;
      *&v345[30] = 2050;
      *&v345[32] = v132;
      *&v345[40] = 2050;
      *&v345[42] = v133;
      *&v345[50] = 1026;
      *&v345[52] = (v129 >> 1) & 1;
      *&v345[56] = 2050;
      *&v345[58] = v134;
      *&v345[66] = 2050;
      *v346 = v135;
      *&v346[8] = 2050;
      *v347 = v136;
      *&v347[8] = 2050;
      *v348 = v35;
      *&v348[8] = 2050;
      *v349 = v58;
      LODWORD(v316) = 120;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "InertialOdometry,consumed IO sample PDR,mct,%{public}.3f,RefF,%{public}d,sampleInterval_s,%{public}.1f,isPDRValid,%{public}d,dPosXYZ_m,%{public}+.3f,%{public}+.3f,%{public}+.3f,isVDRValid,%{public}d,dVelXYZ_mps,%{public}+.3f,%{public}+.3f,%{public}+.3f,GDis,%{public}.3f,GSpeedRate,%{public}+.3f", __p, v316);
      v138 = v137;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v137);
      if (v138 == buf)
      {
        goto LABEL_187;
      }
    }

    free(v138);
LABEL_187:
    sub_100123E78(a1, a2, v35);
    v175 = *(a1 + 58);
    if (v175 >= 0.0 && (v175 > v16 || v16 - v175 <= 2.0))
    {
      *(a1 + 61) = vabdd_f64(v36, *(a1 + 59));
    }

    if (v33 <= 0.001)
    {
      if (*(a2 + 106) || v58 <= 0.3 && *(v4 + 14) <= 0.3)
      {
        *(a1 + 142) = 1;
        ++*(a1 + 149);
      }

      else
      {
        *(a1 + 142) = 5;
        *(a1 + 72) = v16;
        if (qword_1025D4770 != -1)
        {
          sub_1018D5484();
        }

        v177 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v178 = *(a2 + 106);
          v179 = *(a2 + 24);
          v180 = *(a1 + 59);
          v181 = *(a1 + 61);
          v182 = *(a1 + 58);
          v183 = fabs(v16 - v182);
          if (v182 <= 0.0)
          {
            v183 = -1.0;
          }

          *buf = 134350848;
          v358 = v16;
          v359 = 1026;
          *v360 = v178;
          *&v360[4] = 2050;
          *&v360[6] = v179;
          *&v360[14] = 2050;
          *&v360[16] = v58;
          *&v360[24] = 2050;
          *&v360[26] = v180;
          *&v360[34] = 2050;
          *&v360[36] = v36;
          *&v360[44] = 2050;
          *&v360[46] = v181;
          *&v360[54] = 2050;
          *&v360[56] = v183;
          _os_log_impl(dword_100000000, v177, OS_LOG_TYPE_DEBUG, "InertialOdometry,PDR,VDR xcheck detected non-stationary,mct,%{public}.3f,staticFlag,%{public}d,sampleInterval_s,%{public}.1f,horizSpeedRate_mps2,%{public}+.3f,lastPDRVVel_mps,%{public}+.3f,currPDRVVel,%{public}+.3f,absChangeInDeltaAltitude_mps,%{public}.3f,VVel_dt_s,%{public}.3f", buf, 0x4Eu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018D54AC(buf);
          v308 = *(a2 + 106);
          v309 = *(a2 + 24);
          v310 = *(a1 + 59);
          v311 = *(a1 + 61);
          v312 = *(a1 + 58);
          v313 = fabs(v16 - v312);
          if (v312 <= 0.0)
          {
            v313 = -1.0;
          }

          *__p = 134350848;
          *&__p[4] = v16;
          v344 = 1026;
          *v345 = v308;
          *&v345[4] = 2050;
          *&v345[6] = v309;
          *&v345[14] = 2050;
          *&v345[16] = v58;
          *&v345[24] = 2050;
          *&v345[26] = v310;
          *&v345[34] = 2050;
          *&v345[36] = v36;
          *&v345[44] = 2050;
          *&v345[46] = v311;
          *&v345[54] = 2050;
          *&v345[56] = v313;
          LODWORD(v316) = 78;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "InertialOdometry,PDR,VDR xcheck detected non-stationary,mct,%{public}.3f,staticFlag,%{public}d,sampleInterval_s,%{public}.1f,horizSpeedRate_mps2,%{public}+.3f,lastPDRVVel_mps,%{public}+.3f,currPDRVVel,%{public}+.3f,absChangeInDeltaAltitude_mps,%{public}.3f,VVel_dt_s,%{public}.3f", __p, v316);
          v315 = v314;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v314);
          if (v315 != buf)
          {
            free(v315);
          }
        }

        ++*(a1 + 148);
      }
    }

    else
    {
      if (v33 >= *(a2 + 24) * 0.25)
      {
        v176 = 3;
      }

      else
      {
        v176 = 2;
      }

      *(a1 + 142) = v176;
    }

    *(a1 + 70) = v16;
    if (qword_1025D4770 != -1)
    {
      sub_1018D5484();
    }

    v184 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v185 = *(a1 + 1);
      v186 = sub_1005C01DC(*(a1 + 142));
      v187 = *(a2 + 24);
      v188 = hypotf(*(a2 + 40), *(a2 + 44));
      v189 = *(a1 + 25) + *(a1 + 24);
      v190 = sub_1005BFCB0(a1 + 4);
      *buf = 134351362;
      v358 = v185;
      v359 = 2050;
      *v360 = v16;
      *&v360[8] = 2050;
      *&v360[10] = vabdd_f64(v16, v185);
      *&v360[18] = 2082;
      *&v360[20] = v186;
      *&v360[28] = 2050;
      *&v360[30] = v187;
      *&v360[38] = 2050;
      *&v360[40] = v188;
      *&v360[48] = 2050;
      *&v360[50] = v33;
      *&v360[58] = 2050;
      *&v360[60] = v34;
      *v361 = 2050;
      *&v361[2] = v189;
      *v362 = 2050;
      *&v362[2] = v190;
      _os_log_impl(dword_100000000, v184, OS_LOG_TYPE_DEBUG, "InertialOdometry,IO PDR cumsum,prev IO mct,%{public}.3f,curr IO mct,%{public}.3f,dTime,%{public}.3f,IO_Context,%{public}s,sampleInterval_s,%{public}.1f,HSpeed_mps,%{public}.3f,GDis_m,%{public}.3f,VDis_m,%{public}+.3f,CumSumGDistMoved_dt_s,%{public}.3f,CumSumGDist_m,%{public}.3f", buf, 0x66u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D54AC(buf);
      v275 = qword_1025D4778;
      v276 = *(a1 + 1);
      v277 = sub_1005C01DC(*(a1 + 142));
      v278 = *(a2 + 24);
      v279 = hypotf(*(a2 + 40), *(a2 + 44));
      v280 = *(a1 + 25) + *(a1 + 24);
      v281 = sub_1005BFCB0(a1 + 4);
      *__p = 134351362;
      *&__p[4] = v276;
      v344 = 2050;
      *v345 = v16;
      *&v345[8] = 2050;
      *&v345[10] = vabdd_f64(v16, v276);
      *&v345[18] = 2082;
      *&v345[20] = v277;
      *&v345[28] = 2050;
      *&v345[30] = v278;
      *&v345[38] = 2050;
      *&v345[40] = v279;
      *&v345[48] = 2050;
      *&v345[50] = v33;
      *&v345[58] = 2050;
      *&v345[60] = v34;
      *v346 = 2050;
      *&v346[2] = v280;
      *v347 = 2050;
      *&v347[2] = v281;
      LODWORD(v316) = 102;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v275, 2, "InertialOdometry,IO PDR cumsum,prev IO mct,%{public}.3f,curr IO mct,%{public}.3f,dTime,%{public}.3f,IO_Context,%{public}s,sampleInterval_s,%{public}.1f,HSpeed_mps,%{public}.3f,GDis_m,%{public}.3f,VDis_m,%{public}+.3f,CumSumGDistMoved_dt_s,%{public}.3f,CumSumGDist_m,%{public}.3f", __p, v316);
      v283 = v282;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v282);
      if (v283 != buf)
      {
        free(v283);
      }
    }

    goto LABEL_218;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1018D5484();
  }

  v68 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v69 = sub_100125258(*(a1 + 73), v16, 6.0);
    v70 = sub_1001255A0(*(a1 + 73), v16, 6.0);
    v71 = sub_1001254F8(*(a1 + 73));
    v72 = *(a2 + 107) - 1;
    *buf = 134350080;
    v358 = v16;
    v359 = 1026;
    *v360 = v69;
    *&v360[4] = 1026;
    *&v360[6] = v70;
    *&v360[10] = 1026;
    *&v360[12] = v71;
    *&v360[16] = 1026;
    *&v360[18] = v72;
    _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_DEBUG, "InertialOdometry,CM indicates non-pedestrian,IO mct,%{public}.3f,isVehicular,%{public}d,isCycling,%{public}d,isWorkoutCycling,%{public}d,IO_MountState,%{public}d", buf, 0x24u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D54AC(buf);
    v198 = qword_1025D4778;
    v199 = sub_100125258(*(a1 + 73), v16, 6.0);
    v200 = sub_1001255A0(*(a1 + 73), v16, 6.0);
    v201 = sub_1001254F8(*(a1 + 73));
    v202 = *(a2 + 107) - 1;
    *__p = 134350080;
    *&__p[4] = v16;
    v344 = 1026;
    *v345 = v199;
    *&v345[4] = 1026;
    *&v345[6] = v200;
    *&v345[10] = 1026;
    *&v345[12] = v201;
    *&v345[16] = 1026;
    *&v345[18] = v202;
    LODWORD(v316) = 36;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v198, 2, "InertialOdometry,CM indicates non-pedestrian,IO mct,%{public}.3f,isVehicular,%{public}d,isCycling,%{public}d,isWorkoutCycling,%{public}d,IO_MountState,%{public}d", __p, v316);
    v204 = v203;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v203);
    if (v204 != buf)
    {
      free(v204);
    }
  }

  v73 = *(a2 + 110);
  if ((v73 & 0x21) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1018D5484();
    }

    v78 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v79 = *(a2 + 104);
      v80 = *(a2 + 110);
      v81 = *(a2 + 24);
      v82 = *(a2 + 28);
      v83 = *(a2 + 32);
      v84 = *(a2 + 36);
      v85 = *(a2 + 40);
      v86 = *(a2 + 44);
      v87 = *(a2 + 48);
      v88 = *(a2 + 107) - 1;
      v89 = *(a2 + 108) - 1;
      v90 = *(a2 + 109) - 1;
      *buf = 134352384;
      v358 = v16;
      v359 = 1026;
      *v360 = v79;
      *&v360[4] = 2050;
      *&v360[6] = v81;
      *&v360[14] = 1026;
      *&v360[16] = v80 & 1;
      *&v360[20] = 2050;
      *&v360[22] = v82;
      *&v360[30] = 2050;
      *&v360[32] = v83;
      *&v360[40] = 2050;
      *&v360[42] = v84;
      *&v360[50] = 1026;
      *&v360[52] = (v80 >> 1) & 1;
      *&v360[56] = 2050;
      *&v360[58] = v85;
      *&v360[66] = 2050;
      *v361 = v86;
      *&v361[8] = 2050;
      *v362 = v87;
      *&v362[8] = 1026;
      *v363 = v88;
      *&v363[4] = 1026;
      *&v363[6] = v89;
      *v364 = 1026;
      *&v364[2] = v90;
      _os_log_impl(dword_100000000, v78, OS_LOG_TYPE_DEBUG, "InertialOdometry,no valid PDR and IO course to verify CM non-pedestrian,curr IO mct,%{public}.3f,RefF,%{public}d,sampleInterval_s,%{public}.1f,isPDRValid,%{public}d,dPosX_m,%{public}+.3f,dPosY_m,%{public}+.3f,dPosZ_m,%{public}+.3f,isVDRValid,%{public}d,dVelX_m,%{public}+.3f,dVelY_m,%{public}+.3f,dVelZ_m,%{public}+.3f,IO_MountState,%{public}d,IO_zuptFlag,%{public}d,IO_DOTBiasChangeFlag,%{public}d", buf, 0x76u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D54AC(buf);
      v224 = *(a2 + 104);
      v225 = *(a2 + 110);
      v226 = *(a2 + 24);
      v227 = *(a2 + 28);
      v228 = *(a2 + 32);
      v229 = *(a2 + 36);
      v230 = *(a2 + 40);
      v231 = *(a2 + 44);
      v232 = *(a2 + 48);
      v233 = *(a2 + 107) - 1;
      v234 = *(a2 + 108) - 1;
      v235 = *(a2 + 109) - 1;
      *__p = 134352384;
      *&__p[4] = v16;
      v344 = 1026;
      *v345 = v224;
      *&v345[4] = 2050;
      *&v345[6] = v226;
      *&v345[14] = 1026;
      *&v345[16] = v225 & 1;
      *&v345[20] = 2050;
      *&v345[22] = v227;
      *&v345[30] = 2050;
      *&v345[32] = v228;
      *&v345[40] = 2050;
      *&v345[42] = v229;
      *&v345[50] = 1026;
      *&v345[52] = (v225 >> 1) & 1;
      *&v345[56] = 2050;
      *&v345[58] = v230;
      *&v345[66] = 2050;
      *v346 = v231;
      *&v346[8] = 2050;
      *v347 = v232;
      *&v347[8] = 1026;
      *v348 = v233;
      *&v348[4] = 1026;
      *&v348[6] = v234;
      *v349 = 1026;
      *&v349[2] = v235;
      LODWORD(v316) = 118;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "InertialOdometry,no valid PDR and IO course to verify CM non-pedestrian,curr IO mct,%{public}.3f,RefF,%{public}d,sampleInterval_s,%{public}.1f,isPDRValid,%{public}d,dPosX_m,%{public}+.3f,dPosY_m,%{public}+.3f,dPosZ_m,%{public}+.3f,isVDRValid,%{public}d,dVelX_m,%{public}+.3f,dVelY_m,%{public}+.3f,dVelZ_m,%{public}+.3f,IO_MountState,%{public}d,IO_zuptFlag,%{public}d,IO_DOTBiasChangeFlag,%{public}d", __p, v316);
      v237 = v236;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v236);
      if (v237 != buf)
      {
        free(v237);
      }
    }

    *(a1 + 142) = 0;
    goto LABEL_181;
  }

  if (*(a2 + 110))
  {
    v74 = *(a1 + 58);
    if (v74 >= 0.0 && (v74 > v16 || v16 - v74 <= 2.0))
    {
      *(a1 + 61) = vabdd_f64(v36, *(a1 + 59));
    }

    *(a1 + 58) = v16;
    *(a1 + 59) = v36;
    *(a1 + 60) = 0x3FB70A3D70A3D70ALL;
    sub_10028735C(a1, a2);
    v73 = *(a2 + 110);
  }

  if ((v73 & 2) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1018D5484();
    }

    v75 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v75, OS_LOG_TYPE_DEBUG, "InertialOdometry,CM Motion Activity indicate non-pedestrian,cross-check with IO sample failed,reason: invalid IO delta velocity", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D54AC(buf);
      *__p = 0;
      LODWORD(v316) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "InertialOdometry,CM Motion Activity indicate non-pedestrian,cross-check with IO sample failed,reason: invalid IO delta velocity", __p, v316);
      v77 = v76;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v76);
      if (v77 != buf)
      {
        free(v77);
      }
    }

    return 1;
  }

  if (*(a2 + 108) == 2)
  {
    goto LABEL_125;
  }

  if (sub_1001253BC(*(a1 + 73), v16, 6.0))
  {
    v96 = 2;
    goto LABEL_145;
  }

  if (v58 > 0.3 && ((*(a2 + 110) & 1) == 0 || v35 < 0.25) || *(a2 + 107) == 2 || (*(a2 + 110) & 0x20) != 0)
  {
    v139 = 5;
    goto LABEL_175;
  }

  if (*(a2 + 106) != 1 && ((*(a2 + 110) & 1) == 0 || v58 > 0.001))
  {
    v139 = 4;
LABEL_175:
    *(a1 + 142) = v139;
    *(a1 + 72) = v16;
    goto LABEL_176;
  }

LABEL_125:
  v96 = 1;
LABEL_145:
  *(a1 + 142) = v96;
  *(a1 + 47) = v16;
  *(a1 + 24) = xmmword_101C7FE40;
  *(a1 + 50) = *(a2 + 24);
  *(a1 + 51) = 1;
LABEL_176:
  if (qword_1025D4770 != -1)
  {
    sub_1018D5484();
  }

  v140 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v141 = *(a2 + 104);
    v142 = *(a2 + 110);
    v143 = v142 & 1;
    v329 = *(a2 + 28);
    v333 = *(a2 + 32);
    v144 = *(a2 + 36);
    v145 = (v142 >> 1) & 1;
    v325 = *(a2 + 40);
    v146 = v35;
    v147 = *(a2 + 44);
    v338 = v58;
    v148 = *(a2 + 48);
    v149 = (v142 >> 5) & 1;
    v150 = *(a2 + 88) * 57.2957795;
    v151 = sqrtf(*(a2 + 92)) * 57.2957795;
    v152 = *(a2 + 96) * 57.2957795;
    v153 = sub_1005C01DC(*(a1 + 142));
    v154 = *(a2 + 107) - 1;
    v155 = *(a2 + 108) - 1;
    v156 = *(a2 + 109) - 1;
    *buf = 134353922;
    v358 = v16;
    v359 = 1026;
    *v360 = v141;
    *&v360[4] = 1026;
    *&v360[6] = v143;
    *&v360[10] = 2050;
    *&v360[12] = v329;
    *&v360[20] = 2050;
    *&v360[22] = v333;
    *&v360[30] = 2050;
    *&v360[32] = v144;
    *&v360[40] = 1026;
    *&v360[42] = v145;
    *&v360[46] = 2050;
    *&v360[48] = v325;
    *&v360[56] = 2050;
    *&v360[58] = v147;
    v35 = v146;
    *&v360[66] = 2050;
    *v361 = v148;
    v58 = v338;
    *&v361[8] = 2050;
    *v362 = v146;
    *&v362[8] = 2050;
    *v363 = v338;
    *&v363[8] = 1026;
    *v364 = v149;
    *&v364[4] = 2050;
    *&v364[6] = v150;
    *&v364[14] = 2050;
    *&v364[16] = v151;
    v365 = 2050;
    *v366 = v152;
    *&v366[8] = 2082;
    *&v366[10] = v153;
    *&v366[18] = 1026;
    *&v366[20] = v154;
    v367 = 1026;
    *v368 = v155;
    *&v368[4] = 1026;
    *&v368[6] = v156;
    _os_log_impl(dword_100000000, v140, OS_LOG_TYPE_DEBUG, "InertialOdometry,PDR vs VDR xcheck,IO mct,%{public}.3f,RefF,%{public}d,isPDRValid,%{public}d,dPosXYZ_m,%{public}+.3f,%{public}+.3f,%{public}+.3f,isVDRValid,%{public}d,dVelXYZ_mps,%{public}+.3f,%{public}+.3f,%{public}+.3f,GDis_m,%{public}.3f,GSpeedRate_mps2,%{public}+.3f,isIOCourseValid,%{public}d,Course_deg,%{public}.3f,CourseUnc_deg,%{public}.3f,dCourse_deg,%{public}+.3f,IO_Context,%{public}s,IO_MountState,%{public}d,IO_zuptFlag,%{public}d,IO_DOTBiasChangeFlag,%{public}d", buf, 0xAEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D54AC(buf);
    v238 = qword_1025D4778;
    v239 = *(a2 + 104);
    v240 = *(a2 + 110);
    v241 = v240 & 1;
    v330 = *(a2 + 28);
    v334 = *(a2 + 32);
    v339 = v58;
    v242 = *(a2 + 36);
    v243 = (v240 >> 1) & 1;
    v326 = *(a2 + 40);
    v244 = *(a2 + 44);
    v245 = *(a2 + 48);
    v246 = (v240 >> 5) & 1;
    v247 = *(a2 + 88) * 57.2957795;
    v248 = sqrtf(*(a2 + 92)) * 57.2957795;
    v249 = *(a2 + 96) * 57.2957795;
    v250 = sub_1005C01DC(*(a1 + 142));
    v251 = *(a2 + 107) - 1;
    v252 = *(a2 + 108) - 1;
    v253 = *(a2 + 109) - 1;
    *__p = 134353922;
    *&__p[4] = v16;
    v344 = 1026;
    *v345 = v239;
    *&v345[4] = 1026;
    *&v345[6] = v241;
    *&v345[10] = 2050;
    *&v345[12] = v330;
    *&v345[20] = 2050;
    *&v345[22] = v334;
    *&v345[30] = 2050;
    *&v345[32] = v242;
    *&v345[40] = 1026;
    *&v345[42] = v243;
    *&v345[46] = 2050;
    *&v345[48] = v326;
    *&v345[56] = 2050;
    *&v345[58] = v244;
    *&v345[66] = 2050;
    *v346 = v245;
    *&v346[8] = 2050;
    *v347 = v35;
    *&v347[8] = 2050;
    *v348 = v339;
    *&v348[8] = 1026;
    *v349 = v246;
    *&v349[4] = 2050;
    *&v349[6] = v247;
    *&v349[14] = 2050;
    *&v349[16] = v248;
    v350 = 2050;
    *v351 = v249;
    *&v351[8] = 2082;
    *&v351[10] = v250;
    *&v351[18] = 1026;
    *&v351[20] = v251;
    v352 = 1026;
    *v353 = v252;
    *&v353[4] = 1026;
    *&v353[6] = v253;
    LODWORD(v316) = 174;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v238, 2, "InertialOdometry,PDR vs VDR xcheck,IO mct,%{public}.3f,RefF,%{public}d,isPDRValid,%{public}d,dPosXYZ_m,%{public}+.3f,%{public}+.3f,%{public}+.3f,isVDRValid,%{public}d,dVelXYZ_mps,%{public}+.3f,%{public}+.3f,%{public}+.3f,GDis_m,%{public}.3f,GSpeedRate_mps2,%{public}+.3f,isIOCourseValid,%{public}d,Course_deg,%{public}.3f,CourseUnc_deg,%{public}.3f,dCourse_deg,%{public}+.3f,IO_Context,%{public}s,IO_MountState,%{public}d,IO_zuptFlag,%{public}d,IO_DOTBiasChangeFlag,%{public}d", __p, v316);
    v255 = v254;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::IOSampleUpdate(const CLPIOSample &)", "%s\n", v254);
    if (v255 != buf)
    {
      free(v255);
    }
  }

LABEL_181:
  *(a1 + 70) = v16;
  return 1;
}

void sub_1001227E0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1001227EC(uint64_t a1, double *a2)
{
  v4 = sub_10011FC38(*(a1 + 2168), a2);
  v6 = v4;
  if (*(a1 + 2904) == 1)
  {
    v5 = a2 + 1;
    if (a2[1] > 0.0)
    {
      *__src = a2 + 1;
      v7 = sub_100D73858(a1 + 2920, v5, &unk_101C66300, __src);
      sub_10011BB24(*(a1 + 2168), __src);
      memmove(v7 + 23, __src, 0x100uLL);
      *(v7 + 440) = 1;
      return v6;
    }
  }

  v8 = *(a1 + 248);
  if (v8)
  {
    v9 = -1.0;
    do
    {
      if (v8[71] > v9 && *(v8 + 214) != 0)
      {
        v9 = v8[71];
      }

      v8 = *v8;
    }

    while (v8);
  }

  else
  {
    v9 = -1.0;
  }

  v11 = a2[1];
  if (v11 <= 0.0 || (v9 > v11 ? (v12 = v9 - v11 <= 1.5) : (v12 = 1), !v12))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v21 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *__src = 134349824;
      *&__src[4] = v11;
      v63 = 2050;
      v64 = v9;
      v65 = 2050;
      v66 = v9 - v11;
      v67 = 2050;
      v68 = 0x3FF8000000000000;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#fusion,ignoring stale/invalid IO sample,IO_mct,%{public}.3f,most recent filter update time mct,%{public}.3f,IO_delay_s,%{public}.3f,tolerance,%{public}.3f", __src, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(__src);
      v54 = 134349824;
      v55 = v11;
      v56 = 2050;
      v57 = v9;
      v58 = 2050;
      v59 = v9 - v11;
      v60 = 2050;
      v61 = 0x3FF8000000000000;
      _os_log_send_and_compose_impl(2, 0, __src, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,ignoring stale/invalid IO sample,IO_mct,%{public}.3f,most recent filter update time mct,%{public}.3f,IO_delay_s,%{public}.3f,tolerance,%{public}.3f", &v54, 42);
      v23 = v22;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::processIOSample(const CLPIOSample &)", "%s\n", v22);
      if (v23 != __src)
      {
        free(v23);
      }
    }

    return 0;
  }

  v13 = v9 + 0.001;
  if (v11 > v9)
  {
    v13 = a2[1];
  }

  v45 = v13;
  v14 = *(a1 + 2168);
  v15 = *(v14 + 560);
  v16 = *(v14 + 568);
  if (v15 <= 0.0 || v16 == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v18 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *__src = 134349312;
      *&__src[4] = v11;
      v63 = 1026;
      LODWORD(v64) = v15 > 0.0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#fusion,invalid/unknown IO derived motion context from IO sample,IO mct,%{public}.3f,isValidContext,%{public}d", __src, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(__src);
      v54 = 134349312;
      v55 = v11;
      v56 = 1026;
      LODWORD(v57) = v15 > 0.0;
      _os_log_send_and_compose_impl(2, 0, __src, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,invalid/unknown IO derived motion context from IO sample,IO mct,%{public}.3f,isValidContext,%{public}d", &v54, 18);
      v20 = v19;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::processIOSample(const CLPIOSample &)", "%s\n", v19);
      if (v20 != __src)
      {
        free(v20);
      }
    }

    goto LABEL_60;
  }

  if ((v4 & 1) == 0)
  {
LABEL_60:
    sub_1001FBBCC(a1, &v45);
    sub_1000DAAA0(a1, 1, v45);
    return 0;
  }

  if (v16 > 2 || (*(a1 + 2800) & 1) != 0 || *(a1 + 112) != 1 || vabdd_f64(sub_1000281DC(v4, v5), *(a1 + 92)) >= *(a1 + 104) || *(a1 + 68) >= 5.0 || *(a1 + 60) < 4.0 || sub_1001253BC(a1 + 2424, v45, 6.0) && !sub_100D6B860(a1 + 2680, v30, 6.0))
  {
    sub_10011BB24(*(a1 + 2168), &v54);
    if ((sub_10011BD44(a1, &v54, v45) & 1) == 0)
    {
      sub_1001FBBCC(a1, &v45);
    }

    if (*a2 > 0.0)
    {
      if (*(a1 + 1104))
      {
        v24 = vabdd_f64(*a2, *(a1 + 824));
        if (v24 > 2.0)
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v25 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v26 = *a2;
            v27 = *(a1 + 824);
            *__src = 134349824;
            *&__src[4] = v11;
            v63 = 2050;
            v64 = v26;
            v65 = 2050;
            v66 = v27;
            v67 = 2050;
            v68 = *&v24;
            _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "#fusion,possible CFAbsoluteTime discontinuity detected,mct_now,%{public}.3f,IOSampleCfat,%{public}.3f,fusionStateCfat,%{public}.3f,deltaCfat_s,%{public}.3f", __src, 0x2Au);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(__src);
            v36 = *a2;
            v37 = *(a1 + 824);
            v46 = 134349824;
            v47 = v11;
            v48 = 2050;
            v49 = v36;
            v50 = 2050;
            v51 = v37;
            v52 = 2050;
            v53 = v24;
            _os_log_send_and_compose_impl(2, 0, __src, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,possible CFAbsoluteTime discontinuity detected,mct_now,%{public}.3f,IOSampleCfat,%{public}.3f,fusionStateCfat,%{public}.3f,deltaCfat_s,%{public}.3f", &v46, 42);
            v39 = v38;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::processIOSample(const CLPIOSample &)", "%s\n", v38);
            if (v39 != __src)
            {
              free(v39);
            }
          }

          sub_100D6B904(a1, v28);
        }
      }
    }

    v6 = 1;
    sub_1000DAAA0(a1, 1, v45);
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v31 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_INFO))
    {
      v32 = *(a1 + 92);
      v33 = *(a1 + 60);
      v34 = *(a1 + 68);
      *__src = 134349825;
      *&__src[4] = v32;
      v63 = 2050;
      v64 = v15;
      v65 = 2049;
      v66 = v33;
      v67 = 2049;
      v68 = v34;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_INFO, "#fusion,locationTimestampCFAT,%{public}.3f,IOmct,%{public}.3f,InertialOdometry derived zupt rejected,speed,%{private}.2f,speedAcc,%{private}.2f", __src, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(__src);
      v40 = *(a1 + 92);
      v41 = *(a1 + 60);
      v42 = *(a1 + 68);
      v54 = 134349825;
      v55 = v40;
      v56 = 2050;
      v57 = v15;
      v58 = 2049;
      v59 = v41;
      v60 = 2049;
      v61 = v42;
      _os_log_send_and_compose_impl(2, 0, __src, 1628, dword_100000000, qword_1025D4778, 1, "#fusion,locationTimestampCFAT,%{public}.3f,IOmct,%{public}.3f,InertialOdometry derived zupt rejected,speed,%{private}.2f,speedAcc,%{private}.2f", &v54, 42);
      v44 = v43;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::processIOSample(const CLPIOSample &)", "%s\n", v43);
      if (v44 != __src)
      {
        free(v44);
      }
    }

    v6 = 0;
    v35 = *(a1 + 2168);
    *(v35 + 560) = 0xBFF0000000000000;
    *(v35 + 568) = 0;
  }

  return v6;
}

void sub_100122FD0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100122FDC(uint64_t a1, double **a2)
{
  v4 = sub_100123028(a1 + 456, a2);
  v5 = *(a1 + 3872);
  if (v5)
  {
    sub_10011DF14(v5, a2);
  }

  return v4;
}

uint64_t sub_100123028(uint64_t a1, double **a2)
{
  if ((*(a1 + 2884) & 1) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v7 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#Error,Feed InertialOdometry,LC Fusion is not configured.", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_17;
    }

    sub_101A7B5F4(buf);
    v15[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "#Error,Feed InertialOdometry,LC Fusion is not configured.", v15, 2);
    v6 = v14;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::setIOSamples(const std::vector<CLPIOSample> &)", "%s\n", v14);
    goto LABEL_30;
  }

  if (*(a1 + 2880) != 4 || *(a1 + 2840) == 1)
  {
    sub_100272FF0(a1, a2);
  }

  if (sub_100D6B41C(a1, a2))
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v4 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#fusion,Feed InertialOdometry,IO sample(s) is ignored,detected likely in-flight Airplane Mode.", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_17;
    }

    sub_101A7B5F4(buf);
    v15[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,Feed InertialOdometry,IO sample(s) is ignored,detected likely in-flight Airplane Mode.", v15, 2);
    v6 = v5;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::setIOSamples(const std::vector<CLPIOSample> &)", "%s\n", v5);
LABEL_30:
    if (v6 != buf)
    {
      free(v6);
    }

LABEL_17:
    LOBYTE(v8) = 0;
    return v8 & 1;
  }

  v10 = *a2;
  v11 = a2[1];
  if (*a2 == v11)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v12 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#fusion,Feed InertialOdometry,no IO sample(s) provided.", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_17;
    }

    sub_101A7B5F4(buf);
    v15[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,Feed InertialOdometry,no IO sample(s) provided.", v15, 2);
    v6 = v13;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::setIOSamples(const std::vector<CLPIOSample> &)", "%s\n", v13);
    goto LABEL_30;
  }

  v8 = 0;
  do
  {
    v8 |= sub_1001227EC(a1, v10);
    v10 += 14;
  }

  while (v10 != v11);
  return v8 & 1;
}

void sub_1001233C4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1001233D0(void *a1, uint64_t a2)
{
  v4 = *(a2 + 106);
  if (v4 == 2)
  {
    sub_10028D7E4((a1 + 2), *(a2 + 8));
    v13 = a1[38];
    if (a1[39] != v13)
    {
      v14 = a1[41];
      v15 = (v13 + 8 * (v14 >> 8));
      v16 = (*v15 + 16 * v14);
      v17 = *(v13 + (((a1[42] + v14) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 336) + v14);
      while (v16 != v17)
      {
        v18 = *v16;
        v19 = v16[1];
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v18)
        {
          sub_10028D7E4(v18, *(a2 + 8));
        }

        if (v19)
        {
          sub_100008080(v19);
        }

        v16 += 2;
        if ((v16 - *v15) == 4096)
        {
          v20 = v15[1];
          ++v15;
          v16 = v20;
        }
      }
    }
  }

  else if (v4 == 1)
  {
    sub_100287154((a1 + 2), *(a2 + 8));
    v5 = a1[38];
    if (a1[39] != v5)
    {
      v6 = a1[41];
      v7 = (v5 + 8 * (v6 >> 8));
      v8 = (*v7 + 16 * v6);
      v9 = *(v5 + (((a1[42] + v6) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 336) + v6);
      while (v8 != v9)
      {
        v10 = *v8;
        v11 = v8[1];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v10)
        {
          sub_100287154(v10, *(a2 + 8));
        }

        if (v11)
        {
          sub_100008080(v11);
        }

        v8 += 2;
        if ((v8 - *v7) == 4096)
        {
          v12 = v7[1];
          ++v7;
          v8 = v12;
        }
      }
    }
  }
}

void sub_100123544(double *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(a2 + 8);
  _NF = v2 > 0.0 && v3 < v2;
  if (!_NF && (*(a2 + 110) & 1) != 0)
  {
    v7 = *a1;
    if (v7 != *(a2 + 104))
    {
      sub_1005BF61C(a1, a2, v3);
      v7 = *(a2 + 104);
      *a1 = v7;
    }

    if (v7 == 8)
    {
      v8 = *(a2 + 16);
      if (v8 > 0.0 && vabdd_f64(v8, a1[3]) > 2.22044605e-16)
      {
        *(a1 + 3) = xmmword_101C75BF0;
        __asm { FMOV            V0.2D, #-1.0 }

        *(a1 + 7) = _Q0;
        a1[8] = *(a2 + 72);
        *(a1 + 5) = xmmword_101C76220;
        a1[3] = *(a2 + 16);
        *(a1 + 72) = 0;
        if (qword_1025D4770 != -1)
        {
          sub_10025BA60();
        }

        v12 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v13 = a1 + 32;
          if (*(a1 + 279) < 0)
          {
            v13 = *v13;
          }

          v14 = *(a2 + 8);
          v15 = *(a2 + 16);
          *buf = 136446722;
          v83 = v13;
          v84 = 2050;
          v85 = v14;
          v86 = 2050;
          v87 = v15;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#dPosIntg,id,%{public}s,feedDeltaPosition,mct,%{public}.3f,north-aligned calibrations changed at mct,%{public}.3f", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4770 != -1)
          {
            sub_1018D5484();
          }

          v63 = a1 + 32;
          if (*(a1 + 279) < 0)
          {
            v63 = *v63;
          }

          v64 = *(a2 + 8);
          v65 = *(a2 + 16);
          v76 = 136446722;
          v77 = v63;
          v78 = 2050;
          v79 = v64;
          v80 = 2050;
          v81 = v65;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#dPosIntg,id,%{public}s,feedDeltaPosition,mct,%{public}.3f,north-aligned calibrations changed at mct,%{public}.3f", &v76, 32);
          v67 = v66;
          sub_100152C7C("Generic", 1, 0, 2, "void cllcf::DeltaPositionIntegrator::feedDeltaPosition(const CLPIOSample &)", "%s\n", v66);
          if (v67 != buf)
          {
            free(v67);
          }
        }
      }
    }

    if (a1[3] > 0.0 && (*(a2 + 104) != 8 || *(a2 + 16) < 0.0))
    {
      *(a1 + 3) = xmmword_101C75BF0;
      __asm { FMOV            V0.2D, #-1.0 }

      *(a1 + 5) = _Q0;
      *(a1 + 7) = _Q0;
      *(a1 + 72) = 0;
      if (qword_1025D4770 != -1)
      {
        sub_1018D5484();
      }

      v17 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v18 = a1 + 32;
        if (*(a1 + 279) < 0)
        {
          v18 = *v18;
        }

        v19 = *(a2 + 8);
        *buf = 136446466;
        v83 = v18;
        v84 = 2050;
        v85 = v19;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#dPosIntg,id,%{public}s,feedDeltaPosition,mct,%{public}.3f,IO samples no longer come with calibration north-align estimates", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4770 != -1)
        {
          sub_1018D5484();
        }

        v59 = a1 + 32;
        if (*(a1 + 279) < 0)
        {
          v59 = *v59;
        }

        v60 = *(a2 + 8);
        v76 = 136446466;
        v77 = v59;
        v78 = 2050;
        v79 = v60;
        LODWORD(v72) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#dPosIntg,id,%{public}s,feedDeltaPosition,mct,%{public}.3f,IO samples no longer come with calibration north-align estimates", &v76, v72);
        v62 = v61;
        sub_100152C7C("Generic", 1, 0, 2, "void cllcf::DeltaPositionIntegrator::feedDeltaPosition(const CLPIOSample &)", "%s\n", v61);
        if (v62 != buf)
        {
          free(v62);
        }
      }
    }

    if (*(a2 + 109) == 2 && a1[3] > 0.0 && a1[5] >= 0.0)
    {
      *(a1 + 72) = 1;
      if (qword_1025D4770 != -1)
      {
        sub_1018D5484();
      }

      v20 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v21 = a1 + 32;
        if (*(a1 + 279) < 0)
        {
          v21 = *v21;
        }

        v22 = *(a2 + 8);
        *buf = 136446466;
        v83 = v21;
        v84 = 2050;
        v85 = v22;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#dPosIntg,id,%{public}s,feedDeltaPosition,mct,%{public}.3f,received IO sample with DOT Bias Change Possible", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4770 != -1)
        {
          sub_1018D5484();
        }

        v68 = a1 + 32;
        if (*(a1 + 279) < 0)
        {
          v68 = *v68;
        }

        v69 = *(a2 + 8);
        v76 = 136446466;
        v77 = v68;
        v78 = 2050;
        v79 = v69;
        LODWORD(v72) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#dPosIntg,id,%{public}s,feedDeltaPosition,mct,%{public}.3f,received IO sample with DOT Bias Change Possible", &v76, v72);
        v71 = v70;
        sub_100152C7C("Generic", 1, 0, 2, "void cllcf::DeltaPositionIntegrator::feedDeltaPosition(const CLPIOSample &)", "%s\n", v70);
        if (v71 != buf)
        {
          free(v71);
        }
      }
    }

    v23 = a1[14];
    v24 = *(a2 + 8);
    if (v23 > 0.0 && *(a2 + 106) == 0 && v24 > v23)
    {
      a1[13] = v24 - v23 + a1[13];
      if (qword_1025D4770 != -1)
      {
        sub_1018D5484();
      }

      v27 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v28 = a1 + 32;
        if (*(a1 + 279) < 0)
        {
          v28 = *v28;
        }

        v29 = *(a2 + 8);
        v30 = *(a1 + 13);
        *buf = 136446722;
        v83 = v28;
        v84 = 2050;
        v85 = v29;
        v86 = 2050;
        v87 = v30;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "#dPosIntg,id,%{public}s,feedDeltaPosition,mct,%{public}.3f,received IO sample non-static flag,accumStaticPeriods_s,%{public}.3f", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4770 != -1)
        {
          sub_1018D5484();
        }

        v54 = a1 + 32;
        if (*(a1 + 279) < 0)
        {
          v54 = *v54;
        }

        v55 = *(a2 + 8);
        v56 = *(a1 + 13);
        v76 = 136446722;
        v77 = v54;
        v78 = 2050;
        v79 = v55;
        v80 = 2050;
        v81 = v56;
        LODWORD(v72) = 32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#dPosIntg,id,%{public}s,feedDeltaPosition,mct,%{public}.3f,received IO sample non-static flag,accumStaticPeriods_s,%{public}.3f", &v76, v72);
        v58 = v57;
        sub_100152C7C("Generic", 1, 0, 2, "void cllcf::DeltaPositionIntegrator::feedDeltaPosition(const CLPIOSample &)", "%s\n", v57);
        if (v58 != buf)
        {
          free(v58);
        }
      }

      a1[14] = -1.0;
      v24 = *(a2 + 8);
    }

    v31 = a1 + 18;
    v32 = *(a1 + 18);
    v33 = *(a1 + 31);
    v34.f32[0] = *(a2 + 28) + *(a1 + 30);
    *(a1 + 30) = v34.i32[0];
    v35 = *(a2 + 32) + v33;
    *(a1 + 31) = v35;
    v36 = *(a2 + 36) + *(a1 + 32);
    *(a1 + 32) = v36;
    v37 = *(a2 + 24);
    v38 = a1[2];
    v39 = v38 >= v24 || v38 <= 0.0;
    v40 = v24 - v38;
    if (v39)
    {
      v40 = v37;
    }

    a1[2] = v24;
    v41 = a1[22] + v40;
    a1[22] = v41;
    v42 = vmlaq_n_f64(v32, xmmword_101C7FE20, (v37 * v37));
    *v31 = v42;
    if (*(a2 + 104) == 8 && (v43 = a1[3], v43 > 0.0) && (v44 = a1[5], v44 >= 0.0))
    {
      a1[4] = vabdd_f64(v24, v43);
      v74 = v34.i32[0];
      v75 = v42;
      v73 = v35;
      v48 = v44 + hypotf(*(a2 + 28), *(a2 + 32));
      v49 = tan(sqrtf(*(a2 + 72)));
      v35 = v73;
      v34.i32[0] = v74;
      v42.f64[1] = v75.f64[1];
      v50 = v48 * v49;
      a1[6] = v50;
      v51 = -(v48 - v48 * sqrtf(*(a2 + 80)));
      a1[7] = fabs(v51);
      a1[5] = v48;
      v52 = v50 * v50;
      v53 = (v50 + v50) * (v50 + v50);
      if (!*(a1 + 72))
      {
        v53 = v52;
      }

      v45 = v51 * v51 + v75.f64[0] + v53;
      a1[18] = v45;
    }

    else
    {
      v45 = v42.f64[0];
    }

    v46 = a1[31];
    if (v46 > 0.0 && v41 >= v46)
    {
      a1[23] = v41 + a1[23];
      v34.f32[1] = v35;
      *(a1 + 132) = vadd_f32(v34, *(a1 + 132));
      *(a1 + 35) = v36 + *(a1 + 35);
      v42.f64[0] = v45;
      *(a1 + 10) = vaddq_f64(v42, *(a1 + 20));
      a1[15] = 0.0;
      *(a1 + 32) = 0;
      a1[22] = 0.0;
      *v31 = 0.0;
      a1[19] = 0.0;
    }

    v47 = *(a2 + 36);
    a1[24] = *(a2 + 28);
    *(a1 + 50) = v47;
    ++*(a1 + 10);
  }
}

void sub_100123E6C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100123E78(uint64_t a1, uint64_t a2, double a3)
{
  if ((*(a2 + 110) & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 360);
  if (v7 >= 0.0)
  {
    *(a1 + 352) = v7;
  }

  if (a3 >= 0.5 && (v8 = *(a2 + 28), fabsf(v8) >= 0.005) && (v9 = *(a2 + 32), fabsf(v9) >= 0.005))
  {
    v14 = atan2f(*(a2 + 32), *(a2 + 28));
    if (v14 >= 0.0)
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 + 6.28318531;
    }

    v16 = 6.28318531 - v15;
    if (v16 < 0.0 || v16 >= 6.28318531)
    {
      v16 = fmod(v16, 6.28318531);
      if (v16 < 0.0)
      {
        v16 = v16 + 6.28318531;
      }
    }

    *(a1 + 360) = v16;
    v17 = -v8 / (a3 * a3) * (-v8 / (a3 * a3)) * (*(a2 + 24) * 0.09) + v9 / (a3 * a3) * (v9 / (a3 * a3)) * (*(a2 + 24) * 0.09);
    *(a1 + 368) = v17;
    if (v17 < 0.0)
    {
      *(a1 + 368) = qword_101C7FE50[*(a2 + 104) == 1];
    }

    if (qword_1025D4770 != -1)
    {
      sub_10025BA60();
    }

    v18 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a2 + 8);
      v20 = *(a2 + 104);
      v21 = *(a1 + 344);
      v22 = *(a1 + 368);
      v23 = *(a1 + 360) * 57.2957795;
      *buf = 134350848;
      v24 = *(a2 + 28);
      v25 = *(a2 + 32);
      v49 = v19;
      v50 = 1026;
      *v51 = v20;
      *&v51[4] = 2050;
      *&v51[6] = a3;
      *&v51[14] = 2050;
      *&v51[16] = v21;
      *&v51[24] = 2050;
      *&v51[26] = v23;
      *&v51[34] = 2050;
      *&v51[36] = sqrt(v22) * 57.2957795;
      v52 = 2050;
      v53 = v24;
      v54 = 2050;
      v55 = v25;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "InertialOdometry,PDR,estimated course,sample mct,%{public}.3f,RefF,%{public}d,GDistanceMoved_m,%{public}.3f,GSpeed_mps,%{public}.3f,Course_deg,%{public}.1f,CourseStdv_deg,%{public}.1f,dPosX,%{public}+.3f,dPosY,%{public}+.3f", buf, 0x4Eu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D54AC(buf);
      v31 = *(a2 + 8);
      v32 = *(a2 + 104);
      v33 = *(a1 + 344);
      v34 = *(a1 + 368);
      v35 = *(a1 + 360) * 57.2957795;
      v40 = 134350848;
      v36 = *(a2 + 28);
      v37 = *(a2 + 32);
      v41 = v31;
      v42 = 1026;
      *v43 = v32;
      *&v43[4] = 2050;
      *&v43[6] = a3;
      *&v43[14] = 2050;
      *&v43[16] = v33;
      *&v43[24] = 2050;
      *&v43[26] = v35;
      *&v43[34] = 2050;
      *&v43[36] = sqrt(v34) * 57.2957795;
      v44 = 2050;
      v45 = v36;
      v46 = 2050;
      v47 = v37;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "InertialOdometry,PDR,estimated course,sample mct,%{public}.3f,RefF,%{public}d,GDistanceMoved_m,%{public}.3f,GSpeed_mps,%{public}.3f,Course_deg,%{public}.1f,CourseStdv_deg,%{public}.1f,dPosX,%{public}+.3f,dPosY,%{public}+.3f", &v40, 78);
      v39 = v38;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::estimateCourseOverGroundPDR(const CLPIOSample &, const double)", "%s\n", v38);
      if (v39 != buf)
      {
        free(v39);
      }
    }

    return 1;
  }

  else
  {
    *(a1 + 360) = 0xBFF0000000000000;
    if (qword_1025D4770 != -1)
    {
      sub_10025BA60();
    }

    v10 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a2 + 8);
      v12 = *(a2 + 28);
      v13 = *(a2 + 32);
      *buf = 134350080;
      v49 = v11;
      v50 = 2050;
      *v51 = a3;
      *&v51[8] = 2050;
      *&v51[10] = 0x3FE0000000000000;
      *&v51[18] = 2050;
      *&v51[20] = v12;
      *&v51[28] = 2050;
      *&v51[30] = v13;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "InertialOdometry,PDR,cannot compute course,sample mct,%{public}.3f,GDistanceMoved,%{public}.3f,threshold,%{public}.3f,dPosX,%{public}+.3f,dPosY,%{public}+.3f", buf, 0x34u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018D54AC(buf);
      v26 = *(a2 + 8);
      v27 = *(a2 + 28);
      v28 = *(a2 + 32);
      v40 = 134350080;
      v41 = v26;
      v42 = 2050;
      *v43 = a3;
      *&v43[8] = 2050;
      *&v43[10] = 0x3FE0000000000000;
      *&v43[18] = 2050;
      *&v43[20] = v27;
      *&v43[28] = 2050;
      *&v43[30] = v28;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "InertialOdometry,PDR,cannot compute course,sample mct,%{public}.3f,GDistanceMoved,%{public}.3f,threshold,%{public}.3f,dPosX,%{public}+.3f,dPosY,%{public}+.3f", &v40, 52);
      v30 = v29;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionInertialOdometry::estimateCourseOverGroundPDR(const CLPIOSample &, const double)", "%s\n", v29);
      if (v30 != buf)
      {
        free(v30);
      }

      return 0;
    }
  }

  return result;
}

void sub_100124388(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_100124394(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __asm { FMOV            V1.2D, #-1.0 }

  *a2 = xmmword_101C75BF0;
  *(a2 + 16) = _Q1;
  *(a2 + 32) = 0xBFF0000000000000;
  v8 = *(a1 + 344);
  if (v8 >= 0.0)
  {
    *a2 = *(a1 + 8);
    *(a2 + 8) = v8;
    *(a2 + 16) = 0x3FC70A3D70A3D70ALL;
    v9 = *(a1 + 360);
    if (v9 <= -1.0)
    {
      v9 = *(a1 + 352);
    }

    v10 = *(a1 + 368);
    if (v10 >= 0.069)
    {
      v11 = *(a1 + 368);
    }

    else
    {
      v11 = 0.069;
    }

    *(a2 + 24) = v9;
    *(a2 + 32) = v11;
    if (*a1 == 1)
    {
      v12 = (a1 + 368);
      if (v10 < 9.8696044)
      {
        v12 = &unk_101C7FEC0;
      }

      v13 = *v12;
      goto LABEL_11;
    }

    if (*(a1 + 40) > 0.0)
    {
      v14 = *(a1 + 56);
      if (v14 >= 0.0)
      {
        v15 = *(a1 + 48);
        v16 = *(a1 + 72);
        v17 = *(a1 + 80);
        if (v17 > 0.616850275 && v14 > 5.0)
        {
          if (v11 >= v17)
          {
            v13 = v11;
          }

          else
          {
            v13 = *(a1 + 80);
          }

LABEL_11:
          *(a2 + 32) = v13;
          return;
        }

        if (*(a1 + 608) == 1)
        {
          v18 = atan2(*(a1 + 64), v14);
          *(a2 + 32) = v11 + v18 * v18;
          v19 = 1.0;
          if (v15 > 0.0)
          {
            v19 = v15;
          }

          *(a2 + 16) = v16 / v19 * (v16 / v19) + 0.18;
        }
      }
    }
  }
}

unint64_t sub_1001244F0(int64x2_t *a1, void *a2, uint64_t a3, char *a4, char *a5, unint64_t a6)
{
  v6 = a6;
  v10 = a1[2].u64[0];
  v11 = v10 / 0x24;
  v12 = a1->i64[1];
  v13 = a1[1].i64[0];
  v14 = (v12 + 8 * (v10 / 0x24));
  if (v13 == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v14 + 112 * (v10 % 0x24);
  }

  if (a3 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 36 * (a2 - v14) + 0x6DB6DB6DB6DB6DB7 * ((a3 - *a2) >> 4) - 0x6DB6DB6DB6DB6DB7 * ((v15 - *v14) >> 4);
  }

  v17 = a1[2].i64[1];
  if (v16 >= v17 - v16)
  {
    v20 = 36 * ((v13 - v12) >> 3) - 1;
    if (v13 == v12)
    {
      v20 = 0;
    }

    v21 = v10 + v17;
    v22 = v20 - v21;
    if (a6 > v22)
    {
      sub_100931C4C(a1, a6 - v22);
      v17 = a1[2].i64[1];
      v12 = a1->i64[1];
      v13 = a1[1].i64[0];
      v21 = a1[2].i64[0] + v17;
    }

    v23 = (v12 + 8 * (v21 / 0x24));
    if (v13 == v12)
    {
      v24 = 0;
    }

    else
    {
      v24 = (*v23 + 112 * (v21 % 0x24));
    }

    v28 = v17 - v16;
    if (v6 <= v17 - v16)
    {
      v30 = v24;
      v31 = (v12 + 8 * (v21 / 0x24));
      if (!v6)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v29 = &a5[-112 * (v6 - (v17 - v16))];
      if (v28 < v6 >> 1)
      {
        v29 = &a4[112 * v28];
      }

      if (v29 == a5)
      {
        v30 = v24;
        v31 = v23;
      }

      else
      {
        v50 = v29;
        v31 = v23;
        v30 = v24;
        do
        {
          v51 = *v50;
          v52 = *(v50 + 2);
          v30[1] = *(v50 + 1);
          v30[2] = v52;
          *v30 = v51;
          v53 = *(v50 + 3);
          v54 = *(v50 + 4);
          v55 = *(v50 + 6);
          v30[5] = *(v50 + 5);
          v30[6] = v55;
          v30[3] = v53;
          v30[4] = v54;
          v30 += 7;
          if ((v30 - *v31) == 4032)
          {
            v56 = *(v31 + 1);
            v31 += 8;
            v30 = v56;
          }

          v50 += 112;
          ++a1[2].i64[1];
        }

        while (v50 != a5);
      }

      a5 = v29;
      v6 = v17 - v16;
      if (!v28)
      {
        goto LABEL_64;
      }
    }

    v72.n128_u64[0] = v23;
    v72.n128_u64[1] = v24;
    sub_100124A54(&v72, -v6);
    v57 = v72;
    if (v72.n128_u64[1] != v24)
    {
      v59 = v72.n128_u64[1];
      v58 = v72.n128_u64[0];
      do
      {
        v60 = *v59;
        v61 = v59[2];
        v30[1] = v59[1];
        v30[2] = v61;
        *v30 = v60;
        v62 = v59[3];
        v63 = v59[4];
        v64 = v59[6];
        v30[5] = v59[5];
        v30[6] = v64;
        v30[3] = v62;
        v30[4] = v63;
        v30 += 7;
        if ((v30 - *v31) == 4032)
        {
          v65 = *(v31 + 1);
          v31 += 8;
          v30 = v65;
        }

        v59 += 7;
        if ((v59 - *v58) == 4032)
        {
          v66 = v58[1];
          ++v58;
          v59 = v66;
        }

        ++a1[2].i64[1];
      }

      while (v59 != v24);
    }

    if (v6 < v28)
    {
      v72.n128_u64[0] = v23;
      v72.n128_u64[1] = v24;
      sub_100124A54(&v72, -v28);
      sub_100932124(v72.n128_u64[0], v72.n128_u64[1], v57.n128_u64[0], v57.n128_u64[1], v23, v24, &v72);
      v23 = v73;
      v24 = v74;
    }

    sub_1009321F4(a4, a5, v23, v24, &v72);
    goto LABEL_64;
  }

  if (a6 > v10)
  {
    sub_1009318EC(a1, a6 - v10);
    v10 = a1[2].u64[0];
    v12 = a1->i64[1];
    v13 = a1[1].i64[0];
    v11 = v10 / 0x24;
  }

  v18 = (v12 + 8 * v11);
  if (v13 == v12)
  {
    v19 = 0;
  }

  else
  {
    v19 = *v18 + 112 * (v10 % 0x24);
  }

  if (v6 <= v16)
  {
    v26 = v19;
    v27 = (v12 + 8 * v11);
    if (!v6)
    {
      goto LABEL_64;
    }

    goto LABEL_39;
  }

  v25 = &a4[112 * (v6 - v16)];
  if (v16 < v6 >> 1)
  {
    v25 = &a5[-112 * v16];
  }

  if (v25 == a4)
  {
    v26 = v19;
    v27 = v18;
  }

  else
  {
    v32 = v25;
    v27 = v18;
    v26 = v19;
    do
    {
      if (v26 == *v27)
      {
        v33 = *--v27;
        v26 = (v33 + 4032);
      }

      v34 = *(v32 - 7);
      v35 = *(v32 - 5);
      *(v26 - 6) = *(v32 - 6);
      *(v26 - 5) = v35;
      *(v26 - 7) = v34;
      v36 = *(v32 - 4);
      v37 = *(v32 - 3);
      v38 = *(v32 - 1);
      *(v26 - 2) = *(v32 - 2);
      *(v26 - 1) = v38;
      *(v26 - 4) = v36;
      *(v26 - 3) = v37;
      v26 -= 112;
      a1[2] = vaddq_s64(a1[2], xmmword_101C79510);
      v32 -= 112;
    }

    while (v32 != a4);
  }

  a4 = v25;
  v6 = v16;
  if (v16)
  {
LABEL_39:
    v72.n128_u64[0] = v18;
    v72.n128_u64[1] = v19;
    sub_100124A54(&v72, v6);
    v39 = v72;
    if (v72.n128_u64[1] != v19)
    {
      v41 = v72.n128_u64[1];
      v40 = v72.n128_u64[0];
      do
      {
        if (v26 == *v27)
        {
          v42 = *--v27;
          v26 = (v42 + 4032);
        }

        if (v41 == *v40)
        {
          v43 = *--v40;
          v41 = v43 + 4032;
        }

        v26 -= 112;
        v44 = *(v41 - 112);
        v45 = *(v41 - 80);
        *(v26 + 1) = *(v41 - 96);
        *(v26 + 2) = v45;
        *v26 = v44;
        v46 = *(v41 - 64);
        v47 = *(v41 - 48);
        v48 = *(v41 - 16);
        *(v26 + 5) = *(v41 - 32);
        *(v26 + 6) = v48;
        *(v26 + 3) = v46;
        *(v26 + 4) = v47;
        a1[2] = vaddq_s64(a1[2], xmmword_101C79510);
        v41 -= 112;
      }

      while (v41 != v19);
    }

    if (v6 < v16)
    {
      v72.n128_u64[0] = v18;
      v72.n128_u64[1] = v19;
      sub_100124A54(&v72, v16);
      v49 = v72;
      v72.n128_u64[0] = v18;
      v72.n128_u64[1] = v19;
      sub_100931F98(v39.n128_u64[0], v39.n128_u64[1], v49.n128_u64[0], v49.n128_u64[1], &v72);
      v19 = v72.n128_u64[1];
      v18 = v72.n128_u64[0];
    }

    sub_10093203C(&v72, a4, v19, a5, v18);
  }

LABEL_64:
  v67 = a1[2].u64[0];
  v68 = a1->i64[1];
  v69 = (v68 + 8 * (v67 / 0x24));
  if (a1[1].i64[0] == v68)
  {
    v70 = 0;
  }

  else
  {
    v70 = *v69 + 112 * (v67 % 0x24);
  }

  v72.n128_u64[0] = v69;
  v72.n128_u64[1] = v70;
  sub_100124A54(&v72, v16);
  return v72.n128_u64[0];
}

void *sub_100124A54(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 + 0x6DB6DB6DB6DB6DB7 * ((result[1] - **result) >> 4);
    if (v3 < 1)
    {
      v5 = 35 - v3;
      v6 = &v2[-(v5 / 0x24)];
      *result = v6;
      v4 = *v6 + 112 * (36 * (v5 / 0x24) - v5) + 3920;
    }

    else
    {
      *result = &v2[v3 / 0x24];
      v4 = v2[v3 / 0x24] + 112 * (v3 % 0x24);
    }

    result[1] = v4;
  }

  return result;
}

void sub_100124B08(uint64_t a1, uint64_t *a2, double a3, __n128 a4)
{
  sub_10011E08C(a1 + 600, a2, a3, a4);

  sub_100124B4C(a1 + 816, a2);
}

void sub_100124B4C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 21) == 1)
  {
    v2 = *a2;
    v3 = a2[1];
    if (*a2 != v3)
    {
      do
      {
        if ((*(v2 + 110) & 4) != 0 && !*(v2 + 105))
        {
          v5 = *(v2 + 64);
          if ((*(a1 + 20) & 1) == 0)
          {
            *(a1 + 36) = v5;
            *(a1 + 24) = *(v2 + 52);
            *(a1 + 32) = *(v2 + 60);
            *(a1 + 20) = 1;
            goto LABEL_25;
          }

          v6 = *(v2 + 52);
          v7 = *(v2 + 56);
          v9 = *(a1 + 24);
          v8 = *(a1 + 28);
          v10 = *(v2 + 60);
          v11 = *(a1 + 32);
          v12 = *(a1 + 36);
          if (qword_1025D4600 != -1)
          {
            sub_1002F97BC();
          }

          v13 = ((vabds_f32(v5, v12) + vabds_f32(v6, v9)) + vabds_f32(v7, v8)) + vabds_f32(v10, v11);
          v14 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            v15 = *(a1 + 40);
            v16 = *(a1 + 44);
            *buf = 134349568;
            v33 = v13;
            v34 = 1026;
            v35 = v15;
            v36 = 1026;
            v37 = v16;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#CLProactiveLocation,raw_turn_detect_value,%{public}0.6lf,consecutive_count_over,%{public}d,consecutive_count_under,%{public}d", buf, 0x18u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4600 != -1)
            {
              sub_1002F97BC();
            }

            v21 = *(a1 + 40);
            v22 = *(a1 + 44);
            v26 = 134349568;
            v27 = v13;
            v28 = 1026;
            v29 = v21;
            v30 = 1026;
            v31 = v22;
            LODWORD(v25) = 24;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "#CLProactiveLocation,raw_turn_detect_value,%{public}0.6lf,consecutive_count_over,%{public}d,consecutive_count_under,%{public}d", &v26, v25);
            v24 = v23;
            sub_100152C7C("Generic", 1, 0, 2, "void CLProactiveLocationTurnDetectorOverride::feedIOSamples(const std::vector<CLPIOSample> &)", "%s\n", v23);
            if (v24 != buf)
            {
              free(v24);
            }
          }

          if (v13 <= *(a1 + 4))
          {
            if (v13 >= *a1)
            {
              v17 = *(a1 + 40) + 1;
              *(a1 + 40) = v17;
              v18 = *(a1 + 72);
              if (v18 && v17 == *(a1 + 12))
              {
                (*(*v18 + 48))(v18);
              }
            }

            else
            {
              *(a1 + 40) = 0;
            }

            if (v13 <= *(a1 + 8))
            {
              v19 = *(a1 + 44) + 1;
              *(a1 + 44) = v19;
              v20 = *(a1 + 104);
              if (v20)
              {
                if (!(v19 % *(a1 + 16)))
                {
                  (*(*v20 + 48))(v20);
                }
              }
            }

            else
            {
              *(a1 + 44) = 0;
            }

            *(a1 + 24) = *(v2 + 52);
            goto LABEL_25;
          }
        }

        *(a1 + 20) = 0;
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        *(a1 + 24) = 0;
LABEL_25:
        v2 += 112;
      }

      while (v2 != v3);
    }
  }
}

void sub_100124EAC(uint64_t result, uint64_t *a2)
{
  if (*(result + 136) == 1)
  {
    v14 = 0.0;
    v3 = (result + 488);
    v4 = *a2;
    v5 = a2[1];
    if (*a2 != v5)
    {
      v6 = 0;
      v7 = *(result + 488) * *(result + 488);
      do
      {
        sub_100125068(result, v4, (result + 472), (result + 476), (result + 480), (result + 484), &v14);
        v6 |= v14 > v7;
        if (v14 > v7)
        {
          v7 = v14;
        }

        v4 += 112;
      }

      while (v4 != v5);
      if (v6)
      {
        *v3 = sqrtf(v7);
      }
    }

    if (*(result + 520) > 0.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018754D8();
      }

      v8 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(result + 472);
        v10 = *(result + 476);
        v11 = *(result + 480);
        v12 = *(result + 484);
        v13 = *(result + 488);
        *buf = 134350080;
        v16 = v9;
        v17 = 2050;
        v18 = v10;
        v19 = 2050;
        v20 = v11;
        v21 = 2050;
        v22 = v12;
        v23 = 2050;
        v24 = v13;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,io,cX,%{public}5.1f,cY,%{public}5.1f,cZ,%{public}5.1f,cU,%{public}5.1f,maxV,%{public}4.1lf", buf, 0x34u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018754EC();
      }
    }
  }
}

void sub_100125068(uint64_t a1, uint64_t a2, float *a3, float *a4, float *a5, float *a6, float *a7)
{
  v7 = *(a2 + 110);
  if (v7)
  {
    *a3 = *a3 + fabsf(*(a2 + 28));
    *a4 = *a4 + fabsf(*(a2 + 32));
    *a5 = *a5 + fabsf(*(a2 + 36));
  }

  else
  {
    v8 = *a6 + 0.185185185;
    *a6 = v8;
  }

  v9 = 0.0;
  if ((v7 & 2) != 0)
  {
    v9 = ((*(a2 + 44) * *(a2 + 44)) + (*(a2 + 40) * *(a2 + 40))) + (*(a2 + 48) * *(a2 + 48));
  }

  *a7 = v9;
}

BOOL sub_100125258(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  result = 0;
  if (v3 >= 0.0)
  {
    v4 = a3 >= 0.0 && v3 <= a2;
    v5 = !v4 || a2 - v3 <= a3;
    if (v5 && CLMotionActivity::isInVehicle((a1 + 40)) && ((CLMotionActivity::isVehicularHighConfidence((a1 + 40)) & 1) != 0 || *(a1 + 44) > 0))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1001252CC(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  if (v3 >= 0.0 && (a3 >= 0.0 ? (v5 = v3 <= a2) : (v5 = 0), v5 ? (v6 = a2 - v3 <= a3) : (v6 = 1), v6))
  {
    v4 = *(a1 + 88);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_100125300(uint64_t a1, double *a2)
{
  if (*(a1 + 24) == 1)
  {
    *a2 = *(a1 + 16) - *a1;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1019D1C88();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "TCONV,getMachContinuousToCFAbsoluteOffsetSec failed", v5, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019D1C9C();
    }
  }

  return *(a1 + 24);
}

BOOL sub_1001253BC(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  result = 0;
  if (v3 >= 0.0)
  {
    v4 = a3 >= 0.0 && v3 <= a2;
    v5 = !v4 || a2 - v3 <= a3;
    if (v5 && CLMotionActivity::isTypeStatic() && *(a1 + 44) > 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_100125424(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  if (v3 < 0.0)
  {
    return 0;
  }

  v5 = a3 >= 0.0 && v3 <= a2;
  if (v5 && a2 - v3 > a3)
  {
    return 0;
  }

  if (CLMotionActivity::isInVehicle((a1 + 40)))
  {
    v8 = (CLMotionActivity::isVehicularHighConfidence((a1 + 40)) & 1) != 0 || *(a1 + 44) > 0;
  }

  else
  {
    v8 = 0;
  }

  if (CLMotionActivity::isCycling((a1 + 40)))
  {
    v9 = *(a1 + 44) > 0;
  }

  else
  {
    v9 = 0;
  }

  if (v8 || v9 || (*(a1 + 88) & 1) != 0)
  {
    return 1;
  }

  return sub_1001254F8(a1);
}

double *sub_100125538(uint64_t a1, unsigned int a2, double a3)
{
  v6 = a2;
  v7 = &v6;
  result = sub_1000AE2AC(a1, &v6, &unk_101C66300, &v7);
  result[5] = a3;
  *(a1 + 24) = v6;
  return result;
}

BOOL sub_1001255A0(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  result = 0;
  if (v3 >= 0.0)
  {
    v4 = a3 >= 0.0 && v3 <= a2;
    v5 = !v4 || a2 - v3 <= a3;
    if (v5 && CLMotionActivity::isCycling((a1 + 40)) && *(a1 + 44) > 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_100125608(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  result = 0;
  if (v3 >= 0.0)
  {
    v4 = a3 >= 0.0 && v3 <= a2;
    v5 = !v4 || a2 - v3 <= a3;
    if (v5 && CLMotionActivity::isTypePedestrian() && *(a1 + 44) > 0)
    {
      return 1;
    }
  }

  return result;
}

void sub_100125678(uint64_t a1, int a2)
{
  if (*(a1 + 276) != 1)
  {
LABEL_4:
    if (a2 == 1)
    {
      [*(a1 + 264) startLeechingVisitsForClient:*(a1 + 256)];
    }

    else if (!a2)
    {
      [*(a1 + 264) startMonitoringVisitsForClient:*(a1 + 256)];
    }

    *(a1 + 272) = a2;
    *(a1 + 276) = 1;
    [objc_msgSend(*(a1 + 128) "vendor")];
    v4 = *(a1 + 64);
    if (v4)
    {
      objc_msgSend_clientName(v4);
    }

    else
    {
      v16 = 0;
      *__p = 0u;
      v15 = 0u;
      v12 = 0u;
      *v13 = 0u;
      v10 = 0u;
      *v11 = 0u;
      *v8 = 0u;
      *v9 = 0u;
      *v6 = 0u;
      v7 = 0u;
      *v5 = 0u;
    }

    sub_100043B98(v5);
  }

  if (*(a1 + 272) != a2)
  {
    sub_1000309A8(a1);
    goto LABEL_4;
  }
}

uint64_t sub_10012585C(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_28;
  }

  if (*(a1 + 36))
  {
    v5 = *(a1 + 8);
    if (!v5)
    {
      v5 = *(qword_102639C88 + 8);
    }

    v6 = sub_101236020(v5, a2);
    v7 = v6;
    if (v6 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
    }

    else
    {
      v8 = 1;
    }

    v4 = (v7 + v8 + 1);
    v3 = *(a1 + 36);
    if ((v3 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = 0;
  if ((*(a1 + 36) & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = *(qword_102639C88 + 16);
    }

    v10 = sub_10123906C(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
    v3 = *(a1 + 36);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(a1 + 24);
    v14 = *(v13 + 23);
    v15 = v14;
    v16 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v17 = *(v13 + 23);
    }

    else
    {
      v17 = v16;
    }

    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2);
      v14 = *(v13 + 23);
      v16 = *(v13 + 8);
      v15 = *(v13 + 23);
    }

    else
    {
      v18 = 1;
    }

    if (v15 < 0)
    {
      v14 = v16;
    }

    v4 = (v4 + v18 + v14 + 1);
  }

LABEL_28:
  *(a1 + 32) = v4;
  return v4;
}

BOOL sub_100125988(uint64_t a1)
{
  v1 = **(a1 + 32);
  v2 = (*(*v1 + 32))(v1);
  v3 = v1[1];

  return sub_1001752AC(v3, v2);
}

uint64_t sub_1001259EC(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10168BBC0();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v3 = (*(*a1 + 16))(a1);
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2082;
    v9 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#tt, timer event, state:%{public, location:escape_only}s}", v5, 0x1Cu);
  }

  *(a1 + 16) = 1;
  *(*(a1 + 8) + 80) = 0;
  sub_100175108(a1);
  return *(***(a1 + 8) - 8);
}

void sub_100125B1C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_10038694C(exception, a1);
}

void sub_100125B78(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_1025D4790 != -1)
  {
    sub_10192F910();
  }

  v3 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v7[0] = 68289282;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2114;
    v11 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:stopped receiving location information, client:%{public, location:escape_only}@}", v7, 0x1Cu);
  }

  dispatch_source_cancel([*(v2 + 416) objectForKeyedSubscript:*(a1 + 32)]);
  [*(v2 + 416) removeObjectForKey:*(a1 + 32)];
  [objc_msgSend(*(v2 + 456) objectForKeyedSubscript:{*(a1 + 32)), "end"}];
  [*(v2 + 456) setObject:0 forKeyedSubscript:*(a1 + 32)];
  v5 = *(a1 + 32);
  Current = CFAbsoluteTimeGetCurrent();
  sub_10002FE04(v2, Current, v5, 0xAuLL, 0, 0, 0);
  sub_1000ED87C(v2, *(v2 + 504), (v2 + 464), *(a1 + 32));
}

void sub_100125CD4(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(a1 + 72) == 1)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v3 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v9 = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = v4;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SystemStatusAttribution Attribution timer fired, Client:%{public, location:escape_only}@, Record:%{public, location:escape_only}@}", &v9, 0x26u);
    }
  }

  sub_100125EAC(v2, *(a1 + 48), [*(a1 + 40) attributionIdentifier], 0);
  if (![*(a1 + 40) totalAttributionCount])
  {
    [objc_msgSend(*(a1 + 40) "attributionTimer")];
    [*(a1 + 56) removeObjectForKey:*(a1 + 32)];
    if (*(a1 + 72) == 1)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v6 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(a1 + 32);
        v8 = *(a1 + 40);
        v9 = 68289538;
        v10 = 0;
        v11 = 2082;
        v12 = "";
        v13 = 2114;
        v14 = v7;
        v15 = 2114;
        v16 = v8;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SystemStatusAttribution No subscriptions remaining; removing AttributionRecord for client, Client:%{public, location:escape_only}@, Record:%{public, location:escape_only}@}", &v9, 0x26u);
      }
    }
  }
}

void sub_100125EAC(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = sub_10001A3E8(a1, a2);
  if (sub_1000F4760(v8, v9))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      v11 = [+[NSUUID UUID](NSUUID UUIDString];
      *buf = 68289794;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2114;
      v21 = a2;
      v22 = 2114;
      v23 = a3;
      v24 = 2082;
      v25 = [(NSString *)v11 UTF8String];
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#SystemStatus Publishing receiving location interval end, Client:%{public, location:escape_only}@, AttributionIdentifier:%{public, location:escape_only}@, MessageUUID:%{public, location:escape_only}s}", buf, 0x30u);
    }

    else
    {
      v11 = 0;
    }

    v12 = *(a1 + 424);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001260A4;
    v14[3] = &unk_10246FEA8;
    v14[4] = a3;
    v15 = a4;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10077B190;
    v13[3] = &unk_102447418;
    v13[4] = v11;
    [v12 updateVolatileData:v14 completion:v13];
    if (_os_feature_enabled_impl())
    {
      sub_1000ED87C(a1, *(a1 + 568), (a1 + 528), a2);
    }
  }
}

void sub_1001260A4(uint64_t a1, void *a2, void *a3)
{
  if ([objc_msgSend(a2 "attributions")])
  {
    [a2 removeAttribution:*(a1 + 32)];
    [a3 setUserInitiated:*(a1 + 40)];
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v6 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v7 = *(a1 + 32);
      v14 = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#SystemStatus removing attribution that doesn't exist!, AttributionIdentifier:%{public, location:escape_only}@}", &v14, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v8 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v9 = *(a1 + 32);
      v14 = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v9;
      _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#SystemStatus removing attribution that doesn't exist!", "{msg%{public}.0s:#SystemStatus removing attribution that doesn't exist!, AttributionIdentifier:%{public, location:escape_only}@}", &v14, 0x1Cu);
    }
  }

  if ([objc_msgSend(a2 "attributions")])
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10192D4D0();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v11 = *(a1 + 32);
      v14 = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#SystemStatus removed attribution but it still exists!, AttributionIdentifier:%{public, location:escape_only}@}", &v14, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v12 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v13 = *(a1 + 32);
      v14 = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v13;
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#SystemStatus removed attribution but it still exists!", "{msg%{public}.0s:#SystemStatus removed attribution but it still exists!, AttributionIdentifier:%{public, location:escape_only}@}", &v14, 0x1Cu);
    }
  }
}

void sub_100126380(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_1018B4480();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "#CLGNSSStateQueryAssertion,bbGnssStatusQueryReportingTimeout", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018B4494();
  }

  sub_10011E75C(a1, (a1 + 24));
}

void sub_100126424(unsigned __int8 *a1)
{
  v2 = sub_100126B4C(a1);
  v3 = sub_1001278E0(a1);
  v5 = sub_100126564(a1, v4);
  v6 = 0x10000;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = 256;
  if (!v3)
  {
    v7 = 0;
  }

  sub_100128330(a1, v7 | v2 | v6);
  if (qword_1025D4340 != -1)
  {
    sub_101BB96A4();
  }

  v8 = qword_1025D4348;
  if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
  {
    v9 = a1[616];
    v10[0] = 67109120;
    v10[1] = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "timeout fClientArmedRemotely %d", v10, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101BB9AC0(a1);
  }

  if (a1[616])
  {
    sub_1013281EC(a1);
  }
}

uint64_t sub_100126564(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((*(a1 + 317) & 1) == 0)
  {
    if (qword_102665708 != -1)
    {
      sub_101BBC244();
    }

    if (qword_102665710)
    {
      *(v2 + 317) = off_1026346A0();
      if (qword_1025D4550 != -1)
      {
        sub_101BB996C();
      }

      v3 = qword_1025D4558;
      if (os_log_type_enabled(qword_1025D4558, OS_LOG_TYPE_DEBUG))
      {
        v4 = *(v2 + 317);
        *buf = 67109120;
        v45 = v4;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "uncached activated state %d", buf, 8u);
      }

      a1 = sub_10000A100(121, 2);
      if (a1)
      {
        sub_101BBC36C((v2 + 317));
      }
    }
  }

  *buf = 0;
  v5 = sub_1000206B4(a1, a2);
  sub_10005BBE4(v5, "CLIgneousArmMinutes", buf);
  v6 = 0;
  v7 = *buf;
  if ((*(v2 + 313) & 1) == 0)
  {
    v6 = *(v2 + 317);
  }

  sub_100127D64(v2);
  v8 = (v6 & *(v2 + 318));
  sub_100127E1C(v2);
  v9 = sub_1001282B4(v2);
  LOBYTE(v29[0]) = 0;
  sub_100126E84(buf, "IgneousForceInRandomArmSession", v29, 0);
  v10 = v9 | buf[1];
  v12 = v7 > 0 && v8 != 0;
  if ((v9 | buf[1]))
  {
    v13 = 1;
  }

  else
  {
    v13 = *(v2 + 314);
  }

  v14 = v12 & v13;
  LOBYTE(v29[0]) = 0;
  sub_100126E84(buf, "IgneousForceOn", v29, 0);
  v15 = buf[1];
  if (qword_1025D4550 != -1)
  {
    sub_101BB9A5C();
  }

  v16 = v14 | v15;
  v17 = qword_1025D4558;
  if (os_log_type_enabled(qword_1025D4558, OS_LOG_TYPE_INFO))
  {
    v18 = *(v2 + 313);
    v19 = *(v2 + 317);
    v20 = *(v2 + 314);
    v21 = *(v2 + 318);
    *buf = 67241984;
    v45 = v16 & 1;
    v46 = 1026;
    v47 = 1;
    v48 = 1026;
    v49 = v18;
    v50 = 1026;
    v51 = v19;
    v52 = 1026;
    v53 = v20;
    v54 = 1026;
    v55 = v10 & 1;
    v56 = 1026;
    v57 = v7;
    v58 = 1026;
    v59 = v21;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "shouldEnableIgneous, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u", buf, 0x32u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4550 != -1)
    {
      sub_101BB9A5C();
    }

    v23 = *(v2 + 313);
    v24 = *(v2 + 317);
    v25 = *(v2 + 314);
    v26 = *(v2 + 318);
    v29[0] = 67241984;
    v29[1] = v16 & 1;
    v30 = 1026;
    v31 = 1;
    v32 = 1026;
    v33 = v23;
    v34 = 1026;
    v35 = v24;
    v36 = 1026;
    v37 = v25;
    v38 = 1026;
    v39 = v10 & 1;
    v40 = 1026;
    v41 = v7;
    v42 = 1026;
    v43 = v26;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4558, 1, "shouldEnableIgneous, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u", v29, 50);
    v28 = v27;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLKappaNotifier::shouldEnableIgneous()", "%s\n", v27);
    if (v28 != buf)
    {
      free(v28);
    }
  }

  return v16 & 1;
}

uint64_t sub_100126928(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100546628(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_1003C9358(&v6, v3);
  }

  return v2;
}

uint64_t sub_1001269E8(uint64_t a1, char *__s, void *a3)
{
  v5 = strlen(__s);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v9 = v5;
  if (v5)
  {
    memcpy(&__dst, __s, v5);
  }

  *(&__dst + v6) = 0;
  CLConnectionMessage::CLConnectionMessage();
  if (v9 < 0)
  {
    operator delete(__dst);
  }

  return a1;
}

void sub_100126ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100126AE8(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_1001269E8((a1 + 3), a2, a3);
  return a1;
}

uint64_t sub_100126B4C(_BYTE *a1)
{
  v2 = +[SOSUtilities kappaTriggersEmergencySOS];
  if (+[SOSUtilities getKappaThirdPartyDisplayNameForApp])
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if ((a1[317] & 1) == 0)
  {
    if (qword_102665708 != -1)
    {
      sub_101BBC244();
    }

    if (qword_102665710)
    {
      a1[317] = off_1026346A0();
      if (qword_1025D4340 != -1)
      {
        sub_101BB96A4();
      }

      v4 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
      {
        v5 = a1[317];
        *buf = 67109120;
        v33 = v5;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "uncached activated state %d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BBC258(a1 + 317);
        if (v3)
        {
          goto LABEL_14;
        }

LABEL_17:
        v6 = 0;
        goto LABEL_18;
      }
    }
  }

  if (!v3)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (a1[313] & 1) != 0 || (a1[315] & 1) != 0 || (a1[316])
  {
    goto LABEL_17;
  }

  v6 = a1[317];
LABEL_18:
  LOBYTE(v21[0]) = 0;
  sub_100126E84(buf, "KappaForceOn", v21, 0);
  v7 = buf[1];
  if (qword_1025D4340 != -1)
  {
    sub_101BB9C9C();
  }

  v8 = v6 | v7;
  v9 = qword_1025D4348;
  if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_INFO))
  {
    v10 = a1[313];
    v11 = a1[315];
    v12 = a1[316];
    v13 = a1[317];
    *buf = 67241472;
    v33 = v8;
    v34 = 1026;
    v35 = v3;
    v36 = 1026;
    v37 = v10;
    v38 = 1026;
    v39 = v11;
    v40 = 1026;
    v41 = v12;
    v42 = 1026;
    v43 = v13;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "shouldEnableKappa, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4340 != -1)
    {
      sub_101BB9C9C();
    }

    v15 = a1[313];
    v16 = a1[315];
    v17 = a1[316];
    v18 = a1[317];
    v21[0] = 67241472;
    v21[1] = v8;
    v22 = 1026;
    v23 = v3;
    v24 = 1026;
    v25 = v15;
    v26 = 1026;
    v27 = v16;
    v28 = 1026;
    v29 = v17;
    v30 = 1026;
    v31 = v18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4348, 1, "shouldEnableKappa, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u", v21, 38);
    v20 = v19;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLKappaNotifier::shouldEnableKappa()", "%s\n", v19);
    if (v20 != buf)
    {
      free(v20);
    }
  }

  return v8;
}

unsigned __int8 *sub_100126E84(unsigned __int8 *a1, const char *a2, unsigned __int8 *a3, unsigned __int8 a4)
{
  *a1 = 0;
  a1[1] = *a3;
  v6 = (a1 + 1);
  a1[2] = a4;
  v7 = sub_100011660(a1, a2);
  sub_100185AC0(v7, buf);
  *a1 = sub_10001CB4C(*buf, a2, v6, 0xFFFFFFFFLL);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  sub_10003848C(v41);
  std::ostream::operator<<();
  if ((a1[2] & 1) == 0)
  {
    if (*a1)
    {
      if (qword_1025D4200 != -1)
      {
        dispatch_once(&qword_1025D4200, &stru_102503608);
      }

      v13 = qword_1025D4208;
      if (!os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_53;
      }

      v14 = *a1;
      if ((v51 & 0x10) != 0)
      {
        v23 = v50;
        if (v50 < v47)
        {
          v50 = v47;
          v23 = v47;
        }

        v24 = __src;
      }

      else
      {
        if ((v51 & 8) == 0)
        {
          v15 = 0;
          BYTE3(v56) = 0;
LABEL_49:
          __dst[v15] = 0;
          v27 = __dst;
          if (SBYTE3(v56) < 0)
          {
            v27 = *__dst;
          }

          *buf = 136315650;
          *&buf[4] = a2;
          *&buf[12] = 1024;
          *&buf[14] = v14;
          v58 = 2080;
          v59 = v27;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "motion default,%s,set,%d,value,%s", buf, 0x1Cu);
          if (SBYTE3(v56) < 0)
          {
            operator delete(*__dst);
          }

LABEL_53:
          if (!sub_10000A100(121, 2))
          {
            goto LABEL_74;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1025D4200 != -1)
          {
            dispatch_once(&qword_1025D4200, &stru_102503608);
          }

          v28 = qword_1025D4208;
          v29 = *a1;
          sub_10003DD04(&v42, __p);
          if (v40 >= 0)
          {
            v30 = __p;
          }

          else
          {
            v30 = __p[0];
          }

          *__dst = 136315650;
          *&__dst[4] = a2;
          v53 = 1024;
          v54 = v29;
          v55 = 2080;
          v56 = v30;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v28, 0, "motion default,%s,set,%d,value,%s", __dst, 28, __p[0]);
          v12 = v31;
          if (v40 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_84;
        }

        v24 = v44;
        v23 = v45;
      }

      v15 = v23 - v24;
      if (v23 - v24 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_100061080();
      }

      if (v15 >= 0x17)
      {
        operator new();
      }

      BYTE3(v56) = v23 - v24;
      if (v15)
      {
        memmove(__dst, v24, v15);
      }

      goto LABEL_49;
    }

    if (qword_1025D4200 != -1)
    {
      dispatch_once(&qword_1025D4200, &stru_102503608);
    }

    v20 = qword_1025D4208;
    if (!os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
LABEL_73:
      if (!sub_10000A100(121, 2))
      {
        goto LABEL_74;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4200 != -1)
      {
        dispatch_once(&qword_1025D4200, &stru_102503608);
      }

      v35 = qword_1025D4208;
      v36 = *a1;
      sub_10003DD04(&v42, __p);
      if (v40 >= 0)
      {
        v37 = __p;
      }

      else
      {
        v37 = __p[0];
      }

      *__dst = 136315650;
      *&__dst[4] = a2;
      v53 = 1024;
      v54 = v36;
      v55 = 2080;
      v56 = v37;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v35, 1, "motion default,%s,set,%d,value,%s", __dst, 28, __p[0]);
      v12 = v38;
      if (v40 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_84:
      sub_100152C7C("Generic", 1, 0, 2, "CLMotionDefaultsWrite<BOOL>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = BOOL]", "%s\n", v12);
      if (v12 == buf)
      {
        goto LABEL_74;
      }

      goto LABEL_85;
    }

    v21 = *a1;
    if ((v51 & 0x10) != 0)
    {
      v25 = v50;
      if (v50 < v47)
      {
        v50 = v47;
        v25 = v47;
      }

      v26 = __src;
    }

    else
    {
      if ((v51 & 8) == 0)
      {
        v22 = 0;
        BYTE3(v56) = 0;
LABEL_69:
        __dst[v22] = 0;
        v32 = __dst;
        if (SBYTE3(v56) < 0)
        {
          v32 = *__dst;
        }

        *buf = 136315650;
        *&buf[4] = a2;
        *&buf[12] = 1024;
        *&buf[14] = v21;
        v58 = 2080;
        v59 = v32;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "motion default,%s,set,%d,value,%s", buf, 0x1Cu);
        if (SBYTE3(v56) < 0)
        {
          operator delete(*__dst);
        }

        goto LABEL_73;
      }

      v26 = v44;
      v25 = v45;
    }

    v22 = v25 - v26;
    if (v25 - v26 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    BYTE3(v56) = v25 - v26;
    if (v22)
    {
      memmove(__dst, v26, v22);
    }

    goto LABEL_69;
  }

  if (*a1)
  {
    if (qword_1025D4200 != -1)
    {
      dispatch_once(&qword_1025D4200, &stru_102503608);
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *a1;
      *buf = 136315394;
      *&buf[4] = a2;
      *&buf[12] = 1024;
      *&buf[14] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "motion default,%s,set,%d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4200 != -1)
      {
        dispatch_once(&qword_1025D4200, &stru_102503608);
      }

      v10 = *a1;
      *__dst = 136315394;
      *&__dst[4] = a2;
      v53 = 1024;
      v54 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 0, "motion default,%s,set,%d", __dst, 18);
      v12 = v11;
      sub_100152C7C("Generic", 1, 0, 2, "CLMotionDefaultsWrite<BOOL>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = BOOL]", "%s\n", v11);
      goto LABEL_28;
    }
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      dispatch_once(&qword_1025D4200, &stru_102503608);
    }

    v16 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      v17 = *a1;
      *buf = 136315394;
      *&buf[4] = a2;
      *&buf[12] = 1024;
      *&buf[14] = v17;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "motion default,%s,set,%d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4200 != -1)
      {
        dispatch_once(&qword_1025D4200, &stru_102503608);
      }

      v18 = *a1;
      *__dst = 136315394;
      *&__dst[4] = a2;
      v53 = 1024;
      v54 = v18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 1, "motion default,%s,set,%d", __dst, 18);
      v12 = v19;
      sub_100152C7C("Generic", 1, 0, 2, "CLMotionDefaultsWrite<BOOL>::CLMotionDefaultsWrite(const char *, const T &, const BOOL) [T = BOOL]", "%s\n", v19);
LABEL_28:
      if (v12 == buf)
      {
        goto LABEL_74;
      }

LABEL_85:
      free(v12);
    }
  }

LABEL_74:
  v41[2] = v33;
  if (v49 < 0)
  {
    operator delete(v48);
  }

  std::locale::~locale(&v43);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

void sub_10012787C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001278E0(_BYTE *a1)
{
  v2 = (+[SOSUtilities kappaTriggersEmergencySOS](SOSUtilities, "kappaTriggersEmergencySOS") & 1) != 0 || +[SOSUtilities getKappaThirdPartyDisplayNameForApp]!= 0;
  v3 = sub_10004FD18();
  v5 = sub_1000206B4(v3, v4);
  if (sub_100185ADC(v5, "Kappa", v29, 0xFFFFFFFFLL))
  {
    v6 = sub_10007005C(v29);
    v7 = [v6 objectForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "martyShouldArm")}];
    v8 = v7 == 0 && v2;
    if (v7 && v2)
    {
      v8 = [objc_msgSend(v6 valueForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "martyShouldArm")), "BOOLValue"}];
    }
  }

  else
  {
    v8 = v2;
  }

  if ((a1[317] & 1) == 0)
  {
    if (qword_102665708 != -1)
    {
      sub_101BBC344();
    }

    if (qword_102665710)
    {
      a1[317] = off_1026346A0();
      if (qword_1025D4340 != -1)
      {
        sub_101BB9C9C();
      }

      v9 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
      {
        v10 = a1[317];
        *buf = 67109120;
        v43 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "uncached activated state %d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BBB9D0(buf);
        v26 = a1[317];
        v30 = 67109120;
        v31 = v26;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4348, 2, "uncached activated state %d", &v30);
        v28 = v27;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLKappaNotifier::shouldEnableMarty()", "%s\n", v27);
        if (v28 != buf)
        {
          free(v28);
        }
      }
    }
  }

  if (!v8 || (a1[313] & 1) != 0 || (a1[315] & 1) != 0 || (a1[316] & 1) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = a1[317];
  }

  LOBYTE(v30) = 0;
  sub_100126E84(buf, "MartyForceOn", &v30, 0);
  v12 = buf[1];
  if (qword_1025D4340 != -1)
  {
    sub_101BB9C9C();
  }

  v13 = v11 | v12;
  v14 = qword_1025D4348;
  if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_INFO))
  {
    v15 = a1[313];
    v16 = a1[315];
    v17 = a1[316];
    v18 = a1[317];
    *buf = 67241472;
    v43 = v13;
    v44 = 1026;
    v45 = v8;
    v46 = 1026;
    v47 = v15;
    v48 = 1026;
    v49 = v16;
    v50 = 1026;
    v51 = v17;
    v52 = 1026;
    v53 = v18;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "shouldEnableMarty, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101BBB9D0(buf);
    v20 = a1[313];
    v21 = a1[315];
    v22 = a1[316];
    v23 = a1[317];
    v30 = 67241472;
    v31 = v13;
    v32 = 1026;
    v33 = v8;
    v34 = 1026;
    v35 = v20;
    v36 = 1026;
    v37 = v21;
    v38 = 1026;
    v39 = v22;
    v40 = 1026;
    v41 = v23;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4348, 1, "shouldEnableMarty, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u, %{public}u", &v30, 38);
    v25 = v24;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLKappaNotifier::shouldEnableMarty()", "%s\n", v24);
    if (v25 != buf)
    {
      free(v25);
    }
  }

  sub_100005DA4();
  return v13;
}

void sub_100127D64(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - *(a1 + 720) > *(a1 + 712))
  {
    *(a1 + 720) = Current;
    v3 = +[SafetyAlerts sharedInterface];
    v4 = [objc_msgSend(*(a1 + 32) "silo")];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10132DB28;
    v5[3] = &unk_1024E0A20;
    v5[4] = a1;
    [v3 fetchIsSaewEnabledOnQueue:v4 withReply:v5];
  }
}

void sub_100127E1C(double *a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v46 = Current;
  v45 = 0.0;
  v5 = sub_1000206B4(v3, v4);
  sub_1000B9370(v5, "CLIgneousScheduledEnableLastRenewTime", &v45);
  if (Current - v45 > a1[88])
  {
    v6 = drand48() * a1[88];
    v9 = sub_1000206B4(v7, v8);
    v10 = sub_100116D68(v9, "CLIgneousScheduledEnableLastRenewTime", &v46);
    v12 = sub_1000206B4(v10, v11);
    *buf = v6 + v46;
    sub_100116D68(v12, "CLIgneousScheduledEnableStartTime", buf);
    if (qword_1025D4550 != -1)
    {
      sub_101BB9A5C();
    }

    v13 = qword_1025D4558;
    if (os_log_type_enabled(qword_1025D4558, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v6 + v46 + a1[87];
      *buf = 134218752;
      *&buf[4] = v46;
      *&buf[12] = 2048;
      v55 = v6;
      v56 = 2048;
      v57 = v6 + v46;
      v58 = 2048;
      v59 = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "Renewed Igneous random arm session,now,%.0f,delay,%.0f,startTime,%.0f,endTime,%.0f", buf, 0x2Au);
    }

    v15 = sub_10000A100(121, 2);
    if (v15)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4550 != -1)
      {
        sub_101BB9A5C();
      }

      v36 = v6 + v46 + a1[87];
      v47 = 134218752;
      *v48 = v46;
      *&v48[8] = 2048;
      v49 = v6;
      v50 = 2048;
      v51 = v6 + v46;
      v52 = 2048;
      v53 = v36;
      LODWORD(v44) = 42;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4558, 0, "Renewed Igneous random arm session,now,%.0f,delay,%.0f,startTime,%.0f,endTime,%.0f", COERCE_DOUBLE(&v47), v44, v45, v46);
      v38 = v37;
      v15 = sub_100152C7C("Generic", 1, 0, 2, "void CLKappaNotifier::scheduleRandomArmSessionIgneous()", "%s\n", v37);
      if (v38 != buf)
      {
        free(v38);
      }
    }

    v17 = sub_1000206B4(v15, v16);
    v18 = (a1 + 86);
    v19 = sub_10004345C(v17, "CLIgneousArmMinutes", a1 + 86);
    v20 = (a1 + 85);
    v21 = a1 + 171;
    a1[85] = 0.0;
    v23 = sub_1000206B4(v19, v22);
    v24 = sub_10004345C(v23, "CLIgneousMotionTriggerCountOnCharger", a1 + 85);
    v26 = sub_1000206B4(v24, v25);
    v27 = sub_10004345C(v26, "CLIgneousMotionTriggerCountOffCharger", a1 + 684);
    v29 = *sub_1000206B4(v27, v28);
    (*(v29 + 944))();
    if (qword_1025D4550 != -1)
    {
      sub_101BB9A5C();
    }

    v30 = qword_1025D4558;
    if (os_log_type_enabled(qword_1025D4558, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *v18;
      v32 = *v20;
      v33 = *v21;
      *buf = 67109632;
      *&buf[4] = v31;
      *&buf[8] = 1024;
      *&buf[10] = v32;
      LOWORD(v55) = 1024;
      *(&v55 + 2) = v33;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "Replenished Igneous arm minutes, %d, %d, %d", buf, 0x14u);
    }

    v34 = sub_10000A100(121, 2);
    if (v34)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4550 != -1)
      {
        sub_101BB9A5C();
      }

      v39 = *v18;
      v40 = *v20;
      v41 = *v21;
      v47 = 67109632;
      *v48 = v39;
      *&v48[4] = 1024;
      *&v48[6] = v40;
      LOWORD(v49) = 1024;
      *(&v49 + 2) = v41;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4558, 0, "Replenished Igneous arm minutes, %d, %d, %d", &v47, 20, LODWORD(v45));
      v43 = v42;
      v34 = sub_100152C7C("Generic", 1, 0, 2, "void CLKappaNotifier::scheduleRandomArmSessionIgneous()", "%s\n", v42);
      if (v43 != buf)
      {
        free(v43);
      }
    }

    sub_101327294(v34, v35);
    sub_1005D8008();
    sub_10132D93C(a1, (a1 + 52), "com.apple.igneous.enableIgneousWithDelay", v6);
    sub_10132D93C(a1, (a1 + 64), "com.apple.igneous.disableIgneousWithDelay", v6 + a1[87]);
  }
}

BOOL sub_1001282B4(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v7 = 0.0;
  v5 = sub_1000206B4(v3, v4);
  sub_1000B9370(v5, "CLIgneousScheduledEnableStartTime", &v7);
  return Current > v7 && Current < v7 + *(a1 + 696);
}

void sub_100128330(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = a2 >> 8;
  buf[0] = 0;
  v5 = sub_1000206B4(a1, a2);
  sub_10001CB4C(v5, "CLIgneousArmStatus", buf, 0xFFFFFFFFLL);
  v6 = buf[0];
  if ((buf[0] & 1) != 0 || (*&v2 & 0xFF0000) == 0)
  {
    v9 = v4;
    v10 = v2 & 0xFF000000 | (BYTE2(v2) << 16) | (v4 << 8);
    v11 = v2;
    sub_1001286B0(a1, v10 & 0xFFFFFF00 | v2);
    if (qword_1025D4550 != -1)
    {
      sub_101BB9A5C();
    }

    v12 = BYTE2(v2);
    v13 = qword_1025D4558;
    if (os_log_type_enabled(qword_1025D4558, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240960;
      *v24 = v6;
      *&v24[4] = 1026;
      *&v24[6] = v11;
      v25 = 1026;
      v26 = v9;
      v27 = 1026;
      v28 = v12;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Updated AOP arm status, %{public}u, %{public}u, %{public}u, %{public}u", buf, 0x1Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4550 != -1)
      {
        sub_101BB9A5C();
      }

      v16[0] = 67240960;
      v16[1] = v6;
      v17 = 1026;
      v18 = v11;
      v19 = 1026;
      v20 = v9;
      v21 = 1026;
      v22 = v12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4558, 2, "Updated AOP arm status, %{public}u, %{public}u, %{public}u, %{public}u", v16, 26);
      v15 = v14;
      sub_100152C7C("Generic", 1, 0, 2, "void CLKappaNotifier::updateAOPArmStatus(CMMotionCoprocessorCommand::Kappa::EnableClient)", "%s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

  else
  {
    if (!sub_1006E3EAC(a1 + 320))
    {
      if (qword_1025D4550 != -1)
      {
        sub_101BB9A5C();
      }

      v7 = qword_1025D4558;
      if (os_log_type_enabled(qword_1025D4558, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *v24 = "com.apple.igneous.enableIgneous";
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "%s is not scheduled, submit a new task", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BBC458();
      }

      sub_10132D93C(a1, a1 + 320, "com.apple.igneous.enableIgneous", 0.0);
    }

    sub_1001286B0(a1, v2 | (v4 << 8));
    if (qword_1025D4550 != -1)
    {
      sub_101BB9A5C();
    }

    v8 = qword_1025D4558;
    if (os_log_type_enabled(qword_1025D4558, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240960;
      *v24 = 0;
      *&v24[4] = 1026;
      *&v24[6] = v2;
      v25 = 1026;
      v26 = v4;
      v27 = 1026;
      v28 = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Updated AOP arm status, %{public}u, %{public}u, %{public}u, %{public}u", buf, 0x1Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BBC550(v2, v4);
    }
  }
}

void sub_1001286B0(uint64_t a1, int a2)
{
  v22 = a2;
  HIBYTE(v22) = *(a1 + 314);
  sub_10012888C(10, &v22, 4uLL);
  buf[0] = 0;
  v5 = sub_1000206B4(v3, v4);
  sub_10001CB4C(v5, "CLIgneousArmStatus", buf, 0xFFFFFFFFLL);
  if ((buf[0] & 1) == 0 && BYTE2(v22))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v21 = Current;
    if (qword_1025D4550 != -1)
    {
      sub_101BB9A5C();
    }

    v8 = qword_1025D4558;
    if (os_log_type_enabled(qword_1025D4558, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 314);
      *buf = 134218240;
      v24 = Current;
      v25 = 1024;
      v26 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "save Igneous arm session startTime,%f,isCharging,%d", buf, 0x12u);
    }

    v10 = sub_10000A100(121, 2);
    if (v10)
    {
      sub_101BBFA8C(Current);
    }

    v12 = sub_1000206B4(v10, v11);
    v13 = sub_100116D68(v12, "CLIgneousArmSessionStartTime", &v21);
    v15 = sub_1000206B4(v13, v14);
    v16 = sub_100043360(v15, "CLIgneousArmSessionIsCharging", (a1 + 314));
    v18 = sub_1000206B4(v16, v17);
    (*(*v18 + 944))(v18);
    *(a1 + 728) = CFAbsoluteTimeGetCurrent();
    v19 = a1;
    v20 = 1;
    goto LABEL_13;
  }

  if (buf[0] && !BYTE2(v22))
  {
    *(a1 + 728) = 0;
    v19 = a1;
    v20 = 0;
LABEL_13:
    sub_10132D764(v19, v20);
  }

  sub_100128B48(a1, v6);
}

void sub_10012888C(char a1, void *a2, size_t a3)
{
  v6 = sub_100023ED4(0, a2);
  if (v6)
  {
    if (v7)
    {

      sub_100128938(v7, a1, a2, a3);
    }
  }
}

void sub_100128938(uint64_t a1, char a2, void *__src, size_t a4)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  LOBYTE(v6[0]) = 65;
  BYTE1(v6[0]) = a2;
  if (__src && a4)
  {
    v5 = 96;
    if (a4 < 0x60)
    {
      v5 = a4;
    }

    memcpy(v6 + 4, __src, v5);
  }

  sub_1001289B8(a1 + 192, v6, 0);
}

void sub_1001289B8(uint64_t a1, __int128 *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x9812000000;
    v11[3] = sub_100128B1C;
    v11[4] = nullsub_72;
    v11[5] = &unk_10238AE8B;
    v4 = a2[5];
    v16 = a2[4];
    v17 = v4;
    v18 = *(a2 + 24);
    v5 = a2[1];
    v12 = *a2;
    v13 = v5;
    v6 = a2[3];
    v14 = a2[2];
    v15 = v6;
    if (aBlock)
    {
      v7 = _Block_copy(aBlock);
    }

    else
    {
      v7 = 0;
    }

    v9 = *a1;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100128D10;
    v10[3] = &unk_102462080;
    v10[5] = v11;
    v10[6] = a1;
    v10[4] = v7;
    dispatch_async(v9, v10);
    _Block_object_dispose(v11, 8);
  }

  else if (aBlock)
  {
    v8 = *(aBlock + 2);

    v8(aBlock, 0);
  }
}

void sub_100128B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_100128B1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  *(a1 + 48) = v2;
  result = *(a2 + 96);
  v5 = *(a2 + 112);
  v6 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v5;
  *(a1 + 128) = v6;
  *(a1 + 96) = result;
  return result;
}

void sub_100128B48(uint64_t a1, uint64_t a2)
{
  *buf = 0;
  v3 = sub_1000206B4(a1, a2);
  v4 = sub_10005BBE4(v3, "CLIgneousArmMinutes", buf);
  v5 = *buf;
  buf[0] = 0;
  v7 = sub_1000206B4(v4, v6);
  sub_10001CB4C(v7, "CLIgneousArmStatus", buf, 0xFFFFFFFFLL);
  v8 = buf[0];
  Current = CFAbsoluteTimeGetCurrent();
  if (v8 == 1)
  {
    v12 = Current;
    v13 = *(a1 + 728);
    if (v13 > 0.0)
    {
      v14 = llround((v12 - v13) / 60.0);
      v20 = (v5 - v14) & ~((v5 - v14) >> 31);
      *(a1 + 728) = v12;
      v15 = sub_1000206B4(v9, v10);
      v16 = sub_10004345C(v15, "CLIgneousArmMinutes", &v20);
      v18 = *sub_1000206B4(v16, v17);
      (*(v18 + 944))();
      if (qword_1025D4550 != -1)
      {
        sub_101BB9A5C();
      }

      v19 = qword_1025D4558;
      if (os_log_type_enabled(qword_1025D4558, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67240448;
        v22 = v20;
        v23 = 2050;
        v24 = v12;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "saved Igneous arm minutes,%{public}d,now,%{public}f", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BBFBA0(v12);
      }
    }
  }
}

void sub_100128D10(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 65;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 100);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

void sub_100128D94(uint64_t a1, unint64_t a2, char *a3)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v11, 0, 14);
      v6 = *&a3[OBJC_IVAR____TtC4Gnss13CLCoreGPSShim__indicationCallback];
      v5 = 0;
      goto LABEL_9;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
LABEL_7:
    v9 = a3;
    sub_100128F6C(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, v9);

    return;
  }

  if (v4)
  {
    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  v11[0] = a1;
  LOWORD(v11[1]) = a2;
  BYTE2(v11[1]) = BYTE2(a2);
  BYTE3(v11[1]) = BYTE3(a2);
  BYTE4(v11[1]) = BYTE4(a2);
  v5 = BYTE6(a2);
  BYTE5(v11[1]) = BYTE5(a2);
  v6 = *&a3[OBJC_IVAR____TtC4Gnss13CLCoreGPSShim__indicationCallback];
LABEL_9:
  v6(v11, v5);
}

void sub_100128F6C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v7 = __DataStorage._bytes.getter();
  if (v7)
  {
    v8 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v8))
    {
LABEL_12:
      __break(1u);
      return;
    }

    v7 += a1 - v8;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = __DataStorage._length.getter();
  if (v7)
  {
    if (v11 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    (*&a4[OBJC_IVAR____TtC4Gnss13CLCoreGPSShim__indicationCallback])(v7, v12);
  }
}

double sub_100129044(uint64_t a1)
{
  *a1 = off_1024B8808;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = &wireless_diagnostics::google::protobuf::internal::kEmptyString;
  *(a1 + 212) = 0;
  *(a1 + 216) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 196) = 0u;
  return result;
}

uint64_t sub_1001290A8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 216);
  if (v2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    if ((v2 & 8) != 0)
    {
      result = *(result + 24);
      if (result)
      {
        result = sub_10072170C(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      result = *(v1 + 32);
      if (result)
      {
        result = sub_100D18DDC(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      result = *(v1 + 40);
      if (result)
      {
        result = sub_100723720(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      v3 = *(v1 + 48);
      if (v3)
      {
        if (*(v3 + 32))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 23) = 0;
        }

        *(v3 + 32) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      result = *(v1 + 56);
      if (result)
      {
        result = sub_100722238(result);
        v2 = *(v1 + 216);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      result = *(v1 + 64);
      if (result)
      {
        result = sub_100E7BAF0(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      v4 = *(v1 + 72);
      if (v4)
      {
        if (*(v4 + 16))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 16) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x400) != 0)
    {
      result = *(v1 + 80);
      if (result)
      {
        result = sub_10072401C(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x800) != 0)
    {
      result = *(v1 + 88);
      if (result)
      {
        result = sub_100723AF4(result);
        v2 = *(v1 + 216);
      }
    }

    *(v1 + 96) = 0;
    if ((v2 & 0x4000) != 0)
    {
      v5 = *(v1 + 104);
      if (v5)
      {
        if (*(v5 + 24))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 24) = 0;
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x8000) != 0)
    {
      result = *(v1 + 112);
      if (result)
      {
        result = sub_100E7BB6C(result);
        v2 = *(v1 + 216);
      }
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      result = *(v1 + 120);
      if (result)
      {
        result = sub_100876448(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x20000) != 0)
    {
      v6 = *(v1 + 128);
      if (v6 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
      {
        if (*(v6 + 23) < 0)
        {
          **v6 = 0;
          *(v6 + 8) = 0;
        }

        else
        {
          *v6 = 0;
          *(v6 + 23) = 0;
        }
      }
    }

    v2 = *(v1 + 216);
    if ((v2 & 0x40000) != 0)
    {
      result = *(v1 + 136);
      if (result)
      {
        result = sub_100892E9C(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x80000) != 0)
    {
      result = *(v1 + 144);
      if (result)
      {
        result = sub_10089835C(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x100000) != 0)
    {
      result = *(v1 + 152);
      if (result)
      {
        result = sub_10089DD44(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x200000) != 0)
    {
      result = *(v1 + 160);
      if (result)
      {
        result = sub_1008A9BB8(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x400000) != 0)
    {
      result = *(v1 + 168);
      if (result)
      {
        result = sub_1008AD730(result);
        v2 = *(v1 + 216);
      }
    }

    if ((v2 & 0x800000) != 0)
    {
      result = *(v1 + 176);
      if (result)
      {
        result = sub_10087FA0C(result);
        v2 = *(v1 + 216);
      }
    }
  }

  if (HIBYTE(v2))
  {
    if ((v2 & 0x1000000) != 0)
    {
      result = *(v1 + 184);
      if (result)
      {
        result = sub_10087DB08(result);
        v2 = *(v1 + 216);
      }
    }

    *(v1 + 192) = 0;
    *(v1 + 208) = 0;
    if ((v2 & 0x10000000) != 0)
    {
      result = *(v1 + 200);
      if (result)
      {
        result = sub_10087A558(result);
      }
    }
  }

  *(v1 + 216) = 0;
  return result;
}

uint64_t sub_1001292F4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (2)
  {
    v5 = *(this + 1);
    if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v5 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v224 = 0;
        v8 = *(this + 1);
        if (v8 < *(this + 2))
        {
          v9 = *v8;
          if ((v9 & 0x80000000) == 0)
          {
            *(this + 1) = v8 + 1;
            goto LABEL_72;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224);
        if (result)
        {
          v9 = v224;
LABEL_72:
          if (v9 <= 0x1B && ((1 << v9) & 0xFDFFE3F) != 0)
          {
            if (v9 > 0x1B || ((1 << v9) & 0xFDFFE3F) == 0)
            {
              sub_101AAD804();
            }

            *(a1 + 216) |= 1u;
            *(a1 + 8) = v9;
          }

          v27 = *(this + 1);
          v19 = *(this + 2);
          if (v27 < v19 && *v27 == 16)
          {
            v20 = v27 + 1;
            *(this + 1) = v20;
            goto LABEL_82;
          }

          continue;
        }

        break;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v20 = *(this + 1);
        v19 = *(this + 2);
LABEL_82:
        v224 = 0;
        if (v20 >= v19 || (v28 = *v20, (v28 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224);
          if (!result)
          {
            return result;
          }

          v28 = v224;
        }

        else
        {
          *(this + 1) = v20 + 1;
        }

        if (sub_100132484(v28))
        {
          *(a1 + 216) |= 2u;
          *(a1 + 12) = v28;
        }

        v29 = *(this + 1);
        v17 = *(this + 2);
        if (v29 >= v17 || *v29 != 24)
        {
          continue;
        }

        v18 = v29 + 1;
        *(this + 1) = v18;
LABEL_92:
        if (v18 >= v17 || (v30 = *v18, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 16));
          if (!result)
          {
            return result;
          }

          v31 = *(this + 1);
          v17 = *(this + 2);
        }

        else
        {
          *(a1 + 16) = v30;
          v31 = v18 + 1;
          *(this + 1) = v31;
        }

        v21 = *(a1 + 216) | 4;
        *(a1 + 216) = v21;
        if (v31 >= v17 || *v31 != 34)
        {
          continue;
        }

        *(this + 1) = v31 + 1;
LABEL_100:
        *(a1 + 216) = v21 | 8;
        v32 = *(a1 + 24);
        if (!v32)
        {
          operator new();
        }

        v224 = 0;
        v33 = *(this + 1);
        if (v33 >= *(this + 2) || *v33 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v33;
          *(this + 1) = v33 + 1;
        }

        v34 = *(this + 14);
        v35 = *(this + 15);
        *(this + 14) = v34 + 1;
        if (v34 >= v35)
        {
          return 0;
        }

        v36 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_10012EBF8(v32, this, v37) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v36);
        v38 = *(this + 14);
        v39 = __OFSUB__(v38, 1);
        v40 = v38 - 1;
        if (v40 < 0 == v39)
        {
          *(this + 14) = v40;
        }

        v41 = *(this + 1);
        if (v41 >= *(this + 2) || *v41 != 42)
        {
          continue;
        }

        *(this + 1) = v41 + 1;
LABEL_114:
        *(a1 + 216) |= 0x10u;
        v42 = *(a1 + 32);
        if (!v42)
        {
          operator new();
        }

        v224 = 0;
        v43 = *(this + 1);
        if (v43 >= *(this + 2) || *v43 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v43;
          *(this + 1) = v43 + 1;
        }

        v44 = *(this + 14);
        v45 = *(this + 15);
        *(this + 14) = v44 + 1;
        if (v44 >= v45)
        {
          return 0;
        }

        v46 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_10013B658(v42, this, v47) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v46);
        v48 = *(this + 14);
        v39 = __OFSUB__(v48, 1);
        v49 = v48 - 1;
        if (v49 < 0 == v39)
        {
          *(this + 14) = v49;
        }

        v50 = *(this + 1);
        if (v50 >= *(this + 2) || *v50 != 50)
        {
          continue;
        }

        *(this + 1) = v50 + 1;
LABEL_128:
        *(a1 + 216) |= 0x20u;
        v51 = *(a1 + 40);
        if (!v51)
        {
          operator new();
        }

        v224 = 0;
        v52 = *(this + 1);
        if (v52 >= *(this + 2) || *v52 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v52;
          *(this + 1) = v52 + 1;
        }

        v53 = *(this + 14);
        v54 = *(this + 15);
        *(this + 14) = v53 + 1;
        if (v53 >= v54)
        {
          return 0;
        }

        v55 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_10013ADC8(v51, this, v56) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v55);
        v57 = *(this + 14);
        v39 = __OFSUB__(v57, 1);
        v58 = v57 - 1;
        if (v58 < 0 == v39)
        {
          *(this + 14) = v58;
        }

        v59 = *(this + 1);
        if (v59 >= *(this + 2) || *v59 != 74)
        {
          continue;
        }

        *(this + 1) = v59 + 1;
LABEL_142:
        *(a1 + 216) |= 0x40u;
        v60 = *(a1 + 48);
        if (!v60)
        {
          operator new();
        }

        v224 = 0;
        v61 = *(this + 1);
        if (v61 >= *(this + 2) || *v61 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v61;
          *(this + 1) = v61 + 1;
        }

        v62 = *(this + 14);
        v63 = *(this + 15);
        *(this + 14) = v62 + 1;
        if (v62 >= v63)
        {
          return 0;
        }

        v64 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_100E7D038(v60, this, v65) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v64);
        v66 = *(this + 14);
        v39 = __OFSUB__(v66, 1);
        v67 = v66 - 1;
        if (v67 < 0 == v39)
        {
          *(this + 14) = v67;
        }

        v68 = *(this + 1);
        if (v68 >= *(this + 2) || *v68 != 82)
        {
          continue;
        }

        *(this + 1) = v68 + 1;
LABEL_156:
        *(a1 + 216) |= 0x80u;
        v69 = *(a1 + 56);
        if (!v69)
        {
          operator new();
        }

        v224 = 0;
        v70 = *(this + 1);
        if (v70 >= *(this + 2) || *v70 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v70;
          *(this + 1) = v70 + 1;
        }

        v71 = *(this + 14);
        v72 = *(this + 15);
        *(this + 14) = v71 + 1;
        if (v71 >= v72)
        {
          return 0;
        }

        v73 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_10032069C(v69, this, v74) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v73);
        v75 = *(this + 14);
        v39 = __OFSUB__(v75, 1);
        v76 = v75 - 1;
        if (v76 < 0 == v39)
        {
          *(this + 14) = v76;
        }

        v77 = *(this + 1);
        if (*(this + 4) - v77 <= 1 || *v77 != 130 || v77[1] != 1)
        {
          continue;
        }

        *(this + 1) = v77 + 2;
LABEL_171:
        *(a1 + 216) |= 0x100u;
        v78 = *(a1 + 64);
        if (!v78)
        {
          operator new();
        }

        v224 = 0;
        v79 = *(this + 1);
        if (v79 >= *(this + 2) || *v79 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v79;
          *(this + 1) = v79 + 1;
        }

        v80 = *(this + 14);
        v81 = *(this + 15);
        *(this + 14) = v80 + 1;
        if (v80 >= v81)
        {
          return 0;
        }

        v82 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_100E84AA4(v78, this, v83) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v82);
        v84 = *(this + 14);
        v39 = __OFSUB__(v84, 1);
        v85 = v84 - 1;
        if (v85 < 0 == v39)
        {
          *(this + 14) = v85;
        }

        v86 = *(this + 1);
        if (*(this + 4) - v86 <= 1 || *v86 != 138 || v86[1] != 1)
        {
          continue;
        }

        *(this + 1) = v86 + 2;
LABEL_186:
        *(a1 + 216) |= 0x200u;
        v87 = *(a1 + 72);
        if (!v87)
        {
          operator new();
        }

        v224 = 0;
        v88 = *(this + 1);
        if (v88 >= *(this + 2) || *v88 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v88;
          *(this + 1) = v88 + 1;
        }

        v89 = *(this + 14);
        v90 = *(this + 15);
        *(this + 14) = v89 + 1;
        if (v89 >= v90)
        {
          return 0;
        }

        v91 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_100E850E0(v87, this, v92) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v91);
        v93 = *(this + 14);
        v39 = __OFSUB__(v93, 1);
        v94 = v93 - 1;
        if (v94 < 0 == v39)
        {
          *(this + 14) = v94;
        }

        v95 = *(this + 1);
        if (*(this + 4) - v95 <= 1 || *v95 != 146 || v95[1] != 1)
        {
          continue;
        }

        *(this + 1) = v95 + 2;
LABEL_201:
        *(a1 + 216) |= 0x400u;
        v96 = *(a1 + 80);
        if (!v96)
        {
          operator new();
        }

        v224 = 0;
        v97 = *(this + 1);
        if (v97 >= *(this + 2) || *v97 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v97;
          *(this + 1) = v97 + 1;
        }

        v98 = *(this + 14);
        v99 = *(this + 15);
        *(this + 14) = v98 + 1;
        if (v98 >= v99)
        {
          return 0;
        }

        v100 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_1001741FC(v96, this, v101) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v100);
        v102 = *(this + 14);
        v39 = __OFSUB__(v102, 1);
        v103 = v102 - 1;
        if (v103 < 0 == v39)
        {
          *(this + 14) = v103;
        }

        v104 = *(this + 1);
        if (*(this + 4) - v104 <= 1 || *v104 != 154 || v104[1] != 1)
        {
          continue;
        }

        *(this + 1) = v104 + 2;
LABEL_216:
        *(a1 + 216) |= 0x800u;
        v105 = *(a1 + 88);
        if (!v105)
        {
          operator new();
        }

        v224 = 0;
        v106 = *(this + 1);
        if (v106 >= *(this + 2) || *v106 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v106;
          *(this + 1) = v106 + 1;
        }

        v107 = *(this + 14);
        v108 = *(this + 15);
        *(this + 14) = v107 + 1;
        if (v107 >= v108)
        {
          return 0;
        }

        v109 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_100723B0C(v105, this, v110) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v109);
        v111 = *(this + 14);
        v39 = __OFSUB__(v111, 1);
        v112 = v111 - 1;
        if (v112 < 0 == v39)
        {
          *(this + 14) = v112;
        }

        v113 = *(this + 1);
        v15 = *(this + 2);
        if (v15 - v113 <= 1 || *v113 != 160 || v113[1] != 1)
        {
          continue;
        }

        v16 = (v113 + 2);
        *(this + 1) = v16;
LABEL_231:
        v224 = 0;
        if (v16 >= v15 || (v114 = *v16, (v114 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224);
          if (!result)
          {
            return result;
          }

          v114 = v224;
        }

        else
        {
          *(this + 1) = v16 + 1;
        }

        if (sub_100134974(v114))
        {
          if (!sub_100134974(v114))
          {
            sub_101AAD888();
          }

          *(a1 + 216) |= 0x2000u;
          *(a1 + 100) = v114;
        }

        v115 = *(this + 1);
        v10 = *(this + 2);
        if (v10 - v115 < 2 || *v115 != 176 || v115[1] != 1)
        {
          continue;
        }

        v11 = (v115 + 2);
        *(this + 1) = v11;
LABEL_243:
        v224 = 0;
        if (v11 >= v10 || (v116 = *v11, (v116 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224);
          if (!result)
          {
            return result;
          }

          v116 = v224;
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (sub_100134974(v116))
        {
          if (!sub_100134974(v116))
          {
            sub_101AAD85C();
          }

          *(a1 + 216) |= 0x1000u;
          *(a1 + 96) = v116;
        }

        v117 = *(this + 1);
        if (*(this + 4) - v117 < 2 || *v117 != 186 || v117[1] != 1)
        {
          continue;
        }

        *(this + 1) = v117 + 2;
LABEL_255:
        *(a1 + 216) |= 0x4000u;
        v118 = *(a1 + 104);
        if (!v118)
        {
          operator new();
        }

        v224 = 0;
        v119 = *(this + 1);
        if (v119 >= *(this + 2) || *v119 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v119;
          *(this + 1) = v119 + 1;
        }

        v120 = *(this + 14);
        v121 = *(this + 15);
        *(this + 14) = v120 + 1;
        if (v120 >= v121)
        {
          return 0;
        }

        v122 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_100E884AC(v118, this, v123) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v122);
        v124 = *(this + 14);
        v39 = __OFSUB__(v124, 1);
        v125 = v124 - 1;
        if (v125 < 0 == v39)
        {
          *(this + 14) = v125;
        }

        v126 = *(this + 1);
        if (*(this + 4) - v126 <= 1 || *v126 != 202 || v126[1] != 1)
        {
          continue;
        }

        *(this + 1) = v126 + 2;
LABEL_270:
        *(a1 + 216) |= 0x8000u;
        v127 = *(a1 + 112);
        if (!v127)
        {
          operator new();
        }

        v224 = 0;
        v128 = *(this + 1);
        if (v128 >= *(this + 2) || *v128 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v128;
          *(this + 1) = v128 + 1;
        }

        v129 = *(this + 14);
        v130 = *(this + 15);
        *(this + 14) = v129 + 1;
        if (v129 >= v130)
        {
          return 0;
        }

        v131 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_100E889D8(v127, this, v132) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v131);
        v133 = *(this + 14);
        v39 = __OFSUB__(v133, 1);
        v134 = v133 - 1;
        if (v134 < 0 == v39)
        {
          *(this + 14) = v134;
        }

        v135 = *(this + 1);
        if (*(this + 4) - v135 <= 1 || *v135 != 242 || v135[1] != 1)
        {
          continue;
        }

        *(this + 1) = v135 + 2;
LABEL_285:
        *(a1 + 216) |= 0x10000u;
        v136 = *(a1 + 120);
        if (!v136)
        {
          operator new();
        }

        v224 = 0;
        v137 = *(this + 1);
        if (v137 >= *(this + 2) || *v137 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v137;
          *(this + 1) = v137 + 1;
        }

        v138 = *(this + 14);
        v139 = *(this + 15);
        *(this + 14) = v138 + 1;
        if (v138 >= v139)
        {
          return 0;
        }

        v140 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_100876498(v136, this, v141) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v140);
        v142 = *(this + 14);
        v39 = __OFSUB__(v142, 1);
        v143 = v142 - 1;
        if (v143 < 0 == v39)
        {
          *(this + 14) = v143;
        }

        v144 = *(this + 1);
        if (*(this + 4) - v144 <= 1 || *v144 != 250 || v144[1] != 1)
        {
          continue;
        }

        *(this + 1) = v144 + 2;
LABEL_300:
        *(a1 + 216) |= 0x20000u;
        if (*(a1 + 128) == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v145 = *(this + 1);
        if (*(this + 4) - v145 < 2 || *v145 != 194 || v145[1] != 2)
        {
          continue;
        }

        *(this + 1) = v145 + 2;
LABEL_307:
        *(a1 + 216) |= 0x40000u;
        v146 = *(a1 + 136);
        if (!v146)
        {
          operator new();
        }

        v224 = 0;
        v147 = *(this + 1);
        if (v147 >= *(this + 2) || *v147 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v147;
          *(this + 1) = v147 + 1;
        }

        v148 = *(this + 14);
        v149 = *(this + 15);
        *(this + 14) = v148 + 1;
        if (v148 >= v149)
        {
          return 0;
        }

        v150 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_100892F50(v146, this, v151) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v150);
        v152 = *(this + 14);
        v39 = __OFSUB__(v152, 1);
        v153 = v152 - 1;
        if (v153 < 0 == v39)
        {
          *(this + 14) = v153;
        }

        v154 = *(this + 1);
        if (*(this + 4) - v154 <= 1 || *v154 != 202 || v154[1] != 2)
        {
          continue;
        }

        *(this + 1) = v154 + 2;
LABEL_322:
        *(a1 + 216) |= 0x80000u;
        v155 = *(a1 + 144);
        if (!v155)
        {
          operator new();
        }

        v224 = 0;
        v156 = *(this + 1);
        if (v156 >= *(this + 2) || *v156 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v156;
          *(this + 1) = v156 + 1;
        }

        v157 = *(this + 14);
        v158 = *(this + 15);
        *(this + 14) = v157 + 1;
        if (v157 >= v158)
        {
          return 0;
        }

        v159 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_1008983DC(v155, this, v160) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v159);
        v161 = *(this + 14);
        v39 = __OFSUB__(v161, 1);
        v162 = v161 - 1;
        if (v162 < 0 == v39)
        {
          *(this + 14) = v162;
        }

        v163 = *(this + 1);
        if (*(this + 4) - v163 <= 1 || *v163 != 210 || v163[1] != 2)
        {
          continue;
        }

        *(this + 1) = v163 + 2;
LABEL_337:
        *(a1 + 216) |= 0x100000u;
        v164 = *(a1 + 152);
        if (!v164)
        {
          operator new();
        }

        v224 = 0;
        v165 = *(this + 1);
        if (v165 >= *(this + 2) || *v165 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v165;
          *(this + 1) = v165 + 1;
        }

        v166 = *(this + 14);
        v167 = *(this + 15);
        *(this + 14) = v166 + 1;
        if (v166 >= v167)
        {
          return 0;
        }

        v168 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_10089DDD4(v164, this, v169) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v168);
        v170 = *(this + 14);
        v39 = __OFSUB__(v170, 1);
        v171 = v170 - 1;
        if (v171 < 0 == v39)
        {
          *(this + 14) = v171;
        }

        v172 = *(this + 1);
        if (*(this + 4) - v172 <= 1 || *v172 != 218 || v172[1] != 2)
        {
          continue;
        }

        *(this + 1) = v172 + 2;
LABEL_352:
        *(a1 + 216) |= 0x200000u;
        v173 = *(a1 + 160);
        if (!v173)
        {
          operator new();
        }

        v224 = 0;
        v174 = *(this + 1);
        if (v174 >= *(this + 2) || *v174 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v174;
          *(this + 1) = v174 + 1;
        }

        v175 = *(this + 14);
        v176 = *(this + 15);
        *(this + 14) = v175 + 1;
        if (v175 >= v176)
        {
          return 0;
        }

        v177 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_1008A9BCC(v173, this, v178) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v177);
        v179 = *(this + 14);
        v39 = __OFSUB__(v179, 1);
        v180 = v179 - 1;
        if (v180 < 0 == v39)
        {
          *(this + 14) = v180;
        }

        v181 = *(this + 1);
        if (*(this + 4) - v181 <= 1 || *v181 != 226 || v181[1] != 2)
        {
          continue;
        }

        *(this + 1) = v181 + 2;
LABEL_367:
        *(a1 + 216) |= 0x400000u;
        v182 = *(a1 + 168);
        if (!v182)
        {
          operator new();
        }

        v224 = 0;
        v183 = *(this + 1);
        if (v183 >= *(this + 2) || *v183 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v183;
          *(this + 1) = v183 + 1;
        }

        v184 = *(this + 14);
        v185 = *(this + 15);
        *(this + 14) = v184 + 1;
        if (v184 >= v185)
        {
          return 0;
        }

        v186 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_1008AD7B0(v182, this, v187) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v186);
        v188 = *(this + 14);
        v39 = __OFSUB__(v188, 1);
        v189 = v188 - 1;
        if (v189 < 0 == v39)
        {
          *(this + 14) = v189;
        }

        v190 = *(this + 1);
        if (*(this + 4) - v190 <= 1 || *v190 != 146 || v190[1] != 3)
        {
          continue;
        }

        *(this + 1) = v190 + 2;
LABEL_382:
        *(a1 + 216) |= 0x800000u;
        v191 = *(a1 + 176);
        if (!v191)
        {
          operator new();
        }

        v224 = 0;
        v192 = *(this + 1);
        if (v192 >= *(this + 2) || *v192 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v192;
          *(this + 1) = v192 + 1;
        }

        v193 = *(this + 14);
        v194 = *(this + 15);
        *(this + 14) = v193 + 1;
        if (v193 >= v194)
        {
          return 0;
        }

        v195 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_10087FAC4(v191, this, v196) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v195);
        v197 = *(this + 14);
        v39 = __OFSUB__(v197, 1);
        v198 = v197 - 1;
        if (v198 < 0 == v39)
        {
          *(this + 14) = v198;
        }

        v199 = *(this + 1);
        if (*(this + 4) - v199 <= 1 || *v199 != 154 || v199[1] != 3)
        {
          continue;
        }

        *(this + 1) = v199 + 2;
LABEL_397:
        *(a1 + 216) |= 0x1000000u;
        v200 = *(a1 + 184);
        if (!v200)
        {
          operator new();
        }

        v224 = 0;
        v201 = *(this + 1);
        if (v201 >= *(this + 2) || *v201 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v201;
          *(this + 1) = v201 + 1;
        }

        v202 = *(this + 14);
        v203 = *(this + 15);
        *(this + 14) = v202 + 1;
        if (v202 >= v203)
        {
          return 0;
        }

        v204 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_10087DBA4(v200, this, v205) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v204);
        v206 = *(this + 14);
        v39 = __OFSUB__(v206, 1);
        v207 = v206 - 1;
        if (v207 < 0 == v39)
        {
          *(this + 14) = v207;
        }

        v208 = *(this + 1);
        v12 = *(this + 2);
        if (v12 - v208 <= 1 || *v208 != 160 || v208[1] != 3)
        {
          continue;
        }

        v13 = (v208 + 2);
        *(this + 1) = v13;
LABEL_412:
        if (v13 >= v12 || (v209 = *v13, v209 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 192));
          if (!result)
          {
            return result;
          }

          v210 = *(this + 1);
          v12 = *(this + 2);
        }

        else
        {
          *(a1 + 192) = v209;
          v210 = (v13 + 1);
          *(this + 1) = v210;
        }

        *(a1 + 216) |= 0x2000000u;
        if (v12 - v210 < 2 || *v210 != 168 || v210[1] != 3)
        {
          continue;
        }

        v24 = (v210 + 2);
        *(this + 1) = v24;
LABEL_421:
        v224 = 0;
        if (v24 >= v12 || (v211 = *v24, (v211 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224);
          if (!result)
          {
            return result;
          }

          v211 = v224;
        }

        else
        {
          *(this + 1) = v24 + 1;
        }

        if (v211 <= 4 && v211 != 3)
        {
          *(a1 + 216) |= 0x4000000u;
          *(a1 + 196) = v211;
        }

        v213 = *(this + 1);
        v22 = *(this + 2);
        if (v22 - v213 < 2 || *v213 != 176 || v213[1] != 3)
        {
          continue;
        }

        v23 = (v213 + 2);
        *(this + 1) = v23;
LABEL_435:
        if (v23 >= v22 || (v214 = *v23, v214 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 208));
          if (!result)
          {
            return result;
          }

          v215 = *(this + 1);
          v22 = *(this + 2);
        }

        else
        {
          *(a1 + 208) = v214;
          v215 = (v23 + 1);
          *(this + 1) = v215;
        }

        v14 = *(a1 + 216) | 0x8000000;
        *(a1 + 216) = v14;
        if (v22 - v215 < 2 || *v215 != 186 || v215[1] != 3)
        {
          continue;
        }

        *(this + 1) = v215 + 2;
LABEL_444:
        *(a1 + 216) = v14 | 0x10000000;
        v216 = *(a1 + 200);
        if (!v216)
        {
          operator new();
        }

        v224 = 0;
        v217 = *(this + 1);
        if (v217 >= *(this + 2) || *v217 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v224))
          {
            return 0;
          }
        }

        else
        {
          v224 = *v217;
          *(this + 1) = v217 + 1;
        }

        v218 = *(this + 14);
        v219 = *(this + 15);
        *(this + 14) = v218 + 1;
        if (v218 >= v219)
        {
          return 0;
        }

        v220 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v224);
        if (!sub_10087A570(v216, this, v221) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v220);
        v222 = *(this + 14);
        v39 = __OFSUB__(v222, 1);
        v223 = v222 - 1;
        if (v223 < 0 == v39)
        {
          *(this + 14) = v223;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }

        continue;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v18 = *(this + 1);
        v17 = *(this + 2);
        goto LABEL_92;
      case 4u:
        if (v7 != 2)
        {
          goto LABEL_66;
        }

        v21 = *(a1 + 216);
        goto LABEL_100;
      case 5u:
        if (v7 == 2)
        {
          goto LABEL_114;
        }

        goto LABEL_66;
      case 6u:
        if (v7 == 2)
        {
          goto LABEL_128;
        }

        goto LABEL_66;
      case 9u:
        if (v7 == 2)
        {
          goto LABEL_142;
        }

        goto LABEL_66;
      case 0xAu:
        if (v7 == 2)
        {
          goto LABEL_156;
        }

        goto LABEL_66;
      case 0x10u:
        if (v7 == 2)
        {
          goto LABEL_171;
        }

        goto LABEL_66;
      case 0x11u:
        if (v7 == 2)
        {
          goto LABEL_186;
        }

        goto LABEL_66;
      case 0x12u:
        if (v7 == 2)
        {
          goto LABEL_201;
        }

        goto LABEL_66;
      case 0x13u:
        if (v7 == 2)
        {
          goto LABEL_216;
        }

        goto LABEL_66;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v16 = *(this + 1);
        v15 = *(this + 2);
        goto LABEL_231;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_243;
      case 0x17u:
        if (v7 == 2)
        {
          goto LABEL_255;
        }

        goto LABEL_66;
      case 0x19u:
        if (v7 == 2)
        {
          goto LABEL_270;
        }

        goto LABEL_66;
      case 0x1Eu:
        if (v7 == 2)
        {
          goto LABEL_285;
        }

        goto LABEL_66;
      case 0x1Fu:
        if (v7 == 2)
        {
          goto LABEL_300;
        }

        goto LABEL_66;
      case 0x28u:
        if (v7 == 2)
        {
          goto LABEL_307;
        }

        goto LABEL_66;
      case 0x29u:
        if (v7 == 2)
        {
          goto LABEL_322;
        }

        goto LABEL_66;
      case 0x2Au:
        if (v7 == 2)
        {
          goto LABEL_337;
        }

        goto LABEL_66;
      case 0x2Bu:
        if (v7 == 2)
        {
          goto LABEL_352;
        }

        goto LABEL_66;
      case 0x2Cu:
        if (v7 == 2)
        {
          goto LABEL_367;
        }

        goto LABEL_66;
      case 0x32u:
        if (v7 == 2)
        {
          goto LABEL_382;
        }

        goto LABEL_66;
      case 0x33u:
        if (v7 == 2)
        {
          goto LABEL_397;
        }

        goto LABEL_66;
      case 0x34u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v13 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_412;
      case 0x35u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v24 = *(this + 1);
        v12 = *(this + 2);
        goto LABEL_421;
      case 0x36u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_66;
        }

        v23 = *(this + 1);
        v22 = *(this + 2);
        goto LABEL_435;
      case 0x37u:
        if (v7 != 2)
        {
          goto LABEL_66;
        }

        v14 = *(a1 + 216);
        goto LABEL_444;
      default:
LABEL_66:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
        {
          return 0;
        }

        continue;
    }

    return result;
  }
}