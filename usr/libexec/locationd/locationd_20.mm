void sub_100144298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001442CC(uint64_t a1, uint64_t a2)
{
  result = sub_100143DF0(*(a1 + 24), a2);
  if ((*(a1 + 41) & 1) == 0)
  {
    result = sub_100099160(*(a1 + 24) + 72);
    if (result)
    {
      *(a1 + 41) = 1;

      return sub_1009E0DA0(a1);
    }
  }

  return result;
}

id *sub_100144334(uint64_t a1, double *a2, char a3)
{
  v32 = os_transaction_create();
  v33 = 0;
  if (*(a1 + 248) > 0.0 && (*(*a1 + 136))(a1, a1 + 224, a2))
  {
    (*(*a1 + 72))(a1, a1 + 224, a2);
    return sub_10001A420(&v32);
  }

  if ((a3 & 1) == 0)
  {
    sub_100144A84(*(a1 + 80));
  }

  v6 = (*(*a1 + 104))(a1, v42);
  if (v6 == 1)
  {
    (*(*a1 + 120))(a1, a2, 1);
  }

  else
  {
    if (v6)
    {
      if (qword_1025D4200 != -1)
      {
        sub_101AEE538();
      }

      v14 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Failed to insert record due to failure from reading the most recent entry.", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101AEE560(buf);
        LOWORD(v34) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 17, "Failed to insert record due to failure from reading the most recent entry.", &v34, 2, v32, v33);
        v16 = v15;
        sub_100152C7C("Generic", 1, 0, 0, "virtual void CLActivityRecorderDb<CLSignificantElevation>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLSignificantElevation, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v15);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      goto LABEL_41;
    }

    v7 = a2[3];
    v8 = v43;
    v9 = v7 - v43;
    if (v7 - v43 < 0.0)
    {
      v9 = -(v7 - v43);
    }

    if (v9 > 604800.0)
    {
      if (qword_1025D4200 != -1)
      {
        sub_101AEE538();
      }

      v10 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a2 + 3);
        *buf = 134349312;
        v39 = v43;
        v40 = 2050;
        v41 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Notice Potential CM database inconsistency, time jump %{public}lf %{public}lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AEE560(buf);
        v24 = *(a2 + 3);
        v34 = 134349312;
        v35 = v43;
        v36 = 2050;
        v37 = v24;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 0, "#Notice Potential CM database inconsistency, time jump %{public}lf %{public}lf", &v34, 22, v32, v33);
        v26 = v25;
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLSignificantElevation>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLSignificantElevation, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v25);
        if (v26 != buf)
        {
          free(v26);
        }
      }

      CLWriteStackshot();
      v7 = a2[3];
      v8 = v43;
    }

    if (v7 < v8)
    {
      if (v8 - v7 < 10.0)
      {
        if (qword_1025D4200 != -1)
        {
          sub_101AEE538();
        }

        v12 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v13 = a2[3];
          *buf = 134217984;
          v39 = v13;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the recent past.  Deleting records after %f.", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AEE560(buf);
          v27 = a2[3];
          v34 = 134217984;
          v35 = v27;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 1, "Entry being recorded has a startTime in the recent past.  Deleting records after %f.", COERCE_DOUBLE(&v34));
          v29 = v28;
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLSignificantElevation>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLSignificantElevation, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v28);
          if (v29 != buf)
          {
            free(v29);
          }
        }

        (*(*a1 + 88))(a1, a2);
        goto LABEL_40;
      }

      v17 = *(a1 + 136);
      if (qword_1025D4200 != -1)
      {
        sub_101AEE538();
      }

      v18 = v7 - v8 - v17;
      v19 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v39 = v18;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the substantial past.  Shift records by %f.", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AEE560(buf);
        v34 = 134217984;
        v35 = v18;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 1, "Entry being recorded has a startTime in the substantial past.  Shift records by %f.", COERCE_DOUBLE(&v34));
        v31 = v30;
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLSignificantElevation>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLSignificantElevation, DataProtectionPolicy = CLActivityDB::ClassCDataProtectionPolicy]", "%s\n", v30);
        if (v31 != buf)
        {
          free(v31);
        }
      }

      (*(*a1 + 96))(a1, v18);
    }

    (*(*a1 + 144))(a1, v42, a1 + 224, a2);
    (*(*a1 + 120))(a1, a2, 1);
  }

LABEL_40:
  v20 = *a2;
  v21 = *(a2 + 1);
  v22 = *(a2 + 3);
  *(a1 + 256) = *(a2 + 2);
  *(a1 + 272) = v22;
  *(a1 + 224) = v20;
  *(a1 + 240) = v21;
LABEL_41:
  if ((a3 & 1) == 0)
  {
    sub_1001454E0(*(a1 + 80));
  }

  return sub_10001A420(&v32);
}

void sub_100144A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10001A420(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100144A84(uint64_t a1)
{
  sub_10003926C(*(a1 + 16));
  v2 = sqlite3_exec(*(a1 + 8), "BEGIN TRANSACTION", 0, 0, 0);
  v7 = v2;
  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v3 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    v4 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v4 = *v4;
    }

    v5 = *(a1 + 120);
    *buf = 68290050;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = v4;
    v14 = 1026;
    v15 = v5;
    v16 = 1040;
    v17 = 4;
    v18 = 2098;
    v19 = &v7;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:beginTransaction, path:%{public, location:escape_only}s, count:%{public}d, rc:%{public, location:SqliteResult}.*P}", buf, 0x32u);
    v2 = v7;
  }

  ++*(a1 + 120);
  return v2;
}

uint64_t sub_100144BF4(uint64_t a1, uint64_t a2)
{
  if (!sub_100099160(a1 + 72))
  {
    return 2;
  }

  sub_100144CA0((a1 + 464), &v7);
  v4 = sub_100144D90(&v7, a2);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return v4;
}

void sub_100144C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

void *sub_100144CA0@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  if (*result && result[1])
  {
    operator new();
  }

  *a2 = 0;
  return result;
}

void *sub_100144D28(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_1024B27E8;
  a1[1] = a2;
  a1[2] = a3;
  sub_100039264(a2);
  *a1 = off_1024B2828;
  return a1;
}

uint64_t sub_100144D90(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100008880(*a1);
  v5 = sqlite3_step(v4);
  if (v5 == 101)
  {
    return 1;
  }

  if (v5 != 100)
  {
    return 2;
  }

  v6 = sub_100008880(*a1);
  *a2 = sqlite3_column_int(v6, 0);
  v7 = sub_100008880(*a1);
  *(a2 + 24) = sqlite3_column_double(v7, 1);
  v8 = sub_100008880(*a1);
  *(a2 + 32) = sqlite3_column_double(v8, 2);
  v9 = sub_100008880(*a1);
  *(a2 + 40) = sqlite3_column_int(v9, 3);
  v10 = sub_100008880(*a1);
  *(a2 + 44) = sqlite3_column_int(v10, 4);
  v11 = sub_100008880(*a1);
  v12 = sqlite3_column_double(v11, 5);
  result = 0;
  *(a2 + 48) = v12;
  return result;
}

void *sub_100144E5C(uint64_t a1)
{
  *a1 = off_1024B2828;
  v2 = sqlite3_reset(*(a1 + 16));
  if (v2)
  {
    sub_10060A6E4(*(a1 + 8), "sqlite3_reset()", v2, *(a1 + 16));
    sub_100608EB0(*(a1 + 8), v2);
  }

  v3 = sqlite3_clear_bindings(*(a1 + 16));
  if (v3)
  {
    sub_10060A6E4(*(a1 + 8), "sqlite3_clear_bindings()", v3, *(a1 + 16));
    sub_100608EB0(*(a1 + 8), v3);
  }

  return sub_1000393EC(a1);
}

void sub_100144F10(uint64_t a1)
{
  sub_100144E5C(a1);

  operator delete();
}

void sub_100144F48(int32x2_t *a1, uint64_t a2)
{
  if (sub_100099160(&a1[9]))
  {
    sub_10014521C(a1, a2, v30);
    if (v4 == 2)
    {
      if (qword_1025D4310 != -1)
      {
        sub_101AEEACC();
      }

      v5 = qword_1025D4318;
      if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Error setting elevation offsets.", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101AEEAF4();
      }
    }

    else
    {
      v28 = 0u;
      *v29 = 0u;
      *buf = 0u;
      v27 = 0u;
      v6 = *(a2 + 48);
      v7 = vadd_s32(a1[71], *(a2 + 40));
      v9 = *(a2 + 24);
      v8 = *(a2 + 32);
      *(&v27 + 1) = v9;
      *&v28 = v8;
      v19 = v7;
      *(&v28 + 1) = v7;
      v29[0] = v6;
      if (!v4)
      {
        if (v9 < v31)
        {
          v9 = v31;
        }

        *(&v27 + 1) = v9;
      }

      sub_100144CA0(&a1[56], &v20);
      v10 = sub_100008880(v20);
      if (sub_1001A3BD4(v10, 1, v9))
      {
        v11 = sub_100008880(v20);
        if (sub_1001A3BD4(v11, 2, v8))
        {
          v12 = sub_100008880(v20);
          if (sub_1001452C8(v12, 3, v19.i32[0]))
          {
            v13 = sub_100008880(v20);
            if (sub_1001452C8(v13, 4, v19.i32[1]))
            {
              v14 = sub_100008880(v20);
              if (sub_1001A3BD4(v14, 5, v6))
              {
                v15 = a1[10];
                v16 = sub_100008880(v20);
                sub_1001A3DEC(v15, v16);
                if (a1[64])
                {
                  if (*&a1[65] && *(a2 + 56) == 1)
                  {
                    *buf = sub_100616934(*&a1[10]);
                    sub_100655C7C(a1, &buf[4]);
                    v17 = a1[64];
                    v21[0] = _NSConcreteStackBlock;
                    v21[1] = 3221225472;
                    v22 = *buf;
                    v23 = v27;
                    v24 = v28;
                    v25 = *v29;
                    v21[2] = sub_100FAD4DC;
                    v21[3] = &unk_102485918;
                    v21[4] = a1;
                    [v17 async:v21];
                  }
                }
              }
            }
          }
        }
      }

      v18 = v20;
      v20 = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }
    }
  }
}

void sub_1001451F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

double sub_10014521C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 104))(a1, a3);
  result = *(a1 + 552);
  if (result == 1.79769313e308 || *(a2 + 24) < result)
  {
    v9 = (a1 + 528);
    if (v6 == 1)
    {
      result = 0.0;
      *(a1 + 560) = 0u;
      *(a1 + 576) = 0u;
      *v9 = 0u;
      *(a1 + 544) = 0u;
    }

    else if (!v6)
    {
      result = *(a3 + 40);
      *(a1 + 560) = 0;
      *v9 = 0u;
      *(a1 + 544) = 0u;
      *(a1 + 568) = result;
      *(a1 + 576) = 0u;
    }
  }

  return result;
}

BOOL sub_1001452C8(sqlite3_stmt *a1, int a2, int a3)
{
  v6 = sqlite3_bind_int(a1, a2, a3);
  v11 = v6;
  if (v6)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v7 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68290307;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 1025;
      v17 = a3;
      v18 = 1026;
      v19 = a2;
      v20 = 1040;
      v21 = 4;
      v22 = 2098;
      v23 = &v11;
      v24 = 2081;
      v25 = sqlite3_sql(a1);
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not bind, value:%{private}u, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x38u);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v8 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v9 = sqlite3_sql(a1);
      *buf = 68290307;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 1025;
      v17 = a3;
      v18 = 1026;
      v19 = a2;
      v20 = 1040;
      v21 = 4;
      v22 = 2098;
      v23 = &v11;
      v24 = 2081;
      v25 = v9;
      _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not bind", "{msg%{public}.0s:Could not bind, value:%{private}u, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x38u);
    }
  }

  return v6 == 0;
}

uint64_t sub_1001454E0(uint64_t a1)
{
  v6 = sqlite3_exec(*(a1 + 8), "END TRANSACTION", 0, 0, 0);
  --*(a1 + 120);
  if (qword_1025D4850 != -1)
  {
    sub_1018E57D4();
  }

  v2 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    v3 = (a1 + 96);
    if (*(a1 + 119) < 0)
    {
      v3 = *v3;
    }

    v4 = *(a1 + 120);
    *buf = 68290050;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = v3;
    v13 = 1026;
    v14 = v4;
    v15 = 1040;
    v16 = 4;
    v17 = 2098;
    v18 = &v6;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:endTransaction, path:%{public, location:escape_only}s, count:%{public}d, rc:%{public, location:SqliteResult}.*P}", buf, 0x32u);
  }

  if (*(a1 + 120))
  {
    sub_1018E5B50();
  }

  sub_1000393C8(*(a1 + 16));
  return v6;
}

id sub_10014567C(uint64_t a1, uint64_t a2)
{
  result = [*(*(a1 + 40) + 136) BOOLForKey:@"isSystemService" atKeyPath:a2 defaultValue:0];
  if ((result & 1) == 0)
  {
    v5 = *(a1 + 32);

    return [v5 addObject:a2];
  }

  return result;
}

uint64_t sub_100145710(char *a1, int a2, int *a3)
{
  if ((*a3 - 1) > 1)
  {

    return sub_1000489F4(a1, a2, a3);
  }

  else
  {
    v7 = v3;
    v8 = v4;
    v6 = 0;
    return sub_1000489F4(a1, a2, &v6);
  }
}

uint64_t sub_100145758(char *a1, int a2, int *a3)
{
  v4 = sub_100145710(a1, a2, a3);
  sub_1000438DC(a1);
  return v4;
}

id sub_100145898(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (*(v3 + 32))
  {
    sub_101A827E4();
  }

  if (!a3)
  {
    sub_101A8295C();
  }

  *(v3 + 32) = a2;
  result = a3;
  *(v3 + 48) = result;
  return result;
}

void sub_100145A9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100145AD0(uint64_t a1, uint64_t *a2, CLConnectionMessage **a3)
{
  v3 = *a2;
  v5 = *a3;
  v4 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v6 = _os_activity_create(dword_100000000, "CL: kCLConnectionMessageGyroBiasEstimation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v7 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v3 + 72);
    *buf = 68290050;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2050;
    v18 = v3;
    v19 = 1026;
    v20 = 0;
    v21 = 1026;
    v22 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:kCLConnectionMessageGyroBiasEstimation, event:%{public, location:escape_only}s, this:%{public}p, registrationRequired:%{public}hhd, registrationReceived:%{public}hhd}", buf, 0x32u);
  }

  v9[0] = v5;
  v9[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100145CA8(v3, v9);
  if (v4)
  {
    sub_100008080(v4);
    os_activity_scope_leave(&state);
    sub_100008080(v4);
  }

  else
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_100145CA8(uint64_t a1, CLConnectionMessage **a2)
{
  Dictionary = CLConnectionMessage::getDictionary(*a2);
  sub_100005548(v9, Dictionary);
  HIBYTE(v8) = 0;
  if (sub_10001CB4C(v9, "kCLConnectionMessageSubscribeKey", &v8 + 7, 0xFFFFFFFFLL))
  {
    sub_100145E88(a1, HIBYTE(v8), v9);
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1019EED30();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v13 = "kCLConnectionMessageSubscribeKey";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019EEDB0(buf);
      v10 = 136446210;
      v11 = "kCLConnectionMessageSubscribeKey";
      LODWORD(v8) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", &v10, v8);
      v7 = v6;
      sub_100152C7C("Generic", 1, 0, 0, "void CLDaemonClient::handleMessageGyroBiasEstimation(std::shared_ptr<CLConnectionMessage>)", "%s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  return sub_100005DA4();
}

void sub_100145E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(NSAutoreleasePool);
  if (qword_1025D42F0 != -1)
  {
    sub_1019EF834();
  }

  v7 = off_1025D42F8;
  if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 48);
    *buf = 138543618;
    v40 = v8;
    v41 = 1026;
    v42 = a2;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "CLDaemonClient received GyroBiasEstimation request,client,%{public}@,subscribe,%{public}d", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019EEE30(buf);
    v22 = *(a1 + 48);
    v35 = 138543618;
    v36 = v22;
    v37 = 1026;
    v38 = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D42F8, 1, "CLDaemonClient received GyroBiasEstimation request,client,%{public}@,subscribe,%{public}d", &v35, 18);
    v24 = v23;
    sub_100152C7C("Generic", 1, 0, 2, "void CLDaemonClient::handleRequestGyroBiasEstimation(BOOL, const CLNameValuePair &)", "%s\n", v23);
    if (v24 != buf)
    {
      free(v24);
    }
  }

  (*(*a1 + 32))(a1, "kCLConnectionMessageGyroBiasEstimation", a2);
  if (a2)
  {
    v34 = 0;
    if (sub_10001CB4C(a3, "kCLConnectionMessageBuildGYTTKey", &v34, 0xFFFFFFFFLL))
    {
      if (v34)
      {
        [objc_msgSend(objc_msgSend(*(a1 + 24) "vendor")];
      }
    }

    else
    {
      if (qword_1025D42F0 != -1)
      {
        sub_1019EEE08();
      }

      v13 = off_1025D42F8;
      if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "isBuildingGYTT not set", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019EEE30(buf);
        LOWORD(v35) = 0;
        LODWORD(v31) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D42F8, 17, "isBuildingGYTT not set", &v35, v31);
        v30 = v29;
        sub_100152C7C("Generic", 1, 0, 0, "void CLDaemonClient::handleRequestGyroBiasEstimation(BOOL, const CLNameValuePair &)", "%s\n", v29);
        if (v30 != buf)
        {
          free(v30);
        }
      }

      v34 = 0;
    }

    if (qword_1025D42F0 != -1)
    {
      sub_1019EEE08();
    }

    v14 = off_1025D42F8;
    if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_INFO))
    {
      *buf = 67240192;
      LODWORD(v40) = v34;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "CLDaemonClient got gyro bias estimation subscription request,isBuildingGYTT,%{public}d", buf, 8u);
    }

    v15 = sub_10000A100(121, 2);
    if (v15)
    {
      sub_1019EEE30(buf);
      v35 = 67240192;
      LODWORD(v36) = v34;
      LODWORD(v31) = 8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D42F8, 1, "CLDaemonClient got gyro bias estimation subscription request,isBuildingGYTT,%{public}d", &v35, v31);
      v28 = v27;
      v15 = sub_100152C7C("Generic", 1, 0, 2, "void CLDaemonClient::handleRequestGyroBiasEstimation(BOOL, const CLNameValuePair &)", "%s\n", v27);
      if (v28 != buf)
      {
        free(v28);
      }
    }

    v18 = *(a1 + 408);
    v17 = *(a1 + 416);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100008080(v17);
    }

    v19 = *(a1 + 32);
    v20 = sub_100146590(v15, v16);
    v21 = v34;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3321888768;
    v32[2] = sub_100146C9C;
    v32[3] = &unk_102494F40;
    v32[4] = v19;
    v32[5] = a1;
    v32[6] = v18;
    v33 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1001464F8(v20, a1, v21, v32);
    *(a1 + 276) = 1;
    if (v33)
    {
      std::__shared_weak_count::__release_weak(v33);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_weak(v17);
    }
  }

  else
  {
    if (qword_1025D42F0 != -1)
    {
      sub_1019EEE08();
    }

    v9 = off_1025D42F8;
    if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "CLDaemonClient got gyro bias estimation unsubscription request", buf, 2u);
    }

    v10 = sub_10000A100(121, 2);
    if (v10)
    {
      sub_1019EEE30(buf);
      LOWORD(v35) = 0;
      LODWORD(v31) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D42F8, 1, "CLDaemonClient got gyro bias estimation unsubscription request", &v35, v31);
      v26 = v25;
      v10 = sub_100152C7C("Generic", 1, 0, 2, "void CLDaemonClient::handleRequestGyroBiasEstimation(BOOL, const CLNameValuePair &)", "%s\n", v25);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    v12 = sub_100146590(v10, v11);
    sub_1001464F8(v12, a1, 0, 0);
    *(a1 + 276) = 0;
  }
}

void sub_1001464F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_100011660(a1, a2);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014679C;
  v9[3] = &unk_102499FB8;
  v9[5] = a1;
  v9[6] = a2;
  v10 = a3;
  v9[4] = a4;
  sub_10017A794(v8, v9);
}

uint64_t sub_100146590(uint64_t a1, uint64_t a2)
{
  if (qword_102663A30 != -1)
  {
    sub_101B33684();
  }

  return qword_102638370;
}

void sub_1001465C8(uint64_t result, uint64_t a2, char a3, void *a4)
{
  if ((*(result + 1065) & 1) == 0)
  {
    v8 = sub_1001467B0(result, a2);
    if (a4 || (v8 & 1) != 0)
    {
      if (a4)
      {
        sub_1001468F0(result, a2, a3, a4);
      }

      v10 = result + 1072;
      v11 = *(result + 1080);
      if (v11 == result + 1072)
      {
LABEL_17:
        *(result + 1008) = 0;
      }

      else
      {
        v12 = *(result + 1080);
        while ((*(v12 + 32) & 1) == 0)
        {
          v12 = *(v12 + 8);
          if (v12 == v10)
          {
            goto LABEL_17;
          }
        }

        *(result + 1008) = v12 != v10;
        if (v12 != v10)
        {
          *(result + 932) = 1105199104;
        }
      }

      if (*(result + 1024) == 1)
      {
        while (v11 != v10)
        {
          if ((*(v11 + 32) & 1) == 0)
          {
            goto LABEL_25;
          }

          v11 = *(v11 + 8);
        }

        v11 = result + 1072;
LABEL_25:
        *(result + 1025) = v11 != v10;
      }

      sub_100146D74(result);
    }

    else
    {
      if (qword_1025D42F0 != -1)
      {
        sub_101B338A0();
      }

      v9 = off_1025D42F8;
      if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_INFO))
      {
        v13 = 134349056;
        v14 = a2;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "[CLGBE] Client instance %{public}p already unregistered", &v13, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B338B4();
      }
    }
  }
}

uint64_t sub_1001467B0(void *a1, uint64_t a2)
{
  v2 = a1[135];
  if (v2 == a1 + 134)
  {
    return 0;
  }

  while (v2[2] != a2)
  {
    v2 = v2[1];
    if (v2 == a1 + 134)
    {
      return 0;
    }
  }

  if (qword_1025D42F0 != -1)
  {
    sub_101B338A0();
  }

  v6 = off_1025D42F8;
  if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_INFO))
  {
    v9 = 134349056;
    v10 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "[CLGBE] Removing client %{public}p", &v9, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B339A4();
  }

  _Block_release(v2[3]);
  v8 = *v2;
  v7 = v2[1];
  *(v8 + 8) = v7;
  *v7 = v8;
  --a1[136];
  operator delete(v2);
  return 1;
}

void sub_100146C9C(void *a1, _OWORD *a2)
{
  v11[0] = *a2;
  *(v11 + 12) = *(a2 + 12);
  v5 = a1 + 4;
  v3 = a1[4];
  v4 = v5[1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3321888768;
  v8[2] = sub_100147598;
  v8[3] = &unk_102494F08;
  v7 = a1[6];
  v6 = a1[7];
  v8[4] = v4;
  v8[5] = v7;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10[0] = v11[0];
  *(v10 + 12) = *(v11 + 12);
  [v3 async:v8];
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_100146D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100146D74(uint64_t a1)
{
  if (sub_100008074())
  {
    if (qword_1025D42F0 != -1)
    {
      sub_101B338A0();
    }

    v2 = off_1025D42F8;
    if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 1025);
      v4 = *(a1 + 1008);
      v5 = *(a1 + 1088);
      *buf = 67240704;
      v15 = v3;
      v16 = 1026;
      v17 = v4;
      v18 = 2050;
      v19 = v5;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "[CLGBE] SPUEnabled,%{public}d,BuildingGYTT,%{public}d,NumClients,%{public}lu", buf, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B33C60();
    }

    if (*(a1 + 1088))
    {
      if (*(a1 + 1025) == 1)
      {
        sub_100147000(a1);
        v8 = sub_100023ED4(0, v7);
        (*(*(v8 + 136) + 16))();
      }

      if ((*(a1 + 1008) & 1) != 0 || (*(a1 + 1024) & 1) == 0)
      {
        sub_1010F6388(a1, v6);
      }
    }

    if (*(a1 + 1024) == 1 && ((*(a1 + 1025) & 1) != 0 || (v9 = sub_100023ED4(0, v6), (*(*(v9 + 136) + 16))(), (*(a1 + 1024) & 1) != 0)))
    {
      if (*(a1 + 1008))
      {
        return;
      }
    }

    else if (*(a1 + 1088))
    {
      return;
    }

    v11 = dispatch_time(0, 2000000000);
    v12 = *(a1 + 1016);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1010F6780;
    block[3] = &unk_102449A78;
    block[4] = a1;
    dispatch_after(v11, v12, block);
    return;
  }

  if (qword_1025D42F0 != -1)
  {
    sub_101B338A0();
  }

  v10 = off_1025D42F8;
  if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "[CLGBE] Gyro not available", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B33B84();
  }
}

