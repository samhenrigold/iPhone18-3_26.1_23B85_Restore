uint64_t sub_1006AE790(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_102658A30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102658A30))
  {
    LODWORD(v3) = 0;
    qword_102658A20 = 0;
    unk_102658A28 = 0;
    qword_102658A18 = 0;
    sub_1004579D4(&qword_102658A18, &v3, &v3 + 1, 1uLL);
    __cxa_atexit(sub_10051F310, &qword_102658A18, dword_100000000);
    __cxa_guard_release(&qword_102658A30);
  }

  v12 = 0;
  v3 = xmmword_101C78400;
  v4 = 0u;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  v13 = xmmword_101C78400;
  v14 = 0;
  v15 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0u;
  v21 = xmmword_101C78400;
  v22 = 0;
  v23 = 0;
  v24 = 0xFFEFFFFFFFFFFFFFLL;
  v35 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v36 = 0u;
  v37 = 0xFFEFFFFFFFFFFFFFLL;
  v38 = 0;
  v39 = 0;
  v44 = 0;
  v45 = 0;
  v50 = 0;
  v42 = 0u;
  memset(v43, 0, sizeof(v43));
  v40 = 0u;
  v41 = 0u;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  memset(v49, 0, sizeof(v49));
  v51 = 0xFFEFFFFFFFFFFFFFLL;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
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
  v72 = 0xFFEFFFFFFFFFFFFFLL;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0xFFEFFFFFFFFFFFFFLL;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0xFFEFFFFFFFFFFFFFLL;
  v83 = 0u;
  v84 = 0x80000000800000;
  v85 = 0u;
  v86 = xmmword_101C78410;
  v87 = 0x80000000800000;
  v88 = 0u;
  v89 = 0u;
  v90 = 0;
  v91 = 0xFFEFFFFFFFFFFFFFLL;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0;
  v99 = 0xFFEFFFFFFFFFFFFFLL;
  v100 = 0;
  v101 = 0;
  v102 = 0xFFEFFFFFFFFFFFFFLL;
  v103 = 7;
  v104 = 0xFFEFFFFFFFFFFFFFLL;
  v105 = 0;
  v107 = 0;
  v106 = 0u;
  result = sub_1000C2B7C(*(a1 + 8432), &qword_102658A18, &v3);
  if (*&v4 != 0.0)
  {
    *(a1 + 2736) = v4;
  }

  return result;
}

BOOL sub_1006AEA44(uint64_t a1)
{
  if (*(a1 + 2148) == *(a1 + 2146) && *(a1 + 28) == *(a1 + 26))
  {
    if (*sub_1006AED78((a1 + 2144), 0x13uLL))
    {
      v2 = 0;
    }

    else
    {
      v4 = 19;
      do
      {
        v5 = v4;
        if (v4 == 23)
        {
          break;
        }

        ++v4;
      }

      while (!*sub_1006AED78((a1 + 2144), v5 + 1));
      v2 = v5 > 0x16;
    }

    if (*sub_1006AEF74((a1 + 24), 0x13uLL) == 0x200000)
    {
      v6 = 0;
    }

    else
    {
      v6 = 0;
      v9 = 20;
      do
      {
        if (*sub_1006AEF74((a1 + 24), v9 - 1) == 16)
        {
          break;
        }

        if (*sub_1006AEF74((a1 + 24), v9 - 1) == 64)
        {
          break;
        }

        v6 = v9 - 1 > 0x16;
        if (v9 == 24)
        {
          break;
        }

        v10 = sub_1006AEF74((a1 + 24), v9++);
      }

      while (*v10 != 0x200000);
    }

    v7 = *sub_1006AED78((a1 + 2144), 0x13uLL);
    if (v7 == sub_1006AD170(a1))
    {
      v8 = 0;
    }

    else
    {
      v11 = 19;
      do
      {
        v12 = v11;
        if (v11 == 23)
        {
          break;
        }

        ++v11;
        v13 = *sub_1006AED78((a1 + 2144), v12 + 1);
      }

      while (v13 != sub_1006AD170(a1));
      v8 = v12 > 0x16;
    }

    if (qword_1025D43F0 != -1)
    {
      sub_101908390();
    }

    v3 = !v2 && !v6 && !v8;
    v14 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109632;
      v24 = v2;
      v25 = 1024;
      v26 = v6;
      v27 = 1024;
      v28 = v8;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Tier2Smoother,WorkoutPauseFlags,flagLastEpochsUnknown,%d,flagNoPatternInTier1,%d,flagNoCurrentStateInLastEpochs,%d", buf, 0x14u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43F0 != -1)
      {
        sub_101908324();
      }

      v19 = 1024;
      v20 = v6;
      v21 = 1024;
      v22 = v8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43F8, 2, "Tier2Smoother,WorkoutPauseFlags,flagLastEpochsUnknown,%d,flagNoPatternInTier1,%d,flagNoCurrentStateInLastEpochs,%d", &v18, 20, 67109632);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 2, "CLWorkoutClassifier_Type::Confidence CLWorkoutPredictorTier2Smoother::getWorkoutConfidenceForPatternedMotion() const", "%s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  else
  {
    return 0;
  }

  return v3;
}

unsigned __int16 *sub_1006AED78(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10246AFB8);
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
        dispatch_once(&qword_1025D48A0, &stru_10246AFB8);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CMWorkoutType>::operator[](const size_t) const [T = CMWorkoutType]", "%s\n", v10);
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

  return &a1[4 * (v4 - v5) + 4];
}

unsigned __int16 *sub_1006AEF74(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10246AFB8);
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
        dispatch_once(&qword_1025D48A0, &stru_10246AFB8);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CMMotionContext::MotionState>::operator[](const size_t) const [T = CMMotionContext::MotionState]", "%s\n", v10);
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

  return &a1[44 * (v4 - v5) + 4];
}

uint64_t sub_1006AF174(uint64_t a1)
{
  v2 = sub_1006AEA44(a1);
  if (*(a1 + 8440))
  {
    LODWORD(result) = 1;
  }

  else
  {
    LODWORD(result) = sub_1006ADE68(a1, 7);
  }

  if (v2)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006AF1C4(uint64_t a1)
{
  if (*(a1 + 2348) != *(a1 + 2346))
  {
    return 0;
  }

  v2 = 19;
  while (*sub_1006AF234((a1 + 2344), v2) != 6)
  {
    if (++v2 == 24)
    {
      return 0;
    }
  }

  return 1;
}

unsigned __int16 *sub_1006AF234(unsigned __int16 *a1, unint64_t a2)
{
  if (*(a1 + 1) <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      dispatch_once(&qword_1025D48A0, &stru_10246AFB8);
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
        dispatch_once(&qword_1025D48A0, &stru_10246AFB8);
      }

      v9 = *(a1 + 1);
      v12 = 134218240;
      v13 = a2;
      v14 = 1024;
      v15 = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "Assertion failed: i < fCapacity, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/CMQueue.h, line 233,i,%zu,capacity,%u.", &v12, 18);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "const T &CMQueue<CLWorkoutPredictorTier2Smoother::CyclingDescalationEntry>::operator[](const size_t) const [T = CLWorkoutPredictorTier2Smoother::CyclingDescalationEntry]", "%s\n", v10);
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

  return &a1[8 * (v4 - v5) + 4];
}

void *sub_1006AF460(void *result, uint64_t a2)
{
  v2 = result[7];
  if (v2)
  {
    v3 = result[6];
    v4 = v3 + v2;
    v5 = ((v3 + v2) * 0x8618618618618619) >> 64;
    v6 = (v5 + ((v4 - v5) >> 1)) >> 4;
    v7 = result[3];
    if (result[4] == v7)
    {
      v10 = 0;
      v12 = v7 + 8 * v6;
      v13 = 0;
      v14 = v12;
      v15 = 0;
      v9 = (v7 + 8 * (v3 / 0x15));
    }

    else
    {
      v8 = *(v7 + 8 * v6);
      v12 = v7 + 8 * v6;
      v13 = v8 + 192 * (v4 - 21 * v6);
      v14 = v12;
      v15 = v13;
      v9 = (v7 + 8 * (v3 / 0x15));
      v10 = *v9 + 192 * (v3 % 0x15);
    }

    v11[0] = v9;
    v11[1] = v10;
    v11[2] = v9;
    v11[3] = v10;
    sub_10069DF74(v16, a2);
    sub_1006AF5A0(&v12, v11, v16, v17);
    sub_10069A82C(v17);
    return sub_10069A82C(v16);
  }

  return result;
}

void sub_1006AF584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_10069A82C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006AF5A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 24);
  if (v6 != *(a2 + 24))
  {
    v9 = *(a1 + 16);
    do
    {
      if (v6 == *v9)
      {
        v6 = *(v9 - 1) + 4032;
      }

      v10 = *(a3 + 24);
      if (!v10)
      {
        sub_1000CF05C();
      }

      (*(*v10 + 48))(v10, v6 - 192);
      v9 = *(a1 + 16);
      v11 = *(a1 + 24);
      if (v11 == *v9)
      {
        *(a1 + 16) = v9 - 1;
        v11 = *--v9 + 4032;
      }

      v6 = v11 - 192;
      *(a1 + 24) = v6;
    }

    while (*(a2 + 24) != v6);
  }

  return sub_1006AF680(a4, a3);
}

uint64_t sub_1006AF680(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

__n128 sub_1006AF77C(uint64_t a1, uint64_t a2)
{
  *a2 = off_10246AE18;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double sub_1006AF7B4(uint64_t a1, double *a2)
{
  result = *a2;
  if (*a2 >= **(a1 + 8) && result <= **(a1 + 16))
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    result = a2[1] + *v3;
    *v3 = result;
    ++*v4;
  }

  return result;
}

uint64_t sub_1006AF7FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006AFAA0(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_1025D7DE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D7DE8))
  {
    LODWORD(v4) = 0;
    qword_1025D7DD8 = 0;
    unk_1025D7DE0 = 0;
    qword_1025D7DD0 = 0;
    sub_1004579D4(&qword_1025D7DD0, &v4, &v4 + 1, 1uLL);
    __cxa_atexit(sub_10051F310, &qword_1025D7DD0, dword_100000000);
    __cxa_guard_release(&qword_1025D7DE8);
  }

  v13 = 0;
  v4 = xmmword_101C78400;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  v14 = xmmword_101C78400;
  v15 = 0;
  v16 = 0;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0u;
  v22 = xmmword_101C78400;
  v23 = 0;
  v24 = 0;
  v25 = 0xFFEFFFFFFFFFFFFFLL;
  v36 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  v37 = 0u;
  v38 = 0xFFEFFFFFFFFFFFFFLL;
  v39 = 0;
  v40 = 0;
  v45 = 0;
  v46 = 0;
  v51 = 0;
  v43 = 0u;
  memset(v44, 0, sizeof(v44));
  v41 = 0u;
  v42 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  memset(v50, 0, sizeof(v50));
  v52 = 0xFFEFFFFFFFFFFFFFLL;
  v53 = 0u;
  v54 = 0u;
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
  v73 = 0xFFEFFFFFFFFFFFFFLL;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0xFFEFFFFFFFFFFFFFLL;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0xFFEFFFFFFFFFFFFFLL;
  v84 = 0u;
  v85 = 0x80000000800000;
  v86 = 0u;
  v87 = xmmword_101C78410;
  v88 = 0x80000000800000;
  v89 = 0u;
  v90 = 0u;
  v91 = 0;
  v92 = 0xFFEFFFFFFFFFFFFFLL;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0;
  v100 = 0xFFEFFFFFFFFFFFFFLL;
  v101 = 0;
  v102 = 0;
  v103 = 0xFFEFFFFFFFFFFFFFLL;
  v104 = 7;
  v105 = 0xFFEFFFFFFFFFFFFFLL;
  v106 = 0;
  v108 = 0;
  v107 = 0u;
  sub_1000C2B7C(*(a1 + 8432), &qword_1025D7DD0, &v4);
  if (*&v5 != 0.0)
  {
    *(a1 + 2736) = v5;
  }

  return sub_1006AFD64(a1);
}

uint64_t sub_1006AFD64(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_101908390();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Tier2Smoother, resetting pedestrian stop detector FSM", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101908D20();
  }

  return sub_100C4C20C(a1 + 2760, 2u);
}

uint64_t sub_1006AFE08(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_1025D7E08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D7E08))
  {
    LODWORD(v4) = 0;
    qword_1025D7DF8 = 0;
    unk_1025D7E00 = 0;
    qword_1025D7DF0 = 0;
    sub_1004579D4(&qword_1025D7DF0, &v4, &v4 + 1, 1uLL);
    __cxa_atexit(sub_10051F310, &qword_1025D7DF0, dword_100000000);
    __cxa_guard_release(&qword_1025D7E08);
  }

  v13 = 0;
  v4 = xmmword_101C78400;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  v14 = xmmword_101C78400;
  v15 = 0;
  v16 = 0;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0u;
  v22 = xmmword_101C78400;
  v23 = 0;
  v24 = 0;
  v25 = 0xFFEFFFFFFFFFFFFFLL;
  v36 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  v37 = 0u;
  v38 = 0xFFEFFFFFFFFFFFFFLL;
  v39 = 0;
  v40 = 0;
  v45 = 0;
  v46 = 0;
  v51 = 0;
  v43 = 0u;
  memset(v44, 0, sizeof(v44));
  v41 = 0u;
  v42 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  memset(v50, 0, sizeof(v50));
  v52 = 0xFFEFFFFFFFFFFFFFLL;
  v53 = 0u;
  v54 = 0u;
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
  v73 = 0xFFEFFFFFFFFFFFFFLL;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0xFFEFFFFFFFFFFFFFLL;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0xFFEFFFFFFFFFFFFFLL;
  v84 = 0u;
  v85 = 0x80000000800000;
  v86 = 0u;
  v87 = xmmword_101C78410;
  v88 = 0x80000000800000;
  v89 = 0u;
  v90 = 0u;
  v91 = 0;
  v92 = 0xFFEFFFFFFFFFFFFFLL;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0;
  v100 = 0xFFEFFFFFFFFFFFFFLL;
  v101 = 0;
  v102 = 0;
  v103 = 0xFFEFFFFFFFFFFFFFLL;
  v104 = 7;
  v105 = 0xFFEFFFFFFFFFFFFFLL;
  v106 = 0;
  v108 = 0;
  v107 = 0u;
  sub_1000C2B7C(*(a1 + 8432), &qword_1025D7DF0, &v4);
  if (*&v5 != 0.0)
  {
    *(a1 + 2736) = v5;
  }

  return sub_1006B00CC(a1);
}

uint64_t sub_1006B00CC(uint64_t a1)
{
  if (qword_1025D43F0 != -1)
  {
    sub_101908390();
  }

  v2 = qword_1025D43F8;
  if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Tier2Smoother, resetting pedestrian stop detector FSM", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101908DFC();
  }

  return sub_100C4C20C(a1 + 2760, 2u);
}

uint64_t sub_1006B0170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 24);
  if (v6 != *(a2 + 24))
  {
    v9 = *(a1 + 16);
    do
    {
      if (v6 == *v9)
      {
        v6 = *(v9 - 1) + 4096;
      }

      v10 = *(a3 + 24);
      if (!v10)
      {
        sub_1000CF05C();
      }

      (*(*v10 + 48))(v10, v6 - 16);
      v9 = *(a1 + 16);
      v11 = *(a1 + 24);
      if (v11 == *v9)
      {
        *(a1 + 16) = v9 - 1;
        v11 = *--v9 + 4096;
      }

      v6 = v11 - 16;
      *(a1 + 24) = v6;
    }

    while (*(a2 + 24) != v6);
  }

  return sub_1006B0250(a4, a3);
}

uint64_t sub_1006B0250(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

__n128 sub_1006B034C(uint64_t a1, uint64_t a2)
{
  *a2 = off_10246AEA8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

float sub_1006B0384(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 >= *(a1 + 8) && v2 <= *(a1 + 16))
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *&v2 = *(a2 + 12) + *v4;
    *v4 = *&v2;
    ++*v5;
  }

  return *&v2;
}

uint64_t sub_1006B03BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006B0408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 24);
  if (v6 != *(a2 + 24))
  {
    v9 = *(a1 + 16);
    do
    {
      if (v6 == *v9)
      {
        v6 = *(v9 - 1) + 4080;
      }

      v10 = *(a3 + 24);
      if (!v10)
      {
        sub_1000CF05C();
      }

      (*(*v10 + 48))(v10, v6 - 24);
      v9 = *(a1 + 16);
      v11 = *(a1 + 24);
      if (v11 == *v9)
      {
        *(a1 + 16) = v9 - 1;
        v11 = *--v9 + 4080;
      }

      v6 = v11 - 24;
      *(a1 + 24) = v6;
    }

    while (*(a2 + 24) != v6);
  }

  return sub_1006B04E8(a4, a3);
}

uint64_t sub_1006B04E8(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

__n128 sub_1006B05E4(uint64_t a1, uint64_t a2)
{
  *a2 = off_10246AF38;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1006B061C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 >= *(result + 8) && v2 <= *(result + 16))
  {
    ++**(result + 24);
  }

  return result;
}

uint64_t sub_1006B0644(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1006B06BC(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = a1;
  *(v4 - 52) = 2048;
  *(v3 + 14) = v2;
}

void sub_1006B0E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
    sub_100008080(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006B1150(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006B165C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_1006B428C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (v26)
  {
    sub_100008080(v26);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006B6940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, void *__p, uint64_t a42)
{
  sub_1003C93BC(&a35, a36);
  sub_1003C93BC(&a38, a39);
  if (a30)
  {
    sub_100008080(a30);
  }

  if (__p)
  {
    a42 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006B7BAC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

NSDictionary *sub_1006B82B0(double *a1)
{
  v3[0] = @"visitDuration";
  v4[0] = [NSNumber numberWithDouble:a1[4]];
  v3[1] = @"arrivalUncertainty";
  v4[1] = [NSNumber numberWithDouble:a1[5]];
  v3[2] = @"exitUncertainty";
  v4[2] = [NSNumber numberWithDouble:a1[6]];
  v3[3] = @"timeDiffBtwArrivalAndLastRebase";
  v4[3] = [NSNumber numberWithDouble:a1[7]];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
}

void sub_1006B9084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, void *a63)
{
  if (a71 < 0)
  {
    operator delete(__p);
  }

  if (a69 < 0)
  {
    operator delete(a68);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  if (a65 < 0)
  {
    operator delete(a63);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(a72);
  }

  if (SLOBYTE(STACK[0x23F]) < 0)
  {
    operator delete(STACK[0x228]);
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(STACK[0x258]);
  }

  if (SLOBYTE(STACK[0x29F]) < 0)
  {
    operator delete(STACK[0x288]);
  }

  if (SLOBYTE(STACK[0x2CF]) < 0)
  {
    operator delete(STACK[0x2B8]);
  }

  if (*(v72 - 225) < 0)
  {
    operator delete(*(v72 - 248));
  }

  if (*(v72 - 177) < 0)
  {
    operator delete(*(v72 - 200));
  }

  if (*(v72 - 129) < 0)
  {
    operator delete(*(v72 - 152));
  }

  _Unwind_Resume(a1);
}

id sub_1006B92BC(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v14[0] = @"inVisit";
  v15[0] = [NSNumber numberWithBool:*(a1 + 48)];
  v14[1] = @"demAvailableInTrack";
  v15[1] = [NSNumber numberWithBool:*(a1 + 49)];
  v14[2] = @"rebaseSource";
  v15[2] = [NSNumber numberWithInt:*(a1 + 52)];
  v14[3] = @"firstRebaseSinceLocationdStart";
  v15[3] = [NSNumber numberWithBool:*(a1 + 57)];
  v14[4] = @"forcedGPSRecently";
  v15[4] = [NSNumber numberWithBool:*(a1 + 50)];
  v14[5] = @"altitudeError_binned";
  v3 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v3 = *v3;
  }

  v15[5] = [NSString stringWithUTF8String:v3];
  v14[6] = @"timeToFirstRebase_binned";
  v4 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v4 = *v4;
  }

  v15[6] = [NSString stringWithUTF8String:v4];
  v14[7] = @"referenceUncertainty_binned";
  v5 = (a1 + 112);
  if (*(a1 + 135) < 0)
  {
    v5 = *v5;
  }

  v15[7] = [NSString stringWithUTF8String:v5];
  v14[8] = @"uncertainty_binned";
  v6 = (a1 + 136);
  if (*(a1 + 159) < 0)
  {
    v6 = *v6;
  }

  v15[8] = [NSString stringWithUTF8String:v6];
  v14[9] = @"timeSinceVisitEntry_binned";
  v7 = (a1 + 160);
  if (*(a1 + 183) < 0)
  {
    v7 = *v7;
  }

  v15[9] = [NSString stringWithUTF8String:v7];
  v14[10] = @"correction_binned";
  v8 = (a1 + 208);
  if (*(a1 + 231) < 0)
  {
    v8 = *v8;
  }

  v15[10] = [NSString stringWithUTF8String:v8];
  v14[11] = @"distanceSinceLastRebase_binned";
  v9 = (a1 + 232);
  if (*(a1 + 255) < 0)
  {
    v9 = *v9;
  }

  v15[11] = [NSString stringWithUTF8String:v9];
  v14[12] = @"timeSinceLastRebase_binned";
  v10 = (a1 + 184);
  if (*(a1 + 207) < 0)
  {
    v10 = *v10;
  }

  v15[12] = [NSString stringWithUTF8String:v10];
  [v2 setDictionary:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v15, v14, 13)}];
  LODWORD(v11) = *(a1 + 40);
  if (*&v11 != 3.4028e38 && *(a1 + 44) != 3.4028e38)
  {
    *&v11 = (*&v11 * 100.0) / 100.0;
    [v2 setObject:+[NSNumber numberWithFloat:](NSNumber forKeyedSubscript:{"numberWithFloat:", v11), @"latitude"}];
    *&v12 = (*(a1 + 44) * 100.0) / 100.0;
    [v2 setObject:+[NSNumber numberWithFloat:](NSNumber forKeyedSubscript:{"numberWithFloat:", v12), @"longitude"}];
  }

  if ([*(a1 + 32) isIHAAuthorized])
  {
    [v2 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", *(a1 + 56)), @"inOutdoorWorkout"}];
  }

  return v2;
}

void sub_1006B9A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (a69 < 0)
  {
    operator delete(a68);
  }

  if (a67 < 0)
  {
    operator delete(a66);
  }

  if (a65 < 0)
  {
    operator delete(a64);
  }

  if (*(v69 - 97) < 0)
  {
    operator delete(*(v69 - 120));
  }

  if (*(v69 - 49) < 0)
  {
    operator delete(*(v69 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_1006B9BB0()
{
  v1 = *(v0 - 144);
  if (v1)
  {
    *(v0 - 136) = v1;
    JUMPOUT(0x1006B9B8CLL);
  }

  JUMPOUT(0x1006B9B90);
}

void sub_1006B9BCC()
{
  v1 = *(v0 - 96);
  if (v1)
  {
    *(v0 - 88) = v1;
    JUMPOUT(0x1006B9B9CLL);
  }

  JUMPOUT(0x1006B9BA0);
}

NSDictionary *sub_1006B9BE0(uint64_t a1)
{
  v10[0] = @"duration_binned";
  v2 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v2 = *v2;
  }

  v11[0] = [NSString stringWithUTF8String:v2];
  v10[1] = @"uncertaintyAtEntry_binned";
  v3 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v3 = *v3;
  }

  v11[1] = [NSString stringWithUTF8String:v3];
  v10[2] = @"uncertaintyAtRebase_binned";
  v4 = (a1 + 64);
  if (*(a1 + 87) < 0)
  {
    v4 = *v4;
  }

  v11[2] = [NSString stringWithUTF8String:v4];
  v10[3] = @"timeFromEnterToRebase_binned";
  v5 = (a1 + 112);
  if (*(a1 + 135) < 0)
  {
    v5 = *v5;
  }

  v11[3] = [NSString stringWithUTF8String:v5];
  v10[4] = @"correctionAtRebase_binned";
  v6 = (a1 + 184);
  if (*(a1 + 207) < 0)
  {
    v6 = *v6;
  }

  v11[4] = [NSString stringWithUTF8String:v6];
  v10[5] = @"altitudeErrorAtRebase_binned";
  v7 = (a1 + 136);
  if (*(a1 + 159) < 0)
  {
    v7 = *v7;
  }

  v11[5] = [NSString stringWithUTF8String:v7];
  v10[6] = @"referenceUncertaintyAtRebase_binned";
  v8 = (a1 + 160);
  if (*(a1 + 183) < 0)
  {
    v8 = *v8;
  }

  v11[6] = [NSString stringWithUTF8String:v8];
  v10[7] = @"rebaseSource";
  v11[7] = [NSNumber numberWithInt:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:8];
}

uint64_t sub_1006B9D9C(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 8);
  *a1 = v4;
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
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v7;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v8 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v8;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v9;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v10 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 144) = v10;
  *(a2 + 167) = 0;
  *(a2 + 144) = 0;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v11 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a1 + 168) = v11;
  *(a2 + 191) = 0;
  *(a2 + 168) = 0;
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  v12 = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 192) = v12;
  *(a2 + 215) = 0;
  *(a2 + 192) = 0;
  return a1;
}

