void sub_100632094(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006320B8(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EC674();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t *sub_1006321F0(uint64_t *a1, uint64_t a2, uint64_t *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  a1[1] = *a3;
  v8 = a3[1];
  a1[2] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 3) = *a4;
  a1[5] = v9;
  *(a1 + 12) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 6) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Calorimetry/CLCalorieSourceAdapter.h", 191, "Source");
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_100632474(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v26 = v5;
    v27 = 1024;
    v28 = v12;
    v29 = 1024;
    v30 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = *a4;
    v16 = *(a4 + 4);
    v20[0] = 67109632;
    v20[1] = v5;
    v21 = 1024;
    v22 = v15;
    v23 = 1024;
    v24 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", v20, 20, v19);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLAccessoryDMFeatures>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLAccessoryDMFeatures>]", "%s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  return a1;
}

void sub_100632450(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100632474(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EC760();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t *sub_1006325AC(uint64_t *a1, uint64_t a2, uint64_t *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  a1[1] = *a3;
  v8 = a3[1];
  a1[2] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 3) = *a4;
  a1[5] = v9;
  *(a1 + 12) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 6) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Calorimetry/CLCalorieSourceAdapter.h", 191, "Source");
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_100632830(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v26 = v5;
    v27 = 1024;
    v28 = v12;
    v29 = 1024;
    v30 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = *a4;
    v16 = *(a4 + 4);
    v20[0] = 67109632;
    v20[1] = v5;
    v21 = 1024;
    v22 = v15;
    v23 = 1024;
    v24 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", v20, 20, v19);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryFMEmbeddingsAccessory>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLCalorimetryFMEmbeddingsAccessory>]", "%s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  return a1;
}

void sub_10063280C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100632830(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EC84C();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t *sub_100632968(uint64_t *a1, uint64_t a2, uint64_t *a3, int *a4, uint64_t a5)
{
  v5 = a5;
  *a1 = a2;
  a1[1] = *a3;
  v8 = a3[1];
  a1[2] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a4 + 2);
  *(a1 + 3) = *a4;
  a1[5] = v9;
  *(a1 + 12) = a5;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!*(a1 + 6) || (*(a1 + 28)) && !*a1)
  {
    sub_1018EBA18();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Calorimetry/CLCalorieSourceAdapter.h", 191, "Source");
    __break(1u);
  }

  if (*a4)
  {
    if ((a4[1] & 1) == 0)
    {
      v10 = *a1;
      if (*a1)
      {
        sub_100632BEC(v10);
      }
    }
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v11 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a4;
    v13 = *(a4 + 4);
    *buf = 67109632;
    v26 = v5;
    v27 = 1024;
    v28 = v12;
    v29 = 1024;
    v30 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", buf, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EB7F8(buf);
    v15 = *a4;
    v16 = *(a4 + 4);
    v20[0] = 67109632;
    v20[1] = v5;
    v21 = 1024;
    v22 = v15;
    v23 = 1024;
    v24 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "[SourceWrapper-%d] creating source with mode, %d, running both, %d", v20, 20, v19);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "CLCalorieSourceAdapter::Source<CLNatalieInput<CLCalorimetryReducedEmbeddings>>::Source(LegacySourceT *, std::shared_ptr<CompositeWrapper>, const SourceConfig &, SourceType) [LegacySourceT = CLNatalieInput<CLCalorimetryReducedEmbeddings>]", "%s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  return a1;
}

void sub_100632BC8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100632BEC(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Disabling the %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EC938();
  }

  (*(*a1 + 88))(a1);
  result = (*(*a1 + 72))(a1);
  if ((*(a1 + 121) & 1) == 0)
  {
    *(a1 + 80) = 0;
    a1[11] = 0;
  }

  return result;
}

uint64_t sub_100632D24(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  v4 = *(a1 + 80);
  if ((v4 & 1) == 0)
  {
    if ((*(*a1 + 64))(a1))
    {
      *(a1 + 72) = v2;
      v4 = 1;
      *(a1 + 80) = 1;
      *(a1 + 120) = 0;
    }

    else
    {
      v4 = *(a1 + 80);
    }
  }

  v5 = v2 + v3;
  if (*(a1 + 88) >= v2 + v3)
  {
    v5 = *(a1 + 88);
  }

  *(a1 + 88) = v5;
  return v4 & 1;
}

void sub_100632DB4(uint64_t *a1, uint64_t a2, double a3)
{
  v3 = a2;
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v6 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 12);
    v8 = *(a1 + 6);
    v9 = *(a1 + 28);
    if (v8)
    {
      v10 = *(a1 + 28);
      if (v8 == 1)
      {
        v9 = 1;
      }
    }

    else
    {
      v10 = 1;
    }

    *buf = 67110144;
    v28 = v7;
    v29 = 1024;
    v30 = v10;
    v31 = 1024;
    v32 = v9;
    v33 = 2048;
    v34 = a3;
    v35 = 1024;
    v36 = v3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] Requesting source active, legacyMode, %d, dataProviderMode, %d, duration, %f, hardReset, %d", buf, 0x24u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018EA6D8();
    }

    v17 = *(a1 + 6);
    v18 = *(a1 + 28);
    if (v17)
    {
      v19 = *(a1 + 28);
      if (v17 == 1)
      {
        v18 = 1;
      }
    }

    else
    {
      v19 = 1;
    }

    LOWORD(v23) = 1024;
    *(&v23 + 2) = v19;
    HIWORD(v23) = 1024;
    v24 = a3;
    v25 = 1024;
    v26 = v3;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] Requesting source active, legacyMode, %d, dataProviderMode, %d, duration, %f, hardReset, %d", &v22, 36, 67110144, v23, v18);
    v21 = v20;
    sub_100152C7C("Generic", 1, 0, 2, "void CLCalorieSourceAdapter::Source<CLNatalieInput<CLStepCountEntry>>::requestActive(CFTimeInterval, BOOL) [LegacySourceT = CLNatalieInput<CLStepCountEntry>]", "%s\n", v20);
    if (v21 != buf)
    {
      free(v21);
    }
  }

  v11 = *(a1 + 6);
  if (!v11 || *(a1 + 28) == 1)
  {
    v12 = *a1;
    Current = CFAbsoluteTimeGetCurrent();
    sub_100633094(v12, v3, Current, a3);
    v11 = *(a1 + 6);
  }

  if (v11 == 1 || *(a1 + 28) == 1)
  {
    if ((a1[8] & 1) == 0)
    {
      sub_101200484(a1[1], *(a1 + 12));
    }

    v14 = sub_1000081AC();
    if (v3)
    {
      v15 = v14 + a3;
    }

    else
    {
      v16 = 0.0;
      if (*(a1 + 64) == 1)
      {
        v16 = *(a1 + 7);
      }

      v15 = v14 + a3;
      if (v16 >= v15)
      {
        v15 = v16;
      }
    }

    *(a1 + 7) = v15;
    *(a1 + 64) = 1;
  }
}

uint64_t sub_100633094(uint64_t a1, int a2, double a3, double a4)
{
  if ((*(a1 + 80) & 1) == 0 && (*(*a1 + 64))(a1))
  {
    *(a1 + 72) = a3;
    *(a1 + 80) = 1;
    *(a1 + 120) = 0;
  }

  v8 = a3 + a4;
  if (!a2 && *(a1 + 88) >= v8)
  {
    v8 = *(a1 + 88);
  }

  *(a1 + 88) = v8;
  return *(a1 + 80);
}

uint64_t sub_100633128(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Enabling the spectators for %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018ECA24();
  }

  return (*(*a1 + 80))(a1);
}

uint64_t sub_100633228(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Enabling the spectators for %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018ECBFC();
  }

  return (*(*a1 + 80))(a1);
}

uint64_t sub_100633328(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Enabling the spectators for %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018ECCE8();
  }

  return (*(*a1 + 80))(a1);
}

uint64_t sub_100633428(void *a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018EA5C0();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[1];
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Enabling the spectators for %s buffer", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018ECDD4();
  }

  return (*(*a1 + 80))(a1);
}

uint64_t sub_100633528(uint64_t *a1, _OWORD *a2, double a3, double a4)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  sub_1011FEC48(a1, &v16, a3 - a4, a3 + a4);
  v6 = v16;
  if (v16 != v17)
  {
    v7 = v16 + 4;
    v8 = v16;
    if (v16 + 4 != v17)
    {
      v9 = *v16;
      v8 = v16;
      v10 = v16 + 4;
      do
      {
        v11 = *v10;
        v10 += 4;
        v12 = v11;
        if (vabdd_f64(a3, v11) < vabdd_f64(a3, v9))
        {
          v9 = v12;
          v8 = v7;
        }

        v7 = v10;
      }

      while (v10 != v17);
    }

    if (v8 != v17)
    {
      v13 = *(v8 + 1);
      *a2 = *v8;
      a2[1] = v13;
      v14 = 1;
      if (!v6)
      {
        return v14;
      }

      goto LABEL_11;
    }
  }

  v14 = 0;
  if (v16)
  {
LABEL_11:
    v17 = v6;
    operator delete(v6);
  }

  return v14;
}

void sub_1006335F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006336D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006337B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006338BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006338D8(uint64_t *a1, _OWORD *a2, double a3, double a4)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  sub_1011FECF4(a1, &v18, a3 - a4, a3 + a4);
  v6 = v18;
  if (v18 != v19)
  {
    v7 = v18 + 10;
    v8 = v18;
    if (v18 + 10 != v19)
    {
      v9 = *v18;
      v8 = v18;
      v10 = v18 + 10;
      do
      {
        v11 = *v10;
        v10 += 10;
        v12 = v11;
        if (vabdd_f64(a3, v11) < vabdd_f64(a3, v9))
        {
          v9 = v12;
          v8 = v7;
        }

        v7 = v10;
      }

      while (v10 != v19);
    }

    if (v8 != v19)
    {
      *a2 = *v8;
      v13 = *(v8 + 1);
      v14 = *(v8 + 2);
      v15 = *(v8 + 4);
      a2[3] = *(v8 + 3);
      a2[4] = v15;
      a2[1] = v13;
      a2[2] = v14;
      v16 = 1;
      if (!v6)
      {
        return v16;
      }

      goto LABEL_11;
    }
  }

  v16 = 0;
  if (v18)
  {
LABEL_11:
    v19 = v6;
    operator delete(v6);
  }

  return v16;
}

void sub_1006339B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100633AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100633BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100633C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100633CB0(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_1011FEDAC(a1, &v14, a3 - a4, a3 + a4);
  v6 = v14;
  if (v14 != v15)
  {
    v7 = v14 + 7;
    v8 = v14;
    if (v14 + 7 != v15)
    {
      v8 = v14;
      do
      {
        if (vabdd_f64(a3, v7[1]) < vabdd_f64(a3, v8[1]))
        {
          v8 = v7;
        }

        v7 += 7;
      }

      while (v7 != v15);
    }

    if (v8 != v15)
    {
      v9 = *v8;
      v10 = *(v8 + 1);
      v11 = *(v8 + 2);
      *(a2 + 48) = v8[6];
      *(a2 + 16) = v10;
      *(a2 + 32) = v11;
      *a2 = v9;
      v12 = 1;
      if (!v6)
      {
        return v12;
      }

      goto LABEL_11;
    }
  }

  v12 = 0;
  if (v14)
  {
LABEL_11:
    v15 = v6;
    operator delete(v6);
  }

  return v12;
}

void sub_100633D80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100633D9C(uint64_t *a1, void *a2, double a3, double a4)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_1011FEE6C(a1, &v12, a3 - a4, a3 + a4);
  v6 = v12;
  if (v12 != v13)
  {
    v7 = v12 + 258;
    v8 = v12;
    if (v12 + 258 != v13)
    {
      v9 = *v12;
      v8 = v12;
      do
      {
        if (vabdd_f64(a3, *v7) < vabdd_f64(a3, v9))
        {
          v9 = *v7;
          v8 = v7;
        }

        v7 += 258;
      }

      while (v7 != v13);
    }

    if (v8 != v13)
    {
      memcpy(a2, v8, 0x80CuLL);
      v10 = 1;
      if (!v6)
      {
        return v10;
      }

      goto LABEL_11;
    }
  }

  v10 = 0;
  if (v12)
  {
LABEL_11:
    v13 = v6;
    operator delete(v6);
  }

  return v10;
}

void sub_100633E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100633E84(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_1011FF504(a1, &v21, a3 - a4, a3 + a4);
  v6 = v21;
  if (v21 != v22)
  {
    v7 = v21 + 15;
    v8 = v21;
    if (v21 + 15 != v22)
    {
      v9 = *v21;
      v8 = v21;
      v10 = v21 + 15;
      do
      {
        v11 = *v10;
        v10 += 15;
        v12 = v11;
        if (vabdd_f64(a3, v11) < vabdd_f64(a3, v9))
        {
          v9 = v12;
          v8 = v7;
        }

        v7 = v10;
      }

      while (v10 != v22);
    }

    if (v8 != v22)
    {
      v13 = *v8;
      v14 = *(v8 + 1);
      v15 = *(v8 + 3);
      *(a2 + 32) = *(v8 + 2);
      *(a2 + 48) = v15;
      *a2 = v13;
      *(a2 + 16) = v14;
      v16 = *(v8 + 4);
      v17 = *(v8 + 5);
      v18 = *(v8 + 6);
      *(a2 + 112) = v8[14];
      *(a2 + 80) = v17;
      *(a2 + 96) = v18;
      *(a2 + 64) = v16;
      v19 = 1;
      if (!v6)
      {
        return v19;
      }

      goto LABEL_11;
    }
  }

  v19 = 0;
  if (v21)
  {
LABEL_11:
    v22 = v6;
    operator delete(v6);
  }

  return v19;
}

void sub_100633F6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100633F88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_signpost_emit_with_name_impl(a1, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, va, 0x2Cu);
}

BOOL sub_100633FC8()
{
  v1 = qword_1025D4238;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_100633FE8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_INFO, a4, va, 0x2Cu);
}

void sub_100634008(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6, uint8_t *a7)
{

  _os_signpost_emit_with_name_impl(a1, v7, OS_SIGNPOST_EVENT, a4, a5, a6, a7, 0x2Cu);
}

void sub_100634024(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_INFO, a4, a5, 0x2Cu);
}