uint64_t sub_100147000(uint64_t result)
{
  if ((*(result + 1065) & 1) == 0)
  {
    if ((*(result + 1024) & 1) == 0)
    {
      sub_101B33704();
    }

    if (!*(result + 1032))
    {
      operator new();
    }
  }

  return result;
}

void sub_100147144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1010F9D48(va);
  sub_1010F9B48(va1);
  operator delete();
}

void sub_100147174(uint64_t a1, char *a2)
{
  LOBYTE(v6) = 21;
  HIBYTE(v6) = a2;
  if (qword_1025D42F0 != -1)
  {
    sub_101ADA680();
  }

  v4 = off_1025D42F8;
  if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_INFO))
  {
    v5 = "stopping";
    if (a2)
    {
      v5 = "starting";
    }

    *buf = 136446210;
    v8 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "CLMotionCoprocessor %{public}s gyro bias and variance updates", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ADDA98(a2);
  }

  sub_100147290(a1 + 192, &v6, 0);
}

void sub_100147290(uint64_t a1, __int16 *a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3812000000;
    v8[3] = sub_100F64110;
    v8[4] = nullsub_1726;
    v8[5] = &unk_10238AE8B;
    v9 = *a2;
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001477E4;
    v7[3] = &unk_102462080;
    v7[5] = v8;
    v7[6] = a1;
    v7[4] = v4;
    dispatch_async(v6, v7);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_1001473BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001473E0(uint64_t a1, uint64_t a2)
{
  sub_10004FD18();
  sub_100147630(a2, (a2 + 12), *(a2 + 24), v4);
  *buf = sub_10007005C(v4);
  sub_100147740(a1, buf);
}

__n128 sub_100147598(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = *(a1 + 56);
  result = *(a1 + 68);
  *(v5 + 12) = result;
  v4 = *(a1 + 48);
  if (v4)
  {
    if (*(v4 + 8) != -1)
    {
      sub_1001473E0(v2, v5);
    }
  }

  return result;
}

BOOL sub_100147630(float *a1, float *a2, char a3, uint64_t a4)
{
  v9 = a3;
  v8 = *a1;
  sub_100116D68(a4, "kCLBiasXKey", &v8);
  v8 = a1[1];
  sub_100116D68(a4, "kCLBiasYKey", &v8);
  v8 = a1[2];
  sub_100116D68(a4, "kCLBiasZKey", &v8);
  v8 = *a2;
  sub_100116D68(a4, "kCLVarianceXKey", &v8);
  v8 = a2[1];
  sub_100116D68(a4, "kCLVarianceYKey", &v8);
  v8 = a2[2];
  sub_100116D68(a4, "kCLVarianceZKey", &v8);
  return sub_100043360(a4, "KCLDoingBiasEstimationKey", &v9);
}

void sub_1001477C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001477E4(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 21;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 2);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

uint64_t sub_1001478DC(uint64_t a1, char **a2, void *a3)
{
  sub_10000EC00(&__p, *a2);
  CLConnectionMessage::CLConnectionMessage();
  if (v6 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_100147938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100147954(void *a1, char **a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_1001478DC((a1 + 3), a2, a3);
  return a1;
}

void sub_1001479B0(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101B13524();
    }

    v2 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 48);
      v4 = *(a1 + 40);
      v5[0] = 68289538;
      v5[1] = 0;
      v6 = 2082;
      v7 = "";
      v8 = 1026;
      v9 = v3;
      v10 = 2114;
      v11 = v4;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Releasing process assertion, pid:%{public}u, clientKeyPath:%{public, location:escape_only}@}", v5, 0x22u);
    }

    [*(a1 + 32) invalidate];
  }
}

void sub_100147AB4(void *a1)
{
  sub_100147E00(__stack_chk_guard, v15, v16, *v17, v17[4]);
  if (qword_1025D4360 != -1)
  {
    dispatch_once(&qword_1025D4360, &stru_10249AB30);
  }

  sub_100FE59C0(a1[21]);
  sub_100FE5108(a1);
  sub_100148AD4();
  v2 = sub_100147CAC();
  sub_100152D8C(v2, v3, v4, v5, v6, v7, v8, v9);
  v11 = v10;
  sub_100147DD8("Generic", v12, v13, v14, "void CLMotionSyncStoreCompanion::persistCachedValues()", "%s\n");
  if (v11 != a1)
  {
    free(v11);
  }
}

void sub_100147BD0()
{
  sub_100147E1C(__stack_chk_guard, v13, v15, v16, *v17, v17[4]);
  if (qword_1025D4360 != -1)
  {
    dispatch_once(&qword_1025D4360, &stru_10249AB30);
  }

  sub_100147CF0();
  v14 = v2;
  v3 = sub_100147CC4();
  _os_log_send_and_compose_impl(v3, v4, v5, v6, v7, v8, 2, v9, v14);
  sub_100147E38();
  sub_100147DD8("Generic", v10, v11, v12, "virtual void CLMotionSyncStoreCompanion::deviceUnlocked()", "%s\n");
  if (v0 != v1)
  {
    free(v0);
  }
}

void sub_100147DAC(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_signpost_emit_with_name_impl(a1, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, va, 0x26u);
}

uint64_t sub_100147DD8(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, char *a6)
{

  return sub_100152C7C(a1, 1, 0, 2, a5, a6);
}

void sub_100147E00(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, char a5)
{
  *(v5 - 40) = a1;

  bzero(&a5, 0x65CuLL);
}

void sub_100147E1C(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  *(v6 - 40) = a1;

  bzero(&a6, 0x65CuLL);
}

void sub_100147E44(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_impl(a1, v12, OS_LOG_TYPE_FAULT, a4, va, 0x26u);
}

void sub_100147E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{

  bzero(&a12, 0x65CuLL);
}

uint64_t sub_100147EC4(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, char *a6)
{

  return sub_100152C7C(a1, 1, 0, 0, a5, a6);
}

double sub_100147EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, int a11, char a12)
{

  return _os_log_send_and_compose_impl(2, 0, &a12, 1628, a5, a6, 16, a8);
}

double sub_100147F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13)
{

  return _os_log_send_and_compose_impl(2, 0, &a13, 1628, a5, a6, 0, a8);
}

double sub_100147F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, int a11, char a12)
{

  return _os_log_send_and_compose_impl(2, 0, &a12, 1628, a5, a6, 1, a8);
}

uint64_t sub_100147FFC(uint64_t result, float a2)
{
  *(v5 - 96) = a2;
  *(v5 - 92) = v3;
  *(v5 - 88) = 2082;
  *(v4 + 10) = result;
  *(v5 - 78) = 2114;
  *(v4 + 20) = v2;
  return result;
}

void sub_10014802C(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, char a5)
{
  *(v5 - 56) = a1;

  bzero(&a5, 0x65CuLL);
}

uint64_t sub_100148048(uint64_t result, float a2)
{
  *(v2 - 64) = a2;
  *(v2 - 60) = result;
  return result;
}

void sub_1001480C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_signpost_emit_with_name_impl(a1, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, va, 0x26u);
}

void sub_100148100(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = a1;
  *(v4 - 52) = 2048;
  *(v3 + 14) = v2;
}

uint64_t sub_100148154(uint64_t result, float a2)
{
  *(v3 - 64) = a2;
  *(v2 + 4) = result;
  return result;
}

void sub_10014816C(int a1@<W8>, float a2@<S0>)
{
  *(v2 - 64) = a2;
  *(v2 - 60) = a1;
  *(v2 - 56) = 1026;
}

void sub_100148180(uint64_t a1@<X8>)
{
  *(v2 + 4) = v1;
  *(v3 - 68) = 2048;
  *(v2 + 14) = 0;
  *(v3 - 58) = 2080;
  v2[3] = a1;
}

double sub_1001481AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(2, 0, a3, 1628, a5, a6, 0, a8);
}

void sub_1001481CC(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(a1 + 4) = v2;
  *(v4 - 52) = 1026;
  *(a1 + 14) = v3;
}

uint64_t sub_10014820C(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{

  return sub_100152C7C(a1, 1, 0, 0, v6, a6);
}

uint64_t sub_10014822C(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{

  return sub_100152C7C(a1, 1, 0, 2, v6, a6);
}

void sub_10014824C(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v5 - 64) = a2;
  *(v5 - 60) = v3;
  *(v5 - 56) = 1024;
  *(a1 + 10) = v4;
  *(v5 - 50) = 1024;
  *(v5 - 48) = v2;
}

void sub_100148278(float a1)
{
  *(v3 - 80) = a1;
  *(v2 + 4) = v1;
  *(v3 - 68) = 2048;
  *(v2 + 14) = 3;
}

double sub_1001482A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return _os_log_send_and_compose_impl(2, 0, va, 1628, a5, a6, 17, a8);
}

double sub_1001482EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13)
{

  return _os_log_send_and_compose_impl(2, 0, &a13, 1628, a5, a6, 2, a8);
}

BOOL sub_100148314()
{
  v1 = off_1025D47A8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

double sub_100148334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, int a11, char a12)
{

  return _os_log_send_and_compose_impl(2, 0, &a12, 1628, a5, a6, 0, a8);
}

double sub_100148394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, int a11, char a12)
{

  return _os_log_send_and_compose_impl(2, 0, &a12, 1628, a5, a6, 2, a8);
}

double sub_1001483BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(2, 0, a3, 1628, a5, a6, 2, a8);
}

void sub_1001483DC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

BOOL sub_1001483FC()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void sub_100148414(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 80) = a2;
  *(v3 + 4) = v2;
  *(v4 - 68) = 2048;
  *(v3 + 14) = 0;
  *(v4 - 58) = 2080;
  v3[3] = (a1 + 0x8000000000000000) & 0x7FFFFFFFFFFFFFFFLL;
}

double sub_1001484A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(2, 0, a3, 1628, a5, a6, 1, a8);
}

void sub_1001484C0(float a1)
{
  *(v4 - 64) = a1;
  *(v3 + 4) = v2;
  *(v4 - 52) = 2112;
  *(v3 + 14) = v1;
}

void sub_1001484F4(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 80) = a2;
  *(v2 + 4) = a1;
  *(v3 - 68) = 2048;
  *(v2 + 14) = v4;
}

void sub_100148518(__int16 a1@<W8>)
{
  *(v4 + 14) = v1;
  *(v5 - 58) = a1;
  *(v4 + 24) = v3;
  *(v5 - 48) = 1024;
  *(v4 + 34) = v2;
}

void sub_100148570(float a1)
{
  *(v3 - 80) = a1;
  *(v2 + 4) = v1;
  *(v3 - 68) = 2048;
  *(v2 + 14) = 2;
}

void sub_100148598(float a1)
{
  *(v2 - 80) = a1;
  *(v1 + 4) = v4;
  *(v2 - 68) = 2050;
  *(v1 + 14) = v3;
}

BOOL sub_100148630()
{
  v1 = qword_1025D42D8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_10014865C(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 80) = a2;
  *(a1 + 4) = v2;
  *(v3 - 68) = 2050;
  *(a1 + 14) = v4;
}

double sub_100148680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16)
{

  return _os_log_send_and_compose_impl(2, 0, &a16, 1628, a5, v16, 17, a8);
}

BOOL sub_1001486A8()
{
  v1 = qword_1025D4798;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_1001486C8(double a1, float a2)
{
  *(v3 - 64) = a2;
  *(v2 + 4) = a1;
  *(v3 - 52) = 1026;
}

uint64_t sub_1001486DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *(v5 - 96) = 67109888;
  *(v5 - 92) = result;
  *(v5 - 88) = 2048;
  *(v4 + 10) = a2;
  *(v5 - 78) = 2048;
  *(v4 + 20) = a3;
  *(v5 - 68) = 2048;
  *(v4 + 30) = a4;
  return result;
}

void sub_100148714(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v5 - 80) = a2;
  *(v4 + 4) = a1;
  *(v5 - 68) = 2048;
  *(v4 + 14) = v2;
  *(v5 - 58) = 2048;
  v4[3] = v3;
}

void sub_100148740(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v5 - 80) = a2;
  *(v4 + 4) = a1;
  *(v5 - 68) = 2082;
  *(v4 + 14) = v2;
  *(v5 - 58) = 2082;
  v4[3] = v3;
}

double sub_10014876C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, int a11, char a12)
{

  return _os_log_send_and_compose_impl(2, 0, &a12, 1628, a5, a6, 17, a8);
}

void sub_100148794(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_signpost_emit_with_name_impl(a1, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, va, 0x30u);
}

void sub_1001487C0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_impl(a1, v12, OS_LOG_TYPE_FAULT, a4, va, 0x30u);
}

void sub_1001487F4(float a1, uint64_t a2, uint64_t a3)
{
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = 2082;
}

void sub_100148814(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 64) = a2;
  *(v3 - 60) = 3;
  *(v3 - 56) = 2048;
  *(v2 + 10) = a1;
}

void sub_10014883C(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = a1;
  *(v4 - 52) = 1026;
  *(v3 + 14) = v2;
}

void sub_100148894(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 96) = a2;
  *(v3 + 4) = v5;
  *(v4 - 84) = 2048;
  *(v3 + 14) = a1;
  *(v4 - 74) = 2048;
  v3[3] = v2;
}

uint64_t sub_1001488C0(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(&std::string::~string, a2, a3);
}

uint64_t sub_1001488E0(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v3 + 4) = v2;
  *(v4 - 68) = 2081;
  *(v3 + 14) = result;
  return result;
}

void sub_100148944(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 80) = a2;
  *(v2 + 4) = v4;
  *(v3 - 68) = 2053;
  *(v2 + 14) = a1;
}

void sub_100148968(float a1)
{
  *(v2 - 80) = a1;
  *(v1 + 4) = v4;
  *(v2 - 68) = 2053;
  *(v1 + 14) = v3;
}

void sub_1001489A0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_1001489EC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_impl(a1, v12, OS_LOG_TYPE_INFO, a4, va, 0x26u);
}

BOOL sub_100148A30()
{
  v1 = qword_1025D46D8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_100148A50(int a1@<W8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v4 - 60) = a1;
  *(v4 - 56) = 1026;
  *(v3 + 10) = v2;
}

void sub_100148A9C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_INFO, a4, va, 0x26u);
}

uint64_t sub_100148AE0(uint64_t result)
{
  *(v2 + 4) = v1;
  *(v3 - 68) = 2112;
  *(v2 + 14) = result;
  return result;
}

BOOL sub_100148B00()
{
  v1 = qword_1025D48A8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

BOOL sub_100148B4C()
{
  v1 = qword_1025D41A8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

double sub_100148B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, 0, a8);
}

void sub_100148B84(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 64) = a2;
  *(a1 + 4) = v2;
  *(v3 - 52) = 1026;
}

void sub_100148B98(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_impl(a1, v10, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

uint64_t sub_100148BC4(uint64_t result, float a2)
{
  *(v2 - 48) = a2;
  *(v2 - 44) = result;
  return result;
}

void sub_100148BDC(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9)
{
  *(v9 - 40) = a1;

  bzero(&a9, 0x65CuLL);
}

uint64_t sub_100148C10(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v4 - 76) = v2;
  *(v4 - 72) = 1025;
  *(v3 + 10) = result;
  return result;
}

BOOL sub_100148C34()
{
  v2 = *(v0 + 1960);

  return os_signpost_enabled(v2);
}

double sub_100148C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, 16, a8);
}

BOOL sub_100148C94()
{
  v1 = off_1025D4858;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_100148CB4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x2Cu);
}

BOOL sub_100148CD4()
{
  v1 = qword_1025D48A8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_100148D24(int a1@<W8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v4 - 60) = a1;
  *(v4 - 56) = 1026;
  *(v3 + 10) = v2;
}

uint64_t sub_100148D48@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 + 4) = a2;
  *(v3 - 52) = 2050;
  *(v2 + 14) = result;
  return result;
}

double sub_100148D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, 0, a8);
}

void sub_100148DAC(int a1@<W8>, float a2@<S0>)
{
  *(v3 - 64) = a2;
  *(v3 - 60) = a1;
  *(v3 - 56) = 1026;
  *(v2 + 10) = 2;
}

void sub_100148DE4(double a1, float a2)
{
  *(v3 - 96) = a2;
  *(v2 + 4) = v4;
  *(v3 - 84) = 2048;
  *(v2 + 14) = v5;
  *(v3 - 74) = 2048;
  *(v2 + 24) = a1;
}

BOOL sub_100148E10()
{
  v2 = *(v0 + 1640);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

BOOL sub_100148EAC()
{
  v2 = *(v0 + 1592);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

BOOL sub_100148EC8()
{
  v1 = qword_1025D4638;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_100148F38(int a1@<W8>, float a2@<S0>)
{
  *(v3 - 80) = a2;
  *(v3 - 76) = a1;
  *(v3 - 72) = 2048;
  *(v2 + 10) = v4;
}

BOOL sub_100148F5C()
{
  v2 = *(v0 + 568);

  return os_signpost_enabled(v2);
}

void sub_100148FA0(float a1)
{
  *(v2 - 80) = a1;
  *(v1 + 4) = v3;
  *(v2 - 68) = 2049;
}

uint64_t sub_100148FB4(uint64_t result, float a2)
{
  *(v6 - 96) = a2;
  *(v6 - 92) = v3;
  *(v6 - 88) = 1024;
  *(v4 + 10) = v5;
  *(v6 - 82) = 1024;
  *(v6 - 80) = v2;
  *(v6 - 76) = 2080;
  *(v4 + 22) = result;
  return result;
}

void sub_100149020(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v5 - 80) = a2;
  *(v4 + 4) = v2;
  *(v5 - 68) = 2050;
  *(v4 + 14) = a1;
  *(v5 - 58) = 2050;
  v4[3] = v3;
}

double sub_10014904C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, 2, a8);
}

void sub_100149064(int a1@<W8>, double a2@<D0>, float a3@<S1>)
{
  *(v4 - 64) = a3;
  *(v3 + 4) = a2;
  *(v4 - 52) = 1024;
  *(v3 + 14) = a1;
}

double sub_1001490A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, 2, a8);
}

BOOL sub_1001490C0()
{
  v2 = *(v0 + 1960);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

void sub_1001490DC(uint64_t a1@<X8>, uint64_t a2, int a3, char a4)
{
  *(v4 - 40) = a1;

  bzero(&a4, 0x65CuLL);
}

void sub_100149108(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_signpost_emit_with_name_impl(a1, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, va, 0x26u);
}

void sub_100149134(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_INFO, a4, a5, 0x26u);
}

BOOL sub_100149150()
{
  v1 = qword_1025D47F8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_100149184(int a1@<W8>, float a2@<S0>)
{
  *(v2 - 64) = a2;
  *(v2 - 60) = a1;
  *(v2 - 56) = 1024;
}

double sub_1001491AC(double a1, float a2)
{
  result = v3 - a1;
  *(v2 - 80) = a2;
  return result;
}

void sub_1001491B8(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v2 - 80) = a2;
  *(v2 - 76) = 1;
  *(v2 - 72) = 1026;
  *(a1 + 10) = 1;
  *(v2 - 66) = 1026;
}

void sub_1001491D8(uint64_t a1@<X8>, uint64_t a2, int a3, char a4)
{
  *(v4 - 56) = a1;

  bzero(&a4, 0x65CuLL);
}

uint64_t sub_1001491F4(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v3 + 4) = result;
  *(v4 - 68) = 1026;
  *(v3 + 14) = v2;
  return result;
}

BOOL sub_100149218()
{
  v1 = qword_1025D4658;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

BOOL sub_10014924C()
{
  v1 = qword_1025D4208;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

uint64_t sub_1001492C8(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v4 - 76) = v2;
  *(v4 - 72) = 2082;
  *(v3 + 10) = result;
  return result;
}

void sub_1001492EC(double a1, float a2)
{
  *(v3 - 80) = a2;
  *(v2 + 4) = v4;
  *(v3 - 68) = 2048;
  *(v2 + 14) = a1;
}

void sub_100149310(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_impl(a1, v12, OS_LOG_TYPE_FAULT, a4, va, 0x30u);
}

double sub_100149330(uint64_t a1, uint64_t a2)
{

  return sub_1000281DC(a1, a2);
}

BOOL sub_100149360()
{
  v2 = *(v0 + 1592);

  return os_signpost_enabled(v2);
}

void sub_100149388(int a1@<W8>, float a2@<S0>)
{
  *(v2 - 64) = a2;
  *(v2 - 60) = a1;
  *(v2 - 56) = 2049;
}

void sub_1001493BC(uint64_t *a1)
{
  sub_100147E00(__stack_chk_guard, v23, v24, *v26, v26[4]);
  if (qword_1025D48C0 != -1)
  {
    dispatch_once(&qword_1025D48C0, &stru_1024A4C18);
  }

  v2 = a1[9];
  v3 = a1[10];
  v4 = a1[12];
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = *(a1 + 47);
  v9 = a1[3];
  v8 = a1 + 3;
  v7 = v9;
  if (v6 >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v27 = 136316675;
  v28 = "Fence";
  v29 = 1024;
  v30 = 1;
  v31 = 2053;
  v32 = v2;
  v33 = 2053;
  v34 = v3;
  v35 = 2048;
  v36 = v4;
  v37 = 2080;
  v38 = v5;
  v39 = 2080;
  v40 = v10;
  LODWORD(v25) = 68;
  v11 = sub_100147CAC();
  _os_log_send_and_compose_impl(v11, v12, v13, v14, v15, v16, 2, v17, &v27, v25);
  v19 = v18;
  sub_100147DD8("LOCATION", v20, v21, v22, "BOOL CLFenceAuthorizationManager::addFence(const CLFenceManager_Type::Fence &)", "%s\n");
  if (v19 != &v27)
  {
    free(v19);
  }
}

void sub_100149534(uint64_t a1)
{
  sub_100147E00(__stack_chk_guard, v20, v21, *v23, v23[4]);
  if (qword_1025D4320 != -1)
  {
    dispatch_once(&qword_1025D4320, &stru_102499408);
  }

  v2 = *(a1 + 16);
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  v6 = *(a1 + 8);
  v7 = *(a1 + 10);
  v24 = 134350336;
  v25 = v2;
  v26 = 1026;
  v27 = v3;
  v28 = 1026;
  v29 = v4;
  v30 = 1026;
  v31 = v5;
  v32 = 1026;
  v33 = v6;
  v34 = 1026;
  v35 = v7;
  LODWORD(v22) = 42;
  v8 = sub_100147CAC();
  _os_log_send_and_compose_impl(v8, v9, v10, v11, v12, v13, 0, v14, &v24, v22);
  v16 = v15;
  sub_100147DD8("Generic", v17, v18, v19, "void CLMotionLogger::onPencilDebug(const CLPencilDebug::Data *)", "%s\n");
  if (v16 != &v24)
  {
    free(v16);
  }
}

void sub_10014967C()
{
  sub_100147E1C(__stack_chk_guard, v11, v13, v14, *v15, v15[4]);
  if (qword_1025D4230 != -1)
  {
    dispatch_once(&qword_1025D4230, &stru_1024C9588);
  }

  sub_100147CF0();
  v12 = v1;
  v2 = sub_100147CC4();
  _os_log_send_and_compose_impl(v2, v3, v4, v5, v6, v7, 0, v8, v12);
  v10 = v9;
  sub_100152C7C("Generic", 1, 0, 2, "void CLCaloriePalEstimator::querySources()_block_invoke", "%s\n", v9);
  if (v10 != v0)
  {
    free(v10);
  }
}

void sub_100149768(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v6 - 96) = a2;
  *(v5 + 4) = a1;
  *(v6 - 84) = 2050;
  *(v5 + 14) = v2;
  *(v6 - 74) = 2050;
  v5[3] = v3;
  *(v6 - 64) = 2050;
  *(v5 + 34) = v4;
}

double sub_10014979C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13)
{

  return _os_log_send_and_compose_impl(2, 0, &a13, 1628, a5, a6, 16, a8);
}