uint64_t *sub_1006BA434(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_1004BF97C(v6, v10);
    }

    sub_10028C64C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t sub_1006BA560(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 8);
  *a1 = v4;
  if (*(a2 + 47) < 0)
  {
    sub_100007244((a1 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100007244((a1 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100007244((a1 + 72), *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100007244((a1 + 96), *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(a1 + 112) = *(a2 + 14);
    *(a1 + 96) = v8;
  }

  if (*(a2 + 143) < 0)
  {
    sub_100007244((a1 + 120), *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 17);
    *(a1 + 120) = v9;
  }

  if (*(a2 + 167) < 0)
  {
    sub_100007244((a1 + 144), *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v10 = a2[9];
    *(a1 + 160) = *(a2 + 20);
    *(a1 + 144) = v10;
  }

  if (*(a2 + 191) < 0)
  {
    sub_100007244((a1 + 168), *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v11 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 23);
    *(a1 + 168) = v11;
  }

  if (*(a2 + 215) < 0)
  {
    sub_100007244((a1 + 192), *(a2 + 24), *(a2 + 25));
  }

  else
  {
    v12 = a2[12];
    *(a1 + 208) = *(a2 + 26);
    *(a1 + 192) = v12;
  }

  return a1;
}

void sub_1006BA6D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006BA784(uint64_t a1)
{
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_1006BA828(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100007244((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100007244((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    sub_100007244((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  if (*(a2 + 103) < 0)
  {
    sub_100007244((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v7;
  }

  if (*(a2 + 127) < 0)
  {
    sub_100007244((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v8 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v8;
  }

  if (*(a2 + 151) < 0)
  {
    sub_100007244((a1 + 128), *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v9 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 128) = v9;
  }

  if (*(a2 + 175) < 0)
  {
    sub_100007244((a1 + 152), *(a2 + 152), *(a2 + 160));
  }

  else
  {
    v10 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v10;
  }

  return a1;
}

void sub_1006BA97C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006BAA10(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1006BAAA4(uint64_t a1)
{
  *(a1 + 7) = 0;
  *a1 = 0;
  *(a1 + 12) = -10;
  *(a1 + 16) = 0;
  sub_10000EC00((a1 + 24), "NULL");
  sub_10000EC00((a1 + 48), "NULL");
  sub_10000EC00((a1 + 72), "NULL");
  sub_10000EC00((a1 + 96), "NULL");
  sub_10000EC00((a1 + 120), "NULL");
  sub_10000EC00((a1 + 144), "NULL");
  sub_10000EC00((a1 + 168), "NULL");
  sub_10000EC00((a1 + 192), "NULL");
  return a1;
}

void sub_1006BAB5C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void sub_1006BAC08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 703) < 0)
    {
      operator delete(*(a2 + 680));
    }

    operator delete();
  }
}

uint64_t *sub_1006BAC64(uint64_t a1, int *a2, _DWORD *a3, uint64_t a4)
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
      v7 = *(v4 + 32);
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

uint64_t sub_1006BAD48()
{
  sub_10000EC00(qword_102658AA8, "VO2MaxPowerBudgetEstimatorLastExtendedBudgetAllotmentReason");
  __cxa_atexit(&std::string::~string, qword_102658AA8, dword_100000000);
  qword_102658AC0 = 0x4039000000000000;
  *v1 = xmmword_101C88B0C;
  *&v1[16] = unk_101C88B1C;
  v2 = xmmword_101C88B2C;
  qword_102658AD0 = 0;
  unk_102658AD8 = 0;
  qword_102658AC8 = 0;
  sub_1003F6D44(&qword_102658AC8, v1, v3, 0xCuLL);
  __cxa_atexit(sub_1003F5F88, &qword_102658AC8, dword_100000000);
  qword_102658AE8 = 0;
  unk_102658AF0 = 0;
  qword_102658AE0 = 0;
  sub_10038EB38(&qword_102658AE0, qword_102658AC8, qword_102658AD0, (qword_102658AD0 - qword_102658AC8) >> 2);
  __cxa_atexit(sub_1003F5F88, &qword_102658AE0, dword_100000000);
  *v1 = xmmword_101C88B3C;
  *&v1[16] = unk_101C88B4C;
  LODWORD(v2) = 1150681088;
  qword_102658B00 = 0;
  unk_102658B08 = 0;
  qword_102658AF8 = 0;
  sub_1003F6D44(&qword_102658AF8, v1, &v2 + 1, 9uLL);
  __cxa_atexit(sub_1003F5F88, &qword_102658AF8, dword_100000000);
  *v1 = xmmword_101C88B60;
  *&v1[12] = *(&xmmword_101C88B60 + 12);
  qword_102658B18 = 0;
  unk_102658B20 = 0;
  qword_102658B10 = 0;
  sub_1003F6D44(&qword_102658B10, v1, &v1[28], 7uLL);
  __cxa_atexit(sub_1003F5F88, &qword_102658B10, dword_100000000);
  v2 = xmmword_101C88B9C;
  *v3 = unk_101C88BAC;
  *&v3[12] = unk_101C88BB8;
  *v1 = xmmword_101C88B7C;
  *&v1[16] = unk_101C88B8C;
  qword_102658B30 = 0;
  unk_102658B38 = 0;
  qword_102658B28 = 0;
  sub_1003F6D44(&qword_102658B28, v1, v4, 0x13uLL);
  __cxa_atexit(sub_1003F5F88, &qword_102658B28, dword_100000000);
  *v1 = xmmword_101C88BC8;
  *&v1[16] = unk_101C88BD8;
  v2 = xmmword_101C88BE8;
  *v3 = 0x48F4240048435000;
  qword_102658B48 = 0;
  unk_102658B50 = 0;
  qword_102658B40 = 0;
  sub_1003F6D44(&qword_102658B40, v1, &v3[8], 0xEuLL);
  __cxa_atexit(sub_1003F5F88, &qword_102658B40, dword_100000000);
  *v1 = xmmword_101C88C00;
  *&v1[16] = unk_101C88C10;
  v2 = xmmword_101C88C20;
  qword_102658B60 = 0;
  unk_102658B68 = 0;
  qword_102658B58 = 0;
  sub_1003F6D44(&qword_102658B58, v1, v3, 0xCuLL);
  return __cxa_atexit(sub_1003F5F88, &qword_102658B58, dword_100000000);
}

unsigned __int8 *sub_1006BB010(unsigned __int8 *a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  v4 = 0x3FF99999A0000000;
  sub_10183A3AC(a1 + 40, "FallUserMaxMets", &v4, 0);
  return a1;
}

void sub_1006BB078(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006BB09C(uint64_t a1, double *a2, double a3)
{
  if (*(a1 + 40) == 1)
  {
    *a2 = *(a1 + 48);
    return 1;
  }

  else
  {
    __p = 0;
    v16 = 0;
    v17 = 0;
    sub_100487818((a1 + 8), &__p);
    v6 = __p;
    if (__p == v16)
    {
      goto LABEL_13;
    }

    v7 = 0.0;
    v8 = __p;
    do
    {
      v7 = (v8[1] + v7);
      v8 += 2;
    }

    while (v8 != v16);
    v9 = v7;
    if (v7 < 1 || __p == v16)
    {
LABEL_13:
      v4 = 0;
      *a2 = NAN;
    }

    else
    {
      v11 = 0;
      while (1)
      {
        v11 += *(v6 + 1);
        if (v11 / v9 >= a3)
        {
          break;
        }

        v6 += 2;
        if (v6 == v16)
        {
          goto LABEL_13;
        }
      }

      *a2 = *v6;
      if (qword_1025D4330 != -1)
      {
        sub_10190A370();
      }

      v13 = qword_1025D4338;
      v4 = 1;
      if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_INFO))
      {
        v14 = *a2;
        *buf = 68289539;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 2049;
        v23 = v9;
        v24 = 2049;
        v25 = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:MaxMETs,MET Minutes, total count:%{private}ld, Max. METs:%{private}f}", buf, 0x26u);
      }
    }

    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }
  }

  return v4;
}

uint64_t sub_1006BB288(uint64_t a1)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100487818((a1 + 8), &v5);
  if (v5 == v6)
  {
    v3 = 0;
    if (!v5)
    {
      return v3;
    }

    goto LABEL_5;
  }

  v1 = 0.0;
  v2 = v5;
  do
  {
    v3 = (*(v2 + 1) + v1);
    v1 = v3;
    v2 += 2;
  }

  while (v2 != v6);
  if (v5)
  {
LABEL_5:
    v6 = v5;
    operator delete(v5);
  }

  return v3;
}

void sub_1006BB30C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1006BB328(uint64_t a1, double a2, double a3)
{
  Current = CFAbsoluteTimeGetCurrent();
  v7 = *(a1 + 8);
  v8 = Current + -28800.0;
  if (v7 <= Current + -28800.0)
  {
    v9 = Current + -86400.0;
    if (v7 >= v9)
    {
      v10 = *(a1 + 8);
    }

    else
    {
      v10 = v9;
    }

    v11 = v9 + 28800.0;
    if (v7 + 28800.0 >= v11)
    {
      v12 = v7 + 28800.0;
    }

    else
    {
      v12 = v11;
    }

    if (qword_1025D4330 != -1)
    {
      sub_10190A398();
    }

    v13 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289539;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2049;
      v22 = v10;
      v23 = 2049;
      v24 = v12;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:MaxMETs,Setting query range, start_s:%{private}.09f, end_s:%{private}.09f}", buf, 0x26u);
    }

    v14 = *a1;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1006BB4DC;
    v16[3] = &unk_10246B0A0;
    v16[4] = a1;
    *&v16[5] = v10;
    *&v16[6] = v12;
    *&v16[7] = a2;
    *&v16[8] = a3;
    [v14 queryMetMinutesInTimeRange:v16 withReply:{v10, v12}];
  }

  return v7 <= v8;
}

void sub_1006BB4DC(double *a1, void *a2, int a3)
{
  if (a3 == 100)
  {
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];
    v6 = a1[8];
    v7 = (*(a1 + 4) + 8);

    sub_100487D8C(v7, a2, v3, v4, v5, v6);
  }

  else
  {
    if (qword_1025D4330 != -1)
    {
      sub_10190A398();
    }

    v9 = qword_1025D4338;
    if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_ERROR))
    {
      v11 = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = a3;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:MaxMETs,query,, error:%{public}d}", &v11, 0x18u);
      if (qword_1025D4330 != -1)
      {
        sub_10190A370();
      }
    }

    v10 = qword_1025D4338;
    if (os_signpost_enabled(qword_1025D4338))
    {
      v11 = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 1026;
      v16 = a3;
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MaxMETs,query,", "{msg%{public}.0s:MaxMETs,query,, error:%{public}d}", &v11, 0x18u);
    }
  }
}

double sub_1006BB754(uint64_t a1, double **a2)
{
  v2 = *a2;
  result = **a2;
  v4 = 0.0;
  while (v2 != a2[1])
  {
    v4 = v4 + v2[2];
    v2 += 3;
  }

  return result;
}

uint64_t sub_1006BB780(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1006BB854(uint64_t a1, double **a2)
{
  v2 = a2[1];
  result = **a2;
  v4 = 0.0;
  if (*a2 != v2)
  {
    v5 = *a2;
    do
    {
      v4 = v4 + v5[2];
      v5 += 3;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_1006BB8A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006BB988(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006BBA74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

NSDictionary *sub_1006BBC4C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10[0] = @"requester";
  v3 = (v2 + 120);
  if (*(v2 + 143) < 0)
  {
    v3 = *v3;
  }

  v11[0] = [NSString stringWithUTF8String:v3];
  v10[1] = @"type";
  v4 = *(v2 + 112) - 1;
  if (v4 > 6)
  {
    v5 = "none";
  }

  else
  {
    v5 = off_10246B3C8[v4];
  }

  v11[1] = [NSString stringWithUTF8String:v5];
  v10[2] = @"result";
  v11[2] = [NSString stringWithUTF8String:sub_100185818(*(a1 + 72))];
  v10[3] = @"fix";
  v6 = *(v2 + 104);
  if (v6 == 2)
  {
    v7 = "strong";
  }

  else if (v6)
  {
    v7 = "weak";
  }

  else if (*(v2 + 108))
  {
    v7 = "empty";
  }

  else
  {
    v7 = "unknown";
  }

  v11[3] = [NSString stringWithUTF8String:v7];
  v10[4] = @"ttff";
  v11[4] = [NSString stringWithUTF8String:*(a1 + 40)];
  v10[5] = @"ttsf";
  v11[5] = [NSString stringWithUTF8String:*(a1 + 48)];
  v10[6] = @"duration";
  v11[6] = [NSString stringWithUTF8String:*(a1 + 56)];
  v10[7] = @"interval";
  v11[7] = [NSString stringWithUTF8String:*(a1 + 64)];
  v10[8] = @"als";
  v8 = [NSNumber numberWithBool:*(v2 + 109)];
  v10[9] = @"daily";
  v11[8] = v8;
  v11[9] = &off_10254EE58;
  return [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:10];
}

double sub_1006BBE70(uint64_t a1, double *a2)
{
  result = *a2;
  *(a1 + 40) = *a2;
  return result;
}

uint64_t sub_1006BBEE8(uint64_t a1, char *a2, uint64_t a3, double a4)
{
  v17 = a4;
  sub_1006525CC(a1, a3, &v17);
  *a1 = off_10246B440;
  sub_10018D404(a1 + 232);
  sub_10000EC00((a1 + 272), a2);
  sub_10000EC00((a1 + 296), "");
  if (*(a3 + 8) == 1)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10190A748();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "read only database - not creating bounding boxes, tableName, %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190A770(buf);
      v18 = 136315138;
      v19 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "read only database - not creating bounding boxes, tableName, %s", &v18);
      v9 = v8;
      sub_100152C7C("Generic", 1, 0, 2, "CLWifiLocationDatabase::CLWifiLocationDatabase(const char *, const CLSqliteDatabase::SqliteProperties &, double)", "%s\n", v8);
      goto LABEL_24;
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10190A748();
    }

    v10 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = a2;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "platform does not support WiFi location monitoring - not creating bounding boxes, tableName, %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190A770(buf);
      v18 = 136315138;
      v19 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "platform does not support WiFi location monitoring - not creating bounding boxes, tableName, %s", &v18);
      v9 = v14;
      sub_100152C7C("Generic", 1, 0, 2, "CLWifiLocationDatabase::CLWifiLocationDatabase(const char *, const CLSqliteDatabase::SqliteProperties &, double)", "%s\n", v14);
LABEL_24:
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  if (sub_100023B68(a1 + 64))
  {
    *buf = off_10246B458;
    v11 = (a1 + 272);
    if (*(a1 + 295) < 0)
    {
      v11 = *(a1 + 272);
    }

    sub_100608EC8(a1 + 64, v11, &qword_102658C08, buf, 0);
    sub_100652718(a1);
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_10190A7B4();
    }

    v12 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136380675;
      *&buf[4] = "CLWifiLocationDatabase";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "#Warning Database is not valid; not initializing in %{private}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190A7DC(buf);
      v18 = 136380675;
      v19 = "CLWifiLocationDatabase";
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4858, 0, "#Warning Database is not valid; not initializing in %{private}s", &v18, 12);
      v16 = v15;
      sub_100152C7C("Generic", 1, 0, 2, "CLWifiLocationDatabase::CLWifiLocationDatabase(const char *, const CLSqliteDatabase::SqliteProperties &, double)", "%s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  sub_1006BC394(a1);
  return a1;
}

void sub_1006BC338(_Unwind_Exception *a1)
{
  if (*(v1 + 319) < 0)
  {
    operator delete(*(v1 + 296));
  }

  if (*(v1 + 295) < 0)
  {
    operator delete(*v2);
  }

  sub_1006526BC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1006BC394(uint64_t a1)
{
  sub_10003848C(v46);
  v2 = sub_100038730(&v47, "SELECT ", 7);
  v3 = sub_100038730(v2, "MAC", 3);
  v4 = sub_100038730(v3, " , ", 3);
  v5 = strlen("Latitude");
  v6 = sub_100038730(v4, "Latitude", v5);
  v7 = sub_100038730(v6, " , ", 3);
  v8 = strlen("Longitude");
  v9 = sub_100038730(v7, "Longitude", v8);
  v10 = sub_100038730(v9, " , ", 3);
  v11 = strlen("Altitude");
  v12 = sub_100038730(v10, "Altitude", v11);
  v13 = sub_100038730(v12, " , ", 3);
  v14 = strlen("HorizontalAccuracy");
  v15 = sub_100038730(v13, "HorizontalAccuracy", v14);
  v16 = sub_100038730(v15, " , ", 3);
  v17 = strlen("VerticalAccuracy");
  v18 = sub_100038730(v16, "VerticalAccuracy", v17);
  v19 = sub_100038730(v18, " , ", 3);
  v20 = strlen("Score");
  v21 = sub_100038730(v19, "Score", v20);
  v22 = sub_100038730(v21, " , ", 3);
  v23 = strlen("Reach");
  v24 = sub_100038730(v22, "Reach", v23);
  v25 = sub_100038730(v24, " , ", 3);
  v26 = sub_100038730(v25, "Channel", 7);
  v27 = sub_100038730(v26, " , ", 3);
  v28 = sub_100038730(v27, "InfoMask", 8);
  v29 = sub_100038730(v28, " , ", 3);
  v30 = strlen("Timestamp");
  sub_100038730(v29, "Timestamp", v30);
  if ((*(a1 + 16) & 1) == 0)
  {
    v31 = sub_100038730(&v47, " , ", 3);
    v32 = strlen("ZaxisHarvestTraces");
    sub_100038730(v31, "ZaxisHarvestTraces", v32);
    v33 = sub_100038730(&v47, " , ", 3);
    sub_100038730(v33, "AlsQueryTimestamp", 17);
  }

  v34 = sub_100038730(&v47, " FROM ", 6);
  v35 = *(a1 + 295);
  if (v35 >= 0)
  {
    v36 = a1 + 272;
  }

  else
  {
    v36 = *(a1 + 272);
  }

  if (v35 >= 0)
  {
    v37 = *(a1 + 295);
  }

  else
  {
    v37 = *(a1 + 280);
  }

  v38 = sub_100038730(v34, v36, v37);
  v39 = sub_100038730(v38, " WHERE ", 7);
  v40 = sub_100038730(v39, "MAC", 3);
  sub_100038730(v40, " = ? ", 5);
  sub_100073518(v46, &v44);
  v41 = (a1 + 296);
  if (*(a1 + 319) < 0)
  {
    operator delete(*v41);
  }

  *v41 = v44;
  *(a1 + 312) = v45;
  v47 = v42;
  if (v50 < 0)
  {
    operator delete(v49[7].__locale_);
  }

  std::locale::~locale(v49);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1006BC824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10026C504(va);
  _Unwind_Resume(a1);
}

char *sub_1006BC840@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[295] < 0)
  {
    return sub_100007244(a2, *(result + 34), *(result + 35));
  }

  *a2 = *(result + 17);
  *(a2 + 16) = *(result + 36);
  return result;
}

void sub_1006BC868(uint64_t a1, uint64_t a2)
{
  if (sub_10018E854(a1))
  {
    sub_10003848C(buf);
    v3 = sub_100038730(&v60, "INSERT OR REPLACE INTO ", 23);
    v4 = (a1 + 272);
    if (*(a1 + 295) < 0)
    {
      v4 = *v4;
    }

    v5 = strlen(v4);
    v6 = sub_100038730(v3, v4, v5);
    v7 = sub_100038730(v6, "(", 3);
    v8 = sub_100038730(v7, "MAC", 3);
    v9 = sub_100038730(v8, ",", 1);
    v10 = strlen("Timestamp");
    v11 = sub_100038730(v9, "Timestamp", v10);
    v12 = sub_100038730(v11, ",", 1);
    v13 = strlen("Latitude");
    v14 = sub_100038730(v12, "Latitude", v13);
    v15 = sub_100038730(v14, ",", 1);
    v16 = strlen("Longitude");
    v17 = sub_100038730(v15, "Longitude", v16);
    v18 = sub_100038730(v17, ",", 1);
    v19 = strlen("HorizontalAccuracy");
    v20 = sub_100038730(v18, "HorizontalAccuracy", v19);
    v21 = sub_100038730(v20, ",", 1);
    v22 = strlen("Altitude");
    v23 = sub_100038730(v21, "Altitude", v22);
    v24 = sub_100038730(v23, ",", 1);
    v25 = strlen("VerticalAccuracy");
    v26 = sub_100038730(v24, "VerticalAccuracy", v25);
    v27 = sub_100038730(v26, ",", 1);
    v28 = strlen("Speed");
    v29 = sub_100038730(v27, "Speed", v28);
    v30 = sub_100038730(v29, ",", 1);
    v31 = strlen("Course");
    v32 = sub_100038730(v30, "Course", v31);
    v33 = sub_100038730(v32, ",", 1);
    v34 = strlen("Confidence");
    v35 = sub_100038730(v33, "Confidence", v34);
    v36 = sub_100038730(v35, ",", 1);
    v37 = strlen("Score");
    v38 = sub_100038730(v36, "Score", v37);
    v39 = sub_100038730(v38, ",", 1);
    v40 = strlen("Reach");
    v41 = sub_100038730(v39, "Reach", v40);
    v42 = sub_100038730(v41, ",", 1);
    v43 = sub_100038730(v42, "Channel", 7);
    v44 = sub_100038730(v43, ",", 1);
    v45 = sub_100038730(v44, "FenceForeignKey", 15);
    v46 = sub_100038730(v45, ",", 1);
    v47 = sub_100038730(v46, "InfoMask", 8);
    v48 = sub_100038730(v47, ",", 1);
    v49 = strlen("ZaxisHarvestTraces");
    v50 = sub_100038730(v48, "ZaxisHarvestTraces", v49);
    v51 = sub_100038730(v50, ",", 1);
    v52 = sub_100038730(v51, "AlsQueryTimestamp", 17);
    v53 = sub_100038730(v52, ") ", 3);
    v54 = sub_100038730(v53, " VALUES ", 8);
    sub_100038730(v54, "(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);", 36);
    sub_100073518(buf, __p);
    if (v58 >= 0)
    {
      v55 = __p;
    }

    else
    {
      v55 = __p[0];
    }

    sub_1000388D8(a1 + 64, v55);
  }

  if (qword_1025D4850 != -1)
  {
    sub_10190A820();
  }

  v56 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call save() without a backing database in CLWifiLocationDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190A834();
  }
}

void sub_1006BD09C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  __cxa_free_exception(v16);
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  sub_10026C504(&a16);
  _Unwind_Resume(a1);
}

void sub_1006BD120(std::runtime_error *this)
{
  this->__vftable = off_10246B4D0;
  if (SHIBYTE(this[4].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  if (SHIBYTE(this[2].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::runtime_error::~runtime_error(this);
}

void sub_1006BD190(uint64_t a1, unint64_t a2)
{
  if (sub_10018E854(a1))
  {
    if ((a2 & 0x8000000000000000) == 0 && sub_10019A9B8(a1) > a2)
    {
      __src = 0;
      v38 = 0;
      v39 = 0;
      *(&v28.__r_.__value_.__s + 23) = 18;
      strcpy(&v28, "SELECT ROWID FROM ");
      v4 = (a1 + 272);
      if (*(a1 + 295) < 0)
      {
        v4 = *(a1 + 272);
      }

      v5 = strlen(v4);
      v6 = std::string::append(&v28, v4, v5);
      v7 = *&v6->__r_.__value_.__l.__data_;
      v29.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
      *&v29.__r_.__value_.__l.__data_ = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      v8 = std::string::append(&v29, " WHERE ", 7uLL);
      v9 = *&v8->__r_.__value_.__l.__data_;
      v30.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v30.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = std::string::append(&v30, "FenceForeignKey", 0xFuLL);
      v11 = *&v10->__r_.__value_.__l.__data_;
      v31.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
      *&v31.__r_.__value_.__l.__data_ = v11;
      v10->__r_.__value_.__l.__size_ = 0;
      v10->__r_.__value_.__r.__words[2] = 0;
      v10->__r_.__value_.__r.__words[0] = 0;
      v12 = std::string::append(&v31, " =", 2uLL);
      v13 = *&v12->__r_.__value_.__l.__data_;
      v32.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v32.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v27, -1);
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v27;
      }

      else
      {
        v14 = v27.__r_.__value_.__r.__words[0];
      }

      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v27.__r_.__value_.__l.__size_;
      }

      v16 = std::string::append(&v32, v14, size);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v33.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v33.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v18 = std::string::append(&v33, " ORDER BY ", 0xAuLL);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      v20 = strlen("Timestamp");
      v21 = std::string::append(&v34, "Timestamp", v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      *&v40[16] = *(&v21->__r_.__value_.__l + 2);
      *v40 = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      v23 = std::string::append(v40, " ASC LIMIT ?", 0xCuLL);
      v24 = *&v23->__r_.__value_.__l.__data_;
      v36 = v23->__r_.__value_.__r.__words[2];
      __p = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      if ((v40[23] & 0x80000000) != 0)
      {
        operator delete(*v40);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }

      if (v36 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      sub_1000388D8(a1 + 64, p_p);
    }
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_10190A820();
    }

    v26 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
    {
      *v40 = 0;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call truncatePastLimit() without a backing database in CLWifiLocationDatabase!", v40, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190A918();
    }
  }
}

void sub_1006BDD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49)
{
  if (v49)
  {
    (*(*v49 + 8))(v49, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a48 < 0)
  {
    operator delete(__p);
  }

  if (a49)
  {
    operator delete(a49);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006BDEB8(uint64_t a1, sqlite3_int64 a2, uint64_t a3)
{
  if (sub_10018E854(a1))
  {
    *(&v22.__r_.__value_.__s + 23) = 7;
    strcpy(&v22, "SELECT ");
    sub_1006BE2AC(__p);
    if ((v21 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v21 & 0x80u) == 0)
    {
      v5 = v21;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = std::string::append(&v22, v4, v5);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v23, " FROM ", 6uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = *(a1 + 295);
    if (v10 >= 0)
    {
      v11 = (a1 + 272);
    }

    else
    {
      v11 = *(a1 + 272);
    }

    if (v10 >= 0)
    {
      v12 = *(a1 + 295);
    }

    else
    {
      v12 = *(a1 + 280);
    }

    v13 = std::string::append(&v24, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v25, " WHERE ROWID=?", 0xEuLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v27 = v15->__r_.__value_.__r.__words[2];
    *buf = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (v27 >= 0)
    {
      v17 = buf;
    }

    else
    {
      v17 = *buf;
    }

    sub_1000388D8(a1 + 64, v17);
  }

  if (qword_1025D4850 != -1)
  {
    sub_10190A820();
  }

  v18 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call getLocation() without a backing database in CLWifiLocationDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190AB4C();
  }

  return 0;
}

void sub_1006BE1E0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v35 = *(v33 - 96);
  *(v33 - 96) = 0;
  if (v35)
  {
    (*(*v35 + 8))(v35, a2, a3, a4, a5, a6, a7, a8);
  }

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_1006BE2AC(uint64_t a1@<X8>)
{
  v2 = 0;
  v13[0] = "MAC";
  v13[1] = "Channel";
  v13[2] = "InfoMask";
  v13[3] = "Score";
  v13[4] = "Reach";
  v13[5] = "FenceForeignKey";
  v13[6] = "ZaxisHarvestTraces";
  v13[7] = "AlsQueryTimestamp";
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  do
  {
    v3 = *(a1 + 23);
    if ((v3 & 0x80u) != 0)
    {
      v3 = *(a1 + 8);
    }

    if (v3)
    {
      *(&v10.__r_.__value_.__s + 23) = 2;
      strcpy(&v10, ", ");
      v4 = strlen(v13[v2]);
      v5 = std::string::append(&v10, v13[v2], v4);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v12 = v5->__r_.__value_.__r.__words[2];
      *__p = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      if (v12 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      if (v12 >= 0)
      {
        v8 = HIBYTE(v12);
      }

      else
      {
        v8 = __p[1];
      }

      std::string::append(a1, v7, v8);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v9 = strlen(v13[v2]);
      std::string::append(a1, v13[v2], v9);
    }

    ++v2;
  }

  while (v2 != 8);
}

void sub_1006BE454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006BE4A0(uint64_t a1, int *a2, uint64_t a3)
{
  if (sub_10018E854(a1))
  {
    operator new();
  }

  if (qword_1025D4850 != -1)
  {
    sub_10190A820();
  }

  v3 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call setLocation() without a backing database in CLWifiLocationDatabase!", &buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190AC30();
  }

  return 0;
}

void sub_1006BE89C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (v40)
  {
    (*(*v40 + 8))(v40, a2, a3, a4, a5, a6, a7, a8);
  }

  if (*(v41 - 57) < 0)
  {
    operator delete(*(v41 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006BE984(uint64_t a1, uint64_t a2)
{
  if (sub_10018E854(a1))
  {
    sub_10003848C(buf);
    v3 = sub_100038730(&v22, "UPDATE OR IGNORE ", 17);
    v4 = (a1 + 272);
    if (*(a1 + 295) < 0)
    {
      v4 = *v4;
    }

    v5 = strlen(v4);
    v6 = sub_100038730(v3, v4, v5);
    v7 = sub_100038730(v6, " SET ", 5);
    v8 = strlen("Score");
    v9 = sub_100038730(v7, "Score", v8);
    v10 = sub_100038730(v9, " = ", 3);
    v11 = strlen("Score");
    v12 = sub_100038730(v10, "Score", v11);
    v13 = sub_100038730(v12, " / 2.0 ", 7);
    v14 = sub_100038730(v13, " WHERE ", 7);
    v15 = sub_100038730(v14, "MAC", 3);
    sub_100038730(v15, " = ? ", 5);
    sub_100073518(buf, __p);
    if (v20 >= 0)
    {
      v16 = __p;
    }

    else
    {
      v16 = __p[0];
    }

    sub_1000388D8(a1 + 64, v16);
  }

  if (qword_1025D4850 != -1)
  {
    sub_10190A820();
  }

  v17 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call downgradeAPByScore() without a backing database in CLWifiLocationDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190AD14();
  }

  return 0;
}

void sub_1006BED18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a16);
  _Unwind_Resume(a1);
}

void sub_1006BED5C(uint64_t a1@<X0>, const void **a5@<X8>)
{
  if (sub_10018E854(a1))
  {
    sub_10003848C(v52);
    v11 = sub_100038730(&v53, "SELECT ", 7);
    v12 = sub_100038730(v11, "MAC", 3);
    v13 = sub_100038730(v12, " , ", 3);
    v14 = strlen("Latitude");
    v15 = sub_100038730(v13, "Latitude", v14);
    v16 = sub_100038730(v15, " , ", 3);
    v17 = strlen("Longitude");
    v18 = sub_100038730(v16, "Longitude", v17);
    v19 = sub_100038730(v18, " , ", 3);
    v20 = strlen("Altitude");
    v21 = sub_100038730(v19, "Altitude", v20);
    v22 = sub_100038730(v21, " , ", 3);
    v23 = strlen("HorizontalAccuracy");
    v24 = sub_100038730(v22, "HorizontalAccuracy", v23);
    v25 = sub_100038730(v24, " , ", 3);
    v26 = strlen("VerticalAccuracy");
    v27 = sub_100038730(v25, "VerticalAccuracy", v26);
    v28 = sub_100038730(v27, " , ", 3);
    v29 = strlen("Score");
    v30 = sub_100038730(v28, "Score", v29);
    v31 = sub_100038730(v30, " , ", 3);
    v32 = strlen("Reach");
    v33 = sub_100038730(v31, "Reach", v32);
    v34 = sub_100038730(v33, " , ", 3);
    v35 = sub_100038730(v34, "Channel", 7);
    v36 = sub_100038730(v35, " , ", 3);
    v37 = sub_100038730(v36, "InfoMask", 8);
    v38 = sub_100038730(v37, " , ", 3);
    v39 = strlen("Timestamp");
    v40 = sub_100038730(v38, "Timestamp", v39);
    v41 = sub_100038730(v40, " FROM ", 6);
    v42 = *(a1 + 295);
    if (v42 >= 0)
    {
      v43 = a1 + 272;
    }

    else
    {
      v43 = *(a1 + 272);
    }

    if (v42 >= 0)
    {
      v44 = *(a1 + 295);
    }

    else
    {
      v44 = *(a1 + 280);
    }

    v45 = sub_100038730(v41, v43, v44);
    v46 = sub_100038730(v45, " WHERE ", 7);
    v47 = sub_100038730(v46, "FenceForeignKey", 15);
    v48 = sub_100038730(v47, " =?", 3);
    sub_100038730(v48, " ORDER BY Score DESC LIMIT ", 27);
    v49 = std::ostream::operator<<();
    sub_100038730(v49, ";", 1);
    sub_100073518(v52, &__p);
    if (v55 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    sub_1000388D8(a1 + 64, p_p);
  }

  if (qword_1025D4850 != -1)
  {
    sub_10190A820();
  }

  v51 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p) = 0;
    _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call getNearbyWifisForFence() without a backing database in CLWifiLocationDatabase!", &__p, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190ADF8();
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
}

void sub_1006BFA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  v22 = *v19;
  if (*v19)
  {
    *(v19 + 8) = v22;
    operator delete(v22);
  }

  if (v20)
  {
    (*(*v20 + 8))(v20, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_10026C504(va);
  _Unwind_Resume(a1);
}

void sub_1006BFB68(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      sub_1001A1980(a1, 0xAAAAAAAAAAAAAAABLL * (v4 >> 5));
    }

    v6 = 0;
    if (0xAAAAAAAAAAAAAAABLL * (v3 >> 5))
    {
      v7 = 32 * (v4 >> 5);
      v8 = a1[1] - v2;
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

void sub_1006BFC5C(uint64_t a1)
{
  if (sub_10018E854(a1))
  {
    sub_10003848C(buf);
    v2 = sub_100038730(&v16, "DELETE FROM ", 12);
    v3 = *(a1 + 295);
    if (v3 >= 0)
    {
      v4 = a1 + 272;
    }

    else
    {
      v4 = *(a1 + 272);
    }

    if (v3 >= 0)
    {
      v5 = *(a1 + 295);
    }

    else
    {
      v5 = *(a1 + 280);
    }

    v6 = sub_100038730(v2, v4, v5);
    v7 = sub_100038730(v6, " WHERE ", 7);
    v8 = sub_100038730(v7, "MAC", 3);
    v9 = sub_100038730(v8, " IS NULL OR ", 12);
    v10 = sub_100038730(v9, "MAC", 3);
    sub_100038730(v10, " = '' ", 6);
    sub_100073518(buf, __p);
    if (v14 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    sub_1000388D8(a1 + 64, v11);
  }

  if (qword_1025D4850 != -1)
  {
    sub_10190A820();
  }

  v12 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call deleteWhereMacAddressIsEmpty() without a backing database in CLWifiLocationDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B200();
  }
}

void sub_1006BFF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a16);
  _Unwind_Resume(a1);
}

id *sub_1006BFF8C(uint64_t a1, double a2, double a3)
{
  sub_10000FF38(v23, "CLWifiLocationDatabase::deleteByAlsQueryAge", 0);
  if (sub_10018E854(a1))
  {
    if (*(a1 + 16) != 1)
    {
      sub_10003848C(v21);
      v9 = sub_100038730(&v22, "DELETE FROM ", 12);
      v10 = *(a1 + 295);
      if (v10 >= 0)
      {
        v11 = a1 + 272;
      }

      else
      {
        v11 = *(a1 + 272);
      }

      if (v10 >= 0)
      {
        v12 = *(a1 + 295);
      }

      else
      {
        v12 = *(a1 + 280);
      }

      v13 = sub_100038730(v9, v11, v12);
      v14 = sub_100038730(v13, " WHERE ", 7);
      v15 = sub_100038730(v14, "AlsQueryTimestamp", 17);
      v16 = sub_100038730(v15, " < ?", 4);
      v17 = sub_100038730(v16, " OR ", 4);
      v18 = sub_100038730(v17, "AlsQueryTimestamp", 17);
      sub_100038730(v18, " > ?", 4);
      sub_100073518(v21, buf);
      if (v25 >= 0)
      {
        v19 = buf;
      }

      else
      {
        v19 = *buf;
      }

      sub_1000388D8(a1 + 64, v19);
    }

    if (qword_1025D4850 != -1)
    {
      sub_10190A7B4();
    }

    v4 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "#Error, Attempt to call deleteByAlsQueryAge() in a read-only database", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10190A7DC(buf);
      LOWORD(v21[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4858, 17, "#Error, Attempt to call deleteByAlsQueryAge() in a read-only database", v21, 2);
      v6 = v5;
      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiLocationDatabase::deleteByAlsQueryAge(CFTimeInterval, CFAbsoluteTime)", "%s\n", v5);
      goto LABEL_15;
    }
  }

  else
  {
    if (qword_1025D4850 != -1)
    {
      sub_10190A7B4();
    }

    v7 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call deleteByAlsQueryAge() without a backing database in CLWifiLocationDatabase!", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190A7DC(buf);
      LOWORD(v21[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4858, 2, "#Warning Attempt to call deleteByAlsQueryAge() without a backing database in CLWifiLocationDatabase!", v21, 2);
      v6 = v8;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiLocationDatabase::deleteByAlsQueryAge(CFTimeInterval, CFAbsoluteTime)", "%s\n", v8);
LABEL_15:
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  return sub_10001A420(v23);
}

void sub_1006C06E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (v56)
  {
    (*(*v56 + 8))(v56, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_10026C504(&a11);
  sub_10001A420(&a47);
  _Unwind_Resume(a1);
}

void sub_1006C077C(uint64_t a1, uint64_t a2)
{
  if (sub_10018E854(a1))
  {
    sub_10003848C(buf);
    v3 = sub_100038730(&v13, "DELETE FROM ", 12);
    v4 = *(a1 + 295);
    if (v4 >= 0)
    {
      v5 = a1 + 272;
    }

    else
    {
      v5 = *(a1 + 272);
    }

    if (v4 >= 0)
    {
      v6 = *(a1 + 295);
    }

    else
    {
      v6 = *(a1 + 280);
    }

    v7 = sub_100038730(v3, v5, v6);
    v8 = sub_100038730(v7, " WHERE ", 7);
    v9 = sub_100038730(v8, "MAC", 3);
    sub_100038730(v9, " = ? ", 5);
    sub_100073518(buf, v14);
    if (v15 >= 0)
    {
      v10 = v14;
    }

    else
    {
      v10 = *v14;
    }

    sub_1000388D8(a1 + 64, v10);
  }

  if (qword_1025D4850 != -1)
  {
    sub_10190A820();
  }

  v11 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call deleteByMac() without a backing database in CLWifiLocationDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B2E4();
  }
}

void sub_1006C0CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (*(v9 - 73) < 0)
  {
    operator delete(*(v9 - 96));
  }

  sub_10026C504(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C0CF8(uint64_t a1, uint64_t a2, double a3)
{
  if (sub_10018E854(a1))
  {
    sub_10003848C(buf);
    v4 = sub_100038730(&v21, "UPDATE OR IGNORE ", 17);
    v5 = *(a1 + 295);
    if (v5 >= 0)
    {
      v6 = a1 + 272;
    }

    else
    {
      v6 = *(a1 + 272);
    }

    if (v5 >= 0)
    {
      v7 = *(a1 + 295);
    }

    else
    {
      v7 = *(a1 + 280);
    }

    v8 = sub_100038730(v4, v6, v7);
    v9 = sub_100038730(v8, " SET ", 5);
    v10 = strlen("Timestamp");
    v11 = sub_100038730(v9, "Timestamp", v10);
    v12 = sub_100038730(v11, " = ? ", 5);
    v13 = sub_100038730(v12, " WHERE ", 7);
    v14 = sub_100038730(v13, "MAC", 3);
    sub_100038730(v14, " = ? ", 5);
    sub_100073518(buf, __p);
    if (v19 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    sub_1000388D8(a1 + 64, v15);
  }

  if (qword_1025D4850 != -1)
  {
    sub_10190A820();
  }

  v16 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call updateTimestampForMacAddress() without a backing database in CLWifiLocationDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B3C8();
  }

  return 0;
}

void sub_1006C1080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C10E0(uint64_t a1)
{
  *a1 = off_10246B440;
  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  return sub_1006526BC(a1);
}

void sub_1006C1150(uint64_t a1)
{
  *a1 = off_10246B440;
  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  sub_1006526BC(a1);

  operator delete();
}

void sub_1006C1204(std::runtime_error *this)
{
  this->__vftable = off_10246B4D0;
  if (SHIBYTE(this[4].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  if (SHIBYTE(this[2].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::runtime_error::~runtime_error(this);

  operator delete();
}

void sub_1006C12E8()
{
  qword_102658C08 = "MAC";
  dword_102658C10 = 1;
  word_102658C14 = 1;
  byte_102658C18 = 0;
  byte_102658C30 = 0;
  qword_102658C38 = "Channel";
  dword_102658C40 = 1;
  word_102658C44 = 0;
  byte_102658C48 = 0;
  byte_102658C60 = 0;
  qword_102658C68 = "InfoMask";
  dword_102658C70 = 1;
  word_102658C74 = 0;
  byte_102658C78 = 0;
  byte_102658C90 = 0;
  qword_102658C98 = "Timestamp";
  dword_102658CA0 = 2;
  word_102658CA4 = 0;
  byte_102658CA8 = 0;
  byte_102658CC0 = 0;
  qword_102658CC8 = "Latitude";
  dword_102658CD0 = 2;
  word_102658CD4 = 0;
  byte_102658CD8 = 0;
  byte_102658CF0 = 0;
  qword_102658CF8 = "Longitude";
  dword_102658D00 = 2;
  word_102658D04 = 0;
  byte_102658D08 = 0;
  byte_102658D20 = 0;
  qword_102658D28 = "HorizontalAccuracy";
  dword_102658D30 = 2;
  word_102658D34 = 0;
  byte_102658D38 = 0;
  byte_102658D50 = 0;
  qword_102658D58 = "Altitude";
  dword_102658D60 = 2;
  word_102658D64 = 0;
  byte_102658D68 = 0;
  byte_102658D80 = 0;
  qword_102658D88 = "VerticalAccuracy";
  dword_102658D90 = 2;
  word_102658D94 = 0;
  byte_102658D98 = 0;
  byte_102658DB0 = 0;
  qword_102658DB8 = "Speed";
  dword_102658DC0 = 2;
  word_102658DC4 = 0;
  byte_102658DC8 = 0;
  byte_102658DE0 = 0;
  qword_102658DE8 = "Course";
  dword_102658DF0 = 2;
  word_102658DF4 = 0;
  byte_102658DF8 = 0;
  byte_102658E10 = 0;
  qword_102658E18 = "Confidence";
  dword_102658E20 = 1;
  word_102658E24 = 0;
  byte_102658E28 = 0;
  byte_102658E40 = 0;
  qword_102658E48 = "Score";
  dword_102658E50 = 1;
  word_102658E54 = 0;
  byte_102658E58 = 0;
  byte_102658E70 = 0;
  qword_102658E78 = "Reach";
  dword_102658E80 = 1;
  word_102658E84 = 0;
  byte_102658E88 = 0;
  byte_102658EA0 = 0;
  qword_102658EA8 = "FenceForeignKey";
  dword_102658EB0 = 1;
  word_102658EB4 = 1;
  byte_102658EB8 = 0;
  byte_102658ED0 = 0;
  qword_102658ED8 = "ZaxisHarvestTraces";
  dword_102658EE0 = 1;
  word_102658EE4 = 0;
  byte_102658EE8 = 0;
  byte_102658F00 = 0;
  qword_102658F08 = "AlsQueryTimestamp";
  dword_102658F10 = 2;
  word_102658F14 = 0;
  byte_102658F18 = 0;
  byte_102658F30 = 0;
  qword_102658F38 = 0;
  dword_102658F40 = 5;
  word_102658F44 = 0;
  byte_102658F48 = 0;
  byte_102658F60 = 0;
}

id sub_1006C1520(void *a1, uint64_t a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006C15AC;
  v3[3] = &unk_10246B530;
  v3[4] = a2;
  return [a1 filteredArrayUsingPredicate:{+[NSPredicate predicateWithBlock:](NSPredicate, "predicateWithBlock:", v3)}];
}

uint64_t sub_1006C1748(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006C49F0;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102658F78 != -1)
  {
    dispatch_once(&qword_102658F78, block);
  }

  return qword_1026371F0;
}

void sub_1006C19C4(uint64_t a1, int *a2, uint64_t a3)
{
  v10 = 0xFFFF;
  v11 = 0;
  v12 = 0;
  v13 = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v14 = _Q0;
  v15 = _Q0;
  v16 = _Q0;
  v17 = 0;
  v20 = 0;
  v18 = 0xBFF0000000000000;
  v19 = 0;
  v21 = 0;
  v22 = 0xBFF0000000000000;
  v23 = 0x7FFFFFFF;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v27 = 0;
  v9 = sub_1006C5194(a1);
  sub_1006AA228(*(v9 + 32), a2, &v10);
}

void sub_1006C1F68(uint64_t a1, int *a2, uint64_t a3)
{
  v10 = 0xFFFF;
  v11 = 0;
  v12 = 0;
  v13 = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v14 = _Q0;
  v15 = _Q0;
  v16 = _Q0;
  v17 = 0;
  v20 = 0;
  v18 = 0xBFF0000000000000;
  v19 = 0;
  v21 = 0;
  v22 = 0xBFF0000000000000;
  v23 = 0x7FFFFFFF;
  v26 = 0;
  v24 = 0;
  v25 = 0;
  v27 = 0;
  v9 = sub_1006C5084(a1);
  sub_1006AA228(*(v9 + 32), a2, &v10);
}

void sub_1006C253C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = 0uLL;
  v56 = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v57 = _Q0;
  v58 = _Q0;
  v59 = _Q0;
  v54 = 0xFFFF;
  v60 = 0;
  v62 = 0;
  v63 = 0;
  v61 = 0xBFF0000000000000;
  v65 = 0xBFF0000000000000;
  v64 = 0;
  v66 = 0x7FFFFFFF;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v70 = 0;
  v27 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  memset(v28, 0, sizeof(v28));
  sub_10038EB38(v28, v10, v11, (v11 - v10) >> 2);
  v12 = *(a2 + 192);
  v13 = *(a2 + 208);
  v14 = *(a2 + 160);
  v38 = *(a2 + 176);
  v39 = v12;
  v40[0] = v13;
  *(v40 + 12) = *(a2 + 220);
  v15 = *(a2 + 128);
  v16 = *(a2 + 144);
  v17 = *(a2 + 96);
  v34 = *(a2 + 112);
  v35 = v15;
  v36 = v16;
  v37 = v14;
  v18 = *(a2 + 80);
  v31 = *(a2 + 64);
  v32 = v18;
  v33 = v17;
  v19 = *(a2 + 48);
  v29 = *(a2 + 32);
  v30 = v19;
  if (*(a2 + 263) < 0)
  {
    sub_100007244(&v41, *(a2 + 240), *(a2 + 248));
  }

  else
  {
    v41 = *(a2 + 240);
    v42 = *(a2 + 256);
  }

  v20 = *(a2 + 408);
  v51 = *(a2 + 392);
  v52 = v20;
  v21 = *(a2 + 344);
  v47 = *(a2 + 328);
  v48 = v21;
  v22 = *(a2 + 376);
  v49 = *(a2 + 360);
  v50 = v22;
  v23 = *(a2 + 280);
  v43 = *(a2 + 264);
  v44 = v23;
  v24 = *(a2 + 312);
  v45 = *(a2 + 296);
  v46 = v24;
  v53 = *(a2 + 424);
  sub_1006CF0D4(&v27);
  sub_100621C1C(&v27, &__p);
  v25 = sub_1006C52A4(a1);
  sub_100942C7C(*(v25 + 32), &v27, &v54);
}

void sub_1006C2C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_10064A5B4(&a18);
  _Unwind_Resume(a1);
}

void sub_1006C2D48(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v10 = 0xFFFF;
  v11 = 0;
  v12 = 0;
  v13 = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v14 = _Q0;
  v15 = _Q0;
  v16 = _Q0;
  v19 = 0;
  v20 = 0;
  v18 = 0xBFF0000000000000;
  v17 = 0;
  v21 = 0;
  v22 = 0xBFF0000000000000;
  v23 = 0x7FFFFFFF;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0;
  v9 = sub_100090470(a1);
  sub_100082734(*(v9 + 32), a2, &v10);
}

void sub_1006C3378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C3484(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v10 = 0xFFFF;
  v11 = 0;
  v12 = 0;
  v13 = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v14 = _Q0;
  v15 = _Q0;
  v16 = _Q0;
  v19 = 0;
  v20 = 0;
  v18 = 0xBFF0000000000000;
  v17 = 0;
  v21 = 0;
  v22 = 0xBFF0000000000000;
  v23 = 0x7FFFFFFF;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v27 = 0;
  v9 = sub_1006C53B4(a1);
  sub_1007F4E08(*(v9 + 32), a2, &v10);
}

void sub_1006C3AB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C3B4C(uint64_t a1, uint64_t a2)
{
  *(a2 + 40) = *(a1 + 560);
  *(a2 + 56) = *(a1 + 576);
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 40);
    v6 = *(a2 + 44);
    v7 = *(a2 + 48);
    v8 = *(a2 + 52);
    v9 = *(a2 + 56);
    *buf = 67110144;
    v23 = v5;
    v24 = 1024;
    v25 = v6;
    v26 = 1024;
    v27 = v7;
    v28 = 1024;
    v29 = v8;
    v30 = 1024;
    v31 = v9;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "NETWORK: stats: cellsQueried, %d, wifisQueried, %d, locationsQueried, %d, totalRequests, %d, totalRequestsSuccessful, %d", buf, 0x20u);
  }

  v10 = a1 + 560;
  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v11 = *(a2 + 44);
    v12 = *(a2 + 48);
    v13 = *(a2 + 52);
    v14 = *(a2 + 56);
    LOWORD(v18) = 1024;
    HIWORD(v18) = v11;
    HIWORD(v19) = HIWORD(v13);
    v20 = 1024;
    v21 = v14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "NETWORK: stats: cellsQueried, %d, wifisQueried, %d, locationsQueried, %d, totalRequests, %d, totalRequestsSuccessful, %d", &v17, 32, 67110144, v18, v12);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::getMetric(CLDaemonStats_Type::LocationNetworkQueries &)", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
}

uint64_t sub_1006C3D98(uint64_t a1, uint64_t a2, char **a3)
{
  if (*(a1 + 456) == 1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190BC08();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#Warning in private location mode; not querying for unknown cells or unknown wifis", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190BDE4();
    }

    return 0xFFFFFFFFLL;
  }

  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) != 1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190BC08();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning Location Services disabled, not querying location", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190BC1C();
    }

    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 608) && (*(a1 + 440) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190BC08();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "@AlsFlow, querynearby, skip, connectivity", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190BD00();
    }

    return 0xFFFFFFFFLL;
  }

  *(a1 + 568) = vadd_s32(*(a1 + 568), 0x100000001);
  sub_10000EC00(__p, "queryNearbys");
  sub_10023B1D0(a1 + 464, __p);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = (*(**(a1 + 448) + 40))(*(a1 + 448), a2, 0xFFFFFFFFLL);
  *buf = &v11;
  v7 = sub_1006E12D0(a1 + 392, &v11, &unk_101C66300, buf) + 5;
  if (v7 != a3)
  {
    sub_100731D80(v7, *a3, a3[1], (a3[1] - *a3) >> 2);
  }

  return v11;
}

void sub_1006C4028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006C41E4(uint64_t a1, uint64_t *a2, int a3)
{
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  memset(v89, 0, sizeof(v89));
  __src = 0;
  v87 = 0;
  v88 = 0;
  __p = 0;
  v84 = 0;
  v85 = 0;
  v4 = *a2;
  if (a2[1] != *a2)
  {
    v6 = 0;
    v7 = 8;
    do
    {
      v8 = v4 + v7 - 8;
      v9 = *(v4 + v7);
      if (v9 < 3)
      {
        goto LABEL_6;
      }

      if (v9 == 9)
      {
        v19 = sub_1006CCAA0(v8, a2);
        v20 = v91;
        if (v91 >= v92)
        {
          v36 = v90;
          v37 = v91 - v90;
          v38 = (v91 - v90) >> 5;
          v39 = v38 + 1;
          if ((v38 + 1) >> 59)
          {
            sub_10028C64C();
          }

          v40 = v92 - v90;
          if ((v92 - v90) >> 4 > v39)
          {
            v39 = v40 >> 4;
          }

          if (v40 >= 0x7FFFFFFFFFFFFFE0)
          {
            v39 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v39)
          {
            sub_1003F6B14(&v90, v39);
          }

          v41 = (v91 - v90) >> 5;
          v42 = (32 * v38);
          v43 = v19[1];
          *v42 = *v19;
          v42[1] = v43;
          v22 = 32 * v38 + 32;
          v44 = &v42[-2 * v41];
          memcpy(v44, v36, v37);
          v45 = v90;
          v90 = v44;
          v91 = v22;
          v92 = 0;
          if (v45)
          {
            operator delete(v45);
          }
        }

        else
        {
          v21 = v19[1];
          *v91 = *v19;
          *(v20 + 1) = v21;
          v22 = (v20 + 32);
        }

        v91 = v22;
        goto LABEL_22;
      }

      if (v9 == 7)
      {
LABEL_6:
        v10 = sub_1006CBCE4(v8);
        v11 = v94;
        if (v94 >= v95)
        {
          v14 = v93;
          v15 = v94 - v93;
          v16 = (v94 - v93) >> 5;
          v17 = v16 + 1;
          if ((v16 + 1) >> 59)
          {
            sub_10028C64C();
          }

          v18 = v95 - v93;
          if ((v95 - v93) >> 4 > v17)
          {
            v17 = v18 >> 4;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFE0)
          {
            v17 = 0x7FFFFFFFFFFFFFFLL;
          }

          if (v17)
          {
            sub_1003F6B14(&v93, v17);
          }

          v24 = (v94 - v93) >> 5;
          v25 = (32 * v16);
          v26 = v10[1];
          *v25 = *v10;
          v25[1] = v26;
          v13 = 32 * v16 + 32;
          v27 = &v25[-2 * v24];
          memcpy(v27, v14, v15);
          v28 = v93;
          v93 = v27;
          v94 = v13;
          v95 = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          v12 = v10[1];
          *v94 = *v10;
          *(v11 + 1) = v12;
          v13 = (v11 + 32);
        }

        v94 = v13;
      }

      else if (v9 - 3 > 2)
      {
        if (v9 == 10)
        {
          v46 = sub_100681E80(v8, a2);
          v47 = v84;
          if (v84 >= v85)
          {
            v57 = __p;
            v58 = v84 - __p;
            v59 = 0xAAAAAAAAAAAAAAABLL * ((v84 - __p) >> 5);
            v60 = v59 + 1;
            if (v59 + 1 > 0x2AAAAAAAAAAAAAALL)
            {
              sub_10028C64C();
            }

            if (0x5555555555555556 * ((v85 - __p) >> 5) > v60)
            {
              v60 = 0x5555555555555556 * ((v85 - __p) >> 5);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v85 - __p) >> 5) >= 0x155555555555555)
            {
              v60 = 0x2AAAAAAAAAAAAAALL;
            }

            if (v60)
            {
              sub_1006DFE30(&__p, v60);
            }

            v68 = (32 * ((v84 - __p) >> 5));
            v69 = v46[1];
            *v68 = *v46;
            v68[1] = v69;
            v70 = v46[2];
            v71 = v46[3];
            v72 = v46[5];
            v68[4] = v46[4];
            v68[5] = v72;
            v68[2] = v70;
            v68[3] = v71;
            v52 = 96 * v59 + 96;
            v73 = v68 - v58;
            memcpy(v68 - v58, v57, v58);
            v74 = __p;
            __p = v73;
            v84 = v52;
            v85 = 0;
            if (v74)
            {
              operator delete(v74);
            }
          }

          else
          {
            v48 = v46[1];
            *v84 = *v46;
            v47[1] = v48;
            v49 = v46[2];
            v50 = v46[3];
            v51 = v46[5];
            v47[4] = v46[4];
            v47[5] = v51;
            v47[2] = v49;
            v47[3] = v50;
            v52 = (v47 + 6);
          }

          v84 = v52;
        }

        else if (v9 == 6)
        {
          v29 = sub_10007513C(v8, a2);
          v30 = v87;
          if (v87 >= v88)
          {
            v53 = __src;
            v54 = v87 - __src;
            v55 = 0x2E8BA2E8BA2E8BA3 * ((v87 - __src) >> 3);
            v56 = v55 + 1;
            if ((v55 + 1) > 0x2E8BA2E8BA2E8BALL)
            {
              sub_10028C64C();
            }

            if (0x5D1745D1745D1746 * ((v88 - __src) >> 3) > v56)
            {
              v56 = 0x5D1745D1745D1746 * ((v88 - __src) >> 3);
            }

            if ((0x2E8BA2E8BA2E8BA3 * ((v88 - __src) >> 3)) >= 0x1745D1745D1745DLL)
            {
              v56 = 0x2E8BA2E8BA2E8BALL;
            }

            if (v56)
            {
              sub_1006DFDD4(&__src, v56);
            }

            v61 = 8 * ((v87 - __src) >> 3);
            v62 = *(v29 + 16);
            *v61 = *v29;
            *(v61 + 16) = v62;
            v63 = *(v29 + 32);
            v64 = *(v29 + 48);
            v65 = *(v29 + 64);
            *(v61 + 80) = *(v29 + 80);
            *(v61 + 48) = v64;
            *(v61 + 64) = v65;
            *(v61 + 32) = v63;
            v35 = 88 * v55 + 88;
            v66 = (v61 - v54);
            memcpy((v61 - v54), v53, v54);
            v67 = __src;
            __src = v66;
            v87 = v35;
            v88 = 0;
            if (v67)
            {
              operator delete(v67);
            }
          }

          else
          {
            v31 = *(v29 + 16);
            *v87 = *v29;
            *(v30 + 1) = v31;
            v32 = *(v29 + 32);
            v33 = *(v29 + 48);
            v34 = *(v29 + 64);
            *(v30 + 10) = *(v29 + 80);
            *(v30 + 3) = v33;
            *(v30 + 4) = v34;
            *(v30 + 2) = v32;
            v35 = (v30 + 88);
          }

          v87 = v35;
        }
      }

      else
      {
        v23 = sub_1006CB140(v8, a2);
        sub_1006D3914(v89, v23);
      }

LABEL_22:
      ++v6;
      v4 = *a2;
      v7 += 696;
    }

    while (v6 < 0x66FD0EB66FD0EB67 * ((a2[1] - *a2) >> 3));
  }

  sub_10000EC00(v78, "queryCellLocations");
  LODWORD(v80) = 1;
  if (SHIBYTE(v79) < 0)
  {
    sub_100007244(&v81, v78[0], v78[1]);
  }

  else
  {
    v81 = *v78;
    v82 = v79;
  }

  v75 = sub_1006CF1D8(a1, &v93, &v90, v89, &__src, &__p, &unk_101C89098, a3, 0, &v80);
  if (SHIBYTE(v82) < 0)
  {
    operator delete(v81);
  }

  if (SHIBYTE(v79) < 0)
  {
    operator delete(v78[0]);
  }

  if (__p)
  {
    v84 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v87 = __src;
    operator delete(__src);
  }

  v80 = v89;
  sub_10064AA34(&v80);
  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  return v75;
}

