void sub_10065B0F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

BOOL sub_10065B144(void *a1, double a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v19) & 0x80000000) == 0)
  {
    if (BYTE3(v19))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_1018F3F60();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_1018F3F60();
      }
    }

    v12 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of shiftRecordsByUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_1018F3F60();
      }
    }

    v13 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Activity/CLActivityRecorderDb.h", 577, "shiftRecordsByUL");
    __break(1u);
  }

  v10 = *v17;
  operator delete(*buf);
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160((a1 + 9));
  if (result)
  {
    sub_10003848C(buf);
    v4 = sub_100038730(&v17[8], "UPDATE ", 7);
    (*(*a1 + 64))(__p, a1);
    if ((v15 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v15 & 0x80u) == 0)
    {
      v6 = v15;
    }

    else
    {
      v6 = __p[1];
    }

    v7 = sub_100038730(v4, v5, v6);
    sub_100038730(v7, " SET startTime = startTime + ?", 30);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = a1[10];
    sub_100073518(buf, __p);
    if ((v15 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    sub_1000388D8(v8, v9);
  }

  return result;
}

void sub_10065B664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_10065B6B8(void *a1, uint64_t a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v19) & 0x80000000) == 0)
  {
    if (BYTE3(v19))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_1018F3F60();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_1018F3F60();
      }
    }

    v12 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getMostRecentRecordUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_1018F3F60();
      }
    }

    v13 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Activity/CLActivityRecorderDb.h", 592, "getMostRecentRecordUL");
    __break(1u);
  }

  v10 = *v17;
  operator delete(*buf);
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (sub_100099160((a1 + 9)))
  {
    sub_10003848C(buf);
    v3 = sub_100038730(&v17[8], "SELECT * FROM ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((v15 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v15 & 0x80u) == 0)
    {
      v5 = v15;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = sub_100038730(v3, v4, v5);
    sub_100038730(v6, " ORDER BY ROWID DESC LIMIT 1", 28);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = a1[10];
    sub_100073518(buf, __p);
    if ((v15 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    sub_1000388D8(v7, v8);
  }

  return 2;
}

void sub_10065BBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a13)
  {
    sub_101880BC0();
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_10065BC1C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_100008880(*a2);
  v7 = sqlite3_step(v6);
  if (v7 == 101)
  {
    return 1;
  }

  if (v7 != 100)
  {
    return 2;
  }

  (*(*a1 + 128))(a1, a2, a3);
  return 0;
}

void sub_10065BCAC(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (qword_1025D4200 != -1)
  {
    sub_1018F428C();
  }

  v6 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
  {
    (*(*a1 + 64))(__p, a1);
    v7 = v12 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v14 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "%s insert handle set.", buf, 0xCu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F4508(a1);
  }

  if ((!a2 || !a3) && a2 | a3)
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018F3F60();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 64))(__p, a1);
      v9 = v12 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v14 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "%s, Invalid update finished handlers.", buf, 0xCu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F4650(a1);
    }
  }

  *(a1 + 456) = a2;
  v10 = *(a1 + 464);
  if (v10)
  {
    _Block_release(v10);
  }

  if (a3)
  {
    *(a1 + 464) = _Block_copy(a3);
  }
}

void sub_10065BF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_10065BFC0(uint64_t a1, char a2)
{
  *a1 = off_102465EA0;
  *(a1 + 8) = 0x1E00000000;
  *(a1 + 376) = 0x1E00000000;
  *(a1 + 744) = 0x300000000;
  result = 0.0;
  *(a1 + 848) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 900) = 0u;
  *(a1 + 916) = 998445679;
  *(a1 + 920) = vdup_n_s32(0x3B83126Fu);
  *(a1 + 928) = 0;
  *(a1 + 948) = 0;
  *(a1 + 952) = 0;
  *(a1 + 960) = 0;
  *(a1 + 961) = a2;
  *(a1 + 962) = 0;
  *(a1 + 805) = 0;
  *(a1 + 800) = 0;
  *(a1 + 792) = 0x3DF1D87000000000;
  *(a1 + 816) = vdupq_n_s64(0x19uLL);
  *(a1 + 832) = 0u;
  return result;
}

void sub_10065C068(uint64_t a1, char *a2)
{
  v3 = a1 + 904;
  *(a1 + 8) = 0;
  *(a1 + 376) = 0;
  *(a1 + 744) = 0;
  *(a1 + 847) = 0;
  *(a1 + 832) = 0;
  *(a1 + 838) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  if (a2 < 0x6B49D200)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F47A4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v14 = 134218240;
      v15 = (a2 * 0.000001);
      v16 = 2048;
      v17 = 1800.0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CMGyroBiasEstimator::reset: warm start [%f < %f]", &v14, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F47B8(a2);
    }

    *(v3 + 12) = vadd_f32(*(v3 + 12), 0);
    *(a1 + 924) = *(a1 + 924) + 0.0;
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F47A4();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v14) = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CMGyroBiasEstimator::reset: cold start", &v14, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F48EC();
    }

    *v3 = xmmword_101C82A40;
    *(a1 + 920) = vdup_n_s32(0x3B83126Fu);
    *(a1 + 928) = 0;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018F49D8();
  }

  v7 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 904);
    v9 = *(a1 + 908);
    v10 = *(a1 + 912);
    v11 = *(a1 + 916);
    v12 = *(a1 + 920);
    v13 = *(a1 + 924);
    v14 = 134219264;
    v15 = v8;
    v16 = 2048;
    v17 = v9;
    v18 = 2048;
    v19 = v10;
    v20 = 2048;
    v21 = v11;
    v22 = 2048;
    v23 = v12;
    v24 = 2048;
    v25 = v13;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CMGyroBiasEstimator::reset: dbias.x,%.2e,.y,%.2e,.z,%.2e,P.x,%.2e,.y,%.2e,.z,%.2e", &v14, 0x3Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F4A00(a1);
  }
}

uint64_t sub_10065C330(float32x2_t *a1, float32x2_t *a2, float32x2_t *a3)
{
  if (a1[120].i8[2] == 1 && (a1[120].i8[3] & 1) != 0)
  {
    return 0;
  }

  sub_10065CF38(&a1[47], a2);
  sub_10065CFA4(a1 + 99, a2);
  v7 = *&a1[103] - 1;
  a1[103] = v7;
  if (!v7)
  {
    a1[103] = a1[102];
    v8 = a1[101].i32[0];
    v15 = a1[100];
    v16 = v8;
    sub_10065CF38(&a1[93], &v15);
    a1[104] = *a3;
  }

  v9 = sub_10065C6C4(&a1[93]);
  v12 = sub_10065C438(v9, v10, v11, a1[100].f32[0], a1[100].f32[1], a1[101].f32[0]);
  v13 = 0.0;
  if (a1[93].i16[1])
  {
    v13 = vcvts_n_f32_u64(a1[93].u16[1] - 1, 1uLL) + ((*a3 - *&a1[104]) * 0.000001);
  }

  v14 = *&v12 / v13;
  if (v13 <= 0.0)
  {
    v14 = 0.0;
  }

  a1[105].f32[0] = v14;
  return 1;
}

double sub_10065C438(float a1, float a2, float a3, float a4, float a5, float a6)
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v12 = 0;
  v39 = a1;
  v40 = a2;
  v41 = a3;
  v13 = 0.0;
  do
  {
    v13 = v13 + (*(&v39 + v12) * *(&v39 + v12));
    v12 += 4;
  }

  while (v12 != 12);
  if (sqrtf(v13) > 0.00000011921)
  {
    v14 = 0;
    v15 = 0.0;
    do
    {
      v15 = v15 + (*(&v39 + v14) * *(&v39 + v14));
      v14 += 4;
    }

    while (v14 != 12);
    v16 = sqrtf(v15);
    v11 = v11 / v16;
    v10 = a2 / v16;
    v9 = a3 / v16;
  }

  v17 = 0;
  v39 = a4;
  v40 = a5;
  v18 = 0.0;
  v41 = a6;
  do
  {
    v18 = v18 + (*(&v39 + v17) * *(&v39 + v17));
    v17 += 4;
  }

  while (v17 != 12);
  if (sqrtf(v18) > 0.00000011921)
  {
    v19 = 0;
    v20 = 0.0;
    do
    {
      v20 = v20 + (*(&v39 + v19) * *(&v39 + v19));
      v19 += 4;
    }

    while (v19 != 12);
    v21 = sqrtf(v20);
    v8 = a4 / v21;
    v7 = a5 / v21;
    v6 = a6 / v21;
  }

  v22 = ((v9 * v6) + (v10 * v7)) + (v11 * v8);
  v23 = 1.0;
  if (v22 < 1.0)
  {
    v23 = -1.0;
    if (v22 > -1.0)
    {
      v23 = ((v9 * v6) + (v10 * v7)) + (v11 * v8);
    }
  }

  *&result = acosf(v23);
  if (*&result < 0.7854)
  {
    v25 = 0;
    v39 = (v10 * v6) - (v9 * v7);
    v40 = (v9 * v8) - (v11 * v6);
    v41 = (v11 * v7) - (v10 * v8);
    v26 = 0.0;
    do
    {
      v26 = v26 + (*(&v39 + v25) * *(&v39 + v25));
      v25 += 4;
    }

    while (v25 != 12);
    if (sqrtf(v26) >= 1.0)
    {
      goto LABEL_34;
    }

    v27 = 0;
    v38[0] = (v10 * v6) - (v9 * v7);
    v38[1] = (v9 * v8) - (v11 * v6);
    v28 = 0.0;
    v38[2] = (v11 * v7) - (v10 * v8);
    do
    {
      v28 = v28 + (v38[v27] * v38[v27]);
      ++v27;
    }

    while (v27 != 3);
    v29 = sqrtf(v28);
    v30 = -1.0;
    if (v29 > -1.0)
    {
LABEL_34:
      v31 = 0;
      v37[0] = (v10 * v6) - (v9 * v7);
      v37[1] = (v9 * v8) - (v11 * v6);
      v32 = 0.0;
      v37[2] = (v11 * v7) - (v10 * v8);
      do
      {
        v32 = v32 + (v37[v31] * v37[v31]);
        ++v31;
      }

      while (v31 != 3);
      v33 = sqrtf(v32);
      v30 = 1.0;
      if (v33 < 1.0)
      {
        v34 = 0;
        v36[0] = (v10 * v6) - (v9 * v7);
        v36[1] = (v9 * v8) - (v11 * v6);
        v35 = 0.0;
        v36[2] = (v11 * v7) - (v10 * v8);
        do
        {
          v35 = v35 + (v36[v34] * v36[v34]);
          ++v34;
        }

        while (v34 != 3);
        v30 = sqrtf(v35);
      }
    }

    *&result = asinf(v30);
  }

  return result;
}

float sub_10065C6C4(unsigned __int16 *a1)
{
  if (!a1[1])
  {
    sub_1018F4B68();
  }

  return *sub_10065D088(a1, 0);
}

uint64_t sub_10065C708(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (*(a1 + 962) == 1 && (*(a1 + 963) & 1) != 0)
  {
    return 0;
  }

  if (*(a1 + 846) == 1)
  {
    if (*(a1 + 928) == 1)
    {
      result = 0;
      *(a1 + 844) = 1;
      return result;
    }

    return 0;
  }

  sub_10065CF38((a1 + 8), a2);
  v6 = *(a1 + 856);
  v7 = *a3;
  v8.i32[0] = 833342583;
  if (v6)
  {
    v9 = v7 >= v6;
    v10 = v7 - v6;
    if (v10 != 0 && v9)
    {
      *v8.i32 = (((v10 * 0.000001) / 0.02) + 0.5) * 0.000000005;
    }
  }

  *(a1 + 856) = v7;
  *(a1 + 916) = vadd_f32(vdup_lane_s32(v8, 0), *(a1 + 916));
  *(a1 + 924) = *v8.i32 + *(a1 + 924);
  if (*(a1 + 928) != 1)
  {
    return 0;
  }

  *(a1 + 844) = 1;
  if (*(a1 + 12) != *(a1 + 10) || *(a1 + 961) == 1 && *(a1 + 380) != *(a1 + 378))
  {
    return 0;
  }

  result = sub_10065C83C(a1);
  if (result)
  {
    sub_10065CC38(a1);
    return 1;
  }

  return result;
}

uint64_t sub_10065C83C(float32x2_t *a1)
{
  v2 = sub_10065D288(&a1[1], 0, a1[1].u16[1]);
  v40 = v3;
  v41 = v2;
  v5 = v4;
  sub_10065D378(&a1[1], 0, a1[1].u16[1]);
  v7 = v6;
  *v47 = v6;
  v47[1] = v8;
  v47[2] = v9;
  sub_10065D378(&a1[47], 0, a1[47].u16[1]);
  v46[0] = v10;
  v46[1] = v11;
  v46[2] = v12;
  v45 = v5 - a1[118].f32[0];
  v13 = v45 - a1[114].f32[0];
  v14 = vsub_f32(__PAIR64__(v40, LODWORD(v41)), a1[117]);
  v44 = v14;
  v42 = vsub_f32(v14, a1[113]);
  v43 = v13;
  v15 = -v7;
  if (v7 > 0.0)
  {
    v15 = v7;
  }

  for (i = 1; i != 3; ++i)
  {
    v17 = *&v47[i];
    if (v17 <= 0.0)
    {
      v17 = -v17;
    }

    if (v17 > v15)
    {
      v15 = v17;
    }
  }

  if (v15 >= 0.0000025)
  {
    v20 = 0;
  }

  else
  {
    v18 = 0;
    if (v14.f32[0] <= 0.0)
    {
      v14.f32[0] = -v14.f32[0];
    }

    do
    {
      v19 = v44.f32[v18 + 1];
      if (v19 <= 0.0)
      {
        v19 = -v19;
      }

      if (v19 > v14.f32[0])
      {
        v14.f32[0] = v19;
      }

      ++v18;
    }

    while (v18 != 2);
    v20 = v14.f32[0] < 0.03;
  }

  v21 = 0;
  if (a1[105].f32[0] < 0.00064577)
  {
    v22 = 0;
    if (a1[120].i8[0])
    {
      v23 = 0.49;
    }

    else
    {
      v23 = 0.06;
    }

    if (v20)
    {
      v24 = 0.000033333;
    }

    else
    {
      v24 = 0.0001;
    }

    do
    {
      if (a1[120].i8[1])
      {
        v25 = sub_10011AF6C(&v44, v22);
        if (v25 <= 0.0)
        {
          v25 = -v25;
        }

        if (v25 >= v23 || sub_10011AF6C(v47, v22) >= 0.0000025)
        {
          goto LABEL_48;
        }

        v26 = ((sub_10011AF6C(v47, v22) + -0.00000048739) * 8.9291) + 0.00000076154;
        if (v26 >= 0.00000076154)
        {
          v27 = v26;
        }

        else
        {
          v27 = 0.00000076154;
        }

        v28 = ((sub_10011AF6C(v46, v22) + -0.0000005625) * 15.508) + 0.00000076154;
        if (v28 < 0.00000076154)
        {
          v28 = 0.00000076154;
        }

        if (v27 <= v28)
        {
          v29 = v28;
        }

        else
        {
          v29 = v27;
        }

        v30 = (((v29 * 0.5) / 0.00000076154) * 30.0) * 0.02;
        v31 = a1[107];
        if (*&v31 - *sub_10065CEA0(&a1[108], v22) > 0x927BFuLL)
        {
          v32 = 0.6 / (v30 + 0.6);
        }

        else
        {
          v32 = 0.02 / (v30 + 0.02);
        }
      }

      else
      {
        if (!v20)
        {
          v38 = sub_10011AF6C(&v44, v22);
          if (v38 <= 0.0)
          {
            v38 = -v38;
          }

          if (v38 >= v23 || sub_10011AF6C(v47, v22) >= 0.00000125)
          {
            goto LABEL_48;
          }
        }

        v33 = *sub_10011AF30(&a1[114] + 4, v22);
        v32 = v33 / (v24 + *sub_10011AF30(&a1[114] + 4, v22));
        v29 = 0.0;
      }

      v34 = sub_10011AF6C(&v42, v22);
      v35 = sub_10011AF30(&a1[113], v22);
      *v35 = *v35 + (v32 * v34);
      v36 = (v29 * (v32 * v32)) + (*sub_10011AF30(&a1[114] + 4, v22) * ((1.0 - v32) * (1.0 - v32)));
      *sub_10011AF30(&a1[114] + 4, v22) = v36;
      v37 = a1[107];
      *sub_10065CEA0(&a1[108], v22) = v37;
      v21 = 1;
LABEL_48:
      ++v22;
    }

    while (v22 != 3);
  }

  return v21 & 1;
}

void sub_10065CC38(float32x2_t *result)
{
  if ((result[105].i8[5] & 1) == 0)
  {
    v2 = 0;
    v3 = result[114].f32[1];
    if (v3 <= 0.0)
    {
      v3 = -v3;
    }

    do
    {
      v4 = result[115].f32[v2];
      if (v4 <= 0.0)
      {
        v4 = -v4;
      }

      if (v4 > v3)
      {
        v3 = v4;
      }

      ++v2;
    }

    while (v2 != 2);
    result[105].i8[5] = v3 < 0.000007;
    if (v3 < 0.000007)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018F47A4();
      }

      v5 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CMGyroBiasEstimator::feedGyro: converged!", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F4CA0();
      }
    }
  }

  if (result[116].i8[1] == 1)
  {
    v6 = result[105].i8[5] ^ 1;
  }

  else
  {
    v6 = 0;
  }

  result[105].i8[7] = v6 & 1;
  v7 = result[111];
  if (v7)
  {
    v8 = result[114].f32[0] + result[118].f32[0];
    v9 = vadd_f32(result[113], result[117]);
    v10 = v8;
    v7(&v9, &result[114] + 1, &result[105] + 1, *&result[112]);
  }
}