double sub_1001497C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13)
{

  return _os_log_send_and_compose_impl(2, 0, &a13, 1628, a5, a6, 1, a8);
}

void sub_1001497EC(int a1@<W8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = v2;
  *(v4 - 52) = 1024;
  *(v3 + 14) = a1;
}

void sub_100149810(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = a1;
  *(v4 - 52) = 2050;
  *(v3 + 14) = v2;
}

void sub_100149834(float a1)
{
  *(v3 - 80) = a1;
  *(v2 + 4) = v1;
  *(v3 - 68) = 2048;
}

uint64_t sub_100149870@<X0>(uint64_t result@<X0>, int a2@<W8>, float a3@<S0>)
{
  *(v5 - 64) = a3;
  *(v4 + 4) = result;
  *(v5 - 52) = 1026;
  *(v4 + 14) = v3;
  *(v5 - 46) = 1026;
  *(v5 - 44) = a2;
  return result;
}

void sub_1001498B4(int a1@<W8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = v2;
  *(v4 - 52) = 1026;
  *(v3 + 14) = a1;
}

void sub_100149920(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(a1 + 4) = v2;
  *(v4 - 52) = 1024;
  *(a1 + 14) = v3;
}

void sub_100149944(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 80) = a2;
  *(a1 + 4) = v2;
  *(v3 - 68) = 2050;
}

void sub_100149958(int a1@<W8>, float a2@<S0>)
{
  *(v3 - 80) = a2;
  *(v2 + 4) = v4;
  *(v3 - 68) = 1024;
  *(v2 + 14) = a1;
}

void sub_100149994(float a1)
{
  *(v2 - 80) = a1;
  *(v1 + 4) = v4;
  *(v2 - 68) = 2048;
  *(v1 + 14) = v3;
}

void sub_1001499D4(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 80) = a2;
  *(v2 + 4) = v4;
  *(v3 - 68) = 2050;
  *(v2 + 14) = a1;
}

void sub_1001499F8(int a1@<W8>, float a2@<S0>)
{
  *(v5 - 64) = a2;
  *(v5 - 60) = a1;
  *(v5 - 56) = 1024;
  *(v4 + 10) = v2;
  *(v5 - 50) = 1024;
  *(v5 - 48) = v3;
}

void sub_100149A24(int a1@<W8>, float a2@<S0>)
{
  *(v4 - 80) = a2;
  *(v3 + 4) = v5;
  *(v4 - 68) = 1024;
  *(v3 + 14) = a1;
  *(v4 - 62) = 1024;
  *(v4 - 60) = v2;
}

void sub_100149A50(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 80) = a2;
  *(v2 + 4) = (a1 + 0x8000000000000000) & 0x7FFFFFFFFFFFFFFFLL;
  *(v3 - 68) = 2048;
}

void sub_100149A70(uint64_t a1@<X8>)
{
  *(a1 + 4) = v2;
  *(v3 - 52) = 2080;
  *(a1 + 14) = v1;
}

uint64_t sub_100149A90@<X0>(uint64_t result@<X0>, int a2@<W8>, float a3@<S0>)
{
  *(v4 - 64) = a3;
  *(v3 + 4) = result;
  *(v4 - 52) = 1026;
  *(v3 + 14) = a2;
  return result;
}

void sub_100149AB4(float a1)
{
  *(v4 - 64) = a1;
  *(v4 - 60) = v2;
  *(v4 - 56) = 1024;
  *(v3 + 10) = v1;
}

double sub_100149AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(2, 0, a3, 1628, a5, a6, 16, a8);
}

uint64_t sub_100149AF8(uint64_t result, float a2)
{
  *(v3 - 80) = a2;
  *(v2 + 4) = result;
  *(v3 - 68) = 2048;
  *(v2 + 14) = v4;
  return result;
}

double sub_100149B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(2, 0, a3, 1628, a5, a6, 17, a8);
}

void sub_100149B3C(float a1)
{
  *(v3 - 80) = a1;
  *(v2 + 4) = v1;
  *(v3 - 68) = 2048;
  *(v2 + 14) = v4;
}

void sub_100149B60(double a1, float a2)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = v2;
  *(v4 - 52) = 2048;
  *(v3 + 14) = a1;
}

double sub_100149B84(float a1, float a2)
{
  result = a1;
  *(v3 - 96) = a2;
  *(v2 + 4) = v4;
  *(v3 - 84) = 2048;
  *(v2 + 14) = v5;
  *(v3 - 74) = 2048;
  *(v2 + 24) = result;
  return result;
}

void sub_100149BB4(float a1)
{
  *(v2 - 64) = a1;
  *(v2 - 60) = v1;
  *(v2 - 56) = 1026;
}

void sub_100149BC8(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = a1;
  *(v4 - 52) = 2050;
  *(v3 + 14) = v2;
}

void sub_100149C48(int a1@<W8>)
{
  *(v2 + 4) = v1;
  *(v3 - 52) = 1026;
  *(v2 + 14) = a1;
}

uint64_t sub_100149C68(uint64_t result, float a2)
{
  v5 = v4 - 80;
  *(v4 - 80) = a2;
  *(v5 + 4) = v2;
  *(v4 - 68) = 1026;
  *(v5 + 14) = v3;
  *(v4 - 62) = 1026;
  *(v4 - 60) = result;
  return result;
}

void sub_100149C98(float a1, uint64_t a2, uint64_t a3)
{
  *a3 = a1;
  *(a3 + 4) = 0;
  *(a3 + 8) = 2082;
}

void sub_100149CAC(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, float a4@<S2>)
{
  *(v5 - 80) = a4;
  *(v4 + 4) = a2;
  *(v5 - 68) = 2050;
  *(v4 + 14) = a1;
  *(v5 - 58) = 2048;
  *(v4 + 24) = a3;
}

void sub_100149CF8(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(a1 + 4) = v2;
  *(v4 - 52) = 1026;
  *(a1 + 14) = v3;
}

void sub_100149D38(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_signpost_emit_with_name_impl(a1, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, va, 0x2Cu);
}

double sub_100149D64(float a1, float a2)
{
  result = a1;
  *(v3 - 80) = a2;
  *(v2 + 4) = result;
  return result;
}

uint64_t sub_100149D80(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v3 + 4) = v2;
  *(v4 - 68) = 2080;
  *(v3 + 14) = result;
  return result;
}

uint64_t sub_100149DA4(uint64_t result)
{
  *(v2 + 4) = v1;
  *(v3 - 52) = 1026;
  *(v2 + 14) = result;
  return result;
}

void sub_100149DC4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100149DE0(float a1)
{
  *(v4 - 64) = a1;
  *(v4 - 60) = v2;
  *(v4 - 56) = 2050;
  *(v3 + 10) = v1;
}

void sub_100149E04(int a1@<W8>)
{
  *(v3 - 60) = v1;
  *(v3 - 56) = 1026;
  *(v2 + 10) = a1;
}

void sub_100149E74(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 64) = a2;
  *(a1 + 4) = v2;
  *(v3 - 52) = 1024;
}

void sub_100149E88(int a1@<W8>, float a2@<S0>)
{
  *(v3 - 64) = a2;
  *(v3 - 60) = a1;
  *(v3 - 56) = 1024;
  *(v2 + 10) = 50;
}

void sub_100149EF0(int a1@<W8>, float a2@<S0>)
{
  *(v8 - 80) = a2;
  *(v8 - 76) = a1;
  *(v8 - 72) = 1025;
  *(v7 + 10) = v2;
  *(v8 - 66) = 1025;
  *(v8 - 64) = v3;
  *(v8 - 60) = 1025;
  *(v7 + 22) = v4;
  *(v8 - 54) = 1025;
  *(v8 - 52) = v5;
  *(v8 - 48) = 1025;
  *(v7 + 34) = v6;
}

uint64_t sub_100149F48(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v4 - 76) = v2;
  *(v4 - 72) = 2113;
  *(v3 + 10) = result;
  return result;
}

BOOL sub_100149F78()
{
  v1 = qword_1025D4638;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

uint64_t sub_100149FAC@<X0>(uint64_t result@<X0>, int a2@<W8>, float a3@<S0>)
{
  *(v12 - 176) = a3;
  *(v8 + 4) = v9;
  *(v12 - 164) = 2053;
  *(v8 + 14) = v10;
  *(v12 - 154) = 2050;
  *(v8 + 24) = v11;
  *(v12 - 144) = 2082;
  *(v8 + 34) = result;
  *(v12 - 134) = 1026;
  *(v12 - 132) = a2;
  *(v12 - 128) = 2050;
  *(v8 + 50) = v3;
  *(v12 - 118) = 2050;
  *(v8 + 60) = v4;
  *(v12 - 108) = 1026;
  *(v8 + 70) = v5;
  *(v12 - 102) = 2050;
  *(v8 + 76) = v6;
  *(v12 - 92) = 2049;
  *(v8 + 86) = v7;
  return result;
}

void sub_10014A020(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = a1;
  *(v4 - 52) = 2048;
  *(v3 + 14) = v2;
}

void sub_10014A044(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_impl(a1, v12, OS_LOG_TYPE_INFO, a4, va, 0x30u);
}

__n128 sub_10014A064@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #1.0 }

  *a1 = result;
  a1[1].n128_u64[0] = 0x412E848000000000;
  return result;
}

void sub_10014A07C(float a1)
{
  *(v3 - 80) = a1;
  *(v2 + 4) = v4;
  *(v3 - 68) = 1026;
  *(v2 + 14) = v1;
}

void sub_10014A0A0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a1 + 10) = v3;
  *(a1 + 18) = v2;
  *(a1 + 20) = a2;
  *(a1 + 28) = v2;
}

uint64_t sub_10014A0B4(uint64_t result, float a2)
{
  *(v5 - 96) = a2;
  *(v4 + 4) = v2;
  *(v5 - 84) = 2114;
  *(v4 + 14) = v3;
  *(v5 - 74) = 2113;
  v4[3] = result;
  return result;
}

void sub_10014A0E4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_impl(a1, v10, OS_LOG_TYPE_FAULT, a4, va, 0xCu);
}

uint64_t sub_10014A104(uint64_t result, float a2)
{
  v4 = v3 - 64;
  *(v3 - 64) = a2;
  *(v4 + 4) = v2;
  *(v3 - 52) = 2048;
  *(v4 + 14) = result;
  return result;
}

void sub_10014A12C(int a1@<W8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v4 - 60) = a1;
  *(v4 - 56) = 1024;
  *(v3 + 10) = v2;
}

void sub_10014A150(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = a1;
  *(v4 - 52) = 2080;
  *(v3 + 14) = v2 + 377;
}

void sub_10014A178(float a1)
{
  *(v2 - 96) = a1;
  *(v1 + 4) = v3;
  *(v2 - 84) = 2048;
  *(v1 + 14) = v4;
  *(v2 - 74) = 2048;
  v1[3] = v3;
}

void sub_10014A1BC(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_impl(a1, v12, OS_LOG_TYPE_INFO, a4, va, 0x2Cu);
}

void sub_10014A1DC(int a1@<W8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v4 - 60) = a1;
  *(v4 - 56) = 2096;
  *(v3 + 10) = v2;
}

void sub_10014A200(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = a1;
  *(v4 - 52) = 2049;
  *(v3 + 14) = v2;
}

double sub_10014A224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16)
{

  return _os_log_send_and_compose_impl(2, 0, &a16, 1628, a5, v16, 2, a8);
}

void sub_10014A24C(int a1@<W8>, float a2@<S0>)
{
  *(v6 - 80) = a2;
  *(v6 - 76) = a1;
  *(v6 - 72) = 1024;
  *(v5 + 10) = v2;
  *(v6 - 66) = 1024;
  *(v6 - 64) = v3;
  *(v6 - 60) = 1024;
  *(v5 + 22) = v4;
}

uint64_t sub_10014A2DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  *(v6 - 96) = a3;
  *(v6 - 92) = v5;
  *(v6 - 88) = 1024;
  *(a2 + 10) = v4;
  *(v6 - 82) = 1024;
  *(v6 - 80) = (result >> 15) & 0x3FF;
  *(v6 - 76) = 1024;
  *(a2 + 22) = v3;
  *(v6 - 70) = 1024;
  *(v6 - 68) = v3 >> 26;
  *(v6 - 64) = 1024;
  *(a2 + 34) = (v3 >> 15) & 0x3FF;
  return result;
}

void sub_10014A340(int a1@<W8>)
{
  *(v3 - 60) = v1;
  *(v3 - 56) = 1024;
  *(v2 + 10) = a1;
}

void sub_10014A360()
{
  sub_100147E00(__stack_chk_guard, v16, v19, *v20, v20[4]);
  if (qword_1025D4320 != -1)
  {
    dispatch_once(&qword_1025D4320, &stru_102499408);
  }

  sub_100147D70();
  v17 = v1;
  v2 = sub_100147CAC();
  _os_log_send_and_compose_impl(v2, v3, v4, v5, v6, v7, 16, v8, v17);
  v10 = v9;
  v18 = v9;
  sub_100147DF4();
  sub_100152C7C(v11, v12, v13, 0, v14, v15, v18);
  if (v10 != v0)
  {
    free(v10);
  }
}

void sub_10014A460(int *a1)
{
  sub_100147E00(__stack_chk_guard, v15, v17, *v18, v18[4]);
  if (qword_1025D4200 != -1)
  {
    dispatch_once(&qword_1025D4200, &stru_1024992E8);
  }

  v19 = 138543362;
  v20 = a1;
  sub_100147D60();
  v16 = v2;
  v3 = sub_100147CAC();
  _os_log_send_and_compose_impl(v3, v4, v5, v6, v7, v8, 16, v9, v16);
  sub_100147E38();
  sub_100147DF4();
  sub_100152C7C(v10, v11, v12, 0, v13, v14);
  if (a1 != &v19)
  {
    free(a1);
  }
}

void sub_10014A55C()
{
  sub_100148B40();
  sub_100147E00(__stack_chk_guard, v13, v15, *v16, v16[4]);
  if (qword_1025D41A0 != -1)
  {
    dispatch_once(&qword_1025D41A0, &stru_10249C0E8);
  }

  sub_100148180(0x8000000101CEF894 & 0x7FFFFFFFFFFFFFFFLL);
  v14 = v2;
  v3 = sub_100147CAC();
  _os_log_send_and_compose_impl(v3, v4, v5, v6, v7, v8, 17, v9, v14);
  sub_100147E38();
  sub_100147EC4("Generic", v10, v11, v12, "const Object_T *safeDecoder(CLCppContainer *, Callback) [Object_T = CLOnBodyNotifier_Type::NotificationData, Callback = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreLocation/Shared/Intersilo/CLCppContainer.h:241:46)]", "%s\n");
  if (v0 != v1)
  {
    free(v0);
  }
}

void sub_10014A684()
{
  sub_100147E1C(__stack_chk_guard, v13, v15, v16, *v17, v17[4]);
  if (qword_1025D4660 != -1)
  {
    dispatch_once(&qword_1025D4660, &stru_10249B3A0);
  }

  sub_100147CF0();
  v14 = v2;
  v3 = sub_100147CC4();
  _os_log_send_and_compose_impl(v3, v4, v5, v6, v7, v8, 0, v9, v14);
  sub_100147E38();
  sub_100147DD8("Generic", v10, v11, v12, "[CLUDPListenerHelper stopService]", "%s\n");
  if (v0 != v1)
  {
    free(v0);
  }
}

BOOL sub_10014A760()
{
  v2 = *(v0 + 1752);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

double sub_10014A78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, 17, a8);
}

double sub_10014A7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, 16, a8);
}

void sub_10014A7BC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x26u);
}

uint64_t sub_10014A7DC()
{

  return sub_10000A100(121, 0);
}

uint64_t sub_10014A7F4(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v4 - 76) = v2;
  *(v4 - 72) = 1024;
  *(v3 + 10) = result;
  return result;
}

BOOL sub_10014A848()
{
  v2 = *(v0 + 2216);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

void sub_10014A864(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_FAULT, a4, a5, 0x26u);
}

void sub_10014A88C(double a1, float a2)
{
  *(v3 - 80) = a2;
  *(v2 + 4) = v4;
  *(v3 - 68) = 2050;
  *(v2 + 14) = a1;
}

void sub_10014A8B0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_FAULT, a4, a5, 0x2Cu);
}

double sub_10014A8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, 0, a8);
}

BOOL sub_10014A8FC()
{
  v2 = *(v0 + 728);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

double sub_10014A918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, int a10, char a11)
{

  return _os_log_send_and_compose_impl(2, 0, &a11, 1628, a5, v11, 0, a8);
}

BOOL sub_10014A944()
{
  v2 = *(v0 + 2168);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

void sub_10014A960(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 96) = a2;
  *(v2 + 4) = a1;
  *(v3 - 84) = 2048;
}

BOOL sub_10014A974()
{
  v2 = *(v0 + 1640);

  return os_signpost_enabled(v2);
}

BOOL sub_10014A98C()
{
  v1 = qword_1025D4688;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_10014A9AC(double a1, float a2)
{
  v5 = v4 - 80;
  *(v4 - 80) = a2;
  *(v5 + 4) = v3;
  *(v4 - 68) = 2050;
  *(v5 + 14) = a1;
  *(v4 - 58) = 2117;
  *(v5 + 24) = v2;
}

void sub_10014A9E0(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  _os_log_impl(a1, v12, OS_LOG_TYPE_INFO, a4, va, 0x30u);
}

uint64_t sub_10014AA0C(uint64_t result)
{
  *(v4 + 4) = v3;
  *(v5 - 100) = 1026;
  *(v4 + 14) = v1;
  *(v5 - 94) = 2114;
  *(v4 + 20) = v2;
  *(v5 - 84) = 2114;
  *(v4 + 30) = result;
  return result;
}

void sub_10014AA58()
{
  sub_100147E1C(__stack_chk_guard, v11, v13, v14, *v15, v15[4]);
  if (qword_1025D4230 != -1)
  {
    dispatch_once(&qword_1025D4230, &stru_1024C9588);
  }

  sub_100147CF0();
  v12 = v1;
  v2 = sub_100147CC4();
  _os_log_send_and_compose_impl(v2, v3, v4, v5, v6, v7, 2, v8, v12);
  v10 = v9;
  sub_100152C7C("Generic", 1, 0, 2, "void CLCaloriePalEstimator::setupPalUpdateTimer(BOOL)", "%s\n", v9);
  if (v10 != v0)
  {
    free(v10);
  }
}

void sub_10014AB48()
{
  sub_100147E00(__stack_chk_guard, v16, v19, *v20, v20[4]);
  if (qword_1025D4200 != -1)
  {
    dispatch_once(&qword_1025D4200, &stru_1024992E8);
  }

  sub_100147D70();
  v17 = v1;
  v2 = sub_100147CAC();
  _os_log_send_and_compose_impl(v2, v3, v4, v5, v6, v7, 16, v8, v17);
  v10 = v9;
  v18 = v9;
  sub_100147DF4();
  sub_100152C7C(v11, v12, v13, 0, v14, v15, v18);
  if (v10 != v0)
  {
    free(v10);
  }
}

double sub_10014AC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13)
{

  return _os_log_send_and_compose_impl(2, 0, &a13, 1628, a5, a6, 17, a8);
}

void sub_10014ACCC(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 64) = a2;
  *(v2 + 4) = a1;
  *(v3 - 52) = 2048;
  *(v2 + 14) = 0x4024000000000000;
}

double sub_10014ACF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, int a11, char a12)
{

  return _os_log_send_and_compose_impl(2, 0, &a12, 1628, a5, v12, 0, a8);
}

uint64_t sub_10014AD3C(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  return result;
}

void sub_10014AD58(float a1)
{
  *(v3 - 80) = a1;
  *(v3 - 76) = v1;
  *(v3 - 72) = 2048;
  *(v2 + 10) = v4;
}

double sub_10014ADB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, int a11, char a12)
{

  return _os_log_send_and_compose_impl(2, 0, &a12, 1628, a5, v12, 0, a8);
}

double sub_10014AE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(2, 0, a3, 1628, a5, v8, 0, a8);
}

void sub_10014AEC8(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v3 - 80) = a2;
  *(v2 + 4) = v4;
  *(v3 - 68) = 2048;
  *(v2 + 14) = a1;
}

void sub_10014AFA8(double a1, float a2)
{
  *(v3 - 80) = a2;
  *(v2 + 4) = a1;
  *(v3 - 68) = 2048;
  *(v2 + 14) = v4;
}

void sub_10014AFD0(float a1)
{
  *(v4 - 64) = a1;
  *(v4 - 60) = v2;
  *(v4 - 56) = 2080;
  *(v3 + 10) = v1;
}

double sub_10014AFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, int a11, char a12)
{

  return _os_log_send_and_compose_impl(2, 0, &a12, 1628, a5, v12, 2, a8);
}

uint64_t sub_10014B0A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, __int16 a3@<W8>)
{
  *(a2 + 10) = v3;
  *(a2 + 18) = a3;
  *(a2 + 20) = result;
  *(a2 + 28) = a3;
  return result;
}

double sub_10014B0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, int a11, char a12)
{

  return _os_log_send_and_compose_impl(2, 0, &a12, 1628, a5, v12, 0, a8);
}

uint64_t sub_10014B0E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 10) = v4;
  *(a3 + 18) = 2114;
  *(a3 + 20) = result;
  *(a3 + 28) = 2114;
  *(a3 + 30) = a2;
  *(a3 + 38) = v3;
  return result;
}

void sub_10014B104(double a1, float a2)
{
  *(v4 - 80) = a2;
  *(v4 - 76) = v3;
  *(v4 - 72) = 2048;
  *(v2 + 10) = a1;
}

void sub_10014B128(uint64_t a1@<X8>)
{
  *(v2 + 4) = v1;
  *(v3 - 52) = 2048;
  *(v2 + 14) = a1;
}

void sub_10014B148(uint64_t a1@<X8>)
{
  *(v1 + 4) = a1;
  *(v2 - 68) = 2048;
  *(v1 + 14) = v3;
}

void sub_10014B190(uint64_t a1@<X8>, double a2@<D0>, float a3@<S1>)
{
  *(v4 - 80) = a3;
  *(v3 + 4) = a2;
  *(v4 - 68) = 2048;
  *(v3 + 14) = a1;
}

void sub_10014B1B4(float a1)
{
  *(v4 - 64) = a1;
  *(v4 - 60) = v2;
  *(v4 - 56) = 1025;
  *(v3 + 10) = v1;
}

double sub_10014B22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, int a11, char a12)
{

  return _os_log_send_and_compose_impl(2, 0, &a12, 1628, a5, v12, 1, a8);
}

void sub_10014B288(int a1@<W8>, float a2@<S0>)
{
  *(v7 - 80) = a2;
  *(v7 - 76) = a1;
  *(v7 - 72) = 1024;
  *(v6 + 10) = v2;
  *(v7 - 66) = 1024;
  *(v7 - 64) = v3;
  *(v7 - 60) = 1024;
  *(v6 + 22) = v4;
  *(v7 - 54) = 2048;
  *(v6 + 28) = v5;
}

void sub_10014B2C8(float a1)
{
  *(v3 - 80) = a1;
  *(v2 + 4) = v1;
  *(v3 - 68) = 2048;
  *(v2 + 14) = 15;
}

void sub_10014B2F0(float a1)
{
  *(v4 - 80) = a1;
  *(v3 + 4) = v2;
  *(v4 - 68) = 2048;
  *(v3 + 14) = v1;
  *(v4 - 58) = 2048;
  v3[3] = v1;
}

uint64_t sub_10014B368(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v4 - 76) = v3;
  *(v4 - 72) = 1024;
  *(v2 + 10) = (result >> 15) & 0x3FF;
  return result;
}

void sub_10014B3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  bzero(va, 0x65CuLL);
}

BOOL sub_10014B3C4()
{
  v2 = *(v0 + 2216);

  return os_signpost_enabled(v2);
}