void sub_1006C47BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  if (a28)
  {
    a29 = a28;
    operator delete(a28);
  }

  a18 = &a31;
  sub_10064AA34(&a18);
  v33 = *(v31 - 136);
  if (v33)
  {
    *(v31 - 128) = v33;
    operator delete(v33);
  }

  v34 = *(v31 - 112);
  if (v34)
  {
    *(v31 - 104) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(a1);
}

void sub_1006C49BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C4AF8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  if (a12)
  {
    (*(*a12 + 8))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006C4B48@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_10018D404(v35);
  sub_1001097CC(v8, a2, a3);
  sub_10003848C(v30);
  v9 = sub_100038730(&v31, "cell ", 5);
  v10 = *(a1 + 23);
  if (v10 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 23);
  }

  else
  {
    v12 = a1[1];
  }

  v13 = sub_100038730(v9, v11, v12);
  v14 = sub_100038730(v13, ", local ", 8);
  sub_100B1AA60(v28);
  if ((v29 & 0x80u) == 0)
  {
    v15 = v28;
  }

  else
  {
    v15 = v28[0];
  }

  if ((v29 & 0x80u) == 0)
  {
    v16 = v29;
  }

  else
  {
    v16 = v28[1];
  }

  v17 = sub_100038730(v14, v15, v16);
  v18 = sub_100038730(v17, ", remote ", 9);
  sub_100B1AA60(__p);
  if ((v27 & 0x80u) == 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if ((v27 & 0x80u) == 0)
  {
    v20 = v27;
  }

  else
  {
    v20 = __p[1];
  }

  sub_100038730(v18, v19, v20);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  v21 = sub_100038730(&v31, ", ", 2);
  v22 = *v21;
  *(v21 + *(*v21 - 24) + 16) = 1;
  *(v21 + *(v22 - 24) + 8) = *(v21 + *(v22 - 24) + 8) & 0xFFFFFEFB | 4;
  v23 = std::ostream::operator<<();
  sub_100038730(v23, "m apart", 7);
  sub_100073518(v30, a4);
  v31 = v24;
  if (v34 < 0)
  {
    operator delete(v33[7].__locale_);
  }

  std::locale::~locale(v33);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1006C4E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_10026C504(&a21);
  _Unwind_Resume(a1);
}