void sub_10065CD8C(float32x2_t *result, float32x2_t *a2, char a3, float32_t a4)
{
  result[116].i8[0] = 1;
  result[116].i8[1] = a3;
  result[116].f32[1] = a4;
  v4 = *a2;
  result[118].i32[0] = a2[1].i32[0];
  result[117] = v4;
  sub_10065CC38(result);
}

int32x2_t sub_10065CDB0(uint64_t a1)
{
  if (qword_1025D48A0 != -1)
  {
    sub_1018F47A4();
  }

  v2 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CMGyroBiasEstimator: biasFitReset", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F4D8C();
  }

  *(a1 + 904) = xmmword_101C82A40;
  result = vdup_n_s32(0x3B83126Fu);
  *(a1 + 920) = result;
  *(a1 + 845) = 0;
  return result;
}

float sub_10065CE6C(float *a1, float *a2)
{
  a1[226] = a1[226] - *a2;
  a1[227] = a1[227] - a2[1];
  result = a1[228] - a2[2];
  a1[228] = result;
  return result;
}

uint64_t sub_10065CEA0(uint64_t a1, uint8_t *a2)
{
  if (a2 >= 3)
  {
    sub_1018F4E78(a2);
  }

  return a1 + 8 * a2;
}

uint64_t sub_10065CEDC(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 888) = a2;
  *(result + 896) = a3;
  return result;
}

unsigned __int16 *sub_10065CF38(unsigned __int16 *result, uint64_t a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[6 * (v3 - v2)];
  v5 = *(a2 + 8);
  *(v4 + 1) = *a2;
  *(v4 + 4) = v5;
  v6 = result[1];
  v7 = *(result + 1);
  if (v7 <= v6)
  {
    v8 = *result + 1;
    if (v8 < v7)
    {
      LOWORD(v7) = 0;
    }

    *result = v8 - v7;
  }

  else
  {
    result[1] = v6 + 1;
  }

  return result;
}

float32x2_t *sub_10065CFA4(float32x2_t *result, float32x2_t *a2)
{
  v2 = result->i32[0];
  v3 = result->i32[0] + 1;
  result->i32[0] = v3;
  if (result[2].i8[4] == 1)
  {
    v4 = 1.0 / v3;
    if (!v3)
    {
      v4 = 1.0;
    }

    if (v4 <= result->f32[1])
    {
      v4 = result->f32[1];
    }

    v5 = result[2].f32[0];
    v6 = v4 * (v5 - a2[1].f32[0]);
    result[1] = vsub_f32(result[1], vmul_n_f32(vsub_f32(result[1], *a2), v4));
    v7 = v5 - v6;
  }

  else
  {
    v8 = a2[1].f32[0];
    if (v2 > 2)
    {
      v10 = result->f32[1];
      v11 = result[2].f32[0];
      result[1] = vsub_f32(result[1], vmul_n_f32(vsub_f32(result[1], *a2), v10));
      v7 = v11 - (v10 * (v11 - v8));
    }

    else
    {
      v9 = 1.0 / v3;
      v7 = v9 * ((result[2].f32[0] * v2) + v8);
      result[1] = vmul_n_f32(vadd_f32(vmul_n_f32(result[1], v2), *a2), v9);
    }
  }

  result[2].f32[0] = v7;
  return result;
}

unsigned __int16 *sub_10065D088(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_102465F10);
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 1);
      *buf = 134218240;
      v17 = a2;
      v18 = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        dispatch_once(&qword_1025D48A0, &stru_102465F10);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CMVector<float, 3>>::operator[](const size_t) const [T = CMVector<float, 3>]", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  v4 = *a1 + a2;
  v5 = *(a1 + 1);
  if (v4 < v5)
  {
    v5 = 0;
  }

  return &a1[6 * (v4 - v5) + 4];
}

float sub_10065D288(unsigned __int16 *a1, unint64_t a2, unint64_t a3)
{
  if (!a1[1])
  {
    sub_1018F4FC0();
  }

  return sub_10065D2EC(a1, a2, a3) / (a3 - a2);
}

float sub_10065D2EC(unsigned __int16 *a1, unint64_t a2, unint64_t a3)
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  if (a2 < a3)
  {
    v7 = a2;
    do
    {
      v9 = sub_10065D088(a1, v7);
      v3 = v3 + *v9;
      v4 = v4 + v9[1];
      v5 = v5 + v9[2];
      ++v7;
    }

    while (a3 != v7);
  }

  return v3;
}

float32x2_t *sub_10065D378(unsigned __int16 *a1, unint64_t a2, unint64_t a3)
{
  if (!a1[1])
  {
    sub_1018F50F8();
  }

  v19 = 1.0 / (a3 - a2);
  result = sub_10065D088(a1, a2);
  v8 = v19;
  v9 = *result;
  v10 = result[1].f32[0];
  v11 = vmul_n_f32(*result, v19);
  v12 = v19 * v10;
  v13 = a2 + 1;
  if (v13 < a3)
  {
    v14 = v13;
    do
    {
      result = sub_10065D088(a1, v14);
      v8 = v19;
      v11 = vadd_f32(v11, vmul_n_f32(*result, v19));
      v12 = v12 + (v19 * result[1].f32[0]);
      ++v14;
    }

    while (a3 != v14);
  }

  v15 = vsub_f32(v9, v11);
  *&v7 = vmul_n_f32(vmul_f32(v15, v15), v8);
  v16 = v8 * ((v10 - v12) * (v10 - v12));
  if (v13 < a3)
  {
    do
    {
      v18 = v7;
      result = sub_10065D088(a1, v13);
      *(&v7 + 1) = *(&v18 + 1);
      v17 = vsub_f32(*result, v11);
      *&v7 = vadd_f32(*&v18, vmul_n_f32(vmul_f32(v17, v17), v19));
      v16 = v16 + (v19 * ((result[1].f32[0] - v12) * (result[1].f32[0] - v12)));
      ++v13;
    }

    while (a3 != v13);
  }

  return result;
}

void sub_10065D4B8(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_impl(a1, v12, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

void *sub_10065D4D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10065DB6C(v12, a3);
  sub_100175CD8(v11, a4);
  sub_10065DC84(v10, a5);
  sub_100CCCFF0(a1, a2, @"CLX", 0, 1, v12, v11, v10);
  sub_10065DD1C(v10);
  sub_100176170(v11);
  sub_10065DC04(v12);
  *a1 = off_102465F40;
  sub_10004FD18();
  return a1;
}

uint64_t sub_10065D61C(void *a1)
{
  *a1 = off_102465F40;
  sub_100005DA4();

  return sub_100CCD0B4(a1);
}

void sub_10065D670(void *a1)
{
  *a1 = off_102465F40;
  sub_100005DA4();
  sub_100CCD0B4(a1);

  operator delete();
}

uint64_t sub_10065D6D8(id *a1)
{
  if (qword_1025D4870 != -1)
  {
    sub_1018F5230();
  }

  v2 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[2] UTF8String];
    v5 = 136446210;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#CLConfig,%{public}s,clearOutAssetData", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F5244(a1);
  }

  sub_10004FD18();
  sub_1004F9A30((a1 + 18), &v5);
  return sub_100005DA4();
}

void sub_10065D7EC(uint64_t a1)
{
  if (qword_1025D4870 != -1)
  {
    sub_1018F5230();
  }

  v2 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 16) UTF8String];
    v4 = sub_1007AFD94(*(a1 + 128));
    v5 = sub_1007AFD4C(*(a1 + 128));
    *buf = 136446722;
    *&buf[4] = v3;
    *&buf[12] = 1026;
    *&buf[14] = v4;
    *&buf[18] = 1026;
    *&buf[20] = v5;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#CLConfig,%{public}s,sending kNotificationClxSettings for asset,compatibilityVersion,%{public}d,contentVersion,%{public}d", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F5360(a1);
  }

  *(&v10.__r_.__value_.__s + 23) = 10;
  strcpy(&v10, "#CLConfig,");
  v6 = [*(a1 + 16) UTF8String];
  v7 = strlen(v6);
  v8 = std::string::append(&v10, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  *&buf[16] = *(&v8->__r_.__value_.__l + 2);
  *buf = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  operator new();
}

void sub_10065DA64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  operator delete(v28);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10065DAD8(uint64_t a1)
{
  sub_100CCDED8(a1, @"settings.plist", a1 + 144);
  v2 = *(*a1 + 112);

  return v2(a1);
}

uint64_t sub_10065DB6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10065DC04(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10065DC84(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10065DD1C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_10065DD9C(uint64_t a1, uint64_t a2)
{
  if (qword_102658548 != -1)
  {
    sub_1018F54B0();
  }

  return qword_1026370D8;
}

int64x2_t *sub_10065DE3C(int64x2_t *a1)
{
  v3 = 0x500000000;
  v4 = 1;
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_100661DC0(a1, &v3);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  a1->i64[0] = off_102466030;
  sub_100536F74(&a1[16].i64[1], "CLTimeZoneDatabase", 0, 1);
  (*(a1->i64[0] + 24))(a1);
  return a1;
}

void sub_10065DEFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_10053700C((v16 + 33));
  sub_100661F0C(v16);
  _Unwind_Resume(a1);
}

void *sub_10065DF38(void *a1)
{
  *a1 = off_102466030;
  sub_10053700C((a1 + 33));

  return sub_100661F0C(a1);
}

void sub_10065DF90(void *a1)
{
  *a1 = off_102466030;
  sub_10053700C((a1 + 33));
  sub_100661F0C(a1);

  operator delete();
}

uint64_t sub_10065DFFC(uint64_t a1)
{
  sub_100664124(a1);
  sub_10003848C(v21);
  sub_10061692C(a1 + 8, *(a1 + 176), *(a1 + 184));
  v2 = sub_100038730(&v22, "SELECT ", 7);
  v3 = strlen("ROWID");
  v4 = sub_100038730(v2, "ROWID", v3);
  v5 = sub_100038730(v4, ", ", 2);
  v6 = sub_100038730(v5, "Latitude", 8);
  v7 = sub_100038730(v6, ", ", 2);
  v8 = sub_100038730(v7, "Longitude", 9);
  v9 = sub_100038730(v8, " FROM ", 6);
  v10 = strlen("Names");
  v11 = sub_100038730(v9, "Names", v10);
  v12 = sub_100038730(v11, " WHERE ", 7);
  v13 = strlen("ZoneName");
  v14 = sub_100038730(v12, "ZoneName", v13);
  sub_100038730(v14, "=?", 2);
  sub_100073518(v21, &__p);
  if (v20 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  *(a1 + 176) = sub_100614C1C(a1 + 8, p_p);
  *(a1 + 184) = v16;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  __p = 0uLL;
  v20 = 0;
  sub_100619F14(&v23, &__p);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
  }

  v22 = v17;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  std::locale::~locale(v24);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10065E2DC(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10065E324(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  v8 = a1 + 264;
  v65 = a1 + 264;
  (*(*(a1 + 264) + 16))(a1 + 264);
  v66 = 256;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  *a4 = 0.0;
  v61 = 0.0;
  if ((sub_100662028(a1, (a2 + 4), (a2 + 12), &v62) & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F54C4();
    }

    v14 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v15 = *(a2 + 4);
      v16 = *(a2 + 12);
      *buf = 134545921;
      v76 = v15;
      v77 = 2053;
      v78 = v16;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Couldn't get time zone for point <%{sensitive}+.8f,%{sensitive}+.8f>", buf, 0x16u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_64;
    }

    sub_1018F54EC(buf);
    v17 = *(a2 + 4);
    v18 = *(a2 + 12);
    v67 = 134545921;
    v68 = v17;
    v69 = 2053;
    v70 = v18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Couldn't get time zone for point <%{sensitive}+.8f,%{sensitive}+.8f>", &v67, 22);
    v20 = v19;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLTimeZoneDatabase::getTimeZoneAndDistance(const CLDaemonLocation &, std::string &, double &)", "%s\n", v19);
    goto LABEL_40;
  }

  if (v62 == v63)
  {
    __p = 0;
    v59 = 0;
    v60 = 0;
    v21 = *(a2 + 20);
    if (v21 > 20000.0)
    {
      v21 = 20000.0;
    }

    v57 = v21;
    buf[0] = 1;
    v22 = sub_10066205C(a1, (a2 + 4), (a2 + 12), &v57, &__p, buf);
    if (!v22 || (v23 = __p, v59 == __p))
    {
      sub_10065EDB8(v22, a2, a3, a4);
      if (qword_1025D48A0 != -1)
      {
        sub_1018F54C4();
      }

      v32 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v33 = *(a2 + 4);
        v34 = *(a2 + 12);
        if (*(a3 + 23) >= 0)
        {
          v35 = a3;
        }

        else
        {
          v35 = *a3;
        }

        *buf = 134546179;
        v76 = v33;
        v77 = 2053;
        v78 = v34;
        v79 = 2080;
        v80 = v35;
        _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "Point <%{sensitive}+.8f,%{sensitive}+.8f> not in any time zone polygon; default time zone is %s, but we're not using it", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F54EC(buf);
        v45 = *(a2 + 4);
        v46 = *(a2 + 12);
        v47 = *(a3 + 23) >= 0 ? a3 : *a3;
        v67 = 134546179;
        v68 = v45;
        v69 = 2053;
        v70 = v46;
        v71 = 2080;
        v72 = v47;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "Point <%{sensitive}+.8f,%{sensitive}+.8f> not in any time zone polygon; default time zone is %s, but we're not using it", &v67, 32);
        v49 = v48;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTimeZoneDatabase::getTimeZoneAndDistance(const CLDaemonLocation &, std::string &, double &)", "%s\n", v48);
        if (v49 != buf)
        {
          free(v49);
        }
      }

      *a4 = 0.0;
      if (__p)
      {
        v59 = __p;
        operator delete(__p);
      }

      goto LABEL_64;
    }

    v24 = *__p;
    v61 = *__p;
    v25 = 1.79769313e308;
    do
    {
      v26 = v23[1];
      if (v26 < v25)
      {
        v24 = *v23;
        v61 = *v23;
        v25 = v26;
      }

      v23 += 2;
    }

    while (v23 != v59);
    if (v25 > 1000.0)
    {
      sub_10065EDB8(v22, a2, a3, a4);
      if (qword_1025D48A0 != -1)
      {
        sub_1018F54C4();
      }

      v36 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v37 = *(a2 + 4);
        v38 = *(a2 + 12);
        if (*(a3 + 23) >= 0)
        {
          v39 = a3;
        }

        else
        {
          v39 = *a3;
        }

        *buf = 134546435;
        v76 = v37;
        v77 = 2053;
        v78 = v38;
        v79 = 2048;
        v80 = *&v25;
        v81 = 2080;
        v82 = v39;
        _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "Point <%{sensitive}+.8f,%{sensitive}+.8f> not in any time zone polygon; closest polygon is %f meters away; default time zone is %s, but we're not using it", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F54EC(buf);
        v50 = *(a2 + 4);
        v51 = *(a2 + 12);
        v52 = *(a3 + 23) >= 0 ? a3 : *a3;
        v67 = 134546435;
        v68 = v50;
        v69 = 2053;
        v70 = v51;
        v71 = 2048;
        v72 = *&v25;
        v73 = 2080;
        v74 = v52;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "Point <%{sensitive}+.8f,%{sensitive}+.8f> not in any time zone polygon; closest polygon is %f meters away; default time zone is %s, but we're not using it", &v67, 42);
        v54 = v53;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTimeZoneDatabase::getTimeZoneAndDistance(const CLDaemonLocation &, std::string &, double &)", "%s\n", v53);
        if (v54 != buf)
        {
          free(v54);
        }
      }

      *a4 = 0.0;
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018F54C4();
      }

      v27 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218496;
        v76 = v24;
        v77 = 2048;
        v78 = v25;
        v79 = 2048;
        v80 = (v59 - __p) >> 4;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "Not in any polygons; falling back to closest nearby time zone ID %lld (distance %f, %ld possibilities)", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F54EC(buf);
        v67 = 134218496;
        v68 = v24;
        v69 = 2048;
        v70 = v25;
        v71 = 2048;
        v72 = (v59 - __p) >> 4;
        LODWORD(v55) = 32;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "Not in any polygons; falling back to closest nearby time zone ID %lld (distance %f, %ld possibilities)", &v67, v55, v56);
        v29 = v28;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTimeZoneDatabase::getTimeZoneAndDistance(const CLDaemonLocation &, std::string &, double &)", "%s\n", v28);
        if (v29 != buf)
        {
          free(v29);
        }
      }
    }

    if (__p)
    {
      v59 = __p;
      operator delete(__p);
    }

    if (v25 > 1000.0)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((v63 - v62) >= 0x11)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018F54C4();
      }

      v9 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a2 + 4);
        v11 = *(a2 + 12);
        *buf = 134545921;
        v76 = v10;
        v77 = 2053;
        v78 = v11;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning Point <%{sensitive}+.8f,%{sensitive}+.8f> in multiple time zone polygons", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F54EC(buf);
        v41 = *(a2 + 4);
        v42 = *(a2 + 12);
        v67 = 134545921;
        v68 = v41;
        v69 = 2053;
        v70 = v42;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning Point <%{sensitive}+.8f,%{sensitive}+.8f> in multiple time zone polygons", &v67, 22);
        v44 = v43;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTimeZoneDatabase::getTimeZoneAndDistance(const CLDaemonLocation &, std::string &, double &)", "%s\n", v43);
        if (v44 != buf)
        {
          free(v44);
        }
      }
    }

    v12 = *(v62 + 1);
    v61 = *v62;
    *a4 = v12;
  }

  if (sub_1006631E4(a1, &v61, a3))
  {
    v13 = 1;
    goto LABEL_65;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018F54C4();
  }

  v30 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *buf = 134349056;
    v76 = *&v61;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_FAULT, "Could not get time zone name for zone ID %{public}lld", buf, 0xCu);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018F54EC(buf);
    v67 = 134349056;
    v68 = *&v61;
    LODWORD(v55) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Could not get time zone name for zone ID %{public}lld", &v67, *&v55);
    v20 = v31;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLTimeZoneDatabase::getTimeZoneAndDistance(const CLDaemonLocation &, std::string &, double &)", "%s\n", v31);