BOOL sub_10014B3DC()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_INFO);
}

BOOL sub_10014B3F4()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_FAULT);
}

void sub_10014B40C(double a1, float a2)
{
  *(v4 - 144) = a2;
  *(v3 + 4) = v2;
  *(v4 - 132) = 2050;
  *(v3 + 14) = v5;
  *(v4 - 122) = 2048;
  *(v3 + 24) = v6;
  *(v4 - 112) = 2050;
  *(v3 + 34) = v7;
  *(v4 - 102) = 2048;
  *(v3 + 44) = a1;
}

double sub_10014B44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, 2, a8);
}

BOOL sub_10014B464()
{
  v2 = *(v0 + 1624);

  return os_signpost_enabled(v2);
}

void sub_10014B47C(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, char a5)
{
  *(v5 - 72) = a1;

  bzero(&a5, 0x65CuLL);
}

BOOL sub_10014B498()
{
  v2 = *(v0 + 1192);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

void sub_10014B508(uint64_t a1@<X8>, float a2@<S0>)
{
  *(v4 - 64) = a2;
  *(v3 + 4) = a1;
  *(v4 - 52) = 1024;
  *(v3 + 14) = v2;
}

void sub_10014B534(int a1@<W8>, float a2@<S0>)
{
  *(v2 - 80) = a2;
  *(v2 - 76) = a1;
  *(v2 - 72) = 1024;
}

uint64_t sub_10014B558@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W8>)
{
  *(v5 - 74) = a4;
  v4[13] = result;
  *(v5 - 64) = a4;
  *(v4 + 114) = a2;
  *(v5 - 54) = a4;
  *(v4 + 124) = a3;
  return result;
}

uint64_t sub_10014B6E4(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        break;
      }

      if (v7 == 2)
      {
        if (v8 != 2)
        {
          goto LABEL_16;
        }

        v13 = *(a1 + 32);
LABEL_24:
        *(a1 + 32) = v13 | 2;
        v15 = *(a1 + 8);
        if (!v15)
        {
          operator new();
        }

        v33 = 0;
        v16 = *(this + 1);
        if (v16 >= *(this + 2) || *v16 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v33))
          {
            return 0;
          }
        }

        else
        {
          v33 = *v16;
          *(this + 1) = v16 + 1;
        }

        v17 = *(this + 14);
        v18 = *(this + 15);
        *(this + 14) = v17 + 1;
        if (v17 >= v18)
        {
          return 0;
        }

        v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v33);
        if (!sub_10014BA50(v15, this, v20) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v19);
        v21 = *(this + 14);
        v22 = __OFSUB__(v21, 1);
        v23 = v21 - 1;
        if (v23 < 0 == v22)
        {
          *(this + 14) = v23;
        }

        v24 = *(this + 1);
        if (v24 < *(this + 2) && *v24 == 26)
        {
          *(this + 1) = v24 + 1;
LABEL_38:
          *(a1 + 32) |= 4u;
          v25 = *(a1 + 16);
          if (!v25)
          {
            operator new();
          }

          v34 = 0;
          v26 = *(this + 1);
          if (v26 >= *(this + 2) || *v26 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v34))
            {
              return 0;
            }
          }

          else
          {
            v34 = *v26;
            *(this + 1) = v26 + 1;
          }

          v27 = *(this + 14);
          v28 = *(this + 15);
          *(this + 14) = v27 + 1;
          if (v27 >= v28)
          {
            return 0;
          }

          v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v34);
          if (!sub_10014CA18(v25, this, v30) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
          v31 = *(this + 14);
          v22 = __OFSUB__(v31, 1);
          v32 = v31 - 1;
          if (v32 < 0 == v22)
          {
            *(this + 14) = v32;
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

      else
      {
        if (v7 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_16;
        }

        v10 = *(this + 1);
        v9 = *(this + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 24));
          if (!result)
          {
            return result;
          }

          v12 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 24) = v11;
          v12 = v10 + 1;
          *(this + 1) = v12;
        }

        v13 = *(a1 + 32) | 1;
        *(a1 + 32) = v13;
        if (v12 < v9 && *v12 == 18)
        {
          *(this + 1) = v12 + 1;
          goto LABEL_24;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_38;
    }

LABEL_16:
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

uint64_t sub_10014BA50(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
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

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v8 == 2)
          {
            goto LABEL_34;
          }

LABEL_16:
          if (v8 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
          {
            return 0;
          }
        }

        if (v7 == 2)
        {
          break;
        }

        if (v7 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_16;
        }

        v10 = *(this + 1);
        v9 = *(this + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
          if (!result)
          {
            return result;
          }

          v12 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 8) = v11;
          v12 = v10 + 1;
          *(this + 1) = v12;
        }

        *(a1 + 28) |= 1u;
        if (v12 < v9 && *v12 == 16)
        {
          v13 = v12 + 1;
          *(this + 1) = v13;
          goto LABEL_24;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v13 = *(this + 1);
      v9 = *(this + 2);
LABEL_24:
      v26 = 0;
      if (v13 >= v9 || (v15 = *v13, (v15 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v26);
        if (!result)
        {
          return result;
        }

        v15 = v26;
      }

      else
      {
        *(this + 1) = v13 + 1;
      }

      if (v15 <= 4)
      {
        *(a1 + 28) |= 2u;
        *(a1 + 12) = v15;
      }

      v16 = *(this + 1);
    }

    while (v16 >= *(this + 2) || *v16 != 26);
    *(this + 1) = v16 + 1;
LABEL_34:
    *(a1 + 28) |= 4u;
    v17 = *(a1 + 16);
    if (!v17)
    {
      operator new();
    }

    v27 = 0;
    v18 = *(this + 1);
    if (v18 >= *(this + 2) || *v18 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v27))
      {
        return 0;
      }
    }

    else
    {
      v27 = *v18;
      *(this + 1) = v18 + 1;
    }

    v19 = *(this + 14);
    v20 = *(this + 15);
    *(this + 14) = v19 + 1;
    if (v19 >= v20)
    {
      return 0;
    }

    v21 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v27);
    if (!sub_100D152C0(v17, this, v22) || *(this + 36) != 1)
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

    if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
    {
      *(this + 8) = 0;
      result = 1;
      *(this + 36) = 1;
      return result;
    }
  }
}

uint64_t sub_10014BD14(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v11 = *(this + 1);
        v8 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v10;
        v11 = v9 + 1;
        *(this + 1) = v11;
      }

      *(a1 + 28) |= 1u;
      if (v11 < v8 && *v11 == 17)
      {
        *(this + 1) = v11 + 1;
LABEL_21:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v13) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v13;
        *(a1 + 28) |= 2u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 1)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10014BE80(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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
        if (v8 == 1)
        {
          goto LABEL_28;
        }

        goto LABEL_16;
      }

      if (v7 == 2)
      {
        break;
      }

      if (v7 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v10 = *(this + 1);
      v9 = *(this + 2);
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v11;
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      *(a1 + 36) |= 1u;
      if (v12 < v9 && *v12 == 17)
      {
        *(this + 1) = v12 + 1;
LABEL_24:
        v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v15;
        *(a1 + 36) |= 2u;
        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 25)
        {
          *(this + 1) = v14 + 1;
LABEL_28:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v15) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v15;
          *(a1 + 36) |= 4u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }
    }

    if (v8 == 1)
    {
      goto LABEL_24;
    }

LABEL_16:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10014C048(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
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
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v7 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_20;
            }

            v11 = *(this + 1);
            v10 = *(this + 2);
            if (v11 >= v10 || (v12 = *v11, v12 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 32));
              if (!result)
              {
                return result;
              }

              v13 = *(this + 1);
              v10 = *(this + 2);
            }

            else
            {
              *(a1 + 32) = v12;
              v13 = v11 + 1;
              *(this + 1) = v13;
            }

            v9 = *(a1 + 40) | 1;
            *(a1 + 40) = v9;
            if (v13 < v10 && *v13 == 18)
            {
              *(this + 1) = v13 + 1;
              goto LABEL_28;
            }
          }

          else
          {
            if (v7 != 2 || v8 != 2)
            {
              goto LABEL_20;
            }

            v9 = *(a1 + 40);
LABEL_28:
            *(a1 + 40) = v9 | 2;
            v15 = *(a1 + 8);
            if (!v15)
            {
              operator new();
            }

            v42 = 0;
            v16 = *(this + 1);
            if (v16 >= *(this + 2) || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v42))
              {
                return 0;
              }
            }

            else
            {
              v42 = *v16;
              *(this + 1) = v16 + 1;
            }

            v17 = *(this + 14);
            v18 = *(this + 15);
            *(this + 14) = v17 + 1;
            if (v17 >= v18)
            {
              return 0;
            }

            v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v42);
            if (!sub_10014BA50(v15, this, v20) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v19);
            v21 = *(this + 14);
            v22 = __OFSUB__(v21, 1);
            v23 = v21 - 1;
            if (v23 < 0 == v22)
            {
              *(this + 14) = v23;
            }

            v24 = *(this + 1);
            if (v24 < *(this + 2) && *v24 == 26)
            {
              *(this + 1) = v24 + 1;
              goto LABEL_42;
            }
          }
        }

        if (v7 != 3)
        {
          break;
        }

        if (v8 != 2)
        {
          goto LABEL_20;
        }

LABEL_42:
        *(a1 + 40) |= 4u;
        v25 = *(a1 + 16);
        if (!v25)
        {
          operator new();
        }

        v43 = 0;
        v26 = *(this + 1);
        if (v26 >= *(this + 2) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v43))
          {
            return 0;
          }
        }

        else
        {
          v43 = *v26;
          *(this + 1) = v26 + 1;
        }

        v27 = *(this + 14);
        v28 = *(this + 15);
        *(this + 14) = v27 + 1;
        if (v27 >= v28)
        {
          return 0;
        }

        v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v43);
        if (!sub_10014BE80(v25, this, v30) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
        v31 = *(this + 14);
        v22 = __OFSUB__(v31, 1);
        v32 = v31 - 1;
        if (v32 < 0 == v22)
        {
          *(this + 14) = v32;
        }

        v33 = *(this + 1);
        if (v33 < *(this + 2) && *v33 == 34)
        {
          *(this + 1) = v33 + 1;
          goto LABEL_56;
        }
      }

      if (v7 != 4 || v8 != 2)
      {
        break;
      }

LABEL_56:
      *(a1 + 40) |= 8u;
      v34 = *(a1 + 24);
      if (!v34)
      {
        operator new();
      }

      v44 = 0;
      v35 = *(this + 1);
      if (v35 >= *(this + 2) || *v35 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v44))
        {
          return 0;
        }
      }

      else
      {
        v44 = *v35;
        *(this + 1) = v35 + 1;
      }

      v36 = *(this + 14);
      v37 = *(this + 15);
      *(this + 14) = v36 + 1;
      if (v36 >= v37)
      {
        return 0;
      }

      v38 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v44);
      if (!sub_10014BE80(v34, this, v39) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v38);
      v40 = *(this + 14);
      v22 = __OFSUB__(v40, 1);
      v41 = v40 - 1;
      if (v41 < 0 == v22)
      {
        *(this + 14) = v41;
      }

      if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }

LABEL_20:
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

uint64_t sub_10014C4D0(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v7 != 3)
          {
            if (v7 != 4 || v8 != 5)
            {
              goto LABEL_37;
            }

            goto LABEL_53;
          }

          if (v8 != 5)
          {
            goto LABEL_37;
          }

LABEL_49:
          v21 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v21) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 20) = v21;
          *(a1 + 52) |= 4u;
          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 37)
          {
            *(this + 1) = v15 + 1;
LABEL_53:
            v21 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v21) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 24) = v21;
            *(a1 + 52) |= 8u;
            v16 = *(this + 1);
            if (v16 < *(this + 2) && *v16 == 45)
            {
              *(this + 1) = v16 + 1;
LABEL_57:
              v21 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v21) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 28) = v21;
              *(a1 + 52) |= 0x10u;
              v17 = *(this + 1);
              if (v17 < *(this + 2) && *v17 == 53)
              {
                *(this + 1) = v17 + 1;
LABEL_61:
                v21 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v21) & 1) == 0)
                {
                  return 0;
                }

                *(a1 + 32) = v21;
                *(a1 + 52) |= 0x20u;
                v18 = *(this + 1);
                if (v18 < *(this + 2) && *v18 == 61)
                {
                  *(this + 1) = v18 + 1;
LABEL_65:
                  v21 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v21) & 1) == 0)
                  {
                    return 0;
                  }

                  *(a1 + 36) = v21;
                  *(a1 + 52) |= 0x40u;
                  v19 = *(this + 1);
                  if (v19 < *(this + 2) && *v19 == 69)
                  {
                    *(this + 1) = v19 + 1;
                    goto LABEL_69;
                  }
                }
              }
            }
          }
        }

        else
        {
          if (v7 != 1)
          {
            if (v7 != 2 || v8 != 5)
            {
              goto LABEL_37;
            }

            goto LABEL_45;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v10 = *(this + 1);
          v9 = *(this + 2);
          if (v10 >= v9 || (v11 = *v10, v11 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
            if (!result)
            {
              return result;
            }

            v12 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            *(a1 + 8) = v11;
            v12 = v10 + 1;
            *(this + 1) = v12;
          }

          *(a1 + 52) |= 1u;
          if (v12 < v9 && *v12 == 21)
          {
            *(this + 1) = v12 + 1;
LABEL_45:
            v21 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v21) & 1) == 0)
            {
              return 0;
            }

            *(a1 + 16) = v21;
            *(a1 + 52) |= 2u;
            v14 = *(this + 1);
            if (v14 < *(this + 2) && *v14 == 29)
            {
              *(this + 1) = v14 + 1;
              goto LABEL_49;
            }
          }
        }
      }

      if (TagFallback >> 3 <= 6)
      {
        break;
      }

      if (v7 == 7)
      {
        if (v8 != 5)
        {
          goto LABEL_37;
        }

        goto LABEL_65;
      }

      if (v7 == 8)
      {
        if (v8 != 5)
        {
          goto LABEL_37;
        }

LABEL_69:
        v21 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v21) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 40) = v21;
        *(a1 + 52) |= 0x80u;
        v20 = *(this + 1);
        if (v20 < *(this + 2) && *v20 == 77)
        {
          *(this + 1) = v20 + 1;
          goto LABEL_73;
        }
      }

      else
      {
        if (v7 != 9 || v8 != 5)
        {
          goto LABEL_37;
        }

LABEL_73:
        v21 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(this, &v21) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 44) = v21;
        *(a1 + 52) |= 0x100u;
        if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
        {
          *(this + 8) = 0;
          result = 1;
          *(this + 36) = 1;
          return result;
        }
      }
    }

    if (v7 == 5)
    {
      if (v8 != 5)
      {
        goto LABEL_37;
      }

      goto LABEL_57;
    }

    if (v7 == 6 && v8 == 5)
    {
      goto LABEL_61;
    }

LABEL_37:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

void sub_10014C8D8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8F18;
  sub_10014C940(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_10014C940(void *result)
{
  if (qword_102637CD0 != result)
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

void sub_10014C9E0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10014CE90(a1);

  operator delete();
}

uint64_t sub_10014CA18(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 == 3)
        {
          if (v8 != 1)
          {
            goto LABEL_20;
          }

LABEL_32:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 24) = v16;
          *(a1 + 44) |= 4u;
          v15 = *(this + 1);
          if (v15 < *(this + 2) && *v15 == 33)
          {
            *(this + 1) = v15 + 1;
            goto LABEL_36;
          }
        }

        else
        {
          if (v7 != 4 || v8 != 1)
          {
            goto LABEL_20;
          }

LABEL_36:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
          {
            return 0;
          }

          *(a1 + 32) = v16;
          *(a1 + 44) |= 8u;
          if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
          {
            *(this + 8) = 0;
            result = 1;
            *(this + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v10 = *(this + 1);
      v9 = *(this + 2);
      if (v10 >= v9 || (v11 = *v10, v11 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this, (a1 + 8));
        if (!result)
        {
          return result;
        }

        v12 = *(this + 1);
        v9 = *(this + 2);
      }

      else
      {
        *(a1 + 8) = v11;
        v12 = v10 + 1;
        *(this + 1) = v12;
      }

      *(a1 + 44) |= 1u;
      if (v12 < v9 && *v12 == 17)
      {
        *(this + 1) = v12 + 1;
LABEL_28:
        v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v16) & 1) == 0)
        {
          return 0;
        }

        *(a1 + 16) = v16;
        *(a1 + 44) |= 2u;
        v14 = *(this + 1);
        if (v14 < *(this + 2) && *v14 == 25)
        {
          *(this + 1) = v14 + 1;
          goto LABEL_32;
        }
      }
    }

    if (v7 == 2 && v8 == 1)
    {
      goto LABEL_28;
    }

LABEL_20:
    if (v8 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) != 0);
  return 0;
}

uint64_t sub_10014CC44(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
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

      if ((TagFallback & 7) == 0)
      {
        v11 = *(this + 1);
        v10 = *(this + 2);
        goto LABEL_28;
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

    if (TagFallback >> 3 != 1 || v7 != 2)
    {
      goto LABEL_15;
    }

    *(a1 + 24) |= 1u;
    v8 = *(a1 + 8);
    if (!v8)
    {
      operator new();
    }

    v23 = 0;
    v9 = *(this + 1);
    if (v9 >= *(this + 2) || *v9 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v23))
      {
        return 0;
      }
    }

    else
    {
      v23 = *v9;
      *(this + 1) = v9 + 1;
    }

    v12 = *(this + 14);
    v13 = *(this + 15);
    *(this + 14) = v12 + 1;
    if (v12 >= v13)
    {
      return 0;
    }

    v14 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v23);
    if (!sub_10014BE80(v8, this, v15) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v14);
    v16 = *(this + 14);
    v17 = __OFSUB__(v16, 1);
    v18 = v16 - 1;
    if (v18 < 0 == v17)
    {
      *(this + 14) = v18;
    }

    v19 = *(this + 1);
    v10 = *(this + 2);
    if (v19 < v10 && *v19 == 16)
    {
      v11 = v19 + 1;
      *(this + 1) = v11;
LABEL_28:
      if (v11 >= v10 || (v20 = *v11, v20 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v21 = *(this + 1);
        v10 = *(this + 2);
      }

      else
      {
        *(a1 + 16) = v20;
        v21 = v11 + 1;
        *(this + 1) = v21;
      }

      *(a1 + 24) |= 2u;
      if (v21 == v10 && (*(this + 11) || *(this + 6) == *(this + 10)))
      {
        *(this + 8) = 0;
        result = 1;
        *(this + 36) = 1;
        return result;
      }
    }
  }
}

void sub_10014CE90(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024A8E28;
  if (qword_102637CC0 != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10014CF1C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8EA0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10014CF70(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A8F90;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_10014CFC4(void *result)
{
  if (qword_102637CE0 != result)
  {
    v1 = result;
    v2 = result[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[3];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_10014D064(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A9008;
  sub_10014CFC4(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10014D0CC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A9080;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_10014D120(void *result)
{
  if (qword_102637CF0 != result)
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

    result = v1[5];
    if (result)
    {
      v6 = *(*result + 8);

      return v6();
    }
  }

  return result;
}

void sub_10014D244(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A90F8;
  sub_10014D120(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10014D2AC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A9170;
  sub_10014D314(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_10014D314(void *result)
{
  if (qword_102637CF8 != result)
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

    result = v1[3];
    if (result)
    {
      v4 = *(*result + 8);

      return v4();
    }
  }

  return result;
}

void sub_10014D3E0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10014D418(a1);

  operator delete();
}

void sub_10014D418(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024A91E8;
  if (qword_102637D00 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10014D4A4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024A92D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_10014D4F8(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
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
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v7 != 1)
          {
            if (v7 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_21;
            }

            v10 = *(this + 1);
            v9 = *(this + 2);
            goto LABEL_32;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v12 = *(this + 1);
          v9 = *(this + 2);
          if (v12 >= v9 || (v13 = *v12, v13 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 8));
            if (!result)
            {
              return result;
            }

            v14 = *(this + 1);
            v9 = *(this + 2);
          }

          else
          {
            *(a1 + 8) = v13;
            v14 = v12 + 1;
            *(this + 1) = v14;
          }

          *(a1 + 40) |= 1u;
          if (v14 < v9 && *v14 == 16)
          {
            v10 = v14 + 1;
            *(this + 1) = v10;
LABEL_32:
            if (v10 >= v9 || (v16 = *v10, v16 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 12));
              if (!result)
              {
                return result;
              }

              v17 = *(this + 1);
              v9 = *(this + 2);
            }

            else
            {
              *(a1 + 12) = v16;
              v17 = v10 + 1;
              *(this + 1) = v17;
            }

            *(a1 + 40) |= 2u;
            if (v17 < v9 && *v17 == 24)
            {
              v11 = v17 + 1;
              *(this + 1) = v11;
              goto LABEL_40;
            }
          }
        }

        if (v7 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v11 = *(this + 1);
        v9 = *(this + 2);
LABEL_40:
        v38 = 0;
        if (v11 >= v9 || (v18 = *v11, (v18 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v38);
          if (!result)
          {
            return result;
          }

          v18 = v38;
        }

        else
        {
          *(this + 1) = v11 + 1;
        }

        if (v18 <= 5)
        {
          *(a1 + 40) |= 4u;
          *(a1 + 32) = v18;
        }

        v19 = *(this + 1);
        if (v19 < *(this + 2) && *v19 == 34)
        {
          *(this + 1) = v19 + 1;
LABEL_50:
          *(a1 + 40) |= 8u;
          v20 = *(a1 + 16);
          if (!v20)
          {
            operator new();
          }

          v39 = 0;
          v21 = *(this + 1);
          if (v21 >= *(this + 2) || *v21 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v39))
            {
              return 0;
            }
          }

          else
          {
            v39 = *v21;
            *(this + 1) = v21 + 1;
          }

          v22 = *(this + 14);
          v23 = *(this + 15);
          *(this + 14) = v22 + 1;
          if (v22 >= v23)
          {
            return 0;
          }

          v24 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v39);
          if (!sub_10014BD14(v20, this, v25) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v24);
          v26 = *(this + 14);
          v27 = __OFSUB__(v26, 1);
          v28 = v26 - 1;
          if (v28 < 0 == v27)
          {
            *(this + 14) = v28;
          }

          v29 = *(this + 1);
          if (v29 < *(this + 2) && *v29 == 42)
          {
            *(this + 1) = v29 + 1;
            goto LABEL_64;
          }
        }
      }

      if (v7 != 4)
      {
        break;
      }

      if (v8 == 2)
      {
        goto LABEL_50;
      }

LABEL_21:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(this, TagFallback, a3) & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 != 5 || v8 != 2)
    {
      goto LABEL_21;
    }

LABEL_64:
    *(a1 + 40) |= 0x10u;
    v30 = *(a1 + 24);
    if (!v30)
    {
      operator new();
    }

    v40 = 0;
    v31 = *(this + 1);
    if (v31 >= *(this + 2) || *v31 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v40))
      {
        return 0;
      }
    }

    else
    {
      v40 = *v31;
      *(this + 1) = v31 + 1;
    }

    v32 = *(this + 14);
    v33 = *(this + 15);
    *(this + 14) = v32 + 1;
    if (v32 >= v33)
    {
      return 0;
    }

    v34 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v40);
    if (!sub_10014BD14(v30, this, v35) || *(this + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v34);
    v36 = *(this + 14);
    v27 = __OFSUB__(v36, 1);
    v37 = v36 - 1;
    if (v37 < 0 == v27)
    {
      *(this + 14) = v37;
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

uint64_t sub_10014D944(uint64_t a1, wireless_diagnostics::google::protobuf::internal::WireFormatLite *this, unsigned int a3)
{
  while (1)
  {
    while (1)
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
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v7 == 4)
          {
            if (v8 == 2)
            {
              goto LABEL_62;
            }

            goto LABEL_26;
          }

          if (v7 == 5)
          {
            if (v8 != 2)
            {
              goto LABEL_26;
            }

LABEL_76:
            *(a1 + 56) |= 0x10u;
            v43 = *(a1 + 32);
            if (!v43)
            {
              operator new();
            }

            v60 = 0;
            v44 = *(this + 1);
            if (v44 >= *(this + 2) || *v44 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v60))
              {
                return 0;
              }
            }

            else
            {
              v60 = *v44;
              *(this + 1) = v44 + 1;
            }

            v45 = *(this + 14);
            v46 = *(this + 15);
            *(this + 14) = v45 + 1;
            if (v45 >= v46)
            {
              return 0;
            }

            v47 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v60);
            if (!sub_10014BE80(v43, this, v48) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v47);
            v49 = *(this + 14);
            v22 = __OFSUB__(v49, 1);
            v50 = v49 - 1;
            if (v50 < 0 == v22)
            {
              *(this + 14) = v50;
            }

            v51 = *(this + 1);
            if (v51 < *(this + 2) && *v51 == 50)
            {
              *(this + 1) = v51 + 1;
              goto LABEL_90;
            }
          }

          else
          {
            if (v7 != 6 || v8 != 2)
            {
              goto LABEL_26;
            }

LABEL_90:
            *(a1 + 56) |= 0x20u;
            v52 = *(a1 + 40);
            if (!v52)
            {
              operator new();
            }

            v60 = 0;
            v53 = *(this + 1);
            if (v53 >= *(this + 2) || *v53 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v60))
              {
                return 0;
              }
            }

            else
            {
              v60 = *v53;
              *(this + 1) = v53 + 1;
            }

            v54 = *(this + 14);
            v55 = *(this + 15);
            *(this + 14) = v54 + 1;
            if (v54 >= v55)
            {
              return 0;
            }

            v56 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v60);
            if (!sub_10014BE80(v52, this, v57) || *(this + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v56);
            v58 = *(this + 14);
            v22 = __OFSUB__(v58, 1);
            v59 = v58 - 1;
            if (v59 < 0 == v22)
            {
              *(this + 14) = v59;
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

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v10 = *(this + 1);
        v9 = *(this + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, (a1 + 48));
          if (!result)
          {
            return result;
          }

          v12 = *(this + 1);
          v9 = *(this + 2);
        }

        else
        {
          *(a1 + 48) = v11;
          v12 = v10 + 1;
          *(this + 1) = v12;
        }

        v13 = *(a1 + 56) | 1;
        *(a1 + 56) = v13;
        if (v12 < v9 && *v12 == 18)
        {
          *(this + 1) = v12 + 1;
          goto LABEL_34;
        }
      }

      if (v7 != 2)
      {
        break;
      }

      if (v8 != 2)
      {
        goto LABEL_26;
      }

      v13 = *(a1 + 56);