uint64_t sub_100634088(uint64_t a1, const void *a2, int a3)
{
  bzero(a1, 0x658uLL);
  *v17 = 0u;
  *v18 = 0u;
  *v15 = 0u;
  *v16 = 0u;
  v13 = 0u;
  *v14 = 0u;
  *v12 = 0u;
  v6 = malloc_type_malloc(a3 + 1, 0x5AE85BE9uLL);
  memcpy(v6, a2, a3);
  *(v6 + a3) = 0;
  if (sub_100635AB0(v12, 14, v6) == 14)
  {
    if (sub_100635CE0(a1, v12[0]))
    {
      *(a1 + 96) |= 1uLL;
    }

    if (sub_100635DA4(a1 + 16, v12[1], v13))
    {
      *(a1 + 96) |= 2uLL;
    }

    if (sub_100635DA4(a1 + 40, *(&v13 + 1), v14[0]))
    {
      *(a1 + 96) |= 4uLL;
    }

    if (v14[1])
    {
      v7 = *v14[1];
      if ((v7 - 48) <= 9)
      {
        v7 = atoi(v14[1]);
      }

      *(a1 + 64) = v7;
      *(a1 + 96) |= 8uLL;
    }

    if (v15[0])
    {
      v8 = *v15[0];
      if ((v8 - 48) <= 9)
      {
        v8 = atoi(v15[0]);
      }

      *(a1 + 68) = v8;
      *(a1 + 96) |= 0x10uLL;
    }

    if (v15[1])
    {
      *(a1 + 72) = (atof(v15[1]) * 10.0);
      *(a1 + 96) |= 0x20uLL;
    }

    if (v16[0])
    {
      *(a1 + 76) = (atof(v16[0]) * 10.0);
      *(a1 + 96) |= 0x40uLL;
    }

    if (v17[0])
    {
      *(a1 + 80) = (atof(v17[0]) * 10.0);
      *(a1 + 96) |= 0x80uLL;
    }

    if (v18[0])
    {
      *(a1 + 84) = (atof(v18[0]) * 10.0);
      *(a1 + 96) |= 0x100uLL;
    }

    if (v18[1])
    {
      v9 = *v18[1];
      if ((v9 - 48) <= 9)
      {
        v9 = atoi(v18[1]);
      }

      v10 = 0;
      *(a1 + 88) = v9;
      *(a1 + 96) |= 0x200uLL;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 8;
  }

  free(v6);
  return v10;
}

uint64_t sub_1006342EC(int *a1, const void *a2, int a3)
{
  bzero(a1, 0x658uLL);
  *v15 = 0u;
  *v16 = 0u;
  memset(v14, 0, sizeof(v14));
  *v13 = 0u;
  v6 = malloc_type_malloc(a3 + 1, 0x7173F870uLL);
  memcpy(v6, a2, a3);
  *(v6 + a3) = 0;
  if (sub_100635AB0(v13, 18, v6) == 18)
  {
    if (v13[0])
    {
      v7 = *v13[0];
      if ((v7 - 48) <= 9)
      {
        v7 = atoi(v13[0]);
      }

      *a1 = v7;
      *(a1 + 9) |= 1uLL;
    }

    if (v13[1])
    {
      v8 = *v13[1];
      if ((v8 - 48) <= 9)
      {
        v8 = atoi(v13[1]);
      }

      a1[1] = v8;
      *(a1 + 9) |= 2uLL;
    }

    for (i = 0; i != 12; ++i)
    {
      v10 = *(v14 + i);
      if (v10)
      {
        v11 = *v10;
        if ((v11 - 48) <= 9)
        {
          v11 = atoi(v10);
        }

        a1[i + 2] = v11;
        *(a1 + 9) |= (4 << i);
      }
    }

    if (v15[0])
    {
      a1[14] = (atof(v15[0]) * 10.0);
      *(a1 + 9) |= 0x4000uLL;
    }

    if (v15[1])
    {
      a1[15] = (atof(v15[1]) * 10.0);
      *(a1 + 9) |= 0x8000uLL;
    }

    if (v16[0])
    {
      a1[16] = (atof(v16[0]) * 10.0);
      *(a1 + 9) |= 0x10000uLL;
    }

    free(v6);
    return 1;
  }

  else
  {
    free(v6);
    return 8;
  }
}

uint64_t sub_100634500(int *a1, const void *a2, int a3)
{
  bzero(a1, 0x658uLL);
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  *v19 = 0u;
  v20 = 0u;
  *v18 = 0u;
  v6 = malloc_type_malloc(a3 + 1, 0xC2BDC7DEuLL);
  memcpy(v6, a2, a3);
  *(v6 + a3) = 0;
  v7 = sub_100635AB0(v18, 19, v6);
  if (v7 > 2)
  {
    v9 = v7;
    if (v18[0])
    {
      v10 = *v18[0];
      if ((v10 - 48) <= 9)
      {
        v10 = atoi(v18[0]);
      }

      *a1 = v10;
      *(a1 + 10) |= 1uLL;
    }

    if (v18[1])
    {
      v11 = *v18[1];
      if ((v11 - 48) <= 9)
      {
        v11 = atoi(v18[1]);
      }

      a1[1] = v11;
      *(a1 + 10) |= 2uLL;
    }

    if (v19[0])
    {
      v12 = *v19[0];
      if ((v12 - 48) <= 9)
      {
        v12 = atoi(v19[0]);
      }

      a1[2] = v12;
      *(a1 + 10) |= 4uLL;
    }

    if (v9 >= 7)
    {
      v13 = 0;
      v14 = a1 + 3;
      v15 = v21;
      v16 = 11;
      do
      {
        if (v13 >= a1[2])
        {
          break;
        }

        sub_100635EB4(v14, *(v15 - 3), *(v15 - 2), *(v15 - 1), *v15);
        *(a1 + 10) |= (8 << v13);
        if (v16 > v9)
        {
          break;
        }

        v15 += 4;
        v14 += 4;
        v16 += 4;
      }

      while (v13++ < 3);
    }

    free(v6);
    return 2;
  }

  else
  {
    free(v6);
    return 8;
  }
}

uint64_t sub_1006346FC(uint64_t a1, const void *a2, int a3)
{
  bzero(a1, 0x658uLL);
  v22 = 0;
  *v20 = 0u;
  *v21 = 0u;
  v18 = 0u;
  *v19 = 0u;
  *v16 = 0u;
  v17 = 0u;
  v6 = malloc_type_malloc(a3 + 1, 0x2C62167DuLL);
  memcpy(v6, a2, a3);
  *(v6 + a3) = 0;
  v7 = sub_100635AB0(v16, 13, v6);
  if (v7 <= 0xD && (v8 = v7, ((1 << v7) & 0x3400) != 0))
  {
    if (sub_100635CE0(a1, v16[0]))
    {
      *(a1 + 96) |= 1uLL;
    }

    if (v16[1])
    {
      v9 = *v16[1];
      if ((v9 - 48) <= 9)
      {
        v9 = atoi(v16[1]);
      }

      *(a1 + 12) = v9;
      *(a1 + 96) |= 2uLL;
    }

    if (sub_100635DA4(a1 + 16, v17, *(&v17 + 1)))
    {
      *(a1 + 96) |= 4uLL;
    }

    if (sub_100635DA4(a1 + 40, v18, *(&v18 + 1)))
    {
      *(a1 + 96) |= 8uLL;
    }

    if (v19[0])
    {
      *(a1 + 64) = (atof(v19[0]) * 10.0);
      *(a1 + 96) |= 0x10uLL;
    }

    if (v19[1])
    {
      *(a1 + 68) = (atof(v19[1]) * 10.0);
      *(a1 + 96) |= 0x20uLL;
    }

    if (v20[0])
    {
      v10 = atoi(v20[0]);
      *(a1 + 72) = v10 / 10000;
      *(a1 + 76) = v10 / 100 % 100;
      *(a1 + 80) = v10 % 100;
      *(a1 + 96) |= 0x40uLL;
    }

    if (v8 >= 0xB)
    {
      if (v20[1])
      {
        *(a1 + 84) = (atof(v20[1]) * 10.0);
        *(a1 + 96) |= 0x80uLL;
      }

      if (v8 != 11)
      {
        if (v21[0])
        {
          v11 = *v21[0];
          if ((v11 - 48) <= 9)
          {
            v11 = atoi(v21[0]);
          }

          *(a1 + 88) = v11;
          *(a1 + 96) |= 0x100uLL;
        }

        if (v8 >= 0xD && v21[1])
        {
          v12 = *v21[1];
          if ((v12 - 48) <= 9)
          {
            v12 = atoi(v21[1]);
          }

          *(a1 + 92) = v12;
          *(a1 + 96) |= 0x200uLL;
        }
      }
    }

    free(v6);
    if (*(a1 + 64) / 10.0 * 0.514444444 <= 600.0)
    {
      return 3;
    }

    if (qword_1025D4600 != -1)
    {
      sub_1018ECEC0();
    }

    v13 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "invalid GPRMC,speed above max", v15, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018ECED4();
    }
  }

  else
  {
    free(v6);
  }

  return 8;
}

uint64_t sub_100634A6C(CFAbsoluteTime *a1, const void *a2, int a3)
{
  v6 = malloc_type_malloc(a3 + 1, 0xA842EB7CuLL);
  if (!v6)
  {
    return 8;
  }

  v7 = v6;
  v8 = 8;
  if (a1 && a2)
  {
    *v34 = 0u;
    memset(v35, 0, 464);
    *v32 = 0u;
    *v33 = 0u;
    bzero(a1, 0x658uLL);
    memcpy(v7, a2, a3);
    *(v7 + a3) = 0;
    if (sub_100635AB0(v32, 107, v7) > 5)
    {
      if (v32[0])
      {
        a1[3] = atof(v32[0]);
        *a1 = CFAbsoluteTimeGetCurrent();
        a1[1] = sub_1000081AC();
        a1[2] = sub_1000137E0();
        if (v32[1])
        {
          v10 = *v32[1];
          if ((v10 - 48) <= 9)
          {
            v10 = atoi(v32[1]);
          }

          *(a1 + 8) = v10;
          if (v33[0])
          {
            v11 = *v33[0];
            if ((v11 - 48) <= 9)
            {
              v11 = atoi(v33[0]);
            }

            *(a1 + 9) = v11;
            if (v33[1])
            {
              v12 = *v33[1];
              if ((v12 - 48) <= 9)
              {
                v12 = atoi(v33[1]);
              }

              *(a1 + 10) = v12;
            }

            if (v34[0])
            {
              v13 = *v34[0];
              if (v13 - 48 <= 9)
              {
                v13 = atoi(v34[0]);
              }

              *(a1 + 11) = v13;
              if (v13)
              {
                if (v13 <= 0x32)
                {
                  v21 = v13;
                  v22 = v35;
                  while (1)
                  {
                    v23 = *(v22 - 1);
                    if (!v23)
                    {
                      break;
                    }

                    a1[6] = atof(v23);
                    if (!*v22)
                    {
                      if (qword_1025D48A0 != -1)
                      {
                        sub_1018ECFA8();
                      }

                      v26 = qword_1025D48A8;
                      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
                      {
                        LOWORD(v29[0]) = 0;
                        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "STARK,PASCD,unexpected empty sample field", v29, 2u);
                      }

                      if (sub_10000A100(121, 2))
                      {
                        sub_1018ED090();
                      }

                      goto LABEL_88;
                    }

                    v24 = atof(*v22);
                    a1[56] = v24;
                    if (v24 > 600.0)
                    {
                      if (qword_1025D48A0 != -1)
                      {
                        sub_1018ECFA8();
                      }

                      v27 = qword_1025D48A8;
                      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
                      {
                        LOWORD(v29[0]) = 0;
                        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "STARK,PASCD,invalid speed,above max", v29, 2u);
                      }

                      if (sub_10000A100(121, 2))
                      {
                        sub_1018ECFBC();
                      }

                      goto LABEL_88;
                    }

                    v22 += 2;
                    ++a1;
                    v8 = 4;
                    if (!--v21)
                    {
                      goto LABEL_89;
                    }
                  }

                  if (qword_1025D48A0 != -1)
                  {
                    sub_1018ECFA8();
                  }

                  v25 = qword_1025D48A8;
                  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
                  {
                    LOWORD(v29[0]) = 0;
                    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "STARK,PASCD,unexpected empty timeOffset field", v29, 2u);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    sub_1018ED164();
                  }
                }

                else
                {
                  if (qword_1025D48A0 != -1)
                  {
                    sub_1018ECFA8();
                  }

                  v14 = qword_1025D48A8;
                  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
                  {
                    v15 = *(a1 + 11);
                    v29[0] = 67109376;
                    v29[1] = v15;
                    v30 = 1024;
                    v31 = 50;
                    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#Warning STARK,PASCD,invalid sampleCount,%d,max,%d", v29, 0xEu);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    sub_1018ED238(a1 + 11);
                  }
                }

LABEL_88:
                v8 = 8;
              }

              else
              {
                if (qword_1025D48A0 != -1)
                {
                  sub_1018ECFA8();
                }

                v20 = qword_1025D48A8;
                if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
                {
                  LOWORD(v29[0]) = 0;
                  _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "STARK,PASCD,sampleCount==0", v29, 2u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_1018ED328();
                }
              }
            }

            else
            {
              if (qword_1025D48A0 != -1)
              {
                sub_1018ECFA8();
              }

              v19 = qword_1025D48A8;
              if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
              {
                LOWORD(v29[0]) = 0;
                _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "STARK,PASCD,invalid sampleCount", v29, 2u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1018ED3FC();
              }
            }
          }

          else
          {
            if (qword_1025D48A0 != -1)
            {
              sub_1018ECFA8();
            }

            v18 = qword_1025D48A8;
            if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(v29[0]) = 0;
              _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "STARK,PASCD,invalid transmissionState", v29, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018ED4D0();
            }
          }
        }

        else
        {
          if (qword_1025D48A0 != -1)
          {
            sub_1018ECFA8();
          }

          v17 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(v29[0]) = 0;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "STARK,PASCD,invalid sensorType", v29, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018ED5A4();
          }
        }
      }

      else
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018ECFA8();
        }

        v16 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v29[0]) = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "STARK,PASCD,invalid timestamp", v29, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018ED678();
        }
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018ECFA8();
      }

      v9 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v29[0]) = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "STARK,PASCD,invalid fields", v29, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018ED74C();
      }
    }
  }

LABEL_89:
  free(v7);
  return v8;
}

uint64_t sub_100635138(double *a1, const void *a2, int a3)
{
  v6 = malloc_type_malloc(a3 + 1, 0x55D3DCEBuLL);
  if (v6)
  {
    v7 = v6;
    v8 = 8;
    if (!a1 || !a2)
    {
      goto LABEL_63;
    }

    *v32 = 0u;
    memset(v33, 0, 496);
    bzero(a1, 0x658uLL);
    memcpy(v7, a2, a3);
    *(v7 + a3) = 0;
    if (sub_100635AB0(v32, 205, v7) <= 2)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018ECFA8();
      }

      v9 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v29[0]) = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "STARK,PAGCD,invalid fields", v29, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018EDC60();
      }

      goto LABEL_63;
    }

    if (!v32[0])
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018ECFA8();
      }

      v15 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v29[0]) = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "STARK,PAGCD,invalid timestamp", v29, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018EDB8C();
      }

      goto LABEL_63;
    }

    *a1 = atof(v32[0]);
    if (!v32[1])
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018ECFA8();
      }

      v16 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v29[0]) = 0;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "STARK,PAGCD,invalid sampleCount", v29, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018EDAB8();
      }

      goto LABEL_63;
    }

    v10 = *v32[1];
    if ((v10 - 48) <= 9)
    {
      v10 = atoi(v32[1]);
    }

    v12 = a1 + 11;
    v11 = *(a1 + 11);
    *(a1 + 2) = v10;
    if (v11 <= 0x32)
    {
      if (v10 < 1)
      {
        v8 = 5;
LABEL_63:
        free(v7);
        return v8;
      }

      v17 = v10;
      v18 = a1 + 6;
      v19 = v33 + 8;
      while (1)
      {
        v20 = *(v19 - 1);
        if (!v20)
        {
          break;
        }

        *(v18 - 3) = atof(v20);
        v21 = *v19;
        if (*v19)
        {
          *(v18 - 2) = atof(*v19);
          v22 = 1;
        }

        else
        {
          v22 = 0;
        }

        *(a1 + 3) = v22;
        v23 = *(v19 + 1);
        if (v23)
        {
          *(v18 - 1) = atof(*(v19 + 1));
          v24 = 1;
        }

        else
        {
          v24 = 0;
        }

        *(a1 + 4) = v24;
        v25 = *(v19 + 2);
        if (v25)
        {
          *v18 = atof(v25);
          *(a1 + 5) = 1;
        }

        else
        {
          *(a1 + 5) = 0;
          if (!(v21 | v23))
          {
            if (qword_1025D48A0 != -1)
            {
              sub_1018ECFA8();
            }

            v27 = qword_1025D48A8;
            if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(v29[0]) = 0;
              _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "STARK,PAGCD,invalid sample set, all empty", v29, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018ED820();
            }

            goto LABEL_62;
          }
        }

        v18 += 4;
        v19 += 32;
        v8 = 5;
        if (!--v17)
        {
          goto LABEL_63;
        }
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018ECFA8();
      }

      v26 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v29[0]) = 0;
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "STARK,PAGCD,invalid sample time offset", v29, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018ED8F4();
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018ECFA8();
      }

      v13 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v14 = *v12;
        v29[0] = 67109376;
        v29[1] = v14;
        v30 = 1024;
        v31 = 50;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "STARK,PAGCD,invalid sampleCount,%d,max,%d", v29, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018ED9C8(v12);
      }
    }

LABEL_62:
    v8 = 8;
    goto LABEL_63;
  }

  return 8;
}

uint64_t sub_100635630(CFAbsoluteTime *a1, const void *a2, int a3)
{
  v6 = malloc_type_malloc(a3 + 1, 0x87354637uLL);
  if (!v6)
  {
    return 8;
  }

  v7 = v6;
  v8 = 8;
  if (a1 && a2)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    bzero(a1, 0x658uLL);
    memcpy(v7, a2, a3);
    *(v7 + a3) = 0;
    if (sub_100635AB0(&v15, 3, v7) > 2)
    {
      if (v15)
      {
        a1[1] = atof(v15);
        if (!v16)
        {
          goto LABEL_18;
        }

        v10 = *v16;
        if ((v10 - 48) <= 9)
        {
          v10 = atoi(v16);
        }

        if (v10 == 84)
        {
          *a1 = CFAbsoluteTimeGetCurrent();
          v8 = 7;
        }

        else
        {
LABEL_18:
          if (qword_1025D48A0 != -1)
          {
            sub_1018ECFA8();
          }

          v11 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
          {
            *v14 = 0;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "STARK,GPHDT,invalid degrees true indication", v14, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018EDD34();
          }
        }
      }

      else
      {
        if (qword_1025D48A0 != -1)
        {
          sub_1018ECFA8();
        }

        v12 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          *v14 = 0;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "STARK,GPHDT,invalid heading", v14, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018EDE08();
        }
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018ECFA8();
      }

      v9 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *v14 = 0;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "STARK,GPHDT,invalid fields", v14, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018EDEDC();
      }
    }
  }

  free(v7);
  return v8;
}

uint64_t sub_1006358B0(uint64_t a1, int a2)
{
  if (a2 < 5)
  {
    return 0;
  }

  else
  {
    v2 = 0;
    v3 = (a1 + 1);
    v4 = (a2 - 3) - 1;
    do
    {
      v5 = *v3++;
      v2 ^= v5;
      --v4;
    }

    while (v4);
  }

  return v2;
}

BOOL sub_1006358E8(uint64_t a1, int a2)
{
  if (a2 < 5)
  {
    v4 = 0;
  }

  else
  {
    LOBYTE(v4) = 0;
    v5 = (a2 - 3) - 1;
    v6 = (a1 + 1);
    do
    {
      v7 = *v6++;
      LOBYTE(v4) = v7 ^ v4;
      --v5;
    }

    while (v5);
    v4 = v4;
  }

  __sprintf_chk(__s1, 0, 3uLL, "%X%X", v4 >> 4, v4 & 0xF);
  return strncmp(__s1, (a1 + a2 - 2), 2uLL) == 0;
}

unint64_t sub_100635988(unint64_t *a1, unint64_t *a2, char *__s, int a4)
{
  v7 = a4;
  result = memchr(__s, 36, a4);
  *a1 = result;
  if (result)
  {
    v9 = &__s[v7];
    result = memchr((result + 1), 42, &v9[~result]);
    *a2 = result;
    if (result)
    {
      v10 = result + 2;
      if (result + 2 >= v9)
      {
        return 0;
      }

      else
      {
        *a2 = v10;
        v11 = *a1;
        v12 = (*a1 + 1);
        while (v12 < v10)
        {
          v13 = memchr(v12, 36, v10 - v12 + 1);
          if (!v13)
          {
            break;
          }

          LODWORD(v11) = v13;
          *a1 = v13;
          v12 = v13 + 1;
          v10 = *a2;
        }

        return (v10 - v11 + 1);
      }
    }
  }

  return result;
}

