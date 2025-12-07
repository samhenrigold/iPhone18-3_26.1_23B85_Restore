uint64_t sub_27719AD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v27 = a2;
  pthread_rwlock_rdlock((a1 + 232));
  LODWORD(v23) = 0;
  v10 = sub_27719C1A4((a1 + 192), &v23);
  if (v10 != v11)
  {
    v12 = v10;
    v13 = v11;
    do
    {
      v14 = *(v12 + 5);
      v23 = *(v12 + 3);
      v24 = v14;
      v15 = *(v12 + 9);
      v25 = *(v12 + 7);
      v26 = v15;
      sub_27719C2A4(&v23, a2, a3, a4, v5);
      v12 = *v12;
    }

    while (v12 != v13);
  }

  v16 = sub_27719C1A4((a1 + 192), &v27);
  if (v16 != v17)
  {
    v18 = v16;
    v19 = v17;
    do
    {
      v20 = *(v18 + 5);
      v23 = *(v18 + 3);
      v24 = v20;
      v21 = *(v18 + 9);
      v25 = *(v18 + 7);
      v26 = v21;
      sub_27719C2A4(&v23, a2, a3, a4, v5);
      v18 = *v18;
    }

    while (v18 != v19);
  }

  return pthread_rwlock_unlock((a1 + 232));
}

void sub_27719AE8C(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v2.n128_f64[0] = sub_27719B074();
    sub_27719B514((a1 + 80), v2, v3, v4);
  }
}

uint64_t sub_27719AF24(uint64_t a1, void *a2, size_t a3)
{
  v6 = sub_27719C118();
  v19 = a1;
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3 >= 0x21)
  {
    syslog(3, "EDR - %s: data size %d exceeds max data size %d\n", "post_notification", a3, 32);
    return 0xFFFFFFFFLL;
  }

  v8 = v6;
  sub_27719AD68(v6, a1, a2, a3, 1);
  pthread_rwlock_rdlock((v8 + 232));
  v18 = 0;
  v9 = sub_27719D1F8((v8 + 40), &v18);
  v7 = 0;
  if (v9 != v10)
  {
    v11 = v9;
    v12 = v10;
    LODWORD(v7) = 0;
    do
    {
      if (sub_2771A8690(*(v11 + 9), a1, a2, a3, 0))
      {
        v7 = 0xFFFFFFFFLL;
      }

      else
      {
        v7 = v7;
      }

      v11 = *v11;
    }

    while (v11 != v12);
  }

  v13 = sub_27719D1F8((v8 + 40), &v19);
  if (v13 != v14)
  {
    v15 = v13;
    v16 = v14;
    do
    {
      if (sub_2771A8690(*(v15 + 9), a1, a2, a3, 0))
      {
        v7 = 0xFFFFFFFFLL;
      }

      else
      {
        v7 = v7;
      }

      v15 = *v15;
    }

    while (v15 != v16);
  }

  pthread_rwlock_unlock((v8 + 232));
  return v7;
}

double sub_27719B074()
{
  if (qword_281341450 != -1)
  {
    sub_27719D80C();
  }

  v0 = qword_281341458;
  v1 = HIDWORD(qword_281341458);
  return (mach_absolute_time() * v0 / v1) / 1000000.0;
}

void EDRServerSetDisplayBrightnessForDisplay(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = qword_281343528;
  std::mutex::lock(qword_281343528);
  v11 = sub_27719B588(a1);
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136316418;
      *v36 = "EDRServerSetDisplayBrightnessForDisplay";
      *&v36[8] = 1024;
      *&v36[10] = a1;
      v37 = 2048;
      v38 = a2;
      v39 = 2048;
      v40 = a3;
      v41 = 2048;
      v42 = a4;
      v43 = 2048;
      v44 = a5;
      _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: (display: %d, targetBrightness: %f, maxLuminance: %f, ambientIlluminance: %f, brightnessScaler: %f)\n", buf, 0x3Au);
    }

    v13 = *(v12 + 364);
    v14 = vabds_f32(v13, a2);
    v15 = v14 > 0.01 && fminf(a2, v13) < 0.01;
    v16 = v14 > 0.01;
    v17 = vabds_f32(*(v12 + 556), a5);
    v18 = vabds_f32(*(v12 + 356), a3);
    if (v17 > 0.000001)
    {
      v16 = 1;
    }

    *(v12 + 364) = a2;
    *(v12 + 356) = a3;
    *(v12 + 360) = a4;
    *(v12 + 556) = a5;
    v19 = v18 > 0.01 || v16;
    if (v19 == 1)
    {
      v21 = v18 <= 0.01 && v17 <= 0.000001;
      v22 = 1.0;
      if ((a2 / a3) <= 1.0)
      {
        v22 = a2 / a3;
      }

      if ((a2 / a3) >= 0.000001)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0.000001;
      }

      sub_27719B680(v12, v21 && *(v12 + 324) < 1.0, v23);
    }

    v24 = sub_27719B61C(v12);
    v25 = 0;
    *(v12 + 320) = a1;
    *(v12 + 560) = v24 * v26;
    *(v12 + 564) = v24;
    *(v12 + 568) = v26;
    *(v12 + 572) = *(v12 + 356);
    *(v12 + 580) = *(v12 + 556);
    v34[0] = a1;
    do
    {
      v34[v25 + 1] = *(v12 + 560 + v25 * 4);
      ++v25;
    }

    while (v25 != 6);
    if (v15)
    {
      sub_27719FFC4();
    }

    std::mutex::unlock(v10);
    if (v19)
    {
      sub_27719B8B0(a1, 1);
    }

    sub_27719AF24(3, v34, 0x1CuLL);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v27 = *(v12 + 320);
      v28 = *(v12 + 560);
      v29 = *(v12 + 564);
      v30 = *(v12 + 568);
      v31 = *(v12 + 572);
      v32 = *(v12 + 576);
      v33 = *(v12 + 580);
      *buf = 67110656;
      *v36 = v27;
      *&v36[4] = 2048;
      *&v36[6] = v28;
      v37 = 2048;
      v38 = v29;
      v39 = 2048;
      v40 = v30;
      v41 = 2048;
      v42 = v31;
      v43 = 2048;
      v44 = v32;
      v45 = 2048;
      v46 = v33;
      _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - PostNotification: (display: %d, brightness: %f, backlight: %f, edrScaling: %f, maxLuminance: %f, ambientIlluminance: %f, brightnessScaler: %f)\n", buf, 0x44u);
    }
  }

  else
  {

    std::mutex::unlock(v10);
  }
}

float sub_27719B470(_BYTE *a1)
{
  v2.n128_f64[0] = sub_27719B074();
  v3 = v2.n128_u64[0];
  sub_27719B514((a1 + 32), v2, v4, v5);
  v9 = v6.n128_f32[0];
  if (a1[1] == 1)
  {
    v6.n128_u64[0] = v3;
    sub_27719B514((a1 + 80), v6, v7, v8);
  }

  else
  {
    sub_27719AE8C(a1);
  }

  v11 = 0.000001;
  v12 = 0.000001;
  if (v9 >= 0.000001)
  {
    v12 = 1.0;
    if (v9 <= 1.0)
    {
      v12 = v9;
    }
  }

  if (v10 >= 0.000001)
  {
    v11 = 1.0;
    if (v10 <= 1.0)
    {
      v11 = v10;
    }
  }

  if (v11 < v12)
  {
    v11 = v12;
  }

  return v12 / v11;
}

uint64_t sub_27719B514(uint64_t result, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = *(result + 32);
  if (!v5)
  {
    sub_2771AB510();
  }

  v6 = *(result + 8);
  v7 = *(result + 16);
  if (v6 > a2.n128_f64[0])
  {
    a2.n128_u64[0] = *(result + 8);
  }

  if (v7 != 0.0 && a2.n128_f64[0] <= v6 + v7)
  {
    a2.n128_f64[0] = a2.n128_f64[0] - v6;
    a2.n128_f32[0] = a2.n128_f64[0];
    a3.n128_f64[0] = a2.n128_f32[0];
    v9 = v7;
    if (v7 >= a2.n128_f32[0])
    {
      v9 = a2.n128_f32[0];
    }

    a2.n128_u32[0] = *result;
    a3.n128_u32[0] = *(result + 4);
    a4.n128_f64[0] = v9 / v7;
    a4.n128_f32[0] = a4.n128_f64[0];

    return v5(a2, a3, a4);
  }

  return result;
}

uint64_t sub_27719B588(uint64_t a1)
{
  if (a1 == -559038737)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2771AAE34();
    }

    return 0;
  }

  else
  {
    v1 = a1;
    result = qword_281343538;
    v3 = 16;
    while (*(result + 320) != v1)
    {
      result += 584;
      if (!--v3)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2771AADB8();
        }

        return 0;
      }
    }
  }

  return result;
}

float sub_27719B61C(uint64_t a1)
{
  std::mutex::lock((a1 + 136));
  v2 = sub_27719B470(a1);
  std::mutex::unlock((a1 + 136));
  return v2;
}

void sub_27719B680(uint64_t a1, unsigned __int8 a2, float a3)
{
  std::mutex::lock((a1 + 136));
  if (vabds_f32(a3, sub_27719B8A8(a1 + 32)) >= 0.000001)
  {
    v6 = sub_27719B470(a1);
    v8 = v7;
    nullsub_1();
    v9 = 0.0;
    if ((*(a1 + 26) & a2) != 0)
    {
      v9 = 100.0;
    }

    sub_27719D2F4(a1 + 32, v6 * v8, a3, v9);
    sub_27719D2CC(a1 + 32);
    sub_27719D3D8(a1);
  }

  std::mutex::unlock((a1 + 136));
}

void sub_27719B77C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  std::mutex::unlock((v9 + 136));
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = (*(*v12 + 16))(v12);
      LODWORD(a9) = 136315394;
      *(&a9 + 4) = "SetBrightness";
      WORD6(a9) = 2080;
      *(&a9 + 14) = v13;
      _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: exception %s", &a9, 0x16u);
    }

    sub_27719D86C();
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x277D82920] + 16;
    __cxa_throw(exception, MEMORY[0x277D82790], MEMORY[0x277D826E8]);
  }

  _Unwind_Resume(a1);
}

void sub_27719B8B0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v49 = *MEMORY[0x277D85DE8];
  v43 = a1;
  v4 = qword_281343528;
  std::mutex::lock(qword_281343528);
  v5 = sub_27719B588(a1);
  if (!v5)
  {
LABEL_65:
    std::mutex::unlock(v4);
    return;
  }

  v6 = v5;
  v7 = (v5 + 376);
  memset_pattern16((v5 + 376), &unk_2771ABEE0, 0x18uLL);
  if (*(v6 + 312))
  {
    v8 = *(v6 + 296);
    if (v8 == (v6 + 304))
    {
      goto LABEL_14;
    }

    v9 = 0;
    v10 = 1.0;
    do
    {
      v11 = v8[10] >= 0.000001 && v10 > v8[10];
      if (v11)
      {
        v10 = v8[10];
      }

      v12 = *(v8 + 1);
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = *(v8 + 2);
          v14 = *v13 == v8;
          v8 = v13;
        }

        while (!v14);
      }

      v9 |= v11;
      v8 = v13;
    }

    while (v13 != (v6 + 304));
    if ((v9 & 1) == 0)
    {
LABEL_14:
      v10 = *(v6 + 324);
    }
  }

  else
  {
    *(v6 + 340) = *(v6 + 324);
    v10 = 0.0;
  }

  v15 = (*(v6 + 364) * *(v6 + 556)) / *(v6 + 356);
  *(v6 + 380) = v15;
  v16 = 0.000001;
  if (v15 < 0.000001 || (v16 = 1.0, v15 > 1.0))
  {
    *(v6 + 380) = v16;
  }

  *(v6 + 384) = v10;
  v17 = *(v6 + 324);
  *(v6 + 376) = v17;
  *(v6 + 388) = *(v6 + 444);
  if (*(v6 + 400) == 1)
  {
    *(v6 + 392) = 1065353216;
  }

  if (*(v6 + 368) == 1)
  {
    *(v6 + 396) = 1065353216;
  }

  for (i = 380; i != 400; i += 4)
  {
    if (v17 < *(v6 + i))
    {
      v17 = *(v6 + i);
      v7 = (v6 + i);
    }
  }

  *(v6 + 340) = *v7;
  *(v6 + 372) = 897988541;
  v19 = 0.000001;
  for (j = 376; j != 400; j += 4)
  {
    if (j != 388)
    {
      v21 = *(v6 + j);
      if (v21 > v19)
      {
        *(v6 + 372) = v21;
        v19 = v21;
      }
    }
  }

  v22 = sub_27719B61C(v6);
  *(v6 + 372) = fmaxf(*(v6 + 372), v22 * v23);
  if (*(v6 + 312))
  {
    if (*(v6 + 552) != 1)
    {
      goto LABEL_58;
    }

    if (*(v6 + 440) != 1)
    {
      goto LABEL_58;
    }

    sub_2771A4F94(v43, v10 < 0.82645);
    if (!sub_2771A5120(v43))
    {
      goto LABEL_58;
    }

    v24 = v43;
    if (dword_281341428 != v43)
    {
      goto LABEL_58;
    }

    v25 = sub_27719B588(v43);
    if (!v25)
    {
      goto LABEL_58;
    }

    v26 = v25;
    *(v25 + 444) = *(v25 + 324);
    if (*(v25 + 424))
    {
      goto LABEL_58;
    }

    v27 = dispatch_get_global_queue(0, 0);
    v28 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v27);
    v29 = *(v26 + 424);
    *(v26 + 424) = v28;

    *(v26 + 512) = 0;
    if (*(v26 + 448))
    {
      for (k = fmin(vcvtad_u64_f64((sub_27719B074() - *(v26 + 504)) / (60 * *(v26 + 460))), 6.0); k; --k)
      {
        sub_2771A5AD0(v26 + 448, (v26 + 520), 0, 0.0, 0.0, 100.0);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v31 = *(v26 + 448);
        *buf = 136315394;
        *&buf[4] = "FastForwardMitigationState";
        *&buf[12] = 1024;
        *&buf[14] = v31;
        _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: fastforward sbim to stage %d\n", buf, 0x12u);
      }
    }

    v32 = *(v26 + 424);
    if (v32)
    {
      v33 = dispatch_time(0, 1000000000);
      dispatch_source_set_timer(v32, v33, 1000000000 * *(v26 + 460), 1000000000 * *(v26 + 460));
      v34 = *(v26 + 424);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_2771A530C;
      v47 = &unk_27A70E400;
      v48 = v24;
      dispatch_source_set_event_handler(v34, buf);
      dispatch_resume(*(v26 + 424));
      v35 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v27);
      v36 = *(v26 + 432);
      *(v26 + 432) = v35;

      v37 = *(v26 + 432);
      if (v37)
      {
        v38 = dispatch_time(0, 1000000000);
        dispatch_source_set_timer(v37, v38, 1000000000 * *(v26 + 464), 1000000000 * *(v26 + 464));
        v39 = *(v26 + 432);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = sub_2771A5688;
        handler[3] = &unk_27A70E400;
        v45 = v24;
        dispatch_source_set_event_handler(v39, handler);
        dispatch_resume(*(v26 + 432));
LABEL_57:

LABEL_58:
        if (sub_27719BFFC(v6))
        {
          goto LABEL_59;
        }

        sub_27719DBC8(v6, 1);
        std::mutex::unlock(v4);
        v40 = 1;
        goto LABEL_61;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2771AAB20();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2771AABA8();
    }

    sub_27719F7C4(v24);
    goto LABEL_57;
  }

  if (!sub_27719BFFC(v6))
  {
LABEL_59:
    v41 = 1;
    goto LABEL_62;
  }

  if (*(v6 + 552) == 1 && sub_2771A5120(v43))
  {
    sub_27719F7C4(v43);
    sub_2771A4F94(v43, 0);
  }

  sub_27719DBC8(v6, 0);
  std::mutex::unlock(v4);
  v40 = 2;
LABEL_61:
  sub_27719AF24(v40, &v43, 4uLL);
  v41 = 0;
LABEL_62:
  sub_27719BF54(v6, 1);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v42 = *(v6 + 340);
    *buf = 136315394;
    *&buf[4] = "EDRServerUpdateMinScalingFactor";
    *&buf[12] = 2048;
    *&buf[14] = v42;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s min scaling factor set to: %f\n", buf, 0x16u);
  }

  sub_27719C004(v6, v2, *(v6 + 340));
  if (v41)
  {
    goto LABEL_65;
  }
}

void sub_27719BF54(uint64_t a1, char a2)
{
  std::mutex::lock((a1 + 136));
  *(a1 + 25) = a2;
  sub_27719BFB4(a1, v4);

  std::mutex::unlock((a1 + 136));
}

void sub_27719BFB4(uint64_t result, __n128 a2)
{
  if (*(result + 24) == 1)
  {
    v2 = *(result + 25);
    if (*(result + 26) == v2)
    {
      return;
    }

    *(result + 26) = v2;
    v3 = 1.0;
    if (v2)
    {
      v3 = *(result + 4);
    }

    goto LABEL_5;
  }

  if (*(result + 26))
  {
    *(result + 26) = 0;
    v3 = 1.0;
LABEL_5:
    sub_27719DC30(result, v3);
  }
}

void sub_27719C004(uint64_t a1, char a2, float a3)
{
  std::mutex::lock((a1 + 136));
  *(a1 + 1) = a2;
  v6 = 0.001;
  if (a3 >= 0.001)
  {
    v6 = a3;
  }

  *(a1 + 4) = v6;
  if (v6 >= 0.5)
  {
    v8 = 1.0;
    v9 = 1.0 - v6;
    v10 = 0.0;
    v11 = v6;
  }

  else
  {
    v7 = 0.5 - v6 + 0.5 - v6;
    v8 = (v6 * -2.0) / (v7 + -1.0);
    v9 = (1.0 - v7) / (v8 + v8);
    v10 = (v8 * v7) / (v7 + -1.0);
    v11 = (v8 + ((v7 * -2.0) * v8)) / ((v7 * -2.0) + 2.0);
  }

  *(a1 + 8) = v9;
  *(a1 + 12) = v10;
  *(a1 + 16) = v11;
  *(a1 + 20) = v8;
  if (*(a1 + 26) == 1)
  {
    sub_27719DC30(a1, v6);
  }

  std::mutex::unlock((a1 + 136));
}

uint64_t sub_27719C118()
{
  if ((atomic_load_explicit(&qword_281343548, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_281343548))
  {
    operator new();
  }

  return qword_281341460;
}

uint64_t *sub_27719C1A4(void *a1, int *a2)
{
  result = sub_27719C1F0(a1, a2);
  if (result)
  {
    v4 = result;
    do
    {
      v4 = *v4;
    }

    while (v4 && *(v4 + 16) == *a2);
  }

  return result;
}

uint64_t *sub_27719C1F0(void *a1, int *a2)
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

void sub_27719C2A4(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) != 0 || (*(a1 + 56) & 1) == 0)
  {
    v9 = *a1;
    if (*a1)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 0x40000000;
      v15[2] = sub_2771A8FB4;
      v15[3] = &unk_27A70E568;
      v10 = a1[1];
      v16 = *a1;
      v17 = v10;
      v11 = a1[3];
      v18 = a1[2];
      v19 = v11;
      v20 = a3;
      v21 = a2;
      v22 = a4;
      dispatch_sync(v9, v15);
    }

    else
    {
      v12 = *(a1 + 2);
      if (v12)
      {
        (*(v12 + 16))(v12, a2, a3, a4, *(a1 + 4));
      }

      v13 = *(a1 + 5);
      if (v13)
      {
        v14 = *(a1 + 6);

        v13(a2, a3, a4, v14);
      }
    }
  }
}

void sub_27719C3B8(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  v64 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 32);
  std::mutex::lock(v8);
  v9 = 0;
  if (a3 && a4 >= 4)
  {
    v9 = *a3;
  }

  v10 = *(a1 + 32);
  if (a2 == 3)
  {
    v11 = v10[12];
    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = v10 + 12;
    do
    {
      v13 = *(v11 + 32);
      v14 = v13 >= v9;
      v15 = v13 < v9;
      if (v14)
      {
        v12 = v11;
      }

      v11 = *(v11 + 8 * v15);
    }

    while (v11);
    if (v12 == v10 + 12 || v9 < *(v12 + 8))
    {
LABEL_13:
      operator new[]();
    }

    v35 = 0;
    v36 = v12[5];
    do
    {
      *(v36 + v35 * 4) = a3[v35 + 1];
      ++v35;
    }

    while (v35 != 6);
  }

  v16 = v10[8];
  if (v16 != v10 + 9)
  {
    v44 = v8;
    v17 = MEMORY[0x277D85DD0];
    do
    {
      if (sub_27719C7D8(*(v16 + 8)) == v9)
      {
        v18 = v16[6];
        if (v16[7])
        {
          v19 = _Block_copy(v18);
          v20 = v16[7];
          block[0] = v17;
          block[1] = 3221225472;
          block[2] = sub_27719AD50;
          block[3] = &unk_27A70C0D8;
          v46 = v19;
          v47 = a2;
          v21 = v19;
          dispatch_async(v20, block);
        }

        else
        {
          v18[2](v18, a2);
        }
      }

      v22 = v16[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v16[2];
          v24 = *v23 == v16;
          v16 = v23;
        }

        while (!v24);
      }

      v10 = *(a1 + 32);
      v16 = v23;
    }

    while (v23 != v10 + 9);
    v8 = v44;
  }

  if (a2 != 3)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      goto LABEL_44;
    }

    if (a2 > 5)
    {
      v31 = "UnknownNotification";
    }

    else
    {
      v31 = off_27A70E488[a2];
    }

    buf = 136315394;
    buf_4 = v31;
    v50 = 1024;
    v51 = v9;
    v32 = MEMORY[0x277D86220];
    v33 = "libEDR - NotificationCallback: (type: %s, display: %d)\n";
    v34 = 18;
LABEL_43:
    _os_log_impl(&dword_27719A000, v32, OS_LOG_TYPE_INFO, v33, &buf, v34);
    goto LABEL_44;
  }

  v27 = v10[12];
  v25 = v10 + 12;
  v26 = v27;
  if (v27)
  {
    v28 = v25;
    do
    {
      v29 = v26[8];
      v14 = v29 >= v9;
      v30 = v29 < v9;
      if (v14)
      {
        v28 = v26;
      }

      v26 = *&v26[2 * v30];
    }

    while (v26);
    if (v28 != v25 && v9 >= *(v28 + 8))
    {
      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_44;
      }

      v37 = v28[5];
      v38 = *v37;
      v39 = v37[1];
      v40 = v37[2];
      v41 = v37[3];
      v42 = v37[4];
      v43 = v37[5];
      buf = 136316930;
      buf_4 = "kEDRNotifyBrightness";
      v50 = 1024;
      v51 = v9;
      v52 = 2048;
      v53 = v38;
      v54 = 2048;
      v55 = v39;
      v56 = 2048;
      v57 = v40;
      v58 = 2048;
      v59 = v41;
      v60 = 2048;
      v61 = v42;
      v62 = 2048;
      v63 = v43;
      v32 = MEMORY[0x277D86220];
      v33 = "libEDR - NotificationCallback: (type: %s, display: %d, brightness: %f, backlight: %f, edrScaler: %f, maxLuminance: %f, ambientIlluminance: %f, brightnessScaler: %f)\n";
      v34 = 78;
      goto LABEL_43;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_2771AAF38(v9);
  }