LABEL_34:
      *(a1 + 56) = v13 | 2;
      v15 = *(a1 + 8);
      if (!v15)
      {
        operator new();
      }

      v60 = 0;
      v16 = *(this + 1);
      if (v16 >= *(this + 2) || *v16 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v60))
        {
          return 0;
        }
      }

      else
      {
        v60 = *v16;
        *(this + 1) = v16 + 1;
      }

      v17 = *(this + 14);
      v18 = *(this + 15);
      *(this + 14) = v17 + 1;
      if (v17 >= v18)
      {
        return 0;
      }

      v19 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v60);
      if (!sub_10014BA50(v15, this, v20) || *(this + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v19);
      v21 = *(this + 14);
      v22 = __OFSUB__(v21, 1);
      v23 = v21 - 1;
      if (v23 < 0 == v22)
      {
        *(this + 14) = v23;
      }

      v24 = *(this + 1);
      if (v24 < *(this + 2) && *v24 == 26)
      {
        *(this + 1) = v24 + 1;
LABEL_48:
        *(a1 + 56) |= 4u;
        v25 = *(a1 + 16);
        if (!v25)
        {
          operator new();
        }

        v60 = 0;
        v26 = *(this + 1);
        if (v26 >= *(this + 2) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v60))
          {
            return 0;
          }
        }

        else
        {
          v60 = *v26;
          *(this + 1) = v26 + 1;
        }

        v27 = *(this + 14);
        v28 = *(this + 15);
        *(this + 14) = v27 + 1;
        if (v27 >= v28)
        {
          return 0;
        }

        v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v60);
        if (!sub_10014BE80(v25, this, v30) || *(this + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
        v31 = *(this + 14);
        v22 = __OFSUB__(v31, 1);
        v32 = v31 - 1;
        if (v32 < 0 == v22)
        {
          *(this + 14) = v32;
        }

        v33 = *(this + 1);
        if (v33 < *(this + 2) && *v33 == 34)
        {
          *(this + 1) = v33 + 1;
LABEL_62:
          *(a1 + 56) |= 8u;
          v34 = *(a1 + 24);
          if (!v34)
          {
            operator new();
          }

          v60 = 0;
          v35 = *(this + 1);
          if (v35 >= *(this + 2) || *v35 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v60))
            {
              return 0;
            }
          }

          else
          {
            v60 = *v35;
            *(this + 1) = v35 + 1;
          }

          v36 = *(this + 14);
          v37 = *(this + 15);
          *(this + 14) = v36 + 1;
          if (v36 >= v37)
          {
            return 0;
          }

          v38 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v60);
          if (!sub_10014BE80(v34, this, v39) || *(this + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v38);
          v40 = *(this + 14);
          v22 = __OFSUB__(v40, 1);
          v41 = v40 - 1;
          if (v41 < 0 == v22)
          {
            *(this + 14) = v41;
          }

          v42 = *(this + 1);
          if (v42 < *(this + 2) && *v42 == 42)
          {
            *(this + 1) = v42 + 1;
            goto LABEL_76;
          }
        }
      }
    }

    if (v7 == 3 && v8 == 2)
    {
      goto LABEL_48;
    }

LABEL_26:
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

uint64_t sub_10014DFFC(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 64);
  if (v3)
  {
    if (v3)
    {
      v6 = *(a1 + 8);
      if (!v6)
      {
        v6 = *(qword_102637D88 + 8);
      }

      v7 = sub_1001F4208(v6, a2);
      v8 = v7;
      if (v7 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
      }

      else
      {
        v9 = 1;
      }

      v4 = v8 + v9 + 1;
      v3 = *(a1 + 64);
    }

    else
    {
      v4 = 0;
    }

    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    v10.i64[0] = 0x200000002;
    v10.i64[1] = 0x200000002;
    v5 = (vaddvq_s32(vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_101D01A20), v10)) + v4);
    if ((v3 & 0x40) != 0)
    {
      v11 = *(a1 + 28);
      if ((v11 & 0x80000000) != 0)
      {
        v12 = 11;
      }

      else if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
        v3 = *(a1 + 64);
      }

      else
      {
        v12 = 2;
      }

      v5 = (v12 + v5);
    }

    if ((v3 & 0x80) != 0)
    {
      v13 = *(a1 + 32);
      if ((v13 & 0x80000000) != 0)
      {
        v14 = 11;
      }

      else if (v13 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
        v3 = *(a1 + 64);
      }

      else
      {
        v14 = 2;
      }

      v5 = (v14 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v15 = *(a1 + 36);
      if ((v15 & 0x80000000) != 0)
      {
        v16 = 11;
      }

      else if (v15 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
        v3 = *(a1 + 64);
      }

      else
      {
        v16 = 2;
      }

      LODWORD(v5) = v16 + v5;
    }

    if ((v3 & 0x200) != 0)
    {
      v5 = (v5 + 9);
    }

    else
    {
      v5 = v5;
    }

    if ((v3 & 0x400) != 0)
    {
      v17 = *(a1 + 48);
      if ((v17 & 0x80000000) != 0)
      {
        v18 = 11;
      }

      else if (v17 >= 0x80)
      {
        v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17, a2) + 1;
        v3 = *(a1 + 64);
      }

      else
      {
        v18 = 2;
      }

      v5 = (v18 + v5);
      if ((v3 & 0x800) == 0)
      {
LABEL_40:
        if ((v3 & 0x1000) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_54;
      }
    }

    else if ((v3 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    v19 = *(a1 + 52);
    if ((v19 & 0x80000000) != 0)
    {
      v20 = 11;
    }

    else if (v19 >= 0x80)
    {
      v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19, a2) + 1;
      v3 = *(a1 + 64);
    }

    else
    {
      v20 = 2;
    }

    v5 = (v20 + v5);
    if ((v3 & 0x1000) != 0)
    {
LABEL_54:
      v21 = *(a1 + 56);
      if ((v21 & 0x80000000) != 0)
      {
        v22 = 11;
      }

      else if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 1;
      }

      else
      {
        v22 = 2;
      }

      v5 = (v22 + v5);
    }
  }

LABEL_60:
  *(a1 + 60) = v5;
  return v5;
}

uint64_t sub_10014E208(void *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_10028C64C();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10014E350(a1, v6);
  }

  v13 = 0;
  v14 = 88 * v2;
  sub_1001005C4(88 * v2, a2);
  v15 = (88 * v2 + 88);
  v7 = a1[1];
  v8 = 88 * v2 + *a1 - v7;
  sub_10014E3E4(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10014E3AC(&v13);
  return v12;
}

void sub_10014E33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10014E3AC(va);
  _Unwind_Resume(a1);
}

void sub_10014E350(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_10014E3AC(uint64_t a1)
{
  sub_10014E4F0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10014E3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v14 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v8 = *(v6 + 32);
      v9 = *(v6 + 48);
      v10 = *(v6 + 64);
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 48) = v9;
      *(a4 + 64) = v10;
      *(a4 + 32) = v8;
      v6 += 88;
      a4 += 88;
    }

    while (v6 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 88;
    }
  }

  return sub_10014E4B8(v12);
}

uint64_t sub_10014E4B8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10038F860(a1);
  }

  return a1;
}

void sub_10014E4F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 88;
      *(a1 + 16) = v2 - 88;
      if (*(v2 - 57) < 0)
      {
        operator delete(*(v2 - 80));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void sub_10014E54C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 88)
  {
    if (*(i - 57) < 0)
    {
      operator delete(*(i - 80));
    }
  }

  a1[1] = v2;
}

uint64_t sub_10014E5B0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100546628(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_10014E5FC(&v6, v3);
  }

  return v2;
}

void sub_10014E5FC(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_10014E660(uint64_t **a1, void *a2, uint64_t a3, void **a4)
{
  v4 = *sub_100197070(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *sub_10014E704(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  result = *sub_1000F2B3C(a1, &v4, a2);
  if (!result)
  {
    sub_10014E784();
  }

  return result;
}

void sub_10014E820(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002E4F74(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10014E83C(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  __src[0] = 0;
  __src[1] = 0;
  v82 = 0;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v6 = 0;
    do
    {
      v7 = *(v4 + 40);
      if (v7 >= 0 && ((v7 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v7 - 1) <= 0xFFFFFFFFFFFFELL)
      {
        if (v6 >= v82)
        {
          v14 = __src[0];
          v15 = v6 - __src[0];
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v6 - __src[0]) >> 5);
          v17 = v16 + 1;
          if (v16 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v82 - __src[0]) >> 5) > v17)
          {
            v17 = 0x5555555555555556 * ((v82 - __src[0]) >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v82 - __src[0]) >> 5) >= 0x155555555555555)
          {
            v18 = 0x2AAAAAAAAAAAAAALL;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            sub_1001A1980(__src, v18);
          }

          v19 = (32 * ((v6 - __src[0]) >> 5));
          v20 = *(v4 + 16);
          *v19 = *v4;
          v19[1] = v20;
          v21 = *(v4 + 32);
          v22 = *(v4 + 48);
          v23 = *(v4 + 80);
          v19[4] = *(v4 + 64);
          v19[5] = v23;
          v19[2] = v21;
          v19[3] = v22;
          v6 = (96 * v16 + 96);
          v24 = (96 * v16 - v15);
          memcpy(v19 - v15, v14, v15);
          v25 = __src[0];
          __src[0] = v24;
          __src[1] = v6;
          v82 = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          v10 = *(v4 + 16);
          *v6 = *v4;
          *(v6 + 1) = v10;
          v11 = *(v4 + 32);
          v12 = *(v4 + 48);
          v13 = *(v4 + 80);
          *(v6 + 4) = *(v4 + 64);
          *(v6 + 5) = v13;
          *(v6 + 2) = v11;
          *(v6 + 3) = v12;
          v6 += 96;
        }

        __src[1] = v6;
      }

      v4 += 96;
    }

    while (v4 != v5);
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018F29C8();
  }

  v26 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v27 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
    *buf = 134218240;
    v88 = v27;
    v89 = 2048;
    v90 = 0xAAAAAAAAAAAAAAABLL * ((__src[1] - __src[0]) >> 5);
    _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, num input aps, %lu, num valid unc aps, %lu", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F29F0(buf);
    v71 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
    v83 = 134218240;
    v84 = v71;
    v85 = 2048;
    v86 = 0xAAAAAAAAAAAAAAABLL * ((__src[1] - __src[0]) >> 5);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "WifiCalc, zaxis, num input aps, %lu, num valid unc aps, %lu", &v83, 22);
    v73 = v72;
    sub_100152C7C("Generic", 1, 0, 2, "static std::vector<CLWifiAPLocation> CLLocationCalculator::filterWifiApsBasedOnVerticalUncCriteria(const std::vector<CLWifiAPLocation> &, BOOL &)", "%s\n", v72);
    if (v73 != buf)
    {
      free(v73);
    }
  }

  v28 = __src[0];
  v29 = __src[1];
  if (__src[0] == __src[1])
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018F29C8();
    }

    v70 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, validUncApCollection is empty", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F29F0(buf);
      LOWORD(v83) = 0;
      LODWORD(v78) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "WifiCalc, zaxis, validUncApCollection is empty", &v83, v78);
      v75 = v74;
      sub_100152C7C("Generic", 1, 0, 2, "static std::vector<CLWifiAPLocation> CLLocationCalculator::filterWifiApsBasedOnVerticalUncCriteria(const std::vector<CLWifiAPLocation> &, BOOL &)", "%s\n", v74);
      if (v75 != buf)
      {
        free(v75);
      }
    }

    *a2 = 1;
    *a3 = *__src;
    *(a3 + 16) = v82;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    do
    {
      v30 = v28[5];
      if (v30 < *(sub_1000F7F38() + 34))
      {
        v31 = *(a3 + 8);
        v32 = *(a3 + 16);
        if (v31 >= v32)
        {
          v38 = *a3;
          v39 = v31 - *a3;
          v40 = 0xAAAAAAAAAAAAAAABLL * (v39 >> 5) + 1;
          if (v40 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          v41 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v38) >> 5);
          if (2 * v41 > v40)
          {
            v40 = 2 * v41;
          }

          if (v41 >= 0x155555555555555)
          {
            v40 = 0x2AAAAAAAAAAAAAALL;
          }

          if (v40)
          {
            sub_1001A1980(a3, v40);
          }

          v42 = (32 * (v39 >> 5));
          v43 = *(v28 + 1);
          *v42 = *v28;
          v42[1] = v43;
          v44 = *(v28 + 2);
          v45 = *(v28 + 3);
          v46 = *(v28 + 5);
          v42[4] = *(v28 + 4);
          v42[5] = v46;
          v42[2] = v44;
          v42[3] = v45;
          v37 = v42 + 6;
          v47 = v42 - v39;
          memcpy(v42 - v39, v38, v39);
          v48 = *a3;
          *a3 = v47;
          *(a3 + 8) = v37;
          *(a3 + 16) = 0;
          if (v48)
          {
            operator delete(v48);
          }
        }

        else
        {
          v33 = *(v28 + 1);
          *v31 = *v28;
          v31[1] = v33;
          v34 = *(v28 + 2);
          v35 = *(v28 + 3);
          v36 = *(v28 + 5);
          v31[4] = *(v28 + 4);
          v31[5] = v36;
          v31[2] = v34;
          v31[3] = v35;
          v37 = v31 + 6;
        }

        *(a3 + 8) = v37;
      }

      v28 += 12;
    }

    while (v28 != v29);
    if (*a3 == *(a3 + 8))
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018F29C8();
      }

      v49 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, all aps were non-slam, add them back to yield a fix", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F29F0(buf);
        LOWORD(v83) = 0;
        LODWORD(v78) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "WifiCalc, zaxis, all aps were non-slam, add them back to yield a fix", &v83, v78);
        v77 = v76;
        sub_100152C7C("Generic", 1, 0, 2, "static std::vector<CLWifiAPLocation> CLLocationCalculator::filterWifiApsBasedOnVerticalUncCriteria(const std::vector<CLWifiAPLocation> &, BOOL &)", "%s\n", v76);
        if (v77 != buf)
        {
          free(v77);
        }
      }

      v50 = __src[0];
      v51 = __src[1];
      if (__src[0] != __src[1])
      {
        v52 = *(a3 + 8);
        do
        {
          v53 = *(a3 + 16);
          if (v52 >= v53)
          {
            v58 = *a3;
            v59 = v52 - *a3;
            v60 = 0xAAAAAAAAAAAAAAABLL * (v59 >> 5) + 1;
            if (v60 > 0x2AAAAAAAAAAAAAALL)
            {
              sub_10028C64C();
            }

            v61 = 0xAAAAAAAAAAAAAAABLL * ((v53 - v58) >> 5);
            if (2 * v61 > v60)
            {
              v60 = 2 * v61;
            }

            if (v61 >= 0x155555555555555)
            {
              v62 = 0x2AAAAAAAAAAAAAALL;
            }

            else
            {
              v62 = v60;
            }

            if (v62)
            {
              sub_1001A1980(a3, v62);
            }

            v63 = (32 * (v59 >> 5));
            v64 = v50[1];
            *v63 = *v50;
            v63[1] = v64;
            v65 = v50[2];
            v66 = v50[3];
            v67 = v50[5];
            v63[4] = v50[4];
            v63[5] = v67;
            v63[2] = v65;
            v63[3] = v66;
            v52 = v63 + 6;
            v68 = v63 - v59;
            memcpy(v63 - v59, v58, v59);
            v69 = *a3;
            *a3 = v68;
            *(a3 + 8) = v52;
            *(a3 + 16) = 0;
            if (v69)
            {
              operator delete(v69);
            }
          }

          else
          {
            v54 = v50[1];
            *v52 = *v50;
            v52[1] = v54;
            v55 = v50[2];
            v56 = v50[3];
            v57 = v50[5];
            v52[4] = v50[4];
            v52[5] = v57;
            v52[2] = v55;
            v52[3] = v56;
            v52 += 6;
          }

          *(a3 + 8) = v52;
          v50 += 6;
        }

        while (v50 != v51);
      }

      *a2 = 1;
    }

    if (__src[0])
    {
      __src[1] = __src[0];
      operator delete(__src[0]);
    }
  }
}

void sub_10014F004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10014F0F4(uint64_t a1, uint64_t a2)
{
  sub_100021AFC(v13);
  v12 = 0;
  v4 = (*(*a1 + 128))(a1, &v12, v13);
  if (v4)
  {
    memcpy(a2, v14, 0x201uLL);
    v5 = v15;
    v6 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *(a2 + 520) = v5;
    v7 = *(a2 + 528);
    *(a2 + 528) = v6;
    if (v7)
    {
      sub_100008080(v7);
    }

    v8 = v22[0];
    *(a2 + 600) = v21;
    *(a2 + 616) = v8;
    *(a2 + 625) = *(v22 + 9);
    v9 = v18;
    *(a2 + 536) = v17;
    *(a2 + 552) = v9;
    v10 = v20;
    *(a2 + 568) = v19;
    *(a2 + 584) = v10;
  }

  if (v26)
  {
    sub_100008080(v26);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  if (v23)
  {
    sub_100008080(v23);
  }

  if (v16)
  {
    sub_100008080(v16);
  }

  return v4;
}

void sub_10014F220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

__n128 sub_10014F24C(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (0x8E38E38E38E38E39 * ((*(a1 + 48) - v2) >> 4) <= a2)
  {
    sub_10046F324();
  }

  v5 = v2 + 144 * a2;
  if (sub_100028030(v5) && *(v5 + 136))
  {
    --*(a1 + 68);
  }

  v6 = *(a1 + 40) + 144 * a2;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v6 + 8) = _Q0;
  *(v6 + 24) = 0uLL;
  *(v6 + 40) = 0xBFF0000000000000;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0xBFF0000000000000;
  *(v6 + 64) = 0;
  *(v6 + 72) = _Q0;
  *(v6 + 88) = _Q0;
  *(v6 + 104) = 0xBFF0000000000000;
  result = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0xBFF0000000000000;
  *(v6 + 136) = 0x700000000;
  return result;
}

uint64_t sub_10014F328(char *a1, int a2, unsigned int *a3, __int128 *a4)
{
  v15 = a2;
  v7 = qword_1026372D0;
  if (qword_1026372D0 != qword_1026372D8)
  {
    while (*v7 != *a3)
    {
      if (++v7 == qword_1026372D8)
      {
        goto LABEL_10;
      }
    }
  }

  if (v7 == qword_1026372D8)
  {
LABEL_10:
    if (qword_1025D47A0 != -1)
    {
      sub_1019500E4();
    }

    v12 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v13 = sub_100048D98(*a3);
      *buf = 136315138;
      *&buf[4] = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "#cclp registering for un-supported notification: %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019505E4(a3);
    }

    return 0;
  }

  else
  {
    v8 = sub_100044404(a1, a2, a3, a4);
    if (qword_1025D47A0 != -1)
    {
      sub_1019500E4();
    }

    v9 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = &v15;
      v10 = [sub_1000488C8((a1 + 80) &v15];
      v11 = sub_100048D98(*a3);
      *buf = 68289794;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      v17 = 2050;
      v18 = a2;
      v19 = 2114;
      v20 = v10;
      v21 = 2082;
      v22 = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#cclp registration, client-id:%{public}ld, client:%{public, location:escape_only}@, notification:%{public, location:escape_only}s}", buf, 0x30u);
    }
  }

  return v8;
}

void sub_10014F5C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10014F5D8(char *result, _DWORD *a2, uint64_t a3)
{
  if (*a2 == 9)
  {

    sub_10014F8B8();
  }

  else if (!*a2 && (*(a3 + 792) & 0xFFFFFFFE) == 2)
  {
    v4 = *(a3 + 132);
    if (v4 == 2)
    {
      sub_10014F8B8();
    }

    else if (v4 == 1)
    {
      *(result + 3) = *(a3 + 504);
      sub_1001FC760(result, a2);
    }

    if (!off_1025D53B8)
    {
      operator new();
    }

    if ((*(off_1025D53B8 + 1) & 1) != 0 && *off_1025D53B8 == 1)
    {
      ++*(off_1025D53B8 + 2);
    }

    else
    {
      ++*(off_1025D53B8 + 1);
    }
  }
}

void sub_10014F6CC(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = *(a1 + 4336);
  if (v3)
  {
    sub_10014F5D8(v3, a2, a3);
  }
}