uint64_t sub_100635AB0(uint64_t a1, int a2, char *__str)
{
  v6 = strtok(__str, ",*");
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = strlen(v6);
  v9 = strtok(0, ",*");
  v10 = 0;
  if (v9)
  {
    v11 = (a2 - 1);
    if (a2 >= 1)
    {
      v12 = v9;
      LODWORD(v10) = 0;
      v13 = v7 + v8;
      v25 = a2 - 2;
      while (1)
      {
        v14 = v12 + ~v13;
        v15 = v14 >= 1 && v10 < v11;
        if (v15)
        {
          v16 = v12 - v13;
          v17 = (v16 - 2);
          if ((v25 - v10) >= v17)
          {
            v18 = (v16 - 2);
          }

          else
          {
            v18 = (v25 - v10);
          }

          bzero((a1 + 8 * v10), 8 * v18 + 8);
          v19 = v10 + 1;
          v20 = v11 - 1 - v10;
          if (v20 >= v17)
          {
            LODWORD(v20) = v17;
          }

          LODWORD(v10) = v10 + v20 + 1;
          do
          {
            if (v14 < 2)
            {
              break;
            }

            --v14;
            v15 = v19++ < v11;
          }

          while (v15);
        }

        *(a1 + 8 * v10) = v12;
        if (sub_100635A4C(v12))
        {
          break;
        }

        v10 = (v10 + 1);
        v21 = strlen(v12);
        v22 = strtok(0, ",*");
        if (v22)
        {
          v13 = v12 + v21;
          v12 = v22;
          if (v10 < a2)
          {
            continue;
          }
        }

        return v10;
      }

      if (qword_1025D46E0 != -1)
      {
        sub_1018EDFB0();
      }

      v23 = qword_1025D46E8;
      if (os_log_type_enabled(qword_1025D46E8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109378;
        v27 = 0;
        v28 = 2080;
        v29 = __str;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "Field,%d,received with NAN, rejecting, %s", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018EDFC4(__str);
      }

      return 0;
    }
  }

  return v10;
}

uint64_t sub_100635CE0(int *a1, char *a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (*a2)
    {
      v4 = atof(a2);
      v5 = (floor(v4) + 0.5);
      *a1 = v5 / 10000;
      a1[1] = v5 / 100 % 100;
      *&v4 = v4 - v5 + (v5 % 100);
      a1[2] = LODWORD(v4);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100635DA4(uint64_t a1, char *a2, _BYTE *a3)
{
  result = 0;
  if (a1 && a2 && a3)
  {
    if (*a2 && *a3)
    {
      v6 = atof(a2);
      result = 0;
      *a1 = v6 / 100;
      *(a1 + 4) = v6 % 100;
      *(a1 + 8) = (v6 - v6) * 60.0;
      v7 = *a3;
      if ((v7 - 69) <= 0x12 && ((1 << (v7 - 69)) & 0x44201) != 0)
      {
        *(a1 + 16) = v7;
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double sub_100635E6C(uint64_t a1)
{
  v1 = *(a1 + 8) + (3600 * *a1 + 60 * *(a1 + 4));
  if ((*(a1 + 16) | 4) == 0x57)
  {
    v1 = 0.0 - v1;
  }

  return v1 / 3600.0;
}

uint64_t sub_100635EB4(int *a1, char *a2, const char *a3, const char *a4, const char *a5)
{
  if (a2)
  {
    v9 = atoi(a2);
  }

  else
  {
    v9 = -1;
  }

  *a1 = v9;
  if (a3)
  {
    v10 = atoi(a3);
  }

  else
  {
    v10 = -1;
  }

  a1[1] = v10;
  if (a4)
  {
    v11 = atoi(a4);
  }

  else
  {
    v11 = -1;
  }

  a1[2] = v11;
  if (a5)
  {
    v12 = atoi(a5);
  }

  else
  {
    v12 = -1;
  }

  a1[3] = v12;
  return 1;
}

uint64_t sub_100635F58(uint64_t a1, const char *a2, uint64_t a3)
{
  if (!strncmp("$GPGGA", a2, 6uLL))
  {
    v8 = &off_102464828;
LABEL_7:
    v12 = v8[1];

    return (v12)(a1, a2, a3);
  }

  else
  {
    v6 = &off_102464828;
    v7 = 7;
    while (--v7)
    {
      v8 = v6 + 2;
      v9 = v6[2];
      v10 = strlen(v9);
      v11 = strncmp(v9, a2, v10);
      v6 = v8;
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    return 8;
  }
}

id sub_1006360B4(void *a1, uint64_t a2)
{
  __p = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  *(&v22 + 9) = 257;
  sub_100639FE0(a2, &v12);
  if (SBYTE7(v22) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(*(&v19 + 1));
  }

  if (SBYTE7(v19) < 0)
  {
    operator delete(v18);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(*(&v16 + 1));
  }

  if (SBYTE7(v16) < 0)
  {
    operator delete(v15);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(*(&v13 + 1));
  }

  if (SBYTE7(v13) < 0)
  {
    operator delete(v12);
  }

  if ([a1 manufacturer])
  {
    sub_10000EC00(&__str, [objc_msgSend(a1 "manufacturer")]);
    std::string::operator=(a2, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  if ([a1 name])
  {
    sub_10000EC00(&v10, [objc_msgSend(a1 "name")]);
    std::string::operator=((a2 + 24), &v10);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }
  }

  if ([a1 modelNumber])
  {
    sub_10000EC00(&v9, [objc_msgSend(a1 "modelNumber")]);
    std::string::operator=((a2 + 48), &v9);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }
  }

  if ([a1 serialNumber])
  {
    sub_10000EC00(&v8, [objc_msgSend(a1 "serialNumber")]);
    std::string::operator=((a2 + 72), &v8);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }
  }

  if ([a1 firmwareRevision])
  {
    sub_10000EC00(&v7, [objc_msgSend(a1 "firmwareRevision")]);
    std::string::operator=((a2 + 96), &v7);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }
  }

  if ([a1 hardwareRevision])
  {
    sub_10000EC00(&v6, [objc_msgSend(a1 "hardwareRevision")]);
    std::string::operator=((a2 + 120), &v6);
    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }

  if ([a1 ppid])
  {
    sub_10000EC00(&v5, [objc_msgSend(a1 "ppid")]);
    std::string::operator=((a2 + 144), &v5);
    if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v5.__r_.__value_.__l.__data_);
    }
  }

  *(a2 + 168) = 256;
  result = [a1 supportsCarPlay];
  *(a2 + 170) = result;
  return result;
}

void sub_100636360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006366B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 == *(*(a1 + 40) + 8))
  {
    v136 = 0uLL;
    memset(v137, 0, sizeof(v137));
    *v134 = 0uLL;
    *v135 = 0uLL;
    *v132 = 0uLL;
    v133 = 0uLL;
    v130 = 0uLL;
    *v131 = 0uLL;
    *v128 = 0uLL;
    *v129 = 0uLL;
    v138 = 257;
    sub_1006360B4(v2, v128);
    v9 = *(a1 + 40);
    v10 = *(v9 + 32);
    v11 = *(v9 + 16);
    sub_10063A160(v114, v128);
    v10(v11, v114);
    if (v127 < 0)
    {
      operator delete(v126);
    }

    if (v125 < 0)
    {
      operator delete(v124);
    }

    if (v123 < 0)
    {
      operator delete(v122);
    }

    if (v121 < 0)
    {
      operator delete(v120);
    }

    if (v119 < 0)
    {
      operator delete(v118);
    }

    if (v117 < 0)
    {
      operator delete(v116);
    }

    if (v115 < 0)
    {
      operator delete(v114[0]);
    }

    *(*(a1 + 40) + 8) = 0;
    v12 = [+[EAAccessoryManager sharedAccessoryManager](EAAccessoryManager connectedAccessories];
    if (qword_1025D4620 != -1)
    {
      sub_1018EE46C();
    }

    v13 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v139;
      sub_1000238CC([*(a1 + 32) manufacturer], v139);
      if (v142 < 0)
      {
        v14 = *v139;
      }

      sub_1000238CC([*(a1 + 32) modelNumber], v112);
      v15 = v113;
      v16 = v112[0];
      v17 = [(NSArray *)v12 count];
      v18 = v112;
      *buf = 136315650;
      if (v15 < 0)
      {
        v18 = v16;
      }

      *&buf[4] = v14;
      *&buf[12] = 2080;
      *&buf[14] = v18;
      *&buf[22] = 2048;
      *&buf[24] = v17;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "@ClxAccessory, state, 0, model, %s, %s, count, %lu", buf, 0x20u);
      if (v113 < 0)
      {
        operator delete(v112[0]);
      }

      if (SHIBYTE(v142) < 0)
      {
        operator delete(*v139);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EE494(buf);
      v40 = qword_1025D4628;
      v41 = v112;
      sub_1000238CC([*(a1 + 32) manufacturer], v112);
      if (v113 < 0)
      {
        v41 = v112[0];
      }

      sub_1000238CC([*(a1 + 32) modelNumber], v110);
      v42 = v111;
      v43 = v110[0];
      v44 = [(NSArray *)v12 count];
      v45 = v110;
      *v139 = 136315650;
      if (v42 < 0)
      {
        v45 = v43;
      }

      *&v139[4] = v41;
      v140 = 2080;
      v141 = v45;
      v142 = 2048;
      v143 = v44;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v40, 0, "@ClxAccessory, state, 0, model, %s, %s, count, %lu", v139, 32, v65);
      v47 = v46;
      if (v111 < 0)
      {
        operator delete(v110[0]);
      }

      if (v113 < 0)
      {
        operator delete(v112[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "[CLAccessoryObserver accessoryDidDisconnect:]_block_invoke", "%s\n", v47);
      if (v47 != buf)
      {
        free(v47);
      }
    }

    if (qword_1025D45E0 != -1)
    {
      sub_1018EE1FC();
    }

    v19 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      v76 = SHIBYTE(v129[0]);
      v74 = v128[0];
      v72 = SHIBYTE(v132[0]);
      v70 = v131[0];
      v68 = SHIBYTE(v130);
      v66 = v129[1];
      v20 = SHIBYTE(v133);
      v21 = v132[1];
      v22 = SHIBYTE(v135[0]);
      v23 = v134[0];
      v24 = SHIBYTE(v136);
      v25 = v135[1];
      v26 = [(NSArray *)v12 count];
      v27 = v128;
      v28 = v131;
      v29 = &v129[1];
      v30 = &v132[1];
      v31 = v134;
      v32 = &v135[1];
      if (v24 < 0)
      {
        v32 = v25;
      }

      *buf = 136382211;
      if (v22 < 0)
      {
        v31 = v23;
      }

      if (v20 < 0)
      {
        v30 = v21;
      }

      if (v68 < 0)
      {
        v29 = v66;
      }

      if (v72 < 0)
      {
        v28 = v70;
      }

      if (v76 < 0)
      {
        v27 = v74;
      }

      *&buf[4] = v27;
      *&buf[12] = 2081;
      *&buf[14] = v28;
      *&buf[22] = 2081;
      *&buf[24] = v29;
      *&buf[32] = 2081;
      *&buf[34] = v30;
      *&buf[42] = 2081;
      *&buf[44] = v31;
      *&buf[52] = 2081;
      *&buf[54] = v32;
      *&buf[62] = 1025;
      LODWORD(v153[0]) = v26;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "AccessoryObserver,Accessory disconnected,%{private}s,model,%{private}s,name,%{private}s,serial,%{private}s,fw,%{private}s,hw,%{private}s,connected,%{private}d", buf, 0x44u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EE428(buf);
      v77 = qword_1025D45E8;
      v75 = SHIBYTE(v129[0]);
      v73 = v128[0];
      v71 = SHIBYTE(v132[0]);
      v69 = v131[0];
      v67 = SHIBYTE(v130);
      v48 = v129[1];
      v49 = SHIBYTE(v133);
      v50 = v132[1];
      v51 = SHIBYTE(v135[0]);
      v52 = v134[0];
      v53 = SHIBYTE(v136);
      v54 = v135[1];
      v55 = [(NSArray *)v12 count];
      v56 = v128;
      v57 = v131;
      v58 = &v129[1];
      v59 = &v132[1];
      v60 = v134;
      v61 = &v135[1];
      if (v53 < 0)
      {
        v61 = v54;
      }

      *v139 = 136382211;
      if (v51 < 0)
      {
        v60 = v52;
      }

      if (v49 < 0)
      {
        v59 = v50;
      }

      if (v67 < 0)
      {
        v58 = v48;
      }

      if (v71 < 0)
      {
        v57 = v69;
      }

      if (v75 < 0)
      {
        v56 = v73;
      }

      *&v139[4] = v56;
      v140 = 2081;
      v141 = v57;
      v142 = 2081;
      v143 = v58;
      v144 = 2081;
      v145 = v59;
      v146 = 2081;
      v147 = v60;
      v148 = 2081;
      v149 = v61;
      v150 = 1025;
      v151 = v55;
      LODWORD(v64) = 68;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v77, 0, "AccessoryObserver,Accessory disconnected,%{private}s,model,%{private}s,name,%{private}s,serial,%{private}s,fw,%{private}s,hw,%{private}s,connected,%{private}d", COERCE_DOUBLE(136382211), v139, v64);
      v63 = v62;
      sub_100152C7C("Generic", 1, 0, 2, "[CLAccessoryObserver accessoryDidDisconnect:]_block_invoke", "%s\n", v62);
      if (v63 != buf)
      {
        free(v63);
      }
    }

    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12);
    if (v33)
    {
      v34 = *v107;
      do
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v107 != v34)
          {
            objc_enumerationMutation(v12);
          }

          v36 = *(*(&v106 + 1) + 8 * i);
          if ([*(a1 + 40) setupAccessory:v36 withListenerCall:1])
          {
            memset(v158, 0, sizeof(v158));
            v157 = 0u;
            *v156 = 0u;
            *v155 = 0u;
            v154 = 0u;
            *v153 = 0u;
            memset(buf, 0, sizeof(buf));
            v159 = 257;
            sub_1006360B4(v36, buf);
            v37 = *(a1 + 40);
            v38 = *(v37 + 16);
            v39 = *(v37 + 24);
            sub_10063A160(v92, buf);
            v39(v38, v92, 1);
            if (v105 < 0)
            {
              operator delete(v104);
            }

            if (v103 < 0)
            {
              operator delete(v102);
            }

            if (v101 < 0)
            {
              operator delete(v100);
            }

            if (v99 < 0)
            {
              operator delete(v98);
            }

            if (v97 < 0)
            {
              operator delete(v96);
            }

            if (v95 < 0)
            {
              operator delete(v94);
            }

            if (v93 < 0)
            {
              operator delete(v92[0]);
            }

            if ((v158[23] & 0x80000000) != 0)
            {
              operator delete(*v158);
            }

            if (SHIBYTE(v157) < 0)
            {
              operator delete(v156[1]);
            }

            if (SHIBYTE(v156[0]) < 0)
            {
              operator delete(v155[0]);
            }

            if (SHIBYTE(v154) < 0)
            {
              operator delete(v153[1]);
            }

            if (SHIBYTE(v153[0]) < 0)
            {
              operator delete(*&buf[48]);
            }

            if (buf[47] < 0)
            {
              operator delete(*&buf[24]);
            }

            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }
        }

        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12);
      }

      while (v33);
    }
  }

  else
  {
    v136 = 0uLL;
    memset(v137, 0, sizeof(v137));
    *v134 = 0uLL;
    *v135 = 0uLL;
    *v132 = 0uLL;
    v133 = 0uLL;
    v130 = 0uLL;
    *v131 = 0uLL;
    *v128 = 0uLL;
    *v129 = 0uLL;
    v138 = 257;
    sub_1006360B4(v2, v128);
    v3 = *(a1 + 40);
    v4 = *(v3 + 32);
    v5 = *(v3 + 16);
    sub_10063A160(__dst, v128);
    v4(v5, __dst);
    if (v91 < 0)
    {
      operator delete(__p);
    }

    if (v89 < 0)
    {
      operator delete(v88);
    }

    if (v87 < 0)
    {
      operator delete(v86);
    }

    if (v85 < 0)
    {
      operator delete(v84);
    }

    if (v83 < 0)
    {
      operator delete(v82);
    }

    if (v81 < 0)
    {
      operator delete(v80);
    }

    if (v79 < 0)
    {
      operator delete(__dst[0]);
    }

    if (qword_1025D45E0 != -1)
    {
      sub_1018EE1FC();
    }

    v6 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "AccessoryObserver,unknown accessory disconnceted", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EE428(buf);
      *v139 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45E8, 2, "AccessoryObserver,unknown accessory disconnceted", v139, 2);
      v8 = v7;
      sub_100152C7C("Generic", 1, 0, 2, "[CLAccessoryObserver accessoryDidDisconnect:]_block_invoke", "%s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  if ((v137[23] & 0x80000000) != 0)
  {
    operator delete(*v137);
  }

  if (SHIBYTE(v136) < 0)
  {
    operator delete(v135[1]);
  }

  if (SHIBYTE(v135[0]) < 0)
  {
    operator delete(v134[0]);
  }

  if (SHIBYTE(v133) < 0)
  {
    operator delete(v132[1]);
  }

  if (SHIBYTE(v132[0]) < 0)
  {
    operator delete(v131[0]);
  }

  if (SHIBYTE(v130) < 0)
  {
    operator delete(v129[1]);
  }

  if (SHIBYTE(v129[0]) < 0)
  {
    operator delete(v128[0]);
  }
}

void sub_10063861C(uint64_t *a1, void ***a2)
{
  if (qword_1025D45E0 != -1)
  {
    sub_1018EE0CC();
  }

  v4 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a2;
    if (*(a2 + 23) < 0)
    {
      v5 = *a2;
    }

    v6 = a1;
    if (*(a1 + 23) < 0)
    {
      v6 = *a1;
    }

    v7 = a1 + 3;
    if (*(a1 + 47) < 0)
    {
      v7 = *v7;
    }

    v8 = a1 + 6;
    if (*(a1 + 71) < 0)
    {
      v8 = *v8;
    }

    v9 = a1 + 9;
    if (*(a1 + 95) < 0)
    {
      v9 = *v9;
    }

    v10 = a1 + 12;
    if (*(a1 + 119) < 0)
    {
      v10 = *v10;
    }

    v11 = a1 + 15;
    if (*(a1 + 143) < 0)
    {
      v11 = *v11;
    }

    v12 = a1 + 18;
    if (*(a1 + 167) < 0)
    {
      v12 = *v12;
    }

    v13 = *(a1 + 168);
    v14 = *(a1 + 170);
    v15 = *(a1 + 169);
    v16 = 136317699;
    v17 = v5;
    v18 = 2081;
    v19 = v6;
    v20 = 2081;
    v21 = v7;
    v22 = 2081;
    v23 = v8;
    v24 = 2081;
    v25 = v9;
    v26 = 2081;
    v27 = v10;
    v28 = 2081;
    v29 = v11;
    v30 = 2081;
    v31 = v12;
    v32 = 1026;
    v33 = v13;
    v34 = 1026;
    v35 = v14;
    v36 = 1026;
    v37 = v15;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "%s,manufacturer,%{private}s,name,%{private}s,model,%{private}s,serial,%{private}s,fw,%{private}s,hw,%{private}s,ppid,%{private}s,onDenyList,%{public}d,supportsCarPlay,%{public}d,supportsLocation,%{public}d", &v16, 0x64u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EED50(a2, a1);
  }
}