LABEL_44:
  std::mutex::unlock(v8);
}

uint64_t sub_27719C7D8(unsigned int a1)
{
  v1 = dword_281341428;
  if (!qword_2813434C0)
  {
    operator new();
  }

  v2 = *(qword_2813434C0 + 8);
  if (v2)
  {
    v3 = qword_2813434C0 + 8;
    do
    {
      v4 = *(v2 + 28);
      v5 = v4 >= a1;
      v6 = v4 < a1;
      if (v5)
      {
        v3 = v2;
      }

      v2 = *(v2 + 8 * v6);
    }

    while (v2);
    if (v3 != qword_2813434C0 + 8 && *(v3 + 28) <= a1)
    {
      return *(v3 + 32);
    }
  }

  return v1;
}

void sub_27719C878(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  ++qword_281341448;
  v3 = sub_27719B074();
  v7 = *(a1 + 40);
  v6 = (a1 + 40);
  v8 = v7;
  v9 = v3 - v7;
  if (v3 - v7 > 0.0)
  {
    v10 = ++qword_281341438;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v30 = "ScheduleSetBrightnessIn_block_invoke";
      v31 = 2048;
      v32 = v9;
      v33 = 2048;
      v34 = v10;
      v35 = 2048;
      v36 = qword_281341448;
      _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: enter WaitUntil late %f millisecond (%llu / %llu)", buf, 0x2Au);
      v8 = *v6;
    }
  }

  sub_27719CD7C(v8, v4, v5);
  v11 = sub_27719B074() - *v6;
  if (v11 > 1.0)
  {
    v12 = ++qword_281341440;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 136315906;
    v30 = "ScheduleSetBrightnessIn_block_invoke";
    v31 = 2048;
    v32 = v11;
    v33 = 2048;
    v34 = v12;
    v35 = 2048;
    v36 = qword_281341448;
    v13 = MEMORY[0x277D86220];
    v14 = "%s: exit WaitUntil late %f millisecond (%llu / %llu)";
    goto LABEL_10;
  }

  if (v11 < -0.100000001)
  {
    v15 = ++qword_280A681D0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v30 = "ScheduleSetBrightnessIn_block_invoke";
      v31 = 2048;
      v32 = -v11;
      v33 = 2048;
      v34 = v15;
      v35 = 2048;
      v36 = qword_281341448;
      v13 = MEMORY[0x277D86220];
      v14 = "%s: exit WaitUntil early %f millisecond (%llu / %llu)";
LABEL_10:
      _os_log_impl(&dword_27719A000, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 0x2Au);
    }
  }

LABEL_11:
  std::mutex::lock((v2 + 136));
  v16 = sub_27719CDF0((v2 + 256), v6);
  v18 = v16;
  v19 = v17;
  if (v16 != v17)
  {
    v20 = v16;
    while ((v20[3] & 1) == 0)
    {
      v20 = *v20;
      if (v20 == v17)
      {
        goto LABEL_24;
      }
    }

    if (v20 == v17)
    {
      do
      {
LABEL_24:
        v28 = *v18;
        sub_27719CEFC((v2 + 256), v18);
        v18 = v28;
      }

      while (v28 != v19);
      goto LABEL_25;
    }

    do
    {
      v21 = *v18;
      sub_27719CEFC((v2 + 256), v18);
      v18 = v21;
    }

    while (v21 != v19);
    if (*(v2 + 128))
    {
      sub_27719B470(v2);
      v22 = sub_27719B074();
      (*(*(v2 + 128) + 16))();
      v23 = sub_27719B074() - v22;
      if (v23 > 1.0)
      {
        v24 = ++qword_281341430;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v30 = "ScheduleSetBrightnessIn_block_invoke";
          v31 = 2048;
          v32 = v23;
          v33 = 2048;
          v34 = v24;
          v35 = 2048;
          v36 = qword_281341448;
          _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: callback takes %f millisecond (%llu / %llu)", buf, 0x2Au);
        }
      }
    }

    sub_27719D310(v2);
    v26 = v25;
    if (v25 > 0.0)
    {
      v27 = sub_27719B074();
      sub_27719D43C(v2, v26 + v27);
    }
  }

LABEL_25:
  std::condition_variable::notify_all((v2 + 208));
  std::mutex::unlock((v2 + 136));
}

void sub_27719CC40(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  std::mutex::unlock((v11 + 136));
  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = (*(*v14 + 16))(v14);
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "ScheduleSetBrightnessIn_block_invoke";
      WORD6(buf) = 2080;
      *(&buf + 14) = v15;
      _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: exception %s", &buf, 0x16u);
    }

    sub_27719D86C();
    exception = __cxa_allocate_exception(8uLL);
    *exception = MEMORY[0x277D82920] + 16;
    __cxa_throw(exception, MEMORY[0x277D82790], MEMORY[0x277D826E8]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_27719CD7C(double a1, double a2, double a3)
{
  if (qword_281341450 != -1)
  {
    sub_27719D80C();
  }

  LODWORD(a2) = HIDWORD(qword_281341458);
  LODWORD(a3) = qword_281341458;

  return mach_wait_until((a1 * 1000000.0 * *&a2 / *&a3));
}

double *sub_27719CDF0(void *a1, double *a2)
{
  result = sub_27719CE3C(a1, a2);
  if (result)
  {
    v4 = result;
    do
    {
      v4 = *v4;
    }

    while (v4 && *(v4 + 16) == *a2);
  }

  return result;
}

double *sub_27719CE3C(void *a1, double *a2)
{
  v2 = *a2;
  if (*a2 == 0.0)
  {
    v2 = 0;
  }

  v3 = a1[1];
  if (!*&v3)
  {
    return 0;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = *(result + 1);
    if (v8 == v2)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
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
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_27719CEFC(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_27719CF40(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *sub_27719CF40@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

double sub_27719D07C(uint64_t a1, float *a2)
{
  v3 = 0;
  v31 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(a1 + 32);
  *(v5 + 564) = *a2;
  v6 = a2[1];
  *(v5 + 568) = v6;
  *(v5 + 572) = *(v5 + 356);
  *(v5 + 560) = v4 * v6;
  *(v5 + 580) = *(v5 + 556);
  v16[0] = *(v5 + 320);
  do
  {
    v16[v3 + 1] = *(v5 + 560 + v3 * 4);
    ++v3;
  }

  while (v3 != 6);
  sub_27719AF24(3, v16, 0x1CuLL);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 320);
    v10 = *(v8 + 560);
    v11 = *(v8 + 564);
    v12 = *(v8 + 568);
    v13 = *(v8 + 572);
    v14 = *(v8 + 576);
    v15 = *(v8 + 580);
    *buf = 67110656;
    v18 = v9;
    v19 = 2048;
    v20 = v10;
    v21 = 2048;
    v22 = v11;
    v23 = 2048;
    v24 = v12;
    v25 = 2048;
    v26 = v13;
    v27 = 2048;
    v28 = v14;
    v29 = 2048;
    v30 = v15;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - PostNotification: (display: %d, brightness: %f, backlight: %f, edrScaling: %f, maxLuminance: %f, ambientIlluminance: %f, brightnessScaler: %f)\n", buf, 0x44u);
  }

  return result;
}

uint64_t *sub_27719D1F8(void *a1, int *a2)
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

  result = *v6;
  if (!*v6)
  {
    return result;
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      break;
    }

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

LABEL_16:
    result = *result;
    if (!result)
    {
      return result;
    }
  }

  if (*(result + 4) != v3)
  {
    goto LABEL_16;
  }

  v9 = result;
  do
  {
    v9 = *v9;
  }

  while (v9 && *(v9 + 4) == v3);
  return result;
}

double sub_27719D2F4(uint64_t a1, float a2, float a3, double a4)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  result = a4 / *(a1 + 24);
  *(a1 + 16) = result;
  return result;
}

void sub_27719D310(uint64_t a1)
{
  if (sub_27719D4F4(a1 + 32) && sub_27719D4F4(a1 + 80))
  {
    *(a1 + 1) = 0;
    return;
  }

  if (sub_27719D4F4(a1 + 32) || !sub_27719D4F4(a1 + 80))
  {
    if (!sub_27719D4F4(a1 + 32) || sub_27719D4F4(a1 + 80))
    {
      sub_2771AA9B4(a1 + 32, v2, v3, v4);
      sub_2771AA9B4(a1 + 80, v6, v7, v8);
      return;
    }

    v5 = a1 + 80;
  }

  else
  {
    *(a1 + 1) = 0;
    v5 = a1 + 32;
  }

  sub_2771AA9B4(v5, v2, v3, v4);
}

void sub_27719D3D8(uint64_t a1)
{
  for (i = *(a1 + 272); i; i = *i)
  {
    *(i + 24) = 0;
  }

  sub_27719D310(a1);
  v4 = v3 + sub_27719B074();

  sub_27719D43C(a1, v4);
}

void sub_27719D43C(uint64_t a1, double a2)
{
  if ((*(a1 + 200) & 1) == 0)
  {
    v2 = a2;
    v3 = 1;
    sub_27719D528(a1 + 256, &v2);
  }
}

void *sub_27719D5C4(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

uint64_t sub_27719D6AC(uint64_t a1, unint64_t a2, double *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_27719E038(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void sub_27719D86C()
{
  v40 = *MEMORY[0x277D85DE8];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *v8 = 0u;
  v9 = 0u;
  v0 = backtrace(v8, 128);
  v1 = backtrace_symbols(v8, v0);
  if (v0 >= 1)
  {
    v2 = v1;
    v3 = v0;
    v4 = MEMORY[0x277D86220];
    do
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *v2;
        *buf = 136315138;
        v7 = v5;
        _os_log_impl(&dword_27719A000, v4, OS_LOG_TYPE_DEFAULT, "%s\n", buf, 0xCu);
      }

      ++v2;
      --v3;
    }

    while (v3);
  }
}

double sub_27719D9A8(uint64_t a1, float a2, float a3, float a4)
{
  *(a1 + 4) = a4;
  sub_2771AA99C(a1 + 32, sub_27719DEA8);
  sub_2771AA9A4(a1 + 32, sub_27719DED8);
  sub_2771AA99C(a1 + 80, sub_27719DF60);
  sub_2771AA9A4(a1 + 80, sub_27719DF94);
  sub_27719D2F4(a1 + 32, a2 * a3, a2 * a3, 0.0);

  return sub_27719D2F4(a1 + 80, a3, a3, 0.0);
}

uint64_t sub_27719DA70(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "libEDR - EDRDisplay::~EDRDisplay() - Enter\n", buf, 2u);
  }

  *(a1 + 200) = 1;
  sub_27719DB48(a1);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "libEDR - EDRDisplay::~EDRDisplay() - Exit\n", v3, 2u);
  }

  sub_27719DFB8(a1 + 256);
  std::condition_variable::~condition_variable((a1 + 208));
  std::mutex::~mutex((a1 + 136));
  return a1;
}

void sub_27719DB48(uint64_t a1)
{
  v2.__m_ = (a1 + 136);
  v2.__owns_ = 1;
  std::mutex::lock((a1 + 136));
  if (!*(a1 + 280))
  {
    goto LABEL_4;
  }

  do
  {
    std::condition_variable::wait((a1 + 208), &v2);
  }

  while (*(a1 + 280));
  if (v2.__owns_)
  {
LABEL_4:
    std::mutex::unlock(v2.__m_);
  }
}

void sub_27719DBC8(uint64_t a1, char a2)
{
  std::mutex::lock((a1 + 136));
  *(a1 + 24) = a2;
  sub_27719BFB4(a1, v4);

  std::mutex::unlock((a1 + 136));
}

void sub_27719DC30(uint64_t a1, float a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4.n128_f64[0] = sub_27719B074();
  sub_27719B514(a1 + 80, v4, v5, v6);
  v8 = v7;
  if (vabds_f32(v7, a2) >= 0.000001)
  {
    v9 = fabsf(log2f(v7 / a2));
    nullsub_1();
    v10 = (v9 * 1000.0);
    sub_27719D2F4(a1 + 80, v8, a2, v10);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315906;
      v12 = "TransitionToEDRScalingFactor";
      v13 = 2048;
      v14 = v8;
      v15 = 2048;
      v16 = a2;
      v17 = 2048;
      v18 = v10;
      _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "libEDR - %s: start = %f, stop = %f, duration = %f\n", &v11, 0x2Au);
    }

    sub_27719D2CC(a1 + 80);
    sub_27719D3D8(a1);
  }
}

float sub_27719DD9C(uint64_t a1)
{
  std::mutex::lock((a1 + 136));
  v2 = sub_27719B8A8(a1 + 32);
  std::mutex::unlock((a1 + 136));
  return v2;
}

double sub_27719DDF8(uint64_t a1)
{
  std::mutex::lock((a1 + 136));
  sub_27719D310(a1);
  v3 = v2;
  std::mutex::unlock((a1 + 136));
  return v3;
}

void sub_27719DE54(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 128);
  *(a1 + 128) = _Block_copy(aBlock);
  if (v2)
  {

    _Block_release(v2);
  }
}

float sub_27719DEA8(float a1, float a2, float a3)
{
  if (a2 >= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (a2 < a1)
  {
    v4 = 1.0 - a3;
  }

  else
  {
    a1 = a2;
    v4 = a3;
  }

  v5 = sqrtf(v3);
  v6 = sqrtf(a1);
  return (v5 + (v4 * (v6 - v5))) * (v5 + (v4 * (v6 - v5)));
}

double sub_27719DED8(float a1, float a2, double a3)
{
  if (a1 <= a2)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (a1 <= a2)
  {
    a1 = a2;
  }

  if (v4 < 0.001)
  {
    v4 = 0.001;
  }

  if (a1 < 0.001)
  {
    a1 = 0.001;
  }

  v5 = *&dword_280A681C8 + *&dword_280A681C8;
  v6 = logf(a1 / v4);
  return a3 / ceilf(v6 / logf((v5 + 100.0) / 100.0));
}

uint64_t sub_27719DFB8(uint64_t a1)
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

void sub_27719E004()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void sub_27719E038(uint64_t result, size_t __n)
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

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
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
LABEL_6:

      sub_27719E128(result, prime);
    }
  }
}

void sub_27719E128(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_27719E004();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_27719E2A4(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (sub_27719E740(@"UseSimpleCurve", 1) != 0.0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v17 = "EDRServerContextInitialze";
      _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: UseSimpleCurve\n", buf, 0xCu);
    }

    sub_27719DC28(a1, 1);
  }

  v2 = (a1 + 324);
  v3 = sub_27719E858();
  v4 = sub_27719E7C4(@"MinEDRScalingFactorLimit", v3);
  if (*(a1 + 320) != dword_281341428)
  {
    v4 = 0.000001;
  }

  *(a1 + 324) = v4;
  if (v4 < 0.000001 || v4 > 1.0)
  {
    *v2 = sub_27719E858();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = *v2;
    *buf = 136315394;
    v17 = "EDRServerContextInitialze";
    v18 = 2048;
    v19 = v6;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: DefaultMinScalingFactor=%f\n", buf, 0x16u);
  }

  *(a1 + 372) = *(a1 + 324);
  v7 = sub_27719E7C4(@"RampingSpeedFactor", 0.5);
  if (v7 <= 0.0)
  {
    v7 = 0.5;
  }

  *(a1 + 328) = v7;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 328);
    *buf = 136315394;
    v17 = "EDRServerContextInitialze";
    v18 = 2048;
    v19 = v8;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: DefaultRampingSpeedFactor=%f\n", buf, 0x16u);
  }

  v9 = sub_27719E7C4(@"BrightnessAnimationTimeStepFactor", 1.0);
  if (v9 <= 0.0)
  {
    v9 = 1.0;
  }

  *(a1 + 332) = v9;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 332);
    *buf = 136315394;
    v17 = "EDRServerContextInitialze";
    v18 = 2048;
    v19 = v10;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: DefaultBrightnessAnimationTimeStepFactor=%f\n", buf, 0x16u);
  }

  v11 = sub_27719E7C4(@"TransitionAnimationTimeStepFactor", 2.0);
  if (v11 <= 0.0)
  {
    v11 = 2.0;
  }

  *(a1 + 336) = v11;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = *(a1 + 336);
    *buf = 136315394;
    v17 = "EDRServerContextInitialze";
    v18 = 2048;
    v19 = v12;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: DefaultTransitionAnimationTimeStepFactor=%f\n", buf, 0x16u);
  }

  *(a1 + 340) = *(a1 + 324);
  *(a1 + 356) = 1140457472;
  *(a1 + 360) = 0x43FA0000447A0000;
  *(a1 + 368) = 0;
  if ((atomic_load_explicit(byte_281343598, memory_order_acquire) & 1) == 0)
  {
    sub_2771AA9E4();
  }

  *(a1 + 456) = xmmword_2813413F8;
  v13 = HIDWORD(xmmword_281341408);
  *(a1 + 472) = xmmword_281341408;
  v14 = dword_281341418;
  *(a1 + 488) = dword_281341418;
  *(a1 + 492) = v13;
  *(a1 + 496) = v14;
  *(a1 + 440) = sub_27719E740(@"BIM", 1) != 0.0;
  byte_281343530 = sub_27719E740(@"BIMInfoLogging", 0) != 0.0;
  *(a1 + 472) = sub_27719E7C4(@"DeltaFactor", *(a1 + 472));
  *(a1 + 476) = sub_27719E7C4(@"MinutesPerStopMitigate", *(a1 + 476));
  *(a1 + 480) = sub_27719E7C4(@"MinutesPerStopRecovery", *(a1 + 480));
  *(a1 + 484) = sub_27719E7C4(@"FloatSbimAboveMax", *(a1 + 484));
  *(a1 + 488) = sub_27719E7C4(@"SbimSustainMax", *(a1 + 488));
  *(a1 + 444) = *(a1 + 324);
  *(a1 + 556) = 1065353216;
  sub_27719D9A8(a1, 1.0, 1.0, 0.125);
  sub_27719DD7C(a1, *(a1 + 344));
  sub_27719DD84(*(a1 + 348));
  sub_27719DD90(*(a1 + 352));
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_27719D07C;
  aBlock[3] = &unk_27A70C068;
  aBlock[4] = a1;
  sub_27719DE54(a1, aBlock);
}

float sub_27719E740(const __CFString *a1, _BOOL4 a2)
{
  v3 = CFPreferencesCopyValue(a1, @"com.apple.libEDR", *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFBooleanGetTypeID())
    {
      a2 = CFBooleanGetValue(v4) != 0;
    }

    CFRelease(v4);
  }

  return a2;
}

float sub_27719E7C4(const __CFString *a1, float a2)
{
  v2 = a2;
  valuePtr = a2;
  v3 = CFPreferencesCopyValue(a1, @"com.apple.libEDR", *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberFloatType, &valuePtr);
    }

    CFRelease(v4);
    return valuePtr;
  }

  return v2;
}

float sub_27719E858()
{
  v5 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(byte_281343580, memory_order_acquire) & 1) == 0)
  {
    sub_2771AAA3C();
  }

  if ((atomic_load_explicit(byte_281343588, memory_order_acquire) & 1) == 0)
  {
    sub_2771AAAA8();
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v1 = 136315394;
    v2 = "MinScalingFactorByModel";
    v3 = 2048;
    v4 = *&dword_281343570;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: min scaling value=%f\n", &v1, 0x16u);
  }

  return *&dword_281343570;
}

void EDRServerStartService()
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v6 = "EDRServerStartService";
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s\n", buf, 0xCu);
  }

  *v4 = 0x200000006;
  v3 = 32;
  xmmword_281343501 = 0u;
  unk_281343511 = 0u;
  sysctl(v4, 2u, &xmmword_281343501, &v3, 0, 0);
  *v4 = 0x4100000001;
  v3 = 32;
  xmmword_2813434D9 = 0u;
  unk_2813434E9 = 0u;
  sysctl(v4, 2u, &xmmword_2813434D9, &v3, 0, 0);
  if (!qword_281343528)
  {
    operator new();
  }

  if (!qword_281343540)
  {
    v0 = dispatch_queue_create("com.apple.libEDR", 0);
    v1 = qword_281343540;
    qword_281343540 = v0;

    if (!qword_281343540)
    {
      qword_281343540 = dispatch_get_global_queue(0, 0);
    }
  }

  if (!qword_281343538)
  {
    operator new[]();
  }

  sub_2771A7134();
  sub_2771A73F0(qword_281343540, 0, sub_27719EDC8, 0);
  notify_register_dispatch("com.apple.system.lowpowermode", &unk_2813434D0, qword_281343540, &unk_28864D250);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v6 = "EDRServerRegisterForDumpStateToSysDiagnose";
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s\n", buf, 0xCu);
  }

  v2 = dispatch_get_global_queue(0, 0);
  os_state_add_handler();

  if (qword_281341488 != -1)
  {
    sub_2771AAAF8();
  }
}

void sub_27719EDC8(uint64_t a1, int a2, float *a3, uint64_t a4, int *a5, float *a6, _DWORD *a7)
{
  *&v51[5] = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 0:
      v10 = 0;
      goto LABEL_33;
    case 6:
      v31 = ++dword_281341498;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "EDRServerCreateClientID";
        v48 = 1024;
        v49 = v31;
        _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: cid=%d\n", buf, 0x12u);
        v31 = dword_281341498;
      }

      *a5 = 0;
      *a7 = 4;
      *a6 = v31;
      return;
    case 7:
      v10 = *a3;
LABEL_33:

      sub_2771A2C74(a1, v10);
      return;
    case 8:
      *a5 = 1;
      v19 = *a3;
      v20 = *(a3 + 1);
      v21 = 1;
      goto LABEL_29;
    case 9:
      *a5 = 2;
      v19 = *a3;
      v20 = *(a3 + 1);
      v21 = 0;
LABEL_29:

      sub_27719FD00(a1, v19, v20, v21);
      return;
    case 10:
      v25 = *(a3 + 1);
      if (EDRServerIsEnabledForDisplay(v25))
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      goto LABEL_68;
    case 11:
      v32 = *a3;
      v33 = *(a3 + 1);
      v34 = 1;
      goto LABEL_41;
    case 12:
      v32 = *a3;
      v33 = *(a3 + 1);
      v34 = 0;