LABEL_40:
    if (v20 != buf)
    {
      free(v20);
    }
  }

LABEL_64:
  v13 = 0;
LABEL_65:
  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  (*(*v8 + 24))(v8);
  return v13;
}

void sub_10065ED44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10065EDB8(uint64_t a1, uint64_t a2, uint64_t a3, double *a4)
{
  v7 = *(a2 + 12);
  sub_10003848C(v15);
  v8 = sub_100038730(&v16, "Etc/GMT", 7);
  if (vcvtmd_s64_f64((v7 + 7.5) / 15.0) >= 1)
  {
    v9 = "-";
  }

  else
  {
    v9 = "+";
  }

  sub_100038730(v8, v9, 1);
  std::ostream::operator<<();
  sub_100073518(v15, &v13);
  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  *a3 = v13;
  *(a3 + 16) = v14;
  v10 = *(a2 + 12) + 7.5 - floor((*(a2 + 12) + 7.5) / 15.0) * 15.0;
  if (v10 > 15.0 - v10)
  {
    v10 = 15.0 - v10;
  }

  *a4 = v10;
  v16 = v11;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return 1;
}

void sub_10065EFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10065F0FC(uint64_t a1, uint64_t a2)
{
  result = sub_100023B30(a1, a2);
  if ((result & 0x20) != 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_10065F16C(uint64_t a1, uint64_t a2)
{
  if (qword_102658550 != -1)
  {
    sub_1018F5580();
  }

  return qword_1026370E0;
}

uint64_t sub_10065F1A8(uint64_t a1)
{
  v2 = sub_100724228(a1, 8);
  *v2 = off_1024660B8;
  v3 = v2 + 36;
  *(a1 + 36) = sub_10071CB7C(v2);
  v6 = 1;
  sub_100126E84((a1 + 37), "EnableVisualLocalization", &v6, 0);
  sub_100126E84(v5, "AlwaysOnDeviceMotion10", v3, 0);
  *(a1 + 36) = v5[1];
  sub_1007242AC(a1);
  return a1;
}

void sub_10065F26C(void *a1)
{
  sub_100724250(a1);

  operator delete();
}

uint64_t sub_10065F2A4(uint64_t a1, uint64_t a2)
{
  if ((sub_100023B30(a1, a2) & 0x20) != 0)
  {
    v3 = *(a1 + 36);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_10065F2DC(uint64_t a1, uint64_t a2)
{
  if ((sub_100023B30(a1, a2) & 0x20) != 0)
  {
    v3 = *(a1 + 38);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_10065FA64(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v62) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          [objc_msgSend(a2 "data")];
          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v62 & 0x7F) << v5;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v10 = v6++ >= 9;
        if (v10)
        {
          v11 = 0;
          goto LABEL_15;
        }
      }

      v11 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v12 = v11 >> 3;
      if ((v11 >> 3) <= 5)
      {
        if (v12 > 2)
        {
          switch(v12)
          {
            case 3:
              v45 = 0;
              v46 = 0;
              v47 = 0;
              *(a1 + 72) |= 0x10u;
              while (1)
              {
                LOBYTE(v62) = 0;
                v48 = [a2 position] + 1;
                if (v48 >= [a2 position] && (v49 = objc_msgSend(a2, "position") + 1, v49 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v47 |= (v62 & 0x7F) << v45;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                v10 = v46++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_121;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v47;
              }

LABEL_121:
              v58 = 36;
              break;
            case 4:
              v33 = 0;
              v34 = 0;
              v35 = 0;
              *(a1 + 72) |= 0x100u;
              while (1)
              {
                LOBYTE(v62) = 0;
                v36 = [a2 position] + 1;
                if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
                {
                  [objc_msgSend(a2 "data")];
                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v35 |= (v62 & 0x7F) << v33;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                v10 = v34++ >= 9;
                if (v10)
                {
                  v18 = 0;
                  goto LABEL_113;
                }
              }

              if ([a2 hasError])
              {
                v18 = 0;
              }

              else
              {
                v18 = v35;
              }

LABEL_113:
              v58 = 64;
              break;
            case 5:
              *(a1 + 72) |= 1u;
              v62 = 0;
              v19 = [a2 position] + 8;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 8, v20 <= objc_msgSend(a2, "length")))
              {
                [objc_msgSend(a2 "data")];
                [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
              }

              else
              {
                [a2 _setError];
              }

              v59 = v62;
              v60 = 8;
              goto LABEL_139;
            default:
              goto LABEL_104;
          }

          goto LABEL_132;
        }

        if (v12 != 1)
        {
          if (v12 != 2)
          {
LABEL_104:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_140;
          }

          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 72) |= 8u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v62 & 0x7F) << v27;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v10 = v28++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_109;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v29;
          }

LABEL_109:
          v58 = 32;
          goto LABEL_132;
        }

        String = PBReaderReadString();

        *(a1 + 56) = String;
      }

      else
      {
        if (v12 <= 8)
        {
          if (v12 == 6)
          {
            *(a1 + 72) |= 2u;
            v62 = 0;
            v50 = [a2 position] + 8;
            if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 8, v51 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v59 = v62;
            v60 = 16;
            goto LABEL_139;
          }

          if (v12 == 7)
          {
            *(a1 + 72) |= 4u;
            v62 = 0;
            v38 = [a2 position] + 8;
            if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 8, v39 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            v59 = v62;
            v60 = 24;
LABEL_139:
            *(a1 + v60) = v59;
            goto LABEL_140;
          }

          if (v12 != 8)
          {
            goto LABEL_104;
          }

          v13 = 0;
          v14 = 0;
          v15 = 0;
          *(a1 + 72) |= 0x20u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v16 = [a2 position] + 1;
            if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v15 |= (v62 & 0x7F) << v13;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v13 += 7;
            v10 = v14++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_125;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v15;
          }

LABEL_125:
          v58 = 40;
          goto LABEL_132;
        }

        if (v12 == 9)
        {
          v52 = 0;
          v53 = 0;
          v54 = 0;
          *(a1 + 72) |= 0x80u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v55 = [a2 position] + 1;
            if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v54 |= (v62 & 0x7F) << v52;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            v10 = v53++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_131;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v54;
          }

LABEL_131:
          v58 = 48;
          goto LABEL_132;
        }

        if (v12 == 10)
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 72) |= 0x40u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              [objc_msgSend(a2 "data")];
              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v62 & 0x7F) << v40;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v10 = v41++ >= 9;
            if (v10)
            {
              v18 = 0;
              goto LABEL_117;
            }
          }

          if ([a2 hasError])
          {
            v18 = 0;
          }

          else
          {
            v18 = v42;
          }

LABEL_117:
          v58 = 44;
LABEL_132:
          *(a1 + v58) = v18;
          goto LABEL_140;
        }

        if (v12 != 11)
        {
          goto LABEL_104;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 72) |= 0x200u;
        while (1)
        {
          LOBYTE(v62) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            [objc_msgSend(a2 "data")];
            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v62 & 0x7F) << v21;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v10 = v22++ >= 9;
          if (v10)
          {
            LOBYTE(v26) = 0;
            goto LABEL_127;
          }
        }

        v26 = (v23 != 0) & ~[a2 hasError];
LABEL_127:
        *(a1 + 68) = v26;
      }

LABEL_140:
      v61 = [a2 position];
    }

    while (v61 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100661204(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v5 = a1 + 1;
  do
  {
    while (1)
    {
      v12 = *(a1 + v4);
      memset(&__str, 0, sizeof(__str));
      v6 = (v5 + v4);
      for (v4 += 2; ; ++v4)
      {
        v8 = *v6++;
        v7 = v8;
        if (!v8)
        {
          break;
        }

        std::string::push_back(&__str, v7);
      }

      v13 = &v12;
      v9 = sub_100661A5C(a2, &v12, &unk_101C66300, &v13);
      std::string::operator=(v9 + 1, &__str);
      v10 = *(a1 + v4);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (!*(a1 + v4))
      {
        return;
      }
    }

    operator delete(__str.__r_.__value_.__l.__data_);
  }

  while (v10);
}

void sub_1006612E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100103B14(v15);
  _Unwind_Resume(a1);
}

NSString *sub_100661310(void *a1)
{
  sub_100661690([a1 appleManufacturerData], v33);
  v2 = [objc_msgSend(a1 "identifier")];
  sub_1006617A8([a1 addressData], &v32);
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = &v32;
  }

  else
  {
    v3 = v32.__r_.__value_.__r.__words[0];
  }

  sub_1006617A8([a1 appleManufacturerData], &v31);
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v31;
  }

  else
  {
    v4 = v31.__r_.__value_.__r.__words[0];
  }

  v5 = [a1 rawRSSI];
  v6 = v35;
  if (v34 >= 0)
  {
    v7 = v33;
  }

  else
  {
    v7 = v33[0];
  }

  v8 = [a1 nearbyActivityLevel];
  if (v8 > 0xE)
  {
    v9 = "?";
  }

  else
  {
    v9 = off_1024660F8[v8];
  }

  sub_1006618B0([a1 nearbyActionType], qword_102637110, &v30);
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v30;
  }

  else
  {
    v10 = v30.__r_.__value_.__r.__words[0];
  }

  v26 = v10;
  v11 = &v29;
  sub_1006618B0([a1 nearbyFlags], qword_102637138, &v29);
  v23 = v9;
  v24 = v7;
  v25 = v5;
  if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v29.__r_.__value_.__r.__words[0];
  }

  v12 = &v28;
  sub_1006618B0([a1 scanFlags], qword_102637160, &v28);
  v13 = v4;
  v14 = v3;
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v28.__r_.__value_.__r.__words[0];
  }

  v15 = [a1 objectDiscoveryMode];
  v16 = v2;
  if (v15 > 2)
  {
    v17 = "?";
  }

  else
  {
    v17 = off_102466170[v15];
  }

  p_p = &__p;
  sub_1006618B0([a1 objectSetupFlags], qword_102637188, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v19 = [a1 proximityPairingSubType];
  if (v19 > 5)
  {
    v20 = "?";
  }

  else
  {
    v20 = off_102466188[v19];
  }

  v21 = [NSString stringWithFormat:@"%s, %s, %s, %d, %u, %s, %s, %s, %s, %s, %s, %s, %s", v16, v14, v13, v25, v6, v24, v23, v26, v11, v12, v17, p_p, v20];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  return v21;
}

void sub_1006615D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (*(v43 - 169) < 0)
  {
    operator delete(*(v43 - 192));
  }

  if (*(v43 - 145) < 0)
  {
    operator delete(*(v43 - 168));
  }

  if (*(v43 - 121) < 0)
  {
    operator delete(*(v43 - 144));
  }

  if (*(v43 - 97) < 0)
  {
    operator delete(*(v43 - 120));
  }

  _Unwind_Resume(exception_object);
}

size_t sub_100661690@<X0>(size_t result@<X0>, void *a2@<X8>)
{
  if (result && (v3 = result, result = [result length], result > 2) && (result = objc_msgSend(v3, "bytes"), *result == 76) && !*(result + 1))
  {
    v4 = *(result + 2);
    if (v4 > 0x12)
    {
      v5 = "?";
    }

    else
    {
      v5 = off_1024661B8[v4];
    }

    result = strlen(v5);
    if (result >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100061080();
    }

    v6 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = result;
    if (result)
    {
      result = memcpy(a2, v5, result);
    }

    *(a2 + v6) = 0;
  }

  else
  {
    LOBYTE(v4) = 0;
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  *(a2 + 24) = v4;
  return result;
}

id sub_1006617A8@<X0>(id result@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (result)
  {
    v2 = result;
    result = [result length];
    if (result)
    {
      result = [v2 bytes];
      if (result)
      {
        std::string::resize(a2, 2 * [v2 length], 0);
        v4 = [v2 bytes];
        v5 = 0;
        for (i = 0; ; ++i)
        {
          result = [v2 length];
          if (result <= i)
          {
            break;
          }

          v7 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
          v8 = a2->__r_.__value_.__r.__words[0];
          v9 = [v2 length];
          if (v7 >= 0)
          {
            v10 = a2;
          }

          else
          {
            v10 = v8;
          }

          snprintf(v10 + v5, 2 * v9, "%02x", v4[i]);
          v5 += 2;
        }
      }
    }
  }

  return result;
}

void sub_10066188C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1006618B0@<X0>(void *result@<X0>, void *a2@<X1>, std::string *a3@<X8>)
{
  v4 = result;
  v5 = a3;
  *&a3->__r_.__value_.__l.__data_ = 0uLL;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (!result)
  {
    v27 = 0;
    result = sub_1002D9048(a2, &v27);
    if (result)
    {
      v26 = 0;
      v6 = sub_1002D9048(a2, &v26);
      if (!v6)
      {
        sub_1000432E8("unordered_map::at: key not found");
      }

      v9 = v6[3];
      v7 = v6 + 3;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = v7;
      }

      else
      {
        v11 = v8;
      }

      if (v10 >= 0)
      {
        v12 = *(v7 + 23);
      }

      else
      {
        v12 = v7[1];
      }

      std::string::append(v5, v11, v12);
      result = std::string::append(v5, ";", 1uLL);
    }
  }

  for (i = 0; i != 32; ++i)
  {
    if ((v4 >> i))
    {
      v25 = i;
      result = sub_1002D9048(a2, &v25);
      if (result)
      {
        v24 = i;
        v14 = sub_1002D9048(a2, &v24);
        if (!v14)
        {
          sub_1000432E8("unordered_map::at: key not found");
        }

        v17 = v14[3];
        v15 = v14 + 3;
        v16 = v17;
        v18 = *(v15 + 23);
        if (v18 >= 0)
        {
          v19 = v15;
        }

        else
        {
          v19 = v16;
        }

        if (v18 >= 0)
        {
          v20 = *(v15 + 23);
        }

        else
        {
          v20 = v15[1];
        }

        std::string::append(v5, v19, v20);
        result = std::string::append(v5, ";", 1uLL);
      }
    }
  }

  v21 = SHIBYTE(v5->__r_.__value_.__r.__words[2]);
  if (v21 < 0)
  {
    size = v5->__r_.__value_.__l.__size_;
    if (!size)
    {
      return result;
    }

    v22 = size - 1;
    v5->__r_.__value_.__l.__size_ = v22;
    v5 = v5->__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&v5->__r_.__value_.__s + 23))
    {
      return result;
    }

    v22 = v21 - 1;
    *(&v5->__r_.__value_.__s + 23) = v22;
  }

  v5->__r_.__value_.__s.__data_[v22] = 0;
  return result;
}

void sub_100661A28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_100661A5C(void *a1, char *a2, uint64_t a3, _BYTE **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 16) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t sub_100661CB0()
{
  sub_100661204(&unk_101C82ADF, &unk_1026370E8);
  __cxa_atexit(sub_10066130C, &unk_1026370E8, dword_100000000);
  sub_100661204(&unk_101C82B03, &unk_102637110);
  __cxa_atexit(sub_10066130C, &unk_102637110, dword_100000000);
  sub_100661204(&unk_101C82B2C, &unk_102637138);
  __cxa_atexit(sub_10066130C, &unk_102637138, dword_100000000);
  sub_100661204(&unk_101C82BA4, &unk_102637160);
  __cxa_atexit(sub_10066130C, &unk_102637160, dword_100000000);
  sub_100661204("\aNFC", &unk_102637188);

  return __cxa_atexit(sub_10066130C, &unk_102637188, dword_100000000);
}

void sub_100661DC0(int64x2_t *a1, uint64_t a2)
{
  a1->i64[0] = off_1024662D8;
  v4 = a1 + 9;
  sub_1006062D8(&a1->i64[1], a2);
  sub_100DD42E4(v4, 0, 0);
  sub_100DD42E4(a1[10].i64, 0, 0);
  sub_100DD42E4(a1[11].i64, 0, 0);
  sub_100DD42E4(a1[12].i64, 0, 0);
  sub_100DD42E4(a1[13].i64, 0, 0);
  a1[14] = vdupq_n_s64(0x7FF8000000000000uLL);
  a1[15].i64[0] = a1[15].i64;
  a1[15].i64[1] = a1[15].i64;
  a1[16].i64[0] = 0;
  if (*(a2 + 8))
  {
    (*(a1->i64[0] + 24))(a1);
  }

  else
  {
    sub_1018F55C0();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/Utilities/CLPolygonDatabase.mm", 78, "CLPolygonDatabase");
    __break(1u);
  }
}

void *sub_100661F0C(void *a1)
{
  *a1 = off_1024662D8;
  v2 = (a1 + 1);
  sub_1001FB750(a1 + 30);
  sub_100606640(v2);
  return a1;
}

void *sub_100661F60(void *a1)
{
  *a1 = off_1024662D8;
  v2 = (a1 + 1);
  sub_1001FB750(a1 + 30);
  sub_100606640(v2);
  return a1;
}

void sub_100661FB4(void *a1)
{
  *a1 = off_1024662D8;
  v1 = (a1 + 1);
  sub_1001FB750(a1 + 30);
  sub_100606640(v1);

  operator delete();
}

uint64_t sub_100662028(uint64_t a1, double *a2, double *a3, void *a4)
{
  v6 = 0;
  v5 = 0;
  return sub_10066205C(a1, a2, a3, &v6, a4, &v5);
}