void sub_100638AA0(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) "userInfo")];
  v3 = v2;
  if ([*(a1 + 40) setupAccessory:v2 withListenerCall:1])
  {
    v29 = 0u;
    memset(v30, 0, sizeof(v30));
    *v27 = 0u;
    *v28 = 0u;
    *v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    *v24 = 0u;
    *v21 = 0u;
    *v22 = 0u;
    v31 = 257;
    sub_1006360B4(v2, v21);
    v4 = *(a1 + 40);
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
    sub_10063A160(v7, v21);
    v6(v5, v7, 1);
    if (v20 < 0)
    {
      operator delete(__p);
    }

    if (v18 < 0)
    {
      operator delete(v17);
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }

    if (v12 < 0)
    {
      operator delete(v11);
    }

    if (v10 < 0)
    {
      operator delete(v9);
    }

    if (v8 < 0)
    {
      operator delete(v7[0]);
    }

    if ((v30[23] & 0x80000000) != 0)
    {
      operator delete(*v30);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[1]);
    }

    if (SHIBYTE(v28[0]) < 0)
    {
      operator delete(v27[0]);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[1]);
    }

    if (SHIBYTE(v25[0]) < 0)
    {
      operator delete(v24[0]);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[1]);
    }

    if (SHIBYTE(v22[0]) < 0)
    {
      operator delete(v21[0]);
    }
  }
}

void sub_100638C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_10063A344(&a9);
  sub_10063A344(va);
  _Unwind_Resume(a1);
}

void sub_100638C74(id a1)
{
  if (qword_1025D45E0 != -1)
  {
    sub_1018EE0CC();
  }

  v1 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_DEBUG, "accessory disconnected, no action taken", v2, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018EF1EC();
  }
}

void sub_100638D7C(uint64_t a1)
{
  if (*(*(a1 + 32) + 8))
  {
    v2 = [*(a1 + 40) userInfo];
    if (v2)
    {
      v3 = [v2 objectForKey:EAAccessoryNMEASentenceFromAccessoryKey];
      if (v3)
      {
        v4 = v3;
        if (([*(*(a1 + 32) + 8) isEqual:v3] & 1) == 0)
        {
          if (qword_1025D45E0 != -1)
          {
            sub_1018EE0CC();
          }

          v5 = qword_1025D45E8;
          if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "NMEA Received from different accessory", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018EF2D0();
          }

          v68 = 0u;
          memset(v69, 0, sizeof(v69));
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          *buf = 0u;
          v61 = 0u;
          v70 = 257;
          sub_1006360B4(*(*(a1 + 32) + 8), buf);
          v6 = *(a1 + 32);
          v7 = *(v6 + 32);
          v8 = *(v6 + 16);
          sub_10063A160(__dst, buf);
          v7(v8, __dst);
          if (v59 < 0)
          {
            operator delete(__p);
          }

          if (v57 < 0)
          {
            operator delete(v56);
          }

          if (v55 < 0)
          {
            operator delete(v54);
          }

          if (v53 < 0)
          {
            operator delete(v52);
          }

          if (v51 < 0)
          {
            operator delete(v50);
          }

          if (v49 < 0)
          {
            operator delete(v48);
          }

          if (v47 < 0)
          {
            operator delete(__dst[0]);
          }

          *(*(a1 + 32) + 8) = 0;
          v9 = v4;
          if ([*(a1 + 32) setupAccessory:v4 withListenerCall:1])
          {
            v43 = 0u;
            memset(v44, 0, sizeof(v44));
            *v41 = 0u;
            *v42 = 0u;
            *v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            *v38 = 0u;
            *v35 = 0u;
            *v36 = 0u;
            v45 = 257;
            sub_1006360B4(v4, v35);
            v10 = *(a1 + 32);
            v11 = *(v10 + 16);
            v12 = *(v10 + 24);
            sub_10063A160(v21, v35);
            v12(v11, v21, 1);
            if (v34 < 0)
            {
              operator delete(v33);
            }

            if (v32 < 0)
            {
              operator delete(v31);
            }

            if (v30 < 0)
            {
              operator delete(v29);
            }

            if (v28 < 0)
            {
              operator delete(v27);
            }

            if (v26 < 0)
            {
              operator delete(v25);
            }

            if (v24 < 0)
            {
              operator delete(v23);
            }

            if (v22 < 0)
            {
              operator delete(v21[0]);
            }

            if ((v44[23] & 0x80000000) != 0)
            {
              operator delete(*v44);
            }

            if (SHIBYTE(v43) < 0)
            {
              operator delete(v42[1]);
            }

            if (SHIBYTE(v42[0]) < 0)
            {
              operator delete(v41[0]);
            }

            if (SHIBYTE(v40) < 0)
            {
              operator delete(v39[1]);
            }

            if (SHIBYTE(v39[0]) < 0)
            {
              operator delete(v38[0]);
            }

            if (SHIBYTE(v37) < 0)
            {
              operator delete(v36[1]);
            }

            if (SHIBYTE(v36[0]) < 0)
            {
              operator delete(*v35);
            }
          }

          if ((v69[23] & 0x80000000) != 0)
          {
            operator delete(*v69);
          }

          if (SHIBYTE(v68) < 0)
          {
            operator delete(*(&v67 + 1));
          }

          if (SBYTE7(v67) < 0)
          {
            operator delete(v66);
          }

          if (SHIBYTE(v65) < 0)
          {
            operator delete(*(&v64 + 1));
          }

          if (SBYTE7(v64) < 0)
          {
            operator delete(v63);
          }

          if (SHIBYTE(v62) < 0)
          {
            operator delete(*(&v61 + 1));
          }

          if (SBYTE7(v61) < 0)
          {
            operator delete(*buf);
          }
        }

        v13 = *(*(a1 + 32) + 8);
        if (v13)
        {
          *buf = 0;
          if ([v13 accessoryHasNMEASentencesAvailable])
          {
            do
            {
              [*(*(a1 + 32) + 8) getNMEASentence:buf];
              if (*buf)
              {
                (*(*(a1 + 32) + 40))(*(*(a1 + 32) + 16));
              }

              else
              {
                if (qword_1025D45E0 != -1)
                {
                  sub_1018EE1FC();
                }

                v14 = qword_1025D45E8;
                if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_FAULT))
                {
                  *v35 = 0;
                  _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "nmea data is null", v35, 2u);
                }

                if (sub_10000A100(121, 0))
                {
                  sub_1018EF3BC(&v19, v20);
                }
              }
            }

            while (([*(*(a1 + 32) + 8) accessoryHasNMEASentencesAvailable] & 1) != 0);
          }
        }

        else
        {
          if (qword_1025D45E0 != -1)
          {
            sub_1018EE1FC();
          }

          v18 = qword_1025D45E8;
          if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "No Accessory information in NMEA message", buf, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018EF4D0();
          }
        }
      }

      else
      {
        if (qword_1025D45E0 != -1)
        {
          sub_1018EE0CC();
        }

        v17 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "No Accessory information in NMEA message", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018EF5BC();
        }
      }
    }

    else
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1018EE0CC();
      }

      v16 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "No userInfo in NMEA message", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018EF6A8();
      }
    }
  }

  else
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1018EE0CC();
    }

    v15 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "no location accessory available", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018EF794();
    }
  }
}

void sub_1006393A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_10063A344(&a11);
  sub_10063A344(&a33);
  sub_10063A344(v33 - 240);
  _Unwind_Resume(a1);
}

void sub_100639560(uint64_t a1)
{
  if (([*(a1 + 32) setupEphemeris] & 1) == 0)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1018EE0CC();
    }

    v1 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_FAULT))
    {
      *v2 = 0;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_FAULT, "could not get ephemeris url", v2, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018EF880();
    }
  }
}

void sub_100639674(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  if (*(*(a1 + 40) + 8))
  {
    v3 = v2;
    v4 = [v2 objectForKey:EATimeSyncInfoOffsetEstimate];
    if (v4)
    {
      [v4 doubleValue];
      v6 = v5;
      v7 = [v3 objectForKey:EATimeSyncInfoOffsetUncertainty];
      if (v7)
      {
        [v7 doubleValue];
        if (qword_1025D45E0 != -1)
        {
          v21 = v8;
          sub_1018EE0CC();
          v8 = v21;
        }

        v9 = v6 / 1000.0;
        v10 = qword_1025D45E8;
        v11 = v8 / 1000.0;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
        {
          v12 = *(*(a1 + 40) + 8);
          *buf = 134218496;
          v29 = v12;
          v30 = 2048;
          v31 = v9;
          v32 = 2048;
          v33 = v11;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "STARK,fAccessory,%p,timeSyncOffset,%.6lf,timeSyncUnc,%.6lf", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D45E0 != -1)
          {
            sub_1018EE1FC();
          }

          v13 = *(*(a1 + 40) + 8);
          v22 = 134218496;
          v23 = v13;
          v24 = 2048;
          v25 = v9;
          v26 = 2048;
          v27 = v11;
          LODWORD(v19) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45E8, 2, "STARK,fAccessory,%p,timeSyncOffset,%.6lf,timeSyncUnc,%.6lf", &v22, v19, v20);
          v15 = v14;
          sub_100152C7C("Generic", 1, 0, 2, "[CLAccessoryObserver onStarkTimeSyncNotification:]_block_invoke", "%s\n", v14);
          if (v15 != buf)
          {
            free(v15);
          }
        }
      }

      else
      {
        if (qword_1025D45E0 != -1)
        {
          sub_1018EE0CC();
        }

        v18 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#Warning STARK,unexpected,time sync unc is NULL", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018EF964();
        }
      }
    }

    else
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1018EE0CC();
      }

      v17 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "#Warning STARK,unexpected,time sync estimate is NULL", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018EFA48();
      }
    }
  }

  else
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1018EE0CC();
    }

    v16 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "STARK,unexpected,fAccessory is NULL", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018EFB2C();
    }
  }
}

uint64_t sub_100639FE0(uint64_t a1, __int128 *a2)
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
  v11 = *(a2 + 84);
  *(a1 + 170) = *(a2 + 170);
  *(a1 + 168) = v11;
  return a1;
}

char *sub_10063A160(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100007244(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100007244(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100007244(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100007244(__dst + 96, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(__dst + 14) = *(a2 + 14);
    *(__dst + 6) = v8;
  }

  if (*(a2 + 143) < 0)
  {
    sub_100007244(__dst + 120, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    *(__dst + 17) = *(a2 + 17);
    *(__dst + 120) = v9;
  }

  if (*(a2 + 167) < 0)
  {
    sub_100007244(__dst + 144, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v10 = a2[9];
    *(__dst + 20) = *(a2 + 20);
    *(__dst + 9) = v10;
  }

  v11 = *(a2 + 84);
  __dst[170] = *(a2 + 170);
  *(__dst + 84) = v11;
  return __dst;
}

void sub_10063A2B0(_Unwind_Exception *exception_object)
{
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

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10063A344(uint64_t a1)
{
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

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10063A408(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10063A408(a1, *a2);
    sub_10063A408(a1, a2[1]);
    sub_10063A464((a2 + 4));

    operator delete(a2);
  }
}

void sub_10063A464(uint64_t a1)
{
  sub_10063A344(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

double sub_10063A550(uint64_t a1, double **a2)
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

uint64_t sub_10063A57C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_10063A650(uint64_t a1, double **a2)
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

uint64_t sub_10063A6A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10063A784(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10063A870(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10063BA1C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    return 0;
  }

  else
  {
    return a2;
  }
}

void sub_10063BD94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    *(a2 + 16) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    operator delete();
  }
}

uint64_t sub_10063BE10()
{
  if (qword_102637078)
  {
    (*(*qword_102637078 + 8))(qword_102637078);
  }

  if (qword_102637080)
  {
    (*(*qword_102637080 + 8))(qword_102637080);
  }

  if (qword_102637088)
  {
    (*(*qword_102637088 + 8))(qword_102637088);
  }

  if (qword_102637090)
  {
    (*(*qword_102637090 + 8))(qword_102637090);
  }

  if (qword_102637098)
  {
    (*(*qword_102637098 + 8))(qword_102637098);
  }

  if (qword_1026370A0)
  {
    (*(*qword_1026370A0 + 8))(qword_1026370A0);
  }

  if (qword_1026370A8)
  {
    (*(*qword_1026370A8 + 8))(qword_1026370A8);
  }

  result = qword_1026370B0;
  if (qword_1026370B0)
  {
    v1 = *(*qword_1026370B0 + 8);

    return v1();
  }

  return result;
}

void sub_10063BFB8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_102658498 & 1) == 0)
  {
    byte_102658498 = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/ProtobufDefs/CLPRayTracingTilesAvailability.pb.cc", a4);
    operator new();
  }
}

void *sub_10063C2F0(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = &off_102464C78;
  return result;
}

void sub_10063C314(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 20))
  {
    *(a1 + 20) |= 1u;
    v4 = *(a1 + 8);
    if (!v4)
    {
      operator new();
    }

    v5 = *(a2 + 8);
    if (!v5)
    {
      v5 = *(qword_102637078 + 8);
    }

    sub_10063C8F4(v4, v5);
  }
}

void sub_10063C404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10063C41C(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102464C78;
  if (qword_102637078 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10063C4AC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10063C41C(a1);

  operator delete();
}

uint64_t sub_10063C4E4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102637078;
  if (!qword_102637078)
  {
    sub_10063BFB8(0, a2, a3, a4);
    return qword_102637078;
  }

  return result;
}

uint64_t sub_10063C560(uint64_t result)
{
  v1 = result;
  if (*(result + 20))
  {
    result = *(result + 8);
    if (result)
    {
      result = sub_10063C598(result);
    }
  }

  *(v1 + 20) = 0;
  return result;
}

uint64_t sub_10063C598(uint64_t a1)
{
  LOBYTE(v2) = *(a1 + 52);
  if (v2)
  {
    if (*(a1 + 52))
    {
      v3 = *(a1 + 8);
      if (v3)
      {
        if (*(v3 + 20))
        {
          *(v3 + 8) = 0;
        }

        *(v3 + 20) = 0;
        v2 = *(a1 + 52);
      }
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        sub_10063D5E8(v4);
      }
    }
  }

  result = sub_1003C79DC(a1 + 24);
  *(a1 + 52) = 0;
  return result;
}

uint64_t sub_10063C5FC(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
      }

      if (TagFallback != 10)
      {
        break;
      }

      *(a1 + 20) |= 1u;
      v7 = *(a1 + 8);
      if (!v7)
      {
        operator new();
      }

      v17 = 0;
      v8 = *(this + 1);
      if (v8 >= *(this + 2) || *v8 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v17))
        {
          return 0;
        }
      }

      else
      {
        v17 = *v8;
        *(this + 1) = v8 + 1;
      }

      v9 = *(this + 14);
      v10 = *(this + 15);
      *(this + 14) = v9 + 1;
      if (v9 >= v10)
      {
        return 0;
      }

      v11 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v17);
      if (!sub_10063F724(v7, this, v12) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v11);
      v13 = *(this + 14);
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v15 < 0 == v14)
      {
        *(this + 14) = v15;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      break;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10063C7D0(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 20))
  {
    v5 = *(result + 8);
    if (!v5)
    {
      v5 = *(qword_102637078 + 8);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v5, a2, a4);
  }

  return result;
}

uint64_t sub_10063C7FC(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 20))
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      v4 = *(qword_102637078 + 8);
    }

    v5 = sub_10063FC5C(v4, a2);
    v7 = v5;
    if (v5 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, v6);
    }

    else
    {
      v8 = 1;
    }

    result = (v7 + v8 + 1);
  }

  else
  {
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

void sub_10063C86C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10063C314(a1, lpsrc);
}

void sub_10063C8F4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  sub_10063FE24((a1 + 24), a2 + 24);
  LOBYTE(v4) = *(a2 + 52);
  if (v4)
  {
    if (*(a2 + 52))
    {
      *(a1 + 52) |= 1u;
      v5 = *(a1 + 8);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 8);
      if (!v6)
      {
        v6 = *(qword_1026370B0 + 8);
      }

      sub_10063CDCC(v5, v6);
      v4 = *(a2 + 52);
    }

    if ((v4 & 2) != 0)
    {
      *(a1 + 52) |= 2u;
      v7 = *(a1 + 16);
      if (!v7)
      {
        operator new();
      }

      v8 = *(a2 + 16);
      if (!v8)
      {
        v8 = *(qword_1026370B0 + 16);
      }

      sub_10063D2E4(v7, v8);
    }
  }
}

void sub_10063CA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

double sub_10063CA90(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v5);
  }

  if (*(a2 + 20))
  {
    result = *(a2 + 8);
    *(a1 + 20) |= 1u;
    *(a1 + 8) = result;
  }

  return result;
}

void sub_10063CB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10063CB54(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102464CF0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10063CBF4(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_10063CC08(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      v5 = *(this + 1);
      if (v5 >= *(this + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v5 + 1;
      }

      if (TagFallback != 9)
      {
        break;
      }

      v8 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v8) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v8;
      *(a1 + 20) |= 1u;
      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

    if (!TagFallback || (TagFallback & 7) == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10063CCF8(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  if (*(result + 20))
  {
    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
  }

  return result;
}

uint64_t sub_10063CD10(uint64_t a1)
{
  v1 = ((*(a1 + 20) << 31) >> 31) & 9;
  *(a1 + 16) = v1;
  return v1;
}

double sub_10063CD2C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10063CA90(a1, lpsrc);
}

void sub_10063CDCC(_DWORD *a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 8);
      a1[5] |= 1u;
      a1[2] = v5;
      v4 = *(a2 + 20);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      a1[5] |= 2u;
      a1[3] = v6;
    }
  }
}

void sub_10063CE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10063CEB0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102464D68;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10063CF50(uint64_t result)
{
  if (*(result + 20))
  {
    *(result + 8) = 0;
  }

  *(result + 20) = 0;
  return result;
}