LABEL_41:

      sub_2771A2EB0(a1, v32, v33, v34);
      return;
    case 13:
      v25 = *(a3 + 1);
      v43 = sub_27719B588(v25);
      if (!v43)
      {
        goto LABEL_63;
      }

      v44 = *(v43 + 368);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v45 = "No";
        *&buf[4] = "EDRServerHasAccessibilityLimit";
        *buf = 136315650;
        if (v44)
        {
          v45 = "Yes";
        }

        v48 = 1024;
        v49 = v25;
        v50 = 2080;
        *v51 = v45;
        _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: did=%d enabled=%s\n", buf, 0x1Cu);
        if ((v44 & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      else if (!v44)
      {
LABEL_63:
        v26 = 5;
        goto LABEL_68;
      }

      v26 = 4;
LABEL_68:
      *a5 = v26;
      *a6 = v25;
      return;
    case 14:
      v36 = *a3;
      v35 = *(a3 + 1);
      v37 = a3[2];
      v38 = 1.0;
      if (v37 < 1.0)
      {
        v37 = 1.0;
      }

      v39 = 1.0 / v37;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 136316162;
        *&buf[4] = "EDRServerSetDisplayEDRScalingFactorLimit";
        v48 = 1024;
        v49 = a1;
        v50 = 1024;
        v51[0] = v36;
        LOWORD(v51[1]) = 1024;
        *(&v51[1] + 2) = v35;
        HIWORD(v51[2]) = 2048;
        *&v51[3] = v39;
        _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: pid=%d cid=%d did=%d limit=%f\n", buf, 0x28u);
      }

      v46 = v36 | (a1 << 32);
      if (v39 <= 1.0 && v39 >= 0.000001)
      {
        v38 = v39;
      }

      v17 = qword_281343528;
      std::mutex::lock(qword_281343528);
      v41 = sub_27719B588(v35);
      if (!v41)
      {
        goto LABEL_57;
      }

      v42 = v41;
      sub_2771A3430((v41 + 296), &v46);
      if (v38 < 1.0)
      {
        *buf = v46;
        *&buf[8] = v38;
        sub_2771A34B4(v42 + 296, buf, buf);
      }

      sub_27719FFC4();
      std::mutex::unlock(v17);
      sub_27719B8B0(v35, 1);
      return;
    case 15:
      v15 = *(a3 + 1);
      v16 = a3[2];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        *&buf[4] = "EDRServerSetRampingSpeedFactor";
        v48 = 1024;
        v49 = a1;
        v50 = 1024;
        v51[0] = v15;
        LOWORD(v51[1]) = 2048;
        *(&v51[1] + 2) = v16;
        _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: pid=%d did=%d factor=%f\n", buf, 0x22u);
      }

      v17 = qword_281343528;
      std::mutex::lock(qword_281343528);
      v18 = sub_27719B588(v15);
      if (v18)
      {
        *(v18 + 344) = v16;
        if (v16 <= 0.0)
        {
          v16 = *(v18 + 328);
          *(v18 + 344) = v16;
        }

        sub_27719DD7C(v18, v16);
      }

      goto LABEL_57;
    case 16:
      v27 = *(a3 + 1);
      v28 = a3[2];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        *&buf[4] = "EDRServerSetBrightnessAnimationTimeStepFactor";
        v48 = 1024;
        v49 = a1;
        v50 = 1024;
        v51[0] = v27;
        LOWORD(v51[1]) = 2048;
        *(&v51[1] + 2) = v28;
        _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: pid=%d did=%d factor=%f\n", buf, 0x22u);
      }

      v17 = qword_281343528;
      std::mutex::lock(qword_281343528);
      v29 = sub_27719B588(v27);
      if (v29)
      {
        *(v29 + 348) = v28;
        if (v28 <= 0.0)
        {
          v28 = *(v29 + 332);
          *(v29 + 348) = v28;
        }

        sub_27719DD84(v28);
      }

      goto LABEL_57;
    case 17:
      v22 = *(a3 + 1);
      v23 = a3[2];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 136315906;
        *&buf[4] = "EDRServerSetTransitionAnimationTimeStepFactor";
        v48 = 1024;
        v49 = a1;
        v50 = 1024;
        v51[0] = v22;
        LOWORD(v51[1]) = 2048;
        *(&v51[1] + 2) = v23;
        _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: pid=%d did=%d factor=%f\n", buf, 0x22u);
      }

      v17 = qword_281343528;
      std::mutex::lock(qword_281343528);
      v24 = sub_27719B588(v22);
      if (v24)
      {
        *(v24 + 352) = v23;
        if (v23 <= 0.0)
        {
          v23 = *(v24 + 336);
          *(v24 + 352) = v23;
        }

        sub_27719DD90(v23);
      }

LABEL_57:
      std::mutex::unlock(v17);
      return;
    case 18:
      v11 = *(a3 + 1);
      *a5 = 18;
      v12 = qword_281343528;
      std::mutex::lock(qword_281343528);
      v13 = sub_27719B588(v11);
      if (v13)
      {
        v14 = *(v13 + 324);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 136315906;
          *&buf[4] = "EDRServerGetDefaultMinScalingFactor";
          v48 = 1024;
          v49 = a1;
          v50 = 1024;
          v51[0] = v11;
          LOWORD(v51[1]) = 2048;
          *(&v51[1] + 2) = v14;
          _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: pid=%d did=%d factor=%f\n", buf, 0x22u);
        }
      }

      else
      {
        v14 = 1.0;
      }

      std::mutex::unlock(v12);
      *a6 = v14;
      return;
    default:
      return;
  }
}

void sub_27719F580(int a1, int token)
{
  v10 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state(token, &state64);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    if (state64)
    {
      v2 = "On";
    }

    else
    {
      v2 = "Off";
    }

    *buf = 136315138;
    v9 = v2;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - LowPowerMode => %s\n", buf, 0xCu);
  }

  v3 = 400;
  v4 = 16;
  do
  {
    v5 = qword_281343528;
    std::mutex::lock(qword_281343528);
    v6 = *(qword_281343538 + v3 - 80);
    if (v6 == -559038737)
    {
      std::mutex::unlock(v5);
    }

    else
    {
      *(qword_281343538 + v3) = state64 != 0;
      std::mutex::unlock(v5);
      sub_27719B8B0(v6, 1);
    }

    v3 += 584;
    --v4;
  }

  while (v4);
}

NSObject *EDRServerStopService()
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "EDRServerStopService";
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s\n", &v4, 0xCu);
  }

  v0 = qword_281343538;
  v1 = -9344;
  do
  {
    v2 = *(v0 + v1 + 9664);
    if (v2 != -559038737)
    {
      sub_27719F7C4(v2);
      v0 = qword_281343538;
    }

    v1 += 584;
  }

  while (v1);
  sub_2771A7458(0);
  return sub_2771A734C();
}

void sub_27719F7C4(uint64_t a1)
{
  if (dword_281341428 == a1)
  {
    v1 = sub_27719B588(a1);
    if (v1)
    {
      v2 = v1;
      *(v1 + 444) = *(v1 + 324);
      v3 = *(v1 + 424);
      if (v3)
      {
        dispatch_source_cancel(v3);
        v4 = *(v2 + 424);
        *(v2 + 424) = 0;
      }

      v5 = *(v2 + 432);
      if (v5)
      {
        dispatch_source_cancel(v5);
        v6 = *(v2 + 432);
        *(v2 + 432) = 0;
      }
    }
  }
}

void EDRServerAddDisplay(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1 == -559038737)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2771AAD30();
    }
  }

  else
  {
    v1 = a1;
    if (sub_27719B588(a1))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2771AAC30();
      }
    }

    else
    {
      v2 = 0;
      for (i = 320; ; i += 584)
      {
        v4 = qword_281343528;
        std::mutex::lock(qword_281343528);
        if (*(qword_281343538 + i) == -559038737)
        {
          break;
        }

        std::mutex::unlock(v4);
        if (++v2 == 16)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            sub_2771AACAC();
          }

          return;
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v5 = 136315650;
        v6 = "EDRServerAddDisplay";
        v7 = 1024;
        v8 = v2;
        v9 = 1024;
        v10 = v1;
        _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: add context %d for display %d\n", &v5, 0x18u);
      }

      *(qword_281343538 + i) = v1;
      std::mutex::unlock(v4);
      sub_27719E2A4(qword_281343538 + i - 320);
    }
  }
}

void EDRServerRemoveDisplay(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1 != -559038737)
  {
    v1 = a1;
    v2 = qword_281343528;
    std::mutex::lock(qword_281343528);
    v3 = 0;
    v4 = 320;
    while (*(qword_281343538 + v4) != v1)
    {
      ++v3;
      v4 += 584;
      if (v3 == 16)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2771AAEBC();
        }

        goto LABEL_10;
      }
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = 136315650;
      v6 = "EDRServerRemoveDisplay";
      v7 = 1024;
      v8 = v3;
      v9 = 1024;
      v10 = v1;
      _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: remove context %d for display %d\n", &v5, 0x18u);
    }

    *(qword_281343538 + v4) = -559038737;
LABEL_10:
    std::mutex::unlock(v2);
  }
}

void EDRServerAddMainDisplay(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = 136315394;
    v3 = "EDRServerAddMainDisplay";
    v4 = 1024;
    v5 = a1;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: display = %d\n", &v2, 0x12u);
  }

  dword_281341428 = a1;
  if (!sub_27719B588(a1))
  {
    EDRServerAddDisplay(a1);
  }
}

void EDRServerEnableForDisplay(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = "No";
    v6 = "EDRServerEnableForDisplay";
    v5 = 136315650;
    if (v2)
    {
      v4 = "Yes";
    }

    v7 = 1024;
    v8 = a1;
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: did=%d enable=%s\n", &v5, 0x1Cu);
  }

  sub_27719FD00(0, 0, a1, v2);
}

void sub_27719FD00(unsigned int a1, unsigned int a2, uint64_t a3, int a4)
{
  v28 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = "No";
    *buf = 136316162;
    *&buf[4] = "EDRServerEnable";
    if (a4)
    {
      v8 = "Yes";
    }

    v20 = 1024;
    v21 = a1;
    v22 = 1024;
    v23 = a2;
    v24 = 1024;
    v25 = a3;
    v26 = 2080;
    v27 = v8;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: pid=%d cid=%d did=%d enable=%s\n", buf, 0x28u);
  }

  if (sub_27719E858() <= 1.0)
  {
    v9 = qword_281343528;
    std::mutex::lock(qword_281343528);
    v10 = sub_27719B588(a3);
    if (v10)
    {
      v11 = v10;
      v12 = a1;
      v18 = a2 | (a1 << 32);
      if (a4)
      {
        *buf = &v18;
        *(sub_2771A6994(v10 + 296, &v18, &unk_2771AD5D4, buf) + 10) = 0;
      }

      else if (a2 | a1)
      {
        if (!a1 || a2)
        {
          sub_2771A3430((v10 + 296), &v18);
        }

        else
        {
          v13 = *(v10 + 296);
          v14 = (v10 + 304);
          if (v13 != (v10 + 304))
          {
            do
            {
              if (*(v13 + 9) == v12)
              {
                v15 = sub_2771A303C((v11 + 296), v13);
                operator delete(v13);
              }

              else
              {
                v16 = v13[1];
                if (v16)
                {
                  do
                  {
                    v15 = v16;
                    v16 = *v16;
                  }

                  while (v16);
                }

                else
                {
                  do
                  {
                    v15 = v13[2];
                    v17 = *v15 == v13;
                    v13 = v15;
                  }

                  while (!v17);
                }
              }

              v13 = v15;
            }

            while (v15 != v14);
          }
        }
      }

      else
      {
        sub_2771A2C20(v10 + 296, *(v10 + 304));
        *(v11 + 304) = 0;
        *(v11 + 312) = 0;
        *(v11 + 296) = v11 + 304;
      }

      sub_27719FFC4();
      std::mutex::unlock(v9);
      sub_27719B8B0(a3, 1);
    }

    else
    {
      std::mutex::unlock(v9);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "EDRServerEnable";
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: non-EDR device\n", buf, 0xCu);
  }
}

void sub_27719FFC4()
{
  v45 = *MEMORY[0x277D85DE8];
  v0 = qword_281343538;
  v1 = 16;
  while (*(v0 + 320) != dword_281341428)
  {
    v0 += 584;
    if (!--v1)
    {
      return;
    }
  }

  memset(v44, 0, sizeof(v44));
  v2 = *(v0 + 296);
  if ((v0 + 304) != v2)
  {
    v3 = 0;
    do
    {
      if (v3 <= 0x3E)
      {
        v4 = snprintf(v44 + v3, 63 - v3, "(%d, %f)", *(v2 + 4), v2[10]);
        if (v4)
        {
          v3 += v4;
        }
      }

      v5 = *(v2 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v2 + 2);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while ((v0 + 304) != v6);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = sub_27719BFFC(v0);
    v9 = "NO";
    if (v8)
    {
      v9 = "YES";
    }

    v10 = *(v0 + 340);
    v11 = *(v0 + 324);
    v12 = *(v0 + 364);
    v13 = *(v0 + 356);
    v14 = *(v0 + 360);
    v15 = *(v0 + 556);
    v16 = *(v0 + 448);
    if (v16 > 3)
    {
      v17 = "UnknownMitigationStage";
    }

    else
    {
      v17 = off_27A70E4B8[v16];
    }

    *buf = 136317954;
    v21 = "UpdateAnalytics";
    v22 = 2080;
    v23 = &xmmword_281343501;
    v24 = 2080;
    v25 = &xmmword_2813434D9;
    v26 = 2080;
    v27 = v9;
    v28 = 2048;
    v29 = v10;
    v30 = 2080;
    v31 = v44;
    v32 = 2048;
    v33 = v11;
    v34 = 2048;
    v35 = v12;
    v36 = 2048;
    v37 = v13;
    v38 = 2048;
    v39 = v14;
    v40 = 2048;
    v41 = v15;
    v42 = 2080;
    v43 = v17;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: Hardware=%s, Software=%s, IsEDREnabled=%s, MinScalingFactor=%f, ScalingFactorLimits=[%s], DefaultMinScalingFactor=%f, TargetBrightness=%f, MaxLuminance=%f, AmbientIlluminance=%f, BrightnessScaler=%f, MitigationState=%s\n", buf, 0x7Au);
  }

  v19 = [MEMORY[0x277CCACA8] stringWithCString:v44 encoding:1];
  v18 = v19;
  AnalyticsSendEventLazy();
}

float EDRServerGetDisplayBrightnessForDisplay(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = qword_281343528;
  std::mutex::lock(qword_281343528);
  v3 = sub_27719B588(a1);
  if (v3)
  {
    v4 = sub_27719DD9C(v3) * *(v3 + 356);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = 136315650;
      v7 = "EDRServerGetDisplayBrightnessForDisplay";
      v8 = 1024;
      v9 = a1;
      v10 = 2048;
      v11 = v4;
      _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: did=%d val=%f\n", &v6, 0x1Cu);
    }
  }

  else
  {
    v4 = 0.0;
  }

  std::mutex::unlock(v2);
  return v4;
}

uint64_t EDRServerIsEnabledForDisplay(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = qword_281343528;
  std::mutex::lock(qword_281343528);
  v3 = sub_27719B588(a1);
  if (v3)
  {
    v4 = sub_27719BFFC(v3);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = "No";
      v8 = "EDRServerIsEnabledForDisplay";
      v7 = 136315650;
      if (v4)
      {
        v5 = "Yes";
      }

      v9 = 1024;
      v10 = a1;
      v11 = 2080;
      v12 = v5;
      _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: did=%d enabled=%s\n", &v7, 0x1Cu);
    }
  }

  else
  {
    v4 = 0;
  }

  std::mutex::unlock(v2);
  return v4;
}

void EDRServerGetCurrentDisplayPropertiesForDisplay(uint64_t a1, float *a2, float *a3, float *a4, float *a5, float *a6)
{
  v42 = *MEMORY[0x277D85DE8];
  v12 = qword_281343528;
  std::mutex::lock(qword_281343528);
  v13 = sub_27719B588(a1);
  if (v13)
  {
    v14 = v13;
    *a2 = sub_27719B61C(v13) * *(v13 + 356);
    *a3 = v15;
    *a4 = v14[89];
    *a5 = v14[90];
    *a6 = v14[139];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = sub_27719BFFC(v14);
      v17 = "disabled";
      if (v16)
      {
        v17 = "enabled";
      }

      v18 = *a2;
      v19 = *a3;
      v20 = *a4;
      v21 = *a5;
      v22 = *a6;
      v23 = v14[85];
      v24 = 136317186;
      v25 = "EDRServerGetCurrentDisplayPropertiesForDisplay";
      v26 = 1024;
      v27 = a1;
      v28 = 2080;
      v29 = v17;
      v30 = 2048;
      v31 = v18;
      v32 = 2048;
      v33 = v19;
      v34 = 2048;
      v35 = v20;
      v36 = 2048;
      v37 = v21;
      v38 = 2048;
      v39 = v22;
      v40 = 2048;
      v41 = v23;
      _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: (display: %d, EDR: %s, backlight: %f, edrScaling: %f, maxLuminance: %f, ambientIlluminance: %f, brightnessScaler: %f, gMinScalingFactor: %f)\n", &v24, 0x58u);
    }
  }

  std::mutex::unlock(v12);
}

void EDRServerRegisterCallbackBlockOnQueue(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "EDRServerRegisterCallbackBlockOnQueue";
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s\n", &v5, 0xCu);
  }

  EDRRegisterCallbackBlockOnQueue(0, v3, v4);
}

void EDRRegisterCallbackBlockOnQueue(unsigned int a1, void *a2, void *a3)
{
  v4 = a1;
  v23 = *MEMORY[0x277D85DE8];
  v17 = a1;
  v5 = a2;
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v19 = "EDRRegisterCallbackBlockOnQueue";
    v20 = 1024;
    *v21 = v4;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: cid=%d\n", buf, 0x12u);
  }

  v7 = sub_2771A1A28();
  std::mutex::lock(v7);
  if (v6)
  {
    v8 = *(v7 + 72);
    if (v8)
    {
      v9 = v7 + 72;
      do
      {
        v10 = *(v8 + 32);
        v11 = v10 >= v4;
        v12 = v10 < v4;
        if (v11)
        {
          v9 = v8;
        }

        v8 = *(v8 + 8 * v12);
      }

      while (v8);
      if (v9 != v7 + 72 && *(v9 + 32) <= v4)
      {
        _Block_release(*(v9 + 48));
        sub_2771A6E64(v7 + 64, &v17);
        v4 = v17;
      }
    }

    v13 = v5;
    v14 = _Block_copy(v6);
    *buf = v17;
    HIDWORD(v19) = v4;
    *&v21[2] = _Block_copy(v14);
    v15 = v13;
    v22 = v15;
    sub_2771A6F18(v7 + 64, buf, buf);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_2771A2338;
  v16[3] = &unk_27A70C118;
  v16[4] = v7;
  if (qword_2813434C8 != -1)
  {
    dispatch_once(&qword_2813434C8, v16);
  }

  std::mutex::unlock(v7);
}

void sub_2771A0A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  std::mutex::unlock(v20);

  _Unwind_Resume(a1);
}

void EDRServerRegisterCallbackBlock(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = 136315138;
    v4 = "EDRServerRegisterCallbackBlock";
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s\n", &v3, 0xCu);
  }

  v2 = dispatch_get_global_queue(0, 0);
  EDRServerRegisterCallbackBlockOnQueue(v2, v1);
}

void sub_2771A0B64(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void EDRServerUnregisterCallbackBlock()
{
  v2 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v0 = 136315138;
    v1 = "EDRServerUnregisterCallbackBlock";
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s\n", &v0, 0xCu);
  }

  EDRUnregisterCallbackBlock(0);
}

void EDRUnregisterCallbackBlock(unsigned int a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = a1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "EDRUnregisterCallbackBlock";
    v11 = 1024;
    v12 = a1;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: cid=%d\n", buf, 0x12u);
  }

  v2 = sub_2771A1A28();
  std::mutex::lock(v2);
  v3 = *(v2 + 72);
  if (v3)
  {
    v4 = v2 + 72;
    do
    {
      v5 = *(v3 + 32);
      v6 = v5 >= a1;
      v7 = v5 < a1;
      if (v6)
      {
        v4 = v3;
      }

      v3 = *(v3 + 8 * v7);
    }

    while (v3);
    if (v4 != v2 + 72 && *(v4 + 32) <= a1)
    {
      _Block_release(*(v4 + 48));
      sub_2771A6E64(v2 + 64, &v8);
    }
  }

  std::mutex::unlock(v2);
}

uint64_t sub_2771A0D74(uint64_t a1, uint64_t a2)
{
  v12[3] = *MEMORY[0x277D85DE8];
  memset(v12, 0, 24);
  v5 = 16;
  v6 = 0;
  sub_2771A7664(a2, 6, 0, 0, &v6, v12, &v5);
  v3 = LODWORD(v12[0]);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "EDRCreateClientForDisplayWithTimeout";
    v8 = 1024;
    v9 = v3;
    v10 = 1024;
    v11 = a1;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: cid=%d did=%d\n", buf, 0x18u);
  }

  if (!qword_2813434C0)
  {
    operator new();
  }

  *buf = v3 | (a1 << 32);
  sub_2771A6D98(qword_2813434C0, buf, buf);
  return v3;
}

void EDRCreateClientForDisplayWithTimeoutAndCallback(int a1, int a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2771A0F7C;
  v8[3] = &unk_27A70C0B0;
  v10 = a1;
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

uint64_t sub_2771A0F7C(uint64_t a1)
{
  sub_2771A0D74(*(a1 + 40), *(a1 + 44));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t EDRReleaseClient(unsigned int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v5 = "EDRReleaseClient";
    v6 = 1024;
    v7 = a1;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: cid=%d\n", buf, 0x12u);
  }

  EDRUnregisterCallbackBlock(a1);
  return sub_2771A7500(7, &v3, 4uLL);
}

uint64_t EDREnable(unsigned int a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = sub_27719C7D8(a1);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = "No";
    v8 = 136315906;
    v9 = "EDREnable";
    if (a2)
    {
      v5 = "Yes";
    }

    v10 = 1024;
    v11 = a1;
    v12 = 1024;
    v13 = v4;
    v14 = 2080;
    v15 = v5;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: cid=%d did=%d enable=%s\n", &v8, 0x22u);
  }

  if (a2)
  {
    v6 = 8;
  }

  else
  {
    v6 = 9;
  }

  v8 = a1;
  LODWORD(v9) = v4;
  return sub_2771A7500(v6, &v8, 8uLL);
}