void sub_1006C4EB4(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  sub_1006C4B48(a1, a2, a3, __p);
  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v4 = __p;
    if (v9 < 0)
    {
      v4 = __p[0];
    }

    *buf = 136642819;
    v13 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "CELL_LOC: %{sensitive}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(buf);
    v5 = __p;
    if (v9 < 0)
    {
      v5 = __p[0];
    }

    v10 = 136642819;
    v11 = v5;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "CELL_LOC: %{sensitive}s", &v10, 12);
    v7 = v6;
    sub_100152C7C("Generic", 1, 0, 2, "static void CLNetworkLocationProvider::logCellLocationsWhenLocalAndRemoteDiffer(const std::string &, const CLDaemonLocation &, const CLDaemonLocation &)", "%s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1006C505C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006C5084(uint64_t a1)
{
  result = *(a1 + 200);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1006C510C(uint64_t a1)
{
  result = *(a1 + 192);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1006C5194(uint64_t a1)
{
  result = *(a1 + 160);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1006C521C(uint64_t a1)
{
  result = *(a1 + 152);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1006C52A4(uint64_t a1)
{
  result = *(a1 + 240);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1006C532C(uint64_t a1)
{
  result = *(a1 + 232);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1006C53B4(uint64_t a1)
{
  result = *(a1 + 320);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1006C543C(uint64_t a1)
{
  result = *(a1 + 312);
  if (!result)
  {
    operator new();
  }

  return result;
}

void sub_1006C54C4(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  v7 = sub_1006C6230(a1, "CLNetworkLocationProvider", a2);
  *v7 = off_10246B580;
  v8 = *a3;
  *a3 = 0;
  *(v7 + 112) = v8;
  *(v7 + 120) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 160) = 0;
  *(v7 + 176) = 0;
  *(v7 + 168) = v7 + 176;
  *(v7 + 184) = 0;
  *(v7 + 144) = 0u;
  *(v7 + 192) = 0;
  *(v7 + 200) = 0;
  *(v7 + 216) = 0;
  *(v7 + 208) = v7 + 216;
  *(v7 + 232) = 0;
  *(v7 + 240) = 0;
  *(v7 + 248) = v7 + 256;
  *(v7 + 224) = 0;
  *(v7 + 256) = 0;
  *(v7 + 264) = 0;
  *(v7 + 272) = 0;
  *(v7 + 280) = 0;
  *(v7 + 288) = v7 + 296;
  *(v7 + 296) = 0;
  *(v7 + 336) = 0;
  *(v7 + 344) = 0;
  *(v7 + 304) = 0;
  *(v7 + 312) = 0;
  *(v7 + 320) = 0;
  *(v7 + 328) = v7 + 336;
  *(v7 + 352) = 0;
  *(v7 + 360) = 0u;
  *(v7 + 376) = 0u;
  *(v7 + 392) = v7 + 400;
  *(v7 + 400) = 0;
  *(v7 + 424) = 0;
  *(v7 + 432) = 0;
  *(v7 + 408) = 0;
  *(v7 + 416) = v7 + 424;
  *(v7 + 440) = 0;
  *(v7 + 448) = 0;
  *(v7 + 456) = 0;
  sub_10026CE64(v7 + 464, "NetworkProvider", a1, 103, 300.0);
  *(a1 + 520) = 0;
  *(a1 + 528) = -1;
  *&v9 = 0;
  *(a1 + 600) = v9;
  *(a1 + 532) = 1;
  *(a1 + 536) = 0;
  *(a1 + 592) = 0;
  *(a1 + 576) = 0;
  *(a1 + 544) = xmmword_101C89000;
  *(a1 + 560) = 0u;
  *(a1 + 584) = a1 + 592;
  *(a1 + 616) = 0;
  sub_10018D404(a1 + 624);
  *(a1 + 664) = 1;
  *(a1 + 672) = *a4;
  v10 = a4[1];
  *(a1 + 680) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1006C5F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t *a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  sub_1006DF878(v44 + 696);
  v52 = *(v44 + 688);
  *(v44 + 688) = 0;
  if (v52)
  {
    operator delete();
  }

  v53 = *(v44 + 680);
  if (v53)
  {
    sub_100008080(v53);
  }

  sub_1003C93BC(v44 + 584, *v45);
  sub_10026F190(v44 + 464);
  sub_1003C93BC(v44 + 416, *(v44 + 424));
  sub_10013F494(v44 + 392, *(v44 + 400));
  sub_1003C93BC(v44 + 328, *(v44 + 336));
  sub_1006E06A0((v44 + 320), 0);
  sub_1006E06A0((v44 + 312), 0);
  sub_1003C93BC(v44 + 288, *(v44 + 296));
  sub_1006E05A4((v44 + 280), 0);
  sub_1006E05A4((v44 + 272), 0);
  sub_1006E079C(v50, *(v44 + 256));
  sub_1006E04A8(v49, 0);
  sub_1006E04A8(v48, 0);
  sub_1003C93BC(v47, *(v44 + 216));
  sub_1006E03AC(v46, 0);
  sub_1006E03AC(a12, 0);
  sub_1003C93BC(a13, *(v44 + 176));
  sub_1006E03AC(a14, 0);
  sub_1006E03AC((v44 + 152), 0);
  v54 = *(v44 + 144);
  *(v44 + 144) = 0;
  if (v54)
  {
    (*(*v54 + 8))(v54);
  }

  v55 = *(v44 + 136);
  *(v44 + 136) = 0;
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  v56 = *a15;
  *a15 = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  v57 = *(v44 + 112);
  *(v44 + 112) = 0;
  if (v57)
  {
    (*(*v57 + 8))(v57);
  }

  sub_1006C8438(v44);
  _Unwind_Resume(a1);
}

uint64_t sub_1006C6230(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_10246B7E8;
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

void sub_1006C62C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C62DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2;
  CLProfilingIdentify();
  [objc_msgSend(*(a5 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterCellLocationSeries", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
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
      v19 = a5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterCellLocationSeries, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006D4DC8(a5, v7, v6);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C64A0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a6 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterCellLocation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2050;
      v21 = a6;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterCellLocation, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v13 = 0;
  }

  sub_1006D5990(a6, v9, a2, a3);
  if (v13 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C666C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a5 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterCellLocationUnknown", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
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
      v19 = a5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterCellLocationUnknown, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006D5E48(a5, v7, a2);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C6830(uint64_t a1, uint64_t a2, __int128 **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  CLProfilingIdentify();
  [objc_msgSend(*(a7 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v17 = 1;
    v14 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterWifiLocationSeriesComplete", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v14, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v15 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = "activity";
      v24 = 2050;
      v25 = a7;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterWifiLocationSeriesComplete, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v17 = 0;
  }

  sub_1006D9128(a7, v13, a2, a3, v10, v9, v8);
  if (v17 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C6A24(uint64_t a1, double *a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a6 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterResponse", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2050;
      v21 = a6;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterResponse, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v13 = 0;
  }

  sub_1006D9E88(a6, v9, a2, a3);
  if (v13 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C6BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterLocationError", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterLocationError, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006D9FAC(a4, v7, v6, v5);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C6DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterNearbyError", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterNearbyError, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006DA72C(a4, v7, v6, v5);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C6F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterFinished", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterFinished, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006DA83C(a4, v7, v6, v5);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C7154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a6 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterCdmaCellLocation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2050;
      v21 = a6;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterCdmaCellLocation, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v13 = 0;
  }

  sub_1006D62B8(a6, v9, a2, a3);
  if (v13 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C7320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a5 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterCdmaCellLocationUnknown", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
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
      v19 = a5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterCdmaCellLocationUnknown, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006D6948(a5, v7, a2);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C74E4(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a6 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterLteCellLocation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2050;
      v21 = a6;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterLteCellLocation, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v13 = 0;
  }

  sub_1006D6DD8(a6, v9, a2, a3);
  if (v13 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C76B0(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a5 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterLteCellLocationUnknown", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
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
      v19 = a5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterLteCellLocationUnknown, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006D77C4(a5, v7, a2);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C7874(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a6 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterNrCellLocation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2050;
      v21 = a6;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterNrCellLocation, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v13 = 0;
  }

  sub_1006D7F78(a6, v9, a2, a3);
  if (v13 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C7A40(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a5 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterNrCellLocationUnknown", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
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
      v19 = a5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterNrCellLocationUnknown, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006D896C(a5, v7, a2);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C7C04(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a6 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterScdmaCellLocation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "activity";
      v20 = 2050;
      v21 = a6;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterScdmaCellLocation, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v13 = 0;
  }

  sub_1006D5068(a6, v9, a2, a3);
  if (v13 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C7DD0(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a5 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationRequesterScdmaCellLocationUnknown", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
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
      v19 = a5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationRequesterScdmaCellLocationUnknown, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006D5520(a5, v7, a2);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C7F94(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v6 = 1;
    v3 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onPurgeTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v3, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "activity";
      v13 = 2050;
      v14 = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onPurgeTimer, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1006C8148(a2);
  if (v6 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1006C8148(uint64_t a1)
{
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v2 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 544);
    v8 = 134349056;
    v9 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "@AlsDB, purging ALS database entries with location timestamp older than %{public}.1fs", &v8, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190C19C();
  }

  sub_1006DBBEC(a1, v4, *(a1 + 544));
  v5 = sub_100E9C88C();
  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v6 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v8 = 134349056;
    v9 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "@AlsDB, purging ALS Wifi database entries with ALS query age older than %{public}.1fs", &v8, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190C290();
  }

  return sub_101262A60(*(a1 + 672), v5);
}

BOOL sub_1006C82CC(uint64_t *a1)
{
  result = sub_101264740(a1[84]);
  if (result)
  {
    sub_100678564();
  }

  return result;
}

uint64_t sub_1006C8438(uint64_t a1)
{
  *a1 = off_10246B7E8;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1006C84BC(uint64_t a1)
{
  *a1 = off_10246B580;
  v2 = *(a1 + 536);
  if (v2)
  {
    sub_10021D3CC(v2);
    v3 = *(a1 + 536);
    if (v3)
    {
      sub_10092C310(v3);
      operator delete();
    }

    *(a1 + 536) = 0;
  }

  sub_1006C872C(a1);
  sub_1003C93BC(a1 + 936, *(a1 + 944));
  sub_1003C93BC(a1 + 704, *(a1 + 712));
  v4 = *(a1 + 688);
  *(a1 + 688) = 0;
  if (v4)
  {
    operator delete();
  }

  v5 = *(a1 + 680);
  if (v5)
  {
    sub_100008080(v5);
  }

  sub_1003C93BC(a1 + 584, *(a1 + 592));
  sub_10026F190(a1 + 464);
  sub_1003C93BC(a1 + 416, *(a1 + 424));
  sub_10013F494(a1 + 392, *(a1 + 400));
  sub_1003C93BC(a1 + 328, *(a1 + 336));
  sub_1006E06A0((a1 + 320), 0);
  sub_1006E06A0((a1 + 312), 0);
  sub_1003C93BC(a1 + 288, *(a1 + 296));
  sub_1006E05A4((a1 + 280), 0);
  sub_1006E05A4((a1 + 272), 0);
  sub_1006E079C(a1 + 248, *(a1 + 256));
  sub_1006E04A8((a1 + 240), 0);
  sub_1006E04A8((a1 + 232), 0);
  sub_1003C93BC(a1 + 208, *(a1 + 216));
  sub_1006E03AC((a1 + 200), 0);
  sub_1006E03AC((a1 + 192), 0);
  sub_1003C93BC(a1 + 168, *(a1 + 176));
  sub_1006E03AC((a1 + 160), 0);
  sub_1006E03AC((a1 + 152), 0);
  v6 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  return sub_1006C8438(a1);
}

id sub_1006C872C(void *a1)
{
  result = sub_101264740(a1[84]);
  if (result)
  {
    [*(a1[16] + 16) unregister:*(a1[16] + 8) forNotification:33];
    v3 = a1[17];
    v5 = *(v3 + 8);
    v4 = *(v3 + 16);

    return [v4 unregister:v5 forNotification:1];
  }

  return result;
}

void sub_1006C8794(uint64_t a1)
{
  sub_1006C84BC(a1);

  operator delete();
}

void sub_1006C87CC(uint64_t a1, _DWORD *a2, int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onMotionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "activity";
      v17 = 2050;
      v18 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onMotionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  if (*a2 == 1)
  {
    sub_101264730(*(a4 + 672), a3);
  }

  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006C8A2C(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 368);
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v4 = vabdd_f64(Current, v3);
  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 352);
    v7[0] = 67109376;
    v7[1] = v6;
    v8 = 2048;
    v9 = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "NETWORK: check reschedule, fQueryRetries, %d, sinceLastRetry, %.1lf", v7, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190C384(v4);
  }

  if (v4 >= 900.0)
  {
    *(a1 + 352) = 0;
    *(a1 + 360) = Current;
    goto LABEL_11;
  }

  if (*(a1 + 352) <= 4)
  {
LABEL_11:
    sub_100185DCC(a1, "rescheduleOnReachability");
  }
}

uint64_t sub_1006C8B64(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  sub_1006C4EB4(a1, a2, a3);
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CELL_LOC: ignoring cell since local and network locations disagree.", v11, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190C574();
  }

  *a2 = 0xFFFF;
  *(a2 + 12) = 0;
  *(a2 + 4) = 0;
  *(a2 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 36) = _Q0;
  *(a2 + 52) = _Q0;
  *(a2 + 68) = _Q0;
  *(a2 + 84) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = 0xBFF0000000000000;
  *(a2 + 112) = 0;
  *(a2 + 116) = 0xBFF0000000000000;
  *(a2 + 124) = 0x7FFFFFFF;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 128) = 0;
  *(a2 + 152) = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100094EAC;
  v11[3] = &unk_102449CF8;
  v11[4] = off_1025D7E68;
  AnalyticsSendEventLazy();
  return 0;
}

void sub_1006C8CBC(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  *a3 = 0xFFFF;
  *(a3 + 4) = 0;
  *(a3 + 12) = 0;
  *(a3 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 36) = _Q0;
  *(a3 + 52) = _Q0;
  *(a3 + 68) = _Q0;
  *(a3 + 84) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0xBFF0000000000000;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0xBFF0000000000000;
  *(a3 + 124) = 0x7FFFFFFF;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  v10 = sub_1006C521C(a1);
  sub_1006AA228(*(v10 + 32), a2, a3);
}

void sub_1006C954C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C9588(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  *a3 = 0xFFFF;
  *(a3 + 4) = 0;
  *(a3 + 12) = 0;
  *(a3 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 36) = _Q0;
  *(a3 + 52) = _Q0;
  *(a3 + 68) = _Q0;
  *(a3 + 84) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0xBFF0000000000000;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0xBFF0000000000000;
  *(a3 + 124) = 0x7FFFFFFF;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  v10 = sub_1006C510C(a1);
  sub_1006AA228(*(v10 + 32), a2, a3);
}

void sub_1006C9E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006C9E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v17) = *a2;
  memset(v18, 0, sizeof(v18));
  sub_10038EB38(v18, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  v6 = *(a2 + 208);
  v29 = *(a2 + 192);
  v30[0] = v6;
  *(v30 + 12) = *(a2 + 220);
  v7 = *(a2 + 144);
  v25 = *(a2 + 128);
  v26 = v7;
  v8 = *(a2 + 176);
  v27 = *(a2 + 160);
  v28 = v8;
  v9 = *(a2 + 80);
  v21 = *(a2 + 64);
  v22 = v9;
  v10 = *(a2 + 112);
  v23 = *(a2 + 96);
  v24 = v10;
  v11 = *(a2 + 48);
  v19 = *(a2 + 32);
  v20 = v11;
  if (*(a2 + 263) < 0)
  {
    sub_100007244(&v31, *(a2 + 240), *(a2 + 248));
  }

  else
  {
    v31 = *(a2 + 240);
    v32 = *(a2 + 256);
  }

  v12 = *(a2 + 408);
  v41 = *(a2 + 392);
  v42 = v12;
  v13 = *(a2 + 344);
  v37 = *(a2 + 328);
  v38 = v13;
  v14 = *(a2 + 376);
  v39 = *(a2 + 360);
  v40 = v14;
  v15 = *(a2 + 280);
  v33 = *(a2 + 264);
  v34 = v15;
  v16 = *(a2 + 312);
  v35 = *(a2 + 296);
  v36 = v16;
  v43 = *(a2 + 424);
  sub_1006CF0D4(&v17);
  sub_1006CE264(a1, &v17, a3);
}

void sub_1006CB064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10064A5B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006CB140(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) - 3) >= 3)
  {
    sub_10190C858(a1, a2);
  }

  return a1 + 80;
}

void sub_1006CB168(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  sub_1006C8CBC(a1, v4, a3);
}

void sub_1006CBC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 73) < 0)
  {
    operator delete(*(v28 - 96));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006CBCE4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 3 && v1 != 7)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10190CAC4();
    }

    v4 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "this->isGsm()";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D48A0 != -1)
      {
        goto LABEL_17;
      }
    }

    while (1)
    {
      v5 = qword_1025D48A8;
      if (os_signpost_enabled(qword_1025D48A8))
      {
        *buf = 68289539;
        v8 = 0;
        v9 = 2082;
        v10 = "";
        v11 = 2082;
        v12 = "assert";
        v13 = 2081;
        v14 = "this->isGsm()";
        _os_signpost_emit_with_name_impl(dword_100000000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1025D48A0 != -1)
        {
          sub_10190CAD8();
        }
      }

      v6 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v8 = 0;
        v9 = 2082;
        v10 = "";
        v11 = 2082;
        v12 = "assert";
        v13 = 2081;
        v14 = "this->isGsm()";
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Utilities/CLCell.h", 112, "gsmCell");
LABEL_17:
      sub_10190CAD8();
    }
  }

  return a1 + 12;
}

void sub_1006CBF24(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  sub_1006C9588(a1, v4, a3);
}

void sub_1006CCA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 73) < 0)
  {
    operator delete(*(v28 - 96));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006CCAA0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 9)
  {
    sub_10190CC04(a1, a2);
  }

  return a1 + 44;
}

void sub_1006CCAC4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = a2[3];
  v11[2] = a2[2];
  v11[3] = v3;
  v4 = a2[5];
  v11[4] = a2[4];
  v11[5] = v4;
  v5 = a2[1];
  v11[0] = *a2;
  v11[1] = v5;
  *a3 = 0xFFFF;
  *(a3 + 12) = 0;
  *(a3 + 4) = 0;
  *(a3 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 36) = _Q0;
  *(a3 + 52) = _Q0;
  *(a3 + 68) = _Q0;
  *(a3 + 84) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0xBFF0000000000000;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0xBFF0000000000000;
  *(a3 + 124) = 0x7FFFFFFF;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  sub_1006CD6AC(a1, v11, a3);
}

void sub_1006CD654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (*(v36 - 73) < 0)
  {
    operator delete(*(v36 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_1006CD6AC(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v5 = a2[3];
  v15[2] = a2[2];
  v15[3] = v5;
  v6 = a2[5];
  v15[4] = a2[4];
  v15[5] = v6;
  v7 = a2[1];
  v15[0] = *a2;
  v15[1] = v7;
  sub_10062233C(&v14);
  *a3 = 0xFFFF;
  *(a3 + 4) = 0;
  *(a3 + 12) = 0;
  *(a3 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 36) = _Q0;
  *(a3 + 52) = _Q0;
  *(a3 + 68) = _Q0;
  *(a3 + 84) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0xBFF0000000000000;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0xBFF0000000000000;
  *(a3 + 124) = 0x7FFFFFFF;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  v13 = sub_1006C543C(a1);
  sub_1007F4E08(*(v13 + 32), v15, a3);
}

void sub_1006CE1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006CE264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *a2;
  memset(v27, 0, sizeof(v27));
  sub_10038EB38(v27, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  v6 = *(a2 + 192);
  v7 = *(a2 + 208);
  v8 = *(a2 + 160);
  v37 = *(a2 + 176);
  v38 = v6;
  v39[0] = v7;
  *(v39 + 12) = *(a2 + 220);
  v9 = *(a2 + 128);
  v10 = *(a2 + 144);
  v11 = *(a2 + 96);
  v33 = *(a2 + 112);
  v34 = v9;
  v35 = v10;
  v36 = v8;
  v12 = *(a2 + 80);
  v30 = *(a2 + 64);
  v31 = v12;
  v32 = v11;
  v13 = *(a2 + 48);
  v28 = *(a2 + 32);
  v29 = v13;
  if (*(a2 + 263) < 0)
  {
    sub_100007244(&v40, *(a2 + 240), *(a2 + 248));
  }

  else
  {
    v40 = *(a2 + 240);
    v41 = *(a2 + 256);
  }

  v14 = *(a2 + 408);
  v50 = *(a2 + 392);
  v51 = v14;
  v15 = *(a2 + 344);
  v46 = *(a2 + 328);
  v47 = v15;
  v16 = *(a2 + 376);
  v48 = *(a2 + 360);
  v49 = v16;
  v17 = *(a2 + 280);
  v42 = *(a2 + 264);
  v43 = v17;
  v18 = *(a2 + 312);
  v44 = *(a2 + 296);
  v45 = v18;
  v52 = *(a2 + 424);
  sub_1006CF0D4(&v26);
  sub_100621C1C(&v26, &v25);
  *a3 = 0xFFFF;
  *(a3 + 4) = 0;
  *(a3 + 12) = 0;
  *(a3 + 20) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a3 + 36) = _Q0;
  *(a3 + 52) = _Q0;
  *(a3 + 68) = _Q0;
  *(a3 + 84) = 0;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0xBFF0000000000000;
  *(a3 + 112) = 0;
  *(a3 + 116) = 0xBFF0000000000000;
  *(a3 + 124) = 0x7FFFFFFF;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 0;
  v24 = sub_1006C532C(a1);
  sub_100942C7C(*(v24 + 32), &v26, a3);
}

void sub_1006CF00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__pa, uint64_t a20, int a21, __int16 a22, char a23, char a24, ...)
{
  va_start(va, a24);
  if (a24 < 0)
  {
    operator delete(__pa);
  }

  sub_10064A5B4(va);
  _Unwind_Resume(a1);
}

void sub_1006CF0D4(uint64_t result)
{
  v1 = *(result + 8);
  v2 = (result + 8);
  v3 = *(result + 16) - v1;
  if (v3)
  {
    *result = *v1;
    if (v3 >= 5)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_10190CAC4();
      }

      v4 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v6 = **v2;
        v5 = (*v2)[1];
        v7[0] = 67109376;
        v7[1] = v6;
        v8 = 1024;
        v9 = v5;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Warning ignoring second MCC %d %d", v7, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10190CF74();
      }
    }
  }
}

uint64_t sub_1006CF1D8(uint64_t a1, void *a2, void *a3, uint64_t *a4, void *a5, void *a6, std::string::size_type **a7, int a8, unsigned __int8 a9, uint64_t a10)
{
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v15 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v16 = (a2[1] - *a2) >> 5;
    v17 = (a3[1] - *a3) >> 5;
    v18 = 0x84BDA12F684BDA13 * ((a4[1] - *a4) >> 4);
    v19 = 0x2E8BA2E8BA2E8BA3 * ((a5[1] - *a5) >> 3);
    v20 = 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 5);
    v21 = a7[1] - *a7;
    *buf = 134350848;
    *&buf[4] = v16;
    *&buf[12] = 2050;
    *&buf[14] = v17;
    *&buf[22] = 2050;
    *&buf[24] = v18;
    *&buf[32] = 2050;
    *&buf[34] = v19;
    *&buf[42] = 2050;
    *&buf[44] = v20;
    *&buf[52] = 2050;
    *&buf[54] = v21;
    *&buf[62] = 1026;
    *&buf[64] = a8;
    v416 = 1026;
    v417 = a9;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "@AlsFlow, query, in, cells, %{public}lu, %{public}lu, %{public}lu, %{public}lu, %{public}lu, wifi, %{public}lu, cache, %{public}d, piggyback, %{public}d\n", buf, 0x4Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v321 = (a2[1] - *a2) >> 5;
    v322 = (a3[1] - *a3) >> 5;
    v323 = 0x84BDA12F684BDA13 * ((a4[1] - *a4) >> 4);
    v324 = 0x2E8BA2E8BA2E8BA3 * ((a5[1] - *a5) >> 3);
    v325 = 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 5);
    v326 = a7[1] - *a7;
    *v392 = 134350848;
    *&v392[4] = v321;
    *&v392[12] = 2050;
    *&v392[14] = v322;
    *&v392[22] = 2050;
    *&v392[24] = v323;
    *&v392[32] = 2050;
    *&v392[34] = v324;
    *&v392[42] = 2050;
    *&v392[44] = v325;
    *&v392[52] = 2050;
    *&v392[54] = v326;
    *&v392[62] = 1026;
    *&v392[64] = a8;
    *&v392[68] = 1026;
    *&v392[70] = a9;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "@AlsFlow, query, in, cells, %{public}lu, %{public}lu, %{public}lu, %{public}lu, %{public}lu, wifi, %{public}lu, cache, %{public}d, piggyback, %{public}d\n", v392, 74);
    v328 = v327;
    sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v327);
    if (v328 != buf)
    {
      free(v328);
    }
  }

  if (*(a1 + 456) == 1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v22 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "@AlsFlow, query, skip, private", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190D244();
    }

    return 0xFFFFFFFFLL;
  }

  if ((*(**(a1 + 112) + 32))(*(a1 + 112)) != 1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v61 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEFAULT, "@AlsFlow, query, skip, bigswitch", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190D07C();
    }

    return 0xFFFFFFFFLL;
  }

  if (!*(a1 + 608) && (*(a1 + 440) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v320 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v320, OS_LOG_TYPE_DEFAULT, "@AlsFlow, query, skip, connectivity", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190D160();
    }

    return 0xFFFFFFFFLL;
  }

  v363 = 0xFFFF;
  v365 = 0;
  v364 = 0;
  v366 = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v367 = _Q0;
  v368 = _Q0;
  v369 = _Q0;
  v370 = 0;
  v372 = 0;
  v373 = 0;
  v371 = 0xBFF0000000000000;
  v375 = 0xBFF0000000000000;
  v374 = 0;
  v376 = 0x7FFFFFFF;
  v378 = 0;
  v379 = 0;
  v377 = 0;
  v380 = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v29 = *(sub_101227024() + 4);
  v31 = *(sub_101227024() + 3);
  v360 = 0;
  v361 = 0;
  v362 = 0;
  v32 = *a4;
  if (a4[1] != *a4)
  {
    v33 = 0;
    *&v354 = a1 + 256;
    v34 = 1;
    *&v30 = 136315650;
    v353 = v30;
    do
    {
      v35 = v32 + 432 * v33;
      *v392 = *v35;
      memset(&v392[8], 0, 24);
      sub_10038EB38(&v392[8], *(v35 + 8), *(v35 + 16), (*(v35 + 16) - *(v35 + 8)) >> 2);
      *&v392[32] = *(v35 + 32);
      v36 = *(v35 + 48);
      v37 = *(v35 + 64);
      v38 = *(v35 + 96);
      v393 = *(v35 + 80);
      v394 = v38;
      *&v392[48] = v36;
      *&v392[64] = v37;
      v39 = *(v35 + 112);
      v40 = *(v35 + 128);
      v41 = *(v35 + 160);
      v397 = *(v35 + 144);
      v398 = v41;
      v395 = v39;
      v396 = v40;
      v42 = *(v35 + 176);
      v43 = *(v35 + 192);
      v44 = *(v35 + 208);
      *(v401 + 12) = *(v35 + 220);
      v400 = v43;
      v401[0] = v44;
      v399 = v42;
      if (*(v35 + 263) < 0)
      {
        sub_100007244(&v402, *(v35 + 240), *(v35 + 248));
      }

      else
      {
        v45 = *(v35 + 240);
        v403 = *(v35 + 256);
        v402 = v45;
      }

      v46 = *(v35 + 264);
      v47 = *(v35 + 296);
      v405 = *(v35 + 280);
      v406 = v47;
      v404 = v46;
      v48 = *(v35 + 312);
      v49 = *(v35 + 328);
      v50 = *(v35 + 360);
      v409 = *(v35 + 344);
      v410 = v50;
      v407 = v48;
      v408 = v49;
      v51 = *(v35 + 376);
      v52 = *(v35 + 392);
      v53 = *(v35 + 408);
      v414 = *(v35 + 424);
      v412 = v52;
      v413 = v53;
      v411 = v51;
      sub_1006CF0D4(v392);
      sub_100621C1C(v392, &__p);
      if (a8)
      {
        v54 = sub_1006C52A4(a1);
        sub_100942C7C(*(v54 + 32), v392, &v363);
      }

      if (qword_1025D4620 != -1)
      {
        sub_10190B63C();
      }

      v55 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        p_p = &__p;
        if (v391 < 0)
        {
          p_p = __p;
        }

        *buf = 136315138;
        *&buf[4] = p_p;
        _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEBUG, "CELL_LOC: cdma cell, %s, re-querying", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10190B9FC(buf);
        v58 = &__p;
        if (v391 < 0)
        {
          v58 = __p;
        }

        LODWORD(__src) = 136315138;
        *(&__src + 4) = v58;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "CELL_LOC: cdma cell, %s, re-querying", &__src);
        v60 = v59;
        sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v59);
        if (v60 != buf)
        {
          free(v60);
        }
      }

      *buf = v392;
      *(sub_1006E0988((a1 + 248), v392, &unk_101C66300, buf, &__src) + 58) = Current;
      sub_1006D3914(&v360, v392);
      if (SHIBYTE(v391) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v403) < 0)
      {
        operator delete(v402);
      }

      if (*&v392[8])
      {
        *&v392[16] = *&v392[8];
        operator delete(*&v392[8]);
      }

      v33 = v34;
      v32 = *a4;
      v57 = 0x84BDA12F684BDA13 * ((a4[1] - *a4) >> 4) > v34++;
    }

    while (v57);
  }

  __src = 0uLL;
  v389 = 0;
  if (a2[1] != *a2)
  {
    v63 = 0;
    v64 = 1;
    *&v30 = 136315650;
    v354 = v30;
    do
    {
      if (a8)
      {
        v65 = sub_1006C5194(a1);
        sub_1006AA228(*(v65 + 32), *a2 + 32 * v63, &v363);
      }

      if (qword_1025D4620 != -1)
      {
        sub_10190B63C();
      }

      v66 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        sub_10016B7CC(buf);
        v67 = buf;
        if (buf[23] < 0)
        {
          v67 = *buf;
        }

        *v392 = 136315138;
        *&v392[4] = v67;
        _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_DEBUG, "CELL_LOC: gsm cell, %s, re-querying", v392, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_10190B9FC(buf);
        v82 = qword_1025D4628;
        sub_10016B7CC(v392);
        v83 = v392;
        if (v392[23] < 0)
        {
          v83 = *v392;
        }

        LODWORD(__p) = 136315138;
        *(&__p + 4) = v83;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v82, 2, "CELL_LOC: gsm cell, %s, re-querying", &__p);
        v85 = v84;
        if ((v392[23] & 0x80000000) != 0)
        {
          operator delete(*v392);
        }

        sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v85);
        if (v85 != buf)
        {
          free(v85);
        }
      }

      *buf = *a2 + 32 * v63;
      *(sub_1006E07F8((a1 + 168), *buf, &unk_101C66300, buf) + 64) = Current;
      v68 = (*a2 + 32 * v63);
      v69 = *(&__src + 1);
      if (*(&__src + 1) >= v389)
      {
        v72 = __src;
        v73 = *(&__src + 1) - __src;
        v74 = (*(&__src + 1) - __src) >> 5;
        v75 = v74 + 1;
        if ((v74 + 1) >> 59)
        {
          sub_10028C64C();
        }

        v76 = v389 - __src;
        if ((v389 - __src) >> 4 > v75)
        {
          v75 = v76 >> 4;
        }

        if (v76 >= 0x7FFFFFFFFFFFFFE0)
        {
          v75 = 0x7FFFFFFFFFFFFFFLL;
        }

        if (v75)
        {
          sub_1003F6B14(&__src, v75);
        }

        v77 = (*(&__src + 1) - __src) >> 5;
        v78 = (32 * v74);
        v79 = v68[1];
        *v78 = *v68;
        v78[1] = v79;
        v71 = 32 * v74 + 32;
        v80 = &v78[-2 * v77];
        memcpy(v80, v72, v73);
        v81 = __src;
        *&__src = v80;
        *(&__src + 1) = v71;
        v389 = 0;
        if (v81)
        {
          operator delete(v81);
        }
      }

      else
      {
        v30 = *v68;
        v70 = v68[1];
        **(&__src + 1) = *v68;
        *(v69 + 16) = v70;
        v71 = v69 + 32;
      }

      *(&__src + 1) = v71;
      v63 = v64++;
    }

    while (v63 < (a2[1] - *a2) >> 5);
  }

  __p = 0uLL;
  v391 = 0;
  if (a3[1] != *a3)
  {
    v86 = 0;
    v87 = 1;
    *&v30 = 136315650;
    v354 = v30;
    do
    {
      if (a8)
      {
        v88 = sub_1006C5084(a1);
        sub_1006AA228(*(v88 + 32), *a3 + 32 * v86, &v363);
      }

      if (qword_1025D4620 != -1)
      {
        sub_10190B63C();
      }

      v89 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        sub_10016B7CC(buf);
        v90 = buf;
        if (buf[23] < 0)
        {
          v90 = *buf;
        }

        *v392 = 136315138;
        *&v392[4] = v90;
        _os_log_impl(dword_100000000, v89, OS_LOG_TYPE_DEBUG, "CELL_LOC: scdma cell, %s, re-querying", v392, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_10190B9FC(buf);
        v105 = qword_1025D4628;
        sub_10016B7CC(v392);
        v106 = v392;
        if (v392[23] < 0)
        {
          v106 = *v392;
        }

        LODWORD(v386) = 136315138;
        *(&v386 + 4) = v106;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v105, 2, "CELL_LOC: scdma cell, %s, re-querying", &v386);
        v108 = v107;
        if ((v392[23] & 0x80000000) != 0)
        {
          operator delete(*v392);
        }

        sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v108);
        if (v108 != buf)
        {
          free(v108);
        }
      }

      *buf = *a3 + 32 * v86;
      *(sub_1006E07F8((a1 + 208), *buf, &unk_101C66300, buf) + 64) = Current;
      v91 = (*a3 + 32 * v86);
      v92 = *(&__p + 1);
      if (*(&__p + 1) >= v391)
      {
        v95 = __p;
        v96 = *(&__p + 1) - __p;
        v97 = (*(&__p + 1) - __p) >> 5;
        v98 = v97 + 1;
        if ((v97 + 1) >> 59)
        {
          sub_10028C64C();
        }

        v99 = v391 - __p;
        if ((v391 - __p) >> 4 > v98)
        {
          v98 = v99 >> 4;
        }

        if (v99 >= 0x7FFFFFFFFFFFFFE0)
        {
          v98 = 0x7FFFFFFFFFFFFFFLL;
        }

        if (v98)
        {
          sub_1003F6B14(&__p, v98);
        }

        v100 = (*(&__p + 1) - __p) >> 5;
        v101 = (32 * v97);
        v102 = v91[1];
        *v101 = *v91;
        v101[1] = v102;
        v94 = 32 * v97 + 32;
        v103 = &v101[-2 * v100];
        memcpy(v103, v95, v96);
        v104 = __p;
        *&__p = v103;
        *(&__p + 1) = v94;
        v391 = 0;
        if (v104)
        {
          operator delete(v104);
        }
      }

      else
      {
        v30 = *v91;
        v93 = v91[1];
        **(&__p + 1) = *v91;
        *(v92 + 16) = v93;
        v94 = v92 + 32;
      }

      *(&__p + 1) = v94;
      v86 = v87++;
    }

    while (v86 < (a3[1] - *a3) >> 5);
  }

  v386 = 0uLL;
  v387 = 0;
  if (a5[1] != *a5)
  {
    v109 = 0;
    *&v354 = a1 + 296;
    v110 = 1;
    *&v30 = 136315650;
    v353 = v30;
    do
    {
      if (a8)
      {
        v111 = sub_100090470(a1);
        sub_100082734(*(v111 + 32), *a5 + 88 * v109, &v363);
      }

      if (qword_1025D4620 != -1)
      {
        sub_10190B63C();
      }

      v112 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        sub_100081198(buf);
        v113 = buf;
        if (buf[23] < 0)
        {
          v113 = *buf;
        }

        *v392 = 136315138;
        *&v392[4] = v113;
        _os_log_impl(dword_100000000, v112, OS_LOG_TYPE_DEBUG, "CELL_LOC: lte cell, %s, re-querying", v392, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_10190B9FC(buf);
        v131 = qword_1025D4628;
        sub_100081198(v392);
        v132 = v392;
        if (v392[23] < 0)
        {
          v132 = *v392;
        }

        LODWORD(v384) = 136315138;
        *(&v384 + 4) = v132;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v131, 2, "CELL_LOC: lte cell, %s, re-querying", &v384);
        v134 = v133;
        if ((v392[23] & 0x80000000) != 0)
        {
          operator delete(*v392);
        }

        sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v134);
        if (v134 != buf)
        {
          free(v134);
        }
      }

      *buf = *a5 + 88 * v109;
      *(sub_1006E0E5C((a1 + 288), *buf, &unk_101C66300, buf) + 120) = Current;
      v114 = *a5 + 88 * v109;
      v115 = *(&v386 + 1);
      if (*(&v386 + 1) >= v387)
      {
        v120 = v386;
        v121 = *(&v386 + 1) - v386;
        v122 = 0x2E8BA2E8BA2E8BA3 * ((*(&v386 + 1) - v386) >> 3);
        v123 = v122 + 1;
        if ((v122 + 1) > 0x2E8BA2E8BA2E8BALL)
        {
          sub_10028C64C();
        }

        if (0x5D1745D1745D1746 * ((v387 - v386) >> 3) > v123)
        {
          v123 = 0x5D1745D1745D1746 * ((v387 - v386) >> 3);
        }

        if ((0x2E8BA2E8BA2E8BA3 * ((v387 - v386) >> 3)) >= 0x1745D1745D1745DLL)
        {
          v123 = 0x2E8BA2E8BA2E8BALL;
        }

        if (v123)
        {
          sub_1006DFDD4(&v386, v123);
        }

        v124 = 8 * ((*(&v386 + 1) - v386) >> 3);
        v125 = *(v114 + 16);
        *v124 = *v114;
        *(v124 + 16) = v125;
        v126 = *(v114 + 32);
        v127 = *(v114 + 48);
        v128 = *(v114 + 64);
        *(v124 + 80) = *(v114 + 80);
        *(v124 + 48) = v127;
        *(v124 + 64) = v128;
        *(v124 + 32) = v126;
        v119 = 88 * v122 + 88;
        v129 = v124 - v121;
        memcpy((v124 - v121), v120, v121);
        v130 = v386;
        *&v386 = v129;
        *(&v386 + 1) = v119;
        v387 = 0;
        if (v130)
        {
          operator delete(v130);
        }
      }

      else
      {
        v116 = *(v114 + 16);
        **(&v386 + 1) = *v114;
        *(v115 + 16) = v116;
        v30 = *(v114 + 32);
        v117 = *(v114 + 48);
        v118 = *(v114 + 64);
        *(v115 + 80) = *(v114 + 80);
        *(v115 + 48) = v117;
        *(v115 + 64) = v118;
        *(v115 + 32) = v30;
        v119 = v115 + 88;
      }

      *(&v386 + 1) = v119;
      v109 = v110;
      v57 = 0x2E8BA2E8BA2E8BA3 * ((a5[1] - *a5) >> 3) > v110++;
    }

    while (v57);
  }

  v384 = 0uLL;
  v385 = 0;
  if (a6[1] != *a6)
  {
    v135 = 0;
    v136 = 1;
    *&v30 = 136315650;
    v354 = v30;
    do
    {
      if (a8)
      {
        v137 = sub_1006C53B4(a1);
        sub_1007F4E08(*(v137 + 32), *a6 + 96 * v135, &v363);
      }

      if (qword_1025D4620 != -1)
      {
        sub_10190B63C();
      }

      v138 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        sub_10062233C(buf);
        v139 = buf;
        if (buf[23] < 0)
        {
          v139 = *buf;
        }

        *v392 = 136315138;
        *&v392[4] = v139;
        _os_log_impl(dword_100000000, v138, OS_LOG_TYPE_DEBUG, "CELL_LOC: nr cell, %s, re-querying", v392, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_10190B9FC(buf);
        v158 = qword_1025D4628;
        sub_10062233C(v392);
        v159 = v392;
        if (v392[23] < 0)
        {
          v159 = *v392;
        }

        LODWORD(v382) = 136315138;
        *(&v382 + 4) = v159;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v158, 2, "CELL_LOC: nr cell, %s, re-querying", &v382);
        v161 = v160;
        if ((v392[23] & 0x80000000) != 0)
        {
          operator delete(*v392);
        }

        sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v161);
        if (v161 != buf)
        {
          free(v161);
        }
      }

      *buf = *a6 + 96 * v135;
      *(sub_1006E0F0C((a1 + 328), *buf, &unk_101C66300, buf) + 128) = Current;
      v140 = (*a6 + 96 * v135);
      v141 = *(&v384 + 1);
      if (*(&v384 + 1) >= v385)
      {
        v147 = v384;
        v148 = *(&v384 + 1) - v384;
        v149 = 0xAAAAAAAAAAAAAAABLL * ((*(&v384 + 1) - v384) >> 5);
        v150 = v149 + 1;
        if (v149 + 1 > 0x2AAAAAAAAAAAAAALL)
        {
          sub_10028C64C();
        }

        if (0x5555555555555556 * ((v385 - v384) >> 5) > v150)
        {
          v150 = 0x5555555555555556 * ((v385 - v384) >> 5);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v385 - v384) >> 5) >= 0x155555555555555)
        {
          v150 = 0x2AAAAAAAAAAAAAALL;
        }

        if (v150)
        {
          sub_1006DFE30(&v384, v150);
        }

        v151 = (32 * ((*(&v384 + 1) - v384) >> 5));
        v152 = v140[1];
        *v151 = *v140;
        v151[1] = v152;
        v153 = v140[2];
        v154 = v140[3];
        v155 = v140[5];
        v151[4] = v140[4];
        v151[5] = v155;
        v151[2] = v153;
        v151[3] = v154;
        v146 = 96 * v149 + 96;
        v156 = v151 - v148;
        memcpy(v151 - v148, v147, v148);
        v157 = v384;
        *&v384 = v156;
        *(&v384 + 1) = v146;
        v385 = 0;
        if (v157)
        {
          operator delete(v157);
        }
      }

      else
      {
        v142 = v140[1];
        **(&v384 + 1) = *v140;
        v141[1] = v142;
        v143 = v140[2];
        v144 = v140[3];
        v145 = v140[5];
        v141[4] = v140[4];
        v141[5] = v145;
        v141[2] = v143;
        v141[3] = v144;
        v146 = (v141 + 6);
      }

      *(&v384 + 1) = v146;
      v135 = v136;
      v57 = 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 5) > v136++;
    }

    while (v57);
  }

  v382 = 0uLL;
  v383 = 0;
  v162 = *a7;
  v163 = a7[1];
  if (*a7 == v163)
  {
    v165 = 0;
    v355 = 0;
    v164 = 0;
  }

  else
  {
    v164 = 0;
    v355 = 0;
    v165 = 0;
    do
    {
      v166 = *(a1 + 672);
      v381.__r_.__value_.__r.__words[0] = *v162;
      memset(v392, 0, 24);
      sub_1006DFE88(v392, &v381, &v381.__r_.__value_.__l.__size_, 1uLL);
      (*(*v166 + 32))(buf, v166, v392);
      if (*v392)
      {
        *&v392[8] = *v392;
        operator delete(*v392);
      }

      v167 = sub_100198C70(buf, v162);
      if (&buf[8] == v167 || !a8 || Current - *(v167 + 104) >= v29)
      {
        if (!a8 || (v168 = sub_100198C70(a1 + 416, v162), a1 + 424 == v168) || Current - *(v168 + 40) >= v31)
        {
          v381.__r_.__value_.__r.__words[0] = v162;
          *(sub_1006E1238((a1 + 416), v162, &unk_101C66300, &v381) + 5) = Current;
          v169 = *(&v382 + 1);
          if (*(&v382 + 1) >= v383)
          {
            v171 = v382;
            v172 = *(&v382 + 1) - v382;
            v173 = (*(&v382 + 1) - v382) >> 3;
            v174 = v173 + 1;
            if ((v173 + 1) >> 61)
            {
              sub_10028C64C();
            }

            v175 = v383 - v382;
            if ((v383 - v382) >> 2 > v174)
            {
              v174 = v175 >> 2;
            }

            _CF = v175 >= 0x7FFFFFFFFFFFFFF8;
            v176 = 0x1FFFFFFFFFFFFFFFLL;
            if (!_CF)
            {
              v176 = v174;
            }

            if (v176)
            {
              sub_1000B9708(&v382, v176);
            }

            *(8 * v173) = *v162;
            v170 = 8 * v173 + 8;
            memcpy(0, v171, v172);
            v177 = v382;
            *&v382 = 0;
            *(&v382 + 1) = v170;
            v383 = 0;
            if (v177)
            {
              operator delete(v177);
            }
          }

          else
          {
            **(&v382 + 1) = *v162;
            v170 = v169 + 8;
          }

          *(&v382 + 1) = v170;
          ++v165;
        }

        else
        {
          ++v355;
        }
      }

      else
      {
        ++v164;
      }

      sub_1003C93BC(buf, *&buf[8]);
      ++v162;
    }

    while (v162 != v163);
  }

  sub_10000EC00(v392, "wifi");
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 3221225472;
  *&buf[16] = sub_1006DFEFC;
  *&buf[24] = &unk_10246B738;
  *&buf[40] = v164;
  v178 = v355;
  *&buf[44] = v355;
  *&buf[48] = v165;
  buf[52] = a8;
  *&buf[32] = v392;
  AnalyticsSendEventLazy();
  if ((v392[23] & 0x80000000) != 0)
  {
    operator delete(*v392);
  }

  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
    v178 = v355;
  }

  v179 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    v180 = a7[1] - *a7;
    *buf = 134350080;
    *&buf[4] = v180;
    *&buf[12] = 1026;
    *&buf[14] = v165;
    *&buf[18] = 1026;
    *&buf[20] = v164;
    *&buf[24] = 1026;
    *&buf[26] = v178;
    *&buf[30] = 2050;
    *&buf[32] = (*(&v382 + 1) - v382) >> 3;
    _os_log_impl(dword_100000000, v179, OS_LOG_TYPE_INFO, "AlsWifi, query, in, %{public}lu, paths, %{public}d, %{public}d, %{public}d, out, %{public}lu", buf, 0x28u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(buf);
    v329 = a7[1] - *a7;
    *v392 = 134350080;
    *&v392[4] = v329;
    *&v392[12] = 1026;
    *&v392[14] = v165;
    *&v392[18] = 1026;
    *&v392[20] = v164;
    *&v392[24] = 1026;
    *&v392[26] = v355;
    *&v392[30] = 2050;
    *&v392[32] = (*(&v382 + 1) - v382) >> 3;
    LODWORD(v352) = 40;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 1, "AlsWifi, query, in, %{public}lu, paths, %{public}d, %{public}d, %{public}d, out, %{public}lu", v392, *&v352);
    v331 = v330;
    sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v330);
    if (v331 != buf)
    {
      free(v331);
    }
  }

  if (__src != *(&__src + 1))
  {
    v182 = *(&__p + 1);
    v181 = __p;
    v183 = v360;
LABEL_214:
    *(a1 + 560) = ((v182 - v181) >> 5) + ((*(&__src + 1) - __src) >> 5) + 1749801491 * ((v361 - v183) >> 4) + *(a1 + 560) - 1171354717 * ((*(&v386 + 1) - v386) >> 3) - 1431655765 * ((*(&v384 + 1) - v384) >> 5);
    *(a1 + 564) += (*(&v382 + 1) - v382) >> 3;
    if (a9)
    {
      v184 = 100;
    }

    else
    {
      v184 = 1;
    }

    v185 = *(a1 + 448);
    *(v185 + 296) = 0;
    *(v185 + 300) = v184;
    v357 = sub_1006D3954(a1, &__src, &__p, &v360, &v386, &v384, &v382, a10);
    *(*(a1 + 448) + 296) = dword_100000000;
    goto LABEL_218;
  }

  v182 = *(&__p + 1);
  v181 = __p;
  v183 = v360;
  if (__p != *(&__p + 1))
  {
    goto LABEL_214;
  }

  if (v360 != v361 || v386 != *(&v386 + 1) || v384 != *(&v384 + 1))
  {
    v182 = __p;
    goto LABEL_214;
  }

  v182 = __p;
  if (v382 != *(&v382 + 1))
  {
    goto LABEL_214;
  }

  v184 = 0;
  v357 = -1;