uint64_t sub_10066205C(uint64_t a1, double *a2, double *a3, double *a4, void *a5, _BYTE *a6)
{
  __p = 0;
  v49 = 0;
  v50 = 0;
  if (sub_100662510(a1, a2, a3, a4, &__p))
  {
    a5[1] = *a5;
    v11 = __p;
    v12 = 1;
    if (__p != v49)
    {
      p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      v44 = 134218496;
      do
      {
        v14 = *v11;
        v46 = 0;
        v47 = v14;
        v45 = 0;
        if (sub_100662B7C(a1, &v47, &v45, &v46, *a2, *a3))
        {
          if ((*a6 & 1) != 0 || v45 == 1)
          {
            v15 = v46;
            v17 = a5[1];
            v16 = a5[2];
            if (v17 >= v16)
            {
              v22 = *a5;
              v23 = v17 - *a5;
              v24 = v23 >> 4;
              v25 = (v23 >> 4) + 1;
              if (v25 >> 60)
              {
                sub_10028C64C();
              }

              v26 = v16 - v22;
              if (v26 >> 3 > v25)
              {
                v25 = v26 >> 3;
              }

              v27 = v26 >= 0x7FFFFFFFFFFFFFF0;
              v28 = 0xFFFFFFFFFFFFFFFLL;
              if (!v27)
              {
                v28 = v25;
              }

              if (v28)
              {
                sub_1003E5FE8(a5, v28);
              }

              v29 = (16 * v24);
              *v29 = v14;
              v29[1] = v15;
              v18 = 16 * v24 + 16;
              memcpy(0, v22, v23);
              v30 = *a5;
              *a5 = 0;
              a5[1] = v18;
              a5[2] = 0;
              if (v30)
              {
                operator delete(v30);
              }

              p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            }

            else
            {
              *v17 = v14;
              v17[1] = v15;
              v18 = (v17 + 2);
            }

            a5[1] = v18;
          }
        }

        else
        {
          if (p_info[276] != -1)
          {
            sub_1018F5788();
          }

          v19 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
          {
            v20 = *a2;
            v21 = *a3;
            *buf = v44;
            v58 = v20;
            v59 = 2048;
            v60 = v21;
            v61 = 2048;
            v62 = v14;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "Couldn't determine if point <%+.8f,%+.8f> is in polygon %lld", buf, 0x20u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018F57B0(buf);
            v31 = *a2;
            v32 = *a3;
            v51 = v44;
            v52 = v31;
            v53 = 2048;
            v54 = v32;
            v55 = 2048;
            v56 = v14;
            LODWORD(v43) = 32;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Couldn't determine if point <%+.8f,%+.8f> is in polygon %lld", COERCE_DOUBLE(&v51), v43, v44);
            v34 = v33;
            sub_100152C7C("Generic", 1, 0, 0, "BOOL CLPolygonDatabase::polygonsAndDistancesForPointWithUncertainty(const double &, const double &, const double &, std::vector<std::pair<sqlite3_int64, double>> &, const BOOL &)", "%s\n", v33);
            if (v34 != buf)
            {
              free(v34);
            }
          }

          v12 = 0;
        }

        ++v11;
      }

      while (v11 != v49);
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F5788();
    }

    v35 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v36 = *a2;
      v37 = *a3;
      *buf = 134218240;
      v58 = v36;
      v59 = 2048;
      v60 = v37;
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_FAULT, "Couldn't get list of candidates for point <%+.8f,%+.8f>", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F57B0(buf);
      v39 = *a2;
      v40 = *a3;
      v51 = 134218240;
      v52 = v39;
      v53 = 2048;
      v54 = v40;
      LODWORD(v43) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Couldn't get list of candidates for point <%+.8f,%+.8f>", COERCE_DOUBLE(&v51), v43);
      v42 = v41;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLPolygonDatabase::polygonsAndDistancesForPointWithUncertainty(const double &, const double &, const double &, std::vector<std::pair<sqlite3_int64, double>> &, const BOOL &)", "%s\n", v41);
      if (v42 != buf)
      {
        free(v42);
      }
    }

    v12 = 0;
  }

  if (__p)
  {
    v49 = __p;
    operator delete(__p);
  }

  return v12 & 1;
}

void sub_1006624D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100662510(uint64_t a1, double *a2, double *a3, double *a4, void *a5)
{
  if (qword_1025D48A0 != -1)
  {
    sub_1018F57F4();
  }

  v10 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v11 = *a2;
    v12 = *a3;
    v13 = *a4;
    *buf = 134218496;
    v64 = v11;
    v65 = 2048;
    v66 = v12;
    v67 = 2048;
    v68 = v13;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Getting polygons for point <%+.8f,%+.8f> acc %.2f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D48A0 != -1)
    {
      sub_1018F5788();
    }

    v41 = *a2;
    v42 = *a3;
    v43 = *a4;
    v55 = 134218496;
    v56 = v41;
    v57 = 2048;
    v58 = v42;
    v59 = 2048;
    v60 = v43;
    LODWORD(v48) = 32;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "Getting polygons for point <%+.8f,%+.8f> acc %.2f", COERCE_DOUBLE(&v55), v48, v49);
    v45 = v44;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPolygonDatabase::polygonCandidatesForPointWithUncertainty(const double &, const double &, const double &, std::vector<sqlite3_int64> &)", "%s\n", v44);
    if (v45 != buf)
    {
      free(v45);
    }
  }

  a5[1] = *a5;
  if (!sub_100DD42EC((a1 + 208)))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F5788();
    }

    v33 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "#Warning fBoundingBoxesSelectNearbyStatement not available - rtree module missing or db unavailable", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F5808();
    }

    return 0;
  }

  if (!sub_100020608(*a2, *a3))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F5788();
    }

    v37 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *a2;
      v39 = *a3;
      *buf = 134218240;
      v64 = v38;
      v65 = 2048;
      v66 = v39;
      _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "#Warning Ignoring bogus location <%+.8f,%+.8f>", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F58E4(a2, a3);
    }

    return 0;
  }

  v14 = *a2;
  v15 = *a3;
  v53 = v15;
  v54 = v14;
  v51 = v15;
  v52 = v14;
  if (*a4 > 0.0)
  {
    sub_100290364(&v54, &v53, &v52, &v51, v14, v15, *a4);
  }

  sub_100144CA0((a1 + 208), &v50);
  v16 = sub_100008880(v50);
  if (sub_1001A3BD4(v16, 1, v54) && (v17 = sub_100008880(v50), sub_1001A3BD4(v17, 2, v52)) && (v18 = sub_100008880(v50), sub_1001A3BD4(v18, 3, v53)) && (v19 = sub_100008880(v50), sub_1001A3BD4(v19, 4, v51)))
  {
    while (1)
    {
      v20 = sub_100008880(v50);
      if (sqlite3_step(v20) != 100)
      {
        break;
      }

      v21 = sub_100008880(v50);
      v22 = sqlite3_column_int(v21, 0);
      v24 = a5[1];
      v23 = a5[2];
      if (v24 >= v23)
      {
        v26 = *a5;
        v27 = v24 - *a5;
        v28 = v27 >> 3;
        v29 = (v27 >> 3) + 1;
        if (v29 >> 61)
        {
          sub_10028C64C();
        }

        v30 = v23 - v26;
        if (v30 >> 2 > v29)
        {
          v29 = v30 >> 2;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFF8)
        {
          v31 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v29;
        }

        if (v31)
        {
          sub_1000B9708(a5, v31);
        }

        *(8 * v28) = v22;
        v25 = 8 * v28 + 8;
        memcpy(0, v26, v27);
        v32 = *a5;
        *a5 = 0;
        a5[1] = v25;
        a5[2] = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v24 = v22;
        v25 = (v24 + 1);
      }

      a5[1] = v25;
    }

    v35 = 1;
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F5788();
    }

    v34 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218752;
      v64 = v54;
      v65 = 2048;
      v66 = v52;
      v67 = 2048;
      v68 = v53;
      v69 = 2048;
      v70 = v51;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_FAULT, "Could not bind <%+.8f,%+.8f> - <%+.8f,%+.8f>", buf, 0x2Au);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F57B0(buf);
      v55 = 134218752;
      v56 = v54;
      v57 = 2048;
      v58 = v52;
      v59 = 2048;
      v60 = v53;
      v61 = 2048;
      v62 = v51;
      LODWORD(v48) = 42;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Could not bind <%+.8f,%+.8f> - <%+.8f,%+.8f>", COERCE_DOUBLE(&v55), v48, v49, *&v50);
      v47 = v46;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLPolygonDatabase::polygonCandidatesForPointWithUncertainty(const double &, const double &, const double &, std::vector<sqlite3_int64> &)", "%s\n", v46);
      if (v47 != buf)
      {
        free(v47);
      }
    }

    v35 = 0;
  }

  v36 = v50;
  v50 = 0;
  if (v36)
  {
    (*(*v36 + 8))(v36);
  }

  return v35;
}

void sub_100662B28(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100662B7C(uint64_t a1, sqlite3_int64 *a2, char *a3, double *a4, double a5, double a6)
{
  if (!sub_100DD42EC((a1 + 192)))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F57F4();
    }

    v13 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#Warning fPointsSelectStatement not available - rtree module missing or db unavailable", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F5A0C();
    }

    return 0;
  }

  if (*(a1 + 224) != a5 || *(a1 + 232) != a6)
  {
    *(a1 + 224) = a5;
    *(a1 + 232) = a6;
    sub_1001FB750((a1 + 240));
LABEL_16:
    *a3 = 0;
    *a4 = -1.0;
    sub_100144CA0((a1 + 192), &v45);
    v15 = sub_100008880(v45);
    if (sub_1000728E4(v15, 1, *a2))
    {
      v16 = sub_100008880(v45);
      if (sqlite3_step(v16) == 100)
      {
        v17 = sub_100008880(v45);
        v18 = sqlite3_column_double(v17, 0);
        v19 = sub_100008880(v45);
        v20 = sqlite3_column_double(v19, 1);
        while (1)
        {
          do
          {
            v21 = sub_100008880(v45);
            if (sqlite3_step(v21) != 100)
            {
              operator new();
            }

            v22 = sub_100008880(v45);
            v23 = sqlite3_column_double(v22, 0);
            v24 = sub_100008880(v45);
            v25 = sqlite3_column_double(v24, 1);
            v26 = v25;
          }

          while (v23 == v18 && v25 == v20);
          if ((v18 > a5 && v23 < a5 || v18 < a5 && v23 > a5) && (v25 > a6 || v20 > a6))
          {
            break;
          }

          if (v18 == a5 && v23 < a5 && v20 > a6 || v23 == a5 && v18 < a5 && v25 > a6)
          {
            goto LABEL_38;
          }

LABEL_39:
          v28 = v23 - v18;
          v29 = v26 - v20;
          v30 = ((a6 - v20) * (v26 - v20) + (a5 - v18) * (v23 - v18)) / (v29 * v29 + v28 * v28);
          if (v30 <= 0.0)
          {
            v31 = v18;
            v32 = v20;
          }

          else
          {
            v31 = v23;
            v32 = v26;
            if (v30 < 1.0)
            {
              v31 = v18 + v30 * v28;
              v32 = v20 + v30 * v29;
            }
          }

          v33 = sub_100117154(a5, a6, v31, v32);
          if (*a4 >= 0.0)
          {
            v20 = v26;
            v18 = v23;
            if (v33 >= *a4)
            {
              continue;
            }
          }

          *a4 = v33;
          v20 = v26;
          v18 = v23;
        }

        if (v20 + (v25 - v20) * ((a5 - v18) / (v23 - v18)) <= a6)
        {
          goto LABEL_39;
        }

LABEL_38:
        *a3 ^= 1u;
        goto LABEL_39;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018F5788();
      }

      v39 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v40 = *a2;
        *buf = 134217984;
        v49 = v40;
        _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEFAULT, "#Warning No points data found for polygon Id %lld", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
LABEL_57:
        v14 = 0;
        v41 = v45;
        v45 = 0;
        if (v41)
        {
          (*(*v41 + 8))(v41);
        }

        return v14;
      }

      sub_1018F57B0(buf);
      v43 = *a2;
      v46 = 134217984;
      v47 = v43;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning No points data found for polygon Id %lld", &v46);
      v38 = v44;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPolygonDatabase::pointInPolygon(const sqlite3_int64 &, const double, const double, BOOL &, double &)", "%s\n", v44);
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018F5788();
      }

      v34 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v35 = *a2;
        *buf = 134217984;
        v49 = v35;
        _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEFAULT, "#Warning Could not bind %lld", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_57;
      }

      sub_1018F57B0(buf);
      v36 = *a2;
      v46 = 134217984;
      v47 = v36;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning Could not bind %lld", &v46);
      v38 = v37;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPolygonDatabase::pointInPolygon(const sqlite3_int64 &, const double, const double, BOOL &, double &)", "%s\n", v37);
    }

    if (v38 != buf)
    {
      free(v38);
    }

    goto LABEL_57;
  }

  v12 = *(a1 + 248);
  if (v12 == a1 + 240)
  {
    goto LABEL_16;
  }

  while (*(v12 + 16) != *a2)
  {
    v12 = *(v12 + 8);
    if (v12 == a1 + 240)
    {
      goto LABEL_16;
    }
  }

  *a3 = *(v12 + 32);
  *a4 = *(v12 + 24);
  return 1;
}

void sub_10066317C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006631E4(uint64_t a1, sqlite3_int64 *a2, std::string *a3)
{
  if (sub_100DD42EC((a1 + 160)))
  {
    sub_100144CA0((a1 + 160), &v25);
    v6 = sub_100008880(v25);
    if (sub_1000728E4(v6, 1, *a2))
    {
      v7 = sub_100008880(v25);
      if (sqlite3_step(v7) == 100)
      {
        v8 = sub_100008880(v25);
        v9 = sqlite3_column_text(v8, 0);
        if (v9)
        {
          sub_100006044(a3, v9);
          v10 = 1;
          goto LABEL_31;
        }

        if (qword_1025D48A0 != -1)
        {
          sub_1018F5788();
        }

        v21 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "Could not get polygon name", buf, 2u);
        }

        if (!sub_10000A100(121, 0))
        {
LABEL_30:
          v10 = 0;
LABEL_31:
          v22 = v25;
          v25 = 0;
          if (v22)
          {
            (*(*v22 + 8))(v22);
          }

          return v10;
        }

        sub_1018F57B0(buf);
        LOWORD(v26) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Could not get polygon name", &v26, 2);
        v16 = v24;
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLPolygonDatabase::getPolygonName(const sqlite3_int64 &, std::string &)", "%s\n", v24);
      }

      else
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018F5788();
        }

        v17 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *a2;
          *buf = 134217984;
          v29 = v18;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "#Warning No entry in names table for polygon ID %lld", buf, 0xCu);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_30;
        }

        sub_1018F57B0(buf);
        v19 = *a2;
        v26 = 134217984;
        v27 = v19;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning No entry in names table for polygon ID %lld", &v26);
        v16 = v20;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPolygonDatabase::getPolygonName(const sqlite3_int64 &, std::string &)", "%s\n", v20);
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018F5788();
      }

      v12 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
      {
        v13 = *a2;
        *buf = 134349056;
        v29 = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "Could not bind %{public}lld", buf, 0xCu);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_30;
      }

      sub_1018F57B0(buf);
      v14 = *a2;
      v26 = 134349056;
      v27 = v14;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Could not bind %{public}lld", &v26, 12);
      v16 = v15;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLPolygonDatabase::getPolygonName(const sqlite3_int64 &, std::string &)", "%s\n", v15);
    }

    if (v16 != buf)
    {
      free(v16);
    }

    goto LABEL_30;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018F57F4();
  }

  v11 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning fNamesSelectStatement not available - rtree module missing or db unavailable", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F5AE8();
  }

  return 0;
}

void sub_10066366C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006636C0(uint64_t a1, char *a2, void *a3)
{
  if (sub_100DD42EC((a1 + 176)))
  {
    sub_100144CA0((a1 + 176), &v23);
    v6 = sub_100008880(v23);
    if (a2[23] >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (sub_10003DDD8(v6, 1, v7))
    {
      v8 = sub_100008880(v23);
      if (sqlite3_step(v8) == 100)
      {
        v9 = sub_100008880(v23);
        *a3 = sqlite3_column_int(v9, 0);
        v10 = 1;
        goto LABEL_36;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018F5788();
      }

      v17 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        if (a2[23] >= 0)
        {
          v18 = a2;
        }

        else
        {
          v18 = *a2;
        }

        *buf = 136315138;
        v27 = v18;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "#Warning Polygon %s not found in names table", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
LABEL_35:
        v10 = 0;
LABEL_36:
        v19 = v23;
        v23 = 0;
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }

        return v10;
      }

      sub_1018F57B0(buf);
      if (a2[23] >= 0)
      {
        v21 = a2;
      }

      else
      {
        v21 = *a2;
      }

      v24 = 136315138;
      v25 = v21;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning Polygon %s not found in names table", &v24);
      v16 = v22;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPolygonDatabase::getPolygonId(const std::string &, sqlite3_int64 &)", "%s\n", v22);
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018F5788();
      }

      v12 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        if (a2[23] >= 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = *a2;
        }

        *buf = 136315138;
        v27 = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#Warning Could not bind %s", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_35;
      }

      sub_1018F57B0(buf);
      if (a2[23] >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      v24 = 136315138;
      v25 = v14;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning Could not bind %s", &v24);
      v16 = v15;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPolygonDatabase::getPolygonId(const std::string &, sqlite3_int64 &)", "%s\n", v15);
    }

    if (v16 != buf)
    {
      free(v16);
    }

    goto LABEL_35;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018F57F4();
  }

  v11 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning fNamesSelectOnNameStatement not available - rtree module missing or db unavailable", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F5BC4();
  }

  return 0;
}