void sub_10014F6DC(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018741E8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onAccessoryNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018741FC();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onAccessoryNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100150144(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10014F8B8()
{
  if (!off_1025D53B8)
  {
    operator new();
  }

  if ((*(off_1025D53B8 + 1) & 1) != 0 && *off_1025D53B8 == 1)
  {
    *(off_1025D53B8 + 1) = 0;
  }
}

void sub_10014F93C(uint64_t a1, __n128 a2, uint64_t a3)
{
  v3 = a2.n128_f64[0];
  v5 = *(a1 + 24);
  if (v5)
  {
    sub_1001509AC(v5, a3, a2.n128_f64[0]);
  }

  sub_10002452C(a1, a3, v3);

  sub_10002492C(a1, v6);
}

void sub_10014F998(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned __int8 a9)
{
  v12 = a5 & ~a3;
  v13 = a8 & a4 & a9 ^ 1;
  v14 = v13 | a2;
  if (v12 == 1 && v14)
  {
    v15 = *(a1 + 24);
    if (v15)
    {
      sub_10172C420(v15);
      v16 = *(a1 + 24);
      v17 = v16[2];
      sub_101130168(v16);
    }

    else
    {
      v17 = 0.0;
    }

    v21 = *(a1 + 8);
    if (!v21)
    {
      v23 = *(a1 + 32);
      if (v23)
      {
        v22 = (v23 + 1952);
        goto LABEL_14;
      }

      v21 = *(a1 + 16);
      if (!v21)
      {
        goto LABEL_15;
      }
    }

    v22 = (v21 + 16);
LABEL_14:
    *v22 = v17;
LABEL_15:
    if (qword_1025D4650 != -1)
    {
      sub_101B3FE80();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v25 = (a1 + 624);
      if (*(a1 + 647) < 0)
      {
        v25 = *v25;
      }

      *buf = 136315394;
      v95 = v25;
      v96 = 2050;
      v97 = v17;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "GPSODOM%s,switching from Rhythmic to normal GNSS odometer,greatestDistance,%{public}.2lf", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B40ABC();
    }

    v18 = 0;
    goto LABEL_60;
  }

  v18 = 0;
  if (((v12 | v13) & 1) == 0 && (a2 & 1) == 0)
  {
    v19 = *(a1 + 8);
    if (v19)
    {
      v20 = sub_1002A4ADC(v19);
      sub_101165740(*(a1 + 8));
    }

    else
    {
      v26 = *(a1 + 32);
      if (v26)
      {
        v20 = sub_101003F74(v26);
        sub_101003DC0(*(a1 + 32));
      }

      else
      {
        v27 = *(a1 + 16);
        if (v27)
        {
          v20 = sub_1002A4ADC(v27);
          sub_100FC0CF4(*(a1 + 16));
        }

        else
        {
          v20 = 0.0;
        }
      }
    }

    v28 = *(a1 + 24);
    if (v28 && ((v28[2] = v20, (v29 = *(v28 + 3)) == 0) ? (v30 = 1) : (v30 = *(v29 + 144) > 0.0), (v31 = *(v28 + 4)) == 0 ? (v32 = 1) : (v32 = *(v31 + 144) > 0.0), (!v30 || !v32) && (v33 = *(a1 + 336), v33 > 0.0) && vabdd_f64(v33, CFAbsoluteTimeGetCurrent()) <= 3.0 && !sub_10002807C(*(a1 + 376), *(a1 + 384)) && sub_100020608(*(a1 + 376), *(a1 + 384)) && sub_10010615C(*(a1 + 392))))
    {
      v34 = *(a1 + 24);
      buf[0] = 0;
      v99[8] = 0;
      sub_10172C320(v34, a1 + 320, buf);
      if (qword_1025D4650 != -1)
      {
        sub_101B3FE94();
      }

      v35 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v36 = (a1 + 624);
        if (*(a1 + 647) < 0)
        {
          v36 = *v36;
        }

        v37 = *(a1 + 336);
        v38 = *(a1 + 376);
        v39 = *(a1 + 384);
        v40 = *(a1 + 392);
        v41 = *(a1 + 496);
        v42 = *(a1 + 504);
        v43 = *(a1 + 472);
        v44 = *(a1 + 480);
        v46 = *(a1 + 416);
        v45 = *(a1 + 424);
        *buf = 136317699;
        v95 = v36;
        v96 = 2050;
        v97 = v37;
        v98 = 2053;
        *v99 = v38;
        *&v99[8] = 2053;
        *v100 = v39;
        *&v100[8] = 2050;
        *v101 = v41;
        *&v101[8] = 2050;
        *v102 = v40;
        *&v102[8] = 2050;
        *v103 = v43;
        *&v103[8] = 2050;
        v104 = v46;
        v105 = 2050;
        v106 = v42;
        v107 = 2050;
        v108 = v44;
        v109 = 2050;
        v110 = v45;
        _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEFAULT, "GPSODOM-MM%s,%{public}.1lf,location sent to RhythmicOdometer for initializing when switching from 1Hz,LL,%{sensitive}.7lf,%{sensitive}.7lf,course,%{public}.2lf,altitude,%{public}.2lf,speed,%{public}.2lf,hunc,%{public}.2lf,courseUnc,%{public}.2lf,speedUnc,%{public}.2lf,altUnc,%{public}.2lf", buf, 0x70u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101B3FE94();
        }

        v63 = (a1 + 624);
        if (*(a1 + 647) < 0)
        {
          v63 = *v63;
        }

        v64 = *(a1 + 336);
        v65 = *(a1 + 376);
        v66 = *(a1 + 384);
        v67 = *(a1 + 392);
        v68 = *(a1 + 496);
        v69 = *(a1 + 504);
        v70 = *(a1 + 472);
        v71 = *(a1 + 480);
        v73 = *(a1 + 416);
        v72 = *(a1 + 424);
        v77 = 136317699;
        v78 = v63;
        v79 = 2050;
        v80 = v64;
        v81 = 2053;
        *v82 = v65;
        *&v82[8] = 2053;
        *v83 = v66;
        *&v83[8] = 2050;
        *v84 = v68;
        *&v84[8] = 2050;
        *v85 = v67;
        *&v85[8] = 2050;
        *v86 = v70;
        *&v86[8] = 2050;
        v87 = v73;
        v88 = 2050;
        v89 = v69;
        v90 = 2050;
        v91 = v71;
        v92 = 2050;
        v93 = v72;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "GPSODOM-MM%s,%{public}.1lf,location sent to RhythmicOdometer for initializing when switching from 1Hz,LL,%{sensitive}.7lf,%{sensitive}.7lf,course,%{public}.2lf,altitude,%{public}.2lf,speed,%{public}.2lf,hunc,%{public}.2lf,courseUnc,%{public}.2lf,speedUnc,%{public}.2lf,altUnc,%{public}.2lf", &v77, 112);
        v75 = v74;
        sub_100152C7C("Generic", 1, 0, 2, "void CLGpsOdometryInterface::handleGNSSOperatingState(const BOOL, const BOOL, const BOOL, const BOOL, const BOOL, const BOOL, const BOOL, const BOOL)", "%s\n", v74);
        if (v75 != buf)
        {
          free(v75);
        }
      }

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    if (qword_1025D4650 != -1)
    {
      sub_101B3FE94();
    }

    v47 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v48 = (a1 + 624);
      if (*(a1 + 647) < 0)
      {
        v48 = *v48;
      }

      v49 = *(a1 + 336);
      v50 = *(a1 + 376);
      v51 = *(a1 + 384);
      v52 = *(a1 + 392);
      *buf = 136316931;
      v95 = v48;
      v96 = 2050;
      v97 = v20;
      v98 = 1026;
      *v99 = a6;
      *&v99[4] = 1026;
      *&v99[6] = v18;
      *v100 = 2050;
      *&v100[2] = v49;
      *v101 = 2053;
      *&v101[2] = v50;
      *v102 = 2053;
      *&v102[2] = v51;
      *v103 = 2050;
      *&v103[2] = v52;
      _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEFAULT, "GPSODOM%s,switching from normal to Rhythmic GNSS odometer,greatestDistance,%{public}.2lf,isRhythmicFixQualified,%{public}d,forceUpdateRhythmic,%{public}d,lastLocationTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,altitude,%{public}.2lf", buf, 0x4Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101B3FE94();
      }

      v56 = (a1 + 624);
      if (*(a1 + 647) < 0)
      {
        v56 = *v56;
      }

      v57 = *(a1 + 336);
      v58 = *(a1 + 376);
      v59 = *(a1 + 384);
      v60 = *(a1 + 392);
      v77 = 136316931;
      v78 = v56;
      v79 = 2050;
      v80 = v20;
      v81 = 1026;
      *v82 = a6;
      *&v82[4] = 1026;
      *&v82[6] = v18;
      *v83 = 2050;
      *&v83[2] = v57;
      *v84 = 2053;
      *&v84[2] = v58;
      *v85 = 2053;
      *&v85[2] = v59;
      *v86 = 2050;
      *&v86[2] = v60;
      LODWORD(v76) = 74;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "GPSODOM%s,switching from normal to Rhythmic GNSS odometer,greatestDistance,%{public}.2lf,isRhythmicFixQualified,%{public}d,forceUpdateRhythmic,%{public}d,lastLocationTime,%{public}.1lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,altitude,%{public}.2lf", &v77, v76);
      v62 = v61;
      sub_100152C7C("Generic", 1, 0, 2, "void CLGpsOdometryInterface::handleGNSSOperatingState(const BOOL, const BOOL, const BOOL, const BOOL, const BOOL, const BOOL, const BOOL, const BOOL)", "%s\n", v61);
      if (v62 != buf)
      {
        free(v62);
      }
    }
  }

LABEL_60:
  if (v14)
  {
    v53 = 0;
  }

  else
  {
    v53 = a6 & ~a7;
  }

  if ((v18 | v53) == 1)
  {
    v54 = *(a1 + 24);
    if (v54)
    {
      sub_10172C420(v54);
      if (*(a1 + 304))
      {
        sub_100021AFC(buf);
        if (sub_1011304CC(*(a1 + 24), buf))
        {
          v55 = *(a1 + 304);
          if (!v55)
          {
            sub_1000CF05C();
          }

          (*(*v55 + 48))(v55, buf);
        }

        if (v115)
        {
          sub_100008080(v115);
        }

        if (v114 < 0)
        {
          operator delete(__p);
        }

        if (v112)
        {
          sub_100008080(v112);
        }

        if (v111)
        {
          sub_100008080(v111);
        }
      }
    }
  }
}

void sub_100150118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100150144(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v62.i32[2] = a2;
  v7 = sub_10000B1F8(a1, a2);
  sub_10000B230(buf);
  sub_10000B324(v7, buf);
  *buf = 18;
  v62.i32[0] = 18;
  v8 = sub_10000AD98(buf);
  v62.i32[1] = v8;
  v10 = sub_10000AE98(v8, v9);
  *buf = 4;
  sub_10001E898(v10, buf, &v62, (a1 + 5220), &v62.i32[2], a3, a4);
  if (*a3 == 21)
  {
    *buf = 21;
    (*(*a1 + 152))(a1, buf, a4, 1, 0xFFFFFFFFLL, 0);
  }

  else if (*a3 == 20)
  {
    LOBYTE(v53) = 0;
    v54[0] = 0xBFF0000000000000;
    v11 = *(a1 + 280);
    if (v11)
    {
      (*(*v11 + 336))(v11, a4 + 856, a4 + 848, &v53, v54);
      if (v53)
      {
        sub_100021AFC(buf);
        v88 = v54[0];
        v89 = *(a4 + 856);
        v62.i32[3] = 20;
        (*(*a1 + 152))(a1, &v62.i8[12], buf, 1, 0xFFFFFFFFLL, 0);

        if (v92)
        {
          sub_100008080(v92);
        }

        if (v91 < 0)
        {
          operator delete(__p);
        }

        if (v87)
        {
          sub_100008080(v87);
        }

        if (v86)
        {
          sub_100008080(v86);
        }
      }
    }

    if (*(a4 + 848) >= 0.0 && sub_100DD3EAC((a1 + 2032), *(a4 + 864)))
    {
      sub_100021AFC(buf);
      v81 = *(a4 + 856);
      v80 = *(a4 + 848);
      v82 = 3;
      v85 = *(a4 + 864);
      v84 = *(a4 + 872);
      v83 = v81;
      sub_100284758(a1, buf);

      if (v92)
      {
        sub_100008080(v92);
      }

      if (v91 < 0)
      {
        operator delete(__p);
      }

      if (v87)
      {
        sub_100008080(v87);
      }

      if (v86)
      {
        sub_100008080(v86);
      }
    }

    sub_1003E0614(a1 + 800);
  }

  else
  {
    v12 = *(a1 + 280);
    if (v12)
    {
      (*(*v12 + 560))(v12, a3, a4);
    }

    sub_100022008(v54, a4);
    *buf = a1 + 336;
    v13 = sub_100109DF4(a1 + 232, (a1 + 336), &unk_101C66300, buf);
    if (*(v13 + 116) > 0.0)
    {
      v16 = sub_10000B1F8(v13, v14);
      *buf = 0;
      v17 = sub_10001A6B0(v16, buf);
      *buf = a1 + 336;
      v18 = v17 - *(sub_100109DF4(a1 + 232, (a1 + 336), &unk_101C66300, buf) + 172);
      if (v18 >= 0.0 && v18 < 4.0)
      {
        *buf = a1 + 336;
        v53 = *(sub_100109DF4(a1 + 232, (a1 + 336), &unk_101C66300, buf) + 100);
        *buf = a1 + 336;
        v52 = *(sub_100109DF4(a1 + 232, (a1 + 336), &unk_101C66300, buf) + 108);
        *buf = a1 + 336;
        if (*(sub_100109DF4(a1 + 232, (a1 + 336), &unk_101C66300, buf) + 148) > 0.0)
        {
          *buf = a1 + 336;
          if (*(sub_100109DF4(a1 + 232, (a1 + 336), &unk_101C66300, buf) + 164) > 0.0)
          {
            *buf = a1 + 336;
            v20 = *(sub_100109DF4(a1 + 232, (a1 + 336), &unk_101C66300, buf) + 100);
            *buf = a1 + 336;
            v21 = *(sub_100109DF4(a1 + 232, (a1 + 336), &unk_101C66300, buf) + 108);
            *buf = a1 + 336;
            v22 = *(sub_100109DF4(a1 + 232, (a1 + 336), &unk_101C66300, buf) + 140);
            *buf = a1 + 336;
            v23.n128_u64[0] = *(sub_100109DF4(a1 + 232, (a1 + 336), &unk_101C66300, buf) + 156);
            v24.n128_u64[0] = v20;
            v25.n128_u64[0] = v21;
            v26.n128_f64[0] = v18;
            v27.n128_u64[0] = v22;
            sub_1004E84E8(&v53, &v52, v24, v25, v26, v27, v23, v28);
          }
        }

        v54[60] = v53;
        v54[61] = v52;
        *buf = a1 + 336;
        v55 = *(sub_100109DF4(a1 + 232, (a1 + 336), &unk_101C66300, buf) + 116);
        if (qword_1025D4600 != -1)
        {
          sub_1018F7C0C();
        }

        v29 = qword_1025D4608;
        v30 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG);
        if (v30)
        {
          v32 = v52;
          v33 = v53;
          v34 = v55;
          v35 = sub_10000B1F8(v30, v31);
          v36 = sub_100125220(v35);
          *buf = 134546689;
          *&buf[4] = v33;
          v73 = 2053;
          v74 = v32;
          v75 = 2050;
          v76 = v34;
          v77 = 2048;
          v78 = v18;
          v79 = 2050;
          v80 = v36;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "Accessory,propagated on-device GPS,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.1lf,dt,%.3f,propagation_us,%{public}.3f", buf, 0x34u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F8644(buf);
          v42 = qword_1025D4608;
          v43 = v52;
          v44 = v53;
          v45 = v55;
          v48 = sub_10000B1F8(v46, v47);
          v49 = sub_100125220(v48);
          v62.i32[3] = 134546689;
          v63 = v44;
          v64 = 2053;
          v65 = v43;
          v66 = 2050;
          v67 = v45;
          v68 = 2048;
          v69 = v18;
          v70 = 2050;
          v71 = v49;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v42, 2, "Accessory,propagated on-device GPS,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.1lf,dt,%.3f,propagation_us,%{public}.3f", &v62.u64[1] + 4, 52);
          v51 = v50;
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::onAccessoryNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v50);
          if (v51 != buf)
          {
            free(v51);
          }
        }
      }
    }

    v37 = *a3;
    if (!*a3)
    {
      if ((*(a4 + 792) & 0xFFFFFFFE) == 2)
      {
        if (!off_1025D53B8)
        {
          operator new();
        }

        if ((*(off_1025D53B8 + 1) & 1) == 0 || (*off_1025D53B8 & 1) == 0)
        {
          v38 = *(a1 + 280);
          v39 = v38 ? (*(*v38 + 568))(v38) : 0x7FFFFFFF;
          v40 = *(a1 + 312);
          if (v40)
          {
            if (sub_100141988(v40) > v39)
            {
              sub_100DAB50C(*(a1 + 312), v39);
            }
          }
        }
      }

      v37 = *a3;
    }

    if (v37 == 9)
    {
      v41 = *(a1 + 312);
      if (v41)
      {
        sub_100DAB6C0(v41);
      }
    }

    sub_10010CA08(a1, *(a1 + 344), v15, a3, v54);

    if (v60)
    {
      sub_100008080(v60);
    }

    if (v59 < 0)
    {
      operator delete(v58);
    }

    if (v57)
    {
      sub_100008080(v57);
    }

    if (v56)
    {
      sub_100008080(v56);
    }
  }
}

void sub_100150948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1001509AC(uint64_t a1, char a2, double a3)
{
  *(a1 + 64) = a2;
  v3 = (a1 + 64);
  *(a1 + 72) = a3;
  v4 = (a1 + 72);
  if (qword_1025D4600 != -1)
  {
    sub_101A7F80C();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v6 = *v4;
    v7 = *v3;
    v8 = 134349312;
    v9 = v6;
    v10 = 1026;
    v11 = v7;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "#pbio CLProactiveInertialOdometrySubscription::onRhythmicStatus, fMachContinuousTimeOfLastActiveWakingRhythmicStatusChange_s, %{public}.3f s, fIsActiveWakingRhythmic, %{public}d", &v8, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A7FF40(v4, v3);
  }
}

void sub_100150AAC(uint64_t a1, _DWORD *a2, __int128 *a3, uint64_t a4)
{
  sub_100150AFC();

  sub_100150B08(a4, v7, a2, a3);
}

void sub_100150B08(uint64_t result, uint64_t a2, _DWORD *a3, __int128 *a4)
{
  v4 = a4[1];
  v13 = *a4;
  v14 = v4;
  v5 = a4[3];
  v15 = a4[2];
  v16 = v5;
  if (!*a3)
  {
    v7 = sub_100011660(result, a2);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v9 = v13;
    v10 = v14;
    v11 = v15;
    v12 = v16;
    v8[2] = sub_100150BB0;
    v8[3] = &unk_102485918;
    v8[4] = result;
    sub_10017A794(v7, v8);
  }
}

uint64_t sub_100150BB0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 96) > 0.0)
  {
    v2[28] = 1;
  }

  return (*(*v2 + 72))(v2, a1 + 40);
}

uint64_t sub_100150BF4(uint64_t result, double *a2)
{
  v2 = a2[7];
  if (v2 == -1.0)
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
    v3 = 0u;
    v2 = -1.0;
  }

  else
  {
    v3 = *a2;
    v4 = *(a2 + 1);
    v5 = *(a2 + 2);
    v6 = *(a2 + 6);
  }

  *(result + 200) = v3;
  *(result + 216) = v4;
  *(result + 232) = v5;
  *(result + 248) = v6;
  *(result + 256) = v2;
  return result;
}

uint64_t sub_100150C60(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t sub_100150C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = IOHIDEventGetType();
  if (result == 21)
  {
    IOHIDEventGetFloatValue();
    *&v6 = v6;
    v11.i32[0] = LODWORD(v6);
    IOHIDEventGetFloatValue();
    *&v7 = v7;
    v11.i32[1] = LODWORD(v7);
    IOHIDEventGetFloatValue();
    *&v8 = v8;
    v12 = LODWORD(v8);
    TimeStamp = IOHIDEventGetTimeStamp();
    v10 = sub_1000080EC(TimeStamp);
    return sub_100150D2C(a1, &v11, &v10);
  }

  return result;
}

uint64_t sub_100150D2C(uint64_t a1, float32x2_t *a2, double *a3)
{
  v6 = *a3;
  if (*a3 > *(a1 + 64) + 1.0)
  {
    v7 = (*(**(a1 + 80) + 24))(*(a1 + 80), @"AppleVoltageDictionary", v6);
    [objc_msgSend(v7 objectForKeyedSubscript:{@"COMPASS_TEMP", "floatValue"}];
    *(a1 + 72) = v8 / 100.0;
    *(a1 + 64) = *a3;

    v6 = *a3;
  }

  v9 = vsub_f32(*a2, *(a1 + 48));
  v36 = v6;
  v37 = *&v9;
  v9.i32[0] = *(a1 + 72);
  v38 = a2[1].f32[0] - *(a1 + 56);
  v39 = v9.i32[0];
  if (qword_1025D42D0 != -1)
  {
    sub_1002DDE14();
  }

  v10 = qword_1025D42D8;
  if (os_log_type_enabled(qword_1025D42D8, OS_LOG_TYPE_DEBUG))
  {
    v11 = a2->f32[0];
    v12 = a2->f32[1];
    v13 = a2[1].f32[0];
    v14 = *a3;
    *buf = 136316162;
    v41 = "Magnetometer";
    v42 = 2048;
    v43 = v11;
    v44 = 2048;
    v45 = v12;
    v46 = 2048;
    v47 = v13;
    v48 = 2048;
    v49 = v14;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Type,%s,x,%20.20f,y,%20.20f,z,%20.20f,timestamp,%20.20f", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D42D0 != -1)
    {
      sub_1019D3708();
    }

    v28 = a2->f32[0];
    v29 = a2->f32[1];
    v30 = a2[1].f32[0];
    v31 = *a3;
    *v53 = 136316162;
    *&v53[4] = "Magnetometer";
    *&v53[12] = 2048;
    *&v53[14] = v28;
    v54 = 2048;
    v55 = v29;
    *v56 = 2048;
    *&v56[2] = v30;
    *&v56[10] = 2048;
    v57 = v31;
    LODWORD(v34) = 52;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D42D8, 2, "Type,%s,x,%20.20f,y,%20.20f,z,%20.20f,timestamp,%20.20f", v53, v34, v35, v36, v37);
    v33 = v32;
    sub_100152C7C("Generic", 1, 0, 2, "void CLMagnetometer::onMagnetometerData(const CLMotionTypeMagneticField &, const CLMotionTypeTimestamp &)", "%s\n", v32);
    if (v33 != buf)
    {
      free(v33);
    }
  }

  if (*(a1 + 32) == 1)
  {
    *v53 = off_102490FF0;
    Current = CFAbsoluteTimeGetCurrent();
    v16 = *a3;
    *&v53[8] = Current;
    v17 = *a2;
    v55 = v16;
    *v56 = v17;
    *&v56[8] = a2[1].i32[0];
    v20 = sub_10015ADF4(v18, v19);
    sub_1010CF5BC(v20, v53);
    sub_10152D354(buf);
    sub_101555404(buf);
    v52 |= 1u;
    v50 = *&v53[8];
    v21 = v51;
    v22 = *a3;
    *(v51 + 36) |= 1u;
    *(v21 + 8) = v22;
    v23 = v51;
    LODWORD(v22) = a2->i32[0];
    *(v51 + 36) |= 8u;
    *(v23 + 24) = v22;
    v24 = v51;
    LODWORD(v22) = a2->i32[1];
    *(v51 + 36) |= 0x10u;
    *(v24 + 28) = v22;
    v25 = v51;
    LODWORD(v22) = a2[1].i32[0];
    *(v51 + 36) |= 0x20u;
    *(v25 + 32) = v22;
    v26 = v51;
    LODWORD(v22) = *(a1 + 72);
    *(v51 + 36) |= 4u;
    *(v26 + 20) = v22;
    if (qword_102637F48 != -1)
    {
      sub_1019D3A84();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, buf);
    }

    sub_101532FA8(buf);
  }

  return sub_100061FD8(a1, 0, &v36, 24);
}

void sub_100151138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_101532FA8(va);
  _Unwind_Resume(a1);
}

CFTypeRef sub_100151158(void *a1, const __CFString *a2)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660(Current, v5);
  if (Current != sub_10018D3EC())
  {
    sub_101998844(a1);
  }

  if (!(*(*a1 + 40))(a1))
  {
    return 0;
  }

  v6 = a1[3];

  return IOHIDServiceClientCopyProperty(v6, a2);
}

float *sub_1001511FC(float *result, uint64_t a2)
{
  v2 = sqrtf(((result[3] * result[3]) + (result[2] * result[2])) + (result[4] * result[4]));
  if (*(a2 + 100) < v2)
  {
    *(a2 + 100) = v2;
  }

  if (*(a2 + 96) > v2)
  {
    *(a2 + 96) = v2;
  }

  return result;
}

uint64_t sub_100151240(uint64_t a1)
{
  Current = CFRunLoopGetCurrent();
  sub_100011660(Current, v3);
  if (Current != sub_10018D3EC())
  {
    sub_101999780();
  }

  sub_100178584(*(a1 + 40));
  if (*(a1 + 24))
  {
    return 1;
  }

  sub_1009B43BC(*(a1 + 40), 0);
  if (*(a1 + 24))
  {
    return 1;
  }

  if (qword_1025D4200 != -1)
  {
    sub_101995F5C();
  }

  v5 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 16);
    v6 = *(a1 + 20);
    v8[0] = 67240448;
    v8[1] = v6;
    v9 = 1026;
    v10 = v7;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "[CLIoHidInterface] Service for usage pair {%{public}d, %{public}d} is not ready", v8, 0xEu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1019998E4();
    return 0;
  }

  return result;
}