BOOL EDRIsEnabled(unsigned int a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = sub_27719C7D8(a1);
  v6[1] = v2;
  v7 = 0;
  v6[0] = a1;
  sub_2771A7664(0x1388u, 10, v6, 8, &v7, 0, 0);
  v3 = v7;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = "No";
    *buf = 136315906;
    v9 = "EDRIsEnabled";
    v11 = a1;
    v10 = 1024;
    if (v3 == 1)
    {
      v4 = "Yes";
    }

    v12 = 1024;
    v13 = v2;
    v14 = 2080;
    v15 = v4;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: cid=%d did=%d enabled=%s\n", buf, 0x22u);
  }

  return v3 == 1;
}

uint64_t EDRRequestAccessibilityLimit(unsigned int a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = sub_27719C7D8(a1);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = "No";
    v8 = 136315906;
    v9 = "EDRRequestAccessibilityLimit";
    if (a2)
    {
      v5 = "Yes";
    }

    v10 = 1024;
    v11 = a1;
    v12 = 1024;
    v13 = v4;
    v14 = 2080;
    v15 = v5;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: cid=%d did=%d enable=%s\n", &v8, 0x22u);
  }

  if (a2)
  {
    v6 = 11;
  }

  else
  {
    v6 = 12;
  }

  v8 = a1;
  LODWORD(v9) = v4;
  return sub_2771A7500(v6, &v8, 8uLL);
}

BOOL EDRHasAccessibilityLimit(unsigned int a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v6 = sub_27719C7D8(a1);
  sub_2771A7664(0x1388u, 13, &v6, 4, &v5, 0, 0);
  v2 = v5;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = "No";
    v8 = "EDRHasAccessibilityLimit";
    *buf = 136315906;
    if (v2 == 4)
    {
      v3 = "Yes";
    }

    v9 = 1024;
    v10 = a1;
    v11 = 1024;
    v12 = v6;
    v13 = 2080;
    v14 = v3;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: cid=%d did=%d enable=%s\n", buf, 0x22u);
  }

  return v2 == 4;
}

uint64_t EDRRequestDisplayHeadroomLimit(unsigned int a1, float a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = sub_27719C7D8(a1);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = 136315906;
    v7 = "EDRRequestDisplayHeadroomLimit";
    v8 = 1024;
    v9 = a1;
    v10 = 1024;
    v11 = v4;
    v12 = 2048;
    v13 = a2;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: cid=%d did=%d limit=%f\n", &v6, 0x22u);
  }

  v6 = a1;
  v7 = __PAIR64__(LODWORD(a2), v4);
  return sub_2771A7500(14, &v6, 0xCuLL);
}

uint64_t EDRRequestRampingSpeedFactor(unsigned int a1, float a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = sub_27719C7D8(a1);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = 136315906;
    v7 = "EDRRequestRampingSpeedFactor";
    v8 = 1024;
    v9 = a1;
    v10 = 1024;
    v11 = v4;
    v12 = 2048;
    v13 = a2;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: cid=%d did=%d factor=%f\n", &v6, 0x22u);
  }

  v6 = a1;
  v7 = __PAIR64__(LODWORD(a2), v4);
  return sub_2771A7500(15, &v6, 0xCuLL);
}

uint64_t EDRRequestBrightnessAnimationTimeStepFactor(unsigned int a1, float a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = sub_27719C7D8(a1);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = 136315906;
    v7 = "EDRRequestBrightnessAnimationTimeStepFactor";
    v8 = 1024;
    v9 = a1;
    v10 = 1024;
    v11 = v4;
    v12 = 2048;
    v13 = a2;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: cid=%d did=%d factor=%f\n", &v6, 0x22u);
  }

  v6 = a1;
  v7 = __PAIR64__(LODWORD(a2), v4);
  return sub_2771A7500(16, &v6, 0xCuLL);
}

uint64_t EDRRequestTransitionAnimationTimeStepFactor(unsigned int a1, float a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = sub_27719C7D8(a1);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = 136315906;
    v7 = "EDRRequestTransitionAnimationTimeStepFactor";
    v8 = 1024;
    v9 = a1;
    v10 = 1024;
    v11 = v4;
    v12 = 2048;
    v13 = a2;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: cid=%d did=%d factor=%f\n", &v6, 0x22u);
  }

  v6 = a1;
  v7 = __PAIR64__(LODWORD(a2), v4);
  return sub_2771A7500(17, &v6, 0xCuLL);
}

float EDRGetDisplayBrightness(unsigned int a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = sub_27719C7D8(a1);
  v3 = sub_2771A1A28();
  v6 = *(v3 + 96);
  v4 = v3 + 96;
  v5 = v6;
  v7 = 1.0;
  if (v6)
  {
    v8 = v4;
    do
    {
      v9 = *(v5 + 32);
      v10 = v9 >= v2;
      v11 = v9 < v2;
      if (v10)
      {
        v8 = v5;
      }

      v5 = *(v5 + 8 * v11);
    }

    while (v5);
    v7 = 1.0;
    if (v8 != v4 && v2 >= *(v8 + 32))
    {
      v7 = **(v8 + 40);
    }
  }

  if (v7 > 1.0 || v7 < 0.0)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = v7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = 136315906;
    v16 = "EDRGetDisplayBrightness";
    v17 = 1024;
    v18 = a1;
    v19 = 1024;
    v20 = v2;
    v21 = 2048;
    v22 = v13;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: cid=%d did=%d val=%f\n", &v15, 0x22u);
  }

  return v13;
}

uint64_t sub_2771A1A28()
{
  if ((atomic_load_explicit(&qword_281343568, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_281343568))
  {
    operator new();
  }

  return qword_2813434B8;
}

float EDRGetDisplayBacklightBrightness(unsigned int a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = sub_27719C7D8(a1);
  v3 = sub_2771A1A28();
  v6 = *(v3 + 96);
  v4 = v3 + 96;
  v5 = v6;
  v7 = 1.0;
  if (v6)
  {
    v8 = v4;
    do
    {
      v9 = *(v5 + 32);
      v10 = v9 >= v2;
      v11 = v9 < v2;
      if (v10)
      {
        v8 = v5;
      }

      v5 = *(v5 + 8 * v11);
    }

    while (v5);
    v7 = 1.0;
    if (v8 != v4 && v2 >= *(v8 + 32))
    {
      v7 = *(*(v8 + 40) + 4);
    }
  }

  if (v7 > 1.0 || v7 < 0.0)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = v7;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = 136315906;
    v16 = "EDRGetDisplayBacklightBrightness";
    v17 = 1024;
    v18 = a1;
    v19 = 1024;
    v20 = v2;
    v21 = 2048;
    v22 = v13;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: cid=%d did=%d val=%f\n", &v15, 0x22u);
  }

  return v13;
}

float EDRGetDisplayScalingFactor(unsigned int a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = sub_27719C7D8(a1);
  v3 = sub_2771A1A28();
  v6 = *(v3 + 96);
  v4 = v3 + 96;
  v5 = v6;
  v7 = 1.0;
  if (v6)
  {
    v8 = v4;
    do
    {
      v9 = *(v5 + 32);
      v10 = v9 >= v2;
      v11 = v9 < v2;
      if (v10)
      {
        v8 = v5;
      }

      v5 = *(v5 + 8 * v11);
    }

    while (v5);
    if (v8 != v4 && v2 >= *(v8 + 32))
    {
      v7 = *(*(v8 + 40) + 8);
    }
  }

  if (v7 >= 0.000001)
  {
    v12 = v7;
  }

  else
  {
    v12 = 0.000001;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = 136315906;
    v15 = "EDRGetDisplayScalingFactor";
    v16 = 1024;
    v17 = a1;
    v18 = 1024;
    v19 = v2;
    v20 = 2048;
    v21 = v12;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: cid=%d did=%d val=%f\n", &v14, 0x22u);
  }

  return v12;
}

float EDRGetDisplayHeadroom(unsigned int a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = sub_27719C7D8(a1);
  v3 = sub_2771A1A28();
  v6 = *(v3 + 96);
  v4 = v3 + 96;
  v5 = v6;
  v7 = 1.0;
  if (v6)
  {
    v8 = v4;
    do
    {
      v9 = *(v5 + 32);
      v10 = v9 >= v2;
      v11 = v9 < v2;
      if (v10)
      {
        v8 = v5;
      }

      v5 = *(v5 + 8 * v11);
    }

    while (v5);
    v7 = 1.0;
    if (v8 != v4 && v2 >= *(v8 + 32))
    {
      v7 = *(*(v8 + 40) + 8);
    }
  }

  if (v7 < 0.000001)
  {
    v7 = 0.000001;
  }

  v12 = 1.0 / v7;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v14 = 136315906;
    v15 = "EDRGetDisplayHeadroom";
    v16 = 1024;
    v17 = a1;
    v18 = 1024;
    v19 = v2;
    v20 = 2048;
    v21 = v12;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: cid=%d did=%d val=%f\n", &v14, 0x22u);
  }

  return v12;
}

float EDRGetDisplayMaxLuminance(unsigned int a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = sub_27719C7D8(a1);
  v3 = sub_2771A1A28();
  v6 = *(v3 + 96);
  v4 = v3 + 96;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v4;
  do
  {
    v8 = *(v5 + 32);
    v9 = v8 >= v2;
    v10 = v8 < v2;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * v10);
  }

  while (v5);
  if (v7 != v4 && v2 >= *(v7 + 32))
  {
    v11 = *(*(v7 + 40) + 12);
  }

  else
  {
LABEL_9:
    v11 = 500.0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = 136315906;
    v14 = "EDRGetDisplayMaxLuminance";
    v15 = 1024;
    v16 = a1;
    v17 = 1024;
    v18 = v2;
    v19 = 2048;
    v20 = v11;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: cid=%d did=%d val=%f\n", &v13, 0x22u);
  }

  return v11;
}

float EDRGetAmbientIlluminance(unsigned int a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = sub_27719C7D8(a1);
  v3 = sub_2771A1A28();
  v6 = *(v3 + 96);
  v4 = v3 + 96;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v4;
  do
  {
    v8 = *(v5 + 32);
    v9 = v8 >= v2;
    v10 = v8 < v2;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * v10);
  }

  while (v5);
  if (v7 != v4 && v2 >= *(v7 + 32))
  {
    v11 = *(*(v7 + 40) + 16);
  }

  else
  {
LABEL_9:
    v11 = 1000.0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = 136315906;
    v14 = "EDRGetAmbientIlluminance";
    v15 = 1024;
    v16 = a1;
    v17 = 1024;
    v18 = v2;
    v19 = 2048;
    v20 = v11;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: cid=%d did=%d val=%f\n", &v13, 0x22u);
  }

  return v11;
}

float EDRGetBrightnessScaler(unsigned int a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = sub_27719C7D8(a1);
  v3 = sub_2771A1A28();
  v6 = *(v3 + 96);
  v4 = v3 + 96;
  v5 = v6;
  v7 = 1.0;
  if (v6)
  {
    v8 = v4;
    do
    {
      v9 = *(v5 + 32);
      v10 = v9 >= v2;
      v11 = v9 < v2;
      if (v10)
      {
        v8 = v5;
      }

      v5 = *(v5 + 8 * v11);
    }

    while (v5);
    if (v8 != v4 && v2 >= *(v8 + 32))
    {
      v7 = *(*(v8 + 40) + 20);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = 136315906;
    v14 = "EDRGetBrightnessScaler";
    v15 = 1024;
    v16 = a1;
    v17 = 1024;
    v18 = v2;
    v19 = 2048;
    v20 = v7;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: cid=%d did=%d val=%f\n", &v13, 0x22u);
  }

  return v7;
}

float EDRGetDefaultMinScalingFactor(unsigned int a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = sub_27719C7D8(a1);
  v6 = 0;
  v7 = 1.0;
  v4[1] = v2;
  v5 = 0;
  v4[0] = a1;
  sub_2771A7664(0x1388u, 18, v4, 8, &v6, &v7, &v5);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v9 = "EDRGetDefaultMinScalingFactor";
    v10 = 1024;
    v11 = a1;
    v12 = 1024;
    v13 = v2;
    v14 = 2048;
    v15 = v7;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: cid=%d did=%d val=%f\n", buf, 0x22u);
  }

  return v7;
}

uint64_t sub_2771A2338(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = sub_27719C3B8;
  v2[3] = &unk_27A70C0F8;
  v2[4] = *(a1 + 32);
  return sub_2771A7380(5000, 0, v2, 0);
}

void EDRRegisterCallbackBlock(unsigned int a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "EDRRegisterCallbackBlock";
    v7 = 1024;
    v8 = a1;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: cid=%d\n", &v5, 0x12u);
  }

  v4 = dispatch_get_global_queue(0, 0);
  EDRRegisterCallbackBlockOnQueue(a1, v4, v3);
}

CFComparisonResult sub_2771A24C0()
{
  v29 = *MEMORY[0x277D85DE8];
  memset(__s, 0, sizeof(__s));
  v20 = 128;
  if (sysctlbyname("hw.model", __s, &v20, 0, 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2771AAFB8();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "getModel_block_invoke";
    *&buf[12] = 2080;
    *&buf[14] = __s;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: model = %s\n", buf, 0x16u);
  }

  v0 = &xmmword_27A70C158;
  v1 = 8840;
  do
  {
    v2 = strlen(__s);
    result = sub_2771A2B14(v0, __s, v2);
    if (result)
    {
      v9 = v0[7];
      xmmword_2813413F8 = v0[6];
      xmmword_281341408 = v9;
      dword_281341418 = *(v0 + 32);
      v10 = v0[3];
      xmmword_2813413B8 = v0[2];
      unk_2813413C8 = v10;
      v11 = v0[5];
      xmmword_2813413D8 = v0[4];
      *&qword_2813413E8 = v11;
      v13 = *v0;
      v12 = v0[1];
LABEL_45:
      xmmword_281341398 = v13;
      unk_2813413A8 = v12;
      return result;
    }

    v0 = (v0 + 136);
    v1 -= 136;
  }

  while (v1);
  v4 = MGCopyAnswer();
  result = MGCopyAnswer();
  if (v4)
  {
    v5 = result;
    if (result)
    {
      *buffer = 0;
      v27 = 0;
      CFStringGetCString(v4, buffer, 16, 0x8000100u);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v6 = v5 == *MEMORY[0x277CBED28];
        *buf = 136315650;
        *&buf[4] = "getModel_block_invoke";
        if (v6)
        {
          v7 = "YES";
        }

        else
        {
          v7 = "NO";
        }

        *&buf[12] = 2080;
        *&buf[14] = buffer;
        *&buf[22] = 2080;
        *&buf[24] = v7;
        _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: platform = %s, oled = %s\n", buf, 0x20u);
      }

      result = CFStringCompare(v4, @"t8011", 0);
      if (result == kCFCompareLessThan)
      {
        v14 = 0;
        memset(&buf[8], 0, 64);
        *&buf[72] = 1065353216;
        v22 = 0uLL;
        v25 = 1077936128;
        v23 = xmmword_2771ACA3C;
        v24 = unk_2771ACA4C;
        do
        {
          buf[v14 + 8] = byte_2771AD5B8[v14 & 3] ^ aGeneric1x[v14];
          ++v14;
        }

        while (v14 != 10);
      }

      else
      {
        result = CFStringCompare(v4, @"t8011", 0);
        if (result == kCFCompareGreaterThan && v5 == *MEMORY[0x277CBED10])
        {
          v8 = 0;
          memset(&buf[8], 0, 64);
          *&buf[72] = 1056964608;
          v22 = 0uLL;
          v25 = 1077936128;
          v23 = xmmword_2771ACA3C;
          v24 = unk_2771ACA4C;
          do
          {
            buf[v8 + 8] = byte_2771AD5B8[v8 & 3] ^ aGeneric2x[v8];
            ++v8;
          }

          while (v8 != 10);
        }

        else
        {
          result = CFStringCompare(v4, @"t8011", 0);
          v15 = *MEMORY[0x277CBED28];
          if (result || v5 != v15)
          {
            result = CFStringCompare(v4, @"t8020", 0);
            if (result || v5 != v15)
            {
              result = CFStringCompare(v4, @"t8030", 0);
              if (result || v5 != v15)
              {
                if (v5 != v15)
                {
                  return result;
                }

                v19 = 0;
                memset(&buf[8], 0, 64);
                *&buf[72] = 1040187392;
                *&v22 = &unk_2771AC634;
                *(&v22 + 1) = 86;
                v25 = 1077936128;
                v23 = xmmword_2771ACA3C;
                v24 = unk_2771ACA4C;
                do
                {
                  buf[v19 + 8] = byte_2771AD5B8[v19 & 3] ^ aGeneric8x[v19];
                  ++v19;
                }

                while (v19 != 10);
              }

              else
              {
                v18 = 0;
                memset(&buf[8], 0, 64);
                *&buf[72] = 1040187392;
                *&v22 = &unk_2771AC22C;
                *(&v22 + 1) = 86;
                v25 = 1077936128;
                v23 = xmmword_2771ACA3C;
                v24 = unk_2771ACA4C;
                do
                {
                  buf[v18 + 8] = byte_2771AD5B8[v18 & 3] ^ aGeneric8x[v18];
                  ++v18;
                }

                while (v18 != 10);
              }
            }

            else
            {
              v17 = 0;
              memset(&buf[8], 0, 64);
              *&buf[72] = 1048576000;
              *&v22 = &unk_2771ABEF0;
              *(&v22 + 1) = 69;
              v25 = 1077936128;
              v23 = xmmword_2771ACA3C;
              v24 = unk_2771ACA4C;
              do
              {
                buf[v17 + 8] = byte_2771AD5B8[v17 & 3] ^ aGeneric4x[v17];
                ++v17;
              }

              while (v17 != 10);
            }
          }

          else
          {
            v16 = 0;
            memset(&buf[8], 0, 64);
            *&buf[72] = 1048576000;
            *&v22 = &unk_2771ABEF0;
            *(&v22 + 1) = 69;
            v25 = 1077936128;
            v23 = xmmword_2771ACA3C;
            v24 = unk_2771ACA4C;
            do
            {
              buf[v16 + 8] = byte_2771AD5B8[v16 & 3] ^ aGeneric4x[v16];
              ++v16;
            }

            while (v16 != 10);
          }
        }
      }

      *buf = 9;
      xmmword_2813413F8 = v23;
      xmmword_281341408 = v24;
      dword_281341418 = v25;
      xmmword_2813413B8 = *&buf[32];
      unk_2813413C8 = *&buf[48];
      xmmword_2813413D8 = *&buf[64];
      *&qword_2813413E8 = v22;
      v13 = *buf;
      v12 = *&buf[16];
      goto LABEL_45;
    }
  }

  return result;
}

BOOL sub_2771A2B14(size_t *a1, char *__s1, size_t a3)
{
  v3 = 0;
  v9 = *MEMORY[0x277D85DE8];
  __s2[64] = 0;
  do
  {
    v4 = *(a1 + v3 + 8);
    v5 = byte_2771AD5B8[v3 & 3];
    __s2[v3] = v5 ^ v4;
    if (v4 == v5)
    {
      break;
    }
  }

  while (v3++ != 63);
  return *a1 <= a3 && !strncmp(__s1, __s2, *a1);
}

uint64_t sub_2771A2BD0(uint64_t a1)
{
  sub_2771A2C20(a1 + 296, *(a1 + 304));

  return sub_27719DBC4(a1);
}

void sub_2771A2C20(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2771A2C20(a1, *a2);
    sub_2771A2C20(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_2771A2C74(unsigned int a1, unsigned int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "EDRServerReleaseClient";
    v19 = 1024;
    v20 = a1;
    v21 = 1024;
    v22 = a2;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: pid=%d cid=%d\n", buf, 0x18u);
  }

  v4 = 0;
  v5 = a1;
  v17 = a2 | a1;
  if (a1)
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v16 = v7;
  *buf = a2 | (a1 << 32);
  v8 = &unk_281343000;
  v9 = &unk_281343000;
  do
  {
    v10 = *(v8 + 165);
    std::mutex::lock(v10);
    v11 = v9[167] + 584 * v4;
    v12 = *(v11 + 320);
    if (v12 == -559038737)
    {
      std::mutex::unlock(v10);
    }

    else
    {
      if (v17)
      {
        if (v16)
        {
          v13 = *(v11 + 296);
          if (v13 != (v11 + 304))
          {
            do
            {
              if (*(v13 + 9) == v5)
              {
                v14 = sub_2771A303C((v11 + 296), v13);
                operator delete(v13);
              }

              else
              {
                v15 = v13[1];
                if (v15)
                {
                  do
                  {
                    v14 = v15;
                    v15 = *v15;
                  }

                  while (v15);
                }

                else
                {
                  do
                  {
                    v14 = v13[2];
                    v6 = *v14 == v13;
                    v13 = v14;
                  }

                  while (!v6);
                }
              }

              v13 = v14;
            }

            while (v14 != (v11 + 304));
          }
        }

        else
        {
          sub_2771A3430((v11 + 296), buf);
        }
      }

      else
      {
        sub_2771A2C20(v11 + 296, *(v11 + 304));
        *(v11 + 304) = 0;
        *(v11 + 312) = 0;
        *(v11 + 296) = v11 + 304;
      }

      std::mutex::unlock(v10);
      sub_27719B8B0(v12, 1);
      v8 = &unk_281343000;
      v9 = &unk_281343000;
    }

    ++v4;
  }

  while (v4 != 16);
}

void sub_2771A2EB0(int a1, int a2, uint64_t a3, int a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v13 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = "No";
    *buf = 136316162;
    v15 = "EDRServerEnableAccessibilityLimit";
    v17 = a1;
    v16 = 1024;
    if (a4)
    {
      v8 = "Yes";
    }

    v18 = 1024;
    v19 = a2;
    v20 = 1024;
    v21 = a3;
    v22 = 2080;
    v23 = v8;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: pid=%d cid=%d did=%d enable=%s\n", buf, 0x28u);
  }

  v9 = qword_281343528;
  std::mutex::lock(qword_281343528);
  v10 = sub_27719B588(a3);
  if (v10 && (v11 = v10, *(v10 + 368) != a4))
  {
    *(v10 + 368) = a4;
    sub_27719FFC4();
    std::mutex::unlock(v9);
    sub_27719B8B0(a3, 0);
    if (*(v11 + 368))
    {
      v12 = 4;
    }

    else
    {
      v12 = 5;
    }

    sub_27719AF24(v12, &v13, 4uLL);
  }

  else
  {
    std::mutex::unlock(v9);
  }
}

uint64_t *sub_2771A303C(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_2771A30B0(v6, a2);
  return v3;
}