uint64_t sub_10063CF64(unsigned int *a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
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

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(this + 1);
      v7 = *(this + 2);
      if (v8 >= v7 || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 2);
        if (!result)
        {
          return result;
        }

        v10 = *(this + 1);
        v7 = *(this + 2);
      }

      else
      {
        a1[2] = v9;
        v10 = v8 + 1;
        *(this + 1) = v10;
      }

      a1[5] |= 1u;
      if (v10 < v7 && *v10 == 16)
      {
        v11 = v10 + 1;
        *(this + 1) = v11;
LABEL_22:
        if (v11 >= v7 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, a1 + 3);
          if (!result)
          {
            return result;
          }

          v13 = *(this + 1);
          v7 = *(this + 2);
        }

        else
        {
          a1[3] = v12;
          v13 = v11 + 1;
          *(this + 1) = v13;
        }

        a1[5] |= 2u;
        if (v13 == v7 && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(this + 1);
      v7 = *(this + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10063D0E0(uint64_t result, unsigned int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return result;
}

uint64_t sub_10063D14C(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 20);
  if (v3)
  {
    if (*(a1 + 20))
    {
      v5 = *(a1 + 8);
      if (v5 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
        if ((*(a1 + 20) & 2) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v4 = 2;
        if ((v3 & 2) == 0)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v4 = 0;
      if ((*(a1 + 20) & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    v6 = *(a1 + 12);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    }

    else
    {
      v7 = 2;
    }

    v4 = (v7 + v4);
  }

  else
  {
    v4 = 0;
  }

LABEL_14:
  *(a1 + 16) = v4;
  return v4;
}

void sub_10063D1DC(_DWORD *a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10063CDCC(a1, lpsrc);
}

uint64_t sub_10063D27C(uint64_t a1, uint64_t a2)
{
  *a1 = &off_102464DE0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 36) = 0u;
  sub_10063D2E4(a1, a2);
  return a1;
}

void sub_10063D2E4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  LOBYTE(v4) = *(a2 + 48);
  if (v4)
  {
    if (*(a2 + 48))
    {
      *(a1 + 48) |= 1u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        v7 = *(qword_102637090 + 8);
      }

      sub_10063CA90(v6, v7);
      v4 = *(a2 + 48);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    else if ((*(a2 + 48) & 2) == 0)
    {
      goto LABEL_6;
    }

    v8 = *(a2 + 16);
    *(a1 + 48) |= 2u;
    *(a1 + 16) = v8;
    v4 = *(a2 + 48);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }

LABEL_20:
    v9 = *(a2 + 20);
    *(a1 + 48) |= 4u;
    *(a1 + 20) = v9;
    v4 = *(a2 + 48);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }

LABEL_21:
    v10 = *(a2 + 24);
    *(a1 + 48) |= 8u;
    *(a1 + 24) = v10;
    v4 = *(a2 + 48);
    if ((v4 & 0x10) == 0)
    {
LABEL_9:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }

LABEL_22:
    v11 = *(a2 + 28);
    *(a1 + 48) |= 0x10u;
    *(a1 + 28) = v11;
    v4 = *(a2 + 48);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_24;
    }

LABEL_23:
    v12 = *(a2 + 32);
    *(a1 + 48) |= 0x20u;
    *(a1 + 32) = v12;
    v4 = *(a2 + 48);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_24:
    v13 = *(a2 + 36);
    *(a1 + 48) |= 0x40u;
    *(a1 + 36) = v13;
    if ((*(a2 + 48) & 0x80) == 0)
    {
      return;
    }

LABEL_12:
    v5 = *(a2 + 40);
    *(a1 + 48) |= 0x80u;
    *(a1 + 40) = v5;
  }
}

void sub_10063D4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10063D4C8(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102464DE0;
  if (qword_102637090 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10063D558(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10063D4C8(a1);

  operator delete();
}

uint64_t sub_10063D5E8(uint64_t result)
{
  if (*(result + 48))
  {
    if (*(result + 48))
    {
      v1 = *(result + 8);
      if (v1)
      {
        if (*(v1 + 20))
        {
          *(v1 + 8) = 0;
        }

        *(v1 + 20) = 0;
      }
    }

    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 40) = 0;
    *(result + 32) = 0;
  }

  *(result + 48) = 0;
  return result;
}

uint64_t sub_10063D620(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
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

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 > 4)
      {
        if (TagFallback >> 3 > 6)
        {
          if (v7 == 7)
          {
            if ((TagFallback & 7) == 0)
            {
              v18 = *(this + 1);
              v9 = *(this + 2);
              goto LABEL_89;
            }
          }

          else if (v7 == 8 && (TagFallback & 7) == 0)
          {
            v13 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_97;
          }
        }

        else if (v7 == 5)
        {
          if ((TagFallback & 7) == 0)
          {
            v16 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_73;
          }
        }

        else if (v7 == 6 && (TagFallback & 7) == 0)
        {
          v11 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_81;
        }

        goto LABEL_36;
      }

      if (TagFallback >> 3 > 2)
      {
        if (v7 == 3)
        {
          if ((TagFallback & 7) == 0)
          {
            v17 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_57;
          }
        }

        else if (v7 == 4 && (TagFallback & 7) == 0)
        {
          v12 = *(this + 1);
          v9 = *(this + 2);
          goto LABEL_65;
        }

        goto LABEL_36;
      }

      if (v7 == 1)
      {
        break;
      }

      if (v7 == 2 && (TagFallback & 7) == 0)
      {
        v10 = *(this + 1);
        v9 = *(this + 2);
        goto LABEL_49;
      }

LABEL_36:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
      {
        return 0;
      }
    }

    if (v8 != 2)
    {
      goto LABEL_36;
    }

    *(a1 + 48) |= 1u;
    v14 = *(a1 + 8);
    if (!v14)
    {
      operator new();
    }

    v42 = 0;
    v15 = *(this + 1);
    if (v15 >= *(this + 2) || *v15 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
      {
        return 0;
      }
    }

    else
    {
      v42 = *v15;
      *(this + 1) = v15 + 1;
    }

    v19 = *(this + 14);
    v20 = *(this + 15);
    *(this + 14) = v19 + 1;
    if (v19 >= v20)
    {
      return 0;
    }

    v21 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42);
    if (!sub_10063CC08(v14, this, v22) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v21);
    v23 = *(this + 14);
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v25 < 0 == v24)
    {
      *(this + 14) = v25;
    }

    v26 = *(this + 1);
    v9 = *(this + 2);
    if (v26 < v9 && *v26 == 16)
    {
      v10 = v26 + 1;
      *(this + 1) = v10;
LABEL_49:
      if (v10 >= v9 || (v27 = *v10, v27 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v28 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v27;
        v28 = v10 + 1;
        *(this + 1) = v28;
      }

      *(a1 + 48) |= 2u;
      if (v28 < v9 && *v28 == 24)
      {
        v17 = v28 + 1;
        *(this + 1) = v17;
LABEL_57:
        if (v17 >= v9 || (v30 = *v17, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 20));
          if (!result)
          {
            return result;
          }

          v31 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 20) = v30;
          v31 = v17 + 1;
          *(this + 1) = v31;
        }

        *(a1 + 48) |= 4u;
        if (v31 < v9 && *v31 == 32)
        {
          v12 = v31 + 1;
          *(this + 1) = v12;
LABEL_65:
          if (v12 >= v9 || (v32 = *v12, v32 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
            if (!result)
            {
              return result;
            }

            v33 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            *(a1 + 24) = v32;
            v33 = v12 + 1;
            *(this + 1) = v33;
          }

          *(a1 + 48) |= 8u;
          if (v33 < v9 && *v33 == 40)
          {
            v16 = v33 + 1;
            *(this + 1) = v16;
LABEL_73:
            if (v16 >= v9 || (v34 = *v16, v34 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 28));
              if (!result)
              {
                return result;
              }

              v35 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              *(a1 + 28) = v34;
              v35 = v16 + 1;
              *(this + 1) = v35;
            }

            *(a1 + 48) |= 0x10u;
            if (v35 < v9 && *v35 == 48)
            {
              v11 = v35 + 1;
              *(this + 1) = v11;
LABEL_81:
              if (v11 >= v9 || (v36 = *v11, v36 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
                if (!result)
                {
                  return result;
                }

                v37 = *(this + 1);
                v9 = *(this + 2);
              }

              else
              {
                *(a1 + 32) = v36;
                v37 = v11 + 1;
                *(this + 1) = v37;
              }

              *(a1 + 48) |= 0x20u;
              if (v37 < v9 && *v37 == 56)
              {
                v18 = v37 + 1;
                *(this + 1) = v18;
LABEL_89:
                if (v18 >= v9 || (v38 = *v18, v38 < 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 36));
                  if (!result)
                  {
                    return result;
                  }

                  v39 = *(this + 1);
                  v9 = *(this + 2);
                }

                else
                {
                  *(a1 + 36) = v38;
                  v39 = v18 + 1;
                  *(this + 1) = v39;
                }

                *(a1 + 48) |= 0x40u;
                if (v39 < v9 && *v39 == 64)
                {
                  v13 = v39 + 1;
                  *(this + 1) = v13;
LABEL_97:
                  if (v13 >= v9 || (v40 = *v13, v40 < 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 40));
                    if (!result)
                    {
                      return result;
                    }

                    v41 = *(this + 1);
                    v9 = *(this + 2);
                  }

                  else
                  {
                    *(a1 + 40) = v40;
                    v41 = v13 + 1;
                    *(this + 1) = v41;
                  }

                  *(a1 + 48) |= 0x80u;
                  if (v41 == v9 && (*(this + 11) || *(this + 6) == *(this + 10)))
                  {
                    *(this + 8) = 0;
                    result = 1;
                    *(this + 36) = 1;
                    return result;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10063DB1C(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 48);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102637090 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = v5[12];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[12];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
  v6 = v5[12];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v5[6], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v5[7], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, v5[9], a2, a4);
    if ((v5[12] & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, v5[8], a2, a4);
  v6 = v5[12];
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return result;
  }

LABEL_19:
  v8 = v5[10];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, v8, a2, a4);
}

uint64_t sub_10063DC44(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 48);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_44;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 48) & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = *(qword_102637090 + 8);
  }

  v6 = ((*(v5 + 20) << 31) >> 31) & 9;
  *(v5 + 16) = v6;
  v4 = v6 | 2u;
  v3 = *(a1 + 48);
  if ((v3 & 2) != 0)
  {
LABEL_9:
    v7 = *(a1 + 16);
    if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
      v3 = *(a1 + 48);
    }

    else
    {
      v8 = 2;
    }

    v4 = (v8 + v4);
  }

LABEL_13:
  if ((v3 & 4) != 0)
  {
    v9 = *(a1 + 20);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      v3 = *(a1 + 48);
    }

    else
    {
      v10 = 2;
    }

    v4 = (v10 + v4);
    if ((v3 & 8) == 0)
    {
LABEL_15:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_28;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_15;
  }

  v11 = *(a1 + 24);
  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
    v3 = *(a1 + 48);
  }

  else
  {
    v12 = 2;
  }

  v4 = (v12 + v4);
  if ((v3 & 0x10) == 0)
  {
LABEL_16:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_28:
  v13 = *(a1 + 28);
  if (v13 >= 0x80)
  {
    v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
    v3 = *(a1 + 48);
  }

  else
  {
    v14 = 2;
  }

  v4 = (v14 + v4);
  if ((v3 & 0x20) == 0)
  {
LABEL_17:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_36;
  }

LABEL_32:
  v15 = *(a1 + 32);
  if (v15 >= 0x80)
  {
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
    v3 = *(a1 + 48);
  }

  else
  {
    v16 = 2;
  }

  v4 = (v16 + v4);
  if ((v3 & 0x40) == 0)
  {
LABEL_18:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_40;
  }

LABEL_36:
  v17 = *(a1 + 36);
  if (v17 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
    v3 = *(a1 + 48);
  }

  else
  {
    v18 = 2;
  }

  v4 = (v18 + v4);
  if ((v3 & 0x80) != 0)
  {
LABEL_40:
    v19 = *(a1 + 40);
    if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
    }

    else
    {
      v20 = 2;
    }

    v4 = (v20 + v4);
  }

LABEL_44:
  *(a1 + 44) = v4;
  return v4;
}

void sub_10063DDE8(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10063D2E4(a1, lpsrc);
}

double sub_10063DE88(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      result = *(a2 + 8);
      *(a1 + 28) |= 1u;
      *(a1 + 8) = result;
      v5 = *(a2 + 28);
    }

    if ((v5 & 2) != 0)
    {
      result = *(a2 + 16);
      *(a1 + 28) |= 2u;
      *(a1 + 16) = result;
    }
  }

  return result;
}

void sub_10063DF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10063DF6C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102464E58;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10063E00C(uint64_t result)
{
  if (*(result + 28))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_10063E020(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
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
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v7 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v10 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v10) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v10;
        *(a1 + 28) |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v7 != 1)
      {
        break;
      }

      v10 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v10) & 1) == 0)
      {
        return 0;
      }

      *(a1 + 8) = v10;
      *(a1 + 28) |= 1u;
      v8 = *(this + 1);
      if (v8 < *(this + 2) && *v8 == 17)
      {
        *(this + 1) = v8 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10063E17C(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 28);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v6, a3);
  }

  return result;
}

uint64_t sub_10063E1E8(uint64_t a1)
{
  v1 = *(a1 + 28);
  if (*(a1 + 28))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 24) = v1;
  return v1;
}

double sub_10063E214(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10063DE88(a1, lpsrc);
}

double sub_10063E2B4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      *(a1 + 28) |= 1u;
      v6 = *(a1 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 8);
      if (!v7)
      {
        v7 = *(qword_1026370A0 + 8);
      }

      result = sub_10063DE88(v6, v7);
      v5 = *(a2 + 28);
    }

    if ((v5 & 2) != 0)
    {
      *(a1 + 28) |= 2u;
      v8 = *(a1 + 16);
      if (!v8)
      {
        operator new();
      }

      v9 = *(a2 + 16);
      if (!v9)
      {
        v9 = *(qword_1026370A0 + 16);
      }

      return sub_10063DE88(v8, v9);
    }
  }

  return result;
}

void sub_10063E408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_10063E420(void *result)
{
  if (qword_1026370A0 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10063E4C0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102464ED0;
  sub_10063E420(a1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10063E514(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102464ED0;
  sub_10063E420(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10063E5C8(uint64_t result)
{
  LOBYTE(v1) = *(result + 28);
  if (v1)
  {
    if (*(result + 28))
    {
      v2 = *(result + 8);
      if (v2)
      {
        if (*(v2 + 28))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
        }

        *(v2 + 28) = 0;
        v1 = *(result + 28);
      }
    }

    if ((v1 & 2) != 0)
    {
      v3 = *(result + 16);
      if (v3)
      {
        if (*(v3 + 28))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 28) = 0;
      }
    }
  }

  *(result + 28) = 0;
  return result;
}

uint64_t sub_10063E614(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
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
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v7 != 2)
      {
        goto LABEL_15;
      }

      *(a1 + 28) |= 1u;
      v8 = *(a1 + 8);
      if (!v8)
      {
        operator new();
      }

      v27 = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27))
        {
          return 0;
        }
      }

      else
      {
        v27 = *v9;
        *(this + 1) = v9 + 1;
      }

      v10 = *(this + 14);
      v11 = *(this + 15);
      *(this + 14) = v10 + 1;
      if (v10 >= v11)
      {
        return 0;
      }

      v12 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v27);
      if (!sub_10063E020(v8, this, v13) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v12);
      v14 = *(this + 14);
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v16 < 0 == v15)
      {
        *(this + 14) = v16;
      }

      v17 = *(this + 1);
      if (v17 < *(this + 2) && *v17 == 18)
      {
        *(this + 1) = v17 + 1;
LABEL_27:
        *(a1 + 28) |= 2u;
        v18 = *(a1 + 16);
        if (!v18)
        {
          operator new();
        }

        v28 = 0;
        v19 = *(this + 1);
        if (v19 >= *(this + 2) || *v19 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28))
          {
            return 0;
          }
        }

        else
        {
          v28 = *v19;
          *(this + 1) = v19 + 1;
        }

        v20 = *(this + 14);
        v21 = *(this + 15);
        *(this + 14) = v20 + 1;
        if (v20 >= v21)
        {
          return 0;
        }

        v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v28);
        if (!sub_10063E020(v18, this, v23) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v22);
        v24 = *(this + 14);
        v15 = __OFSUB__(v24, 1);
        v25 = v24 - 1;
        if (v25 < 0 == v15)
        {
          *(this + 14) = v25;
        }

        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 2)
    {
      goto LABEL_27;
    }