void sub_100663A94(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100663AE0(uint64_t a1, char *a2, void *a3)
{
  a3[1] = *a3;
  if (sub_100DD42EC((a1 + 176)))
  {
    sub_100144CA0((a1 + 176), &v34);
    v6 = sub_100008880(v34);
    if (a2[23] >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (sub_10003DDD8(v6, 1, v7))
    {
      while (1)
      {
        v8 = sub_100008880(v34);
        if (sqlite3_step(v8) != 100)
        {
          break;
        }

        v9 = sub_100008880(v34);
        v10 = sqlite3_column_int(v9, 0);
        v12 = a3[1];
        v11 = a3[2];
        if (v12 >= v11)
        {
          v14 = *a3;
          v15 = v12 - *a3;
          v16 = v15 >> 3;
          v17 = (v15 >> 3) + 1;
          if (v17 >> 61)
          {
            sub_10028C64C();
          }

          v18 = v11 - v14;
          if (v18 >> 2 > v17)
          {
            v17 = v18 >> 2;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            v19 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v17;
          }

          if (v19)
          {
            sub_1000B9708(a3, v19);
          }

          *(8 * v16) = v10;
          v13 = 8 * v16 + 8;
          memcpy(0, v14, v15);
          v20 = *a3;
          *a3 = 0;
          a3[1] = v13;
          a3[2] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v12 = v10;
          v13 = (v12 + 1);
        }

        a3[1] = v13;
      }

      if (a3[1] != *a3)
      {
        v22 = 1;
        goto LABEL_50;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018F5788();
      }

      v28 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        if (a2[23] >= 0)
        {
          v29 = a2;
        }

        else
        {
          v29 = *a2;
        }

        *buf = 136315138;
        v38 = v29;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "#Warning Polygon %s not found in names table", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
LABEL_49:
        v22 = 0;
LABEL_50:
        v30 = v34;
        v34 = 0;
        if (v30)
        {
          (*(*v30 + 8))(v30);
        }

        return v22;
      }

      sub_1018F57B0(buf);
      if (a2[23] >= 0)
      {
        v32 = a2;
      }

      else
      {
        v32 = *a2;
      }

      v35 = 136315138;
      v36 = v32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning Polygon %s not found in names table", &v35);
      v27 = v33;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPolygonDatabase::polygonsForName(const std::string &, std::vector<sqlite3_int64> &)", "%s\n", v33);
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018F5788();
      }

      v23 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        if (a2[23] >= 0)
        {
          v24 = a2;
        }

        else
        {
          v24 = *a2;
        }

        *buf = 136315138;
        v38 = v24;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "#Warning Could not bind %s", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_49;
      }

      sub_1018F57B0(buf);
      if (a2[23] >= 0)
      {
        v25 = a2;
      }

      else
      {
        v25 = *a2;
      }

      v35 = 136315138;
      v36 = v25;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning Could not bind %s", &v35);
      v27 = v26;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPolygonDatabase::polygonsForName(const std::string &, std::vector<sqlite3_int64> &)", "%s\n", v26);
    }

    if (v27 != buf)
    {
      free(v27);
    }

    goto LABEL_49;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018F57F4();
  }

  v21 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "#Warning fNamesSelectOnNameStatement not available - rtree module missing or db unavailable", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F5CA0();
  }

  return 0;
}

void sub_100663F90(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100663FE8(uint64_t a1, char *a2, double *a3, double *a4, char *a5, double *a6)
{
  v15 = 0;
  if (sub_1006636C0(a1, a2, &v15))
  {
    return sub_100662B7C(a1, &v15, a5, a6, *a3, *a4);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018F57F4();
  }

  v13 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
  {
    if (a2[23] >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    *buf = 136315138;
    v17 = v14;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#Warning No bounding box found for polygon %s", buf, 0xCu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018F5D7C(a2);
    return 0;
  }

  return result;
}

uint64_t sub_100664124(void *a1)
{
  sub_10003848C(v62);
  v2 = sub_100038730(&v63, "SELECT ", 7);
  v3 = sub_100038730(v2, "MinimumLatitude", 15);
  v4 = sub_100038730(v3, ", ", 2);
  v5 = sub_100038730(v4, "MaximumLatitude", 15);
  v6 = sub_100038730(v5, ", ", 2);
  v7 = sub_100038730(v6, "MinimumLongitude", 16);
  v8 = sub_100038730(v7, ", ", 2);
  v9 = sub_100038730(v8, "MaximumLongitude", 16);
  v10 = sub_100038730(v9, " FROM ", 6);
  v11 = sub_100038730(v10, "BoundingBoxes", 13);
  v12 = sub_100038730(v11, " WHERE ", 7);
  v13 = sub_100038730(v12, "ROWID", 5);
  sub_100038730(v13, "=?", 2);
  sub_100073518(v62, &__p);
  if (v61 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  a1[18] = sub_100614C1C((a1 + 1), p_p);
  a1[19] = v15;
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
  }

  __p = 0uLL;
  v61 = 0;
  sub_100619F14(&v64, &__p);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
  }

  v16 = sub_100038730(&v63, "SELECT ", 7);
  v17 = sub_100038730(v16, "ZoneName", 8);
  v18 = sub_100038730(v17, " FROM ", 6);
  v19 = sub_100038730(v18, "Names", 5);
  v20 = sub_100038730(v19, " WHERE ", 7);
  v21 = sub_100038730(v20, "ROWID", 5);
  sub_100038730(v21, "=?", 2);
  sub_100073518(v62, &__p);
  if (v61 >= 0)
  {
    v22 = &__p;
  }

  else
  {
    v22 = __p;
  }

  a1[20] = sub_100614C1C((a1 + 1), v22);
  a1[21] = v23;
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
  }

  __p = 0uLL;
  v61 = 0;
  sub_100619F14(&v64, &__p);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
  }

  v24 = sub_100038730(&v63, "SELECT ", 7);
  v25 = sub_100038730(v24, "ROWID", 5);
  v26 = sub_100038730(v25, " FROM ", 6);
  v27 = sub_100038730(v26, "Names", 5);
  v28 = sub_100038730(v27, " WHERE ", 7);
  v29 = sub_100038730(v28, "ZoneName", 8);
  sub_100038730(v29, "=?", 2);
  sub_100073518(v62, &__p);
  if (v61 >= 0)
  {
    v30 = &__p;
  }

  else
  {
    v30 = __p;
  }

  a1[22] = sub_100614C1C((a1 + 1), v30);
  a1[23] = v31;
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
  }

  __p = 0uLL;
  v61 = 0;
  sub_100619F14(&v64, &__p);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
  }

  v32 = sub_100038730(&v63, "SELECT ", 7);
  v33 = sub_100038730(v32, "Latitude", 8);
  v34 = sub_100038730(v33, ", ", 2);
  v35 = sub_100038730(v34, "Longitude", 9);
  v36 = sub_100038730(v35, " FROM ", 6);
  v37 = sub_100038730(v36, "Points", 6);
  v38 = sub_100038730(v37, " WHERE ", 7);
  v39 = sub_100038730(v38, "ZoneID", 6);
  v40 = sub_100038730(v39, "=?", 2);
  v41 = sub_100038730(v40, " ORDER BY ", 10);
  sub_100038730(v41, "PointID", 7);
  sub_100073518(v62, &__p);
  if (v61 >= 0)
  {
    v42 = &__p;
  }

  else
  {
    v42 = __p;
  }

  a1[24] = sub_100614C1C((a1 + 1), v42);
  a1[25] = v43;
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
  }

  __p = 0uLL;
  v61 = 0;
  sub_100619F14(&v64, &__p);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
  }

  v44 = sub_100038730(&v63, "SELECT ", 7);
  v45 = sub_100038730(v44, "ROWID", 5);
  v46 = sub_100038730(v45, " FROM ", 6);
  v47 = sub_100038730(v46, "BoundingBoxes", 13);
  v48 = sub_100038730(v47, " WHERE ", 7);
  v49 = sub_100038730(v48, "MaximumLatitude", 15);
  v50 = sub_100038730(v49, ">=? AND ", 8);
  v51 = sub_100038730(v50, "MinimumLatitude", 15);
  v52 = sub_100038730(v51, "<=? AND ", 8);
  v53 = sub_100038730(v52, "MaximumLongitude", 16);
  v54 = sub_100038730(v53, ">=? AND ", 8);
  v55 = sub_100038730(v54, "MinimumLongitude", 16);
  sub_100038730(v55, "<=?", 3);
  sub_100073518(v62, &__p);
  if (v61 >= 0)
  {
    v56 = &__p;
  }

  else
  {
    v56 = __p;
  }

  a1[26] = sub_100614C1C((a1 + 1), v56);
  a1[27] = v57;
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
  }

  __p = 0uLL;
  v61 = 0;
  sub_100619F14(&v64, &__p);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(__p);
  }

  v63 = v58;
  if (v66 < 0)
  {
    operator delete(v65[7].__locale_);
  }

  std::locale::~locale(v65);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1006647BC(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_100664834(uint64_t a1, sqlite3_int64 *a2, double *a3, double *a4, double *a5, double *a6)
{
  if (sub_100DD42EC((a1 + 144)))
  {
    sub_100144CA0((a1 + 144), &v31);
    v12 = sub_100008880(v31);
    if (sub_1000728E4(v12, 1, *a2))
    {
      v13 = sub_100008880(v31);
      if (sqlite3_step(v13) == 100)
      {
        v14 = sub_100008880(v31);
        *a3 = sqlite3_column_double(v14, 0);
        v15 = sub_100008880(v31);
        *a5 = sqlite3_column_double(v15, 1);
        v16 = sub_100008880(v31);
        *a4 = sqlite3_column_double(v16, 2);
        v17 = sub_100008880(v31);
        *a6 = sqlite3_column_double(v17, 3);
        v18 = 1;
        goto LABEL_24;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018F5788();
      }

      v25 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v26 = *a2;
        *buf = 134217984;
        v35 = v26;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "#Warning No bounding box found for polygon ID %lld", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
LABEL_23:
        v18 = 0;
LABEL_24:
        v27 = v31;
        v31 = 0;
        if (v27)
        {
          (*(*v27 + 8))(v27);
        }

        return v18;
      }

      sub_1018F57B0(buf);
      v29 = *a2;
      v32 = 134217984;
      v33 = v29;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning No bounding box found for polygon ID %lld", &v32);
      v24 = v30;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPolygonDatabase::getPolygonBoundingBox(sqlite3_int64 &, double &, double &, double &, double &)", "%s\n", v30);
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018F5788();
      }

      v20 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *a2;
        *buf = 134217984;
        v35 = v21;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "#Warning Could not bind polygon ID %lld", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_23;
      }

      sub_1018F57B0(buf);
      v22 = *a2;
      v32 = 134217984;
      v33 = v22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 0, "#Warning Could not bind polygon ID %lld", &v32);
      v24 = v23;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPolygonDatabase::getPolygonBoundingBox(sqlite3_int64 &, double &, double &, double &, double &)", "%s\n", v23);
    }

    if (v24 != buf)
    {
      free(v24);
    }

    goto LABEL_23;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018F57F4();
  }

  v19 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "#Warning fBoundingBoxesSelectStatement not available - rtree module missing or db unavailable", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F5E98();
  }

  return 0;
}

void sub_100664C20(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006655D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>, double a6@<D0>)
{
  v11 = *(a4 + 4560);
  v12 = *(a2 + 8);
  result = sub_1000D8580(v12);
  if (result)
  {
    v15 = a1[21];
    v14 = a1[22];
    goto LABEL_70;
  }

  if (v12 > 15229)
  {
    if (v12 > 15669)
    {
      if (v12 > 18239)
      {
        if (v12 > 19149)
        {
          switch(v12)
          {
            case 19150:
LABEL_10:
              result = sub_100665A70(a1, a6);
              v16 = a1[43];
              if (result)
              {
                v17 = 1074161254;
              }

              else
              {
                v17 = 1083074150;
              }

              *(v16 + 8) = 256;
              *(v16 + 12) = v17;
              goto LABEL_69;
            case 90603:
              v15 = a1[19];
              v14 = a1[20];
              goto LABEL_70;
            case 519150:
              goto LABEL_10;
          }

          goto LABEL_82;
        }

        if (v12 == 18240)
        {
          v15 = a1[33];
          v14 = a1[34];
          goto LABEL_70;
        }

        v18 = 19090;
        goto LABEL_49;
      }

      if (v12 > 18099)
      {
        if (v12 != 18100)
        {
          if (v12 == 18200)
          {
            v15 = a1[45];
            v14 = a1[46];
            goto LABEL_70;
          }

          goto LABEL_82;
        }

        goto LABEL_67;
      }

      if (v12 == 15670)
      {
        v15 = a1[41];
        v14 = a1[42];
        goto LABEL_70;
      }

      if (v12 != 18050)
      {
        goto LABEL_82;
      }

LABEL_32:
      v15 = a1[23];
      v14 = a1[24];
      goto LABEL_70;
    }

    if (v12 <= 15459)
    {
      if ((v12 - 15230) > 0x19 || ((1 << (v12 - 126)) & 0x2100001) == 0)
      {
        v18 = 15350;
LABEL_49:
        if (v12 != v18)
        {
          goto LABEL_82;
        }

        goto LABEL_67;
      }

LABEL_66:
      v20 = a1[43];
      v21 = 0x4006666601000101;
LABEL_68:
      *(v20 + 8) = v21;
LABEL_69:
      v15 = a1[43];
      v14 = a1[44];
      goto LABEL_70;
    }

    if (v12 > 15591)
    {
      if (v12 == 15592)
      {
LABEL_67:
        v20 = a1[43];
        v21 = 0x4090000000000100;
        goto LABEL_68;
      }

      v19 = 15610;
    }

    else
    {
      if (v12 == 15460)
      {
        goto LABEL_66;
      }

      v19 = 15560;
    }

    if (v12 != v19)
    {
      goto LABEL_82;
    }

    goto LABEL_66;
  }

  if (v12 > 2064)
  {
    if (v12 > 2149)
    {
      if (v12 > 11804)
      {
        if (v12 == 11805)
        {
          v15 = a1[35];
          v14 = a1[36];
          goto LABEL_70;
        }

        if (v12 == 15110)
        {
          v15 = a1[47];
          v14 = a1[48];
          goto LABEL_70;
        }

        goto LABEL_82;
      }

      if (v12 != 2150)
      {
        if (v12 == 3015)
        {
          v15 = a1[9];
          v14 = a1[10];
          goto LABEL_70;
        }

        goto LABEL_82;
      }
    }

    else
    {
      if (v12 <= 2100)
      {
        if (v12 == 2065)
        {
          v15 = a1[29];
          v14 = a1[30];
          goto LABEL_70;
        }

        if (v12 == 2071)
        {
          goto LABEL_32;
        }

        goto LABEL_82;
      }

      if (v12 != 2101)
      {
        if (v12 != 2105)
        {
          goto LABEL_82;
        }

        goto LABEL_56;
      }
    }

    v15 = a1[37];
    v14 = a1[38];
    goto LABEL_70;
  }

  if (v12 > 2021)
  {
    if (v12 > 2047)
    {
      if (v12 == 2048)
      {
        v15 = a1[15];
        v14 = a1[16];
        goto LABEL_70;
      }

      if (v12 == 2061)
      {
        v15 = a1[5];
        v14 = a1[6];
        goto LABEL_70;
      }

      goto LABEL_82;
    }

    if (v12 != 2022 && v12 != 2024)
    {
      goto LABEL_82;
    }

LABEL_56:
    v15 = a1[39];
    v14 = a1[40];
    goto LABEL_70;
  }

  if (v12 > 2009)
  {
    if (v12 == 2010)
    {
      v15 = a1[31];
      v14 = a1[32];
      goto LABEL_70;
    }

    if (v12 == 2020)
    {
      v15 = a1[1];
      v14 = a1[2];
      goto LABEL_70;
    }
  }

  else
  {
    if (v12 == 6)
    {
      v15 = a1[7];
      v14 = a1[8];
      goto LABEL_70;
    }

    if (v12 == 65)
    {
      goto LABEL_66;
    }
  }

LABEL_82:
  if (a3 && *(a2 + 208) == 1)
  {
    v15 = a1[17];
    v14 = a1[18];
    goto LABEL_70;
  }

  if (v12 > 15329)
  {
    if (v12 > 15710)
    {
      if (v12 <= 19029)
      {
        if (v12 == 15711)
        {
          goto LABEL_109;
        }

        v22 = 15733;
      }

      else
      {
        if (v12 == 19030 || v12 == 515652)
        {
          goto LABEL_109;
        }

        v22 = 515621;
      }
    }

    else
    {
      if ((v12 - 15620) <= 0x37 && ((1 << (v12 - 4)) & 0x80010100000001) != 0 || v12 == 15330)
      {
        goto LABEL_109;
      }

      v22 = 15360;
    }
  }

  else
  {
    if (v12 <= 2067)
    {
      if ((v12 - 3) <= 0x3F && ((1 << (v12 - 3)) & 0xB000000000000011) != 0)
      {
        goto LABEL_109;
      }

      goto LABEL_112;
    }

    if (v12 > 15054)
    {
      if (v12 == 15055 || v12 == 15100)
      {
        goto LABEL_109;
      }

      v22 = 15150;
    }

    else
    {
      if (v12 == 2068 || v12 == 3016)
      {
        goto LABEL_109;
      }

      v22 = 15030;
    }
  }

  if (v12 == v22)
  {
LABEL_109:
    if (v11)
    {
      v15 = a1[27];
      v14 = a1[28];
    }

    else
    {
      v15 = a1[25];
      v14 = a1[26];
    }

    goto LABEL_70;
  }

LABEL_112:
  v15 = a1[13];
  v14 = a1[14];
LABEL_70:
  *a5 = v15;
  a5[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

BOOL sub_100665A70(void *a1, double a2)
{
  v2 = a1[50];
  if (a1[51] == v2)
  {
    return 0;
  }

  v3 = a1[53];
  v4 = (v2 + 8 * (v3 / 0x12));
  v5 = *v4 + 216 * (v3 % 0x12);
  v6 = *(v2 + 8 * ((a1[54] + v3) / 0x12)) + 216 * ((a1[54] + v3) % 0x12);
  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    v7 = 0;
    v8 = 1.79769313e308;
    do
    {
      v9 = *(v5 + 16);
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v10 = *(v5 + 24);
        if (v10 > a2)
        {
          return v7;
        }

        v11 = vabdd_f64(a2, v10);
        if (v11 < v8)
        {
          v7 = v9 == 2;
          v8 = v11;
        }
      }

      v5 += 216;
      if (v5 - *v4 == 3888)
      {
        v12 = v4[1];
        ++v4;
        v5 = v12;
      }
    }

    while (v5 != v6);
  }

  return v7;
}