uint64_t *sub_2771A30B0(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (*(v23 + 24))
  {
    v24 = *(v7 + 8);
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    *(v7 + 8) = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = *(v7 + 16);
    *(v24 + 16) = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    *(v7 + 16) = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t sub_2771A3430(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_2771A303C(a1, v4);
  operator delete(v4);
  return 1;
}

void *sub_2771A34B4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_2771A3588(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_2771A35E0(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_2771A35E0(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

char *sub_2771A377C(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16) != 3)
  {
    return 0;
  }

  sub_2771A3944();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "EDRServerDumpStateToSysDiagnose";
    v14 = 2048;
    v15 = byte_2813414B4;
    v16 = 1024;
    v17 = strlen(byte_2813414B4);
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: data => %p size = %d\n", &v12, 0x1Cu);
  }

  v2 = *MEMORY[0x277CBECE8];
  v3 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], byte_2813414B4, 0x8000100u);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Data = CFPropertyListCreateData(v2, v3, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  if (!Data)
  {
    v9 = 0;
    goto LABEL_10;
  }

  v6 = Data;
  Length = CFDataGetLength(Data);
  v8 = malloc_type_calloc(1uLL, Length + 200, 0x1000040BEF03554uLL);
  v9 = v8;
  if (v8)
  {
    *v8 = 1;
    *(v8 + 1) = Length;
    strcpy(v8 + 136, "libEDR Server State");
    BytePtr = CFDataGetBytePtr(v6);
    memcpy(v9 + 200, BytePtr, Length);
    CFRelease(v4);
    v4 = v6;
LABEL_10:
    CFRelease(v4);
  }

  return v9;
}

void sub_2771A3944()
{
  v117 = *MEMORY[0x277D85DE8];
  bzero(byte_2813414B4, 0x2000uLL);
  v115 = time(0);
  v0 = localtime(&v115);
  v1 = asctime(v0);
  v2 = snprintf(byte_2813414B4, 0x1FFFuLL, "TimeStamp: %s", v1);
  LODWORD(v3) = v2;
  if (v2 > 8190)
  {
    goto LABEL_6;
  }

  v3 = v2 & ~(v2 >> 31);
  v4 = 0x1FFF - v3;
  v5 = snprintf(&byte_2813414B4[v3], 0x1FFF - v3, "Hardware: %s\n", &xmmword_281343501);
  if (v5 >= 1)
  {
    v3 = (v5 + v3);
    if (v3 > 0x1FFE)
    {
      goto LABEL_6;
    }

    v4 = 0x1FFFLL - v3;
  }

  v6 = snprintf(&byte_2813414B4[v3], v4, "Software: %s\n", &xmmword_2813434D9);
  LODWORD(v3) = (v6 & ~(v6 >> 31)) + v3;
LABEL_6:
  v7 = MGCopyAnswer();
  if (v7 && CFStringGetCString(v7, buffer, 32, 0x8000100u) && v3 <= 0x1FFE)
  {
    v8 = snprintf(&byte_2813414B4[v3], 0x1FFFLL - v3, "Platform: %s\n", buffer);
    LODWORD(v3) = (v8 & ~(v8 >> 31)) + v3;
  }

  v9 = MGCopyAnswer();
  if (v9 && v3 <= 0x1FFE)
  {
    v10 = "NO";
    if (v9 == *MEMORY[0x277CBED28])
    {
      v10 = "YES";
    }

    v11 = snprintf(&byte_2813414B4[v3], 0x1FFFLL - v3, "OLEDDisplay: %s\n", v10);
    LODWORD(v3) = (v11 & ~(v11 >> 31)) + v3;
  }

  v12 = snprintf(&byte_2813414B4[v3], 0x1FFFLL - v3, "MainDisplay: %d\n", dword_281341428);
  v114 = qword_281343528;
  std::mutex::lock(qword_281343528);
  v13 = 0;
  v14 = (v12 + v3);
  v15 = &unk_281343000;
  do
  {
    v16 = v15[167] + 584 * v13;
    if (*(v16 + 320) == -559038737)
    {
      goto LABEL_89;
    }

    if (v14 <= 0x1FFE)
    {
      v17 = 0x1FFFLL - v14;
      v18 = snprintf(&byte_2813414B4[v14], v17, "Display: %d\n", *(v16 + 320));
      if (v18 < 1)
      {
        v19 = v14;
      }

      else
      {
        v14 = (v18 + v14);
        if (v14 > 0x1FFE)
        {
          goto LABEL_46;
        }

        v17 = 0x1FFFLL - v14;
        v19 = v14;
      }

      v20 = snprintf(&byte_2813414B4[v19], v17, "    gEDRDisplay:\n");
      if (v20 < 1)
      {
        LODWORD(v21) = v14;
      }

      else
      {
        v21 = (v20 + v14);
        v14 = v21;
        if (v21 > 0x1FFE)
        {
          goto LABEL_46;
        }
      }

      v22 = sub_27719BFFC(v16);
      v23 = 0x1FFFLL - v21;
      v24 = "NO";
      if (v22)
      {
        v24 = "YES";
      }

      v25 = snprintf(&byte_2813414B4[v21], 0x1FFFLL - v21, "        IsEDREnabled = %s\n", v24);
      if (v25 <= 0)
      {
        v26 = v21;
      }

      else
      {
        v21 = (v25 + v21);
        if (v21 > 0x1FFE)
        {
          goto LABEL_43;
        }

        v23 = 0x1FFFLL - v21;
        v26 = v21;
      }

      v27 = snprintf(&byte_2813414B4[v26], v23, "        CurrentBrightness:\n");
      if (v27 < 1 || (v21 = (v27 + v21), v14 = v21, v21 <= 0x1FFE))
      {
        v28 = sub_27719B61C(v16);
        v29 = snprintf(&byte_2813414B4[v21], 0x1FFFLL - v21, "            backlightBrightness = %f\n", v28);
        if (v29 <= 0 || (v21 = (v29 + v21), v14 = v21, v21 <= 0x1FFE))
        {
          sub_27719B61C(v16);
          v31 = snprintf(&byte_2813414B4[v21], 0x1FFFLL - v21, "            edrScalingValue = %f\n", v30);
          if (v31 <= 0 || (v21 = (v31 + v21), v14 = v21, v21 <= 0x1FFE))
          {
            v32 = sub_27719DD9C(v16);
            v33 = snprintf(&byte_2813414B4[v21], 0x1FFFLL - v21, "        TargetBrightness = %f\n", v32);
            if (v33 < 1 || (v21 = (v33 + v21), v14 = v21, v21 <= 0x1FFE))
            {
              v34 = sub_27719DDF8(v16);
              v35 = 0x1FFFLL - v21;
              v36 = snprintf(&byte_2813414B4[v21], v35, "        TimeStep = %f\n", v34);
              if (v36 < 1)
              {
                v37 = v21;
              }

              else
              {
                v21 = (v36 + v21);
                if (v21 > 0x1FFE)
                {
LABEL_43:
                  v14 = v21;
                  goto LABEL_46;
                }

                v35 = 0x1FFFLL - v21;
                v37 = v21;
              }

              v38 = snprintf(&byte_2813414B4[v37], v35, "    gScalingFactorLimits: (pid, cid) -> limit\n");
              v14 = (v38 & ~(v38 >> 31)) + v21;
            }
          }
        }
      }
    }

LABEL_46:
    v39 = *(v16 + 296);
    v40 = v14;
    if (v39 != (v16 + 304))
    {
      do
      {
        if (v40 <= 0x1FFE)
        {
          v41 = snprintf(&byte_2813414B4[v40], 0x1FFFLL - v40, "        (%d, %d) -> %f\n", HIDWORD(*(v39 + 4)), *(v39 + 4), v39[10]);
          v40 = (v41 & ~(v41 >> 31)) + v40;
        }

        v42 = *(v39 + 1);
        if (v42)
        {
          do
          {
            v43 = v42;
            v42 = *v42;
          }

          while (v42);
        }

        else
        {
          do
          {
            v43 = *(v39 + 2);
            v44 = *v43 == v39;
            v39 = v43;
          }

          while (!v44);
        }

        v39 = v43;
      }

      while (v43 != (v16 + 304));
    }

    if (v40 >= 0x1FFF)
    {
      goto LABEL_87;
    }

    v45 = 0x1FFFLL - v40;
    v46 = snprintf(&byte_2813414B4[v40], v45, "    gDefaultMinScalingFactor = %f\n", *(v16 + 324));
    if (v46 < 1)
    {
      v47 = v40;
    }

    else
    {
      v40 = (v46 + v40);
      if (v40 > 0x1FFE)
      {
        goto LABEL_87;
      }

      v45 = 0x1FFFLL - v40;
      v47 = v40;
    }

    v48 = snprintf(&byte_2813414B4[v47], v45, "    gDefaultRampingSpeedFactor = %f\n", *(v16 + 328));
    if (v48 >= 1)
    {
      v40 = (v48 + v40);
      if (v40 > 0x1FFE)
      {
        goto LABEL_87;
      }

      v45 = 0x1FFFLL - v40;
      v47 = v40;
    }

    v49 = snprintf(&byte_2813414B4[v47], v45, "    gDefaultBrightnessAnimationTimeStepFactor = %f\n", *(v16 + 332));
    if (v49 >= 1)
    {
      v40 = (v49 + v40);
      if (v40 > 0x1FFE)
      {
        goto LABEL_87;
      }

      v45 = 0x1FFFLL - v40;
      v47 = v40;
    }

    v50 = snprintf(&byte_2813414B4[v47], v45, "    gDefaultTransitionAnimationTimeStepFactor = %f\n", *(v16 + 336));
    if (v50 >= 1)
    {
      v40 = (v50 + v40);
      if (v40 > 0x1FFE)
      {
        goto LABEL_87;
      }

      v45 = 0x1FFFLL - v40;
      v47 = v40;
    }

    v51 = snprintf(&byte_2813414B4[v47], v45, "    gMinScalingFactor = %f\n", *(v16 + 340));
    if (v51 >= 1)
    {
      v40 = (v51 + v40);
      if (v40 > 0x1FFE)
      {
        goto LABEL_87;
      }

      v45 = 0x1FFFLL - v40;
      v47 = v40;
    }

    v52 = snprintf(&byte_2813414B4[v47], v45, "    gRampingSpeedFactor = %f\n", *(v16 + 344));
    if (v52 >= 1)
    {
      v40 = (v52 + v40);
      if (v40 > 0x1FFE)
      {
        goto LABEL_87;
      }

      v45 = 0x1FFFLL - v40;
      v47 = v40;
    }

    v53 = snprintf(&byte_2813414B4[v47], v45, "    gBrightnessAnimationTimeStepFactor = %f\n", *(v16 + 348));
    if (v53 >= 1)
    {
      v40 = (v53 + v40);
      if (v40 > 0x1FFE)
      {
        goto LABEL_87;
      }

      v45 = 0x1FFFLL - v40;
      v47 = v40;
    }

    v54 = snprintf(&byte_2813414B4[v47], v45, "    gTransitionAnimationTimeStepFactor = %f\n", *(v16 + 352));
    if (v54 >= 1)
    {
      v40 = (v54 + v40);
      if (v40 > 0x1FFE)
      {
        goto LABEL_87;
      }

      v45 = 0x1FFFLL - v40;
      v47 = v40;
    }

    v55 = snprintf(&byte_2813414B4[v47], v45, "    gMaxLuminance = %f\n", *(v16 + 356));
    if (v55 >= 1)
    {
      v40 = (v55 + v40);
      if (v40 > 0x1FFE)
      {
        goto LABEL_87;
      }

      v45 = 0x1FFFLL - v40;
      v47 = v40;
    }

    v56 = snprintf(&byte_2813414B4[v47], v45, "    gAmbientIlluminance = %f\n", *(v16 + 360));
    if (v56 < 1)
    {
      goto LABEL_91;
    }

    v40 = (v56 + v40);
    if (v40 <= 0x1FFE)
    {
      v45 = 0x1FFFLL - v40;
      v47 = v40;
LABEL_91:
      v57 = snprintf(&byte_2813414B4[v47], v45, "    gTargetBrightness = %f\n", *(v16 + 364));
      if (v57 >= 1)
      {
        v58 = (v57 + v40);
        if (v58 <= 0x1FFE)
        {
          v45 = 0x1FFFLL - v58;
          v47 = (v57 + v40);
          goto LABEL_95;
        }

LABEL_238:
        v14 = v58;
        goto LABEL_88;
      }

      LODWORD(v58) = v40;
LABEL_95:
      v59 = "No";
      if (*(v16 + 368))
      {
        v59 = "Yes";
      }

      v60 = snprintf(&byte_2813414B4[v47], v45, "    gAccessibilityLimit = %s\n", v59);
      if (v60 >= 1)
      {
        v58 = (v60 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v61 = snprintf(&byte_2813414B4[v47], v45, "    gSBIMRequestedScalingFactor = %f\n", *(v16 + 372));
      if (v61 >= 1)
      {
        v58 = (v61 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v62 = snprintf(&byte_2813414B4[v47], v45, "    gScalingConstraints:\n");
      if (v62 >= 1)
      {
        v58 = (v62 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v63 = snprintf(&byte_2813414B4[v47], v45, "        SystemDefault = %f\n", *(v16 + 376));
      if (v63 >= 1)
      {
        v58 = (v63 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v64 = snprintf(&byte_2813414B4[v47], v45, "        Brightness = %f\n", *(v16 + 380));
      if (v64 >= 1)
      {
        v58 = (v64 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v65 = snprintf(&byte_2813414B4[v47], v45, "        ClientMaximum = %f\n", *(v16 + 384));
      if (v65 >= 1)
      {
        v58 = (v65 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v66 = snprintf(&byte_2813414B4[v47], v45, "        SBIM = %f\n", *(v16 + 388));
      if (v66 >= 1)
      {
        v58 = (v66 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v67 = snprintf(&byte_2813414B4[v47], v45, "        kLowPowerMode = %f\n", *(v16 + 392));
      if (v67 >= 1)
      {
        v58 = (v67 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v68 = snprintf(&byte_2813414B4[v47], v45, "        Accessibility = %f\n", *(v16 + 396));
      if (v68 >= 1)
      {
        v58 = (v68 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v69 = "No";
      if (*(v16 + 400))
      {
        v69 = "Yes";
      }

      v70 = snprintf(&byte_2813414B4[v47], v45, "    gLowPowerMode = %s\n", v69);
      if (v70 >= 1)
      {
        v58 = (v70 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v71 = snprintf(&byte_2813414B4[v47], v45, "    gFramebuffer => %p\n", *(v16 + 408));
      if (v71 >= 1)
      {
        v58 = (v71 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v72 = snprintf(&byte_2813414B4[v47], v45, "    gService = %d\n", *(v16 + 416));
      if (v72 >= 1)
      {
        v58 = (v72 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v73 = snprintf(&byte_2813414B4[v47], v45, "    gSBIMTimer => %p\n", *(v16 + 424));
      if (v73 >= 1)
      {
        v58 = (v73 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v74 = snprintf(&byte_2813414B4[v47], v45, "    gMitigationTimer => %p\n", *(v16 + 432));
      if (v74 >= 1)
      {
        v58 = (v74 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v75 = "No";
      if (*(v16 + 440))
      {
        v75 = "Yes";
      }

      v76 = snprintf(&byte_2813414B4[v47], v45, "    gBurnInMitigatinEnabled = %s\n", v75);
      if (v76 >= 1)
      {
        v58 = (v76 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v77 = snprintf(&byte_2813414B4[v47], v45, "    gMinScalingFactorBySBIM = %f\n", *(v16 + 444));
      if (v77 >= 1)
      {
        v58 = (v77 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v78 = snprintf(&byte_2813414B4[v47], v45, "    gMitigationState:\n");
      if (v78 >= 1)
      {
        v58 = (v78 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v79 = *(v16 + 448);
      v80 = "UnknownMitigationStage";
      if (v79 <= 3)
      {
        v80 = off_27A70E4B8[v79];
      }

      v81 = snprintf(&byte_2813414B4[v47], v45, "        state = %s\n", v80);
      if (v81 >= 1)
      {
        v58 = (v81 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v82 = "No";
      if (*(v16 + 452))
      {
        v82 = "Yes";
      }

      v83 = snprintf(&byte_2813414B4[v47], v45, "        violation = %s\n", v82);
      if (v83 >= 1)
      {
        v58 = (v83 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v84 = snprintf(&byte_2813414B4[v47], v45, "        sbim_timer_interval = %d\n", *(v16 + 460));
      if (v84 >= 1)
      {
        v58 = (v84 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v85 = snprintf(&byte_2813414B4[v47], v45, "        mitigation_timer_interval = %d\n", *(v16 + 464));
      if (v85 >= 1)
      {
        v58 = (v85 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v86 = snprintf(&byte_2813414B4[v47], v45, "        sbim_timer_size = %d\n", *(v16 + 468));
      if (v86 >= 1)
      {
        v58 = (v86 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v87 = snprintf(&byte_2813414B4[v47], v45, "        delta_factor = %f\n", *(v16 + 472));
      if (v87 >= 1)
      {
        v58 = (v87 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v88 = snprintf(&byte_2813414B4[v47], v45, "        minutes_per_stop_mitigate = %f\n", *(v16 + 476));
      if (v88 >= 1)
      {
        v58 = (v88 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v89 = snprintf(&byte_2813414B4[v47], v45, "        minutes_per_stop_recovery = %f\n", *(v16 + 480));
      if (v89 >= 1)
      {
        v58 = (v89 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v90 = snprintf(&byte_2813414B4[v47], v45, "        sbim_above_max = %f\n", *(v16 + 484));
      if (v90 >= 1)
      {
        v58 = (v90 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v91 = snprintf(&byte_2813414B4[v47], v45, "        sbim_sustain_max = %f\n", *(v16 + 488));
      if (v91 >= 1)
      {
        v58 = (v91 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v92 = snprintf(&byte_2813414B4[v47], v45, "        sbim_above_num = %f\n", *(v16 + 492));
      if (v92 >= 1)
      {
        v58 = (v92 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v93 = snprintf(&byte_2813414B4[v47], v45, "        sbim_sustain_num = %f\n", *(v16 + 496));
      if (v93 >= 1)
      {
        v58 = (v93 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v94 = snprintf(&byte_2813414B4[v47], v45, "        lastStateUpdate_ = %f\n", *(v16 + 504));
      if (v94 >= 1)
      {
        v58 = (v94 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v95 = snprintf(&byte_2813414B4[v47], v45, "        sbim_read_stage = %d\n", *(v16 + 512));
      if (v95 >= 1)
      {
        v58 = (v95 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v96 = snprintf(&byte_2813414B4[v47], v45, "        lastSBIMBlock_:\n");
      if (v96 >= 1)
      {
        v58 = (v96 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v97 = snprintf(&byte_2813414B4[v47], v45, "            version = %d\n", *(v16 + 520));
      if (v97 >= 1)
      {
        v58 = (v97 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v98 = snprintf(&byte_2813414B4[v47], v45, "            sbim = (%d, %d, %d)\n", *(v16 + 528), *(v16 + 532), *(v16 + 536));
      if (v98 >= 1)
      {
        v58 = (v98 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v99 = snprintf(&byte_2813414B4[v47], v45, "            duration_us = %lld\n", *(v16 + 544));
      if (v99 >= 1)
      {
        v58 = (v99 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v100 = snprintf(&byte_2813414B4[v47], v45, "    gBrightnessScaler = %f\n", *(v16 + 556));
      if (v100 >= 1)
      {
        v58 = (v100 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v101 = "No";
      if (*(v16 + 552))
      {
        v101 = "Yes";
      }

      v102 = snprintf(&byte_2813414B4[v47], v45, "    gSBIMSupported = %s\n", v101);
      if (v102 >= 1)
      {
        v58 = (v102 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v103 = "No";
      if (*(v16 + 553))
      {
        v103 = "Yes";
      }

      v104 = snprintf(&byte_2813414B4[v47], v45, "    gSBIMIsEnabled = %s\n", v103);
      if (v104 >= 1)
      {
        v58 = (v104 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v105 = snprintf(&byte_2813414B4[v47], v45, "    gServerData:\n");
      if (v105 >= 1)
      {
        v58 = (v105 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v106 = snprintf(&byte_2813414B4[v47], v45, "        Brightness = %f\n", *(v16 + 560));
      if (v106 >= 1)
      {
        v58 = (v106 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v107 = snprintf(&byte_2813414B4[v47], v45, "        Backlight = %f\n", *(v16 + 564));
      if (v107 >= 1)
      {
        v58 = (v107 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v108 = snprintf(&byte_2813414B4[v47], v45, "        EDRScalingValue = %f\n", *(v16 + 568));
      if (v108 >= 1)
      {
        v58 = (v108 + v58);
        if (v58 > 0x1FFE)
        {
          goto LABEL_238;
        }

        v45 = 0x1FFFLL - v58;
        v47 = v58;
      }

      v109 = snprintf(&byte_2813414B4[v47], v45, "        MaxLuminance = %f\n", *(v16 + 572));
      if (v109 < 1)
      {
        goto LABEL_239;
      }

      v58 = (v109 + v58);
      if (v58 <= 0x1FFE)
      {
        v45 = 0x1FFFLL - v58;
        v47 = v58;
LABEL_239:
        v110 = snprintf(&byte_2813414B4[v47], v45, "        Ambient = %f\n", *(v16 + 576));
        v14 = (v110 & ~(v110 >> 31)) + v58;
        goto LABEL_88;
      }

      goto LABEL_238;
    }

LABEL_87:
    v14 = v40;
LABEL_88:
    v15 = &unk_281343000;
LABEL_89:
    ++v13;
  }

  while (v13 != 16);
  v111 = open("/var/tmp/libEDR_Server_State.txt", 1793, 420);
  v112 = v111;
  if (v111 >= 1)
  {
    v113 = strlen(byte_2813414B4);
    write(v112, byte_2813414B4, v113);
    close(v112);
  }

  std::mutex::unlock(v114);
}

void sub_2771A4D14()
{
  v0 = dispatch_get_global_queue(0, 0);
  notify_register_dispatch("com.apple.libEDR.DumpState", &dword_281341494, v0, &unk_28864D2D0);
}

void sub_2771A4D94()
{
  v10 = *MEMORY[0x277D85DE8];
  sub_2771A3944();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v5 = "EDRServerDumpStateToSysLog";
    v6 = 2048;
    v7 = byte_2813414B4;
    v8 = 1024;
    v9 = strlen(byte_2813414B4);
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: data => %p size = %d\n", buf, 0x1Cu);
  }

  __lasts = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - Server State Begin\n", buf, 2u);
  }

  v0 = strtok_r(byte_2813414B4, "\n", &__lasts);
  if (v0)
  {
    v1 = v0;
    v2 = MEMORY[0x277D86220];
    do
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v5 = v1;
        _os_log_impl(&dword_27719A000, v2, OS_LOG_TYPE_INFO, "libEDR - Server State: %s\n", buf, 0xCu);
      }

      v1 = strtok_r(0, "\n", &__lasts);
    }

    while (v1);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - Server State End\n", buf, 2u);
  }
}

void sub_2771A4F94(uint64_t result, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (dword_281341428 == result)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = "No";
      v12 = "EDRServerEnableSBIM";
      v11 = 136315650;
      if (a2)
      {
        v4 = "Yes";
      }

      v13 = 1024;
      v14 = result;
      v15 = 2080;
      v16 = v4;
      _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: did=%d enable=%s\n", &v11, 0x1Cu);
    }

    v5 = sub_27719B588(result);
    if (v5)
    {
      v6 = v5;
      sub_2771A5264(result);
      v7 = *(v6 + 416);
      if (v7)
      {
        if (*(v6 + 552) == 1)
        {
          v8 = MEMORY[0x277CBED28];
          if (!a2)
          {
            v8 = MEMORY[0x277CBED10];
          }

          v9 = IORegistryEntrySetCFProperty(v7, @"enableSBIM", *v8);
          if (v9)
          {
            v10 = v9;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              sub_2771AB034();
            }

            if (v10 == -536870201)
            {
              *(v6 + 552) = 0;
            }
          }

          else
          {
            *(v6 + 553) = a2;
          }
        }
      }
    }
  }
}

BOOL sub_2771A5120(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (dword_281341428 != a1)
  {
    return 0;
  }

  v2 = sub_27719B588(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_2771A5264(a1);
  v4 = *(v3 + 416);
  if (!v4)
  {
    return 0;
  }

  CFProperty = IORegistryEntryCreateCFProperty(v4, @"enableSBIM", *MEMORY[0x277CBECE8], 0);
  if (CFProperty)
  {
    v6 = CFProperty;
    v7 = CFBooleanGetValue(CFProperty) != 0;
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = "No";
    if (v7)
    {
      v9 = "Yes";
    }

    v10 = 136315394;
    v11 = "EDRServerSBIMIsEnabled";
    v12 = 2080;
    v13 = v9;
    _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s => %s\n", &v10, 0x16u);
  }

  return v7;
}

void sub_2771A5264(uint64_t a1)
{
  v1 = sub_27719B588(a1);
  if (v1)
  {
    v2 = v1;
    if (!*(v1 + 416))
    {
      v3 = (v1 + 416);
      if (IOMobileFramebufferGetMainDisplay())
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2771AB0B0();
        }

LABEL_6:
        *(v2 + 408) = 0;
        *v3 = 0;
        return;
      }

      ServiceObject = IOMobileFramebufferGetServiceObject();
      *v3 = ServiceObject;
      if (!ServiceObject)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2771AB12C();
        }

        goto LABEL_6;
      }
    }
  }
}

void sub_2771A530C(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = qword_281343528;
  std::mutex::lock(qword_281343528);
  v3 = sub_27719B588(v1);
  if (v3)
  {
    v4 = v3;
    v23 = *(v3 + 512) == 0;
    Block = IOMobileFramebufferGetBlock();
    if (Block)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "sbimTimerHandler";
        *&buf[12] = 1024;
        *&buf[14] = Block;
        _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: IOMobileFramebufferGetBlock() => 0x%x\n", buf, 0x12u);
      }
    }

    else
    {
      v6 = sub_27719B61C(v4);
      v8 = v7;
      v9 = log2f(1.0 / v7);
      v10 = log2f(1.0 / *(v4 + 372));
      v11 = v6 * (v8 * *(v4 + 356));
      v12 = *(v4 + 468);
      if (v12)
      {
        v13 = &v21 + 2;
        do
        {
          *v13++ *= 2;
          --v12;
        }

        while (v12);
      }

      v15 = *(v4 + 512) == 1 || v23;
      sub_2771A5AD0(v4 + 448, &v21, v15, v9, v10, v11);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v16 = *(v4 + 448);
        if (v16 > 3)
        {
          v17 = "UnknownMitigationStage";
        }

        else
        {
          v17 = off_27A70E4B8[v16];
        }

        v18 = *(v4 + 452);
        *&v19 = *(v4 + 492);
        v20 = *(v4 + 512);
        *buf = 136318210;
        *&buf[4] = "sbimTimerHandler";
        *&buf[12] = 1024;
        *&buf[14] = DWORD2(v21);
        *&buf[18] = 1024;
        *&buf[20] = HIDWORD(v21);
        LOWORD(v25) = 1024;
        *(&v25 + 2) = v22;
        HIWORD(v25) = 2048;
        *v26 = *(&v22 + 1);
        *&v26[8] = 2048;
        *&v26[10] = v11;
        *&v26[18] = 2048;
        *&v26[20] = v10;
        *&v26[28] = 2048;
        *&v26[30] = v9;
        *&v26[38] = 2080;
        v27 = v17;
        LOWORD(v28) = 1024;
        *(&v28 + 2) = v18;
        HIWORD(v28) = 2048;
        v29 = v19;
        v30 = 1024;
        v31 = v20;
        v32 = 1024;
        v33 = v23;
        _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: SBIM rgb=(%u, %u, %u), duration=%llu, refWhite: %f, HR_request: %f, HR_in: %f, state: %s, violation: %d, sbim_above: %f, sbim_read_stage: %d, sbim_reset: %d", buf, 0x6Cu);
      }

      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_2771A63D0;
      v25 = &unk_27A70E420;
      *v26 = v21;
      *&v26[16] = v22;
      v28 = __PAIR64__(LODWORD(v10), LODWORD(v11));
      v29 = __PAIR64__(v23, LODWORD(v9));
      *&v26[32] = v4;
      v27 = (v4 + 512);
      AnalyticsSendEventLazy();
      *(v4 + 512) = (*(v4 + 512) + 1) % *(v4 + 456);
      sub_27719FFC4();
    }
  }

  std::mutex::unlock(v2);
}

void sub_2771A5688(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = qword_281343528;
  std::mutex::lock(qword_281343528);
  v3 = sub_27719B588(v1);
  if (!v3)
  {
    goto LABEL_32;
  }

  v4 = v3;
  v5 = sub_27719B61C(v3);
  v7 = v6;
  v8 = log2f(1.0 / v6);
  v9 = log2f(1.0 / *(v4 + 372));
  if ((atomic_load_explicit(byte_2813435C8, memory_order_acquire) & 1) == 0)
  {
    sub_2771AB1AC(v4);
  }

  if ((atomic_load_explicit(byte_2813435D0, memory_order_acquire) & 1) == 0)
  {
    sub_2771AB214(v4);
  }

  v10 = *(v4 + 448);
  if (v10 <= 1)
  {
    v11 = v9;
    if (!v10)
    {
      goto LABEL_19;
    }

    if (v10 != 1)
    {
      goto LABEL_15;
    }

LABEL_18:
    v11 = fmax((v8 - *&dword_281343574), 0.0);
    goto LABEL_19;
  }

  if (v10 == 2)
  {
    v11 = v8;
    if (*(v4 + 452) != 1)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v10 == 3)
  {
    if (*(v4 + 452) != 1)
    {
      if (v8 <= v9)
      {
        v11 = v8 + *&dword_281343578;
      }

      else
      {
        v11 = fmaxf(v9, v8 - *&dword_281343578);
      }

      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_15:
  v11 = 0.0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_2771AB27C();
  }

LABEL_19:
  v12 = fminf(v9, v11);
  v13 = exp2(v12);
  v14 = v5 * (v7 * *(v4 + 356));
  v15 = byte_281343530;
  v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v15 == 1)
  {
    if (v16)
    {
      v17 = *(v4 + 448);
      if (v17 > 3)
      {
        v18 = "UnknownMitigationStage";
      }

      else
      {
        v18 = off_27A70E4B8[v17];
      }

LABEL_28:
      v20 = *(v4 + 452);
      v21 = *(v4 + 492);
      *v23 = 136316930;
      *&v23[4] = "mitigationTimerHandler";
      *&v23[12] = 2048;
      *&v23[14] = v14;
      *&v23[22] = 2048;
      v24 = v9;
      *v25 = 2048;
      *&v25[2] = v8;
      *&v25[10] = 2048;
      v26 = v12;
      *v27 = 2080;
      *&v27[2] = v18;
      v28 = 1024;
      v29 = v20;
      v30 = 2048;
      v31 = v21;
      _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: SBIM refWhite: %f, HR_request: %f, HR_current: %f, HR_out: %f, state: %s, violation: %d, sbim_above: %f\n", v23, 0x4Eu);
    }
  }

  else if (v16)
  {
    v19 = *(v4 + 448);
    if (v19 > 3)
    {
      v18 = "UnknownMitigationStage";
    }

    else
    {
      v18 = off_27A70E4B8[v19];
    }

    goto LABEL_28;
  }

  *v23 = MEMORY[0x277D85DD0];
  *&v23[8] = 3221225472;
  *&v23[16] = sub_2771A6748;
  v24 = COERCE_DOUBLE(&unk_27A70E440);
  *&v25[8] = v14;
  v26 = COERCE_DOUBLE(__PAIR64__(LODWORD(v8), LODWORD(v9)));
  *v27 = v12;
  *v25 = v4;
  AnalyticsSendEventLazy();
  if (*(v4 + 452) == 1 && vabdd_f64(*(v4 + 444), 1.0 / v13) / *(v4 + 444) > 0.0001)
  {
    v22 = 1.0 / v13;
    *(v4 + 444) = v22;
    std::mutex::unlock(v2);
    sub_27719B8B0(v1, 0);
    return;
  }

LABEL_32:
  std::mutex::unlock(v2);
}

void sub_2771A5AD0(uint64_t a1, __int128 *a2, char a3, float a4, float a5, float a6)
{
  v36 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_281343560, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_281343560))
  {
    v26 = *(a1 + 20);
    qword_2813414A0 = 0;
    unk_2813414A8 = 0;
    sub_2771A61E0(&qword_2813414A0, v26, 0.0);
    __cxa_atexit(sub_2771A6120, &qword_2813414A0, &dword_27719A000);
    __cxa_guard_release(&qword_281343560);
  }

  v12 = *(a1 + 20);
  v29 = 0;
  v30 = 0;
  if (v12)
  {
    operator new();
  }

  if (a3)
  {
    if (v30 != v29)
    {
      sub_2771A61E0(&v29, 0, 0.0);
    }
  }

  else if (v30 != v29)
  {
    sub_2771A61E0(&v29, 0, 0.0);
  }

  sub_2771A627C(&qword_2813414A0, 0, 0);
  if ((atomic_load_explicit(byte_2813435A0, memory_order_acquire) & 1) == 0)
  {
    sub_2771AB2F8();
  }

  if ((atomic_load_explicit(byte_2813435B0, memory_order_acquire) & 1) == 0)
  {
    sub_2771AB350();
  }

  if ((atomic_load_explicit(byte_2813435C0, memory_order_acquire) & 1) == 0)
  {
    sub_2771AB38C();
  }

  if (!qword_2813435B8)
  {
    __assert_rtn("SBIMLimitsByModel", "EDR.mm", 1984, "0 != curveSize");
  }

  v13 = vcvtmd_s64_f64(a6 / 10.0 + 0.5);
  v14 = qword_2813435B8 - 1;
  v15 = v13 & ~(v13 >> 31);
  if (v15 < qword_2813435B8 - 1)
  {
    v14 = v15;
  }

  sub_2771A6348(&__p, (qword_2813435A8 + 12 * v14), *(a1 + 20));
  *&v32[4] = &v29;
  *&v32[12] = &__p;
  v16 = sub_2771A6174(buf);
  *(a1 + 4) = v16;
  v17 = *a1;
  if (*a1 > 1)
  {
    if (v17 == 2)
    {
      v19 = *(a1 + 48) + -1.0;
      *(a1 + 48) = v19;
      if (v19 == 0.0)
      {
        *a1 = 3;
        *(a1 + 44) = *(a1 + 36);
      }
    }

    else
    {
      if (v17 != 3)
      {
LABEL_28:
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          sub_2771AB3C8();
        }

        goto LABEL_36;
      }

      if (vabds_f32(a4, a5) < ((*(a1 + 24) * *(a1 + 16)) / (fminf(*(a1 + 28), *(a1 + 32)) * 60.0)))
      {
        *a1 = 0;
      }
    }
  }

  else
  {
    if (v17)
    {
      if (v17 == 1)
      {
        if ((v16 & 1) == 0)
        {
          *a1 = 2;
          *(a1 + 48) = *(a1 + 40);
        }

        goto LABEL_36;
      }

      goto LABEL_28;
    }

    if (v16)
    {
      v18 = *(a1 + 44) + -1.0;
      *(a1 + 44) = v18;
      if (v18 != 0.0)
      {
        goto LABEL_36;
      }

      *a1 = 1;
    }

    *(a1 + 44) = *(a1 + 36);
  }

LABEL_36:
  v20 = byte_281343530;
  v21 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (v20 == 1)
  {
    if (!v21)
    {
      goto LABEL_41;
    }
  }

  else if (!v21)
  {
    goto LABEL_41;
  }

  v22 = *__p;
  v23 = *(__p + 1);
  v24 = *(__p + 2);
  *buf = 136315906;
  *v32 = "UpdateMitigationState";
  *&v32[8] = 2048;
  *&v32[10] = v22;
  *&v32[18] = 2048;
  v33 = v23;
  v34 = 2048;
  v35 = v24;
  _os_log_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "libEDR - %s: SBIM limits [R: %f, G: %f, B: %f]\n", buf, 0x2Au);
LABEL_41:
  *(a1 + 56) = sub_27719B074();
  v25 = *a2;
  *(a1 + 88) = a2[1];
  *(a1 + 72) = v25;
  if (__p)
  {
    if (v28 != __p)
    {
      v28 += (__p - v28 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    operator delete(__p);
  }

  if (v29)
  {
    if (v30 != v29)
    {
      v30 += (v29 - v30 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    }

    operator delete(v29);
  }
}

uint64_t sub_2771A6120(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3 != v2)
    {
      *(a1 + 8) = &v3[(v2 - v3 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v2);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return a1;
}

uint64_t sub_2771A6174(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = *(v1 + 8) - *v1;
  v4 = v3 >> 2;
  if (v3)
  {
    LOBYTE(v3) = *v2 > ***(a1 + 16);
  }

  if (v4 >= 2)
  {
    v5 = v4 - 1;
    v6 = v2 + 1;
    v7 = (**(a1 + 16) + 4);
    do
    {
      v8 = *v6++;
      v9 = v8;
      v10 = *v7++;
      LOBYTE(v3) = v3 | (v9 > v10);
      --v5;
    }

    while (v5);
  }

  return v3 & 1;
}

void sub_2771A61E0(uint64_t a1, unint64_t a2, float a3)
{
  v5 = *a1;
  if (v5)
  {
    v6 = *(a1 + 8);
    if (v6 != v5)
    {
      *(a1 + 8) = &v6[(v5 - v6 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v5);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (a2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    sub_27719E004();
  }
}

uint64_t sub_2771A627C(uint64_t a1, _BYTE *__src, _BYTE *a3)
{
  v4 = a3 - __src;
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6 - v5 != a3 - __src)
  {
    if (v5)
    {
      if (v6 != v5)
      {
        *(a1 + 8) = &v6[(v5 - v6 + 3) & 0xFFFFFFFFFFFFFFFCLL];
      }

      operator delete(v5);
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    if ((v4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_27719E004();
  }

  if (a3 != __src)
  {
    memmove(v5, __src, a3 - __src);
  }

  return a1;
}

void *sub_2771A6348(void *a1, const void *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  if (a3)
  {
    if (!(a3 >> 62))
    {
      operator new();
    }

    sub_27719E004();
  }

  return a1;
}

id sub_2771A63D0(uint64_t a1)
{
  v23[12] = *MEMORY[0x277D85DE8];
  v22[0] = @"SBIM_red";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
  v23[0] = v21;
  v22[1] = @"SBIM_green";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 44)];
  v23[1] = v20;
  v22[2] = @"SBIM_blue";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 48)];
  v23[2] = v19;
  v22[3] = @"SBIM_duration";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 56)];
  v23[3] = v2;
  v22[4] = @"refWhite";
  LODWORD(v3) = *(a1 + 80);
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  v23[4] = v4;
  v22[5] = @"HR_request";
  LODWORD(v5) = *(a1 + 84);
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v23[5] = v6;
  v22[6] = @"HR_current";
  LODWORD(v7) = *(a1 + 88);
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v23[6] = v8;
  v22[7] = @"state";
  v9 = *(*(a1 + 64) + 448);
  if (v9 > 3)
  {
    v10 = "UnknownMitigationStage";
  }

  else
  {
    v10 = off_27A70E4B8[v9];
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
  v23[7] = v11;
  v22[8] = @"violation";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:*(*(a1 + 64) + 452)];
  v23[8] = v12;
  v22[9] = @"above";
  LODWORD(v13) = *(*(a1 + 64) + 492);
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v23[9] = v14;
  v22[10] = @"read_stage";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:**(a1 + 72)];
  v23[10] = v15;
  v22[11] = @"reset";
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 92)];
  v23[11] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:12];

  return v17;
}

id sub_2771A6748(uint64_t a1, double a2)
{
  v19[7] = *MEMORY[0x277D85DE8];
  v18[0] = @"refWhite";
  LODWORD(a2) = *(a1 + 40);
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:a2];
  v19[0] = v3;
  v18[1] = @"HR_request";
  LODWORD(v4) = *(a1 + 44);
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v19[1] = v5;
  v18[2] = @"HR_current";
  LODWORD(v6) = *(a1 + 48);
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v19[2] = v7;
  v18[3] = @"HR_out";
  LODWORD(v8) = *(a1 + 52);
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v19[3] = v9;
  v18[4] = @"state";
  v10 = *(*(a1 + 32) + 448);
  if (v10 > 3)
  {
    v11 = "UnknownMitigationStage";
  }

  else
  {
    v11 = off_27A70E4B8[v10];
  }

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
  v19[4] = v12;
  v18[5] = @"violation";
  v13 = [MEMORY[0x277CCABB0] numberWithBool:*(*(a1 + 32) + 452)];
  v19[5] = v13;
  v18[6] = @"above";
  LODWORD(v14) = *(*(a1 + 32) + 492);
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v19[6] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:7];

  return v16;
}

void *sub_2771A6994(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

id sub_2771A6A68(uint64_t a1)
{
  v26[11] = *MEMORY[0x277D85DE8];
  v25[0] = @"Hardware";
  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:&xmmword_281343501];
  v26[0] = v24;
  v25[1] = @"Software";
  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:&xmmword_2813434D9];
  v26[1] = v23;
  v25[2] = @"IsEDREnabled";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:sub_27719BFFC(*(a1 + 40))];
  v26[2] = v2;
  v25[3] = @"MinScalingFactor";
  LODWORD(v3) = *(*(a1 + 40) + 340);
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v26[3] = v4;
  v26[4] = v5;
  v25[4] = @"ScalingFactorLimits";
  v25[5] = @"DefaultMinScalingFactor";
  LODWORD(v7) = *(v6 + 324);
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v26[5] = v8;
  v25[6] = @"TargetBrightness";
  LODWORD(v9) = *(*(a1 + 40) + 364);
  v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v26[6] = v10;
  v25[7] = @"MaxLuminance";
  LODWORD(v11) = *(*(a1 + 40) + 356);
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v26[7] = v12;
  v25[8] = @"AmbientIlluminance";
  LODWORD(v13) = *(*(a1 + 40) + 360);
  v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
  v26[8] = v14;
  v25[9] = @"BrightnessScaler";
  LODWORD(v15) = *(*(a1 + 40) + 556);
  v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
  v26[9] = v16;
  v25[10] = @"MitigationState";
  v17 = *(*(a1 + 40) + 448);
  if (v17 > 3)
  {
    v18 = "UnknownMitigationStage";
  }

  else
  {
    v18 = off_27A70E4B8[v17];
  }

  v19 = v23;
  v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v18, v23}];
  v26[10] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:11];

  return v21;
}

uint64_t *sub_2771A6D98(uint64_t a1, unsigned int *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 28);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_2771A6E64(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_2771A6ED4(a1, v4);
  return 1;
}

uint64_t *sub_2771A6ED4(uint64_t **a1, uint64_t a2)
{
  v3 = sub_2771A303C(a1, a2);

  operator delete(a2);
  return v3;
}

uint64_t *sub_2771A6F18(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_2771A6FF8(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_2771A70F0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t sub_2771A7134()
{
  v0 = sub_27719C118();
  if (!v0)
  {
    return 0xFFFFFFFFLL;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = v0;
  pthread_rwlock_wrlock((v0 + 232));
  *v17[3] = "com.apple.libEDR.Notification";
  v1 = v17[3];
  *(v1 + 20) = 0;
  v2 = sub_2771A7858("com.apple.libEDR.Notification", (v1 + 20));
  v3 = v17[3];
  if (!v2 && (sub_2771A7A0C((v3 + 40)), *(v17[3] + 8) = sub_2771A7A78(), *(v17[3] + 12) = sub_2771A7ABC(), global_queue = dispatch_get_global_queue(2, 0), v7 = v17, *(v17[3] + 24) = global_queue, v3 = v7[3], (v8 = *(v3 + 24)) != 0) && (v9 = dispatch_source_create(MEMORY[0x277D85D08], *(v3 + 20), 0, v8), v10 = v17, *(v17[3] + 32) = v9, v3 = v10[3], (v11 = *(v3 + 32)) != 0))
  {
    dispatch_retain(v11);
    pthread_rwlock_unlock((v17[3] + 232));
    v12 = *(v17[3] + 32);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 0x40000000;
    handler[2] = sub_2771A7B00;
    handler[3] = &unk_27A70E4E0;
    handler[4] = &v16;
    dispatch_source_set_event_handler(v12, handler);
    v13 = *(v17[3] + 32);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 0x40000000;
    v14[2] = sub_2771A8800;
    v14[3] = &unk_27A70E508;
    v14[4] = &v16;
    dispatch_source_set_cancel_handler(v13, v14);
    dispatch_resume(*(v17[3] + 32));
    v4 = 0;
  }

  else
  {
    pthread_rwlock_unlock((v3 + 232));
    v4 = 0xFFFFFFFFLL;
  }

  _Block_object_dispose(&v16, 8);
  return v4;
}

NSObject *sub_2771A734C()
{
  v0 = sub_27719C118();
  if (!v0)
  {
    return 0xFFFFFFFFLL;
  }

  result = *(v0 + 32);
  if (result)
  {
    dispatch_source_cancel(result);
    return 0;
  }

  return result;
}

uint64_t sub_2771A7380(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v8 = sub_27719C118();
  if (v8)
  {
    return sub_2771A9350(v8, a1, 0, a2, a3, a4, 0, 0, 0);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sub_2771A73F0(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v8 = sub_27719C118();
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  sub_2771AA27C(v8, a1, a2, 0, 0, a3, a4, 0);
  return 0;
}

uint64_t sub_2771A7458(int a1)
{
  v2 = sub_27719C118();
  v8 = a1;
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  pthread_rwlock_wrlock((v2 + 232));
  v4 = sub_27719C1F0((v3 + 80), &v8);
  if (v4)
  {
    v4[3] = 0;
    v5 = v4[5];
    if (v5)
    {
      _Block_release(v5);
    }
  }

  syslog(5, "EDR - client remove handlers client = %d type = %d\n", *(v3 + 160), a1);
  v6 = sub_27719C1F0((v3 + 80), &v8);
  if (v6)
  {
    sub_2771AA850((v3 + 80), v6);
  }

  pthread_rwlock_unlock((v3 + 232));
  return 0;
}

uint64_t sub_2771A7500(uint64_t a1, void *a2, size_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = sub_27719C118();
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  if (sub_2771A9478("com.apple.libEDR.Notification", v6, 0x2710u))
  {
    return 0xFFFFFFFFLL;
  }

  if (a3 >= 0x21)
  {
    syslog(3, "EDR - %s: data size %d exceeds max data size %d\n", "send_request", a3, 32);
    return 0xFFFFFFFFLL;
  }

  v9 = *(v7 + 8);
  if (v9 == *(v7 + 160))
  {
    v11 = 0;
    memset(v12, 0, sizeof(v12));
    sub_2771A85A0(v7, v9, a1, a2, a3, &v11 + 4, v12, &v11, 1);
    sub_27719AD68(v7, HIDWORD(v11), v12, v11, 1);
    return 0;
  }

  else
  {
    pthread_rwlock_wrlock((v7 + 232));
    v10 = sub_2771A8690(*(v7 + 140), a1, a2, a3, 0);
    pthread_rwlock_unlock((v7 + 232));
    return v10;
  }
}

uint64_t sub_2771A7664(mach_msg_timeout_t a1, uint64_t a2, const void *a3, uint64_t a4, unsigned int *a5, void *a6, unsigned int *a7)
{
  v14 = sub_27719C118();
  if (!v14)
  {
    return 0xFFFFFFFFLL;
  }

  v15 = v14;
  if (sub_2771A9478("com.apple.libEDR.Notification", v14, 0x2710u))
  {
    return 0xFFFFFFFFLL;
  }

  if (a4 >= 0x21)
  {
    syslog(3, "EDR - %s: data size %d exceeds max data size %d\n");
    return 0xFFFFFFFFLL;
  }

  v16 = *(v15 + 8);
  if (v16 == *(v15 + 160))
  {
    sub_2771A85A0(v15, v16, a2, a3, a4, a5, a6, a7, 1);
    if (!a7)
    {
      return 0xFFFFFFFFLL;
    }

    sub_27719AD68(v15, *a5, a6, *a7, 1);
    return 0;
  }

  else
  {
    name = 0;
    *&options.flags = xmmword_2771AD5E8;
    options.reserved[1] = 0;
    v18 = MEMORY[0x277D85F48];
    v19 = mach_port_construct(*MEMORY[0x277D85F48], &options, 0, &name);
    if (v19)
    {
      mach_error_string(v19);
      syslog(3, "EDR - %s: fail to create reply port  => %s (%d) \n");
      return 0xFFFFFFFFLL;
    }

    pthread_rwlock_wrlock((v15 + 232));
    v17 = sub_2771A9024(*(v15 + 140), a2, a3, a4, name, &v26, &v25, a5, a6, a7, &v24, a1);
    pthread_rwlock_unlock((v15 + 232));
    v20 = mach_port_destruct(*v18, name, 0, 0);
    if (v20)
    {
      mach_error_string(v20);
      syslog(3, "EDR - %s: fail to destroy reply port  => %s (%d) \n");
      return 0xFFFFFFFFLL;
    }
  }

  return v17;
}

uint64_t sub_2771A7858(const char *a1, mach_port_name_t *a2)
{
  name = 0;
  if (a1)
  {
    special_port.flags = 0;
    v4 = task_get_special_port(*MEMORY[0x277D85F48], 4, &special_port.flags);
    if (v4)
    {
      mach_error_string(v4);
      syslog(3, "EDR - %s: task_get_bootstrap_port() => %s (%d)\n");
LABEL_12:
      sub_2771A89BC(name);
      return 0xFFFFFFFFLL;
    }

    syslog(5, "EDR - Bootstrap Port: %d\n", special_port.flags);
    name = 0;
    v8 = bootstrap_check_in(special_port.flags, a1, &name);
    if (v8)
    {
      mach_error_string(v8);
      syslog(3, "EDR - %s: bootstrap_check_in() => %s (%d)\n");
      goto LABEL_12;
    }

    syslog(5, "EDR - Local Port: %d (%s)\n");
LABEL_10:
    result = mach_port_insert_right(*MEMORY[0x277D85F48], name, name, 0x14u);
    if (!result)
    {
      *a2 = name;
      return result;
    }

    mach_error_string(result);
    syslog(3, "EDR - %s: mach_port_insert_right() => %s (%d)\n");
    goto LABEL_12;
  }

  memset(&special_port, 0, sizeof(special_port));
  v5 = mach_port_construct(*MEMORY[0x277D85F48], &special_port, 0, &name);
  if (!v5)
  {
    syslog(5, "EDR - Local Port: %d\n");
    goto LABEL_10;
  }

  v6 = v5;
  v7 = mach_error_string(v5);
  syslog(3, "EDR - %s: mach_port_construct() => %s (%d)\n", "setup_local_port", v7, v6);
  return 0xFFFFFFFFLL;
}

void *sub_2771A7A0C(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t sub_2771A7A78()
{
  if (qword_281341470 != -1)
  {
    sub_2771AB448();
  }

  if (qword_281341468)
  {
    return *(qword_281341468 + 20);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2771A7ABC()
{
  if (qword_281341470 != -1)
  {
    sub_2771AB448();
  }

  if (qword_281341468)
  {
    return *(qword_281341468 + 28);
  }

  else
  {
    return 0;
  }
}

void sub_2771A7B00(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  *v21 = 0;
  v22 = 0;
  v20 = 0;
  v19 = 0;
  memset(v25, 0, sizeof(v25));
  if (!sub_2771A829C(*(*(*(*(a1 + 32) + 8) + 24) + 20), &v22 + 1, &v22, &v21[1], v21, &v20 + 1, v25, &v20, &v19))
  {
    switch(v21[1])
    {
      case 3:
        v3 = *(*(*(a1 + 32) + 8) + 24);
        v4 = v21[0];
        pthread_rwlock_wrlock((v3 + 232));
        v5 = (v3 + 56);
        while (1)
        {
          v5 = *v5;
          if (!v5)
          {
            break;
          }

          if (*(v5 + 9) == v4)
          {
            v6 = *(v5 + 6);
            goto LABEL_20;
          }
        }

        v6 = 0;
LABEL_20:
        pthread_rwlock_unlock((v3 + 232));
        v11 = *(*(*(a1 + 32) + 8) + 24);
        pthread_rwlock_wrlock((v11 + 232));
        for (i = *(v11 + 56); i; i = sub_2771A8C40((v11 + 40), i))
        {
          while (*(i + 36) != v4)
          {
            i = *i;
            if (!i)
            {
              goto LABEL_27;
            }
          }

          syslog(5, "EDR - server remove client = %d type = %d port = %d\n", *(i + 24), *(i + 32), v4);
          v13 = *(i + 36);
          if (v13)
          {
            sub_2771A8934(v13);
            *(i + 36) = 0;
          }
        }

LABEL_27:
        pthread_rwlock_unlock((v11 + 232));
        sub_2771A85A0(*(*(*(a1 + 32) + 8) + 24), v6, 0, 0, 0, 0, 0, 0, 0);
        break;
      case 2:
        v17 = 0;
        v18 = 0;
        *previous = 0u;
        v24 = 0u;
        sub_2771A85A0(*(*(*(a1 + 32) + 8) + 24), HIDWORD(v22), HIDWORD(v20), v25, v20, &v18, previous, &v17, 0);
        if (v19 == 1)
        {
          sub_2771A8690(v21[0], v18, previous, v17, 2);
        }

        break;
      case 1:
        v2 = *(*(*(a1 + 32) + 8) + 24);
        if (v22 == __PAIR64__(*(v2 + 8), *(v2 + 12)))
        {
          syslog(5, "EDR - server local client = %d type = %d port = %d\n", HIDWORD(v22), HIDWORD(v20), v21[0]);
        }

        else
        {
          v7 = v21[0];
          previous[0] = HIDWORD(v20);
          pthread_rwlock_wrlock((v2 + 232));
          v8 = sub_27719D1F8((v2 + 40), previous);
          if (v8 == v9)
          {
            goto LABEL_18;
          }

          v10 = 0;
          do
          {
            v10 |= *(v8 + 9) == v7;
            v8 = *v8;
          }

          while (v8 != v9);
          if ((v10 & 1) == 0)
          {
LABEL_18:
            operator new();
          }

          pthread_rwlock_unlock((v2 + 232));
          previous[0] = 0;
          v14 = mach_port_request_notification(*MEMORY[0x277D85F48], v7, 72, 1u, *(*(*(*(a1 + 32) + 8) + 24) + 20), 0x15u, previous);
          v15 = v14;
          if (v14)
          {
            v16 = mach_error_string(v14);
            syslog(3, "EDR - %s: mach_port_request_notification() => %s (%d)\n", "start_notification_service_block_invoke", v16, v15);
          }
        }

        break;
    }
  }
}

uint64_t sub_2771A829C(mach_port_name_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, mach_port_t *a5, mach_msg_size_t *a6, void *a7, mach_port_t *a8, mach_port_t *a9)
{
  sub_2771A8AD4(&msg, 4096);
  v17 = msg;
  v18 = mach_msg(msg, 50331650, 0, v29 - msg, a1, 0, 0);
  v19 = v18;
  if (v18)
  {
    v20 = mach_error_string(v18);
    syslog(3, "EDR - %s: mach_msg() => %s (%d), port: %d, local port: %d", "recv_msg", v20, v19, *a5, a1);
LABEL_3:
    v21 = 0xFFFFFFFFLL;
    goto LABEL_4;
  }

  v23 = (&v17->msgh_bits + ((v17->msgh_size + 3) & 0x1FFFFFFFCLL));
  if (!*v23 && v23[1] >= 0x34u)
  {
    *a2 = v23[10];
    *a3 = v23[12];
  }

  *a4 = 0;
  if ((v17->msgh_bits & 0x80000000) == 0)
  {
    msgh_id = v17->msgh_id;
    if (msgh_id)
    {
      if (msgh_id != 72 || v23[3])
      {
        syslog(3, "EDR - %s: unknown message id = %d\n", "recv_msg", msgh_id);
LABEL_24:
        mach_msg_destroy(v17);
        v21 = 0;
        goto LABEL_4;
      }

      p_msgh_remote_port = &v17[1].msgh_remote_port;
      *a4 = 3;
LABEL_23:
      *a5 = *p_msgh_remote_port;
      goto LABEL_24;
    }

    *a4 = 2;
    *a5 = v17->msgh_remote_port;
    *a6 = v17[1].msgh_size;
    msgh_remote_port = v17[1].msgh_remote_port;
    *a9 = msgh_remote_port;
    p_msgh_remote_port = &v17[1].msgh_local_port;
    msgh_local_port = v17[1].msgh_local_port;
    if ((msgh_local_port & 0x80000000) != 0)
    {
      syslog(3, "EDR - %s: data size negative %d\n", "recv_msg", msgh_local_port);
    }

    else if (msgh_local_port <= 0x20)
    {
      if (v17->msgh_size - 40 >= msgh_local_port)
      {
        if (msgh_remote_port == 1)
        {
          if ((v17->msgh_bits & 0x1F) != 0x12)
          {
            syslog(3, "EDR - %s: Not using send-once right for message marked as kFlagSyncReq\n", "recv_msg");
            goto LABEL_28;
          }

          v17->msgh_remote_port = 0;
        }

        if (!a7)
        {
          goto LABEL_24;
        }

        memcpy(a7, &v17[1].msgh_voucher_port, msgh_local_port);
        a5 = a8;
        goto LABEL_23;
      }

      syslog(3, "EDR - %s: data size %d exceeds message data size %u\n");
    }

    else
    {
      syslog(3, "EDR - %s: data size %d exceeds max data size %d\n");
    }

LABEL_28:
    mach_msg_destroy(v17);
    goto LABEL_3;
  }

  if (!v17[1].msgh_bits || HIWORD(v17[1].msgh_local_port) << 16 != 1114112)
  {
    syslog(3, "EDR - %s: invalid port descriptor\n", "recv_msg");
    mach_msg_destroy(v17);
    goto LABEL_3;
  }

  v21 = 0;
  *a4 = 1;
  *a5 = v17[1].msgh_size;
LABEL_4:
  if (msg)
  {
    v29 = msg;
    operator delete(msg);
  }

  return v21;
}

void sub_2771A8578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2771A85A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v22 = a3;
  pthread_rwlock_rdlock((a1 + 232));
  LODWORD(v21[0]) = 0;
  v17 = sub_27719C1F0((a1 + 80), v21);
  if (v17 || sub_27719C1F0((a1 + 80), &v22))
  {
    v18 = *(v17 + 5);
    v21[0] = *(v17 + 3);
    v21[1] = v18;
    v19 = *(v17 + 9);
    v21[2] = *(v17 + 7);
    v21[3] = v19;
    sub_2771A8D94(v21, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  return pthread_rwlock_unlock((a1 + 232));
}

uint64_t sub_2771A8690(mach_port_t a1, int a2, void *__src, size_t __n, int a5)
{
  v5 = __n;
  v15 = *MEMORY[0x277D85DE8];
  if (__n >= 0x21)
  {
    syslog(3, "EDR - %s: data size %d exceeds max data size %d\n", __src);
    return 0xFFFFFFFFLL;
  }

  if (!a1)
  {
    syslog(3, "EDR - %s: no remote port\n", __src);
    return 0xFFFFFFFFLL;
  }

  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  if (a5 == 2)
  {
    v8 = 18;
  }

  else
  {
    v8 = 19;
  }

  msg.msgh_bits = v8;
  msg.msgh_size = 72;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0;
  DWORD1(v13) = a2;
  if (__src)
  {
    memcpy(v14, __src, __n);
    HIDWORD(v13) = v5;
  }

  DWORD2(v13) = a5;
  result = mach_msg(&msg, 17, 0x48u, 0, 0, 1u, 0);
  if (result)
  {
    v10 = result;
    v11 = mach_error_string(result);
    syslog(3, "EDR - %s: mach_msg() => %s (%d), remote port: %d", "send_data", v11, v10, a1);
    if ((v10 - 268435459) <= 1)
    {
      mach_msg_destroy(&msg);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_2771A8800(uint64_t a1)
{
  pthread_rwlock_rdlock((*(*(*(a1 + 32) + 8) + 24) + 232));
  v2 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *(v2 + 56);
  if (v3)
  {
    do
    {
      if (*(v3 + 9))
      {
        syslog(5, "EDR - server free client port = %d\n", *(v3 + 9));
        sub_2771A8934(*(v3 + 9));
        *(v3 + 9) = 0;
      }

      v3 = *v3;
    }

    while (v3);
    v2 = *(*(*(a1 + 32) + 8) + 24);
  }

  sub_2771A7A0C((v2 + 40));
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *(v4 + 32);
  if (v5)
  {
    dispatch_release(v5);
    *(*(*(*(a1 + 32) + 8) + 24) + 32) = 0;
    v4 = *(*(*(a1 + 32) + 8) + 24);
  }

  if (*(v4 + 20))
  {
    syslog(5, "EDR - server delete server port = %d\n", *(v4 + 20));
    sub_2771A8934(*(*(*(*(a1 + 32) + 8) + 24) + 20));
    *(*(*(*(a1 + 32) + 8) + 24) + 20) = 0;
    v4 = *(*(*(a1 + 32) + 8) + 24);
  }

  return pthread_rwlock_unlock((v4 + 232));
}

void sub_2771A8934(uint64_t a1)
{
  v1 = a1;
  v6 = 0;
  v2 = MEMORY[0x277D85F48];
  if (MEMORY[0x277CA7D40](*MEMORY[0x277D85F48], a1, 4, &v6) != 15)
  {
    v3 = mach_port_deallocate(*v2, v1);
    if (v3)
    {
      v4 = v3;
      v5 = mach_error_string(v3);
      syslog(3, "EDR - %s: mach_port_deallocate() => %s (%d)\n", "release_port", v5, v4);
    }
  }
}

void sub_2771A89BC(uint64_t a1)
{
  v6 = 0;
  v2 = MEMORY[0x277D85F48];
  if (MEMORY[0x277CA7D40](*MEMORY[0x277D85F48], a1, 4, &v6) != 15)
  {
    v3 = MEMORY[0x277CA7D20](*v2, a1);
    if (v3)
    {
      v4 = v3;
      v5 = mach_error_string(v3);
      syslog(3, "EDR - %s: mach_port_destroy() => %s (%d)\n", "destroy_port", v5, v4);
    }
  }
}

double sub_2771A8A44()
{
  task_info_outCnt = 8;
  v0 = task_info(*MEMORY[0x277D85F48], 0xFu, task_info_out, &task_info_outCnt);
  if (!v0)
  {
    operator new();
  }

  syslog(3, "EDR - %s: failed to get audit token for current process: %llx", "get_audit_token_self_block_invoke", v0);
  return result;
}

uint64_t *sub_2771A8AD4(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2771A8B48(a1, a2);
  }

  return a1;
}

void sub_2771A8B2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2771A8B48(uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_2771A8B98();
}

void sub_2771A8BB0(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2771A8C0C(exception, a1);
  __cxa_throw(exception, off_27A70C040, MEMORY[0x277D825F0]);
}

std::logic_error *sub_2771A8C0C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t sub_2771A8C40(void *a1, uint64_t *__p)
{
  v2 = a1[1];
  v4 = *__p;
  v3 = __p[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != __p);
  if (v7 == a1 + 2)
  {
    goto LABEL_31;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  v9 = *__p;
  if (v8 != v3)
  {
LABEL_31:
    if (v4)
    {
      v10 = *(v4 + 8);
      if (v5.u32[0] > 1uLL)
      {
        v11 = *(v4 + 8);
        if (v10 >= *&v2)
        {
          v11 = v10 % *&v2;
        }
      }

      else
      {
        v11 = v10 & (*&v2 - 1);
      }

      v9 = *__p;
      if (v11 == v3)
      {
        goto LABEL_22;
      }
    }

    *(*a1 + 8 * v3) = 0;
    v9 = *__p;
  }

  if (!v9)
  {
    goto LABEL_28;
  }

  v10 = *(v9 + 8);
LABEL_22:
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  if (v10 != v3)
  {
    *(*a1 + 8 * v10) = v7;
    v9 = *__p;
  }

LABEL_28:
  *v7 = v9;
  *__p = 0;
  --a1[3];
  operator delete(__p);
  return v4;
}

void sub_2771A8D94(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((a9 & 1) != 0 || (*(a1 + 56) & 1) == 0)
  {
    v9 = *a1;
    if (*a1)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = sub_2771A8EA4;
      block[3] = &unk_27A70E548;
      v10 = a1[1];
      v16 = *a1;
      v17 = v10;
      v11 = a1[3];
      v18 = a1[2];
      v19 = v11;
      v24 = a2;
      v25 = a3;
      v26 = a5;
      v20 = a4;
      v21 = a6;
      v22 = a7;
      v23 = a8;
      dispatch_sync(v9, block);
    }

    else
    {
      v12 = *(a1 + 2);
      if (v12)
      {
        (*(v12 + 16))(v12, a2, a3, a4, a5, a6, a7, a8, *(a1 + 4));
      }

      else
      {
        v13 = *(a1 + 5);
        if (v13)
        {
          v14 = *(a1 + 6);

          v13(a2, a3, a4, a5, a6, a7, a8, v14);
        }
      }
    }
  }
}

uint64_t sub_2771A8EA4(uint64_t result)
{
  v2 = *(result + 48);
  if (v2)
  {
    return (*(v2 + 16))(v2, *(result + 128), *(result + 132), *(result + 96), *(result + 136), *(result + 104), *(result + 112), *(result + 120), *(result + 64));
  }

  v3 = *(result + 72);
  if (v3)
  {
    v4 = *(result + 132);
    v5 = *(result + 136);
    v6 = *(result + 96);
    v7 = *(result + 104);
    v8 = *(result + 112);
    v9 = *(result + 120);
    v10 = *(result + 80);
    v11 = *(result + 128);

    return v3(v11, v4, v6, v5, v7, v8, v9, v10);
  }

  return result;
}

double sub_2771A8F24(uint64_t a1)
{
  *a1 = 0;
  result = NAN;
  *(a1 + 8) = -1;
  *(a1 + 16) = -1;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0x3F80000000000000;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  *(a1 + 120) = 0;
  *(a1 + 128) = -1;
  *(a1 + 136) = -1;
  *(a1 + 148) = 0;
  *(a1 + 140) = 0;
  *(a1 + 156) = 0;
  *(a1 + 160) = -1;
  *(a1 + 168) = -1;
  *(a1 + 204) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 220) = 0x3F80000000000000;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 232) = 766030772;
  return result;
}

uint64_t sub_2771A8FB4(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))(result, *(a1 + 104), *(a1 + 96), *(a1 + 108), *(a1 + 64));
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    v4 = *(a1 + 96);
    v5 = *(a1 + 104);
    v6 = *(a1 + 108);
    v7 = *(a1 + 80);

    return v3(v5, v4, v6, v7);
  }

  return result;
}

uint64_t sub_2771A9024(uint64_t a1, int a2, const void *a3, unsigned int a4, uint64_t a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, void *__dst, _DWORD *a10, _DWORD *a11, mach_msg_timeout_t timeout)
{
  v49 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    syslog(3, "EDR - %s: no remote port\n", a3);
    return 0xFFFFFFFFLL;
  }

  if (!a5)
  {
    syslog(3, "EDR - %s: no local port\n", a3);
    return 0xFFFFFFFFLL;
  }

  v18 = a1;
  v41 = 0;
  v19 = MEMORY[0x277D85F48];
  v20 = MEMORY[0x277CA7D40](*MEMORY[0x277D85F48], a1, 0, &v41);
  if (v20)
  {
    v21 = v20;
    v22 = mach_error_string(v20);
    syslog(3, "EDR - %s: mach_port_get_refs() => %s (%d)\n", "transceive_data", v22, v21);
  }

  if (!v41)
  {
    syslog(3, "EDR - %s: remote port %d has no send right\n", "transceive_data", v18);
    return 1;
  }

  v41 = 0;
  v23 = MEMORY[0x277CA7D40](*v19, a5, 1, &v41);
  if (v23)
  {
    v30 = v23;
    v31 = mach_error_string(v23);
    syslog(3, "EDR - %s: mach_port_get_refs() => %s (%d)\n", "transceive_data", v31, v30);
  }

  if (!v41)
  {
    syslog(3, "EDR - %s: local port %d has no receive right\n", v24, v25, v26, v27, v28, v29);
    return 0xFFFFFFFFLL;
  }

  memset(&msg[4], 0, 32);
  v48 = 0;
  v47 = 0u;
  v46 = 0u;
  v45 = 0u;
  v44 = 0u;
  *__n = 0u;
  *&msg[8] = v18;
  *&msg[12] = a5;
  *msg = 5395;
  *&msg[28] = a2;
  if (a3)
  {
    memcpy(__n + 4, a3, a4);
    LODWORD(__n[0]) = a4;
  }

  *&msg[32] = 1;
  v32 = mach_msg(msg, 50331923, 0x48u, 0x7Cu, a5, timeout, 0);
  if (!v32)
  {
    v37 = *&msg[4];
    v38 = &msg[(*&msg[4] + 3) & 0x1FFFFFFFCLL];
    if (!*v38 && v38[1] >= 0x34u)
    {
      *a6 = v38[10];
      *a7 = v38[12];
    }

    *a8 = *&msg[28];
    if (__dst)
    {
      v39 = __n[0];
      if (LODWORD(__n[0]) >= 0x21)
      {
        syslog(3, "EDR - %s: data size %d exceeds max data size %d\n");
LABEL_28:
        v35 = 0xFFFFFFFFLL;
LABEL_31:
        mach_msg_destroy(msg);
        return v35;
      }

      if (v37 - 40 < LODWORD(__n[0]))
      {
        syslog(3, "EDR - %s: data size %d exceeds message data size %u\n");
        goto LABEL_28;
      }

      memcpy(__dst, __n + 4, LODWORD(__n[0]));
      *a10 = v39;
    }

    v35 = 0;
    *a11 = *&msg[32];
    goto LABEL_31;
  }

  v33 = v32;
  v34 = mach_error_string(v32);
  syslog(3, "EDR - %s: mach_msg() => %s (%d), remote port: %d, local port: %d", "transceive_data", v34, v33, v18, a5);
  v35 = 0xFFFFFFFFLL;
  if ((v33 - 268435459) < 2)
  {
    goto LABEL_31;
  }

  return v35;
}

uint64_t sub_2771A9350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, uint64_t a8, char a9)
{
  v12 = a4;
  v15 = sub_2771A9478("com.apple.libEDR.Notification", a1, a2);
  if (a5)
  {
    sub_2771A9D3C(a1, a3, v12, a5, a6, 0, 0, a9);
    if (a9)
    {
      v16 = "true";
    }

    else
    {
      v16 = "false";
    }

    syslog(5, "EDR - client insert callback block client = %d type = %d block = %p local_olny = %s\n", *(a1 + 160), v12, a5, v16);
  }

  if (a7)
  {
    sub_2771A9D3C(a1, a3, v12, 0, 0, a7, a8, a9);
    if (a9)
    {
      v17 = "true";
    }

    else
    {
      v17 = "false";
    }

    syslog(5, "EDR - client insert callback function client = %d type = %d function = %p local_olny = %s\n", *(a1 + 160), v12, a7, v17);
  }

  return v15;
}

uint64_t sub_2771A9478(const char *a1, uint64_t a2, unsigned int a3)
{
  if (a2)
  {
    v3 = a2;
    v47 = 0;
    v48 = &v47;
    v49 = 0x2000000000;
    v50 = a2;
    if (*(a2 + 140))
    {
      goto LABEL_3;
    }

    pthread_rwlock_wrlock((a2 + 232));
    v11 = v48;
    *(v48[3] + 120) = a1;
    v12 = v11[3];
    *(v12 + 140) = 0;
    pthread_rwlock_unlock((v12 + 232));
    syslog(5, "EDR - client setup_remote_port\n");
    v13 = v48[3];
    if (qword_281341478 != -1)
    {
      sub_2771AB45C();
    }

    if ((atomic_load_explicit(byte_281343550, memory_order_acquire) & 1) == 0)
    {
      sub_2771AB484();
    }

    if ((atomic_load_explicit(byte_281343558, memory_order_acquire) & 1) == 0)
    {
      sub_2771AB4B4();
    }

    special_port = 0;
    v14 = MEMORY[0x277D85F48];
    v15 = task_get_special_port(*MEMORY[0x277D85F48], 4, &special_port);
    v16 = v15;
    if (v15)
    {
      v17 = mach_error_string(v15);
      syslog(3, "EDR - %s: task_get_bootstrap_port() => %s (%d)\n", "setup_remote_port", v17, v16);
    }

    else
    {
      syslog(5, "EDR - Bootstrap Port: %d\n", special_port);
      sp = 0;
      v23 = bootstrap_look_up(special_port, a1, &sp);
      v24 = v23;
      if (v23)
      {
        v25 = mach_error_string(v23);
        syslog(3, "EDR - %s: bootstrap_look_up() => %s (%d)\n", "setup_remote_port", v25, v24);
      }

      else
      {
        mach_absolute_time();
        v51 = 0;
        v26 = MEMORY[0x277CA7D40](*v14, sp, 4, &v51);
        v27 = v26;
        if (!(v26 | v51))
        {
          syslog(5, "EDR - Remote Port: %d (%s)\n", sp, a1);
          *(v13 + 140) = sp;
          v3 = v48[3];
LABEL_3:
          v4 = *(v3 + 8);
          if (v4 == sub_2771A7A78())
          {
            v5 = *(v48[3] + 12);
            if (v5 == sub_2771A7ABC())
            {
              *(v48[3] + 160) = sub_2771A7A78();
              v6 = 0;
              *(v48[3] + 164) = sub_2771A7ABC();
LABEL_39:
              _Block_object_dispose(&v47, 8);
              return v6;
            }
          }

          v7 = v48[3];
          v8 = *(v7 + 172);
          if (v8)
          {
            sub_2771A9A34(*(v7 + 140), v8);
LABEL_9:
            v6 = 0;
            goto LABEL_39;
          }

          syslog(5, "EDR - client setup_local_port\n");
          if (!sub_2771A7858(0, (v48[3] + 172)))
          {
            *(v48[3] + 160) = sub_2771A7A78();
            v18 = sub_2771A7ABC();
            v19 = v48[3];
            v19[41] = v18;
            if (!sub_2771A9A34(v19[35], v19[43]))
            {
              special_port = 0;
              v20 = mach_port_request_notification(*MEMORY[0x277D85F48], *(v48[3] + 140), 72, 1u, *(v48[3] + 172), 0x15u, &special_port);
              v21 = v20;
              if (v20)
              {
                v22 = mach_error_string(v20);
                syslog(3, "EDR - %s: mach_port_request_notification() => %s (%d)\n", "initialize_client_context", v22, v21);
              }

              else
              {
                pthread_rwlock_wrlock((v48[3] + 232));
                global_queue = dispatch_get_global_queue(2, 0);
                v34 = v48;
                *(v48[3] + 176) = global_queue;
                v35 = v34[3];
                v36 = *(v35 + 176);
                if (v36)
                {
                  v37 = dispatch_source_create(MEMORY[0x277D85D08], *(v35 + 172), 0, v36);
                  v38 = v48;
                  *(v48[3] + 184) = v37;
                  v35 = v38[3];
                  v39 = *(v35 + 184);
                  if (v39)
                  {
                    dispatch_retain(v39);
                    pthread_rwlock_unlock((v48[3] + 232));
                    v40 = *(v48[3] + 184);
                    handler[0] = MEMORY[0x277D85DD0];
                    handler[1] = 0x40000000;
                    handler[2] = sub_2771A9AFC;
                    handler[3] = &unk_27A70E5B0;
                    handler[4] = &v47;
                    dispatch_source_set_event_handler(v40, handler);
                    v41 = *(v48[3] + 184);
                    v43[0] = MEMORY[0x277D85DD0];
                    v43[1] = 0x40000000;
                    v43[2] = sub_2771A9C58;
                    v43[3] = &unk_27A70E5D8;
                    v43[4] = &v47;
                    dispatch_source_set_cancel_handler(v41, v43);
                    dispatch_resume(*(v48[3] + 184));
                    goto LABEL_9;
                  }
                }

                pthread_rwlock_unlock((v35 + 232));
              }
            }
          }

LABEL_38:
          v6 = 0xFFFFFFFFLL;
          goto LABEL_39;
        }

        v28 = mach_error_string(v26);
        syslog(3, "EDR - %s: The port seems dead. mach_port_get_refs() => %s (%d), DEAD_NAME refs: %d", "setup_remote_port", v28, v27, v51);
      }
    }

    if ((a3 & 0x80000000) == 0)
    {
      v29 = a3 - 1000;
      if (a3 < 0x3E9)
      {
        v29 = -1;
      }

      if (a3)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      v31 = dispatch_time(0, 1000000000);
      v32 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = sub_2771A99EC;
      block[3] = &unk_27A70E588;
      block[4] = a1;
      block[5] = v3;
      v46 = v30;
      dispatch_after(v31, v32, block);
      v6 = 1;
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_2771A99EC(uint64_t a1)
{
  syslog(5, "EDR - initialize client context retry\n");
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return sub_2771A9478(v2, v3, v4);
}

uint64_t sub_2771A9A34(mach_port_t a1, int a2)
{
  *&msg.msgh_voucher_port = 0;
  v8 = 1;
  v10 = 0x13000000000000;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_bits = 0x2880000013;
  v9 = a2;
  result = mach_msg(&msg, 17, 0x28u, 0, 0, 1u, 0);
  if (result)
  {
    v5 = result;
    v6 = mach_error_string(result);
    syslog(3, "EDR - %s: mach_msg() => %s (%d), remote port: %d, port: %d", "send_port", v6, v5, a1, a2);
    if ((v5 - 268435459) <= 1)
    {
      mach_msg_destroy(&msg);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_2771A9AFC(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = 0;
  *v5 = 0;
  v3 = 0;
  memset(v8, 0, sizeof(v8));
  if (!sub_2771A829C(*(*(*(*(a1 + 32) + 8) + 24) + 172), &v7, &v6, &v5[1], v5, &v4 + 1, v8, &v4, &v3))
  {
    if (v5[1] == 2)
    {
      sub_27719AD68(*(*(*(a1 + 32) + 8) + 24), HIDWORD(v4), v8, v4, 0);
      if (v3 == 1)
      {
        sub_2771A8690(v5[0], 0, 0, 0, 2);
      }
    }

    else if (v5[1] == 3)
    {
      v2 = *(*(*(a1 + 32) + 8) + 24);
      if (*(v2 + 140))
      {
        syslog(5, "EDR - client free server port = %d\n", *(v2 + 140));
        sub_2771A8934(*(*(*(*(a1 + 32) + 8) + 24) + 140));
        *(*(*(*(a1 + 32) + 8) + 24) + 140) = 0;
        v2 = *(*(*(a1 + 32) + 8) + 24);
      }

      dispatch_source_cancel(*(v2 + 184));
    }
  }
}

uint64_t sub_2771A9C58(uint64_t a1)
{
  pthread_rwlock_rdlock((*(*(*(a1 + 32) + 8) + 24) + 232));
  v2 = *(*(*(a1 + 32) + 8) + 24);
  syslog(5, "EDR - client cancel client = %d type = %d port = %d\n", v2[40], v2[42], v2[43]);
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *(v3 + 184);
  if (v4)
  {
    dispatch_release(v4);
    *(*(*(*(a1 + 32) + 8) + 24) + 184) = 0;
    v3 = *(*(*(a1 + 32) + 8) + 24);
  }

  v5 = *(v3 + 172);
  if (v5)
  {
    sub_2771A8934(v5);
    *(*(*(*(a1 + 32) + 8) + 24) + 172) = 0;
    v3 = *(*(*(a1 + 32) + 8) + 24);
  }

  return pthread_rwlock_unlock((v3 + 232));
}

uint64_t sub_2771A9D3C(uint64_t a1, uint64_t a2, int a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v17 = a3;
  pthread_rwlock_wrlock((a1 + 232));
  v13 = sub_27719C1A4((a1 + 192), &v17);
  if (v13 == v14)
  {
    goto LABEL_9;
  }

  v15 = 0;
  do
  {
    if (v13[6] == a4 && v13[7] == a5 && v13[8] == a6)
    {
      v15 |= v13[9] == a7;
    }

    v13 = *v13;
  }

  while (v13 != v14);
  if ((v15 & 1) == 0)
  {
LABEL_9:
    _Block_copy(a4);
    operator new();
  }

  return pthread_rwlock_unlock((a1 + 232));
}

void sub_2771AA27C(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, const void *a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v11 = a3;
  if (a4)
  {
    sub_2771AA37C(a1, a2, a3, a4, a5, 0, 0, a8);
    if (v8)
    {
      v15 = "true";
    }

    else
    {
      v15 = "false";
    }

    syslog(5, "EDR - server insert handler block server = %d type = %d block = %p local_only = %s\n", *(a1 + 8), v11, a4, v15);
  }

  if (a6)
  {
    sub_2771AA37C(a1, a2, v11, 0, 0, a6, a7, v8);
    if (v8)
    {
      v16 = "true";
    }

    else
    {
      v16 = "false";
    }

    syslog(5, "EDR - server insert handler function server = %d type = %d function = %p local_only = %s\n", *(a1 + 8), v11, a6, v16);
  }
}

uint64_t sub_2771AA37C(uint64_t a1, uint64_t a2, int a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v22 = a3;
  pthread_rwlock_wrlock((a1 + 232));
  v14 = sub_27719C1F0((a1 + 80), &v22);
  if (!v14 || v14[6] != a4 || v14[7] != a5 || v14[8] != a6 || v14[9] != a7)
  {
    _Block_copy(a4);
    v15 = *(a1 + 88);
    if (v15)
    {
      v16 = vcnt_s8(v15);
      v16.i16[0] = vaddlv_u8(v16);
      if (v16.u32[0] > 1uLL)
      {
        v17 = a3;
        if (v15 <= a3)
        {
          v17 = a3 % v15;
        }
      }

      else
      {
        v17 = (v15 - 1) & a3;
      }

      v18 = *(*(a1 + 80) + 8 * v17);
      if (v18)
      {
        for (i = *v18; i; i = *i)
        {
          v20 = i[1];
          if (v20 == a3)
          {
            if (*(i + 4) == a3)
            {
              goto LABEL_24;
            }
          }

          else
          {
            if (v16.u32[0] > 1uLL)
            {
              if (v20 >= v15)
              {
                v20 %= v15;
              }
            }

            else
            {
              v20 &= v15 - 1;
            }

            if (v20 != v17)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

LABEL_24:

  return pthread_rwlock_unlock((a1 + 232));
}

void sub_2771AA850(void *a1, uint64_t *__p)
{
  v2 = a1[1];
  v3 = *__p;
  v4 = __p[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v2)
    {
      v4 %= *&v2;
    }
  }

  else
  {
    v4 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != __p);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
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

    if (v8 == v4)
    {
LABEL_20:
      if (!v3)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v3)
  {
    goto LABEL_19;
  }

  v9 = *(v3 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v9 >= *&v2)
    {
      v9 %= *&v2;
    }
  }

  else
  {
    v9 &= *&v2 - 1;
  }

  if (v9 != v4)
  {
LABEL_19:
    *(*a1 + 8 * v4) = 0;
    v3 = *__p;
    goto LABEL_20;
  }

LABEL_21:
  v10 = *(v3 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  if (v10 != v4)
  {
    *(*a1 + 8 * v10) = v7;
    v3 = *__p;
  }

LABEL_27:
  *v7 = v3;
  *__p = 0;
  --a1[3];
  operator delete(__p);
}

uint64_t sub_2771AA984(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 1065353216;
  *(result + 32) = 0;
  return result;
}

uint64_t sub_2771AA9B4(uint64_t a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = *(a1 + 40);
  if (!v5)
  {
    sub_2771AB4E4();
  }

  a2.n128_u32[0] = *a1;
  a3.n128_u32[0] = *(a1 + 4);
  a4.n128_u64[0] = *(a1 + 16);

  return v5(a2, a3, a4);
}

void sub_2771AA9E4()
{
  if (__cxa_guard_acquire(byte_281343598))
  {
    if (qword_281343590 != -1)
    {
      dispatch_once(&qword_281343590, &unk_28864D230);
    }

    __cxa_guard_release(byte_281343598);
  }
}

void sub_2771AAA3C()
{
  if (__cxa_guard_acquire(byte_281343580))
  {
    if (qword_281343590 != -1)
    {
      dispatch_once(&qword_281343590, &unk_28864D230);
    }

    __cxa_guard_release(byte_281343580);
  }
}

void sub_2771AAAA8()
{
  if (__cxa_guard_acquire(byte_281343588))
  {
    dword_281343570 = DWORD2(xmmword_2813413D8);

    __cxa_guard_release(byte_281343588);
  }
}

void sub_2771AAB20()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136315138;
  v1 = "EDRServerStartSBIMTimer";
  _os_log_error_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "libEDR - %s: Unable to create dispatch source for SBIM mitigation\n", &v0, 0xCu);
}

void sub_2771AABA8()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136315138;
  v1 = "EDRServerStartSBIMTimer";
  _os_log_error_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "libEDR - %s: Unable to create dispatch source for SBIM data pull\n", &v0, 0xCu);
}

void sub_2771AAC30()
{
  v5 = 136315394;
  sub_2771A70CC();
  sub_2771A70F0(&dword_27719A000, MEMORY[0x277D86220], v0, "libEDR - %s: displays %d context exists\n", v1, v2, v3, v4, v5);
}

void sub_2771AACAC()
{
  v5 = 136315394;
  sub_2771A70E0();
  sub_2771A70F0(&dword_27719A000, MEMORY[0x277D86220], v0, "libEDR - %s: Exceed max number of displays (%d)\n", v1, v2, v3, v4, v5);
}

void sub_2771AAD30()
{
  v5 = 136315394;
  sub_2771A70E0();
  sub_2771A70F0(&dword_27719A000, MEMORY[0x277D86220], v0, "libEDR - %s: displayID %d is not permitted number\n", v1, v2, v3, v4, v5);
}

void sub_2771AADB8()
{
  v5 = 136315394;
  sub_2771A70CC();
  sub_2771A70F0(&dword_27719A000, MEMORY[0x277D86220], v0, "libEDR - %s: displays %d context not found\n", v1, v2, v3, v4, v5);
}

void sub_2771AAE34()
{
  v5 = 136315394;
  sub_2771A70E0();
  sub_2771A70F0(&dword_27719A000, MEMORY[0x277D86220], v0, "libEDR - %s: attempt to use invalid display number %d\n", v1, v2, v3, v4, v5);
}

void sub_2771AAEBC()
{
  v5 = 136315394;
  sub_2771A70CC();
  sub_2771A70F0(&dword_27719A000, MEMORY[0x277D86220], v0, "libEDR - %s: displays %d context not found\n", v1, v2, v3, v4, v5);
}

void sub_2771AAF38(int a1)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = a1;
  _os_log_error_impl(&dword_27719A000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "libEDR - NotificationCallback: can not find data for display %d\n", v1, 8u);
}

void sub_2771AAFB8()
{
  v5 = 136315394;
  sub_2771A70CC();
  sub_2771A70F0(&dword_27719A000, MEMORY[0x277D86220], v0, "libEDR - %s: sysctlbyname() => 0x%x\n", v1, v2, v3, v4, v5);
}

void sub_2771AB034()
{
  v5 = 136315394;
  sub_2771A70CC();
  sub_2771A70F0(&dword_27719A000, MEMORY[0x277D86220], v0, "libEDR - %s: IORegistryEntrySetCFProperty() => 0x%x\n", v1, v2, v3, v4, v5);
}

void sub_2771AB0B0()
{
  v5 = 136315394;
  sub_2771A70CC();
  sub_2771A70F0(&dword_27719A000, MEMORY[0x277D86220], v0, "libEDR - %s: IOMobileFramebufferGetMainDisplay() => 0x%x\n", v1, v2, v3, v4, v5);
}

void sub_2771AB12C()
{
  v5 = 136315394;
  sub_2771A710C();
  sub_2771A70F0(&dword_27719A000, MEMORY[0x277D86220], v0, "libEDR - %s: IOMobileFramebufferGetMainDisplay() => %d\n", v1, v2, v3, v4, v5);
}

void sub_2771AB1AC(uint64_t a1)
{
  if (__cxa_guard_acquire(byte_2813435C8))
  {
    dword_281343574 = sub_2771A7120(*(a1 + 464), *(a1 + 476));

    __cxa_guard_release(byte_2813435C8);
  }
}

void sub_2771AB214(uint64_t a1)
{
  if (__cxa_guard_acquire(byte_2813435D0))
  {
    dword_281343578 = sub_2771A7120(*(a1 + 464), *(a1 + 480));

    __cxa_guard_release(byte_2813435D0);
  }
}

void sub_2771AB27C()
{
  v5 = 136315394;
  sub_2771A70CC();
  sub_2771A70F0(&dword_27719A000, MEMORY[0x277D86220], v0, "libEDR - %s: unknown SBIM mitigation stage %d, ignoring ... \n", v1, v2, v3, v4, v5);
}

void sub_2771AB2F8()
{
  if (__cxa_guard_acquire(byte_2813435A0))
  {
    if (qword_281343590 != -1)
    {
      dispatch_once(&qword_281343590, &unk_28864D230);
    }

    __cxa_guard_release(byte_2813435A0);
  }
}

void sub_2771AB350()
{
  if (__cxa_guard_acquire(byte_2813435B0))
  {
    qword_2813435A8 = qword_2813413E8;
    __cxa_guard_release(byte_2813435B0);
  }
}

void sub_2771AB38C()
{
  if (__cxa_guard_acquire(byte_2813435C0))
  {
    qword_2813435B8 = qword_2813413F0;
    __cxa_guard_release(byte_2813435C0);
  }
}

void sub_2771AB3C8()
{
  v5 = 136315394;
  sub_2771A710C();
  sub_2771A70F0(&dword_27719A000, MEMORY[0x277D86220], v0, "libEDR - %s: SBIM unknown mitigation stage %d, ignoring ... \n", v1, v2, v3, v4, v5);
}

void sub_2771AB484()
{
  if (__cxa_guard_acquire(byte_281343550))
  {
    __cxa_guard_release(byte_281343550);
  }
}

void sub_2771AB4B4()
{
  if (__cxa_guard_acquire(byte_281343558))
  {
    __cxa_guard_release(byte_281343558);
  }
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}