LABEL_15:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10063E8F4(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_1026370A0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      v8 = *(qword_1026370A0 + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  return result;
}

uint64_t sub_10063E980(uint64_t a1)
{
  if (!*(a1 + 28))
  {
    v1 = 0;
    goto LABEL_20;
  }

  if ((*(a1 + 28) & 1) == 0)
  {
    v1 = 0;
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    v2 = *(qword_1026370A0 + 8);
  }

  v3 = *(v2 + 28);
  if (*(v2 + 28))
  {
    if ((v3 & 2) != 0)
    {
      v3 = ((v3 << 31 >> 31) & 9) + 9;
    }

    else
    {
      v3 = (v3 << 31 >> 31) & 9;
    }
  }

  *(v2 + 24) = v3;
  v1 = (v3 + 2);
  if ((*(a1 + 28) & 2) != 0)
  {
LABEL_13:
    v4 = *(a1 + 16);
    if (!v4)
    {
      v4 = *(qword_1026370A0 + 16);
    }

    v5 = *(v4 + 28);
    if (*(v4 + 28))
    {
      if ((v5 & 2) != 0)
      {
        v5 = ((v5 << 31 >> 31) & 9) + 9;
      }

      else
      {
        v5 = (v5 << 31 >> 31) & 9;
      }
    }

    *(v4 + 24) = v5;
    v1 = (v1 + v5 + 2);
  }

LABEL_20:
  *(a1 + 24) = v1;
  return v1;
}

double sub_10063EA30(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10063E2B4(a1, lpsrc);
}

uint64_t sub_10063EAD0(uint64_t a1, uint64_t a2)
{
  *(a1 + 36) = 0;
  *(a1 + 40) = 0;
  *a1 = &off_102464F48;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_10063EB4C(a1, a2);
  return a1;
}

void sub_10063EB1C(_Unwind_Exception *a1)
{
  if (*(v1 + 2))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double sub_10063EB4C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    sub_1003C7898((a1 + 16), *(a1 + 24) + v5);
    memcpy((*(a1 + 16) + 8 * *(a1 + 24)), *(a2 + 16), 8 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  if (*(a2 + 40))
  {
    *(a1 + 40) |= 1u;
    v6 = *(a1 + 8);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 8);
    if (!v7)
    {
      v7 = *(qword_1026370A8 + 8);
    }

    return sub_10063E2B4(v6, v7);
  }

  return result;
}

void sub_10063EC70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10063EC8C(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_102464F48;
  if (qword_1026370A8 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  if (*(this + 2))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10063ED38(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10063EC8C(a1);

  operator delete();
}

uint64_t sub_10063EDC0(uint64_t result)
{
  v1 = result;
  if (*(result + 40))
  {
    result = *(result + 8);
    if (result)
    {
      result = sub_10063E5C8(result);
    }
  }

  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
  return result;
}

uint64_t sub_10063EDFC(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, unsigned int a3)
{
  while (1)
  {
    while (1)
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
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v7 != 2)
      {
        goto LABEL_16;
      }

      *(a1 + 40) |= 1u;
      v8 = *(a1 + 8);
      if (!v8)
      {
        operator new();
      }

      v27[0] = 0;
      v9 = *(this + 1);
      if (v9 >= *(this + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v27))
        {
          return 0;
        }
      }

      else
      {
        v27[0] = *v9;
        *(this + 1) = v9 + 1;
      }

      v13 = *(this + 14);
      v14 = *(this + 15);
      *(this + 14) = v13 + 1;
      if (v13 >= v14)
      {
        return 0;
      }

      v15 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v27[0]);
      if (!sub_10063E614(v8, this, v16) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v15);
      v17 = *(this + 14);
      v18 = __OFSUB__(v17, 1);
      v19 = v17 - 1;
      if (v19 < 0 == v18)
      {
        *(this + 14) = v19;
      }

      v20 = *(this + 1);
      v10 = *(this + 2);
      if (v20 < v10 && *v20 == 18)
      {
        v11 = v20 + 1;
        *(this + 1) = v11;
LABEL_31:
        v28 = 0;
        if (v11 >= v10 || (v21 = *v11, (v21 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v28))
          {
            return 0;
          }

          v21 = v28;
        }

        else
        {
          v28 = *v11;
          *(this + 1) = v11 + 1;
        }

        v22 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v21);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
        {
          *v27 = 0;
          v23 = *(this + 1);
          if (v23 >= *(this + 2) || (*v23 & 0x8000000000000000) != 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, v27))
            {
              return 0;
            }
          }

          else
          {
            *v27 = *v23;
            *(this + 1) = v23 + 1;
          }

          v24 = *(a1 + 24);
          if (v24 == *(a1 + 28))
          {
            sub_1003C7898((a1 + 16), v24 + 1);
            v24 = *(a1 + 24);
          }

          v25 = *v27;
          v26 = *(a1 + 16);
          *(a1 + 24) = v24 + 1;
          *(v26 + 8 * v24) = v25;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v22);
LABEL_46:
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      result = sub_10063F0F4(1, 0x12u, this, (a1 + 16));
      if (!result)
      {
        return result;
      }

      goto LABEL_46;
    }

    if (v7 == 2)
    {
      v11 = *(this + 1);
      v10 = *(this + 2);
      goto LABEL_31;
    }

LABEL_16:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10063F0F4(int a1, unsigned int a2, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, _DWORD *a4)
{
  v19 = 0;
  v7 = *(this + 1);
  if (v7 >= *(this + 2) || (*v7 & 0x8000000000000000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v19);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v19 = *v7;
    *(this + 1) = v7 + 1;
  }

  v9 = a4[2];
  v10 = a4[3];
  if (v9 == v10)
  {
    sub_1003C7898(a4, v9 + 1);
    v9 = a4[2];
    v10 = a4[3];
  }

  v11 = v19;
  v12 = *a4;
  v13 = v9 + 1;
  a4[2] = v9 + 1;
  *(v12 + 8 * v9) = v11;
  if (v10 - (v9 + 1) >= 1)
  {
    v14 = v10 - v9;
    do
    {
      if (a2 > 0x7F)
      {
        if (a2 >> 14)
        {
          return 1;
        }

        v18 = *(this + 1);
        v15 = *(this + 2);
        if (v15 - v18 < 2 || (a2 & 0x7F | 0x80) != *v18 || a2 >> 7 != v18[1])
        {
          return 1;
        }

        v17 = (v18 + 2);
      }

      else
      {
        v16 = *(this + 1);
        v15 = *(this + 2);
        if (v16 >= v15 || *v16 != a2)
        {
          return 1;
        }

        v17 = (v16 + 1);
      }

      *(this + 1) = v17;
      if (v17 >= v15 || (*v17 & 0x8000000000000000) != 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, &v19);
        if (!result)
        {
          return result;
        }

        v13 = a4[2];
      }

      else
      {
        v19 = *v17;
        *(this + 1) = v17 + 1;
      }

      if (v13 >= a4[3])
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v20);
        v13 = a4[2];
      }

      *(*a4 + 8 * v13++) = v19;
      a4[2] = v13;
      --v14;
    }

    while (v14 > 1);
  }

  return 1;
}

void sub_10063F2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10063F2E4(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 40))
  {
    v6 = *(result + 8);
    if (!v6)
    {
      v6 = *(qword_1026370A8 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2, 0x12u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2, *(v5 + 32));
    if (*(v5 + 24) >= 1)
    {
      v7 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint64(a2, *(*(v5 + 16) + 8 * v7++));
      }

      while (v7 < *(v5 + 24));
    }
  }

  return result;
}

uint64_t sub_10063F38C(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 8);
    if (!v4)
    {
      v4 = *(qword_1026370A8 + 8);
    }

    v5 = sub_10063E980(v4);
    v6 = v5;
    if (v5 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
    }

    else
    {
      v7 = 1;
    }

    v3 = v6 + v7 + 1;
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 24) < 1)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v8 = 0;
    LODWORD(v9) = 0;
    do
    {
      v9 = (wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(*(a1 + 16) + 8 * v8++), a2) + v9);
    }

    while (v8 < *(a1 + 24));
    if (v9 > 0)
    {
      if (v9 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
      }

      else
      {
        v10 = 2;
      }

      v3 += v10;
    }
  }

  result = (v3 + v9);
  *(a1 + 32) = v9;
  *(a1 + 36) = result;
  return result;
}

double sub_10063F46C(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  return sub_10063EB4C(a1, lpsrc);
}

uint64_t sub_10063F50C(uint64_t a1, uint64_t a2)
{
  *a1 = off_102464FC0;
  *(a1 + 48) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  sub_10063C8F4(a1, a2);
  return a1;
}

void sub_10063F564(_Unwind_Exception *a1)
{
  sub_100027438(v1 + 24);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void sub_10063F588(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102464FC0;
  v2 = a1 + 24;
  sub_10063F5EC(a1);
  sub_100027438(v2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void *sub_10063F5EC(void *result)
{
  if (qword_1026370B0 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[2];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10063F690(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10063F588(a1);

  operator delete();
}

uint64_t sub_10063F724(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
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

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v8 == 2)
        {
          goto LABEL_44;
        }

        goto LABEL_18;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || v8 != 2)
      {
        goto LABEL_18;
      }

      *(a1 + 52) |= 1u;
      v9 = *(a1 + 8);
      if (!v9)
      {
        operator new();
      }

      v41 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || *v10 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v41))
        {
          return 0;
        }
      }

      else
      {
        v41 = *v10;
        *(this + 1) = v10 + 1;
      }

      v11 = *(this + 14);
      v12 = *(this + 15);
      *(this + 14) = v11 + 1;
      if (v11 >= v12)
      {
        return 0;
      }

      v13 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v41);
      if (!sub_10063CF64(v9, this, v14) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v13);
      v15 = *(this + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(this + 14) = v17;
      }

      v18 = *(this + 1);
      if (v18 < *(this + 2) && *v18 == 18)
      {
        *(this + 1) = v18 + 1;
LABEL_30:
        *(a1 + 52) |= 2u;
        v19 = *(a1 + 16);
        if (!v19)
        {
          operator new();
        }

        v42 = 0;
        v20 = *(this + 1);
        if (v20 >= *(this + 2) || *v20 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
          {
            return 0;
          }
        }

        else
        {
          v42 = *v20;
          *(this + 1) = v20 + 1;
        }

        v21 = *(this + 14);
        v22 = *(this + 15);
        *(this + 14) = v21 + 1;
        if (v21 >= v22)
        {
          return 0;
        }

        v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42);
        if (!sub_10063D620(v19, this, v24) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v23);
        v25 = *(this + 14);
        v16 = __OFSUB__(v25, 1);
        v26 = v25 - 1;
        if (v26 < 0 == v16)
        {
          *(this + 14) = v26;
        }

        v27 = *(this + 1);
        if (v27 < *(this + 2) && *v27 == 26)
        {
          do
          {
            *(this + 1) = v27 + 1;
LABEL_44:
            v28 = *(a1 + 36);
            v29 = *(a1 + 32);
            if (v29 >= v28)
            {
              if (v28 == *(a1 + 40))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24), v28 + 1);
                v28 = *(a1 + 36);
              }

              *(a1 + 36) = v28 + 1;
              operator new();
            }

            v30 = *(a1 + 24);
            *(a1 + 32) = v29 + 1;
            v31 = *(v30 + 8 * v29);
            v43 = 0;
            v32 = *(this + 1);
            if (v32 >= *(this + 2) || *v32 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43))
              {
                return 0;
              }
            }

            else
            {
              v43 = *v32;
              *(this + 1) = v32 + 1;
            }

            v33 = *(this + 14);
            v34 = *(this + 15);
            *(this + 14) = v33 + 1;
            if (v33 >= v34)
            {
              return 0;
            }

            v35 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v43);
            if (!sub_10063EDFC(v31, this, v36) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v35);
            v37 = *(this + 14);
            v16 = __OFSUB__(v37, 1);
            v38 = v37 - 1;
            if (v38 < 0 == v16)
            {
              *(this + 14) = v38;
            }

            v27 = *(this + 1);
            v39 = *(this + 2);
          }

          while (v27 < v39 && *v27 == 26);
          if (v27 == v39 && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_30;
    }

LABEL_18:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_10063FBAC(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 52);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_1026370B0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 52);
  }

  if ((v6 & 2) != 0)
  {
    v8 = *(v5 + 16);
    if (!v8)
    {
      v8 = *(qword_1026370B0 + 16);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  }

  if (*(v5 + 32) >= 1)
  {
    v9 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 24) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 32));
  }

  return result;
}

uint64_t sub_10063FC5C(uint64_t a1, unint64_t a2)
{
  if (!*(a1 + 52))
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((*(a1 + 52) & 1) == 0)
  {
    v3 = 0;
    if ((*(a1 + 52) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    v4 = *(qword_1026370B0 + 8);
  }

  v5 = sub_10063D14C(v4, a2);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
  }

  else
  {
    v7 = 1;
  }

  v3 = v6 + v7 + 1;
  if ((*(a1 + 52) & 2) != 0)
  {
LABEL_12:
    v8 = *(a1 + 16);
    if (!v8)
    {
      v8 = *(qword_1026370B0 + 16);
    }

    v9 = sub_10063DC44(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    }

    else
    {
      v11 = 1;
    }

    v3 += v10 + v11 + 1;
  }

LABEL_18:
  v12 = *(a1 + 32);
  v13 = (v12 + v3);
  if (v12 >= 1)
  {
    v14 = 0;
    do
    {
      v15 = sub_10063F38C(*(*(a1 + 24) + 8 * v14), a2);
      v16 = v15;
      if (v15 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2);
      }

      else
      {
        v17 = 1;
      }

      v13 = (v16 + v13 + v17);
      ++v14;
    }

    while (v14 < *(a1 + 32));
  }

  *(a1 + 48) = v13;
  return v13;
}

void sub_10063FD84(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_10063C8F4(a1, lpsrc);
}

void sub_10063FE24(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, *(a2 + 8) + *(a1 + 2));
  if (*(a2 + 8) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_1003C7948(a2, v4);
      v6 = *(a1 + 3);
      v7 = *(a1 + 2);
      if (v7 >= v6)
      {
        if (v6 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1, v6 + 1);
          v6 = *(a1 + 3);
        }

        *(a1 + 3) = v6 + 1;
        operator new();
      }

      v8 = *a1;
      *(a1 + 2) = v7 + 1;
      sub_10063EB4C(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 8));
  }
}

uint64_t sub_10063FF40()
{
  result = sub_100008074();
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_10063FFE0(uint64_t a1, uint64_t a2)
{
  if (qword_1026584A0 != -1)
  {
    sub_1018F05F4();
  }

  return qword_1026370B8;
}

void sub_100640020(void *a1)
{
  sub_101137710(a1);

  operator delete();
}

double sub_100640058(uint64_t a1, void *a2, double *a3)
{
  if (a2)
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018F0608();
    }

    v4 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_FAULT))
    {
      v11 = 67240192;
      LODWORD(v12) = a2;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "[AccessoryHeartRate] Unrecognized update interval notification %{public}d", &v11, 8u);
    }

    v5 = 0.0;
    if (sub_10000A100(121, 0))
    {
      sub_1018F061C(a2);
    }
  }

  else
  {
    sub_1011381C4(a1, a2);
    v5 = *a3;
    if (*a3 > 0.0)
    {
      *(a1 + 29) = 0;
      if (v5 < 1.0)
      {
        v5 = 1.0;
      }
    }

    if (qword_1025D4320 != -1)
    {
      sub_1018F0608();
    }

    v8 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_INFO))
    {
      v9 = *a3;
      v11 = 134349312;
      v12 = v5;
      v13 = 2048;
      v14 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "[AccessoryHeartRate] Setting update interval to %{public}f, given minimumUpdateInterval, %f", &v11, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F0720(a3, v5);
    }

    sub_10017A1F4(*(a1 + 32), v5);
  }

  return v5;
}

void sub_100640210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DataValue = IOHIDEventGetDataValue();
  IntegerValue = IOHIDEventGetIntegerValue();
  if (DataValue)
  {
    v7 = IntegerValue;
    if (IntegerValue == 16)
    {
      TimeStamp = IOHIDEventGetTimeStamp();
      v9 = sub_1000080EC(TimeStamp);
      v26 = v9;
      v10 = *(DataValue + 13);
      LODWORD(v27) = v10;
      _H9 = *(DataValue + 14);
      __asm { FCVT            S0, H9 }

      HIDWORD(v27) = _S0;
      v17 = *(DataValue + 5);
      v28 = v17;
      v18 = *(DataValue + 1);
      LODWORD(v29) = v18;
      if (qword_1025D4320 != -1)
      {
        sub_1018F0608();
      }

      v19 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_DEBUG))
      {
        __asm { FCVT            D1, H9 }

        *buf = 67241731;
        v44 = v18;
        v45 = 1025;
        *v46 = v10;
        *&v46[4] = 2050;
        *&v46[6] = _D1;
        v47 = 2050;
        v48 = v17;
        v49 = 2050;
        v50 = v9;
        v51 = 1040;
        v52 = 16;
        v53 = 2097;
        v54 = DataValue;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "[AccessoryHeartRate] seq,%{public}d,heartrate,%{private}u,confidence,%{public}10.10f,sensorTime,%{public}llu,timestamp,%{public}20.20f,payload,{%{private}.*P}", buf, 0x3Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4320 != -1)
        {
          sub_1018F0968();
        }

        __asm { FCVT            D0, H9 }

        v30[0] = 67241731;
        v30[1] = v18;
        v31 = 1025;
        v32 = v10;
        v33 = 2050;
        v34 = _D0;
        v35 = 2050;
        v36 = v17;
        v37 = 2050;
        v38 = v9;
        v39 = 1040;
        v40 = 16;
        v41 = 2097;
        v42 = DataValue;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4328, 2, "[AccessoryHeartRate] seq,%{public}d,heartrate,%{private}u,confidence,%{public}10.10f,sensorTime,%{public}llu,timestamp,%{public}20.20f,payload,{%{private}.*P}", v30, 60, *&v26, v27, v28, v29);
        v25 = v24;
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLAccessoryHeartRate::onEventData(void *, void *, IOHIDEventRef)", "%s\n", v24);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      sub_100061FD8(a1, 0, &v26, 32);
    }

    else
    {
      if (qword_1025D4320 != -1)
      {
        sub_1018F0608();
      }

      v22 = qword_1025D4328;
      if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157955;
        v44 = v7;
        v45 = 2097;
        *v46 = DataValue;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "[AccessoryHeartRate] Invalid payload: %{private}.*P", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018F0850(v7, DataValue);
      }
    }
  }

  else
  {
    if (qword_1025D4320 != -1)
    {
      sub_1018F0608();
    }

    v21 = qword_1025D4328;
    if (os_log_type_enabled(qword_1025D4328, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "[AccessoryHeartRate] Invalid payload", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018F0990();
    }
  }
}

uint64_t sub_100640608(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return sub_10053700C(a1);
}

void sub_100641300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100641360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 160);
  if (!v5)
  {
    sub_1018F0C08(0, a2, a3, a4);
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10064A530;
  v7[3] = &unk_102465330;
  v8 = a2;
  v9 = a3;
  v7[4] = a4;
  v7[5] = a1;
  return [v5 async:v7];
}