void *sub_100665B44@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 4560))
  {
    v4 = result[27];
    v3 = result[28];
  }

  else
  {
    v4 = result[25];
    v3 = result[26];
  }

  *a3 = v4;
  a3[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100665B70(void *a1, uint64_t a2)
{
  sub_100665DB8(a1 + 49, a2);
  Current = CFAbsoluteTimeGetCurrent();
  v5 = a1[53];
  v6 = a1[50];
  v7 = a1[51];
  v8 = (v6 + 8 * (v5 / 0x12));
  if (v7 == v6)
  {
    v10 = 0;
    v27 = 0;
    v28 = (v6 + 8 * ((v5 + a1[54]) / 0x12));
  }

  else
  {
    v9 = *(v6 + 8 * (v5 / 0x12));
    v10 = v9 + 216 * (v5 % 0x12);
    v11 = *(v6 + 8 * ((a1[54] + v5) / 0x12)) + 216 * ((a1[54] + v5) % 0x12);
    if (v10 != v11)
    {
      while (vabdd_f64(Current, *(v10 + 24)) <= 1200.0)
      {
        v10 += 216;
        if (v10 - v9 == 3888)
        {
          v12 = v8[1];
          ++v8;
          v9 = v12;
          v10 = v12;
        }

        if (v10 == v11)
        {
          v10 = *(v6 + 8 * ((a1[54] + v5) / 0x12)) + 216 * ((a1[54] + v5) % 0x12);
          goto LABEL_19;
        }
      }
    }

    if (v10 != v11)
    {
      v13 = v10;
      for (i = v8; ; v9 = *i)
      {
        v13 += 216;
        if (v13 - v9 == 3888)
        {
          v15 = i[1];
          ++i;
          v13 = v15;
        }

        if (v13 == v11)
        {
          break;
        }

        if (vabdd_f64(Current, *(v13 + 24)) <= 1200.0)
        {
          v16 = *(v13 + 16);
          *v10 = *v13;
          *(v10 + 16) = v16;
          v17 = *(v13 + 32);
          v18 = *(v13 + 48);
          v19 = *(v13 + 80);
          *(v10 + 64) = *(v13 + 64);
          *(v10 + 80) = v19;
          *(v10 + 32) = v17;
          *(v10 + 48) = v18;
          v20 = *(v13 + 96);
          v21 = *(v13 + 112);
          v22 = *(v13 + 144);
          *(v10 + 128) = *(v13 + 128);
          *(v10 + 144) = v22;
          *(v10 + 96) = v20;
          *(v10 + 112) = v21;
          v23 = *(v13 + 160);
          v24 = *(v13 + 176);
          v25 = *(v13 + 192);
          *(v10 + 208) = *(v13 + 208);
          *(v10 + 176) = v24;
          *(v10 + 192) = v25;
          *(v10 + 160) = v23;
          v10 += 216;
          if (v10 - *v8 == 3888)
          {
            v26 = v8[1];
            ++v8;
            v10 = v26;
          }
        }
      }

      v5 = a1[53];
      v6 = a1[50];
      v7 = a1[51];
    }

LABEL_19:
    v29 = v5 + a1[54];
    v28 = (v6 + 8 * (v29 / 0x12));
    if (v7 == v6)
    {
      v27 = 0;
    }

    else
    {
      v27 = (*v28 + 216 * (v29 % 0x12));
    }
  }

  sub_100665EA0(a1 + 49, v8, v10, v28, v27);
  if ((*(a2 + 16) - 13) <= 4)
  {
    v30 = a1[50];
    v31 = a1[51];
    a1[54] = 0;
    v32 = (v31 - v30) >> 3;
    if (v32 >= 3)
    {
      do
      {
        operator delete(*v30);
        v33 = a1[51];
        v30 = (a1[50] + 8);
        a1[50] = v30;
        v32 = (v33 - v30) >> 3;
      }

      while (v32 > 2);
    }

    if (v32 == 1)
    {
      v34 = 9;
    }

    else
    {
      if (v32 != 2)
      {
        return;
      }

      v34 = 18;
    }

    a1[53] = v34;
  }
}

__n128 sub_100665DB8(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 18 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_100667D40(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x12)) + 216 * (v7 % 0x12);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v12 = *(a2 + 80);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 80) = v12;
  *(v8 + 32) = v10;
  *(v8 + 48) = v11;
  v13 = *(a2 + 96);
  v14 = *(a2 + 112);
  v15 = *(a2 + 144);
  *(v8 + 128) = *(a2 + 128);
  *(v8 + 144) = v15;
  *(v8 + 96) = v13;
  *(v8 + 112) = v14;
  result = *(a2 + 160);
  v17 = *(a2 + 176);
  v18 = *(a2 + 192);
  *(v8 + 208) = *(a2 + 208);
  *(v8 + 176) = v17;
  *(v8 + 192) = v18;
  *(v8 + 160) = result;
  ++a1[5];
  return result;
}

void *sub_100665EA0(void *a1, void *a2, char *a3, void *a4, char *a5)
{
  if (a5 == a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = 18 * (a4 - a2) - 0x7B425ED097B425EDLL * (&a5[-*a4] >> 3) + 0x7B425ED097B425EDLL * (&a3[-*a2] >> 3);
  }

  v7 = a1[4];
  v8 = a1[1];
  v9 = (v8 + 8 * (v7 / 0x12));
  if (a1[2] == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*v9 + 216 * (v7 % 0x12));
  }

  if (a3 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 18 * (a2 - v9) - 0x7B425ED097B425EDLL * (&a3[-*a2] >> 3) + 0x7B425ED097B425EDLL * (&v10[-*v9] >> 3);
  }

  v24[0].n128_u64[0] = v8 + 8 * (v7 / 0x12);
  v24[0].n128_u64[1] = v10;
  sub_100667F8C(v24, v11);
  if (v6 >= 1)
  {
    v12 = v24[0];
    if (v11 <= (a1[5] - v6) >> 1)
    {
      sub_100667F8C(v24, v6);
      sub_100668040(v9, v10, v12.n128_u64[0], v12.n128_u64[1], v24[0].n128_u64[0], v24[0].n128_u64[1], v24);
      v18 = a1[5] - v6;
      a1[4] += v6;
      a1[5] = v18;
        ;
      }
    }

    else
    {
      sub_100667F8C(v24, v6);
      v13 = v24[0];
      v14 = a1[4] + a1[5];
      v15 = a1[1];
      v16 = (v15 + 8 * (v14 / 0x12));
      if (a1[2] == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = (*v16 + 216 * (v14 % 0x12));
      }

      v24[0] = v12;
      sub_1006681F4(v13.n128_u64[0], v13.n128_u64[1], v16, v17, v24);
      a1[5] -= v6;
        ;
      }
    }
  }

  v19 = a1[4];
  v20 = a1[1];
  v21 = (v20 + 8 * (v19 / 0x12));
  if (a1[2] == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v21 + 216 * (v19 % 0x12);
  }

  v24[0].n128_u64[0] = v21;
  v24[0].n128_u64[1] = v22;
  sub_100667F8C(v24, v11);
  return v24[0].n128_u64[0];
}

void sub_100666110(void *a1)
{
  sub_10066659C(a1);

  operator delete();
}

uint64_t sub_100666148(uint64_t a1)
{
  *a1 = 0;
  v3 = 0;
  sub_100126E84((a1 + 1), "fForceAssistedCyclingOverrideToTrue", &v3, 0);
  *(a1 + 8) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *(a1 + 24) = 0;
  uuid_clear((a1 + 28));
  return a1;
}

void sub_1006661D8(void *a1)
{
  *a1 = off_10245E8E0;
  a1[1] = 0x4006666600000000;
  operator new();
}