void sub_10015136C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B9078;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1001513C0(uint64_t a1, void *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_1003115AC();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 67240192;
    v7[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "L5Context,SignalEnvironmentType,%{public}d", v7, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A650E8(a2);
  }

  v5 = *(a1 + 49);
  v6 = (a2 - 3) < 2;
  *(a1 + 49) = v6;
  if (v5 != v6)
  {
    sub_10017DC7C(a1);
  }
}

uint64_t sub_1001514CC(uint64_t result, int a2)
{
  if ((a2 - 1) > 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = dword_101CF4010[a2 - 1];
  }

  *(result + 204) = v2;
  return result;
}

uint64_t sub_1001514F4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

uint64_t sub_100151514(uint64_t a1, uint64_t a2, char *a3)
{
  sub_1001518D0(*(a1 + 8), a2, a3);
  sub_1001FB6D0(*(*(a1 + 8) + 136), a2);
  v8 = v5;
  if (sub_1001518C0())
  {
    if (v8 == 1)
    {
      v6 = *(a1 + 8);
      if ((*(v6 + 144) & 1) == 0 && (*(v6 + 145) & 1) == 0)
      {
        sub_1001C7624(v6, v6 + 96);
      }
    }
  }

  return 1;
}

uint64_t sub_1001515B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(**(a1 + 128) + 24))(*(a1 + 128), a4, a4 + 160);
  if ((result & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101BB4D50();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning Pedometer Assistance: failed to handle location notification", v7, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BB7AE0();
    }

    return sub_1001C7624(a1, a1 + 80);
  }

  return result;
}

void sub_100151688(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*a4 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101BB7274();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGNSSPedometerAssistanceController::HandleLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101BB7288();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGNSSPedometerAssistanceController::HandleLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001515B0(a4, v6, v7, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1001518D0(uint64_t a1, uint64_t a2, char *__src)
{
  v3 = *(a2 + 76);
  if (v3 == -1.0)
  {
    return 0;
  }

  v4 = v3 < 0.0 || ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
  if (v4 && (*&v3 - 1) > 0xFFFFFFFFFFFFELL)
  {
    return 0;
  }

  if ((*(a2 + 96) & 0xFFFFFFF7) != 1)
  {
    return 0;
  }

  v7 = *(a2 + 44);
  if (v7 == -1.0)
  {
    return 0;
  }

  result = 0;
  v10 = *(a2 + 52);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v10 > 0.0 && (*&v7 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && v7 >= 0.0 && v10 != -1.0)
  {
    v12 = *(__src + 4);
    if ((v12 < 0.0 || ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v12 - 1) > 0xFFFFFFFFFFFFELL)
    {
      return 0;
    }

    if (*(a1 + 1248) == 1)
    {
      v15 = *(a1 + 632);
      if (v12 <= v15)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101BB4D50();
        }

        v16 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v53 = v12;
          v54 = 2048;
          v55 = v15;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "#Warning Pedometer Assistance: encountered out-of-order GNSS notification time %.3lf vs. last seen notification time %.3lf", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BB5F48();
        }
      }
    }

    v17 = *(a2 + 112);
    v35[6] = *(a2 + 96);
    v35[7] = v17;
    v36[0] = *(a2 + 128);
    *(v36 + 12) = *(a2 + 140);
    v18 = *(a2 + 48);
    v35[2] = *(a2 + 32);
    v35[3] = v18;
    v19 = *(a2 + 80);
    v35[4] = *(a2 + 64);
    v35[5] = v19;
    v20 = *(a2 + 16);
    v35[0] = *a2;
    v35[1] = v20;
    memcpy(v37, __src, sizeof(v37));
    v38 = *(__src + 65);
    v21 = *(__src + 66);
    v39 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = *(__src + 616);
    v44 = *(__src + 600);
    v45[0] = v22;
    *(v45 + 9) = *(__src + 625);
    v23 = *(__src + 552);
    v40 = *(__src + 536);
    v41 = v23;
    v24 = *(__src + 584);
    v42 = *(__src + 568);
    v43 = v24;
    sub_10029278C(a1 + 440, v35);
    sub_100295220((a1 + 392), a1 + 440);
    if (*(a1 + 432) >= 0xDuLL)
    {
      sub_100295344((a1 + 392));
    }

    if (qword_1025D4650 != -1)
    {
      sub_101BB50D0();
    }

    v25 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(a2 + 76);
      v27 = *(a2 + 44);
      v28 = *(a2 + 52);
      *buf = 134218496;
      v53 = v26;
      v54 = 2048;
      v55 = v27;
      v56 = 2048;
      v57 = v28;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "Pedometer Assistance: received GPS time,%.3lf,speed,%.3lf,speedSigma,%.3lf", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BB51F8(buf);
      v29 = *(a2 + 76);
      v30 = *(a2 + 44);
      v31 = *(a2 + 52);
      v46 = 134218496;
      v47 = v29;
      v48 = 2048;
      v49 = v30;
      v50 = 2048;
      v51 = v31;
      LODWORD(v34) = 32;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "Pedometer Assistance: received GPS time,%.3lf,speed,%.3lf,speedSigma,%.3lf", COERCE_DOUBLE(&v46), v34, *v35);
      v33 = v32;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGNSSPedometerAssistanceController::UpdateGPSLocation(const CLDaemonLocation &, const CLDaemonLocationPrivate &)", "%s\n", v32);
      if (v33 != buf)
      {
        free(v33);
      }
    }

    if (v39)
    {
      sub_100008080(v39);
    }

    return 1;
  }

  return result;
}

void sub_100151CF0(_Unwind_Exception *a1)
{
  if (STACK[0x2C0])
  {
    sub_100008080(STACK[0x2C0]);
  }

  _Unwind_Resume(a1);
}

void sub_100151D14(uint64_t result, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v6 = *a3;
  if (*a3 <= 3)
  {
    if (v6 < 3)
    {
      goto LABEL_3;
    }

LABEL_10:
    if (qword_1025D45E0 != -1)
    {
      sub_1019131A0();
    }

    v8 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *a3;
      v10[0] = 67109120;
      v10[1] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#Warning received an unknown location notification %d", v10, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101914DB4(a3);
    }

    return;
  }

  switch(v6)
  {
    case 0x1Bu:

      sub_1006F64F0(result, a4);
      break;
    case 0xAu:
      sub_1001526E8(result + 1712, a4);
      sub_100181FF8((result + 1400), a4, *(a4 + 768) != 0);
      sub_100152194(result + 2056, a4);

      sub_1001529B8((result + 2664), a4);
      break;
    case 4u:
LABEL_3:
      if ((*(result + 2050) & 1) == 0)
      {

        sub_1006F5478(result);
      }

      return;
    default:
      goto LABEL_10;
  }
}

void sub_100151F24(uint64_t *a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 96);
  *a1 = *(a2 + 4);
  v4 = *(a2 + 184);
  *(a1 + 2) = v4;
  if (v4 <= 0.0)
  {
    a1[2] = *(a2 + 76);
  }

  *(a1 + 3) = fmax(*(a2 + 20), 0.0);
  *(a1 + 9) = *(a2 + 132);
  if (qword_1025D45E0 != -1)
  {
    sub_10191AC8C();
  }

  v5 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a2 + 96);
    v7 = *a1;
    v8 = a1[1];
    v9 = a1[2];
    v10 = a1[3];
    v11 = *(a1 + 9);
    v12 = *(a2 + 184);
    *buf = 67241729;
    v36 = v6;
    v37 = 2053;
    v38 = v7;
    v39 = 2053;
    v40 = v8;
    v41 = 2050;
    v42 = v9;
    v43 = 2050;
    v44 = v10;
    v45 = 1026;
    v46 = v11;
    v47 = 2050;
    v48 = v12;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLNmeaScreener,store,type,%{public}d,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,timestampGPS,%{public}.1lf,fHorizontalUncertainty,%{public}.1lf,refFrame,%{public}d,timestampGps,%{public}.1lf", buf, 0x40u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D45E0 != -1)
    {
      sub_10191ACA0();
    }

    v13 = *(a2 + 96);
    v14 = *a1;
    v15 = a1[1];
    v16 = a1[2];
    v17 = a1[3];
    v18 = *(a1 + 9);
    v19 = *(a2 + 184);
    v22[0] = 67241729;
    v22[1] = v13;
    v23 = 2053;
    v24 = v14;
    v25 = 2053;
    v26 = v15;
    v27 = 2050;
    v28 = v16;
    v29 = 2050;
    v30 = v17;
    v31 = 1026;
    v32 = v18;
    v33 = 2050;
    v34 = v19;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45E8, 2, "CLNmeaScreener,store,type,%{public}d,lat,%{sensitive}.8lf,lon,%{sensitive}.8lf,timestampGPS,%{public}.1lf,fHorizontalUncertainty,%{public}.1lf,refFrame,%{public}d,timestampGps,%{public}.1lf", v22, 64);
    v21 = v20;
    sub_100152C7C("Generic", 1, 0, 2, "void CLNmeaScreener::ExternalLocationData::fillData(const CLLocationProvider_Type::NotificationData &)", "%s\n", v20);
    if (v21 != buf)
    {
      free(v21);
    }
  }
}

void sub_100152194(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1) != 1)
  {
    return;
  }

  if (*(a2 + 76) < 0.0 || *(a2 + 504) < 0.0 || sub_10002807C(*(a2 + 4), *(a2 + 12)))
  {
    if (qword_1025D45E0 != -1)
    {
      sub_10191AC8C();
    }

    v4 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a2 + 96);
      *buf = 136643075;
      v43 = v5;
      v44 = 1026;
      LODWORD(v45) = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLNMEAScreener,store,%{sensitive}s,invalid location input,type,%{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191B44C(a1, a2, v7, v8, v9, v10, v11, v12);
    }

    return;
  }

  v13 = *(a2 + 96);
  if ((v13 & 0xFFFFFFF7) == 1 && (*(a2 + 516) & 1) == 0)
  {
    if (*(a2 + 680))
    {
      v30 = 0xBFF0000000000000;
      v31 = 0u;
      v32 = 0u;
      v33 = 0;
      v15 = sub_1000081AC();
      sub_1002A55A0(&v30, *(a2 + 680), v15);
      if (v31 <= 19 && DWORD1(v31) == v31)
      {
        *(a1 + 457) = 0;
        if (qword_1025D45E0 != -1)
        {
          sub_10191ACA0();
        }

        v16 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(a2 + 4);
          v18 = *(a2 + 12);
          *buf = 134349825;
          v43 = v30;
          v44 = 2053;
          v45 = v17;
          v46 = 2053;
          v47 = v18;
          v48 = 1026;
          v49 = -1;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "CLNmeaScreener,store,validityTimeMCT,%{public}.1lf,lat,%{sensitive}.3f,lon,%{sensitive}.3f,goodGNSSTracking,%{public}d", buf, 0x26u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_45;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D45E0 != -1)
        {
          sub_10191ACA0();
        }

        v19 = *(a2 + 4);
        v20 = *(a2 + 12);
        v34 = 134349825;
        v35 = v30;
        v36 = 2053;
        v37 = v19;
        v38 = 2053;
        v39 = v20;
        v40 = 1026;
        v41 = -1;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45E8, 2, "CLNmeaScreener,store,validityTimeMCT,%{public}.1lf,lat,%{sensitive}.3f,lon,%{sensitive}.3f,goodGNSSTracking,%{public}d", &v34, 38);
      }

      else
      {
        *(a1 + 464) = v30;
        *(a1 + 457) = sub_1003029A0(&v30);
        if (qword_1025D45E0 != -1)
        {
          sub_10191ACA0();
        }

        v22 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
        {
          v23 = *(a2 + 4);
          v24 = *(a2 + 12);
          v25 = *(a1 + 457);
          *buf = 134349825;
          v43 = v30;
          v44 = 2053;
          v45 = v23;
          v46 = 2053;
          v47 = v24;
          v48 = 1026;
          v49 = v25;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "CLNmeaScreener,store,validityTimeMCT,%{public}.1lf,lat,%{sensitive}.3f,lon,%{sensitive}.3f,goodGNSSTracking,%{public}d", buf, 0x26u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_45;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D45E0 != -1)
        {
          sub_10191ACA0();
        }

        v26 = *(a2 + 4);
        v27 = *(a2 + 12);
        v28 = *(a1 + 457);
        v34 = 134349825;
        v35 = v30;
        v36 = 2053;
        v37 = v26;
        v38 = 2053;
        v39 = v27;
        v40 = 1026;
        v41 = v28;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45E8, 2, "CLNmeaScreener,store,validityTimeMCT,%{public}.1lf,lat,%{sensitive}.3f,lon,%{sensitive}.3f,goodGNSSTracking,%{public}d", &v34, 38);
      }

      v29 = v21;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNmeaScreener::updateExternalLocation(const CLLocationProvider_Type::NotificationData &)", "%s\n", v21);
      if (v29 != buf)
      {
        free(v29);
      }
    }

LABEL_45:
    sub_100151F24((a1 + 72), a2);
    sub_100151F24((a1 + 136), a2);
    return;
  }

  if (v13 <= 6)
  {
    if (v13 != 4)
    {
      if (v13 != 6)
      {
        return;
      }

      v14 = (a1 + 264);
      goto LABEL_37;
    }
  }

  else
  {
    if (v13 == 7)
    {
      v14 = (a1 + 328);
      goto LABEL_37;
    }

    if (v13 != 13 && v13 != 11)
    {
      return;
    }
  }

  v14 = (a1 + 200);
LABEL_37:

  sub_100151F24(v14, a2);
}

__n128 sub_1001526E8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 132) != 2)
  {
    v3 = (a2 + 96);
    if (*(a2 + 96) != 3 && !sub_10002807C(*(a2 + 4), *(a2 + 12)))
    {
      v13 = *(a2 + 96);
      v14 = *(a2 + 112);
      *v15 = *(a2 + 128);
      *&v15[12] = *(a2 + 140);
      v9 = *(a2 + 32);
      v10 = *(a2 + 48);
      v11 = *(a2 + 64);
      v12 = *(a2 + 80);
      v7 = *a2;
      v8 = *(a2 + 16);
      v6 = sub_100152A54((a1 + 232), v3);
      *(v6 + 17) = v14;
      *(v6 + 19) = *v15;
      *(v6 + 21) = *&v15[16];
      *(v6 + 23) = 0uLL;
      *(v6 + 9) = v10;
      *(v6 + 11) = v11;
      *(v6 + 13) = v12;
      *(v6 + 15) = v13;
      result = v7;
      *(v6 + 3) = v7;
      *(v6 + 5) = v8;
      *(v6 + 7) = v9;
      v6[25] = 0xBFF0000000000000;
    }
  }

  return result;
}

void sub_1001527EC(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100151D14(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

char *sub_1001529B8(char *result, uint64_t a2)
{
  if (*(a2 + 96) == 1)
  {
    v17 = v2;
    v18 = v3;
    v4 = result;
    memset(v11, 0, sizeof(v11));
    __asm { FMOV            V0.2D, #-1.0 }

    v12 = _Q0;
    v13 = _Q0;
    v14 = _Q0;
    v15 = _Q0;
    v16 = 0;
    sub_100302A54(v11, a2);
    result = sub_100302D58((v4 + 3080), *(v4 + 3080), v11);
    v10 = *(v4 + 3088);
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - *(v4 + 3080)) >> 5) >= 6)
    {
      *(v4 + 3088) = v10 - 96;
    }
  }

  return result;
}

uint64_t *sub_100152A54(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    sub_100DC7250();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

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
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_100152C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100152C7C(const char *a1, uint64_t a2, int a3, uint64_t a4, const char *a5, char *a6, ...)
{
  va_start(va, a6);
  v12 = sub_10001CABC(a1, a2);
  if (a3)
  {
    result = sub_100A5A788(v12, a1, a2, a4, a5, a6, va);
  }

  else
  {
    result = sub_100A5A364(v12, a1, a2, a4, a5, a6, va);
  }

  if (off_102656760)
  {
    return off_102656760(qword_102656758, a1, a2, a4, a5, a6, va);
  }

  return result;
}

BOOL sub_100152D34()
{
  v1 = qword_1025D4628;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

BOOL sub_100152D70()
{
  v2 = *(v0 + 584);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

double sub_100152D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8)
{

  return _os_log_send_and_compose_impl(a1, a2, a3, a4, a5, v8, 1, a8);
}

BOOL sub_100152DA4()
{
  v2 = *(v0 + 568);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

void sub_100152DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{

  bzero(&a11, 0x65CuLL);
}

uint64_t sub_100152DEC@<X0>(uint64_t result@<X0>, __int16 a2@<W8>)
{
  *(v3 - 72) = a2;
  *(v2 + 10) = result;
  return result;
}

BOOL sub_100152E30()
{
  v1 = off_1025D4648;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

int *sub_100152E50()
{

  return __error();
}

void sub_100152E8C(int a1@<W8>, float a2@<S0>)
{
  *(v2 - 80) = a2;
  *(v2 - 76) = a1;
  *(v2 - 72) = 1024;
}

uint64_t sub_100152EB0(uint64_t a1, int *a2, char a3)
{
  v6 = a1 + 8;
  (*(*(a1 + 8) + 16))(a1 + 8);
  v7 = *a2;
  if (*a2 > 3)
  {
    if (v7 == 4)
    {
      *(a1 + 358) = a3;
    }

    else if (v7 == 5)
    {
      *(a1 + 357) = a3;
    }
  }

  else if (v7)
  {
    if (v7 == 1)
    {
      *(a1 + 356) = a3;
    }
  }

  else
  {
    *(a1 + 355) = a3;
  }

  return (*(*v6 + 24))(v6);
}

uint64_t sub_100152F7C(uint64_t a1, int *a2, char a3)
{
  result = *(a1 + 3912);
  if (result)
  {
    return sub_100152EB0(result, a2, a3);
  }

  return result;
}

void sub_100152F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 3872);
  if (v6)
  {
    sub_100182360(v6, 0xFFFFFFFFLL, a2, a3);
  }

  v7 = *(a1 + 3880);
  if (v7)
  {

    sub_100182360(v7, 0xFFFFFFFFLL, a2, a3);
  }
}

uint64_t sub_100153008(uint64_t a1, double a2, double a3, double a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_1000CF05C();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

void sub_100153068(uint64_t a1, __n128 a2, double a3, double a4)
{
  v5 = a2.n128_u64[0];
  if (a2.n128_f64[0] <= 0.0 || a3 <= 0.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1002981B4();
    }

    v10 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 134349312;
      *v34 = v5;
      *&v34[8] = 2050;
      v35[0] = a3;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "#gpsd,Invalid,time,%{public}.3lf,timeUncertainty,%{public}.9lf", buf, 0x16u);
    }

    v11 = sub_10000A100(121, 0);
    if (v11)
    {
      sub_1017758B0(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  else
  {
    v27 = 0;
    sub_100153734(&v27 + 1, &v27, a2.n128_f64[0]);
    v8 = HIDWORD(v27);
    if (HIDWORD(v27) >= dword_102655D48)
    {
      v19 = v27;
      if (qword_1025D4650 != -1)
      {
        sub_100154094();
      }

      v20 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109632;
        *v34 = HIDWORD(v27);
        *&v34[4] = 1024;
        *&v34[6] = v27;
        LOWORD(v35[0]) = 1024;
        *(v35 + 2) = (a3 * 1000.0);
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#gpsd,feeding,timeAssistance,week,%u,towMs,%u,uncertaintyMs,%u", buf, 0x14u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_100154094();
        }

        v28[0] = 67109632;
        v28[1] = HIDWORD(v27);
        v29 = 1024;
        v30 = v27;
        v31 = 1024;
        v32 = (a3 * 1000.0);
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#gpsd,feeding,timeAssistance,week,%u,towMs,%u,uncertaintyMs,%u", v28, 20, v26);
        v25 = v24;
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLGnssDaemonDevice::injectTimeAssistance(CFAbsoluteTime, CFTimeInterval, double)", "%s\n", v24);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      sub_1001324C4(buf);
      if (!sub_100132484(9u))
      {
        __assert_rtn("set_type", "GpsdProtocol.pb.h", 5801, "::proto::gpsd::Request_Type_IsValid(value)");
      }

      *(v35 + 6) = 9;
      v37 |= 0x14u;
      v21 = v36;
      if (!v36)
      {
        operator new();
      }

      v22 = 604800000000000 * v8 + 1000000 * v19;
      v23 = *(v36 + 36);
      *(v36 + 8) = v22;
      *(v21 + 16) = (a3 * 1000000000.0);
      *(v21 + 36) = v23 | 7;
      *(v21 + 24) = (a4 * 1000000000.0);
      sub_10013256C(a1, buf);
      sub_1001538F4(a1 + 2424, v22, (a4 * 1000000000.0));
      sub_100133DCC(buf);
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_100154094();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67240192;
        *v34 = HIDWORD(v27);
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#gpsd,#Warning,invalid,timeTravel,gpsWeek,%{public}u", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1017757BC(&v27 + 1);
      }
    }
  }
}

void sub_1001534D4(id a1)
{
  v6 = 0;
  v2 = sub_1000206B4(a1, v1);
  if (v2)
  {
    v4 = sub_1000206B4(v2, v3);
    if (sub_10005BBE4(v4, "gpsUtcLeapSeconds", &v6))
    {
      if (v6 >= 1)
      {
        v5 = v6 - 18;
        if (v6 - 18 < 0)
        {
          v5 = 18 - v6;
        }

        if (v5 <= 0x13)
        {
          dword_1025D6560 = v6;
        }
      }
    }
  }
}

uint64_t sub_100153544(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_10;
  }

  if (*(a1 + 36))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
    v3 = *(a1 + 36);
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = 0;
  if ((*(a1 + 36) & 2) != 0)
  {
LABEL_7:
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
    v3 = *(a1 + 36);
  }

LABEL_8:
  if ((v3 & 4) != 0)
  {
    v4 = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 24), a2) + 1;
  }

LABEL_10:
  *(a1 + 32) = v4;
  return v4;
}

void sub_1001535C8(void *a1, double a2, double a3, double a4)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v8 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v10[0] = 68289794;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "Injecting time assistance to GNSS platform";
    v15 = 2050;
    v16 = a2;
    v17 = 2050;
    v18 = a3;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, time:%{public}f, timeunc:%{public}f}", v10, 0x30u);
  }

  (*(**a1 + 128))(a2, a3, a4);
  v9 = a1[145];
  if (v9)
  {
    sub_100153904(v9, a2, a3, a4);
  }
}

double sub_100153734(int *a1, _DWORD *a2, double a3)
{
  if (qword_102656768 != -1)
  {
    sub_1001537D4();
  }

  v6 = a3 + 662342400.0 + dword_1025D6560;
  v7 = (v6 / 604800.0);
  *a1 = v7;
  result = (v6 - (604800 * v7)) * 1000.0;
  *a2 = result;
  return result;
}