id sub_1006413E0(uint64_t a1)
{
  if (qword_1025D4620 != -1)
  {
    sub_1018F0A94();
  }

  v2 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(a1 + 32) count];
    *buf = 134349056;
    *&buf[4] = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "AlsCell, cdma, rx, %{public}lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F0D70(a1);
  }

  result = [*(a1 + 32) count];
  if (result)
  {
    v5 = 0;
    v6 = 1;
    __asm { FMOV            V0.2D, #-1.0 }

    v51 = _Q0;
    do
    {
      v12 = [*(a1 + 32) objectAtIndex:v5];
      sub_10006BB6C(&v58);
      if ([v12 hasSid])
      {
        v13 = [v12 sid];
      }

      else
      {
        v13 = -1;
      }

      v62 = v13;
      if ([v12 hasNid])
      {
        v14 = [v12 nid];
      }

      else
      {
        v14 = -1;
      }

      v63 = v14;
      if ([v12 hasMcc])
      {
        v15 = [v12 mcc];
      }

      else
      {
        v15 = -1;
      }

      v58 = v15;
      if ([v12 hasBsid])
      {
        v16 = [v12 bsid];
      }

      else
      {
        v16 = -1;
      }

      v65 = v16;
      if ([v12 hasZoneid])
      {
        v17 = [v12 zoneid];
      }

      else
      {
        v17 = -1;
      }

      v64 = v17;
      if ([v12 hasBandclass])
      {
        v18 = [v12 bandclass];
      }

      else
      {
        v18 = -1;
      }

      v66 = v18;
      if ([v12 hasChannel])
      {
        v19 = [v12 channel];
      }

      else
      {
        v19 = -1;
      }

      v67 = v19;
      if ([v12 hasPnoffset])
      {
        v20 = [v12 pnoffset];
      }

      else
      {
        v20 = -1;
      }

      v68 = v20;
      v21 = __p;
      v60 = __p;
      if (v58 != -1)
      {
        if (__p >= v61)
        {
          v22 = (v61 - __p) >> 1;
          if (v22 <= 1)
          {
            v22 = 1;
          }

          if (v61 - __p >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v23 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }

          sub_1000B85D0(&__p, v23);
        }

        *__p = v58;
        v60 = v21 + 4;
      }

      sub_100621C1C(&v58, &v56);
      if (([objc_msgSend_location(v12) accuracy] & 0x80000000) != 0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v33 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_100641C10(buf);
          v34 = buf;
          if (SBYTE3(v94) < 0)
          {
            v34 = *buf;
          }

          *v76 = 67240451;
          *&v76[4] = v6 - 1;
          *&v76[8] = 2081;
          *&v76[10] = v34;
          _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "AlsCell, cdma, %{public}d, unknown, %{private}s", v76, 0x12u);
          if (SBYTE3(v94) < 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F0BC4(buf);
          v46 = qword_1025D4628;
          sub_100641C10(v76);
          if ((SBYTE3(v77) & 0x80u) == 0)
          {
            v47 = v76;
          }

          else
          {
            v47 = *v76;
          }

          LODWORD(v71) = 67240451;
          HIDWORD(v71) = v6 - 1;
          v72 = 2081;
          v73 = v47;
          LODWORD(v50) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v46, 0, "AlsCell, cdma, %{public}d, unknown, %{private}s", &v71, v50);
          v49 = v48;
          if (SBYTE3(v77) < 0)
          {
            operator delete(*v76);
          }

          sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate requester:didReceiveResponse:forRequest:]_block_invoke", "%s\n", v49);
          if (v49 != buf)
          {
            free(v49);
          }
        }

        v35 = *(*(a1 + 40) + 16);
        v36 = [*(a1 + 48) type];
        v37 = [*(a1 + 48) tag];
        v38 = *(v35 + 256);
        if (v38)
        {
          v38(v35, &v58, v36, v37, *(v35 + 152));
        }
      }

      else
      {
        *&v76[12] = 0;
        *&v76[4] = 0;
        v77 = xmmword_101C75BF0;
        v78 = v51;
        v79 = v51;
        v80 = v51;
        *v76 = 0xFFFF;
        v81 = 0;
        v82 = 0xBFF0000000000000;
        v83 = 0;
        v84 = 0;
        v85 = 0;
        v86 = 0xBFF0000000000000;
        v87 = 0x7FFFFFFF;
        v89 = 0;
        v90 = 0;
        v88 = 0;
        v91 = 0;
        [*(a1 + 40) populateLocationFromTower:objc_msgSend_location(v12) location:v76 timeReceived:*(a1 + 56)];
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v24 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_100641C10(&v71);
          v25 = SBYTE3(v75);
          v26 = v71;
          sub_100AE970C(v54);
          v27 = &v71;
          if (v25 < 0)
          {
            v27 = v26;
          }

          v28 = v54;
          if (v55 < 0)
          {
            v28 = v54[0];
          }

          *buf = 67240707;
          *&buf[4] = v6 - 1;
          *&buf[8] = 2081;
          *&buf[10] = v27;
          v93 = 2085;
          v94 = v28;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "AlsCell, cdma, %{public}d, valid, %{private}s, location, %{sensitive}s", buf, 0x1Cu);
          if (v55 < 0)
          {
            operator delete(v54[0]);
          }

          if (SBYTE3(v75) < 0)
          {
            operator delete(v71);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F0BC4(buf);
          v39 = qword_1025D4628;
          sub_100641C10(v54);
          v40 = v55;
          v41 = v54[0];
          sub_100AE970C(v52);
          v42 = v54;
          if (v40 < 0)
          {
            v42 = v41;
          }

          v43 = v52;
          if (v53 < 0)
          {
            v43 = v52[0];
          }

          LODWORD(v71) = 67240707;
          HIDWORD(v71) = v6 - 1;
          v72 = 2081;
          v73 = v42;
          v74 = 2085;
          v75 = v43;
          LODWORD(v50) = 28;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v39, 2, "AlsCell, cdma, %{public}d, valid, %{private}s, location, %{sensitive}s", &v71, v50);
          v45 = v44;
          if (v53 < 0)
          {
            operator delete(v52[0]);
          }

          if (v55 < 0)
          {
            operator delete(v54[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate requester:didReceiveResponse:forRequest:]_block_invoke", "%s\n", v45);
          if (v45 != buf)
          {
            free(v45);
          }
        }

        v29 = *(*(a1 + 40) + 16);
        v30 = [*(a1 + 48) type];
        v31 = [*(a1 + 48) tag];
        v32 = *(v29 + 248);
        if (v32)
        {
          v32(v29, &v58, v76, v30, v31, *(v29 + 152));
        }
      }

      if (v57 < 0)
      {
        operator delete(v56);
      }

      if (v70 < 0)
      {
        operator delete(v69);
      }

      if (__p)
      {
        v60 = __p;
        operator delete(__p);
      }

      result = [*(a1 + 32) count];
      v5 = v6++;
    }

    while (result > v5);
  }

  return result;
}

void sub_100641B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  sub_10064A5B4(&a32);
  _Unwind_Resume(a1);
}

uint64_t sub_100641C10@<X0>(void *a2@<X8>)
{
  sub_10003848C(v8);
  v3 = std::ostream::operator<<();
  sub_100038730(v3, ".", 1);
  v4 = std::ostream::operator<<();
  sub_100038730(v4, ".", 1);
  v5 = std::ostream::operator<<();
  sub_100038730(v5, ".", 1);
  std::ostream::operator<<();
  sub_100073518(v8, a2);
  v8[2] = v6;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  std::locale::~locale(v10);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100641DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10026C504(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100641E08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 256);
  if (v4)
  {
    return v4(result, a2, a3, a4, *(result + 152));
  }

  return result;
}

uint64_t sub_100641E1C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 248);
  if (v5)
  {
    return v5(result, a2, a3, a4, a5, *(result + 152));
  }

  return result;
}

id sub_100641E30(uint64_t a1)
{
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (qword_1025D4620 != -1)
  {
    sub_1018F0A94();
  }

  v3 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v5 = [*(a1 + 32) count];
    *buf = 134349056;
    *&buf[4] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "AlsCell, lte, rx, %{public}lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F0E64(a1);
  }

  result = [*(a1 + 32) count];
  if (result)
  {
    v7 = 0;
    v8 = 1;
    __asm { FMOV            V0.2D, #-1.0 }

    v46 = _Q0;
    do
    {
      v14 = [*(a1 + 32) objectAtIndex:v7];
      v52 = -1;
      v53 = -1;
      v51 = -1;
      v54 = -1;
      v55 = 0;
      v56 = 0;
      v57 = -1;
      v58 = -1;
      v59 = -1;
      v60 = xmmword_101C7F0A0;
      LODWORD(v51) = [v14 mcc];
      HIDWORD(v51) = [v14 mnc];
      LODWORD(v52) = [v14 tacID];
      HIDWORD(v52) = [v14 cellID];
      if ([v14 hasUarfcn])
      {
        v15 = [v14 uarfcn];
      }

      else
      {
        v15 = -1;
      }

      LODWORD(v53) = v15;
      if ([v14 hasPid])
      {
        v16 = [v14 pid];
      }

      else
      {
        v16 = -1;
      }

      HIDWORD(v53) = v16;
      if (([objc_msgSend_location(v14) accuracy] & 0x80000000) != 0)
      {
        if (p_info[196] != -1)
        {
          sub_1018F0AA8();
        }

        v28 = v3[197];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          sub_100075418(buf);
          v29 = buf;
          if (SBYTE3(v84) < 0)
          {
            v29 = *buf;
          }

          *v66 = 67240451;
          *&v66[4] = v8 - 1;
          *&v66[8] = 2081;
          *&v66[10] = v29;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "AlsCell, lte, %{public}d, unknown, %{private}s", v66, 0x12u);
          if (SBYTE3(v84) < 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (p_info[196] != -1)
          {
            sub_1018F0AA8();
          }

          v41 = v3[197];
          sub_100075418(v66);
          if ((SBYTE3(v67) & 0x80u) == 0)
          {
            v42 = v66;
          }

          else
          {
            v42 = *v66;
          }

          LODWORD(v61) = 67240451;
          HIDWORD(v61) = v8 - 1;
          v62 = 2081;
          v63 = v42;
          LODWORD(v45) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v41, 0, "AlsCell, lte, %{public}d, unknown, %{private}s", &v61, v45);
          v44 = v43;
          if (SBYTE3(v67) < 0)
          {
            operator delete(*v66);
          }

          sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate requester:didReceiveResponse:forRequest:]_block_invoke", "%s\n", v44);
          if (v44 != buf)
          {
            free(v44);
          }
        }

        v30 = *(*(a1 + 40) + 16);
        v31 = [*(a1 + 48) type];
        v32 = [*(a1 + 48) tag];
        v33 = *(v30 + 272);
        if (v33)
        {
          v33(v30, &v51, v31, v32, *(v30 + 152));
        }
      }

      else
      {
        *&v66[12] = 0;
        *&v66[4] = 0;
        v67 = xmmword_101C75BF0;
        v68 = v46;
        v69 = v46;
        v70 = v46;
        *v66 = 0xFFFF;
        v71 = 0;
        v72 = 0xBFF0000000000000;
        v73 = 0;
        v74 = 0;
        v75 = 0;
        v76 = 0xBFF0000000000000;
        v77 = 0x7FFFFFFF;
        v79 = 0;
        v80 = 0;
        v78 = 0;
        v81 = 0;
        [*(a1 + 40) populateLocationFromTower:objc_msgSend_location(v14) location:v66 timeReceived:*(a1 + 56)];
        if (p_info[196] != -1)
        {
          sub_1018F0AA8();
        }

        v17 = v3[197];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          sub_100075418(&v61);
          v18 = v3;
          v19 = p_info;
          v20 = SBYTE3(v65);
          v21 = v61;
          sub_100AE970C(__p);
          v22 = &v61;
          if (v20 < 0)
          {
            v22 = v21;
          }

          v23 = __p;
          if (v50 < 0)
          {
            v23 = __p[0];
          }

          *buf = 67240707;
          *&buf[4] = v8 - 1;
          *&buf[8] = 2081;
          *&buf[10] = v22;
          v83 = 2085;
          v84 = v23;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "AlsCell, lte, %{public}d, valid, %{private}s, location, %{sensitive}s", buf, 0x1Cu);
          if (v50 < 0)
          {
            operator delete(__p[0]);
          }

          p_info = v19;
          if (SBYTE3(v65) < 0)
          {
            operator delete(v61);
          }

          v3 = v18;
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F0BC4(buf);
          v34 = v3[197];
          sub_100075418(__p);
          v35 = v50;
          v36 = __p[0];
          sub_100AE970C(v47);
          v37 = __p;
          if (v35 < 0)
          {
            v37 = v36;
          }

          v38 = v47;
          if (v48 < 0)
          {
            v38 = v47[0];
          }

          LODWORD(v61) = 67240707;
          HIDWORD(v61) = v8 - 1;
          v62 = 2081;
          v63 = v37;
          v64 = 2085;
          v65 = v38;
          LODWORD(v45) = 28;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v34, 2, "AlsCell, lte, %{public}d, valid, %{private}s, location, %{sensitive}s", &v61, v45);
          v40 = v39;
          if (v48 < 0)
          {
            operator delete(v47[0]);
          }

          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          if (v50 < 0)
          {
            operator delete(__p[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate requester:didReceiveResponse:forRequest:]_block_invoke", "%s\n", v40);
          if (v40 != buf)
          {
            free(v40);
          }
        }

        v24 = *(*(a1 + 40) + 16);
        v25 = [*(a1 + 48) type];
        v26 = [*(a1 + 48) tag];
        v27 = *(v24 + 264);
        if (v27)
        {
          v27(v24, &v51, v66, v25, v26, *(v24 + 152));
        }
      }

      result = [*(a1 + 32) count];
      v7 = v8++;
    }

    while (result > v7);
  }

  return result;
}

void sub_1006424F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10064252C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 272);
  if (v4)
  {
    return v4(result, a2, a3, a4, *(result + 152));
  }

  return result;
}

uint64_t sub_100642540(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 264);
  if (v5)
  {
    return v5(result, a2, a3, a4, a5, *(result + 152));
  }

  return result;
}

id sub_100642554(uint64_t a1)
{
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (qword_1025D4620 != -1)
  {
    sub_1018F0A94();
  }

  v3 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v5 = [*(a1 + 32) count];
    *buf = 134349056;
    *&buf[4] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "AlsCell, nr, rx, %{public}lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F0F58(a1);
  }

  result = [*(a1 + 32) count];
  if (result)
  {
    v7 = 0;
    v8 = 1;
    __asm { FMOV            V0.2D, #-1.0 }

    v49 = _Q0;
    do
    {
      v14 = [*(a1 + 32) objectAtIndex:v7];
      v54 = -1;
      v55 = -1;
      v56 = -1;
      v57 = -1;
      v58 = -1;
      v59 = 0;
      v60 = 0;
      v61 = -1;
      v62 = -1;
      v63 = -1;
      v64 = 0xFFFFFFFF00000000;
      v65 = 0;
      if ([v14 hasMcc])
      {
        v15 = [v14 mcc];
      }

      else
      {
        v15 = -1;
      }

      LODWORD(v54) = v15;
      if ([v14 hasMnc])
      {
        v16 = [v14 mnc];
      }

      else
      {
        v16 = -1;
      }

      HIDWORD(v54) = v16;
      if ([v14 hasTacID])
      {
        v17 = [v14 tacID];
      }

      else
      {
        v17 = -1;
      }

      v55 = v17;
      if ([v14 hasCellID])
      {
        v18 = [v14 cellID];
      }

      else
      {
        v18 = -1;
      }

      v56 = v18;
      if ([v14 hasNrarfcn])
      {
        v19 = [v14 nrarfcn];
      }

      else
      {
        v19 = -1;
      }

      LODWORD(v57) = v19;
      if (([objc_msgSend_location(v14) accuracy] & 0x80000000) != 0)
      {
        if (p_info[196] != -1)
        {
          sub_1018F0AA8();
        }

        v31 = v3[197];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          sub_100642C8C(buf);
          v32 = buf;
          if (SBYTE3(v89) < 0)
          {
            v32 = *buf;
          }

          *v71 = 67240451;
          *&v71[4] = v8 - 1;
          *&v71[8] = 2081;
          *&v71[10] = v32;
          _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "AlsCell, nr, %{public}d, unknown, %{private}s", v71, 0x12u);
          if (SBYTE3(v89) < 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (p_info[196] != -1)
          {
            sub_1018F0AA8();
          }

          v44 = v3[197];
          sub_100642C8C(v71);
          if ((SBYTE3(v72) & 0x80u) == 0)
          {
            v45 = v71;
          }

          else
          {
            v45 = *v71;
          }

          LODWORD(v66) = 67240451;
          HIDWORD(v66) = v8 - 1;
          v67 = 2081;
          v68 = v45;
          LODWORD(v48) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v44, 0, "AlsCell, nr, %{public}d, unknown, %{private}s", &v66, v48);
          v47 = v46;
          if (SBYTE3(v72) < 0)
          {
            operator delete(*v71);
          }

          sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate requester:didReceiveResponse:forRequest:]_block_invoke", "%s\n", v47);
          if (v47 != buf)
          {
            free(v47);
          }
        }

        v33 = *(*(a1 + 40) + 16);
        v34 = [*(a1 + 48) type];
        v35 = [*(a1 + 48) tag];
        v36 = *(v33 + 288);
        if (v36)
        {
          v36(v33, &v54, v34, v35, *(v33 + 152));
        }
      }

      else
      {
        *&v71[12] = 0;
        *&v71[4] = 0;
        v72 = xmmword_101C75BF0;
        v73 = v49;
        v74 = v49;
        v75 = v49;
        *v71 = 0xFFFF;
        v76 = 0;
        v77 = 0xBFF0000000000000;
        v78 = 0;
        v79 = 0;
        v80 = 0;
        v81 = 0xBFF0000000000000;
        v82 = 0x7FFFFFFF;
        v84 = 0;
        v85 = 0;
        v83 = 0;
        v86 = 0;
        [*(a1 + 40) populateLocationFromTower:objc_msgSend_location(v14) location:v71 timeReceived:*(a1 + 56)];
        if (p_info[196] != -1)
        {
          sub_1018F0AA8();
        }

        v20 = v3[197];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          sub_100642C8C(&v66);
          v21 = v3;
          v22 = p_info;
          v23 = SBYTE3(v70);
          v24 = v66;
          sub_100AE970C(__p);
          v25 = &v66;
          if (v23 < 0)
          {
            v25 = v24;
          }

          v26 = __p;
          if (v53 < 0)
          {
            v26 = __p[0];
          }

          *buf = 67240707;
          *&buf[4] = v8 - 1;
          *&buf[8] = 2081;
          *&buf[10] = v25;
          v88 = 2085;
          v89 = v26;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "AlsCell, nr, %{public}d, valid, %{private}s, location, %{sensitive}s", buf, 0x1Cu);
          if (v53 < 0)
          {
            operator delete(__p[0]);
          }

          p_info = v22;
          if (SBYTE3(v70) < 0)
          {
            operator delete(v66);
          }

          v3 = v21;
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F0BC4(buf);
          v37 = v3[197];
          sub_100642C8C(__p);
          v38 = v53;
          v39 = __p[0];
          sub_100AE970C(v50);
          v40 = __p;
          if (v38 < 0)
          {
            v40 = v39;
          }

          v41 = v50;
          if (v51 < 0)
          {
            v41 = v50[0];
          }

          LODWORD(v66) = 67240707;
          HIDWORD(v66) = v8 - 1;
          v67 = 2081;
          v68 = v40;
          v69 = 2085;
          v70 = v41;
          LODWORD(v48) = 28;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v37, 2, "AlsCell, nr, %{public}d, valid, %{private}s, location, %{sensitive}s", &v66, v48);
          v43 = v42;
          if (v51 < 0)
          {
            operator delete(v50[0]);
          }

          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          if (v53 < 0)
          {
            operator delete(__p[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate requester:didReceiveResponse:forRequest:]_block_invoke", "%s\n", v43);
          if (v43 != buf)
          {
            free(v43);
          }
        }

        v27 = *(*(a1 + 40) + 16);
        v28 = [*(a1 + 48) type];
        v29 = [*(a1 + 48) tag];
        v30 = *(v27 + 280);
        if (v30)
        {
          v30(v27, &v54, v71, v28, v29, *(v27 + 152));
        }
      }

      result = [*(a1 + 32) count];
      v7 = v8++;
    }

    while (result > v7);
  }

  return result;
}