void sub_1006662F4(_Unwind_Exception *a1)
{
  v3 = v2;
  (*(*v3 + 8))(v3);
  v5 = *(v1 + 24);
  if (v5)
  {
    sub_100008080(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006663B0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1006663E0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100666420(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100666450(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

double sub_100666490@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018F5F74();
  }

  v4 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 48);
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "ScubaDiving, Static, activity: %d", v7, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F60D8(a1);
  }

  *a2 = xmmword_101C82C90;
  *(a2 + 16) = 0x40A8000000000000;
  *(a2 + 24) = 0;
  *&result = 0x1500000003;
  *(a2 + 32) = 0x1500000003;
  return result;
}

void *sub_10066659C(void *a1)
{
  *a1 = off_102466338;
  sub_100666704(a1 + 49);
  v2 = a1[48];
  if (v2)
  {
    sub_100008080(v2);
  }

  v3 = a1[46];
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = a1[44];
  if (v4)
  {
    sub_100008080(v4);
  }

  v5 = a1[42];
  if (v5)
  {
    sub_100008080(v5);
  }

  v6 = a1[40];
  if (v6)
  {
    sub_100008080(v6);
  }

  v7 = a1[38];
  if (v7)
  {
    sub_100008080(v7);
  }

  v8 = a1[36];
  if (v8)
  {
    sub_100008080(v8);
  }

  v9 = a1[34];
  if (v9)
  {
    sub_100008080(v9);
  }

  v10 = a1[32];
  if (v10)
  {
    sub_100008080(v10);
  }

  v11 = a1[30];
  if (v11)
  {
    sub_100008080(v11);
  }

  v12 = a1[28];
  if (v12)
  {
    sub_100008080(v12);
  }

  v13 = a1[26];
  if (v13)
  {
    sub_100008080(v13);
  }

  v14 = a1[24];
  if (v14)
  {
    sub_100008080(v14);
  }

  v15 = a1[22];
  if (v15)
  {
    sub_100008080(v15);
  }

  v16 = a1[20];
  if (v16)
  {
    sub_100008080(v16);
  }

  v17 = a1[18];
  if (v17)
  {
    sub_100008080(v17);
  }

  v18 = a1[16];
  if (v18)
  {
    sub_100008080(v18);
  }

  v19 = a1[14];
  if (v19)
  {
    sub_100008080(v19);
  }

  v20 = a1[12];
  if (v20)
  {
    sub_100008080(v20);
  }

  v21 = a1[10];
  if (v21)
  {
    sub_100008080(v21);
  }

  v22 = a1[8];
  if (v22)
  {
    sub_100008080(v22);
  }

  v23 = a1[6];
  if (v23)
  {
    sub_100008080(v23);
  }

  v24 = a1[4];
  if (v24)
  {
    sub_100008080(v24);
  }

  v25 = a1[2];
  if (v25)
  {
    sub_100008080(v25);
  }

  return a1;
}

uint64_t sub_100666704(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 9;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 18;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_1003EE22C(a1);
}

void sub_100666818(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100666830(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100666860(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100666908(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100666920(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100666950(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1006669F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100666A10(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100666A40(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100666AE8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100666B00(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100666B30(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100666BD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100666BF0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100666C20(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100666CC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100666CE0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100666D10(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100666DB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100666DD0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100666E00(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100666EA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100666EC0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100666EF0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100666F98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100666FB0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100666FE0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667088(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006670A0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1006670D0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667178(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667190(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1006671C0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667268(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667280(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1006672B0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667358(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667370(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1006673A0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667448(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667460(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100667490(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667538(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667550(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100667580(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667628(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667640(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100667670(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667718(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667730(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100667760(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667808(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667820(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100667850(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1006678F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667910(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100667940(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1006679E8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667A00(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100667A30(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667AD8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667AF0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100667B20(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667BC8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667BE0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100667C10(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667CB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018F61E8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100667CD0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100667D00(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100667D40(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x12;
  v3 = v1 - 18;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_100667EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100667F14(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 18 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x12)
  {
    a2 = 1;
  }

  if (v5 < 0x24)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void *sub_100667F8C(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x7B425ED097B425EDLL * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 17 - v3;
      v6 = &v2[-(v5 / 0x12)];
      *result = v6;
      v4 = *v6 + 216 * (18 * (v5 / 0x12) - v5) + 3672;
    }

    else
    {
      *result = &v2[v3 / 0x12];
      v4 = v2[v3 / 0x12] + 216 * (v3 % 0x12);
    }

    result[1] = v4;
  }

  return result;
}

__n128 sub_100668040@<Q0>(uint64_t *a1@<X1>, char *a2@<X2>, char **a3@<X3>, unint64_t a4@<X4>, char *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = (a3 - 1);
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      sub_100668110(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = (v19 + 3888);
    }

    v12 = (*v17 + 3888);
    v11 = a2;
  }

  sub_100668110(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_100668110@<X0>(char *a1@<X1>, char *a2@<X2>, char *a3@<X3>, char *a4@<X4>, char **a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = 0x84BDA12F684BDA13 * (&a4[-v10] >> 3);
      if ((0x84BDA12F684BDA13 * ((v11 - a1) >> 3)) < v12)
      {
        v12 = 0x84BDA12F684BDA13 * ((v11 - a1) >> 3);
      }

      v11 -= 216 * v12;
      a4 -= 216 * v12;
      if (v12)
      {
        result = memmove(a4, v11, 216 * v12);
      }

      if (v11 == a1)
      {
        break;
      }

      v14 = *(v6 - 1);
      v6 -= 8;
      v10 = v14;
      a4 = (v14 + 3888);
    }

    if ((*v6 + 3888) == a4)
    {
      v15 = *(v6 + 1);
      v6 += 8;
      a4 = v15;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

double sub_1006681F4(void **a1, uint64_t *__src, void **a3, uint64_t *a4, void ***a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    sub_1006682B8(&v15, __src, a5[1], *a1 + 486, *a5);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_1006682B8(&v15, v13, a5[1], v13 + 486, *a5);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = a5[1];
  }

  sub_1006682B8(&v15, v9, v8, a4, v7);
  result = *&v16;
  *a5 = v16;
  return result;
}

uint64_t *sub_1006682B8@<X0>(uint64_t **__return_ptr a1@<X8>, uint64_t *__src@<X0>, char *__dst@<X3>, uint64_t *a4@<X1>, void **a5@<X2>)
{
  v6 = a5;
  if (__src != a4)
  {
    v9 = __src;
    v6 = a5 + 1;
    v10 = *a5;
    while (1)
    {
      v11 = 0x84BDA12F684BDA13 * ((v10 - __dst + 3888) >> 3);
      if ((0x84BDA12F684BDA13 * (a4 - v9)) < v11)
      {
        v11 = 0x84BDA12F684BDA13 * (a4 - v9);
      }

      v12 = 216 * v11;
      if (v11)
      {
        __src = memmove(__dst, v9, 216 * v11);
      }

      v9 = (v9 + v12);
      if (v9 == a4)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += v12;
    if (*(v6 - 1) + 3888 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a1 = a4;
  a1[1] = v6;
  a1[2] = __dst;
  return __src;
}

uint64_t sub_100668504(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100668928;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102658568 != -1)
  {
    dispatch_once(&qword_102658568, block);
  }

  return qword_1026371B0;
}

void sub_1006687F4(uint64_t a1, unint64_t a2)
{
  v2 = a2 / 1000.0 - kCFAbsoluteTimeIntervalSince1970;
  if (vabdd_f64(v2, *&qword_102658570) > 600.0)
  {
    *&qword_102658570 = a2 / 1000.0 - kCFAbsoluteTimeIntervalSince1970;
    if (qword_1025D48A0 != -1)
    {
      sub_1018F639C();
    }

    v3 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v4 = 134217984;
      v5 = v2;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Sending along GPS time %.2f to CoreTime", &v4, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F63B0();
    }

    TMSetSourceTime();
  }
}

const void *sub_100668998(const void *a1, void *a2)
{
  v3 = sub_100668C54(a1, "CLTimeManager", a2);
  *(v3 + 109) = 1;
  v4 = (v3 + 109);
  *(v3 + 128) = 0;
  *v3 = &off_102466FE8;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0xBFF0000000000000;
  sub_10001CAF4(buf);
  sub_10001CB4C(*buf, "EnableProactiveBBTimeTransfer", v4, 0xFFFFFFFFLL);
  if (v14)
  {
    sub_100008080(v14);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018F64B8();
  }

  v5 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v6 = *v4;
    *buf = 67109120;
    *&buf[4] = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "EnableProactiveBBTimeTransfer,%d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F64E0(buf);
    v9 = *v4;
    v12[0] = 67109120;
    v12[1] = v9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "EnableProactiveBBTimeTransfer,%d", v12);
    v11 = v10;
    sub_100152C7C("Generic", 1, 0, 2, "CLTimeManager::CLTimeManager(id<CLIntersiloUniverse>)", "%s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  if (*v4)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_100668D00, type metadata for Builtin.UnsafeValueBuffer, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    sub_100668F2C(a1);
  }

  return a1;
}

void sub_100668BE0(_Unwind_Exception *a1)
{
  sub_100669ACC(v2, 0);
  v5 = *v3;
  *v3 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  sub_100668F88(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100668C54(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_1024671F0;
  sub_10000EC00((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = [a3 silo];
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_100668CE4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_100668D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F6524();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLTimeManager::onBBTimeActiveNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F6538();
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
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLTimeManager::onBBTimeActiveNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10066AEC4;
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

void sub_100668F2C(uint64_t a1)
{
  if (TMIsBBTimeActive())
  {

    sub_1006696F0(a1, v2);
  }

  else
  {

    sub_100669130(a1);
  }
}

uint64_t sub_100668F88(uint64_t a1)
{
  *a1 = off_1024671F0;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_10066900C(uint64_t a1)
{
  *a1 = &off_102466FE8;
  if (*(a1 + 109) == 1)
  {
    sub_100669130(a1);
  }

  *(a1 + 108) = 1;
  sub_100669ACC((a1 + 136), 0);
  v2 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_100668F88(a1);
}

void sub_1006690BC(uint64_t a1)
{
  sub_10066900C(a1);

  operator delete();
}

uint64_t sub_1006690F4(uint64_t result)
{
  v1 = result;
  if (*(result + 109) == 1)
  {
    result = sub_100669130(result);
  }

  *(v1 + 108) = 1;
  return result;
}

uint64_t sub_100669130(uint64_t a1)
{
  v1 = (a1 + 136);
  if (*(a1 + 136))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F639C();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Stopping proactive time", v4, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F6560();
    }
  }

  return sub_100669ACC(v1, 0);
}

void sub_100669260(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 136) == a2)
  {
    v2 = a1;
    if (qword_1025D48A0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1018F6644(qword_1025D48A0 == -1);
  }

  sub_1018F639C();
LABEL_3:
  v3 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Resuming proactive time", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F67B8();
  }

  sub_100669318(v2);
}

void sub_100669318(uint64_t a1)
{
  if (*(a1 + 128))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v3 = *(a1 + 144);
    if (v3 > 0.0 && v3 - Current < 1800.0 && Current < v3 + 900.0 + 5.0)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018F639C();
      }

      v4 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 144);
        *buf = 134218240;
        *&buf[4] = v5;
        *&buf[12] = 2048;
        *&buf[14] = 0x408C200000000000;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Deferring proactive time, last attempt was at %f, which is less than minimum interval %f ago", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F699C((a1 + 144));
      }

      operator new();
    }

    __asm { FMOV            V0.2D, #-1.0 }

    *buf = _Q0;
    *&buf[16] = 0;
    *&buf[20] = 10;
    if (qword_1025D4650 != -1)
    {
      sub_1018F689C();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#wigo,on,TimeManager", v12, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F68B0();
    }

    AnalyticsSendEventLazy();
    sub_10002FA64(buf);
  }

  sub_1018F6ABC();
}

void sub_1006696A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_1006696F0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 109))
  {
    if (sub_100719CE4(a1, a2) && !*(a1 + 136))
    {
      if (!*(a1 + 128))
      {
        sub_100D64EF4();
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018F64B8();
      }

      v3 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Starting proactive time", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F6D24();
      }

      sub_100669318(a1);
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F639C();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "proactive time is NOT enabled", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F6C40();
    }
  }
}

void sub_100669924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F6524();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v8 = 1;
    v5 = _os_activity_create(dword_100000000, "CL: CLTimeManager::onBBNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v5, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F6538();
    }

    v6 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "activity";
      v15 = 2050;
      v16 = a4;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLTimeManager::onBBNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v8 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_100669ACC(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10092C310(result);

    operator delete();
  }

  return result;
}

void sub_100669B18(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F6524();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLTimeManager::onBBTimeActiveRetry", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F6538();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLTimeManager::onBBTimeActiveRetry, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  sub_100669260(a2, a1);
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void *sub_100669CE8(void *result)
{
  v1 = result[4];
  if (*(v1 + 128) == result[5])
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018F639C();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      if (*(v1 + 136))
      {
        v3 = "Pausing";
      }

      else
      {
        v3 = "Stopped";
      }

      v5 = 136315138;
      v6 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s proactive time", &v5, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F6EEC(v1);
    }

    if (qword_1025D4650 != -1)
    {
      sub_1018F7008();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5) = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#wigo,off,TimeManager", &v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F7030();
    }

    AnalyticsSendEventLazy();
    return [*(*(v1 + 128) + 16) unregister:*(*(v1 + 128) + 8) forNotification:0];
  }

  return result;
}

void sub_100669F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_100669F74(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = &off_1024672D0;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

void sub_10066A058(_BYTE *result, void *a2)
{
  v9 = a2;
  if ((result[108] & 1) == 0)
  {
    v4 = *(result + 11);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = (result + 80);
    v6 = result + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != result + 88 && *(v6 + 8) <= a2)
    {
      while (*(v6 + 7))
      {
        *buf = *(*(v6 + 5) + 28);
        (*(*result + 112))(result, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_1018F6524();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = result + 8;
        if (result[31] < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v11 = v8;
        v12 = 1026;
        v13 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018F7114(result, a2);
      }
    }
  }
}

BOOL sub_10066A28C(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v13 = *(v6 + 48);
    v11 = v6 + 48;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *a3;
    v15 = v11;
    do
    {
      if (*(v12 + 28) >= v14)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v14));
    }

    while (v12);
    if (v15 == v11 || v14 < *(v15 + 28))
    {
LABEL_24:
      v15 = v11;
    }

    return v15 != v11;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_1018F6524();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v16 = 136446466;
      v17 = v8;
      v18 = 1026;
      v19 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_1018F7324(a1, a2);
      return 0;
    }
  }

  return result;
}

void sub_10066A54C(uint64_t a1, int *a2, _DWORD *a3, int a4, int a5)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = *a2;
    v9 = a1 + 64;
    do
    {
      if (*(v6 + 32) >= v8)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < v8));
    }

    while (v6);
    if (v9 == v7 || v8 < *(v9 + 32))
    {
LABEL_9:
      v12 = v13;
      memset(v13, 0, 32);
      sub_100248B84(buf, a2, &v12);
      sub_10047D8C8(v7 - 8, buf);
    }

    if (a4)
    {
      operator new();
    }

    v10 = *(v9 + 72);
    *(v9 + 64) = 0;
    *(v9 + 72) = 0;
    if (v10)
    {
      sub_100008080(v10);
    }

    if (*(v9 + 56))
    {
      sub_10066B6DC(a3);
    }
  }
}

void sub_10066AA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_101865570(va);
  sub_101864718(v16 - 144);
  _Unwind_Resume(a1);
}

void sub_10066AA48(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018F6524();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v32 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F754C(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018F6524();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v32 = v5;
      v33 = 2048;
      v34[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F742C(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      v8 = (a1 + 8);
      do
      {
        v9 = v7[5];
        if (v9 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_1018F6538();
            }

            v10 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v11 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v11 = *v8;
              }

              v12 = *(v7 + 8);
              v13 = *(v9 + 7);
              *buf = 136315650;
              v32 = v11;
              v33 = 1024;
              LODWORD(v34[0]) = v12;
              WORD2(v34[0]) = 1024;
              *(v34 + 6) = v13;
              _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_1018F6538();
              }

              v17 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v17 = *v8;
              }

              v18 = *(v7 + 8);
              v19 = *(v9 + 7);
              v25 = 136315650;
              v26 = v17;
              v27 = 1024;
              v28 = v18;
              v29 = 1024;
              v30 = v19;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 2, "%s; clients, id: %d, notification: %d", &v25, 24, v24);
              v21 = v20;
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLTimeManager_Type::Notification, CLTimeManager_Type::NotificationData>::listClients() [Notification_T = CLTimeManager_Type::Notification, NotificationData_T = CLTimeManager_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v20);
              if (v21 != buf)
              {
                free(v21);
              }
            }

            v14 = v9[1];
            if (v14)
            {
              do
              {
                v15 = v14;
                v14 = *v14;
              }

              while (v14);
            }

            else
            {
              do
              {
                v15 = v9[2];
                v16 = *v15 == v9;
                v9 = v15;
              }

              while (!v16);
            }

            v9 = v15;
          }

          while (v15 != v7 + 6);
        }

        v22 = v7[1];
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
            v23 = v7[2];
            v16 = *v23 == v7;
            v7 = v23;
          }

          while (!v16);
        }

        v7 = v23;
      }

      while (v23 != (a1 + 88));
    }
  }
}

void sub_10066AE0C(uint64_t a1)
{
  sub_10066AEFC(a1);

  operator delete();
}

id sub_10066AE44(uint64_t a1, int a2, void *a3)
{
  result = sub_10066B160(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_10066AEFC(uint64_t a1)
{
  *a1 = &off_1024672D0;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

_BYTE *sub_10066B048(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_10066B160(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13, &unk_101C66300, &v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

uint64_t sub_10066B140(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

id sub_10066B160(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_10066B1FC(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_10066B3D4(a1);
    }

    else
    {
      return 0;
    }
  }
}

id sub_10066B1FC(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_10066B5D8(&v6, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_1018F765C();
    }

    v3 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C84BF0 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F7670();
    }
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_1018F765C();
    }

    v5 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C84BF0 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F7778();
    }
  }

  return 0;
}

id sub_10066B3D4(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018F765C();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C84BF0 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018F7880();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018F765C();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C84BF0 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018F7988();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

id sub_10066B5D8(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254EDE0))
  {
    if ([objc_msgSend(a2 "serialized")] != 4)
    {
      sub_1018F7A90();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

void sub_10066B680(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102467318;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10066B788(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = a1 + 8;
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 8))
      {
        v39 = v9;
        v10 = sub_10066B160(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 10);
        v11 = v9[5];
        if (v11 != v9 + 6)
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v38 = v16;
              sub_10066B048(a1, &v38, &v39, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v39 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v38 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_1018F6538();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v45 = v19;
                v46 = 1026;
                v47 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_1018F6538();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v40 = 136446466;
                v41 = v33;
                v42 = 1026;
                v43 = v34;
                LODWORD(v37) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 17, "%{public}s; unknown client %{public}d", &v40, v37);
                v36 = v35;
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLTimeManager_Type::Notification, CLTimeManager_Type::NotificationData>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLTimeManager_Type::Notification, NotificationData_T = CLTimeManager_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
                if (v36 != buf)
                {
                  free(v36);
                }
              }
            }
          }

          while (v11 != v39 + 6);
        }
      }
    }
  }
}

uint64_t sub_10066BB44(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_10066BBE0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = sub_10000B1F8(a1, a2);
    sub_10000B230(buf);
    sub_10000B324(v4, buf);
    *buf = 23;
    v40[0] = 23;
    v5 = sub_10000AD98(buf);
    v40[1] = v5;
    v7 = sub_10000AE98(v5, v6);
    sub_1005D2D94(v7, v40, (a1 + 5220), a2, 0);
    v8 = 0;
    if ([a2 hasArrivalDate])
    {
      v8 = [a2 hasDepartureDate] ^ 1;
    }

    [a2 coordinate];
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v9 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [a2 hasDepartureDate];
      v38 = [a2 hasArrivalDate];
      v10 = LocationLogEncryptionDataSize();
      v11 = LocationLogEncryptionEncryptData();
      v12 = LocationLogEncryptionDataSize();
      v13 = LocationLogEncryptionEncryptData();
      [a2 horizontalAccuracy];
      v15 = v14;
      v16 = [a2 arrivalDate];
      v17 = [a2 departureDate];
      v18 = [a2 _placeInference];
      *buf = 68291843;
      WORD2(v42) = 2082;
      LODWORD(v42) = 0;
      *(&v42 + 6) = "";
      HIWORD(v42) = 1026;
      LODWORD(v43) = v8;
      WORD2(v43) = 1026;
      *(&v43 + 6) = v39;
      WORD5(v43) = 1026;
      HIDWORD(v43) = v38;
      LOWORD(v44) = 1040;
      *(&v44 + 2) = v10;
      WORD3(v44) = 2098;
      *(&v44 + 1) = v11;
      LOWORD(v45) = 1040;
      *(&v45 + 2) = v12;
      WORD3(v45) = 2098;
      *(&v45 + 1) = v13;
      *v46 = 2050;
      *&v46[2] = v15;
      *&v46[10] = 2113;
      *&v46[12] = v16;
      *v47 = 2113;
      *&v47[2] = v17;
      *&v47[10] = 2117;
      *&v47[12] = v18;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:LocationController,onVisit, isInsideVisit:%{public}hhd, hasDepartDate:%{public}hhd, hasArrivalDate:%{public}hhd, description.coordinate.latitude:%{public, location:Encrypted_latitude}.*P, description.coordinate.longitude:%{public, location:Encrypted_longitude}.*P, description.hAcc:%{public}f, description.arrival:%{private, location:escape_only}@, description.departure:%{private, location:escape_only}@, description.placeInference:%{sensitive, location:escape_only}@}", buf, 0x6Cu);
    }

    sub_100278C3C(a1, 12, v8);
    v20 = *(a1 + 312);
    if (v20)
    {
      sub_100DAA3D4(v20, a2);
    }

    v21 = *(a1 + 320);
    if (v21)
    {
      sub_100549B98(v21, a2);
    }

    v22 = *(a1 + 304);
    if (v22)
    {
      v23 = sub_10000B1F8(v21, v19);
      *buf = 1;
      v24 = sub_10001A6B0(v23, buf);
      sub_100EA8570(v22, v8, v24);
    }

    sub_101058B10(a1 + 5296, (v8 ^ 1));
    *buf = 0xFFFF;
    v42 = 0uLL;
    v43 = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    v44 = _Q0;
    v45 = _Q0;
    *v46 = _Q0;
    *&v46[16] = 0;
    *&v47[8] = 0uLL;
    *v47 = 0xBFF0000000000000;
    v48 = 0;
    v49 = 0xBFF0000000000000;
    v50 = 0x7FFFFFFF;
    v52 = 0;
    v53 = 0;
    v51 = 0;
    v54 = 0;
    v30 = sub_1010589B8(a1 + 5296, buf);
    if ((v8 ^ 1))
    {
      v34 = *(a1 + 280);
      if (v34)
      {
        (*(*v34 + 552))(v34, v30);
      }
    }

    else
    {
      sub_1006770A8(a1, a2);
      v31 = *(a1 + 280);
      if (v31)
      {
        (*(*v31 + 536))(v31, 0);
      }
    }

    v35 = *(a1 + 768);
    if (v35)
    {
      sub_100D24814(v35, a2);
    }

    v36 = *(a1 + 5960);
    v37 = v8 ^ 1;
    if (!v36)
    {
      v37 = 1;
    }

    if ((v37 & 1) == 0)
    {
      sub_100D5AE3C(v36);
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v32 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      LODWORD(v42) = 0;
      WORD2(v42) = 2082;
      *(&v42 + 6) = "";
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:LocationController,slv,nil visit in onVisit()}", buf, 0x12u);
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }
    }

    v33 = qword_1025D4608;
    if (os_signpost_enabled(qword_1025D4608))
    {
      *buf = 68289026;
      LODWORD(v42) = 0;
      WORD2(v42) = 2082;
      *(&v42 + 6) = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "LocationController,slv,nil visit in onVisit()", "{msg%{public}.0s:LocationController,slv,nil visit in onVisit()}", buf, 0x12u);
    }
  }
}

uint64_t sub_10066C274(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10066D76C;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102658588 != -1)
  {
    dispatch_once(&qword_102658588, block);
  }

  return qword_1026371B8;
}

void *__cdecl sub_10066C34C(CLLocationControllerAdapter *self, SEL a2)
{
  result = [(CLNotifierServiceAdapter *)self notifier];
  if (result)
  {
  }

  return result;
}

void sub_10066C84C(uint64_t a1, __int128 *a2)
{
  v4 = sub_100C3DAB0(a2);
  if (*(a1 + 5176) != v4)
  {
    *(a1 + 5176) = v4;
    v5 = [objc_msgSend(*(a1 + 32) "vendor")];
    if (*(a1 + 5176))
    {
      v6 = 1;
    }

    else
    {
      v6 = *(a1 + 1667);
    }

    [v5 isInEmegencyState:v6 & 1];
    if (*(a1 + 5176))
    {
      v7 = 1;
    }

    else
    {
      v7 = *(a1 + 1667);
    }

    sub_1003E084C(a1 + 800, v7 & 1);
  }

  v8 = *(a1 + 280);
  if (v8)
  {
    v11 = *a2;
    v12 = *(a2 + 4);
    (*(*v8 + 320))(v8, &v11);
  }

  if (qword_1025D4600 != -1)
  {
    sub_1018F7C0C();
  }

  v9 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 5176);
    LODWORD(v11) = 67240192;
    DWORD1(v11) = v10;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "BaroAlt,LocCtrlOnEmergencyStateChange,isEmergency,%{public}d", &v11, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F8344((a1 + 5176));
  }
}

void sub_10066CB88(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a1 + 5960) && *(a1 + 5984))
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v4 = qword_1025D4608;
    v5 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      v7 = sub_10000B1F8(v5, v6);
      *buf = 1;
      v8 = sub_10001A6B0(v7, buf);
      *buf = 134349312;
      v27 = v8;
      v28 = 1026;
      v29 = v2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLJR,routeReconstructionCallback,mct,%{public}.3f,retcode,%{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F8530(v2);
    }

    if (!v2)
    {
      v9 = *(a1 + 5960);
      v24 = 0;
      v25 = 0;
      __p = 0;
      sub_10031D97C(&__p, *(v9 + 136), *(v9 + 144), 0x6F96F96F96F96F97 * ((*(v9 + 144) - *(v9 + 136)) >> 2));
      v11 = __p;
      if (v24 != __p)
      {
        v12 = sub_10000B1F8(__p, v10);
        sub_10000AED4(v12, v22);
        v21 = -1.0;
        if (sub_100125300(v22, &v21))
        {
          v13 = __p;
          v14 = v24;
          if (__p != v24)
          {
            do
            {
              v15 = *(v13 + 76);
              sub_10002D644(buf, v13, v15 - v21);
              v30 = v15;
              v31 = 4;
              v32 = 3;
              (*(**(a1 + 5984) + 16))(*(a1 + 5984), buf, 1);
              v13 += 156;
            }

            while (v13 != v14);
          }

          if (qword_102658598 != -1)
          {
            sub_1018F8688();
          }

          if (byte_102658590)
          {
            sub_10002670C(*(a1 + 5984), 1);
          }
        }

        else
        {
          if (qword_1025D4600 != -1)
          {
            sub_1018F7C0C();
          }

          v17 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "CLJR,could not get MCT-to-CFAT offset", buf, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018F8644(buf);
            v20[0] = 0;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 16, "CLJR,could not get MCT-to-CFAT offset", v20, 2);
            v19 = v18;
            sub_100152C7C("Generic", 1, 0, 0, "void CLLocationController::routeReconstructionCallback(CLJITRouteReconstruction::ReturnCode)", "%s\n", v18);
            if (v19 != buf)
            {
              free(v19);
            }
          }
        }

        v11 = __p;
      }

      if (v11)
      {
        v24 = v11;
        operator delete(v11);
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v16 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      LODWORD(v27) = v2;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "CLJR,routeReconstructionCallback,unexpected callback since module is not enabled,retcode,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F86B0();
    }
  }
}

void sub_10066CF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10066D38C(uint64_t a1, double *a2, double *a3)
{
  v3 = *(a1 + 5984);
  if (!v3)
  {
    return 0;
  }

  v7 = sub_1006A9980(*(v3 + 40));
  if (v7 < 0.0)
  {
    return 0;
  }

  v8 = v7;
  (*(**(a1 + 5984) + 24))(v11);
  v9 = v12;
  *a3 = v12;
  if (v9 < 0.0)
  {
    return 0;
  }

  (*(**(a1 + 5984) + 32))(v11, v9 - v8);
  LODWORD(result) = sub_100028030(v11);
  if (v13)
  {
    result = result;
  }

  else
  {
    result = 0;
  }

  if (result == 1)
  {
    *a2 = v12;
    *a3 = v9;
  }

  return result;
}

uint64_t sub_10066D490(uint64_t a1)
{
  v1 = *(a1 + 5984);
  if (v1)
  {
    return *(*(v1 + 40) + 68);
  }

  else
  {
    return 0;
  }
}

void sub_10066D6BC(uint64_t a1)
{
  v3 = *(a1 + 5960);
  if (v3)
  {

    sub_100D58FE8(v3, 2);
  }

  else
  {
    v6 = v1;
    v7 = v2;
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "CLJR,internalTools_requestRouteReconstructionForPedestrian,#Warning: not enabled", v5, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F8B74();
    }
  }
}

void sub_10066D7DC(uint64_t a1, void *a2)
{
  v4 = sub_1006A597C(a1, "controller", a2);
  *v4 = off_102467388;
  sub_10018D404((v4 + 15));
  *(a1 + 168) = 0u;
  *(a1 + 160) = -1;
  *(a1 + 216) = 1;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 240) = 0;
  *(a1 + 232) = a1 + 240;
  v60 = a1 + 232;
  *(a1 + 220) = 0;
  *(a1 + 224) = 0;
  *(a1 + 248) = 0;
  *(a1 + 264) = 0;
  *(a1 + 256) = a1 + 264;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  v62 = a1 + 320;
  v63 = a1 + 256;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 352) = 0;
  sub_10092E284(a1 + 360);
  v61 = a2;
  *(a1 + 672) = 0;
  *(a1 + 640) = 0;
  *(a1 + 656) = 0;
  *(a1 + 648) = 0;
  *(a1 + 674) = 1;
  *(a1 + 683) = 0;
  *(a1 + 675) = 0;
  *(a1 + 684) = -1;
  *(a1 + 712) = 0;
  *(a1 + 714) = 0;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0;
  *(a1 + 760) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0;
  sub_10018D404(a1 + 808);
  *(a1 + 848) = 0x1000000;
  *(a1 + 856) = 0xBFF0000000000000;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 864) = _Q1;
  *(a1 + 880) = 0xBFF0000000000000;
  *(a1 + 888) = 0;
  *(a1 + 896) = 0xBFF0000000000000;
  *(a1 + 904) = 0;
  *(a1 + 912) = 0xBFF0000000000000;
  *(a1 + 920) = 0;
  *(a1 + 928) = 0xBFF0000000000000;
  *(a1 + 936) = 0;
  *(a1 + 944) = 0xBFF0000000000000;
  *(a1 + 952) = 0xFFFF;
  *(a1 + 956) = 0u;
  *(a1 + 972) = xmmword_101C75BF0;
  *(a1 + 988) = _Q1;
  *(a1 + 1004) = _Q1;
  *(a1 + 1020) = _Q1;
  *(a1 + 1036) = 0;
  *(a1 + 1040) = 0xBFF0000000000000;
  *(a1 + 1064) = 0;
  *(a1 + 1048) = 0u;
  *(a1 + 1068) = 0xBFF0000000000000;
  *(a1 + 1076) = 0x7FFFFFFF;
  *(a1 + 1096) = 0;
  *(a1 + 1080) = 0u;
  *(a1 + 1104) = 0;
  *(a1 + 1108) = 0xFFFF;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0xBFF0000000000000;
  *(a1 + 1136) = xmmword_101C76220;
  *(a1 + 1152) = _Q1;
  *(a1 + 1168) = _Q1;
  *(a1 + 1184) = 0xBFF0000000000000;
  *(a1 + 1192) = 0;
  *(a1 + 1196) = 0xBFF0000000000000;
  *(a1 + 1220) = 0;
  *(a1 + 1204) = 0u;
  *(a1 + 1224) = 0xBFF0000000000000;
  *(a1 + 1232) = 0x7FFFFFFF;
  *(a1 + 1260) = 0;
  *(a1 + 1252) = 0;
  *(a1 + 1236) = 0u;
  *(a1 + 1268) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1300) = 0u;
  *(a1 + 1272) = 0u;
  *(a1 + 1288) = 0u;
  *(a1 + 1320) = 0xBFF0000000000000;
  v65 = _Q1;
  *(a1 + 1328) = _Q1;
  sub_1003E0D78(a1 + 1344);
  *(a1 + 1664) = 0;
  *(a1 + 1648) = 0u;
  *(a1 + 1632) = 0u;
  *(a1 + 1616) = 0u;
  *(a1 + 1600) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 2000) = 0xBFF0000000000000;
  *(a1 + 2008) = 0;
  *(a1 + 2016) = xmmword_101C76220;
  sub_100021AFC(a1 + 2032);
  sub_100021AFC(a1 + 3592);
  *(a1 + 5152) = v65;
  *(a1 + 5168) = 0xBFF0000000000000;
  *(a1 + 5176) = 0;
  *(a1 + 5184) = 0u;
  *(a1 + 5200) = 0u;
  *(a1 + 5216) = 1;
  *buf = 21;
  *(a1 + 5220) = 21;
  *(a1 + 5224) = sub_10000AD98(buf);
  *(a1 + 5240) = 0;
  *(a1 + 5248) = 0;
  *(a1 + 5256) = 0;
  *(a1 + 5260) = 0;
  *(a1 + 5264) = 0;
  *(a1 + 5272) = 0u;
  *(a1 + 5288) = 0;
  v10 = sub_1010589B4(a1 + 5296);
  *(a1 + 5992) = 0;
  *(a1 + 5960) = 0u;
  *(a1 + 5976) = 0u;
  *(a1 + 6000) = a1 + 6000;
  v64 = a1 + 6000;
  *(a1 + 6008) = a1 + 6000;
  *(a1 + 6016) = 0;
  *(a1 + 6024) = xmmword_101C84CD0;
  *(a1 + 6040) = 0;
  *(a1 + 6048) = 0xBFF0000000000000;
  *(a1 + 6056) = 0u;
  *(a1 + 6072) = 0xBFF0000000000000;
  *(a1 + 6080) = 0u;
  *(a1 + 6096) = 0u;
  *(a1 + 6112) = 0u;
  v12 = sub_10000B1F8(v10, v11);
  sub_10000B230(buf);
  sub_10000B324(v12, buf);
  *(a1 + 688) = 0;
  v15 = sub_10000B1F8(v13, v14);
  *buf = 1;
  v16 = sub_10001A6B0(v15, buf);
  v17 = [*(a1 + 40) newTimer];
  *(a1 + 5232) = v17;
  if (v17)
  {
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_1000244EC;
    v66[3] = &unk_102449A78;
    v66[4] = a1;
    [v17 setHandler:v66];
    v18 = floor(v16) - v16 + 0.9 + 1.0;
    [*(a1 + 5232) setNextFireDelay:v18 interval:?];
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v19 = qword_1025D4608;
    v20 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO);
    if (v20)
    {
      v22 = sub_10000B1F8(v20, v21);
      v23 = sub_100125220(v22);
      *buf = 134350080;
      *&buf[4] = v16;
      *&buf[12] = 2050;
      *&buf[14] = v18;
      v70 = 2050;
      v71 = 0x3FECCCCCCCCCCCCDLL;
      v72 = 2050;
      v73 = 0x3FF0000000000000;
      v74 = 2050;
      v75 = v23;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "LocationController,#time,starting heartbeat at mct,%{public}.3f,delay,%{public}.3f,fractionalSetpoint,%{public}.3f,interval_sec,%{public}.1f,propagation_us,%{public}.3f", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F8644(buf);
      v24 = qword_1025D4608;
      v27 = sub_10000B1F8(v25, v26);
      v28 = sub_100125220(v27);
      LODWORD(context.version) = 134350080;
      *(&context.version + 4) = v16;
      WORD2(context.info) = 2050;
      *(&context.info + 6) = v18;
      HIWORD(context.retain) = 2050;
      context.release = 0x3FECCCCCCCCCCCCDLL;
      LOWORD(context.copyDescription) = 2050;
      *(&context.copyDescription + 2) = 0x3FF0000000000000;
      WORD1(context.equal) = 2050;
      *(&context.equal + 4) = v28;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v24, 1, "LocationController,#time,starting heartbeat at mct,%{public}.3f,delay,%{public}.3f,fractionalSetpoint,%{public}.3f,interval_sec,%{public}.1f,propagation_us,%{public}.3f", &context, 52, v60, v61, v62, v63, v64);
      v30 = v29;
      sub_100152C7C("Generic", 1, 0, 2, "CLLocationController::CLLocationController(id<CLIntersiloUniverse>)", "%s\n", v29);
      goto LABEL_47;
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v31 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_FAULT, "LocationController,#time,failed to allocate heartbeat timer", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F8644(buf);
      LOWORD(context.version) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 17, "LocationController,#time,failed to allocate heartbeat timer", &context, 2, v60, v61, v62, v63, v64);
      v30 = v57;
      sub_100152C7C("Generic", 1, 0, 0, "CLLocationController::CLLocationController(id<CLIntersiloUniverse>)", "%s\n", v57);