double sub_1001537E8(uint64_t a1)
{
  *a1 = off_1024B8BC8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t sub_100153814(uint64_t result, unint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
    if ((*(v5 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, v7, a2, a4);
}

void sub_1001538A0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B8BC8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_1001538F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = a3;
  *(result + 8) = a2;
  *(result + 16) = 1;
  return result;
}

void sub_100153904(uint64_t a1, double a2, double a3, double a4)
{
  v33 = -1.0;
  v34 = -1.0;
  v8 = sub_1000081AC();
  v9 = off_102635868(&v34, &v33);
  v10 = v9;
  if (a3 <= 0.0 || (a2 > 0.0 ? (v11 = v9 == 0) : (v11 = 1), v11 || v34 <= 0.0 || v33 <= 0.0))
  {
    if (qword_1025D4650 != -1)
    {
      sub_1016ADE08();
    }

    v20 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      LODWORD(v48) = v10 != 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "#imag,gti unavailable,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1016AE57C((v10 != 0));
    }
  }

  else
  {
    v12 = sub_1000081AC();
    v13 = v12 - v8;
    v14 = v8 + (v12 - v8) * 0.5;
    v33 = v33 + v13;
    v15 = (v34 - a2 - v14 + a4) * (v34 - a2 - v14 + a4);
    v16 = a3 * a3 + v33 * v33;
    if (qword_1025D4650 != -1)
    {
      sub_1016ADE08();
    }

    v17 = qword_1025D4658;
    v18 = v15 / v16;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134350336;
      v48 = v18;
      v49 = 2050;
      v50 = v34;
      v51 = 2050;
      v52 = a2;
      v53 = 2050;
      v54 = v33;
      v55 = 2050;
      v56 = a3;
      v57 = 2050;
      v58 = v13;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "#imag,gti consistency,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,queryDelay,%{public}.4f", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_1016ADE08();
      }

      v35 = 134350336;
      v36 = v18;
      v37 = 2050;
      v38 = v34;
      v39 = 2050;
      v40 = a2;
      v41 = 2050;
      v42 = v33;
      v43 = 2050;
      v44 = a3;
      v45 = 2050;
      v46 = v13;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#imag,gti consistency,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,queryDelay,%{public}.4f", &v35, 62);
      v27 = v26;
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssSimulationAndSpoofingMonitor::injectTimeAssistance(CFAbsoluteTime, CFAbsoluteTime, double)", "%s\n", v26);
      if (v27 != buf)
      {
        free(v27);
      }
    }

    if (v18 <= 5.0)
    {
      v21 = v18 * 10.0;
      v22 = a3 * 10.0;
      v23 = v33 * 10.0;
      if (a3 * 10.0 + v21 + v33 * 10.0 >= 120.0)
      {
        v24 = a3 * 10.0 + v21 + v33 * 10.0;
      }

      else
      {
        v24 = 120.0;
      }

      if (qword_1025D4650 != -1)
      {
        sub_1016ADE08();
      }

      v25 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349824;
        v48 = v21;
        v49 = 2050;
        v50 = v22;
        v51 = 2050;
        v52 = v23;
        v53 = 2050;
        v54 = v24;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "#imag,gti inflation,%{public}.3f,%{public}.3f,%{public}.3f,result,%{public}.1f", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_1016ADE08();
        }

        v35 = 134349824;
        v36 = v21;
        v37 = 2050;
        v38 = v22;
        v39 = 2050;
        v40 = v23;
        v41 = 2050;
        v42 = v24;
        LODWORD(v32) = 42;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#imag,gti inflation,%{public}.3f,%{public}.3f,%{public}.3f,result,%{public}.1f", &v35, v32);
        v31 = v30;
        sub_100152C7C("Generic", 1, 0, 2, "void CLGnssSimulationAndSpoofingMonitor::injectTimeAssistance(CFAbsoluteTime, CFAbsoluteTime, double)", "%s\n", v30);
        if (v31 != buf)
        {
          free(v31);
        }
      }

      *(a1 + 40) = v34;
      *(a1 + 48) = v24;
      *(a1 + 56) = v14;
      *(a1 + 64) = *(a1 + 74);
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1016ADE08();
      }

      v19 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
      {
        *buf = 134350336;
        v48 = v18;
        v49 = 2050;
        v50 = v34;
        v51 = 2050;
        v52 = a2;
        v53 = 2050;
        v54 = v33;
        v55 = 2050;
        v56 = a3;
        v57 = 2050;
        v58 = v13;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "#imag,gti inconsistent,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,queryDelay,%{public}.4f", buf, 0x3Eu);
      }

      if (sub_10000A100(121, 0))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_1016ADE08();
        }

        v35 = 134350336;
        v36 = v18;
        v37 = 2050;
        v38 = v34;
        v39 = 2050;
        v40 = a2;
        v41 = 2050;
        v42 = v33;
        v43 = 2050;
        v44 = a3;
        v45 = 2050;
        v46 = v13;
        LODWORD(v32) = 62;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 17, "#imag,gti inconsistent,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,queryDelay,%{public}.4f", &v35, v32);
        v29 = v28;
        sub_100152C7C("Generic", 1, 0, 0, "void CLGnssSimulationAndSpoofingMonitor::injectTimeAssistance(CFAbsoluteTime, CFAbsoluteTime, double)", "%s\n", v28);
        if (v29 != buf)
        {
          free(v29);
        }
      }

      sub_1016B1A70([objc_msgSend(*a1 "silo")], "imag", "gti inconsistent", 0);
    }
  }
}

uint64_t sub_100153F88(uint64_t a1, uint64_t a2)
{
  if (qword_102666B08 != -1)
  {
    sub_100153FFC();
  }

  v4 = dlsym(qword_102666B10, "TMGetTrustedInterval");
  off_102635868 = v4;

  return (v4)(a1, a2);
}

void sub_1001540BC(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8284);
  v5 = (a1 + 2396);
  if (*(a1 + 1577) != 1)
  {
    v16 = *(a2 + 96);
    if (*(a1 + 1578) == 1)
    {
      v17 = (v16 == 0) & *(a2 + 516);
      if (v16 > 0xB || ((1 << v16) & 0x850) == 0)
      {
        if (*(a1 + 11768) == 1)
        {
          if (!((v16 == 10) | (v16 == 0) & *(a2 + 516)))
          {
            goto LABEL_70;
          }
        }

        else if (((v16 == 0) & *(a2 + 516)) == 0)
        {
          goto LABEL_70;
        }
      }

      if (sub_100154FDC(a1, a2))
      {
        v18 = *(a2 + 96);
        if (v18 == 4 || v18 == 11 || (v18 == 10) | v17 & 1)
        {
          if (*(v4 + 3484) == 1)
          {
            if (qword_1025D4650 != -1)
            {
              sub_100244280();
            }

            v19 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              v20 = *(a2 + 96);
              v21 = *(a2 + 4);
              v22 = *(a2 + 12);
              v23 = *(a2 + 28);
              v24 = *(a2 + 20);
              v25 = *(a2 + 36);
              v26 = *(a2 + 516);
              buf = 68290819;
              v171 = 2082;
              v172 = "";
              v173 = 1026;
              *v174 = v20;
              *&v174[4] = 2053;
              *&v174[6] = v21;
              v175 = 2053;
              v176 = v22;
              v177 = 2050;
              v178 = v23;
              v179 = 2050;
              v180 = v24;
              v181 = 2050;
              v182 = v25;
              v183 = 1026;
              v184 = v26;
              v27 = v19;
              v28 = OS_LOG_TYPE_DEFAULT;
LABEL_29:
              _os_log_impl(dword_100000000, v27, v28, "{msg%{public}.0s:#GnssAssistancePosition, CPI: qualified location assistance to GPS, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f, matcherPropagated:%{public}d}", &buf, 0x50u);
            }
          }

          else
          {
            if (qword_1025D4650 != -1)
            {
              sub_100244280();
            }

            v29 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
            {
              v30 = *(a2 + 96);
              v31 = *(a2 + 4);
              v32 = *(a2 + 12);
              v33 = *(a2 + 28);
              v34 = *(a2 + 20);
              v35 = *(a2 + 36);
              v36 = *(a2 + 516);
              buf = 68290819;
              v171 = 2082;
              v172 = "";
              v173 = 1026;
              *v174 = v30;
              *&v174[4] = 2053;
              *&v174[6] = v31;
              v175 = 2053;
              v176 = v32;
              v177 = 2050;
              v178 = v33;
              v179 = 2050;
              v180 = v34;
              v181 = 2050;
              v182 = v35;
              v183 = 1026;
              v184 = v36;
              v27 = v29;
              v28 = OS_LOG_TYPE_DEBUG;
              goto LABEL_29;
            }
          }
        }

        *(v4 + 820) = 1;
        if (*(v4 + 3484) == 1)
        {
          if ((*(v4 + 3485) & 1) == 0)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v115 = qword_1025D4658;
            if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              v116 = *(v4 + 3484);
              v117 = *(v4 + 3485);
              buf = 68289538;
              v171 = 2082;
              v172 = "";
              v173 = 1026;
              *v174 = v116;
              *&v174[4] = 1026;
              *&v174[6] = v117;
              v97 = "{msg%{public}.0s:#GnssAssistancePosition, Rejecting CPI, fInEmergency:%{public}d, fHeloEnabled:%{public}d}";
              v98 = v115;
              v99 = OS_LOG_TYPE_DEFAULT;
              v107 = 30;
              goto LABEL_68;
            }

            return;
          }

          if ((v17 & 1) == 0)
          {
            if (qword_1025D4650 != -1)
            {
              sub_1001A7560();
            }

            v37 = qword_1025D4658;
            if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_98;
            }

            v38 = *(a1 + 9088);
            buf = 68289282;
            v171 = 2082;
            v172 = "";
            v173 = 1026;
            *v174 = v38;
            v39 = v37;
            v40 = OS_LOG_TYPE_DEFAULT;
LABEL_97:
            _os_log_impl(dword_100000000, v39, v40, "{msg%{public}.0s:#GnssAssistancePosition, valid tightly coupled position, reliability:%{public}d}", &buf, 0x18u);
LABEL_98:
            v120 = 0;
            *(a1 + 9108) = 1;
            v121 = *(a1 + 8376);
            if (v121 <= 0xB && ((1 << v121) & 0xC10) != 0)
            {
              v120 = *(a1 + 8364) > 0x44u;
            }

            *(v4 + 3524) = v120;
            sub_1001BBE34(a1, (a1 + 8280));
            goto LABEL_102;
          }
        }

        else if (!v17)
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v118 = qword_1025D4658;
          if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_98;
          }

          v119 = *(a1 + 9088);
          buf = 68289282;
          v171 = 2082;
          v172 = "";
          v173 = 1026;
          *v174 = v119;
          v39 = v118;
          v40 = OS_LOG_TYPE_DEBUG;
          goto LABEL_97;
        }

        *(a1 + 9108) = 2;
        sub_100E1077C(a1, a1 + 8280);
LABEL_102:
        v122 = *(a2 + 16);
        *(a1 + 4844) = *a2;
        *(a1 + 4860) = v122;
        v123 = *(a2 + 32);
        v124 = *(a2 + 48);
        v125 = *(a2 + 80);
        *(a1 + 4908) = *(a2 + 64);
        *(a1 + 4924) = v125;
        *(a1 + 4876) = v123;
        *(a1 + 4892) = v124;
        v126 = *(a2 + 96);
        v127 = *(a2 + 112);
        v128 = *(a2 + 128);
        *(a1 + 4984) = *(a2 + 140);
        *(a1 + 4956) = v127;
        *(a1 + 4972) = v128;
        *(a1 + 4940) = v126;
        memcpy((a1 + 5000), (a2 + 160), 0x201uLL);
        v129 = *(a2 + 680);
        v130 = *(a2 + 688);
        if (v130)
        {
          atomic_fetch_add_explicit((v130 + 8), 1uLL, memory_order_relaxed);
        }

        *(a1 + 5520) = v129;
        v131 = *(a1 + 5528);
        *(a1 + 5528) = v130;
        if (v131)
        {
          sub_100008080(v131);
        }

        v132 = *(a2 + 696);
        v133 = *(a2 + 712);
        *(a1 + 5568) = *(a2 + 728);
        *(a1 + 5552) = v133;
        *(a1 + 5536) = v132;
        v134 = *(a2 + 744);
        v135 = *(a2 + 760);
        v136 = *(a2 + 776);
        *(a1 + 5625) = *(a2 + 785);
        *(a1 + 5616) = v136;
        *(a1 + 5600) = v135;
        *(a1 + 5584) = v134;
        if (!sub_10018E7E0(a2))
        {
          return;
        }

        v137 = a1 + 2392;
        v138 = *(a2 + 16);
        *(a1 + 2392) = *a2;
        *(a1 + 2408) = v138;
        v139 = *(a2 + 32);
        v140 = *(a2 + 48);
        v141 = *(a2 + 80);
        *(a1 + 2456) = *(a2 + 64);
        *(a1 + 2472) = v141;
        *(a1 + 2424) = v139;
        *(a1 + 2440) = v140;
        v142 = *(a2 + 96);
        v143 = *(a2 + 112);
        v144 = *(a2 + 128);
        *(a1 + 2532) = *(a2 + 140);
        *(a1 + 2504) = v143;
        *(a1 + 2520) = v144;
        *(a1 + 2488) = v142;
        memcpy((a1 + 2552), (a2 + 160), 0x201uLL);
        v145 = *(a2 + 680);
        v146 = *(a2 + 688);
        if (v146)
        {
          atomic_fetch_add_explicit((v146 + 8), 1uLL, memory_order_relaxed);
        }

        *(a1 + 3072) = v145;
        v147 = *(a1 + 3080);
        *(a1 + 3080) = v146;
        if (v147)
        {
          sub_100008080(v147);
        }

        v148 = *(a2 + 696);
        v149 = *(a2 + 712);
        *(a1 + 3120) = *(a2 + 728);
        *(a1 + 3104) = v149;
        *(a1 + 3088) = v148;
        v150 = *(a2 + 744);
        v151 = *(a2 + 760);
        v152 = *(a2 + 776);
        *(a1 + 3177) = *(a2 + 785);
        *(a1 + 3168) = v152;
        *(a1 + 3152) = v151;
        *(a1 + 3136) = v150;
        v153 = vdupq_n_s64(0x408F400000000000uLL);
        *v5 = vdivq_f64(vrndaq_f64(vmulq_f64(*v5, v153)), v153);
        if (*(v4 + 3484) == 1)
        {
          if (qword_1025D4650 != -1)
          {
            sub_1001A7560();
          }

          v108 = qword_1025D4658;
          if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          sub_100072AFC(v137, __p);
          if (v157 >= 0)
          {
            v154 = __p;
          }

          else
          {
            v154 = __p[0];
          }

          buf = 68289283;
          v171 = 2082;
          v172 = "";
          v173 = 2085;
          *v174 = v154;
          v110 = "{msg%{public}.0s:#GnssAssistancePosition, Cached Tightly Coupled Position, location,:%{sensitive, location:escape_only}s}";
LABEL_78:
          v111 = v108;
          v112 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_87;
        }

        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v113 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        sub_100072AFC(v137, __p);
        if (v157 >= 0)
        {
          v155 = __p;
        }

        else
        {
          v155 = __p[0];
        }

        buf = 68289283;
        v171 = 2082;
        v172 = "";
        v173 = 2085;
        *v174 = v155;
        v110 = "{msg%{public}.0s:#GnssAssistancePosition, Cached Tightly Coupled Position, location,:%{sensitive, location:escape_only}s}";
        goto LABEL_86;
      }
    }

LABEL_70:
    if (*(v4 + 3484) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v108 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      sub_100072AFC(a2, __p);
      if (v157 >= 0)
      {
        v109 = __p;
      }

      else
      {
        v109 = __p[0];
      }

      buf = 68289283;
      v171 = 2082;
      v172 = "";
      v173 = 2085;
      *v174 = v109;
      v110 = "{msg%{public}.0s:#GnssAssistancePosition, drop,not valid tightly coupled pos, location,:%{sensitive, location:escape_only}s}";
      goto LABEL_78;
    }

    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v113 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    sub_100072AFC(a2, __p);
    if (v157 >= 0)
    {
      v114 = __p;
    }

    else
    {
      v114 = __p[0];
    }

    buf = 68289283;
    v171 = 2082;
    v172 = "";
    v173 = 2085;
    *v174 = v114;
    v110 = "{msg%{public}.0s:#GnssAssistancePosition, drop,not valid tightly coupled pos, location,:%{sensitive, location:escape_only}s}";
LABEL_86:
    v111 = v113;
    v112 = OS_LOG_TYPE_DEBUG;
LABEL_87:
    _os_log_impl(dword_100000000, v111, v112, v110, &buf, 0x1Cu);
    if (v157 < 0)
    {
      operator delete(__p[0]);
    }

    return;
  }

  if (*(a1 + 1578) != 1 || *(a1 + 8300) <= 0.0 || *(a1 + 9088) < 1)
  {
    goto LABEL_49;
  }

  *(a1 + 8356) = CFAbsoluteTimeGetCurrent();
  *(a1 + 9096) = 0;
  if (*(v4 + 3484) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v6 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_44;
    }

    v7 = *(a1 + 8376);
    v8 = *v4;
    v9 = v4[1];
    v11 = v4[2];
    v10 = v4[3];
    v12 = v4[4];
    v13 = *(a1 + 9088);
    buf = 68290819;
    v171 = 2082;
    v172 = "";
    v173 = 1026;
    *v174 = v7;
    *&v174[4] = 2053;
    *&v174[6] = v8;
    v175 = 2053;
    v176 = v9;
    v177 = 2050;
    v178 = v10;
    v179 = 2050;
    v180 = v11;
    v181 = 2050;
    v182 = v12;
    v183 = 1026;
    v184 = v13;
    v14 = v6;
    v15 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v41 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_44;
    }

    v42 = *(a1 + 8376);
    v43 = *v4;
    v44 = v4[1];
    v46 = v4[2];
    v45 = v4[3];
    v47 = v4[4];
    v48 = *(a1 + 9088);
    buf = 68290819;
    v171 = 2082;
    v172 = "";
    v173 = 1026;
    *v174 = v42;
    *&v174[4] = 2053;
    *&v174[6] = v43;
    v175 = 2053;
    v176 = v44;
    v177 = 2050;
    v178 = v45;
    v179 = 2050;
    v180 = v46;
    v181 = 2050;
    v182 = v47;
    v183 = 1026;
    v184 = v48;
    v14 = v41;
    v15 = OS_LOG_TYPE_DEBUG;
  }

  _os_log_impl(dword_100000000, v14, v15, "{msg%{public}.0s:#GnssAssistancePosition, forcing tightly-coupled location assistance, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f, reliability:%{public}d}", &buf, 0x50u);
LABEL_44:
  *(v4 + 820) = 1;
  *(a1 + 9108) = 1;
  v49 = *(a1 + 8376);
  v50 = *(a1 + 8408);
  v158[7] = *(a1 + 8392);
  v159[0] = v50;
  *(v159 + 12) = *(a1 + 8420);
  v51 = *(a1 + 8328);
  v158[2] = *(a1 + 8312);
  v158[3] = v51;
  v52 = *(a1 + 8360);
  v158[4] = *(a1 + 8344);
  v158[5] = v52;
  v158[6] = v49;
  v53 = *(a1 + 8296);
  v158[0] = *(a1 + 8280);
  v158[1] = v53;
  memcpy(v160, (a1 + 8440), sizeof(v160));
  v161 = *(a1 + 8960);
  v54 = *(a1 + 8968);
  v162 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v55 = *(a1 + 9024);
  v56 = *(a1 + 9056);
  v167 = *(a1 + 9040);
  v168[0] = v56;
  v57 = *(a1 + 8992);
  v163 = *(a1 + 8976);
  v164 = v57;
  v165 = *(a1 + 9008);
  v166 = v55;
  *(v168 + 9) = *(a1 + 9065);
  v168[2] = *(a1 + 9088);
  v169 = *(a1 + 9104);
  v58 = *(a1 + 32);
  if (!v58)
  {
    sub_1000CF05C();
  }

  (*(*v58 + 48))(v58, v158);
  if (v162)
  {
    sub_100008080(v162);
  }

LABEL_49:
  v59 = *(a2 + 16);
  *(a1 + 4844) = *a2;
  *(a1 + 4860) = v59;
  v60 = *(a2 + 32);
  v61 = *(a2 + 48);
  v62 = *(a2 + 80);
  *(a1 + 4908) = *(a2 + 64);
  *(a1 + 4924) = v62;
  *(a1 + 4876) = v60;
  *(a1 + 4892) = v61;
  v63 = *(a2 + 96);
  v64 = *(a2 + 112);
  v65 = *(a2 + 128);
  *(a1 + 4984) = *(a2 + 140);
  *(a1 + 4956) = v64;
  *(a1 + 4972) = v65;
  *(a1 + 4940) = v63;
  memcpy((a1 + 5000), (a2 + 160), 0x201uLL);
  v66 = *(a2 + 680);
  v67 = *(a2 + 688);
  if (v67)
  {
    atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 5520) = v66;
  v68 = *(a1 + 5528);
  *(a1 + 5528) = v67;
  if (v68)
  {
    sub_100008080(v68);
  }

  v69 = *(a2 + 696);
  v70 = *(a2 + 712);
  *(a1 + 5568) = *(a2 + 728);
  *(a1 + 5552) = v70;
  *(a1 + 5536) = v69;
  v71 = *(a2 + 744);
  v72 = *(a2 + 760);
  v73 = *(a2 + 776);
  *(a1 + 5625) = *(a2 + 785);
  *(a1 + 5616) = v73;
  *(a1 + 5600) = v72;
  *(a1 + 5584) = v71;
  if (sub_10018E7E0(a2))
  {
    v74 = *(a2 + 16);
    *(a1 + 2392) = *a2;
    *(a1 + 2408) = v74;
    v75 = *(a2 + 32);
    v76 = *(a2 + 48);
    v77 = *(a2 + 80);
    *(a1 + 2456) = *(a2 + 64);
    *(a1 + 2472) = v77;
    *(a1 + 2424) = v75;
    *(a1 + 2440) = v76;
    v78 = *(a2 + 96);
    v79 = *(a2 + 112);
    v80 = *(a2 + 128);
    *(a1 + 2532) = *(a2 + 140);
    *(a1 + 2504) = v79;
    *(a1 + 2520) = v80;
    *(a1 + 2488) = v78;
    memcpy((a1 + 2552), (a2 + 160), 0x201uLL);
    v81 = *(a2 + 680);
    v82 = *(a2 + 688);
    if (v82)
    {
      atomic_fetch_add_explicit((v82 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 3072) = v81;
    v83 = *(a1 + 3080);
    *(a1 + 3080) = v82;
    if (v83)
    {
      sub_100008080(v83);
    }

    v84 = *(a2 + 696);
    v85 = *(a2 + 712);
    *(a1 + 3120) = *(a2 + 728);
    *(a1 + 3104) = v85;
    *(a1 + 3088) = v84;
    v86 = *(a2 + 744);
    v87 = *(a2 + 760);
    v88 = *(a2 + 776);
    *(a1 + 3177) = *(a2 + 785);
    *(a1 + 3168) = v88;
    *(a1 + 3152) = v87;
    *(a1 + 3136) = v86;
    v89 = vdupq_n_s64(0x408F400000000000uLL);
    *v5 = vdivq_f64(vrndaq_f64(vmulq_f64(*v5, v89)), v89);
    if (*(v4 + 3484) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v90 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v91 = *(a1 + 2488);
        v92 = v5->f64[0];
        v93 = v5->f64[1];
        v95 = v5[1].f64[0];
        v94 = v5[1].f64[1];
        v96 = v5[2].f64[0];
        buf = 68290563;
        v171 = 2082;
        v172 = "";
        v173 = 1026;
        *v174 = v91;
        *&v174[4] = 2053;
        *&v174[6] = v92;
        v175 = 2053;
        v176 = *&v93;
        v177 = 2050;
        v178 = *&v94;
        v179 = 2050;
        v180 = *&v95;
        v181 = 2050;
        v182 = *&v96;
        v97 = "{msg%{public}.0s:#GnssAssistancePosition, Cached Tightly Coupled Position, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f}";
        v98 = v90;
        v99 = OS_LOG_TYPE_DEFAULT;
LABEL_67:
        v107 = 74;
LABEL_68:
        _os_log_impl(dword_100000000, v98, v99, v97, &buf, v107);
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v100 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v101 = *(a1 + 2488);
        v102 = v5->f64[0];
        v103 = v5->f64[1];
        v105 = v5[1].f64[0];
        v104 = v5[1].f64[1];
        v106 = v5[2].f64[0];
        buf = 68290563;
        v171 = 2082;
        v172 = "";
        v173 = 1026;
        *v174 = v101;
        *&v174[4] = 2053;
        *&v174[6] = v102;
        v175 = 2053;
        v176 = *&v103;
        v177 = 2050;
        v178 = *&v104;
        v179 = 2050;
        v180 = *&v105;
        v181 = 2050;
        v182 = *&v106;
        v97 = "{msg%{public}.0s:#GnssAssistancePosition, Cached Tightly Coupled Position, type:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f, alt:%{public}.2f, hunc:%{public}.1f, vunc:%{public}.1f}";
        v98 = v100;
        v99 = OS_LOG_TYPE_DEBUG;
        goto LABEL_67;
      }
    }
  }
}