LABEL_218:
  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v186 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67241984;
    *&buf[4] = v357;
    *&buf[8] = 2050;
    *&buf[10] = (*(&__src + 1) - __src) >> 5;
    *&buf[18] = 2050;
    *&buf[20] = (*(&__p + 1) - __p) >> 5;
    *&buf[28] = 2050;
    *&buf[30] = 0x84BDA12F684BDA13 * ((v361 - v360) >> 4);
    *&buf[38] = 2050;
    *&buf[40] = 0x2E8BA2E8BA2E8BA3 * ((*(&v386 + 1) - v386) >> 3);
    *&buf[48] = 2050;
    *&buf[50] = 0xAAAAAAAAAAAAAAABLL * ((*(&v384 + 1) - v384) >> 5);
    *&buf[58] = 2050;
    *&buf[60] = (*(&v382 + 1) - v382) >> 3;
    v416 = 1026;
    v417 = v184;
    _os_log_impl(dword_100000000, v186, OS_LOG_TYPE_DEFAULT, "@AlsFlow, query, made, %{public}d, cells, %{public}lu, %{public}lu, %{public}lu, %{public}lu, %{public}lu, wifi, %{public}lu, nearby, %{public}d\n", buf, 0x4Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B9FC(buf);
    *v392 = 67241984;
    *&v392[4] = v357;
    *&v392[8] = 2050;
    *&v392[10] = (*(&__src + 1) - __src) >> 5;
    *&v392[18] = 2050;
    *&v392[20] = (*(&__p + 1) - __p) >> 5;
    *&v392[28] = 2050;
    *&v392[30] = 0x84BDA12F684BDA13 * ((v361 - v360) >> 4);
    *&v392[38] = 2050;
    *&v392[40] = 0x2E8BA2E8BA2E8BA3 * ((*(&v386 + 1) - v386) >> 3);
    *&v392[48] = 2050;
    *&v392[50] = 0xAAAAAAAAAAAAAAABLL * ((*(&v384 + 1) - v384) >> 5);
    *&v392[58] = 2050;
    *&v392[60] = (*(&v382 + 1) - v382) >> 3;
    *&v392[68] = 1026;
    *&v392[70] = v184;
    LODWORD(v352) = 74;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "@AlsFlow, query, made, %{public}d, cells, %{public}lu, %{public}lu, %{public}lu, %{public}lu, %{public}lu, wifi, %{public}lu, nearby, %{public}d\n", v392, *&v352);
    v333 = v332;
    sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v332);
    if (v333 != buf)
    {
      free(v333);
    }
  }

  if (*(a1 + 432) > 0x258uLL)
  {
    v187 = *(a1 + 416);
    v188 = (a1 + 424);
    if (v187 != (a1 + 424))
    {
      do
      {
        if (qword_1025D4620 != -1)
        {
          sub_10190B63C();
        }

        v189 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_1000ECD9C(v392);
          v190 = v392[23];
          v191 = *v392;
          v192 = *(v187 + 5);
          v193 = CFAbsoluteTimeGetCurrent();
          v194 = v392;
          if (v190 < 0)
          {
            v194 = v191;
          }

          v195 = v193 - v187[5];
          *buf = 136381187;
          *&buf[4] = v194;
          *&buf[12] = 2050;
          *&buf[14] = v192;
          *&buf[22] = 2050;
          *&buf[24] = v195;
          _os_log_impl(dword_100000000, v189, OS_LOG_TYPE_DEBUG, "AlsWifi, pending, %{private}s, from, %{public}.3f, %{public}.3fs", buf, 0x20u);
          if ((v392[23] & 0x80000000) != 0)
          {
            operator delete(*v392);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10190B9FC(buf);
          v198 = qword_1025D4628;
          sub_1000ECD9C(&v381);
          v199 = SHIBYTE(v381.__r_.__value_.__r.__words[2]);
          v200 = v381.__r_.__value_.__r.__words[0];
          v201 = *(v187 + 5);
          v202 = CFAbsoluteTimeGetCurrent();
          v203 = &v381;
          if (v199 < 0)
          {
            v203 = v200;
          }

          v204 = v202 - v187[5];
          *v392 = 136381187;
          *&v392[4] = v203;
          *&v392[12] = 2050;
          *&v392[14] = v201;
          *&v392[22] = 2050;
          *&v392[24] = v204;
          LODWORD(v352) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v198, 2, "AlsWifi, pending, %{private}s, from, %{public}.3f, %{public}.3fs", v392, *&v352, v353, v354);
          v206 = v205;
          if (SHIBYTE(v381.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v381.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v206);
          if (v206 != buf)
          {
            free(v206);
          }
        }

        v196 = *(v187 + 1);
        if (v196)
        {
          do
          {
            v197 = v196;
            v196 = *v196;
          }

          while (v196);
        }

        else
        {
          do
          {
            v197 = *(v187 + 2);
            _ZF = *v197 == v187;
            v187 = v197;
          }

          while (!_ZF);
        }

        v187 = v197;
      }

      while (v197 != v188);
    }

    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v207 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v208 = *(a1 + 432);
      *buf = 134349056;
      *&buf[4] = v208;
      _os_log_impl(dword_100000000, v207, OS_LOG_TYPE_DEFAULT, "AlsWifi, clearpending, %{public}ld, #CloneMe", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      v337 = *(a1 + 432);
      *v392 = 134349056;
      *&v392[4] = v337;
      LODWORD(v352) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "AlsWifi, clearpending, %{public}ld, #CloneMe", v392, *&v352);
      v339 = v338;
      sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v338);
      if (v339 != buf)
      {
        free(v339);
      }
    }

    sub_1003C93BC(a1 + 416, *(a1 + 424));
    *(a1 + 424) = 0;
    *(a1 + 432) = 0;
    *(a1 + 416) = v188;
  }

  if (*(a1 + 184) > 0x12CuLL)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v209 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v210 = *(a1 + 184);
      *buf = 134217984;
      *&buf[4] = v210;
      _os_log_impl(dword_100000000, v209, OS_LOG_TYPE_DEFAULT, "#Warning CELL_LOC: %ld pending gsm cells, clearing", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      v334 = *(a1 + 184);
      *v392 = 134217984;
      *&v392[4] = v334;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "#Warning CELL_LOC: %ld pending gsm cells, clearing", v392);
      v336 = v335;
      sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v335);
      if (v336 != buf)
      {
        free(v336);
      }
    }

    v211 = *(a1 + 168);
    v212 = (a1 + 176);
    if (v211 != (a1 + 176))
    {
      do
      {
        if (qword_1025D4620 != -1)
        {
          sub_10190B63C();
        }

        v213 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_10016B7CC(v392);
          v214 = v392[23];
          v215 = *v392;
          v216 = *(v211 + 8);
          v217 = CFAbsoluteTimeGetCurrent();
          v218 = v392;
          if (v214 < 0)
          {
            v218 = v215;
          }

          v219 = v217 - v211[8];
          *buf = 136315650;
          *&buf[4] = v218;
          *&buf[12] = 2048;
          *&buf[14] = v216;
          *&buf[22] = 2048;
          *&buf[24] = v219;
          _os_log_impl(dword_100000000, v213, OS_LOG_TYPE_DEBUG, "CELL_LOC: pending gsm cell, %s, from, %.3f, %.3f, ago)", buf, 0x20u);
          if ((v392[23] & 0x80000000) != 0)
          {
            operator delete(*v392);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10190B9FC(buf);
          v222 = qword_1025D4628;
          sub_10016B7CC(&v381);
          v223 = SHIBYTE(v381.__r_.__value_.__r.__words[2]);
          v224 = v381.__r_.__value_.__r.__words[0];
          v225 = *(v211 + 8);
          v226 = CFAbsoluteTimeGetCurrent();
          v227 = &v381;
          if (v223 < 0)
          {
            v227 = v224;
          }

          v228 = v226 - v211[8];
          *v392 = 136315650;
          *&v392[4] = v227;
          *&v392[12] = 2048;
          *&v392[14] = v225;
          *&v392[22] = 2048;
          *&v392[24] = v228;
          LODWORD(v352) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v222, 2, "CELL_LOC: pending gsm cell, %s, from, %.3f, %.3f, ago)", v392, v352, *&v353);
          v230 = v229;
          if (SHIBYTE(v381.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v381.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v230);
          if (v230 != buf)
          {
            free(v230);
          }
        }

        v220 = *(v211 + 1);
        if (v220)
        {
          do
          {
            v221 = v220;
            v220 = *v220;
          }

          while (v220);
        }

        else
        {
          do
          {
            v221 = *(v211 + 2);
            _ZF = *v221 == v211;
            v211 = v221;
          }

          while (!_ZF);
        }

        v211 = v221;
      }

      while (v221 != v212);
    }

    sub_1003C93BC(a1 + 168, *(a1 + 176));
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = v212;
  }

  if (*(a1 + 224) > 0x12CuLL)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v231 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v232 = *(a1 + 224);
      *buf = 134217984;
      *&buf[4] = v232;
      _os_log_impl(dword_100000000, v231, OS_LOG_TYPE_DEFAULT, "#Warning CELL_LOC: %ld pending scdma cells, clearing", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      v340 = *(a1 + 224);
      *v392 = 134217984;
      *&v392[4] = v340;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "#Warning CELL_LOC: %ld pending scdma cells, clearing", v392);
      v342 = v341;
      sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v341);
      if (v342 != buf)
      {
        free(v342);
      }
    }

    v233 = *(a1 + 208);
    v234 = (a1 + 216);
    if (v233 != (a1 + 216))
    {
      do
      {
        if (qword_1025D4620 != -1)
        {
          sub_10190B63C();
        }

        v235 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_10016B7CC(v392);
          v236 = v392[23];
          v237 = *v392;
          v238 = *(v233 + 8);
          v239 = CFAbsoluteTimeGetCurrent();
          v240 = v392;
          if (v236 < 0)
          {
            v240 = v237;
          }

          v241 = v239 - v233[8];
          *buf = 136315650;
          *&buf[4] = v240;
          *&buf[12] = 2048;
          *&buf[14] = v238;
          *&buf[22] = 2048;
          *&buf[24] = v241;
          _os_log_impl(dword_100000000, v235, OS_LOG_TYPE_DEBUG, "CELL_LOC: pending scdma cell, %s, from, %.3f, %.3f, ago)", buf, 0x20u);
          if ((v392[23] & 0x80000000) != 0)
          {
            operator delete(*v392);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10190B9FC(buf);
          v244 = qword_1025D4628;
          sub_10016B7CC(&v381);
          v245 = SHIBYTE(v381.__r_.__value_.__r.__words[2]);
          v246 = v381.__r_.__value_.__r.__words[0];
          v247 = *(v233 + 8);
          v248 = CFAbsoluteTimeGetCurrent();
          v249 = &v381;
          if (v245 < 0)
          {
            v249 = v246;
          }

          v250 = v248 - v233[8];
          *v392 = 136315650;
          *&v392[4] = v249;
          *&v392[12] = 2048;
          *&v392[14] = v247;
          *&v392[22] = 2048;
          *&v392[24] = v250;
          LODWORD(v352) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v244, 2, "CELL_LOC: pending scdma cell, %s, from, %.3f, %.3f, ago)", v392, v352, *&v353);
          v252 = v251;
          if (SHIBYTE(v381.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v381.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v252);
          if (v252 != buf)
          {
            free(v252);
          }
        }

        v242 = *(v233 + 1);
        if (v242)
        {
          do
          {
            v243 = v242;
            v242 = *v242;
          }

          while (v242);
        }

        else
        {
          do
          {
            v243 = *(v233 + 2);
            _ZF = *v243 == v233;
            v233 = v243;
          }

          while (!_ZF);
        }

        v233 = v243;
      }

      while (v243 != v234);
    }

    sub_1003C93BC(a1 + 208, *(a1 + 216));
    *(a1 + 216) = 0;
    *(a1 + 224) = 0;
    *(a1 + 208) = v234;
  }

  if (*(a1 + 264) > 0x12CuLL)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v253 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v254 = *(a1 + 264);
      *buf = 134217984;
      *&buf[4] = v254;
      _os_log_impl(dword_100000000, v253, OS_LOG_TYPE_DEFAULT, "#Warning CELL_LOC: %ld pending cdma cells, clearing", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      v343 = *(a1 + 264);
      *v392 = 134217984;
      *&v392[4] = v343;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "#Warning CELL_LOC: %ld pending cdma cells, clearing", v392);
      v345 = v344;
      sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v344);
      if (v345 != buf)
      {
        free(v345);
      }
    }

    v255 = *(a1 + 248);
    v256 = (a1 + 256);
    if (v255 != (a1 + 256))
    {
      do
      {
        if (qword_1025D4620 != -1)
        {
          sub_10190B63C();
        }

        v257 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_100621C1C(v255 + 8, v392);
          v258 = v392[23];
          v259 = *v392;
          v260 = *(v255 + 58);
          v261 = CFAbsoluteTimeGetCurrent();
          v262 = v392;
          if (v258 < 0)
          {
            v262 = v259;
          }

          v263 = v261 - *(v255 + 58);
          *buf = 136315650;
          *&buf[4] = v262;
          *&buf[12] = 2048;
          *&buf[14] = v260;
          *&buf[22] = 2048;
          *&buf[24] = v263;
          _os_log_impl(dword_100000000, v257, OS_LOG_TYPE_DEBUG, "CELL_LOC: pending cdma cell, %s, from, %.3f, %.3f, ago)", buf, 0x20u);
          if ((v392[23] & 0x80000000) != 0)
          {
            operator delete(*v392);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10190B9FC(buf);
          v266 = qword_1025D4628;
          sub_100621C1C(v255 + 8, &v381);
          v267 = SHIBYTE(v381.__r_.__value_.__r.__words[2]);
          v268 = v381.__r_.__value_.__r.__words[0];
          v269 = *(v255 + 58);
          v270 = CFAbsoluteTimeGetCurrent();
          v271 = &v381;
          if (v267 < 0)
          {
            v271 = v268;
          }

          v272 = v270 - *(v255 + 58);
          *v392 = 136315650;
          *&v392[4] = v271;
          *&v392[12] = 2048;
          *&v392[14] = v269;
          *&v392[22] = 2048;
          *&v392[24] = v272;
          LODWORD(v352) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v266, 2, "CELL_LOC: pending cdma cell, %s, from, %.3f, %.3f, ago)", v392, v352, *&v353);
          v274 = v273;
          if (SHIBYTE(v381.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v381.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v274);
          if (v274 != buf)
          {
            free(v274);
          }
        }

        v264 = *(v255 + 1);
        if (v264)
        {
          do
          {
            v265 = v264;
            v264 = *v264;
          }

          while (v264);
        }

        else
        {
          do
          {
            v265 = *(v255 + 2);
            _ZF = *v265 == v255;
            v255 = v265;
          }

          while (!_ZF);
        }

        v255 = v265;
      }

      while (v265 != v256);
    }

    sub_1006E079C(a1 + 248, *(a1 + 256));
    *(a1 + 256) = 0;
    *(a1 + 264) = 0;
    *(a1 + 248) = v256;
  }

  if (*(a1 + 304) > 0x12CuLL)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v275 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v276 = *(a1 + 304);
      *buf = 134217984;
      *&buf[4] = v276;
      _os_log_impl(dword_100000000, v275, OS_LOG_TYPE_DEFAULT, "#Warning CELL_LOC: %ld pending lte cells, clearing", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      v346 = *(a1 + 304);
      *v392 = 134217984;
      *&v392[4] = v346;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "#Warning CELL_LOC: %ld pending lte cells, clearing", v392);
      v348 = v347;
      sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v347);
      if (v348 != buf)
      {
        free(v348);
      }
    }

    v277 = *(a1 + 288);
    v278 = (a1 + 296);
    if (v277 != (a1 + 296))
    {
      do
      {
        if (qword_1025D4620 != -1)
        {
          sub_10190B63C();
        }

        v279 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_100081198(v392);
          v280 = v392[23];
          v281 = *v392;
          v282 = *(v277 + 15);
          v283 = CFAbsoluteTimeGetCurrent();
          v284 = v392;
          if (v280 < 0)
          {
            v284 = v281;
          }

          v285 = v283 - v277[15];
          *buf = 136315650;
          *&buf[4] = v284;
          *&buf[12] = 2048;
          *&buf[14] = v282;
          *&buf[22] = 2048;
          *&buf[24] = v285;
          _os_log_impl(dword_100000000, v279, OS_LOG_TYPE_DEBUG, "CELL_LOC: pending lte cell, %s, from, %.3f, %.3f, ago)", buf, 0x20u);
          if ((v392[23] & 0x80000000) != 0)
          {
            operator delete(*v392);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10190B9FC(buf);
          v288 = qword_1025D4628;
          sub_100081198(&v381);
          v289 = SHIBYTE(v381.__r_.__value_.__r.__words[2]);
          v290 = v381.__r_.__value_.__r.__words[0];
          v291 = *(v277 + 15);
          v292 = CFAbsoluteTimeGetCurrent();
          v293 = &v381;
          if (v289 < 0)
          {
            v293 = v290;
          }

          v294 = v292 - v277[15];
          *v392 = 136315650;
          *&v392[4] = v293;
          *&v392[12] = 2048;
          *&v392[14] = v291;
          *&v392[22] = 2048;
          *&v392[24] = v294;
          LODWORD(v352) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v288, 2, "CELL_LOC: pending lte cell, %s, from, %.3f, %.3f, ago)", v392, v352, *&v353);
          v296 = v295;
          if (SHIBYTE(v381.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v381.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v296);
          if (v296 != buf)
          {
            free(v296);
          }
        }

        v286 = *(v277 + 1);
        if (v286)
        {
          do
          {
            v287 = v286;
            v286 = *v286;
          }

          while (v286);
        }

        else
        {
          do
          {
            v287 = *(v277 + 2);
            _ZF = *v287 == v277;
            v277 = v287;
          }

          while (!_ZF);
        }

        v277 = v287;
      }

      while (v287 != v278);
    }

    sub_1003C93BC(a1 + 288, *(a1 + 296));
    *(a1 + 296) = 0;
    *(a1 + 304) = 0;
    *(a1 + 288) = v278;
  }

  if (*(a1 + 344) > 0x12CuLL)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v297 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v298 = *(a1 + 344);
      *buf = 134217984;
      *&buf[4] = v298;
      _os_log_impl(dword_100000000, v297, OS_LOG_TYPE_DEFAULT, "#Warning CELL_LOC: %ld pending nr cells, clearing", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190B9FC(buf);
      v349 = *(a1 + 344);
      *v392 = 134217984;
      *&v392[4] = v349;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "#Warning CELL_LOC: %ld pending nr cells, clearing", v392);
      v351 = v350;
      sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v350);
      if (v351 != buf)
      {
        free(v351);
      }
    }

    v299 = *(a1 + 328);
    v300 = (a1 + 336);
    if (v299 != (a1 + 336))
    {
      do
      {
        if (qword_1025D4620 != -1)
        {
          sub_10190B63C();
        }

        v301 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_10062233C(v392);
          v302 = v392[23];
          v303 = *v392;
          v304 = *(v299 + 16);
          v305 = CFAbsoluteTimeGetCurrent();
          v306 = v392;
          if (v302 < 0)
          {
            v306 = v303;
          }

          v307 = v305 - v299[16];
          *buf = 136315650;
          *&buf[4] = v306;
          *&buf[12] = 2048;
          *&buf[14] = v304;
          *&buf[22] = 2048;
          *&buf[24] = v307;
          _os_log_impl(dword_100000000, v301, OS_LOG_TYPE_DEBUG, "CELL_LOC: pending nr cell, %s, from, %.3f, %.3f, ago)", buf, 0x20u);
          if ((v392[23] & 0x80000000) != 0)
          {
            operator delete(*v392);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10190B9FC(buf);
          v310 = qword_1025D4628;
          sub_10062233C(&v381);
          v311 = SHIBYTE(v381.__r_.__value_.__r.__words[2]);
          v312 = v381.__r_.__value_.__r.__words[0];
          v313 = *(v299 + 16);
          v314 = CFAbsoluteTimeGetCurrent();
          v315 = &v381;
          if (v311 < 0)
          {
            v315 = v312;
          }

          v316 = v314 - v299[16];
          *v392 = 136315650;
          *&v392[4] = v315;
          *&v392[12] = 2048;
          *&v392[14] = v313;
          *&v392[22] = 2048;
          *&v392[24] = v316;
          LODWORD(v352) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v310, 2, "CELL_LOC: pending nr cell, %s, from, %.3f, %.3f, ago)", v392, v352, *&v353);
          v318 = v317;
          if (SHIBYTE(v381.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v381.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::queryLocations(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, BOOL, BOOL, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v318);
          if (v318 != buf)
          {
            free(v318);
          }
        }

        v308 = *(v299 + 1);
        if (v308)
        {
          do
          {
            v309 = v308;
            v308 = *v308;
          }

          while (v308);
        }

        else
        {
          do
          {
            v309 = *(v299 + 2);
            _ZF = *v309 == v299;
            v299 = v309;
          }

          while (!_ZF);
        }

        v299 = v309;
      }

      while (v309 != v300);
    }

    sub_1003C93BC(a1 + 328, *(a1 + 336));
    *(a1 + 336) = 0;
    *(a1 + 344) = 0;
    *(a1 + 328) = v300;
  }

  if (v382)
  {
    *(&v382 + 1) = v382;
    operator delete(v382);
  }

  v62 = v357;
  if (v384)
  {
    *(&v384 + 1) = v384;
    operator delete(v384);
  }

  if (v386)
  {
    *(&v386 + 1) = v386;
    operator delete(v386);
  }

  if (__p)
  {
    *(&__p + 1) = __p;
    operator delete(__p);
  }

  if (__src)
  {
    *(&__src + 1) = __src;
    operator delete(__src);
  }

  *buf = &v360;
  sub_10064AA34(buf);
  return v62;
}