LABEL_47:
      if (v30 != buf)
      {
        free(v30);
      }
    }
  }

  sub_10001CAF4(buf);
  v32 = *(a1 + 296);
  LOBYTE(context.version) = 0;
  v33 = sub_10001CB4C(*buf, "LocationControllerFilterUsageIsLegacy", &context, 0xFFFFFFFFLL);
  version = context.version;
  if (!v33)
  {
    version = v32;
  }

  *(a1 + 296) = version;
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  sub_10001CAF4(buf);
  v35 = *buf;
  v36 = _os_feature_enabled_impl();
  LOBYTE(context.version) = 0;
  v37 = sub_10001CB4C(v35, "ProduceFusedLocationEstimateOnHeartbeat", &context, 0xFFFFFFFFLL);
  v38 = context.version;
  if (!v37)
  {
    v38 = v36;
  }

  *(a1 + 297) = v38 & 1;
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if (qword_1025D4600 != -1)
  {
    sub_1018F7C0C();
  }

  v39 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v40 = *(a1 + 297);
    *buf = 67109120;
    *&buf[4] = v40;
    _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "LocationController,ProduceFusedLocationEstimateOnHeartbeat,%d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F8644(buf);
    v54 = *(a1 + 297);
    LODWORD(context.version) = 67109120;
    HIDWORD(context.version) = v54;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "LocationController,ProduceFusedLocationEstimateOnHeartbeat,%d", &context);
    v56 = v55;
    sub_100152C7C("Generic", 1, 0, 2, "CLLocationController::CLLocationController(id<CLIntersiloUniverse>)", "%s\n", v55);
    if (v56 != buf)
    {
      free(v56);
    }
  }

  sub_10001CAF4(buf);
  v41 = *buf;
  v43 = sub_1005CAED8(v42);
  LOBYTE(context.version) = 0;
  v44 = sub_10001CB4C(v41, "EnableLocationControllerRecorder", &context, 0xFFFFFFFFLL);
  v46 = context.version;
  if (!v44)
  {
    v46 = v43;
  }

  *(a1 + 5217) = v46 & 1;
  v47 = *&buf[8];
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
    v46 = *(a1 + 5217);
  }

  if (v46)
  {
    v48 = sub_10000AE98(v47, v45);
    sub_1005CAEDC(v48);
    v51 = sub_10000AE98(v49, v50);
    sub_1005CB17C(v51);
    context.version = 0x4024000000000000;
    sub_100671BD8(a1, &context.version);
    sub_10001CAF4(buf);
    LODWORD(v67.version) = 0;
    if (sub_10005BBE4(*buf, "LocationControllerClientListRecordIntervalSec", &v67))
    {
      v52 = v67.version;
    }

    else
    {
      v52 = -1;
    }

    if (*&buf[8])
    {
      sub_100008080(*&buf[8]);
    }

    if (v52 >= 1)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018F7C0C();
      }

      v53 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v52;
        _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_INFO, "LocationController,enable client list recording interval,%d,sec", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F8644(buf);
        LODWORD(v67.version) = 67109120;
        HIDWORD(v67.version) = v52;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 1, "LocationController,enable client list recording interval,%d,sec", &v67);
        v59 = v58;
        sub_100152C7C("Generic", 1, 0, 2, "CLLocationController::CLLocationController(id<CLIntersiloUniverse>)", "%s\n", v58);
        if (v59 != buf)
        {
          free(v59);
        }
      }

      *(a1 + 5256) = v52;
      *(a1 + 5260) = 1;
    }
  }

  sub_100678C6C();
}

void sub_1006713DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t *a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a42)
  {
    sub_100008080(a42);
  }

  sub_100678B08((v42 + 6080));
  v45 = *(v42 + 6064);
  if (v45)
  {
    sub_100008080(v45);
  }

  sub_1001FB750(a15);
  v46 = *(v42 + 5992);
  if (v46)
  {
    sub_100008080(v46);
  }

  v47 = *(v42 + 5976);
  if (v47)
  {
    sub_100008080(v47);
  }

  sub_100678ABC(a17, 0);
  sub_100678710(v42 + 5296);
  sub_100678750(v42 + 2032);
  v48 = *(v42 + 1656);
  *(v42 + 1656) = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  v49 = *(v42 + 1648);
  *(v42 + 1648) = 0;
  if (v49)
  {
    (*(*v49 + 8))(v49);
  }

  v50 = *(v42 + 1640);
  *(v42 + 1640) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  v51 = *(v42 + 1632);
  *(v42 + 1632) = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  v52 = *(v42 + 1624);
  *(v42 + 1624) = 0;
  if (v52)
  {
    (*(*v52 + 8))(v52);
  }

  v53 = *(v42 + 1616);
  *(v42 + 1616) = 0;
  if (v53)
  {
    (*(*v53 + 8))(v53);
  }

  v54 = *(v42 + 1608);
  *(v42 + 1608) = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  v55 = *(v42 + 1600);
  *(v42 + 1600) = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  v56 = *(v42 + 1592);
  if (v56)
  {
    sub_100008080(v56);
  }

  v57 = *(v42 + 792);
  if (v57)
  {
    sub_100008080(v57);
  }

  v58 = (v42 + 640);
  v59 = *(v42 + 776);
  if (v59)
  {
    sub_100008080(v59);
  }

  sub_100675664((v42 + 720), 0);
  v60 = *v58;
  *v58 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  sub_10092EF24((v43 + 24));
  sub_100678A70(a13, 0);
  sub_100678A24(v43 + 18, 0);
  sub_1006789D8(a19, 0);
  v61 = *(v42 + 288);
  if (v61)
  {
    sub_100008080(v61);
  }

  sub_100678954(a14, *(v42 + 264));
  sub_1006788D4(a11, *(v42 + 240));
  v62 = *(v42 + 208);
  *(v42 + 208) = 0;
  if (v62)
  {
    (*(*v62 + 8))(v62);
  }

  v63 = *(v42 + 200);
  *(v42 + 200) = 0;
  if (v63)
  {
    (*(*v63 + 8))(v63);
  }

  v64 = *(v42 + 192);
  *(v42 + 192) = 0;
  if (v64)
  {
    (*(*v64 + 8))(v64);
  }

  v65 = *(v42 + 184);
  *(v42 + 184) = 0;
  if (v65)
  {
    (*(*v65 + 8))(v65);
  }

  v66 = *(v42 + 176);
  *(v42 + 176) = 0;
  if (v66)
  {
    (*(*v66 + 8))(v66);
  }

  v67 = *v43;
  *v43 = 0;
  if (v67)
  {
    (*(*v67 + 8))(v67);
  }

  sub_1006A5E8C(v42);
  _Unwind_Resume(a1);
}

void sub_100671BD8(uint64_t result, double *a2)
{
  if (*a2 >= 0.0)
  {
    v4 = sub_10000B1F8(result, a2);
    v8 = 1;
    v5 = sub_10001A6B0(v4, &v8);
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v7 = v5 + *a2;
      v8 = 134349312;
      v9 = v7;
      v10 = 2050;
      v11 = v5;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "#locctl,#rec,requested client list record at time,mct,%{public}.3f,now,%{public}.3f", &v8, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F8EE4(v5);
    }

    *(result + 5240) = v5 + *a2;
    *(result + 5248) = 1;
  }
}

void sub_100671D14(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onWifiServiceNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onWifiServiceNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100674C68(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100671EF0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onClientNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onClientNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10067667C(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006720CC(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onDataProtectionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onDataProtectionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100674E94(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006722A8(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onBluetoothNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onBluetoothNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100675010(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100672484(uint64_t a1, unsigned int *a2, char *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onCompanionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onCompanionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100675100(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}