void sub_100642C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100642C8C@<X0>(void *a2@<X8>)
{
  sub_10003848C(v8);
  v3 = std::ostream::operator<<();
  sub_100038730(v3, ".", 1);
  v4 = std::ostream::operator<<();
  sub_100038730(v4, ".", 1);
  v5 = std::ostream::operator<<();
  sub_100038730(v5, ".", 1);
  std::ostream::operator<<();
  sub_100073518(v8, a2);
  v8[2] = v6;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  std::locale::~locale(v10);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100642E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10026C504(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100642E70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 288);
  if (v4)
  {
    return v4(result, a2, a3, a4, *(result + 152));
  }

  return result;
}

uint64_t sub_100642E84(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 280);
  if (v5)
  {
    return v5(result, a2, a3, a4, a5, *(result + 152));
  }

  return result;
}

void sub_1006430E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006435A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1006435E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 160);
  if (!v4)
  {
    sub_1018F1678(0, a2, a3);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10064A658;
  v6[3] = &unk_10245D2A8;
  v6[4] = a1;
  v7 = a2;
  v8 = a3;
  return [v4 async:v6];
}

id sub_100643664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 160);
  if (!v4)
  {
    sub_1018F17E0(0, a2, a3);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10064A678;
  v6[3] = &unk_10245D2A8;
  v6[4] = a1;
  v7 = a2;
  v8 = a3;
  return [v4 async:v6];
}

id sub_100643818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 160);
  if (!v4)
  {
    sub_1018F1A60(0, a2, a3);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10064A698;
  v6[3] = &unk_10245D2A8;
  v6[4] = a1;
  v7 = a2;
  v8 = a3;
  return [v4 async:v6];
}

double *sub_100643B28(double *result)
{
  v1 = *(result + 6);
  if (v1 < *(result + 7) + v1)
  {
    v2 = result;
    __asm { FMOV            V0.2D, #-1.0 }

    v33 = _Q0;
    do
    {
      v8 = [*(v2 + 4) objectAtIndex:v1];
      *&v9 = -1;
      *(&v9 + 1) = -1;
      v38 = v9;
      v39 = v9;
      LODWORD(v38) = [v8 mcc];
      DWORD1(v38) = [v8 mnc];
      DWORD2(v38) = [v8 lacID];
      HIDWORD(v38) = [v8 cellID];
      if ([v8 hasArfcn])
      {
        v10 = [v8 arfcn];
      }

      else
      {
        v10 = -1;
      }

      LODWORD(v39) = v10;
      if ([v8 hasPsc])
      {
        v11 = [v8 psc];
      }

      else
      {
        v11 = -1;
      }

      DWORD1(v39) = v11;
      if (([objc_msgSend_location(v8) accuracy] & 0x80000000) != 0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v18 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_100075418(buf);
          v19 = buf;
          if (v64 < 0)
          {
            v19 = *buf;
          }

          *v45 = 134349315;
          *&v45[4] = v1;
          *v46 = 2081;
          *&v46[2] = v19;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "AlsCell, gsm, %{public}lu, unknown, %{private}s", v45, 0x16u);
          if (SHIBYTE(v64) < 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018F0AA8();
          }

          v28 = qword_1025D4628;
          sub_100075418(v45);
          if (v46[11] >= 0)
          {
            v29 = v45;
          }

          else
          {
            v29 = *v45;
          }

          *v40 = 134349315;
          *&v40[4] = v1;
          v41 = 2081;
          v42 = v29;
          LODWORD(v32) = 22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v28, 0, "AlsCell, gsm, %{public}lu, unknown, %{private}s", v40, v32);
          v31 = v30;
          if ((v46[11] & 0x80000000) != 0)
          {
            operator delete(*v45);
          }

          sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate processCells:inRange:timeReceived:requestType:tag:]_block_invoke", "%s\n", v31);
          if (v31 != buf)
          {
            free(v31);
          }
        }

        result = *(*(v2 + 5) + 16);
        v20 = *(result + 23);
        if (v20)
        {
          result = v20(result, &v38, *(v2 + 18), *(v2 + 19), *(result + 19));
        }
      }

      else
      {
        *v46 = 0;
        *&v45[4] = 0;
        *&v46[8] = xmmword_101C75BF0;
        v47 = v33;
        v48 = v33;
        v49 = v33;
        *v45 = 0xFFFF;
        v50 = 0;
        v51 = 0xBFF0000000000000;
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 0xBFF0000000000000;
        v56 = 0x7FFFFFFF;
        v58 = 0;
        v59 = 0;
        v57 = 0;
        v60 = 0;
        [*(v2 + 5) populateLocationFromTower:objc_msgSend_location(v8) location:v45 timeReceived:v2[8]];
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v12 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_100075418(v40);
          v13 = SHIBYTE(v43);
          v14 = *v40;
          sub_100AE970C(__p);
          v15 = v40;
          if (v13 < 0)
          {
            v15 = v14;
          }

          v16 = __p;
          if (v37 < 0)
          {
            v16 = __p[0];
          }

          *buf = 134349571;
          *&buf[4] = v1;
          v62 = 2081;
          v63 = v15;
          v64 = 2085;
          v65 = v16;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "AlsCell, gsm, %{public}lu, valid, %{private}s, location, %{sensitive}s", buf, 0x20u);
          if (v37 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v43) < 0)
          {
            operator delete(*v40);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F0BC4(buf);
          v21 = qword_1025D4628;
          sub_100075418(__p);
          v22 = v37;
          v23 = __p[0];
          sub_100AE970C(v34);
          v24 = __p;
          if (v22 < 0)
          {
            v24 = v23;
          }

          v25 = v34;
          if (v35 < 0)
          {
            v25 = v34[0];
          }

          *v40 = 134349571;
          *&v40[4] = v1;
          v41 = 2081;
          v42 = v24;
          v43 = 2085;
          v44 = v25;
          LODWORD(v32) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v21, 2, "AlsCell, gsm, %{public}lu, valid, %{private}s, location, %{sensitive}s", v40, v32);
          v27 = v26;
          if (v35 < 0)
          {
            operator delete(v34[0]);
          }

          if (v37 < 0)
          {
            operator delete(__p[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate processCells:inRange:timeReceived:requestType:tag:]_block_invoke", "%s\n", v27);
          if (v27 != buf)
          {
            free(v27);
          }
        }

        result = *(*(v2 + 5) + 16);
        v17 = *(result + 22);
        if (v17)
        {
          result = v17(result, &v38, v45, *(v2 + 18), *(v2 + 19), *(result + 19));
        }
      }

      ++v1;
    }

    while (v1 < *(v2 + 7) + *(v2 + 6));
  }

  return result;
}

void sub_1006440D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100644108(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 184);
  if (v4)
  {
    return v4(result, a2, a3, a4, *(result + 152));
  }

  return result;
}

uint64_t sub_10064411C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 176);
  if (v5)
  {
    return v5(result, a2, a3, a4, a5, *(result + 152));
  }

  return result;
}

double *sub_1006442A8(double *result)
{
  v1 = *(result + 6);
  if (v1 < *(result + 7) + v1)
  {
    v2 = result;
    __asm { FMOV            V0.2D, #-1.0 }

    v33 = _Q0;
    do
    {
      v8 = [*(v2 + 4) objectAtIndex:v1];
      *&v9 = -1;
      *(&v9 + 1) = -1;
      v38 = v9;
      v39 = v9;
      LODWORD(v38) = [v8 mcc];
      DWORD1(v38) = [v8 mnc];
      DWORD2(v38) = [v8 lacID];
      HIDWORD(v38) = [v8 cellID];
      if ([v8 hasArfcn])
      {
        v10 = [v8 arfcn];
      }

      else
      {
        v10 = -1;
      }

      LODWORD(v39) = v10;
      if ([v8 hasPsc])
      {
        v11 = [v8 psc];
      }

      else
      {
        v11 = -1;
      }

      DWORD1(v39) = v11;
      if (([objc_msgSend_location(v8) accuracy] & 0x80000000) != 0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v18 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_100075418(buf);
          v19 = buf;
          if (v64 < 0)
          {
            v19 = *buf;
          }

          *v45 = 134349315;
          *&v45[4] = v1;
          *v46 = 2081;
          *&v46[2] = v19;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "AlsCell, scdma, %{public}lu, unknown, %{private}s", v45, 0x16u);
          if (SHIBYTE(v64) < 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_1018F0AA8();
          }

          v28 = qword_1025D4628;
          sub_100075418(v45);
          if (v46[11] >= 0)
          {
            v29 = v45;
          }

          else
          {
            v29 = *v45;
          }

          *v40 = 134349315;
          *&v40[4] = v1;
          v41 = 2081;
          v42 = v29;
          LODWORD(v32) = 22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v28, 0, "AlsCell, scdma, %{public}lu, unknown, %{private}s", v40, v32);
          v31 = v30;
          if ((v46[11] & 0x80000000) != 0)
          {
            operator delete(*v45);
          }

          sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate processScdmaCells:inRange:timeReceived:requestType:tag:]_block_invoke", "%s\n", v31);
          if (v31 != buf)
          {
            free(v31);
          }
        }

        result = *(*(v2 + 5) + 16);
        v20 = *(result + 25);
        if (v20)
        {
          result = v20(result, &v38, *(v2 + 18), *(v2 + 19), *(result + 19));
        }
      }

      else
      {
        *v46 = 0;
        *&v45[4] = 0;
        *&v46[8] = xmmword_101C75BF0;
        v47 = v33;
        v48 = v33;
        v49 = v33;
        *v45 = 0xFFFF;
        v50 = 0;
        v51 = 0xBFF0000000000000;
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v55 = 0xBFF0000000000000;
        v56 = 0x7FFFFFFF;
        v58 = 0;
        v59 = 0;
        v57 = 0;
        v60 = 0;
        [*(v2 + 5) populateLocationFromTower:objc_msgSend_location(v8) location:v45 timeReceived:v2[8]];
        if (qword_1025D4620 != -1)
        {
          sub_1018F0AA8();
        }

        v12 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          sub_100075418(v40);
          v13 = SHIBYTE(v43);
          v14 = *v40;
          sub_100AE970C(__p);
          v15 = v40;
          if (v13 < 0)
          {
            v15 = v14;
          }

          v16 = __p;
          if (v37 < 0)
          {
            v16 = __p[0];
          }

          *buf = 134349571;
          *&buf[4] = v1;
          v62 = 2081;
          v63 = v15;
          v64 = 2085;
          v65 = v16;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "AlsCell, scdma, %{public}lu, valid, %{private}s, location, %{sensitive}s", buf, 0x20u);
          if (v37 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v43) < 0)
          {
            operator delete(*v40);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F0BC4(buf);
          v21 = qword_1025D4628;
          sub_100075418(__p);
          v22 = v37;
          v23 = __p[0];
          sub_100AE970C(v34);
          v24 = __p;
          if (v22 < 0)
          {
            v24 = v23;
          }

          v25 = v34;
          if (v35 < 0)
          {
            v25 = v34[0];
          }

          *v40 = 134349571;
          *&v40[4] = v1;
          v41 = 2081;
          v42 = v24;
          v43 = 2085;
          v44 = v25;
          LODWORD(v32) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v21, 2, "AlsCell, scdma, %{public}lu, valid, %{private}s, location, %{sensitive}s", v40, v32);
          v27 = v26;
          if (v35 < 0)
          {
            operator delete(v34[0]);
          }

          if (v37 < 0)
          {
            operator delete(__p[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "[ALSLocationDelegate processScdmaCells:inRange:timeReceived:requestType:tag:]_block_invoke", "%s\n", v27);
          if (v27 != buf)
          {
            free(v27);
          }
        }

        result = *(*(v2 + 5) + 16);
        v17 = *(result + 24);
        if (v17)
        {
          result = v17(result, &v38, v45, *(v2 + 18), *(v2 + 19), *(result + 19));
        }
      }

      ++v1;
    }

    while (v1 < *(v2 + 7) + *(v2 + 6));
  }

  return result;
}

void sub_100644850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100644888(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 200);
  if (v4)
  {
    return v4(result, a2, a3, a4, *(result + 152));
  }

  return result;
}

uint64_t sub_10064489C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 192);
  if (v5)
  {
    return v5(result, a2, a3, a4, a5, *(result + 152));
  }

  return result;
}

void sub_100645644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, uint64_t a39, void *a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a40)
  {
    operator delete(a40);
  }

  _Unwind_Resume(a1);
}

void sub_100645734(uint64_t a1, const void **a2, const void **a3, int a4, int a5, int a6)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  sub_10064A838(&v25, *a2, a2[1], 0xD37A6F4DE9BD37A7 * ((a2[1] - *a2) >> 3));
  v22 = 0;
  v23 = 0;
  v24 = 0;
  sub_10064A838(&v22, *a3, a3[1], 0xD37A6F4DE9BD37A7 * ((a3[1] - *a3) >> 3));
  v11 = *(a1 + 160);
  if (v11)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3321888768;
    v12[2] = sub_10064A714;
    v12[3] = &unk_1024653B0;
    v12[4] = a1;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    sub_10064A838(&v13, v25, v26, 0xD37A6F4DE9BD37A7 * ((v26 - v25) >> 3));
    __p = 0;
    v17 = 0;
    v18 = 0;
    sub_10064A838(&__p, v22, v23, 0xD37A6F4DE9BD37A7 * ((v23 - v22) >> 3));
    v19 = a4;
    v20 = a5;
    v21 = a6;
    [v11 async:v12];
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }

    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }

    if (v25)
    {
      v26 = v25;
      operator delete(v25);
    }
  }

  else
  {
    sub_1018F1EAC();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Network/CLNetworkLocationRequester.h", 377, "onWifiLocationSeriesComplete");
    __break(1u);
  }
}

void sub_1006458E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  v23 = *(v21 - 112);
  if (v23)
  {
    *(v21 - 104) = v23;
    operator delete(v23);
  }

  v24 = *(v21 - 88);
  if (v24)
  {
    *(v21 - 80) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100645954(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t *a4)
{
  *a1 = off_1024653F0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  *(a1 + 216) = a2[4];
  *(a1 + 200) = v8;
  *(a1 + 184) = v7;
  *(a1 + 168) = v6;
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[8];
  *(a1 + 264) = a2[7];
  *(a1 + 280) = v11;
  *(a1 + 248) = v10;
  *(a1 + 232) = v9;
  *(a1 + 296) = 0;
  *(a1 + 304) = a3;
  *a1 = off_1024651D8;
  *(a1 + 312) = 0;
  *(a1 + 320) = 10;
  v12 = (a1 + 352);
  *(a1 + 344) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  sub_10000EC00((a1 + 352), off_1025D78C8);
  *(a1 + 376) = 0;
  v13 = *a4;
  *a4 = 0;
  *(a1 + 384) = v13;
  sub_100A2C934((a1 + 392));
  *(a1 + 472) = 0;
  [*(a1 + 304) silo];
  *(a1 + 312) = [[ALSLocationDelegate alloc] initWithRequester:a1];
  sub_10001CAF4(buf);
  *(a1 + 376) = sub_100175094(*buf, "AppleLocationServer", v12);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  sub_10001CAF4(buf);
  v14 = sub_10005BBE4(*buf, "AppleLocationServerTimeout", (a1 + 320));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if ((v14 & 1) == 0)
  {
    *(a1 + 320) = 10;
  }

  sub_10001CAF4(buf);
  v15 = sub_1004FBF14(*buf, "AppleLocationServerRequestLog", (a1 + 328));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if ((v15 & 1) == 0)
  {
    *(a1 + 328) = 0;
  }

  sub_10001CAF4(buf);
  v16 = sub_1004FBF14(*buf, "AppleLocationServerResponseLog", (a1 + 336));
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if ((v16 & 1) == 0)
  {
    *(a1 + 336) = 0;
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018F0AA8();
  }

  v17 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v12;
    if (*(a1 + 375) < 0)
    {
      v18 = v12->__r_.__value_.__r.__words[0];
    }

    v19 = *(a1 + 376);
    v20 = *(a1 + 320);
    v21 = *(a1 + 328) != 0;
    v22 = *(a1 + 336) != 0;
    *buf = 136381699;
    *&buf[4] = v18;
    *&buf[12] = 1026;
    *&buf[14] = v19;
    v42 = 1026;
    v43 = v20;
    v44 = 1026;
    v45 = v21;
    v46 = 1026;
    v47 = v22;
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "AlsInit, server, %{private}s, override, %{public}d, timeout, %{public}d, log request/response, %{public}d, %{public}d", buf, 0x24u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_1018F0AA8();
    }

    v24 = v12;
    if (*(a1 + 375) < 0)
    {
      v24 = v12->__r_.__value_.__r.__words[0];
    }

    v25 = *(a1 + 376);
    v26 = *(a1 + 320);
    v27 = *(a1 + 328) != 0;
    v28 = *(a1 + 336) != 0;
    v31 = 136381699;
    v32 = v24;
    v33 = 1026;
    v34 = v25;
    v35 = 1026;
    v36 = v26;
    v37 = 1026;
    v38 = v27;
    v39 = 1026;
    v40 = v28;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "AlsInit, server, %{private}s, override, %{public}d, timeout, %{public}d, log request/response, %{public}d, %{public}d", &v31, 36);
    v30 = v29;
    sub_100152C7C("Generic", 1, 0, 2, "CLNetworkLocationRequesterALS::CLNetworkLocationRequesterALS(const Listener &, id<CLIntersiloUniverse>, std::unique_ptr<CLINetworkLocationRequesterALSExternal>)", "%s\n", v29);
    if (v30 != buf)
    {
      free(v30);
    }
  }

  return a1;
}