void sub_1006D3660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    a50 = __p;
    operator delete(__p);
  }

  if (a53)
  {
    a54 = a53;
    operator delete(a53);
  }

  if (a57)
  {
    a58 = a57;
    operator delete(a57);
  }

  if (a65)
  {
    a66 = a65;
    operator delete(a65);
  }

  if (a61)
  {
    a62 = a61;
    operator delete(a61);
  }

  a67 = &a23;
  sub_10064AA34(&a67);
  _Unwind_Resume(a1);
}

uint64_t sub_1006D3914(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1006DF9E8(a1, a2);
  }

  else
  {
    sub_1006DF8B4(a1, a2);
    result = v3 + 432;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_1006D3954(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v15 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v16 = (a2[1] - *a2) >> 5;
    v17 = (a3[1] - *a3) >> 5;
    v18 = 0x84BDA12F684BDA13 * ((a4[1] - *a4) >> 4);
    v19 = 0x2E8BA2E8BA2E8BA3 * ((a5[1] - *a5) >> 3);
    v20 = 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 5);
    v21 = (a7[1] - *a7) >> 3;
    v22 = *(a1 + 120);
    *buf = 134350592;
    *v55 = v16;
    *&v55[8] = 2050;
    v56 = v17;
    v57 = 2050;
    v58 = v18;
    v59 = 2050;
    v60 = v19;
    v61 = 2050;
    v62 = v20;
    v63 = 2050;
    v64 = v21;
    v65 = 1026;
    v66 = v22;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "@AlsFlow, query, internal, cells, %{public}lu, %{public}lu, %{public}lu, %{public}lu, %{public}lu, wifi, %{public}lu, skipnearby, %{public}d\n", buf, 0x44u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v28 = (a2[1] - *a2) >> 5;
    v29 = (a3[1] - *a3) >> 5;
    v30 = 0x84BDA12F684BDA13 * ((a4[1] - *a4) >> 4);
    v31 = 0x2E8BA2E8BA2E8BA3 * ((a5[1] - *a5) >> 3);
    v32 = 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 5);
    v33 = (a7[1] - *a7) >> 3;
    v34 = *(a1 + 120);
    v40 = 134350592;
    v41 = v28;
    v42 = 2050;
    v43 = v29;
    v44 = 2050;
    v45 = v30;
    v46 = 2050;
    v47 = v31;
    v48 = 2050;
    v49 = v32;
    v50 = 2050;
    v51 = v33;
    v52 = 1026;
    v53 = v34;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "@AlsFlow, query, internal, cells, %{public}lu, %{public}lu, %{public}lu, %{public}lu, %{public}lu, wifi, %{public}lu, skipnearby, %{public}d\n", &v40, 68);
    v36 = v35;
    sub_100152C7C("Generic", 1, 0, 2, "int CLNetworkLocationProvider::query(const std::vector<CLTelephonyService_Type::Cell> &, const std::vector<CLTelephonyService_Type::ScdmaCell> &, const std::vector<CLTelephonyService_Type::CdmaCell> &, const std::vector<CLTelephonyService_Type::LteCell> &, const std::vector<CLTelephonyService_Type::NrCell> &, const std::vector<CLMacAddress> &, const CLNetworkLocationRequest_Type::CLNetworkLocationRequestConfig &)", "%s\n", v35);
    if (v36 != buf)
    {
      free(v36);
    }
  }

  sub_10000EC00(__p, "query");
  sub_10023B1D0(a1 + 464, __p);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 120) == 1)
  {
    *(*(a1 + 448) + 296) = dword_100000000;
  }

  v23 = sub_100234858(a1);
  if (v23)
  {
    v24 = 16;
  }

  else
  {
    v24 = 40;
  }

  if (qword_1025D4620 != -1)
  {
    sub_10190B63C();
  }

  v25 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    *v55 = v23;
    *&v55[4] = 1024;
    *&v55[6] = v24;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "query, broadDataConnection, %d, timeout, %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190D328(v23);
  }

  ++*(a1 + 572);
  v26 = (*(**(a1 + 448) + 24))(*(a1 + 448), a2, a3, a4, a5, a6, a7, a8, v24);
  if (sub_100071CA0())
  {
    sub_10004FD18();
    v40 = *(a1 + 352);
    sub_10004345C(buf, "queryLoc", &v40);
    v40 = v26;
    sub_10004345C(buf, "tag", &v40);
    v40 = (a2[1] - *a2) >> 5;
    sub_10004345C(buf, "p1", &v40);
    v40 = 1749801491 * ((a4[1] - *a4) >> 4);
    sub_10004345C(buf, "p2", &v40);
    v40 = -1171354717 * ((a5[1] - *a5) >> 3);
    sub_10004345C(buf, "p3", &v40);
    v40 = (a7[1] - *a7) >> 3;
    sub_10004345C(buf, "p4", &v40);
    v40 = (a3[1] - *a3) >> 5;
    sub_10004345C(buf, "p5", &v40);
    v40 = -1431655765 * ((a6[1] - *a6) >> 5);
    sub_10004345C(buf, "p6", &v40);
    sub_100071CAC(buf, "locationd");
    sub_100005DA4();
  }

  return v26;
}

void sub_1006D3F7C(uint64_t a1)
{
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v2 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 184);
    v4 = *(a1 + 224);
    v5 = *(a1 + 264);
    v6 = *(a1 + 304);
    v7 = *(a1 + 432);
    v8 = *(a1 + 344);
    v9 = *(a1 + 352);
    v10 = *(a1 + 368);
    *buf = 134350848;
    *&buf[4] = v3;
    *&buf[12] = 2050;
    *&buf[14] = v4;
    *&buf[22] = 2050;
    v139 = v5;
    v140 = 2050;
    v141 = v6;
    v142 = 2050;
    v143 = v7;
    v144 = 2050;
    v145 = v8;
    v146 = 1026;
    v147 = v9;
    v148 = 2050;
    v149 = v10;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "@AlsFlow, requery, %{public}lu, %{public}lu, %{public}lu, %{public}lu, %{public}lu, %{public}lu, items, fQueryRetries, %{public}d, fLastRetryTimestamp, %{public}.1lf", buf, 0x4Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190D430(a1);
  }

  if (*(a1 + 456) == 1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v11 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning NETWORK: in private location mode; not querying for unknown cells or unknown wifis", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190D668();
    }
  }

  else if ((*(**(a1 + 112) + 32))(*(a1 + 112)) == 1)
  {
    if (sub_100071CA0())
    {
      sub_10004FD18();
      *v128 = *(a1 + 352);
      sub_10004345C(buf, "requeryLocations", v128);
      *v128 = *(a1 + 184);
      sub_10004345C(buf, "p1", v128);
      *v128 = *(a1 + 264);
      sub_10004345C(buf, "p2", v128);
      *v128 = *(a1 + 304);
      sub_10004345C(buf, "p3", v128);
      *v128 = *(a1 + 432);
      sub_10004345C(buf, "p4", v128);
      *v128 = *(a1 + 224);
      sub_10004345C(buf, "p5", v128);
      *v128 = *(a1 + 344);
      sub_10004345C(buf, "p6", v128);
      sub_100071CAC(buf, "locationd");
      sub_100005DA4();
    }

    __src = 0;
    v126 = 0;
    v127 = 0;
    __p = 0;
    v123 = 0;
    v124 = 0;
    v119 = 0;
    v120 = 0;
    v121 = 0;
    v116 = 0;
    v117 = 0;
    v118 = 0;
    v113 = 0;
    v114 = 0;
    v115 = 0;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v12 = *(a1 + 168);
    if (v12 != (a1 + 176))
    {
      v13 = 0;
      do
      {
        if (v13 >= v127)
        {
          v15 = __src;
          v16 = v13 - __src;
          v17 = (v13 - __src) >> 5;
          v18 = v17 + 1;
          if ((v17 + 1) >> 59)
          {
            sub_10028C64C();
          }

          v19 = v127 - __src;
          if ((v127 - __src) >> 4 > v18)
          {
            v18 = v19 >> 4;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFE0)
          {
            v20 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            sub_1003F6B14(&__src, v20);
          }

          v21 = (v13 - __src) >> 5;
          v22 = (32 * v17);
          v23 = *(v12 + 3);
          *v22 = *(v12 + 2);
          v22[1] = v23;
          v13 = (32 * v17 + 32);
          v24 = (32 * v17 - 32 * v21);
          memcpy(&v22[-2 * v21], v15, v16);
          v25 = __src;
          __src = v24;
          v126 = v13;
          v127 = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          v14 = *(v12 + 3);
          *v13 = *(v12 + 2);
          *(v13 + 1) = v14;
          v13 += 32;
        }

        v126 = v13;
        v26 = v12[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = v12[2];
            v28 = *v27 == v12;
            v12 = v27;
          }

          while (!v28);
        }

        v12 = v27;
      }

      while (v27 != (a1 + 176));
    }

    v29 = *(a1 + 208);
    if (v29 != (a1 + 216))
    {
      v30 = v123;
      do
      {
        if (v30 >= v124)
        {
          v32 = __p;
          v33 = v30 - __p;
          v34 = (v30 - __p) >> 5;
          v35 = v34 + 1;
          if ((v34 + 1) >> 59)
          {
            sub_10028C64C();
          }

          v36 = v124 - __p;
          if ((v124 - __p) >> 4 > v35)
          {
            v35 = v36 >> 4;
          }

          if (v36 >= 0x7FFFFFFFFFFFFFE0)
          {
            v37 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v35;
          }

          if (v37)
          {
            sub_1003F6B14(&__p, v37);
          }

          v38 = (v30 - __p) >> 5;
          v39 = (32 * v34);
          v40 = *(v29 + 3);
          *v39 = *(v29 + 2);
          v39[1] = v40;
          v30 = (32 * v34 + 32);
          v41 = (32 * v34 - 32 * v38);
          memcpy(&v39[-2 * v38], v32, v33);
          v42 = __p;
          __p = v41;
          v123 = v30;
          v124 = 0;
          if (v42)
          {
            operator delete(v42);
          }
        }

        else
        {
          v31 = *(v29 + 3);
          *v30 = *(v29 + 2);
          *(v30 + 1) = v31;
          v30 += 32;
        }

        v123 = v30;
        v43 = v29[1];
        if (v43)
        {
          do
          {
            v44 = v43;
            v43 = *v43;
          }

          while (v43);
        }

        else
        {
          do
          {
            v44 = v29[2];
            v28 = *v44 == v29;
            v29 = v44;
          }

          while (!v28);
        }

        v29 = v44;
      }

      while (v44 != (a1 + 216));
    }

    v45 = *(a1 + 248);
    if (v45 != (a1 + 256))
    {
      do
      {
        sub_1006D3914(&v119, (v45 + 4));
        v46 = v45[1];
        if (v46)
        {
          do
          {
            v47 = v46;
            v46 = *v46;
          }

          while (v46);
        }

        else
        {
          do
          {
            v47 = v45[2];
            v28 = *v47 == v45;
            v45 = v47;
          }

          while (!v28);
        }

        v45 = v47;
      }

      while (v47 != (a1 + 256));
    }

    v48 = *(a1 + 288);
    if (v48 != (a1 + 296))
    {
      v49 = v117;
      do
      {
        if (v49 >= v118)
        {
          v54 = v116;
          v55 = v49 - v116;
          v56 = 0x2E8BA2E8BA2E8BA3 * ((v49 - v116) >> 3);
          v57 = v56 + 1;
          if ((v56 + 1) > 0x2E8BA2E8BA2E8BALL)
          {
            sub_10028C64C();
          }

          if (0x5D1745D1745D1746 * ((v118 - v116) >> 3) > v57)
          {
            v57 = 0x5D1745D1745D1746 * ((v118 - v116) >> 3);
          }

          if ((0x2E8BA2E8BA2E8BA3 * ((v118 - v116) >> 3)) >= 0x1745D1745D1745DLL)
          {
            v58 = 0x2E8BA2E8BA2E8BALL;
          }

          else
          {
            v58 = v57;
          }

          if (v58)
          {
            sub_1006DFDD4(&v116, v58);
          }

          v59 = 8 * ((v49 - v116) >> 3);
          v60 = *(v48 + 3);
          *v59 = *(v48 + 2);
          *(v59 + 16) = v60;
          v61 = *(v48 + 4);
          v62 = *(v48 + 5);
          v63 = *(v48 + 6);
          *(v59 + 80) = v48[14];
          *(v59 + 48) = v62;
          *(v59 + 64) = v63;
          *(v59 + 32) = v61;
          v49 = 88 * v56 + 88;
          v64 = (88 * v56 - v55);
          memcpy((v59 - v55), v54, v55);
          v65 = v116;
          v116 = v64;
          v117 = v49;
          v118 = 0;
          if (v65)
          {
            operator delete(v65);
          }
        }

        else
        {
          v50 = *(v48 + 3);
          *v49 = *(v48 + 2);
          *(v49 + 16) = v50;
          v51 = *(v48 + 4);
          v52 = *(v48 + 5);
          v53 = *(v48 + 6);
          *(v49 + 80) = v48[14];
          *(v49 + 48) = v52;
          *(v49 + 64) = v53;
          *(v49 + 32) = v51;
          v49 += 88;
        }

        v117 = v49;
        v66 = v48[1];
        if (v66)
        {
          do
          {
            v67 = v66;
            v66 = *v66;
          }

          while (v66);
        }

        else
        {
          do
          {
            v67 = v48[2];
            v28 = *v67 == v48;
            v48 = v67;
          }

          while (!v28);
        }

        v48 = v67;
      }

      while (v67 != (a1 + 296));
    }

    v68 = *(a1 + 416);
    if (v68 != (a1 + 424))
    {
      v69 = v111;
      do
      {
        if (v69 >= v112)
        {
          v70 = v110;
          v71 = v69 - v110;
          v72 = (v69 - v110) >> 3;
          v73 = v72 + 1;
          if ((v72 + 1) >> 61)
          {
            sub_10028C64C();
          }

          v74 = v112 - v110;
          if ((v112 - v110) >> 2 > v73)
          {
            v73 = v74 >> 2;
          }

          if (v74 >= 0x7FFFFFFFFFFFFFF8)
          {
            v75 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v75 = v73;
          }

          if (v75)
          {
            sub_1000B9708(&v110, v75);
          }

          v76 = (v69 - v110) >> 3;
          v77 = (8 * v72);
          v78 = (8 * v72 - 8 * v76);
          *v77 = v68[4];
          v69 = (v77 + 1);
          memcpy(v78, v70, v71);
          v79 = v110;
          v110 = v78;
          v111 = v69;
          v112 = 0;
          if (v79)
          {
            operator delete(v79);
          }
        }

        else
        {
          *v69 = v68[4];
          v69 += 8;
        }

        v111 = v69;
        v80 = v68[1];
        if (v80)
        {
          do
          {
            v81 = v80;
            v80 = *v80;
          }

          while (v80);
        }

        else
        {
          do
          {
            v81 = v68[2];
            v28 = *v81 == v68;
            v68 = v81;
          }

          while (!v28);
        }

        v68 = v81;
      }

      while (v81 != (a1 + 424));
    }

    v82 = *(a1 + 328);
    if (v82 != (a1 + 336))
    {
      v83 = v114;
      do
      {
        if (v83 >= v115)
        {
          v88 = v113;
          v89 = v83 - v113;
          v90 = 0xAAAAAAAAAAAAAAABLL * ((v83 - v113) >> 5);
          v91 = v90 + 1;
          if (v90 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v115 - v113) >> 5) > v91)
          {
            v91 = 0x5555555555555556 * ((v115 - v113) >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v115 - v113) >> 5) >= 0x155555555555555)
          {
            v92 = 0x2AAAAAAAAAAAAAALL;
          }

          else
          {
            v92 = v91;
          }

          if (v92)
          {
            sub_1006DFE30(&v113, v92);
          }

          v93 = (32 * ((v83 - v113) >> 5));
          v94 = *(v82 + 3);
          *v93 = *(v82 + 2);
          v93[1] = v94;
          v95 = *(v82 + 4);
          v96 = *(v82 + 5);
          v97 = *(v82 + 7);
          v93[4] = *(v82 + 6);
          v93[5] = v97;
          v93[2] = v95;
          v93[3] = v96;
          v83 = (96 * v90 + 96);
          v98 = (96 * v90 - v89);
          memcpy(v93 - v89, v88, v89);
          v99 = v113;
          v113 = v98;
          v114 = v83;
          v115 = 0;
          if (v99)
          {
            operator delete(v99);
          }
        }

        else
        {
          v84 = *(v82 + 3);
          *v83 = *(v82 + 2);
          *(v83 + 1) = v84;
          v85 = *(v82 + 4);
          v86 = *(v82 + 5);
          v87 = *(v82 + 7);
          *(v83 + 4) = *(v82 + 6);
          *(v83 + 5) = v87;
          *(v83 + 2) = v85;
          *(v83 + 3) = v86;
          v83 += 96;
        }

        v114 = v83;
        v100 = v82[1];
        if (v100)
        {
          do
          {
            v101 = v100;
            v100 = *v100;
          }

          while (v100);
        }

        else
        {
          do
          {
            v101 = v82[2];
            v28 = *v101 == v82;
            v82 = v101;
          }

          while (!v28);
        }

        v82 = v101;
      }

      while (v101 != (a1 + 336));
    }

    if (__src != v126 || __p != v123 || v110 != v111 || v116 != v117 || v119 != v120 || v113 != v114)
    {
      if (qword_1025D4620 == -1)
      {
        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      }

      else
      {
        sub_10190B63C();
        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      v103 = p_info[197];
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
      {
        v104 = *(a1 + 352);
        *buf = 134219520;
        *&buf[4] = (v126 - __src) >> 5;
        *&buf[12] = 2048;
        *&buf[14] = (v123 - __p) >> 5;
        *&buf[22] = 2048;
        v139 = 0x84BDA12F684BDA13 * ((v120 - v119) >> 4);
        v140 = 2048;
        v141 = 0x2E8BA2E8BA2E8BA3 * ((v117 - v116) >> 3);
        v142 = 2048;
        v143 = 0xAAAAAAAAAAAAAAABLL * ((v114 - v113) >> 5);
        v144 = 2048;
        v145 = (v111 - v110) >> 3;
        v146 = 1024;
        v147 = v104;
        _os_log_impl(dword_100000000, v103, OS_LOG_TYPE_DEBUG, "NETWORK: re-querying cells, %lu, %lu, %lu, %lu, %lu, wifis, %lu, retry count, %d", buf, 0x44u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10190B9FC(buf);
        v106 = p_info[197];
        v107 = *(a1 + 352);
        *v128 = 134219520;
        *&v128[4] = (v126 - __src) >> 5;
        *&v128[12] = 2048;
        *&v128[14] = (v123 - __p) >> 5;
        *&v128[22] = 2048;
        v129 = 0x84BDA12F684BDA13 * ((v120 - v119) >> 4);
        v130 = 2048;
        v131 = 0x2E8BA2E8BA2E8BA3 * ((v117 - v116) >> 3);
        v132 = 2048;
        v133 = 0xAAAAAAAAAAAAAAABLL * ((v114 - v113) >> 5);
        v134 = 2048;
        v135 = (v111 - v110) >> 3;
        v136 = 1024;
        v137 = v107;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v106, 2, "NETWORK: re-querying cells, %lu, %lu, %lu, %lu, %lu, wifis, %lu, retry count, %d", v128, 68, v110, v111, v112, v113, v114);
        v109 = v108;
        sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::requeryLocations()", "%s\n", v108);
        if (v109 != buf)
        {
          free(v109);
        }
      }

      sub_10000EC00(v128, "requeryLocations");
      *buf = 1;
      if ((v128[23] & 0x80000000) != 0)
      {
        sub_100007244(&buf[8], *v128, *&v128[8]);
      }

      else
      {
        *&buf[8] = *v128;
        v139 = *&v128[16];
      }

      *(a1 + 528) = sub_1006D3954(a1, &__src, &__p, &v119, &v116, &v113, &v110, buf);
      if (SHIBYTE(v139) < 0)
      {
        operator delete(*&buf[8]);
      }

      if ((v128[23] & 0x80000000) != 0)
      {
        operator delete(*v128);
      }
    }

    *(a1 + 368) = CFAbsoluteTimeGetCurrent();
    if (v110)
    {
      v111 = v110;
      operator delete(v110);
    }

    if (v113)
    {
      v114 = v113;
      operator delete(v113);
    }

    if (v116)
    {
      v117 = v116;
      operator delete(v116);
    }

    *buf = &v119;
    sub_10064AA34(buf);
    if (__p)
    {
      v123 = __p;
      operator delete(__p);
    }

    if (__src)
    {
      v126 = __src;
      operator delete(__src);
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v105 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v105, OS_LOG_TYPE_DEFAULT, "#Warning NETWORK: Location Services disabled, not querying location", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190D584();
    }
  }
}